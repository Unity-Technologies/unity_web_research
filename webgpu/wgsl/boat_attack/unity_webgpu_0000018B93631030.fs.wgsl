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

@group(1) @binding(4) var<uniform> x_610 : LightShadows;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu76 : u32;

var<private> u_xlati76 : i32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(12) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat77 : f32;

var<private> u_xlat78 : f32;

var<private> u_xlat79 : f32;

var<private> u_xlatb80 : bool;

@group(0) @binding(9) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(16) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat80 : f32;

var<private> u_xlatb81 : bool;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat81 : f32;

var<private> u_xlat32 : f32;

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

@group(0) @binding(11) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2329 : UnityPerDraw;

var<private> u_xlatu50 : u32;

var<private> u_xlatu81 : u32;

var<private> u_xlati82 : i32;

var<private> u_xlati81 : i32;

@group(1) @binding(1) var<uniform> x_2604 : AdditionalLights;

var<private> u_xlat82 : f32;

var<private> u_xlat83 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlati84 : i32;

var<private> u_xlatb10 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat35 : vec3<f32>;

var<private> u_xlatb84 : bool;

@group(0) @binding(10) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb85 : bool;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat85 : f32;

var<private> u_xlat36 : f32;

var<private> u_xlat37 : vec3<f32>;

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
  var x_2216 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2743 : f32;
  var x_2755 : f32;
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
  let x_602 : vec3<f32> = vs_TEXCOORD7;
  let x_612 : vec4<f32> = x_610.x_CascadeShadowSplitSpheres0;
  let x_615 : vec3<f32> = (x_602 + -(vec3<f32>(x_612.x, x_612.y, x_612.z)));
  let x_616 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_615.x, x_615.y, x_615.z, x_616.w);
  let x_618 : vec3<f32> = vs_TEXCOORD7;
  let x_620 : vec4<f32> = x_610.x_CascadeShadowSplitSpheres1;
  let x_623 : vec3<f32> = (x_618 + -(vec3<f32>(x_620.x, x_620.y, x_620.z)));
  let x_624 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_623.x, x_623.y, x_623.z, x_624.w);
  let x_626 : vec3<f32> = vs_TEXCOORD7;
  let x_629 : vec4<f32> = x_610.x_CascadeShadowSplitSpheres2;
  let x_632 : vec3<f32> = (x_626 + -(vec3<f32>(x_629.x, x_629.y, x_629.z)));
  let x_633 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_632.x, x_632.y, x_632.z, x_633.w);
  let x_635 : vec3<f32> = vs_TEXCOORD7;
  let x_637 : vec4<f32> = x_610.x_CascadeShadowSplitSpheres3;
  let x_640 : vec3<f32> = (x_635 + -(vec3<f32>(x_637.x, x_637.y, x_637.z)));
  let x_641 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_640.x, x_640.y, x_640.z, x_641.w);
  let x_643 : vec4<f32> = u_xlat3;
  let x_645 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_643.x, x_643.y, x_643.z), vec3<f32>(x_645.x, x_645.y, x_645.z));
  let x_649 : vec4<f32> = u_xlat4;
  let x_651 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_649.x, x_649.y, x_649.z), vec3<f32>(x_651.x, x_651.y, x_651.z));
  let x_655 : vec4<f32> = u_xlat6;
  let x_657 : vec4<f32> = u_xlat6;
  u_xlat3.z = dot(vec3<f32>(x_655.x, x_655.y, x_655.z), vec3<f32>(x_657.x, x_657.y, x_657.z));
  let x_661 : vec4<f32> = u_xlat7;
  let x_663 : vec4<f32> = u_xlat7;
  u_xlat3.w = dot(vec3<f32>(x_661.x, x_661.y, x_661.z), vec3<f32>(x_663.x, x_663.y, x_663.z));
  let x_669 : vec4<f32> = u_xlat3;
  let x_671 : vec4<f32> = x_610.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_669 < x_671);
  let x_674 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_674);
  let x_678 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_678);
  let x_682 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_682);
  let x_686 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_686);
  let x_690 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_690);
  let x_695 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_695);
  let x_699 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_699);
  let x_702 : vec4<f32> = u_xlat3;
  let x_704 : vec4<f32> = u_xlat4;
  let x_706 : vec3<f32> = (vec3<f32>(x_702.x, x_702.y, x_702.z) + vec3<f32>(x_704.y, x_704.z, x_704.w));
  let x_707 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_706.x, x_706.y, x_706.z, x_707.w);
  let x_709 : vec4<f32> = u_xlat3;
  let x_712 : vec3<f32> = max(vec3<f32>(x_709.x, x_709.y, x_709.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_713 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_713.x, x_712.x, x_712.y, x_712.z);
  let x_715 : vec4<f32> = u_xlat4;
  u_xlat76 = dot(x_715, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_720 : f32 = u_xlat76;
  u_xlat76 = (-(x_720) + 4.0f);
  let x_725 : f32 = u_xlat76;
  u_xlatu76 = u32(x_725);
  let x_729 : u32 = u_xlatu76;
  u_xlati76 = (bitcast<i32>(x_729) << bitcast<u32>(2i));
  let x_732 : vec3<f32> = vs_TEXCOORD7;
  let x_734 : i32 = u_xlati76;
  let x_737 : i32 = u_xlati76;
  let x_741 : vec4<f32> = x_610.x_MainLightWorldToShadow[((x_734 + 1i) / 4i)][((x_737 + 1i) % 4i)];
  let x_743 : vec3<f32> = (vec3<f32>(x_732.y, x_732.y, x_732.y) * vec3<f32>(x_741.x, x_741.y, x_741.z));
  let x_744 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_743.x, x_743.y, x_743.z, x_744.w);
  let x_746 : i32 = u_xlati76;
  let x_748 : i32 = u_xlati76;
  let x_751 : vec4<f32> = x_610.x_MainLightWorldToShadow[(x_746 / 4i)][(x_748 % 4i)];
  let x_753 : vec3<f32> = vs_TEXCOORD7;
  let x_756 : vec4<f32> = u_xlat3;
  let x_758 : vec3<f32> = ((vec3<f32>(x_751.x, x_751.y, x_751.z) * vec3<f32>(x_753.x, x_753.x, x_753.x)) + vec3<f32>(x_756.x, x_756.y, x_756.z));
  let x_759 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_758.x, x_758.y, x_758.z, x_759.w);
  let x_761 : i32 = u_xlati76;
  let x_764 : i32 = u_xlati76;
  let x_768 : vec4<f32> = x_610.x_MainLightWorldToShadow[((x_761 + 2i) / 4i)][((x_764 + 2i) % 4i)];
  let x_770 : vec3<f32> = vs_TEXCOORD7;
  let x_773 : vec4<f32> = u_xlat3;
  let x_775 : vec3<f32> = ((vec3<f32>(x_768.x, x_768.y, x_768.z) * vec3<f32>(x_770.z, x_770.z, x_770.z)) + vec3<f32>(x_773.x, x_773.y, x_773.z));
  let x_776 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_775.x, x_775.y, x_775.z, x_776.w);
  let x_778 : vec4<f32> = u_xlat3;
  let x_780 : i32 = u_xlati76;
  let x_783 : i32 = u_xlati76;
  let x_787 : vec4<f32> = x_610.x_MainLightWorldToShadow[((x_780 + 3i) / 4i)][((x_783 + 3i) % 4i)];
  let x_789 : vec3<f32> = (vec3<f32>(x_778.x, x_778.y, x_778.z) + vec3<f32>(x_787.x, x_787.y, x_787.z));
  let x_790 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_789.x, x_789.y, x_789.z, x_790.w);
  let x_794 : f32 = vs_TEXCOORD7.y;
  let x_796 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat76 = (x_794 * x_796);
  let x_799 : f32 = x_29.unity_MatrixV[0i].z;
  let x_801 : f32 = vs_TEXCOORD7.x;
  let x_803 : f32 = u_xlat76;
  u_xlat76 = ((x_799 * x_801) + x_803);
  let x_806 : f32 = x_29.unity_MatrixV[2i].z;
  let x_808 : f32 = vs_TEXCOORD7.z;
  let x_810 : f32 = u_xlat76;
  u_xlat76 = ((x_806 * x_808) + x_810);
  let x_812 : f32 = u_xlat76;
  let x_814 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat76 = (x_812 + x_814);
  let x_816 : f32 = u_xlat76;
  let x_819 : f32 = x_29.x_ProjectionParams.y;
  u_xlat76 = (-(x_816) + -(x_819));
  let x_822 : f32 = u_xlat76;
  u_xlat76 = max(x_822, 0.0f);
  let x_824 : f32 = u_xlat76;
  let x_826 : f32 = x_29.unity_FogParams.x;
  u_xlat76 = (x_824 * x_826);
  let x_833 : vec4<f32> = vs_TEXCOORD0;
  let x_836 : f32 = x_29.x_GlobalMipBias.x;
  let x_837 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_833.z, x_833.w), x_836);
  u_xlat4 = x_837;
  let x_842 : vec4<f32> = vs_TEXCOORD0;
  let x_845 : f32 = x_29.x_GlobalMipBias.x;
  let x_846 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_842.z, x_842.w), x_845);
  let x_847 : vec3<f32> = vec3<f32>(x_846.x, x_846.y, x_846.z);
  let x_848 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_847.x, x_847.y, x_847.z, x_848.w);
  let x_850 : vec4<f32> = u_xlat4;
  let x_854 : vec3<f32> = (vec3<f32>(x_850.x, x_850.y, x_850.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_855 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_854.x, x_854.y, x_854.z, x_855.w);
  let x_858 : vec3<f32> = u_xlat2;
  let x_859 : vec4<f32> = u_xlat4;
  u_xlat77 = dot(x_858, vec3<f32>(x_859.x, x_859.y, x_859.z));
  let x_862 : f32 = u_xlat77;
  u_xlat77 = (x_862 + 0.5f);
  let x_864 : f32 = u_xlat77;
  let x_866 : vec4<f32> = u_xlat6;
  let x_868 : vec3<f32> = (vec3<f32>(x_864, x_864, x_864) * vec3<f32>(x_866.x, x_866.y, x_866.z));
  let x_869 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_868.x, x_868.y, x_868.z, x_869.w);
  let x_872 : f32 = u_xlat4.w;
  u_xlat77 = max(x_872, 0.00009999999747378752f);
  let x_875 : vec4<f32> = u_xlat4;
  let x_877 : f32 = u_xlat77;
  let x_879 : vec3<f32> = (vec3<f32>(x_875.x, x_875.y, x_875.z) / vec3<f32>(x_877, x_877, x_877));
  let x_880 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_879.x, x_879.y, x_879.z, x_880.w);
  let x_883 : f32 = u_xlat0.x;
  u_xlat77 = ((-(x_883) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_889 : f32 = u_xlat50;
  let x_890 : f32 = u_xlat77;
  u_xlat78 = (x_889 + -(x_890));
  let x_893 : f32 = u_xlat77;
  let x_895 : vec4<f32> = u_xlat5;
  let x_897 : vec3<f32> = (vec3<f32>(x_893, x_893, x_893) * vec3<f32>(x_895.x, x_895.y, x_895.z));
  let x_898 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_897.x, x_897.y, x_897.z, x_898.w);
  let x_900 : vec4<f32> = u_xlat5;
  let x_904 : vec3<f32> = (vec3<f32>(x_900.x, x_900.y, x_900.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_905 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_904.x, x_904.y, x_904.z, x_905.w);
  let x_907 : vec3<f32> = u_xlat0;
  let x_909 : vec4<f32> = u_xlat5;
  let x_914 : vec3<f32> = ((vec3<f32>(x_907.x, x_907.x, x_907.x) * vec3<f32>(x_909.x, x_909.y, x_909.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_915 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_914.x, x_914.y, x_914.z, x_915.w);
  let x_917 : f32 = u_xlat50;
  u_xlat0.x = (-(x_917) + 1.0f);
  let x_922 : f32 = u_xlat0.x;
  let x_924 : f32 = u_xlat0.x;
  u_xlat50 = (x_922 * x_924);
  let x_926 : f32 = u_xlat50;
  u_xlat50 = max(x_926, 0.0078125f);
  let x_929 : f32 = u_xlat50;
  let x_930 : f32 = u_xlat50;
  u_xlat77 = (x_929 * x_930);
  let x_932 : f32 = u_xlat78;
  u_xlat78 = (x_932 + 1.0f);
  let x_934 : f32 = u_xlat78;
  u_xlat78 = clamp(x_934, 0.0f, 1.0f);
  let x_937 : f32 = u_xlat50;
  u_xlat79 = ((x_937 * 4.0f) + 2.0f);
  let x_940 : f32 = u_xlat25;
  u_xlat25 = min(x_940, 1.0f);
  let x_944 : f32 = x_610.x_MainLightShadowParams.y;
  u_xlatb80 = (0.0f < x_944);
  let x_946 : bool = u_xlatb80;
  if (x_946) {
    let x_950 : f32 = x_610.x_MainLightShadowParams.y;
    u_xlatb80 = (x_950 == 1.0f);
    let x_952 : bool = u_xlatb80;
    if (x_952) {
      let x_955 : vec4<f32> = u_xlat3;
      let x_958 : vec4<f32> = x_610.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_955.x, x_955.y, x_955.x, x_955.y) + x_958);
      let x_961 : vec4<f32> = u_xlat7;
      let x_962 : vec2<f32> = vec2<f32>(x_961.x, x_961.y);
      let x_964 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_962.x, x_962.y, x_964);
      let x_976 : vec3<f32> = txVec0;
      let x_978 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_976.xy, x_976.z);
      u_xlat8.x = x_978;
      let x_981 : vec4<f32> = u_xlat7;
      let x_982 : vec2<f32> = vec2<f32>(x_981.z, x_981.w);
      let x_984 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_982.x, x_982.y, x_984);
      let x_991 : vec3<f32> = txVec1;
      let x_993 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_991.xy, x_991.z);
      u_xlat8.y = x_993;
      let x_995 : vec4<f32> = u_xlat3;
      let x_998 : vec4<f32> = x_610.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_995.x, x_995.y, x_995.x, x_995.y) + x_998);
      let x_1001 : vec4<f32> = u_xlat7;
      let x_1002 : vec2<f32> = vec2<f32>(x_1001.x, x_1001.y);
      let x_1004 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_1002.x, x_1002.y, x_1004);
      let x_1011 : vec3<f32> = txVec2;
      let x_1013 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1011.xy, x_1011.z);
      u_xlat8.z = x_1013;
      let x_1016 : vec4<f32> = u_xlat7;
      let x_1017 : vec2<f32> = vec2<f32>(x_1016.z, x_1016.w);
      let x_1019 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_1017.x, x_1017.y, x_1019);
      let x_1026 : vec3<f32> = txVec3;
      let x_1028 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1026.xy, x_1026.z);
      u_xlat8.w = x_1028;
      let x_1031 : vec4<f32> = u_xlat8;
      u_xlat80 = dot(x_1031, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1038 : f32 = x_610.x_MainLightShadowParams.y;
      u_xlatb81 = (x_1038 == 2.0f);
      let x_1040 : bool = u_xlatb81;
      if (x_1040) {
        let x_1043 : vec4<f32> = u_xlat3;
        let x_1046 : vec4<f32> = x_610.x_MainLightShadowmapSize;
        let x_1049 : vec2<f32> = ((vec2<f32>(x_1043.x, x_1043.y) * vec2<f32>(x_1046.z, x_1046.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1050 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1049.x, x_1049.y, x_1050.z, x_1050.w);
        let x_1052 : vec4<f32> = u_xlat7;
        let x_1054 : vec2<f32> = floor(vec2<f32>(x_1052.x, x_1052.y));
        let x_1055 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1054.x, x_1054.y, x_1055.z, x_1055.w);
        let x_1059 : vec4<f32> = u_xlat3;
        let x_1062 : vec4<f32> = x_610.x_MainLightShadowmapSize;
        let x_1065 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_1059.x, x_1059.y) * vec2<f32>(x_1062.z, x_1062.w)) + -(vec2<f32>(x_1065.x, x_1065.y)));
        let x_1069 : vec2<f32> = u_xlat57;
        u_xlat8 = (vec4<f32>(x_1069.x, x_1069.x, x_1069.y, x_1069.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1073 : vec4<f32> = u_xlat8;
        let x_1075 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1073.x, x_1073.x, x_1073.z, x_1073.z) * vec4<f32>(x_1075.x, x_1075.x, x_1075.z, x_1075.z));
        let x_1078 : vec4<f32> = u_xlat9;
        let x_1082 : vec2<f32> = (vec2<f32>(x_1078.y, x_1078.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1083 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1082.x, x_1083.y, x_1082.y, x_1083.w);
        let x_1085 : vec4<f32> = u_xlat9;
        let x_1088 : vec2<f32> = u_xlat57;
        let x_1090 : vec2<f32> = ((vec2<f32>(x_1085.x, x_1085.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1088));
        let x_1091 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1090.x, x_1090.y, x_1091.z, x_1091.w);
        let x_1094 : vec2<f32> = u_xlat57;
        u_xlat59 = (-(x_1094) + vec2<f32>(1.0f, 1.0f));
        let x_1098 : vec2<f32> = u_xlat57;
        let x_1100 : vec2<f32> = min(x_1098, vec2<f32>(0.0f, 0.0f));
        let x_1101 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1100.x, x_1100.y, x_1101.z, x_1101.w);
        let x_1103 : vec4<f32> = u_xlat10;
        let x_1106 : vec4<f32> = u_xlat10;
        let x_1109 : vec2<f32> = u_xlat59;
        let x_1110 : vec2<f32> = ((-(vec2<f32>(x_1103.x, x_1103.y)) * vec2<f32>(x_1106.x, x_1106.y)) + x_1109);
        let x_1111 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1110.x, x_1110.y, x_1111.z, x_1111.w);
        let x_1113 : vec2<f32> = u_xlat57;
        u_xlat57 = max(x_1113, vec2<f32>(0.0f, 0.0f));
        let x_1115 : vec2<f32> = u_xlat57;
        let x_1117 : vec2<f32> = u_xlat57;
        let x_1119 : vec4<f32> = u_xlat8;
        u_xlat57 = ((-(x_1115) * x_1117) + vec2<f32>(x_1119.y, x_1119.w));
        let x_1122 : vec4<f32> = u_xlat10;
        let x_1124 : vec2<f32> = (vec2<f32>(x_1122.x, x_1122.y) + vec2<f32>(1.0f, 1.0f));
        let x_1125 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1124.x, x_1124.y, x_1125.z, x_1125.w);
        let x_1127 : vec2<f32> = u_xlat57;
        u_xlat57 = (x_1127 + vec2<f32>(1.0f, 1.0f));
        let x_1129 : vec4<f32> = u_xlat9;
        let x_1133 : vec2<f32> = (vec2<f32>(x_1129.x, x_1129.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1134 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1133.x, x_1133.y, x_1134.z, x_1134.w);
        let x_1136 : vec2<f32> = u_xlat59;
        let x_1137 : vec2<f32> = (x_1136 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1138 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1137.x, x_1137.y, x_1138.z, x_1138.w);
        let x_1140 : vec4<f32> = u_xlat10;
        let x_1142 : vec2<f32> = (vec2<f32>(x_1140.x, x_1140.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1143 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1142.x, x_1142.y, x_1143.z, x_1143.w);
        let x_1145 : vec2<f32> = u_xlat57;
        let x_1146 : vec2<f32> = (x_1145 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1147 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1146.x, x_1146.y, x_1147.z, x_1147.w);
        let x_1149 : vec4<f32> = u_xlat8;
        u_xlat57 = (vec2<f32>(x_1149.y, x_1149.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1153 : f32 = u_xlat10.x;
        u_xlat11.z = x_1153;
        let x_1156 : f32 = u_xlat57.x;
        u_xlat11.w = x_1156;
        let x_1159 : f32 = u_xlat12.x;
        u_xlat9.z = x_1159;
        let x_1162 : f32 = u_xlat8.x;
        u_xlat9.w = x_1162;
        let x_1164 : vec4<f32> = u_xlat9;
        let x_1166 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_1164.z, x_1164.w, x_1164.x, x_1164.z) + vec4<f32>(x_1166.z, x_1166.w, x_1166.x, x_1166.z));
        let x_1170 : f32 = u_xlat11.y;
        u_xlat10.z = x_1170;
        let x_1173 : f32 = u_xlat57.y;
        u_xlat10.w = x_1173;
        let x_1176 : f32 = u_xlat9.y;
        u_xlat12.z = x_1176;
        let x_1179 : f32 = u_xlat8.z;
        u_xlat12.w = x_1179;
        let x_1181 : vec4<f32> = u_xlat10;
        let x_1183 : vec4<f32> = u_xlat12;
        let x_1185 : vec3<f32> = (vec3<f32>(x_1181.z, x_1181.y, x_1181.w) + vec3<f32>(x_1183.z, x_1183.y, x_1183.w));
        let x_1186 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1185.x, x_1185.y, x_1185.z, x_1186.w);
        let x_1188 : vec4<f32> = u_xlat9;
        let x_1190 : vec4<f32> = u_xlat13;
        let x_1192 : vec3<f32> = (vec3<f32>(x_1188.x, x_1188.z, x_1188.w) / vec3<f32>(x_1190.z, x_1190.w, x_1190.y));
        let x_1193 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1192.x, x_1192.y, x_1192.z, x_1193.w);
        let x_1195 : vec4<f32> = u_xlat9;
        let x_1200 : vec3<f32> = (vec3<f32>(x_1195.x, x_1195.y, x_1195.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1201 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1200.x, x_1200.y, x_1200.z, x_1201.w);
        let x_1203 : vec4<f32> = u_xlat12;
        let x_1205 : vec4<f32> = u_xlat8;
        let x_1207 : vec3<f32> = (vec3<f32>(x_1203.z, x_1203.y, x_1203.w) / vec3<f32>(x_1205.x, x_1205.y, x_1205.z));
        let x_1208 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1207.x, x_1207.y, x_1207.z, x_1208.w);
        let x_1210 : vec4<f32> = u_xlat10;
        let x_1212 : vec3<f32> = (vec3<f32>(x_1210.x, x_1210.y, x_1210.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1213 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1212.x, x_1212.y, x_1212.z, x_1213.w);
        let x_1215 : vec4<f32> = u_xlat9;
        let x_1218 : vec4<f32> = x_610.x_MainLightShadowmapSize;
        let x_1220 : vec3<f32> = (vec3<f32>(x_1215.y, x_1215.x, x_1215.z) * vec3<f32>(x_1218.x, x_1218.x, x_1218.x));
        let x_1221 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1220.x, x_1220.y, x_1220.z, x_1221.w);
        let x_1223 : vec4<f32> = u_xlat10;
        let x_1226 : vec4<f32> = x_610.x_MainLightShadowmapSize;
        let x_1228 : vec3<f32> = (vec3<f32>(x_1223.x, x_1223.y, x_1223.z) * vec3<f32>(x_1226.y, x_1226.y, x_1226.y));
        let x_1229 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1228.x, x_1228.y, x_1228.z, x_1229.w);
        let x_1232 : f32 = u_xlat10.x;
        u_xlat9.w = x_1232;
        let x_1234 : vec4<f32> = u_xlat7;
        let x_1237 : vec4<f32> = x_610.x_MainLightShadowmapSize;
        let x_1240 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1234.x, x_1234.y, x_1234.x, x_1234.y) * vec4<f32>(x_1237.x, x_1237.y, x_1237.x, x_1237.y)) + vec4<f32>(x_1240.y, x_1240.w, x_1240.x, x_1240.w));
        let x_1243 : vec4<f32> = u_xlat7;
        let x_1246 : vec4<f32> = x_610.x_MainLightShadowmapSize;
        let x_1249 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_1243.x, x_1243.y) * vec2<f32>(x_1246.x, x_1246.y)) + vec2<f32>(x_1249.z, x_1249.w));
        let x_1253 : f32 = u_xlat9.y;
        u_xlat10.w = x_1253;
        let x_1255 : vec4<f32> = u_xlat10;
        let x_1256 : vec2<f32> = vec2<f32>(x_1255.y, x_1255.z);
        let x_1257 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1257.x, x_1256.x, x_1257.z, x_1256.y);
        let x_1259 : vec4<f32> = u_xlat7;
        let x_1262 : vec4<f32> = x_610.x_MainLightShadowmapSize;
        let x_1265 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1259.x, x_1259.y, x_1259.x, x_1259.y) * vec4<f32>(x_1262.x, x_1262.y, x_1262.x, x_1262.y)) + vec4<f32>(x_1265.x, x_1265.y, x_1265.z, x_1265.y));
        let x_1268 : vec4<f32> = u_xlat7;
        let x_1271 : vec4<f32> = x_610.x_MainLightShadowmapSize;
        let x_1274 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1268.x, x_1268.y, x_1268.x, x_1268.y) * vec4<f32>(x_1271.x, x_1271.y, x_1271.x, x_1271.y)) + vec4<f32>(x_1274.w, x_1274.y, x_1274.w, x_1274.z));
        let x_1277 : vec4<f32> = u_xlat7;
        let x_1280 : vec4<f32> = x_610.x_MainLightShadowmapSize;
        let x_1283 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1277.x, x_1277.y, x_1277.x, x_1277.y) * vec4<f32>(x_1280.x, x_1280.y, x_1280.x, x_1280.y)) + vec4<f32>(x_1283.x, x_1283.w, x_1283.z, x_1283.w));
        let x_1287 : vec4<f32> = u_xlat8;
        let x_1289 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_1287.x, x_1287.x, x_1287.x, x_1287.y) * vec4<f32>(x_1289.z, x_1289.w, x_1289.y, x_1289.z));
        let x_1293 : vec4<f32> = u_xlat8;
        let x_1295 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_1293.y, x_1293.y, x_1293.z, x_1293.z) * x_1295);
        let x_1299 : f32 = u_xlat8.z;
        let x_1301 : f32 = u_xlat13.y;
        u_xlat81 = (x_1299 * x_1301);
        let x_1304 : vec4<f32> = u_xlat11;
        let x_1305 : vec2<f32> = vec2<f32>(x_1304.x, x_1304.y);
        let x_1307 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_1305.x, x_1305.y, x_1307);
        let x_1314 : vec3<f32> = txVec4;
        let x_1316 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1314.xy, x_1314.z);
        u_xlat7.x = x_1316;
        let x_1319 : vec4<f32> = u_xlat11;
        let x_1320 : vec2<f32> = vec2<f32>(x_1319.z, x_1319.w);
        let x_1322 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_1320.x, x_1320.y, x_1322);
        let x_1330 : vec3<f32> = txVec5;
        let x_1332 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1330.xy, x_1330.z);
        u_xlat32 = x_1332;
        let x_1333 : f32 = u_xlat32;
        let x_1335 : f32 = u_xlat14.y;
        u_xlat32 = (x_1333 * x_1335);
        let x_1338 : f32 = u_xlat14.x;
        let x_1340 : f32 = u_xlat7.x;
        let x_1342 : f32 = u_xlat32;
        u_xlat7.x = ((x_1338 * x_1340) + x_1342);
        let x_1346 : vec2<f32> = u_xlat57;
        let x_1348 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_1346.x, x_1346.y, x_1348);
        let x_1355 : vec3<f32> = txVec6;
        let x_1357 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1355.xy, x_1355.z);
        u_xlat32 = x_1357;
        let x_1359 : f32 = u_xlat14.z;
        let x_1360 : f32 = u_xlat32;
        let x_1363 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1359 * x_1360) + x_1363);
        let x_1367 : vec4<f32> = u_xlat10;
        let x_1368 : vec2<f32> = vec2<f32>(x_1367.x, x_1367.y);
        let x_1370 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_1368.x, x_1368.y, x_1370);
        let x_1377 : vec3<f32> = txVec7;
        let x_1379 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1377.xy, x_1377.z);
        u_xlat32 = x_1379;
        let x_1381 : f32 = u_xlat14.w;
        let x_1382 : f32 = u_xlat32;
        let x_1385 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1381 * x_1382) + x_1385);
        let x_1389 : vec4<f32> = u_xlat12;
        let x_1390 : vec2<f32> = vec2<f32>(x_1389.x, x_1389.y);
        let x_1392 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_1390.x, x_1390.y, x_1392);
        let x_1399 : vec3<f32> = txVec8;
        let x_1401 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1399.xy, x_1399.z);
        u_xlat32 = x_1401;
        let x_1403 : f32 = u_xlat15.x;
        let x_1404 : f32 = u_xlat32;
        let x_1407 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1403 * x_1404) + x_1407);
        let x_1411 : vec4<f32> = u_xlat12;
        let x_1412 : vec2<f32> = vec2<f32>(x_1411.z, x_1411.w);
        let x_1414 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_1412.x, x_1412.y, x_1414);
        let x_1421 : vec3<f32> = txVec9;
        let x_1423 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1421.xy, x_1421.z);
        u_xlat32 = x_1423;
        let x_1425 : f32 = u_xlat15.y;
        let x_1426 : f32 = u_xlat32;
        let x_1429 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1425 * x_1426) + x_1429);
        let x_1433 : vec4<f32> = u_xlat10;
        let x_1434 : vec2<f32> = vec2<f32>(x_1433.z, x_1433.w);
        let x_1436 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_1434.x, x_1434.y, x_1436);
        let x_1443 : vec3<f32> = txVec10;
        let x_1445 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1443.xy, x_1443.z);
        u_xlat32 = x_1445;
        let x_1447 : f32 = u_xlat15.z;
        let x_1448 : f32 = u_xlat32;
        let x_1451 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1447 * x_1448) + x_1451);
        let x_1455 : vec4<f32> = u_xlat9;
        let x_1456 : vec2<f32> = vec2<f32>(x_1455.x, x_1455.y);
        let x_1458 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_1456.x, x_1456.y, x_1458);
        let x_1465 : vec3<f32> = txVec11;
        let x_1467 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1465.xy, x_1465.z);
        u_xlat32 = x_1467;
        let x_1469 : f32 = u_xlat15.w;
        let x_1470 : f32 = u_xlat32;
        let x_1473 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1469 * x_1470) + x_1473);
        let x_1477 : vec4<f32> = u_xlat9;
        let x_1478 : vec2<f32> = vec2<f32>(x_1477.z, x_1477.w);
        let x_1480 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1478.x, x_1478.y, x_1480);
        let x_1487 : vec3<f32> = txVec12;
        let x_1489 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1487.xy, x_1487.z);
        u_xlat32 = x_1489;
        let x_1490 : f32 = u_xlat81;
        let x_1491 : f32 = u_xlat32;
        let x_1494 : f32 = u_xlat7.x;
        u_xlat80 = ((x_1490 * x_1491) + x_1494);
      } else {
        let x_1497 : vec4<f32> = u_xlat3;
        let x_1500 : vec4<f32> = x_610.x_MainLightShadowmapSize;
        let x_1503 : vec2<f32> = ((vec2<f32>(x_1497.x, x_1497.y) * vec2<f32>(x_1500.z, x_1500.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1504 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1503.x, x_1503.y, x_1504.z, x_1504.w);
        let x_1506 : vec4<f32> = u_xlat7;
        let x_1508 : vec2<f32> = floor(vec2<f32>(x_1506.x, x_1506.y));
        let x_1509 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1508.x, x_1508.y, x_1509.z, x_1509.w);
        let x_1511 : vec4<f32> = u_xlat3;
        let x_1514 : vec4<f32> = x_610.x_MainLightShadowmapSize;
        let x_1517 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_1511.x, x_1511.y) * vec2<f32>(x_1514.z, x_1514.w)) + -(vec2<f32>(x_1517.x, x_1517.y)));
        let x_1521 : vec2<f32> = u_xlat57;
        u_xlat8 = (vec4<f32>(x_1521.x, x_1521.x, x_1521.y, x_1521.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1524 : vec4<f32> = u_xlat8;
        let x_1526 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1524.x, x_1524.x, x_1524.z, x_1524.z) * vec4<f32>(x_1526.x, x_1526.x, x_1526.z, x_1526.z));
        let x_1529 : vec4<f32> = u_xlat9;
        let x_1533 : vec2<f32> = (vec2<f32>(x_1529.y, x_1529.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1534 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1534.x, x_1533.x, x_1534.z, x_1533.y);
        let x_1536 : vec4<f32> = u_xlat9;
        let x_1539 : vec2<f32> = u_xlat57;
        let x_1541 : vec2<f32> = ((vec2<f32>(x_1536.x, x_1536.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1539));
        let x_1542 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1541.x, x_1542.y, x_1541.y, x_1542.w);
        let x_1544 : vec2<f32> = u_xlat57;
        let x_1546 : vec2<f32> = (-(x_1544) + vec2<f32>(1.0f, 1.0f));
        let x_1547 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1546.x, x_1546.y, x_1547.z, x_1547.w);
        let x_1549 : vec2<f32> = u_xlat57;
        u_xlat59 = min(x_1549, vec2<f32>(0.0f, 0.0f));
        let x_1551 : vec2<f32> = u_xlat59;
        let x_1553 : vec2<f32> = u_xlat59;
        let x_1555 : vec4<f32> = u_xlat9;
        let x_1557 : vec2<f32> = ((-(x_1551) * x_1553) + vec2<f32>(x_1555.x, x_1555.y));
        let x_1558 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1557.x, x_1557.y, x_1558.z, x_1558.w);
        let x_1560 : vec2<f32> = u_xlat57;
        u_xlat59 = max(x_1560, vec2<f32>(0.0f, 0.0f));
        let x_1563 : vec2<f32> = u_xlat59;
        let x_1565 : vec2<f32> = u_xlat59;
        let x_1567 : vec4<f32> = u_xlat8;
        let x_1569 : vec2<f32> = ((-(x_1563) * x_1565) + vec2<f32>(x_1567.y, x_1567.w));
        let x_1570 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_1569.x, x_1570.y, x_1569.y);
        let x_1572 : vec4<f32> = u_xlat9;
        let x_1575 : vec2<f32> = (vec2<f32>(x_1572.x, x_1572.y) + vec2<f32>(2.0f, 2.0f));
        let x_1576 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1575.x, x_1575.y, x_1576.z, x_1576.w);
        let x_1578 : vec3<f32> = u_xlat33;
        let x_1580 : vec2<f32> = (vec2<f32>(x_1578.x, x_1578.z) + vec2<f32>(2.0f, 2.0f));
        let x_1581 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1581.x, x_1580.x, x_1581.z, x_1580.y);
        let x_1584 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1584 * 0.08163200318813323975f);
        let x_1588 : vec4<f32> = u_xlat8;
        let x_1591 : vec3<f32> = (vec3<f32>(x_1588.z, x_1588.x, x_1588.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1592 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1591.x, x_1591.y, x_1591.z, x_1592.w);
        let x_1594 : vec4<f32> = u_xlat9;
        let x_1597 : vec2<f32> = (vec2<f32>(x_1594.x, x_1594.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1598 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1597.x, x_1597.y, x_1598.z, x_1598.w);
        let x_1601 : f32 = u_xlat12.y;
        u_xlat11.x = x_1601;
        let x_1603 : vec2<f32> = u_xlat57;
        let x_1610 : vec2<f32> = ((vec2<f32>(x_1603.x, x_1603.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1611 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1611.x, x_1610.x, x_1611.z, x_1610.y);
        let x_1613 : vec2<f32> = u_xlat57;
        let x_1617 : vec2<f32> = ((vec2<f32>(x_1613.x, x_1613.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1618 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1617.x, x_1618.y, x_1617.y, x_1618.w);
        let x_1621 : f32 = u_xlat8.x;
        u_xlat9.y = x_1621;
        let x_1624 : f32 = u_xlat10.y;
        u_xlat9.w = x_1624;
        let x_1626 : vec4<f32> = u_xlat9;
        let x_1627 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1626 + x_1627);
        let x_1629 : vec2<f32> = u_xlat57;
        let x_1632 : vec2<f32> = ((vec2<f32>(x_1629.y, x_1629.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1633 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1633.x, x_1632.x, x_1633.z, x_1632.y);
        let x_1635 : vec2<f32> = u_xlat57;
        let x_1638 : vec2<f32> = ((vec2<f32>(x_1635.y, x_1635.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1639 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1638.x, x_1639.y, x_1638.y, x_1639.w);
        let x_1642 : f32 = u_xlat8.y;
        u_xlat10.y = x_1642;
        let x_1644 : vec4<f32> = u_xlat10;
        let x_1645 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1644 + x_1645);
        let x_1647 : vec4<f32> = u_xlat9;
        let x_1648 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1647 / x_1648);
        let x_1650 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1650 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1656 : vec4<f32> = u_xlat10;
        let x_1657 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1656 / x_1657);
        let x_1659 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1659 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1661 : vec4<f32> = u_xlat9;
        let x_1664 : vec4<f32> = x_610.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1661.w, x_1661.x, x_1661.y, x_1661.z) * vec4<f32>(x_1664.x, x_1664.x, x_1664.x, x_1664.x));
        let x_1667 : vec4<f32> = u_xlat10;
        let x_1670 : vec4<f32> = x_610.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1667.x, x_1667.w, x_1667.y, x_1667.z) * vec4<f32>(x_1670.y, x_1670.y, x_1670.y, x_1670.y));
        let x_1673 : vec4<f32> = u_xlat9;
        let x_1674 : vec3<f32> = vec3<f32>(x_1673.y, x_1673.z, x_1673.w);
        let x_1675 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1674.x, x_1675.y, x_1674.y, x_1674.z);
        let x_1678 : f32 = u_xlat10.x;
        u_xlat12.y = x_1678;
        let x_1680 : vec4<f32> = u_xlat7;
        let x_1683 : vec4<f32> = x_610.x_MainLightShadowmapSize;
        let x_1686 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1680.x, x_1680.y, x_1680.x, x_1680.y) * vec4<f32>(x_1683.x, x_1683.y, x_1683.x, x_1683.y)) + vec4<f32>(x_1686.x, x_1686.y, x_1686.z, x_1686.y));
        let x_1689 : vec4<f32> = u_xlat7;
        let x_1692 : vec4<f32> = x_610.x_MainLightShadowmapSize;
        let x_1695 : vec4<f32> = u_xlat12;
        u_xlat57 = ((vec2<f32>(x_1689.x, x_1689.y) * vec2<f32>(x_1692.x, x_1692.y)) + vec2<f32>(x_1695.w, x_1695.y));
        let x_1699 : f32 = u_xlat12.y;
        u_xlat9.y = x_1699;
        let x_1702 : f32 = u_xlat10.z;
        u_xlat12.y = x_1702;
        let x_1704 : vec4<f32> = u_xlat7;
        let x_1707 : vec4<f32> = x_610.x_MainLightShadowmapSize;
        let x_1710 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1704.x, x_1704.y, x_1704.x, x_1704.y) * vec4<f32>(x_1707.x, x_1707.y, x_1707.x, x_1707.y)) + vec4<f32>(x_1710.x, x_1710.y, x_1710.z, x_1710.y));
        let x_1713 : vec4<f32> = u_xlat7;
        let x_1716 : vec4<f32> = x_610.x_MainLightShadowmapSize;
        let x_1719 : vec4<f32> = u_xlat12;
        let x_1721 : vec2<f32> = ((vec2<f32>(x_1713.x, x_1713.y) * vec2<f32>(x_1716.x, x_1716.y)) + vec2<f32>(x_1719.w, x_1719.y));
        let x_1722 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1721.x, x_1721.y, x_1722.z, x_1722.w);
        let x_1725 : f32 = u_xlat12.y;
        u_xlat9.z = x_1725;
        let x_1728 : vec4<f32> = u_xlat7;
        let x_1731 : vec4<f32> = x_610.x_MainLightShadowmapSize;
        let x_1734 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1728.x, x_1728.y, x_1728.x, x_1728.y) * vec4<f32>(x_1731.x, x_1731.y, x_1731.x, x_1731.y)) + vec4<f32>(x_1734.x, x_1734.y, x_1734.x, x_1734.z));
        let x_1738 : f32 = u_xlat10.w;
        u_xlat12.y = x_1738;
        let x_1741 : vec4<f32> = u_xlat7;
        let x_1744 : vec4<f32> = x_610.x_MainLightShadowmapSize;
        let x_1747 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1741.x, x_1741.y, x_1741.x, x_1741.y) * vec4<f32>(x_1744.x, x_1744.y, x_1744.x, x_1744.y)) + vec4<f32>(x_1747.x, x_1747.y, x_1747.z, x_1747.y));
        let x_1751 : vec4<f32> = u_xlat7;
        let x_1754 : vec4<f32> = x_610.x_MainLightShadowmapSize;
        let x_1757 : vec4<f32> = u_xlat12;
        u_xlat34 = ((vec2<f32>(x_1751.x, x_1751.y) * vec2<f32>(x_1754.x, x_1754.y)) + vec2<f32>(x_1757.w, x_1757.y));
        let x_1761 : f32 = u_xlat12.y;
        u_xlat9.w = x_1761;
        let x_1764 : vec4<f32> = u_xlat7;
        let x_1767 : vec4<f32> = x_610.x_MainLightShadowmapSize;
        let x_1770 : vec4<f32> = u_xlat9;
        u_xlat65 = ((vec2<f32>(x_1764.x, x_1764.y) * vec2<f32>(x_1767.x, x_1767.y)) + vec2<f32>(x_1770.x, x_1770.w));
        let x_1773 : vec4<f32> = u_xlat12;
        let x_1774 : vec3<f32> = vec3<f32>(x_1773.x, x_1773.z, x_1773.w);
        let x_1775 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1774.x, x_1775.y, x_1774.y, x_1774.z);
        let x_1777 : vec4<f32> = u_xlat7;
        let x_1780 : vec4<f32> = x_610.x_MainLightShadowmapSize;
        let x_1783 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1777.x, x_1777.y, x_1777.x, x_1777.y) * vec4<f32>(x_1780.x, x_1780.y, x_1780.x, x_1780.y)) + vec4<f32>(x_1783.x, x_1783.y, x_1783.z, x_1783.y));
        let x_1787 : vec4<f32> = u_xlat7;
        let x_1790 : vec4<f32> = x_610.x_MainLightShadowmapSize;
        let x_1793 : vec4<f32> = u_xlat10;
        u_xlat60 = ((vec2<f32>(x_1787.x, x_1787.y) * vec2<f32>(x_1790.x, x_1790.y)) + vec2<f32>(x_1793.w, x_1793.y));
        let x_1797 : f32 = u_xlat9.x;
        u_xlat10.x = x_1797;
        let x_1799 : vec4<f32> = u_xlat7;
        let x_1802 : vec4<f32> = x_610.x_MainLightShadowmapSize;
        let x_1805 : vec4<f32> = u_xlat10;
        let x_1807 : vec2<f32> = ((vec2<f32>(x_1799.x, x_1799.y) * vec2<f32>(x_1802.x, x_1802.y)) + vec2<f32>(x_1805.x, x_1805.y));
        let x_1808 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1807.x, x_1807.y, x_1808.z, x_1808.w);
        let x_1811 : vec4<f32> = u_xlat8;
        let x_1813 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1811.x, x_1811.x, x_1811.x, x_1811.x) * x_1813);
        let x_1816 : vec4<f32> = u_xlat8;
        let x_1818 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1816.y, x_1816.y, x_1816.y, x_1816.y) * x_1818);
        let x_1821 : vec4<f32> = u_xlat8;
        let x_1823 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1821.z, x_1821.z, x_1821.z, x_1821.z) * x_1823);
        let x_1825 : vec4<f32> = u_xlat8;
        let x_1827 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1825.w, x_1825.w, x_1825.w, x_1825.w) * x_1827);
        let x_1830 : vec4<f32> = u_xlat13;
        let x_1831 : vec2<f32> = vec2<f32>(x_1830.x, x_1830.y);
        let x_1833 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1831.x, x_1831.y, x_1833);
        let x_1840 : vec3<f32> = txVec13;
        let x_1842 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1840.xy, x_1840.z);
        u_xlat81 = x_1842;
        let x_1844 : vec4<f32> = u_xlat13;
        let x_1845 : vec2<f32> = vec2<f32>(x_1844.z, x_1844.w);
        let x_1847 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1845.x, x_1845.y, x_1847);
        let x_1854 : vec3<f32> = txVec14;
        let x_1856 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1854.xy, x_1854.z);
        u_xlat9.x = x_1856;
        let x_1859 : f32 = u_xlat9.x;
        let x_1861 : f32 = u_xlat18.y;
        u_xlat9.x = (x_1859 * x_1861);
        let x_1865 : f32 = u_xlat18.x;
        let x_1866 : f32 = u_xlat81;
        let x_1869 : f32 = u_xlat9.x;
        u_xlat81 = ((x_1865 * x_1866) + x_1869);
        let x_1872 : vec2<f32> = u_xlat57;
        let x_1874 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1872.x, x_1872.y, x_1874);
        let x_1881 : vec3<f32> = txVec15;
        let x_1883 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1881.xy, x_1881.z);
        u_xlat57.x = x_1883;
        let x_1886 : f32 = u_xlat18.z;
        let x_1888 : f32 = u_xlat57.x;
        let x_1890 : f32 = u_xlat81;
        u_xlat81 = ((x_1886 * x_1888) + x_1890);
        let x_1893 : vec4<f32> = u_xlat16;
        let x_1894 : vec2<f32> = vec2<f32>(x_1893.x, x_1893.y);
        let x_1896 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1894.x, x_1894.y, x_1896);
        let x_1903 : vec3<f32> = txVec16;
        let x_1905 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1903.xy, x_1903.z);
        u_xlat57.x = x_1905;
        let x_1908 : f32 = u_xlat18.w;
        let x_1910 : f32 = u_xlat57.x;
        let x_1912 : f32 = u_xlat81;
        u_xlat81 = ((x_1908 * x_1910) + x_1912);
        let x_1915 : vec4<f32> = u_xlat14;
        let x_1916 : vec2<f32> = vec2<f32>(x_1915.x, x_1915.y);
        let x_1918 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1916.x, x_1916.y, x_1918);
        let x_1925 : vec3<f32> = txVec17;
        let x_1927 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1925.xy, x_1925.z);
        u_xlat57.x = x_1927;
        let x_1930 : f32 = u_xlat19.x;
        let x_1932 : f32 = u_xlat57.x;
        let x_1934 : f32 = u_xlat81;
        u_xlat81 = ((x_1930 * x_1932) + x_1934);
        let x_1937 : vec4<f32> = u_xlat14;
        let x_1938 : vec2<f32> = vec2<f32>(x_1937.z, x_1937.w);
        let x_1940 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1938.x, x_1938.y, x_1940);
        let x_1947 : vec3<f32> = txVec18;
        let x_1949 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1947.xy, x_1947.z);
        u_xlat57.x = x_1949;
        let x_1952 : f32 = u_xlat19.y;
        let x_1954 : f32 = u_xlat57.x;
        let x_1956 : f32 = u_xlat81;
        u_xlat81 = ((x_1952 * x_1954) + x_1956);
        let x_1959 : vec4<f32> = u_xlat15;
        let x_1960 : vec2<f32> = vec2<f32>(x_1959.x, x_1959.y);
        let x_1962 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1960.x, x_1960.y, x_1962);
        let x_1969 : vec3<f32> = txVec19;
        let x_1971 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1969.xy, x_1969.z);
        u_xlat57.x = x_1971;
        let x_1974 : f32 = u_xlat19.z;
        let x_1976 : f32 = u_xlat57.x;
        let x_1978 : f32 = u_xlat81;
        u_xlat81 = ((x_1974 * x_1976) + x_1978);
        let x_1981 : vec4<f32> = u_xlat16;
        let x_1982 : vec2<f32> = vec2<f32>(x_1981.z, x_1981.w);
        let x_1984 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1982.x, x_1982.y, x_1984);
        let x_1991 : vec3<f32> = txVec20;
        let x_1993 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1991.xy, x_1991.z);
        u_xlat57.x = x_1993;
        let x_1996 : f32 = u_xlat19.w;
        let x_1998 : f32 = u_xlat57.x;
        let x_2000 : f32 = u_xlat81;
        u_xlat81 = ((x_1996 * x_1998) + x_2000);
        let x_2003 : vec4<f32> = u_xlat17;
        let x_2004 : vec2<f32> = vec2<f32>(x_2003.x, x_2003.y);
        let x_2006 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_2004.x, x_2004.y, x_2006);
        let x_2013 : vec3<f32> = txVec21;
        let x_2015 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2013.xy, x_2013.z);
        u_xlat57.x = x_2015;
        let x_2018 : f32 = u_xlat20.x;
        let x_2020 : f32 = u_xlat57.x;
        let x_2022 : f32 = u_xlat81;
        u_xlat81 = ((x_2018 * x_2020) + x_2022);
        let x_2025 : vec4<f32> = u_xlat17;
        let x_2026 : vec2<f32> = vec2<f32>(x_2025.z, x_2025.w);
        let x_2028 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_2026.x, x_2026.y, x_2028);
        let x_2035 : vec3<f32> = txVec22;
        let x_2037 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2035.xy, x_2035.z);
        u_xlat57.x = x_2037;
        let x_2040 : f32 = u_xlat20.y;
        let x_2042 : f32 = u_xlat57.x;
        let x_2044 : f32 = u_xlat81;
        u_xlat81 = ((x_2040 * x_2042) + x_2044);
        let x_2047 : vec2<f32> = u_xlat34;
        let x_2049 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_2047.x, x_2047.y, x_2049);
        let x_2056 : vec3<f32> = txVec23;
        let x_2058 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2056.xy, x_2056.z);
        u_xlat57.x = x_2058;
        let x_2061 : f32 = u_xlat20.z;
        let x_2063 : f32 = u_xlat57.x;
        let x_2065 : f32 = u_xlat81;
        u_xlat81 = ((x_2061 * x_2063) + x_2065);
        let x_2068 : vec2<f32> = u_xlat65;
        let x_2070 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_2068.x, x_2068.y, x_2070);
        let x_2077 : vec3<f32> = txVec24;
        let x_2079 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2077.xy, x_2077.z);
        u_xlat57.x = x_2079;
        let x_2082 : f32 = u_xlat20.w;
        let x_2084 : f32 = u_xlat57.x;
        let x_2086 : f32 = u_xlat81;
        u_xlat81 = ((x_2082 * x_2084) + x_2086);
        let x_2089 : vec4<f32> = u_xlat12;
        let x_2090 : vec2<f32> = vec2<f32>(x_2089.x, x_2089.y);
        let x_2092 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_2090.x, x_2090.y, x_2092);
        let x_2099 : vec3<f32> = txVec25;
        let x_2101 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2099.xy, x_2099.z);
        u_xlat57.x = x_2101;
        let x_2104 : f32 = u_xlat8.x;
        let x_2106 : f32 = u_xlat57.x;
        let x_2108 : f32 = u_xlat81;
        u_xlat81 = ((x_2104 * x_2106) + x_2108);
        let x_2111 : vec4<f32> = u_xlat12;
        let x_2112 : vec2<f32> = vec2<f32>(x_2111.z, x_2111.w);
        let x_2114 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_2112.x, x_2112.y, x_2114);
        let x_2121 : vec3<f32> = txVec26;
        let x_2123 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2121.xy, x_2121.z);
        u_xlat57.x = x_2123;
        let x_2126 : f32 = u_xlat8.y;
        let x_2128 : f32 = u_xlat57.x;
        let x_2130 : f32 = u_xlat81;
        u_xlat81 = ((x_2126 * x_2128) + x_2130);
        let x_2133 : vec2<f32> = u_xlat60;
        let x_2135 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_2133.x, x_2133.y, x_2135);
        let x_2142 : vec3<f32> = txVec27;
        let x_2144 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2142.xy, x_2142.z);
        u_xlat57.x = x_2144;
        let x_2147 : f32 = u_xlat8.z;
        let x_2149 : f32 = u_xlat57.x;
        let x_2151 : f32 = u_xlat81;
        u_xlat81 = ((x_2147 * x_2149) + x_2151);
        let x_2154 : vec4<f32> = u_xlat7;
        let x_2155 : vec2<f32> = vec2<f32>(x_2154.x, x_2154.y);
        let x_2157 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_2155.x, x_2155.y, x_2157);
        let x_2164 : vec3<f32> = txVec28;
        let x_2166 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2164.xy, x_2164.z);
        u_xlat7.x = x_2166;
        let x_2169 : f32 = u_xlat8.w;
        let x_2171 : f32 = u_xlat7.x;
        let x_2173 : f32 = u_xlat81;
        u_xlat80 = ((x_2169 * x_2171) + x_2173);
      }
    }
  } else {
    let x_2177 : vec4<f32> = u_xlat3;
    let x_2178 : vec2<f32> = vec2<f32>(x_2177.x, x_2177.y);
    let x_2180 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_2178.x, x_2178.y, x_2180);
    let x_2187 : vec3<f32> = txVec29;
    let x_2189 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2187.xy, x_2187.z);
    u_xlat80 = x_2189;
  }
  let x_2191 : f32 = x_610.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_2191) + 1.0f);
  let x_2195 : f32 = u_xlat80;
  let x_2197 : f32 = x_610.x_MainLightShadowParams.x;
  let x_2200 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2195 * x_2197) + x_2200);
  let x_2205 : f32 = u_xlat3.z;
  u_xlatb28 = (0.0f >= x_2205);
  let x_2209 : f32 = u_xlat3.z;
  u_xlatb53 = (x_2209 >= 1.0f);
  let x_2211 : bool = u_xlatb53;
  let x_2212 : bool = u_xlatb28;
  u_xlatb28 = (x_2211 | x_2212);
  let x_2214 : bool = u_xlatb28;
  if (x_2214) {
    x_2216 = 1.0f;
  } else {
    let x_2221 : f32 = u_xlat3.x;
    x_2216 = x_2221;
  }
  let x_2222 : f32 = x_2216;
  u_xlat3.x = x_2222;
  let x_2224 : vec3<f32> = vs_TEXCOORD7;
  let x_2226 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_2228 : vec3<f32> = (x_2224 + -(x_2226));
  let x_2229 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2228.x, x_2228.y, x_2228.z, x_2229.w);
  let x_2232 : vec4<f32> = u_xlat7;
  let x_2234 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_2232.x, x_2232.y, x_2232.z), vec3<f32>(x_2234.x, x_2234.y, x_2234.z));
  let x_2238 : f32 = u_xlat28;
  let x_2240 : f32 = x_610.x_MainLightShadowParams.z;
  let x_2243 : f32 = x_610.x_MainLightShadowParams.w;
  u_xlat53 = ((x_2238 * x_2240) + x_2243);
  let x_2245 : f32 = u_xlat53;
  u_xlat53 = clamp(x_2245, 0.0f, 1.0f);
  let x_2248 : f32 = u_xlat3.x;
  u_xlat80 = (-(x_2248) + 1.0f);
  let x_2251 : f32 = u_xlat53;
  let x_2252 : f32 = u_xlat80;
  let x_2255 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2251 * x_2252) + x_2255);
  let x_2258 : vec4<f32> = u_xlat1;
  let x_2261 : vec3<f32> = u_xlat2;
  u_xlat53 = dot(-(vec3<f32>(x_2258.x, x_2258.y, x_2258.z)), x_2261);
  let x_2263 : f32 = u_xlat53;
  let x_2264 : f32 = u_xlat53;
  u_xlat53 = (x_2263 + x_2264);
  let x_2266 : vec3<f32> = u_xlat2;
  let x_2267 : f32 = u_xlat53;
  let x_2271 : vec4<f32> = u_xlat1;
  let x_2274 : vec3<f32> = ((x_2266 * -(vec3<f32>(x_2267, x_2267, x_2267))) + -(vec3<f32>(x_2271.x, x_2271.y, x_2271.z)));
  let x_2275 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2274.x, x_2274.y, x_2274.z, x_2275.w);
  let x_2277 : vec3<f32> = u_xlat2;
  let x_2278 : vec4<f32> = u_xlat1;
  u_xlat53 = dot(x_2277, vec3<f32>(x_2278.x, x_2278.y, x_2278.z));
  let x_2281 : f32 = u_xlat53;
  u_xlat53 = clamp(x_2281, 0.0f, 1.0f);
  let x_2283 : f32 = u_xlat53;
  u_xlat53 = (-(x_2283) + 1.0f);
  let x_2286 : f32 = u_xlat53;
  let x_2287 : f32 = u_xlat53;
  u_xlat53 = (x_2286 * x_2287);
  let x_2289 : f32 = u_xlat53;
  let x_2290 : f32 = u_xlat53;
  u_xlat53 = (x_2289 * x_2290);
  let x_2293 : f32 = u_xlat0.x;
  u_xlat80 = ((-(x_2293) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2300 : f32 = u_xlat0.x;
  let x_2301 : f32 = u_xlat80;
  u_xlat0.x = (x_2300 * x_2301);
  let x_2305 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2305 * 6.0f);
  let x_2317 : vec4<f32> = u_xlat7;
  let x_2320 : f32 = u_xlat0.x;
  let x_2321 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2317.x, x_2317.y, x_2317.z), x_2320);
  u_xlat7 = x_2321;
  let x_2323 : f32 = u_xlat7.w;
  u_xlat0.x = (x_2323 + -1.0f);
  let x_2331 : f32 = x_2329.unity_SpecCube0_HDR.w;
  let x_2333 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2331 * x_2333) + 1.0f);
  let x_2338 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2338, 0.0f);
  let x_2342 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2342);
  let x_2346 : f32 = u_xlat0.x;
  let x_2348 : f32 = x_2329.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2346 * x_2348);
  let x_2352 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2352);
  let x_2356 : f32 = u_xlat0.x;
  let x_2358 : f32 = x_2329.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2356 * x_2358);
  let x_2361 : vec4<f32> = u_xlat7;
  let x_2363 : vec3<f32> = u_xlat0;
  let x_2365 : vec3<f32> = (vec3<f32>(x_2361.x, x_2361.y, x_2361.z) * vec3<f32>(x_2363.x, x_2363.x, x_2363.x));
  let x_2366 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2365.x, x_2365.y, x_2365.z, x_2366.w);
  let x_2368 : f32 = u_xlat50;
  let x_2370 : f32 = u_xlat50;
  let x_2374 : vec2<f32> = ((vec2<f32>(x_2368, x_2368) * vec2<f32>(x_2370, x_2370)) + vec2<f32>(-1.0f, 1.0f));
  let x_2375 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2374.x, x_2375.y, x_2374.y);
  let x_2378 : f32 = u_xlat0.z;
  u_xlat50 = (1.0f / x_2378);
  let x_2380 : vec4<f32> = u_xlat5;
  let x_2383 : f32 = u_xlat78;
  let x_2385 : vec3<f32> = (-(vec3<f32>(x_2380.x, x_2380.y, x_2380.z)) + vec3<f32>(x_2383, x_2383, x_2383));
  let x_2386 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2385.x, x_2385.y, x_2385.z, x_2386.w);
  let x_2388 : f32 = u_xlat53;
  let x_2390 : vec4<f32> = u_xlat8;
  let x_2393 : vec4<f32> = u_xlat5;
  let x_2395 : vec3<f32> = ((vec3<f32>(x_2388, x_2388, x_2388) * vec3<f32>(x_2390.x, x_2390.y, x_2390.z)) + vec3<f32>(x_2393.x, x_2393.y, x_2393.z));
  let x_2396 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2395.x, x_2395.y, x_2395.z, x_2396.w);
  let x_2398 : f32 = u_xlat50;
  let x_2400 : vec4<f32> = u_xlat8;
  let x_2402 : vec3<f32> = (vec3<f32>(x_2398, x_2398, x_2398) * vec3<f32>(x_2400.x, x_2400.y, x_2400.z));
  let x_2403 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2402.x, x_2402.y, x_2402.z, x_2403.w);
  let x_2405 : vec4<f32> = u_xlat7;
  let x_2407 : vec4<f32> = u_xlat8;
  let x_2409 : vec3<f32> = (vec3<f32>(x_2405.x, x_2405.y, x_2405.z) * vec3<f32>(x_2407.x, x_2407.y, x_2407.z));
  let x_2410 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2409.x, x_2409.y, x_2409.z, x_2410.w);
  let x_2412 : vec4<f32> = u_xlat4;
  let x_2414 : vec4<f32> = u_xlat6;
  let x_2417 : vec4<f32> = u_xlat7;
  let x_2419 : vec3<f32> = ((vec3<f32>(x_2412.x, x_2412.y, x_2412.z) * vec3<f32>(x_2414.x, x_2414.y, x_2414.z)) + vec3<f32>(x_2417.x, x_2417.y, x_2417.z));
  let x_2420 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2419.x, x_2419.y, x_2419.z, x_2420.w);
  let x_2423 : f32 = u_xlat3.x;
  let x_2425 : f32 = x_2329.unity_LightData.z;
  u_xlat50 = (x_2423 * x_2425);
  let x_2427 : vec3<f32> = u_xlat2;
  let x_2429 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat3.x = dot(x_2427, vec3<f32>(x_2429.x, x_2429.y, x_2429.z));
  let x_2434 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2434, 0.0f, 1.0f);
  let x_2437 : f32 = u_xlat50;
  let x_2439 : f32 = u_xlat3.x;
  u_xlat50 = (x_2437 * x_2439);
  let x_2441 : f32 = u_xlat50;
  let x_2444 : vec4<f32> = x_29.x_MainLightColor;
  let x_2446 : vec3<f32> = (vec3<f32>(x_2441, x_2441, x_2441) * vec3<f32>(x_2444.x, x_2444.y, x_2444.z));
  let x_2447 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2446.x, x_2447.y, x_2446.y, x_2446.z);
  let x_2449 : vec4<f32> = u_xlat1;
  let x_2452 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2454 : vec3<f32> = (vec3<f32>(x_2449.x, x_2449.y, x_2449.z) + vec3<f32>(x_2452.x, x_2452.y, x_2452.z));
  let x_2455 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2454.x, x_2454.y, x_2454.z, x_2455.w);
  let x_2457 : vec4<f32> = u_xlat7;
  let x_2459 : vec4<f32> = u_xlat7;
  u_xlat50 = dot(vec3<f32>(x_2457.x, x_2457.y, x_2457.z), vec3<f32>(x_2459.x, x_2459.y, x_2459.z));
  let x_2462 : f32 = u_xlat50;
  u_xlat50 = max(x_2462, 1.17549435e-38f);
  let x_2465 : f32 = u_xlat50;
  u_xlat50 = inverseSqrt(x_2465);
  let x_2467 : f32 = u_xlat50;
  let x_2469 : vec4<f32> = u_xlat7;
  let x_2471 : vec3<f32> = (vec3<f32>(x_2467, x_2467, x_2467) * vec3<f32>(x_2469.x, x_2469.y, x_2469.z));
  let x_2472 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2471.x, x_2471.y, x_2471.z, x_2472.w);
  let x_2474 : vec3<f32> = u_xlat2;
  let x_2475 : vec4<f32> = u_xlat7;
  u_xlat50 = dot(x_2474, vec3<f32>(x_2475.x, x_2475.y, x_2475.z));
  let x_2478 : f32 = u_xlat50;
  u_xlat50 = clamp(x_2478, 0.0f, 1.0f);
  let x_2481 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2483 : vec4<f32> = u_xlat7;
  u_xlat80 = dot(vec3<f32>(x_2481.x, x_2481.y, x_2481.z), vec3<f32>(x_2483.x, x_2483.y, x_2483.z));
  let x_2486 : f32 = u_xlat80;
  u_xlat80 = clamp(x_2486, 0.0f, 1.0f);
  let x_2488 : f32 = u_xlat50;
  let x_2489 : f32 = u_xlat50;
  u_xlat50 = (x_2488 * x_2489);
  let x_2491 : f32 = u_xlat50;
  let x_2493 : f32 = u_xlat0.x;
  u_xlat50 = ((x_2491 * x_2493) + 1.00001001358032226562f);
  let x_2497 : f32 = u_xlat80;
  let x_2498 : f32 = u_xlat80;
  u_xlat80 = (x_2497 * x_2498);
  let x_2500 : f32 = u_xlat50;
  let x_2501 : f32 = u_xlat50;
  u_xlat50 = (x_2500 * x_2501);
  let x_2503 : f32 = u_xlat80;
  u_xlat80 = max(x_2503, 0.10000000149011611938f);
  let x_2506 : f32 = u_xlat50;
  let x_2507 : f32 = u_xlat80;
  u_xlat50 = (x_2506 * x_2507);
  let x_2509 : f32 = u_xlat79;
  let x_2510 : f32 = u_xlat50;
  u_xlat50 = (x_2509 * x_2510);
  let x_2512 : f32 = u_xlat77;
  let x_2513 : f32 = u_xlat50;
  u_xlat50 = (x_2512 / x_2513);
  let x_2515 : vec4<f32> = u_xlat5;
  let x_2517 : f32 = u_xlat50;
  let x_2520 : vec4<f32> = u_xlat6;
  let x_2522 : vec3<f32> = ((vec3<f32>(x_2515.x, x_2515.y, x_2515.z) * vec3<f32>(x_2517, x_2517, x_2517)) + vec3<f32>(x_2520.x, x_2520.y, x_2520.z));
  let x_2523 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2522.x, x_2522.y, x_2522.z, x_2523.w);
  let x_2525 : vec4<f32> = u_xlat3;
  let x_2527 : vec4<f32> = u_xlat7;
  let x_2529 : vec3<f32> = (vec3<f32>(x_2525.x, x_2525.z, x_2525.w) * vec3<f32>(x_2527.x, x_2527.y, x_2527.z));
  let x_2530 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2529.x, x_2530.y, x_2529.y, x_2529.z);
  let x_2533 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_2535 : f32 = x_2329.unity_LightData.y;
  u_xlat50 = min(x_2533, x_2535);
  let x_2538 : f32 = u_xlat50;
  u_xlatu50 = bitcast<u32>(i32(x_2538));
  let x_2541 : f32 = u_xlat28;
  let x_2543 : f32 = x_610.x_AdditionalShadowFadeParams.x;
  let x_2546 : f32 = x_610.x_AdditionalShadowFadeParams.y;
  u_xlat28 = ((x_2541 * x_2543) + x_2546);
  let x_2548 : f32 = u_xlat28;
  u_xlat28 = clamp(x_2548, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2560 : u32 = u_xlatu_loop_1;
    let x_2561 : u32 = u_xlatu50;
    if ((x_2560 < x_2561)) {
    } else {
      break;
    }
    let x_2564 : u32 = u_xlatu_loop_1;
    u_xlatu81 = (x_2564 >> 2u);
    let x_2567 : u32 = u_xlatu_loop_1;
    u_xlati82 = bitcast<i32>((x_2567 & 3u));
    let x_2570 : u32 = u_xlatu81;
    let x_2573 : vec4<f32> = x_2329.unity_LightIndices[bitcast<i32>(x_2570)];
    let x_2583 : i32 = u_xlati82;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2588 : vec4<u32> = indexable[x_2583];
    u_xlat81 = dot(x_2573, bitcast<vec4<f32>>(x_2588));
    let x_2592 : f32 = u_xlat81;
    u_xlati81 = i32(x_2592);
    let x_2594 : vec3<f32> = vs_TEXCOORD7;
    let x_2605 : i32 = u_xlati81;
    let x_2607 : vec4<f32> = x_2604.x_AdditionalLightsPosition[x_2605];
    let x_2610 : i32 = u_xlati81;
    let x_2612 : vec4<f32> = x_2604.x_AdditionalLightsPosition[x_2610];
    let x_2614 : vec3<f32> = ((-(x_2594) * vec3<f32>(x_2607.w, x_2607.w, x_2607.w)) + vec3<f32>(x_2612.x, x_2612.y, x_2612.z));
    let x_2615 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2614.x, x_2614.y, x_2614.z, x_2615.w);
    let x_2618 : vec4<f32> = u_xlat8;
    let x_2620 : vec4<f32> = u_xlat8;
    u_xlat82 = dot(vec3<f32>(x_2618.x, x_2618.y, x_2618.z), vec3<f32>(x_2620.x, x_2620.y, x_2620.z));
    let x_2623 : f32 = u_xlat82;
    u_xlat82 = max(x_2623, 0.00006103515625f);
    let x_2626 : f32 = u_xlat82;
    u_xlat83 = inverseSqrt(x_2626);
    let x_2628 : f32 = u_xlat83;
    let x_2630 : vec4<f32> = u_xlat8;
    let x_2632 : vec3<f32> = (vec3<f32>(x_2628, x_2628, x_2628) * vec3<f32>(x_2630.x, x_2630.y, x_2630.z));
    let x_2633 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2632.x, x_2632.y, x_2632.z, x_2633.w);
    let x_2636 : f32 = u_xlat82;
    u_xlat84 = (1.0f / x_2636);
    let x_2638 : f32 = u_xlat82;
    let x_2639 : i32 = u_xlati81;
    let x_2641 : f32 = x_2604.x_AdditionalLightsAttenuation[x_2639].x;
    u_xlat82 = (x_2638 * x_2641);
    let x_2643 : f32 = u_xlat82;
    let x_2645 : f32 = u_xlat82;
    u_xlat82 = ((-(x_2643) * x_2645) + 1.0f);
    let x_2648 : f32 = u_xlat82;
    u_xlat82 = max(x_2648, 0.0f);
    let x_2650 : f32 = u_xlat82;
    let x_2651 : f32 = u_xlat82;
    u_xlat82 = (x_2650 * x_2651);
    let x_2653 : f32 = u_xlat82;
    let x_2654 : f32 = u_xlat84;
    u_xlat82 = (x_2653 * x_2654);
    let x_2656 : i32 = u_xlati81;
    let x_2658 : vec4<f32> = x_2604.x_AdditionalLightsSpotDir[x_2656];
    let x_2660 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2658.x, x_2658.y, x_2658.z), vec3<f32>(x_2660.x, x_2660.y, x_2660.z));
    let x_2663 : f32 = u_xlat84;
    let x_2664 : i32 = u_xlati81;
    let x_2666 : f32 = x_2604.x_AdditionalLightsAttenuation[x_2664].z;
    let x_2668 : i32 = u_xlati81;
    let x_2670 : f32 = x_2604.x_AdditionalLightsAttenuation[x_2668].w;
    u_xlat84 = ((x_2663 * x_2666) + x_2670);
    let x_2672 : f32 = u_xlat84;
    u_xlat84 = clamp(x_2672, 0.0f, 1.0f);
    let x_2674 : f32 = u_xlat84;
    let x_2675 : f32 = u_xlat84;
    u_xlat84 = (x_2674 * x_2675);
    let x_2677 : f32 = u_xlat82;
    let x_2678 : f32 = u_xlat84;
    u_xlat82 = (x_2677 * x_2678);
    let x_2681 : i32 = u_xlati81;
    let x_2683 : f32 = x_610.x_AdditionalShadowParams[x_2681].w;
    u_xlati84 = i32(x_2683);
    let x_2688 : i32 = u_xlati84;
    u_xlatb10.x = (x_2688 >= 0i);
    let x_2692 : bool = u_xlatb10.x;
    if (x_2692) {
      let x_2696 : i32 = u_xlati81;
      let x_2698 : f32 = x_610.x_AdditionalShadowParams[x_2696].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2698, x_2698, x_2698, x_2698))));
      let x_2704 : bool = u_xlatb10.x;
      if (x_2704) {
        let x_2707 : vec4<f32> = u_xlat9;
        let x_2710 : vec4<f32> = u_xlat9;
        let x_2713 : vec4<bool> = (abs(vec4<f32>(x_2707.z, x_2707.z, x_2707.y, x_2707.z)) >= abs(vec4<f32>(x_2710.x, x_2710.y, x_2710.x, x_2710.x)));
        u_xlatb10 = vec3<bool>(x_2713.x, x_2713.y, x_2713.z);
        let x_2716 : bool = u_xlatb10.y;
        let x_2718 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_2716 & x_2718);
        let x_2722 : vec4<f32> = u_xlat9;
        let x_2725 : vec4<bool> = (-(vec4<f32>(x_2722.z, x_2722.y, x_2722.x, x_2722.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_2725.x, x_2725.y, x_2725.z);
        let x_2729 : bool = u_xlatb11.x;
        u_xlat35.x = select(4.0f, 5.0f, x_2729);
        let x_2734 : bool = u_xlatb11.y;
        u_xlat35.z = select(2.0f, 3.0f, x_2734);
        let x_2738 : bool = u_xlatb11.z;
        u_xlat11.x = select(0.0f, 1.0f, x_2738);
        let x_2742 : bool = u_xlatb10.z;
        if (x_2742) {
          let x_2747 : f32 = u_xlat35.z;
          x_2743 = x_2747;
        } else {
          let x_2750 : f32 = u_xlat11.x;
          x_2743 = x_2750;
        }
        let x_2751 : f32 = x_2743;
        u_xlat60.x = x_2751;
        let x_2754 : bool = u_xlatb10.x;
        if (x_2754) {
          let x_2759 : f32 = u_xlat35.x;
          x_2755 = x_2759;
        } else {
          let x_2762 : f32 = u_xlat60.x;
          x_2755 = x_2762;
        }
        let x_2763 : f32 = x_2755;
        u_xlat10.x = x_2763;
        let x_2765 : i32 = u_xlati81;
        let x_2767 : f32 = x_610.x_AdditionalShadowParams[x_2765].w;
        u_xlat35.x = trunc(x_2767);
        let x_2771 : f32 = u_xlat10.x;
        let x_2773 : f32 = u_xlat35.x;
        u_xlat10.x = (x_2771 + x_2773);
        let x_2777 : f32 = u_xlat10.x;
        u_xlati84 = i32(x_2777);
      }
      let x_2779 : i32 = u_xlati84;
      u_xlati84 = (x_2779 << bitcast<u32>(2i));
      let x_2781 : vec3<f32> = vs_TEXCOORD7;
      let x_2783 : i32 = u_xlati84;
      let x_2786 : i32 = u_xlati84;
      let x_2790 : vec4<f32> = x_610.x_AdditionalLightsWorldToShadow[((x_2783 + 1i) / 4i)][((x_2786 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_2781.y, x_2781.y, x_2781.y, x_2781.y) * x_2790);
      let x_2792 : i32 = u_xlati84;
      let x_2794 : i32 = u_xlati84;
      let x_2797 : vec4<f32> = x_610.x_AdditionalLightsWorldToShadow[(x_2792 / 4i)][(x_2794 % 4i)];
      let x_2798 : vec3<f32> = vs_TEXCOORD7;
      let x_2801 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2797 * vec4<f32>(x_2798.x, x_2798.x, x_2798.x, x_2798.x)) + x_2801);
      let x_2803 : i32 = u_xlati84;
      let x_2806 : i32 = u_xlati84;
      let x_2810 : vec4<f32> = x_610.x_AdditionalLightsWorldToShadow[((x_2803 + 2i) / 4i)][((x_2806 + 2i) % 4i)];
      let x_2811 : vec3<f32> = vs_TEXCOORD7;
      let x_2814 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2810 * vec4<f32>(x_2811.z, x_2811.z, x_2811.z, x_2811.z)) + x_2814);
      let x_2816 : vec4<f32> = u_xlat10;
      let x_2817 : i32 = u_xlati84;
      let x_2820 : i32 = u_xlati84;
      let x_2824 : vec4<f32> = x_610.x_AdditionalLightsWorldToShadow[((x_2817 + 3i) / 4i)][((x_2820 + 3i) % 4i)];
      u_xlat10 = (x_2816 + x_2824);
      let x_2826 : vec4<f32> = u_xlat10;
      let x_2828 : vec4<f32> = u_xlat10;
      let x_2830 : vec3<f32> = (vec3<f32>(x_2826.x, x_2826.y, x_2826.z) / vec3<f32>(x_2828.w, x_2828.w, x_2828.w));
      let x_2831 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2830.x, x_2830.y, x_2830.z, x_2831.w);
      let x_2834 : i32 = u_xlati81;
      let x_2836 : f32 = x_610.x_AdditionalShadowParams[x_2834].y;
      u_xlatb84 = (0.0f < x_2836);
      let x_2838 : bool = u_xlatb84;
      if (x_2838) {
        let x_2841 : i32 = u_xlati81;
        let x_2843 : f32 = x_610.x_AdditionalShadowParams[x_2841].y;
        u_xlatb84 = (1.0f == x_2843);
        let x_2845 : bool = u_xlatb84;
        if (x_2845) {
          let x_2848 : vec4<f32> = u_xlat10;
          let x_2851 : vec4<f32> = x_610.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2848.x, x_2848.y, x_2848.x, x_2848.y) + x_2851);
          let x_2854 : vec4<f32> = u_xlat11;
          let x_2855 : vec2<f32> = vec2<f32>(x_2854.x, x_2854.y);
          let x_2857 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2855.x, x_2855.y, x_2857);
          let x_2865 : vec3<f32> = txVec30;
          let x_2867 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2865.xy, x_2865.z);
          u_xlat12.x = x_2867;
          let x_2870 : vec4<f32> = u_xlat11;
          let x_2871 : vec2<f32> = vec2<f32>(x_2870.z, x_2870.w);
          let x_2873 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_2871.x, x_2871.y, x_2873);
          let x_2880 : vec3<f32> = txVec31;
          let x_2882 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2880.xy, x_2880.z);
          u_xlat12.y = x_2882;
          let x_2884 : vec4<f32> = u_xlat10;
          let x_2887 : vec4<f32> = x_610.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_2884.x, x_2884.y, x_2884.x, x_2884.y) + x_2887);
          let x_2890 : vec4<f32> = u_xlat11;
          let x_2891 : vec2<f32> = vec2<f32>(x_2890.x, x_2890.y);
          let x_2893 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_2891.x, x_2891.y, x_2893);
          let x_2900 : vec3<f32> = txVec32;
          let x_2902 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2900.xy, x_2900.z);
          u_xlat12.z = x_2902;
          let x_2905 : vec4<f32> = u_xlat11;
          let x_2906 : vec2<f32> = vec2<f32>(x_2905.z, x_2905.w);
          let x_2908 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_2906.x, x_2906.y, x_2908);
          let x_2915 : vec3<f32> = txVec33;
          let x_2917 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2915.xy, x_2915.z);
          u_xlat12.w = x_2917;
          let x_2919 : vec4<f32> = u_xlat12;
          u_xlat84 = dot(x_2919, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2923 : i32 = u_xlati81;
          let x_2925 : f32 = x_610.x_AdditionalShadowParams[x_2923].y;
          u_xlatb85 = (2.0f == x_2925);
          let x_2927 : bool = u_xlatb85;
          if (x_2927) {
            let x_2930 : vec4<f32> = u_xlat10;
            let x_2933 : vec4<f32> = x_610.x_AdditionalShadowmapSize;
            let x_2936 : vec2<f32> = ((vec2<f32>(x_2930.x, x_2930.y) * vec2<f32>(x_2933.z, x_2933.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2937 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2936.x, x_2936.y, x_2937.z, x_2937.w);
            let x_2939 : vec4<f32> = u_xlat11;
            let x_2941 : vec2<f32> = floor(vec2<f32>(x_2939.x, x_2939.y));
            let x_2942 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2941.x, x_2941.y, x_2942.z, x_2942.w);
            let x_2945 : vec4<f32> = u_xlat10;
            let x_2948 : vec4<f32> = x_610.x_AdditionalShadowmapSize;
            let x_2951 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2945.x, x_2945.y) * vec2<f32>(x_2948.z, x_2948.w)) + -(vec2<f32>(x_2951.x, x_2951.y)));
            let x_2955 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2955.x, x_2955.x, x_2955.y, x_2955.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2958 : vec4<f32> = u_xlat12;
            let x_2960 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2958.x, x_2958.x, x_2958.z, x_2958.z) * vec4<f32>(x_2960.x, x_2960.x, x_2960.z, x_2960.z));
            let x_2963 : vec4<f32> = u_xlat13;
            let x_2965 : vec2<f32> = (vec2<f32>(x_2963.y, x_2963.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2966 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2965.x, x_2966.y, x_2965.y, x_2966.w);
            let x_2968 : vec4<f32> = u_xlat13;
            let x_2971 : vec2<f32> = u_xlat61;
            let x_2973 : vec2<f32> = ((vec2<f32>(x_2968.x, x_2968.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2971));
            let x_2974 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2973.x, x_2973.y, x_2974.z, x_2974.w);
            let x_2977 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_2977) + vec2<f32>(1.0f, 1.0f));
            let x_2980 : vec2<f32> = u_xlat61;
            let x_2981 : vec2<f32> = min(x_2980, vec2<f32>(0.0f, 0.0f));
            let x_2982 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2981.x, x_2981.y, x_2982.z, x_2982.w);
            let x_2984 : vec4<f32> = u_xlat14;
            let x_2987 : vec4<f32> = u_xlat14;
            let x_2990 : vec2<f32> = u_xlat63;
            let x_2991 : vec2<f32> = ((-(vec2<f32>(x_2984.x, x_2984.y)) * vec2<f32>(x_2987.x, x_2987.y)) + x_2990);
            let x_2992 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2991.x, x_2991.y, x_2992.z, x_2992.w);
            let x_2994 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_2994, vec2<f32>(0.0f, 0.0f));
            let x_2996 : vec2<f32> = u_xlat61;
            let x_2998 : vec2<f32> = u_xlat61;
            let x_3000 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_2996) * x_2998) + vec2<f32>(x_3000.y, x_3000.w));
            let x_3003 : vec4<f32> = u_xlat14;
            let x_3005 : vec2<f32> = (vec2<f32>(x_3003.x, x_3003.y) + vec2<f32>(1.0f, 1.0f));
            let x_3006 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3005.x, x_3005.y, x_3006.z, x_3006.w);
            let x_3008 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_3008 + vec2<f32>(1.0f, 1.0f));
            let x_3010 : vec4<f32> = u_xlat13;
            let x_3012 : vec2<f32> = (vec2<f32>(x_3010.x, x_3010.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3013 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3012.x, x_3012.y, x_3013.z, x_3013.w);
            let x_3015 : vec2<f32> = u_xlat63;
            let x_3016 : vec2<f32> = (x_3015 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3017 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3016.x, x_3016.y, x_3017.z, x_3017.w);
            let x_3019 : vec4<f32> = u_xlat14;
            let x_3021 : vec2<f32> = (vec2<f32>(x_3019.x, x_3019.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3022 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3021.x, x_3021.y, x_3022.z, x_3022.w);
            let x_3024 : vec2<f32> = u_xlat61;
            let x_3025 : vec2<f32> = (x_3024 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3026 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3025.x, x_3025.y, x_3026.z, x_3026.w);
            let x_3028 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_3028.y, x_3028.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3032 : f32 = u_xlat14.x;
            u_xlat15.z = x_3032;
            let x_3035 : f32 = u_xlat61.x;
            u_xlat15.w = x_3035;
            let x_3038 : f32 = u_xlat16.x;
            u_xlat13.z = x_3038;
            let x_3041 : f32 = u_xlat12.x;
            u_xlat13.w = x_3041;
            let x_3043 : vec4<f32> = u_xlat13;
            let x_3045 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_3043.z, x_3043.w, x_3043.x, x_3043.z) + vec4<f32>(x_3045.z, x_3045.w, x_3045.x, x_3045.z));
            let x_3049 : f32 = u_xlat15.y;
            u_xlat14.z = x_3049;
            let x_3052 : f32 = u_xlat61.y;
            u_xlat14.w = x_3052;
            let x_3055 : f32 = u_xlat13.y;
            u_xlat16.z = x_3055;
            let x_3058 : f32 = u_xlat12.z;
            u_xlat16.w = x_3058;
            let x_3060 : vec4<f32> = u_xlat14;
            let x_3062 : vec4<f32> = u_xlat16;
            let x_3064 : vec3<f32> = (vec3<f32>(x_3060.z, x_3060.y, x_3060.w) + vec3<f32>(x_3062.z, x_3062.y, x_3062.w));
            let x_3065 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3064.x, x_3064.y, x_3064.z, x_3065.w);
            let x_3067 : vec4<f32> = u_xlat13;
            let x_3069 : vec4<f32> = u_xlat17;
            let x_3071 : vec3<f32> = (vec3<f32>(x_3067.x, x_3067.z, x_3067.w) / vec3<f32>(x_3069.z, x_3069.w, x_3069.y));
            let x_3072 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3071.x, x_3071.y, x_3071.z, x_3072.w);
            let x_3074 : vec4<f32> = u_xlat13;
            let x_3076 : vec3<f32> = (vec3<f32>(x_3074.x, x_3074.y, x_3074.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3077 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3076.x, x_3076.y, x_3076.z, x_3077.w);
            let x_3079 : vec4<f32> = u_xlat16;
            let x_3081 : vec4<f32> = u_xlat12;
            let x_3083 : vec3<f32> = (vec3<f32>(x_3079.z, x_3079.y, x_3079.w) / vec3<f32>(x_3081.x, x_3081.y, x_3081.z));
            let x_3084 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3083.x, x_3083.y, x_3083.z, x_3084.w);
            let x_3086 : vec4<f32> = u_xlat14;
            let x_3088 : vec3<f32> = (vec3<f32>(x_3086.x, x_3086.y, x_3086.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3089 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3088.x, x_3088.y, x_3088.z, x_3089.w);
            let x_3091 : vec4<f32> = u_xlat13;
            let x_3094 : vec4<f32> = x_610.x_AdditionalShadowmapSize;
            let x_3096 : vec3<f32> = (vec3<f32>(x_3091.y, x_3091.x, x_3091.z) * vec3<f32>(x_3094.x, x_3094.x, x_3094.x));
            let x_3097 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3096.x, x_3096.y, x_3096.z, x_3097.w);
            let x_3099 : vec4<f32> = u_xlat14;
            let x_3102 : vec4<f32> = x_610.x_AdditionalShadowmapSize;
            let x_3104 : vec3<f32> = (vec3<f32>(x_3099.x, x_3099.y, x_3099.z) * vec3<f32>(x_3102.y, x_3102.y, x_3102.y));
            let x_3105 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3104.x, x_3104.y, x_3104.z, x_3105.w);
            let x_3108 : f32 = u_xlat14.x;
            u_xlat13.w = x_3108;
            let x_3110 : vec4<f32> = u_xlat11;
            let x_3113 : vec4<f32> = x_610.x_AdditionalShadowmapSize;
            let x_3116 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_3110.x, x_3110.y, x_3110.x, x_3110.y) * vec4<f32>(x_3113.x, x_3113.y, x_3113.x, x_3113.y)) + vec4<f32>(x_3116.y, x_3116.w, x_3116.x, x_3116.w));
            let x_3119 : vec4<f32> = u_xlat11;
            let x_3122 : vec4<f32> = x_610.x_AdditionalShadowmapSize;
            let x_3125 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_3119.x, x_3119.y) * vec2<f32>(x_3122.x, x_3122.y)) + vec2<f32>(x_3125.z, x_3125.w));
            let x_3129 : f32 = u_xlat13.y;
            u_xlat14.w = x_3129;
            let x_3131 : vec4<f32> = u_xlat14;
            let x_3132 : vec2<f32> = vec2<f32>(x_3131.y, x_3131.z);
            let x_3133 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3133.x, x_3132.x, x_3133.z, x_3132.y);
            let x_3135 : vec4<f32> = u_xlat11;
            let x_3138 : vec4<f32> = x_610.x_AdditionalShadowmapSize;
            let x_3141 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_3135.x, x_3135.y, x_3135.x, x_3135.y) * vec4<f32>(x_3138.x, x_3138.y, x_3138.x, x_3138.y)) + vec4<f32>(x_3141.x, x_3141.y, x_3141.z, x_3141.y));
            let x_3144 : vec4<f32> = u_xlat11;
            let x_3147 : vec4<f32> = x_610.x_AdditionalShadowmapSize;
            let x_3150 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3144.x, x_3144.y, x_3144.x, x_3144.y) * vec4<f32>(x_3147.x, x_3147.y, x_3147.x, x_3147.y)) + vec4<f32>(x_3150.w, x_3150.y, x_3150.w, x_3150.z));
            let x_3153 : vec4<f32> = u_xlat11;
            let x_3156 : vec4<f32> = x_610.x_AdditionalShadowmapSize;
            let x_3159 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_3153.x, x_3153.y, x_3153.x, x_3153.y) * vec4<f32>(x_3156.x, x_3156.y, x_3156.x, x_3156.y)) + vec4<f32>(x_3159.x, x_3159.w, x_3159.z, x_3159.w));
            let x_3162 : vec4<f32> = u_xlat12;
            let x_3164 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_3162.x, x_3162.x, x_3162.x, x_3162.y) * vec4<f32>(x_3164.z, x_3164.w, x_3164.y, x_3164.z));
            let x_3167 : vec4<f32> = u_xlat12;
            let x_3169 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_3167.y, x_3167.y, x_3167.z, x_3167.z) * x_3169);
            let x_3173 : f32 = u_xlat12.z;
            let x_3175 : f32 = u_xlat17.y;
            u_xlat85 = (x_3173 * x_3175);
            let x_3178 : vec4<f32> = u_xlat15;
            let x_3179 : vec2<f32> = vec2<f32>(x_3178.x, x_3178.y);
            let x_3181 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_3179.x, x_3179.y, x_3181);
            let x_3188 : vec3<f32> = txVec34;
            let x_3190 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3188.xy, x_3188.z);
            u_xlat11.x = x_3190;
            let x_3193 : vec4<f32> = u_xlat15;
            let x_3194 : vec2<f32> = vec2<f32>(x_3193.z, x_3193.w);
            let x_3196 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_3194.x, x_3194.y, x_3196);
            let x_3204 : vec3<f32> = txVec35;
            let x_3206 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3204.xy, x_3204.z);
            u_xlat36 = x_3206;
            let x_3207 : f32 = u_xlat36;
            let x_3209 : f32 = u_xlat18.y;
            u_xlat36 = (x_3207 * x_3209);
            let x_3212 : f32 = u_xlat18.x;
            let x_3214 : f32 = u_xlat11.x;
            let x_3216 : f32 = u_xlat36;
            u_xlat11.x = ((x_3212 * x_3214) + x_3216);
            let x_3220 : vec2<f32> = u_xlat61;
            let x_3222 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_3220.x, x_3220.y, x_3222);
            let x_3229 : vec3<f32> = txVec36;
            let x_3231 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3229.xy, x_3229.z);
            u_xlat36 = x_3231;
            let x_3233 : f32 = u_xlat18.z;
            let x_3234 : f32 = u_xlat36;
            let x_3237 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3233 * x_3234) + x_3237);
            let x_3241 : vec4<f32> = u_xlat14;
            let x_3242 : vec2<f32> = vec2<f32>(x_3241.x, x_3241.y);
            let x_3244 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_3242.x, x_3242.y, x_3244);
            let x_3251 : vec3<f32> = txVec37;
            let x_3253 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3251.xy, x_3251.z);
            u_xlat36 = x_3253;
            let x_3255 : f32 = u_xlat18.w;
            let x_3256 : f32 = u_xlat36;
            let x_3259 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3255 * x_3256) + x_3259);
            let x_3263 : vec4<f32> = u_xlat16;
            let x_3264 : vec2<f32> = vec2<f32>(x_3263.x, x_3263.y);
            let x_3266 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_3264.x, x_3264.y, x_3266);
            let x_3273 : vec3<f32> = txVec38;
            let x_3275 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3273.xy, x_3273.z);
            u_xlat36 = x_3275;
            let x_3277 : f32 = u_xlat19.x;
            let x_3278 : f32 = u_xlat36;
            let x_3281 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3277 * x_3278) + x_3281);
            let x_3285 : vec4<f32> = u_xlat16;
            let x_3286 : vec2<f32> = vec2<f32>(x_3285.z, x_3285.w);
            let x_3288 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_3286.x, x_3286.y, x_3288);
            let x_3295 : vec3<f32> = txVec39;
            let x_3297 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3295.xy, x_3295.z);
            u_xlat36 = x_3297;
            let x_3299 : f32 = u_xlat19.y;
            let x_3300 : f32 = u_xlat36;
            let x_3303 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3299 * x_3300) + x_3303);
            let x_3307 : vec4<f32> = u_xlat14;
            let x_3308 : vec2<f32> = vec2<f32>(x_3307.z, x_3307.w);
            let x_3310 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_3308.x, x_3308.y, x_3310);
            let x_3317 : vec3<f32> = txVec40;
            let x_3319 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3317.xy, x_3317.z);
            u_xlat36 = x_3319;
            let x_3321 : f32 = u_xlat19.z;
            let x_3322 : f32 = u_xlat36;
            let x_3325 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3321 * x_3322) + x_3325);
            let x_3329 : vec4<f32> = u_xlat13;
            let x_3330 : vec2<f32> = vec2<f32>(x_3329.x, x_3329.y);
            let x_3332 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_3330.x, x_3330.y, x_3332);
            let x_3339 : vec3<f32> = txVec41;
            let x_3341 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3339.xy, x_3339.z);
            u_xlat36 = x_3341;
            let x_3343 : f32 = u_xlat19.w;
            let x_3344 : f32 = u_xlat36;
            let x_3347 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3343 * x_3344) + x_3347);
            let x_3351 : vec4<f32> = u_xlat13;
            let x_3352 : vec2<f32> = vec2<f32>(x_3351.z, x_3351.w);
            let x_3354 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_3352.x, x_3352.y, x_3354);
            let x_3361 : vec3<f32> = txVec42;
            let x_3363 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3361.xy, x_3361.z);
            u_xlat36 = x_3363;
            let x_3364 : f32 = u_xlat85;
            let x_3365 : f32 = u_xlat36;
            let x_3368 : f32 = u_xlat11.x;
            u_xlat84 = ((x_3364 * x_3365) + x_3368);
          } else {
            let x_3371 : vec4<f32> = u_xlat10;
            let x_3374 : vec4<f32> = x_610.x_AdditionalShadowmapSize;
            let x_3377 : vec2<f32> = ((vec2<f32>(x_3371.x, x_3371.y) * vec2<f32>(x_3374.z, x_3374.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3378 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3377.x, x_3377.y, x_3378.z, x_3378.w);
            let x_3380 : vec4<f32> = u_xlat11;
            let x_3382 : vec2<f32> = floor(vec2<f32>(x_3380.x, x_3380.y));
            let x_3383 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3382.x, x_3382.y, x_3383.z, x_3383.w);
            let x_3385 : vec4<f32> = u_xlat10;
            let x_3388 : vec4<f32> = x_610.x_AdditionalShadowmapSize;
            let x_3391 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3385.x, x_3385.y) * vec2<f32>(x_3388.z, x_3388.w)) + -(vec2<f32>(x_3391.x, x_3391.y)));
            let x_3395 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3395.x, x_3395.x, x_3395.y, x_3395.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3398 : vec4<f32> = u_xlat12;
            let x_3400 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3398.x, x_3398.x, x_3398.z, x_3398.z) * vec4<f32>(x_3400.x, x_3400.x, x_3400.z, x_3400.z));
            let x_3403 : vec4<f32> = u_xlat13;
            let x_3405 : vec2<f32> = (vec2<f32>(x_3403.y, x_3403.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3406 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3406.x, x_3405.x, x_3406.z, x_3405.y);
            let x_3408 : vec4<f32> = u_xlat13;
            let x_3411 : vec2<f32> = u_xlat61;
            let x_3413 : vec2<f32> = ((vec2<f32>(x_3408.x, x_3408.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3411));
            let x_3414 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3413.x, x_3414.y, x_3413.y, x_3414.w);
            let x_3416 : vec2<f32> = u_xlat61;
            let x_3418 : vec2<f32> = (-(x_3416) + vec2<f32>(1.0f, 1.0f));
            let x_3419 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3418.x, x_3418.y, x_3419.z, x_3419.w);
            let x_3421 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_3421, vec2<f32>(0.0f, 0.0f));
            let x_3423 : vec2<f32> = u_xlat63;
            let x_3425 : vec2<f32> = u_xlat63;
            let x_3427 : vec4<f32> = u_xlat13;
            let x_3429 : vec2<f32> = ((-(x_3423) * x_3425) + vec2<f32>(x_3427.x, x_3427.y));
            let x_3430 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3429.x, x_3429.y, x_3430.z, x_3430.w);
            let x_3432 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_3432, vec2<f32>(0.0f, 0.0f));
            let x_3435 : vec2<f32> = u_xlat63;
            let x_3437 : vec2<f32> = u_xlat63;
            let x_3439 : vec4<f32> = u_xlat12;
            let x_3441 : vec2<f32> = ((-(x_3435) * x_3437) + vec2<f32>(x_3439.y, x_3439.w));
            let x_3442 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_3441.x, x_3442.y, x_3441.y);
            let x_3444 : vec4<f32> = u_xlat13;
            let x_3446 : vec2<f32> = (vec2<f32>(x_3444.x, x_3444.y) + vec2<f32>(2.0f, 2.0f));
            let x_3447 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3446.x, x_3446.y, x_3447.z, x_3447.w);
            let x_3449 : vec3<f32> = u_xlat37;
            let x_3451 : vec2<f32> = (vec2<f32>(x_3449.x, x_3449.z) + vec2<f32>(2.0f, 2.0f));
            let x_3452 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3452.x, x_3451.x, x_3452.z, x_3451.y);
            let x_3455 : f32 = u_xlat12.y;
            u_xlat15.z = (x_3455 * 0.08163200318813323975f);
            let x_3458 : vec4<f32> = u_xlat12;
            let x_3460 : vec3<f32> = (vec3<f32>(x_3458.z, x_3458.x, x_3458.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3461 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3460.x, x_3460.y, x_3460.z, x_3461.w);
            let x_3463 : vec4<f32> = u_xlat13;
            let x_3465 : vec2<f32> = (vec2<f32>(x_3463.x, x_3463.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3466 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3465.x, x_3465.y, x_3466.z, x_3466.w);
            let x_3469 : f32 = u_xlat16.y;
            u_xlat15.x = x_3469;
            let x_3471 : vec2<f32> = u_xlat61;
            let x_3474 : vec2<f32> = ((vec2<f32>(x_3471.x, x_3471.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3475 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3475.x, x_3474.x, x_3475.z, x_3474.y);
            let x_3477 : vec2<f32> = u_xlat61;
            let x_3480 : vec2<f32> = ((vec2<f32>(x_3477.x, x_3477.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3481 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3480.x, x_3481.y, x_3480.y, x_3481.w);
            let x_3484 : f32 = u_xlat12.x;
            u_xlat13.y = x_3484;
            let x_3487 : f32 = u_xlat14.y;
            u_xlat13.w = x_3487;
            let x_3489 : vec4<f32> = u_xlat13;
            let x_3490 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3489 + x_3490);
            let x_3492 : vec2<f32> = u_xlat61;
            let x_3495 : vec2<f32> = ((vec2<f32>(x_3492.y, x_3492.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3496 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3496.x, x_3495.x, x_3496.z, x_3495.y);
            let x_3498 : vec2<f32> = u_xlat61;
            let x_3501 : vec2<f32> = ((vec2<f32>(x_3498.y, x_3498.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3502 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3501.x, x_3502.y, x_3501.y, x_3502.w);
            let x_3505 : f32 = u_xlat12.y;
            u_xlat14.y = x_3505;
            let x_3507 : vec4<f32> = u_xlat14;
            let x_3508 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_3507 + x_3508);
            let x_3510 : vec4<f32> = u_xlat13;
            let x_3511 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_3510 / x_3511);
            let x_3513 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3513 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3515 : vec4<f32> = u_xlat14;
            let x_3516 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_3515 / x_3516);
            let x_3518 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3518 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3520 : vec4<f32> = u_xlat13;
            let x_3523 : vec4<f32> = x_610.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3520.w, x_3520.x, x_3520.y, x_3520.z) * vec4<f32>(x_3523.x, x_3523.x, x_3523.x, x_3523.x));
            let x_3526 : vec4<f32> = u_xlat14;
            let x_3529 : vec4<f32> = x_610.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3526.x, x_3526.w, x_3526.y, x_3526.z) * vec4<f32>(x_3529.y, x_3529.y, x_3529.y, x_3529.y));
            let x_3532 : vec4<f32> = u_xlat13;
            let x_3533 : vec3<f32> = vec3<f32>(x_3532.y, x_3532.z, x_3532.w);
            let x_3534 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3533.x, x_3534.y, x_3533.y, x_3533.z);
            let x_3537 : f32 = u_xlat14.x;
            u_xlat16.y = x_3537;
            let x_3539 : vec4<f32> = u_xlat11;
            let x_3542 : vec4<f32> = x_610.x_AdditionalShadowmapSize;
            let x_3545 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3539.x, x_3539.y, x_3539.x, x_3539.y) * vec4<f32>(x_3542.x, x_3542.y, x_3542.x, x_3542.y)) + vec4<f32>(x_3545.x, x_3545.y, x_3545.z, x_3545.y));
            let x_3548 : vec4<f32> = u_xlat11;
            let x_3551 : vec4<f32> = x_610.x_AdditionalShadowmapSize;
            let x_3554 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_3548.x, x_3548.y) * vec2<f32>(x_3551.x, x_3551.y)) + vec2<f32>(x_3554.w, x_3554.y));
            let x_3558 : f32 = u_xlat16.y;
            u_xlat13.y = x_3558;
            let x_3561 : f32 = u_xlat14.z;
            u_xlat16.y = x_3561;
            let x_3563 : vec4<f32> = u_xlat11;
            let x_3566 : vec4<f32> = x_610.x_AdditionalShadowmapSize;
            let x_3569 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3563.x, x_3563.y, x_3563.x, x_3563.y) * vec4<f32>(x_3566.x, x_3566.y, x_3566.x, x_3566.y)) + vec4<f32>(x_3569.x, x_3569.y, x_3569.z, x_3569.y));
            let x_3572 : vec4<f32> = u_xlat11;
            let x_3575 : vec4<f32> = x_610.x_AdditionalShadowmapSize;
            let x_3578 : vec4<f32> = u_xlat16;
            let x_3580 : vec2<f32> = ((vec2<f32>(x_3572.x, x_3572.y) * vec2<f32>(x_3575.x, x_3575.y)) + vec2<f32>(x_3578.w, x_3578.y));
            let x_3581 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3580.x, x_3580.y, x_3581.z, x_3581.w);
            let x_3584 : f32 = u_xlat16.y;
            u_xlat13.z = x_3584;
            let x_3586 : vec4<f32> = u_xlat11;
            let x_3589 : vec4<f32> = x_610.x_AdditionalShadowmapSize;
            let x_3592 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3586.x, x_3586.y, x_3586.x, x_3586.y) * vec4<f32>(x_3589.x, x_3589.y, x_3589.x, x_3589.y)) + vec4<f32>(x_3592.x, x_3592.y, x_3592.x, x_3592.z));
            let x_3596 : f32 = u_xlat14.w;
            u_xlat16.y = x_3596;
            let x_3599 : vec4<f32> = u_xlat11;
            let x_3602 : vec4<f32> = x_610.x_AdditionalShadowmapSize;
            let x_3605 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3599.x, x_3599.y, x_3599.x, x_3599.y) * vec4<f32>(x_3602.x, x_3602.y, x_3602.x, x_3602.y)) + vec4<f32>(x_3605.x, x_3605.y, x_3605.z, x_3605.y));
            let x_3609 : vec4<f32> = u_xlat11;
            let x_3612 : vec4<f32> = x_610.x_AdditionalShadowmapSize;
            let x_3615 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3609.x, x_3609.y) * vec2<f32>(x_3612.x, x_3612.y)) + vec2<f32>(x_3615.w, x_3615.y));
            let x_3619 : f32 = u_xlat16.y;
            u_xlat13.w = x_3619;
            let x_3622 : vec4<f32> = u_xlat11;
            let x_3625 : vec4<f32> = x_610.x_AdditionalShadowmapSize;
            let x_3628 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3622.x, x_3622.y) * vec2<f32>(x_3625.x, x_3625.y)) + vec2<f32>(x_3628.x, x_3628.w));
            let x_3631 : vec4<f32> = u_xlat16;
            let x_3632 : vec3<f32> = vec3<f32>(x_3631.x, x_3631.z, x_3631.w);
            let x_3633 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3632.x, x_3633.y, x_3632.y, x_3632.z);
            let x_3635 : vec4<f32> = u_xlat11;
            let x_3638 : vec4<f32> = x_610.x_AdditionalShadowmapSize;
            let x_3641 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3635.x, x_3635.y, x_3635.x, x_3635.y) * vec4<f32>(x_3638.x, x_3638.y, x_3638.x, x_3638.y)) + vec4<f32>(x_3641.x, x_3641.y, x_3641.z, x_3641.y));
            let x_3645 : vec4<f32> = u_xlat11;
            let x_3648 : vec4<f32> = x_610.x_AdditionalShadowmapSize;
            let x_3651 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3645.x, x_3645.y) * vec2<f32>(x_3648.x, x_3648.y)) + vec2<f32>(x_3651.w, x_3651.y));
            let x_3655 : f32 = u_xlat13.x;
            u_xlat14.x = x_3655;
            let x_3657 : vec4<f32> = u_xlat11;
            let x_3660 : vec4<f32> = x_610.x_AdditionalShadowmapSize;
            let x_3663 : vec4<f32> = u_xlat14;
            let x_3665 : vec2<f32> = ((vec2<f32>(x_3657.x, x_3657.y) * vec2<f32>(x_3660.x, x_3660.y)) + vec2<f32>(x_3663.x, x_3663.y));
            let x_3666 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3665.x, x_3665.y, x_3666.z, x_3666.w);
            let x_3669 : vec4<f32> = u_xlat12;
            let x_3671 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3669.x, x_3669.x, x_3669.x, x_3669.x) * x_3671);
            let x_3674 : vec4<f32> = u_xlat12;
            let x_3676 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3674.y, x_3674.y, x_3674.y, x_3674.y) * x_3676);
            let x_3679 : vec4<f32> = u_xlat12;
            let x_3681 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3679.z, x_3679.z, x_3679.z, x_3679.z) * x_3681);
            let x_3683 : vec4<f32> = u_xlat12;
            let x_3685 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3683.w, x_3683.w, x_3683.w, x_3683.w) * x_3685);
            let x_3688 : vec4<f32> = u_xlat17;
            let x_3689 : vec2<f32> = vec2<f32>(x_3688.x, x_3688.y);
            let x_3691 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3689.x, x_3689.y, x_3691);
            let x_3698 : vec3<f32> = txVec43;
            let x_3700 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3698.xy, x_3698.z);
            u_xlat85 = x_3700;
            let x_3702 : vec4<f32> = u_xlat17;
            let x_3703 : vec2<f32> = vec2<f32>(x_3702.z, x_3702.w);
            let x_3705 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3703.x, x_3703.y, x_3705);
            let x_3712 : vec3<f32> = txVec44;
            let x_3714 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3712.xy, x_3712.z);
            u_xlat13.x = x_3714;
            let x_3717 : f32 = u_xlat13.x;
            let x_3719 : f32 = u_xlat22.y;
            u_xlat13.x = (x_3717 * x_3719);
            let x_3723 : f32 = u_xlat22.x;
            let x_3724 : f32 = u_xlat85;
            let x_3727 : f32 = u_xlat13.x;
            u_xlat85 = ((x_3723 * x_3724) + x_3727);
            let x_3730 : vec2<f32> = u_xlat61;
            let x_3732 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3730.x, x_3730.y, x_3732);
            let x_3739 : vec3<f32> = txVec45;
            let x_3741 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3739.xy, x_3739.z);
            u_xlat61.x = x_3741;
            let x_3744 : f32 = u_xlat22.z;
            let x_3746 : f32 = u_xlat61.x;
            let x_3748 : f32 = u_xlat85;
            u_xlat85 = ((x_3744 * x_3746) + x_3748);
            let x_3751 : vec4<f32> = u_xlat20;
            let x_3752 : vec2<f32> = vec2<f32>(x_3751.x, x_3751.y);
            let x_3754 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3752.x, x_3752.y, x_3754);
            let x_3761 : vec3<f32> = txVec46;
            let x_3763 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3761.xy, x_3761.z);
            u_xlat61.x = x_3763;
            let x_3766 : f32 = u_xlat22.w;
            let x_3768 : f32 = u_xlat61.x;
            let x_3770 : f32 = u_xlat85;
            u_xlat85 = ((x_3766 * x_3768) + x_3770);
            let x_3773 : vec4<f32> = u_xlat18;
            let x_3774 : vec2<f32> = vec2<f32>(x_3773.x, x_3773.y);
            let x_3776 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3774.x, x_3774.y, x_3776);
            let x_3783 : vec3<f32> = txVec47;
            let x_3785 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3783.xy, x_3783.z);
            u_xlat61.x = x_3785;
            let x_3788 : f32 = u_xlat23.x;
            let x_3790 : f32 = u_xlat61.x;
            let x_3792 : f32 = u_xlat85;
            u_xlat85 = ((x_3788 * x_3790) + x_3792);
            let x_3795 : vec4<f32> = u_xlat18;
            let x_3796 : vec2<f32> = vec2<f32>(x_3795.z, x_3795.w);
            let x_3798 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3796.x, x_3796.y, x_3798);
            let x_3805 : vec3<f32> = txVec48;
            let x_3807 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3805.xy, x_3805.z);
            u_xlat61.x = x_3807;
            let x_3810 : f32 = u_xlat23.y;
            let x_3812 : f32 = u_xlat61.x;
            let x_3814 : f32 = u_xlat85;
            u_xlat85 = ((x_3810 * x_3812) + x_3814);
            let x_3817 : vec4<f32> = u_xlat19;
            let x_3818 : vec2<f32> = vec2<f32>(x_3817.x, x_3817.y);
            let x_3820 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3818.x, x_3818.y, x_3820);
            let x_3827 : vec3<f32> = txVec49;
            let x_3829 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3827.xy, x_3827.z);
            u_xlat61.x = x_3829;
            let x_3832 : f32 = u_xlat23.z;
            let x_3834 : f32 = u_xlat61.x;
            let x_3836 : f32 = u_xlat85;
            u_xlat85 = ((x_3832 * x_3834) + x_3836);
            let x_3839 : vec4<f32> = u_xlat20;
            let x_3840 : vec2<f32> = vec2<f32>(x_3839.z, x_3839.w);
            let x_3842 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3840.x, x_3840.y, x_3842);
            let x_3849 : vec3<f32> = txVec50;
            let x_3851 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3849.xy, x_3849.z);
            u_xlat61.x = x_3851;
            let x_3854 : f32 = u_xlat23.w;
            let x_3856 : f32 = u_xlat61.x;
            let x_3858 : f32 = u_xlat85;
            u_xlat85 = ((x_3854 * x_3856) + x_3858);
            let x_3861 : vec4<f32> = u_xlat21;
            let x_3862 : vec2<f32> = vec2<f32>(x_3861.x, x_3861.y);
            let x_3864 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3862.x, x_3862.y, x_3864);
            let x_3871 : vec3<f32> = txVec51;
            let x_3873 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3871.xy, x_3871.z);
            u_xlat61.x = x_3873;
            let x_3876 : f32 = u_xlat24.x;
            let x_3878 : f32 = u_xlat61.x;
            let x_3880 : f32 = u_xlat85;
            u_xlat85 = ((x_3876 * x_3878) + x_3880);
            let x_3883 : vec4<f32> = u_xlat21;
            let x_3884 : vec2<f32> = vec2<f32>(x_3883.z, x_3883.w);
            let x_3886 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_3884.x, x_3884.y, x_3886);
            let x_3893 : vec3<f32> = txVec52;
            let x_3895 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3893.xy, x_3893.z);
            u_xlat61.x = x_3895;
            let x_3898 : f32 = u_xlat24.y;
            let x_3900 : f32 = u_xlat61.x;
            let x_3902 : f32 = u_xlat85;
            u_xlat85 = ((x_3898 * x_3900) + x_3902);
            let x_3905 : vec2<f32> = u_xlat38;
            let x_3907 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_3905.x, x_3905.y, x_3907);
            let x_3914 : vec3<f32> = txVec53;
            let x_3916 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3914.xy, x_3914.z);
            u_xlat61.x = x_3916;
            let x_3919 : f32 = u_xlat24.z;
            let x_3921 : f32 = u_xlat61.x;
            let x_3923 : f32 = u_xlat85;
            u_xlat85 = ((x_3919 * x_3921) + x_3923);
            let x_3926 : vec2<f32> = u_xlat69;
            let x_3928 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_3926.x, x_3926.y, x_3928);
            let x_3935 : vec3<f32> = txVec54;
            let x_3937 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3935.xy, x_3935.z);
            u_xlat61.x = x_3937;
            let x_3940 : f32 = u_xlat24.w;
            let x_3942 : f32 = u_xlat61.x;
            let x_3944 : f32 = u_xlat85;
            u_xlat85 = ((x_3940 * x_3942) + x_3944);
            let x_3947 : vec4<f32> = u_xlat16;
            let x_3948 : vec2<f32> = vec2<f32>(x_3947.x, x_3947.y);
            let x_3950 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_3948.x, x_3948.y, x_3950);
            let x_3957 : vec3<f32> = txVec55;
            let x_3959 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3957.xy, x_3957.z);
            u_xlat61.x = x_3959;
            let x_3962 : f32 = u_xlat12.x;
            let x_3964 : f32 = u_xlat61.x;
            let x_3966 : f32 = u_xlat85;
            u_xlat85 = ((x_3962 * x_3964) + x_3966);
            let x_3969 : vec4<f32> = u_xlat16;
            let x_3970 : vec2<f32> = vec2<f32>(x_3969.z, x_3969.w);
            let x_3972 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_3970.x, x_3970.y, x_3972);
            let x_3979 : vec3<f32> = txVec56;
            let x_3981 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3979.xy, x_3979.z);
            u_xlat61.x = x_3981;
            let x_3984 : f32 = u_xlat12.y;
            let x_3986 : f32 = u_xlat61.x;
            let x_3988 : f32 = u_xlat85;
            u_xlat85 = ((x_3984 * x_3986) + x_3988);
            let x_3991 : vec2<f32> = u_xlat64;
            let x_3993 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_3991.x, x_3991.y, x_3993);
            let x_4000 : vec3<f32> = txVec57;
            let x_4002 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4000.xy, x_4000.z);
            u_xlat61.x = x_4002;
            let x_4005 : f32 = u_xlat12.z;
            let x_4007 : f32 = u_xlat61.x;
            let x_4009 : f32 = u_xlat85;
            u_xlat85 = ((x_4005 * x_4007) + x_4009);
            let x_4012 : vec4<f32> = u_xlat11;
            let x_4013 : vec2<f32> = vec2<f32>(x_4012.x, x_4012.y);
            let x_4015 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_4013.x, x_4013.y, x_4015);
            let x_4022 : vec3<f32> = txVec58;
            let x_4024 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4022.xy, x_4022.z);
            u_xlat11.x = x_4024;
            let x_4027 : f32 = u_xlat12.w;
            let x_4029 : f32 = u_xlat11.x;
            let x_4031 : f32 = u_xlat85;
            u_xlat84 = ((x_4027 * x_4029) + x_4031);
          }
        }
      } else {
        let x_4035 : vec4<f32> = u_xlat10;
        let x_4036 : vec2<f32> = vec2<f32>(x_4035.x, x_4035.y);
        let x_4038 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_4036.x, x_4036.y, x_4038);
        let x_4045 : vec3<f32> = txVec59;
        let x_4047 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4045.xy, x_4045.z);
        u_xlat84 = x_4047;
      }
      let x_4048 : i32 = u_xlati81;
      let x_4050 : f32 = x_610.x_AdditionalShadowParams[x_4048].x;
      u_xlat10.x = (1.0f + -(x_4050));
      let x_4054 : f32 = u_xlat84;
      let x_4055 : i32 = u_xlati81;
      let x_4057 : f32 = x_610.x_AdditionalShadowParams[x_4055].x;
      let x_4060 : f32 = u_xlat10.x;
      u_xlat84 = ((x_4054 * x_4057) + x_4060);
      let x_4063 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_4063);
      let x_4068 : f32 = u_xlat10.z;
      u_xlatb35 = (x_4068 >= 1.0f);
      let x_4070 : bool = u_xlatb35;
      let x_4072 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_4070 | x_4072);
      let x_4076 : bool = u_xlatb10.x;
      let x_4077 : f32 = u_xlat84;
      u_xlat84 = select(x_4077, 1.0f, x_4076);
    } else {
      u_xlat84 = 1.0f;
    }
    let x_4080 : f32 = u_xlat84;
    u_xlat10.x = (-(x_4080) + 1.0f);
    let x_4084 : f32 = u_xlat28;
    let x_4086 : f32 = u_xlat10.x;
    let x_4088 : f32 = u_xlat84;
    u_xlat84 = ((x_4084 * x_4086) + x_4088);
    let x_4090 : f32 = u_xlat82;
    let x_4091 : f32 = u_xlat84;
    u_xlat82 = (x_4090 * x_4091);
    let x_4093 : vec3<f32> = u_xlat2;
    let x_4094 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(x_4093, vec3<f32>(x_4094.x, x_4094.y, x_4094.z));
    let x_4097 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4097, 0.0f, 1.0f);
    let x_4099 : f32 = u_xlat82;
    let x_4100 : f32 = u_xlat84;
    u_xlat82 = (x_4099 * x_4100);
    let x_4102 : f32 = u_xlat82;
    let x_4104 : i32 = u_xlati81;
    let x_4106 : vec4<f32> = x_2604.x_AdditionalLightsColor[x_4104];
    let x_4108 : vec3<f32> = (vec3<f32>(x_4102, x_4102, x_4102) * vec3<f32>(x_4106.x, x_4106.y, x_4106.z));
    let x_4109 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_4108.x, x_4108.y, x_4108.z, x_4109.w);
    let x_4111 : vec4<f32> = u_xlat8;
    let x_4113 : f32 = u_xlat83;
    let x_4116 : vec4<f32> = u_xlat1;
    let x_4118 : vec3<f32> = ((vec3<f32>(x_4111.x, x_4111.y, x_4111.z) * vec3<f32>(x_4113, x_4113, x_4113)) + vec3<f32>(x_4116.x, x_4116.y, x_4116.z));
    let x_4119 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4118.x, x_4118.y, x_4118.z, x_4119.w);
    let x_4121 : vec4<f32> = u_xlat8;
    let x_4123 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_4121.x, x_4121.y, x_4121.z), vec3<f32>(x_4123.x, x_4123.y, x_4123.z));
    let x_4126 : f32 = u_xlat81;
    u_xlat81 = max(x_4126, 1.17549435e-38f);
    let x_4128 : f32 = u_xlat81;
    u_xlat81 = inverseSqrt(x_4128);
    let x_4130 : f32 = u_xlat81;
    let x_4132 : vec4<f32> = u_xlat8;
    let x_4134 : vec3<f32> = (vec3<f32>(x_4130, x_4130, x_4130) * vec3<f32>(x_4132.x, x_4132.y, x_4132.z));
    let x_4135 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4134.x, x_4134.y, x_4134.z, x_4135.w);
    let x_4137 : vec3<f32> = u_xlat2;
    let x_4138 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(x_4137, vec3<f32>(x_4138.x, x_4138.y, x_4138.z));
    let x_4141 : f32 = u_xlat81;
    u_xlat81 = clamp(x_4141, 0.0f, 1.0f);
    let x_4143 : vec4<f32> = u_xlat9;
    let x_4145 : vec4<f32> = u_xlat8;
    u_xlat82 = dot(vec3<f32>(x_4143.x, x_4143.y, x_4143.z), vec3<f32>(x_4145.x, x_4145.y, x_4145.z));
    let x_4148 : f32 = u_xlat82;
    u_xlat82 = clamp(x_4148, 0.0f, 1.0f);
    let x_4150 : f32 = u_xlat81;
    let x_4151 : f32 = u_xlat81;
    u_xlat81 = (x_4150 * x_4151);
    let x_4153 : f32 = u_xlat81;
    let x_4155 : f32 = u_xlat0.x;
    u_xlat81 = ((x_4153 * x_4155) + 1.00001001358032226562f);
    let x_4158 : f32 = u_xlat82;
    let x_4159 : f32 = u_xlat82;
    u_xlat82 = (x_4158 * x_4159);
    let x_4161 : f32 = u_xlat81;
    let x_4162 : f32 = u_xlat81;
    u_xlat81 = (x_4161 * x_4162);
    let x_4164 : f32 = u_xlat82;
    u_xlat82 = max(x_4164, 0.10000000149011611938f);
    let x_4166 : f32 = u_xlat81;
    let x_4167 : f32 = u_xlat82;
    u_xlat81 = (x_4166 * x_4167);
    let x_4169 : f32 = u_xlat79;
    let x_4170 : f32 = u_xlat81;
    u_xlat81 = (x_4169 * x_4170);
    let x_4172 : f32 = u_xlat77;
    let x_4173 : f32 = u_xlat81;
    u_xlat81 = (x_4172 / x_4173);
    let x_4175 : vec4<f32> = u_xlat5;
    let x_4177 : f32 = u_xlat81;
    let x_4180 : vec4<f32> = u_xlat6;
    let x_4182 : vec3<f32> = ((vec3<f32>(x_4175.x, x_4175.y, x_4175.z) * vec3<f32>(x_4177, x_4177, x_4177)) + vec3<f32>(x_4180.x, x_4180.y, x_4180.z));
    let x_4183 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4182.x, x_4182.y, x_4182.z, x_4183.w);
    let x_4185 : vec4<f32> = u_xlat8;
    let x_4187 : vec4<f32> = u_xlat10;
    let x_4190 : vec4<f32> = u_xlat7;
    let x_4192 : vec3<f32> = ((vec3<f32>(x_4185.x, x_4185.y, x_4185.z) * vec3<f32>(x_4187.x, x_4187.y, x_4187.z)) + vec3<f32>(x_4190.x, x_4190.y, x_4190.z));
    let x_4193 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_4192.x, x_4192.y, x_4192.z, x_4193.w);

    continuing {
      let x_4195 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4195 + bitcast<u32>(1i));
    }
  }
  let x_4197 : vec4<f32> = u_xlat4;
  let x_4199 : f32 = u_xlat25;
  let x_4202 : vec4<f32> = u_xlat3;
  u_xlat0 = ((vec3<f32>(x_4197.x, x_4197.y, x_4197.z) * vec3<f32>(x_4199, x_4199, x_4199)) + vec3<f32>(x_4202.x, x_4202.z, x_4202.w));
  let x_4205 : vec4<f32> = u_xlat7;
  let x_4207 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4205.x, x_4205.y, x_4205.z) + x_4207);
  let x_4209 : f32 = u_xlat75;
  let x_4211 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4209, x_4209, x_4209) * x_4211);
  let x_4213 : f32 = u_xlat76;
  let x_4214 : f32 = u_xlat76;
  u_xlat75 = (x_4213 * -(x_4214));
  let x_4217 : f32 = u_xlat75;
  u_xlat75 = exp2(x_4217);
  let x_4221 : vec3<f32> = u_xlat0;
  let x_4222 : f32 = u_xlat75;
  let x_4224 : vec3<f32> = (x_4221 * vec3<f32>(x_4222, x_4222, x_4222));
  let x_4225 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4224.x, x_4224.y, x_4224.z, x_4225.w);
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


