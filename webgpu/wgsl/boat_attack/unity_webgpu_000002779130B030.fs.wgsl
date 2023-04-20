diagnostic(off, derivative_uniformity);

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
  unity_FogColor : vec4<f32>,
  /* @offset(144) */
  unity_MatrixV : mat4x4<f32>,
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1_Texture2D_TexelSize : vec4<f32>,
  /* @offset(16) */
  x_MainTex_TexelSize : vec4<f32>,
  /* @offset(32) */
  Texture2D_DE8BF47E_TexelSize : vec4<f32>,
  /* @offset(48) */
  Vector1_6E11FCEA : f32,
  /* @offset(52) */
  Vector1_A492C01C : f32,
  /* @offset(56) */
  Vector1_8B35DE98 : f32,
  /* @offset(64) */
  Texture2D_C005B064_TexelSize : vec4<f32>,
  /* @offset(80) */
  Texture2D_D7D66558_TexelSize : vec4<f32>,
  /* @offset(96) */
  Vector1_90E376AD : f32,
}

alias Arr_1 = array<mat4x4<f32>, 5u>;

alias Arr_2 = array<vec4<f32>, 32u>;

alias Arr_3 = array<mat4x4<f32>, 32u>;

alias Arr_4 = array<vec4<f32>, 32u>;

alias Arr_5 = array<mat4x4<f32>, 32u>;

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
  x_AdditionalLightsWorldToShadow : Arr_5,
}

alias Arr_6 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_7 = array<strided_arr, 32u>;

alias Arr_8 = array<strided_arr, 32u>;

struct LightCookies {
  /* @offset(0) */
  x_MainLightWorldToLight : mat4x4<f32>,
  /* @offset(64) */
  x_AdditionalLightsCookieEnableBits : f32,
  /* @offset(68) */
  x_MainLightCookieTextureFormat : f32,
  /* @offset(72) */
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
  /* @offset(80) */
  x_AdditionalLightsWorldToLights : Arr_5,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_4,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_8,
}

alias Arr_9 = array<vec4<f32>, 32u>;

alias Arr_10 = array<vec4<f32>, 32u>;

alias Arr_11 = array<vec4<f32>, 32u>;

alias Arr_12 = array<vec4<f32>, 32u>;

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
  x_AdditionalLightsLayerMasks : Arr_8,
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_INTERP8 : vec3<f32>;

var<private> u_xlatb25 : vec2<bool>;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_48 : UnityPerDraw;

var<private> u_xlat25 : vec3<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(8) var x_MainTex : texture_2d<f32>;

@group(0) @binding(18) var sampler_MainTex : sampler;

var<private> vs_INTERP5 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_135 : PGlobals;

var<private> u_xlat76 : f32;

var<private> vs_INTERP7 : vec3<f32>;

var<private> u_xlat77 : f32;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

@group(0) @binding(11) var Texture2D_D7D66558 : texture_2d<f32>;

@group(0) @binding(21) var samplerTexture2D_D7D66558 : sampler;

@group(1) @binding(5) var<uniform> x_193 : UnityPerMaterial;

var<private> u_xlat78 : f32;

var<private> u_xlat79 : f32;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(9) var Texture2D_DE8BF47E : texture_2d<f32>;

@group(0) @binding(19) var samplerTexture2D_DE8BF47E : sampler;

var<private> u_xlat32 : vec3<f32>;

var<private> u_xlat26 : vec2<f32>;

var<private> u_xlat29 : vec3<f32>;

@group(0) @binding(10) var Texture2D_C005B064 : texture_2d<f32>;

@group(0) @binding(20) var samplerTexture2D_C005B064 : sampler;

@group(0) @binding(7) var x_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1_Texture2D : texture_2d<f32>;

@group(0) @binding(17) var sampler_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1_Texture2D : sampler;

var<private> u_xlatb1 : bool;

@group(1) @binding(3) var<uniform> x_661 : LightShadows;

var<private> u_xlatb4 : vec4<bool>;

var<private> u_xlatu77 : u32;

var<private> u_xlati77 : i32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(13) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlatb31 : vec2<bool>;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(15) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat31 : vec3<f32>;

var<private> u_xlatb56 : bool;

var<private> u_xlat56 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat81 : f32;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat33 : vec3<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat83 : f32;

var<private> u_xlatb29 : bool;

var<private> u_xlatb54 : bool;

var<private> u_xlat54 : f32;

@group(1) @binding(4) var<uniform> x_2316 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlat82 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(12) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu0 : u32;

var<private> u_xlatu54 : u32;

var<private> u_xlati82 : i32;

var<private> u_xlati54 : i32;

@group(1) @binding(1) var<uniform> x_2769 : AdditionalLights;

var<private> u_xlat34 : vec3<f32>;

var<private> u_xlati10 : i32;

var<private> u_xlatb35 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat35 : vec3<f32>;

var<private> u_xlatb85 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat85 : f32;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat36 : f32;

var<private> u_xlat37 : vec3<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat38 : vec2<f32>;

var<private> u_xlat69 : vec2<f32>;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlat88 : f32;

var<private> u_xlat86 : f32;

var<private> u_xlatb60 : bool;

var<private> u_xlati35 : i32;

var<private> u_xlati60 : i32;

var<private> u_xlati85 : i32;

var<private> u_xlatb37 : vec2<bool>;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_LinearClamp : sampler;

var<private> u_xlat75 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu78 : u32;

fn main_1() {
  var x_642 : vec3<f32>;
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
  var x_2270 : f32;
  var x_2396 : f32;
  var x_2407 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2910 : f32;
  var x_2923 : f32;
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
  var x_4259 : f32;
  var hlslcc_movcTemp : vec4<f32>;
  var x_4605 : f32;
  var x_4618 : f32;
  var x_4677 : f32;
  var x_4689 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec3<f32> = vs_INTERP8;
  let x_14 : vec3<f32> = vs_INTERP8;
  u_xlat0.x = dot(x_13, x_14);
  let x_21 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_21);
  let x_26 : f32 = u_xlat0.x;
  u_xlat0.x = (1.0f / x_26);
  let x_39 : f32 = vs_INTERP4.w;
  u_xlatb25.x = (0.0f < x_39);
  let x_53 : f32 = x_48.unity_WorldTransformParams.w;
  u_xlatb25.y = (x_53 >= 0.0f);
  let x_60 : bool = u_xlatb25.x;
  u_xlat25.x = select(-1.0f, 1.0f, x_60);
  let x_65 : bool = u_xlatb25.y;
  u_xlat25.y = select(-1.0f, 1.0f, x_65);
  let x_69 : f32 = u_xlat25.y;
  let x_71 : f32 = u_xlat25.x;
  u_xlat25.x = (x_69 * x_71);
  let x_75 : vec4<f32> = vs_INTERP4;
  let x_77 : vec3<f32> = vs_INTERP8;
  let x_79 : vec3<f32> = (vec3<f32>(x_75.y, x_75.z, x_75.x) * vec3<f32>(x_77.z, x_77.x, x_77.y));
  let x_80 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_79.x, x_79.y, x_79.z, x_80.w);
  let x_82 : vec3<f32> = vs_INTERP8;
  let x_84 : vec4<f32> = vs_INTERP4;
  let x_87 : vec4<f32> = u_xlat1;
  let x_90 : vec3<f32> = ((vec3<f32>(x_82.y, x_82.z, x_82.x) * vec3<f32>(x_84.z, x_84.x, x_84.y)) + -(vec3<f32>(x_87.x, x_87.y, x_87.z)));
  let x_91 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_90.x, x_90.y, x_90.z, x_91.w);
  let x_93 : vec3<f32> = u_xlat25;
  let x_95 : vec4<f32> = u_xlat1;
  let x_97 : vec3<f32> = (vec3<f32>(x_93.x, x_93.x, x_93.x) * vec3<f32>(x_95.x, x_95.y, x_95.z));
  let x_98 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_98.x, x_97.x, x_97.y, x_97.z);
  let x_100 : vec4<f32> = u_xlat0;
  let x_102 : vec3<f32> = vs_INTERP8;
  let x_103 : vec3<f32> = (vec3<f32>(x_100.x, x_100.x, x_100.x) * x_102);
  let x_104 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_103.x, x_103.y, x_103.z, x_104.w);
  let x_107 : vec4<f32> = u_xlat0;
  let x_109 : vec4<f32> = vs_INTERP4;
  u_xlat2 = (vec3<f32>(x_107.x, x_107.x, x_107.x) * vec3<f32>(x_109.x, x_109.y, x_109.z));
  let x_113 : vec4<f32> = u_xlat0;
  let x_115 : vec4<f32> = u_xlat0;
  u_xlat3 = (vec3<f32>(x_113.y, x_113.z, x_113.w) * vec3<f32>(x_115.x, x_115.x, x_115.x));
  let x_131 : vec4<f32> = vs_INTERP5;
  let x_138 : f32 = x_135.x_GlobalMipBias.x;
  let x_139 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_131.x, x_131.y), x_138);
  u_xlat4 = x_139;
  let x_141 : f32 = u_xlat4.w;
  u_xlat0.x = (x_141 + -0.5f);
  let x_147 : f32 = u_xlat0.x;
  let x_152 : f32 = vs_INTERP7.y;
  u_xlat76 = ((x_147 * 4.0f) + x_152);
  let x_154 : f32 = u_xlat76;
  u_xlat76 = (x_154 * 0.33000001311302185059f);
  let x_159 : f32 = vs_INTERP7.y;
  u_xlat77 = (x_159 + 1.0f);
  let x_161 : f32 = u_xlat77;
  u_xlat77 = ((x_161 * -1.33333337306976318359f) + 1.0f);
  let x_165 : f32 = u_xlat76;
  let x_166 : f32 = u_xlat77;
  u_xlat76 = max(x_165, x_166);
  let x_168 : f32 = u_xlat76;
  u_xlat1.w = max(x_168, 0.10000000149011611938f);
  let x_173 : vec4<f32> = vs_INTERP5;
  let x_176 : vec2<f32> = (vec2<f32>(x_173.x, x_173.y) * vec2<f32>(4.0f, 4.0f));
  let x_177 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_176.x, x_176.y, x_177.z, x_177.w);
  let x_185 : vec4<f32> = u_xlat5;
  let x_188 : f32 = x_135.x_GlobalMipBias.x;
  let x_189 : vec4<f32> = textureSampleBias(Texture2D_D7D66558, samplerTexture2D_D7D66558, vec2<f32>(x_185.x, x_185.y), x_188);
  u_xlat6 = vec3<f32>(x_189.x, x_189.y, x_189.z);
  let x_196 : f32 = x_193.Vector1_8B35DE98;
  u_xlat77 = ((-(x_196) * 0.01111099962145090103f) + 0.94999998807907104492f);
  let x_205 : f32 = x_193.Vector1_A492C01C;
  u_xlat78 = (x_205 + -10.0f);
  let x_208 : f32 = u_xlat78;
  let x_211 : f32 = vs_INTERP7.y;
  u_xlat78 = (-(x_208) + x_211);
  let x_213 : f32 = u_xlat78;
  u_xlat78 = (x_213 * 0.05000000074505805969f);
  let x_216 : f32 = u_xlat78;
  u_xlat78 = clamp(x_216, 0.0f, 1.0f);
  let x_219 : f32 = u_xlat78;
  u_xlat79 = ((x_219 * -2.0f) + 3.0f);
  let x_224 : f32 = u_xlat78;
  let x_225 : f32 = u_xlat78;
  u_xlat78 = (x_224 * x_225);
  let x_227 : f32 = u_xlat78;
  let x_228 : f32 = u_xlat79;
  u_xlat78 = (x_227 * x_228);
  let x_236 : vec4<f32> = vs_INTERP5;
  let x_239 : f32 = x_135.x_GlobalMipBias.x;
  let x_240 : vec4<f32> = textureSampleBias(Texture2D_DE8BF47E, samplerTexture2D_DE8BF47E, vec2<f32>(x_236.x, x_236.y), x_239);
  u_xlat7 = x_240;
  let x_242 : vec4<f32> = u_xlat7;
  u_xlat32 = ((vec3<f32>(x_242.w, x_242.y, x_242.z) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_249 : vec3<f32> = u_xlat3;
  let x_250 : vec3<f32> = u_xlat32;
  u_xlat3 = (x_249 * vec3<f32>(x_250.y, x_250.y, x_250.y));
  let x_253 : vec3<f32> = u_xlat32;
  let x_255 : vec3<f32> = u_xlat2;
  let x_257 : vec3<f32> = u_xlat3;
  u_xlat2 = ((vec3<f32>(x_253.x, x_253.x, x_253.x) * x_255) + x_257);
  let x_259 : vec3<f32> = u_xlat32;
  let x_261 : vec4<f32> = u_xlat1;
  let x_264 : vec3<f32> = u_xlat2;
  let x_265 : vec3<f32> = ((vec3<f32>(x_259.z, x_259.z, x_259.z) * vec3<f32>(x_261.x, x_261.y, x_261.z)) + x_264);
  let x_266 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_265.x, x_265.y, x_265.z, x_266.w);
  let x_268 : vec4<f32> = u_xlat1;
  let x_270 : vec4<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_268.x, x_268.y, x_268.z), vec3<f32>(x_270.x, x_270.y, x_270.z));
  let x_275 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_275, 1.17549435e-38f);
  let x_280 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_280);
  let x_284 : f32 = u_xlat1.x;
  let x_286 : f32 = u_xlat1.y;
  u_xlat1.x = (x_284 * x_286);
  let x_289 : f32 = u_xlat78;
  let x_291 : f32 = u_xlat1.x;
  let x_293 : f32 = u_xlat77;
  u_xlat1.x = ((x_289 * x_291) + -(x_293));
  let x_298 : f32 = u_xlat1.x;
  u_xlat1.x = (x_298 * 10.0f);
  let x_303 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_303, 0.0f, 1.0f);
  let x_309 : f32 = u_xlat1.x;
  u_xlat26.x = ((x_309 * -2.0f) + 3.0f);
  let x_314 : f32 = u_xlat1.x;
  let x_316 : f32 = u_xlat1.x;
  u_xlat1.x = (x_314 * x_316);
  let x_320 : f32 = u_xlat1.x;
  let x_322 : f32 = u_xlat26.x;
  u_xlat1.x = (x_320 * x_322);
  let x_325 : vec4<f32> = u_xlat1;
  let x_328 : vec2<f32> = min(vec2<f32>(x_325.x, x_325.w), vec2<f32>(1.0f, 1.0f));
  let x_329 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_328.x, x_329.y, x_329.z, x_328.y);
  let x_332 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_332) + 1.0f);
  let x_336 : vec4<f32> = u_xlat4;
  let x_338 : vec3<f32> = u_xlat6;
  u_xlat2 = (vec3<f32>(x_336.x, x_336.y, x_336.z) + -(x_338));
  let x_341 : vec4<f32> = u_xlat1;
  let x_343 : vec3<f32> = u_xlat2;
  let x_345 : vec3<f32> = u_xlat6;
  u_xlat2 = ((vec3<f32>(x_341.x, x_341.x, x_341.x) * x_343) + x_345);
  let x_347 : vec4<f32> = u_xlat1;
  let x_349 : vec3<f32> = u_xlat2;
  u_xlat3 = (vec3<f32>(x_347.w, x_347.w, x_347.w) * x_349);
  let x_357 : vec4<f32> = u_xlat5;
  let x_360 : f32 = x_135.x_GlobalMipBias.x;
  let x_361 : vec4<f32> = textureSampleBias(Texture2D_C005B064, samplerTexture2D_C005B064, vec2<f32>(x_357.x, x_357.y), x_360);
  u_xlat29 = vec3<f32>(x_361.x, x_361.y, x_361.w);
  let x_364 : f32 = u_xlat29.x;
  let x_366 : f32 = u_xlat29.z;
  u_xlat29.x = (x_364 * x_366);
  let x_369 : vec3<f32> = u_xlat29;
  let x_374 : vec2<f32> = ((vec2<f32>(x_369.x, x_369.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_375 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_374.x, x_374.y, x_375.z, x_375.w);
  let x_377 : vec4<f32> = u_xlat5;
  let x_379 : vec4<f32> = u_xlat5;
  u_xlat26.x = dot(vec2<f32>(x_377.x, x_377.y), vec2<f32>(x_379.x, x_379.y));
  let x_384 : f32 = u_xlat26.x;
  u_xlat26.x = min(x_384, 1.0f);
  let x_388 : f32 = u_xlat26.x;
  u_xlat26.x = (-(x_388) + 1.0f);
  let x_393 : f32 = u_xlat26.x;
  u_xlat26.x = sqrt(x_393);
  let x_397 : f32 = u_xlat26.x;
  u_xlat5.z = max(x_397, 0.0000000000000001f);
  let x_403 : vec4<f32> = x_48.unity_ObjectToWorld[0i];
  let x_406 : vec4<f32> = x_48.unity_ObjectToWorld[0i];
  u_xlat26.x = dot(vec3<f32>(x_403.x, x_403.y, x_403.z), vec3<f32>(x_406.x, x_406.y, x_406.z));
  let x_411 : f32 = u_xlat26.x;
  u_xlat6.x = sqrt(x_411);
  let x_416 : vec4<f32> = x_48.unity_ObjectToWorld[1i];
  let x_419 : vec4<f32> = x_48.unity_ObjectToWorld[1i];
  u_xlat26.x = dot(vec3<f32>(x_416.x, x_416.y, x_416.z), vec3<f32>(x_419.x, x_419.y, x_419.z));
  let x_424 : f32 = u_xlat26.x;
  u_xlat6.y = sqrt(x_424);
  let x_429 : vec4<f32> = x_48.unity_ObjectToWorld[2i];
  let x_432 : vec4<f32> = x_48.unity_ObjectToWorld[2i];
  u_xlat26.x = dot(vec3<f32>(x_429.x, x_429.y, x_429.z), vec3<f32>(x_432.x, x_432.y, x_432.z));
  let x_437 : f32 = u_xlat26.x;
  u_xlat6.z = sqrt(x_437);
  let x_440 : vec3<f32> = u_xlat6;
  let x_441 : vec3<f32> = u_xlat6;
  u_xlat26.x = dot(x_440, x_441);
  let x_445 : f32 = u_xlat26.x;
  u_xlat26.x = sqrt(x_445);
  let x_449 : f32 = u_xlat26.x;
  let x_452 : f32 = x_193.Vector1_90E376AD;
  u_xlat26.x = (x_449 * x_452);
  let x_456 : f32 = u_xlat26.x;
  u_xlat26.x = (x_456 * 30.0f);
  let x_460 : vec2<f32> = u_xlat26;
  let x_462 : vec4<f32> = vs_INTERP5;
  u_xlat26 = (vec2<f32>(x_460.x, x_460.x) * vec2<f32>(x_462.x, x_462.y));
  let x_470 : vec2<f32> = u_xlat26;
  let x_472 : f32 = x_135.x_GlobalMipBias.x;
  let x_473 : vec4<f32> = textureSampleBias(x_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1_Texture2D, sampler_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1_Texture2D, x_470, x_472);
  u_xlat29 = vec3<f32>(x_473.x, x_473.y, x_473.w);
  let x_476 : f32 = u_xlat29.x;
  let x_478 : f32 = u_xlat29.z;
  u_xlat29.x = (x_476 * x_478);
  let x_481 : vec3<f32> = u_xlat29;
  u_xlat26 = ((vec2<f32>(x_481.x, x_481.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_485 : vec2<f32> = u_xlat26;
  let x_486 : vec2<f32> = u_xlat26;
  u_xlat77 = dot(x_485, x_486);
  let x_488 : f32 = u_xlat77;
  u_xlat77 = min(x_488, 1.0f);
  let x_490 : f32 = u_xlat77;
  u_xlat77 = (-(x_490) + 1.0f);
  let x_493 : f32 = u_xlat77;
  u_xlat77 = sqrt(x_493);
  let x_495 : f32 = u_xlat77;
  u_xlat77 = max(x_495, 0.0000000000000001f);
  let x_497 : vec2<f32> = u_xlat26;
  let x_498 : vec3<f32> = u_xlat32;
  let x_500 : vec2<f32> = (x_497 + vec2<f32>(x_498.x, x_498.y));
  let x_501 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_500.x, x_500.y, x_501.z);
  let x_503 : f32 = u_xlat77;
  let x_505 : f32 = u_xlat32.z;
  u_xlat6.z = (x_503 * x_505);
  let x_508 : vec3<f32> = u_xlat6;
  let x_509 : vec3<f32> = u_xlat6;
  u_xlat26.x = dot(x_508, x_509);
  let x_513 : f32 = u_xlat26.x;
  u_xlat26.x = max(x_513, 0.00006103515625f);
  let x_518 : f32 = u_xlat26.x;
  u_xlat26.x = inverseSqrt(x_518);
  let x_521 : vec3<f32> = u_xlat6;
  let x_522 : vec2<f32> = u_xlat26;
  let x_525 : vec4<f32> = u_xlat5;
  u_xlat29 = ((x_521 * vec3<f32>(x_522.x, x_522.x, x_522.x)) + -(vec3<f32>(x_525.x, x_525.y, x_525.z)));
  let x_529 : vec4<f32> = u_xlat1;
  let x_531 : vec3<f32> = u_xlat29;
  let x_533 : vec4<f32> = u_xlat5;
  let x_535 : vec3<f32> = ((vec3<f32>(x_529.x, x_529.x, x_529.x) * x_531) + vec3<f32>(x_533.x, x_533.y, x_533.z));
  let x_536 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_536.x, x_535.x, x_535.y, x_535.z);
  let x_539 : f32 = u_xlat0.x;
  u_xlat0.x = (-(abs(x_539)) + 1.0f);
  let x_544 : vec4<f32> = u_xlat0;
  let x_545 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_544 * vec4<f32>(x_545.x, x_545.z, x_545.z, x_545.z));
  let x_549 : f32 = u_xlat0.x;
  let x_551 : f32 = x_193.Vector1_6E11FCEA;
  u_xlat0.x = (x_549 * x_551);
  let x_555 : f32 = u_xlat1.x;
  let x_557 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_555 * x_557) + -0.85000002384185791016f);
  let x_563 : f32 = u_xlat1.w;
  let x_565 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_563 * x_565) + 0.85000002384185791016f);
  let x_571 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_571, 0.0f, 1.0f);
  let x_574 : vec4<f32> = u_xlat4;
  let x_576 : vec4<f32> = vs_INTERP4;
  let x_579 : vec4<f32> = u_xlat0;
  u_xlat25 = ((vec3<f32>(x_574.y, x_574.y, x_574.y) * vec3<f32>(x_576.x, x_576.y, x_576.z)) + vec3<f32>(x_579.y, x_579.z, x_579.w));
  let x_582 : vec4<f32> = u_xlat4;
  let x_584 : vec3<f32> = vs_INTERP8;
  let x_586 : vec3<f32> = u_xlat25;
  u_xlat25 = ((vec3<f32>(x_582.w, x_582.w, x_582.w) * x_584) + x_586);
  let x_588 : vec3<f32> = u_xlat25;
  let x_589 : vec3<f32> = u_xlat25;
  u_xlat1.x = dot(x_588, x_589);
  let x_593 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_593);
  let x_596 : vec3<f32> = u_xlat25;
  let x_597 : vec4<f32> = u_xlat1;
  u_xlat25 = (x_596 * vec3<f32>(x_597.x, x_597.x, x_597.x));
  let x_603 : f32 = x_135.unity_OrthoParams.w;
  u_xlatb1 = (x_603 == 0.0f);
  let x_605 : vec3<f32> = vs_INTERP7;
  let x_609 : vec3<f32> = x_135.x_WorldSpaceCameraPos;
  let x_610 : vec3<f32> = (-(x_605) + x_609);
  let x_611 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_610.x, x_610.y, x_610.z, x_611.w);
  let x_613 : vec4<f32> = u_xlat4;
  let x_615 : vec4<f32> = u_xlat4;
  u_xlat26.x = dot(vec3<f32>(x_613.x, x_613.y, x_613.z), vec3<f32>(x_615.x, x_615.y, x_615.z));
  let x_620 : f32 = u_xlat26.x;
  u_xlat26.x = inverseSqrt(x_620);
  let x_623 : vec2<f32> = u_xlat26;
  let x_625 : vec4<f32> = u_xlat4;
  let x_627 : vec3<f32> = (vec3<f32>(x_623.x, x_623.x, x_623.x) * vec3<f32>(x_625.x, x_625.y, x_625.z));
  let x_628 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_627.x, x_627.y, x_627.z, x_628.w);
  let x_632 : f32 = x_135.unity_MatrixV[0i].z;
  u_xlat5.x = x_632;
  let x_635 : f32 = x_135.unity_MatrixV[1i].z;
  u_xlat5.y = x_635;
  let x_638 : f32 = x_135.unity_MatrixV[2i].z;
  u_xlat5.z = x_638;
  let x_640 : bool = u_xlatb1;
  if (x_640) {
    let x_645 : vec4<f32> = u_xlat4;
    x_642 = vec3<f32>(x_645.x, x_645.y, x_645.z);
  } else {
    let x_648 : vec4<f32> = u_xlat5;
    x_642 = vec3<f32>(x_648.x, x_648.y, x_648.z);
  }
  let x_650 : vec3<f32> = x_642;
  let x_651 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_650.x, x_650.y, x_650.z, x_651.w);
  let x_653 : vec3<f32> = vs_INTERP7;
  let x_663 : vec4<f32> = x_661.x_CascadeShadowSplitSpheres0;
  let x_666 : vec3<f32> = (x_653 + -(vec3<f32>(x_663.x, x_663.y, x_663.z)));
  let x_667 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_666.x, x_666.y, x_666.z, x_667.w);
  let x_669 : vec3<f32> = vs_INTERP7;
  let x_671 : vec4<f32> = x_661.x_CascadeShadowSplitSpheres1;
  let x_674 : vec3<f32> = (x_669 + -(vec3<f32>(x_671.x, x_671.y, x_671.z)));
  let x_675 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_674.x, x_674.y, x_674.z, x_675.w);
  let x_677 : vec3<f32> = vs_INTERP7;
  let x_679 : vec4<f32> = x_661.x_CascadeShadowSplitSpheres2;
  u_xlat6 = (x_677 + -(vec3<f32>(x_679.x, x_679.y, x_679.z)));
  let x_683 : vec3<f32> = vs_INTERP7;
  let x_685 : vec4<f32> = x_661.x_CascadeShadowSplitSpheres3;
  u_xlat32 = (x_683 + -(vec3<f32>(x_685.x, x_685.y, x_685.z)));
  let x_689 : vec4<f32> = u_xlat4;
  let x_691 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_689.x, x_689.y, x_689.z), vec3<f32>(x_691.x, x_691.y, x_691.z));
  let x_695 : vec4<f32> = u_xlat5;
  let x_697 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_695.x, x_695.y, x_695.z), vec3<f32>(x_697.x, x_697.y, x_697.z));
  let x_701 : vec3<f32> = u_xlat6;
  let x_702 : vec3<f32> = u_xlat6;
  u_xlat4.z = dot(x_701, x_702);
  let x_705 : vec3<f32> = u_xlat32;
  let x_706 : vec3<f32> = u_xlat32;
  u_xlat4.w = dot(x_705, x_706);
  let x_712 : vec4<f32> = u_xlat4;
  let x_714 : vec4<f32> = x_661.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_712 < x_714);
  let x_717 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_717);
  let x_721 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_721);
  let x_725 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_725);
  let x_729 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_729);
  let x_733 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_733);
  let x_738 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_738);
  let x_742 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_742);
  let x_745 : vec4<f32> = u_xlat4;
  let x_747 : vec4<f32> = u_xlat5;
  let x_749 : vec3<f32> = (vec3<f32>(x_745.x, x_745.y, x_745.z) + vec3<f32>(x_747.y, x_747.z, x_747.w));
  let x_750 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_749.x, x_749.y, x_749.z, x_750.w);
  let x_752 : vec4<f32> = u_xlat4;
  let x_755 : vec3<f32> = max(vec3<f32>(x_752.x, x_752.y, x_752.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_756 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_756.x, x_755.x, x_755.y, x_755.z);
  let x_758 : vec4<f32> = u_xlat5;
  u_xlat77 = dot(x_758, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_761 : f32 = u_xlat77;
  u_xlat77 = (-(x_761) + 4.0f);
  let x_766 : f32 = u_xlat77;
  u_xlatu77 = u32(x_766);
  let x_770 : u32 = u_xlatu77;
  u_xlati77 = (bitcast<i32>(x_770) << bitcast<u32>(2i));
  let x_773 : vec3<f32> = vs_INTERP7;
  let x_775 : i32 = u_xlati77;
  let x_778 : i32 = u_xlati77;
  let x_782 : vec4<f32> = x_661.x_MainLightWorldToShadow[((x_775 + 1i) / 4i)][((x_778 + 1i) % 4i)];
  let x_784 : vec3<f32> = (vec3<f32>(x_773.y, x_773.y, x_773.y) * vec3<f32>(x_782.x, x_782.y, x_782.z));
  let x_785 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_784.x, x_784.y, x_784.z, x_785.w);
  let x_787 : i32 = u_xlati77;
  let x_789 : i32 = u_xlati77;
  let x_792 : vec4<f32> = x_661.x_MainLightWorldToShadow[(x_787 / 4i)][(x_789 % 4i)];
  let x_794 : vec3<f32> = vs_INTERP7;
  let x_797 : vec4<f32> = u_xlat4;
  let x_799 : vec3<f32> = ((vec3<f32>(x_792.x, x_792.y, x_792.z) * vec3<f32>(x_794.x, x_794.x, x_794.x)) + vec3<f32>(x_797.x, x_797.y, x_797.z));
  let x_800 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_799.x, x_799.y, x_799.z, x_800.w);
  let x_802 : i32 = u_xlati77;
  let x_805 : i32 = u_xlati77;
  let x_809 : vec4<f32> = x_661.x_MainLightWorldToShadow[((x_802 + 2i) / 4i)][((x_805 + 2i) % 4i)];
  let x_811 : vec3<f32> = vs_INTERP7;
  let x_814 : vec4<f32> = u_xlat4;
  let x_816 : vec3<f32> = ((vec3<f32>(x_809.x, x_809.y, x_809.z) * vec3<f32>(x_811.z, x_811.z, x_811.z)) + vec3<f32>(x_814.x, x_814.y, x_814.z));
  let x_817 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_816.x, x_816.y, x_816.z, x_817.w);
  let x_819 : vec4<f32> = u_xlat4;
  let x_821 : i32 = u_xlati77;
  let x_824 : i32 = u_xlati77;
  let x_828 : vec4<f32> = x_661.x_MainLightWorldToShadow[((x_821 + 3i) / 4i)][((x_824 + 3i) % 4i)];
  let x_830 : vec3<f32> = (vec3<f32>(x_819.x, x_819.y, x_819.z) + vec3<f32>(x_828.x, x_828.y, x_828.z));
  let x_831 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_830.x, x_830.y, x_830.z, x_831.w);
  let x_834 : f32 = vs_INTERP7.y;
  let x_836 : f32 = x_135.unity_MatrixV[1i].z;
  u_xlat77 = (x_834 * x_836);
  let x_839 : f32 = x_135.unity_MatrixV[0i].z;
  let x_841 : f32 = vs_INTERP7.x;
  let x_843 : f32 = u_xlat77;
  u_xlat77 = ((x_839 * x_841) + x_843);
  let x_846 : f32 = x_135.unity_MatrixV[2i].z;
  let x_848 : f32 = vs_INTERP7.z;
  let x_850 : f32 = u_xlat77;
  u_xlat77 = ((x_846 * x_848) + x_850);
  let x_852 : f32 = u_xlat77;
  let x_854 : f32 = x_135.unity_MatrixV[3i].z;
  u_xlat77 = (x_852 + x_854);
  let x_856 : f32 = u_xlat77;
  let x_859 : f32 = x_135.x_ProjectionParams.y;
  u_xlat77 = (-(x_856) + -(x_859));
  let x_862 : f32 = u_xlat77;
  u_xlat77 = max(x_862, 0.0f);
  let x_864 : f32 = u_xlat77;
  let x_867 : f32 = x_135.unity_FogParams.x;
  u_xlat77 = (x_864 * x_867);
  let x_876 : vec2<f32> = vs_INTERP0;
  let x_878 : f32 = x_135.x_GlobalMipBias.x;
  let x_879 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_876, x_878);
  u_xlat5 = x_879;
  let x_884 : vec2<f32> = vs_INTERP0;
  let x_886 : f32 = x_135.x_GlobalMipBias.x;
  let x_887 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_884, x_886);
  u_xlat6 = vec3<f32>(x_887.x, x_887.y, x_887.z);
  let x_889 : vec4<f32> = u_xlat5;
  let x_892 : vec3<f32> = (vec3<f32>(x_889.x, x_889.y, x_889.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_893 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_892.x, x_892.y, x_892.z, x_893.w);
  let x_895 : vec3<f32> = u_xlat25;
  let x_896 : vec4<f32> = u_xlat5;
  u_xlat78 = dot(x_895, vec3<f32>(x_896.x, x_896.y, x_896.z));
  let x_899 : f32 = u_xlat78;
  u_xlat78 = (x_899 + 0.5f);
  let x_902 : f32 = u_xlat78;
  let x_904 : vec3<f32> = u_xlat6;
  let x_905 : vec3<f32> = (vec3<f32>(x_902, x_902, x_902) * x_904);
  let x_906 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_905.x, x_905.y, x_905.z, x_906.w);
  let x_909 : f32 = u_xlat5.w;
  u_xlat78 = max(x_909, 0.00009999999747378752f);
  let x_912 : vec4<f32> = u_xlat5;
  let x_914 : f32 = u_xlat78;
  let x_916 : vec3<f32> = (vec3<f32>(x_912.x, x_912.y, x_912.z) / vec3<f32>(x_914, x_914, x_914));
  let x_917 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_916.x, x_916.y, x_916.z, x_917.w);
  let x_919 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_919 * vec3<f32>(0.86399996280670166016f, 0.86399996280670166016f, 0.86399996280670166016f));
  let x_923 : vec4<f32> = u_xlat1;
  let x_925 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_923.w, x_923.w, x_923.w) * x_925) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_930 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_930 * vec3<f32>(0.10000000149011611938f, 0.10000000149011611938f, 0.10000000149011611938f)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_937 : f32 = u_xlat0.x;
  u_xlat76 = (-(x_937) + 1.0f);
  let x_940 : f32 = u_xlat76;
  let x_941 : f32 = u_xlat76;
  u_xlat78 = (x_940 * x_941);
  let x_943 : f32 = u_xlat78;
  u_xlat78 = max(x_943, 0.0078125f);
  let x_946 : f32 = u_xlat78;
  let x_947 : f32 = u_xlat78;
  u_xlat79 = (x_946 * x_947);
  let x_950 : f32 = u_xlat0.x;
  u_xlat0.x = (x_950 + 0.13600003719329833984f);
  let x_955 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_955, 1.0f);
  let x_959 : f32 = u_xlat78;
  u_xlat80 = ((x_959 * 4.0f) + 2.0f);
  let x_963 : f32 = u_xlat7.x;
  u_xlat6.x = min(x_963, 1.0f);
  let x_968 : f32 = x_661.x_MainLightShadowParams.y;
  u_xlatb31.x = (0.0f < x_968);
  let x_972 : bool = u_xlatb31.x;
  if (x_972) {
    let x_976 : f32 = x_661.x_MainLightShadowParams.y;
    u_xlatb31.x = (x_976 == 1.0f);
    let x_980 : bool = u_xlatb31.x;
    if (x_980) {
      let x_983 : vec4<f32> = u_xlat4;
      let x_986 : vec4<f32> = x_661.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_983.x, x_983.y, x_983.x, x_983.y) + x_986);
      let x_989 : vec4<f32> = u_xlat7;
      let x_990 : vec2<f32> = vec2<f32>(x_989.x, x_989.y);
      let x_992 : f32 = u_xlat4.z;
      txVec0 = vec3<f32>(x_990.x, x_990.y, x_992);
      let x_1005 : vec3<f32> = txVec0;
      let x_1007 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1005.xy, x_1005.z);
      u_xlat8.x = x_1007;
      let x_1010 : vec4<f32> = u_xlat7;
      let x_1011 : vec2<f32> = vec2<f32>(x_1010.z, x_1010.w);
      let x_1013 : f32 = u_xlat4.z;
      txVec1 = vec3<f32>(x_1011.x, x_1011.y, x_1013);
      let x_1020 : vec3<f32> = txVec1;
      let x_1022 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1020.xy, x_1020.z);
      u_xlat8.y = x_1022;
      let x_1024 : vec4<f32> = u_xlat4;
      let x_1027 : vec4<f32> = x_661.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_1024.x, x_1024.y, x_1024.x, x_1024.y) + x_1027);
      let x_1030 : vec4<f32> = u_xlat7;
      let x_1031 : vec2<f32> = vec2<f32>(x_1030.x, x_1030.y);
      let x_1033 : f32 = u_xlat4.z;
      txVec2 = vec3<f32>(x_1031.x, x_1031.y, x_1033);
      let x_1040 : vec3<f32> = txVec2;
      let x_1042 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1040.xy, x_1040.z);
      u_xlat8.z = x_1042;
      let x_1045 : vec4<f32> = u_xlat7;
      let x_1046 : vec2<f32> = vec2<f32>(x_1045.z, x_1045.w);
      let x_1048 : f32 = u_xlat4.z;
      txVec3 = vec3<f32>(x_1046.x, x_1046.y, x_1048);
      let x_1055 : vec3<f32> = txVec3;
      let x_1057 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1055.xy, x_1055.z);
      u_xlat8.w = x_1057;
      let x_1060 : vec4<f32> = u_xlat8;
      u_xlat31.x = dot(x_1060, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1068 : f32 = x_661.x_MainLightShadowParams.y;
      u_xlatb56 = (x_1068 == 2.0f);
      let x_1070 : bool = u_xlatb56;
      if (x_1070) {
        let x_1074 : vec4<f32> = u_xlat4;
        let x_1077 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        u_xlat56 = ((vec2<f32>(x_1074.x, x_1074.y) * vec2<f32>(x_1077.z, x_1077.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1082 : vec2<f32> = u_xlat56;
        u_xlat56 = floor(x_1082);
        let x_1084 : vec4<f32> = u_xlat4;
        let x_1087 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_1090 : vec2<f32> = u_xlat56;
        let x_1092 : vec2<f32> = ((vec2<f32>(x_1084.x, x_1084.y) * vec2<f32>(x_1087.z, x_1087.w)) + -(x_1090));
        let x_1093 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1092.x, x_1092.y, x_1093.z, x_1093.w);
        let x_1095 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1095.x, x_1095.x, x_1095.y, x_1095.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1100 : vec4<f32> = u_xlat8;
        let x_1102 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1100.x, x_1100.x, x_1100.z, x_1100.z) * vec4<f32>(x_1102.x, x_1102.x, x_1102.z, x_1102.z));
        let x_1106 : vec4<f32> = u_xlat9;
        u_xlat57 = (vec2<f32>(x_1106.y, x_1106.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1111 : vec4<f32> = u_xlat9;
        let x_1114 : vec4<f32> = u_xlat7;
        let x_1117 : vec2<f32> = ((vec2<f32>(x_1111.x, x_1111.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1114.x, x_1114.y)));
        let x_1118 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1117.x, x_1118.y, x_1117.y, x_1118.w);
        let x_1120 : vec4<f32> = u_xlat7;
        let x_1123 : vec2<f32> = (-(vec2<f32>(x_1120.x, x_1120.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1124 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1123.x, x_1123.y, x_1124.z, x_1124.w);
        let x_1127 : vec4<f32> = u_xlat7;
        u_xlat59 = min(vec2<f32>(x_1127.x, x_1127.y), vec2<f32>(0.0f, 0.0f));
        let x_1131 : vec2<f32> = u_xlat59;
        let x_1133 : vec2<f32> = u_xlat59;
        let x_1135 : vec4<f32> = u_xlat9;
        u_xlat59 = ((-(x_1131) * x_1133) + vec2<f32>(x_1135.x, x_1135.y));
        let x_1138 : vec4<f32> = u_xlat7;
        let x_1140 : vec2<f32> = max(vec2<f32>(x_1138.x, x_1138.y), vec2<f32>(0.0f, 0.0f));
        let x_1141 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1140.x, x_1140.y, x_1141.z, x_1141.w);
        let x_1143 : vec4<f32> = u_xlat7;
        let x_1146 : vec4<f32> = u_xlat7;
        let x_1149 : vec4<f32> = u_xlat8;
        let x_1151 : vec2<f32> = ((-(vec2<f32>(x_1143.x, x_1143.y)) * vec2<f32>(x_1146.x, x_1146.y)) + vec2<f32>(x_1149.y, x_1149.w));
        let x_1152 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1151.x, x_1151.y, x_1152.z, x_1152.w);
        let x_1154 : vec2<f32> = u_xlat59;
        u_xlat59 = (x_1154 + vec2<f32>(1.0f, 1.0f));
        let x_1156 : vec4<f32> = u_xlat7;
        let x_1158 : vec2<f32> = (vec2<f32>(x_1156.x, x_1156.y) + vec2<f32>(1.0f, 1.0f));
        let x_1159 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1158.x, x_1158.y, x_1159.z, x_1159.w);
        let x_1162 : vec4<f32> = u_xlat8;
        let x_1166 : vec2<f32> = (vec2<f32>(x_1162.x, x_1162.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1167 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1166.x, x_1166.y, x_1167.z, x_1167.w);
        let x_1170 : vec4<f32> = u_xlat9;
        let x_1172 : vec2<f32> = (vec2<f32>(x_1170.x, x_1170.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1173 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1172.x, x_1172.y, x_1173.z, x_1173.w);
        let x_1175 : vec2<f32> = u_xlat59;
        let x_1176 : vec2<f32> = (x_1175 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1177 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1176.x, x_1176.y, x_1177.z, x_1177.w);
        let x_1180 : vec4<f32> = u_xlat7;
        let x_1182 : vec2<f32> = (vec2<f32>(x_1180.x, x_1180.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1183 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1182.x, x_1182.y, x_1183.z, x_1183.w);
        let x_1185 : vec4<f32> = u_xlat8;
        let x_1187 : vec2<f32> = (vec2<f32>(x_1185.y, x_1185.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1188 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1187.x, x_1187.y, x_1188.z, x_1188.w);
        let x_1191 : f32 = u_xlat9.x;
        u_xlat10.z = x_1191;
        let x_1194 : f32 = u_xlat7.x;
        u_xlat10.w = x_1194;
        let x_1197 : f32 = u_xlat12.x;
        u_xlat11.z = x_1197;
        let x_1200 : f32 = u_xlat57.x;
        u_xlat11.w = x_1200;
        let x_1202 : vec4<f32> = u_xlat10;
        let x_1204 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1202.z, x_1202.w, x_1202.x, x_1202.z) + vec4<f32>(x_1204.z, x_1204.w, x_1204.x, x_1204.z));
        let x_1208 : f32 = u_xlat10.y;
        u_xlat9.z = x_1208;
        let x_1211 : f32 = u_xlat7.y;
        u_xlat9.w = x_1211;
        let x_1214 : f32 = u_xlat11.y;
        u_xlat12.z = x_1214;
        let x_1217 : f32 = u_xlat57.y;
        u_xlat12.w = x_1217;
        let x_1219 : vec4<f32> = u_xlat9;
        let x_1221 : vec4<f32> = u_xlat12;
        let x_1223 : vec3<f32> = (vec3<f32>(x_1219.z, x_1219.y, x_1219.w) + vec3<f32>(x_1221.z, x_1221.y, x_1221.w));
        let x_1224 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1223.x, x_1223.y, x_1223.z, x_1224.w);
        let x_1226 : vec4<f32> = u_xlat11;
        let x_1228 : vec4<f32> = u_xlat8;
        let x_1230 : vec3<f32> = (vec3<f32>(x_1226.x, x_1226.z, x_1226.w) / vec3<f32>(x_1228.z, x_1228.w, x_1228.y));
        let x_1231 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1230.x, x_1230.y, x_1230.z, x_1231.w);
        let x_1233 : vec4<f32> = u_xlat9;
        let x_1238 : vec3<f32> = (vec3<f32>(x_1233.x, x_1233.y, x_1233.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1239 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1238.x, x_1238.y, x_1238.z, x_1239.w);
        let x_1241 : vec4<f32> = u_xlat12;
        let x_1243 : vec4<f32> = u_xlat7;
        let x_1245 : vec3<f32> = (vec3<f32>(x_1241.z, x_1241.y, x_1241.w) / vec3<f32>(x_1243.x, x_1243.y, x_1243.z));
        let x_1246 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1245.x, x_1245.y, x_1245.z, x_1246.w);
        let x_1248 : vec4<f32> = u_xlat10;
        let x_1250 : vec3<f32> = (vec3<f32>(x_1248.x, x_1248.y, x_1248.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1251 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1250.x, x_1250.y, x_1250.z, x_1251.w);
        let x_1253 : vec4<f32> = u_xlat9;
        let x_1256 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_1258 : vec3<f32> = (vec3<f32>(x_1253.y, x_1253.x, x_1253.z) * vec3<f32>(x_1256.x, x_1256.x, x_1256.x));
        let x_1259 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1258.x, x_1258.y, x_1258.z, x_1259.w);
        let x_1261 : vec4<f32> = u_xlat10;
        let x_1264 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_1266 : vec3<f32> = (vec3<f32>(x_1261.x, x_1261.y, x_1261.z) * vec3<f32>(x_1264.y, x_1264.y, x_1264.y));
        let x_1267 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1266.x, x_1266.y, x_1266.z, x_1267.w);
        let x_1270 : f32 = u_xlat10.x;
        u_xlat9.w = x_1270;
        let x_1272 : vec2<f32> = u_xlat56;
        let x_1275 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_1278 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1272.x, x_1272.y, x_1272.x, x_1272.y) * vec4<f32>(x_1275.x, x_1275.y, x_1275.x, x_1275.y)) + vec4<f32>(x_1278.y, x_1278.w, x_1278.x, x_1278.w));
        let x_1281 : vec2<f32> = u_xlat56;
        let x_1283 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_1286 : vec4<f32> = u_xlat9;
        let x_1288 : vec2<f32> = ((x_1281 * vec2<f32>(x_1283.x, x_1283.y)) + vec2<f32>(x_1286.z, x_1286.w));
        let x_1289 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1288.x, x_1288.y, x_1289.z, x_1289.w);
        let x_1292 : f32 = u_xlat9.y;
        u_xlat10.w = x_1292;
        let x_1294 : vec4<f32> = u_xlat10;
        let x_1295 : vec2<f32> = vec2<f32>(x_1294.y, x_1294.z);
        let x_1296 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1296.x, x_1295.x, x_1296.z, x_1295.y);
        let x_1299 : vec2<f32> = u_xlat56;
        let x_1302 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_1305 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_1299.x, x_1299.y, x_1299.x, x_1299.y) * vec4<f32>(x_1302.x, x_1302.y, x_1302.x, x_1302.y)) + vec4<f32>(x_1305.x, x_1305.y, x_1305.z, x_1305.y));
        let x_1308 : vec2<f32> = u_xlat56;
        let x_1311 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_1314 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1308.x, x_1308.y, x_1308.x, x_1308.y) * vec4<f32>(x_1311.x, x_1311.y, x_1311.x, x_1311.y)) + vec4<f32>(x_1314.w, x_1314.y, x_1314.w, x_1314.z));
        let x_1317 : vec2<f32> = u_xlat56;
        let x_1320 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_1323 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1317.x, x_1317.y, x_1317.x, x_1317.y) * vec4<f32>(x_1320.x, x_1320.y, x_1320.x, x_1320.y)) + vec4<f32>(x_1323.x, x_1323.w, x_1323.z, x_1323.w));
        let x_1327 : vec4<f32> = u_xlat7;
        let x_1329 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_1327.x, x_1327.x, x_1327.x, x_1327.y) * vec4<f32>(x_1329.z, x_1329.w, x_1329.y, x_1329.z));
        let x_1333 : vec4<f32> = u_xlat7;
        let x_1335 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1333.y, x_1333.y, x_1333.z, x_1333.z) * x_1335);
        let x_1338 : f32 = u_xlat7.z;
        let x_1340 : f32 = u_xlat8.y;
        u_xlat56.x = (x_1338 * x_1340);
        let x_1344 : vec4<f32> = u_xlat11;
        let x_1345 : vec2<f32> = vec2<f32>(x_1344.x, x_1344.y);
        let x_1347 : f32 = u_xlat4.z;
        txVec4 = vec3<f32>(x_1345.x, x_1345.y, x_1347);
        let x_1355 : vec3<f32> = txVec4;
        let x_1357 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1355.xy, x_1355.z);
        u_xlat81 = x_1357;
        let x_1359 : vec4<f32> = u_xlat11;
        let x_1360 : vec2<f32> = vec2<f32>(x_1359.z, x_1359.w);
        let x_1362 : f32 = u_xlat4.z;
        txVec5 = vec3<f32>(x_1360.x, x_1360.y, x_1362);
        let x_1369 : vec3<f32> = txVec5;
        let x_1371 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1369.xy, x_1369.z);
        u_xlat7.x = x_1371;
        let x_1374 : f32 = u_xlat7.x;
        let x_1376 : f32 = u_xlat14.y;
        u_xlat7.x = (x_1374 * x_1376);
        let x_1380 : f32 = u_xlat14.x;
        let x_1381 : f32 = u_xlat81;
        let x_1384 : f32 = u_xlat7.x;
        u_xlat81 = ((x_1380 * x_1381) + x_1384);
        let x_1387 : vec4<f32> = u_xlat12;
        let x_1388 : vec2<f32> = vec2<f32>(x_1387.x, x_1387.y);
        let x_1390 : f32 = u_xlat4.z;
        txVec6 = vec3<f32>(x_1388.x, x_1388.y, x_1390);
        let x_1397 : vec3<f32> = txVec6;
        let x_1399 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1397.xy, x_1397.z);
        u_xlat7.x = x_1399;
        let x_1402 : f32 = u_xlat14.z;
        let x_1404 : f32 = u_xlat7.x;
        let x_1406 : f32 = u_xlat81;
        u_xlat81 = ((x_1402 * x_1404) + x_1406);
        let x_1409 : vec4<f32> = u_xlat10;
        let x_1410 : vec2<f32> = vec2<f32>(x_1409.x, x_1409.y);
        let x_1412 : f32 = u_xlat4.z;
        txVec7 = vec3<f32>(x_1410.x, x_1410.y, x_1412);
        let x_1419 : vec3<f32> = txVec7;
        let x_1421 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1419.xy, x_1419.z);
        u_xlat7.x = x_1421;
        let x_1424 : f32 = u_xlat14.w;
        let x_1426 : f32 = u_xlat7.x;
        let x_1428 : f32 = u_xlat81;
        u_xlat81 = ((x_1424 * x_1426) + x_1428);
        let x_1431 : vec4<f32> = u_xlat13;
        let x_1432 : vec2<f32> = vec2<f32>(x_1431.x, x_1431.y);
        let x_1434 : f32 = u_xlat4.z;
        txVec8 = vec3<f32>(x_1432.x, x_1432.y, x_1434);
        let x_1441 : vec3<f32> = txVec8;
        let x_1443 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1441.xy, x_1441.z);
        u_xlat7.x = x_1443;
        let x_1446 : f32 = u_xlat15.x;
        let x_1448 : f32 = u_xlat7.x;
        let x_1450 : f32 = u_xlat81;
        u_xlat81 = ((x_1446 * x_1448) + x_1450);
        let x_1453 : vec4<f32> = u_xlat13;
        let x_1454 : vec2<f32> = vec2<f32>(x_1453.z, x_1453.w);
        let x_1456 : f32 = u_xlat4.z;
        txVec9 = vec3<f32>(x_1454.x, x_1454.y, x_1456);
        let x_1463 : vec3<f32> = txVec9;
        let x_1465 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1463.xy, x_1463.z);
        u_xlat7.x = x_1465;
        let x_1468 : f32 = u_xlat15.y;
        let x_1470 : f32 = u_xlat7.x;
        let x_1472 : f32 = u_xlat81;
        u_xlat81 = ((x_1468 * x_1470) + x_1472);
        let x_1475 : vec4<f32> = u_xlat10;
        let x_1476 : vec2<f32> = vec2<f32>(x_1475.z, x_1475.w);
        let x_1478 : f32 = u_xlat4.z;
        txVec10 = vec3<f32>(x_1476.x, x_1476.y, x_1478);
        let x_1485 : vec3<f32> = txVec10;
        let x_1487 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1485.xy, x_1485.z);
        u_xlat7.x = x_1487;
        let x_1490 : f32 = u_xlat15.z;
        let x_1492 : f32 = u_xlat7.x;
        let x_1494 : f32 = u_xlat81;
        u_xlat81 = ((x_1490 * x_1492) + x_1494);
        let x_1497 : vec4<f32> = u_xlat9;
        let x_1498 : vec2<f32> = vec2<f32>(x_1497.x, x_1497.y);
        let x_1500 : f32 = u_xlat4.z;
        txVec11 = vec3<f32>(x_1498.x, x_1498.y, x_1500);
        let x_1507 : vec3<f32> = txVec11;
        let x_1509 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1507.xy, x_1507.z);
        u_xlat7.x = x_1509;
        let x_1512 : f32 = u_xlat15.w;
        let x_1514 : f32 = u_xlat7.x;
        let x_1516 : f32 = u_xlat81;
        u_xlat81 = ((x_1512 * x_1514) + x_1516);
        let x_1519 : vec4<f32> = u_xlat9;
        let x_1520 : vec2<f32> = vec2<f32>(x_1519.z, x_1519.w);
        let x_1522 : f32 = u_xlat4.z;
        txVec12 = vec3<f32>(x_1520.x, x_1520.y, x_1522);
        let x_1529 : vec3<f32> = txVec12;
        let x_1531 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1529.xy, x_1529.z);
        u_xlat7.x = x_1531;
        let x_1534 : f32 = u_xlat56.x;
        let x_1536 : f32 = u_xlat7.x;
        let x_1538 : f32 = u_xlat81;
        u_xlat31.x = ((x_1534 * x_1536) + x_1538);
      } else {
        let x_1542 : vec4<f32> = u_xlat4;
        let x_1545 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        u_xlat56 = ((vec2<f32>(x_1542.x, x_1542.y) * vec2<f32>(x_1545.z, x_1545.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1549 : vec2<f32> = u_xlat56;
        u_xlat56 = floor(x_1549);
        let x_1551 : vec4<f32> = u_xlat4;
        let x_1554 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_1557 : vec2<f32> = u_xlat56;
        let x_1559 : vec2<f32> = ((vec2<f32>(x_1551.x, x_1551.y) * vec2<f32>(x_1554.z, x_1554.w)) + -(x_1557));
        let x_1560 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1559.x, x_1559.y, x_1560.z, x_1560.w);
        let x_1562 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1562.x, x_1562.x, x_1562.y, x_1562.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1565 : vec4<f32> = u_xlat8;
        let x_1567 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1565.x, x_1565.x, x_1565.z, x_1565.z) * vec4<f32>(x_1567.x, x_1567.x, x_1567.z, x_1567.z));
        let x_1570 : vec4<f32> = u_xlat9;
        let x_1574 : vec2<f32> = (vec2<f32>(x_1570.y, x_1570.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1575 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1575.x, x_1574.x, x_1575.z, x_1574.y);
        let x_1577 : vec4<f32> = u_xlat9;
        let x_1580 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_1577.x, x_1577.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1580.x, x_1580.y)));
        let x_1584 : vec4<f32> = u_xlat7;
        let x_1587 : vec2<f32> = (-(vec2<f32>(x_1584.x, x_1584.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1588 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1587.x, x_1588.y, x_1587.y, x_1588.w);
        let x_1590 : vec4<f32> = u_xlat7;
        let x_1592 : vec2<f32> = min(vec2<f32>(x_1590.x, x_1590.y), vec2<f32>(0.0f, 0.0f));
        let x_1593 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1592.x, x_1592.y, x_1593.z, x_1593.w);
        let x_1595 : vec4<f32> = u_xlat9;
        let x_1598 : vec4<f32> = u_xlat9;
        let x_1601 : vec4<f32> = u_xlat8;
        let x_1603 : vec2<f32> = ((-(vec2<f32>(x_1595.x, x_1595.y)) * vec2<f32>(x_1598.x, x_1598.y)) + vec2<f32>(x_1601.x, x_1601.z));
        let x_1604 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1603.x, x_1604.y, x_1603.y, x_1604.w);
        let x_1606 : vec4<f32> = u_xlat7;
        let x_1608 : vec2<f32> = max(vec2<f32>(x_1606.x, x_1606.y), vec2<f32>(0.0f, 0.0f));
        let x_1609 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1608.x, x_1608.y, x_1609.z, x_1609.w);
        let x_1611 : vec4<f32> = u_xlat9;
        let x_1614 : vec4<f32> = u_xlat9;
        let x_1617 : vec4<f32> = u_xlat8;
        let x_1619 : vec2<f32> = ((-(vec2<f32>(x_1611.x, x_1611.y)) * vec2<f32>(x_1614.x, x_1614.y)) + vec2<f32>(x_1617.y, x_1617.w));
        let x_1620 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1620.x, x_1619.x, x_1620.z, x_1619.y);
        let x_1622 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1622 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1626 : f32 = u_xlat8.y;
        u_xlat9.z = (x_1626 * 0.08163200318813323975f);
        let x_1630 : vec2<f32> = u_xlat57;
        let x_1633 : vec2<f32> = (vec2<f32>(x_1630.y, x_1630.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1634 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1633.x, x_1633.y, x_1634.z, x_1634.w);
        let x_1636 : vec4<f32> = u_xlat8;
        u_xlat57 = (vec2<f32>(x_1636.x, x_1636.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1640 : f32 = u_xlat8.w;
        u_xlat11.z = (x_1640 * 0.08163200318813323975f);
        let x_1644 : f32 = u_xlat11.y;
        u_xlat9.x = x_1644;
        let x_1646 : vec4<f32> = u_xlat7;
        let x_1653 : vec2<f32> = ((vec2<f32>(x_1646.x, x_1646.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1654 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1654.x, x_1653.x, x_1654.z, x_1653.y);
        let x_1656 : vec4<f32> = u_xlat7;
        let x_1660 : vec2<f32> = ((vec2<f32>(x_1656.x, x_1656.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1661 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1660.x, x_1661.y, x_1660.y, x_1661.w);
        let x_1664 : f32 = u_xlat57.x;
        u_xlat8.y = x_1664;
        let x_1667 : f32 = u_xlat10.y;
        u_xlat8.w = x_1667;
        let x_1669 : vec4<f32> = u_xlat8;
        let x_1670 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1669 + x_1670);
        let x_1672 : vec4<f32> = u_xlat7;
        let x_1675 : vec2<f32> = ((vec2<f32>(x_1672.y, x_1672.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1676 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1676.x, x_1675.x, x_1676.z, x_1675.y);
        let x_1678 : vec4<f32> = u_xlat7;
        let x_1681 : vec2<f32> = ((vec2<f32>(x_1678.y, x_1678.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1682 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1681.x, x_1682.y, x_1681.y, x_1682.w);
        let x_1685 : f32 = u_xlat57.y;
        u_xlat10.y = x_1685;
        let x_1687 : vec4<f32> = u_xlat10;
        let x_1688 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1687 + x_1688);
        let x_1690 : vec4<f32> = u_xlat8;
        let x_1691 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_1690 / x_1691);
        let x_1693 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1693 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1699 : vec4<f32> = u_xlat10;
        let x_1700 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_1699 / x_1700);
        let x_1702 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1702 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1704 : vec4<f32> = u_xlat8;
        let x_1707 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1704.w, x_1704.x, x_1704.y, x_1704.z) * vec4<f32>(x_1707.x, x_1707.x, x_1707.x, x_1707.x));
        let x_1710 : vec4<f32> = u_xlat10;
        let x_1713 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1710.x, x_1710.w, x_1710.y, x_1710.z) * vec4<f32>(x_1713.y, x_1713.y, x_1713.y, x_1713.y));
        let x_1716 : vec4<f32> = u_xlat8;
        let x_1717 : vec3<f32> = vec3<f32>(x_1716.y, x_1716.z, x_1716.w);
        let x_1718 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1717.x, x_1718.y, x_1717.y, x_1717.z);
        let x_1721 : f32 = u_xlat10.x;
        u_xlat11.y = x_1721;
        let x_1723 : vec2<f32> = u_xlat56;
        let x_1726 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_1729 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1723.x, x_1723.y, x_1723.x, x_1723.y) * vec4<f32>(x_1726.x, x_1726.y, x_1726.x, x_1726.y)) + vec4<f32>(x_1729.x, x_1729.y, x_1729.z, x_1729.y));
        let x_1732 : vec2<f32> = u_xlat56;
        let x_1734 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_1737 : vec4<f32> = u_xlat11;
        let x_1739 : vec2<f32> = ((x_1732 * vec2<f32>(x_1734.x, x_1734.y)) + vec2<f32>(x_1737.w, x_1737.y));
        let x_1740 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1739.x, x_1739.y, x_1740.z, x_1740.w);
        let x_1743 : f32 = u_xlat11.y;
        u_xlat8.y = x_1743;
        let x_1746 : f32 = u_xlat10.z;
        u_xlat11.y = x_1746;
        let x_1748 : vec2<f32> = u_xlat56;
        let x_1751 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_1754 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_1748.x, x_1748.y, x_1748.x, x_1748.y) * vec4<f32>(x_1751.x, x_1751.y, x_1751.x, x_1751.y)) + vec4<f32>(x_1754.x, x_1754.y, x_1754.z, x_1754.y));
        let x_1758 : vec2<f32> = u_xlat56;
        let x_1760 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_1763 : vec4<f32> = u_xlat11;
        u_xlat63 = ((x_1758 * vec2<f32>(x_1760.x, x_1760.y)) + vec2<f32>(x_1763.w, x_1763.y));
        let x_1767 : f32 = u_xlat11.y;
        u_xlat8.z = x_1767;
        let x_1769 : vec2<f32> = u_xlat56;
        let x_1772 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_1775 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1769.x, x_1769.y, x_1769.x, x_1769.y) * vec4<f32>(x_1772.x, x_1772.y, x_1772.x, x_1772.y)) + vec4<f32>(x_1775.x, x_1775.y, x_1775.x, x_1775.z));
        let x_1779 : f32 = u_xlat10.w;
        u_xlat11.y = x_1779;
        let x_1782 : vec2<f32> = u_xlat56;
        let x_1785 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_1788 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1782.x, x_1782.y, x_1782.x, x_1782.y) * vec4<f32>(x_1785.x, x_1785.y, x_1785.x, x_1785.y)) + vec4<f32>(x_1788.x, x_1788.y, x_1788.z, x_1788.y));
        let x_1792 : vec2<f32> = u_xlat56;
        let x_1794 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_1797 : vec4<f32> = u_xlat11;
        let x_1799 : vec2<f32> = ((x_1792 * vec2<f32>(x_1794.x, x_1794.y)) + vec2<f32>(x_1797.w, x_1797.y));
        let x_1800 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_1799.x, x_1799.y, x_1800.z);
        let x_1803 : f32 = u_xlat11.y;
        u_xlat8.w = x_1803;
        let x_1806 : vec2<f32> = u_xlat56;
        let x_1808 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_1811 : vec4<f32> = u_xlat8;
        let x_1813 : vec2<f32> = ((x_1806 * vec2<f32>(x_1808.x, x_1808.y)) + vec2<f32>(x_1811.x, x_1811.w));
        let x_1814 : vec4<f32> = u_xlat17;
        u_xlat17 = vec4<f32>(x_1813.x, x_1813.y, x_1814.z, x_1814.w);
        let x_1816 : vec4<f32> = u_xlat11;
        let x_1817 : vec3<f32> = vec3<f32>(x_1816.x, x_1816.z, x_1816.w);
        let x_1818 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1817.x, x_1818.y, x_1817.y, x_1817.z);
        let x_1820 : vec2<f32> = u_xlat56;
        let x_1823 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_1826 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1820.x, x_1820.y, x_1820.x, x_1820.y) * vec4<f32>(x_1823.x, x_1823.y, x_1823.x, x_1823.y)) + vec4<f32>(x_1826.x, x_1826.y, x_1826.z, x_1826.y));
        let x_1830 : vec2<f32> = u_xlat56;
        let x_1832 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_1835 : vec4<f32> = u_xlat10;
        u_xlat60 = ((x_1830 * vec2<f32>(x_1832.x, x_1832.y)) + vec2<f32>(x_1835.w, x_1835.y));
        let x_1839 : f32 = u_xlat8.x;
        u_xlat10.x = x_1839;
        let x_1841 : vec2<f32> = u_xlat56;
        let x_1843 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_1846 : vec4<f32> = u_xlat10;
        u_xlat56 = ((x_1841 * vec2<f32>(x_1843.x, x_1843.y)) + vec2<f32>(x_1846.x, x_1846.y));
        let x_1850 : vec4<f32> = u_xlat7;
        let x_1852 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1850.x, x_1850.x, x_1850.x, x_1850.x) * x_1852);
        let x_1855 : vec4<f32> = u_xlat7;
        let x_1857 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_1855.y, x_1855.y, x_1855.y, x_1855.y) * x_1857);
        let x_1860 : vec4<f32> = u_xlat7;
        let x_1862 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_1860.z, x_1860.z, x_1860.z, x_1860.z) * x_1862);
        let x_1864 : vec4<f32> = u_xlat7;
        let x_1866 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_1864.w, x_1864.w, x_1864.w, x_1864.w) * x_1866);
        let x_1869 : vec4<f32> = u_xlat12;
        let x_1870 : vec2<f32> = vec2<f32>(x_1869.x, x_1869.y);
        let x_1872 : f32 = u_xlat4.z;
        txVec13 = vec3<f32>(x_1870.x, x_1870.y, x_1872);
        let x_1879 : vec3<f32> = txVec13;
        let x_1881 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1879.xy, x_1879.z);
        u_xlat8.x = x_1881;
        let x_1884 : vec4<f32> = u_xlat12;
        let x_1885 : vec2<f32> = vec2<f32>(x_1884.z, x_1884.w);
        let x_1887 : f32 = u_xlat4.z;
        txVec14 = vec3<f32>(x_1885.x, x_1885.y, x_1887);
        let x_1895 : vec3<f32> = txVec14;
        let x_1897 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1895.xy, x_1895.z);
        u_xlat83 = x_1897;
        let x_1898 : f32 = u_xlat83;
        let x_1900 : f32 = u_xlat18.y;
        u_xlat83 = (x_1898 * x_1900);
        let x_1903 : f32 = u_xlat18.x;
        let x_1905 : f32 = u_xlat8.x;
        let x_1907 : f32 = u_xlat83;
        u_xlat8.x = ((x_1903 * x_1905) + x_1907);
        let x_1911 : vec4<f32> = u_xlat13;
        let x_1912 : vec2<f32> = vec2<f32>(x_1911.x, x_1911.y);
        let x_1914 : f32 = u_xlat4.z;
        txVec15 = vec3<f32>(x_1912.x, x_1912.y, x_1914);
        let x_1921 : vec3<f32> = txVec15;
        let x_1923 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1921.xy, x_1921.z);
        u_xlat83 = x_1923;
        let x_1925 : f32 = u_xlat18.z;
        let x_1926 : f32 = u_xlat83;
        let x_1929 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1925 * x_1926) + x_1929);
        let x_1933 : vec4<f32> = u_xlat15;
        let x_1934 : vec2<f32> = vec2<f32>(x_1933.x, x_1933.y);
        let x_1936 : f32 = u_xlat4.z;
        txVec16 = vec3<f32>(x_1934.x, x_1934.y, x_1936);
        let x_1943 : vec3<f32> = txVec16;
        let x_1945 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1943.xy, x_1943.z);
        u_xlat83 = x_1945;
        let x_1947 : f32 = u_xlat18.w;
        let x_1948 : f32 = u_xlat83;
        let x_1951 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1947 * x_1948) + x_1951);
        let x_1955 : vec4<f32> = u_xlat14;
        let x_1956 : vec2<f32> = vec2<f32>(x_1955.x, x_1955.y);
        let x_1958 : f32 = u_xlat4.z;
        txVec17 = vec3<f32>(x_1956.x, x_1956.y, x_1958);
        let x_1965 : vec3<f32> = txVec17;
        let x_1967 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1965.xy, x_1965.z);
        u_xlat83 = x_1967;
        let x_1969 : f32 = u_xlat19.x;
        let x_1970 : f32 = u_xlat83;
        let x_1973 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1969 * x_1970) + x_1973);
        let x_1977 : vec4<f32> = u_xlat14;
        let x_1978 : vec2<f32> = vec2<f32>(x_1977.z, x_1977.w);
        let x_1980 : f32 = u_xlat4.z;
        txVec18 = vec3<f32>(x_1978.x, x_1978.y, x_1980);
        let x_1987 : vec3<f32> = txVec18;
        let x_1989 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1987.xy, x_1987.z);
        u_xlat83 = x_1989;
        let x_1991 : f32 = u_xlat19.y;
        let x_1992 : f32 = u_xlat83;
        let x_1995 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1991 * x_1992) + x_1995);
        let x_1999 : vec2<f32> = u_xlat63;
        let x_2001 : f32 = u_xlat4.z;
        txVec19 = vec3<f32>(x_1999.x, x_1999.y, x_2001);
        let x_2008 : vec3<f32> = txVec19;
        let x_2010 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2008.xy, x_2008.z);
        u_xlat83 = x_2010;
        let x_2012 : f32 = u_xlat19.z;
        let x_2013 : f32 = u_xlat83;
        let x_2016 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2012 * x_2013) + x_2016);
        let x_2020 : vec4<f32> = u_xlat15;
        let x_2021 : vec2<f32> = vec2<f32>(x_2020.z, x_2020.w);
        let x_2023 : f32 = u_xlat4.z;
        txVec20 = vec3<f32>(x_2021.x, x_2021.y, x_2023);
        let x_2030 : vec3<f32> = txVec20;
        let x_2032 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2030.xy, x_2030.z);
        u_xlat83 = x_2032;
        let x_2034 : f32 = u_xlat19.w;
        let x_2035 : f32 = u_xlat83;
        let x_2038 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2034 * x_2035) + x_2038);
        let x_2042 : vec4<f32> = u_xlat16;
        let x_2043 : vec2<f32> = vec2<f32>(x_2042.x, x_2042.y);
        let x_2045 : f32 = u_xlat4.z;
        txVec21 = vec3<f32>(x_2043.x, x_2043.y, x_2045);
        let x_2052 : vec3<f32> = txVec21;
        let x_2054 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2052.xy, x_2052.z);
        u_xlat83 = x_2054;
        let x_2056 : f32 = u_xlat20.x;
        let x_2057 : f32 = u_xlat83;
        let x_2060 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2056 * x_2057) + x_2060);
        let x_2064 : vec4<f32> = u_xlat16;
        let x_2065 : vec2<f32> = vec2<f32>(x_2064.z, x_2064.w);
        let x_2067 : f32 = u_xlat4.z;
        txVec22 = vec3<f32>(x_2065.x, x_2065.y, x_2067);
        let x_2074 : vec3<f32> = txVec22;
        let x_2076 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2074.xy, x_2074.z);
        u_xlat83 = x_2076;
        let x_2078 : f32 = u_xlat20.y;
        let x_2079 : f32 = u_xlat83;
        let x_2082 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2078 * x_2079) + x_2082);
        let x_2086 : vec3<f32> = u_xlat33;
        let x_2087 : vec2<f32> = vec2<f32>(x_2086.x, x_2086.y);
        let x_2089 : f32 = u_xlat4.z;
        txVec23 = vec3<f32>(x_2087.x, x_2087.y, x_2089);
        let x_2096 : vec3<f32> = txVec23;
        let x_2098 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2096.xy, x_2096.z);
        u_xlat33.x = x_2098;
        let x_2101 : f32 = u_xlat20.z;
        let x_2103 : f32 = u_xlat33.x;
        let x_2106 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2101 * x_2103) + x_2106);
        let x_2110 : vec4<f32> = u_xlat17;
        let x_2111 : vec2<f32> = vec2<f32>(x_2110.x, x_2110.y);
        let x_2113 : f32 = u_xlat4.z;
        txVec24 = vec3<f32>(x_2111.x, x_2111.y, x_2113);
        let x_2120 : vec3<f32> = txVec24;
        let x_2122 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2120.xy, x_2120.z);
        u_xlat33.x = x_2122;
        let x_2125 : f32 = u_xlat20.w;
        let x_2127 : f32 = u_xlat33.x;
        let x_2130 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2125 * x_2127) + x_2130);
        let x_2134 : vec4<f32> = u_xlat11;
        let x_2135 : vec2<f32> = vec2<f32>(x_2134.x, x_2134.y);
        let x_2137 : f32 = u_xlat4.z;
        txVec25 = vec3<f32>(x_2135.x, x_2135.y, x_2137);
        let x_2144 : vec3<f32> = txVec25;
        let x_2146 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2144.xy, x_2144.z);
        u_xlat33.x = x_2146;
        let x_2149 : f32 = u_xlat7.x;
        let x_2151 : f32 = u_xlat33.x;
        let x_2154 : f32 = u_xlat8.x;
        u_xlat7.x = ((x_2149 * x_2151) + x_2154);
        let x_2158 : vec4<f32> = u_xlat11;
        let x_2159 : vec2<f32> = vec2<f32>(x_2158.z, x_2158.w);
        let x_2161 : f32 = u_xlat4.z;
        txVec26 = vec3<f32>(x_2159.x, x_2159.y, x_2161);
        let x_2168 : vec3<f32> = txVec26;
        let x_2170 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2168.xy, x_2168.z);
        u_xlat8.x = x_2170;
        let x_2173 : f32 = u_xlat7.y;
        let x_2175 : f32 = u_xlat8.x;
        let x_2178 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_2173 * x_2175) + x_2178);
        let x_2182 : vec2<f32> = u_xlat60;
        let x_2184 : f32 = u_xlat4.z;
        txVec27 = vec3<f32>(x_2182.x, x_2182.y, x_2184);
        let x_2191 : vec3<f32> = txVec27;
        let x_2193 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2191.xy, x_2191.z);
        u_xlat32.x = x_2193;
        let x_2196 : f32 = u_xlat7.z;
        let x_2198 : f32 = u_xlat32.x;
        let x_2201 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_2196 * x_2198) + x_2201);
        let x_2205 : vec2<f32> = u_xlat56;
        let x_2207 : f32 = u_xlat4.z;
        txVec28 = vec3<f32>(x_2205.x, x_2205.y, x_2207);
        let x_2214 : vec3<f32> = txVec28;
        let x_2216 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2214.xy, x_2214.z);
        u_xlat56.x = x_2216;
        let x_2219 : f32 = u_xlat7.w;
        let x_2221 : f32 = u_xlat56.x;
        let x_2224 : f32 = u_xlat7.x;
        u_xlat31.x = ((x_2219 * x_2221) + x_2224);
      }
    }
  } else {
    let x_2229 : vec4<f32> = u_xlat4;
    let x_2230 : vec2<f32> = vec2<f32>(x_2229.x, x_2229.y);
    let x_2232 : f32 = u_xlat4.z;
    txVec29 = vec3<f32>(x_2230.x, x_2230.y, x_2232);
    let x_2239 : vec3<f32> = txVec29;
    let x_2241 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2239.xy, x_2239.z);
    u_xlat31.x = x_2241;
  }
  let x_2244 : f32 = x_661.x_MainLightShadowParams.x;
  u_xlat4.x = (-(x_2244) + 1.0f);
  let x_2249 : f32 = u_xlat31.x;
  let x_2251 : f32 = x_661.x_MainLightShadowParams.x;
  let x_2254 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_2249 * x_2251) + x_2254);
  let x_2259 : f32 = u_xlat4.z;
  u_xlatb29 = (0.0f >= x_2259);
  let x_2263 : f32 = u_xlat4.z;
  u_xlatb54 = (x_2263 >= 1.0f);
  let x_2265 : bool = u_xlatb54;
  let x_2266 : bool = u_xlatb29;
  u_xlatb29 = (x_2265 | x_2266);
  let x_2268 : bool = u_xlatb29;
  if (x_2268) {
    x_2270 = 1.0f;
  } else {
    let x_2275 : f32 = u_xlat4.x;
    x_2270 = x_2275;
  }
  let x_2276 : f32 = x_2270;
  u_xlat4.x = x_2276;
  let x_2278 : vec3<f32> = vs_INTERP7;
  let x_2280 : vec3<f32> = x_135.x_WorldSpaceCameraPos;
  u_xlat31 = (x_2278 + -(x_2280));
  let x_2283 : vec3<f32> = u_xlat31;
  let x_2284 : vec3<f32> = u_xlat31;
  u_xlat29.x = dot(x_2283, x_2284);
  let x_2289 : f32 = u_xlat29.x;
  let x_2291 : f32 = x_661.x_MainLightShadowParams.z;
  let x_2294 : f32 = x_661.x_MainLightShadowParams.w;
  u_xlat54 = ((x_2289 * x_2291) + x_2294);
  let x_2296 : f32 = u_xlat54;
  u_xlat54 = clamp(x_2296, 0.0f, 1.0f);
  let x_2299 : f32 = u_xlat4.x;
  u_xlat31.x = (-(x_2299) + 1.0f);
  let x_2303 : f32 = u_xlat54;
  let x_2305 : f32 = u_xlat31.x;
  let x_2308 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_2303 * x_2305) + x_2308);
  let x_2318 : f32 = x_2316.x_MainLightCookieTextureFormat;
  u_xlatb54 = !((x_2318 == -1.0f));
  let x_2320 : bool = u_xlatb54;
  if (x_2320) {
    let x_2323 : vec3<f32> = vs_INTERP7;
    let x_2326 : vec4<f32> = x_2316.x_MainLightWorldToLight[1i];
    let x_2328 : vec2<f32> = (vec2<f32>(x_2323.y, x_2323.y) * vec2<f32>(x_2326.x, x_2326.y));
    let x_2329 : vec3<f32> = u_xlat31;
    u_xlat31 = vec3<f32>(x_2328.x, x_2328.y, x_2329.z);
    let x_2332 : vec4<f32> = x_2316.x_MainLightWorldToLight[0i];
    let x_2334 : vec3<f32> = vs_INTERP7;
    let x_2337 : vec3<f32> = u_xlat31;
    let x_2339 : vec2<f32> = ((vec2<f32>(x_2332.x, x_2332.y) * vec2<f32>(x_2334.x, x_2334.x)) + vec2<f32>(x_2337.x, x_2337.y));
    let x_2340 : vec3<f32> = u_xlat31;
    u_xlat31 = vec3<f32>(x_2339.x, x_2339.y, x_2340.z);
    let x_2343 : vec4<f32> = x_2316.x_MainLightWorldToLight[2i];
    let x_2345 : vec3<f32> = vs_INTERP7;
    let x_2348 : vec3<f32> = u_xlat31;
    let x_2350 : vec2<f32> = ((vec2<f32>(x_2343.x, x_2343.y) * vec2<f32>(x_2345.z, x_2345.z)) + vec2<f32>(x_2348.x, x_2348.y));
    let x_2351 : vec3<f32> = u_xlat31;
    u_xlat31 = vec3<f32>(x_2350.x, x_2350.y, x_2351.z);
    let x_2353 : vec3<f32> = u_xlat31;
    let x_2356 : vec4<f32> = x_2316.x_MainLightWorldToLight[3i];
    let x_2358 : vec2<f32> = (vec2<f32>(x_2353.x, x_2353.y) + vec2<f32>(x_2356.x, x_2356.y));
    let x_2359 : vec3<f32> = u_xlat31;
    u_xlat31 = vec3<f32>(x_2358.x, x_2358.y, x_2359.z);
    let x_2361 : vec3<f32> = u_xlat31;
    let x_2364 : vec2<f32> = ((vec2<f32>(x_2361.x, x_2361.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2365 : vec3<f32> = u_xlat31;
    u_xlat31 = vec3<f32>(x_2364.x, x_2364.y, x_2365.z);
    let x_2372 : vec3<f32> = u_xlat31;
    let x_2375 : f32 = x_135.x_GlobalMipBias.x;
    let x_2376 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2372.x, x_2372.y), x_2375);
    u_xlat7 = x_2376;
    let x_2378 : f32 = x_2316.x_MainLightCookieTextureFormat;
    let x_2380 : f32 = x_2316.x_MainLightCookieTextureFormat;
    let x_2382 : f32 = x_2316.x_MainLightCookieTextureFormat;
    let x_2384 : f32 = x_2316.x_MainLightCookieTextureFormat;
    let x_2385 : vec4<f32> = vec4<f32>(x_2378, x_2380, x_2382, x_2384);
    let x_2392 : vec4<bool> = (vec4<f32>(x_2385.x, x_2385.y, x_2385.z, x_2385.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb31 = vec2<bool>(x_2392.x, x_2392.y);
    let x_2395 : bool = u_xlatb31.y;
    if (x_2395) {
      let x_2400 : f32 = u_xlat7.w;
      x_2396 = x_2400;
    } else {
      let x_2403 : f32 = u_xlat7.x;
      x_2396 = x_2403;
    }
    let x_2404 : f32 = x_2396;
    u_xlat54 = x_2404;
    let x_2406 : bool = u_xlatb31.x;
    if (x_2406) {
      let x_2410 : vec4<f32> = u_xlat7;
      x_2407 = vec3<f32>(x_2410.x, x_2410.y, x_2410.z);
    } else {
      let x_2413 : f32 = u_xlat54;
      x_2407 = vec3<f32>(x_2413, x_2413, x_2413);
    }
    let x_2415 : vec3<f32> = x_2407;
    u_xlat31 = x_2415;
  } else {
    u_xlat31.x = 1.0f;
    u_xlat31.y = 1.0f;
    u_xlat31.z = 1.0f;
  }
  let x_2420 : vec3<f32> = u_xlat31;
  let x_2422 : vec4<f32> = x_135.x_MainLightColor;
  u_xlat31 = (x_2420 * vec3<f32>(x_2422.x, x_2422.y, x_2422.z));
  let x_2425 : vec4<f32> = u_xlat1;
  let x_2428 : vec3<f32> = u_xlat25;
  u_xlat54 = dot(-(vec3<f32>(x_2425.x, x_2425.y, x_2425.z)), x_2428);
  let x_2430 : f32 = u_xlat54;
  let x_2431 : f32 = u_xlat54;
  u_xlat54 = (x_2430 + x_2431);
  let x_2433 : vec3<f32> = u_xlat25;
  let x_2434 : f32 = u_xlat54;
  let x_2438 : vec4<f32> = u_xlat1;
  let x_2441 : vec3<f32> = ((x_2433 * -(vec3<f32>(x_2434, x_2434, x_2434))) + -(vec3<f32>(x_2438.x, x_2438.y, x_2438.z)));
  let x_2442 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2441.x, x_2441.y, x_2441.z, x_2442.w);
  let x_2444 : vec3<f32> = u_xlat25;
  let x_2445 : vec4<f32> = u_xlat1;
  u_xlat54 = dot(x_2444, vec3<f32>(x_2445.x, x_2445.y, x_2445.z));
  let x_2448 : f32 = u_xlat54;
  u_xlat54 = clamp(x_2448, 0.0f, 1.0f);
  let x_2450 : f32 = u_xlat54;
  u_xlat54 = (-(x_2450) + 1.0f);
  let x_2453 : f32 = u_xlat54;
  let x_2454 : f32 = u_xlat54;
  u_xlat54 = (x_2453 * x_2454);
  let x_2456 : f32 = u_xlat54;
  let x_2457 : f32 = u_xlat54;
  u_xlat54 = (x_2456 * x_2457);
  let x_2460 : f32 = u_xlat76;
  u_xlat82 = ((-(x_2460) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2466 : f32 = u_xlat76;
  let x_2467 : f32 = u_xlat82;
  u_xlat76 = (x_2466 * x_2467);
  let x_2469 : f32 = u_xlat76;
  u_xlat76 = (x_2469 * 6.0f);
  let x_2480 : vec4<f32> = u_xlat7;
  let x_2482 : f32 = u_xlat76;
  let x_2483 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2480.x, x_2480.y, x_2480.z), x_2482);
  u_xlat7 = x_2483;
  let x_2485 : f32 = u_xlat7.w;
  u_xlat76 = (x_2485 + -1.0f);
  let x_2488 : f32 = x_48.unity_SpecCube0_HDR.w;
  let x_2489 : f32 = u_xlat76;
  u_xlat76 = ((x_2488 * x_2489) + 1.0f);
  let x_2492 : f32 = u_xlat76;
  u_xlat76 = max(x_2492, 0.0f);
  let x_2494 : f32 = u_xlat76;
  u_xlat76 = log2(x_2494);
  let x_2496 : f32 = u_xlat76;
  let x_2498 : f32 = x_48.unity_SpecCube0_HDR.y;
  u_xlat76 = (x_2496 * x_2498);
  let x_2500 : f32 = u_xlat76;
  u_xlat76 = exp2(x_2500);
  let x_2502 : f32 = u_xlat76;
  let x_2504 : f32 = x_48.unity_SpecCube0_HDR.x;
  u_xlat76 = (x_2502 * x_2504);
  let x_2506 : vec4<f32> = u_xlat7;
  let x_2508 : f32 = u_xlat76;
  let x_2510 : vec3<f32> = (vec3<f32>(x_2506.x, x_2506.y, x_2506.z) * vec3<f32>(x_2508, x_2508, x_2508));
  let x_2511 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2510.x, x_2510.y, x_2510.z, x_2511.w);
  let x_2513 : f32 = u_xlat78;
  let x_2515 : f32 = u_xlat78;
  let x_2519 : vec2<f32> = ((vec2<f32>(x_2513, x_2513) * vec2<f32>(x_2515, x_2515)) + vec2<f32>(-1.0f, 1.0f));
  let x_2520 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2519.x, x_2519.y, x_2520.z, x_2520.w);
  let x_2523 : f32 = u_xlat8.y;
  u_xlat76 = (1.0f / x_2523);
  let x_2525 : vec3<f32> = u_xlat2;
  let x_2527 : vec4<f32> = u_xlat0;
  u_xlat33 = (-(x_2525) + vec3<f32>(x_2527.x, x_2527.x, x_2527.x));
  let x_2530 : f32 = u_xlat54;
  let x_2532 : vec3<f32> = u_xlat33;
  let x_2534 : vec3<f32> = u_xlat2;
  u_xlat33 = ((vec3<f32>(x_2530, x_2530, x_2530) * x_2532) + x_2534);
  let x_2536 : f32 = u_xlat76;
  let x_2538 : vec3<f32> = u_xlat33;
  u_xlat33 = (vec3<f32>(x_2536, x_2536, x_2536) * x_2538);
  let x_2540 : vec4<f32> = u_xlat7;
  let x_2542 : vec3<f32> = u_xlat33;
  let x_2543 : vec3<f32> = (vec3<f32>(x_2540.x, x_2540.y, x_2540.z) * x_2542);
  let x_2544 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2543.x, x_2543.y, x_2543.z, x_2544.w);
  let x_2546 : vec4<f32> = u_xlat5;
  let x_2548 : vec3<f32> = u_xlat3;
  let x_2550 : vec4<f32> = u_xlat7;
  let x_2552 : vec3<f32> = ((vec3<f32>(x_2546.x, x_2546.y, x_2546.z) * x_2548) + vec3<f32>(x_2550.x, x_2550.y, x_2550.z));
  let x_2553 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2552.x, x_2552.y, x_2552.z, x_2553.w);
  let x_2556 : f32 = u_xlat4.x;
  let x_2558 : f32 = x_48.unity_LightData.z;
  u_xlat0.x = (x_2556 * x_2558);
  let x_2561 : vec3<f32> = u_xlat25;
  let x_2563 : vec4<f32> = x_135.x_MainLightPosition;
  u_xlat76 = dot(x_2561, vec3<f32>(x_2563.x, x_2563.y, x_2563.z));
  let x_2566 : f32 = u_xlat76;
  u_xlat76 = clamp(x_2566, 0.0f, 1.0f);
  let x_2569 : f32 = u_xlat0.x;
  let x_2570 : f32 = u_xlat76;
  u_xlat0.x = (x_2569 * x_2570);
  let x_2573 : vec4<f32> = u_xlat0;
  let x_2575 : vec3<f32> = u_xlat31;
  u_xlat31 = (vec3<f32>(x_2573.x, x_2573.x, x_2573.x) * x_2575);
  let x_2577 : vec4<f32> = u_xlat1;
  let x_2580 : vec4<f32> = x_135.x_MainLightPosition;
  let x_2582 : vec3<f32> = (vec3<f32>(x_2577.x, x_2577.y, x_2577.z) + vec3<f32>(x_2580.x, x_2580.y, x_2580.z));
  let x_2583 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2582.x, x_2582.y, x_2582.z, x_2583.w);
  let x_2585 : vec4<f32> = u_xlat7;
  let x_2587 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(vec3<f32>(x_2585.x, x_2585.y, x_2585.z), vec3<f32>(x_2587.x, x_2587.y, x_2587.z));
  let x_2592 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2592, 1.17549435e-38f);
  let x_2596 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_2596);
  let x_2599 : vec4<f32> = u_xlat0;
  let x_2601 : vec4<f32> = u_xlat7;
  let x_2603 : vec3<f32> = (vec3<f32>(x_2599.x, x_2599.x, x_2599.x) * vec3<f32>(x_2601.x, x_2601.y, x_2601.z));
  let x_2604 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2603.x, x_2603.y, x_2603.z, x_2604.w);
  let x_2606 : vec3<f32> = u_xlat25;
  let x_2607 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_2606, vec3<f32>(x_2607.x, x_2607.y, x_2607.z));
  let x_2612 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_2612, 0.0f, 1.0f);
  let x_2616 : vec4<f32> = x_135.x_MainLightPosition;
  let x_2618 : vec4<f32> = u_xlat7;
  u_xlat76 = dot(vec3<f32>(x_2616.x, x_2616.y, x_2616.z), vec3<f32>(x_2618.x, x_2618.y, x_2618.z));
  let x_2621 : f32 = u_xlat76;
  u_xlat76 = clamp(x_2621, 0.0f, 1.0f);
  let x_2624 : f32 = u_xlat0.x;
  let x_2626 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2624 * x_2626);
  let x_2630 : f32 = u_xlat0.x;
  let x_2632 : f32 = u_xlat8.x;
  u_xlat0.x = ((x_2630 * x_2632) + 1.00001001358032226562f);
  let x_2637 : f32 = u_xlat76;
  let x_2638 : f32 = u_xlat76;
  u_xlat76 = (x_2637 * x_2638);
  let x_2641 : f32 = u_xlat0.x;
  let x_2643 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2641 * x_2643);
  let x_2646 : f32 = u_xlat76;
  u_xlat76 = max(x_2646, 0.10000000149011611938f);
  let x_2649 : f32 = u_xlat0.x;
  let x_2650 : f32 = u_xlat76;
  u_xlat0.x = (x_2649 * x_2650);
  let x_2653 : f32 = u_xlat80;
  let x_2655 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2653 * x_2655);
  let x_2658 : f32 = u_xlat79;
  let x_2660 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2658 / x_2660);
  let x_2663 : vec3<f32> = u_xlat2;
  let x_2664 : vec4<f32> = u_xlat0;
  let x_2667 : vec3<f32> = u_xlat3;
  let x_2668 : vec3<f32> = ((x_2663 * vec3<f32>(x_2664.x, x_2664.x, x_2664.x)) + x_2667);
  let x_2669 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2668.x, x_2668.y, x_2668.z, x_2669.w);
  let x_2671 : vec3<f32> = u_xlat31;
  let x_2672 : vec4<f32> = u_xlat7;
  u_xlat31 = (x_2671 * vec3<f32>(x_2672.x, x_2672.y, x_2672.z));
  let x_2676 : f32 = x_135.x_AdditionalLightsCount.x;
  let x_2678 : f32 = x_48.unity_LightData.y;
  u_xlat0.x = min(x_2676, x_2678);
  let x_2683 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_2683));
  let x_2687 : f32 = u_xlat29.x;
  let x_2690 : f32 = x_661.x_AdditionalShadowFadeParams.x;
  let x_2693 : f32 = x_661.x_AdditionalShadowFadeParams.y;
  u_xlat76 = ((x_2687 * x_2690) + x_2693);
  let x_2695 : f32 = u_xlat76;
  u_xlat76 = clamp(x_2695, 0.0f, 1.0f);
  let x_2698 : f32 = x_2316.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2700 : f32 = x_2316.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2702 : f32 = x_2316.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2704 : f32 = x_2316.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2705 : vec4<f32> = vec4<f32>(x_2698, x_2700, x_2702, x_2704);
  let x_2711 : vec4<bool> = (vec4<f32>(x_2705.x, x_2705.y, x_2705.z, x_2705.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  let x_2712 : vec2<bool> = vec2<bool>(x_2711.x, x_2711.y);
  let x_2713 : vec4<bool> = u_xlatb4;
  u_xlatb4 = vec4<bool>(x_2712.x, x_2712.y, x_2713.z, x_2713.w);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2725 : u32 = u_xlatu_loop_1;
    let x_2726 : u32 = u_xlatu0;
    if ((x_2725 < x_2726)) {
    } else {
      break;
    }
    let x_2729 : u32 = u_xlatu_loop_1;
    u_xlatu54 = (x_2729 >> 2u);
    let x_2732 : u32 = u_xlatu_loop_1;
    u_xlati82 = bitcast<i32>((x_2732 & 3u));
    let x_2735 : u32 = u_xlatu54;
    let x_2738 : vec4<f32> = x_48.unity_LightIndices[bitcast<i32>(x_2735)];
    let x_2748 : i32 = u_xlati82;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2753 : vec4<u32> = indexable[x_2748];
    u_xlat54 = dot(x_2738, bitcast<vec4<f32>>(x_2753));
    let x_2757 : f32 = u_xlat54;
    u_xlati54 = i32(x_2757);
    let x_2759 : vec3<f32> = vs_INTERP7;
    let x_2770 : i32 = u_xlati54;
    let x_2772 : vec4<f32> = x_2769.x_AdditionalLightsPosition[x_2770];
    let x_2775 : i32 = u_xlati54;
    let x_2777 : vec4<f32> = x_2769.x_AdditionalLightsPosition[x_2775];
    u_xlat33 = ((-(x_2759) * vec3<f32>(x_2772.w, x_2772.w, x_2772.w)) + vec3<f32>(x_2777.x, x_2777.y, x_2777.z));
    let x_2780 : vec3<f32> = u_xlat33;
    let x_2781 : vec3<f32> = u_xlat33;
    u_xlat82 = dot(x_2780, x_2781);
    let x_2783 : f32 = u_xlat82;
    u_xlat82 = max(x_2783, 0.00006103515625f);
    let x_2785 : f32 = u_xlat82;
    u_xlat9.x = inverseSqrt(x_2785);
    let x_2789 : vec3<f32> = u_xlat33;
    let x_2790 : vec4<f32> = u_xlat9;
    u_xlat34 = (x_2789 * vec3<f32>(x_2790.x, x_2790.x, x_2790.x));
    let x_2793 : f32 = u_xlat82;
    u_xlat10.x = (1.0f / x_2793);
    let x_2796 : f32 = u_xlat82;
    let x_2797 : i32 = u_xlati54;
    let x_2799 : f32 = x_2769.x_AdditionalLightsAttenuation[x_2797].x;
    u_xlat82 = (x_2796 * x_2799);
    let x_2801 : f32 = u_xlat82;
    let x_2803 : f32 = u_xlat82;
    u_xlat82 = ((-(x_2801) * x_2803) + 1.0f);
    let x_2806 : f32 = u_xlat82;
    u_xlat82 = max(x_2806, 0.0f);
    let x_2808 : f32 = u_xlat82;
    let x_2809 : f32 = u_xlat82;
    u_xlat82 = (x_2808 * x_2809);
    let x_2811 : f32 = u_xlat82;
    let x_2813 : f32 = u_xlat10.x;
    u_xlat82 = (x_2811 * x_2813);
    let x_2815 : i32 = u_xlati54;
    let x_2817 : vec4<f32> = x_2769.x_AdditionalLightsSpotDir[x_2815];
    let x_2819 : vec3<f32> = u_xlat34;
    u_xlat10.x = dot(vec3<f32>(x_2817.x, x_2817.y, x_2817.z), x_2819);
    let x_2823 : f32 = u_xlat10.x;
    let x_2824 : i32 = u_xlati54;
    let x_2826 : f32 = x_2769.x_AdditionalLightsAttenuation[x_2824].z;
    let x_2828 : i32 = u_xlati54;
    let x_2830 : f32 = x_2769.x_AdditionalLightsAttenuation[x_2828].w;
    u_xlat10.x = ((x_2823 * x_2826) + x_2830);
    let x_2834 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_2834, 0.0f, 1.0f);
    let x_2838 : f32 = u_xlat10.x;
    let x_2840 : f32 = u_xlat10.x;
    u_xlat10.x = (x_2838 * x_2840);
    let x_2843 : f32 = u_xlat82;
    let x_2845 : f32 = u_xlat10.x;
    u_xlat82 = (x_2843 * x_2845);
    let x_2849 : i32 = u_xlati54;
    let x_2851 : f32 = x_661.x_AdditionalShadowParams[x_2849].w;
    u_xlati10 = i32(x_2851);
    let x_2856 : i32 = u_xlati10;
    u_xlatb35.x = (x_2856 >= 0i);
    let x_2860 : bool = u_xlatb35.x;
    if (x_2860) {
      let x_2864 : i32 = u_xlati54;
      let x_2866 : f32 = x_661.x_AdditionalShadowParams[x_2864].z;
      u_xlatb35.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2866, x_2866, x_2866, x_2866))));
      let x_2872 : bool = u_xlatb35.x;
      if (x_2872) {
        let x_2875 : vec3<f32> = u_xlat34;
        let x_2878 : vec3<f32> = u_xlat34;
        let x_2881 : vec4<bool> = (abs(vec4<f32>(x_2875.z, x_2875.z, x_2875.y, x_2875.y)) >= abs(vec4<f32>(x_2878.x, x_2878.y, x_2878.x, x_2878.x)));
        u_xlatb35 = vec3<bool>(x_2881.x, x_2881.y, x_2881.z);
        let x_2884 : bool = u_xlatb35.y;
        let x_2886 : bool = u_xlatb35.x;
        u_xlatb35.x = (x_2884 & x_2886);
        let x_2890 : vec3<f32> = u_xlat34;
        let x_2893 : vec4<bool> = (-(vec4<f32>(x_2890.z, x_2890.y, x_2890.x, x_2890.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_2893.x, x_2893.y, x_2893.z);
        let x_2896 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2896);
        let x_2901 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2901);
        let x_2905 : bool = u_xlatb11.z;
        u_xlat60.x = select(0.0f, 1.0f, x_2905);
        let x_2909 : bool = u_xlatb35.z;
        if (x_2909) {
          let x_2914 : f32 = u_xlat11.y;
          x_2910 = x_2914;
        } else {
          let x_2917 : f32 = u_xlat60.x;
          x_2910 = x_2917;
        }
        let x_2918 : f32 = x_2910;
        u_xlat60.x = x_2918;
        let x_2922 : bool = u_xlatb35.x;
        if (x_2922) {
          let x_2927 : f32 = u_xlat11.x;
          x_2923 = x_2927;
        } else {
          let x_2930 : f32 = u_xlat60.x;
          x_2923 = x_2930;
        }
        let x_2931 : f32 = x_2923;
        u_xlat35.x = x_2931;
        let x_2933 : i32 = u_xlati54;
        let x_2935 : f32 = x_661.x_AdditionalShadowParams[x_2933].w;
        u_xlat60.x = trunc(x_2935);
        let x_2939 : f32 = u_xlat35.x;
        let x_2941 : f32 = u_xlat60.x;
        u_xlat35.x = (x_2939 + x_2941);
        let x_2945 : f32 = u_xlat35.x;
        u_xlati10 = i32(x_2945);
      }
      let x_2947 : i32 = u_xlati10;
      u_xlati10 = (x_2947 << bitcast<u32>(2i));
      let x_2949 : vec3<f32> = vs_INTERP7;
      let x_2952 : i32 = u_xlati10;
      let x_2955 : i32 = u_xlati10;
      let x_2959 : vec4<f32> = x_661.x_AdditionalLightsWorldToShadow[((x_2952 + 1i) / 4i)][((x_2955 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2949.y, x_2949.y, x_2949.y, x_2949.y) * x_2959);
      let x_2961 : i32 = u_xlati10;
      let x_2963 : i32 = u_xlati10;
      let x_2966 : vec4<f32> = x_661.x_AdditionalLightsWorldToShadow[(x_2961 / 4i)][(x_2963 % 4i)];
      let x_2967 : vec3<f32> = vs_INTERP7;
      let x_2970 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2966 * vec4<f32>(x_2967.x, x_2967.x, x_2967.x, x_2967.x)) + x_2970);
      let x_2972 : i32 = u_xlati10;
      let x_2975 : i32 = u_xlati10;
      let x_2979 : vec4<f32> = x_661.x_AdditionalLightsWorldToShadow[((x_2972 + 2i) / 4i)][((x_2975 + 2i) % 4i)];
      let x_2980 : vec3<f32> = vs_INTERP7;
      let x_2983 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2979 * vec4<f32>(x_2980.z, x_2980.z, x_2980.z, x_2980.z)) + x_2983);
      let x_2985 : vec4<f32> = u_xlat11;
      let x_2986 : i32 = u_xlati10;
      let x_2989 : i32 = u_xlati10;
      let x_2993 : vec4<f32> = x_661.x_AdditionalLightsWorldToShadow[((x_2986 + 3i) / 4i)][((x_2989 + 3i) % 4i)];
      u_xlat10 = (x_2985 + x_2993);
      let x_2995 : vec4<f32> = u_xlat10;
      let x_2997 : vec4<f32> = u_xlat10;
      let x_2999 : vec3<f32> = (vec3<f32>(x_2995.x, x_2995.y, x_2995.z) / vec3<f32>(x_2997.w, x_2997.w, x_2997.w));
      let x_3000 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2999.x, x_2999.y, x_2999.z, x_3000.w);
      let x_3003 : i32 = u_xlati54;
      let x_3005 : f32 = x_661.x_AdditionalShadowParams[x_3003].y;
      u_xlatb85 = (0.0f < x_3005);
      let x_3007 : bool = u_xlatb85;
      if (x_3007) {
        let x_3010 : i32 = u_xlati54;
        let x_3012 : f32 = x_661.x_AdditionalShadowParams[x_3010].y;
        u_xlatb85 = (1.0f == x_3012);
        let x_3014 : bool = u_xlatb85;
        if (x_3014) {
          let x_3017 : vec4<f32> = u_xlat10;
          let x_3021 : vec4<f32> = x_661.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_3017.x, x_3017.y, x_3017.x, x_3017.y) + x_3021);
          let x_3024 : vec4<f32> = u_xlat11;
          let x_3025 : vec2<f32> = vec2<f32>(x_3024.x, x_3024.y);
          let x_3027 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_3025.x, x_3025.y, x_3027);
          let x_3035 : vec3<f32> = txVec30;
          let x_3037 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3035.xy, x_3035.z);
          u_xlat12.x = x_3037;
          let x_3040 : vec4<f32> = u_xlat11;
          let x_3041 : vec2<f32> = vec2<f32>(x_3040.z, x_3040.w);
          let x_3043 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_3041.x, x_3041.y, x_3043);
          let x_3050 : vec3<f32> = txVec31;
          let x_3052 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3050.xy, x_3050.z);
          u_xlat12.y = x_3052;
          let x_3054 : vec4<f32> = u_xlat10;
          let x_3058 : vec4<f32> = x_661.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_3054.x, x_3054.y, x_3054.x, x_3054.y) + x_3058);
          let x_3061 : vec4<f32> = u_xlat11;
          let x_3062 : vec2<f32> = vec2<f32>(x_3061.x, x_3061.y);
          let x_3064 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_3062.x, x_3062.y, x_3064);
          let x_3071 : vec3<f32> = txVec32;
          let x_3073 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3071.xy, x_3071.z);
          u_xlat12.z = x_3073;
          let x_3076 : vec4<f32> = u_xlat11;
          let x_3077 : vec2<f32> = vec2<f32>(x_3076.z, x_3076.w);
          let x_3079 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_3077.x, x_3077.y, x_3079);
          let x_3086 : vec3<f32> = txVec33;
          let x_3088 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3086.xy, x_3086.z);
          u_xlat12.w = x_3088;
          let x_3091 : vec4<f32> = u_xlat12;
          u_xlat85 = dot(x_3091, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_3094 : i32 = u_xlati54;
          let x_3096 : f32 = x_661.x_AdditionalShadowParams[x_3094].y;
          u_xlatb11.x = (2.0f == x_3096);
          let x_3100 : bool = u_xlatb11.x;
          if (x_3100) {
            let x_3103 : vec4<f32> = u_xlat10;
            let x_3107 : vec4<f32> = x_661.x_AdditionalShadowmapSize;
            let x_3110 : vec2<f32> = ((vec2<f32>(x_3103.x, x_3103.y) * vec2<f32>(x_3107.z, x_3107.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3111 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3110.x, x_3110.y, x_3111.z, x_3111.w);
            let x_3113 : vec4<f32> = u_xlat11;
            let x_3115 : vec2<f32> = floor(vec2<f32>(x_3113.x, x_3113.y));
            let x_3116 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3115.x, x_3115.y, x_3116.z, x_3116.w);
            let x_3119 : vec4<f32> = u_xlat10;
            let x_3122 : vec4<f32> = x_661.x_AdditionalShadowmapSize;
            let x_3125 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3119.x, x_3119.y) * vec2<f32>(x_3122.z, x_3122.w)) + -(vec2<f32>(x_3125.x, x_3125.y)));
            let x_3129 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3129.x, x_3129.x, x_3129.y, x_3129.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3132 : vec4<f32> = u_xlat12;
            let x_3134 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3132.x, x_3132.x, x_3132.z, x_3132.z) * vec4<f32>(x_3134.x, x_3134.x, x_3134.z, x_3134.z));
            let x_3137 : vec4<f32> = u_xlat13;
            let x_3139 : vec2<f32> = (vec2<f32>(x_3137.y, x_3137.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_3140 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3139.x, x_3140.y, x_3139.y, x_3140.w);
            let x_3142 : vec4<f32> = u_xlat13;
            let x_3145 : vec2<f32> = u_xlat61;
            let x_3147 : vec2<f32> = ((vec2<f32>(x_3142.x, x_3142.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3145));
            let x_3148 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3147.x, x_3147.y, x_3148.z, x_3148.w);
            let x_3150 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_3150) + vec2<f32>(1.0f, 1.0f));
            let x_3153 : vec2<f32> = u_xlat61;
            let x_3154 : vec2<f32> = min(x_3153, vec2<f32>(0.0f, 0.0f));
            let x_3155 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3154.x, x_3154.y, x_3155.z, x_3155.w);
            let x_3157 : vec4<f32> = u_xlat14;
            let x_3160 : vec4<f32> = u_xlat14;
            let x_3163 : vec2<f32> = u_xlat63;
            let x_3164 : vec2<f32> = ((-(vec2<f32>(x_3157.x, x_3157.y)) * vec2<f32>(x_3160.x, x_3160.y)) + x_3163);
            let x_3165 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3164.x, x_3164.y, x_3165.z, x_3165.w);
            let x_3167 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_3167, vec2<f32>(0.0f, 0.0f));
            let x_3169 : vec2<f32> = u_xlat61;
            let x_3171 : vec2<f32> = u_xlat61;
            let x_3173 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_3169) * x_3171) + vec2<f32>(x_3173.y, x_3173.w));
            let x_3176 : vec4<f32> = u_xlat14;
            let x_3178 : vec2<f32> = (vec2<f32>(x_3176.x, x_3176.y) + vec2<f32>(1.0f, 1.0f));
            let x_3179 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3178.x, x_3178.y, x_3179.z, x_3179.w);
            let x_3181 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_3181 + vec2<f32>(1.0f, 1.0f));
            let x_3183 : vec4<f32> = u_xlat13;
            let x_3185 : vec2<f32> = (vec2<f32>(x_3183.x, x_3183.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3186 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3185.x, x_3185.y, x_3186.z, x_3186.w);
            let x_3188 : vec2<f32> = u_xlat63;
            let x_3189 : vec2<f32> = (x_3188 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3190 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3189.x, x_3189.y, x_3190.z, x_3190.w);
            let x_3192 : vec4<f32> = u_xlat14;
            let x_3194 : vec2<f32> = (vec2<f32>(x_3192.x, x_3192.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3195 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3194.x, x_3194.y, x_3195.z, x_3195.w);
            let x_3197 : vec2<f32> = u_xlat61;
            let x_3198 : vec2<f32> = (x_3197 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3199 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3198.x, x_3198.y, x_3199.z, x_3199.w);
            let x_3201 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_3201.y, x_3201.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3205 : f32 = u_xlat14.x;
            u_xlat15.z = x_3205;
            let x_3208 : f32 = u_xlat61.x;
            u_xlat15.w = x_3208;
            let x_3211 : f32 = u_xlat16.x;
            u_xlat13.z = x_3211;
            let x_3214 : f32 = u_xlat12.x;
            u_xlat13.w = x_3214;
            let x_3216 : vec4<f32> = u_xlat13;
            let x_3218 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_3216.z, x_3216.w, x_3216.x, x_3216.z) + vec4<f32>(x_3218.z, x_3218.w, x_3218.x, x_3218.z));
            let x_3222 : f32 = u_xlat15.y;
            u_xlat14.z = x_3222;
            let x_3225 : f32 = u_xlat61.y;
            u_xlat14.w = x_3225;
            let x_3228 : f32 = u_xlat13.y;
            u_xlat16.z = x_3228;
            let x_3231 : f32 = u_xlat12.z;
            u_xlat16.w = x_3231;
            let x_3233 : vec4<f32> = u_xlat14;
            let x_3235 : vec4<f32> = u_xlat16;
            let x_3237 : vec3<f32> = (vec3<f32>(x_3233.z, x_3233.y, x_3233.w) + vec3<f32>(x_3235.z, x_3235.y, x_3235.w));
            let x_3238 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3237.x, x_3237.y, x_3237.z, x_3238.w);
            let x_3240 : vec4<f32> = u_xlat13;
            let x_3242 : vec4<f32> = u_xlat17;
            let x_3244 : vec3<f32> = (vec3<f32>(x_3240.x, x_3240.z, x_3240.w) / vec3<f32>(x_3242.z, x_3242.w, x_3242.y));
            let x_3245 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3244.x, x_3244.y, x_3244.z, x_3245.w);
            let x_3247 : vec4<f32> = u_xlat13;
            let x_3249 : vec3<f32> = (vec3<f32>(x_3247.x, x_3247.y, x_3247.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3250 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3249.x, x_3249.y, x_3249.z, x_3250.w);
            let x_3252 : vec4<f32> = u_xlat16;
            let x_3254 : vec4<f32> = u_xlat12;
            let x_3256 : vec3<f32> = (vec3<f32>(x_3252.z, x_3252.y, x_3252.w) / vec3<f32>(x_3254.x, x_3254.y, x_3254.z));
            let x_3257 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3256.x, x_3256.y, x_3256.z, x_3257.w);
            let x_3259 : vec4<f32> = u_xlat14;
            let x_3261 : vec3<f32> = (vec3<f32>(x_3259.x, x_3259.y, x_3259.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3262 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3261.x, x_3261.y, x_3261.z, x_3262.w);
            let x_3264 : vec4<f32> = u_xlat13;
            let x_3267 : vec4<f32> = x_661.x_AdditionalShadowmapSize;
            let x_3269 : vec3<f32> = (vec3<f32>(x_3264.y, x_3264.x, x_3264.z) * vec3<f32>(x_3267.x, x_3267.x, x_3267.x));
            let x_3270 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3269.x, x_3269.y, x_3269.z, x_3270.w);
            let x_3272 : vec4<f32> = u_xlat14;
            let x_3275 : vec4<f32> = x_661.x_AdditionalShadowmapSize;
            let x_3277 : vec3<f32> = (vec3<f32>(x_3272.x, x_3272.y, x_3272.z) * vec3<f32>(x_3275.y, x_3275.y, x_3275.y));
            let x_3278 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3277.x, x_3277.y, x_3277.z, x_3278.w);
            let x_3281 : f32 = u_xlat14.x;
            u_xlat13.w = x_3281;
            let x_3283 : vec4<f32> = u_xlat11;
            let x_3286 : vec4<f32> = x_661.x_AdditionalShadowmapSize;
            let x_3289 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_3283.x, x_3283.y, x_3283.x, x_3283.y) * vec4<f32>(x_3286.x, x_3286.y, x_3286.x, x_3286.y)) + vec4<f32>(x_3289.y, x_3289.w, x_3289.x, x_3289.w));
            let x_3292 : vec4<f32> = u_xlat11;
            let x_3295 : vec4<f32> = x_661.x_AdditionalShadowmapSize;
            let x_3298 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_3292.x, x_3292.y) * vec2<f32>(x_3295.x, x_3295.y)) + vec2<f32>(x_3298.z, x_3298.w));
            let x_3302 : f32 = u_xlat13.y;
            u_xlat14.w = x_3302;
            let x_3304 : vec4<f32> = u_xlat14;
            let x_3305 : vec2<f32> = vec2<f32>(x_3304.y, x_3304.z);
            let x_3306 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3306.x, x_3305.x, x_3306.z, x_3305.y);
            let x_3308 : vec4<f32> = u_xlat11;
            let x_3311 : vec4<f32> = x_661.x_AdditionalShadowmapSize;
            let x_3314 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_3308.x, x_3308.y, x_3308.x, x_3308.y) * vec4<f32>(x_3311.x, x_3311.y, x_3311.x, x_3311.y)) + vec4<f32>(x_3314.x, x_3314.y, x_3314.z, x_3314.y));
            let x_3317 : vec4<f32> = u_xlat11;
            let x_3320 : vec4<f32> = x_661.x_AdditionalShadowmapSize;
            let x_3323 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3317.x, x_3317.y, x_3317.x, x_3317.y) * vec4<f32>(x_3320.x, x_3320.y, x_3320.x, x_3320.y)) + vec4<f32>(x_3323.w, x_3323.y, x_3323.w, x_3323.z));
            let x_3326 : vec4<f32> = u_xlat11;
            let x_3329 : vec4<f32> = x_661.x_AdditionalShadowmapSize;
            let x_3332 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_3326.x, x_3326.y, x_3326.x, x_3326.y) * vec4<f32>(x_3329.x, x_3329.y, x_3329.x, x_3329.y)) + vec4<f32>(x_3332.x, x_3332.w, x_3332.z, x_3332.w));
            let x_3335 : vec4<f32> = u_xlat12;
            let x_3337 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_3335.x, x_3335.x, x_3335.x, x_3335.y) * vec4<f32>(x_3337.z, x_3337.w, x_3337.y, x_3337.z));
            let x_3340 : vec4<f32> = u_xlat12;
            let x_3342 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_3340.y, x_3340.y, x_3340.z, x_3340.z) * x_3342);
            let x_3345 : f32 = u_xlat12.z;
            let x_3347 : f32 = u_xlat17.y;
            u_xlat11.x = (x_3345 * x_3347);
            let x_3351 : vec4<f32> = u_xlat15;
            let x_3352 : vec2<f32> = vec2<f32>(x_3351.x, x_3351.y);
            let x_3354 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_3352.x, x_3352.y, x_3354);
            let x_3362 : vec3<f32> = txVec34;
            let x_3364 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3362.xy, x_3362.z);
            u_xlat36 = x_3364;
            let x_3366 : vec4<f32> = u_xlat15;
            let x_3367 : vec2<f32> = vec2<f32>(x_3366.z, x_3366.w);
            let x_3369 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_3367.x, x_3367.y, x_3369);
            let x_3376 : vec3<f32> = txVec35;
            let x_3378 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3376.xy, x_3376.z);
            u_xlat12.x = x_3378;
            let x_3381 : f32 = u_xlat12.x;
            let x_3383 : f32 = u_xlat18.y;
            u_xlat12.x = (x_3381 * x_3383);
            let x_3387 : f32 = u_xlat18.x;
            let x_3388 : f32 = u_xlat36;
            let x_3391 : f32 = u_xlat12.x;
            u_xlat36 = ((x_3387 * x_3388) + x_3391);
            let x_3394 : vec2<f32> = u_xlat61;
            let x_3396 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_3394.x, x_3394.y, x_3396);
            let x_3403 : vec3<f32> = txVec36;
            let x_3405 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3403.xy, x_3403.z);
            u_xlat61.x = x_3405;
            let x_3408 : f32 = u_xlat18.z;
            let x_3410 : f32 = u_xlat61.x;
            let x_3412 : f32 = u_xlat36;
            u_xlat36 = ((x_3408 * x_3410) + x_3412);
            let x_3415 : vec4<f32> = u_xlat14;
            let x_3416 : vec2<f32> = vec2<f32>(x_3415.x, x_3415.y);
            let x_3418 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_3416.x, x_3416.y, x_3418);
            let x_3425 : vec3<f32> = txVec37;
            let x_3427 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3425.xy, x_3425.z);
            u_xlat61.x = x_3427;
            let x_3430 : f32 = u_xlat18.w;
            let x_3432 : f32 = u_xlat61.x;
            let x_3434 : f32 = u_xlat36;
            u_xlat36 = ((x_3430 * x_3432) + x_3434);
            let x_3437 : vec4<f32> = u_xlat16;
            let x_3438 : vec2<f32> = vec2<f32>(x_3437.x, x_3437.y);
            let x_3440 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_3438.x, x_3438.y, x_3440);
            let x_3447 : vec3<f32> = txVec38;
            let x_3449 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3447.xy, x_3447.z);
            u_xlat61.x = x_3449;
            let x_3452 : f32 = u_xlat19.x;
            let x_3454 : f32 = u_xlat61.x;
            let x_3456 : f32 = u_xlat36;
            u_xlat36 = ((x_3452 * x_3454) + x_3456);
            let x_3459 : vec4<f32> = u_xlat16;
            let x_3460 : vec2<f32> = vec2<f32>(x_3459.z, x_3459.w);
            let x_3462 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_3460.x, x_3460.y, x_3462);
            let x_3469 : vec3<f32> = txVec39;
            let x_3471 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3469.xy, x_3469.z);
            u_xlat61.x = x_3471;
            let x_3474 : f32 = u_xlat19.y;
            let x_3476 : f32 = u_xlat61.x;
            let x_3478 : f32 = u_xlat36;
            u_xlat36 = ((x_3474 * x_3476) + x_3478);
            let x_3481 : vec4<f32> = u_xlat14;
            let x_3482 : vec2<f32> = vec2<f32>(x_3481.z, x_3481.w);
            let x_3484 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_3482.x, x_3482.y, x_3484);
            let x_3491 : vec3<f32> = txVec40;
            let x_3493 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3491.xy, x_3491.z);
            u_xlat61.x = x_3493;
            let x_3496 : f32 = u_xlat19.z;
            let x_3498 : f32 = u_xlat61.x;
            let x_3500 : f32 = u_xlat36;
            u_xlat36 = ((x_3496 * x_3498) + x_3500);
            let x_3503 : vec4<f32> = u_xlat13;
            let x_3504 : vec2<f32> = vec2<f32>(x_3503.x, x_3503.y);
            let x_3506 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_3504.x, x_3504.y, x_3506);
            let x_3513 : vec3<f32> = txVec41;
            let x_3515 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3513.xy, x_3513.z);
            u_xlat61.x = x_3515;
            let x_3518 : f32 = u_xlat19.w;
            let x_3520 : f32 = u_xlat61.x;
            let x_3522 : f32 = u_xlat36;
            u_xlat36 = ((x_3518 * x_3520) + x_3522);
            let x_3525 : vec4<f32> = u_xlat13;
            let x_3526 : vec2<f32> = vec2<f32>(x_3525.z, x_3525.w);
            let x_3528 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_3526.x, x_3526.y, x_3528);
            let x_3535 : vec3<f32> = txVec42;
            let x_3537 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3535.xy, x_3535.z);
            u_xlat61.x = x_3537;
            let x_3540 : f32 = u_xlat11.x;
            let x_3542 : f32 = u_xlat61.x;
            let x_3544 : f32 = u_xlat36;
            u_xlat85 = ((x_3540 * x_3542) + x_3544);
          } else {
            let x_3547 : vec4<f32> = u_xlat10;
            let x_3550 : vec4<f32> = x_661.x_AdditionalShadowmapSize;
            let x_3553 : vec2<f32> = ((vec2<f32>(x_3547.x, x_3547.y) * vec2<f32>(x_3550.z, x_3550.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3554 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3553.x, x_3553.y, x_3554.z, x_3554.w);
            let x_3556 : vec4<f32> = u_xlat11;
            let x_3558 : vec2<f32> = floor(vec2<f32>(x_3556.x, x_3556.y));
            let x_3559 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3558.x, x_3558.y, x_3559.z, x_3559.w);
            let x_3561 : vec4<f32> = u_xlat10;
            let x_3564 : vec4<f32> = x_661.x_AdditionalShadowmapSize;
            let x_3567 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3561.x, x_3561.y) * vec2<f32>(x_3564.z, x_3564.w)) + -(vec2<f32>(x_3567.x, x_3567.y)));
            let x_3571 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3571.x, x_3571.x, x_3571.y, x_3571.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3574 : vec4<f32> = u_xlat12;
            let x_3576 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3574.x, x_3574.x, x_3574.z, x_3574.z) * vec4<f32>(x_3576.x, x_3576.x, x_3576.z, x_3576.z));
            let x_3579 : vec4<f32> = u_xlat13;
            let x_3581 : vec2<f32> = (vec2<f32>(x_3579.y, x_3579.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3582 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3582.x, x_3581.x, x_3582.z, x_3581.y);
            let x_3584 : vec4<f32> = u_xlat13;
            let x_3587 : vec2<f32> = u_xlat61;
            let x_3589 : vec2<f32> = ((vec2<f32>(x_3584.x, x_3584.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3587));
            let x_3590 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3589.x, x_3590.y, x_3589.y, x_3590.w);
            let x_3592 : vec2<f32> = u_xlat61;
            let x_3594 : vec2<f32> = (-(x_3592) + vec2<f32>(1.0f, 1.0f));
            let x_3595 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3594.x, x_3594.y, x_3595.z, x_3595.w);
            let x_3597 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_3597, vec2<f32>(0.0f, 0.0f));
            let x_3599 : vec2<f32> = u_xlat63;
            let x_3601 : vec2<f32> = u_xlat63;
            let x_3603 : vec4<f32> = u_xlat13;
            let x_3605 : vec2<f32> = ((-(x_3599) * x_3601) + vec2<f32>(x_3603.x, x_3603.y));
            let x_3606 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3605.x, x_3605.y, x_3606.z, x_3606.w);
            let x_3608 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_3608, vec2<f32>(0.0f, 0.0f));
            let x_3611 : vec2<f32> = u_xlat63;
            let x_3613 : vec2<f32> = u_xlat63;
            let x_3615 : vec4<f32> = u_xlat12;
            let x_3617 : vec2<f32> = ((-(x_3611) * x_3613) + vec2<f32>(x_3615.y, x_3615.w));
            let x_3618 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_3617.x, x_3618.y, x_3617.y);
            let x_3620 : vec4<f32> = u_xlat13;
            let x_3622 : vec2<f32> = (vec2<f32>(x_3620.x, x_3620.y) + vec2<f32>(2.0f, 2.0f));
            let x_3623 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3622.x, x_3622.y, x_3623.z, x_3623.w);
            let x_3625 : vec3<f32> = u_xlat37;
            let x_3627 : vec2<f32> = (vec2<f32>(x_3625.x, x_3625.z) + vec2<f32>(2.0f, 2.0f));
            let x_3628 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3628.x, x_3627.x, x_3628.z, x_3627.y);
            let x_3631 : f32 = u_xlat12.y;
            u_xlat15.z = (x_3631 * 0.08163200318813323975f);
            let x_3634 : vec4<f32> = u_xlat12;
            let x_3637 : vec3<f32> = (vec3<f32>(x_3634.z, x_3634.x, x_3634.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3638 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3637.x, x_3637.y, x_3637.z, x_3638.w);
            let x_3640 : vec4<f32> = u_xlat13;
            let x_3642 : vec2<f32> = (vec2<f32>(x_3640.x, x_3640.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3643 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3642.x, x_3642.y, x_3643.z, x_3643.w);
            let x_3646 : f32 = u_xlat16.y;
            u_xlat15.x = x_3646;
            let x_3648 : vec2<f32> = u_xlat61;
            let x_3651 : vec2<f32> = ((vec2<f32>(x_3648.x, x_3648.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3652 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3652.x, x_3651.x, x_3652.z, x_3651.y);
            let x_3654 : vec2<f32> = u_xlat61;
            let x_3657 : vec2<f32> = ((vec2<f32>(x_3654.x, x_3654.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3658 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3657.x, x_3658.y, x_3657.y, x_3658.w);
            let x_3661 : f32 = u_xlat12.x;
            u_xlat13.y = x_3661;
            let x_3664 : f32 = u_xlat14.y;
            u_xlat13.w = x_3664;
            let x_3666 : vec4<f32> = u_xlat13;
            let x_3667 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3666 + x_3667);
            let x_3669 : vec2<f32> = u_xlat61;
            let x_3672 : vec2<f32> = ((vec2<f32>(x_3669.y, x_3669.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3673 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3673.x, x_3672.x, x_3673.z, x_3672.y);
            let x_3675 : vec2<f32> = u_xlat61;
            let x_3678 : vec2<f32> = ((vec2<f32>(x_3675.y, x_3675.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3679 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3678.x, x_3679.y, x_3678.y, x_3679.w);
            let x_3682 : f32 = u_xlat12.y;
            u_xlat14.y = x_3682;
            let x_3684 : vec4<f32> = u_xlat14;
            let x_3685 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_3684 + x_3685);
            let x_3687 : vec4<f32> = u_xlat13;
            let x_3688 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_3687 / x_3688);
            let x_3690 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3690 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3692 : vec4<f32> = u_xlat14;
            let x_3693 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_3692 / x_3693);
            let x_3695 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3695 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3697 : vec4<f32> = u_xlat13;
            let x_3700 : vec4<f32> = x_661.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3697.w, x_3697.x, x_3697.y, x_3697.z) * vec4<f32>(x_3700.x, x_3700.x, x_3700.x, x_3700.x));
            let x_3703 : vec4<f32> = u_xlat14;
            let x_3706 : vec4<f32> = x_661.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3703.x, x_3703.w, x_3703.y, x_3703.z) * vec4<f32>(x_3706.y, x_3706.y, x_3706.y, x_3706.y));
            let x_3709 : vec4<f32> = u_xlat13;
            let x_3710 : vec3<f32> = vec3<f32>(x_3709.y, x_3709.z, x_3709.w);
            let x_3711 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3710.x, x_3711.y, x_3710.y, x_3710.z);
            let x_3714 : f32 = u_xlat14.x;
            u_xlat16.y = x_3714;
            let x_3716 : vec4<f32> = u_xlat11;
            let x_3719 : vec4<f32> = x_661.x_AdditionalShadowmapSize;
            let x_3722 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3716.x, x_3716.y, x_3716.x, x_3716.y) * vec4<f32>(x_3719.x, x_3719.y, x_3719.x, x_3719.y)) + vec4<f32>(x_3722.x, x_3722.y, x_3722.z, x_3722.y));
            let x_3725 : vec4<f32> = u_xlat11;
            let x_3728 : vec4<f32> = x_661.x_AdditionalShadowmapSize;
            let x_3731 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_3725.x, x_3725.y) * vec2<f32>(x_3728.x, x_3728.y)) + vec2<f32>(x_3731.w, x_3731.y));
            let x_3735 : f32 = u_xlat16.y;
            u_xlat13.y = x_3735;
            let x_3738 : f32 = u_xlat14.z;
            u_xlat16.y = x_3738;
            let x_3740 : vec4<f32> = u_xlat11;
            let x_3743 : vec4<f32> = x_661.x_AdditionalShadowmapSize;
            let x_3746 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3740.x, x_3740.y, x_3740.x, x_3740.y) * vec4<f32>(x_3743.x, x_3743.y, x_3743.x, x_3743.y)) + vec4<f32>(x_3746.x, x_3746.y, x_3746.z, x_3746.y));
            let x_3749 : vec4<f32> = u_xlat11;
            let x_3752 : vec4<f32> = x_661.x_AdditionalShadowmapSize;
            let x_3755 : vec4<f32> = u_xlat16;
            let x_3757 : vec2<f32> = ((vec2<f32>(x_3749.x, x_3749.y) * vec2<f32>(x_3752.x, x_3752.y)) + vec2<f32>(x_3755.w, x_3755.y));
            let x_3758 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3757.x, x_3757.y, x_3758.z, x_3758.w);
            let x_3761 : f32 = u_xlat16.y;
            u_xlat13.z = x_3761;
            let x_3763 : vec4<f32> = u_xlat11;
            let x_3766 : vec4<f32> = x_661.x_AdditionalShadowmapSize;
            let x_3769 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3763.x, x_3763.y, x_3763.x, x_3763.y) * vec4<f32>(x_3766.x, x_3766.y, x_3766.x, x_3766.y)) + vec4<f32>(x_3769.x, x_3769.y, x_3769.x, x_3769.z));
            let x_3773 : f32 = u_xlat14.w;
            u_xlat16.y = x_3773;
            let x_3776 : vec4<f32> = u_xlat11;
            let x_3779 : vec4<f32> = x_661.x_AdditionalShadowmapSize;
            let x_3782 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3776.x, x_3776.y, x_3776.x, x_3776.y) * vec4<f32>(x_3779.x, x_3779.y, x_3779.x, x_3779.y)) + vec4<f32>(x_3782.x, x_3782.y, x_3782.z, x_3782.y));
            let x_3786 : vec4<f32> = u_xlat11;
            let x_3789 : vec4<f32> = x_661.x_AdditionalShadowmapSize;
            let x_3792 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3786.x, x_3786.y) * vec2<f32>(x_3789.x, x_3789.y)) + vec2<f32>(x_3792.w, x_3792.y));
            let x_3796 : f32 = u_xlat16.y;
            u_xlat13.w = x_3796;
            let x_3799 : vec4<f32> = u_xlat11;
            let x_3802 : vec4<f32> = x_661.x_AdditionalShadowmapSize;
            let x_3805 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3799.x, x_3799.y) * vec2<f32>(x_3802.x, x_3802.y)) + vec2<f32>(x_3805.x, x_3805.w));
            let x_3808 : vec4<f32> = u_xlat16;
            let x_3809 : vec3<f32> = vec3<f32>(x_3808.x, x_3808.z, x_3808.w);
            let x_3810 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3809.x, x_3810.y, x_3809.y, x_3809.z);
            let x_3812 : vec4<f32> = u_xlat11;
            let x_3815 : vec4<f32> = x_661.x_AdditionalShadowmapSize;
            let x_3818 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3812.x, x_3812.y, x_3812.x, x_3812.y) * vec4<f32>(x_3815.x, x_3815.y, x_3815.x, x_3815.y)) + vec4<f32>(x_3818.x, x_3818.y, x_3818.z, x_3818.y));
            let x_3822 : vec4<f32> = u_xlat11;
            let x_3825 : vec4<f32> = x_661.x_AdditionalShadowmapSize;
            let x_3828 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3822.x, x_3822.y) * vec2<f32>(x_3825.x, x_3825.y)) + vec2<f32>(x_3828.w, x_3828.y));
            let x_3832 : f32 = u_xlat13.x;
            u_xlat14.x = x_3832;
            let x_3834 : vec4<f32> = u_xlat11;
            let x_3837 : vec4<f32> = x_661.x_AdditionalShadowmapSize;
            let x_3840 : vec4<f32> = u_xlat14;
            let x_3842 : vec2<f32> = ((vec2<f32>(x_3834.x, x_3834.y) * vec2<f32>(x_3837.x, x_3837.y)) + vec2<f32>(x_3840.x, x_3840.y));
            let x_3843 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3842.x, x_3842.y, x_3843.z, x_3843.w);
            let x_3846 : vec4<f32> = u_xlat12;
            let x_3848 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3846.x, x_3846.x, x_3846.x, x_3846.x) * x_3848);
            let x_3851 : vec4<f32> = u_xlat12;
            let x_3853 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3851.y, x_3851.y, x_3851.y, x_3851.y) * x_3853);
            let x_3856 : vec4<f32> = u_xlat12;
            let x_3858 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3856.z, x_3856.z, x_3856.z, x_3856.z) * x_3858);
            let x_3860 : vec4<f32> = u_xlat12;
            let x_3862 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3860.w, x_3860.w, x_3860.w, x_3860.w) * x_3862);
            let x_3865 : vec4<f32> = u_xlat17;
            let x_3866 : vec2<f32> = vec2<f32>(x_3865.x, x_3865.y);
            let x_3868 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3866.x, x_3866.y, x_3868);
            let x_3875 : vec3<f32> = txVec43;
            let x_3877 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3875.xy, x_3875.z);
            u_xlat13.x = x_3877;
            let x_3880 : vec4<f32> = u_xlat17;
            let x_3881 : vec2<f32> = vec2<f32>(x_3880.z, x_3880.w);
            let x_3883 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3881.x, x_3881.y, x_3883);
            let x_3891 : vec3<f32> = txVec44;
            let x_3893 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3891.xy, x_3891.z);
            u_xlat88 = x_3893;
            let x_3894 : f32 = u_xlat88;
            let x_3896 : f32 = u_xlat22.y;
            u_xlat88 = (x_3894 * x_3896);
            let x_3899 : f32 = u_xlat22.x;
            let x_3901 : f32 = u_xlat13.x;
            let x_3903 : f32 = u_xlat88;
            u_xlat13.x = ((x_3899 * x_3901) + x_3903);
            let x_3907 : vec2<f32> = u_xlat61;
            let x_3909 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3907.x, x_3907.y, x_3909);
            let x_3916 : vec3<f32> = txVec45;
            let x_3918 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3916.xy, x_3916.z);
            u_xlat61.x = x_3918;
            let x_3921 : f32 = u_xlat22.z;
            let x_3923 : f32 = u_xlat61.x;
            let x_3926 : f32 = u_xlat13.x;
            u_xlat61.x = ((x_3921 * x_3923) + x_3926);
            let x_3930 : vec4<f32> = u_xlat20;
            let x_3931 : vec2<f32> = vec2<f32>(x_3930.x, x_3930.y);
            let x_3933 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3931.x, x_3931.y, x_3933);
            let x_3941 : vec3<f32> = txVec46;
            let x_3943 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3941.xy, x_3941.z);
            u_xlat86 = x_3943;
            let x_3945 : f32 = u_xlat22.w;
            let x_3946 : f32 = u_xlat86;
            let x_3949 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3945 * x_3946) + x_3949);
            let x_3953 : vec4<f32> = u_xlat18;
            let x_3954 : vec2<f32> = vec2<f32>(x_3953.x, x_3953.y);
            let x_3956 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3954.x, x_3954.y, x_3956);
            let x_3963 : vec3<f32> = txVec47;
            let x_3965 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3963.xy, x_3963.z);
            u_xlat86 = x_3965;
            let x_3967 : f32 = u_xlat23.x;
            let x_3968 : f32 = u_xlat86;
            let x_3971 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3967 * x_3968) + x_3971);
            let x_3975 : vec4<f32> = u_xlat18;
            let x_3976 : vec2<f32> = vec2<f32>(x_3975.z, x_3975.w);
            let x_3978 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3976.x, x_3976.y, x_3978);
            let x_3985 : vec3<f32> = txVec48;
            let x_3987 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3985.xy, x_3985.z);
            u_xlat86 = x_3987;
            let x_3989 : f32 = u_xlat23.y;
            let x_3990 : f32 = u_xlat86;
            let x_3993 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3989 * x_3990) + x_3993);
            let x_3997 : vec4<f32> = u_xlat19;
            let x_3998 : vec2<f32> = vec2<f32>(x_3997.x, x_3997.y);
            let x_4000 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3998.x, x_3998.y, x_4000);
            let x_4007 : vec3<f32> = txVec49;
            let x_4009 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4007.xy, x_4007.z);
            u_xlat86 = x_4009;
            let x_4011 : f32 = u_xlat23.z;
            let x_4012 : f32 = u_xlat86;
            let x_4015 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_4011 * x_4012) + x_4015);
            let x_4019 : vec4<f32> = u_xlat20;
            let x_4020 : vec2<f32> = vec2<f32>(x_4019.z, x_4019.w);
            let x_4022 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_4020.x, x_4020.y, x_4022);
            let x_4029 : vec3<f32> = txVec50;
            let x_4031 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4029.xy, x_4029.z);
            u_xlat86 = x_4031;
            let x_4033 : f32 = u_xlat23.w;
            let x_4034 : f32 = u_xlat86;
            let x_4037 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_4033 * x_4034) + x_4037);
            let x_4041 : vec4<f32> = u_xlat21;
            let x_4042 : vec2<f32> = vec2<f32>(x_4041.x, x_4041.y);
            let x_4044 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_4042.x, x_4042.y, x_4044);
            let x_4051 : vec3<f32> = txVec51;
            let x_4053 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4051.xy, x_4051.z);
            u_xlat86 = x_4053;
            let x_4055 : f32 = u_xlat24.x;
            let x_4056 : f32 = u_xlat86;
            let x_4059 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_4055 * x_4056) + x_4059);
            let x_4063 : vec4<f32> = u_xlat21;
            let x_4064 : vec2<f32> = vec2<f32>(x_4063.z, x_4063.w);
            let x_4066 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_4064.x, x_4064.y, x_4066);
            let x_4073 : vec3<f32> = txVec52;
            let x_4075 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4073.xy, x_4073.z);
            u_xlat86 = x_4075;
            let x_4077 : f32 = u_xlat24.y;
            let x_4078 : f32 = u_xlat86;
            let x_4081 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_4077 * x_4078) + x_4081);
            let x_4085 : vec2<f32> = u_xlat38;
            let x_4087 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_4085.x, x_4085.y, x_4087);
            let x_4094 : vec3<f32> = txVec53;
            let x_4096 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4094.xy, x_4094.z);
            u_xlat86 = x_4096;
            let x_4098 : f32 = u_xlat24.z;
            let x_4099 : f32 = u_xlat86;
            let x_4102 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_4098 * x_4099) + x_4102);
            let x_4106 : vec2<f32> = u_xlat69;
            let x_4108 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_4106.x, x_4106.y, x_4108);
            let x_4115 : vec3<f32> = txVec54;
            let x_4117 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4115.xy, x_4115.z);
            u_xlat86 = x_4117;
            let x_4119 : f32 = u_xlat24.w;
            let x_4120 : f32 = u_xlat86;
            let x_4123 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_4119 * x_4120) + x_4123);
            let x_4127 : vec4<f32> = u_xlat16;
            let x_4128 : vec2<f32> = vec2<f32>(x_4127.x, x_4127.y);
            let x_4130 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_4128.x, x_4128.y, x_4130);
            let x_4137 : vec3<f32> = txVec55;
            let x_4139 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4137.xy, x_4137.z);
            u_xlat86 = x_4139;
            let x_4141 : f32 = u_xlat12.x;
            let x_4142 : f32 = u_xlat86;
            let x_4145 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_4141 * x_4142) + x_4145);
            let x_4149 : vec4<f32> = u_xlat16;
            let x_4150 : vec2<f32> = vec2<f32>(x_4149.z, x_4149.w);
            let x_4152 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_4150.x, x_4150.y, x_4152);
            let x_4159 : vec3<f32> = txVec56;
            let x_4161 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4159.xy, x_4159.z);
            u_xlat86 = x_4161;
            let x_4163 : f32 = u_xlat12.y;
            let x_4164 : f32 = u_xlat86;
            let x_4167 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_4163 * x_4164) + x_4167);
            let x_4171 : vec2<f32> = u_xlat64;
            let x_4173 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_4171.x, x_4171.y, x_4173);
            let x_4180 : vec3<f32> = txVec57;
            let x_4182 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4180.xy, x_4180.z);
            u_xlat86 = x_4182;
            let x_4184 : f32 = u_xlat12.z;
            let x_4185 : f32 = u_xlat86;
            let x_4188 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_4184 * x_4185) + x_4188);
            let x_4192 : vec4<f32> = u_xlat11;
            let x_4193 : vec2<f32> = vec2<f32>(x_4192.x, x_4192.y);
            let x_4195 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_4193.x, x_4193.y, x_4195);
            let x_4202 : vec3<f32> = txVec58;
            let x_4204 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4202.xy, x_4202.z);
            u_xlat11.x = x_4204;
            let x_4207 : f32 = u_xlat12.w;
            let x_4209 : f32 = u_xlat11.x;
            let x_4212 : f32 = u_xlat61.x;
            u_xlat85 = ((x_4207 * x_4209) + x_4212);
          }
        }
      } else {
        let x_4216 : vec4<f32> = u_xlat10;
        let x_4217 : vec2<f32> = vec2<f32>(x_4216.x, x_4216.y);
        let x_4219 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_4217.x, x_4217.y, x_4219);
        let x_4226 : vec3<f32> = txVec59;
        let x_4228 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4226.xy, x_4226.z);
        u_xlat85 = x_4228;
      }
      let x_4229 : i32 = u_xlati54;
      let x_4231 : f32 = x_661.x_AdditionalShadowParams[x_4229].x;
      u_xlat10.x = (1.0f + -(x_4231));
      let x_4235 : f32 = u_xlat85;
      let x_4236 : i32 = u_xlati54;
      let x_4238 : f32 = x_661.x_AdditionalShadowParams[x_4236].x;
      let x_4241 : f32 = u_xlat10.x;
      u_xlat10.x = ((x_4235 * x_4238) + x_4241);
      let x_4245 : f32 = u_xlat10.z;
      u_xlatb35.x = (0.0f >= x_4245);
      let x_4250 : f32 = u_xlat10.z;
      u_xlatb60 = (x_4250 >= 1.0f);
      let x_4252 : bool = u_xlatb60;
      let x_4254 : bool = u_xlatb35.x;
      u_xlatb35.x = (x_4252 | x_4254);
      let x_4258 : bool = u_xlatb35.x;
      if (x_4258) {
        x_4259 = 1.0f;
      } else {
        let x_4264 : f32 = u_xlat10.x;
        x_4259 = x_4264;
      }
      let x_4265 : f32 = x_4259;
      u_xlat10.x = x_4265;
    } else {
      u_xlat10.x = 1.0f;
    }
    let x_4270 : f32 = u_xlat10.x;
    u_xlat35.x = (-(x_4270) + 1.0f);
    let x_4274 : f32 = u_xlat76;
    let x_4276 : f32 = u_xlat35.x;
    let x_4279 : f32 = u_xlat10.x;
    u_xlat10.x = ((x_4274 * x_4276) + x_4279);
    let x_4283 : i32 = u_xlati54;
    u_xlati35 = (1i << bitcast<u32>((x_4283 & 31i)));
    let x_4287 : i32 = u_xlati35;
    let x_4290 : f32 = x_2316.x_AdditionalLightsCookieEnableBits;
    u_xlati35 = bitcast<i32>((bitcast<u32>(x_4287) & bitcast<u32>(x_4290)));
    let x_4294 : i32 = u_xlati35;
    if ((x_4294 != 0i)) {
      let x_4298 : i32 = u_xlati54;
      let x_4300 : f32 = x_2316.x_AdditionalLightsLightTypes[x_4298].el;
      u_xlati35 = i32(x_4300);
      let x_4303 : i32 = u_xlati35;
      u_xlati60 = select(1i, 0i, (x_4303 != 0i));
      let x_4307 : i32 = u_xlati54;
      u_xlati85 = (x_4307 << bitcast<u32>(2i));
      let x_4309 : i32 = u_xlati60;
      if ((x_4309 != 0i)) {
        let x_4313 : vec3<f32> = vs_INTERP7;
        let x_4315 : i32 = u_xlati85;
        let x_4318 : i32 = u_xlati85;
        let x_4322 : vec4<f32> = x_2316.x_AdditionalLightsWorldToLights[((x_4315 + 1i) / 4i)][((x_4318 + 1i) % 4i)];
        let x_4324 : vec3<f32> = (vec3<f32>(x_4313.y, x_4313.y, x_4313.y) * vec3<f32>(x_4322.x, x_4322.y, x_4322.w));
        let x_4325 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4324.x, x_4324.y, x_4324.z, x_4325.w);
        let x_4327 : i32 = u_xlati85;
        let x_4329 : i32 = u_xlati85;
        let x_4332 : vec4<f32> = x_2316.x_AdditionalLightsWorldToLights[(x_4327 / 4i)][(x_4329 % 4i)];
        let x_4334 : vec3<f32> = vs_INTERP7;
        let x_4337 : vec4<f32> = u_xlat11;
        let x_4339 : vec3<f32> = ((vec3<f32>(x_4332.x, x_4332.y, x_4332.w) * vec3<f32>(x_4334.x, x_4334.x, x_4334.x)) + vec3<f32>(x_4337.x, x_4337.y, x_4337.z));
        let x_4340 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4339.x, x_4339.y, x_4339.z, x_4340.w);
        let x_4342 : i32 = u_xlati85;
        let x_4345 : i32 = u_xlati85;
        let x_4349 : vec4<f32> = x_2316.x_AdditionalLightsWorldToLights[((x_4342 + 2i) / 4i)][((x_4345 + 2i) % 4i)];
        let x_4351 : vec3<f32> = vs_INTERP7;
        let x_4354 : vec4<f32> = u_xlat11;
        let x_4356 : vec3<f32> = ((vec3<f32>(x_4349.x, x_4349.y, x_4349.w) * vec3<f32>(x_4351.z, x_4351.z, x_4351.z)) + vec3<f32>(x_4354.x, x_4354.y, x_4354.z));
        let x_4357 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4356.x, x_4356.y, x_4356.z, x_4357.w);
        let x_4359 : vec4<f32> = u_xlat11;
        let x_4361 : i32 = u_xlati85;
        let x_4364 : i32 = u_xlati85;
        let x_4368 : vec4<f32> = x_2316.x_AdditionalLightsWorldToLights[((x_4361 + 3i) / 4i)][((x_4364 + 3i) % 4i)];
        let x_4370 : vec3<f32> = (vec3<f32>(x_4359.x, x_4359.y, x_4359.z) + vec3<f32>(x_4368.x, x_4368.y, x_4368.w));
        let x_4371 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4370.x, x_4370.y, x_4370.z, x_4371.w);
        let x_4373 : vec4<f32> = u_xlat11;
        let x_4375 : vec4<f32> = u_xlat11;
        let x_4377 : vec2<f32> = (vec2<f32>(x_4373.x, x_4373.y) / vec2<f32>(x_4375.z, x_4375.z));
        let x_4378 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4377.x, x_4377.y, x_4378.z, x_4378.w);
        let x_4380 : vec4<f32> = u_xlat11;
        let x_4383 : vec2<f32> = ((vec2<f32>(x_4380.x, x_4380.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_4384 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4383.x, x_4383.y, x_4384.z, x_4384.w);
        let x_4386 : vec4<f32> = u_xlat11;
        let x_4390 : vec2<f32> = clamp(vec2<f32>(x_4386.x, x_4386.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_4391 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4390.x, x_4390.y, x_4391.z, x_4391.w);
        let x_4393 : i32 = u_xlati54;
        let x_4395 : vec4<f32> = x_2316.x_AdditionalLightsCookieAtlasUVRects[x_4393];
        let x_4397 : vec4<f32> = u_xlat11;
        let x_4400 : i32 = u_xlati54;
        let x_4402 : vec4<f32> = x_2316.x_AdditionalLightsCookieAtlasUVRects[x_4400];
        let x_4404 : vec2<f32> = ((vec2<f32>(x_4395.x, x_4395.y) * vec2<f32>(x_4397.x, x_4397.y)) + vec2<f32>(x_4402.z, x_4402.w));
        let x_4405 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4404.x, x_4404.y, x_4405.z, x_4405.w);
      } else {
        let x_4408 : i32 = u_xlati35;
        u_xlatb35.x = (x_4408 == 1i);
        let x_4412 : bool = u_xlatb35.x;
        u_xlati35 = select(0i, 1i, x_4412);
        let x_4414 : i32 = u_xlati35;
        if ((x_4414 != 0i)) {
          let x_4418 : vec3<f32> = vs_INTERP7;
          let x_4420 : i32 = u_xlati85;
          let x_4423 : i32 = u_xlati85;
          let x_4427 : vec4<f32> = x_2316.x_AdditionalLightsWorldToLights[((x_4420 + 1i) / 4i)][((x_4423 + 1i) % 4i)];
          let x_4429 : vec2<f32> = (vec2<f32>(x_4418.y, x_4418.y) * vec2<f32>(x_4427.x, x_4427.y));
          let x_4430 : vec3<f32> = u_xlat35;
          u_xlat35 = vec3<f32>(x_4429.x, x_4429.y, x_4430.z);
          let x_4432 : i32 = u_xlati85;
          let x_4434 : i32 = u_xlati85;
          let x_4437 : vec4<f32> = x_2316.x_AdditionalLightsWorldToLights[(x_4432 / 4i)][(x_4434 % 4i)];
          let x_4439 : vec3<f32> = vs_INTERP7;
          let x_4442 : vec3<f32> = u_xlat35;
          let x_4444 : vec2<f32> = ((vec2<f32>(x_4437.x, x_4437.y) * vec2<f32>(x_4439.x, x_4439.x)) + vec2<f32>(x_4442.x, x_4442.y));
          let x_4445 : vec3<f32> = u_xlat35;
          u_xlat35 = vec3<f32>(x_4444.x, x_4444.y, x_4445.z);
          let x_4447 : i32 = u_xlati85;
          let x_4450 : i32 = u_xlati85;
          let x_4454 : vec4<f32> = x_2316.x_AdditionalLightsWorldToLights[((x_4447 + 2i) / 4i)][((x_4450 + 2i) % 4i)];
          let x_4456 : vec3<f32> = vs_INTERP7;
          let x_4459 : vec3<f32> = u_xlat35;
          let x_4461 : vec2<f32> = ((vec2<f32>(x_4454.x, x_4454.y) * vec2<f32>(x_4456.z, x_4456.z)) + vec2<f32>(x_4459.x, x_4459.y));
          let x_4462 : vec3<f32> = u_xlat35;
          u_xlat35 = vec3<f32>(x_4461.x, x_4461.y, x_4462.z);
          let x_4464 : vec3<f32> = u_xlat35;
          let x_4466 : i32 = u_xlati85;
          let x_4469 : i32 = u_xlati85;
          let x_4473 : vec4<f32> = x_2316.x_AdditionalLightsWorldToLights[((x_4466 + 3i) / 4i)][((x_4469 + 3i) % 4i)];
          let x_4475 : vec2<f32> = (vec2<f32>(x_4464.x, x_4464.y) + vec2<f32>(x_4473.x, x_4473.y));
          let x_4476 : vec3<f32> = u_xlat35;
          u_xlat35 = vec3<f32>(x_4475.x, x_4475.y, x_4476.z);
          let x_4478 : vec3<f32> = u_xlat35;
          let x_4481 : vec2<f32> = ((vec2<f32>(x_4478.x, x_4478.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4482 : vec3<f32> = u_xlat35;
          u_xlat35 = vec3<f32>(x_4481.x, x_4481.y, x_4482.z);
          let x_4484 : vec3<f32> = u_xlat35;
          let x_4486 : vec2<f32> = fract(vec2<f32>(x_4484.x, x_4484.y));
          let x_4487 : vec3<f32> = u_xlat35;
          u_xlat35 = vec3<f32>(x_4486.x, x_4486.y, x_4487.z);
          let x_4489 : i32 = u_xlati54;
          let x_4491 : vec4<f32> = x_2316.x_AdditionalLightsCookieAtlasUVRects[x_4489];
          let x_4493 : vec3<f32> = u_xlat35;
          let x_4496 : i32 = u_xlati54;
          let x_4498 : vec4<f32> = x_2316.x_AdditionalLightsCookieAtlasUVRects[x_4496];
          let x_4500 : vec2<f32> = ((vec2<f32>(x_4491.x, x_4491.y) * vec2<f32>(x_4493.x, x_4493.y)) + vec2<f32>(x_4498.z, x_4498.w));
          let x_4501 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4500.x, x_4500.y, x_4501.z, x_4501.w);
        } else {
          let x_4504 : vec3<f32> = vs_INTERP7;
          let x_4506 : i32 = u_xlati85;
          let x_4509 : i32 = u_xlati85;
          let x_4513 : vec4<f32> = x_2316.x_AdditionalLightsWorldToLights[((x_4506 + 1i) / 4i)][((x_4509 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_4504.y, x_4504.y, x_4504.y, x_4504.y) * x_4513);
          let x_4515 : i32 = u_xlati85;
          let x_4517 : i32 = u_xlati85;
          let x_4520 : vec4<f32> = x_2316.x_AdditionalLightsWorldToLights[(x_4515 / 4i)][(x_4517 % 4i)];
          let x_4521 : vec3<f32> = vs_INTERP7;
          let x_4524 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4520 * vec4<f32>(x_4521.x, x_4521.x, x_4521.x, x_4521.x)) + x_4524);
          let x_4526 : i32 = u_xlati85;
          let x_4529 : i32 = u_xlati85;
          let x_4533 : vec4<f32> = x_2316.x_AdditionalLightsWorldToLights[((x_4526 + 2i) / 4i)][((x_4529 + 2i) % 4i)];
          let x_4534 : vec3<f32> = vs_INTERP7;
          let x_4537 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4533 * vec4<f32>(x_4534.z, x_4534.z, x_4534.z, x_4534.z)) + x_4537);
          let x_4539 : vec4<f32> = u_xlat12;
          let x_4540 : i32 = u_xlati85;
          let x_4543 : i32 = u_xlati85;
          let x_4547 : vec4<f32> = x_2316.x_AdditionalLightsWorldToLights[((x_4540 + 3i) / 4i)][((x_4543 + 3i) % 4i)];
          u_xlat12 = (x_4539 + x_4547);
          let x_4549 : vec4<f32> = u_xlat12;
          let x_4551 : vec4<f32> = u_xlat12;
          u_xlat35 = (vec3<f32>(x_4549.x, x_4549.y, x_4549.z) / vec3<f32>(x_4551.w, x_4551.w, x_4551.w));
          let x_4554 : vec3<f32> = u_xlat35;
          let x_4555 : vec3<f32> = u_xlat35;
          u_xlat61.x = dot(x_4554, x_4555);
          let x_4559 : f32 = u_xlat61.x;
          u_xlat61.x = inverseSqrt(x_4559);
          let x_4562 : vec3<f32> = u_xlat35;
          let x_4563 : vec2<f32> = u_xlat61;
          u_xlat35 = (x_4562 * vec3<f32>(x_4563.x, x_4563.x, x_4563.x));
          let x_4566 : vec3<f32> = u_xlat35;
          u_xlat61.x = dot(abs(x_4566), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_4572 : f32 = u_xlat61.x;
          u_xlat61.x = max(x_4572, 0.00000099999999747524f);
          let x_4577 : f32 = u_xlat61.x;
          u_xlat61.x = (1.0f / x_4577);
          let x_4580 : vec3<f32> = u_xlat35;
          let x_4582 : vec2<f32> = u_xlat61;
          let x_4584 : vec3<f32> = (vec3<f32>(x_4580.z, x_4580.x, x_4580.y) * vec3<f32>(x_4582.x, x_4582.x, x_4582.x));
          let x_4585 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4584.x, x_4584.y, x_4584.z, x_4585.w);
          let x_4588 : f32 = u_xlat12.x;
          u_xlat12.x = -(x_4588);
          let x_4592 : f32 = u_xlat12.x;
          u_xlat12.x = clamp(x_4592, 0.0f, 1.0f);
          let x_4596 : vec4<f32> = u_xlat12;
          let x_4598 : vec4<bool> = (vec4<f32>(x_4596.y, x_4596.z, x_4596.y, x_4596.y) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb37 = vec2<bool>(x_4598.x, x_4598.y);
          let x_4602 : vec4<f32> = u_xlat12;
          hlslcc_movcTemp = x_4602;
          let x_4604 : bool = u_xlatb37.x;
          if (x_4604) {
            let x_4609 : f32 = u_xlat12.x;
            x_4605 = x_4609;
          } else {
            let x_4612 : f32 = u_xlat12.x;
            x_4605 = -(x_4612);
          }
          let x_4614 : f32 = x_4605;
          hlslcc_movcTemp.x = x_4614;
          let x_4617 : bool = u_xlatb37.y;
          if (x_4617) {
            let x_4622 : f32 = u_xlat12.x;
            x_4618 = x_4622;
          } else {
            let x_4625 : f32 = u_xlat12.x;
            x_4618 = -(x_4625);
          }
          let x_4627 : f32 = x_4618;
          hlslcc_movcTemp.y = x_4627;
          let x_4629 : vec4<f32> = hlslcc_movcTemp;
          u_xlat12 = x_4629;
          let x_4630 : vec3<f32> = u_xlat35;
          let x_4632 : vec2<f32> = u_xlat61;
          let x_4635 : vec4<f32> = u_xlat12;
          let x_4637 : vec2<f32> = ((vec2<f32>(x_4630.x, x_4630.y) * vec2<f32>(x_4632.x, x_4632.x)) + vec2<f32>(x_4635.x, x_4635.y));
          let x_4638 : vec3<f32> = u_xlat35;
          u_xlat35 = vec3<f32>(x_4637.x, x_4637.y, x_4638.z);
          let x_4640 : vec3<f32> = u_xlat35;
          let x_4643 : vec2<f32> = ((vec2<f32>(x_4640.x, x_4640.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4644 : vec3<f32> = u_xlat35;
          u_xlat35 = vec3<f32>(x_4643.x, x_4643.y, x_4644.z);
          let x_4646 : vec3<f32> = u_xlat35;
          let x_4650 : vec2<f32> = clamp(vec2<f32>(x_4646.x, x_4646.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4651 : vec3<f32> = u_xlat35;
          u_xlat35 = vec3<f32>(x_4650.x, x_4650.y, x_4651.z);
          let x_4653 : i32 = u_xlati54;
          let x_4655 : vec4<f32> = x_2316.x_AdditionalLightsCookieAtlasUVRects[x_4653];
          let x_4657 : vec3<f32> = u_xlat35;
          let x_4660 : i32 = u_xlati54;
          let x_4662 : vec4<f32> = x_2316.x_AdditionalLightsCookieAtlasUVRects[x_4660];
          let x_4664 : vec2<f32> = ((vec2<f32>(x_4655.x, x_4655.y) * vec2<f32>(x_4657.x, x_4657.y)) + vec2<f32>(x_4662.z, x_4662.w));
          let x_4665 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4664.x, x_4664.y, x_4665.z, x_4665.w);
        }
      }
      let x_4672 : vec4<f32> = u_xlat11;
      let x_4674 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4672.x, x_4672.y), 0.0f);
      u_xlat11 = x_4674;
      let x_4676 : bool = u_xlatb4.y;
      if (x_4676) {
        let x_4681 : f32 = u_xlat11.w;
        x_4677 = x_4681;
      } else {
        let x_4684 : f32 = u_xlat11.x;
        x_4677 = x_4684;
      }
      let x_4685 : f32 = x_4677;
      u_xlat35.x = x_4685;
      let x_4688 : bool = u_xlatb4.x;
      if (x_4688) {
        let x_4692 : vec4<f32> = u_xlat11;
        x_4689 = vec3<f32>(x_4692.x, x_4692.y, x_4692.z);
      } else {
        let x_4695 : vec3<f32> = u_xlat35;
        x_4689 = vec3<f32>(x_4695.x, x_4695.x, x_4695.x);
      }
      let x_4697 : vec3<f32> = x_4689;
      u_xlat35 = x_4697;
    } else {
      u_xlat35.x = 1.0f;
      u_xlat35.y = 1.0f;
      u_xlat35.z = 1.0f;
    }
    let x_4702 : vec3<f32> = u_xlat35;
    let x_4703 : i32 = u_xlati54;
    let x_4705 : vec4<f32> = x_2769.x_AdditionalLightsColor[x_4703];
    u_xlat35 = (x_4702 * vec3<f32>(x_4705.x, x_4705.y, x_4705.z));
    let x_4708 : f32 = u_xlat82;
    let x_4710 : f32 = u_xlat10.x;
    u_xlat54 = (x_4708 * x_4710);
    let x_4712 : vec3<f32> = u_xlat25;
    let x_4713 : vec3<f32> = u_xlat34;
    u_xlat82 = dot(x_4712, x_4713);
    let x_4715 : f32 = u_xlat82;
    u_xlat82 = clamp(x_4715, 0.0f, 1.0f);
    let x_4717 : f32 = u_xlat54;
    let x_4718 : f32 = u_xlat82;
    u_xlat54 = (x_4717 * x_4718);
    let x_4720 : f32 = u_xlat54;
    let x_4722 : vec3<f32> = u_xlat35;
    let x_4723 : vec3<f32> = (vec3<f32>(x_4720, x_4720, x_4720) * x_4722);
    let x_4724 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_4723.x, x_4723.y, x_4723.z, x_4724.w);
    let x_4726 : vec3<f32> = u_xlat33;
    let x_4727 : vec4<f32> = u_xlat9;
    let x_4730 : vec4<f32> = u_xlat1;
    u_xlat33 = ((x_4726 * vec3<f32>(x_4727.x, x_4727.x, x_4727.x)) + vec3<f32>(x_4730.x, x_4730.y, x_4730.z));
    let x_4733 : vec3<f32> = u_xlat33;
    let x_4734 : vec3<f32> = u_xlat33;
    u_xlat54 = dot(x_4733, x_4734);
    let x_4736 : f32 = u_xlat54;
    u_xlat54 = max(x_4736, 1.17549435e-38f);
    let x_4738 : f32 = u_xlat54;
    u_xlat54 = inverseSqrt(x_4738);
    let x_4740 : f32 = u_xlat54;
    let x_4742 : vec3<f32> = u_xlat33;
    u_xlat33 = (vec3<f32>(x_4740, x_4740, x_4740) * x_4742);
    let x_4744 : vec3<f32> = u_xlat25;
    let x_4745 : vec3<f32> = u_xlat33;
    u_xlat54 = dot(x_4744, x_4745);
    let x_4747 : f32 = u_xlat54;
    u_xlat54 = clamp(x_4747, 0.0f, 1.0f);
    let x_4749 : vec3<f32> = u_xlat34;
    let x_4750 : vec3<f32> = u_xlat33;
    u_xlat82 = dot(x_4749, x_4750);
    let x_4752 : f32 = u_xlat82;
    u_xlat82 = clamp(x_4752, 0.0f, 1.0f);
    let x_4754 : f32 = u_xlat54;
    let x_4755 : f32 = u_xlat54;
    u_xlat54 = (x_4754 * x_4755);
    let x_4757 : f32 = u_xlat54;
    let x_4759 : f32 = u_xlat8.x;
    u_xlat54 = ((x_4757 * x_4759) + 1.00001001358032226562f);
    let x_4762 : f32 = u_xlat82;
    let x_4763 : f32 = u_xlat82;
    u_xlat82 = (x_4762 * x_4763);
    let x_4765 : f32 = u_xlat54;
    let x_4766 : f32 = u_xlat54;
    u_xlat54 = (x_4765 * x_4766);
    let x_4768 : f32 = u_xlat82;
    u_xlat82 = max(x_4768, 0.10000000149011611938f);
    let x_4770 : f32 = u_xlat54;
    let x_4771 : f32 = u_xlat82;
    u_xlat54 = (x_4770 * x_4771);
    let x_4773 : f32 = u_xlat80;
    let x_4774 : f32 = u_xlat54;
    u_xlat54 = (x_4773 * x_4774);
    let x_4776 : f32 = u_xlat79;
    let x_4777 : f32 = u_xlat54;
    u_xlat54 = (x_4776 / x_4777);
    let x_4779 : vec3<f32> = u_xlat2;
    let x_4780 : f32 = u_xlat54;
    let x_4783 : vec3<f32> = u_xlat3;
    u_xlat33 = ((x_4779 * vec3<f32>(x_4780, x_4780, x_4780)) + x_4783);
    let x_4785 : vec3<f32> = u_xlat33;
    let x_4786 : vec4<f32> = u_xlat10;
    let x_4789 : vec4<f32> = u_xlat7;
    let x_4791 : vec3<f32> = ((x_4785 * vec3<f32>(x_4786.x, x_4786.y, x_4786.z)) + vec3<f32>(x_4789.x, x_4789.y, x_4789.z));
    let x_4792 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_4791.x, x_4791.y, x_4791.z, x_4792.w);

    continuing {
      let x_4794 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4794 + bitcast<u32>(1i));
    }
  }
  let x_4796 : vec4<f32> = u_xlat5;
  let x_4798 : vec3<f32> = u_xlat6;
  let x_4801 : vec3<f32> = u_xlat31;
  let x_4802 : vec3<f32> = ((vec3<f32>(x_4796.x, x_4796.y, x_4796.z) * vec3<f32>(x_4798.x, x_4798.x, x_4798.x)) + x_4801);
  let x_4803 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4802.x, x_4802.y, x_4802.z, x_4803.w);
  let x_4805 : vec4<f32> = u_xlat7;
  let x_4807 : vec4<f32> = u_xlat0;
  let x_4809 : vec3<f32> = (vec3<f32>(x_4805.x, x_4805.y, x_4805.z) + vec3<f32>(x_4807.x, x_4807.y, x_4807.z));
  let x_4810 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4809.x, x_4809.y, x_4809.z, x_4810.w);
  let x_4813 : f32 = u_xlat77;
  let x_4814 : f32 = u_xlat77;
  u_xlat75 = (x_4813 * -(x_4814));
  let x_4817 : f32 = u_xlat75;
  u_xlat75 = exp2(x_4817);
  let x_4819 : vec4<f32> = u_xlat0;
  let x_4822 : vec4<f32> = x_135.unity_FogColor;
  let x_4825 : vec3<f32> = (vec3<f32>(x_4819.x, x_4819.y, x_4819.z) + -(vec3<f32>(x_4822.x, x_4822.y, x_4822.z)));
  let x_4826 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4825.x, x_4825.y, x_4825.z, x_4826.w);
  let x_4830 : f32 = u_xlat75;
  let x_4832 : vec4<f32> = u_xlat0;
  let x_4836 : vec4<f32> = x_135.unity_FogColor;
  let x_4838 : vec3<f32> = ((vec3<f32>(x_4830, x_4830, x_4830) * vec3<f32>(x_4832.x, x_4832.y, x_4832.z)) + vec3<f32>(x_4836.x, x_4836.y, x_4836.z));
  let x_4839 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4838.x, x_4838.y, x_4838.z, x_4839.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(4) vs_INTERP8_param : vec3<f32>, @location(1) vs_INTERP4_param : vec4<f32>, @location(2) vs_INTERP5_param : vec4<f32>, @location(3) vs_INTERP7_param : vec3<f32>, @location(0) vs_INTERP0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP7 = vs_INTERP7_param;
  vs_INTERP0 = vs_INTERP0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


