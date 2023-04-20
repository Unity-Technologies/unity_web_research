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

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(15) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat77 : f32;

var<private> u_xlat78 : f32;

var<private> u_xlatb79 : bool;

@group(1) @binding(4) var<uniform> x_957 : LightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(12) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(19) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat79 : f32;

var<private> u_xlatb5 : bool;

var<private> u_xlat55 : vec2<f32>;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat30 : vec3<f32>;

var<private> u_xlat31 : vec3<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat32 : vec2<f32>;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat82 : f32;

var<private> u_xlat80 : f32;

var<private> u_xlatb30 : bool;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat81 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(14) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2380 : UnityPerDraw;

var<private> u_xlatu50 : u32;

var<private> u_xlatu5 : u32;

var<private> u_xlati81 : i32;

var<private> u_xlati5 : i32;

@group(1) @binding(1) var<uniform> x_2646 : AdditionalLights;

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

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat37 : vec3<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat38 : vec2<f32>;

var<private> u_xlat69 : vec2<f32>;

var<private> u_xlat64 : vec2<f32>;

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
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2784 : f32;
  var x_2794 : f32;
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
  let x_839 : vec4<f32> = vs_TEXCOORD0;
  let x_842 : f32 = x_112.x_GlobalMipBias.x;
  let x_843 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_839.z, x_839.w), x_842);
  u_xlat2 = x_843;
  let x_848 : vec4<f32> = vs_TEXCOORD0;
  let x_851 : f32 = x_112.x_GlobalMipBias.x;
  let x_852 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_848.z, x_848.w), x_851);
  let x_853 : vec3<f32> = vec3<f32>(x_852.x, x_852.y, x_852.z);
  let x_854 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_853.x, x_853.y, x_853.z, x_854.w);
  let x_856 : vec4<f32> = u_xlat2;
  let x_860 : vec3<f32> = (vec3<f32>(x_856.x, x_856.y, x_856.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_861 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_860.x, x_860.y, x_860.z, x_861.w);
  let x_863 : vec4<f32> = u_xlat1;
  let x_865 : vec4<f32> = u_xlat2;
  u_xlat76 = dot(vec3<f32>(x_863.x, x_863.y, x_863.z), vec3<f32>(x_865.x, x_865.y, x_865.z));
  let x_868 : f32 = u_xlat76;
  u_xlat76 = (x_868 + 0.5f);
  let x_870 : f32 = u_xlat76;
  let x_872 : vec4<f32> = u_xlat3;
  let x_874 : vec3<f32> = (vec3<f32>(x_870, x_870, x_870) * vec3<f32>(x_872.x, x_872.y, x_872.z));
  let x_875 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_874.x, x_874.y, x_874.z, x_875.w);
  let x_878 : f32 = u_xlat2.w;
  u_xlat76 = max(x_878, 0.00009999999747378752f);
  let x_881 : vec4<f32> = u_xlat2;
  let x_883 : f32 = u_xlat76;
  let x_885 : vec3<f32> = (vec3<f32>(x_881.x, x_881.y, x_881.z) / vec3<f32>(x_883, x_883, x_883));
  let x_886 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_885.x, x_885.y, x_885.z, x_886.w);
  let x_889 : f32 = u_xlat0.x;
  u_xlat76 = ((-(x_889) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_895 : f32 = u_xlat50;
  let x_896 : f32 = u_xlat76;
  u_xlat77 = (x_895 + -(x_896));
  let x_899 : f32 = u_xlat76;
  let x_901 : vec4<f32> = u_xlat5;
  let x_903 : vec3<f32> = (vec3<f32>(x_899, x_899, x_899) * vec3<f32>(x_901.x, x_901.y, x_901.z));
  let x_904 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_903.x, x_903.y, x_903.z, x_904.w);
  let x_906 : vec4<f32> = u_xlat5;
  let x_910 : vec3<f32> = (vec3<f32>(x_906.x, x_906.y, x_906.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_911 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_910.x, x_910.y, x_910.z, x_911.w);
  let x_913 : vec3<f32> = u_xlat0;
  let x_915 : vec4<f32> = u_xlat4;
  let x_920 : vec3<f32> = ((vec3<f32>(x_913.x, x_913.x, x_913.x) * vec3<f32>(x_915.x, x_915.y, x_915.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_921 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_920.x, x_920.y, x_920.z, x_921.w);
  let x_923 : f32 = u_xlat50;
  u_xlat0.x = (-(x_923) + 1.0f);
  let x_928 : f32 = u_xlat0.x;
  let x_930 : f32 = u_xlat0.x;
  u_xlat50 = (x_928 * x_930);
  let x_932 : f32 = u_xlat50;
  u_xlat50 = max(x_932, 0.0078125f);
  let x_935 : f32 = u_xlat50;
  let x_936 : f32 = u_xlat50;
  u_xlat76 = (x_935 * x_936);
  let x_938 : f32 = u_xlat77;
  u_xlat77 = (x_938 + 1.0f);
  let x_940 : f32 = u_xlat77;
  u_xlat77 = clamp(x_940, 0.0f, 1.0f);
  let x_943 : f32 = u_xlat50;
  u_xlat78 = ((x_943 * 4.0f) + 2.0f);
  let x_946 : f32 = u_xlat25;
  u_xlat25 = min(x_946, 1.0f);
  let x_959 : f32 = x_957.x_MainLightShadowParams.y;
  u_xlatb79 = (0.0f < x_959);
  let x_961 : bool = u_xlatb79;
  if (x_961) {
    let x_965 : f32 = x_957.x_MainLightShadowParams.y;
    u_xlatb79 = (x_965 == 1.0f);
    let x_967 : bool = u_xlatb79;
    if (x_967) {
      let x_971 : vec4<f32> = vs_TEXCOORD8;
      let x_974 : vec4<f32> = x_957.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_971.x, x_971.y, x_971.x, x_971.y) + x_974);
      let x_978 : vec4<f32> = u_xlat5;
      let x_979 : vec2<f32> = vec2<f32>(x_978.x, x_978.y);
      let x_982 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_979.x, x_979.y, x_982);
      let x_994 : vec3<f32> = txVec0;
      let x_996 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_994.xy, x_994.z);
      u_xlat6.x = x_996;
      let x_999 : vec4<f32> = u_xlat5;
      let x_1000 : vec2<f32> = vec2<f32>(x_999.z, x_999.w);
      let x_1002 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_1000.x, x_1000.y, x_1002);
      let x_1009 : vec3<f32> = txVec1;
      let x_1011 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1009.xy, x_1009.z);
      u_xlat6.y = x_1011;
      let x_1013 : vec4<f32> = vs_TEXCOORD8;
      let x_1016 : vec4<f32> = x_957.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_1013.x, x_1013.y, x_1013.x, x_1013.y) + x_1016);
      let x_1019 : vec4<f32> = u_xlat5;
      let x_1020 : vec2<f32> = vec2<f32>(x_1019.x, x_1019.y);
      let x_1022 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_1020.x, x_1020.y, x_1022);
      let x_1029 : vec3<f32> = txVec2;
      let x_1031 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1029.xy, x_1029.z);
      u_xlat6.z = x_1031;
      let x_1034 : vec4<f32> = u_xlat5;
      let x_1035 : vec2<f32> = vec2<f32>(x_1034.z, x_1034.w);
      let x_1037 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_1035.x, x_1035.y, x_1037);
      let x_1044 : vec3<f32> = txVec3;
      let x_1046 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1044.xy, x_1044.z);
      u_xlat6.w = x_1046;
      let x_1049 : vec4<f32> = u_xlat6;
      u_xlat79 = dot(x_1049, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1056 : f32 = x_957.x_MainLightShadowParams.y;
      u_xlatb5 = (x_1056 == 2.0f);
      let x_1058 : bool = u_xlatb5;
      if (x_1058) {
        let x_1061 : vec4<f32> = vs_TEXCOORD8;
        let x_1064 : vec4<f32> = x_957.x_MainLightShadowmapSize;
        let x_1067 : vec2<f32> = ((vec2<f32>(x_1061.x, x_1061.y) * vec2<f32>(x_1064.z, x_1064.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1068 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1067.x, x_1067.y, x_1068.z, x_1068.w);
        let x_1070 : vec4<f32> = u_xlat5;
        let x_1072 : vec2<f32> = floor(vec2<f32>(x_1070.x, x_1070.y));
        let x_1073 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1072.x, x_1072.y, x_1073.z, x_1073.w);
        let x_1077 : vec4<f32> = vs_TEXCOORD8;
        let x_1080 : vec4<f32> = x_957.x_MainLightShadowmapSize;
        let x_1083 : vec4<f32> = u_xlat5;
        u_xlat55 = ((vec2<f32>(x_1077.x, x_1077.y) * vec2<f32>(x_1080.z, x_1080.w)) + -(vec2<f32>(x_1083.x, x_1083.y)));
        let x_1087 : vec2<f32> = u_xlat55;
        u_xlat6 = (vec4<f32>(x_1087.x, x_1087.x, x_1087.y, x_1087.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1091 : vec4<f32> = u_xlat6;
        let x_1093 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1091.x, x_1091.x, x_1091.z, x_1091.z) * vec4<f32>(x_1093.x, x_1093.x, x_1093.z, x_1093.z));
        let x_1096 : vec4<f32> = u_xlat7;
        let x_1100 : vec2<f32> = (vec2<f32>(x_1096.y, x_1096.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1101 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1100.x, x_1101.y, x_1100.y, x_1101.w);
        let x_1103 : vec4<f32> = u_xlat7;
        let x_1106 : vec2<f32> = u_xlat55;
        let x_1108 : vec2<f32> = ((vec2<f32>(x_1103.x, x_1103.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1106));
        let x_1109 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1108.x, x_1108.y, x_1109.z, x_1109.w);
        let x_1112 : vec2<f32> = u_xlat55;
        u_xlat57 = (-(x_1112) + vec2<f32>(1.0f, 1.0f));
        let x_1116 : vec2<f32> = u_xlat55;
        let x_1118 : vec2<f32> = min(x_1116, vec2<f32>(0.0f, 0.0f));
        let x_1119 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1118.x, x_1118.y, x_1119.z, x_1119.w);
        let x_1121 : vec4<f32> = u_xlat8;
        let x_1124 : vec4<f32> = u_xlat8;
        let x_1127 : vec2<f32> = u_xlat57;
        let x_1128 : vec2<f32> = ((-(vec2<f32>(x_1121.x, x_1121.y)) * vec2<f32>(x_1124.x, x_1124.y)) + x_1127);
        let x_1129 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1128.x, x_1128.y, x_1129.z, x_1129.w);
        let x_1131 : vec2<f32> = u_xlat55;
        u_xlat55 = max(x_1131, vec2<f32>(0.0f, 0.0f));
        let x_1133 : vec2<f32> = u_xlat55;
        let x_1135 : vec2<f32> = u_xlat55;
        let x_1137 : vec4<f32> = u_xlat6;
        u_xlat55 = ((-(x_1133) * x_1135) + vec2<f32>(x_1137.y, x_1137.w));
        let x_1140 : vec4<f32> = u_xlat8;
        let x_1142 : vec2<f32> = (vec2<f32>(x_1140.x, x_1140.y) + vec2<f32>(1.0f, 1.0f));
        let x_1143 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1142.x, x_1142.y, x_1143.z, x_1143.w);
        let x_1145 : vec2<f32> = u_xlat55;
        u_xlat55 = (x_1145 + vec2<f32>(1.0f, 1.0f));
        let x_1147 : vec4<f32> = u_xlat7;
        let x_1151 : vec2<f32> = (vec2<f32>(x_1147.x, x_1147.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1152 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1151.x, x_1151.y, x_1152.z, x_1152.w);
        let x_1154 : vec2<f32> = u_xlat57;
        let x_1155 : vec2<f32> = (x_1154 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1156 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1155.x, x_1155.y, x_1156.z, x_1156.w);
        let x_1158 : vec4<f32> = u_xlat8;
        let x_1160 : vec2<f32> = (vec2<f32>(x_1158.x, x_1158.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1161 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1160.x, x_1160.y, x_1161.z, x_1161.w);
        let x_1163 : vec2<f32> = u_xlat55;
        let x_1164 : vec2<f32> = (x_1163 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1165 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1164.x, x_1164.y, x_1165.z, x_1165.w);
        let x_1167 : vec4<f32> = u_xlat6;
        u_xlat55 = (vec2<f32>(x_1167.y, x_1167.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1171 : f32 = u_xlat8.x;
        u_xlat9.z = x_1171;
        let x_1174 : f32 = u_xlat55.x;
        u_xlat9.w = x_1174;
        let x_1177 : f32 = u_xlat10.x;
        u_xlat7.z = x_1177;
        let x_1180 : f32 = u_xlat6.x;
        u_xlat7.w = x_1180;
        let x_1182 : vec4<f32> = u_xlat7;
        let x_1184 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_1182.z, x_1182.w, x_1182.x, x_1182.z) + vec4<f32>(x_1184.z, x_1184.w, x_1184.x, x_1184.z));
        let x_1188 : f32 = u_xlat9.y;
        u_xlat8.z = x_1188;
        let x_1191 : f32 = u_xlat55.y;
        u_xlat8.w = x_1191;
        let x_1194 : f32 = u_xlat7.y;
        u_xlat10.z = x_1194;
        let x_1197 : f32 = u_xlat6.z;
        u_xlat10.w = x_1197;
        let x_1199 : vec4<f32> = u_xlat8;
        let x_1201 : vec4<f32> = u_xlat10;
        let x_1203 : vec3<f32> = (vec3<f32>(x_1199.z, x_1199.y, x_1199.w) + vec3<f32>(x_1201.z, x_1201.y, x_1201.w));
        let x_1204 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1203.x, x_1203.y, x_1203.z, x_1204.w);
        let x_1206 : vec4<f32> = u_xlat7;
        let x_1208 : vec4<f32> = u_xlat11;
        let x_1210 : vec3<f32> = (vec3<f32>(x_1206.x, x_1206.z, x_1206.w) / vec3<f32>(x_1208.z, x_1208.w, x_1208.y));
        let x_1211 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1210.x, x_1210.y, x_1210.z, x_1211.w);
        let x_1213 : vec4<f32> = u_xlat7;
        let x_1218 : vec3<f32> = (vec3<f32>(x_1213.x, x_1213.y, x_1213.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1219 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1218.x, x_1218.y, x_1218.z, x_1219.w);
        let x_1221 : vec4<f32> = u_xlat10;
        let x_1223 : vec4<f32> = u_xlat6;
        let x_1225 : vec3<f32> = (vec3<f32>(x_1221.z, x_1221.y, x_1221.w) / vec3<f32>(x_1223.x, x_1223.y, x_1223.z));
        let x_1226 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1225.x, x_1225.y, x_1225.z, x_1226.w);
        let x_1228 : vec4<f32> = u_xlat8;
        let x_1230 : vec3<f32> = (vec3<f32>(x_1228.x, x_1228.y, x_1228.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1231 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1230.x, x_1230.y, x_1230.z, x_1231.w);
        let x_1233 : vec4<f32> = u_xlat7;
        let x_1236 : vec4<f32> = x_957.x_MainLightShadowmapSize;
        let x_1238 : vec3<f32> = (vec3<f32>(x_1233.y, x_1233.x, x_1233.z) * vec3<f32>(x_1236.x, x_1236.x, x_1236.x));
        let x_1239 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1238.x, x_1238.y, x_1238.z, x_1239.w);
        let x_1241 : vec4<f32> = u_xlat8;
        let x_1244 : vec4<f32> = x_957.x_MainLightShadowmapSize;
        let x_1246 : vec3<f32> = (vec3<f32>(x_1241.x, x_1241.y, x_1241.z) * vec3<f32>(x_1244.y, x_1244.y, x_1244.y));
        let x_1247 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1246.x, x_1246.y, x_1246.z, x_1247.w);
        let x_1250 : f32 = u_xlat8.x;
        u_xlat7.w = x_1250;
        let x_1252 : vec4<f32> = u_xlat5;
        let x_1255 : vec4<f32> = x_957.x_MainLightShadowmapSize;
        let x_1258 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_1252.x, x_1252.y, x_1252.x, x_1252.y) * vec4<f32>(x_1255.x, x_1255.y, x_1255.x, x_1255.y)) + vec4<f32>(x_1258.y, x_1258.w, x_1258.x, x_1258.w));
        let x_1261 : vec4<f32> = u_xlat5;
        let x_1264 : vec4<f32> = x_957.x_MainLightShadowmapSize;
        let x_1267 : vec4<f32> = u_xlat7;
        u_xlat55 = ((vec2<f32>(x_1261.x, x_1261.y) * vec2<f32>(x_1264.x, x_1264.y)) + vec2<f32>(x_1267.z, x_1267.w));
        let x_1271 : f32 = u_xlat7.y;
        u_xlat8.w = x_1271;
        let x_1273 : vec4<f32> = u_xlat8;
        let x_1274 : vec2<f32> = vec2<f32>(x_1273.y, x_1273.z);
        let x_1275 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1275.x, x_1274.x, x_1275.z, x_1274.y);
        let x_1277 : vec4<f32> = u_xlat5;
        let x_1280 : vec4<f32> = x_957.x_MainLightShadowmapSize;
        let x_1283 : vec4<f32> = u_xlat7;
        u_xlat10 = ((vec4<f32>(x_1277.x, x_1277.y, x_1277.x, x_1277.y) * vec4<f32>(x_1280.x, x_1280.y, x_1280.x, x_1280.y)) + vec4<f32>(x_1283.x, x_1283.y, x_1283.z, x_1283.y));
        let x_1286 : vec4<f32> = u_xlat5;
        let x_1289 : vec4<f32> = x_957.x_MainLightShadowmapSize;
        let x_1292 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1286.x, x_1286.y, x_1286.x, x_1286.y) * vec4<f32>(x_1289.x, x_1289.y, x_1289.x, x_1289.y)) + vec4<f32>(x_1292.w, x_1292.y, x_1292.w, x_1292.z));
        let x_1295 : vec4<f32> = u_xlat5;
        let x_1298 : vec4<f32> = x_957.x_MainLightShadowmapSize;
        let x_1301 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_1295.x, x_1295.y, x_1295.x, x_1295.y) * vec4<f32>(x_1298.x, x_1298.y, x_1298.x, x_1298.y)) + vec4<f32>(x_1301.x, x_1301.w, x_1301.z, x_1301.w));
        let x_1304 : vec4<f32> = u_xlat6;
        let x_1306 : vec4<f32> = u_xlat11;
        u_xlat12 = (vec4<f32>(x_1304.x, x_1304.x, x_1304.x, x_1304.y) * vec4<f32>(x_1306.z, x_1306.w, x_1306.y, x_1306.z));
        let x_1309 : vec4<f32> = u_xlat6;
        let x_1311 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_1309.y, x_1309.y, x_1309.z, x_1309.z) * x_1311);
        let x_1314 : f32 = u_xlat6.z;
        let x_1316 : f32 = u_xlat11.y;
        u_xlat5.x = (x_1314 * x_1316);
        let x_1320 : vec4<f32> = u_xlat9;
        let x_1321 : vec2<f32> = vec2<f32>(x_1320.x, x_1320.y);
        let x_1323 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_1321.x, x_1321.y, x_1323);
        let x_1331 : vec3<f32> = txVec4;
        let x_1333 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1331.xy, x_1331.z);
        u_xlat30.x = x_1333;
        let x_1336 : vec4<f32> = u_xlat9;
        let x_1337 : vec2<f32> = vec2<f32>(x_1336.z, x_1336.w);
        let x_1339 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_1337.x, x_1337.y, x_1339);
        let x_1346 : vec3<f32> = txVec5;
        let x_1348 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1346.xy, x_1346.z);
        u_xlat6.x = x_1348;
        let x_1351 : f32 = u_xlat6.x;
        let x_1353 : f32 = u_xlat12.y;
        u_xlat6.x = (x_1351 * x_1353);
        let x_1357 : f32 = u_xlat12.x;
        let x_1359 : f32 = u_xlat30.x;
        let x_1362 : f32 = u_xlat6.x;
        u_xlat30.x = ((x_1357 * x_1359) + x_1362);
        let x_1366 : vec2<f32> = u_xlat55;
        let x_1368 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_1366.x, x_1366.y, x_1368);
        let x_1375 : vec3<f32> = txVec6;
        let x_1377 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1375.xy, x_1375.z);
        u_xlat55.x = x_1377;
        let x_1380 : f32 = u_xlat12.z;
        let x_1382 : f32 = u_xlat55.x;
        let x_1385 : f32 = u_xlat30.x;
        u_xlat30.x = ((x_1380 * x_1382) + x_1385);
        let x_1389 : vec4<f32> = u_xlat8;
        let x_1390 : vec2<f32> = vec2<f32>(x_1389.x, x_1389.y);
        let x_1392 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_1390.x, x_1390.y, x_1392);
        let x_1399 : vec3<f32> = txVec7;
        let x_1401 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1399.xy, x_1399.z);
        u_xlat55.x = x_1401;
        let x_1404 : f32 = u_xlat12.w;
        let x_1406 : f32 = u_xlat55.x;
        let x_1409 : f32 = u_xlat30.x;
        u_xlat30.x = ((x_1404 * x_1406) + x_1409);
        let x_1413 : vec4<f32> = u_xlat10;
        let x_1414 : vec2<f32> = vec2<f32>(x_1413.x, x_1413.y);
        let x_1416 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_1414.x, x_1414.y, x_1416);
        let x_1423 : vec3<f32> = txVec8;
        let x_1425 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1423.xy, x_1423.z);
        u_xlat55.x = x_1425;
        let x_1428 : f32 = u_xlat13.x;
        let x_1430 : f32 = u_xlat55.x;
        let x_1433 : f32 = u_xlat30.x;
        u_xlat30.x = ((x_1428 * x_1430) + x_1433);
        let x_1437 : vec4<f32> = u_xlat10;
        let x_1438 : vec2<f32> = vec2<f32>(x_1437.z, x_1437.w);
        let x_1440 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_1438.x, x_1438.y, x_1440);
        let x_1447 : vec3<f32> = txVec9;
        let x_1449 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1447.xy, x_1447.z);
        u_xlat55.x = x_1449;
        let x_1452 : f32 = u_xlat13.y;
        let x_1454 : f32 = u_xlat55.x;
        let x_1457 : f32 = u_xlat30.x;
        u_xlat30.x = ((x_1452 * x_1454) + x_1457);
        let x_1461 : vec4<f32> = u_xlat8;
        let x_1462 : vec2<f32> = vec2<f32>(x_1461.z, x_1461.w);
        let x_1464 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_1462.x, x_1462.y, x_1464);
        let x_1471 : vec3<f32> = txVec10;
        let x_1473 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1471.xy, x_1471.z);
        u_xlat55.x = x_1473;
        let x_1476 : f32 = u_xlat13.z;
        let x_1478 : f32 = u_xlat55.x;
        let x_1481 : f32 = u_xlat30.x;
        u_xlat30.x = ((x_1476 * x_1478) + x_1481);
        let x_1485 : vec4<f32> = u_xlat7;
        let x_1486 : vec2<f32> = vec2<f32>(x_1485.x, x_1485.y);
        let x_1488 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_1486.x, x_1486.y, x_1488);
        let x_1495 : vec3<f32> = txVec11;
        let x_1497 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1495.xy, x_1495.z);
        u_xlat55.x = x_1497;
        let x_1500 : f32 = u_xlat13.w;
        let x_1502 : f32 = u_xlat55.x;
        let x_1505 : f32 = u_xlat30.x;
        u_xlat30.x = ((x_1500 * x_1502) + x_1505);
        let x_1509 : vec4<f32> = u_xlat7;
        let x_1510 : vec2<f32> = vec2<f32>(x_1509.z, x_1509.w);
        let x_1512 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_1510.x, x_1510.y, x_1512);
        let x_1519 : vec3<f32> = txVec12;
        let x_1521 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1519.xy, x_1519.z);
        u_xlat55.x = x_1521;
        let x_1524 : f32 = u_xlat5.x;
        let x_1526 : f32 = u_xlat55.x;
        let x_1529 : f32 = u_xlat30.x;
        u_xlat79 = ((x_1524 * x_1526) + x_1529);
      } else {
        let x_1532 : vec4<f32> = vs_TEXCOORD8;
        let x_1535 : vec4<f32> = x_957.x_MainLightShadowmapSize;
        let x_1538 : vec2<f32> = ((vec2<f32>(x_1532.x, x_1532.y) * vec2<f32>(x_1535.z, x_1535.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1539 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1538.x, x_1538.y, x_1539.z, x_1539.w);
        let x_1541 : vec4<f32> = u_xlat5;
        let x_1543 : vec2<f32> = floor(vec2<f32>(x_1541.x, x_1541.y));
        let x_1544 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1543.x, x_1543.y, x_1544.z, x_1544.w);
        let x_1546 : vec4<f32> = vs_TEXCOORD8;
        let x_1549 : vec4<f32> = x_957.x_MainLightShadowmapSize;
        let x_1552 : vec4<f32> = u_xlat5;
        u_xlat55 = ((vec2<f32>(x_1546.x, x_1546.y) * vec2<f32>(x_1549.z, x_1549.w)) + -(vec2<f32>(x_1552.x, x_1552.y)));
        let x_1556 : vec2<f32> = u_xlat55;
        u_xlat6 = (vec4<f32>(x_1556.x, x_1556.x, x_1556.y, x_1556.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1559 : vec4<f32> = u_xlat6;
        let x_1561 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1559.x, x_1559.x, x_1559.z, x_1559.z) * vec4<f32>(x_1561.x, x_1561.x, x_1561.z, x_1561.z));
        let x_1564 : vec4<f32> = u_xlat7;
        let x_1568 : vec2<f32> = (vec2<f32>(x_1564.y, x_1564.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1569 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1569.x, x_1568.x, x_1569.z, x_1568.y);
        let x_1571 : vec4<f32> = u_xlat7;
        let x_1574 : vec2<f32> = u_xlat55;
        let x_1576 : vec2<f32> = ((vec2<f32>(x_1571.x, x_1571.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1574));
        let x_1577 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1576.x, x_1577.y, x_1576.y, x_1577.w);
        let x_1579 : vec2<f32> = u_xlat55;
        let x_1581 : vec2<f32> = (-(x_1579) + vec2<f32>(1.0f, 1.0f));
        let x_1582 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1581.x, x_1581.y, x_1582.z, x_1582.w);
        let x_1584 : vec2<f32> = u_xlat55;
        u_xlat57 = min(x_1584, vec2<f32>(0.0f, 0.0f));
        let x_1586 : vec2<f32> = u_xlat57;
        let x_1588 : vec2<f32> = u_xlat57;
        let x_1590 : vec4<f32> = u_xlat7;
        let x_1592 : vec2<f32> = ((-(x_1586) * x_1588) + vec2<f32>(x_1590.x, x_1590.y));
        let x_1593 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1592.x, x_1592.y, x_1593.z, x_1593.w);
        let x_1595 : vec2<f32> = u_xlat55;
        u_xlat57 = max(x_1595, vec2<f32>(0.0f, 0.0f));
        let x_1598 : vec2<f32> = u_xlat57;
        let x_1600 : vec2<f32> = u_xlat57;
        let x_1602 : vec4<f32> = u_xlat6;
        let x_1604 : vec2<f32> = ((-(x_1598) * x_1600) + vec2<f32>(x_1602.y, x_1602.w));
        let x_1605 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_1604.x, x_1605.y, x_1604.y);
        let x_1607 : vec4<f32> = u_xlat7;
        let x_1609 : vec2<f32> = (vec2<f32>(x_1607.x, x_1607.y) + vec2<f32>(2.0f, 2.0f));
        let x_1610 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1609.x, x_1609.y, x_1610.z, x_1610.w);
        let x_1612 : vec3<f32> = u_xlat31;
        let x_1614 : vec2<f32> = (vec2<f32>(x_1612.x, x_1612.z) + vec2<f32>(2.0f, 2.0f));
        let x_1615 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1615.x, x_1614.x, x_1615.z, x_1614.y);
        let x_1618 : f32 = u_xlat6.y;
        u_xlat9.z = (x_1618 * 0.08163200318813323975f);
        let x_1622 : vec4<f32> = u_xlat6;
        let x_1625 : vec3<f32> = (vec3<f32>(x_1622.z, x_1622.x, x_1622.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1626 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1625.x, x_1625.y, x_1625.z, x_1626.w);
        let x_1628 : vec4<f32> = u_xlat7;
        let x_1631 : vec2<f32> = (vec2<f32>(x_1628.x, x_1628.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1632 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1631.x, x_1631.y, x_1632.z, x_1632.w);
        let x_1635 : f32 = u_xlat10.y;
        u_xlat9.x = x_1635;
        let x_1637 : vec2<f32> = u_xlat55;
        let x_1644 : vec2<f32> = ((vec2<f32>(x_1637.x, x_1637.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1645 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1645.x, x_1644.x, x_1645.z, x_1644.y);
        let x_1647 : vec2<f32> = u_xlat55;
        let x_1651 : vec2<f32> = ((vec2<f32>(x_1647.x, x_1647.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1652 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1651.x, x_1652.y, x_1651.y, x_1652.w);
        let x_1655 : f32 = u_xlat6.x;
        u_xlat7.y = x_1655;
        let x_1658 : f32 = u_xlat8.y;
        u_xlat7.w = x_1658;
        let x_1660 : vec4<f32> = u_xlat7;
        let x_1661 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1660 + x_1661);
        let x_1663 : vec2<f32> = u_xlat55;
        let x_1666 : vec2<f32> = ((vec2<f32>(x_1663.y, x_1663.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1667 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1667.x, x_1666.x, x_1667.z, x_1666.y);
        let x_1669 : vec2<f32> = u_xlat55;
        let x_1672 : vec2<f32> = ((vec2<f32>(x_1669.y, x_1669.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1673 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1672.x, x_1673.y, x_1672.y, x_1673.w);
        let x_1676 : f32 = u_xlat6.y;
        u_xlat8.y = x_1676;
        let x_1678 : vec4<f32> = u_xlat8;
        let x_1679 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1678 + x_1679);
        let x_1681 : vec4<f32> = u_xlat7;
        let x_1682 : vec4<f32> = u_xlat9;
        u_xlat7 = (x_1681 / x_1682);
        let x_1684 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1684 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1690 : vec4<f32> = u_xlat8;
        let x_1691 : vec4<f32> = u_xlat6;
        u_xlat8 = (x_1690 / x_1691);
        let x_1693 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1693 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1695 : vec4<f32> = u_xlat7;
        let x_1698 : vec4<f32> = x_957.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1695.w, x_1695.x, x_1695.y, x_1695.z) * vec4<f32>(x_1698.x, x_1698.x, x_1698.x, x_1698.x));
        let x_1701 : vec4<f32> = u_xlat8;
        let x_1704 : vec4<f32> = x_957.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1701.x, x_1701.w, x_1701.y, x_1701.z) * vec4<f32>(x_1704.y, x_1704.y, x_1704.y, x_1704.y));
        let x_1707 : vec4<f32> = u_xlat7;
        let x_1708 : vec3<f32> = vec3<f32>(x_1707.y, x_1707.z, x_1707.w);
        let x_1709 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1708.x, x_1709.y, x_1708.y, x_1708.z);
        let x_1712 : f32 = u_xlat8.x;
        u_xlat10.y = x_1712;
        let x_1714 : vec4<f32> = u_xlat5;
        let x_1717 : vec4<f32> = x_957.x_MainLightShadowmapSize;
        let x_1720 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1714.x, x_1714.y, x_1714.x, x_1714.y) * vec4<f32>(x_1717.x, x_1717.y, x_1717.x, x_1717.y)) + vec4<f32>(x_1720.x, x_1720.y, x_1720.z, x_1720.y));
        let x_1723 : vec4<f32> = u_xlat5;
        let x_1726 : vec4<f32> = x_957.x_MainLightShadowmapSize;
        let x_1729 : vec4<f32> = u_xlat10;
        u_xlat55 = ((vec2<f32>(x_1723.x, x_1723.y) * vec2<f32>(x_1726.x, x_1726.y)) + vec2<f32>(x_1729.w, x_1729.y));
        let x_1733 : f32 = u_xlat10.y;
        u_xlat7.y = x_1733;
        let x_1736 : f32 = u_xlat8.z;
        u_xlat10.y = x_1736;
        let x_1738 : vec4<f32> = u_xlat5;
        let x_1741 : vec4<f32> = x_957.x_MainLightShadowmapSize;
        let x_1744 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1738.x, x_1738.y, x_1738.x, x_1738.y) * vec4<f32>(x_1741.x, x_1741.y, x_1741.x, x_1741.y)) + vec4<f32>(x_1744.x, x_1744.y, x_1744.z, x_1744.y));
        let x_1747 : vec4<f32> = u_xlat5;
        let x_1750 : vec4<f32> = x_957.x_MainLightShadowmapSize;
        let x_1753 : vec4<f32> = u_xlat10;
        let x_1755 : vec2<f32> = ((vec2<f32>(x_1747.x, x_1747.y) * vec2<f32>(x_1750.x, x_1750.y)) + vec2<f32>(x_1753.w, x_1753.y));
        let x_1756 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1755.x, x_1755.y, x_1756.z, x_1756.w);
        let x_1759 : f32 = u_xlat10.y;
        u_xlat7.z = x_1759;
        let x_1762 : vec4<f32> = u_xlat5;
        let x_1765 : vec4<f32> = x_957.x_MainLightShadowmapSize;
        let x_1768 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1762.x, x_1762.y, x_1762.x, x_1762.y) * vec4<f32>(x_1765.x, x_1765.y, x_1765.x, x_1765.y)) + vec4<f32>(x_1768.x, x_1768.y, x_1768.x, x_1768.z));
        let x_1772 : f32 = u_xlat8.w;
        u_xlat10.y = x_1772;
        let x_1775 : vec4<f32> = u_xlat5;
        let x_1778 : vec4<f32> = x_957.x_MainLightShadowmapSize;
        let x_1781 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1775.x, x_1775.y, x_1775.x, x_1775.y) * vec4<f32>(x_1778.x, x_1778.y, x_1778.x, x_1778.y)) + vec4<f32>(x_1781.x, x_1781.y, x_1781.z, x_1781.y));
        let x_1785 : vec4<f32> = u_xlat5;
        let x_1788 : vec4<f32> = x_957.x_MainLightShadowmapSize;
        let x_1791 : vec4<f32> = u_xlat10;
        u_xlat32 = ((vec2<f32>(x_1785.x, x_1785.y) * vec2<f32>(x_1788.x, x_1788.y)) + vec2<f32>(x_1791.w, x_1791.y));
        let x_1795 : f32 = u_xlat10.y;
        u_xlat7.w = x_1795;
        let x_1798 : vec4<f32> = u_xlat5;
        let x_1801 : vec4<f32> = x_957.x_MainLightShadowmapSize;
        let x_1804 : vec4<f32> = u_xlat7;
        u_xlat63 = ((vec2<f32>(x_1798.x, x_1798.y) * vec2<f32>(x_1801.x, x_1801.y)) + vec2<f32>(x_1804.x, x_1804.w));
        let x_1807 : vec4<f32> = u_xlat10;
        let x_1808 : vec3<f32> = vec3<f32>(x_1807.x, x_1807.z, x_1807.w);
        let x_1809 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1808.x, x_1809.y, x_1808.y, x_1808.z);
        let x_1811 : vec4<f32> = u_xlat5;
        let x_1814 : vec4<f32> = x_957.x_MainLightShadowmapSize;
        let x_1817 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1811.x, x_1811.y, x_1811.x, x_1811.y) * vec4<f32>(x_1814.x, x_1814.y, x_1814.x, x_1814.y)) + vec4<f32>(x_1817.x, x_1817.y, x_1817.z, x_1817.y));
        let x_1821 : vec4<f32> = u_xlat5;
        let x_1824 : vec4<f32> = x_957.x_MainLightShadowmapSize;
        let x_1827 : vec4<f32> = u_xlat8;
        u_xlat58 = ((vec2<f32>(x_1821.x, x_1821.y) * vec2<f32>(x_1824.x, x_1824.y)) + vec2<f32>(x_1827.w, x_1827.y));
        let x_1831 : f32 = u_xlat7.x;
        u_xlat8.x = x_1831;
        let x_1833 : vec4<f32> = u_xlat5;
        let x_1836 : vec4<f32> = x_957.x_MainLightShadowmapSize;
        let x_1839 : vec4<f32> = u_xlat8;
        let x_1841 : vec2<f32> = ((vec2<f32>(x_1833.x, x_1833.y) * vec2<f32>(x_1836.x, x_1836.y)) + vec2<f32>(x_1839.x, x_1839.y));
        let x_1842 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1841.x, x_1841.y, x_1842.z, x_1842.w);
        let x_1845 : vec4<f32> = u_xlat6;
        let x_1847 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1845.x, x_1845.x, x_1845.x, x_1845.x) * x_1847);
        let x_1850 : vec4<f32> = u_xlat6;
        let x_1852 : vec4<f32> = u_xlat9;
        u_xlat17 = (vec4<f32>(x_1850.y, x_1850.y, x_1850.y, x_1850.y) * x_1852);
        let x_1855 : vec4<f32> = u_xlat6;
        let x_1857 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1855.z, x_1855.z, x_1855.z, x_1855.z) * x_1857);
        let x_1859 : vec4<f32> = u_xlat6;
        let x_1861 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_1859.w, x_1859.w, x_1859.w, x_1859.w) * x_1861);
        let x_1864 : vec4<f32> = u_xlat11;
        let x_1865 : vec2<f32> = vec2<f32>(x_1864.x, x_1864.y);
        let x_1867 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1865.x, x_1865.y, x_1867);
        let x_1874 : vec3<f32> = txVec13;
        let x_1876 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1874.xy, x_1874.z);
        u_xlat7.x = x_1876;
        let x_1879 : vec4<f32> = u_xlat11;
        let x_1880 : vec2<f32> = vec2<f32>(x_1879.z, x_1879.w);
        let x_1882 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1880.x, x_1880.y, x_1882);
        let x_1890 : vec3<f32> = txVec14;
        let x_1892 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1890.xy, x_1890.z);
        u_xlat82 = x_1892;
        let x_1893 : f32 = u_xlat82;
        let x_1895 : f32 = u_xlat16.y;
        u_xlat82 = (x_1893 * x_1895);
        let x_1898 : f32 = u_xlat16.x;
        let x_1900 : f32 = u_xlat7.x;
        let x_1902 : f32 = u_xlat82;
        u_xlat7.x = ((x_1898 * x_1900) + x_1902);
        let x_1906 : vec2<f32> = u_xlat55;
        let x_1908 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1906.x, x_1906.y, x_1908);
        let x_1915 : vec3<f32> = txVec15;
        let x_1917 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1915.xy, x_1915.z);
        u_xlat55.x = x_1917;
        let x_1920 : f32 = u_xlat16.z;
        let x_1922 : f32 = u_xlat55.x;
        let x_1925 : f32 = u_xlat7.x;
        u_xlat55.x = ((x_1920 * x_1922) + x_1925);
        let x_1929 : vec4<f32> = u_xlat14;
        let x_1930 : vec2<f32> = vec2<f32>(x_1929.x, x_1929.y);
        let x_1932 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1930.x, x_1930.y, x_1932);
        let x_1940 : vec3<f32> = txVec16;
        let x_1942 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1940.xy, x_1940.z);
        u_xlat80 = x_1942;
        let x_1944 : f32 = u_xlat16.w;
        let x_1945 : f32 = u_xlat80;
        let x_1948 : f32 = u_xlat55.x;
        u_xlat55.x = ((x_1944 * x_1945) + x_1948);
        let x_1952 : vec4<f32> = u_xlat12;
        let x_1953 : vec2<f32> = vec2<f32>(x_1952.x, x_1952.y);
        let x_1955 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1953.x, x_1953.y, x_1955);
        let x_1962 : vec3<f32> = txVec17;
        let x_1964 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1962.xy, x_1962.z);
        u_xlat80 = x_1964;
        let x_1966 : f32 = u_xlat17.x;
        let x_1967 : f32 = u_xlat80;
        let x_1970 : f32 = u_xlat55.x;
        u_xlat55.x = ((x_1966 * x_1967) + x_1970);
        let x_1974 : vec4<f32> = u_xlat12;
        let x_1975 : vec2<f32> = vec2<f32>(x_1974.z, x_1974.w);
        let x_1977 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1975.x, x_1975.y, x_1977);
        let x_1984 : vec3<f32> = txVec18;
        let x_1986 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1984.xy, x_1984.z);
        u_xlat80 = x_1986;
        let x_1988 : f32 = u_xlat17.y;
        let x_1989 : f32 = u_xlat80;
        let x_1992 : f32 = u_xlat55.x;
        u_xlat55.x = ((x_1988 * x_1989) + x_1992);
        let x_1996 : vec4<f32> = u_xlat13;
        let x_1997 : vec2<f32> = vec2<f32>(x_1996.x, x_1996.y);
        let x_1999 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1997.x, x_1997.y, x_1999);
        let x_2006 : vec3<f32> = txVec19;
        let x_2008 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2006.xy, x_2006.z);
        u_xlat80 = x_2008;
        let x_2010 : f32 = u_xlat17.z;
        let x_2011 : f32 = u_xlat80;
        let x_2014 : f32 = u_xlat55.x;
        u_xlat55.x = ((x_2010 * x_2011) + x_2014);
        let x_2018 : vec4<f32> = u_xlat14;
        let x_2019 : vec2<f32> = vec2<f32>(x_2018.z, x_2018.w);
        let x_2021 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_2019.x, x_2019.y, x_2021);
        let x_2028 : vec3<f32> = txVec20;
        let x_2030 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2028.xy, x_2028.z);
        u_xlat80 = x_2030;
        let x_2032 : f32 = u_xlat17.w;
        let x_2033 : f32 = u_xlat80;
        let x_2036 : f32 = u_xlat55.x;
        u_xlat55.x = ((x_2032 * x_2033) + x_2036);
        let x_2040 : vec4<f32> = u_xlat15;
        let x_2041 : vec2<f32> = vec2<f32>(x_2040.x, x_2040.y);
        let x_2043 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_2041.x, x_2041.y, x_2043);
        let x_2050 : vec3<f32> = txVec21;
        let x_2052 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2050.xy, x_2050.z);
        u_xlat80 = x_2052;
        let x_2054 : f32 = u_xlat18.x;
        let x_2055 : f32 = u_xlat80;
        let x_2058 : f32 = u_xlat55.x;
        u_xlat55.x = ((x_2054 * x_2055) + x_2058);
        let x_2062 : vec4<f32> = u_xlat15;
        let x_2063 : vec2<f32> = vec2<f32>(x_2062.z, x_2062.w);
        let x_2065 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_2063.x, x_2063.y, x_2065);
        let x_2072 : vec3<f32> = txVec22;
        let x_2074 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2072.xy, x_2072.z);
        u_xlat80 = x_2074;
        let x_2076 : f32 = u_xlat18.y;
        let x_2077 : f32 = u_xlat80;
        let x_2080 : f32 = u_xlat55.x;
        u_xlat55.x = ((x_2076 * x_2077) + x_2080);
        let x_2084 : vec2<f32> = u_xlat32;
        let x_2086 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_2084.x, x_2084.y, x_2086);
        let x_2093 : vec3<f32> = txVec23;
        let x_2095 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2093.xy, x_2093.z);
        u_xlat80 = x_2095;
        let x_2097 : f32 = u_xlat18.z;
        let x_2098 : f32 = u_xlat80;
        let x_2101 : f32 = u_xlat55.x;
        u_xlat55.x = ((x_2097 * x_2098) + x_2101);
        let x_2105 : vec2<f32> = u_xlat63;
        let x_2107 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_2105.x, x_2105.y, x_2107);
        let x_2114 : vec3<f32> = txVec24;
        let x_2116 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2114.xy, x_2114.z);
        u_xlat80 = x_2116;
        let x_2118 : f32 = u_xlat18.w;
        let x_2119 : f32 = u_xlat80;
        let x_2122 : f32 = u_xlat55.x;
        u_xlat55.x = ((x_2118 * x_2119) + x_2122);
        let x_2126 : vec4<f32> = u_xlat10;
        let x_2127 : vec2<f32> = vec2<f32>(x_2126.x, x_2126.y);
        let x_2129 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_2127.x, x_2127.y, x_2129);
        let x_2136 : vec3<f32> = txVec25;
        let x_2138 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2136.xy, x_2136.z);
        u_xlat80 = x_2138;
        let x_2140 : f32 = u_xlat6.x;
        let x_2141 : f32 = u_xlat80;
        let x_2144 : f32 = u_xlat55.x;
        u_xlat55.x = ((x_2140 * x_2141) + x_2144);
        let x_2148 : vec4<f32> = u_xlat10;
        let x_2149 : vec2<f32> = vec2<f32>(x_2148.z, x_2148.w);
        let x_2151 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_2149.x, x_2149.y, x_2151);
        let x_2158 : vec3<f32> = txVec26;
        let x_2160 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2158.xy, x_2158.z);
        u_xlat80 = x_2160;
        let x_2162 : f32 = u_xlat6.y;
        let x_2163 : f32 = u_xlat80;
        let x_2166 : f32 = u_xlat55.x;
        u_xlat55.x = ((x_2162 * x_2163) + x_2166);
        let x_2170 : vec2<f32> = u_xlat58;
        let x_2172 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_2170.x, x_2170.y, x_2172);
        let x_2179 : vec3<f32> = txVec27;
        let x_2181 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2179.xy, x_2179.z);
        u_xlat80 = x_2181;
        let x_2183 : f32 = u_xlat6.z;
        let x_2184 : f32 = u_xlat80;
        let x_2187 : f32 = u_xlat55.x;
        u_xlat55.x = ((x_2183 * x_2184) + x_2187);
        let x_2191 : vec4<f32> = u_xlat5;
        let x_2192 : vec2<f32> = vec2<f32>(x_2191.x, x_2191.y);
        let x_2194 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_2192.x, x_2192.y, x_2194);
        let x_2201 : vec3<f32> = txVec28;
        let x_2203 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2201.xy, x_2201.z);
        u_xlat5.x = x_2203;
        let x_2206 : f32 = u_xlat6.w;
        let x_2208 : f32 = u_xlat5.x;
        let x_2211 : f32 = u_xlat55.x;
        u_xlat79 = ((x_2206 * x_2208) + x_2211);
      }
    }
  } else {
    let x_2215 : vec4<f32> = vs_TEXCOORD8;
    let x_2216 : vec2<f32> = vec2<f32>(x_2215.x, x_2215.y);
    let x_2218 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_2216.x, x_2216.y, x_2218);
    let x_2225 : vec3<f32> = txVec29;
    let x_2227 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2225.xy, x_2225.z);
    u_xlat79 = x_2227;
  }
  let x_2229 : f32 = x_957.x_MainLightShadowParams.x;
  u_xlat5.x = (-(x_2229) + 1.0f);
  let x_2233 : f32 = u_xlat79;
  let x_2235 : f32 = x_957.x_MainLightShadowParams.x;
  let x_2238 : f32 = u_xlat5.x;
  u_xlat79 = ((x_2233 * x_2235) + x_2238);
  let x_2241 : f32 = vs_TEXCOORD8.z;
  u_xlatb5 = (0.0f >= x_2241);
  let x_2245 : f32 = vs_TEXCOORD8.z;
  u_xlatb30 = (x_2245 >= 1.0f);
  let x_2247 : bool = u_xlatb30;
  let x_2248 : bool = u_xlatb5;
  u_xlatb5 = (x_2247 | x_2248);
  let x_2250 : bool = u_xlatb5;
  let x_2251 : f32 = u_xlat79;
  u_xlat79 = select(x_2251, 1.0f, x_2250);
  let x_2255 : vec3<f32> = vs_TEXCOORD7;
  let x_2258 : vec3<f32> = x_112.x_WorldSpaceCameraPos;
  let x_2260 : vec3<f32> = (x_2255 + -(x_2258));
  let x_2261 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2260.x, x_2260.y, x_2260.z, x_2261.w);
  let x_2263 : vec4<f32> = u_xlat5;
  let x_2265 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_2263.x, x_2263.y, x_2263.z), vec3<f32>(x_2265.x, x_2265.y, x_2265.z));
  let x_2270 : f32 = u_xlat5.x;
  let x_2272 : f32 = x_957.x_MainLightShadowParams.z;
  let x_2275 : f32 = x_957.x_MainLightShadowParams.w;
  u_xlat30.x = ((x_2270 * x_2272) + x_2275);
  let x_2279 : f32 = u_xlat30.x;
  u_xlat30.x = clamp(x_2279, 0.0f, 1.0f);
  let x_2282 : f32 = u_xlat79;
  u_xlat55.x = (-(x_2282) + 1.0f);
  let x_2287 : f32 = u_xlat30.x;
  let x_2289 : f32 = u_xlat55.x;
  let x_2291 : f32 = u_xlat79;
  u_xlat79 = ((x_2287 * x_2289) + x_2291);
  let x_2294 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_2294;
  let x_2297 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_2297;
  let x_2300 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_2300;
  let x_2302 : vec4<f32> = u_xlat6;
  let x_2305 : vec4<f32> = u_xlat1;
  u_xlat30.x = dot(-(vec3<f32>(x_2302.x, x_2302.y, x_2302.z)), vec3<f32>(x_2305.x, x_2305.y, x_2305.z));
  let x_2310 : f32 = u_xlat30.x;
  let x_2312 : f32 = u_xlat30.x;
  u_xlat30.x = (x_2310 + x_2312);
  let x_2315 : vec4<f32> = u_xlat1;
  let x_2317 : vec3<f32> = u_xlat30;
  let x_2321 : vec4<f32> = u_xlat6;
  u_xlat30 = ((vec3<f32>(x_2315.x, x_2315.y, x_2315.z) * -(vec3<f32>(x_2317.x, x_2317.x, x_2317.x))) + -(vec3<f32>(x_2321.x, x_2321.y, x_2321.z)));
  let x_2326 : vec4<f32> = u_xlat1;
  let x_2328 : vec4<f32> = u_xlat6;
  u_xlat81 = dot(vec3<f32>(x_2326.x, x_2326.y, x_2326.z), vec3<f32>(x_2328.x, x_2328.y, x_2328.z));
  let x_2331 : f32 = u_xlat81;
  u_xlat81 = clamp(x_2331, 0.0f, 1.0f);
  let x_2333 : f32 = u_xlat81;
  u_xlat81 = (-(x_2333) + 1.0f);
  let x_2336 : f32 = u_xlat81;
  let x_2337 : f32 = u_xlat81;
  u_xlat81 = (x_2336 * x_2337);
  let x_2339 : f32 = u_xlat81;
  let x_2340 : f32 = u_xlat81;
  u_xlat81 = (x_2339 * x_2340);
  let x_2343 : f32 = u_xlat0.x;
  u_xlat7.x = ((-(x_2343) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2351 : f32 = u_xlat0.x;
  let x_2353 : f32 = u_xlat7.x;
  u_xlat0.x = (x_2351 * x_2353);
  let x_2357 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2357 * 6.0f);
  let x_2369 : vec3<f32> = u_xlat30;
  let x_2371 : f32 = u_xlat0.x;
  let x_2372 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_2369, x_2371);
  u_xlat7 = x_2372;
  let x_2374 : f32 = u_xlat7.w;
  u_xlat0.x = (x_2374 + -1.0f);
  let x_2382 : f32 = x_2380.unity_SpecCube0_HDR.w;
  let x_2384 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2382 * x_2384) + 1.0f);
  let x_2389 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2389, 0.0f);
  let x_2393 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2393);
  let x_2397 : f32 = u_xlat0.x;
  let x_2399 : f32 = x_2380.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2397 * x_2399);
  let x_2403 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2403);
  let x_2407 : f32 = u_xlat0.x;
  let x_2409 : f32 = x_2380.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2407 * x_2409);
  let x_2412 : vec4<f32> = u_xlat7;
  let x_2414 : vec3<f32> = u_xlat0;
  u_xlat30 = (vec3<f32>(x_2412.x, x_2412.y, x_2412.z) * vec3<f32>(x_2414.x, x_2414.x, x_2414.x));
  let x_2417 : f32 = u_xlat50;
  let x_2419 : f32 = u_xlat50;
  let x_2423 : vec2<f32> = ((vec2<f32>(x_2417, x_2417) * vec2<f32>(x_2419, x_2419)) + vec2<f32>(-1.0f, 1.0f));
  let x_2424 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2423.x, x_2424.y, x_2423.y);
  let x_2427 : f32 = u_xlat0.z;
  u_xlat50 = (1.0f / x_2427);
  let x_2429 : vec4<f32> = u_xlat4;
  let x_2432 : f32 = u_xlat77;
  let x_2434 : vec3<f32> = (-(vec3<f32>(x_2429.x, x_2429.y, x_2429.z)) + vec3<f32>(x_2432, x_2432, x_2432));
  let x_2435 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2434.x, x_2434.y, x_2434.z, x_2435.w);
  let x_2437 : f32 = u_xlat81;
  let x_2439 : vec4<f32> = u_xlat7;
  let x_2442 : vec4<f32> = u_xlat4;
  let x_2444 : vec3<f32> = ((vec3<f32>(x_2437, x_2437, x_2437) * vec3<f32>(x_2439.x, x_2439.y, x_2439.z)) + vec3<f32>(x_2442.x, x_2442.y, x_2442.z));
  let x_2445 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2444.x, x_2444.y, x_2444.z, x_2445.w);
  let x_2447 : f32 = u_xlat50;
  let x_2449 : vec4<f32> = u_xlat7;
  let x_2451 : vec3<f32> = (vec3<f32>(x_2447, x_2447, x_2447) * vec3<f32>(x_2449.x, x_2449.y, x_2449.z));
  let x_2452 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2451.x, x_2451.y, x_2451.z, x_2452.w);
  let x_2454 : vec3<f32> = u_xlat30;
  let x_2455 : vec4<f32> = u_xlat7;
  u_xlat30 = (x_2454 * vec3<f32>(x_2455.x, x_2455.y, x_2455.z));
  let x_2458 : vec4<f32> = u_xlat2;
  let x_2460 : vec4<f32> = u_xlat3;
  let x_2463 : vec3<f32> = u_xlat30;
  let x_2464 : vec3<f32> = ((vec3<f32>(x_2458.x, x_2458.y, x_2458.z) * vec3<f32>(x_2460.x, x_2460.y, x_2460.z)) + x_2463);
  let x_2465 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_2464.x, x_2464.y, x_2464.z, x_2465.w);
  let x_2467 : f32 = u_xlat79;
  let x_2469 : f32 = x_2380.unity_LightData.z;
  u_xlat50 = (x_2467 * x_2469);
  let x_2471 : vec4<f32> = u_xlat1;
  let x_2474 : vec4<f32> = x_112.x_MainLightPosition;
  u_xlat77 = dot(vec3<f32>(x_2471.x, x_2471.y, x_2471.z), vec3<f32>(x_2474.x, x_2474.y, x_2474.z));
  let x_2477 : f32 = u_xlat77;
  u_xlat77 = clamp(x_2477, 0.0f, 1.0f);
  let x_2479 : f32 = u_xlat50;
  let x_2480 : f32 = u_xlat77;
  u_xlat50 = (x_2479 * x_2480);
  let x_2482 : f32 = u_xlat50;
  let x_2485 : vec4<f32> = x_112.x_MainLightColor;
  u_xlat30 = (vec3<f32>(x_2482, x_2482, x_2482) * vec3<f32>(x_2485.x, x_2485.y, x_2485.z));
  let x_2488 : vec4<f32> = u_xlat6;
  let x_2491 : vec4<f32> = x_112.x_MainLightPosition;
  let x_2493 : vec3<f32> = (vec3<f32>(x_2488.x, x_2488.y, x_2488.z) + vec3<f32>(x_2491.x, x_2491.y, x_2491.z));
  let x_2494 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2493.x, x_2493.y, x_2493.z, x_2494.w);
  let x_2496 : vec4<f32> = u_xlat7;
  let x_2498 : vec4<f32> = u_xlat7;
  u_xlat50 = dot(vec3<f32>(x_2496.x, x_2496.y, x_2496.z), vec3<f32>(x_2498.x, x_2498.y, x_2498.z));
  let x_2501 : f32 = u_xlat50;
  u_xlat50 = max(x_2501, 1.17549435e-38f);
  let x_2504 : f32 = u_xlat50;
  u_xlat50 = inverseSqrt(x_2504);
  let x_2506 : f32 = u_xlat50;
  let x_2508 : vec4<f32> = u_xlat7;
  let x_2510 : vec3<f32> = (vec3<f32>(x_2506, x_2506, x_2506) * vec3<f32>(x_2508.x, x_2508.y, x_2508.z));
  let x_2511 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2510.x, x_2510.y, x_2510.z, x_2511.w);
  let x_2513 : vec4<f32> = u_xlat1;
  let x_2515 : vec4<f32> = u_xlat7;
  u_xlat50 = dot(vec3<f32>(x_2513.x, x_2513.y, x_2513.z), vec3<f32>(x_2515.x, x_2515.y, x_2515.z));
  let x_2518 : f32 = u_xlat50;
  u_xlat50 = clamp(x_2518, 0.0f, 1.0f);
  let x_2521 : vec4<f32> = x_112.x_MainLightPosition;
  let x_2523 : vec4<f32> = u_xlat7;
  u_xlat77 = dot(vec3<f32>(x_2521.x, x_2521.y, x_2521.z), vec3<f32>(x_2523.x, x_2523.y, x_2523.z));
  let x_2526 : f32 = u_xlat77;
  u_xlat77 = clamp(x_2526, 0.0f, 1.0f);
  let x_2528 : f32 = u_xlat50;
  let x_2529 : f32 = u_xlat50;
  u_xlat50 = (x_2528 * x_2529);
  let x_2531 : f32 = u_xlat50;
  let x_2533 : f32 = u_xlat0.x;
  u_xlat50 = ((x_2531 * x_2533) + 1.00001001358032226562f);
  let x_2537 : f32 = u_xlat77;
  let x_2538 : f32 = u_xlat77;
  u_xlat77 = (x_2537 * x_2538);
  let x_2540 : f32 = u_xlat50;
  let x_2541 : f32 = u_xlat50;
  u_xlat50 = (x_2540 * x_2541);
  let x_2543 : f32 = u_xlat77;
  u_xlat77 = max(x_2543, 0.10000000149011611938f);
  let x_2546 : f32 = u_xlat50;
  let x_2547 : f32 = u_xlat77;
  u_xlat50 = (x_2546 * x_2547);
  let x_2549 : f32 = u_xlat78;
  let x_2550 : f32 = u_xlat50;
  u_xlat50 = (x_2549 * x_2550);
  let x_2552 : f32 = u_xlat76;
  let x_2553 : f32 = u_xlat50;
  u_xlat50 = (x_2552 / x_2553);
  let x_2555 : vec4<f32> = u_xlat4;
  let x_2557 : f32 = u_xlat50;
  let x_2560 : vec4<f32> = u_xlat3;
  let x_2562 : vec3<f32> = ((vec3<f32>(x_2555.x, x_2555.y, x_2555.z) * vec3<f32>(x_2557, x_2557, x_2557)) + vec3<f32>(x_2560.x, x_2560.y, x_2560.z));
  let x_2563 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2562.x, x_2562.y, x_2562.z, x_2563.w);
  let x_2565 : vec3<f32> = u_xlat30;
  let x_2566 : vec4<f32> = u_xlat7;
  u_xlat30 = (x_2565 * vec3<f32>(x_2566.x, x_2566.y, x_2566.z));
  let x_2570 : f32 = x_112.x_AdditionalLightsCount.x;
  let x_2572 : f32 = x_2380.unity_LightData.y;
  u_xlat50 = min(x_2570, x_2572);
  let x_2576 : f32 = u_xlat50;
  u_xlatu50 = bitcast<u32>(i32(x_2576));
  let x_2580 : f32 = u_xlat5.x;
  let x_2582 : f32 = x_957.x_AdditionalShadowFadeParams.x;
  let x_2585 : f32 = x_957.x_AdditionalShadowFadeParams.y;
  u_xlat77 = ((x_2580 * x_2582) + x_2585);
  let x_2587 : f32 = u_xlat77;
  u_xlat77 = clamp(x_2587, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2599 : u32 = u_xlatu_loop_1;
    let x_2600 : u32 = u_xlatu50;
    if ((x_2599 < x_2600)) {
    } else {
      break;
    }
    let x_2603 : u32 = u_xlatu_loop_1;
    u_xlatu5 = (x_2603 >> 2u);
    let x_2607 : u32 = u_xlatu_loop_1;
    u_xlati81 = bitcast<i32>((x_2607 & 3u));
    let x_2610 : u32 = u_xlatu5;
    let x_2613 : vec4<f32> = x_2380.unity_LightIndices[bitcast<i32>(x_2610)];
    let x_2623 : i32 = u_xlati81;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2628 : vec4<u32> = indexable[x_2623];
    u_xlat5.x = dot(x_2613, bitcast<vec4<f32>>(x_2628));
    let x_2634 : f32 = u_xlat5.x;
    u_xlati5 = i32(x_2634);
    let x_2636 : vec3<f32> = vs_TEXCOORD7;
    let x_2647 : i32 = u_xlati5;
    let x_2649 : vec4<f32> = x_2646.x_AdditionalLightsPosition[x_2647];
    let x_2652 : i32 = u_xlati5;
    let x_2654 : vec4<f32> = x_2646.x_AdditionalLightsPosition[x_2652];
    let x_2656 : vec3<f32> = ((-(x_2636) * vec3<f32>(x_2649.w, x_2649.w, x_2649.w)) + vec3<f32>(x_2654.x, x_2654.y, x_2654.z));
    let x_2657 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2656.x, x_2656.y, x_2656.z, x_2657.w);
    let x_2659 : vec4<f32> = u_xlat8;
    let x_2661 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_2659.x, x_2659.y, x_2659.z), vec3<f32>(x_2661.x, x_2661.y, x_2661.z));
    let x_2664 : f32 = u_xlat81;
    u_xlat81 = max(x_2664, 0.00006103515625f);
    let x_2666 : f32 = u_xlat81;
    u_xlat82 = inverseSqrt(x_2666);
    let x_2668 : f32 = u_xlat82;
    let x_2670 : vec4<f32> = u_xlat8;
    let x_2672 : vec3<f32> = (vec3<f32>(x_2668, x_2668, x_2668) * vec3<f32>(x_2670.x, x_2670.y, x_2670.z));
    let x_2673 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2672.x, x_2672.y, x_2672.z, x_2673.w);
    let x_2676 : f32 = u_xlat81;
    u_xlat83 = (1.0f / x_2676);
    let x_2678 : f32 = u_xlat81;
    let x_2679 : i32 = u_xlati5;
    let x_2681 : f32 = x_2646.x_AdditionalLightsAttenuation[x_2679].x;
    u_xlat81 = (x_2678 * x_2681);
    let x_2683 : f32 = u_xlat81;
    let x_2685 : f32 = u_xlat81;
    u_xlat81 = ((-(x_2683) * x_2685) + 1.0f);
    let x_2688 : f32 = u_xlat81;
    u_xlat81 = max(x_2688, 0.0f);
    let x_2690 : f32 = u_xlat81;
    let x_2691 : f32 = u_xlat81;
    u_xlat81 = (x_2690 * x_2691);
    let x_2693 : f32 = u_xlat81;
    let x_2694 : f32 = u_xlat83;
    u_xlat81 = (x_2693 * x_2694);
    let x_2696 : i32 = u_xlati5;
    let x_2698 : vec4<f32> = x_2646.x_AdditionalLightsSpotDir[x_2696];
    let x_2700 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_2698.x, x_2698.y, x_2698.z), vec3<f32>(x_2700.x, x_2700.y, x_2700.z));
    let x_2703 : f32 = u_xlat83;
    let x_2704 : i32 = u_xlati5;
    let x_2706 : f32 = x_2646.x_AdditionalLightsAttenuation[x_2704].z;
    let x_2708 : i32 = u_xlati5;
    let x_2710 : f32 = x_2646.x_AdditionalLightsAttenuation[x_2708].w;
    u_xlat83 = ((x_2703 * x_2706) + x_2710);
    let x_2712 : f32 = u_xlat83;
    u_xlat83 = clamp(x_2712, 0.0f, 1.0f);
    let x_2714 : f32 = u_xlat83;
    let x_2715 : f32 = u_xlat83;
    u_xlat83 = (x_2714 * x_2715);
    let x_2717 : f32 = u_xlat81;
    let x_2718 : f32 = u_xlat83;
    u_xlat81 = (x_2717 * x_2718);
    let x_2721 : i32 = u_xlati5;
    let x_2723 : f32 = x_957.x_AdditionalShadowParams[x_2721].w;
    u_xlati83 = i32(x_2723);
    let x_2726 : i32 = u_xlati83;
    u_xlatb84 = (x_2726 >= 0i);
    let x_2728 : bool = u_xlatb84;
    if (x_2728) {
      let x_2732 : i32 = u_xlati5;
      let x_2734 : f32 = x_957.x_AdditionalShadowParams[x_2732].z;
      u_xlatb84 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2734, x_2734, x_2734, x_2734))));
      let x_2738 : bool = u_xlatb84;
      if (x_2738) {
        let x_2743 : vec4<f32> = u_xlat9;
        let x_2746 : vec4<f32> = u_xlat9;
        let x_2749 : vec4<bool> = (abs(vec4<f32>(x_2743.z, x_2743.z, x_2743.y, x_2743.z)) >= abs(vec4<f32>(x_2746.x, x_2746.y, x_2746.x, x_2746.x)));
        let x_2751 : vec3<bool> = vec3<bool>(x_2749.x, x_2749.y, x_2749.z);
        let x_2752 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_2751.x, x_2751.y, x_2751.z, x_2752.w);
        let x_2755 : bool = u_xlatb10.y;
        let x_2757 : bool = u_xlatb10.x;
        u_xlatb84 = (x_2755 & x_2757);
        let x_2759 : vec4<f32> = u_xlat9;
        let x_2762 : vec4<bool> = (-(vec4<f32>(x_2759.z, x_2759.y, x_2759.z, x_2759.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2763 : vec3<bool> = vec3<bool>(x_2762.x, x_2762.y, x_2762.w);
        let x_2764 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_2763.x, x_2763.y, x_2764.z, x_2763.z);
        let x_2767 : bool = u_xlatb10.x;
        u_xlat10.x = select(4.0f, 5.0f, x_2767);
        let x_2772 : bool = u_xlatb10.y;
        u_xlat10.y = select(2.0f, 3.0f, x_2772);
        let x_2778 : bool = u_xlatb10.w;
        u_xlat85 = select(0.0f, 1.0f, x_2778);
        let x_2782 : bool = u_xlatb10.z;
        if (x_2782) {
          let x_2788 : f32 = u_xlat10.y;
          x_2784 = x_2788;
        } else {
          let x_2790 : f32 = u_xlat85;
          x_2784 = x_2790;
        }
        let x_2791 : f32 = x_2784;
        u_xlat35 = x_2791;
        let x_2793 : bool = u_xlatb84;
        if (x_2793) {
          let x_2798 : f32 = u_xlat10.x;
          x_2794 = x_2798;
        } else {
          let x_2800 : f32 = u_xlat35;
          x_2794 = x_2800;
        }
        let x_2801 : f32 = x_2794;
        u_xlat84 = x_2801;
        let x_2802 : i32 = u_xlati5;
        let x_2804 : f32 = x_957.x_AdditionalShadowParams[x_2802].w;
        u_xlat10.x = trunc(x_2804);
        let x_2807 : f32 = u_xlat84;
        let x_2809 : f32 = u_xlat10.x;
        u_xlat84 = (x_2807 + x_2809);
        let x_2811 : f32 = u_xlat84;
        u_xlati83 = i32(x_2811);
      }
      let x_2813 : i32 = u_xlati83;
      u_xlati83 = (x_2813 << bitcast<u32>(2i));
      let x_2815 : vec3<f32> = vs_TEXCOORD7;
      let x_2817 : i32 = u_xlati83;
      let x_2820 : i32 = u_xlati83;
      let x_2824 : vec4<f32> = x_957.x_AdditionalLightsWorldToShadow[((x_2817 + 1i) / 4i)][((x_2820 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_2815.y, x_2815.y, x_2815.y, x_2815.y) * x_2824);
      let x_2826 : i32 = u_xlati83;
      let x_2828 : i32 = u_xlati83;
      let x_2831 : vec4<f32> = x_957.x_AdditionalLightsWorldToShadow[(x_2826 / 4i)][(x_2828 % 4i)];
      let x_2832 : vec3<f32> = vs_TEXCOORD7;
      let x_2835 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2831 * vec4<f32>(x_2832.x, x_2832.x, x_2832.x, x_2832.x)) + x_2835);
      let x_2837 : i32 = u_xlati83;
      let x_2840 : i32 = u_xlati83;
      let x_2844 : vec4<f32> = x_957.x_AdditionalLightsWorldToShadow[((x_2837 + 2i) / 4i)][((x_2840 + 2i) % 4i)];
      let x_2845 : vec3<f32> = vs_TEXCOORD7;
      let x_2848 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2844 * vec4<f32>(x_2845.z, x_2845.z, x_2845.z, x_2845.z)) + x_2848);
      let x_2850 : vec4<f32> = u_xlat10;
      let x_2851 : i32 = u_xlati83;
      let x_2854 : i32 = u_xlati83;
      let x_2858 : vec4<f32> = x_957.x_AdditionalLightsWorldToShadow[((x_2851 + 3i) / 4i)][((x_2854 + 3i) % 4i)];
      u_xlat10 = (x_2850 + x_2858);
      let x_2860 : vec4<f32> = u_xlat10;
      let x_2862 : vec4<f32> = u_xlat10;
      let x_2864 : vec3<f32> = (vec3<f32>(x_2860.x, x_2860.y, x_2860.z) / vec3<f32>(x_2862.w, x_2862.w, x_2862.w));
      let x_2865 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2864.x, x_2864.y, x_2864.z, x_2865.w);
      let x_2868 : i32 = u_xlati5;
      let x_2870 : f32 = x_957.x_AdditionalShadowParams[x_2868].y;
      u_xlatb83 = (0.0f < x_2870);
      let x_2872 : bool = u_xlatb83;
      if (x_2872) {
        let x_2875 : i32 = u_xlati5;
        let x_2877 : f32 = x_957.x_AdditionalShadowParams[x_2875].y;
        u_xlatb83 = (1.0f == x_2877);
        let x_2879 : bool = u_xlatb83;
        if (x_2879) {
          let x_2882 : vec4<f32> = u_xlat10;
          let x_2885 : vec4<f32> = x_957.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2882.x, x_2882.y, x_2882.x, x_2882.y) + x_2885);
          let x_2888 : vec4<f32> = u_xlat11;
          let x_2889 : vec2<f32> = vec2<f32>(x_2888.x, x_2888.y);
          let x_2891 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2889.x, x_2889.y, x_2891);
          let x_2899 : vec3<f32> = txVec30;
          let x_2901 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2899.xy, x_2899.z);
          u_xlat12.x = x_2901;
          let x_2904 : vec4<f32> = u_xlat11;
          let x_2905 : vec2<f32> = vec2<f32>(x_2904.z, x_2904.w);
          let x_2907 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_2905.x, x_2905.y, x_2907);
          let x_2914 : vec3<f32> = txVec31;
          let x_2916 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2914.xy, x_2914.z);
          u_xlat12.y = x_2916;
          let x_2918 : vec4<f32> = u_xlat10;
          let x_2921 : vec4<f32> = x_957.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_2918.x, x_2918.y, x_2918.x, x_2918.y) + x_2921);
          let x_2924 : vec4<f32> = u_xlat11;
          let x_2925 : vec2<f32> = vec2<f32>(x_2924.x, x_2924.y);
          let x_2927 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_2925.x, x_2925.y, x_2927);
          let x_2934 : vec3<f32> = txVec32;
          let x_2936 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2934.xy, x_2934.z);
          u_xlat12.z = x_2936;
          let x_2939 : vec4<f32> = u_xlat11;
          let x_2940 : vec2<f32> = vec2<f32>(x_2939.z, x_2939.w);
          let x_2942 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_2940.x, x_2940.y, x_2942);
          let x_2949 : vec3<f32> = txVec33;
          let x_2951 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2949.xy, x_2949.z);
          u_xlat12.w = x_2951;
          let x_2953 : vec4<f32> = u_xlat12;
          u_xlat83 = dot(x_2953, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2956 : i32 = u_xlati5;
          let x_2958 : f32 = x_957.x_AdditionalShadowParams[x_2956].y;
          u_xlatb84 = (2.0f == x_2958);
          let x_2960 : bool = u_xlatb84;
          if (x_2960) {
            let x_2963 : vec4<f32> = u_xlat10;
            let x_2966 : vec4<f32> = x_957.x_AdditionalShadowmapSize;
            let x_2969 : vec2<f32> = ((vec2<f32>(x_2963.x, x_2963.y) * vec2<f32>(x_2966.z, x_2966.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2970 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2969.x, x_2969.y, x_2970.z, x_2970.w);
            let x_2972 : vec4<f32> = u_xlat11;
            let x_2974 : vec2<f32> = floor(vec2<f32>(x_2972.x, x_2972.y));
            let x_2975 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2974.x, x_2974.y, x_2975.z, x_2975.w);
            let x_2978 : vec4<f32> = u_xlat10;
            let x_2981 : vec4<f32> = x_957.x_AdditionalShadowmapSize;
            let x_2984 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2978.x, x_2978.y) * vec2<f32>(x_2981.z, x_2981.w)) + -(vec2<f32>(x_2984.x, x_2984.y)));
            let x_2988 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2988.x, x_2988.x, x_2988.y, x_2988.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2991 : vec4<f32> = u_xlat12;
            let x_2993 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2991.x, x_2991.x, x_2991.z, x_2991.z) * vec4<f32>(x_2993.x, x_2993.x, x_2993.z, x_2993.z));
            let x_2996 : vec4<f32> = u_xlat13;
            let x_2998 : vec2<f32> = (vec2<f32>(x_2996.y, x_2996.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2999 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2998.x, x_2999.y, x_2998.y, x_2999.w);
            let x_3001 : vec4<f32> = u_xlat13;
            let x_3004 : vec2<f32> = u_xlat61;
            let x_3006 : vec2<f32> = ((vec2<f32>(x_3001.x, x_3001.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3004));
            let x_3007 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3006.x, x_3006.y, x_3007.z, x_3007.w);
            let x_3009 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_3009) + vec2<f32>(1.0f, 1.0f));
            let x_3012 : vec2<f32> = u_xlat61;
            let x_3013 : vec2<f32> = min(x_3012, vec2<f32>(0.0f, 0.0f));
            let x_3014 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3013.x, x_3013.y, x_3014.z, x_3014.w);
            let x_3016 : vec4<f32> = u_xlat14;
            let x_3019 : vec4<f32> = u_xlat14;
            let x_3022 : vec2<f32> = u_xlat63;
            let x_3023 : vec2<f32> = ((-(vec2<f32>(x_3016.x, x_3016.y)) * vec2<f32>(x_3019.x, x_3019.y)) + x_3022);
            let x_3024 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3023.x, x_3023.y, x_3024.z, x_3024.w);
            let x_3026 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_3026, vec2<f32>(0.0f, 0.0f));
            let x_3028 : vec2<f32> = u_xlat61;
            let x_3030 : vec2<f32> = u_xlat61;
            let x_3032 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_3028) * x_3030) + vec2<f32>(x_3032.y, x_3032.w));
            let x_3035 : vec4<f32> = u_xlat14;
            let x_3037 : vec2<f32> = (vec2<f32>(x_3035.x, x_3035.y) + vec2<f32>(1.0f, 1.0f));
            let x_3038 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3037.x, x_3037.y, x_3038.z, x_3038.w);
            let x_3040 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_3040 + vec2<f32>(1.0f, 1.0f));
            let x_3042 : vec4<f32> = u_xlat13;
            let x_3044 : vec2<f32> = (vec2<f32>(x_3042.x, x_3042.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3045 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3044.x, x_3044.y, x_3045.z, x_3045.w);
            let x_3047 : vec2<f32> = u_xlat63;
            let x_3048 : vec2<f32> = (x_3047 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3049 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3048.x, x_3048.y, x_3049.z, x_3049.w);
            let x_3051 : vec4<f32> = u_xlat14;
            let x_3053 : vec2<f32> = (vec2<f32>(x_3051.x, x_3051.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3054 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3053.x, x_3053.y, x_3054.z, x_3054.w);
            let x_3056 : vec2<f32> = u_xlat61;
            let x_3057 : vec2<f32> = (x_3056 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3058 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3057.x, x_3057.y, x_3058.z, x_3058.w);
            let x_3060 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_3060.y, x_3060.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3064 : f32 = u_xlat14.x;
            u_xlat15.z = x_3064;
            let x_3067 : f32 = u_xlat61.x;
            u_xlat15.w = x_3067;
            let x_3070 : f32 = u_xlat16.x;
            u_xlat13.z = x_3070;
            let x_3073 : f32 = u_xlat12.x;
            u_xlat13.w = x_3073;
            let x_3075 : vec4<f32> = u_xlat13;
            let x_3077 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_3075.z, x_3075.w, x_3075.x, x_3075.z) + vec4<f32>(x_3077.z, x_3077.w, x_3077.x, x_3077.z));
            let x_3081 : f32 = u_xlat15.y;
            u_xlat14.z = x_3081;
            let x_3084 : f32 = u_xlat61.y;
            u_xlat14.w = x_3084;
            let x_3087 : f32 = u_xlat13.y;
            u_xlat16.z = x_3087;
            let x_3090 : f32 = u_xlat12.z;
            u_xlat16.w = x_3090;
            let x_3092 : vec4<f32> = u_xlat14;
            let x_3094 : vec4<f32> = u_xlat16;
            let x_3096 : vec3<f32> = (vec3<f32>(x_3092.z, x_3092.y, x_3092.w) + vec3<f32>(x_3094.z, x_3094.y, x_3094.w));
            let x_3097 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3096.x, x_3096.y, x_3096.z, x_3097.w);
            let x_3099 : vec4<f32> = u_xlat13;
            let x_3101 : vec4<f32> = u_xlat17;
            let x_3103 : vec3<f32> = (vec3<f32>(x_3099.x, x_3099.z, x_3099.w) / vec3<f32>(x_3101.z, x_3101.w, x_3101.y));
            let x_3104 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3103.x, x_3103.y, x_3103.z, x_3104.w);
            let x_3106 : vec4<f32> = u_xlat13;
            let x_3108 : vec3<f32> = (vec3<f32>(x_3106.x, x_3106.y, x_3106.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3109 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3108.x, x_3108.y, x_3108.z, x_3109.w);
            let x_3111 : vec4<f32> = u_xlat16;
            let x_3113 : vec4<f32> = u_xlat12;
            let x_3115 : vec3<f32> = (vec3<f32>(x_3111.z, x_3111.y, x_3111.w) / vec3<f32>(x_3113.x, x_3113.y, x_3113.z));
            let x_3116 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3115.x, x_3115.y, x_3115.z, x_3116.w);
            let x_3118 : vec4<f32> = u_xlat14;
            let x_3120 : vec3<f32> = (vec3<f32>(x_3118.x, x_3118.y, x_3118.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3121 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3120.x, x_3120.y, x_3120.z, x_3121.w);
            let x_3123 : vec4<f32> = u_xlat13;
            let x_3126 : vec4<f32> = x_957.x_AdditionalShadowmapSize;
            let x_3128 : vec3<f32> = (vec3<f32>(x_3123.y, x_3123.x, x_3123.z) * vec3<f32>(x_3126.x, x_3126.x, x_3126.x));
            let x_3129 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3128.x, x_3128.y, x_3128.z, x_3129.w);
            let x_3131 : vec4<f32> = u_xlat14;
            let x_3134 : vec4<f32> = x_957.x_AdditionalShadowmapSize;
            let x_3136 : vec3<f32> = (vec3<f32>(x_3131.x, x_3131.y, x_3131.z) * vec3<f32>(x_3134.y, x_3134.y, x_3134.y));
            let x_3137 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3136.x, x_3136.y, x_3136.z, x_3137.w);
            let x_3140 : f32 = u_xlat14.x;
            u_xlat13.w = x_3140;
            let x_3142 : vec4<f32> = u_xlat11;
            let x_3145 : vec4<f32> = x_957.x_AdditionalShadowmapSize;
            let x_3148 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_3142.x, x_3142.y, x_3142.x, x_3142.y) * vec4<f32>(x_3145.x, x_3145.y, x_3145.x, x_3145.y)) + vec4<f32>(x_3148.y, x_3148.w, x_3148.x, x_3148.w));
            let x_3151 : vec4<f32> = u_xlat11;
            let x_3154 : vec4<f32> = x_957.x_AdditionalShadowmapSize;
            let x_3157 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_3151.x, x_3151.y) * vec2<f32>(x_3154.x, x_3154.y)) + vec2<f32>(x_3157.z, x_3157.w));
            let x_3161 : f32 = u_xlat13.y;
            u_xlat14.w = x_3161;
            let x_3163 : vec4<f32> = u_xlat14;
            let x_3164 : vec2<f32> = vec2<f32>(x_3163.y, x_3163.z);
            let x_3165 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3165.x, x_3164.x, x_3165.z, x_3164.y);
            let x_3167 : vec4<f32> = u_xlat11;
            let x_3170 : vec4<f32> = x_957.x_AdditionalShadowmapSize;
            let x_3173 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_3167.x, x_3167.y, x_3167.x, x_3167.y) * vec4<f32>(x_3170.x, x_3170.y, x_3170.x, x_3170.y)) + vec4<f32>(x_3173.x, x_3173.y, x_3173.z, x_3173.y));
            let x_3176 : vec4<f32> = u_xlat11;
            let x_3179 : vec4<f32> = x_957.x_AdditionalShadowmapSize;
            let x_3182 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3176.x, x_3176.y, x_3176.x, x_3176.y) * vec4<f32>(x_3179.x, x_3179.y, x_3179.x, x_3179.y)) + vec4<f32>(x_3182.w, x_3182.y, x_3182.w, x_3182.z));
            let x_3185 : vec4<f32> = u_xlat11;
            let x_3188 : vec4<f32> = x_957.x_AdditionalShadowmapSize;
            let x_3191 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_3185.x, x_3185.y, x_3185.x, x_3185.y) * vec4<f32>(x_3188.x, x_3188.y, x_3188.x, x_3188.y)) + vec4<f32>(x_3191.x, x_3191.w, x_3191.z, x_3191.w));
            let x_3194 : vec4<f32> = u_xlat12;
            let x_3196 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_3194.x, x_3194.x, x_3194.x, x_3194.y) * vec4<f32>(x_3196.z, x_3196.w, x_3196.y, x_3196.z));
            let x_3200 : vec4<f32> = u_xlat12;
            let x_3202 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_3200.y, x_3200.y, x_3200.z, x_3200.z) * x_3202);
            let x_3205 : f32 = u_xlat12.z;
            let x_3207 : f32 = u_xlat17.y;
            u_xlat84 = (x_3205 * x_3207);
            let x_3210 : vec4<f32> = u_xlat15;
            let x_3211 : vec2<f32> = vec2<f32>(x_3210.x, x_3210.y);
            let x_3213 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_3211.x, x_3211.y, x_3213);
            let x_3220 : vec3<f32> = txVec34;
            let x_3222 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3220.xy, x_3220.z);
            u_xlat85 = x_3222;
            let x_3224 : vec4<f32> = u_xlat15;
            let x_3225 : vec2<f32> = vec2<f32>(x_3224.z, x_3224.w);
            let x_3227 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_3225.x, x_3225.y, x_3227);
            let x_3234 : vec3<f32> = txVec35;
            let x_3236 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3234.xy, x_3234.z);
            u_xlat11.x = x_3236;
            let x_3239 : f32 = u_xlat11.x;
            let x_3241 : f32 = u_xlat18.y;
            u_xlat11.x = (x_3239 * x_3241);
            let x_3245 : f32 = u_xlat18.x;
            let x_3246 : f32 = u_xlat85;
            let x_3249 : f32 = u_xlat11.x;
            u_xlat85 = ((x_3245 * x_3246) + x_3249);
            let x_3252 : vec2<f32> = u_xlat61;
            let x_3254 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_3252.x, x_3252.y, x_3254);
            let x_3261 : vec3<f32> = txVec36;
            let x_3263 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3261.xy, x_3261.z);
            u_xlat11.x = x_3263;
            let x_3266 : f32 = u_xlat18.z;
            let x_3268 : f32 = u_xlat11.x;
            let x_3270 : f32 = u_xlat85;
            u_xlat85 = ((x_3266 * x_3268) + x_3270);
            let x_3273 : vec4<f32> = u_xlat14;
            let x_3274 : vec2<f32> = vec2<f32>(x_3273.x, x_3273.y);
            let x_3276 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_3274.x, x_3274.y, x_3276);
            let x_3283 : vec3<f32> = txVec37;
            let x_3285 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3283.xy, x_3283.z);
            u_xlat11.x = x_3285;
            let x_3288 : f32 = u_xlat18.w;
            let x_3290 : f32 = u_xlat11.x;
            let x_3292 : f32 = u_xlat85;
            u_xlat85 = ((x_3288 * x_3290) + x_3292);
            let x_3295 : vec4<f32> = u_xlat16;
            let x_3296 : vec2<f32> = vec2<f32>(x_3295.x, x_3295.y);
            let x_3298 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_3296.x, x_3296.y, x_3298);
            let x_3305 : vec3<f32> = txVec38;
            let x_3307 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3305.xy, x_3305.z);
            u_xlat11.x = x_3307;
            let x_3310 : f32 = u_xlat19.x;
            let x_3312 : f32 = u_xlat11.x;
            let x_3314 : f32 = u_xlat85;
            u_xlat85 = ((x_3310 * x_3312) + x_3314);
            let x_3317 : vec4<f32> = u_xlat16;
            let x_3318 : vec2<f32> = vec2<f32>(x_3317.z, x_3317.w);
            let x_3320 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_3318.x, x_3318.y, x_3320);
            let x_3327 : vec3<f32> = txVec39;
            let x_3329 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3327.xy, x_3327.z);
            u_xlat11.x = x_3329;
            let x_3332 : f32 = u_xlat19.y;
            let x_3334 : f32 = u_xlat11.x;
            let x_3336 : f32 = u_xlat85;
            u_xlat85 = ((x_3332 * x_3334) + x_3336);
            let x_3339 : vec4<f32> = u_xlat14;
            let x_3340 : vec2<f32> = vec2<f32>(x_3339.z, x_3339.w);
            let x_3342 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_3340.x, x_3340.y, x_3342);
            let x_3349 : vec3<f32> = txVec40;
            let x_3351 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3349.xy, x_3349.z);
            u_xlat11.x = x_3351;
            let x_3354 : f32 = u_xlat19.z;
            let x_3356 : f32 = u_xlat11.x;
            let x_3358 : f32 = u_xlat85;
            u_xlat85 = ((x_3354 * x_3356) + x_3358);
            let x_3361 : vec4<f32> = u_xlat13;
            let x_3362 : vec2<f32> = vec2<f32>(x_3361.x, x_3361.y);
            let x_3364 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_3362.x, x_3362.y, x_3364);
            let x_3371 : vec3<f32> = txVec41;
            let x_3373 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3371.xy, x_3371.z);
            u_xlat11.x = x_3373;
            let x_3376 : f32 = u_xlat19.w;
            let x_3378 : f32 = u_xlat11.x;
            let x_3380 : f32 = u_xlat85;
            u_xlat85 = ((x_3376 * x_3378) + x_3380);
            let x_3383 : vec4<f32> = u_xlat13;
            let x_3384 : vec2<f32> = vec2<f32>(x_3383.z, x_3383.w);
            let x_3386 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_3384.x, x_3384.y, x_3386);
            let x_3393 : vec3<f32> = txVec42;
            let x_3395 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3393.xy, x_3393.z);
            u_xlat11.x = x_3395;
            let x_3397 : f32 = u_xlat84;
            let x_3399 : f32 = u_xlat11.x;
            let x_3401 : f32 = u_xlat85;
            u_xlat83 = ((x_3397 * x_3399) + x_3401);
          } else {
            let x_3404 : vec4<f32> = u_xlat10;
            let x_3407 : vec4<f32> = x_957.x_AdditionalShadowmapSize;
            let x_3410 : vec2<f32> = ((vec2<f32>(x_3404.x, x_3404.y) * vec2<f32>(x_3407.z, x_3407.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3411 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3410.x, x_3410.y, x_3411.z, x_3411.w);
            let x_3413 : vec4<f32> = u_xlat11;
            let x_3415 : vec2<f32> = floor(vec2<f32>(x_3413.x, x_3413.y));
            let x_3416 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3415.x, x_3415.y, x_3416.z, x_3416.w);
            let x_3418 : vec4<f32> = u_xlat10;
            let x_3421 : vec4<f32> = x_957.x_AdditionalShadowmapSize;
            let x_3424 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3418.x, x_3418.y) * vec2<f32>(x_3421.z, x_3421.w)) + -(vec2<f32>(x_3424.x, x_3424.y)));
            let x_3428 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3428.x, x_3428.x, x_3428.y, x_3428.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3431 : vec4<f32> = u_xlat12;
            let x_3433 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3431.x, x_3431.x, x_3431.z, x_3431.z) * vec4<f32>(x_3433.x, x_3433.x, x_3433.z, x_3433.z));
            let x_3436 : vec4<f32> = u_xlat13;
            let x_3438 : vec2<f32> = (vec2<f32>(x_3436.y, x_3436.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3439 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3439.x, x_3438.x, x_3439.z, x_3438.y);
            let x_3441 : vec4<f32> = u_xlat13;
            let x_3444 : vec2<f32> = u_xlat61;
            let x_3446 : vec2<f32> = ((vec2<f32>(x_3441.x, x_3441.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3444));
            let x_3447 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3446.x, x_3447.y, x_3446.y, x_3447.w);
            let x_3449 : vec2<f32> = u_xlat61;
            let x_3451 : vec2<f32> = (-(x_3449) + vec2<f32>(1.0f, 1.0f));
            let x_3452 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3451.x, x_3451.y, x_3452.z, x_3452.w);
            let x_3454 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_3454, vec2<f32>(0.0f, 0.0f));
            let x_3456 : vec2<f32> = u_xlat63;
            let x_3458 : vec2<f32> = u_xlat63;
            let x_3460 : vec4<f32> = u_xlat13;
            let x_3462 : vec2<f32> = ((-(x_3456) * x_3458) + vec2<f32>(x_3460.x, x_3460.y));
            let x_3463 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3462.x, x_3462.y, x_3463.z, x_3463.w);
            let x_3465 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_3465, vec2<f32>(0.0f, 0.0f));
            let x_3468 : vec2<f32> = u_xlat63;
            let x_3470 : vec2<f32> = u_xlat63;
            let x_3472 : vec4<f32> = u_xlat12;
            let x_3474 : vec2<f32> = ((-(x_3468) * x_3470) + vec2<f32>(x_3472.y, x_3472.w));
            let x_3475 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_3474.x, x_3475.y, x_3474.y);
            let x_3477 : vec4<f32> = u_xlat13;
            let x_3479 : vec2<f32> = (vec2<f32>(x_3477.x, x_3477.y) + vec2<f32>(2.0f, 2.0f));
            let x_3480 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3479.x, x_3479.y, x_3480.z, x_3480.w);
            let x_3482 : vec3<f32> = u_xlat37;
            let x_3484 : vec2<f32> = (vec2<f32>(x_3482.x, x_3482.z) + vec2<f32>(2.0f, 2.0f));
            let x_3485 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3485.x, x_3484.x, x_3485.z, x_3484.y);
            let x_3488 : f32 = u_xlat12.y;
            u_xlat15.z = (x_3488 * 0.08163200318813323975f);
            let x_3491 : vec4<f32> = u_xlat12;
            let x_3493 : vec3<f32> = (vec3<f32>(x_3491.z, x_3491.x, x_3491.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3494 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3493.x, x_3493.y, x_3493.z, x_3494.w);
            let x_3496 : vec4<f32> = u_xlat13;
            let x_3498 : vec2<f32> = (vec2<f32>(x_3496.x, x_3496.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3499 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3498.x, x_3498.y, x_3499.z, x_3499.w);
            let x_3502 : f32 = u_xlat16.y;
            u_xlat15.x = x_3502;
            let x_3504 : vec2<f32> = u_xlat61;
            let x_3507 : vec2<f32> = ((vec2<f32>(x_3504.x, x_3504.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3508 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3508.x, x_3507.x, x_3508.z, x_3507.y);
            let x_3510 : vec2<f32> = u_xlat61;
            let x_3513 : vec2<f32> = ((vec2<f32>(x_3510.x, x_3510.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3514 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3513.x, x_3514.y, x_3513.y, x_3514.w);
            let x_3517 : f32 = u_xlat12.x;
            u_xlat13.y = x_3517;
            let x_3520 : f32 = u_xlat14.y;
            u_xlat13.w = x_3520;
            let x_3522 : vec4<f32> = u_xlat13;
            let x_3523 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3522 + x_3523);
            let x_3525 : vec2<f32> = u_xlat61;
            let x_3528 : vec2<f32> = ((vec2<f32>(x_3525.y, x_3525.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3529 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3529.x, x_3528.x, x_3529.z, x_3528.y);
            let x_3531 : vec2<f32> = u_xlat61;
            let x_3534 : vec2<f32> = ((vec2<f32>(x_3531.y, x_3531.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3535 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3534.x, x_3535.y, x_3534.y, x_3535.w);
            let x_3538 : f32 = u_xlat12.y;
            u_xlat14.y = x_3538;
            let x_3540 : vec4<f32> = u_xlat14;
            let x_3541 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_3540 + x_3541);
            let x_3543 : vec4<f32> = u_xlat13;
            let x_3544 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_3543 / x_3544);
            let x_3546 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3546 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3548 : vec4<f32> = u_xlat14;
            let x_3549 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_3548 / x_3549);
            let x_3551 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3551 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3553 : vec4<f32> = u_xlat13;
            let x_3556 : vec4<f32> = x_957.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3553.w, x_3553.x, x_3553.y, x_3553.z) * vec4<f32>(x_3556.x, x_3556.x, x_3556.x, x_3556.x));
            let x_3559 : vec4<f32> = u_xlat14;
            let x_3562 : vec4<f32> = x_957.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3559.x, x_3559.w, x_3559.y, x_3559.z) * vec4<f32>(x_3562.y, x_3562.y, x_3562.y, x_3562.y));
            let x_3565 : vec4<f32> = u_xlat13;
            let x_3566 : vec3<f32> = vec3<f32>(x_3565.y, x_3565.z, x_3565.w);
            let x_3567 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3566.x, x_3567.y, x_3566.y, x_3566.z);
            let x_3570 : f32 = u_xlat14.x;
            u_xlat16.y = x_3570;
            let x_3572 : vec4<f32> = u_xlat11;
            let x_3575 : vec4<f32> = x_957.x_AdditionalShadowmapSize;
            let x_3578 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3572.x, x_3572.y, x_3572.x, x_3572.y) * vec4<f32>(x_3575.x, x_3575.y, x_3575.x, x_3575.y)) + vec4<f32>(x_3578.x, x_3578.y, x_3578.z, x_3578.y));
            let x_3581 : vec4<f32> = u_xlat11;
            let x_3584 : vec4<f32> = x_957.x_AdditionalShadowmapSize;
            let x_3587 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_3581.x, x_3581.y) * vec2<f32>(x_3584.x, x_3584.y)) + vec2<f32>(x_3587.w, x_3587.y));
            let x_3591 : f32 = u_xlat16.y;
            u_xlat13.y = x_3591;
            let x_3594 : f32 = u_xlat14.z;
            u_xlat16.y = x_3594;
            let x_3596 : vec4<f32> = u_xlat11;
            let x_3599 : vec4<f32> = x_957.x_AdditionalShadowmapSize;
            let x_3602 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3596.x, x_3596.y, x_3596.x, x_3596.y) * vec4<f32>(x_3599.x, x_3599.y, x_3599.x, x_3599.y)) + vec4<f32>(x_3602.x, x_3602.y, x_3602.z, x_3602.y));
            let x_3605 : vec4<f32> = u_xlat11;
            let x_3608 : vec4<f32> = x_957.x_AdditionalShadowmapSize;
            let x_3611 : vec4<f32> = u_xlat16;
            let x_3613 : vec2<f32> = ((vec2<f32>(x_3605.x, x_3605.y) * vec2<f32>(x_3608.x, x_3608.y)) + vec2<f32>(x_3611.w, x_3611.y));
            let x_3614 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3613.x, x_3613.y, x_3614.z, x_3614.w);
            let x_3617 : f32 = u_xlat16.y;
            u_xlat13.z = x_3617;
            let x_3620 : vec4<f32> = u_xlat11;
            let x_3623 : vec4<f32> = x_957.x_AdditionalShadowmapSize;
            let x_3626 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3620.x, x_3620.y, x_3620.x, x_3620.y) * vec4<f32>(x_3623.x, x_3623.y, x_3623.x, x_3623.y)) + vec4<f32>(x_3626.x, x_3626.y, x_3626.x, x_3626.z));
            let x_3630 : f32 = u_xlat14.w;
            u_xlat16.y = x_3630;
            let x_3633 : vec4<f32> = u_xlat11;
            let x_3636 : vec4<f32> = x_957.x_AdditionalShadowmapSize;
            let x_3639 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3633.x, x_3633.y, x_3633.x, x_3633.y) * vec4<f32>(x_3636.x, x_3636.y, x_3636.x, x_3636.y)) + vec4<f32>(x_3639.x, x_3639.y, x_3639.z, x_3639.y));
            let x_3643 : vec4<f32> = u_xlat11;
            let x_3646 : vec4<f32> = x_957.x_AdditionalShadowmapSize;
            let x_3649 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3643.x, x_3643.y) * vec2<f32>(x_3646.x, x_3646.y)) + vec2<f32>(x_3649.w, x_3649.y));
            let x_3653 : f32 = u_xlat16.y;
            u_xlat13.w = x_3653;
            let x_3656 : vec4<f32> = u_xlat11;
            let x_3659 : vec4<f32> = x_957.x_AdditionalShadowmapSize;
            let x_3662 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3656.x, x_3656.y) * vec2<f32>(x_3659.x, x_3659.y)) + vec2<f32>(x_3662.x, x_3662.w));
            let x_3665 : vec4<f32> = u_xlat16;
            let x_3666 : vec3<f32> = vec3<f32>(x_3665.x, x_3665.z, x_3665.w);
            let x_3667 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3666.x, x_3667.y, x_3666.y, x_3666.z);
            let x_3669 : vec4<f32> = u_xlat11;
            let x_3672 : vec4<f32> = x_957.x_AdditionalShadowmapSize;
            let x_3675 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3669.x, x_3669.y, x_3669.x, x_3669.y) * vec4<f32>(x_3672.x, x_3672.y, x_3672.x, x_3672.y)) + vec4<f32>(x_3675.x, x_3675.y, x_3675.z, x_3675.y));
            let x_3679 : vec4<f32> = u_xlat11;
            let x_3682 : vec4<f32> = x_957.x_AdditionalShadowmapSize;
            let x_3685 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3679.x, x_3679.y) * vec2<f32>(x_3682.x, x_3682.y)) + vec2<f32>(x_3685.w, x_3685.y));
            let x_3689 : f32 = u_xlat13.x;
            u_xlat14.x = x_3689;
            let x_3691 : vec4<f32> = u_xlat11;
            let x_3694 : vec4<f32> = x_957.x_AdditionalShadowmapSize;
            let x_3697 : vec4<f32> = u_xlat14;
            let x_3699 : vec2<f32> = ((vec2<f32>(x_3691.x, x_3691.y) * vec2<f32>(x_3694.x, x_3694.y)) + vec2<f32>(x_3697.x, x_3697.y));
            let x_3700 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3699.x, x_3699.y, x_3700.z, x_3700.w);
            let x_3703 : vec4<f32> = u_xlat12;
            let x_3705 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3703.x, x_3703.x, x_3703.x, x_3703.x) * x_3705);
            let x_3708 : vec4<f32> = u_xlat12;
            let x_3710 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3708.y, x_3708.y, x_3708.y, x_3708.y) * x_3710);
            let x_3713 : vec4<f32> = u_xlat12;
            let x_3715 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3713.z, x_3713.z, x_3713.z, x_3713.z) * x_3715);
            let x_3717 : vec4<f32> = u_xlat12;
            let x_3719 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3717.w, x_3717.w, x_3717.w, x_3717.w) * x_3719);
            let x_3722 : vec4<f32> = u_xlat17;
            let x_3723 : vec2<f32> = vec2<f32>(x_3722.x, x_3722.y);
            let x_3725 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3723.x, x_3723.y, x_3725);
            let x_3732 : vec3<f32> = txVec43;
            let x_3734 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3732.xy, x_3732.z);
            u_xlat84 = x_3734;
            let x_3736 : vec4<f32> = u_xlat17;
            let x_3737 : vec2<f32> = vec2<f32>(x_3736.z, x_3736.w);
            let x_3739 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3737.x, x_3737.y, x_3739);
            let x_3746 : vec3<f32> = txVec44;
            let x_3748 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3746.xy, x_3746.z);
            u_xlat85 = x_3748;
            let x_3749 : f32 = u_xlat85;
            let x_3751 : f32 = u_xlat22.y;
            u_xlat85 = (x_3749 * x_3751);
            let x_3754 : f32 = u_xlat22.x;
            let x_3755 : f32 = u_xlat84;
            let x_3757 : f32 = u_xlat85;
            u_xlat84 = ((x_3754 * x_3755) + x_3757);
            let x_3760 : vec2<f32> = u_xlat61;
            let x_3762 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3760.x, x_3760.y, x_3762);
            let x_3769 : vec3<f32> = txVec45;
            let x_3771 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3769.xy, x_3769.z);
            u_xlat85 = x_3771;
            let x_3773 : f32 = u_xlat22.z;
            let x_3774 : f32 = u_xlat85;
            let x_3776 : f32 = u_xlat84;
            u_xlat84 = ((x_3773 * x_3774) + x_3776);
            let x_3779 : vec4<f32> = u_xlat20;
            let x_3780 : vec2<f32> = vec2<f32>(x_3779.x, x_3779.y);
            let x_3782 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3780.x, x_3780.y, x_3782);
            let x_3789 : vec3<f32> = txVec46;
            let x_3791 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3789.xy, x_3789.z);
            u_xlat85 = x_3791;
            let x_3793 : f32 = u_xlat22.w;
            let x_3794 : f32 = u_xlat85;
            let x_3796 : f32 = u_xlat84;
            u_xlat84 = ((x_3793 * x_3794) + x_3796);
            let x_3799 : vec4<f32> = u_xlat18;
            let x_3800 : vec2<f32> = vec2<f32>(x_3799.x, x_3799.y);
            let x_3802 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3800.x, x_3800.y, x_3802);
            let x_3809 : vec3<f32> = txVec47;
            let x_3811 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3809.xy, x_3809.z);
            u_xlat85 = x_3811;
            let x_3813 : f32 = u_xlat23.x;
            let x_3814 : f32 = u_xlat85;
            let x_3816 : f32 = u_xlat84;
            u_xlat84 = ((x_3813 * x_3814) + x_3816);
            let x_3819 : vec4<f32> = u_xlat18;
            let x_3820 : vec2<f32> = vec2<f32>(x_3819.z, x_3819.w);
            let x_3822 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3820.x, x_3820.y, x_3822);
            let x_3829 : vec3<f32> = txVec48;
            let x_3831 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3829.xy, x_3829.z);
            u_xlat85 = x_3831;
            let x_3833 : f32 = u_xlat23.y;
            let x_3834 : f32 = u_xlat85;
            let x_3836 : f32 = u_xlat84;
            u_xlat84 = ((x_3833 * x_3834) + x_3836);
            let x_3839 : vec4<f32> = u_xlat19;
            let x_3840 : vec2<f32> = vec2<f32>(x_3839.x, x_3839.y);
            let x_3842 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3840.x, x_3840.y, x_3842);
            let x_3849 : vec3<f32> = txVec49;
            let x_3851 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3849.xy, x_3849.z);
            u_xlat85 = x_3851;
            let x_3853 : f32 = u_xlat23.z;
            let x_3854 : f32 = u_xlat85;
            let x_3856 : f32 = u_xlat84;
            u_xlat84 = ((x_3853 * x_3854) + x_3856);
            let x_3859 : vec4<f32> = u_xlat20;
            let x_3860 : vec2<f32> = vec2<f32>(x_3859.z, x_3859.w);
            let x_3862 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3860.x, x_3860.y, x_3862);
            let x_3869 : vec3<f32> = txVec50;
            let x_3871 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3869.xy, x_3869.z);
            u_xlat85 = x_3871;
            let x_3873 : f32 = u_xlat23.w;
            let x_3874 : f32 = u_xlat85;
            let x_3876 : f32 = u_xlat84;
            u_xlat84 = ((x_3873 * x_3874) + x_3876);
            let x_3879 : vec4<f32> = u_xlat21;
            let x_3880 : vec2<f32> = vec2<f32>(x_3879.x, x_3879.y);
            let x_3882 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3880.x, x_3880.y, x_3882);
            let x_3889 : vec3<f32> = txVec51;
            let x_3891 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3889.xy, x_3889.z);
            u_xlat85 = x_3891;
            let x_3893 : f32 = u_xlat24.x;
            let x_3894 : f32 = u_xlat85;
            let x_3896 : f32 = u_xlat84;
            u_xlat84 = ((x_3893 * x_3894) + x_3896);
            let x_3899 : vec4<f32> = u_xlat21;
            let x_3900 : vec2<f32> = vec2<f32>(x_3899.z, x_3899.w);
            let x_3902 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_3900.x, x_3900.y, x_3902);
            let x_3909 : vec3<f32> = txVec52;
            let x_3911 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3909.xy, x_3909.z);
            u_xlat85 = x_3911;
            let x_3913 : f32 = u_xlat24.y;
            let x_3914 : f32 = u_xlat85;
            let x_3916 : f32 = u_xlat84;
            u_xlat84 = ((x_3913 * x_3914) + x_3916);
            let x_3919 : vec2<f32> = u_xlat38;
            let x_3921 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_3919.x, x_3919.y, x_3921);
            let x_3928 : vec3<f32> = txVec53;
            let x_3930 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3928.xy, x_3928.z);
            u_xlat85 = x_3930;
            let x_3932 : f32 = u_xlat24.z;
            let x_3933 : f32 = u_xlat85;
            let x_3935 : f32 = u_xlat84;
            u_xlat84 = ((x_3932 * x_3933) + x_3935);
            let x_3938 : vec2<f32> = u_xlat69;
            let x_3940 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_3938.x, x_3938.y, x_3940);
            let x_3947 : vec3<f32> = txVec54;
            let x_3949 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3947.xy, x_3947.z);
            u_xlat85 = x_3949;
            let x_3951 : f32 = u_xlat24.w;
            let x_3952 : f32 = u_xlat85;
            let x_3954 : f32 = u_xlat84;
            u_xlat84 = ((x_3951 * x_3952) + x_3954);
            let x_3957 : vec4<f32> = u_xlat16;
            let x_3958 : vec2<f32> = vec2<f32>(x_3957.x, x_3957.y);
            let x_3960 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_3958.x, x_3958.y, x_3960);
            let x_3967 : vec3<f32> = txVec55;
            let x_3969 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3967.xy, x_3967.z);
            u_xlat85 = x_3969;
            let x_3971 : f32 = u_xlat12.x;
            let x_3972 : f32 = u_xlat85;
            let x_3974 : f32 = u_xlat84;
            u_xlat84 = ((x_3971 * x_3972) + x_3974);
            let x_3977 : vec4<f32> = u_xlat16;
            let x_3978 : vec2<f32> = vec2<f32>(x_3977.z, x_3977.w);
            let x_3980 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_3978.x, x_3978.y, x_3980);
            let x_3987 : vec3<f32> = txVec56;
            let x_3989 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3987.xy, x_3987.z);
            u_xlat85 = x_3989;
            let x_3991 : f32 = u_xlat12.y;
            let x_3992 : f32 = u_xlat85;
            let x_3994 : f32 = u_xlat84;
            u_xlat84 = ((x_3991 * x_3992) + x_3994);
            let x_3997 : vec2<f32> = u_xlat64;
            let x_3999 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_3997.x, x_3997.y, x_3999);
            let x_4006 : vec3<f32> = txVec57;
            let x_4008 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4006.xy, x_4006.z);
            u_xlat85 = x_4008;
            let x_4010 : f32 = u_xlat12.z;
            let x_4011 : f32 = u_xlat85;
            let x_4013 : f32 = u_xlat84;
            u_xlat84 = ((x_4010 * x_4011) + x_4013);
            let x_4016 : vec4<f32> = u_xlat11;
            let x_4017 : vec2<f32> = vec2<f32>(x_4016.x, x_4016.y);
            let x_4019 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_4017.x, x_4017.y, x_4019);
            let x_4026 : vec3<f32> = txVec58;
            let x_4028 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4026.xy, x_4026.z);
            u_xlat85 = x_4028;
            let x_4030 : f32 = u_xlat12.w;
            let x_4031 : f32 = u_xlat85;
            let x_4033 : f32 = u_xlat84;
            u_xlat83 = ((x_4030 * x_4031) + x_4033);
          }
        }
      } else {
        let x_4037 : vec4<f32> = u_xlat10;
        let x_4038 : vec2<f32> = vec2<f32>(x_4037.x, x_4037.y);
        let x_4040 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_4038.x, x_4038.y, x_4040);
        let x_4047 : vec3<f32> = txVec59;
        let x_4049 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4047.xy, x_4047.z);
        u_xlat83 = x_4049;
      }
      let x_4050 : i32 = u_xlati5;
      let x_4052 : f32 = x_957.x_AdditionalShadowParams[x_4050].x;
      u_xlat84 = (1.0f + -(x_4052));
      let x_4055 : f32 = u_xlat83;
      let x_4056 : i32 = u_xlati5;
      let x_4058 : f32 = x_957.x_AdditionalShadowParams[x_4056].x;
      let x_4060 : f32 = u_xlat84;
      u_xlat83 = ((x_4055 * x_4058) + x_4060);
      let x_4063 : f32 = u_xlat10.z;
      u_xlatb84 = (0.0f >= x_4063);
      let x_4066 : f32 = u_xlat10.z;
      u_xlatb10.x = (x_4066 >= 1.0f);
      let x_4069 : bool = u_xlatb84;
      let x_4071 : bool = u_xlatb10.x;
      u_xlatb84 = (x_4069 | x_4071);
      let x_4073 : bool = u_xlatb84;
      let x_4074 : f32 = u_xlat83;
      u_xlat83 = select(x_4074, 1.0f, x_4073);
    } else {
      u_xlat83 = 1.0f;
    }
    let x_4077 : f32 = u_xlat83;
    u_xlat84 = (-(x_4077) + 1.0f);
    let x_4080 : f32 = u_xlat77;
    let x_4081 : f32 = u_xlat84;
    let x_4083 : f32 = u_xlat83;
    u_xlat83 = ((x_4080 * x_4081) + x_4083);
    let x_4085 : f32 = u_xlat81;
    let x_4086 : f32 = u_xlat83;
    u_xlat81 = (x_4085 * x_4086);
    let x_4088 : vec4<f32> = u_xlat1;
    let x_4090 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_4088.x, x_4088.y, x_4088.z), vec3<f32>(x_4090.x, x_4090.y, x_4090.z));
    let x_4093 : f32 = u_xlat83;
    u_xlat83 = clamp(x_4093, 0.0f, 1.0f);
    let x_4095 : f32 = u_xlat81;
    let x_4096 : f32 = u_xlat83;
    u_xlat81 = (x_4095 * x_4096);
    let x_4098 : f32 = u_xlat81;
    let x_4100 : i32 = u_xlati5;
    let x_4102 : vec4<f32> = x_2646.x_AdditionalLightsColor[x_4100];
    let x_4104 : vec3<f32> = (vec3<f32>(x_4098, x_4098, x_4098) * vec3<f32>(x_4102.x, x_4102.y, x_4102.z));
    let x_4105 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_4104.x, x_4104.y, x_4104.z, x_4105.w);
    let x_4107 : vec4<f32> = u_xlat8;
    let x_4109 : f32 = u_xlat82;
    let x_4112 : vec4<f32> = u_xlat6;
    let x_4114 : vec3<f32> = ((vec3<f32>(x_4107.x, x_4107.y, x_4107.z) * vec3<f32>(x_4109, x_4109, x_4109)) + vec3<f32>(x_4112.x, x_4112.y, x_4112.z));
    let x_4115 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4114.x, x_4114.y, x_4114.z, x_4115.w);
    let x_4117 : vec4<f32> = u_xlat8;
    let x_4119 : vec4<f32> = u_xlat8;
    u_xlat5.x = dot(vec3<f32>(x_4117.x, x_4117.y, x_4117.z), vec3<f32>(x_4119.x, x_4119.y, x_4119.z));
    let x_4124 : f32 = u_xlat5.x;
    u_xlat5.x = max(x_4124, 1.17549435e-38f);
    let x_4128 : f32 = u_xlat5.x;
    u_xlat5.x = inverseSqrt(x_4128);
    let x_4131 : vec4<f32> = u_xlat5;
    let x_4133 : vec4<f32> = u_xlat8;
    let x_4135 : vec3<f32> = (vec3<f32>(x_4131.x, x_4131.x, x_4131.x) * vec3<f32>(x_4133.x, x_4133.y, x_4133.z));
    let x_4136 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4135.x, x_4135.y, x_4135.z, x_4136.w);
    let x_4138 : vec4<f32> = u_xlat1;
    let x_4140 : vec4<f32> = u_xlat8;
    u_xlat5.x = dot(vec3<f32>(x_4138.x, x_4138.y, x_4138.z), vec3<f32>(x_4140.x, x_4140.y, x_4140.z));
    let x_4145 : f32 = u_xlat5.x;
    u_xlat5.x = clamp(x_4145, 0.0f, 1.0f);
    let x_4148 : vec4<f32> = u_xlat9;
    let x_4150 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_4148.x, x_4148.y, x_4148.z), vec3<f32>(x_4150.x, x_4150.y, x_4150.z));
    let x_4153 : f32 = u_xlat81;
    u_xlat81 = clamp(x_4153, 0.0f, 1.0f);
    let x_4156 : f32 = u_xlat5.x;
    let x_4158 : f32 = u_xlat5.x;
    u_xlat5.x = (x_4156 * x_4158);
    let x_4162 : f32 = u_xlat5.x;
    let x_4164 : f32 = u_xlat0.x;
    u_xlat5.x = ((x_4162 * x_4164) + 1.00001001358032226562f);
    let x_4168 : f32 = u_xlat81;
    let x_4169 : f32 = u_xlat81;
    u_xlat81 = (x_4168 * x_4169);
    let x_4172 : f32 = u_xlat5.x;
    let x_4174 : f32 = u_xlat5.x;
    u_xlat5.x = (x_4172 * x_4174);
    let x_4177 : f32 = u_xlat81;
    u_xlat81 = max(x_4177, 0.10000000149011611938f);
    let x_4180 : f32 = u_xlat5.x;
    let x_4181 : f32 = u_xlat81;
    u_xlat5.x = (x_4180 * x_4181);
    let x_4184 : f32 = u_xlat78;
    let x_4186 : f32 = u_xlat5.x;
    u_xlat5.x = (x_4184 * x_4186);
    let x_4189 : f32 = u_xlat76;
    let x_4191 : f32 = u_xlat5.x;
    u_xlat5.x = (x_4189 / x_4191);
    let x_4194 : vec4<f32> = u_xlat4;
    let x_4196 : vec4<f32> = u_xlat5;
    let x_4199 : vec4<f32> = u_xlat3;
    let x_4201 : vec3<f32> = ((vec3<f32>(x_4194.x, x_4194.y, x_4194.z) * vec3<f32>(x_4196.x, x_4196.x, x_4196.x)) + vec3<f32>(x_4199.x, x_4199.y, x_4199.z));
    let x_4202 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4201.x, x_4201.y, x_4201.z, x_4202.w);
    let x_4204 : vec4<f32> = u_xlat8;
    let x_4206 : vec4<f32> = u_xlat10;
    let x_4209 : vec4<f32> = u_xlat7;
    let x_4211 : vec3<f32> = ((vec3<f32>(x_4204.x, x_4204.y, x_4204.z) * vec3<f32>(x_4206.x, x_4206.y, x_4206.z)) + vec3<f32>(x_4209.x, x_4209.y, x_4209.z));
    let x_4212 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_4211.x, x_4211.y, x_4211.z, x_4212.w);

    continuing {
      let x_4214 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4214 + bitcast<u32>(1i));
    }
  }
  let x_4216 : vec4<f32> = u_xlat2;
  let x_4218 : f32 = u_xlat25;
  let x_4221 : vec3<f32> = u_xlat30;
  u_xlat0 = ((vec3<f32>(x_4216.x, x_4216.y, x_4216.z) * vec3<f32>(x_4218, x_4218, x_4218)) + x_4221);
  let x_4223 : vec4<f32> = u_xlat7;
  let x_4225 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4223.x, x_4223.y, x_4223.z) + x_4225);
  let x_4229 : f32 = u_xlat75;
  let x_4231 : vec3<f32> = u_xlat0;
  let x_4232 : vec3<f32> = (vec3<f32>(x_4229, x_4229, x_4229) * x_4231);
  let x_4233 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4232.x, x_4232.y, x_4232.z, x_4233.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(7) vs_TEXCOORD8_param : vec4<f32>, @location(6) vs_TEXCOORD7_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


