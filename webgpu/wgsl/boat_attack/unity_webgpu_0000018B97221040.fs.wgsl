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
  unity_OrthoParams : vec4<f32>,
  /* @offset(96) */
  unity_MatrixV : mat4x4<f32>,
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

@group(1) @binding(3) var<uniform> x_13 : x_Terrain;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(1) var x_Control : texture_2d<f32>;

@group(0) @binding(9) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_111 : PGlobals;

var<private> u_xlat75 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(2) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(10) var sampler_Splat0 : sampler;

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

var<private> u_xlat50 : f32;

var<private> u_xlat25 : f32;

var<private> u_xlatb1 : bool;

var<private> u_xlat26 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_590 : UnityPerDraw;

var<private> u_xlat77 : f32;

var<private> u_xlat78 : f32;

var<private> u_xlatb79 : bool;

@group(1) @binding(4) var<uniform> x_733 : LightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_LinearClampCompare : sampler_comparison;

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

var<private> u_xlatb6 : bool;

var<private> u_xlat81 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu50 : u32;

var<private> u_xlatu80 : u32;

var<private> u_xlati81 : i32;

var<private> u_xlati80 : i32;

@group(1) @binding(1) var<uniform> x_2388 : AdditionalLights;

var<private> u_xlat82 : f32;

var<private> u_xlat83 : f32;

var<private> u_xlati83 : i32;

var<private> u_xlatb84 : bool;

var<private> u_xlatb10 : vec4<bool>;

var<private> u_xlat85 : f32;

var<private> u_xlat35 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlatb83 : bool;

@group(0) @binding(7) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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
  var x_537 : f32;
  var x_548 : f32;
  var x_560 : f32;
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
  var x_2526 : f32;
  var x_2536 : f32;
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
  let x_277 : f32 = u_xlat76;
  u_xlat76 = (x_277 + 0.00006103515625f);
  let x_280 : vec4<f32> = u_xlat4;
  let x_281 : f32 = u_xlat76;
  u_xlat4 = (x_280 / vec4<f32>(x_281, x_281, x_281, x_281));
  let x_284 : vec4<f32> = u_xlat4;
  let x_287 : vec4<f32> = x_13.x_DiffuseRemapScale0;
  let x_289 : vec3<f32> = (vec3<f32>(x_284.x, x_284.x, x_284.x) * vec3<f32>(x_287.x, x_287.y, x_287.z));
  let x_290 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_289.x, x_289.y, x_289.z, x_290.w);
  let x_292 : vec4<f32> = u_xlat4;
  let x_295 : vec4<f32> = x_13.x_DiffuseRemapScale1;
  let x_297 : vec3<f32> = (vec3<f32>(x_292.y, x_292.y, x_292.y) * vec3<f32>(x_295.x, x_295.y, x_295.z));
  let x_298 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_297.x, x_297.y, x_297.z, x_298.w);
  let x_300 : vec4<f32> = u_xlat6;
  let x_302 : vec4<f32> = u_xlat12;
  let x_304 : vec3<f32> = (vec3<f32>(x_300.x, x_300.y, x_300.z) * vec3<f32>(x_302.x, x_302.y, x_302.z));
  let x_305 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_304.x, x_304.y, x_304.z, x_305.w);
  let x_307 : vec4<f32> = u_xlat5;
  let x_309 : vec4<f32> = u_xlat11;
  let x_312 : vec4<f32> = u_xlat6;
  let x_314 : vec3<f32> = ((vec3<f32>(x_307.x, x_307.y, x_307.z) * vec3<f32>(x_309.x, x_309.y, x_309.z)) + vec3<f32>(x_312.x, x_312.y, x_312.z));
  let x_315 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_314.x, x_314.y, x_314.z, x_315.w);
  let x_317 : vec4<f32> = u_xlat4;
  let x_320 : vec4<f32> = x_13.x_DiffuseRemapScale2;
  let x_322 : vec3<f32> = (vec3<f32>(x_317.z, x_317.z, x_317.z) * vec3<f32>(x_320.x, x_320.y, x_320.z));
  let x_323 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323.w);
  let x_325 : vec4<f32> = u_xlat7;
  let x_327 : vec4<f32> = u_xlat6;
  let x_330 : vec4<f32> = u_xlat5;
  let x_332 : vec3<f32> = ((vec3<f32>(x_325.x, x_325.y, x_325.z) * vec3<f32>(x_327.x, x_327.y, x_327.z)) + vec3<f32>(x_330.x, x_330.y, x_330.z));
  let x_333 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_332.x, x_332.y, x_332.z, x_333.w);
  let x_335 : vec4<f32> = u_xlat4;
  let x_338 : vec4<f32> = x_13.x_DiffuseRemapScale3;
  let x_340 : vec3<f32> = (vec3<f32>(x_335.w, x_335.w, x_335.w) * vec3<f32>(x_338.x, x_338.y, x_338.z));
  let x_341 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_340.x, x_340.y, x_340.z, x_341.w);
  let x_343 : vec4<f32> = u_xlat8;
  let x_345 : vec4<f32> = u_xlat6;
  let x_348 : vec4<f32> = u_xlat5;
  let x_350 : vec3<f32> = ((vec3<f32>(x_343.x, x_343.y, x_343.z) * vec3<f32>(x_345.x, x_345.y, x_345.z)) + vec3<f32>(x_348.x, x_348.y, x_348.z));
  let x_351 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_350.x, x_350.y, x_350.z, x_351.w);
  let x_354 : f32 = x_13.x_MaskMapRemapScale0.y;
  u_xlat6.x = x_354;
  let x_357 : f32 = x_13.x_MaskMapRemapScale1.y;
  u_xlat6.y = x_357;
  let x_360 : f32 = x_13.x_MaskMapRemapScale2.y;
  u_xlat6.z = x_360;
  let x_363 : f32 = x_13.x_MaskMapRemapScale3.y;
  u_xlat6.w = x_363;
  let x_366 : f32 = x_13.x_MaskMapRemapOffset0.y;
  u_xlat7.x = x_366;
  let x_369 : f32 = x_13.x_MaskMapRemapOffset1.y;
  u_xlat7.y = x_369;
  let x_372 : f32 = x_13.x_MaskMapRemapOffset2.y;
  u_xlat7.z = x_372;
  let x_375 : f32 = x_13.x_MaskMapRemapOffset3.y;
  u_xlat7.w = x_375;
  let x_377 : vec4<f32> = u_xlat6;
  let x_378 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_377 + x_378);
  let x_381 : f32 = u_xlat0.z;
  u_xlat7.x = x_381;
  let x_384 : f32 = u_xlat1.z;
  u_xlat7.y = x_384;
  let x_387 : f32 = u_xlat2.z;
  u_xlat7.z = x_387;
  let x_390 : f32 = u_xlat3.y;
  u_xlat7.w = x_390;
  let x_392 : vec4<f32> = u_xlat9;
  let x_395 : f32 = x_13.x_Smoothness0;
  let x_397 : f32 = x_13.x_Smoothness1;
  let x_399 : f32 = x_13.x_Smoothness2;
  let x_401 : f32 = x_13.x_Smoothness3;
  let x_404 : vec4<f32> = u_xlat7;
  u_xlat7 = ((-(x_392) * vec4<f32>(x_395, x_397, x_399, x_401)) + x_404);
  let x_408 : f32 = x_13.x_LayerHasMask0;
  let x_411 : f32 = x_13.x_LayerHasMask1;
  let x_414 : f32 = x_13.x_LayerHasMask2;
  let x_417 : f32 = x_13.x_LayerHasMask3;
  let x_419 : vec4<f32> = u_xlat7;
  let x_421 : vec4<f32> = u_xlat10;
  u_xlat7 = ((vec4<f32>(x_408, x_411, x_414, x_417) * x_419) + x_421);
  let x_424 : vec4<f32> = u_xlat4;
  let x_425 : vec4<f32> = u_xlat7;
  u_xlat50 = dot(x_424, x_425);
  let x_428 : f32 = u_xlat0.x;
  u_xlat7.x = x_428;
  let x_431 : f32 = u_xlat1.x;
  u_xlat7.y = x_431;
  let x_434 : f32 = u_xlat2.x;
  u_xlat7.z = x_434;
  let x_437 : f32 = u_xlat3.x;
  u_xlat7.w = x_437;
  let x_439 : vec4<f32> = u_xlat7;
  let x_442 : f32 = x_13.x_Metallic0;
  let x_445 : f32 = x_13.x_Metallic1;
  let x_448 : f32 = x_13.x_Metallic2;
  let x_451 : f32 = x_13.x_Metallic3;
  u_xlat7 = (x_439 + -(vec4<f32>(x_442, x_445, x_448, x_451)));
  let x_456 : f32 = x_13.x_LayerHasMask0;
  let x_458 : f32 = x_13.x_LayerHasMask1;
  let x_460 : f32 = x_13.x_LayerHasMask2;
  let x_462 : f32 = x_13.x_LayerHasMask3;
  let x_464 : vec4<f32> = u_xlat7;
  let x_467 : f32 = x_13.x_Metallic0;
  let x_469 : f32 = x_13.x_Metallic1;
  let x_471 : f32 = x_13.x_Metallic2;
  let x_473 : f32 = x_13.x_Metallic3;
  u_xlat7 = ((vec4<f32>(x_456, x_458, x_460, x_462) * x_464) + vec4<f32>(x_467, x_469, x_471, x_473));
  let x_476 : vec4<f32> = u_xlat4;
  let x_477 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_476, x_477);
  let x_481 : f32 = u_xlat0.y;
  u_xlat3.x = x_481;
  let x_484 : f32 = u_xlat1.y;
  u_xlat3.y = x_484;
  let x_487 : f32 = u_xlat2.y;
  u_xlat3.z = x_487;
  let x_489 : vec4<f32> = u_xlat6;
  let x_491 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_489) + x_491);
  let x_494 : f32 = x_13.x_LayerHasMask0;
  let x_496 : f32 = x_13.x_LayerHasMask1;
  let x_498 : f32 = x_13.x_LayerHasMask2;
  let x_500 : f32 = x_13.x_LayerHasMask3;
  let x_502 : vec4<f32> = u_xlat1;
  let x_504 : vec4<f32> = u_xlat6;
  u_xlat1 = ((vec4<f32>(x_494, x_496, x_498, x_500) * x_502) + x_504);
  let x_507 : vec4<f32> = u_xlat4;
  let x_508 : vec4<f32> = u_xlat1;
  u_xlat25 = dot(x_507, x_508);
  let x_512 : f32 = x_111.unity_OrthoParams.w;
  u_xlatb1 = (x_512 == 0.0f);
  let x_517 : vec3<f32> = vs_TEXCOORD7;
  let x_521 : vec3<f32> = x_111.x_WorldSpaceCameraPos;
  u_xlat26 = (-(x_517) + x_521);
  let x_523 : vec3<f32> = u_xlat26;
  let x_524 : vec3<f32> = u_xlat26;
  u_xlat2.x = dot(x_523, x_524);
  let x_528 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_528);
  let x_531 : vec3<f32> = u_xlat26;
  let x_532 : vec3<f32> = u_xlat2;
  u_xlat26 = (x_531 * vec3<f32>(x_532.x, x_532.x, x_532.x));
  let x_535 : bool = u_xlatb1;
  if (x_535) {
    let x_541 : f32 = u_xlat26.x;
    x_537 = x_541;
  } else {
    let x_544 : f32 = x_111.unity_MatrixV[0i].z;
    x_537 = x_544;
  }
  let x_545 : f32 = x_537;
  u_xlat2.x = x_545;
  let x_547 : bool = u_xlatb1;
  if (x_547) {
    let x_552 : f32 = u_xlat26.y;
    x_548 = x_552;
  } else {
    let x_556 : f32 = x_111.unity_MatrixV[1i].z;
    x_548 = x_556;
  }
  let x_557 : f32 = x_548;
  u_xlat2.y = x_557;
  let x_559 : bool = u_xlatb1;
  if (x_559) {
    let x_564 : f32 = u_xlat26.z;
    x_560 = x_564;
  } else {
    let x_568 : f32 = x_111.unity_MatrixV[2i].z;
    x_560 = x_568;
  }
  let x_569 : f32 = x_560;
  u_xlat2.z = x_569;
  let x_572 : vec3<f32> = vs_TEXCOORD3;
  let x_573 : vec3<f32> = vs_TEXCOORD3;
  u_xlat1.x = dot(x_572, x_573);
  let x_577 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_577);
  let x_580 : vec4<f32> = u_xlat1;
  let x_582 : vec3<f32> = vs_TEXCOORD3;
  let x_583 : vec3<f32> = (vec3<f32>(x_580.x, x_580.x, x_580.x) * x_582);
  let x_584 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_583.x, x_583.y, x_583.z, x_584.w);
  u_xlat1.w = 1.0f;
  let x_592 : vec4<f32> = x_590.unity_SHAr;
  let x_593 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_592, x_593);
  let x_597 : vec4<f32> = x_590.unity_SHAg;
  let x_598 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_597, x_598);
  let x_602 : vec4<f32> = x_590.unity_SHAb;
  let x_603 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_602, x_603);
  let x_606 : vec4<f32> = u_xlat1;
  let x_608 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_606.y, x_606.z, x_606.z, x_606.x) * vec4<f32>(x_608.x, x_608.y, x_608.z, x_608.z));
  let x_612 : vec4<f32> = x_590.unity_SHBr;
  let x_613 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_612, x_613);
  let x_617 : vec4<f32> = x_590.unity_SHBg;
  let x_618 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_617, x_618);
  let x_622 : vec4<f32> = x_590.unity_SHBb;
  let x_623 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_622, x_623);
  let x_627 : f32 = u_xlat1.y;
  let x_629 : f32 = u_xlat1.y;
  u_xlat76 = (x_627 * x_629);
  let x_632 : f32 = u_xlat1.x;
  let x_634 : f32 = u_xlat1.x;
  let x_636 : f32 = u_xlat76;
  u_xlat76 = ((x_632 * x_634) + -(x_636));
  let x_641 : vec4<f32> = x_590.unity_SHC;
  let x_643 : f32 = u_xlat76;
  let x_646 : vec4<f32> = u_xlat6;
  let x_648 : vec3<f32> = ((vec3<f32>(x_641.x, x_641.y, x_641.z) * vec3<f32>(x_643, x_643, x_643)) + vec3<f32>(x_646.x, x_646.y, x_646.z));
  let x_649 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_648.x, x_648.y, x_648.z, x_649.w);
  let x_651 : vec4<f32> = u_xlat3;
  let x_653 : vec4<f32> = u_xlat4;
  let x_655 : vec3<f32> = (vec3<f32>(x_651.x, x_651.y, x_651.z) + vec3<f32>(x_653.x, x_653.y, x_653.z));
  let x_656 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_655.x, x_655.y, x_655.z, x_656.w);
  let x_658 : vec4<f32> = u_xlat3;
  let x_661 : vec3<f32> = max(vec3<f32>(x_658.x, x_658.y, x_658.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_662 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_661.x, x_661.y, x_661.z, x_662.w);
  let x_665 : f32 = u_xlat0.x;
  u_xlat76 = ((-(x_665) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_671 : f32 = u_xlat50;
  let x_672 : f32 = u_xlat76;
  u_xlat77 = (x_671 + -(x_672));
  let x_675 : f32 = u_xlat76;
  let x_677 : vec4<f32> = u_xlat5;
  let x_679 : vec3<f32> = (vec3<f32>(x_675, x_675, x_675) * vec3<f32>(x_677.x, x_677.y, x_677.z));
  let x_680 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_679.x, x_679.y, x_679.z, x_680.w);
  let x_682 : vec4<f32> = u_xlat5;
  let x_686 : vec3<f32> = (vec3<f32>(x_682.x, x_682.y, x_682.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_687 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_686.x, x_686.y, x_686.z, x_687.w);
  let x_689 : vec3<f32> = u_xlat0;
  let x_691 : vec4<f32> = u_xlat5;
  let x_696 : vec3<f32> = ((vec3<f32>(x_689.x, x_689.x, x_689.x) * vec3<f32>(x_691.x, x_691.y, x_691.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_697 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_696.x, x_696.y, x_696.z, x_697.w);
  let x_699 : f32 = u_xlat50;
  u_xlat0.x = (-(x_699) + 1.0f);
  let x_704 : f32 = u_xlat0.x;
  let x_706 : f32 = u_xlat0.x;
  u_xlat50 = (x_704 * x_706);
  let x_708 : f32 = u_xlat50;
  u_xlat50 = max(x_708, 0.0078125f);
  let x_711 : f32 = u_xlat50;
  let x_712 : f32 = u_xlat50;
  u_xlat76 = (x_711 * x_712);
  let x_714 : f32 = u_xlat77;
  u_xlat77 = (x_714 + 1.0f);
  let x_716 : f32 = u_xlat77;
  u_xlat77 = clamp(x_716, 0.0f, 1.0f);
  let x_719 : f32 = u_xlat50;
  u_xlat78 = ((x_719 * 4.0f) + 2.0f);
  let x_723 : f32 = u_xlat25;
  u_xlat25 = min(x_723, 1.0f);
  let x_735 : f32 = x_733.x_MainLightShadowParams.y;
  u_xlatb79 = (0.0f < x_735);
  let x_737 : bool = u_xlatb79;
  if (x_737) {
    let x_741 : f32 = x_733.x_MainLightShadowParams.y;
    u_xlatb79 = (x_741 == 1.0f);
    let x_743 : bool = u_xlatb79;
    if (x_743) {
      let x_747 : vec4<f32> = vs_TEXCOORD8;
      let x_750 : vec4<f32> = x_733.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_747.x, x_747.y, x_747.x, x_747.y) + x_750);
      let x_754 : vec4<f32> = u_xlat6;
      let x_755 : vec2<f32> = vec2<f32>(x_754.x, x_754.y);
      let x_758 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_755.x, x_755.y, x_758);
      let x_770 : vec3<f32> = txVec0;
      let x_772 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_770.xy, x_770.z);
      u_xlat7.x = x_772;
      let x_775 : vec4<f32> = u_xlat6;
      let x_776 : vec2<f32> = vec2<f32>(x_775.z, x_775.w);
      let x_778 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_776.x, x_776.y, x_778);
      let x_785 : vec3<f32> = txVec1;
      let x_787 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_785.xy, x_785.z);
      u_xlat7.y = x_787;
      let x_789 : vec4<f32> = vs_TEXCOORD8;
      let x_792 : vec4<f32> = x_733.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_789.x, x_789.y, x_789.x, x_789.y) + x_792);
      let x_795 : vec4<f32> = u_xlat6;
      let x_796 : vec2<f32> = vec2<f32>(x_795.x, x_795.y);
      let x_798 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_796.x, x_796.y, x_798);
      let x_805 : vec3<f32> = txVec2;
      let x_807 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_805.xy, x_805.z);
      u_xlat7.z = x_807;
      let x_810 : vec4<f32> = u_xlat6;
      let x_811 : vec2<f32> = vec2<f32>(x_810.z, x_810.w);
      let x_813 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_811.x, x_811.y, x_813);
      let x_820 : vec3<f32> = txVec3;
      let x_822 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_820.xy, x_820.z);
      u_xlat7.w = x_822;
      let x_825 : vec4<f32> = u_xlat7;
      u_xlat79 = dot(x_825, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_832 : f32 = x_733.x_MainLightShadowParams.y;
      u_xlatb80 = (x_832 == 2.0f);
      let x_834 : bool = u_xlatb80;
      if (x_834) {
        let x_837 : vec4<f32> = vs_TEXCOORD8;
        let x_840 : vec4<f32> = x_733.x_MainLightShadowmapSize;
        let x_843 : vec2<f32> = ((vec2<f32>(x_837.x, x_837.y) * vec2<f32>(x_840.z, x_840.w)) + vec2<f32>(0.5f, 0.5f));
        let x_844 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_843.x, x_843.y, x_844.z, x_844.w);
        let x_846 : vec4<f32> = u_xlat6;
        let x_848 : vec2<f32> = floor(vec2<f32>(x_846.x, x_846.y));
        let x_849 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_848.x, x_848.y, x_849.z, x_849.w);
        let x_853 : vec4<f32> = vs_TEXCOORD8;
        let x_856 : vec4<f32> = x_733.x_MainLightShadowmapSize;
        let x_859 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_853.x, x_853.y) * vec2<f32>(x_856.z, x_856.w)) + -(vec2<f32>(x_859.x, x_859.y)));
        let x_863 : vec2<f32> = u_xlat56;
        u_xlat7 = (vec4<f32>(x_863.x, x_863.x, x_863.y, x_863.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_867 : vec4<f32> = u_xlat7;
        let x_869 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_867.x, x_867.x, x_867.z, x_867.z) * vec4<f32>(x_869.x, x_869.x, x_869.z, x_869.z));
        let x_872 : vec4<f32> = u_xlat8;
        let x_876 : vec2<f32> = (vec2<f32>(x_872.y, x_872.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_877 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_876.x, x_877.y, x_876.y, x_877.w);
        let x_879 : vec4<f32> = u_xlat8;
        let x_882 : vec2<f32> = u_xlat56;
        let x_884 : vec2<f32> = ((vec2<f32>(x_879.x, x_879.z) * vec2<f32>(0.5f, 0.5f)) + -(x_882));
        let x_885 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_884.x, x_884.y, x_885.z, x_885.w);
        let x_888 : vec2<f32> = u_xlat56;
        u_xlat58 = (-(x_888) + vec2<f32>(1.0f, 1.0f));
        let x_892 : vec2<f32> = u_xlat56;
        let x_894 : vec2<f32> = min(x_892, vec2<f32>(0.0f, 0.0f));
        let x_895 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_894.x, x_894.y, x_895.z, x_895.w);
        let x_897 : vec4<f32> = u_xlat9;
        let x_900 : vec4<f32> = u_xlat9;
        let x_903 : vec2<f32> = u_xlat58;
        let x_904 : vec2<f32> = ((-(vec2<f32>(x_897.x, x_897.y)) * vec2<f32>(x_900.x, x_900.y)) + x_903);
        let x_905 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_904.x, x_904.y, x_905.z, x_905.w);
        let x_907 : vec2<f32> = u_xlat56;
        u_xlat56 = max(x_907, vec2<f32>(0.0f, 0.0f));
        let x_909 : vec2<f32> = u_xlat56;
        let x_911 : vec2<f32> = u_xlat56;
        let x_913 : vec4<f32> = u_xlat7;
        u_xlat56 = ((-(x_909) * x_911) + vec2<f32>(x_913.y, x_913.w));
        let x_916 : vec4<f32> = u_xlat9;
        let x_918 : vec2<f32> = (vec2<f32>(x_916.x, x_916.y) + vec2<f32>(1.0f, 1.0f));
        let x_919 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_918.x, x_918.y, x_919.z, x_919.w);
        let x_921 : vec2<f32> = u_xlat56;
        u_xlat56 = (x_921 + vec2<f32>(1.0f, 1.0f));
        let x_923 : vec4<f32> = u_xlat8;
        let x_927 : vec2<f32> = (vec2<f32>(x_923.x, x_923.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_928 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_927.x, x_927.y, x_928.z, x_928.w);
        let x_930 : vec2<f32> = u_xlat58;
        let x_931 : vec2<f32> = (x_930 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_932 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_931.x, x_931.y, x_932.z, x_932.w);
        let x_934 : vec4<f32> = u_xlat9;
        let x_936 : vec2<f32> = (vec2<f32>(x_934.x, x_934.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_937 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_936.x, x_936.y, x_937.z, x_937.w);
        let x_939 : vec2<f32> = u_xlat56;
        let x_940 : vec2<f32> = (x_939 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_941 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_940.x, x_940.y, x_941.z, x_941.w);
        let x_943 : vec4<f32> = u_xlat7;
        u_xlat56 = (vec2<f32>(x_943.y, x_943.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_947 : f32 = u_xlat9.x;
        u_xlat10.z = x_947;
        let x_950 : f32 = u_xlat56.x;
        u_xlat10.w = x_950;
        let x_953 : f32 = u_xlat11.x;
        u_xlat8.z = x_953;
        let x_956 : f32 = u_xlat7.x;
        u_xlat8.w = x_956;
        let x_958 : vec4<f32> = u_xlat8;
        let x_960 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_958.z, x_958.w, x_958.x, x_958.z) + vec4<f32>(x_960.z, x_960.w, x_960.x, x_960.z));
        let x_964 : f32 = u_xlat10.y;
        u_xlat9.z = x_964;
        let x_967 : f32 = u_xlat56.y;
        u_xlat9.w = x_967;
        let x_970 : f32 = u_xlat8.y;
        u_xlat11.z = x_970;
        let x_973 : f32 = u_xlat7.z;
        u_xlat11.w = x_973;
        let x_975 : vec4<f32> = u_xlat9;
        let x_977 : vec4<f32> = u_xlat11;
        let x_979 : vec3<f32> = (vec3<f32>(x_975.z, x_975.y, x_975.w) + vec3<f32>(x_977.z, x_977.y, x_977.w));
        let x_980 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_979.x, x_979.y, x_979.z, x_980.w);
        let x_982 : vec4<f32> = u_xlat8;
        let x_984 : vec4<f32> = u_xlat12;
        let x_986 : vec3<f32> = (vec3<f32>(x_982.x, x_982.z, x_982.w) / vec3<f32>(x_984.z, x_984.w, x_984.y));
        let x_987 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_986.x, x_986.y, x_986.z, x_987.w);
        let x_989 : vec4<f32> = u_xlat8;
        let x_995 : vec3<f32> = (vec3<f32>(x_989.x, x_989.y, x_989.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_996 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_995.x, x_995.y, x_995.z, x_996.w);
        let x_998 : vec4<f32> = u_xlat11;
        let x_1000 : vec4<f32> = u_xlat7;
        let x_1002 : vec3<f32> = (vec3<f32>(x_998.z, x_998.y, x_998.w) / vec3<f32>(x_1000.x, x_1000.y, x_1000.z));
        let x_1003 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1002.x, x_1002.y, x_1002.z, x_1003.w);
        let x_1005 : vec4<f32> = u_xlat9;
        let x_1007 : vec3<f32> = (vec3<f32>(x_1005.x, x_1005.y, x_1005.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1008 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1007.x, x_1007.y, x_1007.z, x_1008.w);
        let x_1010 : vec4<f32> = u_xlat8;
        let x_1013 : vec4<f32> = x_733.x_MainLightShadowmapSize;
        let x_1015 : vec3<f32> = (vec3<f32>(x_1010.y, x_1010.x, x_1010.z) * vec3<f32>(x_1013.x, x_1013.x, x_1013.x));
        let x_1016 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1015.x, x_1015.y, x_1015.z, x_1016.w);
        let x_1018 : vec4<f32> = u_xlat9;
        let x_1021 : vec4<f32> = x_733.x_MainLightShadowmapSize;
        let x_1023 : vec3<f32> = (vec3<f32>(x_1018.x, x_1018.y, x_1018.z) * vec3<f32>(x_1021.y, x_1021.y, x_1021.y));
        let x_1024 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1023.x, x_1023.y, x_1023.z, x_1024.w);
        let x_1027 : f32 = u_xlat9.x;
        u_xlat8.w = x_1027;
        let x_1029 : vec4<f32> = u_xlat6;
        let x_1032 : vec4<f32> = x_733.x_MainLightShadowmapSize;
        let x_1035 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1029.x, x_1029.y, x_1029.x, x_1029.y) * vec4<f32>(x_1032.x, x_1032.y, x_1032.x, x_1032.y)) + vec4<f32>(x_1035.y, x_1035.w, x_1035.x, x_1035.w));
        let x_1038 : vec4<f32> = u_xlat6;
        let x_1041 : vec4<f32> = x_733.x_MainLightShadowmapSize;
        let x_1044 : vec4<f32> = u_xlat8;
        u_xlat56 = ((vec2<f32>(x_1038.x, x_1038.y) * vec2<f32>(x_1041.x, x_1041.y)) + vec2<f32>(x_1044.z, x_1044.w));
        let x_1048 : f32 = u_xlat8.y;
        u_xlat9.w = x_1048;
        let x_1050 : vec4<f32> = u_xlat9;
        let x_1051 : vec2<f32> = vec2<f32>(x_1050.y, x_1050.z);
        let x_1052 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1052.x, x_1051.x, x_1052.z, x_1051.y);
        let x_1054 : vec4<f32> = u_xlat6;
        let x_1057 : vec4<f32> = x_733.x_MainLightShadowmapSize;
        let x_1060 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1054.x, x_1054.y, x_1054.x, x_1054.y) * vec4<f32>(x_1057.x, x_1057.y, x_1057.x, x_1057.y)) + vec4<f32>(x_1060.x, x_1060.y, x_1060.z, x_1060.y));
        let x_1063 : vec4<f32> = u_xlat6;
        let x_1066 : vec4<f32> = x_733.x_MainLightShadowmapSize;
        let x_1069 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1063.x, x_1063.y, x_1063.x, x_1063.y) * vec4<f32>(x_1066.x, x_1066.y, x_1066.x, x_1066.y)) + vec4<f32>(x_1069.w, x_1069.y, x_1069.w, x_1069.z));
        let x_1072 : vec4<f32> = u_xlat6;
        let x_1075 : vec4<f32> = x_733.x_MainLightShadowmapSize;
        let x_1078 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1072.x, x_1072.y, x_1072.x, x_1072.y) * vec4<f32>(x_1075.x, x_1075.y, x_1075.x, x_1075.y)) + vec4<f32>(x_1078.x, x_1078.w, x_1078.z, x_1078.w));
        let x_1081 : vec4<f32> = u_xlat7;
        let x_1083 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_1081.x, x_1081.x, x_1081.x, x_1081.y) * vec4<f32>(x_1083.z, x_1083.w, x_1083.y, x_1083.z));
        let x_1087 : vec4<f32> = u_xlat7;
        let x_1089 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_1087.y, x_1087.y, x_1087.z, x_1087.z) * x_1089);
        let x_1093 : f32 = u_xlat7.z;
        let x_1095 : f32 = u_xlat12.y;
        u_xlat80 = (x_1093 * x_1095);
        let x_1098 : vec4<f32> = u_xlat10;
        let x_1099 : vec2<f32> = vec2<f32>(x_1098.x, x_1098.y);
        let x_1101 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_1099.x, x_1099.y, x_1101);
        let x_1108 : vec3<f32> = txVec4;
        let x_1110 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1108.xy, x_1108.z);
        u_xlat6.x = x_1110;
        let x_1113 : vec4<f32> = u_xlat10;
        let x_1114 : vec2<f32> = vec2<f32>(x_1113.z, x_1113.w);
        let x_1116 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_1114.x, x_1114.y, x_1116);
        let x_1124 : vec3<f32> = txVec5;
        let x_1126 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1124.xy, x_1124.z);
        u_xlat31 = x_1126;
        let x_1127 : f32 = u_xlat31;
        let x_1129 : f32 = u_xlat13.y;
        u_xlat31 = (x_1127 * x_1129);
        let x_1132 : f32 = u_xlat13.x;
        let x_1134 : f32 = u_xlat6.x;
        let x_1136 : f32 = u_xlat31;
        u_xlat6.x = ((x_1132 * x_1134) + x_1136);
        let x_1140 : vec2<f32> = u_xlat56;
        let x_1142 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_1140.x, x_1140.y, x_1142);
        let x_1149 : vec3<f32> = txVec6;
        let x_1151 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1149.xy, x_1149.z);
        u_xlat31 = x_1151;
        let x_1153 : f32 = u_xlat13.z;
        let x_1154 : f32 = u_xlat31;
        let x_1157 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1153 * x_1154) + x_1157);
        let x_1161 : vec4<f32> = u_xlat9;
        let x_1162 : vec2<f32> = vec2<f32>(x_1161.x, x_1161.y);
        let x_1164 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_1162.x, x_1162.y, x_1164);
        let x_1171 : vec3<f32> = txVec7;
        let x_1173 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1171.xy, x_1171.z);
        u_xlat31 = x_1173;
        let x_1175 : f32 = u_xlat13.w;
        let x_1176 : f32 = u_xlat31;
        let x_1179 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1175 * x_1176) + x_1179);
        let x_1183 : vec4<f32> = u_xlat11;
        let x_1184 : vec2<f32> = vec2<f32>(x_1183.x, x_1183.y);
        let x_1186 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_1184.x, x_1184.y, x_1186);
        let x_1193 : vec3<f32> = txVec8;
        let x_1195 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1193.xy, x_1193.z);
        u_xlat31 = x_1195;
        let x_1197 : f32 = u_xlat14.x;
        let x_1198 : f32 = u_xlat31;
        let x_1201 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1197 * x_1198) + x_1201);
        let x_1205 : vec4<f32> = u_xlat11;
        let x_1206 : vec2<f32> = vec2<f32>(x_1205.z, x_1205.w);
        let x_1208 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_1206.x, x_1206.y, x_1208);
        let x_1215 : vec3<f32> = txVec9;
        let x_1217 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1215.xy, x_1215.z);
        u_xlat31 = x_1217;
        let x_1219 : f32 = u_xlat14.y;
        let x_1220 : f32 = u_xlat31;
        let x_1223 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1219 * x_1220) + x_1223);
        let x_1227 : vec4<f32> = u_xlat9;
        let x_1228 : vec2<f32> = vec2<f32>(x_1227.z, x_1227.w);
        let x_1230 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_1228.x, x_1228.y, x_1230);
        let x_1237 : vec3<f32> = txVec10;
        let x_1239 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1237.xy, x_1237.z);
        u_xlat31 = x_1239;
        let x_1241 : f32 = u_xlat14.z;
        let x_1242 : f32 = u_xlat31;
        let x_1245 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1241 * x_1242) + x_1245);
        let x_1249 : vec4<f32> = u_xlat8;
        let x_1250 : vec2<f32> = vec2<f32>(x_1249.x, x_1249.y);
        let x_1252 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_1250.x, x_1250.y, x_1252);
        let x_1259 : vec3<f32> = txVec11;
        let x_1261 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1259.xy, x_1259.z);
        u_xlat31 = x_1261;
        let x_1263 : f32 = u_xlat14.w;
        let x_1264 : f32 = u_xlat31;
        let x_1267 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1263 * x_1264) + x_1267);
        let x_1271 : vec4<f32> = u_xlat8;
        let x_1272 : vec2<f32> = vec2<f32>(x_1271.z, x_1271.w);
        let x_1274 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_1272.x, x_1272.y, x_1274);
        let x_1281 : vec3<f32> = txVec12;
        let x_1283 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1281.xy, x_1281.z);
        u_xlat31 = x_1283;
        let x_1284 : f32 = u_xlat80;
        let x_1285 : f32 = u_xlat31;
        let x_1288 : f32 = u_xlat6.x;
        u_xlat79 = ((x_1284 * x_1285) + x_1288);
      } else {
        let x_1291 : vec4<f32> = vs_TEXCOORD8;
        let x_1294 : vec4<f32> = x_733.x_MainLightShadowmapSize;
        let x_1297 : vec2<f32> = ((vec2<f32>(x_1291.x, x_1291.y) * vec2<f32>(x_1294.z, x_1294.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1298 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1297.x, x_1297.y, x_1298.z, x_1298.w);
        let x_1300 : vec4<f32> = u_xlat6;
        let x_1302 : vec2<f32> = floor(vec2<f32>(x_1300.x, x_1300.y));
        let x_1303 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1302.x, x_1302.y, x_1303.z, x_1303.w);
        let x_1305 : vec4<f32> = vs_TEXCOORD8;
        let x_1308 : vec4<f32> = x_733.x_MainLightShadowmapSize;
        let x_1311 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_1305.x, x_1305.y) * vec2<f32>(x_1308.z, x_1308.w)) + -(vec2<f32>(x_1311.x, x_1311.y)));
        let x_1315 : vec2<f32> = u_xlat56;
        u_xlat7 = (vec4<f32>(x_1315.x, x_1315.x, x_1315.y, x_1315.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1318 : vec4<f32> = u_xlat7;
        let x_1320 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1318.x, x_1318.x, x_1318.z, x_1318.z) * vec4<f32>(x_1320.x, x_1320.x, x_1320.z, x_1320.z));
        let x_1323 : vec4<f32> = u_xlat8;
        let x_1327 : vec2<f32> = (vec2<f32>(x_1323.y, x_1323.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1328 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1328.x, x_1327.x, x_1328.z, x_1327.y);
        let x_1330 : vec4<f32> = u_xlat8;
        let x_1333 : vec2<f32> = u_xlat56;
        let x_1335 : vec2<f32> = ((vec2<f32>(x_1330.x, x_1330.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1333));
        let x_1336 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1335.x, x_1336.y, x_1335.y, x_1336.w);
        let x_1338 : vec2<f32> = u_xlat56;
        let x_1340 : vec2<f32> = (-(x_1338) + vec2<f32>(1.0f, 1.0f));
        let x_1341 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1340.x, x_1340.y, x_1341.z, x_1341.w);
        let x_1343 : vec2<f32> = u_xlat56;
        u_xlat58 = min(x_1343, vec2<f32>(0.0f, 0.0f));
        let x_1345 : vec2<f32> = u_xlat58;
        let x_1347 : vec2<f32> = u_xlat58;
        let x_1349 : vec4<f32> = u_xlat8;
        let x_1351 : vec2<f32> = ((-(x_1345) * x_1347) + vec2<f32>(x_1349.x, x_1349.y));
        let x_1352 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1351.x, x_1351.y, x_1352.z, x_1352.w);
        let x_1354 : vec2<f32> = u_xlat56;
        u_xlat58 = max(x_1354, vec2<f32>(0.0f, 0.0f));
        let x_1357 : vec2<f32> = u_xlat58;
        let x_1359 : vec2<f32> = u_xlat58;
        let x_1361 : vec4<f32> = u_xlat7;
        let x_1363 : vec2<f32> = ((-(x_1357) * x_1359) + vec2<f32>(x_1361.y, x_1361.w));
        let x_1364 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_1363.x, x_1364.y, x_1363.y);
        let x_1366 : vec4<f32> = u_xlat8;
        let x_1369 : vec2<f32> = (vec2<f32>(x_1366.x, x_1366.y) + vec2<f32>(2.0f, 2.0f));
        let x_1370 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1369.x, x_1369.y, x_1370.z, x_1370.w);
        let x_1372 : vec3<f32> = u_xlat32;
        let x_1374 : vec2<f32> = (vec2<f32>(x_1372.x, x_1372.z) + vec2<f32>(2.0f, 2.0f));
        let x_1375 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1375.x, x_1374.x, x_1375.z, x_1374.y);
        let x_1378 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1378 * 0.08163200318813323975f);
        let x_1382 : vec4<f32> = u_xlat7;
        let x_1385 : vec3<f32> = (vec3<f32>(x_1382.z, x_1382.x, x_1382.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1386 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1385.x, x_1385.y, x_1385.z, x_1386.w);
        let x_1388 : vec4<f32> = u_xlat8;
        let x_1391 : vec2<f32> = (vec2<f32>(x_1388.x, x_1388.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1392 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1391.x, x_1391.y, x_1392.z, x_1392.w);
        let x_1395 : f32 = u_xlat11.y;
        u_xlat10.x = x_1395;
        let x_1397 : vec2<f32> = u_xlat56;
        let x_1404 : vec2<f32> = ((vec2<f32>(x_1397.x, x_1397.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1405 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1405.x, x_1404.x, x_1405.z, x_1404.y);
        let x_1407 : vec2<f32> = u_xlat56;
        let x_1411 : vec2<f32> = ((vec2<f32>(x_1407.x, x_1407.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1412 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1411.x, x_1412.y, x_1411.y, x_1412.w);
        let x_1415 : f32 = u_xlat7.x;
        u_xlat8.y = x_1415;
        let x_1418 : f32 = u_xlat9.y;
        u_xlat8.w = x_1418;
        let x_1420 : vec4<f32> = u_xlat8;
        let x_1421 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1420 + x_1421);
        let x_1423 : vec2<f32> = u_xlat56;
        let x_1426 : vec2<f32> = ((vec2<f32>(x_1423.y, x_1423.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1427 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1427.x, x_1426.x, x_1427.z, x_1426.y);
        let x_1429 : vec2<f32> = u_xlat56;
        let x_1432 : vec2<f32> = ((vec2<f32>(x_1429.y, x_1429.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1433 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1432.x, x_1433.y, x_1432.y, x_1433.w);
        let x_1436 : f32 = u_xlat7.y;
        u_xlat9.y = x_1436;
        let x_1438 : vec4<f32> = u_xlat9;
        let x_1439 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1438 + x_1439);
        let x_1441 : vec4<f32> = u_xlat8;
        let x_1442 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1441 / x_1442);
        let x_1444 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1444 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1450 : vec4<f32> = u_xlat9;
        let x_1451 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1450 / x_1451);
        let x_1453 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1453 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1455 : vec4<f32> = u_xlat8;
        let x_1458 : vec4<f32> = x_733.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1455.w, x_1455.x, x_1455.y, x_1455.z) * vec4<f32>(x_1458.x, x_1458.x, x_1458.x, x_1458.x));
        let x_1461 : vec4<f32> = u_xlat9;
        let x_1464 : vec4<f32> = x_733.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1461.x, x_1461.w, x_1461.y, x_1461.z) * vec4<f32>(x_1464.y, x_1464.y, x_1464.y, x_1464.y));
        let x_1467 : vec4<f32> = u_xlat8;
        let x_1468 : vec3<f32> = vec3<f32>(x_1467.y, x_1467.z, x_1467.w);
        let x_1469 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1468.x, x_1469.y, x_1468.y, x_1468.z);
        let x_1472 : f32 = u_xlat9.x;
        u_xlat11.y = x_1472;
        let x_1474 : vec4<f32> = u_xlat6;
        let x_1477 : vec4<f32> = x_733.x_MainLightShadowmapSize;
        let x_1480 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1474.x, x_1474.y, x_1474.x, x_1474.y) * vec4<f32>(x_1477.x, x_1477.y, x_1477.x, x_1477.y)) + vec4<f32>(x_1480.x, x_1480.y, x_1480.z, x_1480.y));
        let x_1483 : vec4<f32> = u_xlat6;
        let x_1486 : vec4<f32> = x_733.x_MainLightShadowmapSize;
        let x_1489 : vec4<f32> = u_xlat11;
        u_xlat56 = ((vec2<f32>(x_1483.x, x_1483.y) * vec2<f32>(x_1486.x, x_1486.y)) + vec2<f32>(x_1489.w, x_1489.y));
        let x_1493 : f32 = u_xlat11.y;
        u_xlat8.y = x_1493;
        let x_1496 : f32 = u_xlat9.z;
        u_xlat11.y = x_1496;
        let x_1498 : vec4<f32> = u_xlat6;
        let x_1501 : vec4<f32> = x_733.x_MainLightShadowmapSize;
        let x_1504 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1498.x, x_1498.y, x_1498.x, x_1498.y) * vec4<f32>(x_1501.x, x_1501.y, x_1501.x, x_1501.y)) + vec4<f32>(x_1504.x, x_1504.y, x_1504.z, x_1504.y));
        let x_1507 : vec4<f32> = u_xlat6;
        let x_1510 : vec4<f32> = x_733.x_MainLightShadowmapSize;
        let x_1513 : vec4<f32> = u_xlat11;
        let x_1515 : vec2<f32> = ((vec2<f32>(x_1507.x, x_1507.y) * vec2<f32>(x_1510.x, x_1510.y)) + vec2<f32>(x_1513.w, x_1513.y));
        let x_1516 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1515.x, x_1515.y, x_1516.z, x_1516.w);
        let x_1519 : f32 = u_xlat11.y;
        u_xlat8.z = x_1519;
        let x_1522 : vec4<f32> = u_xlat6;
        let x_1525 : vec4<f32> = x_733.x_MainLightShadowmapSize;
        let x_1528 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1522.x, x_1522.y, x_1522.x, x_1522.y) * vec4<f32>(x_1525.x, x_1525.y, x_1525.x, x_1525.y)) + vec4<f32>(x_1528.x, x_1528.y, x_1528.x, x_1528.z));
        let x_1532 : f32 = u_xlat9.w;
        u_xlat11.y = x_1532;
        let x_1535 : vec4<f32> = u_xlat6;
        let x_1538 : vec4<f32> = x_733.x_MainLightShadowmapSize;
        let x_1541 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1535.x, x_1535.y, x_1535.x, x_1535.y) * vec4<f32>(x_1538.x, x_1538.y, x_1538.x, x_1538.y)) + vec4<f32>(x_1541.x, x_1541.y, x_1541.z, x_1541.y));
        let x_1545 : vec4<f32> = u_xlat6;
        let x_1548 : vec4<f32> = x_733.x_MainLightShadowmapSize;
        let x_1551 : vec4<f32> = u_xlat11;
        u_xlat33 = ((vec2<f32>(x_1545.x, x_1545.y) * vec2<f32>(x_1548.x, x_1548.y)) + vec2<f32>(x_1551.w, x_1551.y));
        let x_1555 : f32 = u_xlat11.y;
        u_xlat8.w = x_1555;
        let x_1558 : vec4<f32> = u_xlat6;
        let x_1561 : vec4<f32> = x_733.x_MainLightShadowmapSize;
        let x_1564 : vec4<f32> = u_xlat8;
        u_xlat64 = ((vec2<f32>(x_1558.x, x_1558.y) * vec2<f32>(x_1561.x, x_1561.y)) + vec2<f32>(x_1564.x, x_1564.w));
        let x_1567 : vec4<f32> = u_xlat11;
        let x_1568 : vec3<f32> = vec3<f32>(x_1567.x, x_1567.z, x_1567.w);
        let x_1569 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1568.x, x_1569.y, x_1568.y, x_1568.z);
        let x_1571 : vec4<f32> = u_xlat6;
        let x_1574 : vec4<f32> = x_733.x_MainLightShadowmapSize;
        let x_1577 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1571.x, x_1571.y, x_1571.x, x_1571.y) * vec4<f32>(x_1574.x, x_1574.y, x_1574.x, x_1574.y)) + vec4<f32>(x_1577.x, x_1577.y, x_1577.z, x_1577.y));
        let x_1581 : vec4<f32> = u_xlat6;
        let x_1584 : vec4<f32> = x_733.x_MainLightShadowmapSize;
        let x_1587 : vec4<f32> = u_xlat9;
        u_xlat59 = ((vec2<f32>(x_1581.x, x_1581.y) * vec2<f32>(x_1584.x, x_1584.y)) + vec2<f32>(x_1587.w, x_1587.y));
        let x_1591 : f32 = u_xlat8.x;
        u_xlat9.x = x_1591;
        let x_1593 : vec4<f32> = u_xlat6;
        let x_1596 : vec4<f32> = x_733.x_MainLightShadowmapSize;
        let x_1599 : vec4<f32> = u_xlat9;
        let x_1601 : vec2<f32> = ((vec2<f32>(x_1593.x, x_1593.y) * vec2<f32>(x_1596.x, x_1596.y)) + vec2<f32>(x_1599.x, x_1599.y));
        let x_1602 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1601.x, x_1601.y, x_1602.z, x_1602.w);
        let x_1605 : vec4<f32> = u_xlat7;
        let x_1607 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1605.x, x_1605.x, x_1605.x, x_1605.x) * x_1607);
        let x_1610 : vec4<f32> = u_xlat7;
        let x_1612 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1610.y, x_1610.y, x_1610.y, x_1610.y) * x_1612);
        let x_1615 : vec4<f32> = u_xlat7;
        let x_1617 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1615.z, x_1615.z, x_1615.z, x_1615.z) * x_1617);
        let x_1619 : vec4<f32> = u_xlat7;
        let x_1621 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1619.w, x_1619.w, x_1619.w, x_1619.w) * x_1621);
        let x_1624 : vec4<f32> = u_xlat12;
        let x_1625 : vec2<f32> = vec2<f32>(x_1624.x, x_1624.y);
        let x_1627 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1625.x, x_1625.y, x_1627);
        let x_1634 : vec3<f32> = txVec13;
        let x_1636 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1634.xy, x_1634.z);
        u_xlat80 = x_1636;
        let x_1638 : vec4<f32> = u_xlat12;
        let x_1639 : vec2<f32> = vec2<f32>(x_1638.z, x_1638.w);
        let x_1641 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1639.x, x_1639.y, x_1641);
        let x_1648 : vec3<f32> = txVec14;
        let x_1650 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1648.xy, x_1648.z);
        u_xlat8.x = x_1650;
        let x_1653 : f32 = u_xlat8.x;
        let x_1655 : f32 = u_xlat17.y;
        u_xlat8.x = (x_1653 * x_1655);
        let x_1659 : f32 = u_xlat17.x;
        let x_1660 : f32 = u_xlat80;
        let x_1663 : f32 = u_xlat8.x;
        u_xlat80 = ((x_1659 * x_1660) + x_1663);
        let x_1666 : vec2<f32> = u_xlat56;
        let x_1668 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1666.x, x_1666.y, x_1668);
        let x_1675 : vec3<f32> = txVec15;
        let x_1677 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1675.xy, x_1675.z);
        u_xlat56.x = x_1677;
        let x_1680 : f32 = u_xlat17.z;
        let x_1682 : f32 = u_xlat56.x;
        let x_1684 : f32 = u_xlat80;
        u_xlat80 = ((x_1680 * x_1682) + x_1684);
        let x_1687 : vec4<f32> = u_xlat15;
        let x_1688 : vec2<f32> = vec2<f32>(x_1687.x, x_1687.y);
        let x_1690 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1688.x, x_1688.y, x_1690);
        let x_1697 : vec3<f32> = txVec16;
        let x_1699 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1697.xy, x_1697.z);
        u_xlat56.x = x_1699;
        let x_1702 : f32 = u_xlat17.w;
        let x_1704 : f32 = u_xlat56.x;
        let x_1706 : f32 = u_xlat80;
        u_xlat80 = ((x_1702 * x_1704) + x_1706);
        let x_1709 : vec4<f32> = u_xlat13;
        let x_1710 : vec2<f32> = vec2<f32>(x_1709.x, x_1709.y);
        let x_1712 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1710.x, x_1710.y, x_1712);
        let x_1719 : vec3<f32> = txVec17;
        let x_1721 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1719.xy, x_1719.z);
        u_xlat56.x = x_1721;
        let x_1724 : f32 = u_xlat18.x;
        let x_1726 : f32 = u_xlat56.x;
        let x_1728 : f32 = u_xlat80;
        u_xlat80 = ((x_1724 * x_1726) + x_1728);
        let x_1731 : vec4<f32> = u_xlat13;
        let x_1732 : vec2<f32> = vec2<f32>(x_1731.z, x_1731.w);
        let x_1734 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1732.x, x_1732.y, x_1734);
        let x_1741 : vec3<f32> = txVec18;
        let x_1743 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1741.xy, x_1741.z);
        u_xlat56.x = x_1743;
        let x_1746 : f32 = u_xlat18.y;
        let x_1748 : f32 = u_xlat56.x;
        let x_1750 : f32 = u_xlat80;
        u_xlat80 = ((x_1746 * x_1748) + x_1750);
        let x_1753 : vec4<f32> = u_xlat14;
        let x_1754 : vec2<f32> = vec2<f32>(x_1753.x, x_1753.y);
        let x_1756 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1754.x, x_1754.y, x_1756);
        let x_1763 : vec3<f32> = txVec19;
        let x_1765 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1763.xy, x_1763.z);
        u_xlat56.x = x_1765;
        let x_1768 : f32 = u_xlat18.z;
        let x_1770 : f32 = u_xlat56.x;
        let x_1772 : f32 = u_xlat80;
        u_xlat80 = ((x_1768 * x_1770) + x_1772);
        let x_1775 : vec4<f32> = u_xlat15;
        let x_1776 : vec2<f32> = vec2<f32>(x_1775.z, x_1775.w);
        let x_1778 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1776.x, x_1776.y, x_1778);
        let x_1785 : vec3<f32> = txVec20;
        let x_1787 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1785.xy, x_1785.z);
        u_xlat56.x = x_1787;
        let x_1790 : f32 = u_xlat18.w;
        let x_1792 : f32 = u_xlat56.x;
        let x_1794 : f32 = u_xlat80;
        u_xlat80 = ((x_1790 * x_1792) + x_1794);
        let x_1797 : vec4<f32> = u_xlat16;
        let x_1798 : vec2<f32> = vec2<f32>(x_1797.x, x_1797.y);
        let x_1800 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1798.x, x_1798.y, x_1800);
        let x_1807 : vec3<f32> = txVec21;
        let x_1809 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1807.xy, x_1807.z);
        u_xlat56.x = x_1809;
        let x_1812 : f32 = u_xlat19.x;
        let x_1814 : f32 = u_xlat56.x;
        let x_1816 : f32 = u_xlat80;
        u_xlat80 = ((x_1812 * x_1814) + x_1816);
        let x_1819 : vec4<f32> = u_xlat16;
        let x_1820 : vec2<f32> = vec2<f32>(x_1819.z, x_1819.w);
        let x_1822 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1820.x, x_1820.y, x_1822);
        let x_1829 : vec3<f32> = txVec22;
        let x_1831 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1829.xy, x_1829.z);
        u_xlat56.x = x_1831;
        let x_1834 : f32 = u_xlat19.y;
        let x_1836 : f32 = u_xlat56.x;
        let x_1838 : f32 = u_xlat80;
        u_xlat80 = ((x_1834 * x_1836) + x_1838);
        let x_1841 : vec2<f32> = u_xlat33;
        let x_1843 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1841.x, x_1841.y, x_1843);
        let x_1850 : vec3<f32> = txVec23;
        let x_1852 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1850.xy, x_1850.z);
        u_xlat56.x = x_1852;
        let x_1855 : f32 = u_xlat19.z;
        let x_1857 : f32 = u_xlat56.x;
        let x_1859 : f32 = u_xlat80;
        u_xlat80 = ((x_1855 * x_1857) + x_1859);
        let x_1862 : vec2<f32> = u_xlat64;
        let x_1864 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1862.x, x_1862.y, x_1864);
        let x_1871 : vec3<f32> = txVec24;
        let x_1873 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1871.xy, x_1871.z);
        u_xlat56.x = x_1873;
        let x_1876 : f32 = u_xlat19.w;
        let x_1878 : f32 = u_xlat56.x;
        let x_1880 : f32 = u_xlat80;
        u_xlat80 = ((x_1876 * x_1878) + x_1880);
        let x_1883 : vec4<f32> = u_xlat11;
        let x_1884 : vec2<f32> = vec2<f32>(x_1883.x, x_1883.y);
        let x_1886 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1884.x, x_1884.y, x_1886);
        let x_1893 : vec3<f32> = txVec25;
        let x_1895 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1893.xy, x_1893.z);
        u_xlat56.x = x_1895;
        let x_1898 : f32 = u_xlat7.x;
        let x_1900 : f32 = u_xlat56.x;
        let x_1902 : f32 = u_xlat80;
        u_xlat80 = ((x_1898 * x_1900) + x_1902);
        let x_1905 : vec4<f32> = u_xlat11;
        let x_1906 : vec2<f32> = vec2<f32>(x_1905.z, x_1905.w);
        let x_1908 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1906.x, x_1906.y, x_1908);
        let x_1915 : vec3<f32> = txVec26;
        let x_1917 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1915.xy, x_1915.z);
        u_xlat56.x = x_1917;
        let x_1920 : f32 = u_xlat7.y;
        let x_1922 : f32 = u_xlat56.x;
        let x_1924 : f32 = u_xlat80;
        u_xlat80 = ((x_1920 * x_1922) + x_1924);
        let x_1927 : vec2<f32> = u_xlat59;
        let x_1929 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_1927.x, x_1927.y, x_1929);
        let x_1936 : vec3<f32> = txVec27;
        let x_1938 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1936.xy, x_1936.z);
        u_xlat56.x = x_1938;
        let x_1941 : f32 = u_xlat7.z;
        let x_1943 : f32 = u_xlat56.x;
        let x_1945 : f32 = u_xlat80;
        u_xlat80 = ((x_1941 * x_1943) + x_1945);
        let x_1948 : vec4<f32> = u_xlat6;
        let x_1949 : vec2<f32> = vec2<f32>(x_1948.x, x_1948.y);
        let x_1951 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_1949.x, x_1949.y, x_1951);
        let x_1958 : vec3<f32> = txVec28;
        let x_1960 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1958.xy, x_1958.z);
        u_xlat6.x = x_1960;
        let x_1963 : f32 = u_xlat7.w;
        let x_1965 : f32 = u_xlat6.x;
        let x_1967 : f32 = u_xlat80;
        u_xlat79 = ((x_1963 * x_1965) + x_1967);
      }
    }
  } else {
    let x_1971 : vec4<f32> = vs_TEXCOORD8;
    let x_1972 : vec2<f32> = vec2<f32>(x_1971.x, x_1971.y);
    let x_1974 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_1972.x, x_1972.y, x_1974);
    let x_1981 : vec3<f32> = txVec29;
    let x_1983 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1981.xy, x_1981.z);
    u_xlat79 = x_1983;
  }
  let x_1985 : f32 = x_733.x_MainLightShadowParams.x;
  u_xlat80 = (-(x_1985) + 1.0f);
  let x_1988 : f32 = u_xlat79;
  let x_1990 : f32 = x_733.x_MainLightShadowParams.x;
  let x_1992 : f32 = u_xlat80;
  u_xlat79 = ((x_1988 * x_1990) + x_1992);
  let x_1995 : f32 = vs_TEXCOORD8.z;
  u_xlatb80 = (0.0f >= x_1995);
  let x_1999 : f32 = vs_TEXCOORD8.z;
  u_xlatb6 = (x_1999 >= 1.0f);
  let x_2001 : bool = u_xlatb80;
  let x_2002 : bool = u_xlatb6;
  u_xlatb80 = (x_2001 | x_2002);
  let x_2004 : bool = u_xlatb80;
  let x_2005 : f32 = u_xlat79;
  u_xlat79 = select(x_2005, 1.0f, x_2004);
  let x_2007 : vec3<f32> = vs_TEXCOORD7;
  let x_2009 : vec3<f32> = x_111.x_WorldSpaceCameraPos;
  let x_2011 : vec3<f32> = (x_2007 + -(x_2009));
  let x_2012 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2011.x, x_2011.y, x_2011.z, x_2012.w);
  let x_2014 : vec4<f32> = u_xlat6;
  let x_2016 : vec4<f32> = u_xlat6;
  u_xlat80 = dot(vec3<f32>(x_2014.x, x_2014.y, x_2014.z), vec3<f32>(x_2016.x, x_2016.y, x_2016.z));
  let x_2019 : f32 = u_xlat80;
  let x_2021 : f32 = x_733.x_MainLightShadowParams.z;
  let x_2024 : f32 = x_733.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_2019 * x_2021) + x_2024);
  let x_2028 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_2028, 0.0f, 1.0f);
  let x_2031 : f32 = u_xlat79;
  u_xlat31 = (-(x_2031) + 1.0f);
  let x_2035 : f32 = u_xlat6.x;
  let x_2036 : f32 = u_xlat31;
  let x_2038 : f32 = u_xlat79;
  u_xlat79 = ((x_2035 * x_2036) + x_2038);
  let x_2040 : vec3<f32> = u_xlat2;
  let x_2042 : vec4<f32> = u_xlat1;
  u_xlat6.x = dot(-(x_2040), vec3<f32>(x_2042.x, x_2042.y, x_2042.z));
  let x_2047 : f32 = u_xlat6.x;
  let x_2049 : f32 = u_xlat6.x;
  u_xlat6.x = (x_2047 + x_2049);
  let x_2052 : vec4<f32> = u_xlat1;
  let x_2054 : vec4<f32> = u_xlat6;
  let x_2058 : vec3<f32> = u_xlat2;
  let x_2060 : vec3<f32> = ((vec3<f32>(x_2052.x, x_2052.y, x_2052.z) * -(vec3<f32>(x_2054.x, x_2054.x, x_2054.x))) + -(x_2058));
  let x_2061 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2060.x, x_2060.y, x_2060.z, x_2061.w);
  let x_2064 : vec4<f32> = u_xlat1;
  let x_2066 : vec3<f32> = u_xlat2;
  u_xlat81 = dot(vec3<f32>(x_2064.x, x_2064.y, x_2064.z), x_2066);
  let x_2068 : f32 = u_xlat81;
  u_xlat81 = clamp(x_2068, 0.0f, 1.0f);
  let x_2070 : f32 = u_xlat81;
  u_xlat81 = (-(x_2070) + 1.0f);
  let x_2073 : f32 = u_xlat81;
  let x_2074 : f32 = u_xlat81;
  u_xlat81 = (x_2073 * x_2074);
  let x_2076 : f32 = u_xlat81;
  let x_2077 : f32 = u_xlat81;
  u_xlat81 = (x_2076 * x_2077);
  let x_2080 : f32 = u_xlat0.x;
  u_xlat7.x = ((-(x_2080) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2088 : f32 = u_xlat0.x;
  let x_2090 : f32 = u_xlat7.x;
  u_xlat0.x = (x_2088 * x_2090);
  let x_2094 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2094 * 6.0f);
  let x_2106 : vec4<f32> = u_xlat6;
  let x_2109 : f32 = u_xlat0.x;
  let x_2110 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2106.x, x_2106.y, x_2106.z), x_2109);
  u_xlat7 = x_2110;
  let x_2112 : f32 = u_xlat7.w;
  u_xlat0.x = (x_2112 + -1.0f);
  let x_2116 : f32 = x_590.unity_SpecCube0_HDR.w;
  let x_2118 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2116 * x_2118) + 1.0f);
  let x_2123 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2123, 0.0f);
  let x_2127 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2127);
  let x_2131 : f32 = u_xlat0.x;
  let x_2133 : f32 = x_590.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2131 * x_2133);
  let x_2137 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2137);
  let x_2141 : f32 = u_xlat0.x;
  let x_2143 : f32 = x_590.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2141 * x_2143);
  let x_2146 : vec4<f32> = u_xlat7;
  let x_2148 : vec3<f32> = u_xlat0;
  let x_2150 : vec3<f32> = (vec3<f32>(x_2146.x, x_2146.y, x_2146.z) * vec3<f32>(x_2148.x, x_2148.x, x_2148.x));
  let x_2151 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2150.x, x_2150.y, x_2150.z, x_2151.w);
  let x_2153 : f32 = u_xlat50;
  let x_2155 : f32 = u_xlat50;
  let x_2159 : vec2<f32> = ((vec2<f32>(x_2153, x_2153) * vec2<f32>(x_2155, x_2155)) + vec2<f32>(-1.0f, 1.0f));
  let x_2160 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2159.x, x_2160.y, x_2159.y);
  let x_2163 : f32 = u_xlat0.z;
  u_xlat50 = (1.0f / x_2163);
  let x_2165 : vec4<f32> = u_xlat5;
  let x_2168 : f32 = u_xlat77;
  let x_2170 : vec3<f32> = (-(vec3<f32>(x_2165.x, x_2165.y, x_2165.z)) + vec3<f32>(x_2168, x_2168, x_2168));
  let x_2171 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2170.x, x_2170.y, x_2170.z, x_2171.w);
  let x_2173 : f32 = u_xlat81;
  let x_2175 : vec4<f32> = u_xlat7;
  let x_2178 : vec4<f32> = u_xlat5;
  let x_2180 : vec3<f32> = ((vec3<f32>(x_2173, x_2173, x_2173) * vec3<f32>(x_2175.x, x_2175.y, x_2175.z)) + vec3<f32>(x_2178.x, x_2178.y, x_2178.z));
  let x_2181 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2180.x, x_2180.y, x_2180.z, x_2181.w);
  let x_2183 : f32 = u_xlat50;
  let x_2185 : vec4<f32> = u_xlat7;
  let x_2187 : vec3<f32> = (vec3<f32>(x_2183, x_2183, x_2183) * vec3<f32>(x_2185.x, x_2185.y, x_2185.z));
  let x_2188 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2187.x, x_2187.y, x_2187.z, x_2188.w);
  let x_2190 : vec4<f32> = u_xlat6;
  let x_2192 : vec4<f32> = u_xlat7;
  let x_2194 : vec3<f32> = (vec3<f32>(x_2190.x, x_2190.y, x_2190.z) * vec3<f32>(x_2192.x, x_2192.y, x_2192.z));
  let x_2195 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2194.x, x_2194.y, x_2194.z, x_2195.w);
  let x_2197 : vec4<f32> = u_xlat3;
  let x_2199 : vec4<f32> = u_xlat4;
  let x_2202 : vec4<f32> = u_xlat6;
  let x_2204 : vec3<f32> = ((vec3<f32>(x_2197.x, x_2197.y, x_2197.z) * vec3<f32>(x_2199.x, x_2199.y, x_2199.z)) + vec3<f32>(x_2202.x, x_2202.y, x_2202.z));
  let x_2205 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2204.x, x_2204.y, x_2204.z, x_2205.w);
  let x_2207 : f32 = u_xlat79;
  let x_2209 : f32 = x_590.unity_LightData.z;
  u_xlat50 = (x_2207 * x_2209);
  let x_2211 : vec4<f32> = u_xlat1;
  let x_2214 : vec4<f32> = x_111.x_MainLightPosition;
  u_xlat77 = dot(vec3<f32>(x_2211.x, x_2211.y, x_2211.z), vec3<f32>(x_2214.x, x_2214.y, x_2214.z));
  let x_2217 : f32 = u_xlat77;
  u_xlat77 = clamp(x_2217, 0.0f, 1.0f);
  let x_2219 : f32 = u_xlat50;
  let x_2220 : f32 = u_xlat77;
  u_xlat50 = (x_2219 * x_2220);
  let x_2222 : f32 = u_xlat50;
  let x_2225 : vec4<f32> = x_111.x_MainLightColor;
  let x_2227 : vec3<f32> = (vec3<f32>(x_2222, x_2222, x_2222) * vec3<f32>(x_2225.x, x_2225.y, x_2225.z));
  let x_2228 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2227.x, x_2227.y, x_2227.z, x_2228.w);
  let x_2230 : vec3<f32> = u_xlat2;
  let x_2232 : vec4<f32> = x_111.x_MainLightPosition;
  let x_2234 : vec3<f32> = (x_2230 + vec3<f32>(x_2232.x, x_2232.y, x_2232.z));
  let x_2235 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2234.x, x_2234.y, x_2234.z, x_2235.w);
  let x_2237 : vec4<f32> = u_xlat7;
  let x_2239 : vec4<f32> = u_xlat7;
  u_xlat50 = dot(vec3<f32>(x_2237.x, x_2237.y, x_2237.z), vec3<f32>(x_2239.x, x_2239.y, x_2239.z));
  let x_2242 : f32 = u_xlat50;
  u_xlat50 = max(x_2242, 1.17549435e-38f);
  let x_2245 : f32 = u_xlat50;
  u_xlat50 = inverseSqrt(x_2245);
  let x_2247 : f32 = u_xlat50;
  let x_2249 : vec4<f32> = u_xlat7;
  let x_2251 : vec3<f32> = (vec3<f32>(x_2247, x_2247, x_2247) * vec3<f32>(x_2249.x, x_2249.y, x_2249.z));
  let x_2252 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2251.x, x_2251.y, x_2251.z, x_2252.w);
  let x_2254 : vec4<f32> = u_xlat1;
  let x_2256 : vec4<f32> = u_xlat7;
  u_xlat50 = dot(vec3<f32>(x_2254.x, x_2254.y, x_2254.z), vec3<f32>(x_2256.x, x_2256.y, x_2256.z));
  let x_2259 : f32 = u_xlat50;
  u_xlat50 = clamp(x_2259, 0.0f, 1.0f);
  let x_2262 : vec4<f32> = x_111.x_MainLightPosition;
  let x_2264 : vec4<f32> = u_xlat7;
  u_xlat77 = dot(vec3<f32>(x_2262.x, x_2262.y, x_2262.z), vec3<f32>(x_2264.x, x_2264.y, x_2264.z));
  let x_2267 : f32 = u_xlat77;
  u_xlat77 = clamp(x_2267, 0.0f, 1.0f);
  let x_2269 : f32 = u_xlat50;
  let x_2270 : f32 = u_xlat50;
  u_xlat50 = (x_2269 * x_2270);
  let x_2272 : f32 = u_xlat50;
  let x_2274 : f32 = u_xlat0.x;
  u_xlat50 = ((x_2272 * x_2274) + 1.00001001358032226562f);
  let x_2278 : f32 = u_xlat77;
  let x_2279 : f32 = u_xlat77;
  u_xlat77 = (x_2278 * x_2279);
  let x_2281 : f32 = u_xlat50;
  let x_2282 : f32 = u_xlat50;
  u_xlat50 = (x_2281 * x_2282);
  let x_2284 : f32 = u_xlat77;
  u_xlat77 = max(x_2284, 0.10000000149011611938f);
  let x_2287 : f32 = u_xlat50;
  let x_2288 : f32 = u_xlat77;
  u_xlat50 = (x_2287 * x_2288);
  let x_2290 : f32 = u_xlat78;
  let x_2291 : f32 = u_xlat50;
  u_xlat50 = (x_2290 * x_2291);
  let x_2293 : f32 = u_xlat76;
  let x_2294 : f32 = u_xlat50;
  u_xlat50 = (x_2293 / x_2294);
  let x_2296 : vec4<f32> = u_xlat5;
  let x_2298 : f32 = u_xlat50;
  let x_2301 : vec4<f32> = u_xlat4;
  let x_2303 : vec3<f32> = ((vec3<f32>(x_2296.x, x_2296.y, x_2296.z) * vec3<f32>(x_2298, x_2298, x_2298)) + vec3<f32>(x_2301.x, x_2301.y, x_2301.z));
  let x_2304 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2303.x, x_2303.y, x_2303.z, x_2304.w);
  let x_2306 : vec4<f32> = u_xlat6;
  let x_2308 : vec4<f32> = u_xlat7;
  let x_2310 : vec3<f32> = (vec3<f32>(x_2306.x, x_2306.y, x_2306.z) * vec3<f32>(x_2308.x, x_2308.y, x_2308.z));
  let x_2311 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2310.x, x_2310.y, x_2310.z, x_2311.w);
  let x_2315 : f32 = x_111.x_AdditionalLightsCount.x;
  let x_2317 : f32 = x_590.unity_LightData.y;
  u_xlat50 = min(x_2315, x_2317);
  let x_2321 : f32 = u_xlat50;
  u_xlatu50 = bitcast<u32>(i32(x_2321));
  let x_2324 : f32 = u_xlat80;
  let x_2326 : f32 = x_733.x_AdditionalShadowFadeParams.x;
  let x_2329 : f32 = x_733.x_AdditionalShadowFadeParams.y;
  u_xlat77 = ((x_2324 * x_2326) + x_2329);
  let x_2331 : f32 = u_xlat77;
  u_xlat77 = clamp(x_2331, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2343 : u32 = u_xlatu_loop_1;
    let x_2344 : u32 = u_xlatu50;
    if ((x_2343 < x_2344)) {
    } else {
      break;
    }
    let x_2347 : u32 = u_xlatu_loop_1;
    u_xlatu80 = (x_2347 >> 2u);
    let x_2351 : u32 = u_xlatu_loop_1;
    u_xlati81 = bitcast<i32>((x_2351 & 3u));
    let x_2354 : u32 = u_xlatu80;
    let x_2357 : vec4<f32> = x_590.unity_LightIndices[bitcast<i32>(x_2354)];
    let x_2367 : i32 = u_xlati81;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2372 : vec4<u32> = indexable[x_2367];
    u_xlat80 = dot(x_2357, bitcast<vec4<f32>>(x_2372));
    let x_2376 : f32 = u_xlat80;
    u_xlati80 = i32(x_2376);
    let x_2378 : vec3<f32> = vs_TEXCOORD7;
    let x_2389 : i32 = u_xlati80;
    let x_2391 : vec4<f32> = x_2388.x_AdditionalLightsPosition[x_2389];
    let x_2394 : i32 = u_xlati80;
    let x_2396 : vec4<f32> = x_2388.x_AdditionalLightsPosition[x_2394];
    let x_2398 : vec3<f32> = ((-(x_2378) * vec3<f32>(x_2391.w, x_2391.w, x_2391.w)) + vec3<f32>(x_2396.x, x_2396.y, x_2396.z));
    let x_2399 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2398.x, x_2398.y, x_2398.z, x_2399.w);
    let x_2401 : vec4<f32> = u_xlat8;
    let x_2403 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_2401.x, x_2401.y, x_2401.z), vec3<f32>(x_2403.x, x_2403.y, x_2403.z));
    let x_2406 : f32 = u_xlat81;
    u_xlat81 = max(x_2406, 0.00006103515625f);
    let x_2409 : f32 = u_xlat81;
    u_xlat82 = inverseSqrt(x_2409);
    let x_2411 : f32 = u_xlat82;
    let x_2413 : vec4<f32> = u_xlat8;
    let x_2415 : vec3<f32> = (vec3<f32>(x_2411, x_2411, x_2411) * vec3<f32>(x_2413.x, x_2413.y, x_2413.z));
    let x_2416 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2415.x, x_2415.y, x_2415.z, x_2416.w);
    let x_2419 : f32 = u_xlat81;
    u_xlat83 = (1.0f / x_2419);
    let x_2421 : f32 = u_xlat81;
    let x_2422 : i32 = u_xlati80;
    let x_2424 : f32 = x_2388.x_AdditionalLightsAttenuation[x_2422].x;
    u_xlat81 = (x_2421 * x_2424);
    let x_2426 : f32 = u_xlat81;
    let x_2428 : f32 = u_xlat81;
    u_xlat81 = ((-(x_2426) * x_2428) + 1.0f);
    let x_2431 : f32 = u_xlat81;
    u_xlat81 = max(x_2431, 0.0f);
    let x_2433 : f32 = u_xlat81;
    let x_2434 : f32 = u_xlat81;
    u_xlat81 = (x_2433 * x_2434);
    let x_2436 : f32 = u_xlat81;
    let x_2437 : f32 = u_xlat83;
    u_xlat81 = (x_2436 * x_2437);
    let x_2439 : i32 = u_xlati80;
    let x_2441 : vec4<f32> = x_2388.x_AdditionalLightsSpotDir[x_2439];
    let x_2443 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_2441.x, x_2441.y, x_2441.z), vec3<f32>(x_2443.x, x_2443.y, x_2443.z));
    let x_2446 : f32 = u_xlat83;
    let x_2447 : i32 = u_xlati80;
    let x_2449 : f32 = x_2388.x_AdditionalLightsAttenuation[x_2447].z;
    let x_2451 : i32 = u_xlati80;
    let x_2453 : f32 = x_2388.x_AdditionalLightsAttenuation[x_2451].w;
    u_xlat83 = ((x_2446 * x_2449) + x_2453);
    let x_2455 : f32 = u_xlat83;
    u_xlat83 = clamp(x_2455, 0.0f, 1.0f);
    let x_2457 : f32 = u_xlat83;
    let x_2458 : f32 = u_xlat83;
    u_xlat83 = (x_2457 * x_2458);
    let x_2460 : f32 = u_xlat81;
    let x_2461 : f32 = u_xlat83;
    u_xlat81 = (x_2460 * x_2461);
    let x_2464 : i32 = u_xlati80;
    let x_2466 : f32 = x_733.x_AdditionalShadowParams[x_2464].w;
    u_xlati83 = i32(x_2466);
    let x_2469 : i32 = u_xlati83;
    u_xlatb84 = (x_2469 >= 0i);
    let x_2471 : bool = u_xlatb84;
    if (x_2471) {
      let x_2475 : i32 = u_xlati80;
      let x_2477 : f32 = x_733.x_AdditionalShadowParams[x_2475].z;
      u_xlatb84 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2477, x_2477, x_2477, x_2477))));
      let x_2481 : bool = u_xlatb84;
      if (x_2481) {
        let x_2486 : vec4<f32> = u_xlat9;
        let x_2489 : vec4<f32> = u_xlat9;
        let x_2492 : vec4<bool> = (abs(vec4<f32>(x_2486.z, x_2486.z, x_2486.y, x_2486.z)) >= abs(vec4<f32>(x_2489.x, x_2489.y, x_2489.x, x_2489.x)));
        let x_2494 : vec3<bool> = vec3<bool>(x_2492.x, x_2492.y, x_2492.z);
        let x_2495 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_2494.x, x_2494.y, x_2494.z, x_2495.w);
        let x_2498 : bool = u_xlatb10.y;
        let x_2500 : bool = u_xlatb10.x;
        u_xlatb84 = (x_2498 & x_2500);
        let x_2502 : vec4<f32> = u_xlat9;
        let x_2505 : vec4<bool> = (-(vec4<f32>(x_2502.z, x_2502.y, x_2502.z, x_2502.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2506 : vec3<bool> = vec3<bool>(x_2505.x, x_2505.y, x_2505.w);
        let x_2507 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_2506.x, x_2506.y, x_2507.z, x_2506.z);
        let x_2510 : bool = u_xlatb10.x;
        u_xlat10.x = select(4.0f, 5.0f, x_2510);
        let x_2515 : bool = u_xlatb10.y;
        u_xlat10.y = select(2.0f, 3.0f, x_2515);
        let x_2521 : bool = u_xlatb10.w;
        u_xlat85 = select(0.0f, 1.0f, x_2521);
        let x_2525 : bool = u_xlatb10.z;
        if (x_2525) {
          let x_2530 : f32 = u_xlat10.y;
          x_2526 = x_2530;
        } else {
          let x_2532 : f32 = u_xlat85;
          x_2526 = x_2532;
        }
        let x_2533 : f32 = x_2526;
        u_xlat35 = x_2533;
        let x_2535 : bool = u_xlatb84;
        if (x_2535) {
          let x_2540 : f32 = u_xlat10.x;
          x_2536 = x_2540;
        } else {
          let x_2542 : f32 = u_xlat35;
          x_2536 = x_2542;
        }
        let x_2543 : f32 = x_2536;
        u_xlat84 = x_2543;
        let x_2544 : i32 = u_xlati80;
        let x_2546 : f32 = x_733.x_AdditionalShadowParams[x_2544].w;
        u_xlat10.x = trunc(x_2546);
        let x_2549 : f32 = u_xlat84;
        let x_2551 : f32 = u_xlat10.x;
        u_xlat84 = (x_2549 + x_2551);
        let x_2553 : f32 = u_xlat84;
        u_xlati83 = i32(x_2553);
      }
      let x_2555 : i32 = u_xlati83;
      u_xlati83 = (x_2555 << bitcast<u32>(2i));
      let x_2557 : vec3<f32> = vs_TEXCOORD7;
      let x_2559 : i32 = u_xlati83;
      let x_2562 : i32 = u_xlati83;
      let x_2566 : vec4<f32> = x_733.x_AdditionalLightsWorldToShadow[((x_2559 + 1i) / 4i)][((x_2562 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_2557.y, x_2557.y, x_2557.y, x_2557.y) * x_2566);
      let x_2568 : i32 = u_xlati83;
      let x_2570 : i32 = u_xlati83;
      let x_2573 : vec4<f32> = x_733.x_AdditionalLightsWorldToShadow[(x_2568 / 4i)][(x_2570 % 4i)];
      let x_2574 : vec3<f32> = vs_TEXCOORD7;
      let x_2577 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2573 * vec4<f32>(x_2574.x, x_2574.x, x_2574.x, x_2574.x)) + x_2577);
      let x_2579 : i32 = u_xlati83;
      let x_2582 : i32 = u_xlati83;
      let x_2586 : vec4<f32> = x_733.x_AdditionalLightsWorldToShadow[((x_2579 + 2i) / 4i)][((x_2582 + 2i) % 4i)];
      let x_2587 : vec3<f32> = vs_TEXCOORD7;
      let x_2590 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2586 * vec4<f32>(x_2587.z, x_2587.z, x_2587.z, x_2587.z)) + x_2590);
      let x_2592 : vec4<f32> = u_xlat10;
      let x_2593 : i32 = u_xlati83;
      let x_2596 : i32 = u_xlati83;
      let x_2600 : vec4<f32> = x_733.x_AdditionalLightsWorldToShadow[((x_2593 + 3i) / 4i)][((x_2596 + 3i) % 4i)];
      u_xlat10 = (x_2592 + x_2600);
      let x_2602 : vec4<f32> = u_xlat10;
      let x_2604 : vec4<f32> = u_xlat10;
      let x_2606 : vec3<f32> = (vec3<f32>(x_2602.x, x_2602.y, x_2602.z) / vec3<f32>(x_2604.w, x_2604.w, x_2604.w));
      let x_2607 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2606.x, x_2606.y, x_2606.z, x_2607.w);
      let x_2610 : i32 = u_xlati80;
      let x_2612 : f32 = x_733.x_AdditionalShadowParams[x_2610].y;
      u_xlatb83 = (0.0f < x_2612);
      let x_2614 : bool = u_xlatb83;
      if (x_2614) {
        let x_2617 : i32 = u_xlati80;
        let x_2619 : f32 = x_733.x_AdditionalShadowParams[x_2617].y;
        u_xlatb83 = (1.0f == x_2619);
        let x_2621 : bool = u_xlatb83;
        if (x_2621) {
          let x_2624 : vec4<f32> = u_xlat10;
          let x_2627 : vec4<f32> = x_733.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2624.x, x_2624.y, x_2624.x, x_2624.y) + x_2627);
          let x_2630 : vec4<f32> = u_xlat11;
          let x_2631 : vec2<f32> = vec2<f32>(x_2630.x, x_2630.y);
          let x_2633 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2631.x, x_2631.y, x_2633);
          let x_2641 : vec3<f32> = txVec30;
          let x_2643 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2641.xy, x_2641.z);
          u_xlat12.x = x_2643;
          let x_2646 : vec4<f32> = u_xlat11;
          let x_2647 : vec2<f32> = vec2<f32>(x_2646.z, x_2646.w);
          let x_2649 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_2647.x, x_2647.y, x_2649);
          let x_2656 : vec3<f32> = txVec31;
          let x_2658 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2656.xy, x_2656.z);
          u_xlat12.y = x_2658;
          let x_2660 : vec4<f32> = u_xlat10;
          let x_2663 : vec4<f32> = x_733.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_2660.x, x_2660.y, x_2660.x, x_2660.y) + x_2663);
          let x_2666 : vec4<f32> = u_xlat11;
          let x_2667 : vec2<f32> = vec2<f32>(x_2666.x, x_2666.y);
          let x_2669 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_2667.x, x_2667.y, x_2669);
          let x_2676 : vec3<f32> = txVec32;
          let x_2678 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2676.xy, x_2676.z);
          u_xlat12.z = x_2678;
          let x_2681 : vec4<f32> = u_xlat11;
          let x_2682 : vec2<f32> = vec2<f32>(x_2681.z, x_2681.w);
          let x_2684 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_2682.x, x_2682.y, x_2684);
          let x_2691 : vec3<f32> = txVec33;
          let x_2693 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2691.xy, x_2691.z);
          u_xlat12.w = x_2693;
          let x_2695 : vec4<f32> = u_xlat12;
          u_xlat83 = dot(x_2695, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2698 : i32 = u_xlati80;
          let x_2700 : f32 = x_733.x_AdditionalShadowParams[x_2698].y;
          u_xlatb84 = (2.0f == x_2700);
          let x_2702 : bool = u_xlatb84;
          if (x_2702) {
            let x_2705 : vec4<f32> = u_xlat10;
            let x_2708 : vec4<f32> = x_733.x_AdditionalShadowmapSize;
            let x_2711 : vec2<f32> = ((vec2<f32>(x_2705.x, x_2705.y) * vec2<f32>(x_2708.z, x_2708.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2712 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2711.x, x_2711.y, x_2712.z, x_2712.w);
            let x_2714 : vec4<f32> = u_xlat11;
            let x_2716 : vec2<f32> = floor(vec2<f32>(x_2714.x, x_2714.y));
            let x_2717 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2716.x, x_2716.y, x_2717.z, x_2717.w);
            let x_2720 : vec4<f32> = u_xlat10;
            let x_2723 : vec4<f32> = x_733.x_AdditionalShadowmapSize;
            let x_2726 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2720.x, x_2720.y) * vec2<f32>(x_2723.z, x_2723.w)) + -(vec2<f32>(x_2726.x, x_2726.y)));
            let x_2730 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2730.x, x_2730.x, x_2730.y, x_2730.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2733 : vec4<f32> = u_xlat12;
            let x_2735 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2733.x, x_2733.x, x_2733.z, x_2733.z) * vec4<f32>(x_2735.x, x_2735.x, x_2735.z, x_2735.z));
            let x_2738 : vec4<f32> = u_xlat13;
            let x_2740 : vec2<f32> = (vec2<f32>(x_2738.y, x_2738.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2741 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2740.x, x_2741.y, x_2740.y, x_2741.w);
            let x_2743 : vec4<f32> = u_xlat13;
            let x_2746 : vec2<f32> = u_xlat61;
            let x_2748 : vec2<f32> = ((vec2<f32>(x_2743.x, x_2743.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2746));
            let x_2749 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2748.x, x_2748.y, x_2749.z, x_2749.w);
            let x_2752 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_2752) + vec2<f32>(1.0f, 1.0f));
            let x_2755 : vec2<f32> = u_xlat61;
            let x_2756 : vec2<f32> = min(x_2755, vec2<f32>(0.0f, 0.0f));
            let x_2757 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2756.x, x_2756.y, x_2757.z, x_2757.w);
            let x_2759 : vec4<f32> = u_xlat14;
            let x_2762 : vec4<f32> = u_xlat14;
            let x_2765 : vec2<f32> = u_xlat63;
            let x_2766 : vec2<f32> = ((-(vec2<f32>(x_2759.x, x_2759.y)) * vec2<f32>(x_2762.x, x_2762.y)) + x_2765);
            let x_2767 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2766.x, x_2766.y, x_2767.z, x_2767.w);
            let x_2769 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_2769, vec2<f32>(0.0f, 0.0f));
            let x_2771 : vec2<f32> = u_xlat61;
            let x_2773 : vec2<f32> = u_xlat61;
            let x_2775 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_2771) * x_2773) + vec2<f32>(x_2775.y, x_2775.w));
            let x_2778 : vec4<f32> = u_xlat14;
            let x_2780 : vec2<f32> = (vec2<f32>(x_2778.x, x_2778.y) + vec2<f32>(1.0f, 1.0f));
            let x_2781 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2780.x, x_2780.y, x_2781.z, x_2781.w);
            let x_2783 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_2783 + vec2<f32>(1.0f, 1.0f));
            let x_2785 : vec4<f32> = u_xlat13;
            let x_2787 : vec2<f32> = (vec2<f32>(x_2785.x, x_2785.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2788 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2787.x, x_2787.y, x_2788.z, x_2788.w);
            let x_2790 : vec2<f32> = u_xlat63;
            let x_2791 : vec2<f32> = (x_2790 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2792 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2791.x, x_2791.y, x_2792.z, x_2792.w);
            let x_2794 : vec4<f32> = u_xlat14;
            let x_2796 : vec2<f32> = (vec2<f32>(x_2794.x, x_2794.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2797 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2796.x, x_2796.y, x_2797.z, x_2797.w);
            let x_2799 : vec2<f32> = u_xlat61;
            let x_2800 : vec2<f32> = (x_2799 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2801 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2800.x, x_2800.y, x_2801.z, x_2801.w);
            let x_2803 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_2803.y, x_2803.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2807 : f32 = u_xlat14.x;
            u_xlat15.z = x_2807;
            let x_2810 : f32 = u_xlat61.x;
            u_xlat15.w = x_2810;
            let x_2813 : f32 = u_xlat16.x;
            u_xlat13.z = x_2813;
            let x_2816 : f32 = u_xlat12.x;
            u_xlat13.w = x_2816;
            let x_2818 : vec4<f32> = u_xlat13;
            let x_2820 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2818.z, x_2818.w, x_2818.x, x_2818.z) + vec4<f32>(x_2820.z, x_2820.w, x_2820.x, x_2820.z));
            let x_2824 : f32 = u_xlat15.y;
            u_xlat14.z = x_2824;
            let x_2827 : f32 = u_xlat61.y;
            u_xlat14.w = x_2827;
            let x_2830 : f32 = u_xlat13.y;
            u_xlat16.z = x_2830;
            let x_2833 : f32 = u_xlat12.z;
            u_xlat16.w = x_2833;
            let x_2835 : vec4<f32> = u_xlat14;
            let x_2837 : vec4<f32> = u_xlat16;
            let x_2839 : vec3<f32> = (vec3<f32>(x_2835.z, x_2835.y, x_2835.w) + vec3<f32>(x_2837.z, x_2837.y, x_2837.w));
            let x_2840 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2839.x, x_2839.y, x_2839.z, x_2840.w);
            let x_2842 : vec4<f32> = u_xlat13;
            let x_2844 : vec4<f32> = u_xlat17;
            let x_2846 : vec3<f32> = (vec3<f32>(x_2842.x, x_2842.z, x_2842.w) / vec3<f32>(x_2844.z, x_2844.w, x_2844.y));
            let x_2847 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2846.x, x_2846.y, x_2846.z, x_2847.w);
            let x_2849 : vec4<f32> = u_xlat13;
            let x_2851 : vec3<f32> = (vec3<f32>(x_2849.x, x_2849.y, x_2849.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2852 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2851.x, x_2851.y, x_2851.z, x_2852.w);
            let x_2854 : vec4<f32> = u_xlat16;
            let x_2856 : vec4<f32> = u_xlat12;
            let x_2858 : vec3<f32> = (vec3<f32>(x_2854.z, x_2854.y, x_2854.w) / vec3<f32>(x_2856.x, x_2856.y, x_2856.z));
            let x_2859 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2858.x, x_2858.y, x_2858.z, x_2859.w);
            let x_2861 : vec4<f32> = u_xlat14;
            let x_2863 : vec3<f32> = (vec3<f32>(x_2861.x, x_2861.y, x_2861.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2864 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2863.x, x_2863.y, x_2863.z, x_2864.w);
            let x_2866 : vec4<f32> = u_xlat13;
            let x_2869 : vec4<f32> = x_733.x_AdditionalShadowmapSize;
            let x_2871 : vec3<f32> = (vec3<f32>(x_2866.y, x_2866.x, x_2866.z) * vec3<f32>(x_2869.x, x_2869.x, x_2869.x));
            let x_2872 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2871.x, x_2871.y, x_2871.z, x_2872.w);
            let x_2874 : vec4<f32> = u_xlat14;
            let x_2877 : vec4<f32> = x_733.x_AdditionalShadowmapSize;
            let x_2879 : vec3<f32> = (vec3<f32>(x_2874.x, x_2874.y, x_2874.z) * vec3<f32>(x_2877.y, x_2877.y, x_2877.y));
            let x_2880 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2879.x, x_2879.y, x_2879.z, x_2880.w);
            let x_2883 : f32 = u_xlat14.x;
            u_xlat13.w = x_2883;
            let x_2885 : vec4<f32> = u_xlat11;
            let x_2888 : vec4<f32> = x_733.x_AdditionalShadowmapSize;
            let x_2891 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2885.x, x_2885.y, x_2885.x, x_2885.y) * vec4<f32>(x_2888.x, x_2888.y, x_2888.x, x_2888.y)) + vec4<f32>(x_2891.y, x_2891.w, x_2891.x, x_2891.w));
            let x_2894 : vec4<f32> = u_xlat11;
            let x_2897 : vec4<f32> = x_733.x_AdditionalShadowmapSize;
            let x_2900 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_2894.x, x_2894.y) * vec2<f32>(x_2897.x, x_2897.y)) + vec2<f32>(x_2900.z, x_2900.w));
            let x_2904 : f32 = u_xlat13.y;
            u_xlat14.w = x_2904;
            let x_2906 : vec4<f32> = u_xlat14;
            let x_2907 : vec2<f32> = vec2<f32>(x_2906.y, x_2906.z);
            let x_2908 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2908.x, x_2907.x, x_2908.z, x_2907.y);
            let x_2910 : vec4<f32> = u_xlat11;
            let x_2913 : vec4<f32> = x_733.x_AdditionalShadowmapSize;
            let x_2916 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_2910.x, x_2910.y, x_2910.x, x_2910.y) * vec4<f32>(x_2913.x, x_2913.y, x_2913.x, x_2913.y)) + vec4<f32>(x_2916.x, x_2916.y, x_2916.z, x_2916.y));
            let x_2919 : vec4<f32> = u_xlat11;
            let x_2922 : vec4<f32> = x_733.x_AdditionalShadowmapSize;
            let x_2925 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2919.x, x_2919.y, x_2919.x, x_2919.y) * vec4<f32>(x_2922.x, x_2922.y, x_2922.x, x_2922.y)) + vec4<f32>(x_2925.w, x_2925.y, x_2925.w, x_2925.z));
            let x_2928 : vec4<f32> = u_xlat11;
            let x_2931 : vec4<f32> = x_733.x_AdditionalShadowmapSize;
            let x_2934 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_2928.x, x_2928.y, x_2928.x, x_2928.y) * vec4<f32>(x_2931.x, x_2931.y, x_2931.x, x_2931.y)) + vec4<f32>(x_2934.x, x_2934.w, x_2934.z, x_2934.w));
            let x_2937 : vec4<f32> = u_xlat12;
            let x_2939 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_2937.x, x_2937.x, x_2937.x, x_2937.y) * vec4<f32>(x_2939.z, x_2939.w, x_2939.y, x_2939.z));
            let x_2942 : vec4<f32> = u_xlat12;
            let x_2944 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_2942.y, x_2942.y, x_2942.z, x_2942.z) * x_2944);
            let x_2947 : f32 = u_xlat12.z;
            let x_2949 : f32 = u_xlat17.y;
            u_xlat84 = (x_2947 * x_2949);
            let x_2952 : vec4<f32> = u_xlat15;
            let x_2953 : vec2<f32> = vec2<f32>(x_2952.x, x_2952.y);
            let x_2955 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_2953.x, x_2953.y, x_2955);
            let x_2962 : vec3<f32> = txVec34;
            let x_2964 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2962.xy, x_2962.z);
            u_xlat85 = x_2964;
            let x_2966 : vec4<f32> = u_xlat15;
            let x_2967 : vec2<f32> = vec2<f32>(x_2966.z, x_2966.w);
            let x_2969 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_2967.x, x_2967.y, x_2969);
            let x_2976 : vec3<f32> = txVec35;
            let x_2978 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2976.xy, x_2976.z);
            u_xlat11.x = x_2978;
            let x_2981 : f32 = u_xlat11.x;
            let x_2983 : f32 = u_xlat18.y;
            u_xlat11.x = (x_2981 * x_2983);
            let x_2987 : f32 = u_xlat18.x;
            let x_2988 : f32 = u_xlat85;
            let x_2991 : f32 = u_xlat11.x;
            u_xlat85 = ((x_2987 * x_2988) + x_2991);
            let x_2994 : vec2<f32> = u_xlat61;
            let x_2996 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_2994.x, x_2994.y, x_2996);
            let x_3003 : vec3<f32> = txVec36;
            let x_3005 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3003.xy, x_3003.z);
            u_xlat11.x = x_3005;
            let x_3008 : f32 = u_xlat18.z;
            let x_3010 : f32 = u_xlat11.x;
            let x_3012 : f32 = u_xlat85;
            u_xlat85 = ((x_3008 * x_3010) + x_3012);
            let x_3015 : vec4<f32> = u_xlat14;
            let x_3016 : vec2<f32> = vec2<f32>(x_3015.x, x_3015.y);
            let x_3018 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_3016.x, x_3016.y, x_3018);
            let x_3025 : vec3<f32> = txVec37;
            let x_3027 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3025.xy, x_3025.z);
            u_xlat11.x = x_3027;
            let x_3030 : f32 = u_xlat18.w;
            let x_3032 : f32 = u_xlat11.x;
            let x_3034 : f32 = u_xlat85;
            u_xlat85 = ((x_3030 * x_3032) + x_3034);
            let x_3037 : vec4<f32> = u_xlat16;
            let x_3038 : vec2<f32> = vec2<f32>(x_3037.x, x_3037.y);
            let x_3040 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_3038.x, x_3038.y, x_3040);
            let x_3047 : vec3<f32> = txVec38;
            let x_3049 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3047.xy, x_3047.z);
            u_xlat11.x = x_3049;
            let x_3052 : f32 = u_xlat19.x;
            let x_3054 : f32 = u_xlat11.x;
            let x_3056 : f32 = u_xlat85;
            u_xlat85 = ((x_3052 * x_3054) + x_3056);
            let x_3059 : vec4<f32> = u_xlat16;
            let x_3060 : vec2<f32> = vec2<f32>(x_3059.z, x_3059.w);
            let x_3062 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_3060.x, x_3060.y, x_3062);
            let x_3069 : vec3<f32> = txVec39;
            let x_3071 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3069.xy, x_3069.z);
            u_xlat11.x = x_3071;
            let x_3074 : f32 = u_xlat19.y;
            let x_3076 : f32 = u_xlat11.x;
            let x_3078 : f32 = u_xlat85;
            u_xlat85 = ((x_3074 * x_3076) + x_3078);
            let x_3081 : vec4<f32> = u_xlat14;
            let x_3082 : vec2<f32> = vec2<f32>(x_3081.z, x_3081.w);
            let x_3084 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_3082.x, x_3082.y, x_3084);
            let x_3091 : vec3<f32> = txVec40;
            let x_3093 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3091.xy, x_3091.z);
            u_xlat11.x = x_3093;
            let x_3096 : f32 = u_xlat19.z;
            let x_3098 : f32 = u_xlat11.x;
            let x_3100 : f32 = u_xlat85;
            u_xlat85 = ((x_3096 * x_3098) + x_3100);
            let x_3103 : vec4<f32> = u_xlat13;
            let x_3104 : vec2<f32> = vec2<f32>(x_3103.x, x_3103.y);
            let x_3106 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_3104.x, x_3104.y, x_3106);
            let x_3113 : vec3<f32> = txVec41;
            let x_3115 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3113.xy, x_3113.z);
            u_xlat11.x = x_3115;
            let x_3118 : f32 = u_xlat19.w;
            let x_3120 : f32 = u_xlat11.x;
            let x_3122 : f32 = u_xlat85;
            u_xlat85 = ((x_3118 * x_3120) + x_3122);
            let x_3125 : vec4<f32> = u_xlat13;
            let x_3126 : vec2<f32> = vec2<f32>(x_3125.z, x_3125.w);
            let x_3128 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_3126.x, x_3126.y, x_3128);
            let x_3135 : vec3<f32> = txVec42;
            let x_3137 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3135.xy, x_3135.z);
            u_xlat11.x = x_3137;
            let x_3139 : f32 = u_xlat84;
            let x_3141 : f32 = u_xlat11.x;
            let x_3143 : f32 = u_xlat85;
            u_xlat83 = ((x_3139 * x_3141) + x_3143);
          } else {
            let x_3146 : vec4<f32> = u_xlat10;
            let x_3149 : vec4<f32> = x_733.x_AdditionalShadowmapSize;
            let x_3152 : vec2<f32> = ((vec2<f32>(x_3146.x, x_3146.y) * vec2<f32>(x_3149.z, x_3149.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3153 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3152.x, x_3152.y, x_3153.z, x_3153.w);
            let x_3155 : vec4<f32> = u_xlat11;
            let x_3157 : vec2<f32> = floor(vec2<f32>(x_3155.x, x_3155.y));
            let x_3158 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3157.x, x_3157.y, x_3158.z, x_3158.w);
            let x_3160 : vec4<f32> = u_xlat10;
            let x_3163 : vec4<f32> = x_733.x_AdditionalShadowmapSize;
            let x_3166 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3160.x, x_3160.y) * vec2<f32>(x_3163.z, x_3163.w)) + -(vec2<f32>(x_3166.x, x_3166.y)));
            let x_3170 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3170.x, x_3170.x, x_3170.y, x_3170.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3173 : vec4<f32> = u_xlat12;
            let x_3175 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3173.x, x_3173.x, x_3173.z, x_3173.z) * vec4<f32>(x_3175.x, x_3175.x, x_3175.z, x_3175.z));
            let x_3178 : vec4<f32> = u_xlat13;
            let x_3180 : vec2<f32> = (vec2<f32>(x_3178.y, x_3178.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3181 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3181.x, x_3180.x, x_3181.z, x_3180.y);
            let x_3183 : vec4<f32> = u_xlat13;
            let x_3186 : vec2<f32> = u_xlat61;
            let x_3188 : vec2<f32> = ((vec2<f32>(x_3183.x, x_3183.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3186));
            let x_3189 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3188.x, x_3189.y, x_3188.y, x_3189.w);
            let x_3191 : vec2<f32> = u_xlat61;
            let x_3193 : vec2<f32> = (-(x_3191) + vec2<f32>(1.0f, 1.0f));
            let x_3194 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3193.x, x_3193.y, x_3194.z, x_3194.w);
            let x_3196 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_3196, vec2<f32>(0.0f, 0.0f));
            let x_3198 : vec2<f32> = u_xlat63;
            let x_3200 : vec2<f32> = u_xlat63;
            let x_3202 : vec4<f32> = u_xlat13;
            let x_3204 : vec2<f32> = ((-(x_3198) * x_3200) + vec2<f32>(x_3202.x, x_3202.y));
            let x_3205 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3204.x, x_3204.y, x_3205.z, x_3205.w);
            let x_3207 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_3207, vec2<f32>(0.0f, 0.0f));
            let x_3210 : vec2<f32> = u_xlat63;
            let x_3212 : vec2<f32> = u_xlat63;
            let x_3214 : vec4<f32> = u_xlat12;
            let x_3216 : vec2<f32> = ((-(x_3210) * x_3212) + vec2<f32>(x_3214.y, x_3214.w));
            let x_3217 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_3216.x, x_3217.y, x_3216.y);
            let x_3219 : vec4<f32> = u_xlat13;
            let x_3221 : vec2<f32> = (vec2<f32>(x_3219.x, x_3219.y) + vec2<f32>(2.0f, 2.0f));
            let x_3222 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3221.x, x_3221.y, x_3222.z, x_3222.w);
            let x_3224 : vec3<f32> = u_xlat37;
            let x_3226 : vec2<f32> = (vec2<f32>(x_3224.x, x_3224.z) + vec2<f32>(2.0f, 2.0f));
            let x_3227 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3227.x, x_3226.x, x_3227.z, x_3226.y);
            let x_3230 : f32 = u_xlat12.y;
            u_xlat15.z = (x_3230 * 0.08163200318813323975f);
            let x_3233 : vec4<f32> = u_xlat12;
            let x_3235 : vec3<f32> = (vec3<f32>(x_3233.z, x_3233.x, x_3233.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3236 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3235.x, x_3235.y, x_3235.z, x_3236.w);
            let x_3238 : vec4<f32> = u_xlat13;
            let x_3240 : vec2<f32> = (vec2<f32>(x_3238.x, x_3238.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3241 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3240.x, x_3240.y, x_3241.z, x_3241.w);
            let x_3244 : f32 = u_xlat16.y;
            u_xlat15.x = x_3244;
            let x_3246 : vec2<f32> = u_xlat61;
            let x_3249 : vec2<f32> = ((vec2<f32>(x_3246.x, x_3246.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3250 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3250.x, x_3249.x, x_3250.z, x_3249.y);
            let x_3252 : vec2<f32> = u_xlat61;
            let x_3255 : vec2<f32> = ((vec2<f32>(x_3252.x, x_3252.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3256 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3255.x, x_3256.y, x_3255.y, x_3256.w);
            let x_3259 : f32 = u_xlat12.x;
            u_xlat13.y = x_3259;
            let x_3262 : f32 = u_xlat14.y;
            u_xlat13.w = x_3262;
            let x_3264 : vec4<f32> = u_xlat13;
            let x_3265 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3264 + x_3265);
            let x_3267 : vec2<f32> = u_xlat61;
            let x_3270 : vec2<f32> = ((vec2<f32>(x_3267.y, x_3267.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3271 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3271.x, x_3270.x, x_3271.z, x_3270.y);
            let x_3273 : vec2<f32> = u_xlat61;
            let x_3276 : vec2<f32> = ((vec2<f32>(x_3273.y, x_3273.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3277 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3276.x, x_3277.y, x_3276.y, x_3277.w);
            let x_3280 : f32 = u_xlat12.y;
            u_xlat14.y = x_3280;
            let x_3282 : vec4<f32> = u_xlat14;
            let x_3283 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_3282 + x_3283);
            let x_3285 : vec4<f32> = u_xlat13;
            let x_3286 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_3285 / x_3286);
            let x_3288 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3288 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3290 : vec4<f32> = u_xlat14;
            let x_3291 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_3290 / x_3291);
            let x_3293 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3293 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3295 : vec4<f32> = u_xlat13;
            let x_3298 : vec4<f32> = x_733.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3295.w, x_3295.x, x_3295.y, x_3295.z) * vec4<f32>(x_3298.x, x_3298.x, x_3298.x, x_3298.x));
            let x_3301 : vec4<f32> = u_xlat14;
            let x_3304 : vec4<f32> = x_733.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3301.x, x_3301.w, x_3301.y, x_3301.z) * vec4<f32>(x_3304.y, x_3304.y, x_3304.y, x_3304.y));
            let x_3307 : vec4<f32> = u_xlat13;
            let x_3308 : vec3<f32> = vec3<f32>(x_3307.y, x_3307.z, x_3307.w);
            let x_3309 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3308.x, x_3309.y, x_3308.y, x_3308.z);
            let x_3312 : f32 = u_xlat14.x;
            u_xlat16.y = x_3312;
            let x_3314 : vec4<f32> = u_xlat11;
            let x_3317 : vec4<f32> = x_733.x_AdditionalShadowmapSize;
            let x_3320 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3314.x, x_3314.y, x_3314.x, x_3314.y) * vec4<f32>(x_3317.x, x_3317.y, x_3317.x, x_3317.y)) + vec4<f32>(x_3320.x, x_3320.y, x_3320.z, x_3320.y));
            let x_3323 : vec4<f32> = u_xlat11;
            let x_3326 : vec4<f32> = x_733.x_AdditionalShadowmapSize;
            let x_3329 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_3323.x, x_3323.y) * vec2<f32>(x_3326.x, x_3326.y)) + vec2<f32>(x_3329.w, x_3329.y));
            let x_3333 : f32 = u_xlat16.y;
            u_xlat13.y = x_3333;
            let x_3336 : f32 = u_xlat14.z;
            u_xlat16.y = x_3336;
            let x_3338 : vec4<f32> = u_xlat11;
            let x_3341 : vec4<f32> = x_733.x_AdditionalShadowmapSize;
            let x_3344 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3338.x, x_3338.y, x_3338.x, x_3338.y) * vec4<f32>(x_3341.x, x_3341.y, x_3341.x, x_3341.y)) + vec4<f32>(x_3344.x, x_3344.y, x_3344.z, x_3344.y));
            let x_3347 : vec4<f32> = u_xlat11;
            let x_3350 : vec4<f32> = x_733.x_AdditionalShadowmapSize;
            let x_3353 : vec4<f32> = u_xlat16;
            let x_3355 : vec2<f32> = ((vec2<f32>(x_3347.x, x_3347.y) * vec2<f32>(x_3350.x, x_3350.y)) + vec2<f32>(x_3353.w, x_3353.y));
            let x_3356 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3355.x, x_3355.y, x_3356.z, x_3356.w);
            let x_3359 : f32 = u_xlat16.y;
            u_xlat13.z = x_3359;
            let x_3362 : vec4<f32> = u_xlat11;
            let x_3365 : vec4<f32> = x_733.x_AdditionalShadowmapSize;
            let x_3368 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3362.x, x_3362.y, x_3362.x, x_3362.y) * vec4<f32>(x_3365.x, x_3365.y, x_3365.x, x_3365.y)) + vec4<f32>(x_3368.x, x_3368.y, x_3368.x, x_3368.z));
            let x_3372 : f32 = u_xlat14.w;
            u_xlat16.y = x_3372;
            let x_3375 : vec4<f32> = u_xlat11;
            let x_3378 : vec4<f32> = x_733.x_AdditionalShadowmapSize;
            let x_3381 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3375.x, x_3375.y, x_3375.x, x_3375.y) * vec4<f32>(x_3378.x, x_3378.y, x_3378.x, x_3378.y)) + vec4<f32>(x_3381.x, x_3381.y, x_3381.z, x_3381.y));
            let x_3385 : vec4<f32> = u_xlat11;
            let x_3388 : vec4<f32> = x_733.x_AdditionalShadowmapSize;
            let x_3391 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3385.x, x_3385.y) * vec2<f32>(x_3388.x, x_3388.y)) + vec2<f32>(x_3391.w, x_3391.y));
            let x_3395 : f32 = u_xlat16.y;
            u_xlat13.w = x_3395;
            let x_3398 : vec4<f32> = u_xlat11;
            let x_3401 : vec4<f32> = x_733.x_AdditionalShadowmapSize;
            let x_3404 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3398.x, x_3398.y) * vec2<f32>(x_3401.x, x_3401.y)) + vec2<f32>(x_3404.x, x_3404.w));
            let x_3407 : vec4<f32> = u_xlat16;
            let x_3408 : vec3<f32> = vec3<f32>(x_3407.x, x_3407.z, x_3407.w);
            let x_3409 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3408.x, x_3409.y, x_3408.y, x_3408.z);
            let x_3411 : vec4<f32> = u_xlat11;
            let x_3414 : vec4<f32> = x_733.x_AdditionalShadowmapSize;
            let x_3417 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3411.x, x_3411.y, x_3411.x, x_3411.y) * vec4<f32>(x_3414.x, x_3414.y, x_3414.x, x_3414.y)) + vec4<f32>(x_3417.x, x_3417.y, x_3417.z, x_3417.y));
            let x_3420 : vec4<f32> = u_xlat11;
            let x_3423 : vec4<f32> = x_733.x_AdditionalShadowmapSize;
            let x_3426 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3420.x, x_3420.y) * vec2<f32>(x_3423.x, x_3423.y)) + vec2<f32>(x_3426.w, x_3426.y));
            let x_3430 : f32 = u_xlat13.x;
            u_xlat14.x = x_3430;
            let x_3432 : vec4<f32> = u_xlat11;
            let x_3435 : vec4<f32> = x_733.x_AdditionalShadowmapSize;
            let x_3438 : vec4<f32> = u_xlat14;
            let x_3440 : vec2<f32> = ((vec2<f32>(x_3432.x, x_3432.y) * vec2<f32>(x_3435.x, x_3435.y)) + vec2<f32>(x_3438.x, x_3438.y));
            let x_3441 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3440.x, x_3440.y, x_3441.z, x_3441.w);
            let x_3444 : vec4<f32> = u_xlat12;
            let x_3446 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3444.x, x_3444.x, x_3444.x, x_3444.x) * x_3446);
            let x_3449 : vec4<f32> = u_xlat12;
            let x_3451 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3449.y, x_3449.y, x_3449.y, x_3449.y) * x_3451);
            let x_3454 : vec4<f32> = u_xlat12;
            let x_3456 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3454.z, x_3454.z, x_3454.z, x_3454.z) * x_3456);
            let x_3458 : vec4<f32> = u_xlat12;
            let x_3460 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3458.w, x_3458.w, x_3458.w, x_3458.w) * x_3460);
            let x_3463 : vec4<f32> = u_xlat17;
            let x_3464 : vec2<f32> = vec2<f32>(x_3463.x, x_3463.y);
            let x_3466 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3464.x, x_3464.y, x_3466);
            let x_3473 : vec3<f32> = txVec43;
            let x_3475 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3473.xy, x_3473.z);
            u_xlat84 = x_3475;
            let x_3477 : vec4<f32> = u_xlat17;
            let x_3478 : vec2<f32> = vec2<f32>(x_3477.z, x_3477.w);
            let x_3480 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3478.x, x_3478.y, x_3480);
            let x_3487 : vec3<f32> = txVec44;
            let x_3489 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3487.xy, x_3487.z);
            u_xlat85 = x_3489;
            let x_3490 : f32 = u_xlat85;
            let x_3492 : f32 = u_xlat22.y;
            u_xlat85 = (x_3490 * x_3492);
            let x_3495 : f32 = u_xlat22.x;
            let x_3496 : f32 = u_xlat84;
            let x_3498 : f32 = u_xlat85;
            u_xlat84 = ((x_3495 * x_3496) + x_3498);
            let x_3501 : vec2<f32> = u_xlat61;
            let x_3503 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3501.x, x_3501.y, x_3503);
            let x_3510 : vec3<f32> = txVec45;
            let x_3512 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3510.xy, x_3510.z);
            u_xlat85 = x_3512;
            let x_3514 : f32 = u_xlat22.z;
            let x_3515 : f32 = u_xlat85;
            let x_3517 : f32 = u_xlat84;
            u_xlat84 = ((x_3514 * x_3515) + x_3517);
            let x_3520 : vec4<f32> = u_xlat20;
            let x_3521 : vec2<f32> = vec2<f32>(x_3520.x, x_3520.y);
            let x_3523 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3521.x, x_3521.y, x_3523);
            let x_3530 : vec3<f32> = txVec46;
            let x_3532 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3530.xy, x_3530.z);
            u_xlat85 = x_3532;
            let x_3534 : f32 = u_xlat22.w;
            let x_3535 : f32 = u_xlat85;
            let x_3537 : f32 = u_xlat84;
            u_xlat84 = ((x_3534 * x_3535) + x_3537);
            let x_3540 : vec4<f32> = u_xlat18;
            let x_3541 : vec2<f32> = vec2<f32>(x_3540.x, x_3540.y);
            let x_3543 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3541.x, x_3541.y, x_3543);
            let x_3550 : vec3<f32> = txVec47;
            let x_3552 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3550.xy, x_3550.z);
            u_xlat85 = x_3552;
            let x_3554 : f32 = u_xlat23.x;
            let x_3555 : f32 = u_xlat85;
            let x_3557 : f32 = u_xlat84;
            u_xlat84 = ((x_3554 * x_3555) + x_3557);
            let x_3560 : vec4<f32> = u_xlat18;
            let x_3561 : vec2<f32> = vec2<f32>(x_3560.z, x_3560.w);
            let x_3563 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3561.x, x_3561.y, x_3563);
            let x_3570 : vec3<f32> = txVec48;
            let x_3572 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3570.xy, x_3570.z);
            u_xlat85 = x_3572;
            let x_3574 : f32 = u_xlat23.y;
            let x_3575 : f32 = u_xlat85;
            let x_3577 : f32 = u_xlat84;
            u_xlat84 = ((x_3574 * x_3575) + x_3577);
            let x_3580 : vec4<f32> = u_xlat19;
            let x_3581 : vec2<f32> = vec2<f32>(x_3580.x, x_3580.y);
            let x_3583 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3581.x, x_3581.y, x_3583);
            let x_3590 : vec3<f32> = txVec49;
            let x_3592 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3590.xy, x_3590.z);
            u_xlat85 = x_3592;
            let x_3594 : f32 = u_xlat23.z;
            let x_3595 : f32 = u_xlat85;
            let x_3597 : f32 = u_xlat84;
            u_xlat84 = ((x_3594 * x_3595) + x_3597);
            let x_3600 : vec4<f32> = u_xlat20;
            let x_3601 : vec2<f32> = vec2<f32>(x_3600.z, x_3600.w);
            let x_3603 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3601.x, x_3601.y, x_3603);
            let x_3610 : vec3<f32> = txVec50;
            let x_3612 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3610.xy, x_3610.z);
            u_xlat85 = x_3612;
            let x_3614 : f32 = u_xlat23.w;
            let x_3615 : f32 = u_xlat85;
            let x_3617 : f32 = u_xlat84;
            u_xlat84 = ((x_3614 * x_3615) + x_3617);
            let x_3620 : vec4<f32> = u_xlat21;
            let x_3621 : vec2<f32> = vec2<f32>(x_3620.x, x_3620.y);
            let x_3623 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3621.x, x_3621.y, x_3623);
            let x_3630 : vec3<f32> = txVec51;
            let x_3632 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3630.xy, x_3630.z);
            u_xlat85 = x_3632;
            let x_3634 : f32 = u_xlat24.x;
            let x_3635 : f32 = u_xlat85;
            let x_3637 : f32 = u_xlat84;
            u_xlat84 = ((x_3634 * x_3635) + x_3637);
            let x_3640 : vec4<f32> = u_xlat21;
            let x_3641 : vec2<f32> = vec2<f32>(x_3640.z, x_3640.w);
            let x_3643 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_3641.x, x_3641.y, x_3643);
            let x_3650 : vec3<f32> = txVec52;
            let x_3652 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3650.xy, x_3650.z);
            u_xlat85 = x_3652;
            let x_3654 : f32 = u_xlat24.y;
            let x_3655 : f32 = u_xlat85;
            let x_3657 : f32 = u_xlat84;
            u_xlat84 = ((x_3654 * x_3655) + x_3657);
            let x_3660 : vec2<f32> = u_xlat38;
            let x_3662 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_3660.x, x_3660.y, x_3662);
            let x_3669 : vec3<f32> = txVec53;
            let x_3671 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3669.xy, x_3669.z);
            u_xlat85 = x_3671;
            let x_3673 : f32 = u_xlat24.z;
            let x_3674 : f32 = u_xlat85;
            let x_3676 : f32 = u_xlat84;
            u_xlat84 = ((x_3673 * x_3674) + x_3676);
            let x_3679 : vec2<f32> = u_xlat69;
            let x_3681 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_3679.x, x_3679.y, x_3681);
            let x_3688 : vec3<f32> = txVec54;
            let x_3690 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3688.xy, x_3688.z);
            u_xlat85 = x_3690;
            let x_3692 : f32 = u_xlat24.w;
            let x_3693 : f32 = u_xlat85;
            let x_3695 : f32 = u_xlat84;
            u_xlat84 = ((x_3692 * x_3693) + x_3695);
            let x_3698 : vec4<f32> = u_xlat16;
            let x_3699 : vec2<f32> = vec2<f32>(x_3698.x, x_3698.y);
            let x_3701 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_3699.x, x_3699.y, x_3701);
            let x_3708 : vec3<f32> = txVec55;
            let x_3710 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3708.xy, x_3708.z);
            u_xlat85 = x_3710;
            let x_3712 : f32 = u_xlat12.x;
            let x_3713 : f32 = u_xlat85;
            let x_3715 : f32 = u_xlat84;
            u_xlat84 = ((x_3712 * x_3713) + x_3715);
            let x_3718 : vec4<f32> = u_xlat16;
            let x_3719 : vec2<f32> = vec2<f32>(x_3718.z, x_3718.w);
            let x_3721 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_3719.x, x_3719.y, x_3721);
            let x_3728 : vec3<f32> = txVec56;
            let x_3730 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3728.xy, x_3728.z);
            u_xlat85 = x_3730;
            let x_3732 : f32 = u_xlat12.y;
            let x_3733 : f32 = u_xlat85;
            let x_3735 : f32 = u_xlat84;
            u_xlat84 = ((x_3732 * x_3733) + x_3735);
            let x_3738 : vec2<f32> = u_xlat64;
            let x_3740 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_3738.x, x_3738.y, x_3740);
            let x_3747 : vec3<f32> = txVec57;
            let x_3749 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3747.xy, x_3747.z);
            u_xlat85 = x_3749;
            let x_3751 : f32 = u_xlat12.z;
            let x_3752 : f32 = u_xlat85;
            let x_3754 : f32 = u_xlat84;
            u_xlat84 = ((x_3751 * x_3752) + x_3754);
            let x_3757 : vec4<f32> = u_xlat11;
            let x_3758 : vec2<f32> = vec2<f32>(x_3757.x, x_3757.y);
            let x_3760 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_3758.x, x_3758.y, x_3760);
            let x_3767 : vec3<f32> = txVec58;
            let x_3769 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3767.xy, x_3767.z);
            u_xlat85 = x_3769;
            let x_3771 : f32 = u_xlat12.w;
            let x_3772 : f32 = u_xlat85;
            let x_3774 : f32 = u_xlat84;
            u_xlat83 = ((x_3771 * x_3772) + x_3774);
          }
        }
      } else {
        let x_3778 : vec4<f32> = u_xlat10;
        let x_3779 : vec2<f32> = vec2<f32>(x_3778.x, x_3778.y);
        let x_3781 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_3779.x, x_3779.y, x_3781);
        let x_3788 : vec3<f32> = txVec59;
        let x_3790 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3788.xy, x_3788.z);
        u_xlat83 = x_3790;
      }
      let x_3791 : i32 = u_xlati80;
      let x_3793 : f32 = x_733.x_AdditionalShadowParams[x_3791].x;
      u_xlat84 = (1.0f + -(x_3793));
      let x_3796 : f32 = u_xlat83;
      let x_3797 : i32 = u_xlati80;
      let x_3799 : f32 = x_733.x_AdditionalShadowParams[x_3797].x;
      let x_3801 : f32 = u_xlat84;
      u_xlat83 = ((x_3796 * x_3799) + x_3801);
      let x_3804 : f32 = u_xlat10.z;
      u_xlatb84 = (0.0f >= x_3804);
      let x_3807 : f32 = u_xlat10.z;
      u_xlatb10.x = (x_3807 >= 1.0f);
      let x_3810 : bool = u_xlatb84;
      let x_3812 : bool = u_xlatb10.x;
      u_xlatb84 = (x_3810 | x_3812);
      let x_3814 : bool = u_xlatb84;
      let x_3815 : f32 = u_xlat83;
      u_xlat83 = select(x_3815, 1.0f, x_3814);
    } else {
      u_xlat83 = 1.0f;
    }
    let x_3818 : f32 = u_xlat83;
    u_xlat84 = (-(x_3818) + 1.0f);
    let x_3821 : f32 = u_xlat77;
    let x_3822 : f32 = u_xlat84;
    let x_3824 : f32 = u_xlat83;
    u_xlat83 = ((x_3821 * x_3822) + x_3824);
    let x_3826 : f32 = u_xlat81;
    let x_3827 : f32 = u_xlat83;
    u_xlat81 = (x_3826 * x_3827);
    let x_3829 : vec4<f32> = u_xlat1;
    let x_3831 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_3829.x, x_3829.y, x_3829.z), vec3<f32>(x_3831.x, x_3831.y, x_3831.z));
    let x_3834 : f32 = u_xlat83;
    u_xlat83 = clamp(x_3834, 0.0f, 1.0f);
    let x_3836 : f32 = u_xlat81;
    let x_3837 : f32 = u_xlat83;
    u_xlat81 = (x_3836 * x_3837);
    let x_3839 : f32 = u_xlat81;
    let x_3841 : i32 = u_xlati80;
    let x_3843 : vec4<f32> = x_2388.x_AdditionalLightsColor[x_3841];
    let x_3845 : vec3<f32> = (vec3<f32>(x_3839, x_3839, x_3839) * vec3<f32>(x_3843.x, x_3843.y, x_3843.z));
    let x_3846 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3845.x, x_3845.y, x_3845.z, x_3846.w);
    let x_3848 : vec4<f32> = u_xlat8;
    let x_3850 : f32 = u_xlat82;
    let x_3853 : vec3<f32> = u_xlat2;
    let x_3854 : vec3<f32> = ((vec3<f32>(x_3848.x, x_3848.y, x_3848.z) * vec3<f32>(x_3850, x_3850, x_3850)) + x_3853);
    let x_3855 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3854.x, x_3854.y, x_3854.z, x_3855.w);
    let x_3857 : vec4<f32> = u_xlat8;
    let x_3859 : vec4<f32> = u_xlat8;
    u_xlat80 = dot(vec3<f32>(x_3857.x, x_3857.y, x_3857.z), vec3<f32>(x_3859.x, x_3859.y, x_3859.z));
    let x_3862 : f32 = u_xlat80;
    u_xlat80 = max(x_3862, 1.17549435e-38f);
    let x_3864 : f32 = u_xlat80;
    u_xlat80 = inverseSqrt(x_3864);
    let x_3866 : f32 = u_xlat80;
    let x_3868 : vec4<f32> = u_xlat8;
    let x_3870 : vec3<f32> = (vec3<f32>(x_3866, x_3866, x_3866) * vec3<f32>(x_3868.x, x_3868.y, x_3868.z));
    let x_3871 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3870.x, x_3870.y, x_3870.z, x_3871.w);
    let x_3873 : vec4<f32> = u_xlat1;
    let x_3875 : vec4<f32> = u_xlat8;
    u_xlat80 = dot(vec3<f32>(x_3873.x, x_3873.y, x_3873.z), vec3<f32>(x_3875.x, x_3875.y, x_3875.z));
    let x_3878 : f32 = u_xlat80;
    u_xlat80 = clamp(x_3878, 0.0f, 1.0f);
    let x_3880 : vec4<f32> = u_xlat9;
    let x_3882 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_3880.x, x_3880.y, x_3880.z), vec3<f32>(x_3882.x, x_3882.y, x_3882.z));
    let x_3885 : f32 = u_xlat81;
    u_xlat81 = clamp(x_3885, 0.0f, 1.0f);
    let x_3887 : f32 = u_xlat80;
    let x_3888 : f32 = u_xlat80;
    u_xlat80 = (x_3887 * x_3888);
    let x_3890 : f32 = u_xlat80;
    let x_3892 : f32 = u_xlat0.x;
    u_xlat80 = ((x_3890 * x_3892) + 1.00001001358032226562f);
    let x_3895 : f32 = u_xlat81;
    let x_3896 : f32 = u_xlat81;
    u_xlat81 = (x_3895 * x_3896);
    let x_3898 : f32 = u_xlat80;
    let x_3899 : f32 = u_xlat80;
    u_xlat80 = (x_3898 * x_3899);
    let x_3901 : f32 = u_xlat81;
    u_xlat81 = max(x_3901, 0.10000000149011611938f);
    let x_3903 : f32 = u_xlat80;
    let x_3904 : f32 = u_xlat81;
    u_xlat80 = (x_3903 * x_3904);
    let x_3906 : f32 = u_xlat78;
    let x_3907 : f32 = u_xlat80;
    u_xlat80 = (x_3906 * x_3907);
    let x_3909 : f32 = u_xlat76;
    let x_3910 : f32 = u_xlat80;
    u_xlat80 = (x_3909 / x_3910);
    let x_3912 : vec4<f32> = u_xlat5;
    let x_3914 : f32 = u_xlat80;
    let x_3917 : vec4<f32> = u_xlat4;
    let x_3919 : vec3<f32> = ((vec3<f32>(x_3912.x, x_3912.y, x_3912.z) * vec3<f32>(x_3914, x_3914, x_3914)) + vec3<f32>(x_3917.x, x_3917.y, x_3917.z));
    let x_3920 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3919.x, x_3919.y, x_3919.z, x_3920.w);
    let x_3922 : vec4<f32> = u_xlat8;
    let x_3924 : vec4<f32> = u_xlat10;
    let x_3927 : vec4<f32> = u_xlat7;
    let x_3929 : vec3<f32> = ((vec3<f32>(x_3922.x, x_3922.y, x_3922.z) * vec3<f32>(x_3924.x, x_3924.y, x_3924.z)) + vec3<f32>(x_3927.x, x_3927.y, x_3927.z));
    let x_3930 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3929.x, x_3929.y, x_3929.z, x_3930.w);

    continuing {
      let x_3932 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3932 + bitcast<u32>(1i));
    }
  }
  let x_3934 : vec4<f32> = u_xlat3;
  let x_3936 : f32 = u_xlat25;
  let x_3939 : vec4<f32> = u_xlat6;
  u_xlat0 = ((vec3<f32>(x_3934.x, x_3934.y, x_3934.z) * vec3<f32>(x_3936, x_3936, x_3936)) + vec3<f32>(x_3939.x, x_3939.y, x_3939.z));
  let x_3942 : vec4<f32> = u_xlat7;
  let x_3944 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_3942.x, x_3942.y, x_3942.z) + x_3944);
  let x_3948 : f32 = u_xlat75;
  let x_3950 : vec3<f32> = u_xlat0;
  let x_3951 : vec3<f32> = (vec3<f32>(x_3948, x_3948, x_3948) * x_3950);
  let x_3952 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3951.x, x_3951.y, x_3951.z, x_3952.w);
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


