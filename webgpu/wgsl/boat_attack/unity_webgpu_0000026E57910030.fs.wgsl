diagnostic(off, derivative_uniformity);

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

@group(0) @binding(8) var x_TerrainHolesTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_TerrainHolesTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlatb0 : bool;

@group(1) @binding(3) var<uniform> x_59 : x_Terrain;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(3) var x_Control : texture_2d<f32>;

@group(0) @binding(13) var sampler_Control : sampler;

var<private> u_xlat75 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(4) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(14) var sampler_Splat0 : sampler;

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

@group(0) @binding(12) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat77 : f32;

var<private> u_xlat78 : f32;

var<private> u_xlat79 : f32;

var<private> u_xlatb80 : bool;

@group(1) @binding(4) var<uniform> x_762 : LightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(9) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(16) var sampler_LinearClampCompare : sampler_comparison;

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

@group(0) @binding(11) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2180 : UnityPerDraw;

var<private> u_xlatu50 : u32;

var<private> u_xlatu6 : u32;

var<private> u_xlati82 : i32;

var<private> u_xlati6 : i32;

@group(1) @binding(1) var<uniform> x_2441 : AdditionalLights;

var<private> u_xlat82 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlati84 : i32;

var<private> u_xlatb10 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat35 : vec3<f32>;

var<private> u_xlat60 : f32;

var<private> u_xlatb84 : bool;

@group(0) @binding(10) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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
  var x_583 : vec3<f32>;
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
  var x_2582 : f32;
  var x_2593 : f32;
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
  let x_24 : vec4<f32> = vs_TEXCOORD0;
  let x_36 : f32 = x_29.x_GlobalMipBias.x;
  let x_37 : vec4<f32> = textureSampleBias(x_TerrainHolesTexture, sampler_TerrainHolesTexture, vec2<f32>(x_24.x, x_24.y), x_36);
  u_xlat0.x = x_37.x;
  let x_45 : f32 = u_xlat0.x;
  u_xlatb0 = (x_45 == 0.0f);
  let x_48 : bool = u_xlatb0;
  if (((select(0i, 1i, x_48) * -1i) != 0i)) {
    discard;
  }
  let x_63 : vec4<f32> = x_59.x_MaskMapRemapScale0;
  let x_70 : vec4<f32> = x_59.x_MaskMapRemapOffset0;
  u_xlat0 = ((vec3<f32>(x_63.x, x_63.y, x_63.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_70.x, x_70.y, x_70.w));
  let x_77 : vec4<f32> = x_59.x_MaskMapRemapScale1;
  let x_82 : vec4<f32> = x_59.x_MaskMapRemapOffset1;
  let x_84 : vec3<f32> = ((vec3<f32>(x_77.x, x_77.y, x_77.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_82.x, x_82.y, x_82.w));
  let x_85 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_84.x, x_84.y, x_84.z, x_85.w);
  let x_90 : vec4<f32> = x_59.x_MaskMapRemapScale2;
  let x_95 : vec4<f32> = x_59.x_MaskMapRemapOffset2;
  u_xlat2 = ((vec3<f32>(x_90.x, x_90.y, x_90.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_95.x, x_95.y, x_95.w));
  let x_101 : vec4<f32> = x_59.x_MaskMapRemapScale3;
  let x_106 : vec4<f32> = x_59.x_MaskMapRemapOffset3;
  let x_108 : vec3<f32> = ((vec3<f32>(x_101.x, x_101.w, x_101.y) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_106.x, x_106.w, x_106.y));
  let x_109 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_108.x, x_108.y, x_109.z, x_108.z);
  let x_114 : vec4<f32> = x_59.x_Control_TexelSize;
  let x_118 : vec2<f32> = (vec2<f32>(x_114.z, x_114.w) + vec2<f32>(-1.0f, -1.0f));
  let x_119 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_118.x, x_118.y, x_119.z, x_119.w);
  let x_121 : vec4<f32> = vs_TEXCOORD0;
  let x_123 : vec4<f32> = u_xlat4;
  let x_127 : vec2<f32> = ((vec2<f32>(x_121.x, x_121.y) * vec2<f32>(x_123.x, x_123.y)) + vec2<f32>(0.5f, 0.5f));
  let x_128 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_127.x, x_127.y, x_128.z, x_128.w);
  let x_130 : vec4<f32> = u_xlat4;
  let x_133 : vec4<f32> = x_59.x_Control_TexelSize;
  let x_135 : vec2<f32> = (vec2<f32>(x_130.x, x_130.y) * vec2<f32>(x_133.x, x_133.y));
  let x_136 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_135.x, x_135.y, x_136.z, x_136.w);
  let x_143 : vec4<f32> = u_xlat4;
  let x_146 : f32 = x_29.x_GlobalMipBias.x;
  let x_147 : vec4<f32> = textureSampleBias(x_Control, sampler_Control, vec2<f32>(x_143.x, x_143.y), x_146);
  u_xlat4 = x_147;
  let x_149 : vec4<f32> = u_xlat4;
  u_xlat75 = dot(x_149, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_160 : vec4<f32> = vs_TEXCOORD1;
  let x_163 : f32 = x_29.x_GlobalMipBias.x;
  let x_164 : vec4<f32> = textureSampleBias(x_Splat0, sampler_Splat0, vec2<f32>(x_160.x, x_160.y), x_163);
  u_xlat5 = x_164;
  let x_170 : vec4<f32> = vs_TEXCOORD1;
  let x_173 : f32 = x_29.x_GlobalMipBias.x;
  let x_174 : vec4<f32> = textureSampleBias(x_Splat1, sampler_Splat0, vec2<f32>(x_170.z, x_170.w), x_173);
  u_xlat6 = x_174;
  let x_181 : vec4<f32> = vs_TEXCOORD2;
  let x_184 : f32 = x_29.x_GlobalMipBias.x;
  let x_185 : vec4<f32> = textureSampleBias(x_Splat2, sampler_Splat0, vec2<f32>(x_181.x, x_181.y), x_184);
  u_xlat7 = x_185;
  let x_191 : vec4<f32> = vs_TEXCOORD2;
  let x_194 : f32 = x_29.x_GlobalMipBias.x;
  let x_195 : vec4<f32> = textureSampleBias(x_Splat3, sampler_Splat0, vec2<f32>(x_191.z, x_191.w), x_194);
  u_xlat8 = x_195;
  let x_199 : f32 = u_xlat5.w;
  u_xlat9.x = x_199;
  let x_202 : f32 = u_xlat6.w;
  u_xlat9.y = x_202;
  let x_206 : f32 = u_xlat7.w;
  u_xlat9.z = x_206;
  let x_210 : f32 = u_xlat8.w;
  u_xlat9.w = x_210;
  let x_213 : vec4<f32> = u_xlat9;
  let x_216 : f32 = x_59.x_Smoothness0;
  let x_219 : f32 = x_59.x_Smoothness1;
  let x_222 : f32 = x_59.x_Smoothness2;
  let x_225 : f32 = x_59.x_Smoothness3;
  u_xlat10 = (x_213 * vec4<f32>(x_216, x_219, x_222, x_225));
  let x_232 : f32 = x_59.x_NumLayersCount;
  u_xlatb76 = (4.0f >= x_232);
  let x_235 : vec4<f32> = u_xlat4;
  u_xlat11 = (-(x_235) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_238 : vec4<f32> = u_xlat9;
  let x_239 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_238 + -(x_239));
  let x_242 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_242 * vec4<f32>(20.0f, 20.0f, 20.0f, 20.0f));
  let x_246 : vec4<f32> = u_xlat11;
  u_xlat11 = clamp(x_246, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_250 : vec4<f32> = u_xlat4;
  let x_254 : vec4<f32> = u_xlat11;
  u_xlat11 = ((x_250 * vec4<f32>(0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f)) + x_254);
  let x_257 : vec4<f32> = u_xlat4;
  let x_258 : vec4<f32> = u_xlat11;
  u_xlat12 = (x_257 + -(x_258));
  let x_263 : f32 = u_xlat12.x;
  let x_266 : f32 = x_59.x_DiffuseRemapScale0.w;
  u_xlat13.x = (x_263 * x_266);
  let x_270 : f32 = u_xlat12.y;
  let x_273 : f32 = x_59.x_DiffuseRemapScale1.w;
  u_xlat13.y = (x_270 * x_273);
  let x_277 : f32 = u_xlat12.z;
  let x_280 : f32 = x_59.x_DiffuseRemapScale2.w;
  u_xlat13.z = (x_277 * x_280);
  let x_284 : f32 = u_xlat12.w;
  let x_287 : f32 = x_59.x_DiffuseRemapScale3.w;
  u_xlat13.w = (x_284 * x_287);
  let x_290 : vec4<f32> = u_xlat11;
  let x_291 : vec4<f32> = u_xlat13;
  u_xlat11 = (x_290 + x_291);
  let x_293 : bool = u_xlatb76;
  let x_294 : vec4<f32> = u_xlat11;
  let x_295 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_295, x_294, vec4<bool>(x_293, x_293, x_293, x_293));
  let x_300 : vec4<f32> = u_xlat4;
  u_xlat76 = dot(x_300, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_304 : f32 = u_xlat76;
  u_xlatb77 = (0.00499999988824129105f >= x_304);
  let x_306 : bool = u_xlatb77;
  if (((select(0i, 1i, x_306) * -1i) != 0i)) {
    discard;
  }
  let x_313 : f32 = u_xlat76;
  u_xlat76 = (x_313 + 0.00006103515625f);
  let x_316 : vec4<f32> = u_xlat4;
  let x_317 : f32 = u_xlat76;
  u_xlat4 = (x_316 / vec4<f32>(x_317, x_317, x_317, x_317));
  let x_320 : vec4<f32> = u_xlat4;
  let x_323 : vec4<f32> = x_59.x_DiffuseRemapScale0;
  let x_325 : vec3<f32> = (vec3<f32>(x_320.x, x_320.x, x_320.x) * vec3<f32>(x_323.x, x_323.y, x_323.z));
  let x_326 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_325.x, x_325.y, x_325.z, x_326.w);
  let x_328 : vec4<f32> = u_xlat4;
  let x_331 : vec4<f32> = x_59.x_DiffuseRemapScale1;
  let x_333 : vec3<f32> = (vec3<f32>(x_328.y, x_328.y, x_328.y) * vec3<f32>(x_331.x, x_331.y, x_331.z));
  let x_334 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
  let x_336 : vec4<f32> = u_xlat6;
  let x_338 : vec4<f32> = u_xlat12;
  let x_340 : vec3<f32> = (vec3<f32>(x_336.x, x_336.y, x_336.z) * vec3<f32>(x_338.x, x_338.y, x_338.z));
  let x_341 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_340.x, x_340.y, x_340.z, x_341.w);
  let x_343 : vec4<f32> = u_xlat5;
  let x_345 : vec4<f32> = u_xlat11;
  let x_348 : vec4<f32> = u_xlat6;
  let x_350 : vec3<f32> = ((vec3<f32>(x_343.x, x_343.y, x_343.z) * vec3<f32>(x_345.x, x_345.y, x_345.z)) + vec3<f32>(x_348.x, x_348.y, x_348.z));
  let x_351 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_350.x, x_350.y, x_350.z, x_351.w);
  let x_353 : vec4<f32> = u_xlat4;
  let x_356 : vec4<f32> = x_59.x_DiffuseRemapScale2;
  let x_358 : vec3<f32> = (vec3<f32>(x_353.z, x_353.z, x_353.z) * vec3<f32>(x_356.x, x_356.y, x_356.z));
  let x_359 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_358.x, x_358.y, x_358.z, x_359.w);
  let x_361 : vec4<f32> = u_xlat7;
  let x_363 : vec4<f32> = u_xlat6;
  let x_366 : vec4<f32> = u_xlat5;
  let x_368 : vec3<f32> = ((vec3<f32>(x_361.x, x_361.y, x_361.z) * vec3<f32>(x_363.x, x_363.y, x_363.z)) + vec3<f32>(x_366.x, x_366.y, x_366.z));
  let x_369 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_368.x, x_368.y, x_368.z, x_369.w);
  let x_371 : vec4<f32> = u_xlat4;
  let x_374 : vec4<f32> = x_59.x_DiffuseRemapScale3;
  let x_376 : vec3<f32> = (vec3<f32>(x_371.w, x_371.w, x_371.w) * vec3<f32>(x_374.x, x_374.y, x_374.z));
  let x_377 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_376.x, x_376.y, x_376.z, x_377.w);
  let x_379 : vec4<f32> = u_xlat8;
  let x_381 : vec4<f32> = u_xlat6;
  let x_384 : vec4<f32> = u_xlat5;
  let x_386 : vec3<f32> = ((vec3<f32>(x_379.x, x_379.y, x_379.z) * vec3<f32>(x_381.x, x_381.y, x_381.z)) + vec3<f32>(x_384.x, x_384.y, x_384.z));
  let x_387 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_386.x, x_386.y, x_386.z, x_387.w);
  let x_390 : f32 = x_59.x_MaskMapRemapScale0.y;
  u_xlat6.x = x_390;
  let x_393 : f32 = x_59.x_MaskMapRemapScale1.y;
  u_xlat6.y = x_393;
  let x_396 : f32 = x_59.x_MaskMapRemapScale2.y;
  u_xlat6.z = x_396;
  let x_399 : f32 = x_59.x_MaskMapRemapScale3.y;
  u_xlat6.w = x_399;
  let x_402 : f32 = x_59.x_MaskMapRemapOffset0.y;
  u_xlat7.x = x_402;
  let x_405 : f32 = x_59.x_MaskMapRemapOffset1.y;
  u_xlat7.y = x_405;
  let x_408 : f32 = x_59.x_MaskMapRemapOffset2.y;
  u_xlat7.z = x_408;
  let x_411 : f32 = x_59.x_MaskMapRemapOffset3.y;
  u_xlat7.w = x_411;
  let x_413 : vec4<f32> = u_xlat6;
  let x_414 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_413 + x_414);
  let x_417 : f32 = u_xlat0.z;
  u_xlat7.x = x_417;
  let x_420 : f32 = u_xlat1.z;
  u_xlat7.y = x_420;
  let x_423 : f32 = u_xlat2.z;
  u_xlat7.z = x_423;
  let x_426 : f32 = u_xlat3.y;
  u_xlat7.w = x_426;
  let x_428 : vec4<f32> = u_xlat9;
  let x_431 : f32 = x_59.x_Smoothness0;
  let x_433 : f32 = x_59.x_Smoothness1;
  let x_435 : f32 = x_59.x_Smoothness2;
  let x_437 : f32 = x_59.x_Smoothness3;
  let x_440 : vec4<f32> = u_xlat7;
  u_xlat7 = ((-(x_428) * vec4<f32>(x_431, x_433, x_435, x_437)) + x_440);
  let x_444 : f32 = x_59.x_LayerHasMask0;
  let x_447 : f32 = x_59.x_LayerHasMask1;
  let x_450 : f32 = x_59.x_LayerHasMask2;
  let x_453 : f32 = x_59.x_LayerHasMask3;
  let x_455 : vec4<f32> = u_xlat7;
  let x_457 : vec4<f32> = u_xlat10;
  u_xlat7 = ((vec4<f32>(x_444, x_447, x_450, x_453) * x_455) + x_457);
  let x_460 : vec4<f32> = u_xlat4;
  let x_461 : vec4<f32> = u_xlat7;
  u_xlat50 = dot(x_460, x_461);
  let x_464 : f32 = u_xlat0.x;
  u_xlat7.x = x_464;
  let x_467 : f32 = u_xlat1.x;
  u_xlat7.y = x_467;
  let x_470 : f32 = u_xlat2.x;
  u_xlat7.z = x_470;
  let x_473 : f32 = u_xlat3.x;
  u_xlat7.w = x_473;
  let x_475 : vec4<f32> = u_xlat7;
  let x_478 : f32 = x_59.x_Metallic0;
  let x_481 : f32 = x_59.x_Metallic1;
  let x_484 : f32 = x_59.x_Metallic2;
  let x_487 : f32 = x_59.x_Metallic3;
  u_xlat7 = (x_475 + -(vec4<f32>(x_478, x_481, x_484, x_487)));
  let x_492 : f32 = x_59.x_LayerHasMask0;
  let x_494 : f32 = x_59.x_LayerHasMask1;
  let x_496 : f32 = x_59.x_LayerHasMask2;
  let x_498 : f32 = x_59.x_LayerHasMask3;
  let x_500 : vec4<f32> = u_xlat7;
  let x_503 : f32 = x_59.x_Metallic0;
  let x_505 : f32 = x_59.x_Metallic1;
  let x_507 : f32 = x_59.x_Metallic2;
  let x_509 : f32 = x_59.x_Metallic3;
  u_xlat7 = ((vec4<f32>(x_492, x_494, x_496, x_498) * x_500) + vec4<f32>(x_503, x_505, x_507, x_509));
  let x_512 : vec4<f32> = u_xlat4;
  let x_513 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_512, x_513);
  let x_517 : f32 = u_xlat0.y;
  u_xlat3.x = x_517;
  let x_520 : f32 = u_xlat1.y;
  u_xlat3.y = x_520;
  let x_523 : f32 = u_xlat2.y;
  u_xlat3.z = x_523;
  let x_525 : vec4<f32> = u_xlat6;
  let x_527 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_525) + x_527);
  let x_530 : f32 = x_59.x_LayerHasMask0;
  let x_532 : f32 = x_59.x_LayerHasMask1;
  let x_534 : f32 = x_59.x_LayerHasMask2;
  let x_536 : f32 = x_59.x_LayerHasMask3;
  let x_538 : vec4<f32> = u_xlat1;
  let x_540 : vec4<f32> = u_xlat6;
  u_xlat1 = ((vec4<f32>(x_530, x_532, x_534, x_536) * x_538) + x_540);
  let x_543 : vec4<f32> = u_xlat4;
  let x_544 : vec4<f32> = u_xlat1;
  u_xlat25 = dot(x_543, x_544);
  let x_548 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb1 = (x_548 == 0.0f);
  let x_553 : vec3<f32> = vs_TEXCOORD7;
  let x_557 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat26 = (-(x_553) + x_557);
  let x_559 : vec3<f32> = u_xlat26;
  let x_560 : vec3<f32> = u_xlat26;
  u_xlat2.x = dot(x_559, x_560);
  let x_564 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_564);
  let x_567 : vec3<f32> = u_xlat26;
  let x_568 : vec3<f32> = u_xlat2;
  u_xlat26 = (x_567 * vec3<f32>(x_568.x, x_568.x, x_568.x));
  let x_572 : f32 = x_29.unity_MatrixV[0i].z;
  u_xlat2.x = x_572;
  let x_575 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat2.y = x_575;
  let x_579 : f32 = x_29.unity_MatrixV[2i].z;
  u_xlat2.z = x_579;
  let x_581 : bool = u_xlatb1;
  if (x_581) {
    let x_586 : vec3<f32> = u_xlat26;
    x_583 = x_586;
  } else {
    let x_588 : vec3<f32> = u_xlat2;
    x_583 = x_588;
  }
  let x_589 : vec3<f32> = x_583;
  let x_590 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_589.x, x_589.y, x_589.z, x_590.w);
  let x_593 : vec3<f32> = vs_TEXCOORD3;
  let x_594 : vec3<f32> = vs_TEXCOORD3;
  u_xlat76 = dot(x_593, x_594);
  let x_596 : f32 = u_xlat76;
  u_xlat76 = inverseSqrt(x_596);
  let x_598 : f32 = u_xlat76;
  let x_600 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2 = (vec3<f32>(x_598, x_598, x_598) * x_600);
  let x_604 : f32 = vs_TEXCOORD7.y;
  let x_606 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat76 = (x_604 * x_606);
  let x_609 : f32 = x_29.unity_MatrixV[0i].z;
  let x_611 : f32 = vs_TEXCOORD7.x;
  let x_613 : f32 = u_xlat76;
  u_xlat76 = ((x_609 * x_611) + x_613);
  let x_616 : f32 = x_29.unity_MatrixV[2i].z;
  let x_618 : f32 = vs_TEXCOORD7.z;
  let x_620 : f32 = u_xlat76;
  u_xlat76 = ((x_616 * x_618) + x_620);
  let x_622 : f32 = u_xlat76;
  let x_625 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat76 = (x_622 + x_625);
  let x_627 : f32 = u_xlat76;
  let x_630 : f32 = x_29.x_ProjectionParams.y;
  u_xlat76 = (-(x_627) + -(x_630));
  let x_633 : f32 = u_xlat76;
  u_xlat76 = max(x_633, 0.0f);
  let x_635 : f32 = u_xlat76;
  let x_637 : f32 = x_29.unity_FogParams.x;
  u_xlat76 = (x_635 * x_637);
  let x_644 : vec4<f32> = vs_TEXCOORD0;
  let x_647 : f32 = x_29.x_GlobalMipBias.x;
  let x_648 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_644.z, x_644.w), x_647);
  u_xlat3 = x_648;
  let x_653 : vec4<f32> = vs_TEXCOORD0;
  let x_656 : f32 = x_29.x_GlobalMipBias.x;
  let x_657 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_653.z, x_653.w), x_656);
  let x_658 : vec3<f32> = vec3<f32>(x_657.x, x_657.y, x_657.z);
  let x_659 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_658.x, x_658.y, x_658.z, x_659.w);
  let x_661 : vec4<f32> = u_xlat3;
  let x_665 : vec3<f32> = (vec3<f32>(x_661.x, x_661.y, x_661.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_666 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_665.x, x_665.y, x_665.z, x_666.w);
  let x_669 : vec3<f32> = u_xlat2;
  let x_670 : vec4<f32> = u_xlat3;
  u_xlat77 = dot(x_669, vec3<f32>(x_670.x, x_670.y, x_670.z));
  let x_673 : f32 = u_xlat77;
  u_xlat77 = (x_673 + 0.5f);
  let x_675 : f32 = u_xlat77;
  let x_677 : vec4<f32> = u_xlat4;
  let x_679 : vec3<f32> = (vec3<f32>(x_675, x_675, x_675) * vec3<f32>(x_677.x, x_677.y, x_677.z));
  let x_680 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_679.x, x_679.y, x_679.z, x_680.w);
  let x_683 : f32 = u_xlat3.w;
  u_xlat77 = max(x_683, 0.00009999999747378752f);
  let x_686 : vec4<f32> = u_xlat3;
  let x_688 : f32 = u_xlat77;
  let x_690 : vec3<f32> = (vec3<f32>(x_686.x, x_686.y, x_686.z) / vec3<f32>(x_688, x_688, x_688));
  let x_691 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_690.x, x_690.y, x_690.z, x_691.w);
  let x_694 : f32 = u_xlat0.x;
  u_xlat77 = ((-(x_694) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_700 : f32 = u_xlat50;
  let x_701 : f32 = u_xlat77;
  u_xlat78 = (x_700 + -(x_701));
  let x_704 : f32 = u_xlat77;
  let x_706 : vec4<f32> = u_xlat5;
  let x_708 : vec3<f32> = (vec3<f32>(x_704, x_704, x_704) * vec3<f32>(x_706.x, x_706.y, x_706.z));
  let x_709 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_708.x, x_708.y, x_708.z, x_709.w);
  let x_711 : vec4<f32> = u_xlat5;
  let x_715 : vec3<f32> = (vec3<f32>(x_711.x, x_711.y, x_711.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_716 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_715.x, x_715.y, x_715.z, x_716.w);
  let x_718 : vec3<f32> = u_xlat0;
  let x_720 : vec4<f32> = u_xlat5;
  let x_725 : vec3<f32> = ((vec3<f32>(x_718.x, x_718.x, x_718.x) * vec3<f32>(x_720.x, x_720.y, x_720.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_726 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_725.x, x_725.y, x_725.z, x_726.w);
  let x_728 : f32 = u_xlat50;
  u_xlat0.x = (-(x_728) + 1.0f);
  let x_733 : f32 = u_xlat0.x;
  let x_735 : f32 = u_xlat0.x;
  u_xlat50 = (x_733 * x_735);
  let x_737 : f32 = u_xlat50;
  u_xlat50 = max(x_737, 0.0078125f);
  let x_740 : f32 = u_xlat50;
  let x_741 : f32 = u_xlat50;
  u_xlat77 = (x_740 * x_741);
  let x_743 : f32 = u_xlat78;
  u_xlat78 = (x_743 + 1.0f);
  let x_745 : f32 = u_xlat78;
  u_xlat78 = clamp(x_745, 0.0f, 1.0f);
  let x_748 : f32 = u_xlat50;
  u_xlat79 = ((x_748 * 4.0f) + 2.0f);
  let x_752 : f32 = u_xlat25;
  u_xlat25 = min(x_752, 1.0f);
  let x_764 : f32 = x_762.x_MainLightShadowParams.y;
  u_xlatb80 = (0.0f < x_764);
  let x_766 : bool = u_xlatb80;
  if (x_766) {
    let x_770 : f32 = x_762.x_MainLightShadowParams.y;
    u_xlatb80 = (x_770 == 1.0f);
    let x_772 : bool = u_xlatb80;
    if (x_772) {
      let x_776 : vec4<f32> = vs_TEXCOORD8;
      let x_779 : vec4<f32> = x_762.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_776.x, x_776.y, x_776.x, x_776.y) + x_779);
      let x_782 : vec4<f32> = u_xlat6;
      let x_783 : vec2<f32> = vec2<f32>(x_782.x, x_782.y);
      let x_785 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_783.x, x_783.y, x_785);
      let x_797 : vec3<f32> = txVec0;
      let x_799 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_797.xy, x_797.z);
      u_xlat7.x = x_799;
      let x_802 : vec4<f32> = u_xlat6;
      let x_803 : vec2<f32> = vec2<f32>(x_802.z, x_802.w);
      let x_805 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_803.x, x_803.y, x_805);
      let x_812 : vec3<f32> = txVec1;
      let x_814 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_812.xy, x_812.z);
      u_xlat7.y = x_814;
      let x_816 : vec4<f32> = vs_TEXCOORD8;
      let x_819 : vec4<f32> = x_762.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_816.x, x_816.y, x_816.x, x_816.y) + x_819);
      let x_822 : vec4<f32> = u_xlat6;
      let x_823 : vec2<f32> = vec2<f32>(x_822.x, x_822.y);
      let x_825 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_823.x, x_823.y, x_825);
      let x_832 : vec3<f32> = txVec2;
      let x_834 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_832.xy, x_832.z);
      u_xlat7.z = x_834;
      let x_837 : vec4<f32> = u_xlat6;
      let x_838 : vec2<f32> = vec2<f32>(x_837.z, x_837.w);
      let x_840 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_838.x, x_838.y, x_840);
      let x_847 : vec3<f32> = txVec3;
      let x_849 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_847.xy, x_847.z);
      u_xlat7.w = x_849;
      let x_852 : vec4<f32> = u_xlat7;
      u_xlat80 = dot(x_852, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_859 : f32 = x_762.x_MainLightShadowParams.y;
      u_xlatb6 = (x_859 == 2.0f);
      let x_861 : bool = u_xlatb6;
      if (x_861) {
        let x_864 : vec4<f32> = vs_TEXCOORD8;
        let x_867 : vec4<f32> = x_762.x_MainLightShadowmapSize;
        let x_870 : vec2<f32> = ((vec2<f32>(x_864.x, x_864.y) * vec2<f32>(x_867.z, x_867.w)) + vec2<f32>(0.5f, 0.5f));
        let x_871 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_870.x, x_870.y, x_871.z, x_871.w);
        let x_873 : vec4<f32> = u_xlat6;
        let x_875 : vec2<f32> = floor(vec2<f32>(x_873.x, x_873.y));
        let x_876 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_875.x, x_875.y, x_876.z, x_876.w);
        let x_880 : vec4<f32> = vs_TEXCOORD8;
        let x_883 : vec4<f32> = x_762.x_MainLightShadowmapSize;
        let x_886 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_880.x, x_880.y) * vec2<f32>(x_883.z, x_883.w)) + -(vec2<f32>(x_886.x, x_886.y)));
        let x_890 : vec2<f32> = u_xlat56;
        u_xlat7 = (vec4<f32>(x_890.x, x_890.x, x_890.y, x_890.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_894 : vec4<f32> = u_xlat7;
        let x_896 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_894.x, x_894.x, x_894.z, x_894.z) * vec4<f32>(x_896.x, x_896.x, x_896.z, x_896.z));
        let x_899 : vec4<f32> = u_xlat8;
        let x_903 : vec2<f32> = (vec2<f32>(x_899.y, x_899.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_904 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_903.x, x_904.y, x_903.y, x_904.w);
        let x_906 : vec4<f32> = u_xlat8;
        let x_909 : vec2<f32> = u_xlat56;
        let x_911 : vec2<f32> = ((vec2<f32>(x_906.x, x_906.z) * vec2<f32>(0.5f, 0.5f)) + -(x_909));
        let x_912 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_911.x, x_911.y, x_912.z, x_912.w);
        let x_915 : vec2<f32> = u_xlat56;
        u_xlat58 = (-(x_915) + vec2<f32>(1.0f, 1.0f));
        let x_919 : vec2<f32> = u_xlat56;
        let x_921 : vec2<f32> = min(x_919, vec2<f32>(0.0f, 0.0f));
        let x_922 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_921.x, x_921.y, x_922.z, x_922.w);
        let x_924 : vec4<f32> = u_xlat9;
        let x_927 : vec4<f32> = u_xlat9;
        let x_930 : vec2<f32> = u_xlat58;
        let x_931 : vec2<f32> = ((-(vec2<f32>(x_924.x, x_924.y)) * vec2<f32>(x_927.x, x_927.y)) + x_930);
        let x_932 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_931.x, x_931.y, x_932.z, x_932.w);
        let x_934 : vec2<f32> = u_xlat56;
        u_xlat56 = max(x_934, vec2<f32>(0.0f, 0.0f));
        let x_936 : vec2<f32> = u_xlat56;
        let x_938 : vec2<f32> = u_xlat56;
        let x_940 : vec4<f32> = u_xlat7;
        u_xlat56 = ((-(x_936) * x_938) + vec2<f32>(x_940.y, x_940.w));
        let x_943 : vec4<f32> = u_xlat9;
        let x_945 : vec2<f32> = (vec2<f32>(x_943.x, x_943.y) + vec2<f32>(1.0f, 1.0f));
        let x_946 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_945.x, x_945.y, x_946.z, x_946.w);
        let x_948 : vec2<f32> = u_xlat56;
        u_xlat56 = (x_948 + vec2<f32>(1.0f, 1.0f));
        let x_950 : vec4<f32> = u_xlat8;
        let x_954 : vec2<f32> = (vec2<f32>(x_950.x, x_950.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_955 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_954.x, x_954.y, x_955.z, x_955.w);
        let x_957 : vec2<f32> = u_xlat58;
        let x_958 : vec2<f32> = (x_957 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_959 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_958.x, x_958.y, x_959.z, x_959.w);
        let x_961 : vec4<f32> = u_xlat9;
        let x_963 : vec2<f32> = (vec2<f32>(x_961.x, x_961.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_964 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_963.x, x_963.y, x_964.z, x_964.w);
        let x_966 : vec2<f32> = u_xlat56;
        let x_967 : vec2<f32> = (x_966 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_968 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_967.x, x_967.y, x_968.z, x_968.w);
        let x_970 : vec4<f32> = u_xlat7;
        u_xlat56 = (vec2<f32>(x_970.y, x_970.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_974 : f32 = u_xlat9.x;
        u_xlat10.z = x_974;
        let x_977 : f32 = u_xlat56.x;
        u_xlat10.w = x_977;
        let x_980 : f32 = u_xlat11.x;
        u_xlat8.z = x_980;
        let x_983 : f32 = u_xlat7.x;
        u_xlat8.w = x_983;
        let x_985 : vec4<f32> = u_xlat8;
        let x_987 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_985.z, x_985.w, x_985.x, x_985.z) + vec4<f32>(x_987.z, x_987.w, x_987.x, x_987.z));
        let x_991 : f32 = u_xlat10.y;
        u_xlat9.z = x_991;
        let x_994 : f32 = u_xlat56.y;
        u_xlat9.w = x_994;
        let x_997 : f32 = u_xlat8.y;
        u_xlat11.z = x_997;
        let x_1000 : f32 = u_xlat7.z;
        u_xlat11.w = x_1000;
        let x_1002 : vec4<f32> = u_xlat9;
        let x_1004 : vec4<f32> = u_xlat11;
        let x_1006 : vec3<f32> = (vec3<f32>(x_1002.z, x_1002.y, x_1002.w) + vec3<f32>(x_1004.z, x_1004.y, x_1004.w));
        let x_1007 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1006.x, x_1006.y, x_1006.z, x_1007.w);
        let x_1009 : vec4<f32> = u_xlat8;
        let x_1011 : vec4<f32> = u_xlat12;
        let x_1013 : vec3<f32> = (vec3<f32>(x_1009.x, x_1009.z, x_1009.w) / vec3<f32>(x_1011.z, x_1011.w, x_1011.y));
        let x_1014 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1013.x, x_1013.y, x_1013.z, x_1014.w);
        let x_1016 : vec4<f32> = u_xlat8;
        let x_1021 : vec3<f32> = (vec3<f32>(x_1016.x, x_1016.y, x_1016.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1022 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1021.x, x_1021.y, x_1021.z, x_1022.w);
        let x_1024 : vec4<f32> = u_xlat11;
        let x_1026 : vec4<f32> = u_xlat7;
        let x_1028 : vec3<f32> = (vec3<f32>(x_1024.z, x_1024.y, x_1024.w) / vec3<f32>(x_1026.x, x_1026.y, x_1026.z));
        let x_1029 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1028.x, x_1028.y, x_1028.z, x_1029.w);
        let x_1031 : vec4<f32> = u_xlat9;
        let x_1033 : vec3<f32> = (vec3<f32>(x_1031.x, x_1031.y, x_1031.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1034 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1033.x, x_1033.y, x_1033.z, x_1034.w);
        let x_1036 : vec4<f32> = u_xlat8;
        let x_1039 : vec4<f32> = x_762.x_MainLightShadowmapSize;
        let x_1041 : vec3<f32> = (vec3<f32>(x_1036.y, x_1036.x, x_1036.z) * vec3<f32>(x_1039.x, x_1039.x, x_1039.x));
        let x_1042 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1041.x, x_1041.y, x_1041.z, x_1042.w);
        let x_1044 : vec4<f32> = u_xlat9;
        let x_1047 : vec4<f32> = x_762.x_MainLightShadowmapSize;
        let x_1049 : vec3<f32> = (vec3<f32>(x_1044.x, x_1044.y, x_1044.z) * vec3<f32>(x_1047.y, x_1047.y, x_1047.y));
        let x_1050 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1049.x, x_1049.y, x_1049.z, x_1050.w);
        let x_1053 : f32 = u_xlat9.x;
        u_xlat8.w = x_1053;
        let x_1055 : vec4<f32> = u_xlat6;
        let x_1058 : vec4<f32> = x_762.x_MainLightShadowmapSize;
        let x_1061 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1055.x, x_1055.y, x_1055.x, x_1055.y) * vec4<f32>(x_1058.x, x_1058.y, x_1058.x, x_1058.y)) + vec4<f32>(x_1061.y, x_1061.w, x_1061.x, x_1061.w));
        let x_1064 : vec4<f32> = u_xlat6;
        let x_1067 : vec4<f32> = x_762.x_MainLightShadowmapSize;
        let x_1070 : vec4<f32> = u_xlat8;
        u_xlat56 = ((vec2<f32>(x_1064.x, x_1064.y) * vec2<f32>(x_1067.x, x_1067.y)) + vec2<f32>(x_1070.z, x_1070.w));
        let x_1074 : f32 = u_xlat8.y;
        u_xlat9.w = x_1074;
        let x_1076 : vec4<f32> = u_xlat9;
        let x_1077 : vec2<f32> = vec2<f32>(x_1076.y, x_1076.z);
        let x_1078 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1078.x, x_1077.x, x_1078.z, x_1077.y);
        let x_1080 : vec4<f32> = u_xlat6;
        let x_1083 : vec4<f32> = x_762.x_MainLightShadowmapSize;
        let x_1086 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1080.x, x_1080.y, x_1080.x, x_1080.y) * vec4<f32>(x_1083.x, x_1083.y, x_1083.x, x_1083.y)) + vec4<f32>(x_1086.x, x_1086.y, x_1086.z, x_1086.y));
        let x_1089 : vec4<f32> = u_xlat6;
        let x_1092 : vec4<f32> = x_762.x_MainLightShadowmapSize;
        let x_1095 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1089.x, x_1089.y, x_1089.x, x_1089.y) * vec4<f32>(x_1092.x, x_1092.y, x_1092.x, x_1092.y)) + vec4<f32>(x_1095.w, x_1095.y, x_1095.w, x_1095.z));
        let x_1098 : vec4<f32> = u_xlat6;
        let x_1101 : vec4<f32> = x_762.x_MainLightShadowmapSize;
        let x_1104 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1098.x, x_1098.y, x_1098.x, x_1098.y) * vec4<f32>(x_1101.x, x_1101.y, x_1101.x, x_1101.y)) + vec4<f32>(x_1104.x, x_1104.w, x_1104.z, x_1104.w));
        let x_1107 : vec4<f32> = u_xlat7;
        let x_1109 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_1107.x, x_1107.x, x_1107.x, x_1107.y) * vec4<f32>(x_1109.z, x_1109.w, x_1109.y, x_1109.z));
        let x_1113 : vec4<f32> = u_xlat7;
        let x_1115 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_1113.y, x_1113.y, x_1113.z, x_1113.z) * x_1115);
        let x_1118 : f32 = u_xlat7.z;
        let x_1120 : f32 = u_xlat12.y;
        u_xlat6.x = (x_1118 * x_1120);
        let x_1124 : vec4<f32> = u_xlat10;
        let x_1125 : vec2<f32> = vec2<f32>(x_1124.x, x_1124.y);
        let x_1127 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_1125.x, x_1125.y, x_1127);
        let x_1135 : vec3<f32> = txVec4;
        let x_1137 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1135.xy, x_1135.z);
        u_xlat31.x = x_1137;
        let x_1140 : vec4<f32> = u_xlat10;
        let x_1141 : vec2<f32> = vec2<f32>(x_1140.z, x_1140.w);
        let x_1143 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_1141.x, x_1141.y, x_1143);
        let x_1150 : vec3<f32> = txVec5;
        let x_1152 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1150.xy, x_1150.z);
        u_xlat7.x = x_1152;
        let x_1155 : f32 = u_xlat7.x;
        let x_1157 : f32 = u_xlat13.y;
        u_xlat7.x = (x_1155 * x_1157);
        let x_1161 : f32 = u_xlat13.x;
        let x_1163 : f32 = u_xlat31.x;
        let x_1166 : f32 = u_xlat7.x;
        u_xlat31.x = ((x_1161 * x_1163) + x_1166);
        let x_1170 : vec2<f32> = u_xlat56;
        let x_1172 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_1170.x, x_1170.y, x_1172);
        let x_1179 : vec3<f32> = txVec6;
        let x_1181 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1179.xy, x_1179.z);
        u_xlat56.x = x_1181;
        let x_1184 : f32 = u_xlat13.z;
        let x_1186 : f32 = u_xlat56.x;
        let x_1189 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1184 * x_1186) + x_1189);
        let x_1193 : vec4<f32> = u_xlat9;
        let x_1194 : vec2<f32> = vec2<f32>(x_1193.x, x_1193.y);
        let x_1196 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_1194.x, x_1194.y, x_1196);
        let x_1203 : vec3<f32> = txVec7;
        let x_1205 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1203.xy, x_1203.z);
        u_xlat56.x = x_1205;
        let x_1208 : f32 = u_xlat13.w;
        let x_1210 : f32 = u_xlat56.x;
        let x_1213 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1208 * x_1210) + x_1213);
        let x_1217 : vec4<f32> = u_xlat11;
        let x_1218 : vec2<f32> = vec2<f32>(x_1217.x, x_1217.y);
        let x_1220 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_1218.x, x_1218.y, x_1220);
        let x_1227 : vec3<f32> = txVec8;
        let x_1229 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1227.xy, x_1227.z);
        u_xlat56.x = x_1229;
        let x_1232 : f32 = u_xlat14.x;
        let x_1234 : f32 = u_xlat56.x;
        let x_1237 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1232 * x_1234) + x_1237);
        let x_1241 : vec4<f32> = u_xlat11;
        let x_1242 : vec2<f32> = vec2<f32>(x_1241.z, x_1241.w);
        let x_1244 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_1242.x, x_1242.y, x_1244);
        let x_1251 : vec3<f32> = txVec9;
        let x_1253 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1251.xy, x_1251.z);
        u_xlat56.x = x_1253;
        let x_1256 : f32 = u_xlat14.y;
        let x_1258 : f32 = u_xlat56.x;
        let x_1261 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1256 * x_1258) + x_1261);
        let x_1265 : vec4<f32> = u_xlat9;
        let x_1266 : vec2<f32> = vec2<f32>(x_1265.z, x_1265.w);
        let x_1268 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_1266.x, x_1266.y, x_1268);
        let x_1275 : vec3<f32> = txVec10;
        let x_1277 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1275.xy, x_1275.z);
        u_xlat56.x = x_1277;
        let x_1280 : f32 = u_xlat14.z;
        let x_1282 : f32 = u_xlat56.x;
        let x_1285 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1280 * x_1282) + x_1285);
        let x_1289 : vec4<f32> = u_xlat8;
        let x_1290 : vec2<f32> = vec2<f32>(x_1289.x, x_1289.y);
        let x_1292 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_1290.x, x_1290.y, x_1292);
        let x_1299 : vec3<f32> = txVec11;
        let x_1301 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1299.xy, x_1299.z);
        u_xlat56.x = x_1301;
        let x_1304 : f32 = u_xlat14.w;
        let x_1306 : f32 = u_xlat56.x;
        let x_1309 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1304 * x_1306) + x_1309);
        let x_1313 : vec4<f32> = u_xlat8;
        let x_1314 : vec2<f32> = vec2<f32>(x_1313.z, x_1313.w);
        let x_1316 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_1314.x, x_1314.y, x_1316);
        let x_1323 : vec3<f32> = txVec12;
        let x_1325 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1323.xy, x_1323.z);
        u_xlat56.x = x_1325;
        let x_1328 : f32 = u_xlat6.x;
        let x_1330 : f32 = u_xlat56.x;
        let x_1333 : f32 = u_xlat31.x;
        u_xlat80 = ((x_1328 * x_1330) + x_1333);
      } else {
        let x_1336 : vec4<f32> = vs_TEXCOORD8;
        let x_1339 : vec4<f32> = x_762.x_MainLightShadowmapSize;
        let x_1342 : vec2<f32> = ((vec2<f32>(x_1336.x, x_1336.y) * vec2<f32>(x_1339.z, x_1339.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1343 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1342.x, x_1342.y, x_1343.z, x_1343.w);
        let x_1345 : vec4<f32> = u_xlat6;
        let x_1347 : vec2<f32> = floor(vec2<f32>(x_1345.x, x_1345.y));
        let x_1348 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1347.x, x_1347.y, x_1348.z, x_1348.w);
        let x_1350 : vec4<f32> = vs_TEXCOORD8;
        let x_1353 : vec4<f32> = x_762.x_MainLightShadowmapSize;
        let x_1356 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_1350.x, x_1350.y) * vec2<f32>(x_1353.z, x_1353.w)) + -(vec2<f32>(x_1356.x, x_1356.y)));
        let x_1360 : vec2<f32> = u_xlat56;
        u_xlat7 = (vec4<f32>(x_1360.x, x_1360.x, x_1360.y, x_1360.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1363 : vec4<f32> = u_xlat7;
        let x_1365 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1363.x, x_1363.x, x_1363.z, x_1363.z) * vec4<f32>(x_1365.x, x_1365.x, x_1365.z, x_1365.z));
        let x_1368 : vec4<f32> = u_xlat8;
        let x_1372 : vec2<f32> = (vec2<f32>(x_1368.y, x_1368.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1373 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1373.x, x_1372.x, x_1373.z, x_1372.y);
        let x_1375 : vec4<f32> = u_xlat8;
        let x_1378 : vec2<f32> = u_xlat56;
        let x_1380 : vec2<f32> = ((vec2<f32>(x_1375.x, x_1375.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1378));
        let x_1381 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1380.x, x_1381.y, x_1380.y, x_1381.w);
        let x_1383 : vec2<f32> = u_xlat56;
        let x_1385 : vec2<f32> = (-(x_1383) + vec2<f32>(1.0f, 1.0f));
        let x_1386 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1385.x, x_1385.y, x_1386.z, x_1386.w);
        let x_1388 : vec2<f32> = u_xlat56;
        u_xlat58 = min(x_1388, vec2<f32>(0.0f, 0.0f));
        let x_1390 : vec2<f32> = u_xlat58;
        let x_1392 : vec2<f32> = u_xlat58;
        let x_1394 : vec4<f32> = u_xlat8;
        let x_1396 : vec2<f32> = ((-(x_1390) * x_1392) + vec2<f32>(x_1394.x, x_1394.y));
        let x_1397 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1396.x, x_1396.y, x_1397.z, x_1397.w);
        let x_1399 : vec2<f32> = u_xlat56;
        u_xlat58 = max(x_1399, vec2<f32>(0.0f, 0.0f));
        let x_1402 : vec2<f32> = u_xlat58;
        let x_1404 : vec2<f32> = u_xlat58;
        let x_1406 : vec4<f32> = u_xlat7;
        let x_1408 : vec2<f32> = ((-(x_1402) * x_1404) + vec2<f32>(x_1406.y, x_1406.w));
        let x_1409 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_1408.x, x_1409.y, x_1408.y);
        let x_1411 : vec4<f32> = u_xlat8;
        let x_1414 : vec2<f32> = (vec2<f32>(x_1411.x, x_1411.y) + vec2<f32>(2.0f, 2.0f));
        let x_1415 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1414.x, x_1414.y, x_1415.z, x_1415.w);
        let x_1417 : vec3<f32> = u_xlat32;
        let x_1419 : vec2<f32> = (vec2<f32>(x_1417.x, x_1417.z) + vec2<f32>(2.0f, 2.0f));
        let x_1420 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1420.x, x_1419.x, x_1420.z, x_1419.y);
        let x_1423 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1423 * 0.08163200318813323975f);
        let x_1427 : vec4<f32> = u_xlat7;
        let x_1430 : vec3<f32> = (vec3<f32>(x_1427.z, x_1427.x, x_1427.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1431 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1430.x, x_1430.y, x_1430.z, x_1431.w);
        let x_1433 : vec4<f32> = u_xlat8;
        let x_1436 : vec2<f32> = (vec2<f32>(x_1433.x, x_1433.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1437 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1436.x, x_1436.y, x_1437.z, x_1437.w);
        let x_1440 : f32 = u_xlat11.y;
        u_xlat10.x = x_1440;
        let x_1442 : vec2<f32> = u_xlat56;
        let x_1449 : vec2<f32> = ((vec2<f32>(x_1442.x, x_1442.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1450 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1450.x, x_1449.x, x_1450.z, x_1449.y);
        let x_1452 : vec2<f32> = u_xlat56;
        let x_1456 : vec2<f32> = ((vec2<f32>(x_1452.x, x_1452.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1457 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1456.x, x_1457.y, x_1456.y, x_1457.w);
        let x_1460 : f32 = u_xlat7.x;
        u_xlat8.y = x_1460;
        let x_1463 : f32 = u_xlat9.y;
        u_xlat8.w = x_1463;
        let x_1465 : vec4<f32> = u_xlat8;
        let x_1466 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1465 + x_1466);
        let x_1468 : vec2<f32> = u_xlat56;
        let x_1471 : vec2<f32> = ((vec2<f32>(x_1468.y, x_1468.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1472 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1472.x, x_1471.x, x_1472.z, x_1471.y);
        let x_1474 : vec2<f32> = u_xlat56;
        let x_1477 : vec2<f32> = ((vec2<f32>(x_1474.y, x_1474.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1478 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1477.x, x_1478.y, x_1477.y, x_1478.w);
        let x_1481 : f32 = u_xlat7.y;
        u_xlat9.y = x_1481;
        let x_1483 : vec4<f32> = u_xlat9;
        let x_1484 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1483 + x_1484);
        let x_1486 : vec4<f32> = u_xlat8;
        let x_1487 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1486 / x_1487);
        let x_1489 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1489 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1495 : vec4<f32> = u_xlat9;
        let x_1496 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1495 / x_1496);
        let x_1498 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1498 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1500 : vec4<f32> = u_xlat8;
        let x_1503 : vec4<f32> = x_762.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1500.w, x_1500.x, x_1500.y, x_1500.z) * vec4<f32>(x_1503.x, x_1503.x, x_1503.x, x_1503.x));
        let x_1506 : vec4<f32> = u_xlat9;
        let x_1509 : vec4<f32> = x_762.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1506.x, x_1506.w, x_1506.y, x_1506.z) * vec4<f32>(x_1509.y, x_1509.y, x_1509.y, x_1509.y));
        let x_1512 : vec4<f32> = u_xlat8;
        let x_1513 : vec3<f32> = vec3<f32>(x_1512.y, x_1512.z, x_1512.w);
        let x_1514 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1513.x, x_1514.y, x_1513.y, x_1513.z);
        let x_1517 : f32 = u_xlat9.x;
        u_xlat11.y = x_1517;
        let x_1519 : vec4<f32> = u_xlat6;
        let x_1522 : vec4<f32> = x_762.x_MainLightShadowmapSize;
        let x_1525 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1519.x, x_1519.y, x_1519.x, x_1519.y) * vec4<f32>(x_1522.x, x_1522.y, x_1522.x, x_1522.y)) + vec4<f32>(x_1525.x, x_1525.y, x_1525.z, x_1525.y));
        let x_1528 : vec4<f32> = u_xlat6;
        let x_1531 : vec4<f32> = x_762.x_MainLightShadowmapSize;
        let x_1534 : vec4<f32> = u_xlat11;
        u_xlat56 = ((vec2<f32>(x_1528.x, x_1528.y) * vec2<f32>(x_1531.x, x_1531.y)) + vec2<f32>(x_1534.w, x_1534.y));
        let x_1538 : f32 = u_xlat11.y;
        u_xlat8.y = x_1538;
        let x_1541 : f32 = u_xlat9.z;
        u_xlat11.y = x_1541;
        let x_1543 : vec4<f32> = u_xlat6;
        let x_1546 : vec4<f32> = x_762.x_MainLightShadowmapSize;
        let x_1549 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1543.x, x_1543.y, x_1543.x, x_1543.y) * vec4<f32>(x_1546.x, x_1546.y, x_1546.x, x_1546.y)) + vec4<f32>(x_1549.x, x_1549.y, x_1549.z, x_1549.y));
        let x_1552 : vec4<f32> = u_xlat6;
        let x_1555 : vec4<f32> = x_762.x_MainLightShadowmapSize;
        let x_1558 : vec4<f32> = u_xlat11;
        let x_1560 : vec2<f32> = ((vec2<f32>(x_1552.x, x_1552.y) * vec2<f32>(x_1555.x, x_1555.y)) + vec2<f32>(x_1558.w, x_1558.y));
        let x_1561 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1560.x, x_1560.y, x_1561.z, x_1561.w);
        let x_1564 : f32 = u_xlat11.y;
        u_xlat8.z = x_1564;
        let x_1567 : vec4<f32> = u_xlat6;
        let x_1570 : vec4<f32> = x_762.x_MainLightShadowmapSize;
        let x_1573 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1567.x, x_1567.y, x_1567.x, x_1567.y) * vec4<f32>(x_1570.x, x_1570.y, x_1570.x, x_1570.y)) + vec4<f32>(x_1573.x, x_1573.y, x_1573.x, x_1573.z));
        let x_1577 : f32 = u_xlat9.w;
        u_xlat11.y = x_1577;
        let x_1580 : vec4<f32> = u_xlat6;
        let x_1583 : vec4<f32> = x_762.x_MainLightShadowmapSize;
        let x_1586 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1580.x, x_1580.y, x_1580.x, x_1580.y) * vec4<f32>(x_1583.x, x_1583.y, x_1583.x, x_1583.y)) + vec4<f32>(x_1586.x, x_1586.y, x_1586.z, x_1586.y));
        let x_1590 : vec4<f32> = u_xlat6;
        let x_1593 : vec4<f32> = x_762.x_MainLightShadowmapSize;
        let x_1596 : vec4<f32> = u_xlat11;
        u_xlat33 = ((vec2<f32>(x_1590.x, x_1590.y) * vec2<f32>(x_1593.x, x_1593.y)) + vec2<f32>(x_1596.w, x_1596.y));
        let x_1600 : f32 = u_xlat11.y;
        u_xlat8.w = x_1600;
        let x_1603 : vec4<f32> = u_xlat6;
        let x_1606 : vec4<f32> = x_762.x_MainLightShadowmapSize;
        let x_1609 : vec4<f32> = u_xlat8;
        u_xlat64 = ((vec2<f32>(x_1603.x, x_1603.y) * vec2<f32>(x_1606.x, x_1606.y)) + vec2<f32>(x_1609.x, x_1609.w));
        let x_1612 : vec4<f32> = u_xlat11;
        let x_1613 : vec3<f32> = vec3<f32>(x_1612.x, x_1612.z, x_1612.w);
        let x_1614 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1613.x, x_1614.y, x_1613.y, x_1613.z);
        let x_1616 : vec4<f32> = u_xlat6;
        let x_1619 : vec4<f32> = x_762.x_MainLightShadowmapSize;
        let x_1622 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1616.x, x_1616.y, x_1616.x, x_1616.y) * vec4<f32>(x_1619.x, x_1619.y, x_1619.x, x_1619.y)) + vec4<f32>(x_1622.x, x_1622.y, x_1622.z, x_1622.y));
        let x_1626 : vec4<f32> = u_xlat6;
        let x_1629 : vec4<f32> = x_762.x_MainLightShadowmapSize;
        let x_1632 : vec4<f32> = u_xlat9;
        u_xlat59 = ((vec2<f32>(x_1626.x, x_1626.y) * vec2<f32>(x_1629.x, x_1629.y)) + vec2<f32>(x_1632.w, x_1632.y));
        let x_1636 : f32 = u_xlat8.x;
        u_xlat9.x = x_1636;
        let x_1638 : vec4<f32> = u_xlat6;
        let x_1641 : vec4<f32> = x_762.x_MainLightShadowmapSize;
        let x_1644 : vec4<f32> = u_xlat9;
        let x_1646 : vec2<f32> = ((vec2<f32>(x_1638.x, x_1638.y) * vec2<f32>(x_1641.x, x_1641.y)) + vec2<f32>(x_1644.x, x_1644.y));
        let x_1647 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1646.x, x_1646.y, x_1647.z, x_1647.w);
        let x_1650 : vec4<f32> = u_xlat7;
        let x_1652 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1650.x, x_1650.x, x_1650.x, x_1650.x) * x_1652);
        let x_1655 : vec4<f32> = u_xlat7;
        let x_1657 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1655.y, x_1655.y, x_1655.y, x_1655.y) * x_1657);
        let x_1660 : vec4<f32> = u_xlat7;
        let x_1662 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1660.z, x_1660.z, x_1660.z, x_1660.z) * x_1662);
        let x_1664 : vec4<f32> = u_xlat7;
        let x_1666 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1664.w, x_1664.w, x_1664.w, x_1664.w) * x_1666);
        let x_1669 : vec4<f32> = u_xlat12;
        let x_1670 : vec2<f32> = vec2<f32>(x_1669.x, x_1669.y);
        let x_1672 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1670.x, x_1670.y, x_1672);
        let x_1679 : vec3<f32> = txVec13;
        let x_1681 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1679.xy, x_1679.z);
        u_xlat8.x = x_1681;
        let x_1684 : vec4<f32> = u_xlat12;
        let x_1685 : vec2<f32> = vec2<f32>(x_1684.z, x_1684.w);
        let x_1687 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1685.x, x_1685.y, x_1687);
        let x_1695 : vec3<f32> = txVec14;
        let x_1697 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1695.xy, x_1695.z);
        u_xlat83 = x_1697;
        let x_1698 : f32 = u_xlat83;
        let x_1700 : f32 = u_xlat17.y;
        u_xlat83 = (x_1698 * x_1700);
        let x_1703 : f32 = u_xlat17.x;
        let x_1705 : f32 = u_xlat8.x;
        let x_1707 : f32 = u_xlat83;
        u_xlat8.x = ((x_1703 * x_1705) + x_1707);
        let x_1711 : vec2<f32> = u_xlat56;
        let x_1713 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1711.x, x_1711.y, x_1713);
        let x_1720 : vec3<f32> = txVec15;
        let x_1722 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1720.xy, x_1720.z);
        u_xlat56.x = x_1722;
        let x_1725 : f32 = u_xlat17.z;
        let x_1727 : f32 = u_xlat56.x;
        let x_1730 : f32 = u_xlat8.x;
        u_xlat56.x = ((x_1725 * x_1727) + x_1730);
        let x_1734 : vec4<f32> = u_xlat15;
        let x_1735 : vec2<f32> = vec2<f32>(x_1734.x, x_1734.y);
        let x_1737 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1735.x, x_1735.y, x_1737);
        let x_1745 : vec3<f32> = txVec16;
        let x_1747 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1745.xy, x_1745.z);
        u_xlat81 = x_1747;
        let x_1749 : f32 = u_xlat17.w;
        let x_1750 : f32 = u_xlat81;
        let x_1753 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1749 * x_1750) + x_1753);
        let x_1757 : vec4<f32> = u_xlat13;
        let x_1758 : vec2<f32> = vec2<f32>(x_1757.x, x_1757.y);
        let x_1760 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1758.x, x_1758.y, x_1760);
        let x_1767 : vec3<f32> = txVec17;
        let x_1769 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1767.xy, x_1767.z);
        u_xlat81 = x_1769;
        let x_1771 : f32 = u_xlat18.x;
        let x_1772 : f32 = u_xlat81;
        let x_1775 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1771 * x_1772) + x_1775);
        let x_1779 : vec4<f32> = u_xlat13;
        let x_1780 : vec2<f32> = vec2<f32>(x_1779.z, x_1779.w);
        let x_1782 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1780.x, x_1780.y, x_1782);
        let x_1789 : vec3<f32> = txVec18;
        let x_1791 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1789.xy, x_1789.z);
        u_xlat81 = x_1791;
        let x_1793 : f32 = u_xlat18.y;
        let x_1794 : f32 = u_xlat81;
        let x_1797 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1793 * x_1794) + x_1797);
        let x_1801 : vec4<f32> = u_xlat14;
        let x_1802 : vec2<f32> = vec2<f32>(x_1801.x, x_1801.y);
        let x_1804 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1802.x, x_1802.y, x_1804);
        let x_1811 : vec3<f32> = txVec19;
        let x_1813 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1811.xy, x_1811.z);
        u_xlat81 = x_1813;
        let x_1815 : f32 = u_xlat18.z;
        let x_1816 : f32 = u_xlat81;
        let x_1819 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1815 * x_1816) + x_1819);
        let x_1823 : vec4<f32> = u_xlat15;
        let x_1824 : vec2<f32> = vec2<f32>(x_1823.z, x_1823.w);
        let x_1826 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1824.x, x_1824.y, x_1826);
        let x_1833 : vec3<f32> = txVec20;
        let x_1835 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1833.xy, x_1833.z);
        u_xlat81 = x_1835;
        let x_1837 : f32 = u_xlat18.w;
        let x_1838 : f32 = u_xlat81;
        let x_1841 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1837 * x_1838) + x_1841);
        let x_1845 : vec4<f32> = u_xlat16;
        let x_1846 : vec2<f32> = vec2<f32>(x_1845.x, x_1845.y);
        let x_1848 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1846.x, x_1846.y, x_1848);
        let x_1855 : vec3<f32> = txVec21;
        let x_1857 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1855.xy, x_1855.z);
        u_xlat81 = x_1857;
        let x_1859 : f32 = u_xlat19.x;
        let x_1860 : f32 = u_xlat81;
        let x_1863 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1859 * x_1860) + x_1863);
        let x_1867 : vec4<f32> = u_xlat16;
        let x_1868 : vec2<f32> = vec2<f32>(x_1867.z, x_1867.w);
        let x_1870 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1868.x, x_1868.y, x_1870);
        let x_1877 : vec3<f32> = txVec22;
        let x_1879 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1877.xy, x_1877.z);
        u_xlat81 = x_1879;
        let x_1881 : f32 = u_xlat19.y;
        let x_1882 : f32 = u_xlat81;
        let x_1885 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1881 * x_1882) + x_1885);
        let x_1889 : vec2<f32> = u_xlat33;
        let x_1891 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1889.x, x_1889.y, x_1891);
        let x_1898 : vec3<f32> = txVec23;
        let x_1900 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1898.xy, x_1898.z);
        u_xlat81 = x_1900;
        let x_1902 : f32 = u_xlat19.z;
        let x_1903 : f32 = u_xlat81;
        let x_1906 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1902 * x_1903) + x_1906);
        let x_1910 : vec2<f32> = u_xlat64;
        let x_1912 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1910.x, x_1910.y, x_1912);
        let x_1919 : vec3<f32> = txVec24;
        let x_1921 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1919.xy, x_1919.z);
        u_xlat81 = x_1921;
        let x_1923 : f32 = u_xlat19.w;
        let x_1924 : f32 = u_xlat81;
        let x_1927 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1923 * x_1924) + x_1927);
        let x_1931 : vec4<f32> = u_xlat11;
        let x_1932 : vec2<f32> = vec2<f32>(x_1931.x, x_1931.y);
        let x_1934 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1932.x, x_1932.y, x_1934);
        let x_1941 : vec3<f32> = txVec25;
        let x_1943 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1941.xy, x_1941.z);
        u_xlat81 = x_1943;
        let x_1945 : f32 = u_xlat7.x;
        let x_1946 : f32 = u_xlat81;
        let x_1949 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1945 * x_1946) + x_1949);
        let x_1953 : vec4<f32> = u_xlat11;
        let x_1954 : vec2<f32> = vec2<f32>(x_1953.z, x_1953.w);
        let x_1956 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1954.x, x_1954.y, x_1956);
        let x_1963 : vec3<f32> = txVec26;
        let x_1965 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1963.xy, x_1963.z);
        u_xlat81 = x_1965;
        let x_1967 : f32 = u_xlat7.y;
        let x_1968 : f32 = u_xlat81;
        let x_1971 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1967 * x_1968) + x_1971);
        let x_1975 : vec2<f32> = u_xlat59;
        let x_1977 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_1975.x, x_1975.y, x_1977);
        let x_1984 : vec3<f32> = txVec27;
        let x_1986 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1984.xy, x_1984.z);
        u_xlat81 = x_1986;
        let x_1988 : f32 = u_xlat7.z;
        let x_1989 : f32 = u_xlat81;
        let x_1992 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1988 * x_1989) + x_1992);
        let x_1996 : vec4<f32> = u_xlat6;
        let x_1997 : vec2<f32> = vec2<f32>(x_1996.x, x_1996.y);
        let x_1999 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_1997.x, x_1997.y, x_1999);
        let x_2006 : vec3<f32> = txVec28;
        let x_2008 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2006.xy, x_2006.z);
        u_xlat6.x = x_2008;
        let x_2011 : f32 = u_xlat7.w;
        let x_2013 : f32 = u_xlat6.x;
        let x_2016 : f32 = u_xlat56.x;
        u_xlat80 = ((x_2011 * x_2013) + x_2016);
      }
    }
  } else {
    let x_2020 : vec4<f32> = vs_TEXCOORD8;
    let x_2021 : vec2<f32> = vec2<f32>(x_2020.x, x_2020.y);
    let x_2023 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_2021.x, x_2021.y, x_2023);
    let x_2030 : vec3<f32> = txVec29;
    let x_2032 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2030.xy, x_2030.z);
    u_xlat80 = x_2032;
  }
  let x_2034 : f32 = x_762.x_MainLightShadowParams.x;
  u_xlat6.x = (-(x_2034) + 1.0f);
  let x_2038 : f32 = u_xlat80;
  let x_2040 : f32 = x_762.x_MainLightShadowParams.x;
  let x_2043 : f32 = u_xlat6.x;
  u_xlat80 = ((x_2038 * x_2040) + x_2043);
  let x_2046 : f32 = vs_TEXCOORD8.z;
  u_xlatb6 = (0.0f >= x_2046);
  let x_2050 : f32 = vs_TEXCOORD8.z;
  u_xlatb31 = (x_2050 >= 1.0f);
  let x_2052 : bool = u_xlatb31;
  let x_2053 : bool = u_xlatb6;
  u_xlatb6 = (x_2052 | x_2053);
  let x_2055 : bool = u_xlatb6;
  let x_2056 : f32 = u_xlat80;
  u_xlat80 = select(x_2056, 1.0f, x_2055);
  let x_2058 : vec3<f32> = vs_TEXCOORD7;
  let x_2060 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_2062 : vec3<f32> = (x_2058 + -(x_2060));
  let x_2063 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2062.x, x_2062.y, x_2062.z, x_2063.w);
  let x_2065 : vec4<f32> = u_xlat6;
  let x_2067 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_2065.x, x_2065.y, x_2065.z), vec3<f32>(x_2067.x, x_2067.y, x_2067.z));
  let x_2072 : f32 = u_xlat6.x;
  let x_2074 : f32 = x_762.x_MainLightShadowParams.z;
  let x_2077 : f32 = x_762.x_MainLightShadowParams.w;
  u_xlat31.x = ((x_2072 * x_2074) + x_2077);
  let x_2081 : f32 = u_xlat31.x;
  u_xlat31.x = clamp(x_2081, 0.0f, 1.0f);
  let x_2084 : f32 = u_xlat80;
  u_xlat56.x = (-(x_2084) + 1.0f);
  let x_2089 : f32 = u_xlat31.x;
  let x_2091 : f32 = u_xlat56.x;
  let x_2093 : f32 = u_xlat80;
  u_xlat80 = ((x_2089 * x_2091) + x_2093);
  let x_2095 : vec4<f32> = u_xlat1;
  let x_2098 : vec3<f32> = u_xlat2;
  u_xlat31.x = dot(-(vec3<f32>(x_2095.x, x_2095.y, x_2095.z)), x_2098);
  let x_2102 : f32 = u_xlat31.x;
  let x_2104 : f32 = u_xlat31.x;
  u_xlat31.x = (x_2102 + x_2104);
  let x_2107 : vec3<f32> = u_xlat2;
  let x_2108 : vec3<f32> = u_xlat31;
  let x_2112 : vec4<f32> = u_xlat1;
  u_xlat31 = ((x_2107 * -(vec3<f32>(x_2108.x, x_2108.x, x_2108.x))) + -(vec3<f32>(x_2112.x, x_2112.y, x_2112.z)));
  let x_2116 : vec3<f32> = u_xlat2;
  let x_2117 : vec4<f32> = u_xlat1;
  u_xlat7.x = dot(x_2116, vec3<f32>(x_2117.x, x_2117.y, x_2117.z));
  let x_2122 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_2122, 0.0f, 1.0f);
  let x_2126 : f32 = u_xlat7.x;
  u_xlat7.x = (-(x_2126) + 1.0f);
  let x_2131 : f32 = u_xlat7.x;
  let x_2133 : f32 = u_xlat7.x;
  u_xlat7.x = (x_2131 * x_2133);
  let x_2137 : f32 = u_xlat7.x;
  let x_2139 : f32 = u_xlat7.x;
  u_xlat7.x = (x_2137 * x_2139);
  let x_2143 : f32 = u_xlat0.x;
  u_xlat32.x = ((-(x_2143) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2151 : f32 = u_xlat0.x;
  let x_2153 : f32 = u_xlat32.x;
  u_xlat0.x = (x_2151 * x_2153);
  let x_2157 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2157 * 6.0f);
  let x_2169 : vec3<f32> = u_xlat31;
  let x_2171 : f32 = u_xlat0.x;
  let x_2172 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_2169, x_2171);
  u_xlat8 = x_2172;
  let x_2174 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2174 + -1.0f);
  let x_2182 : f32 = x_2180.unity_SpecCube0_HDR.w;
  let x_2184 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2182 * x_2184) + 1.0f);
  let x_2189 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2189, 0.0f);
  let x_2193 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2193);
  let x_2197 : f32 = u_xlat0.x;
  let x_2199 : f32 = x_2180.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2197 * x_2199);
  let x_2203 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2203);
  let x_2207 : f32 = u_xlat0.x;
  let x_2209 : f32 = x_2180.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2207 * x_2209);
  let x_2212 : vec4<f32> = u_xlat8;
  let x_2214 : vec3<f32> = u_xlat0;
  u_xlat31 = (vec3<f32>(x_2212.x, x_2212.y, x_2212.z) * vec3<f32>(x_2214.x, x_2214.x, x_2214.x));
  let x_2217 : f32 = u_xlat50;
  let x_2219 : f32 = u_xlat50;
  let x_2223 : vec2<f32> = ((vec2<f32>(x_2217, x_2217) * vec2<f32>(x_2219, x_2219)) + vec2<f32>(-1.0f, 1.0f));
  let x_2224 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2223.x, x_2224.y, x_2223.y);
  let x_2227 : f32 = u_xlat0.z;
  u_xlat50 = (1.0f / x_2227);
  let x_2229 : vec4<f32> = u_xlat5;
  let x_2232 : f32 = u_xlat78;
  u_xlat32 = (-(vec3<f32>(x_2229.x, x_2229.y, x_2229.z)) + vec3<f32>(x_2232, x_2232, x_2232));
  let x_2235 : vec4<f32> = u_xlat7;
  let x_2237 : vec3<f32> = u_xlat32;
  let x_2239 : vec4<f32> = u_xlat5;
  let x_2241 : vec3<f32> = ((vec3<f32>(x_2235.x, x_2235.x, x_2235.x) * x_2237) + vec3<f32>(x_2239.x, x_2239.y, x_2239.z));
  let x_2242 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2241.x, x_2241.y, x_2241.z, x_2242.w);
  let x_2244 : f32 = u_xlat50;
  let x_2246 : vec4<f32> = u_xlat7;
  let x_2248 : vec3<f32> = (vec3<f32>(x_2244, x_2244, x_2244) * vec3<f32>(x_2246.x, x_2246.y, x_2246.z));
  let x_2249 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2248.x, x_2248.y, x_2248.z, x_2249.w);
  let x_2251 : vec3<f32> = u_xlat31;
  let x_2252 : vec4<f32> = u_xlat7;
  u_xlat31 = (x_2251 * vec3<f32>(x_2252.x, x_2252.y, x_2252.z));
  let x_2255 : vec4<f32> = u_xlat3;
  let x_2257 : vec4<f32> = u_xlat4;
  let x_2260 : vec3<f32> = u_xlat31;
  let x_2261 : vec3<f32> = ((vec3<f32>(x_2255.x, x_2255.y, x_2255.z) * vec3<f32>(x_2257.x, x_2257.y, x_2257.z)) + x_2260);
  let x_2262 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2261.x, x_2261.y, x_2261.z, x_2262.w);
  let x_2264 : f32 = u_xlat80;
  let x_2266 : f32 = x_2180.unity_LightData.z;
  u_xlat50 = (x_2264 * x_2266);
  let x_2268 : vec3<f32> = u_xlat2;
  let x_2270 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat78 = dot(x_2268, vec3<f32>(x_2270.x, x_2270.y, x_2270.z));
  let x_2273 : f32 = u_xlat78;
  u_xlat78 = clamp(x_2273, 0.0f, 1.0f);
  let x_2275 : f32 = u_xlat50;
  let x_2276 : f32 = u_xlat78;
  u_xlat50 = (x_2275 * x_2276);
  let x_2278 : f32 = u_xlat50;
  let x_2281 : vec4<f32> = x_29.x_MainLightColor;
  u_xlat31 = (vec3<f32>(x_2278, x_2278, x_2278) * vec3<f32>(x_2281.x, x_2281.y, x_2281.z));
  let x_2284 : vec4<f32> = u_xlat1;
  let x_2287 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2289 : vec3<f32> = (vec3<f32>(x_2284.x, x_2284.y, x_2284.z) + vec3<f32>(x_2287.x, x_2287.y, x_2287.z));
  let x_2290 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2289.x, x_2289.y, x_2289.z, x_2290.w);
  let x_2292 : vec4<f32> = u_xlat7;
  let x_2294 : vec4<f32> = u_xlat7;
  u_xlat50 = dot(vec3<f32>(x_2292.x, x_2292.y, x_2292.z), vec3<f32>(x_2294.x, x_2294.y, x_2294.z));
  let x_2297 : f32 = u_xlat50;
  u_xlat50 = max(x_2297, 1.17549435e-38f);
  let x_2300 : f32 = u_xlat50;
  u_xlat50 = inverseSqrt(x_2300);
  let x_2302 : f32 = u_xlat50;
  let x_2304 : vec4<f32> = u_xlat7;
  let x_2306 : vec3<f32> = (vec3<f32>(x_2302, x_2302, x_2302) * vec3<f32>(x_2304.x, x_2304.y, x_2304.z));
  let x_2307 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2306.x, x_2306.y, x_2306.z, x_2307.w);
  let x_2309 : vec3<f32> = u_xlat2;
  let x_2310 : vec4<f32> = u_xlat7;
  u_xlat50 = dot(x_2309, vec3<f32>(x_2310.x, x_2310.y, x_2310.z));
  let x_2313 : f32 = u_xlat50;
  u_xlat50 = clamp(x_2313, 0.0f, 1.0f);
  let x_2316 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2318 : vec4<f32> = u_xlat7;
  u_xlat78 = dot(vec3<f32>(x_2316.x, x_2316.y, x_2316.z), vec3<f32>(x_2318.x, x_2318.y, x_2318.z));
  let x_2321 : f32 = u_xlat78;
  u_xlat78 = clamp(x_2321, 0.0f, 1.0f);
  let x_2323 : f32 = u_xlat50;
  let x_2324 : f32 = u_xlat50;
  u_xlat50 = (x_2323 * x_2324);
  let x_2326 : f32 = u_xlat50;
  let x_2328 : f32 = u_xlat0.x;
  u_xlat50 = ((x_2326 * x_2328) + 1.00001001358032226562f);
  let x_2332 : f32 = u_xlat78;
  let x_2333 : f32 = u_xlat78;
  u_xlat78 = (x_2332 * x_2333);
  let x_2335 : f32 = u_xlat50;
  let x_2336 : f32 = u_xlat50;
  u_xlat50 = (x_2335 * x_2336);
  let x_2338 : f32 = u_xlat78;
  u_xlat78 = max(x_2338, 0.10000000149011611938f);
  let x_2341 : f32 = u_xlat50;
  let x_2342 : f32 = u_xlat78;
  u_xlat50 = (x_2341 * x_2342);
  let x_2344 : f32 = u_xlat79;
  let x_2345 : f32 = u_xlat50;
  u_xlat50 = (x_2344 * x_2345);
  let x_2347 : f32 = u_xlat77;
  let x_2348 : f32 = u_xlat50;
  u_xlat50 = (x_2347 / x_2348);
  let x_2350 : vec4<f32> = u_xlat5;
  let x_2352 : f32 = u_xlat50;
  let x_2355 : vec4<f32> = u_xlat4;
  let x_2357 : vec3<f32> = ((vec3<f32>(x_2350.x, x_2350.y, x_2350.z) * vec3<f32>(x_2352, x_2352, x_2352)) + vec3<f32>(x_2355.x, x_2355.y, x_2355.z));
  let x_2358 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2357.x, x_2357.y, x_2357.z, x_2358.w);
  let x_2360 : vec3<f32> = u_xlat31;
  let x_2361 : vec4<f32> = u_xlat7;
  u_xlat31 = (x_2360 * vec3<f32>(x_2361.x, x_2361.y, x_2361.z));
  let x_2365 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_2367 : f32 = x_2180.unity_LightData.y;
  u_xlat50 = min(x_2365, x_2367);
  let x_2371 : f32 = u_xlat50;
  u_xlatu50 = bitcast<u32>(i32(x_2371));
  let x_2375 : f32 = u_xlat6.x;
  let x_2377 : f32 = x_762.x_AdditionalShadowFadeParams.x;
  let x_2380 : f32 = x_762.x_AdditionalShadowFadeParams.y;
  u_xlat78 = ((x_2375 * x_2377) + x_2380);
  let x_2382 : f32 = u_xlat78;
  u_xlat78 = clamp(x_2382, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2394 : u32 = u_xlatu_loop_1;
    let x_2395 : u32 = u_xlatu50;
    if ((x_2394 < x_2395)) {
    } else {
      break;
    }
    let x_2398 : u32 = u_xlatu_loop_1;
    u_xlatu6 = (x_2398 >> 2u);
    let x_2402 : u32 = u_xlatu_loop_1;
    u_xlati82 = bitcast<i32>((x_2402 & 3u));
    let x_2405 : u32 = u_xlatu6;
    let x_2408 : vec4<f32> = x_2180.unity_LightIndices[bitcast<i32>(x_2405)];
    let x_2418 : i32 = u_xlati82;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2423 : vec4<u32> = indexable[x_2418];
    u_xlat6.x = dot(x_2408, bitcast<vec4<f32>>(x_2423));
    let x_2429 : f32 = u_xlat6.x;
    u_xlati6 = i32(x_2429);
    let x_2431 : vec3<f32> = vs_TEXCOORD7;
    let x_2442 : i32 = u_xlati6;
    let x_2444 : vec4<f32> = x_2441.x_AdditionalLightsPosition[x_2442];
    let x_2447 : i32 = u_xlati6;
    let x_2449 : vec4<f32> = x_2441.x_AdditionalLightsPosition[x_2447];
    let x_2451 : vec3<f32> = ((-(x_2431) * vec3<f32>(x_2444.w, x_2444.w, x_2444.w)) + vec3<f32>(x_2449.x, x_2449.y, x_2449.z));
    let x_2452 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2451.x, x_2451.y, x_2451.z, x_2452.w);
    let x_2455 : vec4<f32> = u_xlat8;
    let x_2457 : vec4<f32> = u_xlat8;
    u_xlat82 = dot(vec3<f32>(x_2455.x, x_2455.y, x_2455.z), vec3<f32>(x_2457.x, x_2457.y, x_2457.z));
    let x_2460 : f32 = u_xlat82;
    u_xlat82 = max(x_2460, 0.00006103515625f);
    let x_2462 : f32 = u_xlat82;
    u_xlat83 = inverseSqrt(x_2462);
    let x_2464 : f32 = u_xlat83;
    let x_2466 : vec4<f32> = u_xlat8;
    let x_2468 : vec3<f32> = (vec3<f32>(x_2464, x_2464, x_2464) * vec3<f32>(x_2466.x, x_2466.y, x_2466.z));
    let x_2469 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2468.x, x_2468.y, x_2468.z, x_2469.w);
    let x_2472 : f32 = u_xlat82;
    u_xlat84 = (1.0f / x_2472);
    let x_2474 : f32 = u_xlat82;
    let x_2475 : i32 = u_xlati6;
    let x_2477 : f32 = x_2441.x_AdditionalLightsAttenuation[x_2475].x;
    u_xlat82 = (x_2474 * x_2477);
    let x_2479 : f32 = u_xlat82;
    let x_2481 : f32 = u_xlat82;
    u_xlat82 = ((-(x_2479) * x_2481) + 1.0f);
    let x_2484 : f32 = u_xlat82;
    u_xlat82 = max(x_2484, 0.0f);
    let x_2486 : f32 = u_xlat82;
    let x_2487 : f32 = u_xlat82;
    u_xlat82 = (x_2486 * x_2487);
    let x_2489 : f32 = u_xlat82;
    let x_2490 : f32 = u_xlat84;
    u_xlat82 = (x_2489 * x_2490);
    let x_2492 : i32 = u_xlati6;
    let x_2494 : vec4<f32> = x_2441.x_AdditionalLightsSpotDir[x_2492];
    let x_2496 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2494.x, x_2494.y, x_2494.z), vec3<f32>(x_2496.x, x_2496.y, x_2496.z));
    let x_2499 : f32 = u_xlat84;
    let x_2500 : i32 = u_xlati6;
    let x_2502 : f32 = x_2441.x_AdditionalLightsAttenuation[x_2500].z;
    let x_2504 : i32 = u_xlati6;
    let x_2506 : f32 = x_2441.x_AdditionalLightsAttenuation[x_2504].w;
    u_xlat84 = ((x_2499 * x_2502) + x_2506);
    let x_2508 : f32 = u_xlat84;
    u_xlat84 = clamp(x_2508, 0.0f, 1.0f);
    let x_2510 : f32 = u_xlat84;
    let x_2511 : f32 = u_xlat84;
    u_xlat84 = (x_2510 * x_2511);
    let x_2513 : f32 = u_xlat82;
    let x_2514 : f32 = u_xlat84;
    u_xlat82 = (x_2513 * x_2514);
    let x_2517 : i32 = u_xlati6;
    let x_2519 : f32 = x_762.x_AdditionalShadowParams[x_2517].w;
    u_xlati84 = i32(x_2519);
    let x_2524 : i32 = u_xlati84;
    u_xlatb10.x = (x_2524 >= 0i);
    let x_2528 : bool = u_xlatb10.x;
    if (x_2528) {
      let x_2532 : i32 = u_xlati6;
      let x_2534 : f32 = x_762.x_AdditionalShadowParams[x_2532].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2534, x_2534, x_2534, x_2534))));
      let x_2540 : bool = u_xlatb10.x;
      if (x_2540) {
        let x_2543 : vec4<f32> = u_xlat9;
        let x_2546 : vec4<f32> = u_xlat9;
        let x_2549 : vec4<bool> = (abs(vec4<f32>(x_2543.z, x_2543.z, x_2543.y, x_2543.z)) >= abs(vec4<f32>(x_2546.x, x_2546.y, x_2546.x, x_2546.x)));
        u_xlatb10 = vec3<bool>(x_2549.x, x_2549.y, x_2549.z);
        let x_2552 : bool = u_xlatb10.y;
        let x_2554 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_2552 & x_2554);
        let x_2558 : vec4<f32> = u_xlat9;
        let x_2561 : vec4<bool> = (-(vec4<f32>(x_2558.z, x_2558.y, x_2558.x, x_2558.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_2561.x, x_2561.y, x_2561.z);
        let x_2565 : bool = u_xlatb11.x;
        u_xlat35.x = select(4.0f, 5.0f, x_2565);
        let x_2570 : bool = u_xlatb11.y;
        u_xlat35.z = select(2.0f, 3.0f, x_2570);
        let x_2575 : bool = u_xlatb11.z;
        u_xlat11.x = select(0.0f, 1.0f, x_2575);
        let x_2580 : bool = u_xlatb10.z;
        if (x_2580) {
          let x_2586 : f32 = u_xlat35.z;
          x_2582 = x_2586;
        } else {
          let x_2589 : f32 = u_xlat11.x;
          x_2582 = x_2589;
        }
        let x_2590 : f32 = x_2582;
        u_xlat60 = x_2590;
        let x_2592 : bool = u_xlatb10.x;
        if (x_2592) {
          let x_2597 : f32 = u_xlat35.x;
          x_2593 = x_2597;
        } else {
          let x_2599 : f32 = u_xlat60;
          x_2593 = x_2599;
        }
        let x_2600 : f32 = x_2593;
        u_xlat10.x = x_2600;
        let x_2602 : i32 = u_xlati6;
        let x_2604 : f32 = x_762.x_AdditionalShadowParams[x_2602].w;
        u_xlat35.x = trunc(x_2604);
        let x_2608 : f32 = u_xlat10.x;
        let x_2610 : f32 = u_xlat35.x;
        u_xlat10.x = (x_2608 + x_2610);
        let x_2614 : f32 = u_xlat10.x;
        u_xlati84 = i32(x_2614);
      }
      let x_2616 : i32 = u_xlati84;
      u_xlati84 = (x_2616 << bitcast<u32>(2i));
      let x_2618 : vec3<f32> = vs_TEXCOORD7;
      let x_2620 : i32 = u_xlati84;
      let x_2623 : i32 = u_xlati84;
      let x_2627 : vec4<f32> = x_762.x_AdditionalLightsWorldToShadow[((x_2620 + 1i) / 4i)][((x_2623 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_2618.y, x_2618.y, x_2618.y, x_2618.y) * x_2627);
      let x_2629 : i32 = u_xlati84;
      let x_2631 : i32 = u_xlati84;
      let x_2634 : vec4<f32> = x_762.x_AdditionalLightsWorldToShadow[(x_2629 / 4i)][(x_2631 % 4i)];
      let x_2635 : vec3<f32> = vs_TEXCOORD7;
      let x_2638 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2634 * vec4<f32>(x_2635.x, x_2635.x, x_2635.x, x_2635.x)) + x_2638);
      let x_2640 : i32 = u_xlati84;
      let x_2643 : i32 = u_xlati84;
      let x_2647 : vec4<f32> = x_762.x_AdditionalLightsWorldToShadow[((x_2640 + 2i) / 4i)][((x_2643 + 2i) % 4i)];
      let x_2648 : vec3<f32> = vs_TEXCOORD7;
      let x_2651 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2647 * vec4<f32>(x_2648.z, x_2648.z, x_2648.z, x_2648.z)) + x_2651);
      let x_2653 : vec4<f32> = u_xlat10;
      let x_2654 : i32 = u_xlati84;
      let x_2657 : i32 = u_xlati84;
      let x_2661 : vec4<f32> = x_762.x_AdditionalLightsWorldToShadow[((x_2654 + 3i) / 4i)][((x_2657 + 3i) % 4i)];
      u_xlat10 = (x_2653 + x_2661);
      let x_2663 : vec4<f32> = u_xlat10;
      let x_2665 : vec4<f32> = u_xlat10;
      let x_2667 : vec3<f32> = (vec3<f32>(x_2663.x, x_2663.y, x_2663.z) / vec3<f32>(x_2665.w, x_2665.w, x_2665.w));
      let x_2668 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2667.x, x_2667.y, x_2667.z, x_2668.w);
      let x_2671 : i32 = u_xlati6;
      let x_2673 : f32 = x_762.x_AdditionalShadowParams[x_2671].y;
      u_xlatb84 = (0.0f < x_2673);
      let x_2675 : bool = u_xlatb84;
      if (x_2675) {
        let x_2678 : i32 = u_xlati6;
        let x_2680 : f32 = x_762.x_AdditionalShadowParams[x_2678].y;
        u_xlatb84 = (1.0f == x_2680);
        let x_2682 : bool = u_xlatb84;
        if (x_2682) {
          let x_2685 : vec4<f32> = u_xlat10;
          let x_2688 : vec4<f32> = x_762.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2685.x, x_2685.y, x_2685.x, x_2685.y) + x_2688);
          let x_2691 : vec4<f32> = u_xlat11;
          let x_2692 : vec2<f32> = vec2<f32>(x_2691.x, x_2691.y);
          let x_2694 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2692.x, x_2692.y, x_2694);
          let x_2702 : vec3<f32> = txVec30;
          let x_2704 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2702.xy, x_2702.z);
          u_xlat12.x = x_2704;
          let x_2707 : vec4<f32> = u_xlat11;
          let x_2708 : vec2<f32> = vec2<f32>(x_2707.z, x_2707.w);
          let x_2710 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_2708.x, x_2708.y, x_2710);
          let x_2717 : vec3<f32> = txVec31;
          let x_2719 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2717.xy, x_2717.z);
          u_xlat12.y = x_2719;
          let x_2721 : vec4<f32> = u_xlat10;
          let x_2724 : vec4<f32> = x_762.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_2721.x, x_2721.y, x_2721.x, x_2721.y) + x_2724);
          let x_2727 : vec4<f32> = u_xlat11;
          let x_2728 : vec2<f32> = vec2<f32>(x_2727.x, x_2727.y);
          let x_2730 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_2728.x, x_2728.y, x_2730);
          let x_2737 : vec3<f32> = txVec32;
          let x_2739 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2737.xy, x_2737.z);
          u_xlat12.z = x_2739;
          let x_2742 : vec4<f32> = u_xlat11;
          let x_2743 : vec2<f32> = vec2<f32>(x_2742.z, x_2742.w);
          let x_2745 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_2743.x, x_2743.y, x_2745);
          let x_2752 : vec3<f32> = txVec33;
          let x_2754 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2752.xy, x_2752.z);
          u_xlat12.w = x_2754;
          let x_2756 : vec4<f32> = u_xlat12;
          u_xlat84 = dot(x_2756, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2760 : i32 = u_xlati6;
          let x_2762 : f32 = x_762.x_AdditionalShadowParams[x_2760].y;
          u_xlatb85 = (2.0f == x_2762);
          let x_2764 : bool = u_xlatb85;
          if (x_2764) {
            let x_2767 : vec4<f32> = u_xlat10;
            let x_2770 : vec4<f32> = x_762.x_AdditionalShadowmapSize;
            let x_2773 : vec2<f32> = ((vec2<f32>(x_2767.x, x_2767.y) * vec2<f32>(x_2770.z, x_2770.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2774 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2773.x, x_2773.y, x_2774.z, x_2774.w);
            let x_2776 : vec4<f32> = u_xlat11;
            let x_2778 : vec2<f32> = floor(vec2<f32>(x_2776.x, x_2776.y));
            let x_2779 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2778.x, x_2778.y, x_2779.z, x_2779.w);
            let x_2782 : vec4<f32> = u_xlat10;
            let x_2785 : vec4<f32> = x_762.x_AdditionalShadowmapSize;
            let x_2788 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2782.x, x_2782.y) * vec2<f32>(x_2785.z, x_2785.w)) + -(vec2<f32>(x_2788.x, x_2788.y)));
            let x_2792 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2792.x, x_2792.x, x_2792.y, x_2792.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2795 : vec4<f32> = u_xlat12;
            let x_2797 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2795.x, x_2795.x, x_2795.z, x_2795.z) * vec4<f32>(x_2797.x, x_2797.x, x_2797.z, x_2797.z));
            let x_2800 : vec4<f32> = u_xlat13;
            let x_2802 : vec2<f32> = (vec2<f32>(x_2800.y, x_2800.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2803 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2802.x, x_2803.y, x_2802.y, x_2803.w);
            let x_2805 : vec4<f32> = u_xlat13;
            let x_2808 : vec2<f32> = u_xlat61;
            let x_2810 : vec2<f32> = ((vec2<f32>(x_2805.x, x_2805.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2808));
            let x_2811 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2810.x, x_2810.y, x_2811.z, x_2811.w);
            let x_2814 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_2814) + vec2<f32>(1.0f, 1.0f));
            let x_2817 : vec2<f32> = u_xlat61;
            let x_2818 : vec2<f32> = min(x_2817, vec2<f32>(0.0f, 0.0f));
            let x_2819 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2818.x, x_2818.y, x_2819.z, x_2819.w);
            let x_2821 : vec4<f32> = u_xlat14;
            let x_2824 : vec4<f32> = u_xlat14;
            let x_2827 : vec2<f32> = u_xlat63;
            let x_2828 : vec2<f32> = ((-(vec2<f32>(x_2821.x, x_2821.y)) * vec2<f32>(x_2824.x, x_2824.y)) + x_2827);
            let x_2829 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2828.x, x_2828.y, x_2829.z, x_2829.w);
            let x_2831 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_2831, vec2<f32>(0.0f, 0.0f));
            let x_2833 : vec2<f32> = u_xlat61;
            let x_2835 : vec2<f32> = u_xlat61;
            let x_2837 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_2833) * x_2835) + vec2<f32>(x_2837.y, x_2837.w));
            let x_2840 : vec4<f32> = u_xlat14;
            let x_2842 : vec2<f32> = (vec2<f32>(x_2840.x, x_2840.y) + vec2<f32>(1.0f, 1.0f));
            let x_2843 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2842.x, x_2842.y, x_2843.z, x_2843.w);
            let x_2845 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_2845 + vec2<f32>(1.0f, 1.0f));
            let x_2847 : vec4<f32> = u_xlat13;
            let x_2849 : vec2<f32> = (vec2<f32>(x_2847.x, x_2847.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2850 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2849.x, x_2849.y, x_2850.z, x_2850.w);
            let x_2852 : vec2<f32> = u_xlat63;
            let x_2853 : vec2<f32> = (x_2852 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2854 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2853.x, x_2853.y, x_2854.z, x_2854.w);
            let x_2856 : vec4<f32> = u_xlat14;
            let x_2858 : vec2<f32> = (vec2<f32>(x_2856.x, x_2856.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2859 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2858.x, x_2858.y, x_2859.z, x_2859.w);
            let x_2861 : vec2<f32> = u_xlat61;
            let x_2862 : vec2<f32> = (x_2861 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2863 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2862.x, x_2862.y, x_2863.z, x_2863.w);
            let x_2865 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_2865.y, x_2865.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2869 : f32 = u_xlat14.x;
            u_xlat15.z = x_2869;
            let x_2872 : f32 = u_xlat61.x;
            u_xlat15.w = x_2872;
            let x_2875 : f32 = u_xlat16.x;
            u_xlat13.z = x_2875;
            let x_2878 : f32 = u_xlat12.x;
            u_xlat13.w = x_2878;
            let x_2880 : vec4<f32> = u_xlat13;
            let x_2882 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2880.z, x_2880.w, x_2880.x, x_2880.z) + vec4<f32>(x_2882.z, x_2882.w, x_2882.x, x_2882.z));
            let x_2886 : f32 = u_xlat15.y;
            u_xlat14.z = x_2886;
            let x_2889 : f32 = u_xlat61.y;
            u_xlat14.w = x_2889;
            let x_2892 : f32 = u_xlat13.y;
            u_xlat16.z = x_2892;
            let x_2895 : f32 = u_xlat12.z;
            u_xlat16.w = x_2895;
            let x_2897 : vec4<f32> = u_xlat14;
            let x_2899 : vec4<f32> = u_xlat16;
            let x_2901 : vec3<f32> = (vec3<f32>(x_2897.z, x_2897.y, x_2897.w) + vec3<f32>(x_2899.z, x_2899.y, x_2899.w));
            let x_2902 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2901.x, x_2901.y, x_2901.z, x_2902.w);
            let x_2904 : vec4<f32> = u_xlat13;
            let x_2906 : vec4<f32> = u_xlat17;
            let x_2908 : vec3<f32> = (vec3<f32>(x_2904.x, x_2904.z, x_2904.w) / vec3<f32>(x_2906.z, x_2906.w, x_2906.y));
            let x_2909 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2908.x, x_2908.y, x_2908.z, x_2909.w);
            let x_2911 : vec4<f32> = u_xlat13;
            let x_2913 : vec3<f32> = (vec3<f32>(x_2911.x, x_2911.y, x_2911.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2914 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2913.x, x_2913.y, x_2913.z, x_2914.w);
            let x_2916 : vec4<f32> = u_xlat16;
            let x_2918 : vec4<f32> = u_xlat12;
            let x_2920 : vec3<f32> = (vec3<f32>(x_2916.z, x_2916.y, x_2916.w) / vec3<f32>(x_2918.x, x_2918.y, x_2918.z));
            let x_2921 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2920.x, x_2920.y, x_2920.z, x_2921.w);
            let x_2923 : vec4<f32> = u_xlat14;
            let x_2925 : vec3<f32> = (vec3<f32>(x_2923.x, x_2923.y, x_2923.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2926 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2925.x, x_2925.y, x_2925.z, x_2926.w);
            let x_2928 : vec4<f32> = u_xlat13;
            let x_2931 : vec4<f32> = x_762.x_AdditionalShadowmapSize;
            let x_2933 : vec3<f32> = (vec3<f32>(x_2928.y, x_2928.x, x_2928.z) * vec3<f32>(x_2931.x, x_2931.x, x_2931.x));
            let x_2934 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2933.x, x_2933.y, x_2933.z, x_2934.w);
            let x_2936 : vec4<f32> = u_xlat14;
            let x_2939 : vec4<f32> = x_762.x_AdditionalShadowmapSize;
            let x_2941 : vec3<f32> = (vec3<f32>(x_2936.x, x_2936.y, x_2936.z) * vec3<f32>(x_2939.y, x_2939.y, x_2939.y));
            let x_2942 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2941.x, x_2941.y, x_2941.z, x_2942.w);
            let x_2945 : f32 = u_xlat14.x;
            u_xlat13.w = x_2945;
            let x_2947 : vec4<f32> = u_xlat11;
            let x_2950 : vec4<f32> = x_762.x_AdditionalShadowmapSize;
            let x_2953 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2947.x, x_2947.y, x_2947.x, x_2947.y) * vec4<f32>(x_2950.x, x_2950.y, x_2950.x, x_2950.y)) + vec4<f32>(x_2953.y, x_2953.w, x_2953.x, x_2953.w));
            let x_2956 : vec4<f32> = u_xlat11;
            let x_2959 : vec4<f32> = x_762.x_AdditionalShadowmapSize;
            let x_2962 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_2956.x, x_2956.y) * vec2<f32>(x_2959.x, x_2959.y)) + vec2<f32>(x_2962.z, x_2962.w));
            let x_2966 : f32 = u_xlat13.y;
            u_xlat14.w = x_2966;
            let x_2968 : vec4<f32> = u_xlat14;
            let x_2969 : vec2<f32> = vec2<f32>(x_2968.y, x_2968.z);
            let x_2970 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2970.x, x_2969.x, x_2970.z, x_2969.y);
            let x_2972 : vec4<f32> = u_xlat11;
            let x_2975 : vec4<f32> = x_762.x_AdditionalShadowmapSize;
            let x_2978 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_2972.x, x_2972.y, x_2972.x, x_2972.y) * vec4<f32>(x_2975.x, x_2975.y, x_2975.x, x_2975.y)) + vec4<f32>(x_2978.x, x_2978.y, x_2978.z, x_2978.y));
            let x_2981 : vec4<f32> = u_xlat11;
            let x_2984 : vec4<f32> = x_762.x_AdditionalShadowmapSize;
            let x_2987 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2981.x, x_2981.y, x_2981.x, x_2981.y) * vec4<f32>(x_2984.x, x_2984.y, x_2984.x, x_2984.y)) + vec4<f32>(x_2987.w, x_2987.y, x_2987.w, x_2987.z));
            let x_2990 : vec4<f32> = u_xlat11;
            let x_2993 : vec4<f32> = x_762.x_AdditionalShadowmapSize;
            let x_2996 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_2990.x, x_2990.y, x_2990.x, x_2990.y) * vec4<f32>(x_2993.x, x_2993.y, x_2993.x, x_2993.y)) + vec4<f32>(x_2996.x, x_2996.w, x_2996.z, x_2996.w));
            let x_2999 : vec4<f32> = u_xlat12;
            let x_3001 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_2999.x, x_2999.x, x_2999.x, x_2999.y) * vec4<f32>(x_3001.z, x_3001.w, x_3001.y, x_3001.z));
            let x_3004 : vec4<f32> = u_xlat12;
            let x_3006 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_3004.y, x_3004.y, x_3004.z, x_3004.z) * x_3006);
            let x_3010 : f32 = u_xlat12.z;
            let x_3012 : f32 = u_xlat17.y;
            u_xlat85 = (x_3010 * x_3012);
            let x_3015 : vec4<f32> = u_xlat15;
            let x_3016 : vec2<f32> = vec2<f32>(x_3015.x, x_3015.y);
            let x_3018 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_3016.x, x_3016.y, x_3018);
            let x_3025 : vec3<f32> = txVec34;
            let x_3027 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3025.xy, x_3025.z);
            u_xlat11.x = x_3027;
            let x_3030 : vec4<f32> = u_xlat15;
            let x_3031 : vec2<f32> = vec2<f32>(x_3030.z, x_3030.w);
            let x_3033 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_3031.x, x_3031.y, x_3033);
            let x_3041 : vec3<f32> = txVec35;
            let x_3043 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3041.xy, x_3041.z);
            u_xlat36 = x_3043;
            let x_3044 : f32 = u_xlat36;
            let x_3046 : f32 = u_xlat18.y;
            u_xlat36 = (x_3044 * x_3046);
            let x_3049 : f32 = u_xlat18.x;
            let x_3051 : f32 = u_xlat11.x;
            let x_3053 : f32 = u_xlat36;
            u_xlat11.x = ((x_3049 * x_3051) + x_3053);
            let x_3057 : vec2<f32> = u_xlat61;
            let x_3059 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_3057.x, x_3057.y, x_3059);
            let x_3066 : vec3<f32> = txVec36;
            let x_3068 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3066.xy, x_3066.z);
            u_xlat36 = x_3068;
            let x_3070 : f32 = u_xlat18.z;
            let x_3071 : f32 = u_xlat36;
            let x_3074 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3070 * x_3071) + x_3074);
            let x_3078 : vec4<f32> = u_xlat14;
            let x_3079 : vec2<f32> = vec2<f32>(x_3078.x, x_3078.y);
            let x_3081 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_3079.x, x_3079.y, x_3081);
            let x_3088 : vec3<f32> = txVec37;
            let x_3090 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3088.xy, x_3088.z);
            u_xlat36 = x_3090;
            let x_3092 : f32 = u_xlat18.w;
            let x_3093 : f32 = u_xlat36;
            let x_3096 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3092 * x_3093) + x_3096);
            let x_3100 : vec4<f32> = u_xlat16;
            let x_3101 : vec2<f32> = vec2<f32>(x_3100.x, x_3100.y);
            let x_3103 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_3101.x, x_3101.y, x_3103);
            let x_3110 : vec3<f32> = txVec38;
            let x_3112 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3110.xy, x_3110.z);
            u_xlat36 = x_3112;
            let x_3114 : f32 = u_xlat19.x;
            let x_3115 : f32 = u_xlat36;
            let x_3118 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3114 * x_3115) + x_3118);
            let x_3122 : vec4<f32> = u_xlat16;
            let x_3123 : vec2<f32> = vec2<f32>(x_3122.z, x_3122.w);
            let x_3125 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_3123.x, x_3123.y, x_3125);
            let x_3132 : vec3<f32> = txVec39;
            let x_3134 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3132.xy, x_3132.z);
            u_xlat36 = x_3134;
            let x_3136 : f32 = u_xlat19.y;
            let x_3137 : f32 = u_xlat36;
            let x_3140 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3136 * x_3137) + x_3140);
            let x_3144 : vec4<f32> = u_xlat14;
            let x_3145 : vec2<f32> = vec2<f32>(x_3144.z, x_3144.w);
            let x_3147 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_3145.x, x_3145.y, x_3147);
            let x_3154 : vec3<f32> = txVec40;
            let x_3156 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3154.xy, x_3154.z);
            u_xlat36 = x_3156;
            let x_3158 : f32 = u_xlat19.z;
            let x_3159 : f32 = u_xlat36;
            let x_3162 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3158 * x_3159) + x_3162);
            let x_3166 : vec4<f32> = u_xlat13;
            let x_3167 : vec2<f32> = vec2<f32>(x_3166.x, x_3166.y);
            let x_3169 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_3167.x, x_3167.y, x_3169);
            let x_3176 : vec3<f32> = txVec41;
            let x_3178 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3176.xy, x_3176.z);
            u_xlat36 = x_3178;
            let x_3180 : f32 = u_xlat19.w;
            let x_3181 : f32 = u_xlat36;
            let x_3184 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3180 * x_3181) + x_3184);
            let x_3188 : vec4<f32> = u_xlat13;
            let x_3189 : vec2<f32> = vec2<f32>(x_3188.z, x_3188.w);
            let x_3191 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_3189.x, x_3189.y, x_3191);
            let x_3198 : vec3<f32> = txVec42;
            let x_3200 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3198.xy, x_3198.z);
            u_xlat36 = x_3200;
            let x_3201 : f32 = u_xlat85;
            let x_3202 : f32 = u_xlat36;
            let x_3205 : f32 = u_xlat11.x;
            u_xlat84 = ((x_3201 * x_3202) + x_3205);
          } else {
            let x_3208 : vec4<f32> = u_xlat10;
            let x_3211 : vec4<f32> = x_762.x_AdditionalShadowmapSize;
            let x_3214 : vec2<f32> = ((vec2<f32>(x_3208.x, x_3208.y) * vec2<f32>(x_3211.z, x_3211.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3215 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3214.x, x_3214.y, x_3215.z, x_3215.w);
            let x_3217 : vec4<f32> = u_xlat11;
            let x_3219 : vec2<f32> = floor(vec2<f32>(x_3217.x, x_3217.y));
            let x_3220 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3219.x, x_3219.y, x_3220.z, x_3220.w);
            let x_3222 : vec4<f32> = u_xlat10;
            let x_3225 : vec4<f32> = x_762.x_AdditionalShadowmapSize;
            let x_3228 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3222.x, x_3222.y) * vec2<f32>(x_3225.z, x_3225.w)) + -(vec2<f32>(x_3228.x, x_3228.y)));
            let x_3232 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3232.x, x_3232.x, x_3232.y, x_3232.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3235 : vec4<f32> = u_xlat12;
            let x_3237 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3235.x, x_3235.x, x_3235.z, x_3235.z) * vec4<f32>(x_3237.x, x_3237.x, x_3237.z, x_3237.z));
            let x_3240 : vec4<f32> = u_xlat13;
            let x_3242 : vec2<f32> = (vec2<f32>(x_3240.y, x_3240.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3243 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3243.x, x_3242.x, x_3243.z, x_3242.y);
            let x_3245 : vec4<f32> = u_xlat13;
            let x_3248 : vec2<f32> = u_xlat61;
            let x_3250 : vec2<f32> = ((vec2<f32>(x_3245.x, x_3245.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3248));
            let x_3251 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3250.x, x_3251.y, x_3250.y, x_3251.w);
            let x_3253 : vec2<f32> = u_xlat61;
            let x_3255 : vec2<f32> = (-(x_3253) + vec2<f32>(1.0f, 1.0f));
            let x_3256 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3255.x, x_3255.y, x_3256.z, x_3256.w);
            let x_3258 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_3258, vec2<f32>(0.0f, 0.0f));
            let x_3260 : vec2<f32> = u_xlat63;
            let x_3262 : vec2<f32> = u_xlat63;
            let x_3264 : vec4<f32> = u_xlat13;
            let x_3266 : vec2<f32> = ((-(x_3260) * x_3262) + vec2<f32>(x_3264.x, x_3264.y));
            let x_3267 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3266.x, x_3266.y, x_3267.z, x_3267.w);
            let x_3269 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_3269, vec2<f32>(0.0f, 0.0f));
            let x_3272 : vec2<f32> = u_xlat63;
            let x_3274 : vec2<f32> = u_xlat63;
            let x_3276 : vec4<f32> = u_xlat12;
            let x_3278 : vec2<f32> = ((-(x_3272) * x_3274) + vec2<f32>(x_3276.y, x_3276.w));
            let x_3279 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_3278.x, x_3279.y, x_3278.y);
            let x_3281 : vec4<f32> = u_xlat13;
            let x_3283 : vec2<f32> = (vec2<f32>(x_3281.x, x_3281.y) + vec2<f32>(2.0f, 2.0f));
            let x_3284 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3283.x, x_3283.y, x_3284.z, x_3284.w);
            let x_3286 : vec3<f32> = u_xlat37;
            let x_3288 : vec2<f32> = (vec2<f32>(x_3286.x, x_3286.z) + vec2<f32>(2.0f, 2.0f));
            let x_3289 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3289.x, x_3288.x, x_3289.z, x_3288.y);
            let x_3292 : f32 = u_xlat12.y;
            u_xlat15.z = (x_3292 * 0.08163200318813323975f);
            let x_3295 : vec4<f32> = u_xlat12;
            let x_3297 : vec3<f32> = (vec3<f32>(x_3295.z, x_3295.x, x_3295.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3298 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3297.x, x_3297.y, x_3297.z, x_3298.w);
            let x_3300 : vec4<f32> = u_xlat13;
            let x_3302 : vec2<f32> = (vec2<f32>(x_3300.x, x_3300.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3303 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3302.x, x_3302.y, x_3303.z, x_3303.w);
            let x_3306 : f32 = u_xlat16.y;
            u_xlat15.x = x_3306;
            let x_3308 : vec2<f32> = u_xlat61;
            let x_3311 : vec2<f32> = ((vec2<f32>(x_3308.x, x_3308.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3312 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3312.x, x_3311.x, x_3312.z, x_3311.y);
            let x_3314 : vec2<f32> = u_xlat61;
            let x_3317 : vec2<f32> = ((vec2<f32>(x_3314.x, x_3314.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3318 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3317.x, x_3318.y, x_3317.y, x_3318.w);
            let x_3321 : f32 = u_xlat12.x;
            u_xlat13.y = x_3321;
            let x_3324 : f32 = u_xlat14.y;
            u_xlat13.w = x_3324;
            let x_3326 : vec4<f32> = u_xlat13;
            let x_3327 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3326 + x_3327);
            let x_3329 : vec2<f32> = u_xlat61;
            let x_3332 : vec2<f32> = ((vec2<f32>(x_3329.y, x_3329.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3333 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3333.x, x_3332.x, x_3333.z, x_3332.y);
            let x_3335 : vec2<f32> = u_xlat61;
            let x_3338 : vec2<f32> = ((vec2<f32>(x_3335.y, x_3335.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3339 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3338.x, x_3339.y, x_3338.y, x_3339.w);
            let x_3342 : f32 = u_xlat12.y;
            u_xlat14.y = x_3342;
            let x_3344 : vec4<f32> = u_xlat14;
            let x_3345 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_3344 + x_3345);
            let x_3347 : vec4<f32> = u_xlat13;
            let x_3348 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_3347 / x_3348);
            let x_3350 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3350 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3352 : vec4<f32> = u_xlat14;
            let x_3353 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_3352 / x_3353);
            let x_3355 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3355 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3357 : vec4<f32> = u_xlat13;
            let x_3360 : vec4<f32> = x_762.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3357.w, x_3357.x, x_3357.y, x_3357.z) * vec4<f32>(x_3360.x, x_3360.x, x_3360.x, x_3360.x));
            let x_3363 : vec4<f32> = u_xlat14;
            let x_3366 : vec4<f32> = x_762.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3363.x, x_3363.w, x_3363.y, x_3363.z) * vec4<f32>(x_3366.y, x_3366.y, x_3366.y, x_3366.y));
            let x_3369 : vec4<f32> = u_xlat13;
            let x_3370 : vec3<f32> = vec3<f32>(x_3369.y, x_3369.z, x_3369.w);
            let x_3371 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3370.x, x_3371.y, x_3370.y, x_3370.z);
            let x_3374 : f32 = u_xlat14.x;
            u_xlat16.y = x_3374;
            let x_3376 : vec4<f32> = u_xlat11;
            let x_3379 : vec4<f32> = x_762.x_AdditionalShadowmapSize;
            let x_3382 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3376.x, x_3376.y, x_3376.x, x_3376.y) * vec4<f32>(x_3379.x, x_3379.y, x_3379.x, x_3379.y)) + vec4<f32>(x_3382.x, x_3382.y, x_3382.z, x_3382.y));
            let x_3385 : vec4<f32> = u_xlat11;
            let x_3388 : vec4<f32> = x_762.x_AdditionalShadowmapSize;
            let x_3391 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_3385.x, x_3385.y) * vec2<f32>(x_3388.x, x_3388.y)) + vec2<f32>(x_3391.w, x_3391.y));
            let x_3395 : f32 = u_xlat16.y;
            u_xlat13.y = x_3395;
            let x_3398 : f32 = u_xlat14.z;
            u_xlat16.y = x_3398;
            let x_3400 : vec4<f32> = u_xlat11;
            let x_3403 : vec4<f32> = x_762.x_AdditionalShadowmapSize;
            let x_3406 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3400.x, x_3400.y, x_3400.x, x_3400.y) * vec4<f32>(x_3403.x, x_3403.y, x_3403.x, x_3403.y)) + vec4<f32>(x_3406.x, x_3406.y, x_3406.z, x_3406.y));
            let x_3409 : vec4<f32> = u_xlat11;
            let x_3412 : vec4<f32> = x_762.x_AdditionalShadowmapSize;
            let x_3415 : vec4<f32> = u_xlat16;
            let x_3417 : vec2<f32> = ((vec2<f32>(x_3409.x, x_3409.y) * vec2<f32>(x_3412.x, x_3412.y)) + vec2<f32>(x_3415.w, x_3415.y));
            let x_3418 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3417.x, x_3417.y, x_3418.z, x_3418.w);
            let x_3421 : f32 = u_xlat16.y;
            u_xlat13.z = x_3421;
            let x_3424 : vec4<f32> = u_xlat11;
            let x_3427 : vec4<f32> = x_762.x_AdditionalShadowmapSize;
            let x_3430 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3424.x, x_3424.y, x_3424.x, x_3424.y) * vec4<f32>(x_3427.x, x_3427.y, x_3427.x, x_3427.y)) + vec4<f32>(x_3430.x, x_3430.y, x_3430.x, x_3430.z));
            let x_3434 : f32 = u_xlat14.w;
            u_xlat16.y = x_3434;
            let x_3437 : vec4<f32> = u_xlat11;
            let x_3440 : vec4<f32> = x_762.x_AdditionalShadowmapSize;
            let x_3443 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3437.x, x_3437.y, x_3437.x, x_3437.y) * vec4<f32>(x_3440.x, x_3440.y, x_3440.x, x_3440.y)) + vec4<f32>(x_3443.x, x_3443.y, x_3443.z, x_3443.y));
            let x_3447 : vec4<f32> = u_xlat11;
            let x_3450 : vec4<f32> = x_762.x_AdditionalShadowmapSize;
            let x_3453 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3447.x, x_3447.y) * vec2<f32>(x_3450.x, x_3450.y)) + vec2<f32>(x_3453.w, x_3453.y));
            let x_3457 : f32 = u_xlat16.y;
            u_xlat13.w = x_3457;
            let x_3460 : vec4<f32> = u_xlat11;
            let x_3463 : vec4<f32> = x_762.x_AdditionalShadowmapSize;
            let x_3466 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3460.x, x_3460.y) * vec2<f32>(x_3463.x, x_3463.y)) + vec2<f32>(x_3466.x, x_3466.w));
            let x_3469 : vec4<f32> = u_xlat16;
            let x_3470 : vec3<f32> = vec3<f32>(x_3469.x, x_3469.z, x_3469.w);
            let x_3471 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3470.x, x_3471.y, x_3470.y, x_3470.z);
            let x_3473 : vec4<f32> = u_xlat11;
            let x_3476 : vec4<f32> = x_762.x_AdditionalShadowmapSize;
            let x_3479 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3473.x, x_3473.y, x_3473.x, x_3473.y) * vec4<f32>(x_3476.x, x_3476.y, x_3476.x, x_3476.y)) + vec4<f32>(x_3479.x, x_3479.y, x_3479.z, x_3479.y));
            let x_3482 : vec4<f32> = u_xlat11;
            let x_3485 : vec4<f32> = x_762.x_AdditionalShadowmapSize;
            let x_3488 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3482.x, x_3482.y) * vec2<f32>(x_3485.x, x_3485.y)) + vec2<f32>(x_3488.w, x_3488.y));
            let x_3492 : f32 = u_xlat13.x;
            u_xlat14.x = x_3492;
            let x_3494 : vec4<f32> = u_xlat11;
            let x_3497 : vec4<f32> = x_762.x_AdditionalShadowmapSize;
            let x_3500 : vec4<f32> = u_xlat14;
            let x_3502 : vec2<f32> = ((vec2<f32>(x_3494.x, x_3494.y) * vec2<f32>(x_3497.x, x_3497.y)) + vec2<f32>(x_3500.x, x_3500.y));
            let x_3503 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3502.x, x_3502.y, x_3503.z, x_3503.w);
            let x_3506 : vec4<f32> = u_xlat12;
            let x_3508 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3506.x, x_3506.x, x_3506.x, x_3506.x) * x_3508);
            let x_3511 : vec4<f32> = u_xlat12;
            let x_3513 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3511.y, x_3511.y, x_3511.y, x_3511.y) * x_3513);
            let x_3516 : vec4<f32> = u_xlat12;
            let x_3518 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3516.z, x_3516.z, x_3516.z, x_3516.z) * x_3518);
            let x_3520 : vec4<f32> = u_xlat12;
            let x_3522 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3520.w, x_3520.w, x_3520.w, x_3520.w) * x_3522);
            let x_3525 : vec4<f32> = u_xlat17;
            let x_3526 : vec2<f32> = vec2<f32>(x_3525.x, x_3525.y);
            let x_3528 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3526.x, x_3526.y, x_3528);
            let x_3535 : vec3<f32> = txVec43;
            let x_3537 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3535.xy, x_3535.z);
            u_xlat85 = x_3537;
            let x_3539 : vec4<f32> = u_xlat17;
            let x_3540 : vec2<f32> = vec2<f32>(x_3539.z, x_3539.w);
            let x_3542 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3540.x, x_3540.y, x_3542);
            let x_3549 : vec3<f32> = txVec44;
            let x_3551 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3549.xy, x_3549.z);
            u_xlat13.x = x_3551;
            let x_3554 : f32 = u_xlat13.x;
            let x_3556 : f32 = u_xlat22.y;
            u_xlat13.x = (x_3554 * x_3556);
            let x_3560 : f32 = u_xlat22.x;
            let x_3561 : f32 = u_xlat85;
            let x_3564 : f32 = u_xlat13.x;
            u_xlat85 = ((x_3560 * x_3561) + x_3564);
            let x_3567 : vec2<f32> = u_xlat61;
            let x_3569 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3567.x, x_3567.y, x_3569);
            let x_3576 : vec3<f32> = txVec45;
            let x_3578 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3576.xy, x_3576.z);
            u_xlat61.x = x_3578;
            let x_3581 : f32 = u_xlat22.z;
            let x_3583 : f32 = u_xlat61.x;
            let x_3585 : f32 = u_xlat85;
            u_xlat85 = ((x_3581 * x_3583) + x_3585);
            let x_3588 : vec4<f32> = u_xlat20;
            let x_3589 : vec2<f32> = vec2<f32>(x_3588.x, x_3588.y);
            let x_3591 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3589.x, x_3589.y, x_3591);
            let x_3598 : vec3<f32> = txVec46;
            let x_3600 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3598.xy, x_3598.z);
            u_xlat61.x = x_3600;
            let x_3603 : f32 = u_xlat22.w;
            let x_3605 : f32 = u_xlat61.x;
            let x_3607 : f32 = u_xlat85;
            u_xlat85 = ((x_3603 * x_3605) + x_3607);
            let x_3610 : vec4<f32> = u_xlat18;
            let x_3611 : vec2<f32> = vec2<f32>(x_3610.x, x_3610.y);
            let x_3613 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3611.x, x_3611.y, x_3613);
            let x_3620 : vec3<f32> = txVec47;
            let x_3622 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3620.xy, x_3620.z);
            u_xlat61.x = x_3622;
            let x_3625 : f32 = u_xlat23.x;
            let x_3627 : f32 = u_xlat61.x;
            let x_3629 : f32 = u_xlat85;
            u_xlat85 = ((x_3625 * x_3627) + x_3629);
            let x_3632 : vec4<f32> = u_xlat18;
            let x_3633 : vec2<f32> = vec2<f32>(x_3632.z, x_3632.w);
            let x_3635 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3633.x, x_3633.y, x_3635);
            let x_3642 : vec3<f32> = txVec48;
            let x_3644 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3642.xy, x_3642.z);
            u_xlat61.x = x_3644;
            let x_3647 : f32 = u_xlat23.y;
            let x_3649 : f32 = u_xlat61.x;
            let x_3651 : f32 = u_xlat85;
            u_xlat85 = ((x_3647 * x_3649) + x_3651);
            let x_3654 : vec4<f32> = u_xlat19;
            let x_3655 : vec2<f32> = vec2<f32>(x_3654.x, x_3654.y);
            let x_3657 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3655.x, x_3655.y, x_3657);
            let x_3664 : vec3<f32> = txVec49;
            let x_3666 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3664.xy, x_3664.z);
            u_xlat61.x = x_3666;
            let x_3669 : f32 = u_xlat23.z;
            let x_3671 : f32 = u_xlat61.x;
            let x_3673 : f32 = u_xlat85;
            u_xlat85 = ((x_3669 * x_3671) + x_3673);
            let x_3676 : vec4<f32> = u_xlat20;
            let x_3677 : vec2<f32> = vec2<f32>(x_3676.z, x_3676.w);
            let x_3679 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3677.x, x_3677.y, x_3679);
            let x_3686 : vec3<f32> = txVec50;
            let x_3688 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3686.xy, x_3686.z);
            u_xlat61.x = x_3688;
            let x_3691 : f32 = u_xlat23.w;
            let x_3693 : f32 = u_xlat61.x;
            let x_3695 : f32 = u_xlat85;
            u_xlat85 = ((x_3691 * x_3693) + x_3695);
            let x_3698 : vec4<f32> = u_xlat21;
            let x_3699 : vec2<f32> = vec2<f32>(x_3698.x, x_3698.y);
            let x_3701 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3699.x, x_3699.y, x_3701);
            let x_3708 : vec3<f32> = txVec51;
            let x_3710 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3708.xy, x_3708.z);
            u_xlat61.x = x_3710;
            let x_3713 : f32 = u_xlat24.x;
            let x_3715 : f32 = u_xlat61.x;
            let x_3717 : f32 = u_xlat85;
            u_xlat85 = ((x_3713 * x_3715) + x_3717);
            let x_3720 : vec4<f32> = u_xlat21;
            let x_3721 : vec2<f32> = vec2<f32>(x_3720.z, x_3720.w);
            let x_3723 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_3721.x, x_3721.y, x_3723);
            let x_3730 : vec3<f32> = txVec52;
            let x_3732 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3730.xy, x_3730.z);
            u_xlat61.x = x_3732;
            let x_3735 : f32 = u_xlat24.y;
            let x_3737 : f32 = u_xlat61.x;
            let x_3739 : f32 = u_xlat85;
            u_xlat85 = ((x_3735 * x_3737) + x_3739);
            let x_3742 : vec2<f32> = u_xlat38;
            let x_3744 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_3742.x, x_3742.y, x_3744);
            let x_3751 : vec3<f32> = txVec53;
            let x_3753 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3751.xy, x_3751.z);
            u_xlat61.x = x_3753;
            let x_3756 : f32 = u_xlat24.z;
            let x_3758 : f32 = u_xlat61.x;
            let x_3760 : f32 = u_xlat85;
            u_xlat85 = ((x_3756 * x_3758) + x_3760);
            let x_3763 : vec2<f32> = u_xlat69;
            let x_3765 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_3763.x, x_3763.y, x_3765);
            let x_3772 : vec3<f32> = txVec54;
            let x_3774 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3772.xy, x_3772.z);
            u_xlat61.x = x_3774;
            let x_3777 : f32 = u_xlat24.w;
            let x_3779 : f32 = u_xlat61.x;
            let x_3781 : f32 = u_xlat85;
            u_xlat85 = ((x_3777 * x_3779) + x_3781);
            let x_3784 : vec4<f32> = u_xlat16;
            let x_3785 : vec2<f32> = vec2<f32>(x_3784.x, x_3784.y);
            let x_3787 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_3785.x, x_3785.y, x_3787);
            let x_3794 : vec3<f32> = txVec55;
            let x_3796 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3794.xy, x_3794.z);
            u_xlat61.x = x_3796;
            let x_3799 : f32 = u_xlat12.x;
            let x_3801 : f32 = u_xlat61.x;
            let x_3803 : f32 = u_xlat85;
            u_xlat85 = ((x_3799 * x_3801) + x_3803);
            let x_3806 : vec4<f32> = u_xlat16;
            let x_3807 : vec2<f32> = vec2<f32>(x_3806.z, x_3806.w);
            let x_3809 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_3807.x, x_3807.y, x_3809);
            let x_3816 : vec3<f32> = txVec56;
            let x_3818 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3816.xy, x_3816.z);
            u_xlat61.x = x_3818;
            let x_3821 : f32 = u_xlat12.y;
            let x_3823 : f32 = u_xlat61.x;
            let x_3825 : f32 = u_xlat85;
            u_xlat85 = ((x_3821 * x_3823) + x_3825);
            let x_3828 : vec2<f32> = u_xlat64;
            let x_3830 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_3828.x, x_3828.y, x_3830);
            let x_3837 : vec3<f32> = txVec57;
            let x_3839 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3837.xy, x_3837.z);
            u_xlat61.x = x_3839;
            let x_3842 : f32 = u_xlat12.z;
            let x_3844 : f32 = u_xlat61.x;
            let x_3846 : f32 = u_xlat85;
            u_xlat85 = ((x_3842 * x_3844) + x_3846);
            let x_3849 : vec4<f32> = u_xlat11;
            let x_3850 : vec2<f32> = vec2<f32>(x_3849.x, x_3849.y);
            let x_3852 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_3850.x, x_3850.y, x_3852);
            let x_3859 : vec3<f32> = txVec58;
            let x_3861 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3859.xy, x_3859.z);
            u_xlat11.x = x_3861;
            let x_3864 : f32 = u_xlat12.w;
            let x_3866 : f32 = u_xlat11.x;
            let x_3868 : f32 = u_xlat85;
            u_xlat84 = ((x_3864 * x_3866) + x_3868);
          }
        }
      } else {
        let x_3872 : vec4<f32> = u_xlat10;
        let x_3873 : vec2<f32> = vec2<f32>(x_3872.x, x_3872.y);
        let x_3875 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_3873.x, x_3873.y, x_3875);
        let x_3882 : vec3<f32> = txVec59;
        let x_3884 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3882.xy, x_3882.z);
        u_xlat84 = x_3884;
      }
      let x_3885 : i32 = u_xlati6;
      let x_3887 : f32 = x_762.x_AdditionalShadowParams[x_3885].x;
      u_xlat10.x = (1.0f + -(x_3887));
      let x_3891 : f32 = u_xlat84;
      let x_3892 : i32 = u_xlati6;
      let x_3894 : f32 = x_762.x_AdditionalShadowParams[x_3892].x;
      let x_3897 : f32 = u_xlat10.x;
      u_xlat84 = ((x_3891 * x_3894) + x_3897);
      let x_3900 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_3900);
      let x_3905 : f32 = u_xlat10.z;
      u_xlatb35 = (x_3905 >= 1.0f);
      let x_3907 : bool = u_xlatb35;
      let x_3909 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_3907 | x_3909);
      let x_3913 : bool = u_xlatb10.x;
      let x_3914 : f32 = u_xlat84;
      u_xlat84 = select(x_3914, 1.0f, x_3913);
    } else {
      u_xlat84 = 1.0f;
    }
    let x_3917 : f32 = u_xlat84;
    u_xlat10.x = (-(x_3917) + 1.0f);
    let x_3921 : f32 = u_xlat78;
    let x_3923 : f32 = u_xlat10.x;
    let x_3925 : f32 = u_xlat84;
    u_xlat84 = ((x_3921 * x_3923) + x_3925);
    let x_3927 : f32 = u_xlat82;
    let x_3928 : f32 = u_xlat84;
    u_xlat82 = (x_3927 * x_3928);
    let x_3930 : vec3<f32> = u_xlat2;
    let x_3931 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(x_3930, vec3<f32>(x_3931.x, x_3931.y, x_3931.z));
    let x_3934 : f32 = u_xlat84;
    u_xlat84 = clamp(x_3934, 0.0f, 1.0f);
    let x_3936 : f32 = u_xlat82;
    let x_3937 : f32 = u_xlat84;
    u_xlat82 = (x_3936 * x_3937);
    let x_3939 : f32 = u_xlat82;
    let x_3941 : i32 = u_xlati6;
    let x_3943 : vec4<f32> = x_2441.x_AdditionalLightsColor[x_3941];
    let x_3945 : vec3<f32> = (vec3<f32>(x_3939, x_3939, x_3939) * vec3<f32>(x_3943.x, x_3943.y, x_3943.z));
    let x_3946 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3945.x, x_3945.y, x_3945.z, x_3946.w);
    let x_3948 : vec4<f32> = u_xlat8;
    let x_3950 : f32 = u_xlat83;
    let x_3953 : vec4<f32> = u_xlat1;
    let x_3955 : vec3<f32> = ((vec3<f32>(x_3948.x, x_3948.y, x_3948.z) * vec3<f32>(x_3950, x_3950, x_3950)) + vec3<f32>(x_3953.x, x_3953.y, x_3953.z));
    let x_3956 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3955.x, x_3955.y, x_3955.z, x_3956.w);
    let x_3958 : vec4<f32> = u_xlat8;
    let x_3960 : vec4<f32> = u_xlat8;
    u_xlat6.x = dot(vec3<f32>(x_3958.x, x_3958.y, x_3958.z), vec3<f32>(x_3960.x, x_3960.y, x_3960.z));
    let x_3965 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_3965, 1.17549435e-38f);
    let x_3969 : f32 = u_xlat6.x;
    u_xlat6.x = inverseSqrt(x_3969);
    let x_3972 : vec4<f32> = u_xlat6;
    let x_3974 : vec4<f32> = u_xlat8;
    let x_3976 : vec3<f32> = (vec3<f32>(x_3972.x, x_3972.x, x_3972.x) * vec3<f32>(x_3974.x, x_3974.y, x_3974.z));
    let x_3977 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3976.x, x_3976.y, x_3976.z, x_3977.w);
    let x_3979 : vec3<f32> = u_xlat2;
    let x_3980 : vec4<f32> = u_xlat8;
    u_xlat6.x = dot(x_3979, vec3<f32>(x_3980.x, x_3980.y, x_3980.z));
    let x_3985 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_3985, 0.0f, 1.0f);
    let x_3988 : vec4<f32> = u_xlat9;
    let x_3990 : vec4<f32> = u_xlat8;
    u_xlat82 = dot(vec3<f32>(x_3988.x, x_3988.y, x_3988.z), vec3<f32>(x_3990.x, x_3990.y, x_3990.z));
    let x_3993 : f32 = u_xlat82;
    u_xlat82 = clamp(x_3993, 0.0f, 1.0f);
    let x_3996 : f32 = u_xlat6.x;
    let x_3998 : f32 = u_xlat6.x;
    u_xlat6.x = (x_3996 * x_3998);
    let x_4002 : f32 = u_xlat6.x;
    let x_4004 : f32 = u_xlat0.x;
    u_xlat6.x = ((x_4002 * x_4004) + 1.00001001358032226562f);
    let x_4008 : f32 = u_xlat82;
    let x_4009 : f32 = u_xlat82;
    u_xlat82 = (x_4008 * x_4009);
    let x_4012 : f32 = u_xlat6.x;
    let x_4014 : f32 = u_xlat6.x;
    u_xlat6.x = (x_4012 * x_4014);
    let x_4017 : f32 = u_xlat82;
    u_xlat82 = max(x_4017, 0.10000000149011611938f);
    let x_4020 : f32 = u_xlat6.x;
    let x_4021 : f32 = u_xlat82;
    u_xlat6.x = (x_4020 * x_4021);
    let x_4024 : f32 = u_xlat79;
    let x_4026 : f32 = u_xlat6.x;
    u_xlat6.x = (x_4024 * x_4026);
    let x_4029 : f32 = u_xlat77;
    let x_4031 : f32 = u_xlat6.x;
    u_xlat6.x = (x_4029 / x_4031);
    let x_4034 : vec4<f32> = u_xlat5;
    let x_4036 : vec4<f32> = u_xlat6;
    let x_4039 : vec4<f32> = u_xlat4;
    let x_4041 : vec3<f32> = ((vec3<f32>(x_4034.x, x_4034.y, x_4034.z) * vec3<f32>(x_4036.x, x_4036.x, x_4036.x)) + vec3<f32>(x_4039.x, x_4039.y, x_4039.z));
    let x_4042 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4041.x, x_4041.y, x_4041.z, x_4042.w);
    let x_4044 : vec4<f32> = u_xlat8;
    let x_4046 : vec4<f32> = u_xlat10;
    let x_4049 : vec4<f32> = u_xlat7;
    let x_4051 : vec3<f32> = ((vec3<f32>(x_4044.x, x_4044.y, x_4044.z) * vec3<f32>(x_4046.x, x_4046.y, x_4046.z)) + vec3<f32>(x_4049.x, x_4049.y, x_4049.z));
    let x_4052 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_4051.x, x_4051.y, x_4051.z, x_4052.w);

    continuing {
      let x_4054 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4054 + bitcast<u32>(1i));
    }
  }
  let x_4056 : vec4<f32> = u_xlat3;
  let x_4058 : f32 = u_xlat25;
  let x_4061 : vec3<f32> = u_xlat31;
  u_xlat0 = ((vec3<f32>(x_4056.x, x_4056.y, x_4056.z) * vec3<f32>(x_4058, x_4058, x_4058)) + x_4061);
  let x_4063 : vec4<f32> = u_xlat7;
  let x_4065 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4063.x, x_4063.y, x_4063.z) + x_4065);
  let x_4067 : f32 = u_xlat75;
  let x_4069 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4067, x_4067, x_4067) * x_4069);
  let x_4071 : f32 = u_xlat76;
  let x_4072 : f32 = u_xlat76;
  u_xlat75 = (x_4071 * -(x_4072));
  let x_4075 : f32 = u_xlat75;
  u_xlat75 = exp2(x_4075);
  let x_4079 : vec3<f32> = u_xlat0;
  let x_4080 : f32 = u_xlat75;
  let x_4082 : vec3<f32> = (x_4079 * vec3<f32>(x_4080, x_4080, x_4080));
  let x_4083 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4082.x, x_4082.y, x_4082.z, x_4083.w);
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


