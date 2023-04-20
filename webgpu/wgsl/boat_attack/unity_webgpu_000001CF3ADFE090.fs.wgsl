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
  unity_OrthoParams : vec4<f32>,
  /* @offset(112) */
  unity_FogParams : vec4<f32>,
  /* @offset(128) */
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

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(3) var x_Control : texture_2d<f32>;

@group(0) @binding(12) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_111 : PGlobals;

var<private> u_xlat75 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(4) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(13) var sampler_Splat0 : sampler;

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

var<private> u_xlat50 : f32;

var<private> u_xlat25 : f32;

var<private> u_xlatb1 : bool;

var<private> u_xlat26 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(11) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat77 : f32;

var<private> u_xlat78 : f32;

var<private> u_xlat79 : f32;

var<private> u_xlatb80 : bool;

@group(1) @binding(4) var<uniform> x_739 : LightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(8) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_LinearClampCompare : sampler_comparison;

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

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2157 : UnityPerDraw;

var<private> u_xlatu50 : u32;

var<private> u_xlatu6 : u32;

var<private> u_xlati82 : i32;

var<private> u_xlati6 : i32;

@group(1) @binding(1) var<uniform> x_2418 : AdditionalLights;

var<private> u_xlat82 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlati84 : i32;

var<private> u_xlatb10 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat35 : vec3<f32>;

var<private> u_xlat60 : f32;

var<private> u_xlatb84 : bool;

@group(0) @binding(9) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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
  var x_560 : vec3<f32>;
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
  var x_2559 : f32;
  var x_2570 : f32;
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
  u_xlat2 = ((vec3<f32>(x_45.x, x_45.y, x_45.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_50.x, x_50.y, x_50.w));
  let x_56 : vec4<f32> = x_13.x_MaskMapRemapScale3;
  let x_61 : vec4<f32> = x_13.x_MaskMapRemapOffset3;
  let x_63 : vec3<f32> = ((vec3<f32>(x_56.x, x_56.w, x_56.y) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_61.x, x_61.w, x_61.y));
  let x_64 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_63.x, x_63.y, x_64.z, x_63.z);
  let x_70 : vec4<f32> = x_13.x_Control_TexelSize;
  let x_74 : vec2<f32> = (vec2<f32>(x_70.z, x_70.w) + vec2<f32>(-1.0f, -1.0f));
  let x_75 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_74.x, x_74.y, x_75.z, x_75.w);
  let x_79 : vec4<f32> = vs_TEXCOORD0;
  let x_81 : vec4<f32> = u_xlat4;
  let x_85 : vec2<f32> = ((vec2<f32>(x_79.x, x_79.y) * vec2<f32>(x_81.x, x_81.y)) + vec2<f32>(0.5f, 0.5f));
  let x_86 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_85.x, x_85.y, x_86.z, x_86.w);
  let x_88 : vec4<f32> = u_xlat4;
  let x_91 : vec4<f32> = x_13.x_Control_TexelSize;
  let x_93 : vec2<f32> = (vec2<f32>(x_88.x, x_88.y) * vec2<f32>(x_91.x, x_91.y));
  let x_94 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_93.x, x_93.y, x_94.z, x_94.w);
  let x_106 : vec4<f32> = u_xlat4;
  let x_117 : f32 = x_111.x_GlobalMipBias.x;
  let x_118 : vec4<f32> = textureSampleBias(x_Control, sampler_Control, vec2<f32>(x_106.x, x_106.y), x_117);
  u_xlat4 = x_118;
  let x_121 : vec4<f32> = u_xlat4;
  u_xlat75 = dot(x_121, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_132 : vec4<f32> = vs_TEXCOORD1;
  let x_135 : f32 = x_111.x_GlobalMipBias.x;
  let x_136 : vec4<f32> = textureSampleBias(x_Splat0, sampler_Splat0, vec2<f32>(x_132.x, x_132.y), x_135);
  u_xlat5 = x_136;
  let x_142 : vec4<f32> = vs_TEXCOORD1;
  let x_145 : f32 = x_111.x_GlobalMipBias.x;
  let x_146 : vec4<f32> = textureSampleBias(x_Splat1, sampler_Splat0, vec2<f32>(x_142.z, x_142.w), x_145);
  u_xlat6 = x_146;
  let x_153 : vec4<f32> = vs_TEXCOORD2;
  let x_156 : f32 = x_111.x_GlobalMipBias.x;
  let x_157 : vec4<f32> = textureSampleBias(x_Splat2, sampler_Splat0, vec2<f32>(x_153.x, x_153.y), x_156);
  u_xlat7 = x_157;
  let x_163 : vec4<f32> = vs_TEXCOORD2;
  let x_166 : f32 = x_111.x_GlobalMipBias.x;
  let x_167 : vec4<f32> = textureSampleBias(x_Splat3, sampler_Splat0, vec2<f32>(x_163.z, x_163.w), x_166);
  u_xlat8 = x_167;
  let x_171 : f32 = u_xlat5.w;
  u_xlat9.x = x_171;
  let x_174 : f32 = u_xlat6.w;
  u_xlat9.y = x_174;
  let x_178 : f32 = u_xlat7.w;
  u_xlat9.z = x_178;
  let x_182 : f32 = u_xlat8.w;
  u_xlat9.w = x_182;
  let x_185 : vec4<f32> = u_xlat9;
  let x_188 : f32 = x_13.x_Smoothness0;
  let x_191 : f32 = x_13.x_Smoothness1;
  let x_194 : f32 = x_13.x_Smoothness2;
  let x_197 : f32 = x_13.x_Smoothness3;
  u_xlat10 = (x_185 * vec4<f32>(x_188, x_191, x_194, x_197));
  let x_206 : f32 = x_13.x_NumLayersCount;
  u_xlatb76 = (4.0f >= x_206);
  let x_209 : vec4<f32> = u_xlat4;
  u_xlat11 = (-(x_209) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_212 : vec4<f32> = u_xlat9;
  let x_213 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_212 + -(x_213));
  let x_216 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_216 * vec4<f32>(20.0f, 20.0f, 20.0f, 20.0f));
  let x_220 : vec4<f32> = u_xlat11;
  u_xlat11 = clamp(x_220, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_225 : vec4<f32> = u_xlat4;
  let x_229 : vec4<f32> = u_xlat11;
  u_xlat11 = ((x_225 * vec4<f32>(0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f)) + x_229);
  let x_232 : vec4<f32> = u_xlat4;
  let x_233 : vec4<f32> = u_xlat11;
  u_xlat12 = (x_232 + -(x_233));
  let x_238 : f32 = u_xlat12.x;
  let x_241 : f32 = x_13.x_DiffuseRemapScale0.w;
  u_xlat13.x = (x_238 * x_241);
  let x_245 : f32 = u_xlat12.y;
  let x_248 : f32 = x_13.x_DiffuseRemapScale1.w;
  u_xlat13.y = (x_245 * x_248);
  let x_252 : f32 = u_xlat12.z;
  let x_255 : f32 = x_13.x_DiffuseRemapScale2.w;
  u_xlat13.z = (x_252 * x_255);
  let x_259 : f32 = u_xlat12.w;
  let x_262 : f32 = x_13.x_DiffuseRemapScale3.w;
  u_xlat13.w = (x_259 * x_262);
  let x_265 : vec4<f32> = u_xlat11;
  let x_266 : vec4<f32> = u_xlat13;
  u_xlat11 = (x_265 + x_266);
  let x_268 : bool = u_xlatb76;
  let x_269 : vec4<f32> = u_xlat11;
  let x_270 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_270, x_269, vec4<bool>(x_268, x_268, x_268, x_268));
  let x_275 : vec4<f32> = u_xlat4;
  u_xlat76 = dot(x_275, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_279 : f32 = u_xlat76;
  u_xlatb77 = (0.00499999988824129105f >= x_279);
  let x_281 : bool = u_xlatb77;
  if (((select(0i, 1i, x_281) * -1i) != 0i)) {
    discard;
  }
  let x_290 : f32 = u_xlat76;
  u_xlat76 = (x_290 + 0.00006103515625f);
  let x_293 : vec4<f32> = u_xlat4;
  let x_294 : f32 = u_xlat76;
  u_xlat4 = (x_293 / vec4<f32>(x_294, x_294, x_294, x_294));
  let x_297 : vec4<f32> = u_xlat4;
  let x_300 : vec4<f32> = x_13.x_DiffuseRemapScale0;
  let x_302 : vec3<f32> = (vec3<f32>(x_297.x, x_297.x, x_297.x) * vec3<f32>(x_300.x, x_300.y, x_300.z));
  let x_303 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_302.x, x_302.y, x_302.z, x_303.w);
  let x_305 : vec4<f32> = u_xlat4;
  let x_308 : vec4<f32> = x_13.x_DiffuseRemapScale1;
  let x_310 : vec3<f32> = (vec3<f32>(x_305.y, x_305.y, x_305.y) * vec3<f32>(x_308.x, x_308.y, x_308.z));
  let x_311 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_310.x, x_310.y, x_310.z, x_311.w);
  let x_313 : vec4<f32> = u_xlat6;
  let x_315 : vec4<f32> = u_xlat12;
  let x_317 : vec3<f32> = (vec3<f32>(x_313.x, x_313.y, x_313.z) * vec3<f32>(x_315.x, x_315.y, x_315.z));
  let x_318 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_317.x, x_317.y, x_317.z, x_318.w);
  let x_320 : vec4<f32> = u_xlat5;
  let x_322 : vec4<f32> = u_xlat11;
  let x_325 : vec4<f32> = u_xlat6;
  let x_327 : vec3<f32> = ((vec3<f32>(x_320.x, x_320.y, x_320.z) * vec3<f32>(x_322.x, x_322.y, x_322.z)) + vec3<f32>(x_325.x, x_325.y, x_325.z));
  let x_328 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_327.x, x_327.y, x_327.z, x_328.w);
  let x_330 : vec4<f32> = u_xlat4;
  let x_333 : vec4<f32> = x_13.x_DiffuseRemapScale2;
  let x_335 : vec3<f32> = (vec3<f32>(x_330.z, x_330.z, x_330.z) * vec3<f32>(x_333.x, x_333.y, x_333.z));
  let x_336 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_335.x, x_335.y, x_335.z, x_336.w);
  let x_338 : vec4<f32> = u_xlat7;
  let x_340 : vec4<f32> = u_xlat6;
  let x_343 : vec4<f32> = u_xlat5;
  let x_345 : vec3<f32> = ((vec3<f32>(x_338.x, x_338.y, x_338.z) * vec3<f32>(x_340.x, x_340.y, x_340.z)) + vec3<f32>(x_343.x, x_343.y, x_343.z));
  let x_346 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_345.x, x_345.y, x_345.z, x_346.w);
  let x_348 : vec4<f32> = u_xlat4;
  let x_351 : vec4<f32> = x_13.x_DiffuseRemapScale3;
  let x_353 : vec3<f32> = (vec3<f32>(x_348.w, x_348.w, x_348.w) * vec3<f32>(x_351.x, x_351.y, x_351.z));
  let x_354 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_353.x, x_353.y, x_353.z, x_354.w);
  let x_356 : vec4<f32> = u_xlat8;
  let x_358 : vec4<f32> = u_xlat6;
  let x_361 : vec4<f32> = u_xlat5;
  let x_363 : vec3<f32> = ((vec3<f32>(x_356.x, x_356.y, x_356.z) * vec3<f32>(x_358.x, x_358.y, x_358.z)) + vec3<f32>(x_361.x, x_361.y, x_361.z));
  let x_364 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_363.x, x_363.y, x_363.z, x_364.w);
  let x_367 : f32 = x_13.x_MaskMapRemapScale0.y;
  u_xlat6.x = x_367;
  let x_370 : f32 = x_13.x_MaskMapRemapScale1.y;
  u_xlat6.y = x_370;
  let x_373 : f32 = x_13.x_MaskMapRemapScale2.y;
  u_xlat6.z = x_373;
  let x_376 : f32 = x_13.x_MaskMapRemapScale3.y;
  u_xlat6.w = x_376;
  let x_379 : f32 = x_13.x_MaskMapRemapOffset0.y;
  u_xlat7.x = x_379;
  let x_382 : f32 = x_13.x_MaskMapRemapOffset1.y;
  u_xlat7.y = x_382;
  let x_385 : f32 = x_13.x_MaskMapRemapOffset2.y;
  u_xlat7.z = x_385;
  let x_388 : f32 = x_13.x_MaskMapRemapOffset3.y;
  u_xlat7.w = x_388;
  let x_390 : vec4<f32> = u_xlat6;
  let x_391 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_390 + x_391);
  let x_394 : f32 = u_xlat0.z;
  u_xlat7.x = x_394;
  let x_397 : f32 = u_xlat1.z;
  u_xlat7.y = x_397;
  let x_400 : f32 = u_xlat2.z;
  u_xlat7.z = x_400;
  let x_403 : f32 = u_xlat3.y;
  u_xlat7.w = x_403;
  let x_405 : vec4<f32> = u_xlat9;
  let x_408 : f32 = x_13.x_Smoothness0;
  let x_410 : f32 = x_13.x_Smoothness1;
  let x_412 : f32 = x_13.x_Smoothness2;
  let x_414 : f32 = x_13.x_Smoothness3;
  let x_417 : vec4<f32> = u_xlat7;
  u_xlat7 = ((-(x_405) * vec4<f32>(x_408, x_410, x_412, x_414)) + x_417);
  let x_421 : f32 = x_13.x_LayerHasMask0;
  let x_424 : f32 = x_13.x_LayerHasMask1;
  let x_427 : f32 = x_13.x_LayerHasMask2;
  let x_430 : f32 = x_13.x_LayerHasMask3;
  let x_432 : vec4<f32> = u_xlat7;
  let x_434 : vec4<f32> = u_xlat10;
  u_xlat7 = ((vec4<f32>(x_421, x_424, x_427, x_430) * x_432) + x_434);
  let x_437 : vec4<f32> = u_xlat4;
  let x_438 : vec4<f32> = u_xlat7;
  u_xlat50 = dot(x_437, x_438);
  let x_441 : f32 = u_xlat0.x;
  u_xlat7.x = x_441;
  let x_444 : f32 = u_xlat1.x;
  u_xlat7.y = x_444;
  let x_447 : f32 = u_xlat2.x;
  u_xlat7.z = x_447;
  let x_450 : f32 = u_xlat3.x;
  u_xlat7.w = x_450;
  let x_452 : vec4<f32> = u_xlat7;
  let x_455 : f32 = x_13.x_Metallic0;
  let x_458 : f32 = x_13.x_Metallic1;
  let x_461 : f32 = x_13.x_Metallic2;
  let x_464 : f32 = x_13.x_Metallic3;
  u_xlat7 = (x_452 + -(vec4<f32>(x_455, x_458, x_461, x_464)));
  let x_469 : f32 = x_13.x_LayerHasMask0;
  let x_471 : f32 = x_13.x_LayerHasMask1;
  let x_473 : f32 = x_13.x_LayerHasMask2;
  let x_475 : f32 = x_13.x_LayerHasMask3;
  let x_477 : vec4<f32> = u_xlat7;
  let x_480 : f32 = x_13.x_Metallic0;
  let x_482 : f32 = x_13.x_Metallic1;
  let x_484 : f32 = x_13.x_Metallic2;
  let x_486 : f32 = x_13.x_Metallic3;
  u_xlat7 = ((vec4<f32>(x_469, x_471, x_473, x_475) * x_477) + vec4<f32>(x_480, x_482, x_484, x_486));
  let x_489 : vec4<f32> = u_xlat4;
  let x_490 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_489, x_490);
  let x_494 : f32 = u_xlat0.y;
  u_xlat3.x = x_494;
  let x_497 : f32 = u_xlat1.y;
  u_xlat3.y = x_497;
  let x_500 : f32 = u_xlat2.y;
  u_xlat3.z = x_500;
  let x_502 : vec4<f32> = u_xlat6;
  let x_504 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_502) + x_504);
  let x_507 : f32 = x_13.x_LayerHasMask0;
  let x_509 : f32 = x_13.x_LayerHasMask1;
  let x_511 : f32 = x_13.x_LayerHasMask2;
  let x_513 : f32 = x_13.x_LayerHasMask3;
  let x_515 : vec4<f32> = u_xlat1;
  let x_517 : vec4<f32> = u_xlat6;
  u_xlat1 = ((vec4<f32>(x_507, x_509, x_511, x_513) * x_515) + x_517);
  let x_520 : vec4<f32> = u_xlat4;
  let x_521 : vec4<f32> = u_xlat1;
  u_xlat25 = dot(x_520, x_521);
  let x_525 : f32 = x_111.unity_OrthoParams.w;
  u_xlatb1 = (x_525 == 0.0f);
  let x_530 : vec3<f32> = vs_TEXCOORD7;
  let x_534 : vec3<f32> = x_111.x_WorldSpaceCameraPos;
  u_xlat26 = (-(x_530) + x_534);
  let x_536 : vec3<f32> = u_xlat26;
  let x_537 : vec3<f32> = u_xlat26;
  u_xlat2.x = dot(x_536, x_537);
  let x_541 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_541);
  let x_544 : vec3<f32> = u_xlat26;
  let x_545 : vec3<f32> = u_xlat2;
  u_xlat26 = (x_544 * vec3<f32>(x_545.x, x_545.x, x_545.x));
  let x_549 : f32 = x_111.unity_MatrixV[0i].z;
  u_xlat2.x = x_549;
  let x_552 : f32 = x_111.unity_MatrixV[1i].z;
  u_xlat2.y = x_552;
  let x_556 : f32 = x_111.unity_MatrixV[2i].z;
  u_xlat2.z = x_556;
  let x_558 : bool = u_xlatb1;
  if (x_558) {
    let x_563 : vec3<f32> = u_xlat26;
    x_560 = x_563;
  } else {
    let x_565 : vec3<f32> = u_xlat2;
    x_560 = x_565;
  }
  let x_566 : vec3<f32> = x_560;
  let x_567 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_566.x, x_566.y, x_566.z, x_567.w);
  let x_570 : vec3<f32> = vs_TEXCOORD3;
  let x_571 : vec3<f32> = vs_TEXCOORD3;
  u_xlat76 = dot(x_570, x_571);
  let x_573 : f32 = u_xlat76;
  u_xlat76 = inverseSqrt(x_573);
  let x_575 : f32 = u_xlat76;
  let x_577 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2 = (vec3<f32>(x_575, x_575, x_575) * x_577);
  let x_581 : f32 = vs_TEXCOORD7.y;
  let x_583 : f32 = x_111.unity_MatrixV[1i].z;
  u_xlat76 = (x_581 * x_583);
  let x_586 : f32 = x_111.unity_MatrixV[0i].z;
  let x_588 : f32 = vs_TEXCOORD7.x;
  let x_590 : f32 = u_xlat76;
  u_xlat76 = ((x_586 * x_588) + x_590);
  let x_593 : f32 = x_111.unity_MatrixV[2i].z;
  let x_595 : f32 = vs_TEXCOORD7.z;
  let x_597 : f32 = u_xlat76;
  u_xlat76 = ((x_593 * x_595) + x_597);
  let x_599 : f32 = u_xlat76;
  let x_602 : f32 = x_111.unity_MatrixV[3i].z;
  u_xlat76 = (x_599 + x_602);
  let x_604 : f32 = u_xlat76;
  let x_607 : f32 = x_111.x_ProjectionParams.y;
  u_xlat76 = (-(x_604) + -(x_607));
  let x_610 : f32 = u_xlat76;
  u_xlat76 = max(x_610, 0.0f);
  let x_612 : f32 = u_xlat76;
  let x_614 : f32 = x_111.unity_FogParams.x;
  u_xlat76 = (x_612 * x_614);
  let x_621 : vec4<f32> = vs_TEXCOORD0;
  let x_624 : f32 = x_111.x_GlobalMipBias.x;
  let x_625 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_621.z, x_621.w), x_624);
  u_xlat3 = x_625;
  let x_630 : vec4<f32> = vs_TEXCOORD0;
  let x_633 : f32 = x_111.x_GlobalMipBias.x;
  let x_634 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_630.z, x_630.w), x_633);
  let x_635 : vec3<f32> = vec3<f32>(x_634.x, x_634.y, x_634.z);
  let x_636 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_635.x, x_635.y, x_635.z, x_636.w);
  let x_638 : vec4<f32> = u_xlat3;
  let x_642 : vec3<f32> = (vec3<f32>(x_638.x, x_638.y, x_638.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_643 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_642.x, x_642.y, x_642.z, x_643.w);
  let x_646 : vec3<f32> = u_xlat2;
  let x_647 : vec4<f32> = u_xlat3;
  u_xlat77 = dot(x_646, vec3<f32>(x_647.x, x_647.y, x_647.z));
  let x_650 : f32 = u_xlat77;
  u_xlat77 = (x_650 + 0.5f);
  let x_652 : f32 = u_xlat77;
  let x_654 : vec4<f32> = u_xlat4;
  let x_656 : vec3<f32> = (vec3<f32>(x_652, x_652, x_652) * vec3<f32>(x_654.x, x_654.y, x_654.z));
  let x_657 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_656.x, x_656.y, x_656.z, x_657.w);
  let x_660 : f32 = u_xlat3.w;
  u_xlat77 = max(x_660, 0.00009999999747378752f);
  let x_663 : vec4<f32> = u_xlat3;
  let x_665 : f32 = u_xlat77;
  let x_667 : vec3<f32> = (vec3<f32>(x_663.x, x_663.y, x_663.z) / vec3<f32>(x_665, x_665, x_665));
  let x_668 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_667.x, x_667.y, x_667.z, x_668.w);
  let x_671 : f32 = u_xlat0.x;
  u_xlat77 = ((-(x_671) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_677 : f32 = u_xlat50;
  let x_678 : f32 = u_xlat77;
  u_xlat78 = (x_677 + -(x_678));
  let x_681 : f32 = u_xlat77;
  let x_683 : vec4<f32> = u_xlat5;
  let x_685 : vec3<f32> = (vec3<f32>(x_681, x_681, x_681) * vec3<f32>(x_683.x, x_683.y, x_683.z));
  let x_686 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_685.x, x_685.y, x_685.z, x_686.w);
  let x_688 : vec4<f32> = u_xlat5;
  let x_692 : vec3<f32> = (vec3<f32>(x_688.x, x_688.y, x_688.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_693 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_692.x, x_692.y, x_692.z, x_693.w);
  let x_695 : vec3<f32> = u_xlat0;
  let x_697 : vec4<f32> = u_xlat5;
  let x_702 : vec3<f32> = ((vec3<f32>(x_695.x, x_695.x, x_695.x) * vec3<f32>(x_697.x, x_697.y, x_697.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_703 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_702.x, x_702.y, x_702.z, x_703.w);
  let x_705 : f32 = u_xlat50;
  u_xlat0.x = (-(x_705) + 1.0f);
  let x_710 : f32 = u_xlat0.x;
  let x_712 : f32 = u_xlat0.x;
  u_xlat50 = (x_710 * x_712);
  let x_714 : f32 = u_xlat50;
  u_xlat50 = max(x_714, 0.0078125f);
  let x_717 : f32 = u_xlat50;
  let x_718 : f32 = u_xlat50;
  u_xlat77 = (x_717 * x_718);
  let x_720 : f32 = u_xlat78;
  u_xlat78 = (x_720 + 1.0f);
  let x_722 : f32 = u_xlat78;
  u_xlat78 = clamp(x_722, 0.0f, 1.0f);
  let x_725 : f32 = u_xlat50;
  u_xlat79 = ((x_725 * 4.0f) + 2.0f);
  let x_729 : f32 = u_xlat25;
  u_xlat25 = min(x_729, 1.0f);
  let x_741 : f32 = x_739.x_MainLightShadowParams.y;
  u_xlatb80 = (0.0f < x_741);
  let x_743 : bool = u_xlatb80;
  if (x_743) {
    let x_747 : f32 = x_739.x_MainLightShadowParams.y;
    u_xlatb80 = (x_747 == 1.0f);
    let x_749 : bool = u_xlatb80;
    if (x_749) {
      let x_753 : vec4<f32> = vs_TEXCOORD8;
      let x_756 : vec4<f32> = x_739.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_753.x, x_753.y, x_753.x, x_753.y) + x_756);
      let x_759 : vec4<f32> = u_xlat6;
      let x_760 : vec2<f32> = vec2<f32>(x_759.x, x_759.y);
      let x_762 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_760.x, x_760.y, x_762);
      let x_774 : vec3<f32> = txVec0;
      let x_776 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_774.xy, x_774.z);
      u_xlat7.x = x_776;
      let x_779 : vec4<f32> = u_xlat6;
      let x_780 : vec2<f32> = vec2<f32>(x_779.z, x_779.w);
      let x_782 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_780.x, x_780.y, x_782);
      let x_789 : vec3<f32> = txVec1;
      let x_791 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_789.xy, x_789.z);
      u_xlat7.y = x_791;
      let x_793 : vec4<f32> = vs_TEXCOORD8;
      let x_796 : vec4<f32> = x_739.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_793.x, x_793.y, x_793.x, x_793.y) + x_796);
      let x_799 : vec4<f32> = u_xlat6;
      let x_800 : vec2<f32> = vec2<f32>(x_799.x, x_799.y);
      let x_802 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_800.x, x_800.y, x_802);
      let x_809 : vec3<f32> = txVec2;
      let x_811 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_809.xy, x_809.z);
      u_xlat7.z = x_811;
      let x_814 : vec4<f32> = u_xlat6;
      let x_815 : vec2<f32> = vec2<f32>(x_814.z, x_814.w);
      let x_817 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_815.x, x_815.y, x_817);
      let x_824 : vec3<f32> = txVec3;
      let x_826 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_824.xy, x_824.z);
      u_xlat7.w = x_826;
      let x_829 : vec4<f32> = u_xlat7;
      u_xlat80 = dot(x_829, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_836 : f32 = x_739.x_MainLightShadowParams.y;
      u_xlatb6 = (x_836 == 2.0f);
      let x_838 : bool = u_xlatb6;
      if (x_838) {
        let x_841 : vec4<f32> = vs_TEXCOORD8;
        let x_844 : vec4<f32> = x_739.x_MainLightShadowmapSize;
        let x_847 : vec2<f32> = ((vec2<f32>(x_841.x, x_841.y) * vec2<f32>(x_844.z, x_844.w)) + vec2<f32>(0.5f, 0.5f));
        let x_848 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_847.x, x_847.y, x_848.z, x_848.w);
        let x_850 : vec4<f32> = u_xlat6;
        let x_852 : vec2<f32> = floor(vec2<f32>(x_850.x, x_850.y));
        let x_853 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_852.x, x_852.y, x_853.z, x_853.w);
        let x_857 : vec4<f32> = vs_TEXCOORD8;
        let x_860 : vec4<f32> = x_739.x_MainLightShadowmapSize;
        let x_863 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_857.x, x_857.y) * vec2<f32>(x_860.z, x_860.w)) + -(vec2<f32>(x_863.x, x_863.y)));
        let x_867 : vec2<f32> = u_xlat56;
        u_xlat7 = (vec4<f32>(x_867.x, x_867.x, x_867.y, x_867.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_871 : vec4<f32> = u_xlat7;
        let x_873 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_871.x, x_871.x, x_871.z, x_871.z) * vec4<f32>(x_873.x, x_873.x, x_873.z, x_873.z));
        let x_876 : vec4<f32> = u_xlat8;
        let x_880 : vec2<f32> = (vec2<f32>(x_876.y, x_876.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_881 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_880.x, x_881.y, x_880.y, x_881.w);
        let x_883 : vec4<f32> = u_xlat8;
        let x_886 : vec2<f32> = u_xlat56;
        let x_888 : vec2<f32> = ((vec2<f32>(x_883.x, x_883.z) * vec2<f32>(0.5f, 0.5f)) + -(x_886));
        let x_889 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_888.x, x_888.y, x_889.z, x_889.w);
        let x_892 : vec2<f32> = u_xlat56;
        u_xlat58 = (-(x_892) + vec2<f32>(1.0f, 1.0f));
        let x_896 : vec2<f32> = u_xlat56;
        let x_898 : vec2<f32> = min(x_896, vec2<f32>(0.0f, 0.0f));
        let x_899 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_898.x, x_898.y, x_899.z, x_899.w);
        let x_901 : vec4<f32> = u_xlat9;
        let x_904 : vec4<f32> = u_xlat9;
        let x_907 : vec2<f32> = u_xlat58;
        let x_908 : vec2<f32> = ((-(vec2<f32>(x_901.x, x_901.y)) * vec2<f32>(x_904.x, x_904.y)) + x_907);
        let x_909 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_908.x, x_908.y, x_909.z, x_909.w);
        let x_911 : vec2<f32> = u_xlat56;
        u_xlat56 = max(x_911, vec2<f32>(0.0f, 0.0f));
        let x_913 : vec2<f32> = u_xlat56;
        let x_915 : vec2<f32> = u_xlat56;
        let x_917 : vec4<f32> = u_xlat7;
        u_xlat56 = ((-(x_913) * x_915) + vec2<f32>(x_917.y, x_917.w));
        let x_920 : vec4<f32> = u_xlat9;
        let x_922 : vec2<f32> = (vec2<f32>(x_920.x, x_920.y) + vec2<f32>(1.0f, 1.0f));
        let x_923 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_922.x, x_922.y, x_923.z, x_923.w);
        let x_925 : vec2<f32> = u_xlat56;
        u_xlat56 = (x_925 + vec2<f32>(1.0f, 1.0f));
        let x_927 : vec4<f32> = u_xlat8;
        let x_931 : vec2<f32> = (vec2<f32>(x_927.x, x_927.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_932 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_931.x, x_931.y, x_932.z, x_932.w);
        let x_934 : vec2<f32> = u_xlat58;
        let x_935 : vec2<f32> = (x_934 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_936 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_935.x, x_935.y, x_936.z, x_936.w);
        let x_938 : vec4<f32> = u_xlat9;
        let x_940 : vec2<f32> = (vec2<f32>(x_938.x, x_938.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_941 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_940.x, x_940.y, x_941.z, x_941.w);
        let x_943 : vec2<f32> = u_xlat56;
        let x_944 : vec2<f32> = (x_943 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_945 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_944.x, x_944.y, x_945.z, x_945.w);
        let x_947 : vec4<f32> = u_xlat7;
        u_xlat56 = (vec2<f32>(x_947.y, x_947.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_951 : f32 = u_xlat9.x;
        u_xlat10.z = x_951;
        let x_954 : f32 = u_xlat56.x;
        u_xlat10.w = x_954;
        let x_957 : f32 = u_xlat11.x;
        u_xlat8.z = x_957;
        let x_960 : f32 = u_xlat7.x;
        u_xlat8.w = x_960;
        let x_962 : vec4<f32> = u_xlat8;
        let x_964 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_962.z, x_962.w, x_962.x, x_962.z) + vec4<f32>(x_964.z, x_964.w, x_964.x, x_964.z));
        let x_968 : f32 = u_xlat10.y;
        u_xlat9.z = x_968;
        let x_971 : f32 = u_xlat56.y;
        u_xlat9.w = x_971;
        let x_974 : f32 = u_xlat8.y;
        u_xlat11.z = x_974;
        let x_977 : f32 = u_xlat7.z;
        u_xlat11.w = x_977;
        let x_979 : vec4<f32> = u_xlat9;
        let x_981 : vec4<f32> = u_xlat11;
        let x_983 : vec3<f32> = (vec3<f32>(x_979.z, x_979.y, x_979.w) + vec3<f32>(x_981.z, x_981.y, x_981.w));
        let x_984 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_983.x, x_983.y, x_983.z, x_984.w);
        let x_986 : vec4<f32> = u_xlat8;
        let x_988 : vec4<f32> = u_xlat12;
        let x_990 : vec3<f32> = (vec3<f32>(x_986.x, x_986.z, x_986.w) / vec3<f32>(x_988.z, x_988.w, x_988.y));
        let x_991 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_990.x, x_990.y, x_990.z, x_991.w);
        let x_993 : vec4<f32> = u_xlat8;
        let x_998 : vec3<f32> = (vec3<f32>(x_993.x, x_993.y, x_993.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_999 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_998.x, x_998.y, x_998.z, x_999.w);
        let x_1001 : vec4<f32> = u_xlat11;
        let x_1003 : vec4<f32> = u_xlat7;
        let x_1005 : vec3<f32> = (vec3<f32>(x_1001.z, x_1001.y, x_1001.w) / vec3<f32>(x_1003.x, x_1003.y, x_1003.z));
        let x_1006 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1005.x, x_1005.y, x_1005.z, x_1006.w);
        let x_1008 : vec4<f32> = u_xlat9;
        let x_1010 : vec3<f32> = (vec3<f32>(x_1008.x, x_1008.y, x_1008.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1011 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1010.x, x_1010.y, x_1010.z, x_1011.w);
        let x_1013 : vec4<f32> = u_xlat8;
        let x_1016 : vec4<f32> = x_739.x_MainLightShadowmapSize;
        let x_1018 : vec3<f32> = (vec3<f32>(x_1013.y, x_1013.x, x_1013.z) * vec3<f32>(x_1016.x, x_1016.x, x_1016.x));
        let x_1019 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1018.x, x_1018.y, x_1018.z, x_1019.w);
        let x_1021 : vec4<f32> = u_xlat9;
        let x_1024 : vec4<f32> = x_739.x_MainLightShadowmapSize;
        let x_1026 : vec3<f32> = (vec3<f32>(x_1021.x, x_1021.y, x_1021.z) * vec3<f32>(x_1024.y, x_1024.y, x_1024.y));
        let x_1027 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1026.x, x_1026.y, x_1026.z, x_1027.w);
        let x_1030 : f32 = u_xlat9.x;
        u_xlat8.w = x_1030;
        let x_1032 : vec4<f32> = u_xlat6;
        let x_1035 : vec4<f32> = x_739.x_MainLightShadowmapSize;
        let x_1038 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1032.x, x_1032.y, x_1032.x, x_1032.y) * vec4<f32>(x_1035.x, x_1035.y, x_1035.x, x_1035.y)) + vec4<f32>(x_1038.y, x_1038.w, x_1038.x, x_1038.w));
        let x_1041 : vec4<f32> = u_xlat6;
        let x_1044 : vec4<f32> = x_739.x_MainLightShadowmapSize;
        let x_1047 : vec4<f32> = u_xlat8;
        u_xlat56 = ((vec2<f32>(x_1041.x, x_1041.y) * vec2<f32>(x_1044.x, x_1044.y)) + vec2<f32>(x_1047.z, x_1047.w));
        let x_1051 : f32 = u_xlat8.y;
        u_xlat9.w = x_1051;
        let x_1053 : vec4<f32> = u_xlat9;
        let x_1054 : vec2<f32> = vec2<f32>(x_1053.y, x_1053.z);
        let x_1055 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1055.x, x_1054.x, x_1055.z, x_1054.y);
        let x_1057 : vec4<f32> = u_xlat6;
        let x_1060 : vec4<f32> = x_739.x_MainLightShadowmapSize;
        let x_1063 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1057.x, x_1057.y, x_1057.x, x_1057.y) * vec4<f32>(x_1060.x, x_1060.y, x_1060.x, x_1060.y)) + vec4<f32>(x_1063.x, x_1063.y, x_1063.z, x_1063.y));
        let x_1066 : vec4<f32> = u_xlat6;
        let x_1069 : vec4<f32> = x_739.x_MainLightShadowmapSize;
        let x_1072 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1066.x, x_1066.y, x_1066.x, x_1066.y) * vec4<f32>(x_1069.x, x_1069.y, x_1069.x, x_1069.y)) + vec4<f32>(x_1072.w, x_1072.y, x_1072.w, x_1072.z));
        let x_1075 : vec4<f32> = u_xlat6;
        let x_1078 : vec4<f32> = x_739.x_MainLightShadowmapSize;
        let x_1081 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1075.x, x_1075.y, x_1075.x, x_1075.y) * vec4<f32>(x_1078.x, x_1078.y, x_1078.x, x_1078.y)) + vec4<f32>(x_1081.x, x_1081.w, x_1081.z, x_1081.w));
        let x_1084 : vec4<f32> = u_xlat7;
        let x_1086 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_1084.x, x_1084.x, x_1084.x, x_1084.y) * vec4<f32>(x_1086.z, x_1086.w, x_1086.y, x_1086.z));
        let x_1090 : vec4<f32> = u_xlat7;
        let x_1092 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_1090.y, x_1090.y, x_1090.z, x_1090.z) * x_1092);
        let x_1095 : f32 = u_xlat7.z;
        let x_1097 : f32 = u_xlat12.y;
        u_xlat6.x = (x_1095 * x_1097);
        let x_1101 : vec4<f32> = u_xlat10;
        let x_1102 : vec2<f32> = vec2<f32>(x_1101.x, x_1101.y);
        let x_1104 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_1102.x, x_1102.y, x_1104);
        let x_1112 : vec3<f32> = txVec4;
        let x_1114 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1112.xy, x_1112.z);
        u_xlat31.x = x_1114;
        let x_1117 : vec4<f32> = u_xlat10;
        let x_1118 : vec2<f32> = vec2<f32>(x_1117.z, x_1117.w);
        let x_1120 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_1118.x, x_1118.y, x_1120);
        let x_1127 : vec3<f32> = txVec5;
        let x_1129 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1127.xy, x_1127.z);
        u_xlat7.x = x_1129;
        let x_1132 : f32 = u_xlat7.x;
        let x_1134 : f32 = u_xlat13.y;
        u_xlat7.x = (x_1132 * x_1134);
        let x_1138 : f32 = u_xlat13.x;
        let x_1140 : f32 = u_xlat31.x;
        let x_1143 : f32 = u_xlat7.x;
        u_xlat31.x = ((x_1138 * x_1140) + x_1143);
        let x_1147 : vec2<f32> = u_xlat56;
        let x_1149 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_1147.x, x_1147.y, x_1149);
        let x_1156 : vec3<f32> = txVec6;
        let x_1158 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1156.xy, x_1156.z);
        u_xlat56.x = x_1158;
        let x_1161 : f32 = u_xlat13.z;
        let x_1163 : f32 = u_xlat56.x;
        let x_1166 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1161 * x_1163) + x_1166);
        let x_1170 : vec4<f32> = u_xlat9;
        let x_1171 : vec2<f32> = vec2<f32>(x_1170.x, x_1170.y);
        let x_1173 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_1171.x, x_1171.y, x_1173);
        let x_1180 : vec3<f32> = txVec7;
        let x_1182 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1180.xy, x_1180.z);
        u_xlat56.x = x_1182;
        let x_1185 : f32 = u_xlat13.w;
        let x_1187 : f32 = u_xlat56.x;
        let x_1190 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1185 * x_1187) + x_1190);
        let x_1194 : vec4<f32> = u_xlat11;
        let x_1195 : vec2<f32> = vec2<f32>(x_1194.x, x_1194.y);
        let x_1197 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_1195.x, x_1195.y, x_1197);
        let x_1204 : vec3<f32> = txVec8;
        let x_1206 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1204.xy, x_1204.z);
        u_xlat56.x = x_1206;
        let x_1209 : f32 = u_xlat14.x;
        let x_1211 : f32 = u_xlat56.x;
        let x_1214 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1209 * x_1211) + x_1214);
        let x_1218 : vec4<f32> = u_xlat11;
        let x_1219 : vec2<f32> = vec2<f32>(x_1218.z, x_1218.w);
        let x_1221 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_1219.x, x_1219.y, x_1221);
        let x_1228 : vec3<f32> = txVec9;
        let x_1230 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1228.xy, x_1228.z);
        u_xlat56.x = x_1230;
        let x_1233 : f32 = u_xlat14.y;
        let x_1235 : f32 = u_xlat56.x;
        let x_1238 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1233 * x_1235) + x_1238);
        let x_1242 : vec4<f32> = u_xlat9;
        let x_1243 : vec2<f32> = vec2<f32>(x_1242.z, x_1242.w);
        let x_1245 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_1243.x, x_1243.y, x_1245);
        let x_1252 : vec3<f32> = txVec10;
        let x_1254 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1252.xy, x_1252.z);
        u_xlat56.x = x_1254;
        let x_1257 : f32 = u_xlat14.z;
        let x_1259 : f32 = u_xlat56.x;
        let x_1262 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1257 * x_1259) + x_1262);
        let x_1266 : vec4<f32> = u_xlat8;
        let x_1267 : vec2<f32> = vec2<f32>(x_1266.x, x_1266.y);
        let x_1269 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_1267.x, x_1267.y, x_1269);
        let x_1276 : vec3<f32> = txVec11;
        let x_1278 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1276.xy, x_1276.z);
        u_xlat56.x = x_1278;
        let x_1281 : f32 = u_xlat14.w;
        let x_1283 : f32 = u_xlat56.x;
        let x_1286 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1281 * x_1283) + x_1286);
        let x_1290 : vec4<f32> = u_xlat8;
        let x_1291 : vec2<f32> = vec2<f32>(x_1290.z, x_1290.w);
        let x_1293 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_1291.x, x_1291.y, x_1293);
        let x_1300 : vec3<f32> = txVec12;
        let x_1302 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1300.xy, x_1300.z);
        u_xlat56.x = x_1302;
        let x_1305 : f32 = u_xlat6.x;
        let x_1307 : f32 = u_xlat56.x;
        let x_1310 : f32 = u_xlat31.x;
        u_xlat80 = ((x_1305 * x_1307) + x_1310);
      } else {
        let x_1313 : vec4<f32> = vs_TEXCOORD8;
        let x_1316 : vec4<f32> = x_739.x_MainLightShadowmapSize;
        let x_1319 : vec2<f32> = ((vec2<f32>(x_1313.x, x_1313.y) * vec2<f32>(x_1316.z, x_1316.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1320 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1319.x, x_1319.y, x_1320.z, x_1320.w);
        let x_1322 : vec4<f32> = u_xlat6;
        let x_1324 : vec2<f32> = floor(vec2<f32>(x_1322.x, x_1322.y));
        let x_1325 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1324.x, x_1324.y, x_1325.z, x_1325.w);
        let x_1327 : vec4<f32> = vs_TEXCOORD8;
        let x_1330 : vec4<f32> = x_739.x_MainLightShadowmapSize;
        let x_1333 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_1327.x, x_1327.y) * vec2<f32>(x_1330.z, x_1330.w)) + -(vec2<f32>(x_1333.x, x_1333.y)));
        let x_1337 : vec2<f32> = u_xlat56;
        u_xlat7 = (vec4<f32>(x_1337.x, x_1337.x, x_1337.y, x_1337.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1340 : vec4<f32> = u_xlat7;
        let x_1342 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1340.x, x_1340.x, x_1340.z, x_1340.z) * vec4<f32>(x_1342.x, x_1342.x, x_1342.z, x_1342.z));
        let x_1345 : vec4<f32> = u_xlat8;
        let x_1349 : vec2<f32> = (vec2<f32>(x_1345.y, x_1345.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1350 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1350.x, x_1349.x, x_1350.z, x_1349.y);
        let x_1352 : vec4<f32> = u_xlat8;
        let x_1355 : vec2<f32> = u_xlat56;
        let x_1357 : vec2<f32> = ((vec2<f32>(x_1352.x, x_1352.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1355));
        let x_1358 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1357.x, x_1358.y, x_1357.y, x_1358.w);
        let x_1360 : vec2<f32> = u_xlat56;
        let x_1362 : vec2<f32> = (-(x_1360) + vec2<f32>(1.0f, 1.0f));
        let x_1363 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1362.x, x_1362.y, x_1363.z, x_1363.w);
        let x_1365 : vec2<f32> = u_xlat56;
        u_xlat58 = min(x_1365, vec2<f32>(0.0f, 0.0f));
        let x_1367 : vec2<f32> = u_xlat58;
        let x_1369 : vec2<f32> = u_xlat58;
        let x_1371 : vec4<f32> = u_xlat8;
        let x_1373 : vec2<f32> = ((-(x_1367) * x_1369) + vec2<f32>(x_1371.x, x_1371.y));
        let x_1374 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1373.x, x_1373.y, x_1374.z, x_1374.w);
        let x_1376 : vec2<f32> = u_xlat56;
        u_xlat58 = max(x_1376, vec2<f32>(0.0f, 0.0f));
        let x_1379 : vec2<f32> = u_xlat58;
        let x_1381 : vec2<f32> = u_xlat58;
        let x_1383 : vec4<f32> = u_xlat7;
        let x_1385 : vec2<f32> = ((-(x_1379) * x_1381) + vec2<f32>(x_1383.y, x_1383.w));
        let x_1386 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_1385.x, x_1386.y, x_1385.y);
        let x_1388 : vec4<f32> = u_xlat8;
        let x_1391 : vec2<f32> = (vec2<f32>(x_1388.x, x_1388.y) + vec2<f32>(2.0f, 2.0f));
        let x_1392 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1391.x, x_1391.y, x_1392.z, x_1392.w);
        let x_1394 : vec3<f32> = u_xlat32;
        let x_1396 : vec2<f32> = (vec2<f32>(x_1394.x, x_1394.z) + vec2<f32>(2.0f, 2.0f));
        let x_1397 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1397.x, x_1396.x, x_1397.z, x_1396.y);
        let x_1400 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1400 * 0.08163200318813323975f);
        let x_1404 : vec4<f32> = u_xlat7;
        let x_1407 : vec3<f32> = (vec3<f32>(x_1404.z, x_1404.x, x_1404.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1408 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1407.x, x_1407.y, x_1407.z, x_1408.w);
        let x_1410 : vec4<f32> = u_xlat8;
        let x_1413 : vec2<f32> = (vec2<f32>(x_1410.x, x_1410.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1414 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1413.x, x_1413.y, x_1414.z, x_1414.w);
        let x_1417 : f32 = u_xlat11.y;
        u_xlat10.x = x_1417;
        let x_1419 : vec2<f32> = u_xlat56;
        let x_1426 : vec2<f32> = ((vec2<f32>(x_1419.x, x_1419.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1427 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1427.x, x_1426.x, x_1427.z, x_1426.y);
        let x_1429 : vec2<f32> = u_xlat56;
        let x_1433 : vec2<f32> = ((vec2<f32>(x_1429.x, x_1429.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1434 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1433.x, x_1434.y, x_1433.y, x_1434.w);
        let x_1437 : f32 = u_xlat7.x;
        u_xlat8.y = x_1437;
        let x_1440 : f32 = u_xlat9.y;
        u_xlat8.w = x_1440;
        let x_1442 : vec4<f32> = u_xlat8;
        let x_1443 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1442 + x_1443);
        let x_1445 : vec2<f32> = u_xlat56;
        let x_1448 : vec2<f32> = ((vec2<f32>(x_1445.y, x_1445.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1449 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1449.x, x_1448.x, x_1449.z, x_1448.y);
        let x_1451 : vec2<f32> = u_xlat56;
        let x_1454 : vec2<f32> = ((vec2<f32>(x_1451.y, x_1451.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1455 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1454.x, x_1455.y, x_1454.y, x_1455.w);
        let x_1458 : f32 = u_xlat7.y;
        u_xlat9.y = x_1458;
        let x_1460 : vec4<f32> = u_xlat9;
        let x_1461 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1460 + x_1461);
        let x_1463 : vec4<f32> = u_xlat8;
        let x_1464 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1463 / x_1464);
        let x_1466 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1466 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1472 : vec4<f32> = u_xlat9;
        let x_1473 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1472 / x_1473);
        let x_1475 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1475 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1477 : vec4<f32> = u_xlat8;
        let x_1480 : vec4<f32> = x_739.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1477.w, x_1477.x, x_1477.y, x_1477.z) * vec4<f32>(x_1480.x, x_1480.x, x_1480.x, x_1480.x));
        let x_1483 : vec4<f32> = u_xlat9;
        let x_1486 : vec4<f32> = x_739.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1483.x, x_1483.w, x_1483.y, x_1483.z) * vec4<f32>(x_1486.y, x_1486.y, x_1486.y, x_1486.y));
        let x_1489 : vec4<f32> = u_xlat8;
        let x_1490 : vec3<f32> = vec3<f32>(x_1489.y, x_1489.z, x_1489.w);
        let x_1491 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1490.x, x_1491.y, x_1490.y, x_1490.z);
        let x_1494 : f32 = u_xlat9.x;
        u_xlat11.y = x_1494;
        let x_1496 : vec4<f32> = u_xlat6;
        let x_1499 : vec4<f32> = x_739.x_MainLightShadowmapSize;
        let x_1502 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1496.x, x_1496.y, x_1496.x, x_1496.y) * vec4<f32>(x_1499.x, x_1499.y, x_1499.x, x_1499.y)) + vec4<f32>(x_1502.x, x_1502.y, x_1502.z, x_1502.y));
        let x_1505 : vec4<f32> = u_xlat6;
        let x_1508 : vec4<f32> = x_739.x_MainLightShadowmapSize;
        let x_1511 : vec4<f32> = u_xlat11;
        u_xlat56 = ((vec2<f32>(x_1505.x, x_1505.y) * vec2<f32>(x_1508.x, x_1508.y)) + vec2<f32>(x_1511.w, x_1511.y));
        let x_1515 : f32 = u_xlat11.y;
        u_xlat8.y = x_1515;
        let x_1518 : f32 = u_xlat9.z;
        u_xlat11.y = x_1518;
        let x_1520 : vec4<f32> = u_xlat6;
        let x_1523 : vec4<f32> = x_739.x_MainLightShadowmapSize;
        let x_1526 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1520.x, x_1520.y, x_1520.x, x_1520.y) * vec4<f32>(x_1523.x, x_1523.y, x_1523.x, x_1523.y)) + vec4<f32>(x_1526.x, x_1526.y, x_1526.z, x_1526.y));
        let x_1529 : vec4<f32> = u_xlat6;
        let x_1532 : vec4<f32> = x_739.x_MainLightShadowmapSize;
        let x_1535 : vec4<f32> = u_xlat11;
        let x_1537 : vec2<f32> = ((vec2<f32>(x_1529.x, x_1529.y) * vec2<f32>(x_1532.x, x_1532.y)) + vec2<f32>(x_1535.w, x_1535.y));
        let x_1538 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1537.x, x_1537.y, x_1538.z, x_1538.w);
        let x_1541 : f32 = u_xlat11.y;
        u_xlat8.z = x_1541;
        let x_1544 : vec4<f32> = u_xlat6;
        let x_1547 : vec4<f32> = x_739.x_MainLightShadowmapSize;
        let x_1550 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1544.x, x_1544.y, x_1544.x, x_1544.y) * vec4<f32>(x_1547.x, x_1547.y, x_1547.x, x_1547.y)) + vec4<f32>(x_1550.x, x_1550.y, x_1550.x, x_1550.z));
        let x_1554 : f32 = u_xlat9.w;
        u_xlat11.y = x_1554;
        let x_1557 : vec4<f32> = u_xlat6;
        let x_1560 : vec4<f32> = x_739.x_MainLightShadowmapSize;
        let x_1563 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1557.x, x_1557.y, x_1557.x, x_1557.y) * vec4<f32>(x_1560.x, x_1560.y, x_1560.x, x_1560.y)) + vec4<f32>(x_1563.x, x_1563.y, x_1563.z, x_1563.y));
        let x_1567 : vec4<f32> = u_xlat6;
        let x_1570 : vec4<f32> = x_739.x_MainLightShadowmapSize;
        let x_1573 : vec4<f32> = u_xlat11;
        u_xlat33 = ((vec2<f32>(x_1567.x, x_1567.y) * vec2<f32>(x_1570.x, x_1570.y)) + vec2<f32>(x_1573.w, x_1573.y));
        let x_1577 : f32 = u_xlat11.y;
        u_xlat8.w = x_1577;
        let x_1580 : vec4<f32> = u_xlat6;
        let x_1583 : vec4<f32> = x_739.x_MainLightShadowmapSize;
        let x_1586 : vec4<f32> = u_xlat8;
        u_xlat64 = ((vec2<f32>(x_1580.x, x_1580.y) * vec2<f32>(x_1583.x, x_1583.y)) + vec2<f32>(x_1586.x, x_1586.w));
        let x_1589 : vec4<f32> = u_xlat11;
        let x_1590 : vec3<f32> = vec3<f32>(x_1589.x, x_1589.z, x_1589.w);
        let x_1591 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1590.x, x_1591.y, x_1590.y, x_1590.z);
        let x_1593 : vec4<f32> = u_xlat6;
        let x_1596 : vec4<f32> = x_739.x_MainLightShadowmapSize;
        let x_1599 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1593.x, x_1593.y, x_1593.x, x_1593.y) * vec4<f32>(x_1596.x, x_1596.y, x_1596.x, x_1596.y)) + vec4<f32>(x_1599.x, x_1599.y, x_1599.z, x_1599.y));
        let x_1603 : vec4<f32> = u_xlat6;
        let x_1606 : vec4<f32> = x_739.x_MainLightShadowmapSize;
        let x_1609 : vec4<f32> = u_xlat9;
        u_xlat59 = ((vec2<f32>(x_1603.x, x_1603.y) * vec2<f32>(x_1606.x, x_1606.y)) + vec2<f32>(x_1609.w, x_1609.y));
        let x_1613 : f32 = u_xlat8.x;
        u_xlat9.x = x_1613;
        let x_1615 : vec4<f32> = u_xlat6;
        let x_1618 : vec4<f32> = x_739.x_MainLightShadowmapSize;
        let x_1621 : vec4<f32> = u_xlat9;
        let x_1623 : vec2<f32> = ((vec2<f32>(x_1615.x, x_1615.y) * vec2<f32>(x_1618.x, x_1618.y)) + vec2<f32>(x_1621.x, x_1621.y));
        let x_1624 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1623.x, x_1623.y, x_1624.z, x_1624.w);
        let x_1627 : vec4<f32> = u_xlat7;
        let x_1629 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1627.x, x_1627.x, x_1627.x, x_1627.x) * x_1629);
        let x_1632 : vec4<f32> = u_xlat7;
        let x_1634 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1632.y, x_1632.y, x_1632.y, x_1632.y) * x_1634);
        let x_1637 : vec4<f32> = u_xlat7;
        let x_1639 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1637.z, x_1637.z, x_1637.z, x_1637.z) * x_1639);
        let x_1641 : vec4<f32> = u_xlat7;
        let x_1643 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1641.w, x_1641.w, x_1641.w, x_1641.w) * x_1643);
        let x_1646 : vec4<f32> = u_xlat12;
        let x_1647 : vec2<f32> = vec2<f32>(x_1646.x, x_1646.y);
        let x_1649 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1647.x, x_1647.y, x_1649);
        let x_1656 : vec3<f32> = txVec13;
        let x_1658 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1656.xy, x_1656.z);
        u_xlat8.x = x_1658;
        let x_1661 : vec4<f32> = u_xlat12;
        let x_1662 : vec2<f32> = vec2<f32>(x_1661.z, x_1661.w);
        let x_1664 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1662.x, x_1662.y, x_1664);
        let x_1672 : vec3<f32> = txVec14;
        let x_1674 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1672.xy, x_1672.z);
        u_xlat83 = x_1674;
        let x_1675 : f32 = u_xlat83;
        let x_1677 : f32 = u_xlat17.y;
        u_xlat83 = (x_1675 * x_1677);
        let x_1680 : f32 = u_xlat17.x;
        let x_1682 : f32 = u_xlat8.x;
        let x_1684 : f32 = u_xlat83;
        u_xlat8.x = ((x_1680 * x_1682) + x_1684);
        let x_1688 : vec2<f32> = u_xlat56;
        let x_1690 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1688.x, x_1688.y, x_1690);
        let x_1697 : vec3<f32> = txVec15;
        let x_1699 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1697.xy, x_1697.z);
        u_xlat56.x = x_1699;
        let x_1702 : f32 = u_xlat17.z;
        let x_1704 : f32 = u_xlat56.x;
        let x_1707 : f32 = u_xlat8.x;
        u_xlat56.x = ((x_1702 * x_1704) + x_1707);
        let x_1711 : vec4<f32> = u_xlat15;
        let x_1712 : vec2<f32> = vec2<f32>(x_1711.x, x_1711.y);
        let x_1714 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1712.x, x_1712.y, x_1714);
        let x_1722 : vec3<f32> = txVec16;
        let x_1724 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1722.xy, x_1722.z);
        u_xlat81 = x_1724;
        let x_1726 : f32 = u_xlat17.w;
        let x_1727 : f32 = u_xlat81;
        let x_1730 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1726 * x_1727) + x_1730);
        let x_1734 : vec4<f32> = u_xlat13;
        let x_1735 : vec2<f32> = vec2<f32>(x_1734.x, x_1734.y);
        let x_1737 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1735.x, x_1735.y, x_1737);
        let x_1744 : vec3<f32> = txVec17;
        let x_1746 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1744.xy, x_1744.z);
        u_xlat81 = x_1746;
        let x_1748 : f32 = u_xlat18.x;
        let x_1749 : f32 = u_xlat81;
        let x_1752 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1748 * x_1749) + x_1752);
        let x_1756 : vec4<f32> = u_xlat13;
        let x_1757 : vec2<f32> = vec2<f32>(x_1756.z, x_1756.w);
        let x_1759 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1757.x, x_1757.y, x_1759);
        let x_1766 : vec3<f32> = txVec18;
        let x_1768 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1766.xy, x_1766.z);
        u_xlat81 = x_1768;
        let x_1770 : f32 = u_xlat18.y;
        let x_1771 : f32 = u_xlat81;
        let x_1774 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1770 * x_1771) + x_1774);
        let x_1778 : vec4<f32> = u_xlat14;
        let x_1779 : vec2<f32> = vec2<f32>(x_1778.x, x_1778.y);
        let x_1781 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1779.x, x_1779.y, x_1781);
        let x_1788 : vec3<f32> = txVec19;
        let x_1790 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1788.xy, x_1788.z);
        u_xlat81 = x_1790;
        let x_1792 : f32 = u_xlat18.z;
        let x_1793 : f32 = u_xlat81;
        let x_1796 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1792 * x_1793) + x_1796);
        let x_1800 : vec4<f32> = u_xlat15;
        let x_1801 : vec2<f32> = vec2<f32>(x_1800.z, x_1800.w);
        let x_1803 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1801.x, x_1801.y, x_1803);
        let x_1810 : vec3<f32> = txVec20;
        let x_1812 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1810.xy, x_1810.z);
        u_xlat81 = x_1812;
        let x_1814 : f32 = u_xlat18.w;
        let x_1815 : f32 = u_xlat81;
        let x_1818 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1814 * x_1815) + x_1818);
        let x_1822 : vec4<f32> = u_xlat16;
        let x_1823 : vec2<f32> = vec2<f32>(x_1822.x, x_1822.y);
        let x_1825 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1823.x, x_1823.y, x_1825);
        let x_1832 : vec3<f32> = txVec21;
        let x_1834 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1832.xy, x_1832.z);
        u_xlat81 = x_1834;
        let x_1836 : f32 = u_xlat19.x;
        let x_1837 : f32 = u_xlat81;
        let x_1840 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1836 * x_1837) + x_1840);
        let x_1844 : vec4<f32> = u_xlat16;
        let x_1845 : vec2<f32> = vec2<f32>(x_1844.z, x_1844.w);
        let x_1847 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1845.x, x_1845.y, x_1847);
        let x_1854 : vec3<f32> = txVec22;
        let x_1856 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1854.xy, x_1854.z);
        u_xlat81 = x_1856;
        let x_1858 : f32 = u_xlat19.y;
        let x_1859 : f32 = u_xlat81;
        let x_1862 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1858 * x_1859) + x_1862);
        let x_1866 : vec2<f32> = u_xlat33;
        let x_1868 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1866.x, x_1866.y, x_1868);
        let x_1875 : vec3<f32> = txVec23;
        let x_1877 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1875.xy, x_1875.z);
        u_xlat81 = x_1877;
        let x_1879 : f32 = u_xlat19.z;
        let x_1880 : f32 = u_xlat81;
        let x_1883 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1879 * x_1880) + x_1883);
        let x_1887 : vec2<f32> = u_xlat64;
        let x_1889 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1887.x, x_1887.y, x_1889);
        let x_1896 : vec3<f32> = txVec24;
        let x_1898 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1896.xy, x_1896.z);
        u_xlat81 = x_1898;
        let x_1900 : f32 = u_xlat19.w;
        let x_1901 : f32 = u_xlat81;
        let x_1904 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1900 * x_1901) + x_1904);
        let x_1908 : vec4<f32> = u_xlat11;
        let x_1909 : vec2<f32> = vec2<f32>(x_1908.x, x_1908.y);
        let x_1911 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1909.x, x_1909.y, x_1911);
        let x_1918 : vec3<f32> = txVec25;
        let x_1920 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1918.xy, x_1918.z);
        u_xlat81 = x_1920;
        let x_1922 : f32 = u_xlat7.x;
        let x_1923 : f32 = u_xlat81;
        let x_1926 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1922 * x_1923) + x_1926);
        let x_1930 : vec4<f32> = u_xlat11;
        let x_1931 : vec2<f32> = vec2<f32>(x_1930.z, x_1930.w);
        let x_1933 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1931.x, x_1931.y, x_1933);
        let x_1940 : vec3<f32> = txVec26;
        let x_1942 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1940.xy, x_1940.z);
        u_xlat81 = x_1942;
        let x_1944 : f32 = u_xlat7.y;
        let x_1945 : f32 = u_xlat81;
        let x_1948 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1944 * x_1945) + x_1948);
        let x_1952 : vec2<f32> = u_xlat59;
        let x_1954 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_1952.x, x_1952.y, x_1954);
        let x_1961 : vec3<f32> = txVec27;
        let x_1963 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1961.xy, x_1961.z);
        u_xlat81 = x_1963;
        let x_1965 : f32 = u_xlat7.z;
        let x_1966 : f32 = u_xlat81;
        let x_1969 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1965 * x_1966) + x_1969);
        let x_1973 : vec4<f32> = u_xlat6;
        let x_1974 : vec2<f32> = vec2<f32>(x_1973.x, x_1973.y);
        let x_1976 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_1974.x, x_1974.y, x_1976);
        let x_1983 : vec3<f32> = txVec28;
        let x_1985 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1983.xy, x_1983.z);
        u_xlat6.x = x_1985;
        let x_1988 : f32 = u_xlat7.w;
        let x_1990 : f32 = u_xlat6.x;
        let x_1993 : f32 = u_xlat56.x;
        u_xlat80 = ((x_1988 * x_1990) + x_1993);
      }
    }
  } else {
    let x_1997 : vec4<f32> = vs_TEXCOORD8;
    let x_1998 : vec2<f32> = vec2<f32>(x_1997.x, x_1997.y);
    let x_2000 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_1998.x, x_1998.y, x_2000);
    let x_2007 : vec3<f32> = txVec29;
    let x_2009 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2007.xy, x_2007.z);
    u_xlat80 = x_2009;
  }
  let x_2011 : f32 = x_739.x_MainLightShadowParams.x;
  u_xlat6.x = (-(x_2011) + 1.0f);
  let x_2015 : f32 = u_xlat80;
  let x_2017 : f32 = x_739.x_MainLightShadowParams.x;
  let x_2020 : f32 = u_xlat6.x;
  u_xlat80 = ((x_2015 * x_2017) + x_2020);
  let x_2023 : f32 = vs_TEXCOORD8.z;
  u_xlatb6 = (0.0f >= x_2023);
  let x_2027 : f32 = vs_TEXCOORD8.z;
  u_xlatb31 = (x_2027 >= 1.0f);
  let x_2029 : bool = u_xlatb31;
  let x_2030 : bool = u_xlatb6;
  u_xlatb6 = (x_2029 | x_2030);
  let x_2032 : bool = u_xlatb6;
  let x_2033 : f32 = u_xlat80;
  u_xlat80 = select(x_2033, 1.0f, x_2032);
  let x_2035 : vec3<f32> = vs_TEXCOORD7;
  let x_2037 : vec3<f32> = x_111.x_WorldSpaceCameraPos;
  let x_2039 : vec3<f32> = (x_2035 + -(x_2037));
  let x_2040 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2039.x, x_2039.y, x_2039.z, x_2040.w);
  let x_2042 : vec4<f32> = u_xlat6;
  let x_2044 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_2042.x, x_2042.y, x_2042.z), vec3<f32>(x_2044.x, x_2044.y, x_2044.z));
  let x_2049 : f32 = u_xlat6.x;
  let x_2051 : f32 = x_739.x_MainLightShadowParams.z;
  let x_2054 : f32 = x_739.x_MainLightShadowParams.w;
  u_xlat31.x = ((x_2049 * x_2051) + x_2054);
  let x_2058 : f32 = u_xlat31.x;
  u_xlat31.x = clamp(x_2058, 0.0f, 1.0f);
  let x_2061 : f32 = u_xlat80;
  u_xlat56.x = (-(x_2061) + 1.0f);
  let x_2066 : f32 = u_xlat31.x;
  let x_2068 : f32 = u_xlat56.x;
  let x_2070 : f32 = u_xlat80;
  u_xlat80 = ((x_2066 * x_2068) + x_2070);
  let x_2072 : vec4<f32> = u_xlat1;
  let x_2075 : vec3<f32> = u_xlat2;
  u_xlat31.x = dot(-(vec3<f32>(x_2072.x, x_2072.y, x_2072.z)), x_2075);
  let x_2079 : f32 = u_xlat31.x;
  let x_2081 : f32 = u_xlat31.x;
  u_xlat31.x = (x_2079 + x_2081);
  let x_2084 : vec3<f32> = u_xlat2;
  let x_2085 : vec3<f32> = u_xlat31;
  let x_2089 : vec4<f32> = u_xlat1;
  u_xlat31 = ((x_2084 * -(vec3<f32>(x_2085.x, x_2085.x, x_2085.x))) + -(vec3<f32>(x_2089.x, x_2089.y, x_2089.z)));
  let x_2093 : vec3<f32> = u_xlat2;
  let x_2094 : vec4<f32> = u_xlat1;
  u_xlat7.x = dot(x_2093, vec3<f32>(x_2094.x, x_2094.y, x_2094.z));
  let x_2099 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_2099, 0.0f, 1.0f);
  let x_2103 : f32 = u_xlat7.x;
  u_xlat7.x = (-(x_2103) + 1.0f);
  let x_2108 : f32 = u_xlat7.x;
  let x_2110 : f32 = u_xlat7.x;
  u_xlat7.x = (x_2108 * x_2110);
  let x_2114 : f32 = u_xlat7.x;
  let x_2116 : f32 = u_xlat7.x;
  u_xlat7.x = (x_2114 * x_2116);
  let x_2120 : f32 = u_xlat0.x;
  u_xlat32.x = ((-(x_2120) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2128 : f32 = u_xlat0.x;
  let x_2130 : f32 = u_xlat32.x;
  u_xlat0.x = (x_2128 * x_2130);
  let x_2134 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2134 * 6.0f);
  let x_2146 : vec3<f32> = u_xlat31;
  let x_2148 : f32 = u_xlat0.x;
  let x_2149 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_2146, x_2148);
  u_xlat8 = x_2149;
  let x_2151 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2151 + -1.0f);
  let x_2159 : f32 = x_2157.unity_SpecCube0_HDR.w;
  let x_2161 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2159 * x_2161) + 1.0f);
  let x_2166 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2166, 0.0f);
  let x_2170 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2170);
  let x_2174 : f32 = u_xlat0.x;
  let x_2176 : f32 = x_2157.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2174 * x_2176);
  let x_2180 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2180);
  let x_2184 : f32 = u_xlat0.x;
  let x_2186 : f32 = x_2157.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2184 * x_2186);
  let x_2189 : vec4<f32> = u_xlat8;
  let x_2191 : vec3<f32> = u_xlat0;
  u_xlat31 = (vec3<f32>(x_2189.x, x_2189.y, x_2189.z) * vec3<f32>(x_2191.x, x_2191.x, x_2191.x));
  let x_2194 : f32 = u_xlat50;
  let x_2196 : f32 = u_xlat50;
  let x_2200 : vec2<f32> = ((vec2<f32>(x_2194, x_2194) * vec2<f32>(x_2196, x_2196)) + vec2<f32>(-1.0f, 1.0f));
  let x_2201 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2200.x, x_2201.y, x_2200.y);
  let x_2204 : f32 = u_xlat0.z;
  u_xlat50 = (1.0f / x_2204);
  let x_2206 : vec4<f32> = u_xlat5;
  let x_2209 : f32 = u_xlat78;
  u_xlat32 = (-(vec3<f32>(x_2206.x, x_2206.y, x_2206.z)) + vec3<f32>(x_2209, x_2209, x_2209));
  let x_2212 : vec4<f32> = u_xlat7;
  let x_2214 : vec3<f32> = u_xlat32;
  let x_2216 : vec4<f32> = u_xlat5;
  let x_2218 : vec3<f32> = ((vec3<f32>(x_2212.x, x_2212.x, x_2212.x) * x_2214) + vec3<f32>(x_2216.x, x_2216.y, x_2216.z));
  let x_2219 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2218.x, x_2218.y, x_2218.z, x_2219.w);
  let x_2221 : f32 = u_xlat50;
  let x_2223 : vec4<f32> = u_xlat7;
  let x_2225 : vec3<f32> = (vec3<f32>(x_2221, x_2221, x_2221) * vec3<f32>(x_2223.x, x_2223.y, x_2223.z));
  let x_2226 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2225.x, x_2225.y, x_2225.z, x_2226.w);
  let x_2228 : vec3<f32> = u_xlat31;
  let x_2229 : vec4<f32> = u_xlat7;
  u_xlat31 = (x_2228 * vec3<f32>(x_2229.x, x_2229.y, x_2229.z));
  let x_2232 : vec4<f32> = u_xlat3;
  let x_2234 : vec4<f32> = u_xlat4;
  let x_2237 : vec3<f32> = u_xlat31;
  let x_2238 : vec3<f32> = ((vec3<f32>(x_2232.x, x_2232.y, x_2232.z) * vec3<f32>(x_2234.x, x_2234.y, x_2234.z)) + x_2237);
  let x_2239 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2238.x, x_2238.y, x_2238.z, x_2239.w);
  let x_2241 : f32 = u_xlat80;
  let x_2243 : f32 = x_2157.unity_LightData.z;
  u_xlat50 = (x_2241 * x_2243);
  let x_2245 : vec3<f32> = u_xlat2;
  let x_2247 : vec4<f32> = x_111.x_MainLightPosition;
  u_xlat78 = dot(x_2245, vec3<f32>(x_2247.x, x_2247.y, x_2247.z));
  let x_2250 : f32 = u_xlat78;
  u_xlat78 = clamp(x_2250, 0.0f, 1.0f);
  let x_2252 : f32 = u_xlat50;
  let x_2253 : f32 = u_xlat78;
  u_xlat50 = (x_2252 * x_2253);
  let x_2255 : f32 = u_xlat50;
  let x_2258 : vec4<f32> = x_111.x_MainLightColor;
  u_xlat31 = (vec3<f32>(x_2255, x_2255, x_2255) * vec3<f32>(x_2258.x, x_2258.y, x_2258.z));
  let x_2261 : vec4<f32> = u_xlat1;
  let x_2264 : vec4<f32> = x_111.x_MainLightPosition;
  let x_2266 : vec3<f32> = (vec3<f32>(x_2261.x, x_2261.y, x_2261.z) + vec3<f32>(x_2264.x, x_2264.y, x_2264.z));
  let x_2267 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2266.x, x_2266.y, x_2266.z, x_2267.w);
  let x_2269 : vec4<f32> = u_xlat7;
  let x_2271 : vec4<f32> = u_xlat7;
  u_xlat50 = dot(vec3<f32>(x_2269.x, x_2269.y, x_2269.z), vec3<f32>(x_2271.x, x_2271.y, x_2271.z));
  let x_2274 : f32 = u_xlat50;
  u_xlat50 = max(x_2274, 1.17549435e-38f);
  let x_2277 : f32 = u_xlat50;
  u_xlat50 = inverseSqrt(x_2277);
  let x_2279 : f32 = u_xlat50;
  let x_2281 : vec4<f32> = u_xlat7;
  let x_2283 : vec3<f32> = (vec3<f32>(x_2279, x_2279, x_2279) * vec3<f32>(x_2281.x, x_2281.y, x_2281.z));
  let x_2284 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2283.x, x_2283.y, x_2283.z, x_2284.w);
  let x_2286 : vec3<f32> = u_xlat2;
  let x_2287 : vec4<f32> = u_xlat7;
  u_xlat50 = dot(x_2286, vec3<f32>(x_2287.x, x_2287.y, x_2287.z));
  let x_2290 : f32 = u_xlat50;
  u_xlat50 = clamp(x_2290, 0.0f, 1.0f);
  let x_2293 : vec4<f32> = x_111.x_MainLightPosition;
  let x_2295 : vec4<f32> = u_xlat7;
  u_xlat78 = dot(vec3<f32>(x_2293.x, x_2293.y, x_2293.z), vec3<f32>(x_2295.x, x_2295.y, x_2295.z));
  let x_2298 : f32 = u_xlat78;
  u_xlat78 = clamp(x_2298, 0.0f, 1.0f);
  let x_2300 : f32 = u_xlat50;
  let x_2301 : f32 = u_xlat50;
  u_xlat50 = (x_2300 * x_2301);
  let x_2303 : f32 = u_xlat50;
  let x_2305 : f32 = u_xlat0.x;
  u_xlat50 = ((x_2303 * x_2305) + 1.00001001358032226562f);
  let x_2309 : f32 = u_xlat78;
  let x_2310 : f32 = u_xlat78;
  u_xlat78 = (x_2309 * x_2310);
  let x_2312 : f32 = u_xlat50;
  let x_2313 : f32 = u_xlat50;
  u_xlat50 = (x_2312 * x_2313);
  let x_2315 : f32 = u_xlat78;
  u_xlat78 = max(x_2315, 0.10000000149011611938f);
  let x_2318 : f32 = u_xlat50;
  let x_2319 : f32 = u_xlat78;
  u_xlat50 = (x_2318 * x_2319);
  let x_2321 : f32 = u_xlat79;
  let x_2322 : f32 = u_xlat50;
  u_xlat50 = (x_2321 * x_2322);
  let x_2324 : f32 = u_xlat77;
  let x_2325 : f32 = u_xlat50;
  u_xlat50 = (x_2324 / x_2325);
  let x_2327 : vec4<f32> = u_xlat5;
  let x_2329 : f32 = u_xlat50;
  let x_2332 : vec4<f32> = u_xlat4;
  let x_2334 : vec3<f32> = ((vec3<f32>(x_2327.x, x_2327.y, x_2327.z) * vec3<f32>(x_2329, x_2329, x_2329)) + vec3<f32>(x_2332.x, x_2332.y, x_2332.z));
  let x_2335 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2334.x, x_2334.y, x_2334.z, x_2335.w);
  let x_2337 : vec3<f32> = u_xlat31;
  let x_2338 : vec4<f32> = u_xlat7;
  u_xlat31 = (x_2337 * vec3<f32>(x_2338.x, x_2338.y, x_2338.z));
  let x_2342 : f32 = x_111.x_AdditionalLightsCount.x;
  let x_2344 : f32 = x_2157.unity_LightData.y;
  u_xlat50 = min(x_2342, x_2344);
  let x_2348 : f32 = u_xlat50;
  u_xlatu50 = bitcast<u32>(i32(x_2348));
  let x_2352 : f32 = u_xlat6.x;
  let x_2354 : f32 = x_739.x_AdditionalShadowFadeParams.x;
  let x_2357 : f32 = x_739.x_AdditionalShadowFadeParams.y;
  u_xlat78 = ((x_2352 * x_2354) + x_2357);
  let x_2359 : f32 = u_xlat78;
  u_xlat78 = clamp(x_2359, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2371 : u32 = u_xlatu_loop_1;
    let x_2372 : u32 = u_xlatu50;
    if ((x_2371 < x_2372)) {
    } else {
      break;
    }
    let x_2375 : u32 = u_xlatu_loop_1;
    u_xlatu6 = (x_2375 >> 2u);
    let x_2379 : u32 = u_xlatu_loop_1;
    u_xlati82 = bitcast<i32>((x_2379 & 3u));
    let x_2382 : u32 = u_xlatu6;
    let x_2385 : vec4<f32> = x_2157.unity_LightIndices[bitcast<i32>(x_2382)];
    let x_2395 : i32 = u_xlati82;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2400 : vec4<u32> = indexable[x_2395];
    u_xlat6.x = dot(x_2385, bitcast<vec4<f32>>(x_2400));
    let x_2406 : f32 = u_xlat6.x;
    u_xlati6 = i32(x_2406);
    let x_2408 : vec3<f32> = vs_TEXCOORD7;
    let x_2419 : i32 = u_xlati6;
    let x_2421 : vec4<f32> = x_2418.x_AdditionalLightsPosition[x_2419];
    let x_2424 : i32 = u_xlati6;
    let x_2426 : vec4<f32> = x_2418.x_AdditionalLightsPosition[x_2424];
    let x_2428 : vec3<f32> = ((-(x_2408) * vec3<f32>(x_2421.w, x_2421.w, x_2421.w)) + vec3<f32>(x_2426.x, x_2426.y, x_2426.z));
    let x_2429 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2428.x, x_2428.y, x_2428.z, x_2429.w);
    let x_2432 : vec4<f32> = u_xlat8;
    let x_2434 : vec4<f32> = u_xlat8;
    u_xlat82 = dot(vec3<f32>(x_2432.x, x_2432.y, x_2432.z), vec3<f32>(x_2434.x, x_2434.y, x_2434.z));
    let x_2437 : f32 = u_xlat82;
    u_xlat82 = max(x_2437, 0.00006103515625f);
    let x_2439 : f32 = u_xlat82;
    u_xlat83 = inverseSqrt(x_2439);
    let x_2441 : f32 = u_xlat83;
    let x_2443 : vec4<f32> = u_xlat8;
    let x_2445 : vec3<f32> = (vec3<f32>(x_2441, x_2441, x_2441) * vec3<f32>(x_2443.x, x_2443.y, x_2443.z));
    let x_2446 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2445.x, x_2445.y, x_2445.z, x_2446.w);
    let x_2449 : f32 = u_xlat82;
    u_xlat84 = (1.0f / x_2449);
    let x_2451 : f32 = u_xlat82;
    let x_2452 : i32 = u_xlati6;
    let x_2454 : f32 = x_2418.x_AdditionalLightsAttenuation[x_2452].x;
    u_xlat82 = (x_2451 * x_2454);
    let x_2456 : f32 = u_xlat82;
    let x_2458 : f32 = u_xlat82;
    u_xlat82 = ((-(x_2456) * x_2458) + 1.0f);
    let x_2461 : f32 = u_xlat82;
    u_xlat82 = max(x_2461, 0.0f);
    let x_2463 : f32 = u_xlat82;
    let x_2464 : f32 = u_xlat82;
    u_xlat82 = (x_2463 * x_2464);
    let x_2466 : f32 = u_xlat82;
    let x_2467 : f32 = u_xlat84;
    u_xlat82 = (x_2466 * x_2467);
    let x_2469 : i32 = u_xlati6;
    let x_2471 : vec4<f32> = x_2418.x_AdditionalLightsSpotDir[x_2469];
    let x_2473 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2471.x, x_2471.y, x_2471.z), vec3<f32>(x_2473.x, x_2473.y, x_2473.z));
    let x_2476 : f32 = u_xlat84;
    let x_2477 : i32 = u_xlati6;
    let x_2479 : f32 = x_2418.x_AdditionalLightsAttenuation[x_2477].z;
    let x_2481 : i32 = u_xlati6;
    let x_2483 : f32 = x_2418.x_AdditionalLightsAttenuation[x_2481].w;
    u_xlat84 = ((x_2476 * x_2479) + x_2483);
    let x_2485 : f32 = u_xlat84;
    u_xlat84 = clamp(x_2485, 0.0f, 1.0f);
    let x_2487 : f32 = u_xlat84;
    let x_2488 : f32 = u_xlat84;
    u_xlat84 = (x_2487 * x_2488);
    let x_2490 : f32 = u_xlat82;
    let x_2491 : f32 = u_xlat84;
    u_xlat82 = (x_2490 * x_2491);
    let x_2494 : i32 = u_xlati6;
    let x_2496 : f32 = x_739.x_AdditionalShadowParams[x_2494].w;
    u_xlati84 = i32(x_2496);
    let x_2501 : i32 = u_xlati84;
    u_xlatb10.x = (x_2501 >= 0i);
    let x_2505 : bool = u_xlatb10.x;
    if (x_2505) {
      let x_2509 : i32 = u_xlati6;
      let x_2511 : f32 = x_739.x_AdditionalShadowParams[x_2509].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2511, x_2511, x_2511, x_2511))));
      let x_2517 : bool = u_xlatb10.x;
      if (x_2517) {
        let x_2520 : vec4<f32> = u_xlat9;
        let x_2523 : vec4<f32> = u_xlat9;
        let x_2526 : vec4<bool> = (abs(vec4<f32>(x_2520.z, x_2520.z, x_2520.y, x_2520.z)) >= abs(vec4<f32>(x_2523.x, x_2523.y, x_2523.x, x_2523.x)));
        u_xlatb10 = vec3<bool>(x_2526.x, x_2526.y, x_2526.z);
        let x_2529 : bool = u_xlatb10.y;
        let x_2531 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_2529 & x_2531);
        let x_2535 : vec4<f32> = u_xlat9;
        let x_2538 : vec4<bool> = (-(vec4<f32>(x_2535.z, x_2535.y, x_2535.x, x_2535.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_2538.x, x_2538.y, x_2538.z);
        let x_2542 : bool = u_xlatb11.x;
        u_xlat35.x = select(4.0f, 5.0f, x_2542);
        let x_2547 : bool = u_xlatb11.y;
        u_xlat35.z = select(2.0f, 3.0f, x_2547);
        let x_2552 : bool = u_xlatb11.z;
        u_xlat11.x = select(0.0f, 1.0f, x_2552);
        let x_2557 : bool = u_xlatb10.z;
        if (x_2557) {
          let x_2563 : f32 = u_xlat35.z;
          x_2559 = x_2563;
        } else {
          let x_2566 : f32 = u_xlat11.x;
          x_2559 = x_2566;
        }
        let x_2567 : f32 = x_2559;
        u_xlat60 = x_2567;
        let x_2569 : bool = u_xlatb10.x;
        if (x_2569) {
          let x_2574 : f32 = u_xlat35.x;
          x_2570 = x_2574;
        } else {
          let x_2576 : f32 = u_xlat60;
          x_2570 = x_2576;
        }
        let x_2577 : f32 = x_2570;
        u_xlat10.x = x_2577;
        let x_2579 : i32 = u_xlati6;
        let x_2581 : f32 = x_739.x_AdditionalShadowParams[x_2579].w;
        u_xlat35.x = trunc(x_2581);
        let x_2585 : f32 = u_xlat10.x;
        let x_2587 : f32 = u_xlat35.x;
        u_xlat10.x = (x_2585 + x_2587);
        let x_2591 : f32 = u_xlat10.x;
        u_xlati84 = i32(x_2591);
      }
      let x_2593 : i32 = u_xlati84;
      u_xlati84 = (x_2593 << bitcast<u32>(2i));
      let x_2595 : vec3<f32> = vs_TEXCOORD7;
      let x_2597 : i32 = u_xlati84;
      let x_2600 : i32 = u_xlati84;
      let x_2604 : vec4<f32> = x_739.x_AdditionalLightsWorldToShadow[((x_2597 + 1i) / 4i)][((x_2600 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_2595.y, x_2595.y, x_2595.y, x_2595.y) * x_2604);
      let x_2606 : i32 = u_xlati84;
      let x_2608 : i32 = u_xlati84;
      let x_2611 : vec4<f32> = x_739.x_AdditionalLightsWorldToShadow[(x_2606 / 4i)][(x_2608 % 4i)];
      let x_2612 : vec3<f32> = vs_TEXCOORD7;
      let x_2615 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2611 * vec4<f32>(x_2612.x, x_2612.x, x_2612.x, x_2612.x)) + x_2615);
      let x_2617 : i32 = u_xlati84;
      let x_2620 : i32 = u_xlati84;
      let x_2624 : vec4<f32> = x_739.x_AdditionalLightsWorldToShadow[((x_2617 + 2i) / 4i)][((x_2620 + 2i) % 4i)];
      let x_2625 : vec3<f32> = vs_TEXCOORD7;
      let x_2628 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2624 * vec4<f32>(x_2625.z, x_2625.z, x_2625.z, x_2625.z)) + x_2628);
      let x_2630 : vec4<f32> = u_xlat10;
      let x_2631 : i32 = u_xlati84;
      let x_2634 : i32 = u_xlati84;
      let x_2638 : vec4<f32> = x_739.x_AdditionalLightsWorldToShadow[((x_2631 + 3i) / 4i)][((x_2634 + 3i) % 4i)];
      u_xlat10 = (x_2630 + x_2638);
      let x_2640 : vec4<f32> = u_xlat10;
      let x_2642 : vec4<f32> = u_xlat10;
      let x_2644 : vec3<f32> = (vec3<f32>(x_2640.x, x_2640.y, x_2640.z) / vec3<f32>(x_2642.w, x_2642.w, x_2642.w));
      let x_2645 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2644.x, x_2644.y, x_2644.z, x_2645.w);
      let x_2648 : i32 = u_xlati6;
      let x_2650 : f32 = x_739.x_AdditionalShadowParams[x_2648].y;
      u_xlatb84 = (0.0f < x_2650);
      let x_2652 : bool = u_xlatb84;
      if (x_2652) {
        let x_2655 : i32 = u_xlati6;
        let x_2657 : f32 = x_739.x_AdditionalShadowParams[x_2655].y;
        u_xlatb84 = (1.0f == x_2657);
        let x_2659 : bool = u_xlatb84;
        if (x_2659) {
          let x_2662 : vec4<f32> = u_xlat10;
          let x_2665 : vec4<f32> = x_739.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2662.x, x_2662.y, x_2662.x, x_2662.y) + x_2665);
          let x_2668 : vec4<f32> = u_xlat11;
          let x_2669 : vec2<f32> = vec2<f32>(x_2668.x, x_2668.y);
          let x_2671 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2669.x, x_2669.y, x_2671);
          let x_2679 : vec3<f32> = txVec30;
          let x_2681 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2679.xy, x_2679.z);
          u_xlat12.x = x_2681;
          let x_2684 : vec4<f32> = u_xlat11;
          let x_2685 : vec2<f32> = vec2<f32>(x_2684.z, x_2684.w);
          let x_2687 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_2685.x, x_2685.y, x_2687);
          let x_2694 : vec3<f32> = txVec31;
          let x_2696 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2694.xy, x_2694.z);
          u_xlat12.y = x_2696;
          let x_2698 : vec4<f32> = u_xlat10;
          let x_2701 : vec4<f32> = x_739.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_2698.x, x_2698.y, x_2698.x, x_2698.y) + x_2701);
          let x_2704 : vec4<f32> = u_xlat11;
          let x_2705 : vec2<f32> = vec2<f32>(x_2704.x, x_2704.y);
          let x_2707 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_2705.x, x_2705.y, x_2707);
          let x_2714 : vec3<f32> = txVec32;
          let x_2716 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2714.xy, x_2714.z);
          u_xlat12.z = x_2716;
          let x_2719 : vec4<f32> = u_xlat11;
          let x_2720 : vec2<f32> = vec2<f32>(x_2719.z, x_2719.w);
          let x_2722 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_2720.x, x_2720.y, x_2722);
          let x_2729 : vec3<f32> = txVec33;
          let x_2731 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2729.xy, x_2729.z);
          u_xlat12.w = x_2731;
          let x_2733 : vec4<f32> = u_xlat12;
          u_xlat84 = dot(x_2733, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2737 : i32 = u_xlati6;
          let x_2739 : f32 = x_739.x_AdditionalShadowParams[x_2737].y;
          u_xlatb85 = (2.0f == x_2739);
          let x_2741 : bool = u_xlatb85;
          if (x_2741) {
            let x_2744 : vec4<f32> = u_xlat10;
            let x_2747 : vec4<f32> = x_739.x_AdditionalShadowmapSize;
            let x_2750 : vec2<f32> = ((vec2<f32>(x_2744.x, x_2744.y) * vec2<f32>(x_2747.z, x_2747.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2751 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2750.x, x_2750.y, x_2751.z, x_2751.w);
            let x_2753 : vec4<f32> = u_xlat11;
            let x_2755 : vec2<f32> = floor(vec2<f32>(x_2753.x, x_2753.y));
            let x_2756 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2755.x, x_2755.y, x_2756.z, x_2756.w);
            let x_2759 : vec4<f32> = u_xlat10;
            let x_2762 : vec4<f32> = x_739.x_AdditionalShadowmapSize;
            let x_2765 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2759.x, x_2759.y) * vec2<f32>(x_2762.z, x_2762.w)) + -(vec2<f32>(x_2765.x, x_2765.y)));
            let x_2769 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2769.x, x_2769.x, x_2769.y, x_2769.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2772 : vec4<f32> = u_xlat12;
            let x_2774 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2772.x, x_2772.x, x_2772.z, x_2772.z) * vec4<f32>(x_2774.x, x_2774.x, x_2774.z, x_2774.z));
            let x_2777 : vec4<f32> = u_xlat13;
            let x_2779 : vec2<f32> = (vec2<f32>(x_2777.y, x_2777.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2780 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2779.x, x_2780.y, x_2779.y, x_2780.w);
            let x_2782 : vec4<f32> = u_xlat13;
            let x_2785 : vec2<f32> = u_xlat61;
            let x_2787 : vec2<f32> = ((vec2<f32>(x_2782.x, x_2782.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2785));
            let x_2788 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2787.x, x_2787.y, x_2788.z, x_2788.w);
            let x_2791 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_2791) + vec2<f32>(1.0f, 1.0f));
            let x_2794 : vec2<f32> = u_xlat61;
            let x_2795 : vec2<f32> = min(x_2794, vec2<f32>(0.0f, 0.0f));
            let x_2796 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2795.x, x_2795.y, x_2796.z, x_2796.w);
            let x_2798 : vec4<f32> = u_xlat14;
            let x_2801 : vec4<f32> = u_xlat14;
            let x_2804 : vec2<f32> = u_xlat63;
            let x_2805 : vec2<f32> = ((-(vec2<f32>(x_2798.x, x_2798.y)) * vec2<f32>(x_2801.x, x_2801.y)) + x_2804);
            let x_2806 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2805.x, x_2805.y, x_2806.z, x_2806.w);
            let x_2808 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_2808, vec2<f32>(0.0f, 0.0f));
            let x_2810 : vec2<f32> = u_xlat61;
            let x_2812 : vec2<f32> = u_xlat61;
            let x_2814 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_2810) * x_2812) + vec2<f32>(x_2814.y, x_2814.w));
            let x_2817 : vec4<f32> = u_xlat14;
            let x_2819 : vec2<f32> = (vec2<f32>(x_2817.x, x_2817.y) + vec2<f32>(1.0f, 1.0f));
            let x_2820 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2819.x, x_2819.y, x_2820.z, x_2820.w);
            let x_2822 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_2822 + vec2<f32>(1.0f, 1.0f));
            let x_2824 : vec4<f32> = u_xlat13;
            let x_2826 : vec2<f32> = (vec2<f32>(x_2824.x, x_2824.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2827 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2826.x, x_2826.y, x_2827.z, x_2827.w);
            let x_2829 : vec2<f32> = u_xlat63;
            let x_2830 : vec2<f32> = (x_2829 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2831 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2830.x, x_2830.y, x_2831.z, x_2831.w);
            let x_2833 : vec4<f32> = u_xlat14;
            let x_2835 : vec2<f32> = (vec2<f32>(x_2833.x, x_2833.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2836 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2835.x, x_2835.y, x_2836.z, x_2836.w);
            let x_2838 : vec2<f32> = u_xlat61;
            let x_2839 : vec2<f32> = (x_2838 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2840 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2839.x, x_2839.y, x_2840.z, x_2840.w);
            let x_2842 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_2842.y, x_2842.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2846 : f32 = u_xlat14.x;
            u_xlat15.z = x_2846;
            let x_2849 : f32 = u_xlat61.x;
            u_xlat15.w = x_2849;
            let x_2852 : f32 = u_xlat16.x;
            u_xlat13.z = x_2852;
            let x_2855 : f32 = u_xlat12.x;
            u_xlat13.w = x_2855;
            let x_2857 : vec4<f32> = u_xlat13;
            let x_2859 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2857.z, x_2857.w, x_2857.x, x_2857.z) + vec4<f32>(x_2859.z, x_2859.w, x_2859.x, x_2859.z));
            let x_2863 : f32 = u_xlat15.y;
            u_xlat14.z = x_2863;
            let x_2866 : f32 = u_xlat61.y;
            u_xlat14.w = x_2866;
            let x_2869 : f32 = u_xlat13.y;
            u_xlat16.z = x_2869;
            let x_2872 : f32 = u_xlat12.z;
            u_xlat16.w = x_2872;
            let x_2874 : vec4<f32> = u_xlat14;
            let x_2876 : vec4<f32> = u_xlat16;
            let x_2878 : vec3<f32> = (vec3<f32>(x_2874.z, x_2874.y, x_2874.w) + vec3<f32>(x_2876.z, x_2876.y, x_2876.w));
            let x_2879 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2878.x, x_2878.y, x_2878.z, x_2879.w);
            let x_2881 : vec4<f32> = u_xlat13;
            let x_2883 : vec4<f32> = u_xlat17;
            let x_2885 : vec3<f32> = (vec3<f32>(x_2881.x, x_2881.z, x_2881.w) / vec3<f32>(x_2883.z, x_2883.w, x_2883.y));
            let x_2886 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2885.x, x_2885.y, x_2885.z, x_2886.w);
            let x_2888 : vec4<f32> = u_xlat13;
            let x_2890 : vec3<f32> = (vec3<f32>(x_2888.x, x_2888.y, x_2888.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2891 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2890.x, x_2890.y, x_2890.z, x_2891.w);
            let x_2893 : vec4<f32> = u_xlat16;
            let x_2895 : vec4<f32> = u_xlat12;
            let x_2897 : vec3<f32> = (vec3<f32>(x_2893.z, x_2893.y, x_2893.w) / vec3<f32>(x_2895.x, x_2895.y, x_2895.z));
            let x_2898 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2897.x, x_2897.y, x_2897.z, x_2898.w);
            let x_2900 : vec4<f32> = u_xlat14;
            let x_2902 : vec3<f32> = (vec3<f32>(x_2900.x, x_2900.y, x_2900.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2903 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2902.x, x_2902.y, x_2902.z, x_2903.w);
            let x_2905 : vec4<f32> = u_xlat13;
            let x_2908 : vec4<f32> = x_739.x_AdditionalShadowmapSize;
            let x_2910 : vec3<f32> = (vec3<f32>(x_2905.y, x_2905.x, x_2905.z) * vec3<f32>(x_2908.x, x_2908.x, x_2908.x));
            let x_2911 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2910.x, x_2910.y, x_2910.z, x_2911.w);
            let x_2913 : vec4<f32> = u_xlat14;
            let x_2916 : vec4<f32> = x_739.x_AdditionalShadowmapSize;
            let x_2918 : vec3<f32> = (vec3<f32>(x_2913.x, x_2913.y, x_2913.z) * vec3<f32>(x_2916.y, x_2916.y, x_2916.y));
            let x_2919 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2918.x, x_2918.y, x_2918.z, x_2919.w);
            let x_2922 : f32 = u_xlat14.x;
            u_xlat13.w = x_2922;
            let x_2924 : vec4<f32> = u_xlat11;
            let x_2927 : vec4<f32> = x_739.x_AdditionalShadowmapSize;
            let x_2930 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2924.x, x_2924.y, x_2924.x, x_2924.y) * vec4<f32>(x_2927.x, x_2927.y, x_2927.x, x_2927.y)) + vec4<f32>(x_2930.y, x_2930.w, x_2930.x, x_2930.w));
            let x_2933 : vec4<f32> = u_xlat11;
            let x_2936 : vec4<f32> = x_739.x_AdditionalShadowmapSize;
            let x_2939 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_2933.x, x_2933.y) * vec2<f32>(x_2936.x, x_2936.y)) + vec2<f32>(x_2939.z, x_2939.w));
            let x_2943 : f32 = u_xlat13.y;
            u_xlat14.w = x_2943;
            let x_2945 : vec4<f32> = u_xlat14;
            let x_2946 : vec2<f32> = vec2<f32>(x_2945.y, x_2945.z);
            let x_2947 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2947.x, x_2946.x, x_2947.z, x_2946.y);
            let x_2949 : vec4<f32> = u_xlat11;
            let x_2952 : vec4<f32> = x_739.x_AdditionalShadowmapSize;
            let x_2955 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_2949.x, x_2949.y, x_2949.x, x_2949.y) * vec4<f32>(x_2952.x, x_2952.y, x_2952.x, x_2952.y)) + vec4<f32>(x_2955.x, x_2955.y, x_2955.z, x_2955.y));
            let x_2958 : vec4<f32> = u_xlat11;
            let x_2961 : vec4<f32> = x_739.x_AdditionalShadowmapSize;
            let x_2964 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2958.x, x_2958.y, x_2958.x, x_2958.y) * vec4<f32>(x_2961.x, x_2961.y, x_2961.x, x_2961.y)) + vec4<f32>(x_2964.w, x_2964.y, x_2964.w, x_2964.z));
            let x_2967 : vec4<f32> = u_xlat11;
            let x_2970 : vec4<f32> = x_739.x_AdditionalShadowmapSize;
            let x_2973 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_2967.x, x_2967.y, x_2967.x, x_2967.y) * vec4<f32>(x_2970.x, x_2970.y, x_2970.x, x_2970.y)) + vec4<f32>(x_2973.x, x_2973.w, x_2973.z, x_2973.w));
            let x_2976 : vec4<f32> = u_xlat12;
            let x_2978 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_2976.x, x_2976.x, x_2976.x, x_2976.y) * vec4<f32>(x_2978.z, x_2978.w, x_2978.y, x_2978.z));
            let x_2981 : vec4<f32> = u_xlat12;
            let x_2983 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_2981.y, x_2981.y, x_2981.z, x_2981.z) * x_2983);
            let x_2987 : f32 = u_xlat12.z;
            let x_2989 : f32 = u_xlat17.y;
            u_xlat85 = (x_2987 * x_2989);
            let x_2992 : vec4<f32> = u_xlat15;
            let x_2993 : vec2<f32> = vec2<f32>(x_2992.x, x_2992.y);
            let x_2995 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_2993.x, x_2993.y, x_2995);
            let x_3002 : vec3<f32> = txVec34;
            let x_3004 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3002.xy, x_3002.z);
            u_xlat11.x = x_3004;
            let x_3007 : vec4<f32> = u_xlat15;
            let x_3008 : vec2<f32> = vec2<f32>(x_3007.z, x_3007.w);
            let x_3010 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_3008.x, x_3008.y, x_3010);
            let x_3018 : vec3<f32> = txVec35;
            let x_3020 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3018.xy, x_3018.z);
            u_xlat36 = x_3020;
            let x_3021 : f32 = u_xlat36;
            let x_3023 : f32 = u_xlat18.y;
            u_xlat36 = (x_3021 * x_3023);
            let x_3026 : f32 = u_xlat18.x;
            let x_3028 : f32 = u_xlat11.x;
            let x_3030 : f32 = u_xlat36;
            u_xlat11.x = ((x_3026 * x_3028) + x_3030);
            let x_3034 : vec2<f32> = u_xlat61;
            let x_3036 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_3034.x, x_3034.y, x_3036);
            let x_3043 : vec3<f32> = txVec36;
            let x_3045 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3043.xy, x_3043.z);
            u_xlat36 = x_3045;
            let x_3047 : f32 = u_xlat18.z;
            let x_3048 : f32 = u_xlat36;
            let x_3051 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3047 * x_3048) + x_3051);
            let x_3055 : vec4<f32> = u_xlat14;
            let x_3056 : vec2<f32> = vec2<f32>(x_3055.x, x_3055.y);
            let x_3058 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_3056.x, x_3056.y, x_3058);
            let x_3065 : vec3<f32> = txVec37;
            let x_3067 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3065.xy, x_3065.z);
            u_xlat36 = x_3067;
            let x_3069 : f32 = u_xlat18.w;
            let x_3070 : f32 = u_xlat36;
            let x_3073 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3069 * x_3070) + x_3073);
            let x_3077 : vec4<f32> = u_xlat16;
            let x_3078 : vec2<f32> = vec2<f32>(x_3077.x, x_3077.y);
            let x_3080 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_3078.x, x_3078.y, x_3080);
            let x_3087 : vec3<f32> = txVec38;
            let x_3089 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3087.xy, x_3087.z);
            u_xlat36 = x_3089;
            let x_3091 : f32 = u_xlat19.x;
            let x_3092 : f32 = u_xlat36;
            let x_3095 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3091 * x_3092) + x_3095);
            let x_3099 : vec4<f32> = u_xlat16;
            let x_3100 : vec2<f32> = vec2<f32>(x_3099.z, x_3099.w);
            let x_3102 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_3100.x, x_3100.y, x_3102);
            let x_3109 : vec3<f32> = txVec39;
            let x_3111 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3109.xy, x_3109.z);
            u_xlat36 = x_3111;
            let x_3113 : f32 = u_xlat19.y;
            let x_3114 : f32 = u_xlat36;
            let x_3117 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3113 * x_3114) + x_3117);
            let x_3121 : vec4<f32> = u_xlat14;
            let x_3122 : vec2<f32> = vec2<f32>(x_3121.z, x_3121.w);
            let x_3124 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_3122.x, x_3122.y, x_3124);
            let x_3131 : vec3<f32> = txVec40;
            let x_3133 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3131.xy, x_3131.z);
            u_xlat36 = x_3133;
            let x_3135 : f32 = u_xlat19.z;
            let x_3136 : f32 = u_xlat36;
            let x_3139 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3135 * x_3136) + x_3139);
            let x_3143 : vec4<f32> = u_xlat13;
            let x_3144 : vec2<f32> = vec2<f32>(x_3143.x, x_3143.y);
            let x_3146 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_3144.x, x_3144.y, x_3146);
            let x_3153 : vec3<f32> = txVec41;
            let x_3155 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3153.xy, x_3153.z);
            u_xlat36 = x_3155;
            let x_3157 : f32 = u_xlat19.w;
            let x_3158 : f32 = u_xlat36;
            let x_3161 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3157 * x_3158) + x_3161);
            let x_3165 : vec4<f32> = u_xlat13;
            let x_3166 : vec2<f32> = vec2<f32>(x_3165.z, x_3165.w);
            let x_3168 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_3166.x, x_3166.y, x_3168);
            let x_3175 : vec3<f32> = txVec42;
            let x_3177 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3175.xy, x_3175.z);
            u_xlat36 = x_3177;
            let x_3178 : f32 = u_xlat85;
            let x_3179 : f32 = u_xlat36;
            let x_3182 : f32 = u_xlat11.x;
            u_xlat84 = ((x_3178 * x_3179) + x_3182);
          } else {
            let x_3185 : vec4<f32> = u_xlat10;
            let x_3188 : vec4<f32> = x_739.x_AdditionalShadowmapSize;
            let x_3191 : vec2<f32> = ((vec2<f32>(x_3185.x, x_3185.y) * vec2<f32>(x_3188.z, x_3188.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3192 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3191.x, x_3191.y, x_3192.z, x_3192.w);
            let x_3194 : vec4<f32> = u_xlat11;
            let x_3196 : vec2<f32> = floor(vec2<f32>(x_3194.x, x_3194.y));
            let x_3197 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3196.x, x_3196.y, x_3197.z, x_3197.w);
            let x_3199 : vec4<f32> = u_xlat10;
            let x_3202 : vec4<f32> = x_739.x_AdditionalShadowmapSize;
            let x_3205 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3199.x, x_3199.y) * vec2<f32>(x_3202.z, x_3202.w)) + -(vec2<f32>(x_3205.x, x_3205.y)));
            let x_3209 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3209.x, x_3209.x, x_3209.y, x_3209.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3212 : vec4<f32> = u_xlat12;
            let x_3214 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3212.x, x_3212.x, x_3212.z, x_3212.z) * vec4<f32>(x_3214.x, x_3214.x, x_3214.z, x_3214.z));
            let x_3217 : vec4<f32> = u_xlat13;
            let x_3219 : vec2<f32> = (vec2<f32>(x_3217.y, x_3217.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3220 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3220.x, x_3219.x, x_3220.z, x_3219.y);
            let x_3222 : vec4<f32> = u_xlat13;
            let x_3225 : vec2<f32> = u_xlat61;
            let x_3227 : vec2<f32> = ((vec2<f32>(x_3222.x, x_3222.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3225));
            let x_3228 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3227.x, x_3228.y, x_3227.y, x_3228.w);
            let x_3230 : vec2<f32> = u_xlat61;
            let x_3232 : vec2<f32> = (-(x_3230) + vec2<f32>(1.0f, 1.0f));
            let x_3233 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3232.x, x_3232.y, x_3233.z, x_3233.w);
            let x_3235 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_3235, vec2<f32>(0.0f, 0.0f));
            let x_3237 : vec2<f32> = u_xlat63;
            let x_3239 : vec2<f32> = u_xlat63;
            let x_3241 : vec4<f32> = u_xlat13;
            let x_3243 : vec2<f32> = ((-(x_3237) * x_3239) + vec2<f32>(x_3241.x, x_3241.y));
            let x_3244 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3243.x, x_3243.y, x_3244.z, x_3244.w);
            let x_3246 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_3246, vec2<f32>(0.0f, 0.0f));
            let x_3249 : vec2<f32> = u_xlat63;
            let x_3251 : vec2<f32> = u_xlat63;
            let x_3253 : vec4<f32> = u_xlat12;
            let x_3255 : vec2<f32> = ((-(x_3249) * x_3251) + vec2<f32>(x_3253.y, x_3253.w));
            let x_3256 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_3255.x, x_3256.y, x_3255.y);
            let x_3258 : vec4<f32> = u_xlat13;
            let x_3260 : vec2<f32> = (vec2<f32>(x_3258.x, x_3258.y) + vec2<f32>(2.0f, 2.0f));
            let x_3261 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3260.x, x_3260.y, x_3261.z, x_3261.w);
            let x_3263 : vec3<f32> = u_xlat37;
            let x_3265 : vec2<f32> = (vec2<f32>(x_3263.x, x_3263.z) + vec2<f32>(2.0f, 2.0f));
            let x_3266 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3266.x, x_3265.x, x_3266.z, x_3265.y);
            let x_3269 : f32 = u_xlat12.y;
            u_xlat15.z = (x_3269 * 0.08163200318813323975f);
            let x_3272 : vec4<f32> = u_xlat12;
            let x_3274 : vec3<f32> = (vec3<f32>(x_3272.z, x_3272.x, x_3272.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3275 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3274.x, x_3274.y, x_3274.z, x_3275.w);
            let x_3277 : vec4<f32> = u_xlat13;
            let x_3279 : vec2<f32> = (vec2<f32>(x_3277.x, x_3277.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3280 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3279.x, x_3279.y, x_3280.z, x_3280.w);
            let x_3283 : f32 = u_xlat16.y;
            u_xlat15.x = x_3283;
            let x_3285 : vec2<f32> = u_xlat61;
            let x_3288 : vec2<f32> = ((vec2<f32>(x_3285.x, x_3285.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3289 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3289.x, x_3288.x, x_3289.z, x_3288.y);
            let x_3291 : vec2<f32> = u_xlat61;
            let x_3294 : vec2<f32> = ((vec2<f32>(x_3291.x, x_3291.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3295 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3294.x, x_3295.y, x_3294.y, x_3295.w);
            let x_3298 : f32 = u_xlat12.x;
            u_xlat13.y = x_3298;
            let x_3301 : f32 = u_xlat14.y;
            u_xlat13.w = x_3301;
            let x_3303 : vec4<f32> = u_xlat13;
            let x_3304 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3303 + x_3304);
            let x_3306 : vec2<f32> = u_xlat61;
            let x_3309 : vec2<f32> = ((vec2<f32>(x_3306.y, x_3306.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3310 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3310.x, x_3309.x, x_3310.z, x_3309.y);
            let x_3312 : vec2<f32> = u_xlat61;
            let x_3315 : vec2<f32> = ((vec2<f32>(x_3312.y, x_3312.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3316 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3315.x, x_3316.y, x_3315.y, x_3316.w);
            let x_3319 : f32 = u_xlat12.y;
            u_xlat14.y = x_3319;
            let x_3321 : vec4<f32> = u_xlat14;
            let x_3322 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_3321 + x_3322);
            let x_3324 : vec4<f32> = u_xlat13;
            let x_3325 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_3324 / x_3325);
            let x_3327 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3327 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3329 : vec4<f32> = u_xlat14;
            let x_3330 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_3329 / x_3330);
            let x_3332 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3332 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3334 : vec4<f32> = u_xlat13;
            let x_3337 : vec4<f32> = x_739.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3334.w, x_3334.x, x_3334.y, x_3334.z) * vec4<f32>(x_3337.x, x_3337.x, x_3337.x, x_3337.x));
            let x_3340 : vec4<f32> = u_xlat14;
            let x_3343 : vec4<f32> = x_739.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3340.x, x_3340.w, x_3340.y, x_3340.z) * vec4<f32>(x_3343.y, x_3343.y, x_3343.y, x_3343.y));
            let x_3346 : vec4<f32> = u_xlat13;
            let x_3347 : vec3<f32> = vec3<f32>(x_3346.y, x_3346.z, x_3346.w);
            let x_3348 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3347.x, x_3348.y, x_3347.y, x_3347.z);
            let x_3351 : f32 = u_xlat14.x;
            u_xlat16.y = x_3351;
            let x_3353 : vec4<f32> = u_xlat11;
            let x_3356 : vec4<f32> = x_739.x_AdditionalShadowmapSize;
            let x_3359 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3353.x, x_3353.y, x_3353.x, x_3353.y) * vec4<f32>(x_3356.x, x_3356.y, x_3356.x, x_3356.y)) + vec4<f32>(x_3359.x, x_3359.y, x_3359.z, x_3359.y));
            let x_3362 : vec4<f32> = u_xlat11;
            let x_3365 : vec4<f32> = x_739.x_AdditionalShadowmapSize;
            let x_3368 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_3362.x, x_3362.y) * vec2<f32>(x_3365.x, x_3365.y)) + vec2<f32>(x_3368.w, x_3368.y));
            let x_3372 : f32 = u_xlat16.y;
            u_xlat13.y = x_3372;
            let x_3375 : f32 = u_xlat14.z;
            u_xlat16.y = x_3375;
            let x_3377 : vec4<f32> = u_xlat11;
            let x_3380 : vec4<f32> = x_739.x_AdditionalShadowmapSize;
            let x_3383 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3377.x, x_3377.y, x_3377.x, x_3377.y) * vec4<f32>(x_3380.x, x_3380.y, x_3380.x, x_3380.y)) + vec4<f32>(x_3383.x, x_3383.y, x_3383.z, x_3383.y));
            let x_3386 : vec4<f32> = u_xlat11;
            let x_3389 : vec4<f32> = x_739.x_AdditionalShadowmapSize;
            let x_3392 : vec4<f32> = u_xlat16;
            let x_3394 : vec2<f32> = ((vec2<f32>(x_3386.x, x_3386.y) * vec2<f32>(x_3389.x, x_3389.y)) + vec2<f32>(x_3392.w, x_3392.y));
            let x_3395 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3394.x, x_3394.y, x_3395.z, x_3395.w);
            let x_3398 : f32 = u_xlat16.y;
            u_xlat13.z = x_3398;
            let x_3401 : vec4<f32> = u_xlat11;
            let x_3404 : vec4<f32> = x_739.x_AdditionalShadowmapSize;
            let x_3407 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3401.x, x_3401.y, x_3401.x, x_3401.y) * vec4<f32>(x_3404.x, x_3404.y, x_3404.x, x_3404.y)) + vec4<f32>(x_3407.x, x_3407.y, x_3407.x, x_3407.z));
            let x_3411 : f32 = u_xlat14.w;
            u_xlat16.y = x_3411;
            let x_3414 : vec4<f32> = u_xlat11;
            let x_3417 : vec4<f32> = x_739.x_AdditionalShadowmapSize;
            let x_3420 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3414.x, x_3414.y, x_3414.x, x_3414.y) * vec4<f32>(x_3417.x, x_3417.y, x_3417.x, x_3417.y)) + vec4<f32>(x_3420.x, x_3420.y, x_3420.z, x_3420.y));
            let x_3424 : vec4<f32> = u_xlat11;
            let x_3427 : vec4<f32> = x_739.x_AdditionalShadowmapSize;
            let x_3430 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3424.x, x_3424.y) * vec2<f32>(x_3427.x, x_3427.y)) + vec2<f32>(x_3430.w, x_3430.y));
            let x_3434 : f32 = u_xlat16.y;
            u_xlat13.w = x_3434;
            let x_3437 : vec4<f32> = u_xlat11;
            let x_3440 : vec4<f32> = x_739.x_AdditionalShadowmapSize;
            let x_3443 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3437.x, x_3437.y) * vec2<f32>(x_3440.x, x_3440.y)) + vec2<f32>(x_3443.x, x_3443.w));
            let x_3446 : vec4<f32> = u_xlat16;
            let x_3447 : vec3<f32> = vec3<f32>(x_3446.x, x_3446.z, x_3446.w);
            let x_3448 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3447.x, x_3448.y, x_3447.y, x_3447.z);
            let x_3450 : vec4<f32> = u_xlat11;
            let x_3453 : vec4<f32> = x_739.x_AdditionalShadowmapSize;
            let x_3456 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3450.x, x_3450.y, x_3450.x, x_3450.y) * vec4<f32>(x_3453.x, x_3453.y, x_3453.x, x_3453.y)) + vec4<f32>(x_3456.x, x_3456.y, x_3456.z, x_3456.y));
            let x_3459 : vec4<f32> = u_xlat11;
            let x_3462 : vec4<f32> = x_739.x_AdditionalShadowmapSize;
            let x_3465 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3459.x, x_3459.y) * vec2<f32>(x_3462.x, x_3462.y)) + vec2<f32>(x_3465.w, x_3465.y));
            let x_3469 : f32 = u_xlat13.x;
            u_xlat14.x = x_3469;
            let x_3471 : vec4<f32> = u_xlat11;
            let x_3474 : vec4<f32> = x_739.x_AdditionalShadowmapSize;
            let x_3477 : vec4<f32> = u_xlat14;
            let x_3479 : vec2<f32> = ((vec2<f32>(x_3471.x, x_3471.y) * vec2<f32>(x_3474.x, x_3474.y)) + vec2<f32>(x_3477.x, x_3477.y));
            let x_3480 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3479.x, x_3479.y, x_3480.z, x_3480.w);
            let x_3483 : vec4<f32> = u_xlat12;
            let x_3485 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3483.x, x_3483.x, x_3483.x, x_3483.x) * x_3485);
            let x_3488 : vec4<f32> = u_xlat12;
            let x_3490 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3488.y, x_3488.y, x_3488.y, x_3488.y) * x_3490);
            let x_3493 : vec4<f32> = u_xlat12;
            let x_3495 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3493.z, x_3493.z, x_3493.z, x_3493.z) * x_3495);
            let x_3497 : vec4<f32> = u_xlat12;
            let x_3499 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3497.w, x_3497.w, x_3497.w, x_3497.w) * x_3499);
            let x_3502 : vec4<f32> = u_xlat17;
            let x_3503 : vec2<f32> = vec2<f32>(x_3502.x, x_3502.y);
            let x_3505 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3503.x, x_3503.y, x_3505);
            let x_3512 : vec3<f32> = txVec43;
            let x_3514 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3512.xy, x_3512.z);
            u_xlat85 = x_3514;
            let x_3516 : vec4<f32> = u_xlat17;
            let x_3517 : vec2<f32> = vec2<f32>(x_3516.z, x_3516.w);
            let x_3519 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3517.x, x_3517.y, x_3519);
            let x_3526 : vec3<f32> = txVec44;
            let x_3528 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3526.xy, x_3526.z);
            u_xlat13.x = x_3528;
            let x_3531 : f32 = u_xlat13.x;
            let x_3533 : f32 = u_xlat22.y;
            u_xlat13.x = (x_3531 * x_3533);
            let x_3537 : f32 = u_xlat22.x;
            let x_3538 : f32 = u_xlat85;
            let x_3541 : f32 = u_xlat13.x;
            u_xlat85 = ((x_3537 * x_3538) + x_3541);
            let x_3544 : vec2<f32> = u_xlat61;
            let x_3546 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3544.x, x_3544.y, x_3546);
            let x_3553 : vec3<f32> = txVec45;
            let x_3555 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3553.xy, x_3553.z);
            u_xlat61.x = x_3555;
            let x_3558 : f32 = u_xlat22.z;
            let x_3560 : f32 = u_xlat61.x;
            let x_3562 : f32 = u_xlat85;
            u_xlat85 = ((x_3558 * x_3560) + x_3562);
            let x_3565 : vec4<f32> = u_xlat20;
            let x_3566 : vec2<f32> = vec2<f32>(x_3565.x, x_3565.y);
            let x_3568 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3566.x, x_3566.y, x_3568);
            let x_3575 : vec3<f32> = txVec46;
            let x_3577 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3575.xy, x_3575.z);
            u_xlat61.x = x_3577;
            let x_3580 : f32 = u_xlat22.w;
            let x_3582 : f32 = u_xlat61.x;
            let x_3584 : f32 = u_xlat85;
            u_xlat85 = ((x_3580 * x_3582) + x_3584);
            let x_3587 : vec4<f32> = u_xlat18;
            let x_3588 : vec2<f32> = vec2<f32>(x_3587.x, x_3587.y);
            let x_3590 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3588.x, x_3588.y, x_3590);
            let x_3597 : vec3<f32> = txVec47;
            let x_3599 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3597.xy, x_3597.z);
            u_xlat61.x = x_3599;
            let x_3602 : f32 = u_xlat23.x;
            let x_3604 : f32 = u_xlat61.x;
            let x_3606 : f32 = u_xlat85;
            u_xlat85 = ((x_3602 * x_3604) + x_3606);
            let x_3609 : vec4<f32> = u_xlat18;
            let x_3610 : vec2<f32> = vec2<f32>(x_3609.z, x_3609.w);
            let x_3612 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3610.x, x_3610.y, x_3612);
            let x_3619 : vec3<f32> = txVec48;
            let x_3621 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3619.xy, x_3619.z);
            u_xlat61.x = x_3621;
            let x_3624 : f32 = u_xlat23.y;
            let x_3626 : f32 = u_xlat61.x;
            let x_3628 : f32 = u_xlat85;
            u_xlat85 = ((x_3624 * x_3626) + x_3628);
            let x_3631 : vec4<f32> = u_xlat19;
            let x_3632 : vec2<f32> = vec2<f32>(x_3631.x, x_3631.y);
            let x_3634 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3632.x, x_3632.y, x_3634);
            let x_3641 : vec3<f32> = txVec49;
            let x_3643 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3641.xy, x_3641.z);
            u_xlat61.x = x_3643;
            let x_3646 : f32 = u_xlat23.z;
            let x_3648 : f32 = u_xlat61.x;
            let x_3650 : f32 = u_xlat85;
            u_xlat85 = ((x_3646 * x_3648) + x_3650);
            let x_3653 : vec4<f32> = u_xlat20;
            let x_3654 : vec2<f32> = vec2<f32>(x_3653.z, x_3653.w);
            let x_3656 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3654.x, x_3654.y, x_3656);
            let x_3663 : vec3<f32> = txVec50;
            let x_3665 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3663.xy, x_3663.z);
            u_xlat61.x = x_3665;
            let x_3668 : f32 = u_xlat23.w;
            let x_3670 : f32 = u_xlat61.x;
            let x_3672 : f32 = u_xlat85;
            u_xlat85 = ((x_3668 * x_3670) + x_3672);
            let x_3675 : vec4<f32> = u_xlat21;
            let x_3676 : vec2<f32> = vec2<f32>(x_3675.x, x_3675.y);
            let x_3678 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3676.x, x_3676.y, x_3678);
            let x_3685 : vec3<f32> = txVec51;
            let x_3687 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3685.xy, x_3685.z);
            u_xlat61.x = x_3687;
            let x_3690 : f32 = u_xlat24.x;
            let x_3692 : f32 = u_xlat61.x;
            let x_3694 : f32 = u_xlat85;
            u_xlat85 = ((x_3690 * x_3692) + x_3694);
            let x_3697 : vec4<f32> = u_xlat21;
            let x_3698 : vec2<f32> = vec2<f32>(x_3697.z, x_3697.w);
            let x_3700 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_3698.x, x_3698.y, x_3700);
            let x_3707 : vec3<f32> = txVec52;
            let x_3709 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3707.xy, x_3707.z);
            u_xlat61.x = x_3709;
            let x_3712 : f32 = u_xlat24.y;
            let x_3714 : f32 = u_xlat61.x;
            let x_3716 : f32 = u_xlat85;
            u_xlat85 = ((x_3712 * x_3714) + x_3716);
            let x_3719 : vec2<f32> = u_xlat38;
            let x_3721 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_3719.x, x_3719.y, x_3721);
            let x_3728 : vec3<f32> = txVec53;
            let x_3730 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3728.xy, x_3728.z);
            u_xlat61.x = x_3730;
            let x_3733 : f32 = u_xlat24.z;
            let x_3735 : f32 = u_xlat61.x;
            let x_3737 : f32 = u_xlat85;
            u_xlat85 = ((x_3733 * x_3735) + x_3737);
            let x_3740 : vec2<f32> = u_xlat69;
            let x_3742 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_3740.x, x_3740.y, x_3742);
            let x_3749 : vec3<f32> = txVec54;
            let x_3751 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3749.xy, x_3749.z);
            u_xlat61.x = x_3751;
            let x_3754 : f32 = u_xlat24.w;
            let x_3756 : f32 = u_xlat61.x;
            let x_3758 : f32 = u_xlat85;
            u_xlat85 = ((x_3754 * x_3756) + x_3758);
            let x_3761 : vec4<f32> = u_xlat16;
            let x_3762 : vec2<f32> = vec2<f32>(x_3761.x, x_3761.y);
            let x_3764 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_3762.x, x_3762.y, x_3764);
            let x_3771 : vec3<f32> = txVec55;
            let x_3773 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3771.xy, x_3771.z);
            u_xlat61.x = x_3773;
            let x_3776 : f32 = u_xlat12.x;
            let x_3778 : f32 = u_xlat61.x;
            let x_3780 : f32 = u_xlat85;
            u_xlat85 = ((x_3776 * x_3778) + x_3780);
            let x_3783 : vec4<f32> = u_xlat16;
            let x_3784 : vec2<f32> = vec2<f32>(x_3783.z, x_3783.w);
            let x_3786 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_3784.x, x_3784.y, x_3786);
            let x_3793 : vec3<f32> = txVec56;
            let x_3795 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3793.xy, x_3793.z);
            u_xlat61.x = x_3795;
            let x_3798 : f32 = u_xlat12.y;
            let x_3800 : f32 = u_xlat61.x;
            let x_3802 : f32 = u_xlat85;
            u_xlat85 = ((x_3798 * x_3800) + x_3802);
            let x_3805 : vec2<f32> = u_xlat64;
            let x_3807 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_3805.x, x_3805.y, x_3807);
            let x_3814 : vec3<f32> = txVec57;
            let x_3816 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3814.xy, x_3814.z);
            u_xlat61.x = x_3816;
            let x_3819 : f32 = u_xlat12.z;
            let x_3821 : f32 = u_xlat61.x;
            let x_3823 : f32 = u_xlat85;
            u_xlat85 = ((x_3819 * x_3821) + x_3823);
            let x_3826 : vec4<f32> = u_xlat11;
            let x_3827 : vec2<f32> = vec2<f32>(x_3826.x, x_3826.y);
            let x_3829 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_3827.x, x_3827.y, x_3829);
            let x_3836 : vec3<f32> = txVec58;
            let x_3838 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3836.xy, x_3836.z);
            u_xlat11.x = x_3838;
            let x_3841 : f32 = u_xlat12.w;
            let x_3843 : f32 = u_xlat11.x;
            let x_3845 : f32 = u_xlat85;
            u_xlat84 = ((x_3841 * x_3843) + x_3845);
          }
        }
      } else {
        let x_3849 : vec4<f32> = u_xlat10;
        let x_3850 : vec2<f32> = vec2<f32>(x_3849.x, x_3849.y);
        let x_3852 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_3850.x, x_3850.y, x_3852);
        let x_3859 : vec3<f32> = txVec59;
        let x_3861 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3859.xy, x_3859.z);
        u_xlat84 = x_3861;
      }
      let x_3862 : i32 = u_xlati6;
      let x_3864 : f32 = x_739.x_AdditionalShadowParams[x_3862].x;
      u_xlat10.x = (1.0f + -(x_3864));
      let x_3868 : f32 = u_xlat84;
      let x_3869 : i32 = u_xlati6;
      let x_3871 : f32 = x_739.x_AdditionalShadowParams[x_3869].x;
      let x_3874 : f32 = u_xlat10.x;
      u_xlat84 = ((x_3868 * x_3871) + x_3874);
      let x_3877 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_3877);
      let x_3882 : f32 = u_xlat10.z;
      u_xlatb35 = (x_3882 >= 1.0f);
      let x_3884 : bool = u_xlatb35;
      let x_3886 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_3884 | x_3886);
      let x_3890 : bool = u_xlatb10.x;
      let x_3891 : f32 = u_xlat84;
      u_xlat84 = select(x_3891, 1.0f, x_3890);
    } else {
      u_xlat84 = 1.0f;
    }
    let x_3894 : f32 = u_xlat84;
    u_xlat10.x = (-(x_3894) + 1.0f);
    let x_3898 : f32 = u_xlat78;
    let x_3900 : f32 = u_xlat10.x;
    let x_3902 : f32 = u_xlat84;
    u_xlat84 = ((x_3898 * x_3900) + x_3902);
    let x_3904 : f32 = u_xlat82;
    let x_3905 : f32 = u_xlat84;
    u_xlat82 = (x_3904 * x_3905);
    let x_3907 : vec3<f32> = u_xlat2;
    let x_3908 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(x_3907, vec3<f32>(x_3908.x, x_3908.y, x_3908.z));
    let x_3911 : f32 = u_xlat84;
    u_xlat84 = clamp(x_3911, 0.0f, 1.0f);
    let x_3913 : f32 = u_xlat82;
    let x_3914 : f32 = u_xlat84;
    u_xlat82 = (x_3913 * x_3914);
    let x_3916 : f32 = u_xlat82;
    let x_3918 : i32 = u_xlati6;
    let x_3920 : vec4<f32> = x_2418.x_AdditionalLightsColor[x_3918];
    let x_3922 : vec3<f32> = (vec3<f32>(x_3916, x_3916, x_3916) * vec3<f32>(x_3920.x, x_3920.y, x_3920.z));
    let x_3923 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3922.x, x_3922.y, x_3922.z, x_3923.w);
    let x_3925 : vec4<f32> = u_xlat8;
    let x_3927 : f32 = u_xlat83;
    let x_3930 : vec4<f32> = u_xlat1;
    let x_3932 : vec3<f32> = ((vec3<f32>(x_3925.x, x_3925.y, x_3925.z) * vec3<f32>(x_3927, x_3927, x_3927)) + vec3<f32>(x_3930.x, x_3930.y, x_3930.z));
    let x_3933 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3932.x, x_3932.y, x_3932.z, x_3933.w);
    let x_3935 : vec4<f32> = u_xlat8;
    let x_3937 : vec4<f32> = u_xlat8;
    u_xlat6.x = dot(vec3<f32>(x_3935.x, x_3935.y, x_3935.z), vec3<f32>(x_3937.x, x_3937.y, x_3937.z));
    let x_3942 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_3942, 1.17549435e-38f);
    let x_3946 : f32 = u_xlat6.x;
    u_xlat6.x = inverseSqrt(x_3946);
    let x_3949 : vec4<f32> = u_xlat6;
    let x_3951 : vec4<f32> = u_xlat8;
    let x_3953 : vec3<f32> = (vec3<f32>(x_3949.x, x_3949.x, x_3949.x) * vec3<f32>(x_3951.x, x_3951.y, x_3951.z));
    let x_3954 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3953.x, x_3953.y, x_3953.z, x_3954.w);
    let x_3956 : vec3<f32> = u_xlat2;
    let x_3957 : vec4<f32> = u_xlat8;
    u_xlat6.x = dot(x_3956, vec3<f32>(x_3957.x, x_3957.y, x_3957.z));
    let x_3962 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_3962, 0.0f, 1.0f);
    let x_3965 : vec4<f32> = u_xlat9;
    let x_3967 : vec4<f32> = u_xlat8;
    u_xlat82 = dot(vec3<f32>(x_3965.x, x_3965.y, x_3965.z), vec3<f32>(x_3967.x, x_3967.y, x_3967.z));
    let x_3970 : f32 = u_xlat82;
    u_xlat82 = clamp(x_3970, 0.0f, 1.0f);
    let x_3973 : f32 = u_xlat6.x;
    let x_3975 : f32 = u_xlat6.x;
    u_xlat6.x = (x_3973 * x_3975);
    let x_3979 : f32 = u_xlat6.x;
    let x_3981 : f32 = u_xlat0.x;
    u_xlat6.x = ((x_3979 * x_3981) + 1.00001001358032226562f);
    let x_3985 : f32 = u_xlat82;
    let x_3986 : f32 = u_xlat82;
    u_xlat82 = (x_3985 * x_3986);
    let x_3989 : f32 = u_xlat6.x;
    let x_3991 : f32 = u_xlat6.x;
    u_xlat6.x = (x_3989 * x_3991);
    let x_3994 : f32 = u_xlat82;
    u_xlat82 = max(x_3994, 0.10000000149011611938f);
    let x_3997 : f32 = u_xlat6.x;
    let x_3998 : f32 = u_xlat82;
    u_xlat6.x = (x_3997 * x_3998);
    let x_4001 : f32 = u_xlat79;
    let x_4003 : f32 = u_xlat6.x;
    u_xlat6.x = (x_4001 * x_4003);
    let x_4006 : f32 = u_xlat77;
    let x_4008 : f32 = u_xlat6.x;
    u_xlat6.x = (x_4006 / x_4008);
    let x_4011 : vec4<f32> = u_xlat5;
    let x_4013 : vec4<f32> = u_xlat6;
    let x_4016 : vec4<f32> = u_xlat4;
    let x_4018 : vec3<f32> = ((vec3<f32>(x_4011.x, x_4011.y, x_4011.z) * vec3<f32>(x_4013.x, x_4013.x, x_4013.x)) + vec3<f32>(x_4016.x, x_4016.y, x_4016.z));
    let x_4019 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4018.x, x_4018.y, x_4018.z, x_4019.w);
    let x_4021 : vec4<f32> = u_xlat8;
    let x_4023 : vec4<f32> = u_xlat10;
    let x_4026 : vec4<f32> = u_xlat7;
    let x_4028 : vec3<f32> = ((vec3<f32>(x_4021.x, x_4021.y, x_4021.z) * vec3<f32>(x_4023.x, x_4023.y, x_4023.z)) + vec3<f32>(x_4026.x, x_4026.y, x_4026.z));
    let x_4029 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_4028.x, x_4028.y, x_4028.z, x_4029.w);

    continuing {
      let x_4031 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4031 + bitcast<u32>(1i));
    }
  }
  let x_4033 : vec4<f32> = u_xlat3;
  let x_4035 : f32 = u_xlat25;
  let x_4038 : vec3<f32> = u_xlat31;
  u_xlat0 = ((vec3<f32>(x_4033.x, x_4033.y, x_4033.z) * vec3<f32>(x_4035, x_4035, x_4035)) + x_4038);
  let x_4040 : vec4<f32> = u_xlat7;
  let x_4042 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4040.x, x_4040.y, x_4040.z) + x_4042);
  let x_4044 : f32 = u_xlat75;
  let x_4046 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4044, x_4044, x_4044) * x_4046);
  let x_4048 : f32 = u_xlat76;
  let x_4049 : f32 = u_xlat76;
  u_xlat75 = (x_4048 * -(x_4049));
  let x_4052 : f32 = u_xlat75;
  u_xlat75 = exp2(x_4052);
  let x_4056 : vec3<f32> = u_xlat0;
  let x_4057 : f32 = u_xlat75;
  let x_4059 : vec3<f32> = (x_4056 * vec3<f32>(x_4057, x_4057, x_4057));
  let x_4060 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4059.x, x_4059.y, x_4059.z, x_4060.w);
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


