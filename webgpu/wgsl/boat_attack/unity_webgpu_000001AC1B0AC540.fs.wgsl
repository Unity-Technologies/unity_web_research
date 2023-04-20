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

@group(0) @binding(10) var x_TerrainHolesTexture : texture_2d<f32>;

@group(0) @binding(17) var sampler_TerrainHolesTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlatb0 : bool;

@group(1) @binding(3) var<uniform> x_59 : x_Terrain;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

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

@group(1) @binding(4) var<uniform> x_868 : LightShadows;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlatu2 : u32;

var<private> u_xlati2 : i32;

var<private> u_xlat27 : vec3<f32>;

var<private> u_xlat77 : f32;

@group(1) @binding(2) var<uniform> x_1085 : UnityPerDraw;

var<private> u_xlat78 : f32;

var<private> u_xlat79 : f32;

var<private> u_xlatb80 : bool;

@group(0) @binding(11) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(18) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat80 : f32;

var<private> u_xlatb6 : bool;

var<private> u_xlat56 : vec2<f32>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat14 : vec4<f32>;

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

var<private> u_xlat83 : f32;

var<private> u_xlat81 : f32;

var<private> u_xlatb27 : bool;

var<private> u_xlatb52 : bool;

var<private> u_xlat52 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(13) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu0 : u32;

var<private> u_xlatu80 : u32;

var<private> u_xlati81 : i32;

var<private> u_xlati80 : i32;

@group(1) @binding(1) var<uniform> x_2908 : AdditionalLights;

var<private> u_xlat82 : f32;

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

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlatb35 : bool;

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
  var x_2502 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_3042 : f32;
  var x_3053 : f32;
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
  let x_97 : vec3<f32> = ((vec3<f32>(x_90.x, x_90.y, x_90.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_95.x, x_95.y, x_95.w));
  let x_98 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_97.x, x_97.y, x_97.z, x_98.w);
  let x_103 : vec4<f32> = x_59.x_MaskMapRemapScale3;
  let x_108 : vec4<f32> = x_59.x_MaskMapRemapOffset3;
  let x_110 : vec3<f32> = ((vec3<f32>(x_103.x, x_103.w, x_103.y) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_108.x, x_108.w, x_108.y));
  let x_111 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_110.x, x_110.y, x_111.z, x_110.z);
  let x_116 : vec4<f32> = x_59.x_Control_TexelSize;
  let x_120 : vec2<f32> = (vec2<f32>(x_116.z, x_116.w) + vec2<f32>(-1.0f, -1.0f));
  let x_121 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_120.x, x_120.y, x_121.z, x_121.w);
  let x_123 : vec4<f32> = vs_TEXCOORD0;
  let x_125 : vec4<f32> = u_xlat4;
  let x_129 : vec2<f32> = ((vec2<f32>(x_123.x, x_123.y) * vec2<f32>(x_125.x, x_125.y)) + vec2<f32>(0.5f, 0.5f));
  let x_130 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_129.x, x_129.y, x_130.z, x_130.w);
  let x_132 : vec4<f32> = u_xlat4;
  let x_135 : vec4<f32> = x_59.x_Control_TexelSize;
  let x_137 : vec2<f32> = (vec2<f32>(x_132.x, x_132.y) * vec2<f32>(x_135.x, x_135.y));
  let x_138 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_137.x, x_137.y, x_138.z, x_138.w);
  let x_145 : vec4<f32> = u_xlat4;
  let x_148 : f32 = x_29.x_GlobalMipBias.x;
  let x_149 : vec4<f32> = textureSampleBias(x_Control, sampler_Control, vec2<f32>(x_145.x, x_145.y), x_148);
  u_xlat4 = x_149;
  let x_151 : vec4<f32> = u_xlat4;
  u_xlat75 = dot(x_151, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_162 : vec4<f32> = vs_TEXCOORD1;
  let x_165 : f32 = x_29.x_GlobalMipBias.x;
  let x_166 : vec4<f32> = textureSampleBias(x_Splat0, sampler_Splat0, vec2<f32>(x_162.x, x_162.y), x_165);
  u_xlat5 = x_166;
  let x_172 : vec4<f32> = vs_TEXCOORD1;
  let x_175 : f32 = x_29.x_GlobalMipBias.x;
  let x_176 : vec4<f32> = textureSampleBias(x_Splat1, sampler_Splat0, vec2<f32>(x_172.z, x_172.w), x_175);
  u_xlat6 = x_176;
  let x_183 : vec4<f32> = vs_TEXCOORD2;
  let x_186 : f32 = x_29.x_GlobalMipBias.x;
  let x_187 : vec4<f32> = textureSampleBias(x_Splat2, sampler_Splat0, vec2<f32>(x_183.x, x_183.y), x_186);
  u_xlat7 = x_187;
  let x_193 : vec4<f32> = vs_TEXCOORD2;
  let x_196 : f32 = x_29.x_GlobalMipBias.x;
  let x_197 : vec4<f32> = textureSampleBias(x_Splat3, sampler_Splat0, vec2<f32>(x_193.z, x_193.w), x_196);
  u_xlat8 = x_197;
  let x_201 : f32 = u_xlat5.w;
  u_xlat9.x = x_201;
  let x_204 : f32 = u_xlat6.w;
  u_xlat9.y = x_204;
  let x_208 : f32 = u_xlat7.w;
  u_xlat9.z = x_208;
  let x_212 : f32 = u_xlat8.w;
  u_xlat9.w = x_212;
  let x_215 : vec4<f32> = u_xlat9;
  let x_218 : f32 = x_59.x_Smoothness0;
  let x_221 : f32 = x_59.x_Smoothness1;
  let x_224 : f32 = x_59.x_Smoothness2;
  let x_227 : f32 = x_59.x_Smoothness3;
  u_xlat10 = (x_215 * vec4<f32>(x_218, x_221, x_224, x_227));
  let x_234 : f32 = x_59.x_NumLayersCount;
  u_xlatb76 = (4.0f >= x_234);
  let x_237 : vec4<f32> = u_xlat4;
  u_xlat11 = (-(x_237) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_240 : vec4<f32> = u_xlat9;
  let x_241 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_240 + -(x_241));
  let x_244 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_244 * vec4<f32>(20.0f, 20.0f, 20.0f, 20.0f));
  let x_248 : vec4<f32> = u_xlat11;
  u_xlat11 = clamp(x_248, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_252 : vec4<f32> = u_xlat4;
  let x_256 : vec4<f32> = u_xlat11;
  u_xlat11 = ((x_252 * vec4<f32>(0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f)) + x_256);
  let x_259 : vec4<f32> = u_xlat4;
  let x_260 : vec4<f32> = u_xlat11;
  u_xlat12 = (x_259 + -(x_260));
  let x_265 : f32 = u_xlat12.x;
  let x_268 : f32 = x_59.x_DiffuseRemapScale0.w;
  u_xlat13.x = (x_265 * x_268);
  let x_272 : f32 = u_xlat12.y;
  let x_275 : f32 = x_59.x_DiffuseRemapScale1.w;
  u_xlat13.y = (x_272 * x_275);
  let x_279 : f32 = u_xlat12.z;
  let x_282 : f32 = x_59.x_DiffuseRemapScale2.w;
  u_xlat13.z = (x_279 * x_282);
  let x_286 : f32 = u_xlat12.w;
  let x_289 : f32 = x_59.x_DiffuseRemapScale3.w;
  u_xlat13.w = (x_286 * x_289);
  let x_292 : vec4<f32> = u_xlat11;
  let x_293 : vec4<f32> = u_xlat13;
  u_xlat11 = (x_292 + x_293);
  let x_295 : bool = u_xlatb76;
  let x_296 : vec4<f32> = u_xlat11;
  let x_297 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_297, x_296, vec4<bool>(x_295, x_295, x_295, x_295));
  let x_302 : vec4<f32> = u_xlat4;
  u_xlat76 = dot(x_302, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_306 : f32 = u_xlat76;
  u_xlatb77 = (0.00499999988824129105f >= x_306);
  let x_308 : bool = u_xlatb77;
  if (((select(0i, 1i, x_308) * -1i) != 0i)) {
    discard;
  }
  let x_315 : f32 = u_xlat76;
  u_xlat76 = (x_315 + 0.00006103515625f);
  let x_318 : vec4<f32> = u_xlat4;
  let x_319 : f32 = u_xlat76;
  u_xlat4 = (x_318 / vec4<f32>(x_319, x_319, x_319, x_319));
  let x_322 : vec4<f32> = u_xlat4;
  let x_325 : vec4<f32> = x_59.x_DiffuseRemapScale0;
  let x_327 : vec3<f32> = (vec3<f32>(x_322.x, x_322.x, x_322.x) * vec3<f32>(x_325.x, x_325.y, x_325.z));
  let x_328 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_327.x, x_327.y, x_327.z, x_328.w);
  let x_330 : vec4<f32> = u_xlat4;
  let x_333 : vec4<f32> = x_59.x_DiffuseRemapScale1;
  let x_335 : vec3<f32> = (vec3<f32>(x_330.y, x_330.y, x_330.y) * vec3<f32>(x_333.x, x_333.y, x_333.z));
  let x_336 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_335.x, x_335.y, x_335.z, x_336.w);
  let x_338 : vec4<f32> = u_xlat6;
  let x_340 : vec4<f32> = u_xlat12;
  let x_342 : vec3<f32> = (vec3<f32>(x_338.x, x_338.y, x_338.z) * vec3<f32>(x_340.x, x_340.y, x_340.z));
  let x_343 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_342.x, x_342.y, x_342.z, x_343.w);
  let x_345 : vec4<f32> = u_xlat5;
  let x_347 : vec4<f32> = u_xlat11;
  let x_350 : vec4<f32> = u_xlat6;
  let x_352 : vec3<f32> = ((vec3<f32>(x_345.x, x_345.y, x_345.z) * vec3<f32>(x_347.x, x_347.y, x_347.z)) + vec3<f32>(x_350.x, x_350.y, x_350.z));
  let x_353 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_352.x, x_352.y, x_352.z, x_353.w);
  let x_355 : vec4<f32> = u_xlat4;
  let x_358 : vec4<f32> = x_59.x_DiffuseRemapScale2;
  let x_360 : vec3<f32> = (vec3<f32>(x_355.z, x_355.z, x_355.z) * vec3<f32>(x_358.x, x_358.y, x_358.z));
  let x_361 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_360.x, x_360.y, x_360.z, x_361.w);
  let x_363 : vec4<f32> = u_xlat7;
  let x_365 : vec4<f32> = u_xlat6;
  let x_368 : vec4<f32> = u_xlat5;
  let x_370 : vec3<f32> = ((vec3<f32>(x_363.x, x_363.y, x_363.z) * vec3<f32>(x_365.x, x_365.y, x_365.z)) + vec3<f32>(x_368.x, x_368.y, x_368.z));
  let x_371 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_370.x, x_370.y, x_370.z, x_371.w);
  let x_373 : vec4<f32> = u_xlat4;
  let x_376 : vec4<f32> = x_59.x_DiffuseRemapScale3;
  let x_378 : vec3<f32> = (vec3<f32>(x_373.w, x_373.w, x_373.w) * vec3<f32>(x_376.x, x_376.y, x_376.z));
  let x_379 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_378.x, x_378.y, x_378.z, x_379.w);
  let x_381 : vec4<f32> = u_xlat8;
  let x_383 : vec4<f32> = u_xlat6;
  let x_386 : vec4<f32> = u_xlat5;
  let x_388 : vec3<f32> = ((vec3<f32>(x_381.x, x_381.y, x_381.z) * vec3<f32>(x_383.x, x_383.y, x_383.z)) + vec3<f32>(x_386.x, x_386.y, x_386.z));
  let x_389 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_388.x, x_388.y, x_388.z, x_389.w);
  let x_396 : vec4<f32> = vs_TEXCOORD1;
  let x_399 : f32 = x_29.x_GlobalMipBias.x;
  let x_400 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_396.x, x_396.y), x_399);
  let x_401 : vec3<f32> = vec3<f32>(x_400.x, x_400.y, x_400.w);
  let x_402 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_401.x, x_401.y, x_401.z, x_402.w);
  let x_405 : f32 = u_xlat6.x;
  let x_407 : f32 = u_xlat6.z;
  u_xlat6.x = (x_405 * x_407);
  let x_410 : vec4<f32> = u_xlat6;
  let x_415 : vec2<f32> = ((vec2<f32>(x_410.x, x_410.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_416 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_415.x, x_415.y, x_416.z, x_416.w);
  let x_418 : vec4<f32> = u_xlat6;
  let x_420 : vec4<f32> = u_xlat6;
  u_xlat76 = dot(vec2<f32>(x_418.x, x_418.y), vec2<f32>(x_420.x, x_420.y));
  let x_423 : f32 = u_xlat76;
  u_xlat76 = min(x_423, 1.0f);
  let x_425 : f32 = u_xlat76;
  u_xlat76 = (-(x_425) + 1.0f);
  let x_428 : f32 = u_xlat76;
  u_xlat76 = sqrt(x_428);
  let x_430 : f32 = u_xlat76;
  u_xlat7.z = max(x_430, 0.0000000000000001f);
  let x_434 : vec4<f32> = u_xlat6;
  let x_437 : f32 = x_59.x_NormalScale0;
  let x_439 : vec2<f32> = (vec2<f32>(x_434.x, x_434.y) * vec2<f32>(x_437, x_437));
  let x_440 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_439.x, x_439.y, x_440.z, x_440.w);
  let x_446 : vec4<f32> = vs_TEXCOORD1;
  let x_449 : f32 = x_29.x_GlobalMipBias.x;
  let x_450 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_446.z, x_446.w), x_449);
  let x_451 : vec3<f32> = vec3<f32>(x_450.x, x_450.y, x_450.w);
  let x_452 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_451.x, x_451.y, x_451.z, x_452.w);
  let x_455 : f32 = u_xlat6.x;
  let x_457 : f32 = u_xlat6.z;
  u_xlat6.x = (x_455 * x_457);
  let x_460 : vec4<f32> = u_xlat6;
  let x_463 : vec2<f32> = ((vec2<f32>(x_460.x, x_460.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_464 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_463.x, x_463.y, x_464.z, x_464.w);
  let x_466 : vec4<f32> = u_xlat6;
  let x_468 : vec4<f32> = u_xlat6;
  u_xlat76 = dot(vec2<f32>(x_466.x, x_466.y), vec2<f32>(x_468.x, x_468.y));
  let x_471 : f32 = u_xlat76;
  u_xlat76 = min(x_471, 1.0f);
  let x_473 : f32 = u_xlat76;
  u_xlat76 = (-(x_473) + 1.0f);
  let x_476 : f32 = u_xlat76;
  u_xlat76 = sqrt(x_476);
  let x_478 : f32 = u_xlat76;
  u_xlat8.z = max(x_478, 0.0000000000000001f);
  let x_481 : vec4<f32> = u_xlat6;
  let x_484 : f32 = x_59.x_NormalScale1;
  let x_486 : f32 = x_59.x_NormalScale1;
  let x_487 : vec2<f32> = vec2<f32>(x_484, x_486);
  let x_491 : vec2<f32> = (vec2<f32>(x_481.x, x_481.y) * vec2<f32>(x_487.x, x_487.y));
  let x_492 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_491.x, x_491.y, x_492.z, x_492.w);
  let x_494 : vec4<f32> = u_xlat4;
  let x_496 : vec4<f32> = u_xlat8;
  let x_498 : vec3<f32> = (vec3<f32>(x_494.y, x_494.y, x_494.y) * vec3<f32>(x_496.x, x_496.y, x_496.z));
  let x_499 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_498.x, x_498.y, x_498.z, x_499.w);
  let x_501 : vec4<f32> = u_xlat4;
  let x_503 : vec4<f32> = u_xlat7;
  let x_506 : vec4<f32> = u_xlat6;
  let x_508 : vec3<f32> = ((vec3<f32>(x_501.x, x_501.x, x_501.x) * vec3<f32>(x_503.x, x_503.y, x_503.z)) + vec3<f32>(x_506.x, x_506.y, x_506.z));
  let x_509 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_508.x, x_508.y, x_508.z, x_509.w);
  let x_515 : vec4<f32> = vs_TEXCOORD2;
  let x_518 : f32 = x_29.x_GlobalMipBias.x;
  let x_519 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_515.x, x_515.y), x_518);
  let x_520 : vec3<f32> = vec3<f32>(x_519.x, x_519.y, x_519.w);
  let x_521 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_520.x, x_520.y, x_520.z, x_521.w);
  let x_524 : f32 = u_xlat7.x;
  let x_526 : f32 = u_xlat7.z;
  u_xlat7.x = (x_524 * x_526);
  let x_529 : vec4<f32> = u_xlat7;
  let x_532 : vec2<f32> = ((vec2<f32>(x_529.x, x_529.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_533 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_532.x, x_532.y, x_533.z, x_533.w);
  let x_535 : vec4<f32> = u_xlat7;
  let x_537 : vec4<f32> = u_xlat7;
  u_xlat76 = dot(vec2<f32>(x_535.x, x_535.y), vec2<f32>(x_537.x, x_537.y));
  let x_540 : f32 = u_xlat76;
  u_xlat76 = min(x_540, 1.0f);
  let x_542 : f32 = u_xlat76;
  u_xlat76 = (-(x_542) + 1.0f);
  let x_545 : f32 = u_xlat76;
  u_xlat76 = sqrt(x_545);
  let x_547 : f32 = u_xlat76;
  u_xlat8.z = max(x_547, 0.0000000000000001f);
  let x_550 : vec4<f32> = u_xlat7;
  let x_554 : f32 = x_59.x_NormalScale2;
  let x_556 : f32 = x_59.x_NormalScale2;
  let x_557 : vec2<f32> = vec2<f32>(x_554, x_556);
  let x_561 : vec2<f32> = (vec2<f32>(x_550.x, x_550.y) * vec2<f32>(x_557.x, x_557.y));
  let x_562 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_561.x, x_561.y, x_562.z, x_562.w);
  let x_564 : vec4<f32> = u_xlat4;
  let x_566 : vec4<f32> = u_xlat8;
  let x_569 : vec4<f32> = u_xlat6;
  let x_571 : vec3<f32> = ((vec3<f32>(x_564.z, x_564.z, x_564.z) * vec3<f32>(x_566.x, x_566.y, x_566.z)) + vec3<f32>(x_569.x, x_569.y, x_569.z));
  let x_572 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_571.x, x_571.y, x_571.z, x_572.w);
  let x_578 : vec4<f32> = vs_TEXCOORD2;
  let x_581 : f32 = x_29.x_GlobalMipBias.x;
  let x_582 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_578.z, x_578.w), x_581);
  let x_583 : vec3<f32> = vec3<f32>(x_582.x, x_582.y, x_582.w);
  let x_584 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_583.x, x_583.y, x_583.z, x_584.w);
  let x_587 : f32 = u_xlat7.x;
  let x_589 : f32 = u_xlat7.z;
  u_xlat7.x = (x_587 * x_589);
  let x_592 : vec4<f32> = u_xlat7;
  let x_595 : vec2<f32> = ((vec2<f32>(x_592.x, x_592.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_596 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_595.x, x_595.y, x_596.z, x_596.w);
  let x_598 : vec4<f32> = u_xlat7;
  let x_600 : vec4<f32> = u_xlat7;
  u_xlat76 = dot(vec2<f32>(x_598.x, x_598.y), vec2<f32>(x_600.x, x_600.y));
  let x_603 : f32 = u_xlat76;
  u_xlat76 = min(x_603, 1.0f);
  let x_605 : f32 = u_xlat76;
  u_xlat76 = (-(x_605) + 1.0f);
  let x_608 : f32 = u_xlat76;
  u_xlat76 = sqrt(x_608);
  let x_610 : f32 = u_xlat76;
  u_xlat8.z = max(x_610, 0.0000000000000001f);
  let x_613 : vec4<f32> = u_xlat7;
  let x_617 : f32 = x_59.x_NormalScale3;
  let x_619 : f32 = x_59.x_NormalScale3;
  let x_620 : vec2<f32> = vec2<f32>(x_617, x_619);
  let x_624 : vec2<f32> = (vec2<f32>(x_613.x, x_613.y) * vec2<f32>(x_620.x, x_620.y));
  let x_625 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_624.x, x_624.y, x_625.z, x_625.w);
  let x_627 : vec4<f32> = u_xlat4;
  let x_629 : vec4<f32> = u_xlat8;
  let x_632 : vec4<f32> = u_xlat6;
  let x_634 : vec3<f32> = ((vec3<f32>(x_627.w, x_627.w, x_627.w) * vec3<f32>(x_629.x, x_629.y, x_629.z)) + vec3<f32>(x_632.x, x_632.y, x_632.z));
  let x_635 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_634.x, x_634.y, x_634.z, x_635.w);
  let x_638 : f32 = u_xlat6.z;
  u_xlat6.w = (x_638 + 0.00000999999974737875f);
  let x_642 : vec4<f32> = u_xlat6;
  let x_644 : vec4<f32> = u_xlat6;
  u_xlat76 = dot(vec3<f32>(x_642.x, x_642.y, x_642.w), vec3<f32>(x_644.x, x_644.y, x_644.w));
  let x_647 : f32 = u_xlat76;
  u_xlat76 = inverseSqrt(x_647);
  let x_649 : f32 = u_xlat76;
  let x_651 : vec4<f32> = u_xlat6;
  let x_653 : vec3<f32> = (vec3<f32>(x_649, x_649, x_649) * vec3<f32>(x_651.x, x_651.y, x_651.w));
  let x_654 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_653.x, x_653.y, x_653.z, x_654.w);
  let x_657 : f32 = x_59.x_MaskMapRemapScale0.y;
  u_xlat7.x = x_657;
  let x_660 : f32 = x_59.x_MaskMapRemapScale1.y;
  u_xlat7.y = x_660;
  let x_663 : f32 = x_59.x_MaskMapRemapScale2.y;
  u_xlat7.z = x_663;
  let x_666 : f32 = x_59.x_MaskMapRemapScale3.y;
  u_xlat7.w = x_666;
  let x_669 : f32 = x_59.x_MaskMapRemapOffset0.y;
  u_xlat8.x = x_669;
  let x_672 : f32 = x_59.x_MaskMapRemapOffset1.y;
  u_xlat8.y = x_672;
  let x_675 : f32 = x_59.x_MaskMapRemapOffset2.y;
  u_xlat8.z = x_675;
  let x_678 : f32 = x_59.x_MaskMapRemapOffset3.y;
  u_xlat8.w = x_678;
  let x_680 : vec4<f32> = u_xlat7;
  let x_681 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_680 + x_681);
  let x_684 : f32 = u_xlat0.z;
  u_xlat8.x = x_684;
  let x_687 : f32 = u_xlat1.z;
  u_xlat8.y = x_687;
  let x_690 : f32 = u_xlat2.z;
  u_xlat8.z = x_690;
  let x_693 : f32 = u_xlat3.y;
  u_xlat8.w = x_693;
  let x_695 : vec4<f32> = u_xlat9;
  let x_698 : f32 = x_59.x_Smoothness0;
  let x_700 : f32 = x_59.x_Smoothness1;
  let x_702 : f32 = x_59.x_Smoothness2;
  let x_704 : f32 = x_59.x_Smoothness3;
  let x_707 : vec4<f32> = u_xlat8;
  u_xlat8 = ((-(x_695) * vec4<f32>(x_698, x_700, x_702, x_704)) + x_707);
  let x_711 : f32 = x_59.x_LayerHasMask0;
  let x_714 : f32 = x_59.x_LayerHasMask1;
  let x_717 : f32 = x_59.x_LayerHasMask2;
  let x_720 : f32 = x_59.x_LayerHasMask3;
  let x_722 : vec4<f32> = u_xlat8;
  let x_724 : vec4<f32> = u_xlat10;
  u_xlat8 = ((vec4<f32>(x_711, x_714, x_717, x_720) * x_722) + x_724);
  let x_727 : vec4<f32> = u_xlat4;
  let x_728 : vec4<f32> = u_xlat8;
  u_xlat50 = dot(x_727, x_728);
  let x_731 : f32 = u_xlat0.x;
  u_xlat8.x = x_731;
  let x_734 : f32 = u_xlat1.x;
  u_xlat8.y = x_734;
  let x_737 : f32 = u_xlat2.x;
  u_xlat8.z = x_737;
  let x_740 : f32 = u_xlat3.x;
  u_xlat8.w = x_740;
  let x_742 : vec4<f32> = u_xlat8;
  let x_745 : f32 = x_59.x_Metallic0;
  let x_748 : f32 = x_59.x_Metallic1;
  let x_751 : f32 = x_59.x_Metallic2;
  let x_754 : f32 = x_59.x_Metallic3;
  u_xlat8 = (x_742 + -(vec4<f32>(x_745, x_748, x_751, x_754)));
  let x_759 : f32 = x_59.x_LayerHasMask0;
  let x_761 : f32 = x_59.x_LayerHasMask1;
  let x_763 : f32 = x_59.x_LayerHasMask2;
  let x_765 : f32 = x_59.x_LayerHasMask3;
  let x_767 : vec4<f32> = u_xlat8;
  let x_770 : f32 = x_59.x_Metallic0;
  let x_772 : f32 = x_59.x_Metallic1;
  let x_774 : f32 = x_59.x_Metallic2;
  let x_776 : f32 = x_59.x_Metallic3;
  u_xlat8 = ((vec4<f32>(x_759, x_761, x_763, x_765) * x_767) + vec4<f32>(x_770, x_772, x_774, x_776));
  let x_779 : vec4<f32> = u_xlat4;
  let x_780 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_779, x_780);
  let x_784 : f32 = u_xlat0.y;
  u_xlat3.x = x_784;
  let x_787 : f32 = u_xlat1.y;
  u_xlat3.y = x_787;
  let x_790 : f32 = u_xlat2.y;
  u_xlat3.z = x_790;
  let x_792 : vec4<f32> = u_xlat7;
  let x_794 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_792) + x_794);
  let x_797 : f32 = x_59.x_LayerHasMask0;
  let x_799 : f32 = x_59.x_LayerHasMask1;
  let x_801 : f32 = x_59.x_LayerHasMask2;
  let x_803 : f32 = x_59.x_LayerHasMask3;
  let x_805 : vec4<f32> = u_xlat1;
  let x_807 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec4<f32>(x_797, x_799, x_801, x_803) * x_805) + x_807);
  let x_810 : vec4<f32> = u_xlat4;
  let x_811 : vec4<f32> = u_xlat1;
  u_xlat25 = dot(x_810, x_811);
  let x_813 : vec4<f32> = u_xlat6;
  let x_816 : vec4<f32> = vs_TEXCOORD5;
  let x_818 : vec3<f32> = (vec3<f32>(x_813.y, x_813.y, x_813.y) * vec3<f32>(x_816.x, x_816.y, x_816.z));
  let x_819 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_818.x, x_818.y, x_818.z, x_819.w);
  let x_821 : vec4<f32> = u_xlat6;
  let x_824 : vec4<f32> = vs_TEXCOORD4;
  let x_828 : vec4<f32> = u_xlat1;
  let x_830 : vec3<f32> = ((vec3<f32>(x_821.x, x_821.x, x_821.x) * -(vec3<f32>(x_824.x, x_824.y, x_824.z))) + vec3<f32>(x_828.x, x_828.y, x_828.z));
  let x_831 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_830.x, x_830.y, x_830.z, x_831.w);
  let x_833 : vec4<f32> = u_xlat6;
  let x_836 : vec4<f32> = vs_TEXCOORD3;
  let x_839 : vec4<f32> = u_xlat1;
  let x_841 : vec3<f32> = ((vec3<f32>(x_833.z, x_833.z, x_833.z) * vec3<f32>(x_836.x, x_836.y, x_836.z)) + vec3<f32>(x_839.x, x_839.y, x_839.z));
  let x_842 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_841.x, x_841.y, x_841.z, x_842.w);
  let x_844 : vec4<f32> = u_xlat1;
  let x_846 : vec4<f32> = u_xlat1;
  u_xlat76 = dot(vec3<f32>(x_844.x, x_844.y, x_844.z), vec3<f32>(x_846.x, x_846.y, x_846.z));
  let x_849 : f32 = u_xlat76;
  u_xlat76 = inverseSqrt(x_849);
  let x_851 : f32 = u_xlat76;
  let x_853 : vec4<f32> = u_xlat1;
  let x_855 : vec3<f32> = (vec3<f32>(x_851, x_851, x_851) * vec3<f32>(x_853.x, x_853.y, x_853.z));
  let x_856 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_855.x, x_855.y, x_855.z, x_856.w);
  let x_860 : vec3<f32> = vs_TEXCOORD7;
  let x_870 : vec4<f32> = x_868.x_CascadeShadowSplitSpheres0;
  let x_873 : vec3<f32> = (x_860 + -(vec3<f32>(x_870.x, x_870.y, x_870.z)));
  let x_874 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_873.x, x_873.y, x_873.z, x_874.w);
  let x_876 : vec3<f32> = vs_TEXCOORD7;
  let x_878 : vec4<f32> = x_868.x_CascadeShadowSplitSpheres1;
  let x_881 : vec3<f32> = (x_876 + -(vec3<f32>(x_878.x, x_878.y, x_878.z)));
  let x_882 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_881.x, x_881.y, x_881.z, x_882.w);
  let x_884 : vec3<f32> = vs_TEXCOORD7;
  let x_886 : vec4<f32> = x_868.x_CascadeShadowSplitSpheres2;
  let x_889 : vec3<f32> = (x_884 + -(vec3<f32>(x_886.x, x_886.y, x_886.z)));
  let x_890 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_889.x, x_889.y, x_889.z, x_890.w);
  let x_892 : vec3<f32> = vs_TEXCOORD7;
  let x_894 : vec4<f32> = x_868.x_CascadeShadowSplitSpheres3;
  let x_897 : vec3<f32> = (x_892 + -(vec3<f32>(x_894.x, x_894.y, x_894.z)));
  let x_898 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_897.x, x_897.y, x_897.z, x_898.w);
  let x_900 : vec4<f32> = u_xlat2;
  let x_902 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_900.x, x_900.y, x_900.z), vec3<f32>(x_902.x, x_902.y, x_902.z));
  let x_906 : vec4<f32> = u_xlat3;
  let x_908 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_906.x, x_906.y, x_906.z), vec3<f32>(x_908.x, x_908.y, x_908.z));
  let x_912 : vec4<f32> = u_xlat4;
  let x_914 : vec4<f32> = u_xlat4;
  u_xlat2.z = dot(vec3<f32>(x_912.x, x_912.y, x_912.z), vec3<f32>(x_914.x, x_914.y, x_914.z));
  let x_918 : vec4<f32> = u_xlat6;
  let x_920 : vec4<f32> = u_xlat6;
  u_xlat2.w = dot(vec3<f32>(x_918.x, x_918.y, x_918.z), vec3<f32>(x_920.x, x_920.y, x_920.z));
  let x_926 : vec4<f32> = u_xlat2;
  let x_928 : vec4<f32> = x_868.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_926 < x_928);
  let x_931 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_931);
  let x_935 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_935);
  let x_939 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_939);
  let x_943 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_943);
  let x_947 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_947);
  let x_952 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_952);
  let x_956 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_956);
  let x_959 : vec4<f32> = u_xlat2;
  let x_961 : vec4<f32> = u_xlat3;
  let x_963 : vec3<f32> = (vec3<f32>(x_959.x, x_959.y, x_959.z) + vec3<f32>(x_961.y, x_961.z, x_961.w));
  let x_964 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_963.x, x_963.y, x_963.z, x_964.w);
  let x_966 : vec4<f32> = u_xlat2;
  let x_969 : vec3<f32> = max(vec3<f32>(x_966.x, x_966.y, x_966.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_970 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_970.x, x_969.x, x_969.y, x_969.z);
  let x_972 : vec4<f32> = u_xlat3;
  u_xlat2.x = dot(x_972, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_978 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_978) + 4.0f);
  let x_985 : f32 = u_xlat2.x;
  u_xlatu2 = u32(x_985);
  let x_989 : u32 = u_xlatu2;
  u_xlati2 = (bitcast<i32>(x_989) << bitcast<u32>(2i));
  let x_993 : vec3<f32> = vs_TEXCOORD7;
  let x_995 : i32 = u_xlati2;
  let x_998 : i32 = u_xlati2;
  let x_1002 : vec4<f32> = x_868.x_MainLightWorldToShadow[((x_995 + 1i) / 4i)][((x_998 + 1i) % 4i)];
  u_xlat27 = (vec3<f32>(x_993.y, x_993.y, x_993.y) * vec3<f32>(x_1002.x, x_1002.y, x_1002.z));
  let x_1005 : i32 = u_xlati2;
  let x_1007 : i32 = u_xlati2;
  let x_1010 : vec4<f32> = x_868.x_MainLightWorldToShadow[(x_1005 / 4i)][(x_1007 % 4i)];
  let x_1012 : vec3<f32> = vs_TEXCOORD7;
  let x_1015 : vec3<f32> = u_xlat27;
  u_xlat27 = ((vec3<f32>(x_1010.x, x_1010.y, x_1010.z) * vec3<f32>(x_1012.x, x_1012.x, x_1012.x)) + x_1015);
  let x_1017 : i32 = u_xlati2;
  let x_1020 : i32 = u_xlati2;
  let x_1024 : vec4<f32> = x_868.x_MainLightWorldToShadow[((x_1017 + 2i) / 4i)][((x_1020 + 2i) % 4i)];
  let x_1026 : vec3<f32> = vs_TEXCOORD7;
  let x_1029 : vec3<f32> = u_xlat27;
  u_xlat27 = ((vec3<f32>(x_1024.x, x_1024.y, x_1024.z) * vec3<f32>(x_1026.z, x_1026.z, x_1026.z)) + x_1029);
  let x_1031 : vec3<f32> = u_xlat27;
  let x_1032 : i32 = u_xlati2;
  let x_1035 : i32 = u_xlati2;
  let x_1039 : vec4<f32> = x_868.x_MainLightWorldToShadow[((x_1032 + 3i) / 4i)][((x_1035 + 3i) % 4i)];
  let x_1041 : vec3<f32> = (x_1031 + vec3<f32>(x_1039.x, x_1039.y, x_1039.z));
  let x_1042 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1041.x, x_1041.y, x_1041.z, x_1042.w);
  let x_1047 : f32 = vs_TEXCOORD7.y;
  let x_1049 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat77 = (x_1047 * x_1049);
  let x_1052 : f32 = x_29.unity_MatrixV[0i].z;
  let x_1054 : f32 = vs_TEXCOORD7.x;
  let x_1056 : f32 = u_xlat77;
  u_xlat77 = ((x_1052 * x_1054) + x_1056);
  let x_1059 : f32 = x_29.unity_MatrixV[2i].z;
  let x_1061 : f32 = vs_TEXCOORD7.z;
  let x_1063 : f32 = u_xlat77;
  u_xlat77 = ((x_1059 * x_1061) + x_1063);
  let x_1065 : f32 = u_xlat77;
  let x_1067 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat77 = (x_1065 + x_1067);
  let x_1069 : f32 = u_xlat77;
  let x_1072 : f32 = x_29.x_ProjectionParams.y;
  u_xlat77 = (-(x_1069) + -(x_1072));
  let x_1075 : f32 = u_xlat77;
  u_xlat77 = max(x_1075, 0.0f);
  let x_1077 : f32 = u_xlat77;
  let x_1079 : f32 = x_29.unity_FogParams.x;
  u_xlat77 = (x_1077 * x_1079);
  u_xlat1.w = 1.0f;
  let x_1087 : vec4<f32> = x_1085.unity_SHAr;
  let x_1088 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_1087, x_1088);
  let x_1092 : vec4<f32> = x_1085.unity_SHAg;
  let x_1093 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_1092, x_1093);
  let x_1097 : vec4<f32> = x_1085.unity_SHAb;
  let x_1098 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_1097, x_1098);
  let x_1101 : vec4<f32> = u_xlat1;
  let x_1103 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_1101.y, x_1101.z, x_1101.z, x_1101.x) * vec4<f32>(x_1103.x, x_1103.y, x_1103.z, x_1103.z));
  let x_1107 : vec4<f32> = x_1085.unity_SHBr;
  let x_1108 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_1107, x_1108);
  let x_1112 : vec4<f32> = x_1085.unity_SHBg;
  let x_1113 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_1112, x_1113);
  let x_1117 : vec4<f32> = x_1085.unity_SHBb;
  let x_1118 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_1117, x_1118);
  let x_1122 : f32 = u_xlat1.y;
  let x_1124 : f32 = u_xlat1.y;
  u_xlat76 = (x_1122 * x_1124);
  let x_1127 : f32 = u_xlat1.x;
  let x_1129 : f32 = u_xlat1.x;
  let x_1131 : f32 = u_xlat76;
  u_xlat76 = ((x_1127 * x_1129) + -(x_1131));
  let x_1136 : vec4<f32> = x_1085.unity_SHC;
  let x_1138 : f32 = u_xlat76;
  let x_1141 : vec4<f32> = u_xlat6;
  let x_1143 : vec3<f32> = ((vec3<f32>(x_1136.x, x_1136.y, x_1136.z) * vec3<f32>(x_1138, x_1138, x_1138)) + vec3<f32>(x_1141.x, x_1141.y, x_1141.z));
  let x_1144 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1143.x, x_1143.y, x_1143.z, x_1144.w);
  let x_1146 : vec4<f32> = u_xlat3;
  let x_1148 : vec4<f32> = u_xlat4;
  let x_1150 : vec3<f32> = (vec3<f32>(x_1146.x, x_1146.y, x_1146.z) + vec3<f32>(x_1148.x, x_1148.y, x_1148.z));
  let x_1151 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1150.x, x_1150.y, x_1150.z, x_1151.w);
  let x_1153 : vec4<f32> = u_xlat3;
  let x_1155 : vec3<f32> = max(vec3<f32>(x_1153.x, x_1153.y, x_1153.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1156 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1155.x, x_1155.y, x_1155.z, x_1156.w);
  let x_1159 : f32 = u_xlat0.x;
  u_xlat76 = ((-(x_1159) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_1165 : f32 = u_xlat76;
  u_xlat78 = (-(x_1165) + 1.0f);
  let x_1168 : f32 = u_xlat76;
  let x_1170 : vec4<f32> = u_xlat5;
  let x_1172 : vec3<f32> = (vec3<f32>(x_1168, x_1168, x_1168) * vec3<f32>(x_1170.x, x_1170.y, x_1170.z));
  let x_1173 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1172.x, x_1172.y, x_1172.z, x_1173.w);
  let x_1175 : vec4<f32> = u_xlat5;
  let x_1179 : vec3<f32> = (vec3<f32>(x_1175.x, x_1175.y, x_1175.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_1180 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1179.x, x_1179.y, x_1179.z, x_1180.w);
  let x_1182 : vec3<f32> = u_xlat0;
  let x_1184 : vec4<f32> = u_xlat5;
  let x_1189 : vec3<f32> = ((vec3<f32>(x_1182.x, x_1182.x, x_1182.x) * vec3<f32>(x_1184.x, x_1184.y, x_1184.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_1190 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1189.x, x_1189.y, x_1189.z, x_1190.w);
  let x_1192 : f32 = u_xlat50;
  u_xlat0.x = (-(x_1192) + 1.0f);
  let x_1197 : f32 = u_xlat0.x;
  let x_1199 : f32 = u_xlat0.x;
  u_xlat76 = (x_1197 * x_1199);
  let x_1201 : f32 = u_xlat76;
  u_xlat76 = max(x_1201, 0.0078125f);
  let x_1205 : f32 = u_xlat76;
  let x_1206 : f32 = u_xlat76;
  u_xlat79 = (x_1205 * x_1206);
  let x_1208 : f32 = u_xlat50;
  let x_1209 : f32 = u_xlat78;
  u_xlat50 = (x_1208 + x_1209);
  let x_1211 : f32 = u_xlat50;
  u_xlat50 = clamp(x_1211, 0.0f, 1.0f);
  let x_1213 : f32 = u_xlat76;
  u_xlat78 = ((x_1213 * 4.0f) + 2.0f);
  let x_1216 : f32 = u_xlat25;
  u_xlat25 = min(x_1216, 1.0f);
  let x_1220 : f32 = x_868.x_MainLightShadowParams.y;
  u_xlatb80 = (0.0f < x_1220);
  let x_1222 : bool = u_xlatb80;
  if (x_1222) {
    let x_1226 : f32 = x_868.x_MainLightShadowParams.y;
    u_xlatb80 = (x_1226 == 1.0f);
    let x_1228 : bool = u_xlatb80;
    if (x_1228) {
      let x_1231 : vec4<f32> = u_xlat2;
      let x_1234 : vec4<f32> = x_868.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_1231.x, x_1231.y, x_1231.x, x_1231.y) + x_1234);
      let x_1238 : vec4<f32> = u_xlat6;
      let x_1239 : vec2<f32> = vec2<f32>(x_1238.x, x_1238.y);
      let x_1241 : f32 = u_xlat2.z;
      txVec0 = vec3<f32>(x_1239.x, x_1239.y, x_1241);
      let x_1253 : vec3<f32> = txVec0;
      let x_1255 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1253.xy, x_1253.z);
      u_xlat7.x = x_1255;
      let x_1258 : vec4<f32> = u_xlat6;
      let x_1259 : vec2<f32> = vec2<f32>(x_1258.z, x_1258.w);
      let x_1261 : f32 = u_xlat2.z;
      txVec1 = vec3<f32>(x_1259.x, x_1259.y, x_1261);
      let x_1268 : vec3<f32> = txVec1;
      let x_1270 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1268.xy, x_1268.z);
      u_xlat7.y = x_1270;
      let x_1272 : vec4<f32> = u_xlat2;
      let x_1275 : vec4<f32> = x_868.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_1272.x, x_1272.y, x_1272.x, x_1272.y) + x_1275);
      let x_1278 : vec4<f32> = u_xlat6;
      let x_1279 : vec2<f32> = vec2<f32>(x_1278.x, x_1278.y);
      let x_1281 : f32 = u_xlat2.z;
      txVec2 = vec3<f32>(x_1279.x, x_1279.y, x_1281);
      let x_1288 : vec3<f32> = txVec2;
      let x_1290 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1288.xy, x_1288.z);
      u_xlat7.z = x_1290;
      let x_1293 : vec4<f32> = u_xlat6;
      let x_1294 : vec2<f32> = vec2<f32>(x_1293.z, x_1293.w);
      let x_1296 : f32 = u_xlat2.z;
      txVec3 = vec3<f32>(x_1294.x, x_1294.y, x_1296);
      let x_1303 : vec3<f32> = txVec3;
      let x_1305 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1303.xy, x_1303.z);
      u_xlat7.w = x_1305;
      let x_1308 : vec4<f32> = u_xlat7;
      u_xlat80 = dot(x_1308, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1315 : f32 = x_868.x_MainLightShadowParams.y;
      u_xlatb6 = (x_1315 == 2.0f);
      let x_1317 : bool = u_xlatb6;
      if (x_1317) {
        let x_1320 : vec4<f32> = u_xlat2;
        let x_1323 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1326 : vec2<f32> = ((vec2<f32>(x_1320.x, x_1320.y) * vec2<f32>(x_1323.z, x_1323.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1327 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1326.x, x_1326.y, x_1327.z, x_1327.w);
        let x_1329 : vec4<f32> = u_xlat6;
        let x_1331 : vec2<f32> = floor(vec2<f32>(x_1329.x, x_1329.y));
        let x_1332 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1331.x, x_1331.y, x_1332.z, x_1332.w);
        let x_1336 : vec4<f32> = u_xlat2;
        let x_1339 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1342 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_1336.x, x_1336.y) * vec2<f32>(x_1339.z, x_1339.w)) + -(vec2<f32>(x_1342.x, x_1342.y)));
        let x_1346 : vec2<f32> = u_xlat56;
        u_xlat7 = (vec4<f32>(x_1346.x, x_1346.x, x_1346.y, x_1346.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1350 : vec4<f32> = u_xlat7;
        let x_1352 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1350.x, x_1350.x, x_1350.z, x_1350.z) * vec4<f32>(x_1352.x, x_1352.x, x_1352.z, x_1352.z));
        let x_1355 : vec4<f32> = u_xlat8;
        let x_1359 : vec2<f32> = (vec2<f32>(x_1355.y, x_1355.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1360 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1359.x, x_1360.y, x_1359.y, x_1360.w);
        let x_1362 : vec4<f32> = u_xlat8;
        let x_1365 : vec2<f32> = u_xlat56;
        let x_1367 : vec2<f32> = ((vec2<f32>(x_1362.x, x_1362.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1365));
        let x_1368 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1367.x, x_1367.y, x_1368.z, x_1368.w);
        let x_1371 : vec2<f32> = u_xlat56;
        u_xlat58 = (-(x_1371) + vec2<f32>(1.0f, 1.0f));
        let x_1375 : vec2<f32> = u_xlat56;
        let x_1377 : vec2<f32> = min(x_1375, vec2<f32>(0.0f, 0.0f));
        let x_1378 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1377.x, x_1377.y, x_1378.z, x_1378.w);
        let x_1380 : vec4<f32> = u_xlat9;
        let x_1383 : vec4<f32> = u_xlat9;
        let x_1386 : vec2<f32> = u_xlat58;
        let x_1387 : vec2<f32> = ((-(vec2<f32>(x_1380.x, x_1380.y)) * vec2<f32>(x_1383.x, x_1383.y)) + x_1386);
        let x_1388 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1387.x, x_1387.y, x_1388.z, x_1388.w);
        let x_1390 : vec2<f32> = u_xlat56;
        u_xlat56 = max(x_1390, vec2<f32>(0.0f, 0.0f));
        let x_1392 : vec2<f32> = u_xlat56;
        let x_1394 : vec2<f32> = u_xlat56;
        let x_1396 : vec4<f32> = u_xlat7;
        u_xlat56 = ((-(x_1392) * x_1394) + vec2<f32>(x_1396.y, x_1396.w));
        let x_1399 : vec4<f32> = u_xlat9;
        let x_1401 : vec2<f32> = (vec2<f32>(x_1399.x, x_1399.y) + vec2<f32>(1.0f, 1.0f));
        let x_1402 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1401.x, x_1401.y, x_1402.z, x_1402.w);
        let x_1404 : vec2<f32> = u_xlat56;
        u_xlat56 = (x_1404 + vec2<f32>(1.0f, 1.0f));
        let x_1406 : vec4<f32> = u_xlat8;
        let x_1410 : vec2<f32> = (vec2<f32>(x_1406.x, x_1406.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1411 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1410.x, x_1410.y, x_1411.z, x_1411.w);
        let x_1413 : vec2<f32> = u_xlat58;
        let x_1414 : vec2<f32> = (x_1413 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1415 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1414.x, x_1414.y, x_1415.z, x_1415.w);
        let x_1417 : vec4<f32> = u_xlat9;
        let x_1419 : vec2<f32> = (vec2<f32>(x_1417.x, x_1417.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1420 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1419.x, x_1419.y, x_1420.z, x_1420.w);
        let x_1422 : vec2<f32> = u_xlat56;
        let x_1423 : vec2<f32> = (x_1422 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1424 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1423.x, x_1423.y, x_1424.z, x_1424.w);
        let x_1426 : vec4<f32> = u_xlat7;
        u_xlat56 = (vec2<f32>(x_1426.y, x_1426.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1430 : f32 = u_xlat9.x;
        u_xlat10.z = x_1430;
        let x_1433 : f32 = u_xlat56.x;
        u_xlat10.w = x_1433;
        let x_1436 : f32 = u_xlat11.x;
        u_xlat8.z = x_1436;
        let x_1439 : f32 = u_xlat7.x;
        u_xlat8.w = x_1439;
        let x_1441 : vec4<f32> = u_xlat8;
        let x_1443 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_1441.z, x_1441.w, x_1441.x, x_1441.z) + vec4<f32>(x_1443.z, x_1443.w, x_1443.x, x_1443.z));
        let x_1447 : f32 = u_xlat10.y;
        u_xlat9.z = x_1447;
        let x_1450 : f32 = u_xlat56.y;
        u_xlat9.w = x_1450;
        let x_1453 : f32 = u_xlat8.y;
        u_xlat11.z = x_1453;
        let x_1456 : f32 = u_xlat7.z;
        u_xlat11.w = x_1456;
        let x_1458 : vec4<f32> = u_xlat9;
        let x_1460 : vec4<f32> = u_xlat11;
        let x_1462 : vec3<f32> = (vec3<f32>(x_1458.z, x_1458.y, x_1458.w) + vec3<f32>(x_1460.z, x_1460.y, x_1460.w));
        let x_1463 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1462.x, x_1462.y, x_1462.z, x_1463.w);
        let x_1465 : vec4<f32> = u_xlat8;
        let x_1467 : vec4<f32> = u_xlat12;
        let x_1469 : vec3<f32> = (vec3<f32>(x_1465.x, x_1465.z, x_1465.w) / vec3<f32>(x_1467.z, x_1467.w, x_1467.y));
        let x_1470 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1469.x, x_1469.y, x_1469.z, x_1470.w);
        let x_1472 : vec4<f32> = u_xlat8;
        let x_1478 : vec3<f32> = (vec3<f32>(x_1472.x, x_1472.y, x_1472.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1479 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1478.x, x_1478.y, x_1478.z, x_1479.w);
        let x_1481 : vec4<f32> = u_xlat11;
        let x_1483 : vec4<f32> = u_xlat7;
        let x_1485 : vec3<f32> = (vec3<f32>(x_1481.z, x_1481.y, x_1481.w) / vec3<f32>(x_1483.x, x_1483.y, x_1483.z));
        let x_1486 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1485.x, x_1485.y, x_1485.z, x_1486.w);
        let x_1488 : vec4<f32> = u_xlat9;
        let x_1490 : vec3<f32> = (vec3<f32>(x_1488.x, x_1488.y, x_1488.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1491 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1490.x, x_1490.y, x_1490.z, x_1491.w);
        let x_1493 : vec4<f32> = u_xlat8;
        let x_1496 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1498 : vec3<f32> = (vec3<f32>(x_1493.y, x_1493.x, x_1493.z) * vec3<f32>(x_1496.x, x_1496.x, x_1496.x));
        let x_1499 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1498.x, x_1498.y, x_1498.z, x_1499.w);
        let x_1501 : vec4<f32> = u_xlat9;
        let x_1504 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1506 : vec3<f32> = (vec3<f32>(x_1501.x, x_1501.y, x_1501.z) * vec3<f32>(x_1504.y, x_1504.y, x_1504.y));
        let x_1507 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1506.x, x_1506.y, x_1506.z, x_1507.w);
        let x_1510 : f32 = u_xlat9.x;
        u_xlat8.w = x_1510;
        let x_1512 : vec4<f32> = u_xlat6;
        let x_1515 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1518 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1512.x, x_1512.y, x_1512.x, x_1512.y) * vec4<f32>(x_1515.x, x_1515.y, x_1515.x, x_1515.y)) + vec4<f32>(x_1518.y, x_1518.w, x_1518.x, x_1518.w));
        let x_1521 : vec4<f32> = u_xlat6;
        let x_1524 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1527 : vec4<f32> = u_xlat8;
        u_xlat56 = ((vec2<f32>(x_1521.x, x_1521.y) * vec2<f32>(x_1524.x, x_1524.y)) + vec2<f32>(x_1527.z, x_1527.w));
        let x_1531 : f32 = u_xlat8.y;
        u_xlat9.w = x_1531;
        let x_1533 : vec4<f32> = u_xlat9;
        let x_1534 : vec2<f32> = vec2<f32>(x_1533.y, x_1533.z);
        let x_1535 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1535.x, x_1534.x, x_1535.z, x_1534.y);
        let x_1537 : vec4<f32> = u_xlat6;
        let x_1540 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1543 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1537.x, x_1537.y, x_1537.x, x_1537.y) * vec4<f32>(x_1540.x, x_1540.y, x_1540.x, x_1540.y)) + vec4<f32>(x_1543.x, x_1543.y, x_1543.z, x_1543.y));
        let x_1546 : vec4<f32> = u_xlat6;
        let x_1549 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1552 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1546.x, x_1546.y, x_1546.x, x_1546.y) * vec4<f32>(x_1549.x, x_1549.y, x_1549.x, x_1549.y)) + vec4<f32>(x_1552.w, x_1552.y, x_1552.w, x_1552.z));
        let x_1555 : vec4<f32> = u_xlat6;
        let x_1558 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1561 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1555.x, x_1555.y, x_1555.x, x_1555.y) * vec4<f32>(x_1558.x, x_1558.y, x_1558.x, x_1558.y)) + vec4<f32>(x_1561.x, x_1561.w, x_1561.z, x_1561.w));
        let x_1564 : vec4<f32> = u_xlat7;
        let x_1566 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_1564.x, x_1564.x, x_1564.x, x_1564.y) * vec4<f32>(x_1566.z, x_1566.w, x_1566.y, x_1566.z));
        let x_1570 : vec4<f32> = u_xlat7;
        let x_1572 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_1570.y, x_1570.y, x_1570.z, x_1570.z) * x_1572);
        let x_1575 : f32 = u_xlat7.z;
        let x_1577 : f32 = u_xlat12.y;
        u_xlat6.x = (x_1575 * x_1577);
        let x_1581 : vec4<f32> = u_xlat10;
        let x_1582 : vec2<f32> = vec2<f32>(x_1581.x, x_1581.y);
        let x_1584 : f32 = u_xlat2.z;
        txVec4 = vec3<f32>(x_1582.x, x_1582.y, x_1584);
        let x_1592 : vec3<f32> = txVec4;
        let x_1594 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1592.xy, x_1592.z);
        u_xlat31 = x_1594;
        let x_1596 : vec4<f32> = u_xlat10;
        let x_1597 : vec2<f32> = vec2<f32>(x_1596.z, x_1596.w);
        let x_1599 : f32 = u_xlat2.z;
        txVec5 = vec3<f32>(x_1597.x, x_1597.y, x_1599);
        let x_1606 : vec3<f32> = txVec5;
        let x_1608 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1606.xy, x_1606.z);
        u_xlat7.x = x_1608;
        let x_1611 : f32 = u_xlat7.x;
        let x_1613 : f32 = u_xlat13.y;
        u_xlat7.x = (x_1611 * x_1613);
        let x_1617 : f32 = u_xlat13.x;
        let x_1618 : f32 = u_xlat31;
        let x_1621 : f32 = u_xlat7.x;
        u_xlat31 = ((x_1617 * x_1618) + x_1621);
        let x_1624 : vec2<f32> = u_xlat56;
        let x_1626 : f32 = u_xlat2.z;
        txVec6 = vec3<f32>(x_1624.x, x_1624.y, x_1626);
        let x_1633 : vec3<f32> = txVec6;
        let x_1635 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1633.xy, x_1633.z);
        u_xlat56.x = x_1635;
        let x_1638 : f32 = u_xlat13.z;
        let x_1640 : f32 = u_xlat56.x;
        let x_1642 : f32 = u_xlat31;
        u_xlat31 = ((x_1638 * x_1640) + x_1642);
        let x_1645 : vec4<f32> = u_xlat9;
        let x_1646 : vec2<f32> = vec2<f32>(x_1645.x, x_1645.y);
        let x_1648 : f32 = u_xlat2.z;
        txVec7 = vec3<f32>(x_1646.x, x_1646.y, x_1648);
        let x_1655 : vec3<f32> = txVec7;
        let x_1657 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1655.xy, x_1655.z);
        u_xlat56.x = x_1657;
        let x_1660 : f32 = u_xlat13.w;
        let x_1662 : f32 = u_xlat56.x;
        let x_1664 : f32 = u_xlat31;
        u_xlat31 = ((x_1660 * x_1662) + x_1664);
        let x_1667 : vec4<f32> = u_xlat11;
        let x_1668 : vec2<f32> = vec2<f32>(x_1667.x, x_1667.y);
        let x_1670 : f32 = u_xlat2.z;
        txVec8 = vec3<f32>(x_1668.x, x_1668.y, x_1670);
        let x_1677 : vec3<f32> = txVec8;
        let x_1679 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1677.xy, x_1677.z);
        u_xlat56.x = x_1679;
        let x_1682 : f32 = u_xlat14.x;
        let x_1684 : f32 = u_xlat56.x;
        let x_1686 : f32 = u_xlat31;
        u_xlat31 = ((x_1682 * x_1684) + x_1686);
        let x_1689 : vec4<f32> = u_xlat11;
        let x_1690 : vec2<f32> = vec2<f32>(x_1689.z, x_1689.w);
        let x_1692 : f32 = u_xlat2.z;
        txVec9 = vec3<f32>(x_1690.x, x_1690.y, x_1692);
        let x_1699 : vec3<f32> = txVec9;
        let x_1701 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1699.xy, x_1699.z);
        u_xlat56.x = x_1701;
        let x_1704 : f32 = u_xlat14.y;
        let x_1706 : f32 = u_xlat56.x;
        let x_1708 : f32 = u_xlat31;
        u_xlat31 = ((x_1704 * x_1706) + x_1708);
        let x_1711 : vec4<f32> = u_xlat9;
        let x_1712 : vec2<f32> = vec2<f32>(x_1711.z, x_1711.w);
        let x_1714 : f32 = u_xlat2.z;
        txVec10 = vec3<f32>(x_1712.x, x_1712.y, x_1714);
        let x_1721 : vec3<f32> = txVec10;
        let x_1723 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1721.xy, x_1721.z);
        u_xlat56.x = x_1723;
        let x_1726 : f32 = u_xlat14.z;
        let x_1728 : f32 = u_xlat56.x;
        let x_1730 : f32 = u_xlat31;
        u_xlat31 = ((x_1726 * x_1728) + x_1730);
        let x_1733 : vec4<f32> = u_xlat8;
        let x_1734 : vec2<f32> = vec2<f32>(x_1733.x, x_1733.y);
        let x_1736 : f32 = u_xlat2.z;
        txVec11 = vec3<f32>(x_1734.x, x_1734.y, x_1736);
        let x_1743 : vec3<f32> = txVec11;
        let x_1745 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1743.xy, x_1743.z);
        u_xlat56.x = x_1745;
        let x_1748 : f32 = u_xlat14.w;
        let x_1750 : f32 = u_xlat56.x;
        let x_1752 : f32 = u_xlat31;
        u_xlat31 = ((x_1748 * x_1750) + x_1752);
        let x_1755 : vec4<f32> = u_xlat8;
        let x_1756 : vec2<f32> = vec2<f32>(x_1755.z, x_1755.w);
        let x_1758 : f32 = u_xlat2.z;
        txVec12 = vec3<f32>(x_1756.x, x_1756.y, x_1758);
        let x_1765 : vec3<f32> = txVec12;
        let x_1767 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1765.xy, x_1765.z);
        u_xlat56.x = x_1767;
        let x_1770 : f32 = u_xlat6.x;
        let x_1772 : f32 = u_xlat56.x;
        let x_1774 : f32 = u_xlat31;
        u_xlat80 = ((x_1770 * x_1772) + x_1774);
      } else {
        let x_1777 : vec4<f32> = u_xlat2;
        let x_1780 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1783 : vec2<f32> = ((vec2<f32>(x_1777.x, x_1777.y) * vec2<f32>(x_1780.z, x_1780.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1784 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1783.x, x_1783.y, x_1784.z, x_1784.w);
        let x_1786 : vec4<f32> = u_xlat6;
        let x_1788 : vec2<f32> = floor(vec2<f32>(x_1786.x, x_1786.y));
        let x_1789 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1788.x, x_1788.y, x_1789.z, x_1789.w);
        let x_1791 : vec4<f32> = u_xlat2;
        let x_1794 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1797 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_1791.x, x_1791.y) * vec2<f32>(x_1794.z, x_1794.w)) + -(vec2<f32>(x_1797.x, x_1797.y)));
        let x_1801 : vec2<f32> = u_xlat56;
        u_xlat7 = (vec4<f32>(x_1801.x, x_1801.x, x_1801.y, x_1801.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1804 : vec4<f32> = u_xlat7;
        let x_1806 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1804.x, x_1804.x, x_1804.z, x_1804.z) * vec4<f32>(x_1806.x, x_1806.x, x_1806.z, x_1806.z));
        let x_1809 : vec4<f32> = u_xlat8;
        let x_1813 : vec2<f32> = (vec2<f32>(x_1809.y, x_1809.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1814 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1814.x, x_1813.x, x_1814.z, x_1813.y);
        let x_1816 : vec4<f32> = u_xlat8;
        let x_1819 : vec2<f32> = u_xlat56;
        let x_1821 : vec2<f32> = ((vec2<f32>(x_1816.x, x_1816.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1819));
        let x_1822 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1821.x, x_1822.y, x_1821.y, x_1822.w);
        let x_1824 : vec2<f32> = u_xlat56;
        let x_1826 : vec2<f32> = (-(x_1824) + vec2<f32>(1.0f, 1.0f));
        let x_1827 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1826.x, x_1826.y, x_1827.z, x_1827.w);
        let x_1829 : vec2<f32> = u_xlat56;
        u_xlat58 = min(x_1829, vec2<f32>(0.0f, 0.0f));
        let x_1831 : vec2<f32> = u_xlat58;
        let x_1833 : vec2<f32> = u_xlat58;
        let x_1835 : vec4<f32> = u_xlat8;
        let x_1837 : vec2<f32> = ((-(x_1831) * x_1833) + vec2<f32>(x_1835.x, x_1835.y));
        let x_1838 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1837.x, x_1837.y, x_1838.z, x_1838.w);
        let x_1840 : vec2<f32> = u_xlat56;
        u_xlat58 = max(x_1840, vec2<f32>(0.0f, 0.0f));
        let x_1843 : vec2<f32> = u_xlat58;
        let x_1845 : vec2<f32> = u_xlat58;
        let x_1847 : vec4<f32> = u_xlat7;
        let x_1849 : vec2<f32> = ((-(x_1843) * x_1845) + vec2<f32>(x_1847.y, x_1847.w));
        let x_1850 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_1849.x, x_1850.y, x_1849.y);
        let x_1852 : vec4<f32> = u_xlat8;
        let x_1854 : vec2<f32> = (vec2<f32>(x_1852.x, x_1852.y) + vec2<f32>(2.0f, 2.0f));
        let x_1855 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1854.x, x_1854.y, x_1855.z, x_1855.w);
        let x_1857 : vec3<f32> = u_xlat32;
        let x_1859 : vec2<f32> = (vec2<f32>(x_1857.x, x_1857.z) + vec2<f32>(2.0f, 2.0f));
        let x_1860 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1860.x, x_1859.x, x_1860.z, x_1859.y);
        let x_1863 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1863 * 0.08163200318813323975f);
        let x_1867 : vec4<f32> = u_xlat7;
        let x_1870 : vec3<f32> = (vec3<f32>(x_1867.z, x_1867.x, x_1867.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1871 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1870.x, x_1870.y, x_1870.z, x_1871.w);
        let x_1873 : vec4<f32> = u_xlat8;
        let x_1876 : vec2<f32> = (vec2<f32>(x_1873.x, x_1873.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1877 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1876.x, x_1876.y, x_1877.z, x_1877.w);
        let x_1880 : f32 = u_xlat11.y;
        u_xlat10.x = x_1880;
        let x_1882 : vec2<f32> = u_xlat56;
        let x_1889 : vec2<f32> = ((vec2<f32>(x_1882.x, x_1882.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1890 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1890.x, x_1889.x, x_1890.z, x_1889.y);
        let x_1892 : vec2<f32> = u_xlat56;
        let x_1896 : vec2<f32> = ((vec2<f32>(x_1892.x, x_1892.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1897 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1896.x, x_1897.y, x_1896.y, x_1897.w);
        let x_1900 : f32 = u_xlat7.x;
        u_xlat8.y = x_1900;
        let x_1903 : f32 = u_xlat9.y;
        u_xlat8.w = x_1903;
        let x_1905 : vec4<f32> = u_xlat8;
        let x_1906 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1905 + x_1906);
        let x_1908 : vec2<f32> = u_xlat56;
        let x_1911 : vec2<f32> = ((vec2<f32>(x_1908.y, x_1908.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1912 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1912.x, x_1911.x, x_1912.z, x_1911.y);
        let x_1914 : vec2<f32> = u_xlat56;
        let x_1917 : vec2<f32> = ((vec2<f32>(x_1914.y, x_1914.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1918 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1917.x, x_1918.y, x_1917.y, x_1918.w);
        let x_1921 : f32 = u_xlat7.y;
        u_xlat9.y = x_1921;
        let x_1923 : vec4<f32> = u_xlat9;
        let x_1924 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1923 + x_1924);
        let x_1926 : vec4<f32> = u_xlat8;
        let x_1927 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1926 / x_1927);
        let x_1929 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1929 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1935 : vec4<f32> = u_xlat9;
        let x_1936 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1935 / x_1936);
        let x_1938 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1938 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1940 : vec4<f32> = u_xlat8;
        let x_1943 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1940.w, x_1940.x, x_1940.y, x_1940.z) * vec4<f32>(x_1943.x, x_1943.x, x_1943.x, x_1943.x));
        let x_1946 : vec4<f32> = u_xlat9;
        let x_1949 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1946.x, x_1946.w, x_1946.y, x_1946.z) * vec4<f32>(x_1949.y, x_1949.y, x_1949.y, x_1949.y));
        let x_1952 : vec4<f32> = u_xlat8;
        let x_1953 : vec3<f32> = vec3<f32>(x_1952.y, x_1952.z, x_1952.w);
        let x_1954 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1953.x, x_1954.y, x_1953.y, x_1953.z);
        let x_1957 : f32 = u_xlat9.x;
        u_xlat11.y = x_1957;
        let x_1959 : vec4<f32> = u_xlat6;
        let x_1962 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1965 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1959.x, x_1959.y, x_1959.x, x_1959.y) * vec4<f32>(x_1962.x, x_1962.y, x_1962.x, x_1962.y)) + vec4<f32>(x_1965.x, x_1965.y, x_1965.z, x_1965.y));
        let x_1968 : vec4<f32> = u_xlat6;
        let x_1971 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1974 : vec4<f32> = u_xlat11;
        u_xlat56 = ((vec2<f32>(x_1968.x, x_1968.y) * vec2<f32>(x_1971.x, x_1971.y)) + vec2<f32>(x_1974.w, x_1974.y));
        let x_1978 : f32 = u_xlat11.y;
        u_xlat8.y = x_1978;
        let x_1981 : f32 = u_xlat9.z;
        u_xlat11.y = x_1981;
        let x_1983 : vec4<f32> = u_xlat6;
        let x_1986 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1989 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1983.x, x_1983.y, x_1983.x, x_1983.y) * vec4<f32>(x_1986.x, x_1986.y, x_1986.x, x_1986.y)) + vec4<f32>(x_1989.x, x_1989.y, x_1989.z, x_1989.y));
        let x_1992 : vec4<f32> = u_xlat6;
        let x_1995 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1998 : vec4<f32> = u_xlat11;
        let x_2000 : vec2<f32> = ((vec2<f32>(x_1992.x, x_1992.y) * vec2<f32>(x_1995.x, x_1995.y)) + vec2<f32>(x_1998.w, x_1998.y));
        let x_2001 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_2000.x, x_2000.y, x_2001.z, x_2001.w);
        let x_2004 : f32 = u_xlat11.y;
        u_xlat8.z = x_2004;
        let x_2007 : vec4<f32> = u_xlat6;
        let x_2010 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_2013 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_2007.x, x_2007.y, x_2007.x, x_2007.y) * vec4<f32>(x_2010.x, x_2010.y, x_2010.x, x_2010.y)) + vec4<f32>(x_2013.x, x_2013.y, x_2013.x, x_2013.z));
        let x_2017 : f32 = u_xlat9.w;
        u_xlat11.y = x_2017;
        let x_2020 : vec4<f32> = u_xlat6;
        let x_2023 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_2026 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_2020.x, x_2020.y, x_2020.x, x_2020.y) * vec4<f32>(x_2023.x, x_2023.y, x_2023.x, x_2023.y)) + vec4<f32>(x_2026.x, x_2026.y, x_2026.z, x_2026.y));
        let x_2030 : vec4<f32> = u_xlat6;
        let x_2033 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_2036 : vec4<f32> = u_xlat11;
        let x_2038 : vec2<f32> = ((vec2<f32>(x_2030.x, x_2030.y) * vec2<f32>(x_2033.x, x_2033.y)) + vec2<f32>(x_2036.w, x_2036.y));
        let x_2039 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_2038.x, x_2038.y, x_2039.z);
        let x_2042 : f32 = u_xlat11.y;
        u_xlat8.w = x_2042;
        let x_2045 : vec4<f32> = u_xlat6;
        let x_2048 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_2051 : vec4<f32> = u_xlat8;
        u_xlat64 = ((vec2<f32>(x_2045.x, x_2045.y) * vec2<f32>(x_2048.x, x_2048.y)) + vec2<f32>(x_2051.x, x_2051.w));
        let x_2054 : vec4<f32> = u_xlat11;
        let x_2055 : vec3<f32> = vec3<f32>(x_2054.x, x_2054.z, x_2054.w);
        let x_2056 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2055.x, x_2056.y, x_2055.y, x_2055.z);
        let x_2058 : vec4<f32> = u_xlat6;
        let x_2061 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_2064 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_2058.x, x_2058.y, x_2058.x, x_2058.y) * vec4<f32>(x_2061.x, x_2061.y, x_2061.x, x_2061.y)) + vec4<f32>(x_2064.x, x_2064.y, x_2064.z, x_2064.y));
        let x_2068 : vec4<f32> = u_xlat6;
        let x_2071 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_2074 : vec4<f32> = u_xlat9;
        u_xlat59 = ((vec2<f32>(x_2068.x, x_2068.y) * vec2<f32>(x_2071.x, x_2071.y)) + vec2<f32>(x_2074.w, x_2074.y));
        let x_2078 : f32 = u_xlat8.x;
        u_xlat9.x = x_2078;
        let x_2080 : vec4<f32> = u_xlat6;
        let x_2083 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_2086 : vec4<f32> = u_xlat9;
        let x_2088 : vec2<f32> = ((vec2<f32>(x_2080.x, x_2080.y) * vec2<f32>(x_2083.x, x_2083.y)) + vec2<f32>(x_2086.x, x_2086.y));
        let x_2089 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_2088.x, x_2088.y, x_2089.z, x_2089.w);
        let x_2092 : vec4<f32> = u_xlat7;
        let x_2094 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_2092.x, x_2092.x, x_2092.x, x_2092.x) * x_2094);
        let x_2097 : vec4<f32> = u_xlat7;
        let x_2099 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_2097.y, x_2097.y, x_2097.y, x_2097.y) * x_2099);
        let x_2102 : vec4<f32> = u_xlat7;
        let x_2104 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_2102.z, x_2102.z, x_2102.z, x_2102.z) * x_2104);
        let x_2106 : vec4<f32> = u_xlat7;
        let x_2108 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_2106.w, x_2106.w, x_2106.w, x_2106.w) * x_2108);
        let x_2111 : vec4<f32> = u_xlat12;
        let x_2112 : vec2<f32> = vec2<f32>(x_2111.x, x_2111.y);
        let x_2114 : f32 = u_xlat2.z;
        txVec13 = vec3<f32>(x_2112.x, x_2112.y, x_2114);
        let x_2121 : vec3<f32> = txVec13;
        let x_2123 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2121.xy, x_2121.z);
        u_xlat8.x = x_2123;
        let x_2126 : vec4<f32> = u_xlat12;
        let x_2127 : vec2<f32> = vec2<f32>(x_2126.z, x_2126.w);
        let x_2129 : f32 = u_xlat2.z;
        txVec14 = vec3<f32>(x_2127.x, x_2127.y, x_2129);
        let x_2137 : vec3<f32> = txVec14;
        let x_2139 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2137.xy, x_2137.z);
        u_xlat83 = x_2139;
        let x_2140 : f32 = u_xlat83;
        let x_2142 : f32 = u_xlat17.y;
        u_xlat83 = (x_2140 * x_2142);
        let x_2145 : f32 = u_xlat17.x;
        let x_2147 : f32 = u_xlat8.x;
        let x_2149 : f32 = u_xlat83;
        u_xlat8.x = ((x_2145 * x_2147) + x_2149);
        let x_2153 : vec2<f32> = u_xlat56;
        let x_2155 : f32 = u_xlat2.z;
        txVec15 = vec3<f32>(x_2153.x, x_2153.y, x_2155);
        let x_2162 : vec3<f32> = txVec15;
        let x_2164 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2162.xy, x_2162.z);
        u_xlat56.x = x_2164;
        let x_2167 : f32 = u_xlat17.z;
        let x_2169 : f32 = u_xlat56.x;
        let x_2172 : f32 = u_xlat8.x;
        u_xlat56.x = ((x_2167 * x_2169) + x_2172);
        let x_2176 : vec4<f32> = u_xlat15;
        let x_2177 : vec2<f32> = vec2<f32>(x_2176.x, x_2176.y);
        let x_2179 : f32 = u_xlat2.z;
        txVec16 = vec3<f32>(x_2177.x, x_2177.y, x_2179);
        let x_2187 : vec3<f32> = txVec16;
        let x_2189 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2187.xy, x_2187.z);
        u_xlat81 = x_2189;
        let x_2191 : f32 = u_xlat17.w;
        let x_2192 : f32 = u_xlat81;
        let x_2195 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_2191 * x_2192) + x_2195);
        let x_2199 : vec4<f32> = u_xlat13;
        let x_2200 : vec2<f32> = vec2<f32>(x_2199.x, x_2199.y);
        let x_2202 : f32 = u_xlat2.z;
        txVec17 = vec3<f32>(x_2200.x, x_2200.y, x_2202);
        let x_2209 : vec3<f32> = txVec17;
        let x_2211 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2209.xy, x_2209.z);
        u_xlat81 = x_2211;
        let x_2213 : f32 = u_xlat18.x;
        let x_2214 : f32 = u_xlat81;
        let x_2217 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_2213 * x_2214) + x_2217);
        let x_2221 : vec4<f32> = u_xlat13;
        let x_2222 : vec2<f32> = vec2<f32>(x_2221.z, x_2221.w);
        let x_2224 : f32 = u_xlat2.z;
        txVec18 = vec3<f32>(x_2222.x, x_2222.y, x_2224);
        let x_2231 : vec3<f32> = txVec18;
        let x_2233 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2231.xy, x_2231.z);
        u_xlat81 = x_2233;
        let x_2235 : f32 = u_xlat18.y;
        let x_2236 : f32 = u_xlat81;
        let x_2239 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_2235 * x_2236) + x_2239);
        let x_2243 : vec4<f32> = u_xlat14;
        let x_2244 : vec2<f32> = vec2<f32>(x_2243.x, x_2243.y);
        let x_2246 : f32 = u_xlat2.z;
        txVec19 = vec3<f32>(x_2244.x, x_2244.y, x_2246);
        let x_2253 : vec3<f32> = txVec19;
        let x_2255 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2253.xy, x_2253.z);
        u_xlat81 = x_2255;
        let x_2257 : f32 = u_xlat18.z;
        let x_2258 : f32 = u_xlat81;
        let x_2261 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_2257 * x_2258) + x_2261);
        let x_2265 : vec4<f32> = u_xlat15;
        let x_2266 : vec2<f32> = vec2<f32>(x_2265.z, x_2265.w);
        let x_2268 : f32 = u_xlat2.z;
        txVec20 = vec3<f32>(x_2266.x, x_2266.y, x_2268);
        let x_2275 : vec3<f32> = txVec20;
        let x_2277 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2275.xy, x_2275.z);
        u_xlat81 = x_2277;
        let x_2279 : f32 = u_xlat18.w;
        let x_2280 : f32 = u_xlat81;
        let x_2283 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_2279 * x_2280) + x_2283);
        let x_2287 : vec4<f32> = u_xlat16;
        let x_2288 : vec2<f32> = vec2<f32>(x_2287.x, x_2287.y);
        let x_2290 : f32 = u_xlat2.z;
        txVec21 = vec3<f32>(x_2288.x, x_2288.y, x_2290);
        let x_2297 : vec3<f32> = txVec21;
        let x_2299 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2297.xy, x_2297.z);
        u_xlat81 = x_2299;
        let x_2301 : f32 = u_xlat19.x;
        let x_2302 : f32 = u_xlat81;
        let x_2305 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_2301 * x_2302) + x_2305);
        let x_2309 : vec4<f32> = u_xlat16;
        let x_2310 : vec2<f32> = vec2<f32>(x_2309.z, x_2309.w);
        let x_2312 : f32 = u_xlat2.z;
        txVec22 = vec3<f32>(x_2310.x, x_2310.y, x_2312);
        let x_2319 : vec3<f32> = txVec22;
        let x_2321 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2319.xy, x_2319.z);
        u_xlat81 = x_2321;
        let x_2323 : f32 = u_xlat19.y;
        let x_2324 : f32 = u_xlat81;
        let x_2327 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_2323 * x_2324) + x_2327);
        let x_2331 : vec3<f32> = u_xlat33;
        let x_2332 : vec2<f32> = vec2<f32>(x_2331.x, x_2331.y);
        let x_2334 : f32 = u_xlat2.z;
        txVec23 = vec3<f32>(x_2332.x, x_2332.y, x_2334);
        let x_2341 : vec3<f32> = txVec23;
        let x_2343 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2341.xy, x_2341.z);
        u_xlat81 = x_2343;
        let x_2345 : f32 = u_xlat19.z;
        let x_2346 : f32 = u_xlat81;
        let x_2349 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_2345 * x_2346) + x_2349);
        let x_2353 : vec2<f32> = u_xlat64;
        let x_2355 : f32 = u_xlat2.z;
        txVec24 = vec3<f32>(x_2353.x, x_2353.y, x_2355);
        let x_2362 : vec3<f32> = txVec24;
        let x_2364 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2362.xy, x_2362.z);
        u_xlat81 = x_2364;
        let x_2366 : f32 = u_xlat19.w;
        let x_2367 : f32 = u_xlat81;
        let x_2370 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_2366 * x_2367) + x_2370);
        let x_2374 : vec4<f32> = u_xlat11;
        let x_2375 : vec2<f32> = vec2<f32>(x_2374.x, x_2374.y);
        let x_2377 : f32 = u_xlat2.z;
        txVec25 = vec3<f32>(x_2375.x, x_2375.y, x_2377);
        let x_2384 : vec3<f32> = txVec25;
        let x_2386 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2384.xy, x_2384.z);
        u_xlat81 = x_2386;
        let x_2388 : f32 = u_xlat7.x;
        let x_2389 : f32 = u_xlat81;
        let x_2392 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_2388 * x_2389) + x_2392);
        let x_2396 : vec4<f32> = u_xlat11;
        let x_2397 : vec2<f32> = vec2<f32>(x_2396.z, x_2396.w);
        let x_2399 : f32 = u_xlat2.z;
        txVec26 = vec3<f32>(x_2397.x, x_2397.y, x_2399);
        let x_2406 : vec3<f32> = txVec26;
        let x_2408 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2406.xy, x_2406.z);
        u_xlat81 = x_2408;
        let x_2410 : f32 = u_xlat7.y;
        let x_2411 : f32 = u_xlat81;
        let x_2414 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_2410 * x_2411) + x_2414);
        let x_2418 : vec2<f32> = u_xlat59;
        let x_2420 : f32 = u_xlat2.z;
        txVec27 = vec3<f32>(x_2418.x, x_2418.y, x_2420);
        let x_2427 : vec3<f32> = txVec27;
        let x_2429 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2427.xy, x_2427.z);
        u_xlat81 = x_2429;
        let x_2431 : f32 = u_xlat7.z;
        let x_2432 : f32 = u_xlat81;
        let x_2435 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_2431 * x_2432) + x_2435);
        let x_2439 : vec4<f32> = u_xlat6;
        let x_2440 : vec2<f32> = vec2<f32>(x_2439.x, x_2439.y);
        let x_2442 : f32 = u_xlat2.z;
        txVec28 = vec3<f32>(x_2440.x, x_2440.y, x_2442);
        let x_2449 : vec3<f32> = txVec28;
        let x_2451 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2449.xy, x_2449.z);
        u_xlat6.x = x_2451;
        let x_2454 : f32 = u_xlat7.w;
        let x_2456 : f32 = u_xlat6.x;
        let x_2459 : f32 = u_xlat56.x;
        u_xlat80 = ((x_2454 * x_2456) + x_2459);
      }
    }
  } else {
    let x_2463 : vec4<f32> = u_xlat2;
    let x_2464 : vec2<f32> = vec2<f32>(x_2463.x, x_2463.y);
    let x_2466 : f32 = u_xlat2.z;
    txVec29 = vec3<f32>(x_2464.x, x_2464.y, x_2466);
    let x_2473 : vec3<f32> = txVec29;
    let x_2475 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2473.xy, x_2473.z);
    u_xlat80 = x_2475;
  }
  let x_2477 : f32 = x_868.x_MainLightShadowParams.x;
  u_xlat2.x = (-(x_2477) + 1.0f);
  let x_2481 : f32 = u_xlat80;
  let x_2483 : f32 = x_868.x_MainLightShadowParams.x;
  let x_2486 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_2481 * x_2483) + x_2486);
  let x_2491 : f32 = u_xlat2.z;
  u_xlatb27 = (0.0f >= x_2491);
  let x_2495 : f32 = u_xlat2.z;
  u_xlatb52 = (x_2495 >= 1.0f);
  let x_2497 : bool = u_xlatb52;
  let x_2498 : bool = u_xlatb27;
  u_xlatb27 = (x_2497 | x_2498);
  let x_2500 : bool = u_xlatb27;
  if (x_2500) {
    x_2502 = 1.0f;
  } else {
    let x_2507 : f32 = u_xlat2.x;
    x_2502 = x_2507;
  }
  let x_2508 : f32 = x_2502;
  u_xlat2.x = x_2508;
  let x_2510 : vec3<f32> = vs_TEXCOORD7;
  let x_2513 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_2515 : vec3<f32> = (x_2510 + -(x_2513));
  let x_2516 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2515.x, x_2515.y, x_2515.z, x_2516.w);
  let x_2518 : vec4<f32> = u_xlat6;
  let x_2520 : vec4<f32> = u_xlat6;
  u_xlat27.x = dot(vec3<f32>(x_2518.x, x_2518.y, x_2518.z), vec3<f32>(x_2520.x, x_2520.y, x_2520.z));
  let x_2526 : f32 = u_xlat27.x;
  let x_2528 : f32 = x_868.x_MainLightShadowParams.z;
  let x_2531 : f32 = x_868.x_MainLightShadowParams.w;
  u_xlat52 = ((x_2526 * x_2528) + x_2531);
  let x_2533 : f32 = u_xlat52;
  u_xlat52 = clamp(x_2533, 0.0f, 1.0f);
  let x_2536 : f32 = u_xlat2.x;
  u_xlat80 = (-(x_2536) + 1.0f);
  let x_2539 : f32 = u_xlat52;
  let x_2540 : f32 = u_xlat80;
  let x_2543 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_2539 * x_2540) + x_2543);
  let x_2547 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_2547;
  let x_2550 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_2550;
  let x_2553 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_2553;
  let x_2555 : vec4<f32> = u_xlat6;
  let x_2558 : vec4<f32> = u_xlat1;
  u_xlat52 = dot(-(vec3<f32>(x_2555.x, x_2555.y, x_2555.z)), vec3<f32>(x_2558.x, x_2558.y, x_2558.z));
  let x_2561 : f32 = u_xlat52;
  let x_2562 : f32 = u_xlat52;
  u_xlat52 = (x_2561 + x_2562);
  let x_2564 : vec4<f32> = u_xlat1;
  let x_2566 : f32 = u_xlat52;
  let x_2570 : vec4<f32> = u_xlat6;
  let x_2573 : vec3<f32> = ((vec3<f32>(x_2564.x, x_2564.y, x_2564.z) * -(vec3<f32>(x_2566, x_2566, x_2566))) + -(vec3<f32>(x_2570.x, x_2570.y, x_2570.z)));
  let x_2574 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2573.x, x_2573.y, x_2573.z, x_2574.w);
  let x_2576 : vec4<f32> = u_xlat1;
  let x_2578 : vec4<f32> = u_xlat6;
  u_xlat52 = dot(vec3<f32>(x_2576.x, x_2576.y, x_2576.z), vec3<f32>(x_2578.x, x_2578.y, x_2578.z));
  let x_2581 : f32 = u_xlat52;
  u_xlat52 = clamp(x_2581, 0.0f, 1.0f);
  let x_2583 : f32 = u_xlat52;
  u_xlat52 = (-(x_2583) + 1.0f);
  let x_2586 : f32 = u_xlat52;
  let x_2587 : f32 = u_xlat52;
  u_xlat52 = (x_2586 * x_2587);
  let x_2589 : f32 = u_xlat52;
  let x_2590 : f32 = u_xlat52;
  u_xlat52 = (x_2589 * x_2590);
  let x_2593 : f32 = u_xlat0.x;
  u_xlat80 = ((-(x_2593) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2600 : f32 = u_xlat0.x;
  let x_2601 : f32 = u_xlat80;
  u_xlat0.x = (x_2600 * x_2601);
  let x_2605 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2605 * 6.0f);
  let x_2617 : vec4<f32> = u_xlat7;
  let x_2620 : f32 = u_xlat0.x;
  let x_2621 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2617.x, x_2617.y, x_2617.z), x_2620);
  u_xlat7 = x_2621;
  let x_2623 : f32 = u_xlat7.w;
  u_xlat0.x = (x_2623 + -1.0f);
  let x_2627 : f32 = x_1085.unity_SpecCube0_HDR.w;
  let x_2629 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2627 * x_2629) + 1.0f);
  let x_2634 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2634, 0.0f);
  let x_2638 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2638);
  let x_2642 : f32 = u_xlat0.x;
  let x_2644 : f32 = x_1085.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2642 * x_2644);
  let x_2648 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2648);
  let x_2652 : f32 = u_xlat0.x;
  let x_2654 : f32 = x_1085.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2652 * x_2654);
  let x_2657 : vec4<f32> = u_xlat7;
  let x_2659 : vec3<f32> = u_xlat0;
  let x_2661 : vec3<f32> = (vec3<f32>(x_2657.x, x_2657.y, x_2657.z) * vec3<f32>(x_2659.x, x_2659.x, x_2659.x));
  let x_2662 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2661.x, x_2661.y, x_2661.z, x_2662.w);
  let x_2664 : f32 = u_xlat76;
  let x_2666 : f32 = u_xlat76;
  let x_2670 : vec2<f32> = ((vec2<f32>(x_2664, x_2664) * vec2<f32>(x_2666, x_2666)) + vec2<f32>(-1.0f, 1.0f));
  let x_2671 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2670.x, x_2670.y, x_2671.z, x_2671.w);
  let x_2674 : f32 = u_xlat8.y;
  u_xlat0.x = (1.0f / x_2674);
  let x_2677 : vec4<f32> = u_xlat5;
  let x_2680 : f32 = u_xlat50;
  u_xlat33 = (-(vec3<f32>(x_2677.x, x_2677.y, x_2677.z)) + vec3<f32>(x_2680, x_2680, x_2680));
  let x_2683 : f32 = u_xlat52;
  let x_2685 : vec3<f32> = u_xlat33;
  let x_2687 : vec4<f32> = u_xlat5;
  u_xlat33 = ((vec3<f32>(x_2683, x_2683, x_2683) * x_2685) + vec3<f32>(x_2687.x, x_2687.y, x_2687.z));
  let x_2690 : vec3<f32> = u_xlat0;
  let x_2692 : vec3<f32> = u_xlat33;
  u_xlat33 = (vec3<f32>(x_2690.x, x_2690.x, x_2690.x) * x_2692);
  let x_2694 : vec4<f32> = u_xlat7;
  let x_2696 : vec3<f32> = u_xlat33;
  let x_2697 : vec3<f32> = (vec3<f32>(x_2694.x, x_2694.y, x_2694.z) * x_2696);
  let x_2698 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2697.x, x_2697.y, x_2697.z, x_2698.w);
  let x_2700 : vec4<f32> = u_xlat3;
  let x_2702 : vec4<f32> = u_xlat4;
  let x_2705 : vec4<f32> = u_xlat7;
  let x_2707 : vec3<f32> = ((vec3<f32>(x_2700.x, x_2700.y, x_2700.z) * vec3<f32>(x_2702.x, x_2702.y, x_2702.z)) + vec3<f32>(x_2705.x, x_2705.y, x_2705.z));
  let x_2708 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2707.x, x_2707.y, x_2707.z, x_2708.w);
  let x_2711 : f32 = u_xlat2.x;
  let x_2713 : f32 = x_1085.unity_LightData.z;
  u_xlat0.x = (x_2711 * x_2713);
  let x_2716 : vec4<f32> = u_xlat1;
  let x_2719 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat50 = dot(vec3<f32>(x_2716.x, x_2716.y, x_2716.z), vec3<f32>(x_2719.x, x_2719.y, x_2719.z));
  let x_2722 : f32 = u_xlat50;
  u_xlat50 = clamp(x_2722, 0.0f, 1.0f);
  let x_2724 : f32 = u_xlat50;
  let x_2726 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2724 * x_2726);
  let x_2729 : vec3<f32> = u_xlat0;
  let x_2732 : vec4<f32> = x_29.x_MainLightColor;
  let x_2734 : vec3<f32> = (vec3<f32>(x_2729.x, x_2729.x, x_2729.x) * vec3<f32>(x_2732.x, x_2732.y, x_2732.z));
  let x_2735 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2734.x, x_2734.y, x_2734.z, x_2735.w);
  let x_2737 : vec4<f32> = u_xlat6;
  let x_2740 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat33 = (vec3<f32>(x_2737.x, x_2737.y, x_2737.z) + vec3<f32>(x_2740.x, x_2740.y, x_2740.z));
  let x_2743 : vec3<f32> = u_xlat33;
  let x_2744 : vec3<f32> = u_xlat33;
  u_xlat0.x = dot(x_2743, x_2744);
  let x_2748 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2748, 1.17549435e-38f);
  let x_2753 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_2753);
  let x_2756 : vec3<f32> = u_xlat0;
  let x_2758 : vec3<f32> = u_xlat33;
  u_xlat33 = (vec3<f32>(x_2756.x, x_2756.x, x_2756.x) * x_2758);
  let x_2760 : vec4<f32> = u_xlat1;
  let x_2762 : vec3<f32> = u_xlat33;
  u_xlat0.x = dot(vec3<f32>(x_2760.x, x_2760.y, x_2760.z), x_2762);
  let x_2766 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_2766, 0.0f, 1.0f);
  let x_2770 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2772 : vec3<f32> = u_xlat33;
  u_xlat0.z = dot(vec3<f32>(x_2770.x, x_2770.y, x_2770.z), x_2772);
  let x_2776 : f32 = u_xlat0.z;
  u_xlat0.z = clamp(x_2776, 0.0f, 1.0f);
  let x_2779 : vec3<f32> = u_xlat0;
  let x_2781 : vec3<f32> = u_xlat0;
  let x_2783 : vec2<f32> = (vec2<f32>(x_2779.x, x_2779.z) * vec2<f32>(x_2781.x, x_2781.z));
  let x_2784 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2783.x, x_2784.y, x_2783.y);
  let x_2787 : f32 = u_xlat0.x;
  let x_2789 : f32 = u_xlat8.x;
  u_xlat0.x = ((x_2787 * x_2789) + 1.00001001358032226562f);
  let x_2795 : f32 = u_xlat0.x;
  let x_2797 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2795 * x_2797);
  let x_2801 : f32 = u_xlat0.z;
  u_xlat50 = max(x_2801, 0.10000000149011611938f);
  let x_2804 : f32 = u_xlat50;
  let x_2806 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2804 * x_2806);
  let x_2809 : f32 = u_xlat78;
  let x_2811 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2809 * x_2811);
  let x_2814 : f32 = u_xlat79;
  let x_2816 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2814 / x_2816);
  let x_2819 : vec4<f32> = u_xlat5;
  let x_2821 : vec3<f32> = u_xlat0;
  let x_2824 : vec4<f32> = u_xlat4;
  u_xlat33 = ((vec3<f32>(x_2819.x, x_2819.y, x_2819.z) * vec3<f32>(x_2821.x, x_2821.x, x_2821.x)) + vec3<f32>(x_2824.x, x_2824.y, x_2824.z));
  let x_2827 : vec4<f32> = u_xlat7;
  let x_2829 : vec3<f32> = u_xlat33;
  let x_2830 : vec3<f32> = (vec3<f32>(x_2827.x, x_2827.y, x_2827.z) * x_2829);
  let x_2831 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2830.x, x_2830.y, x_2830.z, x_2831.w);
  let x_2834 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_2836 : f32 = x_1085.unity_LightData.y;
  u_xlat0.x = min(x_2834, x_2836);
  let x_2841 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_2841));
  let x_2845 : f32 = u_xlat27.x;
  let x_2847 : f32 = x_868.x_AdditionalShadowFadeParams.x;
  let x_2850 : f32 = x_868.x_AdditionalShadowFadeParams.y;
  u_xlat50 = ((x_2845 * x_2847) + x_2850);
  let x_2852 : f32 = u_xlat50;
  u_xlat50 = clamp(x_2852, 0.0f, 1.0f);
  u_xlat2.x = 0.0f;
  u_xlat2.y = 0.0f;
  u_xlat2.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2864 : u32 = u_xlatu_loop_1;
    let x_2865 : u32 = u_xlatu0;
    if ((x_2864 < x_2865)) {
    } else {
      break;
    }
    let x_2868 : u32 = u_xlatu_loop_1;
    u_xlatu80 = (x_2868 >> 2u);
    let x_2871 : u32 = u_xlatu_loop_1;
    u_xlati81 = bitcast<i32>((x_2871 & 3u));
    let x_2874 : u32 = u_xlatu80;
    let x_2877 : vec4<f32> = x_1085.unity_LightIndices[bitcast<i32>(x_2874)];
    let x_2887 : i32 = u_xlati81;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2892 : vec4<u32> = indexable[x_2887];
    u_xlat80 = dot(x_2877, bitcast<vec4<f32>>(x_2892));
    let x_2896 : f32 = u_xlat80;
    u_xlati80 = i32(x_2896);
    let x_2898 : vec3<f32> = vs_TEXCOORD7;
    let x_2909 : i32 = u_xlati80;
    let x_2911 : vec4<f32> = x_2908.x_AdditionalLightsPosition[x_2909];
    let x_2914 : i32 = u_xlati80;
    let x_2916 : vec4<f32> = x_2908.x_AdditionalLightsPosition[x_2914];
    u_xlat33 = ((-(x_2898) * vec3<f32>(x_2911.w, x_2911.w, x_2911.w)) + vec3<f32>(x_2916.x, x_2916.y, x_2916.z));
    let x_2919 : vec3<f32> = u_xlat33;
    let x_2920 : vec3<f32> = u_xlat33;
    u_xlat81 = dot(x_2919, x_2920);
    let x_2922 : f32 = u_xlat81;
    u_xlat81 = max(x_2922, 0.00006103515625f);
    let x_2925 : f32 = u_xlat81;
    u_xlat82 = inverseSqrt(x_2925);
    let x_2927 : f32 = u_xlat82;
    let x_2929 : vec3<f32> = u_xlat33;
    let x_2930 : vec3<f32> = (vec3<f32>(x_2927, x_2927, x_2927) * x_2929);
    let x_2931 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2930.x, x_2930.y, x_2930.z, x_2931.w);
    let x_2934 : f32 = u_xlat81;
    u_xlat84 = (1.0f / x_2934);
    let x_2936 : f32 = u_xlat81;
    let x_2937 : i32 = u_xlati80;
    let x_2939 : f32 = x_2908.x_AdditionalLightsAttenuation[x_2937].x;
    u_xlat81 = (x_2936 * x_2939);
    let x_2941 : f32 = u_xlat81;
    let x_2943 : f32 = u_xlat81;
    u_xlat81 = ((-(x_2941) * x_2943) + 1.0f);
    let x_2946 : f32 = u_xlat81;
    u_xlat81 = max(x_2946, 0.0f);
    let x_2948 : f32 = u_xlat81;
    let x_2949 : f32 = u_xlat81;
    u_xlat81 = (x_2948 * x_2949);
    let x_2951 : f32 = u_xlat81;
    let x_2952 : f32 = u_xlat84;
    u_xlat81 = (x_2951 * x_2952);
    let x_2954 : i32 = u_xlati80;
    let x_2956 : vec4<f32> = x_2908.x_AdditionalLightsSpotDir[x_2954];
    let x_2958 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2956.x, x_2956.y, x_2956.z), vec3<f32>(x_2958.x, x_2958.y, x_2958.z));
    let x_2961 : f32 = u_xlat84;
    let x_2962 : i32 = u_xlati80;
    let x_2964 : f32 = x_2908.x_AdditionalLightsAttenuation[x_2962].z;
    let x_2966 : i32 = u_xlati80;
    let x_2968 : f32 = x_2908.x_AdditionalLightsAttenuation[x_2966].w;
    u_xlat84 = ((x_2961 * x_2964) + x_2968);
    let x_2970 : f32 = u_xlat84;
    u_xlat84 = clamp(x_2970, 0.0f, 1.0f);
    let x_2972 : f32 = u_xlat84;
    let x_2973 : f32 = u_xlat84;
    u_xlat84 = (x_2972 * x_2973);
    let x_2975 : f32 = u_xlat81;
    let x_2976 : f32 = u_xlat84;
    u_xlat81 = (x_2975 * x_2976);
    let x_2979 : i32 = u_xlati80;
    let x_2981 : f32 = x_868.x_AdditionalShadowParams[x_2979].w;
    u_xlati84 = i32(x_2981);
    let x_2986 : i32 = u_xlati84;
    u_xlatb10.x = (x_2986 >= 0i);
    let x_2990 : bool = u_xlatb10.x;
    if (x_2990) {
      let x_2994 : i32 = u_xlati80;
      let x_2996 : f32 = x_868.x_AdditionalShadowParams[x_2994].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2996, x_2996, x_2996, x_2996))));
      let x_3002 : bool = u_xlatb10.x;
      if (x_3002) {
        let x_3005 : vec4<f32> = u_xlat9;
        let x_3008 : vec4<f32> = u_xlat9;
        let x_3011 : vec4<bool> = (abs(vec4<f32>(x_3005.z, x_3005.z, x_3005.y, x_3005.z)) >= abs(vec4<f32>(x_3008.x, x_3008.y, x_3008.x, x_3008.x)));
        u_xlatb10 = vec3<bool>(x_3011.x, x_3011.y, x_3011.z);
        let x_3014 : bool = u_xlatb10.y;
        let x_3016 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_3014 & x_3016);
        let x_3020 : vec4<f32> = u_xlat9;
        let x_3023 : vec4<bool> = (-(vec4<f32>(x_3020.z, x_3020.y, x_3020.x, x_3020.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_3023.x, x_3023.y, x_3023.z);
        let x_3027 : bool = u_xlatb11.x;
        u_xlat35.x = select(4.0f, 5.0f, x_3027);
        let x_3032 : bool = u_xlatb11.y;
        u_xlat35.z = select(2.0f, 3.0f, x_3032);
        let x_3036 : bool = u_xlatb11.z;
        u_xlat11.x = select(0.0f, 1.0f, x_3036);
        let x_3041 : bool = u_xlatb10.z;
        if (x_3041) {
          let x_3046 : f32 = u_xlat35.z;
          x_3042 = x_3046;
        } else {
          let x_3049 : f32 = u_xlat11.x;
          x_3042 = x_3049;
        }
        let x_3050 : f32 = x_3042;
        u_xlat60 = x_3050;
        let x_3052 : bool = u_xlatb10.x;
        if (x_3052) {
          let x_3057 : f32 = u_xlat35.x;
          x_3053 = x_3057;
        } else {
          let x_3059 : f32 = u_xlat60;
          x_3053 = x_3059;
        }
        let x_3060 : f32 = x_3053;
        u_xlat10.x = x_3060;
        let x_3062 : i32 = u_xlati80;
        let x_3064 : f32 = x_868.x_AdditionalShadowParams[x_3062].w;
        u_xlat35.x = trunc(x_3064);
        let x_3068 : f32 = u_xlat10.x;
        let x_3070 : f32 = u_xlat35.x;
        u_xlat10.x = (x_3068 + x_3070);
        let x_3074 : f32 = u_xlat10.x;
        u_xlati84 = i32(x_3074);
      }
      let x_3076 : i32 = u_xlati84;
      u_xlati84 = (x_3076 << bitcast<u32>(2i));
      let x_3078 : vec3<f32> = vs_TEXCOORD7;
      let x_3080 : i32 = u_xlati84;
      let x_3083 : i32 = u_xlati84;
      let x_3087 : vec4<f32> = x_868.x_AdditionalLightsWorldToShadow[((x_3080 + 1i) / 4i)][((x_3083 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_3078.y, x_3078.y, x_3078.y, x_3078.y) * x_3087);
      let x_3089 : i32 = u_xlati84;
      let x_3091 : i32 = u_xlati84;
      let x_3094 : vec4<f32> = x_868.x_AdditionalLightsWorldToShadow[(x_3089 / 4i)][(x_3091 % 4i)];
      let x_3095 : vec3<f32> = vs_TEXCOORD7;
      let x_3098 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_3094 * vec4<f32>(x_3095.x, x_3095.x, x_3095.x, x_3095.x)) + x_3098);
      let x_3100 : i32 = u_xlati84;
      let x_3103 : i32 = u_xlati84;
      let x_3107 : vec4<f32> = x_868.x_AdditionalLightsWorldToShadow[((x_3100 + 2i) / 4i)][((x_3103 + 2i) % 4i)];
      let x_3108 : vec3<f32> = vs_TEXCOORD7;
      let x_3111 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_3107 * vec4<f32>(x_3108.z, x_3108.z, x_3108.z, x_3108.z)) + x_3111);
      let x_3113 : vec4<f32> = u_xlat10;
      let x_3114 : i32 = u_xlati84;
      let x_3117 : i32 = u_xlati84;
      let x_3121 : vec4<f32> = x_868.x_AdditionalLightsWorldToShadow[((x_3114 + 3i) / 4i)][((x_3117 + 3i) % 4i)];
      u_xlat10 = (x_3113 + x_3121);
      let x_3123 : vec4<f32> = u_xlat10;
      let x_3125 : vec4<f32> = u_xlat10;
      let x_3127 : vec3<f32> = (vec3<f32>(x_3123.x, x_3123.y, x_3123.z) / vec3<f32>(x_3125.w, x_3125.w, x_3125.w));
      let x_3128 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_3127.x, x_3127.y, x_3127.z, x_3128.w);
      let x_3131 : i32 = u_xlati80;
      let x_3133 : f32 = x_868.x_AdditionalShadowParams[x_3131].y;
      u_xlatb84 = (0.0f < x_3133);
      let x_3135 : bool = u_xlatb84;
      if (x_3135) {
        let x_3138 : i32 = u_xlati80;
        let x_3140 : f32 = x_868.x_AdditionalShadowParams[x_3138].y;
        u_xlatb84 = (1.0f == x_3140);
        let x_3142 : bool = u_xlatb84;
        if (x_3142) {
          let x_3145 : vec4<f32> = u_xlat10;
          let x_3148 : vec4<f32> = x_868.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_3145.x, x_3145.y, x_3145.x, x_3145.y) + x_3148);
          let x_3151 : vec4<f32> = u_xlat11;
          let x_3152 : vec2<f32> = vec2<f32>(x_3151.x, x_3151.y);
          let x_3154 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_3152.x, x_3152.y, x_3154);
          let x_3162 : vec3<f32> = txVec30;
          let x_3164 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3162.xy, x_3162.z);
          u_xlat12.x = x_3164;
          let x_3167 : vec4<f32> = u_xlat11;
          let x_3168 : vec2<f32> = vec2<f32>(x_3167.z, x_3167.w);
          let x_3170 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_3168.x, x_3168.y, x_3170);
          let x_3177 : vec3<f32> = txVec31;
          let x_3179 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3177.xy, x_3177.z);
          u_xlat12.y = x_3179;
          let x_3181 : vec4<f32> = u_xlat10;
          let x_3184 : vec4<f32> = x_868.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_3181.x, x_3181.y, x_3181.x, x_3181.y) + x_3184);
          let x_3187 : vec4<f32> = u_xlat11;
          let x_3188 : vec2<f32> = vec2<f32>(x_3187.x, x_3187.y);
          let x_3190 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_3188.x, x_3188.y, x_3190);
          let x_3197 : vec3<f32> = txVec32;
          let x_3199 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3197.xy, x_3197.z);
          u_xlat12.z = x_3199;
          let x_3202 : vec4<f32> = u_xlat11;
          let x_3203 : vec2<f32> = vec2<f32>(x_3202.z, x_3202.w);
          let x_3205 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_3203.x, x_3203.y, x_3205);
          let x_3212 : vec3<f32> = txVec33;
          let x_3214 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3212.xy, x_3212.z);
          u_xlat12.w = x_3214;
          let x_3216 : vec4<f32> = u_xlat12;
          u_xlat84 = dot(x_3216, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_3220 : i32 = u_xlati80;
          let x_3222 : f32 = x_868.x_AdditionalShadowParams[x_3220].y;
          u_xlatb85 = (2.0f == x_3222);
          let x_3224 : bool = u_xlatb85;
          if (x_3224) {
            let x_3227 : vec4<f32> = u_xlat10;
            let x_3230 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3233 : vec2<f32> = ((vec2<f32>(x_3227.x, x_3227.y) * vec2<f32>(x_3230.z, x_3230.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3234 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3233.x, x_3233.y, x_3234.z, x_3234.w);
            let x_3236 : vec4<f32> = u_xlat11;
            let x_3238 : vec2<f32> = floor(vec2<f32>(x_3236.x, x_3236.y));
            let x_3239 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3238.x, x_3238.y, x_3239.z, x_3239.w);
            let x_3242 : vec4<f32> = u_xlat10;
            let x_3245 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3248 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3242.x, x_3242.y) * vec2<f32>(x_3245.z, x_3245.w)) + -(vec2<f32>(x_3248.x, x_3248.y)));
            let x_3252 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3252.x, x_3252.x, x_3252.y, x_3252.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3255 : vec4<f32> = u_xlat12;
            let x_3257 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3255.x, x_3255.x, x_3255.z, x_3255.z) * vec4<f32>(x_3257.x, x_3257.x, x_3257.z, x_3257.z));
            let x_3260 : vec4<f32> = u_xlat13;
            let x_3262 : vec2<f32> = (vec2<f32>(x_3260.y, x_3260.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_3263 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3262.x, x_3263.y, x_3262.y, x_3263.w);
            let x_3265 : vec4<f32> = u_xlat13;
            let x_3268 : vec2<f32> = u_xlat61;
            let x_3270 : vec2<f32> = ((vec2<f32>(x_3265.x, x_3265.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3268));
            let x_3271 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3270.x, x_3270.y, x_3271.z, x_3271.w);
            let x_3274 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_3274) + vec2<f32>(1.0f, 1.0f));
            let x_3277 : vec2<f32> = u_xlat61;
            let x_3278 : vec2<f32> = min(x_3277, vec2<f32>(0.0f, 0.0f));
            let x_3279 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3278.x, x_3278.y, x_3279.z, x_3279.w);
            let x_3281 : vec4<f32> = u_xlat14;
            let x_3284 : vec4<f32> = u_xlat14;
            let x_3287 : vec2<f32> = u_xlat63;
            let x_3288 : vec2<f32> = ((-(vec2<f32>(x_3281.x, x_3281.y)) * vec2<f32>(x_3284.x, x_3284.y)) + x_3287);
            let x_3289 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3288.x, x_3288.y, x_3289.z, x_3289.w);
            let x_3291 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_3291, vec2<f32>(0.0f, 0.0f));
            let x_3293 : vec2<f32> = u_xlat61;
            let x_3295 : vec2<f32> = u_xlat61;
            let x_3297 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_3293) * x_3295) + vec2<f32>(x_3297.y, x_3297.w));
            let x_3300 : vec4<f32> = u_xlat14;
            let x_3302 : vec2<f32> = (vec2<f32>(x_3300.x, x_3300.y) + vec2<f32>(1.0f, 1.0f));
            let x_3303 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3302.x, x_3302.y, x_3303.z, x_3303.w);
            let x_3305 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_3305 + vec2<f32>(1.0f, 1.0f));
            let x_3307 : vec4<f32> = u_xlat13;
            let x_3309 : vec2<f32> = (vec2<f32>(x_3307.x, x_3307.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3310 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3309.x, x_3309.y, x_3310.z, x_3310.w);
            let x_3312 : vec2<f32> = u_xlat63;
            let x_3313 : vec2<f32> = (x_3312 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3314 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3313.x, x_3313.y, x_3314.z, x_3314.w);
            let x_3316 : vec4<f32> = u_xlat14;
            let x_3318 : vec2<f32> = (vec2<f32>(x_3316.x, x_3316.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3319 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3318.x, x_3318.y, x_3319.z, x_3319.w);
            let x_3321 : vec2<f32> = u_xlat61;
            let x_3322 : vec2<f32> = (x_3321 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3323 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3322.x, x_3322.y, x_3323.z, x_3323.w);
            let x_3325 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_3325.y, x_3325.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3329 : f32 = u_xlat14.x;
            u_xlat15.z = x_3329;
            let x_3332 : f32 = u_xlat61.x;
            u_xlat15.w = x_3332;
            let x_3335 : f32 = u_xlat16.x;
            u_xlat13.z = x_3335;
            let x_3338 : f32 = u_xlat12.x;
            u_xlat13.w = x_3338;
            let x_3340 : vec4<f32> = u_xlat13;
            let x_3342 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_3340.z, x_3340.w, x_3340.x, x_3340.z) + vec4<f32>(x_3342.z, x_3342.w, x_3342.x, x_3342.z));
            let x_3346 : f32 = u_xlat15.y;
            u_xlat14.z = x_3346;
            let x_3349 : f32 = u_xlat61.y;
            u_xlat14.w = x_3349;
            let x_3352 : f32 = u_xlat13.y;
            u_xlat16.z = x_3352;
            let x_3355 : f32 = u_xlat12.z;
            u_xlat16.w = x_3355;
            let x_3357 : vec4<f32> = u_xlat14;
            let x_3359 : vec4<f32> = u_xlat16;
            let x_3361 : vec3<f32> = (vec3<f32>(x_3357.z, x_3357.y, x_3357.w) + vec3<f32>(x_3359.z, x_3359.y, x_3359.w));
            let x_3362 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3361.x, x_3361.y, x_3361.z, x_3362.w);
            let x_3364 : vec4<f32> = u_xlat13;
            let x_3366 : vec4<f32> = u_xlat17;
            let x_3368 : vec3<f32> = (vec3<f32>(x_3364.x, x_3364.z, x_3364.w) / vec3<f32>(x_3366.z, x_3366.w, x_3366.y));
            let x_3369 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3368.x, x_3368.y, x_3368.z, x_3369.w);
            let x_3371 : vec4<f32> = u_xlat13;
            let x_3373 : vec3<f32> = (vec3<f32>(x_3371.x, x_3371.y, x_3371.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3374 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3373.x, x_3373.y, x_3373.z, x_3374.w);
            let x_3376 : vec4<f32> = u_xlat16;
            let x_3378 : vec4<f32> = u_xlat12;
            let x_3380 : vec3<f32> = (vec3<f32>(x_3376.z, x_3376.y, x_3376.w) / vec3<f32>(x_3378.x, x_3378.y, x_3378.z));
            let x_3381 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3380.x, x_3380.y, x_3380.z, x_3381.w);
            let x_3383 : vec4<f32> = u_xlat14;
            let x_3385 : vec3<f32> = (vec3<f32>(x_3383.x, x_3383.y, x_3383.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3386 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3385.x, x_3385.y, x_3385.z, x_3386.w);
            let x_3388 : vec4<f32> = u_xlat13;
            let x_3391 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3393 : vec3<f32> = (vec3<f32>(x_3388.y, x_3388.x, x_3388.z) * vec3<f32>(x_3391.x, x_3391.x, x_3391.x));
            let x_3394 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3393.x, x_3393.y, x_3393.z, x_3394.w);
            let x_3396 : vec4<f32> = u_xlat14;
            let x_3399 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3401 : vec3<f32> = (vec3<f32>(x_3396.x, x_3396.y, x_3396.z) * vec3<f32>(x_3399.y, x_3399.y, x_3399.y));
            let x_3402 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3401.x, x_3401.y, x_3401.z, x_3402.w);
            let x_3405 : f32 = u_xlat14.x;
            u_xlat13.w = x_3405;
            let x_3407 : vec4<f32> = u_xlat11;
            let x_3410 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3413 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_3407.x, x_3407.y, x_3407.x, x_3407.y) * vec4<f32>(x_3410.x, x_3410.y, x_3410.x, x_3410.y)) + vec4<f32>(x_3413.y, x_3413.w, x_3413.x, x_3413.w));
            let x_3416 : vec4<f32> = u_xlat11;
            let x_3419 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3422 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_3416.x, x_3416.y) * vec2<f32>(x_3419.x, x_3419.y)) + vec2<f32>(x_3422.z, x_3422.w));
            let x_3426 : f32 = u_xlat13.y;
            u_xlat14.w = x_3426;
            let x_3428 : vec4<f32> = u_xlat14;
            let x_3429 : vec2<f32> = vec2<f32>(x_3428.y, x_3428.z);
            let x_3430 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3430.x, x_3429.x, x_3430.z, x_3429.y);
            let x_3432 : vec4<f32> = u_xlat11;
            let x_3435 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3438 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_3432.x, x_3432.y, x_3432.x, x_3432.y) * vec4<f32>(x_3435.x, x_3435.y, x_3435.x, x_3435.y)) + vec4<f32>(x_3438.x, x_3438.y, x_3438.z, x_3438.y));
            let x_3441 : vec4<f32> = u_xlat11;
            let x_3444 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3447 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3441.x, x_3441.y, x_3441.x, x_3441.y) * vec4<f32>(x_3444.x, x_3444.y, x_3444.x, x_3444.y)) + vec4<f32>(x_3447.w, x_3447.y, x_3447.w, x_3447.z));
            let x_3450 : vec4<f32> = u_xlat11;
            let x_3453 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3456 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_3450.x, x_3450.y, x_3450.x, x_3450.y) * vec4<f32>(x_3453.x, x_3453.y, x_3453.x, x_3453.y)) + vec4<f32>(x_3456.x, x_3456.w, x_3456.z, x_3456.w));
            let x_3459 : vec4<f32> = u_xlat12;
            let x_3461 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_3459.x, x_3459.x, x_3459.x, x_3459.y) * vec4<f32>(x_3461.z, x_3461.w, x_3461.y, x_3461.z));
            let x_3464 : vec4<f32> = u_xlat12;
            let x_3466 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_3464.y, x_3464.y, x_3464.z, x_3464.z) * x_3466);
            let x_3470 : f32 = u_xlat12.z;
            let x_3472 : f32 = u_xlat17.y;
            u_xlat85 = (x_3470 * x_3472);
            let x_3475 : vec4<f32> = u_xlat15;
            let x_3476 : vec2<f32> = vec2<f32>(x_3475.x, x_3475.y);
            let x_3478 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_3476.x, x_3476.y, x_3478);
            let x_3485 : vec3<f32> = txVec34;
            let x_3487 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3485.xy, x_3485.z);
            u_xlat11.x = x_3487;
            let x_3490 : vec4<f32> = u_xlat15;
            let x_3491 : vec2<f32> = vec2<f32>(x_3490.z, x_3490.w);
            let x_3493 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_3491.x, x_3491.y, x_3493);
            let x_3501 : vec3<f32> = txVec35;
            let x_3503 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3501.xy, x_3501.z);
            u_xlat36 = x_3503;
            let x_3504 : f32 = u_xlat36;
            let x_3506 : f32 = u_xlat18.y;
            u_xlat36 = (x_3504 * x_3506);
            let x_3509 : f32 = u_xlat18.x;
            let x_3511 : f32 = u_xlat11.x;
            let x_3513 : f32 = u_xlat36;
            u_xlat11.x = ((x_3509 * x_3511) + x_3513);
            let x_3517 : vec2<f32> = u_xlat61;
            let x_3519 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_3517.x, x_3517.y, x_3519);
            let x_3526 : vec3<f32> = txVec36;
            let x_3528 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3526.xy, x_3526.z);
            u_xlat36 = x_3528;
            let x_3530 : f32 = u_xlat18.z;
            let x_3531 : f32 = u_xlat36;
            let x_3534 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3530 * x_3531) + x_3534);
            let x_3538 : vec4<f32> = u_xlat14;
            let x_3539 : vec2<f32> = vec2<f32>(x_3538.x, x_3538.y);
            let x_3541 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_3539.x, x_3539.y, x_3541);
            let x_3548 : vec3<f32> = txVec37;
            let x_3550 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3548.xy, x_3548.z);
            u_xlat36 = x_3550;
            let x_3552 : f32 = u_xlat18.w;
            let x_3553 : f32 = u_xlat36;
            let x_3556 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3552 * x_3553) + x_3556);
            let x_3560 : vec4<f32> = u_xlat16;
            let x_3561 : vec2<f32> = vec2<f32>(x_3560.x, x_3560.y);
            let x_3563 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_3561.x, x_3561.y, x_3563);
            let x_3570 : vec3<f32> = txVec38;
            let x_3572 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3570.xy, x_3570.z);
            u_xlat36 = x_3572;
            let x_3574 : f32 = u_xlat19.x;
            let x_3575 : f32 = u_xlat36;
            let x_3578 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3574 * x_3575) + x_3578);
            let x_3582 : vec4<f32> = u_xlat16;
            let x_3583 : vec2<f32> = vec2<f32>(x_3582.z, x_3582.w);
            let x_3585 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_3583.x, x_3583.y, x_3585);
            let x_3592 : vec3<f32> = txVec39;
            let x_3594 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3592.xy, x_3592.z);
            u_xlat36 = x_3594;
            let x_3596 : f32 = u_xlat19.y;
            let x_3597 : f32 = u_xlat36;
            let x_3600 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3596 * x_3597) + x_3600);
            let x_3604 : vec4<f32> = u_xlat14;
            let x_3605 : vec2<f32> = vec2<f32>(x_3604.z, x_3604.w);
            let x_3607 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_3605.x, x_3605.y, x_3607);
            let x_3614 : vec3<f32> = txVec40;
            let x_3616 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3614.xy, x_3614.z);
            u_xlat36 = x_3616;
            let x_3618 : f32 = u_xlat19.z;
            let x_3619 : f32 = u_xlat36;
            let x_3622 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3618 * x_3619) + x_3622);
            let x_3626 : vec4<f32> = u_xlat13;
            let x_3627 : vec2<f32> = vec2<f32>(x_3626.x, x_3626.y);
            let x_3629 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_3627.x, x_3627.y, x_3629);
            let x_3636 : vec3<f32> = txVec41;
            let x_3638 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3636.xy, x_3636.z);
            u_xlat36 = x_3638;
            let x_3640 : f32 = u_xlat19.w;
            let x_3641 : f32 = u_xlat36;
            let x_3644 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3640 * x_3641) + x_3644);
            let x_3648 : vec4<f32> = u_xlat13;
            let x_3649 : vec2<f32> = vec2<f32>(x_3648.z, x_3648.w);
            let x_3651 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_3649.x, x_3649.y, x_3651);
            let x_3658 : vec3<f32> = txVec42;
            let x_3660 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3658.xy, x_3658.z);
            u_xlat36 = x_3660;
            let x_3661 : f32 = u_xlat85;
            let x_3662 : f32 = u_xlat36;
            let x_3665 : f32 = u_xlat11.x;
            u_xlat84 = ((x_3661 * x_3662) + x_3665);
          } else {
            let x_3668 : vec4<f32> = u_xlat10;
            let x_3671 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3674 : vec2<f32> = ((vec2<f32>(x_3668.x, x_3668.y) * vec2<f32>(x_3671.z, x_3671.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3675 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3674.x, x_3674.y, x_3675.z, x_3675.w);
            let x_3677 : vec4<f32> = u_xlat11;
            let x_3679 : vec2<f32> = floor(vec2<f32>(x_3677.x, x_3677.y));
            let x_3680 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3679.x, x_3679.y, x_3680.z, x_3680.w);
            let x_3682 : vec4<f32> = u_xlat10;
            let x_3685 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3688 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3682.x, x_3682.y) * vec2<f32>(x_3685.z, x_3685.w)) + -(vec2<f32>(x_3688.x, x_3688.y)));
            let x_3692 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3692.x, x_3692.x, x_3692.y, x_3692.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3695 : vec4<f32> = u_xlat12;
            let x_3697 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3695.x, x_3695.x, x_3695.z, x_3695.z) * vec4<f32>(x_3697.x, x_3697.x, x_3697.z, x_3697.z));
            let x_3700 : vec4<f32> = u_xlat13;
            let x_3702 : vec2<f32> = (vec2<f32>(x_3700.y, x_3700.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3703 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3703.x, x_3702.x, x_3703.z, x_3702.y);
            let x_3705 : vec4<f32> = u_xlat13;
            let x_3708 : vec2<f32> = u_xlat61;
            let x_3710 : vec2<f32> = ((vec2<f32>(x_3705.x, x_3705.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3708));
            let x_3711 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3710.x, x_3711.y, x_3710.y, x_3711.w);
            let x_3713 : vec2<f32> = u_xlat61;
            let x_3715 : vec2<f32> = (-(x_3713) + vec2<f32>(1.0f, 1.0f));
            let x_3716 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3715.x, x_3715.y, x_3716.z, x_3716.w);
            let x_3718 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_3718, vec2<f32>(0.0f, 0.0f));
            let x_3720 : vec2<f32> = u_xlat63;
            let x_3722 : vec2<f32> = u_xlat63;
            let x_3724 : vec4<f32> = u_xlat13;
            let x_3726 : vec2<f32> = ((-(x_3720) * x_3722) + vec2<f32>(x_3724.x, x_3724.y));
            let x_3727 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3726.x, x_3726.y, x_3727.z, x_3727.w);
            let x_3729 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_3729, vec2<f32>(0.0f, 0.0f));
            let x_3732 : vec2<f32> = u_xlat63;
            let x_3734 : vec2<f32> = u_xlat63;
            let x_3736 : vec4<f32> = u_xlat12;
            let x_3738 : vec2<f32> = ((-(x_3732) * x_3734) + vec2<f32>(x_3736.y, x_3736.w));
            let x_3739 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_3738.x, x_3739.y, x_3738.y);
            let x_3741 : vec4<f32> = u_xlat13;
            let x_3743 : vec2<f32> = (vec2<f32>(x_3741.x, x_3741.y) + vec2<f32>(2.0f, 2.0f));
            let x_3744 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3743.x, x_3743.y, x_3744.z, x_3744.w);
            let x_3746 : vec3<f32> = u_xlat37;
            let x_3748 : vec2<f32> = (vec2<f32>(x_3746.x, x_3746.z) + vec2<f32>(2.0f, 2.0f));
            let x_3749 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3749.x, x_3748.x, x_3749.z, x_3748.y);
            let x_3752 : f32 = u_xlat12.y;
            u_xlat15.z = (x_3752 * 0.08163200318813323975f);
            let x_3755 : vec4<f32> = u_xlat12;
            let x_3757 : vec3<f32> = (vec3<f32>(x_3755.z, x_3755.x, x_3755.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3758 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3757.x, x_3757.y, x_3757.z, x_3758.w);
            let x_3760 : vec4<f32> = u_xlat13;
            let x_3762 : vec2<f32> = (vec2<f32>(x_3760.x, x_3760.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3763 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3762.x, x_3762.y, x_3763.z, x_3763.w);
            let x_3766 : f32 = u_xlat16.y;
            u_xlat15.x = x_3766;
            let x_3768 : vec2<f32> = u_xlat61;
            let x_3771 : vec2<f32> = ((vec2<f32>(x_3768.x, x_3768.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3772 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3772.x, x_3771.x, x_3772.z, x_3771.y);
            let x_3774 : vec2<f32> = u_xlat61;
            let x_3777 : vec2<f32> = ((vec2<f32>(x_3774.x, x_3774.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3778 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3777.x, x_3778.y, x_3777.y, x_3778.w);
            let x_3781 : f32 = u_xlat12.x;
            u_xlat13.y = x_3781;
            let x_3784 : f32 = u_xlat14.y;
            u_xlat13.w = x_3784;
            let x_3786 : vec4<f32> = u_xlat13;
            let x_3787 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3786 + x_3787);
            let x_3789 : vec2<f32> = u_xlat61;
            let x_3792 : vec2<f32> = ((vec2<f32>(x_3789.y, x_3789.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3793 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3793.x, x_3792.x, x_3793.z, x_3792.y);
            let x_3795 : vec2<f32> = u_xlat61;
            let x_3798 : vec2<f32> = ((vec2<f32>(x_3795.y, x_3795.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3799 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3798.x, x_3799.y, x_3798.y, x_3799.w);
            let x_3802 : f32 = u_xlat12.y;
            u_xlat14.y = x_3802;
            let x_3804 : vec4<f32> = u_xlat14;
            let x_3805 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_3804 + x_3805);
            let x_3807 : vec4<f32> = u_xlat13;
            let x_3808 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_3807 / x_3808);
            let x_3810 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3810 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3812 : vec4<f32> = u_xlat14;
            let x_3813 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_3812 / x_3813);
            let x_3815 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3815 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3817 : vec4<f32> = u_xlat13;
            let x_3820 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3817.w, x_3817.x, x_3817.y, x_3817.z) * vec4<f32>(x_3820.x, x_3820.x, x_3820.x, x_3820.x));
            let x_3823 : vec4<f32> = u_xlat14;
            let x_3826 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3823.x, x_3823.w, x_3823.y, x_3823.z) * vec4<f32>(x_3826.y, x_3826.y, x_3826.y, x_3826.y));
            let x_3829 : vec4<f32> = u_xlat13;
            let x_3830 : vec3<f32> = vec3<f32>(x_3829.y, x_3829.z, x_3829.w);
            let x_3831 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3830.x, x_3831.y, x_3830.y, x_3830.z);
            let x_3834 : f32 = u_xlat14.x;
            u_xlat16.y = x_3834;
            let x_3836 : vec4<f32> = u_xlat11;
            let x_3839 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3842 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3836.x, x_3836.y, x_3836.x, x_3836.y) * vec4<f32>(x_3839.x, x_3839.y, x_3839.x, x_3839.y)) + vec4<f32>(x_3842.x, x_3842.y, x_3842.z, x_3842.y));
            let x_3845 : vec4<f32> = u_xlat11;
            let x_3848 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3851 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_3845.x, x_3845.y) * vec2<f32>(x_3848.x, x_3848.y)) + vec2<f32>(x_3851.w, x_3851.y));
            let x_3855 : f32 = u_xlat16.y;
            u_xlat13.y = x_3855;
            let x_3858 : f32 = u_xlat14.z;
            u_xlat16.y = x_3858;
            let x_3860 : vec4<f32> = u_xlat11;
            let x_3863 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3866 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3860.x, x_3860.y, x_3860.x, x_3860.y) * vec4<f32>(x_3863.x, x_3863.y, x_3863.x, x_3863.y)) + vec4<f32>(x_3866.x, x_3866.y, x_3866.z, x_3866.y));
            let x_3869 : vec4<f32> = u_xlat11;
            let x_3872 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3875 : vec4<f32> = u_xlat16;
            let x_3877 : vec2<f32> = ((vec2<f32>(x_3869.x, x_3869.y) * vec2<f32>(x_3872.x, x_3872.y)) + vec2<f32>(x_3875.w, x_3875.y));
            let x_3878 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3877.x, x_3877.y, x_3878.z, x_3878.w);
            let x_3881 : f32 = u_xlat16.y;
            u_xlat13.z = x_3881;
            let x_3884 : vec4<f32> = u_xlat11;
            let x_3887 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3890 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3884.x, x_3884.y, x_3884.x, x_3884.y) * vec4<f32>(x_3887.x, x_3887.y, x_3887.x, x_3887.y)) + vec4<f32>(x_3890.x, x_3890.y, x_3890.x, x_3890.z));
            let x_3894 : f32 = u_xlat14.w;
            u_xlat16.y = x_3894;
            let x_3897 : vec4<f32> = u_xlat11;
            let x_3900 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3903 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3897.x, x_3897.y, x_3897.x, x_3897.y) * vec4<f32>(x_3900.x, x_3900.y, x_3900.x, x_3900.y)) + vec4<f32>(x_3903.x, x_3903.y, x_3903.z, x_3903.y));
            let x_3907 : vec4<f32> = u_xlat11;
            let x_3910 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3913 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3907.x, x_3907.y) * vec2<f32>(x_3910.x, x_3910.y)) + vec2<f32>(x_3913.w, x_3913.y));
            let x_3917 : f32 = u_xlat16.y;
            u_xlat13.w = x_3917;
            let x_3920 : vec4<f32> = u_xlat11;
            let x_3923 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3926 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3920.x, x_3920.y) * vec2<f32>(x_3923.x, x_3923.y)) + vec2<f32>(x_3926.x, x_3926.w));
            let x_3929 : vec4<f32> = u_xlat16;
            let x_3930 : vec3<f32> = vec3<f32>(x_3929.x, x_3929.z, x_3929.w);
            let x_3931 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3930.x, x_3931.y, x_3930.y, x_3930.z);
            let x_3933 : vec4<f32> = u_xlat11;
            let x_3936 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3939 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3933.x, x_3933.y, x_3933.x, x_3933.y) * vec4<f32>(x_3936.x, x_3936.y, x_3936.x, x_3936.y)) + vec4<f32>(x_3939.x, x_3939.y, x_3939.z, x_3939.y));
            let x_3942 : vec4<f32> = u_xlat11;
            let x_3945 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3948 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3942.x, x_3942.y) * vec2<f32>(x_3945.x, x_3945.y)) + vec2<f32>(x_3948.w, x_3948.y));
            let x_3952 : f32 = u_xlat13.x;
            u_xlat14.x = x_3952;
            let x_3954 : vec4<f32> = u_xlat11;
            let x_3957 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3960 : vec4<f32> = u_xlat14;
            let x_3962 : vec2<f32> = ((vec2<f32>(x_3954.x, x_3954.y) * vec2<f32>(x_3957.x, x_3957.y)) + vec2<f32>(x_3960.x, x_3960.y));
            let x_3963 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3962.x, x_3962.y, x_3963.z, x_3963.w);
            let x_3966 : vec4<f32> = u_xlat12;
            let x_3968 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3966.x, x_3966.x, x_3966.x, x_3966.x) * x_3968);
            let x_3971 : vec4<f32> = u_xlat12;
            let x_3973 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3971.y, x_3971.y, x_3971.y, x_3971.y) * x_3973);
            let x_3976 : vec4<f32> = u_xlat12;
            let x_3978 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3976.z, x_3976.z, x_3976.z, x_3976.z) * x_3978);
            let x_3980 : vec4<f32> = u_xlat12;
            let x_3982 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3980.w, x_3980.w, x_3980.w, x_3980.w) * x_3982);
            let x_3985 : vec4<f32> = u_xlat17;
            let x_3986 : vec2<f32> = vec2<f32>(x_3985.x, x_3985.y);
            let x_3988 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3986.x, x_3986.y, x_3988);
            let x_3995 : vec3<f32> = txVec43;
            let x_3997 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3995.xy, x_3995.z);
            u_xlat85 = x_3997;
            let x_3999 : vec4<f32> = u_xlat17;
            let x_4000 : vec2<f32> = vec2<f32>(x_3999.z, x_3999.w);
            let x_4002 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_4000.x, x_4000.y, x_4002);
            let x_4009 : vec3<f32> = txVec44;
            let x_4011 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4009.xy, x_4009.z);
            u_xlat13.x = x_4011;
            let x_4014 : f32 = u_xlat13.x;
            let x_4016 : f32 = u_xlat22.y;
            u_xlat13.x = (x_4014 * x_4016);
            let x_4020 : f32 = u_xlat22.x;
            let x_4021 : f32 = u_xlat85;
            let x_4024 : f32 = u_xlat13.x;
            u_xlat85 = ((x_4020 * x_4021) + x_4024);
            let x_4027 : vec2<f32> = u_xlat61;
            let x_4029 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_4027.x, x_4027.y, x_4029);
            let x_4036 : vec3<f32> = txVec45;
            let x_4038 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4036.xy, x_4036.z);
            u_xlat61.x = x_4038;
            let x_4041 : f32 = u_xlat22.z;
            let x_4043 : f32 = u_xlat61.x;
            let x_4045 : f32 = u_xlat85;
            u_xlat85 = ((x_4041 * x_4043) + x_4045);
            let x_4048 : vec4<f32> = u_xlat20;
            let x_4049 : vec2<f32> = vec2<f32>(x_4048.x, x_4048.y);
            let x_4051 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_4049.x, x_4049.y, x_4051);
            let x_4058 : vec3<f32> = txVec46;
            let x_4060 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4058.xy, x_4058.z);
            u_xlat61.x = x_4060;
            let x_4063 : f32 = u_xlat22.w;
            let x_4065 : f32 = u_xlat61.x;
            let x_4067 : f32 = u_xlat85;
            u_xlat85 = ((x_4063 * x_4065) + x_4067);
            let x_4070 : vec4<f32> = u_xlat18;
            let x_4071 : vec2<f32> = vec2<f32>(x_4070.x, x_4070.y);
            let x_4073 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_4071.x, x_4071.y, x_4073);
            let x_4080 : vec3<f32> = txVec47;
            let x_4082 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4080.xy, x_4080.z);
            u_xlat61.x = x_4082;
            let x_4085 : f32 = u_xlat23.x;
            let x_4087 : f32 = u_xlat61.x;
            let x_4089 : f32 = u_xlat85;
            u_xlat85 = ((x_4085 * x_4087) + x_4089);
            let x_4092 : vec4<f32> = u_xlat18;
            let x_4093 : vec2<f32> = vec2<f32>(x_4092.z, x_4092.w);
            let x_4095 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_4093.x, x_4093.y, x_4095);
            let x_4102 : vec3<f32> = txVec48;
            let x_4104 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4102.xy, x_4102.z);
            u_xlat61.x = x_4104;
            let x_4107 : f32 = u_xlat23.y;
            let x_4109 : f32 = u_xlat61.x;
            let x_4111 : f32 = u_xlat85;
            u_xlat85 = ((x_4107 * x_4109) + x_4111);
            let x_4114 : vec4<f32> = u_xlat19;
            let x_4115 : vec2<f32> = vec2<f32>(x_4114.x, x_4114.y);
            let x_4117 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_4115.x, x_4115.y, x_4117);
            let x_4124 : vec3<f32> = txVec49;
            let x_4126 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4124.xy, x_4124.z);
            u_xlat61.x = x_4126;
            let x_4129 : f32 = u_xlat23.z;
            let x_4131 : f32 = u_xlat61.x;
            let x_4133 : f32 = u_xlat85;
            u_xlat85 = ((x_4129 * x_4131) + x_4133);
            let x_4136 : vec4<f32> = u_xlat20;
            let x_4137 : vec2<f32> = vec2<f32>(x_4136.z, x_4136.w);
            let x_4139 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_4137.x, x_4137.y, x_4139);
            let x_4146 : vec3<f32> = txVec50;
            let x_4148 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4146.xy, x_4146.z);
            u_xlat61.x = x_4148;
            let x_4151 : f32 = u_xlat23.w;
            let x_4153 : f32 = u_xlat61.x;
            let x_4155 : f32 = u_xlat85;
            u_xlat85 = ((x_4151 * x_4153) + x_4155);
            let x_4158 : vec4<f32> = u_xlat21;
            let x_4159 : vec2<f32> = vec2<f32>(x_4158.x, x_4158.y);
            let x_4161 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_4159.x, x_4159.y, x_4161);
            let x_4168 : vec3<f32> = txVec51;
            let x_4170 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4168.xy, x_4168.z);
            u_xlat61.x = x_4170;
            let x_4173 : f32 = u_xlat24.x;
            let x_4175 : f32 = u_xlat61.x;
            let x_4177 : f32 = u_xlat85;
            u_xlat85 = ((x_4173 * x_4175) + x_4177);
            let x_4180 : vec4<f32> = u_xlat21;
            let x_4181 : vec2<f32> = vec2<f32>(x_4180.z, x_4180.w);
            let x_4183 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_4181.x, x_4181.y, x_4183);
            let x_4190 : vec3<f32> = txVec52;
            let x_4192 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4190.xy, x_4190.z);
            u_xlat61.x = x_4192;
            let x_4195 : f32 = u_xlat24.y;
            let x_4197 : f32 = u_xlat61.x;
            let x_4199 : f32 = u_xlat85;
            u_xlat85 = ((x_4195 * x_4197) + x_4199);
            let x_4202 : vec2<f32> = u_xlat38;
            let x_4204 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_4202.x, x_4202.y, x_4204);
            let x_4211 : vec3<f32> = txVec53;
            let x_4213 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4211.xy, x_4211.z);
            u_xlat61.x = x_4213;
            let x_4216 : f32 = u_xlat24.z;
            let x_4218 : f32 = u_xlat61.x;
            let x_4220 : f32 = u_xlat85;
            u_xlat85 = ((x_4216 * x_4218) + x_4220);
            let x_4223 : vec2<f32> = u_xlat69;
            let x_4225 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_4223.x, x_4223.y, x_4225);
            let x_4232 : vec3<f32> = txVec54;
            let x_4234 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4232.xy, x_4232.z);
            u_xlat61.x = x_4234;
            let x_4237 : f32 = u_xlat24.w;
            let x_4239 : f32 = u_xlat61.x;
            let x_4241 : f32 = u_xlat85;
            u_xlat85 = ((x_4237 * x_4239) + x_4241);
            let x_4244 : vec4<f32> = u_xlat16;
            let x_4245 : vec2<f32> = vec2<f32>(x_4244.x, x_4244.y);
            let x_4247 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_4245.x, x_4245.y, x_4247);
            let x_4254 : vec3<f32> = txVec55;
            let x_4256 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4254.xy, x_4254.z);
            u_xlat61.x = x_4256;
            let x_4259 : f32 = u_xlat12.x;
            let x_4261 : f32 = u_xlat61.x;
            let x_4263 : f32 = u_xlat85;
            u_xlat85 = ((x_4259 * x_4261) + x_4263);
            let x_4266 : vec4<f32> = u_xlat16;
            let x_4267 : vec2<f32> = vec2<f32>(x_4266.z, x_4266.w);
            let x_4269 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_4267.x, x_4267.y, x_4269);
            let x_4276 : vec3<f32> = txVec56;
            let x_4278 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4276.xy, x_4276.z);
            u_xlat61.x = x_4278;
            let x_4281 : f32 = u_xlat12.y;
            let x_4283 : f32 = u_xlat61.x;
            let x_4285 : f32 = u_xlat85;
            u_xlat85 = ((x_4281 * x_4283) + x_4285);
            let x_4288 : vec2<f32> = u_xlat64;
            let x_4290 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_4288.x, x_4288.y, x_4290);
            let x_4297 : vec3<f32> = txVec57;
            let x_4299 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4297.xy, x_4297.z);
            u_xlat61.x = x_4299;
            let x_4302 : f32 = u_xlat12.z;
            let x_4304 : f32 = u_xlat61.x;
            let x_4306 : f32 = u_xlat85;
            u_xlat85 = ((x_4302 * x_4304) + x_4306);
            let x_4309 : vec4<f32> = u_xlat11;
            let x_4310 : vec2<f32> = vec2<f32>(x_4309.x, x_4309.y);
            let x_4312 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_4310.x, x_4310.y, x_4312);
            let x_4319 : vec3<f32> = txVec58;
            let x_4321 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4319.xy, x_4319.z);
            u_xlat11.x = x_4321;
            let x_4324 : f32 = u_xlat12.w;
            let x_4326 : f32 = u_xlat11.x;
            let x_4328 : f32 = u_xlat85;
            u_xlat84 = ((x_4324 * x_4326) + x_4328);
          }
        }
      } else {
        let x_4332 : vec4<f32> = u_xlat10;
        let x_4333 : vec2<f32> = vec2<f32>(x_4332.x, x_4332.y);
        let x_4335 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_4333.x, x_4333.y, x_4335);
        let x_4342 : vec3<f32> = txVec59;
        let x_4344 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4342.xy, x_4342.z);
        u_xlat84 = x_4344;
      }
      let x_4345 : i32 = u_xlati80;
      let x_4347 : f32 = x_868.x_AdditionalShadowParams[x_4345].x;
      u_xlat10.x = (1.0f + -(x_4347));
      let x_4351 : f32 = u_xlat84;
      let x_4352 : i32 = u_xlati80;
      let x_4354 : f32 = x_868.x_AdditionalShadowParams[x_4352].x;
      let x_4357 : f32 = u_xlat10.x;
      u_xlat84 = ((x_4351 * x_4354) + x_4357);
      let x_4360 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_4360);
      let x_4365 : f32 = u_xlat10.z;
      u_xlatb35 = (x_4365 >= 1.0f);
      let x_4367 : bool = u_xlatb35;
      let x_4369 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_4367 | x_4369);
      let x_4373 : bool = u_xlatb10.x;
      let x_4374 : f32 = u_xlat84;
      u_xlat84 = select(x_4374, 1.0f, x_4373);
    } else {
      u_xlat84 = 1.0f;
    }
    let x_4377 : f32 = u_xlat84;
    u_xlat10.x = (-(x_4377) + 1.0f);
    let x_4381 : f32 = u_xlat50;
    let x_4383 : f32 = u_xlat10.x;
    let x_4385 : f32 = u_xlat84;
    u_xlat84 = ((x_4381 * x_4383) + x_4385);
    let x_4387 : f32 = u_xlat81;
    let x_4388 : f32 = u_xlat84;
    u_xlat81 = (x_4387 * x_4388);
    let x_4390 : vec4<f32> = u_xlat1;
    let x_4392 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_4390.x, x_4390.y, x_4390.z), vec3<f32>(x_4392.x, x_4392.y, x_4392.z));
    let x_4395 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4395, 0.0f, 1.0f);
    let x_4397 : f32 = u_xlat81;
    let x_4398 : f32 = u_xlat84;
    u_xlat81 = (x_4397 * x_4398);
    let x_4400 : f32 = u_xlat81;
    let x_4402 : i32 = u_xlati80;
    let x_4404 : vec4<f32> = x_2908.x_AdditionalLightsColor[x_4402];
    let x_4406 : vec3<f32> = (vec3<f32>(x_4400, x_4400, x_4400) * vec3<f32>(x_4404.x, x_4404.y, x_4404.z));
    let x_4407 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_4406.x, x_4406.y, x_4406.z, x_4407.w);
    let x_4409 : vec3<f32> = u_xlat33;
    let x_4410 : f32 = u_xlat82;
    let x_4413 : vec4<f32> = u_xlat6;
    u_xlat33 = ((x_4409 * vec3<f32>(x_4410, x_4410, x_4410)) + vec3<f32>(x_4413.x, x_4413.y, x_4413.z));
    let x_4416 : vec3<f32> = u_xlat33;
    let x_4417 : vec3<f32> = u_xlat33;
    u_xlat80 = dot(x_4416, x_4417);
    let x_4419 : f32 = u_xlat80;
    u_xlat80 = max(x_4419, 1.17549435e-38f);
    let x_4421 : f32 = u_xlat80;
    u_xlat80 = inverseSqrt(x_4421);
    let x_4423 : f32 = u_xlat80;
    let x_4425 : vec3<f32> = u_xlat33;
    u_xlat33 = (vec3<f32>(x_4423, x_4423, x_4423) * x_4425);
    let x_4427 : vec4<f32> = u_xlat1;
    let x_4429 : vec3<f32> = u_xlat33;
    u_xlat80 = dot(vec3<f32>(x_4427.x, x_4427.y, x_4427.z), x_4429);
    let x_4431 : f32 = u_xlat80;
    u_xlat80 = clamp(x_4431, 0.0f, 1.0f);
    let x_4433 : vec4<f32> = u_xlat9;
    let x_4435 : vec3<f32> = u_xlat33;
    u_xlat81 = dot(vec3<f32>(x_4433.x, x_4433.y, x_4433.z), x_4435);
    let x_4437 : f32 = u_xlat81;
    u_xlat81 = clamp(x_4437, 0.0f, 1.0f);
    let x_4439 : f32 = u_xlat80;
    let x_4440 : f32 = u_xlat80;
    u_xlat80 = (x_4439 * x_4440);
    let x_4442 : f32 = u_xlat80;
    let x_4444 : f32 = u_xlat8.x;
    u_xlat80 = ((x_4442 * x_4444) + 1.00001001358032226562f);
    let x_4447 : f32 = u_xlat81;
    let x_4448 : f32 = u_xlat81;
    u_xlat81 = (x_4447 * x_4448);
    let x_4450 : f32 = u_xlat80;
    let x_4451 : f32 = u_xlat80;
    u_xlat80 = (x_4450 * x_4451);
    let x_4453 : f32 = u_xlat81;
    u_xlat81 = max(x_4453, 0.10000000149011611938f);
    let x_4455 : f32 = u_xlat80;
    let x_4456 : f32 = u_xlat81;
    u_xlat80 = (x_4455 * x_4456);
    let x_4458 : f32 = u_xlat78;
    let x_4459 : f32 = u_xlat80;
    u_xlat80 = (x_4458 * x_4459);
    let x_4461 : f32 = u_xlat79;
    let x_4462 : f32 = u_xlat80;
    u_xlat80 = (x_4461 / x_4462);
    let x_4464 : vec4<f32> = u_xlat5;
    let x_4466 : f32 = u_xlat80;
    let x_4469 : vec4<f32> = u_xlat4;
    u_xlat33 = ((vec3<f32>(x_4464.x, x_4464.y, x_4464.z) * vec3<f32>(x_4466, x_4466, x_4466)) + vec3<f32>(x_4469.x, x_4469.y, x_4469.z));
    let x_4472 : vec3<f32> = u_xlat33;
    let x_4473 : vec4<f32> = u_xlat10;
    let x_4476 : vec4<f32> = u_xlat2;
    let x_4478 : vec3<f32> = ((x_4472 * vec3<f32>(x_4473.x, x_4473.y, x_4473.z)) + vec3<f32>(x_4476.x, x_4476.y, x_4476.z));
    let x_4479 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_4478.x, x_4478.y, x_4478.z, x_4479.w);

    continuing {
      let x_4481 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4481 + bitcast<u32>(1i));
    }
  }
  let x_4483 : vec4<f32> = u_xlat3;
  let x_4485 : f32 = u_xlat25;
  let x_4488 : vec4<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_4483.x, x_4483.y, x_4483.z) * vec3<f32>(x_4485, x_4485, x_4485)) + vec3<f32>(x_4488.x, x_4488.y, x_4488.z));
  let x_4491 : vec4<f32> = u_xlat2;
  let x_4493 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4491.x, x_4491.y, x_4491.z) + x_4493);
  let x_4495 : f32 = u_xlat75;
  let x_4497 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4495, x_4495, x_4495) * x_4497);
  let x_4499 : f32 = u_xlat77;
  let x_4500 : f32 = u_xlat77;
  u_xlat75 = (x_4499 * -(x_4500));
  let x_4503 : f32 = u_xlat75;
  u_xlat75 = exp2(x_4503);
  let x_4507 : vec3<f32> = u_xlat0;
  let x_4508 : f32 = u_xlat75;
  let x_4510 : vec3<f32> = (x_4507 * vec3<f32>(x_4508, x_4508, x_4508));
  let x_4511 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4510.x, x_4510.y, x_4510.z, x_4511.w);
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


