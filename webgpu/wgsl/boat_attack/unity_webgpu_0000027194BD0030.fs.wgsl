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

@group(0) @binding(13) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_110 : PGlobals;

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

@group(1) @binding(2) var<uniform> x_825 : UnityPerDraw;

var<private> u_xlat77 : f32;

var<private> u_xlat78 : f32;

var<private> u_xlatb79 : bool;

@group(1) @binding(4) var<uniform> x_961 : LightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(10) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(16) var sampler_LinearClampCompare : sampler_comparison;

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

@group(0) @binding(12) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu50 : u32;

var<private> u_xlatu5 : u32;

var<private> u_xlati81 : i32;

var<private> u_xlati5 : i32;

@group(1) @binding(1) var<uniform> x_2644 : AdditionalLights;

var<private> u_xlat83 : f32;

var<private> u_xlati83 : i32;

var<private> u_xlatb84 : bool;

var<private> u_xlatb10 : vec4<bool>;

var<private> u_xlat85 : f32;

var<private> u_xlat35 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlatb83 : bool;

@group(0) @binding(11) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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
  var x_2782 : f32;
  var x_2792 : f32;
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
  let x_116 : f32 = x_110.x_GlobalMipBias.x;
  let x_117 : vec4<f32> = textureSampleBias(x_Control, sampler_Control, vec2<f32>(x_106.x, x_106.y), x_116);
  u_xlat4 = x_117;
  let x_120 : vec4<f32> = u_xlat4;
  u_xlat75 = dot(x_120, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_131 : vec4<f32> = vs_TEXCOORD1;
  let x_134 : f32 = x_110.x_GlobalMipBias.x;
  let x_135 : vec4<f32> = textureSampleBias(x_Splat0, sampler_Splat0, vec2<f32>(x_131.x, x_131.y), x_134);
  u_xlat5 = x_135;
  let x_141 : vec4<f32> = vs_TEXCOORD1;
  let x_144 : f32 = x_110.x_GlobalMipBias.x;
  let x_145 : vec4<f32> = textureSampleBias(x_Splat1, sampler_Splat0, vec2<f32>(x_141.z, x_141.w), x_144);
  u_xlat6 = x_145;
  let x_152 : vec4<f32> = vs_TEXCOORD2;
  let x_155 : f32 = x_110.x_GlobalMipBias.x;
  let x_156 : vec4<f32> = textureSampleBias(x_Splat2, sampler_Splat0, vec2<f32>(x_152.x, x_152.y), x_155);
  u_xlat7 = x_156;
  let x_162 : vec4<f32> = vs_TEXCOORD2;
  let x_165 : f32 = x_110.x_GlobalMipBias.x;
  let x_166 : vec4<f32> = textureSampleBias(x_Splat3, sampler_Splat0, vec2<f32>(x_162.z, x_162.w), x_165);
  u_xlat8 = x_166;
  let x_170 : f32 = u_xlat5.w;
  u_xlat9.x = x_170;
  let x_173 : f32 = u_xlat6.w;
  u_xlat9.y = x_173;
  let x_177 : f32 = u_xlat7.w;
  u_xlat9.z = x_177;
  let x_181 : f32 = u_xlat8.w;
  u_xlat9.w = x_181;
  let x_184 : vec4<f32> = u_xlat9;
  let x_187 : f32 = x_13.x_Smoothness0;
  let x_190 : f32 = x_13.x_Smoothness1;
  let x_193 : f32 = x_13.x_Smoothness2;
  let x_196 : f32 = x_13.x_Smoothness3;
  u_xlat10 = (x_184 * vec4<f32>(x_187, x_190, x_193, x_196));
  let x_205 : f32 = x_13.x_NumLayersCount;
  u_xlatb76 = (4.0f >= x_205);
  let x_208 : vec4<f32> = u_xlat4;
  u_xlat11 = (-(x_208) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_211 : vec4<f32> = u_xlat9;
  let x_212 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_211 + -(x_212));
  let x_215 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_215 * vec4<f32>(20.0f, 20.0f, 20.0f, 20.0f));
  let x_219 : vec4<f32> = u_xlat11;
  u_xlat11 = clamp(x_219, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_224 : vec4<f32> = u_xlat4;
  let x_228 : vec4<f32> = u_xlat11;
  u_xlat11 = ((x_224 * vec4<f32>(0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f)) + x_228);
  let x_231 : vec4<f32> = u_xlat4;
  let x_232 : vec4<f32> = u_xlat11;
  u_xlat12 = (x_231 + -(x_232));
  let x_237 : f32 = u_xlat12.x;
  let x_240 : f32 = x_13.x_DiffuseRemapScale0.w;
  u_xlat13.x = (x_237 * x_240);
  let x_244 : f32 = u_xlat12.y;
  let x_247 : f32 = x_13.x_DiffuseRemapScale1.w;
  u_xlat13.y = (x_244 * x_247);
  let x_251 : f32 = u_xlat12.z;
  let x_254 : f32 = x_13.x_DiffuseRemapScale2.w;
  u_xlat13.z = (x_251 * x_254);
  let x_258 : f32 = u_xlat12.w;
  let x_261 : f32 = x_13.x_DiffuseRemapScale3.w;
  u_xlat13.w = (x_258 * x_261);
  let x_264 : vec4<f32> = u_xlat11;
  let x_265 : vec4<f32> = u_xlat13;
  u_xlat11 = (x_264 + x_265);
  let x_267 : bool = u_xlatb76;
  let x_268 : vec4<f32> = u_xlat11;
  let x_269 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_269, x_268, vec4<bool>(x_267, x_267, x_267, x_267));
  let x_274 : vec4<f32> = u_xlat4;
  u_xlat76 = dot(x_274, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_276 : f32 = u_xlat76;
  u_xlat76 = (x_276 + 0.00006103515625f);
  let x_279 : vec4<f32> = u_xlat4;
  let x_280 : f32 = u_xlat76;
  u_xlat4 = (x_279 / vec4<f32>(x_280, x_280, x_280, x_280));
  let x_283 : vec4<f32> = u_xlat4;
  let x_286 : vec4<f32> = x_13.x_DiffuseRemapScale0;
  let x_288 : vec3<f32> = (vec3<f32>(x_283.x, x_283.x, x_283.x) * vec3<f32>(x_286.x, x_286.y, x_286.z));
  let x_289 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_288.x, x_288.y, x_288.z, x_289.w);
  let x_291 : vec4<f32> = u_xlat4;
  let x_294 : vec4<f32> = x_13.x_DiffuseRemapScale1;
  let x_296 : vec3<f32> = (vec3<f32>(x_291.y, x_291.y, x_291.y) * vec3<f32>(x_294.x, x_294.y, x_294.z));
  let x_297 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_296.x, x_296.y, x_296.z, x_297.w);
  let x_299 : vec4<f32> = u_xlat6;
  let x_301 : vec4<f32> = u_xlat12;
  let x_303 : vec3<f32> = (vec3<f32>(x_299.x, x_299.y, x_299.z) * vec3<f32>(x_301.x, x_301.y, x_301.z));
  let x_304 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_303.x, x_303.y, x_303.z, x_304.w);
  let x_306 : vec4<f32> = u_xlat5;
  let x_308 : vec4<f32> = u_xlat11;
  let x_311 : vec4<f32> = u_xlat6;
  let x_313 : vec3<f32> = ((vec3<f32>(x_306.x, x_306.y, x_306.z) * vec3<f32>(x_308.x, x_308.y, x_308.z)) + vec3<f32>(x_311.x, x_311.y, x_311.z));
  let x_314 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_313.x, x_313.y, x_313.z, x_314.w);
  let x_316 : vec4<f32> = u_xlat4;
  let x_319 : vec4<f32> = x_13.x_DiffuseRemapScale2;
  let x_321 : vec3<f32> = (vec3<f32>(x_316.z, x_316.z, x_316.z) * vec3<f32>(x_319.x, x_319.y, x_319.z));
  let x_322 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_321.x, x_321.y, x_321.z, x_322.w);
  let x_324 : vec4<f32> = u_xlat7;
  let x_326 : vec4<f32> = u_xlat6;
  let x_329 : vec4<f32> = u_xlat5;
  let x_331 : vec3<f32> = ((vec3<f32>(x_324.x, x_324.y, x_324.z) * vec3<f32>(x_326.x, x_326.y, x_326.z)) + vec3<f32>(x_329.x, x_329.y, x_329.z));
  let x_332 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_331.x, x_331.y, x_331.z, x_332.w);
  let x_334 : vec4<f32> = u_xlat4;
  let x_337 : vec4<f32> = x_13.x_DiffuseRemapScale3;
  let x_339 : vec3<f32> = (vec3<f32>(x_334.w, x_334.w, x_334.w) * vec3<f32>(x_337.x, x_337.y, x_337.z));
  let x_340 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_339.x, x_339.y, x_339.z, x_340.w);
  let x_342 : vec4<f32> = u_xlat8;
  let x_344 : vec4<f32> = u_xlat6;
  let x_347 : vec4<f32> = u_xlat5;
  let x_349 : vec3<f32> = ((vec3<f32>(x_342.x, x_342.y, x_342.z) * vec3<f32>(x_344.x, x_344.y, x_344.z)) + vec3<f32>(x_347.x, x_347.y, x_347.z));
  let x_350 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_349.x, x_349.y, x_349.z, x_350.w);
  let x_357 : vec4<f32> = vs_TEXCOORD1;
  let x_360 : f32 = x_110.x_GlobalMipBias.x;
  let x_361 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_357.x, x_357.y), x_360);
  let x_362 : vec3<f32> = vec3<f32>(x_361.x, x_361.y, x_361.w);
  let x_363 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_362.x, x_362.y, x_362.z, x_363.w);
  let x_366 : f32 = u_xlat6.x;
  let x_368 : f32 = u_xlat6.z;
  u_xlat6.x = (x_366 * x_368);
  let x_371 : vec4<f32> = u_xlat6;
  let x_376 : vec2<f32> = ((vec2<f32>(x_371.x, x_371.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_377 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_376.x, x_376.y, x_377.z, x_377.w);
  let x_379 : vec4<f32> = u_xlat6;
  let x_381 : vec4<f32> = u_xlat6;
  u_xlat76 = dot(vec2<f32>(x_379.x, x_379.y), vec2<f32>(x_381.x, x_381.y));
  let x_384 : f32 = u_xlat76;
  u_xlat76 = min(x_384, 1.0f);
  let x_386 : f32 = u_xlat76;
  u_xlat76 = (-(x_386) + 1.0f);
  let x_389 : f32 = u_xlat76;
  u_xlat76 = sqrt(x_389);
  let x_391 : f32 = u_xlat76;
  u_xlat7.z = max(x_391, 0.0000000000000001f);
  let x_395 : vec4<f32> = u_xlat6;
  let x_398 : f32 = x_13.x_NormalScale0;
  let x_400 : vec2<f32> = (vec2<f32>(x_395.x, x_395.y) * vec2<f32>(x_398, x_398));
  let x_401 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_400.x, x_400.y, x_401.z, x_401.w);
  let x_407 : vec4<f32> = vs_TEXCOORD1;
  let x_410 : f32 = x_110.x_GlobalMipBias.x;
  let x_411 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_407.z, x_407.w), x_410);
  let x_412 : vec3<f32> = vec3<f32>(x_411.x, x_411.y, x_411.w);
  let x_413 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_412.x, x_412.y, x_412.z, x_413.w);
  let x_416 : f32 = u_xlat6.x;
  let x_418 : f32 = u_xlat6.z;
  u_xlat6.x = (x_416 * x_418);
  let x_421 : vec4<f32> = u_xlat6;
  let x_424 : vec2<f32> = ((vec2<f32>(x_421.x, x_421.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_425 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_424.x, x_424.y, x_425.z, x_425.w);
  let x_427 : vec4<f32> = u_xlat6;
  let x_429 : vec4<f32> = u_xlat6;
  u_xlat76 = dot(vec2<f32>(x_427.x, x_427.y), vec2<f32>(x_429.x, x_429.y));
  let x_432 : f32 = u_xlat76;
  u_xlat76 = min(x_432, 1.0f);
  let x_434 : f32 = u_xlat76;
  u_xlat76 = (-(x_434) + 1.0f);
  let x_437 : f32 = u_xlat76;
  u_xlat76 = sqrt(x_437);
  let x_439 : f32 = u_xlat76;
  u_xlat8.z = max(x_439, 0.0000000000000001f);
  let x_442 : vec4<f32> = u_xlat6;
  let x_446 : f32 = x_13.x_NormalScale1;
  let x_448 : f32 = x_13.x_NormalScale1;
  let x_449 : vec2<f32> = vec2<f32>(x_446, x_448);
  let x_453 : vec2<f32> = (vec2<f32>(x_442.x, x_442.y) * vec2<f32>(x_449.x, x_449.y));
  let x_454 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_453.x, x_453.y, x_454.z, x_454.w);
  let x_456 : vec4<f32> = u_xlat4;
  let x_458 : vec4<f32> = u_xlat8;
  let x_460 : vec3<f32> = (vec3<f32>(x_456.y, x_456.y, x_456.y) * vec3<f32>(x_458.x, x_458.y, x_458.z));
  let x_461 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_460.x, x_460.y, x_460.z, x_461.w);
  let x_463 : vec4<f32> = u_xlat4;
  let x_465 : vec4<f32> = u_xlat7;
  let x_468 : vec4<f32> = u_xlat6;
  let x_470 : vec3<f32> = ((vec3<f32>(x_463.x, x_463.x, x_463.x) * vec3<f32>(x_465.x, x_465.y, x_465.z)) + vec3<f32>(x_468.x, x_468.y, x_468.z));
  let x_471 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_470.x, x_470.y, x_470.z, x_471.w);
  let x_477 : vec4<f32> = vs_TEXCOORD2;
  let x_480 : f32 = x_110.x_GlobalMipBias.x;
  let x_481 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_477.x, x_477.y), x_480);
  let x_482 : vec3<f32> = vec3<f32>(x_481.x, x_481.y, x_481.w);
  let x_483 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_482.x, x_482.y, x_482.z, x_483.w);
  let x_486 : f32 = u_xlat7.x;
  let x_488 : f32 = u_xlat7.z;
  u_xlat7.x = (x_486 * x_488);
  let x_491 : vec4<f32> = u_xlat7;
  let x_494 : vec2<f32> = ((vec2<f32>(x_491.x, x_491.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_495 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_494.x, x_494.y, x_495.z, x_495.w);
  let x_497 : vec4<f32> = u_xlat7;
  let x_499 : vec4<f32> = u_xlat7;
  u_xlat76 = dot(vec2<f32>(x_497.x, x_497.y), vec2<f32>(x_499.x, x_499.y));
  let x_502 : f32 = u_xlat76;
  u_xlat76 = min(x_502, 1.0f);
  let x_504 : f32 = u_xlat76;
  u_xlat76 = (-(x_504) + 1.0f);
  let x_507 : f32 = u_xlat76;
  u_xlat76 = sqrt(x_507);
  let x_509 : f32 = u_xlat76;
  u_xlat8.z = max(x_509, 0.0000000000000001f);
  let x_512 : vec4<f32> = u_xlat7;
  let x_516 : f32 = x_13.x_NormalScale2;
  let x_518 : f32 = x_13.x_NormalScale2;
  let x_519 : vec2<f32> = vec2<f32>(x_516, x_518);
  let x_523 : vec2<f32> = (vec2<f32>(x_512.x, x_512.y) * vec2<f32>(x_519.x, x_519.y));
  let x_524 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_523.x, x_523.y, x_524.z, x_524.w);
  let x_526 : vec4<f32> = u_xlat4;
  let x_528 : vec4<f32> = u_xlat8;
  let x_531 : vec4<f32> = u_xlat6;
  let x_533 : vec3<f32> = ((vec3<f32>(x_526.z, x_526.z, x_526.z) * vec3<f32>(x_528.x, x_528.y, x_528.z)) + vec3<f32>(x_531.x, x_531.y, x_531.z));
  let x_534 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_533.x, x_533.y, x_533.z, x_534.w);
  let x_540 : vec4<f32> = vs_TEXCOORD2;
  let x_543 : f32 = x_110.x_GlobalMipBias.x;
  let x_544 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_540.z, x_540.w), x_543);
  let x_545 : vec3<f32> = vec3<f32>(x_544.x, x_544.y, x_544.w);
  let x_546 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_545.x, x_545.y, x_545.z, x_546.w);
  let x_549 : f32 = u_xlat7.x;
  let x_551 : f32 = u_xlat7.z;
  u_xlat7.x = (x_549 * x_551);
  let x_554 : vec4<f32> = u_xlat7;
  let x_557 : vec2<f32> = ((vec2<f32>(x_554.x, x_554.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_558 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_557.x, x_557.y, x_558.z, x_558.w);
  let x_560 : vec4<f32> = u_xlat7;
  let x_562 : vec4<f32> = u_xlat7;
  u_xlat76 = dot(vec2<f32>(x_560.x, x_560.y), vec2<f32>(x_562.x, x_562.y));
  let x_565 : f32 = u_xlat76;
  u_xlat76 = min(x_565, 1.0f);
  let x_567 : f32 = u_xlat76;
  u_xlat76 = (-(x_567) + 1.0f);
  let x_570 : f32 = u_xlat76;
  u_xlat76 = sqrt(x_570);
  let x_572 : f32 = u_xlat76;
  u_xlat8.z = max(x_572, 0.0000000000000001f);
  let x_575 : vec4<f32> = u_xlat7;
  let x_579 : f32 = x_13.x_NormalScale3;
  let x_581 : f32 = x_13.x_NormalScale3;
  let x_582 : vec2<f32> = vec2<f32>(x_579, x_581);
  let x_586 : vec2<f32> = (vec2<f32>(x_575.x, x_575.y) * vec2<f32>(x_582.x, x_582.y));
  let x_587 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_586.x, x_586.y, x_587.z, x_587.w);
  let x_589 : vec4<f32> = u_xlat4;
  let x_591 : vec4<f32> = u_xlat8;
  let x_594 : vec4<f32> = u_xlat6;
  let x_596 : vec3<f32> = ((vec3<f32>(x_589.w, x_589.w, x_589.w) * vec3<f32>(x_591.x, x_591.y, x_591.z)) + vec3<f32>(x_594.x, x_594.y, x_594.z));
  let x_597 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_596.x, x_596.y, x_596.z, x_597.w);
  let x_600 : f32 = u_xlat6.z;
  u_xlat6.w = (x_600 + 0.00000999999974737875f);
  let x_604 : vec4<f32> = u_xlat6;
  let x_606 : vec4<f32> = u_xlat6;
  u_xlat76 = dot(vec3<f32>(x_604.x, x_604.y, x_604.w), vec3<f32>(x_606.x, x_606.y, x_606.w));
  let x_609 : f32 = u_xlat76;
  u_xlat76 = inverseSqrt(x_609);
  let x_611 : f32 = u_xlat76;
  let x_613 : vec4<f32> = u_xlat6;
  let x_615 : vec3<f32> = (vec3<f32>(x_611, x_611, x_611) * vec3<f32>(x_613.x, x_613.y, x_613.w));
  let x_616 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_615.x, x_615.y, x_615.z, x_616.w);
  let x_619 : f32 = x_13.x_MaskMapRemapScale0.y;
  u_xlat7.x = x_619;
  let x_622 : f32 = x_13.x_MaskMapRemapScale1.y;
  u_xlat7.y = x_622;
  let x_625 : f32 = x_13.x_MaskMapRemapScale2.y;
  u_xlat7.z = x_625;
  let x_628 : f32 = x_13.x_MaskMapRemapScale3.y;
  u_xlat7.w = x_628;
  let x_631 : f32 = x_13.x_MaskMapRemapOffset0.y;
  u_xlat8.x = x_631;
  let x_634 : f32 = x_13.x_MaskMapRemapOffset1.y;
  u_xlat8.y = x_634;
  let x_637 : f32 = x_13.x_MaskMapRemapOffset2.y;
  u_xlat8.z = x_637;
  let x_640 : f32 = x_13.x_MaskMapRemapOffset3.y;
  u_xlat8.w = x_640;
  let x_642 : vec4<f32> = u_xlat7;
  let x_643 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_642 + x_643);
  let x_646 : f32 = u_xlat0.z;
  u_xlat8.x = x_646;
  let x_649 : f32 = u_xlat1.z;
  u_xlat8.y = x_649;
  let x_652 : f32 = u_xlat2.z;
  u_xlat8.z = x_652;
  let x_655 : f32 = u_xlat3.y;
  u_xlat8.w = x_655;
  let x_657 : vec4<f32> = u_xlat9;
  let x_660 : f32 = x_13.x_Smoothness0;
  let x_662 : f32 = x_13.x_Smoothness1;
  let x_664 : f32 = x_13.x_Smoothness2;
  let x_666 : f32 = x_13.x_Smoothness3;
  let x_669 : vec4<f32> = u_xlat8;
  u_xlat8 = ((-(x_657) * vec4<f32>(x_660, x_662, x_664, x_666)) + x_669);
  let x_673 : f32 = x_13.x_LayerHasMask0;
  let x_676 : f32 = x_13.x_LayerHasMask1;
  let x_679 : f32 = x_13.x_LayerHasMask2;
  let x_682 : f32 = x_13.x_LayerHasMask3;
  let x_684 : vec4<f32> = u_xlat8;
  let x_686 : vec4<f32> = u_xlat10;
  u_xlat8 = ((vec4<f32>(x_673, x_676, x_679, x_682) * x_684) + x_686);
  let x_689 : vec4<f32> = u_xlat4;
  let x_690 : vec4<f32> = u_xlat8;
  u_xlat50 = dot(x_689, x_690);
  let x_693 : f32 = u_xlat0.x;
  u_xlat8.x = x_693;
  let x_696 : f32 = u_xlat1.x;
  u_xlat8.y = x_696;
  let x_699 : f32 = u_xlat2.x;
  u_xlat8.z = x_699;
  let x_702 : f32 = u_xlat3.x;
  u_xlat8.w = x_702;
  let x_704 : vec4<f32> = u_xlat8;
  let x_707 : f32 = x_13.x_Metallic0;
  let x_710 : f32 = x_13.x_Metallic1;
  let x_713 : f32 = x_13.x_Metallic2;
  let x_716 : f32 = x_13.x_Metallic3;
  u_xlat8 = (x_704 + -(vec4<f32>(x_707, x_710, x_713, x_716)));
  let x_721 : f32 = x_13.x_LayerHasMask0;
  let x_723 : f32 = x_13.x_LayerHasMask1;
  let x_725 : f32 = x_13.x_LayerHasMask2;
  let x_727 : f32 = x_13.x_LayerHasMask3;
  let x_729 : vec4<f32> = u_xlat8;
  let x_732 : f32 = x_13.x_Metallic0;
  let x_734 : f32 = x_13.x_Metallic1;
  let x_736 : f32 = x_13.x_Metallic2;
  let x_738 : f32 = x_13.x_Metallic3;
  u_xlat8 = ((vec4<f32>(x_721, x_723, x_725, x_727) * x_729) + vec4<f32>(x_732, x_734, x_736, x_738));
  let x_741 : vec4<f32> = u_xlat4;
  let x_742 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_741, x_742);
  let x_746 : f32 = u_xlat0.y;
  u_xlat3.x = x_746;
  let x_749 : f32 = u_xlat1.y;
  u_xlat3.y = x_749;
  let x_752 : f32 = u_xlat2.y;
  u_xlat3.z = x_752;
  let x_754 : vec4<f32> = u_xlat7;
  let x_756 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_754) + x_756);
  let x_759 : f32 = x_13.x_LayerHasMask0;
  let x_761 : f32 = x_13.x_LayerHasMask1;
  let x_763 : f32 = x_13.x_LayerHasMask2;
  let x_765 : f32 = x_13.x_LayerHasMask3;
  let x_767 : vec4<f32> = u_xlat1;
  let x_769 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec4<f32>(x_759, x_761, x_763, x_765) * x_767) + x_769);
  let x_772 : vec4<f32> = u_xlat4;
  let x_773 : vec4<f32> = u_xlat1;
  u_xlat25 = dot(x_772, x_773);
  let x_775 : vec4<f32> = u_xlat6;
  let x_778 : vec4<f32> = vs_TEXCOORD5;
  let x_780 : vec3<f32> = (vec3<f32>(x_775.y, x_775.y, x_775.y) * vec3<f32>(x_778.x, x_778.y, x_778.z));
  let x_781 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_780.x, x_780.y, x_780.z, x_781.w);
  let x_783 : vec4<f32> = u_xlat6;
  let x_786 : vec4<f32> = vs_TEXCOORD4;
  let x_790 : vec4<f32> = u_xlat1;
  let x_792 : vec3<f32> = ((vec3<f32>(x_783.x, x_783.x, x_783.x) * -(vec3<f32>(x_786.x, x_786.y, x_786.z))) + vec3<f32>(x_790.x, x_790.y, x_790.z));
  let x_793 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_792.x, x_792.y, x_792.z, x_793.w);
  let x_795 : vec4<f32> = u_xlat6;
  let x_798 : vec4<f32> = vs_TEXCOORD3;
  let x_801 : vec4<f32> = u_xlat1;
  let x_803 : vec3<f32> = ((vec3<f32>(x_795.z, x_795.z, x_795.z) * vec3<f32>(x_798.x, x_798.y, x_798.z)) + vec3<f32>(x_801.x, x_801.y, x_801.z));
  let x_804 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_803.x, x_803.y, x_803.z, x_804.w);
  let x_806 : vec4<f32> = u_xlat1;
  let x_808 : vec4<f32> = u_xlat1;
  u_xlat76 = dot(vec3<f32>(x_806.x, x_806.y, x_806.z), vec3<f32>(x_808.x, x_808.y, x_808.z));
  let x_811 : f32 = u_xlat76;
  u_xlat76 = inverseSqrt(x_811);
  let x_813 : f32 = u_xlat76;
  let x_815 : vec4<f32> = u_xlat1;
  let x_817 : vec3<f32> = (vec3<f32>(x_813, x_813, x_813) * vec3<f32>(x_815.x, x_815.y, x_815.z));
  let x_818 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_817.x, x_817.y, x_817.z, x_818.w);
  u_xlat1.w = 1.0f;
  let x_827 : vec4<f32> = x_825.unity_SHAr;
  let x_828 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_827, x_828);
  let x_832 : vec4<f32> = x_825.unity_SHAg;
  let x_833 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_832, x_833);
  let x_837 : vec4<f32> = x_825.unity_SHAb;
  let x_838 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_837, x_838);
  let x_841 : vec4<f32> = u_xlat1;
  let x_843 : vec4<f32> = u_xlat1;
  u_xlat3 = (vec4<f32>(x_841.y, x_841.z, x_841.z, x_841.x) * vec4<f32>(x_843.x, x_843.y, x_843.z, x_843.z));
  let x_847 : vec4<f32> = x_825.unity_SHBr;
  let x_848 : vec4<f32> = u_xlat3;
  u_xlat4.x = dot(x_847, x_848);
  let x_852 : vec4<f32> = x_825.unity_SHBg;
  let x_853 : vec4<f32> = u_xlat3;
  u_xlat4.y = dot(x_852, x_853);
  let x_857 : vec4<f32> = x_825.unity_SHBb;
  let x_858 : vec4<f32> = u_xlat3;
  u_xlat4.z = dot(x_857, x_858);
  let x_862 : f32 = u_xlat1.y;
  let x_864 : f32 = u_xlat1.y;
  u_xlat76 = (x_862 * x_864);
  let x_867 : f32 = u_xlat1.x;
  let x_869 : f32 = u_xlat1.x;
  let x_871 : f32 = u_xlat76;
  u_xlat76 = ((x_867 * x_869) + -(x_871));
  let x_876 : vec4<f32> = x_825.unity_SHC;
  let x_878 : f32 = u_xlat76;
  let x_881 : vec4<f32> = u_xlat4;
  let x_883 : vec3<f32> = ((vec3<f32>(x_876.x, x_876.y, x_876.z) * vec3<f32>(x_878, x_878, x_878)) + vec3<f32>(x_881.x, x_881.y, x_881.z));
  let x_884 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_883.x, x_883.y, x_883.z, x_884.w);
  let x_886 : vec3<f32> = u_xlat2;
  let x_887 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_886 + vec3<f32>(x_887.x, x_887.y, x_887.z));
  let x_890 : vec3<f32> = u_xlat2;
  u_xlat2 = max(x_890, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_894 : f32 = u_xlat0.x;
  u_xlat76 = ((-(x_894) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_900 : f32 = u_xlat50;
  let x_901 : f32 = u_xlat76;
  u_xlat77 = (x_900 + -(x_901));
  let x_904 : f32 = u_xlat76;
  let x_906 : vec4<f32> = u_xlat5;
  let x_908 : vec3<f32> = (vec3<f32>(x_904, x_904, x_904) * vec3<f32>(x_906.x, x_906.y, x_906.z));
  let x_909 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_908.x, x_908.y, x_908.z, x_909.w);
  let x_911 : vec4<f32> = u_xlat5;
  let x_915 : vec3<f32> = (vec3<f32>(x_911.x, x_911.y, x_911.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_916 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_915.x, x_915.y, x_915.z, x_916.w);
  let x_918 : vec3<f32> = u_xlat0;
  let x_920 : vec4<f32> = u_xlat4;
  let x_925 : vec3<f32> = ((vec3<f32>(x_918.x, x_918.x, x_918.x) * vec3<f32>(x_920.x, x_920.y, x_920.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_926 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_925.x, x_925.y, x_925.z, x_926.w);
  let x_928 : f32 = u_xlat50;
  u_xlat0.x = (-(x_928) + 1.0f);
  let x_933 : f32 = u_xlat0.x;
  let x_935 : f32 = u_xlat0.x;
  u_xlat50 = (x_933 * x_935);
  let x_937 : f32 = u_xlat50;
  u_xlat50 = max(x_937, 0.0078125f);
  let x_940 : f32 = u_xlat50;
  let x_941 : f32 = u_xlat50;
  u_xlat76 = (x_940 * x_941);
  let x_943 : f32 = u_xlat77;
  u_xlat77 = (x_943 + 1.0f);
  let x_945 : f32 = u_xlat77;
  u_xlat77 = clamp(x_945, 0.0f, 1.0f);
  let x_948 : f32 = u_xlat50;
  u_xlat78 = ((x_948 * 4.0f) + 2.0f);
  let x_951 : f32 = u_xlat25;
  u_xlat25 = min(x_951, 1.0f);
  let x_963 : f32 = x_961.x_MainLightShadowParams.y;
  u_xlatb79 = (0.0f < x_963);
  let x_965 : bool = u_xlatb79;
  if (x_965) {
    let x_969 : f32 = x_961.x_MainLightShadowParams.y;
    u_xlatb79 = (x_969 == 1.0f);
    let x_971 : bool = u_xlatb79;
    if (x_971) {
      let x_975 : vec4<f32> = vs_TEXCOORD8;
      let x_978 : vec4<f32> = x_961.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_975.x, x_975.y, x_975.x, x_975.y) + x_978);
      let x_982 : vec4<f32> = u_xlat5;
      let x_983 : vec2<f32> = vec2<f32>(x_982.x, x_982.y);
      let x_986 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_983.x, x_983.y, x_986);
      let x_998 : vec3<f32> = txVec0;
      let x_1000 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_998.xy, x_998.z);
      u_xlat6.x = x_1000;
      let x_1003 : vec4<f32> = u_xlat5;
      let x_1004 : vec2<f32> = vec2<f32>(x_1003.z, x_1003.w);
      let x_1006 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_1004.x, x_1004.y, x_1006);
      let x_1013 : vec3<f32> = txVec1;
      let x_1015 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1013.xy, x_1013.z);
      u_xlat6.y = x_1015;
      let x_1017 : vec4<f32> = vs_TEXCOORD8;
      let x_1020 : vec4<f32> = x_961.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_1017.x, x_1017.y, x_1017.x, x_1017.y) + x_1020);
      let x_1023 : vec4<f32> = u_xlat5;
      let x_1024 : vec2<f32> = vec2<f32>(x_1023.x, x_1023.y);
      let x_1026 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_1024.x, x_1024.y, x_1026);
      let x_1033 : vec3<f32> = txVec2;
      let x_1035 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1033.xy, x_1033.z);
      u_xlat6.z = x_1035;
      let x_1038 : vec4<f32> = u_xlat5;
      let x_1039 : vec2<f32> = vec2<f32>(x_1038.z, x_1038.w);
      let x_1041 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_1039.x, x_1039.y, x_1041);
      let x_1048 : vec3<f32> = txVec3;
      let x_1050 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1048.xy, x_1048.z);
      u_xlat6.w = x_1050;
      let x_1053 : vec4<f32> = u_xlat6;
      u_xlat79 = dot(x_1053, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1060 : f32 = x_961.x_MainLightShadowParams.y;
      u_xlatb5 = (x_1060 == 2.0f);
      let x_1062 : bool = u_xlatb5;
      if (x_1062) {
        let x_1065 : vec4<f32> = vs_TEXCOORD8;
        let x_1068 : vec4<f32> = x_961.x_MainLightShadowmapSize;
        let x_1071 : vec2<f32> = ((vec2<f32>(x_1065.x, x_1065.y) * vec2<f32>(x_1068.z, x_1068.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1072 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1071.x, x_1071.y, x_1072.z, x_1072.w);
        let x_1074 : vec4<f32> = u_xlat5;
        let x_1076 : vec2<f32> = floor(vec2<f32>(x_1074.x, x_1074.y));
        let x_1077 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1076.x, x_1076.y, x_1077.z, x_1077.w);
        let x_1081 : vec4<f32> = vs_TEXCOORD8;
        let x_1084 : vec4<f32> = x_961.x_MainLightShadowmapSize;
        let x_1087 : vec4<f32> = u_xlat5;
        u_xlat55 = ((vec2<f32>(x_1081.x, x_1081.y) * vec2<f32>(x_1084.z, x_1084.w)) + -(vec2<f32>(x_1087.x, x_1087.y)));
        let x_1091 : vec2<f32> = u_xlat55;
        u_xlat6 = (vec4<f32>(x_1091.x, x_1091.x, x_1091.y, x_1091.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1095 : vec4<f32> = u_xlat6;
        let x_1097 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1095.x, x_1095.x, x_1095.z, x_1095.z) * vec4<f32>(x_1097.x, x_1097.x, x_1097.z, x_1097.z));
        let x_1100 : vec4<f32> = u_xlat7;
        let x_1104 : vec2<f32> = (vec2<f32>(x_1100.y, x_1100.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1105 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1104.x, x_1105.y, x_1104.y, x_1105.w);
        let x_1107 : vec4<f32> = u_xlat7;
        let x_1110 : vec2<f32> = u_xlat55;
        let x_1112 : vec2<f32> = ((vec2<f32>(x_1107.x, x_1107.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1110));
        let x_1113 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1112.x, x_1112.y, x_1113.z, x_1113.w);
        let x_1116 : vec2<f32> = u_xlat55;
        u_xlat57 = (-(x_1116) + vec2<f32>(1.0f, 1.0f));
        let x_1120 : vec2<f32> = u_xlat55;
        let x_1122 : vec2<f32> = min(x_1120, vec2<f32>(0.0f, 0.0f));
        let x_1123 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1122.x, x_1122.y, x_1123.z, x_1123.w);
        let x_1125 : vec4<f32> = u_xlat8;
        let x_1128 : vec4<f32> = u_xlat8;
        let x_1131 : vec2<f32> = u_xlat57;
        let x_1132 : vec2<f32> = ((-(vec2<f32>(x_1125.x, x_1125.y)) * vec2<f32>(x_1128.x, x_1128.y)) + x_1131);
        let x_1133 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1132.x, x_1132.y, x_1133.z, x_1133.w);
        let x_1135 : vec2<f32> = u_xlat55;
        u_xlat55 = max(x_1135, vec2<f32>(0.0f, 0.0f));
        let x_1137 : vec2<f32> = u_xlat55;
        let x_1139 : vec2<f32> = u_xlat55;
        let x_1141 : vec4<f32> = u_xlat6;
        u_xlat55 = ((-(x_1137) * x_1139) + vec2<f32>(x_1141.y, x_1141.w));
        let x_1144 : vec4<f32> = u_xlat8;
        let x_1146 : vec2<f32> = (vec2<f32>(x_1144.x, x_1144.y) + vec2<f32>(1.0f, 1.0f));
        let x_1147 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1146.x, x_1146.y, x_1147.z, x_1147.w);
        let x_1149 : vec2<f32> = u_xlat55;
        u_xlat55 = (x_1149 + vec2<f32>(1.0f, 1.0f));
        let x_1151 : vec4<f32> = u_xlat7;
        let x_1155 : vec2<f32> = (vec2<f32>(x_1151.x, x_1151.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1156 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1155.x, x_1155.y, x_1156.z, x_1156.w);
        let x_1158 : vec2<f32> = u_xlat57;
        let x_1159 : vec2<f32> = (x_1158 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1160 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1159.x, x_1159.y, x_1160.z, x_1160.w);
        let x_1162 : vec4<f32> = u_xlat8;
        let x_1164 : vec2<f32> = (vec2<f32>(x_1162.x, x_1162.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1165 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1164.x, x_1164.y, x_1165.z, x_1165.w);
        let x_1167 : vec2<f32> = u_xlat55;
        let x_1168 : vec2<f32> = (x_1167 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1169 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1168.x, x_1168.y, x_1169.z, x_1169.w);
        let x_1171 : vec4<f32> = u_xlat6;
        u_xlat55 = (vec2<f32>(x_1171.y, x_1171.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1175 : f32 = u_xlat8.x;
        u_xlat9.z = x_1175;
        let x_1178 : f32 = u_xlat55.x;
        u_xlat9.w = x_1178;
        let x_1181 : f32 = u_xlat10.x;
        u_xlat7.z = x_1181;
        let x_1184 : f32 = u_xlat6.x;
        u_xlat7.w = x_1184;
        let x_1186 : vec4<f32> = u_xlat7;
        let x_1188 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_1186.z, x_1186.w, x_1186.x, x_1186.z) + vec4<f32>(x_1188.z, x_1188.w, x_1188.x, x_1188.z));
        let x_1192 : f32 = u_xlat9.y;
        u_xlat8.z = x_1192;
        let x_1195 : f32 = u_xlat55.y;
        u_xlat8.w = x_1195;
        let x_1198 : f32 = u_xlat7.y;
        u_xlat10.z = x_1198;
        let x_1201 : f32 = u_xlat6.z;
        u_xlat10.w = x_1201;
        let x_1203 : vec4<f32> = u_xlat8;
        let x_1205 : vec4<f32> = u_xlat10;
        let x_1207 : vec3<f32> = (vec3<f32>(x_1203.z, x_1203.y, x_1203.w) + vec3<f32>(x_1205.z, x_1205.y, x_1205.w));
        let x_1208 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1207.x, x_1207.y, x_1207.z, x_1208.w);
        let x_1210 : vec4<f32> = u_xlat7;
        let x_1212 : vec4<f32> = u_xlat11;
        let x_1214 : vec3<f32> = (vec3<f32>(x_1210.x, x_1210.z, x_1210.w) / vec3<f32>(x_1212.z, x_1212.w, x_1212.y));
        let x_1215 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1214.x, x_1214.y, x_1214.z, x_1215.w);
        let x_1217 : vec4<f32> = u_xlat7;
        let x_1223 : vec3<f32> = (vec3<f32>(x_1217.x, x_1217.y, x_1217.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1224 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1223.x, x_1223.y, x_1223.z, x_1224.w);
        let x_1226 : vec4<f32> = u_xlat10;
        let x_1228 : vec4<f32> = u_xlat6;
        let x_1230 : vec3<f32> = (vec3<f32>(x_1226.z, x_1226.y, x_1226.w) / vec3<f32>(x_1228.x, x_1228.y, x_1228.z));
        let x_1231 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1230.x, x_1230.y, x_1230.z, x_1231.w);
        let x_1233 : vec4<f32> = u_xlat8;
        let x_1235 : vec3<f32> = (vec3<f32>(x_1233.x, x_1233.y, x_1233.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1236 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1235.x, x_1235.y, x_1235.z, x_1236.w);
        let x_1238 : vec4<f32> = u_xlat7;
        let x_1241 : vec4<f32> = x_961.x_MainLightShadowmapSize;
        let x_1243 : vec3<f32> = (vec3<f32>(x_1238.y, x_1238.x, x_1238.z) * vec3<f32>(x_1241.x, x_1241.x, x_1241.x));
        let x_1244 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1243.x, x_1243.y, x_1243.z, x_1244.w);
        let x_1246 : vec4<f32> = u_xlat8;
        let x_1249 : vec4<f32> = x_961.x_MainLightShadowmapSize;
        let x_1251 : vec3<f32> = (vec3<f32>(x_1246.x, x_1246.y, x_1246.z) * vec3<f32>(x_1249.y, x_1249.y, x_1249.y));
        let x_1252 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1251.x, x_1251.y, x_1251.z, x_1252.w);
        let x_1255 : f32 = u_xlat8.x;
        u_xlat7.w = x_1255;
        let x_1257 : vec4<f32> = u_xlat5;
        let x_1260 : vec4<f32> = x_961.x_MainLightShadowmapSize;
        let x_1263 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_1257.x, x_1257.y, x_1257.x, x_1257.y) * vec4<f32>(x_1260.x, x_1260.y, x_1260.x, x_1260.y)) + vec4<f32>(x_1263.y, x_1263.w, x_1263.x, x_1263.w));
        let x_1266 : vec4<f32> = u_xlat5;
        let x_1269 : vec4<f32> = x_961.x_MainLightShadowmapSize;
        let x_1272 : vec4<f32> = u_xlat7;
        u_xlat55 = ((vec2<f32>(x_1266.x, x_1266.y) * vec2<f32>(x_1269.x, x_1269.y)) + vec2<f32>(x_1272.z, x_1272.w));
        let x_1276 : f32 = u_xlat7.y;
        u_xlat8.w = x_1276;
        let x_1278 : vec4<f32> = u_xlat8;
        let x_1279 : vec2<f32> = vec2<f32>(x_1278.y, x_1278.z);
        let x_1280 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1280.x, x_1279.x, x_1280.z, x_1279.y);
        let x_1282 : vec4<f32> = u_xlat5;
        let x_1285 : vec4<f32> = x_961.x_MainLightShadowmapSize;
        let x_1288 : vec4<f32> = u_xlat7;
        u_xlat10 = ((vec4<f32>(x_1282.x, x_1282.y, x_1282.x, x_1282.y) * vec4<f32>(x_1285.x, x_1285.y, x_1285.x, x_1285.y)) + vec4<f32>(x_1288.x, x_1288.y, x_1288.z, x_1288.y));
        let x_1291 : vec4<f32> = u_xlat5;
        let x_1294 : vec4<f32> = x_961.x_MainLightShadowmapSize;
        let x_1297 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1291.x, x_1291.y, x_1291.x, x_1291.y) * vec4<f32>(x_1294.x, x_1294.y, x_1294.x, x_1294.y)) + vec4<f32>(x_1297.w, x_1297.y, x_1297.w, x_1297.z));
        let x_1300 : vec4<f32> = u_xlat5;
        let x_1303 : vec4<f32> = x_961.x_MainLightShadowmapSize;
        let x_1306 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_1300.x, x_1300.y, x_1300.x, x_1300.y) * vec4<f32>(x_1303.x, x_1303.y, x_1303.x, x_1303.y)) + vec4<f32>(x_1306.x, x_1306.w, x_1306.z, x_1306.w));
        let x_1309 : vec4<f32> = u_xlat6;
        let x_1311 : vec4<f32> = u_xlat11;
        u_xlat12 = (vec4<f32>(x_1309.x, x_1309.x, x_1309.x, x_1309.y) * vec4<f32>(x_1311.z, x_1311.w, x_1311.y, x_1311.z));
        let x_1314 : vec4<f32> = u_xlat6;
        let x_1316 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_1314.y, x_1314.y, x_1314.z, x_1314.z) * x_1316);
        let x_1319 : f32 = u_xlat6.z;
        let x_1321 : f32 = u_xlat11.y;
        u_xlat5.x = (x_1319 * x_1321);
        let x_1325 : vec4<f32> = u_xlat9;
        let x_1326 : vec2<f32> = vec2<f32>(x_1325.x, x_1325.y);
        let x_1328 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_1326.x, x_1326.y, x_1328);
        let x_1336 : vec3<f32> = txVec4;
        let x_1338 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1336.xy, x_1336.z);
        u_xlat30.x = x_1338;
        let x_1341 : vec4<f32> = u_xlat9;
        let x_1342 : vec2<f32> = vec2<f32>(x_1341.z, x_1341.w);
        let x_1344 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_1342.x, x_1342.y, x_1344);
        let x_1351 : vec3<f32> = txVec5;
        let x_1353 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1351.xy, x_1351.z);
        u_xlat6.x = x_1353;
        let x_1356 : f32 = u_xlat6.x;
        let x_1358 : f32 = u_xlat12.y;
        u_xlat6.x = (x_1356 * x_1358);
        let x_1362 : f32 = u_xlat12.x;
        let x_1364 : f32 = u_xlat30.x;
        let x_1367 : f32 = u_xlat6.x;
        u_xlat30.x = ((x_1362 * x_1364) + x_1367);
        let x_1371 : vec2<f32> = u_xlat55;
        let x_1373 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_1371.x, x_1371.y, x_1373);
        let x_1380 : vec3<f32> = txVec6;
        let x_1382 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1380.xy, x_1380.z);
        u_xlat55.x = x_1382;
        let x_1385 : f32 = u_xlat12.z;
        let x_1387 : f32 = u_xlat55.x;
        let x_1390 : f32 = u_xlat30.x;
        u_xlat30.x = ((x_1385 * x_1387) + x_1390);
        let x_1394 : vec4<f32> = u_xlat8;
        let x_1395 : vec2<f32> = vec2<f32>(x_1394.x, x_1394.y);
        let x_1397 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_1395.x, x_1395.y, x_1397);
        let x_1404 : vec3<f32> = txVec7;
        let x_1406 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1404.xy, x_1404.z);
        u_xlat55.x = x_1406;
        let x_1409 : f32 = u_xlat12.w;
        let x_1411 : f32 = u_xlat55.x;
        let x_1414 : f32 = u_xlat30.x;
        u_xlat30.x = ((x_1409 * x_1411) + x_1414);
        let x_1418 : vec4<f32> = u_xlat10;
        let x_1419 : vec2<f32> = vec2<f32>(x_1418.x, x_1418.y);
        let x_1421 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_1419.x, x_1419.y, x_1421);
        let x_1428 : vec3<f32> = txVec8;
        let x_1430 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1428.xy, x_1428.z);
        u_xlat55.x = x_1430;
        let x_1433 : f32 = u_xlat13.x;
        let x_1435 : f32 = u_xlat55.x;
        let x_1438 : f32 = u_xlat30.x;
        u_xlat30.x = ((x_1433 * x_1435) + x_1438);
        let x_1442 : vec4<f32> = u_xlat10;
        let x_1443 : vec2<f32> = vec2<f32>(x_1442.z, x_1442.w);
        let x_1445 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_1443.x, x_1443.y, x_1445);
        let x_1452 : vec3<f32> = txVec9;
        let x_1454 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1452.xy, x_1452.z);
        u_xlat55.x = x_1454;
        let x_1457 : f32 = u_xlat13.y;
        let x_1459 : f32 = u_xlat55.x;
        let x_1462 : f32 = u_xlat30.x;
        u_xlat30.x = ((x_1457 * x_1459) + x_1462);
        let x_1466 : vec4<f32> = u_xlat8;
        let x_1467 : vec2<f32> = vec2<f32>(x_1466.z, x_1466.w);
        let x_1469 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_1467.x, x_1467.y, x_1469);
        let x_1476 : vec3<f32> = txVec10;
        let x_1478 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1476.xy, x_1476.z);
        u_xlat55.x = x_1478;
        let x_1481 : f32 = u_xlat13.z;
        let x_1483 : f32 = u_xlat55.x;
        let x_1486 : f32 = u_xlat30.x;
        u_xlat30.x = ((x_1481 * x_1483) + x_1486);
        let x_1490 : vec4<f32> = u_xlat7;
        let x_1491 : vec2<f32> = vec2<f32>(x_1490.x, x_1490.y);
        let x_1493 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_1491.x, x_1491.y, x_1493);
        let x_1500 : vec3<f32> = txVec11;
        let x_1502 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1500.xy, x_1500.z);
        u_xlat55.x = x_1502;
        let x_1505 : f32 = u_xlat13.w;
        let x_1507 : f32 = u_xlat55.x;
        let x_1510 : f32 = u_xlat30.x;
        u_xlat30.x = ((x_1505 * x_1507) + x_1510);
        let x_1514 : vec4<f32> = u_xlat7;
        let x_1515 : vec2<f32> = vec2<f32>(x_1514.z, x_1514.w);
        let x_1517 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_1515.x, x_1515.y, x_1517);
        let x_1524 : vec3<f32> = txVec12;
        let x_1526 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1524.xy, x_1524.z);
        u_xlat55.x = x_1526;
        let x_1529 : f32 = u_xlat5.x;
        let x_1531 : f32 = u_xlat55.x;
        let x_1534 : f32 = u_xlat30.x;
        u_xlat79 = ((x_1529 * x_1531) + x_1534);
      } else {
        let x_1537 : vec4<f32> = vs_TEXCOORD8;
        let x_1540 : vec4<f32> = x_961.x_MainLightShadowmapSize;
        let x_1543 : vec2<f32> = ((vec2<f32>(x_1537.x, x_1537.y) * vec2<f32>(x_1540.z, x_1540.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1544 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1543.x, x_1543.y, x_1544.z, x_1544.w);
        let x_1546 : vec4<f32> = u_xlat5;
        let x_1548 : vec2<f32> = floor(vec2<f32>(x_1546.x, x_1546.y));
        let x_1549 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1548.x, x_1548.y, x_1549.z, x_1549.w);
        let x_1551 : vec4<f32> = vs_TEXCOORD8;
        let x_1554 : vec4<f32> = x_961.x_MainLightShadowmapSize;
        let x_1557 : vec4<f32> = u_xlat5;
        u_xlat55 = ((vec2<f32>(x_1551.x, x_1551.y) * vec2<f32>(x_1554.z, x_1554.w)) + -(vec2<f32>(x_1557.x, x_1557.y)));
        let x_1561 : vec2<f32> = u_xlat55;
        u_xlat6 = (vec4<f32>(x_1561.x, x_1561.x, x_1561.y, x_1561.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1564 : vec4<f32> = u_xlat6;
        let x_1566 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1564.x, x_1564.x, x_1564.z, x_1564.z) * vec4<f32>(x_1566.x, x_1566.x, x_1566.z, x_1566.z));
        let x_1569 : vec4<f32> = u_xlat7;
        let x_1573 : vec2<f32> = (vec2<f32>(x_1569.y, x_1569.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1574 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1574.x, x_1573.x, x_1574.z, x_1573.y);
        let x_1576 : vec4<f32> = u_xlat7;
        let x_1579 : vec2<f32> = u_xlat55;
        let x_1581 : vec2<f32> = ((vec2<f32>(x_1576.x, x_1576.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1579));
        let x_1582 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1581.x, x_1582.y, x_1581.y, x_1582.w);
        let x_1584 : vec2<f32> = u_xlat55;
        let x_1586 : vec2<f32> = (-(x_1584) + vec2<f32>(1.0f, 1.0f));
        let x_1587 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1586.x, x_1586.y, x_1587.z, x_1587.w);
        let x_1589 : vec2<f32> = u_xlat55;
        u_xlat57 = min(x_1589, vec2<f32>(0.0f, 0.0f));
        let x_1591 : vec2<f32> = u_xlat57;
        let x_1593 : vec2<f32> = u_xlat57;
        let x_1595 : vec4<f32> = u_xlat7;
        let x_1597 : vec2<f32> = ((-(x_1591) * x_1593) + vec2<f32>(x_1595.x, x_1595.y));
        let x_1598 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1597.x, x_1597.y, x_1598.z, x_1598.w);
        let x_1600 : vec2<f32> = u_xlat55;
        u_xlat57 = max(x_1600, vec2<f32>(0.0f, 0.0f));
        let x_1603 : vec2<f32> = u_xlat57;
        let x_1605 : vec2<f32> = u_xlat57;
        let x_1607 : vec4<f32> = u_xlat6;
        let x_1609 : vec2<f32> = ((-(x_1603) * x_1605) + vec2<f32>(x_1607.y, x_1607.w));
        let x_1610 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_1609.x, x_1610.y, x_1609.y);
        let x_1612 : vec4<f32> = u_xlat7;
        let x_1614 : vec2<f32> = (vec2<f32>(x_1612.x, x_1612.y) + vec2<f32>(2.0f, 2.0f));
        let x_1615 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1614.x, x_1614.y, x_1615.z, x_1615.w);
        let x_1617 : vec3<f32> = u_xlat31;
        let x_1619 : vec2<f32> = (vec2<f32>(x_1617.x, x_1617.z) + vec2<f32>(2.0f, 2.0f));
        let x_1620 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1620.x, x_1619.x, x_1620.z, x_1619.y);
        let x_1623 : f32 = u_xlat6.y;
        u_xlat9.z = (x_1623 * 0.08163200318813323975f);
        let x_1627 : vec4<f32> = u_xlat6;
        let x_1630 : vec3<f32> = (vec3<f32>(x_1627.z, x_1627.x, x_1627.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1631 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1630.x, x_1630.y, x_1630.z, x_1631.w);
        let x_1633 : vec4<f32> = u_xlat7;
        let x_1636 : vec2<f32> = (vec2<f32>(x_1633.x, x_1633.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1637 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1636.x, x_1636.y, x_1637.z, x_1637.w);
        let x_1640 : f32 = u_xlat10.y;
        u_xlat9.x = x_1640;
        let x_1642 : vec2<f32> = u_xlat55;
        let x_1649 : vec2<f32> = ((vec2<f32>(x_1642.x, x_1642.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1650 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1650.x, x_1649.x, x_1650.z, x_1649.y);
        let x_1652 : vec2<f32> = u_xlat55;
        let x_1656 : vec2<f32> = ((vec2<f32>(x_1652.x, x_1652.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1657 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1656.x, x_1657.y, x_1656.y, x_1657.w);
        let x_1660 : f32 = u_xlat6.x;
        u_xlat7.y = x_1660;
        let x_1663 : f32 = u_xlat8.y;
        u_xlat7.w = x_1663;
        let x_1665 : vec4<f32> = u_xlat7;
        let x_1666 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1665 + x_1666);
        let x_1668 : vec2<f32> = u_xlat55;
        let x_1671 : vec2<f32> = ((vec2<f32>(x_1668.y, x_1668.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1672 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1672.x, x_1671.x, x_1672.z, x_1671.y);
        let x_1674 : vec2<f32> = u_xlat55;
        let x_1677 : vec2<f32> = ((vec2<f32>(x_1674.y, x_1674.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1678 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1677.x, x_1678.y, x_1677.y, x_1678.w);
        let x_1681 : f32 = u_xlat6.y;
        u_xlat8.y = x_1681;
        let x_1683 : vec4<f32> = u_xlat8;
        let x_1684 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1683 + x_1684);
        let x_1686 : vec4<f32> = u_xlat7;
        let x_1687 : vec4<f32> = u_xlat9;
        u_xlat7 = (x_1686 / x_1687);
        let x_1689 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1689 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1695 : vec4<f32> = u_xlat8;
        let x_1696 : vec4<f32> = u_xlat6;
        u_xlat8 = (x_1695 / x_1696);
        let x_1698 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1698 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1700 : vec4<f32> = u_xlat7;
        let x_1703 : vec4<f32> = x_961.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1700.w, x_1700.x, x_1700.y, x_1700.z) * vec4<f32>(x_1703.x, x_1703.x, x_1703.x, x_1703.x));
        let x_1706 : vec4<f32> = u_xlat8;
        let x_1709 : vec4<f32> = x_961.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1706.x, x_1706.w, x_1706.y, x_1706.z) * vec4<f32>(x_1709.y, x_1709.y, x_1709.y, x_1709.y));
        let x_1712 : vec4<f32> = u_xlat7;
        let x_1713 : vec3<f32> = vec3<f32>(x_1712.y, x_1712.z, x_1712.w);
        let x_1714 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1713.x, x_1714.y, x_1713.y, x_1713.z);
        let x_1717 : f32 = u_xlat8.x;
        u_xlat10.y = x_1717;
        let x_1719 : vec4<f32> = u_xlat5;
        let x_1722 : vec4<f32> = x_961.x_MainLightShadowmapSize;
        let x_1725 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1719.x, x_1719.y, x_1719.x, x_1719.y) * vec4<f32>(x_1722.x, x_1722.y, x_1722.x, x_1722.y)) + vec4<f32>(x_1725.x, x_1725.y, x_1725.z, x_1725.y));
        let x_1728 : vec4<f32> = u_xlat5;
        let x_1731 : vec4<f32> = x_961.x_MainLightShadowmapSize;
        let x_1734 : vec4<f32> = u_xlat10;
        u_xlat55 = ((vec2<f32>(x_1728.x, x_1728.y) * vec2<f32>(x_1731.x, x_1731.y)) + vec2<f32>(x_1734.w, x_1734.y));
        let x_1738 : f32 = u_xlat10.y;
        u_xlat7.y = x_1738;
        let x_1741 : f32 = u_xlat8.z;
        u_xlat10.y = x_1741;
        let x_1743 : vec4<f32> = u_xlat5;
        let x_1746 : vec4<f32> = x_961.x_MainLightShadowmapSize;
        let x_1749 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1743.x, x_1743.y, x_1743.x, x_1743.y) * vec4<f32>(x_1746.x, x_1746.y, x_1746.x, x_1746.y)) + vec4<f32>(x_1749.x, x_1749.y, x_1749.z, x_1749.y));
        let x_1752 : vec4<f32> = u_xlat5;
        let x_1755 : vec4<f32> = x_961.x_MainLightShadowmapSize;
        let x_1758 : vec4<f32> = u_xlat10;
        let x_1760 : vec2<f32> = ((vec2<f32>(x_1752.x, x_1752.y) * vec2<f32>(x_1755.x, x_1755.y)) + vec2<f32>(x_1758.w, x_1758.y));
        let x_1761 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1760.x, x_1760.y, x_1761.z, x_1761.w);
        let x_1764 : f32 = u_xlat10.y;
        u_xlat7.z = x_1764;
        let x_1767 : vec4<f32> = u_xlat5;
        let x_1770 : vec4<f32> = x_961.x_MainLightShadowmapSize;
        let x_1773 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1767.x, x_1767.y, x_1767.x, x_1767.y) * vec4<f32>(x_1770.x, x_1770.y, x_1770.x, x_1770.y)) + vec4<f32>(x_1773.x, x_1773.y, x_1773.x, x_1773.z));
        let x_1777 : f32 = u_xlat8.w;
        u_xlat10.y = x_1777;
        let x_1780 : vec4<f32> = u_xlat5;
        let x_1783 : vec4<f32> = x_961.x_MainLightShadowmapSize;
        let x_1786 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1780.x, x_1780.y, x_1780.x, x_1780.y) * vec4<f32>(x_1783.x, x_1783.y, x_1783.x, x_1783.y)) + vec4<f32>(x_1786.x, x_1786.y, x_1786.z, x_1786.y));
        let x_1790 : vec4<f32> = u_xlat5;
        let x_1793 : vec4<f32> = x_961.x_MainLightShadowmapSize;
        let x_1796 : vec4<f32> = u_xlat10;
        u_xlat32 = ((vec2<f32>(x_1790.x, x_1790.y) * vec2<f32>(x_1793.x, x_1793.y)) + vec2<f32>(x_1796.w, x_1796.y));
        let x_1800 : f32 = u_xlat10.y;
        u_xlat7.w = x_1800;
        let x_1803 : vec4<f32> = u_xlat5;
        let x_1806 : vec4<f32> = x_961.x_MainLightShadowmapSize;
        let x_1809 : vec4<f32> = u_xlat7;
        u_xlat63 = ((vec2<f32>(x_1803.x, x_1803.y) * vec2<f32>(x_1806.x, x_1806.y)) + vec2<f32>(x_1809.x, x_1809.w));
        let x_1812 : vec4<f32> = u_xlat10;
        let x_1813 : vec3<f32> = vec3<f32>(x_1812.x, x_1812.z, x_1812.w);
        let x_1814 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1813.x, x_1814.y, x_1813.y, x_1813.z);
        let x_1816 : vec4<f32> = u_xlat5;
        let x_1819 : vec4<f32> = x_961.x_MainLightShadowmapSize;
        let x_1822 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1816.x, x_1816.y, x_1816.x, x_1816.y) * vec4<f32>(x_1819.x, x_1819.y, x_1819.x, x_1819.y)) + vec4<f32>(x_1822.x, x_1822.y, x_1822.z, x_1822.y));
        let x_1826 : vec4<f32> = u_xlat5;
        let x_1829 : vec4<f32> = x_961.x_MainLightShadowmapSize;
        let x_1832 : vec4<f32> = u_xlat8;
        u_xlat58 = ((vec2<f32>(x_1826.x, x_1826.y) * vec2<f32>(x_1829.x, x_1829.y)) + vec2<f32>(x_1832.w, x_1832.y));
        let x_1836 : f32 = u_xlat7.x;
        u_xlat8.x = x_1836;
        let x_1838 : vec4<f32> = u_xlat5;
        let x_1841 : vec4<f32> = x_961.x_MainLightShadowmapSize;
        let x_1844 : vec4<f32> = u_xlat8;
        let x_1846 : vec2<f32> = ((vec2<f32>(x_1838.x, x_1838.y) * vec2<f32>(x_1841.x, x_1841.y)) + vec2<f32>(x_1844.x, x_1844.y));
        let x_1847 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1846.x, x_1846.y, x_1847.z, x_1847.w);
        let x_1850 : vec4<f32> = u_xlat6;
        let x_1852 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1850.x, x_1850.x, x_1850.x, x_1850.x) * x_1852);
        let x_1855 : vec4<f32> = u_xlat6;
        let x_1857 : vec4<f32> = u_xlat9;
        u_xlat17 = (vec4<f32>(x_1855.y, x_1855.y, x_1855.y, x_1855.y) * x_1857);
        let x_1860 : vec4<f32> = u_xlat6;
        let x_1862 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1860.z, x_1860.z, x_1860.z, x_1860.z) * x_1862);
        let x_1864 : vec4<f32> = u_xlat6;
        let x_1866 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_1864.w, x_1864.w, x_1864.w, x_1864.w) * x_1866);
        let x_1869 : vec4<f32> = u_xlat11;
        let x_1870 : vec2<f32> = vec2<f32>(x_1869.x, x_1869.y);
        let x_1872 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1870.x, x_1870.y, x_1872);
        let x_1879 : vec3<f32> = txVec13;
        let x_1881 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1879.xy, x_1879.z);
        u_xlat7.x = x_1881;
        let x_1884 : vec4<f32> = u_xlat11;
        let x_1885 : vec2<f32> = vec2<f32>(x_1884.z, x_1884.w);
        let x_1887 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1885.x, x_1885.y, x_1887);
        let x_1895 : vec3<f32> = txVec14;
        let x_1897 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1895.xy, x_1895.z);
        u_xlat82 = x_1897;
        let x_1898 : f32 = u_xlat82;
        let x_1900 : f32 = u_xlat16.y;
        u_xlat82 = (x_1898 * x_1900);
        let x_1903 : f32 = u_xlat16.x;
        let x_1905 : f32 = u_xlat7.x;
        let x_1907 : f32 = u_xlat82;
        u_xlat7.x = ((x_1903 * x_1905) + x_1907);
        let x_1911 : vec2<f32> = u_xlat55;
        let x_1913 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1911.x, x_1911.y, x_1913);
        let x_1920 : vec3<f32> = txVec15;
        let x_1922 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1920.xy, x_1920.z);
        u_xlat55.x = x_1922;
        let x_1925 : f32 = u_xlat16.z;
        let x_1927 : f32 = u_xlat55.x;
        let x_1930 : f32 = u_xlat7.x;
        u_xlat55.x = ((x_1925 * x_1927) + x_1930);
        let x_1934 : vec4<f32> = u_xlat14;
        let x_1935 : vec2<f32> = vec2<f32>(x_1934.x, x_1934.y);
        let x_1937 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1935.x, x_1935.y, x_1937);
        let x_1945 : vec3<f32> = txVec16;
        let x_1947 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1945.xy, x_1945.z);
        u_xlat80 = x_1947;
        let x_1949 : f32 = u_xlat16.w;
        let x_1950 : f32 = u_xlat80;
        let x_1953 : f32 = u_xlat55.x;
        u_xlat55.x = ((x_1949 * x_1950) + x_1953);
        let x_1957 : vec4<f32> = u_xlat12;
        let x_1958 : vec2<f32> = vec2<f32>(x_1957.x, x_1957.y);
        let x_1960 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1958.x, x_1958.y, x_1960);
        let x_1967 : vec3<f32> = txVec17;
        let x_1969 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1967.xy, x_1967.z);
        u_xlat80 = x_1969;
        let x_1971 : f32 = u_xlat17.x;
        let x_1972 : f32 = u_xlat80;
        let x_1975 : f32 = u_xlat55.x;
        u_xlat55.x = ((x_1971 * x_1972) + x_1975);
        let x_1979 : vec4<f32> = u_xlat12;
        let x_1980 : vec2<f32> = vec2<f32>(x_1979.z, x_1979.w);
        let x_1982 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1980.x, x_1980.y, x_1982);
        let x_1989 : vec3<f32> = txVec18;
        let x_1991 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1989.xy, x_1989.z);
        u_xlat80 = x_1991;
        let x_1993 : f32 = u_xlat17.y;
        let x_1994 : f32 = u_xlat80;
        let x_1997 : f32 = u_xlat55.x;
        u_xlat55.x = ((x_1993 * x_1994) + x_1997);
        let x_2001 : vec4<f32> = u_xlat13;
        let x_2002 : vec2<f32> = vec2<f32>(x_2001.x, x_2001.y);
        let x_2004 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_2002.x, x_2002.y, x_2004);
        let x_2011 : vec3<f32> = txVec19;
        let x_2013 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2011.xy, x_2011.z);
        u_xlat80 = x_2013;
        let x_2015 : f32 = u_xlat17.z;
        let x_2016 : f32 = u_xlat80;
        let x_2019 : f32 = u_xlat55.x;
        u_xlat55.x = ((x_2015 * x_2016) + x_2019);
        let x_2023 : vec4<f32> = u_xlat14;
        let x_2024 : vec2<f32> = vec2<f32>(x_2023.z, x_2023.w);
        let x_2026 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_2024.x, x_2024.y, x_2026);
        let x_2033 : vec3<f32> = txVec20;
        let x_2035 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2033.xy, x_2033.z);
        u_xlat80 = x_2035;
        let x_2037 : f32 = u_xlat17.w;
        let x_2038 : f32 = u_xlat80;
        let x_2041 : f32 = u_xlat55.x;
        u_xlat55.x = ((x_2037 * x_2038) + x_2041);
        let x_2045 : vec4<f32> = u_xlat15;
        let x_2046 : vec2<f32> = vec2<f32>(x_2045.x, x_2045.y);
        let x_2048 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_2046.x, x_2046.y, x_2048);
        let x_2055 : vec3<f32> = txVec21;
        let x_2057 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2055.xy, x_2055.z);
        u_xlat80 = x_2057;
        let x_2059 : f32 = u_xlat18.x;
        let x_2060 : f32 = u_xlat80;
        let x_2063 : f32 = u_xlat55.x;
        u_xlat55.x = ((x_2059 * x_2060) + x_2063);
        let x_2067 : vec4<f32> = u_xlat15;
        let x_2068 : vec2<f32> = vec2<f32>(x_2067.z, x_2067.w);
        let x_2070 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_2068.x, x_2068.y, x_2070);
        let x_2077 : vec3<f32> = txVec22;
        let x_2079 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2077.xy, x_2077.z);
        u_xlat80 = x_2079;
        let x_2081 : f32 = u_xlat18.y;
        let x_2082 : f32 = u_xlat80;
        let x_2085 : f32 = u_xlat55.x;
        u_xlat55.x = ((x_2081 * x_2082) + x_2085);
        let x_2089 : vec2<f32> = u_xlat32;
        let x_2091 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_2089.x, x_2089.y, x_2091);
        let x_2098 : vec3<f32> = txVec23;
        let x_2100 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2098.xy, x_2098.z);
        u_xlat80 = x_2100;
        let x_2102 : f32 = u_xlat18.z;
        let x_2103 : f32 = u_xlat80;
        let x_2106 : f32 = u_xlat55.x;
        u_xlat55.x = ((x_2102 * x_2103) + x_2106);
        let x_2110 : vec2<f32> = u_xlat63;
        let x_2112 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_2110.x, x_2110.y, x_2112);
        let x_2119 : vec3<f32> = txVec24;
        let x_2121 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2119.xy, x_2119.z);
        u_xlat80 = x_2121;
        let x_2123 : f32 = u_xlat18.w;
        let x_2124 : f32 = u_xlat80;
        let x_2127 : f32 = u_xlat55.x;
        u_xlat55.x = ((x_2123 * x_2124) + x_2127);
        let x_2131 : vec4<f32> = u_xlat10;
        let x_2132 : vec2<f32> = vec2<f32>(x_2131.x, x_2131.y);
        let x_2134 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_2132.x, x_2132.y, x_2134);
        let x_2141 : vec3<f32> = txVec25;
        let x_2143 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2141.xy, x_2141.z);
        u_xlat80 = x_2143;
        let x_2145 : f32 = u_xlat6.x;
        let x_2146 : f32 = u_xlat80;
        let x_2149 : f32 = u_xlat55.x;
        u_xlat55.x = ((x_2145 * x_2146) + x_2149);
        let x_2153 : vec4<f32> = u_xlat10;
        let x_2154 : vec2<f32> = vec2<f32>(x_2153.z, x_2153.w);
        let x_2156 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_2154.x, x_2154.y, x_2156);
        let x_2163 : vec3<f32> = txVec26;
        let x_2165 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2163.xy, x_2163.z);
        u_xlat80 = x_2165;
        let x_2167 : f32 = u_xlat6.y;
        let x_2168 : f32 = u_xlat80;
        let x_2171 : f32 = u_xlat55.x;
        u_xlat55.x = ((x_2167 * x_2168) + x_2171);
        let x_2175 : vec2<f32> = u_xlat58;
        let x_2177 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_2175.x, x_2175.y, x_2177);
        let x_2184 : vec3<f32> = txVec27;
        let x_2186 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2184.xy, x_2184.z);
        u_xlat80 = x_2186;
        let x_2188 : f32 = u_xlat6.z;
        let x_2189 : f32 = u_xlat80;
        let x_2192 : f32 = u_xlat55.x;
        u_xlat55.x = ((x_2188 * x_2189) + x_2192);
        let x_2196 : vec4<f32> = u_xlat5;
        let x_2197 : vec2<f32> = vec2<f32>(x_2196.x, x_2196.y);
        let x_2199 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_2197.x, x_2197.y, x_2199);
        let x_2206 : vec3<f32> = txVec28;
        let x_2208 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2206.xy, x_2206.z);
        u_xlat5.x = x_2208;
        let x_2211 : f32 = u_xlat6.w;
        let x_2213 : f32 = u_xlat5.x;
        let x_2216 : f32 = u_xlat55.x;
        u_xlat79 = ((x_2211 * x_2213) + x_2216);
      }
    }
  } else {
    let x_2220 : vec4<f32> = vs_TEXCOORD8;
    let x_2221 : vec2<f32> = vec2<f32>(x_2220.x, x_2220.y);
    let x_2223 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_2221.x, x_2221.y, x_2223);
    let x_2230 : vec3<f32> = txVec29;
    let x_2232 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2230.xy, x_2230.z);
    u_xlat79 = x_2232;
  }
  let x_2234 : f32 = x_961.x_MainLightShadowParams.x;
  u_xlat5.x = (-(x_2234) + 1.0f);
  let x_2238 : f32 = u_xlat79;
  let x_2240 : f32 = x_961.x_MainLightShadowParams.x;
  let x_2243 : f32 = u_xlat5.x;
  u_xlat79 = ((x_2238 * x_2240) + x_2243);
  let x_2246 : f32 = vs_TEXCOORD8.z;
  u_xlatb5 = (0.0f >= x_2246);
  let x_2250 : f32 = vs_TEXCOORD8.z;
  u_xlatb30 = (x_2250 >= 1.0f);
  let x_2252 : bool = u_xlatb30;
  let x_2253 : bool = u_xlatb5;
  u_xlatb5 = (x_2252 | x_2253);
  let x_2255 : bool = u_xlatb5;
  let x_2256 : f32 = u_xlat79;
  u_xlat79 = select(x_2256, 1.0f, x_2255);
  let x_2260 : vec3<f32> = vs_TEXCOORD7;
  let x_2263 : vec3<f32> = x_110.x_WorldSpaceCameraPos;
  let x_2265 : vec3<f32> = (x_2260 + -(x_2263));
  let x_2266 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2265.x, x_2265.y, x_2265.z, x_2266.w);
  let x_2268 : vec4<f32> = u_xlat5;
  let x_2270 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_2268.x, x_2268.y, x_2268.z), vec3<f32>(x_2270.x, x_2270.y, x_2270.z));
  let x_2275 : f32 = u_xlat5.x;
  let x_2277 : f32 = x_961.x_MainLightShadowParams.z;
  let x_2280 : f32 = x_961.x_MainLightShadowParams.w;
  u_xlat30.x = ((x_2275 * x_2277) + x_2280);
  let x_2284 : f32 = u_xlat30.x;
  u_xlat30.x = clamp(x_2284, 0.0f, 1.0f);
  let x_2287 : f32 = u_xlat79;
  u_xlat55.x = (-(x_2287) + 1.0f);
  let x_2292 : f32 = u_xlat30.x;
  let x_2294 : f32 = u_xlat55.x;
  let x_2296 : f32 = u_xlat79;
  u_xlat79 = ((x_2292 * x_2294) + x_2296);
  let x_2299 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_2299;
  let x_2302 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_2302;
  let x_2305 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_2305;
  let x_2307 : vec4<f32> = u_xlat6;
  let x_2310 : vec4<f32> = u_xlat1;
  u_xlat30.x = dot(-(vec3<f32>(x_2307.x, x_2307.y, x_2307.z)), vec3<f32>(x_2310.x, x_2310.y, x_2310.z));
  let x_2315 : f32 = u_xlat30.x;
  let x_2317 : f32 = u_xlat30.x;
  u_xlat30.x = (x_2315 + x_2317);
  let x_2320 : vec4<f32> = u_xlat1;
  let x_2322 : vec3<f32> = u_xlat30;
  let x_2326 : vec4<f32> = u_xlat6;
  u_xlat30 = ((vec3<f32>(x_2320.x, x_2320.y, x_2320.z) * -(vec3<f32>(x_2322.x, x_2322.x, x_2322.x))) + -(vec3<f32>(x_2326.x, x_2326.y, x_2326.z)));
  let x_2331 : vec4<f32> = u_xlat1;
  let x_2333 : vec4<f32> = u_xlat6;
  u_xlat81 = dot(vec3<f32>(x_2331.x, x_2331.y, x_2331.z), vec3<f32>(x_2333.x, x_2333.y, x_2333.z));
  let x_2336 : f32 = u_xlat81;
  u_xlat81 = clamp(x_2336, 0.0f, 1.0f);
  let x_2338 : f32 = u_xlat81;
  u_xlat81 = (-(x_2338) + 1.0f);
  let x_2341 : f32 = u_xlat81;
  let x_2342 : f32 = u_xlat81;
  u_xlat81 = (x_2341 * x_2342);
  let x_2344 : f32 = u_xlat81;
  let x_2345 : f32 = u_xlat81;
  u_xlat81 = (x_2344 * x_2345);
  let x_2348 : f32 = u_xlat0.x;
  u_xlat7.x = ((-(x_2348) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2356 : f32 = u_xlat0.x;
  let x_2358 : f32 = u_xlat7.x;
  u_xlat0.x = (x_2356 * x_2358);
  let x_2362 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2362 * 6.0f);
  let x_2374 : vec3<f32> = u_xlat30;
  let x_2376 : f32 = u_xlat0.x;
  let x_2377 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_2374, x_2376);
  u_xlat7 = x_2377;
  let x_2379 : f32 = u_xlat7.w;
  u_xlat0.x = (x_2379 + -1.0f);
  let x_2383 : f32 = x_825.unity_SpecCube0_HDR.w;
  let x_2385 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2383 * x_2385) + 1.0f);
  let x_2390 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2390, 0.0f);
  let x_2394 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2394);
  let x_2398 : f32 = u_xlat0.x;
  let x_2400 : f32 = x_825.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2398 * x_2400);
  let x_2404 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2404);
  let x_2408 : f32 = u_xlat0.x;
  let x_2410 : f32 = x_825.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2408 * x_2410);
  let x_2413 : vec4<f32> = u_xlat7;
  let x_2415 : vec3<f32> = u_xlat0;
  u_xlat30 = (vec3<f32>(x_2413.x, x_2413.y, x_2413.z) * vec3<f32>(x_2415.x, x_2415.x, x_2415.x));
  let x_2418 : f32 = u_xlat50;
  let x_2420 : f32 = u_xlat50;
  let x_2424 : vec2<f32> = ((vec2<f32>(x_2418, x_2418) * vec2<f32>(x_2420, x_2420)) + vec2<f32>(-1.0f, 1.0f));
  let x_2425 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2424.x, x_2425.y, x_2424.y);
  let x_2428 : f32 = u_xlat0.z;
  u_xlat50 = (1.0f / x_2428);
  let x_2430 : vec4<f32> = u_xlat4;
  let x_2433 : f32 = u_xlat77;
  let x_2435 : vec3<f32> = (-(vec3<f32>(x_2430.x, x_2430.y, x_2430.z)) + vec3<f32>(x_2433, x_2433, x_2433));
  let x_2436 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2435.x, x_2435.y, x_2435.z, x_2436.w);
  let x_2438 : f32 = u_xlat81;
  let x_2440 : vec4<f32> = u_xlat7;
  let x_2443 : vec4<f32> = u_xlat4;
  let x_2445 : vec3<f32> = ((vec3<f32>(x_2438, x_2438, x_2438) * vec3<f32>(x_2440.x, x_2440.y, x_2440.z)) + vec3<f32>(x_2443.x, x_2443.y, x_2443.z));
  let x_2446 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2445.x, x_2445.y, x_2445.z, x_2446.w);
  let x_2448 : f32 = u_xlat50;
  let x_2450 : vec4<f32> = u_xlat7;
  let x_2452 : vec3<f32> = (vec3<f32>(x_2448, x_2448, x_2448) * vec3<f32>(x_2450.x, x_2450.y, x_2450.z));
  let x_2453 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2452.x, x_2452.y, x_2452.z, x_2453.w);
  let x_2455 : vec3<f32> = u_xlat30;
  let x_2456 : vec4<f32> = u_xlat7;
  u_xlat30 = (x_2455 * vec3<f32>(x_2456.x, x_2456.y, x_2456.z));
  let x_2459 : vec3<f32> = u_xlat2;
  let x_2460 : vec4<f32> = u_xlat3;
  let x_2463 : vec3<f32> = u_xlat30;
  u_xlat2 = ((x_2459 * vec3<f32>(x_2460.x, x_2460.y, x_2460.z)) + x_2463);
  let x_2465 : f32 = u_xlat79;
  let x_2467 : f32 = x_825.unity_LightData.z;
  u_xlat50 = (x_2465 * x_2467);
  let x_2469 : vec4<f32> = u_xlat1;
  let x_2472 : vec4<f32> = x_110.x_MainLightPosition;
  u_xlat77 = dot(vec3<f32>(x_2469.x, x_2469.y, x_2469.z), vec3<f32>(x_2472.x, x_2472.y, x_2472.z));
  let x_2475 : f32 = u_xlat77;
  u_xlat77 = clamp(x_2475, 0.0f, 1.0f);
  let x_2477 : f32 = u_xlat50;
  let x_2478 : f32 = u_xlat77;
  u_xlat50 = (x_2477 * x_2478);
  let x_2480 : f32 = u_xlat50;
  let x_2483 : vec4<f32> = x_110.x_MainLightColor;
  u_xlat30 = (vec3<f32>(x_2480, x_2480, x_2480) * vec3<f32>(x_2483.x, x_2483.y, x_2483.z));
  let x_2486 : vec4<f32> = u_xlat6;
  let x_2489 : vec4<f32> = x_110.x_MainLightPosition;
  let x_2491 : vec3<f32> = (vec3<f32>(x_2486.x, x_2486.y, x_2486.z) + vec3<f32>(x_2489.x, x_2489.y, x_2489.z));
  let x_2492 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2491.x, x_2491.y, x_2491.z, x_2492.w);
  let x_2494 : vec4<f32> = u_xlat7;
  let x_2496 : vec4<f32> = u_xlat7;
  u_xlat50 = dot(vec3<f32>(x_2494.x, x_2494.y, x_2494.z), vec3<f32>(x_2496.x, x_2496.y, x_2496.z));
  let x_2499 : f32 = u_xlat50;
  u_xlat50 = max(x_2499, 1.17549435e-38f);
  let x_2502 : f32 = u_xlat50;
  u_xlat50 = inverseSqrt(x_2502);
  let x_2504 : f32 = u_xlat50;
  let x_2506 : vec4<f32> = u_xlat7;
  let x_2508 : vec3<f32> = (vec3<f32>(x_2504, x_2504, x_2504) * vec3<f32>(x_2506.x, x_2506.y, x_2506.z));
  let x_2509 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2508.x, x_2508.y, x_2508.z, x_2509.w);
  let x_2511 : vec4<f32> = u_xlat1;
  let x_2513 : vec4<f32> = u_xlat7;
  u_xlat50 = dot(vec3<f32>(x_2511.x, x_2511.y, x_2511.z), vec3<f32>(x_2513.x, x_2513.y, x_2513.z));
  let x_2516 : f32 = u_xlat50;
  u_xlat50 = clamp(x_2516, 0.0f, 1.0f);
  let x_2519 : vec4<f32> = x_110.x_MainLightPosition;
  let x_2521 : vec4<f32> = u_xlat7;
  u_xlat77 = dot(vec3<f32>(x_2519.x, x_2519.y, x_2519.z), vec3<f32>(x_2521.x, x_2521.y, x_2521.z));
  let x_2524 : f32 = u_xlat77;
  u_xlat77 = clamp(x_2524, 0.0f, 1.0f);
  let x_2526 : f32 = u_xlat50;
  let x_2527 : f32 = u_xlat50;
  u_xlat50 = (x_2526 * x_2527);
  let x_2529 : f32 = u_xlat50;
  let x_2531 : f32 = u_xlat0.x;
  u_xlat50 = ((x_2529 * x_2531) + 1.00001001358032226562f);
  let x_2535 : f32 = u_xlat77;
  let x_2536 : f32 = u_xlat77;
  u_xlat77 = (x_2535 * x_2536);
  let x_2538 : f32 = u_xlat50;
  let x_2539 : f32 = u_xlat50;
  u_xlat50 = (x_2538 * x_2539);
  let x_2541 : f32 = u_xlat77;
  u_xlat77 = max(x_2541, 0.10000000149011611938f);
  let x_2544 : f32 = u_xlat50;
  let x_2545 : f32 = u_xlat77;
  u_xlat50 = (x_2544 * x_2545);
  let x_2547 : f32 = u_xlat78;
  let x_2548 : f32 = u_xlat50;
  u_xlat50 = (x_2547 * x_2548);
  let x_2550 : f32 = u_xlat76;
  let x_2551 : f32 = u_xlat50;
  u_xlat50 = (x_2550 / x_2551);
  let x_2553 : vec4<f32> = u_xlat4;
  let x_2555 : f32 = u_xlat50;
  let x_2558 : vec4<f32> = u_xlat3;
  let x_2560 : vec3<f32> = ((vec3<f32>(x_2553.x, x_2553.y, x_2553.z) * vec3<f32>(x_2555, x_2555, x_2555)) + vec3<f32>(x_2558.x, x_2558.y, x_2558.z));
  let x_2561 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2560.x, x_2560.y, x_2560.z, x_2561.w);
  let x_2563 : vec3<f32> = u_xlat30;
  let x_2564 : vec4<f32> = u_xlat7;
  u_xlat30 = (x_2563 * vec3<f32>(x_2564.x, x_2564.y, x_2564.z));
  let x_2568 : f32 = x_110.x_AdditionalLightsCount.x;
  let x_2570 : f32 = x_825.unity_LightData.y;
  u_xlat50 = min(x_2568, x_2570);
  let x_2574 : f32 = u_xlat50;
  u_xlatu50 = bitcast<u32>(i32(x_2574));
  let x_2578 : f32 = u_xlat5.x;
  let x_2580 : f32 = x_961.x_AdditionalShadowFadeParams.x;
  let x_2583 : f32 = x_961.x_AdditionalShadowFadeParams.y;
  u_xlat77 = ((x_2578 * x_2580) + x_2583);
  let x_2585 : f32 = u_xlat77;
  u_xlat77 = clamp(x_2585, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2597 : u32 = u_xlatu_loop_1;
    let x_2598 : u32 = u_xlatu50;
    if ((x_2597 < x_2598)) {
    } else {
      break;
    }
    let x_2601 : u32 = u_xlatu_loop_1;
    u_xlatu5 = (x_2601 >> 2u);
    let x_2605 : u32 = u_xlatu_loop_1;
    u_xlati81 = bitcast<i32>((x_2605 & 3u));
    let x_2608 : u32 = u_xlatu5;
    let x_2611 : vec4<f32> = x_825.unity_LightIndices[bitcast<i32>(x_2608)];
    let x_2621 : i32 = u_xlati81;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2626 : vec4<u32> = indexable[x_2621];
    u_xlat5.x = dot(x_2611, bitcast<vec4<f32>>(x_2626));
    let x_2632 : f32 = u_xlat5.x;
    u_xlati5 = i32(x_2632);
    let x_2634 : vec3<f32> = vs_TEXCOORD7;
    let x_2645 : i32 = u_xlati5;
    let x_2647 : vec4<f32> = x_2644.x_AdditionalLightsPosition[x_2645];
    let x_2650 : i32 = u_xlati5;
    let x_2652 : vec4<f32> = x_2644.x_AdditionalLightsPosition[x_2650];
    let x_2654 : vec3<f32> = ((-(x_2634) * vec3<f32>(x_2647.w, x_2647.w, x_2647.w)) + vec3<f32>(x_2652.x, x_2652.y, x_2652.z));
    let x_2655 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2654.x, x_2654.y, x_2654.z, x_2655.w);
    let x_2657 : vec4<f32> = u_xlat8;
    let x_2659 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_2657.x, x_2657.y, x_2657.z), vec3<f32>(x_2659.x, x_2659.y, x_2659.z));
    let x_2662 : f32 = u_xlat81;
    u_xlat81 = max(x_2662, 0.00006103515625f);
    let x_2664 : f32 = u_xlat81;
    u_xlat82 = inverseSqrt(x_2664);
    let x_2666 : f32 = u_xlat82;
    let x_2668 : vec4<f32> = u_xlat8;
    let x_2670 : vec3<f32> = (vec3<f32>(x_2666, x_2666, x_2666) * vec3<f32>(x_2668.x, x_2668.y, x_2668.z));
    let x_2671 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2670.x, x_2670.y, x_2670.z, x_2671.w);
    let x_2674 : f32 = u_xlat81;
    u_xlat83 = (1.0f / x_2674);
    let x_2676 : f32 = u_xlat81;
    let x_2677 : i32 = u_xlati5;
    let x_2679 : f32 = x_2644.x_AdditionalLightsAttenuation[x_2677].x;
    u_xlat81 = (x_2676 * x_2679);
    let x_2681 : f32 = u_xlat81;
    let x_2683 : f32 = u_xlat81;
    u_xlat81 = ((-(x_2681) * x_2683) + 1.0f);
    let x_2686 : f32 = u_xlat81;
    u_xlat81 = max(x_2686, 0.0f);
    let x_2688 : f32 = u_xlat81;
    let x_2689 : f32 = u_xlat81;
    u_xlat81 = (x_2688 * x_2689);
    let x_2691 : f32 = u_xlat81;
    let x_2692 : f32 = u_xlat83;
    u_xlat81 = (x_2691 * x_2692);
    let x_2694 : i32 = u_xlati5;
    let x_2696 : vec4<f32> = x_2644.x_AdditionalLightsSpotDir[x_2694];
    let x_2698 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_2696.x, x_2696.y, x_2696.z), vec3<f32>(x_2698.x, x_2698.y, x_2698.z));
    let x_2701 : f32 = u_xlat83;
    let x_2702 : i32 = u_xlati5;
    let x_2704 : f32 = x_2644.x_AdditionalLightsAttenuation[x_2702].z;
    let x_2706 : i32 = u_xlati5;
    let x_2708 : f32 = x_2644.x_AdditionalLightsAttenuation[x_2706].w;
    u_xlat83 = ((x_2701 * x_2704) + x_2708);
    let x_2710 : f32 = u_xlat83;
    u_xlat83 = clamp(x_2710, 0.0f, 1.0f);
    let x_2712 : f32 = u_xlat83;
    let x_2713 : f32 = u_xlat83;
    u_xlat83 = (x_2712 * x_2713);
    let x_2715 : f32 = u_xlat81;
    let x_2716 : f32 = u_xlat83;
    u_xlat81 = (x_2715 * x_2716);
    let x_2719 : i32 = u_xlati5;
    let x_2721 : f32 = x_961.x_AdditionalShadowParams[x_2719].w;
    u_xlati83 = i32(x_2721);
    let x_2724 : i32 = u_xlati83;
    u_xlatb84 = (x_2724 >= 0i);
    let x_2726 : bool = u_xlatb84;
    if (x_2726) {
      let x_2730 : i32 = u_xlati5;
      let x_2732 : f32 = x_961.x_AdditionalShadowParams[x_2730].z;
      u_xlatb84 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2732, x_2732, x_2732, x_2732))));
      let x_2736 : bool = u_xlatb84;
      if (x_2736) {
        let x_2741 : vec4<f32> = u_xlat9;
        let x_2744 : vec4<f32> = u_xlat9;
        let x_2747 : vec4<bool> = (abs(vec4<f32>(x_2741.z, x_2741.z, x_2741.y, x_2741.z)) >= abs(vec4<f32>(x_2744.x, x_2744.y, x_2744.x, x_2744.x)));
        let x_2749 : vec3<bool> = vec3<bool>(x_2747.x, x_2747.y, x_2747.z);
        let x_2750 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_2749.x, x_2749.y, x_2749.z, x_2750.w);
        let x_2753 : bool = u_xlatb10.y;
        let x_2755 : bool = u_xlatb10.x;
        u_xlatb84 = (x_2753 & x_2755);
        let x_2757 : vec4<f32> = u_xlat9;
        let x_2760 : vec4<bool> = (-(vec4<f32>(x_2757.z, x_2757.y, x_2757.z, x_2757.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2761 : vec3<bool> = vec3<bool>(x_2760.x, x_2760.y, x_2760.w);
        let x_2762 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_2761.x, x_2761.y, x_2762.z, x_2761.z);
        let x_2765 : bool = u_xlatb10.x;
        u_xlat10.x = select(4.0f, 5.0f, x_2765);
        let x_2770 : bool = u_xlatb10.y;
        u_xlat10.y = select(2.0f, 3.0f, x_2770);
        let x_2776 : bool = u_xlatb10.w;
        u_xlat85 = select(0.0f, 1.0f, x_2776);
        let x_2780 : bool = u_xlatb10.z;
        if (x_2780) {
          let x_2786 : f32 = u_xlat10.y;
          x_2782 = x_2786;
        } else {
          let x_2788 : f32 = u_xlat85;
          x_2782 = x_2788;
        }
        let x_2789 : f32 = x_2782;
        u_xlat35 = x_2789;
        let x_2791 : bool = u_xlatb84;
        if (x_2791) {
          let x_2796 : f32 = u_xlat10.x;
          x_2792 = x_2796;
        } else {
          let x_2798 : f32 = u_xlat35;
          x_2792 = x_2798;
        }
        let x_2799 : f32 = x_2792;
        u_xlat84 = x_2799;
        let x_2800 : i32 = u_xlati5;
        let x_2802 : f32 = x_961.x_AdditionalShadowParams[x_2800].w;
        u_xlat10.x = trunc(x_2802);
        let x_2805 : f32 = u_xlat84;
        let x_2807 : f32 = u_xlat10.x;
        u_xlat84 = (x_2805 + x_2807);
        let x_2809 : f32 = u_xlat84;
        u_xlati83 = i32(x_2809);
      }
      let x_2811 : i32 = u_xlati83;
      u_xlati83 = (x_2811 << bitcast<u32>(2i));
      let x_2813 : vec3<f32> = vs_TEXCOORD7;
      let x_2815 : i32 = u_xlati83;
      let x_2818 : i32 = u_xlati83;
      let x_2822 : vec4<f32> = x_961.x_AdditionalLightsWorldToShadow[((x_2815 + 1i) / 4i)][((x_2818 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_2813.y, x_2813.y, x_2813.y, x_2813.y) * x_2822);
      let x_2824 : i32 = u_xlati83;
      let x_2826 : i32 = u_xlati83;
      let x_2829 : vec4<f32> = x_961.x_AdditionalLightsWorldToShadow[(x_2824 / 4i)][(x_2826 % 4i)];
      let x_2830 : vec3<f32> = vs_TEXCOORD7;
      let x_2833 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2829 * vec4<f32>(x_2830.x, x_2830.x, x_2830.x, x_2830.x)) + x_2833);
      let x_2835 : i32 = u_xlati83;
      let x_2838 : i32 = u_xlati83;
      let x_2842 : vec4<f32> = x_961.x_AdditionalLightsWorldToShadow[((x_2835 + 2i) / 4i)][((x_2838 + 2i) % 4i)];
      let x_2843 : vec3<f32> = vs_TEXCOORD7;
      let x_2846 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2842 * vec4<f32>(x_2843.z, x_2843.z, x_2843.z, x_2843.z)) + x_2846);
      let x_2848 : vec4<f32> = u_xlat10;
      let x_2849 : i32 = u_xlati83;
      let x_2852 : i32 = u_xlati83;
      let x_2856 : vec4<f32> = x_961.x_AdditionalLightsWorldToShadow[((x_2849 + 3i) / 4i)][((x_2852 + 3i) % 4i)];
      u_xlat10 = (x_2848 + x_2856);
      let x_2858 : vec4<f32> = u_xlat10;
      let x_2860 : vec4<f32> = u_xlat10;
      let x_2862 : vec3<f32> = (vec3<f32>(x_2858.x, x_2858.y, x_2858.z) / vec3<f32>(x_2860.w, x_2860.w, x_2860.w));
      let x_2863 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2862.x, x_2862.y, x_2862.z, x_2863.w);
      let x_2866 : i32 = u_xlati5;
      let x_2868 : f32 = x_961.x_AdditionalShadowParams[x_2866].y;
      u_xlatb83 = (0.0f < x_2868);
      let x_2870 : bool = u_xlatb83;
      if (x_2870) {
        let x_2873 : i32 = u_xlati5;
        let x_2875 : f32 = x_961.x_AdditionalShadowParams[x_2873].y;
        u_xlatb83 = (1.0f == x_2875);
        let x_2877 : bool = u_xlatb83;
        if (x_2877) {
          let x_2880 : vec4<f32> = u_xlat10;
          let x_2883 : vec4<f32> = x_961.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2880.x, x_2880.y, x_2880.x, x_2880.y) + x_2883);
          let x_2886 : vec4<f32> = u_xlat11;
          let x_2887 : vec2<f32> = vec2<f32>(x_2886.x, x_2886.y);
          let x_2889 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2887.x, x_2887.y, x_2889);
          let x_2897 : vec3<f32> = txVec30;
          let x_2899 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2897.xy, x_2897.z);
          u_xlat12.x = x_2899;
          let x_2902 : vec4<f32> = u_xlat11;
          let x_2903 : vec2<f32> = vec2<f32>(x_2902.z, x_2902.w);
          let x_2905 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_2903.x, x_2903.y, x_2905);
          let x_2912 : vec3<f32> = txVec31;
          let x_2914 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2912.xy, x_2912.z);
          u_xlat12.y = x_2914;
          let x_2916 : vec4<f32> = u_xlat10;
          let x_2919 : vec4<f32> = x_961.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_2916.x, x_2916.y, x_2916.x, x_2916.y) + x_2919);
          let x_2922 : vec4<f32> = u_xlat11;
          let x_2923 : vec2<f32> = vec2<f32>(x_2922.x, x_2922.y);
          let x_2925 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_2923.x, x_2923.y, x_2925);
          let x_2932 : vec3<f32> = txVec32;
          let x_2934 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2932.xy, x_2932.z);
          u_xlat12.z = x_2934;
          let x_2937 : vec4<f32> = u_xlat11;
          let x_2938 : vec2<f32> = vec2<f32>(x_2937.z, x_2937.w);
          let x_2940 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_2938.x, x_2938.y, x_2940);
          let x_2947 : vec3<f32> = txVec33;
          let x_2949 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2947.xy, x_2947.z);
          u_xlat12.w = x_2949;
          let x_2951 : vec4<f32> = u_xlat12;
          u_xlat83 = dot(x_2951, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2954 : i32 = u_xlati5;
          let x_2956 : f32 = x_961.x_AdditionalShadowParams[x_2954].y;
          u_xlatb84 = (2.0f == x_2956);
          let x_2958 : bool = u_xlatb84;
          if (x_2958) {
            let x_2961 : vec4<f32> = u_xlat10;
            let x_2964 : vec4<f32> = x_961.x_AdditionalShadowmapSize;
            let x_2967 : vec2<f32> = ((vec2<f32>(x_2961.x, x_2961.y) * vec2<f32>(x_2964.z, x_2964.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2968 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2967.x, x_2967.y, x_2968.z, x_2968.w);
            let x_2970 : vec4<f32> = u_xlat11;
            let x_2972 : vec2<f32> = floor(vec2<f32>(x_2970.x, x_2970.y));
            let x_2973 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2972.x, x_2972.y, x_2973.z, x_2973.w);
            let x_2976 : vec4<f32> = u_xlat10;
            let x_2979 : vec4<f32> = x_961.x_AdditionalShadowmapSize;
            let x_2982 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2976.x, x_2976.y) * vec2<f32>(x_2979.z, x_2979.w)) + -(vec2<f32>(x_2982.x, x_2982.y)));
            let x_2986 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2986.x, x_2986.x, x_2986.y, x_2986.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2989 : vec4<f32> = u_xlat12;
            let x_2991 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2989.x, x_2989.x, x_2989.z, x_2989.z) * vec4<f32>(x_2991.x, x_2991.x, x_2991.z, x_2991.z));
            let x_2994 : vec4<f32> = u_xlat13;
            let x_2996 : vec2<f32> = (vec2<f32>(x_2994.y, x_2994.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2997 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2996.x, x_2997.y, x_2996.y, x_2997.w);
            let x_2999 : vec4<f32> = u_xlat13;
            let x_3002 : vec2<f32> = u_xlat61;
            let x_3004 : vec2<f32> = ((vec2<f32>(x_2999.x, x_2999.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3002));
            let x_3005 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3004.x, x_3004.y, x_3005.z, x_3005.w);
            let x_3007 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_3007) + vec2<f32>(1.0f, 1.0f));
            let x_3010 : vec2<f32> = u_xlat61;
            let x_3011 : vec2<f32> = min(x_3010, vec2<f32>(0.0f, 0.0f));
            let x_3012 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3011.x, x_3011.y, x_3012.z, x_3012.w);
            let x_3014 : vec4<f32> = u_xlat14;
            let x_3017 : vec4<f32> = u_xlat14;
            let x_3020 : vec2<f32> = u_xlat63;
            let x_3021 : vec2<f32> = ((-(vec2<f32>(x_3014.x, x_3014.y)) * vec2<f32>(x_3017.x, x_3017.y)) + x_3020);
            let x_3022 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3021.x, x_3021.y, x_3022.z, x_3022.w);
            let x_3024 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_3024, vec2<f32>(0.0f, 0.0f));
            let x_3026 : vec2<f32> = u_xlat61;
            let x_3028 : vec2<f32> = u_xlat61;
            let x_3030 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_3026) * x_3028) + vec2<f32>(x_3030.y, x_3030.w));
            let x_3033 : vec4<f32> = u_xlat14;
            let x_3035 : vec2<f32> = (vec2<f32>(x_3033.x, x_3033.y) + vec2<f32>(1.0f, 1.0f));
            let x_3036 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3035.x, x_3035.y, x_3036.z, x_3036.w);
            let x_3038 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_3038 + vec2<f32>(1.0f, 1.0f));
            let x_3040 : vec4<f32> = u_xlat13;
            let x_3042 : vec2<f32> = (vec2<f32>(x_3040.x, x_3040.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3043 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3042.x, x_3042.y, x_3043.z, x_3043.w);
            let x_3045 : vec2<f32> = u_xlat63;
            let x_3046 : vec2<f32> = (x_3045 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3047 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3046.x, x_3046.y, x_3047.z, x_3047.w);
            let x_3049 : vec4<f32> = u_xlat14;
            let x_3051 : vec2<f32> = (vec2<f32>(x_3049.x, x_3049.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3052 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3051.x, x_3051.y, x_3052.z, x_3052.w);
            let x_3054 : vec2<f32> = u_xlat61;
            let x_3055 : vec2<f32> = (x_3054 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3056 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3055.x, x_3055.y, x_3056.z, x_3056.w);
            let x_3058 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_3058.y, x_3058.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3062 : f32 = u_xlat14.x;
            u_xlat15.z = x_3062;
            let x_3065 : f32 = u_xlat61.x;
            u_xlat15.w = x_3065;
            let x_3068 : f32 = u_xlat16.x;
            u_xlat13.z = x_3068;
            let x_3071 : f32 = u_xlat12.x;
            u_xlat13.w = x_3071;
            let x_3073 : vec4<f32> = u_xlat13;
            let x_3075 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_3073.z, x_3073.w, x_3073.x, x_3073.z) + vec4<f32>(x_3075.z, x_3075.w, x_3075.x, x_3075.z));
            let x_3079 : f32 = u_xlat15.y;
            u_xlat14.z = x_3079;
            let x_3082 : f32 = u_xlat61.y;
            u_xlat14.w = x_3082;
            let x_3085 : f32 = u_xlat13.y;
            u_xlat16.z = x_3085;
            let x_3088 : f32 = u_xlat12.z;
            u_xlat16.w = x_3088;
            let x_3090 : vec4<f32> = u_xlat14;
            let x_3092 : vec4<f32> = u_xlat16;
            let x_3094 : vec3<f32> = (vec3<f32>(x_3090.z, x_3090.y, x_3090.w) + vec3<f32>(x_3092.z, x_3092.y, x_3092.w));
            let x_3095 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3094.x, x_3094.y, x_3094.z, x_3095.w);
            let x_3097 : vec4<f32> = u_xlat13;
            let x_3099 : vec4<f32> = u_xlat17;
            let x_3101 : vec3<f32> = (vec3<f32>(x_3097.x, x_3097.z, x_3097.w) / vec3<f32>(x_3099.z, x_3099.w, x_3099.y));
            let x_3102 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3101.x, x_3101.y, x_3101.z, x_3102.w);
            let x_3104 : vec4<f32> = u_xlat13;
            let x_3106 : vec3<f32> = (vec3<f32>(x_3104.x, x_3104.y, x_3104.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3107 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3106.x, x_3106.y, x_3106.z, x_3107.w);
            let x_3109 : vec4<f32> = u_xlat16;
            let x_3111 : vec4<f32> = u_xlat12;
            let x_3113 : vec3<f32> = (vec3<f32>(x_3109.z, x_3109.y, x_3109.w) / vec3<f32>(x_3111.x, x_3111.y, x_3111.z));
            let x_3114 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3113.x, x_3113.y, x_3113.z, x_3114.w);
            let x_3116 : vec4<f32> = u_xlat14;
            let x_3118 : vec3<f32> = (vec3<f32>(x_3116.x, x_3116.y, x_3116.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3119 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3118.x, x_3118.y, x_3118.z, x_3119.w);
            let x_3121 : vec4<f32> = u_xlat13;
            let x_3124 : vec4<f32> = x_961.x_AdditionalShadowmapSize;
            let x_3126 : vec3<f32> = (vec3<f32>(x_3121.y, x_3121.x, x_3121.z) * vec3<f32>(x_3124.x, x_3124.x, x_3124.x));
            let x_3127 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3126.x, x_3126.y, x_3126.z, x_3127.w);
            let x_3129 : vec4<f32> = u_xlat14;
            let x_3132 : vec4<f32> = x_961.x_AdditionalShadowmapSize;
            let x_3134 : vec3<f32> = (vec3<f32>(x_3129.x, x_3129.y, x_3129.z) * vec3<f32>(x_3132.y, x_3132.y, x_3132.y));
            let x_3135 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3134.x, x_3134.y, x_3134.z, x_3135.w);
            let x_3138 : f32 = u_xlat14.x;
            u_xlat13.w = x_3138;
            let x_3140 : vec4<f32> = u_xlat11;
            let x_3143 : vec4<f32> = x_961.x_AdditionalShadowmapSize;
            let x_3146 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_3140.x, x_3140.y, x_3140.x, x_3140.y) * vec4<f32>(x_3143.x, x_3143.y, x_3143.x, x_3143.y)) + vec4<f32>(x_3146.y, x_3146.w, x_3146.x, x_3146.w));
            let x_3149 : vec4<f32> = u_xlat11;
            let x_3152 : vec4<f32> = x_961.x_AdditionalShadowmapSize;
            let x_3155 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_3149.x, x_3149.y) * vec2<f32>(x_3152.x, x_3152.y)) + vec2<f32>(x_3155.z, x_3155.w));
            let x_3159 : f32 = u_xlat13.y;
            u_xlat14.w = x_3159;
            let x_3161 : vec4<f32> = u_xlat14;
            let x_3162 : vec2<f32> = vec2<f32>(x_3161.y, x_3161.z);
            let x_3163 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3163.x, x_3162.x, x_3163.z, x_3162.y);
            let x_3165 : vec4<f32> = u_xlat11;
            let x_3168 : vec4<f32> = x_961.x_AdditionalShadowmapSize;
            let x_3171 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_3165.x, x_3165.y, x_3165.x, x_3165.y) * vec4<f32>(x_3168.x, x_3168.y, x_3168.x, x_3168.y)) + vec4<f32>(x_3171.x, x_3171.y, x_3171.z, x_3171.y));
            let x_3174 : vec4<f32> = u_xlat11;
            let x_3177 : vec4<f32> = x_961.x_AdditionalShadowmapSize;
            let x_3180 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3174.x, x_3174.y, x_3174.x, x_3174.y) * vec4<f32>(x_3177.x, x_3177.y, x_3177.x, x_3177.y)) + vec4<f32>(x_3180.w, x_3180.y, x_3180.w, x_3180.z));
            let x_3183 : vec4<f32> = u_xlat11;
            let x_3186 : vec4<f32> = x_961.x_AdditionalShadowmapSize;
            let x_3189 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_3183.x, x_3183.y, x_3183.x, x_3183.y) * vec4<f32>(x_3186.x, x_3186.y, x_3186.x, x_3186.y)) + vec4<f32>(x_3189.x, x_3189.w, x_3189.z, x_3189.w));
            let x_3192 : vec4<f32> = u_xlat12;
            let x_3194 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_3192.x, x_3192.x, x_3192.x, x_3192.y) * vec4<f32>(x_3194.z, x_3194.w, x_3194.y, x_3194.z));
            let x_3198 : vec4<f32> = u_xlat12;
            let x_3200 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_3198.y, x_3198.y, x_3198.z, x_3198.z) * x_3200);
            let x_3203 : f32 = u_xlat12.z;
            let x_3205 : f32 = u_xlat17.y;
            u_xlat84 = (x_3203 * x_3205);
            let x_3208 : vec4<f32> = u_xlat15;
            let x_3209 : vec2<f32> = vec2<f32>(x_3208.x, x_3208.y);
            let x_3211 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_3209.x, x_3209.y, x_3211);
            let x_3218 : vec3<f32> = txVec34;
            let x_3220 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3218.xy, x_3218.z);
            u_xlat85 = x_3220;
            let x_3222 : vec4<f32> = u_xlat15;
            let x_3223 : vec2<f32> = vec2<f32>(x_3222.z, x_3222.w);
            let x_3225 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_3223.x, x_3223.y, x_3225);
            let x_3232 : vec3<f32> = txVec35;
            let x_3234 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3232.xy, x_3232.z);
            u_xlat11.x = x_3234;
            let x_3237 : f32 = u_xlat11.x;
            let x_3239 : f32 = u_xlat18.y;
            u_xlat11.x = (x_3237 * x_3239);
            let x_3243 : f32 = u_xlat18.x;
            let x_3244 : f32 = u_xlat85;
            let x_3247 : f32 = u_xlat11.x;
            u_xlat85 = ((x_3243 * x_3244) + x_3247);
            let x_3250 : vec2<f32> = u_xlat61;
            let x_3252 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_3250.x, x_3250.y, x_3252);
            let x_3259 : vec3<f32> = txVec36;
            let x_3261 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3259.xy, x_3259.z);
            u_xlat11.x = x_3261;
            let x_3264 : f32 = u_xlat18.z;
            let x_3266 : f32 = u_xlat11.x;
            let x_3268 : f32 = u_xlat85;
            u_xlat85 = ((x_3264 * x_3266) + x_3268);
            let x_3271 : vec4<f32> = u_xlat14;
            let x_3272 : vec2<f32> = vec2<f32>(x_3271.x, x_3271.y);
            let x_3274 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_3272.x, x_3272.y, x_3274);
            let x_3281 : vec3<f32> = txVec37;
            let x_3283 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3281.xy, x_3281.z);
            u_xlat11.x = x_3283;
            let x_3286 : f32 = u_xlat18.w;
            let x_3288 : f32 = u_xlat11.x;
            let x_3290 : f32 = u_xlat85;
            u_xlat85 = ((x_3286 * x_3288) + x_3290);
            let x_3293 : vec4<f32> = u_xlat16;
            let x_3294 : vec2<f32> = vec2<f32>(x_3293.x, x_3293.y);
            let x_3296 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_3294.x, x_3294.y, x_3296);
            let x_3303 : vec3<f32> = txVec38;
            let x_3305 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3303.xy, x_3303.z);
            u_xlat11.x = x_3305;
            let x_3308 : f32 = u_xlat19.x;
            let x_3310 : f32 = u_xlat11.x;
            let x_3312 : f32 = u_xlat85;
            u_xlat85 = ((x_3308 * x_3310) + x_3312);
            let x_3315 : vec4<f32> = u_xlat16;
            let x_3316 : vec2<f32> = vec2<f32>(x_3315.z, x_3315.w);
            let x_3318 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_3316.x, x_3316.y, x_3318);
            let x_3325 : vec3<f32> = txVec39;
            let x_3327 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3325.xy, x_3325.z);
            u_xlat11.x = x_3327;
            let x_3330 : f32 = u_xlat19.y;
            let x_3332 : f32 = u_xlat11.x;
            let x_3334 : f32 = u_xlat85;
            u_xlat85 = ((x_3330 * x_3332) + x_3334);
            let x_3337 : vec4<f32> = u_xlat14;
            let x_3338 : vec2<f32> = vec2<f32>(x_3337.z, x_3337.w);
            let x_3340 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_3338.x, x_3338.y, x_3340);
            let x_3347 : vec3<f32> = txVec40;
            let x_3349 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3347.xy, x_3347.z);
            u_xlat11.x = x_3349;
            let x_3352 : f32 = u_xlat19.z;
            let x_3354 : f32 = u_xlat11.x;
            let x_3356 : f32 = u_xlat85;
            u_xlat85 = ((x_3352 * x_3354) + x_3356);
            let x_3359 : vec4<f32> = u_xlat13;
            let x_3360 : vec2<f32> = vec2<f32>(x_3359.x, x_3359.y);
            let x_3362 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_3360.x, x_3360.y, x_3362);
            let x_3369 : vec3<f32> = txVec41;
            let x_3371 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3369.xy, x_3369.z);
            u_xlat11.x = x_3371;
            let x_3374 : f32 = u_xlat19.w;
            let x_3376 : f32 = u_xlat11.x;
            let x_3378 : f32 = u_xlat85;
            u_xlat85 = ((x_3374 * x_3376) + x_3378);
            let x_3381 : vec4<f32> = u_xlat13;
            let x_3382 : vec2<f32> = vec2<f32>(x_3381.z, x_3381.w);
            let x_3384 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_3382.x, x_3382.y, x_3384);
            let x_3391 : vec3<f32> = txVec42;
            let x_3393 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3391.xy, x_3391.z);
            u_xlat11.x = x_3393;
            let x_3395 : f32 = u_xlat84;
            let x_3397 : f32 = u_xlat11.x;
            let x_3399 : f32 = u_xlat85;
            u_xlat83 = ((x_3395 * x_3397) + x_3399);
          } else {
            let x_3402 : vec4<f32> = u_xlat10;
            let x_3405 : vec4<f32> = x_961.x_AdditionalShadowmapSize;
            let x_3408 : vec2<f32> = ((vec2<f32>(x_3402.x, x_3402.y) * vec2<f32>(x_3405.z, x_3405.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3409 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3408.x, x_3408.y, x_3409.z, x_3409.w);
            let x_3411 : vec4<f32> = u_xlat11;
            let x_3413 : vec2<f32> = floor(vec2<f32>(x_3411.x, x_3411.y));
            let x_3414 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3413.x, x_3413.y, x_3414.z, x_3414.w);
            let x_3416 : vec4<f32> = u_xlat10;
            let x_3419 : vec4<f32> = x_961.x_AdditionalShadowmapSize;
            let x_3422 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3416.x, x_3416.y) * vec2<f32>(x_3419.z, x_3419.w)) + -(vec2<f32>(x_3422.x, x_3422.y)));
            let x_3426 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3426.x, x_3426.x, x_3426.y, x_3426.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3429 : vec4<f32> = u_xlat12;
            let x_3431 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3429.x, x_3429.x, x_3429.z, x_3429.z) * vec4<f32>(x_3431.x, x_3431.x, x_3431.z, x_3431.z));
            let x_3434 : vec4<f32> = u_xlat13;
            let x_3436 : vec2<f32> = (vec2<f32>(x_3434.y, x_3434.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3437 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3437.x, x_3436.x, x_3437.z, x_3436.y);
            let x_3439 : vec4<f32> = u_xlat13;
            let x_3442 : vec2<f32> = u_xlat61;
            let x_3444 : vec2<f32> = ((vec2<f32>(x_3439.x, x_3439.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3442));
            let x_3445 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3444.x, x_3445.y, x_3444.y, x_3445.w);
            let x_3447 : vec2<f32> = u_xlat61;
            let x_3449 : vec2<f32> = (-(x_3447) + vec2<f32>(1.0f, 1.0f));
            let x_3450 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3449.x, x_3449.y, x_3450.z, x_3450.w);
            let x_3452 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_3452, vec2<f32>(0.0f, 0.0f));
            let x_3454 : vec2<f32> = u_xlat63;
            let x_3456 : vec2<f32> = u_xlat63;
            let x_3458 : vec4<f32> = u_xlat13;
            let x_3460 : vec2<f32> = ((-(x_3454) * x_3456) + vec2<f32>(x_3458.x, x_3458.y));
            let x_3461 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3460.x, x_3460.y, x_3461.z, x_3461.w);
            let x_3463 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_3463, vec2<f32>(0.0f, 0.0f));
            let x_3466 : vec2<f32> = u_xlat63;
            let x_3468 : vec2<f32> = u_xlat63;
            let x_3470 : vec4<f32> = u_xlat12;
            let x_3472 : vec2<f32> = ((-(x_3466) * x_3468) + vec2<f32>(x_3470.y, x_3470.w));
            let x_3473 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_3472.x, x_3473.y, x_3472.y);
            let x_3475 : vec4<f32> = u_xlat13;
            let x_3477 : vec2<f32> = (vec2<f32>(x_3475.x, x_3475.y) + vec2<f32>(2.0f, 2.0f));
            let x_3478 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3477.x, x_3477.y, x_3478.z, x_3478.w);
            let x_3480 : vec3<f32> = u_xlat37;
            let x_3482 : vec2<f32> = (vec2<f32>(x_3480.x, x_3480.z) + vec2<f32>(2.0f, 2.0f));
            let x_3483 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3483.x, x_3482.x, x_3483.z, x_3482.y);
            let x_3486 : f32 = u_xlat12.y;
            u_xlat15.z = (x_3486 * 0.08163200318813323975f);
            let x_3489 : vec4<f32> = u_xlat12;
            let x_3491 : vec3<f32> = (vec3<f32>(x_3489.z, x_3489.x, x_3489.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3492 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3491.x, x_3491.y, x_3491.z, x_3492.w);
            let x_3494 : vec4<f32> = u_xlat13;
            let x_3496 : vec2<f32> = (vec2<f32>(x_3494.x, x_3494.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3497 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3496.x, x_3496.y, x_3497.z, x_3497.w);
            let x_3500 : f32 = u_xlat16.y;
            u_xlat15.x = x_3500;
            let x_3502 : vec2<f32> = u_xlat61;
            let x_3505 : vec2<f32> = ((vec2<f32>(x_3502.x, x_3502.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3506 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3506.x, x_3505.x, x_3506.z, x_3505.y);
            let x_3508 : vec2<f32> = u_xlat61;
            let x_3511 : vec2<f32> = ((vec2<f32>(x_3508.x, x_3508.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3512 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3511.x, x_3512.y, x_3511.y, x_3512.w);
            let x_3515 : f32 = u_xlat12.x;
            u_xlat13.y = x_3515;
            let x_3518 : f32 = u_xlat14.y;
            u_xlat13.w = x_3518;
            let x_3520 : vec4<f32> = u_xlat13;
            let x_3521 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3520 + x_3521);
            let x_3523 : vec2<f32> = u_xlat61;
            let x_3526 : vec2<f32> = ((vec2<f32>(x_3523.y, x_3523.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3527 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3527.x, x_3526.x, x_3527.z, x_3526.y);
            let x_3529 : vec2<f32> = u_xlat61;
            let x_3532 : vec2<f32> = ((vec2<f32>(x_3529.y, x_3529.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3533 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3532.x, x_3533.y, x_3532.y, x_3533.w);
            let x_3536 : f32 = u_xlat12.y;
            u_xlat14.y = x_3536;
            let x_3538 : vec4<f32> = u_xlat14;
            let x_3539 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_3538 + x_3539);
            let x_3541 : vec4<f32> = u_xlat13;
            let x_3542 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_3541 / x_3542);
            let x_3544 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3544 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3546 : vec4<f32> = u_xlat14;
            let x_3547 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_3546 / x_3547);
            let x_3549 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3549 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3551 : vec4<f32> = u_xlat13;
            let x_3554 : vec4<f32> = x_961.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3551.w, x_3551.x, x_3551.y, x_3551.z) * vec4<f32>(x_3554.x, x_3554.x, x_3554.x, x_3554.x));
            let x_3557 : vec4<f32> = u_xlat14;
            let x_3560 : vec4<f32> = x_961.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3557.x, x_3557.w, x_3557.y, x_3557.z) * vec4<f32>(x_3560.y, x_3560.y, x_3560.y, x_3560.y));
            let x_3563 : vec4<f32> = u_xlat13;
            let x_3564 : vec3<f32> = vec3<f32>(x_3563.y, x_3563.z, x_3563.w);
            let x_3565 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3564.x, x_3565.y, x_3564.y, x_3564.z);
            let x_3568 : f32 = u_xlat14.x;
            u_xlat16.y = x_3568;
            let x_3570 : vec4<f32> = u_xlat11;
            let x_3573 : vec4<f32> = x_961.x_AdditionalShadowmapSize;
            let x_3576 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3570.x, x_3570.y, x_3570.x, x_3570.y) * vec4<f32>(x_3573.x, x_3573.y, x_3573.x, x_3573.y)) + vec4<f32>(x_3576.x, x_3576.y, x_3576.z, x_3576.y));
            let x_3579 : vec4<f32> = u_xlat11;
            let x_3582 : vec4<f32> = x_961.x_AdditionalShadowmapSize;
            let x_3585 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_3579.x, x_3579.y) * vec2<f32>(x_3582.x, x_3582.y)) + vec2<f32>(x_3585.w, x_3585.y));
            let x_3589 : f32 = u_xlat16.y;
            u_xlat13.y = x_3589;
            let x_3592 : f32 = u_xlat14.z;
            u_xlat16.y = x_3592;
            let x_3594 : vec4<f32> = u_xlat11;
            let x_3597 : vec4<f32> = x_961.x_AdditionalShadowmapSize;
            let x_3600 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3594.x, x_3594.y, x_3594.x, x_3594.y) * vec4<f32>(x_3597.x, x_3597.y, x_3597.x, x_3597.y)) + vec4<f32>(x_3600.x, x_3600.y, x_3600.z, x_3600.y));
            let x_3603 : vec4<f32> = u_xlat11;
            let x_3606 : vec4<f32> = x_961.x_AdditionalShadowmapSize;
            let x_3609 : vec4<f32> = u_xlat16;
            let x_3611 : vec2<f32> = ((vec2<f32>(x_3603.x, x_3603.y) * vec2<f32>(x_3606.x, x_3606.y)) + vec2<f32>(x_3609.w, x_3609.y));
            let x_3612 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3611.x, x_3611.y, x_3612.z, x_3612.w);
            let x_3615 : f32 = u_xlat16.y;
            u_xlat13.z = x_3615;
            let x_3618 : vec4<f32> = u_xlat11;
            let x_3621 : vec4<f32> = x_961.x_AdditionalShadowmapSize;
            let x_3624 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3618.x, x_3618.y, x_3618.x, x_3618.y) * vec4<f32>(x_3621.x, x_3621.y, x_3621.x, x_3621.y)) + vec4<f32>(x_3624.x, x_3624.y, x_3624.x, x_3624.z));
            let x_3628 : f32 = u_xlat14.w;
            u_xlat16.y = x_3628;
            let x_3631 : vec4<f32> = u_xlat11;
            let x_3634 : vec4<f32> = x_961.x_AdditionalShadowmapSize;
            let x_3637 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3631.x, x_3631.y, x_3631.x, x_3631.y) * vec4<f32>(x_3634.x, x_3634.y, x_3634.x, x_3634.y)) + vec4<f32>(x_3637.x, x_3637.y, x_3637.z, x_3637.y));
            let x_3641 : vec4<f32> = u_xlat11;
            let x_3644 : vec4<f32> = x_961.x_AdditionalShadowmapSize;
            let x_3647 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3641.x, x_3641.y) * vec2<f32>(x_3644.x, x_3644.y)) + vec2<f32>(x_3647.w, x_3647.y));
            let x_3651 : f32 = u_xlat16.y;
            u_xlat13.w = x_3651;
            let x_3654 : vec4<f32> = u_xlat11;
            let x_3657 : vec4<f32> = x_961.x_AdditionalShadowmapSize;
            let x_3660 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3654.x, x_3654.y) * vec2<f32>(x_3657.x, x_3657.y)) + vec2<f32>(x_3660.x, x_3660.w));
            let x_3663 : vec4<f32> = u_xlat16;
            let x_3664 : vec3<f32> = vec3<f32>(x_3663.x, x_3663.z, x_3663.w);
            let x_3665 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3664.x, x_3665.y, x_3664.y, x_3664.z);
            let x_3667 : vec4<f32> = u_xlat11;
            let x_3670 : vec4<f32> = x_961.x_AdditionalShadowmapSize;
            let x_3673 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3667.x, x_3667.y, x_3667.x, x_3667.y) * vec4<f32>(x_3670.x, x_3670.y, x_3670.x, x_3670.y)) + vec4<f32>(x_3673.x, x_3673.y, x_3673.z, x_3673.y));
            let x_3677 : vec4<f32> = u_xlat11;
            let x_3680 : vec4<f32> = x_961.x_AdditionalShadowmapSize;
            let x_3683 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3677.x, x_3677.y) * vec2<f32>(x_3680.x, x_3680.y)) + vec2<f32>(x_3683.w, x_3683.y));
            let x_3687 : f32 = u_xlat13.x;
            u_xlat14.x = x_3687;
            let x_3689 : vec4<f32> = u_xlat11;
            let x_3692 : vec4<f32> = x_961.x_AdditionalShadowmapSize;
            let x_3695 : vec4<f32> = u_xlat14;
            let x_3697 : vec2<f32> = ((vec2<f32>(x_3689.x, x_3689.y) * vec2<f32>(x_3692.x, x_3692.y)) + vec2<f32>(x_3695.x, x_3695.y));
            let x_3698 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3697.x, x_3697.y, x_3698.z, x_3698.w);
            let x_3701 : vec4<f32> = u_xlat12;
            let x_3703 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3701.x, x_3701.x, x_3701.x, x_3701.x) * x_3703);
            let x_3706 : vec4<f32> = u_xlat12;
            let x_3708 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3706.y, x_3706.y, x_3706.y, x_3706.y) * x_3708);
            let x_3711 : vec4<f32> = u_xlat12;
            let x_3713 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3711.z, x_3711.z, x_3711.z, x_3711.z) * x_3713);
            let x_3715 : vec4<f32> = u_xlat12;
            let x_3717 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3715.w, x_3715.w, x_3715.w, x_3715.w) * x_3717);
            let x_3720 : vec4<f32> = u_xlat17;
            let x_3721 : vec2<f32> = vec2<f32>(x_3720.x, x_3720.y);
            let x_3723 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3721.x, x_3721.y, x_3723);
            let x_3730 : vec3<f32> = txVec43;
            let x_3732 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3730.xy, x_3730.z);
            u_xlat84 = x_3732;
            let x_3734 : vec4<f32> = u_xlat17;
            let x_3735 : vec2<f32> = vec2<f32>(x_3734.z, x_3734.w);
            let x_3737 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3735.x, x_3735.y, x_3737);
            let x_3744 : vec3<f32> = txVec44;
            let x_3746 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3744.xy, x_3744.z);
            u_xlat85 = x_3746;
            let x_3747 : f32 = u_xlat85;
            let x_3749 : f32 = u_xlat22.y;
            u_xlat85 = (x_3747 * x_3749);
            let x_3752 : f32 = u_xlat22.x;
            let x_3753 : f32 = u_xlat84;
            let x_3755 : f32 = u_xlat85;
            u_xlat84 = ((x_3752 * x_3753) + x_3755);
            let x_3758 : vec2<f32> = u_xlat61;
            let x_3760 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3758.x, x_3758.y, x_3760);
            let x_3767 : vec3<f32> = txVec45;
            let x_3769 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3767.xy, x_3767.z);
            u_xlat85 = x_3769;
            let x_3771 : f32 = u_xlat22.z;
            let x_3772 : f32 = u_xlat85;
            let x_3774 : f32 = u_xlat84;
            u_xlat84 = ((x_3771 * x_3772) + x_3774);
            let x_3777 : vec4<f32> = u_xlat20;
            let x_3778 : vec2<f32> = vec2<f32>(x_3777.x, x_3777.y);
            let x_3780 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3778.x, x_3778.y, x_3780);
            let x_3787 : vec3<f32> = txVec46;
            let x_3789 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3787.xy, x_3787.z);
            u_xlat85 = x_3789;
            let x_3791 : f32 = u_xlat22.w;
            let x_3792 : f32 = u_xlat85;
            let x_3794 : f32 = u_xlat84;
            u_xlat84 = ((x_3791 * x_3792) + x_3794);
            let x_3797 : vec4<f32> = u_xlat18;
            let x_3798 : vec2<f32> = vec2<f32>(x_3797.x, x_3797.y);
            let x_3800 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3798.x, x_3798.y, x_3800);
            let x_3807 : vec3<f32> = txVec47;
            let x_3809 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3807.xy, x_3807.z);
            u_xlat85 = x_3809;
            let x_3811 : f32 = u_xlat23.x;
            let x_3812 : f32 = u_xlat85;
            let x_3814 : f32 = u_xlat84;
            u_xlat84 = ((x_3811 * x_3812) + x_3814);
            let x_3817 : vec4<f32> = u_xlat18;
            let x_3818 : vec2<f32> = vec2<f32>(x_3817.z, x_3817.w);
            let x_3820 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3818.x, x_3818.y, x_3820);
            let x_3827 : vec3<f32> = txVec48;
            let x_3829 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3827.xy, x_3827.z);
            u_xlat85 = x_3829;
            let x_3831 : f32 = u_xlat23.y;
            let x_3832 : f32 = u_xlat85;
            let x_3834 : f32 = u_xlat84;
            u_xlat84 = ((x_3831 * x_3832) + x_3834);
            let x_3837 : vec4<f32> = u_xlat19;
            let x_3838 : vec2<f32> = vec2<f32>(x_3837.x, x_3837.y);
            let x_3840 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3838.x, x_3838.y, x_3840);
            let x_3847 : vec3<f32> = txVec49;
            let x_3849 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3847.xy, x_3847.z);
            u_xlat85 = x_3849;
            let x_3851 : f32 = u_xlat23.z;
            let x_3852 : f32 = u_xlat85;
            let x_3854 : f32 = u_xlat84;
            u_xlat84 = ((x_3851 * x_3852) + x_3854);
            let x_3857 : vec4<f32> = u_xlat20;
            let x_3858 : vec2<f32> = vec2<f32>(x_3857.z, x_3857.w);
            let x_3860 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3858.x, x_3858.y, x_3860);
            let x_3867 : vec3<f32> = txVec50;
            let x_3869 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3867.xy, x_3867.z);
            u_xlat85 = x_3869;
            let x_3871 : f32 = u_xlat23.w;
            let x_3872 : f32 = u_xlat85;
            let x_3874 : f32 = u_xlat84;
            u_xlat84 = ((x_3871 * x_3872) + x_3874);
            let x_3877 : vec4<f32> = u_xlat21;
            let x_3878 : vec2<f32> = vec2<f32>(x_3877.x, x_3877.y);
            let x_3880 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3878.x, x_3878.y, x_3880);
            let x_3887 : vec3<f32> = txVec51;
            let x_3889 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3887.xy, x_3887.z);
            u_xlat85 = x_3889;
            let x_3891 : f32 = u_xlat24.x;
            let x_3892 : f32 = u_xlat85;
            let x_3894 : f32 = u_xlat84;
            u_xlat84 = ((x_3891 * x_3892) + x_3894);
            let x_3897 : vec4<f32> = u_xlat21;
            let x_3898 : vec2<f32> = vec2<f32>(x_3897.z, x_3897.w);
            let x_3900 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_3898.x, x_3898.y, x_3900);
            let x_3907 : vec3<f32> = txVec52;
            let x_3909 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3907.xy, x_3907.z);
            u_xlat85 = x_3909;
            let x_3911 : f32 = u_xlat24.y;
            let x_3912 : f32 = u_xlat85;
            let x_3914 : f32 = u_xlat84;
            u_xlat84 = ((x_3911 * x_3912) + x_3914);
            let x_3917 : vec2<f32> = u_xlat38;
            let x_3919 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_3917.x, x_3917.y, x_3919);
            let x_3926 : vec3<f32> = txVec53;
            let x_3928 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3926.xy, x_3926.z);
            u_xlat85 = x_3928;
            let x_3930 : f32 = u_xlat24.z;
            let x_3931 : f32 = u_xlat85;
            let x_3933 : f32 = u_xlat84;
            u_xlat84 = ((x_3930 * x_3931) + x_3933);
            let x_3936 : vec2<f32> = u_xlat69;
            let x_3938 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_3936.x, x_3936.y, x_3938);
            let x_3945 : vec3<f32> = txVec54;
            let x_3947 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3945.xy, x_3945.z);
            u_xlat85 = x_3947;
            let x_3949 : f32 = u_xlat24.w;
            let x_3950 : f32 = u_xlat85;
            let x_3952 : f32 = u_xlat84;
            u_xlat84 = ((x_3949 * x_3950) + x_3952);
            let x_3955 : vec4<f32> = u_xlat16;
            let x_3956 : vec2<f32> = vec2<f32>(x_3955.x, x_3955.y);
            let x_3958 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_3956.x, x_3956.y, x_3958);
            let x_3965 : vec3<f32> = txVec55;
            let x_3967 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3965.xy, x_3965.z);
            u_xlat85 = x_3967;
            let x_3969 : f32 = u_xlat12.x;
            let x_3970 : f32 = u_xlat85;
            let x_3972 : f32 = u_xlat84;
            u_xlat84 = ((x_3969 * x_3970) + x_3972);
            let x_3975 : vec4<f32> = u_xlat16;
            let x_3976 : vec2<f32> = vec2<f32>(x_3975.z, x_3975.w);
            let x_3978 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_3976.x, x_3976.y, x_3978);
            let x_3985 : vec3<f32> = txVec56;
            let x_3987 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3985.xy, x_3985.z);
            u_xlat85 = x_3987;
            let x_3989 : f32 = u_xlat12.y;
            let x_3990 : f32 = u_xlat85;
            let x_3992 : f32 = u_xlat84;
            u_xlat84 = ((x_3989 * x_3990) + x_3992);
            let x_3995 : vec2<f32> = u_xlat64;
            let x_3997 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_3995.x, x_3995.y, x_3997);
            let x_4004 : vec3<f32> = txVec57;
            let x_4006 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4004.xy, x_4004.z);
            u_xlat85 = x_4006;
            let x_4008 : f32 = u_xlat12.z;
            let x_4009 : f32 = u_xlat85;
            let x_4011 : f32 = u_xlat84;
            u_xlat84 = ((x_4008 * x_4009) + x_4011);
            let x_4014 : vec4<f32> = u_xlat11;
            let x_4015 : vec2<f32> = vec2<f32>(x_4014.x, x_4014.y);
            let x_4017 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_4015.x, x_4015.y, x_4017);
            let x_4024 : vec3<f32> = txVec58;
            let x_4026 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4024.xy, x_4024.z);
            u_xlat85 = x_4026;
            let x_4028 : f32 = u_xlat12.w;
            let x_4029 : f32 = u_xlat85;
            let x_4031 : f32 = u_xlat84;
            u_xlat83 = ((x_4028 * x_4029) + x_4031);
          }
        }
      } else {
        let x_4035 : vec4<f32> = u_xlat10;
        let x_4036 : vec2<f32> = vec2<f32>(x_4035.x, x_4035.y);
        let x_4038 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_4036.x, x_4036.y, x_4038);
        let x_4045 : vec3<f32> = txVec59;
        let x_4047 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4045.xy, x_4045.z);
        u_xlat83 = x_4047;
      }
      let x_4048 : i32 = u_xlati5;
      let x_4050 : f32 = x_961.x_AdditionalShadowParams[x_4048].x;
      u_xlat84 = (1.0f + -(x_4050));
      let x_4053 : f32 = u_xlat83;
      let x_4054 : i32 = u_xlati5;
      let x_4056 : f32 = x_961.x_AdditionalShadowParams[x_4054].x;
      let x_4058 : f32 = u_xlat84;
      u_xlat83 = ((x_4053 * x_4056) + x_4058);
      let x_4061 : f32 = u_xlat10.z;
      u_xlatb84 = (0.0f >= x_4061);
      let x_4064 : f32 = u_xlat10.z;
      u_xlatb10.x = (x_4064 >= 1.0f);
      let x_4067 : bool = u_xlatb84;
      let x_4069 : bool = u_xlatb10.x;
      u_xlatb84 = (x_4067 | x_4069);
      let x_4071 : bool = u_xlatb84;
      let x_4072 : f32 = u_xlat83;
      u_xlat83 = select(x_4072, 1.0f, x_4071);
    } else {
      u_xlat83 = 1.0f;
    }
    let x_4075 : f32 = u_xlat83;
    u_xlat84 = (-(x_4075) + 1.0f);
    let x_4078 : f32 = u_xlat77;
    let x_4079 : f32 = u_xlat84;
    let x_4081 : f32 = u_xlat83;
    u_xlat83 = ((x_4078 * x_4079) + x_4081);
    let x_4083 : f32 = u_xlat81;
    let x_4084 : f32 = u_xlat83;
    u_xlat81 = (x_4083 * x_4084);
    let x_4086 : vec4<f32> = u_xlat1;
    let x_4088 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_4086.x, x_4086.y, x_4086.z), vec3<f32>(x_4088.x, x_4088.y, x_4088.z));
    let x_4091 : f32 = u_xlat83;
    u_xlat83 = clamp(x_4091, 0.0f, 1.0f);
    let x_4093 : f32 = u_xlat81;
    let x_4094 : f32 = u_xlat83;
    u_xlat81 = (x_4093 * x_4094);
    let x_4096 : f32 = u_xlat81;
    let x_4098 : i32 = u_xlati5;
    let x_4100 : vec4<f32> = x_2644.x_AdditionalLightsColor[x_4098];
    let x_4102 : vec3<f32> = (vec3<f32>(x_4096, x_4096, x_4096) * vec3<f32>(x_4100.x, x_4100.y, x_4100.z));
    let x_4103 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_4102.x, x_4102.y, x_4102.z, x_4103.w);
    let x_4105 : vec4<f32> = u_xlat8;
    let x_4107 : f32 = u_xlat82;
    let x_4110 : vec4<f32> = u_xlat6;
    let x_4112 : vec3<f32> = ((vec3<f32>(x_4105.x, x_4105.y, x_4105.z) * vec3<f32>(x_4107, x_4107, x_4107)) + vec3<f32>(x_4110.x, x_4110.y, x_4110.z));
    let x_4113 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4112.x, x_4112.y, x_4112.z, x_4113.w);
    let x_4115 : vec4<f32> = u_xlat8;
    let x_4117 : vec4<f32> = u_xlat8;
    u_xlat5.x = dot(vec3<f32>(x_4115.x, x_4115.y, x_4115.z), vec3<f32>(x_4117.x, x_4117.y, x_4117.z));
    let x_4122 : f32 = u_xlat5.x;
    u_xlat5.x = max(x_4122, 1.17549435e-38f);
    let x_4126 : f32 = u_xlat5.x;
    u_xlat5.x = inverseSqrt(x_4126);
    let x_4129 : vec4<f32> = u_xlat5;
    let x_4131 : vec4<f32> = u_xlat8;
    let x_4133 : vec3<f32> = (vec3<f32>(x_4129.x, x_4129.x, x_4129.x) * vec3<f32>(x_4131.x, x_4131.y, x_4131.z));
    let x_4134 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4133.x, x_4133.y, x_4133.z, x_4134.w);
    let x_4136 : vec4<f32> = u_xlat1;
    let x_4138 : vec4<f32> = u_xlat8;
    u_xlat5.x = dot(vec3<f32>(x_4136.x, x_4136.y, x_4136.z), vec3<f32>(x_4138.x, x_4138.y, x_4138.z));
    let x_4143 : f32 = u_xlat5.x;
    u_xlat5.x = clamp(x_4143, 0.0f, 1.0f);
    let x_4146 : vec4<f32> = u_xlat9;
    let x_4148 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_4146.x, x_4146.y, x_4146.z), vec3<f32>(x_4148.x, x_4148.y, x_4148.z));
    let x_4151 : f32 = u_xlat81;
    u_xlat81 = clamp(x_4151, 0.0f, 1.0f);
    let x_4154 : f32 = u_xlat5.x;
    let x_4156 : f32 = u_xlat5.x;
    u_xlat5.x = (x_4154 * x_4156);
    let x_4160 : f32 = u_xlat5.x;
    let x_4162 : f32 = u_xlat0.x;
    u_xlat5.x = ((x_4160 * x_4162) + 1.00001001358032226562f);
    let x_4166 : f32 = u_xlat81;
    let x_4167 : f32 = u_xlat81;
    u_xlat81 = (x_4166 * x_4167);
    let x_4170 : f32 = u_xlat5.x;
    let x_4172 : f32 = u_xlat5.x;
    u_xlat5.x = (x_4170 * x_4172);
    let x_4175 : f32 = u_xlat81;
    u_xlat81 = max(x_4175, 0.10000000149011611938f);
    let x_4178 : f32 = u_xlat5.x;
    let x_4179 : f32 = u_xlat81;
    u_xlat5.x = (x_4178 * x_4179);
    let x_4182 : f32 = u_xlat78;
    let x_4184 : f32 = u_xlat5.x;
    u_xlat5.x = (x_4182 * x_4184);
    let x_4187 : f32 = u_xlat76;
    let x_4189 : f32 = u_xlat5.x;
    u_xlat5.x = (x_4187 / x_4189);
    let x_4192 : vec4<f32> = u_xlat4;
    let x_4194 : vec4<f32> = u_xlat5;
    let x_4197 : vec4<f32> = u_xlat3;
    let x_4199 : vec3<f32> = ((vec3<f32>(x_4192.x, x_4192.y, x_4192.z) * vec3<f32>(x_4194.x, x_4194.x, x_4194.x)) + vec3<f32>(x_4197.x, x_4197.y, x_4197.z));
    let x_4200 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4199.x, x_4199.y, x_4199.z, x_4200.w);
    let x_4202 : vec4<f32> = u_xlat8;
    let x_4204 : vec4<f32> = u_xlat10;
    let x_4207 : vec4<f32> = u_xlat7;
    let x_4209 : vec3<f32> = ((vec3<f32>(x_4202.x, x_4202.y, x_4202.z) * vec3<f32>(x_4204.x, x_4204.y, x_4204.z)) + vec3<f32>(x_4207.x, x_4207.y, x_4207.z));
    let x_4210 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_4209.x, x_4209.y, x_4209.z, x_4210.w);

    continuing {
      let x_4212 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4212 + bitcast<u32>(1i));
    }
  }
  let x_4214 : vec3<f32> = u_xlat2;
  let x_4215 : f32 = u_xlat25;
  let x_4218 : vec3<f32> = u_xlat30;
  u_xlat0 = ((x_4214 * vec3<f32>(x_4215, x_4215, x_4215)) + x_4218);
  let x_4220 : vec4<f32> = u_xlat7;
  let x_4222 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4220.x, x_4220.y, x_4220.z) + x_4222);
  let x_4226 : f32 = u_xlat75;
  let x_4228 : vec3<f32> = u_xlat0;
  let x_4229 : vec3<f32> = (vec3<f32>(x_4226, x_4226, x_4226) * x_4228);
  let x_4230 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4229.x, x_4229.y, x_4229.z, x_4230.w);
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


