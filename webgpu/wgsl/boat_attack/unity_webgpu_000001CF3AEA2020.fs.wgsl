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
  /* @offset(80) */
  x_ProjectionParams : vec4<f32>,
  /* @offset(96) */
  unity_FogParams : vec4<f32>,
  /* @offset(112) */
  unity_MatrixV : mat4x4<f32>,
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

@group(1) @binding(0) var<uniform> x_113 : PGlobals;

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

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(15) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat77 : f32;

var<private> u_xlat28 : vec3<f32>;

var<private> u_xlat79 : f32;

var<private> u_xlatb5 : bool;

@group(1) @binding(4) var<uniform> x_1002 : LightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(12) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(19) var sampler_LinearClampCompare : sampler_comparison;

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

@group(0) @binding(14) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2409 : UnityPerDraw;

var<private> u_xlatu50 : u32;

var<private> u_xlatu81 : u32;

var<private> u_xlati82 : i32;

var<private> u_xlat81 : f32;

var<private> u_xlati81 : i32;

@group(1) @binding(1) var<uniform> x_2700 : AdditionalLights;

var<private> u_xlat82 : f32;

var<private> u_xlat83 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlati84 : i32;

var<private> u_xlatb10 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat35 : vec3<f32>;

var<private> u_xlat60 : f32;

var<private> u_xlatb84 : bool;

@group(0) @binding(13) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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
  var x_2287 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2841 : f32;
  var x_2852 : f32;
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
  let x_119 : f32 = x_113.x_GlobalMipBias.x;
  let x_120 : vec4<f32> = textureSampleBias(x_Control, sampler_Control, vec2<f32>(x_108.x, x_108.y), x_119);
  u_xlat4 = x_120;
  let x_123 : vec4<f32> = u_xlat4;
  u_xlat75 = dot(x_123, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_134 : vec4<f32> = vs_TEXCOORD1;
  let x_137 : f32 = x_113.x_GlobalMipBias.x;
  let x_138 : vec4<f32> = textureSampleBias(x_Splat0, sampler_Splat0, vec2<f32>(x_134.x, x_134.y), x_137);
  u_xlat5 = x_138;
  let x_144 : vec4<f32> = vs_TEXCOORD1;
  let x_147 : f32 = x_113.x_GlobalMipBias.x;
  let x_148 : vec4<f32> = textureSampleBias(x_Splat1, sampler_Splat0, vec2<f32>(x_144.z, x_144.w), x_147);
  u_xlat6 = x_148;
  let x_155 : vec4<f32> = vs_TEXCOORD2;
  let x_158 : f32 = x_113.x_GlobalMipBias.x;
  let x_159 : vec4<f32> = textureSampleBias(x_Splat2, sampler_Splat0, vec2<f32>(x_155.x, x_155.y), x_158);
  u_xlat7 = x_159;
  let x_165 : vec4<f32> = vs_TEXCOORD2;
  let x_168 : f32 = x_113.x_GlobalMipBias.x;
  let x_169 : vec4<f32> = textureSampleBias(x_Splat3, sampler_Splat0, vec2<f32>(x_165.z, x_165.w), x_168);
  u_xlat8 = x_169;
  let x_173 : f32 = u_xlat5.w;
  u_xlat9.x = x_173;
  let x_176 : f32 = u_xlat6.w;
  u_xlat9.y = x_176;
  let x_180 : f32 = u_xlat7.w;
  u_xlat9.z = x_180;
  let x_184 : f32 = u_xlat8.w;
  u_xlat9.w = x_184;
  let x_187 : vec4<f32> = u_xlat9;
  let x_190 : f32 = x_13.x_Smoothness0;
  let x_193 : f32 = x_13.x_Smoothness1;
  let x_196 : f32 = x_13.x_Smoothness2;
  let x_199 : f32 = x_13.x_Smoothness3;
  u_xlat10 = (x_187 * vec4<f32>(x_190, x_193, x_196, x_199));
  let x_208 : f32 = x_13.x_NumLayersCount;
  u_xlatb76 = (4.0f >= x_208);
  let x_211 : vec4<f32> = u_xlat4;
  u_xlat11 = (-(x_211) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_214 : vec4<f32> = u_xlat9;
  let x_215 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_214 + -(x_215));
  let x_218 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_218 * vec4<f32>(20.0f, 20.0f, 20.0f, 20.0f));
  let x_222 : vec4<f32> = u_xlat11;
  u_xlat11 = clamp(x_222, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_227 : vec4<f32> = u_xlat4;
  let x_231 : vec4<f32> = u_xlat11;
  u_xlat11 = ((x_227 * vec4<f32>(0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f)) + x_231);
  let x_234 : vec4<f32> = u_xlat4;
  let x_235 : vec4<f32> = u_xlat11;
  u_xlat12 = (x_234 + -(x_235));
  let x_240 : f32 = u_xlat12.x;
  let x_243 : f32 = x_13.x_DiffuseRemapScale0.w;
  u_xlat13.x = (x_240 * x_243);
  let x_247 : f32 = u_xlat12.y;
  let x_250 : f32 = x_13.x_DiffuseRemapScale1.w;
  u_xlat13.y = (x_247 * x_250);
  let x_254 : f32 = u_xlat12.z;
  let x_257 : f32 = x_13.x_DiffuseRemapScale2.w;
  u_xlat13.z = (x_254 * x_257);
  let x_261 : f32 = u_xlat12.w;
  let x_264 : f32 = x_13.x_DiffuseRemapScale3.w;
  u_xlat13.w = (x_261 * x_264);
  let x_267 : vec4<f32> = u_xlat11;
  let x_268 : vec4<f32> = u_xlat13;
  u_xlat11 = (x_267 + x_268);
  let x_270 : bool = u_xlatb76;
  let x_271 : vec4<f32> = u_xlat11;
  let x_272 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_272, x_271, vec4<bool>(x_270, x_270, x_270, x_270));
  let x_277 : vec4<f32> = u_xlat4;
  u_xlat76 = dot(x_277, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_281 : f32 = u_xlat76;
  u_xlatb77 = (0.00499999988824129105f >= x_281);
  let x_283 : bool = u_xlatb77;
  if (((select(0i, 1i, x_283) * -1i) != 0i)) {
    discard;
  }
  let x_292 : f32 = u_xlat76;
  u_xlat76 = (x_292 + 0.00006103515625f);
  let x_295 : vec4<f32> = u_xlat4;
  let x_296 : f32 = u_xlat76;
  u_xlat4 = (x_295 / vec4<f32>(x_296, x_296, x_296, x_296));
  let x_299 : vec4<f32> = u_xlat4;
  let x_302 : vec4<f32> = x_13.x_DiffuseRemapScale0;
  let x_304 : vec3<f32> = (vec3<f32>(x_299.x, x_299.x, x_299.x) * vec3<f32>(x_302.x, x_302.y, x_302.z));
  let x_305 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_304.x, x_304.y, x_304.z, x_305.w);
  let x_307 : vec4<f32> = u_xlat4;
  let x_310 : vec4<f32> = x_13.x_DiffuseRemapScale1;
  let x_312 : vec3<f32> = (vec3<f32>(x_307.y, x_307.y, x_307.y) * vec3<f32>(x_310.x, x_310.y, x_310.z));
  let x_313 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_312.x, x_312.y, x_312.z, x_313.w);
  let x_315 : vec4<f32> = u_xlat6;
  let x_317 : vec4<f32> = u_xlat12;
  let x_319 : vec3<f32> = (vec3<f32>(x_315.x, x_315.y, x_315.z) * vec3<f32>(x_317.x, x_317.y, x_317.z));
  let x_320 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_319.x, x_319.y, x_319.z, x_320.w);
  let x_322 : vec4<f32> = u_xlat5;
  let x_324 : vec4<f32> = u_xlat11;
  let x_327 : vec4<f32> = u_xlat6;
  let x_329 : vec3<f32> = ((vec3<f32>(x_322.x, x_322.y, x_322.z) * vec3<f32>(x_324.x, x_324.y, x_324.z)) + vec3<f32>(x_327.x, x_327.y, x_327.z));
  let x_330 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_329.x, x_329.y, x_329.z, x_330.w);
  let x_332 : vec4<f32> = u_xlat4;
  let x_335 : vec4<f32> = x_13.x_DiffuseRemapScale2;
  let x_337 : vec3<f32> = (vec3<f32>(x_332.z, x_332.z, x_332.z) * vec3<f32>(x_335.x, x_335.y, x_335.z));
  let x_338 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_337.x, x_337.y, x_337.z, x_338.w);
  let x_340 : vec4<f32> = u_xlat7;
  let x_342 : vec4<f32> = u_xlat6;
  let x_345 : vec4<f32> = u_xlat5;
  let x_347 : vec3<f32> = ((vec3<f32>(x_340.x, x_340.y, x_340.z) * vec3<f32>(x_342.x, x_342.y, x_342.z)) + vec3<f32>(x_345.x, x_345.y, x_345.z));
  let x_348 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_347.x, x_347.y, x_347.z, x_348.w);
  let x_350 : vec4<f32> = u_xlat4;
  let x_353 : vec4<f32> = x_13.x_DiffuseRemapScale3;
  let x_355 : vec3<f32> = (vec3<f32>(x_350.w, x_350.w, x_350.w) * vec3<f32>(x_353.x, x_353.y, x_353.z));
  let x_356 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_355.x, x_355.y, x_355.z, x_356.w);
  let x_358 : vec4<f32> = u_xlat8;
  let x_360 : vec4<f32> = u_xlat6;
  let x_363 : vec4<f32> = u_xlat5;
  let x_365 : vec3<f32> = ((vec3<f32>(x_358.x, x_358.y, x_358.z) * vec3<f32>(x_360.x, x_360.y, x_360.z)) + vec3<f32>(x_363.x, x_363.y, x_363.z));
  let x_366 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_365.x, x_365.y, x_365.z, x_366.w);
  let x_373 : vec4<f32> = vs_TEXCOORD1;
  let x_376 : f32 = x_113.x_GlobalMipBias.x;
  let x_377 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_373.x, x_373.y), x_376);
  let x_378 : vec3<f32> = vec3<f32>(x_377.x, x_377.y, x_377.w);
  let x_379 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_378.x, x_378.y, x_378.z, x_379.w);
  let x_382 : f32 = u_xlat6.x;
  let x_384 : f32 = u_xlat6.z;
  u_xlat6.x = (x_382 * x_384);
  let x_387 : vec4<f32> = u_xlat6;
  let x_392 : vec2<f32> = ((vec2<f32>(x_387.x, x_387.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_393 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_392.x, x_392.y, x_393.z, x_393.w);
  let x_395 : vec4<f32> = u_xlat6;
  let x_397 : vec4<f32> = u_xlat6;
  u_xlat76 = dot(vec2<f32>(x_395.x, x_395.y), vec2<f32>(x_397.x, x_397.y));
  let x_400 : f32 = u_xlat76;
  u_xlat76 = min(x_400, 1.0f);
  let x_402 : f32 = u_xlat76;
  u_xlat76 = (-(x_402) + 1.0f);
  let x_405 : f32 = u_xlat76;
  u_xlat76 = sqrt(x_405);
  let x_407 : f32 = u_xlat76;
  u_xlat7.z = max(x_407, 0.0000000000000001f);
  let x_411 : vec4<f32> = u_xlat6;
  let x_414 : f32 = x_13.x_NormalScale0;
  let x_416 : vec2<f32> = (vec2<f32>(x_411.x, x_411.y) * vec2<f32>(x_414, x_414));
  let x_417 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_416.x, x_416.y, x_417.z, x_417.w);
  let x_423 : vec4<f32> = vs_TEXCOORD1;
  let x_426 : f32 = x_113.x_GlobalMipBias.x;
  let x_427 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_423.z, x_423.w), x_426);
  let x_428 : vec3<f32> = vec3<f32>(x_427.x, x_427.y, x_427.w);
  let x_429 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_428.x, x_428.y, x_428.z, x_429.w);
  let x_432 : f32 = u_xlat6.x;
  let x_434 : f32 = u_xlat6.z;
  u_xlat6.x = (x_432 * x_434);
  let x_437 : vec4<f32> = u_xlat6;
  let x_440 : vec2<f32> = ((vec2<f32>(x_437.x, x_437.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_441 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_440.x, x_440.y, x_441.z, x_441.w);
  let x_443 : vec4<f32> = u_xlat6;
  let x_445 : vec4<f32> = u_xlat6;
  u_xlat76 = dot(vec2<f32>(x_443.x, x_443.y), vec2<f32>(x_445.x, x_445.y));
  let x_448 : f32 = u_xlat76;
  u_xlat76 = min(x_448, 1.0f);
  let x_450 : f32 = u_xlat76;
  u_xlat76 = (-(x_450) + 1.0f);
  let x_453 : f32 = u_xlat76;
  u_xlat76 = sqrt(x_453);
  let x_455 : f32 = u_xlat76;
  u_xlat8.z = max(x_455, 0.0000000000000001f);
  let x_458 : vec4<f32> = u_xlat6;
  let x_461 : f32 = x_13.x_NormalScale1;
  let x_463 : f32 = x_13.x_NormalScale1;
  let x_464 : vec2<f32> = vec2<f32>(x_461, x_463);
  let x_468 : vec2<f32> = (vec2<f32>(x_458.x, x_458.y) * vec2<f32>(x_464.x, x_464.y));
  let x_469 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_468.x, x_468.y, x_469.z, x_469.w);
  let x_471 : vec4<f32> = u_xlat4;
  let x_473 : vec4<f32> = u_xlat8;
  let x_475 : vec3<f32> = (vec3<f32>(x_471.y, x_471.y, x_471.y) * vec3<f32>(x_473.x, x_473.y, x_473.z));
  let x_476 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_475.x, x_475.y, x_475.z, x_476.w);
  let x_478 : vec4<f32> = u_xlat4;
  let x_480 : vec4<f32> = u_xlat7;
  let x_483 : vec4<f32> = u_xlat6;
  let x_485 : vec3<f32> = ((vec3<f32>(x_478.x, x_478.x, x_478.x) * vec3<f32>(x_480.x, x_480.y, x_480.z)) + vec3<f32>(x_483.x, x_483.y, x_483.z));
  let x_486 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_485.x, x_485.y, x_485.z, x_486.w);
  let x_492 : vec4<f32> = vs_TEXCOORD2;
  let x_495 : f32 = x_113.x_GlobalMipBias.x;
  let x_496 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_492.x, x_492.y), x_495);
  let x_497 : vec3<f32> = vec3<f32>(x_496.x, x_496.y, x_496.w);
  let x_498 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_497.x, x_497.y, x_497.z, x_498.w);
  let x_501 : f32 = u_xlat7.x;
  let x_503 : f32 = u_xlat7.z;
  u_xlat7.x = (x_501 * x_503);
  let x_506 : vec4<f32> = u_xlat7;
  let x_509 : vec2<f32> = ((vec2<f32>(x_506.x, x_506.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_510 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_509.x, x_509.y, x_510.z, x_510.w);
  let x_512 : vec4<f32> = u_xlat7;
  let x_514 : vec4<f32> = u_xlat7;
  u_xlat76 = dot(vec2<f32>(x_512.x, x_512.y), vec2<f32>(x_514.x, x_514.y));
  let x_517 : f32 = u_xlat76;
  u_xlat76 = min(x_517, 1.0f);
  let x_519 : f32 = u_xlat76;
  u_xlat76 = (-(x_519) + 1.0f);
  let x_522 : f32 = u_xlat76;
  u_xlat76 = sqrt(x_522);
  let x_524 : f32 = u_xlat76;
  u_xlat8.z = max(x_524, 0.0000000000000001f);
  let x_527 : vec4<f32> = u_xlat7;
  let x_531 : f32 = x_13.x_NormalScale2;
  let x_533 : f32 = x_13.x_NormalScale2;
  let x_534 : vec2<f32> = vec2<f32>(x_531, x_533);
  let x_538 : vec2<f32> = (vec2<f32>(x_527.x, x_527.y) * vec2<f32>(x_534.x, x_534.y));
  let x_539 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_538.x, x_538.y, x_539.z, x_539.w);
  let x_541 : vec4<f32> = u_xlat4;
  let x_543 : vec4<f32> = u_xlat8;
  let x_546 : vec4<f32> = u_xlat6;
  let x_548 : vec3<f32> = ((vec3<f32>(x_541.z, x_541.z, x_541.z) * vec3<f32>(x_543.x, x_543.y, x_543.z)) + vec3<f32>(x_546.x, x_546.y, x_546.z));
  let x_549 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_548.x, x_548.y, x_548.z, x_549.w);
  let x_555 : vec4<f32> = vs_TEXCOORD2;
  let x_558 : f32 = x_113.x_GlobalMipBias.x;
  let x_559 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_555.z, x_555.w), x_558);
  let x_560 : vec3<f32> = vec3<f32>(x_559.x, x_559.y, x_559.w);
  let x_561 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_560.x, x_560.y, x_560.z, x_561.w);
  let x_564 : f32 = u_xlat7.x;
  let x_566 : f32 = u_xlat7.z;
  u_xlat7.x = (x_564 * x_566);
  let x_569 : vec4<f32> = u_xlat7;
  let x_572 : vec2<f32> = ((vec2<f32>(x_569.x, x_569.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_573 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_572.x, x_572.y, x_573.z, x_573.w);
  let x_575 : vec4<f32> = u_xlat7;
  let x_577 : vec4<f32> = u_xlat7;
  u_xlat76 = dot(vec2<f32>(x_575.x, x_575.y), vec2<f32>(x_577.x, x_577.y));
  let x_580 : f32 = u_xlat76;
  u_xlat76 = min(x_580, 1.0f);
  let x_582 : f32 = u_xlat76;
  u_xlat76 = (-(x_582) + 1.0f);
  let x_585 : f32 = u_xlat76;
  u_xlat76 = sqrt(x_585);
  let x_587 : f32 = u_xlat76;
  u_xlat8.z = max(x_587, 0.0000000000000001f);
  let x_590 : vec4<f32> = u_xlat7;
  let x_594 : f32 = x_13.x_NormalScale3;
  let x_596 : f32 = x_13.x_NormalScale3;
  let x_597 : vec2<f32> = vec2<f32>(x_594, x_596);
  let x_601 : vec2<f32> = (vec2<f32>(x_590.x, x_590.y) * vec2<f32>(x_597.x, x_597.y));
  let x_602 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_601.x, x_601.y, x_602.z, x_602.w);
  let x_604 : vec4<f32> = u_xlat4;
  let x_606 : vec4<f32> = u_xlat8;
  let x_609 : vec4<f32> = u_xlat6;
  let x_611 : vec3<f32> = ((vec3<f32>(x_604.w, x_604.w, x_604.w) * vec3<f32>(x_606.x, x_606.y, x_606.z)) + vec3<f32>(x_609.x, x_609.y, x_609.z));
  let x_612 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_611.x, x_611.y, x_611.z, x_612.w);
  let x_615 : f32 = u_xlat6.z;
  u_xlat6.w = (x_615 + 0.00000999999974737875f);
  let x_619 : vec4<f32> = u_xlat6;
  let x_621 : vec4<f32> = u_xlat6;
  u_xlat76 = dot(vec3<f32>(x_619.x, x_619.y, x_619.w), vec3<f32>(x_621.x, x_621.y, x_621.w));
  let x_624 : f32 = u_xlat76;
  u_xlat76 = inverseSqrt(x_624);
  let x_626 : f32 = u_xlat76;
  let x_628 : vec4<f32> = u_xlat6;
  let x_630 : vec3<f32> = (vec3<f32>(x_626, x_626, x_626) * vec3<f32>(x_628.x, x_628.y, x_628.w));
  let x_631 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_630.x, x_630.y, x_630.z, x_631.w);
  let x_634 : f32 = x_13.x_MaskMapRemapScale0.y;
  u_xlat7.x = x_634;
  let x_637 : f32 = x_13.x_MaskMapRemapScale1.y;
  u_xlat7.y = x_637;
  let x_640 : f32 = x_13.x_MaskMapRemapScale2.y;
  u_xlat7.z = x_640;
  let x_643 : f32 = x_13.x_MaskMapRemapScale3.y;
  u_xlat7.w = x_643;
  let x_646 : f32 = x_13.x_MaskMapRemapOffset0.y;
  u_xlat8.x = x_646;
  let x_649 : f32 = x_13.x_MaskMapRemapOffset1.y;
  u_xlat8.y = x_649;
  let x_652 : f32 = x_13.x_MaskMapRemapOffset2.y;
  u_xlat8.z = x_652;
  let x_655 : f32 = x_13.x_MaskMapRemapOffset3.y;
  u_xlat8.w = x_655;
  let x_657 : vec4<f32> = u_xlat7;
  let x_658 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_657 + x_658);
  let x_661 : f32 = u_xlat0.z;
  u_xlat8.x = x_661;
  let x_664 : f32 = u_xlat1.z;
  u_xlat8.y = x_664;
  let x_667 : f32 = u_xlat2.z;
  u_xlat8.z = x_667;
  let x_670 : f32 = u_xlat3.y;
  u_xlat8.w = x_670;
  let x_672 : vec4<f32> = u_xlat9;
  let x_675 : f32 = x_13.x_Smoothness0;
  let x_677 : f32 = x_13.x_Smoothness1;
  let x_679 : f32 = x_13.x_Smoothness2;
  let x_681 : f32 = x_13.x_Smoothness3;
  let x_684 : vec4<f32> = u_xlat8;
  u_xlat8 = ((-(x_672) * vec4<f32>(x_675, x_677, x_679, x_681)) + x_684);
  let x_688 : f32 = x_13.x_LayerHasMask0;
  let x_691 : f32 = x_13.x_LayerHasMask1;
  let x_694 : f32 = x_13.x_LayerHasMask2;
  let x_697 : f32 = x_13.x_LayerHasMask3;
  let x_699 : vec4<f32> = u_xlat8;
  let x_701 : vec4<f32> = u_xlat10;
  u_xlat8 = ((vec4<f32>(x_688, x_691, x_694, x_697) * x_699) + x_701);
  let x_704 : vec4<f32> = u_xlat4;
  let x_705 : vec4<f32> = u_xlat8;
  u_xlat50 = dot(x_704, x_705);
  let x_708 : f32 = u_xlat0.x;
  u_xlat8.x = x_708;
  let x_711 : f32 = u_xlat1.x;
  u_xlat8.y = x_711;
  let x_714 : f32 = u_xlat2.x;
  u_xlat8.z = x_714;
  let x_717 : f32 = u_xlat3.x;
  u_xlat8.w = x_717;
  let x_719 : vec4<f32> = u_xlat8;
  let x_722 : f32 = x_13.x_Metallic0;
  let x_725 : f32 = x_13.x_Metallic1;
  let x_728 : f32 = x_13.x_Metallic2;
  let x_731 : f32 = x_13.x_Metallic3;
  u_xlat8 = (x_719 + -(vec4<f32>(x_722, x_725, x_728, x_731)));
  let x_736 : f32 = x_13.x_LayerHasMask0;
  let x_738 : f32 = x_13.x_LayerHasMask1;
  let x_740 : f32 = x_13.x_LayerHasMask2;
  let x_742 : f32 = x_13.x_LayerHasMask3;
  let x_744 : vec4<f32> = u_xlat8;
  let x_747 : f32 = x_13.x_Metallic0;
  let x_749 : f32 = x_13.x_Metallic1;
  let x_751 : f32 = x_13.x_Metallic2;
  let x_753 : f32 = x_13.x_Metallic3;
  u_xlat8 = ((vec4<f32>(x_736, x_738, x_740, x_742) * x_744) + vec4<f32>(x_747, x_749, x_751, x_753));
  let x_756 : vec4<f32> = u_xlat4;
  let x_757 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_756, x_757);
  let x_761 : f32 = u_xlat0.y;
  u_xlat3.x = x_761;
  let x_764 : f32 = u_xlat1.y;
  u_xlat3.y = x_764;
  let x_767 : f32 = u_xlat2.y;
  u_xlat3.z = x_767;
  let x_769 : vec4<f32> = u_xlat7;
  let x_771 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_769) + x_771);
  let x_774 : f32 = x_13.x_LayerHasMask0;
  let x_776 : f32 = x_13.x_LayerHasMask1;
  let x_778 : f32 = x_13.x_LayerHasMask2;
  let x_780 : f32 = x_13.x_LayerHasMask3;
  let x_782 : vec4<f32> = u_xlat1;
  let x_784 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec4<f32>(x_774, x_776, x_778, x_780) * x_782) + x_784);
  let x_787 : vec4<f32> = u_xlat4;
  let x_788 : vec4<f32> = u_xlat1;
  u_xlat25 = dot(x_787, x_788);
  let x_790 : vec4<f32> = u_xlat6;
  let x_793 : vec4<f32> = vs_TEXCOORD5;
  let x_795 : vec3<f32> = (vec3<f32>(x_790.y, x_790.y, x_790.y) * vec3<f32>(x_793.x, x_793.y, x_793.z));
  let x_796 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_795.x, x_795.y, x_795.z, x_796.w);
  let x_798 : vec4<f32> = u_xlat6;
  let x_801 : vec4<f32> = vs_TEXCOORD4;
  let x_805 : vec4<f32> = u_xlat1;
  let x_807 : vec3<f32> = ((vec3<f32>(x_798.x, x_798.x, x_798.x) * -(vec3<f32>(x_801.x, x_801.y, x_801.z))) + vec3<f32>(x_805.x, x_805.y, x_805.z));
  let x_808 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_807.x, x_807.y, x_807.z, x_808.w);
  let x_810 : vec4<f32> = u_xlat6;
  let x_813 : vec4<f32> = vs_TEXCOORD3;
  let x_816 : vec4<f32> = u_xlat1;
  let x_818 : vec3<f32> = ((vec3<f32>(x_810.z, x_810.z, x_810.z) * vec3<f32>(x_813.x, x_813.y, x_813.z)) + vec3<f32>(x_816.x, x_816.y, x_816.z));
  let x_819 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_818.x, x_818.y, x_818.z, x_819.w);
  let x_821 : vec4<f32> = u_xlat1;
  let x_823 : vec4<f32> = u_xlat1;
  u_xlat76 = dot(vec3<f32>(x_821.x, x_821.y, x_821.z), vec3<f32>(x_823.x, x_823.y, x_823.z));
  let x_826 : f32 = u_xlat76;
  u_xlat76 = inverseSqrt(x_826);
  let x_828 : f32 = u_xlat76;
  let x_830 : vec4<f32> = u_xlat1;
  let x_832 : vec3<f32> = (vec3<f32>(x_828, x_828, x_828) * vec3<f32>(x_830.x, x_830.y, x_830.z));
  let x_833 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_832.x, x_832.y, x_832.z, x_833.w);
  let x_839 : f32 = vs_TEXCOORD7.y;
  let x_841 : f32 = x_113.unity_MatrixV[1i].z;
  u_xlat76 = (x_839 * x_841);
  let x_844 : f32 = x_113.unity_MatrixV[0i].z;
  let x_846 : f32 = vs_TEXCOORD7.x;
  let x_848 : f32 = u_xlat76;
  u_xlat76 = ((x_844 * x_846) + x_848);
  let x_851 : f32 = x_113.unity_MatrixV[2i].z;
  let x_853 : f32 = vs_TEXCOORD7.z;
  let x_855 : f32 = u_xlat76;
  u_xlat76 = ((x_851 * x_853) + x_855);
  let x_857 : f32 = u_xlat76;
  let x_859 : f32 = x_113.unity_MatrixV[3i].z;
  u_xlat76 = (x_857 + x_859);
  let x_861 : f32 = u_xlat76;
  let x_864 : f32 = x_113.x_ProjectionParams.y;
  u_xlat76 = (-(x_861) + -(x_864));
  let x_867 : f32 = u_xlat76;
  u_xlat76 = max(x_867, 0.0f);
  let x_869 : f32 = u_xlat76;
  let x_871 : f32 = x_113.unity_FogParams.x;
  u_xlat76 = (x_869 * x_871);
  let x_878 : vec4<f32> = vs_TEXCOORD0;
  let x_881 : f32 = x_113.x_GlobalMipBias.x;
  let x_882 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_878.z, x_878.w), x_881);
  u_xlat2 = x_882;
  let x_887 : vec4<f32> = vs_TEXCOORD0;
  let x_890 : f32 = x_113.x_GlobalMipBias.x;
  let x_891 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_887.z, x_887.w), x_890);
  let x_892 : vec3<f32> = vec3<f32>(x_891.x, x_891.y, x_891.z);
  let x_893 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_892.x, x_892.y, x_892.z, x_893.w);
  let x_895 : vec4<f32> = u_xlat2;
  let x_899 : vec3<f32> = (vec3<f32>(x_895.x, x_895.y, x_895.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_900 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_899.x, x_899.y, x_899.z, x_900.w);
  let x_902 : vec4<f32> = u_xlat1;
  let x_904 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_902.x, x_902.y, x_902.z), vec3<f32>(x_904.x, x_904.y, x_904.z));
  let x_909 : f32 = u_xlat2.x;
  u_xlat2.x = (x_909 + 0.5f);
  let x_912 : vec4<f32> = u_xlat2;
  let x_914 : vec4<f32> = u_xlat3;
  let x_916 : vec3<f32> = (vec3<f32>(x_912.x, x_912.x, x_912.x) * vec3<f32>(x_914.x, x_914.y, x_914.z));
  let x_917 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_916.x, x_916.y, x_916.z, x_917.w);
  let x_921 : f32 = u_xlat2.w;
  u_xlat77 = max(x_921, 0.00009999999747378752f);
  let x_924 : vec4<f32> = u_xlat2;
  let x_926 : f32 = u_xlat77;
  let x_928 : vec3<f32> = (vec3<f32>(x_924.x, x_924.y, x_924.z) / vec3<f32>(x_926, x_926, x_926));
  let x_929 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_928.x, x_928.y, x_928.z, x_929.w);
  let x_932 : f32 = u_xlat0.x;
  u_xlat77 = ((-(x_932) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_937 : f32 = u_xlat50;
  let x_938 : f32 = u_xlat77;
  u_xlat3.x = (x_937 + -(x_938));
  let x_943 : f32 = u_xlat77;
  let x_945 : vec4<f32> = u_xlat5;
  u_xlat28 = (vec3<f32>(x_943, x_943, x_943) * vec3<f32>(x_945.x, x_945.y, x_945.z));
  let x_948 : vec4<f32> = u_xlat5;
  let x_952 : vec3<f32> = (vec3<f32>(x_948.x, x_948.y, x_948.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_953 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_952.x, x_952.y, x_952.z, x_953.w);
  let x_955 : vec3<f32> = u_xlat0;
  let x_957 : vec4<f32> = u_xlat4;
  let x_962 : vec3<f32> = ((vec3<f32>(x_955.x, x_955.x, x_955.x) * vec3<f32>(x_957.x, x_957.y, x_957.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_963 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_962.x, x_962.y, x_962.z, x_963.w);
  let x_965 : f32 = u_xlat50;
  u_xlat0.x = (-(x_965) + 1.0f);
  let x_970 : f32 = u_xlat0.x;
  let x_972 : f32 = u_xlat0.x;
  u_xlat50 = (x_970 * x_972);
  let x_974 : f32 = u_xlat50;
  u_xlat50 = max(x_974, 0.0078125f);
  let x_977 : f32 = u_xlat50;
  let x_978 : f32 = u_xlat50;
  u_xlat77 = (x_977 * x_978);
  let x_981 : f32 = u_xlat3.x;
  u_xlat3.x = (x_981 + 1.0f);
  let x_985 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_985, 0.0f, 1.0f);
  let x_989 : f32 = u_xlat50;
  u_xlat79 = ((x_989 * 4.0f) + 2.0f);
  let x_992 : f32 = u_xlat25;
  u_xlat25 = min(x_992, 1.0f);
  let x_1004 : f32 = x_1002.x_MainLightShadowParams.y;
  u_xlatb5 = (0.0f < x_1004);
  let x_1006 : bool = u_xlatb5;
  if (x_1006) {
    let x_1010 : f32 = x_1002.x_MainLightShadowParams.y;
    u_xlatb5 = (x_1010 == 1.0f);
    let x_1012 : bool = u_xlatb5;
    if (x_1012) {
      let x_1016 : vec4<f32> = vs_TEXCOORD8;
      let x_1019 : vec4<f32> = x_1002.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_1016.x, x_1016.y, x_1016.x, x_1016.y) + x_1019);
      let x_1023 : vec4<f32> = u_xlat5;
      let x_1024 : vec2<f32> = vec2<f32>(x_1023.x, x_1023.y);
      let x_1026 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_1024.x, x_1024.y, x_1026);
      let x_1038 : vec3<f32> = txVec0;
      let x_1040 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1038.xy, x_1038.z);
      u_xlat6.x = x_1040;
      let x_1043 : vec4<f32> = u_xlat5;
      let x_1044 : vec2<f32> = vec2<f32>(x_1043.z, x_1043.w);
      let x_1046 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_1044.x, x_1044.y, x_1046);
      let x_1053 : vec3<f32> = txVec1;
      let x_1055 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1053.xy, x_1053.z);
      u_xlat6.y = x_1055;
      let x_1057 : vec4<f32> = vs_TEXCOORD8;
      let x_1060 : vec4<f32> = x_1002.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_1057.x, x_1057.y, x_1057.x, x_1057.y) + x_1060);
      let x_1063 : vec4<f32> = u_xlat5;
      let x_1064 : vec2<f32> = vec2<f32>(x_1063.x, x_1063.y);
      let x_1066 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_1064.x, x_1064.y, x_1066);
      let x_1073 : vec3<f32> = txVec2;
      let x_1075 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1073.xy, x_1073.z);
      u_xlat6.z = x_1075;
      let x_1078 : vec4<f32> = u_xlat5;
      let x_1079 : vec2<f32> = vec2<f32>(x_1078.z, x_1078.w);
      let x_1081 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_1079.x, x_1079.y, x_1081);
      let x_1088 : vec3<f32> = txVec3;
      let x_1090 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1088.xy, x_1088.z);
      u_xlat6.w = x_1090;
      let x_1092 : vec4<f32> = u_xlat6;
      u_xlat5.x = dot(x_1092, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1100 : f32 = x_1002.x_MainLightShadowParams.y;
      u_xlatb30 = (x_1100 == 2.0f);
      let x_1102 : bool = u_xlatb30;
      if (x_1102) {
        let x_1106 : vec4<f32> = vs_TEXCOORD8;
        let x_1109 : vec4<f32> = x_1002.x_MainLightShadowmapSize;
        let x_1112 : vec2<f32> = ((vec2<f32>(x_1106.x, x_1106.y) * vec2<f32>(x_1109.z, x_1109.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1113 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_1112.x, x_1112.y, x_1113.z);
        let x_1115 : vec3<f32> = u_xlat30;
        let x_1117 : vec2<f32> = floor(vec2<f32>(x_1115.x, x_1115.y));
        let x_1118 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_1117.x, x_1117.y, x_1118.z);
        let x_1120 : vec4<f32> = vs_TEXCOORD8;
        let x_1123 : vec4<f32> = x_1002.x_MainLightShadowmapSize;
        let x_1126 : vec3<f32> = u_xlat30;
        let x_1129 : vec2<f32> = ((vec2<f32>(x_1120.x, x_1120.y) * vec2<f32>(x_1123.z, x_1123.w)) + -(vec2<f32>(x_1126.x, x_1126.y)));
        let x_1130 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1129.x, x_1129.y, x_1130.z, x_1130.w);
        let x_1132 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1132.x, x_1132.x, x_1132.y, x_1132.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1136 : vec4<f32> = u_xlat7;
        let x_1138 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1136.x, x_1136.x, x_1136.z, x_1136.z) * vec4<f32>(x_1138.x, x_1138.x, x_1138.z, x_1138.z));
        let x_1143 : vec4<f32> = u_xlat8;
        u_xlat56 = (vec2<f32>(x_1143.y, x_1143.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1148 : vec4<f32> = u_xlat8;
        let x_1151 : vec4<f32> = u_xlat6;
        let x_1154 : vec2<f32> = ((vec2<f32>(x_1148.x, x_1148.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1151.x, x_1151.y)));
        let x_1155 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1154.x, x_1155.y, x_1154.y, x_1155.w);
        let x_1157 : vec4<f32> = u_xlat6;
        let x_1161 : vec2<f32> = (-(vec2<f32>(x_1157.x, x_1157.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1162 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1161.x, x_1161.y, x_1162.z, x_1162.w);
        let x_1165 : vec4<f32> = u_xlat6;
        u_xlat58 = min(vec2<f32>(x_1165.x, x_1165.y), vec2<f32>(0.0f, 0.0f));
        let x_1169 : vec2<f32> = u_xlat58;
        let x_1171 : vec2<f32> = u_xlat58;
        let x_1173 : vec4<f32> = u_xlat8;
        u_xlat58 = ((-(x_1169) * x_1171) + vec2<f32>(x_1173.x, x_1173.y));
        let x_1176 : vec4<f32> = u_xlat6;
        let x_1178 : vec2<f32> = max(vec2<f32>(x_1176.x, x_1176.y), vec2<f32>(0.0f, 0.0f));
        let x_1179 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1178.x, x_1178.y, x_1179.z, x_1179.w);
        let x_1181 : vec4<f32> = u_xlat6;
        let x_1184 : vec4<f32> = u_xlat6;
        let x_1187 : vec4<f32> = u_xlat7;
        let x_1189 : vec2<f32> = ((-(vec2<f32>(x_1181.x, x_1181.y)) * vec2<f32>(x_1184.x, x_1184.y)) + vec2<f32>(x_1187.y, x_1187.w));
        let x_1190 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1189.x, x_1189.y, x_1190.z, x_1190.w);
        let x_1192 : vec2<f32> = u_xlat58;
        u_xlat58 = (x_1192 + vec2<f32>(1.0f, 1.0f));
        let x_1194 : vec4<f32> = u_xlat6;
        let x_1196 : vec2<f32> = (vec2<f32>(x_1194.x, x_1194.y) + vec2<f32>(1.0f, 1.0f));
        let x_1197 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1196.x, x_1196.y, x_1197.z, x_1197.w);
        let x_1199 : vec4<f32> = u_xlat7;
        let x_1203 : vec2<f32> = (vec2<f32>(x_1199.x, x_1199.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1204 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1203.x, x_1203.y, x_1204.z, x_1204.w);
        let x_1206 : vec4<f32> = u_xlat8;
        let x_1208 : vec2<f32> = (vec2<f32>(x_1206.x, x_1206.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1209 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1208.x, x_1208.y, x_1209.z, x_1209.w);
        let x_1211 : vec2<f32> = u_xlat58;
        let x_1212 : vec2<f32> = (x_1211 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1213 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1212.x, x_1212.y, x_1213.z, x_1213.w);
        let x_1215 : vec4<f32> = u_xlat6;
        let x_1217 : vec2<f32> = (vec2<f32>(x_1215.x, x_1215.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1218 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1217.x, x_1217.y, x_1218.z, x_1218.w);
        let x_1220 : vec4<f32> = u_xlat7;
        let x_1222 : vec2<f32> = (vec2<f32>(x_1220.y, x_1220.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1223 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1222.x, x_1222.y, x_1223.z, x_1223.w);
        let x_1226 : f32 = u_xlat8.x;
        u_xlat9.z = x_1226;
        let x_1229 : f32 = u_xlat6.x;
        u_xlat9.w = x_1229;
        let x_1232 : f32 = u_xlat11.x;
        u_xlat10.z = x_1232;
        let x_1235 : f32 = u_xlat56.x;
        u_xlat10.w = x_1235;
        let x_1237 : vec4<f32> = u_xlat9;
        let x_1239 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1237.z, x_1237.w, x_1237.x, x_1237.z) + vec4<f32>(x_1239.z, x_1239.w, x_1239.x, x_1239.z));
        let x_1243 : f32 = u_xlat9.y;
        u_xlat8.z = x_1243;
        let x_1246 : f32 = u_xlat6.y;
        u_xlat8.w = x_1246;
        let x_1249 : f32 = u_xlat10.y;
        u_xlat11.z = x_1249;
        let x_1252 : f32 = u_xlat56.y;
        u_xlat11.w = x_1252;
        let x_1254 : vec4<f32> = u_xlat8;
        let x_1256 : vec4<f32> = u_xlat11;
        let x_1258 : vec3<f32> = (vec3<f32>(x_1254.z, x_1254.y, x_1254.w) + vec3<f32>(x_1256.z, x_1256.y, x_1256.w));
        let x_1259 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1258.x, x_1258.y, x_1258.z, x_1259.w);
        let x_1261 : vec4<f32> = u_xlat10;
        let x_1263 : vec4<f32> = u_xlat7;
        let x_1265 : vec3<f32> = (vec3<f32>(x_1261.x, x_1261.z, x_1261.w) / vec3<f32>(x_1263.z, x_1263.w, x_1263.y));
        let x_1266 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1265.x, x_1265.y, x_1265.z, x_1266.w);
        let x_1268 : vec4<f32> = u_xlat8;
        let x_1273 : vec3<f32> = (vec3<f32>(x_1268.x, x_1268.y, x_1268.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1274 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1273.x, x_1273.y, x_1273.z, x_1274.w);
        let x_1276 : vec4<f32> = u_xlat11;
        let x_1278 : vec4<f32> = u_xlat6;
        let x_1280 : vec3<f32> = (vec3<f32>(x_1276.z, x_1276.y, x_1276.w) / vec3<f32>(x_1278.x, x_1278.y, x_1278.z));
        let x_1281 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1280.x, x_1280.y, x_1280.z, x_1281.w);
        let x_1283 : vec4<f32> = u_xlat9;
        let x_1285 : vec3<f32> = (vec3<f32>(x_1283.x, x_1283.y, x_1283.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1286 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1285.x, x_1285.y, x_1285.z, x_1286.w);
        let x_1288 : vec4<f32> = u_xlat8;
        let x_1291 : vec4<f32> = x_1002.x_MainLightShadowmapSize;
        let x_1293 : vec3<f32> = (vec3<f32>(x_1288.y, x_1288.x, x_1288.z) * vec3<f32>(x_1291.x, x_1291.x, x_1291.x));
        let x_1294 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1293.x, x_1293.y, x_1293.z, x_1294.w);
        let x_1296 : vec4<f32> = u_xlat9;
        let x_1299 : vec4<f32> = x_1002.x_MainLightShadowmapSize;
        let x_1301 : vec3<f32> = (vec3<f32>(x_1296.x, x_1296.y, x_1296.z) * vec3<f32>(x_1299.y, x_1299.y, x_1299.y));
        let x_1302 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1301.x, x_1301.y, x_1301.z, x_1302.w);
        let x_1305 : f32 = u_xlat9.x;
        u_xlat8.w = x_1305;
        let x_1307 : vec3<f32> = u_xlat30;
        let x_1310 : vec4<f32> = x_1002.x_MainLightShadowmapSize;
        let x_1313 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1307.x, x_1307.y, x_1307.x, x_1307.y) * vec4<f32>(x_1310.x, x_1310.y, x_1310.x, x_1310.y)) + vec4<f32>(x_1313.y, x_1313.w, x_1313.x, x_1313.w));
        let x_1316 : vec3<f32> = u_xlat30;
        let x_1319 : vec4<f32> = x_1002.x_MainLightShadowmapSize;
        let x_1322 : vec4<f32> = u_xlat8;
        let x_1324 : vec2<f32> = ((vec2<f32>(x_1316.x, x_1316.y) * vec2<f32>(x_1319.x, x_1319.y)) + vec2<f32>(x_1322.z, x_1322.w));
        let x_1325 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1324.x, x_1324.y, x_1325.z, x_1325.w);
        let x_1328 : f32 = u_xlat8.y;
        u_xlat9.w = x_1328;
        let x_1330 : vec4<f32> = u_xlat9;
        let x_1331 : vec2<f32> = vec2<f32>(x_1330.y, x_1330.z);
        let x_1332 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1332.x, x_1331.x, x_1332.z, x_1331.y);
        let x_1334 : vec3<f32> = u_xlat30;
        let x_1337 : vec4<f32> = x_1002.x_MainLightShadowmapSize;
        let x_1340 : vec4<f32> = u_xlat8;
        u_xlat12 = ((vec4<f32>(x_1334.x, x_1334.y, x_1334.x, x_1334.y) * vec4<f32>(x_1337.x, x_1337.y, x_1337.x, x_1337.y)) + vec4<f32>(x_1340.x, x_1340.y, x_1340.z, x_1340.y));
        let x_1343 : vec3<f32> = u_xlat30;
        let x_1346 : vec4<f32> = x_1002.x_MainLightShadowmapSize;
        let x_1349 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1343.x, x_1343.y, x_1343.x, x_1343.y) * vec4<f32>(x_1346.x, x_1346.y, x_1346.x, x_1346.y)) + vec4<f32>(x_1349.w, x_1349.y, x_1349.w, x_1349.z));
        let x_1352 : vec3<f32> = u_xlat30;
        let x_1355 : vec4<f32> = x_1002.x_MainLightShadowmapSize;
        let x_1358 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1352.x, x_1352.y, x_1352.x, x_1352.y) * vec4<f32>(x_1355.x, x_1355.y, x_1355.x, x_1355.y)) + vec4<f32>(x_1358.x, x_1358.w, x_1358.z, x_1358.w));
        let x_1361 : vec4<f32> = u_xlat6;
        let x_1363 : vec4<f32> = u_xlat7;
        u_xlat13 = (vec4<f32>(x_1361.x, x_1361.x, x_1361.x, x_1361.y) * vec4<f32>(x_1363.z, x_1363.w, x_1363.y, x_1363.z));
        let x_1367 : vec4<f32> = u_xlat6;
        let x_1369 : vec4<f32> = u_xlat7;
        u_xlat14 = (vec4<f32>(x_1367.y, x_1367.y, x_1367.z, x_1367.z) * x_1369);
        let x_1372 : f32 = u_xlat6.z;
        let x_1374 : f32 = u_xlat7.y;
        u_xlat30.x = (x_1372 * x_1374);
        let x_1378 : vec4<f32> = u_xlat10;
        let x_1379 : vec2<f32> = vec2<f32>(x_1378.x, x_1378.y);
        let x_1381 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_1379.x, x_1379.y, x_1381);
        let x_1389 : vec3<f32> = txVec4;
        let x_1391 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1389.xy, x_1389.z);
        u_xlat55 = x_1391;
        let x_1393 : vec4<f32> = u_xlat10;
        let x_1394 : vec2<f32> = vec2<f32>(x_1393.z, x_1393.w);
        let x_1396 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_1394.x, x_1394.y, x_1396);
        let x_1404 : vec3<f32> = txVec5;
        let x_1406 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1404.xy, x_1404.z);
        u_xlat80 = x_1406;
        let x_1407 : f32 = u_xlat80;
        let x_1409 : f32 = u_xlat13.y;
        u_xlat80 = (x_1407 * x_1409);
        let x_1412 : f32 = u_xlat13.x;
        let x_1413 : f32 = u_xlat55;
        let x_1415 : f32 = u_xlat80;
        u_xlat55 = ((x_1412 * x_1413) + x_1415);
        let x_1418 : vec4<f32> = u_xlat11;
        let x_1419 : vec2<f32> = vec2<f32>(x_1418.x, x_1418.y);
        let x_1421 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_1419.x, x_1419.y, x_1421);
        let x_1428 : vec3<f32> = txVec6;
        let x_1430 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1428.xy, x_1428.z);
        u_xlat80 = x_1430;
        let x_1432 : f32 = u_xlat13.z;
        let x_1433 : f32 = u_xlat80;
        let x_1435 : f32 = u_xlat55;
        u_xlat55 = ((x_1432 * x_1433) + x_1435);
        let x_1438 : vec4<f32> = u_xlat9;
        let x_1439 : vec2<f32> = vec2<f32>(x_1438.x, x_1438.y);
        let x_1441 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_1439.x, x_1439.y, x_1441);
        let x_1448 : vec3<f32> = txVec7;
        let x_1450 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1448.xy, x_1448.z);
        u_xlat80 = x_1450;
        let x_1452 : f32 = u_xlat13.w;
        let x_1453 : f32 = u_xlat80;
        let x_1455 : f32 = u_xlat55;
        u_xlat55 = ((x_1452 * x_1453) + x_1455);
        let x_1458 : vec4<f32> = u_xlat12;
        let x_1459 : vec2<f32> = vec2<f32>(x_1458.x, x_1458.y);
        let x_1461 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_1459.x, x_1459.y, x_1461);
        let x_1468 : vec3<f32> = txVec8;
        let x_1470 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1468.xy, x_1468.z);
        u_xlat80 = x_1470;
        let x_1472 : f32 = u_xlat14.x;
        let x_1473 : f32 = u_xlat80;
        let x_1475 : f32 = u_xlat55;
        u_xlat55 = ((x_1472 * x_1473) + x_1475);
        let x_1478 : vec4<f32> = u_xlat12;
        let x_1479 : vec2<f32> = vec2<f32>(x_1478.z, x_1478.w);
        let x_1481 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_1479.x, x_1479.y, x_1481);
        let x_1488 : vec3<f32> = txVec9;
        let x_1490 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1488.xy, x_1488.z);
        u_xlat80 = x_1490;
        let x_1492 : f32 = u_xlat14.y;
        let x_1493 : f32 = u_xlat80;
        let x_1495 : f32 = u_xlat55;
        u_xlat55 = ((x_1492 * x_1493) + x_1495);
        let x_1498 : vec4<f32> = u_xlat9;
        let x_1499 : vec2<f32> = vec2<f32>(x_1498.z, x_1498.w);
        let x_1501 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_1499.x, x_1499.y, x_1501);
        let x_1508 : vec3<f32> = txVec10;
        let x_1510 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1508.xy, x_1508.z);
        u_xlat80 = x_1510;
        let x_1512 : f32 = u_xlat14.z;
        let x_1513 : f32 = u_xlat80;
        let x_1515 : f32 = u_xlat55;
        u_xlat55 = ((x_1512 * x_1513) + x_1515);
        let x_1518 : vec4<f32> = u_xlat8;
        let x_1519 : vec2<f32> = vec2<f32>(x_1518.x, x_1518.y);
        let x_1521 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_1519.x, x_1519.y, x_1521);
        let x_1528 : vec3<f32> = txVec11;
        let x_1530 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1528.xy, x_1528.z);
        u_xlat80 = x_1530;
        let x_1532 : f32 = u_xlat14.w;
        let x_1533 : f32 = u_xlat80;
        let x_1535 : f32 = u_xlat55;
        u_xlat55 = ((x_1532 * x_1533) + x_1535);
        let x_1538 : vec4<f32> = u_xlat8;
        let x_1539 : vec2<f32> = vec2<f32>(x_1538.z, x_1538.w);
        let x_1541 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_1539.x, x_1539.y, x_1541);
        let x_1548 : vec3<f32> = txVec12;
        let x_1550 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1548.xy, x_1548.z);
        u_xlat80 = x_1550;
        let x_1552 : f32 = u_xlat30.x;
        let x_1553 : f32 = u_xlat80;
        let x_1555 : f32 = u_xlat55;
        u_xlat5.x = ((x_1552 * x_1553) + x_1555);
      } else {
        let x_1559 : vec4<f32> = vs_TEXCOORD8;
        let x_1562 : vec4<f32> = x_1002.x_MainLightShadowmapSize;
        let x_1565 : vec2<f32> = ((vec2<f32>(x_1559.x, x_1559.y) * vec2<f32>(x_1562.z, x_1562.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1566 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_1565.x, x_1565.y, x_1566.z);
        let x_1568 : vec3<f32> = u_xlat30;
        let x_1570 : vec2<f32> = floor(vec2<f32>(x_1568.x, x_1568.y));
        let x_1571 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_1570.x, x_1570.y, x_1571.z);
        let x_1573 : vec4<f32> = vs_TEXCOORD8;
        let x_1576 : vec4<f32> = x_1002.x_MainLightShadowmapSize;
        let x_1579 : vec3<f32> = u_xlat30;
        let x_1582 : vec2<f32> = ((vec2<f32>(x_1573.x, x_1573.y) * vec2<f32>(x_1576.z, x_1576.w)) + -(vec2<f32>(x_1579.x, x_1579.y)));
        let x_1583 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1582.x, x_1582.y, x_1583.z, x_1583.w);
        let x_1585 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1585.x, x_1585.x, x_1585.y, x_1585.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1588 : vec4<f32> = u_xlat7;
        let x_1590 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1588.x, x_1588.x, x_1588.z, x_1588.z) * vec4<f32>(x_1590.x, x_1590.x, x_1590.z, x_1590.z));
        let x_1593 : vec4<f32> = u_xlat8;
        let x_1597 : vec2<f32> = (vec2<f32>(x_1593.y, x_1593.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1598 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1598.x, x_1597.x, x_1598.z, x_1597.y);
        let x_1600 : vec4<f32> = u_xlat8;
        let x_1603 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_1600.x, x_1600.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1603.x, x_1603.y)));
        let x_1607 : vec4<f32> = u_xlat6;
        let x_1610 : vec2<f32> = (-(vec2<f32>(x_1607.x, x_1607.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1611 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1610.x, x_1611.y, x_1610.y, x_1611.w);
        let x_1613 : vec4<f32> = u_xlat6;
        let x_1615 : vec2<f32> = min(vec2<f32>(x_1613.x, x_1613.y), vec2<f32>(0.0f, 0.0f));
        let x_1616 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1615.x, x_1615.y, x_1616.z, x_1616.w);
        let x_1618 : vec4<f32> = u_xlat8;
        let x_1621 : vec4<f32> = u_xlat8;
        let x_1624 : vec4<f32> = u_xlat7;
        let x_1626 : vec2<f32> = ((-(vec2<f32>(x_1618.x, x_1618.y)) * vec2<f32>(x_1621.x, x_1621.y)) + vec2<f32>(x_1624.x, x_1624.z));
        let x_1627 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1626.x, x_1627.y, x_1626.y, x_1627.w);
        let x_1629 : vec4<f32> = u_xlat6;
        let x_1631 : vec2<f32> = max(vec2<f32>(x_1629.x, x_1629.y), vec2<f32>(0.0f, 0.0f));
        let x_1632 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1631.x, x_1631.y, x_1632.z, x_1632.w);
        let x_1634 : vec4<f32> = u_xlat8;
        let x_1637 : vec4<f32> = u_xlat8;
        let x_1640 : vec4<f32> = u_xlat7;
        let x_1642 : vec2<f32> = ((-(vec2<f32>(x_1634.x, x_1634.y)) * vec2<f32>(x_1637.x, x_1637.y)) + vec2<f32>(x_1640.y, x_1640.w));
        let x_1643 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1643.x, x_1642.x, x_1643.z, x_1642.y);
        let x_1645 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1645 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1649 : f32 = u_xlat7.y;
        u_xlat8.z = (x_1649 * 0.08163200318813323975f);
        let x_1653 : vec2<f32> = u_xlat56;
        let x_1656 : vec2<f32> = (vec2<f32>(x_1653.y, x_1653.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1657 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1656.x, x_1656.y, x_1657.z, x_1657.w);
        let x_1659 : vec4<f32> = u_xlat7;
        u_xlat56 = (vec2<f32>(x_1659.x, x_1659.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1663 : f32 = u_xlat7.w;
        u_xlat10.z = (x_1663 * 0.08163200318813323975f);
        let x_1667 : f32 = u_xlat10.y;
        u_xlat8.x = x_1667;
        let x_1669 : vec4<f32> = u_xlat6;
        let x_1676 : vec2<f32> = ((vec2<f32>(x_1669.x, x_1669.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1677 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1677.x, x_1676.x, x_1677.z, x_1676.y);
        let x_1679 : vec4<f32> = u_xlat6;
        let x_1683 : vec2<f32> = ((vec2<f32>(x_1679.x, x_1679.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1684 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1683.x, x_1684.y, x_1683.y, x_1684.w);
        let x_1687 : f32 = u_xlat56.x;
        u_xlat7.y = x_1687;
        let x_1690 : f32 = u_xlat9.y;
        u_xlat7.w = x_1690;
        let x_1692 : vec4<f32> = u_xlat7;
        let x_1693 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1692 + x_1693);
        let x_1695 : vec4<f32> = u_xlat6;
        let x_1698 : vec2<f32> = ((vec2<f32>(x_1695.y, x_1695.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1699 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1699.x, x_1698.x, x_1699.z, x_1698.y);
        let x_1701 : vec4<f32> = u_xlat6;
        let x_1704 : vec2<f32> = ((vec2<f32>(x_1701.y, x_1701.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1705 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1704.x, x_1705.y, x_1704.y, x_1705.w);
        let x_1708 : f32 = u_xlat56.y;
        u_xlat9.y = x_1708;
        let x_1710 : vec4<f32> = u_xlat9;
        let x_1711 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1710 + x_1711);
        let x_1713 : vec4<f32> = u_xlat7;
        let x_1714 : vec4<f32> = u_xlat8;
        u_xlat7 = (x_1713 / x_1714);
        let x_1716 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1716 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1722 : vec4<f32> = u_xlat9;
        let x_1723 : vec4<f32> = u_xlat6;
        u_xlat9 = (x_1722 / x_1723);
        let x_1725 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1725 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1727 : vec4<f32> = u_xlat7;
        let x_1730 : vec4<f32> = x_1002.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1727.w, x_1727.x, x_1727.y, x_1727.z) * vec4<f32>(x_1730.x, x_1730.x, x_1730.x, x_1730.x));
        let x_1733 : vec4<f32> = u_xlat9;
        let x_1736 : vec4<f32> = x_1002.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1733.x, x_1733.w, x_1733.y, x_1733.z) * vec4<f32>(x_1736.y, x_1736.y, x_1736.y, x_1736.y));
        let x_1739 : vec4<f32> = u_xlat7;
        let x_1740 : vec3<f32> = vec3<f32>(x_1739.y, x_1739.z, x_1739.w);
        let x_1741 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1740.x, x_1741.y, x_1740.y, x_1740.z);
        let x_1744 : f32 = u_xlat9.x;
        u_xlat10.y = x_1744;
        let x_1746 : vec3<f32> = u_xlat30;
        let x_1749 : vec4<f32> = x_1002.x_MainLightShadowmapSize;
        let x_1752 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1746.x, x_1746.y, x_1746.x, x_1746.y) * vec4<f32>(x_1749.x, x_1749.y, x_1749.x, x_1749.y)) + vec4<f32>(x_1752.x, x_1752.y, x_1752.z, x_1752.y));
        let x_1755 : vec3<f32> = u_xlat30;
        let x_1758 : vec4<f32> = x_1002.x_MainLightShadowmapSize;
        let x_1761 : vec4<f32> = u_xlat10;
        let x_1763 : vec2<f32> = ((vec2<f32>(x_1755.x, x_1755.y) * vec2<f32>(x_1758.x, x_1758.y)) + vec2<f32>(x_1761.w, x_1761.y));
        let x_1764 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1763.x, x_1763.y, x_1764.z, x_1764.w);
        let x_1767 : f32 = u_xlat10.y;
        u_xlat7.y = x_1767;
        let x_1770 : f32 = u_xlat9.z;
        u_xlat10.y = x_1770;
        let x_1772 : vec3<f32> = u_xlat30;
        let x_1775 : vec4<f32> = x_1002.x_MainLightShadowmapSize;
        let x_1778 : vec4<f32> = u_xlat10;
        u_xlat13 = ((vec4<f32>(x_1772.x, x_1772.y, x_1772.x, x_1772.y) * vec4<f32>(x_1775.x, x_1775.y, x_1775.x, x_1775.y)) + vec4<f32>(x_1778.x, x_1778.y, x_1778.z, x_1778.y));
        let x_1782 : vec3<f32> = u_xlat30;
        let x_1785 : vec4<f32> = x_1002.x_MainLightShadowmapSize;
        let x_1788 : vec4<f32> = u_xlat10;
        u_xlat62 = ((vec2<f32>(x_1782.x, x_1782.y) * vec2<f32>(x_1785.x, x_1785.y)) + vec2<f32>(x_1788.w, x_1788.y));
        let x_1792 : f32 = u_xlat10.y;
        u_xlat7.z = x_1792;
        let x_1794 : vec3<f32> = u_xlat30;
        let x_1797 : vec4<f32> = x_1002.x_MainLightShadowmapSize;
        let x_1800 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1794.x, x_1794.y, x_1794.x, x_1794.y) * vec4<f32>(x_1797.x, x_1797.y, x_1797.x, x_1797.y)) + vec4<f32>(x_1800.x, x_1800.y, x_1800.x, x_1800.z));
        let x_1804 : f32 = u_xlat9.w;
        u_xlat10.y = x_1804;
        let x_1807 : vec3<f32> = u_xlat30;
        let x_1810 : vec4<f32> = x_1002.x_MainLightShadowmapSize;
        let x_1813 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1807.x, x_1807.y, x_1807.x, x_1807.y) * vec4<f32>(x_1810.x, x_1810.y, x_1810.x, x_1810.y)) + vec4<f32>(x_1813.x, x_1813.y, x_1813.z, x_1813.y));
        let x_1817 : vec3<f32> = u_xlat30;
        let x_1820 : vec4<f32> = x_1002.x_MainLightShadowmapSize;
        let x_1823 : vec4<f32> = u_xlat10;
        u_xlat32 = ((vec2<f32>(x_1817.x, x_1817.y) * vec2<f32>(x_1820.x, x_1820.y)) + vec2<f32>(x_1823.w, x_1823.y));
        let x_1827 : f32 = u_xlat10.y;
        u_xlat7.w = x_1827;
        let x_1830 : vec3<f32> = u_xlat30;
        let x_1833 : vec4<f32> = x_1002.x_MainLightShadowmapSize;
        let x_1836 : vec4<f32> = u_xlat7;
        let x_1838 : vec2<f32> = ((vec2<f32>(x_1830.x, x_1830.y) * vec2<f32>(x_1833.x, x_1833.y)) + vec2<f32>(x_1836.x, x_1836.w));
        let x_1839 : vec4<f32> = u_xlat16;
        u_xlat16 = vec4<f32>(x_1838.x, x_1838.y, x_1839.z, x_1839.w);
        let x_1841 : vec4<f32> = u_xlat10;
        let x_1842 : vec3<f32> = vec3<f32>(x_1841.x, x_1841.z, x_1841.w);
        let x_1843 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1842.x, x_1843.y, x_1842.y, x_1842.z);
        let x_1845 : vec3<f32> = u_xlat30;
        let x_1848 : vec4<f32> = x_1002.x_MainLightShadowmapSize;
        let x_1851 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1845.x, x_1845.y, x_1845.x, x_1845.y) * vec4<f32>(x_1848.x, x_1848.y, x_1848.x, x_1848.y)) + vec4<f32>(x_1851.x, x_1851.y, x_1851.z, x_1851.y));
        let x_1855 : vec3<f32> = u_xlat30;
        let x_1858 : vec4<f32> = x_1002.x_MainLightShadowmapSize;
        let x_1861 : vec4<f32> = u_xlat9;
        u_xlat59 = ((vec2<f32>(x_1855.x, x_1855.y) * vec2<f32>(x_1858.x, x_1858.y)) + vec2<f32>(x_1861.w, x_1861.y));
        let x_1865 : f32 = u_xlat7.x;
        u_xlat9.x = x_1865;
        let x_1867 : vec3<f32> = u_xlat30;
        let x_1870 : vec4<f32> = x_1002.x_MainLightShadowmapSize;
        let x_1873 : vec4<f32> = u_xlat9;
        let x_1875 : vec2<f32> = ((vec2<f32>(x_1867.x, x_1867.y) * vec2<f32>(x_1870.x, x_1870.y)) + vec2<f32>(x_1873.x, x_1873.y));
        let x_1876 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_1875.x, x_1875.y, x_1876.z);
        let x_1879 : vec4<f32> = u_xlat6;
        let x_1881 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1879.x, x_1879.x, x_1879.x, x_1879.x) * x_1881);
        let x_1884 : vec4<f32> = u_xlat6;
        let x_1886 : vec4<f32> = u_xlat8;
        u_xlat18 = (vec4<f32>(x_1884.y, x_1884.y, x_1884.y, x_1884.y) * x_1886);
        let x_1889 : vec4<f32> = u_xlat6;
        let x_1891 : vec4<f32> = u_xlat8;
        u_xlat19 = (vec4<f32>(x_1889.z, x_1889.z, x_1889.z, x_1889.z) * x_1891);
        let x_1893 : vec4<f32> = u_xlat6;
        let x_1895 : vec4<f32> = u_xlat8;
        u_xlat6 = (vec4<f32>(x_1893.w, x_1893.w, x_1893.w, x_1893.w) * x_1895);
        let x_1898 : vec4<f32> = u_xlat11;
        let x_1899 : vec2<f32> = vec2<f32>(x_1898.x, x_1898.y);
        let x_1901 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1899.x, x_1899.y, x_1901);
        let x_1908 : vec3<f32> = txVec13;
        let x_1910 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1908.xy, x_1908.z);
        u_xlat80 = x_1910;
        let x_1912 : vec4<f32> = u_xlat11;
        let x_1913 : vec2<f32> = vec2<f32>(x_1912.z, x_1912.w);
        let x_1915 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1913.x, x_1913.y, x_1915);
        let x_1922 : vec3<f32> = txVec14;
        let x_1924 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1922.xy, x_1922.z);
        u_xlat7.x = x_1924;
        let x_1927 : f32 = u_xlat7.x;
        let x_1929 : f32 = u_xlat17.y;
        u_xlat7.x = (x_1927 * x_1929);
        let x_1933 : f32 = u_xlat17.x;
        let x_1934 : f32 = u_xlat80;
        let x_1937 : f32 = u_xlat7.x;
        u_xlat80 = ((x_1933 * x_1934) + x_1937);
        let x_1940 : vec4<f32> = u_xlat12;
        let x_1941 : vec2<f32> = vec2<f32>(x_1940.x, x_1940.y);
        let x_1943 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1941.x, x_1941.y, x_1943);
        let x_1950 : vec3<f32> = txVec15;
        let x_1952 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1950.xy, x_1950.z);
        u_xlat7.x = x_1952;
        let x_1955 : f32 = u_xlat17.z;
        let x_1957 : f32 = u_xlat7.x;
        let x_1959 : f32 = u_xlat80;
        u_xlat80 = ((x_1955 * x_1957) + x_1959);
        let x_1962 : vec4<f32> = u_xlat14;
        let x_1963 : vec2<f32> = vec2<f32>(x_1962.x, x_1962.y);
        let x_1965 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1963.x, x_1963.y, x_1965);
        let x_1972 : vec3<f32> = txVec16;
        let x_1974 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1972.xy, x_1972.z);
        u_xlat7.x = x_1974;
        let x_1977 : f32 = u_xlat17.w;
        let x_1979 : f32 = u_xlat7.x;
        let x_1981 : f32 = u_xlat80;
        u_xlat80 = ((x_1977 * x_1979) + x_1981);
        let x_1984 : vec4<f32> = u_xlat13;
        let x_1985 : vec2<f32> = vec2<f32>(x_1984.x, x_1984.y);
        let x_1987 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1985.x, x_1985.y, x_1987);
        let x_1994 : vec3<f32> = txVec17;
        let x_1996 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1994.xy, x_1994.z);
        u_xlat7.x = x_1996;
        let x_1999 : f32 = u_xlat18.x;
        let x_2001 : f32 = u_xlat7.x;
        let x_2003 : f32 = u_xlat80;
        u_xlat80 = ((x_1999 * x_2001) + x_2003);
        let x_2006 : vec4<f32> = u_xlat13;
        let x_2007 : vec2<f32> = vec2<f32>(x_2006.z, x_2006.w);
        let x_2009 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_2007.x, x_2007.y, x_2009);
        let x_2016 : vec3<f32> = txVec18;
        let x_2018 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2016.xy, x_2016.z);
        u_xlat7.x = x_2018;
        let x_2021 : f32 = u_xlat18.y;
        let x_2023 : f32 = u_xlat7.x;
        let x_2025 : f32 = u_xlat80;
        u_xlat80 = ((x_2021 * x_2023) + x_2025);
        let x_2028 : vec2<f32> = u_xlat62;
        let x_2030 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_2028.x, x_2028.y, x_2030);
        let x_2037 : vec3<f32> = txVec19;
        let x_2039 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2037.xy, x_2037.z);
        u_xlat7.x = x_2039;
        let x_2042 : f32 = u_xlat18.z;
        let x_2044 : f32 = u_xlat7.x;
        let x_2046 : f32 = u_xlat80;
        u_xlat80 = ((x_2042 * x_2044) + x_2046);
        let x_2049 : vec4<f32> = u_xlat14;
        let x_2050 : vec2<f32> = vec2<f32>(x_2049.z, x_2049.w);
        let x_2052 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_2050.x, x_2050.y, x_2052);
        let x_2059 : vec3<f32> = txVec20;
        let x_2061 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2059.xy, x_2059.z);
        u_xlat7.x = x_2061;
        let x_2064 : f32 = u_xlat18.w;
        let x_2066 : f32 = u_xlat7.x;
        let x_2068 : f32 = u_xlat80;
        u_xlat80 = ((x_2064 * x_2066) + x_2068);
        let x_2071 : vec4<f32> = u_xlat15;
        let x_2072 : vec2<f32> = vec2<f32>(x_2071.x, x_2071.y);
        let x_2074 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_2072.x, x_2072.y, x_2074);
        let x_2081 : vec3<f32> = txVec21;
        let x_2083 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2081.xy, x_2081.z);
        u_xlat7.x = x_2083;
        let x_2086 : f32 = u_xlat19.x;
        let x_2088 : f32 = u_xlat7.x;
        let x_2090 : f32 = u_xlat80;
        u_xlat80 = ((x_2086 * x_2088) + x_2090);
        let x_2093 : vec4<f32> = u_xlat15;
        let x_2094 : vec2<f32> = vec2<f32>(x_2093.z, x_2093.w);
        let x_2096 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_2094.x, x_2094.y, x_2096);
        let x_2103 : vec3<f32> = txVec22;
        let x_2105 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2103.xy, x_2103.z);
        u_xlat7.x = x_2105;
        let x_2108 : f32 = u_xlat19.y;
        let x_2110 : f32 = u_xlat7.x;
        let x_2112 : f32 = u_xlat80;
        u_xlat80 = ((x_2108 * x_2110) + x_2112);
        let x_2115 : vec2<f32> = u_xlat32;
        let x_2117 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_2115.x, x_2115.y, x_2117);
        let x_2124 : vec3<f32> = txVec23;
        let x_2126 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2124.xy, x_2124.z);
        u_xlat7.x = x_2126;
        let x_2129 : f32 = u_xlat19.z;
        let x_2131 : f32 = u_xlat7.x;
        let x_2133 : f32 = u_xlat80;
        u_xlat80 = ((x_2129 * x_2131) + x_2133);
        let x_2136 : vec4<f32> = u_xlat16;
        let x_2137 : vec2<f32> = vec2<f32>(x_2136.x, x_2136.y);
        let x_2139 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_2137.x, x_2137.y, x_2139);
        let x_2146 : vec3<f32> = txVec24;
        let x_2148 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2146.xy, x_2146.z);
        u_xlat7.x = x_2148;
        let x_2151 : f32 = u_xlat19.w;
        let x_2153 : f32 = u_xlat7.x;
        let x_2155 : f32 = u_xlat80;
        u_xlat80 = ((x_2151 * x_2153) + x_2155);
        let x_2158 : vec4<f32> = u_xlat10;
        let x_2159 : vec2<f32> = vec2<f32>(x_2158.x, x_2158.y);
        let x_2161 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_2159.x, x_2159.y, x_2161);
        let x_2168 : vec3<f32> = txVec25;
        let x_2170 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2168.xy, x_2168.z);
        u_xlat7.x = x_2170;
        let x_2173 : f32 = u_xlat6.x;
        let x_2175 : f32 = u_xlat7.x;
        let x_2177 : f32 = u_xlat80;
        u_xlat80 = ((x_2173 * x_2175) + x_2177);
        let x_2180 : vec4<f32> = u_xlat10;
        let x_2181 : vec2<f32> = vec2<f32>(x_2180.z, x_2180.w);
        let x_2183 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_2181.x, x_2181.y, x_2183);
        let x_2190 : vec3<f32> = txVec26;
        let x_2192 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2190.xy, x_2190.z);
        u_xlat6.x = x_2192;
        let x_2195 : f32 = u_xlat6.y;
        let x_2197 : f32 = u_xlat6.x;
        let x_2199 : f32 = u_xlat80;
        u_xlat80 = ((x_2195 * x_2197) + x_2199);
        let x_2202 : vec2<f32> = u_xlat59;
        let x_2204 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_2202.x, x_2202.y, x_2204);
        let x_2211 : vec3<f32> = txVec27;
        let x_2213 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2211.xy, x_2211.z);
        u_xlat6.x = x_2213;
        let x_2216 : f32 = u_xlat6.z;
        let x_2218 : f32 = u_xlat6.x;
        let x_2220 : f32 = u_xlat80;
        u_xlat80 = ((x_2216 * x_2218) + x_2220);
        let x_2223 : vec3<f32> = u_xlat30;
        let x_2224 : vec2<f32> = vec2<f32>(x_2223.x, x_2223.y);
        let x_2226 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_2224.x, x_2224.y, x_2226);
        let x_2233 : vec3<f32> = txVec28;
        let x_2235 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2233.xy, x_2233.z);
        u_xlat30.x = x_2235;
        let x_2238 : f32 = u_xlat6.w;
        let x_2240 : f32 = u_xlat30.x;
        let x_2242 : f32 = u_xlat80;
        u_xlat5.x = ((x_2238 * x_2240) + x_2242);
      }
    }
  } else {
    let x_2247 : vec4<f32> = vs_TEXCOORD8;
    let x_2248 : vec2<f32> = vec2<f32>(x_2247.x, x_2247.y);
    let x_2250 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_2248.x, x_2248.y, x_2250);
    let x_2257 : vec3<f32> = txVec29;
    let x_2259 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2257.xy, x_2257.z);
    u_xlat5.x = x_2259;
  }
  let x_2262 : f32 = x_1002.x_MainLightShadowParams.x;
  u_xlat30.x = (-(x_2262) + 1.0f);
  let x_2267 : f32 = u_xlat5.x;
  let x_2269 : f32 = x_1002.x_MainLightShadowParams.x;
  let x_2272 : f32 = u_xlat30.x;
  u_xlat5.x = ((x_2267 * x_2269) + x_2272);
  let x_2276 : f32 = vs_TEXCOORD8.z;
  u_xlatb30 = (0.0f >= x_2276);
  let x_2280 : f32 = vs_TEXCOORD8.z;
  u_xlatb55 = (x_2280 >= 1.0f);
  let x_2282 : bool = u_xlatb55;
  let x_2283 : bool = u_xlatb30;
  u_xlatb30 = (x_2282 | x_2283);
  let x_2285 : bool = u_xlatb30;
  if (x_2285) {
    x_2287 = 1.0f;
  } else {
    let x_2292 : f32 = u_xlat5.x;
    x_2287 = x_2292;
  }
  let x_2293 : f32 = x_2287;
  u_xlat5.x = x_2293;
  let x_2295 : vec3<f32> = vs_TEXCOORD7;
  let x_2298 : vec3<f32> = x_113.x_WorldSpaceCameraPos;
  u_xlat30 = (x_2295 + -(x_2298));
  let x_2301 : vec3<f32> = u_xlat30;
  let x_2302 : vec3<f32> = u_xlat30;
  u_xlat30.x = dot(x_2301, x_2302);
  let x_2306 : f32 = u_xlat30.x;
  let x_2308 : f32 = x_1002.x_MainLightShadowParams.z;
  let x_2311 : f32 = x_1002.x_MainLightShadowParams.w;
  u_xlat55 = ((x_2306 * x_2308) + x_2311);
  let x_2313 : f32 = u_xlat55;
  u_xlat55 = clamp(x_2313, 0.0f, 1.0f);
  let x_2316 : f32 = u_xlat5.x;
  u_xlat80 = (-(x_2316) + 1.0f);
  let x_2319 : f32 = u_xlat55;
  let x_2320 : f32 = u_xlat80;
  let x_2323 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_2319 * x_2320) + x_2323);
  let x_2327 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_2327;
  let x_2330 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_2330;
  let x_2333 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_2333;
  let x_2335 : vec4<f32> = u_xlat6;
  let x_2338 : vec4<f32> = u_xlat1;
  u_xlat55 = dot(-(vec3<f32>(x_2335.x, x_2335.y, x_2335.z)), vec3<f32>(x_2338.x, x_2338.y, x_2338.z));
  let x_2341 : f32 = u_xlat55;
  let x_2342 : f32 = u_xlat55;
  u_xlat55 = (x_2341 + x_2342);
  let x_2344 : vec4<f32> = u_xlat1;
  let x_2346 : f32 = u_xlat55;
  let x_2350 : vec4<f32> = u_xlat6;
  let x_2353 : vec3<f32> = ((vec3<f32>(x_2344.x, x_2344.y, x_2344.z) * -(vec3<f32>(x_2346, x_2346, x_2346))) + -(vec3<f32>(x_2350.x, x_2350.y, x_2350.z)));
  let x_2354 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2353.x, x_2353.y, x_2353.z, x_2354.w);
  let x_2356 : vec4<f32> = u_xlat1;
  let x_2358 : vec4<f32> = u_xlat6;
  u_xlat55 = dot(vec3<f32>(x_2356.x, x_2356.y, x_2356.z), vec3<f32>(x_2358.x, x_2358.y, x_2358.z));
  let x_2361 : f32 = u_xlat55;
  u_xlat55 = clamp(x_2361, 0.0f, 1.0f);
  let x_2363 : f32 = u_xlat55;
  u_xlat55 = (-(x_2363) + 1.0f);
  let x_2366 : f32 = u_xlat55;
  let x_2367 : f32 = u_xlat55;
  u_xlat55 = (x_2366 * x_2367);
  let x_2369 : f32 = u_xlat55;
  let x_2370 : f32 = u_xlat55;
  u_xlat55 = (x_2369 * x_2370);
  let x_2373 : f32 = u_xlat0.x;
  u_xlat80 = ((-(x_2373) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2380 : f32 = u_xlat0.x;
  let x_2381 : f32 = u_xlat80;
  u_xlat0.x = (x_2380 * x_2381);
  let x_2385 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2385 * 6.0f);
  let x_2397 : vec4<f32> = u_xlat7;
  let x_2400 : f32 = u_xlat0.x;
  let x_2401 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2397.x, x_2397.y, x_2397.z), x_2400);
  u_xlat7 = x_2401;
  let x_2403 : f32 = u_xlat7.w;
  u_xlat0.x = (x_2403 + -1.0f);
  let x_2411 : f32 = x_2409.unity_SpecCube0_HDR.w;
  let x_2413 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2411 * x_2413) + 1.0f);
  let x_2418 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2418, 0.0f);
  let x_2422 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2422);
  let x_2426 : f32 = u_xlat0.x;
  let x_2428 : f32 = x_2409.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2426 * x_2428);
  let x_2432 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2432);
  let x_2436 : f32 = u_xlat0.x;
  let x_2438 : f32 = x_2409.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2436 * x_2438);
  let x_2441 : vec4<f32> = u_xlat7;
  let x_2443 : vec3<f32> = u_xlat0;
  let x_2445 : vec3<f32> = (vec3<f32>(x_2441.x, x_2441.y, x_2441.z) * vec3<f32>(x_2443.x, x_2443.x, x_2443.x));
  let x_2446 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2445.x, x_2445.y, x_2445.z, x_2446.w);
  let x_2448 : f32 = u_xlat50;
  let x_2450 : f32 = u_xlat50;
  let x_2454 : vec2<f32> = ((vec2<f32>(x_2448, x_2448) * vec2<f32>(x_2450, x_2450)) + vec2<f32>(-1.0f, 1.0f));
  let x_2455 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2454.x, x_2455.y, x_2454.y);
  let x_2458 : f32 = u_xlat0.z;
  u_xlat50 = (1.0f / x_2458);
  let x_2460 : vec4<f32> = u_xlat4;
  let x_2463 : vec4<f32> = u_xlat3;
  let x_2465 : vec3<f32> = (-(vec3<f32>(x_2460.x, x_2460.y, x_2460.z)) + vec3<f32>(x_2463.x, x_2463.x, x_2463.x));
  let x_2466 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2465.x, x_2465.y, x_2465.z, x_2466.w);
  let x_2468 : f32 = u_xlat55;
  let x_2470 : vec4<f32> = u_xlat8;
  let x_2473 : vec4<f32> = u_xlat4;
  let x_2475 : vec3<f32> = ((vec3<f32>(x_2468, x_2468, x_2468) * vec3<f32>(x_2470.x, x_2470.y, x_2470.z)) + vec3<f32>(x_2473.x, x_2473.y, x_2473.z));
  let x_2476 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2475.x, x_2475.y, x_2475.z, x_2476.w);
  let x_2478 : f32 = u_xlat50;
  let x_2480 : vec4<f32> = u_xlat8;
  let x_2482 : vec3<f32> = (vec3<f32>(x_2478, x_2478, x_2478) * vec3<f32>(x_2480.x, x_2480.y, x_2480.z));
  let x_2483 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2482.x, x_2482.y, x_2482.z, x_2483.w);
  let x_2485 : vec4<f32> = u_xlat7;
  let x_2487 : vec4<f32> = u_xlat8;
  let x_2489 : vec3<f32> = (vec3<f32>(x_2485.x, x_2485.y, x_2485.z) * vec3<f32>(x_2487.x, x_2487.y, x_2487.z));
  let x_2490 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2489.x, x_2489.y, x_2489.z, x_2490.w);
  let x_2492 : vec4<f32> = u_xlat2;
  let x_2494 : vec3<f32> = u_xlat28;
  let x_2496 : vec4<f32> = u_xlat7;
  let x_2498 : vec3<f32> = ((vec3<f32>(x_2492.x, x_2492.y, x_2492.z) * x_2494) + vec3<f32>(x_2496.x, x_2496.y, x_2496.z));
  let x_2499 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_2498.x, x_2498.y, x_2498.z, x_2499.w);
  let x_2502 : f32 = u_xlat5.x;
  let x_2504 : f32 = x_2409.unity_LightData.z;
  u_xlat50 = (x_2502 * x_2504);
  let x_2506 : vec4<f32> = u_xlat1;
  let x_2509 : vec4<f32> = x_113.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_2506.x, x_2506.y, x_2506.z), vec3<f32>(x_2509.x, x_2509.y, x_2509.z));
  let x_2514 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2514, 0.0f, 1.0f);
  let x_2517 : f32 = u_xlat50;
  let x_2519 : f32 = u_xlat3.x;
  u_xlat50 = (x_2517 * x_2519);
  let x_2521 : f32 = u_xlat50;
  let x_2524 : vec4<f32> = x_113.x_MainLightColor;
  let x_2526 : vec3<f32> = (vec3<f32>(x_2521, x_2521, x_2521) * vec3<f32>(x_2524.x, x_2524.y, x_2524.z));
  let x_2527 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2526.x, x_2527.y, x_2526.y, x_2526.z);
  let x_2529 : vec4<f32> = u_xlat6;
  let x_2532 : vec4<f32> = x_113.x_MainLightPosition;
  let x_2534 : vec3<f32> = (vec3<f32>(x_2529.x, x_2529.y, x_2529.z) + vec3<f32>(x_2532.x, x_2532.y, x_2532.z));
  let x_2535 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2534.x, x_2534.y, x_2534.z, x_2535.w);
  let x_2537 : vec4<f32> = u_xlat7;
  let x_2539 : vec4<f32> = u_xlat7;
  u_xlat50 = dot(vec3<f32>(x_2537.x, x_2537.y, x_2537.z), vec3<f32>(x_2539.x, x_2539.y, x_2539.z));
  let x_2542 : f32 = u_xlat50;
  u_xlat50 = max(x_2542, 1.17549435e-38f);
  let x_2545 : f32 = u_xlat50;
  u_xlat50 = inverseSqrt(x_2545);
  let x_2547 : f32 = u_xlat50;
  let x_2549 : vec4<f32> = u_xlat7;
  let x_2551 : vec3<f32> = (vec3<f32>(x_2547, x_2547, x_2547) * vec3<f32>(x_2549.x, x_2549.y, x_2549.z));
  let x_2552 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2551.x, x_2551.y, x_2551.z, x_2552.w);
  let x_2554 : vec4<f32> = u_xlat1;
  let x_2556 : vec4<f32> = u_xlat7;
  u_xlat50 = dot(vec3<f32>(x_2554.x, x_2554.y, x_2554.z), vec3<f32>(x_2556.x, x_2556.y, x_2556.z));
  let x_2559 : f32 = u_xlat50;
  u_xlat50 = clamp(x_2559, 0.0f, 1.0f);
  let x_2562 : vec4<f32> = x_113.x_MainLightPosition;
  let x_2564 : vec4<f32> = u_xlat7;
  u_xlat3.x = dot(vec3<f32>(x_2562.x, x_2562.y, x_2562.z), vec3<f32>(x_2564.x, x_2564.y, x_2564.z));
  let x_2569 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2569, 0.0f, 1.0f);
  let x_2572 : f32 = u_xlat50;
  let x_2573 : f32 = u_xlat50;
  u_xlat50 = (x_2572 * x_2573);
  let x_2575 : f32 = u_xlat50;
  let x_2577 : f32 = u_xlat0.x;
  u_xlat50 = ((x_2575 * x_2577) + 1.00001001358032226562f);
  let x_2582 : f32 = u_xlat3.x;
  let x_2584 : f32 = u_xlat3.x;
  u_xlat3.x = (x_2582 * x_2584);
  let x_2587 : f32 = u_xlat50;
  let x_2588 : f32 = u_xlat50;
  u_xlat50 = (x_2587 * x_2588);
  let x_2591 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_2591, 0.10000000149011611938f);
  let x_2595 : f32 = u_xlat50;
  let x_2597 : f32 = u_xlat3.x;
  u_xlat50 = (x_2595 * x_2597);
  let x_2599 : f32 = u_xlat79;
  let x_2600 : f32 = u_xlat50;
  u_xlat50 = (x_2599 * x_2600);
  let x_2602 : f32 = u_xlat77;
  let x_2603 : f32 = u_xlat50;
  u_xlat50 = (x_2602 / x_2603);
  let x_2605 : vec4<f32> = u_xlat4;
  let x_2607 : f32 = u_xlat50;
  let x_2610 : vec3<f32> = u_xlat28;
  let x_2611 : vec3<f32> = ((vec3<f32>(x_2605.x, x_2605.y, x_2605.z) * vec3<f32>(x_2607, x_2607, x_2607)) + x_2610);
  let x_2612 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2611.x, x_2611.y, x_2611.z, x_2612.w);
  let x_2614 : vec4<f32> = u_xlat5;
  let x_2616 : vec4<f32> = u_xlat7;
  let x_2618 : vec3<f32> = (vec3<f32>(x_2614.x, x_2614.z, x_2614.w) * vec3<f32>(x_2616.x, x_2616.y, x_2616.z));
  let x_2619 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2618.x, x_2619.y, x_2618.y, x_2618.z);
  let x_2622 : f32 = x_113.x_AdditionalLightsCount.x;
  let x_2624 : f32 = x_2409.unity_LightData.y;
  u_xlat50 = min(x_2622, x_2624);
  let x_2628 : f32 = u_xlat50;
  u_xlatu50 = bitcast<u32>(i32(x_2628));
  let x_2632 : f32 = u_xlat30.x;
  let x_2634 : f32 = x_1002.x_AdditionalShadowFadeParams.x;
  let x_2637 : f32 = x_1002.x_AdditionalShadowFadeParams.y;
  u_xlat3.x = ((x_2632 * x_2634) + x_2637);
  let x_2641 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2641, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2654 : u32 = u_xlatu_loop_1;
    let x_2655 : u32 = u_xlatu50;
    if ((x_2654 < x_2655)) {
    } else {
      break;
    }
    let x_2658 : u32 = u_xlatu_loop_1;
    u_xlatu81 = (x_2658 >> 2u);
    let x_2662 : u32 = u_xlatu_loop_1;
    u_xlati82 = bitcast<i32>((x_2662 & 3u));
    let x_2666 : u32 = u_xlatu81;
    let x_2669 : vec4<f32> = x_2409.unity_LightIndices[bitcast<i32>(x_2666)];
    let x_2679 : i32 = u_xlati82;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2684 : vec4<u32> = indexable[x_2679];
    u_xlat81 = dot(x_2669, bitcast<vec4<f32>>(x_2684));
    let x_2688 : f32 = u_xlat81;
    u_xlati81 = i32(x_2688);
    let x_2690 : vec3<f32> = vs_TEXCOORD7;
    let x_2701 : i32 = u_xlati81;
    let x_2703 : vec4<f32> = x_2700.x_AdditionalLightsPosition[x_2701];
    let x_2706 : i32 = u_xlati81;
    let x_2708 : vec4<f32> = x_2700.x_AdditionalLightsPosition[x_2706];
    let x_2710 : vec3<f32> = ((-(x_2690) * vec3<f32>(x_2703.w, x_2703.w, x_2703.w)) + vec3<f32>(x_2708.x, x_2708.y, x_2708.z));
    let x_2711 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2710.x, x_2710.y, x_2710.z, x_2711.w);
    let x_2714 : vec4<f32> = u_xlat8;
    let x_2716 : vec4<f32> = u_xlat8;
    u_xlat82 = dot(vec3<f32>(x_2714.x, x_2714.y, x_2714.z), vec3<f32>(x_2716.x, x_2716.y, x_2716.z));
    let x_2719 : f32 = u_xlat82;
    u_xlat82 = max(x_2719, 0.00006103515625f);
    let x_2722 : f32 = u_xlat82;
    u_xlat83 = inverseSqrt(x_2722);
    let x_2724 : f32 = u_xlat83;
    let x_2726 : vec4<f32> = u_xlat8;
    let x_2728 : vec3<f32> = (vec3<f32>(x_2724, x_2724, x_2724) * vec3<f32>(x_2726.x, x_2726.y, x_2726.z));
    let x_2729 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2728.x, x_2728.y, x_2728.z, x_2729.w);
    let x_2732 : f32 = u_xlat82;
    u_xlat84 = (1.0f / x_2732);
    let x_2734 : f32 = u_xlat82;
    let x_2735 : i32 = u_xlati81;
    let x_2737 : f32 = x_2700.x_AdditionalLightsAttenuation[x_2735].x;
    u_xlat82 = (x_2734 * x_2737);
    let x_2739 : f32 = u_xlat82;
    let x_2741 : f32 = u_xlat82;
    u_xlat82 = ((-(x_2739) * x_2741) + 1.0f);
    let x_2744 : f32 = u_xlat82;
    u_xlat82 = max(x_2744, 0.0f);
    let x_2746 : f32 = u_xlat82;
    let x_2747 : f32 = u_xlat82;
    u_xlat82 = (x_2746 * x_2747);
    let x_2749 : f32 = u_xlat82;
    let x_2750 : f32 = u_xlat84;
    u_xlat82 = (x_2749 * x_2750);
    let x_2752 : i32 = u_xlati81;
    let x_2754 : vec4<f32> = x_2700.x_AdditionalLightsSpotDir[x_2752];
    let x_2756 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2754.x, x_2754.y, x_2754.z), vec3<f32>(x_2756.x, x_2756.y, x_2756.z));
    let x_2759 : f32 = u_xlat84;
    let x_2760 : i32 = u_xlati81;
    let x_2762 : f32 = x_2700.x_AdditionalLightsAttenuation[x_2760].z;
    let x_2764 : i32 = u_xlati81;
    let x_2766 : f32 = x_2700.x_AdditionalLightsAttenuation[x_2764].w;
    u_xlat84 = ((x_2759 * x_2762) + x_2766);
    let x_2768 : f32 = u_xlat84;
    u_xlat84 = clamp(x_2768, 0.0f, 1.0f);
    let x_2770 : f32 = u_xlat84;
    let x_2771 : f32 = u_xlat84;
    u_xlat84 = (x_2770 * x_2771);
    let x_2773 : f32 = u_xlat82;
    let x_2774 : f32 = u_xlat84;
    u_xlat82 = (x_2773 * x_2774);
    let x_2777 : i32 = u_xlati81;
    let x_2779 : f32 = x_1002.x_AdditionalShadowParams[x_2777].w;
    u_xlati84 = i32(x_2779);
    let x_2784 : i32 = u_xlati84;
    u_xlatb10.x = (x_2784 >= 0i);
    let x_2788 : bool = u_xlatb10.x;
    if (x_2788) {
      let x_2792 : i32 = u_xlati81;
      let x_2794 : f32 = x_1002.x_AdditionalShadowParams[x_2792].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2794, x_2794, x_2794, x_2794))));
      let x_2800 : bool = u_xlatb10.x;
      if (x_2800) {
        let x_2803 : vec4<f32> = u_xlat9;
        let x_2806 : vec4<f32> = u_xlat9;
        let x_2809 : vec4<bool> = (abs(vec4<f32>(x_2803.z, x_2803.z, x_2803.y, x_2803.z)) >= abs(vec4<f32>(x_2806.x, x_2806.y, x_2806.x, x_2806.x)));
        u_xlatb10 = vec3<bool>(x_2809.x, x_2809.y, x_2809.z);
        let x_2812 : bool = u_xlatb10.y;
        let x_2814 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_2812 & x_2814);
        let x_2818 : vec4<f32> = u_xlat9;
        let x_2821 : vec4<bool> = (-(vec4<f32>(x_2818.z, x_2818.y, x_2818.x, x_2818.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_2821.x, x_2821.y, x_2821.z);
        let x_2825 : bool = u_xlatb11.x;
        u_xlat35.x = select(4.0f, 5.0f, x_2825);
        let x_2830 : bool = u_xlatb11.y;
        u_xlat35.z = select(2.0f, 3.0f, x_2830);
        let x_2835 : bool = u_xlatb11.z;
        u_xlat11.x = select(0.0f, 1.0f, x_2835);
        let x_2840 : bool = u_xlatb10.z;
        if (x_2840) {
          let x_2845 : f32 = u_xlat35.z;
          x_2841 = x_2845;
        } else {
          let x_2848 : f32 = u_xlat11.x;
          x_2841 = x_2848;
        }
        let x_2849 : f32 = x_2841;
        u_xlat60 = x_2849;
        let x_2851 : bool = u_xlatb10.x;
        if (x_2851) {
          let x_2856 : f32 = u_xlat35.x;
          x_2852 = x_2856;
        } else {
          let x_2858 : f32 = u_xlat60;
          x_2852 = x_2858;
        }
        let x_2859 : f32 = x_2852;
        u_xlat10.x = x_2859;
        let x_2861 : i32 = u_xlati81;
        let x_2863 : f32 = x_1002.x_AdditionalShadowParams[x_2861].w;
        u_xlat35.x = trunc(x_2863);
        let x_2867 : f32 = u_xlat10.x;
        let x_2869 : f32 = u_xlat35.x;
        u_xlat10.x = (x_2867 + x_2869);
        let x_2873 : f32 = u_xlat10.x;
        u_xlati84 = i32(x_2873);
      }
      let x_2875 : i32 = u_xlati84;
      u_xlati84 = (x_2875 << bitcast<u32>(2i));
      let x_2877 : vec3<f32> = vs_TEXCOORD7;
      let x_2879 : i32 = u_xlati84;
      let x_2882 : i32 = u_xlati84;
      let x_2886 : vec4<f32> = x_1002.x_AdditionalLightsWorldToShadow[((x_2879 + 1i) / 4i)][((x_2882 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_2877.y, x_2877.y, x_2877.y, x_2877.y) * x_2886);
      let x_2888 : i32 = u_xlati84;
      let x_2890 : i32 = u_xlati84;
      let x_2893 : vec4<f32> = x_1002.x_AdditionalLightsWorldToShadow[(x_2888 / 4i)][(x_2890 % 4i)];
      let x_2894 : vec3<f32> = vs_TEXCOORD7;
      let x_2897 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2893 * vec4<f32>(x_2894.x, x_2894.x, x_2894.x, x_2894.x)) + x_2897);
      let x_2899 : i32 = u_xlati84;
      let x_2902 : i32 = u_xlati84;
      let x_2906 : vec4<f32> = x_1002.x_AdditionalLightsWorldToShadow[((x_2899 + 2i) / 4i)][((x_2902 + 2i) % 4i)];
      let x_2907 : vec3<f32> = vs_TEXCOORD7;
      let x_2910 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2906 * vec4<f32>(x_2907.z, x_2907.z, x_2907.z, x_2907.z)) + x_2910);
      let x_2912 : vec4<f32> = u_xlat10;
      let x_2913 : i32 = u_xlati84;
      let x_2916 : i32 = u_xlati84;
      let x_2920 : vec4<f32> = x_1002.x_AdditionalLightsWorldToShadow[((x_2913 + 3i) / 4i)][((x_2916 + 3i) % 4i)];
      u_xlat10 = (x_2912 + x_2920);
      let x_2922 : vec4<f32> = u_xlat10;
      let x_2924 : vec4<f32> = u_xlat10;
      let x_2926 : vec3<f32> = (vec3<f32>(x_2922.x, x_2922.y, x_2922.z) / vec3<f32>(x_2924.w, x_2924.w, x_2924.w));
      let x_2927 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2926.x, x_2926.y, x_2926.z, x_2927.w);
      let x_2930 : i32 = u_xlati81;
      let x_2932 : f32 = x_1002.x_AdditionalShadowParams[x_2930].y;
      u_xlatb84 = (0.0f < x_2932);
      let x_2934 : bool = u_xlatb84;
      if (x_2934) {
        let x_2937 : i32 = u_xlati81;
        let x_2939 : f32 = x_1002.x_AdditionalShadowParams[x_2937].y;
        u_xlatb84 = (1.0f == x_2939);
        let x_2941 : bool = u_xlatb84;
        if (x_2941) {
          let x_2944 : vec4<f32> = u_xlat10;
          let x_2947 : vec4<f32> = x_1002.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2944.x, x_2944.y, x_2944.x, x_2944.y) + x_2947);
          let x_2950 : vec4<f32> = u_xlat11;
          let x_2951 : vec2<f32> = vec2<f32>(x_2950.x, x_2950.y);
          let x_2953 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2951.x, x_2951.y, x_2953);
          let x_2961 : vec3<f32> = txVec30;
          let x_2963 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2961.xy, x_2961.z);
          u_xlat12.x = x_2963;
          let x_2966 : vec4<f32> = u_xlat11;
          let x_2967 : vec2<f32> = vec2<f32>(x_2966.z, x_2966.w);
          let x_2969 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_2967.x, x_2967.y, x_2969);
          let x_2976 : vec3<f32> = txVec31;
          let x_2978 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2976.xy, x_2976.z);
          u_xlat12.y = x_2978;
          let x_2980 : vec4<f32> = u_xlat10;
          let x_2983 : vec4<f32> = x_1002.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_2980.x, x_2980.y, x_2980.x, x_2980.y) + x_2983);
          let x_2986 : vec4<f32> = u_xlat11;
          let x_2987 : vec2<f32> = vec2<f32>(x_2986.x, x_2986.y);
          let x_2989 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_2987.x, x_2987.y, x_2989);
          let x_2996 : vec3<f32> = txVec32;
          let x_2998 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2996.xy, x_2996.z);
          u_xlat12.z = x_2998;
          let x_3001 : vec4<f32> = u_xlat11;
          let x_3002 : vec2<f32> = vec2<f32>(x_3001.z, x_3001.w);
          let x_3004 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_3002.x, x_3002.y, x_3004);
          let x_3011 : vec3<f32> = txVec33;
          let x_3013 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3011.xy, x_3011.z);
          u_xlat12.w = x_3013;
          let x_3015 : vec4<f32> = u_xlat12;
          u_xlat84 = dot(x_3015, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_3019 : i32 = u_xlati81;
          let x_3021 : f32 = x_1002.x_AdditionalShadowParams[x_3019].y;
          u_xlatb85 = (2.0f == x_3021);
          let x_3023 : bool = u_xlatb85;
          if (x_3023) {
            let x_3026 : vec4<f32> = u_xlat10;
            let x_3029 : vec4<f32> = x_1002.x_AdditionalShadowmapSize;
            let x_3032 : vec2<f32> = ((vec2<f32>(x_3026.x, x_3026.y) * vec2<f32>(x_3029.z, x_3029.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3033 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3032.x, x_3032.y, x_3033.z, x_3033.w);
            let x_3035 : vec4<f32> = u_xlat11;
            let x_3037 : vec2<f32> = floor(vec2<f32>(x_3035.x, x_3035.y));
            let x_3038 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3037.x, x_3037.y, x_3038.z, x_3038.w);
            let x_3041 : vec4<f32> = u_xlat10;
            let x_3044 : vec4<f32> = x_1002.x_AdditionalShadowmapSize;
            let x_3047 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3041.x, x_3041.y) * vec2<f32>(x_3044.z, x_3044.w)) + -(vec2<f32>(x_3047.x, x_3047.y)));
            let x_3051 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3051.x, x_3051.x, x_3051.y, x_3051.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3054 : vec4<f32> = u_xlat12;
            let x_3056 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3054.x, x_3054.x, x_3054.z, x_3054.z) * vec4<f32>(x_3056.x, x_3056.x, x_3056.z, x_3056.z));
            let x_3059 : vec4<f32> = u_xlat13;
            let x_3061 : vec2<f32> = (vec2<f32>(x_3059.y, x_3059.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_3062 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3061.x, x_3062.y, x_3061.y, x_3062.w);
            let x_3064 : vec4<f32> = u_xlat13;
            let x_3067 : vec2<f32> = u_xlat61;
            let x_3069 : vec2<f32> = ((vec2<f32>(x_3064.x, x_3064.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3067));
            let x_3070 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3069.x, x_3069.y, x_3070.z, x_3070.w);
            let x_3073 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_3073) + vec2<f32>(1.0f, 1.0f));
            let x_3076 : vec2<f32> = u_xlat61;
            let x_3077 : vec2<f32> = min(x_3076, vec2<f32>(0.0f, 0.0f));
            let x_3078 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3077.x, x_3077.y, x_3078.z, x_3078.w);
            let x_3080 : vec4<f32> = u_xlat14;
            let x_3083 : vec4<f32> = u_xlat14;
            let x_3086 : vec2<f32> = u_xlat63;
            let x_3087 : vec2<f32> = ((-(vec2<f32>(x_3080.x, x_3080.y)) * vec2<f32>(x_3083.x, x_3083.y)) + x_3086);
            let x_3088 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3087.x, x_3087.y, x_3088.z, x_3088.w);
            let x_3090 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_3090, vec2<f32>(0.0f, 0.0f));
            let x_3092 : vec2<f32> = u_xlat61;
            let x_3094 : vec2<f32> = u_xlat61;
            let x_3096 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_3092) * x_3094) + vec2<f32>(x_3096.y, x_3096.w));
            let x_3099 : vec4<f32> = u_xlat14;
            let x_3101 : vec2<f32> = (vec2<f32>(x_3099.x, x_3099.y) + vec2<f32>(1.0f, 1.0f));
            let x_3102 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3101.x, x_3101.y, x_3102.z, x_3102.w);
            let x_3104 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_3104 + vec2<f32>(1.0f, 1.0f));
            let x_3106 : vec4<f32> = u_xlat13;
            let x_3108 : vec2<f32> = (vec2<f32>(x_3106.x, x_3106.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3109 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3108.x, x_3108.y, x_3109.z, x_3109.w);
            let x_3111 : vec2<f32> = u_xlat63;
            let x_3112 : vec2<f32> = (x_3111 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3113 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3112.x, x_3112.y, x_3113.z, x_3113.w);
            let x_3115 : vec4<f32> = u_xlat14;
            let x_3117 : vec2<f32> = (vec2<f32>(x_3115.x, x_3115.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3118 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3117.x, x_3117.y, x_3118.z, x_3118.w);
            let x_3120 : vec2<f32> = u_xlat61;
            let x_3121 : vec2<f32> = (x_3120 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3122 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3121.x, x_3121.y, x_3122.z, x_3122.w);
            let x_3124 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_3124.y, x_3124.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3128 : f32 = u_xlat14.x;
            u_xlat15.z = x_3128;
            let x_3131 : f32 = u_xlat61.x;
            u_xlat15.w = x_3131;
            let x_3134 : f32 = u_xlat16.x;
            u_xlat13.z = x_3134;
            let x_3137 : f32 = u_xlat12.x;
            u_xlat13.w = x_3137;
            let x_3139 : vec4<f32> = u_xlat13;
            let x_3141 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_3139.z, x_3139.w, x_3139.x, x_3139.z) + vec4<f32>(x_3141.z, x_3141.w, x_3141.x, x_3141.z));
            let x_3145 : f32 = u_xlat15.y;
            u_xlat14.z = x_3145;
            let x_3148 : f32 = u_xlat61.y;
            u_xlat14.w = x_3148;
            let x_3151 : f32 = u_xlat13.y;
            u_xlat16.z = x_3151;
            let x_3154 : f32 = u_xlat12.z;
            u_xlat16.w = x_3154;
            let x_3156 : vec4<f32> = u_xlat14;
            let x_3158 : vec4<f32> = u_xlat16;
            let x_3160 : vec3<f32> = (vec3<f32>(x_3156.z, x_3156.y, x_3156.w) + vec3<f32>(x_3158.z, x_3158.y, x_3158.w));
            let x_3161 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3160.x, x_3160.y, x_3160.z, x_3161.w);
            let x_3163 : vec4<f32> = u_xlat13;
            let x_3165 : vec4<f32> = u_xlat17;
            let x_3167 : vec3<f32> = (vec3<f32>(x_3163.x, x_3163.z, x_3163.w) / vec3<f32>(x_3165.z, x_3165.w, x_3165.y));
            let x_3168 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3167.x, x_3167.y, x_3167.z, x_3168.w);
            let x_3170 : vec4<f32> = u_xlat13;
            let x_3172 : vec3<f32> = (vec3<f32>(x_3170.x, x_3170.y, x_3170.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3173 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3172.x, x_3172.y, x_3172.z, x_3173.w);
            let x_3175 : vec4<f32> = u_xlat16;
            let x_3177 : vec4<f32> = u_xlat12;
            let x_3179 : vec3<f32> = (vec3<f32>(x_3175.z, x_3175.y, x_3175.w) / vec3<f32>(x_3177.x, x_3177.y, x_3177.z));
            let x_3180 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3179.x, x_3179.y, x_3179.z, x_3180.w);
            let x_3182 : vec4<f32> = u_xlat14;
            let x_3184 : vec3<f32> = (vec3<f32>(x_3182.x, x_3182.y, x_3182.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3185 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3184.x, x_3184.y, x_3184.z, x_3185.w);
            let x_3187 : vec4<f32> = u_xlat13;
            let x_3190 : vec4<f32> = x_1002.x_AdditionalShadowmapSize;
            let x_3192 : vec3<f32> = (vec3<f32>(x_3187.y, x_3187.x, x_3187.z) * vec3<f32>(x_3190.x, x_3190.x, x_3190.x));
            let x_3193 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3192.x, x_3192.y, x_3192.z, x_3193.w);
            let x_3195 : vec4<f32> = u_xlat14;
            let x_3198 : vec4<f32> = x_1002.x_AdditionalShadowmapSize;
            let x_3200 : vec3<f32> = (vec3<f32>(x_3195.x, x_3195.y, x_3195.z) * vec3<f32>(x_3198.y, x_3198.y, x_3198.y));
            let x_3201 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3200.x, x_3200.y, x_3200.z, x_3201.w);
            let x_3204 : f32 = u_xlat14.x;
            u_xlat13.w = x_3204;
            let x_3206 : vec4<f32> = u_xlat11;
            let x_3209 : vec4<f32> = x_1002.x_AdditionalShadowmapSize;
            let x_3212 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_3206.x, x_3206.y, x_3206.x, x_3206.y) * vec4<f32>(x_3209.x, x_3209.y, x_3209.x, x_3209.y)) + vec4<f32>(x_3212.y, x_3212.w, x_3212.x, x_3212.w));
            let x_3215 : vec4<f32> = u_xlat11;
            let x_3218 : vec4<f32> = x_1002.x_AdditionalShadowmapSize;
            let x_3221 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_3215.x, x_3215.y) * vec2<f32>(x_3218.x, x_3218.y)) + vec2<f32>(x_3221.z, x_3221.w));
            let x_3225 : f32 = u_xlat13.y;
            u_xlat14.w = x_3225;
            let x_3227 : vec4<f32> = u_xlat14;
            let x_3228 : vec2<f32> = vec2<f32>(x_3227.y, x_3227.z);
            let x_3229 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3229.x, x_3228.x, x_3229.z, x_3228.y);
            let x_3231 : vec4<f32> = u_xlat11;
            let x_3234 : vec4<f32> = x_1002.x_AdditionalShadowmapSize;
            let x_3237 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_3231.x, x_3231.y, x_3231.x, x_3231.y) * vec4<f32>(x_3234.x, x_3234.y, x_3234.x, x_3234.y)) + vec4<f32>(x_3237.x, x_3237.y, x_3237.z, x_3237.y));
            let x_3240 : vec4<f32> = u_xlat11;
            let x_3243 : vec4<f32> = x_1002.x_AdditionalShadowmapSize;
            let x_3246 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3240.x, x_3240.y, x_3240.x, x_3240.y) * vec4<f32>(x_3243.x, x_3243.y, x_3243.x, x_3243.y)) + vec4<f32>(x_3246.w, x_3246.y, x_3246.w, x_3246.z));
            let x_3249 : vec4<f32> = u_xlat11;
            let x_3252 : vec4<f32> = x_1002.x_AdditionalShadowmapSize;
            let x_3255 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_3249.x, x_3249.y, x_3249.x, x_3249.y) * vec4<f32>(x_3252.x, x_3252.y, x_3252.x, x_3252.y)) + vec4<f32>(x_3255.x, x_3255.w, x_3255.z, x_3255.w));
            let x_3258 : vec4<f32> = u_xlat12;
            let x_3260 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_3258.x, x_3258.x, x_3258.x, x_3258.y) * vec4<f32>(x_3260.z, x_3260.w, x_3260.y, x_3260.z));
            let x_3263 : vec4<f32> = u_xlat12;
            let x_3265 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_3263.y, x_3263.y, x_3263.z, x_3263.z) * x_3265);
            let x_3269 : f32 = u_xlat12.z;
            let x_3271 : f32 = u_xlat17.y;
            u_xlat85 = (x_3269 * x_3271);
            let x_3274 : vec4<f32> = u_xlat15;
            let x_3275 : vec2<f32> = vec2<f32>(x_3274.x, x_3274.y);
            let x_3277 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_3275.x, x_3275.y, x_3277);
            let x_3284 : vec3<f32> = txVec34;
            let x_3286 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3284.xy, x_3284.z);
            u_xlat11.x = x_3286;
            let x_3289 : vec4<f32> = u_xlat15;
            let x_3290 : vec2<f32> = vec2<f32>(x_3289.z, x_3289.w);
            let x_3292 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_3290.x, x_3290.y, x_3292);
            let x_3300 : vec3<f32> = txVec35;
            let x_3302 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3300.xy, x_3300.z);
            u_xlat36 = x_3302;
            let x_3303 : f32 = u_xlat36;
            let x_3305 : f32 = u_xlat18.y;
            u_xlat36 = (x_3303 * x_3305);
            let x_3308 : f32 = u_xlat18.x;
            let x_3310 : f32 = u_xlat11.x;
            let x_3312 : f32 = u_xlat36;
            u_xlat11.x = ((x_3308 * x_3310) + x_3312);
            let x_3316 : vec2<f32> = u_xlat61;
            let x_3318 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_3316.x, x_3316.y, x_3318);
            let x_3325 : vec3<f32> = txVec36;
            let x_3327 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3325.xy, x_3325.z);
            u_xlat36 = x_3327;
            let x_3329 : f32 = u_xlat18.z;
            let x_3330 : f32 = u_xlat36;
            let x_3333 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3329 * x_3330) + x_3333);
            let x_3337 : vec4<f32> = u_xlat14;
            let x_3338 : vec2<f32> = vec2<f32>(x_3337.x, x_3337.y);
            let x_3340 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_3338.x, x_3338.y, x_3340);
            let x_3347 : vec3<f32> = txVec37;
            let x_3349 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3347.xy, x_3347.z);
            u_xlat36 = x_3349;
            let x_3351 : f32 = u_xlat18.w;
            let x_3352 : f32 = u_xlat36;
            let x_3355 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3351 * x_3352) + x_3355);
            let x_3359 : vec4<f32> = u_xlat16;
            let x_3360 : vec2<f32> = vec2<f32>(x_3359.x, x_3359.y);
            let x_3362 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_3360.x, x_3360.y, x_3362);
            let x_3369 : vec3<f32> = txVec38;
            let x_3371 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3369.xy, x_3369.z);
            u_xlat36 = x_3371;
            let x_3373 : f32 = u_xlat19.x;
            let x_3374 : f32 = u_xlat36;
            let x_3377 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3373 * x_3374) + x_3377);
            let x_3381 : vec4<f32> = u_xlat16;
            let x_3382 : vec2<f32> = vec2<f32>(x_3381.z, x_3381.w);
            let x_3384 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_3382.x, x_3382.y, x_3384);
            let x_3391 : vec3<f32> = txVec39;
            let x_3393 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3391.xy, x_3391.z);
            u_xlat36 = x_3393;
            let x_3395 : f32 = u_xlat19.y;
            let x_3396 : f32 = u_xlat36;
            let x_3399 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3395 * x_3396) + x_3399);
            let x_3403 : vec4<f32> = u_xlat14;
            let x_3404 : vec2<f32> = vec2<f32>(x_3403.z, x_3403.w);
            let x_3406 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_3404.x, x_3404.y, x_3406);
            let x_3413 : vec3<f32> = txVec40;
            let x_3415 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3413.xy, x_3413.z);
            u_xlat36 = x_3415;
            let x_3417 : f32 = u_xlat19.z;
            let x_3418 : f32 = u_xlat36;
            let x_3421 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3417 * x_3418) + x_3421);
            let x_3425 : vec4<f32> = u_xlat13;
            let x_3426 : vec2<f32> = vec2<f32>(x_3425.x, x_3425.y);
            let x_3428 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_3426.x, x_3426.y, x_3428);
            let x_3435 : vec3<f32> = txVec41;
            let x_3437 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3435.xy, x_3435.z);
            u_xlat36 = x_3437;
            let x_3439 : f32 = u_xlat19.w;
            let x_3440 : f32 = u_xlat36;
            let x_3443 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3439 * x_3440) + x_3443);
            let x_3447 : vec4<f32> = u_xlat13;
            let x_3448 : vec2<f32> = vec2<f32>(x_3447.z, x_3447.w);
            let x_3450 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_3448.x, x_3448.y, x_3450);
            let x_3457 : vec3<f32> = txVec42;
            let x_3459 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3457.xy, x_3457.z);
            u_xlat36 = x_3459;
            let x_3460 : f32 = u_xlat85;
            let x_3461 : f32 = u_xlat36;
            let x_3464 : f32 = u_xlat11.x;
            u_xlat84 = ((x_3460 * x_3461) + x_3464);
          } else {
            let x_3467 : vec4<f32> = u_xlat10;
            let x_3470 : vec4<f32> = x_1002.x_AdditionalShadowmapSize;
            let x_3473 : vec2<f32> = ((vec2<f32>(x_3467.x, x_3467.y) * vec2<f32>(x_3470.z, x_3470.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3474 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3473.x, x_3473.y, x_3474.z, x_3474.w);
            let x_3476 : vec4<f32> = u_xlat11;
            let x_3478 : vec2<f32> = floor(vec2<f32>(x_3476.x, x_3476.y));
            let x_3479 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3478.x, x_3478.y, x_3479.z, x_3479.w);
            let x_3481 : vec4<f32> = u_xlat10;
            let x_3484 : vec4<f32> = x_1002.x_AdditionalShadowmapSize;
            let x_3487 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3481.x, x_3481.y) * vec2<f32>(x_3484.z, x_3484.w)) + -(vec2<f32>(x_3487.x, x_3487.y)));
            let x_3491 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3491.x, x_3491.x, x_3491.y, x_3491.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3494 : vec4<f32> = u_xlat12;
            let x_3496 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3494.x, x_3494.x, x_3494.z, x_3494.z) * vec4<f32>(x_3496.x, x_3496.x, x_3496.z, x_3496.z));
            let x_3499 : vec4<f32> = u_xlat13;
            let x_3501 : vec2<f32> = (vec2<f32>(x_3499.y, x_3499.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3502 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3502.x, x_3501.x, x_3502.z, x_3501.y);
            let x_3504 : vec4<f32> = u_xlat13;
            let x_3507 : vec2<f32> = u_xlat61;
            let x_3509 : vec2<f32> = ((vec2<f32>(x_3504.x, x_3504.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3507));
            let x_3510 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3509.x, x_3510.y, x_3509.y, x_3510.w);
            let x_3512 : vec2<f32> = u_xlat61;
            let x_3514 : vec2<f32> = (-(x_3512) + vec2<f32>(1.0f, 1.0f));
            let x_3515 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3514.x, x_3514.y, x_3515.z, x_3515.w);
            let x_3517 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_3517, vec2<f32>(0.0f, 0.0f));
            let x_3519 : vec2<f32> = u_xlat63;
            let x_3521 : vec2<f32> = u_xlat63;
            let x_3523 : vec4<f32> = u_xlat13;
            let x_3525 : vec2<f32> = ((-(x_3519) * x_3521) + vec2<f32>(x_3523.x, x_3523.y));
            let x_3526 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3525.x, x_3525.y, x_3526.z, x_3526.w);
            let x_3528 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_3528, vec2<f32>(0.0f, 0.0f));
            let x_3531 : vec2<f32> = u_xlat63;
            let x_3533 : vec2<f32> = u_xlat63;
            let x_3535 : vec4<f32> = u_xlat12;
            let x_3537 : vec2<f32> = ((-(x_3531) * x_3533) + vec2<f32>(x_3535.y, x_3535.w));
            let x_3538 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_3537.x, x_3538.y, x_3537.y);
            let x_3540 : vec4<f32> = u_xlat13;
            let x_3542 : vec2<f32> = (vec2<f32>(x_3540.x, x_3540.y) + vec2<f32>(2.0f, 2.0f));
            let x_3543 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3542.x, x_3542.y, x_3543.z, x_3543.w);
            let x_3545 : vec3<f32> = u_xlat37;
            let x_3547 : vec2<f32> = (vec2<f32>(x_3545.x, x_3545.z) + vec2<f32>(2.0f, 2.0f));
            let x_3548 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3548.x, x_3547.x, x_3548.z, x_3547.y);
            let x_3551 : f32 = u_xlat12.y;
            u_xlat15.z = (x_3551 * 0.08163200318813323975f);
            let x_3554 : vec4<f32> = u_xlat12;
            let x_3557 : vec3<f32> = (vec3<f32>(x_3554.z, x_3554.x, x_3554.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3558 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3557.x, x_3557.y, x_3557.z, x_3558.w);
            let x_3560 : vec4<f32> = u_xlat13;
            let x_3562 : vec2<f32> = (vec2<f32>(x_3560.x, x_3560.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3563 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3562.x, x_3562.y, x_3563.z, x_3563.w);
            let x_3566 : f32 = u_xlat16.y;
            u_xlat15.x = x_3566;
            let x_3568 : vec2<f32> = u_xlat61;
            let x_3571 : vec2<f32> = ((vec2<f32>(x_3568.x, x_3568.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3572 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3572.x, x_3571.x, x_3572.z, x_3571.y);
            let x_3574 : vec2<f32> = u_xlat61;
            let x_3577 : vec2<f32> = ((vec2<f32>(x_3574.x, x_3574.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3578 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3577.x, x_3578.y, x_3577.y, x_3578.w);
            let x_3581 : f32 = u_xlat12.x;
            u_xlat13.y = x_3581;
            let x_3584 : f32 = u_xlat14.y;
            u_xlat13.w = x_3584;
            let x_3586 : vec4<f32> = u_xlat13;
            let x_3587 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3586 + x_3587);
            let x_3589 : vec2<f32> = u_xlat61;
            let x_3592 : vec2<f32> = ((vec2<f32>(x_3589.y, x_3589.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3593 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3593.x, x_3592.x, x_3593.z, x_3592.y);
            let x_3595 : vec2<f32> = u_xlat61;
            let x_3598 : vec2<f32> = ((vec2<f32>(x_3595.y, x_3595.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3599 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3598.x, x_3599.y, x_3598.y, x_3599.w);
            let x_3602 : f32 = u_xlat12.y;
            u_xlat14.y = x_3602;
            let x_3604 : vec4<f32> = u_xlat14;
            let x_3605 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_3604 + x_3605);
            let x_3607 : vec4<f32> = u_xlat13;
            let x_3608 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_3607 / x_3608);
            let x_3610 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3610 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3612 : vec4<f32> = u_xlat14;
            let x_3613 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_3612 / x_3613);
            let x_3615 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3615 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3617 : vec4<f32> = u_xlat13;
            let x_3620 : vec4<f32> = x_1002.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3617.w, x_3617.x, x_3617.y, x_3617.z) * vec4<f32>(x_3620.x, x_3620.x, x_3620.x, x_3620.x));
            let x_3623 : vec4<f32> = u_xlat14;
            let x_3626 : vec4<f32> = x_1002.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3623.x, x_3623.w, x_3623.y, x_3623.z) * vec4<f32>(x_3626.y, x_3626.y, x_3626.y, x_3626.y));
            let x_3629 : vec4<f32> = u_xlat13;
            let x_3630 : vec3<f32> = vec3<f32>(x_3629.y, x_3629.z, x_3629.w);
            let x_3631 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3630.x, x_3631.y, x_3630.y, x_3630.z);
            let x_3634 : f32 = u_xlat14.x;
            u_xlat16.y = x_3634;
            let x_3636 : vec4<f32> = u_xlat11;
            let x_3639 : vec4<f32> = x_1002.x_AdditionalShadowmapSize;
            let x_3642 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3636.x, x_3636.y, x_3636.x, x_3636.y) * vec4<f32>(x_3639.x, x_3639.y, x_3639.x, x_3639.y)) + vec4<f32>(x_3642.x, x_3642.y, x_3642.z, x_3642.y));
            let x_3645 : vec4<f32> = u_xlat11;
            let x_3648 : vec4<f32> = x_1002.x_AdditionalShadowmapSize;
            let x_3651 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_3645.x, x_3645.y) * vec2<f32>(x_3648.x, x_3648.y)) + vec2<f32>(x_3651.w, x_3651.y));
            let x_3655 : f32 = u_xlat16.y;
            u_xlat13.y = x_3655;
            let x_3658 : f32 = u_xlat14.z;
            u_xlat16.y = x_3658;
            let x_3660 : vec4<f32> = u_xlat11;
            let x_3663 : vec4<f32> = x_1002.x_AdditionalShadowmapSize;
            let x_3666 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3660.x, x_3660.y, x_3660.x, x_3660.y) * vec4<f32>(x_3663.x, x_3663.y, x_3663.x, x_3663.y)) + vec4<f32>(x_3666.x, x_3666.y, x_3666.z, x_3666.y));
            let x_3669 : vec4<f32> = u_xlat11;
            let x_3672 : vec4<f32> = x_1002.x_AdditionalShadowmapSize;
            let x_3675 : vec4<f32> = u_xlat16;
            let x_3677 : vec2<f32> = ((vec2<f32>(x_3669.x, x_3669.y) * vec2<f32>(x_3672.x, x_3672.y)) + vec2<f32>(x_3675.w, x_3675.y));
            let x_3678 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3677.x, x_3677.y, x_3678.z, x_3678.w);
            let x_3681 : f32 = u_xlat16.y;
            u_xlat13.z = x_3681;
            let x_3684 : vec4<f32> = u_xlat11;
            let x_3687 : vec4<f32> = x_1002.x_AdditionalShadowmapSize;
            let x_3690 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3684.x, x_3684.y, x_3684.x, x_3684.y) * vec4<f32>(x_3687.x, x_3687.y, x_3687.x, x_3687.y)) + vec4<f32>(x_3690.x, x_3690.y, x_3690.x, x_3690.z));
            let x_3694 : f32 = u_xlat14.w;
            u_xlat16.y = x_3694;
            let x_3697 : vec4<f32> = u_xlat11;
            let x_3700 : vec4<f32> = x_1002.x_AdditionalShadowmapSize;
            let x_3703 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3697.x, x_3697.y, x_3697.x, x_3697.y) * vec4<f32>(x_3700.x, x_3700.y, x_3700.x, x_3700.y)) + vec4<f32>(x_3703.x, x_3703.y, x_3703.z, x_3703.y));
            let x_3707 : vec4<f32> = u_xlat11;
            let x_3710 : vec4<f32> = x_1002.x_AdditionalShadowmapSize;
            let x_3713 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3707.x, x_3707.y) * vec2<f32>(x_3710.x, x_3710.y)) + vec2<f32>(x_3713.w, x_3713.y));
            let x_3717 : f32 = u_xlat16.y;
            u_xlat13.w = x_3717;
            let x_3720 : vec4<f32> = u_xlat11;
            let x_3723 : vec4<f32> = x_1002.x_AdditionalShadowmapSize;
            let x_3726 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3720.x, x_3720.y) * vec2<f32>(x_3723.x, x_3723.y)) + vec2<f32>(x_3726.x, x_3726.w));
            let x_3729 : vec4<f32> = u_xlat16;
            let x_3730 : vec3<f32> = vec3<f32>(x_3729.x, x_3729.z, x_3729.w);
            let x_3731 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3730.x, x_3731.y, x_3730.y, x_3730.z);
            let x_3733 : vec4<f32> = u_xlat11;
            let x_3736 : vec4<f32> = x_1002.x_AdditionalShadowmapSize;
            let x_3739 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3733.x, x_3733.y, x_3733.x, x_3733.y) * vec4<f32>(x_3736.x, x_3736.y, x_3736.x, x_3736.y)) + vec4<f32>(x_3739.x, x_3739.y, x_3739.z, x_3739.y));
            let x_3743 : vec4<f32> = u_xlat11;
            let x_3746 : vec4<f32> = x_1002.x_AdditionalShadowmapSize;
            let x_3749 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3743.x, x_3743.y) * vec2<f32>(x_3746.x, x_3746.y)) + vec2<f32>(x_3749.w, x_3749.y));
            let x_3753 : f32 = u_xlat13.x;
            u_xlat14.x = x_3753;
            let x_3755 : vec4<f32> = u_xlat11;
            let x_3758 : vec4<f32> = x_1002.x_AdditionalShadowmapSize;
            let x_3761 : vec4<f32> = u_xlat14;
            let x_3763 : vec2<f32> = ((vec2<f32>(x_3755.x, x_3755.y) * vec2<f32>(x_3758.x, x_3758.y)) + vec2<f32>(x_3761.x, x_3761.y));
            let x_3764 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3763.x, x_3763.y, x_3764.z, x_3764.w);
            let x_3767 : vec4<f32> = u_xlat12;
            let x_3769 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3767.x, x_3767.x, x_3767.x, x_3767.x) * x_3769);
            let x_3772 : vec4<f32> = u_xlat12;
            let x_3774 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3772.y, x_3772.y, x_3772.y, x_3772.y) * x_3774);
            let x_3777 : vec4<f32> = u_xlat12;
            let x_3779 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3777.z, x_3777.z, x_3777.z, x_3777.z) * x_3779);
            let x_3781 : vec4<f32> = u_xlat12;
            let x_3783 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3781.w, x_3781.w, x_3781.w, x_3781.w) * x_3783);
            let x_3786 : vec4<f32> = u_xlat17;
            let x_3787 : vec2<f32> = vec2<f32>(x_3786.x, x_3786.y);
            let x_3789 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3787.x, x_3787.y, x_3789);
            let x_3796 : vec3<f32> = txVec43;
            let x_3798 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3796.xy, x_3796.z);
            u_xlat85 = x_3798;
            let x_3800 : vec4<f32> = u_xlat17;
            let x_3801 : vec2<f32> = vec2<f32>(x_3800.z, x_3800.w);
            let x_3803 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3801.x, x_3801.y, x_3803);
            let x_3810 : vec3<f32> = txVec44;
            let x_3812 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3810.xy, x_3810.z);
            u_xlat13.x = x_3812;
            let x_3815 : f32 = u_xlat13.x;
            let x_3817 : f32 = u_xlat22.y;
            u_xlat13.x = (x_3815 * x_3817);
            let x_3821 : f32 = u_xlat22.x;
            let x_3822 : f32 = u_xlat85;
            let x_3825 : f32 = u_xlat13.x;
            u_xlat85 = ((x_3821 * x_3822) + x_3825);
            let x_3828 : vec2<f32> = u_xlat61;
            let x_3830 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3828.x, x_3828.y, x_3830);
            let x_3837 : vec3<f32> = txVec45;
            let x_3839 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3837.xy, x_3837.z);
            u_xlat61.x = x_3839;
            let x_3842 : f32 = u_xlat22.z;
            let x_3844 : f32 = u_xlat61.x;
            let x_3846 : f32 = u_xlat85;
            u_xlat85 = ((x_3842 * x_3844) + x_3846);
            let x_3849 : vec4<f32> = u_xlat20;
            let x_3850 : vec2<f32> = vec2<f32>(x_3849.x, x_3849.y);
            let x_3852 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3850.x, x_3850.y, x_3852);
            let x_3859 : vec3<f32> = txVec46;
            let x_3861 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3859.xy, x_3859.z);
            u_xlat61.x = x_3861;
            let x_3864 : f32 = u_xlat22.w;
            let x_3866 : f32 = u_xlat61.x;
            let x_3868 : f32 = u_xlat85;
            u_xlat85 = ((x_3864 * x_3866) + x_3868);
            let x_3871 : vec4<f32> = u_xlat18;
            let x_3872 : vec2<f32> = vec2<f32>(x_3871.x, x_3871.y);
            let x_3874 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3872.x, x_3872.y, x_3874);
            let x_3881 : vec3<f32> = txVec47;
            let x_3883 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3881.xy, x_3881.z);
            u_xlat61.x = x_3883;
            let x_3886 : f32 = u_xlat23.x;
            let x_3888 : f32 = u_xlat61.x;
            let x_3890 : f32 = u_xlat85;
            u_xlat85 = ((x_3886 * x_3888) + x_3890);
            let x_3893 : vec4<f32> = u_xlat18;
            let x_3894 : vec2<f32> = vec2<f32>(x_3893.z, x_3893.w);
            let x_3896 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3894.x, x_3894.y, x_3896);
            let x_3903 : vec3<f32> = txVec48;
            let x_3905 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3903.xy, x_3903.z);
            u_xlat61.x = x_3905;
            let x_3908 : f32 = u_xlat23.y;
            let x_3910 : f32 = u_xlat61.x;
            let x_3912 : f32 = u_xlat85;
            u_xlat85 = ((x_3908 * x_3910) + x_3912);
            let x_3915 : vec4<f32> = u_xlat19;
            let x_3916 : vec2<f32> = vec2<f32>(x_3915.x, x_3915.y);
            let x_3918 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3916.x, x_3916.y, x_3918);
            let x_3925 : vec3<f32> = txVec49;
            let x_3927 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3925.xy, x_3925.z);
            u_xlat61.x = x_3927;
            let x_3930 : f32 = u_xlat23.z;
            let x_3932 : f32 = u_xlat61.x;
            let x_3934 : f32 = u_xlat85;
            u_xlat85 = ((x_3930 * x_3932) + x_3934);
            let x_3937 : vec4<f32> = u_xlat20;
            let x_3938 : vec2<f32> = vec2<f32>(x_3937.z, x_3937.w);
            let x_3940 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3938.x, x_3938.y, x_3940);
            let x_3947 : vec3<f32> = txVec50;
            let x_3949 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3947.xy, x_3947.z);
            u_xlat61.x = x_3949;
            let x_3952 : f32 = u_xlat23.w;
            let x_3954 : f32 = u_xlat61.x;
            let x_3956 : f32 = u_xlat85;
            u_xlat85 = ((x_3952 * x_3954) + x_3956);
            let x_3959 : vec4<f32> = u_xlat21;
            let x_3960 : vec2<f32> = vec2<f32>(x_3959.x, x_3959.y);
            let x_3962 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3960.x, x_3960.y, x_3962);
            let x_3969 : vec3<f32> = txVec51;
            let x_3971 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3969.xy, x_3969.z);
            u_xlat61.x = x_3971;
            let x_3974 : f32 = u_xlat24.x;
            let x_3976 : f32 = u_xlat61.x;
            let x_3978 : f32 = u_xlat85;
            u_xlat85 = ((x_3974 * x_3976) + x_3978);
            let x_3981 : vec4<f32> = u_xlat21;
            let x_3982 : vec2<f32> = vec2<f32>(x_3981.z, x_3981.w);
            let x_3984 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_3982.x, x_3982.y, x_3984);
            let x_3991 : vec3<f32> = txVec52;
            let x_3993 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3991.xy, x_3991.z);
            u_xlat61.x = x_3993;
            let x_3996 : f32 = u_xlat24.y;
            let x_3998 : f32 = u_xlat61.x;
            let x_4000 : f32 = u_xlat85;
            u_xlat85 = ((x_3996 * x_3998) + x_4000);
            let x_4003 : vec2<f32> = u_xlat38;
            let x_4005 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_4003.x, x_4003.y, x_4005);
            let x_4012 : vec3<f32> = txVec53;
            let x_4014 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4012.xy, x_4012.z);
            u_xlat61.x = x_4014;
            let x_4017 : f32 = u_xlat24.z;
            let x_4019 : f32 = u_xlat61.x;
            let x_4021 : f32 = u_xlat85;
            u_xlat85 = ((x_4017 * x_4019) + x_4021);
            let x_4024 : vec2<f32> = u_xlat69;
            let x_4026 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_4024.x, x_4024.y, x_4026);
            let x_4033 : vec3<f32> = txVec54;
            let x_4035 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4033.xy, x_4033.z);
            u_xlat61.x = x_4035;
            let x_4038 : f32 = u_xlat24.w;
            let x_4040 : f32 = u_xlat61.x;
            let x_4042 : f32 = u_xlat85;
            u_xlat85 = ((x_4038 * x_4040) + x_4042);
            let x_4045 : vec4<f32> = u_xlat16;
            let x_4046 : vec2<f32> = vec2<f32>(x_4045.x, x_4045.y);
            let x_4048 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_4046.x, x_4046.y, x_4048);
            let x_4055 : vec3<f32> = txVec55;
            let x_4057 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4055.xy, x_4055.z);
            u_xlat61.x = x_4057;
            let x_4060 : f32 = u_xlat12.x;
            let x_4062 : f32 = u_xlat61.x;
            let x_4064 : f32 = u_xlat85;
            u_xlat85 = ((x_4060 * x_4062) + x_4064);
            let x_4067 : vec4<f32> = u_xlat16;
            let x_4068 : vec2<f32> = vec2<f32>(x_4067.z, x_4067.w);
            let x_4070 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_4068.x, x_4068.y, x_4070);
            let x_4077 : vec3<f32> = txVec56;
            let x_4079 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4077.xy, x_4077.z);
            u_xlat61.x = x_4079;
            let x_4082 : f32 = u_xlat12.y;
            let x_4084 : f32 = u_xlat61.x;
            let x_4086 : f32 = u_xlat85;
            u_xlat85 = ((x_4082 * x_4084) + x_4086);
            let x_4089 : vec2<f32> = u_xlat64;
            let x_4091 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_4089.x, x_4089.y, x_4091);
            let x_4098 : vec3<f32> = txVec57;
            let x_4100 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4098.xy, x_4098.z);
            u_xlat61.x = x_4100;
            let x_4103 : f32 = u_xlat12.z;
            let x_4105 : f32 = u_xlat61.x;
            let x_4107 : f32 = u_xlat85;
            u_xlat85 = ((x_4103 * x_4105) + x_4107);
            let x_4110 : vec4<f32> = u_xlat11;
            let x_4111 : vec2<f32> = vec2<f32>(x_4110.x, x_4110.y);
            let x_4113 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_4111.x, x_4111.y, x_4113);
            let x_4120 : vec3<f32> = txVec58;
            let x_4122 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4120.xy, x_4120.z);
            u_xlat11.x = x_4122;
            let x_4125 : f32 = u_xlat12.w;
            let x_4127 : f32 = u_xlat11.x;
            let x_4129 : f32 = u_xlat85;
            u_xlat84 = ((x_4125 * x_4127) + x_4129);
          }
        }
      } else {
        let x_4133 : vec4<f32> = u_xlat10;
        let x_4134 : vec2<f32> = vec2<f32>(x_4133.x, x_4133.y);
        let x_4136 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_4134.x, x_4134.y, x_4136);
        let x_4143 : vec3<f32> = txVec59;
        let x_4145 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4143.xy, x_4143.z);
        u_xlat84 = x_4145;
      }
      let x_4146 : i32 = u_xlati81;
      let x_4148 : f32 = x_1002.x_AdditionalShadowParams[x_4146].x;
      u_xlat10.x = (1.0f + -(x_4148));
      let x_4152 : f32 = u_xlat84;
      let x_4153 : i32 = u_xlati81;
      let x_4155 : f32 = x_1002.x_AdditionalShadowParams[x_4153].x;
      let x_4158 : f32 = u_xlat10.x;
      u_xlat84 = ((x_4152 * x_4155) + x_4158);
      let x_4161 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_4161);
      let x_4166 : f32 = u_xlat10.z;
      u_xlatb35 = (x_4166 >= 1.0f);
      let x_4168 : bool = u_xlatb35;
      let x_4170 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_4168 | x_4170);
      let x_4174 : bool = u_xlatb10.x;
      let x_4175 : f32 = u_xlat84;
      u_xlat84 = select(x_4175, 1.0f, x_4174);
    } else {
      u_xlat84 = 1.0f;
    }
    let x_4178 : f32 = u_xlat84;
    u_xlat10.x = (-(x_4178) + 1.0f);
    let x_4183 : f32 = u_xlat3.x;
    let x_4185 : f32 = u_xlat10.x;
    let x_4187 : f32 = u_xlat84;
    u_xlat84 = ((x_4183 * x_4185) + x_4187);
    let x_4189 : f32 = u_xlat82;
    let x_4190 : f32 = u_xlat84;
    u_xlat82 = (x_4189 * x_4190);
    let x_4192 : vec4<f32> = u_xlat1;
    let x_4194 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_4192.x, x_4192.y, x_4192.z), vec3<f32>(x_4194.x, x_4194.y, x_4194.z));
    let x_4197 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4197, 0.0f, 1.0f);
    let x_4199 : f32 = u_xlat82;
    let x_4200 : f32 = u_xlat84;
    u_xlat82 = (x_4199 * x_4200);
    let x_4202 : f32 = u_xlat82;
    let x_4204 : i32 = u_xlati81;
    let x_4206 : vec4<f32> = x_2700.x_AdditionalLightsColor[x_4204];
    let x_4208 : vec3<f32> = (vec3<f32>(x_4202, x_4202, x_4202) * vec3<f32>(x_4206.x, x_4206.y, x_4206.z));
    let x_4209 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_4208.x, x_4208.y, x_4208.z, x_4209.w);
    let x_4211 : vec4<f32> = u_xlat8;
    let x_4213 : f32 = u_xlat83;
    let x_4216 : vec4<f32> = u_xlat6;
    let x_4218 : vec3<f32> = ((vec3<f32>(x_4211.x, x_4211.y, x_4211.z) * vec3<f32>(x_4213, x_4213, x_4213)) + vec3<f32>(x_4216.x, x_4216.y, x_4216.z));
    let x_4219 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4218.x, x_4218.y, x_4218.z, x_4219.w);
    let x_4221 : vec4<f32> = u_xlat8;
    let x_4223 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_4221.x, x_4221.y, x_4221.z), vec3<f32>(x_4223.x, x_4223.y, x_4223.z));
    let x_4226 : f32 = u_xlat81;
    u_xlat81 = max(x_4226, 1.17549435e-38f);
    let x_4228 : f32 = u_xlat81;
    u_xlat81 = inverseSqrt(x_4228);
    let x_4230 : f32 = u_xlat81;
    let x_4232 : vec4<f32> = u_xlat8;
    let x_4234 : vec3<f32> = (vec3<f32>(x_4230, x_4230, x_4230) * vec3<f32>(x_4232.x, x_4232.y, x_4232.z));
    let x_4235 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4234.x, x_4234.y, x_4234.z, x_4235.w);
    let x_4237 : vec4<f32> = u_xlat1;
    let x_4239 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_4237.x, x_4237.y, x_4237.z), vec3<f32>(x_4239.x, x_4239.y, x_4239.z));
    let x_4242 : f32 = u_xlat81;
    u_xlat81 = clamp(x_4242, 0.0f, 1.0f);
    let x_4244 : vec4<f32> = u_xlat9;
    let x_4246 : vec4<f32> = u_xlat8;
    u_xlat82 = dot(vec3<f32>(x_4244.x, x_4244.y, x_4244.z), vec3<f32>(x_4246.x, x_4246.y, x_4246.z));
    let x_4249 : f32 = u_xlat82;
    u_xlat82 = clamp(x_4249, 0.0f, 1.0f);
    let x_4251 : f32 = u_xlat81;
    let x_4252 : f32 = u_xlat81;
    u_xlat81 = (x_4251 * x_4252);
    let x_4254 : f32 = u_xlat81;
    let x_4256 : f32 = u_xlat0.x;
    u_xlat81 = ((x_4254 * x_4256) + 1.00001001358032226562f);
    let x_4259 : f32 = u_xlat82;
    let x_4260 : f32 = u_xlat82;
    u_xlat82 = (x_4259 * x_4260);
    let x_4262 : f32 = u_xlat81;
    let x_4263 : f32 = u_xlat81;
    u_xlat81 = (x_4262 * x_4263);
    let x_4265 : f32 = u_xlat82;
    u_xlat82 = max(x_4265, 0.10000000149011611938f);
    let x_4267 : f32 = u_xlat81;
    let x_4268 : f32 = u_xlat82;
    u_xlat81 = (x_4267 * x_4268);
    let x_4270 : f32 = u_xlat79;
    let x_4271 : f32 = u_xlat81;
    u_xlat81 = (x_4270 * x_4271);
    let x_4273 : f32 = u_xlat77;
    let x_4274 : f32 = u_xlat81;
    u_xlat81 = (x_4273 / x_4274);
    let x_4276 : vec4<f32> = u_xlat4;
    let x_4278 : f32 = u_xlat81;
    let x_4281 : vec3<f32> = u_xlat28;
    let x_4282 : vec3<f32> = ((vec3<f32>(x_4276.x, x_4276.y, x_4276.z) * vec3<f32>(x_4278, x_4278, x_4278)) + x_4281);
    let x_4283 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4282.x, x_4282.y, x_4282.z, x_4283.w);
    let x_4285 : vec4<f32> = u_xlat8;
    let x_4287 : vec4<f32> = u_xlat10;
    let x_4290 : vec4<f32> = u_xlat7;
    let x_4292 : vec3<f32> = ((vec3<f32>(x_4285.x, x_4285.y, x_4285.z) * vec3<f32>(x_4287.x, x_4287.y, x_4287.z)) + vec3<f32>(x_4290.x, x_4290.y, x_4290.z));
    let x_4293 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_4292.x, x_4292.y, x_4292.z, x_4293.w);

    continuing {
      let x_4295 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4295 + bitcast<u32>(1i));
    }
  }
  let x_4297 : vec4<f32> = u_xlat2;
  let x_4299 : f32 = u_xlat25;
  let x_4302 : vec4<f32> = u_xlat5;
  u_xlat0 = ((vec3<f32>(x_4297.x, x_4297.y, x_4297.z) * vec3<f32>(x_4299, x_4299, x_4299)) + vec3<f32>(x_4302.x, x_4302.z, x_4302.w));
  let x_4305 : vec4<f32> = u_xlat7;
  let x_4307 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4305.x, x_4305.y, x_4305.z) + x_4307);
  let x_4309 : f32 = u_xlat75;
  let x_4311 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4309, x_4309, x_4309) * x_4311);
  let x_4313 : f32 = u_xlat76;
  let x_4314 : f32 = u_xlat76;
  u_xlat75 = (x_4313 * -(x_4314));
  let x_4317 : f32 = u_xlat75;
  u_xlat75 = exp2(x_4317);
  let x_4321 : vec3<f32> = u_xlat0;
  let x_4322 : f32 = u_xlat75;
  let x_4324 : vec3<f32> = (x_4321 * vec3<f32>(x_4322, x_4322, x_4322));
  let x_4325 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4324.x, x_4324.y, x_4324.z, x_4325.w);
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


