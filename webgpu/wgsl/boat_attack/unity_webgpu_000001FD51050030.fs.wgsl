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

@group(1) @binding(4) var<uniform> x_594 : LightShadows;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlat77 : f32;

var<private> u_xlatu77 : u32;

var<private> u_xlati77 : i32;

@group(1) @binding(2) var<uniform> x_781 : UnityPerDraw;

var<private> u_xlat78 : f32;

var<private> u_xlatb79 : bool;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat79 : f32;

var<private> u_xlatb80 : bool;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat81 : f32;

var<private> u_xlat33 : vec3<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat34 : vec2<f32>;

var<private> u_xlat65 : vec2<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlatb28 : bool;

var<private> u_xlatb53 : bool;

var<private> u_xlat28 : f32;

var<private> u_xlat53 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu0 : u32;

var<private> u_xlatu79 : u32;

var<private> u_xlati80 : i32;

var<private> u_xlati79 : i32;

@group(1) @binding(1) var<uniform> x_2548 : AdditionalLights;

var<private> u_xlat82 : f32;

var<private> u_xlati82 : i32;

var<private> u_xlatb84 : bool;

var<private> u_xlatb10 : vec4<bool>;

var<private> u_xlat85 : f32;

var<private> u_xlat35 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlatb82 : bool;

@group(0) @binding(7) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat37 : vec3<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat38 : vec2<f32>;

var<private> u_xlat69 : vec2<f32>;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu76 : u32;

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
  var x_2158 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2678 : f32;
  var x_2688 : f32;
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
  let x_586 : vec3<f32> = vs_TEXCOORD7;
  let x_596 : vec4<f32> = x_594.x_CascadeShadowSplitSpheres0;
  let x_599 : vec3<f32> = (x_586 + -(vec3<f32>(x_596.x, x_596.y, x_596.z)));
  let x_600 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_599.x, x_599.y, x_599.z, x_600.w);
  let x_602 : vec3<f32> = vs_TEXCOORD7;
  let x_604 : vec4<f32> = x_594.x_CascadeShadowSplitSpheres1;
  let x_607 : vec3<f32> = (x_602 + -(vec3<f32>(x_604.x, x_604.y, x_604.z)));
  let x_608 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_607.x, x_607.y, x_607.z, x_608.w);
  let x_610 : vec3<f32> = vs_TEXCOORD7;
  let x_613 : vec4<f32> = x_594.x_CascadeShadowSplitSpheres2;
  let x_616 : vec3<f32> = (x_610 + -(vec3<f32>(x_613.x, x_613.y, x_613.z)));
  let x_617 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_616.x, x_616.y, x_616.z, x_617.w);
  let x_619 : vec3<f32> = vs_TEXCOORD7;
  let x_621 : vec4<f32> = x_594.x_CascadeShadowSplitSpheres3;
  let x_624 : vec3<f32> = (x_619 + -(vec3<f32>(x_621.x, x_621.y, x_621.z)));
  let x_625 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_624.x, x_624.y, x_624.z, x_625.w);
  let x_627 : vec4<f32> = u_xlat3;
  let x_629 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_627.x, x_627.y, x_627.z), vec3<f32>(x_629.x, x_629.y, x_629.z));
  let x_633 : vec4<f32> = u_xlat4;
  let x_635 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_633.x, x_633.y, x_633.z), vec3<f32>(x_635.x, x_635.y, x_635.z));
  let x_639 : vec4<f32> = u_xlat6;
  let x_641 : vec4<f32> = u_xlat6;
  u_xlat3.z = dot(vec3<f32>(x_639.x, x_639.y, x_639.z), vec3<f32>(x_641.x, x_641.y, x_641.z));
  let x_645 : vec4<f32> = u_xlat7;
  let x_647 : vec4<f32> = u_xlat7;
  u_xlat3.w = dot(vec3<f32>(x_645.x, x_645.y, x_645.z), vec3<f32>(x_647.x, x_647.y, x_647.z));
  let x_653 : vec4<f32> = u_xlat3;
  let x_655 : vec4<f32> = x_594.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_653 < x_655);
  let x_658 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_658);
  let x_662 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_662);
  let x_666 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_666);
  let x_670 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_670);
  let x_674 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_674);
  let x_679 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_679);
  let x_683 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_683);
  let x_686 : vec4<f32> = u_xlat3;
  let x_688 : vec4<f32> = u_xlat4;
  let x_690 : vec3<f32> = (vec3<f32>(x_686.x, x_686.y, x_686.z) + vec3<f32>(x_688.y, x_688.z, x_688.w));
  let x_691 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_690.x, x_690.y, x_690.z, x_691.w);
  let x_693 : vec4<f32> = u_xlat3;
  let x_696 : vec3<f32> = max(vec3<f32>(x_693.x, x_693.y, x_693.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_697 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_697.x, x_696.x, x_696.y, x_696.z);
  let x_700 : vec4<f32> = u_xlat4;
  u_xlat77 = dot(x_700, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_705 : f32 = u_xlat77;
  u_xlat77 = (-(x_705) + 4.0f);
  let x_710 : f32 = u_xlat77;
  u_xlatu77 = u32(x_710);
  let x_714 : u32 = u_xlatu77;
  u_xlati77 = (bitcast<i32>(x_714) << bitcast<u32>(2i));
  let x_717 : vec3<f32> = vs_TEXCOORD7;
  let x_719 : i32 = u_xlati77;
  let x_722 : i32 = u_xlati77;
  let x_726 : vec4<f32> = x_594.x_MainLightWorldToShadow[((x_719 + 1i) / 4i)][((x_722 + 1i) % 4i)];
  let x_728 : vec3<f32> = (vec3<f32>(x_717.y, x_717.y, x_717.y) * vec3<f32>(x_726.x, x_726.y, x_726.z));
  let x_729 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_728.x, x_728.y, x_728.z, x_729.w);
  let x_731 : i32 = u_xlati77;
  let x_733 : i32 = u_xlati77;
  let x_736 : vec4<f32> = x_594.x_MainLightWorldToShadow[(x_731 / 4i)][(x_733 % 4i)];
  let x_738 : vec3<f32> = vs_TEXCOORD7;
  let x_741 : vec4<f32> = u_xlat3;
  let x_743 : vec3<f32> = ((vec3<f32>(x_736.x, x_736.y, x_736.z) * vec3<f32>(x_738.x, x_738.x, x_738.x)) + vec3<f32>(x_741.x, x_741.y, x_741.z));
  let x_744 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_743.x, x_743.y, x_743.z, x_744.w);
  let x_746 : i32 = u_xlati77;
  let x_749 : i32 = u_xlati77;
  let x_753 : vec4<f32> = x_594.x_MainLightWorldToShadow[((x_746 + 2i) / 4i)][((x_749 + 2i) % 4i)];
  let x_755 : vec3<f32> = vs_TEXCOORD7;
  let x_758 : vec4<f32> = u_xlat3;
  let x_760 : vec3<f32> = ((vec3<f32>(x_753.x, x_753.y, x_753.z) * vec3<f32>(x_755.z, x_755.z, x_755.z)) + vec3<f32>(x_758.x, x_758.y, x_758.z));
  let x_761 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_760.x, x_760.y, x_760.z, x_761.w);
  let x_763 : vec4<f32> = u_xlat3;
  let x_765 : i32 = u_xlati77;
  let x_768 : i32 = u_xlati77;
  let x_772 : vec4<f32> = x_594.x_MainLightWorldToShadow[((x_765 + 3i) / 4i)][((x_768 + 3i) % 4i)];
  let x_774 : vec3<f32> = (vec3<f32>(x_763.x, x_763.y, x_763.z) + vec3<f32>(x_772.x, x_772.y, x_772.z));
  let x_775 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_774.x, x_774.y, x_774.z, x_775.w);
  u_xlat1.w = 1.0f;
  let x_783 : vec4<f32> = x_781.unity_SHAr;
  let x_784 : vec4<f32> = u_xlat1;
  u_xlat4.x = dot(x_783, x_784);
  let x_788 : vec4<f32> = x_781.unity_SHAg;
  let x_789 : vec4<f32> = u_xlat1;
  u_xlat4.y = dot(x_788, x_789);
  let x_793 : vec4<f32> = x_781.unity_SHAb;
  let x_794 : vec4<f32> = u_xlat1;
  u_xlat4.z = dot(x_793, x_794);
  let x_797 : vec4<f32> = u_xlat1;
  let x_799 : vec4<f32> = u_xlat1;
  u_xlat6 = (vec4<f32>(x_797.y, x_797.z, x_797.z, x_797.x) * vec4<f32>(x_799.x, x_799.y, x_799.z, x_799.z));
  let x_803 : vec4<f32> = x_781.unity_SHBr;
  let x_804 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_803, x_804);
  let x_808 : vec4<f32> = x_781.unity_SHBg;
  let x_809 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_808, x_809);
  let x_813 : vec4<f32> = x_781.unity_SHBb;
  let x_814 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_813, x_814);
  let x_818 : f32 = u_xlat1.y;
  let x_820 : f32 = u_xlat1.y;
  u_xlat76 = (x_818 * x_820);
  let x_823 : f32 = u_xlat1.x;
  let x_825 : f32 = u_xlat1.x;
  let x_827 : f32 = u_xlat76;
  u_xlat76 = ((x_823 * x_825) + -(x_827));
  let x_832 : vec4<f32> = x_781.unity_SHC;
  let x_834 : f32 = u_xlat76;
  let x_837 : vec4<f32> = u_xlat7;
  let x_839 : vec3<f32> = ((vec3<f32>(x_832.x, x_832.y, x_832.z) * vec3<f32>(x_834, x_834, x_834)) + vec3<f32>(x_837.x, x_837.y, x_837.z));
  let x_840 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_839.x, x_839.y, x_839.z, x_840.w);
  let x_842 : vec4<f32> = u_xlat4;
  let x_844 : vec4<f32> = u_xlat6;
  let x_846 : vec3<f32> = (vec3<f32>(x_842.x, x_842.y, x_842.z) + vec3<f32>(x_844.x, x_844.y, x_844.z));
  let x_847 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_846.x, x_846.y, x_846.z, x_847.w);
  let x_849 : vec4<f32> = u_xlat4;
  let x_851 : vec3<f32> = max(vec3<f32>(x_849.x, x_849.y, x_849.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_852 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_851.x, x_851.y, x_851.z, x_852.w);
  let x_855 : f32 = u_xlat0.x;
  u_xlat76 = ((-(x_855) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_860 : f32 = u_xlat76;
  u_xlat77 = (-(x_860) + 1.0f);
  let x_863 : f32 = u_xlat76;
  let x_865 : vec4<f32> = u_xlat5;
  let x_867 : vec3<f32> = (vec3<f32>(x_863, x_863, x_863) * vec3<f32>(x_865.x, x_865.y, x_865.z));
  let x_868 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_867.x, x_867.y, x_867.z, x_868.w);
  let x_870 : vec4<f32> = u_xlat5;
  let x_874 : vec3<f32> = (vec3<f32>(x_870.x, x_870.y, x_870.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_875 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_874.x, x_874.y, x_874.z, x_875.w);
  let x_877 : vec3<f32> = u_xlat0;
  let x_879 : vec4<f32> = u_xlat5;
  let x_884 : vec3<f32> = ((vec3<f32>(x_877.x, x_877.x, x_877.x) * vec3<f32>(x_879.x, x_879.y, x_879.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_885 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_884.x, x_884.y, x_884.z, x_885.w);
  let x_887 : f32 = u_xlat50;
  u_xlat0.x = (-(x_887) + 1.0f);
  let x_892 : f32 = u_xlat0.x;
  let x_894 : f32 = u_xlat0.x;
  u_xlat76 = (x_892 * x_894);
  let x_896 : f32 = u_xlat76;
  u_xlat76 = max(x_896, 0.0078125f);
  let x_900 : f32 = u_xlat76;
  let x_901 : f32 = u_xlat76;
  u_xlat78 = (x_900 * x_901);
  let x_903 : f32 = u_xlat50;
  let x_904 : f32 = u_xlat77;
  u_xlat50 = (x_903 + x_904);
  let x_906 : f32 = u_xlat50;
  u_xlat50 = clamp(x_906, 0.0f, 1.0f);
  let x_908 : f32 = u_xlat76;
  u_xlat77 = ((x_908 * 4.0f) + 2.0f);
  let x_911 : f32 = u_xlat25;
  u_xlat25 = min(x_911, 1.0f);
  let x_915 : f32 = x_594.x_MainLightShadowParams.y;
  u_xlatb79 = (0.0f < x_915);
  let x_917 : bool = u_xlatb79;
  if (x_917) {
    let x_921 : f32 = x_594.x_MainLightShadowParams.y;
    u_xlatb79 = (x_921 == 1.0f);
    let x_923 : bool = u_xlatb79;
    if (x_923) {
      let x_926 : vec4<f32> = u_xlat3;
      let x_929 : vec4<f32> = x_594.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_926.x, x_926.y, x_926.x, x_926.y) + x_929);
      let x_933 : vec4<f32> = u_xlat7;
      let x_934 : vec2<f32> = vec2<f32>(x_933.x, x_933.y);
      let x_936 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_934.x, x_934.y, x_936);
      let x_948 : vec3<f32> = txVec0;
      let x_950 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_948.xy, x_948.z);
      u_xlat8.x = x_950;
      let x_953 : vec4<f32> = u_xlat7;
      let x_954 : vec2<f32> = vec2<f32>(x_953.z, x_953.w);
      let x_956 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_954.x, x_954.y, x_956);
      let x_963 : vec3<f32> = txVec1;
      let x_965 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_963.xy, x_963.z);
      u_xlat8.y = x_965;
      let x_967 : vec4<f32> = u_xlat3;
      let x_970 : vec4<f32> = x_594.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_967.x, x_967.y, x_967.x, x_967.y) + x_970);
      let x_973 : vec4<f32> = u_xlat7;
      let x_974 : vec2<f32> = vec2<f32>(x_973.x, x_973.y);
      let x_976 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_974.x, x_974.y, x_976);
      let x_983 : vec3<f32> = txVec2;
      let x_985 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_983.xy, x_983.z);
      u_xlat8.z = x_985;
      let x_988 : vec4<f32> = u_xlat7;
      let x_989 : vec2<f32> = vec2<f32>(x_988.z, x_988.w);
      let x_991 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_989.x, x_989.y, x_991);
      let x_998 : vec3<f32> = txVec3;
      let x_1000 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_998.xy, x_998.z);
      u_xlat8.w = x_1000;
      let x_1003 : vec4<f32> = u_xlat8;
      u_xlat79 = dot(x_1003, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1010 : f32 = x_594.x_MainLightShadowParams.y;
      u_xlatb80 = (x_1010 == 2.0f);
      let x_1012 : bool = u_xlatb80;
      if (x_1012) {
        let x_1015 : vec4<f32> = u_xlat3;
        let x_1018 : vec4<f32> = x_594.x_MainLightShadowmapSize;
        let x_1021 : vec2<f32> = ((vec2<f32>(x_1015.x, x_1015.y) * vec2<f32>(x_1018.z, x_1018.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1022 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1021.x, x_1021.y, x_1022.z, x_1022.w);
        let x_1024 : vec4<f32> = u_xlat7;
        let x_1026 : vec2<f32> = floor(vec2<f32>(x_1024.x, x_1024.y));
        let x_1027 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1026.x, x_1026.y, x_1027.z, x_1027.w);
        let x_1031 : vec4<f32> = u_xlat3;
        let x_1034 : vec4<f32> = x_594.x_MainLightShadowmapSize;
        let x_1037 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_1031.x, x_1031.y) * vec2<f32>(x_1034.z, x_1034.w)) + -(vec2<f32>(x_1037.x, x_1037.y)));
        let x_1041 : vec2<f32> = u_xlat57;
        u_xlat8 = (vec4<f32>(x_1041.x, x_1041.x, x_1041.y, x_1041.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1045 : vec4<f32> = u_xlat8;
        let x_1047 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1045.x, x_1045.x, x_1045.z, x_1045.z) * vec4<f32>(x_1047.x, x_1047.x, x_1047.z, x_1047.z));
        let x_1050 : vec4<f32> = u_xlat9;
        let x_1054 : vec2<f32> = (vec2<f32>(x_1050.y, x_1050.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1055 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1054.x, x_1055.y, x_1054.y, x_1055.w);
        let x_1057 : vec4<f32> = u_xlat9;
        let x_1060 : vec2<f32> = u_xlat57;
        let x_1062 : vec2<f32> = ((vec2<f32>(x_1057.x, x_1057.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1060));
        let x_1063 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1062.x, x_1062.y, x_1063.z, x_1063.w);
        let x_1066 : vec2<f32> = u_xlat57;
        u_xlat59 = (-(x_1066) + vec2<f32>(1.0f, 1.0f));
        let x_1070 : vec2<f32> = u_xlat57;
        let x_1072 : vec2<f32> = min(x_1070, vec2<f32>(0.0f, 0.0f));
        let x_1073 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1072.x, x_1072.y, x_1073.z, x_1073.w);
        let x_1075 : vec4<f32> = u_xlat10;
        let x_1078 : vec4<f32> = u_xlat10;
        let x_1081 : vec2<f32> = u_xlat59;
        let x_1082 : vec2<f32> = ((-(vec2<f32>(x_1075.x, x_1075.y)) * vec2<f32>(x_1078.x, x_1078.y)) + x_1081);
        let x_1083 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1082.x, x_1082.y, x_1083.z, x_1083.w);
        let x_1085 : vec2<f32> = u_xlat57;
        u_xlat57 = max(x_1085, vec2<f32>(0.0f, 0.0f));
        let x_1087 : vec2<f32> = u_xlat57;
        let x_1089 : vec2<f32> = u_xlat57;
        let x_1091 : vec4<f32> = u_xlat8;
        u_xlat57 = ((-(x_1087) * x_1089) + vec2<f32>(x_1091.y, x_1091.w));
        let x_1094 : vec4<f32> = u_xlat10;
        let x_1096 : vec2<f32> = (vec2<f32>(x_1094.x, x_1094.y) + vec2<f32>(1.0f, 1.0f));
        let x_1097 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1096.x, x_1096.y, x_1097.z, x_1097.w);
        let x_1099 : vec2<f32> = u_xlat57;
        u_xlat57 = (x_1099 + vec2<f32>(1.0f, 1.0f));
        let x_1101 : vec4<f32> = u_xlat9;
        let x_1105 : vec2<f32> = (vec2<f32>(x_1101.x, x_1101.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1106 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1105.x, x_1105.y, x_1106.z, x_1106.w);
        let x_1108 : vec2<f32> = u_xlat59;
        let x_1109 : vec2<f32> = (x_1108 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1110 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1109.x, x_1109.y, x_1110.z, x_1110.w);
        let x_1112 : vec4<f32> = u_xlat10;
        let x_1114 : vec2<f32> = (vec2<f32>(x_1112.x, x_1112.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1115 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1114.x, x_1114.y, x_1115.z, x_1115.w);
        let x_1117 : vec2<f32> = u_xlat57;
        let x_1118 : vec2<f32> = (x_1117 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1119 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1118.x, x_1118.y, x_1119.z, x_1119.w);
        let x_1121 : vec4<f32> = u_xlat8;
        u_xlat57 = (vec2<f32>(x_1121.y, x_1121.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1125 : f32 = u_xlat10.x;
        u_xlat11.z = x_1125;
        let x_1128 : f32 = u_xlat57.x;
        u_xlat11.w = x_1128;
        let x_1131 : f32 = u_xlat12.x;
        u_xlat9.z = x_1131;
        let x_1134 : f32 = u_xlat8.x;
        u_xlat9.w = x_1134;
        let x_1136 : vec4<f32> = u_xlat9;
        let x_1138 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_1136.z, x_1136.w, x_1136.x, x_1136.z) + vec4<f32>(x_1138.z, x_1138.w, x_1138.x, x_1138.z));
        let x_1142 : f32 = u_xlat11.y;
        u_xlat10.z = x_1142;
        let x_1145 : f32 = u_xlat57.y;
        u_xlat10.w = x_1145;
        let x_1148 : f32 = u_xlat9.y;
        u_xlat12.z = x_1148;
        let x_1151 : f32 = u_xlat8.z;
        u_xlat12.w = x_1151;
        let x_1153 : vec4<f32> = u_xlat10;
        let x_1155 : vec4<f32> = u_xlat12;
        let x_1157 : vec3<f32> = (vec3<f32>(x_1153.z, x_1153.y, x_1153.w) + vec3<f32>(x_1155.z, x_1155.y, x_1155.w));
        let x_1158 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1157.x, x_1157.y, x_1157.z, x_1158.w);
        let x_1160 : vec4<f32> = u_xlat9;
        let x_1162 : vec4<f32> = u_xlat13;
        let x_1164 : vec3<f32> = (vec3<f32>(x_1160.x, x_1160.z, x_1160.w) / vec3<f32>(x_1162.z, x_1162.w, x_1162.y));
        let x_1165 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1164.x, x_1164.y, x_1164.z, x_1165.w);
        let x_1167 : vec4<f32> = u_xlat9;
        let x_1173 : vec3<f32> = (vec3<f32>(x_1167.x, x_1167.y, x_1167.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1174 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1173.x, x_1173.y, x_1173.z, x_1174.w);
        let x_1176 : vec4<f32> = u_xlat12;
        let x_1178 : vec4<f32> = u_xlat8;
        let x_1180 : vec3<f32> = (vec3<f32>(x_1176.z, x_1176.y, x_1176.w) / vec3<f32>(x_1178.x, x_1178.y, x_1178.z));
        let x_1181 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1180.x, x_1180.y, x_1180.z, x_1181.w);
        let x_1183 : vec4<f32> = u_xlat10;
        let x_1185 : vec3<f32> = (vec3<f32>(x_1183.x, x_1183.y, x_1183.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1186 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1185.x, x_1185.y, x_1185.z, x_1186.w);
        let x_1188 : vec4<f32> = u_xlat9;
        let x_1191 : vec4<f32> = x_594.x_MainLightShadowmapSize;
        let x_1193 : vec3<f32> = (vec3<f32>(x_1188.y, x_1188.x, x_1188.z) * vec3<f32>(x_1191.x, x_1191.x, x_1191.x));
        let x_1194 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1193.x, x_1193.y, x_1193.z, x_1194.w);
        let x_1196 : vec4<f32> = u_xlat10;
        let x_1199 : vec4<f32> = x_594.x_MainLightShadowmapSize;
        let x_1201 : vec3<f32> = (vec3<f32>(x_1196.x, x_1196.y, x_1196.z) * vec3<f32>(x_1199.y, x_1199.y, x_1199.y));
        let x_1202 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1201.x, x_1201.y, x_1201.z, x_1202.w);
        let x_1205 : f32 = u_xlat10.x;
        u_xlat9.w = x_1205;
        let x_1207 : vec4<f32> = u_xlat7;
        let x_1210 : vec4<f32> = x_594.x_MainLightShadowmapSize;
        let x_1213 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1207.x, x_1207.y, x_1207.x, x_1207.y) * vec4<f32>(x_1210.x, x_1210.y, x_1210.x, x_1210.y)) + vec4<f32>(x_1213.y, x_1213.w, x_1213.x, x_1213.w));
        let x_1216 : vec4<f32> = u_xlat7;
        let x_1219 : vec4<f32> = x_594.x_MainLightShadowmapSize;
        let x_1222 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_1216.x, x_1216.y) * vec2<f32>(x_1219.x, x_1219.y)) + vec2<f32>(x_1222.z, x_1222.w));
        let x_1226 : f32 = u_xlat9.y;
        u_xlat10.w = x_1226;
        let x_1228 : vec4<f32> = u_xlat10;
        let x_1229 : vec2<f32> = vec2<f32>(x_1228.y, x_1228.z);
        let x_1230 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1230.x, x_1229.x, x_1230.z, x_1229.y);
        let x_1232 : vec4<f32> = u_xlat7;
        let x_1235 : vec4<f32> = x_594.x_MainLightShadowmapSize;
        let x_1238 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1232.x, x_1232.y, x_1232.x, x_1232.y) * vec4<f32>(x_1235.x, x_1235.y, x_1235.x, x_1235.y)) + vec4<f32>(x_1238.x, x_1238.y, x_1238.z, x_1238.y));
        let x_1241 : vec4<f32> = u_xlat7;
        let x_1244 : vec4<f32> = x_594.x_MainLightShadowmapSize;
        let x_1247 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1241.x, x_1241.y, x_1241.x, x_1241.y) * vec4<f32>(x_1244.x, x_1244.y, x_1244.x, x_1244.y)) + vec4<f32>(x_1247.w, x_1247.y, x_1247.w, x_1247.z));
        let x_1250 : vec4<f32> = u_xlat7;
        let x_1253 : vec4<f32> = x_594.x_MainLightShadowmapSize;
        let x_1256 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1250.x, x_1250.y, x_1250.x, x_1250.y) * vec4<f32>(x_1253.x, x_1253.y, x_1253.x, x_1253.y)) + vec4<f32>(x_1256.x, x_1256.w, x_1256.z, x_1256.w));
        let x_1260 : vec4<f32> = u_xlat8;
        let x_1262 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_1260.x, x_1260.x, x_1260.x, x_1260.y) * vec4<f32>(x_1262.z, x_1262.w, x_1262.y, x_1262.z));
        let x_1266 : vec4<f32> = u_xlat8;
        let x_1268 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_1266.y, x_1266.y, x_1266.z, x_1266.z) * x_1268);
        let x_1272 : f32 = u_xlat8.z;
        let x_1274 : f32 = u_xlat13.y;
        u_xlat80 = (x_1272 * x_1274);
        let x_1277 : vec4<f32> = u_xlat11;
        let x_1278 : vec2<f32> = vec2<f32>(x_1277.x, x_1277.y);
        let x_1280 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_1278.x, x_1278.y, x_1280);
        let x_1288 : vec3<f32> = txVec4;
        let x_1290 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1288.xy, x_1288.z);
        u_xlat81 = x_1290;
        let x_1292 : vec4<f32> = u_xlat11;
        let x_1293 : vec2<f32> = vec2<f32>(x_1292.z, x_1292.w);
        let x_1295 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_1293.x, x_1293.y, x_1295);
        let x_1302 : vec3<f32> = txVec5;
        let x_1304 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1302.xy, x_1302.z);
        u_xlat7.x = x_1304;
        let x_1307 : f32 = u_xlat7.x;
        let x_1309 : f32 = u_xlat14.y;
        u_xlat7.x = (x_1307 * x_1309);
        let x_1313 : f32 = u_xlat14.x;
        let x_1314 : f32 = u_xlat81;
        let x_1317 : f32 = u_xlat7.x;
        u_xlat81 = ((x_1313 * x_1314) + x_1317);
        let x_1320 : vec2<f32> = u_xlat57;
        let x_1322 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_1320.x, x_1320.y, x_1322);
        let x_1329 : vec3<f32> = txVec6;
        let x_1331 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1329.xy, x_1329.z);
        u_xlat7.x = x_1331;
        let x_1334 : f32 = u_xlat14.z;
        let x_1336 : f32 = u_xlat7.x;
        let x_1338 : f32 = u_xlat81;
        u_xlat81 = ((x_1334 * x_1336) + x_1338);
        let x_1341 : vec4<f32> = u_xlat10;
        let x_1342 : vec2<f32> = vec2<f32>(x_1341.x, x_1341.y);
        let x_1344 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_1342.x, x_1342.y, x_1344);
        let x_1351 : vec3<f32> = txVec7;
        let x_1353 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1351.xy, x_1351.z);
        u_xlat7.x = x_1353;
        let x_1356 : f32 = u_xlat14.w;
        let x_1358 : f32 = u_xlat7.x;
        let x_1360 : f32 = u_xlat81;
        u_xlat81 = ((x_1356 * x_1358) + x_1360);
        let x_1363 : vec4<f32> = u_xlat12;
        let x_1364 : vec2<f32> = vec2<f32>(x_1363.x, x_1363.y);
        let x_1366 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_1364.x, x_1364.y, x_1366);
        let x_1373 : vec3<f32> = txVec8;
        let x_1375 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1373.xy, x_1373.z);
        u_xlat7.x = x_1375;
        let x_1378 : f32 = u_xlat15.x;
        let x_1380 : f32 = u_xlat7.x;
        let x_1382 : f32 = u_xlat81;
        u_xlat81 = ((x_1378 * x_1380) + x_1382);
        let x_1385 : vec4<f32> = u_xlat12;
        let x_1386 : vec2<f32> = vec2<f32>(x_1385.z, x_1385.w);
        let x_1388 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_1386.x, x_1386.y, x_1388);
        let x_1395 : vec3<f32> = txVec9;
        let x_1397 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1395.xy, x_1395.z);
        u_xlat7.x = x_1397;
        let x_1400 : f32 = u_xlat15.y;
        let x_1402 : f32 = u_xlat7.x;
        let x_1404 : f32 = u_xlat81;
        u_xlat81 = ((x_1400 * x_1402) + x_1404);
        let x_1407 : vec4<f32> = u_xlat10;
        let x_1408 : vec2<f32> = vec2<f32>(x_1407.z, x_1407.w);
        let x_1410 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_1408.x, x_1408.y, x_1410);
        let x_1417 : vec3<f32> = txVec10;
        let x_1419 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1417.xy, x_1417.z);
        u_xlat7.x = x_1419;
        let x_1422 : f32 = u_xlat15.z;
        let x_1424 : f32 = u_xlat7.x;
        let x_1426 : f32 = u_xlat81;
        u_xlat81 = ((x_1422 * x_1424) + x_1426);
        let x_1429 : vec4<f32> = u_xlat9;
        let x_1430 : vec2<f32> = vec2<f32>(x_1429.x, x_1429.y);
        let x_1432 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_1430.x, x_1430.y, x_1432);
        let x_1439 : vec3<f32> = txVec11;
        let x_1441 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1439.xy, x_1439.z);
        u_xlat7.x = x_1441;
        let x_1444 : f32 = u_xlat15.w;
        let x_1446 : f32 = u_xlat7.x;
        let x_1448 : f32 = u_xlat81;
        u_xlat81 = ((x_1444 * x_1446) + x_1448);
        let x_1451 : vec4<f32> = u_xlat9;
        let x_1452 : vec2<f32> = vec2<f32>(x_1451.z, x_1451.w);
        let x_1454 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1452.x, x_1452.y, x_1454);
        let x_1461 : vec3<f32> = txVec12;
        let x_1463 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1461.xy, x_1461.z);
        u_xlat7.x = x_1463;
        let x_1465 : f32 = u_xlat80;
        let x_1467 : f32 = u_xlat7.x;
        let x_1469 : f32 = u_xlat81;
        u_xlat79 = ((x_1465 * x_1467) + x_1469);
      } else {
        let x_1472 : vec4<f32> = u_xlat3;
        let x_1475 : vec4<f32> = x_594.x_MainLightShadowmapSize;
        let x_1478 : vec2<f32> = ((vec2<f32>(x_1472.x, x_1472.y) * vec2<f32>(x_1475.z, x_1475.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1479 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1478.x, x_1478.y, x_1479.z, x_1479.w);
        let x_1481 : vec4<f32> = u_xlat7;
        let x_1483 : vec2<f32> = floor(vec2<f32>(x_1481.x, x_1481.y));
        let x_1484 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1483.x, x_1483.y, x_1484.z, x_1484.w);
        let x_1486 : vec4<f32> = u_xlat3;
        let x_1489 : vec4<f32> = x_594.x_MainLightShadowmapSize;
        let x_1492 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_1486.x, x_1486.y) * vec2<f32>(x_1489.z, x_1489.w)) + -(vec2<f32>(x_1492.x, x_1492.y)));
        let x_1496 : vec2<f32> = u_xlat57;
        u_xlat8 = (vec4<f32>(x_1496.x, x_1496.x, x_1496.y, x_1496.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1499 : vec4<f32> = u_xlat8;
        let x_1501 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1499.x, x_1499.x, x_1499.z, x_1499.z) * vec4<f32>(x_1501.x, x_1501.x, x_1501.z, x_1501.z));
        let x_1504 : vec4<f32> = u_xlat9;
        let x_1508 : vec2<f32> = (vec2<f32>(x_1504.y, x_1504.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1509 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1509.x, x_1508.x, x_1509.z, x_1508.y);
        let x_1511 : vec4<f32> = u_xlat9;
        let x_1514 : vec2<f32> = u_xlat57;
        let x_1516 : vec2<f32> = ((vec2<f32>(x_1511.x, x_1511.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1514));
        let x_1517 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1516.x, x_1517.y, x_1516.y, x_1517.w);
        let x_1519 : vec2<f32> = u_xlat57;
        let x_1521 : vec2<f32> = (-(x_1519) + vec2<f32>(1.0f, 1.0f));
        let x_1522 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1521.x, x_1521.y, x_1522.z, x_1522.w);
        let x_1524 : vec2<f32> = u_xlat57;
        u_xlat59 = min(x_1524, vec2<f32>(0.0f, 0.0f));
        let x_1526 : vec2<f32> = u_xlat59;
        let x_1528 : vec2<f32> = u_xlat59;
        let x_1530 : vec4<f32> = u_xlat9;
        let x_1532 : vec2<f32> = ((-(x_1526) * x_1528) + vec2<f32>(x_1530.x, x_1530.y));
        let x_1533 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1532.x, x_1532.y, x_1533.z, x_1533.w);
        let x_1535 : vec2<f32> = u_xlat57;
        u_xlat59 = max(x_1535, vec2<f32>(0.0f, 0.0f));
        let x_1538 : vec2<f32> = u_xlat59;
        let x_1540 : vec2<f32> = u_xlat59;
        let x_1542 : vec4<f32> = u_xlat8;
        let x_1544 : vec2<f32> = ((-(x_1538) * x_1540) + vec2<f32>(x_1542.y, x_1542.w));
        let x_1545 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_1544.x, x_1545.y, x_1544.y);
        let x_1547 : vec4<f32> = u_xlat9;
        let x_1550 : vec2<f32> = (vec2<f32>(x_1547.x, x_1547.y) + vec2<f32>(2.0f, 2.0f));
        let x_1551 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1550.x, x_1550.y, x_1551.z, x_1551.w);
        let x_1553 : vec3<f32> = u_xlat33;
        let x_1555 : vec2<f32> = (vec2<f32>(x_1553.x, x_1553.z) + vec2<f32>(2.0f, 2.0f));
        let x_1556 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1556.x, x_1555.x, x_1556.z, x_1555.y);
        let x_1559 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1559 * 0.08163200318813323975f);
        let x_1563 : vec4<f32> = u_xlat8;
        let x_1566 : vec3<f32> = (vec3<f32>(x_1563.z, x_1563.x, x_1563.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1567 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1566.x, x_1566.y, x_1566.z, x_1567.w);
        let x_1569 : vec4<f32> = u_xlat9;
        let x_1572 : vec2<f32> = (vec2<f32>(x_1569.x, x_1569.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1573 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1572.x, x_1572.y, x_1573.z, x_1573.w);
        let x_1576 : f32 = u_xlat12.y;
        u_xlat11.x = x_1576;
        let x_1578 : vec2<f32> = u_xlat57;
        let x_1585 : vec2<f32> = ((vec2<f32>(x_1578.x, x_1578.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1586 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1586.x, x_1585.x, x_1586.z, x_1585.y);
        let x_1588 : vec2<f32> = u_xlat57;
        let x_1592 : vec2<f32> = ((vec2<f32>(x_1588.x, x_1588.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1593 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1592.x, x_1593.y, x_1592.y, x_1593.w);
        let x_1596 : f32 = u_xlat8.x;
        u_xlat9.y = x_1596;
        let x_1599 : f32 = u_xlat10.y;
        u_xlat9.w = x_1599;
        let x_1601 : vec4<f32> = u_xlat9;
        let x_1602 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1601 + x_1602);
        let x_1604 : vec2<f32> = u_xlat57;
        let x_1607 : vec2<f32> = ((vec2<f32>(x_1604.y, x_1604.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1608 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1608.x, x_1607.x, x_1608.z, x_1607.y);
        let x_1610 : vec2<f32> = u_xlat57;
        let x_1613 : vec2<f32> = ((vec2<f32>(x_1610.y, x_1610.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1614 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1613.x, x_1614.y, x_1613.y, x_1614.w);
        let x_1617 : f32 = u_xlat8.y;
        u_xlat10.y = x_1617;
        let x_1619 : vec4<f32> = u_xlat10;
        let x_1620 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1619 + x_1620);
        let x_1622 : vec4<f32> = u_xlat9;
        let x_1623 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1622 / x_1623);
        let x_1625 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1625 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1631 : vec4<f32> = u_xlat10;
        let x_1632 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1631 / x_1632);
        let x_1634 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1634 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1636 : vec4<f32> = u_xlat9;
        let x_1639 : vec4<f32> = x_594.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1636.w, x_1636.x, x_1636.y, x_1636.z) * vec4<f32>(x_1639.x, x_1639.x, x_1639.x, x_1639.x));
        let x_1642 : vec4<f32> = u_xlat10;
        let x_1645 : vec4<f32> = x_594.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1642.x, x_1642.w, x_1642.y, x_1642.z) * vec4<f32>(x_1645.y, x_1645.y, x_1645.y, x_1645.y));
        let x_1648 : vec4<f32> = u_xlat9;
        let x_1649 : vec3<f32> = vec3<f32>(x_1648.y, x_1648.z, x_1648.w);
        let x_1650 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1649.x, x_1650.y, x_1649.y, x_1649.z);
        let x_1653 : f32 = u_xlat10.x;
        u_xlat12.y = x_1653;
        let x_1655 : vec4<f32> = u_xlat7;
        let x_1658 : vec4<f32> = x_594.x_MainLightShadowmapSize;
        let x_1661 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1655.x, x_1655.y, x_1655.x, x_1655.y) * vec4<f32>(x_1658.x, x_1658.y, x_1658.x, x_1658.y)) + vec4<f32>(x_1661.x, x_1661.y, x_1661.z, x_1661.y));
        let x_1664 : vec4<f32> = u_xlat7;
        let x_1667 : vec4<f32> = x_594.x_MainLightShadowmapSize;
        let x_1670 : vec4<f32> = u_xlat12;
        u_xlat57 = ((vec2<f32>(x_1664.x, x_1664.y) * vec2<f32>(x_1667.x, x_1667.y)) + vec2<f32>(x_1670.w, x_1670.y));
        let x_1674 : f32 = u_xlat12.y;
        u_xlat9.y = x_1674;
        let x_1677 : f32 = u_xlat10.z;
        u_xlat12.y = x_1677;
        let x_1679 : vec4<f32> = u_xlat7;
        let x_1682 : vec4<f32> = x_594.x_MainLightShadowmapSize;
        let x_1685 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1679.x, x_1679.y, x_1679.x, x_1679.y) * vec4<f32>(x_1682.x, x_1682.y, x_1682.x, x_1682.y)) + vec4<f32>(x_1685.x, x_1685.y, x_1685.z, x_1685.y));
        let x_1688 : vec4<f32> = u_xlat7;
        let x_1691 : vec4<f32> = x_594.x_MainLightShadowmapSize;
        let x_1694 : vec4<f32> = u_xlat12;
        let x_1696 : vec2<f32> = ((vec2<f32>(x_1688.x, x_1688.y) * vec2<f32>(x_1691.x, x_1691.y)) + vec2<f32>(x_1694.w, x_1694.y));
        let x_1697 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1696.x, x_1696.y, x_1697.z, x_1697.w);
        let x_1700 : f32 = u_xlat12.y;
        u_xlat9.z = x_1700;
        let x_1703 : vec4<f32> = u_xlat7;
        let x_1706 : vec4<f32> = x_594.x_MainLightShadowmapSize;
        let x_1709 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1703.x, x_1703.y, x_1703.x, x_1703.y) * vec4<f32>(x_1706.x, x_1706.y, x_1706.x, x_1706.y)) + vec4<f32>(x_1709.x, x_1709.y, x_1709.x, x_1709.z));
        let x_1713 : f32 = u_xlat10.w;
        u_xlat12.y = x_1713;
        let x_1716 : vec4<f32> = u_xlat7;
        let x_1719 : vec4<f32> = x_594.x_MainLightShadowmapSize;
        let x_1722 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1716.x, x_1716.y, x_1716.x, x_1716.y) * vec4<f32>(x_1719.x, x_1719.y, x_1719.x, x_1719.y)) + vec4<f32>(x_1722.x, x_1722.y, x_1722.z, x_1722.y));
        let x_1726 : vec4<f32> = u_xlat7;
        let x_1729 : vec4<f32> = x_594.x_MainLightShadowmapSize;
        let x_1732 : vec4<f32> = u_xlat12;
        u_xlat34 = ((vec2<f32>(x_1726.x, x_1726.y) * vec2<f32>(x_1729.x, x_1729.y)) + vec2<f32>(x_1732.w, x_1732.y));
        let x_1736 : f32 = u_xlat12.y;
        u_xlat9.w = x_1736;
        let x_1739 : vec4<f32> = u_xlat7;
        let x_1742 : vec4<f32> = x_594.x_MainLightShadowmapSize;
        let x_1745 : vec4<f32> = u_xlat9;
        u_xlat65 = ((vec2<f32>(x_1739.x, x_1739.y) * vec2<f32>(x_1742.x, x_1742.y)) + vec2<f32>(x_1745.x, x_1745.w));
        let x_1748 : vec4<f32> = u_xlat12;
        let x_1749 : vec3<f32> = vec3<f32>(x_1748.x, x_1748.z, x_1748.w);
        let x_1750 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1749.x, x_1750.y, x_1749.y, x_1749.z);
        let x_1752 : vec4<f32> = u_xlat7;
        let x_1755 : vec4<f32> = x_594.x_MainLightShadowmapSize;
        let x_1758 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1752.x, x_1752.y, x_1752.x, x_1752.y) * vec4<f32>(x_1755.x, x_1755.y, x_1755.x, x_1755.y)) + vec4<f32>(x_1758.x, x_1758.y, x_1758.z, x_1758.y));
        let x_1762 : vec4<f32> = u_xlat7;
        let x_1765 : vec4<f32> = x_594.x_MainLightShadowmapSize;
        let x_1768 : vec4<f32> = u_xlat10;
        u_xlat60 = ((vec2<f32>(x_1762.x, x_1762.y) * vec2<f32>(x_1765.x, x_1765.y)) + vec2<f32>(x_1768.w, x_1768.y));
        let x_1772 : f32 = u_xlat9.x;
        u_xlat10.x = x_1772;
        let x_1774 : vec4<f32> = u_xlat7;
        let x_1777 : vec4<f32> = x_594.x_MainLightShadowmapSize;
        let x_1780 : vec4<f32> = u_xlat10;
        let x_1782 : vec2<f32> = ((vec2<f32>(x_1774.x, x_1774.y) * vec2<f32>(x_1777.x, x_1777.y)) + vec2<f32>(x_1780.x, x_1780.y));
        let x_1783 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1782.x, x_1782.y, x_1783.z, x_1783.w);
        let x_1786 : vec4<f32> = u_xlat8;
        let x_1788 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1786.x, x_1786.x, x_1786.x, x_1786.x) * x_1788);
        let x_1791 : vec4<f32> = u_xlat8;
        let x_1793 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1791.y, x_1791.y, x_1791.y, x_1791.y) * x_1793);
        let x_1796 : vec4<f32> = u_xlat8;
        let x_1798 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1796.z, x_1796.z, x_1796.z, x_1796.z) * x_1798);
        let x_1800 : vec4<f32> = u_xlat8;
        let x_1802 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1800.w, x_1800.w, x_1800.w, x_1800.w) * x_1802);
        let x_1805 : vec4<f32> = u_xlat13;
        let x_1806 : vec2<f32> = vec2<f32>(x_1805.x, x_1805.y);
        let x_1808 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1806.x, x_1806.y, x_1808);
        let x_1815 : vec3<f32> = txVec13;
        let x_1817 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1815.xy, x_1815.z);
        u_xlat80 = x_1817;
        let x_1819 : vec4<f32> = u_xlat13;
        let x_1820 : vec2<f32> = vec2<f32>(x_1819.z, x_1819.w);
        let x_1822 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1820.x, x_1820.y, x_1822);
        let x_1829 : vec3<f32> = txVec14;
        let x_1831 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1829.xy, x_1829.z);
        u_xlat81 = x_1831;
        let x_1832 : f32 = u_xlat81;
        let x_1834 : f32 = u_xlat18.y;
        u_xlat81 = (x_1832 * x_1834);
        let x_1837 : f32 = u_xlat18.x;
        let x_1838 : f32 = u_xlat80;
        let x_1840 : f32 = u_xlat81;
        u_xlat80 = ((x_1837 * x_1838) + x_1840);
        let x_1843 : vec2<f32> = u_xlat57;
        let x_1845 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1843.x, x_1843.y, x_1845);
        let x_1852 : vec3<f32> = txVec15;
        let x_1854 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1852.xy, x_1852.z);
        u_xlat81 = x_1854;
        let x_1856 : f32 = u_xlat18.z;
        let x_1857 : f32 = u_xlat81;
        let x_1859 : f32 = u_xlat80;
        u_xlat80 = ((x_1856 * x_1857) + x_1859);
        let x_1862 : vec4<f32> = u_xlat16;
        let x_1863 : vec2<f32> = vec2<f32>(x_1862.x, x_1862.y);
        let x_1865 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1863.x, x_1863.y, x_1865);
        let x_1872 : vec3<f32> = txVec16;
        let x_1874 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1872.xy, x_1872.z);
        u_xlat81 = x_1874;
        let x_1876 : f32 = u_xlat18.w;
        let x_1877 : f32 = u_xlat81;
        let x_1879 : f32 = u_xlat80;
        u_xlat80 = ((x_1876 * x_1877) + x_1879);
        let x_1882 : vec4<f32> = u_xlat14;
        let x_1883 : vec2<f32> = vec2<f32>(x_1882.x, x_1882.y);
        let x_1885 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1883.x, x_1883.y, x_1885);
        let x_1892 : vec3<f32> = txVec17;
        let x_1894 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1892.xy, x_1892.z);
        u_xlat81 = x_1894;
        let x_1896 : f32 = u_xlat19.x;
        let x_1897 : f32 = u_xlat81;
        let x_1899 : f32 = u_xlat80;
        u_xlat80 = ((x_1896 * x_1897) + x_1899);
        let x_1902 : vec4<f32> = u_xlat14;
        let x_1903 : vec2<f32> = vec2<f32>(x_1902.z, x_1902.w);
        let x_1905 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1903.x, x_1903.y, x_1905);
        let x_1912 : vec3<f32> = txVec18;
        let x_1914 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1912.xy, x_1912.z);
        u_xlat81 = x_1914;
        let x_1916 : f32 = u_xlat19.y;
        let x_1917 : f32 = u_xlat81;
        let x_1919 : f32 = u_xlat80;
        u_xlat80 = ((x_1916 * x_1917) + x_1919);
        let x_1922 : vec4<f32> = u_xlat15;
        let x_1923 : vec2<f32> = vec2<f32>(x_1922.x, x_1922.y);
        let x_1925 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1923.x, x_1923.y, x_1925);
        let x_1932 : vec3<f32> = txVec19;
        let x_1934 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1932.xy, x_1932.z);
        u_xlat81 = x_1934;
        let x_1936 : f32 = u_xlat19.z;
        let x_1937 : f32 = u_xlat81;
        let x_1939 : f32 = u_xlat80;
        u_xlat80 = ((x_1936 * x_1937) + x_1939);
        let x_1942 : vec4<f32> = u_xlat16;
        let x_1943 : vec2<f32> = vec2<f32>(x_1942.z, x_1942.w);
        let x_1945 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1943.x, x_1943.y, x_1945);
        let x_1952 : vec3<f32> = txVec20;
        let x_1954 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1952.xy, x_1952.z);
        u_xlat81 = x_1954;
        let x_1956 : f32 = u_xlat19.w;
        let x_1957 : f32 = u_xlat81;
        let x_1959 : f32 = u_xlat80;
        u_xlat80 = ((x_1956 * x_1957) + x_1959);
        let x_1962 : vec4<f32> = u_xlat17;
        let x_1963 : vec2<f32> = vec2<f32>(x_1962.x, x_1962.y);
        let x_1965 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1963.x, x_1963.y, x_1965);
        let x_1972 : vec3<f32> = txVec21;
        let x_1974 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1972.xy, x_1972.z);
        u_xlat81 = x_1974;
        let x_1976 : f32 = u_xlat20.x;
        let x_1977 : f32 = u_xlat81;
        let x_1979 : f32 = u_xlat80;
        u_xlat80 = ((x_1976 * x_1977) + x_1979);
        let x_1982 : vec4<f32> = u_xlat17;
        let x_1983 : vec2<f32> = vec2<f32>(x_1982.z, x_1982.w);
        let x_1985 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1983.x, x_1983.y, x_1985);
        let x_1992 : vec3<f32> = txVec22;
        let x_1994 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1992.xy, x_1992.z);
        u_xlat81 = x_1994;
        let x_1996 : f32 = u_xlat20.y;
        let x_1997 : f32 = u_xlat81;
        let x_1999 : f32 = u_xlat80;
        u_xlat80 = ((x_1996 * x_1997) + x_1999);
        let x_2002 : vec2<f32> = u_xlat34;
        let x_2004 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_2002.x, x_2002.y, x_2004);
        let x_2011 : vec3<f32> = txVec23;
        let x_2013 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2011.xy, x_2011.z);
        u_xlat81 = x_2013;
        let x_2015 : f32 = u_xlat20.z;
        let x_2016 : f32 = u_xlat81;
        let x_2018 : f32 = u_xlat80;
        u_xlat80 = ((x_2015 * x_2016) + x_2018);
        let x_2021 : vec2<f32> = u_xlat65;
        let x_2023 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_2021.x, x_2021.y, x_2023);
        let x_2030 : vec3<f32> = txVec24;
        let x_2032 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2030.xy, x_2030.z);
        u_xlat81 = x_2032;
        let x_2034 : f32 = u_xlat20.w;
        let x_2035 : f32 = u_xlat81;
        let x_2037 : f32 = u_xlat80;
        u_xlat80 = ((x_2034 * x_2035) + x_2037);
        let x_2040 : vec4<f32> = u_xlat12;
        let x_2041 : vec2<f32> = vec2<f32>(x_2040.x, x_2040.y);
        let x_2043 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_2041.x, x_2041.y, x_2043);
        let x_2050 : vec3<f32> = txVec25;
        let x_2052 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2050.xy, x_2050.z);
        u_xlat81 = x_2052;
        let x_2054 : f32 = u_xlat8.x;
        let x_2055 : f32 = u_xlat81;
        let x_2057 : f32 = u_xlat80;
        u_xlat80 = ((x_2054 * x_2055) + x_2057);
        let x_2060 : vec4<f32> = u_xlat12;
        let x_2061 : vec2<f32> = vec2<f32>(x_2060.z, x_2060.w);
        let x_2063 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_2061.x, x_2061.y, x_2063);
        let x_2070 : vec3<f32> = txVec26;
        let x_2072 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2070.xy, x_2070.z);
        u_xlat81 = x_2072;
        let x_2074 : f32 = u_xlat8.y;
        let x_2075 : f32 = u_xlat81;
        let x_2077 : f32 = u_xlat80;
        u_xlat80 = ((x_2074 * x_2075) + x_2077);
        let x_2080 : vec2<f32> = u_xlat60;
        let x_2082 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_2080.x, x_2080.y, x_2082);
        let x_2089 : vec3<f32> = txVec27;
        let x_2091 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2089.xy, x_2089.z);
        u_xlat81 = x_2091;
        let x_2093 : f32 = u_xlat8.z;
        let x_2094 : f32 = u_xlat81;
        let x_2096 : f32 = u_xlat80;
        u_xlat80 = ((x_2093 * x_2094) + x_2096);
        let x_2099 : vec4<f32> = u_xlat7;
        let x_2100 : vec2<f32> = vec2<f32>(x_2099.x, x_2099.y);
        let x_2102 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_2100.x, x_2100.y, x_2102);
        let x_2109 : vec3<f32> = txVec28;
        let x_2111 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2109.xy, x_2109.z);
        u_xlat81 = x_2111;
        let x_2113 : f32 = u_xlat8.w;
        let x_2114 : f32 = u_xlat81;
        let x_2116 : f32 = u_xlat80;
        u_xlat79 = ((x_2113 * x_2114) + x_2116);
      }
    }
  } else {
    let x_2120 : vec4<f32> = u_xlat3;
    let x_2121 : vec2<f32> = vec2<f32>(x_2120.x, x_2120.y);
    let x_2123 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_2121.x, x_2121.y, x_2123);
    let x_2130 : vec3<f32> = txVec29;
    let x_2132 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2130.xy, x_2130.z);
    u_xlat79 = x_2132;
  }
  let x_2134 : f32 = x_594.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_2134) + 1.0f);
  let x_2138 : f32 = u_xlat79;
  let x_2140 : f32 = x_594.x_MainLightShadowParams.x;
  let x_2143 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2138 * x_2140) + x_2143);
  let x_2148 : f32 = u_xlat3.z;
  u_xlatb28 = (0.0f >= x_2148);
  let x_2152 : f32 = u_xlat3.z;
  u_xlatb53 = (x_2152 >= 1.0f);
  let x_2154 : bool = u_xlatb53;
  let x_2155 : bool = u_xlatb28;
  u_xlatb28 = (x_2154 | x_2155);
  let x_2157 : bool = u_xlatb28;
  if (x_2157) {
    x_2158 = 1.0f;
  } else {
    let x_2163 : f32 = u_xlat3.x;
    x_2158 = x_2163;
  }
  let x_2164 : f32 = x_2158;
  u_xlat3.x = x_2164;
  let x_2166 : vec3<f32> = vs_TEXCOORD7;
  let x_2168 : vec3<f32> = x_111.x_WorldSpaceCameraPos;
  let x_2170 : vec3<f32> = (x_2166 + -(x_2168));
  let x_2171 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2170.x, x_2170.y, x_2170.z, x_2171.w);
  let x_2174 : vec4<f32> = u_xlat7;
  let x_2176 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_2174.x, x_2174.y, x_2174.z), vec3<f32>(x_2176.x, x_2176.y, x_2176.z));
  let x_2180 : f32 = u_xlat28;
  let x_2182 : f32 = x_594.x_MainLightShadowParams.z;
  let x_2185 : f32 = x_594.x_MainLightShadowParams.w;
  u_xlat53 = ((x_2180 * x_2182) + x_2185);
  let x_2187 : f32 = u_xlat53;
  u_xlat53 = clamp(x_2187, 0.0f, 1.0f);
  let x_2190 : f32 = u_xlat3.x;
  u_xlat79 = (-(x_2190) + 1.0f);
  let x_2193 : f32 = u_xlat53;
  let x_2194 : f32 = u_xlat79;
  let x_2197 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2193 * x_2194) + x_2197);
  let x_2200 : vec3<f32> = u_xlat2;
  let x_2202 : vec4<f32> = u_xlat1;
  u_xlat53 = dot(-(x_2200), vec3<f32>(x_2202.x, x_2202.y, x_2202.z));
  let x_2205 : f32 = u_xlat53;
  let x_2206 : f32 = u_xlat53;
  u_xlat53 = (x_2205 + x_2206);
  let x_2208 : vec4<f32> = u_xlat1;
  let x_2210 : f32 = u_xlat53;
  let x_2214 : vec3<f32> = u_xlat2;
  let x_2216 : vec3<f32> = ((vec3<f32>(x_2208.x, x_2208.y, x_2208.z) * -(vec3<f32>(x_2210, x_2210, x_2210))) + -(x_2214));
  let x_2217 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2216.x, x_2216.y, x_2216.z, x_2217.w);
  let x_2219 : vec4<f32> = u_xlat1;
  let x_2221 : vec3<f32> = u_xlat2;
  u_xlat53 = dot(vec3<f32>(x_2219.x, x_2219.y, x_2219.z), x_2221);
  let x_2223 : f32 = u_xlat53;
  u_xlat53 = clamp(x_2223, 0.0f, 1.0f);
  let x_2225 : f32 = u_xlat53;
  u_xlat53 = (-(x_2225) + 1.0f);
  let x_2228 : f32 = u_xlat53;
  let x_2229 : f32 = u_xlat53;
  u_xlat53 = (x_2228 * x_2229);
  let x_2231 : f32 = u_xlat53;
  let x_2232 : f32 = u_xlat53;
  u_xlat53 = (x_2231 * x_2232);
  let x_2235 : f32 = u_xlat0.x;
  u_xlat79 = ((-(x_2235) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2242 : f32 = u_xlat0.x;
  let x_2243 : f32 = u_xlat79;
  u_xlat0.x = (x_2242 * x_2243);
  let x_2247 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2247 * 6.0f);
  let x_2259 : vec4<f32> = u_xlat7;
  let x_2262 : f32 = u_xlat0.x;
  let x_2263 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2259.x, x_2259.y, x_2259.z), x_2262);
  u_xlat7 = x_2263;
  let x_2265 : f32 = u_xlat7.w;
  u_xlat0.x = (x_2265 + -1.0f);
  let x_2269 : f32 = x_781.unity_SpecCube0_HDR.w;
  let x_2271 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2269 * x_2271) + 1.0f);
  let x_2276 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2276, 0.0f);
  let x_2280 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2280);
  let x_2284 : f32 = u_xlat0.x;
  let x_2286 : f32 = x_781.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2284 * x_2286);
  let x_2290 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2290);
  let x_2294 : f32 = u_xlat0.x;
  let x_2296 : f32 = x_781.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2294 * x_2296);
  let x_2299 : vec4<f32> = u_xlat7;
  let x_2301 : vec3<f32> = u_xlat0;
  let x_2303 : vec3<f32> = (vec3<f32>(x_2299.x, x_2299.y, x_2299.z) * vec3<f32>(x_2301.x, x_2301.x, x_2301.x));
  let x_2304 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2303.x, x_2303.y, x_2303.z, x_2304.w);
  let x_2306 : f32 = u_xlat76;
  let x_2308 : f32 = u_xlat76;
  let x_2312 : vec2<f32> = ((vec2<f32>(x_2306, x_2306) * vec2<f32>(x_2308, x_2308)) + vec2<f32>(-1.0f, 1.0f));
  let x_2313 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2312.x, x_2312.y, x_2313.z, x_2313.w);
  let x_2316 : f32 = u_xlat8.y;
  u_xlat0.x = (1.0f / x_2316);
  let x_2319 : vec4<f32> = u_xlat5;
  let x_2322 : f32 = u_xlat50;
  u_xlat33 = (-(vec3<f32>(x_2319.x, x_2319.y, x_2319.z)) + vec3<f32>(x_2322, x_2322, x_2322));
  let x_2325 : f32 = u_xlat53;
  let x_2327 : vec3<f32> = u_xlat33;
  let x_2329 : vec4<f32> = u_xlat5;
  u_xlat33 = ((vec3<f32>(x_2325, x_2325, x_2325) * x_2327) + vec3<f32>(x_2329.x, x_2329.y, x_2329.z));
  let x_2332 : vec3<f32> = u_xlat0;
  let x_2334 : vec3<f32> = u_xlat33;
  u_xlat33 = (vec3<f32>(x_2332.x, x_2332.x, x_2332.x) * x_2334);
  let x_2336 : vec4<f32> = u_xlat7;
  let x_2338 : vec3<f32> = u_xlat33;
  let x_2339 : vec3<f32> = (vec3<f32>(x_2336.x, x_2336.y, x_2336.z) * x_2338);
  let x_2340 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2339.x, x_2339.y, x_2339.z, x_2340.w);
  let x_2342 : vec4<f32> = u_xlat4;
  let x_2344 : vec4<f32> = u_xlat6;
  let x_2347 : vec4<f32> = u_xlat7;
  let x_2349 : vec3<f32> = ((vec3<f32>(x_2342.x, x_2342.y, x_2342.z) * vec3<f32>(x_2344.x, x_2344.y, x_2344.z)) + vec3<f32>(x_2347.x, x_2347.y, x_2347.z));
  let x_2350 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2349.x, x_2349.y, x_2349.z, x_2350.w);
  let x_2353 : f32 = u_xlat3.x;
  let x_2355 : f32 = x_781.unity_LightData.z;
  u_xlat0.x = (x_2353 * x_2355);
  let x_2358 : vec4<f32> = u_xlat1;
  let x_2361 : vec4<f32> = x_111.x_MainLightPosition;
  u_xlat50 = dot(vec3<f32>(x_2358.x, x_2358.y, x_2358.z), vec3<f32>(x_2361.x, x_2361.y, x_2361.z));
  let x_2364 : f32 = u_xlat50;
  u_xlat50 = clamp(x_2364, 0.0f, 1.0f);
  let x_2366 : f32 = u_xlat50;
  let x_2368 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2366 * x_2368);
  let x_2371 : vec3<f32> = u_xlat0;
  let x_2374 : vec4<f32> = x_111.x_MainLightColor;
  let x_2376 : vec3<f32> = (vec3<f32>(x_2371.x, x_2371.x, x_2371.x) * vec3<f32>(x_2374.x, x_2374.y, x_2374.z));
  let x_2377 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2376.x, x_2376.y, x_2376.z, x_2377.w);
  let x_2379 : vec3<f32> = u_xlat2;
  let x_2381 : vec4<f32> = x_111.x_MainLightPosition;
  u_xlat33 = (x_2379 + vec3<f32>(x_2381.x, x_2381.y, x_2381.z));
  let x_2384 : vec3<f32> = u_xlat33;
  let x_2385 : vec3<f32> = u_xlat33;
  u_xlat0.x = dot(x_2384, x_2385);
  let x_2389 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2389, 1.17549435e-38f);
  let x_2394 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_2394);
  let x_2397 : vec3<f32> = u_xlat0;
  let x_2399 : vec3<f32> = u_xlat33;
  u_xlat33 = (vec3<f32>(x_2397.x, x_2397.x, x_2397.x) * x_2399);
  let x_2401 : vec4<f32> = u_xlat1;
  let x_2403 : vec3<f32> = u_xlat33;
  u_xlat0.x = dot(vec3<f32>(x_2401.x, x_2401.y, x_2401.z), x_2403);
  let x_2407 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_2407, 0.0f, 1.0f);
  let x_2411 : vec4<f32> = x_111.x_MainLightPosition;
  let x_2413 : vec3<f32> = u_xlat33;
  u_xlat0.z = dot(vec3<f32>(x_2411.x, x_2411.y, x_2411.z), x_2413);
  let x_2417 : f32 = u_xlat0.z;
  u_xlat0.z = clamp(x_2417, 0.0f, 1.0f);
  let x_2420 : vec3<f32> = u_xlat0;
  let x_2422 : vec3<f32> = u_xlat0;
  let x_2424 : vec2<f32> = (vec2<f32>(x_2420.x, x_2420.z) * vec2<f32>(x_2422.x, x_2422.z));
  let x_2425 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2424.x, x_2425.y, x_2424.y);
  let x_2428 : f32 = u_xlat0.x;
  let x_2430 : f32 = u_xlat8.x;
  u_xlat0.x = ((x_2428 * x_2430) + 1.00001001358032226562f);
  let x_2436 : f32 = u_xlat0.x;
  let x_2438 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2436 * x_2438);
  let x_2442 : f32 = u_xlat0.z;
  u_xlat50 = max(x_2442, 0.10000000149011611938f);
  let x_2445 : f32 = u_xlat50;
  let x_2447 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2445 * x_2447);
  let x_2450 : f32 = u_xlat77;
  let x_2452 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2450 * x_2452);
  let x_2455 : f32 = u_xlat78;
  let x_2457 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2455 / x_2457);
  let x_2460 : vec4<f32> = u_xlat5;
  let x_2462 : vec3<f32> = u_xlat0;
  let x_2465 : vec4<f32> = u_xlat6;
  u_xlat33 = ((vec3<f32>(x_2460.x, x_2460.y, x_2460.z) * vec3<f32>(x_2462.x, x_2462.x, x_2462.x)) + vec3<f32>(x_2465.x, x_2465.y, x_2465.z));
  let x_2468 : vec4<f32> = u_xlat7;
  let x_2470 : vec3<f32> = u_xlat33;
  let x_2471 : vec3<f32> = (vec3<f32>(x_2468.x, x_2468.y, x_2468.z) * x_2470);
  let x_2472 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2471.x, x_2471.y, x_2471.z, x_2472.w);
  let x_2475 : f32 = x_111.x_AdditionalLightsCount.x;
  let x_2477 : f32 = x_781.unity_LightData.y;
  u_xlat0.x = min(x_2475, x_2477);
  let x_2482 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_2482));
  let x_2485 : f32 = u_xlat28;
  let x_2487 : f32 = x_594.x_AdditionalShadowFadeParams.x;
  let x_2490 : f32 = x_594.x_AdditionalShadowFadeParams.y;
  u_xlat50 = ((x_2485 * x_2487) + x_2490);
  let x_2492 : f32 = u_xlat50;
  u_xlat50 = clamp(x_2492, 0.0f, 1.0f);
  u_xlat3.x = 0.0f;
  u_xlat3.y = 0.0f;
  u_xlat3.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2504 : u32 = u_xlatu_loop_1;
    let x_2505 : u32 = u_xlatu0;
    if ((x_2504 < x_2505)) {
    } else {
      break;
    }
    let x_2508 : u32 = u_xlatu_loop_1;
    u_xlatu79 = (x_2508 >> 2u);
    let x_2511 : u32 = u_xlatu_loop_1;
    u_xlati80 = bitcast<i32>((x_2511 & 3u));
    let x_2514 : u32 = u_xlatu79;
    let x_2517 : vec4<f32> = x_781.unity_LightIndices[bitcast<i32>(x_2514)];
    let x_2527 : i32 = u_xlati80;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2532 : vec4<u32> = indexable[x_2527];
    u_xlat79 = dot(x_2517, bitcast<vec4<f32>>(x_2532));
    let x_2536 : f32 = u_xlat79;
    u_xlati79 = i32(x_2536);
    let x_2538 : vec3<f32> = vs_TEXCOORD7;
    let x_2549 : i32 = u_xlati79;
    let x_2551 : vec4<f32> = x_2548.x_AdditionalLightsPosition[x_2549];
    let x_2554 : i32 = u_xlati79;
    let x_2556 : vec4<f32> = x_2548.x_AdditionalLightsPosition[x_2554];
    u_xlat33 = ((-(x_2538) * vec3<f32>(x_2551.w, x_2551.w, x_2551.w)) + vec3<f32>(x_2556.x, x_2556.y, x_2556.z));
    let x_2559 : vec3<f32> = u_xlat33;
    let x_2560 : vec3<f32> = u_xlat33;
    u_xlat80 = dot(x_2559, x_2560);
    let x_2562 : f32 = u_xlat80;
    u_xlat80 = max(x_2562, 0.00006103515625f);
    let x_2564 : f32 = u_xlat80;
    u_xlat81 = inverseSqrt(x_2564);
    let x_2566 : f32 = u_xlat81;
    let x_2568 : vec3<f32> = u_xlat33;
    let x_2569 : vec3<f32> = (vec3<f32>(x_2566, x_2566, x_2566) * x_2568);
    let x_2570 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2569.x, x_2569.y, x_2569.z, x_2570.w);
    let x_2573 : f32 = u_xlat80;
    u_xlat82 = (1.0f / x_2573);
    let x_2575 : f32 = u_xlat80;
    let x_2576 : i32 = u_xlati79;
    let x_2578 : f32 = x_2548.x_AdditionalLightsAttenuation[x_2576].x;
    u_xlat80 = (x_2575 * x_2578);
    let x_2580 : f32 = u_xlat80;
    let x_2582 : f32 = u_xlat80;
    u_xlat80 = ((-(x_2580) * x_2582) + 1.0f);
    let x_2585 : f32 = u_xlat80;
    u_xlat80 = max(x_2585, 0.0f);
    let x_2587 : f32 = u_xlat80;
    let x_2588 : f32 = u_xlat80;
    u_xlat80 = (x_2587 * x_2588);
    let x_2590 : f32 = u_xlat80;
    let x_2591 : f32 = u_xlat82;
    u_xlat80 = (x_2590 * x_2591);
    let x_2593 : i32 = u_xlati79;
    let x_2595 : vec4<f32> = x_2548.x_AdditionalLightsSpotDir[x_2593];
    let x_2597 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_2595.x, x_2595.y, x_2595.z), vec3<f32>(x_2597.x, x_2597.y, x_2597.z));
    let x_2600 : f32 = u_xlat82;
    let x_2601 : i32 = u_xlati79;
    let x_2603 : f32 = x_2548.x_AdditionalLightsAttenuation[x_2601].z;
    let x_2605 : i32 = u_xlati79;
    let x_2607 : f32 = x_2548.x_AdditionalLightsAttenuation[x_2605].w;
    u_xlat82 = ((x_2600 * x_2603) + x_2607);
    let x_2609 : f32 = u_xlat82;
    u_xlat82 = clamp(x_2609, 0.0f, 1.0f);
    let x_2611 : f32 = u_xlat82;
    let x_2612 : f32 = u_xlat82;
    u_xlat82 = (x_2611 * x_2612);
    let x_2614 : f32 = u_xlat80;
    let x_2615 : f32 = u_xlat82;
    u_xlat80 = (x_2614 * x_2615);
    let x_2618 : i32 = u_xlati79;
    let x_2620 : f32 = x_594.x_AdditionalShadowParams[x_2618].w;
    u_xlati82 = i32(x_2620);
    let x_2623 : i32 = u_xlati82;
    u_xlatb84 = (x_2623 >= 0i);
    let x_2625 : bool = u_xlatb84;
    if (x_2625) {
      let x_2629 : i32 = u_xlati79;
      let x_2631 : f32 = x_594.x_AdditionalShadowParams[x_2629].z;
      u_xlatb84 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2631, x_2631, x_2631, x_2631))));
      let x_2635 : bool = u_xlatb84;
      if (x_2635) {
        let x_2639 : vec4<f32> = u_xlat9;
        let x_2642 : vec4<f32> = u_xlat9;
        let x_2645 : vec4<bool> = (abs(vec4<f32>(x_2639.z, x_2639.z, x_2639.y, x_2639.z)) >= abs(vec4<f32>(x_2642.x, x_2642.y, x_2642.x, x_2642.x)));
        let x_2647 : vec3<bool> = vec3<bool>(x_2645.x, x_2645.y, x_2645.z);
        let x_2648 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_2647.x, x_2647.y, x_2647.z, x_2648.w);
        let x_2651 : bool = u_xlatb10.y;
        let x_2653 : bool = u_xlatb10.x;
        u_xlatb84 = (x_2651 & x_2653);
        let x_2655 : vec4<f32> = u_xlat9;
        let x_2658 : vec4<bool> = (-(vec4<f32>(x_2655.z, x_2655.y, x_2655.z, x_2655.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2659 : vec3<bool> = vec3<bool>(x_2658.x, x_2658.y, x_2658.w);
        let x_2660 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_2659.x, x_2659.y, x_2660.z, x_2659.z);
        let x_2663 : bool = u_xlatb10.x;
        u_xlat10.x = select(4.0f, 5.0f, x_2663);
        let x_2668 : bool = u_xlatb10.y;
        u_xlat10.y = select(2.0f, 3.0f, x_2668);
        let x_2673 : bool = u_xlatb10.w;
        u_xlat85 = select(0.0f, 1.0f, x_2673);
        let x_2677 : bool = u_xlatb10.z;
        if (x_2677) {
          let x_2682 : f32 = u_xlat10.y;
          x_2678 = x_2682;
        } else {
          let x_2684 : f32 = u_xlat85;
          x_2678 = x_2684;
        }
        let x_2685 : f32 = x_2678;
        u_xlat35 = x_2685;
        let x_2687 : bool = u_xlatb84;
        if (x_2687) {
          let x_2692 : f32 = u_xlat10.x;
          x_2688 = x_2692;
        } else {
          let x_2694 : f32 = u_xlat35;
          x_2688 = x_2694;
        }
        let x_2695 : f32 = x_2688;
        u_xlat84 = x_2695;
        let x_2696 : i32 = u_xlati79;
        let x_2698 : f32 = x_594.x_AdditionalShadowParams[x_2696].w;
        u_xlat10.x = trunc(x_2698);
        let x_2701 : f32 = u_xlat84;
        let x_2703 : f32 = u_xlat10.x;
        u_xlat84 = (x_2701 + x_2703);
        let x_2705 : f32 = u_xlat84;
        u_xlati82 = i32(x_2705);
      }
      let x_2707 : i32 = u_xlati82;
      u_xlati82 = (x_2707 << bitcast<u32>(2i));
      let x_2709 : vec3<f32> = vs_TEXCOORD7;
      let x_2711 : i32 = u_xlati82;
      let x_2714 : i32 = u_xlati82;
      let x_2718 : vec4<f32> = x_594.x_AdditionalLightsWorldToShadow[((x_2711 + 1i) / 4i)][((x_2714 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_2709.y, x_2709.y, x_2709.y, x_2709.y) * x_2718);
      let x_2720 : i32 = u_xlati82;
      let x_2722 : i32 = u_xlati82;
      let x_2725 : vec4<f32> = x_594.x_AdditionalLightsWorldToShadow[(x_2720 / 4i)][(x_2722 % 4i)];
      let x_2726 : vec3<f32> = vs_TEXCOORD7;
      let x_2729 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2725 * vec4<f32>(x_2726.x, x_2726.x, x_2726.x, x_2726.x)) + x_2729);
      let x_2731 : i32 = u_xlati82;
      let x_2734 : i32 = u_xlati82;
      let x_2738 : vec4<f32> = x_594.x_AdditionalLightsWorldToShadow[((x_2731 + 2i) / 4i)][((x_2734 + 2i) % 4i)];
      let x_2739 : vec3<f32> = vs_TEXCOORD7;
      let x_2742 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2738 * vec4<f32>(x_2739.z, x_2739.z, x_2739.z, x_2739.z)) + x_2742);
      let x_2744 : vec4<f32> = u_xlat10;
      let x_2745 : i32 = u_xlati82;
      let x_2748 : i32 = u_xlati82;
      let x_2752 : vec4<f32> = x_594.x_AdditionalLightsWorldToShadow[((x_2745 + 3i) / 4i)][((x_2748 + 3i) % 4i)];
      u_xlat10 = (x_2744 + x_2752);
      let x_2754 : vec4<f32> = u_xlat10;
      let x_2756 : vec4<f32> = u_xlat10;
      let x_2758 : vec3<f32> = (vec3<f32>(x_2754.x, x_2754.y, x_2754.z) / vec3<f32>(x_2756.w, x_2756.w, x_2756.w));
      let x_2759 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2758.x, x_2758.y, x_2758.z, x_2759.w);
      let x_2762 : i32 = u_xlati79;
      let x_2764 : f32 = x_594.x_AdditionalShadowParams[x_2762].y;
      u_xlatb82 = (0.0f < x_2764);
      let x_2766 : bool = u_xlatb82;
      if (x_2766) {
        let x_2769 : i32 = u_xlati79;
        let x_2771 : f32 = x_594.x_AdditionalShadowParams[x_2769].y;
        u_xlatb82 = (1.0f == x_2771);
        let x_2773 : bool = u_xlatb82;
        if (x_2773) {
          let x_2776 : vec4<f32> = u_xlat10;
          let x_2779 : vec4<f32> = x_594.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2776.x, x_2776.y, x_2776.x, x_2776.y) + x_2779);
          let x_2782 : vec4<f32> = u_xlat11;
          let x_2783 : vec2<f32> = vec2<f32>(x_2782.x, x_2782.y);
          let x_2785 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2783.x, x_2783.y, x_2785);
          let x_2793 : vec3<f32> = txVec30;
          let x_2795 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2793.xy, x_2793.z);
          u_xlat12.x = x_2795;
          let x_2798 : vec4<f32> = u_xlat11;
          let x_2799 : vec2<f32> = vec2<f32>(x_2798.z, x_2798.w);
          let x_2801 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_2799.x, x_2799.y, x_2801);
          let x_2808 : vec3<f32> = txVec31;
          let x_2810 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2808.xy, x_2808.z);
          u_xlat12.y = x_2810;
          let x_2812 : vec4<f32> = u_xlat10;
          let x_2815 : vec4<f32> = x_594.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_2812.x, x_2812.y, x_2812.x, x_2812.y) + x_2815);
          let x_2818 : vec4<f32> = u_xlat11;
          let x_2819 : vec2<f32> = vec2<f32>(x_2818.x, x_2818.y);
          let x_2821 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_2819.x, x_2819.y, x_2821);
          let x_2828 : vec3<f32> = txVec32;
          let x_2830 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2828.xy, x_2828.z);
          u_xlat12.z = x_2830;
          let x_2833 : vec4<f32> = u_xlat11;
          let x_2834 : vec2<f32> = vec2<f32>(x_2833.z, x_2833.w);
          let x_2836 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_2834.x, x_2834.y, x_2836);
          let x_2843 : vec3<f32> = txVec33;
          let x_2845 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2843.xy, x_2843.z);
          u_xlat12.w = x_2845;
          let x_2847 : vec4<f32> = u_xlat12;
          u_xlat82 = dot(x_2847, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2850 : i32 = u_xlati79;
          let x_2852 : f32 = x_594.x_AdditionalShadowParams[x_2850].y;
          u_xlatb84 = (2.0f == x_2852);
          let x_2854 : bool = u_xlatb84;
          if (x_2854) {
            let x_2857 : vec4<f32> = u_xlat10;
            let x_2860 : vec4<f32> = x_594.x_AdditionalShadowmapSize;
            let x_2863 : vec2<f32> = ((vec2<f32>(x_2857.x, x_2857.y) * vec2<f32>(x_2860.z, x_2860.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2864 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2863.x, x_2863.y, x_2864.z, x_2864.w);
            let x_2866 : vec4<f32> = u_xlat11;
            let x_2868 : vec2<f32> = floor(vec2<f32>(x_2866.x, x_2866.y));
            let x_2869 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2868.x, x_2868.y, x_2869.z, x_2869.w);
            let x_2872 : vec4<f32> = u_xlat10;
            let x_2875 : vec4<f32> = x_594.x_AdditionalShadowmapSize;
            let x_2878 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2872.x, x_2872.y) * vec2<f32>(x_2875.z, x_2875.w)) + -(vec2<f32>(x_2878.x, x_2878.y)));
            let x_2882 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2882.x, x_2882.x, x_2882.y, x_2882.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2885 : vec4<f32> = u_xlat12;
            let x_2887 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2885.x, x_2885.x, x_2885.z, x_2885.z) * vec4<f32>(x_2887.x, x_2887.x, x_2887.z, x_2887.z));
            let x_2890 : vec4<f32> = u_xlat13;
            let x_2892 : vec2<f32> = (vec2<f32>(x_2890.y, x_2890.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2893 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2892.x, x_2893.y, x_2892.y, x_2893.w);
            let x_2895 : vec4<f32> = u_xlat13;
            let x_2898 : vec2<f32> = u_xlat61;
            let x_2900 : vec2<f32> = ((vec2<f32>(x_2895.x, x_2895.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2898));
            let x_2901 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2900.x, x_2900.y, x_2901.z, x_2901.w);
            let x_2904 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_2904) + vec2<f32>(1.0f, 1.0f));
            let x_2907 : vec2<f32> = u_xlat61;
            let x_2908 : vec2<f32> = min(x_2907, vec2<f32>(0.0f, 0.0f));
            let x_2909 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2908.x, x_2908.y, x_2909.z, x_2909.w);
            let x_2911 : vec4<f32> = u_xlat14;
            let x_2914 : vec4<f32> = u_xlat14;
            let x_2917 : vec2<f32> = u_xlat63;
            let x_2918 : vec2<f32> = ((-(vec2<f32>(x_2911.x, x_2911.y)) * vec2<f32>(x_2914.x, x_2914.y)) + x_2917);
            let x_2919 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2918.x, x_2918.y, x_2919.z, x_2919.w);
            let x_2921 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_2921, vec2<f32>(0.0f, 0.0f));
            let x_2923 : vec2<f32> = u_xlat61;
            let x_2925 : vec2<f32> = u_xlat61;
            let x_2927 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_2923) * x_2925) + vec2<f32>(x_2927.y, x_2927.w));
            let x_2930 : vec4<f32> = u_xlat14;
            let x_2932 : vec2<f32> = (vec2<f32>(x_2930.x, x_2930.y) + vec2<f32>(1.0f, 1.0f));
            let x_2933 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2932.x, x_2932.y, x_2933.z, x_2933.w);
            let x_2935 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_2935 + vec2<f32>(1.0f, 1.0f));
            let x_2937 : vec4<f32> = u_xlat13;
            let x_2939 : vec2<f32> = (vec2<f32>(x_2937.x, x_2937.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2940 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2939.x, x_2939.y, x_2940.z, x_2940.w);
            let x_2942 : vec2<f32> = u_xlat63;
            let x_2943 : vec2<f32> = (x_2942 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2944 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2943.x, x_2943.y, x_2944.z, x_2944.w);
            let x_2946 : vec4<f32> = u_xlat14;
            let x_2948 : vec2<f32> = (vec2<f32>(x_2946.x, x_2946.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2949 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2948.x, x_2948.y, x_2949.z, x_2949.w);
            let x_2951 : vec2<f32> = u_xlat61;
            let x_2952 : vec2<f32> = (x_2951 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2953 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2952.x, x_2952.y, x_2953.z, x_2953.w);
            let x_2955 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_2955.y, x_2955.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2959 : f32 = u_xlat14.x;
            u_xlat15.z = x_2959;
            let x_2962 : f32 = u_xlat61.x;
            u_xlat15.w = x_2962;
            let x_2965 : f32 = u_xlat16.x;
            u_xlat13.z = x_2965;
            let x_2968 : f32 = u_xlat12.x;
            u_xlat13.w = x_2968;
            let x_2970 : vec4<f32> = u_xlat13;
            let x_2972 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2970.z, x_2970.w, x_2970.x, x_2970.z) + vec4<f32>(x_2972.z, x_2972.w, x_2972.x, x_2972.z));
            let x_2976 : f32 = u_xlat15.y;
            u_xlat14.z = x_2976;
            let x_2979 : f32 = u_xlat61.y;
            u_xlat14.w = x_2979;
            let x_2982 : f32 = u_xlat13.y;
            u_xlat16.z = x_2982;
            let x_2985 : f32 = u_xlat12.z;
            u_xlat16.w = x_2985;
            let x_2987 : vec4<f32> = u_xlat14;
            let x_2989 : vec4<f32> = u_xlat16;
            let x_2991 : vec3<f32> = (vec3<f32>(x_2987.z, x_2987.y, x_2987.w) + vec3<f32>(x_2989.z, x_2989.y, x_2989.w));
            let x_2992 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2991.x, x_2991.y, x_2991.z, x_2992.w);
            let x_2994 : vec4<f32> = u_xlat13;
            let x_2996 : vec4<f32> = u_xlat17;
            let x_2998 : vec3<f32> = (vec3<f32>(x_2994.x, x_2994.z, x_2994.w) / vec3<f32>(x_2996.z, x_2996.w, x_2996.y));
            let x_2999 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2998.x, x_2998.y, x_2998.z, x_2999.w);
            let x_3001 : vec4<f32> = u_xlat13;
            let x_3003 : vec3<f32> = (vec3<f32>(x_3001.x, x_3001.y, x_3001.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3004 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3003.x, x_3003.y, x_3003.z, x_3004.w);
            let x_3006 : vec4<f32> = u_xlat16;
            let x_3008 : vec4<f32> = u_xlat12;
            let x_3010 : vec3<f32> = (vec3<f32>(x_3006.z, x_3006.y, x_3006.w) / vec3<f32>(x_3008.x, x_3008.y, x_3008.z));
            let x_3011 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3010.x, x_3010.y, x_3010.z, x_3011.w);
            let x_3013 : vec4<f32> = u_xlat14;
            let x_3015 : vec3<f32> = (vec3<f32>(x_3013.x, x_3013.y, x_3013.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3016 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3015.x, x_3015.y, x_3015.z, x_3016.w);
            let x_3018 : vec4<f32> = u_xlat13;
            let x_3021 : vec4<f32> = x_594.x_AdditionalShadowmapSize;
            let x_3023 : vec3<f32> = (vec3<f32>(x_3018.y, x_3018.x, x_3018.z) * vec3<f32>(x_3021.x, x_3021.x, x_3021.x));
            let x_3024 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3023.x, x_3023.y, x_3023.z, x_3024.w);
            let x_3026 : vec4<f32> = u_xlat14;
            let x_3029 : vec4<f32> = x_594.x_AdditionalShadowmapSize;
            let x_3031 : vec3<f32> = (vec3<f32>(x_3026.x, x_3026.y, x_3026.z) * vec3<f32>(x_3029.y, x_3029.y, x_3029.y));
            let x_3032 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3031.x, x_3031.y, x_3031.z, x_3032.w);
            let x_3035 : f32 = u_xlat14.x;
            u_xlat13.w = x_3035;
            let x_3037 : vec4<f32> = u_xlat11;
            let x_3040 : vec4<f32> = x_594.x_AdditionalShadowmapSize;
            let x_3043 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_3037.x, x_3037.y, x_3037.x, x_3037.y) * vec4<f32>(x_3040.x, x_3040.y, x_3040.x, x_3040.y)) + vec4<f32>(x_3043.y, x_3043.w, x_3043.x, x_3043.w));
            let x_3046 : vec4<f32> = u_xlat11;
            let x_3049 : vec4<f32> = x_594.x_AdditionalShadowmapSize;
            let x_3052 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_3046.x, x_3046.y) * vec2<f32>(x_3049.x, x_3049.y)) + vec2<f32>(x_3052.z, x_3052.w));
            let x_3056 : f32 = u_xlat13.y;
            u_xlat14.w = x_3056;
            let x_3058 : vec4<f32> = u_xlat14;
            let x_3059 : vec2<f32> = vec2<f32>(x_3058.y, x_3058.z);
            let x_3060 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3060.x, x_3059.x, x_3060.z, x_3059.y);
            let x_3062 : vec4<f32> = u_xlat11;
            let x_3065 : vec4<f32> = x_594.x_AdditionalShadowmapSize;
            let x_3068 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_3062.x, x_3062.y, x_3062.x, x_3062.y) * vec4<f32>(x_3065.x, x_3065.y, x_3065.x, x_3065.y)) + vec4<f32>(x_3068.x, x_3068.y, x_3068.z, x_3068.y));
            let x_3071 : vec4<f32> = u_xlat11;
            let x_3074 : vec4<f32> = x_594.x_AdditionalShadowmapSize;
            let x_3077 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3071.x, x_3071.y, x_3071.x, x_3071.y) * vec4<f32>(x_3074.x, x_3074.y, x_3074.x, x_3074.y)) + vec4<f32>(x_3077.w, x_3077.y, x_3077.w, x_3077.z));
            let x_3080 : vec4<f32> = u_xlat11;
            let x_3083 : vec4<f32> = x_594.x_AdditionalShadowmapSize;
            let x_3086 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_3080.x, x_3080.y, x_3080.x, x_3080.y) * vec4<f32>(x_3083.x, x_3083.y, x_3083.x, x_3083.y)) + vec4<f32>(x_3086.x, x_3086.w, x_3086.z, x_3086.w));
            let x_3089 : vec4<f32> = u_xlat12;
            let x_3091 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_3089.x, x_3089.x, x_3089.x, x_3089.y) * vec4<f32>(x_3091.z, x_3091.w, x_3091.y, x_3091.z));
            let x_3094 : vec4<f32> = u_xlat12;
            let x_3096 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_3094.y, x_3094.y, x_3094.z, x_3094.z) * x_3096);
            let x_3099 : f32 = u_xlat12.z;
            let x_3101 : f32 = u_xlat17.y;
            u_xlat84 = (x_3099 * x_3101);
            let x_3104 : vec4<f32> = u_xlat15;
            let x_3105 : vec2<f32> = vec2<f32>(x_3104.x, x_3104.y);
            let x_3107 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_3105.x, x_3105.y, x_3107);
            let x_3114 : vec3<f32> = txVec34;
            let x_3116 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3114.xy, x_3114.z);
            u_xlat85 = x_3116;
            let x_3118 : vec4<f32> = u_xlat15;
            let x_3119 : vec2<f32> = vec2<f32>(x_3118.z, x_3118.w);
            let x_3121 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_3119.x, x_3119.y, x_3121);
            let x_3128 : vec3<f32> = txVec35;
            let x_3130 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3128.xy, x_3128.z);
            u_xlat11.x = x_3130;
            let x_3133 : f32 = u_xlat11.x;
            let x_3135 : f32 = u_xlat18.y;
            u_xlat11.x = (x_3133 * x_3135);
            let x_3139 : f32 = u_xlat18.x;
            let x_3140 : f32 = u_xlat85;
            let x_3143 : f32 = u_xlat11.x;
            u_xlat85 = ((x_3139 * x_3140) + x_3143);
            let x_3146 : vec2<f32> = u_xlat61;
            let x_3148 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_3146.x, x_3146.y, x_3148);
            let x_3155 : vec3<f32> = txVec36;
            let x_3157 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3155.xy, x_3155.z);
            u_xlat11.x = x_3157;
            let x_3160 : f32 = u_xlat18.z;
            let x_3162 : f32 = u_xlat11.x;
            let x_3164 : f32 = u_xlat85;
            u_xlat85 = ((x_3160 * x_3162) + x_3164);
            let x_3167 : vec4<f32> = u_xlat14;
            let x_3168 : vec2<f32> = vec2<f32>(x_3167.x, x_3167.y);
            let x_3170 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_3168.x, x_3168.y, x_3170);
            let x_3177 : vec3<f32> = txVec37;
            let x_3179 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3177.xy, x_3177.z);
            u_xlat11.x = x_3179;
            let x_3182 : f32 = u_xlat18.w;
            let x_3184 : f32 = u_xlat11.x;
            let x_3186 : f32 = u_xlat85;
            u_xlat85 = ((x_3182 * x_3184) + x_3186);
            let x_3189 : vec4<f32> = u_xlat16;
            let x_3190 : vec2<f32> = vec2<f32>(x_3189.x, x_3189.y);
            let x_3192 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_3190.x, x_3190.y, x_3192);
            let x_3199 : vec3<f32> = txVec38;
            let x_3201 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3199.xy, x_3199.z);
            u_xlat11.x = x_3201;
            let x_3204 : f32 = u_xlat19.x;
            let x_3206 : f32 = u_xlat11.x;
            let x_3208 : f32 = u_xlat85;
            u_xlat85 = ((x_3204 * x_3206) + x_3208);
            let x_3211 : vec4<f32> = u_xlat16;
            let x_3212 : vec2<f32> = vec2<f32>(x_3211.z, x_3211.w);
            let x_3214 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_3212.x, x_3212.y, x_3214);
            let x_3221 : vec3<f32> = txVec39;
            let x_3223 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3221.xy, x_3221.z);
            u_xlat11.x = x_3223;
            let x_3226 : f32 = u_xlat19.y;
            let x_3228 : f32 = u_xlat11.x;
            let x_3230 : f32 = u_xlat85;
            u_xlat85 = ((x_3226 * x_3228) + x_3230);
            let x_3233 : vec4<f32> = u_xlat14;
            let x_3234 : vec2<f32> = vec2<f32>(x_3233.z, x_3233.w);
            let x_3236 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_3234.x, x_3234.y, x_3236);
            let x_3243 : vec3<f32> = txVec40;
            let x_3245 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3243.xy, x_3243.z);
            u_xlat11.x = x_3245;
            let x_3248 : f32 = u_xlat19.z;
            let x_3250 : f32 = u_xlat11.x;
            let x_3252 : f32 = u_xlat85;
            u_xlat85 = ((x_3248 * x_3250) + x_3252);
            let x_3255 : vec4<f32> = u_xlat13;
            let x_3256 : vec2<f32> = vec2<f32>(x_3255.x, x_3255.y);
            let x_3258 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_3256.x, x_3256.y, x_3258);
            let x_3265 : vec3<f32> = txVec41;
            let x_3267 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3265.xy, x_3265.z);
            u_xlat11.x = x_3267;
            let x_3270 : f32 = u_xlat19.w;
            let x_3272 : f32 = u_xlat11.x;
            let x_3274 : f32 = u_xlat85;
            u_xlat85 = ((x_3270 * x_3272) + x_3274);
            let x_3277 : vec4<f32> = u_xlat13;
            let x_3278 : vec2<f32> = vec2<f32>(x_3277.z, x_3277.w);
            let x_3280 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_3278.x, x_3278.y, x_3280);
            let x_3287 : vec3<f32> = txVec42;
            let x_3289 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3287.xy, x_3287.z);
            u_xlat11.x = x_3289;
            let x_3291 : f32 = u_xlat84;
            let x_3293 : f32 = u_xlat11.x;
            let x_3295 : f32 = u_xlat85;
            u_xlat82 = ((x_3291 * x_3293) + x_3295);
          } else {
            let x_3298 : vec4<f32> = u_xlat10;
            let x_3301 : vec4<f32> = x_594.x_AdditionalShadowmapSize;
            let x_3304 : vec2<f32> = ((vec2<f32>(x_3298.x, x_3298.y) * vec2<f32>(x_3301.z, x_3301.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3305 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3304.x, x_3304.y, x_3305.z, x_3305.w);
            let x_3307 : vec4<f32> = u_xlat11;
            let x_3309 : vec2<f32> = floor(vec2<f32>(x_3307.x, x_3307.y));
            let x_3310 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3309.x, x_3309.y, x_3310.z, x_3310.w);
            let x_3312 : vec4<f32> = u_xlat10;
            let x_3315 : vec4<f32> = x_594.x_AdditionalShadowmapSize;
            let x_3318 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3312.x, x_3312.y) * vec2<f32>(x_3315.z, x_3315.w)) + -(vec2<f32>(x_3318.x, x_3318.y)));
            let x_3322 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3322.x, x_3322.x, x_3322.y, x_3322.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3325 : vec4<f32> = u_xlat12;
            let x_3327 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3325.x, x_3325.x, x_3325.z, x_3325.z) * vec4<f32>(x_3327.x, x_3327.x, x_3327.z, x_3327.z));
            let x_3330 : vec4<f32> = u_xlat13;
            let x_3332 : vec2<f32> = (vec2<f32>(x_3330.y, x_3330.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3333 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3333.x, x_3332.x, x_3333.z, x_3332.y);
            let x_3335 : vec4<f32> = u_xlat13;
            let x_3338 : vec2<f32> = u_xlat61;
            let x_3340 : vec2<f32> = ((vec2<f32>(x_3335.x, x_3335.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3338));
            let x_3341 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3340.x, x_3341.y, x_3340.y, x_3341.w);
            let x_3343 : vec2<f32> = u_xlat61;
            let x_3345 : vec2<f32> = (-(x_3343) + vec2<f32>(1.0f, 1.0f));
            let x_3346 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3345.x, x_3345.y, x_3346.z, x_3346.w);
            let x_3348 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_3348, vec2<f32>(0.0f, 0.0f));
            let x_3350 : vec2<f32> = u_xlat63;
            let x_3352 : vec2<f32> = u_xlat63;
            let x_3354 : vec4<f32> = u_xlat13;
            let x_3356 : vec2<f32> = ((-(x_3350) * x_3352) + vec2<f32>(x_3354.x, x_3354.y));
            let x_3357 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3356.x, x_3356.y, x_3357.z, x_3357.w);
            let x_3359 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_3359, vec2<f32>(0.0f, 0.0f));
            let x_3362 : vec2<f32> = u_xlat63;
            let x_3364 : vec2<f32> = u_xlat63;
            let x_3366 : vec4<f32> = u_xlat12;
            let x_3368 : vec2<f32> = ((-(x_3362) * x_3364) + vec2<f32>(x_3366.y, x_3366.w));
            let x_3369 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_3368.x, x_3369.y, x_3368.y);
            let x_3371 : vec4<f32> = u_xlat13;
            let x_3373 : vec2<f32> = (vec2<f32>(x_3371.x, x_3371.y) + vec2<f32>(2.0f, 2.0f));
            let x_3374 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3373.x, x_3373.y, x_3374.z, x_3374.w);
            let x_3376 : vec3<f32> = u_xlat37;
            let x_3378 : vec2<f32> = (vec2<f32>(x_3376.x, x_3376.z) + vec2<f32>(2.0f, 2.0f));
            let x_3379 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3379.x, x_3378.x, x_3379.z, x_3378.y);
            let x_3382 : f32 = u_xlat12.y;
            u_xlat15.z = (x_3382 * 0.08163200318813323975f);
            let x_3385 : vec4<f32> = u_xlat12;
            let x_3387 : vec3<f32> = (vec3<f32>(x_3385.z, x_3385.x, x_3385.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3388 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3387.x, x_3387.y, x_3387.z, x_3388.w);
            let x_3390 : vec4<f32> = u_xlat13;
            let x_3392 : vec2<f32> = (vec2<f32>(x_3390.x, x_3390.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3393 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3392.x, x_3392.y, x_3393.z, x_3393.w);
            let x_3396 : f32 = u_xlat16.y;
            u_xlat15.x = x_3396;
            let x_3398 : vec2<f32> = u_xlat61;
            let x_3401 : vec2<f32> = ((vec2<f32>(x_3398.x, x_3398.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3402 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3402.x, x_3401.x, x_3402.z, x_3401.y);
            let x_3404 : vec2<f32> = u_xlat61;
            let x_3407 : vec2<f32> = ((vec2<f32>(x_3404.x, x_3404.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3408 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3407.x, x_3408.y, x_3407.y, x_3408.w);
            let x_3411 : f32 = u_xlat12.x;
            u_xlat13.y = x_3411;
            let x_3414 : f32 = u_xlat14.y;
            u_xlat13.w = x_3414;
            let x_3416 : vec4<f32> = u_xlat13;
            let x_3417 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3416 + x_3417);
            let x_3419 : vec2<f32> = u_xlat61;
            let x_3422 : vec2<f32> = ((vec2<f32>(x_3419.y, x_3419.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3423 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3423.x, x_3422.x, x_3423.z, x_3422.y);
            let x_3425 : vec2<f32> = u_xlat61;
            let x_3428 : vec2<f32> = ((vec2<f32>(x_3425.y, x_3425.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3429 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3428.x, x_3429.y, x_3428.y, x_3429.w);
            let x_3432 : f32 = u_xlat12.y;
            u_xlat14.y = x_3432;
            let x_3434 : vec4<f32> = u_xlat14;
            let x_3435 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_3434 + x_3435);
            let x_3437 : vec4<f32> = u_xlat13;
            let x_3438 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_3437 / x_3438);
            let x_3440 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3440 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3442 : vec4<f32> = u_xlat14;
            let x_3443 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_3442 / x_3443);
            let x_3445 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3445 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3447 : vec4<f32> = u_xlat13;
            let x_3450 : vec4<f32> = x_594.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3447.w, x_3447.x, x_3447.y, x_3447.z) * vec4<f32>(x_3450.x, x_3450.x, x_3450.x, x_3450.x));
            let x_3453 : vec4<f32> = u_xlat14;
            let x_3456 : vec4<f32> = x_594.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3453.x, x_3453.w, x_3453.y, x_3453.z) * vec4<f32>(x_3456.y, x_3456.y, x_3456.y, x_3456.y));
            let x_3459 : vec4<f32> = u_xlat13;
            let x_3460 : vec3<f32> = vec3<f32>(x_3459.y, x_3459.z, x_3459.w);
            let x_3461 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3460.x, x_3461.y, x_3460.y, x_3460.z);
            let x_3464 : f32 = u_xlat14.x;
            u_xlat16.y = x_3464;
            let x_3466 : vec4<f32> = u_xlat11;
            let x_3469 : vec4<f32> = x_594.x_AdditionalShadowmapSize;
            let x_3472 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3466.x, x_3466.y, x_3466.x, x_3466.y) * vec4<f32>(x_3469.x, x_3469.y, x_3469.x, x_3469.y)) + vec4<f32>(x_3472.x, x_3472.y, x_3472.z, x_3472.y));
            let x_3475 : vec4<f32> = u_xlat11;
            let x_3478 : vec4<f32> = x_594.x_AdditionalShadowmapSize;
            let x_3481 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_3475.x, x_3475.y) * vec2<f32>(x_3478.x, x_3478.y)) + vec2<f32>(x_3481.w, x_3481.y));
            let x_3485 : f32 = u_xlat16.y;
            u_xlat13.y = x_3485;
            let x_3488 : f32 = u_xlat14.z;
            u_xlat16.y = x_3488;
            let x_3490 : vec4<f32> = u_xlat11;
            let x_3493 : vec4<f32> = x_594.x_AdditionalShadowmapSize;
            let x_3496 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3490.x, x_3490.y, x_3490.x, x_3490.y) * vec4<f32>(x_3493.x, x_3493.y, x_3493.x, x_3493.y)) + vec4<f32>(x_3496.x, x_3496.y, x_3496.z, x_3496.y));
            let x_3499 : vec4<f32> = u_xlat11;
            let x_3502 : vec4<f32> = x_594.x_AdditionalShadowmapSize;
            let x_3505 : vec4<f32> = u_xlat16;
            let x_3507 : vec2<f32> = ((vec2<f32>(x_3499.x, x_3499.y) * vec2<f32>(x_3502.x, x_3502.y)) + vec2<f32>(x_3505.w, x_3505.y));
            let x_3508 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3507.x, x_3507.y, x_3508.z, x_3508.w);
            let x_3511 : f32 = u_xlat16.y;
            u_xlat13.z = x_3511;
            let x_3513 : vec4<f32> = u_xlat11;
            let x_3516 : vec4<f32> = x_594.x_AdditionalShadowmapSize;
            let x_3519 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3513.x, x_3513.y, x_3513.x, x_3513.y) * vec4<f32>(x_3516.x, x_3516.y, x_3516.x, x_3516.y)) + vec4<f32>(x_3519.x, x_3519.y, x_3519.x, x_3519.z));
            let x_3523 : f32 = u_xlat14.w;
            u_xlat16.y = x_3523;
            let x_3526 : vec4<f32> = u_xlat11;
            let x_3529 : vec4<f32> = x_594.x_AdditionalShadowmapSize;
            let x_3532 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3526.x, x_3526.y, x_3526.x, x_3526.y) * vec4<f32>(x_3529.x, x_3529.y, x_3529.x, x_3529.y)) + vec4<f32>(x_3532.x, x_3532.y, x_3532.z, x_3532.y));
            let x_3536 : vec4<f32> = u_xlat11;
            let x_3539 : vec4<f32> = x_594.x_AdditionalShadowmapSize;
            let x_3542 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3536.x, x_3536.y) * vec2<f32>(x_3539.x, x_3539.y)) + vec2<f32>(x_3542.w, x_3542.y));
            let x_3546 : f32 = u_xlat16.y;
            u_xlat13.w = x_3546;
            let x_3549 : vec4<f32> = u_xlat11;
            let x_3552 : vec4<f32> = x_594.x_AdditionalShadowmapSize;
            let x_3555 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3549.x, x_3549.y) * vec2<f32>(x_3552.x, x_3552.y)) + vec2<f32>(x_3555.x, x_3555.w));
            let x_3558 : vec4<f32> = u_xlat16;
            let x_3559 : vec3<f32> = vec3<f32>(x_3558.x, x_3558.z, x_3558.w);
            let x_3560 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3559.x, x_3560.y, x_3559.y, x_3559.z);
            let x_3562 : vec4<f32> = u_xlat11;
            let x_3565 : vec4<f32> = x_594.x_AdditionalShadowmapSize;
            let x_3568 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3562.x, x_3562.y, x_3562.x, x_3562.y) * vec4<f32>(x_3565.x, x_3565.y, x_3565.x, x_3565.y)) + vec4<f32>(x_3568.x, x_3568.y, x_3568.z, x_3568.y));
            let x_3572 : vec4<f32> = u_xlat11;
            let x_3575 : vec4<f32> = x_594.x_AdditionalShadowmapSize;
            let x_3578 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3572.x, x_3572.y) * vec2<f32>(x_3575.x, x_3575.y)) + vec2<f32>(x_3578.w, x_3578.y));
            let x_3582 : f32 = u_xlat13.x;
            u_xlat14.x = x_3582;
            let x_3584 : vec4<f32> = u_xlat11;
            let x_3587 : vec4<f32> = x_594.x_AdditionalShadowmapSize;
            let x_3590 : vec4<f32> = u_xlat14;
            let x_3592 : vec2<f32> = ((vec2<f32>(x_3584.x, x_3584.y) * vec2<f32>(x_3587.x, x_3587.y)) + vec2<f32>(x_3590.x, x_3590.y));
            let x_3593 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3592.x, x_3592.y, x_3593.z, x_3593.w);
            let x_3596 : vec4<f32> = u_xlat12;
            let x_3598 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3596.x, x_3596.x, x_3596.x, x_3596.x) * x_3598);
            let x_3601 : vec4<f32> = u_xlat12;
            let x_3603 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3601.y, x_3601.y, x_3601.y, x_3601.y) * x_3603);
            let x_3606 : vec4<f32> = u_xlat12;
            let x_3608 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3606.z, x_3606.z, x_3606.z, x_3606.z) * x_3608);
            let x_3610 : vec4<f32> = u_xlat12;
            let x_3612 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3610.w, x_3610.w, x_3610.w, x_3610.w) * x_3612);
            let x_3615 : vec4<f32> = u_xlat17;
            let x_3616 : vec2<f32> = vec2<f32>(x_3615.x, x_3615.y);
            let x_3618 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3616.x, x_3616.y, x_3618);
            let x_3625 : vec3<f32> = txVec43;
            let x_3627 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3625.xy, x_3625.z);
            u_xlat84 = x_3627;
            let x_3629 : vec4<f32> = u_xlat17;
            let x_3630 : vec2<f32> = vec2<f32>(x_3629.z, x_3629.w);
            let x_3632 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3630.x, x_3630.y, x_3632);
            let x_3639 : vec3<f32> = txVec44;
            let x_3641 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3639.xy, x_3639.z);
            u_xlat85 = x_3641;
            let x_3642 : f32 = u_xlat85;
            let x_3644 : f32 = u_xlat22.y;
            u_xlat85 = (x_3642 * x_3644);
            let x_3647 : f32 = u_xlat22.x;
            let x_3648 : f32 = u_xlat84;
            let x_3650 : f32 = u_xlat85;
            u_xlat84 = ((x_3647 * x_3648) + x_3650);
            let x_3653 : vec2<f32> = u_xlat61;
            let x_3655 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3653.x, x_3653.y, x_3655);
            let x_3662 : vec3<f32> = txVec45;
            let x_3664 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3662.xy, x_3662.z);
            u_xlat85 = x_3664;
            let x_3666 : f32 = u_xlat22.z;
            let x_3667 : f32 = u_xlat85;
            let x_3669 : f32 = u_xlat84;
            u_xlat84 = ((x_3666 * x_3667) + x_3669);
            let x_3672 : vec4<f32> = u_xlat20;
            let x_3673 : vec2<f32> = vec2<f32>(x_3672.x, x_3672.y);
            let x_3675 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3673.x, x_3673.y, x_3675);
            let x_3682 : vec3<f32> = txVec46;
            let x_3684 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3682.xy, x_3682.z);
            u_xlat85 = x_3684;
            let x_3686 : f32 = u_xlat22.w;
            let x_3687 : f32 = u_xlat85;
            let x_3689 : f32 = u_xlat84;
            u_xlat84 = ((x_3686 * x_3687) + x_3689);
            let x_3692 : vec4<f32> = u_xlat18;
            let x_3693 : vec2<f32> = vec2<f32>(x_3692.x, x_3692.y);
            let x_3695 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3693.x, x_3693.y, x_3695);
            let x_3702 : vec3<f32> = txVec47;
            let x_3704 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3702.xy, x_3702.z);
            u_xlat85 = x_3704;
            let x_3706 : f32 = u_xlat23.x;
            let x_3707 : f32 = u_xlat85;
            let x_3709 : f32 = u_xlat84;
            u_xlat84 = ((x_3706 * x_3707) + x_3709);
            let x_3712 : vec4<f32> = u_xlat18;
            let x_3713 : vec2<f32> = vec2<f32>(x_3712.z, x_3712.w);
            let x_3715 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3713.x, x_3713.y, x_3715);
            let x_3722 : vec3<f32> = txVec48;
            let x_3724 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3722.xy, x_3722.z);
            u_xlat85 = x_3724;
            let x_3726 : f32 = u_xlat23.y;
            let x_3727 : f32 = u_xlat85;
            let x_3729 : f32 = u_xlat84;
            u_xlat84 = ((x_3726 * x_3727) + x_3729);
            let x_3732 : vec4<f32> = u_xlat19;
            let x_3733 : vec2<f32> = vec2<f32>(x_3732.x, x_3732.y);
            let x_3735 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3733.x, x_3733.y, x_3735);
            let x_3742 : vec3<f32> = txVec49;
            let x_3744 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3742.xy, x_3742.z);
            u_xlat85 = x_3744;
            let x_3746 : f32 = u_xlat23.z;
            let x_3747 : f32 = u_xlat85;
            let x_3749 : f32 = u_xlat84;
            u_xlat84 = ((x_3746 * x_3747) + x_3749);
            let x_3752 : vec4<f32> = u_xlat20;
            let x_3753 : vec2<f32> = vec2<f32>(x_3752.z, x_3752.w);
            let x_3755 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3753.x, x_3753.y, x_3755);
            let x_3762 : vec3<f32> = txVec50;
            let x_3764 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3762.xy, x_3762.z);
            u_xlat85 = x_3764;
            let x_3766 : f32 = u_xlat23.w;
            let x_3767 : f32 = u_xlat85;
            let x_3769 : f32 = u_xlat84;
            u_xlat84 = ((x_3766 * x_3767) + x_3769);
            let x_3772 : vec4<f32> = u_xlat21;
            let x_3773 : vec2<f32> = vec2<f32>(x_3772.x, x_3772.y);
            let x_3775 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3773.x, x_3773.y, x_3775);
            let x_3782 : vec3<f32> = txVec51;
            let x_3784 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3782.xy, x_3782.z);
            u_xlat85 = x_3784;
            let x_3786 : f32 = u_xlat24.x;
            let x_3787 : f32 = u_xlat85;
            let x_3789 : f32 = u_xlat84;
            u_xlat84 = ((x_3786 * x_3787) + x_3789);
            let x_3792 : vec4<f32> = u_xlat21;
            let x_3793 : vec2<f32> = vec2<f32>(x_3792.z, x_3792.w);
            let x_3795 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_3793.x, x_3793.y, x_3795);
            let x_3802 : vec3<f32> = txVec52;
            let x_3804 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3802.xy, x_3802.z);
            u_xlat85 = x_3804;
            let x_3806 : f32 = u_xlat24.y;
            let x_3807 : f32 = u_xlat85;
            let x_3809 : f32 = u_xlat84;
            u_xlat84 = ((x_3806 * x_3807) + x_3809);
            let x_3812 : vec2<f32> = u_xlat38;
            let x_3814 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_3812.x, x_3812.y, x_3814);
            let x_3821 : vec3<f32> = txVec53;
            let x_3823 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3821.xy, x_3821.z);
            u_xlat85 = x_3823;
            let x_3825 : f32 = u_xlat24.z;
            let x_3826 : f32 = u_xlat85;
            let x_3828 : f32 = u_xlat84;
            u_xlat84 = ((x_3825 * x_3826) + x_3828);
            let x_3831 : vec2<f32> = u_xlat69;
            let x_3833 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_3831.x, x_3831.y, x_3833);
            let x_3840 : vec3<f32> = txVec54;
            let x_3842 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3840.xy, x_3840.z);
            u_xlat85 = x_3842;
            let x_3844 : f32 = u_xlat24.w;
            let x_3845 : f32 = u_xlat85;
            let x_3847 : f32 = u_xlat84;
            u_xlat84 = ((x_3844 * x_3845) + x_3847);
            let x_3850 : vec4<f32> = u_xlat16;
            let x_3851 : vec2<f32> = vec2<f32>(x_3850.x, x_3850.y);
            let x_3853 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_3851.x, x_3851.y, x_3853);
            let x_3860 : vec3<f32> = txVec55;
            let x_3862 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3860.xy, x_3860.z);
            u_xlat85 = x_3862;
            let x_3864 : f32 = u_xlat12.x;
            let x_3865 : f32 = u_xlat85;
            let x_3867 : f32 = u_xlat84;
            u_xlat84 = ((x_3864 * x_3865) + x_3867);
            let x_3870 : vec4<f32> = u_xlat16;
            let x_3871 : vec2<f32> = vec2<f32>(x_3870.z, x_3870.w);
            let x_3873 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_3871.x, x_3871.y, x_3873);
            let x_3880 : vec3<f32> = txVec56;
            let x_3882 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3880.xy, x_3880.z);
            u_xlat85 = x_3882;
            let x_3884 : f32 = u_xlat12.y;
            let x_3885 : f32 = u_xlat85;
            let x_3887 : f32 = u_xlat84;
            u_xlat84 = ((x_3884 * x_3885) + x_3887);
            let x_3890 : vec2<f32> = u_xlat64;
            let x_3892 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_3890.x, x_3890.y, x_3892);
            let x_3899 : vec3<f32> = txVec57;
            let x_3901 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3899.xy, x_3899.z);
            u_xlat85 = x_3901;
            let x_3903 : f32 = u_xlat12.z;
            let x_3904 : f32 = u_xlat85;
            let x_3906 : f32 = u_xlat84;
            u_xlat84 = ((x_3903 * x_3904) + x_3906);
            let x_3909 : vec4<f32> = u_xlat11;
            let x_3910 : vec2<f32> = vec2<f32>(x_3909.x, x_3909.y);
            let x_3912 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_3910.x, x_3910.y, x_3912);
            let x_3919 : vec3<f32> = txVec58;
            let x_3921 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3919.xy, x_3919.z);
            u_xlat85 = x_3921;
            let x_3923 : f32 = u_xlat12.w;
            let x_3924 : f32 = u_xlat85;
            let x_3926 : f32 = u_xlat84;
            u_xlat82 = ((x_3923 * x_3924) + x_3926);
          }
        }
      } else {
        let x_3930 : vec4<f32> = u_xlat10;
        let x_3931 : vec2<f32> = vec2<f32>(x_3930.x, x_3930.y);
        let x_3933 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_3931.x, x_3931.y, x_3933);
        let x_3940 : vec3<f32> = txVec59;
        let x_3942 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3940.xy, x_3940.z);
        u_xlat82 = x_3942;
      }
      let x_3943 : i32 = u_xlati79;
      let x_3945 : f32 = x_594.x_AdditionalShadowParams[x_3943].x;
      u_xlat84 = (1.0f + -(x_3945));
      let x_3948 : f32 = u_xlat82;
      let x_3949 : i32 = u_xlati79;
      let x_3951 : f32 = x_594.x_AdditionalShadowParams[x_3949].x;
      let x_3953 : f32 = u_xlat84;
      u_xlat82 = ((x_3948 * x_3951) + x_3953);
      let x_3956 : f32 = u_xlat10.z;
      u_xlatb84 = (0.0f >= x_3956);
      let x_3959 : f32 = u_xlat10.z;
      u_xlatb10.x = (x_3959 >= 1.0f);
      let x_3962 : bool = u_xlatb84;
      let x_3964 : bool = u_xlatb10.x;
      u_xlatb84 = (x_3962 | x_3964);
      let x_3966 : bool = u_xlatb84;
      let x_3967 : f32 = u_xlat82;
      u_xlat82 = select(x_3967, 1.0f, x_3966);
    } else {
      u_xlat82 = 1.0f;
    }
    let x_3970 : f32 = u_xlat82;
    u_xlat84 = (-(x_3970) + 1.0f);
    let x_3973 : f32 = u_xlat50;
    let x_3974 : f32 = u_xlat84;
    let x_3976 : f32 = u_xlat82;
    u_xlat82 = ((x_3973 * x_3974) + x_3976);
    let x_3978 : f32 = u_xlat80;
    let x_3979 : f32 = u_xlat82;
    u_xlat80 = (x_3978 * x_3979);
    let x_3981 : vec4<f32> = u_xlat1;
    let x_3983 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_3981.x, x_3981.y, x_3981.z), vec3<f32>(x_3983.x, x_3983.y, x_3983.z));
    let x_3986 : f32 = u_xlat82;
    u_xlat82 = clamp(x_3986, 0.0f, 1.0f);
    let x_3988 : f32 = u_xlat80;
    let x_3989 : f32 = u_xlat82;
    u_xlat80 = (x_3988 * x_3989);
    let x_3991 : f32 = u_xlat80;
    let x_3993 : i32 = u_xlati79;
    let x_3995 : vec4<f32> = x_2548.x_AdditionalLightsColor[x_3993];
    let x_3997 : vec3<f32> = (vec3<f32>(x_3991, x_3991, x_3991) * vec3<f32>(x_3995.x, x_3995.y, x_3995.z));
    let x_3998 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3997.x, x_3997.y, x_3997.z, x_3998.w);
    let x_4000 : vec3<f32> = u_xlat33;
    let x_4001 : f32 = u_xlat81;
    let x_4004 : vec3<f32> = u_xlat2;
    u_xlat33 = ((x_4000 * vec3<f32>(x_4001, x_4001, x_4001)) + x_4004);
    let x_4006 : vec3<f32> = u_xlat33;
    let x_4007 : vec3<f32> = u_xlat33;
    u_xlat79 = dot(x_4006, x_4007);
    let x_4009 : f32 = u_xlat79;
    u_xlat79 = max(x_4009, 1.17549435e-38f);
    let x_4011 : f32 = u_xlat79;
    u_xlat79 = inverseSqrt(x_4011);
    let x_4013 : f32 = u_xlat79;
    let x_4015 : vec3<f32> = u_xlat33;
    u_xlat33 = (vec3<f32>(x_4013, x_4013, x_4013) * x_4015);
    let x_4017 : vec4<f32> = u_xlat1;
    let x_4019 : vec3<f32> = u_xlat33;
    u_xlat79 = dot(vec3<f32>(x_4017.x, x_4017.y, x_4017.z), x_4019);
    let x_4021 : f32 = u_xlat79;
    u_xlat79 = clamp(x_4021, 0.0f, 1.0f);
    let x_4023 : vec4<f32> = u_xlat9;
    let x_4025 : vec3<f32> = u_xlat33;
    u_xlat80 = dot(vec3<f32>(x_4023.x, x_4023.y, x_4023.z), x_4025);
    let x_4027 : f32 = u_xlat80;
    u_xlat80 = clamp(x_4027, 0.0f, 1.0f);
    let x_4029 : f32 = u_xlat79;
    let x_4030 : f32 = u_xlat79;
    u_xlat79 = (x_4029 * x_4030);
    let x_4032 : f32 = u_xlat79;
    let x_4034 : f32 = u_xlat8.x;
    u_xlat79 = ((x_4032 * x_4034) + 1.00001001358032226562f);
    let x_4037 : f32 = u_xlat80;
    let x_4038 : f32 = u_xlat80;
    u_xlat80 = (x_4037 * x_4038);
    let x_4040 : f32 = u_xlat79;
    let x_4041 : f32 = u_xlat79;
    u_xlat79 = (x_4040 * x_4041);
    let x_4043 : f32 = u_xlat80;
    u_xlat80 = max(x_4043, 0.10000000149011611938f);
    let x_4045 : f32 = u_xlat79;
    let x_4046 : f32 = u_xlat80;
    u_xlat79 = (x_4045 * x_4046);
    let x_4048 : f32 = u_xlat77;
    let x_4049 : f32 = u_xlat79;
    u_xlat79 = (x_4048 * x_4049);
    let x_4051 : f32 = u_xlat78;
    let x_4052 : f32 = u_xlat79;
    u_xlat79 = (x_4051 / x_4052);
    let x_4054 : vec4<f32> = u_xlat5;
    let x_4056 : f32 = u_xlat79;
    let x_4059 : vec4<f32> = u_xlat6;
    u_xlat33 = ((vec3<f32>(x_4054.x, x_4054.y, x_4054.z) * vec3<f32>(x_4056, x_4056, x_4056)) + vec3<f32>(x_4059.x, x_4059.y, x_4059.z));
    let x_4062 : vec3<f32> = u_xlat33;
    let x_4063 : vec4<f32> = u_xlat10;
    let x_4066 : vec4<f32> = u_xlat3;
    let x_4068 : vec3<f32> = ((x_4062 * vec3<f32>(x_4063.x, x_4063.y, x_4063.z)) + vec3<f32>(x_4066.x, x_4066.y, x_4066.z));
    let x_4069 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_4068.x, x_4068.y, x_4068.z, x_4069.w);

    continuing {
      let x_4071 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4071 + bitcast<u32>(1i));
    }
  }
  let x_4073 : vec4<f32> = u_xlat4;
  let x_4075 : f32 = u_xlat25;
  let x_4078 : vec4<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_4073.x, x_4073.y, x_4073.z) * vec3<f32>(x_4075, x_4075, x_4075)) + vec3<f32>(x_4078.x, x_4078.y, x_4078.z));
  let x_4081 : vec4<f32> = u_xlat3;
  let x_4083 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4081.x, x_4081.y, x_4081.z) + x_4083);
  let x_4087 : f32 = u_xlat75;
  let x_4089 : vec3<f32> = u_xlat0;
  let x_4090 : vec3<f32> = (vec3<f32>(x_4087, x_4087, x_4087) * x_4089);
  let x_4091 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4090.x, x_4090.y, x_4090.z, x_4091.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD7_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


