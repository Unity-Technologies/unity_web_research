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

var<private> u_xlatb77 : bool;

var<private> u_xlat50 : f32;

var<private> u_xlat25 : f32;

var<private> u_xlatb1 : bool;

var<private> u_xlat26 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_602 : UnityPerDraw;

var<private> u_xlat77 : f32;

var<private> u_xlat78 : f32;

var<private> u_xlatb79 : bool;

@group(1) @binding(4) var<uniform> x_745 : LightShadows;

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

@group(1) @binding(1) var<uniform> x_2400 : AdditionalLights;

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
  var x_550 : f32;
  var x_561 : f32;
  var x_572 : f32;
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
  var x_2538 : f32;
  var x_2548 : f32;
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
  let x_548 : bool = u_xlatb1;
  if (x_548) {
    let x_554 : f32 = u_xlat26.x;
    x_550 = x_554;
  } else {
    let x_557 : f32 = x_111.unity_MatrixV[0i].z;
    x_550 = x_557;
  }
  let x_558 : f32 = x_550;
  u_xlat2.x = x_558;
  let x_560 : bool = u_xlatb1;
  if (x_560) {
    let x_565 : f32 = u_xlat26.y;
    x_561 = x_565;
  } else {
    let x_568 : f32 = x_111.unity_MatrixV[1i].z;
    x_561 = x_568;
  }
  let x_569 : f32 = x_561;
  u_xlat2.y = x_569;
  let x_571 : bool = u_xlatb1;
  if (x_571) {
    let x_576 : f32 = u_xlat26.z;
    x_572 = x_576;
  } else {
    let x_580 : f32 = x_111.unity_MatrixV[2i].z;
    x_572 = x_580;
  }
  let x_581 : f32 = x_572;
  u_xlat2.z = x_581;
  let x_584 : vec3<f32> = vs_TEXCOORD3;
  let x_585 : vec3<f32> = vs_TEXCOORD3;
  u_xlat1.x = dot(x_584, x_585);
  let x_589 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_589);
  let x_592 : vec4<f32> = u_xlat1;
  let x_594 : vec3<f32> = vs_TEXCOORD3;
  let x_595 : vec3<f32> = (vec3<f32>(x_592.x, x_592.x, x_592.x) * x_594);
  let x_596 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_595.x, x_595.y, x_595.z, x_596.w);
  u_xlat1.w = 1.0f;
  let x_604 : vec4<f32> = x_602.unity_SHAr;
  let x_605 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_604, x_605);
  let x_609 : vec4<f32> = x_602.unity_SHAg;
  let x_610 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_609, x_610);
  let x_614 : vec4<f32> = x_602.unity_SHAb;
  let x_615 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_614, x_615);
  let x_618 : vec4<f32> = u_xlat1;
  let x_620 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_618.y, x_618.z, x_618.z, x_618.x) * vec4<f32>(x_620.x, x_620.y, x_620.z, x_620.z));
  let x_624 : vec4<f32> = x_602.unity_SHBr;
  let x_625 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_624, x_625);
  let x_629 : vec4<f32> = x_602.unity_SHBg;
  let x_630 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_629, x_630);
  let x_634 : vec4<f32> = x_602.unity_SHBb;
  let x_635 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_634, x_635);
  let x_639 : f32 = u_xlat1.y;
  let x_641 : f32 = u_xlat1.y;
  u_xlat76 = (x_639 * x_641);
  let x_644 : f32 = u_xlat1.x;
  let x_646 : f32 = u_xlat1.x;
  let x_648 : f32 = u_xlat76;
  u_xlat76 = ((x_644 * x_646) + -(x_648));
  let x_653 : vec4<f32> = x_602.unity_SHC;
  let x_655 : f32 = u_xlat76;
  let x_658 : vec4<f32> = u_xlat6;
  let x_660 : vec3<f32> = ((vec3<f32>(x_653.x, x_653.y, x_653.z) * vec3<f32>(x_655, x_655, x_655)) + vec3<f32>(x_658.x, x_658.y, x_658.z));
  let x_661 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_660.x, x_660.y, x_660.z, x_661.w);
  let x_663 : vec4<f32> = u_xlat3;
  let x_665 : vec4<f32> = u_xlat4;
  let x_667 : vec3<f32> = (vec3<f32>(x_663.x, x_663.y, x_663.z) + vec3<f32>(x_665.x, x_665.y, x_665.z));
  let x_668 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_667.x, x_667.y, x_667.z, x_668.w);
  let x_670 : vec4<f32> = u_xlat3;
  let x_673 : vec3<f32> = max(vec3<f32>(x_670.x, x_670.y, x_670.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_674 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_673.x, x_673.y, x_673.z, x_674.w);
  let x_677 : f32 = u_xlat0.x;
  u_xlat76 = ((-(x_677) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_683 : f32 = u_xlat50;
  let x_684 : f32 = u_xlat76;
  u_xlat77 = (x_683 + -(x_684));
  let x_687 : f32 = u_xlat76;
  let x_689 : vec4<f32> = u_xlat5;
  let x_691 : vec3<f32> = (vec3<f32>(x_687, x_687, x_687) * vec3<f32>(x_689.x, x_689.y, x_689.z));
  let x_692 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_691.x, x_691.y, x_691.z, x_692.w);
  let x_694 : vec4<f32> = u_xlat5;
  let x_698 : vec3<f32> = (vec3<f32>(x_694.x, x_694.y, x_694.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_699 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_698.x, x_698.y, x_698.z, x_699.w);
  let x_701 : vec3<f32> = u_xlat0;
  let x_703 : vec4<f32> = u_xlat5;
  let x_708 : vec3<f32> = ((vec3<f32>(x_701.x, x_701.x, x_701.x) * vec3<f32>(x_703.x, x_703.y, x_703.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_709 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_708.x, x_708.y, x_708.z, x_709.w);
  let x_711 : f32 = u_xlat50;
  u_xlat0.x = (-(x_711) + 1.0f);
  let x_716 : f32 = u_xlat0.x;
  let x_718 : f32 = u_xlat0.x;
  u_xlat50 = (x_716 * x_718);
  let x_720 : f32 = u_xlat50;
  u_xlat50 = max(x_720, 0.0078125f);
  let x_723 : f32 = u_xlat50;
  let x_724 : f32 = u_xlat50;
  u_xlat76 = (x_723 * x_724);
  let x_726 : f32 = u_xlat77;
  u_xlat77 = (x_726 + 1.0f);
  let x_728 : f32 = u_xlat77;
  u_xlat77 = clamp(x_728, 0.0f, 1.0f);
  let x_731 : f32 = u_xlat50;
  u_xlat78 = ((x_731 * 4.0f) + 2.0f);
  let x_735 : f32 = u_xlat25;
  u_xlat25 = min(x_735, 1.0f);
  let x_747 : f32 = x_745.x_MainLightShadowParams.y;
  u_xlatb79 = (0.0f < x_747);
  let x_749 : bool = u_xlatb79;
  if (x_749) {
    let x_753 : f32 = x_745.x_MainLightShadowParams.y;
    u_xlatb79 = (x_753 == 1.0f);
    let x_755 : bool = u_xlatb79;
    if (x_755) {
      let x_759 : vec4<f32> = vs_TEXCOORD8;
      let x_762 : vec4<f32> = x_745.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_759.x, x_759.y, x_759.x, x_759.y) + x_762);
      let x_766 : vec4<f32> = u_xlat6;
      let x_767 : vec2<f32> = vec2<f32>(x_766.x, x_766.y);
      let x_770 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_767.x, x_767.y, x_770);
      let x_782 : vec3<f32> = txVec0;
      let x_784 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_782.xy, x_782.z);
      u_xlat7.x = x_784;
      let x_787 : vec4<f32> = u_xlat6;
      let x_788 : vec2<f32> = vec2<f32>(x_787.z, x_787.w);
      let x_790 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_788.x, x_788.y, x_790);
      let x_797 : vec3<f32> = txVec1;
      let x_799 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_797.xy, x_797.z);
      u_xlat7.y = x_799;
      let x_801 : vec4<f32> = vs_TEXCOORD8;
      let x_804 : vec4<f32> = x_745.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_801.x, x_801.y, x_801.x, x_801.y) + x_804);
      let x_807 : vec4<f32> = u_xlat6;
      let x_808 : vec2<f32> = vec2<f32>(x_807.x, x_807.y);
      let x_810 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_808.x, x_808.y, x_810);
      let x_817 : vec3<f32> = txVec2;
      let x_819 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_817.xy, x_817.z);
      u_xlat7.z = x_819;
      let x_822 : vec4<f32> = u_xlat6;
      let x_823 : vec2<f32> = vec2<f32>(x_822.z, x_822.w);
      let x_825 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_823.x, x_823.y, x_825);
      let x_832 : vec3<f32> = txVec3;
      let x_834 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_832.xy, x_832.z);
      u_xlat7.w = x_834;
      let x_837 : vec4<f32> = u_xlat7;
      u_xlat79 = dot(x_837, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_844 : f32 = x_745.x_MainLightShadowParams.y;
      u_xlatb80 = (x_844 == 2.0f);
      let x_846 : bool = u_xlatb80;
      if (x_846) {
        let x_849 : vec4<f32> = vs_TEXCOORD8;
        let x_852 : vec4<f32> = x_745.x_MainLightShadowmapSize;
        let x_855 : vec2<f32> = ((vec2<f32>(x_849.x, x_849.y) * vec2<f32>(x_852.z, x_852.w)) + vec2<f32>(0.5f, 0.5f));
        let x_856 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_855.x, x_855.y, x_856.z, x_856.w);
        let x_858 : vec4<f32> = u_xlat6;
        let x_860 : vec2<f32> = floor(vec2<f32>(x_858.x, x_858.y));
        let x_861 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_860.x, x_860.y, x_861.z, x_861.w);
        let x_865 : vec4<f32> = vs_TEXCOORD8;
        let x_868 : vec4<f32> = x_745.x_MainLightShadowmapSize;
        let x_871 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_865.x, x_865.y) * vec2<f32>(x_868.z, x_868.w)) + -(vec2<f32>(x_871.x, x_871.y)));
        let x_875 : vec2<f32> = u_xlat56;
        u_xlat7 = (vec4<f32>(x_875.x, x_875.x, x_875.y, x_875.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_879 : vec4<f32> = u_xlat7;
        let x_881 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_879.x, x_879.x, x_879.z, x_879.z) * vec4<f32>(x_881.x, x_881.x, x_881.z, x_881.z));
        let x_884 : vec4<f32> = u_xlat8;
        let x_888 : vec2<f32> = (vec2<f32>(x_884.y, x_884.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_889 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_888.x, x_889.y, x_888.y, x_889.w);
        let x_891 : vec4<f32> = u_xlat8;
        let x_894 : vec2<f32> = u_xlat56;
        let x_896 : vec2<f32> = ((vec2<f32>(x_891.x, x_891.z) * vec2<f32>(0.5f, 0.5f)) + -(x_894));
        let x_897 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_896.x, x_896.y, x_897.z, x_897.w);
        let x_900 : vec2<f32> = u_xlat56;
        u_xlat58 = (-(x_900) + vec2<f32>(1.0f, 1.0f));
        let x_904 : vec2<f32> = u_xlat56;
        let x_906 : vec2<f32> = min(x_904, vec2<f32>(0.0f, 0.0f));
        let x_907 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_906.x, x_906.y, x_907.z, x_907.w);
        let x_909 : vec4<f32> = u_xlat9;
        let x_912 : vec4<f32> = u_xlat9;
        let x_915 : vec2<f32> = u_xlat58;
        let x_916 : vec2<f32> = ((-(vec2<f32>(x_909.x, x_909.y)) * vec2<f32>(x_912.x, x_912.y)) + x_915);
        let x_917 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_916.x, x_916.y, x_917.z, x_917.w);
        let x_919 : vec2<f32> = u_xlat56;
        u_xlat56 = max(x_919, vec2<f32>(0.0f, 0.0f));
        let x_921 : vec2<f32> = u_xlat56;
        let x_923 : vec2<f32> = u_xlat56;
        let x_925 : vec4<f32> = u_xlat7;
        u_xlat56 = ((-(x_921) * x_923) + vec2<f32>(x_925.y, x_925.w));
        let x_928 : vec4<f32> = u_xlat9;
        let x_930 : vec2<f32> = (vec2<f32>(x_928.x, x_928.y) + vec2<f32>(1.0f, 1.0f));
        let x_931 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_930.x, x_930.y, x_931.z, x_931.w);
        let x_933 : vec2<f32> = u_xlat56;
        u_xlat56 = (x_933 + vec2<f32>(1.0f, 1.0f));
        let x_935 : vec4<f32> = u_xlat8;
        let x_939 : vec2<f32> = (vec2<f32>(x_935.x, x_935.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_940 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_939.x, x_939.y, x_940.z, x_940.w);
        let x_942 : vec2<f32> = u_xlat58;
        let x_943 : vec2<f32> = (x_942 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_944 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_943.x, x_943.y, x_944.z, x_944.w);
        let x_946 : vec4<f32> = u_xlat9;
        let x_948 : vec2<f32> = (vec2<f32>(x_946.x, x_946.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_949 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_948.x, x_948.y, x_949.z, x_949.w);
        let x_951 : vec2<f32> = u_xlat56;
        let x_952 : vec2<f32> = (x_951 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_953 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_952.x, x_952.y, x_953.z, x_953.w);
        let x_955 : vec4<f32> = u_xlat7;
        u_xlat56 = (vec2<f32>(x_955.y, x_955.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_959 : f32 = u_xlat9.x;
        u_xlat10.z = x_959;
        let x_962 : f32 = u_xlat56.x;
        u_xlat10.w = x_962;
        let x_965 : f32 = u_xlat11.x;
        u_xlat8.z = x_965;
        let x_968 : f32 = u_xlat7.x;
        u_xlat8.w = x_968;
        let x_970 : vec4<f32> = u_xlat8;
        let x_972 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_970.z, x_970.w, x_970.x, x_970.z) + vec4<f32>(x_972.z, x_972.w, x_972.x, x_972.z));
        let x_976 : f32 = u_xlat10.y;
        u_xlat9.z = x_976;
        let x_979 : f32 = u_xlat56.y;
        u_xlat9.w = x_979;
        let x_982 : f32 = u_xlat8.y;
        u_xlat11.z = x_982;
        let x_985 : f32 = u_xlat7.z;
        u_xlat11.w = x_985;
        let x_987 : vec4<f32> = u_xlat9;
        let x_989 : vec4<f32> = u_xlat11;
        let x_991 : vec3<f32> = (vec3<f32>(x_987.z, x_987.y, x_987.w) + vec3<f32>(x_989.z, x_989.y, x_989.w));
        let x_992 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_991.x, x_991.y, x_991.z, x_992.w);
        let x_994 : vec4<f32> = u_xlat8;
        let x_996 : vec4<f32> = u_xlat12;
        let x_998 : vec3<f32> = (vec3<f32>(x_994.x, x_994.z, x_994.w) / vec3<f32>(x_996.z, x_996.w, x_996.y));
        let x_999 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_998.x, x_998.y, x_998.z, x_999.w);
        let x_1001 : vec4<f32> = u_xlat8;
        let x_1007 : vec3<f32> = (vec3<f32>(x_1001.x, x_1001.y, x_1001.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1008 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1007.x, x_1007.y, x_1007.z, x_1008.w);
        let x_1010 : vec4<f32> = u_xlat11;
        let x_1012 : vec4<f32> = u_xlat7;
        let x_1014 : vec3<f32> = (vec3<f32>(x_1010.z, x_1010.y, x_1010.w) / vec3<f32>(x_1012.x, x_1012.y, x_1012.z));
        let x_1015 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1014.x, x_1014.y, x_1014.z, x_1015.w);
        let x_1017 : vec4<f32> = u_xlat9;
        let x_1019 : vec3<f32> = (vec3<f32>(x_1017.x, x_1017.y, x_1017.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1020 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1019.x, x_1019.y, x_1019.z, x_1020.w);
        let x_1022 : vec4<f32> = u_xlat8;
        let x_1025 : vec4<f32> = x_745.x_MainLightShadowmapSize;
        let x_1027 : vec3<f32> = (vec3<f32>(x_1022.y, x_1022.x, x_1022.z) * vec3<f32>(x_1025.x, x_1025.x, x_1025.x));
        let x_1028 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1027.x, x_1027.y, x_1027.z, x_1028.w);
        let x_1030 : vec4<f32> = u_xlat9;
        let x_1033 : vec4<f32> = x_745.x_MainLightShadowmapSize;
        let x_1035 : vec3<f32> = (vec3<f32>(x_1030.x, x_1030.y, x_1030.z) * vec3<f32>(x_1033.y, x_1033.y, x_1033.y));
        let x_1036 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1035.x, x_1035.y, x_1035.z, x_1036.w);
        let x_1039 : f32 = u_xlat9.x;
        u_xlat8.w = x_1039;
        let x_1041 : vec4<f32> = u_xlat6;
        let x_1044 : vec4<f32> = x_745.x_MainLightShadowmapSize;
        let x_1047 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1041.x, x_1041.y, x_1041.x, x_1041.y) * vec4<f32>(x_1044.x, x_1044.y, x_1044.x, x_1044.y)) + vec4<f32>(x_1047.y, x_1047.w, x_1047.x, x_1047.w));
        let x_1050 : vec4<f32> = u_xlat6;
        let x_1053 : vec4<f32> = x_745.x_MainLightShadowmapSize;
        let x_1056 : vec4<f32> = u_xlat8;
        u_xlat56 = ((vec2<f32>(x_1050.x, x_1050.y) * vec2<f32>(x_1053.x, x_1053.y)) + vec2<f32>(x_1056.z, x_1056.w));
        let x_1060 : f32 = u_xlat8.y;
        u_xlat9.w = x_1060;
        let x_1062 : vec4<f32> = u_xlat9;
        let x_1063 : vec2<f32> = vec2<f32>(x_1062.y, x_1062.z);
        let x_1064 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1064.x, x_1063.x, x_1064.z, x_1063.y);
        let x_1066 : vec4<f32> = u_xlat6;
        let x_1069 : vec4<f32> = x_745.x_MainLightShadowmapSize;
        let x_1072 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1066.x, x_1066.y, x_1066.x, x_1066.y) * vec4<f32>(x_1069.x, x_1069.y, x_1069.x, x_1069.y)) + vec4<f32>(x_1072.x, x_1072.y, x_1072.z, x_1072.y));
        let x_1075 : vec4<f32> = u_xlat6;
        let x_1078 : vec4<f32> = x_745.x_MainLightShadowmapSize;
        let x_1081 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1075.x, x_1075.y, x_1075.x, x_1075.y) * vec4<f32>(x_1078.x, x_1078.y, x_1078.x, x_1078.y)) + vec4<f32>(x_1081.w, x_1081.y, x_1081.w, x_1081.z));
        let x_1084 : vec4<f32> = u_xlat6;
        let x_1087 : vec4<f32> = x_745.x_MainLightShadowmapSize;
        let x_1090 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1084.x, x_1084.y, x_1084.x, x_1084.y) * vec4<f32>(x_1087.x, x_1087.y, x_1087.x, x_1087.y)) + vec4<f32>(x_1090.x, x_1090.w, x_1090.z, x_1090.w));
        let x_1093 : vec4<f32> = u_xlat7;
        let x_1095 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_1093.x, x_1093.x, x_1093.x, x_1093.y) * vec4<f32>(x_1095.z, x_1095.w, x_1095.y, x_1095.z));
        let x_1099 : vec4<f32> = u_xlat7;
        let x_1101 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_1099.y, x_1099.y, x_1099.z, x_1099.z) * x_1101);
        let x_1105 : f32 = u_xlat7.z;
        let x_1107 : f32 = u_xlat12.y;
        u_xlat80 = (x_1105 * x_1107);
        let x_1110 : vec4<f32> = u_xlat10;
        let x_1111 : vec2<f32> = vec2<f32>(x_1110.x, x_1110.y);
        let x_1113 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_1111.x, x_1111.y, x_1113);
        let x_1120 : vec3<f32> = txVec4;
        let x_1122 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1120.xy, x_1120.z);
        u_xlat6.x = x_1122;
        let x_1125 : vec4<f32> = u_xlat10;
        let x_1126 : vec2<f32> = vec2<f32>(x_1125.z, x_1125.w);
        let x_1128 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_1126.x, x_1126.y, x_1128);
        let x_1136 : vec3<f32> = txVec5;
        let x_1138 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1136.xy, x_1136.z);
        u_xlat31 = x_1138;
        let x_1139 : f32 = u_xlat31;
        let x_1141 : f32 = u_xlat13.y;
        u_xlat31 = (x_1139 * x_1141);
        let x_1144 : f32 = u_xlat13.x;
        let x_1146 : f32 = u_xlat6.x;
        let x_1148 : f32 = u_xlat31;
        u_xlat6.x = ((x_1144 * x_1146) + x_1148);
        let x_1152 : vec2<f32> = u_xlat56;
        let x_1154 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_1152.x, x_1152.y, x_1154);
        let x_1161 : vec3<f32> = txVec6;
        let x_1163 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1161.xy, x_1161.z);
        u_xlat31 = x_1163;
        let x_1165 : f32 = u_xlat13.z;
        let x_1166 : f32 = u_xlat31;
        let x_1169 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1165 * x_1166) + x_1169);
        let x_1173 : vec4<f32> = u_xlat9;
        let x_1174 : vec2<f32> = vec2<f32>(x_1173.x, x_1173.y);
        let x_1176 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_1174.x, x_1174.y, x_1176);
        let x_1183 : vec3<f32> = txVec7;
        let x_1185 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1183.xy, x_1183.z);
        u_xlat31 = x_1185;
        let x_1187 : f32 = u_xlat13.w;
        let x_1188 : f32 = u_xlat31;
        let x_1191 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1187 * x_1188) + x_1191);
        let x_1195 : vec4<f32> = u_xlat11;
        let x_1196 : vec2<f32> = vec2<f32>(x_1195.x, x_1195.y);
        let x_1198 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_1196.x, x_1196.y, x_1198);
        let x_1205 : vec3<f32> = txVec8;
        let x_1207 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1205.xy, x_1205.z);
        u_xlat31 = x_1207;
        let x_1209 : f32 = u_xlat14.x;
        let x_1210 : f32 = u_xlat31;
        let x_1213 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1209 * x_1210) + x_1213);
        let x_1217 : vec4<f32> = u_xlat11;
        let x_1218 : vec2<f32> = vec2<f32>(x_1217.z, x_1217.w);
        let x_1220 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_1218.x, x_1218.y, x_1220);
        let x_1227 : vec3<f32> = txVec9;
        let x_1229 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1227.xy, x_1227.z);
        u_xlat31 = x_1229;
        let x_1231 : f32 = u_xlat14.y;
        let x_1232 : f32 = u_xlat31;
        let x_1235 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1231 * x_1232) + x_1235);
        let x_1239 : vec4<f32> = u_xlat9;
        let x_1240 : vec2<f32> = vec2<f32>(x_1239.z, x_1239.w);
        let x_1242 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_1240.x, x_1240.y, x_1242);
        let x_1249 : vec3<f32> = txVec10;
        let x_1251 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1249.xy, x_1249.z);
        u_xlat31 = x_1251;
        let x_1253 : f32 = u_xlat14.z;
        let x_1254 : f32 = u_xlat31;
        let x_1257 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1253 * x_1254) + x_1257);
        let x_1261 : vec4<f32> = u_xlat8;
        let x_1262 : vec2<f32> = vec2<f32>(x_1261.x, x_1261.y);
        let x_1264 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_1262.x, x_1262.y, x_1264);
        let x_1271 : vec3<f32> = txVec11;
        let x_1273 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1271.xy, x_1271.z);
        u_xlat31 = x_1273;
        let x_1275 : f32 = u_xlat14.w;
        let x_1276 : f32 = u_xlat31;
        let x_1279 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1275 * x_1276) + x_1279);
        let x_1283 : vec4<f32> = u_xlat8;
        let x_1284 : vec2<f32> = vec2<f32>(x_1283.z, x_1283.w);
        let x_1286 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_1284.x, x_1284.y, x_1286);
        let x_1293 : vec3<f32> = txVec12;
        let x_1295 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1293.xy, x_1293.z);
        u_xlat31 = x_1295;
        let x_1296 : f32 = u_xlat80;
        let x_1297 : f32 = u_xlat31;
        let x_1300 : f32 = u_xlat6.x;
        u_xlat79 = ((x_1296 * x_1297) + x_1300);
      } else {
        let x_1303 : vec4<f32> = vs_TEXCOORD8;
        let x_1306 : vec4<f32> = x_745.x_MainLightShadowmapSize;
        let x_1309 : vec2<f32> = ((vec2<f32>(x_1303.x, x_1303.y) * vec2<f32>(x_1306.z, x_1306.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1310 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1309.x, x_1309.y, x_1310.z, x_1310.w);
        let x_1312 : vec4<f32> = u_xlat6;
        let x_1314 : vec2<f32> = floor(vec2<f32>(x_1312.x, x_1312.y));
        let x_1315 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1314.x, x_1314.y, x_1315.z, x_1315.w);
        let x_1317 : vec4<f32> = vs_TEXCOORD8;
        let x_1320 : vec4<f32> = x_745.x_MainLightShadowmapSize;
        let x_1323 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_1317.x, x_1317.y) * vec2<f32>(x_1320.z, x_1320.w)) + -(vec2<f32>(x_1323.x, x_1323.y)));
        let x_1327 : vec2<f32> = u_xlat56;
        u_xlat7 = (vec4<f32>(x_1327.x, x_1327.x, x_1327.y, x_1327.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1330 : vec4<f32> = u_xlat7;
        let x_1332 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1330.x, x_1330.x, x_1330.z, x_1330.z) * vec4<f32>(x_1332.x, x_1332.x, x_1332.z, x_1332.z));
        let x_1335 : vec4<f32> = u_xlat8;
        let x_1339 : vec2<f32> = (vec2<f32>(x_1335.y, x_1335.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1340 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1340.x, x_1339.x, x_1340.z, x_1339.y);
        let x_1342 : vec4<f32> = u_xlat8;
        let x_1345 : vec2<f32> = u_xlat56;
        let x_1347 : vec2<f32> = ((vec2<f32>(x_1342.x, x_1342.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1345));
        let x_1348 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1347.x, x_1348.y, x_1347.y, x_1348.w);
        let x_1350 : vec2<f32> = u_xlat56;
        let x_1352 : vec2<f32> = (-(x_1350) + vec2<f32>(1.0f, 1.0f));
        let x_1353 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1352.x, x_1352.y, x_1353.z, x_1353.w);
        let x_1355 : vec2<f32> = u_xlat56;
        u_xlat58 = min(x_1355, vec2<f32>(0.0f, 0.0f));
        let x_1357 : vec2<f32> = u_xlat58;
        let x_1359 : vec2<f32> = u_xlat58;
        let x_1361 : vec4<f32> = u_xlat8;
        let x_1363 : vec2<f32> = ((-(x_1357) * x_1359) + vec2<f32>(x_1361.x, x_1361.y));
        let x_1364 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1363.x, x_1363.y, x_1364.z, x_1364.w);
        let x_1366 : vec2<f32> = u_xlat56;
        u_xlat58 = max(x_1366, vec2<f32>(0.0f, 0.0f));
        let x_1369 : vec2<f32> = u_xlat58;
        let x_1371 : vec2<f32> = u_xlat58;
        let x_1373 : vec4<f32> = u_xlat7;
        let x_1375 : vec2<f32> = ((-(x_1369) * x_1371) + vec2<f32>(x_1373.y, x_1373.w));
        let x_1376 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_1375.x, x_1376.y, x_1375.y);
        let x_1378 : vec4<f32> = u_xlat8;
        let x_1381 : vec2<f32> = (vec2<f32>(x_1378.x, x_1378.y) + vec2<f32>(2.0f, 2.0f));
        let x_1382 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1381.x, x_1381.y, x_1382.z, x_1382.w);
        let x_1384 : vec3<f32> = u_xlat32;
        let x_1386 : vec2<f32> = (vec2<f32>(x_1384.x, x_1384.z) + vec2<f32>(2.0f, 2.0f));
        let x_1387 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1387.x, x_1386.x, x_1387.z, x_1386.y);
        let x_1390 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1390 * 0.08163200318813323975f);
        let x_1394 : vec4<f32> = u_xlat7;
        let x_1397 : vec3<f32> = (vec3<f32>(x_1394.z, x_1394.x, x_1394.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1398 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1397.x, x_1397.y, x_1397.z, x_1398.w);
        let x_1400 : vec4<f32> = u_xlat8;
        let x_1403 : vec2<f32> = (vec2<f32>(x_1400.x, x_1400.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1404 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1403.x, x_1403.y, x_1404.z, x_1404.w);
        let x_1407 : f32 = u_xlat11.y;
        u_xlat10.x = x_1407;
        let x_1409 : vec2<f32> = u_xlat56;
        let x_1416 : vec2<f32> = ((vec2<f32>(x_1409.x, x_1409.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1417 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1417.x, x_1416.x, x_1417.z, x_1416.y);
        let x_1419 : vec2<f32> = u_xlat56;
        let x_1423 : vec2<f32> = ((vec2<f32>(x_1419.x, x_1419.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1424 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1423.x, x_1424.y, x_1423.y, x_1424.w);
        let x_1427 : f32 = u_xlat7.x;
        u_xlat8.y = x_1427;
        let x_1430 : f32 = u_xlat9.y;
        u_xlat8.w = x_1430;
        let x_1432 : vec4<f32> = u_xlat8;
        let x_1433 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1432 + x_1433);
        let x_1435 : vec2<f32> = u_xlat56;
        let x_1438 : vec2<f32> = ((vec2<f32>(x_1435.y, x_1435.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1439 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1439.x, x_1438.x, x_1439.z, x_1438.y);
        let x_1441 : vec2<f32> = u_xlat56;
        let x_1444 : vec2<f32> = ((vec2<f32>(x_1441.y, x_1441.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1445 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1444.x, x_1445.y, x_1444.y, x_1445.w);
        let x_1448 : f32 = u_xlat7.y;
        u_xlat9.y = x_1448;
        let x_1450 : vec4<f32> = u_xlat9;
        let x_1451 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1450 + x_1451);
        let x_1453 : vec4<f32> = u_xlat8;
        let x_1454 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1453 / x_1454);
        let x_1456 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1456 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1462 : vec4<f32> = u_xlat9;
        let x_1463 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1462 / x_1463);
        let x_1465 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1465 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1467 : vec4<f32> = u_xlat8;
        let x_1470 : vec4<f32> = x_745.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1467.w, x_1467.x, x_1467.y, x_1467.z) * vec4<f32>(x_1470.x, x_1470.x, x_1470.x, x_1470.x));
        let x_1473 : vec4<f32> = u_xlat9;
        let x_1476 : vec4<f32> = x_745.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1473.x, x_1473.w, x_1473.y, x_1473.z) * vec4<f32>(x_1476.y, x_1476.y, x_1476.y, x_1476.y));
        let x_1479 : vec4<f32> = u_xlat8;
        let x_1480 : vec3<f32> = vec3<f32>(x_1479.y, x_1479.z, x_1479.w);
        let x_1481 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1480.x, x_1481.y, x_1480.y, x_1480.z);
        let x_1484 : f32 = u_xlat9.x;
        u_xlat11.y = x_1484;
        let x_1486 : vec4<f32> = u_xlat6;
        let x_1489 : vec4<f32> = x_745.x_MainLightShadowmapSize;
        let x_1492 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1486.x, x_1486.y, x_1486.x, x_1486.y) * vec4<f32>(x_1489.x, x_1489.y, x_1489.x, x_1489.y)) + vec4<f32>(x_1492.x, x_1492.y, x_1492.z, x_1492.y));
        let x_1495 : vec4<f32> = u_xlat6;
        let x_1498 : vec4<f32> = x_745.x_MainLightShadowmapSize;
        let x_1501 : vec4<f32> = u_xlat11;
        u_xlat56 = ((vec2<f32>(x_1495.x, x_1495.y) * vec2<f32>(x_1498.x, x_1498.y)) + vec2<f32>(x_1501.w, x_1501.y));
        let x_1505 : f32 = u_xlat11.y;
        u_xlat8.y = x_1505;
        let x_1508 : f32 = u_xlat9.z;
        u_xlat11.y = x_1508;
        let x_1510 : vec4<f32> = u_xlat6;
        let x_1513 : vec4<f32> = x_745.x_MainLightShadowmapSize;
        let x_1516 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1510.x, x_1510.y, x_1510.x, x_1510.y) * vec4<f32>(x_1513.x, x_1513.y, x_1513.x, x_1513.y)) + vec4<f32>(x_1516.x, x_1516.y, x_1516.z, x_1516.y));
        let x_1519 : vec4<f32> = u_xlat6;
        let x_1522 : vec4<f32> = x_745.x_MainLightShadowmapSize;
        let x_1525 : vec4<f32> = u_xlat11;
        let x_1527 : vec2<f32> = ((vec2<f32>(x_1519.x, x_1519.y) * vec2<f32>(x_1522.x, x_1522.y)) + vec2<f32>(x_1525.w, x_1525.y));
        let x_1528 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1527.x, x_1527.y, x_1528.z, x_1528.w);
        let x_1531 : f32 = u_xlat11.y;
        u_xlat8.z = x_1531;
        let x_1534 : vec4<f32> = u_xlat6;
        let x_1537 : vec4<f32> = x_745.x_MainLightShadowmapSize;
        let x_1540 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1534.x, x_1534.y, x_1534.x, x_1534.y) * vec4<f32>(x_1537.x, x_1537.y, x_1537.x, x_1537.y)) + vec4<f32>(x_1540.x, x_1540.y, x_1540.x, x_1540.z));
        let x_1544 : f32 = u_xlat9.w;
        u_xlat11.y = x_1544;
        let x_1547 : vec4<f32> = u_xlat6;
        let x_1550 : vec4<f32> = x_745.x_MainLightShadowmapSize;
        let x_1553 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1547.x, x_1547.y, x_1547.x, x_1547.y) * vec4<f32>(x_1550.x, x_1550.y, x_1550.x, x_1550.y)) + vec4<f32>(x_1553.x, x_1553.y, x_1553.z, x_1553.y));
        let x_1557 : vec4<f32> = u_xlat6;
        let x_1560 : vec4<f32> = x_745.x_MainLightShadowmapSize;
        let x_1563 : vec4<f32> = u_xlat11;
        u_xlat33 = ((vec2<f32>(x_1557.x, x_1557.y) * vec2<f32>(x_1560.x, x_1560.y)) + vec2<f32>(x_1563.w, x_1563.y));
        let x_1567 : f32 = u_xlat11.y;
        u_xlat8.w = x_1567;
        let x_1570 : vec4<f32> = u_xlat6;
        let x_1573 : vec4<f32> = x_745.x_MainLightShadowmapSize;
        let x_1576 : vec4<f32> = u_xlat8;
        u_xlat64 = ((vec2<f32>(x_1570.x, x_1570.y) * vec2<f32>(x_1573.x, x_1573.y)) + vec2<f32>(x_1576.x, x_1576.w));
        let x_1579 : vec4<f32> = u_xlat11;
        let x_1580 : vec3<f32> = vec3<f32>(x_1579.x, x_1579.z, x_1579.w);
        let x_1581 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1580.x, x_1581.y, x_1580.y, x_1580.z);
        let x_1583 : vec4<f32> = u_xlat6;
        let x_1586 : vec4<f32> = x_745.x_MainLightShadowmapSize;
        let x_1589 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1583.x, x_1583.y, x_1583.x, x_1583.y) * vec4<f32>(x_1586.x, x_1586.y, x_1586.x, x_1586.y)) + vec4<f32>(x_1589.x, x_1589.y, x_1589.z, x_1589.y));
        let x_1593 : vec4<f32> = u_xlat6;
        let x_1596 : vec4<f32> = x_745.x_MainLightShadowmapSize;
        let x_1599 : vec4<f32> = u_xlat9;
        u_xlat59 = ((vec2<f32>(x_1593.x, x_1593.y) * vec2<f32>(x_1596.x, x_1596.y)) + vec2<f32>(x_1599.w, x_1599.y));
        let x_1603 : f32 = u_xlat8.x;
        u_xlat9.x = x_1603;
        let x_1605 : vec4<f32> = u_xlat6;
        let x_1608 : vec4<f32> = x_745.x_MainLightShadowmapSize;
        let x_1611 : vec4<f32> = u_xlat9;
        let x_1613 : vec2<f32> = ((vec2<f32>(x_1605.x, x_1605.y) * vec2<f32>(x_1608.x, x_1608.y)) + vec2<f32>(x_1611.x, x_1611.y));
        let x_1614 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1613.x, x_1613.y, x_1614.z, x_1614.w);
        let x_1617 : vec4<f32> = u_xlat7;
        let x_1619 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1617.x, x_1617.x, x_1617.x, x_1617.x) * x_1619);
        let x_1622 : vec4<f32> = u_xlat7;
        let x_1624 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1622.y, x_1622.y, x_1622.y, x_1622.y) * x_1624);
        let x_1627 : vec4<f32> = u_xlat7;
        let x_1629 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1627.z, x_1627.z, x_1627.z, x_1627.z) * x_1629);
        let x_1631 : vec4<f32> = u_xlat7;
        let x_1633 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1631.w, x_1631.w, x_1631.w, x_1631.w) * x_1633);
        let x_1636 : vec4<f32> = u_xlat12;
        let x_1637 : vec2<f32> = vec2<f32>(x_1636.x, x_1636.y);
        let x_1639 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1637.x, x_1637.y, x_1639);
        let x_1646 : vec3<f32> = txVec13;
        let x_1648 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1646.xy, x_1646.z);
        u_xlat80 = x_1648;
        let x_1650 : vec4<f32> = u_xlat12;
        let x_1651 : vec2<f32> = vec2<f32>(x_1650.z, x_1650.w);
        let x_1653 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1651.x, x_1651.y, x_1653);
        let x_1660 : vec3<f32> = txVec14;
        let x_1662 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1660.xy, x_1660.z);
        u_xlat8.x = x_1662;
        let x_1665 : f32 = u_xlat8.x;
        let x_1667 : f32 = u_xlat17.y;
        u_xlat8.x = (x_1665 * x_1667);
        let x_1671 : f32 = u_xlat17.x;
        let x_1672 : f32 = u_xlat80;
        let x_1675 : f32 = u_xlat8.x;
        u_xlat80 = ((x_1671 * x_1672) + x_1675);
        let x_1678 : vec2<f32> = u_xlat56;
        let x_1680 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1678.x, x_1678.y, x_1680);
        let x_1687 : vec3<f32> = txVec15;
        let x_1689 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1687.xy, x_1687.z);
        u_xlat56.x = x_1689;
        let x_1692 : f32 = u_xlat17.z;
        let x_1694 : f32 = u_xlat56.x;
        let x_1696 : f32 = u_xlat80;
        u_xlat80 = ((x_1692 * x_1694) + x_1696);
        let x_1699 : vec4<f32> = u_xlat15;
        let x_1700 : vec2<f32> = vec2<f32>(x_1699.x, x_1699.y);
        let x_1702 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1700.x, x_1700.y, x_1702);
        let x_1709 : vec3<f32> = txVec16;
        let x_1711 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1709.xy, x_1709.z);
        u_xlat56.x = x_1711;
        let x_1714 : f32 = u_xlat17.w;
        let x_1716 : f32 = u_xlat56.x;
        let x_1718 : f32 = u_xlat80;
        u_xlat80 = ((x_1714 * x_1716) + x_1718);
        let x_1721 : vec4<f32> = u_xlat13;
        let x_1722 : vec2<f32> = vec2<f32>(x_1721.x, x_1721.y);
        let x_1724 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1722.x, x_1722.y, x_1724);
        let x_1731 : vec3<f32> = txVec17;
        let x_1733 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1731.xy, x_1731.z);
        u_xlat56.x = x_1733;
        let x_1736 : f32 = u_xlat18.x;
        let x_1738 : f32 = u_xlat56.x;
        let x_1740 : f32 = u_xlat80;
        u_xlat80 = ((x_1736 * x_1738) + x_1740);
        let x_1743 : vec4<f32> = u_xlat13;
        let x_1744 : vec2<f32> = vec2<f32>(x_1743.z, x_1743.w);
        let x_1746 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1744.x, x_1744.y, x_1746);
        let x_1753 : vec3<f32> = txVec18;
        let x_1755 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1753.xy, x_1753.z);
        u_xlat56.x = x_1755;
        let x_1758 : f32 = u_xlat18.y;
        let x_1760 : f32 = u_xlat56.x;
        let x_1762 : f32 = u_xlat80;
        u_xlat80 = ((x_1758 * x_1760) + x_1762);
        let x_1765 : vec4<f32> = u_xlat14;
        let x_1766 : vec2<f32> = vec2<f32>(x_1765.x, x_1765.y);
        let x_1768 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1766.x, x_1766.y, x_1768);
        let x_1775 : vec3<f32> = txVec19;
        let x_1777 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1775.xy, x_1775.z);
        u_xlat56.x = x_1777;
        let x_1780 : f32 = u_xlat18.z;
        let x_1782 : f32 = u_xlat56.x;
        let x_1784 : f32 = u_xlat80;
        u_xlat80 = ((x_1780 * x_1782) + x_1784);
        let x_1787 : vec4<f32> = u_xlat15;
        let x_1788 : vec2<f32> = vec2<f32>(x_1787.z, x_1787.w);
        let x_1790 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1788.x, x_1788.y, x_1790);
        let x_1797 : vec3<f32> = txVec20;
        let x_1799 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1797.xy, x_1797.z);
        u_xlat56.x = x_1799;
        let x_1802 : f32 = u_xlat18.w;
        let x_1804 : f32 = u_xlat56.x;
        let x_1806 : f32 = u_xlat80;
        u_xlat80 = ((x_1802 * x_1804) + x_1806);
        let x_1809 : vec4<f32> = u_xlat16;
        let x_1810 : vec2<f32> = vec2<f32>(x_1809.x, x_1809.y);
        let x_1812 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1810.x, x_1810.y, x_1812);
        let x_1819 : vec3<f32> = txVec21;
        let x_1821 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1819.xy, x_1819.z);
        u_xlat56.x = x_1821;
        let x_1824 : f32 = u_xlat19.x;
        let x_1826 : f32 = u_xlat56.x;
        let x_1828 : f32 = u_xlat80;
        u_xlat80 = ((x_1824 * x_1826) + x_1828);
        let x_1831 : vec4<f32> = u_xlat16;
        let x_1832 : vec2<f32> = vec2<f32>(x_1831.z, x_1831.w);
        let x_1834 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1832.x, x_1832.y, x_1834);
        let x_1841 : vec3<f32> = txVec22;
        let x_1843 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1841.xy, x_1841.z);
        u_xlat56.x = x_1843;
        let x_1846 : f32 = u_xlat19.y;
        let x_1848 : f32 = u_xlat56.x;
        let x_1850 : f32 = u_xlat80;
        u_xlat80 = ((x_1846 * x_1848) + x_1850);
        let x_1853 : vec2<f32> = u_xlat33;
        let x_1855 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1853.x, x_1853.y, x_1855);
        let x_1862 : vec3<f32> = txVec23;
        let x_1864 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1862.xy, x_1862.z);
        u_xlat56.x = x_1864;
        let x_1867 : f32 = u_xlat19.z;
        let x_1869 : f32 = u_xlat56.x;
        let x_1871 : f32 = u_xlat80;
        u_xlat80 = ((x_1867 * x_1869) + x_1871);
        let x_1874 : vec2<f32> = u_xlat64;
        let x_1876 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1874.x, x_1874.y, x_1876);
        let x_1883 : vec3<f32> = txVec24;
        let x_1885 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1883.xy, x_1883.z);
        u_xlat56.x = x_1885;
        let x_1888 : f32 = u_xlat19.w;
        let x_1890 : f32 = u_xlat56.x;
        let x_1892 : f32 = u_xlat80;
        u_xlat80 = ((x_1888 * x_1890) + x_1892);
        let x_1895 : vec4<f32> = u_xlat11;
        let x_1896 : vec2<f32> = vec2<f32>(x_1895.x, x_1895.y);
        let x_1898 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1896.x, x_1896.y, x_1898);
        let x_1905 : vec3<f32> = txVec25;
        let x_1907 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1905.xy, x_1905.z);
        u_xlat56.x = x_1907;
        let x_1910 : f32 = u_xlat7.x;
        let x_1912 : f32 = u_xlat56.x;
        let x_1914 : f32 = u_xlat80;
        u_xlat80 = ((x_1910 * x_1912) + x_1914);
        let x_1917 : vec4<f32> = u_xlat11;
        let x_1918 : vec2<f32> = vec2<f32>(x_1917.z, x_1917.w);
        let x_1920 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1918.x, x_1918.y, x_1920);
        let x_1927 : vec3<f32> = txVec26;
        let x_1929 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1927.xy, x_1927.z);
        u_xlat56.x = x_1929;
        let x_1932 : f32 = u_xlat7.y;
        let x_1934 : f32 = u_xlat56.x;
        let x_1936 : f32 = u_xlat80;
        u_xlat80 = ((x_1932 * x_1934) + x_1936);
        let x_1939 : vec2<f32> = u_xlat59;
        let x_1941 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_1939.x, x_1939.y, x_1941);
        let x_1948 : vec3<f32> = txVec27;
        let x_1950 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1948.xy, x_1948.z);
        u_xlat56.x = x_1950;
        let x_1953 : f32 = u_xlat7.z;
        let x_1955 : f32 = u_xlat56.x;
        let x_1957 : f32 = u_xlat80;
        u_xlat80 = ((x_1953 * x_1955) + x_1957);
        let x_1960 : vec4<f32> = u_xlat6;
        let x_1961 : vec2<f32> = vec2<f32>(x_1960.x, x_1960.y);
        let x_1963 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_1961.x, x_1961.y, x_1963);
        let x_1970 : vec3<f32> = txVec28;
        let x_1972 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1970.xy, x_1970.z);
        u_xlat6.x = x_1972;
        let x_1975 : f32 = u_xlat7.w;
        let x_1977 : f32 = u_xlat6.x;
        let x_1979 : f32 = u_xlat80;
        u_xlat79 = ((x_1975 * x_1977) + x_1979);
      }
    }
  } else {
    let x_1983 : vec4<f32> = vs_TEXCOORD8;
    let x_1984 : vec2<f32> = vec2<f32>(x_1983.x, x_1983.y);
    let x_1986 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_1984.x, x_1984.y, x_1986);
    let x_1993 : vec3<f32> = txVec29;
    let x_1995 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1993.xy, x_1993.z);
    u_xlat79 = x_1995;
  }
  let x_1997 : f32 = x_745.x_MainLightShadowParams.x;
  u_xlat80 = (-(x_1997) + 1.0f);
  let x_2000 : f32 = u_xlat79;
  let x_2002 : f32 = x_745.x_MainLightShadowParams.x;
  let x_2004 : f32 = u_xlat80;
  u_xlat79 = ((x_2000 * x_2002) + x_2004);
  let x_2007 : f32 = vs_TEXCOORD8.z;
  u_xlatb80 = (0.0f >= x_2007);
  let x_2011 : f32 = vs_TEXCOORD8.z;
  u_xlatb6 = (x_2011 >= 1.0f);
  let x_2013 : bool = u_xlatb80;
  let x_2014 : bool = u_xlatb6;
  u_xlatb80 = (x_2013 | x_2014);
  let x_2016 : bool = u_xlatb80;
  let x_2017 : f32 = u_xlat79;
  u_xlat79 = select(x_2017, 1.0f, x_2016);
  let x_2019 : vec3<f32> = vs_TEXCOORD7;
  let x_2021 : vec3<f32> = x_111.x_WorldSpaceCameraPos;
  let x_2023 : vec3<f32> = (x_2019 + -(x_2021));
  let x_2024 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2023.x, x_2023.y, x_2023.z, x_2024.w);
  let x_2026 : vec4<f32> = u_xlat6;
  let x_2028 : vec4<f32> = u_xlat6;
  u_xlat80 = dot(vec3<f32>(x_2026.x, x_2026.y, x_2026.z), vec3<f32>(x_2028.x, x_2028.y, x_2028.z));
  let x_2031 : f32 = u_xlat80;
  let x_2033 : f32 = x_745.x_MainLightShadowParams.z;
  let x_2036 : f32 = x_745.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_2031 * x_2033) + x_2036);
  let x_2040 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_2040, 0.0f, 1.0f);
  let x_2043 : f32 = u_xlat79;
  u_xlat31 = (-(x_2043) + 1.0f);
  let x_2047 : f32 = u_xlat6.x;
  let x_2048 : f32 = u_xlat31;
  let x_2050 : f32 = u_xlat79;
  u_xlat79 = ((x_2047 * x_2048) + x_2050);
  let x_2052 : vec3<f32> = u_xlat2;
  let x_2054 : vec4<f32> = u_xlat1;
  u_xlat6.x = dot(-(x_2052), vec3<f32>(x_2054.x, x_2054.y, x_2054.z));
  let x_2059 : f32 = u_xlat6.x;
  let x_2061 : f32 = u_xlat6.x;
  u_xlat6.x = (x_2059 + x_2061);
  let x_2064 : vec4<f32> = u_xlat1;
  let x_2066 : vec4<f32> = u_xlat6;
  let x_2070 : vec3<f32> = u_xlat2;
  let x_2072 : vec3<f32> = ((vec3<f32>(x_2064.x, x_2064.y, x_2064.z) * -(vec3<f32>(x_2066.x, x_2066.x, x_2066.x))) + -(x_2070));
  let x_2073 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2072.x, x_2072.y, x_2072.z, x_2073.w);
  let x_2076 : vec4<f32> = u_xlat1;
  let x_2078 : vec3<f32> = u_xlat2;
  u_xlat81 = dot(vec3<f32>(x_2076.x, x_2076.y, x_2076.z), x_2078);
  let x_2080 : f32 = u_xlat81;
  u_xlat81 = clamp(x_2080, 0.0f, 1.0f);
  let x_2082 : f32 = u_xlat81;
  u_xlat81 = (-(x_2082) + 1.0f);
  let x_2085 : f32 = u_xlat81;
  let x_2086 : f32 = u_xlat81;
  u_xlat81 = (x_2085 * x_2086);
  let x_2088 : f32 = u_xlat81;
  let x_2089 : f32 = u_xlat81;
  u_xlat81 = (x_2088 * x_2089);
  let x_2092 : f32 = u_xlat0.x;
  u_xlat7.x = ((-(x_2092) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2100 : f32 = u_xlat0.x;
  let x_2102 : f32 = u_xlat7.x;
  u_xlat0.x = (x_2100 * x_2102);
  let x_2106 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2106 * 6.0f);
  let x_2118 : vec4<f32> = u_xlat6;
  let x_2121 : f32 = u_xlat0.x;
  let x_2122 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2118.x, x_2118.y, x_2118.z), x_2121);
  u_xlat7 = x_2122;
  let x_2124 : f32 = u_xlat7.w;
  u_xlat0.x = (x_2124 + -1.0f);
  let x_2128 : f32 = x_602.unity_SpecCube0_HDR.w;
  let x_2130 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2128 * x_2130) + 1.0f);
  let x_2135 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2135, 0.0f);
  let x_2139 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2139);
  let x_2143 : f32 = u_xlat0.x;
  let x_2145 : f32 = x_602.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2143 * x_2145);
  let x_2149 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2149);
  let x_2153 : f32 = u_xlat0.x;
  let x_2155 : f32 = x_602.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2153 * x_2155);
  let x_2158 : vec4<f32> = u_xlat7;
  let x_2160 : vec3<f32> = u_xlat0;
  let x_2162 : vec3<f32> = (vec3<f32>(x_2158.x, x_2158.y, x_2158.z) * vec3<f32>(x_2160.x, x_2160.x, x_2160.x));
  let x_2163 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2162.x, x_2162.y, x_2162.z, x_2163.w);
  let x_2165 : f32 = u_xlat50;
  let x_2167 : f32 = u_xlat50;
  let x_2171 : vec2<f32> = ((vec2<f32>(x_2165, x_2165) * vec2<f32>(x_2167, x_2167)) + vec2<f32>(-1.0f, 1.0f));
  let x_2172 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2171.x, x_2172.y, x_2171.y);
  let x_2175 : f32 = u_xlat0.z;
  u_xlat50 = (1.0f / x_2175);
  let x_2177 : vec4<f32> = u_xlat5;
  let x_2180 : f32 = u_xlat77;
  let x_2182 : vec3<f32> = (-(vec3<f32>(x_2177.x, x_2177.y, x_2177.z)) + vec3<f32>(x_2180, x_2180, x_2180));
  let x_2183 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2182.x, x_2182.y, x_2182.z, x_2183.w);
  let x_2185 : f32 = u_xlat81;
  let x_2187 : vec4<f32> = u_xlat7;
  let x_2190 : vec4<f32> = u_xlat5;
  let x_2192 : vec3<f32> = ((vec3<f32>(x_2185, x_2185, x_2185) * vec3<f32>(x_2187.x, x_2187.y, x_2187.z)) + vec3<f32>(x_2190.x, x_2190.y, x_2190.z));
  let x_2193 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2192.x, x_2192.y, x_2192.z, x_2193.w);
  let x_2195 : f32 = u_xlat50;
  let x_2197 : vec4<f32> = u_xlat7;
  let x_2199 : vec3<f32> = (vec3<f32>(x_2195, x_2195, x_2195) * vec3<f32>(x_2197.x, x_2197.y, x_2197.z));
  let x_2200 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2199.x, x_2199.y, x_2199.z, x_2200.w);
  let x_2202 : vec4<f32> = u_xlat6;
  let x_2204 : vec4<f32> = u_xlat7;
  let x_2206 : vec3<f32> = (vec3<f32>(x_2202.x, x_2202.y, x_2202.z) * vec3<f32>(x_2204.x, x_2204.y, x_2204.z));
  let x_2207 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2206.x, x_2206.y, x_2206.z, x_2207.w);
  let x_2209 : vec4<f32> = u_xlat3;
  let x_2211 : vec4<f32> = u_xlat4;
  let x_2214 : vec4<f32> = u_xlat6;
  let x_2216 : vec3<f32> = ((vec3<f32>(x_2209.x, x_2209.y, x_2209.z) * vec3<f32>(x_2211.x, x_2211.y, x_2211.z)) + vec3<f32>(x_2214.x, x_2214.y, x_2214.z));
  let x_2217 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2216.x, x_2216.y, x_2216.z, x_2217.w);
  let x_2219 : f32 = u_xlat79;
  let x_2221 : f32 = x_602.unity_LightData.z;
  u_xlat50 = (x_2219 * x_2221);
  let x_2223 : vec4<f32> = u_xlat1;
  let x_2226 : vec4<f32> = x_111.x_MainLightPosition;
  u_xlat77 = dot(vec3<f32>(x_2223.x, x_2223.y, x_2223.z), vec3<f32>(x_2226.x, x_2226.y, x_2226.z));
  let x_2229 : f32 = u_xlat77;
  u_xlat77 = clamp(x_2229, 0.0f, 1.0f);
  let x_2231 : f32 = u_xlat50;
  let x_2232 : f32 = u_xlat77;
  u_xlat50 = (x_2231 * x_2232);
  let x_2234 : f32 = u_xlat50;
  let x_2237 : vec4<f32> = x_111.x_MainLightColor;
  let x_2239 : vec3<f32> = (vec3<f32>(x_2234, x_2234, x_2234) * vec3<f32>(x_2237.x, x_2237.y, x_2237.z));
  let x_2240 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2239.x, x_2239.y, x_2239.z, x_2240.w);
  let x_2242 : vec3<f32> = u_xlat2;
  let x_2244 : vec4<f32> = x_111.x_MainLightPosition;
  let x_2246 : vec3<f32> = (x_2242 + vec3<f32>(x_2244.x, x_2244.y, x_2244.z));
  let x_2247 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2246.x, x_2246.y, x_2246.z, x_2247.w);
  let x_2249 : vec4<f32> = u_xlat7;
  let x_2251 : vec4<f32> = u_xlat7;
  u_xlat50 = dot(vec3<f32>(x_2249.x, x_2249.y, x_2249.z), vec3<f32>(x_2251.x, x_2251.y, x_2251.z));
  let x_2254 : f32 = u_xlat50;
  u_xlat50 = max(x_2254, 1.17549435e-38f);
  let x_2257 : f32 = u_xlat50;
  u_xlat50 = inverseSqrt(x_2257);
  let x_2259 : f32 = u_xlat50;
  let x_2261 : vec4<f32> = u_xlat7;
  let x_2263 : vec3<f32> = (vec3<f32>(x_2259, x_2259, x_2259) * vec3<f32>(x_2261.x, x_2261.y, x_2261.z));
  let x_2264 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2263.x, x_2263.y, x_2263.z, x_2264.w);
  let x_2266 : vec4<f32> = u_xlat1;
  let x_2268 : vec4<f32> = u_xlat7;
  u_xlat50 = dot(vec3<f32>(x_2266.x, x_2266.y, x_2266.z), vec3<f32>(x_2268.x, x_2268.y, x_2268.z));
  let x_2271 : f32 = u_xlat50;
  u_xlat50 = clamp(x_2271, 0.0f, 1.0f);
  let x_2274 : vec4<f32> = x_111.x_MainLightPosition;
  let x_2276 : vec4<f32> = u_xlat7;
  u_xlat77 = dot(vec3<f32>(x_2274.x, x_2274.y, x_2274.z), vec3<f32>(x_2276.x, x_2276.y, x_2276.z));
  let x_2279 : f32 = u_xlat77;
  u_xlat77 = clamp(x_2279, 0.0f, 1.0f);
  let x_2281 : f32 = u_xlat50;
  let x_2282 : f32 = u_xlat50;
  u_xlat50 = (x_2281 * x_2282);
  let x_2284 : f32 = u_xlat50;
  let x_2286 : f32 = u_xlat0.x;
  u_xlat50 = ((x_2284 * x_2286) + 1.00001001358032226562f);
  let x_2290 : f32 = u_xlat77;
  let x_2291 : f32 = u_xlat77;
  u_xlat77 = (x_2290 * x_2291);
  let x_2293 : f32 = u_xlat50;
  let x_2294 : f32 = u_xlat50;
  u_xlat50 = (x_2293 * x_2294);
  let x_2296 : f32 = u_xlat77;
  u_xlat77 = max(x_2296, 0.10000000149011611938f);
  let x_2299 : f32 = u_xlat50;
  let x_2300 : f32 = u_xlat77;
  u_xlat50 = (x_2299 * x_2300);
  let x_2302 : f32 = u_xlat78;
  let x_2303 : f32 = u_xlat50;
  u_xlat50 = (x_2302 * x_2303);
  let x_2305 : f32 = u_xlat76;
  let x_2306 : f32 = u_xlat50;
  u_xlat50 = (x_2305 / x_2306);
  let x_2308 : vec4<f32> = u_xlat5;
  let x_2310 : f32 = u_xlat50;
  let x_2313 : vec4<f32> = u_xlat4;
  let x_2315 : vec3<f32> = ((vec3<f32>(x_2308.x, x_2308.y, x_2308.z) * vec3<f32>(x_2310, x_2310, x_2310)) + vec3<f32>(x_2313.x, x_2313.y, x_2313.z));
  let x_2316 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2315.x, x_2315.y, x_2315.z, x_2316.w);
  let x_2318 : vec4<f32> = u_xlat6;
  let x_2320 : vec4<f32> = u_xlat7;
  let x_2322 : vec3<f32> = (vec3<f32>(x_2318.x, x_2318.y, x_2318.z) * vec3<f32>(x_2320.x, x_2320.y, x_2320.z));
  let x_2323 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2322.x, x_2322.y, x_2322.z, x_2323.w);
  let x_2327 : f32 = x_111.x_AdditionalLightsCount.x;
  let x_2329 : f32 = x_602.unity_LightData.y;
  u_xlat50 = min(x_2327, x_2329);
  let x_2333 : f32 = u_xlat50;
  u_xlatu50 = bitcast<u32>(i32(x_2333));
  let x_2336 : f32 = u_xlat80;
  let x_2338 : f32 = x_745.x_AdditionalShadowFadeParams.x;
  let x_2341 : f32 = x_745.x_AdditionalShadowFadeParams.y;
  u_xlat77 = ((x_2336 * x_2338) + x_2341);
  let x_2343 : f32 = u_xlat77;
  u_xlat77 = clamp(x_2343, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2355 : u32 = u_xlatu_loop_1;
    let x_2356 : u32 = u_xlatu50;
    if ((x_2355 < x_2356)) {
    } else {
      break;
    }
    let x_2359 : u32 = u_xlatu_loop_1;
    u_xlatu80 = (x_2359 >> 2u);
    let x_2363 : u32 = u_xlatu_loop_1;
    u_xlati81 = bitcast<i32>((x_2363 & 3u));
    let x_2366 : u32 = u_xlatu80;
    let x_2369 : vec4<f32> = x_602.unity_LightIndices[bitcast<i32>(x_2366)];
    let x_2379 : i32 = u_xlati81;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2384 : vec4<u32> = indexable[x_2379];
    u_xlat80 = dot(x_2369, bitcast<vec4<f32>>(x_2384));
    let x_2388 : f32 = u_xlat80;
    u_xlati80 = i32(x_2388);
    let x_2390 : vec3<f32> = vs_TEXCOORD7;
    let x_2401 : i32 = u_xlati80;
    let x_2403 : vec4<f32> = x_2400.x_AdditionalLightsPosition[x_2401];
    let x_2406 : i32 = u_xlati80;
    let x_2408 : vec4<f32> = x_2400.x_AdditionalLightsPosition[x_2406];
    let x_2410 : vec3<f32> = ((-(x_2390) * vec3<f32>(x_2403.w, x_2403.w, x_2403.w)) + vec3<f32>(x_2408.x, x_2408.y, x_2408.z));
    let x_2411 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2410.x, x_2410.y, x_2410.z, x_2411.w);
    let x_2413 : vec4<f32> = u_xlat8;
    let x_2415 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_2413.x, x_2413.y, x_2413.z), vec3<f32>(x_2415.x, x_2415.y, x_2415.z));
    let x_2418 : f32 = u_xlat81;
    u_xlat81 = max(x_2418, 0.00006103515625f);
    let x_2421 : f32 = u_xlat81;
    u_xlat82 = inverseSqrt(x_2421);
    let x_2423 : f32 = u_xlat82;
    let x_2425 : vec4<f32> = u_xlat8;
    let x_2427 : vec3<f32> = (vec3<f32>(x_2423, x_2423, x_2423) * vec3<f32>(x_2425.x, x_2425.y, x_2425.z));
    let x_2428 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2427.x, x_2427.y, x_2427.z, x_2428.w);
    let x_2431 : f32 = u_xlat81;
    u_xlat83 = (1.0f / x_2431);
    let x_2433 : f32 = u_xlat81;
    let x_2434 : i32 = u_xlati80;
    let x_2436 : f32 = x_2400.x_AdditionalLightsAttenuation[x_2434].x;
    u_xlat81 = (x_2433 * x_2436);
    let x_2438 : f32 = u_xlat81;
    let x_2440 : f32 = u_xlat81;
    u_xlat81 = ((-(x_2438) * x_2440) + 1.0f);
    let x_2443 : f32 = u_xlat81;
    u_xlat81 = max(x_2443, 0.0f);
    let x_2445 : f32 = u_xlat81;
    let x_2446 : f32 = u_xlat81;
    u_xlat81 = (x_2445 * x_2446);
    let x_2448 : f32 = u_xlat81;
    let x_2449 : f32 = u_xlat83;
    u_xlat81 = (x_2448 * x_2449);
    let x_2451 : i32 = u_xlati80;
    let x_2453 : vec4<f32> = x_2400.x_AdditionalLightsSpotDir[x_2451];
    let x_2455 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_2453.x, x_2453.y, x_2453.z), vec3<f32>(x_2455.x, x_2455.y, x_2455.z));
    let x_2458 : f32 = u_xlat83;
    let x_2459 : i32 = u_xlati80;
    let x_2461 : f32 = x_2400.x_AdditionalLightsAttenuation[x_2459].z;
    let x_2463 : i32 = u_xlati80;
    let x_2465 : f32 = x_2400.x_AdditionalLightsAttenuation[x_2463].w;
    u_xlat83 = ((x_2458 * x_2461) + x_2465);
    let x_2467 : f32 = u_xlat83;
    u_xlat83 = clamp(x_2467, 0.0f, 1.0f);
    let x_2469 : f32 = u_xlat83;
    let x_2470 : f32 = u_xlat83;
    u_xlat83 = (x_2469 * x_2470);
    let x_2472 : f32 = u_xlat81;
    let x_2473 : f32 = u_xlat83;
    u_xlat81 = (x_2472 * x_2473);
    let x_2476 : i32 = u_xlati80;
    let x_2478 : f32 = x_745.x_AdditionalShadowParams[x_2476].w;
    u_xlati83 = i32(x_2478);
    let x_2481 : i32 = u_xlati83;
    u_xlatb84 = (x_2481 >= 0i);
    let x_2483 : bool = u_xlatb84;
    if (x_2483) {
      let x_2487 : i32 = u_xlati80;
      let x_2489 : f32 = x_745.x_AdditionalShadowParams[x_2487].z;
      u_xlatb84 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2489, x_2489, x_2489, x_2489))));
      let x_2493 : bool = u_xlatb84;
      if (x_2493) {
        let x_2498 : vec4<f32> = u_xlat9;
        let x_2501 : vec4<f32> = u_xlat9;
        let x_2504 : vec4<bool> = (abs(vec4<f32>(x_2498.z, x_2498.z, x_2498.y, x_2498.z)) >= abs(vec4<f32>(x_2501.x, x_2501.y, x_2501.x, x_2501.x)));
        let x_2506 : vec3<bool> = vec3<bool>(x_2504.x, x_2504.y, x_2504.z);
        let x_2507 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_2506.x, x_2506.y, x_2506.z, x_2507.w);
        let x_2510 : bool = u_xlatb10.y;
        let x_2512 : bool = u_xlatb10.x;
        u_xlatb84 = (x_2510 & x_2512);
        let x_2514 : vec4<f32> = u_xlat9;
        let x_2517 : vec4<bool> = (-(vec4<f32>(x_2514.z, x_2514.y, x_2514.z, x_2514.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2518 : vec3<bool> = vec3<bool>(x_2517.x, x_2517.y, x_2517.w);
        let x_2519 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_2518.x, x_2518.y, x_2519.z, x_2518.z);
        let x_2522 : bool = u_xlatb10.x;
        u_xlat10.x = select(4.0f, 5.0f, x_2522);
        let x_2527 : bool = u_xlatb10.y;
        u_xlat10.y = select(2.0f, 3.0f, x_2527);
        let x_2533 : bool = u_xlatb10.w;
        u_xlat85 = select(0.0f, 1.0f, x_2533);
        let x_2537 : bool = u_xlatb10.z;
        if (x_2537) {
          let x_2542 : f32 = u_xlat10.y;
          x_2538 = x_2542;
        } else {
          let x_2544 : f32 = u_xlat85;
          x_2538 = x_2544;
        }
        let x_2545 : f32 = x_2538;
        u_xlat35 = x_2545;
        let x_2547 : bool = u_xlatb84;
        if (x_2547) {
          let x_2552 : f32 = u_xlat10.x;
          x_2548 = x_2552;
        } else {
          let x_2554 : f32 = u_xlat35;
          x_2548 = x_2554;
        }
        let x_2555 : f32 = x_2548;
        u_xlat84 = x_2555;
        let x_2556 : i32 = u_xlati80;
        let x_2558 : f32 = x_745.x_AdditionalShadowParams[x_2556].w;
        u_xlat10.x = trunc(x_2558);
        let x_2561 : f32 = u_xlat84;
        let x_2563 : f32 = u_xlat10.x;
        u_xlat84 = (x_2561 + x_2563);
        let x_2565 : f32 = u_xlat84;
        u_xlati83 = i32(x_2565);
      }
      let x_2567 : i32 = u_xlati83;
      u_xlati83 = (x_2567 << bitcast<u32>(2i));
      let x_2569 : vec3<f32> = vs_TEXCOORD7;
      let x_2571 : i32 = u_xlati83;
      let x_2574 : i32 = u_xlati83;
      let x_2578 : vec4<f32> = x_745.x_AdditionalLightsWorldToShadow[((x_2571 + 1i) / 4i)][((x_2574 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_2569.y, x_2569.y, x_2569.y, x_2569.y) * x_2578);
      let x_2580 : i32 = u_xlati83;
      let x_2582 : i32 = u_xlati83;
      let x_2585 : vec4<f32> = x_745.x_AdditionalLightsWorldToShadow[(x_2580 / 4i)][(x_2582 % 4i)];
      let x_2586 : vec3<f32> = vs_TEXCOORD7;
      let x_2589 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2585 * vec4<f32>(x_2586.x, x_2586.x, x_2586.x, x_2586.x)) + x_2589);
      let x_2591 : i32 = u_xlati83;
      let x_2594 : i32 = u_xlati83;
      let x_2598 : vec4<f32> = x_745.x_AdditionalLightsWorldToShadow[((x_2591 + 2i) / 4i)][((x_2594 + 2i) % 4i)];
      let x_2599 : vec3<f32> = vs_TEXCOORD7;
      let x_2602 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2598 * vec4<f32>(x_2599.z, x_2599.z, x_2599.z, x_2599.z)) + x_2602);
      let x_2604 : vec4<f32> = u_xlat10;
      let x_2605 : i32 = u_xlati83;
      let x_2608 : i32 = u_xlati83;
      let x_2612 : vec4<f32> = x_745.x_AdditionalLightsWorldToShadow[((x_2605 + 3i) / 4i)][((x_2608 + 3i) % 4i)];
      u_xlat10 = (x_2604 + x_2612);
      let x_2614 : vec4<f32> = u_xlat10;
      let x_2616 : vec4<f32> = u_xlat10;
      let x_2618 : vec3<f32> = (vec3<f32>(x_2614.x, x_2614.y, x_2614.z) / vec3<f32>(x_2616.w, x_2616.w, x_2616.w));
      let x_2619 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2618.x, x_2618.y, x_2618.z, x_2619.w);
      let x_2622 : i32 = u_xlati80;
      let x_2624 : f32 = x_745.x_AdditionalShadowParams[x_2622].y;
      u_xlatb83 = (0.0f < x_2624);
      let x_2626 : bool = u_xlatb83;
      if (x_2626) {
        let x_2629 : i32 = u_xlati80;
        let x_2631 : f32 = x_745.x_AdditionalShadowParams[x_2629].y;
        u_xlatb83 = (1.0f == x_2631);
        let x_2633 : bool = u_xlatb83;
        if (x_2633) {
          let x_2636 : vec4<f32> = u_xlat10;
          let x_2639 : vec4<f32> = x_745.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2636.x, x_2636.y, x_2636.x, x_2636.y) + x_2639);
          let x_2642 : vec4<f32> = u_xlat11;
          let x_2643 : vec2<f32> = vec2<f32>(x_2642.x, x_2642.y);
          let x_2645 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2643.x, x_2643.y, x_2645);
          let x_2653 : vec3<f32> = txVec30;
          let x_2655 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2653.xy, x_2653.z);
          u_xlat12.x = x_2655;
          let x_2658 : vec4<f32> = u_xlat11;
          let x_2659 : vec2<f32> = vec2<f32>(x_2658.z, x_2658.w);
          let x_2661 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_2659.x, x_2659.y, x_2661);
          let x_2668 : vec3<f32> = txVec31;
          let x_2670 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2668.xy, x_2668.z);
          u_xlat12.y = x_2670;
          let x_2672 : vec4<f32> = u_xlat10;
          let x_2675 : vec4<f32> = x_745.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_2672.x, x_2672.y, x_2672.x, x_2672.y) + x_2675);
          let x_2678 : vec4<f32> = u_xlat11;
          let x_2679 : vec2<f32> = vec2<f32>(x_2678.x, x_2678.y);
          let x_2681 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_2679.x, x_2679.y, x_2681);
          let x_2688 : vec3<f32> = txVec32;
          let x_2690 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2688.xy, x_2688.z);
          u_xlat12.z = x_2690;
          let x_2693 : vec4<f32> = u_xlat11;
          let x_2694 : vec2<f32> = vec2<f32>(x_2693.z, x_2693.w);
          let x_2696 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_2694.x, x_2694.y, x_2696);
          let x_2703 : vec3<f32> = txVec33;
          let x_2705 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2703.xy, x_2703.z);
          u_xlat12.w = x_2705;
          let x_2707 : vec4<f32> = u_xlat12;
          u_xlat83 = dot(x_2707, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2710 : i32 = u_xlati80;
          let x_2712 : f32 = x_745.x_AdditionalShadowParams[x_2710].y;
          u_xlatb84 = (2.0f == x_2712);
          let x_2714 : bool = u_xlatb84;
          if (x_2714) {
            let x_2717 : vec4<f32> = u_xlat10;
            let x_2720 : vec4<f32> = x_745.x_AdditionalShadowmapSize;
            let x_2723 : vec2<f32> = ((vec2<f32>(x_2717.x, x_2717.y) * vec2<f32>(x_2720.z, x_2720.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2724 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2723.x, x_2723.y, x_2724.z, x_2724.w);
            let x_2726 : vec4<f32> = u_xlat11;
            let x_2728 : vec2<f32> = floor(vec2<f32>(x_2726.x, x_2726.y));
            let x_2729 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2728.x, x_2728.y, x_2729.z, x_2729.w);
            let x_2732 : vec4<f32> = u_xlat10;
            let x_2735 : vec4<f32> = x_745.x_AdditionalShadowmapSize;
            let x_2738 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2732.x, x_2732.y) * vec2<f32>(x_2735.z, x_2735.w)) + -(vec2<f32>(x_2738.x, x_2738.y)));
            let x_2742 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2742.x, x_2742.x, x_2742.y, x_2742.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2745 : vec4<f32> = u_xlat12;
            let x_2747 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2745.x, x_2745.x, x_2745.z, x_2745.z) * vec4<f32>(x_2747.x, x_2747.x, x_2747.z, x_2747.z));
            let x_2750 : vec4<f32> = u_xlat13;
            let x_2752 : vec2<f32> = (vec2<f32>(x_2750.y, x_2750.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2753 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2752.x, x_2753.y, x_2752.y, x_2753.w);
            let x_2755 : vec4<f32> = u_xlat13;
            let x_2758 : vec2<f32> = u_xlat61;
            let x_2760 : vec2<f32> = ((vec2<f32>(x_2755.x, x_2755.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2758));
            let x_2761 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2760.x, x_2760.y, x_2761.z, x_2761.w);
            let x_2764 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_2764) + vec2<f32>(1.0f, 1.0f));
            let x_2767 : vec2<f32> = u_xlat61;
            let x_2768 : vec2<f32> = min(x_2767, vec2<f32>(0.0f, 0.0f));
            let x_2769 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2768.x, x_2768.y, x_2769.z, x_2769.w);
            let x_2771 : vec4<f32> = u_xlat14;
            let x_2774 : vec4<f32> = u_xlat14;
            let x_2777 : vec2<f32> = u_xlat63;
            let x_2778 : vec2<f32> = ((-(vec2<f32>(x_2771.x, x_2771.y)) * vec2<f32>(x_2774.x, x_2774.y)) + x_2777);
            let x_2779 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2778.x, x_2778.y, x_2779.z, x_2779.w);
            let x_2781 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_2781, vec2<f32>(0.0f, 0.0f));
            let x_2783 : vec2<f32> = u_xlat61;
            let x_2785 : vec2<f32> = u_xlat61;
            let x_2787 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_2783) * x_2785) + vec2<f32>(x_2787.y, x_2787.w));
            let x_2790 : vec4<f32> = u_xlat14;
            let x_2792 : vec2<f32> = (vec2<f32>(x_2790.x, x_2790.y) + vec2<f32>(1.0f, 1.0f));
            let x_2793 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2792.x, x_2792.y, x_2793.z, x_2793.w);
            let x_2795 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_2795 + vec2<f32>(1.0f, 1.0f));
            let x_2797 : vec4<f32> = u_xlat13;
            let x_2799 : vec2<f32> = (vec2<f32>(x_2797.x, x_2797.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2800 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2799.x, x_2799.y, x_2800.z, x_2800.w);
            let x_2802 : vec2<f32> = u_xlat63;
            let x_2803 : vec2<f32> = (x_2802 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2804 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2803.x, x_2803.y, x_2804.z, x_2804.w);
            let x_2806 : vec4<f32> = u_xlat14;
            let x_2808 : vec2<f32> = (vec2<f32>(x_2806.x, x_2806.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2809 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2808.x, x_2808.y, x_2809.z, x_2809.w);
            let x_2811 : vec2<f32> = u_xlat61;
            let x_2812 : vec2<f32> = (x_2811 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2813 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2812.x, x_2812.y, x_2813.z, x_2813.w);
            let x_2815 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_2815.y, x_2815.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2819 : f32 = u_xlat14.x;
            u_xlat15.z = x_2819;
            let x_2822 : f32 = u_xlat61.x;
            u_xlat15.w = x_2822;
            let x_2825 : f32 = u_xlat16.x;
            u_xlat13.z = x_2825;
            let x_2828 : f32 = u_xlat12.x;
            u_xlat13.w = x_2828;
            let x_2830 : vec4<f32> = u_xlat13;
            let x_2832 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2830.z, x_2830.w, x_2830.x, x_2830.z) + vec4<f32>(x_2832.z, x_2832.w, x_2832.x, x_2832.z));
            let x_2836 : f32 = u_xlat15.y;
            u_xlat14.z = x_2836;
            let x_2839 : f32 = u_xlat61.y;
            u_xlat14.w = x_2839;
            let x_2842 : f32 = u_xlat13.y;
            u_xlat16.z = x_2842;
            let x_2845 : f32 = u_xlat12.z;
            u_xlat16.w = x_2845;
            let x_2847 : vec4<f32> = u_xlat14;
            let x_2849 : vec4<f32> = u_xlat16;
            let x_2851 : vec3<f32> = (vec3<f32>(x_2847.z, x_2847.y, x_2847.w) + vec3<f32>(x_2849.z, x_2849.y, x_2849.w));
            let x_2852 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2851.x, x_2851.y, x_2851.z, x_2852.w);
            let x_2854 : vec4<f32> = u_xlat13;
            let x_2856 : vec4<f32> = u_xlat17;
            let x_2858 : vec3<f32> = (vec3<f32>(x_2854.x, x_2854.z, x_2854.w) / vec3<f32>(x_2856.z, x_2856.w, x_2856.y));
            let x_2859 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2858.x, x_2858.y, x_2858.z, x_2859.w);
            let x_2861 : vec4<f32> = u_xlat13;
            let x_2863 : vec3<f32> = (vec3<f32>(x_2861.x, x_2861.y, x_2861.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2864 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2863.x, x_2863.y, x_2863.z, x_2864.w);
            let x_2866 : vec4<f32> = u_xlat16;
            let x_2868 : vec4<f32> = u_xlat12;
            let x_2870 : vec3<f32> = (vec3<f32>(x_2866.z, x_2866.y, x_2866.w) / vec3<f32>(x_2868.x, x_2868.y, x_2868.z));
            let x_2871 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2870.x, x_2870.y, x_2870.z, x_2871.w);
            let x_2873 : vec4<f32> = u_xlat14;
            let x_2875 : vec3<f32> = (vec3<f32>(x_2873.x, x_2873.y, x_2873.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2876 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2875.x, x_2875.y, x_2875.z, x_2876.w);
            let x_2878 : vec4<f32> = u_xlat13;
            let x_2881 : vec4<f32> = x_745.x_AdditionalShadowmapSize;
            let x_2883 : vec3<f32> = (vec3<f32>(x_2878.y, x_2878.x, x_2878.z) * vec3<f32>(x_2881.x, x_2881.x, x_2881.x));
            let x_2884 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2883.x, x_2883.y, x_2883.z, x_2884.w);
            let x_2886 : vec4<f32> = u_xlat14;
            let x_2889 : vec4<f32> = x_745.x_AdditionalShadowmapSize;
            let x_2891 : vec3<f32> = (vec3<f32>(x_2886.x, x_2886.y, x_2886.z) * vec3<f32>(x_2889.y, x_2889.y, x_2889.y));
            let x_2892 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2891.x, x_2891.y, x_2891.z, x_2892.w);
            let x_2895 : f32 = u_xlat14.x;
            u_xlat13.w = x_2895;
            let x_2897 : vec4<f32> = u_xlat11;
            let x_2900 : vec4<f32> = x_745.x_AdditionalShadowmapSize;
            let x_2903 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2897.x, x_2897.y, x_2897.x, x_2897.y) * vec4<f32>(x_2900.x, x_2900.y, x_2900.x, x_2900.y)) + vec4<f32>(x_2903.y, x_2903.w, x_2903.x, x_2903.w));
            let x_2906 : vec4<f32> = u_xlat11;
            let x_2909 : vec4<f32> = x_745.x_AdditionalShadowmapSize;
            let x_2912 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_2906.x, x_2906.y) * vec2<f32>(x_2909.x, x_2909.y)) + vec2<f32>(x_2912.z, x_2912.w));
            let x_2916 : f32 = u_xlat13.y;
            u_xlat14.w = x_2916;
            let x_2918 : vec4<f32> = u_xlat14;
            let x_2919 : vec2<f32> = vec2<f32>(x_2918.y, x_2918.z);
            let x_2920 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2920.x, x_2919.x, x_2920.z, x_2919.y);
            let x_2922 : vec4<f32> = u_xlat11;
            let x_2925 : vec4<f32> = x_745.x_AdditionalShadowmapSize;
            let x_2928 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_2922.x, x_2922.y, x_2922.x, x_2922.y) * vec4<f32>(x_2925.x, x_2925.y, x_2925.x, x_2925.y)) + vec4<f32>(x_2928.x, x_2928.y, x_2928.z, x_2928.y));
            let x_2931 : vec4<f32> = u_xlat11;
            let x_2934 : vec4<f32> = x_745.x_AdditionalShadowmapSize;
            let x_2937 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2931.x, x_2931.y, x_2931.x, x_2931.y) * vec4<f32>(x_2934.x, x_2934.y, x_2934.x, x_2934.y)) + vec4<f32>(x_2937.w, x_2937.y, x_2937.w, x_2937.z));
            let x_2940 : vec4<f32> = u_xlat11;
            let x_2943 : vec4<f32> = x_745.x_AdditionalShadowmapSize;
            let x_2946 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_2940.x, x_2940.y, x_2940.x, x_2940.y) * vec4<f32>(x_2943.x, x_2943.y, x_2943.x, x_2943.y)) + vec4<f32>(x_2946.x, x_2946.w, x_2946.z, x_2946.w));
            let x_2949 : vec4<f32> = u_xlat12;
            let x_2951 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_2949.x, x_2949.x, x_2949.x, x_2949.y) * vec4<f32>(x_2951.z, x_2951.w, x_2951.y, x_2951.z));
            let x_2954 : vec4<f32> = u_xlat12;
            let x_2956 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_2954.y, x_2954.y, x_2954.z, x_2954.z) * x_2956);
            let x_2959 : f32 = u_xlat12.z;
            let x_2961 : f32 = u_xlat17.y;
            u_xlat84 = (x_2959 * x_2961);
            let x_2964 : vec4<f32> = u_xlat15;
            let x_2965 : vec2<f32> = vec2<f32>(x_2964.x, x_2964.y);
            let x_2967 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_2965.x, x_2965.y, x_2967);
            let x_2974 : vec3<f32> = txVec34;
            let x_2976 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2974.xy, x_2974.z);
            u_xlat85 = x_2976;
            let x_2978 : vec4<f32> = u_xlat15;
            let x_2979 : vec2<f32> = vec2<f32>(x_2978.z, x_2978.w);
            let x_2981 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_2979.x, x_2979.y, x_2981);
            let x_2988 : vec3<f32> = txVec35;
            let x_2990 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2988.xy, x_2988.z);
            u_xlat11.x = x_2990;
            let x_2993 : f32 = u_xlat11.x;
            let x_2995 : f32 = u_xlat18.y;
            u_xlat11.x = (x_2993 * x_2995);
            let x_2999 : f32 = u_xlat18.x;
            let x_3000 : f32 = u_xlat85;
            let x_3003 : f32 = u_xlat11.x;
            u_xlat85 = ((x_2999 * x_3000) + x_3003);
            let x_3006 : vec2<f32> = u_xlat61;
            let x_3008 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_3006.x, x_3006.y, x_3008);
            let x_3015 : vec3<f32> = txVec36;
            let x_3017 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3015.xy, x_3015.z);
            u_xlat11.x = x_3017;
            let x_3020 : f32 = u_xlat18.z;
            let x_3022 : f32 = u_xlat11.x;
            let x_3024 : f32 = u_xlat85;
            u_xlat85 = ((x_3020 * x_3022) + x_3024);
            let x_3027 : vec4<f32> = u_xlat14;
            let x_3028 : vec2<f32> = vec2<f32>(x_3027.x, x_3027.y);
            let x_3030 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_3028.x, x_3028.y, x_3030);
            let x_3037 : vec3<f32> = txVec37;
            let x_3039 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3037.xy, x_3037.z);
            u_xlat11.x = x_3039;
            let x_3042 : f32 = u_xlat18.w;
            let x_3044 : f32 = u_xlat11.x;
            let x_3046 : f32 = u_xlat85;
            u_xlat85 = ((x_3042 * x_3044) + x_3046);
            let x_3049 : vec4<f32> = u_xlat16;
            let x_3050 : vec2<f32> = vec2<f32>(x_3049.x, x_3049.y);
            let x_3052 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_3050.x, x_3050.y, x_3052);
            let x_3059 : vec3<f32> = txVec38;
            let x_3061 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3059.xy, x_3059.z);
            u_xlat11.x = x_3061;
            let x_3064 : f32 = u_xlat19.x;
            let x_3066 : f32 = u_xlat11.x;
            let x_3068 : f32 = u_xlat85;
            u_xlat85 = ((x_3064 * x_3066) + x_3068);
            let x_3071 : vec4<f32> = u_xlat16;
            let x_3072 : vec2<f32> = vec2<f32>(x_3071.z, x_3071.w);
            let x_3074 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_3072.x, x_3072.y, x_3074);
            let x_3081 : vec3<f32> = txVec39;
            let x_3083 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3081.xy, x_3081.z);
            u_xlat11.x = x_3083;
            let x_3086 : f32 = u_xlat19.y;
            let x_3088 : f32 = u_xlat11.x;
            let x_3090 : f32 = u_xlat85;
            u_xlat85 = ((x_3086 * x_3088) + x_3090);
            let x_3093 : vec4<f32> = u_xlat14;
            let x_3094 : vec2<f32> = vec2<f32>(x_3093.z, x_3093.w);
            let x_3096 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_3094.x, x_3094.y, x_3096);
            let x_3103 : vec3<f32> = txVec40;
            let x_3105 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3103.xy, x_3103.z);
            u_xlat11.x = x_3105;
            let x_3108 : f32 = u_xlat19.z;
            let x_3110 : f32 = u_xlat11.x;
            let x_3112 : f32 = u_xlat85;
            u_xlat85 = ((x_3108 * x_3110) + x_3112);
            let x_3115 : vec4<f32> = u_xlat13;
            let x_3116 : vec2<f32> = vec2<f32>(x_3115.x, x_3115.y);
            let x_3118 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_3116.x, x_3116.y, x_3118);
            let x_3125 : vec3<f32> = txVec41;
            let x_3127 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3125.xy, x_3125.z);
            u_xlat11.x = x_3127;
            let x_3130 : f32 = u_xlat19.w;
            let x_3132 : f32 = u_xlat11.x;
            let x_3134 : f32 = u_xlat85;
            u_xlat85 = ((x_3130 * x_3132) + x_3134);
            let x_3137 : vec4<f32> = u_xlat13;
            let x_3138 : vec2<f32> = vec2<f32>(x_3137.z, x_3137.w);
            let x_3140 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_3138.x, x_3138.y, x_3140);
            let x_3147 : vec3<f32> = txVec42;
            let x_3149 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3147.xy, x_3147.z);
            u_xlat11.x = x_3149;
            let x_3151 : f32 = u_xlat84;
            let x_3153 : f32 = u_xlat11.x;
            let x_3155 : f32 = u_xlat85;
            u_xlat83 = ((x_3151 * x_3153) + x_3155);
          } else {
            let x_3158 : vec4<f32> = u_xlat10;
            let x_3161 : vec4<f32> = x_745.x_AdditionalShadowmapSize;
            let x_3164 : vec2<f32> = ((vec2<f32>(x_3158.x, x_3158.y) * vec2<f32>(x_3161.z, x_3161.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3165 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3164.x, x_3164.y, x_3165.z, x_3165.w);
            let x_3167 : vec4<f32> = u_xlat11;
            let x_3169 : vec2<f32> = floor(vec2<f32>(x_3167.x, x_3167.y));
            let x_3170 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3169.x, x_3169.y, x_3170.z, x_3170.w);
            let x_3172 : vec4<f32> = u_xlat10;
            let x_3175 : vec4<f32> = x_745.x_AdditionalShadowmapSize;
            let x_3178 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3172.x, x_3172.y) * vec2<f32>(x_3175.z, x_3175.w)) + -(vec2<f32>(x_3178.x, x_3178.y)));
            let x_3182 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3182.x, x_3182.x, x_3182.y, x_3182.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3185 : vec4<f32> = u_xlat12;
            let x_3187 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3185.x, x_3185.x, x_3185.z, x_3185.z) * vec4<f32>(x_3187.x, x_3187.x, x_3187.z, x_3187.z));
            let x_3190 : vec4<f32> = u_xlat13;
            let x_3192 : vec2<f32> = (vec2<f32>(x_3190.y, x_3190.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3193 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3193.x, x_3192.x, x_3193.z, x_3192.y);
            let x_3195 : vec4<f32> = u_xlat13;
            let x_3198 : vec2<f32> = u_xlat61;
            let x_3200 : vec2<f32> = ((vec2<f32>(x_3195.x, x_3195.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3198));
            let x_3201 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3200.x, x_3201.y, x_3200.y, x_3201.w);
            let x_3203 : vec2<f32> = u_xlat61;
            let x_3205 : vec2<f32> = (-(x_3203) + vec2<f32>(1.0f, 1.0f));
            let x_3206 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3205.x, x_3205.y, x_3206.z, x_3206.w);
            let x_3208 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_3208, vec2<f32>(0.0f, 0.0f));
            let x_3210 : vec2<f32> = u_xlat63;
            let x_3212 : vec2<f32> = u_xlat63;
            let x_3214 : vec4<f32> = u_xlat13;
            let x_3216 : vec2<f32> = ((-(x_3210) * x_3212) + vec2<f32>(x_3214.x, x_3214.y));
            let x_3217 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3216.x, x_3216.y, x_3217.z, x_3217.w);
            let x_3219 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_3219, vec2<f32>(0.0f, 0.0f));
            let x_3222 : vec2<f32> = u_xlat63;
            let x_3224 : vec2<f32> = u_xlat63;
            let x_3226 : vec4<f32> = u_xlat12;
            let x_3228 : vec2<f32> = ((-(x_3222) * x_3224) + vec2<f32>(x_3226.y, x_3226.w));
            let x_3229 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_3228.x, x_3229.y, x_3228.y);
            let x_3231 : vec4<f32> = u_xlat13;
            let x_3233 : vec2<f32> = (vec2<f32>(x_3231.x, x_3231.y) + vec2<f32>(2.0f, 2.0f));
            let x_3234 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3233.x, x_3233.y, x_3234.z, x_3234.w);
            let x_3236 : vec3<f32> = u_xlat37;
            let x_3238 : vec2<f32> = (vec2<f32>(x_3236.x, x_3236.z) + vec2<f32>(2.0f, 2.0f));
            let x_3239 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3239.x, x_3238.x, x_3239.z, x_3238.y);
            let x_3242 : f32 = u_xlat12.y;
            u_xlat15.z = (x_3242 * 0.08163200318813323975f);
            let x_3245 : vec4<f32> = u_xlat12;
            let x_3247 : vec3<f32> = (vec3<f32>(x_3245.z, x_3245.x, x_3245.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3248 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3247.x, x_3247.y, x_3247.z, x_3248.w);
            let x_3250 : vec4<f32> = u_xlat13;
            let x_3252 : vec2<f32> = (vec2<f32>(x_3250.x, x_3250.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3253 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3252.x, x_3252.y, x_3253.z, x_3253.w);
            let x_3256 : f32 = u_xlat16.y;
            u_xlat15.x = x_3256;
            let x_3258 : vec2<f32> = u_xlat61;
            let x_3261 : vec2<f32> = ((vec2<f32>(x_3258.x, x_3258.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3262 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3262.x, x_3261.x, x_3262.z, x_3261.y);
            let x_3264 : vec2<f32> = u_xlat61;
            let x_3267 : vec2<f32> = ((vec2<f32>(x_3264.x, x_3264.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3268 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3267.x, x_3268.y, x_3267.y, x_3268.w);
            let x_3271 : f32 = u_xlat12.x;
            u_xlat13.y = x_3271;
            let x_3274 : f32 = u_xlat14.y;
            u_xlat13.w = x_3274;
            let x_3276 : vec4<f32> = u_xlat13;
            let x_3277 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3276 + x_3277);
            let x_3279 : vec2<f32> = u_xlat61;
            let x_3282 : vec2<f32> = ((vec2<f32>(x_3279.y, x_3279.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3283 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3283.x, x_3282.x, x_3283.z, x_3282.y);
            let x_3285 : vec2<f32> = u_xlat61;
            let x_3288 : vec2<f32> = ((vec2<f32>(x_3285.y, x_3285.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3289 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3288.x, x_3289.y, x_3288.y, x_3289.w);
            let x_3292 : f32 = u_xlat12.y;
            u_xlat14.y = x_3292;
            let x_3294 : vec4<f32> = u_xlat14;
            let x_3295 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_3294 + x_3295);
            let x_3297 : vec4<f32> = u_xlat13;
            let x_3298 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_3297 / x_3298);
            let x_3300 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3300 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3302 : vec4<f32> = u_xlat14;
            let x_3303 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_3302 / x_3303);
            let x_3305 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3305 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3307 : vec4<f32> = u_xlat13;
            let x_3310 : vec4<f32> = x_745.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3307.w, x_3307.x, x_3307.y, x_3307.z) * vec4<f32>(x_3310.x, x_3310.x, x_3310.x, x_3310.x));
            let x_3313 : vec4<f32> = u_xlat14;
            let x_3316 : vec4<f32> = x_745.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3313.x, x_3313.w, x_3313.y, x_3313.z) * vec4<f32>(x_3316.y, x_3316.y, x_3316.y, x_3316.y));
            let x_3319 : vec4<f32> = u_xlat13;
            let x_3320 : vec3<f32> = vec3<f32>(x_3319.y, x_3319.z, x_3319.w);
            let x_3321 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3320.x, x_3321.y, x_3320.y, x_3320.z);
            let x_3324 : f32 = u_xlat14.x;
            u_xlat16.y = x_3324;
            let x_3326 : vec4<f32> = u_xlat11;
            let x_3329 : vec4<f32> = x_745.x_AdditionalShadowmapSize;
            let x_3332 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3326.x, x_3326.y, x_3326.x, x_3326.y) * vec4<f32>(x_3329.x, x_3329.y, x_3329.x, x_3329.y)) + vec4<f32>(x_3332.x, x_3332.y, x_3332.z, x_3332.y));
            let x_3335 : vec4<f32> = u_xlat11;
            let x_3338 : vec4<f32> = x_745.x_AdditionalShadowmapSize;
            let x_3341 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_3335.x, x_3335.y) * vec2<f32>(x_3338.x, x_3338.y)) + vec2<f32>(x_3341.w, x_3341.y));
            let x_3345 : f32 = u_xlat16.y;
            u_xlat13.y = x_3345;
            let x_3348 : f32 = u_xlat14.z;
            u_xlat16.y = x_3348;
            let x_3350 : vec4<f32> = u_xlat11;
            let x_3353 : vec4<f32> = x_745.x_AdditionalShadowmapSize;
            let x_3356 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3350.x, x_3350.y, x_3350.x, x_3350.y) * vec4<f32>(x_3353.x, x_3353.y, x_3353.x, x_3353.y)) + vec4<f32>(x_3356.x, x_3356.y, x_3356.z, x_3356.y));
            let x_3359 : vec4<f32> = u_xlat11;
            let x_3362 : vec4<f32> = x_745.x_AdditionalShadowmapSize;
            let x_3365 : vec4<f32> = u_xlat16;
            let x_3367 : vec2<f32> = ((vec2<f32>(x_3359.x, x_3359.y) * vec2<f32>(x_3362.x, x_3362.y)) + vec2<f32>(x_3365.w, x_3365.y));
            let x_3368 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3367.x, x_3367.y, x_3368.z, x_3368.w);
            let x_3371 : f32 = u_xlat16.y;
            u_xlat13.z = x_3371;
            let x_3374 : vec4<f32> = u_xlat11;
            let x_3377 : vec4<f32> = x_745.x_AdditionalShadowmapSize;
            let x_3380 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3374.x, x_3374.y, x_3374.x, x_3374.y) * vec4<f32>(x_3377.x, x_3377.y, x_3377.x, x_3377.y)) + vec4<f32>(x_3380.x, x_3380.y, x_3380.x, x_3380.z));
            let x_3384 : f32 = u_xlat14.w;
            u_xlat16.y = x_3384;
            let x_3387 : vec4<f32> = u_xlat11;
            let x_3390 : vec4<f32> = x_745.x_AdditionalShadowmapSize;
            let x_3393 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3387.x, x_3387.y, x_3387.x, x_3387.y) * vec4<f32>(x_3390.x, x_3390.y, x_3390.x, x_3390.y)) + vec4<f32>(x_3393.x, x_3393.y, x_3393.z, x_3393.y));
            let x_3397 : vec4<f32> = u_xlat11;
            let x_3400 : vec4<f32> = x_745.x_AdditionalShadowmapSize;
            let x_3403 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3397.x, x_3397.y) * vec2<f32>(x_3400.x, x_3400.y)) + vec2<f32>(x_3403.w, x_3403.y));
            let x_3407 : f32 = u_xlat16.y;
            u_xlat13.w = x_3407;
            let x_3410 : vec4<f32> = u_xlat11;
            let x_3413 : vec4<f32> = x_745.x_AdditionalShadowmapSize;
            let x_3416 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3410.x, x_3410.y) * vec2<f32>(x_3413.x, x_3413.y)) + vec2<f32>(x_3416.x, x_3416.w));
            let x_3419 : vec4<f32> = u_xlat16;
            let x_3420 : vec3<f32> = vec3<f32>(x_3419.x, x_3419.z, x_3419.w);
            let x_3421 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3420.x, x_3421.y, x_3420.y, x_3420.z);
            let x_3423 : vec4<f32> = u_xlat11;
            let x_3426 : vec4<f32> = x_745.x_AdditionalShadowmapSize;
            let x_3429 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3423.x, x_3423.y, x_3423.x, x_3423.y) * vec4<f32>(x_3426.x, x_3426.y, x_3426.x, x_3426.y)) + vec4<f32>(x_3429.x, x_3429.y, x_3429.z, x_3429.y));
            let x_3432 : vec4<f32> = u_xlat11;
            let x_3435 : vec4<f32> = x_745.x_AdditionalShadowmapSize;
            let x_3438 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3432.x, x_3432.y) * vec2<f32>(x_3435.x, x_3435.y)) + vec2<f32>(x_3438.w, x_3438.y));
            let x_3442 : f32 = u_xlat13.x;
            u_xlat14.x = x_3442;
            let x_3444 : vec4<f32> = u_xlat11;
            let x_3447 : vec4<f32> = x_745.x_AdditionalShadowmapSize;
            let x_3450 : vec4<f32> = u_xlat14;
            let x_3452 : vec2<f32> = ((vec2<f32>(x_3444.x, x_3444.y) * vec2<f32>(x_3447.x, x_3447.y)) + vec2<f32>(x_3450.x, x_3450.y));
            let x_3453 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3452.x, x_3452.y, x_3453.z, x_3453.w);
            let x_3456 : vec4<f32> = u_xlat12;
            let x_3458 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3456.x, x_3456.x, x_3456.x, x_3456.x) * x_3458);
            let x_3461 : vec4<f32> = u_xlat12;
            let x_3463 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3461.y, x_3461.y, x_3461.y, x_3461.y) * x_3463);
            let x_3466 : vec4<f32> = u_xlat12;
            let x_3468 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3466.z, x_3466.z, x_3466.z, x_3466.z) * x_3468);
            let x_3470 : vec4<f32> = u_xlat12;
            let x_3472 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3470.w, x_3470.w, x_3470.w, x_3470.w) * x_3472);
            let x_3475 : vec4<f32> = u_xlat17;
            let x_3476 : vec2<f32> = vec2<f32>(x_3475.x, x_3475.y);
            let x_3478 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3476.x, x_3476.y, x_3478);
            let x_3485 : vec3<f32> = txVec43;
            let x_3487 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3485.xy, x_3485.z);
            u_xlat84 = x_3487;
            let x_3489 : vec4<f32> = u_xlat17;
            let x_3490 : vec2<f32> = vec2<f32>(x_3489.z, x_3489.w);
            let x_3492 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3490.x, x_3490.y, x_3492);
            let x_3499 : vec3<f32> = txVec44;
            let x_3501 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3499.xy, x_3499.z);
            u_xlat85 = x_3501;
            let x_3502 : f32 = u_xlat85;
            let x_3504 : f32 = u_xlat22.y;
            u_xlat85 = (x_3502 * x_3504);
            let x_3507 : f32 = u_xlat22.x;
            let x_3508 : f32 = u_xlat84;
            let x_3510 : f32 = u_xlat85;
            u_xlat84 = ((x_3507 * x_3508) + x_3510);
            let x_3513 : vec2<f32> = u_xlat61;
            let x_3515 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3513.x, x_3513.y, x_3515);
            let x_3522 : vec3<f32> = txVec45;
            let x_3524 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3522.xy, x_3522.z);
            u_xlat85 = x_3524;
            let x_3526 : f32 = u_xlat22.z;
            let x_3527 : f32 = u_xlat85;
            let x_3529 : f32 = u_xlat84;
            u_xlat84 = ((x_3526 * x_3527) + x_3529);
            let x_3532 : vec4<f32> = u_xlat20;
            let x_3533 : vec2<f32> = vec2<f32>(x_3532.x, x_3532.y);
            let x_3535 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3533.x, x_3533.y, x_3535);
            let x_3542 : vec3<f32> = txVec46;
            let x_3544 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3542.xy, x_3542.z);
            u_xlat85 = x_3544;
            let x_3546 : f32 = u_xlat22.w;
            let x_3547 : f32 = u_xlat85;
            let x_3549 : f32 = u_xlat84;
            u_xlat84 = ((x_3546 * x_3547) + x_3549);
            let x_3552 : vec4<f32> = u_xlat18;
            let x_3553 : vec2<f32> = vec2<f32>(x_3552.x, x_3552.y);
            let x_3555 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3553.x, x_3553.y, x_3555);
            let x_3562 : vec3<f32> = txVec47;
            let x_3564 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3562.xy, x_3562.z);
            u_xlat85 = x_3564;
            let x_3566 : f32 = u_xlat23.x;
            let x_3567 : f32 = u_xlat85;
            let x_3569 : f32 = u_xlat84;
            u_xlat84 = ((x_3566 * x_3567) + x_3569);
            let x_3572 : vec4<f32> = u_xlat18;
            let x_3573 : vec2<f32> = vec2<f32>(x_3572.z, x_3572.w);
            let x_3575 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3573.x, x_3573.y, x_3575);
            let x_3582 : vec3<f32> = txVec48;
            let x_3584 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3582.xy, x_3582.z);
            u_xlat85 = x_3584;
            let x_3586 : f32 = u_xlat23.y;
            let x_3587 : f32 = u_xlat85;
            let x_3589 : f32 = u_xlat84;
            u_xlat84 = ((x_3586 * x_3587) + x_3589);
            let x_3592 : vec4<f32> = u_xlat19;
            let x_3593 : vec2<f32> = vec2<f32>(x_3592.x, x_3592.y);
            let x_3595 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3593.x, x_3593.y, x_3595);
            let x_3602 : vec3<f32> = txVec49;
            let x_3604 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3602.xy, x_3602.z);
            u_xlat85 = x_3604;
            let x_3606 : f32 = u_xlat23.z;
            let x_3607 : f32 = u_xlat85;
            let x_3609 : f32 = u_xlat84;
            u_xlat84 = ((x_3606 * x_3607) + x_3609);
            let x_3612 : vec4<f32> = u_xlat20;
            let x_3613 : vec2<f32> = vec2<f32>(x_3612.z, x_3612.w);
            let x_3615 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3613.x, x_3613.y, x_3615);
            let x_3622 : vec3<f32> = txVec50;
            let x_3624 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3622.xy, x_3622.z);
            u_xlat85 = x_3624;
            let x_3626 : f32 = u_xlat23.w;
            let x_3627 : f32 = u_xlat85;
            let x_3629 : f32 = u_xlat84;
            u_xlat84 = ((x_3626 * x_3627) + x_3629);
            let x_3632 : vec4<f32> = u_xlat21;
            let x_3633 : vec2<f32> = vec2<f32>(x_3632.x, x_3632.y);
            let x_3635 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3633.x, x_3633.y, x_3635);
            let x_3642 : vec3<f32> = txVec51;
            let x_3644 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3642.xy, x_3642.z);
            u_xlat85 = x_3644;
            let x_3646 : f32 = u_xlat24.x;
            let x_3647 : f32 = u_xlat85;
            let x_3649 : f32 = u_xlat84;
            u_xlat84 = ((x_3646 * x_3647) + x_3649);
            let x_3652 : vec4<f32> = u_xlat21;
            let x_3653 : vec2<f32> = vec2<f32>(x_3652.z, x_3652.w);
            let x_3655 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_3653.x, x_3653.y, x_3655);
            let x_3662 : vec3<f32> = txVec52;
            let x_3664 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3662.xy, x_3662.z);
            u_xlat85 = x_3664;
            let x_3666 : f32 = u_xlat24.y;
            let x_3667 : f32 = u_xlat85;
            let x_3669 : f32 = u_xlat84;
            u_xlat84 = ((x_3666 * x_3667) + x_3669);
            let x_3672 : vec2<f32> = u_xlat38;
            let x_3674 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_3672.x, x_3672.y, x_3674);
            let x_3681 : vec3<f32> = txVec53;
            let x_3683 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3681.xy, x_3681.z);
            u_xlat85 = x_3683;
            let x_3685 : f32 = u_xlat24.z;
            let x_3686 : f32 = u_xlat85;
            let x_3688 : f32 = u_xlat84;
            u_xlat84 = ((x_3685 * x_3686) + x_3688);
            let x_3691 : vec2<f32> = u_xlat69;
            let x_3693 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_3691.x, x_3691.y, x_3693);
            let x_3700 : vec3<f32> = txVec54;
            let x_3702 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3700.xy, x_3700.z);
            u_xlat85 = x_3702;
            let x_3704 : f32 = u_xlat24.w;
            let x_3705 : f32 = u_xlat85;
            let x_3707 : f32 = u_xlat84;
            u_xlat84 = ((x_3704 * x_3705) + x_3707);
            let x_3710 : vec4<f32> = u_xlat16;
            let x_3711 : vec2<f32> = vec2<f32>(x_3710.x, x_3710.y);
            let x_3713 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_3711.x, x_3711.y, x_3713);
            let x_3720 : vec3<f32> = txVec55;
            let x_3722 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3720.xy, x_3720.z);
            u_xlat85 = x_3722;
            let x_3724 : f32 = u_xlat12.x;
            let x_3725 : f32 = u_xlat85;
            let x_3727 : f32 = u_xlat84;
            u_xlat84 = ((x_3724 * x_3725) + x_3727);
            let x_3730 : vec4<f32> = u_xlat16;
            let x_3731 : vec2<f32> = vec2<f32>(x_3730.z, x_3730.w);
            let x_3733 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_3731.x, x_3731.y, x_3733);
            let x_3740 : vec3<f32> = txVec56;
            let x_3742 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3740.xy, x_3740.z);
            u_xlat85 = x_3742;
            let x_3744 : f32 = u_xlat12.y;
            let x_3745 : f32 = u_xlat85;
            let x_3747 : f32 = u_xlat84;
            u_xlat84 = ((x_3744 * x_3745) + x_3747);
            let x_3750 : vec2<f32> = u_xlat64;
            let x_3752 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_3750.x, x_3750.y, x_3752);
            let x_3759 : vec3<f32> = txVec57;
            let x_3761 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3759.xy, x_3759.z);
            u_xlat85 = x_3761;
            let x_3763 : f32 = u_xlat12.z;
            let x_3764 : f32 = u_xlat85;
            let x_3766 : f32 = u_xlat84;
            u_xlat84 = ((x_3763 * x_3764) + x_3766);
            let x_3769 : vec4<f32> = u_xlat11;
            let x_3770 : vec2<f32> = vec2<f32>(x_3769.x, x_3769.y);
            let x_3772 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_3770.x, x_3770.y, x_3772);
            let x_3779 : vec3<f32> = txVec58;
            let x_3781 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3779.xy, x_3779.z);
            u_xlat85 = x_3781;
            let x_3783 : f32 = u_xlat12.w;
            let x_3784 : f32 = u_xlat85;
            let x_3786 : f32 = u_xlat84;
            u_xlat83 = ((x_3783 * x_3784) + x_3786);
          }
        }
      } else {
        let x_3790 : vec4<f32> = u_xlat10;
        let x_3791 : vec2<f32> = vec2<f32>(x_3790.x, x_3790.y);
        let x_3793 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_3791.x, x_3791.y, x_3793);
        let x_3800 : vec3<f32> = txVec59;
        let x_3802 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3800.xy, x_3800.z);
        u_xlat83 = x_3802;
      }
      let x_3803 : i32 = u_xlati80;
      let x_3805 : f32 = x_745.x_AdditionalShadowParams[x_3803].x;
      u_xlat84 = (1.0f + -(x_3805));
      let x_3808 : f32 = u_xlat83;
      let x_3809 : i32 = u_xlati80;
      let x_3811 : f32 = x_745.x_AdditionalShadowParams[x_3809].x;
      let x_3813 : f32 = u_xlat84;
      u_xlat83 = ((x_3808 * x_3811) + x_3813);
      let x_3816 : f32 = u_xlat10.z;
      u_xlatb84 = (0.0f >= x_3816);
      let x_3819 : f32 = u_xlat10.z;
      u_xlatb10.x = (x_3819 >= 1.0f);
      let x_3822 : bool = u_xlatb84;
      let x_3824 : bool = u_xlatb10.x;
      u_xlatb84 = (x_3822 | x_3824);
      let x_3826 : bool = u_xlatb84;
      let x_3827 : f32 = u_xlat83;
      u_xlat83 = select(x_3827, 1.0f, x_3826);
    } else {
      u_xlat83 = 1.0f;
    }
    let x_3830 : f32 = u_xlat83;
    u_xlat84 = (-(x_3830) + 1.0f);
    let x_3833 : f32 = u_xlat77;
    let x_3834 : f32 = u_xlat84;
    let x_3836 : f32 = u_xlat83;
    u_xlat83 = ((x_3833 * x_3834) + x_3836);
    let x_3838 : f32 = u_xlat81;
    let x_3839 : f32 = u_xlat83;
    u_xlat81 = (x_3838 * x_3839);
    let x_3841 : vec4<f32> = u_xlat1;
    let x_3843 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_3841.x, x_3841.y, x_3841.z), vec3<f32>(x_3843.x, x_3843.y, x_3843.z));
    let x_3846 : f32 = u_xlat83;
    u_xlat83 = clamp(x_3846, 0.0f, 1.0f);
    let x_3848 : f32 = u_xlat81;
    let x_3849 : f32 = u_xlat83;
    u_xlat81 = (x_3848 * x_3849);
    let x_3851 : f32 = u_xlat81;
    let x_3853 : i32 = u_xlati80;
    let x_3855 : vec4<f32> = x_2400.x_AdditionalLightsColor[x_3853];
    let x_3857 : vec3<f32> = (vec3<f32>(x_3851, x_3851, x_3851) * vec3<f32>(x_3855.x, x_3855.y, x_3855.z));
    let x_3858 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3857.x, x_3857.y, x_3857.z, x_3858.w);
    let x_3860 : vec4<f32> = u_xlat8;
    let x_3862 : f32 = u_xlat82;
    let x_3865 : vec3<f32> = u_xlat2;
    let x_3866 : vec3<f32> = ((vec3<f32>(x_3860.x, x_3860.y, x_3860.z) * vec3<f32>(x_3862, x_3862, x_3862)) + x_3865);
    let x_3867 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3866.x, x_3866.y, x_3866.z, x_3867.w);
    let x_3869 : vec4<f32> = u_xlat8;
    let x_3871 : vec4<f32> = u_xlat8;
    u_xlat80 = dot(vec3<f32>(x_3869.x, x_3869.y, x_3869.z), vec3<f32>(x_3871.x, x_3871.y, x_3871.z));
    let x_3874 : f32 = u_xlat80;
    u_xlat80 = max(x_3874, 1.17549435e-38f);
    let x_3876 : f32 = u_xlat80;
    u_xlat80 = inverseSqrt(x_3876);
    let x_3878 : f32 = u_xlat80;
    let x_3880 : vec4<f32> = u_xlat8;
    let x_3882 : vec3<f32> = (vec3<f32>(x_3878, x_3878, x_3878) * vec3<f32>(x_3880.x, x_3880.y, x_3880.z));
    let x_3883 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3882.x, x_3882.y, x_3882.z, x_3883.w);
    let x_3885 : vec4<f32> = u_xlat1;
    let x_3887 : vec4<f32> = u_xlat8;
    u_xlat80 = dot(vec3<f32>(x_3885.x, x_3885.y, x_3885.z), vec3<f32>(x_3887.x, x_3887.y, x_3887.z));
    let x_3890 : f32 = u_xlat80;
    u_xlat80 = clamp(x_3890, 0.0f, 1.0f);
    let x_3892 : vec4<f32> = u_xlat9;
    let x_3894 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_3892.x, x_3892.y, x_3892.z), vec3<f32>(x_3894.x, x_3894.y, x_3894.z));
    let x_3897 : f32 = u_xlat81;
    u_xlat81 = clamp(x_3897, 0.0f, 1.0f);
    let x_3899 : f32 = u_xlat80;
    let x_3900 : f32 = u_xlat80;
    u_xlat80 = (x_3899 * x_3900);
    let x_3902 : f32 = u_xlat80;
    let x_3904 : f32 = u_xlat0.x;
    u_xlat80 = ((x_3902 * x_3904) + 1.00001001358032226562f);
    let x_3907 : f32 = u_xlat81;
    let x_3908 : f32 = u_xlat81;
    u_xlat81 = (x_3907 * x_3908);
    let x_3910 : f32 = u_xlat80;
    let x_3911 : f32 = u_xlat80;
    u_xlat80 = (x_3910 * x_3911);
    let x_3913 : f32 = u_xlat81;
    u_xlat81 = max(x_3913, 0.10000000149011611938f);
    let x_3915 : f32 = u_xlat80;
    let x_3916 : f32 = u_xlat81;
    u_xlat80 = (x_3915 * x_3916);
    let x_3918 : f32 = u_xlat78;
    let x_3919 : f32 = u_xlat80;
    u_xlat80 = (x_3918 * x_3919);
    let x_3921 : f32 = u_xlat76;
    let x_3922 : f32 = u_xlat80;
    u_xlat80 = (x_3921 / x_3922);
    let x_3924 : vec4<f32> = u_xlat5;
    let x_3926 : f32 = u_xlat80;
    let x_3929 : vec4<f32> = u_xlat4;
    let x_3931 : vec3<f32> = ((vec3<f32>(x_3924.x, x_3924.y, x_3924.z) * vec3<f32>(x_3926, x_3926, x_3926)) + vec3<f32>(x_3929.x, x_3929.y, x_3929.z));
    let x_3932 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3931.x, x_3931.y, x_3931.z, x_3932.w);
    let x_3934 : vec4<f32> = u_xlat8;
    let x_3936 : vec4<f32> = u_xlat10;
    let x_3939 : vec4<f32> = u_xlat7;
    let x_3941 : vec3<f32> = ((vec3<f32>(x_3934.x, x_3934.y, x_3934.z) * vec3<f32>(x_3936.x, x_3936.y, x_3936.z)) + vec3<f32>(x_3939.x, x_3939.y, x_3939.z));
    let x_3942 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3941.x, x_3941.y, x_3941.z, x_3942.w);

    continuing {
      let x_3944 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3944 + bitcast<u32>(1i));
    }
  }
  let x_3946 : vec4<f32> = u_xlat3;
  let x_3948 : f32 = u_xlat25;
  let x_3951 : vec4<f32> = u_xlat6;
  u_xlat0 = ((vec3<f32>(x_3946.x, x_3946.y, x_3946.z) * vec3<f32>(x_3948, x_3948, x_3948)) + vec3<f32>(x_3951.x, x_3951.y, x_3951.z));
  let x_3954 : vec4<f32> = u_xlat7;
  let x_3956 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_3954.x, x_3954.y, x_3954.z) + x_3956);
  let x_3960 : f32 = u_xlat75;
  let x_3962 : vec3<f32> = u_xlat0;
  let x_3963 : vec3<f32> = (vec3<f32>(x_3960, x_3960, x_3960) * x_3962);
  let x_3964 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3963.x, x_3963.y, x_3963.z, x_3964.w);
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


