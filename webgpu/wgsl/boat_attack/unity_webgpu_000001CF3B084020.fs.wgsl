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

@group(0) @binding(6) var x_TerrainHolesTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_TerrainHolesTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlatb0 : bool;

@group(1) @binding(3) var<uniform> x_59 : x_Terrain;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(1) var x_Control : texture_2d<f32>;

@group(0) @binding(10) var sampler_Control : sampler;

var<private> u_xlat75 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(2) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(11) var sampler_Splat0 : sampler;

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

@group(1) @binding(4) var<uniform> x_629 : LightShadows;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlat77 : f32;

var<private> u_xlatu77 : u32;

var<private> u_xlati77 : i32;

@group(1) @binding(2) var<uniform> x_816 : UnityPerDraw;

var<private> u_xlat78 : f32;

var<private> u_xlatb79 : bool;

@group(0) @binding(7) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_LinearClampCompare : sampler_comparison;

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

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu0 : u32;

var<private> u_xlatu79 : u32;

var<private> u_xlati80 : i32;

var<private> u_xlati79 : i32;

@group(1) @binding(1) var<uniform> x_2583 : AdditionalLights;

var<private> u_xlat82 : f32;

var<private> u_xlati82 : i32;

var<private> u_xlatb84 : bool;

var<private> u_xlatb10 : vec4<bool>;

var<private> u_xlat85 : f32;

var<private> u_xlat35 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlatb82 : bool;

@group(0) @binding(8) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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
  var x_2193 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2713 : f32;
  var x_2723 : f32;
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
  let x_621 : vec3<f32> = vs_TEXCOORD7;
  let x_631 : vec4<f32> = x_629.x_CascadeShadowSplitSpheres0;
  let x_634 : vec3<f32> = (x_621 + -(vec3<f32>(x_631.x, x_631.y, x_631.z)));
  let x_635 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_634.x, x_634.y, x_634.z, x_635.w);
  let x_637 : vec3<f32> = vs_TEXCOORD7;
  let x_639 : vec4<f32> = x_629.x_CascadeShadowSplitSpheres1;
  let x_642 : vec3<f32> = (x_637 + -(vec3<f32>(x_639.x, x_639.y, x_639.z)));
  let x_643 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_642.x, x_642.y, x_642.z, x_643.w);
  let x_645 : vec3<f32> = vs_TEXCOORD7;
  let x_648 : vec4<f32> = x_629.x_CascadeShadowSplitSpheres2;
  let x_651 : vec3<f32> = (x_645 + -(vec3<f32>(x_648.x, x_648.y, x_648.z)));
  let x_652 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_651.x, x_651.y, x_651.z, x_652.w);
  let x_654 : vec3<f32> = vs_TEXCOORD7;
  let x_656 : vec4<f32> = x_629.x_CascadeShadowSplitSpheres3;
  let x_659 : vec3<f32> = (x_654 + -(vec3<f32>(x_656.x, x_656.y, x_656.z)));
  let x_660 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_659.x, x_659.y, x_659.z, x_660.w);
  let x_662 : vec4<f32> = u_xlat3;
  let x_664 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_662.x, x_662.y, x_662.z), vec3<f32>(x_664.x, x_664.y, x_664.z));
  let x_668 : vec4<f32> = u_xlat4;
  let x_670 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_668.x, x_668.y, x_668.z), vec3<f32>(x_670.x, x_670.y, x_670.z));
  let x_674 : vec4<f32> = u_xlat6;
  let x_676 : vec4<f32> = u_xlat6;
  u_xlat3.z = dot(vec3<f32>(x_674.x, x_674.y, x_674.z), vec3<f32>(x_676.x, x_676.y, x_676.z));
  let x_680 : vec4<f32> = u_xlat7;
  let x_682 : vec4<f32> = u_xlat7;
  u_xlat3.w = dot(vec3<f32>(x_680.x, x_680.y, x_680.z), vec3<f32>(x_682.x, x_682.y, x_682.z));
  let x_688 : vec4<f32> = u_xlat3;
  let x_690 : vec4<f32> = x_629.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_688 < x_690);
  let x_693 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_693);
  let x_697 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_697);
  let x_701 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_701);
  let x_705 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_705);
  let x_709 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_709);
  let x_714 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_714);
  let x_718 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_718);
  let x_721 : vec4<f32> = u_xlat3;
  let x_723 : vec4<f32> = u_xlat4;
  let x_725 : vec3<f32> = (vec3<f32>(x_721.x, x_721.y, x_721.z) + vec3<f32>(x_723.y, x_723.z, x_723.w));
  let x_726 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_725.x, x_725.y, x_725.z, x_726.w);
  let x_728 : vec4<f32> = u_xlat3;
  let x_731 : vec3<f32> = max(vec3<f32>(x_728.x, x_728.y, x_728.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_732 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_732.x, x_731.x, x_731.y, x_731.z);
  let x_735 : vec4<f32> = u_xlat4;
  u_xlat77 = dot(x_735, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_740 : f32 = u_xlat77;
  u_xlat77 = (-(x_740) + 4.0f);
  let x_745 : f32 = u_xlat77;
  u_xlatu77 = u32(x_745);
  let x_749 : u32 = u_xlatu77;
  u_xlati77 = (bitcast<i32>(x_749) << bitcast<u32>(2i));
  let x_752 : vec3<f32> = vs_TEXCOORD7;
  let x_754 : i32 = u_xlati77;
  let x_757 : i32 = u_xlati77;
  let x_761 : vec4<f32> = x_629.x_MainLightWorldToShadow[((x_754 + 1i) / 4i)][((x_757 + 1i) % 4i)];
  let x_763 : vec3<f32> = (vec3<f32>(x_752.y, x_752.y, x_752.y) * vec3<f32>(x_761.x, x_761.y, x_761.z));
  let x_764 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_763.x, x_763.y, x_763.z, x_764.w);
  let x_766 : i32 = u_xlati77;
  let x_768 : i32 = u_xlati77;
  let x_771 : vec4<f32> = x_629.x_MainLightWorldToShadow[(x_766 / 4i)][(x_768 % 4i)];
  let x_773 : vec3<f32> = vs_TEXCOORD7;
  let x_776 : vec4<f32> = u_xlat3;
  let x_778 : vec3<f32> = ((vec3<f32>(x_771.x, x_771.y, x_771.z) * vec3<f32>(x_773.x, x_773.x, x_773.x)) + vec3<f32>(x_776.x, x_776.y, x_776.z));
  let x_779 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_778.x, x_778.y, x_778.z, x_779.w);
  let x_781 : i32 = u_xlati77;
  let x_784 : i32 = u_xlati77;
  let x_788 : vec4<f32> = x_629.x_MainLightWorldToShadow[((x_781 + 2i) / 4i)][((x_784 + 2i) % 4i)];
  let x_790 : vec3<f32> = vs_TEXCOORD7;
  let x_793 : vec4<f32> = u_xlat3;
  let x_795 : vec3<f32> = ((vec3<f32>(x_788.x, x_788.y, x_788.z) * vec3<f32>(x_790.z, x_790.z, x_790.z)) + vec3<f32>(x_793.x, x_793.y, x_793.z));
  let x_796 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_795.x, x_795.y, x_795.z, x_796.w);
  let x_798 : vec4<f32> = u_xlat3;
  let x_800 : i32 = u_xlati77;
  let x_803 : i32 = u_xlati77;
  let x_807 : vec4<f32> = x_629.x_MainLightWorldToShadow[((x_800 + 3i) / 4i)][((x_803 + 3i) % 4i)];
  let x_809 : vec3<f32> = (vec3<f32>(x_798.x, x_798.y, x_798.z) + vec3<f32>(x_807.x, x_807.y, x_807.z));
  let x_810 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_809.x, x_809.y, x_809.z, x_810.w);
  u_xlat1.w = 1.0f;
  let x_818 : vec4<f32> = x_816.unity_SHAr;
  let x_819 : vec4<f32> = u_xlat1;
  u_xlat4.x = dot(x_818, x_819);
  let x_823 : vec4<f32> = x_816.unity_SHAg;
  let x_824 : vec4<f32> = u_xlat1;
  u_xlat4.y = dot(x_823, x_824);
  let x_828 : vec4<f32> = x_816.unity_SHAb;
  let x_829 : vec4<f32> = u_xlat1;
  u_xlat4.z = dot(x_828, x_829);
  let x_832 : vec4<f32> = u_xlat1;
  let x_834 : vec4<f32> = u_xlat1;
  u_xlat6 = (vec4<f32>(x_832.y, x_832.z, x_832.z, x_832.x) * vec4<f32>(x_834.x, x_834.y, x_834.z, x_834.z));
  let x_838 : vec4<f32> = x_816.unity_SHBr;
  let x_839 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_838, x_839);
  let x_843 : vec4<f32> = x_816.unity_SHBg;
  let x_844 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_843, x_844);
  let x_848 : vec4<f32> = x_816.unity_SHBb;
  let x_849 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_848, x_849);
  let x_853 : f32 = u_xlat1.y;
  let x_855 : f32 = u_xlat1.y;
  u_xlat76 = (x_853 * x_855);
  let x_858 : f32 = u_xlat1.x;
  let x_860 : f32 = u_xlat1.x;
  let x_862 : f32 = u_xlat76;
  u_xlat76 = ((x_858 * x_860) + -(x_862));
  let x_867 : vec4<f32> = x_816.unity_SHC;
  let x_869 : f32 = u_xlat76;
  let x_872 : vec4<f32> = u_xlat7;
  let x_874 : vec3<f32> = ((vec3<f32>(x_867.x, x_867.y, x_867.z) * vec3<f32>(x_869, x_869, x_869)) + vec3<f32>(x_872.x, x_872.y, x_872.z));
  let x_875 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_874.x, x_874.y, x_874.z, x_875.w);
  let x_877 : vec4<f32> = u_xlat4;
  let x_879 : vec4<f32> = u_xlat6;
  let x_881 : vec3<f32> = (vec3<f32>(x_877.x, x_877.y, x_877.z) + vec3<f32>(x_879.x, x_879.y, x_879.z));
  let x_882 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_881.x, x_881.y, x_881.z, x_882.w);
  let x_884 : vec4<f32> = u_xlat4;
  let x_886 : vec3<f32> = max(vec3<f32>(x_884.x, x_884.y, x_884.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_887 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_886.x, x_886.y, x_886.z, x_887.w);
  let x_890 : f32 = u_xlat0.x;
  u_xlat76 = ((-(x_890) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_895 : f32 = u_xlat76;
  u_xlat77 = (-(x_895) + 1.0f);
  let x_898 : f32 = u_xlat76;
  let x_900 : vec4<f32> = u_xlat5;
  let x_902 : vec3<f32> = (vec3<f32>(x_898, x_898, x_898) * vec3<f32>(x_900.x, x_900.y, x_900.z));
  let x_903 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_902.x, x_902.y, x_902.z, x_903.w);
  let x_905 : vec4<f32> = u_xlat5;
  let x_909 : vec3<f32> = (vec3<f32>(x_905.x, x_905.y, x_905.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_910 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_909.x, x_909.y, x_909.z, x_910.w);
  let x_912 : vec3<f32> = u_xlat0;
  let x_914 : vec4<f32> = u_xlat5;
  let x_919 : vec3<f32> = ((vec3<f32>(x_912.x, x_912.x, x_912.x) * vec3<f32>(x_914.x, x_914.y, x_914.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_920 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_919.x, x_919.y, x_919.z, x_920.w);
  let x_922 : f32 = u_xlat50;
  u_xlat0.x = (-(x_922) + 1.0f);
  let x_927 : f32 = u_xlat0.x;
  let x_929 : f32 = u_xlat0.x;
  u_xlat76 = (x_927 * x_929);
  let x_931 : f32 = u_xlat76;
  u_xlat76 = max(x_931, 0.0078125f);
  let x_935 : f32 = u_xlat76;
  let x_936 : f32 = u_xlat76;
  u_xlat78 = (x_935 * x_936);
  let x_938 : f32 = u_xlat50;
  let x_939 : f32 = u_xlat77;
  u_xlat50 = (x_938 + x_939);
  let x_941 : f32 = u_xlat50;
  u_xlat50 = clamp(x_941, 0.0f, 1.0f);
  let x_943 : f32 = u_xlat76;
  u_xlat77 = ((x_943 * 4.0f) + 2.0f);
  let x_946 : f32 = u_xlat25;
  u_xlat25 = min(x_946, 1.0f);
  let x_950 : f32 = x_629.x_MainLightShadowParams.y;
  u_xlatb79 = (0.0f < x_950);
  let x_952 : bool = u_xlatb79;
  if (x_952) {
    let x_956 : f32 = x_629.x_MainLightShadowParams.y;
    u_xlatb79 = (x_956 == 1.0f);
    let x_958 : bool = u_xlatb79;
    if (x_958) {
      let x_961 : vec4<f32> = u_xlat3;
      let x_964 : vec4<f32> = x_629.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_961.x, x_961.y, x_961.x, x_961.y) + x_964);
      let x_968 : vec4<f32> = u_xlat7;
      let x_969 : vec2<f32> = vec2<f32>(x_968.x, x_968.y);
      let x_971 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_969.x, x_969.y, x_971);
      let x_983 : vec3<f32> = txVec0;
      let x_985 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_983.xy, x_983.z);
      u_xlat8.x = x_985;
      let x_988 : vec4<f32> = u_xlat7;
      let x_989 : vec2<f32> = vec2<f32>(x_988.z, x_988.w);
      let x_991 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_989.x, x_989.y, x_991);
      let x_998 : vec3<f32> = txVec1;
      let x_1000 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_998.xy, x_998.z);
      u_xlat8.y = x_1000;
      let x_1002 : vec4<f32> = u_xlat3;
      let x_1005 : vec4<f32> = x_629.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_1002.x, x_1002.y, x_1002.x, x_1002.y) + x_1005);
      let x_1008 : vec4<f32> = u_xlat7;
      let x_1009 : vec2<f32> = vec2<f32>(x_1008.x, x_1008.y);
      let x_1011 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_1009.x, x_1009.y, x_1011);
      let x_1018 : vec3<f32> = txVec2;
      let x_1020 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1018.xy, x_1018.z);
      u_xlat8.z = x_1020;
      let x_1023 : vec4<f32> = u_xlat7;
      let x_1024 : vec2<f32> = vec2<f32>(x_1023.z, x_1023.w);
      let x_1026 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_1024.x, x_1024.y, x_1026);
      let x_1033 : vec3<f32> = txVec3;
      let x_1035 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1033.xy, x_1033.z);
      u_xlat8.w = x_1035;
      let x_1038 : vec4<f32> = u_xlat8;
      u_xlat79 = dot(x_1038, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1045 : f32 = x_629.x_MainLightShadowParams.y;
      u_xlatb80 = (x_1045 == 2.0f);
      let x_1047 : bool = u_xlatb80;
      if (x_1047) {
        let x_1050 : vec4<f32> = u_xlat3;
        let x_1053 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1056 : vec2<f32> = ((vec2<f32>(x_1050.x, x_1050.y) * vec2<f32>(x_1053.z, x_1053.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1057 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1056.x, x_1056.y, x_1057.z, x_1057.w);
        let x_1059 : vec4<f32> = u_xlat7;
        let x_1061 : vec2<f32> = floor(vec2<f32>(x_1059.x, x_1059.y));
        let x_1062 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1061.x, x_1061.y, x_1062.z, x_1062.w);
        let x_1066 : vec4<f32> = u_xlat3;
        let x_1069 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1072 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_1066.x, x_1066.y) * vec2<f32>(x_1069.z, x_1069.w)) + -(vec2<f32>(x_1072.x, x_1072.y)));
        let x_1076 : vec2<f32> = u_xlat57;
        u_xlat8 = (vec4<f32>(x_1076.x, x_1076.x, x_1076.y, x_1076.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1080 : vec4<f32> = u_xlat8;
        let x_1082 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1080.x, x_1080.x, x_1080.z, x_1080.z) * vec4<f32>(x_1082.x, x_1082.x, x_1082.z, x_1082.z));
        let x_1085 : vec4<f32> = u_xlat9;
        let x_1089 : vec2<f32> = (vec2<f32>(x_1085.y, x_1085.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1090 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1089.x, x_1090.y, x_1089.y, x_1090.w);
        let x_1092 : vec4<f32> = u_xlat9;
        let x_1095 : vec2<f32> = u_xlat57;
        let x_1097 : vec2<f32> = ((vec2<f32>(x_1092.x, x_1092.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1095));
        let x_1098 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1097.x, x_1097.y, x_1098.z, x_1098.w);
        let x_1101 : vec2<f32> = u_xlat57;
        u_xlat59 = (-(x_1101) + vec2<f32>(1.0f, 1.0f));
        let x_1105 : vec2<f32> = u_xlat57;
        let x_1107 : vec2<f32> = min(x_1105, vec2<f32>(0.0f, 0.0f));
        let x_1108 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1107.x, x_1107.y, x_1108.z, x_1108.w);
        let x_1110 : vec4<f32> = u_xlat10;
        let x_1113 : vec4<f32> = u_xlat10;
        let x_1116 : vec2<f32> = u_xlat59;
        let x_1117 : vec2<f32> = ((-(vec2<f32>(x_1110.x, x_1110.y)) * vec2<f32>(x_1113.x, x_1113.y)) + x_1116);
        let x_1118 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1117.x, x_1117.y, x_1118.z, x_1118.w);
        let x_1120 : vec2<f32> = u_xlat57;
        u_xlat57 = max(x_1120, vec2<f32>(0.0f, 0.0f));
        let x_1122 : vec2<f32> = u_xlat57;
        let x_1124 : vec2<f32> = u_xlat57;
        let x_1126 : vec4<f32> = u_xlat8;
        u_xlat57 = ((-(x_1122) * x_1124) + vec2<f32>(x_1126.y, x_1126.w));
        let x_1129 : vec4<f32> = u_xlat10;
        let x_1131 : vec2<f32> = (vec2<f32>(x_1129.x, x_1129.y) + vec2<f32>(1.0f, 1.0f));
        let x_1132 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1131.x, x_1131.y, x_1132.z, x_1132.w);
        let x_1134 : vec2<f32> = u_xlat57;
        u_xlat57 = (x_1134 + vec2<f32>(1.0f, 1.0f));
        let x_1136 : vec4<f32> = u_xlat9;
        let x_1140 : vec2<f32> = (vec2<f32>(x_1136.x, x_1136.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1141 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1140.x, x_1140.y, x_1141.z, x_1141.w);
        let x_1143 : vec2<f32> = u_xlat59;
        let x_1144 : vec2<f32> = (x_1143 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1145 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1144.x, x_1144.y, x_1145.z, x_1145.w);
        let x_1147 : vec4<f32> = u_xlat10;
        let x_1149 : vec2<f32> = (vec2<f32>(x_1147.x, x_1147.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1150 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1149.x, x_1149.y, x_1150.z, x_1150.w);
        let x_1152 : vec2<f32> = u_xlat57;
        let x_1153 : vec2<f32> = (x_1152 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1154 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1153.x, x_1153.y, x_1154.z, x_1154.w);
        let x_1156 : vec4<f32> = u_xlat8;
        u_xlat57 = (vec2<f32>(x_1156.y, x_1156.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1160 : f32 = u_xlat10.x;
        u_xlat11.z = x_1160;
        let x_1163 : f32 = u_xlat57.x;
        u_xlat11.w = x_1163;
        let x_1166 : f32 = u_xlat12.x;
        u_xlat9.z = x_1166;
        let x_1169 : f32 = u_xlat8.x;
        u_xlat9.w = x_1169;
        let x_1171 : vec4<f32> = u_xlat9;
        let x_1173 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_1171.z, x_1171.w, x_1171.x, x_1171.z) + vec4<f32>(x_1173.z, x_1173.w, x_1173.x, x_1173.z));
        let x_1177 : f32 = u_xlat11.y;
        u_xlat10.z = x_1177;
        let x_1180 : f32 = u_xlat57.y;
        u_xlat10.w = x_1180;
        let x_1183 : f32 = u_xlat9.y;
        u_xlat12.z = x_1183;
        let x_1186 : f32 = u_xlat8.z;
        u_xlat12.w = x_1186;
        let x_1188 : vec4<f32> = u_xlat10;
        let x_1190 : vec4<f32> = u_xlat12;
        let x_1192 : vec3<f32> = (vec3<f32>(x_1188.z, x_1188.y, x_1188.w) + vec3<f32>(x_1190.z, x_1190.y, x_1190.w));
        let x_1193 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1192.x, x_1192.y, x_1192.z, x_1193.w);
        let x_1195 : vec4<f32> = u_xlat9;
        let x_1197 : vec4<f32> = u_xlat13;
        let x_1199 : vec3<f32> = (vec3<f32>(x_1195.x, x_1195.z, x_1195.w) / vec3<f32>(x_1197.z, x_1197.w, x_1197.y));
        let x_1200 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1199.x, x_1199.y, x_1199.z, x_1200.w);
        let x_1202 : vec4<f32> = u_xlat9;
        let x_1208 : vec3<f32> = (vec3<f32>(x_1202.x, x_1202.y, x_1202.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1209 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1208.x, x_1208.y, x_1208.z, x_1209.w);
        let x_1211 : vec4<f32> = u_xlat12;
        let x_1213 : vec4<f32> = u_xlat8;
        let x_1215 : vec3<f32> = (vec3<f32>(x_1211.z, x_1211.y, x_1211.w) / vec3<f32>(x_1213.x, x_1213.y, x_1213.z));
        let x_1216 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1215.x, x_1215.y, x_1215.z, x_1216.w);
        let x_1218 : vec4<f32> = u_xlat10;
        let x_1220 : vec3<f32> = (vec3<f32>(x_1218.x, x_1218.y, x_1218.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1221 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1220.x, x_1220.y, x_1220.z, x_1221.w);
        let x_1223 : vec4<f32> = u_xlat9;
        let x_1226 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1228 : vec3<f32> = (vec3<f32>(x_1223.y, x_1223.x, x_1223.z) * vec3<f32>(x_1226.x, x_1226.x, x_1226.x));
        let x_1229 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1228.x, x_1228.y, x_1228.z, x_1229.w);
        let x_1231 : vec4<f32> = u_xlat10;
        let x_1234 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1236 : vec3<f32> = (vec3<f32>(x_1231.x, x_1231.y, x_1231.z) * vec3<f32>(x_1234.y, x_1234.y, x_1234.y));
        let x_1237 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1236.x, x_1236.y, x_1236.z, x_1237.w);
        let x_1240 : f32 = u_xlat10.x;
        u_xlat9.w = x_1240;
        let x_1242 : vec4<f32> = u_xlat7;
        let x_1245 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1248 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1242.x, x_1242.y, x_1242.x, x_1242.y) * vec4<f32>(x_1245.x, x_1245.y, x_1245.x, x_1245.y)) + vec4<f32>(x_1248.y, x_1248.w, x_1248.x, x_1248.w));
        let x_1251 : vec4<f32> = u_xlat7;
        let x_1254 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1257 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_1251.x, x_1251.y) * vec2<f32>(x_1254.x, x_1254.y)) + vec2<f32>(x_1257.z, x_1257.w));
        let x_1261 : f32 = u_xlat9.y;
        u_xlat10.w = x_1261;
        let x_1263 : vec4<f32> = u_xlat10;
        let x_1264 : vec2<f32> = vec2<f32>(x_1263.y, x_1263.z);
        let x_1265 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1265.x, x_1264.x, x_1265.z, x_1264.y);
        let x_1267 : vec4<f32> = u_xlat7;
        let x_1270 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1273 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1267.x, x_1267.y, x_1267.x, x_1267.y) * vec4<f32>(x_1270.x, x_1270.y, x_1270.x, x_1270.y)) + vec4<f32>(x_1273.x, x_1273.y, x_1273.z, x_1273.y));
        let x_1276 : vec4<f32> = u_xlat7;
        let x_1279 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1282 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1276.x, x_1276.y, x_1276.x, x_1276.y) * vec4<f32>(x_1279.x, x_1279.y, x_1279.x, x_1279.y)) + vec4<f32>(x_1282.w, x_1282.y, x_1282.w, x_1282.z));
        let x_1285 : vec4<f32> = u_xlat7;
        let x_1288 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1291 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1285.x, x_1285.y, x_1285.x, x_1285.y) * vec4<f32>(x_1288.x, x_1288.y, x_1288.x, x_1288.y)) + vec4<f32>(x_1291.x, x_1291.w, x_1291.z, x_1291.w));
        let x_1295 : vec4<f32> = u_xlat8;
        let x_1297 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_1295.x, x_1295.x, x_1295.x, x_1295.y) * vec4<f32>(x_1297.z, x_1297.w, x_1297.y, x_1297.z));
        let x_1301 : vec4<f32> = u_xlat8;
        let x_1303 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_1301.y, x_1301.y, x_1301.z, x_1301.z) * x_1303);
        let x_1307 : f32 = u_xlat8.z;
        let x_1309 : f32 = u_xlat13.y;
        u_xlat80 = (x_1307 * x_1309);
        let x_1312 : vec4<f32> = u_xlat11;
        let x_1313 : vec2<f32> = vec2<f32>(x_1312.x, x_1312.y);
        let x_1315 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_1313.x, x_1313.y, x_1315);
        let x_1323 : vec3<f32> = txVec4;
        let x_1325 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1323.xy, x_1323.z);
        u_xlat81 = x_1325;
        let x_1327 : vec4<f32> = u_xlat11;
        let x_1328 : vec2<f32> = vec2<f32>(x_1327.z, x_1327.w);
        let x_1330 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_1328.x, x_1328.y, x_1330);
        let x_1337 : vec3<f32> = txVec5;
        let x_1339 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1337.xy, x_1337.z);
        u_xlat7.x = x_1339;
        let x_1342 : f32 = u_xlat7.x;
        let x_1344 : f32 = u_xlat14.y;
        u_xlat7.x = (x_1342 * x_1344);
        let x_1348 : f32 = u_xlat14.x;
        let x_1349 : f32 = u_xlat81;
        let x_1352 : f32 = u_xlat7.x;
        u_xlat81 = ((x_1348 * x_1349) + x_1352);
        let x_1355 : vec2<f32> = u_xlat57;
        let x_1357 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_1355.x, x_1355.y, x_1357);
        let x_1364 : vec3<f32> = txVec6;
        let x_1366 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1364.xy, x_1364.z);
        u_xlat7.x = x_1366;
        let x_1369 : f32 = u_xlat14.z;
        let x_1371 : f32 = u_xlat7.x;
        let x_1373 : f32 = u_xlat81;
        u_xlat81 = ((x_1369 * x_1371) + x_1373);
        let x_1376 : vec4<f32> = u_xlat10;
        let x_1377 : vec2<f32> = vec2<f32>(x_1376.x, x_1376.y);
        let x_1379 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_1377.x, x_1377.y, x_1379);
        let x_1386 : vec3<f32> = txVec7;
        let x_1388 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1386.xy, x_1386.z);
        u_xlat7.x = x_1388;
        let x_1391 : f32 = u_xlat14.w;
        let x_1393 : f32 = u_xlat7.x;
        let x_1395 : f32 = u_xlat81;
        u_xlat81 = ((x_1391 * x_1393) + x_1395);
        let x_1398 : vec4<f32> = u_xlat12;
        let x_1399 : vec2<f32> = vec2<f32>(x_1398.x, x_1398.y);
        let x_1401 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_1399.x, x_1399.y, x_1401);
        let x_1408 : vec3<f32> = txVec8;
        let x_1410 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1408.xy, x_1408.z);
        u_xlat7.x = x_1410;
        let x_1413 : f32 = u_xlat15.x;
        let x_1415 : f32 = u_xlat7.x;
        let x_1417 : f32 = u_xlat81;
        u_xlat81 = ((x_1413 * x_1415) + x_1417);
        let x_1420 : vec4<f32> = u_xlat12;
        let x_1421 : vec2<f32> = vec2<f32>(x_1420.z, x_1420.w);
        let x_1423 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_1421.x, x_1421.y, x_1423);
        let x_1430 : vec3<f32> = txVec9;
        let x_1432 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1430.xy, x_1430.z);
        u_xlat7.x = x_1432;
        let x_1435 : f32 = u_xlat15.y;
        let x_1437 : f32 = u_xlat7.x;
        let x_1439 : f32 = u_xlat81;
        u_xlat81 = ((x_1435 * x_1437) + x_1439);
        let x_1442 : vec4<f32> = u_xlat10;
        let x_1443 : vec2<f32> = vec2<f32>(x_1442.z, x_1442.w);
        let x_1445 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_1443.x, x_1443.y, x_1445);
        let x_1452 : vec3<f32> = txVec10;
        let x_1454 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1452.xy, x_1452.z);
        u_xlat7.x = x_1454;
        let x_1457 : f32 = u_xlat15.z;
        let x_1459 : f32 = u_xlat7.x;
        let x_1461 : f32 = u_xlat81;
        u_xlat81 = ((x_1457 * x_1459) + x_1461);
        let x_1464 : vec4<f32> = u_xlat9;
        let x_1465 : vec2<f32> = vec2<f32>(x_1464.x, x_1464.y);
        let x_1467 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_1465.x, x_1465.y, x_1467);
        let x_1474 : vec3<f32> = txVec11;
        let x_1476 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1474.xy, x_1474.z);
        u_xlat7.x = x_1476;
        let x_1479 : f32 = u_xlat15.w;
        let x_1481 : f32 = u_xlat7.x;
        let x_1483 : f32 = u_xlat81;
        u_xlat81 = ((x_1479 * x_1481) + x_1483);
        let x_1486 : vec4<f32> = u_xlat9;
        let x_1487 : vec2<f32> = vec2<f32>(x_1486.z, x_1486.w);
        let x_1489 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1487.x, x_1487.y, x_1489);
        let x_1496 : vec3<f32> = txVec12;
        let x_1498 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1496.xy, x_1496.z);
        u_xlat7.x = x_1498;
        let x_1500 : f32 = u_xlat80;
        let x_1502 : f32 = u_xlat7.x;
        let x_1504 : f32 = u_xlat81;
        u_xlat79 = ((x_1500 * x_1502) + x_1504);
      } else {
        let x_1507 : vec4<f32> = u_xlat3;
        let x_1510 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1513 : vec2<f32> = ((vec2<f32>(x_1507.x, x_1507.y) * vec2<f32>(x_1510.z, x_1510.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1514 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1513.x, x_1513.y, x_1514.z, x_1514.w);
        let x_1516 : vec4<f32> = u_xlat7;
        let x_1518 : vec2<f32> = floor(vec2<f32>(x_1516.x, x_1516.y));
        let x_1519 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1518.x, x_1518.y, x_1519.z, x_1519.w);
        let x_1521 : vec4<f32> = u_xlat3;
        let x_1524 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1527 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_1521.x, x_1521.y) * vec2<f32>(x_1524.z, x_1524.w)) + -(vec2<f32>(x_1527.x, x_1527.y)));
        let x_1531 : vec2<f32> = u_xlat57;
        u_xlat8 = (vec4<f32>(x_1531.x, x_1531.x, x_1531.y, x_1531.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1534 : vec4<f32> = u_xlat8;
        let x_1536 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1534.x, x_1534.x, x_1534.z, x_1534.z) * vec4<f32>(x_1536.x, x_1536.x, x_1536.z, x_1536.z));
        let x_1539 : vec4<f32> = u_xlat9;
        let x_1543 : vec2<f32> = (vec2<f32>(x_1539.y, x_1539.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1544 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1544.x, x_1543.x, x_1544.z, x_1543.y);
        let x_1546 : vec4<f32> = u_xlat9;
        let x_1549 : vec2<f32> = u_xlat57;
        let x_1551 : vec2<f32> = ((vec2<f32>(x_1546.x, x_1546.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1549));
        let x_1552 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1551.x, x_1552.y, x_1551.y, x_1552.w);
        let x_1554 : vec2<f32> = u_xlat57;
        let x_1556 : vec2<f32> = (-(x_1554) + vec2<f32>(1.0f, 1.0f));
        let x_1557 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1556.x, x_1556.y, x_1557.z, x_1557.w);
        let x_1559 : vec2<f32> = u_xlat57;
        u_xlat59 = min(x_1559, vec2<f32>(0.0f, 0.0f));
        let x_1561 : vec2<f32> = u_xlat59;
        let x_1563 : vec2<f32> = u_xlat59;
        let x_1565 : vec4<f32> = u_xlat9;
        let x_1567 : vec2<f32> = ((-(x_1561) * x_1563) + vec2<f32>(x_1565.x, x_1565.y));
        let x_1568 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1567.x, x_1567.y, x_1568.z, x_1568.w);
        let x_1570 : vec2<f32> = u_xlat57;
        u_xlat59 = max(x_1570, vec2<f32>(0.0f, 0.0f));
        let x_1573 : vec2<f32> = u_xlat59;
        let x_1575 : vec2<f32> = u_xlat59;
        let x_1577 : vec4<f32> = u_xlat8;
        let x_1579 : vec2<f32> = ((-(x_1573) * x_1575) + vec2<f32>(x_1577.y, x_1577.w));
        let x_1580 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_1579.x, x_1580.y, x_1579.y);
        let x_1582 : vec4<f32> = u_xlat9;
        let x_1585 : vec2<f32> = (vec2<f32>(x_1582.x, x_1582.y) + vec2<f32>(2.0f, 2.0f));
        let x_1586 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1585.x, x_1585.y, x_1586.z, x_1586.w);
        let x_1588 : vec3<f32> = u_xlat33;
        let x_1590 : vec2<f32> = (vec2<f32>(x_1588.x, x_1588.z) + vec2<f32>(2.0f, 2.0f));
        let x_1591 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1591.x, x_1590.x, x_1591.z, x_1590.y);
        let x_1594 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1594 * 0.08163200318813323975f);
        let x_1598 : vec4<f32> = u_xlat8;
        let x_1601 : vec3<f32> = (vec3<f32>(x_1598.z, x_1598.x, x_1598.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1602 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1601.x, x_1601.y, x_1601.z, x_1602.w);
        let x_1604 : vec4<f32> = u_xlat9;
        let x_1607 : vec2<f32> = (vec2<f32>(x_1604.x, x_1604.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1608 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1607.x, x_1607.y, x_1608.z, x_1608.w);
        let x_1611 : f32 = u_xlat12.y;
        u_xlat11.x = x_1611;
        let x_1613 : vec2<f32> = u_xlat57;
        let x_1620 : vec2<f32> = ((vec2<f32>(x_1613.x, x_1613.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1621 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1621.x, x_1620.x, x_1621.z, x_1620.y);
        let x_1623 : vec2<f32> = u_xlat57;
        let x_1627 : vec2<f32> = ((vec2<f32>(x_1623.x, x_1623.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1628 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1627.x, x_1628.y, x_1627.y, x_1628.w);
        let x_1631 : f32 = u_xlat8.x;
        u_xlat9.y = x_1631;
        let x_1634 : f32 = u_xlat10.y;
        u_xlat9.w = x_1634;
        let x_1636 : vec4<f32> = u_xlat9;
        let x_1637 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1636 + x_1637);
        let x_1639 : vec2<f32> = u_xlat57;
        let x_1642 : vec2<f32> = ((vec2<f32>(x_1639.y, x_1639.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1643 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1643.x, x_1642.x, x_1643.z, x_1642.y);
        let x_1645 : vec2<f32> = u_xlat57;
        let x_1648 : vec2<f32> = ((vec2<f32>(x_1645.y, x_1645.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1649 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1648.x, x_1649.y, x_1648.y, x_1649.w);
        let x_1652 : f32 = u_xlat8.y;
        u_xlat10.y = x_1652;
        let x_1654 : vec4<f32> = u_xlat10;
        let x_1655 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1654 + x_1655);
        let x_1657 : vec4<f32> = u_xlat9;
        let x_1658 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1657 / x_1658);
        let x_1660 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1660 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1666 : vec4<f32> = u_xlat10;
        let x_1667 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1666 / x_1667);
        let x_1669 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1669 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1671 : vec4<f32> = u_xlat9;
        let x_1674 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1671.w, x_1671.x, x_1671.y, x_1671.z) * vec4<f32>(x_1674.x, x_1674.x, x_1674.x, x_1674.x));
        let x_1677 : vec4<f32> = u_xlat10;
        let x_1680 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1677.x, x_1677.w, x_1677.y, x_1677.z) * vec4<f32>(x_1680.y, x_1680.y, x_1680.y, x_1680.y));
        let x_1683 : vec4<f32> = u_xlat9;
        let x_1684 : vec3<f32> = vec3<f32>(x_1683.y, x_1683.z, x_1683.w);
        let x_1685 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1684.x, x_1685.y, x_1684.y, x_1684.z);
        let x_1688 : f32 = u_xlat10.x;
        u_xlat12.y = x_1688;
        let x_1690 : vec4<f32> = u_xlat7;
        let x_1693 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1696 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1690.x, x_1690.y, x_1690.x, x_1690.y) * vec4<f32>(x_1693.x, x_1693.y, x_1693.x, x_1693.y)) + vec4<f32>(x_1696.x, x_1696.y, x_1696.z, x_1696.y));
        let x_1699 : vec4<f32> = u_xlat7;
        let x_1702 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1705 : vec4<f32> = u_xlat12;
        u_xlat57 = ((vec2<f32>(x_1699.x, x_1699.y) * vec2<f32>(x_1702.x, x_1702.y)) + vec2<f32>(x_1705.w, x_1705.y));
        let x_1709 : f32 = u_xlat12.y;
        u_xlat9.y = x_1709;
        let x_1712 : f32 = u_xlat10.z;
        u_xlat12.y = x_1712;
        let x_1714 : vec4<f32> = u_xlat7;
        let x_1717 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1720 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1714.x, x_1714.y, x_1714.x, x_1714.y) * vec4<f32>(x_1717.x, x_1717.y, x_1717.x, x_1717.y)) + vec4<f32>(x_1720.x, x_1720.y, x_1720.z, x_1720.y));
        let x_1723 : vec4<f32> = u_xlat7;
        let x_1726 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1729 : vec4<f32> = u_xlat12;
        let x_1731 : vec2<f32> = ((vec2<f32>(x_1723.x, x_1723.y) * vec2<f32>(x_1726.x, x_1726.y)) + vec2<f32>(x_1729.w, x_1729.y));
        let x_1732 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1731.x, x_1731.y, x_1732.z, x_1732.w);
        let x_1735 : f32 = u_xlat12.y;
        u_xlat9.z = x_1735;
        let x_1738 : vec4<f32> = u_xlat7;
        let x_1741 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1744 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1738.x, x_1738.y, x_1738.x, x_1738.y) * vec4<f32>(x_1741.x, x_1741.y, x_1741.x, x_1741.y)) + vec4<f32>(x_1744.x, x_1744.y, x_1744.x, x_1744.z));
        let x_1748 : f32 = u_xlat10.w;
        u_xlat12.y = x_1748;
        let x_1751 : vec4<f32> = u_xlat7;
        let x_1754 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1757 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1751.x, x_1751.y, x_1751.x, x_1751.y) * vec4<f32>(x_1754.x, x_1754.y, x_1754.x, x_1754.y)) + vec4<f32>(x_1757.x, x_1757.y, x_1757.z, x_1757.y));
        let x_1761 : vec4<f32> = u_xlat7;
        let x_1764 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1767 : vec4<f32> = u_xlat12;
        u_xlat34 = ((vec2<f32>(x_1761.x, x_1761.y) * vec2<f32>(x_1764.x, x_1764.y)) + vec2<f32>(x_1767.w, x_1767.y));
        let x_1771 : f32 = u_xlat12.y;
        u_xlat9.w = x_1771;
        let x_1774 : vec4<f32> = u_xlat7;
        let x_1777 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1780 : vec4<f32> = u_xlat9;
        u_xlat65 = ((vec2<f32>(x_1774.x, x_1774.y) * vec2<f32>(x_1777.x, x_1777.y)) + vec2<f32>(x_1780.x, x_1780.w));
        let x_1783 : vec4<f32> = u_xlat12;
        let x_1784 : vec3<f32> = vec3<f32>(x_1783.x, x_1783.z, x_1783.w);
        let x_1785 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1784.x, x_1785.y, x_1784.y, x_1784.z);
        let x_1787 : vec4<f32> = u_xlat7;
        let x_1790 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1793 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1787.x, x_1787.y, x_1787.x, x_1787.y) * vec4<f32>(x_1790.x, x_1790.y, x_1790.x, x_1790.y)) + vec4<f32>(x_1793.x, x_1793.y, x_1793.z, x_1793.y));
        let x_1797 : vec4<f32> = u_xlat7;
        let x_1800 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1803 : vec4<f32> = u_xlat10;
        u_xlat60 = ((vec2<f32>(x_1797.x, x_1797.y) * vec2<f32>(x_1800.x, x_1800.y)) + vec2<f32>(x_1803.w, x_1803.y));
        let x_1807 : f32 = u_xlat9.x;
        u_xlat10.x = x_1807;
        let x_1809 : vec4<f32> = u_xlat7;
        let x_1812 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1815 : vec4<f32> = u_xlat10;
        let x_1817 : vec2<f32> = ((vec2<f32>(x_1809.x, x_1809.y) * vec2<f32>(x_1812.x, x_1812.y)) + vec2<f32>(x_1815.x, x_1815.y));
        let x_1818 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1817.x, x_1817.y, x_1818.z, x_1818.w);
        let x_1821 : vec4<f32> = u_xlat8;
        let x_1823 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1821.x, x_1821.x, x_1821.x, x_1821.x) * x_1823);
        let x_1826 : vec4<f32> = u_xlat8;
        let x_1828 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1826.y, x_1826.y, x_1826.y, x_1826.y) * x_1828);
        let x_1831 : vec4<f32> = u_xlat8;
        let x_1833 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1831.z, x_1831.z, x_1831.z, x_1831.z) * x_1833);
        let x_1835 : vec4<f32> = u_xlat8;
        let x_1837 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1835.w, x_1835.w, x_1835.w, x_1835.w) * x_1837);
        let x_1840 : vec4<f32> = u_xlat13;
        let x_1841 : vec2<f32> = vec2<f32>(x_1840.x, x_1840.y);
        let x_1843 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1841.x, x_1841.y, x_1843);
        let x_1850 : vec3<f32> = txVec13;
        let x_1852 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1850.xy, x_1850.z);
        u_xlat80 = x_1852;
        let x_1854 : vec4<f32> = u_xlat13;
        let x_1855 : vec2<f32> = vec2<f32>(x_1854.z, x_1854.w);
        let x_1857 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1855.x, x_1855.y, x_1857);
        let x_1864 : vec3<f32> = txVec14;
        let x_1866 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1864.xy, x_1864.z);
        u_xlat81 = x_1866;
        let x_1867 : f32 = u_xlat81;
        let x_1869 : f32 = u_xlat18.y;
        u_xlat81 = (x_1867 * x_1869);
        let x_1872 : f32 = u_xlat18.x;
        let x_1873 : f32 = u_xlat80;
        let x_1875 : f32 = u_xlat81;
        u_xlat80 = ((x_1872 * x_1873) + x_1875);
        let x_1878 : vec2<f32> = u_xlat57;
        let x_1880 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1878.x, x_1878.y, x_1880);
        let x_1887 : vec3<f32> = txVec15;
        let x_1889 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1887.xy, x_1887.z);
        u_xlat81 = x_1889;
        let x_1891 : f32 = u_xlat18.z;
        let x_1892 : f32 = u_xlat81;
        let x_1894 : f32 = u_xlat80;
        u_xlat80 = ((x_1891 * x_1892) + x_1894);
        let x_1897 : vec4<f32> = u_xlat16;
        let x_1898 : vec2<f32> = vec2<f32>(x_1897.x, x_1897.y);
        let x_1900 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1898.x, x_1898.y, x_1900);
        let x_1907 : vec3<f32> = txVec16;
        let x_1909 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1907.xy, x_1907.z);
        u_xlat81 = x_1909;
        let x_1911 : f32 = u_xlat18.w;
        let x_1912 : f32 = u_xlat81;
        let x_1914 : f32 = u_xlat80;
        u_xlat80 = ((x_1911 * x_1912) + x_1914);
        let x_1917 : vec4<f32> = u_xlat14;
        let x_1918 : vec2<f32> = vec2<f32>(x_1917.x, x_1917.y);
        let x_1920 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1918.x, x_1918.y, x_1920);
        let x_1927 : vec3<f32> = txVec17;
        let x_1929 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1927.xy, x_1927.z);
        u_xlat81 = x_1929;
        let x_1931 : f32 = u_xlat19.x;
        let x_1932 : f32 = u_xlat81;
        let x_1934 : f32 = u_xlat80;
        u_xlat80 = ((x_1931 * x_1932) + x_1934);
        let x_1937 : vec4<f32> = u_xlat14;
        let x_1938 : vec2<f32> = vec2<f32>(x_1937.z, x_1937.w);
        let x_1940 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1938.x, x_1938.y, x_1940);
        let x_1947 : vec3<f32> = txVec18;
        let x_1949 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1947.xy, x_1947.z);
        u_xlat81 = x_1949;
        let x_1951 : f32 = u_xlat19.y;
        let x_1952 : f32 = u_xlat81;
        let x_1954 : f32 = u_xlat80;
        u_xlat80 = ((x_1951 * x_1952) + x_1954);
        let x_1957 : vec4<f32> = u_xlat15;
        let x_1958 : vec2<f32> = vec2<f32>(x_1957.x, x_1957.y);
        let x_1960 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1958.x, x_1958.y, x_1960);
        let x_1967 : vec3<f32> = txVec19;
        let x_1969 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1967.xy, x_1967.z);
        u_xlat81 = x_1969;
        let x_1971 : f32 = u_xlat19.z;
        let x_1972 : f32 = u_xlat81;
        let x_1974 : f32 = u_xlat80;
        u_xlat80 = ((x_1971 * x_1972) + x_1974);
        let x_1977 : vec4<f32> = u_xlat16;
        let x_1978 : vec2<f32> = vec2<f32>(x_1977.z, x_1977.w);
        let x_1980 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1978.x, x_1978.y, x_1980);
        let x_1987 : vec3<f32> = txVec20;
        let x_1989 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1987.xy, x_1987.z);
        u_xlat81 = x_1989;
        let x_1991 : f32 = u_xlat19.w;
        let x_1992 : f32 = u_xlat81;
        let x_1994 : f32 = u_xlat80;
        u_xlat80 = ((x_1991 * x_1992) + x_1994);
        let x_1997 : vec4<f32> = u_xlat17;
        let x_1998 : vec2<f32> = vec2<f32>(x_1997.x, x_1997.y);
        let x_2000 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1998.x, x_1998.y, x_2000);
        let x_2007 : vec3<f32> = txVec21;
        let x_2009 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2007.xy, x_2007.z);
        u_xlat81 = x_2009;
        let x_2011 : f32 = u_xlat20.x;
        let x_2012 : f32 = u_xlat81;
        let x_2014 : f32 = u_xlat80;
        u_xlat80 = ((x_2011 * x_2012) + x_2014);
        let x_2017 : vec4<f32> = u_xlat17;
        let x_2018 : vec2<f32> = vec2<f32>(x_2017.z, x_2017.w);
        let x_2020 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_2018.x, x_2018.y, x_2020);
        let x_2027 : vec3<f32> = txVec22;
        let x_2029 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2027.xy, x_2027.z);
        u_xlat81 = x_2029;
        let x_2031 : f32 = u_xlat20.y;
        let x_2032 : f32 = u_xlat81;
        let x_2034 : f32 = u_xlat80;
        u_xlat80 = ((x_2031 * x_2032) + x_2034);
        let x_2037 : vec2<f32> = u_xlat34;
        let x_2039 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_2037.x, x_2037.y, x_2039);
        let x_2046 : vec3<f32> = txVec23;
        let x_2048 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2046.xy, x_2046.z);
        u_xlat81 = x_2048;
        let x_2050 : f32 = u_xlat20.z;
        let x_2051 : f32 = u_xlat81;
        let x_2053 : f32 = u_xlat80;
        u_xlat80 = ((x_2050 * x_2051) + x_2053);
        let x_2056 : vec2<f32> = u_xlat65;
        let x_2058 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_2056.x, x_2056.y, x_2058);
        let x_2065 : vec3<f32> = txVec24;
        let x_2067 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2065.xy, x_2065.z);
        u_xlat81 = x_2067;
        let x_2069 : f32 = u_xlat20.w;
        let x_2070 : f32 = u_xlat81;
        let x_2072 : f32 = u_xlat80;
        u_xlat80 = ((x_2069 * x_2070) + x_2072);
        let x_2075 : vec4<f32> = u_xlat12;
        let x_2076 : vec2<f32> = vec2<f32>(x_2075.x, x_2075.y);
        let x_2078 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_2076.x, x_2076.y, x_2078);
        let x_2085 : vec3<f32> = txVec25;
        let x_2087 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2085.xy, x_2085.z);
        u_xlat81 = x_2087;
        let x_2089 : f32 = u_xlat8.x;
        let x_2090 : f32 = u_xlat81;
        let x_2092 : f32 = u_xlat80;
        u_xlat80 = ((x_2089 * x_2090) + x_2092);
        let x_2095 : vec4<f32> = u_xlat12;
        let x_2096 : vec2<f32> = vec2<f32>(x_2095.z, x_2095.w);
        let x_2098 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_2096.x, x_2096.y, x_2098);
        let x_2105 : vec3<f32> = txVec26;
        let x_2107 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2105.xy, x_2105.z);
        u_xlat81 = x_2107;
        let x_2109 : f32 = u_xlat8.y;
        let x_2110 : f32 = u_xlat81;
        let x_2112 : f32 = u_xlat80;
        u_xlat80 = ((x_2109 * x_2110) + x_2112);
        let x_2115 : vec2<f32> = u_xlat60;
        let x_2117 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_2115.x, x_2115.y, x_2117);
        let x_2124 : vec3<f32> = txVec27;
        let x_2126 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2124.xy, x_2124.z);
        u_xlat81 = x_2126;
        let x_2128 : f32 = u_xlat8.z;
        let x_2129 : f32 = u_xlat81;
        let x_2131 : f32 = u_xlat80;
        u_xlat80 = ((x_2128 * x_2129) + x_2131);
        let x_2134 : vec4<f32> = u_xlat7;
        let x_2135 : vec2<f32> = vec2<f32>(x_2134.x, x_2134.y);
        let x_2137 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_2135.x, x_2135.y, x_2137);
        let x_2144 : vec3<f32> = txVec28;
        let x_2146 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2144.xy, x_2144.z);
        u_xlat81 = x_2146;
        let x_2148 : f32 = u_xlat8.w;
        let x_2149 : f32 = u_xlat81;
        let x_2151 : f32 = u_xlat80;
        u_xlat79 = ((x_2148 * x_2149) + x_2151);
      }
    }
  } else {
    let x_2155 : vec4<f32> = u_xlat3;
    let x_2156 : vec2<f32> = vec2<f32>(x_2155.x, x_2155.y);
    let x_2158 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_2156.x, x_2156.y, x_2158);
    let x_2165 : vec3<f32> = txVec29;
    let x_2167 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2165.xy, x_2165.z);
    u_xlat79 = x_2167;
  }
  let x_2169 : f32 = x_629.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_2169) + 1.0f);
  let x_2173 : f32 = u_xlat79;
  let x_2175 : f32 = x_629.x_MainLightShadowParams.x;
  let x_2178 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2173 * x_2175) + x_2178);
  let x_2183 : f32 = u_xlat3.z;
  u_xlatb28 = (0.0f >= x_2183);
  let x_2187 : f32 = u_xlat3.z;
  u_xlatb53 = (x_2187 >= 1.0f);
  let x_2189 : bool = u_xlatb53;
  let x_2190 : bool = u_xlatb28;
  u_xlatb28 = (x_2189 | x_2190);
  let x_2192 : bool = u_xlatb28;
  if (x_2192) {
    x_2193 = 1.0f;
  } else {
    let x_2198 : f32 = u_xlat3.x;
    x_2193 = x_2198;
  }
  let x_2199 : f32 = x_2193;
  u_xlat3.x = x_2199;
  let x_2201 : vec3<f32> = vs_TEXCOORD7;
  let x_2203 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_2205 : vec3<f32> = (x_2201 + -(x_2203));
  let x_2206 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2205.x, x_2205.y, x_2205.z, x_2206.w);
  let x_2209 : vec4<f32> = u_xlat7;
  let x_2211 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_2209.x, x_2209.y, x_2209.z), vec3<f32>(x_2211.x, x_2211.y, x_2211.z));
  let x_2215 : f32 = u_xlat28;
  let x_2217 : f32 = x_629.x_MainLightShadowParams.z;
  let x_2220 : f32 = x_629.x_MainLightShadowParams.w;
  u_xlat53 = ((x_2215 * x_2217) + x_2220);
  let x_2222 : f32 = u_xlat53;
  u_xlat53 = clamp(x_2222, 0.0f, 1.0f);
  let x_2225 : f32 = u_xlat3.x;
  u_xlat79 = (-(x_2225) + 1.0f);
  let x_2228 : f32 = u_xlat53;
  let x_2229 : f32 = u_xlat79;
  let x_2232 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2228 * x_2229) + x_2232);
  let x_2235 : vec3<f32> = u_xlat2;
  let x_2237 : vec4<f32> = u_xlat1;
  u_xlat53 = dot(-(x_2235), vec3<f32>(x_2237.x, x_2237.y, x_2237.z));
  let x_2240 : f32 = u_xlat53;
  let x_2241 : f32 = u_xlat53;
  u_xlat53 = (x_2240 + x_2241);
  let x_2243 : vec4<f32> = u_xlat1;
  let x_2245 : f32 = u_xlat53;
  let x_2249 : vec3<f32> = u_xlat2;
  let x_2251 : vec3<f32> = ((vec3<f32>(x_2243.x, x_2243.y, x_2243.z) * -(vec3<f32>(x_2245, x_2245, x_2245))) + -(x_2249));
  let x_2252 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2251.x, x_2251.y, x_2251.z, x_2252.w);
  let x_2254 : vec4<f32> = u_xlat1;
  let x_2256 : vec3<f32> = u_xlat2;
  u_xlat53 = dot(vec3<f32>(x_2254.x, x_2254.y, x_2254.z), x_2256);
  let x_2258 : f32 = u_xlat53;
  u_xlat53 = clamp(x_2258, 0.0f, 1.0f);
  let x_2260 : f32 = u_xlat53;
  u_xlat53 = (-(x_2260) + 1.0f);
  let x_2263 : f32 = u_xlat53;
  let x_2264 : f32 = u_xlat53;
  u_xlat53 = (x_2263 * x_2264);
  let x_2266 : f32 = u_xlat53;
  let x_2267 : f32 = u_xlat53;
  u_xlat53 = (x_2266 * x_2267);
  let x_2270 : f32 = u_xlat0.x;
  u_xlat79 = ((-(x_2270) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2277 : f32 = u_xlat0.x;
  let x_2278 : f32 = u_xlat79;
  u_xlat0.x = (x_2277 * x_2278);
  let x_2282 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2282 * 6.0f);
  let x_2294 : vec4<f32> = u_xlat7;
  let x_2297 : f32 = u_xlat0.x;
  let x_2298 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2294.x, x_2294.y, x_2294.z), x_2297);
  u_xlat7 = x_2298;
  let x_2300 : f32 = u_xlat7.w;
  u_xlat0.x = (x_2300 + -1.0f);
  let x_2304 : f32 = x_816.unity_SpecCube0_HDR.w;
  let x_2306 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2304 * x_2306) + 1.0f);
  let x_2311 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2311, 0.0f);
  let x_2315 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2315);
  let x_2319 : f32 = u_xlat0.x;
  let x_2321 : f32 = x_816.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2319 * x_2321);
  let x_2325 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2325);
  let x_2329 : f32 = u_xlat0.x;
  let x_2331 : f32 = x_816.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2329 * x_2331);
  let x_2334 : vec4<f32> = u_xlat7;
  let x_2336 : vec3<f32> = u_xlat0;
  let x_2338 : vec3<f32> = (vec3<f32>(x_2334.x, x_2334.y, x_2334.z) * vec3<f32>(x_2336.x, x_2336.x, x_2336.x));
  let x_2339 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2338.x, x_2338.y, x_2338.z, x_2339.w);
  let x_2341 : f32 = u_xlat76;
  let x_2343 : f32 = u_xlat76;
  let x_2347 : vec2<f32> = ((vec2<f32>(x_2341, x_2341) * vec2<f32>(x_2343, x_2343)) + vec2<f32>(-1.0f, 1.0f));
  let x_2348 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2347.x, x_2347.y, x_2348.z, x_2348.w);
  let x_2351 : f32 = u_xlat8.y;
  u_xlat0.x = (1.0f / x_2351);
  let x_2354 : vec4<f32> = u_xlat5;
  let x_2357 : f32 = u_xlat50;
  u_xlat33 = (-(vec3<f32>(x_2354.x, x_2354.y, x_2354.z)) + vec3<f32>(x_2357, x_2357, x_2357));
  let x_2360 : f32 = u_xlat53;
  let x_2362 : vec3<f32> = u_xlat33;
  let x_2364 : vec4<f32> = u_xlat5;
  u_xlat33 = ((vec3<f32>(x_2360, x_2360, x_2360) * x_2362) + vec3<f32>(x_2364.x, x_2364.y, x_2364.z));
  let x_2367 : vec3<f32> = u_xlat0;
  let x_2369 : vec3<f32> = u_xlat33;
  u_xlat33 = (vec3<f32>(x_2367.x, x_2367.x, x_2367.x) * x_2369);
  let x_2371 : vec4<f32> = u_xlat7;
  let x_2373 : vec3<f32> = u_xlat33;
  let x_2374 : vec3<f32> = (vec3<f32>(x_2371.x, x_2371.y, x_2371.z) * x_2373);
  let x_2375 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2374.x, x_2374.y, x_2374.z, x_2375.w);
  let x_2377 : vec4<f32> = u_xlat4;
  let x_2379 : vec4<f32> = u_xlat6;
  let x_2382 : vec4<f32> = u_xlat7;
  let x_2384 : vec3<f32> = ((vec3<f32>(x_2377.x, x_2377.y, x_2377.z) * vec3<f32>(x_2379.x, x_2379.y, x_2379.z)) + vec3<f32>(x_2382.x, x_2382.y, x_2382.z));
  let x_2385 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2384.x, x_2384.y, x_2384.z, x_2385.w);
  let x_2388 : f32 = u_xlat3.x;
  let x_2390 : f32 = x_816.unity_LightData.z;
  u_xlat0.x = (x_2388 * x_2390);
  let x_2393 : vec4<f32> = u_xlat1;
  let x_2396 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat50 = dot(vec3<f32>(x_2393.x, x_2393.y, x_2393.z), vec3<f32>(x_2396.x, x_2396.y, x_2396.z));
  let x_2399 : f32 = u_xlat50;
  u_xlat50 = clamp(x_2399, 0.0f, 1.0f);
  let x_2401 : f32 = u_xlat50;
  let x_2403 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2401 * x_2403);
  let x_2406 : vec3<f32> = u_xlat0;
  let x_2409 : vec4<f32> = x_29.x_MainLightColor;
  let x_2411 : vec3<f32> = (vec3<f32>(x_2406.x, x_2406.x, x_2406.x) * vec3<f32>(x_2409.x, x_2409.y, x_2409.z));
  let x_2412 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2411.x, x_2411.y, x_2411.z, x_2412.w);
  let x_2414 : vec3<f32> = u_xlat2;
  let x_2416 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat33 = (x_2414 + vec3<f32>(x_2416.x, x_2416.y, x_2416.z));
  let x_2419 : vec3<f32> = u_xlat33;
  let x_2420 : vec3<f32> = u_xlat33;
  u_xlat0.x = dot(x_2419, x_2420);
  let x_2424 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2424, 1.17549435e-38f);
  let x_2429 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_2429);
  let x_2432 : vec3<f32> = u_xlat0;
  let x_2434 : vec3<f32> = u_xlat33;
  u_xlat33 = (vec3<f32>(x_2432.x, x_2432.x, x_2432.x) * x_2434);
  let x_2436 : vec4<f32> = u_xlat1;
  let x_2438 : vec3<f32> = u_xlat33;
  u_xlat0.x = dot(vec3<f32>(x_2436.x, x_2436.y, x_2436.z), x_2438);
  let x_2442 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_2442, 0.0f, 1.0f);
  let x_2446 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2448 : vec3<f32> = u_xlat33;
  u_xlat0.z = dot(vec3<f32>(x_2446.x, x_2446.y, x_2446.z), x_2448);
  let x_2452 : f32 = u_xlat0.z;
  u_xlat0.z = clamp(x_2452, 0.0f, 1.0f);
  let x_2455 : vec3<f32> = u_xlat0;
  let x_2457 : vec3<f32> = u_xlat0;
  let x_2459 : vec2<f32> = (vec2<f32>(x_2455.x, x_2455.z) * vec2<f32>(x_2457.x, x_2457.z));
  let x_2460 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2459.x, x_2460.y, x_2459.y);
  let x_2463 : f32 = u_xlat0.x;
  let x_2465 : f32 = u_xlat8.x;
  u_xlat0.x = ((x_2463 * x_2465) + 1.00001001358032226562f);
  let x_2471 : f32 = u_xlat0.x;
  let x_2473 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2471 * x_2473);
  let x_2477 : f32 = u_xlat0.z;
  u_xlat50 = max(x_2477, 0.10000000149011611938f);
  let x_2480 : f32 = u_xlat50;
  let x_2482 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2480 * x_2482);
  let x_2485 : f32 = u_xlat77;
  let x_2487 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2485 * x_2487);
  let x_2490 : f32 = u_xlat78;
  let x_2492 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2490 / x_2492);
  let x_2495 : vec4<f32> = u_xlat5;
  let x_2497 : vec3<f32> = u_xlat0;
  let x_2500 : vec4<f32> = u_xlat6;
  u_xlat33 = ((vec3<f32>(x_2495.x, x_2495.y, x_2495.z) * vec3<f32>(x_2497.x, x_2497.x, x_2497.x)) + vec3<f32>(x_2500.x, x_2500.y, x_2500.z));
  let x_2503 : vec4<f32> = u_xlat7;
  let x_2505 : vec3<f32> = u_xlat33;
  let x_2506 : vec3<f32> = (vec3<f32>(x_2503.x, x_2503.y, x_2503.z) * x_2505);
  let x_2507 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2506.x, x_2506.y, x_2506.z, x_2507.w);
  let x_2510 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_2512 : f32 = x_816.unity_LightData.y;
  u_xlat0.x = min(x_2510, x_2512);
  let x_2517 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_2517));
  let x_2520 : f32 = u_xlat28;
  let x_2522 : f32 = x_629.x_AdditionalShadowFadeParams.x;
  let x_2525 : f32 = x_629.x_AdditionalShadowFadeParams.y;
  u_xlat50 = ((x_2520 * x_2522) + x_2525);
  let x_2527 : f32 = u_xlat50;
  u_xlat50 = clamp(x_2527, 0.0f, 1.0f);
  u_xlat3.x = 0.0f;
  u_xlat3.y = 0.0f;
  u_xlat3.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2539 : u32 = u_xlatu_loop_1;
    let x_2540 : u32 = u_xlatu0;
    if ((x_2539 < x_2540)) {
    } else {
      break;
    }
    let x_2543 : u32 = u_xlatu_loop_1;
    u_xlatu79 = (x_2543 >> 2u);
    let x_2546 : u32 = u_xlatu_loop_1;
    u_xlati80 = bitcast<i32>((x_2546 & 3u));
    let x_2549 : u32 = u_xlatu79;
    let x_2552 : vec4<f32> = x_816.unity_LightIndices[bitcast<i32>(x_2549)];
    let x_2562 : i32 = u_xlati80;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2567 : vec4<u32> = indexable[x_2562];
    u_xlat79 = dot(x_2552, bitcast<vec4<f32>>(x_2567));
    let x_2571 : f32 = u_xlat79;
    u_xlati79 = i32(x_2571);
    let x_2573 : vec3<f32> = vs_TEXCOORD7;
    let x_2584 : i32 = u_xlati79;
    let x_2586 : vec4<f32> = x_2583.x_AdditionalLightsPosition[x_2584];
    let x_2589 : i32 = u_xlati79;
    let x_2591 : vec4<f32> = x_2583.x_AdditionalLightsPosition[x_2589];
    u_xlat33 = ((-(x_2573) * vec3<f32>(x_2586.w, x_2586.w, x_2586.w)) + vec3<f32>(x_2591.x, x_2591.y, x_2591.z));
    let x_2594 : vec3<f32> = u_xlat33;
    let x_2595 : vec3<f32> = u_xlat33;
    u_xlat80 = dot(x_2594, x_2595);
    let x_2597 : f32 = u_xlat80;
    u_xlat80 = max(x_2597, 0.00006103515625f);
    let x_2599 : f32 = u_xlat80;
    u_xlat81 = inverseSqrt(x_2599);
    let x_2601 : f32 = u_xlat81;
    let x_2603 : vec3<f32> = u_xlat33;
    let x_2604 : vec3<f32> = (vec3<f32>(x_2601, x_2601, x_2601) * x_2603);
    let x_2605 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2604.x, x_2604.y, x_2604.z, x_2605.w);
    let x_2608 : f32 = u_xlat80;
    u_xlat82 = (1.0f / x_2608);
    let x_2610 : f32 = u_xlat80;
    let x_2611 : i32 = u_xlati79;
    let x_2613 : f32 = x_2583.x_AdditionalLightsAttenuation[x_2611].x;
    u_xlat80 = (x_2610 * x_2613);
    let x_2615 : f32 = u_xlat80;
    let x_2617 : f32 = u_xlat80;
    u_xlat80 = ((-(x_2615) * x_2617) + 1.0f);
    let x_2620 : f32 = u_xlat80;
    u_xlat80 = max(x_2620, 0.0f);
    let x_2622 : f32 = u_xlat80;
    let x_2623 : f32 = u_xlat80;
    u_xlat80 = (x_2622 * x_2623);
    let x_2625 : f32 = u_xlat80;
    let x_2626 : f32 = u_xlat82;
    u_xlat80 = (x_2625 * x_2626);
    let x_2628 : i32 = u_xlati79;
    let x_2630 : vec4<f32> = x_2583.x_AdditionalLightsSpotDir[x_2628];
    let x_2632 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_2630.x, x_2630.y, x_2630.z), vec3<f32>(x_2632.x, x_2632.y, x_2632.z));
    let x_2635 : f32 = u_xlat82;
    let x_2636 : i32 = u_xlati79;
    let x_2638 : f32 = x_2583.x_AdditionalLightsAttenuation[x_2636].z;
    let x_2640 : i32 = u_xlati79;
    let x_2642 : f32 = x_2583.x_AdditionalLightsAttenuation[x_2640].w;
    u_xlat82 = ((x_2635 * x_2638) + x_2642);
    let x_2644 : f32 = u_xlat82;
    u_xlat82 = clamp(x_2644, 0.0f, 1.0f);
    let x_2646 : f32 = u_xlat82;
    let x_2647 : f32 = u_xlat82;
    u_xlat82 = (x_2646 * x_2647);
    let x_2649 : f32 = u_xlat80;
    let x_2650 : f32 = u_xlat82;
    u_xlat80 = (x_2649 * x_2650);
    let x_2653 : i32 = u_xlati79;
    let x_2655 : f32 = x_629.x_AdditionalShadowParams[x_2653].w;
    u_xlati82 = i32(x_2655);
    let x_2658 : i32 = u_xlati82;
    u_xlatb84 = (x_2658 >= 0i);
    let x_2660 : bool = u_xlatb84;
    if (x_2660) {
      let x_2664 : i32 = u_xlati79;
      let x_2666 : f32 = x_629.x_AdditionalShadowParams[x_2664].z;
      u_xlatb84 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2666, x_2666, x_2666, x_2666))));
      let x_2670 : bool = u_xlatb84;
      if (x_2670) {
        let x_2674 : vec4<f32> = u_xlat9;
        let x_2677 : vec4<f32> = u_xlat9;
        let x_2680 : vec4<bool> = (abs(vec4<f32>(x_2674.z, x_2674.z, x_2674.y, x_2674.z)) >= abs(vec4<f32>(x_2677.x, x_2677.y, x_2677.x, x_2677.x)));
        let x_2682 : vec3<bool> = vec3<bool>(x_2680.x, x_2680.y, x_2680.z);
        let x_2683 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_2682.x, x_2682.y, x_2682.z, x_2683.w);
        let x_2686 : bool = u_xlatb10.y;
        let x_2688 : bool = u_xlatb10.x;
        u_xlatb84 = (x_2686 & x_2688);
        let x_2690 : vec4<f32> = u_xlat9;
        let x_2693 : vec4<bool> = (-(vec4<f32>(x_2690.z, x_2690.y, x_2690.z, x_2690.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2694 : vec3<bool> = vec3<bool>(x_2693.x, x_2693.y, x_2693.w);
        let x_2695 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_2694.x, x_2694.y, x_2695.z, x_2694.z);
        let x_2698 : bool = u_xlatb10.x;
        u_xlat10.x = select(4.0f, 5.0f, x_2698);
        let x_2703 : bool = u_xlatb10.y;
        u_xlat10.y = select(2.0f, 3.0f, x_2703);
        let x_2708 : bool = u_xlatb10.w;
        u_xlat85 = select(0.0f, 1.0f, x_2708);
        let x_2712 : bool = u_xlatb10.z;
        if (x_2712) {
          let x_2717 : f32 = u_xlat10.y;
          x_2713 = x_2717;
        } else {
          let x_2719 : f32 = u_xlat85;
          x_2713 = x_2719;
        }
        let x_2720 : f32 = x_2713;
        u_xlat35 = x_2720;
        let x_2722 : bool = u_xlatb84;
        if (x_2722) {
          let x_2727 : f32 = u_xlat10.x;
          x_2723 = x_2727;
        } else {
          let x_2729 : f32 = u_xlat35;
          x_2723 = x_2729;
        }
        let x_2730 : f32 = x_2723;
        u_xlat84 = x_2730;
        let x_2731 : i32 = u_xlati79;
        let x_2733 : f32 = x_629.x_AdditionalShadowParams[x_2731].w;
        u_xlat10.x = trunc(x_2733);
        let x_2736 : f32 = u_xlat84;
        let x_2738 : f32 = u_xlat10.x;
        u_xlat84 = (x_2736 + x_2738);
        let x_2740 : f32 = u_xlat84;
        u_xlati82 = i32(x_2740);
      }
      let x_2742 : i32 = u_xlati82;
      u_xlati82 = (x_2742 << bitcast<u32>(2i));
      let x_2744 : vec3<f32> = vs_TEXCOORD7;
      let x_2746 : i32 = u_xlati82;
      let x_2749 : i32 = u_xlati82;
      let x_2753 : vec4<f32> = x_629.x_AdditionalLightsWorldToShadow[((x_2746 + 1i) / 4i)][((x_2749 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_2744.y, x_2744.y, x_2744.y, x_2744.y) * x_2753);
      let x_2755 : i32 = u_xlati82;
      let x_2757 : i32 = u_xlati82;
      let x_2760 : vec4<f32> = x_629.x_AdditionalLightsWorldToShadow[(x_2755 / 4i)][(x_2757 % 4i)];
      let x_2761 : vec3<f32> = vs_TEXCOORD7;
      let x_2764 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2760 * vec4<f32>(x_2761.x, x_2761.x, x_2761.x, x_2761.x)) + x_2764);
      let x_2766 : i32 = u_xlati82;
      let x_2769 : i32 = u_xlati82;
      let x_2773 : vec4<f32> = x_629.x_AdditionalLightsWorldToShadow[((x_2766 + 2i) / 4i)][((x_2769 + 2i) % 4i)];
      let x_2774 : vec3<f32> = vs_TEXCOORD7;
      let x_2777 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2773 * vec4<f32>(x_2774.z, x_2774.z, x_2774.z, x_2774.z)) + x_2777);
      let x_2779 : vec4<f32> = u_xlat10;
      let x_2780 : i32 = u_xlati82;
      let x_2783 : i32 = u_xlati82;
      let x_2787 : vec4<f32> = x_629.x_AdditionalLightsWorldToShadow[((x_2780 + 3i) / 4i)][((x_2783 + 3i) % 4i)];
      u_xlat10 = (x_2779 + x_2787);
      let x_2789 : vec4<f32> = u_xlat10;
      let x_2791 : vec4<f32> = u_xlat10;
      let x_2793 : vec3<f32> = (vec3<f32>(x_2789.x, x_2789.y, x_2789.z) / vec3<f32>(x_2791.w, x_2791.w, x_2791.w));
      let x_2794 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2793.x, x_2793.y, x_2793.z, x_2794.w);
      let x_2797 : i32 = u_xlati79;
      let x_2799 : f32 = x_629.x_AdditionalShadowParams[x_2797].y;
      u_xlatb82 = (0.0f < x_2799);
      let x_2801 : bool = u_xlatb82;
      if (x_2801) {
        let x_2804 : i32 = u_xlati79;
        let x_2806 : f32 = x_629.x_AdditionalShadowParams[x_2804].y;
        u_xlatb82 = (1.0f == x_2806);
        let x_2808 : bool = u_xlatb82;
        if (x_2808) {
          let x_2811 : vec4<f32> = u_xlat10;
          let x_2814 : vec4<f32> = x_629.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2811.x, x_2811.y, x_2811.x, x_2811.y) + x_2814);
          let x_2817 : vec4<f32> = u_xlat11;
          let x_2818 : vec2<f32> = vec2<f32>(x_2817.x, x_2817.y);
          let x_2820 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2818.x, x_2818.y, x_2820);
          let x_2828 : vec3<f32> = txVec30;
          let x_2830 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2828.xy, x_2828.z);
          u_xlat12.x = x_2830;
          let x_2833 : vec4<f32> = u_xlat11;
          let x_2834 : vec2<f32> = vec2<f32>(x_2833.z, x_2833.w);
          let x_2836 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_2834.x, x_2834.y, x_2836);
          let x_2843 : vec3<f32> = txVec31;
          let x_2845 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2843.xy, x_2843.z);
          u_xlat12.y = x_2845;
          let x_2847 : vec4<f32> = u_xlat10;
          let x_2850 : vec4<f32> = x_629.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_2847.x, x_2847.y, x_2847.x, x_2847.y) + x_2850);
          let x_2853 : vec4<f32> = u_xlat11;
          let x_2854 : vec2<f32> = vec2<f32>(x_2853.x, x_2853.y);
          let x_2856 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_2854.x, x_2854.y, x_2856);
          let x_2863 : vec3<f32> = txVec32;
          let x_2865 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2863.xy, x_2863.z);
          u_xlat12.z = x_2865;
          let x_2868 : vec4<f32> = u_xlat11;
          let x_2869 : vec2<f32> = vec2<f32>(x_2868.z, x_2868.w);
          let x_2871 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_2869.x, x_2869.y, x_2871);
          let x_2878 : vec3<f32> = txVec33;
          let x_2880 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2878.xy, x_2878.z);
          u_xlat12.w = x_2880;
          let x_2882 : vec4<f32> = u_xlat12;
          u_xlat82 = dot(x_2882, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2885 : i32 = u_xlati79;
          let x_2887 : f32 = x_629.x_AdditionalShadowParams[x_2885].y;
          u_xlatb84 = (2.0f == x_2887);
          let x_2889 : bool = u_xlatb84;
          if (x_2889) {
            let x_2892 : vec4<f32> = u_xlat10;
            let x_2895 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_2898 : vec2<f32> = ((vec2<f32>(x_2892.x, x_2892.y) * vec2<f32>(x_2895.z, x_2895.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2899 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2898.x, x_2898.y, x_2899.z, x_2899.w);
            let x_2901 : vec4<f32> = u_xlat11;
            let x_2903 : vec2<f32> = floor(vec2<f32>(x_2901.x, x_2901.y));
            let x_2904 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2903.x, x_2903.y, x_2904.z, x_2904.w);
            let x_2907 : vec4<f32> = u_xlat10;
            let x_2910 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_2913 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2907.x, x_2907.y) * vec2<f32>(x_2910.z, x_2910.w)) + -(vec2<f32>(x_2913.x, x_2913.y)));
            let x_2917 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2917.x, x_2917.x, x_2917.y, x_2917.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2920 : vec4<f32> = u_xlat12;
            let x_2922 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2920.x, x_2920.x, x_2920.z, x_2920.z) * vec4<f32>(x_2922.x, x_2922.x, x_2922.z, x_2922.z));
            let x_2925 : vec4<f32> = u_xlat13;
            let x_2927 : vec2<f32> = (vec2<f32>(x_2925.y, x_2925.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2928 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2927.x, x_2928.y, x_2927.y, x_2928.w);
            let x_2930 : vec4<f32> = u_xlat13;
            let x_2933 : vec2<f32> = u_xlat61;
            let x_2935 : vec2<f32> = ((vec2<f32>(x_2930.x, x_2930.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2933));
            let x_2936 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2935.x, x_2935.y, x_2936.z, x_2936.w);
            let x_2939 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_2939) + vec2<f32>(1.0f, 1.0f));
            let x_2942 : vec2<f32> = u_xlat61;
            let x_2943 : vec2<f32> = min(x_2942, vec2<f32>(0.0f, 0.0f));
            let x_2944 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2943.x, x_2943.y, x_2944.z, x_2944.w);
            let x_2946 : vec4<f32> = u_xlat14;
            let x_2949 : vec4<f32> = u_xlat14;
            let x_2952 : vec2<f32> = u_xlat63;
            let x_2953 : vec2<f32> = ((-(vec2<f32>(x_2946.x, x_2946.y)) * vec2<f32>(x_2949.x, x_2949.y)) + x_2952);
            let x_2954 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2953.x, x_2953.y, x_2954.z, x_2954.w);
            let x_2956 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_2956, vec2<f32>(0.0f, 0.0f));
            let x_2958 : vec2<f32> = u_xlat61;
            let x_2960 : vec2<f32> = u_xlat61;
            let x_2962 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_2958) * x_2960) + vec2<f32>(x_2962.y, x_2962.w));
            let x_2965 : vec4<f32> = u_xlat14;
            let x_2967 : vec2<f32> = (vec2<f32>(x_2965.x, x_2965.y) + vec2<f32>(1.0f, 1.0f));
            let x_2968 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2967.x, x_2967.y, x_2968.z, x_2968.w);
            let x_2970 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_2970 + vec2<f32>(1.0f, 1.0f));
            let x_2972 : vec4<f32> = u_xlat13;
            let x_2974 : vec2<f32> = (vec2<f32>(x_2972.x, x_2972.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2975 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2974.x, x_2974.y, x_2975.z, x_2975.w);
            let x_2977 : vec2<f32> = u_xlat63;
            let x_2978 : vec2<f32> = (x_2977 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2979 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2978.x, x_2978.y, x_2979.z, x_2979.w);
            let x_2981 : vec4<f32> = u_xlat14;
            let x_2983 : vec2<f32> = (vec2<f32>(x_2981.x, x_2981.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2984 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2983.x, x_2983.y, x_2984.z, x_2984.w);
            let x_2986 : vec2<f32> = u_xlat61;
            let x_2987 : vec2<f32> = (x_2986 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2988 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2987.x, x_2987.y, x_2988.z, x_2988.w);
            let x_2990 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_2990.y, x_2990.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2994 : f32 = u_xlat14.x;
            u_xlat15.z = x_2994;
            let x_2997 : f32 = u_xlat61.x;
            u_xlat15.w = x_2997;
            let x_3000 : f32 = u_xlat16.x;
            u_xlat13.z = x_3000;
            let x_3003 : f32 = u_xlat12.x;
            u_xlat13.w = x_3003;
            let x_3005 : vec4<f32> = u_xlat13;
            let x_3007 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_3005.z, x_3005.w, x_3005.x, x_3005.z) + vec4<f32>(x_3007.z, x_3007.w, x_3007.x, x_3007.z));
            let x_3011 : f32 = u_xlat15.y;
            u_xlat14.z = x_3011;
            let x_3014 : f32 = u_xlat61.y;
            u_xlat14.w = x_3014;
            let x_3017 : f32 = u_xlat13.y;
            u_xlat16.z = x_3017;
            let x_3020 : f32 = u_xlat12.z;
            u_xlat16.w = x_3020;
            let x_3022 : vec4<f32> = u_xlat14;
            let x_3024 : vec4<f32> = u_xlat16;
            let x_3026 : vec3<f32> = (vec3<f32>(x_3022.z, x_3022.y, x_3022.w) + vec3<f32>(x_3024.z, x_3024.y, x_3024.w));
            let x_3027 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3026.x, x_3026.y, x_3026.z, x_3027.w);
            let x_3029 : vec4<f32> = u_xlat13;
            let x_3031 : vec4<f32> = u_xlat17;
            let x_3033 : vec3<f32> = (vec3<f32>(x_3029.x, x_3029.z, x_3029.w) / vec3<f32>(x_3031.z, x_3031.w, x_3031.y));
            let x_3034 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3033.x, x_3033.y, x_3033.z, x_3034.w);
            let x_3036 : vec4<f32> = u_xlat13;
            let x_3038 : vec3<f32> = (vec3<f32>(x_3036.x, x_3036.y, x_3036.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3039 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3038.x, x_3038.y, x_3038.z, x_3039.w);
            let x_3041 : vec4<f32> = u_xlat16;
            let x_3043 : vec4<f32> = u_xlat12;
            let x_3045 : vec3<f32> = (vec3<f32>(x_3041.z, x_3041.y, x_3041.w) / vec3<f32>(x_3043.x, x_3043.y, x_3043.z));
            let x_3046 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3045.x, x_3045.y, x_3045.z, x_3046.w);
            let x_3048 : vec4<f32> = u_xlat14;
            let x_3050 : vec3<f32> = (vec3<f32>(x_3048.x, x_3048.y, x_3048.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3051 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3050.x, x_3050.y, x_3050.z, x_3051.w);
            let x_3053 : vec4<f32> = u_xlat13;
            let x_3056 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3058 : vec3<f32> = (vec3<f32>(x_3053.y, x_3053.x, x_3053.z) * vec3<f32>(x_3056.x, x_3056.x, x_3056.x));
            let x_3059 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3058.x, x_3058.y, x_3058.z, x_3059.w);
            let x_3061 : vec4<f32> = u_xlat14;
            let x_3064 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3066 : vec3<f32> = (vec3<f32>(x_3061.x, x_3061.y, x_3061.z) * vec3<f32>(x_3064.y, x_3064.y, x_3064.y));
            let x_3067 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3066.x, x_3066.y, x_3066.z, x_3067.w);
            let x_3070 : f32 = u_xlat14.x;
            u_xlat13.w = x_3070;
            let x_3072 : vec4<f32> = u_xlat11;
            let x_3075 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3078 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_3072.x, x_3072.y, x_3072.x, x_3072.y) * vec4<f32>(x_3075.x, x_3075.y, x_3075.x, x_3075.y)) + vec4<f32>(x_3078.y, x_3078.w, x_3078.x, x_3078.w));
            let x_3081 : vec4<f32> = u_xlat11;
            let x_3084 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3087 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_3081.x, x_3081.y) * vec2<f32>(x_3084.x, x_3084.y)) + vec2<f32>(x_3087.z, x_3087.w));
            let x_3091 : f32 = u_xlat13.y;
            u_xlat14.w = x_3091;
            let x_3093 : vec4<f32> = u_xlat14;
            let x_3094 : vec2<f32> = vec2<f32>(x_3093.y, x_3093.z);
            let x_3095 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3095.x, x_3094.x, x_3095.z, x_3094.y);
            let x_3097 : vec4<f32> = u_xlat11;
            let x_3100 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3103 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_3097.x, x_3097.y, x_3097.x, x_3097.y) * vec4<f32>(x_3100.x, x_3100.y, x_3100.x, x_3100.y)) + vec4<f32>(x_3103.x, x_3103.y, x_3103.z, x_3103.y));
            let x_3106 : vec4<f32> = u_xlat11;
            let x_3109 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3112 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3106.x, x_3106.y, x_3106.x, x_3106.y) * vec4<f32>(x_3109.x, x_3109.y, x_3109.x, x_3109.y)) + vec4<f32>(x_3112.w, x_3112.y, x_3112.w, x_3112.z));
            let x_3115 : vec4<f32> = u_xlat11;
            let x_3118 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3121 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_3115.x, x_3115.y, x_3115.x, x_3115.y) * vec4<f32>(x_3118.x, x_3118.y, x_3118.x, x_3118.y)) + vec4<f32>(x_3121.x, x_3121.w, x_3121.z, x_3121.w));
            let x_3124 : vec4<f32> = u_xlat12;
            let x_3126 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_3124.x, x_3124.x, x_3124.x, x_3124.y) * vec4<f32>(x_3126.z, x_3126.w, x_3126.y, x_3126.z));
            let x_3129 : vec4<f32> = u_xlat12;
            let x_3131 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_3129.y, x_3129.y, x_3129.z, x_3129.z) * x_3131);
            let x_3134 : f32 = u_xlat12.z;
            let x_3136 : f32 = u_xlat17.y;
            u_xlat84 = (x_3134 * x_3136);
            let x_3139 : vec4<f32> = u_xlat15;
            let x_3140 : vec2<f32> = vec2<f32>(x_3139.x, x_3139.y);
            let x_3142 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_3140.x, x_3140.y, x_3142);
            let x_3149 : vec3<f32> = txVec34;
            let x_3151 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3149.xy, x_3149.z);
            u_xlat85 = x_3151;
            let x_3153 : vec4<f32> = u_xlat15;
            let x_3154 : vec2<f32> = vec2<f32>(x_3153.z, x_3153.w);
            let x_3156 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_3154.x, x_3154.y, x_3156);
            let x_3163 : vec3<f32> = txVec35;
            let x_3165 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3163.xy, x_3163.z);
            u_xlat11.x = x_3165;
            let x_3168 : f32 = u_xlat11.x;
            let x_3170 : f32 = u_xlat18.y;
            u_xlat11.x = (x_3168 * x_3170);
            let x_3174 : f32 = u_xlat18.x;
            let x_3175 : f32 = u_xlat85;
            let x_3178 : f32 = u_xlat11.x;
            u_xlat85 = ((x_3174 * x_3175) + x_3178);
            let x_3181 : vec2<f32> = u_xlat61;
            let x_3183 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_3181.x, x_3181.y, x_3183);
            let x_3190 : vec3<f32> = txVec36;
            let x_3192 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3190.xy, x_3190.z);
            u_xlat11.x = x_3192;
            let x_3195 : f32 = u_xlat18.z;
            let x_3197 : f32 = u_xlat11.x;
            let x_3199 : f32 = u_xlat85;
            u_xlat85 = ((x_3195 * x_3197) + x_3199);
            let x_3202 : vec4<f32> = u_xlat14;
            let x_3203 : vec2<f32> = vec2<f32>(x_3202.x, x_3202.y);
            let x_3205 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_3203.x, x_3203.y, x_3205);
            let x_3212 : vec3<f32> = txVec37;
            let x_3214 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3212.xy, x_3212.z);
            u_xlat11.x = x_3214;
            let x_3217 : f32 = u_xlat18.w;
            let x_3219 : f32 = u_xlat11.x;
            let x_3221 : f32 = u_xlat85;
            u_xlat85 = ((x_3217 * x_3219) + x_3221);
            let x_3224 : vec4<f32> = u_xlat16;
            let x_3225 : vec2<f32> = vec2<f32>(x_3224.x, x_3224.y);
            let x_3227 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_3225.x, x_3225.y, x_3227);
            let x_3234 : vec3<f32> = txVec38;
            let x_3236 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3234.xy, x_3234.z);
            u_xlat11.x = x_3236;
            let x_3239 : f32 = u_xlat19.x;
            let x_3241 : f32 = u_xlat11.x;
            let x_3243 : f32 = u_xlat85;
            u_xlat85 = ((x_3239 * x_3241) + x_3243);
            let x_3246 : vec4<f32> = u_xlat16;
            let x_3247 : vec2<f32> = vec2<f32>(x_3246.z, x_3246.w);
            let x_3249 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_3247.x, x_3247.y, x_3249);
            let x_3256 : vec3<f32> = txVec39;
            let x_3258 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3256.xy, x_3256.z);
            u_xlat11.x = x_3258;
            let x_3261 : f32 = u_xlat19.y;
            let x_3263 : f32 = u_xlat11.x;
            let x_3265 : f32 = u_xlat85;
            u_xlat85 = ((x_3261 * x_3263) + x_3265);
            let x_3268 : vec4<f32> = u_xlat14;
            let x_3269 : vec2<f32> = vec2<f32>(x_3268.z, x_3268.w);
            let x_3271 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_3269.x, x_3269.y, x_3271);
            let x_3278 : vec3<f32> = txVec40;
            let x_3280 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3278.xy, x_3278.z);
            u_xlat11.x = x_3280;
            let x_3283 : f32 = u_xlat19.z;
            let x_3285 : f32 = u_xlat11.x;
            let x_3287 : f32 = u_xlat85;
            u_xlat85 = ((x_3283 * x_3285) + x_3287);
            let x_3290 : vec4<f32> = u_xlat13;
            let x_3291 : vec2<f32> = vec2<f32>(x_3290.x, x_3290.y);
            let x_3293 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_3291.x, x_3291.y, x_3293);
            let x_3300 : vec3<f32> = txVec41;
            let x_3302 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3300.xy, x_3300.z);
            u_xlat11.x = x_3302;
            let x_3305 : f32 = u_xlat19.w;
            let x_3307 : f32 = u_xlat11.x;
            let x_3309 : f32 = u_xlat85;
            u_xlat85 = ((x_3305 * x_3307) + x_3309);
            let x_3312 : vec4<f32> = u_xlat13;
            let x_3313 : vec2<f32> = vec2<f32>(x_3312.z, x_3312.w);
            let x_3315 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_3313.x, x_3313.y, x_3315);
            let x_3322 : vec3<f32> = txVec42;
            let x_3324 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3322.xy, x_3322.z);
            u_xlat11.x = x_3324;
            let x_3326 : f32 = u_xlat84;
            let x_3328 : f32 = u_xlat11.x;
            let x_3330 : f32 = u_xlat85;
            u_xlat82 = ((x_3326 * x_3328) + x_3330);
          } else {
            let x_3333 : vec4<f32> = u_xlat10;
            let x_3336 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3339 : vec2<f32> = ((vec2<f32>(x_3333.x, x_3333.y) * vec2<f32>(x_3336.z, x_3336.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3340 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3339.x, x_3339.y, x_3340.z, x_3340.w);
            let x_3342 : vec4<f32> = u_xlat11;
            let x_3344 : vec2<f32> = floor(vec2<f32>(x_3342.x, x_3342.y));
            let x_3345 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3344.x, x_3344.y, x_3345.z, x_3345.w);
            let x_3347 : vec4<f32> = u_xlat10;
            let x_3350 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3353 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3347.x, x_3347.y) * vec2<f32>(x_3350.z, x_3350.w)) + -(vec2<f32>(x_3353.x, x_3353.y)));
            let x_3357 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3357.x, x_3357.x, x_3357.y, x_3357.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3360 : vec4<f32> = u_xlat12;
            let x_3362 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3360.x, x_3360.x, x_3360.z, x_3360.z) * vec4<f32>(x_3362.x, x_3362.x, x_3362.z, x_3362.z));
            let x_3365 : vec4<f32> = u_xlat13;
            let x_3367 : vec2<f32> = (vec2<f32>(x_3365.y, x_3365.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3368 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3368.x, x_3367.x, x_3368.z, x_3367.y);
            let x_3370 : vec4<f32> = u_xlat13;
            let x_3373 : vec2<f32> = u_xlat61;
            let x_3375 : vec2<f32> = ((vec2<f32>(x_3370.x, x_3370.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3373));
            let x_3376 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3375.x, x_3376.y, x_3375.y, x_3376.w);
            let x_3378 : vec2<f32> = u_xlat61;
            let x_3380 : vec2<f32> = (-(x_3378) + vec2<f32>(1.0f, 1.0f));
            let x_3381 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3380.x, x_3380.y, x_3381.z, x_3381.w);
            let x_3383 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_3383, vec2<f32>(0.0f, 0.0f));
            let x_3385 : vec2<f32> = u_xlat63;
            let x_3387 : vec2<f32> = u_xlat63;
            let x_3389 : vec4<f32> = u_xlat13;
            let x_3391 : vec2<f32> = ((-(x_3385) * x_3387) + vec2<f32>(x_3389.x, x_3389.y));
            let x_3392 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3391.x, x_3391.y, x_3392.z, x_3392.w);
            let x_3394 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_3394, vec2<f32>(0.0f, 0.0f));
            let x_3397 : vec2<f32> = u_xlat63;
            let x_3399 : vec2<f32> = u_xlat63;
            let x_3401 : vec4<f32> = u_xlat12;
            let x_3403 : vec2<f32> = ((-(x_3397) * x_3399) + vec2<f32>(x_3401.y, x_3401.w));
            let x_3404 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_3403.x, x_3404.y, x_3403.y);
            let x_3406 : vec4<f32> = u_xlat13;
            let x_3408 : vec2<f32> = (vec2<f32>(x_3406.x, x_3406.y) + vec2<f32>(2.0f, 2.0f));
            let x_3409 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3408.x, x_3408.y, x_3409.z, x_3409.w);
            let x_3411 : vec3<f32> = u_xlat37;
            let x_3413 : vec2<f32> = (vec2<f32>(x_3411.x, x_3411.z) + vec2<f32>(2.0f, 2.0f));
            let x_3414 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3414.x, x_3413.x, x_3414.z, x_3413.y);
            let x_3417 : f32 = u_xlat12.y;
            u_xlat15.z = (x_3417 * 0.08163200318813323975f);
            let x_3420 : vec4<f32> = u_xlat12;
            let x_3422 : vec3<f32> = (vec3<f32>(x_3420.z, x_3420.x, x_3420.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3423 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3422.x, x_3422.y, x_3422.z, x_3423.w);
            let x_3425 : vec4<f32> = u_xlat13;
            let x_3427 : vec2<f32> = (vec2<f32>(x_3425.x, x_3425.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3428 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3427.x, x_3427.y, x_3428.z, x_3428.w);
            let x_3431 : f32 = u_xlat16.y;
            u_xlat15.x = x_3431;
            let x_3433 : vec2<f32> = u_xlat61;
            let x_3436 : vec2<f32> = ((vec2<f32>(x_3433.x, x_3433.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3437 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3437.x, x_3436.x, x_3437.z, x_3436.y);
            let x_3439 : vec2<f32> = u_xlat61;
            let x_3442 : vec2<f32> = ((vec2<f32>(x_3439.x, x_3439.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3443 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3442.x, x_3443.y, x_3442.y, x_3443.w);
            let x_3446 : f32 = u_xlat12.x;
            u_xlat13.y = x_3446;
            let x_3449 : f32 = u_xlat14.y;
            u_xlat13.w = x_3449;
            let x_3451 : vec4<f32> = u_xlat13;
            let x_3452 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3451 + x_3452);
            let x_3454 : vec2<f32> = u_xlat61;
            let x_3457 : vec2<f32> = ((vec2<f32>(x_3454.y, x_3454.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3458 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3458.x, x_3457.x, x_3458.z, x_3457.y);
            let x_3460 : vec2<f32> = u_xlat61;
            let x_3463 : vec2<f32> = ((vec2<f32>(x_3460.y, x_3460.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3464 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3463.x, x_3464.y, x_3463.y, x_3464.w);
            let x_3467 : f32 = u_xlat12.y;
            u_xlat14.y = x_3467;
            let x_3469 : vec4<f32> = u_xlat14;
            let x_3470 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_3469 + x_3470);
            let x_3472 : vec4<f32> = u_xlat13;
            let x_3473 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_3472 / x_3473);
            let x_3475 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3475 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3477 : vec4<f32> = u_xlat14;
            let x_3478 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_3477 / x_3478);
            let x_3480 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3480 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3482 : vec4<f32> = u_xlat13;
            let x_3485 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3482.w, x_3482.x, x_3482.y, x_3482.z) * vec4<f32>(x_3485.x, x_3485.x, x_3485.x, x_3485.x));
            let x_3488 : vec4<f32> = u_xlat14;
            let x_3491 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3488.x, x_3488.w, x_3488.y, x_3488.z) * vec4<f32>(x_3491.y, x_3491.y, x_3491.y, x_3491.y));
            let x_3494 : vec4<f32> = u_xlat13;
            let x_3495 : vec3<f32> = vec3<f32>(x_3494.y, x_3494.z, x_3494.w);
            let x_3496 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3495.x, x_3496.y, x_3495.y, x_3495.z);
            let x_3499 : f32 = u_xlat14.x;
            u_xlat16.y = x_3499;
            let x_3501 : vec4<f32> = u_xlat11;
            let x_3504 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3507 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3501.x, x_3501.y, x_3501.x, x_3501.y) * vec4<f32>(x_3504.x, x_3504.y, x_3504.x, x_3504.y)) + vec4<f32>(x_3507.x, x_3507.y, x_3507.z, x_3507.y));
            let x_3510 : vec4<f32> = u_xlat11;
            let x_3513 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3516 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_3510.x, x_3510.y) * vec2<f32>(x_3513.x, x_3513.y)) + vec2<f32>(x_3516.w, x_3516.y));
            let x_3520 : f32 = u_xlat16.y;
            u_xlat13.y = x_3520;
            let x_3523 : f32 = u_xlat14.z;
            u_xlat16.y = x_3523;
            let x_3525 : vec4<f32> = u_xlat11;
            let x_3528 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3531 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3525.x, x_3525.y, x_3525.x, x_3525.y) * vec4<f32>(x_3528.x, x_3528.y, x_3528.x, x_3528.y)) + vec4<f32>(x_3531.x, x_3531.y, x_3531.z, x_3531.y));
            let x_3534 : vec4<f32> = u_xlat11;
            let x_3537 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3540 : vec4<f32> = u_xlat16;
            let x_3542 : vec2<f32> = ((vec2<f32>(x_3534.x, x_3534.y) * vec2<f32>(x_3537.x, x_3537.y)) + vec2<f32>(x_3540.w, x_3540.y));
            let x_3543 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3542.x, x_3542.y, x_3543.z, x_3543.w);
            let x_3546 : f32 = u_xlat16.y;
            u_xlat13.z = x_3546;
            let x_3548 : vec4<f32> = u_xlat11;
            let x_3551 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3554 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3548.x, x_3548.y, x_3548.x, x_3548.y) * vec4<f32>(x_3551.x, x_3551.y, x_3551.x, x_3551.y)) + vec4<f32>(x_3554.x, x_3554.y, x_3554.x, x_3554.z));
            let x_3558 : f32 = u_xlat14.w;
            u_xlat16.y = x_3558;
            let x_3561 : vec4<f32> = u_xlat11;
            let x_3564 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3567 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3561.x, x_3561.y, x_3561.x, x_3561.y) * vec4<f32>(x_3564.x, x_3564.y, x_3564.x, x_3564.y)) + vec4<f32>(x_3567.x, x_3567.y, x_3567.z, x_3567.y));
            let x_3571 : vec4<f32> = u_xlat11;
            let x_3574 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3577 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3571.x, x_3571.y) * vec2<f32>(x_3574.x, x_3574.y)) + vec2<f32>(x_3577.w, x_3577.y));
            let x_3581 : f32 = u_xlat16.y;
            u_xlat13.w = x_3581;
            let x_3584 : vec4<f32> = u_xlat11;
            let x_3587 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3590 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3584.x, x_3584.y) * vec2<f32>(x_3587.x, x_3587.y)) + vec2<f32>(x_3590.x, x_3590.w));
            let x_3593 : vec4<f32> = u_xlat16;
            let x_3594 : vec3<f32> = vec3<f32>(x_3593.x, x_3593.z, x_3593.w);
            let x_3595 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3594.x, x_3595.y, x_3594.y, x_3594.z);
            let x_3597 : vec4<f32> = u_xlat11;
            let x_3600 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3603 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3597.x, x_3597.y, x_3597.x, x_3597.y) * vec4<f32>(x_3600.x, x_3600.y, x_3600.x, x_3600.y)) + vec4<f32>(x_3603.x, x_3603.y, x_3603.z, x_3603.y));
            let x_3607 : vec4<f32> = u_xlat11;
            let x_3610 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3613 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3607.x, x_3607.y) * vec2<f32>(x_3610.x, x_3610.y)) + vec2<f32>(x_3613.w, x_3613.y));
            let x_3617 : f32 = u_xlat13.x;
            u_xlat14.x = x_3617;
            let x_3619 : vec4<f32> = u_xlat11;
            let x_3622 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3625 : vec4<f32> = u_xlat14;
            let x_3627 : vec2<f32> = ((vec2<f32>(x_3619.x, x_3619.y) * vec2<f32>(x_3622.x, x_3622.y)) + vec2<f32>(x_3625.x, x_3625.y));
            let x_3628 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3627.x, x_3627.y, x_3628.z, x_3628.w);
            let x_3631 : vec4<f32> = u_xlat12;
            let x_3633 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3631.x, x_3631.x, x_3631.x, x_3631.x) * x_3633);
            let x_3636 : vec4<f32> = u_xlat12;
            let x_3638 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3636.y, x_3636.y, x_3636.y, x_3636.y) * x_3638);
            let x_3641 : vec4<f32> = u_xlat12;
            let x_3643 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3641.z, x_3641.z, x_3641.z, x_3641.z) * x_3643);
            let x_3645 : vec4<f32> = u_xlat12;
            let x_3647 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3645.w, x_3645.w, x_3645.w, x_3645.w) * x_3647);
            let x_3650 : vec4<f32> = u_xlat17;
            let x_3651 : vec2<f32> = vec2<f32>(x_3650.x, x_3650.y);
            let x_3653 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3651.x, x_3651.y, x_3653);
            let x_3660 : vec3<f32> = txVec43;
            let x_3662 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3660.xy, x_3660.z);
            u_xlat84 = x_3662;
            let x_3664 : vec4<f32> = u_xlat17;
            let x_3665 : vec2<f32> = vec2<f32>(x_3664.z, x_3664.w);
            let x_3667 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3665.x, x_3665.y, x_3667);
            let x_3674 : vec3<f32> = txVec44;
            let x_3676 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3674.xy, x_3674.z);
            u_xlat85 = x_3676;
            let x_3677 : f32 = u_xlat85;
            let x_3679 : f32 = u_xlat22.y;
            u_xlat85 = (x_3677 * x_3679);
            let x_3682 : f32 = u_xlat22.x;
            let x_3683 : f32 = u_xlat84;
            let x_3685 : f32 = u_xlat85;
            u_xlat84 = ((x_3682 * x_3683) + x_3685);
            let x_3688 : vec2<f32> = u_xlat61;
            let x_3690 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3688.x, x_3688.y, x_3690);
            let x_3697 : vec3<f32> = txVec45;
            let x_3699 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3697.xy, x_3697.z);
            u_xlat85 = x_3699;
            let x_3701 : f32 = u_xlat22.z;
            let x_3702 : f32 = u_xlat85;
            let x_3704 : f32 = u_xlat84;
            u_xlat84 = ((x_3701 * x_3702) + x_3704);
            let x_3707 : vec4<f32> = u_xlat20;
            let x_3708 : vec2<f32> = vec2<f32>(x_3707.x, x_3707.y);
            let x_3710 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3708.x, x_3708.y, x_3710);
            let x_3717 : vec3<f32> = txVec46;
            let x_3719 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3717.xy, x_3717.z);
            u_xlat85 = x_3719;
            let x_3721 : f32 = u_xlat22.w;
            let x_3722 : f32 = u_xlat85;
            let x_3724 : f32 = u_xlat84;
            u_xlat84 = ((x_3721 * x_3722) + x_3724);
            let x_3727 : vec4<f32> = u_xlat18;
            let x_3728 : vec2<f32> = vec2<f32>(x_3727.x, x_3727.y);
            let x_3730 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3728.x, x_3728.y, x_3730);
            let x_3737 : vec3<f32> = txVec47;
            let x_3739 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3737.xy, x_3737.z);
            u_xlat85 = x_3739;
            let x_3741 : f32 = u_xlat23.x;
            let x_3742 : f32 = u_xlat85;
            let x_3744 : f32 = u_xlat84;
            u_xlat84 = ((x_3741 * x_3742) + x_3744);
            let x_3747 : vec4<f32> = u_xlat18;
            let x_3748 : vec2<f32> = vec2<f32>(x_3747.z, x_3747.w);
            let x_3750 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3748.x, x_3748.y, x_3750);
            let x_3757 : vec3<f32> = txVec48;
            let x_3759 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3757.xy, x_3757.z);
            u_xlat85 = x_3759;
            let x_3761 : f32 = u_xlat23.y;
            let x_3762 : f32 = u_xlat85;
            let x_3764 : f32 = u_xlat84;
            u_xlat84 = ((x_3761 * x_3762) + x_3764);
            let x_3767 : vec4<f32> = u_xlat19;
            let x_3768 : vec2<f32> = vec2<f32>(x_3767.x, x_3767.y);
            let x_3770 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3768.x, x_3768.y, x_3770);
            let x_3777 : vec3<f32> = txVec49;
            let x_3779 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3777.xy, x_3777.z);
            u_xlat85 = x_3779;
            let x_3781 : f32 = u_xlat23.z;
            let x_3782 : f32 = u_xlat85;
            let x_3784 : f32 = u_xlat84;
            u_xlat84 = ((x_3781 * x_3782) + x_3784);
            let x_3787 : vec4<f32> = u_xlat20;
            let x_3788 : vec2<f32> = vec2<f32>(x_3787.z, x_3787.w);
            let x_3790 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3788.x, x_3788.y, x_3790);
            let x_3797 : vec3<f32> = txVec50;
            let x_3799 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3797.xy, x_3797.z);
            u_xlat85 = x_3799;
            let x_3801 : f32 = u_xlat23.w;
            let x_3802 : f32 = u_xlat85;
            let x_3804 : f32 = u_xlat84;
            u_xlat84 = ((x_3801 * x_3802) + x_3804);
            let x_3807 : vec4<f32> = u_xlat21;
            let x_3808 : vec2<f32> = vec2<f32>(x_3807.x, x_3807.y);
            let x_3810 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3808.x, x_3808.y, x_3810);
            let x_3817 : vec3<f32> = txVec51;
            let x_3819 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3817.xy, x_3817.z);
            u_xlat85 = x_3819;
            let x_3821 : f32 = u_xlat24.x;
            let x_3822 : f32 = u_xlat85;
            let x_3824 : f32 = u_xlat84;
            u_xlat84 = ((x_3821 * x_3822) + x_3824);
            let x_3827 : vec4<f32> = u_xlat21;
            let x_3828 : vec2<f32> = vec2<f32>(x_3827.z, x_3827.w);
            let x_3830 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_3828.x, x_3828.y, x_3830);
            let x_3837 : vec3<f32> = txVec52;
            let x_3839 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3837.xy, x_3837.z);
            u_xlat85 = x_3839;
            let x_3841 : f32 = u_xlat24.y;
            let x_3842 : f32 = u_xlat85;
            let x_3844 : f32 = u_xlat84;
            u_xlat84 = ((x_3841 * x_3842) + x_3844);
            let x_3847 : vec2<f32> = u_xlat38;
            let x_3849 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_3847.x, x_3847.y, x_3849);
            let x_3856 : vec3<f32> = txVec53;
            let x_3858 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3856.xy, x_3856.z);
            u_xlat85 = x_3858;
            let x_3860 : f32 = u_xlat24.z;
            let x_3861 : f32 = u_xlat85;
            let x_3863 : f32 = u_xlat84;
            u_xlat84 = ((x_3860 * x_3861) + x_3863);
            let x_3866 : vec2<f32> = u_xlat69;
            let x_3868 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_3866.x, x_3866.y, x_3868);
            let x_3875 : vec3<f32> = txVec54;
            let x_3877 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3875.xy, x_3875.z);
            u_xlat85 = x_3877;
            let x_3879 : f32 = u_xlat24.w;
            let x_3880 : f32 = u_xlat85;
            let x_3882 : f32 = u_xlat84;
            u_xlat84 = ((x_3879 * x_3880) + x_3882);
            let x_3885 : vec4<f32> = u_xlat16;
            let x_3886 : vec2<f32> = vec2<f32>(x_3885.x, x_3885.y);
            let x_3888 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_3886.x, x_3886.y, x_3888);
            let x_3895 : vec3<f32> = txVec55;
            let x_3897 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3895.xy, x_3895.z);
            u_xlat85 = x_3897;
            let x_3899 : f32 = u_xlat12.x;
            let x_3900 : f32 = u_xlat85;
            let x_3902 : f32 = u_xlat84;
            u_xlat84 = ((x_3899 * x_3900) + x_3902);
            let x_3905 : vec4<f32> = u_xlat16;
            let x_3906 : vec2<f32> = vec2<f32>(x_3905.z, x_3905.w);
            let x_3908 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_3906.x, x_3906.y, x_3908);
            let x_3915 : vec3<f32> = txVec56;
            let x_3917 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3915.xy, x_3915.z);
            u_xlat85 = x_3917;
            let x_3919 : f32 = u_xlat12.y;
            let x_3920 : f32 = u_xlat85;
            let x_3922 : f32 = u_xlat84;
            u_xlat84 = ((x_3919 * x_3920) + x_3922);
            let x_3925 : vec2<f32> = u_xlat64;
            let x_3927 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_3925.x, x_3925.y, x_3927);
            let x_3934 : vec3<f32> = txVec57;
            let x_3936 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3934.xy, x_3934.z);
            u_xlat85 = x_3936;
            let x_3938 : f32 = u_xlat12.z;
            let x_3939 : f32 = u_xlat85;
            let x_3941 : f32 = u_xlat84;
            u_xlat84 = ((x_3938 * x_3939) + x_3941);
            let x_3944 : vec4<f32> = u_xlat11;
            let x_3945 : vec2<f32> = vec2<f32>(x_3944.x, x_3944.y);
            let x_3947 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_3945.x, x_3945.y, x_3947);
            let x_3954 : vec3<f32> = txVec58;
            let x_3956 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3954.xy, x_3954.z);
            u_xlat85 = x_3956;
            let x_3958 : f32 = u_xlat12.w;
            let x_3959 : f32 = u_xlat85;
            let x_3961 : f32 = u_xlat84;
            u_xlat82 = ((x_3958 * x_3959) + x_3961);
          }
        }
      } else {
        let x_3965 : vec4<f32> = u_xlat10;
        let x_3966 : vec2<f32> = vec2<f32>(x_3965.x, x_3965.y);
        let x_3968 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_3966.x, x_3966.y, x_3968);
        let x_3975 : vec3<f32> = txVec59;
        let x_3977 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3975.xy, x_3975.z);
        u_xlat82 = x_3977;
      }
      let x_3978 : i32 = u_xlati79;
      let x_3980 : f32 = x_629.x_AdditionalShadowParams[x_3978].x;
      u_xlat84 = (1.0f + -(x_3980));
      let x_3983 : f32 = u_xlat82;
      let x_3984 : i32 = u_xlati79;
      let x_3986 : f32 = x_629.x_AdditionalShadowParams[x_3984].x;
      let x_3988 : f32 = u_xlat84;
      u_xlat82 = ((x_3983 * x_3986) + x_3988);
      let x_3991 : f32 = u_xlat10.z;
      u_xlatb84 = (0.0f >= x_3991);
      let x_3994 : f32 = u_xlat10.z;
      u_xlatb10.x = (x_3994 >= 1.0f);
      let x_3997 : bool = u_xlatb84;
      let x_3999 : bool = u_xlatb10.x;
      u_xlatb84 = (x_3997 | x_3999);
      let x_4001 : bool = u_xlatb84;
      let x_4002 : f32 = u_xlat82;
      u_xlat82 = select(x_4002, 1.0f, x_4001);
    } else {
      u_xlat82 = 1.0f;
    }
    let x_4005 : f32 = u_xlat82;
    u_xlat84 = (-(x_4005) + 1.0f);
    let x_4008 : f32 = u_xlat50;
    let x_4009 : f32 = u_xlat84;
    let x_4011 : f32 = u_xlat82;
    u_xlat82 = ((x_4008 * x_4009) + x_4011);
    let x_4013 : f32 = u_xlat80;
    let x_4014 : f32 = u_xlat82;
    u_xlat80 = (x_4013 * x_4014);
    let x_4016 : vec4<f32> = u_xlat1;
    let x_4018 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_4016.x, x_4016.y, x_4016.z), vec3<f32>(x_4018.x, x_4018.y, x_4018.z));
    let x_4021 : f32 = u_xlat82;
    u_xlat82 = clamp(x_4021, 0.0f, 1.0f);
    let x_4023 : f32 = u_xlat80;
    let x_4024 : f32 = u_xlat82;
    u_xlat80 = (x_4023 * x_4024);
    let x_4026 : f32 = u_xlat80;
    let x_4028 : i32 = u_xlati79;
    let x_4030 : vec4<f32> = x_2583.x_AdditionalLightsColor[x_4028];
    let x_4032 : vec3<f32> = (vec3<f32>(x_4026, x_4026, x_4026) * vec3<f32>(x_4030.x, x_4030.y, x_4030.z));
    let x_4033 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_4032.x, x_4032.y, x_4032.z, x_4033.w);
    let x_4035 : vec3<f32> = u_xlat33;
    let x_4036 : f32 = u_xlat81;
    let x_4039 : vec3<f32> = u_xlat2;
    u_xlat33 = ((x_4035 * vec3<f32>(x_4036, x_4036, x_4036)) + x_4039);
    let x_4041 : vec3<f32> = u_xlat33;
    let x_4042 : vec3<f32> = u_xlat33;
    u_xlat79 = dot(x_4041, x_4042);
    let x_4044 : f32 = u_xlat79;
    u_xlat79 = max(x_4044, 1.17549435e-38f);
    let x_4046 : f32 = u_xlat79;
    u_xlat79 = inverseSqrt(x_4046);
    let x_4048 : f32 = u_xlat79;
    let x_4050 : vec3<f32> = u_xlat33;
    u_xlat33 = (vec3<f32>(x_4048, x_4048, x_4048) * x_4050);
    let x_4052 : vec4<f32> = u_xlat1;
    let x_4054 : vec3<f32> = u_xlat33;
    u_xlat79 = dot(vec3<f32>(x_4052.x, x_4052.y, x_4052.z), x_4054);
    let x_4056 : f32 = u_xlat79;
    u_xlat79 = clamp(x_4056, 0.0f, 1.0f);
    let x_4058 : vec4<f32> = u_xlat9;
    let x_4060 : vec3<f32> = u_xlat33;
    u_xlat80 = dot(vec3<f32>(x_4058.x, x_4058.y, x_4058.z), x_4060);
    let x_4062 : f32 = u_xlat80;
    u_xlat80 = clamp(x_4062, 0.0f, 1.0f);
    let x_4064 : f32 = u_xlat79;
    let x_4065 : f32 = u_xlat79;
    u_xlat79 = (x_4064 * x_4065);
    let x_4067 : f32 = u_xlat79;
    let x_4069 : f32 = u_xlat8.x;
    u_xlat79 = ((x_4067 * x_4069) + 1.00001001358032226562f);
    let x_4072 : f32 = u_xlat80;
    let x_4073 : f32 = u_xlat80;
    u_xlat80 = (x_4072 * x_4073);
    let x_4075 : f32 = u_xlat79;
    let x_4076 : f32 = u_xlat79;
    u_xlat79 = (x_4075 * x_4076);
    let x_4078 : f32 = u_xlat80;
    u_xlat80 = max(x_4078, 0.10000000149011611938f);
    let x_4080 : f32 = u_xlat79;
    let x_4081 : f32 = u_xlat80;
    u_xlat79 = (x_4080 * x_4081);
    let x_4083 : f32 = u_xlat77;
    let x_4084 : f32 = u_xlat79;
    u_xlat79 = (x_4083 * x_4084);
    let x_4086 : f32 = u_xlat78;
    let x_4087 : f32 = u_xlat79;
    u_xlat79 = (x_4086 / x_4087);
    let x_4089 : vec4<f32> = u_xlat5;
    let x_4091 : f32 = u_xlat79;
    let x_4094 : vec4<f32> = u_xlat6;
    u_xlat33 = ((vec3<f32>(x_4089.x, x_4089.y, x_4089.z) * vec3<f32>(x_4091, x_4091, x_4091)) + vec3<f32>(x_4094.x, x_4094.y, x_4094.z));
    let x_4097 : vec3<f32> = u_xlat33;
    let x_4098 : vec4<f32> = u_xlat10;
    let x_4101 : vec4<f32> = u_xlat3;
    let x_4103 : vec3<f32> = ((x_4097 * vec3<f32>(x_4098.x, x_4098.y, x_4098.z)) + vec3<f32>(x_4101.x, x_4101.y, x_4101.z));
    let x_4104 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_4103.x, x_4103.y, x_4103.z, x_4104.w);

    continuing {
      let x_4106 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4106 + bitcast<u32>(1i));
    }
  }
  let x_4108 : vec4<f32> = u_xlat4;
  let x_4110 : f32 = u_xlat25;
  let x_4113 : vec4<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_4108.x, x_4108.y, x_4108.z) * vec3<f32>(x_4110, x_4110, x_4110)) + vec3<f32>(x_4113.x, x_4113.y, x_4113.z));
  let x_4116 : vec4<f32> = u_xlat3;
  let x_4118 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4116.x, x_4116.y, x_4116.z) + x_4118);
  let x_4122 : f32 = u_xlat75;
  let x_4124 : vec3<f32> = u_xlat0;
  let x_4125 : vec3<f32> = (vec3<f32>(x_4122, x_4122, x_4122) * x_4124);
  let x_4126 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4125.x, x_4125.y, x_4125.z, x_4126.w);
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


