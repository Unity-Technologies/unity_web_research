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
  /* @offset(384) */
  x_TerrainHeightmapRecipSize : vec4<f32>,
  /* @offset(400) */
  x_TerrainHeightmapScale : vec4<f32>,
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

@group(1) @binding(3) var<uniform> x_13 : x_Terrain;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(1) var x_Control : texture_2d<f32>;

@group(0) @binding(13) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_112 : PGlobals;

var<private> u_xlat75 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(2) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(14) var sampler_Splat0 : sampler;

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

@group(0) @binding(15) var sampler_Normal0 : sampler;

@group(0) @binding(7) var x_Normal1 : texture_2d<f32>;

@group(0) @binding(8) var x_Normal2 : texture_2d<f32>;

@group(0) @binding(9) var x_Normal3 : texture_2d<f32>;

var<private> u_xlat50 : f32;

var<private> u_xlat25 : f32;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_845 : LightShadows;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlatu2 : u32;

var<private> u_xlati2 : i32;

var<private> u_xlat27 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_1025 : UnityPerDraw;

var<private> u_xlat77 : f32;

var<private> u_xlat78 : f32;

var<private> u_xlatb79 : bool;

@group(0) @binding(10) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(16) var sampler_LinearClampCompare : sampler_comparison;

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

@group(0) @binding(12) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu0 : u32;

var<private> u_xlatu79 : u32;

var<private> u_xlati80 : i32;

var<private> u_xlati79 : i32;

@group(1) @binding(1) var<uniform> x_2842 : AdditionalLights;

var<private> u_xlat81 : f32;

var<private> u_xlat82 : f32;

var<private> u_xlati82 : i32;

var<private> u_xlatb84 : bool;

var<private> u_xlatb10 : vec4<bool>;

var<private> u_xlat85 : f32;

var<private> u_xlat35 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlatb82 : bool;

@group(0) @binding(11) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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
  var x_2435 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2973 : f32;
  var x_2983 : f32;
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
  u_xlat75 = dot(x_122, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
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
  u_xlatb76 = (4.0f >= x_207);
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
  let x_269 : bool = u_xlatb76;
  let x_270 : vec4<f32> = u_xlat11;
  let x_271 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_271, x_270, vec4<bool>(x_269, x_269, x_269, x_269));
  let x_276 : vec4<f32> = u_xlat4;
  u_xlat76 = dot(x_276, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_280 : f32 = u_xlat76;
  u_xlatb77 = (0.00499999988824129105f >= x_280);
  let x_282 : bool = u_xlatb77;
  if (((select(0i, 1i, x_282) * -1i) != 0i)) {
    discard;
  }
  let x_291 : f32 = u_xlat76;
  u_xlat76 = (x_291 + 0.00006103515625f);
  let x_294 : vec4<f32> = u_xlat4;
  let x_295 : f32 = u_xlat76;
  u_xlat4 = (x_294 / vec4<f32>(x_295, x_295, x_295, x_295));
  let x_298 : vec4<f32> = u_xlat4;
  let x_301 : vec4<f32> = x_13.x_DiffuseRemapScale0;
  let x_303 : vec3<f32> = (vec3<f32>(x_298.x, x_298.x, x_298.x) * vec3<f32>(x_301.x, x_301.y, x_301.z));
  let x_304 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_303.x, x_303.y, x_303.z, x_304.w);
  let x_306 : vec4<f32> = u_xlat4;
  let x_309 : vec4<f32> = x_13.x_DiffuseRemapScale1;
  let x_311 : vec3<f32> = (vec3<f32>(x_306.y, x_306.y, x_306.y) * vec3<f32>(x_309.x, x_309.y, x_309.z));
  let x_312 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_311.x, x_311.y, x_311.z, x_312.w);
  let x_314 : vec4<f32> = u_xlat6;
  let x_316 : vec4<f32> = u_xlat12;
  let x_318 : vec3<f32> = (vec3<f32>(x_314.x, x_314.y, x_314.z) * vec3<f32>(x_316.x, x_316.y, x_316.z));
  let x_319 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
  let x_321 : vec4<f32> = u_xlat5;
  let x_323 : vec4<f32> = u_xlat11;
  let x_326 : vec4<f32> = u_xlat6;
  let x_328 : vec3<f32> = ((vec3<f32>(x_321.x, x_321.y, x_321.z) * vec3<f32>(x_323.x, x_323.y, x_323.z)) + vec3<f32>(x_326.x, x_326.y, x_326.z));
  let x_329 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_328.x, x_328.y, x_328.z, x_329.w);
  let x_331 : vec4<f32> = u_xlat4;
  let x_334 : vec4<f32> = x_13.x_DiffuseRemapScale2;
  let x_336 : vec3<f32> = (vec3<f32>(x_331.z, x_331.z, x_331.z) * vec3<f32>(x_334.x, x_334.y, x_334.z));
  let x_337 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_336.x, x_336.y, x_336.z, x_337.w);
  let x_339 : vec4<f32> = u_xlat7;
  let x_341 : vec4<f32> = u_xlat6;
  let x_344 : vec4<f32> = u_xlat5;
  let x_346 : vec3<f32> = ((vec3<f32>(x_339.x, x_339.y, x_339.z) * vec3<f32>(x_341.x, x_341.y, x_341.z)) + vec3<f32>(x_344.x, x_344.y, x_344.z));
  let x_347 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_346.x, x_346.y, x_346.z, x_347.w);
  let x_349 : vec4<f32> = u_xlat4;
  let x_352 : vec4<f32> = x_13.x_DiffuseRemapScale3;
  let x_354 : vec3<f32> = (vec3<f32>(x_349.w, x_349.w, x_349.w) * vec3<f32>(x_352.x, x_352.y, x_352.z));
  let x_355 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_354.x, x_354.y, x_354.z, x_355.w);
  let x_357 : vec4<f32> = u_xlat8;
  let x_359 : vec4<f32> = u_xlat6;
  let x_362 : vec4<f32> = u_xlat5;
  let x_364 : vec3<f32> = ((vec3<f32>(x_357.x, x_357.y, x_357.z) * vec3<f32>(x_359.x, x_359.y, x_359.z)) + vec3<f32>(x_362.x, x_362.y, x_362.z));
  let x_365 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_364.x, x_364.y, x_364.z, x_365.w);
  let x_372 : vec4<f32> = vs_TEXCOORD1;
  let x_375 : f32 = x_112.x_GlobalMipBias.x;
  let x_376 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_372.x, x_372.y), x_375);
  let x_377 : vec3<f32> = vec3<f32>(x_376.x, x_376.y, x_376.w);
  let x_378 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_377.x, x_377.y, x_377.z, x_378.w);
  let x_381 : f32 = u_xlat6.x;
  let x_383 : f32 = u_xlat6.z;
  u_xlat6.x = (x_381 * x_383);
  let x_386 : vec4<f32> = u_xlat6;
  let x_391 : vec2<f32> = ((vec2<f32>(x_386.x, x_386.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_392 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_391.x, x_391.y, x_392.z, x_392.w);
  let x_394 : vec4<f32> = u_xlat6;
  let x_396 : vec4<f32> = u_xlat6;
  u_xlat76 = dot(vec2<f32>(x_394.x, x_394.y), vec2<f32>(x_396.x, x_396.y));
  let x_399 : f32 = u_xlat76;
  u_xlat76 = min(x_399, 1.0f);
  let x_401 : f32 = u_xlat76;
  u_xlat76 = (-(x_401) + 1.0f);
  let x_404 : f32 = u_xlat76;
  u_xlat76 = sqrt(x_404);
  let x_406 : f32 = u_xlat76;
  u_xlat7.z = max(x_406, 0.0000000000000001f);
  let x_410 : vec4<f32> = u_xlat6;
  let x_413 : f32 = x_13.x_NormalScale0;
  let x_415 : vec2<f32> = (vec2<f32>(x_410.x, x_410.y) * vec2<f32>(x_413, x_413));
  let x_416 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_415.x, x_415.y, x_416.z, x_416.w);
  let x_422 : vec4<f32> = vs_TEXCOORD1;
  let x_425 : f32 = x_112.x_GlobalMipBias.x;
  let x_426 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_422.z, x_422.w), x_425);
  let x_427 : vec3<f32> = vec3<f32>(x_426.x, x_426.y, x_426.w);
  let x_428 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_427.x, x_427.y, x_427.z, x_428.w);
  let x_431 : f32 = u_xlat6.x;
  let x_433 : f32 = u_xlat6.z;
  u_xlat6.x = (x_431 * x_433);
  let x_436 : vec4<f32> = u_xlat6;
  let x_439 : vec2<f32> = ((vec2<f32>(x_436.x, x_436.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_440 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_439.x, x_439.y, x_440.z, x_440.w);
  let x_442 : vec4<f32> = u_xlat6;
  let x_444 : vec4<f32> = u_xlat6;
  u_xlat76 = dot(vec2<f32>(x_442.x, x_442.y), vec2<f32>(x_444.x, x_444.y));
  let x_447 : f32 = u_xlat76;
  u_xlat76 = min(x_447, 1.0f);
  let x_449 : f32 = u_xlat76;
  u_xlat76 = (-(x_449) + 1.0f);
  let x_452 : f32 = u_xlat76;
  u_xlat76 = sqrt(x_452);
  let x_454 : f32 = u_xlat76;
  u_xlat8.z = max(x_454, 0.0000000000000001f);
  let x_457 : vec4<f32> = u_xlat6;
  let x_460 : f32 = x_13.x_NormalScale1;
  let x_462 : f32 = x_13.x_NormalScale1;
  let x_463 : vec2<f32> = vec2<f32>(x_460, x_462);
  let x_467 : vec2<f32> = (vec2<f32>(x_457.x, x_457.y) * vec2<f32>(x_463.x, x_463.y));
  let x_468 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_467.x, x_467.y, x_468.z, x_468.w);
  let x_470 : vec4<f32> = u_xlat4;
  let x_472 : vec4<f32> = u_xlat8;
  let x_474 : vec3<f32> = (vec3<f32>(x_470.y, x_470.y, x_470.y) * vec3<f32>(x_472.x, x_472.y, x_472.z));
  let x_475 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_474.x, x_474.y, x_474.z, x_475.w);
  let x_477 : vec4<f32> = u_xlat4;
  let x_479 : vec4<f32> = u_xlat7;
  let x_482 : vec4<f32> = u_xlat6;
  let x_484 : vec3<f32> = ((vec3<f32>(x_477.x, x_477.x, x_477.x) * vec3<f32>(x_479.x, x_479.y, x_479.z)) + vec3<f32>(x_482.x, x_482.y, x_482.z));
  let x_485 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_484.x, x_484.y, x_484.z, x_485.w);
  let x_491 : vec4<f32> = vs_TEXCOORD2;
  let x_494 : f32 = x_112.x_GlobalMipBias.x;
  let x_495 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_491.x, x_491.y), x_494);
  let x_496 : vec3<f32> = vec3<f32>(x_495.x, x_495.y, x_495.w);
  let x_497 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_496.x, x_496.y, x_496.z, x_497.w);
  let x_500 : f32 = u_xlat7.x;
  let x_502 : f32 = u_xlat7.z;
  u_xlat7.x = (x_500 * x_502);
  let x_505 : vec4<f32> = u_xlat7;
  let x_508 : vec2<f32> = ((vec2<f32>(x_505.x, x_505.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_509 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_508.x, x_508.y, x_509.z, x_509.w);
  let x_511 : vec4<f32> = u_xlat7;
  let x_513 : vec4<f32> = u_xlat7;
  u_xlat76 = dot(vec2<f32>(x_511.x, x_511.y), vec2<f32>(x_513.x, x_513.y));
  let x_516 : f32 = u_xlat76;
  u_xlat76 = min(x_516, 1.0f);
  let x_518 : f32 = u_xlat76;
  u_xlat76 = (-(x_518) + 1.0f);
  let x_521 : f32 = u_xlat76;
  u_xlat76 = sqrt(x_521);
  let x_523 : f32 = u_xlat76;
  u_xlat8.z = max(x_523, 0.0000000000000001f);
  let x_526 : vec4<f32> = u_xlat7;
  let x_530 : f32 = x_13.x_NormalScale2;
  let x_532 : f32 = x_13.x_NormalScale2;
  let x_533 : vec2<f32> = vec2<f32>(x_530, x_532);
  let x_537 : vec2<f32> = (vec2<f32>(x_526.x, x_526.y) * vec2<f32>(x_533.x, x_533.y));
  let x_538 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_537.x, x_537.y, x_538.z, x_538.w);
  let x_540 : vec4<f32> = u_xlat4;
  let x_542 : vec4<f32> = u_xlat8;
  let x_545 : vec4<f32> = u_xlat6;
  let x_547 : vec3<f32> = ((vec3<f32>(x_540.z, x_540.z, x_540.z) * vec3<f32>(x_542.x, x_542.y, x_542.z)) + vec3<f32>(x_545.x, x_545.y, x_545.z));
  let x_548 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_547.x, x_547.y, x_547.z, x_548.w);
  let x_554 : vec4<f32> = vs_TEXCOORD2;
  let x_557 : f32 = x_112.x_GlobalMipBias.x;
  let x_558 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_554.z, x_554.w), x_557);
  let x_559 : vec3<f32> = vec3<f32>(x_558.x, x_558.y, x_558.w);
  let x_560 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_559.x, x_559.y, x_559.z, x_560.w);
  let x_563 : f32 = u_xlat7.x;
  let x_565 : f32 = u_xlat7.z;
  u_xlat7.x = (x_563 * x_565);
  let x_568 : vec4<f32> = u_xlat7;
  let x_571 : vec2<f32> = ((vec2<f32>(x_568.x, x_568.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_572 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_571.x, x_571.y, x_572.z, x_572.w);
  let x_574 : vec4<f32> = u_xlat7;
  let x_576 : vec4<f32> = u_xlat7;
  u_xlat76 = dot(vec2<f32>(x_574.x, x_574.y), vec2<f32>(x_576.x, x_576.y));
  let x_579 : f32 = u_xlat76;
  u_xlat76 = min(x_579, 1.0f);
  let x_581 : f32 = u_xlat76;
  u_xlat76 = (-(x_581) + 1.0f);
  let x_584 : f32 = u_xlat76;
  u_xlat76 = sqrt(x_584);
  let x_586 : f32 = u_xlat76;
  u_xlat8.z = max(x_586, 0.0000000000000001f);
  let x_589 : vec4<f32> = u_xlat7;
  let x_593 : f32 = x_13.x_NormalScale3;
  let x_595 : f32 = x_13.x_NormalScale3;
  let x_596 : vec2<f32> = vec2<f32>(x_593, x_595);
  let x_600 : vec2<f32> = (vec2<f32>(x_589.x, x_589.y) * vec2<f32>(x_596.x, x_596.y));
  let x_601 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_600.x, x_600.y, x_601.z, x_601.w);
  let x_603 : vec4<f32> = u_xlat4;
  let x_605 : vec4<f32> = u_xlat8;
  let x_608 : vec4<f32> = u_xlat6;
  let x_610 : vec3<f32> = ((vec3<f32>(x_603.w, x_603.w, x_603.w) * vec3<f32>(x_605.x, x_605.y, x_605.z)) + vec3<f32>(x_608.x, x_608.y, x_608.z));
  let x_611 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_610.x, x_610.y, x_610.z, x_611.w);
  let x_614 : f32 = u_xlat6.z;
  u_xlat6.w = (x_614 + 0.00000999999974737875f);
  let x_618 : vec4<f32> = u_xlat6;
  let x_620 : vec4<f32> = u_xlat6;
  u_xlat76 = dot(vec3<f32>(x_618.x, x_618.y, x_618.w), vec3<f32>(x_620.x, x_620.y, x_620.w));
  let x_623 : f32 = u_xlat76;
  u_xlat76 = inverseSqrt(x_623);
  let x_625 : f32 = u_xlat76;
  let x_627 : vec4<f32> = u_xlat6;
  let x_629 : vec3<f32> = (vec3<f32>(x_625, x_625, x_625) * vec3<f32>(x_627.x, x_627.y, x_627.w));
  let x_630 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_629.x, x_629.y, x_629.z, x_630.w);
  let x_633 : f32 = x_13.x_MaskMapRemapScale0.y;
  u_xlat7.x = x_633;
  let x_636 : f32 = x_13.x_MaskMapRemapScale1.y;
  u_xlat7.y = x_636;
  let x_639 : f32 = x_13.x_MaskMapRemapScale2.y;
  u_xlat7.z = x_639;
  let x_642 : f32 = x_13.x_MaskMapRemapScale3.y;
  u_xlat7.w = x_642;
  let x_645 : f32 = x_13.x_MaskMapRemapOffset0.y;
  u_xlat8.x = x_645;
  let x_648 : f32 = x_13.x_MaskMapRemapOffset1.y;
  u_xlat8.y = x_648;
  let x_651 : f32 = x_13.x_MaskMapRemapOffset2.y;
  u_xlat8.z = x_651;
  let x_654 : f32 = x_13.x_MaskMapRemapOffset3.y;
  u_xlat8.w = x_654;
  let x_656 : vec4<f32> = u_xlat7;
  let x_657 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_656 + x_657);
  let x_660 : f32 = u_xlat0.z;
  u_xlat8.x = x_660;
  let x_663 : f32 = u_xlat1.z;
  u_xlat8.y = x_663;
  let x_666 : f32 = u_xlat2.z;
  u_xlat8.z = x_666;
  let x_669 : f32 = u_xlat3.y;
  u_xlat8.w = x_669;
  let x_671 : vec4<f32> = u_xlat9;
  let x_674 : f32 = x_13.x_Smoothness0;
  let x_676 : f32 = x_13.x_Smoothness1;
  let x_678 : f32 = x_13.x_Smoothness2;
  let x_680 : f32 = x_13.x_Smoothness3;
  let x_683 : vec4<f32> = u_xlat8;
  u_xlat8 = ((-(x_671) * vec4<f32>(x_674, x_676, x_678, x_680)) + x_683);
  let x_687 : f32 = x_13.x_LayerHasMask0;
  let x_690 : f32 = x_13.x_LayerHasMask1;
  let x_693 : f32 = x_13.x_LayerHasMask2;
  let x_696 : f32 = x_13.x_LayerHasMask3;
  let x_698 : vec4<f32> = u_xlat8;
  let x_700 : vec4<f32> = u_xlat10;
  u_xlat8 = ((vec4<f32>(x_687, x_690, x_693, x_696) * x_698) + x_700);
  let x_703 : vec4<f32> = u_xlat4;
  let x_704 : vec4<f32> = u_xlat8;
  u_xlat50 = dot(x_703, x_704);
  let x_707 : f32 = u_xlat0.x;
  u_xlat8.x = x_707;
  let x_710 : f32 = u_xlat1.x;
  u_xlat8.y = x_710;
  let x_713 : f32 = u_xlat2.x;
  u_xlat8.z = x_713;
  let x_716 : f32 = u_xlat3.x;
  u_xlat8.w = x_716;
  let x_718 : vec4<f32> = u_xlat8;
  let x_721 : f32 = x_13.x_Metallic0;
  let x_724 : f32 = x_13.x_Metallic1;
  let x_727 : f32 = x_13.x_Metallic2;
  let x_730 : f32 = x_13.x_Metallic3;
  u_xlat8 = (x_718 + -(vec4<f32>(x_721, x_724, x_727, x_730)));
  let x_735 : f32 = x_13.x_LayerHasMask0;
  let x_737 : f32 = x_13.x_LayerHasMask1;
  let x_739 : f32 = x_13.x_LayerHasMask2;
  let x_741 : f32 = x_13.x_LayerHasMask3;
  let x_743 : vec4<f32> = u_xlat8;
  let x_746 : f32 = x_13.x_Metallic0;
  let x_748 : f32 = x_13.x_Metallic1;
  let x_750 : f32 = x_13.x_Metallic2;
  let x_752 : f32 = x_13.x_Metallic3;
  u_xlat8 = ((vec4<f32>(x_735, x_737, x_739, x_741) * x_743) + vec4<f32>(x_746, x_748, x_750, x_752));
  let x_755 : vec4<f32> = u_xlat4;
  let x_756 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_755, x_756);
  let x_760 : f32 = u_xlat0.y;
  u_xlat3.x = x_760;
  let x_763 : f32 = u_xlat1.y;
  u_xlat3.y = x_763;
  let x_766 : f32 = u_xlat2.y;
  u_xlat3.z = x_766;
  let x_768 : vec4<f32> = u_xlat7;
  let x_770 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_768) + x_770);
  let x_773 : f32 = x_13.x_LayerHasMask0;
  let x_775 : f32 = x_13.x_LayerHasMask1;
  let x_777 : f32 = x_13.x_LayerHasMask2;
  let x_779 : f32 = x_13.x_LayerHasMask3;
  let x_781 : vec4<f32> = u_xlat1;
  let x_783 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec4<f32>(x_773, x_775, x_777, x_779) * x_781) + x_783);
  let x_786 : vec4<f32> = u_xlat4;
  let x_787 : vec4<f32> = u_xlat1;
  u_xlat25 = dot(x_786, x_787);
  let x_789 : vec4<f32> = u_xlat6;
  let x_792 : vec4<f32> = vs_TEXCOORD5;
  let x_794 : vec3<f32> = (vec3<f32>(x_789.y, x_789.y, x_789.y) * vec3<f32>(x_792.x, x_792.y, x_792.z));
  let x_795 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_794.x, x_794.y, x_794.z, x_795.w);
  let x_797 : vec4<f32> = u_xlat6;
  let x_800 : vec4<f32> = vs_TEXCOORD4;
  let x_804 : vec4<f32> = u_xlat1;
  let x_806 : vec3<f32> = ((vec3<f32>(x_797.x, x_797.x, x_797.x) * -(vec3<f32>(x_800.x, x_800.y, x_800.z))) + vec3<f32>(x_804.x, x_804.y, x_804.z));
  let x_807 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_806.x, x_806.y, x_806.z, x_807.w);
  let x_809 : vec4<f32> = u_xlat6;
  let x_812 : vec4<f32> = vs_TEXCOORD3;
  let x_815 : vec4<f32> = u_xlat1;
  let x_817 : vec3<f32> = ((vec3<f32>(x_809.z, x_809.z, x_809.z) * vec3<f32>(x_812.x, x_812.y, x_812.z)) + vec3<f32>(x_815.x, x_815.y, x_815.z));
  let x_818 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_817.x, x_817.y, x_817.z, x_818.w);
  let x_820 : vec4<f32> = u_xlat1;
  let x_822 : vec4<f32> = u_xlat1;
  u_xlat76 = dot(vec3<f32>(x_820.x, x_820.y, x_820.z), vec3<f32>(x_822.x, x_822.y, x_822.z));
  let x_825 : f32 = u_xlat76;
  u_xlat76 = inverseSqrt(x_825);
  let x_827 : f32 = u_xlat76;
  let x_829 : vec4<f32> = u_xlat1;
  let x_831 : vec3<f32> = (vec3<f32>(x_827, x_827, x_827) * vec3<f32>(x_829.x, x_829.y, x_829.z));
  let x_832 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_831.x, x_831.y, x_831.z, x_832.w);
  let x_836 : vec3<f32> = vs_TEXCOORD7;
  let x_847 : vec4<f32> = x_845.x_CascadeShadowSplitSpheres0;
  let x_850 : vec3<f32> = (x_836 + -(vec3<f32>(x_847.x, x_847.y, x_847.z)));
  let x_851 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_850.x, x_850.y, x_850.z, x_851.w);
  let x_853 : vec3<f32> = vs_TEXCOORD7;
  let x_855 : vec4<f32> = x_845.x_CascadeShadowSplitSpheres1;
  let x_858 : vec3<f32> = (x_853 + -(vec3<f32>(x_855.x, x_855.y, x_855.z)));
  let x_859 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_858.x, x_858.y, x_858.z, x_859.w);
  let x_861 : vec3<f32> = vs_TEXCOORD7;
  let x_863 : vec4<f32> = x_845.x_CascadeShadowSplitSpheres2;
  let x_866 : vec3<f32> = (x_861 + -(vec3<f32>(x_863.x, x_863.y, x_863.z)));
  let x_867 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_866.x, x_866.y, x_866.z, x_867.w);
  let x_869 : vec3<f32> = vs_TEXCOORD7;
  let x_871 : vec4<f32> = x_845.x_CascadeShadowSplitSpheres3;
  let x_874 : vec3<f32> = (x_869 + -(vec3<f32>(x_871.x, x_871.y, x_871.z)));
  let x_875 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_874.x, x_874.y, x_874.z, x_875.w);
  let x_877 : vec4<f32> = u_xlat2;
  let x_879 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_877.x, x_877.y, x_877.z), vec3<f32>(x_879.x, x_879.y, x_879.z));
  let x_883 : vec4<f32> = u_xlat3;
  let x_885 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_883.x, x_883.y, x_883.z), vec3<f32>(x_885.x, x_885.y, x_885.z));
  let x_889 : vec4<f32> = u_xlat4;
  let x_891 : vec4<f32> = u_xlat4;
  u_xlat2.z = dot(vec3<f32>(x_889.x, x_889.y, x_889.z), vec3<f32>(x_891.x, x_891.y, x_891.z));
  let x_895 : vec4<f32> = u_xlat6;
  let x_897 : vec4<f32> = u_xlat6;
  u_xlat2.w = dot(vec3<f32>(x_895.x, x_895.y, x_895.z), vec3<f32>(x_897.x, x_897.y, x_897.z));
  let x_903 : vec4<f32> = u_xlat2;
  let x_905 : vec4<f32> = x_845.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_903 < x_905);
  let x_908 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_908);
  let x_912 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_912);
  let x_916 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_916);
  let x_920 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_920);
  let x_924 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_924);
  let x_929 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_929);
  let x_933 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_933);
  let x_936 : vec4<f32> = u_xlat2;
  let x_938 : vec4<f32> = u_xlat3;
  let x_940 : vec3<f32> = (vec3<f32>(x_936.x, x_936.y, x_936.z) + vec3<f32>(x_938.y, x_938.z, x_938.w));
  let x_941 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_940.x, x_940.y, x_940.z, x_941.w);
  let x_943 : vec4<f32> = u_xlat2;
  let x_946 : vec3<f32> = max(vec3<f32>(x_943.x, x_943.y, x_943.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_947 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_947.x, x_946.x, x_946.y, x_946.z);
  let x_949 : vec4<f32> = u_xlat3;
  u_xlat2.x = dot(x_949, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_955 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_955) + 4.0f);
  let x_962 : f32 = u_xlat2.x;
  u_xlatu2 = u32(x_962);
  let x_966 : u32 = u_xlatu2;
  u_xlati2 = (bitcast<i32>(x_966) << bitcast<u32>(2i));
  let x_970 : vec3<f32> = vs_TEXCOORD7;
  let x_972 : i32 = u_xlati2;
  let x_975 : i32 = u_xlati2;
  let x_979 : vec4<f32> = x_845.x_MainLightWorldToShadow[((x_972 + 1i) / 4i)][((x_975 + 1i) % 4i)];
  u_xlat27 = (vec3<f32>(x_970.y, x_970.y, x_970.y) * vec3<f32>(x_979.x, x_979.y, x_979.z));
  let x_982 : i32 = u_xlati2;
  let x_984 : i32 = u_xlati2;
  let x_987 : vec4<f32> = x_845.x_MainLightWorldToShadow[(x_982 / 4i)][(x_984 % 4i)];
  let x_989 : vec3<f32> = vs_TEXCOORD7;
  let x_992 : vec3<f32> = u_xlat27;
  u_xlat27 = ((vec3<f32>(x_987.x, x_987.y, x_987.z) * vec3<f32>(x_989.x, x_989.x, x_989.x)) + x_992);
  let x_994 : i32 = u_xlati2;
  let x_997 : i32 = u_xlati2;
  let x_1001 : vec4<f32> = x_845.x_MainLightWorldToShadow[((x_994 + 2i) / 4i)][((x_997 + 2i) % 4i)];
  let x_1003 : vec3<f32> = vs_TEXCOORD7;
  let x_1006 : vec3<f32> = u_xlat27;
  u_xlat27 = ((vec3<f32>(x_1001.x, x_1001.y, x_1001.z) * vec3<f32>(x_1003.z, x_1003.z, x_1003.z)) + x_1006);
  let x_1008 : vec3<f32> = u_xlat27;
  let x_1009 : i32 = u_xlati2;
  let x_1012 : i32 = u_xlati2;
  let x_1016 : vec4<f32> = x_845.x_MainLightWorldToShadow[((x_1009 + 3i) / 4i)][((x_1012 + 3i) % 4i)];
  let x_1018 : vec3<f32> = (x_1008 + vec3<f32>(x_1016.x, x_1016.y, x_1016.z));
  let x_1019 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1018.x, x_1018.y, x_1018.z, x_1019.w);
  u_xlat1.w = 1.0f;
  let x_1027 : vec4<f32> = x_1025.unity_SHAr;
  let x_1028 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_1027, x_1028);
  let x_1032 : vec4<f32> = x_1025.unity_SHAg;
  let x_1033 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_1032, x_1033);
  let x_1037 : vec4<f32> = x_1025.unity_SHAb;
  let x_1038 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_1037, x_1038);
  let x_1041 : vec4<f32> = u_xlat1;
  let x_1043 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_1041.y, x_1041.z, x_1041.z, x_1041.x) * vec4<f32>(x_1043.x, x_1043.y, x_1043.z, x_1043.z));
  let x_1047 : vec4<f32> = x_1025.unity_SHBr;
  let x_1048 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_1047, x_1048);
  let x_1052 : vec4<f32> = x_1025.unity_SHBg;
  let x_1053 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_1052, x_1053);
  let x_1057 : vec4<f32> = x_1025.unity_SHBb;
  let x_1058 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_1057, x_1058);
  let x_1062 : f32 = u_xlat1.y;
  let x_1064 : f32 = u_xlat1.y;
  u_xlat76 = (x_1062 * x_1064);
  let x_1067 : f32 = u_xlat1.x;
  let x_1069 : f32 = u_xlat1.x;
  let x_1071 : f32 = u_xlat76;
  u_xlat76 = ((x_1067 * x_1069) + -(x_1071));
  let x_1076 : vec4<f32> = x_1025.unity_SHC;
  let x_1078 : f32 = u_xlat76;
  let x_1081 : vec4<f32> = u_xlat6;
  let x_1083 : vec3<f32> = ((vec3<f32>(x_1076.x, x_1076.y, x_1076.z) * vec3<f32>(x_1078, x_1078, x_1078)) + vec3<f32>(x_1081.x, x_1081.y, x_1081.z));
  let x_1084 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1083.x, x_1083.y, x_1083.z, x_1084.w);
  let x_1086 : vec4<f32> = u_xlat3;
  let x_1088 : vec4<f32> = u_xlat4;
  let x_1090 : vec3<f32> = (vec3<f32>(x_1086.x, x_1086.y, x_1086.z) + vec3<f32>(x_1088.x, x_1088.y, x_1088.z));
  let x_1091 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1090.x, x_1090.y, x_1090.z, x_1091.w);
  let x_1093 : vec4<f32> = u_xlat3;
  let x_1095 : vec3<f32> = max(vec3<f32>(x_1093.x, x_1093.y, x_1093.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1096 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1095.x, x_1095.y, x_1095.z, x_1096.w);
  let x_1099 : f32 = u_xlat0.x;
  u_xlat76 = ((-(x_1099) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_1105 : f32 = u_xlat76;
  u_xlat77 = (-(x_1105) + 1.0f);
  let x_1108 : f32 = u_xlat76;
  let x_1110 : vec4<f32> = u_xlat5;
  let x_1112 : vec3<f32> = (vec3<f32>(x_1108, x_1108, x_1108) * vec3<f32>(x_1110.x, x_1110.y, x_1110.z));
  let x_1113 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1112.x, x_1112.y, x_1112.z, x_1113.w);
  let x_1115 : vec4<f32> = u_xlat5;
  let x_1119 : vec3<f32> = (vec3<f32>(x_1115.x, x_1115.y, x_1115.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_1120 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1119.x, x_1119.y, x_1119.z, x_1120.w);
  let x_1122 : vec3<f32> = u_xlat0;
  let x_1124 : vec4<f32> = u_xlat5;
  let x_1129 : vec3<f32> = ((vec3<f32>(x_1122.x, x_1122.x, x_1122.x) * vec3<f32>(x_1124.x, x_1124.y, x_1124.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_1130 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1129.x, x_1129.y, x_1129.z, x_1130.w);
  let x_1132 : f32 = u_xlat50;
  u_xlat0.x = (-(x_1132) + 1.0f);
  let x_1137 : f32 = u_xlat0.x;
  let x_1139 : f32 = u_xlat0.x;
  u_xlat76 = (x_1137 * x_1139);
  let x_1141 : f32 = u_xlat76;
  u_xlat76 = max(x_1141, 0.0078125f);
  let x_1145 : f32 = u_xlat76;
  let x_1146 : f32 = u_xlat76;
  u_xlat78 = (x_1145 * x_1146);
  let x_1148 : f32 = u_xlat50;
  let x_1149 : f32 = u_xlat77;
  u_xlat50 = (x_1148 + x_1149);
  let x_1151 : f32 = u_xlat50;
  u_xlat50 = clamp(x_1151, 0.0f, 1.0f);
  let x_1153 : f32 = u_xlat76;
  u_xlat77 = ((x_1153 * 4.0f) + 2.0f);
  let x_1156 : f32 = u_xlat25;
  u_xlat25 = min(x_1156, 1.0f);
  let x_1160 : f32 = x_845.x_MainLightShadowParams.y;
  u_xlatb79 = (0.0f < x_1160);
  let x_1162 : bool = u_xlatb79;
  if (x_1162) {
    let x_1166 : f32 = x_845.x_MainLightShadowParams.y;
    u_xlatb79 = (x_1166 == 1.0f);
    let x_1168 : bool = u_xlatb79;
    if (x_1168) {
      let x_1171 : vec4<f32> = u_xlat2;
      let x_1174 : vec4<f32> = x_845.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_1171.x, x_1171.y, x_1171.x, x_1171.y) + x_1174);
      let x_1178 : vec4<f32> = u_xlat6;
      let x_1179 : vec2<f32> = vec2<f32>(x_1178.x, x_1178.y);
      let x_1181 : f32 = u_xlat2.z;
      txVec0 = vec3<f32>(x_1179.x, x_1179.y, x_1181);
      let x_1193 : vec3<f32> = txVec0;
      let x_1195 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1193.xy, x_1193.z);
      u_xlat7.x = x_1195;
      let x_1198 : vec4<f32> = u_xlat6;
      let x_1199 : vec2<f32> = vec2<f32>(x_1198.z, x_1198.w);
      let x_1201 : f32 = u_xlat2.z;
      txVec1 = vec3<f32>(x_1199.x, x_1199.y, x_1201);
      let x_1208 : vec3<f32> = txVec1;
      let x_1210 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1208.xy, x_1208.z);
      u_xlat7.y = x_1210;
      let x_1212 : vec4<f32> = u_xlat2;
      let x_1215 : vec4<f32> = x_845.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_1212.x, x_1212.y, x_1212.x, x_1212.y) + x_1215);
      let x_1218 : vec4<f32> = u_xlat6;
      let x_1219 : vec2<f32> = vec2<f32>(x_1218.x, x_1218.y);
      let x_1221 : f32 = u_xlat2.z;
      txVec2 = vec3<f32>(x_1219.x, x_1219.y, x_1221);
      let x_1228 : vec3<f32> = txVec2;
      let x_1230 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1228.xy, x_1228.z);
      u_xlat7.z = x_1230;
      let x_1233 : vec4<f32> = u_xlat6;
      let x_1234 : vec2<f32> = vec2<f32>(x_1233.z, x_1233.w);
      let x_1236 : f32 = u_xlat2.z;
      txVec3 = vec3<f32>(x_1234.x, x_1234.y, x_1236);
      let x_1243 : vec3<f32> = txVec3;
      let x_1245 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1243.xy, x_1243.z);
      u_xlat7.w = x_1245;
      let x_1248 : vec4<f32> = u_xlat7;
      u_xlat79 = dot(x_1248, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1255 : f32 = x_845.x_MainLightShadowParams.y;
      u_xlatb80 = (x_1255 == 2.0f);
      let x_1257 : bool = u_xlatb80;
      if (x_1257) {
        let x_1260 : vec4<f32> = u_xlat2;
        let x_1263 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1266 : vec2<f32> = ((vec2<f32>(x_1260.x, x_1260.y) * vec2<f32>(x_1263.z, x_1263.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1267 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1266.x, x_1266.y, x_1267.z, x_1267.w);
        let x_1269 : vec4<f32> = u_xlat6;
        let x_1271 : vec2<f32> = floor(vec2<f32>(x_1269.x, x_1269.y));
        let x_1272 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1271.x, x_1271.y, x_1272.z, x_1272.w);
        let x_1276 : vec4<f32> = u_xlat2;
        let x_1279 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1282 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_1276.x, x_1276.y) * vec2<f32>(x_1279.z, x_1279.w)) + -(vec2<f32>(x_1282.x, x_1282.y)));
        let x_1286 : vec2<f32> = u_xlat56;
        u_xlat7 = (vec4<f32>(x_1286.x, x_1286.x, x_1286.y, x_1286.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1290 : vec4<f32> = u_xlat7;
        let x_1292 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1290.x, x_1290.x, x_1290.z, x_1290.z) * vec4<f32>(x_1292.x, x_1292.x, x_1292.z, x_1292.z));
        let x_1295 : vec4<f32> = u_xlat8;
        let x_1299 : vec2<f32> = (vec2<f32>(x_1295.y, x_1295.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1300 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1299.x, x_1300.y, x_1299.y, x_1300.w);
        let x_1302 : vec4<f32> = u_xlat8;
        let x_1305 : vec2<f32> = u_xlat56;
        let x_1307 : vec2<f32> = ((vec2<f32>(x_1302.x, x_1302.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1305));
        let x_1308 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1307.x, x_1307.y, x_1308.z, x_1308.w);
        let x_1311 : vec2<f32> = u_xlat56;
        u_xlat58 = (-(x_1311) + vec2<f32>(1.0f, 1.0f));
        let x_1315 : vec2<f32> = u_xlat56;
        let x_1317 : vec2<f32> = min(x_1315, vec2<f32>(0.0f, 0.0f));
        let x_1318 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1317.x, x_1317.y, x_1318.z, x_1318.w);
        let x_1320 : vec4<f32> = u_xlat9;
        let x_1323 : vec4<f32> = u_xlat9;
        let x_1326 : vec2<f32> = u_xlat58;
        let x_1327 : vec2<f32> = ((-(vec2<f32>(x_1320.x, x_1320.y)) * vec2<f32>(x_1323.x, x_1323.y)) + x_1326);
        let x_1328 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1327.x, x_1327.y, x_1328.z, x_1328.w);
        let x_1330 : vec2<f32> = u_xlat56;
        u_xlat56 = max(x_1330, vec2<f32>(0.0f, 0.0f));
        let x_1332 : vec2<f32> = u_xlat56;
        let x_1334 : vec2<f32> = u_xlat56;
        let x_1336 : vec4<f32> = u_xlat7;
        u_xlat56 = ((-(x_1332) * x_1334) + vec2<f32>(x_1336.y, x_1336.w));
        let x_1339 : vec4<f32> = u_xlat9;
        let x_1341 : vec2<f32> = (vec2<f32>(x_1339.x, x_1339.y) + vec2<f32>(1.0f, 1.0f));
        let x_1342 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1341.x, x_1341.y, x_1342.z, x_1342.w);
        let x_1344 : vec2<f32> = u_xlat56;
        u_xlat56 = (x_1344 + vec2<f32>(1.0f, 1.0f));
        let x_1346 : vec4<f32> = u_xlat8;
        let x_1350 : vec2<f32> = (vec2<f32>(x_1346.x, x_1346.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1351 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1350.x, x_1350.y, x_1351.z, x_1351.w);
        let x_1353 : vec2<f32> = u_xlat58;
        let x_1354 : vec2<f32> = (x_1353 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1355 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1354.x, x_1354.y, x_1355.z, x_1355.w);
        let x_1357 : vec4<f32> = u_xlat9;
        let x_1359 : vec2<f32> = (vec2<f32>(x_1357.x, x_1357.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1360 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1359.x, x_1359.y, x_1360.z, x_1360.w);
        let x_1362 : vec2<f32> = u_xlat56;
        let x_1363 : vec2<f32> = (x_1362 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1364 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1363.x, x_1363.y, x_1364.z, x_1364.w);
        let x_1366 : vec4<f32> = u_xlat7;
        u_xlat56 = (vec2<f32>(x_1366.y, x_1366.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1370 : f32 = u_xlat9.x;
        u_xlat10.z = x_1370;
        let x_1373 : f32 = u_xlat56.x;
        u_xlat10.w = x_1373;
        let x_1376 : f32 = u_xlat11.x;
        u_xlat8.z = x_1376;
        let x_1379 : f32 = u_xlat7.x;
        u_xlat8.w = x_1379;
        let x_1381 : vec4<f32> = u_xlat8;
        let x_1383 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_1381.z, x_1381.w, x_1381.x, x_1381.z) + vec4<f32>(x_1383.z, x_1383.w, x_1383.x, x_1383.z));
        let x_1387 : f32 = u_xlat10.y;
        u_xlat9.z = x_1387;
        let x_1390 : f32 = u_xlat56.y;
        u_xlat9.w = x_1390;
        let x_1393 : f32 = u_xlat8.y;
        u_xlat11.z = x_1393;
        let x_1396 : f32 = u_xlat7.z;
        u_xlat11.w = x_1396;
        let x_1398 : vec4<f32> = u_xlat9;
        let x_1400 : vec4<f32> = u_xlat11;
        let x_1402 : vec3<f32> = (vec3<f32>(x_1398.z, x_1398.y, x_1398.w) + vec3<f32>(x_1400.z, x_1400.y, x_1400.w));
        let x_1403 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1402.x, x_1402.y, x_1402.z, x_1403.w);
        let x_1405 : vec4<f32> = u_xlat8;
        let x_1407 : vec4<f32> = u_xlat12;
        let x_1409 : vec3<f32> = (vec3<f32>(x_1405.x, x_1405.z, x_1405.w) / vec3<f32>(x_1407.z, x_1407.w, x_1407.y));
        let x_1410 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1409.x, x_1409.y, x_1409.z, x_1410.w);
        let x_1412 : vec4<f32> = u_xlat8;
        let x_1418 : vec3<f32> = (vec3<f32>(x_1412.x, x_1412.y, x_1412.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1419 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1418.x, x_1418.y, x_1418.z, x_1419.w);
        let x_1421 : vec4<f32> = u_xlat11;
        let x_1423 : vec4<f32> = u_xlat7;
        let x_1425 : vec3<f32> = (vec3<f32>(x_1421.z, x_1421.y, x_1421.w) / vec3<f32>(x_1423.x, x_1423.y, x_1423.z));
        let x_1426 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1425.x, x_1425.y, x_1425.z, x_1426.w);
        let x_1428 : vec4<f32> = u_xlat9;
        let x_1430 : vec3<f32> = (vec3<f32>(x_1428.x, x_1428.y, x_1428.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1431 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1430.x, x_1430.y, x_1430.z, x_1431.w);
        let x_1433 : vec4<f32> = u_xlat8;
        let x_1436 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1438 : vec3<f32> = (vec3<f32>(x_1433.y, x_1433.x, x_1433.z) * vec3<f32>(x_1436.x, x_1436.x, x_1436.x));
        let x_1439 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1438.x, x_1438.y, x_1438.z, x_1439.w);
        let x_1441 : vec4<f32> = u_xlat9;
        let x_1444 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1446 : vec3<f32> = (vec3<f32>(x_1441.x, x_1441.y, x_1441.z) * vec3<f32>(x_1444.y, x_1444.y, x_1444.y));
        let x_1447 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1446.x, x_1446.y, x_1446.z, x_1447.w);
        let x_1450 : f32 = u_xlat9.x;
        u_xlat8.w = x_1450;
        let x_1452 : vec4<f32> = u_xlat6;
        let x_1455 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1458 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1452.x, x_1452.y, x_1452.x, x_1452.y) * vec4<f32>(x_1455.x, x_1455.y, x_1455.x, x_1455.y)) + vec4<f32>(x_1458.y, x_1458.w, x_1458.x, x_1458.w));
        let x_1461 : vec4<f32> = u_xlat6;
        let x_1464 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1467 : vec4<f32> = u_xlat8;
        u_xlat56 = ((vec2<f32>(x_1461.x, x_1461.y) * vec2<f32>(x_1464.x, x_1464.y)) + vec2<f32>(x_1467.z, x_1467.w));
        let x_1471 : f32 = u_xlat8.y;
        u_xlat9.w = x_1471;
        let x_1473 : vec4<f32> = u_xlat9;
        let x_1474 : vec2<f32> = vec2<f32>(x_1473.y, x_1473.z);
        let x_1475 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1475.x, x_1474.x, x_1475.z, x_1474.y);
        let x_1477 : vec4<f32> = u_xlat6;
        let x_1480 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1483 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1477.x, x_1477.y, x_1477.x, x_1477.y) * vec4<f32>(x_1480.x, x_1480.y, x_1480.x, x_1480.y)) + vec4<f32>(x_1483.x, x_1483.y, x_1483.z, x_1483.y));
        let x_1486 : vec4<f32> = u_xlat6;
        let x_1489 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1492 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1486.x, x_1486.y, x_1486.x, x_1486.y) * vec4<f32>(x_1489.x, x_1489.y, x_1489.x, x_1489.y)) + vec4<f32>(x_1492.w, x_1492.y, x_1492.w, x_1492.z));
        let x_1495 : vec4<f32> = u_xlat6;
        let x_1498 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1501 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1495.x, x_1495.y, x_1495.x, x_1495.y) * vec4<f32>(x_1498.x, x_1498.y, x_1498.x, x_1498.y)) + vec4<f32>(x_1501.x, x_1501.w, x_1501.z, x_1501.w));
        let x_1504 : vec4<f32> = u_xlat7;
        let x_1506 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_1504.x, x_1504.x, x_1504.x, x_1504.y) * vec4<f32>(x_1506.z, x_1506.w, x_1506.y, x_1506.z));
        let x_1510 : vec4<f32> = u_xlat7;
        let x_1512 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_1510.y, x_1510.y, x_1510.z, x_1510.z) * x_1512);
        let x_1516 : f32 = u_xlat7.z;
        let x_1518 : f32 = u_xlat12.y;
        u_xlat80 = (x_1516 * x_1518);
        let x_1521 : vec4<f32> = u_xlat10;
        let x_1522 : vec2<f32> = vec2<f32>(x_1521.x, x_1521.y);
        let x_1524 : f32 = u_xlat2.z;
        txVec4 = vec3<f32>(x_1522.x, x_1522.y, x_1524);
        let x_1531 : vec3<f32> = txVec4;
        let x_1533 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1531.xy, x_1531.z);
        u_xlat6.x = x_1533;
        let x_1536 : vec4<f32> = u_xlat10;
        let x_1537 : vec2<f32> = vec2<f32>(x_1536.z, x_1536.w);
        let x_1539 : f32 = u_xlat2.z;
        txVec5 = vec3<f32>(x_1537.x, x_1537.y, x_1539);
        let x_1547 : vec3<f32> = txVec5;
        let x_1549 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1547.xy, x_1547.z);
        u_xlat31 = x_1549;
        let x_1550 : f32 = u_xlat31;
        let x_1552 : f32 = u_xlat13.y;
        u_xlat31 = (x_1550 * x_1552);
        let x_1555 : f32 = u_xlat13.x;
        let x_1557 : f32 = u_xlat6.x;
        let x_1559 : f32 = u_xlat31;
        u_xlat6.x = ((x_1555 * x_1557) + x_1559);
        let x_1563 : vec2<f32> = u_xlat56;
        let x_1565 : f32 = u_xlat2.z;
        txVec6 = vec3<f32>(x_1563.x, x_1563.y, x_1565);
        let x_1572 : vec3<f32> = txVec6;
        let x_1574 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1572.xy, x_1572.z);
        u_xlat31 = x_1574;
        let x_1576 : f32 = u_xlat13.z;
        let x_1577 : f32 = u_xlat31;
        let x_1580 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1576 * x_1577) + x_1580);
        let x_1584 : vec4<f32> = u_xlat9;
        let x_1585 : vec2<f32> = vec2<f32>(x_1584.x, x_1584.y);
        let x_1587 : f32 = u_xlat2.z;
        txVec7 = vec3<f32>(x_1585.x, x_1585.y, x_1587);
        let x_1594 : vec3<f32> = txVec7;
        let x_1596 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1594.xy, x_1594.z);
        u_xlat31 = x_1596;
        let x_1598 : f32 = u_xlat13.w;
        let x_1599 : f32 = u_xlat31;
        let x_1602 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1598 * x_1599) + x_1602);
        let x_1606 : vec4<f32> = u_xlat11;
        let x_1607 : vec2<f32> = vec2<f32>(x_1606.x, x_1606.y);
        let x_1609 : f32 = u_xlat2.z;
        txVec8 = vec3<f32>(x_1607.x, x_1607.y, x_1609);
        let x_1616 : vec3<f32> = txVec8;
        let x_1618 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1616.xy, x_1616.z);
        u_xlat31 = x_1618;
        let x_1620 : f32 = u_xlat14.x;
        let x_1621 : f32 = u_xlat31;
        let x_1624 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1620 * x_1621) + x_1624);
        let x_1628 : vec4<f32> = u_xlat11;
        let x_1629 : vec2<f32> = vec2<f32>(x_1628.z, x_1628.w);
        let x_1631 : f32 = u_xlat2.z;
        txVec9 = vec3<f32>(x_1629.x, x_1629.y, x_1631);
        let x_1638 : vec3<f32> = txVec9;
        let x_1640 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1638.xy, x_1638.z);
        u_xlat31 = x_1640;
        let x_1642 : f32 = u_xlat14.y;
        let x_1643 : f32 = u_xlat31;
        let x_1646 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1642 * x_1643) + x_1646);
        let x_1650 : vec4<f32> = u_xlat9;
        let x_1651 : vec2<f32> = vec2<f32>(x_1650.z, x_1650.w);
        let x_1653 : f32 = u_xlat2.z;
        txVec10 = vec3<f32>(x_1651.x, x_1651.y, x_1653);
        let x_1660 : vec3<f32> = txVec10;
        let x_1662 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1660.xy, x_1660.z);
        u_xlat31 = x_1662;
        let x_1664 : f32 = u_xlat14.z;
        let x_1665 : f32 = u_xlat31;
        let x_1668 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1664 * x_1665) + x_1668);
        let x_1672 : vec4<f32> = u_xlat8;
        let x_1673 : vec2<f32> = vec2<f32>(x_1672.x, x_1672.y);
        let x_1675 : f32 = u_xlat2.z;
        txVec11 = vec3<f32>(x_1673.x, x_1673.y, x_1675);
        let x_1682 : vec3<f32> = txVec11;
        let x_1684 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1682.xy, x_1682.z);
        u_xlat31 = x_1684;
        let x_1686 : f32 = u_xlat14.w;
        let x_1687 : f32 = u_xlat31;
        let x_1690 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1686 * x_1687) + x_1690);
        let x_1694 : vec4<f32> = u_xlat8;
        let x_1695 : vec2<f32> = vec2<f32>(x_1694.z, x_1694.w);
        let x_1697 : f32 = u_xlat2.z;
        txVec12 = vec3<f32>(x_1695.x, x_1695.y, x_1697);
        let x_1704 : vec3<f32> = txVec12;
        let x_1706 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1704.xy, x_1704.z);
        u_xlat31 = x_1706;
        let x_1707 : f32 = u_xlat80;
        let x_1708 : f32 = u_xlat31;
        let x_1711 : f32 = u_xlat6.x;
        u_xlat79 = ((x_1707 * x_1708) + x_1711);
      } else {
        let x_1714 : vec4<f32> = u_xlat2;
        let x_1717 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1720 : vec2<f32> = ((vec2<f32>(x_1714.x, x_1714.y) * vec2<f32>(x_1717.z, x_1717.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1721 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1720.x, x_1720.y, x_1721.z, x_1721.w);
        let x_1723 : vec4<f32> = u_xlat6;
        let x_1725 : vec2<f32> = floor(vec2<f32>(x_1723.x, x_1723.y));
        let x_1726 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1725.x, x_1725.y, x_1726.z, x_1726.w);
        let x_1728 : vec4<f32> = u_xlat2;
        let x_1731 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1734 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_1728.x, x_1728.y) * vec2<f32>(x_1731.z, x_1731.w)) + -(vec2<f32>(x_1734.x, x_1734.y)));
        let x_1738 : vec2<f32> = u_xlat56;
        u_xlat7 = (vec4<f32>(x_1738.x, x_1738.x, x_1738.y, x_1738.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1741 : vec4<f32> = u_xlat7;
        let x_1743 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1741.x, x_1741.x, x_1741.z, x_1741.z) * vec4<f32>(x_1743.x, x_1743.x, x_1743.z, x_1743.z));
        let x_1746 : vec4<f32> = u_xlat8;
        let x_1750 : vec2<f32> = (vec2<f32>(x_1746.y, x_1746.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1751 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1751.x, x_1750.x, x_1751.z, x_1750.y);
        let x_1753 : vec4<f32> = u_xlat8;
        let x_1756 : vec2<f32> = u_xlat56;
        let x_1758 : vec2<f32> = ((vec2<f32>(x_1753.x, x_1753.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1756));
        let x_1759 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1758.x, x_1759.y, x_1758.y, x_1759.w);
        let x_1761 : vec2<f32> = u_xlat56;
        let x_1763 : vec2<f32> = (-(x_1761) + vec2<f32>(1.0f, 1.0f));
        let x_1764 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1763.x, x_1763.y, x_1764.z, x_1764.w);
        let x_1766 : vec2<f32> = u_xlat56;
        u_xlat58 = min(x_1766, vec2<f32>(0.0f, 0.0f));
        let x_1768 : vec2<f32> = u_xlat58;
        let x_1770 : vec2<f32> = u_xlat58;
        let x_1772 : vec4<f32> = u_xlat8;
        let x_1774 : vec2<f32> = ((-(x_1768) * x_1770) + vec2<f32>(x_1772.x, x_1772.y));
        let x_1775 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1774.x, x_1774.y, x_1775.z, x_1775.w);
        let x_1777 : vec2<f32> = u_xlat56;
        u_xlat58 = max(x_1777, vec2<f32>(0.0f, 0.0f));
        let x_1780 : vec2<f32> = u_xlat58;
        let x_1782 : vec2<f32> = u_xlat58;
        let x_1784 : vec4<f32> = u_xlat7;
        let x_1786 : vec2<f32> = ((-(x_1780) * x_1782) + vec2<f32>(x_1784.y, x_1784.w));
        let x_1787 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_1786.x, x_1787.y, x_1786.y);
        let x_1789 : vec4<f32> = u_xlat8;
        let x_1791 : vec2<f32> = (vec2<f32>(x_1789.x, x_1789.y) + vec2<f32>(2.0f, 2.0f));
        let x_1792 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1791.x, x_1791.y, x_1792.z, x_1792.w);
        let x_1794 : vec3<f32> = u_xlat32;
        let x_1796 : vec2<f32> = (vec2<f32>(x_1794.x, x_1794.z) + vec2<f32>(2.0f, 2.0f));
        let x_1797 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1797.x, x_1796.x, x_1797.z, x_1796.y);
        let x_1800 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1800 * 0.08163200318813323975f);
        let x_1804 : vec4<f32> = u_xlat7;
        let x_1807 : vec3<f32> = (vec3<f32>(x_1804.z, x_1804.x, x_1804.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1808 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1807.x, x_1807.y, x_1807.z, x_1808.w);
        let x_1810 : vec4<f32> = u_xlat8;
        let x_1813 : vec2<f32> = (vec2<f32>(x_1810.x, x_1810.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1814 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1813.x, x_1813.y, x_1814.z, x_1814.w);
        let x_1817 : f32 = u_xlat11.y;
        u_xlat10.x = x_1817;
        let x_1819 : vec2<f32> = u_xlat56;
        let x_1826 : vec2<f32> = ((vec2<f32>(x_1819.x, x_1819.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1827 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1827.x, x_1826.x, x_1827.z, x_1826.y);
        let x_1829 : vec2<f32> = u_xlat56;
        let x_1833 : vec2<f32> = ((vec2<f32>(x_1829.x, x_1829.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1834 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1833.x, x_1834.y, x_1833.y, x_1834.w);
        let x_1837 : f32 = u_xlat7.x;
        u_xlat8.y = x_1837;
        let x_1840 : f32 = u_xlat9.y;
        u_xlat8.w = x_1840;
        let x_1842 : vec4<f32> = u_xlat8;
        let x_1843 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1842 + x_1843);
        let x_1845 : vec2<f32> = u_xlat56;
        let x_1848 : vec2<f32> = ((vec2<f32>(x_1845.y, x_1845.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1849 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1849.x, x_1848.x, x_1849.z, x_1848.y);
        let x_1851 : vec2<f32> = u_xlat56;
        let x_1854 : vec2<f32> = ((vec2<f32>(x_1851.y, x_1851.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1855 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1854.x, x_1855.y, x_1854.y, x_1855.w);
        let x_1858 : f32 = u_xlat7.y;
        u_xlat9.y = x_1858;
        let x_1860 : vec4<f32> = u_xlat9;
        let x_1861 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1860 + x_1861);
        let x_1863 : vec4<f32> = u_xlat8;
        let x_1864 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1863 / x_1864);
        let x_1866 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1866 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1872 : vec4<f32> = u_xlat9;
        let x_1873 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1872 / x_1873);
        let x_1875 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1875 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1877 : vec4<f32> = u_xlat8;
        let x_1880 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1877.w, x_1877.x, x_1877.y, x_1877.z) * vec4<f32>(x_1880.x, x_1880.x, x_1880.x, x_1880.x));
        let x_1883 : vec4<f32> = u_xlat9;
        let x_1886 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1883.x, x_1883.w, x_1883.y, x_1883.z) * vec4<f32>(x_1886.y, x_1886.y, x_1886.y, x_1886.y));
        let x_1889 : vec4<f32> = u_xlat8;
        let x_1890 : vec3<f32> = vec3<f32>(x_1889.y, x_1889.z, x_1889.w);
        let x_1891 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1890.x, x_1891.y, x_1890.y, x_1890.z);
        let x_1894 : f32 = u_xlat9.x;
        u_xlat11.y = x_1894;
        let x_1896 : vec4<f32> = u_xlat6;
        let x_1899 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1902 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1896.x, x_1896.y, x_1896.x, x_1896.y) * vec4<f32>(x_1899.x, x_1899.y, x_1899.x, x_1899.y)) + vec4<f32>(x_1902.x, x_1902.y, x_1902.z, x_1902.y));
        let x_1905 : vec4<f32> = u_xlat6;
        let x_1908 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1911 : vec4<f32> = u_xlat11;
        u_xlat56 = ((vec2<f32>(x_1905.x, x_1905.y) * vec2<f32>(x_1908.x, x_1908.y)) + vec2<f32>(x_1911.w, x_1911.y));
        let x_1915 : f32 = u_xlat11.y;
        u_xlat8.y = x_1915;
        let x_1918 : f32 = u_xlat9.z;
        u_xlat11.y = x_1918;
        let x_1920 : vec4<f32> = u_xlat6;
        let x_1923 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1926 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1920.x, x_1920.y, x_1920.x, x_1920.y) * vec4<f32>(x_1923.x, x_1923.y, x_1923.x, x_1923.y)) + vec4<f32>(x_1926.x, x_1926.y, x_1926.z, x_1926.y));
        let x_1929 : vec4<f32> = u_xlat6;
        let x_1932 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1935 : vec4<f32> = u_xlat11;
        let x_1937 : vec2<f32> = ((vec2<f32>(x_1929.x, x_1929.y) * vec2<f32>(x_1932.x, x_1932.y)) + vec2<f32>(x_1935.w, x_1935.y));
        let x_1938 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1937.x, x_1937.y, x_1938.z, x_1938.w);
        let x_1941 : f32 = u_xlat11.y;
        u_xlat8.z = x_1941;
        let x_1944 : vec4<f32> = u_xlat6;
        let x_1947 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1950 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1944.x, x_1944.y, x_1944.x, x_1944.y) * vec4<f32>(x_1947.x, x_1947.y, x_1947.x, x_1947.y)) + vec4<f32>(x_1950.x, x_1950.y, x_1950.x, x_1950.z));
        let x_1954 : f32 = u_xlat9.w;
        u_xlat11.y = x_1954;
        let x_1957 : vec4<f32> = u_xlat6;
        let x_1960 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1963 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1957.x, x_1957.y, x_1957.x, x_1957.y) * vec4<f32>(x_1960.x, x_1960.y, x_1960.x, x_1960.y)) + vec4<f32>(x_1963.x, x_1963.y, x_1963.z, x_1963.y));
        let x_1967 : vec4<f32> = u_xlat6;
        let x_1970 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1973 : vec4<f32> = u_xlat11;
        let x_1975 : vec2<f32> = ((vec2<f32>(x_1967.x, x_1967.y) * vec2<f32>(x_1970.x, x_1970.y)) + vec2<f32>(x_1973.w, x_1973.y));
        let x_1976 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_1975.x, x_1975.y, x_1976.z);
        let x_1979 : f32 = u_xlat11.y;
        u_xlat8.w = x_1979;
        let x_1982 : vec4<f32> = u_xlat6;
        let x_1985 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1988 : vec4<f32> = u_xlat8;
        u_xlat64 = ((vec2<f32>(x_1982.x, x_1982.y) * vec2<f32>(x_1985.x, x_1985.y)) + vec2<f32>(x_1988.x, x_1988.w));
        let x_1991 : vec4<f32> = u_xlat11;
        let x_1992 : vec3<f32> = vec3<f32>(x_1991.x, x_1991.z, x_1991.w);
        let x_1993 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1992.x, x_1993.y, x_1992.y, x_1992.z);
        let x_1995 : vec4<f32> = u_xlat6;
        let x_1998 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_2001 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1995.x, x_1995.y, x_1995.x, x_1995.y) * vec4<f32>(x_1998.x, x_1998.y, x_1998.x, x_1998.y)) + vec4<f32>(x_2001.x, x_2001.y, x_2001.z, x_2001.y));
        let x_2005 : vec4<f32> = u_xlat6;
        let x_2008 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_2011 : vec4<f32> = u_xlat9;
        u_xlat59 = ((vec2<f32>(x_2005.x, x_2005.y) * vec2<f32>(x_2008.x, x_2008.y)) + vec2<f32>(x_2011.w, x_2011.y));
        let x_2015 : f32 = u_xlat8.x;
        u_xlat9.x = x_2015;
        let x_2017 : vec4<f32> = u_xlat6;
        let x_2020 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_2023 : vec4<f32> = u_xlat9;
        let x_2025 : vec2<f32> = ((vec2<f32>(x_2017.x, x_2017.y) * vec2<f32>(x_2020.x, x_2020.y)) + vec2<f32>(x_2023.x, x_2023.y));
        let x_2026 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_2025.x, x_2025.y, x_2026.z, x_2026.w);
        let x_2029 : vec4<f32> = u_xlat7;
        let x_2031 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_2029.x, x_2029.x, x_2029.x, x_2029.x) * x_2031);
        let x_2034 : vec4<f32> = u_xlat7;
        let x_2036 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_2034.y, x_2034.y, x_2034.y, x_2034.y) * x_2036);
        let x_2039 : vec4<f32> = u_xlat7;
        let x_2041 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_2039.z, x_2039.z, x_2039.z, x_2039.z) * x_2041);
        let x_2043 : vec4<f32> = u_xlat7;
        let x_2045 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_2043.w, x_2043.w, x_2043.w, x_2043.w) * x_2045);
        let x_2048 : vec4<f32> = u_xlat12;
        let x_2049 : vec2<f32> = vec2<f32>(x_2048.x, x_2048.y);
        let x_2051 : f32 = u_xlat2.z;
        txVec13 = vec3<f32>(x_2049.x, x_2049.y, x_2051);
        let x_2058 : vec3<f32> = txVec13;
        let x_2060 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2058.xy, x_2058.z);
        u_xlat80 = x_2060;
        let x_2062 : vec4<f32> = u_xlat12;
        let x_2063 : vec2<f32> = vec2<f32>(x_2062.z, x_2062.w);
        let x_2065 : f32 = u_xlat2.z;
        txVec14 = vec3<f32>(x_2063.x, x_2063.y, x_2065);
        let x_2072 : vec3<f32> = txVec14;
        let x_2074 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2072.xy, x_2072.z);
        u_xlat8.x = x_2074;
        let x_2077 : f32 = u_xlat8.x;
        let x_2079 : f32 = u_xlat17.y;
        u_xlat8.x = (x_2077 * x_2079);
        let x_2083 : f32 = u_xlat17.x;
        let x_2084 : f32 = u_xlat80;
        let x_2087 : f32 = u_xlat8.x;
        u_xlat80 = ((x_2083 * x_2084) + x_2087);
        let x_2090 : vec2<f32> = u_xlat56;
        let x_2092 : f32 = u_xlat2.z;
        txVec15 = vec3<f32>(x_2090.x, x_2090.y, x_2092);
        let x_2099 : vec3<f32> = txVec15;
        let x_2101 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2099.xy, x_2099.z);
        u_xlat56.x = x_2101;
        let x_2104 : f32 = u_xlat17.z;
        let x_2106 : f32 = u_xlat56.x;
        let x_2108 : f32 = u_xlat80;
        u_xlat80 = ((x_2104 * x_2106) + x_2108);
        let x_2111 : vec4<f32> = u_xlat15;
        let x_2112 : vec2<f32> = vec2<f32>(x_2111.x, x_2111.y);
        let x_2114 : f32 = u_xlat2.z;
        txVec16 = vec3<f32>(x_2112.x, x_2112.y, x_2114);
        let x_2121 : vec3<f32> = txVec16;
        let x_2123 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2121.xy, x_2121.z);
        u_xlat56.x = x_2123;
        let x_2126 : f32 = u_xlat17.w;
        let x_2128 : f32 = u_xlat56.x;
        let x_2130 : f32 = u_xlat80;
        u_xlat80 = ((x_2126 * x_2128) + x_2130);
        let x_2133 : vec4<f32> = u_xlat13;
        let x_2134 : vec2<f32> = vec2<f32>(x_2133.x, x_2133.y);
        let x_2136 : f32 = u_xlat2.z;
        txVec17 = vec3<f32>(x_2134.x, x_2134.y, x_2136);
        let x_2143 : vec3<f32> = txVec17;
        let x_2145 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2143.xy, x_2143.z);
        u_xlat56.x = x_2145;
        let x_2148 : f32 = u_xlat18.x;
        let x_2150 : f32 = u_xlat56.x;
        let x_2152 : f32 = u_xlat80;
        u_xlat80 = ((x_2148 * x_2150) + x_2152);
        let x_2155 : vec4<f32> = u_xlat13;
        let x_2156 : vec2<f32> = vec2<f32>(x_2155.z, x_2155.w);
        let x_2158 : f32 = u_xlat2.z;
        txVec18 = vec3<f32>(x_2156.x, x_2156.y, x_2158);
        let x_2165 : vec3<f32> = txVec18;
        let x_2167 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2165.xy, x_2165.z);
        u_xlat56.x = x_2167;
        let x_2170 : f32 = u_xlat18.y;
        let x_2172 : f32 = u_xlat56.x;
        let x_2174 : f32 = u_xlat80;
        u_xlat80 = ((x_2170 * x_2172) + x_2174);
        let x_2177 : vec4<f32> = u_xlat14;
        let x_2178 : vec2<f32> = vec2<f32>(x_2177.x, x_2177.y);
        let x_2180 : f32 = u_xlat2.z;
        txVec19 = vec3<f32>(x_2178.x, x_2178.y, x_2180);
        let x_2187 : vec3<f32> = txVec19;
        let x_2189 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2187.xy, x_2187.z);
        u_xlat56.x = x_2189;
        let x_2192 : f32 = u_xlat18.z;
        let x_2194 : f32 = u_xlat56.x;
        let x_2196 : f32 = u_xlat80;
        u_xlat80 = ((x_2192 * x_2194) + x_2196);
        let x_2199 : vec4<f32> = u_xlat15;
        let x_2200 : vec2<f32> = vec2<f32>(x_2199.z, x_2199.w);
        let x_2202 : f32 = u_xlat2.z;
        txVec20 = vec3<f32>(x_2200.x, x_2200.y, x_2202);
        let x_2209 : vec3<f32> = txVec20;
        let x_2211 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2209.xy, x_2209.z);
        u_xlat56.x = x_2211;
        let x_2214 : f32 = u_xlat18.w;
        let x_2216 : f32 = u_xlat56.x;
        let x_2218 : f32 = u_xlat80;
        u_xlat80 = ((x_2214 * x_2216) + x_2218);
        let x_2221 : vec4<f32> = u_xlat16;
        let x_2222 : vec2<f32> = vec2<f32>(x_2221.x, x_2221.y);
        let x_2224 : f32 = u_xlat2.z;
        txVec21 = vec3<f32>(x_2222.x, x_2222.y, x_2224);
        let x_2231 : vec3<f32> = txVec21;
        let x_2233 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2231.xy, x_2231.z);
        u_xlat56.x = x_2233;
        let x_2236 : f32 = u_xlat19.x;
        let x_2238 : f32 = u_xlat56.x;
        let x_2240 : f32 = u_xlat80;
        u_xlat80 = ((x_2236 * x_2238) + x_2240);
        let x_2243 : vec4<f32> = u_xlat16;
        let x_2244 : vec2<f32> = vec2<f32>(x_2243.z, x_2243.w);
        let x_2246 : f32 = u_xlat2.z;
        txVec22 = vec3<f32>(x_2244.x, x_2244.y, x_2246);
        let x_2253 : vec3<f32> = txVec22;
        let x_2255 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2253.xy, x_2253.z);
        u_xlat56.x = x_2255;
        let x_2258 : f32 = u_xlat19.y;
        let x_2260 : f32 = u_xlat56.x;
        let x_2262 : f32 = u_xlat80;
        u_xlat80 = ((x_2258 * x_2260) + x_2262);
        let x_2265 : vec3<f32> = u_xlat33;
        let x_2266 : vec2<f32> = vec2<f32>(x_2265.x, x_2265.y);
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
  let x_2410 : f32 = x_845.x_MainLightShadowParams.x;
  u_xlat2.x = (-(x_2410) + 1.0f);
  let x_2414 : f32 = u_xlat79;
  let x_2416 : f32 = x_845.x_MainLightShadowParams.x;
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
  let x_2446 : vec3<f32> = x_112.x_WorldSpaceCameraPos;
  let x_2448 : vec3<f32> = (x_2443 + -(x_2446));
  let x_2449 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2448.x, x_2448.y, x_2448.z, x_2449.w);
  let x_2451 : vec4<f32> = u_xlat6;
  let x_2453 : vec4<f32> = u_xlat6;
  u_xlat27.x = dot(vec3<f32>(x_2451.x, x_2451.y, x_2451.z), vec3<f32>(x_2453.x, x_2453.y, x_2453.z));
  let x_2459 : f32 = u_xlat27.x;
  let x_2461 : f32 = x_845.x_MainLightShadowParams.z;
  let x_2464 : f32 = x_845.x_MainLightShadowParams.w;
  u_xlat52 = ((x_2459 * x_2461) + x_2464);
  let x_2466 : f32 = u_xlat52;
  u_xlat52 = clamp(x_2466, 0.0f, 1.0f);
  let x_2469 : f32 = u_xlat2.x;
  u_xlat79 = (-(x_2469) + 1.0f);
  let x_2472 : f32 = u_xlat52;
  let x_2473 : f32 = u_xlat79;
  let x_2476 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_2472 * x_2473) + x_2476);
  let x_2481 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_2481;
  let x_2484 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_2484;
  let x_2487 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_2487;
  let x_2489 : vec4<f32> = u_xlat6;
  let x_2492 : vec4<f32> = u_xlat1;
  u_xlat52 = dot(-(vec3<f32>(x_2489.x, x_2489.y, x_2489.z)), vec3<f32>(x_2492.x, x_2492.y, x_2492.z));
  let x_2495 : f32 = u_xlat52;
  let x_2496 : f32 = u_xlat52;
  u_xlat52 = (x_2495 + x_2496);
  let x_2498 : vec4<f32> = u_xlat1;
  let x_2500 : f32 = u_xlat52;
  let x_2504 : vec4<f32> = u_xlat6;
  let x_2507 : vec3<f32> = ((vec3<f32>(x_2498.x, x_2498.y, x_2498.z) * -(vec3<f32>(x_2500, x_2500, x_2500))) + -(vec3<f32>(x_2504.x, x_2504.y, x_2504.z)));
  let x_2508 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2507.x, x_2507.y, x_2507.z, x_2508.w);
  let x_2510 : vec4<f32> = u_xlat1;
  let x_2512 : vec4<f32> = u_xlat6;
  u_xlat52 = dot(vec3<f32>(x_2510.x, x_2510.y, x_2510.z), vec3<f32>(x_2512.x, x_2512.y, x_2512.z));
  let x_2515 : f32 = u_xlat52;
  u_xlat52 = clamp(x_2515, 0.0f, 1.0f);
  let x_2517 : f32 = u_xlat52;
  u_xlat52 = (-(x_2517) + 1.0f);
  let x_2520 : f32 = u_xlat52;
  let x_2521 : f32 = u_xlat52;
  u_xlat52 = (x_2520 * x_2521);
  let x_2523 : f32 = u_xlat52;
  let x_2524 : f32 = u_xlat52;
  u_xlat52 = (x_2523 * x_2524);
  let x_2527 : f32 = u_xlat0.x;
  u_xlat79 = ((-(x_2527) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2534 : f32 = u_xlat0.x;
  let x_2535 : f32 = u_xlat79;
  u_xlat0.x = (x_2534 * x_2535);
  let x_2539 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2539 * 6.0f);
  let x_2551 : vec4<f32> = u_xlat7;
  let x_2554 : f32 = u_xlat0.x;
  let x_2555 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2551.x, x_2551.y, x_2551.z), x_2554);
  u_xlat7 = x_2555;
  let x_2557 : f32 = u_xlat7.w;
  u_xlat0.x = (x_2557 + -1.0f);
  let x_2561 : f32 = x_1025.unity_SpecCube0_HDR.w;
  let x_2563 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2561 * x_2563) + 1.0f);
  let x_2568 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2568, 0.0f);
  let x_2572 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2572);
  let x_2576 : f32 = u_xlat0.x;
  let x_2578 : f32 = x_1025.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2576 * x_2578);
  let x_2582 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2582);
  let x_2586 : f32 = u_xlat0.x;
  let x_2588 : f32 = x_1025.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2586 * x_2588);
  let x_2591 : vec4<f32> = u_xlat7;
  let x_2593 : vec3<f32> = u_xlat0;
  let x_2595 : vec3<f32> = (vec3<f32>(x_2591.x, x_2591.y, x_2591.z) * vec3<f32>(x_2593.x, x_2593.x, x_2593.x));
  let x_2596 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2595.x, x_2595.y, x_2595.z, x_2596.w);
  let x_2598 : f32 = u_xlat76;
  let x_2600 : f32 = u_xlat76;
  let x_2604 : vec2<f32> = ((vec2<f32>(x_2598, x_2598) * vec2<f32>(x_2600, x_2600)) + vec2<f32>(-1.0f, 1.0f));
  let x_2605 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2604.x, x_2604.y, x_2605.z, x_2605.w);
  let x_2608 : f32 = u_xlat8.y;
  u_xlat0.x = (1.0f / x_2608);
  let x_2611 : vec4<f32> = u_xlat5;
  let x_2614 : f32 = u_xlat50;
  u_xlat33 = (-(vec3<f32>(x_2611.x, x_2611.y, x_2611.z)) + vec3<f32>(x_2614, x_2614, x_2614));
  let x_2617 : f32 = u_xlat52;
  let x_2619 : vec3<f32> = u_xlat33;
  let x_2621 : vec4<f32> = u_xlat5;
  u_xlat33 = ((vec3<f32>(x_2617, x_2617, x_2617) * x_2619) + vec3<f32>(x_2621.x, x_2621.y, x_2621.z));
  let x_2624 : vec3<f32> = u_xlat0;
  let x_2626 : vec3<f32> = u_xlat33;
  u_xlat33 = (vec3<f32>(x_2624.x, x_2624.x, x_2624.x) * x_2626);
  let x_2628 : vec4<f32> = u_xlat7;
  let x_2630 : vec3<f32> = u_xlat33;
  let x_2631 : vec3<f32> = (vec3<f32>(x_2628.x, x_2628.y, x_2628.z) * x_2630);
  let x_2632 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2631.x, x_2631.y, x_2631.z, x_2632.w);
  let x_2634 : vec4<f32> = u_xlat3;
  let x_2636 : vec4<f32> = u_xlat4;
  let x_2639 : vec4<f32> = u_xlat7;
  let x_2641 : vec3<f32> = ((vec3<f32>(x_2634.x, x_2634.y, x_2634.z) * vec3<f32>(x_2636.x, x_2636.y, x_2636.z)) + vec3<f32>(x_2639.x, x_2639.y, x_2639.z));
  let x_2642 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2641.x, x_2641.y, x_2641.z, x_2642.w);
  let x_2645 : f32 = u_xlat2.x;
  let x_2647 : f32 = x_1025.unity_LightData.z;
  u_xlat0.x = (x_2645 * x_2647);
  let x_2650 : vec4<f32> = u_xlat1;
  let x_2653 : vec4<f32> = x_112.x_MainLightPosition;
  u_xlat50 = dot(vec3<f32>(x_2650.x, x_2650.y, x_2650.z), vec3<f32>(x_2653.x, x_2653.y, x_2653.z));
  let x_2656 : f32 = u_xlat50;
  u_xlat50 = clamp(x_2656, 0.0f, 1.0f);
  let x_2658 : f32 = u_xlat50;
  let x_2660 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2658 * x_2660);
  let x_2663 : vec3<f32> = u_xlat0;
  let x_2666 : vec4<f32> = x_112.x_MainLightColor;
  let x_2668 : vec3<f32> = (vec3<f32>(x_2663.x, x_2663.x, x_2663.x) * vec3<f32>(x_2666.x, x_2666.y, x_2666.z));
  let x_2669 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2668.x, x_2668.y, x_2668.z, x_2669.w);
  let x_2671 : vec4<f32> = u_xlat6;
  let x_2674 : vec4<f32> = x_112.x_MainLightPosition;
  u_xlat33 = (vec3<f32>(x_2671.x, x_2671.y, x_2671.z) + vec3<f32>(x_2674.x, x_2674.y, x_2674.z));
  let x_2677 : vec3<f32> = u_xlat33;
  let x_2678 : vec3<f32> = u_xlat33;
  u_xlat0.x = dot(x_2677, x_2678);
  let x_2682 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2682, 1.17549435e-38f);
  let x_2687 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_2687);
  let x_2690 : vec3<f32> = u_xlat0;
  let x_2692 : vec3<f32> = u_xlat33;
  u_xlat33 = (vec3<f32>(x_2690.x, x_2690.x, x_2690.x) * x_2692);
  let x_2694 : vec4<f32> = u_xlat1;
  let x_2696 : vec3<f32> = u_xlat33;
  u_xlat0.x = dot(vec3<f32>(x_2694.x, x_2694.y, x_2694.z), x_2696);
  let x_2700 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_2700, 0.0f, 1.0f);
  let x_2704 : vec4<f32> = x_112.x_MainLightPosition;
  let x_2706 : vec3<f32> = u_xlat33;
  u_xlat0.z = dot(vec3<f32>(x_2704.x, x_2704.y, x_2704.z), x_2706);
  let x_2710 : f32 = u_xlat0.z;
  u_xlat0.z = clamp(x_2710, 0.0f, 1.0f);
  let x_2713 : vec3<f32> = u_xlat0;
  let x_2715 : vec3<f32> = u_xlat0;
  let x_2717 : vec2<f32> = (vec2<f32>(x_2713.x, x_2713.z) * vec2<f32>(x_2715.x, x_2715.z));
  let x_2718 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2717.x, x_2718.y, x_2717.y);
  let x_2721 : f32 = u_xlat0.x;
  let x_2723 : f32 = u_xlat8.x;
  u_xlat0.x = ((x_2721 * x_2723) + 1.00001001358032226562f);
  let x_2729 : f32 = u_xlat0.x;
  let x_2731 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2729 * x_2731);
  let x_2735 : f32 = u_xlat0.z;
  u_xlat50 = max(x_2735, 0.10000000149011611938f);
  let x_2738 : f32 = u_xlat50;
  let x_2740 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2738 * x_2740);
  let x_2743 : f32 = u_xlat77;
  let x_2745 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2743 * x_2745);
  let x_2748 : f32 = u_xlat78;
  let x_2750 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2748 / x_2750);
  let x_2753 : vec4<f32> = u_xlat5;
  let x_2755 : vec3<f32> = u_xlat0;
  let x_2758 : vec4<f32> = u_xlat4;
  u_xlat33 = ((vec3<f32>(x_2753.x, x_2753.y, x_2753.z) * vec3<f32>(x_2755.x, x_2755.x, x_2755.x)) + vec3<f32>(x_2758.x, x_2758.y, x_2758.z));
  let x_2761 : vec4<f32> = u_xlat7;
  let x_2763 : vec3<f32> = u_xlat33;
  let x_2764 : vec3<f32> = (vec3<f32>(x_2761.x, x_2761.y, x_2761.z) * x_2763);
  let x_2765 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2764.x, x_2764.y, x_2764.z, x_2765.w);
  let x_2768 : f32 = x_112.x_AdditionalLightsCount.x;
  let x_2770 : f32 = x_1025.unity_LightData.y;
  u_xlat0.x = min(x_2768, x_2770);
  let x_2775 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_2775));
  let x_2779 : f32 = u_xlat27.x;
  let x_2781 : f32 = x_845.x_AdditionalShadowFadeParams.x;
  let x_2784 : f32 = x_845.x_AdditionalShadowFadeParams.y;
  u_xlat50 = ((x_2779 * x_2781) + x_2784);
  let x_2786 : f32 = u_xlat50;
  u_xlat50 = clamp(x_2786, 0.0f, 1.0f);
  u_xlat2.x = 0.0f;
  u_xlat2.y = 0.0f;
  u_xlat2.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2798 : u32 = u_xlatu_loop_1;
    let x_2799 : u32 = u_xlatu0;
    if ((x_2798 < x_2799)) {
    } else {
      break;
    }
    let x_2802 : u32 = u_xlatu_loop_1;
    u_xlatu79 = (x_2802 >> 2u);
    let x_2805 : u32 = u_xlatu_loop_1;
    u_xlati80 = bitcast<i32>((x_2805 & 3u));
    let x_2808 : u32 = u_xlatu79;
    let x_2811 : vec4<f32> = x_1025.unity_LightIndices[bitcast<i32>(x_2808)];
    let x_2821 : i32 = u_xlati80;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2826 : vec4<u32> = indexable[x_2821];
    u_xlat79 = dot(x_2811, bitcast<vec4<f32>>(x_2826));
    let x_2830 : f32 = u_xlat79;
    u_xlati79 = i32(x_2830);
    let x_2832 : vec3<f32> = vs_TEXCOORD7;
    let x_2843 : i32 = u_xlati79;
    let x_2845 : vec4<f32> = x_2842.x_AdditionalLightsPosition[x_2843];
    let x_2848 : i32 = u_xlati79;
    let x_2850 : vec4<f32> = x_2842.x_AdditionalLightsPosition[x_2848];
    u_xlat33 = ((-(x_2832) * vec3<f32>(x_2845.w, x_2845.w, x_2845.w)) + vec3<f32>(x_2850.x, x_2850.y, x_2850.z));
    let x_2853 : vec3<f32> = u_xlat33;
    let x_2854 : vec3<f32> = u_xlat33;
    u_xlat80 = dot(x_2853, x_2854);
    let x_2856 : f32 = u_xlat80;
    u_xlat80 = max(x_2856, 0.00006103515625f);
    let x_2859 : f32 = u_xlat80;
    u_xlat81 = inverseSqrt(x_2859);
    let x_2861 : f32 = u_xlat81;
    let x_2863 : vec3<f32> = u_xlat33;
    let x_2864 : vec3<f32> = (vec3<f32>(x_2861, x_2861, x_2861) * x_2863);
    let x_2865 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2864.x, x_2864.y, x_2864.z, x_2865.w);
    let x_2868 : f32 = u_xlat80;
    u_xlat82 = (1.0f / x_2868);
    let x_2870 : f32 = u_xlat80;
    let x_2871 : i32 = u_xlati79;
    let x_2873 : f32 = x_2842.x_AdditionalLightsAttenuation[x_2871].x;
    u_xlat80 = (x_2870 * x_2873);
    let x_2875 : f32 = u_xlat80;
    let x_2877 : f32 = u_xlat80;
    u_xlat80 = ((-(x_2875) * x_2877) + 1.0f);
    let x_2880 : f32 = u_xlat80;
    u_xlat80 = max(x_2880, 0.0f);
    let x_2882 : f32 = u_xlat80;
    let x_2883 : f32 = u_xlat80;
    u_xlat80 = (x_2882 * x_2883);
    let x_2885 : f32 = u_xlat80;
    let x_2886 : f32 = u_xlat82;
    u_xlat80 = (x_2885 * x_2886);
    let x_2888 : i32 = u_xlati79;
    let x_2890 : vec4<f32> = x_2842.x_AdditionalLightsSpotDir[x_2888];
    let x_2892 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_2890.x, x_2890.y, x_2890.z), vec3<f32>(x_2892.x, x_2892.y, x_2892.z));
    let x_2895 : f32 = u_xlat82;
    let x_2896 : i32 = u_xlati79;
    let x_2898 : f32 = x_2842.x_AdditionalLightsAttenuation[x_2896].z;
    let x_2900 : i32 = u_xlati79;
    let x_2902 : f32 = x_2842.x_AdditionalLightsAttenuation[x_2900].w;
    u_xlat82 = ((x_2895 * x_2898) + x_2902);
    let x_2904 : f32 = u_xlat82;
    u_xlat82 = clamp(x_2904, 0.0f, 1.0f);
    let x_2906 : f32 = u_xlat82;
    let x_2907 : f32 = u_xlat82;
    u_xlat82 = (x_2906 * x_2907);
    let x_2909 : f32 = u_xlat80;
    let x_2910 : f32 = u_xlat82;
    u_xlat80 = (x_2909 * x_2910);
    let x_2913 : i32 = u_xlati79;
    let x_2915 : f32 = x_845.x_AdditionalShadowParams[x_2913].w;
    u_xlati82 = i32(x_2915);
    let x_2918 : i32 = u_xlati82;
    u_xlatb84 = (x_2918 >= 0i);
    let x_2920 : bool = u_xlatb84;
    if (x_2920) {
      let x_2924 : i32 = u_xlati79;
      let x_2926 : f32 = x_845.x_AdditionalShadowParams[x_2924].z;
      u_xlatb84 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2926, x_2926, x_2926, x_2926))));
      let x_2930 : bool = u_xlatb84;
      if (x_2930) {
        let x_2934 : vec4<f32> = u_xlat9;
        let x_2937 : vec4<f32> = u_xlat9;
        let x_2940 : vec4<bool> = (abs(vec4<f32>(x_2934.z, x_2934.z, x_2934.y, x_2934.z)) >= abs(vec4<f32>(x_2937.x, x_2937.y, x_2937.x, x_2937.x)));
        let x_2942 : vec3<bool> = vec3<bool>(x_2940.x, x_2940.y, x_2940.z);
        let x_2943 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_2942.x, x_2942.y, x_2942.z, x_2943.w);
        let x_2946 : bool = u_xlatb10.y;
        let x_2948 : bool = u_xlatb10.x;
        u_xlatb84 = (x_2946 & x_2948);
        let x_2950 : vec4<f32> = u_xlat9;
        let x_2953 : vec4<bool> = (-(vec4<f32>(x_2950.z, x_2950.y, x_2950.z, x_2950.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2954 : vec3<bool> = vec3<bool>(x_2953.x, x_2953.y, x_2953.w);
        let x_2955 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_2954.x, x_2954.y, x_2955.z, x_2954.z);
        let x_2958 : bool = u_xlatb10.x;
        u_xlat10.x = select(4.0f, 5.0f, x_2958);
        let x_2963 : bool = u_xlatb10.y;
        u_xlat10.y = select(2.0f, 3.0f, x_2963);
        let x_2968 : bool = u_xlatb10.w;
        u_xlat85 = select(0.0f, 1.0f, x_2968);
        let x_2972 : bool = u_xlatb10.z;
        if (x_2972) {
          let x_2977 : f32 = u_xlat10.y;
          x_2973 = x_2977;
        } else {
          let x_2979 : f32 = u_xlat85;
          x_2973 = x_2979;
        }
        let x_2980 : f32 = x_2973;
        u_xlat35 = x_2980;
        let x_2982 : bool = u_xlatb84;
        if (x_2982) {
          let x_2987 : f32 = u_xlat10.x;
          x_2983 = x_2987;
        } else {
          let x_2989 : f32 = u_xlat35;
          x_2983 = x_2989;
        }
        let x_2990 : f32 = x_2983;
        u_xlat84 = x_2990;
        let x_2991 : i32 = u_xlati79;
        let x_2993 : f32 = x_845.x_AdditionalShadowParams[x_2991].w;
        u_xlat10.x = trunc(x_2993);
        let x_2996 : f32 = u_xlat84;
        let x_2998 : f32 = u_xlat10.x;
        u_xlat84 = (x_2996 + x_2998);
        let x_3000 : f32 = u_xlat84;
        u_xlati82 = i32(x_3000);
      }
      let x_3002 : i32 = u_xlati82;
      u_xlati82 = (x_3002 << bitcast<u32>(2i));
      let x_3004 : vec3<f32> = vs_TEXCOORD7;
      let x_3006 : i32 = u_xlati82;
      let x_3009 : i32 = u_xlati82;
      let x_3013 : vec4<f32> = x_845.x_AdditionalLightsWorldToShadow[((x_3006 + 1i) / 4i)][((x_3009 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_3004.y, x_3004.y, x_3004.y, x_3004.y) * x_3013);
      let x_3015 : i32 = u_xlati82;
      let x_3017 : i32 = u_xlati82;
      let x_3020 : vec4<f32> = x_845.x_AdditionalLightsWorldToShadow[(x_3015 / 4i)][(x_3017 % 4i)];
      let x_3021 : vec3<f32> = vs_TEXCOORD7;
      let x_3024 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_3020 * vec4<f32>(x_3021.x, x_3021.x, x_3021.x, x_3021.x)) + x_3024);
      let x_3026 : i32 = u_xlati82;
      let x_3029 : i32 = u_xlati82;
      let x_3033 : vec4<f32> = x_845.x_AdditionalLightsWorldToShadow[((x_3026 + 2i) / 4i)][((x_3029 + 2i) % 4i)];
      let x_3034 : vec3<f32> = vs_TEXCOORD7;
      let x_3037 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_3033 * vec4<f32>(x_3034.z, x_3034.z, x_3034.z, x_3034.z)) + x_3037);
      let x_3039 : vec4<f32> = u_xlat10;
      let x_3040 : i32 = u_xlati82;
      let x_3043 : i32 = u_xlati82;
      let x_3047 : vec4<f32> = x_845.x_AdditionalLightsWorldToShadow[((x_3040 + 3i) / 4i)][((x_3043 + 3i) % 4i)];
      u_xlat10 = (x_3039 + x_3047);
      let x_3049 : vec4<f32> = u_xlat10;
      let x_3051 : vec4<f32> = u_xlat10;
      let x_3053 : vec3<f32> = (vec3<f32>(x_3049.x, x_3049.y, x_3049.z) / vec3<f32>(x_3051.w, x_3051.w, x_3051.w));
      let x_3054 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_3053.x, x_3053.y, x_3053.z, x_3054.w);
      let x_3057 : i32 = u_xlati79;
      let x_3059 : f32 = x_845.x_AdditionalShadowParams[x_3057].y;
      u_xlatb82 = (0.0f < x_3059);
      let x_3061 : bool = u_xlatb82;
      if (x_3061) {
        let x_3064 : i32 = u_xlati79;
        let x_3066 : f32 = x_845.x_AdditionalShadowParams[x_3064].y;
        u_xlatb82 = (1.0f == x_3066);
        let x_3068 : bool = u_xlatb82;
        if (x_3068) {
          let x_3071 : vec4<f32> = u_xlat10;
          let x_3074 : vec4<f32> = x_845.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_3071.x, x_3071.y, x_3071.x, x_3071.y) + x_3074);
          let x_3077 : vec4<f32> = u_xlat11;
          let x_3078 : vec2<f32> = vec2<f32>(x_3077.x, x_3077.y);
          let x_3080 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_3078.x, x_3078.y, x_3080);
          let x_3088 : vec3<f32> = txVec30;
          let x_3090 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3088.xy, x_3088.z);
          u_xlat12.x = x_3090;
          let x_3093 : vec4<f32> = u_xlat11;
          let x_3094 : vec2<f32> = vec2<f32>(x_3093.z, x_3093.w);
          let x_3096 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_3094.x, x_3094.y, x_3096);
          let x_3103 : vec3<f32> = txVec31;
          let x_3105 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3103.xy, x_3103.z);
          u_xlat12.y = x_3105;
          let x_3107 : vec4<f32> = u_xlat10;
          let x_3110 : vec4<f32> = x_845.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_3107.x, x_3107.y, x_3107.x, x_3107.y) + x_3110);
          let x_3113 : vec4<f32> = u_xlat11;
          let x_3114 : vec2<f32> = vec2<f32>(x_3113.x, x_3113.y);
          let x_3116 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_3114.x, x_3114.y, x_3116);
          let x_3123 : vec3<f32> = txVec32;
          let x_3125 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3123.xy, x_3123.z);
          u_xlat12.z = x_3125;
          let x_3128 : vec4<f32> = u_xlat11;
          let x_3129 : vec2<f32> = vec2<f32>(x_3128.z, x_3128.w);
          let x_3131 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_3129.x, x_3129.y, x_3131);
          let x_3138 : vec3<f32> = txVec33;
          let x_3140 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3138.xy, x_3138.z);
          u_xlat12.w = x_3140;
          let x_3142 : vec4<f32> = u_xlat12;
          u_xlat82 = dot(x_3142, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_3145 : i32 = u_xlati79;
          let x_3147 : f32 = x_845.x_AdditionalShadowParams[x_3145].y;
          u_xlatb84 = (2.0f == x_3147);
          let x_3149 : bool = u_xlatb84;
          if (x_3149) {
            let x_3152 : vec4<f32> = u_xlat10;
            let x_3155 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3158 : vec2<f32> = ((vec2<f32>(x_3152.x, x_3152.y) * vec2<f32>(x_3155.z, x_3155.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3159 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3158.x, x_3158.y, x_3159.z, x_3159.w);
            let x_3161 : vec4<f32> = u_xlat11;
            let x_3163 : vec2<f32> = floor(vec2<f32>(x_3161.x, x_3161.y));
            let x_3164 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3163.x, x_3163.y, x_3164.z, x_3164.w);
            let x_3167 : vec4<f32> = u_xlat10;
            let x_3170 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3173 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3167.x, x_3167.y) * vec2<f32>(x_3170.z, x_3170.w)) + -(vec2<f32>(x_3173.x, x_3173.y)));
            let x_3177 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3177.x, x_3177.x, x_3177.y, x_3177.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3180 : vec4<f32> = u_xlat12;
            let x_3182 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3180.x, x_3180.x, x_3180.z, x_3180.z) * vec4<f32>(x_3182.x, x_3182.x, x_3182.z, x_3182.z));
            let x_3185 : vec4<f32> = u_xlat13;
            let x_3187 : vec2<f32> = (vec2<f32>(x_3185.y, x_3185.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_3188 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3187.x, x_3188.y, x_3187.y, x_3188.w);
            let x_3190 : vec4<f32> = u_xlat13;
            let x_3193 : vec2<f32> = u_xlat61;
            let x_3195 : vec2<f32> = ((vec2<f32>(x_3190.x, x_3190.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3193));
            let x_3196 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3195.x, x_3195.y, x_3196.z, x_3196.w);
            let x_3199 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_3199) + vec2<f32>(1.0f, 1.0f));
            let x_3202 : vec2<f32> = u_xlat61;
            let x_3203 : vec2<f32> = min(x_3202, vec2<f32>(0.0f, 0.0f));
            let x_3204 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3203.x, x_3203.y, x_3204.z, x_3204.w);
            let x_3206 : vec4<f32> = u_xlat14;
            let x_3209 : vec4<f32> = u_xlat14;
            let x_3212 : vec2<f32> = u_xlat63;
            let x_3213 : vec2<f32> = ((-(vec2<f32>(x_3206.x, x_3206.y)) * vec2<f32>(x_3209.x, x_3209.y)) + x_3212);
            let x_3214 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3213.x, x_3213.y, x_3214.z, x_3214.w);
            let x_3216 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_3216, vec2<f32>(0.0f, 0.0f));
            let x_3218 : vec2<f32> = u_xlat61;
            let x_3220 : vec2<f32> = u_xlat61;
            let x_3222 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_3218) * x_3220) + vec2<f32>(x_3222.y, x_3222.w));
            let x_3225 : vec4<f32> = u_xlat14;
            let x_3227 : vec2<f32> = (vec2<f32>(x_3225.x, x_3225.y) + vec2<f32>(1.0f, 1.0f));
            let x_3228 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3227.x, x_3227.y, x_3228.z, x_3228.w);
            let x_3230 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_3230 + vec2<f32>(1.0f, 1.0f));
            let x_3232 : vec4<f32> = u_xlat13;
            let x_3234 : vec2<f32> = (vec2<f32>(x_3232.x, x_3232.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3235 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3234.x, x_3234.y, x_3235.z, x_3235.w);
            let x_3237 : vec2<f32> = u_xlat63;
            let x_3238 : vec2<f32> = (x_3237 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3239 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3238.x, x_3238.y, x_3239.z, x_3239.w);
            let x_3241 : vec4<f32> = u_xlat14;
            let x_3243 : vec2<f32> = (vec2<f32>(x_3241.x, x_3241.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3244 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3243.x, x_3243.y, x_3244.z, x_3244.w);
            let x_3246 : vec2<f32> = u_xlat61;
            let x_3247 : vec2<f32> = (x_3246 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3248 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3247.x, x_3247.y, x_3248.z, x_3248.w);
            let x_3250 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_3250.y, x_3250.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3254 : f32 = u_xlat14.x;
            u_xlat15.z = x_3254;
            let x_3257 : f32 = u_xlat61.x;
            u_xlat15.w = x_3257;
            let x_3260 : f32 = u_xlat16.x;
            u_xlat13.z = x_3260;
            let x_3263 : f32 = u_xlat12.x;
            u_xlat13.w = x_3263;
            let x_3265 : vec4<f32> = u_xlat13;
            let x_3267 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_3265.z, x_3265.w, x_3265.x, x_3265.z) + vec4<f32>(x_3267.z, x_3267.w, x_3267.x, x_3267.z));
            let x_3271 : f32 = u_xlat15.y;
            u_xlat14.z = x_3271;
            let x_3274 : f32 = u_xlat61.y;
            u_xlat14.w = x_3274;
            let x_3277 : f32 = u_xlat13.y;
            u_xlat16.z = x_3277;
            let x_3280 : f32 = u_xlat12.z;
            u_xlat16.w = x_3280;
            let x_3282 : vec4<f32> = u_xlat14;
            let x_3284 : vec4<f32> = u_xlat16;
            let x_3286 : vec3<f32> = (vec3<f32>(x_3282.z, x_3282.y, x_3282.w) + vec3<f32>(x_3284.z, x_3284.y, x_3284.w));
            let x_3287 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3286.x, x_3286.y, x_3286.z, x_3287.w);
            let x_3289 : vec4<f32> = u_xlat13;
            let x_3291 : vec4<f32> = u_xlat17;
            let x_3293 : vec3<f32> = (vec3<f32>(x_3289.x, x_3289.z, x_3289.w) / vec3<f32>(x_3291.z, x_3291.w, x_3291.y));
            let x_3294 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3293.x, x_3293.y, x_3293.z, x_3294.w);
            let x_3296 : vec4<f32> = u_xlat13;
            let x_3298 : vec3<f32> = (vec3<f32>(x_3296.x, x_3296.y, x_3296.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3299 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3298.x, x_3298.y, x_3298.z, x_3299.w);
            let x_3301 : vec4<f32> = u_xlat16;
            let x_3303 : vec4<f32> = u_xlat12;
            let x_3305 : vec3<f32> = (vec3<f32>(x_3301.z, x_3301.y, x_3301.w) / vec3<f32>(x_3303.x, x_3303.y, x_3303.z));
            let x_3306 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3305.x, x_3305.y, x_3305.z, x_3306.w);
            let x_3308 : vec4<f32> = u_xlat14;
            let x_3310 : vec3<f32> = (vec3<f32>(x_3308.x, x_3308.y, x_3308.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3311 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3310.x, x_3310.y, x_3310.z, x_3311.w);
            let x_3313 : vec4<f32> = u_xlat13;
            let x_3316 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3318 : vec3<f32> = (vec3<f32>(x_3313.y, x_3313.x, x_3313.z) * vec3<f32>(x_3316.x, x_3316.x, x_3316.x));
            let x_3319 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3318.x, x_3318.y, x_3318.z, x_3319.w);
            let x_3321 : vec4<f32> = u_xlat14;
            let x_3324 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3326 : vec3<f32> = (vec3<f32>(x_3321.x, x_3321.y, x_3321.z) * vec3<f32>(x_3324.y, x_3324.y, x_3324.y));
            let x_3327 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3326.x, x_3326.y, x_3326.z, x_3327.w);
            let x_3330 : f32 = u_xlat14.x;
            u_xlat13.w = x_3330;
            let x_3332 : vec4<f32> = u_xlat11;
            let x_3335 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3338 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_3332.x, x_3332.y, x_3332.x, x_3332.y) * vec4<f32>(x_3335.x, x_3335.y, x_3335.x, x_3335.y)) + vec4<f32>(x_3338.y, x_3338.w, x_3338.x, x_3338.w));
            let x_3341 : vec4<f32> = u_xlat11;
            let x_3344 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3347 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_3341.x, x_3341.y) * vec2<f32>(x_3344.x, x_3344.y)) + vec2<f32>(x_3347.z, x_3347.w));
            let x_3351 : f32 = u_xlat13.y;
            u_xlat14.w = x_3351;
            let x_3353 : vec4<f32> = u_xlat14;
            let x_3354 : vec2<f32> = vec2<f32>(x_3353.y, x_3353.z);
            let x_3355 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3355.x, x_3354.x, x_3355.z, x_3354.y);
            let x_3357 : vec4<f32> = u_xlat11;
            let x_3360 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3363 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_3357.x, x_3357.y, x_3357.x, x_3357.y) * vec4<f32>(x_3360.x, x_3360.y, x_3360.x, x_3360.y)) + vec4<f32>(x_3363.x, x_3363.y, x_3363.z, x_3363.y));
            let x_3366 : vec4<f32> = u_xlat11;
            let x_3369 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3372 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3366.x, x_3366.y, x_3366.x, x_3366.y) * vec4<f32>(x_3369.x, x_3369.y, x_3369.x, x_3369.y)) + vec4<f32>(x_3372.w, x_3372.y, x_3372.w, x_3372.z));
            let x_3375 : vec4<f32> = u_xlat11;
            let x_3378 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3381 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_3375.x, x_3375.y, x_3375.x, x_3375.y) * vec4<f32>(x_3378.x, x_3378.y, x_3378.x, x_3378.y)) + vec4<f32>(x_3381.x, x_3381.w, x_3381.z, x_3381.w));
            let x_3384 : vec4<f32> = u_xlat12;
            let x_3386 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_3384.x, x_3384.x, x_3384.x, x_3384.y) * vec4<f32>(x_3386.z, x_3386.w, x_3386.y, x_3386.z));
            let x_3389 : vec4<f32> = u_xlat12;
            let x_3391 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_3389.y, x_3389.y, x_3389.z, x_3389.z) * x_3391);
            let x_3394 : f32 = u_xlat12.z;
            let x_3396 : f32 = u_xlat17.y;
            u_xlat84 = (x_3394 * x_3396);
            let x_3399 : vec4<f32> = u_xlat15;
            let x_3400 : vec2<f32> = vec2<f32>(x_3399.x, x_3399.y);
            let x_3402 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_3400.x, x_3400.y, x_3402);
            let x_3409 : vec3<f32> = txVec34;
            let x_3411 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3409.xy, x_3409.z);
            u_xlat85 = x_3411;
            let x_3413 : vec4<f32> = u_xlat15;
            let x_3414 : vec2<f32> = vec2<f32>(x_3413.z, x_3413.w);
            let x_3416 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_3414.x, x_3414.y, x_3416);
            let x_3423 : vec3<f32> = txVec35;
            let x_3425 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3423.xy, x_3423.z);
            u_xlat11.x = x_3425;
            let x_3428 : f32 = u_xlat11.x;
            let x_3430 : f32 = u_xlat18.y;
            u_xlat11.x = (x_3428 * x_3430);
            let x_3434 : f32 = u_xlat18.x;
            let x_3435 : f32 = u_xlat85;
            let x_3438 : f32 = u_xlat11.x;
            u_xlat85 = ((x_3434 * x_3435) + x_3438);
            let x_3441 : vec2<f32> = u_xlat61;
            let x_3443 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_3441.x, x_3441.y, x_3443);
            let x_3450 : vec3<f32> = txVec36;
            let x_3452 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3450.xy, x_3450.z);
            u_xlat11.x = x_3452;
            let x_3455 : f32 = u_xlat18.z;
            let x_3457 : f32 = u_xlat11.x;
            let x_3459 : f32 = u_xlat85;
            u_xlat85 = ((x_3455 * x_3457) + x_3459);
            let x_3462 : vec4<f32> = u_xlat14;
            let x_3463 : vec2<f32> = vec2<f32>(x_3462.x, x_3462.y);
            let x_3465 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_3463.x, x_3463.y, x_3465);
            let x_3472 : vec3<f32> = txVec37;
            let x_3474 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3472.xy, x_3472.z);
            u_xlat11.x = x_3474;
            let x_3477 : f32 = u_xlat18.w;
            let x_3479 : f32 = u_xlat11.x;
            let x_3481 : f32 = u_xlat85;
            u_xlat85 = ((x_3477 * x_3479) + x_3481);
            let x_3484 : vec4<f32> = u_xlat16;
            let x_3485 : vec2<f32> = vec2<f32>(x_3484.x, x_3484.y);
            let x_3487 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_3485.x, x_3485.y, x_3487);
            let x_3494 : vec3<f32> = txVec38;
            let x_3496 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3494.xy, x_3494.z);
            u_xlat11.x = x_3496;
            let x_3499 : f32 = u_xlat19.x;
            let x_3501 : f32 = u_xlat11.x;
            let x_3503 : f32 = u_xlat85;
            u_xlat85 = ((x_3499 * x_3501) + x_3503);
            let x_3506 : vec4<f32> = u_xlat16;
            let x_3507 : vec2<f32> = vec2<f32>(x_3506.z, x_3506.w);
            let x_3509 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_3507.x, x_3507.y, x_3509);
            let x_3516 : vec3<f32> = txVec39;
            let x_3518 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3516.xy, x_3516.z);
            u_xlat11.x = x_3518;
            let x_3521 : f32 = u_xlat19.y;
            let x_3523 : f32 = u_xlat11.x;
            let x_3525 : f32 = u_xlat85;
            u_xlat85 = ((x_3521 * x_3523) + x_3525);
            let x_3528 : vec4<f32> = u_xlat14;
            let x_3529 : vec2<f32> = vec2<f32>(x_3528.z, x_3528.w);
            let x_3531 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_3529.x, x_3529.y, x_3531);
            let x_3538 : vec3<f32> = txVec40;
            let x_3540 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3538.xy, x_3538.z);
            u_xlat11.x = x_3540;
            let x_3543 : f32 = u_xlat19.z;
            let x_3545 : f32 = u_xlat11.x;
            let x_3547 : f32 = u_xlat85;
            u_xlat85 = ((x_3543 * x_3545) + x_3547);
            let x_3550 : vec4<f32> = u_xlat13;
            let x_3551 : vec2<f32> = vec2<f32>(x_3550.x, x_3550.y);
            let x_3553 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_3551.x, x_3551.y, x_3553);
            let x_3560 : vec3<f32> = txVec41;
            let x_3562 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3560.xy, x_3560.z);
            u_xlat11.x = x_3562;
            let x_3565 : f32 = u_xlat19.w;
            let x_3567 : f32 = u_xlat11.x;
            let x_3569 : f32 = u_xlat85;
            u_xlat85 = ((x_3565 * x_3567) + x_3569);
            let x_3572 : vec4<f32> = u_xlat13;
            let x_3573 : vec2<f32> = vec2<f32>(x_3572.z, x_3572.w);
            let x_3575 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_3573.x, x_3573.y, x_3575);
            let x_3582 : vec3<f32> = txVec42;
            let x_3584 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3582.xy, x_3582.z);
            u_xlat11.x = x_3584;
            let x_3586 : f32 = u_xlat84;
            let x_3588 : f32 = u_xlat11.x;
            let x_3590 : f32 = u_xlat85;
            u_xlat82 = ((x_3586 * x_3588) + x_3590);
          } else {
            let x_3593 : vec4<f32> = u_xlat10;
            let x_3596 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3599 : vec2<f32> = ((vec2<f32>(x_3593.x, x_3593.y) * vec2<f32>(x_3596.z, x_3596.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3600 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3599.x, x_3599.y, x_3600.z, x_3600.w);
            let x_3602 : vec4<f32> = u_xlat11;
            let x_3604 : vec2<f32> = floor(vec2<f32>(x_3602.x, x_3602.y));
            let x_3605 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3604.x, x_3604.y, x_3605.z, x_3605.w);
            let x_3607 : vec4<f32> = u_xlat10;
            let x_3610 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3613 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3607.x, x_3607.y) * vec2<f32>(x_3610.z, x_3610.w)) + -(vec2<f32>(x_3613.x, x_3613.y)));
            let x_3617 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3617.x, x_3617.x, x_3617.y, x_3617.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3620 : vec4<f32> = u_xlat12;
            let x_3622 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3620.x, x_3620.x, x_3620.z, x_3620.z) * vec4<f32>(x_3622.x, x_3622.x, x_3622.z, x_3622.z));
            let x_3625 : vec4<f32> = u_xlat13;
            let x_3627 : vec2<f32> = (vec2<f32>(x_3625.y, x_3625.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3628 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3628.x, x_3627.x, x_3628.z, x_3627.y);
            let x_3630 : vec4<f32> = u_xlat13;
            let x_3633 : vec2<f32> = u_xlat61;
            let x_3635 : vec2<f32> = ((vec2<f32>(x_3630.x, x_3630.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3633));
            let x_3636 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3635.x, x_3636.y, x_3635.y, x_3636.w);
            let x_3638 : vec2<f32> = u_xlat61;
            let x_3640 : vec2<f32> = (-(x_3638) + vec2<f32>(1.0f, 1.0f));
            let x_3641 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3640.x, x_3640.y, x_3641.z, x_3641.w);
            let x_3643 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_3643, vec2<f32>(0.0f, 0.0f));
            let x_3645 : vec2<f32> = u_xlat63;
            let x_3647 : vec2<f32> = u_xlat63;
            let x_3649 : vec4<f32> = u_xlat13;
            let x_3651 : vec2<f32> = ((-(x_3645) * x_3647) + vec2<f32>(x_3649.x, x_3649.y));
            let x_3652 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3651.x, x_3651.y, x_3652.z, x_3652.w);
            let x_3654 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_3654, vec2<f32>(0.0f, 0.0f));
            let x_3657 : vec2<f32> = u_xlat63;
            let x_3659 : vec2<f32> = u_xlat63;
            let x_3661 : vec4<f32> = u_xlat12;
            let x_3663 : vec2<f32> = ((-(x_3657) * x_3659) + vec2<f32>(x_3661.y, x_3661.w));
            let x_3664 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_3663.x, x_3664.y, x_3663.y);
            let x_3666 : vec4<f32> = u_xlat13;
            let x_3668 : vec2<f32> = (vec2<f32>(x_3666.x, x_3666.y) + vec2<f32>(2.0f, 2.0f));
            let x_3669 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3668.x, x_3668.y, x_3669.z, x_3669.w);
            let x_3671 : vec3<f32> = u_xlat37;
            let x_3673 : vec2<f32> = (vec2<f32>(x_3671.x, x_3671.z) + vec2<f32>(2.0f, 2.0f));
            let x_3674 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3674.x, x_3673.x, x_3674.z, x_3673.y);
            let x_3677 : f32 = u_xlat12.y;
            u_xlat15.z = (x_3677 * 0.08163200318813323975f);
            let x_3680 : vec4<f32> = u_xlat12;
            let x_3682 : vec3<f32> = (vec3<f32>(x_3680.z, x_3680.x, x_3680.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3683 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3682.x, x_3682.y, x_3682.z, x_3683.w);
            let x_3685 : vec4<f32> = u_xlat13;
            let x_3687 : vec2<f32> = (vec2<f32>(x_3685.x, x_3685.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3688 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3687.x, x_3687.y, x_3688.z, x_3688.w);
            let x_3691 : f32 = u_xlat16.y;
            u_xlat15.x = x_3691;
            let x_3693 : vec2<f32> = u_xlat61;
            let x_3696 : vec2<f32> = ((vec2<f32>(x_3693.x, x_3693.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3697 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3697.x, x_3696.x, x_3697.z, x_3696.y);
            let x_3699 : vec2<f32> = u_xlat61;
            let x_3702 : vec2<f32> = ((vec2<f32>(x_3699.x, x_3699.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3703 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3702.x, x_3703.y, x_3702.y, x_3703.w);
            let x_3706 : f32 = u_xlat12.x;
            u_xlat13.y = x_3706;
            let x_3709 : f32 = u_xlat14.y;
            u_xlat13.w = x_3709;
            let x_3711 : vec4<f32> = u_xlat13;
            let x_3712 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3711 + x_3712);
            let x_3714 : vec2<f32> = u_xlat61;
            let x_3717 : vec2<f32> = ((vec2<f32>(x_3714.y, x_3714.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3718 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3718.x, x_3717.x, x_3718.z, x_3717.y);
            let x_3720 : vec2<f32> = u_xlat61;
            let x_3723 : vec2<f32> = ((vec2<f32>(x_3720.y, x_3720.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3724 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3723.x, x_3724.y, x_3723.y, x_3724.w);
            let x_3727 : f32 = u_xlat12.y;
            u_xlat14.y = x_3727;
            let x_3729 : vec4<f32> = u_xlat14;
            let x_3730 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_3729 + x_3730);
            let x_3732 : vec4<f32> = u_xlat13;
            let x_3733 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_3732 / x_3733);
            let x_3735 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3735 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3737 : vec4<f32> = u_xlat14;
            let x_3738 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_3737 / x_3738);
            let x_3740 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3740 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3742 : vec4<f32> = u_xlat13;
            let x_3745 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3742.w, x_3742.x, x_3742.y, x_3742.z) * vec4<f32>(x_3745.x, x_3745.x, x_3745.x, x_3745.x));
            let x_3748 : vec4<f32> = u_xlat14;
            let x_3751 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3748.x, x_3748.w, x_3748.y, x_3748.z) * vec4<f32>(x_3751.y, x_3751.y, x_3751.y, x_3751.y));
            let x_3754 : vec4<f32> = u_xlat13;
            let x_3755 : vec3<f32> = vec3<f32>(x_3754.y, x_3754.z, x_3754.w);
            let x_3756 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3755.x, x_3756.y, x_3755.y, x_3755.z);
            let x_3759 : f32 = u_xlat14.x;
            u_xlat16.y = x_3759;
            let x_3761 : vec4<f32> = u_xlat11;
            let x_3764 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3767 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3761.x, x_3761.y, x_3761.x, x_3761.y) * vec4<f32>(x_3764.x, x_3764.y, x_3764.x, x_3764.y)) + vec4<f32>(x_3767.x, x_3767.y, x_3767.z, x_3767.y));
            let x_3770 : vec4<f32> = u_xlat11;
            let x_3773 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3776 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_3770.x, x_3770.y) * vec2<f32>(x_3773.x, x_3773.y)) + vec2<f32>(x_3776.w, x_3776.y));
            let x_3780 : f32 = u_xlat16.y;
            u_xlat13.y = x_3780;
            let x_3783 : f32 = u_xlat14.z;
            u_xlat16.y = x_3783;
            let x_3785 : vec4<f32> = u_xlat11;
            let x_3788 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3791 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3785.x, x_3785.y, x_3785.x, x_3785.y) * vec4<f32>(x_3788.x, x_3788.y, x_3788.x, x_3788.y)) + vec4<f32>(x_3791.x, x_3791.y, x_3791.z, x_3791.y));
            let x_3794 : vec4<f32> = u_xlat11;
            let x_3797 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3800 : vec4<f32> = u_xlat16;
            let x_3802 : vec2<f32> = ((vec2<f32>(x_3794.x, x_3794.y) * vec2<f32>(x_3797.x, x_3797.y)) + vec2<f32>(x_3800.w, x_3800.y));
            let x_3803 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3802.x, x_3802.y, x_3803.z, x_3803.w);
            let x_3806 : f32 = u_xlat16.y;
            u_xlat13.z = x_3806;
            let x_3809 : vec4<f32> = u_xlat11;
            let x_3812 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3815 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3809.x, x_3809.y, x_3809.x, x_3809.y) * vec4<f32>(x_3812.x, x_3812.y, x_3812.x, x_3812.y)) + vec4<f32>(x_3815.x, x_3815.y, x_3815.x, x_3815.z));
            let x_3819 : f32 = u_xlat14.w;
            u_xlat16.y = x_3819;
            let x_3822 : vec4<f32> = u_xlat11;
            let x_3825 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3828 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3822.x, x_3822.y, x_3822.x, x_3822.y) * vec4<f32>(x_3825.x, x_3825.y, x_3825.x, x_3825.y)) + vec4<f32>(x_3828.x, x_3828.y, x_3828.z, x_3828.y));
            let x_3832 : vec4<f32> = u_xlat11;
            let x_3835 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3838 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3832.x, x_3832.y) * vec2<f32>(x_3835.x, x_3835.y)) + vec2<f32>(x_3838.w, x_3838.y));
            let x_3842 : f32 = u_xlat16.y;
            u_xlat13.w = x_3842;
            let x_3845 : vec4<f32> = u_xlat11;
            let x_3848 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3851 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3845.x, x_3845.y) * vec2<f32>(x_3848.x, x_3848.y)) + vec2<f32>(x_3851.x, x_3851.w));
            let x_3854 : vec4<f32> = u_xlat16;
            let x_3855 : vec3<f32> = vec3<f32>(x_3854.x, x_3854.z, x_3854.w);
            let x_3856 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3855.x, x_3856.y, x_3855.y, x_3855.z);
            let x_3858 : vec4<f32> = u_xlat11;
            let x_3861 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3864 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3858.x, x_3858.y, x_3858.x, x_3858.y) * vec4<f32>(x_3861.x, x_3861.y, x_3861.x, x_3861.y)) + vec4<f32>(x_3864.x, x_3864.y, x_3864.z, x_3864.y));
            let x_3867 : vec4<f32> = u_xlat11;
            let x_3870 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3873 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3867.x, x_3867.y) * vec2<f32>(x_3870.x, x_3870.y)) + vec2<f32>(x_3873.w, x_3873.y));
            let x_3877 : f32 = u_xlat13.x;
            u_xlat14.x = x_3877;
            let x_3879 : vec4<f32> = u_xlat11;
            let x_3882 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3885 : vec4<f32> = u_xlat14;
            let x_3887 : vec2<f32> = ((vec2<f32>(x_3879.x, x_3879.y) * vec2<f32>(x_3882.x, x_3882.y)) + vec2<f32>(x_3885.x, x_3885.y));
            let x_3888 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3887.x, x_3887.y, x_3888.z, x_3888.w);
            let x_3891 : vec4<f32> = u_xlat12;
            let x_3893 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3891.x, x_3891.x, x_3891.x, x_3891.x) * x_3893);
            let x_3896 : vec4<f32> = u_xlat12;
            let x_3898 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3896.y, x_3896.y, x_3896.y, x_3896.y) * x_3898);
            let x_3901 : vec4<f32> = u_xlat12;
            let x_3903 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3901.z, x_3901.z, x_3901.z, x_3901.z) * x_3903);
            let x_3905 : vec4<f32> = u_xlat12;
            let x_3907 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3905.w, x_3905.w, x_3905.w, x_3905.w) * x_3907);
            let x_3910 : vec4<f32> = u_xlat17;
            let x_3911 : vec2<f32> = vec2<f32>(x_3910.x, x_3910.y);
            let x_3913 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3911.x, x_3911.y, x_3913);
            let x_3920 : vec3<f32> = txVec43;
            let x_3922 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3920.xy, x_3920.z);
            u_xlat84 = x_3922;
            let x_3924 : vec4<f32> = u_xlat17;
            let x_3925 : vec2<f32> = vec2<f32>(x_3924.z, x_3924.w);
            let x_3927 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3925.x, x_3925.y, x_3927);
            let x_3934 : vec3<f32> = txVec44;
            let x_3936 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3934.xy, x_3934.z);
            u_xlat85 = x_3936;
            let x_3937 : f32 = u_xlat85;
            let x_3939 : f32 = u_xlat22.y;
            u_xlat85 = (x_3937 * x_3939);
            let x_3942 : f32 = u_xlat22.x;
            let x_3943 : f32 = u_xlat84;
            let x_3945 : f32 = u_xlat85;
            u_xlat84 = ((x_3942 * x_3943) + x_3945);
            let x_3948 : vec2<f32> = u_xlat61;
            let x_3950 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3948.x, x_3948.y, x_3950);
            let x_3957 : vec3<f32> = txVec45;
            let x_3959 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3957.xy, x_3957.z);
            u_xlat85 = x_3959;
            let x_3961 : f32 = u_xlat22.z;
            let x_3962 : f32 = u_xlat85;
            let x_3964 : f32 = u_xlat84;
            u_xlat84 = ((x_3961 * x_3962) + x_3964);
            let x_3967 : vec4<f32> = u_xlat20;
            let x_3968 : vec2<f32> = vec2<f32>(x_3967.x, x_3967.y);
            let x_3970 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3968.x, x_3968.y, x_3970);
            let x_3977 : vec3<f32> = txVec46;
            let x_3979 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3977.xy, x_3977.z);
            u_xlat85 = x_3979;
            let x_3981 : f32 = u_xlat22.w;
            let x_3982 : f32 = u_xlat85;
            let x_3984 : f32 = u_xlat84;
            u_xlat84 = ((x_3981 * x_3982) + x_3984);
            let x_3987 : vec4<f32> = u_xlat18;
            let x_3988 : vec2<f32> = vec2<f32>(x_3987.x, x_3987.y);
            let x_3990 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3988.x, x_3988.y, x_3990);
            let x_3997 : vec3<f32> = txVec47;
            let x_3999 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3997.xy, x_3997.z);
            u_xlat85 = x_3999;
            let x_4001 : f32 = u_xlat23.x;
            let x_4002 : f32 = u_xlat85;
            let x_4004 : f32 = u_xlat84;
            u_xlat84 = ((x_4001 * x_4002) + x_4004);
            let x_4007 : vec4<f32> = u_xlat18;
            let x_4008 : vec2<f32> = vec2<f32>(x_4007.z, x_4007.w);
            let x_4010 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_4008.x, x_4008.y, x_4010);
            let x_4017 : vec3<f32> = txVec48;
            let x_4019 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4017.xy, x_4017.z);
            u_xlat85 = x_4019;
            let x_4021 : f32 = u_xlat23.y;
            let x_4022 : f32 = u_xlat85;
            let x_4024 : f32 = u_xlat84;
            u_xlat84 = ((x_4021 * x_4022) + x_4024);
            let x_4027 : vec4<f32> = u_xlat19;
            let x_4028 : vec2<f32> = vec2<f32>(x_4027.x, x_4027.y);
            let x_4030 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_4028.x, x_4028.y, x_4030);
            let x_4037 : vec3<f32> = txVec49;
            let x_4039 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4037.xy, x_4037.z);
            u_xlat85 = x_4039;
            let x_4041 : f32 = u_xlat23.z;
            let x_4042 : f32 = u_xlat85;
            let x_4044 : f32 = u_xlat84;
            u_xlat84 = ((x_4041 * x_4042) + x_4044);
            let x_4047 : vec4<f32> = u_xlat20;
            let x_4048 : vec2<f32> = vec2<f32>(x_4047.z, x_4047.w);
            let x_4050 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_4048.x, x_4048.y, x_4050);
            let x_4057 : vec3<f32> = txVec50;
            let x_4059 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4057.xy, x_4057.z);
            u_xlat85 = x_4059;
            let x_4061 : f32 = u_xlat23.w;
            let x_4062 : f32 = u_xlat85;
            let x_4064 : f32 = u_xlat84;
            u_xlat84 = ((x_4061 * x_4062) + x_4064);
            let x_4067 : vec4<f32> = u_xlat21;
            let x_4068 : vec2<f32> = vec2<f32>(x_4067.x, x_4067.y);
            let x_4070 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_4068.x, x_4068.y, x_4070);
            let x_4077 : vec3<f32> = txVec51;
            let x_4079 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4077.xy, x_4077.z);
            u_xlat85 = x_4079;
            let x_4081 : f32 = u_xlat24.x;
            let x_4082 : f32 = u_xlat85;
            let x_4084 : f32 = u_xlat84;
            u_xlat84 = ((x_4081 * x_4082) + x_4084);
            let x_4087 : vec4<f32> = u_xlat21;
            let x_4088 : vec2<f32> = vec2<f32>(x_4087.z, x_4087.w);
            let x_4090 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_4088.x, x_4088.y, x_4090);
            let x_4097 : vec3<f32> = txVec52;
            let x_4099 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4097.xy, x_4097.z);
            u_xlat85 = x_4099;
            let x_4101 : f32 = u_xlat24.y;
            let x_4102 : f32 = u_xlat85;
            let x_4104 : f32 = u_xlat84;
            u_xlat84 = ((x_4101 * x_4102) + x_4104);
            let x_4107 : vec2<f32> = u_xlat38;
            let x_4109 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_4107.x, x_4107.y, x_4109);
            let x_4116 : vec3<f32> = txVec53;
            let x_4118 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4116.xy, x_4116.z);
            u_xlat85 = x_4118;
            let x_4120 : f32 = u_xlat24.z;
            let x_4121 : f32 = u_xlat85;
            let x_4123 : f32 = u_xlat84;
            u_xlat84 = ((x_4120 * x_4121) + x_4123);
            let x_4126 : vec2<f32> = u_xlat69;
            let x_4128 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_4126.x, x_4126.y, x_4128);
            let x_4135 : vec3<f32> = txVec54;
            let x_4137 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4135.xy, x_4135.z);
            u_xlat85 = x_4137;
            let x_4139 : f32 = u_xlat24.w;
            let x_4140 : f32 = u_xlat85;
            let x_4142 : f32 = u_xlat84;
            u_xlat84 = ((x_4139 * x_4140) + x_4142);
            let x_4145 : vec4<f32> = u_xlat16;
            let x_4146 : vec2<f32> = vec2<f32>(x_4145.x, x_4145.y);
            let x_4148 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_4146.x, x_4146.y, x_4148);
            let x_4155 : vec3<f32> = txVec55;
            let x_4157 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4155.xy, x_4155.z);
            u_xlat85 = x_4157;
            let x_4159 : f32 = u_xlat12.x;
            let x_4160 : f32 = u_xlat85;
            let x_4162 : f32 = u_xlat84;
            u_xlat84 = ((x_4159 * x_4160) + x_4162);
            let x_4165 : vec4<f32> = u_xlat16;
            let x_4166 : vec2<f32> = vec2<f32>(x_4165.z, x_4165.w);
            let x_4168 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_4166.x, x_4166.y, x_4168);
            let x_4175 : vec3<f32> = txVec56;
            let x_4177 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4175.xy, x_4175.z);
            u_xlat85 = x_4177;
            let x_4179 : f32 = u_xlat12.y;
            let x_4180 : f32 = u_xlat85;
            let x_4182 : f32 = u_xlat84;
            u_xlat84 = ((x_4179 * x_4180) + x_4182);
            let x_4185 : vec2<f32> = u_xlat64;
            let x_4187 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_4185.x, x_4185.y, x_4187);
            let x_4194 : vec3<f32> = txVec57;
            let x_4196 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4194.xy, x_4194.z);
            u_xlat85 = x_4196;
            let x_4198 : f32 = u_xlat12.z;
            let x_4199 : f32 = u_xlat85;
            let x_4201 : f32 = u_xlat84;
            u_xlat84 = ((x_4198 * x_4199) + x_4201);
            let x_4204 : vec4<f32> = u_xlat11;
            let x_4205 : vec2<f32> = vec2<f32>(x_4204.x, x_4204.y);
            let x_4207 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_4205.x, x_4205.y, x_4207);
            let x_4214 : vec3<f32> = txVec58;
            let x_4216 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4214.xy, x_4214.z);
            u_xlat85 = x_4216;
            let x_4218 : f32 = u_xlat12.w;
            let x_4219 : f32 = u_xlat85;
            let x_4221 : f32 = u_xlat84;
            u_xlat82 = ((x_4218 * x_4219) + x_4221);
          }
        }
      } else {
        let x_4225 : vec4<f32> = u_xlat10;
        let x_4226 : vec2<f32> = vec2<f32>(x_4225.x, x_4225.y);
        let x_4228 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_4226.x, x_4226.y, x_4228);
        let x_4235 : vec3<f32> = txVec59;
        let x_4237 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4235.xy, x_4235.z);
        u_xlat82 = x_4237;
      }
      let x_4238 : i32 = u_xlati79;
      let x_4240 : f32 = x_845.x_AdditionalShadowParams[x_4238].x;
      u_xlat84 = (1.0f + -(x_4240));
      let x_4243 : f32 = u_xlat82;
      let x_4244 : i32 = u_xlati79;
      let x_4246 : f32 = x_845.x_AdditionalShadowParams[x_4244].x;
      let x_4248 : f32 = u_xlat84;
      u_xlat82 = ((x_4243 * x_4246) + x_4248);
      let x_4251 : f32 = u_xlat10.z;
      u_xlatb84 = (0.0f >= x_4251);
      let x_4254 : f32 = u_xlat10.z;
      u_xlatb10.x = (x_4254 >= 1.0f);
      let x_4257 : bool = u_xlatb84;
      let x_4259 : bool = u_xlatb10.x;
      u_xlatb84 = (x_4257 | x_4259);
      let x_4261 : bool = u_xlatb84;
      let x_4262 : f32 = u_xlat82;
      u_xlat82 = select(x_4262, 1.0f, x_4261);
    } else {
      u_xlat82 = 1.0f;
    }
    let x_4265 : f32 = u_xlat82;
    u_xlat84 = (-(x_4265) + 1.0f);
    let x_4268 : f32 = u_xlat50;
    let x_4269 : f32 = u_xlat84;
    let x_4271 : f32 = u_xlat82;
    u_xlat82 = ((x_4268 * x_4269) + x_4271);
    let x_4273 : f32 = u_xlat80;
    let x_4274 : f32 = u_xlat82;
    u_xlat80 = (x_4273 * x_4274);
    let x_4276 : vec4<f32> = u_xlat1;
    let x_4278 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_4276.x, x_4276.y, x_4276.z), vec3<f32>(x_4278.x, x_4278.y, x_4278.z));
    let x_4281 : f32 = u_xlat82;
    u_xlat82 = clamp(x_4281, 0.0f, 1.0f);
    let x_4283 : f32 = u_xlat80;
    let x_4284 : f32 = u_xlat82;
    u_xlat80 = (x_4283 * x_4284);
    let x_4286 : f32 = u_xlat80;
    let x_4288 : i32 = u_xlati79;
    let x_4290 : vec4<f32> = x_2842.x_AdditionalLightsColor[x_4288];
    let x_4292 : vec3<f32> = (vec3<f32>(x_4286, x_4286, x_4286) * vec3<f32>(x_4290.x, x_4290.y, x_4290.z));
    let x_4293 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_4292.x, x_4292.y, x_4292.z, x_4293.w);
    let x_4295 : vec3<f32> = u_xlat33;
    let x_4296 : f32 = u_xlat81;
    let x_4299 : vec4<f32> = u_xlat6;
    u_xlat33 = ((x_4295 * vec3<f32>(x_4296, x_4296, x_4296)) + vec3<f32>(x_4299.x, x_4299.y, x_4299.z));
    let x_4302 : vec3<f32> = u_xlat33;
    let x_4303 : vec3<f32> = u_xlat33;
    u_xlat79 = dot(x_4302, x_4303);
    let x_4305 : f32 = u_xlat79;
    u_xlat79 = max(x_4305, 1.17549435e-38f);
    let x_4307 : f32 = u_xlat79;
    u_xlat79 = inverseSqrt(x_4307);
    let x_4309 : f32 = u_xlat79;
    let x_4311 : vec3<f32> = u_xlat33;
    u_xlat33 = (vec3<f32>(x_4309, x_4309, x_4309) * x_4311);
    let x_4313 : vec4<f32> = u_xlat1;
    let x_4315 : vec3<f32> = u_xlat33;
    u_xlat79 = dot(vec3<f32>(x_4313.x, x_4313.y, x_4313.z), x_4315);
    let x_4317 : f32 = u_xlat79;
    u_xlat79 = clamp(x_4317, 0.0f, 1.0f);
    let x_4319 : vec4<f32> = u_xlat9;
    let x_4321 : vec3<f32> = u_xlat33;
    u_xlat80 = dot(vec3<f32>(x_4319.x, x_4319.y, x_4319.z), x_4321);
    let x_4323 : f32 = u_xlat80;
    u_xlat80 = clamp(x_4323, 0.0f, 1.0f);
    let x_4325 : f32 = u_xlat79;
    let x_4326 : f32 = u_xlat79;
    u_xlat79 = (x_4325 * x_4326);
    let x_4328 : f32 = u_xlat79;
    let x_4330 : f32 = u_xlat8.x;
    u_xlat79 = ((x_4328 * x_4330) + 1.00001001358032226562f);
    let x_4333 : f32 = u_xlat80;
    let x_4334 : f32 = u_xlat80;
    u_xlat80 = (x_4333 * x_4334);
    let x_4336 : f32 = u_xlat79;
    let x_4337 : f32 = u_xlat79;
    u_xlat79 = (x_4336 * x_4337);
    let x_4339 : f32 = u_xlat80;
    u_xlat80 = max(x_4339, 0.10000000149011611938f);
    let x_4341 : f32 = u_xlat79;
    let x_4342 : f32 = u_xlat80;
    u_xlat79 = (x_4341 * x_4342);
    let x_4344 : f32 = u_xlat77;
    let x_4345 : f32 = u_xlat79;
    u_xlat79 = (x_4344 * x_4345);
    let x_4347 : f32 = u_xlat78;
    let x_4348 : f32 = u_xlat79;
    u_xlat79 = (x_4347 / x_4348);
    let x_4350 : vec4<f32> = u_xlat5;
    let x_4352 : f32 = u_xlat79;
    let x_4355 : vec4<f32> = u_xlat4;
    u_xlat33 = ((vec3<f32>(x_4350.x, x_4350.y, x_4350.z) * vec3<f32>(x_4352, x_4352, x_4352)) + vec3<f32>(x_4355.x, x_4355.y, x_4355.z));
    let x_4358 : vec3<f32> = u_xlat33;
    let x_4359 : vec4<f32> = u_xlat10;
    let x_4362 : vec4<f32> = u_xlat2;
    let x_4364 : vec3<f32> = ((x_4358 * vec3<f32>(x_4359.x, x_4359.y, x_4359.z)) + vec3<f32>(x_4362.x, x_4362.y, x_4362.z));
    let x_4365 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_4364.x, x_4364.y, x_4364.z, x_4365.w);

    continuing {
      let x_4367 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4367 + bitcast<u32>(1i));
    }
  }
  let x_4369 : vec4<f32> = u_xlat3;
  let x_4371 : f32 = u_xlat25;
  let x_4374 : vec4<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_4369.x, x_4369.y, x_4369.z) * vec3<f32>(x_4371, x_4371, x_4371)) + vec3<f32>(x_4374.x, x_4374.y, x_4374.z));
  let x_4377 : vec4<f32> = u_xlat2;
  let x_4379 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4377.x, x_4377.y, x_4377.z) + x_4379);
  let x_4383 : f32 = u_xlat75;
  let x_4385 : vec3<f32> = u_xlat0;
  let x_4386 : vec3<f32> = (vec3<f32>(x_4383, x_4383, x_4383) * x_4385);
  let x_4387 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4386.x, x_4386.y, x_4386.z, x_4387.w);
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


