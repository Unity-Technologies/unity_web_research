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
  unity_FogParams : vec4<f32>,
  /* @offset(112) */
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

@group(0) @binding(10) var x_TerrainHolesTexture : texture_2d<f32>;

@group(0) @binding(17) var sampler_TerrainHolesTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlatb0 : bool;

@group(1) @binding(3) var<uniform> x_59 : x_Terrain;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(1) var x_Control : texture_2d<f32>;

@group(0) @binding(14) var sampler_Control : sampler;

var<private> u_xlat75 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(2) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(15) var sampler_Splat0 : sampler;

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

@group(0) @binding(6) var x_Normal0 : texture_2d<f32>;

@group(0) @binding(16) var sampler_Normal0 : sampler;

@group(0) @binding(7) var x_Normal1 : texture_2d<f32>;

@group(0) @binding(8) var x_Normal2 : texture_2d<f32>;

@group(0) @binding(9) var x_Normal3 : texture_2d<f32>;

var<private> u_xlat50 : f32;

var<private> u_xlat25 : f32;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_911 : UnityPerDraw;

var<private> u_xlat27 : vec3<f32>;

var<private> u_xlat28 : vec3<f32>;

var<private> u_xlat79 : f32;

var<private> u_xlatb5 : bool;

@group(1) @binding(4) var<uniform> x_1049 : LightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(11) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(18) var sampler_LinearClampCompare : sampler_comparison;

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

@group(0) @binding(13) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu50 : u32;

var<private> u_xlatu81 : u32;

var<private> u_xlati82 : i32;

var<private> u_xlat81 : f32;

var<private> u_xlati81 : i32;

@group(1) @binding(1) var<uniform> x_2741 : AdditionalLights;

var<private> u_xlat82 : f32;

var<private> u_xlat83 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlati84 : i32;

var<private> u_xlatb10 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat35 : vec3<f32>;

var<private> u_xlat60 : f32;

var<private> u_xlatb84 : bool;

@group(0) @binding(12) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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
  var x_2335 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2882 : f32;
  var x_2893 : f32;
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
  let x_394 : vec4<f32> = vs_TEXCOORD1;
  let x_397 : f32 = x_29.x_GlobalMipBias.x;
  let x_398 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_394.x, x_394.y), x_397);
  let x_399 : vec3<f32> = vec3<f32>(x_398.x, x_398.y, x_398.w);
  let x_400 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_399.x, x_399.y, x_399.z, x_400.w);
  let x_403 : f32 = u_xlat6.x;
  let x_405 : f32 = u_xlat6.z;
  u_xlat6.x = (x_403 * x_405);
  let x_408 : vec4<f32> = u_xlat6;
  let x_413 : vec2<f32> = ((vec2<f32>(x_408.x, x_408.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_414 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_413.x, x_413.y, x_414.z, x_414.w);
  let x_416 : vec4<f32> = u_xlat6;
  let x_418 : vec4<f32> = u_xlat6;
  u_xlat76 = dot(vec2<f32>(x_416.x, x_416.y), vec2<f32>(x_418.x, x_418.y));
  let x_421 : f32 = u_xlat76;
  u_xlat76 = min(x_421, 1.0f);
  let x_423 : f32 = u_xlat76;
  u_xlat76 = (-(x_423) + 1.0f);
  let x_426 : f32 = u_xlat76;
  u_xlat76 = sqrt(x_426);
  let x_428 : f32 = u_xlat76;
  u_xlat7.z = max(x_428, 0.0000000000000001f);
  let x_432 : vec4<f32> = u_xlat6;
  let x_435 : f32 = x_59.x_NormalScale0;
  let x_437 : vec2<f32> = (vec2<f32>(x_432.x, x_432.y) * vec2<f32>(x_435, x_435));
  let x_438 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_437.x, x_437.y, x_438.z, x_438.w);
  let x_444 : vec4<f32> = vs_TEXCOORD1;
  let x_447 : f32 = x_29.x_GlobalMipBias.x;
  let x_448 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_444.z, x_444.w), x_447);
  let x_449 : vec3<f32> = vec3<f32>(x_448.x, x_448.y, x_448.w);
  let x_450 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_449.x, x_449.y, x_449.z, x_450.w);
  let x_453 : f32 = u_xlat6.x;
  let x_455 : f32 = u_xlat6.z;
  u_xlat6.x = (x_453 * x_455);
  let x_458 : vec4<f32> = u_xlat6;
  let x_461 : vec2<f32> = ((vec2<f32>(x_458.x, x_458.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_462 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_461.x, x_461.y, x_462.z, x_462.w);
  let x_464 : vec4<f32> = u_xlat6;
  let x_466 : vec4<f32> = u_xlat6;
  u_xlat76 = dot(vec2<f32>(x_464.x, x_464.y), vec2<f32>(x_466.x, x_466.y));
  let x_469 : f32 = u_xlat76;
  u_xlat76 = min(x_469, 1.0f);
  let x_471 : f32 = u_xlat76;
  u_xlat76 = (-(x_471) + 1.0f);
  let x_474 : f32 = u_xlat76;
  u_xlat76 = sqrt(x_474);
  let x_476 : f32 = u_xlat76;
  u_xlat8.z = max(x_476, 0.0000000000000001f);
  let x_479 : vec4<f32> = u_xlat6;
  let x_482 : f32 = x_59.x_NormalScale1;
  let x_484 : f32 = x_59.x_NormalScale1;
  let x_485 : vec2<f32> = vec2<f32>(x_482, x_484);
  let x_489 : vec2<f32> = (vec2<f32>(x_479.x, x_479.y) * vec2<f32>(x_485.x, x_485.y));
  let x_490 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_489.x, x_489.y, x_490.z, x_490.w);
  let x_492 : vec4<f32> = u_xlat4;
  let x_494 : vec4<f32> = u_xlat8;
  let x_496 : vec3<f32> = (vec3<f32>(x_492.y, x_492.y, x_492.y) * vec3<f32>(x_494.x, x_494.y, x_494.z));
  let x_497 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_496.x, x_496.y, x_496.z, x_497.w);
  let x_499 : vec4<f32> = u_xlat4;
  let x_501 : vec4<f32> = u_xlat7;
  let x_504 : vec4<f32> = u_xlat6;
  let x_506 : vec3<f32> = ((vec3<f32>(x_499.x, x_499.x, x_499.x) * vec3<f32>(x_501.x, x_501.y, x_501.z)) + vec3<f32>(x_504.x, x_504.y, x_504.z));
  let x_507 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_506.x, x_506.y, x_506.z, x_507.w);
  let x_513 : vec4<f32> = vs_TEXCOORD2;
  let x_516 : f32 = x_29.x_GlobalMipBias.x;
  let x_517 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_513.x, x_513.y), x_516);
  let x_518 : vec3<f32> = vec3<f32>(x_517.x, x_517.y, x_517.w);
  let x_519 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_518.x, x_518.y, x_518.z, x_519.w);
  let x_522 : f32 = u_xlat7.x;
  let x_524 : f32 = u_xlat7.z;
  u_xlat7.x = (x_522 * x_524);
  let x_527 : vec4<f32> = u_xlat7;
  let x_530 : vec2<f32> = ((vec2<f32>(x_527.x, x_527.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_531 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_530.x, x_530.y, x_531.z, x_531.w);
  let x_533 : vec4<f32> = u_xlat7;
  let x_535 : vec4<f32> = u_xlat7;
  u_xlat76 = dot(vec2<f32>(x_533.x, x_533.y), vec2<f32>(x_535.x, x_535.y));
  let x_538 : f32 = u_xlat76;
  u_xlat76 = min(x_538, 1.0f);
  let x_540 : f32 = u_xlat76;
  u_xlat76 = (-(x_540) + 1.0f);
  let x_543 : f32 = u_xlat76;
  u_xlat76 = sqrt(x_543);
  let x_545 : f32 = u_xlat76;
  u_xlat8.z = max(x_545, 0.0000000000000001f);
  let x_548 : vec4<f32> = u_xlat7;
  let x_552 : f32 = x_59.x_NormalScale2;
  let x_554 : f32 = x_59.x_NormalScale2;
  let x_555 : vec2<f32> = vec2<f32>(x_552, x_554);
  let x_559 : vec2<f32> = (vec2<f32>(x_548.x, x_548.y) * vec2<f32>(x_555.x, x_555.y));
  let x_560 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_559.x, x_559.y, x_560.z, x_560.w);
  let x_562 : vec4<f32> = u_xlat4;
  let x_564 : vec4<f32> = u_xlat8;
  let x_567 : vec4<f32> = u_xlat6;
  let x_569 : vec3<f32> = ((vec3<f32>(x_562.z, x_562.z, x_562.z) * vec3<f32>(x_564.x, x_564.y, x_564.z)) + vec3<f32>(x_567.x, x_567.y, x_567.z));
  let x_570 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_569.x, x_569.y, x_569.z, x_570.w);
  let x_576 : vec4<f32> = vs_TEXCOORD2;
  let x_579 : f32 = x_29.x_GlobalMipBias.x;
  let x_580 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_576.z, x_576.w), x_579);
  let x_581 : vec3<f32> = vec3<f32>(x_580.x, x_580.y, x_580.w);
  let x_582 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_581.x, x_581.y, x_581.z, x_582.w);
  let x_585 : f32 = u_xlat7.x;
  let x_587 : f32 = u_xlat7.z;
  u_xlat7.x = (x_585 * x_587);
  let x_590 : vec4<f32> = u_xlat7;
  let x_593 : vec2<f32> = ((vec2<f32>(x_590.x, x_590.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_594 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_593.x, x_593.y, x_594.z, x_594.w);
  let x_596 : vec4<f32> = u_xlat7;
  let x_598 : vec4<f32> = u_xlat7;
  u_xlat76 = dot(vec2<f32>(x_596.x, x_596.y), vec2<f32>(x_598.x, x_598.y));
  let x_601 : f32 = u_xlat76;
  u_xlat76 = min(x_601, 1.0f);
  let x_603 : f32 = u_xlat76;
  u_xlat76 = (-(x_603) + 1.0f);
  let x_606 : f32 = u_xlat76;
  u_xlat76 = sqrt(x_606);
  let x_608 : f32 = u_xlat76;
  u_xlat8.z = max(x_608, 0.0000000000000001f);
  let x_611 : vec4<f32> = u_xlat7;
  let x_615 : f32 = x_59.x_NormalScale3;
  let x_617 : f32 = x_59.x_NormalScale3;
  let x_618 : vec2<f32> = vec2<f32>(x_615, x_617);
  let x_622 : vec2<f32> = (vec2<f32>(x_611.x, x_611.y) * vec2<f32>(x_618.x, x_618.y));
  let x_623 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_622.x, x_622.y, x_623.z, x_623.w);
  let x_625 : vec4<f32> = u_xlat4;
  let x_627 : vec4<f32> = u_xlat8;
  let x_630 : vec4<f32> = u_xlat6;
  let x_632 : vec3<f32> = ((vec3<f32>(x_625.w, x_625.w, x_625.w) * vec3<f32>(x_627.x, x_627.y, x_627.z)) + vec3<f32>(x_630.x, x_630.y, x_630.z));
  let x_633 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_632.x, x_632.y, x_632.z, x_633.w);
  let x_636 : f32 = u_xlat6.z;
  u_xlat6.w = (x_636 + 0.00000999999974737875f);
  let x_640 : vec4<f32> = u_xlat6;
  let x_642 : vec4<f32> = u_xlat6;
  u_xlat76 = dot(vec3<f32>(x_640.x, x_640.y, x_640.w), vec3<f32>(x_642.x, x_642.y, x_642.w));
  let x_645 : f32 = u_xlat76;
  u_xlat76 = inverseSqrt(x_645);
  let x_647 : f32 = u_xlat76;
  let x_649 : vec4<f32> = u_xlat6;
  let x_651 : vec3<f32> = (vec3<f32>(x_647, x_647, x_647) * vec3<f32>(x_649.x, x_649.y, x_649.w));
  let x_652 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_651.x, x_651.y, x_651.z, x_652.w);
  let x_655 : f32 = x_59.x_MaskMapRemapScale0.y;
  u_xlat7.x = x_655;
  let x_658 : f32 = x_59.x_MaskMapRemapScale1.y;
  u_xlat7.y = x_658;
  let x_661 : f32 = x_59.x_MaskMapRemapScale2.y;
  u_xlat7.z = x_661;
  let x_664 : f32 = x_59.x_MaskMapRemapScale3.y;
  u_xlat7.w = x_664;
  let x_667 : f32 = x_59.x_MaskMapRemapOffset0.y;
  u_xlat8.x = x_667;
  let x_670 : f32 = x_59.x_MaskMapRemapOffset1.y;
  u_xlat8.y = x_670;
  let x_673 : f32 = x_59.x_MaskMapRemapOffset2.y;
  u_xlat8.z = x_673;
  let x_676 : f32 = x_59.x_MaskMapRemapOffset3.y;
  u_xlat8.w = x_676;
  let x_678 : vec4<f32> = u_xlat7;
  let x_679 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_678 + x_679);
  let x_682 : f32 = u_xlat0.z;
  u_xlat8.x = x_682;
  let x_685 : f32 = u_xlat1.z;
  u_xlat8.y = x_685;
  let x_688 : f32 = u_xlat2.z;
  u_xlat8.z = x_688;
  let x_691 : f32 = u_xlat3.y;
  u_xlat8.w = x_691;
  let x_693 : vec4<f32> = u_xlat9;
  let x_696 : f32 = x_59.x_Smoothness0;
  let x_698 : f32 = x_59.x_Smoothness1;
  let x_700 : f32 = x_59.x_Smoothness2;
  let x_702 : f32 = x_59.x_Smoothness3;
  let x_705 : vec4<f32> = u_xlat8;
  u_xlat8 = ((-(x_693) * vec4<f32>(x_696, x_698, x_700, x_702)) + x_705);
  let x_709 : f32 = x_59.x_LayerHasMask0;
  let x_712 : f32 = x_59.x_LayerHasMask1;
  let x_715 : f32 = x_59.x_LayerHasMask2;
  let x_718 : f32 = x_59.x_LayerHasMask3;
  let x_720 : vec4<f32> = u_xlat8;
  let x_722 : vec4<f32> = u_xlat10;
  u_xlat8 = ((vec4<f32>(x_709, x_712, x_715, x_718) * x_720) + x_722);
  let x_725 : vec4<f32> = u_xlat4;
  let x_726 : vec4<f32> = u_xlat8;
  u_xlat50 = dot(x_725, x_726);
  let x_729 : f32 = u_xlat0.x;
  u_xlat8.x = x_729;
  let x_732 : f32 = u_xlat1.x;
  u_xlat8.y = x_732;
  let x_735 : f32 = u_xlat2.x;
  u_xlat8.z = x_735;
  let x_738 : f32 = u_xlat3.x;
  u_xlat8.w = x_738;
  let x_740 : vec4<f32> = u_xlat8;
  let x_743 : f32 = x_59.x_Metallic0;
  let x_746 : f32 = x_59.x_Metallic1;
  let x_749 : f32 = x_59.x_Metallic2;
  let x_752 : f32 = x_59.x_Metallic3;
  u_xlat8 = (x_740 + -(vec4<f32>(x_743, x_746, x_749, x_752)));
  let x_757 : f32 = x_59.x_LayerHasMask0;
  let x_759 : f32 = x_59.x_LayerHasMask1;
  let x_761 : f32 = x_59.x_LayerHasMask2;
  let x_763 : f32 = x_59.x_LayerHasMask3;
  let x_765 : vec4<f32> = u_xlat8;
  let x_768 : f32 = x_59.x_Metallic0;
  let x_770 : f32 = x_59.x_Metallic1;
  let x_772 : f32 = x_59.x_Metallic2;
  let x_774 : f32 = x_59.x_Metallic3;
  u_xlat8 = ((vec4<f32>(x_757, x_759, x_761, x_763) * x_765) + vec4<f32>(x_768, x_770, x_772, x_774));
  let x_777 : vec4<f32> = u_xlat4;
  let x_778 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_777, x_778);
  let x_782 : f32 = u_xlat0.y;
  u_xlat3.x = x_782;
  let x_785 : f32 = u_xlat1.y;
  u_xlat3.y = x_785;
  let x_788 : f32 = u_xlat2.y;
  u_xlat3.z = x_788;
  let x_790 : vec4<f32> = u_xlat7;
  let x_792 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_790) + x_792);
  let x_795 : f32 = x_59.x_LayerHasMask0;
  let x_797 : f32 = x_59.x_LayerHasMask1;
  let x_799 : f32 = x_59.x_LayerHasMask2;
  let x_801 : f32 = x_59.x_LayerHasMask3;
  let x_803 : vec4<f32> = u_xlat1;
  let x_805 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec4<f32>(x_795, x_797, x_799, x_801) * x_803) + x_805);
  let x_808 : vec4<f32> = u_xlat4;
  let x_809 : vec4<f32> = u_xlat1;
  u_xlat25 = dot(x_808, x_809);
  let x_811 : vec4<f32> = u_xlat6;
  let x_814 : vec4<f32> = vs_TEXCOORD5;
  let x_816 : vec3<f32> = (vec3<f32>(x_811.y, x_811.y, x_811.y) * vec3<f32>(x_814.x, x_814.y, x_814.z));
  let x_817 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_816.x, x_816.y, x_816.z, x_817.w);
  let x_819 : vec4<f32> = u_xlat6;
  let x_822 : vec4<f32> = vs_TEXCOORD4;
  let x_826 : vec4<f32> = u_xlat1;
  let x_828 : vec3<f32> = ((vec3<f32>(x_819.x, x_819.x, x_819.x) * -(vec3<f32>(x_822.x, x_822.y, x_822.z))) + vec3<f32>(x_826.x, x_826.y, x_826.z));
  let x_829 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_828.x, x_828.y, x_828.z, x_829.w);
  let x_831 : vec4<f32> = u_xlat6;
  let x_834 : vec4<f32> = vs_TEXCOORD3;
  let x_837 : vec4<f32> = u_xlat1;
  let x_839 : vec3<f32> = ((vec3<f32>(x_831.z, x_831.z, x_831.z) * vec3<f32>(x_834.x, x_834.y, x_834.z)) + vec3<f32>(x_837.x, x_837.y, x_837.z));
  let x_840 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_839.x, x_839.y, x_839.z, x_840.w);
  let x_842 : vec4<f32> = u_xlat1;
  let x_844 : vec4<f32> = u_xlat1;
  u_xlat76 = dot(vec3<f32>(x_842.x, x_842.y, x_842.z), vec3<f32>(x_844.x, x_844.y, x_844.z));
  let x_847 : f32 = u_xlat76;
  u_xlat76 = inverseSqrt(x_847);
  let x_849 : f32 = u_xlat76;
  let x_851 : vec4<f32> = u_xlat1;
  let x_853 : vec3<f32> = (vec3<f32>(x_849, x_849, x_849) * vec3<f32>(x_851.x, x_851.y, x_851.z));
  let x_854 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_853.x, x_853.y, x_853.z, x_854.w);
  let x_860 : f32 = vs_TEXCOORD7.y;
  let x_862 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat2.x = (x_860 * x_862);
  let x_866 : f32 = x_29.unity_MatrixV[0i].z;
  let x_868 : f32 = vs_TEXCOORD7.x;
  let x_871 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_866 * x_868) + x_871);
  let x_875 : f32 = x_29.unity_MatrixV[2i].z;
  let x_877 : f32 = vs_TEXCOORD7.z;
  let x_880 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_875 * x_877) + x_880);
  let x_884 : f32 = u_xlat2.x;
  let x_886 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat2.x = (x_884 + x_886);
  let x_890 : f32 = u_xlat2.x;
  let x_893 : f32 = x_29.x_ProjectionParams.y;
  u_xlat2.x = (-(x_890) + -(x_893));
  let x_898 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_898, 0.0f);
  let x_902 : f32 = u_xlat2.x;
  let x_904 : f32 = x_29.unity_FogParams.x;
  u_xlat2.x = (x_902 * x_904);
  u_xlat1.w = 1.0f;
  let x_913 : vec4<f32> = x_911.unity_SHAr;
  let x_914 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_913, x_914);
  let x_918 : vec4<f32> = x_911.unity_SHAg;
  let x_919 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_918, x_919);
  let x_923 : vec4<f32> = x_911.unity_SHAb;
  let x_924 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_923, x_924);
  let x_927 : vec4<f32> = u_xlat1;
  let x_929 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_927.y, x_927.z, x_927.z, x_927.x) * vec4<f32>(x_929.x, x_929.y, x_929.z, x_929.z));
  let x_933 : vec4<f32> = x_911.unity_SHBr;
  let x_934 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_933, x_934);
  let x_938 : vec4<f32> = x_911.unity_SHBg;
  let x_939 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_938, x_939);
  let x_943 : vec4<f32> = x_911.unity_SHBb;
  let x_944 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_943, x_944);
  let x_948 : f32 = u_xlat1.y;
  let x_950 : f32 = u_xlat1.y;
  u_xlat76 = (x_948 * x_950);
  let x_953 : f32 = u_xlat1.x;
  let x_955 : f32 = u_xlat1.x;
  let x_957 : f32 = u_xlat76;
  u_xlat76 = ((x_953 * x_955) + -(x_957));
  let x_963 : vec4<f32> = x_911.unity_SHC;
  let x_965 : f32 = u_xlat76;
  let x_968 : vec4<f32> = u_xlat6;
  u_xlat27 = ((vec3<f32>(x_963.x, x_963.y, x_963.z) * vec3<f32>(x_965, x_965, x_965)) + vec3<f32>(x_968.x, x_968.y, x_968.z));
  let x_971 : vec3<f32> = u_xlat27;
  let x_972 : vec4<f32> = u_xlat3;
  u_xlat27 = (x_971 + vec3<f32>(x_972.x, x_972.y, x_972.z));
  let x_975 : vec3<f32> = u_xlat27;
  u_xlat27 = max(x_975, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_979 : f32 = u_xlat0.x;
  u_xlat76 = ((-(x_979) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_984 : f32 = u_xlat50;
  let x_985 : f32 = u_xlat76;
  u_xlat3.x = (x_984 + -(x_985));
  let x_990 : f32 = u_xlat76;
  let x_992 : vec4<f32> = u_xlat5;
  u_xlat28 = (vec3<f32>(x_990, x_990, x_990) * vec3<f32>(x_992.x, x_992.y, x_992.z));
  let x_995 : vec4<f32> = u_xlat5;
  let x_999 : vec3<f32> = (vec3<f32>(x_995.x, x_995.y, x_995.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_1000 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_999.x, x_999.y, x_999.z, x_1000.w);
  let x_1002 : vec3<f32> = u_xlat0;
  let x_1004 : vec4<f32> = u_xlat4;
  let x_1009 : vec3<f32> = ((vec3<f32>(x_1002.x, x_1002.x, x_1002.x) * vec3<f32>(x_1004.x, x_1004.y, x_1004.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_1010 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1009.x, x_1009.y, x_1009.z, x_1010.w);
  let x_1012 : f32 = u_xlat50;
  u_xlat0.x = (-(x_1012) + 1.0f);
  let x_1017 : f32 = u_xlat0.x;
  let x_1019 : f32 = u_xlat0.x;
  u_xlat50 = (x_1017 * x_1019);
  let x_1021 : f32 = u_xlat50;
  u_xlat50 = max(x_1021, 0.0078125f);
  let x_1024 : f32 = u_xlat50;
  let x_1025 : f32 = u_xlat50;
  u_xlat76 = (x_1024 * x_1025);
  let x_1028 : f32 = u_xlat3.x;
  u_xlat3.x = (x_1028 + 1.0f);
  let x_1032 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1032, 0.0f, 1.0f);
  let x_1036 : f32 = u_xlat50;
  u_xlat79 = ((x_1036 * 4.0f) + 2.0f);
  let x_1039 : f32 = u_xlat25;
  u_xlat25 = min(x_1039, 1.0f);
  let x_1051 : f32 = x_1049.x_MainLightShadowParams.y;
  u_xlatb5 = (0.0f < x_1051);
  let x_1053 : bool = u_xlatb5;
  if (x_1053) {
    let x_1057 : f32 = x_1049.x_MainLightShadowParams.y;
    u_xlatb5 = (x_1057 == 1.0f);
    let x_1059 : bool = u_xlatb5;
    if (x_1059) {
      let x_1063 : vec4<f32> = vs_TEXCOORD8;
      let x_1066 : vec4<f32> = x_1049.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_1063.x, x_1063.y, x_1063.x, x_1063.y) + x_1066);
      let x_1070 : vec4<f32> = u_xlat5;
      let x_1071 : vec2<f32> = vec2<f32>(x_1070.x, x_1070.y);
      let x_1073 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_1071.x, x_1071.y, x_1073);
      let x_1085 : vec3<f32> = txVec0;
      let x_1087 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1085.xy, x_1085.z);
      u_xlat6.x = x_1087;
      let x_1090 : vec4<f32> = u_xlat5;
      let x_1091 : vec2<f32> = vec2<f32>(x_1090.z, x_1090.w);
      let x_1093 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_1091.x, x_1091.y, x_1093);
      let x_1100 : vec3<f32> = txVec1;
      let x_1102 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1100.xy, x_1100.z);
      u_xlat6.y = x_1102;
      let x_1104 : vec4<f32> = vs_TEXCOORD8;
      let x_1107 : vec4<f32> = x_1049.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_1104.x, x_1104.y, x_1104.x, x_1104.y) + x_1107);
      let x_1110 : vec4<f32> = u_xlat5;
      let x_1111 : vec2<f32> = vec2<f32>(x_1110.x, x_1110.y);
      let x_1113 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_1111.x, x_1111.y, x_1113);
      let x_1120 : vec3<f32> = txVec2;
      let x_1122 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1120.xy, x_1120.z);
      u_xlat6.z = x_1122;
      let x_1125 : vec4<f32> = u_xlat5;
      let x_1126 : vec2<f32> = vec2<f32>(x_1125.z, x_1125.w);
      let x_1128 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_1126.x, x_1126.y, x_1128);
      let x_1135 : vec3<f32> = txVec3;
      let x_1137 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1135.xy, x_1135.z);
      u_xlat6.w = x_1137;
      let x_1139 : vec4<f32> = u_xlat6;
      u_xlat5.x = dot(x_1139, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1147 : f32 = x_1049.x_MainLightShadowParams.y;
      u_xlatb30 = (x_1147 == 2.0f);
      let x_1149 : bool = u_xlatb30;
      if (x_1149) {
        let x_1153 : vec4<f32> = vs_TEXCOORD8;
        let x_1156 : vec4<f32> = x_1049.x_MainLightShadowmapSize;
        let x_1159 : vec2<f32> = ((vec2<f32>(x_1153.x, x_1153.y) * vec2<f32>(x_1156.z, x_1156.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1160 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_1159.x, x_1159.y, x_1160.z);
        let x_1162 : vec3<f32> = u_xlat30;
        let x_1164 : vec2<f32> = floor(vec2<f32>(x_1162.x, x_1162.y));
        let x_1165 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_1164.x, x_1164.y, x_1165.z);
        let x_1167 : vec4<f32> = vs_TEXCOORD8;
        let x_1170 : vec4<f32> = x_1049.x_MainLightShadowmapSize;
        let x_1173 : vec3<f32> = u_xlat30;
        let x_1176 : vec2<f32> = ((vec2<f32>(x_1167.x, x_1167.y) * vec2<f32>(x_1170.z, x_1170.w)) + -(vec2<f32>(x_1173.x, x_1173.y)));
        let x_1177 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1176.x, x_1176.y, x_1177.z, x_1177.w);
        let x_1179 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1179.x, x_1179.x, x_1179.y, x_1179.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1183 : vec4<f32> = u_xlat7;
        let x_1185 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1183.x, x_1183.x, x_1183.z, x_1183.z) * vec4<f32>(x_1185.x, x_1185.x, x_1185.z, x_1185.z));
        let x_1190 : vec4<f32> = u_xlat8;
        u_xlat56 = (vec2<f32>(x_1190.y, x_1190.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1195 : vec4<f32> = u_xlat8;
        let x_1198 : vec4<f32> = u_xlat6;
        let x_1201 : vec2<f32> = ((vec2<f32>(x_1195.x, x_1195.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1198.x, x_1198.y)));
        let x_1202 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1201.x, x_1202.y, x_1201.y, x_1202.w);
        let x_1204 : vec4<f32> = u_xlat6;
        let x_1208 : vec2<f32> = (-(vec2<f32>(x_1204.x, x_1204.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1209 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1208.x, x_1208.y, x_1209.z, x_1209.w);
        let x_1212 : vec4<f32> = u_xlat6;
        u_xlat58 = min(vec2<f32>(x_1212.x, x_1212.y), vec2<f32>(0.0f, 0.0f));
        let x_1216 : vec2<f32> = u_xlat58;
        let x_1218 : vec2<f32> = u_xlat58;
        let x_1220 : vec4<f32> = u_xlat8;
        u_xlat58 = ((-(x_1216) * x_1218) + vec2<f32>(x_1220.x, x_1220.y));
        let x_1223 : vec4<f32> = u_xlat6;
        let x_1225 : vec2<f32> = max(vec2<f32>(x_1223.x, x_1223.y), vec2<f32>(0.0f, 0.0f));
        let x_1226 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1225.x, x_1225.y, x_1226.z, x_1226.w);
        let x_1228 : vec4<f32> = u_xlat6;
        let x_1231 : vec4<f32> = u_xlat6;
        let x_1234 : vec4<f32> = u_xlat7;
        let x_1236 : vec2<f32> = ((-(vec2<f32>(x_1228.x, x_1228.y)) * vec2<f32>(x_1231.x, x_1231.y)) + vec2<f32>(x_1234.y, x_1234.w));
        let x_1237 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1236.x, x_1236.y, x_1237.z, x_1237.w);
        let x_1239 : vec2<f32> = u_xlat58;
        u_xlat58 = (x_1239 + vec2<f32>(1.0f, 1.0f));
        let x_1241 : vec4<f32> = u_xlat6;
        let x_1243 : vec2<f32> = (vec2<f32>(x_1241.x, x_1241.y) + vec2<f32>(1.0f, 1.0f));
        let x_1244 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1243.x, x_1243.y, x_1244.z, x_1244.w);
        let x_1246 : vec4<f32> = u_xlat7;
        let x_1250 : vec2<f32> = (vec2<f32>(x_1246.x, x_1246.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1251 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1250.x, x_1250.y, x_1251.z, x_1251.w);
        let x_1253 : vec4<f32> = u_xlat8;
        let x_1255 : vec2<f32> = (vec2<f32>(x_1253.x, x_1253.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1256 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1255.x, x_1255.y, x_1256.z, x_1256.w);
        let x_1258 : vec2<f32> = u_xlat58;
        let x_1259 : vec2<f32> = (x_1258 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1260 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1259.x, x_1259.y, x_1260.z, x_1260.w);
        let x_1262 : vec4<f32> = u_xlat6;
        let x_1264 : vec2<f32> = (vec2<f32>(x_1262.x, x_1262.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1265 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1264.x, x_1264.y, x_1265.z, x_1265.w);
        let x_1267 : vec4<f32> = u_xlat7;
        let x_1269 : vec2<f32> = (vec2<f32>(x_1267.y, x_1267.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1270 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1269.x, x_1269.y, x_1270.z, x_1270.w);
        let x_1273 : f32 = u_xlat8.x;
        u_xlat9.z = x_1273;
        let x_1276 : f32 = u_xlat6.x;
        u_xlat9.w = x_1276;
        let x_1279 : f32 = u_xlat11.x;
        u_xlat10.z = x_1279;
        let x_1282 : f32 = u_xlat56.x;
        u_xlat10.w = x_1282;
        let x_1284 : vec4<f32> = u_xlat9;
        let x_1286 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1284.z, x_1284.w, x_1284.x, x_1284.z) + vec4<f32>(x_1286.z, x_1286.w, x_1286.x, x_1286.z));
        let x_1290 : f32 = u_xlat9.y;
        u_xlat8.z = x_1290;
        let x_1293 : f32 = u_xlat6.y;
        u_xlat8.w = x_1293;
        let x_1296 : f32 = u_xlat10.y;
        u_xlat11.z = x_1296;
        let x_1299 : f32 = u_xlat56.y;
        u_xlat11.w = x_1299;
        let x_1301 : vec4<f32> = u_xlat8;
        let x_1303 : vec4<f32> = u_xlat11;
        let x_1305 : vec3<f32> = (vec3<f32>(x_1301.z, x_1301.y, x_1301.w) + vec3<f32>(x_1303.z, x_1303.y, x_1303.w));
        let x_1306 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1305.x, x_1305.y, x_1305.z, x_1306.w);
        let x_1308 : vec4<f32> = u_xlat10;
        let x_1310 : vec4<f32> = u_xlat7;
        let x_1312 : vec3<f32> = (vec3<f32>(x_1308.x, x_1308.z, x_1308.w) / vec3<f32>(x_1310.z, x_1310.w, x_1310.y));
        let x_1313 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1312.x, x_1312.y, x_1312.z, x_1313.w);
        let x_1315 : vec4<f32> = u_xlat8;
        let x_1321 : vec3<f32> = (vec3<f32>(x_1315.x, x_1315.y, x_1315.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1322 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1321.x, x_1321.y, x_1321.z, x_1322.w);
        let x_1324 : vec4<f32> = u_xlat11;
        let x_1326 : vec4<f32> = u_xlat6;
        let x_1328 : vec3<f32> = (vec3<f32>(x_1324.z, x_1324.y, x_1324.w) / vec3<f32>(x_1326.x, x_1326.y, x_1326.z));
        let x_1329 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1328.x, x_1328.y, x_1328.z, x_1329.w);
        let x_1331 : vec4<f32> = u_xlat9;
        let x_1333 : vec3<f32> = (vec3<f32>(x_1331.x, x_1331.y, x_1331.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1334 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1333.x, x_1333.y, x_1333.z, x_1334.w);
        let x_1336 : vec4<f32> = u_xlat8;
        let x_1339 : vec4<f32> = x_1049.x_MainLightShadowmapSize;
        let x_1341 : vec3<f32> = (vec3<f32>(x_1336.y, x_1336.x, x_1336.z) * vec3<f32>(x_1339.x, x_1339.x, x_1339.x));
        let x_1342 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1341.x, x_1341.y, x_1341.z, x_1342.w);
        let x_1344 : vec4<f32> = u_xlat9;
        let x_1347 : vec4<f32> = x_1049.x_MainLightShadowmapSize;
        let x_1349 : vec3<f32> = (vec3<f32>(x_1344.x, x_1344.y, x_1344.z) * vec3<f32>(x_1347.y, x_1347.y, x_1347.y));
        let x_1350 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1349.x, x_1349.y, x_1349.z, x_1350.w);
        let x_1353 : f32 = u_xlat9.x;
        u_xlat8.w = x_1353;
        let x_1355 : vec3<f32> = u_xlat30;
        let x_1358 : vec4<f32> = x_1049.x_MainLightShadowmapSize;
        let x_1361 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1355.x, x_1355.y, x_1355.x, x_1355.y) * vec4<f32>(x_1358.x, x_1358.y, x_1358.x, x_1358.y)) + vec4<f32>(x_1361.y, x_1361.w, x_1361.x, x_1361.w));
        let x_1364 : vec3<f32> = u_xlat30;
        let x_1367 : vec4<f32> = x_1049.x_MainLightShadowmapSize;
        let x_1370 : vec4<f32> = u_xlat8;
        let x_1372 : vec2<f32> = ((vec2<f32>(x_1364.x, x_1364.y) * vec2<f32>(x_1367.x, x_1367.y)) + vec2<f32>(x_1370.z, x_1370.w));
        let x_1373 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1372.x, x_1372.y, x_1373.z, x_1373.w);
        let x_1376 : f32 = u_xlat8.y;
        u_xlat9.w = x_1376;
        let x_1378 : vec4<f32> = u_xlat9;
        let x_1379 : vec2<f32> = vec2<f32>(x_1378.y, x_1378.z);
        let x_1380 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1380.x, x_1379.x, x_1380.z, x_1379.y);
        let x_1382 : vec3<f32> = u_xlat30;
        let x_1385 : vec4<f32> = x_1049.x_MainLightShadowmapSize;
        let x_1388 : vec4<f32> = u_xlat8;
        u_xlat12 = ((vec4<f32>(x_1382.x, x_1382.y, x_1382.x, x_1382.y) * vec4<f32>(x_1385.x, x_1385.y, x_1385.x, x_1385.y)) + vec4<f32>(x_1388.x, x_1388.y, x_1388.z, x_1388.y));
        let x_1391 : vec3<f32> = u_xlat30;
        let x_1394 : vec4<f32> = x_1049.x_MainLightShadowmapSize;
        let x_1397 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1391.x, x_1391.y, x_1391.x, x_1391.y) * vec4<f32>(x_1394.x, x_1394.y, x_1394.x, x_1394.y)) + vec4<f32>(x_1397.w, x_1397.y, x_1397.w, x_1397.z));
        let x_1400 : vec3<f32> = u_xlat30;
        let x_1403 : vec4<f32> = x_1049.x_MainLightShadowmapSize;
        let x_1406 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1400.x, x_1400.y, x_1400.x, x_1400.y) * vec4<f32>(x_1403.x, x_1403.y, x_1403.x, x_1403.y)) + vec4<f32>(x_1406.x, x_1406.w, x_1406.z, x_1406.w));
        let x_1409 : vec4<f32> = u_xlat6;
        let x_1411 : vec4<f32> = u_xlat7;
        u_xlat13 = (vec4<f32>(x_1409.x, x_1409.x, x_1409.x, x_1409.y) * vec4<f32>(x_1411.z, x_1411.w, x_1411.y, x_1411.z));
        let x_1415 : vec4<f32> = u_xlat6;
        let x_1417 : vec4<f32> = u_xlat7;
        u_xlat14 = (vec4<f32>(x_1415.y, x_1415.y, x_1415.z, x_1415.z) * x_1417);
        let x_1420 : f32 = u_xlat6.z;
        let x_1422 : f32 = u_xlat7.y;
        u_xlat30.x = (x_1420 * x_1422);
        let x_1426 : vec4<f32> = u_xlat10;
        let x_1427 : vec2<f32> = vec2<f32>(x_1426.x, x_1426.y);
        let x_1429 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_1427.x, x_1427.y, x_1429);
        let x_1437 : vec3<f32> = txVec4;
        let x_1439 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1437.xy, x_1437.z);
        u_xlat55 = x_1439;
        let x_1441 : vec4<f32> = u_xlat10;
        let x_1442 : vec2<f32> = vec2<f32>(x_1441.z, x_1441.w);
        let x_1444 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_1442.x, x_1442.y, x_1444);
        let x_1452 : vec3<f32> = txVec5;
        let x_1454 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1452.xy, x_1452.z);
        u_xlat80 = x_1454;
        let x_1455 : f32 = u_xlat80;
        let x_1457 : f32 = u_xlat13.y;
        u_xlat80 = (x_1455 * x_1457);
        let x_1460 : f32 = u_xlat13.x;
        let x_1461 : f32 = u_xlat55;
        let x_1463 : f32 = u_xlat80;
        u_xlat55 = ((x_1460 * x_1461) + x_1463);
        let x_1466 : vec4<f32> = u_xlat11;
        let x_1467 : vec2<f32> = vec2<f32>(x_1466.x, x_1466.y);
        let x_1469 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_1467.x, x_1467.y, x_1469);
        let x_1476 : vec3<f32> = txVec6;
        let x_1478 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1476.xy, x_1476.z);
        u_xlat80 = x_1478;
        let x_1480 : f32 = u_xlat13.z;
        let x_1481 : f32 = u_xlat80;
        let x_1483 : f32 = u_xlat55;
        u_xlat55 = ((x_1480 * x_1481) + x_1483);
        let x_1486 : vec4<f32> = u_xlat9;
        let x_1487 : vec2<f32> = vec2<f32>(x_1486.x, x_1486.y);
        let x_1489 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_1487.x, x_1487.y, x_1489);
        let x_1496 : vec3<f32> = txVec7;
        let x_1498 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1496.xy, x_1496.z);
        u_xlat80 = x_1498;
        let x_1500 : f32 = u_xlat13.w;
        let x_1501 : f32 = u_xlat80;
        let x_1503 : f32 = u_xlat55;
        u_xlat55 = ((x_1500 * x_1501) + x_1503);
        let x_1506 : vec4<f32> = u_xlat12;
        let x_1507 : vec2<f32> = vec2<f32>(x_1506.x, x_1506.y);
        let x_1509 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_1507.x, x_1507.y, x_1509);
        let x_1516 : vec3<f32> = txVec8;
        let x_1518 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1516.xy, x_1516.z);
        u_xlat80 = x_1518;
        let x_1520 : f32 = u_xlat14.x;
        let x_1521 : f32 = u_xlat80;
        let x_1523 : f32 = u_xlat55;
        u_xlat55 = ((x_1520 * x_1521) + x_1523);
        let x_1526 : vec4<f32> = u_xlat12;
        let x_1527 : vec2<f32> = vec2<f32>(x_1526.z, x_1526.w);
        let x_1529 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_1527.x, x_1527.y, x_1529);
        let x_1536 : vec3<f32> = txVec9;
        let x_1538 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1536.xy, x_1536.z);
        u_xlat80 = x_1538;
        let x_1540 : f32 = u_xlat14.y;
        let x_1541 : f32 = u_xlat80;
        let x_1543 : f32 = u_xlat55;
        u_xlat55 = ((x_1540 * x_1541) + x_1543);
        let x_1546 : vec4<f32> = u_xlat9;
        let x_1547 : vec2<f32> = vec2<f32>(x_1546.z, x_1546.w);
        let x_1549 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_1547.x, x_1547.y, x_1549);
        let x_1556 : vec3<f32> = txVec10;
        let x_1558 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1556.xy, x_1556.z);
        u_xlat80 = x_1558;
        let x_1560 : f32 = u_xlat14.z;
        let x_1561 : f32 = u_xlat80;
        let x_1563 : f32 = u_xlat55;
        u_xlat55 = ((x_1560 * x_1561) + x_1563);
        let x_1566 : vec4<f32> = u_xlat8;
        let x_1567 : vec2<f32> = vec2<f32>(x_1566.x, x_1566.y);
        let x_1569 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_1567.x, x_1567.y, x_1569);
        let x_1576 : vec3<f32> = txVec11;
        let x_1578 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1576.xy, x_1576.z);
        u_xlat80 = x_1578;
        let x_1580 : f32 = u_xlat14.w;
        let x_1581 : f32 = u_xlat80;
        let x_1583 : f32 = u_xlat55;
        u_xlat55 = ((x_1580 * x_1581) + x_1583);
        let x_1586 : vec4<f32> = u_xlat8;
        let x_1587 : vec2<f32> = vec2<f32>(x_1586.z, x_1586.w);
        let x_1589 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_1587.x, x_1587.y, x_1589);
        let x_1596 : vec3<f32> = txVec12;
        let x_1598 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1596.xy, x_1596.z);
        u_xlat80 = x_1598;
        let x_1600 : f32 = u_xlat30.x;
        let x_1601 : f32 = u_xlat80;
        let x_1603 : f32 = u_xlat55;
        u_xlat5.x = ((x_1600 * x_1601) + x_1603);
      } else {
        let x_1607 : vec4<f32> = vs_TEXCOORD8;
        let x_1610 : vec4<f32> = x_1049.x_MainLightShadowmapSize;
        let x_1613 : vec2<f32> = ((vec2<f32>(x_1607.x, x_1607.y) * vec2<f32>(x_1610.z, x_1610.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1614 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_1613.x, x_1613.y, x_1614.z);
        let x_1616 : vec3<f32> = u_xlat30;
        let x_1618 : vec2<f32> = floor(vec2<f32>(x_1616.x, x_1616.y));
        let x_1619 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_1618.x, x_1618.y, x_1619.z);
        let x_1621 : vec4<f32> = vs_TEXCOORD8;
        let x_1624 : vec4<f32> = x_1049.x_MainLightShadowmapSize;
        let x_1627 : vec3<f32> = u_xlat30;
        let x_1630 : vec2<f32> = ((vec2<f32>(x_1621.x, x_1621.y) * vec2<f32>(x_1624.z, x_1624.w)) + -(vec2<f32>(x_1627.x, x_1627.y)));
        let x_1631 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1630.x, x_1630.y, x_1631.z, x_1631.w);
        let x_1633 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1633.x, x_1633.x, x_1633.y, x_1633.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1636 : vec4<f32> = u_xlat7;
        let x_1638 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1636.x, x_1636.x, x_1636.z, x_1636.z) * vec4<f32>(x_1638.x, x_1638.x, x_1638.z, x_1638.z));
        let x_1641 : vec4<f32> = u_xlat8;
        let x_1645 : vec2<f32> = (vec2<f32>(x_1641.y, x_1641.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1646 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1646.x, x_1645.x, x_1646.z, x_1645.y);
        let x_1648 : vec4<f32> = u_xlat8;
        let x_1651 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_1648.x, x_1648.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1651.x, x_1651.y)));
        let x_1655 : vec4<f32> = u_xlat6;
        let x_1658 : vec2<f32> = (-(vec2<f32>(x_1655.x, x_1655.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1659 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1658.x, x_1659.y, x_1658.y, x_1659.w);
        let x_1661 : vec4<f32> = u_xlat6;
        let x_1663 : vec2<f32> = min(vec2<f32>(x_1661.x, x_1661.y), vec2<f32>(0.0f, 0.0f));
        let x_1664 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1663.x, x_1663.y, x_1664.z, x_1664.w);
        let x_1666 : vec4<f32> = u_xlat8;
        let x_1669 : vec4<f32> = u_xlat8;
        let x_1672 : vec4<f32> = u_xlat7;
        let x_1674 : vec2<f32> = ((-(vec2<f32>(x_1666.x, x_1666.y)) * vec2<f32>(x_1669.x, x_1669.y)) + vec2<f32>(x_1672.x, x_1672.z));
        let x_1675 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1674.x, x_1675.y, x_1674.y, x_1675.w);
        let x_1677 : vec4<f32> = u_xlat6;
        let x_1679 : vec2<f32> = max(vec2<f32>(x_1677.x, x_1677.y), vec2<f32>(0.0f, 0.0f));
        let x_1680 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1679.x, x_1679.y, x_1680.z, x_1680.w);
        let x_1682 : vec4<f32> = u_xlat8;
        let x_1685 : vec4<f32> = u_xlat8;
        let x_1688 : vec4<f32> = u_xlat7;
        let x_1690 : vec2<f32> = ((-(vec2<f32>(x_1682.x, x_1682.y)) * vec2<f32>(x_1685.x, x_1685.y)) + vec2<f32>(x_1688.y, x_1688.w));
        let x_1691 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1691.x, x_1690.x, x_1691.z, x_1690.y);
        let x_1693 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1693 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1697 : f32 = u_xlat7.y;
        u_xlat8.z = (x_1697 * 0.08163200318813323975f);
        let x_1701 : vec2<f32> = u_xlat56;
        let x_1704 : vec2<f32> = (vec2<f32>(x_1701.y, x_1701.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1705 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1704.x, x_1704.y, x_1705.z, x_1705.w);
        let x_1707 : vec4<f32> = u_xlat7;
        u_xlat56 = (vec2<f32>(x_1707.x, x_1707.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1711 : f32 = u_xlat7.w;
        u_xlat10.z = (x_1711 * 0.08163200318813323975f);
        let x_1715 : f32 = u_xlat10.y;
        u_xlat8.x = x_1715;
        let x_1717 : vec4<f32> = u_xlat6;
        let x_1724 : vec2<f32> = ((vec2<f32>(x_1717.x, x_1717.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1725 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1725.x, x_1724.x, x_1725.z, x_1724.y);
        let x_1727 : vec4<f32> = u_xlat6;
        let x_1731 : vec2<f32> = ((vec2<f32>(x_1727.x, x_1727.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1732 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1731.x, x_1732.y, x_1731.y, x_1732.w);
        let x_1735 : f32 = u_xlat56.x;
        u_xlat7.y = x_1735;
        let x_1738 : f32 = u_xlat9.y;
        u_xlat7.w = x_1738;
        let x_1740 : vec4<f32> = u_xlat7;
        let x_1741 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1740 + x_1741);
        let x_1743 : vec4<f32> = u_xlat6;
        let x_1746 : vec2<f32> = ((vec2<f32>(x_1743.y, x_1743.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1747 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1747.x, x_1746.x, x_1747.z, x_1746.y);
        let x_1749 : vec4<f32> = u_xlat6;
        let x_1752 : vec2<f32> = ((vec2<f32>(x_1749.y, x_1749.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1753 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1752.x, x_1753.y, x_1752.y, x_1753.w);
        let x_1756 : f32 = u_xlat56.y;
        u_xlat9.y = x_1756;
        let x_1758 : vec4<f32> = u_xlat9;
        let x_1759 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1758 + x_1759);
        let x_1761 : vec4<f32> = u_xlat7;
        let x_1762 : vec4<f32> = u_xlat8;
        u_xlat7 = (x_1761 / x_1762);
        let x_1764 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1764 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1770 : vec4<f32> = u_xlat9;
        let x_1771 : vec4<f32> = u_xlat6;
        u_xlat9 = (x_1770 / x_1771);
        let x_1773 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1773 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1775 : vec4<f32> = u_xlat7;
        let x_1778 : vec4<f32> = x_1049.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1775.w, x_1775.x, x_1775.y, x_1775.z) * vec4<f32>(x_1778.x, x_1778.x, x_1778.x, x_1778.x));
        let x_1781 : vec4<f32> = u_xlat9;
        let x_1784 : vec4<f32> = x_1049.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1781.x, x_1781.w, x_1781.y, x_1781.z) * vec4<f32>(x_1784.y, x_1784.y, x_1784.y, x_1784.y));
        let x_1787 : vec4<f32> = u_xlat7;
        let x_1788 : vec3<f32> = vec3<f32>(x_1787.y, x_1787.z, x_1787.w);
        let x_1789 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1788.x, x_1789.y, x_1788.y, x_1788.z);
        let x_1792 : f32 = u_xlat9.x;
        u_xlat10.y = x_1792;
        let x_1794 : vec3<f32> = u_xlat30;
        let x_1797 : vec4<f32> = x_1049.x_MainLightShadowmapSize;
        let x_1800 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1794.x, x_1794.y, x_1794.x, x_1794.y) * vec4<f32>(x_1797.x, x_1797.y, x_1797.x, x_1797.y)) + vec4<f32>(x_1800.x, x_1800.y, x_1800.z, x_1800.y));
        let x_1803 : vec3<f32> = u_xlat30;
        let x_1806 : vec4<f32> = x_1049.x_MainLightShadowmapSize;
        let x_1809 : vec4<f32> = u_xlat10;
        let x_1811 : vec2<f32> = ((vec2<f32>(x_1803.x, x_1803.y) * vec2<f32>(x_1806.x, x_1806.y)) + vec2<f32>(x_1809.w, x_1809.y));
        let x_1812 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1811.x, x_1811.y, x_1812.z, x_1812.w);
        let x_1815 : f32 = u_xlat10.y;
        u_xlat7.y = x_1815;
        let x_1818 : f32 = u_xlat9.z;
        u_xlat10.y = x_1818;
        let x_1820 : vec3<f32> = u_xlat30;
        let x_1823 : vec4<f32> = x_1049.x_MainLightShadowmapSize;
        let x_1826 : vec4<f32> = u_xlat10;
        u_xlat13 = ((vec4<f32>(x_1820.x, x_1820.y, x_1820.x, x_1820.y) * vec4<f32>(x_1823.x, x_1823.y, x_1823.x, x_1823.y)) + vec4<f32>(x_1826.x, x_1826.y, x_1826.z, x_1826.y));
        let x_1830 : vec3<f32> = u_xlat30;
        let x_1833 : vec4<f32> = x_1049.x_MainLightShadowmapSize;
        let x_1836 : vec4<f32> = u_xlat10;
        u_xlat62 = ((vec2<f32>(x_1830.x, x_1830.y) * vec2<f32>(x_1833.x, x_1833.y)) + vec2<f32>(x_1836.w, x_1836.y));
        let x_1840 : f32 = u_xlat10.y;
        u_xlat7.z = x_1840;
        let x_1842 : vec3<f32> = u_xlat30;
        let x_1845 : vec4<f32> = x_1049.x_MainLightShadowmapSize;
        let x_1848 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1842.x, x_1842.y, x_1842.x, x_1842.y) * vec4<f32>(x_1845.x, x_1845.y, x_1845.x, x_1845.y)) + vec4<f32>(x_1848.x, x_1848.y, x_1848.x, x_1848.z));
        let x_1852 : f32 = u_xlat9.w;
        u_xlat10.y = x_1852;
        let x_1855 : vec3<f32> = u_xlat30;
        let x_1858 : vec4<f32> = x_1049.x_MainLightShadowmapSize;
        let x_1861 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1855.x, x_1855.y, x_1855.x, x_1855.y) * vec4<f32>(x_1858.x, x_1858.y, x_1858.x, x_1858.y)) + vec4<f32>(x_1861.x, x_1861.y, x_1861.z, x_1861.y));
        let x_1865 : vec3<f32> = u_xlat30;
        let x_1868 : vec4<f32> = x_1049.x_MainLightShadowmapSize;
        let x_1871 : vec4<f32> = u_xlat10;
        u_xlat32 = ((vec2<f32>(x_1865.x, x_1865.y) * vec2<f32>(x_1868.x, x_1868.y)) + vec2<f32>(x_1871.w, x_1871.y));
        let x_1875 : f32 = u_xlat10.y;
        u_xlat7.w = x_1875;
        let x_1878 : vec3<f32> = u_xlat30;
        let x_1881 : vec4<f32> = x_1049.x_MainLightShadowmapSize;
        let x_1884 : vec4<f32> = u_xlat7;
        let x_1886 : vec2<f32> = ((vec2<f32>(x_1878.x, x_1878.y) * vec2<f32>(x_1881.x, x_1881.y)) + vec2<f32>(x_1884.x, x_1884.w));
        let x_1887 : vec4<f32> = u_xlat16;
        u_xlat16 = vec4<f32>(x_1886.x, x_1886.y, x_1887.z, x_1887.w);
        let x_1889 : vec4<f32> = u_xlat10;
        let x_1890 : vec3<f32> = vec3<f32>(x_1889.x, x_1889.z, x_1889.w);
        let x_1891 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1890.x, x_1891.y, x_1890.y, x_1890.z);
        let x_1893 : vec3<f32> = u_xlat30;
        let x_1896 : vec4<f32> = x_1049.x_MainLightShadowmapSize;
        let x_1899 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1893.x, x_1893.y, x_1893.x, x_1893.y) * vec4<f32>(x_1896.x, x_1896.y, x_1896.x, x_1896.y)) + vec4<f32>(x_1899.x, x_1899.y, x_1899.z, x_1899.y));
        let x_1903 : vec3<f32> = u_xlat30;
        let x_1906 : vec4<f32> = x_1049.x_MainLightShadowmapSize;
        let x_1909 : vec4<f32> = u_xlat9;
        u_xlat59 = ((vec2<f32>(x_1903.x, x_1903.y) * vec2<f32>(x_1906.x, x_1906.y)) + vec2<f32>(x_1909.w, x_1909.y));
        let x_1913 : f32 = u_xlat7.x;
        u_xlat9.x = x_1913;
        let x_1915 : vec3<f32> = u_xlat30;
        let x_1918 : vec4<f32> = x_1049.x_MainLightShadowmapSize;
        let x_1921 : vec4<f32> = u_xlat9;
        let x_1923 : vec2<f32> = ((vec2<f32>(x_1915.x, x_1915.y) * vec2<f32>(x_1918.x, x_1918.y)) + vec2<f32>(x_1921.x, x_1921.y));
        let x_1924 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_1923.x, x_1923.y, x_1924.z);
        let x_1927 : vec4<f32> = u_xlat6;
        let x_1929 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1927.x, x_1927.x, x_1927.x, x_1927.x) * x_1929);
        let x_1932 : vec4<f32> = u_xlat6;
        let x_1934 : vec4<f32> = u_xlat8;
        u_xlat18 = (vec4<f32>(x_1932.y, x_1932.y, x_1932.y, x_1932.y) * x_1934);
        let x_1937 : vec4<f32> = u_xlat6;
        let x_1939 : vec4<f32> = u_xlat8;
        u_xlat19 = (vec4<f32>(x_1937.z, x_1937.z, x_1937.z, x_1937.z) * x_1939);
        let x_1941 : vec4<f32> = u_xlat6;
        let x_1943 : vec4<f32> = u_xlat8;
        u_xlat6 = (vec4<f32>(x_1941.w, x_1941.w, x_1941.w, x_1941.w) * x_1943);
        let x_1946 : vec4<f32> = u_xlat11;
        let x_1947 : vec2<f32> = vec2<f32>(x_1946.x, x_1946.y);
        let x_1949 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1947.x, x_1947.y, x_1949);
        let x_1956 : vec3<f32> = txVec13;
        let x_1958 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1956.xy, x_1956.z);
        u_xlat80 = x_1958;
        let x_1960 : vec4<f32> = u_xlat11;
        let x_1961 : vec2<f32> = vec2<f32>(x_1960.z, x_1960.w);
        let x_1963 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1961.x, x_1961.y, x_1963);
        let x_1970 : vec3<f32> = txVec14;
        let x_1972 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1970.xy, x_1970.z);
        u_xlat7.x = x_1972;
        let x_1975 : f32 = u_xlat7.x;
        let x_1977 : f32 = u_xlat17.y;
        u_xlat7.x = (x_1975 * x_1977);
        let x_1981 : f32 = u_xlat17.x;
        let x_1982 : f32 = u_xlat80;
        let x_1985 : f32 = u_xlat7.x;
        u_xlat80 = ((x_1981 * x_1982) + x_1985);
        let x_1988 : vec4<f32> = u_xlat12;
        let x_1989 : vec2<f32> = vec2<f32>(x_1988.x, x_1988.y);
        let x_1991 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1989.x, x_1989.y, x_1991);
        let x_1998 : vec3<f32> = txVec15;
        let x_2000 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1998.xy, x_1998.z);
        u_xlat7.x = x_2000;
        let x_2003 : f32 = u_xlat17.z;
        let x_2005 : f32 = u_xlat7.x;
        let x_2007 : f32 = u_xlat80;
        u_xlat80 = ((x_2003 * x_2005) + x_2007);
        let x_2010 : vec4<f32> = u_xlat14;
        let x_2011 : vec2<f32> = vec2<f32>(x_2010.x, x_2010.y);
        let x_2013 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_2011.x, x_2011.y, x_2013);
        let x_2020 : vec3<f32> = txVec16;
        let x_2022 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2020.xy, x_2020.z);
        u_xlat7.x = x_2022;
        let x_2025 : f32 = u_xlat17.w;
        let x_2027 : f32 = u_xlat7.x;
        let x_2029 : f32 = u_xlat80;
        u_xlat80 = ((x_2025 * x_2027) + x_2029);
        let x_2032 : vec4<f32> = u_xlat13;
        let x_2033 : vec2<f32> = vec2<f32>(x_2032.x, x_2032.y);
        let x_2035 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_2033.x, x_2033.y, x_2035);
        let x_2042 : vec3<f32> = txVec17;
        let x_2044 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2042.xy, x_2042.z);
        u_xlat7.x = x_2044;
        let x_2047 : f32 = u_xlat18.x;
        let x_2049 : f32 = u_xlat7.x;
        let x_2051 : f32 = u_xlat80;
        u_xlat80 = ((x_2047 * x_2049) + x_2051);
        let x_2054 : vec4<f32> = u_xlat13;
        let x_2055 : vec2<f32> = vec2<f32>(x_2054.z, x_2054.w);
        let x_2057 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_2055.x, x_2055.y, x_2057);
        let x_2064 : vec3<f32> = txVec18;
        let x_2066 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2064.xy, x_2064.z);
        u_xlat7.x = x_2066;
        let x_2069 : f32 = u_xlat18.y;
        let x_2071 : f32 = u_xlat7.x;
        let x_2073 : f32 = u_xlat80;
        u_xlat80 = ((x_2069 * x_2071) + x_2073);
        let x_2076 : vec2<f32> = u_xlat62;
        let x_2078 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_2076.x, x_2076.y, x_2078);
        let x_2085 : vec3<f32> = txVec19;
        let x_2087 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2085.xy, x_2085.z);
        u_xlat7.x = x_2087;
        let x_2090 : f32 = u_xlat18.z;
        let x_2092 : f32 = u_xlat7.x;
        let x_2094 : f32 = u_xlat80;
        u_xlat80 = ((x_2090 * x_2092) + x_2094);
        let x_2097 : vec4<f32> = u_xlat14;
        let x_2098 : vec2<f32> = vec2<f32>(x_2097.z, x_2097.w);
        let x_2100 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_2098.x, x_2098.y, x_2100);
        let x_2107 : vec3<f32> = txVec20;
        let x_2109 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2107.xy, x_2107.z);
        u_xlat7.x = x_2109;
        let x_2112 : f32 = u_xlat18.w;
        let x_2114 : f32 = u_xlat7.x;
        let x_2116 : f32 = u_xlat80;
        u_xlat80 = ((x_2112 * x_2114) + x_2116);
        let x_2119 : vec4<f32> = u_xlat15;
        let x_2120 : vec2<f32> = vec2<f32>(x_2119.x, x_2119.y);
        let x_2122 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_2120.x, x_2120.y, x_2122);
        let x_2129 : vec3<f32> = txVec21;
        let x_2131 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2129.xy, x_2129.z);
        u_xlat7.x = x_2131;
        let x_2134 : f32 = u_xlat19.x;
        let x_2136 : f32 = u_xlat7.x;
        let x_2138 : f32 = u_xlat80;
        u_xlat80 = ((x_2134 * x_2136) + x_2138);
        let x_2141 : vec4<f32> = u_xlat15;
        let x_2142 : vec2<f32> = vec2<f32>(x_2141.z, x_2141.w);
        let x_2144 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_2142.x, x_2142.y, x_2144);
        let x_2151 : vec3<f32> = txVec22;
        let x_2153 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2151.xy, x_2151.z);
        u_xlat7.x = x_2153;
        let x_2156 : f32 = u_xlat19.y;
        let x_2158 : f32 = u_xlat7.x;
        let x_2160 : f32 = u_xlat80;
        u_xlat80 = ((x_2156 * x_2158) + x_2160);
        let x_2163 : vec2<f32> = u_xlat32;
        let x_2165 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_2163.x, x_2163.y, x_2165);
        let x_2172 : vec3<f32> = txVec23;
        let x_2174 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2172.xy, x_2172.z);
        u_xlat7.x = x_2174;
        let x_2177 : f32 = u_xlat19.z;
        let x_2179 : f32 = u_xlat7.x;
        let x_2181 : f32 = u_xlat80;
        u_xlat80 = ((x_2177 * x_2179) + x_2181);
        let x_2184 : vec4<f32> = u_xlat16;
        let x_2185 : vec2<f32> = vec2<f32>(x_2184.x, x_2184.y);
        let x_2187 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_2185.x, x_2185.y, x_2187);
        let x_2194 : vec3<f32> = txVec24;
        let x_2196 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2194.xy, x_2194.z);
        u_xlat7.x = x_2196;
        let x_2199 : f32 = u_xlat19.w;
        let x_2201 : f32 = u_xlat7.x;
        let x_2203 : f32 = u_xlat80;
        u_xlat80 = ((x_2199 * x_2201) + x_2203);
        let x_2206 : vec4<f32> = u_xlat10;
        let x_2207 : vec2<f32> = vec2<f32>(x_2206.x, x_2206.y);
        let x_2209 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_2207.x, x_2207.y, x_2209);
        let x_2216 : vec3<f32> = txVec25;
        let x_2218 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2216.xy, x_2216.z);
        u_xlat7.x = x_2218;
        let x_2221 : f32 = u_xlat6.x;
        let x_2223 : f32 = u_xlat7.x;
        let x_2225 : f32 = u_xlat80;
        u_xlat80 = ((x_2221 * x_2223) + x_2225);
        let x_2228 : vec4<f32> = u_xlat10;
        let x_2229 : vec2<f32> = vec2<f32>(x_2228.z, x_2228.w);
        let x_2231 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_2229.x, x_2229.y, x_2231);
        let x_2238 : vec3<f32> = txVec26;
        let x_2240 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2238.xy, x_2238.z);
        u_xlat6.x = x_2240;
        let x_2243 : f32 = u_xlat6.y;
        let x_2245 : f32 = u_xlat6.x;
        let x_2247 : f32 = u_xlat80;
        u_xlat80 = ((x_2243 * x_2245) + x_2247);
        let x_2250 : vec2<f32> = u_xlat59;
        let x_2252 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_2250.x, x_2250.y, x_2252);
        let x_2259 : vec3<f32> = txVec27;
        let x_2261 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2259.xy, x_2259.z);
        u_xlat6.x = x_2261;
        let x_2264 : f32 = u_xlat6.z;
        let x_2266 : f32 = u_xlat6.x;
        let x_2268 : f32 = u_xlat80;
        u_xlat80 = ((x_2264 * x_2266) + x_2268);
        let x_2271 : vec3<f32> = u_xlat30;
        let x_2272 : vec2<f32> = vec2<f32>(x_2271.x, x_2271.y);
        let x_2274 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_2272.x, x_2272.y, x_2274);
        let x_2281 : vec3<f32> = txVec28;
        let x_2283 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2281.xy, x_2281.z);
        u_xlat30.x = x_2283;
        let x_2286 : f32 = u_xlat6.w;
        let x_2288 : f32 = u_xlat30.x;
        let x_2290 : f32 = u_xlat80;
        u_xlat5.x = ((x_2286 * x_2288) + x_2290);
      }
    }
  } else {
    let x_2295 : vec4<f32> = vs_TEXCOORD8;
    let x_2296 : vec2<f32> = vec2<f32>(x_2295.x, x_2295.y);
    let x_2298 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_2296.x, x_2296.y, x_2298);
    let x_2305 : vec3<f32> = txVec29;
    let x_2307 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2305.xy, x_2305.z);
    u_xlat5.x = x_2307;
  }
  let x_2310 : f32 = x_1049.x_MainLightShadowParams.x;
  u_xlat30.x = (-(x_2310) + 1.0f);
  let x_2315 : f32 = u_xlat5.x;
  let x_2317 : f32 = x_1049.x_MainLightShadowParams.x;
  let x_2320 : f32 = u_xlat30.x;
  u_xlat5.x = ((x_2315 * x_2317) + x_2320);
  let x_2324 : f32 = vs_TEXCOORD8.z;
  u_xlatb30 = (0.0f >= x_2324);
  let x_2328 : f32 = vs_TEXCOORD8.z;
  u_xlatb55 = (x_2328 >= 1.0f);
  let x_2330 : bool = u_xlatb55;
  let x_2331 : bool = u_xlatb30;
  u_xlatb30 = (x_2330 | x_2331);
  let x_2333 : bool = u_xlatb30;
  if (x_2333) {
    x_2335 = 1.0f;
  } else {
    let x_2340 : f32 = u_xlat5.x;
    x_2335 = x_2340;
  }
  let x_2341 : f32 = x_2335;
  u_xlat5.x = x_2341;
  let x_2343 : vec3<f32> = vs_TEXCOORD7;
  let x_2346 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat30 = (x_2343 + -(x_2346));
  let x_2349 : vec3<f32> = u_xlat30;
  let x_2350 : vec3<f32> = u_xlat30;
  u_xlat30.x = dot(x_2349, x_2350);
  let x_2354 : f32 = u_xlat30.x;
  let x_2356 : f32 = x_1049.x_MainLightShadowParams.z;
  let x_2359 : f32 = x_1049.x_MainLightShadowParams.w;
  u_xlat55 = ((x_2354 * x_2356) + x_2359);
  let x_2361 : f32 = u_xlat55;
  u_xlat55 = clamp(x_2361, 0.0f, 1.0f);
  let x_2364 : f32 = u_xlat5.x;
  u_xlat80 = (-(x_2364) + 1.0f);
  let x_2367 : f32 = u_xlat55;
  let x_2368 : f32 = u_xlat80;
  let x_2371 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_2367 * x_2368) + x_2371);
  let x_2375 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_2375;
  let x_2378 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_2378;
  let x_2381 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_2381;
  let x_2383 : vec4<f32> = u_xlat6;
  let x_2386 : vec4<f32> = u_xlat1;
  u_xlat55 = dot(-(vec3<f32>(x_2383.x, x_2383.y, x_2383.z)), vec3<f32>(x_2386.x, x_2386.y, x_2386.z));
  let x_2389 : f32 = u_xlat55;
  let x_2390 : f32 = u_xlat55;
  u_xlat55 = (x_2389 + x_2390);
  let x_2392 : vec4<f32> = u_xlat1;
  let x_2394 : f32 = u_xlat55;
  let x_2398 : vec4<f32> = u_xlat6;
  let x_2401 : vec3<f32> = ((vec3<f32>(x_2392.x, x_2392.y, x_2392.z) * -(vec3<f32>(x_2394, x_2394, x_2394))) + -(vec3<f32>(x_2398.x, x_2398.y, x_2398.z)));
  let x_2402 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2401.x, x_2401.y, x_2401.z, x_2402.w);
  let x_2404 : vec4<f32> = u_xlat1;
  let x_2406 : vec4<f32> = u_xlat6;
  u_xlat55 = dot(vec3<f32>(x_2404.x, x_2404.y, x_2404.z), vec3<f32>(x_2406.x, x_2406.y, x_2406.z));
  let x_2409 : f32 = u_xlat55;
  u_xlat55 = clamp(x_2409, 0.0f, 1.0f);
  let x_2411 : f32 = u_xlat55;
  u_xlat55 = (-(x_2411) + 1.0f);
  let x_2414 : f32 = u_xlat55;
  let x_2415 : f32 = u_xlat55;
  u_xlat55 = (x_2414 * x_2415);
  let x_2417 : f32 = u_xlat55;
  let x_2418 : f32 = u_xlat55;
  u_xlat55 = (x_2417 * x_2418);
  let x_2421 : f32 = u_xlat0.x;
  u_xlat80 = ((-(x_2421) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2428 : f32 = u_xlat0.x;
  let x_2429 : f32 = u_xlat80;
  u_xlat0.x = (x_2428 * x_2429);
  let x_2433 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2433 * 6.0f);
  let x_2445 : vec4<f32> = u_xlat7;
  let x_2448 : f32 = u_xlat0.x;
  let x_2449 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2445.x, x_2445.y, x_2445.z), x_2448);
  u_xlat7 = x_2449;
  let x_2451 : f32 = u_xlat7.w;
  u_xlat0.x = (x_2451 + -1.0f);
  let x_2455 : f32 = x_911.unity_SpecCube0_HDR.w;
  let x_2457 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2455 * x_2457) + 1.0f);
  let x_2462 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2462, 0.0f);
  let x_2466 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2466);
  let x_2470 : f32 = u_xlat0.x;
  let x_2472 : f32 = x_911.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2470 * x_2472);
  let x_2476 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2476);
  let x_2480 : f32 = u_xlat0.x;
  let x_2482 : f32 = x_911.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2480 * x_2482);
  let x_2485 : vec4<f32> = u_xlat7;
  let x_2487 : vec3<f32> = u_xlat0;
  let x_2489 : vec3<f32> = (vec3<f32>(x_2485.x, x_2485.y, x_2485.z) * vec3<f32>(x_2487.x, x_2487.x, x_2487.x));
  let x_2490 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2489.x, x_2489.y, x_2489.z, x_2490.w);
  let x_2492 : f32 = u_xlat50;
  let x_2494 : f32 = u_xlat50;
  let x_2498 : vec2<f32> = ((vec2<f32>(x_2492, x_2492) * vec2<f32>(x_2494, x_2494)) + vec2<f32>(-1.0f, 1.0f));
  let x_2499 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2498.x, x_2499.y, x_2498.y);
  let x_2502 : f32 = u_xlat0.z;
  u_xlat50 = (1.0f / x_2502);
  let x_2504 : vec4<f32> = u_xlat4;
  let x_2507 : vec4<f32> = u_xlat3;
  let x_2509 : vec3<f32> = (-(vec3<f32>(x_2504.x, x_2504.y, x_2504.z)) + vec3<f32>(x_2507.x, x_2507.x, x_2507.x));
  let x_2510 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2509.x, x_2509.y, x_2509.z, x_2510.w);
  let x_2512 : f32 = u_xlat55;
  let x_2514 : vec4<f32> = u_xlat8;
  let x_2517 : vec4<f32> = u_xlat4;
  let x_2519 : vec3<f32> = ((vec3<f32>(x_2512, x_2512, x_2512) * vec3<f32>(x_2514.x, x_2514.y, x_2514.z)) + vec3<f32>(x_2517.x, x_2517.y, x_2517.z));
  let x_2520 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2519.x, x_2519.y, x_2519.z, x_2520.w);
  let x_2522 : f32 = u_xlat50;
  let x_2524 : vec4<f32> = u_xlat8;
  let x_2526 : vec3<f32> = (vec3<f32>(x_2522, x_2522, x_2522) * vec3<f32>(x_2524.x, x_2524.y, x_2524.z));
  let x_2527 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2526.x, x_2526.y, x_2526.z, x_2527.w);
  let x_2529 : vec4<f32> = u_xlat7;
  let x_2531 : vec4<f32> = u_xlat8;
  let x_2533 : vec3<f32> = (vec3<f32>(x_2529.x, x_2529.y, x_2529.z) * vec3<f32>(x_2531.x, x_2531.y, x_2531.z));
  let x_2534 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2533.x, x_2533.y, x_2533.z, x_2534.w);
  let x_2536 : vec3<f32> = u_xlat27;
  let x_2537 : vec3<f32> = u_xlat28;
  let x_2539 : vec4<f32> = u_xlat7;
  u_xlat27 = ((x_2536 * x_2537) + vec3<f32>(x_2539.x, x_2539.y, x_2539.z));
  let x_2543 : f32 = u_xlat5.x;
  let x_2545 : f32 = x_911.unity_LightData.z;
  u_xlat50 = (x_2543 * x_2545);
  let x_2547 : vec4<f32> = u_xlat1;
  let x_2550 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_2547.x, x_2547.y, x_2547.z), vec3<f32>(x_2550.x, x_2550.y, x_2550.z));
  let x_2555 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2555, 0.0f, 1.0f);
  let x_2558 : f32 = u_xlat50;
  let x_2560 : f32 = u_xlat3.x;
  u_xlat50 = (x_2558 * x_2560);
  let x_2562 : f32 = u_xlat50;
  let x_2565 : vec4<f32> = x_29.x_MainLightColor;
  let x_2567 : vec3<f32> = (vec3<f32>(x_2562, x_2562, x_2562) * vec3<f32>(x_2565.x, x_2565.y, x_2565.z));
  let x_2568 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2567.x, x_2568.y, x_2567.y, x_2567.z);
  let x_2570 : vec4<f32> = u_xlat6;
  let x_2573 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2575 : vec3<f32> = (vec3<f32>(x_2570.x, x_2570.y, x_2570.z) + vec3<f32>(x_2573.x, x_2573.y, x_2573.z));
  let x_2576 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2575.x, x_2575.y, x_2575.z, x_2576.w);
  let x_2578 : vec4<f32> = u_xlat7;
  let x_2580 : vec4<f32> = u_xlat7;
  u_xlat50 = dot(vec3<f32>(x_2578.x, x_2578.y, x_2578.z), vec3<f32>(x_2580.x, x_2580.y, x_2580.z));
  let x_2583 : f32 = u_xlat50;
  u_xlat50 = max(x_2583, 1.17549435e-38f);
  let x_2586 : f32 = u_xlat50;
  u_xlat50 = inverseSqrt(x_2586);
  let x_2588 : f32 = u_xlat50;
  let x_2590 : vec4<f32> = u_xlat7;
  let x_2592 : vec3<f32> = (vec3<f32>(x_2588, x_2588, x_2588) * vec3<f32>(x_2590.x, x_2590.y, x_2590.z));
  let x_2593 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2592.x, x_2592.y, x_2592.z, x_2593.w);
  let x_2595 : vec4<f32> = u_xlat1;
  let x_2597 : vec4<f32> = u_xlat7;
  u_xlat50 = dot(vec3<f32>(x_2595.x, x_2595.y, x_2595.z), vec3<f32>(x_2597.x, x_2597.y, x_2597.z));
  let x_2600 : f32 = u_xlat50;
  u_xlat50 = clamp(x_2600, 0.0f, 1.0f);
  let x_2603 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2605 : vec4<f32> = u_xlat7;
  u_xlat3.x = dot(vec3<f32>(x_2603.x, x_2603.y, x_2603.z), vec3<f32>(x_2605.x, x_2605.y, x_2605.z));
  let x_2610 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2610, 0.0f, 1.0f);
  let x_2613 : f32 = u_xlat50;
  let x_2614 : f32 = u_xlat50;
  u_xlat50 = (x_2613 * x_2614);
  let x_2616 : f32 = u_xlat50;
  let x_2618 : f32 = u_xlat0.x;
  u_xlat50 = ((x_2616 * x_2618) + 1.00001001358032226562f);
  let x_2623 : f32 = u_xlat3.x;
  let x_2625 : f32 = u_xlat3.x;
  u_xlat3.x = (x_2623 * x_2625);
  let x_2628 : f32 = u_xlat50;
  let x_2629 : f32 = u_xlat50;
  u_xlat50 = (x_2628 * x_2629);
  let x_2632 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_2632, 0.10000000149011611938f);
  let x_2636 : f32 = u_xlat50;
  let x_2638 : f32 = u_xlat3.x;
  u_xlat50 = (x_2636 * x_2638);
  let x_2640 : f32 = u_xlat79;
  let x_2641 : f32 = u_xlat50;
  u_xlat50 = (x_2640 * x_2641);
  let x_2643 : f32 = u_xlat76;
  let x_2644 : f32 = u_xlat50;
  u_xlat50 = (x_2643 / x_2644);
  let x_2646 : vec4<f32> = u_xlat4;
  let x_2648 : f32 = u_xlat50;
  let x_2651 : vec3<f32> = u_xlat28;
  let x_2652 : vec3<f32> = ((vec3<f32>(x_2646.x, x_2646.y, x_2646.z) * vec3<f32>(x_2648, x_2648, x_2648)) + x_2651);
  let x_2653 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2652.x, x_2652.y, x_2652.z, x_2653.w);
  let x_2655 : vec4<f32> = u_xlat5;
  let x_2657 : vec4<f32> = u_xlat7;
  let x_2659 : vec3<f32> = (vec3<f32>(x_2655.x, x_2655.z, x_2655.w) * vec3<f32>(x_2657.x, x_2657.y, x_2657.z));
  let x_2660 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2659.x, x_2660.y, x_2659.y, x_2659.z);
  let x_2663 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_2665 : f32 = x_911.unity_LightData.y;
  u_xlat50 = min(x_2663, x_2665);
  let x_2669 : f32 = u_xlat50;
  u_xlatu50 = bitcast<u32>(i32(x_2669));
  let x_2673 : f32 = u_xlat30.x;
  let x_2675 : f32 = x_1049.x_AdditionalShadowFadeParams.x;
  let x_2678 : f32 = x_1049.x_AdditionalShadowFadeParams.y;
  u_xlat3.x = ((x_2673 * x_2675) + x_2678);
  let x_2682 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2682, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2695 : u32 = u_xlatu_loop_1;
    let x_2696 : u32 = u_xlatu50;
    if ((x_2695 < x_2696)) {
    } else {
      break;
    }
    let x_2699 : u32 = u_xlatu_loop_1;
    u_xlatu81 = (x_2699 >> 2u);
    let x_2703 : u32 = u_xlatu_loop_1;
    u_xlati82 = bitcast<i32>((x_2703 & 3u));
    let x_2707 : u32 = u_xlatu81;
    let x_2710 : vec4<f32> = x_911.unity_LightIndices[bitcast<i32>(x_2707)];
    let x_2720 : i32 = u_xlati82;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2725 : vec4<u32> = indexable[x_2720];
    u_xlat81 = dot(x_2710, bitcast<vec4<f32>>(x_2725));
    let x_2729 : f32 = u_xlat81;
    u_xlati81 = i32(x_2729);
    let x_2731 : vec3<f32> = vs_TEXCOORD7;
    let x_2742 : i32 = u_xlati81;
    let x_2744 : vec4<f32> = x_2741.x_AdditionalLightsPosition[x_2742];
    let x_2747 : i32 = u_xlati81;
    let x_2749 : vec4<f32> = x_2741.x_AdditionalLightsPosition[x_2747];
    let x_2751 : vec3<f32> = ((-(x_2731) * vec3<f32>(x_2744.w, x_2744.w, x_2744.w)) + vec3<f32>(x_2749.x, x_2749.y, x_2749.z));
    let x_2752 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2751.x, x_2751.y, x_2751.z, x_2752.w);
    let x_2755 : vec4<f32> = u_xlat8;
    let x_2757 : vec4<f32> = u_xlat8;
    u_xlat82 = dot(vec3<f32>(x_2755.x, x_2755.y, x_2755.z), vec3<f32>(x_2757.x, x_2757.y, x_2757.z));
    let x_2760 : f32 = u_xlat82;
    u_xlat82 = max(x_2760, 0.00006103515625f);
    let x_2763 : f32 = u_xlat82;
    u_xlat83 = inverseSqrt(x_2763);
    let x_2765 : f32 = u_xlat83;
    let x_2767 : vec4<f32> = u_xlat8;
    let x_2769 : vec3<f32> = (vec3<f32>(x_2765, x_2765, x_2765) * vec3<f32>(x_2767.x, x_2767.y, x_2767.z));
    let x_2770 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2769.x, x_2769.y, x_2769.z, x_2770.w);
    let x_2773 : f32 = u_xlat82;
    u_xlat84 = (1.0f / x_2773);
    let x_2775 : f32 = u_xlat82;
    let x_2776 : i32 = u_xlati81;
    let x_2778 : f32 = x_2741.x_AdditionalLightsAttenuation[x_2776].x;
    u_xlat82 = (x_2775 * x_2778);
    let x_2780 : f32 = u_xlat82;
    let x_2782 : f32 = u_xlat82;
    u_xlat82 = ((-(x_2780) * x_2782) + 1.0f);
    let x_2785 : f32 = u_xlat82;
    u_xlat82 = max(x_2785, 0.0f);
    let x_2787 : f32 = u_xlat82;
    let x_2788 : f32 = u_xlat82;
    u_xlat82 = (x_2787 * x_2788);
    let x_2790 : f32 = u_xlat82;
    let x_2791 : f32 = u_xlat84;
    u_xlat82 = (x_2790 * x_2791);
    let x_2793 : i32 = u_xlati81;
    let x_2795 : vec4<f32> = x_2741.x_AdditionalLightsSpotDir[x_2793];
    let x_2797 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2795.x, x_2795.y, x_2795.z), vec3<f32>(x_2797.x, x_2797.y, x_2797.z));
    let x_2800 : f32 = u_xlat84;
    let x_2801 : i32 = u_xlati81;
    let x_2803 : f32 = x_2741.x_AdditionalLightsAttenuation[x_2801].z;
    let x_2805 : i32 = u_xlati81;
    let x_2807 : f32 = x_2741.x_AdditionalLightsAttenuation[x_2805].w;
    u_xlat84 = ((x_2800 * x_2803) + x_2807);
    let x_2809 : f32 = u_xlat84;
    u_xlat84 = clamp(x_2809, 0.0f, 1.0f);
    let x_2811 : f32 = u_xlat84;
    let x_2812 : f32 = u_xlat84;
    u_xlat84 = (x_2811 * x_2812);
    let x_2814 : f32 = u_xlat82;
    let x_2815 : f32 = u_xlat84;
    u_xlat82 = (x_2814 * x_2815);
    let x_2818 : i32 = u_xlati81;
    let x_2820 : f32 = x_1049.x_AdditionalShadowParams[x_2818].w;
    u_xlati84 = i32(x_2820);
    let x_2825 : i32 = u_xlati84;
    u_xlatb10.x = (x_2825 >= 0i);
    let x_2829 : bool = u_xlatb10.x;
    if (x_2829) {
      let x_2833 : i32 = u_xlati81;
      let x_2835 : f32 = x_1049.x_AdditionalShadowParams[x_2833].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2835, x_2835, x_2835, x_2835))));
      let x_2841 : bool = u_xlatb10.x;
      if (x_2841) {
        let x_2844 : vec4<f32> = u_xlat9;
        let x_2847 : vec4<f32> = u_xlat9;
        let x_2850 : vec4<bool> = (abs(vec4<f32>(x_2844.z, x_2844.z, x_2844.y, x_2844.z)) >= abs(vec4<f32>(x_2847.x, x_2847.y, x_2847.x, x_2847.x)));
        u_xlatb10 = vec3<bool>(x_2850.x, x_2850.y, x_2850.z);
        let x_2853 : bool = u_xlatb10.y;
        let x_2855 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_2853 & x_2855);
        let x_2859 : vec4<f32> = u_xlat9;
        let x_2862 : vec4<bool> = (-(vec4<f32>(x_2859.z, x_2859.y, x_2859.x, x_2859.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_2862.x, x_2862.y, x_2862.z);
        let x_2866 : bool = u_xlatb11.x;
        u_xlat35.x = select(4.0f, 5.0f, x_2866);
        let x_2871 : bool = u_xlatb11.y;
        u_xlat35.z = select(2.0f, 3.0f, x_2871);
        let x_2876 : bool = u_xlatb11.z;
        u_xlat11.x = select(0.0f, 1.0f, x_2876);
        let x_2881 : bool = u_xlatb10.z;
        if (x_2881) {
          let x_2886 : f32 = u_xlat35.z;
          x_2882 = x_2886;
        } else {
          let x_2889 : f32 = u_xlat11.x;
          x_2882 = x_2889;
        }
        let x_2890 : f32 = x_2882;
        u_xlat60 = x_2890;
        let x_2892 : bool = u_xlatb10.x;
        if (x_2892) {
          let x_2897 : f32 = u_xlat35.x;
          x_2893 = x_2897;
        } else {
          let x_2899 : f32 = u_xlat60;
          x_2893 = x_2899;
        }
        let x_2900 : f32 = x_2893;
        u_xlat10.x = x_2900;
        let x_2902 : i32 = u_xlati81;
        let x_2904 : f32 = x_1049.x_AdditionalShadowParams[x_2902].w;
        u_xlat35.x = trunc(x_2904);
        let x_2908 : f32 = u_xlat10.x;
        let x_2910 : f32 = u_xlat35.x;
        u_xlat10.x = (x_2908 + x_2910);
        let x_2914 : f32 = u_xlat10.x;
        u_xlati84 = i32(x_2914);
      }
      let x_2916 : i32 = u_xlati84;
      u_xlati84 = (x_2916 << bitcast<u32>(2i));
      let x_2918 : vec3<f32> = vs_TEXCOORD7;
      let x_2920 : i32 = u_xlati84;
      let x_2923 : i32 = u_xlati84;
      let x_2927 : vec4<f32> = x_1049.x_AdditionalLightsWorldToShadow[((x_2920 + 1i) / 4i)][((x_2923 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_2918.y, x_2918.y, x_2918.y, x_2918.y) * x_2927);
      let x_2929 : i32 = u_xlati84;
      let x_2931 : i32 = u_xlati84;
      let x_2934 : vec4<f32> = x_1049.x_AdditionalLightsWorldToShadow[(x_2929 / 4i)][(x_2931 % 4i)];
      let x_2935 : vec3<f32> = vs_TEXCOORD7;
      let x_2938 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2934 * vec4<f32>(x_2935.x, x_2935.x, x_2935.x, x_2935.x)) + x_2938);
      let x_2940 : i32 = u_xlati84;
      let x_2943 : i32 = u_xlati84;
      let x_2947 : vec4<f32> = x_1049.x_AdditionalLightsWorldToShadow[((x_2940 + 2i) / 4i)][((x_2943 + 2i) % 4i)];
      let x_2948 : vec3<f32> = vs_TEXCOORD7;
      let x_2951 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2947 * vec4<f32>(x_2948.z, x_2948.z, x_2948.z, x_2948.z)) + x_2951);
      let x_2953 : vec4<f32> = u_xlat10;
      let x_2954 : i32 = u_xlati84;
      let x_2957 : i32 = u_xlati84;
      let x_2961 : vec4<f32> = x_1049.x_AdditionalLightsWorldToShadow[((x_2954 + 3i) / 4i)][((x_2957 + 3i) % 4i)];
      u_xlat10 = (x_2953 + x_2961);
      let x_2963 : vec4<f32> = u_xlat10;
      let x_2965 : vec4<f32> = u_xlat10;
      let x_2967 : vec3<f32> = (vec3<f32>(x_2963.x, x_2963.y, x_2963.z) / vec3<f32>(x_2965.w, x_2965.w, x_2965.w));
      let x_2968 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2967.x, x_2967.y, x_2967.z, x_2968.w);
      let x_2971 : i32 = u_xlati81;
      let x_2973 : f32 = x_1049.x_AdditionalShadowParams[x_2971].y;
      u_xlatb84 = (0.0f < x_2973);
      let x_2975 : bool = u_xlatb84;
      if (x_2975) {
        let x_2978 : i32 = u_xlati81;
        let x_2980 : f32 = x_1049.x_AdditionalShadowParams[x_2978].y;
        u_xlatb84 = (1.0f == x_2980);
        let x_2982 : bool = u_xlatb84;
        if (x_2982) {
          let x_2985 : vec4<f32> = u_xlat10;
          let x_2988 : vec4<f32> = x_1049.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2985.x, x_2985.y, x_2985.x, x_2985.y) + x_2988);
          let x_2991 : vec4<f32> = u_xlat11;
          let x_2992 : vec2<f32> = vec2<f32>(x_2991.x, x_2991.y);
          let x_2994 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2992.x, x_2992.y, x_2994);
          let x_3002 : vec3<f32> = txVec30;
          let x_3004 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3002.xy, x_3002.z);
          u_xlat12.x = x_3004;
          let x_3007 : vec4<f32> = u_xlat11;
          let x_3008 : vec2<f32> = vec2<f32>(x_3007.z, x_3007.w);
          let x_3010 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_3008.x, x_3008.y, x_3010);
          let x_3017 : vec3<f32> = txVec31;
          let x_3019 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3017.xy, x_3017.z);
          u_xlat12.y = x_3019;
          let x_3021 : vec4<f32> = u_xlat10;
          let x_3024 : vec4<f32> = x_1049.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_3021.x, x_3021.y, x_3021.x, x_3021.y) + x_3024);
          let x_3027 : vec4<f32> = u_xlat11;
          let x_3028 : vec2<f32> = vec2<f32>(x_3027.x, x_3027.y);
          let x_3030 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_3028.x, x_3028.y, x_3030);
          let x_3037 : vec3<f32> = txVec32;
          let x_3039 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3037.xy, x_3037.z);
          u_xlat12.z = x_3039;
          let x_3042 : vec4<f32> = u_xlat11;
          let x_3043 : vec2<f32> = vec2<f32>(x_3042.z, x_3042.w);
          let x_3045 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_3043.x, x_3043.y, x_3045);
          let x_3052 : vec3<f32> = txVec33;
          let x_3054 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3052.xy, x_3052.z);
          u_xlat12.w = x_3054;
          let x_3056 : vec4<f32> = u_xlat12;
          u_xlat84 = dot(x_3056, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_3060 : i32 = u_xlati81;
          let x_3062 : f32 = x_1049.x_AdditionalShadowParams[x_3060].y;
          u_xlatb85 = (2.0f == x_3062);
          let x_3064 : bool = u_xlatb85;
          if (x_3064) {
            let x_3067 : vec4<f32> = u_xlat10;
            let x_3070 : vec4<f32> = x_1049.x_AdditionalShadowmapSize;
            let x_3073 : vec2<f32> = ((vec2<f32>(x_3067.x, x_3067.y) * vec2<f32>(x_3070.z, x_3070.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3074 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3073.x, x_3073.y, x_3074.z, x_3074.w);
            let x_3076 : vec4<f32> = u_xlat11;
            let x_3078 : vec2<f32> = floor(vec2<f32>(x_3076.x, x_3076.y));
            let x_3079 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3078.x, x_3078.y, x_3079.z, x_3079.w);
            let x_3082 : vec4<f32> = u_xlat10;
            let x_3085 : vec4<f32> = x_1049.x_AdditionalShadowmapSize;
            let x_3088 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3082.x, x_3082.y) * vec2<f32>(x_3085.z, x_3085.w)) + -(vec2<f32>(x_3088.x, x_3088.y)));
            let x_3092 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3092.x, x_3092.x, x_3092.y, x_3092.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3095 : vec4<f32> = u_xlat12;
            let x_3097 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3095.x, x_3095.x, x_3095.z, x_3095.z) * vec4<f32>(x_3097.x, x_3097.x, x_3097.z, x_3097.z));
            let x_3100 : vec4<f32> = u_xlat13;
            let x_3102 : vec2<f32> = (vec2<f32>(x_3100.y, x_3100.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_3103 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3102.x, x_3103.y, x_3102.y, x_3103.w);
            let x_3105 : vec4<f32> = u_xlat13;
            let x_3108 : vec2<f32> = u_xlat61;
            let x_3110 : vec2<f32> = ((vec2<f32>(x_3105.x, x_3105.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3108));
            let x_3111 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3110.x, x_3110.y, x_3111.z, x_3111.w);
            let x_3114 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_3114) + vec2<f32>(1.0f, 1.0f));
            let x_3117 : vec2<f32> = u_xlat61;
            let x_3118 : vec2<f32> = min(x_3117, vec2<f32>(0.0f, 0.0f));
            let x_3119 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3118.x, x_3118.y, x_3119.z, x_3119.w);
            let x_3121 : vec4<f32> = u_xlat14;
            let x_3124 : vec4<f32> = u_xlat14;
            let x_3127 : vec2<f32> = u_xlat63;
            let x_3128 : vec2<f32> = ((-(vec2<f32>(x_3121.x, x_3121.y)) * vec2<f32>(x_3124.x, x_3124.y)) + x_3127);
            let x_3129 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3128.x, x_3128.y, x_3129.z, x_3129.w);
            let x_3131 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_3131, vec2<f32>(0.0f, 0.0f));
            let x_3133 : vec2<f32> = u_xlat61;
            let x_3135 : vec2<f32> = u_xlat61;
            let x_3137 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_3133) * x_3135) + vec2<f32>(x_3137.y, x_3137.w));
            let x_3140 : vec4<f32> = u_xlat14;
            let x_3142 : vec2<f32> = (vec2<f32>(x_3140.x, x_3140.y) + vec2<f32>(1.0f, 1.0f));
            let x_3143 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3142.x, x_3142.y, x_3143.z, x_3143.w);
            let x_3145 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_3145 + vec2<f32>(1.0f, 1.0f));
            let x_3147 : vec4<f32> = u_xlat13;
            let x_3149 : vec2<f32> = (vec2<f32>(x_3147.x, x_3147.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3150 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3149.x, x_3149.y, x_3150.z, x_3150.w);
            let x_3152 : vec2<f32> = u_xlat63;
            let x_3153 : vec2<f32> = (x_3152 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3154 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3153.x, x_3153.y, x_3154.z, x_3154.w);
            let x_3156 : vec4<f32> = u_xlat14;
            let x_3158 : vec2<f32> = (vec2<f32>(x_3156.x, x_3156.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3159 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3158.x, x_3158.y, x_3159.z, x_3159.w);
            let x_3161 : vec2<f32> = u_xlat61;
            let x_3162 : vec2<f32> = (x_3161 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3163 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3162.x, x_3162.y, x_3163.z, x_3163.w);
            let x_3165 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_3165.y, x_3165.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3169 : f32 = u_xlat14.x;
            u_xlat15.z = x_3169;
            let x_3172 : f32 = u_xlat61.x;
            u_xlat15.w = x_3172;
            let x_3175 : f32 = u_xlat16.x;
            u_xlat13.z = x_3175;
            let x_3178 : f32 = u_xlat12.x;
            u_xlat13.w = x_3178;
            let x_3180 : vec4<f32> = u_xlat13;
            let x_3182 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_3180.z, x_3180.w, x_3180.x, x_3180.z) + vec4<f32>(x_3182.z, x_3182.w, x_3182.x, x_3182.z));
            let x_3186 : f32 = u_xlat15.y;
            u_xlat14.z = x_3186;
            let x_3189 : f32 = u_xlat61.y;
            u_xlat14.w = x_3189;
            let x_3192 : f32 = u_xlat13.y;
            u_xlat16.z = x_3192;
            let x_3195 : f32 = u_xlat12.z;
            u_xlat16.w = x_3195;
            let x_3197 : vec4<f32> = u_xlat14;
            let x_3199 : vec4<f32> = u_xlat16;
            let x_3201 : vec3<f32> = (vec3<f32>(x_3197.z, x_3197.y, x_3197.w) + vec3<f32>(x_3199.z, x_3199.y, x_3199.w));
            let x_3202 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3201.x, x_3201.y, x_3201.z, x_3202.w);
            let x_3204 : vec4<f32> = u_xlat13;
            let x_3206 : vec4<f32> = u_xlat17;
            let x_3208 : vec3<f32> = (vec3<f32>(x_3204.x, x_3204.z, x_3204.w) / vec3<f32>(x_3206.z, x_3206.w, x_3206.y));
            let x_3209 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3208.x, x_3208.y, x_3208.z, x_3209.w);
            let x_3211 : vec4<f32> = u_xlat13;
            let x_3213 : vec3<f32> = (vec3<f32>(x_3211.x, x_3211.y, x_3211.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3214 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3213.x, x_3213.y, x_3213.z, x_3214.w);
            let x_3216 : vec4<f32> = u_xlat16;
            let x_3218 : vec4<f32> = u_xlat12;
            let x_3220 : vec3<f32> = (vec3<f32>(x_3216.z, x_3216.y, x_3216.w) / vec3<f32>(x_3218.x, x_3218.y, x_3218.z));
            let x_3221 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3220.x, x_3220.y, x_3220.z, x_3221.w);
            let x_3223 : vec4<f32> = u_xlat14;
            let x_3225 : vec3<f32> = (vec3<f32>(x_3223.x, x_3223.y, x_3223.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3226 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3225.x, x_3225.y, x_3225.z, x_3226.w);
            let x_3228 : vec4<f32> = u_xlat13;
            let x_3231 : vec4<f32> = x_1049.x_AdditionalShadowmapSize;
            let x_3233 : vec3<f32> = (vec3<f32>(x_3228.y, x_3228.x, x_3228.z) * vec3<f32>(x_3231.x, x_3231.x, x_3231.x));
            let x_3234 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3233.x, x_3233.y, x_3233.z, x_3234.w);
            let x_3236 : vec4<f32> = u_xlat14;
            let x_3239 : vec4<f32> = x_1049.x_AdditionalShadowmapSize;
            let x_3241 : vec3<f32> = (vec3<f32>(x_3236.x, x_3236.y, x_3236.z) * vec3<f32>(x_3239.y, x_3239.y, x_3239.y));
            let x_3242 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3241.x, x_3241.y, x_3241.z, x_3242.w);
            let x_3245 : f32 = u_xlat14.x;
            u_xlat13.w = x_3245;
            let x_3247 : vec4<f32> = u_xlat11;
            let x_3250 : vec4<f32> = x_1049.x_AdditionalShadowmapSize;
            let x_3253 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_3247.x, x_3247.y, x_3247.x, x_3247.y) * vec4<f32>(x_3250.x, x_3250.y, x_3250.x, x_3250.y)) + vec4<f32>(x_3253.y, x_3253.w, x_3253.x, x_3253.w));
            let x_3256 : vec4<f32> = u_xlat11;
            let x_3259 : vec4<f32> = x_1049.x_AdditionalShadowmapSize;
            let x_3262 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_3256.x, x_3256.y) * vec2<f32>(x_3259.x, x_3259.y)) + vec2<f32>(x_3262.z, x_3262.w));
            let x_3266 : f32 = u_xlat13.y;
            u_xlat14.w = x_3266;
            let x_3268 : vec4<f32> = u_xlat14;
            let x_3269 : vec2<f32> = vec2<f32>(x_3268.y, x_3268.z);
            let x_3270 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3270.x, x_3269.x, x_3270.z, x_3269.y);
            let x_3272 : vec4<f32> = u_xlat11;
            let x_3275 : vec4<f32> = x_1049.x_AdditionalShadowmapSize;
            let x_3278 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_3272.x, x_3272.y, x_3272.x, x_3272.y) * vec4<f32>(x_3275.x, x_3275.y, x_3275.x, x_3275.y)) + vec4<f32>(x_3278.x, x_3278.y, x_3278.z, x_3278.y));
            let x_3281 : vec4<f32> = u_xlat11;
            let x_3284 : vec4<f32> = x_1049.x_AdditionalShadowmapSize;
            let x_3287 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3281.x, x_3281.y, x_3281.x, x_3281.y) * vec4<f32>(x_3284.x, x_3284.y, x_3284.x, x_3284.y)) + vec4<f32>(x_3287.w, x_3287.y, x_3287.w, x_3287.z));
            let x_3290 : vec4<f32> = u_xlat11;
            let x_3293 : vec4<f32> = x_1049.x_AdditionalShadowmapSize;
            let x_3296 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_3290.x, x_3290.y, x_3290.x, x_3290.y) * vec4<f32>(x_3293.x, x_3293.y, x_3293.x, x_3293.y)) + vec4<f32>(x_3296.x, x_3296.w, x_3296.z, x_3296.w));
            let x_3299 : vec4<f32> = u_xlat12;
            let x_3301 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_3299.x, x_3299.x, x_3299.x, x_3299.y) * vec4<f32>(x_3301.z, x_3301.w, x_3301.y, x_3301.z));
            let x_3304 : vec4<f32> = u_xlat12;
            let x_3306 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_3304.y, x_3304.y, x_3304.z, x_3304.z) * x_3306);
            let x_3310 : f32 = u_xlat12.z;
            let x_3312 : f32 = u_xlat17.y;
            u_xlat85 = (x_3310 * x_3312);
            let x_3315 : vec4<f32> = u_xlat15;
            let x_3316 : vec2<f32> = vec2<f32>(x_3315.x, x_3315.y);
            let x_3318 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_3316.x, x_3316.y, x_3318);
            let x_3325 : vec3<f32> = txVec34;
            let x_3327 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3325.xy, x_3325.z);
            u_xlat11.x = x_3327;
            let x_3330 : vec4<f32> = u_xlat15;
            let x_3331 : vec2<f32> = vec2<f32>(x_3330.z, x_3330.w);
            let x_3333 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_3331.x, x_3331.y, x_3333);
            let x_3341 : vec3<f32> = txVec35;
            let x_3343 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3341.xy, x_3341.z);
            u_xlat36 = x_3343;
            let x_3344 : f32 = u_xlat36;
            let x_3346 : f32 = u_xlat18.y;
            u_xlat36 = (x_3344 * x_3346);
            let x_3349 : f32 = u_xlat18.x;
            let x_3351 : f32 = u_xlat11.x;
            let x_3353 : f32 = u_xlat36;
            u_xlat11.x = ((x_3349 * x_3351) + x_3353);
            let x_3357 : vec2<f32> = u_xlat61;
            let x_3359 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_3357.x, x_3357.y, x_3359);
            let x_3366 : vec3<f32> = txVec36;
            let x_3368 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3366.xy, x_3366.z);
            u_xlat36 = x_3368;
            let x_3370 : f32 = u_xlat18.z;
            let x_3371 : f32 = u_xlat36;
            let x_3374 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3370 * x_3371) + x_3374);
            let x_3378 : vec4<f32> = u_xlat14;
            let x_3379 : vec2<f32> = vec2<f32>(x_3378.x, x_3378.y);
            let x_3381 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_3379.x, x_3379.y, x_3381);
            let x_3388 : vec3<f32> = txVec37;
            let x_3390 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3388.xy, x_3388.z);
            u_xlat36 = x_3390;
            let x_3392 : f32 = u_xlat18.w;
            let x_3393 : f32 = u_xlat36;
            let x_3396 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3392 * x_3393) + x_3396);
            let x_3400 : vec4<f32> = u_xlat16;
            let x_3401 : vec2<f32> = vec2<f32>(x_3400.x, x_3400.y);
            let x_3403 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_3401.x, x_3401.y, x_3403);
            let x_3410 : vec3<f32> = txVec38;
            let x_3412 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3410.xy, x_3410.z);
            u_xlat36 = x_3412;
            let x_3414 : f32 = u_xlat19.x;
            let x_3415 : f32 = u_xlat36;
            let x_3418 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3414 * x_3415) + x_3418);
            let x_3422 : vec4<f32> = u_xlat16;
            let x_3423 : vec2<f32> = vec2<f32>(x_3422.z, x_3422.w);
            let x_3425 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_3423.x, x_3423.y, x_3425);
            let x_3432 : vec3<f32> = txVec39;
            let x_3434 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3432.xy, x_3432.z);
            u_xlat36 = x_3434;
            let x_3436 : f32 = u_xlat19.y;
            let x_3437 : f32 = u_xlat36;
            let x_3440 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3436 * x_3437) + x_3440);
            let x_3444 : vec4<f32> = u_xlat14;
            let x_3445 : vec2<f32> = vec2<f32>(x_3444.z, x_3444.w);
            let x_3447 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_3445.x, x_3445.y, x_3447);
            let x_3454 : vec3<f32> = txVec40;
            let x_3456 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3454.xy, x_3454.z);
            u_xlat36 = x_3456;
            let x_3458 : f32 = u_xlat19.z;
            let x_3459 : f32 = u_xlat36;
            let x_3462 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3458 * x_3459) + x_3462);
            let x_3466 : vec4<f32> = u_xlat13;
            let x_3467 : vec2<f32> = vec2<f32>(x_3466.x, x_3466.y);
            let x_3469 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_3467.x, x_3467.y, x_3469);
            let x_3476 : vec3<f32> = txVec41;
            let x_3478 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3476.xy, x_3476.z);
            u_xlat36 = x_3478;
            let x_3480 : f32 = u_xlat19.w;
            let x_3481 : f32 = u_xlat36;
            let x_3484 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3480 * x_3481) + x_3484);
            let x_3488 : vec4<f32> = u_xlat13;
            let x_3489 : vec2<f32> = vec2<f32>(x_3488.z, x_3488.w);
            let x_3491 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_3489.x, x_3489.y, x_3491);
            let x_3498 : vec3<f32> = txVec42;
            let x_3500 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3498.xy, x_3498.z);
            u_xlat36 = x_3500;
            let x_3501 : f32 = u_xlat85;
            let x_3502 : f32 = u_xlat36;
            let x_3505 : f32 = u_xlat11.x;
            u_xlat84 = ((x_3501 * x_3502) + x_3505);
          } else {
            let x_3508 : vec4<f32> = u_xlat10;
            let x_3511 : vec4<f32> = x_1049.x_AdditionalShadowmapSize;
            let x_3514 : vec2<f32> = ((vec2<f32>(x_3508.x, x_3508.y) * vec2<f32>(x_3511.z, x_3511.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3515 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3514.x, x_3514.y, x_3515.z, x_3515.w);
            let x_3517 : vec4<f32> = u_xlat11;
            let x_3519 : vec2<f32> = floor(vec2<f32>(x_3517.x, x_3517.y));
            let x_3520 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3519.x, x_3519.y, x_3520.z, x_3520.w);
            let x_3522 : vec4<f32> = u_xlat10;
            let x_3525 : vec4<f32> = x_1049.x_AdditionalShadowmapSize;
            let x_3528 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3522.x, x_3522.y) * vec2<f32>(x_3525.z, x_3525.w)) + -(vec2<f32>(x_3528.x, x_3528.y)));
            let x_3532 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3532.x, x_3532.x, x_3532.y, x_3532.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3535 : vec4<f32> = u_xlat12;
            let x_3537 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3535.x, x_3535.x, x_3535.z, x_3535.z) * vec4<f32>(x_3537.x, x_3537.x, x_3537.z, x_3537.z));
            let x_3540 : vec4<f32> = u_xlat13;
            let x_3542 : vec2<f32> = (vec2<f32>(x_3540.y, x_3540.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3543 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3543.x, x_3542.x, x_3543.z, x_3542.y);
            let x_3545 : vec4<f32> = u_xlat13;
            let x_3548 : vec2<f32> = u_xlat61;
            let x_3550 : vec2<f32> = ((vec2<f32>(x_3545.x, x_3545.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3548));
            let x_3551 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3550.x, x_3551.y, x_3550.y, x_3551.w);
            let x_3553 : vec2<f32> = u_xlat61;
            let x_3555 : vec2<f32> = (-(x_3553) + vec2<f32>(1.0f, 1.0f));
            let x_3556 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3555.x, x_3555.y, x_3556.z, x_3556.w);
            let x_3558 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_3558, vec2<f32>(0.0f, 0.0f));
            let x_3560 : vec2<f32> = u_xlat63;
            let x_3562 : vec2<f32> = u_xlat63;
            let x_3564 : vec4<f32> = u_xlat13;
            let x_3566 : vec2<f32> = ((-(x_3560) * x_3562) + vec2<f32>(x_3564.x, x_3564.y));
            let x_3567 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3566.x, x_3566.y, x_3567.z, x_3567.w);
            let x_3569 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_3569, vec2<f32>(0.0f, 0.0f));
            let x_3572 : vec2<f32> = u_xlat63;
            let x_3574 : vec2<f32> = u_xlat63;
            let x_3576 : vec4<f32> = u_xlat12;
            let x_3578 : vec2<f32> = ((-(x_3572) * x_3574) + vec2<f32>(x_3576.y, x_3576.w));
            let x_3579 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_3578.x, x_3579.y, x_3578.y);
            let x_3581 : vec4<f32> = u_xlat13;
            let x_3583 : vec2<f32> = (vec2<f32>(x_3581.x, x_3581.y) + vec2<f32>(2.0f, 2.0f));
            let x_3584 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3583.x, x_3583.y, x_3584.z, x_3584.w);
            let x_3586 : vec3<f32> = u_xlat37;
            let x_3588 : vec2<f32> = (vec2<f32>(x_3586.x, x_3586.z) + vec2<f32>(2.0f, 2.0f));
            let x_3589 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3589.x, x_3588.x, x_3589.z, x_3588.y);
            let x_3592 : f32 = u_xlat12.y;
            u_xlat15.z = (x_3592 * 0.08163200318813323975f);
            let x_3595 : vec4<f32> = u_xlat12;
            let x_3598 : vec3<f32> = (vec3<f32>(x_3595.z, x_3595.x, x_3595.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3599 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3598.x, x_3598.y, x_3598.z, x_3599.w);
            let x_3601 : vec4<f32> = u_xlat13;
            let x_3603 : vec2<f32> = (vec2<f32>(x_3601.x, x_3601.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3604 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3603.x, x_3603.y, x_3604.z, x_3604.w);
            let x_3607 : f32 = u_xlat16.y;
            u_xlat15.x = x_3607;
            let x_3609 : vec2<f32> = u_xlat61;
            let x_3612 : vec2<f32> = ((vec2<f32>(x_3609.x, x_3609.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3613 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3613.x, x_3612.x, x_3613.z, x_3612.y);
            let x_3615 : vec2<f32> = u_xlat61;
            let x_3618 : vec2<f32> = ((vec2<f32>(x_3615.x, x_3615.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3619 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3618.x, x_3619.y, x_3618.y, x_3619.w);
            let x_3622 : f32 = u_xlat12.x;
            u_xlat13.y = x_3622;
            let x_3625 : f32 = u_xlat14.y;
            u_xlat13.w = x_3625;
            let x_3627 : vec4<f32> = u_xlat13;
            let x_3628 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3627 + x_3628);
            let x_3630 : vec2<f32> = u_xlat61;
            let x_3633 : vec2<f32> = ((vec2<f32>(x_3630.y, x_3630.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3634 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3634.x, x_3633.x, x_3634.z, x_3633.y);
            let x_3636 : vec2<f32> = u_xlat61;
            let x_3639 : vec2<f32> = ((vec2<f32>(x_3636.y, x_3636.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3640 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3639.x, x_3640.y, x_3639.y, x_3640.w);
            let x_3643 : f32 = u_xlat12.y;
            u_xlat14.y = x_3643;
            let x_3645 : vec4<f32> = u_xlat14;
            let x_3646 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_3645 + x_3646);
            let x_3648 : vec4<f32> = u_xlat13;
            let x_3649 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_3648 / x_3649);
            let x_3651 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3651 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3653 : vec4<f32> = u_xlat14;
            let x_3654 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_3653 / x_3654);
            let x_3656 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3656 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3658 : vec4<f32> = u_xlat13;
            let x_3661 : vec4<f32> = x_1049.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3658.w, x_3658.x, x_3658.y, x_3658.z) * vec4<f32>(x_3661.x, x_3661.x, x_3661.x, x_3661.x));
            let x_3664 : vec4<f32> = u_xlat14;
            let x_3667 : vec4<f32> = x_1049.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3664.x, x_3664.w, x_3664.y, x_3664.z) * vec4<f32>(x_3667.y, x_3667.y, x_3667.y, x_3667.y));
            let x_3670 : vec4<f32> = u_xlat13;
            let x_3671 : vec3<f32> = vec3<f32>(x_3670.y, x_3670.z, x_3670.w);
            let x_3672 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3671.x, x_3672.y, x_3671.y, x_3671.z);
            let x_3675 : f32 = u_xlat14.x;
            u_xlat16.y = x_3675;
            let x_3677 : vec4<f32> = u_xlat11;
            let x_3680 : vec4<f32> = x_1049.x_AdditionalShadowmapSize;
            let x_3683 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3677.x, x_3677.y, x_3677.x, x_3677.y) * vec4<f32>(x_3680.x, x_3680.y, x_3680.x, x_3680.y)) + vec4<f32>(x_3683.x, x_3683.y, x_3683.z, x_3683.y));
            let x_3686 : vec4<f32> = u_xlat11;
            let x_3689 : vec4<f32> = x_1049.x_AdditionalShadowmapSize;
            let x_3692 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_3686.x, x_3686.y) * vec2<f32>(x_3689.x, x_3689.y)) + vec2<f32>(x_3692.w, x_3692.y));
            let x_3696 : f32 = u_xlat16.y;
            u_xlat13.y = x_3696;
            let x_3699 : f32 = u_xlat14.z;
            u_xlat16.y = x_3699;
            let x_3701 : vec4<f32> = u_xlat11;
            let x_3704 : vec4<f32> = x_1049.x_AdditionalShadowmapSize;
            let x_3707 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3701.x, x_3701.y, x_3701.x, x_3701.y) * vec4<f32>(x_3704.x, x_3704.y, x_3704.x, x_3704.y)) + vec4<f32>(x_3707.x, x_3707.y, x_3707.z, x_3707.y));
            let x_3710 : vec4<f32> = u_xlat11;
            let x_3713 : vec4<f32> = x_1049.x_AdditionalShadowmapSize;
            let x_3716 : vec4<f32> = u_xlat16;
            let x_3718 : vec2<f32> = ((vec2<f32>(x_3710.x, x_3710.y) * vec2<f32>(x_3713.x, x_3713.y)) + vec2<f32>(x_3716.w, x_3716.y));
            let x_3719 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3718.x, x_3718.y, x_3719.z, x_3719.w);
            let x_3722 : f32 = u_xlat16.y;
            u_xlat13.z = x_3722;
            let x_3725 : vec4<f32> = u_xlat11;
            let x_3728 : vec4<f32> = x_1049.x_AdditionalShadowmapSize;
            let x_3731 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3725.x, x_3725.y, x_3725.x, x_3725.y) * vec4<f32>(x_3728.x, x_3728.y, x_3728.x, x_3728.y)) + vec4<f32>(x_3731.x, x_3731.y, x_3731.x, x_3731.z));
            let x_3735 : f32 = u_xlat14.w;
            u_xlat16.y = x_3735;
            let x_3738 : vec4<f32> = u_xlat11;
            let x_3741 : vec4<f32> = x_1049.x_AdditionalShadowmapSize;
            let x_3744 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3738.x, x_3738.y, x_3738.x, x_3738.y) * vec4<f32>(x_3741.x, x_3741.y, x_3741.x, x_3741.y)) + vec4<f32>(x_3744.x, x_3744.y, x_3744.z, x_3744.y));
            let x_3748 : vec4<f32> = u_xlat11;
            let x_3751 : vec4<f32> = x_1049.x_AdditionalShadowmapSize;
            let x_3754 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3748.x, x_3748.y) * vec2<f32>(x_3751.x, x_3751.y)) + vec2<f32>(x_3754.w, x_3754.y));
            let x_3758 : f32 = u_xlat16.y;
            u_xlat13.w = x_3758;
            let x_3761 : vec4<f32> = u_xlat11;
            let x_3764 : vec4<f32> = x_1049.x_AdditionalShadowmapSize;
            let x_3767 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3761.x, x_3761.y) * vec2<f32>(x_3764.x, x_3764.y)) + vec2<f32>(x_3767.x, x_3767.w));
            let x_3770 : vec4<f32> = u_xlat16;
            let x_3771 : vec3<f32> = vec3<f32>(x_3770.x, x_3770.z, x_3770.w);
            let x_3772 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3771.x, x_3772.y, x_3771.y, x_3771.z);
            let x_3774 : vec4<f32> = u_xlat11;
            let x_3777 : vec4<f32> = x_1049.x_AdditionalShadowmapSize;
            let x_3780 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3774.x, x_3774.y, x_3774.x, x_3774.y) * vec4<f32>(x_3777.x, x_3777.y, x_3777.x, x_3777.y)) + vec4<f32>(x_3780.x, x_3780.y, x_3780.z, x_3780.y));
            let x_3784 : vec4<f32> = u_xlat11;
            let x_3787 : vec4<f32> = x_1049.x_AdditionalShadowmapSize;
            let x_3790 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3784.x, x_3784.y) * vec2<f32>(x_3787.x, x_3787.y)) + vec2<f32>(x_3790.w, x_3790.y));
            let x_3794 : f32 = u_xlat13.x;
            u_xlat14.x = x_3794;
            let x_3796 : vec4<f32> = u_xlat11;
            let x_3799 : vec4<f32> = x_1049.x_AdditionalShadowmapSize;
            let x_3802 : vec4<f32> = u_xlat14;
            let x_3804 : vec2<f32> = ((vec2<f32>(x_3796.x, x_3796.y) * vec2<f32>(x_3799.x, x_3799.y)) + vec2<f32>(x_3802.x, x_3802.y));
            let x_3805 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3804.x, x_3804.y, x_3805.z, x_3805.w);
            let x_3808 : vec4<f32> = u_xlat12;
            let x_3810 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3808.x, x_3808.x, x_3808.x, x_3808.x) * x_3810);
            let x_3813 : vec4<f32> = u_xlat12;
            let x_3815 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3813.y, x_3813.y, x_3813.y, x_3813.y) * x_3815);
            let x_3818 : vec4<f32> = u_xlat12;
            let x_3820 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3818.z, x_3818.z, x_3818.z, x_3818.z) * x_3820);
            let x_3822 : vec4<f32> = u_xlat12;
            let x_3824 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3822.w, x_3822.w, x_3822.w, x_3822.w) * x_3824);
            let x_3827 : vec4<f32> = u_xlat17;
            let x_3828 : vec2<f32> = vec2<f32>(x_3827.x, x_3827.y);
            let x_3830 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3828.x, x_3828.y, x_3830);
            let x_3837 : vec3<f32> = txVec43;
            let x_3839 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3837.xy, x_3837.z);
            u_xlat85 = x_3839;
            let x_3841 : vec4<f32> = u_xlat17;
            let x_3842 : vec2<f32> = vec2<f32>(x_3841.z, x_3841.w);
            let x_3844 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3842.x, x_3842.y, x_3844);
            let x_3851 : vec3<f32> = txVec44;
            let x_3853 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3851.xy, x_3851.z);
            u_xlat13.x = x_3853;
            let x_3856 : f32 = u_xlat13.x;
            let x_3858 : f32 = u_xlat22.y;
            u_xlat13.x = (x_3856 * x_3858);
            let x_3862 : f32 = u_xlat22.x;
            let x_3863 : f32 = u_xlat85;
            let x_3866 : f32 = u_xlat13.x;
            u_xlat85 = ((x_3862 * x_3863) + x_3866);
            let x_3869 : vec2<f32> = u_xlat61;
            let x_3871 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3869.x, x_3869.y, x_3871);
            let x_3878 : vec3<f32> = txVec45;
            let x_3880 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3878.xy, x_3878.z);
            u_xlat61.x = x_3880;
            let x_3883 : f32 = u_xlat22.z;
            let x_3885 : f32 = u_xlat61.x;
            let x_3887 : f32 = u_xlat85;
            u_xlat85 = ((x_3883 * x_3885) + x_3887);
            let x_3890 : vec4<f32> = u_xlat20;
            let x_3891 : vec2<f32> = vec2<f32>(x_3890.x, x_3890.y);
            let x_3893 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3891.x, x_3891.y, x_3893);
            let x_3900 : vec3<f32> = txVec46;
            let x_3902 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3900.xy, x_3900.z);
            u_xlat61.x = x_3902;
            let x_3905 : f32 = u_xlat22.w;
            let x_3907 : f32 = u_xlat61.x;
            let x_3909 : f32 = u_xlat85;
            u_xlat85 = ((x_3905 * x_3907) + x_3909);
            let x_3912 : vec4<f32> = u_xlat18;
            let x_3913 : vec2<f32> = vec2<f32>(x_3912.x, x_3912.y);
            let x_3915 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3913.x, x_3913.y, x_3915);
            let x_3922 : vec3<f32> = txVec47;
            let x_3924 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3922.xy, x_3922.z);
            u_xlat61.x = x_3924;
            let x_3927 : f32 = u_xlat23.x;
            let x_3929 : f32 = u_xlat61.x;
            let x_3931 : f32 = u_xlat85;
            u_xlat85 = ((x_3927 * x_3929) + x_3931);
            let x_3934 : vec4<f32> = u_xlat18;
            let x_3935 : vec2<f32> = vec2<f32>(x_3934.z, x_3934.w);
            let x_3937 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3935.x, x_3935.y, x_3937);
            let x_3944 : vec3<f32> = txVec48;
            let x_3946 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3944.xy, x_3944.z);
            u_xlat61.x = x_3946;
            let x_3949 : f32 = u_xlat23.y;
            let x_3951 : f32 = u_xlat61.x;
            let x_3953 : f32 = u_xlat85;
            u_xlat85 = ((x_3949 * x_3951) + x_3953);
            let x_3956 : vec4<f32> = u_xlat19;
            let x_3957 : vec2<f32> = vec2<f32>(x_3956.x, x_3956.y);
            let x_3959 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3957.x, x_3957.y, x_3959);
            let x_3966 : vec3<f32> = txVec49;
            let x_3968 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3966.xy, x_3966.z);
            u_xlat61.x = x_3968;
            let x_3971 : f32 = u_xlat23.z;
            let x_3973 : f32 = u_xlat61.x;
            let x_3975 : f32 = u_xlat85;
            u_xlat85 = ((x_3971 * x_3973) + x_3975);
            let x_3978 : vec4<f32> = u_xlat20;
            let x_3979 : vec2<f32> = vec2<f32>(x_3978.z, x_3978.w);
            let x_3981 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3979.x, x_3979.y, x_3981);
            let x_3988 : vec3<f32> = txVec50;
            let x_3990 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3988.xy, x_3988.z);
            u_xlat61.x = x_3990;
            let x_3993 : f32 = u_xlat23.w;
            let x_3995 : f32 = u_xlat61.x;
            let x_3997 : f32 = u_xlat85;
            u_xlat85 = ((x_3993 * x_3995) + x_3997);
            let x_4000 : vec4<f32> = u_xlat21;
            let x_4001 : vec2<f32> = vec2<f32>(x_4000.x, x_4000.y);
            let x_4003 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_4001.x, x_4001.y, x_4003);
            let x_4010 : vec3<f32> = txVec51;
            let x_4012 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4010.xy, x_4010.z);
            u_xlat61.x = x_4012;
            let x_4015 : f32 = u_xlat24.x;
            let x_4017 : f32 = u_xlat61.x;
            let x_4019 : f32 = u_xlat85;
            u_xlat85 = ((x_4015 * x_4017) + x_4019);
            let x_4022 : vec4<f32> = u_xlat21;
            let x_4023 : vec2<f32> = vec2<f32>(x_4022.z, x_4022.w);
            let x_4025 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_4023.x, x_4023.y, x_4025);
            let x_4032 : vec3<f32> = txVec52;
            let x_4034 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4032.xy, x_4032.z);
            u_xlat61.x = x_4034;
            let x_4037 : f32 = u_xlat24.y;
            let x_4039 : f32 = u_xlat61.x;
            let x_4041 : f32 = u_xlat85;
            u_xlat85 = ((x_4037 * x_4039) + x_4041);
            let x_4044 : vec2<f32> = u_xlat38;
            let x_4046 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_4044.x, x_4044.y, x_4046);
            let x_4053 : vec3<f32> = txVec53;
            let x_4055 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4053.xy, x_4053.z);
            u_xlat61.x = x_4055;
            let x_4058 : f32 = u_xlat24.z;
            let x_4060 : f32 = u_xlat61.x;
            let x_4062 : f32 = u_xlat85;
            u_xlat85 = ((x_4058 * x_4060) + x_4062);
            let x_4065 : vec2<f32> = u_xlat69;
            let x_4067 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_4065.x, x_4065.y, x_4067);
            let x_4074 : vec3<f32> = txVec54;
            let x_4076 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4074.xy, x_4074.z);
            u_xlat61.x = x_4076;
            let x_4079 : f32 = u_xlat24.w;
            let x_4081 : f32 = u_xlat61.x;
            let x_4083 : f32 = u_xlat85;
            u_xlat85 = ((x_4079 * x_4081) + x_4083);
            let x_4086 : vec4<f32> = u_xlat16;
            let x_4087 : vec2<f32> = vec2<f32>(x_4086.x, x_4086.y);
            let x_4089 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_4087.x, x_4087.y, x_4089);
            let x_4096 : vec3<f32> = txVec55;
            let x_4098 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4096.xy, x_4096.z);
            u_xlat61.x = x_4098;
            let x_4101 : f32 = u_xlat12.x;
            let x_4103 : f32 = u_xlat61.x;
            let x_4105 : f32 = u_xlat85;
            u_xlat85 = ((x_4101 * x_4103) + x_4105);
            let x_4108 : vec4<f32> = u_xlat16;
            let x_4109 : vec2<f32> = vec2<f32>(x_4108.z, x_4108.w);
            let x_4111 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_4109.x, x_4109.y, x_4111);
            let x_4118 : vec3<f32> = txVec56;
            let x_4120 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4118.xy, x_4118.z);
            u_xlat61.x = x_4120;
            let x_4123 : f32 = u_xlat12.y;
            let x_4125 : f32 = u_xlat61.x;
            let x_4127 : f32 = u_xlat85;
            u_xlat85 = ((x_4123 * x_4125) + x_4127);
            let x_4130 : vec2<f32> = u_xlat64;
            let x_4132 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_4130.x, x_4130.y, x_4132);
            let x_4139 : vec3<f32> = txVec57;
            let x_4141 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4139.xy, x_4139.z);
            u_xlat61.x = x_4141;
            let x_4144 : f32 = u_xlat12.z;
            let x_4146 : f32 = u_xlat61.x;
            let x_4148 : f32 = u_xlat85;
            u_xlat85 = ((x_4144 * x_4146) + x_4148);
            let x_4151 : vec4<f32> = u_xlat11;
            let x_4152 : vec2<f32> = vec2<f32>(x_4151.x, x_4151.y);
            let x_4154 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_4152.x, x_4152.y, x_4154);
            let x_4161 : vec3<f32> = txVec58;
            let x_4163 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4161.xy, x_4161.z);
            u_xlat11.x = x_4163;
            let x_4166 : f32 = u_xlat12.w;
            let x_4168 : f32 = u_xlat11.x;
            let x_4170 : f32 = u_xlat85;
            u_xlat84 = ((x_4166 * x_4168) + x_4170);
          }
        }
      } else {
        let x_4174 : vec4<f32> = u_xlat10;
        let x_4175 : vec2<f32> = vec2<f32>(x_4174.x, x_4174.y);
        let x_4177 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_4175.x, x_4175.y, x_4177);
        let x_4184 : vec3<f32> = txVec59;
        let x_4186 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4184.xy, x_4184.z);
        u_xlat84 = x_4186;
      }
      let x_4187 : i32 = u_xlati81;
      let x_4189 : f32 = x_1049.x_AdditionalShadowParams[x_4187].x;
      u_xlat10.x = (1.0f + -(x_4189));
      let x_4193 : f32 = u_xlat84;
      let x_4194 : i32 = u_xlati81;
      let x_4196 : f32 = x_1049.x_AdditionalShadowParams[x_4194].x;
      let x_4199 : f32 = u_xlat10.x;
      u_xlat84 = ((x_4193 * x_4196) + x_4199);
      let x_4202 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_4202);
      let x_4207 : f32 = u_xlat10.z;
      u_xlatb35 = (x_4207 >= 1.0f);
      let x_4209 : bool = u_xlatb35;
      let x_4211 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_4209 | x_4211);
      let x_4215 : bool = u_xlatb10.x;
      let x_4216 : f32 = u_xlat84;
      u_xlat84 = select(x_4216, 1.0f, x_4215);
    } else {
      u_xlat84 = 1.0f;
    }
    let x_4219 : f32 = u_xlat84;
    u_xlat10.x = (-(x_4219) + 1.0f);
    let x_4224 : f32 = u_xlat3.x;
    let x_4226 : f32 = u_xlat10.x;
    let x_4228 : f32 = u_xlat84;
    u_xlat84 = ((x_4224 * x_4226) + x_4228);
    let x_4230 : f32 = u_xlat82;
    let x_4231 : f32 = u_xlat84;
    u_xlat82 = (x_4230 * x_4231);
    let x_4233 : vec4<f32> = u_xlat1;
    let x_4235 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_4233.x, x_4233.y, x_4233.z), vec3<f32>(x_4235.x, x_4235.y, x_4235.z));
    let x_4238 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4238, 0.0f, 1.0f);
    let x_4240 : f32 = u_xlat82;
    let x_4241 : f32 = u_xlat84;
    u_xlat82 = (x_4240 * x_4241);
    let x_4243 : f32 = u_xlat82;
    let x_4245 : i32 = u_xlati81;
    let x_4247 : vec4<f32> = x_2741.x_AdditionalLightsColor[x_4245];
    let x_4249 : vec3<f32> = (vec3<f32>(x_4243, x_4243, x_4243) * vec3<f32>(x_4247.x, x_4247.y, x_4247.z));
    let x_4250 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_4249.x, x_4249.y, x_4249.z, x_4250.w);
    let x_4252 : vec4<f32> = u_xlat8;
    let x_4254 : f32 = u_xlat83;
    let x_4257 : vec4<f32> = u_xlat6;
    let x_4259 : vec3<f32> = ((vec3<f32>(x_4252.x, x_4252.y, x_4252.z) * vec3<f32>(x_4254, x_4254, x_4254)) + vec3<f32>(x_4257.x, x_4257.y, x_4257.z));
    let x_4260 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4259.x, x_4259.y, x_4259.z, x_4260.w);
    let x_4262 : vec4<f32> = u_xlat8;
    let x_4264 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_4262.x, x_4262.y, x_4262.z), vec3<f32>(x_4264.x, x_4264.y, x_4264.z));
    let x_4267 : f32 = u_xlat81;
    u_xlat81 = max(x_4267, 1.17549435e-38f);
    let x_4269 : f32 = u_xlat81;
    u_xlat81 = inverseSqrt(x_4269);
    let x_4271 : f32 = u_xlat81;
    let x_4273 : vec4<f32> = u_xlat8;
    let x_4275 : vec3<f32> = (vec3<f32>(x_4271, x_4271, x_4271) * vec3<f32>(x_4273.x, x_4273.y, x_4273.z));
    let x_4276 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4275.x, x_4275.y, x_4275.z, x_4276.w);
    let x_4278 : vec4<f32> = u_xlat1;
    let x_4280 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_4278.x, x_4278.y, x_4278.z), vec3<f32>(x_4280.x, x_4280.y, x_4280.z));
    let x_4283 : f32 = u_xlat81;
    u_xlat81 = clamp(x_4283, 0.0f, 1.0f);
    let x_4285 : vec4<f32> = u_xlat9;
    let x_4287 : vec4<f32> = u_xlat8;
    u_xlat82 = dot(vec3<f32>(x_4285.x, x_4285.y, x_4285.z), vec3<f32>(x_4287.x, x_4287.y, x_4287.z));
    let x_4290 : f32 = u_xlat82;
    u_xlat82 = clamp(x_4290, 0.0f, 1.0f);
    let x_4292 : f32 = u_xlat81;
    let x_4293 : f32 = u_xlat81;
    u_xlat81 = (x_4292 * x_4293);
    let x_4295 : f32 = u_xlat81;
    let x_4297 : f32 = u_xlat0.x;
    u_xlat81 = ((x_4295 * x_4297) + 1.00001001358032226562f);
    let x_4300 : f32 = u_xlat82;
    let x_4301 : f32 = u_xlat82;
    u_xlat82 = (x_4300 * x_4301);
    let x_4303 : f32 = u_xlat81;
    let x_4304 : f32 = u_xlat81;
    u_xlat81 = (x_4303 * x_4304);
    let x_4306 : f32 = u_xlat82;
    u_xlat82 = max(x_4306, 0.10000000149011611938f);
    let x_4308 : f32 = u_xlat81;
    let x_4309 : f32 = u_xlat82;
    u_xlat81 = (x_4308 * x_4309);
    let x_4311 : f32 = u_xlat79;
    let x_4312 : f32 = u_xlat81;
    u_xlat81 = (x_4311 * x_4312);
    let x_4314 : f32 = u_xlat76;
    let x_4315 : f32 = u_xlat81;
    u_xlat81 = (x_4314 / x_4315);
    let x_4317 : vec4<f32> = u_xlat4;
    let x_4319 : f32 = u_xlat81;
    let x_4322 : vec3<f32> = u_xlat28;
    let x_4323 : vec3<f32> = ((vec3<f32>(x_4317.x, x_4317.y, x_4317.z) * vec3<f32>(x_4319, x_4319, x_4319)) + x_4322);
    let x_4324 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4323.x, x_4323.y, x_4323.z, x_4324.w);
    let x_4326 : vec4<f32> = u_xlat8;
    let x_4328 : vec4<f32> = u_xlat10;
    let x_4331 : vec4<f32> = u_xlat7;
    let x_4333 : vec3<f32> = ((vec3<f32>(x_4326.x, x_4326.y, x_4326.z) * vec3<f32>(x_4328.x, x_4328.y, x_4328.z)) + vec3<f32>(x_4331.x, x_4331.y, x_4331.z));
    let x_4334 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_4333.x, x_4333.y, x_4333.z, x_4334.w);

    continuing {
      let x_4336 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4336 + bitcast<u32>(1i));
    }
  }
  let x_4338 : vec3<f32> = u_xlat27;
  let x_4339 : f32 = u_xlat25;
  let x_4342 : vec4<f32> = u_xlat5;
  u_xlat0 = ((x_4338 * vec3<f32>(x_4339, x_4339, x_4339)) + vec3<f32>(x_4342.x, x_4342.z, x_4342.w));
  let x_4345 : vec4<f32> = u_xlat7;
  let x_4347 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4345.x, x_4345.y, x_4345.z) + x_4347);
  let x_4349 : f32 = u_xlat75;
  let x_4351 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4349, x_4349, x_4349) * x_4351);
  let x_4354 : f32 = u_xlat2.x;
  let x_4356 : f32 = u_xlat2.x;
  u_xlat75 = (x_4354 * -(x_4356));
  let x_4359 : f32 = u_xlat75;
  u_xlat75 = exp2(x_4359);
  let x_4363 : vec3<f32> = u_xlat0;
  let x_4364 : f32 = u_xlat75;
  let x_4366 : vec3<f32> = (x_4363 * vec3<f32>(x_4364, x_4364, x_4364));
  let x_4367 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4366.x, x_4366.y, x_4366.z, x_4367.w);
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


