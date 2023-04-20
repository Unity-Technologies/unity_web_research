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
  unity_OrthoParams : vec4<f32>,
  /* @offset(96) */
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

var<private> u_xlatb79 : bool;

@group(1) @binding(4) var<uniform> x_744 : LightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(9) var x_MainLightShadowmapTexture : texture_depth_2d;

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

var<private> u_xlat33 : vec2<f32>;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlatb6 : bool;

var<private> u_xlat81 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(11) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2128 : UnityPerDraw;

var<private> u_xlatu50 : u32;

var<private> u_xlatu80 : u32;

var<private> u_xlati81 : i32;

var<private> u_xlati80 : i32;

@group(1) @binding(1) var<uniform> x_2402 : AdditionalLights;

var<private> u_xlat82 : f32;

var<private> u_xlat83 : f32;

var<private> u_xlati83 : i32;

var<private> u_xlatb84 : bool;

var<private> u_xlatb10 : vec4<bool>;

var<private> u_xlat85 : f32;

var<private> u_xlat35 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlatb83 : bool;

@group(0) @binding(10) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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
  var x_573 : f32;
  var x_584 : f32;
  var x_595 : f32;
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
  var x_2540 : f32;
  var x_2550 : f32;
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
  let x_571 : bool = u_xlatb1;
  if (x_571) {
    let x_577 : f32 = u_xlat26.x;
    x_573 = x_577;
  } else {
    let x_580 : f32 = x_29.unity_MatrixV[0i].z;
    x_573 = x_580;
  }
  let x_581 : f32 = x_573;
  u_xlat2.x = x_581;
  let x_583 : bool = u_xlatb1;
  if (x_583) {
    let x_588 : f32 = u_xlat26.y;
    x_584 = x_588;
  } else {
    let x_591 : f32 = x_29.unity_MatrixV[1i].z;
    x_584 = x_591;
  }
  let x_592 : f32 = x_584;
  u_xlat2.y = x_592;
  let x_594 : bool = u_xlatb1;
  if (x_594) {
    let x_599 : f32 = u_xlat26.z;
    x_595 = x_599;
  } else {
    let x_603 : f32 = x_29.unity_MatrixV[2i].z;
    x_595 = x_603;
  }
  let x_604 : f32 = x_595;
  u_xlat2.z = x_604;
  let x_607 : vec3<f32> = vs_TEXCOORD3;
  let x_608 : vec3<f32> = vs_TEXCOORD3;
  u_xlat1.x = dot(x_607, x_608);
  let x_612 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_612);
  let x_615 : vec4<f32> = u_xlat1;
  let x_617 : vec3<f32> = vs_TEXCOORD3;
  let x_618 : vec3<f32> = (vec3<f32>(x_615.x, x_615.x, x_615.x) * x_617);
  let x_619 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_618.x, x_618.y, x_618.z, x_619.w);
  let x_626 : vec4<f32> = vs_TEXCOORD0;
  let x_629 : f32 = x_29.x_GlobalMipBias.x;
  let x_630 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_626.z, x_626.w), x_629);
  u_xlat3 = x_630;
  let x_635 : vec4<f32> = vs_TEXCOORD0;
  let x_638 : f32 = x_29.x_GlobalMipBias.x;
  let x_639 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_635.z, x_635.w), x_638);
  let x_640 : vec3<f32> = vec3<f32>(x_639.x, x_639.y, x_639.z);
  let x_641 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_640.x, x_640.y, x_640.z, x_641.w);
  let x_643 : vec4<f32> = u_xlat3;
  let x_647 : vec3<f32> = (vec3<f32>(x_643.x, x_643.y, x_643.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_648 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_647.x, x_647.y, x_647.z, x_648.w);
  let x_650 : vec4<f32> = u_xlat1;
  let x_652 : vec4<f32> = u_xlat3;
  u_xlat76 = dot(vec3<f32>(x_650.x, x_650.y, x_650.z), vec3<f32>(x_652.x, x_652.y, x_652.z));
  let x_655 : f32 = u_xlat76;
  u_xlat76 = (x_655 + 0.5f);
  let x_657 : f32 = u_xlat76;
  let x_659 : vec4<f32> = u_xlat4;
  let x_661 : vec3<f32> = (vec3<f32>(x_657, x_657, x_657) * vec3<f32>(x_659.x, x_659.y, x_659.z));
  let x_662 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_661.x, x_661.y, x_661.z, x_662.w);
  let x_665 : f32 = u_xlat3.w;
  u_xlat76 = max(x_665, 0.00009999999747378752f);
  let x_668 : vec4<f32> = u_xlat3;
  let x_670 : f32 = u_xlat76;
  let x_672 : vec3<f32> = (vec3<f32>(x_668.x, x_668.y, x_668.z) / vec3<f32>(x_670, x_670, x_670));
  let x_673 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_672.x, x_672.y, x_672.z, x_673.w);
  let x_676 : f32 = u_xlat0.x;
  u_xlat76 = ((-(x_676) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_682 : f32 = u_xlat50;
  let x_683 : f32 = u_xlat76;
  u_xlat77 = (x_682 + -(x_683));
  let x_686 : f32 = u_xlat76;
  let x_688 : vec4<f32> = u_xlat5;
  let x_690 : vec3<f32> = (vec3<f32>(x_686, x_686, x_686) * vec3<f32>(x_688.x, x_688.y, x_688.z));
  let x_691 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_690.x, x_690.y, x_690.z, x_691.w);
  let x_693 : vec4<f32> = u_xlat5;
  let x_697 : vec3<f32> = (vec3<f32>(x_693.x, x_693.y, x_693.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_698 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_697.x, x_697.y, x_697.z, x_698.w);
  let x_700 : vec3<f32> = u_xlat0;
  let x_702 : vec4<f32> = u_xlat5;
  let x_707 : vec3<f32> = ((vec3<f32>(x_700.x, x_700.x, x_700.x) * vec3<f32>(x_702.x, x_702.y, x_702.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_708 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_707.x, x_707.y, x_707.z, x_708.w);
  let x_710 : f32 = u_xlat50;
  u_xlat0.x = (-(x_710) + 1.0f);
  let x_715 : f32 = u_xlat0.x;
  let x_717 : f32 = u_xlat0.x;
  u_xlat50 = (x_715 * x_717);
  let x_719 : f32 = u_xlat50;
  u_xlat50 = max(x_719, 0.0078125f);
  let x_722 : f32 = u_xlat50;
  let x_723 : f32 = u_xlat50;
  u_xlat76 = (x_722 * x_723);
  let x_725 : f32 = u_xlat77;
  u_xlat77 = (x_725 + 1.0f);
  let x_727 : f32 = u_xlat77;
  u_xlat77 = clamp(x_727, 0.0f, 1.0f);
  let x_730 : f32 = u_xlat50;
  u_xlat78 = ((x_730 * 4.0f) + 2.0f);
  let x_734 : f32 = u_xlat25;
  u_xlat25 = min(x_734, 1.0f);
  let x_746 : f32 = x_744.x_MainLightShadowParams.y;
  u_xlatb79 = (0.0f < x_746);
  let x_748 : bool = u_xlatb79;
  if (x_748) {
    let x_752 : f32 = x_744.x_MainLightShadowParams.y;
    u_xlatb79 = (x_752 == 1.0f);
    let x_754 : bool = u_xlatb79;
    if (x_754) {
      let x_758 : vec4<f32> = vs_TEXCOORD8;
      let x_761 : vec4<f32> = x_744.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_758.x, x_758.y, x_758.x, x_758.y) + x_761);
      let x_765 : vec4<f32> = u_xlat6;
      let x_766 : vec2<f32> = vec2<f32>(x_765.x, x_765.y);
      let x_769 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_766.x, x_766.y, x_769);
      let x_781 : vec3<f32> = txVec0;
      let x_783 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_781.xy, x_781.z);
      u_xlat7.x = x_783;
      let x_786 : vec4<f32> = u_xlat6;
      let x_787 : vec2<f32> = vec2<f32>(x_786.z, x_786.w);
      let x_789 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_787.x, x_787.y, x_789);
      let x_796 : vec3<f32> = txVec1;
      let x_798 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_796.xy, x_796.z);
      u_xlat7.y = x_798;
      let x_800 : vec4<f32> = vs_TEXCOORD8;
      let x_803 : vec4<f32> = x_744.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_800.x, x_800.y, x_800.x, x_800.y) + x_803);
      let x_806 : vec4<f32> = u_xlat6;
      let x_807 : vec2<f32> = vec2<f32>(x_806.x, x_806.y);
      let x_809 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_807.x, x_807.y, x_809);
      let x_816 : vec3<f32> = txVec2;
      let x_818 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_816.xy, x_816.z);
      u_xlat7.z = x_818;
      let x_821 : vec4<f32> = u_xlat6;
      let x_822 : vec2<f32> = vec2<f32>(x_821.z, x_821.w);
      let x_824 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_822.x, x_822.y, x_824);
      let x_831 : vec3<f32> = txVec3;
      let x_833 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_831.xy, x_831.z);
      u_xlat7.w = x_833;
      let x_836 : vec4<f32> = u_xlat7;
      u_xlat79 = dot(x_836, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_843 : f32 = x_744.x_MainLightShadowParams.y;
      u_xlatb80 = (x_843 == 2.0f);
      let x_845 : bool = u_xlatb80;
      if (x_845) {
        let x_848 : vec4<f32> = vs_TEXCOORD8;
        let x_851 : vec4<f32> = x_744.x_MainLightShadowmapSize;
        let x_854 : vec2<f32> = ((vec2<f32>(x_848.x, x_848.y) * vec2<f32>(x_851.z, x_851.w)) + vec2<f32>(0.5f, 0.5f));
        let x_855 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_854.x, x_854.y, x_855.z, x_855.w);
        let x_857 : vec4<f32> = u_xlat6;
        let x_859 : vec2<f32> = floor(vec2<f32>(x_857.x, x_857.y));
        let x_860 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_859.x, x_859.y, x_860.z, x_860.w);
        let x_864 : vec4<f32> = vs_TEXCOORD8;
        let x_867 : vec4<f32> = x_744.x_MainLightShadowmapSize;
        let x_870 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_864.x, x_864.y) * vec2<f32>(x_867.z, x_867.w)) + -(vec2<f32>(x_870.x, x_870.y)));
        let x_874 : vec2<f32> = u_xlat56;
        u_xlat7 = (vec4<f32>(x_874.x, x_874.x, x_874.y, x_874.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_878 : vec4<f32> = u_xlat7;
        let x_880 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_878.x, x_878.x, x_878.z, x_878.z) * vec4<f32>(x_880.x, x_880.x, x_880.z, x_880.z));
        let x_883 : vec4<f32> = u_xlat8;
        let x_887 : vec2<f32> = (vec2<f32>(x_883.y, x_883.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_888 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_887.x, x_888.y, x_887.y, x_888.w);
        let x_890 : vec4<f32> = u_xlat8;
        let x_893 : vec2<f32> = u_xlat56;
        let x_895 : vec2<f32> = ((vec2<f32>(x_890.x, x_890.z) * vec2<f32>(0.5f, 0.5f)) + -(x_893));
        let x_896 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_895.x, x_895.y, x_896.z, x_896.w);
        let x_899 : vec2<f32> = u_xlat56;
        u_xlat58 = (-(x_899) + vec2<f32>(1.0f, 1.0f));
        let x_903 : vec2<f32> = u_xlat56;
        let x_905 : vec2<f32> = min(x_903, vec2<f32>(0.0f, 0.0f));
        let x_906 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_905.x, x_905.y, x_906.z, x_906.w);
        let x_908 : vec4<f32> = u_xlat9;
        let x_911 : vec4<f32> = u_xlat9;
        let x_914 : vec2<f32> = u_xlat58;
        let x_915 : vec2<f32> = ((-(vec2<f32>(x_908.x, x_908.y)) * vec2<f32>(x_911.x, x_911.y)) + x_914);
        let x_916 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_915.x, x_915.y, x_916.z, x_916.w);
        let x_918 : vec2<f32> = u_xlat56;
        u_xlat56 = max(x_918, vec2<f32>(0.0f, 0.0f));
        let x_920 : vec2<f32> = u_xlat56;
        let x_922 : vec2<f32> = u_xlat56;
        let x_924 : vec4<f32> = u_xlat7;
        u_xlat56 = ((-(x_920) * x_922) + vec2<f32>(x_924.y, x_924.w));
        let x_927 : vec4<f32> = u_xlat9;
        let x_929 : vec2<f32> = (vec2<f32>(x_927.x, x_927.y) + vec2<f32>(1.0f, 1.0f));
        let x_930 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_929.x, x_929.y, x_930.z, x_930.w);
        let x_932 : vec2<f32> = u_xlat56;
        u_xlat56 = (x_932 + vec2<f32>(1.0f, 1.0f));
        let x_934 : vec4<f32> = u_xlat8;
        let x_938 : vec2<f32> = (vec2<f32>(x_934.x, x_934.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_939 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_938.x, x_938.y, x_939.z, x_939.w);
        let x_941 : vec2<f32> = u_xlat58;
        let x_942 : vec2<f32> = (x_941 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_943 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_942.x, x_942.y, x_943.z, x_943.w);
        let x_945 : vec4<f32> = u_xlat9;
        let x_947 : vec2<f32> = (vec2<f32>(x_945.x, x_945.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_948 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_947.x, x_947.y, x_948.z, x_948.w);
        let x_950 : vec2<f32> = u_xlat56;
        let x_951 : vec2<f32> = (x_950 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_952 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_951.x, x_951.y, x_952.z, x_952.w);
        let x_954 : vec4<f32> = u_xlat7;
        u_xlat56 = (vec2<f32>(x_954.y, x_954.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_958 : f32 = u_xlat9.x;
        u_xlat10.z = x_958;
        let x_961 : f32 = u_xlat56.x;
        u_xlat10.w = x_961;
        let x_964 : f32 = u_xlat11.x;
        u_xlat8.z = x_964;
        let x_967 : f32 = u_xlat7.x;
        u_xlat8.w = x_967;
        let x_969 : vec4<f32> = u_xlat8;
        let x_971 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_969.z, x_969.w, x_969.x, x_969.z) + vec4<f32>(x_971.z, x_971.w, x_971.x, x_971.z));
        let x_975 : f32 = u_xlat10.y;
        u_xlat9.z = x_975;
        let x_978 : f32 = u_xlat56.y;
        u_xlat9.w = x_978;
        let x_981 : f32 = u_xlat8.y;
        u_xlat11.z = x_981;
        let x_984 : f32 = u_xlat7.z;
        u_xlat11.w = x_984;
        let x_986 : vec4<f32> = u_xlat9;
        let x_988 : vec4<f32> = u_xlat11;
        let x_990 : vec3<f32> = (vec3<f32>(x_986.z, x_986.y, x_986.w) + vec3<f32>(x_988.z, x_988.y, x_988.w));
        let x_991 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_990.x, x_990.y, x_990.z, x_991.w);
        let x_993 : vec4<f32> = u_xlat8;
        let x_995 : vec4<f32> = u_xlat12;
        let x_997 : vec3<f32> = (vec3<f32>(x_993.x, x_993.z, x_993.w) / vec3<f32>(x_995.z, x_995.w, x_995.y));
        let x_998 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_997.x, x_997.y, x_997.z, x_998.w);
        let x_1000 : vec4<f32> = u_xlat8;
        let x_1005 : vec3<f32> = (vec3<f32>(x_1000.x, x_1000.y, x_1000.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1006 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1005.x, x_1005.y, x_1005.z, x_1006.w);
        let x_1008 : vec4<f32> = u_xlat11;
        let x_1010 : vec4<f32> = u_xlat7;
        let x_1012 : vec3<f32> = (vec3<f32>(x_1008.z, x_1008.y, x_1008.w) / vec3<f32>(x_1010.x, x_1010.y, x_1010.z));
        let x_1013 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1012.x, x_1012.y, x_1012.z, x_1013.w);
        let x_1015 : vec4<f32> = u_xlat9;
        let x_1017 : vec3<f32> = (vec3<f32>(x_1015.x, x_1015.y, x_1015.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1018 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1017.x, x_1017.y, x_1017.z, x_1018.w);
        let x_1020 : vec4<f32> = u_xlat8;
        let x_1023 : vec4<f32> = x_744.x_MainLightShadowmapSize;
        let x_1025 : vec3<f32> = (vec3<f32>(x_1020.y, x_1020.x, x_1020.z) * vec3<f32>(x_1023.x, x_1023.x, x_1023.x));
        let x_1026 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1025.x, x_1025.y, x_1025.z, x_1026.w);
        let x_1028 : vec4<f32> = u_xlat9;
        let x_1031 : vec4<f32> = x_744.x_MainLightShadowmapSize;
        let x_1033 : vec3<f32> = (vec3<f32>(x_1028.x, x_1028.y, x_1028.z) * vec3<f32>(x_1031.y, x_1031.y, x_1031.y));
        let x_1034 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1033.x, x_1033.y, x_1033.z, x_1034.w);
        let x_1037 : f32 = u_xlat9.x;
        u_xlat8.w = x_1037;
        let x_1039 : vec4<f32> = u_xlat6;
        let x_1042 : vec4<f32> = x_744.x_MainLightShadowmapSize;
        let x_1045 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1039.x, x_1039.y, x_1039.x, x_1039.y) * vec4<f32>(x_1042.x, x_1042.y, x_1042.x, x_1042.y)) + vec4<f32>(x_1045.y, x_1045.w, x_1045.x, x_1045.w));
        let x_1048 : vec4<f32> = u_xlat6;
        let x_1051 : vec4<f32> = x_744.x_MainLightShadowmapSize;
        let x_1054 : vec4<f32> = u_xlat8;
        u_xlat56 = ((vec2<f32>(x_1048.x, x_1048.y) * vec2<f32>(x_1051.x, x_1051.y)) + vec2<f32>(x_1054.z, x_1054.w));
        let x_1058 : f32 = u_xlat8.y;
        u_xlat9.w = x_1058;
        let x_1060 : vec4<f32> = u_xlat9;
        let x_1061 : vec2<f32> = vec2<f32>(x_1060.y, x_1060.z);
        let x_1062 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1062.x, x_1061.x, x_1062.z, x_1061.y);
        let x_1064 : vec4<f32> = u_xlat6;
        let x_1067 : vec4<f32> = x_744.x_MainLightShadowmapSize;
        let x_1070 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1064.x, x_1064.y, x_1064.x, x_1064.y) * vec4<f32>(x_1067.x, x_1067.y, x_1067.x, x_1067.y)) + vec4<f32>(x_1070.x, x_1070.y, x_1070.z, x_1070.y));
        let x_1073 : vec4<f32> = u_xlat6;
        let x_1076 : vec4<f32> = x_744.x_MainLightShadowmapSize;
        let x_1079 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1073.x, x_1073.y, x_1073.x, x_1073.y) * vec4<f32>(x_1076.x, x_1076.y, x_1076.x, x_1076.y)) + vec4<f32>(x_1079.w, x_1079.y, x_1079.w, x_1079.z));
        let x_1082 : vec4<f32> = u_xlat6;
        let x_1085 : vec4<f32> = x_744.x_MainLightShadowmapSize;
        let x_1088 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1082.x, x_1082.y, x_1082.x, x_1082.y) * vec4<f32>(x_1085.x, x_1085.y, x_1085.x, x_1085.y)) + vec4<f32>(x_1088.x, x_1088.w, x_1088.z, x_1088.w));
        let x_1091 : vec4<f32> = u_xlat7;
        let x_1093 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_1091.x, x_1091.x, x_1091.x, x_1091.y) * vec4<f32>(x_1093.z, x_1093.w, x_1093.y, x_1093.z));
        let x_1097 : vec4<f32> = u_xlat7;
        let x_1099 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_1097.y, x_1097.y, x_1097.z, x_1097.z) * x_1099);
        let x_1103 : f32 = u_xlat7.z;
        let x_1105 : f32 = u_xlat12.y;
        u_xlat80 = (x_1103 * x_1105);
        let x_1108 : vec4<f32> = u_xlat10;
        let x_1109 : vec2<f32> = vec2<f32>(x_1108.x, x_1108.y);
        let x_1111 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_1109.x, x_1109.y, x_1111);
        let x_1118 : vec3<f32> = txVec4;
        let x_1120 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1118.xy, x_1118.z);
        u_xlat6.x = x_1120;
        let x_1123 : vec4<f32> = u_xlat10;
        let x_1124 : vec2<f32> = vec2<f32>(x_1123.z, x_1123.w);
        let x_1126 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_1124.x, x_1124.y, x_1126);
        let x_1134 : vec3<f32> = txVec5;
        let x_1136 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1134.xy, x_1134.z);
        u_xlat31 = x_1136;
        let x_1137 : f32 = u_xlat31;
        let x_1139 : f32 = u_xlat13.y;
        u_xlat31 = (x_1137 * x_1139);
        let x_1142 : f32 = u_xlat13.x;
        let x_1144 : f32 = u_xlat6.x;
        let x_1146 : f32 = u_xlat31;
        u_xlat6.x = ((x_1142 * x_1144) + x_1146);
        let x_1150 : vec2<f32> = u_xlat56;
        let x_1152 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_1150.x, x_1150.y, x_1152);
        let x_1159 : vec3<f32> = txVec6;
        let x_1161 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1159.xy, x_1159.z);
        u_xlat31 = x_1161;
        let x_1163 : f32 = u_xlat13.z;
        let x_1164 : f32 = u_xlat31;
        let x_1167 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1163 * x_1164) + x_1167);
        let x_1171 : vec4<f32> = u_xlat9;
        let x_1172 : vec2<f32> = vec2<f32>(x_1171.x, x_1171.y);
        let x_1174 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_1172.x, x_1172.y, x_1174);
        let x_1181 : vec3<f32> = txVec7;
        let x_1183 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1181.xy, x_1181.z);
        u_xlat31 = x_1183;
        let x_1185 : f32 = u_xlat13.w;
        let x_1186 : f32 = u_xlat31;
        let x_1189 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1185 * x_1186) + x_1189);
        let x_1193 : vec4<f32> = u_xlat11;
        let x_1194 : vec2<f32> = vec2<f32>(x_1193.x, x_1193.y);
        let x_1196 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_1194.x, x_1194.y, x_1196);
        let x_1203 : vec3<f32> = txVec8;
        let x_1205 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1203.xy, x_1203.z);
        u_xlat31 = x_1205;
        let x_1207 : f32 = u_xlat14.x;
        let x_1208 : f32 = u_xlat31;
        let x_1211 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1207 * x_1208) + x_1211);
        let x_1215 : vec4<f32> = u_xlat11;
        let x_1216 : vec2<f32> = vec2<f32>(x_1215.z, x_1215.w);
        let x_1218 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_1216.x, x_1216.y, x_1218);
        let x_1225 : vec3<f32> = txVec9;
        let x_1227 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1225.xy, x_1225.z);
        u_xlat31 = x_1227;
        let x_1229 : f32 = u_xlat14.y;
        let x_1230 : f32 = u_xlat31;
        let x_1233 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1229 * x_1230) + x_1233);
        let x_1237 : vec4<f32> = u_xlat9;
        let x_1238 : vec2<f32> = vec2<f32>(x_1237.z, x_1237.w);
        let x_1240 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_1238.x, x_1238.y, x_1240);
        let x_1247 : vec3<f32> = txVec10;
        let x_1249 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1247.xy, x_1247.z);
        u_xlat31 = x_1249;
        let x_1251 : f32 = u_xlat14.z;
        let x_1252 : f32 = u_xlat31;
        let x_1255 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1251 * x_1252) + x_1255);
        let x_1259 : vec4<f32> = u_xlat8;
        let x_1260 : vec2<f32> = vec2<f32>(x_1259.x, x_1259.y);
        let x_1262 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_1260.x, x_1260.y, x_1262);
        let x_1269 : vec3<f32> = txVec11;
        let x_1271 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1269.xy, x_1269.z);
        u_xlat31 = x_1271;
        let x_1273 : f32 = u_xlat14.w;
        let x_1274 : f32 = u_xlat31;
        let x_1277 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1273 * x_1274) + x_1277);
        let x_1281 : vec4<f32> = u_xlat8;
        let x_1282 : vec2<f32> = vec2<f32>(x_1281.z, x_1281.w);
        let x_1284 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_1282.x, x_1282.y, x_1284);
        let x_1291 : vec3<f32> = txVec12;
        let x_1293 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1291.xy, x_1291.z);
        u_xlat31 = x_1293;
        let x_1294 : f32 = u_xlat80;
        let x_1295 : f32 = u_xlat31;
        let x_1298 : f32 = u_xlat6.x;
        u_xlat79 = ((x_1294 * x_1295) + x_1298);
      } else {
        let x_1301 : vec4<f32> = vs_TEXCOORD8;
        let x_1304 : vec4<f32> = x_744.x_MainLightShadowmapSize;
        let x_1307 : vec2<f32> = ((vec2<f32>(x_1301.x, x_1301.y) * vec2<f32>(x_1304.z, x_1304.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1308 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1307.x, x_1307.y, x_1308.z, x_1308.w);
        let x_1310 : vec4<f32> = u_xlat6;
        let x_1312 : vec2<f32> = floor(vec2<f32>(x_1310.x, x_1310.y));
        let x_1313 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1312.x, x_1312.y, x_1313.z, x_1313.w);
        let x_1315 : vec4<f32> = vs_TEXCOORD8;
        let x_1318 : vec4<f32> = x_744.x_MainLightShadowmapSize;
        let x_1321 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_1315.x, x_1315.y) * vec2<f32>(x_1318.z, x_1318.w)) + -(vec2<f32>(x_1321.x, x_1321.y)));
        let x_1325 : vec2<f32> = u_xlat56;
        u_xlat7 = (vec4<f32>(x_1325.x, x_1325.x, x_1325.y, x_1325.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1328 : vec4<f32> = u_xlat7;
        let x_1330 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1328.x, x_1328.x, x_1328.z, x_1328.z) * vec4<f32>(x_1330.x, x_1330.x, x_1330.z, x_1330.z));
        let x_1333 : vec4<f32> = u_xlat8;
        let x_1337 : vec2<f32> = (vec2<f32>(x_1333.y, x_1333.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1338 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1338.x, x_1337.x, x_1338.z, x_1337.y);
        let x_1340 : vec4<f32> = u_xlat8;
        let x_1343 : vec2<f32> = u_xlat56;
        let x_1345 : vec2<f32> = ((vec2<f32>(x_1340.x, x_1340.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1343));
        let x_1346 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1345.x, x_1346.y, x_1345.y, x_1346.w);
        let x_1348 : vec2<f32> = u_xlat56;
        let x_1350 : vec2<f32> = (-(x_1348) + vec2<f32>(1.0f, 1.0f));
        let x_1351 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1350.x, x_1350.y, x_1351.z, x_1351.w);
        let x_1353 : vec2<f32> = u_xlat56;
        u_xlat58 = min(x_1353, vec2<f32>(0.0f, 0.0f));
        let x_1355 : vec2<f32> = u_xlat58;
        let x_1357 : vec2<f32> = u_xlat58;
        let x_1359 : vec4<f32> = u_xlat8;
        let x_1361 : vec2<f32> = ((-(x_1355) * x_1357) + vec2<f32>(x_1359.x, x_1359.y));
        let x_1362 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1361.x, x_1361.y, x_1362.z, x_1362.w);
        let x_1364 : vec2<f32> = u_xlat56;
        u_xlat58 = max(x_1364, vec2<f32>(0.0f, 0.0f));
        let x_1367 : vec2<f32> = u_xlat58;
        let x_1369 : vec2<f32> = u_xlat58;
        let x_1371 : vec4<f32> = u_xlat7;
        let x_1373 : vec2<f32> = ((-(x_1367) * x_1369) + vec2<f32>(x_1371.y, x_1371.w));
        let x_1374 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_1373.x, x_1374.y, x_1373.y);
        let x_1376 : vec4<f32> = u_xlat8;
        let x_1379 : vec2<f32> = (vec2<f32>(x_1376.x, x_1376.y) + vec2<f32>(2.0f, 2.0f));
        let x_1380 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1379.x, x_1379.y, x_1380.z, x_1380.w);
        let x_1382 : vec3<f32> = u_xlat32;
        let x_1384 : vec2<f32> = (vec2<f32>(x_1382.x, x_1382.z) + vec2<f32>(2.0f, 2.0f));
        let x_1385 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1385.x, x_1384.x, x_1385.z, x_1384.y);
        let x_1388 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1388 * 0.08163200318813323975f);
        let x_1392 : vec4<f32> = u_xlat7;
        let x_1395 : vec3<f32> = (vec3<f32>(x_1392.z, x_1392.x, x_1392.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1396 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1395.x, x_1395.y, x_1395.z, x_1396.w);
        let x_1398 : vec4<f32> = u_xlat8;
        let x_1401 : vec2<f32> = (vec2<f32>(x_1398.x, x_1398.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1402 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1401.x, x_1401.y, x_1402.z, x_1402.w);
        let x_1405 : f32 = u_xlat11.y;
        u_xlat10.x = x_1405;
        let x_1407 : vec2<f32> = u_xlat56;
        let x_1414 : vec2<f32> = ((vec2<f32>(x_1407.x, x_1407.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1415 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1415.x, x_1414.x, x_1415.z, x_1414.y);
        let x_1417 : vec2<f32> = u_xlat56;
        let x_1421 : vec2<f32> = ((vec2<f32>(x_1417.x, x_1417.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1422 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1421.x, x_1422.y, x_1421.y, x_1422.w);
        let x_1425 : f32 = u_xlat7.x;
        u_xlat8.y = x_1425;
        let x_1428 : f32 = u_xlat9.y;
        u_xlat8.w = x_1428;
        let x_1430 : vec4<f32> = u_xlat8;
        let x_1431 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1430 + x_1431);
        let x_1433 : vec2<f32> = u_xlat56;
        let x_1436 : vec2<f32> = ((vec2<f32>(x_1433.y, x_1433.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1437 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1437.x, x_1436.x, x_1437.z, x_1436.y);
        let x_1439 : vec2<f32> = u_xlat56;
        let x_1442 : vec2<f32> = ((vec2<f32>(x_1439.y, x_1439.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1443 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1442.x, x_1443.y, x_1442.y, x_1443.w);
        let x_1446 : f32 = u_xlat7.y;
        u_xlat9.y = x_1446;
        let x_1448 : vec4<f32> = u_xlat9;
        let x_1449 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1448 + x_1449);
        let x_1451 : vec4<f32> = u_xlat8;
        let x_1452 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1451 / x_1452);
        let x_1454 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1454 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1460 : vec4<f32> = u_xlat9;
        let x_1461 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1460 / x_1461);
        let x_1463 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1463 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1465 : vec4<f32> = u_xlat8;
        let x_1468 : vec4<f32> = x_744.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1465.w, x_1465.x, x_1465.y, x_1465.z) * vec4<f32>(x_1468.x, x_1468.x, x_1468.x, x_1468.x));
        let x_1471 : vec4<f32> = u_xlat9;
        let x_1474 : vec4<f32> = x_744.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1471.x, x_1471.w, x_1471.y, x_1471.z) * vec4<f32>(x_1474.y, x_1474.y, x_1474.y, x_1474.y));
        let x_1477 : vec4<f32> = u_xlat8;
        let x_1478 : vec3<f32> = vec3<f32>(x_1477.y, x_1477.z, x_1477.w);
        let x_1479 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1478.x, x_1479.y, x_1478.y, x_1478.z);
        let x_1482 : f32 = u_xlat9.x;
        u_xlat11.y = x_1482;
        let x_1484 : vec4<f32> = u_xlat6;
        let x_1487 : vec4<f32> = x_744.x_MainLightShadowmapSize;
        let x_1490 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1484.x, x_1484.y, x_1484.x, x_1484.y) * vec4<f32>(x_1487.x, x_1487.y, x_1487.x, x_1487.y)) + vec4<f32>(x_1490.x, x_1490.y, x_1490.z, x_1490.y));
        let x_1493 : vec4<f32> = u_xlat6;
        let x_1496 : vec4<f32> = x_744.x_MainLightShadowmapSize;
        let x_1499 : vec4<f32> = u_xlat11;
        u_xlat56 = ((vec2<f32>(x_1493.x, x_1493.y) * vec2<f32>(x_1496.x, x_1496.y)) + vec2<f32>(x_1499.w, x_1499.y));
        let x_1503 : f32 = u_xlat11.y;
        u_xlat8.y = x_1503;
        let x_1506 : f32 = u_xlat9.z;
        u_xlat11.y = x_1506;
        let x_1508 : vec4<f32> = u_xlat6;
        let x_1511 : vec4<f32> = x_744.x_MainLightShadowmapSize;
        let x_1514 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1508.x, x_1508.y, x_1508.x, x_1508.y) * vec4<f32>(x_1511.x, x_1511.y, x_1511.x, x_1511.y)) + vec4<f32>(x_1514.x, x_1514.y, x_1514.z, x_1514.y));
        let x_1517 : vec4<f32> = u_xlat6;
        let x_1520 : vec4<f32> = x_744.x_MainLightShadowmapSize;
        let x_1523 : vec4<f32> = u_xlat11;
        let x_1525 : vec2<f32> = ((vec2<f32>(x_1517.x, x_1517.y) * vec2<f32>(x_1520.x, x_1520.y)) + vec2<f32>(x_1523.w, x_1523.y));
        let x_1526 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1525.x, x_1525.y, x_1526.z, x_1526.w);
        let x_1529 : f32 = u_xlat11.y;
        u_xlat8.z = x_1529;
        let x_1532 : vec4<f32> = u_xlat6;
        let x_1535 : vec4<f32> = x_744.x_MainLightShadowmapSize;
        let x_1538 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1532.x, x_1532.y, x_1532.x, x_1532.y) * vec4<f32>(x_1535.x, x_1535.y, x_1535.x, x_1535.y)) + vec4<f32>(x_1538.x, x_1538.y, x_1538.x, x_1538.z));
        let x_1542 : f32 = u_xlat9.w;
        u_xlat11.y = x_1542;
        let x_1545 : vec4<f32> = u_xlat6;
        let x_1548 : vec4<f32> = x_744.x_MainLightShadowmapSize;
        let x_1551 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1545.x, x_1545.y, x_1545.x, x_1545.y) * vec4<f32>(x_1548.x, x_1548.y, x_1548.x, x_1548.y)) + vec4<f32>(x_1551.x, x_1551.y, x_1551.z, x_1551.y));
        let x_1555 : vec4<f32> = u_xlat6;
        let x_1558 : vec4<f32> = x_744.x_MainLightShadowmapSize;
        let x_1561 : vec4<f32> = u_xlat11;
        u_xlat33 = ((vec2<f32>(x_1555.x, x_1555.y) * vec2<f32>(x_1558.x, x_1558.y)) + vec2<f32>(x_1561.w, x_1561.y));
        let x_1565 : f32 = u_xlat11.y;
        u_xlat8.w = x_1565;
        let x_1568 : vec4<f32> = u_xlat6;
        let x_1571 : vec4<f32> = x_744.x_MainLightShadowmapSize;
        let x_1574 : vec4<f32> = u_xlat8;
        u_xlat64 = ((vec2<f32>(x_1568.x, x_1568.y) * vec2<f32>(x_1571.x, x_1571.y)) + vec2<f32>(x_1574.x, x_1574.w));
        let x_1577 : vec4<f32> = u_xlat11;
        let x_1578 : vec3<f32> = vec3<f32>(x_1577.x, x_1577.z, x_1577.w);
        let x_1579 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1578.x, x_1579.y, x_1578.y, x_1578.z);
        let x_1581 : vec4<f32> = u_xlat6;
        let x_1584 : vec4<f32> = x_744.x_MainLightShadowmapSize;
        let x_1587 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1581.x, x_1581.y, x_1581.x, x_1581.y) * vec4<f32>(x_1584.x, x_1584.y, x_1584.x, x_1584.y)) + vec4<f32>(x_1587.x, x_1587.y, x_1587.z, x_1587.y));
        let x_1591 : vec4<f32> = u_xlat6;
        let x_1594 : vec4<f32> = x_744.x_MainLightShadowmapSize;
        let x_1597 : vec4<f32> = u_xlat9;
        u_xlat59 = ((vec2<f32>(x_1591.x, x_1591.y) * vec2<f32>(x_1594.x, x_1594.y)) + vec2<f32>(x_1597.w, x_1597.y));
        let x_1601 : f32 = u_xlat8.x;
        u_xlat9.x = x_1601;
        let x_1603 : vec4<f32> = u_xlat6;
        let x_1606 : vec4<f32> = x_744.x_MainLightShadowmapSize;
        let x_1609 : vec4<f32> = u_xlat9;
        let x_1611 : vec2<f32> = ((vec2<f32>(x_1603.x, x_1603.y) * vec2<f32>(x_1606.x, x_1606.y)) + vec2<f32>(x_1609.x, x_1609.y));
        let x_1612 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1611.x, x_1611.y, x_1612.z, x_1612.w);
        let x_1615 : vec4<f32> = u_xlat7;
        let x_1617 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1615.x, x_1615.x, x_1615.x, x_1615.x) * x_1617);
        let x_1620 : vec4<f32> = u_xlat7;
        let x_1622 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1620.y, x_1620.y, x_1620.y, x_1620.y) * x_1622);
        let x_1625 : vec4<f32> = u_xlat7;
        let x_1627 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1625.z, x_1625.z, x_1625.z, x_1625.z) * x_1627);
        let x_1629 : vec4<f32> = u_xlat7;
        let x_1631 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1629.w, x_1629.w, x_1629.w, x_1629.w) * x_1631);
        let x_1634 : vec4<f32> = u_xlat12;
        let x_1635 : vec2<f32> = vec2<f32>(x_1634.x, x_1634.y);
        let x_1637 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1635.x, x_1635.y, x_1637);
        let x_1644 : vec3<f32> = txVec13;
        let x_1646 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1644.xy, x_1644.z);
        u_xlat80 = x_1646;
        let x_1648 : vec4<f32> = u_xlat12;
        let x_1649 : vec2<f32> = vec2<f32>(x_1648.z, x_1648.w);
        let x_1651 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1649.x, x_1649.y, x_1651);
        let x_1658 : vec3<f32> = txVec14;
        let x_1660 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1658.xy, x_1658.z);
        u_xlat8.x = x_1660;
        let x_1663 : f32 = u_xlat8.x;
        let x_1665 : f32 = u_xlat17.y;
        u_xlat8.x = (x_1663 * x_1665);
        let x_1669 : f32 = u_xlat17.x;
        let x_1670 : f32 = u_xlat80;
        let x_1673 : f32 = u_xlat8.x;
        u_xlat80 = ((x_1669 * x_1670) + x_1673);
        let x_1676 : vec2<f32> = u_xlat56;
        let x_1678 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1676.x, x_1676.y, x_1678);
        let x_1685 : vec3<f32> = txVec15;
        let x_1687 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1685.xy, x_1685.z);
        u_xlat56.x = x_1687;
        let x_1690 : f32 = u_xlat17.z;
        let x_1692 : f32 = u_xlat56.x;
        let x_1694 : f32 = u_xlat80;
        u_xlat80 = ((x_1690 * x_1692) + x_1694);
        let x_1697 : vec4<f32> = u_xlat15;
        let x_1698 : vec2<f32> = vec2<f32>(x_1697.x, x_1697.y);
        let x_1700 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1698.x, x_1698.y, x_1700);
        let x_1707 : vec3<f32> = txVec16;
        let x_1709 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1707.xy, x_1707.z);
        u_xlat56.x = x_1709;
        let x_1712 : f32 = u_xlat17.w;
        let x_1714 : f32 = u_xlat56.x;
        let x_1716 : f32 = u_xlat80;
        u_xlat80 = ((x_1712 * x_1714) + x_1716);
        let x_1719 : vec4<f32> = u_xlat13;
        let x_1720 : vec2<f32> = vec2<f32>(x_1719.x, x_1719.y);
        let x_1722 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1720.x, x_1720.y, x_1722);
        let x_1729 : vec3<f32> = txVec17;
        let x_1731 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1729.xy, x_1729.z);
        u_xlat56.x = x_1731;
        let x_1734 : f32 = u_xlat18.x;
        let x_1736 : f32 = u_xlat56.x;
        let x_1738 : f32 = u_xlat80;
        u_xlat80 = ((x_1734 * x_1736) + x_1738);
        let x_1741 : vec4<f32> = u_xlat13;
        let x_1742 : vec2<f32> = vec2<f32>(x_1741.z, x_1741.w);
        let x_1744 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1742.x, x_1742.y, x_1744);
        let x_1751 : vec3<f32> = txVec18;
        let x_1753 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1751.xy, x_1751.z);
        u_xlat56.x = x_1753;
        let x_1756 : f32 = u_xlat18.y;
        let x_1758 : f32 = u_xlat56.x;
        let x_1760 : f32 = u_xlat80;
        u_xlat80 = ((x_1756 * x_1758) + x_1760);
        let x_1763 : vec4<f32> = u_xlat14;
        let x_1764 : vec2<f32> = vec2<f32>(x_1763.x, x_1763.y);
        let x_1766 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1764.x, x_1764.y, x_1766);
        let x_1773 : vec3<f32> = txVec19;
        let x_1775 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1773.xy, x_1773.z);
        u_xlat56.x = x_1775;
        let x_1778 : f32 = u_xlat18.z;
        let x_1780 : f32 = u_xlat56.x;
        let x_1782 : f32 = u_xlat80;
        u_xlat80 = ((x_1778 * x_1780) + x_1782);
        let x_1785 : vec4<f32> = u_xlat15;
        let x_1786 : vec2<f32> = vec2<f32>(x_1785.z, x_1785.w);
        let x_1788 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1786.x, x_1786.y, x_1788);
        let x_1795 : vec3<f32> = txVec20;
        let x_1797 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1795.xy, x_1795.z);
        u_xlat56.x = x_1797;
        let x_1800 : f32 = u_xlat18.w;
        let x_1802 : f32 = u_xlat56.x;
        let x_1804 : f32 = u_xlat80;
        u_xlat80 = ((x_1800 * x_1802) + x_1804);
        let x_1807 : vec4<f32> = u_xlat16;
        let x_1808 : vec2<f32> = vec2<f32>(x_1807.x, x_1807.y);
        let x_1810 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1808.x, x_1808.y, x_1810);
        let x_1817 : vec3<f32> = txVec21;
        let x_1819 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1817.xy, x_1817.z);
        u_xlat56.x = x_1819;
        let x_1822 : f32 = u_xlat19.x;
        let x_1824 : f32 = u_xlat56.x;
        let x_1826 : f32 = u_xlat80;
        u_xlat80 = ((x_1822 * x_1824) + x_1826);
        let x_1829 : vec4<f32> = u_xlat16;
        let x_1830 : vec2<f32> = vec2<f32>(x_1829.z, x_1829.w);
        let x_1832 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1830.x, x_1830.y, x_1832);
        let x_1839 : vec3<f32> = txVec22;
        let x_1841 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1839.xy, x_1839.z);
        u_xlat56.x = x_1841;
        let x_1844 : f32 = u_xlat19.y;
        let x_1846 : f32 = u_xlat56.x;
        let x_1848 : f32 = u_xlat80;
        u_xlat80 = ((x_1844 * x_1846) + x_1848);
        let x_1851 : vec2<f32> = u_xlat33;
        let x_1853 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1851.x, x_1851.y, x_1853);
        let x_1860 : vec3<f32> = txVec23;
        let x_1862 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1860.xy, x_1860.z);
        u_xlat56.x = x_1862;
        let x_1865 : f32 = u_xlat19.z;
        let x_1867 : f32 = u_xlat56.x;
        let x_1869 : f32 = u_xlat80;
        u_xlat80 = ((x_1865 * x_1867) + x_1869);
        let x_1872 : vec2<f32> = u_xlat64;
        let x_1874 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1872.x, x_1872.y, x_1874);
        let x_1881 : vec3<f32> = txVec24;
        let x_1883 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1881.xy, x_1881.z);
        u_xlat56.x = x_1883;
        let x_1886 : f32 = u_xlat19.w;
        let x_1888 : f32 = u_xlat56.x;
        let x_1890 : f32 = u_xlat80;
        u_xlat80 = ((x_1886 * x_1888) + x_1890);
        let x_1893 : vec4<f32> = u_xlat11;
        let x_1894 : vec2<f32> = vec2<f32>(x_1893.x, x_1893.y);
        let x_1896 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1894.x, x_1894.y, x_1896);
        let x_1903 : vec3<f32> = txVec25;
        let x_1905 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1903.xy, x_1903.z);
        u_xlat56.x = x_1905;
        let x_1908 : f32 = u_xlat7.x;
        let x_1910 : f32 = u_xlat56.x;
        let x_1912 : f32 = u_xlat80;
        u_xlat80 = ((x_1908 * x_1910) + x_1912);
        let x_1915 : vec4<f32> = u_xlat11;
        let x_1916 : vec2<f32> = vec2<f32>(x_1915.z, x_1915.w);
        let x_1918 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1916.x, x_1916.y, x_1918);
        let x_1925 : vec3<f32> = txVec26;
        let x_1927 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1925.xy, x_1925.z);
        u_xlat56.x = x_1927;
        let x_1930 : f32 = u_xlat7.y;
        let x_1932 : f32 = u_xlat56.x;
        let x_1934 : f32 = u_xlat80;
        u_xlat80 = ((x_1930 * x_1932) + x_1934);
        let x_1937 : vec2<f32> = u_xlat59;
        let x_1939 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_1937.x, x_1937.y, x_1939);
        let x_1946 : vec3<f32> = txVec27;
        let x_1948 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1946.xy, x_1946.z);
        u_xlat56.x = x_1948;
        let x_1951 : f32 = u_xlat7.z;
        let x_1953 : f32 = u_xlat56.x;
        let x_1955 : f32 = u_xlat80;
        u_xlat80 = ((x_1951 * x_1953) + x_1955);
        let x_1958 : vec4<f32> = u_xlat6;
        let x_1959 : vec2<f32> = vec2<f32>(x_1958.x, x_1958.y);
        let x_1961 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_1959.x, x_1959.y, x_1961);
        let x_1968 : vec3<f32> = txVec28;
        let x_1970 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1968.xy, x_1968.z);
        u_xlat6.x = x_1970;
        let x_1973 : f32 = u_xlat7.w;
        let x_1975 : f32 = u_xlat6.x;
        let x_1977 : f32 = u_xlat80;
        u_xlat79 = ((x_1973 * x_1975) + x_1977);
      }
    }
  } else {
    let x_1981 : vec4<f32> = vs_TEXCOORD8;
    let x_1982 : vec2<f32> = vec2<f32>(x_1981.x, x_1981.y);
    let x_1984 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_1982.x, x_1982.y, x_1984);
    let x_1991 : vec3<f32> = txVec29;
    let x_1993 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1991.xy, x_1991.z);
    u_xlat79 = x_1993;
  }
  let x_1995 : f32 = x_744.x_MainLightShadowParams.x;
  u_xlat80 = (-(x_1995) + 1.0f);
  let x_1998 : f32 = u_xlat79;
  let x_2000 : f32 = x_744.x_MainLightShadowParams.x;
  let x_2002 : f32 = u_xlat80;
  u_xlat79 = ((x_1998 * x_2000) + x_2002);
  let x_2005 : f32 = vs_TEXCOORD8.z;
  u_xlatb80 = (0.0f >= x_2005);
  let x_2009 : f32 = vs_TEXCOORD8.z;
  u_xlatb6 = (x_2009 >= 1.0f);
  let x_2011 : bool = u_xlatb80;
  let x_2012 : bool = u_xlatb6;
  u_xlatb80 = (x_2011 | x_2012);
  let x_2014 : bool = u_xlatb80;
  let x_2015 : f32 = u_xlat79;
  u_xlat79 = select(x_2015, 1.0f, x_2014);
  let x_2017 : vec3<f32> = vs_TEXCOORD7;
  let x_2019 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_2021 : vec3<f32> = (x_2017 + -(x_2019));
  let x_2022 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2021.x, x_2021.y, x_2021.z, x_2022.w);
  let x_2024 : vec4<f32> = u_xlat6;
  let x_2026 : vec4<f32> = u_xlat6;
  u_xlat80 = dot(vec3<f32>(x_2024.x, x_2024.y, x_2024.z), vec3<f32>(x_2026.x, x_2026.y, x_2026.z));
  let x_2029 : f32 = u_xlat80;
  let x_2031 : f32 = x_744.x_MainLightShadowParams.z;
  let x_2034 : f32 = x_744.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_2029 * x_2031) + x_2034);
  let x_2038 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_2038, 0.0f, 1.0f);
  let x_2041 : f32 = u_xlat79;
  u_xlat31 = (-(x_2041) + 1.0f);
  let x_2045 : f32 = u_xlat6.x;
  let x_2046 : f32 = u_xlat31;
  let x_2048 : f32 = u_xlat79;
  u_xlat79 = ((x_2045 * x_2046) + x_2048);
  let x_2050 : vec3<f32> = u_xlat2;
  let x_2052 : vec4<f32> = u_xlat1;
  u_xlat6.x = dot(-(x_2050), vec3<f32>(x_2052.x, x_2052.y, x_2052.z));
  let x_2057 : f32 = u_xlat6.x;
  let x_2059 : f32 = u_xlat6.x;
  u_xlat6.x = (x_2057 + x_2059);
  let x_2062 : vec4<f32> = u_xlat1;
  let x_2064 : vec4<f32> = u_xlat6;
  let x_2068 : vec3<f32> = u_xlat2;
  let x_2070 : vec3<f32> = ((vec3<f32>(x_2062.x, x_2062.y, x_2062.z) * -(vec3<f32>(x_2064.x, x_2064.x, x_2064.x))) + -(x_2068));
  let x_2071 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2070.x, x_2070.y, x_2070.z, x_2071.w);
  let x_2074 : vec4<f32> = u_xlat1;
  let x_2076 : vec3<f32> = u_xlat2;
  u_xlat81 = dot(vec3<f32>(x_2074.x, x_2074.y, x_2074.z), x_2076);
  let x_2078 : f32 = u_xlat81;
  u_xlat81 = clamp(x_2078, 0.0f, 1.0f);
  let x_2080 : f32 = u_xlat81;
  u_xlat81 = (-(x_2080) + 1.0f);
  let x_2083 : f32 = u_xlat81;
  let x_2084 : f32 = u_xlat81;
  u_xlat81 = (x_2083 * x_2084);
  let x_2086 : f32 = u_xlat81;
  let x_2087 : f32 = u_xlat81;
  u_xlat81 = (x_2086 * x_2087);
  let x_2090 : f32 = u_xlat0.x;
  u_xlat7.x = ((-(x_2090) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2098 : f32 = u_xlat0.x;
  let x_2100 : f32 = u_xlat7.x;
  u_xlat0.x = (x_2098 * x_2100);
  let x_2104 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2104 * 6.0f);
  let x_2116 : vec4<f32> = u_xlat6;
  let x_2119 : f32 = u_xlat0.x;
  let x_2120 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2116.x, x_2116.y, x_2116.z), x_2119);
  u_xlat7 = x_2120;
  let x_2122 : f32 = u_xlat7.w;
  u_xlat0.x = (x_2122 + -1.0f);
  let x_2130 : f32 = x_2128.unity_SpecCube0_HDR.w;
  let x_2132 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2130 * x_2132) + 1.0f);
  let x_2137 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2137, 0.0f);
  let x_2141 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2141);
  let x_2145 : f32 = u_xlat0.x;
  let x_2147 : f32 = x_2128.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2145 * x_2147);
  let x_2151 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2151);
  let x_2155 : f32 = u_xlat0.x;
  let x_2157 : f32 = x_2128.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2155 * x_2157);
  let x_2160 : vec4<f32> = u_xlat7;
  let x_2162 : vec3<f32> = u_xlat0;
  let x_2164 : vec3<f32> = (vec3<f32>(x_2160.x, x_2160.y, x_2160.z) * vec3<f32>(x_2162.x, x_2162.x, x_2162.x));
  let x_2165 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2164.x, x_2164.y, x_2164.z, x_2165.w);
  let x_2167 : f32 = u_xlat50;
  let x_2169 : f32 = u_xlat50;
  let x_2173 : vec2<f32> = ((vec2<f32>(x_2167, x_2167) * vec2<f32>(x_2169, x_2169)) + vec2<f32>(-1.0f, 1.0f));
  let x_2174 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2173.x, x_2174.y, x_2173.y);
  let x_2177 : f32 = u_xlat0.z;
  u_xlat50 = (1.0f / x_2177);
  let x_2179 : vec4<f32> = u_xlat5;
  let x_2182 : f32 = u_xlat77;
  let x_2184 : vec3<f32> = (-(vec3<f32>(x_2179.x, x_2179.y, x_2179.z)) + vec3<f32>(x_2182, x_2182, x_2182));
  let x_2185 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2184.x, x_2184.y, x_2184.z, x_2185.w);
  let x_2187 : f32 = u_xlat81;
  let x_2189 : vec4<f32> = u_xlat7;
  let x_2192 : vec4<f32> = u_xlat5;
  let x_2194 : vec3<f32> = ((vec3<f32>(x_2187, x_2187, x_2187) * vec3<f32>(x_2189.x, x_2189.y, x_2189.z)) + vec3<f32>(x_2192.x, x_2192.y, x_2192.z));
  let x_2195 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2194.x, x_2194.y, x_2194.z, x_2195.w);
  let x_2197 : f32 = u_xlat50;
  let x_2199 : vec4<f32> = u_xlat7;
  let x_2201 : vec3<f32> = (vec3<f32>(x_2197, x_2197, x_2197) * vec3<f32>(x_2199.x, x_2199.y, x_2199.z));
  let x_2202 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2201.x, x_2201.y, x_2201.z, x_2202.w);
  let x_2204 : vec4<f32> = u_xlat6;
  let x_2206 : vec4<f32> = u_xlat7;
  let x_2208 : vec3<f32> = (vec3<f32>(x_2204.x, x_2204.y, x_2204.z) * vec3<f32>(x_2206.x, x_2206.y, x_2206.z));
  let x_2209 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2208.x, x_2208.y, x_2208.z, x_2209.w);
  let x_2211 : vec4<f32> = u_xlat3;
  let x_2213 : vec4<f32> = u_xlat4;
  let x_2216 : vec4<f32> = u_xlat6;
  let x_2218 : vec3<f32> = ((vec3<f32>(x_2211.x, x_2211.y, x_2211.z) * vec3<f32>(x_2213.x, x_2213.y, x_2213.z)) + vec3<f32>(x_2216.x, x_2216.y, x_2216.z));
  let x_2219 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2218.x, x_2218.y, x_2218.z, x_2219.w);
  let x_2221 : f32 = u_xlat79;
  let x_2223 : f32 = x_2128.unity_LightData.z;
  u_xlat50 = (x_2221 * x_2223);
  let x_2225 : vec4<f32> = u_xlat1;
  let x_2228 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat77 = dot(vec3<f32>(x_2225.x, x_2225.y, x_2225.z), vec3<f32>(x_2228.x, x_2228.y, x_2228.z));
  let x_2231 : f32 = u_xlat77;
  u_xlat77 = clamp(x_2231, 0.0f, 1.0f);
  let x_2233 : f32 = u_xlat50;
  let x_2234 : f32 = u_xlat77;
  u_xlat50 = (x_2233 * x_2234);
  let x_2236 : f32 = u_xlat50;
  let x_2239 : vec4<f32> = x_29.x_MainLightColor;
  let x_2241 : vec3<f32> = (vec3<f32>(x_2236, x_2236, x_2236) * vec3<f32>(x_2239.x, x_2239.y, x_2239.z));
  let x_2242 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2241.x, x_2241.y, x_2241.z, x_2242.w);
  let x_2244 : vec3<f32> = u_xlat2;
  let x_2246 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2248 : vec3<f32> = (x_2244 + vec3<f32>(x_2246.x, x_2246.y, x_2246.z));
  let x_2249 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2248.x, x_2248.y, x_2248.z, x_2249.w);
  let x_2251 : vec4<f32> = u_xlat7;
  let x_2253 : vec4<f32> = u_xlat7;
  u_xlat50 = dot(vec3<f32>(x_2251.x, x_2251.y, x_2251.z), vec3<f32>(x_2253.x, x_2253.y, x_2253.z));
  let x_2256 : f32 = u_xlat50;
  u_xlat50 = max(x_2256, 1.17549435e-38f);
  let x_2259 : f32 = u_xlat50;
  u_xlat50 = inverseSqrt(x_2259);
  let x_2261 : f32 = u_xlat50;
  let x_2263 : vec4<f32> = u_xlat7;
  let x_2265 : vec3<f32> = (vec3<f32>(x_2261, x_2261, x_2261) * vec3<f32>(x_2263.x, x_2263.y, x_2263.z));
  let x_2266 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2265.x, x_2265.y, x_2265.z, x_2266.w);
  let x_2268 : vec4<f32> = u_xlat1;
  let x_2270 : vec4<f32> = u_xlat7;
  u_xlat50 = dot(vec3<f32>(x_2268.x, x_2268.y, x_2268.z), vec3<f32>(x_2270.x, x_2270.y, x_2270.z));
  let x_2273 : f32 = u_xlat50;
  u_xlat50 = clamp(x_2273, 0.0f, 1.0f);
  let x_2276 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2278 : vec4<f32> = u_xlat7;
  u_xlat77 = dot(vec3<f32>(x_2276.x, x_2276.y, x_2276.z), vec3<f32>(x_2278.x, x_2278.y, x_2278.z));
  let x_2281 : f32 = u_xlat77;
  u_xlat77 = clamp(x_2281, 0.0f, 1.0f);
  let x_2283 : f32 = u_xlat50;
  let x_2284 : f32 = u_xlat50;
  u_xlat50 = (x_2283 * x_2284);
  let x_2286 : f32 = u_xlat50;
  let x_2288 : f32 = u_xlat0.x;
  u_xlat50 = ((x_2286 * x_2288) + 1.00001001358032226562f);
  let x_2292 : f32 = u_xlat77;
  let x_2293 : f32 = u_xlat77;
  u_xlat77 = (x_2292 * x_2293);
  let x_2295 : f32 = u_xlat50;
  let x_2296 : f32 = u_xlat50;
  u_xlat50 = (x_2295 * x_2296);
  let x_2298 : f32 = u_xlat77;
  u_xlat77 = max(x_2298, 0.10000000149011611938f);
  let x_2301 : f32 = u_xlat50;
  let x_2302 : f32 = u_xlat77;
  u_xlat50 = (x_2301 * x_2302);
  let x_2304 : f32 = u_xlat78;
  let x_2305 : f32 = u_xlat50;
  u_xlat50 = (x_2304 * x_2305);
  let x_2307 : f32 = u_xlat76;
  let x_2308 : f32 = u_xlat50;
  u_xlat50 = (x_2307 / x_2308);
  let x_2310 : vec4<f32> = u_xlat5;
  let x_2312 : f32 = u_xlat50;
  let x_2315 : vec4<f32> = u_xlat4;
  let x_2317 : vec3<f32> = ((vec3<f32>(x_2310.x, x_2310.y, x_2310.z) * vec3<f32>(x_2312, x_2312, x_2312)) + vec3<f32>(x_2315.x, x_2315.y, x_2315.z));
  let x_2318 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2317.x, x_2317.y, x_2317.z, x_2318.w);
  let x_2320 : vec4<f32> = u_xlat6;
  let x_2322 : vec4<f32> = u_xlat7;
  let x_2324 : vec3<f32> = (vec3<f32>(x_2320.x, x_2320.y, x_2320.z) * vec3<f32>(x_2322.x, x_2322.y, x_2322.z));
  let x_2325 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2324.x, x_2324.y, x_2324.z, x_2325.w);
  let x_2329 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_2331 : f32 = x_2128.unity_LightData.y;
  u_xlat50 = min(x_2329, x_2331);
  let x_2335 : f32 = u_xlat50;
  u_xlatu50 = bitcast<u32>(i32(x_2335));
  let x_2338 : f32 = u_xlat80;
  let x_2340 : f32 = x_744.x_AdditionalShadowFadeParams.x;
  let x_2343 : f32 = x_744.x_AdditionalShadowFadeParams.y;
  u_xlat77 = ((x_2338 * x_2340) + x_2343);
  let x_2345 : f32 = u_xlat77;
  u_xlat77 = clamp(x_2345, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2357 : u32 = u_xlatu_loop_1;
    let x_2358 : u32 = u_xlatu50;
    if ((x_2357 < x_2358)) {
    } else {
      break;
    }
    let x_2361 : u32 = u_xlatu_loop_1;
    u_xlatu80 = (x_2361 >> 2u);
    let x_2365 : u32 = u_xlatu_loop_1;
    u_xlati81 = bitcast<i32>((x_2365 & 3u));
    let x_2368 : u32 = u_xlatu80;
    let x_2371 : vec4<f32> = x_2128.unity_LightIndices[bitcast<i32>(x_2368)];
    let x_2381 : i32 = u_xlati81;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2386 : vec4<u32> = indexable[x_2381];
    u_xlat80 = dot(x_2371, bitcast<vec4<f32>>(x_2386));
    let x_2390 : f32 = u_xlat80;
    u_xlati80 = i32(x_2390);
    let x_2392 : vec3<f32> = vs_TEXCOORD7;
    let x_2403 : i32 = u_xlati80;
    let x_2405 : vec4<f32> = x_2402.x_AdditionalLightsPosition[x_2403];
    let x_2408 : i32 = u_xlati80;
    let x_2410 : vec4<f32> = x_2402.x_AdditionalLightsPosition[x_2408];
    let x_2412 : vec3<f32> = ((-(x_2392) * vec3<f32>(x_2405.w, x_2405.w, x_2405.w)) + vec3<f32>(x_2410.x, x_2410.y, x_2410.z));
    let x_2413 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2412.x, x_2412.y, x_2412.z, x_2413.w);
    let x_2415 : vec4<f32> = u_xlat8;
    let x_2417 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_2415.x, x_2415.y, x_2415.z), vec3<f32>(x_2417.x, x_2417.y, x_2417.z));
    let x_2420 : f32 = u_xlat81;
    u_xlat81 = max(x_2420, 0.00006103515625f);
    let x_2423 : f32 = u_xlat81;
    u_xlat82 = inverseSqrt(x_2423);
    let x_2425 : f32 = u_xlat82;
    let x_2427 : vec4<f32> = u_xlat8;
    let x_2429 : vec3<f32> = (vec3<f32>(x_2425, x_2425, x_2425) * vec3<f32>(x_2427.x, x_2427.y, x_2427.z));
    let x_2430 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2429.x, x_2429.y, x_2429.z, x_2430.w);
    let x_2433 : f32 = u_xlat81;
    u_xlat83 = (1.0f / x_2433);
    let x_2435 : f32 = u_xlat81;
    let x_2436 : i32 = u_xlati80;
    let x_2438 : f32 = x_2402.x_AdditionalLightsAttenuation[x_2436].x;
    u_xlat81 = (x_2435 * x_2438);
    let x_2440 : f32 = u_xlat81;
    let x_2442 : f32 = u_xlat81;
    u_xlat81 = ((-(x_2440) * x_2442) + 1.0f);
    let x_2445 : f32 = u_xlat81;
    u_xlat81 = max(x_2445, 0.0f);
    let x_2447 : f32 = u_xlat81;
    let x_2448 : f32 = u_xlat81;
    u_xlat81 = (x_2447 * x_2448);
    let x_2450 : f32 = u_xlat81;
    let x_2451 : f32 = u_xlat83;
    u_xlat81 = (x_2450 * x_2451);
    let x_2453 : i32 = u_xlati80;
    let x_2455 : vec4<f32> = x_2402.x_AdditionalLightsSpotDir[x_2453];
    let x_2457 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_2455.x, x_2455.y, x_2455.z), vec3<f32>(x_2457.x, x_2457.y, x_2457.z));
    let x_2460 : f32 = u_xlat83;
    let x_2461 : i32 = u_xlati80;
    let x_2463 : f32 = x_2402.x_AdditionalLightsAttenuation[x_2461].z;
    let x_2465 : i32 = u_xlati80;
    let x_2467 : f32 = x_2402.x_AdditionalLightsAttenuation[x_2465].w;
    u_xlat83 = ((x_2460 * x_2463) + x_2467);
    let x_2469 : f32 = u_xlat83;
    u_xlat83 = clamp(x_2469, 0.0f, 1.0f);
    let x_2471 : f32 = u_xlat83;
    let x_2472 : f32 = u_xlat83;
    u_xlat83 = (x_2471 * x_2472);
    let x_2474 : f32 = u_xlat81;
    let x_2475 : f32 = u_xlat83;
    u_xlat81 = (x_2474 * x_2475);
    let x_2478 : i32 = u_xlati80;
    let x_2480 : f32 = x_744.x_AdditionalShadowParams[x_2478].w;
    u_xlati83 = i32(x_2480);
    let x_2483 : i32 = u_xlati83;
    u_xlatb84 = (x_2483 >= 0i);
    let x_2485 : bool = u_xlatb84;
    if (x_2485) {
      let x_2489 : i32 = u_xlati80;
      let x_2491 : f32 = x_744.x_AdditionalShadowParams[x_2489].z;
      u_xlatb84 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2491, x_2491, x_2491, x_2491))));
      let x_2495 : bool = u_xlatb84;
      if (x_2495) {
        let x_2500 : vec4<f32> = u_xlat9;
        let x_2503 : vec4<f32> = u_xlat9;
        let x_2506 : vec4<bool> = (abs(vec4<f32>(x_2500.z, x_2500.z, x_2500.y, x_2500.z)) >= abs(vec4<f32>(x_2503.x, x_2503.y, x_2503.x, x_2503.x)));
        let x_2508 : vec3<bool> = vec3<bool>(x_2506.x, x_2506.y, x_2506.z);
        let x_2509 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_2508.x, x_2508.y, x_2508.z, x_2509.w);
        let x_2512 : bool = u_xlatb10.y;
        let x_2514 : bool = u_xlatb10.x;
        u_xlatb84 = (x_2512 & x_2514);
        let x_2516 : vec4<f32> = u_xlat9;
        let x_2519 : vec4<bool> = (-(vec4<f32>(x_2516.z, x_2516.y, x_2516.z, x_2516.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2520 : vec3<bool> = vec3<bool>(x_2519.x, x_2519.y, x_2519.w);
        let x_2521 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_2520.x, x_2520.y, x_2521.z, x_2520.z);
        let x_2524 : bool = u_xlatb10.x;
        u_xlat10.x = select(4.0f, 5.0f, x_2524);
        let x_2529 : bool = u_xlatb10.y;
        u_xlat10.y = select(2.0f, 3.0f, x_2529);
        let x_2535 : bool = u_xlatb10.w;
        u_xlat85 = select(0.0f, 1.0f, x_2535);
        let x_2539 : bool = u_xlatb10.z;
        if (x_2539) {
          let x_2544 : f32 = u_xlat10.y;
          x_2540 = x_2544;
        } else {
          let x_2546 : f32 = u_xlat85;
          x_2540 = x_2546;
        }
        let x_2547 : f32 = x_2540;
        u_xlat35 = x_2547;
        let x_2549 : bool = u_xlatb84;
        if (x_2549) {
          let x_2554 : f32 = u_xlat10.x;
          x_2550 = x_2554;
        } else {
          let x_2556 : f32 = u_xlat35;
          x_2550 = x_2556;
        }
        let x_2557 : f32 = x_2550;
        u_xlat84 = x_2557;
        let x_2558 : i32 = u_xlati80;
        let x_2560 : f32 = x_744.x_AdditionalShadowParams[x_2558].w;
        u_xlat10.x = trunc(x_2560);
        let x_2563 : f32 = u_xlat84;
        let x_2565 : f32 = u_xlat10.x;
        u_xlat84 = (x_2563 + x_2565);
        let x_2567 : f32 = u_xlat84;
        u_xlati83 = i32(x_2567);
      }
      let x_2569 : i32 = u_xlati83;
      u_xlati83 = (x_2569 << bitcast<u32>(2i));
      let x_2571 : vec3<f32> = vs_TEXCOORD7;
      let x_2573 : i32 = u_xlati83;
      let x_2576 : i32 = u_xlati83;
      let x_2580 : vec4<f32> = x_744.x_AdditionalLightsWorldToShadow[((x_2573 + 1i) / 4i)][((x_2576 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_2571.y, x_2571.y, x_2571.y, x_2571.y) * x_2580);
      let x_2582 : i32 = u_xlati83;
      let x_2584 : i32 = u_xlati83;
      let x_2587 : vec4<f32> = x_744.x_AdditionalLightsWorldToShadow[(x_2582 / 4i)][(x_2584 % 4i)];
      let x_2588 : vec3<f32> = vs_TEXCOORD7;
      let x_2591 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2587 * vec4<f32>(x_2588.x, x_2588.x, x_2588.x, x_2588.x)) + x_2591);
      let x_2593 : i32 = u_xlati83;
      let x_2596 : i32 = u_xlati83;
      let x_2600 : vec4<f32> = x_744.x_AdditionalLightsWorldToShadow[((x_2593 + 2i) / 4i)][((x_2596 + 2i) % 4i)];
      let x_2601 : vec3<f32> = vs_TEXCOORD7;
      let x_2604 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2600 * vec4<f32>(x_2601.z, x_2601.z, x_2601.z, x_2601.z)) + x_2604);
      let x_2606 : vec4<f32> = u_xlat10;
      let x_2607 : i32 = u_xlati83;
      let x_2610 : i32 = u_xlati83;
      let x_2614 : vec4<f32> = x_744.x_AdditionalLightsWorldToShadow[((x_2607 + 3i) / 4i)][((x_2610 + 3i) % 4i)];
      u_xlat10 = (x_2606 + x_2614);
      let x_2616 : vec4<f32> = u_xlat10;
      let x_2618 : vec4<f32> = u_xlat10;
      let x_2620 : vec3<f32> = (vec3<f32>(x_2616.x, x_2616.y, x_2616.z) / vec3<f32>(x_2618.w, x_2618.w, x_2618.w));
      let x_2621 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2620.x, x_2620.y, x_2620.z, x_2621.w);
      let x_2624 : i32 = u_xlati80;
      let x_2626 : f32 = x_744.x_AdditionalShadowParams[x_2624].y;
      u_xlatb83 = (0.0f < x_2626);
      let x_2628 : bool = u_xlatb83;
      if (x_2628) {
        let x_2631 : i32 = u_xlati80;
        let x_2633 : f32 = x_744.x_AdditionalShadowParams[x_2631].y;
        u_xlatb83 = (1.0f == x_2633);
        let x_2635 : bool = u_xlatb83;
        if (x_2635) {
          let x_2638 : vec4<f32> = u_xlat10;
          let x_2641 : vec4<f32> = x_744.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2638.x, x_2638.y, x_2638.x, x_2638.y) + x_2641);
          let x_2644 : vec4<f32> = u_xlat11;
          let x_2645 : vec2<f32> = vec2<f32>(x_2644.x, x_2644.y);
          let x_2647 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2645.x, x_2645.y, x_2647);
          let x_2655 : vec3<f32> = txVec30;
          let x_2657 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2655.xy, x_2655.z);
          u_xlat12.x = x_2657;
          let x_2660 : vec4<f32> = u_xlat11;
          let x_2661 : vec2<f32> = vec2<f32>(x_2660.z, x_2660.w);
          let x_2663 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_2661.x, x_2661.y, x_2663);
          let x_2670 : vec3<f32> = txVec31;
          let x_2672 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2670.xy, x_2670.z);
          u_xlat12.y = x_2672;
          let x_2674 : vec4<f32> = u_xlat10;
          let x_2677 : vec4<f32> = x_744.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_2674.x, x_2674.y, x_2674.x, x_2674.y) + x_2677);
          let x_2680 : vec4<f32> = u_xlat11;
          let x_2681 : vec2<f32> = vec2<f32>(x_2680.x, x_2680.y);
          let x_2683 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_2681.x, x_2681.y, x_2683);
          let x_2690 : vec3<f32> = txVec32;
          let x_2692 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2690.xy, x_2690.z);
          u_xlat12.z = x_2692;
          let x_2695 : vec4<f32> = u_xlat11;
          let x_2696 : vec2<f32> = vec2<f32>(x_2695.z, x_2695.w);
          let x_2698 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_2696.x, x_2696.y, x_2698);
          let x_2705 : vec3<f32> = txVec33;
          let x_2707 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2705.xy, x_2705.z);
          u_xlat12.w = x_2707;
          let x_2709 : vec4<f32> = u_xlat12;
          u_xlat83 = dot(x_2709, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2712 : i32 = u_xlati80;
          let x_2714 : f32 = x_744.x_AdditionalShadowParams[x_2712].y;
          u_xlatb84 = (2.0f == x_2714);
          let x_2716 : bool = u_xlatb84;
          if (x_2716) {
            let x_2719 : vec4<f32> = u_xlat10;
            let x_2722 : vec4<f32> = x_744.x_AdditionalShadowmapSize;
            let x_2725 : vec2<f32> = ((vec2<f32>(x_2719.x, x_2719.y) * vec2<f32>(x_2722.z, x_2722.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2726 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2725.x, x_2725.y, x_2726.z, x_2726.w);
            let x_2728 : vec4<f32> = u_xlat11;
            let x_2730 : vec2<f32> = floor(vec2<f32>(x_2728.x, x_2728.y));
            let x_2731 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2730.x, x_2730.y, x_2731.z, x_2731.w);
            let x_2734 : vec4<f32> = u_xlat10;
            let x_2737 : vec4<f32> = x_744.x_AdditionalShadowmapSize;
            let x_2740 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2734.x, x_2734.y) * vec2<f32>(x_2737.z, x_2737.w)) + -(vec2<f32>(x_2740.x, x_2740.y)));
            let x_2744 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2744.x, x_2744.x, x_2744.y, x_2744.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2747 : vec4<f32> = u_xlat12;
            let x_2749 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2747.x, x_2747.x, x_2747.z, x_2747.z) * vec4<f32>(x_2749.x, x_2749.x, x_2749.z, x_2749.z));
            let x_2752 : vec4<f32> = u_xlat13;
            let x_2754 : vec2<f32> = (vec2<f32>(x_2752.y, x_2752.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2755 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2754.x, x_2755.y, x_2754.y, x_2755.w);
            let x_2757 : vec4<f32> = u_xlat13;
            let x_2760 : vec2<f32> = u_xlat61;
            let x_2762 : vec2<f32> = ((vec2<f32>(x_2757.x, x_2757.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2760));
            let x_2763 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2762.x, x_2762.y, x_2763.z, x_2763.w);
            let x_2766 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_2766) + vec2<f32>(1.0f, 1.0f));
            let x_2769 : vec2<f32> = u_xlat61;
            let x_2770 : vec2<f32> = min(x_2769, vec2<f32>(0.0f, 0.0f));
            let x_2771 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2770.x, x_2770.y, x_2771.z, x_2771.w);
            let x_2773 : vec4<f32> = u_xlat14;
            let x_2776 : vec4<f32> = u_xlat14;
            let x_2779 : vec2<f32> = u_xlat63;
            let x_2780 : vec2<f32> = ((-(vec2<f32>(x_2773.x, x_2773.y)) * vec2<f32>(x_2776.x, x_2776.y)) + x_2779);
            let x_2781 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2780.x, x_2780.y, x_2781.z, x_2781.w);
            let x_2783 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_2783, vec2<f32>(0.0f, 0.0f));
            let x_2785 : vec2<f32> = u_xlat61;
            let x_2787 : vec2<f32> = u_xlat61;
            let x_2789 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_2785) * x_2787) + vec2<f32>(x_2789.y, x_2789.w));
            let x_2792 : vec4<f32> = u_xlat14;
            let x_2794 : vec2<f32> = (vec2<f32>(x_2792.x, x_2792.y) + vec2<f32>(1.0f, 1.0f));
            let x_2795 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2794.x, x_2794.y, x_2795.z, x_2795.w);
            let x_2797 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_2797 + vec2<f32>(1.0f, 1.0f));
            let x_2799 : vec4<f32> = u_xlat13;
            let x_2801 : vec2<f32> = (vec2<f32>(x_2799.x, x_2799.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2802 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2801.x, x_2801.y, x_2802.z, x_2802.w);
            let x_2804 : vec2<f32> = u_xlat63;
            let x_2805 : vec2<f32> = (x_2804 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2806 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2805.x, x_2805.y, x_2806.z, x_2806.w);
            let x_2808 : vec4<f32> = u_xlat14;
            let x_2810 : vec2<f32> = (vec2<f32>(x_2808.x, x_2808.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2811 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2810.x, x_2810.y, x_2811.z, x_2811.w);
            let x_2813 : vec2<f32> = u_xlat61;
            let x_2814 : vec2<f32> = (x_2813 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2815 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2814.x, x_2814.y, x_2815.z, x_2815.w);
            let x_2817 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_2817.y, x_2817.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2821 : f32 = u_xlat14.x;
            u_xlat15.z = x_2821;
            let x_2824 : f32 = u_xlat61.x;
            u_xlat15.w = x_2824;
            let x_2827 : f32 = u_xlat16.x;
            u_xlat13.z = x_2827;
            let x_2830 : f32 = u_xlat12.x;
            u_xlat13.w = x_2830;
            let x_2832 : vec4<f32> = u_xlat13;
            let x_2834 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2832.z, x_2832.w, x_2832.x, x_2832.z) + vec4<f32>(x_2834.z, x_2834.w, x_2834.x, x_2834.z));
            let x_2838 : f32 = u_xlat15.y;
            u_xlat14.z = x_2838;
            let x_2841 : f32 = u_xlat61.y;
            u_xlat14.w = x_2841;
            let x_2844 : f32 = u_xlat13.y;
            u_xlat16.z = x_2844;
            let x_2847 : f32 = u_xlat12.z;
            u_xlat16.w = x_2847;
            let x_2849 : vec4<f32> = u_xlat14;
            let x_2851 : vec4<f32> = u_xlat16;
            let x_2853 : vec3<f32> = (vec3<f32>(x_2849.z, x_2849.y, x_2849.w) + vec3<f32>(x_2851.z, x_2851.y, x_2851.w));
            let x_2854 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2853.x, x_2853.y, x_2853.z, x_2854.w);
            let x_2856 : vec4<f32> = u_xlat13;
            let x_2858 : vec4<f32> = u_xlat17;
            let x_2860 : vec3<f32> = (vec3<f32>(x_2856.x, x_2856.z, x_2856.w) / vec3<f32>(x_2858.z, x_2858.w, x_2858.y));
            let x_2861 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2860.x, x_2860.y, x_2860.z, x_2861.w);
            let x_2863 : vec4<f32> = u_xlat13;
            let x_2865 : vec3<f32> = (vec3<f32>(x_2863.x, x_2863.y, x_2863.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2866 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2865.x, x_2865.y, x_2865.z, x_2866.w);
            let x_2868 : vec4<f32> = u_xlat16;
            let x_2870 : vec4<f32> = u_xlat12;
            let x_2872 : vec3<f32> = (vec3<f32>(x_2868.z, x_2868.y, x_2868.w) / vec3<f32>(x_2870.x, x_2870.y, x_2870.z));
            let x_2873 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2872.x, x_2872.y, x_2872.z, x_2873.w);
            let x_2875 : vec4<f32> = u_xlat14;
            let x_2877 : vec3<f32> = (vec3<f32>(x_2875.x, x_2875.y, x_2875.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2878 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2877.x, x_2877.y, x_2877.z, x_2878.w);
            let x_2880 : vec4<f32> = u_xlat13;
            let x_2883 : vec4<f32> = x_744.x_AdditionalShadowmapSize;
            let x_2885 : vec3<f32> = (vec3<f32>(x_2880.y, x_2880.x, x_2880.z) * vec3<f32>(x_2883.x, x_2883.x, x_2883.x));
            let x_2886 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2885.x, x_2885.y, x_2885.z, x_2886.w);
            let x_2888 : vec4<f32> = u_xlat14;
            let x_2891 : vec4<f32> = x_744.x_AdditionalShadowmapSize;
            let x_2893 : vec3<f32> = (vec3<f32>(x_2888.x, x_2888.y, x_2888.z) * vec3<f32>(x_2891.y, x_2891.y, x_2891.y));
            let x_2894 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2893.x, x_2893.y, x_2893.z, x_2894.w);
            let x_2897 : f32 = u_xlat14.x;
            u_xlat13.w = x_2897;
            let x_2899 : vec4<f32> = u_xlat11;
            let x_2902 : vec4<f32> = x_744.x_AdditionalShadowmapSize;
            let x_2905 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2899.x, x_2899.y, x_2899.x, x_2899.y) * vec4<f32>(x_2902.x, x_2902.y, x_2902.x, x_2902.y)) + vec4<f32>(x_2905.y, x_2905.w, x_2905.x, x_2905.w));
            let x_2908 : vec4<f32> = u_xlat11;
            let x_2911 : vec4<f32> = x_744.x_AdditionalShadowmapSize;
            let x_2914 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_2908.x, x_2908.y) * vec2<f32>(x_2911.x, x_2911.y)) + vec2<f32>(x_2914.z, x_2914.w));
            let x_2918 : f32 = u_xlat13.y;
            u_xlat14.w = x_2918;
            let x_2920 : vec4<f32> = u_xlat14;
            let x_2921 : vec2<f32> = vec2<f32>(x_2920.y, x_2920.z);
            let x_2922 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2922.x, x_2921.x, x_2922.z, x_2921.y);
            let x_2924 : vec4<f32> = u_xlat11;
            let x_2927 : vec4<f32> = x_744.x_AdditionalShadowmapSize;
            let x_2930 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_2924.x, x_2924.y, x_2924.x, x_2924.y) * vec4<f32>(x_2927.x, x_2927.y, x_2927.x, x_2927.y)) + vec4<f32>(x_2930.x, x_2930.y, x_2930.z, x_2930.y));
            let x_2933 : vec4<f32> = u_xlat11;
            let x_2936 : vec4<f32> = x_744.x_AdditionalShadowmapSize;
            let x_2939 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2933.x, x_2933.y, x_2933.x, x_2933.y) * vec4<f32>(x_2936.x, x_2936.y, x_2936.x, x_2936.y)) + vec4<f32>(x_2939.w, x_2939.y, x_2939.w, x_2939.z));
            let x_2942 : vec4<f32> = u_xlat11;
            let x_2945 : vec4<f32> = x_744.x_AdditionalShadowmapSize;
            let x_2948 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_2942.x, x_2942.y, x_2942.x, x_2942.y) * vec4<f32>(x_2945.x, x_2945.y, x_2945.x, x_2945.y)) + vec4<f32>(x_2948.x, x_2948.w, x_2948.z, x_2948.w));
            let x_2951 : vec4<f32> = u_xlat12;
            let x_2953 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_2951.x, x_2951.x, x_2951.x, x_2951.y) * vec4<f32>(x_2953.z, x_2953.w, x_2953.y, x_2953.z));
            let x_2956 : vec4<f32> = u_xlat12;
            let x_2958 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_2956.y, x_2956.y, x_2956.z, x_2956.z) * x_2958);
            let x_2961 : f32 = u_xlat12.z;
            let x_2963 : f32 = u_xlat17.y;
            u_xlat84 = (x_2961 * x_2963);
            let x_2966 : vec4<f32> = u_xlat15;
            let x_2967 : vec2<f32> = vec2<f32>(x_2966.x, x_2966.y);
            let x_2969 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_2967.x, x_2967.y, x_2969);
            let x_2976 : vec3<f32> = txVec34;
            let x_2978 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2976.xy, x_2976.z);
            u_xlat85 = x_2978;
            let x_2980 : vec4<f32> = u_xlat15;
            let x_2981 : vec2<f32> = vec2<f32>(x_2980.z, x_2980.w);
            let x_2983 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_2981.x, x_2981.y, x_2983);
            let x_2990 : vec3<f32> = txVec35;
            let x_2992 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2990.xy, x_2990.z);
            u_xlat11.x = x_2992;
            let x_2995 : f32 = u_xlat11.x;
            let x_2997 : f32 = u_xlat18.y;
            u_xlat11.x = (x_2995 * x_2997);
            let x_3001 : f32 = u_xlat18.x;
            let x_3002 : f32 = u_xlat85;
            let x_3005 : f32 = u_xlat11.x;
            u_xlat85 = ((x_3001 * x_3002) + x_3005);
            let x_3008 : vec2<f32> = u_xlat61;
            let x_3010 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_3008.x, x_3008.y, x_3010);
            let x_3017 : vec3<f32> = txVec36;
            let x_3019 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3017.xy, x_3017.z);
            u_xlat11.x = x_3019;
            let x_3022 : f32 = u_xlat18.z;
            let x_3024 : f32 = u_xlat11.x;
            let x_3026 : f32 = u_xlat85;
            u_xlat85 = ((x_3022 * x_3024) + x_3026);
            let x_3029 : vec4<f32> = u_xlat14;
            let x_3030 : vec2<f32> = vec2<f32>(x_3029.x, x_3029.y);
            let x_3032 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_3030.x, x_3030.y, x_3032);
            let x_3039 : vec3<f32> = txVec37;
            let x_3041 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3039.xy, x_3039.z);
            u_xlat11.x = x_3041;
            let x_3044 : f32 = u_xlat18.w;
            let x_3046 : f32 = u_xlat11.x;
            let x_3048 : f32 = u_xlat85;
            u_xlat85 = ((x_3044 * x_3046) + x_3048);
            let x_3051 : vec4<f32> = u_xlat16;
            let x_3052 : vec2<f32> = vec2<f32>(x_3051.x, x_3051.y);
            let x_3054 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_3052.x, x_3052.y, x_3054);
            let x_3061 : vec3<f32> = txVec38;
            let x_3063 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3061.xy, x_3061.z);
            u_xlat11.x = x_3063;
            let x_3066 : f32 = u_xlat19.x;
            let x_3068 : f32 = u_xlat11.x;
            let x_3070 : f32 = u_xlat85;
            u_xlat85 = ((x_3066 * x_3068) + x_3070);
            let x_3073 : vec4<f32> = u_xlat16;
            let x_3074 : vec2<f32> = vec2<f32>(x_3073.z, x_3073.w);
            let x_3076 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_3074.x, x_3074.y, x_3076);
            let x_3083 : vec3<f32> = txVec39;
            let x_3085 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3083.xy, x_3083.z);
            u_xlat11.x = x_3085;
            let x_3088 : f32 = u_xlat19.y;
            let x_3090 : f32 = u_xlat11.x;
            let x_3092 : f32 = u_xlat85;
            u_xlat85 = ((x_3088 * x_3090) + x_3092);
            let x_3095 : vec4<f32> = u_xlat14;
            let x_3096 : vec2<f32> = vec2<f32>(x_3095.z, x_3095.w);
            let x_3098 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_3096.x, x_3096.y, x_3098);
            let x_3105 : vec3<f32> = txVec40;
            let x_3107 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3105.xy, x_3105.z);
            u_xlat11.x = x_3107;
            let x_3110 : f32 = u_xlat19.z;
            let x_3112 : f32 = u_xlat11.x;
            let x_3114 : f32 = u_xlat85;
            u_xlat85 = ((x_3110 * x_3112) + x_3114);
            let x_3117 : vec4<f32> = u_xlat13;
            let x_3118 : vec2<f32> = vec2<f32>(x_3117.x, x_3117.y);
            let x_3120 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_3118.x, x_3118.y, x_3120);
            let x_3127 : vec3<f32> = txVec41;
            let x_3129 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3127.xy, x_3127.z);
            u_xlat11.x = x_3129;
            let x_3132 : f32 = u_xlat19.w;
            let x_3134 : f32 = u_xlat11.x;
            let x_3136 : f32 = u_xlat85;
            u_xlat85 = ((x_3132 * x_3134) + x_3136);
            let x_3139 : vec4<f32> = u_xlat13;
            let x_3140 : vec2<f32> = vec2<f32>(x_3139.z, x_3139.w);
            let x_3142 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_3140.x, x_3140.y, x_3142);
            let x_3149 : vec3<f32> = txVec42;
            let x_3151 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3149.xy, x_3149.z);
            u_xlat11.x = x_3151;
            let x_3153 : f32 = u_xlat84;
            let x_3155 : f32 = u_xlat11.x;
            let x_3157 : f32 = u_xlat85;
            u_xlat83 = ((x_3153 * x_3155) + x_3157);
          } else {
            let x_3160 : vec4<f32> = u_xlat10;
            let x_3163 : vec4<f32> = x_744.x_AdditionalShadowmapSize;
            let x_3166 : vec2<f32> = ((vec2<f32>(x_3160.x, x_3160.y) * vec2<f32>(x_3163.z, x_3163.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3167 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3166.x, x_3166.y, x_3167.z, x_3167.w);
            let x_3169 : vec4<f32> = u_xlat11;
            let x_3171 : vec2<f32> = floor(vec2<f32>(x_3169.x, x_3169.y));
            let x_3172 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3171.x, x_3171.y, x_3172.z, x_3172.w);
            let x_3174 : vec4<f32> = u_xlat10;
            let x_3177 : vec4<f32> = x_744.x_AdditionalShadowmapSize;
            let x_3180 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3174.x, x_3174.y) * vec2<f32>(x_3177.z, x_3177.w)) + -(vec2<f32>(x_3180.x, x_3180.y)));
            let x_3184 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3184.x, x_3184.x, x_3184.y, x_3184.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3187 : vec4<f32> = u_xlat12;
            let x_3189 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3187.x, x_3187.x, x_3187.z, x_3187.z) * vec4<f32>(x_3189.x, x_3189.x, x_3189.z, x_3189.z));
            let x_3192 : vec4<f32> = u_xlat13;
            let x_3194 : vec2<f32> = (vec2<f32>(x_3192.y, x_3192.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3195 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3195.x, x_3194.x, x_3195.z, x_3194.y);
            let x_3197 : vec4<f32> = u_xlat13;
            let x_3200 : vec2<f32> = u_xlat61;
            let x_3202 : vec2<f32> = ((vec2<f32>(x_3197.x, x_3197.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3200));
            let x_3203 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3202.x, x_3203.y, x_3202.y, x_3203.w);
            let x_3205 : vec2<f32> = u_xlat61;
            let x_3207 : vec2<f32> = (-(x_3205) + vec2<f32>(1.0f, 1.0f));
            let x_3208 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3207.x, x_3207.y, x_3208.z, x_3208.w);
            let x_3210 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_3210, vec2<f32>(0.0f, 0.0f));
            let x_3212 : vec2<f32> = u_xlat63;
            let x_3214 : vec2<f32> = u_xlat63;
            let x_3216 : vec4<f32> = u_xlat13;
            let x_3218 : vec2<f32> = ((-(x_3212) * x_3214) + vec2<f32>(x_3216.x, x_3216.y));
            let x_3219 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3218.x, x_3218.y, x_3219.z, x_3219.w);
            let x_3221 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_3221, vec2<f32>(0.0f, 0.0f));
            let x_3224 : vec2<f32> = u_xlat63;
            let x_3226 : vec2<f32> = u_xlat63;
            let x_3228 : vec4<f32> = u_xlat12;
            let x_3230 : vec2<f32> = ((-(x_3224) * x_3226) + vec2<f32>(x_3228.y, x_3228.w));
            let x_3231 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_3230.x, x_3231.y, x_3230.y);
            let x_3233 : vec4<f32> = u_xlat13;
            let x_3235 : vec2<f32> = (vec2<f32>(x_3233.x, x_3233.y) + vec2<f32>(2.0f, 2.0f));
            let x_3236 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3235.x, x_3235.y, x_3236.z, x_3236.w);
            let x_3238 : vec3<f32> = u_xlat37;
            let x_3240 : vec2<f32> = (vec2<f32>(x_3238.x, x_3238.z) + vec2<f32>(2.0f, 2.0f));
            let x_3241 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3241.x, x_3240.x, x_3241.z, x_3240.y);
            let x_3244 : f32 = u_xlat12.y;
            u_xlat15.z = (x_3244 * 0.08163200318813323975f);
            let x_3247 : vec4<f32> = u_xlat12;
            let x_3249 : vec3<f32> = (vec3<f32>(x_3247.z, x_3247.x, x_3247.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3250 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3249.x, x_3249.y, x_3249.z, x_3250.w);
            let x_3252 : vec4<f32> = u_xlat13;
            let x_3254 : vec2<f32> = (vec2<f32>(x_3252.x, x_3252.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3255 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3254.x, x_3254.y, x_3255.z, x_3255.w);
            let x_3258 : f32 = u_xlat16.y;
            u_xlat15.x = x_3258;
            let x_3260 : vec2<f32> = u_xlat61;
            let x_3263 : vec2<f32> = ((vec2<f32>(x_3260.x, x_3260.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3264 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3264.x, x_3263.x, x_3264.z, x_3263.y);
            let x_3266 : vec2<f32> = u_xlat61;
            let x_3269 : vec2<f32> = ((vec2<f32>(x_3266.x, x_3266.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3270 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3269.x, x_3270.y, x_3269.y, x_3270.w);
            let x_3273 : f32 = u_xlat12.x;
            u_xlat13.y = x_3273;
            let x_3276 : f32 = u_xlat14.y;
            u_xlat13.w = x_3276;
            let x_3278 : vec4<f32> = u_xlat13;
            let x_3279 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3278 + x_3279);
            let x_3281 : vec2<f32> = u_xlat61;
            let x_3284 : vec2<f32> = ((vec2<f32>(x_3281.y, x_3281.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3285 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3285.x, x_3284.x, x_3285.z, x_3284.y);
            let x_3287 : vec2<f32> = u_xlat61;
            let x_3290 : vec2<f32> = ((vec2<f32>(x_3287.y, x_3287.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3291 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3290.x, x_3291.y, x_3290.y, x_3291.w);
            let x_3294 : f32 = u_xlat12.y;
            u_xlat14.y = x_3294;
            let x_3296 : vec4<f32> = u_xlat14;
            let x_3297 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_3296 + x_3297);
            let x_3299 : vec4<f32> = u_xlat13;
            let x_3300 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_3299 / x_3300);
            let x_3302 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3302 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3304 : vec4<f32> = u_xlat14;
            let x_3305 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_3304 / x_3305);
            let x_3307 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3307 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3309 : vec4<f32> = u_xlat13;
            let x_3312 : vec4<f32> = x_744.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3309.w, x_3309.x, x_3309.y, x_3309.z) * vec4<f32>(x_3312.x, x_3312.x, x_3312.x, x_3312.x));
            let x_3315 : vec4<f32> = u_xlat14;
            let x_3318 : vec4<f32> = x_744.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3315.x, x_3315.w, x_3315.y, x_3315.z) * vec4<f32>(x_3318.y, x_3318.y, x_3318.y, x_3318.y));
            let x_3321 : vec4<f32> = u_xlat13;
            let x_3322 : vec3<f32> = vec3<f32>(x_3321.y, x_3321.z, x_3321.w);
            let x_3323 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3322.x, x_3323.y, x_3322.y, x_3322.z);
            let x_3326 : f32 = u_xlat14.x;
            u_xlat16.y = x_3326;
            let x_3328 : vec4<f32> = u_xlat11;
            let x_3331 : vec4<f32> = x_744.x_AdditionalShadowmapSize;
            let x_3334 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3328.x, x_3328.y, x_3328.x, x_3328.y) * vec4<f32>(x_3331.x, x_3331.y, x_3331.x, x_3331.y)) + vec4<f32>(x_3334.x, x_3334.y, x_3334.z, x_3334.y));
            let x_3337 : vec4<f32> = u_xlat11;
            let x_3340 : vec4<f32> = x_744.x_AdditionalShadowmapSize;
            let x_3343 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_3337.x, x_3337.y) * vec2<f32>(x_3340.x, x_3340.y)) + vec2<f32>(x_3343.w, x_3343.y));
            let x_3347 : f32 = u_xlat16.y;
            u_xlat13.y = x_3347;
            let x_3350 : f32 = u_xlat14.z;
            u_xlat16.y = x_3350;
            let x_3352 : vec4<f32> = u_xlat11;
            let x_3355 : vec4<f32> = x_744.x_AdditionalShadowmapSize;
            let x_3358 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3352.x, x_3352.y, x_3352.x, x_3352.y) * vec4<f32>(x_3355.x, x_3355.y, x_3355.x, x_3355.y)) + vec4<f32>(x_3358.x, x_3358.y, x_3358.z, x_3358.y));
            let x_3361 : vec4<f32> = u_xlat11;
            let x_3364 : vec4<f32> = x_744.x_AdditionalShadowmapSize;
            let x_3367 : vec4<f32> = u_xlat16;
            let x_3369 : vec2<f32> = ((vec2<f32>(x_3361.x, x_3361.y) * vec2<f32>(x_3364.x, x_3364.y)) + vec2<f32>(x_3367.w, x_3367.y));
            let x_3370 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3369.x, x_3369.y, x_3370.z, x_3370.w);
            let x_3373 : f32 = u_xlat16.y;
            u_xlat13.z = x_3373;
            let x_3376 : vec4<f32> = u_xlat11;
            let x_3379 : vec4<f32> = x_744.x_AdditionalShadowmapSize;
            let x_3382 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3376.x, x_3376.y, x_3376.x, x_3376.y) * vec4<f32>(x_3379.x, x_3379.y, x_3379.x, x_3379.y)) + vec4<f32>(x_3382.x, x_3382.y, x_3382.x, x_3382.z));
            let x_3386 : f32 = u_xlat14.w;
            u_xlat16.y = x_3386;
            let x_3389 : vec4<f32> = u_xlat11;
            let x_3392 : vec4<f32> = x_744.x_AdditionalShadowmapSize;
            let x_3395 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3389.x, x_3389.y, x_3389.x, x_3389.y) * vec4<f32>(x_3392.x, x_3392.y, x_3392.x, x_3392.y)) + vec4<f32>(x_3395.x, x_3395.y, x_3395.z, x_3395.y));
            let x_3399 : vec4<f32> = u_xlat11;
            let x_3402 : vec4<f32> = x_744.x_AdditionalShadowmapSize;
            let x_3405 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3399.x, x_3399.y) * vec2<f32>(x_3402.x, x_3402.y)) + vec2<f32>(x_3405.w, x_3405.y));
            let x_3409 : f32 = u_xlat16.y;
            u_xlat13.w = x_3409;
            let x_3412 : vec4<f32> = u_xlat11;
            let x_3415 : vec4<f32> = x_744.x_AdditionalShadowmapSize;
            let x_3418 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3412.x, x_3412.y) * vec2<f32>(x_3415.x, x_3415.y)) + vec2<f32>(x_3418.x, x_3418.w));
            let x_3421 : vec4<f32> = u_xlat16;
            let x_3422 : vec3<f32> = vec3<f32>(x_3421.x, x_3421.z, x_3421.w);
            let x_3423 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3422.x, x_3423.y, x_3422.y, x_3422.z);
            let x_3425 : vec4<f32> = u_xlat11;
            let x_3428 : vec4<f32> = x_744.x_AdditionalShadowmapSize;
            let x_3431 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3425.x, x_3425.y, x_3425.x, x_3425.y) * vec4<f32>(x_3428.x, x_3428.y, x_3428.x, x_3428.y)) + vec4<f32>(x_3431.x, x_3431.y, x_3431.z, x_3431.y));
            let x_3434 : vec4<f32> = u_xlat11;
            let x_3437 : vec4<f32> = x_744.x_AdditionalShadowmapSize;
            let x_3440 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3434.x, x_3434.y) * vec2<f32>(x_3437.x, x_3437.y)) + vec2<f32>(x_3440.w, x_3440.y));
            let x_3444 : f32 = u_xlat13.x;
            u_xlat14.x = x_3444;
            let x_3446 : vec4<f32> = u_xlat11;
            let x_3449 : vec4<f32> = x_744.x_AdditionalShadowmapSize;
            let x_3452 : vec4<f32> = u_xlat14;
            let x_3454 : vec2<f32> = ((vec2<f32>(x_3446.x, x_3446.y) * vec2<f32>(x_3449.x, x_3449.y)) + vec2<f32>(x_3452.x, x_3452.y));
            let x_3455 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3454.x, x_3454.y, x_3455.z, x_3455.w);
            let x_3458 : vec4<f32> = u_xlat12;
            let x_3460 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3458.x, x_3458.x, x_3458.x, x_3458.x) * x_3460);
            let x_3463 : vec4<f32> = u_xlat12;
            let x_3465 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3463.y, x_3463.y, x_3463.y, x_3463.y) * x_3465);
            let x_3468 : vec4<f32> = u_xlat12;
            let x_3470 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3468.z, x_3468.z, x_3468.z, x_3468.z) * x_3470);
            let x_3472 : vec4<f32> = u_xlat12;
            let x_3474 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3472.w, x_3472.w, x_3472.w, x_3472.w) * x_3474);
            let x_3477 : vec4<f32> = u_xlat17;
            let x_3478 : vec2<f32> = vec2<f32>(x_3477.x, x_3477.y);
            let x_3480 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3478.x, x_3478.y, x_3480);
            let x_3487 : vec3<f32> = txVec43;
            let x_3489 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3487.xy, x_3487.z);
            u_xlat84 = x_3489;
            let x_3491 : vec4<f32> = u_xlat17;
            let x_3492 : vec2<f32> = vec2<f32>(x_3491.z, x_3491.w);
            let x_3494 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3492.x, x_3492.y, x_3494);
            let x_3501 : vec3<f32> = txVec44;
            let x_3503 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3501.xy, x_3501.z);
            u_xlat85 = x_3503;
            let x_3504 : f32 = u_xlat85;
            let x_3506 : f32 = u_xlat22.y;
            u_xlat85 = (x_3504 * x_3506);
            let x_3509 : f32 = u_xlat22.x;
            let x_3510 : f32 = u_xlat84;
            let x_3512 : f32 = u_xlat85;
            u_xlat84 = ((x_3509 * x_3510) + x_3512);
            let x_3515 : vec2<f32> = u_xlat61;
            let x_3517 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3515.x, x_3515.y, x_3517);
            let x_3524 : vec3<f32> = txVec45;
            let x_3526 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3524.xy, x_3524.z);
            u_xlat85 = x_3526;
            let x_3528 : f32 = u_xlat22.z;
            let x_3529 : f32 = u_xlat85;
            let x_3531 : f32 = u_xlat84;
            u_xlat84 = ((x_3528 * x_3529) + x_3531);
            let x_3534 : vec4<f32> = u_xlat20;
            let x_3535 : vec2<f32> = vec2<f32>(x_3534.x, x_3534.y);
            let x_3537 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3535.x, x_3535.y, x_3537);
            let x_3544 : vec3<f32> = txVec46;
            let x_3546 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3544.xy, x_3544.z);
            u_xlat85 = x_3546;
            let x_3548 : f32 = u_xlat22.w;
            let x_3549 : f32 = u_xlat85;
            let x_3551 : f32 = u_xlat84;
            u_xlat84 = ((x_3548 * x_3549) + x_3551);
            let x_3554 : vec4<f32> = u_xlat18;
            let x_3555 : vec2<f32> = vec2<f32>(x_3554.x, x_3554.y);
            let x_3557 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3555.x, x_3555.y, x_3557);
            let x_3564 : vec3<f32> = txVec47;
            let x_3566 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3564.xy, x_3564.z);
            u_xlat85 = x_3566;
            let x_3568 : f32 = u_xlat23.x;
            let x_3569 : f32 = u_xlat85;
            let x_3571 : f32 = u_xlat84;
            u_xlat84 = ((x_3568 * x_3569) + x_3571);
            let x_3574 : vec4<f32> = u_xlat18;
            let x_3575 : vec2<f32> = vec2<f32>(x_3574.z, x_3574.w);
            let x_3577 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3575.x, x_3575.y, x_3577);
            let x_3584 : vec3<f32> = txVec48;
            let x_3586 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3584.xy, x_3584.z);
            u_xlat85 = x_3586;
            let x_3588 : f32 = u_xlat23.y;
            let x_3589 : f32 = u_xlat85;
            let x_3591 : f32 = u_xlat84;
            u_xlat84 = ((x_3588 * x_3589) + x_3591);
            let x_3594 : vec4<f32> = u_xlat19;
            let x_3595 : vec2<f32> = vec2<f32>(x_3594.x, x_3594.y);
            let x_3597 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3595.x, x_3595.y, x_3597);
            let x_3604 : vec3<f32> = txVec49;
            let x_3606 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3604.xy, x_3604.z);
            u_xlat85 = x_3606;
            let x_3608 : f32 = u_xlat23.z;
            let x_3609 : f32 = u_xlat85;
            let x_3611 : f32 = u_xlat84;
            u_xlat84 = ((x_3608 * x_3609) + x_3611);
            let x_3614 : vec4<f32> = u_xlat20;
            let x_3615 : vec2<f32> = vec2<f32>(x_3614.z, x_3614.w);
            let x_3617 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3615.x, x_3615.y, x_3617);
            let x_3624 : vec3<f32> = txVec50;
            let x_3626 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3624.xy, x_3624.z);
            u_xlat85 = x_3626;
            let x_3628 : f32 = u_xlat23.w;
            let x_3629 : f32 = u_xlat85;
            let x_3631 : f32 = u_xlat84;
            u_xlat84 = ((x_3628 * x_3629) + x_3631);
            let x_3634 : vec4<f32> = u_xlat21;
            let x_3635 : vec2<f32> = vec2<f32>(x_3634.x, x_3634.y);
            let x_3637 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3635.x, x_3635.y, x_3637);
            let x_3644 : vec3<f32> = txVec51;
            let x_3646 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3644.xy, x_3644.z);
            u_xlat85 = x_3646;
            let x_3648 : f32 = u_xlat24.x;
            let x_3649 : f32 = u_xlat85;
            let x_3651 : f32 = u_xlat84;
            u_xlat84 = ((x_3648 * x_3649) + x_3651);
            let x_3654 : vec4<f32> = u_xlat21;
            let x_3655 : vec2<f32> = vec2<f32>(x_3654.z, x_3654.w);
            let x_3657 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_3655.x, x_3655.y, x_3657);
            let x_3664 : vec3<f32> = txVec52;
            let x_3666 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3664.xy, x_3664.z);
            u_xlat85 = x_3666;
            let x_3668 : f32 = u_xlat24.y;
            let x_3669 : f32 = u_xlat85;
            let x_3671 : f32 = u_xlat84;
            u_xlat84 = ((x_3668 * x_3669) + x_3671);
            let x_3674 : vec2<f32> = u_xlat38;
            let x_3676 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_3674.x, x_3674.y, x_3676);
            let x_3683 : vec3<f32> = txVec53;
            let x_3685 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3683.xy, x_3683.z);
            u_xlat85 = x_3685;
            let x_3687 : f32 = u_xlat24.z;
            let x_3688 : f32 = u_xlat85;
            let x_3690 : f32 = u_xlat84;
            u_xlat84 = ((x_3687 * x_3688) + x_3690);
            let x_3693 : vec2<f32> = u_xlat69;
            let x_3695 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_3693.x, x_3693.y, x_3695);
            let x_3702 : vec3<f32> = txVec54;
            let x_3704 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3702.xy, x_3702.z);
            u_xlat85 = x_3704;
            let x_3706 : f32 = u_xlat24.w;
            let x_3707 : f32 = u_xlat85;
            let x_3709 : f32 = u_xlat84;
            u_xlat84 = ((x_3706 * x_3707) + x_3709);
            let x_3712 : vec4<f32> = u_xlat16;
            let x_3713 : vec2<f32> = vec2<f32>(x_3712.x, x_3712.y);
            let x_3715 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_3713.x, x_3713.y, x_3715);
            let x_3722 : vec3<f32> = txVec55;
            let x_3724 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3722.xy, x_3722.z);
            u_xlat85 = x_3724;
            let x_3726 : f32 = u_xlat12.x;
            let x_3727 : f32 = u_xlat85;
            let x_3729 : f32 = u_xlat84;
            u_xlat84 = ((x_3726 * x_3727) + x_3729);
            let x_3732 : vec4<f32> = u_xlat16;
            let x_3733 : vec2<f32> = vec2<f32>(x_3732.z, x_3732.w);
            let x_3735 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_3733.x, x_3733.y, x_3735);
            let x_3742 : vec3<f32> = txVec56;
            let x_3744 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3742.xy, x_3742.z);
            u_xlat85 = x_3744;
            let x_3746 : f32 = u_xlat12.y;
            let x_3747 : f32 = u_xlat85;
            let x_3749 : f32 = u_xlat84;
            u_xlat84 = ((x_3746 * x_3747) + x_3749);
            let x_3752 : vec2<f32> = u_xlat64;
            let x_3754 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_3752.x, x_3752.y, x_3754);
            let x_3761 : vec3<f32> = txVec57;
            let x_3763 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3761.xy, x_3761.z);
            u_xlat85 = x_3763;
            let x_3765 : f32 = u_xlat12.z;
            let x_3766 : f32 = u_xlat85;
            let x_3768 : f32 = u_xlat84;
            u_xlat84 = ((x_3765 * x_3766) + x_3768);
            let x_3771 : vec4<f32> = u_xlat11;
            let x_3772 : vec2<f32> = vec2<f32>(x_3771.x, x_3771.y);
            let x_3774 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_3772.x, x_3772.y, x_3774);
            let x_3781 : vec3<f32> = txVec58;
            let x_3783 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3781.xy, x_3781.z);
            u_xlat85 = x_3783;
            let x_3785 : f32 = u_xlat12.w;
            let x_3786 : f32 = u_xlat85;
            let x_3788 : f32 = u_xlat84;
            u_xlat83 = ((x_3785 * x_3786) + x_3788);
          }
        }
      } else {
        let x_3792 : vec4<f32> = u_xlat10;
        let x_3793 : vec2<f32> = vec2<f32>(x_3792.x, x_3792.y);
        let x_3795 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_3793.x, x_3793.y, x_3795);
        let x_3802 : vec3<f32> = txVec59;
        let x_3804 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3802.xy, x_3802.z);
        u_xlat83 = x_3804;
      }
      let x_3805 : i32 = u_xlati80;
      let x_3807 : f32 = x_744.x_AdditionalShadowParams[x_3805].x;
      u_xlat84 = (1.0f + -(x_3807));
      let x_3810 : f32 = u_xlat83;
      let x_3811 : i32 = u_xlati80;
      let x_3813 : f32 = x_744.x_AdditionalShadowParams[x_3811].x;
      let x_3815 : f32 = u_xlat84;
      u_xlat83 = ((x_3810 * x_3813) + x_3815);
      let x_3818 : f32 = u_xlat10.z;
      u_xlatb84 = (0.0f >= x_3818);
      let x_3821 : f32 = u_xlat10.z;
      u_xlatb10.x = (x_3821 >= 1.0f);
      let x_3824 : bool = u_xlatb84;
      let x_3826 : bool = u_xlatb10.x;
      u_xlatb84 = (x_3824 | x_3826);
      let x_3828 : bool = u_xlatb84;
      let x_3829 : f32 = u_xlat83;
      u_xlat83 = select(x_3829, 1.0f, x_3828);
    } else {
      u_xlat83 = 1.0f;
    }
    let x_3832 : f32 = u_xlat83;
    u_xlat84 = (-(x_3832) + 1.0f);
    let x_3835 : f32 = u_xlat77;
    let x_3836 : f32 = u_xlat84;
    let x_3838 : f32 = u_xlat83;
    u_xlat83 = ((x_3835 * x_3836) + x_3838);
    let x_3840 : f32 = u_xlat81;
    let x_3841 : f32 = u_xlat83;
    u_xlat81 = (x_3840 * x_3841);
    let x_3843 : vec4<f32> = u_xlat1;
    let x_3845 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_3843.x, x_3843.y, x_3843.z), vec3<f32>(x_3845.x, x_3845.y, x_3845.z));
    let x_3848 : f32 = u_xlat83;
    u_xlat83 = clamp(x_3848, 0.0f, 1.0f);
    let x_3850 : f32 = u_xlat81;
    let x_3851 : f32 = u_xlat83;
    u_xlat81 = (x_3850 * x_3851);
    let x_3853 : f32 = u_xlat81;
    let x_3855 : i32 = u_xlati80;
    let x_3857 : vec4<f32> = x_2402.x_AdditionalLightsColor[x_3855];
    let x_3859 : vec3<f32> = (vec3<f32>(x_3853, x_3853, x_3853) * vec3<f32>(x_3857.x, x_3857.y, x_3857.z));
    let x_3860 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3859.x, x_3859.y, x_3859.z, x_3860.w);
    let x_3862 : vec4<f32> = u_xlat8;
    let x_3864 : f32 = u_xlat82;
    let x_3867 : vec3<f32> = u_xlat2;
    let x_3868 : vec3<f32> = ((vec3<f32>(x_3862.x, x_3862.y, x_3862.z) * vec3<f32>(x_3864, x_3864, x_3864)) + x_3867);
    let x_3869 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3868.x, x_3868.y, x_3868.z, x_3869.w);
    let x_3871 : vec4<f32> = u_xlat8;
    let x_3873 : vec4<f32> = u_xlat8;
    u_xlat80 = dot(vec3<f32>(x_3871.x, x_3871.y, x_3871.z), vec3<f32>(x_3873.x, x_3873.y, x_3873.z));
    let x_3876 : f32 = u_xlat80;
    u_xlat80 = max(x_3876, 1.17549435e-38f);
    let x_3878 : f32 = u_xlat80;
    u_xlat80 = inverseSqrt(x_3878);
    let x_3880 : f32 = u_xlat80;
    let x_3882 : vec4<f32> = u_xlat8;
    let x_3884 : vec3<f32> = (vec3<f32>(x_3880, x_3880, x_3880) * vec3<f32>(x_3882.x, x_3882.y, x_3882.z));
    let x_3885 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3884.x, x_3884.y, x_3884.z, x_3885.w);
    let x_3887 : vec4<f32> = u_xlat1;
    let x_3889 : vec4<f32> = u_xlat8;
    u_xlat80 = dot(vec3<f32>(x_3887.x, x_3887.y, x_3887.z), vec3<f32>(x_3889.x, x_3889.y, x_3889.z));
    let x_3892 : f32 = u_xlat80;
    u_xlat80 = clamp(x_3892, 0.0f, 1.0f);
    let x_3894 : vec4<f32> = u_xlat9;
    let x_3896 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_3894.x, x_3894.y, x_3894.z), vec3<f32>(x_3896.x, x_3896.y, x_3896.z));
    let x_3899 : f32 = u_xlat81;
    u_xlat81 = clamp(x_3899, 0.0f, 1.0f);
    let x_3901 : f32 = u_xlat80;
    let x_3902 : f32 = u_xlat80;
    u_xlat80 = (x_3901 * x_3902);
    let x_3904 : f32 = u_xlat80;
    let x_3906 : f32 = u_xlat0.x;
    u_xlat80 = ((x_3904 * x_3906) + 1.00001001358032226562f);
    let x_3909 : f32 = u_xlat81;
    let x_3910 : f32 = u_xlat81;
    u_xlat81 = (x_3909 * x_3910);
    let x_3912 : f32 = u_xlat80;
    let x_3913 : f32 = u_xlat80;
    u_xlat80 = (x_3912 * x_3913);
    let x_3915 : f32 = u_xlat81;
    u_xlat81 = max(x_3915, 0.10000000149011611938f);
    let x_3917 : f32 = u_xlat80;
    let x_3918 : f32 = u_xlat81;
    u_xlat80 = (x_3917 * x_3918);
    let x_3920 : f32 = u_xlat78;
    let x_3921 : f32 = u_xlat80;
    u_xlat80 = (x_3920 * x_3921);
    let x_3923 : f32 = u_xlat76;
    let x_3924 : f32 = u_xlat80;
    u_xlat80 = (x_3923 / x_3924);
    let x_3926 : vec4<f32> = u_xlat5;
    let x_3928 : f32 = u_xlat80;
    let x_3931 : vec4<f32> = u_xlat4;
    let x_3933 : vec3<f32> = ((vec3<f32>(x_3926.x, x_3926.y, x_3926.z) * vec3<f32>(x_3928, x_3928, x_3928)) + vec3<f32>(x_3931.x, x_3931.y, x_3931.z));
    let x_3934 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3933.x, x_3933.y, x_3933.z, x_3934.w);
    let x_3936 : vec4<f32> = u_xlat8;
    let x_3938 : vec4<f32> = u_xlat10;
    let x_3941 : vec4<f32> = u_xlat7;
    let x_3943 : vec3<f32> = ((vec3<f32>(x_3936.x, x_3936.y, x_3936.z) * vec3<f32>(x_3938.x, x_3938.y, x_3938.z)) + vec3<f32>(x_3941.x, x_3941.y, x_3941.z));
    let x_3944 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3943.x, x_3943.y, x_3943.z, x_3944.w);

    continuing {
      let x_3946 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3946 + bitcast<u32>(1i));
    }
  }
  let x_3948 : vec4<f32> = u_xlat3;
  let x_3950 : f32 = u_xlat25;
  let x_3953 : vec4<f32> = u_xlat6;
  u_xlat0 = ((vec3<f32>(x_3948.x, x_3948.y, x_3948.z) * vec3<f32>(x_3950, x_3950, x_3950)) + vec3<f32>(x_3953.x, x_3953.y, x_3953.z));
  let x_3956 : vec4<f32> = u_xlat7;
  let x_3958 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_3956.x, x_3956.y, x_3956.z) + x_3958);
  let x_3962 : f32 = u_xlat75;
  let x_3964 : vec3<f32> = u_xlat0;
  let x_3965 : vec3<f32> = (vec3<f32>(x_3962, x_3962, x_3962) * x_3964);
  let x_3966 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3965.x, x_3965.y, x_3965.z, x_3966.w);
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


