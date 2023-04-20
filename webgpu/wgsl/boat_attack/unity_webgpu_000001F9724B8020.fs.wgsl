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

var<private> u_xlatb79 : bool;

@group(1) @binding(4) var<uniform> x_709 : LightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(8) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_LinearClampCompare : sampler_comparison;

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

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2093 : UnityPerDraw;

var<private> u_xlatu50 : u32;

var<private> u_xlatu80 : u32;

var<private> u_xlati81 : i32;

var<private> u_xlati80 : i32;

@group(1) @binding(1) var<uniform> x_2367 : AdditionalLights;

var<private> u_xlat82 : f32;

var<private> u_xlat83 : f32;

var<private> u_xlati83 : i32;

var<private> u_xlatb84 : bool;

var<private> u_xlatb10 : vec4<bool>;

var<private> u_xlat85 : f32;

var<private> u_xlat35 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlatb83 : bool;

@group(0) @binding(9) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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
  var x_2505 : f32;
  var x_2515 : f32;
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
  let x_591 : vec4<f32> = vs_TEXCOORD0;
  let x_594 : f32 = x_111.x_GlobalMipBias.x;
  let x_595 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_591.z, x_591.w), x_594);
  u_xlat3 = x_595;
  let x_600 : vec4<f32> = vs_TEXCOORD0;
  let x_603 : f32 = x_111.x_GlobalMipBias.x;
  let x_604 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_600.z, x_600.w), x_603);
  let x_605 : vec3<f32> = vec3<f32>(x_604.x, x_604.y, x_604.z);
  let x_606 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_605.x, x_605.y, x_605.z, x_606.w);
  let x_608 : vec4<f32> = u_xlat3;
  let x_612 : vec3<f32> = (vec3<f32>(x_608.x, x_608.y, x_608.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_613 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_612.x, x_612.y, x_612.z, x_613.w);
  let x_615 : vec4<f32> = u_xlat1;
  let x_617 : vec4<f32> = u_xlat3;
  u_xlat76 = dot(vec3<f32>(x_615.x, x_615.y, x_615.z), vec3<f32>(x_617.x, x_617.y, x_617.z));
  let x_620 : f32 = u_xlat76;
  u_xlat76 = (x_620 + 0.5f);
  let x_622 : f32 = u_xlat76;
  let x_624 : vec4<f32> = u_xlat4;
  let x_626 : vec3<f32> = (vec3<f32>(x_622, x_622, x_622) * vec3<f32>(x_624.x, x_624.y, x_624.z));
  let x_627 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_626.x, x_626.y, x_626.z, x_627.w);
  let x_630 : f32 = u_xlat3.w;
  u_xlat76 = max(x_630, 0.00009999999747378752f);
  let x_633 : vec4<f32> = u_xlat3;
  let x_635 : f32 = u_xlat76;
  let x_637 : vec3<f32> = (vec3<f32>(x_633.x, x_633.y, x_633.z) / vec3<f32>(x_635, x_635, x_635));
  let x_638 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_637.x, x_637.y, x_637.z, x_638.w);
  let x_641 : f32 = u_xlat0.x;
  u_xlat76 = ((-(x_641) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_647 : f32 = u_xlat50;
  let x_648 : f32 = u_xlat76;
  u_xlat77 = (x_647 + -(x_648));
  let x_651 : f32 = u_xlat76;
  let x_653 : vec4<f32> = u_xlat5;
  let x_655 : vec3<f32> = (vec3<f32>(x_651, x_651, x_651) * vec3<f32>(x_653.x, x_653.y, x_653.z));
  let x_656 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_655.x, x_655.y, x_655.z, x_656.w);
  let x_658 : vec4<f32> = u_xlat5;
  let x_662 : vec3<f32> = (vec3<f32>(x_658.x, x_658.y, x_658.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_663 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_662.x, x_662.y, x_662.z, x_663.w);
  let x_665 : vec3<f32> = u_xlat0;
  let x_667 : vec4<f32> = u_xlat5;
  let x_672 : vec3<f32> = ((vec3<f32>(x_665.x, x_665.x, x_665.x) * vec3<f32>(x_667.x, x_667.y, x_667.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_673 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_672.x, x_672.y, x_672.z, x_673.w);
  let x_675 : f32 = u_xlat50;
  u_xlat0.x = (-(x_675) + 1.0f);
  let x_680 : f32 = u_xlat0.x;
  let x_682 : f32 = u_xlat0.x;
  u_xlat50 = (x_680 * x_682);
  let x_684 : f32 = u_xlat50;
  u_xlat50 = max(x_684, 0.0078125f);
  let x_687 : f32 = u_xlat50;
  let x_688 : f32 = u_xlat50;
  u_xlat76 = (x_687 * x_688);
  let x_690 : f32 = u_xlat77;
  u_xlat77 = (x_690 + 1.0f);
  let x_692 : f32 = u_xlat77;
  u_xlat77 = clamp(x_692, 0.0f, 1.0f);
  let x_695 : f32 = u_xlat50;
  u_xlat78 = ((x_695 * 4.0f) + 2.0f);
  let x_699 : f32 = u_xlat25;
  u_xlat25 = min(x_699, 1.0f);
  let x_711 : f32 = x_709.x_MainLightShadowParams.y;
  u_xlatb79 = (0.0f < x_711);
  let x_713 : bool = u_xlatb79;
  if (x_713) {
    let x_717 : f32 = x_709.x_MainLightShadowParams.y;
    u_xlatb79 = (x_717 == 1.0f);
    let x_719 : bool = u_xlatb79;
    if (x_719) {
      let x_723 : vec4<f32> = vs_TEXCOORD8;
      let x_726 : vec4<f32> = x_709.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_723.x, x_723.y, x_723.x, x_723.y) + x_726);
      let x_730 : vec4<f32> = u_xlat6;
      let x_731 : vec2<f32> = vec2<f32>(x_730.x, x_730.y);
      let x_734 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_731.x, x_731.y, x_734);
      let x_746 : vec3<f32> = txVec0;
      let x_748 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_746.xy, x_746.z);
      u_xlat7.x = x_748;
      let x_751 : vec4<f32> = u_xlat6;
      let x_752 : vec2<f32> = vec2<f32>(x_751.z, x_751.w);
      let x_754 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_752.x, x_752.y, x_754);
      let x_761 : vec3<f32> = txVec1;
      let x_763 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_761.xy, x_761.z);
      u_xlat7.y = x_763;
      let x_765 : vec4<f32> = vs_TEXCOORD8;
      let x_768 : vec4<f32> = x_709.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_765.x, x_765.y, x_765.x, x_765.y) + x_768);
      let x_771 : vec4<f32> = u_xlat6;
      let x_772 : vec2<f32> = vec2<f32>(x_771.x, x_771.y);
      let x_774 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_772.x, x_772.y, x_774);
      let x_781 : vec3<f32> = txVec2;
      let x_783 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_781.xy, x_781.z);
      u_xlat7.z = x_783;
      let x_786 : vec4<f32> = u_xlat6;
      let x_787 : vec2<f32> = vec2<f32>(x_786.z, x_786.w);
      let x_789 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_787.x, x_787.y, x_789);
      let x_796 : vec3<f32> = txVec3;
      let x_798 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_796.xy, x_796.z);
      u_xlat7.w = x_798;
      let x_801 : vec4<f32> = u_xlat7;
      u_xlat79 = dot(x_801, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_808 : f32 = x_709.x_MainLightShadowParams.y;
      u_xlatb80 = (x_808 == 2.0f);
      let x_810 : bool = u_xlatb80;
      if (x_810) {
        let x_813 : vec4<f32> = vs_TEXCOORD8;
        let x_816 : vec4<f32> = x_709.x_MainLightShadowmapSize;
        let x_819 : vec2<f32> = ((vec2<f32>(x_813.x, x_813.y) * vec2<f32>(x_816.z, x_816.w)) + vec2<f32>(0.5f, 0.5f));
        let x_820 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_819.x, x_819.y, x_820.z, x_820.w);
        let x_822 : vec4<f32> = u_xlat6;
        let x_824 : vec2<f32> = floor(vec2<f32>(x_822.x, x_822.y));
        let x_825 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_824.x, x_824.y, x_825.z, x_825.w);
        let x_829 : vec4<f32> = vs_TEXCOORD8;
        let x_832 : vec4<f32> = x_709.x_MainLightShadowmapSize;
        let x_835 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_829.x, x_829.y) * vec2<f32>(x_832.z, x_832.w)) + -(vec2<f32>(x_835.x, x_835.y)));
        let x_839 : vec2<f32> = u_xlat56;
        u_xlat7 = (vec4<f32>(x_839.x, x_839.x, x_839.y, x_839.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_843 : vec4<f32> = u_xlat7;
        let x_845 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_843.x, x_843.x, x_843.z, x_843.z) * vec4<f32>(x_845.x, x_845.x, x_845.z, x_845.z));
        let x_848 : vec4<f32> = u_xlat8;
        let x_852 : vec2<f32> = (vec2<f32>(x_848.y, x_848.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_853 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_852.x, x_853.y, x_852.y, x_853.w);
        let x_855 : vec4<f32> = u_xlat8;
        let x_858 : vec2<f32> = u_xlat56;
        let x_860 : vec2<f32> = ((vec2<f32>(x_855.x, x_855.z) * vec2<f32>(0.5f, 0.5f)) + -(x_858));
        let x_861 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_860.x, x_860.y, x_861.z, x_861.w);
        let x_864 : vec2<f32> = u_xlat56;
        u_xlat58 = (-(x_864) + vec2<f32>(1.0f, 1.0f));
        let x_868 : vec2<f32> = u_xlat56;
        let x_870 : vec2<f32> = min(x_868, vec2<f32>(0.0f, 0.0f));
        let x_871 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_870.x, x_870.y, x_871.z, x_871.w);
        let x_873 : vec4<f32> = u_xlat9;
        let x_876 : vec4<f32> = u_xlat9;
        let x_879 : vec2<f32> = u_xlat58;
        let x_880 : vec2<f32> = ((-(vec2<f32>(x_873.x, x_873.y)) * vec2<f32>(x_876.x, x_876.y)) + x_879);
        let x_881 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_880.x, x_880.y, x_881.z, x_881.w);
        let x_883 : vec2<f32> = u_xlat56;
        u_xlat56 = max(x_883, vec2<f32>(0.0f, 0.0f));
        let x_885 : vec2<f32> = u_xlat56;
        let x_887 : vec2<f32> = u_xlat56;
        let x_889 : vec4<f32> = u_xlat7;
        u_xlat56 = ((-(x_885) * x_887) + vec2<f32>(x_889.y, x_889.w));
        let x_892 : vec4<f32> = u_xlat9;
        let x_894 : vec2<f32> = (vec2<f32>(x_892.x, x_892.y) + vec2<f32>(1.0f, 1.0f));
        let x_895 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_894.x, x_894.y, x_895.z, x_895.w);
        let x_897 : vec2<f32> = u_xlat56;
        u_xlat56 = (x_897 + vec2<f32>(1.0f, 1.0f));
        let x_899 : vec4<f32> = u_xlat8;
        let x_903 : vec2<f32> = (vec2<f32>(x_899.x, x_899.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_904 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_903.x, x_903.y, x_904.z, x_904.w);
        let x_906 : vec2<f32> = u_xlat58;
        let x_907 : vec2<f32> = (x_906 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_908 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_907.x, x_907.y, x_908.z, x_908.w);
        let x_910 : vec4<f32> = u_xlat9;
        let x_912 : vec2<f32> = (vec2<f32>(x_910.x, x_910.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_913 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_912.x, x_912.y, x_913.z, x_913.w);
        let x_915 : vec2<f32> = u_xlat56;
        let x_916 : vec2<f32> = (x_915 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_917 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_916.x, x_916.y, x_917.z, x_917.w);
        let x_919 : vec4<f32> = u_xlat7;
        u_xlat56 = (vec2<f32>(x_919.y, x_919.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_923 : f32 = u_xlat9.x;
        u_xlat10.z = x_923;
        let x_926 : f32 = u_xlat56.x;
        u_xlat10.w = x_926;
        let x_929 : f32 = u_xlat11.x;
        u_xlat8.z = x_929;
        let x_932 : f32 = u_xlat7.x;
        u_xlat8.w = x_932;
        let x_934 : vec4<f32> = u_xlat8;
        let x_936 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_934.z, x_934.w, x_934.x, x_934.z) + vec4<f32>(x_936.z, x_936.w, x_936.x, x_936.z));
        let x_940 : f32 = u_xlat10.y;
        u_xlat9.z = x_940;
        let x_943 : f32 = u_xlat56.y;
        u_xlat9.w = x_943;
        let x_946 : f32 = u_xlat8.y;
        u_xlat11.z = x_946;
        let x_949 : f32 = u_xlat7.z;
        u_xlat11.w = x_949;
        let x_951 : vec4<f32> = u_xlat9;
        let x_953 : vec4<f32> = u_xlat11;
        let x_955 : vec3<f32> = (vec3<f32>(x_951.z, x_951.y, x_951.w) + vec3<f32>(x_953.z, x_953.y, x_953.w));
        let x_956 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_955.x, x_955.y, x_955.z, x_956.w);
        let x_958 : vec4<f32> = u_xlat8;
        let x_960 : vec4<f32> = u_xlat12;
        let x_962 : vec3<f32> = (vec3<f32>(x_958.x, x_958.z, x_958.w) / vec3<f32>(x_960.z, x_960.w, x_960.y));
        let x_963 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_962.x, x_962.y, x_962.z, x_963.w);
        let x_965 : vec4<f32> = u_xlat8;
        let x_970 : vec3<f32> = (vec3<f32>(x_965.x, x_965.y, x_965.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_971 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_970.x, x_970.y, x_970.z, x_971.w);
        let x_973 : vec4<f32> = u_xlat11;
        let x_975 : vec4<f32> = u_xlat7;
        let x_977 : vec3<f32> = (vec3<f32>(x_973.z, x_973.y, x_973.w) / vec3<f32>(x_975.x, x_975.y, x_975.z));
        let x_978 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_977.x, x_977.y, x_977.z, x_978.w);
        let x_980 : vec4<f32> = u_xlat9;
        let x_982 : vec3<f32> = (vec3<f32>(x_980.x, x_980.y, x_980.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_983 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_982.x, x_982.y, x_982.z, x_983.w);
        let x_985 : vec4<f32> = u_xlat8;
        let x_988 : vec4<f32> = x_709.x_MainLightShadowmapSize;
        let x_990 : vec3<f32> = (vec3<f32>(x_985.y, x_985.x, x_985.z) * vec3<f32>(x_988.x, x_988.x, x_988.x));
        let x_991 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_990.x, x_990.y, x_990.z, x_991.w);
        let x_993 : vec4<f32> = u_xlat9;
        let x_996 : vec4<f32> = x_709.x_MainLightShadowmapSize;
        let x_998 : vec3<f32> = (vec3<f32>(x_993.x, x_993.y, x_993.z) * vec3<f32>(x_996.y, x_996.y, x_996.y));
        let x_999 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_998.x, x_998.y, x_998.z, x_999.w);
        let x_1002 : f32 = u_xlat9.x;
        u_xlat8.w = x_1002;
        let x_1004 : vec4<f32> = u_xlat6;
        let x_1007 : vec4<f32> = x_709.x_MainLightShadowmapSize;
        let x_1010 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1004.x, x_1004.y, x_1004.x, x_1004.y) * vec4<f32>(x_1007.x, x_1007.y, x_1007.x, x_1007.y)) + vec4<f32>(x_1010.y, x_1010.w, x_1010.x, x_1010.w));
        let x_1013 : vec4<f32> = u_xlat6;
        let x_1016 : vec4<f32> = x_709.x_MainLightShadowmapSize;
        let x_1019 : vec4<f32> = u_xlat8;
        u_xlat56 = ((vec2<f32>(x_1013.x, x_1013.y) * vec2<f32>(x_1016.x, x_1016.y)) + vec2<f32>(x_1019.z, x_1019.w));
        let x_1023 : f32 = u_xlat8.y;
        u_xlat9.w = x_1023;
        let x_1025 : vec4<f32> = u_xlat9;
        let x_1026 : vec2<f32> = vec2<f32>(x_1025.y, x_1025.z);
        let x_1027 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1027.x, x_1026.x, x_1027.z, x_1026.y);
        let x_1029 : vec4<f32> = u_xlat6;
        let x_1032 : vec4<f32> = x_709.x_MainLightShadowmapSize;
        let x_1035 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1029.x, x_1029.y, x_1029.x, x_1029.y) * vec4<f32>(x_1032.x, x_1032.y, x_1032.x, x_1032.y)) + vec4<f32>(x_1035.x, x_1035.y, x_1035.z, x_1035.y));
        let x_1038 : vec4<f32> = u_xlat6;
        let x_1041 : vec4<f32> = x_709.x_MainLightShadowmapSize;
        let x_1044 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1038.x, x_1038.y, x_1038.x, x_1038.y) * vec4<f32>(x_1041.x, x_1041.y, x_1041.x, x_1041.y)) + vec4<f32>(x_1044.w, x_1044.y, x_1044.w, x_1044.z));
        let x_1047 : vec4<f32> = u_xlat6;
        let x_1050 : vec4<f32> = x_709.x_MainLightShadowmapSize;
        let x_1053 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1047.x, x_1047.y, x_1047.x, x_1047.y) * vec4<f32>(x_1050.x, x_1050.y, x_1050.x, x_1050.y)) + vec4<f32>(x_1053.x, x_1053.w, x_1053.z, x_1053.w));
        let x_1056 : vec4<f32> = u_xlat7;
        let x_1058 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_1056.x, x_1056.x, x_1056.x, x_1056.y) * vec4<f32>(x_1058.z, x_1058.w, x_1058.y, x_1058.z));
        let x_1062 : vec4<f32> = u_xlat7;
        let x_1064 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_1062.y, x_1062.y, x_1062.z, x_1062.z) * x_1064);
        let x_1068 : f32 = u_xlat7.z;
        let x_1070 : f32 = u_xlat12.y;
        u_xlat80 = (x_1068 * x_1070);
        let x_1073 : vec4<f32> = u_xlat10;
        let x_1074 : vec2<f32> = vec2<f32>(x_1073.x, x_1073.y);
        let x_1076 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_1074.x, x_1074.y, x_1076);
        let x_1083 : vec3<f32> = txVec4;
        let x_1085 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1083.xy, x_1083.z);
        u_xlat6.x = x_1085;
        let x_1088 : vec4<f32> = u_xlat10;
        let x_1089 : vec2<f32> = vec2<f32>(x_1088.z, x_1088.w);
        let x_1091 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_1089.x, x_1089.y, x_1091);
        let x_1099 : vec3<f32> = txVec5;
        let x_1101 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1099.xy, x_1099.z);
        u_xlat31 = x_1101;
        let x_1102 : f32 = u_xlat31;
        let x_1104 : f32 = u_xlat13.y;
        u_xlat31 = (x_1102 * x_1104);
        let x_1107 : f32 = u_xlat13.x;
        let x_1109 : f32 = u_xlat6.x;
        let x_1111 : f32 = u_xlat31;
        u_xlat6.x = ((x_1107 * x_1109) + x_1111);
        let x_1115 : vec2<f32> = u_xlat56;
        let x_1117 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_1115.x, x_1115.y, x_1117);
        let x_1124 : vec3<f32> = txVec6;
        let x_1126 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1124.xy, x_1124.z);
        u_xlat31 = x_1126;
        let x_1128 : f32 = u_xlat13.z;
        let x_1129 : f32 = u_xlat31;
        let x_1132 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1128 * x_1129) + x_1132);
        let x_1136 : vec4<f32> = u_xlat9;
        let x_1137 : vec2<f32> = vec2<f32>(x_1136.x, x_1136.y);
        let x_1139 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_1137.x, x_1137.y, x_1139);
        let x_1146 : vec3<f32> = txVec7;
        let x_1148 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1146.xy, x_1146.z);
        u_xlat31 = x_1148;
        let x_1150 : f32 = u_xlat13.w;
        let x_1151 : f32 = u_xlat31;
        let x_1154 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1150 * x_1151) + x_1154);
        let x_1158 : vec4<f32> = u_xlat11;
        let x_1159 : vec2<f32> = vec2<f32>(x_1158.x, x_1158.y);
        let x_1161 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_1159.x, x_1159.y, x_1161);
        let x_1168 : vec3<f32> = txVec8;
        let x_1170 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1168.xy, x_1168.z);
        u_xlat31 = x_1170;
        let x_1172 : f32 = u_xlat14.x;
        let x_1173 : f32 = u_xlat31;
        let x_1176 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1172 * x_1173) + x_1176);
        let x_1180 : vec4<f32> = u_xlat11;
        let x_1181 : vec2<f32> = vec2<f32>(x_1180.z, x_1180.w);
        let x_1183 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_1181.x, x_1181.y, x_1183);
        let x_1190 : vec3<f32> = txVec9;
        let x_1192 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1190.xy, x_1190.z);
        u_xlat31 = x_1192;
        let x_1194 : f32 = u_xlat14.y;
        let x_1195 : f32 = u_xlat31;
        let x_1198 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1194 * x_1195) + x_1198);
        let x_1202 : vec4<f32> = u_xlat9;
        let x_1203 : vec2<f32> = vec2<f32>(x_1202.z, x_1202.w);
        let x_1205 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_1203.x, x_1203.y, x_1205);
        let x_1212 : vec3<f32> = txVec10;
        let x_1214 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1212.xy, x_1212.z);
        u_xlat31 = x_1214;
        let x_1216 : f32 = u_xlat14.z;
        let x_1217 : f32 = u_xlat31;
        let x_1220 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1216 * x_1217) + x_1220);
        let x_1224 : vec4<f32> = u_xlat8;
        let x_1225 : vec2<f32> = vec2<f32>(x_1224.x, x_1224.y);
        let x_1227 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_1225.x, x_1225.y, x_1227);
        let x_1234 : vec3<f32> = txVec11;
        let x_1236 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1234.xy, x_1234.z);
        u_xlat31 = x_1236;
        let x_1238 : f32 = u_xlat14.w;
        let x_1239 : f32 = u_xlat31;
        let x_1242 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1238 * x_1239) + x_1242);
        let x_1246 : vec4<f32> = u_xlat8;
        let x_1247 : vec2<f32> = vec2<f32>(x_1246.z, x_1246.w);
        let x_1249 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_1247.x, x_1247.y, x_1249);
        let x_1256 : vec3<f32> = txVec12;
        let x_1258 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1256.xy, x_1256.z);
        u_xlat31 = x_1258;
        let x_1259 : f32 = u_xlat80;
        let x_1260 : f32 = u_xlat31;
        let x_1263 : f32 = u_xlat6.x;
        u_xlat79 = ((x_1259 * x_1260) + x_1263);
      } else {
        let x_1266 : vec4<f32> = vs_TEXCOORD8;
        let x_1269 : vec4<f32> = x_709.x_MainLightShadowmapSize;
        let x_1272 : vec2<f32> = ((vec2<f32>(x_1266.x, x_1266.y) * vec2<f32>(x_1269.z, x_1269.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1273 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1272.x, x_1272.y, x_1273.z, x_1273.w);
        let x_1275 : vec4<f32> = u_xlat6;
        let x_1277 : vec2<f32> = floor(vec2<f32>(x_1275.x, x_1275.y));
        let x_1278 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1277.x, x_1277.y, x_1278.z, x_1278.w);
        let x_1280 : vec4<f32> = vs_TEXCOORD8;
        let x_1283 : vec4<f32> = x_709.x_MainLightShadowmapSize;
        let x_1286 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_1280.x, x_1280.y) * vec2<f32>(x_1283.z, x_1283.w)) + -(vec2<f32>(x_1286.x, x_1286.y)));
        let x_1290 : vec2<f32> = u_xlat56;
        u_xlat7 = (vec4<f32>(x_1290.x, x_1290.x, x_1290.y, x_1290.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1293 : vec4<f32> = u_xlat7;
        let x_1295 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1293.x, x_1293.x, x_1293.z, x_1293.z) * vec4<f32>(x_1295.x, x_1295.x, x_1295.z, x_1295.z));
        let x_1298 : vec4<f32> = u_xlat8;
        let x_1302 : vec2<f32> = (vec2<f32>(x_1298.y, x_1298.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1303 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1303.x, x_1302.x, x_1303.z, x_1302.y);
        let x_1305 : vec4<f32> = u_xlat8;
        let x_1308 : vec2<f32> = u_xlat56;
        let x_1310 : vec2<f32> = ((vec2<f32>(x_1305.x, x_1305.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1308));
        let x_1311 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1310.x, x_1311.y, x_1310.y, x_1311.w);
        let x_1313 : vec2<f32> = u_xlat56;
        let x_1315 : vec2<f32> = (-(x_1313) + vec2<f32>(1.0f, 1.0f));
        let x_1316 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1315.x, x_1315.y, x_1316.z, x_1316.w);
        let x_1318 : vec2<f32> = u_xlat56;
        u_xlat58 = min(x_1318, vec2<f32>(0.0f, 0.0f));
        let x_1320 : vec2<f32> = u_xlat58;
        let x_1322 : vec2<f32> = u_xlat58;
        let x_1324 : vec4<f32> = u_xlat8;
        let x_1326 : vec2<f32> = ((-(x_1320) * x_1322) + vec2<f32>(x_1324.x, x_1324.y));
        let x_1327 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1326.x, x_1326.y, x_1327.z, x_1327.w);
        let x_1329 : vec2<f32> = u_xlat56;
        u_xlat58 = max(x_1329, vec2<f32>(0.0f, 0.0f));
        let x_1332 : vec2<f32> = u_xlat58;
        let x_1334 : vec2<f32> = u_xlat58;
        let x_1336 : vec4<f32> = u_xlat7;
        let x_1338 : vec2<f32> = ((-(x_1332) * x_1334) + vec2<f32>(x_1336.y, x_1336.w));
        let x_1339 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_1338.x, x_1339.y, x_1338.y);
        let x_1341 : vec4<f32> = u_xlat8;
        let x_1344 : vec2<f32> = (vec2<f32>(x_1341.x, x_1341.y) + vec2<f32>(2.0f, 2.0f));
        let x_1345 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1344.x, x_1344.y, x_1345.z, x_1345.w);
        let x_1347 : vec3<f32> = u_xlat32;
        let x_1349 : vec2<f32> = (vec2<f32>(x_1347.x, x_1347.z) + vec2<f32>(2.0f, 2.0f));
        let x_1350 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1350.x, x_1349.x, x_1350.z, x_1349.y);
        let x_1353 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1353 * 0.08163200318813323975f);
        let x_1357 : vec4<f32> = u_xlat7;
        let x_1360 : vec3<f32> = (vec3<f32>(x_1357.z, x_1357.x, x_1357.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1361 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1360.x, x_1360.y, x_1360.z, x_1361.w);
        let x_1363 : vec4<f32> = u_xlat8;
        let x_1366 : vec2<f32> = (vec2<f32>(x_1363.x, x_1363.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1367 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1366.x, x_1366.y, x_1367.z, x_1367.w);
        let x_1370 : f32 = u_xlat11.y;
        u_xlat10.x = x_1370;
        let x_1372 : vec2<f32> = u_xlat56;
        let x_1379 : vec2<f32> = ((vec2<f32>(x_1372.x, x_1372.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1380 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1380.x, x_1379.x, x_1380.z, x_1379.y);
        let x_1382 : vec2<f32> = u_xlat56;
        let x_1386 : vec2<f32> = ((vec2<f32>(x_1382.x, x_1382.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1387 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1386.x, x_1387.y, x_1386.y, x_1387.w);
        let x_1390 : f32 = u_xlat7.x;
        u_xlat8.y = x_1390;
        let x_1393 : f32 = u_xlat9.y;
        u_xlat8.w = x_1393;
        let x_1395 : vec4<f32> = u_xlat8;
        let x_1396 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1395 + x_1396);
        let x_1398 : vec2<f32> = u_xlat56;
        let x_1401 : vec2<f32> = ((vec2<f32>(x_1398.y, x_1398.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1402 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1402.x, x_1401.x, x_1402.z, x_1401.y);
        let x_1404 : vec2<f32> = u_xlat56;
        let x_1407 : vec2<f32> = ((vec2<f32>(x_1404.y, x_1404.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1408 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1407.x, x_1408.y, x_1407.y, x_1408.w);
        let x_1411 : f32 = u_xlat7.y;
        u_xlat9.y = x_1411;
        let x_1413 : vec4<f32> = u_xlat9;
        let x_1414 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1413 + x_1414);
        let x_1416 : vec4<f32> = u_xlat8;
        let x_1417 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1416 / x_1417);
        let x_1419 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1419 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1425 : vec4<f32> = u_xlat9;
        let x_1426 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1425 / x_1426);
        let x_1428 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1428 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1430 : vec4<f32> = u_xlat8;
        let x_1433 : vec4<f32> = x_709.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1430.w, x_1430.x, x_1430.y, x_1430.z) * vec4<f32>(x_1433.x, x_1433.x, x_1433.x, x_1433.x));
        let x_1436 : vec4<f32> = u_xlat9;
        let x_1439 : vec4<f32> = x_709.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1436.x, x_1436.w, x_1436.y, x_1436.z) * vec4<f32>(x_1439.y, x_1439.y, x_1439.y, x_1439.y));
        let x_1442 : vec4<f32> = u_xlat8;
        let x_1443 : vec3<f32> = vec3<f32>(x_1442.y, x_1442.z, x_1442.w);
        let x_1444 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1443.x, x_1444.y, x_1443.y, x_1443.z);
        let x_1447 : f32 = u_xlat9.x;
        u_xlat11.y = x_1447;
        let x_1449 : vec4<f32> = u_xlat6;
        let x_1452 : vec4<f32> = x_709.x_MainLightShadowmapSize;
        let x_1455 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1449.x, x_1449.y, x_1449.x, x_1449.y) * vec4<f32>(x_1452.x, x_1452.y, x_1452.x, x_1452.y)) + vec4<f32>(x_1455.x, x_1455.y, x_1455.z, x_1455.y));
        let x_1458 : vec4<f32> = u_xlat6;
        let x_1461 : vec4<f32> = x_709.x_MainLightShadowmapSize;
        let x_1464 : vec4<f32> = u_xlat11;
        u_xlat56 = ((vec2<f32>(x_1458.x, x_1458.y) * vec2<f32>(x_1461.x, x_1461.y)) + vec2<f32>(x_1464.w, x_1464.y));
        let x_1468 : f32 = u_xlat11.y;
        u_xlat8.y = x_1468;
        let x_1471 : f32 = u_xlat9.z;
        u_xlat11.y = x_1471;
        let x_1473 : vec4<f32> = u_xlat6;
        let x_1476 : vec4<f32> = x_709.x_MainLightShadowmapSize;
        let x_1479 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1473.x, x_1473.y, x_1473.x, x_1473.y) * vec4<f32>(x_1476.x, x_1476.y, x_1476.x, x_1476.y)) + vec4<f32>(x_1479.x, x_1479.y, x_1479.z, x_1479.y));
        let x_1482 : vec4<f32> = u_xlat6;
        let x_1485 : vec4<f32> = x_709.x_MainLightShadowmapSize;
        let x_1488 : vec4<f32> = u_xlat11;
        let x_1490 : vec2<f32> = ((vec2<f32>(x_1482.x, x_1482.y) * vec2<f32>(x_1485.x, x_1485.y)) + vec2<f32>(x_1488.w, x_1488.y));
        let x_1491 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1490.x, x_1490.y, x_1491.z, x_1491.w);
        let x_1494 : f32 = u_xlat11.y;
        u_xlat8.z = x_1494;
        let x_1497 : vec4<f32> = u_xlat6;
        let x_1500 : vec4<f32> = x_709.x_MainLightShadowmapSize;
        let x_1503 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1497.x, x_1497.y, x_1497.x, x_1497.y) * vec4<f32>(x_1500.x, x_1500.y, x_1500.x, x_1500.y)) + vec4<f32>(x_1503.x, x_1503.y, x_1503.x, x_1503.z));
        let x_1507 : f32 = u_xlat9.w;
        u_xlat11.y = x_1507;
        let x_1510 : vec4<f32> = u_xlat6;
        let x_1513 : vec4<f32> = x_709.x_MainLightShadowmapSize;
        let x_1516 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1510.x, x_1510.y, x_1510.x, x_1510.y) * vec4<f32>(x_1513.x, x_1513.y, x_1513.x, x_1513.y)) + vec4<f32>(x_1516.x, x_1516.y, x_1516.z, x_1516.y));
        let x_1520 : vec4<f32> = u_xlat6;
        let x_1523 : vec4<f32> = x_709.x_MainLightShadowmapSize;
        let x_1526 : vec4<f32> = u_xlat11;
        u_xlat33 = ((vec2<f32>(x_1520.x, x_1520.y) * vec2<f32>(x_1523.x, x_1523.y)) + vec2<f32>(x_1526.w, x_1526.y));
        let x_1530 : f32 = u_xlat11.y;
        u_xlat8.w = x_1530;
        let x_1533 : vec4<f32> = u_xlat6;
        let x_1536 : vec4<f32> = x_709.x_MainLightShadowmapSize;
        let x_1539 : vec4<f32> = u_xlat8;
        u_xlat64 = ((vec2<f32>(x_1533.x, x_1533.y) * vec2<f32>(x_1536.x, x_1536.y)) + vec2<f32>(x_1539.x, x_1539.w));
        let x_1542 : vec4<f32> = u_xlat11;
        let x_1543 : vec3<f32> = vec3<f32>(x_1542.x, x_1542.z, x_1542.w);
        let x_1544 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1543.x, x_1544.y, x_1543.y, x_1543.z);
        let x_1546 : vec4<f32> = u_xlat6;
        let x_1549 : vec4<f32> = x_709.x_MainLightShadowmapSize;
        let x_1552 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1546.x, x_1546.y, x_1546.x, x_1546.y) * vec4<f32>(x_1549.x, x_1549.y, x_1549.x, x_1549.y)) + vec4<f32>(x_1552.x, x_1552.y, x_1552.z, x_1552.y));
        let x_1556 : vec4<f32> = u_xlat6;
        let x_1559 : vec4<f32> = x_709.x_MainLightShadowmapSize;
        let x_1562 : vec4<f32> = u_xlat9;
        u_xlat59 = ((vec2<f32>(x_1556.x, x_1556.y) * vec2<f32>(x_1559.x, x_1559.y)) + vec2<f32>(x_1562.w, x_1562.y));
        let x_1566 : f32 = u_xlat8.x;
        u_xlat9.x = x_1566;
        let x_1568 : vec4<f32> = u_xlat6;
        let x_1571 : vec4<f32> = x_709.x_MainLightShadowmapSize;
        let x_1574 : vec4<f32> = u_xlat9;
        let x_1576 : vec2<f32> = ((vec2<f32>(x_1568.x, x_1568.y) * vec2<f32>(x_1571.x, x_1571.y)) + vec2<f32>(x_1574.x, x_1574.y));
        let x_1577 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1576.x, x_1576.y, x_1577.z, x_1577.w);
        let x_1580 : vec4<f32> = u_xlat7;
        let x_1582 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1580.x, x_1580.x, x_1580.x, x_1580.x) * x_1582);
        let x_1585 : vec4<f32> = u_xlat7;
        let x_1587 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1585.y, x_1585.y, x_1585.y, x_1585.y) * x_1587);
        let x_1590 : vec4<f32> = u_xlat7;
        let x_1592 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1590.z, x_1590.z, x_1590.z, x_1590.z) * x_1592);
        let x_1594 : vec4<f32> = u_xlat7;
        let x_1596 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1594.w, x_1594.w, x_1594.w, x_1594.w) * x_1596);
        let x_1599 : vec4<f32> = u_xlat12;
        let x_1600 : vec2<f32> = vec2<f32>(x_1599.x, x_1599.y);
        let x_1602 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1600.x, x_1600.y, x_1602);
        let x_1609 : vec3<f32> = txVec13;
        let x_1611 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1609.xy, x_1609.z);
        u_xlat80 = x_1611;
        let x_1613 : vec4<f32> = u_xlat12;
        let x_1614 : vec2<f32> = vec2<f32>(x_1613.z, x_1613.w);
        let x_1616 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1614.x, x_1614.y, x_1616);
        let x_1623 : vec3<f32> = txVec14;
        let x_1625 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1623.xy, x_1623.z);
        u_xlat8.x = x_1625;
        let x_1628 : f32 = u_xlat8.x;
        let x_1630 : f32 = u_xlat17.y;
        u_xlat8.x = (x_1628 * x_1630);
        let x_1634 : f32 = u_xlat17.x;
        let x_1635 : f32 = u_xlat80;
        let x_1638 : f32 = u_xlat8.x;
        u_xlat80 = ((x_1634 * x_1635) + x_1638);
        let x_1641 : vec2<f32> = u_xlat56;
        let x_1643 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1641.x, x_1641.y, x_1643);
        let x_1650 : vec3<f32> = txVec15;
        let x_1652 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1650.xy, x_1650.z);
        u_xlat56.x = x_1652;
        let x_1655 : f32 = u_xlat17.z;
        let x_1657 : f32 = u_xlat56.x;
        let x_1659 : f32 = u_xlat80;
        u_xlat80 = ((x_1655 * x_1657) + x_1659);
        let x_1662 : vec4<f32> = u_xlat15;
        let x_1663 : vec2<f32> = vec2<f32>(x_1662.x, x_1662.y);
        let x_1665 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1663.x, x_1663.y, x_1665);
        let x_1672 : vec3<f32> = txVec16;
        let x_1674 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1672.xy, x_1672.z);
        u_xlat56.x = x_1674;
        let x_1677 : f32 = u_xlat17.w;
        let x_1679 : f32 = u_xlat56.x;
        let x_1681 : f32 = u_xlat80;
        u_xlat80 = ((x_1677 * x_1679) + x_1681);
        let x_1684 : vec4<f32> = u_xlat13;
        let x_1685 : vec2<f32> = vec2<f32>(x_1684.x, x_1684.y);
        let x_1687 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1685.x, x_1685.y, x_1687);
        let x_1694 : vec3<f32> = txVec17;
        let x_1696 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1694.xy, x_1694.z);
        u_xlat56.x = x_1696;
        let x_1699 : f32 = u_xlat18.x;
        let x_1701 : f32 = u_xlat56.x;
        let x_1703 : f32 = u_xlat80;
        u_xlat80 = ((x_1699 * x_1701) + x_1703);
        let x_1706 : vec4<f32> = u_xlat13;
        let x_1707 : vec2<f32> = vec2<f32>(x_1706.z, x_1706.w);
        let x_1709 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1707.x, x_1707.y, x_1709);
        let x_1716 : vec3<f32> = txVec18;
        let x_1718 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1716.xy, x_1716.z);
        u_xlat56.x = x_1718;
        let x_1721 : f32 = u_xlat18.y;
        let x_1723 : f32 = u_xlat56.x;
        let x_1725 : f32 = u_xlat80;
        u_xlat80 = ((x_1721 * x_1723) + x_1725);
        let x_1728 : vec4<f32> = u_xlat14;
        let x_1729 : vec2<f32> = vec2<f32>(x_1728.x, x_1728.y);
        let x_1731 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1729.x, x_1729.y, x_1731);
        let x_1738 : vec3<f32> = txVec19;
        let x_1740 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1738.xy, x_1738.z);
        u_xlat56.x = x_1740;
        let x_1743 : f32 = u_xlat18.z;
        let x_1745 : f32 = u_xlat56.x;
        let x_1747 : f32 = u_xlat80;
        u_xlat80 = ((x_1743 * x_1745) + x_1747);
        let x_1750 : vec4<f32> = u_xlat15;
        let x_1751 : vec2<f32> = vec2<f32>(x_1750.z, x_1750.w);
        let x_1753 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1751.x, x_1751.y, x_1753);
        let x_1760 : vec3<f32> = txVec20;
        let x_1762 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1760.xy, x_1760.z);
        u_xlat56.x = x_1762;
        let x_1765 : f32 = u_xlat18.w;
        let x_1767 : f32 = u_xlat56.x;
        let x_1769 : f32 = u_xlat80;
        u_xlat80 = ((x_1765 * x_1767) + x_1769);
        let x_1772 : vec4<f32> = u_xlat16;
        let x_1773 : vec2<f32> = vec2<f32>(x_1772.x, x_1772.y);
        let x_1775 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1773.x, x_1773.y, x_1775);
        let x_1782 : vec3<f32> = txVec21;
        let x_1784 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1782.xy, x_1782.z);
        u_xlat56.x = x_1784;
        let x_1787 : f32 = u_xlat19.x;
        let x_1789 : f32 = u_xlat56.x;
        let x_1791 : f32 = u_xlat80;
        u_xlat80 = ((x_1787 * x_1789) + x_1791);
        let x_1794 : vec4<f32> = u_xlat16;
        let x_1795 : vec2<f32> = vec2<f32>(x_1794.z, x_1794.w);
        let x_1797 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1795.x, x_1795.y, x_1797);
        let x_1804 : vec3<f32> = txVec22;
        let x_1806 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1804.xy, x_1804.z);
        u_xlat56.x = x_1806;
        let x_1809 : f32 = u_xlat19.y;
        let x_1811 : f32 = u_xlat56.x;
        let x_1813 : f32 = u_xlat80;
        u_xlat80 = ((x_1809 * x_1811) + x_1813);
        let x_1816 : vec2<f32> = u_xlat33;
        let x_1818 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1816.x, x_1816.y, x_1818);
        let x_1825 : vec3<f32> = txVec23;
        let x_1827 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1825.xy, x_1825.z);
        u_xlat56.x = x_1827;
        let x_1830 : f32 = u_xlat19.z;
        let x_1832 : f32 = u_xlat56.x;
        let x_1834 : f32 = u_xlat80;
        u_xlat80 = ((x_1830 * x_1832) + x_1834);
        let x_1837 : vec2<f32> = u_xlat64;
        let x_1839 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1837.x, x_1837.y, x_1839);
        let x_1846 : vec3<f32> = txVec24;
        let x_1848 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1846.xy, x_1846.z);
        u_xlat56.x = x_1848;
        let x_1851 : f32 = u_xlat19.w;
        let x_1853 : f32 = u_xlat56.x;
        let x_1855 : f32 = u_xlat80;
        u_xlat80 = ((x_1851 * x_1853) + x_1855);
        let x_1858 : vec4<f32> = u_xlat11;
        let x_1859 : vec2<f32> = vec2<f32>(x_1858.x, x_1858.y);
        let x_1861 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1859.x, x_1859.y, x_1861);
        let x_1868 : vec3<f32> = txVec25;
        let x_1870 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1868.xy, x_1868.z);
        u_xlat56.x = x_1870;
        let x_1873 : f32 = u_xlat7.x;
        let x_1875 : f32 = u_xlat56.x;
        let x_1877 : f32 = u_xlat80;
        u_xlat80 = ((x_1873 * x_1875) + x_1877);
        let x_1880 : vec4<f32> = u_xlat11;
        let x_1881 : vec2<f32> = vec2<f32>(x_1880.z, x_1880.w);
        let x_1883 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1881.x, x_1881.y, x_1883);
        let x_1890 : vec3<f32> = txVec26;
        let x_1892 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1890.xy, x_1890.z);
        u_xlat56.x = x_1892;
        let x_1895 : f32 = u_xlat7.y;
        let x_1897 : f32 = u_xlat56.x;
        let x_1899 : f32 = u_xlat80;
        u_xlat80 = ((x_1895 * x_1897) + x_1899);
        let x_1902 : vec2<f32> = u_xlat59;
        let x_1904 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_1902.x, x_1902.y, x_1904);
        let x_1911 : vec3<f32> = txVec27;
        let x_1913 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1911.xy, x_1911.z);
        u_xlat56.x = x_1913;
        let x_1916 : f32 = u_xlat7.z;
        let x_1918 : f32 = u_xlat56.x;
        let x_1920 : f32 = u_xlat80;
        u_xlat80 = ((x_1916 * x_1918) + x_1920);
        let x_1923 : vec4<f32> = u_xlat6;
        let x_1924 : vec2<f32> = vec2<f32>(x_1923.x, x_1923.y);
        let x_1926 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_1924.x, x_1924.y, x_1926);
        let x_1933 : vec3<f32> = txVec28;
        let x_1935 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1933.xy, x_1933.z);
        u_xlat6.x = x_1935;
        let x_1938 : f32 = u_xlat7.w;
        let x_1940 : f32 = u_xlat6.x;
        let x_1942 : f32 = u_xlat80;
        u_xlat79 = ((x_1938 * x_1940) + x_1942);
      }
    }
  } else {
    let x_1946 : vec4<f32> = vs_TEXCOORD8;
    let x_1947 : vec2<f32> = vec2<f32>(x_1946.x, x_1946.y);
    let x_1949 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_1947.x, x_1947.y, x_1949);
    let x_1956 : vec3<f32> = txVec29;
    let x_1958 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1956.xy, x_1956.z);
    u_xlat79 = x_1958;
  }
  let x_1960 : f32 = x_709.x_MainLightShadowParams.x;
  u_xlat80 = (-(x_1960) + 1.0f);
  let x_1963 : f32 = u_xlat79;
  let x_1965 : f32 = x_709.x_MainLightShadowParams.x;
  let x_1967 : f32 = u_xlat80;
  u_xlat79 = ((x_1963 * x_1965) + x_1967);
  let x_1970 : f32 = vs_TEXCOORD8.z;
  u_xlatb80 = (0.0f >= x_1970);
  let x_1974 : f32 = vs_TEXCOORD8.z;
  u_xlatb6 = (x_1974 >= 1.0f);
  let x_1976 : bool = u_xlatb80;
  let x_1977 : bool = u_xlatb6;
  u_xlatb80 = (x_1976 | x_1977);
  let x_1979 : bool = u_xlatb80;
  let x_1980 : f32 = u_xlat79;
  u_xlat79 = select(x_1980, 1.0f, x_1979);
  let x_1982 : vec3<f32> = vs_TEXCOORD7;
  let x_1984 : vec3<f32> = x_111.x_WorldSpaceCameraPos;
  let x_1986 : vec3<f32> = (x_1982 + -(x_1984));
  let x_1987 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1986.x, x_1986.y, x_1986.z, x_1987.w);
  let x_1989 : vec4<f32> = u_xlat6;
  let x_1991 : vec4<f32> = u_xlat6;
  u_xlat80 = dot(vec3<f32>(x_1989.x, x_1989.y, x_1989.z), vec3<f32>(x_1991.x, x_1991.y, x_1991.z));
  let x_1994 : f32 = u_xlat80;
  let x_1996 : f32 = x_709.x_MainLightShadowParams.z;
  let x_1999 : f32 = x_709.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_1994 * x_1996) + x_1999);
  let x_2003 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_2003, 0.0f, 1.0f);
  let x_2006 : f32 = u_xlat79;
  u_xlat31 = (-(x_2006) + 1.0f);
  let x_2010 : f32 = u_xlat6.x;
  let x_2011 : f32 = u_xlat31;
  let x_2013 : f32 = u_xlat79;
  u_xlat79 = ((x_2010 * x_2011) + x_2013);
  let x_2015 : vec3<f32> = u_xlat2;
  let x_2017 : vec4<f32> = u_xlat1;
  u_xlat6.x = dot(-(x_2015), vec3<f32>(x_2017.x, x_2017.y, x_2017.z));
  let x_2022 : f32 = u_xlat6.x;
  let x_2024 : f32 = u_xlat6.x;
  u_xlat6.x = (x_2022 + x_2024);
  let x_2027 : vec4<f32> = u_xlat1;
  let x_2029 : vec4<f32> = u_xlat6;
  let x_2033 : vec3<f32> = u_xlat2;
  let x_2035 : vec3<f32> = ((vec3<f32>(x_2027.x, x_2027.y, x_2027.z) * -(vec3<f32>(x_2029.x, x_2029.x, x_2029.x))) + -(x_2033));
  let x_2036 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2035.x, x_2035.y, x_2035.z, x_2036.w);
  let x_2039 : vec4<f32> = u_xlat1;
  let x_2041 : vec3<f32> = u_xlat2;
  u_xlat81 = dot(vec3<f32>(x_2039.x, x_2039.y, x_2039.z), x_2041);
  let x_2043 : f32 = u_xlat81;
  u_xlat81 = clamp(x_2043, 0.0f, 1.0f);
  let x_2045 : f32 = u_xlat81;
  u_xlat81 = (-(x_2045) + 1.0f);
  let x_2048 : f32 = u_xlat81;
  let x_2049 : f32 = u_xlat81;
  u_xlat81 = (x_2048 * x_2049);
  let x_2051 : f32 = u_xlat81;
  let x_2052 : f32 = u_xlat81;
  u_xlat81 = (x_2051 * x_2052);
  let x_2055 : f32 = u_xlat0.x;
  u_xlat7.x = ((-(x_2055) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2063 : f32 = u_xlat0.x;
  let x_2065 : f32 = u_xlat7.x;
  u_xlat0.x = (x_2063 * x_2065);
  let x_2069 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2069 * 6.0f);
  let x_2081 : vec4<f32> = u_xlat6;
  let x_2084 : f32 = u_xlat0.x;
  let x_2085 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2081.x, x_2081.y, x_2081.z), x_2084);
  u_xlat7 = x_2085;
  let x_2087 : f32 = u_xlat7.w;
  u_xlat0.x = (x_2087 + -1.0f);
  let x_2095 : f32 = x_2093.unity_SpecCube0_HDR.w;
  let x_2097 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2095 * x_2097) + 1.0f);
  let x_2102 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2102, 0.0f);
  let x_2106 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2106);
  let x_2110 : f32 = u_xlat0.x;
  let x_2112 : f32 = x_2093.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2110 * x_2112);
  let x_2116 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2116);
  let x_2120 : f32 = u_xlat0.x;
  let x_2122 : f32 = x_2093.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2120 * x_2122);
  let x_2125 : vec4<f32> = u_xlat7;
  let x_2127 : vec3<f32> = u_xlat0;
  let x_2129 : vec3<f32> = (vec3<f32>(x_2125.x, x_2125.y, x_2125.z) * vec3<f32>(x_2127.x, x_2127.x, x_2127.x));
  let x_2130 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2129.x, x_2129.y, x_2129.z, x_2130.w);
  let x_2132 : f32 = u_xlat50;
  let x_2134 : f32 = u_xlat50;
  let x_2138 : vec2<f32> = ((vec2<f32>(x_2132, x_2132) * vec2<f32>(x_2134, x_2134)) + vec2<f32>(-1.0f, 1.0f));
  let x_2139 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2138.x, x_2139.y, x_2138.y);
  let x_2142 : f32 = u_xlat0.z;
  u_xlat50 = (1.0f / x_2142);
  let x_2144 : vec4<f32> = u_xlat5;
  let x_2147 : f32 = u_xlat77;
  let x_2149 : vec3<f32> = (-(vec3<f32>(x_2144.x, x_2144.y, x_2144.z)) + vec3<f32>(x_2147, x_2147, x_2147));
  let x_2150 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2149.x, x_2149.y, x_2149.z, x_2150.w);
  let x_2152 : f32 = u_xlat81;
  let x_2154 : vec4<f32> = u_xlat7;
  let x_2157 : vec4<f32> = u_xlat5;
  let x_2159 : vec3<f32> = ((vec3<f32>(x_2152, x_2152, x_2152) * vec3<f32>(x_2154.x, x_2154.y, x_2154.z)) + vec3<f32>(x_2157.x, x_2157.y, x_2157.z));
  let x_2160 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2159.x, x_2159.y, x_2159.z, x_2160.w);
  let x_2162 : f32 = u_xlat50;
  let x_2164 : vec4<f32> = u_xlat7;
  let x_2166 : vec3<f32> = (vec3<f32>(x_2162, x_2162, x_2162) * vec3<f32>(x_2164.x, x_2164.y, x_2164.z));
  let x_2167 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2166.x, x_2166.y, x_2166.z, x_2167.w);
  let x_2169 : vec4<f32> = u_xlat6;
  let x_2171 : vec4<f32> = u_xlat7;
  let x_2173 : vec3<f32> = (vec3<f32>(x_2169.x, x_2169.y, x_2169.z) * vec3<f32>(x_2171.x, x_2171.y, x_2171.z));
  let x_2174 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2173.x, x_2173.y, x_2173.z, x_2174.w);
  let x_2176 : vec4<f32> = u_xlat3;
  let x_2178 : vec4<f32> = u_xlat4;
  let x_2181 : vec4<f32> = u_xlat6;
  let x_2183 : vec3<f32> = ((vec3<f32>(x_2176.x, x_2176.y, x_2176.z) * vec3<f32>(x_2178.x, x_2178.y, x_2178.z)) + vec3<f32>(x_2181.x, x_2181.y, x_2181.z));
  let x_2184 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2183.x, x_2183.y, x_2183.z, x_2184.w);
  let x_2186 : f32 = u_xlat79;
  let x_2188 : f32 = x_2093.unity_LightData.z;
  u_xlat50 = (x_2186 * x_2188);
  let x_2190 : vec4<f32> = u_xlat1;
  let x_2193 : vec4<f32> = x_111.x_MainLightPosition;
  u_xlat77 = dot(vec3<f32>(x_2190.x, x_2190.y, x_2190.z), vec3<f32>(x_2193.x, x_2193.y, x_2193.z));
  let x_2196 : f32 = u_xlat77;
  u_xlat77 = clamp(x_2196, 0.0f, 1.0f);
  let x_2198 : f32 = u_xlat50;
  let x_2199 : f32 = u_xlat77;
  u_xlat50 = (x_2198 * x_2199);
  let x_2201 : f32 = u_xlat50;
  let x_2204 : vec4<f32> = x_111.x_MainLightColor;
  let x_2206 : vec3<f32> = (vec3<f32>(x_2201, x_2201, x_2201) * vec3<f32>(x_2204.x, x_2204.y, x_2204.z));
  let x_2207 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2206.x, x_2206.y, x_2206.z, x_2207.w);
  let x_2209 : vec3<f32> = u_xlat2;
  let x_2211 : vec4<f32> = x_111.x_MainLightPosition;
  let x_2213 : vec3<f32> = (x_2209 + vec3<f32>(x_2211.x, x_2211.y, x_2211.z));
  let x_2214 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2213.x, x_2213.y, x_2213.z, x_2214.w);
  let x_2216 : vec4<f32> = u_xlat7;
  let x_2218 : vec4<f32> = u_xlat7;
  u_xlat50 = dot(vec3<f32>(x_2216.x, x_2216.y, x_2216.z), vec3<f32>(x_2218.x, x_2218.y, x_2218.z));
  let x_2221 : f32 = u_xlat50;
  u_xlat50 = max(x_2221, 1.17549435e-38f);
  let x_2224 : f32 = u_xlat50;
  u_xlat50 = inverseSqrt(x_2224);
  let x_2226 : f32 = u_xlat50;
  let x_2228 : vec4<f32> = u_xlat7;
  let x_2230 : vec3<f32> = (vec3<f32>(x_2226, x_2226, x_2226) * vec3<f32>(x_2228.x, x_2228.y, x_2228.z));
  let x_2231 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2230.x, x_2230.y, x_2230.z, x_2231.w);
  let x_2233 : vec4<f32> = u_xlat1;
  let x_2235 : vec4<f32> = u_xlat7;
  u_xlat50 = dot(vec3<f32>(x_2233.x, x_2233.y, x_2233.z), vec3<f32>(x_2235.x, x_2235.y, x_2235.z));
  let x_2238 : f32 = u_xlat50;
  u_xlat50 = clamp(x_2238, 0.0f, 1.0f);
  let x_2241 : vec4<f32> = x_111.x_MainLightPosition;
  let x_2243 : vec4<f32> = u_xlat7;
  u_xlat77 = dot(vec3<f32>(x_2241.x, x_2241.y, x_2241.z), vec3<f32>(x_2243.x, x_2243.y, x_2243.z));
  let x_2246 : f32 = u_xlat77;
  u_xlat77 = clamp(x_2246, 0.0f, 1.0f);
  let x_2248 : f32 = u_xlat50;
  let x_2249 : f32 = u_xlat50;
  u_xlat50 = (x_2248 * x_2249);
  let x_2251 : f32 = u_xlat50;
  let x_2253 : f32 = u_xlat0.x;
  u_xlat50 = ((x_2251 * x_2253) + 1.00001001358032226562f);
  let x_2257 : f32 = u_xlat77;
  let x_2258 : f32 = u_xlat77;
  u_xlat77 = (x_2257 * x_2258);
  let x_2260 : f32 = u_xlat50;
  let x_2261 : f32 = u_xlat50;
  u_xlat50 = (x_2260 * x_2261);
  let x_2263 : f32 = u_xlat77;
  u_xlat77 = max(x_2263, 0.10000000149011611938f);
  let x_2266 : f32 = u_xlat50;
  let x_2267 : f32 = u_xlat77;
  u_xlat50 = (x_2266 * x_2267);
  let x_2269 : f32 = u_xlat78;
  let x_2270 : f32 = u_xlat50;
  u_xlat50 = (x_2269 * x_2270);
  let x_2272 : f32 = u_xlat76;
  let x_2273 : f32 = u_xlat50;
  u_xlat50 = (x_2272 / x_2273);
  let x_2275 : vec4<f32> = u_xlat5;
  let x_2277 : f32 = u_xlat50;
  let x_2280 : vec4<f32> = u_xlat4;
  let x_2282 : vec3<f32> = ((vec3<f32>(x_2275.x, x_2275.y, x_2275.z) * vec3<f32>(x_2277, x_2277, x_2277)) + vec3<f32>(x_2280.x, x_2280.y, x_2280.z));
  let x_2283 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2282.x, x_2282.y, x_2282.z, x_2283.w);
  let x_2285 : vec4<f32> = u_xlat6;
  let x_2287 : vec4<f32> = u_xlat7;
  let x_2289 : vec3<f32> = (vec3<f32>(x_2285.x, x_2285.y, x_2285.z) * vec3<f32>(x_2287.x, x_2287.y, x_2287.z));
  let x_2290 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2289.x, x_2289.y, x_2289.z, x_2290.w);
  let x_2294 : f32 = x_111.x_AdditionalLightsCount.x;
  let x_2296 : f32 = x_2093.unity_LightData.y;
  u_xlat50 = min(x_2294, x_2296);
  let x_2300 : f32 = u_xlat50;
  u_xlatu50 = bitcast<u32>(i32(x_2300));
  let x_2303 : f32 = u_xlat80;
  let x_2305 : f32 = x_709.x_AdditionalShadowFadeParams.x;
  let x_2308 : f32 = x_709.x_AdditionalShadowFadeParams.y;
  u_xlat77 = ((x_2303 * x_2305) + x_2308);
  let x_2310 : f32 = u_xlat77;
  u_xlat77 = clamp(x_2310, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2322 : u32 = u_xlatu_loop_1;
    let x_2323 : u32 = u_xlatu50;
    if ((x_2322 < x_2323)) {
    } else {
      break;
    }
    let x_2326 : u32 = u_xlatu_loop_1;
    u_xlatu80 = (x_2326 >> 2u);
    let x_2330 : u32 = u_xlatu_loop_1;
    u_xlati81 = bitcast<i32>((x_2330 & 3u));
    let x_2333 : u32 = u_xlatu80;
    let x_2336 : vec4<f32> = x_2093.unity_LightIndices[bitcast<i32>(x_2333)];
    let x_2346 : i32 = u_xlati81;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2351 : vec4<u32> = indexable[x_2346];
    u_xlat80 = dot(x_2336, bitcast<vec4<f32>>(x_2351));
    let x_2355 : f32 = u_xlat80;
    u_xlati80 = i32(x_2355);
    let x_2357 : vec3<f32> = vs_TEXCOORD7;
    let x_2368 : i32 = u_xlati80;
    let x_2370 : vec4<f32> = x_2367.x_AdditionalLightsPosition[x_2368];
    let x_2373 : i32 = u_xlati80;
    let x_2375 : vec4<f32> = x_2367.x_AdditionalLightsPosition[x_2373];
    let x_2377 : vec3<f32> = ((-(x_2357) * vec3<f32>(x_2370.w, x_2370.w, x_2370.w)) + vec3<f32>(x_2375.x, x_2375.y, x_2375.z));
    let x_2378 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2377.x, x_2377.y, x_2377.z, x_2378.w);
    let x_2380 : vec4<f32> = u_xlat8;
    let x_2382 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_2380.x, x_2380.y, x_2380.z), vec3<f32>(x_2382.x, x_2382.y, x_2382.z));
    let x_2385 : f32 = u_xlat81;
    u_xlat81 = max(x_2385, 0.00006103515625f);
    let x_2388 : f32 = u_xlat81;
    u_xlat82 = inverseSqrt(x_2388);
    let x_2390 : f32 = u_xlat82;
    let x_2392 : vec4<f32> = u_xlat8;
    let x_2394 : vec3<f32> = (vec3<f32>(x_2390, x_2390, x_2390) * vec3<f32>(x_2392.x, x_2392.y, x_2392.z));
    let x_2395 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2394.x, x_2394.y, x_2394.z, x_2395.w);
    let x_2398 : f32 = u_xlat81;
    u_xlat83 = (1.0f / x_2398);
    let x_2400 : f32 = u_xlat81;
    let x_2401 : i32 = u_xlati80;
    let x_2403 : f32 = x_2367.x_AdditionalLightsAttenuation[x_2401].x;
    u_xlat81 = (x_2400 * x_2403);
    let x_2405 : f32 = u_xlat81;
    let x_2407 : f32 = u_xlat81;
    u_xlat81 = ((-(x_2405) * x_2407) + 1.0f);
    let x_2410 : f32 = u_xlat81;
    u_xlat81 = max(x_2410, 0.0f);
    let x_2412 : f32 = u_xlat81;
    let x_2413 : f32 = u_xlat81;
    u_xlat81 = (x_2412 * x_2413);
    let x_2415 : f32 = u_xlat81;
    let x_2416 : f32 = u_xlat83;
    u_xlat81 = (x_2415 * x_2416);
    let x_2418 : i32 = u_xlati80;
    let x_2420 : vec4<f32> = x_2367.x_AdditionalLightsSpotDir[x_2418];
    let x_2422 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_2420.x, x_2420.y, x_2420.z), vec3<f32>(x_2422.x, x_2422.y, x_2422.z));
    let x_2425 : f32 = u_xlat83;
    let x_2426 : i32 = u_xlati80;
    let x_2428 : f32 = x_2367.x_AdditionalLightsAttenuation[x_2426].z;
    let x_2430 : i32 = u_xlati80;
    let x_2432 : f32 = x_2367.x_AdditionalLightsAttenuation[x_2430].w;
    u_xlat83 = ((x_2425 * x_2428) + x_2432);
    let x_2434 : f32 = u_xlat83;
    u_xlat83 = clamp(x_2434, 0.0f, 1.0f);
    let x_2436 : f32 = u_xlat83;
    let x_2437 : f32 = u_xlat83;
    u_xlat83 = (x_2436 * x_2437);
    let x_2439 : f32 = u_xlat81;
    let x_2440 : f32 = u_xlat83;
    u_xlat81 = (x_2439 * x_2440);
    let x_2443 : i32 = u_xlati80;
    let x_2445 : f32 = x_709.x_AdditionalShadowParams[x_2443].w;
    u_xlati83 = i32(x_2445);
    let x_2448 : i32 = u_xlati83;
    u_xlatb84 = (x_2448 >= 0i);
    let x_2450 : bool = u_xlatb84;
    if (x_2450) {
      let x_2454 : i32 = u_xlati80;
      let x_2456 : f32 = x_709.x_AdditionalShadowParams[x_2454].z;
      u_xlatb84 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2456, x_2456, x_2456, x_2456))));
      let x_2460 : bool = u_xlatb84;
      if (x_2460) {
        let x_2465 : vec4<f32> = u_xlat9;
        let x_2468 : vec4<f32> = u_xlat9;
        let x_2471 : vec4<bool> = (abs(vec4<f32>(x_2465.z, x_2465.z, x_2465.y, x_2465.z)) >= abs(vec4<f32>(x_2468.x, x_2468.y, x_2468.x, x_2468.x)));
        let x_2473 : vec3<bool> = vec3<bool>(x_2471.x, x_2471.y, x_2471.z);
        let x_2474 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_2473.x, x_2473.y, x_2473.z, x_2474.w);
        let x_2477 : bool = u_xlatb10.y;
        let x_2479 : bool = u_xlatb10.x;
        u_xlatb84 = (x_2477 & x_2479);
        let x_2481 : vec4<f32> = u_xlat9;
        let x_2484 : vec4<bool> = (-(vec4<f32>(x_2481.z, x_2481.y, x_2481.z, x_2481.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2485 : vec3<bool> = vec3<bool>(x_2484.x, x_2484.y, x_2484.w);
        let x_2486 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_2485.x, x_2485.y, x_2486.z, x_2485.z);
        let x_2489 : bool = u_xlatb10.x;
        u_xlat10.x = select(4.0f, 5.0f, x_2489);
        let x_2494 : bool = u_xlatb10.y;
        u_xlat10.y = select(2.0f, 3.0f, x_2494);
        let x_2500 : bool = u_xlatb10.w;
        u_xlat85 = select(0.0f, 1.0f, x_2500);
        let x_2504 : bool = u_xlatb10.z;
        if (x_2504) {
          let x_2509 : f32 = u_xlat10.y;
          x_2505 = x_2509;
        } else {
          let x_2511 : f32 = u_xlat85;
          x_2505 = x_2511;
        }
        let x_2512 : f32 = x_2505;
        u_xlat35 = x_2512;
        let x_2514 : bool = u_xlatb84;
        if (x_2514) {
          let x_2519 : f32 = u_xlat10.x;
          x_2515 = x_2519;
        } else {
          let x_2521 : f32 = u_xlat35;
          x_2515 = x_2521;
        }
        let x_2522 : f32 = x_2515;
        u_xlat84 = x_2522;
        let x_2523 : i32 = u_xlati80;
        let x_2525 : f32 = x_709.x_AdditionalShadowParams[x_2523].w;
        u_xlat10.x = trunc(x_2525);
        let x_2528 : f32 = u_xlat84;
        let x_2530 : f32 = u_xlat10.x;
        u_xlat84 = (x_2528 + x_2530);
        let x_2532 : f32 = u_xlat84;
        u_xlati83 = i32(x_2532);
      }
      let x_2534 : i32 = u_xlati83;
      u_xlati83 = (x_2534 << bitcast<u32>(2i));
      let x_2536 : vec3<f32> = vs_TEXCOORD7;
      let x_2538 : i32 = u_xlati83;
      let x_2541 : i32 = u_xlati83;
      let x_2545 : vec4<f32> = x_709.x_AdditionalLightsWorldToShadow[((x_2538 + 1i) / 4i)][((x_2541 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_2536.y, x_2536.y, x_2536.y, x_2536.y) * x_2545);
      let x_2547 : i32 = u_xlati83;
      let x_2549 : i32 = u_xlati83;
      let x_2552 : vec4<f32> = x_709.x_AdditionalLightsWorldToShadow[(x_2547 / 4i)][(x_2549 % 4i)];
      let x_2553 : vec3<f32> = vs_TEXCOORD7;
      let x_2556 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2552 * vec4<f32>(x_2553.x, x_2553.x, x_2553.x, x_2553.x)) + x_2556);
      let x_2558 : i32 = u_xlati83;
      let x_2561 : i32 = u_xlati83;
      let x_2565 : vec4<f32> = x_709.x_AdditionalLightsWorldToShadow[((x_2558 + 2i) / 4i)][((x_2561 + 2i) % 4i)];
      let x_2566 : vec3<f32> = vs_TEXCOORD7;
      let x_2569 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2565 * vec4<f32>(x_2566.z, x_2566.z, x_2566.z, x_2566.z)) + x_2569);
      let x_2571 : vec4<f32> = u_xlat10;
      let x_2572 : i32 = u_xlati83;
      let x_2575 : i32 = u_xlati83;
      let x_2579 : vec4<f32> = x_709.x_AdditionalLightsWorldToShadow[((x_2572 + 3i) / 4i)][((x_2575 + 3i) % 4i)];
      u_xlat10 = (x_2571 + x_2579);
      let x_2581 : vec4<f32> = u_xlat10;
      let x_2583 : vec4<f32> = u_xlat10;
      let x_2585 : vec3<f32> = (vec3<f32>(x_2581.x, x_2581.y, x_2581.z) / vec3<f32>(x_2583.w, x_2583.w, x_2583.w));
      let x_2586 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2585.x, x_2585.y, x_2585.z, x_2586.w);
      let x_2589 : i32 = u_xlati80;
      let x_2591 : f32 = x_709.x_AdditionalShadowParams[x_2589].y;
      u_xlatb83 = (0.0f < x_2591);
      let x_2593 : bool = u_xlatb83;
      if (x_2593) {
        let x_2596 : i32 = u_xlati80;
        let x_2598 : f32 = x_709.x_AdditionalShadowParams[x_2596].y;
        u_xlatb83 = (1.0f == x_2598);
        let x_2600 : bool = u_xlatb83;
        if (x_2600) {
          let x_2603 : vec4<f32> = u_xlat10;
          let x_2606 : vec4<f32> = x_709.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2603.x, x_2603.y, x_2603.x, x_2603.y) + x_2606);
          let x_2609 : vec4<f32> = u_xlat11;
          let x_2610 : vec2<f32> = vec2<f32>(x_2609.x, x_2609.y);
          let x_2612 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2610.x, x_2610.y, x_2612);
          let x_2620 : vec3<f32> = txVec30;
          let x_2622 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2620.xy, x_2620.z);
          u_xlat12.x = x_2622;
          let x_2625 : vec4<f32> = u_xlat11;
          let x_2626 : vec2<f32> = vec2<f32>(x_2625.z, x_2625.w);
          let x_2628 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_2626.x, x_2626.y, x_2628);
          let x_2635 : vec3<f32> = txVec31;
          let x_2637 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2635.xy, x_2635.z);
          u_xlat12.y = x_2637;
          let x_2639 : vec4<f32> = u_xlat10;
          let x_2642 : vec4<f32> = x_709.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_2639.x, x_2639.y, x_2639.x, x_2639.y) + x_2642);
          let x_2645 : vec4<f32> = u_xlat11;
          let x_2646 : vec2<f32> = vec2<f32>(x_2645.x, x_2645.y);
          let x_2648 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_2646.x, x_2646.y, x_2648);
          let x_2655 : vec3<f32> = txVec32;
          let x_2657 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2655.xy, x_2655.z);
          u_xlat12.z = x_2657;
          let x_2660 : vec4<f32> = u_xlat11;
          let x_2661 : vec2<f32> = vec2<f32>(x_2660.z, x_2660.w);
          let x_2663 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_2661.x, x_2661.y, x_2663);
          let x_2670 : vec3<f32> = txVec33;
          let x_2672 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2670.xy, x_2670.z);
          u_xlat12.w = x_2672;
          let x_2674 : vec4<f32> = u_xlat12;
          u_xlat83 = dot(x_2674, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2677 : i32 = u_xlati80;
          let x_2679 : f32 = x_709.x_AdditionalShadowParams[x_2677].y;
          u_xlatb84 = (2.0f == x_2679);
          let x_2681 : bool = u_xlatb84;
          if (x_2681) {
            let x_2684 : vec4<f32> = u_xlat10;
            let x_2687 : vec4<f32> = x_709.x_AdditionalShadowmapSize;
            let x_2690 : vec2<f32> = ((vec2<f32>(x_2684.x, x_2684.y) * vec2<f32>(x_2687.z, x_2687.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2691 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2690.x, x_2690.y, x_2691.z, x_2691.w);
            let x_2693 : vec4<f32> = u_xlat11;
            let x_2695 : vec2<f32> = floor(vec2<f32>(x_2693.x, x_2693.y));
            let x_2696 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2695.x, x_2695.y, x_2696.z, x_2696.w);
            let x_2699 : vec4<f32> = u_xlat10;
            let x_2702 : vec4<f32> = x_709.x_AdditionalShadowmapSize;
            let x_2705 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2699.x, x_2699.y) * vec2<f32>(x_2702.z, x_2702.w)) + -(vec2<f32>(x_2705.x, x_2705.y)));
            let x_2709 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2709.x, x_2709.x, x_2709.y, x_2709.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2712 : vec4<f32> = u_xlat12;
            let x_2714 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2712.x, x_2712.x, x_2712.z, x_2712.z) * vec4<f32>(x_2714.x, x_2714.x, x_2714.z, x_2714.z));
            let x_2717 : vec4<f32> = u_xlat13;
            let x_2719 : vec2<f32> = (vec2<f32>(x_2717.y, x_2717.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2720 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2719.x, x_2720.y, x_2719.y, x_2720.w);
            let x_2722 : vec4<f32> = u_xlat13;
            let x_2725 : vec2<f32> = u_xlat61;
            let x_2727 : vec2<f32> = ((vec2<f32>(x_2722.x, x_2722.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2725));
            let x_2728 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2727.x, x_2727.y, x_2728.z, x_2728.w);
            let x_2731 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_2731) + vec2<f32>(1.0f, 1.0f));
            let x_2734 : vec2<f32> = u_xlat61;
            let x_2735 : vec2<f32> = min(x_2734, vec2<f32>(0.0f, 0.0f));
            let x_2736 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2735.x, x_2735.y, x_2736.z, x_2736.w);
            let x_2738 : vec4<f32> = u_xlat14;
            let x_2741 : vec4<f32> = u_xlat14;
            let x_2744 : vec2<f32> = u_xlat63;
            let x_2745 : vec2<f32> = ((-(vec2<f32>(x_2738.x, x_2738.y)) * vec2<f32>(x_2741.x, x_2741.y)) + x_2744);
            let x_2746 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2745.x, x_2745.y, x_2746.z, x_2746.w);
            let x_2748 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_2748, vec2<f32>(0.0f, 0.0f));
            let x_2750 : vec2<f32> = u_xlat61;
            let x_2752 : vec2<f32> = u_xlat61;
            let x_2754 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_2750) * x_2752) + vec2<f32>(x_2754.y, x_2754.w));
            let x_2757 : vec4<f32> = u_xlat14;
            let x_2759 : vec2<f32> = (vec2<f32>(x_2757.x, x_2757.y) + vec2<f32>(1.0f, 1.0f));
            let x_2760 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2759.x, x_2759.y, x_2760.z, x_2760.w);
            let x_2762 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_2762 + vec2<f32>(1.0f, 1.0f));
            let x_2764 : vec4<f32> = u_xlat13;
            let x_2766 : vec2<f32> = (vec2<f32>(x_2764.x, x_2764.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2767 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2766.x, x_2766.y, x_2767.z, x_2767.w);
            let x_2769 : vec2<f32> = u_xlat63;
            let x_2770 : vec2<f32> = (x_2769 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2771 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2770.x, x_2770.y, x_2771.z, x_2771.w);
            let x_2773 : vec4<f32> = u_xlat14;
            let x_2775 : vec2<f32> = (vec2<f32>(x_2773.x, x_2773.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2776 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2775.x, x_2775.y, x_2776.z, x_2776.w);
            let x_2778 : vec2<f32> = u_xlat61;
            let x_2779 : vec2<f32> = (x_2778 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2780 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2779.x, x_2779.y, x_2780.z, x_2780.w);
            let x_2782 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_2782.y, x_2782.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2786 : f32 = u_xlat14.x;
            u_xlat15.z = x_2786;
            let x_2789 : f32 = u_xlat61.x;
            u_xlat15.w = x_2789;
            let x_2792 : f32 = u_xlat16.x;
            u_xlat13.z = x_2792;
            let x_2795 : f32 = u_xlat12.x;
            u_xlat13.w = x_2795;
            let x_2797 : vec4<f32> = u_xlat13;
            let x_2799 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2797.z, x_2797.w, x_2797.x, x_2797.z) + vec4<f32>(x_2799.z, x_2799.w, x_2799.x, x_2799.z));
            let x_2803 : f32 = u_xlat15.y;
            u_xlat14.z = x_2803;
            let x_2806 : f32 = u_xlat61.y;
            u_xlat14.w = x_2806;
            let x_2809 : f32 = u_xlat13.y;
            u_xlat16.z = x_2809;
            let x_2812 : f32 = u_xlat12.z;
            u_xlat16.w = x_2812;
            let x_2814 : vec4<f32> = u_xlat14;
            let x_2816 : vec4<f32> = u_xlat16;
            let x_2818 : vec3<f32> = (vec3<f32>(x_2814.z, x_2814.y, x_2814.w) + vec3<f32>(x_2816.z, x_2816.y, x_2816.w));
            let x_2819 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2818.x, x_2818.y, x_2818.z, x_2819.w);
            let x_2821 : vec4<f32> = u_xlat13;
            let x_2823 : vec4<f32> = u_xlat17;
            let x_2825 : vec3<f32> = (vec3<f32>(x_2821.x, x_2821.z, x_2821.w) / vec3<f32>(x_2823.z, x_2823.w, x_2823.y));
            let x_2826 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2825.x, x_2825.y, x_2825.z, x_2826.w);
            let x_2828 : vec4<f32> = u_xlat13;
            let x_2830 : vec3<f32> = (vec3<f32>(x_2828.x, x_2828.y, x_2828.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2831 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2830.x, x_2830.y, x_2830.z, x_2831.w);
            let x_2833 : vec4<f32> = u_xlat16;
            let x_2835 : vec4<f32> = u_xlat12;
            let x_2837 : vec3<f32> = (vec3<f32>(x_2833.z, x_2833.y, x_2833.w) / vec3<f32>(x_2835.x, x_2835.y, x_2835.z));
            let x_2838 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2837.x, x_2837.y, x_2837.z, x_2838.w);
            let x_2840 : vec4<f32> = u_xlat14;
            let x_2842 : vec3<f32> = (vec3<f32>(x_2840.x, x_2840.y, x_2840.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2843 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2842.x, x_2842.y, x_2842.z, x_2843.w);
            let x_2845 : vec4<f32> = u_xlat13;
            let x_2848 : vec4<f32> = x_709.x_AdditionalShadowmapSize;
            let x_2850 : vec3<f32> = (vec3<f32>(x_2845.y, x_2845.x, x_2845.z) * vec3<f32>(x_2848.x, x_2848.x, x_2848.x));
            let x_2851 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2850.x, x_2850.y, x_2850.z, x_2851.w);
            let x_2853 : vec4<f32> = u_xlat14;
            let x_2856 : vec4<f32> = x_709.x_AdditionalShadowmapSize;
            let x_2858 : vec3<f32> = (vec3<f32>(x_2853.x, x_2853.y, x_2853.z) * vec3<f32>(x_2856.y, x_2856.y, x_2856.y));
            let x_2859 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2858.x, x_2858.y, x_2858.z, x_2859.w);
            let x_2862 : f32 = u_xlat14.x;
            u_xlat13.w = x_2862;
            let x_2864 : vec4<f32> = u_xlat11;
            let x_2867 : vec4<f32> = x_709.x_AdditionalShadowmapSize;
            let x_2870 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2864.x, x_2864.y, x_2864.x, x_2864.y) * vec4<f32>(x_2867.x, x_2867.y, x_2867.x, x_2867.y)) + vec4<f32>(x_2870.y, x_2870.w, x_2870.x, x_2870.w));
            let x_2873 : vec4<f32> = u_xlat11;
            let x_2876 : vec4<f32> = x_709.x_AdditionalShadowmapSize;
            let x_2879 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_2873.x, x_2873.y) * vec2<f32>(x_2876.x, x_2876.y)) + vec2<f32>(x_2879.z, x_2879.w));
            let x_2883 : f32 = u_xlat13.y;
            u_xlat14.w = x_2883;
            let x_2885 : vec4<f32> = u_xlat14;
            let x_2886 : vec2<f32> = vec2<f32>(x_2885.y, x_2885.z);
            let x_2887 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2887.x, x_2886.x, x_2887.z, x_2886.y);
            let x_2889 : vec4<f32> = u_xlat11;
            let x_2892 : vec4<f32> = x_709.x_AdditionalShadowmapSize;
            let x_2895 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_2889.x, x_2889.y, x_2889.x, x_2889.y) * vec4<f32>(x_2892.x, x_2892.y, x_2892.x, x_2892.y)) + vec4<f32>(x_2895.x, x_2895.y, x_2895.z, x_2895.y));
            let x_2898 : vec4<f32> = u_xlat11;
            let x_2901 : vec4<f32> = x_709.x_AdditionalShadowmapSize;
            let x_2904 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2898.x, x_2898.y, x_2898.x, x_2898.y) * vec4<f32>(x_2901.x, x_2901.y, x_2901.x, x_2901.y)) + vec4<f32>(x_2904.w, x_2904.y, x_2904.w, x_2904.z));
            let x_2907 : vec4<f32> = u_xlat11;
            let x_2910 : vec4<f32> = x_709.x_AdditionalShadowmapSize;
            let x_2913 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_2907.x, x_2907.y, x_2907.x, x_2907.y) * vec4<f32>(x_2910.x, x_2910.y, x_2910.x, x_2910.y)) + vec4<f32>(x_2913.x, x_2913.w, x_2913.z, x_2913.w));
            let x_2916 : vec4<f32> = u_xlat12;
            let x_2918 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_2916.x, x_2916.x, x_2916.x, x_2916.y) * vec4<f32>(x_2918.z, x_2918.w, x_2918.y, x_2918.z));
            let x_2921 : vec4<f32> = u_xlat12;
            let x_2923 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_2921.y, x_2921.y, x_2921.z, x_2921.z) * x_2923);
            let x_2926 : f32 = u_xlat12.z;
            let x_2928 : f32 = u_xlat17.y;
            u_xlat84 = (x_2926 * x_2928);
            let x_2931 : vec4<f32> = u_xlat15;
            let x_2932 : vec2<f32> = vec2<f32>(x_2931.x, x_2931.y);
            let x_2934 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_2932.x, x_2932.y, x_2934);
            let x_2941 : vec3<f32> = txVec34;
            let x_2943 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2941.xy, x_2941.z);
            u_xlat85 = x_2943;
            let x_2945 : vec4<f32> = u_xlat15;
            let x_2946 : vec2<f32> = vec2<f32>(x_2945.z, x_2945.w);
            let x_2948 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_2946.x, x_2946.y, x_2948);
            let x_2955 : vec3<f32> = txVec35;
            let x_2957 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2955.xy, x_2955.z);
            u_xlat11.x = x_2957;
            let x_2960 : f32 = u_xlat11.x;
            let x_2962 : f32 = u_xlat18.y;
            u_xlat11.x = (x_2960 * x_2962);
            let x_2966 : f32 = u_xlat18.x;
            let x_2967 : f32 = u_xlat85;
            let x_2970 : f32 = u_xlat11.x;
            u_xlat85 = ((x_2966 * x_2967) + x_2970);
            let x_2973 : vec2<f32> = u_xlat61;
            let x_2975 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_2973.x, x_2973.y, x_2975);
            let x_2982 : vec3<f32> = txVec36;
            let x_2984 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2982.xy, x_2982.z);
            u_xlat11.x = x_2984;
            let x_2987 : f32 = u_xlat18.z;
            let x_2989 : f32 = u_xlat11.x;
            let x_2991 : f32 = u_xlat85;
            u_xlat85 = ((x_2987 * x_2989) + x_2991);
            let x_2994 : vec4<f32> = u_xlat14;
            let x_2995 : vec2<f32> = vec2<f32>(x_2994.x, x_2994.y);
            let x_2997 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_2995.x, x_2995.y, x_2997);
            let x_3004 : vec3<f32> = txVec37;
            let x_3006 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3004.xy, x_3004.z);
            u_xlat11.x = x_3006;
            let x_3009 : f32 = u_xlat18.w;
            let x_3011 : f32 = u_xlat11.x;
            let x_3013 : f32 = u_xlat85;
            u_xlat85 = ((x_3009 * x_3011) + x_3013);
            let x_3016 : vec4<f32> = u_xlat16;
            let x_3017 : vec2<f32> = vec2<f32>(x_3016.x, x_3016.y);
            let x_3019 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_3017.x, x_3017.y, x_3019);
            let x_3026 : vec3<f32> = txVec38;
            let x_3028 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3026.xy, x_3026.z);
            u_xlat11.x = x_3028;
            let x_3031 : f32 = u_xlat19.x;
            let x_3033 : f32 = u_xlat11.x;
            let x_3035 : f32 = u_xlat85;
            u_xlat85 = ((x_3031 * x_3033) + x_3035);
            let x_3038 : vec4<f32> = u_xlat16;
            let x_3039 : vec2<f32> = vec2<f32>(x_3038.z, x_3038.w);
            let x_3041 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_3039.x, x_3039.y, x_3041);
            let x_3048 : vec3<f32> = txVec39;
            let x_3050 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3048.xy, x_3048.z);
            u_xlat11.x = x_3050;
            let x_3053 : f32 = u_xlat19.y;
            let x_3055 : f32 = u_xlat11.x;
            let x_3057 : f32 = u_xlat85;
            u_xlat85 = ((x_3053 * x_3055) + x_3057);
            let x_3060 : vec4<f32> = u_xlat14;
            let x_3061 : vec2<f32> = vec2<f32>(x_3060.z, x_3060.w);
            let x_3063 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_3061.x, x_3061.y, x_3063);
            let x_3070 : vec3<f32> = txVec40;
            let x_3072 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3070.xy, x_3070.z);
            u_xlat11.x = x_3072;
            let x_3075 : f32 = u_xlat19.z;
            let x_3077 : f32 = u_xlat11.x;
            let x_3079 : f32 = u_xlat85;
            u_xlat85 = ((x_3075 * x_3077) + x_3079);
            let x_3082 : vec4<f32> = u_xlat13;
            let x_3083 : vec2<f32> = vec2<f32>(x_3082.x, x_3082.y);
            let x_3085 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_3083.x, x_3083.y, x_3085);
            let x_3092 : vec3<f32> = txVec41;
            let x_3094 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3092.xy, x_3092.z);
            u_xlat11.x = x_3094;
            let x_3097 : f32 = u_xlat19.w;
            let x_3099 : f32 = u_xlat11.x;
            let x_3101 : f32 = u_xlat85;
            u_xlat85 = ((x_3097 * x_3099) + x_3101);
            let x_3104 : vec4<f32> = u_xlat13;
            let x_3105 : vec2<f32> = vec2<f32>(x_3104.z, x_3104.w);
            let x_3107 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_3105.x, x_3105.y, x_3107);
            let x_3114 : vec3<f32> = txVec42;
            let x_3116 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3114.xy, x_3114.z);
            u_xlat11.x = x_3116;
            let x_3118 : f32 = u_xlat84;
            let x_3120 : f32 = u_xlat11.x;
            let x_3122 : f32 = u_xlat85;
            u_xlat83 = ((x_3118 * x_3120) + x_3122);
          } else {
            let x_3125 : vec4<f32> = u_xlat10;
            let x_3128 : vec4<f32> = x_709.x_AdditionalShadowmapSize;
            let x_3131 : vec2<f32> = ((vec2<f32>(x_3125.x, x_3125.y) * vec2<f32>(x_3128.z, x_3128.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3132 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3131.x, x_3131.y, x_3132.z, x_3132.w);
            let x_3134 : vec4<f32> = u_xlat11;
            let x_3136 : vec2<f32> = floor(vec2<f32>(x_3134.x, x_3134.y));
            let x_3137 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3136.x, x_3136.y, x_3137.z, x_3137.w);
            let x_3139 : vec4<f32> = u_xlat10;
            let x_3142 : vec4<f32> = x_709.x_AdditionalShadowmapSize;
            let x_3145 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3139.x, x_3139.y) * vec2<f32>(x_3142.z, x_3142.w)) + -(vec2<f32>(x_3145.x, x_3145.y)));
            let x_3149 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3149.x, x_3149.x, x_3149.y, x_3149.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3152 : vec4<f32> = u_xlat12;
            let x_3154 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3152.x, x_3152.x, x_3152.z, x_3152.z) * vec4<f32>(x_3154.x, x_3154.x, x_3154.z, x_3154.z));
            let x_3157 : vec4<f32> = u_xlat13;
            let x_3159 : vec2<f32> = (vec2<f32>(x_3157.y, x_3157.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3160 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3160.x, x_3159.x, x_3160.z, x_3159.y);
            let x_3162 : vec4<f32> = u_xlat13;
            let x_3165 : vec2<f32> = u_xlat61;
            let x_3167 : vec2<f32> = ((vec2<f32>(x_3162.x, x_3162.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3165));
            let x_3168 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3167.x, x_3168.y, x_3167.y, x_3168.w);
            let x_3170 : vec2<f32> = u_xlat61;
            let x_3172 : vec2<f32> = (-(x_3170) + vec2<f32>(1.0f, 1.0f));
            let x_3173 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3172.x, x_3172.y, x_3173.z, x_3173.w);
            let x_3175 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_3175, vec2<f32>(0.0f, 0.0f));
            let x_3177 : vec2<f32> = u_xlat63;
            let x_3179 : vec2<f32> = u_xlat63;
            let x_3181 : vec4<f32> = u_xlat13;
            let x_3183 : vec2<f32> = ((-(x_3177) * x_3179) + vec2<f32>(x_3181.x, x_3181.y));
            let x_3184 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3183.x, x_3183.y, x_3184.z, x_3184.w);
            let x_3186 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_3186, vec2<f32>(0.0f, 0.0f));
            let x_3189 : vec2<f32> = u_xlat63;
            let x_3191 : vec2<f32> = u_xlat63;
            let x_3193 : vec4<f32> = u_xlat12;
            let x_3195 : vec2<f32> = ((-(x_3189) * x_3191) + vec2<f32>(x_3193.y, x_3193.w));
            let x_3196 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_3195.x, x_3196.y, x_3195.y);
            let x_3198 : vec4<f32> = u_xlat13;
            let x_3200 : vec2<f32> = (vec2<f32>(x_3198.x, x_3198.y) + vec2<f32>(2.0f, 2.0f));
            let x_3201 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3200.x, x_3200.y, x_3201.z, x_3201.w);
            let x_3203 : vec3<f32> = u_xlat37;
            let x_3205 : vec2<f32> = (vec2<f32>(x_3203.x, x_3203.z) + vec2<f32>(2.0f, 2.0f));
            let x_3206 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3206.x, x_3205.x, x_3206.z, x_3205.y);
            let x_3209 : f32 = u_xlat12.y;
            u_xlat15.z = (x_3209 * 0.08163200318813323975f);
            let x_3212 : vec4<f32> = u_xlat12;
            let x_3214 : vec3<f32> = (vec3<f32>(x_3212.z, x_3212.x, x_3212.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3215 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3214.x, x_3214.y, x_3214.z, x_3215.w);
            let x_3217 : vec4<f32> = u_xlat13;
            let x_3219 : vec2<f32> = (vec2<f32>(x_3217.x, x_3217.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3220 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3219.x, x_3219.y, x_3220.z, x_3220.w);
            let x_3223 : f32 = u_xlat16.y;
            u_xlat15.x = x_3223;
            let x_3225 : vec2<f32> = u_xlat61;
            let x_3228 : vec2<f32> = ((vec2<f32>(x_3225.x, x_3225.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3229 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3229.x, x_3228.x, x_3229.z, x_3228.y);
            let x_3231 : vec2<f32> = u_xlat61;
            let x_3234 : vec2<f32> = ((vec2<f32>(x_3231.x, x_3231.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3235 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3234.x, x_3235.y, x_3234.y, x_3235.w);
            let x_3238 : f32 = u_xlat12.x;
            u_xlat13.y = x_3238;
            let x_3241 : f32 = u_xlat14.y;
            u_xlat13.w = x_3241;
            let x_3243 : vec4<f32> = u_xlat13;
            let x_3244 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3243 + x_3244);
            let x_3246 : vec2<f32> = u_xlat61;
            let x_3249 : vec2<f32> = ((vec2<f32>(x_3246.y, x_3246.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3250 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3250.x, x_3249.x, x_3250.z, x_3249.y);
            let x_3252 : vec2<f32> = u_xlat61;
            let x_3255 : vec2<f32> = ((vec2<f32>(x_3252.y, x_3252.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3256 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3255.x, x_3256.y, x_3255.y, x_3256.w);
            let x_3259 : f32 = u_xlat12.y;
            u_xlat14.y = x_3259;
            let x_3261 : vec4<f32> = u_xlat14;
            let x_3262 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_3261 + x_3262);
            let x_3264 : vec4<f32> = u_xlat13;
            let x_3265 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_3264 / x_3265);
            let x_3267 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3267 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3269 : vec4<f32> = u_xlat14;
            let x_3270 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_3269 / x_3270);
            let x_3272 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3272 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3274 : vec4<f32> = u_xlat13;
            let x_3277 : vec4<f32> = x_709.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3274.w, x_3274.x, x_3274.y, x_3274.z) * vec4<f32>(x_3277.x, x_3277.x, x_3277.x, x_3277.x));
            let x_3280 : vec4<f32> = u_xlat14;
            let x_3283 : vec4<f32> = x_709.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3280.x, x_3280.w, x_3280.y, x_3280.z) * vec4<f32>(x_3283.y, x_3283.y, x_3283.y, x_3283.y));
            let x_3286 : vec4<f32> = u_xlat13;
            let x_3287 : vec3<f32> = vec3<f32>(x_3286.y, x_3286.z, x_3286.w);
            let x_3288 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3287.x, x_3288.y, x_3287.y, x_3287.z);
            let x_3291 : f32 = u_xlat14.x;
            u_xlat16.y = x_3291;
            let x_3293 : vec4<f32> = u_xlat11;
            let x_3296 : vec4<f32> = x_709.x_AdditionalShadowmapSize;
            let x_3299 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3293.x, x_3293.y, x_3293.x, x_3293.y) * vec4<f32>(x_3296.x, x_3296.y, x_3296.x, x_3296.y)) + vec4<f32>(x_3299.x, x_3299.y, x_3299.z, x_3299.y));
            let x_3302 : vec4<f32> = u_xlat11;
            let x_3305 : vec4<f32> = x_709.x_AdditionalShadowmapSize;
            let x_3308 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_3302.x, x_3302.y) * vec2<f32>(x_3305.x, x_3305.y)) + vec2<f32>(x_3308.w, x_3308.y));
            let x_3312 : f32 = u_xlat16.y;
            u_xlat13.y = x_3312;
            let x_3315 : f32 = u_xlat14.z;
            u_xlat16.y = x_3315;
            let x_3317 : vec4<f32> = u_xlat11;
            let x_3320 : vec4<f32> = x_709.x_AdditionalShadowmapSize;
            let x_3323 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3317.x, x_3317.y, x_3317.x, x_3317.y) * vec4<f32>(x_3320.x, x_3320.y, x_3320.x, x_3320.y)) + vec4<f32>(x_3323.x, x_3323.y, x_3323.z, x_3323.y));
            let x_3326 : vec4<f32> = u_xlat11;
            let x_3329 : vec4<f32> = x_709.x_AdditionalShadowmapSize;
            let x_3332 : vec4<f32> = u_xlat16;
            let x_3334 : vec2<f32> = ((vec2<f32>(x_3326.x, x_3326.y) * vec2<f32>(x_3329.x, x_3329.y)) + vec2<f32>(x_3332.w, x_3332.y));
            let x_3335 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3334.x, x_3334.y, x_3335.z, x_3335.w);
            let x_3338 : f32 = u_xlat16.y;
            u_xlat13.z = x_3338;
            let x_3341 : vec4<f32> = u_xlat11;
            let x_3344 : vec4<f32> = x_709.x_AdditionalShadowmapSize;
            let x_3347 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3341.x, x_3341.y, x_3341.x, x_3341.y) * vec4<f32>(x_3344.x, x_3344.y, x_3344.x, x_3344.y)) + vec4<f32>(x_3347.x, x_3347.y, x_3347.x, x_3347.z));
            let x_3351 : f32 = u_xlat14.w;
            u_xlat16.y = x_3351;
            let x_3354 : vec4<f32> = u_xlat11;
            let x_3357 : vec4<f32> = x_709.x_AdditionalShadowmapSize;
            let x_3360 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3354.x, x_3354.y, x_3354.x, x_3354.y) * vec4<f32>(x_3357.x, x_3357.y, x_3357.x, x_3357.y)) + vec4<f32>(x_3360.x, x_3360.y, x_3360.z, x_3360.y));
            let x_3364 : vec4<f32> = u_xlat11;
            let x_3367 : vec4<f32> = x_709.x_AdditionalShadowmapSize;
            let x_3370 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3364.x, x_3364.y) * vec2<f32>(x_3367.x, x_3367.y)) + vec2<f32>(x_3370.w, x_3370.y));
            let x_3374 : f32 = u_xlat16.y;
            u_xlat13.w = x_3374;
            let x_3377 : vec4<f32> = u_xlat11;
            let x_3380 : vec4<f32> = x_709.x_AdditionalShadowmapSize;
            let x_3383 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3377.x, x_3377.y) * vec2<f32>(x_3380.x, x_3380.y)) + vec2<f32>(x_3383.x, x_3383.w));
            let x_3386 : vec4<f32> = u_xlat16;
            let x_3387 : vec3<f32> = vec3<f32>(x_3386.x, x_3386.z, x_3386.w);
            let x_3388 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3387.x, x_3388.y, x_3387.y, x_3387.z);
            let x_3390 : vec4<f32> = u_xlat11;
            let x_3393 : vec4<f32> = x_709.x_AdditionalShadowmapSize;
            let x_3396 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3390.x, x_3390.y, x_3390.x, x_3390.y) * vec4<f32>(x_3393.x, x_3393.y, x_3393.x, x_3393.y)) + vec4<f32>(x_3396.x, x_3396.y, x_3396.z, x_3396.y));
            let x_3399 : vec4<f32> = u_xlat11;
            let x_3402 : vec4<f32> = x_709.x_AdditionalShadowmapSize;
            let x_3405 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3399.x, x_3399.y) * vec2<f32>(x_3402.x, x_3402.y)) + vec2<f32>(x_3405.w, x_3405.y));
            let x_3409 : f32 = u_xlat13.x;
            u_xlat14.x = x_3409;
            let x_3411 : vec4<f32> = u_xlat11;
            let x_3414 : vec4<f32> = x_709.x_AdditionalShadowmapSize;
            let x_3417 : vec4<f32> = u_xlat14;
            let x_3419 : vec2<f32> = ((vec2<f32>(x_3411.x, x_3411.y) * vec2<f32>(x_3414.x, x_3414.y)) + vec2<f32>(x_3417.x, x_3417.y));
            let x_3420 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3419.x, x_3419.y, x_3420.z, x_3420.w);
            let x_3423 : vec4<f32> = u_xlat12;
            let x_3425 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3423.x, x_3423.x, x_3423.x, x_3423.x) * x_3425);
            let x_3428 : vec4<f32> = u_xlat12;
            let x_3430 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3428.y, x_3428.y, x_3428.y, x_3428.y) * x_3430);
            let x_3433 : vec4<f32> = u_xlat12;
            let x_3435 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3433.z, x_3433.z, x_3433.z, x_3433.z) * x_3435);
            let x_3437 : vec4<f32> = u_xlat12;
            let x_3439 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3437.w, x_3437.w, x_3437.w, x_3437.w) * x_3439);
            let x_3442 : vec4<f32> = u_xlat17;
            let x_3443 : vec2<f32> = vec2<f32>(x_3442.x, x_3442.y);
            let x_3445 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3443.x, x_3443.y, x_3445);
            let x_3452 : vec3<f32> = txVec43;
            let x_3454 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3452.xy, x_3452.z);
            u_xlat84 = x_3454;
            let x_3456 : vec4<f32> = u_xlat17;
            let x_3457 : vec2<f32> = vec2<f32>(x_3456.z, x_3456.w);
            let x_3459 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3457.x, x_3457.y, x_3459);
            let x_3466 : vec3<f32> = txVec44;
            let x_3468 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3466.xy, x_3466.z);
            u_xlat85 = x_3468;
            let x_3469 : f32 = u_xlat85;
            let x_3471 : f32 = u_xlat22.y;
            u_xlat85 = (x_3469 * x_3471);
            let x_3474 : f32 = u_xlat22.x;
            let x_3475 : f32 = u_xlat84;
            let x_3477 : f32 = u_xlat85;
            u_xlat84 = ((x_3474 * x_3475) + x_3477);
            let x_3480 : vec2<f32> = u_xlat61;
            let x_3482 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3480.x, x_3480.y, x_3482);
            let x_3489 : vec3<f32> = txVec45;
            let x_3491 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3489.xy, x_3489.z);
            u_xlat85 = x_3491;
            let x_3493 : f32 = u_xlat22.z;
            let x_3494 : f32 = u_xlat85;
            let x_3496 : f32 = u_xlat84;
            u_xlat84 = ((x_3493 * x_3494) + x_3496);
            let x_3499 : vec4<f32> = u_xlat20;
            let x_3500 : vec2<f32> = vec2<f32>(x_3499.x, x_3499.y);
            let x_3502 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3500.x, x_3500.y, x_3502);
            let x_3509 : vec3<f32> = txVec46;
            let x_3511 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3509.xy, x_3509.z);
            u_xlat85 = x_3511;
            let x_3513 : f32 = u_xlat22.w;
            let x_3514 : f32 = u_xlat85;
            let x_3516 : f32 = u_xlat84;
            u_xlat84 = ((x_3513 * x_3514) + x_3516);
            let x_3519 : vec4<f32> = u_xlat18;
            let x_3520 : vec2<f32> = vec2<f32>(x_3519.x, x_3519.y);
            let x_3522 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3520.x, x_3520.y, x_3522);
            let x_3529 : vec3<f32> = txVec47;
            let x_3531 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3529.xy, x_3529.z);
            u_xlat85 = x_3531;
            let x_3533 : f32 = u_xlat23.x;
            let x_3534 : f32 = u_xlat85;
            let x_3536 : f32 = u_xlat84;
            u_xlat84 = ((x_3533 * x_3534) + x_3536);
            let x_3539 : vec4<f32> = u_xlat18;
            let x_3540 : vec2<f32> = vec2<f32>(x_3539.z, x_3539.w);
            let x_3542 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3540.x, x_3540.y, x_3542);
            let x_3549 : vec3<f32> = txVec48;
            let x_3551 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3549.xy, x_3549.z);
            u_xlat85 = x_3551;
            let x_3553 : f32 = u_xlat23.y;
            let x_3554 : f32 = u_xlat85;
            let x_3556 : f32 = u_xlat84;
            u_xlat84 = ((x_3553 * x_3554) + x_3556);
            let x_3559 : vec4<f32> = u_xlat19;
            let x_3560 : vec2<f32> = vec2<f32>(x_3559.x, x_3559.y);
            let x_3562 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3560.x, x_3560.y, x_3562);
            let x_3569 : vec3<f32> = txVec49;
            let x_3571 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3569.xy, x_3569.z);
            u_xlat85 = x_3571;
            let x_3573 : f32 = u_xlat23.z;
            let x_3574 : f32 = u_xlat85;
            let x_3576 : f32 = u_xlat84;
            u_xlat84 = ((x_3573 * x_3574) + x_3576);
            let x_3579 : vec4<f32> = u_xlat20;
            let x_3580 : vec2<f32> = vec2<f32>(x_3579.z, x_3579.w);
            let x_3582 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3580.x, x_3580.y, x_3582);
            let x_3589 : vec3<f32> = txVec50;
            let x_3591 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3589.xy, x_3589.z);
            u_xlat85 = x_3591;
            let x_3593 : f32 = u_xlat23.w;
            let x_3594 : f32 = u_xlat85;
            let x_3596 : f32 = u_xlat84;
            u_xlat84 = ((x_3593 * x_3594) + x_3596);
            let x_3599 : vec4<f32> = u_xlat21;
            let x_3600 : vec2<f32> = vec2<f32>(x_3599.x, x_3599.y);
            let x_3602 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3600.x, x_3600.y, x_3602);
            let x_3609 : vec3<f32> = txVec51;
            let x_3611 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3609.xy, x_3609.z);
            u_xlat85 = x_3611;
            let x_3613 : f32 = u_xlat24.x;
            let x_3614 : f32 = u_xlat85;
            let x_3616 : f32 = u_xlat84;
            u_xlat84 = ((x_3613 * x_3614) + x_3616);
            let x_3619 : vec4<f32> = u_xlat21;
            let x_3620 : vec2<f32> = vec2<f32>(x_3619.z, x_3619.w);
            let x_3622 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_3620.x, x_3620.y, x_3622);
            let x_3629 : vec3<f32> = txVec52;
            let x_3631 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3629.xy, x_3629.z);
            u_xlat85 = x_3631;
            let x_3633 : f32 = u_xlat24.y;
            let x_3634 : f32 = u_xlat85;
            let x_3636 : f32 = u_xlat84;
            u_xlat84 = ((x_3633 * x_3634) + x_3636);
            let x_3639 : vec2<f32> = u_xlat38;
            let x_3641 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_3639.x, x_3639.y, x_3641);
            let x_3648 : vec3<f32> = txVec53;
            let x_3650 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3648.xy, x_3648.z);
            u_xlat85 = x_3650;
            let x_3652 : f32 = u_xlat24.z;
            let x_3653 : f32 = u_xlat85;
            let x_3655 : f32 = u_xlat84;
            u_xlat84 = ((x_3652 * x_3653) + x_3655);
            let x_3658 : vec2<f32> = u_xlat69;
            let x_3660 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_3658.x, x_3658.y, x_3660);
            let x_3667 : vec3<f32> = txVec54;
            let x_3669 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3667.xy, x_3667.z);
            u_xlat85 = x_3669;
            let x_3671 : f32 = u_xlat24.w;
            let x_3672 : f32 = u_xlat85;
            let x_3674 : f32 = u_xlat84;
            u_xlat84 = ((x_3671 * x_3672) + x_3674);
            let x_3677 : vec4<f32> = u_xlat16;
            let x_3678 : vec2<f32> = vec2<f32>(x_3677.x, x_3677.y);
            let x_3680 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_3678.x, x_3678.y, x_3680);
            let x_3687 : vec3<f32> = txVec55;
            let x_3689 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3687.xy, x_3687.z);
            u_xlat85 = x_3689;
            let x_3691 : f32 = u_xlat12.x;
            let x_3692 : f32 = u_xlat85;
            let x_3694 : f32 = u_xlat84;
            u_xlat84 = ((x_3691 * x_3692) + x_3694);
            let x_3697 : vec4<f32> = u_xlat16;
            let x_3698 : vec2<f32> = vec2<f32>(x_3697.z, x_3697.w);
            let x_3700 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_3698.x, x_3698.y, x_3700);
            let x_3707 : vec3<f32> = txVec56;
            let x_3709 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3707.xy, x_3707.z);
            u_xlat85 = x_3709;
            let x_3711 : f32 = u_xlat12.y;
            let x_3712 : f32 = u_xlat85;
            let x_3714 : f32 = u_xlat84;
            u_xlat84 = ((x_3711 * x_3712) + x_3714);
            let x_3717 : vec2<f32> = u_xlat64;
            let x_3719 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_3717.x, x_3717.y, x_3719);
            let x_3726 : vec3<f32> = txVec57;
            let x_3728 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3726.xy, x_3726.z);
            u_xlat85 = x_3728;
            let x_3730 : f32 = u_xlat12.z;
            let x_3731 : f32 = u_xlat85;
            let x_3733 : f32 = u_xlat84;
            u_xlat84 = ((x_3730 * x_3731) + x_3733);
            let x_3736 : vec4<f32> = u_xlat11;
            let x_3737 : vec2<f32> = vec2<f32>(x_3736.x, x_3736.y);
            let x_3739 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_3737.x, x_3737.y, x_3739);
            let x_3746 : vec3<f32> = txVec58;
            let x_3748 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3746.xy, x_3746.z);
            u_xlat85 = x_3748;
            let x_3750 : f32 = u_xlat12.w;
            let x_3751 : f32 = u_xlat85;
            let x_3753 : f32 = u_xlat84;
            u_xlat83 = ((x_3750 * x_3751) + x_3753);
          }
        }
      } else {
        let x_3757 : vec4<f32> = u_xlat10;
        let x_3758 : vec2<f32> = vec2<f32>(x_3757.x, x_3757.y);
        let x_3760 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_3758.x, x_3758.y, x_3760);
        let x_3767 : vec3<f32> = txVec59;
        let x_3769 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3767.xy, x_3767.z);
        u_xlat83 = x_3769;
      }
      let x_3770 : i32 = u_xlati80;
      let x_3772 : f32 = x_709.x_AdditionalShadowParams[x_3770].x;
      u_xlat84 = (1.0f + -(x_3772));
      let x_3775 : f32 = u_xlat83;
      let x_3776 : i32 = u_xlati80;
      let x_3778 : f32 = x_709.x_AdditionalShadowParams[x_3776].x;
      let x_3780 : f32 = u_xlat84;
      u_xlat83 = ((x_3775 * x_3778) + x_3780);
      let x_3783 : f32 = u_xlat10.z;
      u_xlatb84 = (0.0f >= x_3783);
      let x_3786 : f32 = u_xlat10.z;
      u_xlatb10.x = (x_3786 >= 1.0f);
      let x_3789 : bool = u_xlatb84;
      let x_3791 : bool = u_xlatb10.x;
      u_xlatb84 = (x_3789 | x_3791);
      let x_3793 : bool = u_xlatb84;
      let x_3794 : f32 = u_xlat83;
      u_xlat83 = select(x_3794, 1.0f, x_3793);
    } else {
      u_xlat83 = 1.0f;
    }
    let x_3797 : f32 = u_xlat83;
    u_xlat84 = (-(x_3797) + 1.0f);
    let x_3800 : f32 = u_xlat77;
    let x_3801 : f32 = u_xlat84;
    let x_3803 : f32 = u_xlat83;
    u_xlat83 = ((x_3800 * x_3801) + x_3803);
    let x_3805 : f32 = u_xlat81;
    let x_3806 : f32 = u_xlat83;
    u_xlat81 = (x_3805 * x_3806);
    let x_3808 : vec4<f32> = u_xlat1;
    let x_3810 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_3808.x, x_3808.y, x_3808.z), vec3<f32>(x_3810.x, x_3810.y, x_3810.z));
    let x_3813 : f32 = u_xlat83;
    u_xlat83 = clamp(x_3813, 0.0f, 1.0f);
    let x_3815 : f32 = u_xlat81;
    let x_3816 : f32 = u_xlat83;
    u_xlat81 = (x_3815 * x_3816);
    let x_3818 : f32 = u_xlat81;
    let x_3820 : i32 = u_xlati80;
    let x_3822 : vec4<f32> = x_2367.x_AdditionalLightsColor[x_3820];
    let x_3824 : vec3<f32> = (vec3<f32>(x_3818, x_3818, x_3818) * vec3<f32>(x_3822.x, x_3822.y, x_3822.z));
    let x_3825 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3824.x, x_3824.y, x_3824.z, x_3825.w);
    let x_3827 : vec4<f32> = u_xlat8;
    let x_3829 : f32 = u_xlat82;
    let x_3832 : vec3<f32> = u_xlat2;
    let x_3833 : vec3<f32> = ((vec3<f32>(x_3827.x, x_3827.y, x_3827.z) * vec3<f32>(x_3829, x_3829, x_3829)) + x_3832);
    let x_3834 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3833.x, x_3833.y, x_3833.z, x_3834.w);
    let x_3836 : vec4<f32> = u_xlat8;
    let x_3838 : vec4<f32> = u_xlat8;
    u_xlat80 = dot(vec3<f32>(x_3836.x, x_3836.y, x_3836.z), vec3<f32>(x_3838.x, x_3838.y, x_3838.z));
    let x_3841 : f32 = u_xlat80;
    u_xlat80 = max(x_3841, 1.17549435e-38f);
    let x_3843 : f32 = u_xlat80;
    u_xlat80 = inverseSqrt(x_3843);
    let x_3845 : f32 = u_xlat80;
    let x_3847 : vec4<f32> = u_xlat8;
    let x_3849 : vec3<f32> = (vec3<f32>(x_3845, x_3845, x_3845) * vec3<f32>(x_3847.x, x_3847.y, x_3847.z));
    let x_3850 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3849.x, x_3849.y, x_3849.z, x_3850.w);
    let x_3852 : vec4<f32> = u_xlat1;
    let x_3854 : vec4<f32> = u_xlat8;
    u_xlat80 = dot(vec3<f32>(x_3852.x, x_3852.y, x_3852.z), vec3<f32>(x_3854.x, x_3854.y, x_3854.z));
    let x_3857 : f32 = u_xlat80;
    u_xlat80 = clamp(x_3857, 0.0f, 1.0f);
    let x_3859 : vec4<f32> = u_xlat9;
    let x_3861 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_3859.x, x_3859.y, x_3859.z), vec3<f32>(x_3861.x, x_3861.y, x_3861.z));
    let x_3864 : f32 = u_xlat81;
    u_xlat81 = clamp(x_3864, 0.0f, 1.0f);
    let x_3866 : f32 = u_xlat80;
    let x_3867 : f32 = u_xlat80;
    u_xlat80 = (x_3866 * x_3867);
    let x_3869 : f32 = u_xlat80;
    let x_3871 : f32 = u_xlat0.x;
    u_xlat80 = ((x_3869 * x_3871) + 1.00001001358032226562f);
    let x_3874 : f32 = u_xlat81;
    let x_3875 : f32 = u_xlat81;
    u_xlat81 = (x_3874 * x_3875);
    let x_3877 : f32 = u_xlat80;
    let x_3878 : f32 = u_xlat80;
    u_xlat80 = (x_3877 * x_3878);
    let x_3880 : f32 = u_xlat81;
    u_xlat81 = max(x_3880, 0.10000000149011611938f);
    let x_3882 : f32 = u_xlat80;
    let x_3883 : f32 = u_xlat81;
    u_xlat80 = (x_3882 * x_3883);
    let x_3885 : f32 = u_xlat78;
    let x_3886 : f32 = u_xlat80;
    u_xlat80 = (x_3885 * x_3886);
    let x_3888 : f32 = u_xlat76;
    let x_3889 : f32 = u_xlat80;
    u_xlat80 = (x_3888 / x_3889);
    let x_3891 : vec4<f32> = u_xlat5;
    let x_3893 : f32 = u_xlat80;
    let x_3896 : vec4<f32> = u_xlat4;
    let x_3898 : vec3<f32> = ((vec3<f32>(x_3891.x, x_3891.y, x_3891.z) * vec3<f32>(x_3893, x_3893, x_3893)) + vec3<f32>(x_3896.x, x_3896.y, x_3896.z));
    let x_3899 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3898.x, x_3898.y, x_3898.z, x_3899.w);
    let x_3901 : vec4<f32> = u_xlat8;
    let x_3903 : vec4<f32> = u_xlat10;
    let x_3906 : vec4<f32> = u_xlat7;
    let x_3908 : vec3<f32> = ((vec3<f32>(x_3901.x, x_3901.y, x_3901.z) * vec3<f32>(x_3903.x, x_3903.y, x_3903.z)) + vec3<f32>(x_3906.x, x_3906.y, x_3906.z));
    let x_3909 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3908.x, x_3908.y, x_3908.z, x_3909.w);

    continuing {
      let x_3911 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3911 + bitcast<u32>(1i));
    }
  }
  let x_3913 : vec4<f32> = u_xlat3;
  let x_3915 : f32 = u_xlat25;
  let x_3918 : vec4<f32> = u_xlat6;
  u_xlat0 = ((vec3<f32>(x_3913.x, x_3913.y, x_3913.z) * vec3<f32>(x_3915, x_3915, x_3915)) + vec3<f32>(x_3918.x, x_3918.y, x_3918.z));
  let x_3921 : vec4<f32> = u_xlat7;
  let x_3923 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_3921.x, x_3921.y, x_3921.z) + x_3923);
  let x_3927 : f32 = u_xlat75;
  let x_3929 : vec3<f32> = u_xlat0;
  let x_3930 : vec3<f32> = (vec3<f32>(x_3927, x_3927, x_3927) * x_3929);
  let x_3931 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3930.x, x_3930.y, x_3930.z, x_3931.w);
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


