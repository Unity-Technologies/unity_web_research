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

@group(1) @binding(4) var<uniform> x_629 : LightShadows;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu76 : u32;

var<private> u_xlati76 : i32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(12) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat77 : f32;

var<private> u_xlat78 : f32;

var<private> u_xlatb79 : bool;

@group(0) @binding(9) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(16) var sampler_LinearClampCompare : sampler_comparison;

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

@group(0) @binding(11) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2282 : UnityPerDraw;

var<private> u_xlatu50 : u32;

var<private> u_xlatu80 : u32;

var<private> u_xlati81 : i32;

var<private> u_xlati80 : i32;

@group(1) @binding(1) var<uniform> x_2554 : AdditionalLights;

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
  var x_2169 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2690 : f32;
  var x_2700 : f32;
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
  let x_734 : vec4<f32> = u_xlat4;
  u_xlat76 = dot(x_734, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_739 : f32 = u_xlat76;
  u_xlat76 = (-(x_739) + 4.0f);
  let x_744 : f32 = u_xlat76;
  u_xlatu76 = u32(x_744);
  let x_748 : u32 = u_xlatu76;
  u_xlati76 = (bitcast<i32>(x_748) << bitcast<u32>(2i));
  let x_751 : vec3<f32> = vs_TEXCOORD7;
  let x_753 : i32 = u_xlati76;
  let x_756 : i32 = u_xlati76;
  let x_760 : vec4<f32> = x_629.x_MainLightWorldToShadow[((x_753 + 1i) / 4i)][((x_756 + 1i) % 4i)];
  let x_762 : vec3<f32> = (vec3<f32>(x_751.y, x_751.y, x_751.y) * vec3<f32>(x_760.x, x_760.y, x_760.z));
  let x_763 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_762.x, x_762.y, x_762.z, x_763.w);
  let x_765 : i32 = u_xlati76;
  let x_767 : i32 = u_xlati76;
  let x_770 : vec4<f32> = x_629.x_MainLightWorldToShadow[(x_765 / 4i)][(x_767 % 4i)];
  let x_772 : vec3<f32> = vs_TEXCOORD7;
  let x_775 : vec4<f32> = u_xlat3;
  let x_777 : vec3<f32> = ((vec3<f32>(x_770.x, x_770.y, x_770.z) * vec3<f32>(x_772.x, x_772.x, x_772.x)) + vec3<f32>(x_775.x, x_775.y, x_775.z));
  let x_778 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_777.x, x_777.y, x_777.z, x_778.w);
  let x_780 : i32 = u_xlati76;
  let x_783 : i32 = u_xlati76;
  let x_787 : vec4<f32> = x_629.x_MainLightWorldToShadow[((x_780 + 2i) / 4i)][((x_783 + 2i) % 4i)];
  let x_789 : vec3<f32> = vs_TEXCOORD7;
  let x_792 : vec4<f32> = u_xlat3;
  let x_794 : vec3<f32> = ((vec3<f32>(x_787.x, x_787.y, x_787.z) * vec3<f32>(x_789.z, x_789.z, x_789.z)) + vec3<f32>(x_792.x, x_792.y, x_792.z));
  let x_795 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_794.x, x_794.y, x_794.z, x_795.w);
  let x_797 : vec4<f32> = u_xlat3;
  let x_799 : i32 = u_xlati76;
  let x_802 : i32 = u_xlati76;
  let x_806 : vec4<f32> = x_629.x_MainLightWorldToShadow[((x_799 + 3i) / 4i)][((x_802 + 3i) % 4i)];
  let x_808 : vec3<f32> = (vec3<f32>(x_797.x, x_797.y, x_797.z) + vec3<f32>(x_806.x, x_806.y, x_806.z));
  let x_809 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_808.x, x_808.y, x_808.z, x_809.w);
  let x_816 : vec4<f32> = vs_TEXCOORD0;
  let x_819 : f32 = x_29.x_GlobalMipBias.x;
  let x_820 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_816.z, x_816.w), x_819);
  u_xlat4 = x_820;
  let x_825 : vec4<f32> = vs_TEXCOORD0;
  let x_828 : f32 = x_29.x_GlobalMipBias.x;
  let x_829 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_825.z, x_825.w), x_828);
  let x_830 : vec3<f32> = vec3<f32>(x_829.x, x_829.y, x_829.z);
  let x_831 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_830.x, x_830.y, x_830.z, x_831.w);
  let x_833 : vec4<f32> = u_xlat4;
  let x_837 : vec3<f32> = (vec3<f32>(x_833.x, x_833.y, x_833.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_838 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_837.x, x_837.y, x_837.z, x_838.w);
  let x_840 : vec4<f32> = u_xlat1;
  let x_842 : vec4<f32> = u_xlat4;
  u_xlat76 = dot(vec3<f32>(x_840.x, x_840.y, x_840.z), vec3<f32>(x_842.x, x_842.y, x_842.z));
  let x_845 : f32 = u_xlat76;
  u_xlat76 = (x_845 + 0.5f);
  let x_847 : f32 = u_xlat76;
  let x_849 : vec4<f32> = u_xlat6;
  let x_851 : vec3<f32> = (vec3<f32>(x_847, x_847, x_847) * vec3<f32>(x_849.x, x_849.y, x_849.z));
  let x_852 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_851.x, x_851.y, x_851.z, x_852.w);
  let x_855 : f32 = u_xlat4.w;
  u_xlat76 = max(x_855, 0.00009999999747378752f);
  let x_858 : vec4<f32> = u_xlat4;
  let x_860 : f32 = u_xlat76;
  let x_862 : vec3<f32> = (vec3<f32>(x_858.x, x_858.y, x_858.z) / vec3<f32>(x_860, x_860, x_860));
  let x_863 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_862.x, x_862.y, x_862.z, x_863.w);
  let x_866 : f32 = u_xlat0.x;
  u_xlat76 = ((-(x_866) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_872 : f32 = u_xlat50;
  let x_873 : f32 = u_xlat76;
  u_xlat77 = (x_872 + -(x_873));
  let x_876 : f32 = u_xlat76;
  let x_878 : vec4<f32> = u_xlat5;
  let x_880 : vec3<f32> = (vec3<f32>(x_876, x_876, x_876) * vec3<f32>(x_878.x, x_878.y, x_878.z));
  let x_881 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_880.x, x_880.y, x_880.z, x_881.w);
  let x_883 : vec4<f32> = u_xlat5;
  let x_887 : vec3<f32> = (vec3<f32>(x_883.x, x_883.y, x_883.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_888 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_887.x, x_887.y, x_887.z, x_888.w);
  let x_890 : vec3<f32> = u_xlat0;
  let x_892 : vec4<f32> = u_xlat5;
  let x_897 : vec3<f32> = ((vec3<f32>(x_890.x, x_890.x, x_890.x) * vec3<f32>(x_892.x, x_892.y, x_892.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_898 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_897.x, x_897.y, x_897.z, x_898.w);
  let x_900 : f32 = u_xlat50;
  u_xlat0.x = (-(x_900) + 1.0f);
  let x_905 : f32 = u_xlat0.x;
  let x_907 : f32 = u_xlat0.x;
  u_xlat50 = (x_905 * x_907);
  let x_909 : f32 = u_xlat50;
  u_xlat50 = max(x_909, 0.0078125f);
  let x_912 : f32 = u_xlat50;
  let x_913 : f32 = u_xlat50;
  u_xlat76 = (x_912 * x_913);
  let x_915 : f32 = u_xlat77;
  u_xlat77 = (x_915 + 1.0f);
  let x_917 : f32 = u_xlat77;
  u_xlat77 = clamp(x_917, 0.0f, 1.0f);
  let x_920 : f32 = u_xlat50;
  u_xlat78 = ((x_920 * 4.0f) + 2.0f);
  let x_923 : f32 = u_xlat25;
  u_xlat25 = min(x_923, 1.0f);
  let x_927 : f32 = x_629.x_MainLightShadowParams.y;
  u_xlatb79 = (0.0f < x_927);
  let x_929 : bool = u_xlatb79;
  if (x_929) {
    let x_933 : f32 = x_629.x_MainLightShadowParams.y;
    u_xlatb79 = (x_933 == 1.0f);
    let x_935 : bool = u_xlatb79;
    if (x_935) {
      let x_938 : vec4<f32> = u_xlat3;
      let x_941 : vec4<f32> = x_629.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_938.x, x_938.y, x_938.x, x_938.y) + x_941);
      let x_945 : vec4<f32> = u_xlat7;
      let x_946 : vec2<f32> = vec2<f32>(x_945.x, x_945.y);
      let x_948 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_946.x, x_946.y, x_948);
      let x_960 : vec3<f32> = txVec0;
      let x_962 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_960.xy, x_960.z);
      u_xlat8.x = x_962;
      let x_965 : vec4<f32> = u_xlat7;
      let x_966 : vec2<f32> = vec2<f32>(x_965.z, x_965.w);
      let x_968 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_966.x, x_966.y, x_968);
      let x_975 : vec3<f32> = txVec1;
      let x_977 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_975.xy, x_975.z);
      u_xlat8.y = x_977;
      let x_979 : vec4<f32> = u_xlat3;
      let x_982 : vec4<f32> = x_629.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_979.x, x_979.y, x_979.x, x_979.y) + x_982);
      let x_985 : vec4<f32> = u_xlat7;
      let x_986 : vec2<f32> = vec2<f32>(x_985.x, x_985.y);
      let x_988 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_986.x, x_986.y, x_988);
      let x_995 : vec3<f32> = txVec2;
      let x_997 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_995.xy, x_995.z);
      u_xlat8.z = x_997;
      let x_1000 : vec4<f32> = u_xlat7;
      let x_1001 : vec2<f32> = vec2<f32>(x_1000.z, x_1000.w);
      let x_1003 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_1001.x, x_1001.y, x_1003);
      let x_1010 : vec3<f32> = txVec3;
      let x_1012 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1010.xy, x_1010.z);
      u_xlat8.w = x_1012;
      let x_1015 : vec4<f32> = u_xlat8;
      u_xlat79 = dot(x_1015, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1022 : f32 = x_629.x_MainLightShadowParams.y;
      u_xlatb80 = (x_1022 == 2.0f);
      let x_1024 : bool = u_xlatb80;
      if (x_1024) {
        let x_1027 : vec4<f32> = u_xlat3;
        let x_1030 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1033 : vec2<f32> = ((vec2<f32>(x_1027.x, x_1027.y) * vec2<f32>(x_1030.z, x_1030.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1034 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1033.x, x_1033.y, x_1034.z, x_1034.w);
        let x_1036 : vec4<f32> = u_xlat7;
        let x_1038 : vec2<f32> = floor(vec2<f32>(x_1036.x, x_1036.y));
        let x_1039 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1038.x, x_1038.y, x_1039.z, x_1039.w);
        let x_1043 : vec4<f32> = u_xlat3;
        let x_1046 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1049 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_1043.x, x_1043.y) * vec2<f32>(x_1046.z, x_1046.w)) + -(vec2<f32>(x_1049.x, x_1049.y)));
        let x_1053 : vec2<f32> = u_xlat57;
        u_xlat8 = (vec4<f32>(x_1053.x, x_1053.x, x_1053.y, x_1053.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1057 : vec4<f32> = u_xlat8;
        let x_1059 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1057.x, x_1057.x, x_1057.z, x_1057.z) * vec4<f32>(x_1059.x, x_1059.x, x_1059.z, x_1059.z));
        let x_1062 : vec4<f32> = u_xlat9;
        let x_1066 : vec2<f32> = (vec2<f32>(x_1062.y, x_1062.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1067 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1066.x, x_1067.y, x_1066.y, x_1067.w);
        let x_1069 : vec4<f32> = u_xlat9;
        let x_1072 : vec2<f32> = u_xlat57;
        let x_1074 : vec2<f32> = ((vec2<f32>(x_1069.x, x_1069.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1072));
        let x_1075 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1074.x, x_1074.y, x_1075.z, x_1075.w);
        let x_1078 : vec2<f32> = u_xlat57;
        u_xlat59 = (-(x_1078) + vec2<f32>(1.0f, 1.0f));
        let x_1082 : vec2<f32> = u_xlat57;
        let x_1084 : vec2<f32> = min(x_1082, vec2<f32>(0.0f, 0.0f));
        let x_1085 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1084.x, x_1084.y, x_1085.z, x_1085.w);
        let x_1087 : vec4<f32> = u_xlat10;
        let x_1090 : vec4<f32> = u_xlat10;
        let x_1093 : vec2<f32> = u_xlat59;
        let x_1094 : vec2<f32> = ((-(vec2<f32>(x_1087.x, x_1087.y)) * vec2<f32>(x_1090.x, x_1090.y)) + x_1093);
        let x_1095 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1094.x, x_1094.y, x_1095.z, x_1095.w);
        let x_1097 : vec2<f32> = u_xlat57;
        u_xlat57 = max(x_1097, vec2<f32>(0.0f, 0.0f));
        let x_1099 : vec2<f32> = u_xlat57;
        let x_1101 : vec2<f32> = u_xlat57;
        let x_1103 : vec4<f32> = u_xlat8;
        u_xlat57 = ((-(x_1099) * x_1101) + vec2<f32>(x_1103.y, x_1103.w));
        let x_1106 : vec4<f32> = u_xlat10;
        let x_1108 : vec2<f32> = (vec2<f32>(x_1106.x, x_1106.y) + vec2<f32>(1.0f, 1.0f));
        let x_1109 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1108.x, x_1108.y, x_1109.z, x_1109.w);
        let x_1111 : vec2<f32> = u_xlat57;
        u_xlat57 = (x_1111 + vec2<f32>(1.0f, 1.0f));
        let x_1113 : vec4<f32> = u_xlat9;
        let x_1117 : vec2<f32> = (vec2<f32>(x_1113.x, x_1113.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1118 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1117.x, x_1117.y, x_1118.z, x_1118.w);
        let x_1120 : vec2<f32> = u_xlat59;
        let x_1121 : vec2<f32> = (x_1120 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1122 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1121.x, x_1121.y, x_1122.z, x_1122.w);
        let x_1124 : vec4<f32> = u_xlat10;
        let x_1126 : vec2<f32> = (vec2<f32>(x_1124.x, x_1124.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1127 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1126.x, x_1126.y, x_1127.z, x_1127.w);
        let x_1129 : vec2<f32> = u_xlat57;
        let x_1130 : vec2<f32> = (x_1129 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1131 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1130.x, x_1130.y, x_1131.z, x_1131.w);
        let x_1133 : vec4<f32> = u_xlat8;
        u_xlat57 = (vec2<f32>(x_1133.y, x_1133.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1137 : f32 = u_xlat10.x;
        u_xlat11.z = x_1137;
        let x_1140 : f32 = u_xlat57.x;
        u_xlat11.w = x_1140;
        let x_1143 : f32 = u_xlat12.x;
        u_xlat9.z = x_1143;
        let x_1146 : f32 = u_xlat8.x;
        u_xlat9.w = x_1146;
        let x_1148 : vec4<f32> = u_xlat9;
        let x_1150 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_1148.z, x_1148.w, x_1148.x, x_1148.z) + vec4<f32>(x_1150.z, x_1150.w, x_1150.x, x_1150.z));
        let x_1154 : f32 = u_xlat11.y;
        u_xlat10.z = x_1154;
        let x_1157 : f32 = u_xlat57.y;
        u_xlat10.w = x_1157;
        let x_1160 : f32 = u_xlat9.y;
        u_xlat12.z = x_1160;
        let x_1163 : f32 = u_xlat8.z;
        u_xlat12.w = x_1163;
        let x_1165 : vec4<f32> = u_xlat10;
        let x_1167 : vec4<f32> = u_xlat12;
        let x_1169 : vec3<f32> = (vec3<f32>(x_1165.z, x_1165.y, x_1165.w) + vec3<f32>(x_1167.z, x_1167.y, x_1167.w));
        let x_1170 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1169.x, x_1169.y, x_1169.z, x_1170.w);
        let x_1172 : vec4<f32> = u_xlat9;
        let x_1174 : vec4<f32> = u_xlat13;
        let x_1176 : vec3<f32> = (vec3<f32>(x_1172.x, x_1172.z, x_1172.w) / vec3<f32>(x_1174.z, x_1174.w, x_1174.y));
        let x_1177 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1176.x, x_1176.y, x_1176.z, x_1177.w);
        let x_1179 : vec4<f32> = u_xlat9;
        let x_1184 : vec3<f32> = (vec3<f32>(x_1179.x, x_1179.y, x_1179.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1185 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1184.x, x_1184.y, x_1184.z, x_1185.w);
        let x_1187 : vec4<f32> = u_xlat12;
        let x_1189 : vec4<f32> = u_xlat8;
        let x_1191 : vec3<f32> = (vec3<f32>(x_1187.z, x_1187.y, x_1187.w) / vec3<f32>(x_1189.x, x_1189.y, x_1189.z));
        let x_1192 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1191.x, x_1191.y, x_1191.z, x_1192.w);
        let x_1194 : vec4<f32> = u_xlat10;
        let x_1196 : vec3<f32> = (vec3<f32>(x_1194.x, x_1194.y, x_1194.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1197 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1196.x, x_1196.y, x_1196.z, x_1197.w);
        let x_1199 : vec4<f32> = u_xlat9;
        let x_1202 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1204 : vec3<f32> = (vec3<f32>(x_1199.y, x_1199.x, x_1199.z) * vec3<f32>(x_1202.x, x_1202.x, x_1202.x));
        let x_1205 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1204.x, x_1204.y, x_1204.z, x_1205.w);
        let x_1207 : vec4<f32> = u_xlat10;
        let x_1210 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1212 : vec3<f32> = (vec3<f32>(x_1207.x, x_1207.y, x_1207.z) * vec3<f32>(x_1210.y, x_1210.y, x_1210.y));
        let x_1213 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1212.x, x_1212.y, x_1212.z, x_1213.w);
        let x_1216 : f32 = u_xlat10.x;
        u_xlat9.w = x_1216;
        let x_1218 : vec4<f32> = u_xlat7;
        let x_1221 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1224 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1218.x, x_1218.y, x_1218.x, x_1218.y) * vec4<f32>(x_1221.x, x_1221.y, x_1221.x, x_1221.y)) + vec4<f32>(x_1224.y, x_1224.w, x_1224.x, x_1224.w));
        let x_1227 : vec4<f32> = u_xlat7;
        let x_1230 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1233 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_1227.x, x_1227.y) * vec2<f32>(x_1230.x, x_1230.y)) + vec2<f32>(x_1233.z, x_1233.w));
        let x_1237 : f32 = u_xlat9.y;
        u_xlat10.w = x_1237;
        let x_1239 : vec4<f32> = u_xlat10;
        let x_1240 : vec2<f32> = vec2<f32>(x_1239.y, x_1239.z);
        let x_1241 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1241.x, x_1240.x, x_1241.z, x_1240.y);
        let x_1243 : vec4<f32> = u_xlat7;
        let x_1246 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1249 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1243.x, x_1243.y, x_1243.x, x_1243.y) * vec4<f32>(x_1246.x, x_1246.y, x_1246.x, x_1246.y)) + vec4<f32>(x_1249.x, x_1249.y, x_1249.z, x_1249.y));
        let x_1252 : vec4<f32> = u_xlat7;
        let x_1255 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1258 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1252.x, x_1252.y, x_1252.x, x_1252.y) * vec4<f32>(x_1255.x, x_1255.y, x_1255.x, x_1255.y)) + vec4<f32>(x_1258.w, x_1258.y, x_1258.w, x_1258.z));
        let x_1261 : vec4<f32> = u_xlat7;
        let x_1264 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1267 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1261.x, x_1261.y, x_1261.x, x_1261.y) * vec4<f32>(x_1264.x, x_1264.y, x_1264.x, x_1264.y)) + vec4<f32>(x_1267.x, x_1267.w, x_1267.z, x_1267.w));
        let x_1271 : vec4<f32> = u_xlat8;
        let x_1273 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_1271.x, x_1271.x, x_1271.x, x_1271.y) * vec4<f32>(x_1273.z, x_1273.w, x_1273.y, x_1273.z));
        let x_1277 : vec4<f32> = u_xlat8;
        let x_1279 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_1277.y, x_1277.y, x_1277.z, x_1277.z) * x_1279);
        let x_1283 : f32 = u_xlat8.z;
        let x_1285 : f32 = u_xlat13.y;
        u_xlat80 = (x_1283 * x_1285);
        let x_1288 : vec4<f32> = u_xlat11;
        let x_1289 : vec2<f32> = vec2<f32>(x_1288.x, x_1288.y);
        let x_1291 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_1289.x, x_1289.y, x_1291);
        let x_1299 : vec3<f32> = txVec4;
        let x_1301 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1299.xy, x_1299.z);
        u_xlat81 = x_1301;
        let x_1303 : vec4<f32> = u_xlat11;
        let x_1304 : vec2<f32> = vec2<f32>(x_1303.z, x_1303.w);
        let x_1306 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_1304.x, x_1304.y, x_1306);
        let x_1313 : vec3<f32> = txVec5;
        let x_1315 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1313.xy, x_1313.z);
        u_xlat7.x = x_1315;
        let x_1318 : f32 = u_xlat7.x;
        let x_1320 : f32 = u_xlat14.y;
        u_xlat7.x = (x_1318 * x_1320);
        let x_1324 : f32 = u_xlat14.x;
        let x_1325 : f32 = u_xlat81;
        let x_1328 : f32 = u_xlat7.x;
        u_xlat81 = ((x_1324 * x_1325) + x_1328);
        let x_1331 : vec2<f32> = u_xlat57;
        let x_1333 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_1331.x, x_1331.y, x_1333);
        let x_1340 : vec3<f32> = txVec6;
        let x_1342 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1340.xy, x_1340.z);
        u_xlat7.x = x_1342;
        let x_1345 : f32 = u_xlat14.z;
        let x_1347 : f32 = u_xlat7.x;
        let x_1349 : f32 = u_xlat81;
        u_xlat81 = ((x_1345 * x_1347) + x_1349);
        let x_1352 : vec4<f32> = u_xlat10;
        let x_1353 : vec2<f32> = vec2<f32>(x_1352.x, x_1352.y);
        let x_1355 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_1353.x, x_1353.y, x_1355);
        let x_1362 : vec3<f32> = txVec7;
        let x_1364 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1362.xy, x_1362.z);
        u_xlat7.x = x_1364;
        let x_1367 : f32 = u_xlat14.w;
        let x_1369 : f32 = u_xlat7.x;
        let x_1371 : f32 = u_xlat81;
        u_xlat81 = ((x_1367 * x_1369) + x_1371);
        let x_1374 : vec4<f32> = u_xlat12;
        let x_1375 : vec2<f32> = vec2<f32>(x_1374.x, x_1374.y);
        let x_1377 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_1375.x, x_1375.y, x_1377);
        let x_1384 : vec3<f32> = txVec8;
        let x_1386 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1384.xy, x_1384.z);
        u_xlat7.x = x_1386;
        let x_1389 : f32 = u_xlat15.x;
        let x_1391 : f32 = u_xlat7.x;
        let x_1393 : f32 = u_xlat81;
        u_xlat81 = ((x_1389 * x_1391) + x_1393);
        let x_1396 : vec4<f32> = u_xlat12;
        let x_1397 : vec2<f32> = vec2<f32>(x_1396.z, x_1396.w);
        let x_1399 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_1397.x, x_1397.y, x_1399);
        let x_1406 : vec3<f32> = txVec9;
        let x_1408 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1406.xy, x_1406.z);
        u_xlat7.x = x_1408;
        let x_1411 : f32 = u_xlat15.y;
        let x_1413 : f32 = u_xlat7.x;
        let x_1415 : f32 = u_xlat81;
        u_xlat81 = ((x_1411 * x_1413) + x_1415);
        let x_1418 : vec4<f32> = u_xlat10;
        let x_1419 : vec2<f32> = vec2<f32>(x_1418.z, x_1418.w);
        let x_1421 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_1419.x, x_1419.y, x_1421);
        let x_1428 : vec3<f32> = txVec10;
        let x_1430 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1428.xy, x_1428.z);
        u_xlat7.x = x_1430;
        let x_1433 : f32 = u_xlat15.z;
        let x_1435 : f32 = u_xlat7.x;
        let x_1437 : f32 = u_xlat81;
        u_xlat81 = ((x_1433 * x_1435) + x_1437);
        let x_1440 : vec4<f32> = u_xlat9;
        let x_1441 : vec2<f32> = vec2<f32>(x_1440.x, x_1440.y);
        let x_1443 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_1441.x, x_1441.y, x_1443);
        let x_1450 : vec3<f32> = txVec11;
        let x_1452 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1450.xy, x_1450.z);
        u_xlat7.x = x_1452;
        let x_1455 : f32 = u_xlat15.w;
        let x_1457 : f32 = u_xlat7.x;
        let x_1459 : f32 = u_xlat81;
        u_xlat81 = ((x_1455 * x_1457) + x_1459);
        let x_1462 : vec4<f32> = u_xlat9;
        let x_1463 : vec2<f32> = vec2<f32>(x_1462.z, x_1462.w);
        let x_1465 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1463.x, x_1463.y, x_1465);
        let x_1472 : vec3<f32> = txVec12;
        let x_1474 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1472.xy, x_1472.z);
        u_xlat7.x = x_1474;
        let x_1476 : f32 = u_xlat80;
        let x_1478 : f32 = u_xlat7.x;
        let x_1480 : f32 = u_xlat81;
        u_xlat79 = ((x_1476 * x_1478) + x_1480);
      } else {
        let x_1483 : vec4<f32> = u_xlat3;
        let x_1486 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1489 : vec2<f32> = ((vec2<f32>(x_1483.x, x_1483.y) * vec2<f32>(x_1486.z, x_1486.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1490 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1489.x, x_1489.y, x_1490.z, x_1490.w);
        let x_1492 : vec4<f32> = u_xlat7;
        let x_1494 : vec2<f32> = floor(vec2<f32>(x_1492.x, x_1492.y));
        let x_1495 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1494.x, x_1494.y, x_1495.z, x_1495.w);
        let x_1497 : vec4<f32> = u_xlat3;
        let x_1500 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1503 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_1497.x, x_1497.y) * vec2<f32>(x_1500.z, x_1500.w)) + -(vec2<f32>(x_1503.x, x_1503.y)));
        let x_1507 : vec2<f32> = u_xlat57;
        u_xlat8 = (vec4<f32>(x_1507.x, x_1507.x, x_1507.y, x_1507.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1510 : vec4<f32> = u_xlat8;
        let x_1512 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1510.x, x_1510.x, x_1510.z, x_1510.z) * vec4<f32>(x_1512.x, x_1512.x, x_1512.z, x_1512.z));
        let x_1515 : vec4<f32> = u_xlat9;
        let x_1519 : vec2<f32> = (vec2<f32>(x_1515.y, x_1515.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1520 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1520.x, x_1519.x, x_1520.z, x_1519.y);
        let x_1522 : vec4<f32> = u_xlat9;
        let x_1525 : vec2<f32> = u_xlat57;
        let x_1527 : vec2<f32> = ((vec2<f32>(x_1522.x, x_1522.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1525));
        let x_1528 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1527.x, x_1528.y, x_1527.y, x_1528.w);
        let x_1530 : vec2<f32> = u_xlat57;
        let x_1532 : vec2<f32> = (-(x_1530) + vec2<f32>(1.0f, 1.0f));
        let x_1533 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1532.x, x_1532.y, x_1533.z, x_1533.w);
        let x_1535 : vec2<f32> = u_xlat57;
        u_xlat59 = min(x_1535, vec2<f32>(0.0f, 0.0f));
        let x_1537 : vec2<f32> = u_xlat59;
        let x_1539 : vec2<f32> = u_xlat59;
        let x_1541 : vec4<f32> = u_xlat9;
        let x_1543 : vec2<f32> = ((-(x_1537) * x_1539) + vec2<f32>(x_1541.x, x_1541.y));
        let x_1544 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1543.x, x_1543.y, x_1544.z, x_1544.w);
        let x_1546 : vec2<f32> = u_xlat57;
        u_xlat59 = max(x_1546, vec2<f32>(0.0f, 0.0f));
        let x_1549 : vec2<f32> = u_xlat59;
        let x_1551 : vec2<f32> = u_xlat59;
        let x_1553 : vec4<f32> = u_xlat8;
        let x_1555 : vec2<f32> = ((-(x_1549) * x_1551) + vec2<f32>(x_1553.y, x_1553.w));
        let x_1556 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_1555.x, x_1556.y, x_1555.y);
        let x_1558 : vec4<f32> = u_xlat9;
        let x_1561 : vec2<f32> = (vec2<f32>(x_1558.x, x_1558.y) + vec2<f32>(2.0f, 2.0f));
        let x_1562 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1561.x, x_1561.y, x_1562.z, x_1562.w);
        let x_1564 : vec3<f32> = u_xlat33;
        let x_1566 : vec2<f32> = (vec2<f32>(x_1564.x, x_1564.z) + vec2<f32>(2.0f, 2.0f));
        let x_1567 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1567.x, x_1566.x, x_1567.z, x_1566.y);
        let x_1570 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1570 * 0.08163200318813323975f);
        let x_1574 : vec4<f32> = u_xlat8;
        let x_1577 : vec3<f32> = (vec3<f32>(x_1574.z, x_1574.x, x_1574.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1578 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1577.x, x_1577.y, x_1577.z, x_1578.w);
        let x_1580 : vec4<f32> = u_xlat9;
        let x_1583 : vec2<f32> = (vec2<f32>(x_1580.x, x_1580.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1584 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1583.x, x_1583.y, x_1584.z, x_1584.w);
        let x_1587 : f32 = u_xlat12.y;
        u_xlat11.x = x_1587;
        let x_1589 : vec2<f32> = u_xlat57;
        let x_1596 : vec2<f32> = ((vec2<f32>(x_1589.x, x_1589.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1597 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1597.x, x_1596.x, x_1597.z, x_1596.y);
        let x_1599 : vec2<f32> = u_xlat57;
        let x_1603 : vec2<f32> = ((vec2<f32>(x_1599.x, x_1599.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1604 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1603.x, x_1604.y, x_1603.y, x_1604.w);
        let x_1607 : f32 = u_xlat8.x;
        u_xlat9.y = x_1607;
        let x_1610 : f32 = u_xlat10.y;
        u_xlat9.w = x_1610;
        let x_1612 : vec4<f32> = u_xlat9;
        let x_1613 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1612 + x_1613);
        let x_1615 : vec2<f32> = u_xlat57;
        let x_1618 : vec2<f32> = ((vec2<f32>(x_1615.y, x_1615.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1619 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1619.x, x_1618.x, x_1619.z, x_1618.y);
        let x_1621 : vec2<f32> = u_xlat57;
        let x_1624 : vec2<f32> = ((vec2<f32>(x_1621.y, x_1621.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1625 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1624.x, x_1625.y, x_1624.y, x_1625.w);
        let x_1628 : f32 = u_xlat8.y;
        u_xlat10.y = x_1628;
        let x_1630 : vec4<f32> = u_xlat10;
        let x_1631 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1630 + x_1631);
        let x_1633 : vec4<f32> = u_xlat9;
        let x_1634 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1633 / x_1634);
        let x_1636 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1636 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1642 : vec4<f32> = u_xlat10;
        let x_1643 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1642 / x_1643);
        let x_1645 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1645 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1647 : vec4<f32> = u_xlat9;
        let x_1650 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1647.w, x_1647.x, x_1647.y, x_1647.z) * vec4<f32>(x_1650.x, x_1650.x, x_1650.x, x_1650.x));
        let x_1653 : vec4<f32> = u_xlat10;
        let x_1656 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1653.x, x_1653.w, x_1653.y, x_1653.z) * vec4<f32>(x_1656.y, x_1656.y, x_1656.y, x_1656.y));
        let x_1659 : vec4<f32> = u_xlat9;
        let x_1660 : vec3<f32> = vec3<f32>(x_1659.y, x_1659.z, x_1659.w);
        let x_1661 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1660.x, x_1661.y, x_1660.y, x_1660.z);
        let x_1664 : f32 = u_xlat10.x;
        u_xlat12.y = x_1664;
        let x_1666 : vec4<f32> = u_xlat7;
        let x_1669 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1672 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1666.x, x_1666.y, x_1666.x, x_1666.y) * vec4<f32>(x_1669.x, x_1669.y, x_1669.x, x_1669.y)) + vec4<f32>(x_1672.x, x_1672.y, x_1672.z, x_1672.y));
        let x_1675 : vec4<f32> = u_xlat7;
        let x_1678 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1681 : vec4<f32> = u_xlat12;
        u_xlat57 = ((vec2<f32>(x_1675.x, x_1675.y) * vec2<f32>(x_1678.x, x_1678.y)) + vec2<f32>(x_1681.w, x_1681.y));
        let x_1685 : f32 = u_xlat12.y;
        u_xlat9.y = x_1685;
        let x_1688 : f32 = u_xlat10.z;
        u_xlat12.y = x_1688;
        let x_1690 : vec4<f32> = u_xlat7;
        let x_1693 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1696 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1690.x, x_1690.y, x_1690.x, x_1690.y) * vec4<f32>(x_1693.x, x_1693.y, x_1693.x, x_1693.y)) + vec4<f32>(x_1696.x, x_1696.y, x_1696.z, x_1696.y));
        let x_1699 : vec4<f32> = u_xlat7;
        let x_1702 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1705 : vec4<f32> = u_xlat12;
        let x_1707 : vec2<f32> = ((vec2<f32>(x_1699.x, x_1699.y) * vec2<f32>(x_1702.x, x_1702.y)) + vec2<f32>(x_1705.w, x_1705.y));
        let x_1708 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1707.x, x_1707.y, x_1708.z, x_1708.w);
        let x_1711 : f32 = u_xlat12.y;
        u_xlat9.z = x_1711;
        let x_1714 : vec4<f32> = u_xlat7;
        let x_1717 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1720 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1714.x, x_1714.y, x_1714.x, x_1714.y) * vec4<f32>(x_1717.x, x_1717.y, x_1717.x, x_1717.y)) + vec4<f32>(x_1720.x, x_1720.y, x_1720.x, x_1720.z));
        let x_1724 : f32 = u_xlat10.w;
        u_xlat12.y = x_1724;
        let x_1727 : vec4<f32> = u_xlat7;
        let x_1730 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1733 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1727.x, x_1727.y, x_1727.x, x_1727.y) * vec4<f32>(x_1730.x, x_1730.y, x_1730.x, x_1730.y)) + vec4<f32>(x_1733.x, x_1733.y, x_1733.z, x_1733.y));
        let x_1737 : vec4<f32> = u_xlat7;
        let x_1740 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1743 : vec4<f32> = u_xlat12;
        u_xlat34 = ((vec2<f32>(x_1737.x, x_1737.y) * vec2<f32>(x_1740.x, x_1740.y)) + vec2<f32>(x_1743.w, x_1743.y));
        let x_1747 : f32 = u_xlat12.y;
        u_xlat9.w = x_1747;
        let x_1750 : vec4<f32> = u_xlat7;
        let x_1753 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1756 : vec4<f32> = u_xlat9;
        u_xlat65 = ((vec2<f32>(x_1750.x, x_1750.y) * vec2<f32>(x_1753.x, x_1753.y)) + vec2<f32>(x_1756.x, x_1756.w));
        let x_1759 : vec4<f32> = u_xlat12;
        let x_1760 : vec3<f32> = vec3<f32>(x_1759.x, x_1759.z, x_1759.w);
        let x_1761 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1760.x, x_1761.y, x_1760.y, x_1760.z);
        let x_1763 : vec4<f32> = u_xlat7;
        let x_1766 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1769 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1763.x, x_1763.y, x_1763.x, x_1763.y) * vec4<f32>(x_1766.x, x_1766.y, x_1766.x, x_1766.y)) + vec4<f32>(x_1769.x, x_1769.y, x_1769.z, x_1769.y));
        let x_1773 : vec4<f32> = u_xlat7;
        let x_1776 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1779 : vec4<f32> = u_xlat10;
        u_xlat60 = ((vec2<f32>(x_1773.x, x_1773.y) * vec2<f32>(x_1776.x, x_1776.y)) + vec2<f32>(x_1779.w, x_1779.y));
        let x_1783 : f32 = u_xlat9.x;
        u_xlat10.x = x_1783;
        let x_1785 : vec4<f32> = u_xlat7;
        let x_1788 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1791 : vec4<f32> = u_xlat10;
        let x_1793 : vec2<f32> = ((vec2<f32>(x_1785.x, x_1785.y) * vec2<f32>(x_1788.x, x_1788.y)) + vec2<f32>(x_1791.x, x_1791.y));
        let x_1794 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1793.x, x_1793.y, x_1794.z, x_1794.w);
        let x_1797 : vec4<f32> = u_xlat8;
        let x_1799 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1797.x, x_1797.x, x_1797.x, x_1797.x) * x_1799);
        let x_1802 : vec4<f32> = u_xlat8;
        let x_1804 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1802.y, x_1802.y, x_1802.y, x_1802.y) * x_1804);
        let x_1807 : vec4<f32> = u_xlat8;
        let x_1809 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1807.z, x_1807.z, x_1807.z, x_1807.z) * x_1809);
        let x_1811 : vec4<f32> = u_xlat8;
        let x_1813 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1811.w, x_1811.w, x_1811.w, x_1811.w) * x_1813);
        let x_1816 : vec4<f32> = u_xlat13;
        let x_1817 : vec2<f32> = vec2<f32>(x_1816.x, x_1816.y);
        let x_1819 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1817.x, x_1817.y, x_1819);
        let x_1826 : vec3<f32> = txVec13;
        let x_1828 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1826.xy, x_1826.z);
        u_xlat80 = x_1828;
        let x_1830 : vec4<f32> = u_xlat13;
        let x_1831 : vec2<f32> = vec2<f32>(x_1830.z, x_1830.w);
        let x_1833 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1831.x, x_1831.y, x_1833);
        let x_1840 : vec3<f32> = txVec14;
        let x_1842 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1840.xy, x_1840.z);
        u_xlat81 = x_1842;
        let x_1843 : f32 = u_xlat81;
        let x_1845 : f32 = u_xlat18.y;
        u_xlat81 = (x_1843 * x_1845);
        let x_1848 : f32 = u_xlat18.x;
        let x_1849 : f32 = u_xlat80;
        let x_1851 : f32 = u_xlat81;
        u_xlat80 = ((x_1848 * x_1849) + x_1851);
        let x_1854 : vec2<f32> = u_xlat57;
        let x_1856 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1854.x, x_1854.y, x_1856);
        let x_1863 : vec3<f32> = txVec15;
        let x_1865 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1863.xy, x_1863.z);
        u_xlat81 = x_1865;
        let x_1867 : f32 = u_xlat18.z;
        let x_1868 : f32 = u_xlat81;
        let x_1870 : f32 = u_xlat80;
        u_xlat80 = ((x_1867 * x_1868) + x_1870);
        let x_1873 : vec4<f32> = u_xlat16;
        let x_1874 : vec2<f32> = vec2<f32>(x_1873.x, x_1873.y);
        let x_1876 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1874.x, x_1874.y, x_1876);
        let x_1883 : vec3<f32> = txVec16;
        let x_1885 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1883.xy, x_1883.z);
        u_xlat81 = x_1885;
        let x_1887 : f32 = u_xlat18.w;
        let x_1888 : f32 = u_xlat81;
        let x_1890 : f32 = u_xlat80;
        u_xlat80 = ((x_1887 * x_1888) + x_1890);
        let x_1893 : vec4<f32> = u_xlat14;
        let x_1894 : vec2<f32> = vec2<f32>(x_1893.x, x_1893.y);
        let x_1896 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1894.x, x_1894.y, x_1896);
        let x_1903 : vec3<f32> = txVec17;
        let x_1905 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1903.xy, x_1903.z);
        u_xlat81 = x_1905;
        let x_1907 : f32 = u_xlat19.x;
        let x_1908 : f32 = u_xlat81;
        let x_1910 : f32 = u_xlat80;
        u_xlat80 = ((x_1907 * x_1908) + x_1910);
        let x_1913 : vec4<f32> = u_xlat14;
        let x_1914 : vec2<f32> = vec2<f32>(x_1913.z, x_1913.w);
        let x_1916 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1914.x, x_1914.y, x_1916);
        let x_1923 : vec3<f32> = txVec18;
        let x_1925 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1923.xy, x_1923.z);
        u_xlat81 = x_1925;
        let x_1927 : f32 = u_xlat19.y;
        let x_1928 : f32 = u_xlat81;
        let x_1930 : f32 = u_xlat80;
        u_xlat80 = ((x_1927 * x_1928) + x_1930);
        let x_1933 : vec4<f32> = u_xlat15;
        let x_1934 : vec2<f32> = vec2<f32>(x_1933.x, x_1933.y);
        let x_1936 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1934.x, x_1934.y, x_1936);
        let x_1943 : vec3<f32> = txVec19;
        let x_1945 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1943.xy, x_1943.z);
        u_xlat81 = x_1945;
        let x_1947 : f32 = u_xlat19.z;
        let x_1948 : f32 = u_xlat81;
        let x_1950 : f32 = u_xlat80;
        u_xlat80 = ((x_1947 * x_1948) + x_1950);
        let x_1953 : vec4<f32> = u_xlat16;
        let x_1954 : vec2<f32> = vec2<f32>(x_1953.z, x_1953.w);
        let x_1956 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1954.x, x_1954.y, x_1956);
        let x_1963 : vec3<f32> = txVec20;
        let x_1965 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1963.xy, x_1963.z);
        u_xlat81 = x_1965;
        let x_1967 : f32 = u_xlat19.w;
        let x_1968 : f32 = u_xlat81;
        let x_1970 : f32 = u_xlat80;
        u_xlat80 = ((x_1967 * x_1968) + x_1970);
        let x_1973 : vec4<f32> = u_xlat17;
        let x_1974 : vec2<f32> = vec2<f32>(x_1973.x, x_1973.y);
        let x_1976 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1974.x, x_1974.y, x_1976);
        let x_1983 : vec3<f32> = txVec21;
        let x_1985 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1983.xy, x_1983.z);
        u_xlat81 = x_1985;
        let x_1987 : f32 = u_xlat20.x;
        let x_1988 : f32 = u_xlat81;
        let x_1990 : f32 = u_xlat80;
        u_xlat80 = ((x_1987 * x_1988) + x_1990);
        let x_1993 : vec4<f32> = u_xlat17;
        let x_1994 : vec2<f32> = vec2<f32>(x_1993.z, x_1993.w);
        let x_1996 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1994.x, x_1994.y, x_1996);
        let x_2003 : vec3<f32> = txVec22;
        let x_2005 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2003.xy, x_2003.z);
        u_xlat81 = x_2005;
        let x_2007 : f32 = u_xlat20.y;
        let x_2008 : f32 = u_xlat81;
        let x_2010 : f32 = u_xlat80;
        u_xlat80 = ((x_2007 * x_2008) + x_2010);
        let x_2013 : vec2<f32> = u_xlat34;
        let x_2015 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_2013.x, x_2013.y, x_2015);
        let x_2022 : vec3<f32> = txVec23;
        let x_2024 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2022.xy, x_2022.z);
        u_xlat81 = x_2024;
        let x_2026 : f32 = u_xlat20.z;
        let x_2027 : f32 = u_xlat81;
        let x_2029 : f32 = u_xlat80;
        u_xlat80 = ((x_2026 * x_2027) + x_2029);
        let x_2032 : vec2<f32> = u_xlat65;
        let x_2034 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_2032.x, x_2032.y, x_2034);
        let x_2041 : vec3<f32> = txVec24;
        let x_2043 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2041.xy, x_2041.z);
        u_xlat81 = x_2043;
        let x_2045 : f32 = u_xlat20.w;
        let x_2046 : f32 = u_xlat81;
        let x_2048 : f32 = u_xlat80;
        u_xlat80 = ((x_2045 * x_2046) + x_2048);
        let x_2051 : vec4<f32> = u_xlat12;
        let x_2052 : vec2<f32> = vec2<f32>(x_2051.x, x_2051.y);
        let x_2054 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_2052.x, x_2052.y, x_2054);
        let x_2061 : vec3<f32> = txVec25;
        let x_2063 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2061.xy, x_2061.z);
        u_xlat81 = x_2063;
        let x_2065 : f32 = u_xlat8.x;
        let x_2066 : f32 = u_xlat81;
        let x_2068 : f32 = u_xlat80;
        u_xlat80 = ((x_2065 * x_2066) + x_2068);
        let x_2071 : vec4<f32> = u_xlat12;
        let x_2072 : vec2<f32> = vec2<f32>(x_2071.z, x_2071.w);
        let x_2074 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_2072.x, x_2072.y, x_2074);
        let x_2081 : vec3<f32> = txVec26;
        let x_2083 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2081.xy, x_2081.z);
        u_xlat81 = x_2083;
        let x_2085 : f32 = u_xlat8.y;
        let x_2086 : f32 = u_xlat81;
        let x_2088 : f32 = u_xlat80;
        u_xlat80 = ((x_2085 * x_2086) + x_2088);
        let x_2091 : vec2<f32> = u_xlat60;
        let x_2093 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_2091.x, x_2091.y, x_2093);
        let x_2100 : vec3<f32> = txVec27;
        let x_2102 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2100.xy, x_2100.z);
        u_xlat81 = x_2102;
        let x_2104 : f32 = u_xlat8.z;
        let x_2105 : f32 = u_xlat81;
        let x_2107 : f32 = u_xlat80;
        u_xlat80 = ((x_2104 * x_2105) + x_2107);
        let x_2110 : vec4<f32> = u_xlat7;
        let x_2111 : vec2<f32> = vec2<f32>(x_2110.x, x_2110.y);
        let x_2113 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_2111.x, x_2111.y, x_2113);
        let x_2120 : vec3<f32> = txVec28;
        let x_2122 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2120.xy, x_2120.z);
        u_xlat81 = x_2122;
        let x_2124 : f32 = u_xlat8.w;
        let x_2125 : f32 = u_xlat81;
        let x_2127 : f32 = u_xlat80;
        u_xlat79 = ((x_2124 * x_2125) + x_2127);
      }
    }
  } else {
    let x_2131 : vec4<f32> = u_xlat3;
    let x_2132 : vec2<f32> = vec2<f32>(x_2131.x, x_2131.y);
    let x_2134 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_2132.x, x_2132.y, x_2134);
    let x_2141 : vec3<f32> = txVec29;
    let x_2143 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2141.xy, x_2141.z);
    u_xlat79 = x_2143;
  }
  let x_2145 : f32 = x_629.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_2145) + 1.0f);
  let x_2149 : f32 = u_xlat79;
  let x_2151 : f32 = x_629.x_MainLightShadowParams.x;
  let x_2154 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2149 * x_2151) + x_2154);
  let x_2159 : f32 = u_xlat3.z;
  u_xlatb28 = (0.0f >= x_2159);
  let x_2163 : f32 = u_xlat3.z;
  u_xlatb53 = (x_2163 >= 1.0f);
  let x_2165 : bool = u_xlatb53;
  let x_2166 : bool = u_xlatb28;
  u_xlatb28 = (x_2165 | x_2166);
  let x_2168 : bool = u_xlatb28;
  if (x_2168) {
    x_2169 = 1.0f;
  } else {
    let x_2174 : f32 = u_xlat3.x;
    x_2169 = x_2174;
  }
  let x_2175 : f32 = x_2169;
  u_xlat3.x = x_2175;
  let x_2177 : vec3<f32> = vs_TEXCOORD7;
  let x_2179 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_2181 : vec3<f32> = (x_2177 + -(x_2179));
  let x_2182 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2181.x, x_2181.y, x_2181.z, x_2182.w);
  let x_2185 : vec4<f32> = u_xlat7;
  let x_2187 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_2185.x, x_2185.y, x_2185.z), vec3<f32>(x_2187.x, x_2187.y, x_2187.z));
  let x_2191 : f32 = u_xlat28;
  let x_2193 : f32 = x_629.x_MainLightShadowParams.z;
  let x_2196 : f32 = x_629.x_MainLightShadowParams.w;
  u_xlat53 = ((x_2191 * x_2193) + x_2196);
  let x_2198 : f32 = u_xlat53;
  u_xlat53 = clamp(x_2198, 0.0f, 1.0f);
  let x_2201 : f32 = u_xlat3.x;
  u_xlat79 = (-(x_2201) + 1.0f);
  let x_2204 : f32 = u_xlat53;
  let x_2205 : f32 = u_xlat79;
  let x_2208 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2204 * x_2205) + x_2208);
  let x_2211 : vec3<f32> = u_xlat2;
  let x_2213 : vec4<f32> = u_xlat1;
  u_xlat53 = dot(-(x_2211), vec3<f32>(x_2213.x, x_2213.y, x_2213.z));
  let x_2216 : f32 = u_xlat53;
  let x_2217 : f32 = u_xlat53;
  u_xlat53 = (x_2216 + x_2217);
  let x_2219 : vec4<f32> = u_xlat1;
  let x_2221 : f32 = u_xlat53;
  let x_2225 : vec3<f32> = u_xlat2;
  let x_2227 : vec3<f32> = ((vec3<f32>(x_2219.x, x_2219.y, x_2219.z) * -(vec3<f32>(x_2221, x_2221, x_2221))) + -(x_2225));
  let x_2228 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2227.x, x_2227.y, x_2227.z, x_2228.w);
  let x_2230 : vec4<f32> = u_xlat1;
  let x_2232 : vec3<f32> = u_xlat2;
  u_xlat53 = dot(vec3<f32>(x_2230.x, x_2230.y, x_2230.z), x_2232);
  let x_2234 : f32 = u_xlat53;
  u_xlat53 = clamp(x_2234, 0.0f, 1.0f);
  let x_2236 : f32 = u_xlat53;
  u_xlat53 = (-(x_2236) + 1.0f);
  let x_2239 : f32 = u_xlat53;
  let x_2240 : f32 = u_xlat53;
  u_xlat53 = (x_2239 * x_2240);
  let x_2242 : f32 = u_xlat53;
  let x_2243 : f32 = u_xlat53;
  u_xlat53 = (x_2242 * x_2243);
  let x_2246 : f32 = u_xlat0.x;
  u_xlat79 = ((-(x_2246) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2253 : f32 = u_xlat0.x;
  let x_2254 : f32 = u_xlat79;
  u_xlat0.x = (x_2253 * x_2254);
  let x_2258 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2258 * 6.0f);
  let x_2270 : vec4<f32> = u_xlat7;
  let x_2273 : f32 = u_xlat0.x;
  let x_2274 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2270.x, x_2270.y, x_2270.z), x_2273);
  u_xlat7 = x_2274;
  let x_2276 : f32 = u_xlat7.w;
  u_xlat0.x = (x_2276 + -1.0f);
  let x_2284 : f32 = x_2282.unity_SpecCube0_HDR.w;
  let x_2286 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2284 * x_2286) + 1.0f);
  let x_2291 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2291, 0.0f);
  let x_2295 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2295);
  let x_2299 : f32 = u_xlat0.x;
  let x_2301 : f32 = x_2282.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2299 * x_2301);
  let x_2305 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2305);
  let x_2309 : f32 = u_xlat0.x;
  let x_2311 : f32 = x_2282.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2309 * x_2311);
  let x_2314 : vec4<f32> = u_xlat7;
  let x_2316 : vec3<f32> = u_xlat0;
  let x_2318 : vec3<f32> = (vec3<f32>(x_2314.x, x_2314.y, x_2314.z) * vec3<f32>(x_2316.x, x_2316.x, x_2316.x));
  let x_2319 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2318.x, x_2318.y, x_2318.z, x_2319.w);
  let x_2321 : f32 = u_xlat50;
  let x_2323 : f32 = u_xlat50;
  let x_2327 : vec2<f32> = ((vec2<f32>(x_2321, x_2321) * vec2<f32>(x_2323, x_2323)) + vec2<f32>(-1.0f, 1.0f));
  let x_2328 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2327.x, x_2328.y, x_2327.y);
  let x_2331 : f32 = u_xlat0.z;
  u_xlat50 = (1.0f / x_2331);
  let x_2333 : vec4<f32> = u_xlat5;
  let x_2336 : f32 = u_xlat77;
  let x_2338 : vec3<f32> = (-(vec3<f32>(x_2333.x, x_2333.y, x_2333.z)) + vec3<f32>(x_2336, x_2336, x_2336));
  let x_2339 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2338.x, x_2338.y, x_2338.z, x_2339.w);
  let x_2341 : f32 = u_xlat53;
  let x_2343 : vec4<f32> = u_xlat8;
  let x_2346 : vec4<f32> = u_xlat5;
  let x_2348 : vec3<f32> = ((vec3<f32>(x_2341, x_2341, x_2341) * vec3<f32>(x_2343.x, x_2343.y, x_2343.z)) + vec3<f32>(x_2346.x, x_2346.y, x_2346.z));
  let x_2349 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2348.x, x_2348.y, x_2348.z, x_2349.w);
  let x_2351 : f32 = u_xlat50;
  let x_2353 : vec4<f32> = u_xlat8;
  let x_2355 : vec3<f32> = (vec3<f32>(x_2351, x_2351, x_2351) * vec3<f32>(x_2353.x, x_2353.y, x_2353.z));
  let x_2356 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2355.x, x_2355.y, x_2355.z, x_2356.w);
  let x_2358 : vec4<f32> = u_xlat7;
  let x_2360 : vec4<f32> = u_xlat8;
  let x_2362 : vec3<f32> = (vec3<f32>(x_2358.x, x_2358.y, x_2358.z) * vec3<f32>(x_2360.x, x_2360.y, x_2360.z));
  let x_2363 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2362.x, x_2362.y, x_2362.z, x_2363.w);
  let x_2365 : vec4<f32> = u_xlat4;
  let x_2367 : vec4<f32> = u_xlat6;
  let x_2370 : vec4<f32> = u_xlat7;
  let x_2372 : vec3<f32> = ((vec3<f32>(x_2365.x, x_2365.y, x_2365.z) * vec3<f32>(x_2367.x, x_2367.y, x_2367.z)) + vec3<f32>(x_2370.x, x_2370.y, x_2370.z));
  let x_2373 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2372.x, x_2372.y, x_2372.z, x_2373.w);
  let x_2376 : f32 = u_xlat3.x;
  let x_2378 : f32 = x_2282.unity_LightData.z;
  u_xlat50 = (x_2376 * x_2378);
  let x_2380 : vec4<f32> = u_xlat1;
  let x_2383 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat77 = dot(vec3<f32>(x_2380.x, x_2380.y, x_2380.z), vec3<f32>(x_2383.x, x_2383.y, x_2383.z));
  let x_2386 : f32 = u_xlat77;
  u_xlat77 = clamp(x_2386, 0.0f, 1.0f);
  let x_2388 : f32 = u_xlat50;
  let x_2389 : f32 = u_xlat77;
  u_xlat50 = (x_2388 * x_2389);
  let x_2391 : f32 = u_xlat50;
  let x_2394 : vec4<f32> = x_29.x_MainLightColor;
  let x_2396 : vec3<f32> = (vec3<f32>(x_2391, x_2391, x_2391) * vec3<f32>(x_2394.x, x_2394.y, x_2394.z));
  let x_2397 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2396.x, x_2396.y, x_2396.z, x_2397.w);
  let x_2399 : vec3<f32> = u_xlat2;
  let x_2401 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2403 : vec3<f32> = (x_2399 + vec3<f32>(x_2401.x, x_2401.y, x_2401.z));
  let x_2404 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2403.x, x_2403.y, x_2403.z, x_2404.w);
  let x_2406 : vec4<f32> = u_xlat8;
  let x_2408 : vec4<f32> = u_xlat8;
  u_xlat50 = dot(vec3<f32>(x_2406.x, x_2406.y, x_2406.z), vec3<f32>(x_2408.x, x_2408.y, x_2408.z));
  let x_2411 : f32 = u_xlat50;
  u_xlat50 = max(x_2411, 1.17549435e-38f);
  let x_2414 : f32 = u_xlat50;
  u_xlat50 = inverseSqrt(x_2414);
  let x_2416 : f32 = u_xlat50;
  let x_2418 : vec4<f32> = u_xlat8;
  let x_2420 : vec3<f32> = (vec3<f32>(x_2416, x_2416, x_2416) * vec3<f32>(x_2418.x, x_2418.y, x_2418.z));
  let x_2421 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2420.x, x_2420.y, x_2420.z, x_2421.w);
  let x_2423 : vec4<f32> = u_xlat1;
  let x_2425 : vec4<f32> = u_xlat8;
  u_xlat50 = dot(vec3<f32>(x_2423.x, x_2423.y, x_2423.z), vec3<f32>(x_2425.x, x_2425.y, x_2425.z));
  let x_2428 : f32 = u_xlat50;
  u_xlat50 = clamp(x_2428, 0.0f, 1.0f);
  let x_2431 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2433 : vec4<f32> = u_xlat8;
  u_xlat77 = dot(vec3<f32>(x_2431.x, x_2431.y, x_2431.z), vec3<f32>(x_2433.x, x_2433.y, x_2433.z));
  let x_2436 : f32 = u_xlat77;
  u_xlat77 = clamp(x_2436, 0.0f, 1.0f);
  let x_2438 : f32 = u_xlat50;
  let x_2439 : f32 = u_xlat50;
  u_xlat50 = (x_2438 * x_2439);
  let x_2441 : f32 = u_xlat50;
  let x_2443 : f32 = u_xlat0.x;
  u_xlat50 = ((x_2441 * x_2443) + 1.00001001358032226562f);
  let x_2447 : f32 = u_xlat77;
  let x_2448 : f32 = u_xlat77;
  u_xlat77 = (x_2447 * x_2448);
  let x_2450 : f32 = u_xlat50;
  let x_2451 : f32 = u_xlat50;
  u_xlat50 = (x_2450 * x_2451);
  let x_2453 : f32 = u_xlat77;
  u_xlat77 = max(x_2453, 0.10000000149011611938f);
  let x_2456 : f32 = u_xlat50;
  let x_2457 : f32 = u_xlat77;
  u_xlat50 = (x_2456 * x_2457);
  let x_2459 : f32 = u_xlat78;
  let x_2460 : f32 = u_xlat50;
  u_xlat50 = (x_2459 * x_2460);
  let x_2462 : f32 = u_xlat76;
  let x_2463 : f32 = u_xlat50;
  u_xlat50 = (x_2462 / x_2463);
  let x_2465 : vec4<f32> = u_xlat5;
  let x_2467 : f32 = u_xlat50;
  let x_2470 : vec4<f32> = u_xlat6;
  let x_2472 : vec3<f32> = ((vec3<f32>(x_2465.x, x_2465.y, x_2465.z) * vec3<f32>(x_2467, x_2467, x_2467)) + vec3<f32>(x_2470.x, x_2470.y, x_2470.z));
  let x_2473 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2472.x, x_2472.y, x_2472.z, x_2473.w);
  let x_2475 : vec4<f32> = u_xlat7;
  let x_2477 : vec4<f32> = u_xlat8;
  let x_2479 : vec3<f32> = (vec3<f32>(x_2475.x, x_2475.y, x_2475.z) * vec3<f32>(x_2477.x, x_2477.y, x_2477.z));
  let x_2480 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2479.x, x_2479.y, x_2479.z, x_2480.w);
  let x_2483 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_2485 : f32 = x_2282.unity_LightData.y;
  u_xlat50 = min(x_2483, x_2485);
  let x_2488 : f32 = u_xlat50;
  u_xlatu50 = bitcast<u32>(i32(x_2488));
  let x_2491 : f32 = u_xlat28;
  let x_2493 : f32 = x_629.x_AdditionalShadowFadeParams.x;
  let x_2496 : f32 = x_629.x_AdditionalShadowFadeParams.y;
  u_xlat77 = ((x_2491 * x_2493) + x_2496);
  let x_2498 : f32 = u_xlat77;
  u_xlat77 = clamp(x_2498, 0.0f, 1.0f);
  u_xlat3.x = 0.0f;
  u_xlat3.y = 0.0f;
  u_xlat3.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2510 : u32 = u_xlatu_loop_1;
    let x_2511 : u32 = u_xlatu50;
    if ((x_2510 < x_2511)) {
    } else {
      break;
    }
    let x_2514 : u32 = u_xlatu_loop_1;
    u_xlatu80 = (x_2514 >> 2u);
    let x_2517 : u32 = u_xlatu_loop_1;
    u_xlati81 = bitcast<i32>((x_2517 & 3u));
    let x_2520 : u32 = u_xlatu80;
    let x_2523 : vec4<f32> = x_2282.unity_LightIndices[bitcast<i32>(x_2520)];
    let x_2533 : i32 = u_xlati81;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2538 : vec4<u32> = indexable[x_2533];
    u_xlat80 = dot(x_2523, bitcast<vec4<f32>>(x_2538));
    let x_2542 : f32 = u_xlat80;
    u_xlati80 = i32(x_2542);
    let x_2544 : vec3<f32> = vs_TEXCOORD7;
    let x_2555 : i32 = u_xlati80;
    let x_2557 : vec4<f32> = x_2554.x_AdditionalLightsPosition[x_2555];
    let x_2560 : i32 = u_xlati80;
    let x_2562 : vec4<f32> = x_2554.x_AdditionalLightsPosition[x_2560];
    let x_2564 : vec3<f32> = ((-(x_2544) * vec3<f32>(x_2557.w, x_2557.w, x_2557.w)) + vec3<f32>(x_2562.x, x_2562.y, x_2562.z));
    let x_2565 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2564.x, x_2564.y, x_2564.z, x_2565.w);
    let x_2567 : vec4<f32> = u_xlat8;
    let x_2569 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_2567.x, x_2567.y, x_2567.z), vec3<f32>(x_2569.x, x_2569.y, x_2569.z));
    let x_2572 : f32 = u_xlat81;
    u_xlat81 = max(x_2572, 0.00006103515625f);
    let x_2575 : f32 = u_xlat81;
    u_xlat82 = inverseSqrt(x_2575);
    let x_2577 : f32 = u_xlat82;
    let x_2579 : vec4<f32> = u_xlat8;
    let x_2581 : vec3<f32> = (vec3<f32>(x_2577, x_2577, x_2577) * vec3<f32>(x_2579.x, x_2579.y, x_2579.z));
    let x_2582 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2581.x, x_2581.y, x_2581.z, x_2582.w);
    let x_2585 : f32 = u_xlat81;
    u_xlat83 = (1.0f / x_2585);
    let x_2587 : f32 = u_xlat81;
    let x_2588 : i32 = u_xlati80;
    let x_2590 : f32 = x_2554.x_AdditionalLightsAttenuation[x_2588].x;
    u_xlat81 = (x_2587 * x_2590);
    let x_2592 : f32 = u_xlat81;
    let x_2594 : f32 = u_xlat81;
    u_xlat81 = ((-(x_2592) * x_2594) + 1.0f);
    let x_2597 : f32 = u_xlat81;
    u_xlat81 = max(x_2597, 0.0f);
    let x_2599 : f32 = u_xlat81;
    let x_2600 : f32 = u_xlat81;
    u_xlat81 = (x_2599 * x_2600);
    let x_2602 : f32 = u_xlat81;
    let x_2603 : f32 = u_xlat83;
    u_xlat81 = (x_2602 * x_2603);
    let x_2605 : i32 = u_xlati80;
    let x_2607 : vec4<f32> = x_2554.x_AdditionalLightsSpotDir[x_2605];
    let x_2609 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_2607.x, x_2607.y, x_2607.z), vec3<f32>(x_2609.x, x_2609.y, x_2609.z));
    let x_2612 : f32 = u_xlat83;
    let x_2613 : i32 = u_xlati80;
    let x_2615 : f32 = x_2554.x_AdditionalLightsAttenuation[x_2613].z;
    let x_2617 : i32 = u_xlati80;
    let x_2619 : f32 = x_2554.x_AdditionalLightsAttenuation[x_2617].w;
    u_xlat83 = ((x_2612 * x_2615) + x_2619);
    let x_2621 : f32 = u_xlat83;
    u_xlat83 = clamp(x_2621, 0.0f, 1.0f);
    let x_2623 : f32 = u_xlat83;
    let x_2624 : f32 = u_xlat83;
    u_xlat83 = (x_2623 * x_2624);
    let x_2626 : f32 = u_xlat81;
    let x_2627 : f32 = u_xlat83;
    u_xlat81 = (x_2626 * x_2627);
    let x_2630 : i32 = u_xlati80;
    let x_2632 : f32 = x_629.x_AdditionalShadowParams[x_2630].w;
    u_xlati83 = i32(x_2632);
    let x_2635 : i32 = u_xlati83;
    u_xlatb84 = (x_2635 >= 0i);
    let x_2637 : bool = u_xlatb84;
    if (x_2637) {
      let x_2641 : i32 = u_xlati80;
      let x_2643 : f32 = x_629.x_AdditionalShadowParams[x_2641].z;
      u_xlatb84 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2643, x_2643, x_2643, x_2643))));
      let x_2647 : bool = u_xlatb84;
      if (x_2647) {
        let x_2651 : vec4<f32> = u_xlat9;
        let x_2654 : vec4<f32> = u_xlat9;
        let x_2657 : vec4<bool> = (abs(vec4<f32>(x_2651.z, x_2651.z, x_2651.y, x_2651.z)) >= abs(vec4<f32>(x_2654.x, x_2654.y, x_2654.x, x_2654.x)));
        let x_2659 : vec3<bool> = vec3<bool>(x_2657.x, x_2657.y, x_2657.z);
        let x_2660 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_2659.x, x_2659.y, x_2659.z, x_2660.w);
        let x_2663 : bool = u_xlatb10.y;
        let x_2665 : bool = u_xlatb10.x;
        u_xlatb84 = (x_2663 & x_2665);
        let x_2667 : vec4<f32> = u_xlat9;
        let x_2670 : vec4<bool> = (-(vec4<f32>(x_2667.z, x_2667.y, x_2667.z, x_2667.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2671 : vec3<bool> = vec3<bool>(x_2670.x, x_2670.y, x_2670.w);
        let x_2672 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_2671.x, x_2671.y, x_2672.z, x_2671.z);
        let x_2675 : bool = u_xlatb10.x;
        u_xlat10.x = select(4.0f, 5.0f, x_2675);
        let x_2680 : bool = u_xlatb10.y;
        u_xlat10.y = select(2.0f, 3.0f, x_2680);
        let x_2685 : bool = u_xlatb10.w;
        u_xlat85 = select(0.0f, 1.0f, x_2685);
        let x_2689 : bool = u_xlatb10.z;
        if (x_2689) {
          let x_2694 : f32 = u_xlat10.y;
          x_2690 = x_2694;
        } else {
          let x_2696 : f32 = u_xlat85;
          x_2690 = x_2696;
        }
        let x_2697 : f32 = x_2690;
        u_xlat35 = x_2697;
        let x_2699 : bool = u_xlatb84;
        if (x_2699) {
          let x_2704 : f32 = u_xlat10.x;
          x_2700 = x_2704;
        } else {
          let x_2706 : f32 = u_xlat35;
          x_2700 = x_2706;
        }
        let x_2707 : f32 = x_2700;
        u_xlat84 = x_2707;
        let x_2708 : i32 = u_xlati80;
        let x_2710 : f32 = x_629.x_AdditionalShadowParams[x_2708].w;
        u_xlat10.x = trunc(x_2710);
        let x_2713 : f32 = u_xlat84;
        let x_2715 : f32 = u_xlat10.x;
        u_xlat84 = (x_2713 + x_2715);
        let x_2717 : f32 = u_xlat84;
        u_xlati83 = i32(x_2717);
      }
      let x_2719 : i32 = u_xlati83;
      u_xlati83 = (x_2719 << bitcast<u32>(2i));
      let x_2721 : vec3<f32> = vs_TEXCOORD7;
      let x_2723 : i32 = u_xlati83;
      let x_2726 : i32 = u_xlati83;
      let x_2730 : vec4<f32> = x_629.x_AdditionalLightsWorldToShadow[((x_2723 + 1i) / 4i)][((x_2726 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_2721.y, x_2721.y, x_2721.y, x_2721.y) * x_2730);
      let x_2732 : i32 = u_xlati83;
      let x_2734 : i32 = u_xlati83;
      let x_2737 : vec4<f32> = x_629.x_AdditionalLightsWorldToShadow[(x_2732 / 4i)][(x_2734 % 4i)];
      let x_2738 : vec3<f32> = vs_TEXCOORD7;
      let x_2741 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2737 * vec4<f32>(x_2738.x, x_2738.x, x_2738.x, x_2738.x)) + x_2741);
      let x_2743 : i32 = u_xlati83;
      let x_2746 : i32 = u_xlati83;
      let x_2750 : vec4<f32> = x_629.x_AdditionalLightsWorldToShadow[((x_2743 + 2i) / 4i)][((x_2746 + 2i) % 4i)];
      let x_2751 : vec3<f32> = vs_TEXCOORD7;
      let x_2754 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2750 * vec4<f32>(x_2751.z, x_2751.z, x_2751.z, x_2751.z)) + x_2754);
      let x_2756 : vec4<f32> = u_xlat10;
      let x_2757 : i32 = u_xlati83;
      let x_2760 : i32 = u_xlati83;
      let x_2764 : vec4<f32> = x_629.x_AdditionalLightsWorldToShadow[((x_2757 + 3i) / 4i)][((x_2760 + 3i) % 4i)];
      u_xlat10 = (x_2756 + x_2764);
      let x_2766 : vec4<f32> = u_xlat10;
      let x_2768 : vec4<f32> = u_xlat10;
      let x_2770 : vec3<f32> = (vec3<f32>(x_2766.x, x_2766.y, x_2766.z) / vec3<f32>(x_2768.w, x_2768.w, x_2768.w));
      let x_2771 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2770.x, x_2770.y, x_2770.z, x_2771.w);
      let x_2774 : i32 = u_xlati80;
      let x_2776 : f32 = x_629.x_AdditionalShadowParams[x_2774].y;
      u_xlatb83 = (0.0f < x_2776);
      let x_2778 : bool = u_xlatb83;
      if (x_2778) {
        let x_2781 : i32 = u_xlati80;
        let x_2783 : f32 = x_629.x_AdditionalShadowParams[x_2781].y;
        u_xlatb83 = (1.0f == x_2783);
        let x_2785 : bool = u_xlatb83;
        if (x_2785) {
          let x_2788 : vec4<f32> = u_xlat10;
          let x_2791 : vec4<f32> = x_629.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2788.x, x_2788.y, x_2788.x, x_2788.y) + x_2791);
          let x_2794 : vec4<f32> = u_xlat11;
          let x_2795 : vec2<f32> = vec2<f32>(x_2794.x, x_2794.y);
          let x_2797 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2795.x, x_2795.y, x_2797);
          let x_2805 : vec3<f32> = txVec30;
          let x_2807 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2805.xy, x_2805.z);
          u_xlat12.x = x_2807;
          let x_2810 : vec4<f32> = u_xlat11;
          let x_2811 : vec2<f32> = vec2<f32>(x_2810.z, x_2810.w);
          let x_2813 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_2811.x, x_2811.y, x_2813);
          let x_2820 : vec3<f32> = txVec31;
          let x_2822 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2820.xy, x_2820.z);
          u_xlat12.y = x_2822;
          let x_2824 : vec4<f32> = u_xlat10;
          let x_2827 : vec4<f32> = x_629.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_2824.x, x_2824.y, x_2824.x, x_2824.y) + x_2827);
          let x_2830 : vec4<f32> = u_xlat11;
          let x_2831 : vec2<f32> = vec2<f32>(x_2830.x, x_2830.y);
          let x_2833 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_2831.x, x_2831.y, x_2833);
          let x_2840 : vec3<f32> = txVec32;
          let x_2842 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2840.xy, x_2840.z);
          u_xlat12.z = x_2842;
          let x_2845 : vec4<f32> = u_xlat11;
          let x_2846 : vec2<f32> = vec2<f32>(x_2845.z, x_2845.w);
          let x_2848 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_2846.x, x_2846.y, x_2848);
          let x_2855 : vec3<f32> = txVec33;
          let x_2857 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2855.xy, x_2855.z);
          u_xlat12.w = x_2857;
          let x_2859 : vec4<f32> = u_xlat12;
          u_xlat83 = dot(x_2859, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2862 : i32 = u_xlati80;
          let x_2864 : f32 = x_629.x_AdditionalShadowParams[x_2862].y;
          u_xlatb84 = (2.0f == x_2864);
          let x_2866 : bool = u_xlatb84;
          if (x_2866) {
            let x_2869 : vec4<f32> = u_xlat10;
            let x_2872 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_2875 : vec2<f32> = ((vec2<f32>(x_2869.x, x_2869.y) * vec2<f32>(x_2872.z, x_2872.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2876 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2875.x, x_2875.y, x_2876.z, x_2876.w);
            let x_2878 : vec4<f32> = u_xlat11;
            let x_2880 : vec2<f32> = floor(vec2<f32>(x_2878.x, x_2878.y));
            let x_2881 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2880.x, x_2880.y, x_2881.z, x_2881.w);
            let x_2884 : vec4<f32> = u_xlat10;
            let x_2887 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_2890 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2884.x, x_2884.y) * vec2<f32>(x_2887.z, x_2887.w)) + -(vec2<f32>(x_2890.x, x_2890.y)));
            let x_2894 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2894.x, x_2894.x, x_2894.y, x_2894.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2897 : vec4<f32> = u_xlat12;
            let x_2899 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2897.x, x_2897.x, x_2897.z, x_2897.z) * vec4<f32>(x_2899.x, x_2899.x, x_2899.z, x_2899.z));
            let x_2902 : vec4<f32> = u_xlat13;
            let x_2904 : vec2<f32> = (vec2<f32>(x_2902.y, x_2902.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2905 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2904.x, x_2905.y, x_2904.y, x_2905.w);
            let x_2907 : vec4<f32> = u_xlat13;
            let x_2910 : vec2<f32> = u_xlat61;
            let x_2912 : vec2<f32> = ((vec2<f32>(x_2907.x, x_2907.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2910));
            let x_2913 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2912.x, x_2912.y, x_2913.z, x_2913.w);
            let x_2916 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_2916) + vec2<f32>(1.0f, 1.0f));
            let x_2919 : vec2<f32> = u_xlat61;
            let x_2920 : vec2<f32> = min(x_2919, vec2<f32>(0.0f, 0.0f));
            let x_2921 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2920.x, x_2920.y, x_2921.z, x_2921.w);
            let x_2923 : vec4<f32> = u_xlat14;
            let x_2926 : vec4<f32> = u_xlat14;
            let x_2929 : vec2<f32> = u_xlat63;
            let x_2930 : vec2<f32> = ((-(vec2<f32>(x_2923.x, x_2923.y)) * vec2<f32>(x_2926.x, x_2926.y)) + x_2929);
            let x_2931 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2930.x, x_2930.y, x_2931.z, x_2931.w);
            let x_2933 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_2933, vec2<f32>(0.0f, 0.0f));
            let x_2935 : vec2<f32> = u_xlat61;
            let x_2937 : vec2<f32> = u_xlat61;
            let x_2939 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_2935) * x_2937) + vec2<f32>(x_2939.y, x_2939.w));
            let x_2942 : vec4<f32> = u_xlat14;
            let x_2944 : vec2<f32> = (vec2<f32>(x_2942.x, x_2942.y) + vec2<f32>(1.0f, 1.0f));
            let x_2945 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2944.x, x_2944.y, x_2945.z, x_2945.w);
            let x_2947 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_2947 + vec2<f32>(1.0f, 1.0f));
            let x_2949 : vec4<f32> = u_xlat13;
            let x_2951 : vec2<f32> = (vec2<f32>(x_2949.x, x_2949.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2952 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2951.x, x_2951.y, x_2952.z, x_2952.w);
            let x_2954 : vec2<f32> = u_xlat63;
            let x_2955 : vec2<f32> = (x_2954 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2956 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2955.x, x_2955.y, x_2956.z, x_2956.w);
            let x_2958 : vec4<f32> = u_xlat14;
            let x_2960 : vec2<f32> = (vec2<f32>(x_2958.x, x_2958.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2961 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2960.x, x_2960.y, x_2961.z, x_2961.w);
            let x_2963 : vec2<f32> = u_xlat61;
            let x_2964 : vec2<f32> = (x_2963 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2965 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2964.x, x_2964.y, x_2965.z, x_2965.w);
            let x_2967 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_2967.y, x_2967.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2971 : f32 = u_xlat14.x;
            u_xlat15.z = x_2971;
            let x_2974 : f32 = u_xlat61.x;
            u_xlat15.w = x_2974;
            let x_2977 : f32 = u_xlat16.x;
            u_xlat13.z = x_2977;
            let x_2980 : f32 = u_xlat12.x;
            u_xlat13.w = x_2980;
            let x_2982 : vec4<f32> = u_xlat13;
            let x_2984 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2982.z, x_2982.w, x_2982.x, x_2982.z) + vec4<f32>(x_2984.z, x_2984.w, x_2984.x, x_2984.z));
            let x_2988 : f32 = u_xlat15.y;
            u_xlat14.z = x_2988;
            let x_2991 : f32 = u_xlat61.y;
            u_xlat14.w = x_2991;
            let x_2994 : f32 = u_xlat13.y;
            u_xlat16.z = x_2994;
            let x_2997 : f32 = u_xlat12.z;
            u_xlat16.w = x_2997;
            let x_2999 : vec4<f32> = u_xlat14;
            let x_3001 : vec4<f32> = u_xlat16;
            let x_3003 : vec3<f32> = (vec3<f32>(x_2999.z, x_2999.y, x_2999.w) + vec3<f32>(x_3001.z, x_3001.y, x_3001.w));
            let x_3004 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3003.x, x_3003.y, x_3003.z, x_3004.w);
            let x_3006 : vec4<f32> = u_xlat13;
            let x_3008 : vec4<f32> = u_xlat17;
            let x_3010 : vec3<f32> = (vec3<f32>(x_3006.x, x_3006.z, x_3006.w) / vec3<f32>(x_3008.z, x_3008.w, x_3008.y));
            let x_3011 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3010.x, x_3010.y, x_3010.z, x_3011.w);
            let x_3013 : vec4<f32> = u_xlat13;
            let x_3015 : vec3<f32> = (vec3<f32>(x_3013.x, x_3013.y, x_3013.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3016 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3015.x, x_3015.y, x_3015.z, x_3016.w);
            let x_3018 : vec4<f32> = u_xlat16;
            let x_3020 : vec4<f32> = u_xlat12;
            let x_3022 : vec3<f32> = (vec3<f32>(x_3018.z, x_3018.y, x_3018.w) / vec3<f32>(x_3020.x, x_3020.y, x_3020.z));
            let x_3023 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3022.x, x_3022.y, x_3022.z, x_3023.w);
            let x_3025 : vec4<f32> = u_xlat14;
            let x_3027 : vec3<f32> = (vec3<f32>(x_3025.x, x_3025.y, x_3025.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3028 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3027.x, x_3027.y, x_3027.z, x_3028.w);
            let x_3030 : vec4<f32> = u_xlat13;
            let x_3033 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3035 : vec3<f32> = (vec3<f32>(x_3030.y, x_3030.x, x_3030.z) * vec3<f32>(x_3033.x, x_3033.x, x_3033.x));
            let x_3036 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3035.x, x_3035.y, x_3035.z, x_3036.w);
            let x_3038 : vec4<f32> = u_xlat14;
            let x_3041 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3043 : vec3<f32> = (vec3<f32>(x_3038.x, x_3038.y, x_3038.z) * vec3<f32>(x_3041.y, x_3041.y, x_3041.y));
            let x_3044 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3043.x, x_3043.y, x_3043.z, x_3044.w);
            let x_3047 : f32 = u_xlat14.x;
            u_xlat13.w = x_3047;
            let x_3049 : vec4<f32> = u_xlat11;
            let x_3052 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3055 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_3049.x, x_3049.y, x_3049.x, x_3049.y) * vec4<f32>(x_3052.x, x_3052.y, x_3052.x, x_3052.y)) + vec4<f32>(x_3055.y, x_3055.w, x_3055.x, x_3055.w));
            let x_3058 : vec4<f32> = u_xlat11;
            let x_3061 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3064 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_3058.x, x_3058.y) * vec2<f32>(x_3061.x, x_3061.y)) + vec2<f32>(x_3064.z, x_3064.w));
            let x_3068 : f32 = u_xlat13.y;
            u_xlat14.w = x_3068;
            let x_3070 : vec4<f32> = u_xlat14;
            let x_3071 : vec2<f32> = vec2<f32>(x_3070.y, x_3070.z);
            let x_3072 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3072.x, x_3071.x, x_3072.z, x_3071.y);
            let x_3074 : vec4<f32> = u_xlat11;
            let x_3077 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3080 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_3074.x, x_3074.y, x_3074.x, x_3074.y) * vec4<f32>(x_3077.x, x_3077.y, x_3077.x, x_3077.y)) + vec4<f32>(x_3080.x, x_3080.y, x_3080.z, x_3080.y));
            let x_3083 : vec4<f32> = u_xlat11;
            let x_3086 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3089 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3083.x, x_3083.y, x_3083.x, x_3083.y) * vec4<f32>(x_3086.x, x_3086.y, x_3086.x, x_3086.y)) + vec4<f32>(x_3089.w, x_3089.y, x_3089.w, x_3089.z));
            let x_3092 : vec4<f32> = u_xlat11;
            let x_3095 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3098 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_3092.x, x_3092.y, x_3092.x, x_3092.y) * vec4<f32>(x_3095.x, x_3095.y, x_3095.x, x_3095.y)) + vec4<f32>(x_3098.x, x_3098.w, x_3098.z, x_3098.w));
            let x_3101 : vec4<f32> = u_xlat12;
            let x_3103 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_3101.x, x_3101.x, x_3101.x, x_3101.y) * vec4<f32>(x_3103.z, x_3103.w, x_3103.y, x_3103.z));
            let x_3106 : vec4<f32> = u_xlat12;
            let x_3108 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_3106.y, x_3106.y, x_3106.z, x_3106.z) * x_3108);
            let x_3111 : f32 = u_xlat12.z;
            let x_3113 : f32 = u_xlat17.y;
            u_xlat84 = (x_3111 * x_3113);
            let x_3116 : vec4<f32> = u_xlat15;
            let x_3117 : vec2<f32> = vec2<f32>(x_3116.x, x_3116.y);
            let x_3119 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_3117.x, x_3117.y, x_3119);
            let x_3126 : vec3<f32> = txVec34;
            let x_3128 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3126.xy, x_3126.z);
            u_xlat85 = x_3128;
            let x_3130 : vec4<f32> = u_xlat15;
            let x_3131 : vec2<f32> = vec2<f32>(x_3130.z, x_3130.w);
            let x_3133 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_3131.x, x_3131.y, x_3133);
            let x_3140 : vec3<f32> = txVec35;
            let x_3142 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3140.xy, x_3140.z);
            u_xlat11.x = x_3142;
            let x_3145 : f32 = u_xlat11.x;
            let x_3147 : f32 = u_xlat18.y;
            u_xlat11.x = (x_3145 * x_3147);
            let x_3151 : f32 = u_xlat18.x;
            let x_3152 : f32 = u_xlat85;
            let x_3155 : f32 = u_xlat11.x;
            u_xlat85 = ((x_3151 * x_3152) + x_3155);
            let x_3158 : vec2<f32> = u_xlat61;
            let x_3160 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_3158.x, x_3158.y, x_3160);
            let x_3167 : vec3<f32> = txVec36;
            let x_3169 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3167.xy, x_3167.z);
            u_xlat11.x = x_3169;
            let x_3172 : f32 = u_xlat18.z;
            let x_3174 : f32 = u_xlat11.x;
            let x_3176 : f32 = u_xlat85;
            u_xlat85 = ((x_3172 * x_3174) + x_3176);
            let x_3179 : vec4<f32> = u_xlat14;
            let x_3180 : vec2<f32> = vec2<f32>(x_3179.x, x_3179.y);
            let x_3182 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_3180.x, x_3180.y, x_3182);
            let x_3189 : vec3<f32> = txVec37;
            let x_3191 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3189.xy, x_3189.z);
            u_xlat11.x = x_3191;
            let x_3194 : f32 = u_xlat18.w;
            let x_3196 : f32 = u_xlat11.x;
            let x_3198 : f32 = u_xlat85;
            u_xlat85 = ((x_3194 * x_3196) + x_3198);
            let x_3201 : vec4<f32> = u_xlat16;
            let x_3202 : vec2<f32> = vec2<f32>(x_3201.x, x_3201.y);
            let x_3204 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_3202.x, x_3202.y, x_3204);
            let x_3211 : vec3<f32> = txVec38;
            let x_3213 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3211.xy, x_3211.z);
            u_xlat11.x = x_3213;
            let x_3216 : f32 = u_xlat19.x;
            let x_3218 : f32 = u_xlat11.x;
            let x_3220 : f32 = u_xlat85;
            u_xlat85 = ((x_3216 * x_3218) + x_3220);
            let x_3223 : vec4<f32> = u_xlat16;
            let x_3224 : vec2<f32> = vec2<f32>(x_3223.z, x_3223.w);
            let x_3226 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_3224.x, x_3224.y, x_3226);
            let x_3233 : vec3<f32> = txVec39;
            let x_3235 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3233.xy, x_3233.z);
            u_xlat11.x = x_3235;
            let x_3238 : f32 = u_xlat19.y;
            let x_3240 : f32 = u_xlat11.x;
            let x_3242 : f32 = u_xlat85;
            u_xlat85 = ((x_3238 * x_3240) + x_3242);
            let x_3245 : vec4<f32> = u_xlat14;
            let x_3246 : vec2<f32> = vec2<f32>(x_3245.z, x_3245.w);
            let x_3248 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_3246.x, x_3246.y, x_3248);
            let x_3255 : vec3<f32> = txVec40;
            let x_3257 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3255.xy, x_3255.z);
            u_xlat11.x = x_3257;
            let x_3260 : f32 = u_xlat19.z;
            let x_3262 : f32 = u_xlat11.x;
            let x_3264 : f32 = u_xlat85;
            u_xlat85 = ((x_3260 * x_3262) + x_3264);
            let x_3267 : vec4<f32> = u_xlat13;
            let x_3268 : vec2<f32> = vec2<f32>(x_3267.x, x_3267.y);
            let x_3270 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_3268.x, x_3268.y, x_3270);
            let x_3277 : vec3<f32> = txVec41;
            let x_3279 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3277.xy, x_3277.z);
            u_xlat11.x = x_3279;
            let x_3282 : f32 = u_xlat19.w;
            let x_3284 : f32 = u_xlat11.x;
            let x_3286 : f32 = u_xlat85;
            u_xlat85 = ((x_3282 * x_3284) + x_3286);
            let x_3289 : vec4<f32> = u_xlat13;
            let x_3290 : vec2<f32> = vec2<f32>(x_3289.z, x_3289.w);
            let x_3292 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_3290.x, x_3290.y, x_3292);
            let x_3299 : vec3<f32> = txVec42;
            let x_3301 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3299.xy, x_3299.z);
            u_xlat11.x = x_3301;
            let x_3303 : f32 = u_xlat84;
            let x_3305 : f32 = u_xlat11.x;
            let x_3307 : f32 = u_xlat85;
            u_xlat83 = ((x_3303 * x_3305) + x_3307);
          } else {
            let x_3310 : vec4<f32> = u_xlat10;
            let x_3313 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3316 : vec2<f32> = ((vec2<f32>(x_3310.x, x_3310.y) * vec2<f32>(x_3313.z, x_3313.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3317 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3316.x, x_3316.y, x_3317.z, x_3317.w);
            let x_3319 : vec4<f32> = u_xlat11;
            let x_3321 : vec2<f32> = floor(vec2<f32>(x_3319.x, x_3319.y));
            let x_3322 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3321.x, x_3321.y, x_3322.z, x_3322.w);
            let x_3324 : vec4<f32> = u_xlat10;
            let x_3327 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3330 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3324.x, x_3324.y) * vec2<f32>(x_3327.z, x_3327.w)) + -(vec2<f32>(x_3330.x, x_3330.y)));
            let x_3334 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3334.x, x_3334.x, x_3334.y, x_3334.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3337 : vec4<f32> = u_xlat12;
            let x_3339 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3337.x, x_3337.x, x_3337.z, x_3337.z) * vec4<f32>(x_3339.x, x_3339.x, x_3339.z, x_3339.z));
            let x_3342 : vec4<f32> = u_xlat13;
            let x_3344 : vec2<f32> = (vec2<f32>(x_3342.y, x_3342.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3345 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3345.x, x_3344.x, x_3345.z, x_3344.y);
            let x_3347 : vec4<f32> = u_xlat13;
            let x_3350 : vec2<f32> = u_xlat61;
            let x_3352 : vec2<f32> = ((vec2<f32>(x_3347.x, x_3347.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3350));
            let x_3353 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3352.x, x_3353.y, x_3352.y, x_3353.w);
            let x_3355 : vec2<f32> = u_xlat61;
            let x_3357 : vec2<f32> = (-(x_3355) + vec2<f32>(1.0f, 1.0f));
            let x_3358 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3357.x, x_3357.y, x_3358.z, x_3358.w);
            let x_3360 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_3360, vec2<f32>(0.0f, 0.0f));
            let x_3362 : vec2<f32> = u_xlat63;
            let x_3364 : vec2<f32> = u_xlat63;
            let x_3366 : vec4<f32> = u_xlat13;
            let x_3368 : vec2<f32> = ((-(x_3362) * x_3364) + vec2<f32>(x_3366.x, x_3366.y));
            let x_3369 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3368.x, x_3368.y, x_3369.z, x_3369.w);
            let x_3371 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_3371, vec2<f32>(0.0f, 0.0f));
            let x_3374 : vec2<f32> = u_xlat63;
            let x_3376 : vec2<f32> = u_xlat63;
            let x_3378 : vec4<f32> = u_xlat12;
            let x_3380 : vec2<f32> = ((-(x_3374) * x_3376) + vec2<f32>(x_3378.y, x_3378.w));
            let x_3381 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_3380.x, x_3381.y, x_3380.y);
            let x_3383 : vec4<f32> = u_xlat13;
            let x_3385 : vec2<f32> = (vec2<f32>(x_3383.x, x_3383.y) + vec2<f32>(2.0f, 2.0f));
            let x_3386 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3385.x, x_3385.y, x_3386.z, x_3386.w);
            let x_3388 : vec3<f32> = u_xlat37;
            let x_3390 : vec2<f32> = (vec2<f32>(x_3388.x, x_3388.z) + vec2<f32>(2.0f, 2.0f));
            let x_3391 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3391.x, x_3390.x, x_3391.z, x_3390.y);
            let x_3394 : f32 = u_xlat12.y;
            u_xlat15.z = (x_3394 * 0.08163200318813323975f);
            let x_3397 : vec4<f32> = u_xlat12;
            let x_3399 : vec3<f32> = (vec3<f32>(x_3397.z, x_3397.x, x_3397.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3400 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3399.x, x_3399.y, x_3399.z, x_3400.w);
            let x_3402 : vec4<f32> = u_xlat13;
            let x_3404 : vec2<f32> = (vec2<f32>(x_3402.x, x_3402.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3405 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3404.x, x_3404.y, x_3405.z, x_3405.w);
            let x_3408 : f32 = u_xlat16.y;
            u_xlat15.x = x_3408;
            let x_3410 : vec2<f32> = u_xlat61;
            let x_3413 : vec2<f32> = ((vec2<f32>(x_3410.x, x_3410.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3414 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3414.x, x_3413.x, x_3414.z, x_3413.y);
            let x_3416 : vec2<f32> = u_xlat61;
            let x_3419 : vec2<f32> = ((vec2<f32>(x_3416.x, x_3416.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3420 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3419.x, x_3420.y, x_3419.y, x_3420.w);
            let x_3423 : f32 = u_xlat12.x;
            u_xlat13.y = x_3423;
            let x_3426 : f32 = u_xlat14.y;
            u_xlat13.w = x_3426;
            let x_3428 : vec4<f32> = u_xlat13;
            let x_3429 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3428 + x_3429);
            let x_3431 : vec2<f32> = u_xlat61;
            let x_3434 : vec2<f32> = ((vec2<f32>(x_3431.y, x_3431.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3435 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3435.x, x_3434.x, x_3435.z, x_3434.y);
            let x_3437 : vec2<f32> = u_xlat61;
            let x_3440 : vec2<f32> = ((vec2<f32>(x_3437.y, x_3437.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3441 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3440.x, x_3441.y, x_3440.y, x_3441.w);
            let x_3444 : f32 = u_xlat12.y;
            u_xlat14.y = x_3444;
            let x_3446 : vec4<f32> = u_xlat14;
            let x_3447 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_3446 + x_3447);
            let x_3449 : vec4<f32> = u_xlat13;
            let x_3450 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_3449 / x_3450);
            let x_3452 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3452 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3454 : vec4<f32> = u_xlat14;
            let x_3455 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_3454 / x_3455);
            let x_3457 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3457 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3459 : vec4<f32> = u_xlat13;
            let x_3462 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3459.w, x_3459.x, x_3459.y, x_3459.z) * vec4<f32>(x_3462.x, x_3462.x, x_3462.x, x_3462.x));
            let x_3465 : vec4<f32> = u_xlat14;
            let x_3468 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3465.x, x_3465.w, x_3465.y, x_3465.z) * vec4<f32>(x_3468.y, x_3468.y, x_3468.y, x_3468.y));
            let x_3471 : vec4<f32> = u_xlat13;
            let x_3472 : vec3<f32> = vec3<f32>(x_3471.y, x_3471.z, x_3471.w);
            let x_3473 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3472.x, x_3473.y, x_3472.y, x_3472.z);
            let x_3476 : f32 = u_xlat14.x;
            u_xlat16.y = x_3476;
            let x_3478 : vec4<f32> = u_xlat11;
            let x_3481 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3484 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3478.x, x_3478.y, x_3478.x, x_3478.y) * vec4<f32>(x_3481.x, x_3481.y, x_3481.x, x_3481.y)) + vec4<f32>(x_3484.x, x_3484.y, x_3484.z, x_3484.y));
            let x_3487 : vec4<f32> = u_xlat11;
            let x_3490 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3493 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_3487.x, x_3487.y) * vec2<f32>(x_3490.x, x_3490.y)) + vec2<f32>(x_3493.w, x_3493.y));
            let x_3497 : f32 = u_xlat16.y;
            u_xlat13.y = x_3497;
            let x_3500 : f32 = u_xlat14.z;
            u_xlat16.y = x_3500;
            let x_3502 : vec4<f32> = u_xlat11;
            let x_3505 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3508 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3502.x, x_3502.y, x_3502.x, x_3502.y) * vec4<f32>(x_3505.x, x_3505.y, x_3505.x, x_3505.y)) + vec4<f32>(x_3508.x, x_3508.y, x_3508.z, x_3508.y));
            let x_3511 : vec4<f32> = u_xlat11;
            let x_3514 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3517 : vec4<f32> = u_xlat16;
            let x_3519 : vec2<f32> = ((vec2<f32>(x_3511.x, x_3511.y) * vec2<f32>(x_3514.x, x_3514.y)) + vec2<f32>(x_3517.w, x_3517.y));
            let x_3520 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3519.x, x_3519.y, x_3520.z, x_3520.w);
            let x_3523 : f32 = u_xlat16.y;
            u_xlat13.z = x_3523;
            let x_3525 : vec4<f32> = u_xlat11;
            let x_3528 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3531 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3525.x, x_3525.y, x_3525.x, x_3525.y) * vec4<f32>(x_3528.x, x_3528.y, x_3528.x, x_3528.y)) + vec4<f32>(x_3531.x, x_3531.y, x_3531.x, x_3531.z));
            let x_3535 : f32 = u_xlat14.w;
            u_xlat16.y = x_3535;
            let x_3538 : vec4<f32> = u_xlat11;
            let x_3541 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3544 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3538.x, x_3538.y, x_3538.x, x_3538.y) * vec4<f32>(x_3541.x, x_3541.y, x_3541.x, x_3541.y)) + vec4<f32>(x_3544.x, x_3544.y, x_3544.z, x_3544.y));
            let x_3548 : vec4<f32> = u_xlat11;
            let x_3551 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3554 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3548.x, x_3548.y) * vec2<f32>(x_3551.x, x_3551.y)) + vec2<f32>(x_3554.w, x_3554.y));
            let x_3558 : f32 = u_xlat16.y;
            u_xlat13.w = x_3558;
            let x_3561 : vec4<f32> = u_xlat11;
            let x_3564 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3567 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3561.x, x_3561.y) * vec2<f32>(x_3564.x, x_3564.y)) + vec2<f32>(x_3567.x, x_3567.w));
            let x_3570 : vec4<f32> = u_xlat16;
            let x_3571 : vec3<f32> = vec3<f32>(x_3570.x, x_3570.z, x_3570.w);
            let x_3572 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3571.x, x_3572.y, x_3571.y, x_3571.z);
            let x_3574 : vec4<f32> = u_xlat11;
            let x_3577 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3580 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3574.x, x_3574.y, x_3574.x, x_3574.y) * vec4<f32>(x_3577.x, x_3577.y, x_3577.x, x_3577.y)) + vec4<f32>(x_3580.x, x_3580.y, x_3580.z, x_3580.y));
            let x_3584 : vec4<f32> = u_xlat11;
            let x_3587 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3590 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3584.x, x_3584.y) * vec2<f32>(x_3587.x, x_3587.y)) + vec2<f32>(x_3590.w, x_3590.y));
            let x_3594 : f32 = u_xlat13.x;
            u_xlat14.x = x_3594;
            let x_3596 : vec4<f32> = u_xlat11;
            let x_3599 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3602 : vec4<f32> = u_xlat14;
            let x_3604 : vec2<f32> = ((vec2<f32>(x_3596.x, x_3596.y) * vec2<f32>(x_3599.x, x_3599.y)) + vec2<f32>(x_3602.x, x_3602.y));
            let x_3605 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3604.x, x_3604.y, x_3605.z, x_3605.w);
            let x_3608 : vec4<f32> = u_xlat12;
            let x_3610 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3608.x, x_3608.x, x_3608.x, x_3608.x) * x_3610);
            let x_3613 : vec4<f32> = u_xlat12;
            let x_3615 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3613.y, x_3613.y, x_3613.y, x_3613.y) * x_3615);
            let x_3618 : vec4<f32> = u_xlat12;
            let x_3620 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3618.z, x_3618.z, x_3618.z, x_3618.z) * x_3620);
            let x_3622 : vec4<f32> = u_xlat12;
            let x_3624 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3622.w, x_3622.w, x_3622.w, x_3622.w) * x_3624);
            let x_3627 : vec4<f32> = u_xlat17;
            let x_3628 : vec2<f32> = vec2<f32>(x_3627.x, x_3627.y);
            let x_3630 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3628.x, x_3628.y, x_3630);
            let x_3637 : vec3<f32> = txVec43;
            let x_3639 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3637.xy, x_3637.z);
            u_xlat84 = x_3639;
            let x_3641 : vec4<f32> = u_xlat17;
            let x_3642 : vec2<f32> = vec2<f32>(x_3641.z, x_3641.w);
            let x_3644 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3642.x, x_3642.y, x_3644);
            let x_3651 : vec3<f32> = txVec44;
            let x_3653 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3651.xy, x_3651.z);
            u_xlat85 = x_3653;
            let x_3654 : f32 = u_xlat85;
            let x_3656 : f32 = u_xlat22.y;
            u_xlat85 = (x_3654 * x_3656);
            let x_3659 : f32 = u_xlat22.x;
            let x_3660 : f32 = u_xlat84;
            let x_3662 : f32 = u_xlat85;
            u_xlat84 = ((x_3659 * x_3660) + x_3662);
            let x_3665 : vec2<f32> = u_xlat61;
            let x_3667 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3665.x, x_3665.y, x_3667);
            let x_3674 : vec3<f32> = txVec45;
            let x_3676 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3674.xy, x_3674.z);
            u_xlat85 = x_3676;
            let x_3678 : f32 = u_xlat22.z;
            let x_3679 : f32 = u_xlat85;
            let x_3681 : f32 = u_xlat84;
            u_xlat84 = ((x_3678 * x_3679) + x_3681);
            let x_3684 : vec4<f32> = u_xlat20;
            let x_3685 : vec2<f32> = vec2<f32>(x_3684.x, x_3684.y);
            let x_3687 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3685.x, x_3685.y, x_3687);
            let x_3694 : vec3<f32> = txVec46;
            let x_3696 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3694.xy, x_3694.z);
            u_xlat85 = x_3696;
            let x_3698 : f32 = u_xlat22.w;
            let x_3699 : f32 = u_xlat85;
            let x_3701 : f32 = u_xlat84;
            u_xlat84 = ((x_3698 * x_3699) + x_3701);
            let x_3704 : vec4<f32> = u_xlat18;
            let x_3705 : vec2<f32> = vec2<f32>(x_3704.x, x_3704.y);
            let x_3707 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3705.x, x_3705.y, x_3707);
            let x_3714 : vec3<f32> = txVec47;
            let x_3716 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3714.xy, x_3714.z);
            u_xlat85 = x_3716;
            let x_3718 : f32 = u_xlat23.x;
            let x_3719 : f32 = u_xlat85;
            let x_3721 : f32 = u_xlat84;
            u_xlat84 = ((x_3718 * x_3719) + x_3721);
            let x_3724 : vec4<f32> = u_xlat18;
            let x_3725 : vec2<f32> = vec2<f32>(x_3724.z, x_3724.w);
            let x_3727 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3725.x, x_3725.y, x_3727);
            let x_3734 : vec3<f32> = txVec48;
            let x_3736 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3734.xy, x_3734.z);
            u_xlat85 = x_3736;
            let x_3738 : f32 = u_xlat23.y;
            let x_3739 : f32 = u_xlat85;
            let x_3741 : f32 = u_xlat84;
            u_xlat84 = ((x_3738 * x_3739) + x_3741);
            let x_3744 : vec4<f32> = u_xlat19;
            let x_3745 : vec2<f32> = vec2<f32>(x_3744.x, x_3744.y);
            let x_3747 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3745.x, x_3745.y, x_3747);
            let x_3754 : vec3<f32> = txVec49;
            let x_3756 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3754.xy, x_3754.z);
            u_xlat85 = x_3756;
            let x_3758 : f32 = u_xlat23.z;
            let x_3759 : f32 = u_xlat85;
            let x_3761 : f32 = u_xlat84;
            u_xlat84 = ((x_3758 * x_3759) + x_3761);
            let x_3764 : vec4<f32> = u_xlat20;
            let x_3765 : vec2<f32> = vec2<f32>(x_3764.z, x_3764.w);
            let x_3767 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3765.x, x_3765.y, x_3767);
            let x_3774 : vec3<f32> = txVec50;
            let x_3776 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3774.xy, x_3774.z);
            u_xlat85 = x_3776;
            let x_3778 : f32 = u_xlat23.w;
            let x_3779 : f32 = u_xlat85;
            let x_3781 : f32 = u_xlat84;
            u_xlat84 = ((x_3778 * x_3779) + x_3781);
            let x_3784 : vec4<f32> = u_xlat21;
            let x_3785 : vec2<f32> = vec2<f32>(x_3784.x, x_3784.y);
            let x_3787 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3785.x, x_3785.y, x_3787);
            let x_3794 : vec3<f32> = txVec51;
            let x_3796 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3794.xy, x_3794.z);
            u_xlat85 = x_3796;
            let x_3798 : f32 = u_xlat24.x;
            let x_3799 : f32 = u_xlat85;
            let x_3801 : f32 = u_xlat84;
            u_xlat84 = ((x_3798 * x_3799) + x_3801);
            let x_3804 : vec4<f32> = u_xlat21;
            let x_3805 : vec2<f32> = vec2<f32>(x_3804.z, x_3804.w);
            let x_3807 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_3805.x, x_3805.y, x_3807);
            let x_3814 : vec3<f32> = txVec52;
            let x_3816 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3814.xy, x_3814.z);
            u_xlat85 = x_3816;
            let x_3818 : f32 = u_xlat24.y;
            let x_3819 : f32 = u_xlat85;
            let x_3821 : f32 = u_xlat84;
            u_xlat84 = ((x_3818 * x_3819) + x_3821);
            let x_3824 : vec2<f32> = u_xlat38;
            let x_3826 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_3824.x, x_3824.y, x_3826);
            let x_3833 : vec3<f32> = txVec53;
            let x_3835 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3833.xy, x_3833.z);
            u_xlat85 = x_3835;
            let x_3837 : f32 = u_xlat24.z;
            let x_3838 : f32 = u_xlat85;
            let x_3840 : f32 = u_xlat84;
            u_xlat84 = ((x_3837 * x_3838) + x_3840);
            let x_3843 : vec2<f32> = u_xlat69;
            let x_3845 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_3843.x, x_3843.y, x_3845);
            let x_3852 : vec3<f32> = txVec54;
            let x_3854 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3852.xy, x_3852.z);
            u_xlat85 = x_3854;
            let x_3856 : f32 = u_xlat24.w;
            let x_3857 : f32 = u_xlat85;
            let x_3859 : f32 = u_xlat84;
            u_xlat84 = ((x_3856 * x_3857) + x_3859);
            let x_3862 : vec4<f32> = u_xlat16;
            let x_3863 : vec2<f32> = vec2<f32>(x_3862.x, x_3862.y);
            let x_3865 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_3863.x, x_3863.y, x_3865);
            let x_3872 : vec3<f32> = txVec55;
            let x_3874 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3872.xy, x_3872.z);
            u_xlat85 = x_3874;
            let x_3876 : f32 = u_xlat12.x;
            let x_3877 : f32 = u_xlat85;
            let x_3879 : f32 = u_xlat84;
            u_xlat84 = ((x_3876 * x_3877) + x_3879);
            let x_3882 : vec4<f32> = u_xlat16;
            let x_3883 : vec2<f32> = vec2<f32>(x_3882.z, x_3882.w);
            let x_3885 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_3883.x, x_3883.y, x_3885);
            let x_3892 : vec3<f32> = txVec56;
            let x_3894 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3892.xy, x_3892.z);
            u_xlat85 = x_3894;
            let x_3896 : f32 = u_xlat12.y;
            let x_3897 : f32 = u_xlat85;
            let x_3899 : f32 = u_xlat84;
            u_xlat84 = ((x_3896 * x_3897) + x_3899);
            let x_3902 : vec2<f32> = u_xlat64;
            let x_3904 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_3902.x, x_3902.y, x_3904);
            let x_3911 : vec3<f32> = txVec57;
            let x_3913 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3911.xy, x_3911.z);
            u_xlat85 = x_3913;
            let x_3915 : f32 = u_xlat12.z;
            let x_3916 : f32 = u_xlat85;
            let x_3918 : f32 = u_xlat84;
            u_xlat84 = ((x_3915 * x_3916) + x_3918);
            let x_3921 : vec4<f32> = u_xlat11;
            let x_3922 : vec2<f32> = vec2<f32>(x_3921.x, x_3921.y);
            let x_3924 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_3922.x, x_3922.y, x_3924);
            let x_3931 : vec3<f32> = txVec58;
            let x_3933 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3931.xy, x_3931.z);
            u_xlat85 = x_3933;
            let x_3935 : f32 = u_xlat12.w;
            let x_3936 : f32 = u_xlat85;
            let x_3938 : f32 = u_xlat84;
            u_xlat83 = ((x_3935 * x_3936) + x_3938);
          }
        }
      } else {
        let x_3942 : vec4<f32> = u_xlat10;
        let x_3943 : vec2<f32> = vec2<f32>(x_3942.x, x_3942.y);
        let x_3945 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_3943.x, x_3943.y, x_3945);
        let x_3952 : vec3<f32> = txVec59;
        let x_3954 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3952.xy, x_3952.z);
        u_xlat83 = x_3954;
      }
      let x_3955 : i32 = u_xlati80;
      let x_3957 : f32 = x_629.x_AdditionalShadowParams[x_3955].x;
      u_xlat84 = (1.0f + -(x_3957));
      let x_3960 : f32 = u_xlat83;
      let x_3961 : i32 = u_xlati80;
      let x_3963 : f32 = x_629.x_AdditionalShadowParams[x_3961].x;
      let x_3965 : f32 = u_xlat84;
      u_xlat83 = ((x_3960 * x_3963) + x_3965);
      let x_3968 : f32 = u_xlat10.z;
      u_xlatb84 = (0.0f >= x_3968);
      let x_3971 : f32 = u_xlat10.z;
      u_xlatb10.x = (x_3971 >= 1.0f);
      let x_3974 : bool = u_xlatb84;
      let x_3976 : bool = u_xlatb10.x;
      u_xlatb84 = (x_3974 | x_3976);
      let x_3978 : bool = u_xlatb84;
      let x_3979 : f32 = u_xlat83;
      u_xlat83 = select(x_3979, 1.0f, x_3978);
    } else {
      u_xlat83 = 1.0f;
    }
    let x_3982 : f32 = u_xlat83;
    u_xlat84 = (-(x_3982) + 1.0f);
    let x_3985 : f32 = u_xlat77;
    let x_3986 : f32 = u_xlat84;
    let x_3988 : f32 = u_xlat83;
    u_xlat83 = ((x_3985 * x_3986) + x_3988);
    let x_3990 : f32 = u_xlat81;
    let x_3991 : f32 = u_xlat83;
    u_xlat81 = (x_3990 * x_3991);
    let x_3993 : vec4<f32> = u_xlat1;
    let x_3995 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_3993.x, x_3993.y, x_3993.z), vec3<f32>(x_3995.x, x_3995.y, x_3995.z));
    let x_3998 : f32 = u_xlat83;
    u_xlat83 = clamp(x_3998, 0.0f, 1.0f);
    let x_4000 : f32 = u_xlat81;
    let x_4001 : f32 = u_xlat83;
    u_xlat81 = (x_4000 * x_4001);
    let x_4003 : f32 = u_xlat81;
    let x_4005 : i32 = u_xlati80;
    let x_4007 : vec4<f32> = x_2554.x_AdditionalLightsColor[x_4005];
    let x_4009 : vec3<f32> = (vec3<f32>(x_4003, x_4003, x_4003) * vec3<f32>(x_4007.x, x_4007.y, x_4007.z));
    let x_4010 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_4009.x, x_4009.y, x_4009.z, x_4010.w);
    let x_4012 : vec4<f32> = u_xlat8;
    let x_4014 : f32 = u_xlat82;
    let x_4017 : vec3<f32> = u_xlat2;
    let x_4018 : vec3<f32> = ((vec3<f32>(x_4012.x, x_4012.y, x_4012.z) * vec3<f32>(x_4014, x_4014, x_4014)) + x_4017);
    let x_4019 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4018.x, x_4018.y, x_4018.z, x_4019.w);
    let x_4021 : vec4<f32> = u_xlat8;
    let x_4023 : vec4<f32> = u_xlat8;
    u_xlat80 = dot(vec3<f32>(x_4021.x, x_4021.y, x_4021.z), vec3<f32>(x_4023.x, x_4023.y, x_4023.z));
    let x_4026 : f32 = u_xlat80;
    u_xlat80 = max(x_4026, 1.17549435e-38f);
    let x_4028 : f32 = u_xlat80;
    u_xlat80 = inverseSqrt(x_4028);
    let x_4030 : f32 = u_xlat80;
    let x_4032 : vec4<f32> = u_xlat8;
    let x_4034 : vec3<f32> = (vec3<f32>(x_4030, x_4030, x_4030) * vec3<f32>(x_4032.x, x_4032.y, x_4032.z));
    let x_4035 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4034.x, x_4034.y, x_4034.z, x_4035.w);
    let x_4037 : vec4<f32> = u_xlat1;
    let x_4039 : vec4<f32> = u_xlat8;
    u_xlat80 = dot(vec3<f32>(x_4037.x, x_4037.y, x_4037.z), vec3<f32>(x_4039.x, x_4039.y, x_4039.z));
    let x_4042 : f32 = u_xlat80;
    u_xlat80 = clamp(x_4042, 0.0f, 1.0f);
    let x_4044 : vec4<f32> = u_xlat9;
    let x_4046 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_4044.x, x_4044.y, x_4044.z), vec3<f32>(x_4046.x, x_4046.y, x_4046.z));
    let x_4049 : f32 = u_xlat81;
    u_xlat81 = clamp(x_4049, 0.0f, 1.0f);
    let x_4051 : f32 = u_xlat80;
    let x_4052 : f32 = u_xlat80;
    u_xlat80 = (x_4051 * x_4052);
    let x_4054 : f32 = u_xlat80;
    let x_4056 : f32 = u_xlat0.x;
    u_xlat80 = ((x_4054 * x_4056) + 1.00001001358032226562f);
    let x_4059 : f32 = u_xlat81;
    let x_4060 : f32 = u_xlat81;
    u_xlat81 = (x_4059 * x_4060);
    let x_4062 : f32 = u_xlat80;
    let x_4063 : f32 = u_xlat80;
    u_xlat80 = (x_4062 * x_4063);
    let x_4065 : f32 = u_xlat81;
    u_xlat81 = max(x_4065, 0.10000000149011611938f);
    let x_4067 : f32 = u_xlat80;
    let x_4068 : f32 = u_xlat81;
    u_xlat80 = (x_4067 * x_4068);
    let x_4070 : f32 = u_xlat78;
    let x_4071 : f32 = u_xlat80;
    u_xlat80 = (x_4070 * x_4071);
    let x_4073 : f32 = u_xlat76;
    let x_4074 : f32 = u_xlat80;
    u_xlat80 = (x_4073 / x_4074);
    let x_4076 : vec4<f32> = u_xlat5;
    let x_4078 : f32 = u_xlat80;
    let x_4081 : vec4<f32> = u_xlat6;
    let x_4083 : vec3<f32> = ((vec3<f32>(x_4076.x, x_4076.y, x_4076.z) * vec3<f32>(x_4078, x_4078, x_4078)) + vec3<f32>(x_4081.x, x_4081.y, x_4081.z));
    let x_4084 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4083.x, x_4083.y, x_4083.z, x_4084.w);
    let x_4086 : vec4<f32> = u_xlat8;
    let x_4088 : vec4<f32> = u_xlat10;
    let x_4091 : vec4<f32> = u_xlat3;
    let x_4093 : vec3<f32> = ((vec3<f32>(x_4086.x, x_4086.y, x_4086.z) * vec3<f32>(x_4088.x, x_4088.y, x_4088.z)) + vec3<f32>(x_4091.x, x_4091.y, x_4091.z));
    let x_4094 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_4093.x, x_4093.y, x_4093.z, x_4094.w);

    continuing {
      let x_4096 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4096 + bitcast<u32>(1i));
    }
  }
  let x_4098 : vec4<f32> = u_xlat4;
  let x_4100 : f32 = u_xlat25;
  let x_4103 : vec4<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_4098.x, x_4098.y, x_4098.z) * vec3<f32>(x_4100, x_4100, x_4100)) + vec3<f32>(x_4103.x, x_4103.y, x_4103.z));
  let x_4106 : vec4<f32> = u_xlat3;
  let x_4108 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4106.x, x_4106.y, x_4106.z) + x_4108);
  let x_4112 : f32 = u_xlat75;
  let x_4114 : vec3<f32> = u_xlat0;
  let x_4115 : vec3<f32> = (vec3<f32>(x_4112, x_4112, x_4112) * x_4114);
  let x_4116 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4115.x, x_4115.y, x_4115.z, x_4116.w);
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


