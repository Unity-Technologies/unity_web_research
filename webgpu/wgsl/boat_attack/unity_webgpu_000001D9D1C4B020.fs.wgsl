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

@group(1) @binding(2) var<uniform> x_625 : UnityPerDraw;

var<private> u_xlat77 : f32;

var<private> u_xlat78 : f32;

var<private> u_xlatb79 : bool;

@group(1) @binding(4) var<uniform> x_768 : LightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(7) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_LinearClampCompare : sampler_comparison;

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

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu50 : u32;

var<private> u_xlatu80 : u32;

var<private> u_xlati81 : i32;

var<private> u_xlati80 : i32;

@group(1) @binding(1) var<uniform> x_2423 : AdditionalLights;

var<private> u_xlat82 : f32;

var<private> u_xlat83 : f32;

var<private> u_xlati83 : i32;

var<private> u_xlatb84 : bool;

var<private> u_xlatb10 : vec4<bool>;

var<private> u_xlat85 : f32;

var<private> u_xlat35 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlatb83 : bool;

@group(0) @binding(8) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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
  var x_2561 : f32;
  var x_2571 : f32;
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
  u_xlat1.w = 1.0f;
  let x_627 : vec4<f32> = x_625.unity_SHAr;
  let x_628 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_627, x_628);
  let x_632 : vec4<f32> = x_625.unity_SHAg;
  let x_633 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_632, x_633);
  let x_637 : vec4<f32> = x_625.unity_SHAb;
  let x_638 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_637, x_638);
  let x_641 : vec4<f32> = u_xlat1;
  let x_643 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_641.y, x_641.z, x_641.z, x_641.x) * vec4<f32>(x_643.x, x_643.y, x_643.z, x_643.z));
  let x_647 : vec4<f32> = x_625.unity_SHBr;
  let x_648 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_647, x_648);
  let x_652 : vec4<f32> = x_625.unity_SHBg;
  let x_653 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_652, x_653);
  let x_657 : vec4<f32> = x_625.unity_SHBb;
  let x_658 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_657, x_658);
  let x_662 : f32 = u_xlat1.y;
  let x_664 : f32 = u_xlat1.y;
  u_xlat76 = (x_662 * x_664);
  let x_667 : f32 = u_xlat1.x;
  let x_669 : f32 = u_xlat1.x;
  let x_671 : f32 = u_xlat76;
  u_xlat76 = ((x_667 * x_669) + -(x_671));
  let x_676 : vec4<f32> = x_625.unity_SHC;
  let x_678 : f32 = u_xlat76;
  let x_681 : vec4<f32> = u_xlat6;
  let x_683 : vec3<f32> = ((vec3<f32>(x_676.x, x_676.y, x_676.z) * vec3<f32>(x_678, x_678, x_678)) + vec3<f32>(x_681.x, x_681.y, x_681.z));
  let x_684 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_683.x, x_683.y, x_683.z, x_684.w);
  let x_686 : vec4<f32> = u_xlat3;
  let x_688 : vec4<f32> = u_xlat4;
  let x_690 : vec3<f32> = (vec3<f32>(x_686.x, x_686.y, x_686.z) + vec3<f32>(x_688.x, x_688.y, x_688.z));
  let x_691 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_690.x, x_690.y, x_690.z, x_691.w);
  let x_693 : vec4<f32> = u_xlat3;
  let x_696 : vec3<f32> = max(vec3<f32>(x_693.x, x_693.y, x_693.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_697 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_696.x, x_696.y, x_696.z, x_697.w);
  let x_700 : f32 = u_xlat0.x;
  u_xlat76 = ((-(x_700) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_706 : f32 = u_xlat50;
  let x_707 : f32 = u_xlat76;
  u_xlat77 = (x_706 + -(x_707));
  let x_710 : f32 = u_xlat76;
  let x_712 : vec4<f32> = u_xlat5;
  let x_714 : vec3<f32> = (vec3<f32>(x_710, x_710, x_710) * vec3<f32>(x_712.x, x_712.y, x_712.z));
  let x_715 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_714.x, x_714.y, x_714.z, x_715.w);
  let x_717 : vec4<f32> = u_xlat5;
  let x_721 : vec3<f32> = (vec3<f32>(x_717.x, x_717.y, x_717.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_722 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_721.x, x_721.y, x_721.z, x_722.w);
  let x_724 : vec3<f32> = u_xlat0;
  let x_726 : vec4<f32> = u_xlat5;
  let x_731 : vec3<f32> = ((vec3<f32>(x_724.x, x_724.x, x_724.x) * vec3<f32>(x_726.x, x_726.y, x_726.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_732 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_731.x, x_731.y, x_731.z, x_732.w);
  let x_734 : f32 = u_xlat50;
  u_xlat0.x = (-(x_734) + 1.0f);
  let x_739 : f32 = u_xlat0.x;
  let x_741 : f32 = u_xlat0.x;
  u_xlat50 = (x_739 * x_741);
  let x_743 : f32 = u_xlat50;
  u_xlat50 = max(x_743, 0.0078125f);
  let x_746 : f32 = u_xlat50;
  let x_747 : f32 = u_xlat50;
  u_xlat76 = (x_746 * x_747);
  let x_749 : f32 = u_xlat77;
  u_xlat77 = (x_749 + 1.0f);
  let x_751 : f32 = u_xlat77;
  u_xlat77 = clamp(x_751, 0.0f, 1.0f);
  let x_754 : f32 = u_xlat50;
  u_xlat78 = ((x_754 * 4.0f) + 2.0f);
  let x_758 : f32 = u_xlat25;
  u_xlat25 = min(x_758, 1.0f);
  let x_770 : f32 = x_768.x_MainLightShadowParams.y;
  u_xlatb79 = (0.0f < x_770);
  let x_772 : bool = u_xlatb79;
  if (x_772) {
    let x_776 : f32 = x_768.x_MainLightShadowParams.y;
    u_xlatb79 = (x_776 == 1.0f);
    let x_778 : bool = u_xlatb79;
    if (x_778) {
      let x_782 : vec4<f32> = vs_TEXCOORD8;
      let x_785 : vec4<f32> = x_768.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_782.x, x_782.y, x_782.x, x_782.y) + x_785);
      let x_789 : vec4<f32> = u_xlat6;
      let x_790 : vec2<f32> = vec2<f32>(x_789.x, x_789.y);
      let x_793 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_790.x, x_790.y, x_793);
      let x_805 : vec3<f32> = txVec0;
      let x_807 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_805.xy, x_805.z);
      u_xlat7.x = x_807;
      let x_810 : vec4<f32> = u_xlat6;
      let x_811 : vec2<f32> = vec2<f32>(x_810.z, x_810.w);
      let x_813 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_811.x, x_811.y, x_813);
      let x_820 : vec3<f32> = txVec1;
      let x_822 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_820.xy, x_820.z);
      u_xlat7.y = x_822;
      let x_824 : vec4<f32> = vs_TEXCOORD8;
      let x_827 : vec4<f32> = x_768.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_824.x, x_824.y, x_824.x, x_824.y) + x_827);
      let x_830 : vec4<f32> = u_xlat6;
      let x_831 : vec2<f32> = vec2<f32>(x_830.x, x_830.y);
      let x_833 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_831.x, x_831.y, x_833);
      let x_840 : vec3<f32> = txVec2;
      let x_842 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_840.xy, x_840.z);
      u_xlat7.z = x_842;
      let x_845 : vec4<f32> = u_xlat6;
      let x_846 : vec2<f32> = vec2<f32>(x_845.z, x_845.w);
      let x_848 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_846.x, x_846.y, x_848);
      let x_855 : vec3<f32> = txVec3;
      let x_857 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_855.xy, x_855.z);
      u_xlat7.w = x_857;
      let x_860 : vec4<f32> = u_xlat7;
      u_xlat79 = dot(x_860, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_867 : f32 = x_768.x_MainLightShadowParams.y;
      u_xlatb80 = (x_867 == 2.0f);
      let x_869 : bool = u_xlatb80;
      if (x_869) {
        let x_872 : vec4<f32> = vs_TEXCOORD8;
        let x_875 : vec4<f32> = x_768.x_MainLightShadowmapSize;
        let x_878 : vec2<f32> = ((vec2<f32>(x_872.x, x_872.y) * vec2<f32>(x_875.z, x_875.w)) + vec2<f32>(0.5f, 0.5f));
        let x_879 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_878.x, x_878.y, x_879.z, x_879.w);
        let x_881 : vec4<f32> = u_xlat6;
        let x_883 : vec2<f32> = floor(vec2<f32>(x_881.x, x_881.y));
        let x_884 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_883.x, x_883.y, x_884.z, x_884.w);
        let x_888 : vec4<f32> = vs_TEXCOORD8;
        let x_891 : vec4<f32> = x_768.x_MainLightShadowmapSize;
        let x_894 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_888.x, x_888.y) * vec2<f32>(x_891.z, x_891.w)) + -(vec2<f32>(x_894.x, x_894.y)));
        let x_898 : vec2<f32> = u_xlat56;
        u_xlat7 = (vec4<f32>(x_898.x, x_898.x, x_898.y, x_898.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_902 : vec4<f32> = u_xlat7;
        let x_904 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_902.x, x_902.x, x_902.z, x_902.z) * vec4<f32>(x_904.x, x_904.x, x_904.z, x_904.z));
        let x_907 : vec4<f32> = u_xlat8;
        let x_911 : vec2<f32> = (vec2<f32>(x_907.y, x_907.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_912 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_911.x, x_912.y, x_911.y, x_912.w);
        let x_914 : vec4<f32> = u_xlat8;
        let x_917 : vec2<f32> = u_xlat56;
        let x_919 : vec2<f32> = ((vec2<f32>(x_914.x, x_914.z) * vec2<f32>(0.5f, 0.5f)) + -(x_917));
        let x_920 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_919.x, x_919.y, x_920.z, x_920.w);
        let x_923 : vec2<f32> = u_xlat56;
        u_xlat58 = (-(x_923) + vec2<f32>(1.0f, 1.0f));
        let x_927 : vec2<f32> = u_xlat56;
        let x_929 : vec2<f32> = min(x_927, vec2<f32>(0.0f, 0.0f));
        let x_930 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_929.x, x_929.y, x_930.z, x_930.w);
        let x_932 : vec4<f32> = u_xlat9;
        let x_935 : vec4<f32> = u_xlat9;
        let x_938 : vec2<f32> = u_xlat58;
        let x_939 : vec2<f32> = ((-(vec2<f32>(x_932.x, x_932.y)) * vec2<f32>(x_935.x, x_935.y)) + x_938);
        let x_940 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_939.x, x_939.y, x_940.z, x_940.w);
        let x_942 : vec2<f32> = u_xlat56;
        u_xlat56 = max(x_942, vec2<f32>(0.0f, 0.0f));
        let x_944 : vec2<f32> = u_xlat56;
        let x_946 : vec2<f32> = u_xlat56;
        let x_948 : vec4<f32> = u_xlat7;
        u_xlat56 = ((-(x_944) * x_946) + vec2<f32>(x_948.y, x_948.w));
        let x_951 : vec4<f32> = u_xlat9;
        let x_953 : vec2<f32> = (vec2<f32>(x_951.x, x_951.y) + vec2<f32>(1.0f, 1.0f));
        let x_954 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_953.x, x_953.y, x_954.z, x_954.w);
        let x_956 : vec2<f32> = u_xlat56;
        u_xlat56 = (x_956 + vec2<f32>(1.0f, 1.0f));
        let x_958 : vec4<f32> = u_xlat8;
        let x_962 : vec2<f32> = (vec2<f32>(x_958.x, x_958.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_963 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_962.x, x_962.y, x_963.z, x_963.w);
        let x_965 : vec2<f32> = u_xlat58;
        let x_966 : vec2<f32> = (x_965 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_967 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_966.x, x_966.y, x_967.z, x_967.w);
        let x_969 : vec4<f32> = u_xlat9;
        let x_971 : vec2<f32> = (vec2<f32>(x_969.x, x_969.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_972 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_971.x, x_971.y, x_972.z, x_972.w);
        let x_974 : vec2<f32> = u_xlat56;
        let x_975 : vec2<f32> = (x_974 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_976 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_975.x, x_975.y, x_976.z, x_976.w);
        let x_978 : vec4<f32> = u_xlat7;
        u_xlat56 = (vec2<f32>(x_978.y, x_978.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_982 : f32 = u_xlat9.x;
        u_xlat10.z = x_982;
        let x_985 : f32 = u_xlat56.x;
        u_xlat10.w = x_985;
        let x_988 : f32 = u_xlat11.x;
        u_xlat8.z = x_988;
        let x_991 : f32 = u_xlat7.x;
        u_xlat8.w = x_991;
        let x_993 : vec4<f32> = u_xlat8;
        let x_995 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_993.z, x_993.w, x_993.x, x_993.z) + vec4<f32>(x_995.z, x_995.w, x_995.x, x_995.z));
        let x_999 : f32 = u_xlat10.y;
        u_xlat9.z = x_999;
        let x_1002 : f32 = u_xlat56.y;
        u_xlat9.w = x_1002;
        let x_1005 : f32 = u_xlat8.y;
        u_xlat11.z = x_1005;
        let x_1008 : f32 = u_xlat7.z;
        u_xlat11.w = x_1008;
        let x_1010 : vec4<f32> = u_xlat9;
        let x_1012 : vec4<f32> = u_xlat11;
        let x_1014 : vec3<f32> = (vec3<f32>(x_1010.z, x_1010.y, x_1010.w) + vec3<f32>(x_1012.z, x_1012.y, x_1012.w));
        let x_1015 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1014.x, x_1014.y, x_1014.z, x_1015.w);
        let x_1017 : vec4<f32> = u_xlat8;
        let x_1019 : vec4<f32> = u_xlat12;
        let x_1021 : vec3<f32> = (vec3<f32>(x_1017.x, x_1017.z, x_1017.w) / vec3<f32>(x_1019.z, x_1019.w, x_1019.y));
        let x_1022 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1021.x, x_1021.y, x_1021.z, x_1022.w);
        let x_1024 : vec4<f32> = u_xlat8;
        let x_1030 : vec3<f32> = (vec3<f32>(x_1024.x, x_1024.y, x_1024.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1031 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1030.x, x_1030.y, x_1030.z, x_1031.w);
        let x_1033 : vec4<f32> = u_xlat11;
        let x_1035 : vec4<f32> = u_xlat7;
        let x_1037 : vec3<f32> = (vec3<f32>(x_1033.z, x_1033.y, x_1033.w) / vec3<f32>(x_1035.x, x_1035.y, x_1035.z));
        let x_1038 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1037.x, x_1037.y, x_1037.z, x_1038.w);
        let x_1040 : vec4<f32> = u_xlat9;
        let x_1042 : vec3<f32> = (vec3<f32>(x_1040.x, x_1040.y, x_1040.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1043 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1042.x, x_1042.y, x_1042.z, x_1043.w);
        let x_1045 : vec4<f32> = u_xlat8;
        let x_1048 : vec4<f32> = x_768.x_MainLightShadowmapSize;
        let x_1050 : vec3<f32> = (vec3<f32>(x_1045.y, x_1045.x, x_1045.z) * vec3<f32>(x_1048.x, x_1048.x, x_1048.x));
        let x_1051 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1050.x, x_1050.y, x_1050.z, x_1051.w);
        let x_1053 : vec4<f32> = u_xlat9;
        let x_1056 : vec4<f32> = x_768.x_MainLightShadowmapSize;
        let x_1058 : vec3<f32> = (vec3<f32>(x_1053.x, x_1053.y, x_1053.z) * vec3<f32>(x_1056.y, x_1056.y, x_1056.y));
        let x_1059 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1058.x, x_1058.y, x_1058.z, x_1059.w);
        let x_1062 : f32 = u_xlat9.x;
        u_xlat8.w = x_1062;
        let x_1064 : vec4<f32> = u_xlat6;
        let x_1067 : vec4<f32> = x_768.x_MainLightShadowmapSize;
        let x_1070 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1064.x, x_1064.y, x_1064.x, x_1064.y) * vec4<f32>(x_1067.x, x_1067.y, x_1067.x, x_1067.y)) + vec4<f32>(x_1070.y, x_1070.w, x_1070.x, x_1070.w));
        let x_1073 : vec4<f32> = u_xlat6;
        let x_1076 : vec4<f32> = x_768.x_MainLightShadowmapSize;
        let x_1079 : vec4<f32> = u_xlat8;
        u_xlat56 = ((vec2<f32>(x_1073.x, x_1073.y) * vec2<f32>(x_1076.x, x_1076.y)) + vec2<f32>(x_1079.z, x_1079.w));
        let x_1083 : f32 = u_xlat8.y;
        u_xlat9.w = x_1083;
        let x_1085 : vec4<f32> = u_xlat9;
        let x_1086 : vec2<f32> = vec2<f32>(x_1085.y, x_1085.z);
        let x_1087 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1087.x, x_1086.x, x_1087.z, x_1086.y);
        let x_1089 : vec4<f32> = u_xlat6;
        let x_1092 : vec4<f32> = x_768.x_MainLightShadowmapSize;
        let x_1095 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1089.x, x_1089.y, x_1089.x, x_1089.y) * vec4<f32>(x_1092.x, x_1092.y, x_1092.x, x_1092.y)) + vec4<f32>(x_1095.x, x_1095.y, x_1095.z, x_1095.y));
        let x_1098 : vec4<f32> = u_xlat6;
        let x_1101 : vec4<f32> = x_768.x_MainLightShadowmapSize;
        let x_1104 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1098.x, x_1098.y, x_1098.x, x_1098.y) * vec4<f32>(x_1101.x, x_1101.y, x_1101.x, x_1101.y)) + vec4<f32>(x_1104.w, x_1104.y, x_1104.w, x_1104.z));
        let x_1107 : vec4<f32> = u_xlat6;
        let x_1110 : vec4<f32> = x_768.x_MainLightShadowmapSize;
        let x_1113 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1107.x, x_1107.y, x_1107.x, x_1107.y) * vec4<f32>(x_1110.x, x_1110.y, x_1110.x, x_1110.y)) + vec4<f32>(x_1113.x, x_1113.w, x_1113.z, x_1113.w));
        let x_1116 : vec4<f32> = u_xlat7;
        let x_1118 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_1116.x, x_1116.x, x_1116.x, x_1116.y) * vec4<f32>(x_1118.z, x_1118.w, x_1118.y, x_1118.z));
        let x_1122 : vec4<f32> = u_xlat7;
        let x_1124 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_1122.y, x_1122.y, x_1122.z, x_1122.z) * x_1124);
        let x_1128 : f32 = u_xlat7.z;
        let x_1130 : f32 = u_xlat12.y;
        u_xlat80 = (x_1128 * x_1130);
        let x_1133 : vec4<f32> = u_xlat10;
        let x_1134 : vec2<f32> = vec2<f32>(x_1133.x, x_1133.y);
        let x_1136 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_1134.x, x_1134.y, x_1136);
        let x_1143 : vec3<f32> = txVec4;
        let x_1145 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1143.xy, x_1143.z);
        u_xlat6.x = x_1145;
        let x_1148 : vec4<f32> = u_xlat10;
        let x_1149 : vec2<f32> = vec2<f32>(x_1148.z, x_1148.w);
        let x_1151 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_1149.x, x_1149.y, x_1151);
        let x_1159 : vec3<f32> = txVec5;
        let x_1161 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1159.xy, x_1159.z);
        u_xlat31 = x_1161;
        let x_1162 : f32 = u_xlat31;
        let x_1164 : f32 = u_xlat13.y;
        u_xlat31 = (x_1162 * x_1164);
        let x_1167 : f32 = u_xlat13.x;
        let x_1169 : f32 = u_xlat6.x;
        let x_1171 : f32 = u_xlat31;
        u_xlat6.x = ((x_1167 * x_1169) + x_1171);
        let x_1175 : vec2<f32> = u_xlat56;
        let x_1177 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_1175.x, x_1175.y, x_1177);
        let x_1184 : vec3<f32> = txVec6;
        let x_1186 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1184.xy, x_1184.z);
        u_xlat31 = x_1186;
        let x_1188 : f32 = u_xlat13.z;
        let x_1189 : f32 = u_xlat31;
        let x_1192 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1188 * x_1189) + x_1192);
        let x_1196 : vec4<f32> = u_xlat9;
        let x_1197 : vec2<f32> = vec2<f32>(x_1196.x, x_1196.y);
        let x_1199 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_1197.x, x_1197.y, x_1199);
        let x_1206 : vec3<f32> = txVec7;
        let x_1208 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1206.xy, x_1206.z);
        u_xlat31 = x_1208;
        let x_1210 : f32 = u_xlat13.w;
        let x_1211 : f32 = u_xlat31;
        let x_1214 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1210 * x_1211) + x_1214);
        let x_1218 : vec4<f32> = u_xlat11;
        let x_1219 : vec2<f32> = vec2<f32>(x_1218.x, x_1218.y);
        let x_1221 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_1219.x, x_1219.y, x_1221);
        let x_1228 : vec3<f32> = txVec8;
        let x_1230 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1228.xy, x_1228.z);
        u_xlat31 = x_1230;
        let x_1232 : f32 = u_xlat14.x;
        let x_1233 : f32 = u_xlat31;
        let x_1236 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1232 * x_1233) + x_1236);
        let x_1240 : vec4<f32> = u_xlat11;
        let x_1241 : vec2<f32> = vec2<f32>(x_1240.z, x_1240.w);
        let x_1243 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_1241.x, x_1241.y, x_1243);
        let x_1250 : vec3<f32> = txVec9;
        let x_1252 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1250.xy, x_1250.z);
        u_xlat31 = x_1252;
        let x_1254 : f32 = u_xlat14.y;
        let x_1255 : f32 = u_xlat31;
        let x_1258 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1254 * x_1255) + x_1258);
        let x_1262 : vec4<f32> = u_xlat9;
        let x_1263 : vec2<f32> = vec2<f32>(x_1262.z, x_1262.w);
        let x_1265 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_1263.x, x_1263.y, x_1265);
        let x_1272 : vec3<f32> = txVec10;
        let x_1274 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1272.xy, x_1272.z);
        u_xlat31 = x_1274;
        let x_1276 : f32 = u_xlat14.z;
        let x_1277 : f32 = u_xlat31;
        let x_1280 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1276 * x_1277) + x_1280);
        let x_1284 : vec4<f32> = u_xlat8;
        let x_1285 : vec2<f32> = vec2<f32>(x_1284.x, x_1284.y);
        let x_1287 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_1285.x, x_1285.y, x_1287);
        let x_1294 : vec3<f32> = txVec11;
        let x_1296 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1294.xy, x_1294.z);
        u_xlat31 = x_1296;
        let x_1298 : f32 = u_xlat14.w;
        let x_1299 : f32 = u_xlat31;
        let x_1302 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1298 * x_1299) + x_1302);
        let x_1306 : vec4<f32> = u_xlat8;
        let x_1307 : vec2<f32> = vec2<f32>(x_1306.z, x_1306.w);
        let x_1309 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_1307.x, x_1307.y, x_1309);
        let x_1316 : vec3<f32> = txVec12;
        let x_1318 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1316.xy, x_1316.z);
        u_xlat31 = x_1318;
        let x_1319 : f32 = u_xlat80;
        let x_1320 : f32 = u_xlat31;
        let x_1323 : f32 = u_xlat6.x;
        u_xlat79 = ((x_1319 * x_1320) + x_1323);
      } else {
        let x_1326 : vec4<f32> = vs_TEXCOORD8;
        let x_1329 : vec4<f32> = x_768.x_MainLightShadowmapSize;
        let x_1332 : vec2<f32> = ((vec2<f32>(x_1326.x, x_1326.y) * vec2<f32>(x_1329.z, x_1329.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1333 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1332.x, x_1332.y, x_1333.z, x_1333.w);
        let x_1335 : vec4<f32> = u_xlat6;
        let x_1337 : vec2<f32> = floor(vec2<f32>(x_1335.x, x_1335.y));
        let x_1338 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1337.x, x_1337.y, x_1338.z, x_1338.w);
        let x_1340 : vec4<f32> = vs_TEXCOORD8;
        let x_1343 : vec4<f32> = x_768.x_MainLightShadowmapSize;
        let x_1346 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_1340.x, x_1340.y) * vec2<f32>(x_1343.z, x_1343.w)) + -(vec2<f32>(x_1346.x, x_1346.y)));
        let x_1350 : vec2<f32> = u_xlat56;
        u_xlat7 = (vec4<f32>(x_1350.x, x_1350.x, x_1350.y, x_1350.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1353 : vec4<f32> = u_xlat7;
        let x_1355 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1353.x, x_1353.x, x_1353.z, x_1353.z) * vec4<f32>(x_1355.x, x_1355.x, x_1355.z, x_1355.z));
        let x_1358 : vec4<f32> = u_xlat8;
        let x_1362 : vec2<f32> = (vec2<f32>(x_1358.y, x_1358.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1363 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1363.x, x_1362.x, x_1363.z, x_1362.y);
        let x_1365 : vec4<f32> = u_xlat8;
        let x_1368 : vec2<f32> = u_xlat56;
        let x_1370 : vec2<f32> = ((vec2<f32>(x_1365.x, x_1365.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1368));
        let x_1371 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1370.x, x_1371.y, x_1370.y, x_1371.w);
        let x_1373 : vec2<f32> = u_xlat56;
        let x_1375 : vec2<f32> = (-(x_1373) + vec2<f32>(1.0f, 1.0f));
        let x_1376 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1375.x, x_1375.y, x_1376.z, x_1376.w);
        let x_1378 : vec2<f32> = u_xlat56;
        u_xlat58 = min(x_1378, vec2<f32>(0.0f, 0.0f));
        let x_1380 : vec2<f32> = u_xlat58;
        let x_1382 : vec2<f32> = u_xlat58;
        let x_1384 : vec4<f32> = u_xlat8;
        let x_1386 : vec2<f32> = ((-(x_1380) * x_1382) + vec2<f32>(x_1384.x, x_1384.y));
        let x_1387 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1386.x, x_1386.y, x_1387.z, x_1387.w);
        let x_1389 : vec2<f32> = u_xlat56;
        u_xlat58 = max(x_1389, vec2<f32>(0.0f, 0.0f));
        let x_1392 : vec2<f32> = u_xlat58;
        let x_1394 : vec2<f32> = u_xlat58;
        let x_1396 : vec4<f32> = u_xlat7;
        let x_1398 : vec2<f32> = ((-(x_1392) * x_1394) + vec2<f32>(x_1396.y, x_1396.w));
        let x_1399 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_1398.x, x_1399.y, x_1398.y);
        let x_1401 : vec4<f32> = u_xlat8;
        let x_1404 : vec2<f32> = (vec2<f32>(x_1401.x, x_1401.y) + vec2<f32>(2.0f, 2.0f));
        let x_1405 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1404.x, x_1404.y, x_1405.z, x_1405.w);
        let x_1407 : vec3<f32> = u_xlat32;
        let x_1409 : vec2<f32> = (vec2<f32>(x_1407.x, x_1407.z) + vec2<f32>(2.0f, 2.0f));
        let x_1410 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1410.x, x_1409.x, x_1410.z, x_1409.y);
        let x_1413 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1413 * 0.08163200318813323975f);
        let x_1417 : vec4<f32> = u_xlat7;
        let x_1420 : vec3<f32> = (vec3<f32>(x_1417.z, x_1417.x, x_1417.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1421 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1420.x, x_1420.y, x_1420.z, x_1421.w);
        let x_1423 : vec4<f32> = u_xlat8;
        let x_1426 : vec2<f32> = (vec2<f32>(x_1423.x, x_1423.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1427 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1426.x, x_1426.y, x_1427.z, x_1427.w);
        let x_1430 : f32 = u_xlat11.y;
        u_xlat10.x = x_1430;
        let x_1432 : vec2<f32> = u_xlat56;
        let x_1439 : vec2<f32> = ((vec2<f32>(x_1432.x, x_1432.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1440 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1440.x, x_1439.x, x_1440.z, x_1439.y);
        let x_1442 : vec2<f32> = u_xlat56;
        let x_1446 : vec2<f32> = ((vec2<f32>(x_1442.x, x_1442.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1447 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1446.x, x_1447.y, x_1446.y, x_1447.w);
        let x_1450 : f32 = u_xlat7.x;
        u_xlat8.y = x_1450;
        let x_1453 : f32 = u_xlat9.y;
        u_xlat8.w = x_1453;
        let x_1455 : vec4<f32> = u_xlat8;
        let x_1456 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1455 + x_1456);
        let x_1458 : vec2<f32> = u_xlat56;
        let x_1461 : vec2<f32> = ((vec2<f32>(x_1458.y, x_1458.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1462 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1462.x, x_1461.x, x_1462.z, x_1461.y);
        let x_1464 : vec2<f32> = u_xlat56;
        let x_1467 : vec2<f32> = ((vec2<f32>(x_1464.y, x_1464.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1468 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1467.x, x_1468.y, x_1467.y, x_1468.w);
        let x_1471 : f32 = u_xlat7.y;
        u_xlat9.y = x_1471;
        let x_1473 : vec4<f32> = u_xlat9;
        let x_1474 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1473 + x_1474);
        let x_1476 : vec4<f32> = u_xlat8;
        let x_1477 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1476 / x_1477);
        let x_1479 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1479 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1485 : vec4<f32> = u_xlat9;
        let x_1486 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1485 / x_1486);
        let x_1488 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1488 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1490 : vec4<f32> = u_xlat8;
        let x_1493 : vec4<f32> = x_768.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1490.w, x_1490.x, x_1490.y, x_1490.z) * vec4<f32>(x_1493.x, x_1493.x, x_1493.x, x_1493.x));
        let x_1496 : vec4<f32> = u_xlat9;
        let x_1499 : vec4<f32> = x_768.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1496.x, x_1496.w, x_1496.y, x_1496.z) * vec4<f32>(x_1499.y, x_1499.y, x_1499.y, x_1499.y));
        let x_1502 : vec4<f32> = u_xlat8;
        let x_1503 : vec3<f32> = vec3<f32>(x_1502.y, x_1502.z, x_1502.w);
        let x_1504 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1503.x, x_1504.y, x_1503.y, x_1503.z);
        let x_1507 : f32 = u_xlat9.x;
        u_xlat11.y = x_1507;
        let x_1509 : vec4<f32> = u_xlat6;
        let x_1512 : vec4<f32> = x_768.x_MainLightShadowmapSize;
        let x_1515 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1509.x, x_1509.y, x_1509.x, x_1509.y) * vec4<f32>(x_1512.x, x_1512.y, x_1512.x, x_1512.y)) + vec4<f32>(x_1515.x, x_1515.y, x_1515.z, x_1515.y));
        let x_1518 : vec4<f32> = u_xlat6;
        let x_1521 : vec4<f32> = x_768.x_MainLightShadowmapSize;
        let x_1524 : vec4<f32> = u_xlat11;
        u_xlat56 = ((vec2<f32>(x_1518.x, x_1518.y) * vec2<f32>(x_1521.x, x_1521.y)) + vec2<f32>(x_1524.w, x_1524.y));
        let x_1528 : f32 = u_xlat11.y;
        u_xlat8.y = x_1528;
        let x_1531 : f32 = u_xlat9.z;
        u_xlat11.y = x_1531;
        let x_1533 : vec4<f32> = u_xlat6;
        let x_1536 : vec4<f32> = x_768.x_MainLightShadowmapSize;
        let x_1539 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1533.x, x_1533.y, x_1533.x, x_1533.y) * vec4<f32>(x_1536.x, x_1536.y, x_1536.x, x_1536.y)) + vec4<f32>(x_1539.x, x_1539.y, x_1539.z, x_1539.y));
        let x_1542 : vec4<f32> = u_xlat6;
        let x_1545 : vec4<f32> = x_768.x_MainLightShadowmapSize;
        let x_1548 : vec4<f32> = u_xlat11;
        let x_1550 : vec2<f32> = ((vec2<f32>(x_1542.x, x_1542.y) * vec2<f32>(x_1545.x, x_1545.y)) + vec2<f32>(x_1548.w, x_1548.y));
        let x_1551 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1550.x, x_1550.y, x_1551.z, x_1551.w);
        let x_1554 : f32 = u_xlat11.y;
        u_xlat8.z = x_1554;
        let x_1557 : vec4<f32> = u_xlat6;
        let x_1560 : vec4<f32> = x_768.x_MainLightShadowmapSize;
        let x_1563 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1557.x, x_1557.y, x_1557.x, x_1557.y) * vec4<f32>(x_1560.x, x_1560.y, x_1560.x, x_1560.y)) + vec4<f32>(x_1563.x, x_1563.y, x_1563.x, x_1563.z));
        let x_1567 : f32 = u_xlat9.w;
        u_xlat11.y = x_1567;
        let x_1570 : vec4<f32> = u_xlat6;
        let x_1573 : vec4<f32> = x_768.x_MainLightShadowmapSize;
        let x_1576 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1570.x, x_1570.y, x_1570.x, x_1570.y) * vec4<f32>(x_1573.x, x_1573.y, x_1573.x, x_1573.y)) + vec4<f32>(x_1576.x, x_1576.y, x_1576.z, x_1576.y));
        let x_1580 : vec4<f32> = u_xlat6;
        let x_1583 : vec4<f32> = x_768.x_MainLightShadowmapSize;
        let x_1586 : vec4<f32> = u_xlat11;
        u_xlat33 = ((vec2<f32>(x_1580.x, x_1580.y) * vec2<f32>(x_1583.x, x_1583.y)) + vec2<f32>(x_1586.w, x_1586.y));
        let x_1590 : f32 = u_xlat11.y;
        u_xlat8.w = x_1590;
        let x_1593 : vec4<f32> = u_xlat6;
        let x_1596 : vec4<f32> = x_768.x_MainLightShadowmapSize;
        let x_1599 : vec4<f32> = u_xlat8;
        u_xlat64 = ((vec2<f32>(x_1593.x, x_1593.y) * vec2<f32>(x_1596.x, x_1596.y)) + vec2<f32>(x_1599.x, x_1599.w));
        let x_1602 : vec4<f32> = u_xlat11;
        let x_1603 : vec3<f32> = vec3<f32>(x_1602.x, x_1602.z, x_1602.w);
        let x_1604 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1603.x, x_1604.y, x_1603.y, x_1603.z);
        let x_1606 : vec4<f32> = u_xlat6;
        let x_1609 : vec4<f32> = x_768.x_MainLightShadowmapSize;
        let x_1612 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1606.x, x_1606.y, x_1606.x, x_1606.y) * vec4<f32>(x_1609.x, x_1609.y, x_1609.x, x_1609.y)) + vec4<f32>(x_1612.x, x_1612.y, x_1612.z, x_1612.y));
        let x_1616 : vec4<f32> = u_xlat6;
        let x_1619 : vec4<f32> = x_768.x_MainLightShadowmapSize;
        let x_1622 : vec4<f32> = u_xlat9;
        u_xlat59 = ((vec2<f32>(x_1616.x, x_1616.y) * vec2<f32>(x_1619.x, x_1619.y)) + vec2<f32>(x_1622.w, x_1622.y));
        let x_1626 : f32 = u_xlat8.x;
        u_xlat9.x = x_1626;
        let x_1628 : vec4<f32> = u_xlat6;
        let x_1631 : vec4<f32> = x_768.x_MainLightShadowmapSize;
        let x_1634 : vec4<f32> = u_xlat9;
        let x_1636 : vec2<f32> = ((vec2<f32>(x_1628.x, x_1628.y) * vec2<f32>(x_1631.x, x_1631.y)) + vec2<f32>(x_1634.x, x_1634.y));
        let x_1637 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1636.x, x_1636.y, x_1637.z, x_1637.w);
        let x_1640 : vec4<f32> = u_xlat7;
        let x_1642 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1640.x, x_1640.x, x_1640.x, x_1640.x) * x_1642);
        let x_1645 : vec4<f32> = u_xlat7;
        let x_1647 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1645.y, x_1645.y, x_1645.y, x_1645.y) * x_1647);
        let x_1650 : vec4<f32> = u_xlat7;
        let x_1652 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1650.z, x_1650.z, x_1650.z, x_1650.z) * x_1652);
        let x_1654 : vec4<f32> = u_xlat7;
        let x_1656 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1654.w, x_1654.w, x_1654.w, x_1654.w) * x_1656);
        let x_1659 : vec4<f32> = u_xlat12;
        let x_1660 : vec2<f32> = vec2<f32>(x_1659.x, x_1659.y);
        let x_1662 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1660.x, x_1660.y, x_1662);
        let x_1669 : vec3<f32> = txVec13;
        let x_1671 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1669.xy, x_1669.z);
        u_xlat80 = x_1671;
        let x_1673 : vec4<f32> = u_xlat12;
        let x_1674 : vec2<f32> = vec2<f32>(x_1673.z, x_1673.w);
        let x_1676 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1674.x, x_1674.y, x_1676);
        let x_1683 : vec3<f32> = txVec14;
        let x_1685 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1683.xy, x_1683.z);
        u_xlat8.x = x_1685;
        let x_1688 : f32 = u_xlat8.x;
        let x_1690 : f32 = u_xlat17.y;
        u_xlat8.x = (x_1688 * x_1690);
        let x_1694 : f32 = u_xlat17.x;
        let x_1695 : f32 = u_xlat80;
        let x_1698 : f32 = u_xlat8.x;
        u_xlat80 = ((x_1694 * x_1695) + x_1698);
        let x_1701 : vec2<f32> = u_xlat56;
        let x_1703 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1701.x, x_1701.y, x_1703);
        let x_1710 : vec3<f32> = txVec15;
        let x_1712 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1710.xy, x_1710.z);
        u_xlat56.x = x_1712;
        let x_1715 : f32 = u_xlat17.z;
        let x_1717 : f32 = u_xlat56.x;
        let x_1719 : f32 = u_xlat80;
        u_xlat80 = ((x_1715 * x_1717) + x_1719);
        let x_1722 : vec4<f32> = u_xlat15;
        let x_1723 : vec2<f32> = vec2<f32>(x_1722.x, x_1722.y);
        let x_1725 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1723.x, x_1723.y, x_1725);
        let x_1732 : vec3<f32> = txVec16;
        let x_1734 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1732.xy, x_1732.z);
        u_xlat56.x = x_1734;
        let x_1737 : f32 = u_xlat17.w;
        let x_1739 : f32 = u_xlat56.x;
        let x_1741 : f32 = u_xlat80;
        u_xlat80 = ((x_1737 * x_1739) + x_1741);
        let x_1744 : vec4<f32> = u_xlat13;
        let x_1745 : vec2<f32> = vec2<f32>(x_1744.x, x_1744.y);
        let x_1747 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1745.x, x_1745.y, x_1747);
        let x_1754 : vec3<f32> = txVec17;
        let x_1756 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1754.xy, x_1754.z);
        u_xlat56.x = x_1756;
        let x_1759 : f32 = u_xlat18.x;
        let x_1761 : f32 = u_xlat56.x;
        let x_1763 : f32 = u_xlat80;
        u_xlat80 = ((x_1759 * x_1761) + x_1763);
        let x_1766 : vec4<f32> = u_xlat13;
        let x_1767 : vec2<f32> = vec2<f32>(x_1766.z, x_1766.w);
        let x_1769 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1767.x, x_1767.y, x_1769);
        let x_1776 : vec3<f32> = txVec18;
        let x_1778 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1776.xy, x_1776.z);
        u_xlat56.x = x_1778;
        let x_1781 : f32 = u_xlat18.y;
        let x_1783 : f32 = u_xlat56.x;
        let x_1785 : f32 = u_xlat80;
        u_xlat80 = ((x_1781 * x_1783) + x_1785);
        let x_1788 : vec4<f32> = u_xlat14;
        let x_1789 : vec2<f32> = vec2<f32>(x_1788.x, x_1788.y);
        let x_1791 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1789.x, x_1789.y, x_1791);
        let x_1798 : vec3<f32> = txVec19;
        let x_1800 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1798.xy, x_1798.z);
        u_xlat56.x = x_1800;
        let x_1803 : f32 = u_xlat18.z;
        let x_1805 : f32 = u_xlat56.x;
        let x_1807 : f32 = u_xlat80;
        u_xlat80 = ((x_1803 * x_1805) + x_1807);
        let x_1810 : vec4<f32> = u_xlat15;
        let x_1811 : vec2<f32> = vec2<f32>(x_1810.z, x_1810.w);
        let x_1813 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1811.x, x_1811.y, x_1813);
        let x_1820 : vec3<f32> = txVec20;
        let x_1822 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1820.xy, x_1820.z);
        u_xlat56.x = x_1822;
        let x_1825 : f32 = u_xlat18.w;
        let x_1827 : f32 = u_xlat56.x;
        let x_1829 : f32 = u_xlat80;
        u_xlat80 = ((x_1825 * x_1827) + x_1829);
        let x_1832 : vec4<f32> = u_xlat16;
        let x_1833 : vec2<f32> = vec2<f32>(x_1832.x, x_1832.y);
        let x_1835 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1833.x, x_1833.y, x_1835);
        let x_1842 : vec3<f32> = txVec21;
        let x_1844 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1842.xy, x_1842.z);
        u_xlat56.x = x_1844;
        let x_1847 : f32 = u_xlat19.x;
        let x_1849 : f32 = u_xlat56.x;
        let x_1851 : f32 = u_xlat80;
        u_xlat80 = ((x_1847 * x_1849) + x_1851);
        let x_1854 : vec4<f32> = u_xlat16;
        let x_1855 : vec2<f32> = vec2<f32>(x_1854.z, x_1854.w);
        let x_1857 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1855.x, x_1855.y, x_1857);
        let x_1864 : vec3<f32> = txVec22;
        let x_1866 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1864.xy, x_1864.z);
        u_xlat56.x = x_1866;
        let x_1869 : f32 = u_xlat19.y;
        let x_1871 : f32 = u_xlat56.x;
        let x_1873 : f32 = u_xlat80;
        u_xlat80 = ((x_1869 * x_1871) + x_1873);
        let x_1876 : vec2<f32> = u_xlat33;
        let x_1878 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1876.x, x_1876.y, x_1878);
        let x_1885 : vec3<f32> = txVec23;
        let x_1887 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1885.xy, x_1885.z);
        u_xlat56.x = x_1887;
        let x_1890 : f32 = u_xlat19.z;
        let x_1892 : f32 = u_xlat56.x;
        let x_1894 : f32 = u_xlat80;
        u_xlat80 = ((x_1890 * x_1892) + x_1894);
        let x_1897 : vec2<f32> = u_xlat64;
        let x_1899 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1897.x, x_1897.y, x_1899);
        let x_1906 : vec3<f32> = txVec24;
        let x_1908 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1906.xy, x_1906.z);
        u_xlat56.x = x_1908;
        let x_1911 : f32 = u_xlat19.w;
        let x_1913 : f32 = u_xlat56.x;
        let x_1915 : f32 = u_xlat80;
        u_xlat80 = ((x_1911 * x_1913) + x_1915);
        let x_1918 : vec4<f32> = u_xlat11;
        let x_1919 : vec2<f32> = vec2<f32>(x_1918.x, x_1918.y);
        let x_1921 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1919.x, x_1919.y, x_1921);
        let x_1928 : vec3<f32> = txVec25;
        let x_1930 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1928.xy, x_1928.z);
        u_xlat56.x = x_1930;
        let x_1933 : f32 = u_xlat7.x;
        let x_1935 : f32 = u_xlat56.x;
        let x_1937 : f32 = u_xlat80;
        u_xlat80 = ((x_1933 * x_1935) + x_1937);
        let x_1940 : vec4<f32> = u_xlat11;
        let x_1941 : vec2<f32> = vec2<f32>(x_1940.z, x_1940.w);
        let x_1943 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1941.x, x_1941.y, x_1943);
        let x_1950 : vec3<f32> = txVec26;
        let x_1952 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1950.xy, x_1950.z);
        u_xlat56.x = x_1952;
        let x_1955 : f32 = u_xlat7.y;
        let x_1957 : f32 = u_xlat56.x;
        let x_1959 : f32 = u_xlat80;
        u_xlat80 = ((x_1955 * x_1957) + x_1959);
        let x_1962 : vec2<f32> = u_xlat59;
        let x_1964 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_1962.x, x_1962.y, x_1964);
        let x_1971 : vec3<f32> = txVec27;
        let x_1973 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1971.xy, x_1971.z);
        u_xlat56.x = x_1973;
        let x_1976 : f32 = u_xlat7.z;
        let x_1978 : f32 = u_xlat56.x;
        let x_1980 : f32 = u_xlat80;
        u_xlat80 = ((x_1976 * x_1978) + x_1980);
        let x_1983 : vec4<f32> = u_xlat6;
        let x_1984 : vec2<f32> = vec2<f32>(x_1983.x, x_1983.y);
        let x_1986 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_1984.x, x_1984.y, x_1986);
        let x_1993 : vec3<f32> = txVec28;
        let x_1995 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1993.xy, x_1993.z);
        u_xlat6.x = x_1995;
        let x_1998 : f32 = u_xlat7.w;
        let x_2000 : f32 = u_xlat6.x;
        let x_2002 : f32 = u_xlat80;
        u_xlat79 = ((x_1998 * x_2000) + x_2002);
      }
    }
  } else {
    let x_2006 : vec4<f32> = vs_TEXCOORD8;
    let x_2007 : vec2<f32> = vec2<f32>(x_2006.x, x_2006.y);
    let x_2009 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_2007.x, x_2007.y, x_2009);
    let x_2016 : vec3<f32> = txVec29;
    let x_2018 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2016.xy, x_2016.z);
    u_xlat79 = x_2018;
  }
  let x_2020 : f32 = x_768.x_MainLightShadowParams.x;
  u_xlat80 = (-(x_2020) + 1.0f);
  let x_2023 : f32 = u_xlat79;
  let x_2025 : f32 = x_768.x_MainLightShadowParams.x;
  let x_2027 : f32 = u_xlat80;
  u_xlat79 = ((x_2023 * x_2025) + x_2027);
  let x_2030 : f32 = vs_TEXCOORD8.z;
  u_xlatb80 = (0.0f >= x_2030);
  let x_2034 : f32 = vs_TEXCOORD8.z;
  u_xlatb6 = (x_2034 >= 1.0f);
  let x_2036 : bool = u_xlatb80;
  let x_2037 : bool = u_xlatb6;
  u_xlatb80 = (x_2036 | x_2037);
  let x_2039 : bool = u_xlatb80;
  let x_2040 : f32 = u_xlat79;
  u_xlat79 = select(x_2040, 1.0f, x_2039);
  let x_2042 : vec3<f32> = vs_TEXCOORD7;
  let x_2044 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_2046 : vec3<f32> = (x_2042 + -(x_2044));
  let x_2047 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2046.x, x_2046.y, x_2046.z, x_2047.w);
  let x_2049 : vec4<f32> = u_xlat6;
  let x_2051 : vec4<f32> = u_xlat6;
  u_xlat80 = dot(vec3<f32>(x_2049.x, x_2049.y, x_2049.z), vec3<f32>(x_2051.x, x_2051.y, x_2051.z));
  let x_2054 : f32 = u_xlat80;
  let x_2056 : f32 = x_768.x_MainLightShadowParams.z;
  let x_2059 : f32 = x_768.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_2054 * x_2056) + x_2059);
  let x_2063 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_2063, 0.0f, 1.0f);
  let x_2066 : f32 = u_xlat79;
  u_xlat31 = (-(x_2066) + 1.0f);
  let x_2070 : f32 = u_xlat6.x;
  let x_2071 : f32 = u_xlat31;
  let x_2073 : f32 = u_xlat79;
  u_xlat79 = ((x_2070 * x_2071) + x_2073);
  let x_2075 : vec3<f32> = u_xlat2;
  let x_2077 : vec4<f32> = u_xlat1;
  u_xlat6.x = dot(-(x_2075), vec3<f32>(x_2077.x, x_2077.y, x_2077.z));
  let x_2082 : f32 = u_xlat6.x;
  let x_2084 : f32 = u_xlat6.x;
  u_xlat6.x = (x_2082 + x_2084);
  let x_2087 : vec4<f32> = u_xlat1;
  let x_2089 : vec4<f32> = u_xlat6;
  let x_2093 : vec3<f32> = u_xlat2;
  let x_2095 : vec3<f32> = ((vec3<f32>(x_2087.x, x_2087.y, x_2087.z) * -(vec3<f32>(x_2089.x, x_2089.x, x_2089.x))) + -(x_2093));
  let x_2096 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2095.x, x_2095.y, x_2095.z, x_2096.w);
  let x_2099 : vec4<f32> = u_xlat1;
  let x_2101 : vec3<f32> = u_xlat2;
  u_xlat81 = dot(vec3<f32>(x_2099.x, x_2099.y, x_2099.z), x_2101);
  let x_2103 : f32 = u_xlat81;
  u_xlat81 = clamp(x_2103, 0.0f, 1.0f);
  let x_2105 : f32 = u_xlat81;
  u_xlat81 = (-(x_2105) + 1.0f);
  let x_2108 : f32 = u_xlat81;
  let x_2109 : f32 = u_xlat81;
  u_xlat81 = (x_2108 * x_2109);
  let x_2111 : f32 = u_xlat81;
  let x_2112 : f32 = u_xlat81;
  u_xlat81 = (x_2111 * x_2112);
  let x_2115 : f32 = u_xlat0.x;
  u_xlat7.x = ((-(x_2115) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2123 : f32 = u_xlat0.x;
  let x_2125 : f32 = u_xlat7.x;
  u_xlat0.x = (x_2123 * x_2125);
  let x_2129 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2129 * 6.0f);
  let x_2141 : vec4<f32> = u_xlat6;
  let x_2144 : f32 = u_xlat0.x;
  let x_2145 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2141.x, x_2141.y, x_2141.z), x_2144);
  u_xlat7 = x_2145;
  let x_2147 : f32 = u_xlat7.w;
  u_xlat0.x = (x_2147 + -1.0f);
  let x_2151 : f32 = x_625.unity_SpecCube0_HDR.w;
  let x_2153 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2151 * x_2153) + 1.0f);
  let x_2158 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2158, 0.0f);
  let x_2162 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2162);
  let x_2166 : f32 = u_xlat0.x;
  let x_2168 : f32 = x_625.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2166 * x_2168);
  let x_2172 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2172);
  let x_2176 : f32 = u_xlat0.x;
  let x_2178 : f32 = x_625.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2176 * x_2178);
  let x_2181 : vec4<f32> = u_xlat7;
  let x_2183 : vec3<f32> = u_xlat0;
  let x_2185 : vec3<f32> = (vec3<f32>(x_2181.x, x_2181.y, x_2181.z) * vec3<f32>(x_2183.x, x_2183.x, x_2183.x));
  let x_2186 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2185.x, x_2185.y, x_2185.z, x_2186.w);
  let x_2188 : f32 = u_xlat50;
  let x_2190 : f32 = u_xlat50;
  let x_2194 : vec2<f32> = ((vec2<f32>(x_2188, x_2188) * vec2<f32>(x_2190, x_2190)) + vec2<f32>(-1.0f, 1.0f));
  let x_2195 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2194.x, x_2195.y, x_2194.y);
  let x_2198 : f32 = u_xlat0.z;
  u_xlat50 = (1.0f / x_2198);
  let x_2200 : vec4<f32> = u_xlat5;
  let x_2203 : f32 = u_xlat77;
  let x_2205 : vec3<f32> = (-(vec3<f32>(x_2200.x, x_2200.y, x_2200.z)) + vec3<f32>(x_2203, x_2203, x_2203));
  let x_2206 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2205.x, x_2205.y, x_2205.z, x_2206.w);
  let x_2208 : f32 = u_xlat81;
  let x_2210 : vec4<f32> = u_xlat7;
  let x_2213 : vec4<f32> = u_xlat5;
  let x_2215 : vec3<f32> = ((vec3<f32>(x_2208, x_2208, x_2208) * vec3<f32>(x_2210.x, x_2210.y, x_2210.z)) + vec3<f32>(x_2213.x, x_2213.y, x_2213.z));
  let x_2216 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2215.x, x_2215.y, x_2215.z, x_2216.w);
  let x_2218 : f32 = u_xlat50;
  let x_2220 : vec4<f32> = u_xlat7;
  let x_2222 : vec3<f32> = (vec3<f32>(x_2218, x_2218, x_2218) * vec3<f32>(x_2220.x, x_2220.y, x_2220.z));
  let x_2223 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2222.x, x_2222.y, x_2222.z, x_2223.w);
  let x_2225 : vec4<f32> = u_xlat6;
  let x_2227 : vec4<f32> = u_xlat7;
  let x_2229 : vec3<f32> = (vec3<f32>(x_2225.x, x_2225.y, x_2225.z) * vec3<f32>(x_2227.x, x_2227.y, x_2227.z));
  let x_2230 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2229.x, x_2229.y, x_2229.z, x_2230.w);
  let x_2232 : vec4<f32> = u_xlat3;
  let x_2234 : vec4<f32> = u_xlat4;
  let x_2237 : vec4<f32> = u_xlat6;
  let x_2239 : vec3<f32> = ((vec3<f32>(x_2232.x, x_2232.y, x_2232.z) * vec3<f32>(x_2234.x, x_2234.y, x_2234.z)) + vec3<f32>(x_2237.x, x_2237.y, x_2237.z));
  let x_2240 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2239.x, x_2239.y, x_2239.z, x_2240.w);
  let x_2242 : f32 = u_xlat79;
  let x_2244 : f32 = x_625.unity_LightData.z;
  u_xlat50 = (x_2242 * x_2244);
  let x_2246 : vec4<f32> = u_xlat1;
  let x_2249 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat77 = dot(vec3<f32>(x_2246.x, x_2246.y, x_2246.z), vec3<f32>(x_2249.x, x_2249.y, x_2249.z));
  let x_2252 : f32 = u_xlat77;
  u_xlat77 = clamp(x_2252, 0.0f, 1.0f);
  let x_2254 : f32 = u_xlat50;
  let x_2255 : f32 = u_xlat77;
  u_xlat50 = (x_2254 * x_2255);
  let x_2257 : f32 = u_xlat50;
  let x_2260 : vec4<f32> = x_29.x_MainLightColor;
  let x_2262 : vec3<f32> = (vec3<f32>(x_2257, x_2257, x_2257) * vec3<f32>(x_2260.x, x_2260.y, x_2260.z));
  let x_2263 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2262.x, x_2262.y, x_2262.z, x_2263.w);
  let x_2265 : vec3<f32> = u_xlat2;
  let x_2267 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2269 : vec3<f32> = (x_2265 + vec3<f32>(x_2267.x, x_2267.y, x_2267.z));
  let x_2270 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2269.x, x_2269.y, x_2269.z, x_2270.w);
  let x_2272 : vec4<f32> = u_xlat7;
  let x_2274 : vec4<f32> = u_xlat7;
  u_xlat50 = dot(vec3<f32>(x_2272.x, x_2272.y, x_2272.z), vec3<f32>(x_2274.x, x_2274.y, x_2274.z));
  let x_2277 : f32 = u_xlat50;
  u_xlat50 = max(x_2277, 1.17549435e-38f);
  let x_2280 : f32 = u_xlat50;
  u_xlat50 = inverseSqrt(x_2280);
  let x_2282 : f32 = u_xlat50;
  let x_2284 : vec4<f32> = u_xlat7;
  let x_2286 : vec3<f32> = (vec3<f32>(x_2282, x_2282, x_2282) * vec3<f32>(x_2284.x, x_2284.y, x_2284.z));
  let x_2287 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2286.x, x_2286.y, x_2286.z, x_2287.w);
  let x_2289 : vec4<f32> = u_xlat1;
  let x_2291 : vec4<f32> = u_xlat7;
  u_xlat50 = dot(vec3<f32>(x_2289.x, x_2289.y, x_2289.z), vec3<f32>(x_2291.x, x_2291.y, x_2291.z));
  let x_2294 : f32 = u_xlat50;
  u_xlat50 = clamp(x_2294, 0.0f, 1.0f);
  let x_2297 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2299 : vec4<f32> = u_xlat7;
  u_xlat77 = dot(vec3<f32>(x_2297.x, x_2297.y, x_2297.z), vec3<f32>(x_2299.x, x_2299.y, x_2299.z));
  let x_2302 : f32 = u_xlat77;
  u_xlat77 = clamp(x_2302, 0.0f, 1.0f);
  let x_2304 : f32 = u_xlat50;
  let x_2305 : f32 = u_xlat50;
  u_xlat50 = (x_2304 * x_2305);
  let x_2307 : f32 = u_xlat50;
  let x_2309 : f32 = u_xlat0.x;
  u_xlat50 = ((x_2307 * x_2309) + 1.00001001358032226562f);
  let x_2313 : f32 = u_xlat77;
  let x_2314 : f32 = u_xlat77;
  u_xlat77 = (x_2313 * x_2314);
  let x_2316 : f32 = u_xlat50;
  let x_2317 : f32 = u_xlat50;
  u_xlat50 = (x_2316 * x_2317);
  let x_2319 : f32 = u_xlat77;
  u_xlat77 = max(x_2319, 0.10000000149011611938f);
  let x_2322 : f32 = u_xlat50;
  let x_2323 : f32 = u_xlat77;
  u_xlat50 = (x_2322 * x_2323);
  let x_2325 : f32 = u_xlat78;
  let x_2326 : f32 = u_xlat50;
  u_xlat50 = (x_2325 * x_2326);
  let x_2328 : f32 = u_xlat76;
  let x_2329 : f32 = u_xlat50;
  u_xlat50 = (x_2328 / x_2329);
  let x_2331 : vec4<f32> = u_xlat5;
  let x_2333 : f32 = u_xlat50;
  let x_2336 : vec4<f32> = u_xlat4;
  let x_2338 : vec3<f32> = ((vec3<f32>(x_2331.x, x_2331.y, x_2331.z) * vec3<f32>(x_2333, x_2333, x_2333)) + vec3<f32>(x_2336.x, x_2336.y, x_2336.z));
  let x_2339 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2338.x, x_2338.y, x_2338.z, x_2339.w);
  let x_2341 : vec4<f32> = u_xlat6;
  let x_2343 : vec4<f32> = u_xlat7;
  let x_2345 : vec3<f32> = (vec3<f32>(x_2341.x, x_2341.y, x_2341.z) * vec3<f32>(x_2343.x, x_2343.y, x_2343.z));
  let x_2346 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2345.x, x_2345.y, x_2345.z, x_2346.w);
  let x_2350 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_2352 : f32 = x_625.unity_LightData.y;
  u_xlat50 = min(x_2350, x_2352);
  let x_2356 : f32 = u_xlat50;
  u_xlatu50 = bitcast<u32>(i32(x_2356));
  let x_2359 : f32 = u_xlat80;
  let x_2361 : f32 = x_768.x_AdditionalShadowFadeParams.x;
  let x_2364 : f32 = x_768.x_AdditionalShadowFadeParams.y;
  u_xlat77 = ((x_2359 * x_2361) + x_2364);
  let x_2366 : f32 = u_xlat77;
  u_xlat77 = clamp(x_2366, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2378 : u32 = u_xlatu_loop_1;
    let x_2379 : u32 = u_xlatu50;
    if ((x_2378 < x_2379)) {
    } else {
      break;
    }
    let x_2382 : u32 = u_xlatu_loop_1;
    u_xlatu80 = (x_2382 >> 2u);
    let x_2386 : u32 = u_xlatu_loop_1;
    u_xlati81 = bitcast<i32>((x_2386 & 3u));
    let x_2389 : u32 = u_xlatu80;
    let x_2392 : vec4<f32> = x_625.unity_LightIndices[bitcast<i32>(x_2389)];
    let x_2402 : i32 = u_xlati81;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2407 : vec4<u32> = indexable[x_2402];
    u_xlat80 = dot(x_2392, bitcast<vec4<f32>>(x_2407));
    let x_2411 : f32 = u_xlat80;
    u_xlati80 = i32(x_2411);
    let x_2413 : vec3<f32> = vs_TEXCOORD7;
    let x_2424 : i32 = u_xlati80;
    let x_2426 : vec4<f32> = x_2423.x_AdditionalLightsPosition[x_2424];
    let x_2429 : i32 = u_xlati80;
    let x_2431 : vec4<f32> = x_2423.x_AdditionalLightsPosition[x_2429];
    let x_2433 : vec3<f32> = ((-(x_2413) * vec3<f32>(x_2426.w, x_2426.w, x_2426.w)) + vec3<f32>(x_2431.x, x_2431.y, x_2431.z));
    let x_2434 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2433.x, x_2433.y, x_2433.z, x_2434.w);
    let x_2436 : vec4<f32> = u_xlat8;
    let x_2438 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_2436.x, x_2436.y, x_2436.z), vec3<f32>(x_2438.x, x_2438.y, x_2438.z));
    let x_2441 : f32 = u_xlat81;
    u_xlat81 = max(x_2441, 0.00006103515625f);
    let x_2444 : f32 = u_xlat81;
    u_xlat82 = inverseSqrt(x_2444);
    let x_2446 : f32 = u_xlat82;
    let x_2448 : vec4<f32> = u_xlat8;
    let x_2450 : vec3<f32> = (vec3<f32>(x_2446, x_2446, x_2446) * vec3<f32>(x_2448.x, x_2448.y, x_2448.z));
    let x_2451 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2450.x, x_2450.y, x_2450.z, x_2451.w);
    let x_2454 : f32 = u_xlat81;
    u_xlat83 = (1.0f / x_2454);
    let x_2456 : f32 = u_xlat81;
    let x_2457 : i32 = u_xlati80;
    let x_2459 : f32 = x_2423.x_AdditionalLightsAttenuation[x_2457].x;
    u_xlat81 = (x_2456 * x_2459);
    let x_2461 : f32 = u_xlat81;
    let x_2463 : f32 = u_xlat81;
    u_xlat81 = ((-(x_2461) * x_2463) + 1.0f);
    let x_2466 : f32 = u_xlat81;
    u_xlat81 = max(x_2466, 0.0f);
    let x_2468 : f32 = u_xlat81;
    let x_2469 : f32 = u_xlat81;
    u_xlat81 = (x_2468 * x_2469);
    let x_2471 : f32 = u_xlat81;
    let x_2472 : f32 = u_xlat83;
    u_xlat81 = (x_2471 * x_2472);
    let x_2474 : i32 = u_xlati80;
    let x_2476 : vec4<f32> = x_2423.x_AdditionalLightsSpotDir[x_2474];
    let x_2478 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_2476.x, x_2476.y, x_2476.z), vec3<f32>(x_2478.x, x_2478.y, x_2478.z));
    let x_2481 : f32 = u_xlat83;
    let x_2482 : i32 = u_xlati80;
    let x_2484 : f32 = x_2423.x_AdditionalLightsAttenuation[x_2482].z;
    let x_2486 : i32 = u_xlati80;
    let x_2488 : f32 = x_2423.x_AdditionalLightsAttenuation[x_2486].w;
    u_xlat83 = ((x_2481 * x_2484) + x_2488);
    let x_2490 : f32 = u_xlat83;
    u_xlat83 = clamp(x_2490, 0.0f, 1.0f);
    let x_2492 : f32 = u_xlat83;
    let x_2493 : f32 = u_xlat83;
    u_xlat83 = (x_2492 * x_2493);
    let x_2495 : f32 = u_xlat81;
    let x_2496 : f32 = u_xlat83;
    u_xlat81 = (x_2495 * x_2496);
    let x_2499 : i32 = u_xlati80;
    let x_2501 : f32 = x_768.x_AdditionalShadowParams[x_2499].w;
    u_xlati83 = i32(x_2501);
    let x_2504 : i32 = u_xlati83;
    u_xlatb84 = (x_2504 >= 0i);
    let x_2506 : bool = u_xlatb84;
    if (x_2506) {
      let x_2510 : i32 = u_xlati80;
      let x_2512 : f32 = x_768.x_AdditionalShadowParams[x_2510].z;
      u_xlatb84 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2512, x_2512, x_2512, x_2512))));
      let x_2516 : bool = u_xlatb84;
      if (x_2516) {
        let x_2521 : vec4<f32> = u_xlat9;
        let x_2524 : vec4<f32> = u_xlat9;
        let x_2527 : vec4<bool> = (abs(vec4<f32>(x_2521.z, x_2521.z, x_2521.y, x_2521.z)) >= abs(vec4<f32>(x_2524.x, x_2524.y, x_2524.x, x_2524.x)));
        let x_2529 : vec3<bool> = vec3<bool>(x_2527.x, x_2527.y, x_2527.z);
        let x_2530 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_2529.x, x_2529.y, x_2529.z, x_2530.w);
        let x_2533 : bool = u_xlatb10.y;
        let x_2535 : bool = u_xlatb10.x;
        u_xlatb84 = (x_2533 & x_2535);
        let x_2537 : vec4<f32> = u_xlat9;
        let x_2540 : vec4<bool> = (-(vec4<f32>(x_2537.z, x_2537.y, x_2537.z, x_2537.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2541 : vec3<bool> = vec3<bool>(x_2540.x, x_2540.y, x_2540.w);
        let x_2542 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_2541.x, x_2541.y, x_2542.z, x_2541.z);
        let x_2545 : bool = u_xlatb10.x;
        u_xlat10.x = select(4.0f, 5.0f, x_2545);
        let x_2550 : bool = u_xlatb10.y;
        u_xlat10.y = select(2.0f, 3.0f, x_2550);
        let x_2556 : bool = u_xlatb10.w;
        u_xlat85 = select(0.0f, 1.0f, x_2556);
        let x_2560 : bool = u_xlatb10.z;
        if (x_2560) {
          let x_2565 : f32 = u_xlat10.y;
          x_2561 = x_2565;
        } else {
          let x_2567 : f32 = u_xlat85;
          x_2561 = x_2567;
        }
        let x_2568 : f32 = x_2561;
        u_xlat35 = x_2568;
        let x_2570 : bool = u_xlatb84;
        if (x_2570) {
          let x_2575 : f32 = u_xlat10.x;
          x_2571 = x_2575;
        } else {
          let x_2577 : f32 = u_xlat35;
          x_2571 = x_2577;
        }
        let x_2578 : f32 = x_2571;
        u_xlat84 = x_2578;
        let x_2579 : i32 = u_xlati80;
        let x_2581 : f32 = x_768.x_AdditionalShadowParams[x_2579].w;
        u_xlat10.x = trunc(x_2581);
        let x_2584 : f32 = u_xlat84;
        let x_2586 : f32 = u_xlat10.x;
        u_xlat84 = (x_2584 + x_2586);
        let x_2588 : f32 = u_xlat84;
        u_xlati83 = i32(x_2588);
      }
      let x_2590 : i32 = u_xlati83;
      u_xlati83 = (x_2590 << bitcast<u32>(2i));
      let x_2592 : vec3<f32> = vs_TEXCOORD7;
      let x_2594 : i32 = u_xlati83;
      let x_2597 : i32 = u_xlati83;
      let x_2601 : vec4<f32> = x_768.x_AdditionalLightsWorldToShadow[((x_2594 + 1i) / 4i)][((x_2597 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_2592.y, x_2592.y, x_2592.y, x_2592.y) * x_2601);
      let x_2603 : i32 = u_xlati83;
      let x_2605 : i32 = u_xlati83;
      let x_2608 : vec4<f32> = x_768.x_AdditionalLightsWorldToShadow[(x_2603 / 4i)][(x_2605 % 4i)];
      let x_2609 : vec3<f32> = vs_TEXCOORD7;
      let x_2612 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2608 * vec4<f32>(x_2609.x, x_2609.x, x_2609.x, x_2609.x)) + x_2612);
      let x_2614 : i32 = u_xlati83;
      let x_2617 : i32 = u_xlati83;
      let x_2621 : vec4<f32> = x_768.x_AdditionalLightsWorldToShadow[((x_2614 + 2i) / 4i)][((x_2617 + 2i) % 4i)];
      let x_2622 : vec3<f32> = vs_TEXCOORD7;
      let x_2625 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2621 * vec4<f32>(x_2622.z, x_2622.z, x_2622.z, x_2622.z)) + x_2625);
      let x_2627 : vec4<f32> = u_xlat10;
      let x_2628 : i32 = u_xlati83;
      let x_2631 : i32 = u_xlati83;
      let x_2635 : vec4<f32> = x_768.x_AdditionalLightsWorldToShadow[((x_2628 + 3i) / 4i)][((x_2631 + 3i) % 4i)];
      u_xlat10 = (x_2627 + x_2635);
      let x_2637 : vec4<f32> = u_xlat10;
      let x_2639 : vec4<f32> = u_xlat10;
      let x_2641 : vec3<f32> = (vec3<f32>(x_2637.x, x_2637.y, x_2637.z) / vec3<f32>(x_2639.w, x_2639.w, x_2639.w));
      let x_2642 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2641.x, x_2641.y, x_2641.z, x_2642.w);
      let x_2645 : i32 = u_xlati80;
      let x_2647 : f32 = x_768.x_AdditionalShadowParams[x_2645].y;
      u_xlatb83 = (0.0f < x_2647);
      let x_2649 : bool = u_xlatb83;
      if (x_2649) {
        let x_2652 : i32 = u_xlati80;
        let x_2654 : f32 = x_768.x_AdditionalShadowParams[x_2652].y;
        u_xlatb83 = (1.0f == x_2654);
        let x_2656 : bool = u_xlatb83;
        if (x_2656) {
          let x_2659 : vec4<f32> = u_xlat10;
          let x_2662 : vec4<f32> = x_768.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2659.x, x_2659.y, x_2659.x, x_2659.y) + x_2662);
          let x_2665 : vec4<f32> = u_xlat11;
          let x_2666 : vec2<f32> = vec2<f32>(x_2665.x, x_2665.y);
          let x_2668 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2666.x, x_2666.y, x_2668);
          let x_2676 : vec3<f32> = txVec30;
          let x_2678 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2676.xy, x_2676.z);
          u_xlat12.x = x_2678;
          let x_2681 : vec4<f32> = u_xlat11;
          let x_2682 : vec2<f32> = vec2<f32>(x_2681.z, x_2681.w);
          let x_2684 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_2682.x, x_2682.y, x_2684);
          let x_2691 : vec3<f32> = txVec31;
          let x_2693 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2691.xy, x_2691.z);
          u_xlat12.y = x_2693;
          let x_2695 : vec4<f32> = u_xlat10;
          let x_2698 : vec4<f32> = x_768.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_2695.x, x_2695.y, x_2695.x, x_2695.y) + x_2698);
          let x_2701 : vec4<f32> = u_xlat11;
          let x_2702 : vec2<f32> = vec2<f32>(x_2701.x, x_2701.y);
          let x_2704 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_2702.x, x_2702.y, x_2704);
          let x_2711 : vec3<f32> = txVec32;
          let x_2713 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2711.xy, x_2711.z);
          u_xlat12.z = x_2713;
          let x_2716 : vec4<f32> = u_xlat11;
          let x_2717 : vec2<f32> = vec2<f32>(x_2716.z, x_2716.w);
          let x_2719 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_2717.x, x_2717.y, x_2719);
          let x_2726 : vec3<f32> = txVec33;
          let x_2728 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2726.xy, x_2726.z);
          u_xlat12.w = x_2728;
          let x_2730 : vec4<f32> = u_xlat12;
          u_xlat83 = dot(x_2730, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2733 : i32 = u_xlati80;
          let x_2735 : f32 = x_768.x_AdditionalShadowParams[x_2733].y;
          u_xlatb84 = (2.0f == x_2735);
          let x_2737 : bool = u_xlatb84;
          if (x_2737) {
            let x_2740 : vec4<f32> = u_xlat10;
            let x_2743 : vec4<f32> = x_768.x_AdditionalShadowmapSize;
            let x_2746 : vec2<f32> = ((vec2<f32>(x_2740.x, x_2740.y) * vec2<f32>(x_2743.z, x_2743.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2747 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2746.x, x_2746.y, x_2747.z, x_2747.w);
            let x_2749 : vec4<f32> = u_xlat11;
            let x_2751 : vec2<f32> = floor(vec2<f32>(x_2749.x, x_2749.y));
            let x_2752 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2751.x, x_2751.y, x_2752.z, x_2752.w);
            let x_2755 : vec4<f32> = u_xlat10;
            let x_2758 : vec4<f32> = x_768.x_AdditionalShadowmapSize;
            let x_2761 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2755.x, x_2755.y) * vec2<f32>(x_2758.z, x_2758.w)) + -(vec2<f32>(x_2761.x, x_2761.y)));
            let x_2765 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2765.x, x_2765.x, x_2765.y, x_2765.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2768 : vec4<f32> = u_xlat12;
            let x_2770 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2768.x, x_2768.x, x_2768.z, x_2768.z) * vec4<f32>(x_2770.x, x_2770.x, x_2770.z, x_2770.z));
            let x_2773 : vec4<f32> = u_xlat13;
            let x_2775 : vec2<f32> = (vec2<f32>(x_2773.y, x_2773.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2776 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2775.x, x_2776.y, x_2775.y, x_2776.w);
            let x_2778 : vec4<f32> = u_xlat13;
            let x_2781 : vec2<f32> = u_xlat61;
            let x_2783 : vec2<f32> = ((vec2<f32>(x_2778.x, x_2778.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2781));
            let x_2784 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2783.x, x_2783.y, x_2784.z, x_2784.w);
            let x_2787 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_2787) + vec2<f32>(1.0f, 1.0f));
            let x_2790 : vec2<f32> = u_xlat61;
            let x_2791 : vec2<f32> = min(x_2790, vec2<f32>(0.0f, 0.0f));
            let x_2792 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2791.x, x_2791.y, x_2792.z, x_2792.w);
            let x_2794 : vec4<f32> = u_xlat14;
            let x_2797 : vec4<f32> = u_xlat14;
            let x_2800 : vec2<f32> = u_xlat63;
            let x_2801 : vec2<f32> = ((-(vec2<f32>(x_2794.x, x_2794.y)) * vec2<f32>(x_2797.x, x_2797.y)) + x_2800);
            let x_2802 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2801.x, x_2801.y, x_2802.z, x_2802.w);
            let x_2804 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_2804, vec2<f32>(0.0f, 0.0f));
            let x_2806 : vec2<f32> = u_xlat61;
            let x_2808 : vec2<f32> = u_xlat61;
            let x_2810 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_2806) * x_2808) + vec2<f32>(x_2810.y, x_2810.w));
            let x_2813 : vec4<f32> = u_xlat14;
            let x_2815 : vec2<f32> = (vec2<f32>(x_2813.x, x_2813.y) + vec2<f32>(1.0f, 1.0f));
            let x_2816 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2815.x, x_2815.y, x_2816.z, x_2816.w);
            let x_2818 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_2818 + vec2<f32>(1.0f, 1.0f));
            let x_2820 : vec4<f32> = u_xlat13;
            let x_2822 : vec2<f32> = (vec2<f32>(x_2820.x, x_2820.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2823 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2822.x, x_2822.y, x_2823.z, x_2823.w);
            let x_2825 : vec2<f32> = u_xlat63;
            let x_2826 : vec2<f32> = (x_2825 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2827 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2826.x, x_2826.y, x_2827.z, x_2827.w);
            let x_2829 : vec4<f32> = u_xlat14;
            let x_2831 : vec2<f32> = (vec2<f32>(x_2829.x, x_2829.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2832 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2831.x, x_2831.y, x_2832.z, x_2832.w);
            let x_2834 : vec2<f32> = u_xlat61;
            let x_2835 : vec2<f32> = (x_2834 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2836 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2835.x, x_2835.y, x_2836.z, x_2836.w);
            let x_2838 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_2838.y, x_2838.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2842 : f32 = u_xlat14.x;
            u_xlat15.z = x_2842;
            let x_2845 : f32 = u_xlat61.x;
            u_xlat15.w = x_2845;
            let x_2848 : f32 = u_xlat16.x;
            u_xlat13.z = x_2848;
            let x_2851 : f32 = u_xlat12.x;
            u_xlat13.w = x_2851;
            let x_2853 : vec4<f32> = u_xlat13;
            let x_2855 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2853.z, x_2853.w, x_2853.x, x_2853.z) + vec4<f32>(x_2855.z, x_2855.w, x_2855.x, x_2855.z));
            let x_2859 : f32 = u_xlat15.y;
            u_xlat14.z = x_2859;
            let x_2862 : f32 = u_xlat61.y;
            u_xlat14.w = x_2862;
            let x_2865 : f32 = u_xlat13.y;
            u_xlat16.z = x_2865;
            let x_2868 : f32 = u_xlat12.z;
            u_xlat16.w = x_2868;
            let x_2870 : vec4<f32> = u_xlat14;
            let x_2872 : vec4<f32> = u_xlat16;
            let x_2874 : vec3<f32> = (vec3<f32>(x_2870.z, x_2870.y, x_2870.w) + vec3<f32>(x_2872.z, x_2872.y, x_2872.w));
            let x_2875 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2874.x, x_2874.y, x_2874.z, x_2875.w);
            let x_2877 : vec4<f32> = u_xlat13;
            let x_2879 : vec4<f32> = u_xlat17;
            let x_2881 : vec3<f32> = (vec3<f32>(x_2877.x, x_2877.z, x_2877.w) / vec3<f32>(x_2879.z, x_2879.w, x_2879.y));
            let x_2882 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2881.x, x_2881.y, x_2881.z, x_2882.w);
            let x_2884 : vec4<f32> = u_xlat13;
            let x_2886 : vec3<f32> = (vec3<f32>(x_2884.x, x_2884.y, x_2884.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2887 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2886.x, x_2886.y, x_2886.z, x_2887.w);
            let x_2889 : vec4<f32> = u_xlat16;
            let x_2891 : vec4<f32> = u_xlat12;
            let x_2893 : vec3<f32> = (vec3<f32>(x_2889.z, x_2889.y, x_2889.w) / vec3<f32>(x_2891.x, x_2891.y, x_2891.z));
            let x_2894 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2893.x, x_2893.y, x_2893.z, x_2894.w);
            let x_2896 : vec4<f32> = u_xlat14;
            let x_2898 : vec3<f32> = (vec3<f32>(x_2896.x, x_2896.y, x_2896.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2899 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2898.x, x_2898.y, x_2898.z, x_2899.w);
            let x_2901 : vec4<f32> = u_xlat13;
            let x_2904 : vec4<f32> = x_768.x_AdditionalShadowmapSize;
            let x_2906 : vec3<f32> = (vec3<f32>(x_2901.y, x_2901.x, x_2901.z) * vec3<f32>(x_2904.x, x_2904.x, x_2904.x));
            let x_2907 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2906.x, x_2906.y, x_2906.z, x_2907.w);
            let x_2909 : vec4<f32> = u_xlat14;
            let x_2912 : vec4<f32> = x_768.x_AdditionalShadowmapSize;
            let x_2914 : vec3<f32> = (vec3<f32>(x_2909.x, x_2909.y, x_2909.z) * vec3<f32>(x_2912.y, x_2912.y, x_2912.y));
            let x_2915 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2914.x, x_2914.y, x_2914.z, x_2915.w);
            let x_2918 : f32 = u_xlat14.x;
            u_xlat13.w = x_2918;
            let x_2920 : vec4<f32> = u_xlat11;
            let x_2923 : vec4<f32> = x_768.x_AdditionalShadowmapSize;
            let x_2926 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2920.x, x_2920.y, x_2920.x, x_2920.y) * vec4<f32>(x_2923.x, x_2923.y, x_2923.x, x_2923.y)) + vec4<f32>(x_2926.y, x_2926.w, x_2926.x, x_2926.w));
            let x_2929 : vec4<f32> = u_xlat11;
            let x_2932 : vec4<f32> = x_768.x_AdditionalShadowmapSize;
            let x_2935 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_2929.x, x_2929.y) * vec2<f32>(x_2932.x, x_2932.y)) + vec2<f32>(x_2935.z, x_2935.w));
            let x_2939 : f32 = u_xlat13.y;
            u_xlat14.w = x_2939;
            let x_2941 : vec4<f32> = u_xlat14;
            let x_2942 : vec2<f32> = vec2<f32>(x_2941.y, x_2941.z);
            let x_2943 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2943.x, x_2942.x, x_2943.z, x_2942.y);
            let x_2945 : vec4<f32> = u_xlat11;
            let x_2948 : vec4<f32> = x_768.x_AdditionalShadowmapSize;
            let x_2951 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_2945.x, x_2945.y, x_2945.x, x_2945.y) * vec4<f32>(x_2948.x, x_2948.y, x_2948.x, x_2948.y)) + vec4<f32>(x_2951.x, x_2951.y, x_2951.z, x_2951.y));
            let x_2954 : vec4<f32> = u_xlat11;
            let x_2957 : vec4<f32> = x_768.x_AdditionalShadowmapSize;
            let x_2960 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2954.x, x_2954.y, x_2954.x, x_2954.y) * vec4<f32>(x_2957.x, x_2957.y, x_2957.x, x_2957.y)) + vec4<f32>(x_2960.w, x_2960.y, x_2960.w, x_2960.z));
            let x_2963 : vec4<f32> = u_xlat11;
            let x_2966 : vec4<f32> = x_768.x_AdditionalShadowmapSize;
            let x_2969 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_2963.x, x_2963.y, x_2963.x, x_2963.y) * vec4<f32>(x_2966.x, x_2966.y, x_2966.x, x_2966.y)) + vec4<f32>(x_2969.x, x_2969.w, x_2969.z, x_2969.w));
            let x_2972 : vec4<f32> = u_xlat12;
            let x_2974 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_2972.x, x_2972.x, x_2972.x, x_2972.y) * vec4<f32>(x_2974.z, x_2974.w, x_2974.y, x_2974.z));
            let x_2977 : vec4<f32> = u_xlat12;
            let x_2979 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_2977.y, x_2977.y, x_2977.z, x_2977.z) * x_2979);
            let x_2982 : f32 = u_xlat12.z;
            let x_2984 : f32 = u_xlat17.y;
            u_xlat84 = (x_2982 * x_2984);
            let x_2987 : vec4<f32> = u_xlat15;
            let x_2988 : vec2<f32> = vec2<f32>(x_2987.x, x_2987.y);
            let x_2990 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_2988.x, x_2988.y, x_2990);
            let x_2997 : vec3<f32> = txVec34;
            let x_2999 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2997.xy, x_2997.z);
            u_xlat85 = x_2999;
            let x_3001 : vec4<f32> = u_xlat15;
            let x_3002 : vec2<f32> = vec2<f32>(x_3001.z, x_3001.w);
            let x_3004 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_3002.x, x_3002.y, x_3004);
            let x_3011 : vec3<f32> = txVec35;
            let x_3013 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3011.xy, x_3011.z);
            u_xlat11.x = x_3013;
            let x_3016 : f32 = u_xlat11.x;
            let x_3018 : f32 = u_xlat18.y;
            u_xlat11.x = (x_3016 * x_3018);
            let x_3022 : f32 = u_xlat18.x;
            let x_3023 : f32 = u_xlat85;
            let x_3026 : f32 = u_xlat11.x;
            u_xlat85 = ((x_3022 * x_3023) + x_3026);
            let x_3029 : vec2<f32> = u_xlat61;
            let x_3031 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_3029.x, x_3029.y, x_3031);
            let x_3038 : vec3<f32> = txVec36;
            let x_3040 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3038.xy, x_3038.z);
            u_xlat11.x = x_3040;
            let x_3043 : f32 = u_xlat18.z;
            let x_3045 : f32 = u_xlat11.x;
            let x_3047 : f32 = u_xlat85;
            u_xlat85 = ((x_3043 * x_3045) + x_3047);
            let x_3050 : vec4<f32> = u_xlat14;
            let x_3051 : vec2<f32> = vec2<f32>(x_3050.x, x_3050.y);
            let x_3053 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_3051.x, x_3051.y, x_3053);
            let x_3060 : vec3<f32> = txVec37;
            let x_3062 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3060.xy, x_3060.z);
            u_xlat11.x = x_3062;
            let x_3065 : f32 = u_xlat18.w;
            let x_3067 : f32 = u_xlat11.x;
            let x_3069 : f32 = u_xlat85;
            u_xlat85 = ((x_3065 * x_3067) + x_3069);
            let x_3072 : vec4<f32> = u_xlat16;
            let x_3073 : vec2<f32> = vec2<f32>(x_3072.x, x_3072.y);
            let x_3075 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_3073.x, x_3073.y, x_3075);
            let x_3082 : vec3<f32> = txVec38;
            let x_3084 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3082.xy, x_3082.z);
            u_xlat11.x = x_3084;
            let x_3087 : f32 = u_xlat19.x;
            let x_3089 : f32 = u_xlat11.x;
            let x_3091 : f32 = u_xlat85;
            u_xlat85 = ((x_3087 * x_3089) + x_3091);
            let x_3094 : vec4<f32> = u_xlat16;
            let x_3095 : vec2<f32> = vec2<f32>(x_3094.z, x_3094.w);
            let x_3097 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_3095.x, x_3095.y, x_3097);
            let x_3104 : vec3<f32> = txVec39;
            let x_3106 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3104.xy, x_3104.z);
            u_xlat11.x = x_3106;
            let x_3109 : f32 = u_xlat19.y;
            let x_3111 : f32 = u_xlat11.x;
            let x_3113 : f32 = u_xlat85;
            u_xlat85 = ((x_3109 * x_3111) + x_3113);
            let x_3116 : vec4<f32> = u_xlat14;
            let x_3117 : vec2<f32> = vec2<f32>(x_3116.z, x_3116.w);
            let x_3119 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_3117.x, x_3117.y, x_3119);
            let x_3126 : vec3<f32> = txVec40;
            let x_3128 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3126.xy, x_3126.z);
            u_xlat11.x = x_3128;
            let x_3131 : f32 = u_xlat19.z;
            let x_3133 : f32 = u_xlat11.x;
            let x_3135 : f32 = u_xlat85;
            u_xlat85 = ((x_3131 * x_3133) + x_3135);
            let x_3138 : vec4<f32> = u_xlat13;
            let x_3139 : vec2<f32> = vec2<f32>(x_3138.x, x_3138.y);
            let x_3141 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_3139.x, x_3139.y, x_3141);
            let x_3148 : vec3<f32> = txVec41;
            let x_3150 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3148.xy, x_3148.z);
            u_xlat11.x = x_3150;
            let x_3153 : f32 = u_xlat19.w;
            let x_3155 : f32 = u_xlat11.x;
            let x_3157 : f32 = u_xlat85;
            u_xlat85 = ((x_3153 * x_3155) + x_3157);
            let x_3160 : vec4<f32> = u_xlat13;
            let x_3161 : vec2<f32> = vec2<f32>(x_3160.z, x_3160.w);
            let x_3163 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_3161.x, x_3161.y, x_3163);
            let x_3170 : vec3<f32> = txVec42;
            let x_3172 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3170.xy, x_3170.z);
            u_xlat11.x = x_3172;
            let x_3174 : f32 = u_xlat84;
            let x_3176 : f32 = u_xlat11.x;
            let x_3178 : f32 = u_xlat85;
            u_xlat83 = ((x_3174 * x_3176) + x_3178);
          } else {
            let x_3181 : vec4<f32> = u_xlat10;
            let x_3184 : vec4<f32> = x_768.x_AdditionalShadowmapSize;
            let x_3187 : vec2<f32> = ((vec2<f32>(x_3181.x, x_3181.y) * vec2<f32>(x_3184.z, x_3184.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3188 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3187.x, x_3187.y, x_3188.z, x_3188.w);
            let x_3190 : vec4<f32> = u_xlat11;
            let x_3192 : vec2<f32> = floor(vec2<f32>(x_3190.x, x_3190.y));
            let x_3193 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3192.x, x_3192.y, x_3193.z, x_3193.w);
            let x_3195 : vec4<f32> = u_xlat10;
            let x_3198 : vec4<f32> = x_768.x_AdditionalShadowmapSize;
            let x_3201 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3195.x, x_3195.y) * vec2<f32>(x_3198.z, x_3198.w)) + -(vec2<f32>(x_3201.x, x_3201.y)));
            let x_3205 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3205.x, x_3205.x, x_3205.y, x_3205.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3208 : vec4<f32> = u_xlat12;
            let x_3210 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3208.x, x_3208.x, x_3208.z, x_3208.z) * vec4<f32>(x_3210.x, x_3210.x, x_3210.z, x_3210.z));
            let x_3213 : vec4<f32> = u_xlat13;
            let x_3215 : vec2<f32> = (vec2<f32>(x_3213.y, x_3213.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3216 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3216.x, x_3215.x, x_3216.z, x_3215.y);
            let x_3218 : vec4<f32> = u_xlat13;
            let x_3221 : vec2<f32> = u_xlat61;
            let x_3223 : vec2<f32> = ((vec2<f32>(x_3218.x, x_3218.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3221));
            let x_3224 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3223.x, x_3224.y, x_3223.y, x_3224.w);
            let x_3226 : vec2<f32> = u_xlat61;
            let x_3228 : vec2<f32> = (-(x_3226) + vec2<f32>(1.0f, 1.0f));
            let x_3229 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3228.x, x_3228.y, x_3229.z, x_3229.w);
            let x_3231 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_3231, vec2<f32>(0.0f, 0.0f));
            let x_3233 : vec2<f32> = u_xlat63;
            let x_3235 : vec2<f32> = u_xlat63;
            let x_3237 : vec4<f32> = u_xlat13;
            let x_3239 : vec2<f32> = ((-(x_3233) * x_3235) + vec2<f32>(x_3237.x, x_3237.y));
            let x_3240 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3239.x, x_3239.y, x_3240.z, x_3240.w);
            let x_3242 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_3242, vec2<f32>(0.0f, 0.0f));
            let x_3245 : vec2<f32> = u_xlat63;
            let x_3247 : vec2<f32> = u_xlat63;
            let x_3249 : vec4<f32> = u_xlat12;
            let x_3251 : vec2<f32> = ((-(x_3245) * x_3247) + vec2<f32>(x_3249.y, x_3249.w));
            let x_3252 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_3251.x, x_3252.y, x_3251.y);
            let x_3254 : vec4<f32> = u_xlat13;
            let x_3256 : vec2<f32> = (vec2<f32>(x_3254.x, x_3254.y) + vec2<f32>(2.0f, 2.0f));
            let x_3257 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3256.x, x_3256.y, x_3257.z, x_3257.w);
            let x_3259 : vec3<f32> = u_xlat37;
            let x_3261 : vec2<f32> = (vec2<f32>(x_3259.x, x_3259.z) + vec2<f32>(2.0f, 2.0f));
            let x_3262 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3262.x, x_3261.x, x_3262.z, x_3261.y);
            let x_3265 : f32 = u_xlat12.y;
            u_xlat15.z = (x_3265 * 0.08163200318813323975f);
            let x_3268 : vec4<f32> = u_xlat12;
            let x_3270 : vec3<f32> = (vec3<f32>(x_3268.z, x_3268.x, x_3268.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3271 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3270.x, x_3270.y, x_3270.z, x_3271.w);
            let x_3273 : vec4<f32> = u_xlat13;
            let x_3275 : vec2<f32> = (vec2<f32>(x_3273.x, x_3273.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3276 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3275.x, x_3275.y, x_3276.z, x_3276.w);
            let x_3279 : f32 = u_xlat16.y;
            u_xlat15.x = x_3279;
            let x_3281 : vec2<f32> = u_xlat61;
            let x_3284 : vec2<f32> = ((vec2<f32>(x_3281.x, x_3281.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3285 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3285.x, x_3284.x, x_3285.z, x_3284.y);
            let x_3287 : vec2<f32> = u_xlat61;
            let x_3290 : vec2<f32> = ((vec2<f32>(x_3287.x, x_3287.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3291 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3290.x, x_3291.y, x_3290.y, x_3291.w);
            let x_3294 : f32 = u_xlat12.x;
            u_xlat13.y = x_3294;
            let x_3297 : f32 = u_xlat14.y;
            u_xlat13.w = x_3297;
            let x_3299 : vec4<f32> = u_xlat13;
            let x_3300 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3299 + x_3300);
            let x_3302 : vec2<f32> = u_xlat61;
            let x_3305 : vec2<f32> = ((vec2<f32>(x_3302.y, x_3302.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3306 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3306.x, x_3305.x, x_3306.z, x_3305.y);
            let x_3308 : vec2<f32> = u_xlat61;
            let x_3311 : vec2<f32> = ((vec2<f32>(x_3308.y, x_3308.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3312 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3311.x, x_3312.y, x_3311.y, x_3312.w);
            let x_3315 : f32 = u_xlat12.y;
            u_xlat14.y = x_3315;
            let x_3317 : vec4<f32> = u_xlat14;
            let x_3318 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_3317 + x_3318);
            let x_3320 : vec4<f32> = u_xlat13;
            let x_3321 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_3320 / x_3321);
            let x_3323 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3323 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3325 : vec4<f32> = u_xlat14;
            let x_3326 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_3325 / x_3326);
            let x_3328 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3328 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3330 : vec4<f32> = u_xlat13;
            let x_3333 : vec4<f32> = x_768.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3330.w, x_3330.x, x_3330.y, x_3330.z) * vec4<f32>(x_3333.x, x_3333.x, x_3333.x, x_3333.x));
            let x_3336 : vec4<f32> = u_xlat14;
            let x_3339 : vec4<f32> = x_768.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3336.x, x_3336.w, x_3336.y, x_3336.z) * vec4<f32>(x_3339.y, x_3339.y, x_3339.y, x_3339.y));
            let x_3342 : vec4<f32> = u_xlat13;
            let x_3343 : vec3<f32> = vec3<f32>(x_3342.y, x_3342.z, x_3342.w);
            let x_3344 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3343.x, x_3344.y, x_3343.y, x_3343.z);
            let x_3347 : f32 = u_xlat14.x;
            u_xlat16.y = x_3347;
            let x_3349 : vec4<f32> = u_xlat11;
            let x_3352 : vec4<f32> = x_768.x_AdditionalShadowmapSize;
            let x_3355 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3349.x, x_3349.y, x_3349.x, x_3349.y) * vec4<f32>(x_3352.x, x_3352.y, x_3352.x, x_3352.y)) + vec4<f32>(x_3355.x, x_3355.y, x_3355.z, x_3355.y));
            let x_3358 : vec4<f32> = u_xlat11;
            let x_3361 : vec4<f32> = x_768.x_AdditionalShadowmapSize;
            let x_3364 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_3358.x, x_3358.y) * vec2<f32>(x_3361.x, x_3361.y)) + vec2<f32>(x_3364.w, x_3364.y));
            let x_3368 : f32 = u_xlat16.y;
            u_xlat13.y = x_3368;
            let x_3371 : f32 = u_xlat14.z;
            u_xlat16.y = x_3371;
            let x_3373 : vec4<f32> = u_xlat11;
            let x_3376 : vec4<f32> = x_768.x_AdditionalShadowmapSize;
            let x_3379 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3373.x, x_3373.y, x_3373.x, x_3373.y) * vec4<f32>(x_3376.x, x_3376.y, x_3376.x, x_3376.y)) + vec4<f32>(x_3379.x, x_3379.y, x_3379.z, x_3379.y));
            let x_3382 : vec4<f32> = u_xlat11;
            let x_3385 : vec4<f32> = x_768.x_AdditionalShadowmapSize;
            let x_3388 : vec4<f32> = u_xlat16;
            let x_3390 : vec2<f32> = ((vec2<f32>(x_3382.x, x_3382.y) * vec2<f32>(x_3385.x, x_3385.y)) + vec2<f32>(x_3388.w, x_3388.y));
            let x_3391 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3390.x, x_3390.y, x_3391.z, x_3391.w);
            let x_3394 : f32 = u_xlat16.y;
            u_xlat13.z = x_3394;
            let x_3397 : vec4<f32> = u_xlat11;
            let x_3400 : vec4<f32> = x_768.x_AdditionalShadowmapSize;
            let x_3403 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3397.x, x_3397.y, x_3397.x, x_3397.y) * vec4<f32>(x_3400.x, x_3400.y, x_3400.x, x_3400.y)) + vec4<f32>(x_3403.x, x_3403.y, x_3403.x, x_3403.z));
            let x_3407 : f32 = u_xlat14.w;
            u_xlat16.y = x_3407;
            let x_3410 : vec4<f32> = u_xlat11;
            let x_3413 : vec4<f32> = x_768.x_AdditionalShadowmapSize;
            let x_3416 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3410.x, x_3410.y, x_3410.x, x_3410.y) * vec4<f32>(x_3413.x, x_3413.y, x_3413.x, x_3413.y)) + vec4<f32>(x_3416.x, x_3416.y, x_3416.z, x_3416.y));
            let x_3420 : vec4<f32> = u_xlat11;
            let x_3423 : vec4<f32> = x_768.x_AdditionalShadowmapSize;
            let x_3426 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3420.x, x_3420.y) * vec2<f32>(x_3423.x, x_3423.y)) + vec2<f32>(x_3426.w, x_3426.y));
            let x_3430 : f32 = u_xlat16.y;
            u_xlat13.w = x_3430;
            let x_3433 : vec4<f32> = u_xlat11;
            let x_3436 : vec4<f32> = x_768.x_AdditionalShadowmapSize;
            let x_3439 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3433.x, x_3433.y) * vec2<f32>(x_3436.x, x_3436.y)) + vec2<f32>(x_3439.x, x_3439.w));
            let x_3442 : vec4<f32> = u_xlat16;
            let x_3443 : vec3<f32> = vec3<f32>(x_3442.x, x_3442.z, x_3442.w);
            let x_3444 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3443.x, x_3444.y, x_3443.y, x_3443.z);
            let x_3446 : vec4<f32> = u_xlat11;
            let x_3449 : vec4<f32> = x_768.x_AdditionalShadowmapSize;
            let x_3452 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3446.x, x_3446.y, x_3446.x, x_3446.y) * vec4<f32>(x_3449.x, x_3449.y, x_3449.x, x_3449.y)) + vec4<f32>(x_3452.x, x_3452.y, x_3452.z, x_3452.y));
            let x_3455 : vec4<f32> = u_xlat11;
            let x_3458 : vec4<f32> = x_768.x_AdditionalShadowmapSize;
            let x_3461 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3455.x, x_3455.y) * vec2<f32>(x_3458.x, x_3458.y)) + vec2<f32>(x_3461.w, x_3461.y));
            let x_3465 : f32 = u_xlat13.x;
            u_xlat14.x = x_3465;
            let x_3467 : vec4<f32> = u_xlat11;
            let x_3470 : vec4<f32> = x_768.x_AdditionalShadowmapSize;
            let x_3473 : vec4<f32> = u_xlat14;
            let x_3475 : vec2<f32> = ((vec2<f32>(x_3467.x, x_3467.y) * vec2<f32>(x_3470.x, x_3470.y)) + vec2<f32>(x_3473.x, x_3473.y));
            let x_3476 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3475.x, x_3475.y, x_3476.z, x_3476.w);
            let x_3479 : vec4<f32> = u_xlat12;
            let x_3481 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3479.x, x_3479.x, x_3479.x, x_3479.x) * x_3481);
            let x_3484 : vec4<f32> = u_xlat12;
            let x_3486 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3484.y, x_3484.y, x_3484.y, x_3484.y) * x_3486);
            let x_3489 : vec4<f32> = u_xlat12;
            let x_3491 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3489.z, x_3489.z, x_3489.z, x_3489.z) * x_3491);
            let x_3493 : vec4<f32> = u_xlat12;
            let x_3495 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3493.w, x_3493.w, x_3493.w, x_3493.w) * x_3495);
            let x_3498 : vec4<f32> = u_xlat17;
            let x_3499 : vec2<f32> = vec2<f32>(x_3498.x, x_3498.y);
            let x_3501 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3499.x, x_3499.y, x_3501);
            let x_3508 : vec3<f32> = txVec43;
            let x_3510 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3508.xy, x_3508.z);
            u_xlat84 = x_3510;
            let x_3512 : vec4<f32> = u_xlat17;
            let x_3513 : vec2<f32> = vec2<f32>(x_3512.z, x_3512.w);
            let x_3515 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3513.x, x_3513.y, x_3515);
            let x_3522 : vec3<f32> = txVec44;
            let x_3524 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3522.xy, x_3522.z);
            u_xlat85 = x_3524;
            let x_3525 : f32 = u_xlat85;
            let x_3527 : f32 = u_xlat22.y;
            u_xlat85 = (x_3525 * x_3527);
            let x_3530 : f32 = u_xlat22.x;
            let x_3531 : f32 = u_xlat84;
            let x_3533 : f32 = u_xlat85;
            u_xlat84 = ((x_3530 * x_3531) + x_3533);
            let x_3536 : vec2<f32> = u_xlat61;
            let x_3538 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3536.x, x_3536.y, x_3538);
            let x_3545 : vec3<f32> = txVec45;
            let x_3547 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3545.xy, x_3545.z);
            u_xlat85 = x_3547;
            let x_3549 : f32 = u_xlat22.z;
            let x_3550 : f32 = u_xlat85;
            let x_3552 : f32 = u_xlat84;
            u_xlat84 = ((x_3549 * x_3550) + x_3552);
            let x_3555 : vec4<f32> = u_xlat20;
            let x_3556 : vec2<f32> = vec2<f32>(x_3555.x, x_3555.y);
            let x_3558 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3556.x, x_3556.y, x_3558);
            let x_3565 : vec3<f32> = txVec46;
            let x_3567 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3565.xy, x_3565.z);
            u_xlat85 = x_3567;
            let x_3569 : f32 = u_xlat22.w;
            let x_3570 : f32 = u_xlat85;
            let x_3572 : f32 = u_xlat84;
            u_xlat84 = ((x_3569 * x_3570) + x_3572);
            let x_3575 : vec4<f32> = u_xlat18;
            let x_3576 : vec2<f32> = vec2<f32>(x_3575.x, x_3575.y);
            let x_3578 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3576.x, x_3576.y, x_3578);
            let x_3585 : vec3<f32> = txVec47;
            let x_3587 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3585.xy, x_3585.z);
            u_xlat85 = x_3587;
            let x_3589 : f32 = u_xlat23.x;
            let x_3590 : f32 = u_xlat85;
            let x_3592 : f32 = u_xlat84;
            u_xlat84 = ((x_3589 * x_3590) + x_3592);
            let x_3595 : vec4<f32> = u_xlat18;
            let x_3596 : vec2<f32> = vec2<f32>(x_3595.z, x_3595.w);
            let x_3598 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3596.x, x_3596.y, x_3598);
            let x_3605 : vec3<f32> = txVec48;
            let x_3607 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3605.xy, x_3605.z);
            u_xlat85 = x_3607;
            let x_3609 : f32 = u_xlat23.y;
            let x_3610 : f32 = u_xlat85;
            let x_3612 : f32 = u_xlat84;
            u_xlat84 = ((x_3609 * x_3610) + x_3612);
            let x_3615 : vec4<f32> = u_xlat19;
            let x_3616 : vec2<f32> = vec2<f32>(x_3615.x, x_3615.y);
            let x_3618 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3616.x, x_3616.y, x_3618);
            let x_3625 : vec3<f32> = txVec49;
            let x_3627 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3625.xy, x_3625.z);
            u_xlat85 = x_3627;
            let x_3629 : f32 = u_xlat23.z;
            let x_3630 : f32 = u_xlat85;
            let x_3632 : f32 = u_xlat84;
            u_xlat84 = ((x_3629 * x_3630) + x_3632);
            let x_3635 : vec4<f32> = u_xlat20;
            let x_3636 : vec2<f32> = vec2<f32>(x_3635.z, x_3635.w);
            let x_3638 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3636.x, x_3636.y, x_3638);
            let x_3645 : vec3<f32> = txVec50;
            let x_3647 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3645.xy, x_3645.z);
            u_xlat85 = x_3647;
            let x_3649 : f32 = u_xlat23.w;
            let x_3650 : f32 = u_xlat85;
            let x_3652 : f32 = u_xlat84;
            u_xlat84 = ((x_3649 * x_3650) + x_3652);
            let x_3655 : vec4<f32> = u_xlat21;
            let x_3656 : vec2<f32> = vec2<f32>(x_3655.x, x_3655.y);
            let x_3658 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3656.x, x_3656.y, x_3658);
            let x_3665 : vec3<f32> = txVec51;
            let x_3667 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3665.xy, x_3665.z);
            u_xlat85 = x_3667;
            let x_3669 : f32 = u_xlat24.x;
            let x_3670 : f32 = u_xlat85;
            let x_3672 : f32 = u_xlat84;
            u_xlat84 = ((x_3669 * x_3670) + x_3672);
            let x_3675 : vec4<f32> = u_xlat21;
            let x_3676 : vec2<f32> = vec2<f32>(x_3675.z, x_3675.w);
            let x_3678 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_3676.x, x_3676.y, x_3678);
            let x_3685 : vec3<f32> = txVec52;
            let x_3687 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3685.xy, x_3685.z);
            u_xlat85 = x_3687;
            let x_3689 : f32 = u_xlat24.y;
            let x_3690 : f32 = u_xlat85;
            let x_3692 : f32 = u_xlat84;
            u_xlat84 = ((x_3689 * x_3690) + x_3692);
            let x_3695 : vec2<f32> = u_xlat38;
            let x_3697 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_3695.x, x_3695.y, x_3697);
            let x_3704 : vec3<f32> = txVec53;
            let x_3706 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3704.xy, x_3704.z);
            u_xlat85 = x_3706;
            let x_3708 : f32 = u_xlat24.z;
            let x_3709 : f32 = u_xlat85;
            let x_3711 : f32 = u_xlat84;
            u_xlat84 = ((x_3708 * x_3709) + x_3711);
            let x_3714 : vec2<f32> = u_xlat69;
            let x_3716 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_3714.x, x_3714.y, x_3716);
            let x_3723 : vec3<f32> = txVec54;
            let x_3725 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3723.xy, x_3723.z);
            u_xlat85 = x_3725;
            let x_3727 : f32 = u_xlat24.w;
            let x_3728 : f32 = u_xlat85;
            let x_3730 : f32 = u_xlat84;
            u_xlat84 = ((x_3727 * x_3728) + x_3730);
            let x_3733 : vec4<f32> = u_xlat16;
            let x_3734 : vec2<f32> = vec2<f32>(x_3733.x, x_3733.y);
            let x_3736 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_3734.x, x_3734.y, x_3736);
            let x_3743 : vec3<f32> = txVec55;
            let x_3745 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3743.xy, x_3743.z);
            u_xlat85 = x_3745;
            let x_3747 : f32 = u_xlat12.x;
            let x_3748 : f32 = u_xlat85;
            let x_3750 : f32 = u_xlat84;
            u_xlat84 = ((x_3747 * x_3748) + x_3750);
            let x_3753 : vec4<f32> = u_xlat16;
            let x_3754 : vec2<f32> = vec2<f32>(x_3753.z, x_3753.w);
            let x_3756 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_3754.x, x_3754.y, x_3756);
            let x_3763 : vec3<f32> = txVec56;
            let x_3765 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3763.xy, x_3763.z);
            u_xlat85 = x_3765;
            let x_3767 : f32 = u_xlat12.y;
            let x_3768 : f32 = u_xlat85;
            let x_3770 : f32 = u_xlat84;
            u_xlat84 = ((x_3767 * x_3768) + x_3770);
            let x_3773 : vec2<f32> = u_xlat64;
            let x_3775 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_3773.x, x_3773.y, x_3775);
            let x_3782 : vec3<f32> = txVec57;
            let x_3784 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3782.xy, x_3782.z);
            u_xlat85 = x_3784;
            let x_3786 : f32 = u_xlat12.z;
            let x_3787 : f32 = u_xlat85;
            let x_3789 : f32 = u_xlat84;
            u_xlat84 = ((x_3786 * x_3787) + x_3789);
            let x_3792 : vec4<f32> = u_xlat11;
            let x_3793 : vec2<f32> = vec2<f32>(x_3792.x, x_3792.y);
            let x_3795 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_3793.x, x_3793.y, x_3795);
            let x_3802 : vec3<f32> = txVec58;
            let x_3804 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3802.xy, x_3802.z);
            u_xlat85 = x_3804;
            let x_3806 : f32 = u_xlat12.w;
            let x_3807 : f32 = u_xlat85;
            let x_3809 : f32 = u_xlat84;
            u_xlat83 = ((x_3806 * x_3807) + x_3809);
          }
        }
      } else {
        let x_3813 : vec4<f32> = u_xlat10;
        let x_3814 : vec2<f32> = vec2<f32>(x_3813.x, x_3813.y);
        let x_3816 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_3814.x, x_3814.y, x_3816);
        let x_3823 : vec3<f32> = txVec59;
        let x_3825 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3823.xy, x_3823.z);
        u_xlat83 = x_3825;
      }
      let x_3826 : i32 = u_xlati80;
      let x_3828 : f32 = x_768.x_AdditionalShadowParams[x_3826].x;
      u_xlat84 = (1.0f + -(x_3828));
      let x_3831 : f32 = u_xlat83;
      let x_3832 : i32 = u_xlati80;
      let x_3834 : f32 = x_768.x_AdditionalShadowParams[x_3832].x;
      let x_3836 : f32 = u_xlat84;
      u_xlat83 = ((x_3831 * x_3834) + x_3836);
      let x_3839 : f32 = u_xlat10.z;
      u_xlatb84 = (0.0f >= x_3839);
      let x_3842 : f32 = u_xlat10.z;
      u_xlatb10.x = (x_3842 >= 1.0f);
      let x_3845 : bool = u_xlatb84;
      let x_3847 : bool = u_xlatb10.x;
      u_xlatb84 = (x_3845 | x_3847);
      let x_3849 : bool = u_xlatb84;
      let x_3850 : f32 = u_xlat83;
      u_xlat83 = select(x_3850, 1.0f, x_3849);
    } else {
      u_xlat83 = 1.0f;
    }
    let x_3853 : f32 = u_xlat83;
    u_xlat84 = (-(x_3853) + 1.0f);
    let x_3856 : f32 = u_xlat77;
    let x_3857 : f32 = u_xlat84;
    let x_3859 : f32 = u_xlat83;
    u_xlat83 = ((x_3856 * x_3857) + x_3859);
    let x_3861 : f32 = u_xlat81;
    let x_3862 : f32 = u_xlat83;
    u_xlat81 = (x_3861 * x_3862);
    let x_3864 : vec4<f32> = u_xlat1;
    let x_3866 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_3864.x, x_3864.y, x_3864.z), vec3<f32>(x_3866.x, x_3866.y, x_3866.z));
    let x_3869 : f32 = u_xlat83;
    u_xlat83 = clamp(x_3869, 0.0f, 1.0f);
    let x_3871 : f32 = u_xlat81;
    let x_3872 : f32 = u_xlat83;
    u_xlat81 = (x_3871 * x_3872);
    let x_3874 : f32 = u_xlat81;
    let x_3876 : i32 = u_xlati80;
    let x_3878 : vec4<f32> = x_2423.x_AdditionalLightsColor[x_3876];
    let x_3880 : vec3<f32> = (vec3<f32>(x_3874, x_3874, x_3874) * vec3<f32>(x_3878.x, x_3878.y, x_3878.z));
    let x_3881 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3880.x, x_3880.y, x_3880.z, x_3881.w);
    let x_3883 : vec4<f32> = u_xlat8;
    let x_3885 : f32 = u_xlat82;
    let x_3888 : vec3<f32> = u_xlat2;
    let x_3889 : vec3<f32> = ((vec3<f32>(x_3883.x, x_3883.y, x_3883.z) * vec3<f32>(x_3885, x_3885, x_3885)) + x_3888);
    let x_3890 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3889.x, x_3889.y, x_3889.z, x_3890.w);
    let x_3892 : vec4<f32> = u_xlat8;
    let x_3894 : vec4<f32> = u_xlat8;
    u_xlat80 = dot(vec3<f32>(x_3892.x, x_3892.y, x_3892.z), vec3<f32>(x_3894.x, x_3894.y, x_3894.z));
    let x_3897 : f32 = u_xlat80;
    u_xlat80 = max(x_3897, 1.17549435e-38f);
    let x_3899 : f32 = u_xlat80;
    u_xlat80 = inverseSqrt(x_3899);
    let x_3901 : f32 = u_xlat80;
    let x_3903 : vec4<f32> = u_xlat8;
    let x_3905 : vec3<f32> = (vec3<f32>(x_3901, x_3901, x_3901) * vec3<f32>(x_3903.x, x_3903.y, x_3903.z));
    let x_3906 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3905.x, x_3905.y, x_3905.z, x_3906.w);
    let x_3908 : vec4<f32> = u_xlat1;
    let x_3910 : vec4<f32> = u_xlat8;
    u_xlat80 = dot(vec3<f32>(x_3908.x, x_3908.y, x_3908.z), vec3<f32>(x_3910.x, x_3910.y, x_3910.z));
    let x_3913 : f32 = u_xlat80;
    u_xlat80 = clamp(x_3913, 0.0f, 1.0f);
    let x_3915 : vec4<f32> = u_xlat9;
    let x_3917 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_3915.x, x_3915.y, x_3915.z), vec3<f32>(x_3917.x, x_3917.y, x_3917.z));
    let x_3920 : f32 = u_xlat81;
    u_xlat81 = clamp(x_3920, 0.0f, 1.0f);
    let x_3922 : f32 = u_xlat80;
    let x_3923 : f32 = u_xlat80;
    u_xlat80 = (x_3922 * x_3923);
    let x_3925 : f32 = u_xlat80;
    let x_3927 : f32 = u_xlat0.x;
    u_xlat80 = ((x_3925 * x_3927) + 1.00001001358032226562f);
    let x_3930 : f32 = u_xlat81;
    let x_3931 : f32 = u_xlat81;
    u_xlat81 = (x_3930 * x_3931);
    let x_3933 : f32 = u_xlat80;
    let x_3934 : f32 = u_xlat80;
    u_xlat80 = (x_3933 * x_3934);
    let x_3936 : f32 = u_xlat81;
    u_xlat81 = max(x_3936, 0.10000000149011611938f);
    let x_3938 : f32 = u_xlat80;
    let x_3939 : f32 = u_xlat81;
    u_xlat80 = (x_3938 * x_3939);
    let x_3941 : f32 = u_xlat78;
    let x_3942 : f32 = u_xlat80;
    u_xlat80 = (x_3941 * x_3942);
    let x_3944 : f32 = u_xlat76;
    let x_3945 : f32 = u_xlat80;
    u_xlat80 = (x_3944 / x_3945);
    let x_3947 : vec4<f32> = u_xlat5;
    let x_3949 : f32 = u_xlat80;
    let x_3952 : vec4<f32> = u_xlat4;
    let x_3954 : vec3<f32> = ((vec3<f32>(x_3947.x, x_3947.y, x_3947.z) * vec3<f32>(x_3949, x_3949, x_3949)) + vec3<f32>(x_3952.x, x_3952.y, x_3952.z));
    let x_3955 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3954.x, x_3954.y, x_3954.z, x_3955.w);
    let x_3957 : vec4<f32> = u_xlat8;
    let x_3959 : vec4<f32> = u_xlat10;
    let x_3962 : vec4<f32> = u_xlat7;
    let x_3964 : vec3<f32> = ((vec3<f32>(x_3957.x, x_3957.y, x_3957.z) * vec3<f32>(x_3959.x, x_3959.y, x_3959.z)) + vec3<f32>(x_3962.x, x_3962.y, x_3962.z));
    let x_3965 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3964.x, x_3964.y, x_3964.z, x_3965.w);

    continuing {
      let x_3967 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3967 + bitcast<u32>(1i));
    }
  }
  let x_3969 : vec4<f32> = u_xlat3;
  let x_3971 : f32 = u_xlat25;
  let x_3974 : vec4<f32> = u_xlat6;
  u_xlat0 = ((vec3<f32>(x_3969.x, x_3969.y, x_3969.z) * vec3<f32>(x_3971, x_3971, x_3971)) + vec3<f32>(x_3974.x, x_3974.y, x_3974.z));
  let x_3977 : vec4<f32> = u_xlat7;
  let x_3979 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_3977.x, x_3977.y, x_3977.z) + x_3979);
  let x_3983 : f32 = u_xlat75;
  let x_3985 : vec3<f32> = u_xlat0;
  let x_3986 : vec3<f32> = (vec3<f32>(x_3983, x_3983, x_3983) * x_3985);
  let x_3987 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3986.x, x_3986.y, x_3986.z, x_3987.w);
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


