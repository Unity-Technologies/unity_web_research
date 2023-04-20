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

@group(0) @binding(3) var x_Control : texture_2d<f32>;

@group(0) @binding(16) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_112 : PGlobals;

var<private> u_xlat75 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(4) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(17) var sampler_Splat0 : sampler;

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

@group(0) @binding(18) var sampler_Normal0 : sampler;

@group(0) @binding(9) var x_Normal1 : texture_2d<f32>;

@group(0) @binding(10) var x_Normal2 : texture_2d<f32>;

@group(0) @binding(11) var x_Normal3 : texture_2d<f32>;

var<private> u_xlat50 : f32;

var<private> u_xlat25 : f32;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_845 : LightShadows;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlatu76 : u32;

var<private> u_xlati76 : i32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(15) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat77 : f32;

var<private> u_xlat78 : f32;

var<private> u_xlatb79 : bool;

@group(0) @binding(12) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(19) var sampler_LinearClampCompare : sampler_comparison;

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

@group(0) @binding(14) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2539 : UnityPerDraw;

var<private> u_xlatu50 : u32;

var<private> u_xlatu80 : u32;

var<private> u_xlati81 : i32;

var<private> u_xlati80 : i32;

@group(1) @binding(1) var<uniform> x_2816 : AdditionalLights;

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

@group(0) @binding(13) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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
  var x_2412 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2953 : f32;
  var x_2963 : f32;
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
  u_xlat76 = dot(x_949, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_953 : f32 = u_xlat76;
  u_xlat76 = (-(x_953) + 4.0f);
  let x_958 : f32 = u_xlat76;
  u_xlatu76 = u32(x_958);
  let x_962 : u32 = u_xlatu76;
  u_xlati76 = (bitcast<i32>(x_962) << bitcast<u32>(2i));
  let x_965 : vec3<f32> = vs_TEXCOORD7;
  let x_967 : i32 = u_xlati76;
  let x_970 : i32 = u_xlati76;
  let x_974 : vec4<f32> = x_845.x_MainLightWorldToShadow[((x_967 + 1i) / 4i)][((x_970 + 1i) % 4i)];
  let x_976 : vec3<f32> = (vec3<f32>(x_965.y, x_965.y, x_965.y) * vec3<f32>(x_974.x, x_974.y, x_974.z));
  let x_977 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_976.x, x_976.y, x_976.z, x_977.w);
  let x_979 : i32 = u_xlati76;
  let x_981 : i32 = u_xlati76;
  let x_984 : vec4<f32> = x_845.x_MainLightWorldToShadow[(x_979 / 4i)][(x_981 % 4i)];
  let x_986 : vec3<f32> = vs_TEXCOORD7;
  let x_989 : vec4<f32> = u_xlat2;
  let x_991 : vec3<f32> = ((vec3<f32>(x_984.x, x_984.y, x_984.z) * vec3<f32>(x_986.x, x_986.x, x_986.x)) + vec3<f32>(x_989.x, x_989.y, x_989.z));
  let x_992 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_991.x, x_991.y, x_991.z, x_992.w);
  let x_994 : i32 = u_xlati76;
  let x_997 : i32 = u_xlati76;
  let x_1001 : vec4<f32> = x_845.x_MainLightWorldToShadow[((x_994 + 2i) / 4i)][((x_997 + 2i) % 4i)];
  let x_1003 : vec3<f32> = vs_TEXCOORD7;
  let x_1006 : vec4<f32> = u_xlat2;
  let x_1008 : vec3<f32> = ((vec3<f32>(x_1001.x, x_1001.y, x_1001.z) * vec3<f32>(x_1003.z, x_1003.z, x_1003.z)) + vec3<f32>(x_1006.x, x_1006.y, x_1006.z));
  let x_1009 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1008.x, x_1008.y, x_1008.z, x_1009.w);
  let x_1011 : vec4<f32> = u_xlat2;
  let x_1013 : i32 = u_xlati76;
  let x_1016 : i32 = u_xlati76;
  let x_1020 : vec4<f32> = x_845.x_MainLightWorldToShadow[((x_1013 + 3i) / 4i)][((x_1016 + 3i) % 4i)];
  let x_1022 : vec3<f32> = (vec3<f32>(x_1011.x, x_1011.y, x_1011.z) + vec3<f32>(x_1020.x, x_1020.y, x_1020.z));
  let x_1023 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1022.x, x_1022.y, x_1022.z, x_1023.w);
  let x_1030 : vec4<f32> = vs_TEXCOORD0;
  let x_1033 : f32 = x_112.x_GlobalMipBias.x;
  let x_1034 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_1030.z, x_1030.w), x_1033);
  u_xlat3 = x_1034;
  let x_1039 : vec4<f32> = vs_TEXCOORD0;
  let x_1042 : f32 = x_112.x_GlobalMipBias.x;
  let x_1043 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_1039.z, x_1039.w), x_1042);
  let x_1044 : vec3<f32> = vec3<f32>(x_1043.x, x_1043.y, x_1043.z);
  let x_1045 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1044.x, x_1044.y, x_1044.z, x_1045.w);
  let x_1047 : vec4<f32> = u_xlat3;
  let x_1051 : vec3<f32> = (vec3<f32>(x_1047.x, x_1047.y, x_1047.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_1052 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1051.x, x_1051.y, x_1051.z, x_1052.w);
  let x_1054 : vec4<f32> = u_xlat1;
  let x_1056 : vec4<f32> = u_xlat3;
  u_xlat76 = dot(vec3<f32>(x_1054.x, x_1054.y, x_1054.z), vec3<f32>(x_1056.x, x_1056.y, x_1056.z));
  let x_1059 : f32 = u_xlat76;
  u_xlat76 = (x_1059 + 0.5f);
  let x_1061 : f32 = u_xlat76;
  let x_1063 : vec4<f32> = u_xlat4;
  let x_1065 : vec3<f32> = (vec3<f32>(x_1061, x_1061, x_1061) * vec3<f32>(x_1063.x, x_1063.y, x_1063.z));
  let x_1066 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1065.x, x_1065.y, x_1065.z, x_1066.w);
  let x_1069 : f32 = u_xlat3.w;
  u_xlat76 = max(x_1069, 0.00009999999747378752f);
  let x_1072 : vec4<f32> = u_xlat3;
  let x_1074 : f32 = u_xlat76;
  let x_1076 : vec3<f32> = (vec3<f32>(x_1072.x, x_1072.y, x_1072.z) / vec3<f32>(x_1074, x_1074, x_1074));
  let x_1077 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1076.x, x_1076.y, x_1076.z, x_1077.w);
  let x_1080 : f32 = u_xlat0.x;
  u_xlat76 = ((-(x_1080) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_1086 : f32 = u_xlat50;
  let x_1087 : f32 = u_xlat76;
  u_xlat77 = (x_1086 + -(x_1087));
  let x_1090 : f32 = u_xlat76;
  let x_1092 : vec4<f32> = u_xlat5;
  let x_1094 : vec3<f32> = (vec3<f32>(x_1090, x_1090, x_1090) * vec3<f32>(x_1092.x, x_1092.y, x_1092.z));
  let x_1095 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1094.x, x_1094.y, x_1094.z, x_1095.w);
  let x_1097 : vec4<f32> = u_xlat5;
  let x_1101 : vec3<f32> = (vec3<f32>(x_1097.x, x_1097.y, x_1097.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_1102 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1101.x, x_1101.y, x_1101.z, x_1102.w);
  let x_1104 : vec3<f32> = u_xlat0;
  let x_1106 : vec4<f32> = u_xlat5;
  let x_1111 : vec3<f32> = ((vec3<f32>(x_1104.x, x_1104.x, x_1104.x) * vec3<f32>(x_1106.x, x_1106.y, x_1106.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_1112 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1111.x, x_1111.y, x_1111.z, x_1112.w);
  let x_1114 : f32 = u_xlat50;
  u_xlat0.x = (-(x_1114) + 1.0f);
  let x_1119 : f32 = u_xlat0.x;
  let x_1121 : f32 = u_xlat0.x;
  u_xlat50 = (x_1119 * x_1121);
  let x_1123 : f32 = u_xlat50;
  u_xlat50 = max(x_1123, 0.0078125f);
  let x_1126 : f32 = u_xlat50;
  let x_1127 : f32 = u_xlat50;
  u_xlat76 = (x_1126 * x_1127);
  let x_1129 : f32 = u_xlat77;
  u_xlat77 = (x_1129 + 1.0f);
  let x_1131 : f32 = u_xlat77;
  u_xlat77 = clamp(x_1131, 0.0f, 1.0f);
  let x_1134 : f32 = u_xlat50;
  u_xlat78 = ((x_1134 * 4.0f) + 2.0f);
  let x_1137 : f32 = u_xlat25;
  u_xlat25 = min(x_1137, 1.0f);
  let x_1141 : f32 = x_845.x_MainLightShadowParams.y;
  u_xlatb79 = (0.0f < x_1141);
  let x_1143 : bool = u_xlatb79;
  if (x_1143) {
    let x_1147 : f32 = x_845.x_MainLightShadowParams.y;
    u_xlatb79 = (x_1147 == 1.0f);
    let x_1149 : bool = u_xlatb79;
    if (x_1149) {
      let x_1152 : vec4<f32> = u_xlat2;
      let x_1155 : vec4<f32> = x_845.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_1152.x, x_1152.y, x_1152.x, x_1152.y) + x_1155);
      let x_1159 : vec4<f32> = u_xlat6;
      let x_1160 : vec2<f32> = vec2<f32>(x_1159.x, x_1159.y);
      let x_1162 : f32 = u_xlat2.z;
      txVec0 = vec3<f32>(x_1160.x, x_1160.y, x_1162);
      let x_1174 : vec3<f32> = txVec0;
      let x_1176 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1174.xy, x_1174.z);
      u_xlat7.x = x_1176;
      let x_1179 : vec4<f32> = u_xlat6;
      let x_1180 : vec2<f32> = vec2<f32>(x_1179.z, x_1179.w);
      let x_1182 : f32 = u_xlat2.z;
      txVec1 = vec3<f32>(x_1180.x, x_1180.y, x_1182);
      let x_1189 : vec3<f32> = txVec1;
      let x_1191 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1189.xy, x_1189.z);
      u_xlat7.y = x_1191;
      let x_1193 : vec4<f32> = u_xlat2;
      let x_1196 : vec4<f32> = x_845.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_1193.x, x_1193.y, x_1193.x, x_1193.y) + x_1196);
      let x_1199 : vec4<f32> = u_xlat6;
      let x_1200 : vec2<f32> = vec2<f32>(x_1199.x, x_1199.y);
      let x_1202 : f32 = u_xlat2.z;
      txVec2 = vec3<f32>(x_1200.x, x_1200.y, x_1202);
      let x_1209 : vec3<f32> = txVec2;
      let x_1211 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1209.xy, x_1209.z);
      u_xlat7.z = x_1211;
      let x_1214 : vec4<f32> = u_xlat6;
      let x_1215 : vec2<f32> = vec2<f32>(x_1214.z, x_1214.w);
      let x_1217 : f32 = u_xlat2.z;
      txVec3 = vec3<f32>(x_1215.x, x_1215.y, x_1217);
      let x_1224 : vec3<f32> = txVec3;
      let x_1226 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1224.xy, x_1224.z);
      u_xlat7.w = x_1226;
      let x_1229 : vec4<f32> = u_xlat7;
      u_xlat79 = dot(x_1229, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1236 : f32 = x_845.x_MainLightShadowParams.y;
      u_xlatb80 = (x_1236 == 2.0f);
      let x_1238 : bool = u_xlatb80;
      if (x_1238) {
        let x_1241 : vec4<f32> = u_xlat2;
        let x_1244 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1247 : vec2<f32> = ((vec2<f32>(x_1241.x, x_1241.y) * vec2<f32>(x_1244.z, x_1244.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1248 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1247.x, x_1247.y, x_1248.z, x_1248.w);
        let x_1250 : vec4<f32> = u_xlat6;
        let x_1252 : vec2<f32> = floor(vec2<f32>(x_1250.x, x_1250.y));
        let x_1253 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1252.x, x_1252.y, x_1253.z, x_1253.w);
        let x_1257 : vec4<f32> = u_xlat2;
        let x_1260 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1263 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_1257.x, x_1257.y) * vec2<f32>(x_1260.z, x_1260.w)) + -(vec2<f32>(x_1263.x, x_1263.y)));
        let x_1267 : vec2<f32> = u_xlat56;
        u_xlat7 = (vec4<f32>(x_1267.x, x_1267.x, x_1267.y, x_1267.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1271 : vec4<f32> = u_xlat7;
        let x_1273 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1271.x, x_1271.x, x_1271.z, x_1271.z) * vec4<f32>(x_1273.x, x_1273.x, x_1273.z, x_1273.z));
        let x_1276 : vec4<f32> = u_xlat8;
        let x_1280 : vec2<f32> = (vec2<f32>(x_1276.y, x_1276.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1281 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1280.x, x_1281.y, x_1280.y, x_1281.w);
        let x_1283 : vec4<f32> = u_xlat8;
        let x_1286 : vec2<f32> = u_xlat56;
        let x_1288 : vec2<f32> = ((vec2<f32>(x_1283.x, x_1283.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1286));
        let x_1289 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1288.x, x_1288.y, x_1289.z, x_1289.w);
        let x_1292 : vec2<f32> = u_xlat56;
        u_xlat58 = (-(x_1292) + vec2<f32>(1.0f, 1.0f));
        let x_1296 : vec2<f32> = u_xlat56;
        let x_1298 : vec2<f32> = min(x_1296, vec2<f32>(0.0f, 0.0f));
        let x_1299 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1298.x, x_1298.y, x_1299.z, x_1299.w);
        let x_1301 : vec4<f32> = u_xlat9;
        let x_1304 : vec4<f32> = u_xlat9;
        let x_1307 : vec2<f32> = u_xlat58;
        let x_1308 : vec2<f32> = ((-(vec2<f32>(x_1301.x, x_1301.y)) * vec2<f32>(x_1304.x, x_1304.y)) + x_1307);
        let x_1309 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1308.x, x_1308.y, x_1309.z, x_1309.w);
        let x_1311 : vec2<f32> = u_xlat56;
        u_xlat56 = max(x_1311, vec2<f32>(0.0f, 0.0f));
        let x_1313 : vec2<f32> = u_xlat56;
        let x_1315 : vec2<f32> = u_xlat56;
        let x_1317 : vec4<f32> = u_xlat7;
        u_xlat56 = ((-(x_1313) * x_1315) + vec2<f32>(x_1317.y, x_1317.w));
        let x_1320 : vec4<f32> = u_xlat9;
        let x_1322 : vec2<f32> = (vec2<f32>(x_1320.x, x_1320.y) + vec2<f32>(1.0f, 1.0f));
        let x_1323 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1322.x, x_1322.y, x_1323.z, x_1323.w);
        let x_1325 : vec2<f32> = u_xlat56;
        u_xlat56 = (x_1325 + vec2<f32>(1.0f, 1.0f));
        let x_1327 : vec4<f32> = u_xlat8;
        let x_1331 : vec2<f32> = (vec2<f32>(x_1327.x, x_1327.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1332 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1331.x, x_1331.y, x_1332.z, x_1332.w);
        let x_1334 : vec2<f32> = u_xlat58;
        let x_1335 : vec2<f32> = (x_1334 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1336 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1335.x, x_1335.y, x_1336.z, x_1336.w);
        let x_1338 : vec4<f32> = u_xlat9;
        let x_1340 : vec2<f32> = (vec2<f32>(x_1338.x, x_1338.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1341 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1340.x, x_1340.y, x_1341.z, x_1341.w);
        let x_1343 : vec2<f32> = u_xlat56;
        let x_1344 : vec2<f32> = (x_1343 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1345 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1344.x, x_1344.y, x_1345.z, x_1345.w);
        let x_1347 : vec4<f32> = u_xlat7;
        u_xlat56 = (vec2<f32>(x_1347.y, x_1347.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1351 : f32 = u_xlat9.x;
        u_xlat10.z = x_1351;
        let x_1354 : f32 = u_xlat56.x;
        u_xlat10.w = x_1354;
        let x_1357 : f32 = u_xlat11.x;
        u_xlat8.z = x_1357;
        let x_1360 : f32 = u_xlat7.x;
        u_xlat8.w = x_1360;
        let x_1362 : vec4<f32> = u_xlat8;
        let x_1364 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_1362.z, x_1362.w, x_1362.x, x_1362.z) + vec4<f32>(x_1364.z, x_1364.w, x_1364.x, x_1364.z));
        let x_1368 : f32 = u_xlat10.y;
        u_xlat9.z = x_1368;
        let x_1371 : f32 = u_xlat56.y;
        u_xlat9.w = x_1371;
        let x_1374 : f32 = u_xlat8.y;
        u_xlat11.z = x_1374;
        let x_1377 : f32 = u_xlat7.z;
        u_xlat11.w = x_1377;
        let x_1379 : vec4<f32> = u_xlat9;
        let x_1381 : vec4<f32> = u_xlat11;
        let x_1383 : vec3<f32> = (vec3<f32>(x_1379.z, x_1379.y, x_1379.w) + vec3<f32>(x_1381.z, x_1381.y, x_1381.w));
        let x_1384 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1383.x, x_1383.y, x_1383.z, x_1384.w);
        let x_1386 : vec4<f32> = u_xlat8;
        let x_1388 : vec4<f32> = u_xlat12;
        let x_1390 : vec3<f32> = (vec3<f32>(x_1386.x, x_1386.z, x_1386.w) / vec3<f32>(x_1388.z, x_1388.w, x_1388.y));
        let x_1391 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1390.x, x_1390.y, x_1390.z, x_1391.w);
        let x_1393 : vec4<f32> = u_xlat8;
        let x_1398 : vec3<f32> = (vec3<f32>(x_1393.x, x_1393.y, x_1393.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1399 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1398.x, x_1398.y, x_1398.z, x_1399.w);
        let x_1401 : vec4<f32> = u_xlat11;
        let x_1403 : vec4<f32> = u_xlat7;
        let x_1405 : vec3<f32> = (vec3<f32>(x_1401.z, x_1401.y, x_1401.w) / vec3<f32>(x_1403.x, x_1403.y, x_1403.z));
        let x_1406 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1405.x, x_1405.y, x_1405.z, x_1406.w);
        let x_1408 : vec4<f32> = u_xlat9;
        let x_1410 : vec3<f32> = (vec3<f32>(x_1408.x, x_1408.y, x_1408.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1411 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1410.x, x_1410.y, x_1410.z, x_1411.w);
        let x_1413 : vec4<f32> = u_xlat8;
        let x_1416 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1418 : vec3<f32> = (vec3<f32>(x_1413.y, x_1413.x, x_1413.z) * vec3<f32>(x_1416.x, x_1416.x, x_1416.x));
        let x_1419 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1418.x, x_1418.y, x_1418.z, x_1419.w);
        let x_1421 : vec4<f32> = u_xlat9;
        let x_1424 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1426 : vec3<f32> = (vec3<f32>(x_1421.x, x_1421.y, x_1421.z) * vec3<f32>(x_1424.y, x_1424.y, x_1424.y));
        let x_1427 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1426.x, x_1426.y, x_1426.z, x_1427.w);
        let x_1430 : f32 = u_xlat9.x;
        u_xlat8.w = x_1430;
        let x_1432 : vec4<f32> = u_xlat6;
        let x_1435 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1438 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1432.x, x_1432.y, x_1432.x, x_1432.y) * vec4<f32>(x_1435.x, x_1435.y, x_1435.x, x_1435.y)) + vec4<f32>(x_1438.y, x_1438.w, x_1438.x, x_1438.w));
        let x_1441 : vec4<f32> = u_xlat6;
        let x_1444 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1447 : vec4<f32> = u_xlat8;
        u_xlat56 = ((vec2<f32>(x_1441.x, x_1441.y) * vec2<f32>(x_1444.x, x_1444.y)) + vec2<f32>(x_1447.z, x_1447.w));
        let x_1451 : f32 = u_xlat8.y;
        u_xlat9.w = x_1451;
        let x_1453 : vec4<f32> = u_xlat9;
        let x_1454 : vec2<f32> = vec2<f32>(x_1453.y, x_1453.z);
        let x_1455 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1455.x, x_1454.x, x_1455.z, x_1454.y);
        let x_1457 : vec4<f32> = u_xlat6;
        let x_1460 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1463 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1457.x, x_1457.y, x_1457.x, x_1457.y) * vec4<f32>(x_1460.x, x_1460.y, x_1460.x, x_1460.y)) + vec4<f32>(x_1463.x, x_1463.y, x_1463.z, x_1463.y));
        let x_1466 : vec4<f32> = u_xlat6;
        let x_1469 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1472 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1466.x, x_1466.y, x_1466.x, x_1466.y) * vec4<f32>(x_1469.x, x_1469.y, x_1469.x, x_1469.y)) + vec4<f32>(x_1472.w, x_1472.y, x_1472.w, x_1472.z));
        let x_1475 : vec4<f32> = u_xlat6;
        let x_1478 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1481 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1475.x, x_1475.y, x_1475.x, x_1475.y) * vec4<f32>(x_1478.x, x_1478.y, x_1478.x, x_1478.y)) + vec4<f32>(x_1481.x, x_1481.w, x_1481.z, x_1481.w));
        let x_1484 : vec4<f32> = u_xlat7;
        let x_1486 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_1484.x, x_1484.x, x_1484.x, x_1484.y) * vec4<f32>(x_1486.z, x_1486.w, x_1486.y, x_1486.z));
        let x_1490 : vec4<f32> = u_xlat7;
        let x_1492 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_1490.y, x_1490.y, x_1490.z, x_1490.z) * x_1492);
        let x_1496 : f32 = u_xlat7.z;
        let x_1498 : f32 = u_xlat12.y;
        u_xlat80 = (x_1496 * x_1498);
        let x_1501 : vec4<f32> = u_xlat10;
        let x_1502 : vec2<f32> = vec2<f32>(x_1501.x, x_1501.y);
        let x_1504 : f32 = u_xlat2.z;
        txVec4 = vec3<f32>(x_1502.x, x_1502.y, x_1504);
        let x_1511 : vec3<f32> = txVec4;
        let x_1513 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1511.xy, x_1511.z);
        u_xlat6.x = x_1513;
        let x_1516 : vec4<f32> = u_xlat10;
        let x_1517 : vec2<f32> = vec2<f32>(x_1516.z, x_1516.w);
        let x_1519 : f32 = u_xlat2.z;
        txVec5 = vec3<f32>(x_1517.x, x_1517.y, x_1519);
        let x_1527 : vec3<f32> = txVec5;
        let x_1529 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1527.xy, x_1527.z);
        u_xlat31 = x_1529;
        let x_1530 : f32 = u_xlat31;
        let x_1532 : f32 = u_xlat13.y;
        u_xlat31 = (x_1530 * x_1532);
        let x_1535 : f32 = u_xlat13.x;
        let x_1537 : f32 = u_xlat6.x;
        let x_1539 : f32 = u_xlat31;
        u_xlat6.x = ((x_1535 * x_1537) + x_1539);
        let x_1543 : vec2<f32> = u_xlat56;
        let x_1545 : f32 = u_xlat2.z;
        txVec6 = vec3<f32>(x_1543.x, x_1543.y, x_1545);
        let x_1552 : vec3<f32> = txVec6;
        let x_1554 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1552.xy, x_1552.z);
        u_xlat31 = x_1554;
        let x_1556 : f32 = u_xlat13.z;
        let x_1557 : f32 = u_xlat31;
        let x_1560 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1556 * x_1557) + x_1560);
        let x_1564 : vec4<f32> = u_xlat9;
        let x_1565 : vec2<f32> = vec2<f32>(x_1564.x, x_1564.y);
        let x_1567 : f32 = u_xlat2.z;
        txVec7 = vec3<f32>(x_1565.x, x_1565.y, x_1567);
        let x_1574 : vec3<f32> = txVec7;
        let x_1576 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1574.xy, x_1574.z);
        u_xlat31 = x_1576;
        let x_1578 : f32 = u_xlat13.w;
        let x_1579 : f32 = u_xlat31;
        let x_1582 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1578 * x_1579) + x_1582);
        let x_1586 : vec4<f32> = u_xlat11;
        let x_1587 : vec2<f32> = vec2<f32>(x_1586.x, x_1586.y);
        let x_1589 : f32 = u_xlat2.z;
        txVec8 = vec3<f32>(x_1587.x, x_1587.y, x_1589);
        let x_1596 : vec3<f32> = txVec8;
        let x_1598 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1596.xy, x_1596.z);
        u_xlat31 = x_1598;
        let x_1600 : f32 = u_xlat14.x;
        let x_1601 : f32 = u_xlat31;
        let x_1604 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1600 * x_1601) + x_1604);
        let x_1608 : vec4<f32> = u_xlat11;
        let x_1609 : vec2<f32> = vec2<f32>(x_1608.z, x_1608.w);
        let x_1611 : f32 = u_xlat2.z;
        txVec9 = vec3<f32>(x_1609.x, x_1609.y, x_1611);
        let x_1618 : vec3<f32> = txVec9;
        let x_1620 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1618.xy, x_1618.z);
        u_xlat31 = x_1620;
        let x_1622 : f32 = u_xlat14.y;
        let x_1623 : f32 = u_xlat31;
        let x_1626 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1622 * x_1623) + x_1626);
        let x_1630 : vec4<f32> = u_xlat9;
        let x_1631 : vec2<f32> = vec2<f32>(x_1630.z, x_1630.w);
        let x_1633 : f32 = u_xlat2.z;
        txVec10 = vec3<f32>(x_1631.x, x_1631.y, x_1633);
        let x_1640 : vec3<f32> = txVec10;
        let x_1642 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1640.xy, x_1640.z);
        u_xlat31 = x_1642;
        let x_1644 : f32 = u_xlat14.z;
        let x_1645 : f32 = u_xlat31;
        let x_1648 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1644 * x_1645) + x_1648);
        let x_1652 : vec4<f32> = u_xlat8;
        let x_1653 : vec2<f32> = vec2<f32>(x_1652.x, x_1652.y);
        let x_1655 : f32 = u_xlat2.z;
        txVec11 = vec3<f32>(x_1653.x, x_1653.y, x_1655);
        let x_1662 : vec3<f32> = txVec11;
        let x_1664 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1662.xy, x_1662.z);
        u_xlat31 = x_1664;
        let x_1666 : f32 = u_xlat14.w;
        let x_1667 : f32 = u_xlat31;
        let x_1670 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1666 * x_1667) + x_1670);
        let x_1674 : vec4<f32> = u_xlat8;
        let x_1675 : vec2<f32> = vec2<f32>(x_1674.z, x_1674.w);
        let x_1677 : f32 = u_xlat2.z;
        txVec12 = vec3<f32>(x_1675.x, x_1675.y, x_1677);
        let x_1684 : vec3<f32> = txVec12;
        let x_1686 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1684.xy, x_1684.z);
        u_xlat31 = x_1686;
        let x_1687 : f32 = u_xlat80;
        let x_1688 : f32 = u_xlat31;
        let x_1691 : f32 = u_xlat6.x;
        u_xlat79 = ((x_1687 * x_1688) + x_1691);
      } else {
        let x_1694 : vec4<f32> = u_xlat2;
        let x_1697 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1700 : vec2<f32> = ((vec2<f32>(x_1694.x, x_1694.y) * vec2<f32>(x_1697.z, x_1697.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1701 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1700.x, x_1700.y, x_1701.z, x_1701.w);
        let x_1703 : vec4<f32> = u_xlat6;
        let x_1705 : vec2<f32> = floor(vec2<f32>(x_1703.x, x_1703.y));
        let x_1706 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1705.x, x_1705.y, x_1706.z, x_1706.w);
        let x_1708 : vec4<f32> = u_xlat2;
        let x_1711 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1714 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_1708.x, x_1708.y) * vec2<f32>(x_1711.z, x_1711.w)) + -(vec2<f32>(x_1714.x, x_1714.y)));
        let x_1718 : vec2<f32> = u_xlat56;
        u_xlat7 = (vec4<f32>(x_1718.x, x_1718.x, x_1718.y, x_1718.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1721 : vec4<f32> = u_xlat7;
        let x_1723 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1721.x, x_1721.x, x_1721.z, x_1721.z) * vec4<f32>(x_1723.x, x_1723.x, x_1723.z, x_1723.z));
        let x_1726 : vec4<f32> = u_xlat8;
        let x_1730 : vec2<f32> = (vec2<f32>(x_1726.y, x_1726.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1731 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1731.x, x_1730.x, x_1731.z, x_1730.y);
        let x_1733 : vec4<f32> = u_xlat8;
        let x_1736 : vec2<f32> = u_xlat56;
        let x_1738 : vec2<f32> = ((vec2<f32>(x_1733.x, x_1733.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1736));
        let x_1739 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1738.x, x_1739.y, x_1738.y, x_1739.w);
        let x_1741 : vec2<f32> = u_xlat56;
        let x_1743 : vec2<f32> = (-(x_1741) + vec2<f32>(1.0f, 1.0f));
        let x_1744 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1743.x, x_1743.y, x_1744.z, x_1744.w);
        let x_1746 : vec2<f32> = u_xlat56;
        u_xlat58 = min(x_1746, vec2<f32>(0.0f, 0.0f));
        let x_1748 : vec2<f32> = u_xlat58;
        let x_1750 : vec2<f32> = u_xlat58;
        let x_1752 : vec4<f32> = u_xlat8;
        let x_1754 : vec2<f32> = ((-(x_1748) * x_1750) + vec2<f32>(x_1752.x, x_1752.y));
        let x_1755 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1754.x, x_1754.y, x_1755.z, x_1755.w);
        let x_1757 : vec2<f32> = u_xlat56;
        u_xlat58 = max(x_1757, vec2<f32>(0.0f, 0.0f));
        let x_1760 : vec2<f32> = u_xlat58;
        let x_1762 : vec2<f32> = u_xlat58;
        let x_1764 : vec4<f32> = u_xlat7;
        let x_1766 : vec2<f32> = ((-(x_1760) * x_1762) + vec2<f32>(x_1764.y, x_1764.w));
        let x_1767 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_1766.x, x_1767.y, x_1766.y);
        let x_1769 : vec4<f32> = u_xlat8;
        let x_1771 : vec2<f32> = (vec2<f32>(x_1769.x, x_1769.y) + vec2<f32>(2.0f, 2.0f));
        let x_1772 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1771.x, x_1771.y, x_1772.z, x_1772.w);
        let x_1774 : vec3<f32> = u_xlat32;
        let x_1776 : vec2<f32> = (vec2<f32>(x_1774.x, x_1774.z) + vec2<f32>(2.0f, 2.0f));
        let x_1777 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1777.x, x_1776.x, x_1777.z, x_1776.y);
        let x_1780 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1780 * 0.08163200318813323975f);
        let x_1784 : vec4<f32> = u_xlat7;
        let x_1787 : vec3<f32> = (vec3<f32>(x_1784.z, x_1784.x, x_1784.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1788 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1787.x, x_1787.y, x_1787.z, x_1788.w);
        let x_1790 : vec4<f32> = u_xlat8;
        let x_1793 : vec2<f32> = (vec2<f32>(x_1790.x, x_1790.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1794 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1793.x, x_1793.y, x_1794.z, x_1794.w);
        let x_1797 : f32 = u_xlat11.y;
        u_xlat10.x = x_1797;
        let x_1799 : vec2<f32> = u_xlat56;
        let x_1806 : vec2<f32> = ((vec2<f32>(x_1799.x, x_1799.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1807 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1807.x, x_1806.x, x_1807.z, x_1806.y);
        let x_1809 : vec2<f32> = u_xlat56;
        let x_1813 : vec2<f32> = ((vec2<f32>(x_1809.x, x_1809.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1814 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1813.x, x_1814.y, x_1813.y, x_1814.w);
        let x_1817 : f32 = u_xlat7.x;
        u_xlat8.y = x_1817;
        let x_1820 : f32 = u_xlat9.y;
        u_xlat8.w = x_1820;
        let x_1822 : vec4<f32> = u_xlat8;
        let x_1823 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1822 + x_1823);
        let x_1825 : vec2<f32> = u_xlat56;
        let x_1828 : vec2<f32> = ((vec2<f32>(x_1825.y, x_1825.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1829 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1829.x, x_1828.x, x_1829.z, x_1828.y);
        let x_1831 : vec2<f32> = u_xlat56;
        let x_1834 : vec2<f32> = ((vec2<f32>(x_1831.y, x_1831.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1835 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1834.x, x_1835.y, x_1834.y, x_1835.w);
        let x_1838 : f32 = u_xlat7.y;
        u_xlat9.y = x_1838;
        let x_1840 : vec4<f32> = u_xlat9;
        let x_1841 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1840 + x_1841);
        let x_1843 : vec4<f32> = u_xlat8;
        let x_1844 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1843 / x_1844);
        let x_1846 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1846 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1852 : vec4<f32> = u_xlat9;
        let x_1853 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1852 / x_1853);
        let x_1855 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1855 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1857 : vec4<f32> = u_xlat8;
        let x_1860 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1857.w, x_1857.x, x_1857.y, x_1857.z) * vec4<f32>(x_1860.x, x_1860.x, x_1860.x, x_1860.x));
        let x_1863 : vec4<f32> = u_xlat9;
        let x_1866 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1863.x, x_1863.w, x_1863.y, x_1863.z) * vec4<f32>(x_1866.y, x_1866.y, x_1866.y, x_1866.y));
        let x_1869 : vec4<f32> = u_xlat8;
        let x_1870 : vec3<f32> = vec3<f32>(x_1869.y, x_1869.z, x_1869.w);
        let x_1871 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1870.x, x_1871.y, x_1870.y, x_1870.z);
        let x_1874 : f32 = u_xlat9.x;
        u_xlat11.y = x_1874;
        let x_1876 : vec4<f32> = u_xlat6;
        let x_1879 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1882 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1876.x, x_1876.y, x_1876.x, x_1876.y) * vec4<f32>(x_1879.x, x_1879.y, x_1879.x, x_1879.y)) + vec4<f32>(x_1882.x, x_1882.y, x_1882.z, x_1882.y));
        let x_1885 : vec4<f32> = u_xlat6;
        let x_1888 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1891 : vec4<f32> = u_xlat11;
        u_xlat56 = ((vec2<f32>(x_1885.x, x_1885.y) * vec2<f32>(x_1888.x, x_1888.y)) + vec2<f32>(x_1891.w, x_1891.y));
        let x_1895 : f32 = u_xlat11.y;
        u_xlat8.y = x_1895;
        let x_1898 : f32 = u_xlat9.z;
        u_xlat11.y = x_1898;
        let x_1900 : vec4<f32> = u_xlat6;
        let x_1903 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1906 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1900.x, x_1900.y, x_1900.x, x_1900.y) * vec4<f32>(x_1903.x, x_1903.y, x_1903.x, x_1903.y)) + vec4<f32>(x_1906.x, x_1906.y, x_1906.z, x_1906.y));
        let x_1909 : vec4<f32> = u_xlat6;
        let x_1912 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1915 : vec4<f32> = u_xlat11;
        let x_1917 : vec2<f32> = ((vec2<f32>(x_1909.x, x_1909.y) * vec2<f32>(x_1912.x, x_1912.y)) + vec2<f32>(x_1915.w, x_1915.y));
        let x_1918 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1917.x, x_1917.y, x_1918.z, x_1918.w);
        let x_1921 : f32 = u_xlat11.y;
        u_xlat8.z = x_1921;
        let x_1924 : vec4<f32> = u_xlat6;
        let x_1927 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1930 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1924.x, x_1924.y, x_1924.x, x_1924.y) * vec4<f32>(x_1927.x, x_1927.y, x_1927.x, x_1927.y)) + vec4<f32>(x_1930.x, x_1930.y, x_1930.x, x_1930.z));
        let x_1934 : f32 = u_xlat9.w;
        u_xlat11.y = x_1934;
        let x_1937 : vec4<f32> = u_xlat6;
        let x_1940 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1943 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1937.x, x_1937.y, x_1937.x, x_1937.y) * vec4<f32>(x_1940.x, x_1940.y, x_1940.x, x_1940.y)) + vec4<f32>(x_1943.x, x_1943.y, x_1943.z, x_1943.y));
        let x_1947 : vec4<f32> = u_xlat6;
        let x_1950 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1953 : vec4<f32> = u_xlat11;
        u_xlat33 = ((vec2<f32>(x_1947.x, x_1947.y) * vec2<f32>(x_1950.x, x_1950.y)) + vec2<f32>(x_1953.w, x_1953.y));
        let x_1957 : f32 = u_xlat11.y;
        u_xlat8.w = x_1957;
        let x_1960 : vec4<f32> = u_xlat6;
        let x_1963 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1966 : vec4<f32> = u_xlat8;
        u_xlat64 = ((vec2<f32>(x_1960.x, x_1960.y) * vec2<f32>(x_1963.x, x_1963.y)) + vec2<f32>(x_1966.x, x_1966.w));
        let x_1969 : vec4<f32> = u_xlat11;
        let x_1970 : vec3<f32> = vec3<f32>(x_1969.x, x_1969.z, x_1969.w);
        let x_1971 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1970.x, x_1971.y, x_1970.y, x_1970.z);
        let x_1973 : vec4<f32> = u_xlat6;
        let x_1976 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1979 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1973.x, x_1973.y, x_1973.x, x_1973.y) * vec4<f32>(x_1976.x, x_1976.y, x_1976.x, x_1976.y)) + vec4<f32>(x_1979.x, x_1979.y, x_1979.z, x_1979.y));
        let x_1983 : vec4<f32> = u_xlat6;
        let x_1986 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1989 : vec4<f32> = u_xlat9;
        u_xlat59 = ((vec2<f32>(x_1983.x, x_1983.y) * vec2<f32>(x_1986.x, x_1986.y)) + vec2<f32>(x_1989.w, x_1989.y));
        let x_1993 : f32 = u_xlat8.x;
        u_xlat9.x = x_1993;
        let x_1995 : vec4<f32> = u_xlat6;
        let x_1998 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_2001 : vec4<f32> = u_xlat9;
        let x_2003 : vec2<f32> = ((vec2<f32>(x_1995.x, x_1995.y) * vec2<f32>(x_1998.x, x_1998.y)) + vec2<f32>(x_2001.x, x_2001.y));
        let x_2004 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_2003.x, x_2003.y, x_2004.z, x_2004.w);
        let x_2007 : vec4<f32> = u_xlat7;
        let x_2009 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_2007.x, x_2007.x, x_2007.x, x_2007.x) * x_2009);
        let x_2012 : vec4<f32> = u_xlat7;
        let x_2014 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_2012.y, x_2012.y, x_2012.y, x_2012.y) * x_2014);
        let x_2017 : vec4<f32> = u_xlat7;
        let x_2019 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_2017.z, x_2017.z, x_2017.z, x_2017.z) * x_2019);
        let x_2021 : vec4<f32> = u_xlat7;
        let x_2023 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_2021.w, x_2021.w, x_2021.w, x_2021.w) * x_2023);
        let x_2026 : vec4<f32> = u_xlat12;
        let x_2027 : vec2<f32> = vec2<f32>(x_2026.x, x_2026.y);
        let x_2029 : f32 = u_xlat2.z;
        txVec13 = vec3<f32>(x_2027.x, x_2027.y, x_2029);
        let x_2036 : vec3<f32> = txVec13;
        let x_2038 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2036.xy, x_2036.z);
        u_xlat80 = x_2038;
        let x_2040 : vec4<f32> = u_xlat12;
        let x_2041 : vec2<f32> = vec2<f32>(x_2040.z, x_2040.w);
        let x_2043 : f32 = u_xlat2.z;
        txVec14 = vec3<f32>(x_2041.x, x_2041.y, x_2043);
        let x_2050 : vec3<f32> = txVec14;
        let x_2052 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2050.xy, x_2050.z);
        u_xlat8.x = x_2052;
        let x_2055 : f32 = u_xlat8.x;
        let x_2057 : f32 = u_xlat17.y;
        u_xlat8.x = (x_2055 * x_2057);
        let x_2061 : f32 = u_xlat17.x;
        let x_2062 : f32 = u_xlat80;
        let x_2065 : f32 = u_xlat8.x;
        u_xlat80 = ((x_2061 * x_2062) + x_2065);
        let x_2068 : vec2<f32> = u_xlat56;
        let x_2070 : f32 = u_xlat2.z;
        txVec15 = vec3<f32>(x_2068.x, x_2068.y, x_2070);
        let x_2077 : vec3<f32> = txVec15;
        let x_2079 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2077.xy, x_2077.z);
        u_xlat56.x = x_2079;
        let x_2082 : f32 = u_xlat17.z;
        let x_2084 : f32 = u_xlat56.x;
        let x_2086 : f32 = u_xlat80;
        u_xlat80 = ((x_2082 * x_2084) + x_2086);
        let x_2089 : vec4<f32> = u_xlat15;
        let x_2090 : vec2<f32> = vec2<f32>(x_2089.x, x_2089.y);
        let x_2092 : f32 = u_xlat2.z;
        txVec16 = vec3<f32>(x_2090.x, x_2090.y, x_2092);
        let x_2099 : vec3<f32> = txVec16;
        let x_2101 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2099.xy, x_2099.z);
        u_xlat56.x = x_2101;
        let x_2104 : f32 = u_xlat17.w;
        let x_2106 : f32 = u_xlat56.x;
        let x_2108 : f32 = u_xlat80;
        u_xlat80 = ((x_2104 * x_2106) + x_2108);
        let x_2111 : vec4<f32> = u_xlat13;
        let x_2112 : vec2<f32> = vec2<f32>(x_2111.x, x_2111.y);
        let x_2114 : f32 = u_xlat2.z;
        txVec17 = vec3<f32>(x_2112.x, x_2112.y, x_2114);
        let x_2121 : vec3<f32> = txVec17;
        let x_2123 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2121.xy, x_2121.z);
        u_xlat56.x = x_2123;
        let x_2126 : f32 = u_xlat18.x;
        let x_2128 : f32 = u_xlat56.x;
        let x_2130 : f32 = u_xlat80;
        u_xlat80 = ((x_2126 * x_2128) + x_2130);
        let x_2133 : vec4<f32> = u_xlat13;
        let x_2134 : vec2<f32> = vec2<f32>(x_2133.z, x_2133.w);
        let x_2136 : f32 = u_xlat2.z;
        txVec18 = vec3<f32>(x_2134.x, x_2134.y, x_2136);
        let x_2143 : vec3<f32> = txVec18;
        let x_2145 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2143.xy, x_2143.z);
        u_xlat56.x = x_2145;
        let x_2148 : f32 = u_xlat18.y;
        let x_2150 : f32 = u_xlat56.x;
        let x_2152 : f32 = u_xlat80;
        u_xlat80 = ((x_2148 * x_2150) + x_2152);
        let x_2155 : vec4<f32> = u_xlat14;
        let x_2156 : vec2<f32> = vec2<f32>(x_2155.x, x_2155.y);
        let x_2158 : f32 = u_xlat2.z;
        txVec19 = vec3<f32>(x_2156.x, x_2156.y, x_2158);
        let x_2165 : vec3<f32> = txVec19;
        let x_2167 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2165.xy, x_2165.z);
        u_xlat56.x = x_2167;
        let x_2170 : f32 = u_xlat18.z;
        let x_2172 : f32 = u_xlat56.x;
        let x_2174 : f32 = u_xlat80;
        u_xlat80 = ((x_2170 * x_2172) + x_2174);
        let x_2177 : vec4<f32> = u_xlat15;
        let x_2178 : vec2<f32> = vec2<f32>(x_2177.z, x_2177.w);
        let x_2180 : f32 = u_xlat2.z;
        txVec20 = vec3<f32>(x_2178.x, x_2178.y, x_2180);
        let x_2187 : vec3<f32> = txVec20;
        let x_2189 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2187.xy, x_2187.z);
        u_xlat56.x = x_2189;
        let x_2192 : f32 = u_xlat18.w;
        let x_2194 : f32 = u_xlat56.x;
        let x_2196 : f32 = u_xlat80;
        u_xlat80 = ((x_2192 * x_2194) + x_2196);
        let x_2199 : vec4<f32> = u_xlat16;
        let x_2200 : vec2<f32> = vec2<f32>(x_2199.x, x_2199.y);
        let x_2202 : f32 = u_xlat2.z;
        txVec21 = vec3<f32>(x_2200.x, x_2200.y, x_2202);
        let x_2209 : vec3<f32> = txVec21;
        let x_2211 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2209.xy, x_2209.z);
        u_xlat56.x = x_2211;
        let x_2214 : f32 = u_xlat19.x;
        let x_2216 : f32 = u_xlat56.x;
        let x_2218 : f32 = u_xlat80;
        u_xlat80 = ((x_2214 * x_2216) + x_2218);
        let x_2221 : vec4<f32> = u_xlat16;
        let x_2222 : vec2<f32> = vec2<f32>(x_2221.z, x_2221.w);
        let x_2224 : f32 = u_xlat2.z;
        txVec22 = vec3<f32>(x_2222.x, x_2222.y, x_2224);
        let x_2231 : vec3<f32> = txVec22;
        let x_2233 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2231.xy, x_2231.z);
        u_xlat56.x = x_2233;
        let x_2236 : f32 = u_xlat19.y;
        let x_2238 : f32 = u_xlat56.x;
        let x_2240 : f32 = u_xlat80;
        u_xlat80 = ((x_2236 * x_2238) + x_2240);
        let x_2243 : vec2<f32> = u_xlat33;
        let x_2245 : f32 = u_xlat2.z;
        txVec23 = vec3<f32>(x_2243.x, x_2243.y, x_2245);
        let x_2252 : vec3<f32> = txVec23;
        let x_2254 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2252.xy, x_2252.z);
        u_xlat56.x = x_2254;
        let x_2257 : f32 = u_xlat19.z;
        let x_2259 : f32 = u_xlat56.x;
        let x_2261 : f32 = u_xlat80;
        u_xlat80 = ((x_2257 * x_2259) + x_2261);
        let x_2264 : vec2<f32> = u_xlat64;
        let x_2266 : f32 = u_xlat2.z;
        txVec24 = vec3<f32>(x_2264.x, x_2264.y, x_2266);
        let x_2273 : vec3<f32> = txVec24;
        let x_2275 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2273.xy, x_2273.z);
        u_xlat56.x = x_2275;
        let x_2278 : f32 = u_xlat19.w;
        let x_2280 : f32 = u_xlat56.x;
        let x_2282 : f32 = u_xlat80;
        u_xlat80 = ((x_2278 * x_2280) + x_2282);
        let x_2285 : vec4<f32> = u_xlat11;
        let x_2286 : vec2<f32> = vec2<f32>(x_2285.x, x_2285.y);
        let x_2288 : f32 = u_xlat2.z;
        txVec25 = vec3<f32>(x_2286.x, x_2286.y, x_2288);
        let x_2295 : vec3<f32> = txVec25;
        let x_2297 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2295.xy, x_2295.z);
        u_xlat56.x = x_2297;
        let x_2300 : f32 = u_xlat7.x;
        let x_2302 : f32 = u_xlat56.x;
        let x_2304 : f32 = u_xlat80;
        u_xlat80 = ((x_2300 * x_2302) + x_2304);
        let x_2307 : vec4<f32> = u_xlat11;
        let x_2308 : vec2<f32> = vec2<f32>(x_2307.z, x_2307.w);
        let x_2310 : f32 = u_xlat2.z;
        txVec26 = vec3<f32>(x_2308.x, x_2308.y, x_2310);
        let x_2317 : vec3<f32> = txVec26;
        let x_2319 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2317.xy, x_2317.z);
        u_xlat56.x = x_2319;
        let x_2322 : f32 = u_xlat7.y;
        let x_2324 : f32 = u_xlat56.x;
        let x_2326 : f32 = u_xlat80;
        u_xlat80 = ((x_2322 * x_2324) + x_2326);
        let x_2329 : vec2<f32> = u_xlat59;
        let x_2331 : f32 = u_xlat2.z;
        txVec27 = vec3<f32>(x_2329.x, x_2329.y, x_2331);
        let x_2338 : vec3<f32> = txVec27;
        let x_2340 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2338.xy, x_2338.z);
        u_xlat56.x = x_2340;
        let x_2343 : f32 = u_xlat7.z;
        let x_2345 : f32 = u_xlat56.x;
        let x_2347 : f32 = u_xlat80;
        u_xlat80 = ((x_2343 * x_2345) + x_2347);
        let x_2350 : vec4<f32> = u_xlat6;
        let x_2351 : vec2<f32> = vec2<f32>(x_2350.x, x_2350.y);
        let x_2353 : f32 = u_xlat2.z;
        txVec28 = vec3<f32>(x_2351.x, x_2351.y, x_2353);
        let x_2360 : vec3<f32> = txVec28;
        let x_2362 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2360.xy, x_2360.z);
        u_xlat6.x = x_2362;
        let x_2365 : f32 = u_xlat7.w;
        let x_2367 : f32 = u_xlat6.x;
        let x_2369 : f32 = u_xlat80;
        u_xlat79 = ((x_2365 * x_2367) + x_2369);
      }
    }
  } else {
    let x_2373 : vec4<f32> = u_xlat2;
    let x_2374 : vec2<f32> = vec2<f32>(x_2373.x, x_2373.y);
    let x_2376 : f32 = u_xlat2.z;
    txVec29 = vec3<f32>(x_2374.x, x_2374.y, x_2376);
    let x_2383 : vec3<f32> = txVec29;
    let x_2385 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2383.xy, x_2383.z);
    u_xlat79 = x_2385;
  }
  let x_2387 : f32 = x_845.x_MainLightShadowParams.x;
  u_xlat2.x = (-(x_2387) + 1.0f);
  let x_2391 : f32 = u_xlat79;
  let x_2393 : f32 = x_845.x_MainLightShadowParams.x;
  let x_2396 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_2391 * x_2393) + x_2396);
  let x_2401 : f32 = u_xlat2.z;
  u_xlatb27 = (0.0f >= x_2401);
  let x_2405 : f32 = u_xlat2.z;
  u_xlatb52 = (x_2405 >= 1.0f);
  let x_2407 : bool = u_xlatb52;
  let x_2408 : bool = u_xlatb27;
  u_xlatb27 = (x_2407 | x_2408);
  let x_2410 : bool = u_xlatb27;
  if (x_2410) {
    x_2412 = 1.0f;
  } else {
    let x_2417 : f32 = u_xlat2.x;
    x_2412 = x_2417;
  }
  let x_2418 : f32 = x_2412;
  u_xlat2.x = x_2418;
  let x_2420 : vec3<f32> = vs_TEXCOORD7;
  let x_2423 : vec3<f32> = x_112.x_WorldSpaceCameraPos;
  let x_2425 : vec3<f32> = (x_2420 + -(x_2423));
  let x_2426 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2425.x, x_2425.y, x_2425.z, x_2426.w);
  let x_2429 : vec4<f32> = u_xlat6;
  let x_2431 : vec4<f32> = u_xlat6;
  u_xlat27 = dot(vec3<f32>(x_2429.x, x_2429.y, x_2429.z), vec3<f32>(x_2431.x, x_2431.y, x_2431.z));
  let x_2435 : f32 = u_xlat27;
  let x_2437 : f32 = x_845.x_MainLightShadowParams.z;
  let x_2440 : f32 = x_845.x_MainLightShadowParams.w;
  u_xlat52 = ((x_2435 * x_2437) + x_2440);
  let x_2442 : f32 = u_xlat52;
  u_xlat52 = clamp(x_2442, 0.0f, 1.0f);
  let x_2445 : f32 = u_xlat2.x;
  u_xlat79 = (-(x_2445) + 1.0f);
  let x_2448 : f32 = u_xlat52;
  let x_2449 : f32 = u_xlat79;
  let x_2452 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_2448 * x_2449) + x_2452);
  let x_2457 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_2457;
  let x_2460 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_2460;
  let x_2463 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_2463;
  let x_2465 : vec4<f32> = u_xlat6;
  let x_2468 : vec4<f32> = u_xlat1;
  u_xlat52 = dot(-(vec3<f32>(x_2465.x, x_2465.y, x_2465.z)), vec3<f32>(x_2468.x, x_2468.y, x_2468.z));
  let x_2471 : f32 = u_xlat52;
  let x_2472 : f32 = u_xlat52;
  u_xlat52 = (x_2471 + x_2472);
  let x_2474 : vec4<f32> = u_xlat1;
  let x_2476 : f32 = u_xlat52;
  let x_2480 : vec4<f32> = u_xlat6;
  let x_2483 : vec3<f32> = ((vec3<f32>(x_2474.x, x_2474.y, x_2474.z) * -(vec3<f32>(x_2476, x_2476, x_2476))) + -(vec3<f32>(x_2480.x, x_2480.y, x_2480.z)));
  let x_2484 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2483.x, x_2483.y, x_2483.z, x_2484.w);
  let x_2486 : vec4<f32> = u_xlat1;
  let x_2488 : vec4<f32> = u_xlat6;
  u_xlat52 = dot(vec3<f32>(x_2486.x, x_2486.y, x_2486.z), vec3<f32>(x_2488.x, x_2488.y, x_2488.z));
  let x_2491 : f32 = u_xlat52;
  u_xlat52 = clamp(x_2491, 0.0f, 1.0f);
  let x_2493 : f32 = u_xlat52;
  u_xlat52 = (-(x_2493) + 1.0f);
  let x_2496 : f32 = u_xlat52;
  let x_2497 : f32 = u_xlat52;
  u_xlat52 = (x_2496 * x_2497);
  let x_2499 : f32 = u_xlat52;
  let x_2500 : f32 = u_xlat52;
  u_xlat52 = (x_2499 * x_2500);
  let x_2503 : f32 = u_xlat0.x;
  u_xlat79 = ((-(x_2503) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2510 : f32 = u_xlat0.x;
  let x_2511 : f32 = u_xlat79;
  u_xlat0.x = (x_2510 * x_2511);
  let x_2515 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2515 * 6.0f);
  let x_2527 : vec4<f32> = u_xlat7;
  let x_2530 : f32 = u_xlat0.x;
  let x_2531 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2527.x, x_2527.y, x_2527.z), x_2530);
  u_xlat7 = x_2531;
  let x_2533 : f32 = u_xlat7.w;
  u_xlat0.x = (x_2533 + -1.0f);
  let x_2541 : f32 = x_2539.unity_SpecCube0_HDR.w;
  let x_2543 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2541 * x_2543) + 1.0f);
  let x_2548 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2548, 0.0f);
  let x_2552 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2552);
  let x_2556 : f32 = u_xlat0.x;
  let x_2558 : f32 = x_2539.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2556 * x_2558);
  let x_2562 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2562);
  let x_2566 : f32 = u_xlat0.x;
  let x_2568 : f32 = x_2539.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2566 * x_2568);
  let x_2571 : vec4<f32> = u_xlat7;
  let x_2573 : vec3<f32> = u_xlat0;
  let x_2575 : vec3<f32> = (vec3<f32>(x_2571.x, x_2571.y, x_2571.z) * vec3<f32>(x_2573.x, x_2573.x, x_2573.x));
  let x_2576 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2575.x, x_2575.y, x_2575.z, x_2576.w);
  let x_2578 : f32 = u_xlat50;
  let x_2580 : f32 = u_xlat50;
  let x_2584 : vec2<f32> = ((vec2<f32>(x_2578, x_2578) * vec2<f32>(x_2580, x_2580)) + vec2<f32>(-1.0f, 1.0f));
  let x_2585 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2584.x, x_2585.y, x_2584.y);
  let x_2588 : f32 = u_xlat0.z;
  u_xlat50 = (1.0f / x_2588);
  let x_2590 : vec4<f32> = u_xlat5;
  let x_2593 : f32 = u_xlat77;
  let x_2595 : vec3<f32> = (-(vec3<f32>(x_2590.x, x_2590.y, x_2590.z)) + vec3<f32>(x_2593, x_2593, x_2593));
  let x_2596 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2595.x, x_2595.y, x_2595.z, x_2596.w);
  let x_2598 : f32 = u_xlat52;
  let x_2600 : vec4<f32> = u_xlat8;
  let x_2603 : vec4<f32> = u_xlat5;
  let x_2605 : vec3<f32> = ((vec3<f32>(x_2598, x_2598, x_2598) * vec3<f32>(x_2600.x, x_2600.y, x_2600.z)) + vec3<f32>(x_2603.x, x_2603.y, x_2603.z));
  let x_2606 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2605.x, x_2605.y, x_2605.z, x_2606.w);
  let x_2608 : f32 = u_xlat50;
  let x_2610 : vec4<f32> = u_xlat8;
  let x_2612 : vec3<f32> = (vec3<f32>(x_2608, x_2608, x_2608) * vec3<f32>(x_2610.x, x_2610.y, x_2610.z));
  let x_2613 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2612.x, x_2612.y, x_2612.z, x_2613.w);
  let x_2615 : vec4<f32> = u_xlat7;
  let x_2617 : vec4<f32> = u_xlat8;
  let x_2619 : vec3<f32> = (vec3<f32>(x_2615.x, x_2615.y, x_2615.z) * vec3<f32>(x_2617.x, x_2617.y, x_2617.z));
  let x_2620 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2619.x, x_2619.y, x_2619.z, x_2620.w);
  let x_2622 : vec4<f32> = u_xlat3;
  let x_2624 : vec4<f32> = u_xlat4;
  let x_2627 : vec4<f32> = u_xlat7;
  let x_2629 : vec3<f32> = ((vec3<f32>(x_2622.x, x_2622.y, x_2622.z) * vec3<f32>(x_2624.x, x_2624.y, x_2624.z)) + vec3<f32>(x_2627.x, x_2627.y, x_2627.z));
  let x_2630 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2629.x, x_2629.y, x_2629.z, x_2630.w);
  let x_2633 : f32 = u_xlat2.x;
  let x_2635 : f32 = x_2539.unity_LightData.z;
  u_xlat50 = (x_2633 * x_2635);
  let x_2637 : vec4<f32> = u_xlat1;
  let x_2640 : vec4<f32> = x_112.x_MainLightPosition;
  u_xlat2.x = dot(vec3<f32>(x_2637.x, x_2637.y, x_2637.z), vec3<f32>(x_2640.x, x_2640.y, x_2640.z));
  let x_2645 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_2645, 0.0f, 1.0f);
  let x_2648 : f32 = u_xlat50;
  let x_2650 : f32 = u_xlat2.x;
  u_xlat50 = (x_2648 * x_2650);
  let x_2652 : f32 = u_xlat50;
  let x_2655 : vec4<f32> = x_112.x_MainLightColor;
  let x_2657 : vec3<f32> = (vec3<f32>(x_2652, x_2652, x_2652) * vec3<f32>(x_2655.x, x_2655.y, x_2655.z));
  let x_2658 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_2657.x, x_2658.y, x_2657.y, x_2657.z);
  let x_2660 : vec4<f32> = u_xlat6;
  let x_2663 : vec4<f32> = x_112.x_MainLightPosition;
  let x_2665 : vec3<f32> = (vec3<f32>(x_2660.x, x_2660.y, x_2660.z) + vec3<f32>(x_2663.x, x_2663.y, x_2663.z));
  let x_2666 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2665.x, x_2665.y, x_2665.z, x_2666.w);
  let x_2668 : vec4<f32> = u_xlat7;
  let x_2670 : vec4<f32> = u_xlat7;
  u_xlat50 = dot(vec3<f32>(x_2668.x, x_2668.y, x_2668.z), vec3<f32>(x_2670.x, x_2670.y, x_2670.z));
  let x_2673 : f32 = u_xlat50;
  u_xlat50 = max(x_2673, 1.17549435e-38f);
  let x_2676 : f32 = u_xlat50;
  u_xlat50 = inverseSqrt(x_2676);
  let x_2678 : f32 = u_xlat50;
  let x_2680 : vec4<f32> = u_xlat7;
  let x_2682 : vec3<f32> = (vec3<f32>(x_2678, x_2678, x_2678) * vec3<f32>(x_2680.x, x_2680.y, x_2680.z));
  let x_2683 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2682.x, x_2682.y, x_2682.z, x_2683.w);
  let x_2685 : vec4<f32> = u_xlat1;
  let x_2687 : vec4<f32> = u_xlat7;
  u_xlat50 = dot(vec3<f32>(x_2685.x, x_2685.y, x_2685.z), vec3<f32>(x_2687.x, x_2687.y, x_2687.z));
  let x_2690 : f32 = u_xlat50;
  u_xlat50 = clamp(x_2690, 0.0f, 1.0f);
  let x_2693 : vec4<f32> = x_112.x_MainLightPosition;
  let x_2695 : vec4<f32> = u_xlat7;
  u_xlat79 = dot(vec3<f32>(x_2693.x, x_2693.y, x_2693.z), vec3<f32>(x_2695.x, x_2695.y, x_2695.z));
  let x_2698 : f32 = u_xlat79;
  u_xlat79 = clamp(x_2698, 0.0f, 1.0f);
  let x_2700 : f32 = u_xlat50;
  let x_2701 : f32 = u_xlat50;
  u_xlat50 = (x_2700 * x_2701);
  let x_2703 : f32 = u_xlat50;
  let x_2705 : f32 = u_xlat0.x;
  u_xlat50 = ((x_2703 * x_2705) + 1.00001001358032226562f);
  let x_2709 : f32 = u_xlat79;
  let x_2710 : f32 = u_xlat79;
  u_xlat79 = (x_2709 * x_2710);
  let x_2712 : f32 = u_xlat50;
  let x_2713 : f32 = u_xlat50;
  u_xlat50 = (x_2712 * x_2713);
  let x_2715 : f32 = u_xlat79;
  u_xlat79 = max(x_2715, 0.10000000149011611938f);
  let x_2718 : f32 = u_xlat50;
  let x_2719 : f32 = u_xlat79;
  u_xlat50 = (x_2718 * x_2719);
  let x_2721 : f32 = u_xlat78;
  let x_2722 : f32 = u_xlat50;
  u_xlat50 = (x_2721 * x_2722);
  let x_2724 : f32 = u_xlat76;
  let x_2725 : f32 = u_xlat50;
  u_xlat50 = (x_2724 / x_2725);
  let x_2727 : vec4<f32> = u_xlat5;
  let x_2729 : f32 = u_xlat50;
  let x_2732 : vec4<f32> = u_xlat4;
  let x_2734 : vec3<f32> = ((vec3<f32>(x_2727.x, x_2727.y, x_2727.z) * vec3<f32>(x_2729, x_2729, x_2729)) + vec3<f32>(x_2732.x, x_2732.y, x_2732.z));
  let x_2735 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2734.x, x_2734.y, x_2734.z, x_2735.w);
  let x_2737 : vec4<f32> = u_xlat2;
  let x_2739 : vec4<f32> = u_xlat7;
  let x_2741 : vec3<f32> = (vec3<f32>(x_2737.x, x_2737.z, x_2737.w) * vec3<f32>(x_2739.x, x_2739.y, x_2739.z));
  let x_2742 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_2741.x, x_2742.y, x_2741.y, x_2741.z);
  let x_2745 : f32 = x_112.x_AdditionalLightsCount.x;
  let x_2747 : f32 = x_2539.unity_LightData.y;
  u_xlat50 = min(x_2745, x_2747);
  let x_2750 : f32 = u_xlat50;
  u_xlatu50 = bitcast<u32>(i32(x_2750));
  let x_2753 : f32 = u_xlat27;
  let x_2755 : f32 = x_845.x_AdditionalShadowFadeParams.x;
  let x_2758 : f32 = x_845.x_AdditionalShadowFadeParams.y;
  u_xlat27 = ((x_2753 * x_2755) + x_2758);
  let x_2760 : f32 = u_xlat27;
  u_xlat27 = clamp(x_2760, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2772 : u32 = u_xlatu_loop_1;
    let x_2773 : u32 = u_xlatu50;
    if ((x_2772 < x_2773)) {
    } else {
      break;
    }
    let x_2776 : u32 = u_xlatu_loop_1;
    u_xlatu80 = (x_2776 >> 2u);
    let x_2779 : u32 = u_xlatu_loop_1;
    u_xlati81 = bitcast<i32>((x_2779 & 3u));
    let x_2782 : u32 = u_xlatu80;
    let x_2785 : vec4<f32> = x_2539.unity_LightIndices[bitcast<i32>(x_2782)];
    let x_2795 : i32 = u_xlati81;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2800 : vec4<u32> = indexable[x_2795];
    u_xlat80 = dot(x_2785, bitcast<vec4<f32>>(x_2800));
    let x_2804 : f32 = u_xlat80;
    u_xlati80 = i32(x_2804);
    let x_2806 : vec3<f32> = vs_TEXCOORD7;
    let x_2817 : i32 = u_xlati80;
    let x_2819 : vec4<f32> = x_2816.x_AdditionalLightsPosition[x_2817];
    let x_2822 : i32 = u_xlati80;
    let x_2824 : vec4<f32> = x_2816.x_AdditionalLightsPosition[x_2822];
    let x_2826 : vec3<f32> = ((-(x_2806) * vec3<f32>(x_2819.w, x_2819.w, x_2819.w)) + vec3<f32>(x_2824.x, x_2824.y, x_2824.z));
    let x_2827 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2826.x, x_2826.y, x_2826.z, x_2827.w);
    let x_2830 : vec4<f32> = u_xlat8;
    let x_2832 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_2830.x, x_2830.y, x_2830.z), vec3<f32>(x_2832.x, x_2832.y, x_2832.z));
    let x_2835 : f32 = u_xlat81;
    u_xlat81 = max(x_2835, 0.00006103515625f);
    let x_2838 : f32 = u_xlat81;
    u_xlat82 = inverseSqrt(x_2838);
    let x_2840 : f32 = u_xlat82;
    let x_2842 : vec4<f32> = u_xlat8;
    let x_2844 : vec3<f32> = (vec3<f32>(x_2840, x_2840, x_2840) * vec3<f32>(x_2842.x, x_2842.y, x_2842.z));
    let x_2845 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2844.x, x_2844.y, x_2844.z, x_2845.w);
    let x_2848 : f32 = u_xlat81;
    u_xlat83 = (1.0f / x_2848);
    let x_2850 : f32 = u_xlat81;
    let x_2851 : i32 = u_xlati80;
    let x_2853 : f32 = x_2816.x_AdditionalLightsAttenuation[x_2851].x;
    u_xlat81 = (x_2850 * x_2853);
    let x_2855 : f32 = u_xlat81;
    let x_2857 : f32 = u_xlat81;
    u_xlat81 = ((-(x_2855) * x_2857) + 1.0f);
    let x_2860 : f32 = u_xlat81;
    u_xlat81 = max(x_2860, 0.0f);
    let x_2862 : f32 = u_xlat81;
    let x_2863 : f32 = u_xlat81;
    u_xlat81 = (x_2862 * x_2863);
    let x_2865 : f32 = u_xlat81;
    let x_2866 : f32 = u_xlat83;
    u_xlat81 = (x_2865 * x_2866);
    let x_2868 : i32 = u_xlati80;
    let x_2870 : vec4<f32> = x_2816.x_AdditionalLightsSpotDir[x_2868];
    let x_2872 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_2870.x, x_2870.y, x_2870.z), vec3<f32>(x_2872.x, x_2872.y, x_2872.z));
    let x_2875 : f32 = u_xlat83;
    let x_2876 : i32 = u_xlati80;
    let x_2878 : f32 = x_2816.x_AdditionalLightsAttenuation[x_2876].z;
    let x_2880 : i32 = u_xlati80;
    let x_2882 : f32 = x_2816.x_AdditionalLightsAttenuation[x_2880].w;
    u_xlat83 = ((x_2875 * x_2878) + x_2882);
    let x_2884 : f32 = u_xlat83;
    u_xlat83 = clamp(x_2884, 0.0f, 1.0f);
    let x_2886 : f32 = u_xlat83;
    let x_2887 : f32 = u_xlat83;
    u_xlat83 = (x_2886 * x_2887);
    let x_2889 : f32 = u_xlat81;
    let x_2890 : f32 = u_xlat83;
    u_xlat81 = (x_2889 * x_2890);
    let x_2893 : i32 = u_xlati80;
    let x_2895 : f32 = x_845.x_AdditionalShadowParams[x_2893].w;
    u_xlati83 = i32(x_2895);
    let x_2898 : i32 = u_xlati83;
    u_xlatb84 = (x_2898 >= 0i);
    let x_2900 : bool = u_xlatb84;
    if (x_2900) {
      let x_2904 : i32 = u_xlati80;
      let x_2906 : f32 = x_845.x_AdditionalShadowParams[x_2904].z;
      u_xlatb84 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2906, x_2906, x_2906, x_2906))));
      let x_2910 : bool = u_xlatb84;
      if (x_2910) {
        let x_2914 : vec4<f32> = u_xlat9;
        let x_2917 : vec4<f32> = u_xlat9;
        let x_2920 : vec4<bool> = (abs(vec4<f32>(x_2914.z, x_2914.z, x_2914.y, x_2914.z)) >= abs(vec4<f32>(x_2917.x, x_2917.y, x_2917.x, x_2917.x)));
        let x_2922 : vec3<bool> = vec3<bool>(x_2920.x, x_2920.y, x_2920.z);
        let x_2923 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_2922.x, x_2922.y, x_2922.z, x_2923.w);
        let x_2926 : bool = u_xlatb10.y;
        let x_2928 : bool = u_xlatb10.x;
        u_xlatb84 = (x_2926 & x_2928);
        let x_2930 : vec4<f32> = u_xlat9;
        let x_2933 : vec4<bool> = (-(vec4<f32>(x_2930.z, x_2930.y, x_2930.z, x_2930.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2934 : vec3<bool> = vec3<bool>(x_2933.x, x_2933.y, x_2933.w);
        let x_2935 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_2934.x, x_2934.y, x_2935.z, x_2934.z);
        let x_2938 : bool = u_xlatb10.x;
        u_xlat10.x = select(4.0f, 5.0f, x_2938);
        let x_2943 : bool = u_xlatb10.y;
        u_xlat10.y = select(2.0f, 3.0f, x_2943);
        let x_2948 : bool = u_xlatb10.w;
        u_xlat85 = select(0.0f, 1.0f, x_2948);
        let x_2952 : bool = u_xlatb10.z;
        if (x_2952) {
          let x_2957 : f32 = u_xlat10.y;
          x_2953 = x_2957;
        } else {
          let x_2959 : f32 = u_xlat85;
          x_2953 = x_2959;
        }
        let x_2960 : f32 = x_2953;
        u_xlat35 = x_2960;
        let x_2962 : bool = u_xlatb84;
        if (x_2962) {
          let x_2967 : f32 = u_xlat10.x;
          x_2963 = x_2967;
        } else {
          let x_2969 : f32 = u_xlat35;
          x_2963 = x_2969;
        }
        let x_2970 : f32 = x_2963;
        u_xlat84 = x_2970;
        let x_2971 : i32 = u_xlati80;
        let x_2973 : f32 = x_845.x_AdditionalShadowParams[x_2971].w;
        u_xlat10.x = trunc(x_2973);
        let x_2976 : f32 = u_xlat84;
        let x_2978 : f32 = u_xlat10.x;
        u_xlat84 = (x_2976 + x_2978);
        let x_2980 : f32 = u_xlat84;
        u_xlati83 = i32(x_2980);
      }
      let x_2982 : i32 = u_xlati83;
      u_xlati83 = (x_2982 << bitcast<u32>(2i));
      let x_2984 : vec3<f32> = vs_TEXCOORD7;
      let x_2986 : i32 = u_xlati83;
      let x_2989 : i32 = u_xlati83;
      let x_2993 : vec4<f32> = x_845.x_AdditionalLightsWorldToShadow[((x_2986 + 1i) / 4i)][((x_2989 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_2984.y, x_2984.y, x_2984.y, x_2984.y) * x_2993);
      let x_2995 : i32 = u_xlati83;
      let x_2997 : i32 = u_xlati83;
      let x_3000 : vec4<f32> = x_845.x_AdditionalLightsWorldToShadow[(x_2995 / 4i)][(x_2997 % 4i)];
      let x_3001 : vec3<f32> = vs_TEXCOORD7;
      let x_3004 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_3000 * vec4<f32>(x_3001.x, x_3001.x, x_3001.x, x_3001.x)) + x_3004);
      let x_3006 : i32 = u_xlati83;
      let x_3009 : i32 = u_xlati83;
      let x_3013 : vec4<f32> = x_845.x_AdditionalLightsWorldToShadow[((x_3006 + 2i) / 4i)][((x_3009 + 2i) % 4i)];
      let x_3014 : vec3<f32> = vs_TEXCOORD7;
      let x_3017 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_3013 * vec4<f32>(x_3014.z, x_3014.z, x_3014.z, x_3014.z)) + x_3017);
      let x_3019 : vec4<f32> = u_xlat10;
      let x_3020 : i32 = u_xlati83;
      let x_3023 : i32 = u_xlati83;
      let x_3027 : vec4<f32> = x_845.x_AdditionalLightsWorldToShadow[((x_3020 + 3i) / 4i)][((x_3023 + 3i) % 4i)];
      u_xlat10 = (x_3019 + x_3027);
      let x_3029 : vec4<f32> = u_xlat10;
      let x_3031 : vec4<f32> = u_xlat10;
      let x_3033 : vec3<f32> = (vec3<f32>(x_3029.x, x_3029.y, x_3029.z) / vec3<f32>(x_3031.w, x_3031.w, x_3031.w));
      let x_3034 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_3033.x, x_3033.y, x_3033.z, x_3034.w);
      let x_3037 : i32 = u_xlati80;
      let x_3039 : f32 = x_845.x_AdditionalShadowParams[x_3037].y;
      u_xlatb83 = (0.0f < x_3039);
      let x_3041 : bool = u_xlatb83;
      if (x_3041) {
        let x_3044 : i32 = u_xlati80;
        let x_3046 : f32 = x_845.x_AdditionalShadowParams[x_3044].y;
        u_xlatb83 = (1.0f == x_3046);
        let x_3048 : bool = u_xlatb83;
        if (x_3048) {
          let x_3051 : vec4<f32> = u_xlat10;
          let x_3054 : vec4<f32> = x_845.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_3051.x, x_3051.y, x_3051.x, x_3051.y) + x_3054);
          let x_3057 : vec4<f32> = u_xlat11;
          let x_3058 : vec2<f32> = vec2<f32>(x_3057.x, x_3057.y);
          let x_3060 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_3058.x, x_3058.y, x_3060);
          let x_3068 : vec3<f32> = txVec30;
          let x_3070 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3068.xy, x_3068.z);
          u_xlat12.x = x_3070;
          let x_3073 : vec4<f32> = u_xlat11;
          let x_3074 : vec2<f32> = vec2<f32>(x_3073.z, x_3073.w);
          let x_3076 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_3074.x, x_3074.y, x_3076);
          let x_3083 : vec3<f32> = txVec31;
          let x_3085 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3083.xy, x_3083.z);
          u_xlat12.y = x_3085;
          let x_3087 : vec4<f32> = u_xlat10;
          let x_3090 : vec4<f32> = x_845.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_3087.x, x_3087.y, x_3087.x, x_3087.y) + x_3090);
          let x_3093 : vec4<f32> = u_xlat11;
          let x_3094 : vec2<f32> = vec2<f32>(x_3093.x, x_3093.y);
          let x_3096 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_3094.x, x_3094.y, x_3096);
          let x_3103 : vec3<f32> = txVec32;
          let x_3105 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3103.xy, x_3103.z);
          u_xlat12.z = x_3105;
          let x_3108 : vec4<f32> = u_xlat11;
          let x_3109 : vec2<f32> = vec2<f32>(x_3108.z, x_3108.w);
          let x_3111 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_3109.x, x_3109.y, x_3111);
          let x_3118 : vec3<f32> = txVec33;
          let x_3120 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3118.xy, x_3118.z);
          u_xlat12.w = x_3120;
          let x_3122 : vec4<f32> = u_xlat12;
          u_xlat83 = dot(x_3122, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_3125 : i32 = u_xlati80;
          let x_3127 : f32 = x_845.x_AdditionalShadowParams[x_3125].y;
          u_xlatb84 = (2.0f == x_3127);
          let x_3129 : bool = u_xlatb84;
          if (x_3129) {
            let x_3132 : vec4<f32> = u_xlat10;
            let x_3135 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3138 : vec2<f32> = ((vec2<f32>(x_3132.x, x_3132.y) * vec2<f32>(x_3135.z, x_3135.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3139 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3138.x, x_3138.y, x_3139.z, x_3139.w);
            let x_3141 : vec4<f32> = u_xlat11;
            let x_3143 : vec2<f32> = floor(vec2<f32>(x_3141.x, x_3141.y));
            let x_3144 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3143.x, x_3143.y, x_3144.z, x_3144.w);
            let x_3147 : vec4<f32> = u_xlat10;
            let x_3150 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3153 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3147.x, x_3147.y) * vec2<f32>(x_3150.z, x_3150.w)) + -(vec2<f32>(x_3153.x, x_3153.y)));
            let x_3157 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3157.x, x_3157.x, x_3157.y, x_3157.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3160 : vec4<f32> = u_xlat12;
            let x_3162 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3160.x, x_3160.x, x_3160.z, x_3160.z) * vec4<f32>(x_3162.x, x_3162.x, x_3162.z, x_3162.z));
            let x_3165 : vec4<f32> = u_xlat13;
            let x_3167 : vec2<f32> = (vec2<f32>(x_3165.y, x_3165.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_3168 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3167.x, x_3168.y, x_3167.y, x_3168.w);
            let x_3170 : vec4<f32> = u_xlat13;
            let x_3173 : vec2<f32> = u_xlat61;
            let x_3175 : vec2<f32> = ((vec2<f32>(x_3170.x, x_3170.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3173));
            let x_3176 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3175.x, x_3175.y, x_3176.z, x_3176.w);
            let x_3179 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_3179) + vec2<f32>(1.0f, 1.0f));
            let x_3182 : vec2<f32> = u_xlat61;
            let x_3183 : vec2<f32> = min(x_3182, vec2<f32>(0.0f, 0.0f));
            let x_3184 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3183.x, x_3183.y, x_3184.z, x_3184.w);
            let x_3186 : vec4<f32> = u_xlat14;
            let x_3189 : vec4<f32> = u_xlat14;
            let x_3192 : vec2<f32> = u_xlat63;
            let x_3193 : vec2<f32> = ((-(vec2<f32>(x_3186.x, x_3186.y)) * vec2<f32>(x_3189.x, x_3189.y)) + x_3192);
            let x_3194 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3193.x, x_3193.y, x_3194.z, x_3194.w);
            let x_3196 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_3196, vec2<f32>(0.0f, 0.0f));
            let x_3198 : vec2<f32> = u_xlat61;
            let x_3200 : vec2<f32> = u_xlat61;
            let x_3202 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_3198) * x_3200) + vec2<f32>(x_3202.y, x_3202.w));
            let x_3205 : vec4<f32> = u_xlat14;
            let x_3207 : vec2<f32> = (vec2<f32>(x_3205.x, x_3205.y) + vec2<f32>(1.0f, 1.0f));
            let x_3208 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3207.x, x_3207.y, x_3208.z, x_3208.w);
            let x_3210 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_3210 + vec2<f32>(1.0f, 1.0f));
            let x_3212 : vec4<f32> = u_xlat13;
            let x_3214 : vec2<f32> = (vec2<f32>(x_3212.x, x_3212.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3215 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3214.x, x_3214.y, x_3215.z, x_3215.w);
            let x_3217 : vec2<f32> = u_xlat63;
            let x_3218 : vec2<f32> = (x_3217 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3219 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3218.x, x_3218.y, x_3219.z, x_3219.w);
            let x_3221 : vec4<f32> = u_xlat14;
            let x_3223 : vec2<f32> = (vec2<f32>(x_3221.x, x_3221.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3224 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3223.x, x_3223.y, x_3224.z, x_3224.w);
            let x_3226 : vec2<f32> = u_xlat61;
            let x_3227 : vec2<f32> = (x_3226 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3228 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3227.x, x_3227.y, x_3228.z, x_3228.w);
            let x_3230 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_3230.y, x_3230.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3234 : f32 = u_xlat14.x;
            u_xlat15.z = x_3234;
            let x_3237 : f32 = u_xlat61.x;
            u_xlat15.w = x_3237;
            let x_3240 : f32 = u_xlat16.x;
            u_xlat13.z = x_3240;
            let x_3243 : f32 = u_xlat12.x;
            u_xlat13.w = x_3243;
            let x_3245 : vec4<f32> = u_xlat13;
            let x_3247 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_3245.z, x_3245.w, x_3245.x, x_3245.z) + vec4<f32>(x_3247.z, x_3247.w, x_3247.x, x_3247.z));
            let x_3251 : f32 = u_xlat15.y;
            u_xlat14.z = x_3251;
            let x_3254 : f32 = u_xlat61.y;
            u_xlat14.w = x_3254;
            let x_3257 : f32 = u_xlat13.y;
            u_xlat16.z = x_3257;
            let x_3260 : f32 = u_xlat12.z;
            u_xlat16.w = x_3260;
            let x_3262 : vec4<f32> = u_xlat14;
            let x_3264 : vec4<f32> = u_xlat16;
            let x_3266 : vec3<f32> = (vec3<f32>(x_3262.z, x_3262.y, x_3262.w) + vec3<f32>(x_3264.z, x_3264.y, x_3264.w));
            let x_3267 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3266.x, x_3266.y, x_3266.z, x_3267.w);
            let x_3269 : vec4<f32> = u_xlat13;
            let x_3271 : vec4<f32> = u_xlat17;
            let x_3273 : vec3<f32> = (vec3<f32>(x_3269.x, x_3269.z, x_3269.w) / vec3<f32>(x_3271.z, x_3271.w, x_3271.y));
            let x_3274 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3273.x, x_3273.y, x_3273.z, x_3274.w);
            let x_3276 : vec4<f32> = u_xlat13;
            let x_3278 : vec3<f32> = (vec3<f32>(x_3276.x, x_3276.y, x_3276.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3279 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3278.x, x_3278.y, x_3278.z, x_3279.w);
            let x_3281 : vec4<f32> = u_xlat16;
            let x_3283 : vec4<f32> = u_xlat12;
            let x_3285 : vec3<f32> = (vec3<f32>(x_3281.z, x_3281.y, x_3281.w) / vec3<f32>(x_3283.x, x_3283.y, x_3283.z));
            let x_3286 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3285.x, x_3285.y, x_3285.z, x_3286.w);
            let x_3288 : vec4<f32> = u_xlat14;
            let x_3290 : vec3<f32> = (vec3<f32>(x_3288.x, x_3288.y, x_3288.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3291 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3290.x, x_3290.y, x_3290.z, x_3291.w);
            let x_3293 : vec4<f32> = u_xlat13;
            let x_3296 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3298 : vec3<f32> = (vec3<f32>(x_3293.y, x_3293.x, x_3293.z) * vec3<f32>(x_3296.x, x_3296.x, x_3296.x));
            let x_3299 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3298.x, x_3298.y, x_3298.z, x_3299.w);
            let x_3301 : vec4<f32> = u_xlat14;
            let x_3304 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3306 : vec3<f32> = (vec3<f32>(x_3301.x, x_3301.y, x_3301.z) * vec3<f32>(x_3304.y, x_3304.y, x_3304.y));
            let x_3307 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3306.x, x_3306.y, x_3306.z, x_3307.w);
            let x_3310 : f32 = u_xlat14.x;
            u_xlat13.w = x_3310;
            let x_3312 : vec4<f32> = u_xlat11;
            let x_3315 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3318 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_3312.x, x_3312.y, x_3312.x, x_3312.y) * vec4<f32>(x_3315.x, x_3315.y, x_3315.x, x_3315.y)) + vec4<f32>(x_3318.y, x_3318.w, x_3318.x, x_3318.w));
            let x_3321 : vec4<f32> = u_xlat11;
            let x_3324 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3327 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_3321.x, x_3321.y) * vec2<f32>(x_3324.x, x_3324.y)) + vec2<f32>(x_3327.z, x_3327.w));
            let x_3331 : f32 = u_xlat13.y;
            u_xlat14.w = x_3331;
            let x_3333 : vec4<f32> = u_xlat14;
            let x_3334 : vec2<f32> = vec2<f32>(x_3333.y, x_3333.z);
            let x_3335 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3335.x, x_3334.x, x_3335.z, x_3334.y);
            let x_3337 : vec4<f32> = u_xlat11;
            let x_3340 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3343 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_3337.x, x_3337.y, x_3337.x, x_3337.y) * vec4<f32>(x_3340.x, x_3340.y, x_3340.x, x_3340.y)) + vec4<f32>(x_3343.x, x_3343.y, x_3343.z, x_3343.y));
            let x_3346 : vec4<f32> = u_xlat11;
            let x_3349 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3352 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3346.x, x_3346.y, x_3346.x, x_3346.y) * vec4<f32>(x_3349.x, x_3349.y, x_3349.x, x_3349.y)) + vec4<f32>(x_3352.w, x_3352.y, x_3352.w, x_3352.z));
            let x_3355 : vec4<f32> = u_xlat11;
            let x_3358 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3361 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_3355.x, x_3355.y, x_3355.x, x_3355.y) * vec4<f32>(x_3358.x, x_3358.y, x_3358.x, x_3358.y)) + vec4<f32>(x_3361.x, x_3361.w, x_3361.z, x_3361.w));
            let x_3364 : vec4<f32> = u_xlat12;
            let x_3366 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_3364.x, x_3364.x, x_3364.x, x_3364.y) * vec4<f32>(x_3366.z, x_3366.w, x_3366.y, x_3366.z));
            let x_3369 : vec4<f32> = u_xlat12;
            let x_3371 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_3369.y, x_3369.y, x_3369.z, x_3369.z) * x_3371);
            let x_3374 : f32 = u_xlat12.z;
            let x_3376 : f32 = u_xlat17.y;
            u_xlat84 = (x_3374 * x_3376);
            let x_3379 : vec4<f32> = u_xlat15;
            let x_3380 : vec2<f32> = vec2<f32>(x_3379.x, x_3379.y);
            let x_3382 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_3380.x, x_3380.y, x_3382);
            let x_3389 : vec3<f32> = txVec34;
            let x_3391 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3389.xy, x_3389.z);
            u_xlat85 = x_3391;
            let x_3393 : vec4<f32> = u_xlat15;
            let x_3394 : vec2<f32> = vec2<f32>(x_3393.z, x_3393.w);
            let x_3396 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_3394.x, x_3394.y, x_3396);
            let x_3403 : vec3<f32> = txVec35;
            let x_3405 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3403.xy, x_3403.z);
            u_xlat11.x = x_3405;
            let x_3408 : f32 = u_xlat11.x;
            let x_3410 : f32 = u_xlat18.y;
            u_xlat11.x = (x_3408 * x_3410);
            let x_3414 : f32 = u_xlat18.x;
            let x_3415 : f32 = u_xlat85;
            let x_3418 : f32 = u_xlat11.x;
            u_xlat85 = ((x_3414 * x_3415) + x_3418);
            let x_3421 : vec2<f32> = u_xlat61;
            let x_3423 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_3421.x, x_3421.y, x_3423);
            let x_3430 : vec3<f32> = txVec36;
            let x_3432 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3430.xy, x_3430.z);
            u_xlat11.x = x_3432;
            let x_3435 : f32 = u_xlat18.z;
            let x_3437 : f32 = u_xlat11.x;
            let x_3439 : f32 = u_xlat85;
            u_xlat85 = ((x_3435 * x_3437) + x_3439);
            let x_3442 : vec4<f32> = u_xlat14;
            let x_3443 : vec2<f32> = vec2<f32>(x_3442.x, x_3442.y);
            let x_3445 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_3443.x, x_3443.y, x_3445);
            let x_3452 : vec3<f32> = txVec37;
            let x_3454 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3452.xy, x_3452.z);
            u_xlat11.x = x_3454;
            let x_3457 : f32 = u_xlat18.w;
            let x_3459 : f32 = u_xlat11.x;
            let x_3461 : f32 = u_xlat85;
            u_xlat85 = ((x_3457 * x_3459) + x_3461);
            let x_3464 : vec4<f32> = u_xlat16;
            let x_3465 : vec2<f32> = vec2<f32>(x_3464.x, x_3464.y);
            let x_3467 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_3465.x, x_3465.y, x_3467);
            let x_3474 : vec3<f32> = txVec38;
            let x_3476 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3474.xy, x_3474.z);
            u_xlat11.x = x_3476;
            let x_3479 : f32 = u_xlat19.x;
            let x_3481 : f32 = u_xlat11.x;
            let x_3483 : f32 = u_xlat85;
            u_xlat85 = ((x_3479 * x_3481) + x_3483);
            let x_3486 : vec4<f32> = u_xlat16;
            let x_3487 : vec2<f32> = vec2<f32>(x_3486.z, x_3486.w);
            let x_3489 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_3487.x, x_3487.y, x_3489);
            let x_3496 : vec3<f32> = txVec39;
            let x_3498 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3496.xy, x_3496.z);
            u_xlat11.x = x_3498;
            let x_3501 : f32 = u_xlat19.y;
            let x_3503 : f32 = u_xlat11.x;
            let x_3505 : f32 = u_xlat85;
            u_xlat85 = ((x_3501 * x_3503) + x_3505);
            let x_3508 : vec4<f32> = u_xlat14;
            let x_3509 : vec2<f32> = vec2<f32>(x_3508.z, x_3508.w);
            let x_3511 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_3509.x, x_3509.y, x_3511);
            let x_3518 : vec3<f32> = txVec40;
            let x_3520 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3518.xy, x_3518.z);
            u_xlat11.x = x_3520;
            let x_3523 : f32 = u_xlat19.z;
            let x_3525 : f32 = u_xlat11.x;
            let x_3527 : f32 = u_xlat85;
            u_xlat85 = ((x_3523 * x_3525) + x_3527);
            let x_3530 : vec4<f32> = u_xlat13;
            let x_3531 : vec2<f32> = vec2<f32>(x_3530.x, x_3530.y);
            let x_3533 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_3531.x, x_3531.y, x_3533);
            let x_3540 : vec3<f32> = txVec41;
            let x_3542 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3540.xy, x_3540.z);
            u_xlat11.x = x_3542;
            let x_3545 : f32 = u_xlat19.w;
            let x_3547 : f32 = u_xlat11.x;
            let x_3549 : f32 = u_xlat85;
            u_xlat85 = ((x_3545 * x_3547) + x_3549);
            let x_3552 : vec4<f32> = u_xlat13;
            let x_3553 : vec2<f32> = vec2<f32>(x_3552.z, x_3552.w);
            let x_3555 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_3553.x, x_3553.y, x_3555);
            let x_3562 : vec3<f32> = txVec42;
            let x_3564 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3562.xy, x_3562.z);
            u_xlat11.x = x_3564;
            let x_3566 : f32 = u_xlat84;
            let x_3568 : f32 = u_xlat11.x;
            let x_3570 : f32 = u_xlat85;
            u_xlat83 = ((x_3566 * x_3568) + x_3570);
          } else {
            let x_3573 : vec4<f32> = u_xlat10;
            let x_3576 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3579 : vec2<f32> = ((vec2<f32>(x_3573.x, x_3573.y) * vec2<f32>(x_3576.z, x_3576.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3580 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3579.x, x_3579.y, x_3580.z, x_3580.w);
            let x_3582 : vec4<f32> = u_xlat11;
            let x_3584 : vec2<f32> = floor(vec2<f32>(x_3582.x, x_3582.y));
            let x_3585 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3584.x, x_3584.y, x_3585.z, x_3585.w);
            let x_3587 : vec4<f32> = u_xlat10;
            let x_3590 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3593 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3587.x, x_3587.y) * vec2<f32>(x_3590.z, x_3590.w)) + -(vec2<f32>(x_3593.x, x_3593.y)));
            let x_3597 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3597.x, x_3597.x, x_3597.y, x_3597.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3600 : vec4<f32> = u_xlat12;
            let x_3602 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3600.x, x_3600.x, x_3600.z, x_3600.z) * vec4<f32>(x_3602.x, x_3602.x, x_3602.z, x_3602.z));
            let x_3605 : vec4<f32> = u_xlat13;
            let x_3607 : vec2<f32> = (vec2<f32>(x_3605.y, x_3605.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3608 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3608.x, x_3607.x, x_3608.z, x_3607.y);
            let x_3610 : vec4<f32> = u_xlat13;
            let x_3613 : vec2<f32> = u_xlat61;
            let x_3615 : vec2<f32> = ((vec2<f32>(x_3610.x, x_3610.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3613));
            let x_3616 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3615.x, x_3616.y, x_3615.y, x_3616.w);
            let x_3618 : vec2<f32> = u_xlat61;
            let x_3620 : vec2<f32> = (-(x_3618) + vec2<f32>(1.0f, 1.0f));
            let x_3621 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3620.x, x_3620.y, x_3621.z, x_3621.w);
            let x_3623 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_3623, vec2<f32>(0.0f, 0.0f));
            let x_3625 : vec2<f32> = u_xlat63;
            let x_3627 : vec2<f32> = u_xlat63;
            let x_3629 : vec4<f32> = u_xlat13;
            let x_3631 : vec2<f32> = ((-(x_3625) * x_3627) + vec2<f32>(x_3629.x, x_3629.y));
            let x_3632 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3631.x, x_3631.y, x_3632.z, x_3632.w);
            let x_3634 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_3634, vec2<f32>(0.0f, 0.0f));
            let x_3637 : vec2<f32> = u_xlat63;
            let x_3639 : vec2<f32> = u_xlat63;
            let x_3641 : vec4<f32> = u_xlat12;
            let x_3643 : vec2<f32> = ((-(x_3637) * x_3639) + vec2<f32>(x_3641.y, x_3641.w));
            let x_3644 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_3643.x, x_3644.y, x_3643.y);
            let x_3646 : vec4<f32> = u_xlat13;
            let x_3648 : vec2<f32> = (vec2<f32>(x_3646.x, x_3646.y) + vec2<f32>(2.0f, 2.0f));
            let x_3649 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3648.x, x_3648.y, x_3649.z, x_3649.w);
            let x_3651 : vec3<f32> = u_xlat37;
            let x_3653 : vec2<f32> = (vec2<f32>(x_3651.x, x_3651.z) + vec2<f32>(2.0f, 2.0f));
            let x_3654 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3654.x, x_3653.x, x_3654.z, x_3653.y);
            let x_3657 : f32 = u_xlat12.y;
            u_xlat15.z = (x_3657 * 0.08163200318813323975f);
            let x_3660 : vec4<f32> = u_xlat12;
            let x_3662 : vec3<f32> = (vec3<f32>(x_3660.z, x_3660.x, x_3660.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3663 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3662.x, x_3662.y, x_3662.z, x_3663.w);
            let x_3665 : vec4<f32> = u_xlat13;
            let x_3667 : vec2<f32> = (vec2<f32>(x_3665.x, x_3665.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3668 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3667.x, x_3667.y, x_3668.z, x_3668.w);
            let x_3671 : f32 = u_xlat16.y;
            u_xlat15.x = x_3671;
            let x_3673 : vec2<f32> = u_xlat61;
            let x_3676 : vec2<f32> = ((vec2<f32>(x_3673.x, x_3673.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3677 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3677.x, x_3676.x, x_3677.z, x_3676.y);
            let x_3679 : vec2<f32> = u_xlat61;
            let x_3682 : vec2<f32> = ((vec2<f32>(x_3679.x, x_3679.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3683 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3682.x, x_3683.y, x_3682.y, x_3683.w);
            let x_3686 : f32 = u_xlat12.x;
            u_xlat13.y = x_3686;
            let x_3689 : f32 = u_xlat14.y;
            u_xlat13.w = x_3689;
            let x_3691 : vec4<f32> = u_xlat13;
            let x_3692 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3691 + x_3692);
            let x_3694 : vec2<f32> = u_xlat61;
            let x_3697 : vec2<f32> = ((vec2<f32>(x_3694.y, x_3694.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3698 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3698.x, x_3697.x, x_3698.z, x_3697.y);
            let x_3700 : vec2<f32> = u_xlat61;
            let x_3703 : vec2<f32> = ((vec2<f32>(x_3700.y, x_3700.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3704 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3703.x, x_3704.y, x_3703.y, x_3704.w);
            let x_3707 : f32 = u_xlat12.y;
            u_xlat14.y = x_3707;
            let x_3709 : vec4<f32> = u_xlat14;
            let x_3710 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_3709 + x_3710);
            let x_3712 : vec4<f32> = u_xlat13;
            let x_3713 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_3712 / x_3713);
            let x_3715 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3715 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3717 : vec4<f32> = u_xlat14;
            let x_3718 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_3717 / x_3718);
            let x_3720 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3720 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3722 : vec4<f32> = u_xlat13;
            let x_3725 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3722.w, x_3722.x, x_3722.y, x_3722.z) * vec4<f32>(x_3725.x, x_3725.x, x_3725.x, x_3725.x));
            let x_3728 : vec4<f32> = u_xlat14;
            let x_3731 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3728.x, x_3728.w, x_3728.y, x_3728.z) * vec4<f32>(x_3731.y, x_3731.y, x_3731.y, x_3731.y));
            let x_3734 : vec4<f32> = u_xlat13;
            let x_3735 : vec3<f32> = vec3<f32>(x_3734.y, x_3734.z, x_3734.w);
            let x_3736 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3735.x, x_3736.y, x_3735.y, x_3735.z);
            let x_3739 : f32 = u_xlat14.x;
            u_xlat16.y = x_3739;
            let x_3741 : vec4<f32> = u_xlat11;
            let x_3744 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3747 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3741.x, x_3741.y, x_3741.x, x_3741.y) * vec4<f32>(x_3744.x, x_3744.y, x_3744.x, x_3744.y)) + vec4<f32>(x_3747.x, x_3747.y, x_3747.z, x_3747.y));
            let x_3750 : vec4<f32> = u_xlat11;
            let x_3753 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3756 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_3750.x, x_3750.y) * vec2<f32>(x_3753.x, x_3753.y)) + vec2<f32>(x_3756.w, x_3756.y));
            let x_3760 : f32 = u_xlat16.y;
            u_xlat13.y = x_3760;
            let x_3763 : f32 = u_xlat14.z;
            u_xlat16.y = x_3763;
            let x_3765 : vec4<f32> = u_xlat11;
            let x_3768 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3771 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3765.x, x_3765.y, x_3765.x, x_3765.y) * vec4<f32>(x_3768.x, x_3768.y, x_3768.x, x_3768.y)) + vec4<f32>(x_3771.x, x_3771.y, x_3771.z, x_3771.y));
            let x_3774 : vec4<f32> = u_xlat11;
            let x_3777 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3780 : vec4<f32> = u_xlat16;
            let x_3782 : vec2<f32> = ((vec2<f32>(x_3774.x, x_3774.y) * vec2<f32>(x_3777.x, x_3777.y)) + vec2<f32>(x_3780.w, x_3780.y));
            let x_3783 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3782.x, x_3782.y, x_3783.z, x_3783.w);
            let x_3786 : f32 = u_xlat16.y;
            u_xlat13.z = x_3786;
            let x_3789 : vec4<f32> = u_xlat11;
            let x_3792 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3795 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3789.x, x_3789.y, x_3789.x, x_3789.y) * vec4<f32>(x_3792.x, x_3792.y, x_3792.x, x_3792.y)) + vec4<f32>(x_3795.x, x_3795.y, x_3795.x, x_3795.z));
            let x_3799 : f32 = u_xlat14.w;
            u_xlat16.y = x_3799;
            let x_3802 : vec4<f32> = u_xlat11;
            let x_3805 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3808 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3802.x, x_3802.y, x_3802.x, x_3802.y) * vec4<f32>(x_3805.x, x_3805.y, x_3805.x, x_3805.y)) + vec4<f32>(x_3808.x, x_3808.y, x_3808.z, x_3808.y));
            let x_3812 : vec4<f32> = u_xlat11;
            let x_3815 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3818 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3812.x, x_3812.y) * vec2<f32>(x_3815.x, x_3815.y)) + vec2<f32>(x_3818.w, x_3818.y));
            let x_3822 : f32 = u_xlat16.y;
            u_xlat13.w = x_3822;
            let x_3825 : vec4<f32> = u_xlat11;
            let x_3828 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3831 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3825.x, x_3825.y) * vec2<f32>(x_3828.x, x_3828.y)) + vec2<f32>(x_3831.x, x_3831.w));
            let x_3834 : vec4<f32> = u_xlat16;
            let x_3835 : vec3<f32> = vec3<f32>(x_3834.x, x_3834.z, x_3834.w);
            let x_3836 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3835.x, x_3836.y, x_3835.y, x_3835.z);
            let x_3838 : vec4<f32> = u_xlat11;
            let x_3841 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3844 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3838.x, x_3838.y, x_3838.x, x_3838.y) * vec4<f32>(x_3841.x, x_3841.y, x_3841.x, x_3841.y)) + vec4<f32>(x_3844.x, x_3844.y, x_3844.z, x_3844.y));
            let x_3847 : vec4<f32> = u_xlat11;
            let x_3850 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3853 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3847.x, x_3847.y) * vec2<f32>(x_3850.x, x_3850.y)) + vec2<f32>(x_3853.w, x_3853.y));
            let x_3857 : f32 = u_xlat13.x;
            u_xlat14.x = x_3857;
            let x_3859 : vec4<f32> = u_xlat11;
            let x_3862 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3865 : vec4<f32> = u_xlat14;
            let x_3867 : vec2<f32> = ((vec2<f32>(x_3859.x, x_3859.y) * vec2<f32>(x_3862.x, x_3862.y)) + vec2<f32>(x_3865.x, x_3865.y));
            let x_3868 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3867.x, x_3867.y, x_3868.z, x_3868.w);
            let x_3871 : vec4<f32> = u_xlat12;
            let x_3873 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3871.x, x_3871.x, x_3871.x, x_3871.x) * x_3873);
            let x_3876 : vec4<f32> = u_xlat12;
            let x_3878 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3876.y, x_3876.y, x_3876.y, x_3876.y) * x_3878);
            let x_3881 : vec4<f32> = u_xlat12;
            let x_3883 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3881.z, x_3881.z, x_3881.z, x_3881.z) * x_3883);
            let x_3885 : vec4<f32> = u_xlat12;
            let x_3887 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3885.w, x_3885.w, x_3885.w, x_3885.w) * x_3887);
            let x_3890 : vec4<f32> = u_xlat17;
            let x_3891 : vec2<f32> = vec2<f32>(x_3890.x, x_3890.y);
            let x_3893 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3891.x, x_3891.y, x_3893);
            let x_3900 : vec3<f32> = txVec43;
            let x_3902 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3900.xy, x_3900.z);
            u_xlat84 = x_3902;
            let x_3904 : vec4<f32> = u_xlat17;
            let x_3905 : vec2<f32> = vec2<f32>(x_3904.z, x_3904.w);
            let x_3907 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3905.x, x_3905.y, x_3907);
            let x_3914 : vec3<f32> = txVec44;
            let x_3916 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3914.xy, x_3914.z);
            u_xlat85 = x_3916;
            let x_3917 : f32 = u_xlat85;
            let x_3919 : f32 = u_xlat22.y;
            u_xlat85 = (x_3917 * x_3919);
            let x_3922 : f32 = u_xlat22.x;
            let x_3923 : f32 = u_xlat84;
            let x_3925 : f32 = u_xlat85;
            u_xlat84 = ((x_3922 * x_3923) + x_3925);
            let x_3928 : vec2<f32> = u_xlat61;
            let x_3930 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3928.x, x_3928.y, x_3930);
            let x_3937 : vec3<f32> = txVec45;
            let x_3939 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3937.xy, x_3937.z);
            u_xlat85 = x_3939;
            let x_3941 : f32 = u_xlat22.z;
            let x_3942 : f32 = u_xlat85;
            let x_3944 : f32 = u_xlat84;
            u_xlat84 = ((x_3941 * x_3942) + x_3944);
            let x_3947 : vec4<f32> = u_xlat20;
            let x_3948 : vec2<f32> = vec2<f32>(x_3947.x, x_3947.y);
            let x_3950 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3948.x, x_3948.y, x_3950);
            let x_3957 : vec3<f32> = txVec46;
            let x_3959 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3957.xy, x_3957.z);
            u_xlat85 = x_3959;
            let x_3961 : f32 = u_xlat22.w;
            let x_3962 : f32 = u_xlat85;
            let x_3964 : f32 = u_xlat84;
            u_xlat84 = ((x_3961 * x_3962) + x_3964);
            let x_3967 : vec4<f32> = u_xlat18;
            let x_3968 : vec2<f32> = vec2<f32>(x_3967.x, x_3967.y);
            let x_3970 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3968.x, x_3968.y, x_3970);
            let x_3977 : vec3<f32> = txVec47;
            let x_3979 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3977.xy, x_3977.z);
            u_xlat85 = x_3979;
            let x_3981 : f32 = u_xlat23.x;
            let x_3982 : f32 = u_xlat85;
            let x_3984 : f32 = u_xlat84;
            u_xlat84 = ((x_3981 * x_3982) + x_3984);
            let x_3987 : vec4<f32> = u_xlat18;
            let x_3988 : vec2<f32> = vec2<f32>(x_3987.z, x_3987.w);
            let x_3990 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3988.x, x_3988.y, x_3990);
            let x_3997 : vec3<f32> = txVec48;
            let x_3999 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3997.xy, x_3997.z);
            u_xlat85 = x_3999;
            let x_4001 : f32 = u_xlat23.y;
            let x_4002 : f32 = u_xlat85;
            let x_4004 : f32 = u_xlat84;
            u_xlat84 = ((x_4001 * x_4002) + x_4004);
            let x_4007 : vec4<f32> = u_xlat19;
            let x_4008 : vec2<f32> = vec2<f32>(x_4007.x, x_4007.y);
            let x_4010 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_4008.x, x_4008.y, x_4010);
            let x_4017 : vec3<f32> = txVec49;
            let x_4019 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4017.xy, x_4017.z);
            u_xlat85 = x_4019;
            let x_4021 : f32 = u_xlat23.z;
            let x_4022 : f32 = u_xlat85;
            let x_4024 : f32 = u_xlat84;
            u_xlat84 = ((x_4021 * x_4022) + x_4024);
            let x_4027 : vec4<f32> = u_xlat20;
            let x_4028 : vec2<f32> = vec2<f32>(x_4027.z, x_4027.w);
            let x_4030 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_4028.x, x_4028.y, x_4030);
            let x_4037 : vec3<f32> = txVec50;
            let x_4039 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4037.xy, x_4037.z);
            u_xlat85 = x_4039;
            let x_4041 : f32 = u_xlat23.w;
            let x_4042 : f32 = u_xlat85;
            let x_4044 : f32 = u_xlat84;
            u_xlat84 = ((x_4041 * x_4042) + x_4044);
            let x_4047 : vec4<f32> = u_xlat21;
            let x_4048 : vec2<f32> = vec2<f32>(x_4047.x, x_4047.y);
            let x_4050 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_4048.x, x_4048.y, x_4050);
            let x_4057 : vec3<f32> = txVec51;
            let x_4059 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4057.xy, x_4057.z);
            u_xlat85 = x_4059;
            let x_4061 : f32 = u_xlat24.x;
            let x_4062 : f32 = u_xlat85;
            let x_4064 : f32 = u_xlat84;
            u_xlat84 = ((x_4061 * x_4062) + x_4064);
            let x_4067 : vec4<f32> = u_xlat21;
            let x_4068 : vec2<f32> = vec2<f32>(x_4067.z, x_4067.w);
            let x_4070 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_4068.x, x_4068.y, x_4070);
            let x_4077 : vec3<f32> = txVec52;
            let x_4079 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4077.xy, x_4077.z);
            u_xlat85 = x_4079;
            let x_4081 : f32 = u_xlat24.y;
            let x_4082 : f32 = u_xlat85;
            let x_4084 : f32 = u_xlat84;
            u_xlat84 = ((x_4081 * x_4082) + x_4084);
            let x_4087 : vec2<f32> = u_xlat38;
            let x_4089 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_4087.x, x_4087.y, x_4089);
            let x_4096 : vec3<f32> = txVec53;
            let x_4098 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4096.xy, x_4096.z);
            u_xlat85 = x_4098;
            let x_4100 : f32 = u_xlat24.z;
            let x_4101 : f32 = u_xlat85;
            let x_4103 : f32 = u_xlat84;
            u_xlat84 = ((x_4100 * x_4101) + x_4103);
            let x_4106 : vec2<f32> = u_xlat69;
            let x_4108 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_4106.x, x_4106.y, x_4108);
            let x_4115 : vec3<f32> = txVec54;
            let x_4117 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4115.xy, x_4115.z);
            u_xlat85 = x_4117;
            let x_4119 : f32 = u_xlat24.w;
            let x_4120 : f32 = u_xlat85;
            let x_4122 : f32 = u_xlat84;
            u_xlat84 = ((x_4119 * x_4120) + x_4122);
            let x_4125 : vec4<f32> = u_xlat16;
            let x_4126 : vec2<f32> = vec2<f32>(x_4125.x, x_4125.y);
            let x_4128 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_4126.x, x_4126.y, x_4128);
            let x_4135 : vec3<f32> = txVec55;
            let x_4137 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4135.xy, x_4135.z);
            u_xlat85 = x_4137;
            let x_4139 : f32 = u_xlat12.x;
            let x_4140 : f32 = u_xlat85;
            let x_4142 : f32 = u_xlat84;
            u_xlat84 = ((x_4139 * x_4140) + x_4142);
            let x_4145 : vec4<f32> = u_xlat16;
            let x_4146 : vec2<f32> = vec2<f32>(x_4145.z, x_4145.w);
            let x_4148 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_4146.x, x_4146.y, x_4148);
            let x_4155 : vec3<f32> = txVec56;
            let x_4157 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4155.xy, x_4155.z);
            u_xlat85 = x_4157;
            let x_4159 : f32 = u_xlat12.y;
            let x_4160 : f32 = u_xlat85;
            let x_4162 : f32 = u_xlat84;
            u_xlat84 = ((x_4159 * x_4160) + x_4162);
            let x_4165 : vec2<f32> = u_xlat64;
            let x_4167 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_4165.x, x_4165.y, x_4167);
            let x_4174 : vec3<f32> = txVec57;
            let x_4176 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4174.xy, x_4174.z);
            u_xlat85 = x_4176;
            let x_4178 : f32 = u_xlat12.z;
            let x_4179 : f32 = u_xlat85;
            let x_4181 : f32 = u_xlat84;
            u_xlat84 = ((x_4178 * x_4179) + x_4181);
            let x_4184 : vec4<f32> = u_xlat11;
            let x_4185 : vec2<f32> = vec2<f32>(x_4184.x, x_4184.y);
            let x_4187 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_4185.x, x_4185.y, x_4187);
            let x_4194 : vec3<f32> = txVec58;
            let x_4196 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4194.xy, x_4194.z);
            u_xlat85 = x_4196;
            let x_4198 : f32 = u_xlat12.w;
            let x_4199 : f32 = u_xlat85;
            let x_4201 : f32 = u_xlat84;
            u_xlat83 = ((x_4198 * x_4199) + x_4201);
          }
        }
      } else {
        let x_4205 : vec4<f32> = u_xlat10;
        let x_4206 : vec2<f32> = vec2<f32>(x_4205.x, x_4205.y);
        let x_4208 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_4206.x, x_4206.y, x_4208);
        let x_4215 : vec3<f32> = txVec59;
        let x_4217 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4215.xy, x_4215.z);
        u_xlat83 = x_4217;
      }
      let x_4218 : i32 = u_xlati80;
      let x_4220 : f32 = x_845.x_AdditionalShadowParams[x_4218].x;
      u_xlat84 = (1.0f + -(x_4220));
      let x_4223 : f32 = u_xlat83;
      let x_4224 : i32 = u_xlati80;
      let x_4226 : f32 = x_845.x_AdditionalShadowParams[x_4224].x;
      let x_4228 : f32 = u_xlat84;
      u_xlat83 = ((x_4223 * x_4226) + x_4228);
      let x_4231 : f32 = u_xlat10.z;
      u_xlatb84 = (0.0f >= x_4231);
      let x_4234 : f32 = u_xlat10.z;
      u_xlatb10.x = (x_4234 >= 1.0f);
      let x_4237 : bool = u_xlatb84;
      let x_4239 : bool = u_xlatb10.x;
      u_xlatb84 = (x_4237 | x_4239);
      let x_4241 : bool = u_xlatb84;
      let x_4242 : f32 = u_xlat83;
      u_xlat83 = select(x_4242, 1.0f, x_4241);
    } else {
      u_xlat83 = 1.0f;
    }
    let x_4245 : f32 = u_xlat83;
    u_xlat84 = (-(x_4245) + 1.0f);
    let x_4248 : f32 = u_xlat27;
    let x_4249 : f32 = u_xlat84;
    let x_4251 : f32 = u_xlat83;
    u_xlat83 = ((x_4248 * x_4249) + x_4251);
    let x_4253 : f32 = u_xlat81;
    let x_4254 : f32 = u_xlat83;
    u_xlat81 = (x_4253 * x_4254);
    let x_4256 : vec4<f32> = u_xlat1;
    let x_4258 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_4256.x, x_4256.y, x_4256.z), vec3<f32>(x_4258.x, x_4258.y, x_4258.z));
    let x_4261 : f32 = u_xlat83;
    u_xlat83 = clamp(x_4261, 0.0f, 1.0f);
    let x_4263 : f32 = u_xlat81;
    let x_4264 : f32 = u_xlat83;
    u_xlat81 = (x_4263 * x_4264);
    let x_4266 : f32 = u_xlat81;
    let x_4268 : i32 = u_xlati80;
    let x_4270 : vec4<f32> = x_2816.x_AdditionalLightsColor[x_4268];
    let x_4272 : vec3<f32> = (vec3<f32>(x_4266, x_4266, x_4266) * vec3<f32>(x_4270.x, x_4270.y, x_4270.z));
    let x_4273 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_4272.x, x_4272.y, x_4272.z, x_4273.w);
    let x_4275 : vec4<f32> = u_xlat8;
    let x_4277 : f32 = u_xlat82;
    let x_4280 : vec4<f32> = u_xlat6;
    let x_4282 : vec3<f32> = ((vec3<f32>(x_4275.x, x_4275.y, x_4275.z) * vec3<f32>(x_4277, x_4277, x_4277)) + vec3<f32>(x_4280.x, x_4280.y, x_4280.z));
    let x_4283 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4282.x, x_4282.y, x_4282.z, x_4283.w);
    let x_4285 : vec4<f32> = u_xlat8;
    let x_4287 : vec4<f32> = u_xlat8;
    u_xlat80 = dot(vec3<f32>(x_4285.x, x_4285.y, x_4285.z), vec3<f32>(x_4287.x, x_4287.y, x_4287.z));
    let x_4290 : f32 = u_xlat80;
    u_xlat80 = max(x_4290, 1.17549435e-38f);
    let x_4292 : f32 = u_xlat80;
    u_xlat80 = inverseSqrt(x_4292);
    let x_4294 : f32 = u_xlat80;
    let x_4296 : vec4<f32> = u_xlat8;
    let x_4298 : vec3<f32> = (vec3<f32>(x_4294, x_4294, x_4294) * vec3<f32>(x_4296.x, x_4296.y, x_4296.z));
    let x_4299 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4298.x, x_4298.y, x_4298.z, x_4299.w);
    let x_4301 : vec4<f32> = u_xlat1;
    let x_4303 : vec4<f32> = u_xlat8;
    u_xlat80 = dot(vec3<f32>(x_4301.x, x_4301.y, x_4301.z), vec3<f32>(x_4303.x, x_4303.y, x_4303.z));
    let x_4306 : f32 = u_xlat80;
    u_xlat80 = clamp(x_4306, 0.0f, 1.0f);
    let x_4308 : vec4<f32> = u_xlat9;
    let x_4310 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_4308.x, x_4308.y, x_4308.z), vec3<f32>(x_4310.x, x_4310.y, x_4310.z));
    let x_4313 : f32 = u_xlat81;
    u_xlat81 = clamp(x_4313, 0.0f, 1.0f);
    let x_4315 : f32 = u_xlat80;
    let x_4316 : f32 = u_xlat80;
    u_xlat80 = (x_4315 * x_4316);
    let x_4318 : f32 = u_xlat80;
    let x_4320 : f32 = u_xlat0.x;
    u_xlat80 = ((x_4318 * x_4320) + 1.00001001358032226562f);
    let x_4323 : f32 = u_xlat81;
    let x_4324 : f32 = u_xlat81;
    u_xlat81 = (x_4323 * x_4324);
    let x_4326 : f32 = u_xlat80;
    let x_4327 : f32 = u_xlat80;
    u_xlat80 = (x_4326 * x_4327);
    let x_4329 : f32 = u_xlat81;
    u_xlat81 = max(x_4329, 0.10000000149011611938f);
    let x_4331 : f32 = u_xlat80;
    let x_4332 : f32 = u_xlat81;
    u_xlat80 = (x_4331 * x_4332);
    let x_4334 : f32 = u_xlat78;
    let x_4335 : f32 = u_xlat80;
    u_xlat80 = (x_4334 * x_4335);
    let x_4337 : f32 = u_xlat76;
    let x_4338 : f32 = u_xlat80;
    u_xlat80 = (x_4337 / x_4338);
    let x_4340 : vec4<f32> = u_xlat5;
    let x_4342 : f32 = u_xlat80;
    let x_4345 : vec4<f32> = u_xlat4;
    let x_4347 : vec3<f32> = ((vec3<f32>(x_4340.x, x_4340.y, x_4340.z) * vec3<f32>(x_4342, x_4342, x_4342)) + vec3<f32>(x_4345.x, x_4345.y, x_4345.z));
    let x_4348 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4347.x, x_4347.y, x_4347.z, x_4348.w);
    let x_4350 : vec4<f32> = u_xlat8;
    let x_4352 : vec4<f32> = u_xlat10;
    let x_4355 : vec4<f32> = u_xlat7;
    let x_4357 : vec3<f32> = ((vec3<f32>(x_4350.x, x_4350.y, x_4350.z) * vec3<f32>(x_4352.x, x_4352.y, x_4352.z)) + vec3<f32>(x_4355.x, x_4355.y, x_4355.z));
    let x_4358 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_4357.x, x_4357.y, x_4357.z, x_4358.w);

    continuing {
      let x_4360 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4360 + bitcast<u32>(1i));
    }
  }
  let x_4362 : vec4<f32> = u_xlat3;
  let x_4364 : f32 = u_xlat25;
  let x_4367 : vec4<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_4362.x, x_4362.y, x_4362.z) * vec3<f32>(x_4364, x_4364, x_4364)) + vec3<f32>(x_4367.x, x_4367.z, x_4367.w));
  let x_4370 : vec4<f32> = u_xlat7;
  let x_4372 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4370.x, x_4370.y, x_4370.z) + x_4372);
  let x_4376 : f32 = u_xlat75;
  let x_4378 : vec3<f32> = u_xlat0;
  let x_4379 : vec3<f32> = (vec3<f32>(x_4376, x_4376, x_4376) * x_4378);
  let x_4380 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4379.x, x_4379.y, x_4379.z, x_4380.w);
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


