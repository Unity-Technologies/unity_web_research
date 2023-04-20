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

@group(1) @binding(4) var<uniform> x_833 : LightShadows;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlatu2 : u32;

var<private> u_xlati2 : i32;

var<private> u_xlat27 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_1013 : UnityPerDraw;

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

@group(1) @binding(1) var<uniform> x_2830 : AdditionalLights;

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
  var x_2423 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2961 : f32;
  var x_2971 : f32;
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
  let x_278 : f32 = u_xlat76;
  u_xlat76 = (x_278 + 0.00006103515625f);
  let x_281 : vec4<f32> = u_xlat4;
  let x_282 : f32 = u_xlat76;
  u_xlat4 = (x_281 / vec4<f32>(x_282, x_282, x_282, x_282));
  let x_285 : vec4<f32> = u_xlat4;
  let x_288 : vec4<f32> = x_13.x_DiffuseRemapScale0;
  let x_290 : vec3<f32> = (vec3<f32>(x_285.x, x_285.x, x_285.x) * vec3<f32>(x_288.x, x_288.y, x_288.z));
  let x_291 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_290.x, x_290.y, x_290.z, x_291.w);
  let x_293 : vec4<f32> = u_xlat4;
  let x_296 : vec4<f32> = x_13.x_DiffuseRemapScale1;
  let x_298 : vec3<f32> = (vec3<f32>(x_293.y, x_293.y, x_293.y) * vec3<f32>(x_296.x, x_296.y, x_296.z));
  let x_299 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_298.x, x_298.y, x_298.z, x_299.w);
  let x_301 : vec4<f32> = u_xlat6;
  let x_303 : vec4<f32> = u_xlat12;
  let x_305 : vec3<f32> = (vec3<f32>(x_301.x, x_301.y, x_301.z) * vec3<f32>(x_303.x, x_303.y, x_303.z));
  let x_306 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_305.x, x_305.y, x_305.z, x_306.w);
  let x_308 : vec4<f32> = u_xlat5;
  let x_310 : vec4<f32> = u_xlat11;
  let x_313 : vec4<f32> = u_xlat6;
  let x_315 : vec3<f32> = ((vec3<f32>(x_308.x, x_308.y, x_308.z) * vec3<f32>(x_310.x, x_310.y, x_310.z)) + vec3<f32>(x_313.x, x_313.y, x_313.z));
  let x_316 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_315.x, x_315.y, x_315.z, x_316.w);
  let x_318 : vec4<f32> = u_xlat4;
  let x_321 : vec4<f32> = x_13.x_DiffuseRemapScale2;
  let x_323 : vec3<f32> = (vec3<f32>(x_318.z, x_318.z, x_318.z) * vec3<f32>(x_321.x, x_321.y, x_321.z));
  let x_324 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_323.x, x_323.y, x_323.z, x_324.w);
  let x_326 : vec4<f32> = u_xlat7;
  let x_328 : vec4<f32> = u_xlat6;
  let x_331 : vec4<f32> = u_xlat5;
  let x_333 : vec3<f32> = ((vec3<f32>(x_326.x, x_326.y, x_326.z) * vec3<f32>(x_328.x, x_328.y, x_328.z)) + vec3<f32>(x_331.x, x_331.y, x_331.z));
  let x_334 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
  let x_336 : vec4<f32> = u_xlat4;
  let x_339 : vec4<f32> = x_13.x_DiffuseRemapScale3;
  let x_341 : vec3<f32> = (vec3<f32>(x_336.w, x_336.w, x_336.w) * vec3<f32>(x_339.x, x_339.y, x_339.z));
  let x_342 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_341.x, x_341.y, x_341.z, x_342.w);
  let x_344 : vec4<f32> = u_xlat8;
  let x_346 : vec4<f32> = u_xlat6;
  let x_349 : vec4<f32> = u_xlat5;
  let x_351 : vec3<f32> = ((vec3<f32>(x_344.x, x_344.y, x_344.z) * vec3<f32>(x_346.x, x_346.y, x_346.z)) + vec3<f32>(x_349.x, x_349.y, x_349.z));
  let x_352 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_351.x, x_351.y, x_351.z, x_352.w);
  let x_359 : vec4<f32> = vs_TEXCOORD1;
  let x_362 : f32 = x_112.x_GlobalMipBias.x;
  let x_363 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_359.x, x_359.y), x_362);
  let x_364 : vec3<f32> = vec3<f32>(x_363.x, x_363.y, x_363.w);
  let x_365 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_364.x, x_364.y, x_364.z, x_365.w);
  let x_368 : f32 = u_xlat6.x;
  let x_370 : f32 = u_xlat6.z;
  u_xlat6.x = (x_368 * x_370);
  let x_373 : vec4<f32> = u_xlat6;
  let x_378 : vec2<f32> = ((vec2<f32>(x_373.x, x_373.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_379 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_378.x, x_378.y, x_379.z, x_379.w);
  let x_381 : vec4<f32> = u_xlat6;
  let x_383 : vec4<f32> = u_xlat6;
  u_xlat76 = dot(vec2<f32>(x_381.x, x_381.y), vec2<f32>(x_383.x, x_383.y));
  let x_386 : f32 = u_xlat76;
  u_xlat76 = min(x_386, 1.0f);
  let x_388 : f32 = u_xlat76;
  u_xlat76 = (-(x_388) + 1.0f);
  let x_391 : f32 = u_xlat76;
  u_xlat76 = sqrt(x_391);
  let x_393 : f32 = u_xlat76;
  u_xlat7.z = max(x_393, 0.0000000000000001f);
  let x_397 : vec4<f32> = u_xlat6;
  let x_400 : f32 = x_13.x_NormalScale0;
  let x_402 : vec2<f32> = (vec2<f32>(x_397.x, x_397.y) * vec2<f32>(x_400, x_400));
  let x_403 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_402.x, x_402.y, x_403.z, x_403.w);
  let x_409 : vec4<f32> = vs_TEXCOORD1;
  let x_412 : f32 = x_112.x_GlobalMipBias.x;
  let x_413 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_409.z, x_409.w), x_412);
  let x_414 : vec3<f32> = vec3<f32>(x_413.x, x_413.y, x_413.w);
  let x_415 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_414.x, x_414.y, x_414.z, x_415.w);
  let x_418 : f32 = u_xlat6.x;
  let x_420 : f32 = u_xlat6.z;
  u_xlat6.x = (x_418 * x_420);
  let x_423 : vec4<f32> = u_xlat6;
  let x_426 : vec2<f32> = ((vec2<f32>(x_423.x, x_423.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_427 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_426.x, x_426.y, x_427.z, x_427.w);
  let x_429 : vec4<f32> = u_xlat6;
  let x_431 : vec4<f32> = u_xlat6;
  u_xlat76 = dot(vec2<f32>(x_429.x, x_429.y), vec2<f32>(x_431.x, x_431.y));
  let x_434 : f32 = u_xlat76;
  u_xlat76 = min(x_434, 1.0f);
  let x_436 : f32 = u_xlat76;
  u_xlat76 = (-(x_436) + 1.0f);
  let x_439 : f32 = u_xlat76;
  u_xlat76 = sqrt(x_439);
  let x_441 : f32 = u_xlat76;
  u_xlat8.z = max(x_441, 0.0000000000000001f);
  let x_444 : vec4<f32> = u_xlat6;
  let x_448 : f32 = x_13.x_NormalScale1;
  let x_450 : f32 = x_13.x_NormalScale1;
  let x_451 : vec2<f32> = vec2<f32>(x_448, x_450);
  let x_455 : vec2<f32> = (vec2<f32>(x_444.x, x_444.y) * vec2<f32>(x_451.x, x_451.y));
  let x_456 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_455.x, x_455.y, x_456.z, x_456.w);
  let x_458 : vec4<f32> = u_xlat4;
  let x_460 : vec4<f32> = u_xlat8;
  let x_462 : vec3<f32> = (vec3<f32>(x_458.y, x_458.y, x_458.y) * vec3<f32>(x_460.x, x_460.y, x_460.z));
  let x_463 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_462.x, x_462.y, x_462.z, x_463.w);
  let x_465 : vec4<f32> = u_xlat4;
  let x_467 : vec4<f32> = u_xlat7;
  let x_470 : vec4<f32> = u_xlat6;
  let x_472 : vec3<f32> = ((vec3<f32>(x_465.x, x_465.x, x_465.x) * vec3<f32>(x_467.x, x_467.y, x_467.z)) + vec3<f32>(x_470.x, x_470.y, x_470.z));
  let x_473 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_472.x, x_472.y, x_472.z, x_473.w);
  let x_479 : vec4<f32> = vs_TEXCOORD2;
  let x_482 : f32 = x_112.x_GlobalMipBias.x;
  let x_483 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_479.x, x_479.y), x_482);
  let x_484 : vec3<f32> = vec3<f32>(x_483.x, x_483.y, x_483.w);
  let x_485 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_484.x, x_484.y, x_484.z, x_485.w);
  let x_488 : f32 = u_xlat7.x;
  let x_490 : f32 = u_xlat7.z;
  u_xlat7.x = (x_488 * x_490);
  let x_493 : vec4<f32> = u_xlat7;
  let x_496 : vec2<f32> = ((vec2<f32>(x_493.x, x_493.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_497 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_496.x, x_496.y, x_497.z, x_497.w);
  let x_499 : vec4<f32> = u_xlat7;
  let x_501 : vec4<f32> = u_xlat7;
  u_xlat76 = dot(vec2<f32>(x_499.x, x_499.y), vec2<f32>(x_501.x, x_501.y));
  let x_504 : f32 = u_xlat76;
  u_xlat76 = min(x_504, 1.0f);
  let x_506 : f32 = u_xlat76;
  u_xlat76 = (-(x_506) + 1.0f);
  let x_509 : f32 = u_xlat76;
  u_xlat76 = sqrt(x_509);
  let x_511 : f32 = u_xlat76;
  u_xlat8.z = max(x_511, 0.0000000000000001f);
  let x_514 : vec4<f32> = u_xlat7;
  let x_518 : f32 = x_13.x_NormalScale2;
  let x_520 : f32 = x_13.x_NormalScale2;
  let x_521 : vec2<f32> = vec2<f32>(x_518, x_520);
  let x_525 : vec2<f32> = (vec2<f32>(x_514.x, x_514.y) * vec2<f32>(x_521.x, x_521.y));
  let x_526 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_525.x, x_525.y, x_526.z, x_526.w);
  let x_528 : vec4<f32> = u_xlat4;
  let x_530 : vec4<f32> = u_xlat8;
  let x_533 : vec4<f32> = u_xlat6;
  let x_535 : vec3<f32> = ((vec3<f32>(x_528.z, x_528.z, x_528.z) * vec3<f32>(x_530.x, x_530.y, x_530.z)) + vec3<f32>(x_533.x, x_533.y, x_533.z));
  let x_536 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_535.x, x_535.y, x_535.z, x_536.w);
  let x_542 : vec4<f32> = vs_TEXCOORD2;
  let x_545 : f32 = x_112.x_GlobalMipBias.x;
  let x_546 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_542.z, x_542.w), x_545);
  let x_547 : vec3<f32> = vec3<f32>(x_546.x, x_546.y, x_546.w);
  let x_548 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_547.x, x_547.y, x_547.z, x_548.w);
  let x_551 : f32 = u_xlat7.x;
  let x_553 : f32 = u_xlat7.z;
  u_xlat7.x = (x_551 * x_553);
  let x_556 : vec4<f32> = u_xlat7;
  let x_559 : vec2<f32> = ((vec2<f32>(x_556.x, x_556.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_560 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_559.x, x_559.y, x_560.z, x_560.w);
  let x_562 : vec4<f32> = u_xlat7;
  let x_564 : vec4<f32> = u_xlat7;
  u_xlat76 = dot(vec2<f32>(x_562.x, x_562.y), vec2<f32>(x_564.x, x_564.y));
  let x_567 : f32 = u_xlat76;
  u_xlat76 = min(x_567, 1.0f);
  let x_569 : f32 = u_xlat76;
  u_xlat76 = (-(x_569) + 1.0f);
  let x_572 : f32 = u_xlat76;
  u_xlat76 = sqrt(x_572);
  let x_574 : f32 = u_xlat76;
  u_xlat8.z = max(x_574, 0.0000000000000001f);
  let x_577 : vec4<f32> = u_xlat7;
  let x_581 : f32 = x_13.x_NormalScale3;
  let x_583 : f32 = x_13.x_NormalScale3;
  let x_584 : vec2<f32> = vec2<f32>(x_581, x_583);
  let x_588 : vec2<f32> = (vec2<f32>(x_577.x, x_577.y) * vec2<f32>(x_584.x, x_584.y));
  let x_589 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_588.x, x_588.y, x_589.z, x_589.w);
  let x_591 : vec4<f32> = u_xlat4;
  let x_593 : vec4<f32> = u_xlat8;
  let x_596 : vec4<f32> = u_xlat6;
  let x_598 : vec3<f32> = ((vec3<f32>(x_591.w, x_591.w, x_591.w) * vec3<f32>(x_593.x, x_593.y, x_593.z)) + vec3<f32>(x_596.x, x_596.y, x_596.z));
  let x_599 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_598.x, x_598.y, x_598.z, x_599.w);
  let x_602 : f32 = u_xlat6.z;
  u_xlat6.w = (x_602 + 0.00000999999974737875f);
  let x_606 : vec4<f32> = u_xlat6;
  let x_608 : vec4<f32> = u_xlat6;
  u_xlat76 = dot(vec3<f32>(x_606.x, x_606.y, x_606.w), vec3<f32>(x_608.x, x_608.y, x_608.w));
  let x_611 : f32 = u_xlat76;
  u_xlat76 = inverseSqrt(x_611);
  let x_613 : f32 = u_xlat76;
  let x_615 : vec4<f32> = u_xlat6;
  let x_617 : vec3<f32> = (vec3<f32>(x_613, x_613, x_613) * vec3<f32>(x_615.x, x_615.y, x_615.w));
  let x_618 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_617.x, x_617.y, x_617.z, x_618.w);
  let x_621 : f32 = x_13.x_MaskMapRemapScale0.y;
  u_xlat7.x = x_621;
  let x_624 : f32 = x_13.x_MaskMapRemapScale1.y;
  u_xlat7.y = x_624;
  let x_627 : f32 = x_13.x_MaskMapRemapScale2.y;
  u_xlat7.z = x_627;
  let x_630 : f32 = x_13.x_MaskMapRemapScale3.y;
  u_xlat7.w = x_630;
  let x_633 : f32 = x_13.x_MaskMapRemapOffset0.y;
  u_xlat8.x = x_633;
  let x_636 : f32 = x_13.x_MaskMapRemapOffset1.y;
  u_xlat8.y = x_636;
  let x_639 : f32 = x_13.x_MaskMapRemapOffset2.y;
  u_xlat8.z = x_639;
  let x_642 : f32 = x_13.x_MaskMapRemapOffset3.y;
  u_xlat8.w = x_642;
  let x_644 : vec4<f32> = u_xlat7;
  let x_645 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_644 + x_645);
  let x_648 : f32 = u_xlat0.z;
  u_xlat8.x = x_648;
  let x_651 : f32 = u_xlat1.z;
  u_xlat8.y = x_651;
  let x_654 : f32 = u_xlat2.z;
  u_xlat8.z = x_654;
  let x_657 : f32 = u_xlat3.y;
  u_xlat8.w = x_657;
  let x_659 : vec4<f32> = u_xlat9;
  let x_662 : f32 = x_13.x_Smoothness0;
  let x_664 : f32 = x_13.x_Smoothness1;
  let x_666 : f32 = x_13.x_Smoothness2;
  let x_668 : f32 = x_13.x_Smoothness3;
  let x_671 : vec4<f32> = u_xlat8;
  u_xlat8 = ((-(x_659) * vec4<f32>(x_662, x_664, x_666, x_668)) + x_671);
  let x_675 : f32 = x_13.x_LayerHasMask0;
  let x_678 : f32 = x_13.x_LayerHasMask1;
  let x_681 : f32 = x_13.x_LayerHasMask2;
  let x_684 : f32 = x_13.x_LayerHasMask3;
  let x_686 : vec4<f32> = u_xlat8;
  let x_688 : vec4<f32> = u_xlat10;
  u_xlat8 = ((vec4<f32>(x_675, x_678, x_681, x_684) * x_686) + x_688);
  let x_691 : vec4<f32> = u_xlat4;
  let x_692 : vec4<f32> = u_xlat8;
  u_xlat50 = dot(x_691, x_692);
  let x_695 : f32 = u_xlat0.x;
  u_xlat8.x = x_695;
  let x_698 : f32 = u_xlat1.x;
  u_xlat8.y = x_698;
  let x_701 : f32 = u_xlat2.x;
  u_xlat8.z = x_701;
  let x_704 : f32 = u_xlat3.x;
  u_xlat8.w = x_704;
  let x_706 : vec4<f32> = u_xlat8;
  let x_709 : f32 = x_13.x_Metallic0;
  let x_712 : f32 = x_13.x_Metallic1;
  let x_715 : f32 = x_13.x_Metallic2;
  let x_718 : f32 = x_13.x_Metallic3;
  u_xlat8 = (x_706 + -(vec4<f32>(x_709, x_712, x_715, x_718)));
  let x_723 : f32 = x_13.x_LayerHasMask0;
  let x_725 : f32 = x_13.x_LayerHasMask1;
  let x_727 : f32 = x_13.x_LayerHasMask2;
  let x_729 : f32 = x_13.x_LayerHasMask3;
  let x_731 : vec4<f32> = u_xlat8;
  let x_734 : f32 = x_13.x_Metallic0;
  let x_736 : f32 = x_13.x_Metallic1;
  let x_738 : f32 = x_13.x_Metallic2;
  let x_740 : f32 = x_13.x_Metallic3;
  u_xlat8 = ((vec4<f32>(x_723, x_725, x_727, x_729) * x_731) + vec4<f32>(x_734, x_736, x_738, x_740));
  let x_743 : vec4<f32> = u_xlat4;
  let x_744 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_743, x_744);
  let x_748 : f32 = u_xlat0.y;
  u_xlat3.x = x_748;
  let x_751 : f32 = u_xlat1.y;
  u_xlat3.y = x_751;
  let x_754 : f32 = u_xlat2.y;
  u_xlat3.z = x_754;
  let x_756 : vec4<f32> = u_xlat7;
  let x_758 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_756) + x_758);
  let x_761 : f32 = x_13.x_LayerHasMask0;
  let x_763 : f32 = x_13.x_LayerHasMask1;
  let x_765 : f32 = x_13.x_LayerHasMask2;
  let x_767 : f32 = x_13.x_LayerHasMask3;
  let x_769 : vec4<f32> = u_xlat1;
  let x_771 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec4<f32>(x_761, x_763, x_765, x_767) * x_769) + x_771);
  let x_774 : vec4<f32> = u_xlat4;
  let x_775 : vec4<f32> = u_xlat1;
  u_xlat25 = dot(x_774, x_775);
  let x_777 : vec4<f32> = u_xlat6;
  let x_780 : vec4<f32> = vs_TEXCOORD5;
  let x_782 : vec3<f32> = (vec3<f32>(x_777.y, x_777.y, x_777.y) * vec3<f32>(x_780.x, x_780.y, x_780.z));
  let x_783 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_782.x, x_782.y, x_782.z, x_783.w);
  let x_785 : vec4<f32> = u_xlat6;
  let x_788 : vec4<f32> = vs_TEXCOORD4;
  let x_792 : vec4<f32> = u_xlat1;
  let x_794 : vec3<f32> = ((vec3<f32>(x_785.x, x_785.x, x_785.x) * -(vec3<f32>(x_788.x, x_788.y, x_788.z))) + vec3<f32>(x_792.x, x_792.y, x_792.z));
  let x_795 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_794.x, x_794.y, x_794.z, x_795.w);
  let x_797 : vec4<f32> = u_xlat6;
  let x_800 : vec4<f32> = vs_TEXCOORD3;
  let x_803 : vec4<f32> = u_xlat1;
  let x_805 : vec3<f32> = ((vec3<f32>(x_797.z, x_797.z, x_797.z) * vec3<f32>(x_800.x, x_800.y, x_800.z)) + vec3<f32>(x_803.x, x_803.y, x_803.z));
  let x_806 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_805.x, x_805.y, x_805.z, x_806.w);
  let x_808 : vec4<f32> = u_xlat1;
  let x_810 : vec4<f32> = u_xlat1;
  u_xlat76 = dot(vec3<f32>(x_808.x, x_808.y, x_808.z), vec3<f32>(x_810.x, x_810.y, x_810.z));
  let x_813 : f32 = u_xlat76;
  u_xlat76 = inverseSqrt(x_813);
  let x_815 : f32 = u_xlat76;
  let x_817 : vec4<f32> = u_xlat1;
  let x_819 : vec3<f32> = (vec3<f32>(x_815, x_815, x_815) * vec3<f32>(x_817.x, x_817.y, x_817.z));
  let x_820 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_819.x, x_819.y, x_819.z, x_820.w);
  let x_824 : vec3<f32> = vs_TEXCOORD7;
  let x_835 : vec4<f32> = x_833.x_CascadeShadowSplitSpheres0;
  let x_838 : vec3<f32> = (x_824 + -(vec3<f32>(x_835.x, x_835.y, x_835.z)));
  let x_839 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_838.x, x_838.y, x_838.z, x_839.w);
  let x_841 : vec3<f32> = vs_TEXCOORD7;
  let x_843 : vec4<f32> = x_833.x_CascadeShadowSplitSpheres1;
  let x_846 : vec3<f32> = (x_841 + -(vec3<f32>(x_843.x, x_843.y, x_843.z)));
  let x_847 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_846.x, x_846.y, x_846.z, x_847.w);
  let x_849 : vec3<f32> = vs_TEXCOORD7;
  let x_851 : vec4<f32> = x_833.x_CascadeShadowSplitSpheres2;
  let x_854 : vec3<f32> = (x_849 + -(vec3<f32>(x_851.x, x_851.y, x_851.z)));
  let x_855 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_854.x, x_854.y, x_854.z, x_855.w);
  let x_857 : vec3<f32> = vs_TEXCOORD7;
  let x_859 : vec4<f32> = x_833.x_CascadeShadowSplitSpheres3;
  let x_862 : vec3<f32> = (x_857 + -(vec3<f32>(x_859.x, x_859.y, x_859.z)));
  let x_863 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_862.x, x_862.y, x_862.z, x_863.w);
  let x_865 : vec4<f32> = u_xlat2;
  let x_867 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_865.x, x_865.y, x_865.z), vec3<f32>(x_867.x, x_867.y, x_867.z));
  let x_871 : vec4<f32> = u_xlat3;
  let x_873 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_871.x, x_871.y, x_871.z), vec3<f32>(x_873.x, x_873.y, x_873.z));
  let x_877 : vec4<f32> = u_xlat4;
  let x_879 : vec4<f32> = u_xlat4;
  u_xlat2.z = dot(vec3<f32>(x_877.x, x_877.y, x_877.z), vec3<f32>(x_879.x, x_879.y, x_879.z));
  let x_883 : vec4<f32> = u_xlat6;
  let x_885 : vec4<f32> = u_xlat6;
  u_xlat2.w = dot(vec3<f32>(x_883.x, x_883.y, x_883.z), vec3<f32>(x_885.x, x_885.y, x_885.z));
  let x_891 : vec4<f32> = u_xlat2;
  let x_893 : vec4<f32> = x_833.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_891 < x_893);
  let x_896 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_896);
  let x_900 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_900);
  let x_904 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_904);
  let x_908 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_908);
  let x_912 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_912);
  let x_917 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_917);
  let x_921 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_921);
  let x_924 : vec4<f32> = u_xlat2;
  let x_926 : vec4<f32> = u_xlat3;
  let x_928 : vec3<f32> = (vec3<f32>(x_924.x, x_924.y, x_924.z) + vec3<f32>(x_926.y, x_926.z, x_926.w));
  let x_929 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_928.x, x_928.y, x_928.z, x_929.w);
  let x_931 : vec4<f32> = u_xlat2;
  let x_934 : vec3<f32> = max(vec3<f32>(x_931.x, x_931.y, x_931.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_935 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_935.x, x_934.x, x_934.y, x_934.z);
  let x_937 : vec4<f32> = u_xlat3;
  u_xlat2.x = dot(x_937, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_943 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_943) + 4.0f);
  let x_950 : f32 = u_xlat2.x;
  u_xlatu2 = u32(x_950);
  let x_954 : u32 = u_xlatu2;
  u_xlati2 = (bitcast<i32>(x_954) << bitcast<u32>(2i));
  let x_958 : vec3<f32> = vs_TEXCOORD7;
  let x_960 : i32 = u_xlati2;
  let x_963 : i32 = u_xlati2;
  let x_967 : vec4<f32> = x_833.x_MainLightWorldToShadow[((x_960 + 1i) / 4i)][((x_963 + 1i) % 4i)];
  u_xlat27 = (vec3<f32>(x_958.y, x_958.y, x_958.y) * vec3<f32>(x_967.x, x_967.y, x_967.z));
  let x_970 : i32 = u_xlati2;
  let x_972 : i32 = u_xlati2;
  let x_975 : vec4<f32> = x_833.x_MainLightWorldToShadow[(x_970 / 4i)][(x_972 % 4i)];
  let x_977 : vec3<f32> = vs_TEXCOORD7;
  let x_980 : vec3<f32> = u_xlat27;
  u_xlat27 = ((vec3<f32>(x_975.x, x_975.y, x_975.z) * vec3<f32>(x_977.x, x_977.x, x_977.x)) + x_980);
  let x_982 : i32 = u_xlati2;
  let x_985 : i32 = u_xlati2;
  let x_989 : vec4<f32> = x_833.x_MainLightWorldToShadow[((x_982 + 2i) / 4i)][((x_985 + 2i) % 4i)];
  let x_991 : vec3<f32> = vs_TEXCOORD7;
  let x_994 : vec3<f32> = u_xlat27;
  u_xlat27 = ((vec3<f32>(x_989.x, x_989.y, x_989.z) * vec3<f32>(x_991.z, x_991.z, x_991.z)) + x_994);
  let x_996 : vec3<f32> = u_xlat27;
  let x_997 : i32 = u_xlati2;
  let x_1000 : i32 = u_xlati2;
  let x_1004 : vec4<f32> = x_833.x_MainLightWorldToShadow[((x_997 + 3i) / 4i)][((x_1000 + 3i) % 4i)];
  let x_1006 : vec3<f32> = (x_996 + vec3<f32>(x_1004.x, x_1004.y, x_1004.z));
  let x_1007 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1006.x, x_1006.y, x_1006.z, x_1007.w);
  u_xlat1.w = 1.0f;
  let x_1015 : vec4<f32> = x_1013.unity_SHAr;
  let x_1016 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_1015, x_1016);
  let x_1020 : vec4<f32> = x_1013.unity_SHAg;
  let x_1021 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_1020, x_1021);
  let x_1025 : vec4<f32> = x_1013.unity_SHAb;
  let x_1026 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_1025, x_1026);
  let x_1029 : vec4<f32> = u_xlat1;
  let x_1031 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_1029.y, x_1029.z, x_1029.z, x_1029.x) * vec4<f32>(x_1031.x, x_1031.y, x_1031.z, x_1031.z));
  let x_1035 : vec4<f32> = x_1013.unity_SHBr;
  let x_1036 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_1035, x_1036);
  let x_1040 : vec4<f32> = x_1013.unity_SHBg;
  let x_1041 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_1040, x_1041);
  let x_1045 : vec4<f32> = x_1013.unity_SHBb;
  let x_1046 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_1045, x_1046);
  let x_1050 : f32 = u_xlat1.y;
  let x_1052 : f32 = u_xlat1.y;
  u_xlat76 = (x_1050 * x_1052);
  let x_1055 : f32 = u_xlat1.x;
  let x_1057 : f32 = u_xlat1.x;
  let x_1059 : f32 = u_xlat76;
  u_xlat76 = ((x_1055 * x_1057) + -(x_1059));
  let x_1064 : vec4<f32> = x_1013.unity_SHC;
  let x_1066 : f32 = u_xlat76;
  let x_1069 : vec4<f32> = u_xlat6;
  let x_1071 : vec3<f32> = ((vec3<f32>(x_1064.x, x_1064.y, x_1064.z) * vec3<f32>(x_1066, x_1066, x_1066)) + vec3<f32>(x_1069.x, x_1069.y, x_1069.z));
  let x_1072 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1071.x, x_1071.y, x_1071.z, x_1072.w);
  let x_1074 : vec4<f32> = u_xlat3;
  let x_1076 : vec4<f32> = u_xlat4;
  let x_1078 : vec3<f32> = (vec3<f32>(x_1074.x, x_1074.y, x_1074.z) + vec3<f32>(x_1076.x, x_1076.y, x_1076.z));
  let x_1079 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1078.x, x_1078.y, x_1078.z, x_1079.w);
  let x_1081 : vec4<f32> = u_xlat3;
  let x_1083 : vec3<f32> = max(vec3<f32>(x_1081.x, x_1081.y, x_1081.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1084 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1083.x, x_1083.y, x_1083.z, x_1084.w);
  let x_1087 : f32 = u_xlat0.x;
  u_xlat76 = ((-(x_1087) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_1093 : f32 = u_xlat76;
  u_xlat77 = (-(x_1093) + 1.0f);
  let x_1096 : f32 = u_xlat76;
  let x_1098 : vec4<f32> = u_xlat5;
  let x_1100 : vec3<f32> = (vec3<f32>(x_1096, x_1096, x_1096) * vec3<f32>(x_1098.x, x_1098.y, x_1098.z));
  let x_1101 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1100.x, x_1100.y, x_1100.z, x_1101.w);
  let x_1103 : vec4<f32> = u_xlat5;
  let x_1107 : vec3<f32> = (vec3<f32>(x_1103.x, x_1103.y, x_1103.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_1108 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1107.x, x_1107.y, x_1107.z, x_1108.w);
  let x_1110 : vec3<f32> = u_xlat0;
  let x_1112 : vec4<f32> = u_xlat5;
  let x_1117 : vec3<f32> = ((vec3<f32>(x_1110.x, x_1110.x, x_1110.x) * vec3<f32>(x_1112.x, x_1112.y, x_1112.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_1118 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1117.x, x_1117.y, x_1117.z, x_1118.w);
  let x_1120 : f32 = u_xlat50;
  u_xlat0.x = (-(x_1120) + 1.0f);
  let x_1125 : f32 = u_xlat0.x;
  let x_1127 : f32 = u_xlat0.x;
  u_xlat76 = (x_1125 * x_1127);
  let x_1129 : f32 = u_xlat76;
  u_xlat76 = max(x_1129, 0.0078125f);
  let x_1133 : f32 = u_xlat76;
  let x_1134 : f32 = u_xlat76;
  u_xlat78 = (x_1133 * x_1134);
  let x_1136 : f32 = u_xlat50;
  let x_1137 : f32 = u_xlat77;
  u_xlat50 = (x_1136 + x_1137);
  let x_1139 : f32 = u_xlat50;
  u_xlat50 = clamp(x_1139, 0.0f, 1.0f);
  let x_1141 : f32 = u_xlat76;
  u_xlat77 = ((x_1141 * 4.0f) + 2.0f);
  let x_1144 : f32 = u_xlat25;
  u_xlat25 = min(x_1144, 1.0f);
  let x_1148 : f32 = x_833.x_MainLightShadowParams.y;
  u_xlatb79 = (0.0f < x_1148);
  let x_1150 : bool = u_xlatb79;
  if (x_1150) {
    let x_1154 : f32 = x_833.x_MainLightShadowParams.y;
    u_xlatb79 = (x_1154 == 1.0f);
    let x_1156 : bool = u_xlatb79;
    if (x_1156) {
      let x_1159 : vec4<f32> = u_xlat2;
      let x_1162 : vec4<f32> = x_833.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_1159.x, x_1159.y, x_1159.x, x_1159.y) + x_1162);
      let x_1166 : vec4<f32> = u_xlat6;
      let x_1167 : vec2<f32> = vec2<f32>(x_1166.x, x_1166.y);
      let x_1169 : f32 = u_xlat2.z;
      txVec0 = vec3<f32>(x_1167.x, x_1167.y, x_1169);
      let x_1181 : vec3<f32> = txVec0;
      let x_1183 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1181.xy, x_1181.z);
      u_xlat7.x = x_1183;
      let x_1186 : vec4<f32> = u_xlat6;
      let x_1187 : vec2<f32> = vec2<f32>(x_1186.z, x_1186.w);
      let x_1189 : f32 = u_xlat2.z;
      txVec1 = vec3<f32>(x_1187.x, x_1187.y, x_1189);
      let x_1196 : vec3<f32> = txVec1;
      let x_1198 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1196.xy, x_1196.z);
      u_xlat7.y = x_1198;
      let x_1200 : vec4<f32> = u_xlat2;
      let x_1203 : vec4<f32> = x_833.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_1200.x, x_1200.y, x_1200.x, x_1200.y) + x_1203);
      let x_1206 : vec4<f32> = u_xlat6;
      let x_1207 : vec2<f32> = vec2<f32>(x_1206.x, x_1206.y);
      let x_1209 : f32 = u_xlat2.z;
      txVec2 = vec3<f32>(x_1207.x, x_1207.y, x_1209);
      let x_1216 : vec3<f32> = txVec2;
      let x_1218 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1216.xy, x_1216.z);
      u_xlat7.z = x_1218;
      let x_1221 : vec4<f32> = u_xlat6;
      let x_1222 : vec2<f32> = vec2<f32>(x_1221.z, x_1221.w);
      let x_1224 : f32 = u_xlat2.z;
      txVec3 = vec3<f32>(x_1222.x, x_1222.y, x_1224);
      let x_1231 : vec3<f32> = txVec3;
      let x_1233 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1231.xy, x_1231.z);
      u_xlat7.w = x_1233;
      let x_1236 : vec4<f32> = u_xlat7;
      u_xlat79 = dot(x_1236, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1243 : f32 = x_833.x_MainLightShadowParams.y;
      u_xlatb80 = (x_1243 == 2.0f);
      let x_1245 : bool = u_xlatb80;
      if (x_1245) {
        let x_1248 : vec4<f32> = u_xlat2;
        let x_1251 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1254 : vec2<f32> = ((vec2<f32>(x_1248.x, x_1248.y) * vec2<f32>(x_1251.z, x_1251.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1255 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1254.x, x_1254.y, x_1255.z, x_1255.w);
        let x_1257 : vec4<f32> = u_xlat6;
        let x_1259 : vec2<f32> = floor(vec2<f32>(x_1257.x, x_1257.y));
        let x_1260 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1259.x, x_1259.y, x_1260.z, x_1260.w);
        let x_1264 : vec4<f32> = u_xlat2;
        let x_1267 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1270 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_1264.x, x_1264.y) * vec2<f32>(x_1267.z, x_1267.w)) + -(vec2<f32>(x_1270.x, x_1270.y)));
        let x_1274 : vec2<f32> = u_xlat56;
        u_xlat7 = (vec4<f32>(x_1274.x, x_1274.x, x_1274.y, x_1274.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1278 : vec4<f32> = u_xlat7;
        let x_1280 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1278.x, x_1278.x, x_1278.z, x_1278.z) * vec4<f32>(x_1280.x, x_1280.x, x_1280.z, x_1280.z));
        let x_1283 : vec4<f32> = u_xlat8;
        let x_1287 : vec2<f32> = (vec2<f32>(x_1283.y, x_1283.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1288 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1287.x, x_1288.y, x_1287.y, x_1288.w);
        let x_1290 : vec4<f32> = u_xlat8;
        let x_1293 : vec2<f32> = u_xlat56;
        let x_1295 : vec2<f32> = ((vec2<f32>(x_1290.x, x_1290.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1293));
        let x_1296 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1295.x, x_1295.y, x_1296.z, x_1296.w);
        let x_1299 : vec2<f32> = u_xlat56;
        u_xlat58 = (-(x_1299) + vec2<f32>(1.0f, 1.0f));
        let x_1303 : vec2<f32> = u_xlat56;
        let x_1305 : vec2<f32> = min(x_1303, vec2<f32>(0.0f, 0.0f));
        let x_1306 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1305.x, x_1305.y, x_1306.z, x_1306.w);
        let x_1308 : vec4<f32> = u_xlat9;
        let x_1311 : vec4<f32> = u_xlat9;
        let x_1314 : vec2<f32> = u_xlat58;
        let x_1315 : vec2<f32> = ((-(vec2<f32>(x_1308.x, x_1308.y)) * vec2<f32>(x_1311.x, x_1311.y)) + x_1314);
        let x_1316 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1315.x, x_1315.y, x_1316.z, x_1316.w);
        let x_1318 : vec2<f32> = u_xlat56;
        u_xlat56 = max(x_1318, vec2<f32>(0.0f, 0.0f));
        let x_1320 : vec2<f32> = u_xlat56;
        let x_1322 : vec2<f32> = u_xlat56;
        let x_1324 : vec4<f32> = u_xlat7;
        u_xlat56 = ((-(x_1320) * x_1322) + vec2<f32>(x_1324.y, x_1324.w));
        let x_1327 : vec4<f32> = u_xlat9;
        let x_1329 : vec2<f32> = (vec2<f32>(x_1327.x, x_1327.y) + vec2<f32>(1.0f, 1.0f));
        let x_1330 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1329.x, x_1329.y, x_1330.z, x_1330.w);
        let x_1332 : vec2<f32> = u_xlat56;
        u_xlat56 = (x_1332 + vec2<f32>(1.0f, 1.0f));
        let x_1334 : vec4<f32> = u_xlat8;
        let x_1338 : vec2<f32> = (vec2<f32>(x_1334.x, x_1334.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1339 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1338.x, x_1338.y, x_1339.z, x_1339.w);
        let x_1341 : vec2<f32> = u_xlat58;
        let x_1342 : vec2<f32> = (x_1341 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1343 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1342.x, x_1342.y, x_1343.z, x_1343.w);
        let x_1345 : vec4<f32> = u_xlat9;
        let x_1347 : vec2<f32> = (vec2<f32>(x_1345.x, x_1345.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1348 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1347.x, x_1347.y, x_1348.z, x_1348.w);
        let x_1350 : vec2<f32> = u_xlat56;
        let x_1351 : vec2<f32> = (x_1350 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1352 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1351.x, x_1351.y, x_1352.z, x_1352.w);
        let x_1354 : vec4<f32> = u_xlat7;
        u_xlat56 = (vec2<f32>(x_1354.y, x_1354.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1358 : f32 = u_xlat9.x;
        u_xlat10.z = x_1358;
        let x_1361 : f32 = u_xlat56.x;
        u_xlat10.w = x_1361;
        let x_1364 : f32 = u_xlat11.x;
        u_xlat8.z = x_1364;
        let x_1367 : f32 = u_xlat7.x;
        u_xlat8.w = x_1367;
        let x_1369 : vec4<f32> = u_xlat8;
        let x_1371 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_1369.z, x_1369.w, x_1369.x, x_1369.z) + vec4<f32>(x_1371.z, x_1371.w, x_1371.x, x_1371.z));
        let x_1375 : f32 = u_xlat10.y;
        u_xlat9.z = x_1375;
        let x_1378 : f32 = u_xlat56.y;
        u_xlat9.w = x_1378;
        let x_1381 : f32 = u_xlat8.y;
        u_xlat11.z = x_1381;
        let x_1384 : f32 = u_xlat7.z;
        u_xlat11.w = x_1384;
        let x_1386 : vec4<f32> = u_xlat9;
        let x_1388 : vec4<f32> = u_xlat11;
        let x_1390 : vec3<f32> = (vec3<f32>(x_1386.z, x_1386.y, x_1386.w) + vec3<f32>(x_1388.z, x_1388.y, x_1388.w));
        let x_1391 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1390.x, x_1390.y, x_1390.z, x_1391.w);
        let x_1393 : vec4<f32> = u_xlat8;
        let x_1395 : vec4<f32> = u_xlat12;
        let x_1397 : vec3<f32> = (vec3<f32>(x_1393.x, x_1393.z, x_1393.w) / vec3<f32>(x_1395.z, x_1395.w, x_1395.y));
        let x_1398 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1397.x, x_1397.y, x_1397.z, x_1398.w);
        let x_1400 : vec4<f32> = u_xlat8;
        let x_1406 : vec3<f32> = (vec3<f32>(x_1400.x, x_1400.y, x_1400.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1407 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1406.x, x_1406.y, x_1406.z, x_1407.w);
        let x_1409 : vec4<f32> = u_xlat11;
        let x_1411 : vec4<f32> = u_xlat7;
        let x_1413 : vec3<f32> = (vec3<f32>(x_1409.z, x_1409.y, x_1409.w) / vec3<f32>(x_1411.x, x_1411.y, x_1411.z));
        let x_1414 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1413.x, x_1413.y, x_1413.z, x_1414.w);
        let x_1416 : vec4<f32> = u_xlat9;
        let x_1418 : vec3<f32> = (vec3<f32>(x_1416.x, x_1416.y, x_1416.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1419 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1418.x, x_1418.y, x_1418.z, x_1419.w);
        let x_1421 : vec4<f32> = u_xlat8;
        let x_1424 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1426 : vec3<f32> = (vec3<f32>(x_1421.y, x_1421.x, x_1421.z) * vec3<f32>(x_1424.x, x_1424.x, x_1424.x));
        let x_1427 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1426.x, x_1426.y, x_1426.z, x_1427.w);
        let x_1429 : vec4<f32> = u_xlat9;
        let x_1432 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1434 : vec3<f32> = (vec3<f32>(x_1429.x, x_1429.y, x_1429.z) * vec3<f32>(x_1432.y, x_1432.y, x_1432.y));
        let x_1435 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1434.x, x_1434.y, x_1434.z, x_1435.w);
        let x_1438 : f32 = u_xlat9.x;
        u_xlat8.w = x_1438;
        let x_1440 : vec4<f32> = u_xlat6;
        let x_1443 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1446 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1440.x, x_1440.y, x_1440.x, x_1440.y) * vec4<f32>(x_1443.x, x_1443.y, x_1443.x, x_1443.y)) + vec4<f32>(x_1446.y, x_1446.w, x_1446.x, x_1446.w));
        let x_1449 : vec4<f32> = u_xlat6;
        let x_1452 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1455 : vec4<f32> = u_xlat8;
        u_xlat56 = ((vec2<f32>(x_1449.x, x_1449.y) * vec2<f32>(x_1452.x, x_1452.y)) + vec2<f32>(x_1455.z, x_1455.w));
        let x_1459 : f32 = u_xlat8.y;
        u_xlat9.w = x_1459;
        let x_1461 : vec4<f32> = u_xlat9;
        let x_1462 : vec2<f32> = vec2<f32>(x_1461.y, x_1461.z);
        let x_1463 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1463.x, x_1462.x, x_1463.z, x_1462.y);
        let x_1465 : vec4<f32> = u_xlat6;
        let x_1468 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1471 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1465.x, x_1465.y, x_1465.x, x_1465.y) * vec4<f32>(x_1468.x, x_1468.y, x_1468.x, x_1468.y)) + vec4<f32>(x_1471.x, x_1471.y, x_1471.z, x_1471.y));
        let x_1474 : vec4<f32> = u_xlat6;
        let x_1477 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1480 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1474.x, x_1474.y, x_1474.x, x_1474.y) * vec4<f32>(x_1477.x, x_1477.y, x_1477.x, x_1477.y)) + vec4<f32>(x_1480.w, x_1480.y, x_1480.w, x_1480.z));
        let x_1483 : vec4<f32> = u_xlat6;
        let x_1486 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1489 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1483.x, x_1483.y, x_1483.x, x_1483.y) * vec4<f32>(x_1486.x, x_1486.y, x_1486.x, x_1486.y)) + vec4<f32>(x_1489.x, x_1489.w, x_1489.z, x_1489.w));
        let x_1492 : vec4<f32> = u_xlat7;
        let x_1494 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_1492.x, x_1492.x, x_1492.x, x_1492.y) * vec4<f32>(x_1494.z, x_1494.w, x_1494.y, x_1494.z));
        let x_1498 : vec4<f32> = u_xlat7;
        let x_1500 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_1498.y, x_1498.y, x_1498.z, x_1498.z) * x_1500);
        let x_1504 : f32 = u_xlat7.z;
        let x_1506 : f32 = u_xlat12.y;
        u_xlat80 = (x_1504 * x_1506);
        let x_1509 : vec4<f32> = u_xlat10;
        let x_1510 : vec2<f32> = vec2<f32>(x_1509.x, x_1509.y);
        let x_1512 : f32 = u_xlat2.z;
        txVec4 = vec3<f32>(x_1510.x, x_1510.y, x_1512);
        let x_1519 : vec3<f32> = txVec4;
        let x_1521 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1519.xy, x_1519.z);
        u_xlat6.x = x_1521;
        let x_1524 : vec4<f32> = u_xlat10;
        let x_1525 : vec2<f32> = vec2<f32>(x_1524.z, x_1524.w);
        let x_1527 : f32 = u_xlat2.z;
        txVec5 = vec3<f32>(x_1525.x, x_1525.y, x_1527);
        let x_1535 : vec3<f32> = txVec5;
        let x_1537 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1535.xy, x_1535.z);
        u_xlat31 = x_1537;
        let x_1538 : f32 = u_xlat31;
        let x_1540 : f32 = u_xlat13.y;
        u_xlat31 = (x_1538 * x_1540);
        let x_1543 : f32 = u_xlat13.x;
        let x_1545 : f32 = u_xlat6.x;
        let x_1547 : f32 = u_xlat31;
        u_xlat6.x = ((x_1543 * x_1545) + x_1547);
        let x_1551 : vec2<f32> = u_xlat56;
        let x_1553 : f32 = u_xlat2.z;
        txVec6 = vec3<f32>(x_1551.x, x_1551.y, x_1553);
        let x_1560 : vec3<f32> = txVec6;
        let x_1562 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1560.xy, x_1560.z);
        u_xlat31 = x_1562;
        let x_1564 : f32 = u_xlat13.z;
        let x_1565 : f32 = u_xlat31;
        let x_1568 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1564 * x_1565) + x_1568);
        let x_1572 : vec4<f32> = u_xlat9;
        let x_1573 : vec2<f32> = vec2<f32>(x_1572.x, x_1572.y);
        let x_1575 : f32 = u_xlat2.z;
        txVec7 = vec3<f32>(x_1573.x, x_1573.y, x_1575);
        let x_1582 : vec3<f32> = txVec7;
        let x_1584 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1582.xy, x_1582.z);
        u_xlat31 = x_1584;
        let x_1586 : f32 = u_xlat13.w;
        let x_1587 : f32 = u_xlat31;
        let x_1590 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1586 * x_1587) + x_1590);
        let x_1594 : vec4<f32> = u_xlat11;
        let x_1595 : vec2<f32> = vec2<f32>(x_1594.x, x_1594.y);
        let x_1597 : f32 = u_xlat2.z;
        txVec8 = vec3<f32>(x_1595.x, x_1595.y, x_1597);
        let x_1604 : vec3<f32> = txVec8;
        let x_1606 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1604.xy, x_1604.z);
        u_xlat31 = x_1606;
        let x_1608 : f32 = u_xlat14.x;
        let x_1609 : f32 = u_xlat31;
        let x_1612 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1608 * x_1609) + x_1612);
        let x_1616 : vec4<f32> = u_xlat11;
        let x_1617 : vec2<f32> = vec2<f32>(x_1616.z, x_1616.w);
        let x_1619 : f32 = u_xlat2.z;
        txVec9 = vec3<f32>(x_1617.x, x_1617.y, x_1619);
        let x_1626 : vec3<f32> = txVec9;
        let x_1628 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1626.xy, x_1626.z);
        u_xlat31 = x_1628;
        let x_1630 : f32 = u_xlat14.y;
        let x_1631 : f32 = u_xlat31;
        let x_1634 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1630 * x_1631) + x_1634);
        let x_1638 : vec4<f32> = u_xlat9;
        let x_1639 : vec2<f32> = vec2<f32>(x_1638.z, x_1638.w);
        let x_1641 : f32 = u_xlat2.z;
        txVec10 = vec3<f32>(x_1639.x, x_1639.y, x_1641);
        let x_1648 : vec3<f32> = txVec10;
        let x_1650 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1648.xy, x_1648.z);
        u_xlat31 = x_1650;
        let x_1652 : f32 = u_xlat14.z;
        let x_1653 : f32 = u_xlat31;
        let x_1656 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1652 * x_1653) + x_1656);
        let x_1660 : vec4<f32> = u_xlat8;
        let x_1661 : vec2<f32> = vec2<f32>(x_1660.x, x_1660.y);
        let x_1663 : f32 = u_xlat2.z;
        txVec11 = vec3<f32>(x_1661.x, x_1661.y, x_1663);
        let x_1670 : vec3<f32> = txVec11;
        let x_1672 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1670.xy, x_1670.z);
        u_xlat31 = x_1672;
        let x_1674 : f32 = u_xlat14.w;
        let x_1675 : f32 = u_xlat31;
        let x_1678 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1674 * x_1675) + x_1678);
        let x_1682 : vec4<f32> = u_xlat8;
        let x_1683 : vec2<f32> = vec2<f32>(x_1682.z, x_1682.w);
        let x_1685 : f32 = u_xlat2.z;
        txVec12 = vec3<f32>(x_1683.x, x_1683.y, x_1685);
        let x_1692 : vec3<f32> = txVec12;
        let x_1694 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1692.xy, x_1692.z);
        u_xlat31 = x_1694;
        let x_1695 : f32 = u_xlat80;
        let x_1696 : f32 = u_xlat31;
        let x_1699 : f32 = u_xlat6.x;
        u_xlat79 = ((x_1695 * x_1696) + x_1699);
      } else {
        let x_1702 : vec4<f32> = u_xlat2;
        let x_1705 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1708 : vec2<f32> = ((vec2<f32>(x_1702.x, x_1702.y) * vec2<f32>(x_1705.z, x_1705.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1709 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1708.x, x_1708.y, x_1709.z, x_1709.w);
        let x_1711 : vec4<f32> = u_xlat6;
        let x_1713 : vec2<f32> = floor(vec2<f32>(x_1711.x, x_1711.y));
        let x_1714 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1713.x, x_1713.y, x_1714.z, x_1714.w);
        let x_1716 : vec4<f32> = u_xlat2;
        let x_1719 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1722 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_1716.x, x_1716.y) * vec2<f32>(x_1719.z, x_1719.w)) + -(vec2<f32>(x_1722.x, x_1722.y)));
        let x_1726 : vec2<f32> = u_xlat56;
        u_xlat7 = (vec4<f32>(x_1726.x, x_1726.x, x_1726.y, x_1726.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1729 : vec4<f32> = u_xlat7;
        let x_1731 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1729.x, x_1729.x, x_1729.z, x_1729.z) * vec4<f32>(x_1731.x, x_1731.x, x_1731.z, x_1731.z));
        let x_1734 : vec4<f32> = u_xlat8;
        let x_1738 : vec2<f32> = (vec2<f32>(x_1734.y, x_1734.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1739 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1739.x, x_1738.x, x_1739.z, x_1738.y);
        let x_1741 : vec4<f32> = u_xlat8;
        let x_1744 : vec2<f32> = u_xlat56;
        let x_1746 : vec2<f32> = ((vec2<f32>(x_1741.x, x_1741.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1744));
        let x_1747 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1746.x, x_1747.y, x_1746.y, x_1747.w);
        let x_1749 : vec2<f32> = u_xlat56;
        let x_1751 : vec2<f32> = (-(x_1749) + vec2<f32>(1.0f, 1.0f));
        let x_1752 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1751.x, x_1751.y, x_1752.z, x_1752.w);
        let x_1754 : vec2<f32> = u_xlat56;
        u_xlat58 = min(x_1754, vec2<f32>(0.0f, 0.0f));
        let x_1756 : vec2<f32> = u_xlat58;
        let x_1758 : vec2<f32> = u_xlat58;
        let x_1760 : vec4<f32> = u_xlat8;
        let x_1762 : vec2<f32> = ((-(x_1756) * x_1758) + vec2<f32>(x_1760.x, x_1760.y));
        let x_1763 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1762.x, x_1762.y, x_1763.z, x_1763.w);
        let x_1765 : vec2<f32> = u_xlat56;
        u_xlat58 = max(x_1765, vec2<f32>(0.0f, 0.0f));
        let x_1768 : vec2<f32> = u_xlat58;
        let x_1770 : vec2<f32> = u_xlat58;
        let x_1772 : vec4<f32> = u_xlat7;
        let x_1774 : vec2<f32> = ((-(x_1768) * x_1770) + vec2<f32>(x_1772.y, x_1772.w));
        let x_1775 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_1774.x, x_1775.y, x_1774.y);
        let x_1777 : vec4<f32> = u_xlat8;
        let x_1779 : vec2<f32> = (vec2<f32>(x_1777.x, x_1777.y) + vec2<f32>(2.0f, 2.0f));
        let x_1780 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1779.x, x_1779.y, x_1780.z, x_1780.w);
        let x_1782 : vec3<f32> = u_xlat32;
        let x_1784 : vec2<f32> = (vec2<f32>(x_1782.x, x_1782.z) + vec2<f32>(2.0f, 2.0f));
        let x_1785 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1785.x, x_1784.x, x_1785.z, x_1784.y);
        let x_1788 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1788 * 0.08163200318813323975f);
        let x_1792 : vec4<f32> = u_xlat7;
        let x_1795 : vec3<f32> = (vec3<f32>(x_1792.z, x_1792.x, x_1792.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1796 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1795.x, x_1795.y, x_1795.z, x_1796.w);
        let x_1798 : vec4<f32> = u_xlat8;
        let x_1801 : vec2<f32> = (vec2<f32>(x_1798.x, x_1798.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1802 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1801.x, x_1801.y, x_1802.z, x_1802.w);
        let x_1805 : f32 = u_xlat11.y;
        u_xlat10.x = x_1805;
        let x_1807 : vec2<f32> = u_xlat56;
        let x_1814 : vec2<f32> = ((vec2<f32>(x_1807.x, x_1807.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1815 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1815.x, x_1814.x, x_1815.z, x_1814.y);
        let x_1817 : vec2<f32> = u_xlat56;
        let x_1821 : vec2<f32> = ((vec2<f32>(x_1817.x, x_1817.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1822 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1821.x, x_1822.y, x_1821.y, x_1822.w);
        let x_1825 : f32 = u_xlat7.x;
        u_xlat8.y = x_1825;
        let x_1828 : f32 = u_xlat9.y;
        u_xlat8.w = x_1828;
        let x_1830 : vec4<f32> = u_xlat8;
        let x_1831 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1830 + x_1831);
        let x_1833 : vec2<f32> = u_xlat56;
        let x_1836 : vec2<f32> = ((vec2<f32>(x_1833.y, x_1833.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1837 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1837.x, x_1836.x, x_1837.z, x_1836.y);
        let x_1839 : vec2<f32> = u_xlat56;
        let x_1842 : vec2<f32> = ((vec2<f32>(x_1839.y, x_1839.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1843 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1842.x, x_1843.y, x_1842.y, x_1843.w);
        let x_1846 : f32 = u_xlat7.y;
        u_xlat9.y = x_1846;
        let x_1848 : vec4<f32> = u_xlat9;
        let x_1849 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1848 + x_1849);
        let x_1851 : vec4<f32> = u_xlat8;
        let x_1852 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1851 / x_1852);
        let x_1854 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1854 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1860 : vec4<f32> = u_xlat9;
        let x_1861 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1860 / x_1861);
        let x_1863 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1863 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1865 : vec4<f32> = u_xlat8;
        let x_1868 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1865.w, x_1865.x, x_1865.y, x_1865.z) * vec4<f32>(x_1868.x, x_1868.x, x_1868.x, x_1868.x));
        let x_1871 : vec4<f32> = u_xlat9;
        let x_1874 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1871.x, x_1871.w, x_1871.y, x_1871.z) * vec4<f32>(x_1874.y, x_1874.y, x_1874.y, x_1874.y));
        let x_1877 : vec4<f32> = u_xlat8;
        let x_1878 : vec3<f32> = vec3<f32>(x_1877.y, x_1877.z, x_1877.w);
        let x_1879 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1878.x, x_1879.y, x_1878.y, x_1878.z);
        let x_1882 : f32 = u_xlat9.x;
        u_xlat11.y = x_1882;
        let x_1884 : vec4<f32> = u_xlat6;
        let x_1887 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1890 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1884.x, x_1884.y, x_1884.x, x_1884.y) * vec4<f32>(x_1887.x, x_1887.y, x_1887.x, x_1887.y)) + vec4<f32>(x_1890.x, x_1890.y, x_1890.z, x_1890.y));
        let x_1893 : vec4<f32> = u_xlat6;
        let x_1896 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1899 : vec4<f32> = u_xlat11;
        u_xlat56 = ((vec2<f32>(x_1893.x, x_1893.y) * vec2<f32>(x_1896.x, x_1896.y)) + vec2<f32>(x_1899.w, x_1899.y));
        let x_1903 : f32 = u_xlat11.y;
        u_xlat8.y = x_1903;
        let x_1906 : f32 = u_xlat9.z;
        u_xlat11.y = x_1906;
        let x_1908 : vec4<f32> = u_xlat6;
        let x_1911 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1914 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1908.x, x_1908.y, x_1908.x, x_1908.y) * vec4<f32>(x_1911.x, x_1911.y, x_1911.x, x_1911.y)) + vec4<f32>(x_1914.x, x_1914.y, x_1914.z, x_1914.y));
        let x_1917 : vec4<f32> = u_xlat6;
        let x_1920 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1923 : vec4<f32> = u_xlat11;
        let x_1925 : vec2<f32> = ((vec2<f32>(x_1917.x, x_1917.y) * vec2<f32>(x_1920.x, x_1920.y)) + vec2<f32>(x_1923.w, x_1923.y));
        let x_1926 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1925.x, x_1925.y, x_1926.z, x_1926.w);
        let x_1929 : f32 = u_xlat11.y;
        u_xlat8.z = x_1929;
        let x_1932 : vec4<f32> = u_xlat6;
        let x_1935 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1938 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1932.x, x_1932.y, x_1932.x, x_1932.y) * vec4<f32>(x_1935.x, x_1935.y, x_1935.x, x_1935.y)) + vec4<f32>(x_1938.x, x_1938.y, x_1938.x, x_1938.z));
        let x_1942 : f32 = u_xlat9.w;
        u_xlat11.y = x_1942;
        let x_1945 : vec4<f32> = u_xlat6;
        let x_1948 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1951 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1945.x, x_1945.y, x_1945.x, x_1945.y) * vec4<f32>(x_1948.x, x_1948.y, x_1948.x, x_1948.y)) + vec4<f32>(x_1951.x, x_1951.y, x_1951.z, x_1951.y));
        let x_1955 : vec4<f32> = u_xlat6;
        let x_1958 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1961 : vec4<f32> = u_xlat11;
        let x_1963 : vec2<f32> = ((vec2<f32>(x_1955.x, x_1955.y) * vec2<f32>(x_1958.x, x_1958.y)) + vec2<f32>(x_1961.w, x_1961.y));
        let x_1964 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_1963.x, x_1963.y, x_1964.z);
        let x_1967 : f32 = u_xlat11.y;
        u_xlat8.w = x_1967;
        let x_1970 : vec4<f32> = u_xlat6;
        let x_1973 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1976 : vec4<f32> = u_xlat8;
        u_xlat64 = ((vec2<f32>(x_1970.x, x_1970.y) * vec2<f32>(x_1973.x, x_1973.y)) + vec2<f32>(x_1976.x, x_1976.w));
        let x_1979 : vec4<f32> = u_xlat11;
        let x_1980 : vec3<f32> = vec3<f32>(x_1979.x, x_1979.z, x_1979.w);
        let x_1981 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1980.x, x_1981.y, x_1980.y, x_1980.z);
        let x_1983 : vec4<f32> = u_xlat6;
        let x_1986 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1989 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1983.x, x_1983.y, x_1983.x, x_1983.y) * vec4<f32>(x_1986.x, x_1986.y, x_1986.x, x_1986.y)) + vec4<f32>(x_1989.x, x_1989.y, x_1989.z, x_1989.y));
        let x_1993 : vec4<f32> = u_xlat6;
        let x_1996 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1999 : vec4<f32> = u_xlat9;
        u_xlat59 = ((vec2<f32>(x_1993.x, x_1993.y) * vec2<f32>(x_1996.x, x_1996.y)) + vec2<f32>(x_1999.w, x_1999.y));
        let x_2003 : f32 = u_xlat8.x;
        u_xlat9.x = x_2003;
        let x_2005 : vec4<f32> = u_xlat6;
        let x_2008 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_2011 : vec4<f32> = u_xlat9;
        let x_2013 : vec2<f32> = ((vec2<f32>(x_2005.x, x_2005.y) * vec2<f32>(x_2008.x, x_2008.y)) + vec2<f32>(x_2011.x, x_2011.y));
        let x_2014 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_2013.x, x_2013.y, x_2014.z, x_2014.w);
        let x_2017 : vec4<f32> = u_xlat7;
        let x_2019 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_2017.x, x_2017.x, x_2017.x, x_2017.x) * x_2019);
        let x_2022 : vec4<f32> = u_xlat7;
        let x_2024 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_2022.y, x_2022.y, x_2022.y, x_2022.y) * x_2024);
        let x_2027 : vec4<f32> = u_xlat7;
        let x_2029 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_2027.z, x_2027.z, x_2027.z, x_2027.z) * x_2029);
        let x_2031 : vec4<f32> = u_xlat7;
        let x_2033 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_2031.w, x_2031.w, x_2031.w, x_2031.w) * x_2033);
        let x_2036 : vec4<f32> = u_xlat12;
        let x_2037 : vec2<f32> = vec2<f32>(x_2036.x, x_2036.y);
        let x_2039 : f32 = u_xlat2.z;
        txVec13 = vec3<f32>(x_2037.x, x_2037.y, x_2039);
        let x_2046 : vec3<f32> = txVec13;
        let x_2048 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2046.xy, x_2046.z);
        u_xlat80 = x_2048;
        let x_2050 : vec4<f32> = u_xlat12;
        let x_2051 : vec2<f32> = vec2<f32>(x_2050.z, x_2050.w);
        let x_2053 : f32 = u_xlat2.z;
        txVec14 = vec3<f32>(x_2051.x, x_2051.y, x_2053);
        let x_2060 : vec3<f32> = txVec14;
        let x_2062 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2060.xy, x_2060.z);
        u_xlat8.x = x_2062;
        let x_2065 : f32 = u_xlat8.x;
        let x_2067 : f32 = u_xlat17.y;
        u_xlat8.x = (x_2065 * x_2067);
        let x_2071 : f32 = u_xlat17.x;
        let x_2072 : f32 = u_xlat80;
        let x_2075 : f32 = u_xlat8.x;
        u_xlat80 = ((x_2071 * x_2072) + x_2075);
        let x_2078 : vec2<f32> = u_xlat56;
        let x_2080 : f32 = u_xlat2.z;
        txVec15 = vec3<f32>(x_2078.x, x_2078.y, x_2080);
        let x_2087 : vec3<f32> = txVec15;
        let x_2089 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2087.xy, x_2087.z);
        u_xlat56.x = x_2089;
        let x_2092 : f32 = u_xlat17.z;
        let x_2094 : f32 = u_xlat56.x;
        let x_2096 : f32 = u_xlat80;
        u_xlat80 = ((x_2092 * x_2094) + x_2096);
        let x_2099 : vec4<f32> = u_xlat15;
        let x_2100 : vec2<f32> = vec2<f32>(x_2099.x, x_2099.y);
        let x_2102 : f32 = u_xlat2.z;
        txVec16 = vec3<f32>(x_2100.x, x_2100.y, x_2102);
        let x_2109 : vec3<f32> = txVec16;
        let x_2111 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2109.xy, x_2109.z);
        u_xlat56.x = x_2111;
        let x_2114 : f32 = u_xlat17.w;
        let x_2116 : f32 = u_xlat56.x;
        let x_2118 : f32 = u_xlat80;
        u_xlat80 = ((x_2114 * x_2116) + x_2118);
        let x_2121 : vec4<f32> = u_xlat13;
        let x_2122 : vec2<f32> = vec2<f32>(x_2121.x, x_2121.y);
        let x_2124 : f32 = u_xlat2.z;
        txVec17 = vec3<f32>(x_2122.x, x_2122.y, x_2124);
        let x_2131 : vec3<f32> = txVec17;
        let x_2133 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2131.xy, x_2131.z);
        u_xlat56.x = x_2133;
        let x_2136 : f32 = u_xlat18.x;
        let x_2138 : f32 = u_xlat56.x;
        let x_2140 : f32 = u_xlat80;
        u_xlat80 = ((x_2136 * x_2138) + x_2140);
        let x_2143 : vec4<f32> = u_xlat13;
        let x_2144 : vec2<f32> = vec2<f32>(x_2143.z, x_2143.w);
        let x_2146 : f32 = u_xlat2.z;
        txVec18 = vec3<f32>(x_2144.x, x_2144.y, x_2146);
        let x_2153 : vec3<f32> = txVec18;
        let x_2155 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2153.xy, x_2153.z);
        u_xlat56.x = x_2155;
        let x_2158 : f32 = u_xlat18.y;
        let x_2160 : f32 = u_xlat56.x;
        let x_2162 : f32 = u_xlat80;
        u_xlat80 = ((x_2158 * x_2160) + x_2162);
        let x_2165 : vec4<f32> = u_xlat14;
        let x_2166 : vec2<f32> = vec2<f32>(x_2165.x, x_2165.y);
        let x_2168 : f32 = u_xlat2.z;
        txVec19 = vec3<f32>(x_2166.x, x_2166.y, x_2168);
        let x_2175 : vec3<f32> = txVec19;
        let x_2177 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2175.xy, x_2175.z);
        u_xlat56.x = x_2177;
        let x_2180 : f32 = u_xlat18.z;
        let x_2182 : f32 = u_xlat56.x;
        let x_2184 : f32 = u_xlat80;
        u_xlat80 = ((x_2180 * x_2182) + x_2184);
        let x_2187 : vec4<f32> = u_xlat15;
        let x_2188 : vec2<f32> = vec2<f32>(x_2187.z, x_2187.w);
        let x_2190 : f32 = u_xlat2.z;
        txVec20 = vec3<f32>(x_2188.x, x_2188.y, x_2190);
        let x_2197 : vec3<f32> = txVec20;
        let x_2199 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2197.xy, x_2197.z);
        u_xlat56.x = x_2199;
        let x_2202 : f32 = u_xlat18.w;
        let x_2204 : f32 = u_xlat56.x;
        let x_2206 : f32 = u_xlat80;
        u_xlat80 = ((x_2202 * x_2204) + x_2206);
        let x_2209 : vec4<f32> = u_xlat16;
        let x_2210 : vec2<f32> = vec2<f32>(x_2209.x, x_2209.y);
        let x_2212 : f32 = u_xlat2.z;
        txVec21 = vec3<f32>(x_2210.x, x_2210.y, x_2212);
        let x_2219 : vec3<f32> = txVec21;
        let x_2221 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2219.xy, x_2219.z);
        u_xlat56.x = x_2221;
        let x_2224 : f32 = u_xlat19.x;
        let x_2226 : f32 = u_xlat56.x;
        let x_2228 : f32 = u_xlat80;
        u_xlat80 = ((x_2224 * x_2226) + x_2228);
        let x_2231 : vec4<f32> = u_xlat16;
        let x_2232 : vec2<f32> = vec2<f32>(x_2231.z, x_2231.w);
        let x_2234 : f32 = u_xlat2.z;
        txVec22 = vec3<f32>(x_2232.x, x_2232.y, x_2234);
        let x_2241 : vec3<f32> = txVec22;
        let x_2243 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2241.xy, x_2241.z);
        u_xlat56.x = x_2243;
        let x_2246 : f32 = u_xlat19.y;
        let x_2248 : f32 = u_xlat56.x;
        let x_2250 : f32 = u_xlat80;
        u_xlat80 = ((x_2246 * x_2248) + x_2250);
        let x_2253 : vec3<f32> = u_xlat33;
        let x_2254 : vec2<f32> = vec2<f32>(x_2253.x, x_2253.y);
        let x_2256 : f32 = u_xlat2.z;
        txVec23 = vec3<f32>(x_2254.x, x_2254.y, x_2256);
        let x_2263 : vec3<f32> = txVec23;
        let x_2265 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2263.xy, x_2263.z);
        u_xlat56.x = x_2265;
        let x_2268 : f32 = u_xlat19.z;
        let x_2270 : f32 = u_xlat56.x;
        let x_2272 : f32 = u_xlat80;
        u_xlat80 = ((x_2268 * x_2270) + x_2272);
        let x_2275 : vec2<f32> = u_xlat64;
        let x_2277 : f32 = u_xlat2.z;
        txVec24 = vec3<f32>(x_2275.x, x_2275.y, x_2277);
        let x_2284 : vec3<f32> = txVec24;
        let x_2286 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2284.xy, x_2284.z);
        u_xlat56.x = x_2286;
        let x_2289 : f32 = u_xlat19.w;
        let x_2291 : f32 = u_xlat56.x;
        let x_2293 : f32 = u_xlat80;
        u_xlat80 = ((x_2289 * x_2291) + x_2293);
        let x_2296 : vec4<f32> = u_xlat11;
        let x_2297 : vec2<f32> = vec2<f32>(x_2296.x, x_2296.y);
        let x_2299 : f32 = u_xlat2.z;
        txVec25 = vec3<f32>(x_2297.x, x_2297.y, x_2299);
        let x_2306 : vec3<f32> = txVec25;
        let x_2308 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2306.xy, x_2306.z);
        u_xlat56.x = x_2308;
        let x_2311 : f32 = u_xlat7.x;
        let x_2313 : f32 = u_xlat56.x;
        let x_2315 : f32 = u_xlat80;
        u_xlat80 = ((x_2311 * x_2313) + x_2315);
        let x_2318 : vec4<f32> = u_xlat11;
        let x_2319 : vec2<f32> = vec2<f32>(x_2318.z, x_2318.w);
        let x_2321 : f32 = u_xlat2.z;
        txVec26 = vec3<f32>(x_2319.x, x_2319.y, x_2321);
        let x_2328 : vec3<f32> = txVec26;
        let x_2330 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2328.xy, x_2328.z);
        u_xlat56.x = x_2330;
        let x_2333 : f32 = u_xlat7.y;
        let x_2335 : f32 = u_xlat56.x;
        let x_2337 : f32 = u_xlat80;
        u_xlat80 = ((x_2333 * x_2335) + x_2337);
        let x_2340 : vec2<f32> = u_xlat59;
        let x_2342 : f32 = u_xlat2.z;
        txVec27 = vec3<f32>(x_2340.x, x_2340.y, x_2342);
        let x_2349 : vec3<f32> = txVec27;
        let x_2351 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2349.xy, x_2349.z);
        u_xlat56.x = x_2351;
        let x_2354 : f32 = u_xlat7.z;
        let x_2356 : f32 = u_xlat56.x;
        let x_2358 : f32 = u_xlat80;
        u_xlat80 = ((x_2354 * x_2356) + x_2358);
        let x_2361 : vec4<f32> = u_xlat6;
        let x_2362 : vec2<f32> = vec2<f32>(x_2361.x, x_2361.y);
        let x_2364 : f32 = u_xlat2.z;
        txVec28 = vec3<f32>(x_2362.x, x_2362.y, x_2364);
        let x_2371 : vec3<f32> = txVec28;
        let x_2373 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2371.xy, x_2371.z);
        u_xlat6.x = x_2373;
        let x_2376 : f32 = u_xlat7.w;
        let x_2378 : f32 = u_xlat6.x;
        let x_2380 : f32 = u_xlat80;
        u_xlat79 = ((x_2376 * x_2378) + x_2380);
      }
    }
  } else {
    let x_2384 : vec4<f32> = u_xlat2;
    let x_2385 : vec2<f32> = vec2<f32>(x_2384.x, x_2384.y);
    let x_2387 : f32 = u_xlat2.z;
    txVec29 = vec3<f32>(x_2385.x, x_2385.y, x_2387);
    let x_2394 : vec3<f32> = txVec29;
    let x_2396 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2394.xy, x_2394.z);
    u_xlat79 = x_2396;
  }
  let x_2398 : f32 = x_833.x_MainLightShadowParams.x;
  u_xlat2.x = (-(x_2398) + 1.0f);
  let x_2402 : f32 = u_xlat79;
  let x_2404 : f32 = x_833.x_MainLightShadowParams.x;
  let x_2407 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_2402 * x_2404) + x_2407);
  let x_2412 : f32 = u_xlat2.z;
  u_xlatb27 = (0.0f >= x_2412);
  let x_2416 : f32 = u_xlat2.z;
  u_xlatb52 = (x_2416 >= 1.0f);
  let x_2418 : bool = u_xlatb52;
  let x_2419 : bool = u_xlatb27;
  u_xlatb27 = (x_2418 | x_2419);
  let x_2421 : bool = u_xlatb27;
  if (x_2421) {
    x_2423 = 1.0f;
  } else {
    let x_2428 : f32 = u_xlat2.x;
    x_2423 = x_2428;
  }
  let x_2429 : f32 = x_2423;
  u_xlat2.x = x_2429;
  let x_2431 : vec3<f32> = vs_TEXCOORD7;
  let x_2434 : vec3<f32> = x_112.x_WorldSpaceCameraPos;
  let x_2436 : vec3<f32> = (x_2431 + -(x_2434));
  let x_2437 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2436.x, x_2436.y, x_2436.z, x_2437.w);
  let x_2439 : vec4<f32> = u_xlat6;
  let x_2441 : vec4<f32> = u_xlat6;
  u_xlat27.x = dot(vec3<f32>(x_2439.x, x_2439.y, x_2439.z), vec3<f32>(x_2441.x, x_2441.y, x_2441.z));
  let x_2447 : f32 = u_xlat27.x;
  let x_2449 : f32 = x_833.x_MainLightShadowParams.z;
  let x_2452 : f32 = x_833.x_MainLightShadowParams.w;
  u_xlat52 = ((x_2447 * x_2449) + x_2452);
  let x_2454 : f32 = u_xlat52;
  u_xlat52 = clamp(x_2454, 0.0f, 1.0f);
  let x_2457 : f32 = u_xlat2.x;
  u_xlat79 = (-(x_2457) + 1.0f);
  let x_2460 : f32 = u_xlat52;
  let x_2461 : f32 = u_xlat79;
  let x_2464 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_2460 * x_2461) + x_2464);
  let x_2469 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_2469;
  let x_2472 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_2472;
  let x_2475 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_2475;
  let x_2477 : vec4<f32> = u_xlat6;
  let x_2480 : vec4<f32> = u_xlat1;
  u_xlat52 = dot(-(vec3<f32>(x_2477.x, x_2477.y, x_2477.z)), vec3<f32>(x_2480.x, x_2480.y, x_2480.z));
  let x_2483 : f32 = u_xlat52;
  let x_2484 : f32 = u_xlat52;
  u_xlat52 = (x_2483 + x_2484);
  let x_2486 : vec4<f32> = u_xlat1;
  let x_2488 : f32 = u_xlat52;
  let x_2492 : vec4<f32> = u_xlat6;
  let x_2495 : vec3<f32> = ((vec3<f32>(x_2486.x, x_2486.y, x_2486.z) * -(vec3<f32>(x_2488, x_2488, x_2488))) + -(vec3<f32>(x_2492.x, x_2492.y, x_2492.z)));
  let x_2496 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2495.x, x_2495.y, x_2495.z, x_2496.w);
  let x_2498 : vec4<f32> = u_xlat1;
  let x_2500 : vec4<f32> = u_xlat6;
  u_xlat52 = dot(vec3<f32>(x_2498.x, x_2498.y, x_2498.z), vec3<f32>(x_2500.x, x_2500.y, x_2500.z));
  let x_2503 : f32 = u_xlat52;
  u_xlat52 = clamp(x_2503, 0.0f, 1.0f);
  let x_2505 : f32 = u_xlat52;
  u_xlat52 = (-(x_2505) + 1.0f);
  let x_2508 : f32 = u_xlat52;
  let x_2509 : f32 = u_xlat52;
  u_xlat52 = (x_2508 * x_2509);
  let x_2511 : f32 = u_xlat52;
  let x_2512 : f32 = u_xlat52;
  u_xlat52 = (x_2511 * x_2512);
  let x_2515 : f32 = u_xlat0.x;
  u_xlat79 = ((-(x_2515) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2522 : f32 = u_xlat0.x;
  let x_2523 : f32 = u_xlat79;
  u_xlat0.x = (x_2522 * x_2523);
  let x_2527 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2527 * 6.0f);
  let x_2539 : vec4<f32> = u_xlat7;
  let x_2542 : f32 = u_xlat0.x;
  let x_2543 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2539.x, x_2539.y, x_2539.z), x_2542);
  u_xlat7 = x_2543;
  let x_2545 : f32 = u_xlat7.w;
  u_xlat0.x = (x_2545 + -1.0f);
  let x_2549 : f32 = x_1013.unity_SpecCube0_HDR.w;
  let x_2551 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2549 * x_2551) + 1.0f);
  let x_2556 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2556, 0.0f);
  let x_2560 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2560);
  let x_2564 : f32 = u_xlat0.x;
  let x_2566 : f32 = x_1013.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2564 * x_2566);
  let x_2570 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2570);
  let x_2574 : f32 = u_xlat0.x;
  let x_2576 : f32 = x_1013.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2574 * x_2576);
  let x_2579 : vec4<f32> = u_xlat7;
  let x_2581 : vec3<f32> = u_xlat0;
  let x_2583 : vec3<f32> = (vec3<f32>(x_2579.x, x_2579.y, x_2579.z) * vec3<f32>(x_2581.x, x_2581.x, x_2581.x));
  let x_2584 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2583.x, x_2583.y, x_2583.z, x_2584.w);
  let x_2586 : f32 = u_xlat76;
  let x_2588 : f32 = u_xlat76;
  let x_2592 : vec2<f32> = ((vec2<f32>(x_2586, x_2586) * vec2<f32>(x_2588, x_2588)) + vec2<f32>(-1.0f, 1.0f));
  let x_2593 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2592.x, x_2592.y, x_2593.z, x_2593.w);
  let x_2596 : f32 = u_xlat8.y;
  u_xlat0.x = (1.0f / x_2596);
  let x_2599 : vec4<f32> = u_xlat5;
  let x_2602 : f32 = u_xlat50;
  u_xlat33 = (-(vec3<f32>(x_2599.x, x_2599.y, x_2599.z)) + vec3<f32>(x_2602, x_2602, x_2602));
  let x_2605 : f32 = u_xlat52;
  let x_2607 : vec3<f32> = u_xlat33;
  let x_2609 : vec4<f32> = u_xlat5;
  u_xlat33 = ((vec3<f32>(x_2605, x_2605, x_2605) * x_2607) + vec3<f32>(x_2609.x, x_2609.y, x_2609.z));
  let x_2612 : vec3<f32> = u_xlat0;
  let x_2614 : vec3<f32> = u_xlat33;
  u_xlat33 = (vec3<f32>(x_2612.x, x_2612.x, x_2612.x) * x_2614);
  let x_2616 : vec4<f32> = u_xlat7;
  let x_2618 : vec3<f32> = u_xlat33;
  let x_2619 : vec3<f32> = (vec3<f32>(x_2616.x, x_2616.y, x_2616.z) * x_2618);
  let x_2620 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2619.x, x_2619.y, x_2619.z, x_2620.w);
  let x_2622 : vec4<f32> = u_xlat3;
  let x_2624 : vec4<f32> = u_xlat4;
  let x_2627 : vec4<f32> = u_xlat7;
  let x_2629 : vec3<f32> = ((vec3<f32>(x_2622.x, x_2622.y, x_2622.z) * vec3<f32>(x_2624.x, x_2624.y, x_2624.z)) + vec3<f32>(x_2627.x, x_2627.y, x_2627.z));
  let x_2630 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2629.x, x_2629.y, x_2629.z, x_2630.w);
  let x_2633 : f32 = u_xlat2.x;
  let x_2635 : f32 = x_1013.unity_LightData.z;
  u_xlat0.x = (x_2633 * x_2635);
  let x_2638 : vec4<f32> = u_xlat1;
  let x_2641 : vec4<f32> = x_112.x_MainLightPosition;
  u_xlat50 = dot(vec3<f32>(x_2638.x, x_2638.y, x_2638.z), vec3<f32>(x_2641.x, x_2641.y, x_2641.z));
  let x_2644 : f32 = u_xlat50;
  u_xlat50 = clamp(x_2644, 0.0f, 1.0f);
  let x_2646 : f32 = u_xlat50;
  let x_2648 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2646 * x_2648);
  let x_2651 : vec3<f32> = u_xlat0;
  let x_2654 : vec4<f32> = x_112.x_MainLightColor;
  let x_2656 : vec3<f32> = (vec3<f32>(x_2651.x, x_2651.x, x_2651.x) * vec3<f32>(x_2654.x, x_2654.y, x_2654.z));
  let x_2657 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2656.x, x_2656.y, x_2656.z, x_2657.w);
  let x_2659 : vec4<f32> = u_xlat6;
  let x_2662 : vec4<f32> = x_112.x_MainLightPosition;
  u_xlat33 = (vec3<f32>(x_2659.x, x_2659.y, x_2659.z) + vec3<f32>(x_2662.x, x_2662.y, x_2662.z));
  let x_2665 : vec3<f32> = u_xlat33;
  let x_2666 : vec3<f32> = u_xlat33;
  u_xlat0.x = dot(x_2665, x_2666);
  let x_2670 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2670, 1.17549435e-38f);
  let x_2675 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_2675);
  let x_2678 : vec3<f32> = u_xlat0;
  let x_2680 : vec3<f32> = u_xlat33;
  u_xlat33 = (vec3<f32>(x_2678.x, x_2678.x, x_2678.x) * x_2680);
  let x_2682 : vec4<f32> = u_xlat1;
  let x_2684 : vec3<f32> = u_xlat33;
  u_xlat0.x = dot(vec3<f32>(x_2682.x, x_2682.y, x_2682.z), x_2684);
  let x_2688 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_2688, 0.0f, 1.0f);
  let x_2692 : vec4<f32> = x_112.x_MainLightPosition;
  let x_2694 : vec3<f32> = u_xlat33;
  u_xlat0.z = dot(vec3<f32>(x_2692.x, x_2692.y, x_2692.z), x_2694);
  let x_2698 : f32 = u_xlat0.z;
  u_xlat0.z = clamp(x_2698, 0.0f, 1.0f);
  let x_2701 : vec3<f32> = u_xlat0;
  let x_2703 : vec3<f32> = u_xlat0;
  let x_2705 : vec2<f32> = (vec2<f32>(x_2701.x, x_2701.z) * vec2<f32>(x_2703.x, x_2703.z));
  let x_2706 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2705.x, x_2706.y, x_2705.y);
  let x_2709 : f32 = u_xlat0.x;
  let x_2711 : f32 = u_xlat8.x;
  u_xlat0.x = ((x_2709 * x_2711) + 1.00001001358032226562f);
  let x_2717 : f32 = u_xlat0.x;
  let x_2719 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2717 * x_2719);
  let x_2723 : f32 = u_xlat0.z;
  u_xlat50 = max(x_2723, 0.10000000149011611938f);
  let x_2726 : f32 = u_xlat50;
  let x_2728 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2726 * x_2728);
  let x_2731 : f32 = u_xlat77;
  let x_2733 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2731 * x_2733);
  let x_2736 : f32 = u_xlat78;
  let x_2738 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2736 / x_2738);
  let x_2741 : vec4<f32> = u_xlat5;
  let x_2743 : vec3<f32> = u_xlat0;
  let x_2746 : vec4<f32> = u_xlat4;
  u_xlat33 = ((vec3<f32>(x_2741.x, x_2741.y, x_2741.z) * vec3<f32>(x_2743.x, x_2743.x, x_2743.x)) + vec3<f32>(x_2746.x, x_2746.y, x_2746.z));
  let x_2749 : vec4<f32> = u_xlat7;
  let x_2751 : vec3<f32> = u_xlat33;
  let x_2752 : vec3<f32> = (vec3<f32>(x_2749.x, x_2749.y, x_2749.z) * x_2751);
  let x_2753 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2752.x, x_2752.y, x_2752.z, x_2753.w);
  let x_2756 : f32 = x_112.x_AdditionalLightsCount.x;
  let x_2758 : f32 = x_1013.unity_LightData.y;
  u_xlat0.x = min(x_2756, x_2758);
  let x_2763 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_2763));
  let x_2767 : f32 = u_xlat27.x;
  let x_2769 : f32 = x_833.x_AdditionalShadowFadeParams.x;
  let x_2772 : f32 = x_833.x_AdditionalShadowFadeParams.y;
  u_xlat50 = ((x_2767 * x_2769) + x_2772);
  let x_2774 : f32 = u_xlat50;
  u_xlat50 = clamp(x_2774, 0.0f, 1.0f);
  u_xlat2.x = 0.0f;
  u_xlat2.y = 0.0f;
  u_xlat2.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2786 : u32 = u_xlatu_loop_1;
    let x_2787 : u32 = u_xlatu0;
    if ((x_2786 < x_2787)) {
    } else {
      break;
    }
    let x_2790 : u32 = u_xlatu_loop_1;
    u_xlatu79 = (x_2790 >> 2u);
    let x_2793 : u32 = u_xlatu_loop_1;
    u_xlati80 = bitcast<i32>((x_2793 & 3u));
    let x_2796 : u32 = u_xlatu79;
    let x_2799 : vec4<f32> = x_1013.unity_LightIndices[bitcast<i32>(x_2796)];
    let x_2809 : i32 = u_xlati80;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2814 : vec4<u32> = indexable[x_2809];
    u_xlat79 = dot(x_2799, bitcast<vec4<f32>>(x_2814));
    let x_2818 : f32 = u_xlat79;
    u_xlati79 = i32(x_2818);
    let x_2820 : vec3<f32> = vs_TEXCOORD7;
    let x_2831 : i32 = u_xlati79;
    let x_2833 : vec4<f32> = x_2830.x_AdditionalLightsPosition[x_2831];
    let x_2836 : i32 = u_xlati79;
    let x_2838 : vec4<f32> = x_2830.x_AdditionalLightsPosition[x_2836];
    u_xlat33 = ((-(x_2820) * vec3<f32>(x_2833.w, x_2833.w, x_2833.w)) + vec3<f32>(x_2838.x, x_2838.y, x_2838.z));
    let x_2841 : vec3<f32> = u_xlat33;
    let x_2842 : vec3<f32> = u_xlat33;
    u_xlat80 = dot(x_2841, x_2842);
    let x_2844 : f32 = u_xlat80;
    u_xlat80 = max(x_2844, 0.00006103515625f);
    let x_2847 : f32 = u_xlat80;
    u_xlat81 = inverseSqrt(x_2847);
    let x_2849 : f32 = u_xlat81;
    let x_2851 : vec3<f32> = u_xlat33;
    let x_2852 : vec3<f32> = (vec3<f32>(x_2849, x_2849, x_2849) * x_2851);
    let x_2853 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2852.x, x_2852.y, x_2852.z, x_2853.w);
    let x_2856 : f32 = u_xlat80;
    u_xlat82 = (1.0f / x_2856);
    let x_2858 : f32 = u_xlat80;
    let x_2859 : i32 = u_xlati79;
    let x_2861 : f32 = x_2830.x_AdditionalLightsAttenuation[x_2859].x;
    u_xlat80 = (x_2858 * x_2861);
    let x_2863 : f32 = u_xlat80;
    let x_2865 : f32 = u_xlat80;
    u_xlat80 = ((-(x_2863) * x_2865) + 1.0f);
    let x_2868 : f32 = u_xlat80;
    u_xlat80 = max(x_2868, 0.0f);
    let x_2870 : f32 = u_xlat80;
    let x_2871 : f32 = u_xlat80;
    u_xlat80 = (x_2870 * x_2871);
    let x_2873 : f32 = u_xlat80;
    let x_2874 : f32 = u_xlat82;
    u_xlat80 = (x_2873 * x_2874);
    let x_2876 : i32 = u_xlati79;
    let x_2878 : vec4<f32> = x_2830.x_AdditionalLightsSpotDir[x_2876];
    let x_2880 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_2878.x, x_2878.y, x_2878.z), vec3<f32>(x_2880.x, x_2880.y, x_2880.z));
    let x_2883 : f32 = u_xlat82;
    let x_2884 : i32 = u_xlati79;
    let x_2886 : f32 = x_2830.x_AdditionalLightsAttenuation[x_2884].z;
    let x_2888 : i32 = u_xlati79;
    let x_2890 : f32 = x_2830.x_AdditionalLightsAttenuation[x_2888].w;
    u_xlat82 = ((x_2883 * x_2886) + x_2890);
    let x_2892 : f32 = u_xlat82;
    u_xlat82 = clamp(x_2892, 0.0f, 1.0f);
    let x_2894 : f32 = u_xlat82;
    let x_2895 : f32 = u_xlat82;
    u_xlat82 = (x_2894 * x_2895);
    let x_2897 : f32 = u_xlat80;
    let x_2898 : f32 = u_xlat82;
    u_xlat80 = (x_2897 * x_2898);
    let x_2901 : i32 = u_xlati79;
    let x_2903 : f32 = x_833.x_AdditionalShadowParams[x_2901].w;
    u_xlati82 = i32(x_2903);
    let x_2906 : i32 = u_xlati82;
    u_xlatb84 = (x_2906 >= 0i);
    let x_2908 : bool = u_xlatb84;
    if (x_2908) {
      let x_2912 : i32 = u_xlati79;
      let x_2914 : f32 = x_833.x_AdditionalShadowParams[x_2912].z;
      u_xlatb84 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2914, x_2914, x_2914, x_2914))));
      let x_2918 : bool = u_xlatb84;
      if (x_2918) {
        let x_2922 : vec4<f32> = u_xlat9;
        let x_2925 : vec4<f32> = u_xlat9;
        let x_2928 : vec4<bool> = (abs(vec4<f32>(x_2922.z, x_2922.z, x_2922.y, x_2922.z)) >= abs(vec4<f32>(x_2925.x, x_2925.y, x_2925.x, x_2925.x)));
        let x_2930 : vec3<bool> = vec3<bool>(x_2928.x, x_2928.y, x_2928.z);
        let x_2931 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_2930.x, x_2930.y, x_2930.z, x_2931.w);
        let x_2934 : bool = u_xlatb10.y;
        let x_2936 : bool = u_xlatb10.x;
        u_xlatb84 = (x_2934 & x_2936);
        let x_2938 : vec4<f32> = u_xlat9;
        let x_2941 : vec4<bool> = (-(vec4<f32>(x_2938.z, x_2938.y, x_2938.z, x_2938.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2942 : vec3<bool> = vec3<bool>(x_2941.x, x_2941.y, x_2941.w);
        let x_2943 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_2942.x, x_2942.y, x_2943.z, x_2942.z);
        let x_2946 : bool = u_xlatb10.x;
        u_xlat10.x = select(4.0f, 5.0f, x_2946);
        let x_2951 : bool = u_xlatb10.y;
        u_xlat10.y = select(2.0f, 3.0f, x_2951);
        let x_2956 : bool = u_xlatb10.w;
        u_xlat85 = select(0.0f, 1.0f, x_2956);
        let x_2960 : bool = u_xlatb10.z;
        if (x_2960) {
          let x_2965 : f32 = u_xlat10.y;
          x_2961 = x_2965;
        } else {
          let x_2967 : f32 = u_xlat85;
          x_2961 = x_2967;
        }
        let x_2968 : f32 = x_2961;
        u_xlat35 = x_2968;
        let x_2970 : bool = u_xlatb84;
        if (x_2970) {
          let x_2975 : f32 = u_xlat10.x;
          x_2971 = x_2975;
        } else {
          let x_2977 : f32 = u_xlat35;
          x_2971 = x_2977;
        }
        let x_2978 : f32 = x_2971;
        u_xlat84 = x_2978;
        let x_2979 : i32 = u_xlati79;
        let x_2981 : f32 = x_833.x_AdditionalShadowParams[x_2979].w;
        u_xlat10.x = trunc(x_2981);
        let x_2984 : f32 = u_xlat84;
        let x_2986 : f32 = u_xlat10.x;
        u_xlat84 = (x_2984 + x_2986);
        let x_2988 : f32 = u_xlat84;
        u_xlati82 = i32(x_2988);
      }
      let x_2990 : i32 = u_xlati82;
      u_xlati82 = (x_2990 << bitcast<u32>(2i));
      let x_2992 : vec3<f32> = vs_TEXCOORD7;
      let x_2994 : i32 = u_xlati82;
      let x_2997 : i32 = u_xlati82;
      let x_3001 : vec4<f32> = x_833.x_AdditionalLightsWorldToShadow[((x_2994 + 1i) / 4i)][((x_2997 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_2992.y, x_2992.y, x_2992.y, x_2992.y) * x_3001);
      let x_3003 : i32 = u_xlati82;
      let x_3005 : i32 = u_xlati82;
      let x_3008 : vec4<f32> = x_833.x_AdditionalLightsWorldToShadow[(x_3003 / 4i)][(x_3005 % 4i)];
      let x_3009 : vec3<f32> = vs_TEXCOORD7;
      let x_3012 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_3008 * vec4<f32>(x_3009.x, x_3009.x, x_3009.x, x_3009.x)) + x_3012);
      let x_3014 : i32 = u_xlati82;
      let x_3017 : i32 = u_xlati82;
      let x_3021 : vec4<f32> = x_833.x_AdditionalLightsWorldToShadow[((x_3014 + 2i) / 4i)][((x_3017 + 2i) % 4i)];
      let x_3022 : vec3<f32> = vs_TEXCOORD7;
      let x_3025 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_3021 * vec4<f32>(x_3022.z, x_3022.z, x_3022.z, x_3022.z)) + x_3025);
      let x_3027 : vec4<f32> = u_xlat10;
      let x_3028 : i32 = u_xlati82;
      let x_3031 : i32 = u_xlati82;
      let x_3035 : vec4<f32> = x_833.x_AdditionalLightsWorldToShadow[((x_3028 + 3i) / 4i)][((x_3031 + 3i) % 4i)];
      u_xlat10 = (x_3027 + x_3035);
      let x_3037 : vec4<f32> = u_xlat10;
      let x_3039 : vec4<f32> = u_xlat10;
      let x_3041 : vec3<f32> = (vec3<f32>(x_3037.x, x_3037.y, x_3037.z) / vec3<f32>(x_3039.w, x_3039.w, x_3039.w));
      let x_3042 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_3041.x, x_3041.y, x_3041.z, x_3042.w);
      let x_3045 : i32 = u_xlati79;
      let x_3047 : f32 = x_833.x_AdditionalShadowParams[x_3045].y;
      u_xlatb82 = (0.0f < x_3047);
      let x_3049 : bool = u_xlatb82;
      if (x_3049) {
        let x_3052 : i32 = u_xlati79;
        let x_3054 : f32 = x_833.x_AdditionalShadowParams[x_3052].y;
        u_xlatb82 = (1.0f == x_3054);
        let x_3056 : bool = u_xlatb82;
        if (x_3056) {
          let x_3059 : vec4<f32> = u_xlat10;
          let x_3062 : vec4<f32> = x_833.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_3059.x, x_3059.y, x_3059.x, x_3059.y) + x_3062);
          let x_3065 : vec4<f32> = u_xlat11;
          let x_3066 : vec2<f32> = vec2<f32>(x_3065.x, x_3065.y);
          let x_3068 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_3066.x, x_3066.y, x_3068);
          let x_3076 : vec3<f32> = txVec30;
          let x_3078 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3076.xy, x_3076.z);
          u_xlat12.x = x_3078;
          let x_3081 : vec4<f32> = u_xlat11;
          let x_3082 : vec2<f32> = vec2<f32>(x_3081.z, x_3081.w);
          let x_3084 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_3082.x, x_3082.y, x_3084);
          let x_3091 : vec3<f32> = txVec31;
          let x_3093 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3091.xy, x_3091.z);
          u_xlat12.y = x_3093;
          let x_3095 : vec4<f32> = u_xlat10;
          let x_3098 : vec4<f32> = x_833.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_3095.x, x_3095.y, x_3095.x, x_3095.y) + x_3098);
          let x_3101 : vec4<f32> = u_xlat11;
          let x_3102 : vec2<f32> = vec2<f32>(x_3101.x, x_3101.y);
          let x_3104 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_3102.x, x_3102.y, x_3104);
          let x_3111 : vec3<f32> = txVec32;
          let x_3113 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3111.xy, x_3111.z);
          u_xlat12.z = x_3113;
          let x_3116 : vec4<f32> = u_xlat11;
          let x_3117 : vec2<f32> = vec2<f32>(x_3116.z, x_3116.w);
          let x_3119 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_3117.x, x_3117.y, x_3119);
          let x_3126 : vec3<f32> = txVec33;
          let x_3128 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3126.xy, x_3126.z);
          u_xlat12.w = x_3128;
          let x_3130 : vec4<f32> = u_xlat12;
          u_xlat82 = dot(x_3130, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_3133 : i32 = u_xlati79;
          let x_3135 : f32 = x_833.x_AdditionalShadowParams[x_3133].y;
          u_xlatb84 = (2.0f == x_3135);
          let x_3137 : bool = u_xlatb84;
          if (x_3137) {
            let x_3140 : vec4<f32> = u_xlat10;
            let x_3143 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3146 : vec2<f32> = ((vec2<f32>(x_3140.x, x_3140.y) * vec2<f32>(x_3143.z, x_3143.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3147 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3146.x, x_3146.y, x_3147.z, x_3147.w);
            let x_3149 : vec4<f32> = u_xlat11;
            let x_3151 : vec2<f32> = floor(vec2<f32>(x_3149.x, x_3149.y));
            let x_3152 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3151.x, x_3151.y, x_3152.z, x_3152.w);
            let x_3155 : vec4<f32> = u_xlat10;
            let x_3158 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3161 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3155.x, x_3155.y) * vec2<f32>(x_3158.z, x_3158.w)) + -(vec2<f32>(x_3161.x, x_3161.y)));
            let x_3165 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3165.x, x_3165.x, x_3165.y, x_3165.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3168 : vec4<f32> = u_xlat12;
            let x_3170 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3168.x, x_3168.x, x_3168.z, x_3168.z) * vec4<f32>(x_3170.x, x_3170.x, x_3170.z, x_3170.z));
            let x_3173 : vec4<f32> = u_xlat13;
            let x_3175 : vec2<f32> = (vec2<f32>(x_3173.y, x_3173.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_3176 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3175.x, x_3176.y, x_3175.y, x_3176.w);
            let x_3178 : vec4<f32> = u_xlat13;
            let x_3181 : vec2<f32> = u_xlat61;
            let x_3183 : vec2<f32> = ((vec2<f32>(x_3178.x, x_3178.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3181));
            let x_3184 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3183.x, x_3183.y, x_3184.z, x_3184.w);
            let x_3187 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_3187) + vec2<f32>(1.0f, 1.0f));
            let x_3190 : vec2<f32> = u_xlat61;
            let x_3191 : vec2<f32> = min(x_3190, vec2<f32>(0.0f, 0.0f));
            let x_3192 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3191.x, x_3191.y, x_3192.z, x_3192.w);
            let x_3194 : vec4<f32> = u_xlat14;
            let x_3197 : vec4<f32> = u_xlat14;
            let x_3200 : vec2<f32> = u_xlat63;
            let x_3201 : vec2<f32> = ((-(vec2<f32>(x_3194.x, x_3194.y)) * vec2<f32>(x_3197.x, x_3197.y)) + x_3200);
            let x_3202 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3201.x, x_3201.y, x_3202.z, x_3202.w);
            let x_3204 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_3204, vec2<f32>(0.0f, 0.0f));
            let x_3206 : vec2<f32> = u_xlat61;
            let x_3208 : vec2<f32> = u_xlat61;
            let x_3210 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_3206) * x_3208) + vec2<f32>(x_3210.y, x_3210.w));
            let x_3213 : vec4<f32> = u_xlat14;
            let x_3215 : vec2<f32> = (vec2<f32>(x_3213.x, x_3213.y) + vec2<f32>(1.0f, 1.0f));
            let x_3216 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3215.x, x_3215.y, x_3216.z, x_3216.w);
            let x_3218 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_3218 + vec2<f32>(1.0f, 1.0f));
            let x_3220 : vec4<f32> = u_xlat13;
            let x_3222 : vec2<f32> = (vec2<f32>(x_3220.x, x_3220.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3223 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3222.x, x_3222.y, x_3223.z, x_3223.w);
            let x_3225 : vec2<f32> = u_xlat63;
            let x_3226 : vec2<f32> = (x_3225 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3227 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3226.x, x_3226.y, x_3227.z, x_3227.w);
            let x_3229 : vec4<f32> = u_xlat14;
            let x_3231 : vec2<f32> = (vec2<f32>(x_3229.x, x_3229.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3232 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3231.x, x_3231.y, x_3232.z, x_3232.w);
            let x_3234 : vec2<f32> = u_xlat61;
            let x_3235 : vec2<f32> = (x_3234 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3236 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3235.x, x_3235.y, x_3236.z, x_3236.w);
            let x_3238 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_3238.y, x_3238.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3242 : f32 = u_xlat14.x;
            u_xlat15.z = x_3242;
            let x_3245 : f32 = u_xlat61.x;
            u_xlat15.w = x_3245;
            let x_3248 : f32 = u_xlat16.x;
            u_xlat13.z = x_3248;
            let x_3251 : f32 = u_xlat12.x;
            u_xlat13.w = x_3251;
            let x_3253 : vec4<f32> = u_xlat13;
            let x_3255 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_3253.z, x_3253.w, x_3253.x, x_3253.z) + vec4<f32>(x_3255.z, x_3255.w, x_3255.x, x_3255.z));
            let x_3259 : f32 = u_xlat15.y;
            u_xlat14.z = x_3259;
            let x_3262 : f32 = u_xlat61.y;
            u_xlat14.w = x_3262;
            let x_3265 : f32 = u_xlat13.y;
            u_xlat16.z = x_3265;
            let x_3268 : f32 = u_xlat12.z;
            u_xlat16.w = x_3268;
            let x_3270 : vec4<f32> = u_xlat14;
            let x_3272 : vec4<f32> = u_xlat16;
            let x_3274 : vec3<f32> = (vec3<f32>(x_3270.z, x_3270.y, x_3270.w) + vec3<f32>(x_3272.z, x_3272.y, x_3272.w));
            let x_3275 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3274.x, x_3274.y, x_3274.z, x_3275.w);
            let x_3277 : vec4<f32> = u_xlat13;
            let x_3279 : vec4<f32> = u_xlat17;
            let x_3281 : vec3<f32> = (vec3<f32>(x_3277.x, x_3277.z, x_3277.w) / vec3<f32>(x_3279.z, x_3279.w, x_3279.y));
            let x_3282 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3281.x, x_3281.y, x_3281.z, x_3282.w);
            let x_3284 : vec4<f32> = u_xlat13;
            let x_3286 : vec3<f32> = (vec3<f32>(x_3284.x, x_3284.y, x_3284.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3287 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3286.x, x_3286.y, x_3286.z, x_3287.w);
            let x_3289 : vec4<f32> = u_xlat16;
            let x_3291 : vec4<f32> = u_xlat12;
            let x_3293 : vec3<f32> = (vec3<f32>(x_3289.z, x_3289.y, x_3289.w) / vec3<f32>(x_3291.x, x_3291.y, x_3291.z));
            let x_3294 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3293.x, x_3293.y, x_3293.z, x_3294.w);
            let x_3296 : vec4<f32> = u_xlat14;
            let x_3298 : vec3<f32> = (vec3<f32>(x_3296.x, x_3296.y, x_3296.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3299 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3298.x, x_3298.y, x_3298.z, x_3299.w);
            let x_3301 : vec4<f32> = u_xlat13;
            let x_3304 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3306 : vec3<f32> = (vec3<f32>(x_3301.y, x_3301.x, x_3301.z) * vec3<f32>(x_3304.x, x_3304.x, x_3304.x));
            let x_3307 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3306.x, x_3306.y, x_3306.z, x_3307.w);
            let x_3309 : vec4<f32> = u_xlat14;
            let x_3312 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3314 : vec3<f32> = (vec3<f32>(x_3309.x, x_3309.y, x_3309.z) * vec3<f32>(x_3312.y, x_3312.y, x_3312.y));
            let x_3315 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3314.x, x_3314.y, x_3314.z, x_3315.w);
            let x_3318 : f32 = u_xlat14.x;
            u_xlat13.w = x_3318;
            let x_3320 : vec4<f32> = u_xlat11;
            let x_3323 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3326 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_3320.x, x_3320.y, x_3320.x, x_3320.y) * vec4<f32>(x_3323.x, x_3323.y, x_3323.x, x_3323.y)) + vec4<f32>(x_3326.y, x_3326.w, x_3326.x, x_3326.w));
            let x_3329 : vec4<f32> = u_xlat11;
            let x_3332 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3335 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_3329.x, x_3329.y) * vec2<f32>(x_3332.x, x_3332.y)) + vec2<f32>(x_3335.z, x_3335.w));
            let x_3339 : f32 = u_xlat13.y;
            u_xlat14.w = x_3339;
            let x_3341 : vec4<f32> = u_xlat14;
            let x_3342 : vec2<f32> = vec2<f32>(x_3341.y, x_3341.z);
            let x_3343 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3343.x, x_3342.x, x_3343.z, x_3342.y);
            let x_3345 : vec4<f32> = u_xlat11;
            let x_3348 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3351 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_3345.x, x_3345.y, x_3345.x, x_3345.y) * vec4<f32>(x_3348.x, x_3348.y, x_3348.x, x_3348.y)) + vec4<f32>(x_3351.x, x_3351.y, x_3351.z, x_3351.y));
            let x_3354 : vec4<f32> = u_xlat11;
            let x_3357 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3360 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3354.x, x_3354.y, x_3354.x, x_3354.y) * vec4<f32>(x_3357.x, x_3357.y, x_3357.x, x_3357.y)) + vec4<f32>(x_3360.w, x_3360.y, x_3360.w, x_3360.z));
            let x_3363 : vec4<f32> = u_xlat11;
            let x_3366 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3369 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_3363.x, x_3363.y, x_3363.x, x_3363.y) * vec4<f32>(x_3366.x, x_3366.y, x_3366.x, x_3366.y)) + vec4<f32>(x_3369.x, x_3369.w, x_3369.z, x_3369.w));
            let x_3372 : vec4<f32> = u_xlat12;
            let x_3374 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_3372.x, x_3372.x, x_3372.x, x_3372.y) * vec4<f32>(x_3374.z, x_3374.w, x_3374.y, x_3374.z));
            let x_3377 : vec4<f32> = u_xlat12;
            let x_3379 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_3377.y, x_3377.y, x_3377.z, x_3377.z) * x_3379);
            let x_3382 : f32 = u_xlat12.z;
            let x_3384 : f32 = u_xlat17.y;
            u_xlat84 = (x_3382 * x_3384);
            let x_3387 : vec4<f32> = u_xlat15;
            let x_3388 : vec2<f32> = vec2<f32>(x_3387.x, x_3387.y);
            let x_3390 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_3388.x, x_3388.y, x_3390);
            let x_3397 : vec3<f32> = txVec34;
            let x_3399 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3397.xy, x_3397.z);
            u_xlat85 = x_3399;
            let x_3401 : vec4<f32> = u_xlat15;
            let x_3402 : vec2<f32> = vec2<f32>(x_3401.z, x_3401.w);
            let x_3404 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_3402.x, x_3402.y, x_3404);
            let x_3411 : vec3<f32> = txVec35;
            let x_3413 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3411.xy, x_3411.z);
            u_xlat11.x = x_3413;
            let x_3416 : f32 = u_xlat11.x;
            let x_3418 : f32 = u_xlat18.y;
            u_xlat11.x = (x_3416 * x_3418);
            let x_3422 : f32 = u_xlat18.x;
            let x_3423 : f32 = u_xlat85;
            let x_3426 : f32 = u_xlat11.x;
            u_xlat85 = ((x_3422 * x_3423) + x_3426);
            let x_3429 : vec2<f32> = u_xlat61;
            let x_3431 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_3429.x, x_3429.y, x_3431);
            let x_3438 : vec3<f32> = txVec36;
            let x_3440 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3438.xy, x_3438.z);
            u_xlat11.x = x_3440;
            let x_3443 : f32 = u_xlat18.z;
            let x_3445 : f32 = u_xlat11.x;
            let x_3447 : f32 = u_xlat85;
            u_xlat85 = ((x_3443 * x_3445) + x_3447);
            let x_3450 : vec4<f32> = u_xlat14;
            let x_3451 : vec2<f32> = vec2<f32>(x_3450.x, x_3450.y);
            let x_3453 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_3451.x, x_3451.y, x_3453);
            let x_3460 : vec3<f32> = txVec37;
            let x_3462 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3460.xy, x_3460.z);
            u_xlat11.x = x_3462;
            let x_3465 : f32 = u_xlat18.w;
            let x_3467 : f32 = u_xlat11.x;
            let x_3469 : f32 = u_xlat85;
            u_xlat85 = ((x_3465 * x_3467) + x_3469);
            let x_3472 : vec4<f32> = u_xlat16;
            let x_3473 : vec2<f32> = vec2<f32>(x_3472.x, x_3472.y);
            let x_3475 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_3473.x, x_3473.y, x_3475);
            let x_3482 : vec3<f32> = txVec38;
            let x_3484 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3482.xy, x_3482.z);
            u_xlat11.x = x_3484;
            let x_3487 : f32 = u_xlat19.x;
            let x_3489 : f32 = u_xlat11.x;
            let x_3491 : f32 = u_xlat85;
            u_xlat85 = ((x_3487 * x_3489) + x_3491);
            let x_3494 : vec4<f32> = u_xlat16;
            let x_3495 : vec2<f32> = vec2<f32>(x_3494.z, x_3494.w);
            let x_3497 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_3495.x, x_3495.y, x_3497);
            let x_3504 : vec3<f32> = txVec39;
            let x_3506 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3504.xy, x_3504.z);
            u_xlat11.x = x_3506;
            let x_3509 : f32 = u_xlat19.y;
            let x_3511 : f32 = u_xlat11.x;
            let x_3513 : f32 = u_xlat85;
            u_xlat85 = ((x_3509 * x_3511) + x_3513);
            let x_3516 : vec4<f32> = u_xlat14;
            let x_3517 : vec2<f32> = vec2<f32>(x_3516.z, x_3516.w);
            let x_3519 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_3517.x, x_3517.y, x_3519);
            let x_3526 : vec3<f32> = txVec40;
            let x_3528 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3526.xy, x_3526.z);
            u_xlat11.x = x_3528;
            let x_3531 : f32 = u_xlat19.z;
            let x_3533 : f32 = u_xlat11.x;
            let x_3535 : f32 = u_xlat85;
            u_xlat85 = ((x_3531 * x_3533) + x_3535);
            let x_3538 : vec4<f32> = u_xlat13;
            let x_3539 : vec2<f32> = vec2<f32>(x_3538.x, x_3538.y);
            let x_3541 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_3539.x, x_3539.y, x_3541);
            let x_3548 : vec3<f32> = txVec41;
            let x_3550 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3548.xy, x_3548.z);
            u_xlat11.x = x_3550;
            let x_3553 : f32 = u_xlat19.w;
            let x_3555 : f32 = u_xlat11.x;
            let x_3557 : f32 = u_xlat85;
            u_xlat85 = ((x_3553 * x_3555) + x_3557);
            let x_3560 : vec4<f32> = u_xlat13;
            let x_3561 : vec2<f32> = vec2<f32>(x_3560.z, x_3560.w);
            let x_3563 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_3561.x, x_3561.y, x_3563);
            let x_3570 : vec3<f32> = txVec42;
            let x_3572 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3570.xy, x_3570.z);
            u_xlat11.x = x_3572;
            let x_3574 : f32 = u_xlat84;
            let x_3576 : f32 = u_xlat11.x;
            let x_3578 : f32 = u_xlat85;
            u_xlat82 = ((x_3574 * x_3576) + x_3578);
          } else {
            let x_3581 : vec4<f32> = u_xlat10;
            let x_3584 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3587 : vec2<f32> = ((vec2<f32>(x_3581.x, x_3581.y) * vec2<f32>(x_3584.z, x_3584.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3588 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3587.x, x_3587.y, x_3588.z, x_3588.w);
            let x_3590 : vec4<f32> = u_xlat11;
            let x_3592 : vec2<f32> = floor(vec2<f32>(x_3590.x, x_3590.y));
            let x_3593 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3592.x, x_3592.y, x_3593.z, x_3593.w);
            let x_3595 : vec4<f32> = u_xlat10;
            let x_3598 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3601 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3595.x, x_3595.y) * vec2<f32>(x_3598.z, x_3598.w)) + -(vec2<f32>(x_3601.x, x_3601.y)));
            let x_3605 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3605.x, x_3605.x, x_3605.y, x_3605.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3608 : vec4<f32> = u_xlat12;
            let x_3610 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3608.x, x_3608.x, x_3608.z, x_3608.z) * vec4<f32>(x_3610.x, x_3610.x, x_3610.z, x_3610.z));
            let x_3613 : vec4<f32> = u_xlat13;
            let x_3615 : vec2<f32> = (vec2<f32>(x_3613.y, x_3613.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3616 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3616.x, x_3615.x, x_3616.z, x_3615.y);
            let x_3618 : vec4<f32> = u_xlat13;
            let x_3621 : vec2<f32> = u_xlat61;
            let x_3623 : vec2<f32> = ((vec2<f32>(x_3618.x, x_3618.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3621));
            let x_3624 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3623.x, x_3624.y, x_3623.y, x_3624.w);
            let x_3626 : vec2<f32> = u_xlat61;
            let x_3628 : vec2<f32> = (-(x_3626) + vec2<f32>(1.0f, 1.0f));
            let x_3629 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3628.x, x_3628.y, x_3629.z, x_3629.w);
            let x_3631 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_3631, vec2<f32>(0.0f, 0.0f));
            let x_3633 : vec2<f32> = u_xlat63;
            let x_3635 : vec2<f32> = u_xlat63;
            let x_3637 : vec4<f32> = u_xlat13;
            let x_3639 : vec2<f32> = ((-(x_3633) * x_3635) + vec2<f32>(x_3637.x, x_3637.y));
            let x_3640 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3639.x, x_3639.y, x_3640.z, x_3640.w);
            let x_3642 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_3642, vec2<f32>(0.0f, 0.0f));
            let x_3645 : vec2<f32> = u_xlat63;
            let x_3647 : vec2<f32> = u_xlat63;
            let x_3649 : vec4<f32> = u_xlat12;
            let x_3651 : vec2<f32> = ((-(x_3645) * x_3647) + vec2<f32>(x_3649.y, x_3649.w));
            let x_3652 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_3651.x, x_3652.y, x_3651.y);
            let x_3654 : vec4<f32> = u_xlat13;
            let x_3656 : vec2<f32> = (vec2<f32>(x_3654.x, x_3654.y) + vec2<f32>(2.0f, 2.0f));
            let x_3657 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3656.x, x_3656.y, x_3657.z, x_3657.w);
            let x_3659 : vec3<f32> = u_xlat37;
            let x_3661 : vec2<f32> = (vec2<f32>(x_3659.x, x_3659.z) + vec2<f32>(2.0f, 2.0f));
            let x_3662 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3662.x, x_3661.x, x_3662.z, x_3661.y);
            let x_3665 : f32 = u_xlat12.y;
            u_xlat15.z = (x_3665 * 0.08163200318813323975f);
            let x_3668 : vec4<f32> = u_xlat12;
            let x_3670 : vec3<f32> = (vec3<f32>(x_3668.z, x_3668.x, x_3668.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3671 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3670.x, x_3670.y, x_3670.z, x_3671.w);
            let x_3673 : vec4<f32> = u_xlat13;
            let x_3675 : vec2<f32> = (vec2<f32>(x_3673.x, x_3673.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3676 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3675.x, x_3675.y, x_3676.z, x_3676.w);
            let x_3679 : f32 = u_xlat16.y;
            u_xlat15.x = x_3679;
            let x_3681 : vec2<f32> = u_xlat61;
            let x_3684 : vec2<f32> = ((vec2<f32>(x_3681.x, x_3681.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3685 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3685.x, x_3684.x, x_3685.z, x_3684.y);
            let x_3687 : vec2<f32> = u_xlat61;
            let x_3690 : vec2<f32> = ((vec2<f32>(x_3687.x, x_3687.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3691 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3690.x, x_3691.y, x_3690.y, x_3691.w);
            let x_3694 : f32 = u_xlat12.x;
            u_xlat13.y = x_3694;
            let x_3697 : f32 = u_xlat14.y;
            u_xlat13.w = x_3697;
            let x_3699 : vec4<f32> = u_xlat13;
            let x_3700 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3699 + x_3700);
            let x_3702 : vec2<f32> = u_xlat61;
            let x_3705 : vec2<f32> = ((vec2<f32>(x_3702.y, x_3702.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3706 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3706.x, x_3705.x, x_3706.z, x_3705.y);
            let x_3708 : vec2<f32> = u_xlat61;
            let x_3711 : vec2<f32> = ((vec2<f32>(x_3708.y, x_3708.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3712 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3711.x, x_3712.y, x_3711.y, x_3712.w);
            let x_3715 : f32 = u_xlat12.y;
            u_xlat14.y = x_3715;
            let x_3717 : vec4<f32> = u_xlat14;
            let x_3718 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_3717 + x_3718);
            let x_3720 : vec4<f32> = u_xlat13;
            let x_3721 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_3720 / x_3721);
            let x_3723 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3723 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3725 : vec4<f32> = u_xlat14;
            let x_3726 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_3725 / x_3726);
            let x_3728 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3728 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3730 : vec4<f32> = u_xlat13;
            let x_3733 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3730.w, x_3730.x, x_3730.y, x_3730.z) * vec4<f32>(x_3733.x, x_3733.x, x_3733.x, x_3733.x));
            let x_3736 : vec4<f32> = u_xlat14;
            let x_3739 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3736.x, x_3736.w, x_3736.y, x_3736.z) * vec4<f32>(x_3739.y, x_3739.y, x_3739.y, x_3739.y));
            let x_3742 : vec4<f32> = u_xlat13;
            let x_3743 : vec3<f32> = vec3<f32>(x_3742.y, x_3742.z, x_3742.w);
            let x_3744 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3743.x, x_3744.y, x_3743.y, x_3743.z);
            let x_3747 : f32 = u_xlat14.x;
            u_xlat16.y = x_3747;
            let x_3749 : vec4<f32> = u_xlat11;
            let x_3752 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3755 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3749.x, x_3749.y, x_3749.x, x_3749.y) * vec4<f32>(x_3752.x, x_3752.y, x_3752.x, x_3752.y)) + vec4<f32>(x_3755.x, x_3755.y, x_3755.z, x_3755.y));
            let x_3758 : vec4<f32> = u_xlat11;
            let x_3761 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3764 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_3758.x, x_3758.y) * vec2<f32>(x_3761.x, x_3761.y)) + vec2<f32>(x_3764.w, x_3764.y));
            let x_3768 : f32 = u_xlat16.y;
            u_xlat13.y = x_3768;
            let x_3771 : f32 = u_xlat14.z;
            u_xlat16.y = x_3771;
            let x_3773 : vec4<f32> = u_xlat11;
            let x_3776 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3779 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3773.x, x_3773.y, x_3773.x, x_3773.y) * vec4<f32>(x_3776.x, x_3776.y, x_3776.x, x_3776.y)) + vec4<f32>(x_3779.x, x_3779.y, x_3779.z, x_3779.y));
            let x_3782 : vec4<f32> = u_xlat11;
            let x_3785 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3788 : vec4<f32> = u_xlat16;
            let x_3790 : vec2<f32> = ((vec2<f32>(x_3782.x, x_3782.y) * vec2<f32>(x_3785.x, x_3785.y)) + vec2<f32>(x_3788.w, x_3788.y));
            let x_3791 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3790.x, x_3790.y, x_3791.z, x_3791.w);
            let x_3794 : f32 = u_xlat16.y;
            u_xlat13.z = x_3794;
            let x_3797 : vec4<f32> = u_xlat11;
            let x_3800 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3803 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3797.x, x_3797.y, x_3797.x, x_3797.y) * vec4<f32>(x_3800.x, x_3800.y, x_3800.x, x_3800.y)) + vec4<f32>(x_3803.x, x_3803.y, x_3803.x, x_3803.z));
            let x_3807 : f32 = u_xlat14.w;
            u_xlat16.y = x_3807;
            let x_3810 : vec4<f32> = u_xlat11;
            let x_3813 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3816 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3810.x, x_3810.y, x_3810.x, x_3810.y) * vec4<f32>(x_3813.x, x_3813.y, x_3813.x, x_3813.y)) + vec4<f32>(x_3816.x, x_3816.y, x_3816.z, x_3816.y));
            let x_3820 : vec4<f32> = u_xlat11;
            let x_3823 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3826 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3820.x, x_3820.y) * vec2<f32>(x_3823.x, x_3823.y)) + vec2<f32>(x_3826.w, x_3826.y));
            let x_3830 : f32 = u_xlat16.y;
            u_xlat13.w = x_3830;
            let x_3833 : vec4<f32> = u_xlat11;
            let x_3836 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3839 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3833.x, x_3833.y) * vec2<f32>(x_3836.x, x_3836.y)) + vec2<f32>(x_3839.x, x_3839.w));
            let x_3842 : vec4<f32> = u_xlat16;
            let x_3843 : vec3<f32> = vec3<f32>(x_3842.x, x_3842.z, x_3842.w);
            let x_3844 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3843.x, x_3844.y, x_3843.y, x_3843.z);
            let x_3846 : vec4<f32> = u_xlat11;
            let x_3849 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3852 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3846.x, x_3846.y, x_3846.x, x_3846.y) * vec4<f32>(x_3849.x, x_3849.y, x_3849.x, x_3849.y)) + vec4<f32>(x_3852.x, x_3852.y, x_3852.z, x_3852.y));
            let x_3855 : vec4<f32> = u_xlat11;
            let x_3858 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3861 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3855.x, x_3855.y) * vec2<f32>(x_3858.x, x_3858.y)) + vec2<f32>(x_3861.w, x_3861.y));
            let x_3865 : f32 = u_xlat13.x;
            u_xlat14.x = x_3865;
            let x_3867 : vec4<f32> = u_xlat11;
            let x_3870 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3873 : vec4<f32> = u_xlat14;
            let x_3875 : vec2<f32> = ((vec2<f32>(x_3867.x, x_3867.y) * vec2<f32>(x_3870.x, x_3870.y)) + vec2<f32>(x_3873.x, x_3873.y));
            let x_3876 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3875.x, x_3875.y, x_3876.z, x_3876.w);
            let x_3879 : vec4<f32> = u_xlat12;
            let x_3881 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3879.x, x_3879.x, x_3879.x, x_3879.x) * x_3881);
            let x_3884 : vec4<f32> = u_xlat12;
            let x_3886 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3884.y, x_3884.y, x_3884.y, x_3884.y) * x_3886);
            let x_3889 : vec4<f32> = u_xlat12;
            let x_3891 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3889.z, x_3889.z, x_3889.z, x_3889.z) * x_3891);
            let x_3893 : vec4<f32> = u_xlat12;
            let x_3895 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3893.w, x_3893.w, x_3893.w, x_3893.w) * x_3895);
            let x_3898 : vec4<f32> = u_xlat17;
            let x_3899 : vec2<f32> = vec2<f32>(x_3898.x, x_3898.y);
            let x_3901 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3899.x, x_3899.y, x_3901);
            let x_3908 : vec3<f32> = txVec43;
            let x_3910 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3908.xy, x_3908.z);
            u_xlat84 = x_3910;
            let x_3912 : vec4<f32> = u_xlat17;
            let x_3913 : vec2<f32> = vec2<f32>(x_3912.z, x_3912.w);
            let x_3915 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3913.x, x_3913.y, x_3915);
            let x_3922 : vec3<f32> = txVec44;
            let x_3924 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3922.xy, x_3922.z);
            u_xlat85 = x_3924;
            let x_3925 : f32 = u_xlat85;
            let x_3927 : f32 = u_xlat22.y;
            u_xlat85 = (x_3925 * x_3927);
            let x_3930 : f32 = u_xlat22.x;
            let x_3931 : f32 = u_xlat84;
            let x_3933 : f32 = u_xlat85;
            u_xlat84 = ((x_3930 * x_3931) + x_3933);
            let x_3936 : vec2<f32> = u_xlat61;
            let x_3938 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3936.x, x_3936.y, x_3938);
            let x_3945 : vec3<f32> = txVec45;
            let x_3947 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3945.xy, x_3945.z);
            u_xlat85 = x_3947;
            let x_3949 : f32 = u_xlat22.z;
            let x_3950 : f32 = u_xlat85;
            let x_3952 : f32 = u_xlat84;
            u_xlat84 = ((x_3949 * x_3950) + x_3952);
            let x_3955 : vec4<f32> = u_xlat20;
            let x_3956 : vec2<f32> = vec2<f32>(x_3955.x, x_3955.y);
            let x_3958 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3956.x, x_3956.y, x_3958);
            let x_3965 : vec3<f32> = txVec46;
            let x_3967 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3965.xy, x_3965.z);
            u_xlat85 = x_3967;
            let x_3969 : f32 = u_xlat22.w;
            let x_3970 : f32 = u_xlat85;
            let x_3972 : f32 = u_xlat84;
            u_xlat84 = ((x_3969 * x_3970) + x_3972);
            let x_3975 : vec4<f32> = u_xlat18;
            let x_3976 : vec2<f32> = vec2<f32>(x_3975.x, x_3975.y);
            let x_3978 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3976.x, x_3976.y, x_3978);
            let x_3985 : vec3<f32> = txVec47;
            let x_3987 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3985.xy, x_3985.z);
            u_xlat85 = x_3987;
            let x_3989 : f32 = u_xlat23.x;
            let x_3990 : f32 = u_xlat85;
            let x_3992 : f32 = u_xlat84;
            u_xlat84 = ((x_3989 * x_3990) + x_3992);
            let x_3995 : vec4<f32> = u_xlat18;
            let x_3996 : vec2<f32> = vec2<f32>(x_3995.z, x_3995.w);
            let x_3998 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3996.x, x_3996.y, x_3998);
            let x_4005 : vec3<f32> = txVec48;
            let x_4007 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4005.xy, x_4005.z);
            u_xlat85 = x_4007;
            let x_4009 : f32 = u_xlat23.y;
            let x_4010 : f32 = u_xlat85;
            let x_4012 : f32 = u_xlat84;
            u_xlat84 = ((x_4009 * x_4010) + x_4012);
            let x_4015 : vec4<f32> = u_xlat19;
            let x_4016 : vec2<f32> = vec2<f32>(x_4015.x, x_4015.y);
            let x_4018 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_4016.x, x_4016.y, x_4018);
            let x_4025 : vec3<f32> = txVec49;
            let x_4027 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4025.xy, x_4025.z);
            u_xlat85 = x_4027;
            let x_4029 : f32 = u_xlat23.z;
            let x_4030 : f32 = u_xlat85;
            let x_4032 : f32 = u_xlat84;
            u_xlat84 = ((x_4029 * x_4030) + x_4032);
            let x_4035 : vec4<f32> = u_xlat20;
            let x_4036 : vec2<f32> = vec2<f32>(x_4035.z, x_4035.w);
            let x_4038 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_4036.x, x_4036.y, x_4038);
            let x_4045 : vec3<f32> = txVec50;
            let x_4047 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4045.xy, x_4045.z);
            u_xlat85 = x_4047;
            let x_4049 : f32 = u_xlat23.w;
            let x_4050 : f32 = u_xlat85;
            let x_4052 : f32 = u_xlat84;
            u_xlat84 = ((x_4049 * x_4050) + x_4052);
            let x_4055 : vec4<f32> = u_xlat21;
            let x_4056 : vec2<f32> = vec2<f32>(x_4055.x, x_4055.y);
            let x_4058 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_4056.x, x_4056.y, x_4058);
            let x_4065 : vec3<f32> = txVec51;
            let x_4067 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4065.xy, x_4065.z);
            u_xlat85 = x_4067;
            let x_4069 : f32 = u_xlat24.x;
            let x_4070 : f32 = u_xlat85;
            let x_4072 : f32 = u_xlat84;
            u_xlat84 = ((x_4069 * x_4070) + x_4072);
            let x_4075 : vec4<f32> = u_xlat21;
            let x_4076 : vec2<f32> = vec2<f32>(x_4075.z, x_4075.w);
            let x_4078 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_4076.x, x_4076.y, x_4078);
            let x_4085 : vec3<f32> = txVec52;
            let x_4087 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4085.xy, x_4085.z);
            u_xlat85 = x_4087;
            let x_4089 : f32 = u_xlat24.y;
            let x_4090 : f32 = u_xlat85;
            let x_4092 : f32 = u_xlat84;
            u_xlat84 = ((x_4089 * x_4090) + x_4092);
            let x_4095 : vec2<f32> = u_xlat38;
            let x_4097 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_4095.x, x_4095.y, x_4097);
            let x_4104 : vec3<f32> = txVec53;
            let x_4106 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4104.xy, x_4104.z);
            u_xlat85 = x_4106;
            let x_4108 : f32 = u_xlat24.z;
            let x_4109 : f32 = u_xlat85;
            let x_4111 : f32 = u_xlat84;
            u_xlat84 = ((x_4108 * x_4109) + x_4111);
            let x_4114 : vec2<f32> = u_xlat69;
            let x_4116 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_4114.x, x_4114.y, x_4116);
            let x_4123 : vec3<f32> = txVec54;
            let x_4125 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4123.xy, x_4123.z);
            u_xlat85 = x_4125;
            let x_4127 : f32 = u_xlat24.w;
            let x_4128 : f32 = u_xlat85;
            let x_4130 : f32 = u_xlat84;
            u_xlat84 = ((x_4127 * x_4128) + x_4130);
            let x_4133 : vec4<f32> = u_xlat16;
            let x_4134 : vec2<f32> = vec2<f32>(x_4133.x, x_4133.y);
            let x_4136 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_4134.x, x_4134.y, x_4136);
            let x_4143 : vec3<f32> = txVec55;
            let x_4145 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4143.xy, x_4143.z);
            u_xlat85 = x_4145;
            let x_4147 : f32 = u_xlat12.x;
            let x_4148 : f32 = u_xlat85;
            let x_4150 : f32 = u_xlat84;
            u_xlat84 = ((x_4147 * x_4148) + x_4150);
            let x_4153 : vec4<f32> = u_xlat16;
            let x_4154 : vec2<f32> = vec2<f32>(x_4153.z, x_4153.w);
            let x_4156 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_4154.x, x_4154.y, x_4156);
            let x_4163 : vec3<f32> = txVec56;
            let x_4165 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4163.xy, x_4163.z);
            u_xlat85 = x_4165;
            let x_4167 : f32 = u_xlat12.y;
            let x_4168 : f32 = u_xlat85;
            let x_4170 : f32 = u_xlat84;
            u_xlat84 = ((x_4167 * x_4168) + x_4170);
            let x_4173 : vec2<f32> = u_xlat64;
            let x_4175 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_4173.x, x_4173.y, x_4175);
            let x_4182 : vec3<f32> = txVec57;
            let x_4184 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4182.xy, x_4182.z);
            u_xlat85 = x_4184;
            let x_4186 : f32 = u_xlat12.z;
            let x_4187 : f32 = u_xlat85;
            let x_4189 : f32 = u_xlat84;
            u_xlat84 = ((x_4186 * x_4187) + x_4189);
            let x_4192 : vec4<f32> = u_xlat11;
            let x_4193 : vec2<f32> = vec2<f32>(x_4192.x, x_4192.y);
            let x_4195 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_4193.x, x_4193.y, x_4195);
            let x_4202 : vec3<f32> = txVec58;
            let x_4204 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4202.xy, x_4202.z);
            u_xlat85 = x_4204;
            let x_4206 : f32 = u_xlat12.w;
            let x_4207 : f32 = u_xlat85;
            let x_4209 : f32 = u_xlat84;
            u_xlat82 = ((x_4206 * x_4207) + x_4209);
          }
        }
      } else {
        let x_4213 : vec4<f32> = u_xlat10;
        let x_4214 : vec2<f32> = vec2<f32>(x_4213.x, x_4213.y);
        let x_4216 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_4214.x, x_4214.y, x_4216);
        let x_4223 : vec3<f32> = txVec59;
        let x_4225 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4223.xy, x_4223.z);
        u_xlat82 = x_4225;
      }
      let x_4226 : i32 = u_xlati79;
      let x_4228 : f32 = x_833.x_AdditionalShadowParams[x_4226].x;
      u_xlat84 = (1.0f + -(x_4228));
      let x_4231 : f32 = u_xlat82;
      let x_4232 : i32 = u_xlati79;
      let x_4234 : f32 = x_833.x_AdditionalShadowParams[x_4232].x;
      let x_4236 : f32 = u_xlat84;
      u_xlat82 = ((x_4231 * x_4234) + x_4236);
      let x_4239 : f32 = u_xlat10.z;
      u_xlatb84 = (0.0f >= x_4239);
      let x_4242 : f32 = u_xlat10.z;
      u_xlatb10.x = (x_4242 >= 1.0f);
      let x_4245 : bool = u_xlatb84;
      let x_4247 : bool = u_xlatb10.x;
      u_xlatb84 = (x_4245 | x_4247);
      let x_4249 : bool = u_xlatb84;
      let x_4250 : f32 = u_xlat82;
      u_xlat82 = select(x_4250, 1.0f, x_4249);
    } else {
      u_xlat82 = 1.0f;
    }
    let x_4253 : f32 = u_xlat82;
    u_xlat84 = (-(x_4253) + 1.0f);
    let x_4256 : f32 = u_xlat50;
    let x_4257 : f32 = u_xlat84;
    let x_4259 : f32 = u_xlat82;
    u_xlat82 = ((x_4256 * x_4257) + x_4259);
    let x_4261 : f32 = u_xlat80;
    let x_4262 : f32 = u_xlat82;
    u_xlat80 = (x_4261 * x_4262);
    let x_4264 : vec4<f32> = u_xlat1;
    let x_4266 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_4264.x, x_4264.y, x_4264.z), vec3<f32>(x_4266.x, x_4266.y, x_4266.z));
    let x_4269 : f32 = u_xlat82;
    u_xlat82 = clamp(x_4269, 0.0f, 1.0f);
    let x_4271 : f32 = u_xlat80;
    let x_4272 : f32 = u_xlat82;
    u_xlat80 = (x_4271 * x_4272);
    let x_4274 : f32 = u_xlat80;
    let x_4276 : i32 = u_xlati79;
    let x_4278 : vec4<f32> = x_2830.x_AdditionalLightsColor[x_4276];
    let x_4280 : vec3<f32> = (vec3<f32>(x_4274, x_4274, x_4274) * vec3<f32>(x_4278.x, x_4278.y, x_4278.z));
    let x_4281 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_4280.x, x_4280.y, x_4280.z, x_4281.w);
    let x_4283 : vec3<f32> = u_xlat33;
    let x_4284 : f32 = u_xlat81;
    let x_4287 : vec4<f32> = u_xlat6;
    u_xlat33 = ((x_4283 * vec3<f32>(x_4284, x_4284, x_4284)) + vec3<f32>(x_4287.x, x_4287.y, x_4287.z));
    let x_4290 : vec3<f32> = u_xlat33;
    let x_4291 : vec3<f32> = u_xlat33;
    u_xlat79 = dot(x_4290, x_4291);
    let x_4293 : f32 = u_xlat79;
    u_xlat79 = max(x_4293, 1.17549435e-38f);
    let x_4295 : f32 = u_xlat79;
    u_xlat79 = inverseSqrt(x_4295);
    let x_4297 : f32 = u_xlat79;
    let x_4299 : vec3<f32> = u_xlat33;
    u_xlat33 = (vec3<f32>(x_4297, x_4297, x_4297) * x_4299);
    let x_4301 : vec4<f32> = u_xlat1;
    let x_4303 : vec3<f32> = u_xlat33;
    u_xlat79 = dot(vec3<f32>(x_4301.x, x_4301.y, x_4301.z), x_4303);
    let x_4305 : f32 = u_xlat79;
    u_xlat79 = clamp(x_4305, 0.0f, 1.0f);
    let x_4307 : vec4<f32> = u_xlat9;
    let x_4309 : vec3<f32> = u_xlat33;
    u_xlat80 = dot(vec3<f32>(x_4307.x, x_4307.y, x_4307.z), x_4309);
    let x_4311 : f32 = u_xlat80;
    u_xlat80 = clamp(x_4311, 0.0f, 1.0f);
    let x_4313 : f32 = u_xlat79;
    let x_4314 : f32 = u_xlat79;
    u_xlat79 = (x_4313 * x_4314);
    let x_4316 : f32 = u_xlat79;
    let x_4318 : f32 = u_xlat8.x;
    u_xlat79 = ((x_4316 * x_4318) + 1.00001001358032226562f);
    let x_4321 : f32 = u_xlat80;
    let x_4322 : f32 = u_xlat80;
    u_xlat80 = (x_4321 * x_4322);
    let x_4324 : f32 = u_xlat79;
    let x_4325 : f32 = u_xlat79;
    u_xlat79 = (x_4324 * x_4325);
    let x_4327 : f32 = u_xlat80;
    u_xlat80 = max(x_4327, 0.10000000149011611938f);
    let x_4329 : f32 = u_xlat79;
    let x_4330 : f32 = u_xlat80;
    u_xlat79 = (x_4329 * x_4330);
    let x_4332 : f32 = u_xlat77;
    let x_4333 : f32 = u_xlat79;
    u_xlat79 = (x_4332 * x_4333);
    let x_4335 : f32 = u_xlat78;
    let x_4336 : f32 = u_xlat79;
    u_xlat79 = (x_4335 / x_4336);
    let x_4338 : vec4<f32> = u_xlat5;
    let x_4340 : f32 = u_xlat79;
    let x_4343 : vec4<f32> = u_xlat4;
    u_xlat33 = ((vec3<f32>(x_4338.x, x_4338.y, x_4338.z) * vec3<f32>(x_4340, x_4340, x_4340)) + vec3<f32>(x_4343.x, x_4343.y, x_4343.z));
    let x_4346 : vec3<f32> = u_xlat33;
    let x_4347 : vec4<f32> = u_xlat10;
    let x_4350 : vec4<f32> = u_xlat2;
    let x_4352 : vec3<f32> = ((x_4346 * vec3<f32>(x_4347.x, x_4347.y, x_4347.z)) + vec3<f32>(x_4350.x, x_4350.y, x_4350.z));
    let x_4353 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_4352.x, x_4352.y, x_4352.z, x_4353.w);

    continuing {
      let x_4355 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4355 + bitcast<u32>(1i));
    }
  }
  let x_4357 : vec4<f32> = u_xlat3;
  let x_4359 : f32 = u_xlat25;
  let x_4362 : vec4<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_4357.x, x_4357.y, x_4357.z) * vec3<f32>(x_4359, x_4359, x_4359)) + vec3<f32>(x_4362.x, x_4362.y, x_4362.z));
  let x_4365 : vec4<f32> = u_xlat2;
  let x_4367 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4365.x, x_4365.y, x_4365.z) + x_4367);
  let x_4371 : f32 = u_xlat75;
  let x_4373 : vec3<f32> = u_xlat0;
  let x_4374 : vec3<f32> = (vec3<f32>(x_4371, x_4371, x_4371) * x_4373);
  let x_4375 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4374.x, x_4374.y, x_4374.z, x_4375.w);
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


