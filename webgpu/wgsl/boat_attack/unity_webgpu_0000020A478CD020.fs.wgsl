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

@group(0) @binding(6) var x_MainTex : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainTex : sampler;

var<private> vs_INTERP5 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_135 : PGlobals;

var<private> u_xlat76 : f32;

var<private> vs_INTERP7 : vec3<f32>;

var<private> u_xlat77 : f32;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(9) var Texture2D_D7D66558 : texture_2d<f32>;

@group(0) @binding(18) var samplerTexture2D_D7D66558 : sampler;

@group(1) @binding(5) var<uniform> x_195 : UnityPerMaterial;

var<private> u_xlat78 : f32;

var<private> u_xlat79 : f32;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(7) var Texture2D_DE8BF47E : texture_2d<f32>;

@group(0) @binding(16) var samplerTexture2D_DE8BF47E : sampler;

var<private> u_xlat32 : vec3<f32>;

var<private> u_xlat26 : vec2<f32>;

var<private> u_xlat29 : vec3<f32>;

@group(0) @binding(8) var Texture2D_C005B064 : texture_2d<f32>;

@group(0) @binding(17) var samplerTexture2D_C005B064 : sampler;

@group(0) @binding(5) var x_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1_Texture2D : texture_2d<f32>;

@group(0) @binding(14) var sampler_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1_Texture2D : sampler;

var<private> u_xlat50 : f32;

@group(1) @binding(3) var<uniform> x_666 : LightShadows;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlatb5 : vec4<bool>;

var<private> u_xlatu1 : u32;

var<private> u_xlati1 : i32;

var<private> u_xlat80 : f32;

var<private> u_xlatb31 : vec2<bool>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_LinearClampCompare : sampler_comparison;

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

var<private> u_xlatb26 : bool;

var<private> u_xlatb51 : bool;

var<private> u_xlat51 : f32;

@group(1) @binding(4) var<uniform> x_2340 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlat82 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu0 : u32;

var<private> u_xlatu81 : u32;

var<private> u_xlati82 : i32;

var<private> u_xlati81 : i32;

@group(1) @binding(1) var<uniform> x_2789 : AdditionalLights;

var<private> u_xlat34 : vec3<f32>;

var<private> u_xlati10 : i32;

var<private> u_xlatb35 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat35 : vec3<f32>;

var<private> u_xlatb85 : bool;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_LinearClamp : sampler;

var<private> u_xlat75 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu78 : u32;

var<private> u_xlatb81 : bool;

fn main_1() {
  var x_650 : vec3<f32>;
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
  var x_2294 : f32;
  var x_2420 : f32;
  var x_2431 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2930 : f32;
  var x_2943 : f32;
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
  var x_4279 : f32;
  var hlslcc_movcTemp : vec4<f32>;
  var x_4626 : f32;
  var x_4639 : f32;
  var x_4698 : f32;
  var x_4710 : vec3<f32>;
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
  let x_177 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_176.x, x_176.y, x_177.z);
  let x_185 : vec3<f32> = u_xlat5;
  let x_188 : f32 = x_135.x_GlobalMipBias.x;
  let x_189 : vec4<f32> = textureSampleBias(Texture2D_D7D66558, samplerTexture2D_D7D66558, vec2<f32>(x_185.x, x_185.y), x_188);
  let x_190 : vec3<f32> = vec3<f32>(x_189.x, x_189.y, x_189.z);
  let x_191 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_190.x, x_190.y, x_190.z, x_191.w);
  let x_198 : f32 = x_195.Vector1_8B35DE98;
  u_xlat77 = ((-(x_198) * 0.01111099962145090103f) + 0.94999998807907104492f);
  let x_207 : f32 = x_195.Vector1_A492C01C;
  u_xlat78 = (x_207 + -10.0f);
  let x_210 : f32 = u_xlat78;
  let x_213 : f32 = vs_INTERP7.y;
  u_xlat78 = (-(x_210) + x_213);
  let x_215 : f32 = u_xlat78;
  u_xlat78 = (x_215 * 0.05000000074505805969f);
  let x_218 : f32 = u_xlat78;
  u_xlat78 = clamp(x_218, 0.0f, 1.0f);
  let x_221 : f32 = u_xlat78;
  u_xlat79 = ((x_221 * -2.0f) + 3.0f);
  let x_226 : f32 = u_xlat78;
  let x_227 : f32 = u_xlat78;
  u_xlat78 = (x_226 * x_227);
  let x_229 : f32 = u_xlat78;
  let x_230 : f32 = u_xlat79;
  u_xlat78 = (x_229 * x_230);
  let x_238 : vec4<f32> = vs_INTERP5;
  let x_241 : f32 = x_135.x_GlobalMipBias.x;
  let x_242 : vec4<f32> = textureSampleBias(Texture2D_DE8BF47E, samplerTexture2D_DE8BF47E, vec2<f32>(x_238.x, x_238.y), x_241);
  u_xlat7 = x_242;
  let x_244 : vec4<f32> = u_xlat7;
  u_xlat32 = ((vec3<f32>(x_244.w, x_244.y, x_244.z) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_251 : vec3<f32> = u_xlat3;
  let x_252 : vec3<f32> = u_xlat32;
  u_xlat3 = (x_251 * vec3<f32>(x_252.y, x_252.y, x_252.y));
  let x_255 : vec3<f32> = u_xlat32;
  let x_257 : vec3<f32> = u_xlat2;
  let x_259 : vec3<f32> = u_xlat3;
  u_xlat2 = ((vec3<f32>(x_255.x, x_255.x, x_255.x) * x_257) + x_259);
  let x_261 : vec3<f32> = u_xlat32;
  let x_263 : vec4<f32> = u_xlat1;
  let x_266 : vec3<f32> = u_xlat2;
  let x_267 : vec3<f32> = ((vec3<f32>(x_261.z, x_261.z, x_261.z) * vec3<f32>(x_263.x, x_263.y, x_263.z)) + x_266);
  let x_268 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_267.x, x_267.y, x_267.z, x_268.w);
  let x_270 : vec4<f32> = u_xlat1;
  let x_272 : vec4<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_270.x, x_270.y, x_270.z), vec3<f32>(x_272.x, x_272.y, x_272.z));
  let x_277 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_277, 1.17549435e-38f);
  let x_282 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_282);
  let x_286 : f32 = u_xlat1.x;
  let x_288 : f32 = u_xlat1.y;
  u_xlat1.x = (x_286 * x_288);
  let x_291 : f32 = u_xlat78;
  let x_293 : f32 = u_xlat1.x;
  let x_295 : f32 = u_xlat77;
  u_xlat1.x = ((x_291 * x_293) + -(x_295));
  let x_300 : f32 = u_xlat1.x;
  u_xlat1.x = (x_300 * 10.0f);
  let x_305 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_305, 0.0f, 1.0f);
  let x_311 : f32 = u_xlat1.x;
  u_xlat26.x = ((x_311 * -2.0f) + 3.0f);
  let x_316 : f32 = u_xlat1.x;
  let x_318 : f32 = u_xlat1.x;
  u_xlat1.x = (x_316 * x_318);
  let x_322 : f32 = u_xlat1.x;
  let x_324 : f32 = u_xlat26.x;
  u_xlat1.x = (x_322 * x_324);
  let x_327 : vec4<f32> = u_xlat1;
  let x_330 : vec2<f32> = min(vec2<f32>(x_327.x, x_327.w), vec2<f32>(1.0f, 1.0f));
  let x_331 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_330.x, x_331.y, x_331.z, x_330.y);
  let x_334 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_334) + 1.0f);
  let x_338 : vec4<f32> = u_xlat4;
  let x_340 : vec4<f32> = u_xlat6;
  u_xlat2 = (vec3<f32>(x_338.x, x_338.y, x_338.z) + -(vec3<f32>(x_340.x, x_340.y, x_340.z)));
  let x_344 : vec4<f32> = u_xlat1;
  let x_346 : vec3<f32> = u_xlat2;
  let x_348 : vec4<f32> = u_xlat6;
  u_xlat2 = ((vec3<f32>(x_344.x, x_344.x, x_344.x) * x_346) + vec3<f32>(x_348.x, x_348.y, x_348.z));
  let x_351 : vec4<f32> = u_xlat1;
  let x_353 : vec3<f32> = u_xlat2;
  u_xlat3 = (vec3<f32>(x_351.w, x_351.w, x_351.w) * x_353);
  let x_361 : vec3<f32> = u_xlat5;
  let x_364 : f32 = x_135.x_GlobalMipBias.x;
  let x_365 : vec4<f32> = textureSampleBias(Texture2D_C005B064, samplerTexture2D_C005B064, vec2<f32>(x_361.x, x_361.y), x_364);
  u_xlat29 = vec3<f32>(x_365.x, x_365.y, x_365.w);
  let x_368 : f32 = u_xlat29.x;
  let x_370 : f32 = u_xlat29.z;
  u_xlat29.x = (x_368 * x_370);
  let x_373 : vec3<f32> = u_xlat29;
  let x_378 : vec2<f32> = ((vec2<f32>(x_373.x, x_373.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_379 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_378.x, x_378.y, x_379.z);
  let x_381 : vec3<f32> = u_xlat5;
  let x_383 : vec3<f32> = u_xlat5;
  u_xlat26.x = dot(vec2<f32>(x_381.x, x_381.y), vec2<f32>(x_383.x, x_383.y));
  let x_388 : f32 = u_xlat26.x;
  u_xlat26.x = min(x_388, 1.0f);
  let x_392 : f32 = u_xlat26.x;
  u_xlat26.x = (-(x_392) + 1.0f);
  let x_397 : f32 = u_xlat26.x;
  u_xlat26.x = sqrt(x_397);
  let x_401 : f32 = u_xlat26.x;
  u_xlat5.z = max(x_401, 0.0000000000000001f);
  let x_407 : vec4<f32> = x_48.unity_ObjectToWorld[0i];
  let x_410 : vec4<f32> = x_48.unity_ObjectToWorld[0i];
  u_xlat26.x = dot(vec3<f32>(x_407.x, x_407.y, x_407.z), vec3<f32>(x_410.x, x_410.y, x_410.z));
  let x_415 : f32 = u_xlat26.x;
  u_xlat6.x = sqrt(x_415);
  let x_420 : vec4<f32> = x_48.unity_ObjectToWorld[1i];
  let x_423 : vec4<f32> = x_48.unity_ObjectToWorld[1i];
  u_xlat26.x = dot(vec3<f32>(x_420.x, x_420.y, x_420.z), vec3<f32>(x_423.x, x_423.y, x_423.z));
  let x_428 : f32 = u_xlat26.x;
  u_xlat6.y = sqrt(x_428);
  let x_433 : vec4<f32> = x_48.unity_ObjectToWorld[2i];
  let x_436 : vec4<f32> = x_48.unity_ObjectToWorld[2i];
  u_xlat26.x = dot(vec3<f32>(x_433.x, x_433.y, x_433.z), vec3<f32>(x_436.x, x_436.y, x_436.z));
  let x_441 : f32 = u_xlat26.x;
  u_xlat6.z = sqrt(x_441);
  let x_444 : vec4<f32> = u_xlat6;
  let x_446 : vec4<f32> = u_xlat6;
  u_xlat26.x = dot(vec3<f32>(x_444.x, x_444.y, x_444.z), vec3<f32>(x_446.x, x_446.y, x_446.z));
  let x_451 : f32 = u_xlat26.x;
  u_xlat26.x = sqrt(x_451);
  let x_455 : f32 = u_xlat26.x;
  let x_458 : f32 = x_195.Vector1_90E376AD;
  u_xlat26.x = (x_455 * x_458);
  let x_462 : f32 = u_xlat26.x;
  u_xlat26.x = (x_462 * 30.0f);
  let x_466 : vec2<f32> = u_xlat26;
  let x_468 : vec4<f32> = vs_INTERP5;
  u_xlat26 = (vec2<f32>(x_466.x, x_466.x) * vec2<f32>(x_468.x, x_468.y));
  let x_476 : vec2<f32> = u_xlat26;
  let x_478 : f32 = x_135.x_GlobalMipBias.x;
  let x_479 : vec4<f32> = textureSampleBias(x_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1_Texture2D, sampler_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1_Texture2D, x_476, x_478);
  u_xlat29 = vec3<f32>(x_479.x, x_479.y, x_479.w);
  let x_482 : f32 = u_xlat29.x;
  let x_484 : f32 = u_xlat29.z;
  u_xlat29.x = (x_482 * x_484);
  let x_487 : vec3<f32> = u_xlat29;
  u_xlat26 = ((vec2<f32>(x_487.x, x_487.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_491 : vec2<f32> = u_xlat26;
  let x_492 : vec2<f32> = u_xlat26;
  u_xlat77 = dot(x_491, x_492);
  let x_494 : f32 = u_xlat77;
  u_xlat77 = min(x_494, 1.0f);
  let x_496 : f32 = u_xlat77;
  u_xlat77 = (-(x_496) + 1.0f);
  let x_499 : f32 = u_xlat77;
  u_xlat77 = sqrt(x_499);
  let x_501 : f32 = u_xlat77;
  u_xlat77 = max(x_501, 0.0000000000000001f);
  let x_503 : vec2<f32> = u_xlat26;
  let x_504 : vec3<f32> = u_xlat32;
  let x_506 : vec2<f32> = (x_503 + vec2<f32>(x_504.x, x_504.y));
  let x_507 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_506.x, x_506.y, x_507.z, x_507.w);
  let x_509 : f32 = u_xlat77;
  let x_511 : f32 = u_xlat32.z;
  u_xlat6.z = (x_509 * x_511);
  let x_514 : vec4<f32> = u_xlat6;
  let x_516 : vec4<f32> = u_xlat6;
  u_xlat26.x = dot(vec3<f32>(x_514.x, x_514.y, x_514.z), vec3<f32>(x_516.x, x_516.y, x_516.z));
  let x_521 : f32 = u_xlat26.x;
  u_xlat26.x = max(x_521, 0.00006103515625f);
  let x_526 : f32 = u_xlat26.x;
  u_xlat26.x = inverseSqrt(x_526);
  let x_529 : vec4<f32> = u_xlat6;
  let x_531 : vec2<f32> = u_xlat26;
  let x_534 : vec3<f32> = u_xlat5;
  u_xlat29 = ((vec3<f32>(x_529.x, x_529.y, x_529.z) * vec3<f32>(x_531.x, x_531.x, x_531.x)) + -(x_534));
  let x_537 : vec4<f32> = u_xlat1;
  let x_539 : vec3<f32> = u_xlat29;
  let x_541 : vec3<f32> = u_xlat5;
  let x_542 : vec3<f32> = ((vec3<f32>(x_537.x, x_537.x, x_537.x) * x_539) + x_541);
  let x_543 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_543.x, x_542.x, x_542.y, x_542.z);
  let x_546 : f32 = u_xlat0.x;
  u_xlat0.x = (-(abs(x_546)) + 1.0f);
  let x_551 : vec4<f32> = u_xlat0;
  let x_552 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_551 * vec4<f32>(x_552.x, x_552.z, x_552.z, x_552.z));
  let x_556 : f32 = u_xlat0.x;
  let x_558 : f32 = x_195.Vector1_6E11FCEA;
  u_xlat0.x = (x_556 * x_558);
  let x_562 : f32 = u_xlat1.x;
  let x_564 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_562 * x_564) + -0.85000002384185791016f);
  let x_570 : f32 = u_xlat1.w;
  let x_572 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_570 * x_572) + 0.85000002384185791016f);
  let x_578 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_578, 0.0f, 1.0f);
  let x_581 : vec4<f32> = u_xlat4;
  let x_583 : vec4<f32> = vs_INTERP4;
  let x_586 : vec4<f32> = u_xlat0;
  u_xlat25 = ((vec3<f32>(x_581.y, x_581.y, x_581.y) * vec3<f32>(x_583.x, x_583.y, x_583.z)) + vec3<f32>(x_586.y, x_586.z, x_586.w));
  let x_589 : vec4<f32> = u_xlat4;
  let x_591 : vec3<f32> = vs_INTERP8;
  let x_593 : vec3<f32> = u_xlat25;
  u_xlat25 = ((vec3<f32>(x_589.w, x_589.w, x_589.w) * x_591) + x_593);
  let x_595 : vec3<f32> = u_xlat25;
  let x_596 : vec3<f32> = u_xlat25;
  u_xlat1.x = dot(x_595, x_596);
  let x_600 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_600);
  let x_603 : vec3<f32> = u_xlat25;
  let x_604 : vec4<f32> = u_xlat1;
  let x_606 : vec3<f32> = (x_603 * vec3<f32>(x_604.x, x_604.x, x_604.x));
  let x_607 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_606.x, x_606.y, x_606.z, x_607.w);
  let x_611 : f32 = x_135.unity_OrthoParams.w;
  u_xlatb25.x = (x_611 == 0.0f);
  let x_614 : vec3<f32> = vs_INTERP7;
  let x_618 : vec3<f32> = x_135.x_WorldSpaceCameraPos;
  let x_619 : vec3<f32> = (-(x_614) + x_618);
  let x_620 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_619.x, x_619.y, x_619.z, x_620.w);
  let x_623 : vec4<f32> = u_xlat1;
  let x_625 : vec4<f32> = u_xlat1;
  u_xlat50 = dot(vec3<f32>(x_623.x, x_623.y, x_623.z), vec3<f32>(x_625.x, x_625.y, x_625.z));
  let x_628 : f32 = u_xlat50;
  u_xlat50 = inverseSqrt(x_628);
  let x_630 : f32 = u_xlat50;
  let x_632 : vec4<f32> = u_xlat1;
  let x_634 : vec3<f32> = (vec3<f32>(x_630, x_630, x_630) * vec3<f32>(x_632.x, x_632.y, x_632.z));
  let x_635 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_634.x, x_634.y, x_634.z, x_635.w);
  let x_639 : f32 = x_135.unity_MatrixV[0i].z;
  u_xlat5.x = x_639;
  let x_642 : f32 = x_135.unity_MatrixV[1i].z;
  u_xlat5.y = x_642;
  let x_645 : f32 = x_135.unity_MatrixV[2i].z;
  u_xlat5.z = x_645;
  let x_648 : bool = u_xlatb25.x;
  if (x_648) {
    let x_653 : vec4<f32> = u_xlat1;
    x_650 = vec3<f32>(x_653.x, x_653.y, x_653.z);
  } else {
    let x_656 : vec3<f32> = u_xlat5;
    x_650 = x_656;
  }
  let x_657 : vec3<f32> = x_650;
  u_xlat25 = x_657;
  let x_658 : vec3<f32> = vs_INTERP7;
  let x_668 : vec4<f32> = x_666.x_CascadeShadowSplitSpheres0;
  let x_671 : vec3<f32> = (x_658 + -(vec3<f32>(x_668.x, x_668.y, x_668.z)));
  let x_672 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_671.x, x_671.y, x_671.z, x_672.w);
  let x_674 : vec3<f32> = vs_INTERP7;
  let x_676 : vec4<f32> = x_666.x_CascadeShadowSplitSpheres1;
  u_xlat5 = (x_674 + -(vec3<f32>(x_676.x, x_676.y, x_676.z)));
  let x_680 : vec3<f32> = vs_INTERP7;
  let x_682 : vec4<f32> = x_666.x_CascadeShadowSplitSpheres2;
  let x_685 : vec3<f32> = (x_680 + -(vec3<f32>(x_682.x, x_682.y, x_682.z)));
  let x_686 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_685.x, x_685.y, x_685.z, x_686.w);
  let x_688 : vec3<f32> = vs_INTERP7;
  let x_690 : vec4<f32> = x_666.x_CascadeShadowSplitSpheres3;
  u_xlat32 = (x_688 + -(vec3<f32>(x_690.x, x_690.y, x_690.z)));
  let x_695 : vec4<f32> = u_xlat1;
  let x_697 : vec4<f32> = u_xlat1;
  u_xlat8.x = dot(vec3<f32>(x_695.x, x_695.y, x_695.z), vec3<f32>(x_697.x, x_697.y, x_697.z));
  let x_701 : vec3<f32> = u_xlat5;
  let x_702 : vec3<f32> = u_xlat5;
  u_xlat8.y = dot(x_701, x_702);
  let x_705 : vec4<f32> = u_xlat6;
  let x_707 : vec4<f32> = u_xlat6;
  u_xlat8.z = dot(vec3<f32>(x_705.x, x_705.y, x_705.z), vec3<f32>(x_707.x, x_707.y, x_707.z));
  let x_711 : vec3<f32> = u_xlat32;
  let x_712 : vec3<f32> = u_xlat32;
  u_xlat8.w = dot(x_711, x_712);
  let x_718 : vec4<f32> = u_xlat8;
  let x_720 : vec4<f32> = x_666.x_CascadeShadowSplitSphereRadii;
  u_xlatb5 = (x_718 < x_720);
  let x_723 : bool = u_xlatb5.x;
  u_xlat6.x = select(0.0f, 1.0f, x_723);
  let x_727 : bool = u_xlatb5.y;
  u_xlat6.y = select(0.0f, 1.0f, x_727);
  let x_731 : bool = u_xlatb5.z;
  u_xlat6.z = select(0.0f, 1.0f, x_731);
  let x_735 : bool = u_xlatb5.w;
  u_xlat6.w = select(0.0f, 1.0f, x_735);
  let x_739 : bool = u_xlatb5.x;
  u_xlat1.x = select(-0.0f, -1.0f, x_739);
  let x_744 : bool = u_xlatb5.y;
  u_xlat1.y = select(-0.0f, -1.0f, x_744);
  let x_748 : bool = u_xlatb5.z;
  u_xlat1.z = select(-0.0f, -1.0f, x_748);
  let x_751 : vec4<f32> = u_xlat1;
  let x_753 : vec4<f32> = u_xlat6;
  let x_755 : vec3<f32> = (vec3<f32>(x_751.x, x_751.y, x_751.z) + vec3<f32>(x_753.y, x_753.z, x_753.w));
  let x_756 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_755.x, x_755.y, x_755.z, x_756.w);
  let x_758 : vec4<f32> = u_xlat1;
  let x_761 : vec3<f32> = max(vec3<f32>(x_758.x, x_758.y, x_758.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_762 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_762.x, x_761.x, x_761.y, x_761.z);
  let x_764 : vec4<f32> = u_xlat6;
  u_xlat1.x = dot(x_764, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_769 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_769) + 4.0f);
  let x_776 : f32 = u_xlat1.x;
  u_xlatu1 = u32(x_776);
  let x_780 : u32 = u_xlatu1;
  u_xlati1 = (bitcast<i32>(x_780) << bitcast<u32>(2i));
  let x_783 : vec3<f32> = vs_INTERP7;
  let x_785 : i32 = u_xlati1;
  let x_788 : i32 = u_xlati1;
  let x_792 : vec4<f32> = x_666.x_MainLightWorldToShadow[((x_785 + 1i) / 4i)][((x_788 + 1i) % 4i)];
  u_xlat5 = (vec3<f32>(x_783.y, x_783.y, x_783.y) * vec3<f32>(x_792.x, x_792.y, x_792.z));
  let x_795 : i32 = u_xlati1;
  let x_797 : i32 = u_xlati1;
  let x_800 : vec4<f32> = x_666.x_MainLightWorldToShadow[(x_795 / 4i)][(x_797 % 4i)];
  let x_802 : vec3<f32> = vs_INTERP7;
  let x_805 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_800.x, x_800.y, x_800.z) * vec3<f32>(x_802.x, x_802.x, x_802.x)) + x_805);
  let x_807 : i32 = u_xlati1;
  let x_810 : i32 = u_xlati1;
  let x_814 : vec4<f32> = x_666.x_MainLightWorldToShadow[((x_807 + 2i) / 4i)][((x_810 + 2i) % 4i)];
  let x_816 : vec3<f32> = vs_INTERP7;
  let x_819 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_814.x, x_814.y, x_814.z) * vec3<f32>(x_816.z, x_816.z, x_816.z)) + x_819);
  let x_821 : vec3<f32> = u_xlat5;
  let x_822 : i32 = u_xlati1;
  let x_825 : i32 = u_xlati1;
  let x_829 : vec4<f32> = x_666.x_MainLightWorldToShadow[((x_822 + 3i) / 4i)][((x_825 + 3i) % 4i)];
  let x_831 : vec3<f32> = (x_821 + vec3<f32>(x_829.x, x_829.y, x_829.z));
  let x_832 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_831.x, x_831.y, x_831.z, x_832.w);
  let x_835 : f32 = vs_INTERP7.y;
  let x_837 : f32 = x_135.unity_MatrixV[1i].z;
  u_xlat77 = (x_835 * x_837);
  let x_840 : f32 = x_135.unity_MatrixV[0i].z;
  let x_842 : f32 = vs_INTERP7.x;
  let x_844 : f32 = u_xlat77;
  u_xlat77 = ((x_840 * x_842) + x_844);
  let x_847 : f32 = x_135.unity_MatrixV[2i].z;
  let x_849 : f32 = vs_INTERP7.z;
  let x_851 : f32 = u_xlat77;
  u_xlat77 = ((x_847 * x_849) + x_851);
  let x_853 : f32 = u_xlat77;
  let x_855 : f32 = x_135.unity_MatrixV[3i].z;
  u_xlat77 = (x_853 + x_855);
  let x_857 : f32 = u_xlat77;
  let x_860 : f32 = x_135.x_ProjectionParams.y;
  u_xlat77 = (-(x_857) + -(x_860));
  let x_863 : f32 = u_xlat77;
  u_xlat77 = max(x_863, 0.0f);
  let x_865 : f32 = u_xlat77;
  let x_868 : f32 = x_135.unity_FogParams.x;
  u_xlat77 = (x_865 * x_868);
  u_xlat4.w = 1.0f;
  let x_873 : vec4<f32> = x_48.unity_SHAr;
  let x_874 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_873, x_874);
  let x_879 : vec4<f32> = x_48.unity_SHAg;
  let x_880 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_879, x_880);
  let x_885 : vec4<f32> = x_48.unity_SHAb;
  let x_886 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_885, x_886);
  let x_889 : vec4<f32> = u_xlat4;
  let x_891 : vec4<f32> = u_xlat4;
  u_xlat6 = (vec4<f32>(x_889.y, x_889.z, x_889.z, x_889.x) * vec4<f32>(x_891.x, x_891.y, x_891.z, x_891.z));
  let x_896 : vec4<f32> = x_48.unity_SHBr;
  let x_897 : vec4<f32> = u_xlat6;
  u_xlat8.x = dot(x_896, x_897);
  let x_902 : vec4<f32> = x_48.unity_SHBg;
  let x_903 : vec4<f32> = u_xlat6;
  u_xlat8.y = dot(x_902, x_903);
  let x_908 : vec4<f32> = x_48.unity_SHBb;
  let x_909 : vec4<f32> = u_xlat6;
  u_xlat8.z = dot(x_908, x_909);
  let x_913 : f32 = u_xlat4.y;
  let x_915 : f32 = u_xlat4.y;
  u_xlat78 = (x_913 * x_915);
  let x_918 : f32 = u_xlat4.x;
  let x_920 : f32 = u_xlat4.x;
  let x_922 : f32 = u_xlat78;
  u_xlat78 = ((x_918 * x_920) + -(x_922));
  let x_927 : vec4<f32> = x_48.unity_SHC;
  let x_929 : f32 = u_xlat78;
  let x_932 : vec4<f32> = u_xlat8;
  let x_934 : vec3<f32> = ((vec3<f32>(x_927.x, x_927.y, x_927.z) * vec3<f32>(x_929, x_929, x_929)) + vec3<f32>(x_932.x, x_932.y, x_932.z));
  let x_935 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_934.x, x_934.y, x_934.z, x_935.w);
  let x_937 : vec3<f32> = u_xlat5;
  let x_938 : vec4<f32> = u_xlat6;
  u_xlat5 = (x_937 + vec3<f32>(x_938.x, x_938.y, x_938.z));
  let x_941 : vec3<f32> = u_xlat5;
  u_xlat5 = max(x_941, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_943 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_943 * vec3<f32>(0.86399996280670166016f, 0.86399996280670166016f, 0.86399996280670166016f));
  let x_947 : vec4<f32> = u_xlat1;
  let x_949 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_947.w, x_947.w, x_947.w) * x_949) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_954 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_954 * vec3<f32>(0.10000000149011611938f, 0.10000000149011611938f, 0.10000000149011611938f)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_961 : f32 = u_xlat0.x;
  u_xlat76 = (-(x_961) + 1.0f);
  let x_964 : f32 = u_xlat76;
  let x_965 : f32 = u_xlat76;
  u_xlat78 = (x_964 * x_965);
  let x_967 : f32 = u_xlat78;
  u_xlat78 = max(x_967, 0.0078125f);
  let x_970 : f32 = u_xlat78;
  let x_971 : f32 = u_xlat78;
  u_xlat79 = (x_970 * x_971);
  let x_974 : f32 = u_xlat0.x;
  u_xlat0.x = (x_974 + 0.13600003719329833984f);
  let x_979 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_979, 1.0f);
  let x_983 : f32 = u_xlat78;
  u_xlat80 = ((x_983 * 4.0f) + 2.0f);
  let x_987 : f32 = u_xlat7.x;
  u_xlat6.x = min(x_987, 1.0f);
  let x_992 : f32 = x_666.x_MainLightShadowParams.y;
  u_xlatb31.x = (0.0f < x_992);
  let x_996 : bool = u_xlatb31.x;
  if (x_996) {
    let x_1000 : f32 = x_666.x_MainLightShadowParams.y;
    u_xlatb31.x = (x_1000 == 1.0f);
    let x_1004 : bool = u_xlatb31.x;
    if (x_1004) {
      let x_1007 : vec4<f32> = u_xlat1;
      let x_1010 : vec4<f32> = x_666.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_1007.x, x_1007.y, x_1007.x, x_1007.y) + x_1010);
      let x_1013 : vec4<f32> = u_xlat7;
      let x_1014 : vec2<f32> = vec2<f32>(x_1013.x, x_1013.y);
      let x_1016 : f32 = u_xlat1.z;
      txVec0 = vec3<f32>(x_1014.x, x_1014.y, x_1016);
      let x_1028 : vec3<f32> = txVec0;
      let x_1030 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1028.xy, x_1028.z);
      u_xlat8.x = x_1030;
      let x_1033 : vec4<f32> = u_xlat7;
      let x_1034 : vec2<f32> = vec2<f32>(x_1033.z, x_1033.w);
      let x_1036 : f32 = u_xlat1.z;
      txVec1 = vec3<f32>(x_1034.x, x_1034.y, x_1036);
      let x_1043 : vec3<f32> = txVec1;
      let x_1045 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1043.xy, x_1043.z);
      u_xlat8.y = x_1045;
      let x_1047 : vec4<f32> = u_xlat1;
      let x_1050 : vec4<f32> = x_666.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_1047.x, x_1047.y, x_1047.x, x_1047.y) + x_1050);
      let x_1053 : vec4<f32> = u_xlat7;
      let x_1054 : vec2<f32> = vec2<f32>(x_1053.x, x_1053.y);
      let x_1056 : f32 = u_xlat1.z;
      txVec2 = vec3<f32>(x_1054.x, x_1054.y, x_1056);
      let x_1063 : vec3<f32> = txVec2;
      let x_1065 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1063.xy, x_1063.z);
      u_xlat8.z = x_1065;
      let x_1068 : vec4<f32> = u_xlat7;
      let x_1069 : vec2<f32> = vec2<f32>(x_1068.z, x_1068.w);
      let x_1071 : f32 = u_xlat1.z;
      txVec3 = vec3<f32>(x_1069.x, x_1069.y, x_1071);
      let x_1078 : vec3<f32> = txVec3;
      let x_1080 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1078.xy, x_1078.z);
      u_xlat8.w = x_1080;
      let x_1083 : vec4<f32> = u_xlat8;
      u_xlat31.x = dot(x_1083, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1091 : f32 = x_666.x_MainLightShadowParams.y;
      u_xlatb56 = (x_1091 == 2.0f);
      let x_1093 : bool = u_xlatb56;
      if (x_1093) {
        let x_1097 : vec4<f32> = u_xlat1;
        let x_1100 : vec4<f32> = x_666.x_MainLightShadowmapSize;
        u_xlat56 = ((vec2<f32>(x_1097.x, x_1097.y) * vec2<f32>(x_1100.z, x_1100.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1106 : vec2<f32> = u_xlat56;
        u_xlat56 = floor(x_1106);
        let x_1108 : vec4<f32> = u_xlat1;
        let x_1111 : vec4<f32> = x_666.x_MainLightShadowmapSize;
        let x_1114 : vec2<f32> = u_xlat56;
        let x_1116 : vec2<f32> = ((vec2<f32>(x_1108.x, x_1108.y) * vec2<f32>(x_1111.z, x_1111.w)) + -(x_1114));
        let x_1117 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1116.x, x_1116.y, x_1117.z, x_1117.w);
        let x_1119 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1119.x, x_1119.x, x_1119.y, x_1119.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1124 : vec4<f32> = u_xlat8;
        let x_1126 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1124.x, x_1124.x, x_1124.z, x_1124.z) * vec4<f32>(x_1126.x, x_1126.x, x_1126.z, x_1126.z));
        let x_1130 : vec4<f32> = u_xlat9;
        u_xlat57 = (vec2<f32>(x_1130.y, x_1130.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1135 : vec4<f32> = u_xlat9;
        let x_1138 : vec4<f32> = u_xlat7;
        let x_1141 : vec2<f32> = ((vec2<f32>(x_1135.x, x_1135.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1138.x, x_1138.y)));
        let x_1142 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1141.x, x_1142.y, x_1141.y, x_1142.w);
        let x_1144 : vec4<f32> = u_xlat7;
        let x_1147 : vec2<f32> = (-(vec2<f32>(x_1144.x, x_1144.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1148 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1147.x, x_1147.y, x_1148.z, x_1148.w);
        let x_1151 : vec4<f32> = u_xlat7;
        u_xlat59 = min(vec2<f32>(x_1151.x, x_1151.y), vec2<f32>(0.0f, 0.0f));
        let x_1155 : vec2<f32> = u_xlat59;
        let x_1157 : vec2<f32> = u_xlat59;
        let x_1159 : vec4<f32> = u_xlat9;
        u_xlat59 = ((-(x_1155) * x_1157) + vec2<f32>(x_1159.x, x_1159.y));
        let x_1162 : vec4<f32> = u_xlat7;
        let x_1164 : vec2<f32> = max(vec2<f32>(x_1162.x, x_1162.y), vec2<f32>(0.0f, 0.0f));
        let x_1165 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1164.x, x_1164.y, x_1165.z, x_1165.w);
        let x_1167 : vec4<f32> = u_xlat7;
        let x_1170 : vec4<f32> = u_xlat7;
        let x_1173 : vec4<f32> = u_xlat8;
        let x_1175 : vec2<f32> = ((-(vec2<f32>(x_1167.x, x_1167.y)) * vec2<f32>(x_1170.x, x_1170.y)) + vec2<f32>(x_1173.y, x_1173.w));
        let x_1176 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1175.x, x_1175.y, x_1176.z, x_1176.w);
        let x_1178 : vec2<f32> = u_xlat59;
        u_xlat59 = (x_1178 + vec2<f32>(1.0f, 1.0f));
        let x_1180 : vec4<f32> = u_xlat7;
        let x_1182 : vec2<f32> = (vec2<f32>(x_1180.x, x_1180.y) + vec2<f32>(1.0f, 1.0f));
        let x_1183 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1182.x, x_1182.y, x_1183.z, x_1183.w);
        let x_1186 : vec4<f32> = u_xlat8;
        let x_1190 : vec2<f32> = (vec2<f32>(x_1186.x, x_1186.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1191 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1190.x, x_1190.y, x_1191.z, x_1191.w);
        let x_1194 : vec4<f32> = u_xlat9;
        let x_1196 : vec2<f32> = (vec2<f32>(x_1194.x, x_1194.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1197 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1196.x, x_1196.y, x_1197.z, x_1197.w);
        let x_1199 : vec2<f32> = u_xlat59;
        let x_1200 : vec2<f32> = (x_1199 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1201 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1200.x, x_1200.y, x_1201.z, x_1201.w);
        let x_1204 : vec4<f32> = u_xlat7;
        let x_1206 : vec2<f32> = (vec2<f32>(x_1204.x, x_1204.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1207 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1206.x, x_1206.y, x_1207.z, x_1207.w);
        let x_1209 : vec4<f32> = u_xlat8;
        let x_1211 : vec2<f32> = (vec2<f32>(x_1209.y, x_1209.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1212 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1211.x, x_1211.y, x_1212.z, x_1212.w);
        let x_1215 : f32 = u_xlat9.x;
        u_xlat10.z = x_1215;
        let x_1218 : f32 = u_xlat7.x;
        u_xlat10.w = x_1218;
        let x_1221 : f32 = u_xlat12.x;
        u_xlat11.z = x_1221;
        let x_1224 : f32 = u_xlat57.x;
        u_xlat11.w = x_1224;
        let x_1226 : vec4<f32> = u_xlat10;
        let x_1228 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1226.z, x_1226.w, x_1226.x, x_1226.z) + vec4<f32>(x_1228.z, x_1228.w, x_1228.x, x_1228.z));
        let x_1232 : f32 = u_xlat10.y;
        u_xlat9.z = x_1232;
        let x_1235 : f32 = u_xlat7.y;
        u_xlat9.w = x_1235;
        let x_1238 : f32 = u_xlat11.y;
        u_xlat12.z = x_1238;
        let x_1241 : f32 = u_xlat57.y;
        u_xlat12.w = x_1241;
        let x_1243 : vec4<f32> = u_xlat9;
        let x_1245 : vec4<f32> = u_xlat12;
        let x_1247 : vec3<f32> = (vec3<f32>(x_1243.z, x_1243.y, x_1243.w) + vec3<f32>(x_1245.z, x_1245.y, x_1245.w));
        let x_1248 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1247.x, x_1247.y, x_1247.z, x_1248.w);
        let x_1250 : vec4<f32> = u_xlat11;
        let x_1252 : vec4<f32> = u_xlat8;
        let x_1254 : vec3<f32> = (vec3<f32>(x_1250.x, x_1250.z, x_1250.w) / vec3<f32>(x_1252.z, x_1252.w, x_1252.y));
        let x_1255 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1254.x, x_1254.y, x_1254.z, x_1255.w);
        let x_1257 : vec4<f32> = u_xlat9;
        let x_1262 : vec3<f32> = (vec3<f32>(x_1257.x, x_1257.y, x_1257.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1263 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1262.x, x_1262.y, x_1262.z, x_1263.w);
        let x_1265 : vec4<f32> = u_xlat12;
        let x_1267 : vec4<f32> = u_xlat7;
        let x_1269 : vec3<f32> = (vec3<f32>(x_1265.z, x_1265.y, x_1265.w) / vec3<f32>(x_1267.x, x_1267.y, x_1267.z));
        let x_1270 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1269.x, x_1269.y, x_1269.z, x_1270.w);
        let x_1272 : vec4<f32> = u_xlat10;
        let x_1274 : vec3<f32> = (vec3<f32>(x_1272.x, x_1272.y, x_1272.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1275 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1274.x, x_1274.y, x_1274.z, x_1275.w);
        let x_1277 : vec4<f32> = u_xlat9;
        let x_1280 : vec4<f32> = x_666.x_MainLightShadowmapSize;
        let x_1282 : vec3<f32> = (vec3<f32>(x_1277.y, x_1277.x, x_1277.z) * vec3<f32>(x_1280.x, x_1280.x, x_1280.x));
        let x_1283 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1282.x, x_1282.y, x_1282.z, x_1283.w);
        let x_1285 : vec4<f32> = u_xlat10;
        let x_1288 : vec4<f32> = x_666.x_MainLightShadowmapSize;
        let x_1290 : vec3<f32> = (vec3<f32>(x_1285.x, x_1285.y, x_1285.z) * vec3<f32>(x_1288.y, x_1288.y, x_1288.y));
        let x_1291 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1290.x, x_1290.y, x_1290.z, x_1291.w);
        let x_1294 : f32 = u_xlat10.x;
        u_xlat9.w = x_1294;
        let x_1296 : vec2<f32> = u_xlat56;
        let x_1299 : vec4<f32> = x_666.x_MainLightShadowmapSize;
        let x_1302 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1296.x, x_1296.y, x_1296.x, x_1296.y) * vec4<f32>(x_1299.x, x_1299.y, x_1299.x, x_1299.y)) + vec4<f32>(x_1302.y, x_1302.w, x_1302.x, x_1302.w));
        let x_1305 : vec2<f32> = u_xlat56;
        let x_1307 : vec4<f32> = x_666.x_MainLightShadowmapSize;
        let x_1310 : vec4<f32> = u_xlat9;
        let x_1312 : vec2<f32> = ((x_1305 * vec2<f32>(x_1307.x, x_1307.y)) + vec2<f32>(x_1310.z, x_1310.w));
        let x_1313 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1312.x, x_1312.y, x_1313.z, x_1313.w);
        let x_1316 : f32 = u_xlat9.y;
        u_xlat10.w = x_1316;
        let x_1318 : vec4<f32> = u_xlat10;
        let x_1319 : vec2<f32> = vec2<f32>(x_1318.y, x_1318.z);
        let x_1320 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1320.x, x_1319.x, x_1320.z, x_1319.y);
        let x_1323 : vec2<f32> = u_xlat56;
        let x_1326 : vec4<f32> = x_666.x_MainLightShadowmapSize;
        let x_1329 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_1323.x, x_1323.y, x_1323.x, x_1323.y) * vec4<f32>(x_1326.x, x_1326.y, x_1326.x, x_1326.y)) + vec4<f32>(x_1329.x, x_1329.y, x_1329.z, x_1329.y));
        let x_1332 : vec2<f32> = u_xlat56;
        let x_1335 : vec4<f32> = x_666.x_MainLightShadowmapSize;
        let x_1338 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1332.x, x_1332.y, x_1332.x, x_1332.y) * vec4<f32>(x_1335.x, x_1335.y, x_1335.x, x_1335.y)) + vec4<f32>(x_1338.w, x_1338.y, x_1338.w, x_1338.z));
        let x_1341 : vec2<f32> = u_xlat56;
        let x_1344 : vec4<f32> = x_666.x_MainLightShadowmapSize;
        let x_1347 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1341.x, x_1341.y, x_1341.x, x_1341.y) * vec4<f32>(x_1344.x, x_1344.y, x_1344.x, x_1344.y)) + vec4<f32>(x_1347.x, x_1347.w, x_1347.z, x_1347.w));
        let x_1351 : vec4<f32> = u_xlat7;
        let x_1353 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_1351.x, x_1351.x, x_1351.x, x_1351.y) * vec4<f32>(x_1353.z, x_1353.w, x_1353.y, x_1353.z));
        let x_1357 : vec4<f32> = u_xlat7;
        let x_1359 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1357.y, x_1357.y, x_1357.z, x_1357.z) * x_1359);
        let x_1362 : f32 = u_xlat7.z;
        let x_1364 : f32 = u_xlat8.y;
        u_xlat56.x = (x_1362 * x_1364);
        let x_1368 : vec4<f32> = u_xlat11;
        let x_1369 : vec2<f32> = vec2<f32>(x_1368.x, x_1368.y);
        let x_1371 : f32 = u_xlat1.z;
        txVec4 = vec3<f32>(x_1369.x, x_1369.y, x_1371);
        let x_1379 : vec3<f32> = txVec4;
        let x_1381 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1379.xy, x_1379.z);
        u_xlat81 = x_1381;
        let x_1383 : vec4<f32> = u_xlat11;
        let x_1384 : vec2<f32> = vec2<f32>(x_1383.z, x_1383.w);
        let x_1386 : f32 = u_xlat1.z;
        txVec5 = vec3<f32>(x_1384.x, x_1384.y, x_1386);
        let x_1393 : vec3<f32> = txVec5;
        let x_1395 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1393.xy, x_1393.z);
        u_xlat7.x = x_1395;
        let x_1398 : f32 = u_xlat7.x;
        let x_1400 : f32 = u_xlat14.y;
        u_xlat7.x = (x_1398 * x_1400);
        let x_1404 : f32 = u_xlat14.x;
        let x_1405 : f32 = u_xlat81;
        let x_1408 : f32 = u_xlat7.x;
        u_xlat81 = ((x_1404 * x_1405) + x_1408);
        let x_1411 : vec4<f32> = u_xlat12;
        let x_1412 : vec2<f32> = vec2<f32>(x_1411.x, x_1411.y);
        let x_1414 : f32 = u_xlat1.z;
        txVec6 = vec3<f32>(x_1412.x, x_1412.y, x_1414);
        let x_1421 : vec3<f32> = txVec6;
        let x_1423 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1421.xy, x_1421.z);
        u_xlat7.x = x_1423;
        let x_1426 : f32 = u_xlat14.z;
        let x_1428 : f32 = u_xlat7.x;
        let x_1430 : f32 = u_xlat81;
        u_xlat81 = ((x_1426 * x_1428) + x_1430);
        let x_1433 : vec4<f32> = u_xlat10;
        let x_1434 : vec2<f32> = vec2<f32>(x_1433.x, x_1433.y);
        let x_1436 : f32 = u_xlat1.z;
        txVec7 = vec3<f32>(x_1434.x, x_1434.y, x_1436);
        let x_1443 : vec3<f32> = txVec7;
        let x_1445 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1443.xy, x_1443.z);
        u_xlat7.x = x_1445;
        let x_1448 : f32 = u_xlat14.w;
        let x_1450 : f32 = u_xlat7.x;
        let x_1452 : f32 = u_xlat81;
        u_xlat81 = ((x_1448 * x_1450) + x_1452);
        let x_1455 : vec4<f32> = u_xlat13;
        let x_1456 : vec2<f32> = vec2<f32>(x_1455.x, x_1455.y);
        let x_1458 : f32 = u_xlat1.z;
        txVec8 = vec3<f32>(x_1456.x, x_1456.y, x_1458);
        let x_1465 : vec3<f32> = txVec8;
        let x_1467 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1465.xy, x_1465.z);
        u_xlat7.x = x_1467;
        let x_1470 : f32 = u_xlat15.x;
        let x_1472 : f32 = u_xlat7.x;
        let x_1474 : f32 = u_xlat81;
        u_xlat81 = ((x_1470 * x_1472) + x_1474);
        let x_1477 : vec4<f32> = u_xlat13;
        let x_1478 : vec2<f32> = vec2<f32>(x_1477.z, x_1477.w);
        let x_1480 : f32 = u_xlat1.z;
        txVec9 = vec3<f32>(x_1478.x, x_1478.y, x_1480);
        let x_1487 : vec3<f32> = txVec9;
        let x_1489 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1487.xy, x_1487.z);
        u_xlat7.x = x_1489;
        let x_1492 : f32 = u_xlat15.y;
        let x_1494 : f32 = u_xlat7.x;
        let x_1496 : f32 = u_xlat81;
        u_xlat81 = ((x_1492 * x_1494) + x_1496);
        let x_1499 : vec4<f32> = u_xlat10;
        let x_1500 : vec2<f32> = vec2<f32>(x_1499.z, x_1499.w);
        let x_1502 : f32 = u_xlat1.z;
        txVec10 = vec3<f32>(x_1500.x, x_1500.y, x_1502);
        let x_1509 : vec3<f32> = txVec10;
        let x_1511 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1509.xy, x_1509.z);
        u_xlat7.x = x_1511;
        let x_1514 : f32 = u_xlat15.z;
        let x_1516 : f32 = u_xlat7.x;
        let x_1518 : f32 = u_xlat81;
        u_xlat81 = ((x_1514 * x_1516) + x_1518);
        let x_1521 : vec4<f32> = u_xlat9;
        let x_1522 : vec2<f32> = vec2<f32>(x_1521.x, x_1521.y);
        let x_1524 : f32 = u_xlat1.z;
        txVec11 = vec3<f32>(x_1522.x, x_1522.y, x_1524);
        let x_1531 : vec3<f32> = txVec11;
        let x_1533 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1531.xy, x_1531.z);
        u_xlat7.x = x_1533;
        let x_1536 : f32 = u_xlat15.w;
        let x_1538 : f32 = u_xlat7.x;
        let x_1540 : f32 = u_xlat81;
        u_xlat81 = ((x_1536 * x_1538) + x_1540);
        let x_1543 : vec4<f32> = u_xlat9;
        let x_1544 : vec2<f32> = vec2<f32>(x_1543.z, x_1543.w);
        let x_1546 : f32 = u_xlat1.z;
        txVec12 = vec3<f32>(x_1544.x, x_1544.y, x_1546);
        let x_1553 : vec3<f32> = txVec12;
        let x_1555 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1553.xy, x_1553.z);
        u_xlat7.x = x_1555;
        let x_1558 : f32 = u_xlat56.x;
        let x_1560 : f32 = u_xlat7.x;
        let x_1562 : f32 = u_xlat81;
        u_xlat31.x = ((x_1558 * x_1560) + x_1562);
      } else {
        let x_1566 : vec4<f32> = u_xlat1;
        let x_1569 : vec4<f32> = x_666.x_MainLightShadowmapSize;
        u_xlat56 = ((vec2<f32>(x_1566.x, x_1566.y) * vec2<f32>(x_1569.z, x_1569.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1573 : vec2<f32> = u_xlat56;
        u_xlat56 = floor(x_1573);
        let x_1575 : vec4<f32> = u_xlat1;
        let x_1578 : vec4<f32> = x_666.x_MainLightShadowmapSize;
        let x_1581 : vec2<f32> = u_xlat56;
        let x_1583 : vec2<f32> = ((vec2<f32>(x_1575.x, x_1575.y) * vec2<f32>(x_1578.z, x_1578.w)) + -(x_1581));
        let x_1584 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1583.x, x_1583.y, x_1584.z, x_1584.w);
        let x_1586 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1586.x, x_1586.x, x_1586.y, x_1586.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1589 : vec4<f32> = u_xlat8;
        let x_1591 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1589.x, x_1589.x, x_1589.z, x_1589.z) * vec4<f32>(x_1591.x, x_1591.x, x_1591.z, x_1591.z));
        let x_1594 : vec4<f32> = u_xlat9;
        let x_1598 : vec2<f32> = (vec2<f32>(x_1594.y, x_1594.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1599 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1599.x, x_1598.x, x_1599.z, x_1598.y);
        let x_1601 : vec4<f32> = u_xlat9;
        let x_1604 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_1601.x, x_1601.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1604.x, x_1604.y)));
        let x_1608 : vec4<f32> = u_xlat7;
        let x_1611 : vec2<f32> = (-(vec2<f32>(x_1608.x, x_1608.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1612 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1611.x, x_1612.y, x_1611.y, x_1612.w);
        let x_1614 : vec4<f32> = u_xlat7;
        let x_1616 : vec2<f32> = min(vec2<f32>(x_1614.x, x_1614.y), vec2<f32>(0.0f, 0.0f));
        let x_1617 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1616.x, x_1616.y, x_1617.z, x_1617.w);
        let x_1619 : vec4<f32> = u_xlat9;
        let x_1622 : vec4<f32> = u_xlat9;
        let x_1625 : vec4<f32> = u_xlat8;
        let x_1627 : vec2<f32> = ((-(vec2<f32>(x_1619.x, x_1619.y)) * vec2<f32>(x_1622.x, x_1622.y)) + vec2<f32>(x_1625.x, x_1625.z));
        let x_1628 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1627.x, x_1628.y, x_1627.y, x_1628.w);
        let x_1630 : vec4<f32> = u_xlat7;
        let x_1632 : vec2<f32> = max(vec2<f32>(x_1630.x, x_1630.y), vec2<f32>(0.0f, 0.0f));
        let x_1633 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1632.x, x_1632.y, x_1633.z, x_1633.w);
        let x_1635 : vec4<f32> = u_xlat9;
        let x_1638 : vec4<f32> = u_xlat9;
        let x_1641 : vec4<f32> = u_xlat8;
        let x_1643 : vec2<f32> = ((-(vec2<f32>(x_1635.x, x_1635.y)) * vec2<f32>(x_1638.x, x_1638.y)) + vec2<f32>(x_1641.y, x_1641.w));
        let x_1644 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1644.x, x_1643.x, x_1644.z, x_1643.y);
        let x_1646 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1646 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1650 : f32 = u_xlat8.y;
        u_xlat9.z = (x_1650 * 0.08163200318813323975f);
        let x_1654 : vec2<f32> = u_xlat57;
        let x_1657 : vec2<f32> = (vec2<f32>(x_1654.y, x_1654.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1658 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1657.x, x_1657.y, x_1658.z, x_1658.w);
        let x_1660 : vec4<f32> = u_xlat8;
        u_xlat57 = (vec2<f32>(x_1660.x, x_1660.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1664 : f32 = u_xlat8.w;
        u_xlat11.z = (x_1664 * 0.08163200318813323975f);
        let x_1668 : f32 = u_xlat11.y;
        u_xlat9.x = x_1668;
        let x_1670 : vec4<f32> = u_xlat7;
        let x_1677 : vec2<f32> = ((vec2<f32>(x_1670.x, x_1670.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1678 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1678.x, x_1677.x, x_1678.z, x_1677.y);
        let x_1680 : vec4<f32> = u_xlat7;
        let x_1684 : vec2<f32> = ((vec2<f32>(x_1680.x, x_1680.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1685 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1684.x, x_1685.y, x_1684.y, x_1685.w);
        let x_1688 : f32 = u_xlat57.x;
        u_xlat8.y = x_1688;
        let x_1691 : f32 = u_xlat10.y;
        u_xlat8.w = x_1691;
        let x_1693 : vec4<f32> = u_xlat8;
        let x_1694 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1693 + x_1694);
        let x_1696 : vec4<f32> = u_xlat7;
        let x_1699 : vec2<f32> = ((vec2<f32>(x_1696.y, x_1696.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1700 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1700.x, x_1699.x, x_1700.z, x_1699.y);
        let x_1702 : vec4<f32> = u_xlat7;
        let x_1705 : vec2<f32> = ((vec2<f32>(x_1702.y, x_1702.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1706 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1705.x, x_1706.y, x_1705.y, x_1706.w);
        let x_1709 : f32 = u_xlat57.y;
        u_xlat10.y = x_1709;
        let x_1711 : vec4<f32> = u_xlat10;
        let x_1712 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1711 + x_1712);
        let x_1714 : vec4<f32> = u_xlat8;
        let x_1715 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_1714 / x_1715);
        let x_1717 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1717 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1723 : vec4<f32> = u_xlat10;
        let x_1724 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_1723 / x_1724);
        let x_1726 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1726 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1728 : vec4<f32> = u_xlat8;
        let x_1731 : vec4<f32> = x_666.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1728.w, x_1728.x, x_1728.y, x_1728.z) * vec4<f32>(x_1731.x, x_1731.x, x_1731.x, x_1731.x));
        let x_1734 : vec4<f32> = u_xlat10;
        let x_1737 : vec4<f32> = x_666.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1734.x, x_1734.w, x_1734.y, x_1734.z) * vec4<f32>(x_1737.y, x_1737.y, x_1737.y, x_1737.y));
        let x_1740 : vec4<f32> = u_xlat8;
        let x_1741 : vec3<f32> = vec3<f32>(x_1740.y, x_1740.z, x_1740.w);
        let x_1742 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1741.x, x_1742.y, x_1741.y, x_1741.z);
        let x_1745 : f32 = u_xlat10.x;
        u_xlat11.y = x_1745;
        let x_1747 : vec2<f32> = u_xlat56;
        let x_1750 : vec4<f32> = x_666.x_MainLightShadowmapSize;
        let x_1753 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1747.x, x_1747.y, x_1747.x, x_1747.y) * vec4<f32>(x_1750.x, x_1750.y, x_1750.x, x_1750.y)) + vec4<f32>(x_1753.x, x_1753.y, x_1753.z, x_1753.y));
        let x_1756 : vec2<f32> = u_xlat56;
        let x_1758 : vec4<f32> = x_666.x_MainLightShadowmapSize;
        let x_1761 : vec4<f32> = u_xlat11;
        let x_1763 : vec2<f32> = ((x_1756 * vec2<f32>(x_1758.x, x_1758.y)) + vec2<f32>(x_1761.w, x_1761.y));
        let x_1764 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1763.x, x_1763.y, x_1764.z, x_1764.w);
        let x_1767 : f32 = u_xlat11.y;
        u_xlat8.y = x_1767;
        let x_1770 : f32 = u_xlat10.z;
        u_xlat11.y = x_1770;
        let x_1772 : vec2<f32> = u_xlat56;
        let x_1775 : vec4<f32> = x_666.x_MainLightShadowmapSize;
        let x_1778 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_1772.x, x_1772.y, x_1772.x, x_1772.y) * vec4<f32>(x_1775.x, x_1775.y, x_1775.x, x_1775.y)) + vec4<f32>(x_1778.x, x_1778.y, x_1778.z, x_1778.y));
        let x_1782 : vec2<f32> = u_xlat56;
        let x_1784 : vec4<f32> = x_666.x_MainLightShadowmapSize;
        let x_1787 : vec4<f32> = u_xlat11;
        u_xlat63 = ((x_1782 * vec2<f32>(x_1784.x, x_1784.y)) + vec2<f32>(x_1787.w, x_1787.y));
        let x_1791 : f32 = u_xlat11.y;
        u_xlat8.z = x_1791;
        let x_1793 : vec2<f32> = u_xlat56;
        let x_1796 : vec4<f32> = x_666.x_MainLightShadowmapSize;
        let x_1799 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1793.x, x_1793.y, x_1793.x, x_1793.y) * vec4<f32>(x_1796.x, x_1796.y, x_1796.x, x_1796.y)) + vec4<f32>(x_1799.x, x_1799.y, x_1799.x, x_1799.z));
        let x_1803 : f32 = u_xlat10.w;
        u_xlat11.y = x_1803;
        let x_1806 : vec2<f32> = u_xlat56;
        let x_1809 : vec4<f32> = x_666.x_MainLightShadowmapSize;
        let x_1812 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1806.x, x_1806.y, x_1806.x, x_1806.y) * vec4<f32>(x_1809.x, x_1809.y, x_1809.x, x_1809.y)) + vec4<f32>(x_1812.x, x_1812.y, x_1812.z, x_1812.y));
        let x_1816 : vec2<f32> = u_xlat56;
        let x_1818 : vec4<f32> = x_666.x_MainLightShadowmapSize;
        let x_1821 : vec4<f32> = u_xlat11;
        let x_1823 : vec2<f32> = ((x_1816 * vec2<f32>(x_1818.x, x_1818.y)) + vec2<f32>(x_1821.w, x_1821.y));
        let x_1824 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_1823.x, x_1823.y, x_1824.z);
        let x_1827 : f32 = u_xlat11.y;
        u_xlat8.w = x_1827;
        let x_1830 : vec2<f32> = u_xlat56;
        let x_1832 : vec4<f32> = x_666.x_MainLightShadowmapSize;
        let x_1835 : vec4<f32> = u_xlat8;
        let x_1837 : vec2<f32> = ((x_1830 * vec2<f32>(x_1832.x, x_1832.y)) + vec2<f32>(x_1835.x, x_1835.w));
        let x_1838 : vec4<f32> = u_xlat17;
        u_xlat17 = vec4<f32>(x_1837.x, x_1837.y, x_1838.z, x_1838.w);
        let x_1840 : vec4<f32> = u_xlat11;
        let x_1841 : vec3<f32> = vec3<f32>(x_1840.x, x_1840.z, x_1840.w);
        let x_1842 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1841.x, x_1842.y, x_1841.y, x_1841.z);
        let x_1844 : vec2<f32> = u_xlat56;
        let x_1847 : vec4<f32> = x_666.x_MainLightShadowmapSize;
        let x_1850 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1844.x, x_1844.y, x_1844.x, x_1844.y) * vec4<f32>(x_1847.x, x_1847.y, x_1847.x, x_1847.y)) + vec4<f32>(x_1850.x, x_1850.y, x_1850.z, x_1850.y));
        let x_1854 : vec2<f32> = u_xlat56;
        let x_1856 : vec4<f32> = x_666.x_MainLightShadowmapSize;
        let x_1859 : vec4<f32> = u_xlat10;
        u_xlat60 = ((x_1854 * vec2<f32>(x_1856.x, x_1856.y)) + vec2<f32>(x_1859.w, x_1859.y));
        let x_1863 : f32 = u_xlat8.x;
        u_xlat10.x = x_1863;
        let x_1865 : vec2<f32> = u_xlat56;
        let x_1867 : vec4<f32> = x_666.x_MainLightShadowmapSize;
        let x_1870 : vec4<f32> = u_xlat10;
        u_xlat56 = ((x_1865 * vec2<f32>(x_1867.x, x_1867.y)) + vec2<f32>(x_1870.x, x_1870.y));
        let x_1874 : vec4<f32> = u_xlat7;
        let x_1876 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1874.x, x_1874.x, x_1874.x, x_1874.x) * x_1876);
        let x_1879 : vec4<f32> = u_xlat7;
        let x_1881 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_1879.y, x_1879.y, x_1879.y, x_1879.y) * x_1881);
        let x_1884 : vec4<f32> = u_xlat7;
        let x_1886 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_1884.z, x_1884.z, x_1884.z, x_1884.z) * x_1886);
        let x_1888 : vec4<f32> = u_xlat7;
        let x_1890 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_1888.w, x_1888.w, x_1888.w, x_1888.w) * x_1890);
        let x_1893 : vec4<f32> = u_xlat12;
        let x_1894 : vec2<f32> = vec2<f32>(x_1893.x, x_1893.y);
        let x_1896 : f32 = u_xlat1.z;
        txVec13 = vec3<f32>(x_1894.x, x_1894.y, x_1896);
        let x_1903 : vec3<f32> = txVec13;
        let x_1905 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1903.xy, x_1903.z);
        u_xlat8.x = x_1905;
        let x_1908 : vec4<f32> = u_xlat12;
        let x_1909 : vec2<f32> = vec2<f32>(x_1908.z, x_1908.w);
        let x_1911 : f32 = u_xlat1.z;
        txVec14 = vec3<f32>(x_1909.x, x_1909.y, x_1911);
        let x_1919 : vec3<f32> = txVec14;
        let x_1921 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1919.xy, x_1919.z);
        u_xlat83 = x_1921;
        let x_1922 : f32 = u_xlat83;
        let x_1924 : f32 = u_xlat18.y;
        u_xlat83 = (x_1922 * x_1924);
        let x_1927 : f32 = u_xlat18.x;
        let x_1929 : f32 = u_xlat8.x;
        let x_1931 : f32 = u_xlat83;
        u_xlat8.x = ((x_1927 * x_1929) + x_1931);
        let x_1935 : vec4<f32> = u_xlat13;
        let x_1936 : vec2<f32> = vec2<f32>(x_1935.x, x_1935.y);
        let x_1938 : f32 = u_xlat1.z;
        txVec15 = vec3<f32>(x_1936.x, x_1936.y, x_1938);
        let x_1945 : vec3<f32> = txVec15;
        let x_1947 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1945.xy, x_1945.z);
        u_xlat83 = x_1947;
        let x_1949 : f32 = u_xlat18.z;
        let x_1950 : f32 = u_xlat83;
        let x_1953 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1949 * x_1950) + x_1953);
        let x_1957 : vec4<f32> = u_xlat15;
        let x_1958 : vec2<f32> = vec2<f32>(x_1957.x, x_1957.y);
        let x_1960 : f32 = u_xlat1.z;
        txVec16 = vec3<f32>(x_1958.x, x_1958.y, x_1960);
        let x_1967 : vec3<f32> = txVec16;
        let x_1969 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1967.xy, x_1967.z);
        u_xlat83 = x_1969;
        let x_1971 : f32 = u_xlat18.w;
        let x_1972 : f32 = u_xlat83;
        let x_1975 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1971 * x_1972) + x_1975);
        let x_1979 : vec4<f32> = u_xlat14;
        let x_1980 : vec2<f32> = vec2<f32>(x_1979.x, x_1979.y);
        let x_1982 : f32 = u_xlat1.z;
        txVec17 = vec3<f32>(x_1980.x, x_1980.y, x_1982);
        let x_1989 : vec3<f32> = txVec17;
        let x_1991 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1989.xy, x_1989.z);
        u_xlat83 = x_1991;
        let x_1993 : f32 = u_xlat19.x;
        let x_1994 : f32 = u_xlat83;
        let x_1997 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1993 * x_1994) + x_1997);
        let x_2001 : vec4<f32> = u_xlat14;
        let x_2002 : vec2<f32> = vec2<f32>(x_2001.z, x_2001.w);
        let x_2004 : f32 = u_xlat1.z;
        txVec18 = vec3<f32>(x_2002.x, x_2002.y, x_2004);
        let x_2011 : vec3<f32> = txVec18;
        let x_2013 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2011.xy, x_2011.z);
        u_xlat83 = x_2013;
        let x_2015 : f32 = u_xlat19.y;
        let x_2016 : f32 = u_xlat83;
        let x_2019 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2015 * x_2016) + x_2019);
        let x_2023 : vec2<f32> = u_xlat63;
        let x_2025 : f32 = u_xlat1.z;
        txVec19 = vec3<f32>(x_2023.x, x_2023.y, x_2025);
        let x_2032 : vec3<f32> = txVec19;
        let x_2034 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2032.xy, x_2032.z);
        u_xlat83 = x_2034;
        let x_2036 : f32 = u_xlat19.z;
        let x_2037 : f32 = u_xlat83;
        let x_2040 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2036 * x_2037) + x_2040);
        let x_2044 : vec4<f32> = u_xlat15;
        let x_2045 : vec2<f32> = vec2<f32>(x_2044.z, x_2044.w);
        let x_2047 : f32 = u_xlat1.z;
        txVec20 = vec3<f32>(x_2045.x, x_2045.y, x_2047);
        let x_2054 : vec3<f32> = txVec20;
        let x_2056 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2054.xy, x_2054.z);
        u_xlat83 = x_2056;
        let x_2058 : f32 = u_xlat19.w;
        let x_2059 : f32 = u_xlat83;
        let x_2062 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2058 * x_2059) + x_2062);
        let x_2066 : vec4<f32> = u_xlat16;
        let x_2067 : vec2<f32> = vec2<f32>(x_2066.x, x_2066.y);
        let x_2069 : f32 = u_xlat1.z;
        txVec21 = vec3<f32>(x_2067.x, x_2067.y, x_2069);
        let x_2076 : vec3<f32> = txVec21;
        let x_2078 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2076.xy, x_2076.z);
        u_xlat83 = x_2078;
        let x_2080 : f32 = u_xlat20.x;
        let x_2081 : f32 = u_xlat83;
        let x_2084 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2080 * x_2081) + x_2084);
        let x_2088 : vec4<f32> = u_xlat16;
        let x_2089 : vec2<f32> = vec2<f32>(x_2088.z, x_2088.w);
        let x_2091 : f32 = u_xlat1.z;
        txVec22 = vec3<f32>(x_2089.x, x_2089.y, x_2091);
        let x_2098 : vec3<f32> = txVec22;
        let x_2100 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2098.xy, x_2098.z);
        u_xlat83 = x_2100;
        let x_2102 : f32 = u_xlat20.y;
        let x_2103 : f32 = u_xlat83;
        let x_2106 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2102 * x_2103) + x_2106);
        let x_2110 : vec3<f32> = u_xlat33;
        let x_2111 : vec2<f32> = vec2<f32>(x_2110.x, x_2110.y);
        let x_2113 : f32 = u_xlat1.z;
        txVec23 = vec3<f32>(x_2111.x, x_2111.y, x_2113);
        let x_2120 : vec3<f32> = txVec23;
        let x_2122 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2120.xy, x_2120.z);
        u_xlat33.x = x_2122;
        let x_2125 : f32 = u_xlat20.z;
        let x_2127 : f32 = u_xlat33.x;
        let x_2130 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2125 * x_2127) + x_2130);
        let x_2134 : vec4<f32> = u_xlat17;
        let x_2135 : vec2<f32> = vec2<f32>(x_2134.x, x_2134.y);
        let x_2137 : f32 = u_xlat1.z;
        txVec24 = vec3<f32>(x_2135.x, x_2135.y, x_2137);
        let x_2144 : vec3<f32> = txVec24;
        let x_2146 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2144.xy, x_2144.z);
        u_xlat33.x = x_2146;
        let x_2149 : f32 = u_xlat20.w;
        let x_2151 : f32 = u_xlat33.x;
        let x_2154 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2149 * x_2151) + x_2154);
        let x_2158 : vec4<f32> = u_xlat11;
        let x_2159 : vec2<f32> = vec2<f32>(x_2158.x, x_2158.y);
        let x_2161 : f32 = u_xlat1.z;
        txVec25 = vec3<f32>(x_2159.x, x_2159.y, x_2161);
        let x_2168 : vec3<f32> = txVec25;
        let x_2170 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2168.xy, x_2168.z);
        u_xlat33.x = x_2170;
        let x_2173 : f32 = u_xlat7.x;
        let x_2175 : f32 = u_xlat33.x;
        let x_2178 : f32 = u_xlat8.x;
        u_xlat7.x = ((x_2173 * x_2175) + x_2178);
        let x_2182 : vec4<f32> = u_xlat11;
        let x_2183 : vec2<f32> = vec2<f32>(x_2182.z, x_2182.w);
        let x_2185 : f32 = u_xlat1.z;
        txVec26 = vec3<f32>(x_2183.x, x_2183.y, x_2185);
        let x_2192 : vec3<f32> = txVec26;
        let x_2194 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2192.xy, x_2192.z);
        u_xlat8.x = x_2194;
        let x_2197 : f32 = u_xlat7.y;
        let x_2199 : f32 = u_xlat8.x;
        let x_2202 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_2197 * x_2199) + x_2202);
        let x_2206 : vec2<f32> = u_xlat60;
        let x_2208 : f32 = u_xlat1.z;
        txVec27 = vec3<f32>(x_2206.x, x_2206.y, x_2208);
        let x_2215 : vec3<f32> = txVec27;
        let x_2217 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2215.xy, x_2215.z);
        u_xlat32.x = x_2217;
        let x_2220 : f32 = u_xlat7.z;
        let x_2222 : f32 = u_xlat32.x;
        let x_2225 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_2220 * x_2222) + x_2225);
        let x_2229 : vec2<f32> = u_xlat56;
        let x_2231 : f32 = u_xlat1.z;
        txVec28 = vec3<f32>(x_2229.x, x_2229.y, x_2231);
        let x_2238 : vec3<f32> = txVec28;
        let x_2240 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2238.xy, x_2238.z);
        u_xlat56.x = x_2240;
        let x_2243 : f32 = u_xlat7.w;
        let x_2245 : f32 = u_xlat56.x;
        let x_2248 : f32 = u_xlat7.x;
        u_xlat31.x = ((x_2243 * x_2245) + x_2248);
      }
    }
  } else {
    let x_2253 : vec4<f32> = u_xlat1;
    let x_2254 : vec2<f32> = vec2<f32>(x_2253.x, x_2253.y);
    let x_2256 : f32 = u_xlat1.z;
    txVec29 = vec3<f32>(x_2254.x, x_2254.y, x_2256);
    let x_2263 : vec3<f32> = txVec29;
    let x_2265 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2263.xy, x_2263.z);
    u_xlat31.x = x_2265;
  }
  let x_2268 : f32 = x_666.x_MainLightShadowParams.x;
  u_xlat1.x = (-(x_2268) + 1.0f);
  let x_2273 : f32 = u_xlat31.x;
  let x_2275 : f32 = x_666.x_MainLightShadowParams.x;
  let x_2278 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_2273 * x_2275) + x_2278);
  let x_2283 : f32 = u_xlat1.z;
  u_xlatb26 = (0.0f >= x_2283);
  let x_2287 : f32 = u_xlat1.z;
  u_xlatb51 = (x_2287 >= 1.0f);
  let x_2289 : bool = u_xlatb51;
  let x_2290 : bool = u_xlatb26;
  u_xlatb26 = (x_2289 | x_2290);
  let x_2292 : bool = u_xlatb26;
  if (x_2292) {
    x_2294 = 1.0f;
  } else {
    let x_2299 : f32 = u_xlat1.x;
    x_2294 = x_2299;
  }
  let x_2300 : f32 = x_2294;
  u_xlat1.x = x_2300;
  let x_2302 : vec3<f32> = vs_INTERP7;
  let x_2304 : vec3<f32> = x_135.x_WorldSpaceCameraPos;
  u_xlat31 = (x_2302 + -(x_2304));
  let x_2307 : vec3<f32> = u_xlat31;
  let x_2308 : vec3<f32> = u_xlat31;
  u_xlat26.x = dot(x_2307, x_2308);
  let x_2313 : f32 = u_xlat26.x;
  let x_2315 : f32 = x_666.x_MainLightShadowParams.z;
  let x_2318 : f32 = x_666.x_MainLightShadowParams.w;
  u_xlat51 = ((x_2313 * x_2315) + x_2318);
  let x_2320 : f32 = u_xlat51;
  u_xlat51 = clamp(x_2320, 0.0f, 1.0f);
  let x_2323 : f32 = u_xlat1.x;
  u_xlat31.x = (-(x_2323) + 1.0f);
  let x_2327 : f32 = u_xlat51;
  let x_2329 : f32 = u_xlat31.x;
  let x_2332 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_2327 * x_2329) + x_2332);
  let x_2342 : f32 = x_2340.x_MainLightCookieTextureFormat;
  u_xlatb51 = !((x_2342 == -1.0f));
  let x_2344 : bool = u_xlatb51;
  if (x_2344) {
    let x_2347 : vec3<f32> = vs_INTERP7;
    let x_2350 : vec4<f32> = x_2340.x_MainLightWorldToLight[1i];
    let x_2352 : vec2<f32> = (vec2<f32>(x_2347.y, x_2347.y) * vec2<f32>(x_2350.x, x_2350.y));
    let x_2353 : vec3<f32> = u_xlat31;
    u_xlat31 = vec3<f32>(x_2352.x, x_2352.y, x_2353.z);
    let x_2356 : vec4<f32> = x_2340.x_MainLightWorldToLight[0i];
    let x_2358 : vec3<f32> = vs_INTERP7;
    let x_2361 : vec3<f32> = u_xlat31;
    let x_2363 : vec2<f32> = ((vec2<f32>(x_2356.x, x_2356.y) * vec2<f32>(x_2358.x, x_2358.x)) + vec2<f32>(x_2361.x, x_2361.y));
    let x_2364 : vec3<f32> = u_xlat31;
    u_xlat31 = vec3<f32>(x_2363.x, x_2363.y, x_2364.z);
    let x_2367 : vec4<f32> = x_2340.x_MainLightWorldToLight[2i];
    let x_2369 : vec3<f32> = vs_INTERP7;
    let x_2372 : vec3<f32> = u_xlat31;
    let x_2374 : vec2<f32> = ((vec2<f32>(x_2367.x, x_2367.y) * vec2<f32>(x_2369.z, x_2369.z)) + vec2<f32>(x_2372.x, x_2372.y));
    let x_2375 : vec3<f32> = u_xlat31;
    u_xlat31 = vec3<f32>(x_2374.x, x_2374.y, x_2375.z);
    let x_2377 : vec3<f32> = u_xlat31;
    let x_2380 : vec4<f32> = x_2340.x_MainLightWorldToLight[3i];
    let x_2382 : vec2<f32> = (vec2<f32>(x_2377.x, x_2377.y) + vec2<f32>(x_2380.x, x_2380.y));
    let x_2383 : vec3<f32> = u_xlat31;
    u_xlat31 = vec3<f32>(x_2382.x, x_2382.y, x_2383.z);
    let x_2385 : vec3<f32> = u_xlat31;
    let x_2388 : vec2<f32> = ((vec2<f32>(x_2385.x, x_2385.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2389 : vec3<f32> = u_xlat31;
    u_xlat31 = vec3<f32>(x_2388.x, x_2388.y, x_2389.z);
    let x_2396 : vec3<f32> = u_xlat31;
    let x_2399 : f32 = x_135.x_GlobalMipBias.x;
    let x_2400 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2396.x, x_2396.y), x_2399);
    u_xlat7 = x_2400;
    let x_2402 : f32 = x_2340.x_MainLightCookieTextureFormat;
    let x_2404 : f32 = x_2340.x_MainLightCookieTextureFormat;
    let x_2406 : f32 = x_2340.x_MainLightCookieTextureFormat;
    let x_2408 : f32 = x_2340.x_MainLightCookieTextureFormat;
    let x_2409 : vec4<f32> = vec4<f32>(x_2402, x_2404, x_2406, x_2408);
    let x_2416 : vec4<bool> = (vec4<f32>(x_2409.x, x_2409.y, x_2409.z, x_2409.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb31 = vec2<bool>(x_2416.x, x_2416.y);
    let x_2419 : bool = u_xlatb31.y;
    if (x_2419) {
      let x_2424 : f32 = u_xlat7.w;
      x_2420 = x_2424;
    } else {
      let x_2427 : f32 = u_xlat7.x;
      x_2420 = x_2427;
    }
    let x_2428 : f32 = x_2420;
    u_xlat51 = x_2428;
    let x_2430 : bool = u_xlatb31.x;
    if (x_2430) {
      let x_2434 : vec4<f32> = u_xlat7;
      x_2431 = vec3<f32>(x_2434.x, x_2434.y, x_2434.z);
    } else {
      let x_2437 : f32 = u_xlat51;
      x_2431 = vec3<f32>(x_2437, x_2437, x_2437);
    }
    let x_2439 : vec3<f32> = x_2431;
    u_xlat31 = x_2439;
  } else {
    u_xlat31.x = 1.0f;
    u_xlat31.y = 1.0f;
    u_xlat31.z = 1.0f;
  }
  let x_2444 : vec3<f32> = u_xlat31;
  let x_2446 : vec4<f32> = x_135.x_MainLightColor;
  u_xlat31 = (x_2444 * vec3<f32>(x_2446.x, x_2446.y, x_2446.z));
  let x_2449 : vec3<f32> = u_xlat25;
  let x_2451 : vec4<f32> = u_xlat4;
  u_xlat51 = dot(-(x_2449), vec3<f32>(x_2451.x, x_2451.y, x_2451.z));
  let x_2454 : f32 = u_xlat51;
  let x_2455 : f32 = u_xlat51;
  u_xlat51 = (x_2454 + x_2455);
  let x_2457 : vec4<f32> = u_xlat4;
  let x_2459 : f32 = u_xlat51;
  let x_2463 : vec3<f32> = u_xlat25;
  let x_2465 : vec3<f32> = ((vec3<f32>(x_2457.x, x_2457.y, x_2457.z) * -(vec3<f32>(x_2459, x_2459, x_2459))) + -(x_2463));
  let x_2466 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2465.x, x_2465.y, x_2465.z, x_2466.w);
  let x_2468 : vec4<f32> = u_xlat4;
  let x_2470 : vec3<f32> = u_xlat25;
  u_xlat51 = dot(vec3<f32>(x_2468.x, x_2468.y, x_2468.z), x_2470);
  let x_2472 : f32 = u_xlat51;
  u_xlat51 = clamp(x_2472, 0.0f, 1.0f);
  let x_2474 : f32 = u_xlat51;
  u_xlat51 = (-(x_2474) + 1.0f);
  let x_2477 : f32 = u_xlat51;
  let x_2478 : f32 = u_xlat51;
  u_xlat51 = (x_2477 * x_2478);
  let x_2480 : f32 = u_xlat51;
  let x_2481 : f32 = u_xlat51;
  u_xlat51 = (x_2480 * x_2481);
  let x_2484 : f32 = u_xlat76;
  u_xlat82 = ((-(x_2484) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2490 : f32 = u_xlat76;
  let x_2491 : f32 = u_xlat82;
  u_xlat76 = (x_2490 * x_2491);
  let x_2493 : f32 = u_xlat76;
  u_xlat76 = (x_2493 * 6.0f);
  let x_2504 : vec4<f32> = u_xlat7;
  let x_2506 : f32 = u_xlat76;
  let x_2507 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2504.x, x_2504.y, x_2504.z), x_2506);
  u_xlat7 = x_2507;
  let x_2509 : f32 = u_xlat7.w;
  u_xlat76 = (x_2509 + -1.0f);
  let x_2512 : f32 = x_48.unity_SpecCube0_HDR.w;
  let x_2513 : f32 = u_xlat76;
  u_xlat76 = ((x_2512 * x_2513) + 1.0f);
  let x_2516 : f32 = u_xlat76;
  u_xlat76 = max(x_2516, 0.0f);
  let x_2518 : f32 = u_xlat76;
  u_xlat76 = log2(x_2518);
  let x_2520 : f32 = u_xlat76;
  let x_2522 : f32 = x_48.unity_SpecCube0_HDR.y;
  u_xlat76 = (x_2520 * x_2522);
  let x_2524 : f32 = u_xlat76;
  u_xlat76 = exp2(x_2524);
  let x_2526 : f32 = u_xlat76;
  let x_2528 : f32 = x_48.unity_SpecCube0_HDR.x;
  u_xlat76 = (x_2526 * x_2528);
  let x_2530 : vec4<f32> = u_xlat7;
  let x_2532 : f32 = u_xlat76;
  let x_2534 : vec3<f32> = (vec3<f32>(x_2530.x, x_2530.y, x_2530.z) * vec3<f32>(x_2532, x_2532, x_2532));
  let x_2535 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2534.x, x_2534.y, x_2534.z, x_2535.w);
  let x_2537 : f32 = u_xlat78;
  let x_2539 : f32 = u_xlat78;
  let x_2543 : vec2<f32> = ((vec2<f32>(x_2537, x_2537) * vec2<f32>(x_2539, x_2539)) + vec2<f32>(-1.0f, 1.0f));
  let x_2544 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2543.x, x_2543.y, x_2544.z, x_2544.w);
  let x_2547 : f32 = u_xlat8.y;
  u_xlat76 = (1.0f / x_2547);
  let x_2549 : vec3<f32> = u_xlat2;
  let x_2551 : vec4<f32> = u_xlat0;
  u_xlat33 = (-(x_2549) + vec3<f32>(x_2551.x, x_2551.x, x_2551.x));
  let x_2554 : f32 = u_xlat51;
  let x_2556 : vec3<f32> = u_xlat33;
  let x_2558 : vec3<f32> = u_xlat2;
  u_xlat33 = ((vec3<f32>(x_2554, x_2554, x_2554) * x_2556) + x_2558);
  let x_2560 : f32 = u_xlat76;
  let x_2562 : vec3<f32> = u_xlat33;
  u_xlat33 = (vec3<f32>(x_2560, x_2560, x_2560) * x_2562);
  let x_2564 : vec4<f32> = u_xlat7;
  let x_2566 : vec3<f32> = u_xlat33;
  let x_2567 : vec3<f32> = (vec3<f32>(x_2564.x, x_2564.y, x_2564.z) * x_2566);
  let x_2568 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2567.x, x_2567.y, x_2567.z, x_2568.w);
  let x_2570 : vec3<f32> = u_xlat5;
  let x_2571 : vec3<f32> = u_xlat3;
  let x_2573 : vec4<f32> = u_xlat7;
  u_xlat5 = ((x_2570 * x_2571) + vec3<f32>(x_2573.x, x_2573.y, x_2573.z));
  let x_2577 : f32 = u_xlat1.x;
  let x_2579 : f32 = x_48.unity_LightData.z;
  u_xlat0.x = (x_2577 * x_2579);
  let x_2582 : vec4<f32> = u_xlat4;
  let x_2585 : vec4<f32> = x_135.x_MainLightPosition;
  u_xlat1.x = dot(vec3<f32>(x_2582.x, x_2582.y, x_2582.z), vec3<f32>(x_2585.x, x_2585.y, x_2585.z));
  let x_2590 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_2590, 0.0f, 1.0f);
  let x_2594 : f32 = u_xlat0.x;
  let x_2596 : f32 = u_xlat1.x;
  u_xlat0.x = (x_2594 * x_2596);
  let x_2599 : vec4<f32> = u_xlat0;
  let x_2601 : vec3<f32> = u_xlat31;
  let x_2602 : vec3<f32> = (vec3<f32>(x_2599.x, x_2599.x, x_2599.x) * x_2601);
  let x_2603 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2602.x, x_2603.y, x_2602.y, x_2602.z);
  let x_2605 : vec3<f32> = u_xlat25;
  let x_2607 : vec4<f32> = x_135.x_MainLightPosition;
  u_xlat31 = (x_2605 + vec3<f32>(x_2607.x, x_2607.y, x_2607.z));
  let x_2610 : vec3<f32> = u_xlat31;
  let x_2611 : vec3<f32> = u_xlat31;
  u_xlat0.x = dot(x_2610, x_2611);
  let x_2615 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2615, 1.17549435e-38f);
  let x_2619 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_2619);
  let x_2622 : vec4<f32> = u_xlat0;
  let x_2624 : vec3<f32> = u_xlat31;
  u_xlat31 = (vec3<f32>(x_2622.x, x_2622.x, x_2622.x) * x_2624);
  let x_2626 : vec4<f32> = u_xlat4;
  let x_2628 : vec3<f32> = u_xlat31;
  u_xlat0.x = dot(vec3<f32>(x_2626.x, x_2626.y, x_2626.z), x_2628);
  let x_2632 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_2632, 0.0f, 1.0f);
  let x_2636 : vec4<f32> = x_135.x_MainLightPosition;
  let x_2638 : vec3<f32> = u_xlat31;
  u_xlat78 = dot(vec3<f32>(x_2636.x, x_2636.y, x_2636.z), x_2638);
  let x_2640 : f32 = u_xlat78;
  u_xlat78 = clamp(x_2640, 0.0f, 1.0f);
  let x_2643 : f32 = u_xlat0.x;
  let x_2645 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2643 * x_2645);
  let x_2649 : f32 = u_xlat0.x;
  let x_2651 : f32 = u_xlat8.x;
  u_xlat0.x = ((x_2649 * x_2651) + 1.00001001358032226562f);
  let x_2656 : f32 = u_xlat78;
  let x_2657 : f32 = u_xlat78;
  u_xlat78 = (x_2656 * x_2657);
  let x_2660 : f32 = u_xlat0.x;
  let x_2662 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2660 * x_2662);
  let x_2665 : f32 = u_xlat78;
  u_xlat78 = max(x_2665, 0.10000000149011611938f);
  let x_2668 : f32 = u_xlat0.x;
  let x_2669 : f32 = u_xlat78;
  u_xlat0.x = (x_2668 * x_2669);
  let x_2672 : f32 = u_xlat80;
  let x_2674 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2672 * x_2674);
  let x_2677 : f32 = u_xlat79;
  let x_2679 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2677 / x_2679);
  let x_2682 : vec3<f32> = u_xlat2;
  let x_2683 : vec4<f32> = u_xlat0;
  let x_2686 : vec3<f32> = u_xlat3;
  u_xlat31 = ((x_2682 * vec3<f32>(x_2683.x, x_2683.x, x_2683.x)) + x_2686);
  let x_2688 : vec4<f32> = u_xlat1;
  let x_2690 : vec3<f32> = u_xlat31;
  let x_2691 : vec3<f32> = (vec3<f32>(x_2688.x, x_2688.z, x_2688.w) * x_2690);
  let x_2692 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2691.x, x_2692.y, x_2691.y, x_2691.z);
  let x_2695 : f32 = x_135.x_AdditionalLightsCount.x;
  let x_2697 : f32 = x_48.unity_LightData.y;
  u_xlat0.x = min(x_2695, x_2697);
  let x_2702 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_2702));
  let x_2706 : f32 = u_xlat26.x;
  let x_2709 : f32 = x_666.x_AdditionalShadowFadeParams.x;
  let x_2712 : f32 = x_666.x_AdditionalShadowFadeParams.y;
  u_xlat26.x = ((x_2706 * x_2709) + x_2712);
  let x_2716 : f32 = u_xlat26.x;
  u_xlat26.x = clamp(x_2716, 0.0f, 1.0f);
  let x_2720 : f32 = x_2340.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2722 : f32 = x_2340.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2724 : f32 = x_2340.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2726 : f32 = x_2340.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2727 : vec4<f32> = vec4<f32>(x_2720, x_2722, x_2724, x_2726);
  let x_2733 : vec4<bool> = (vec4<f32>(x_2727.x, x_2727.y, x_2727.z, x_2727.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb31 = vec2<bool>(x_2733.x, x_2733.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2745 : u32 = u_xlatu_loop_1;
    let x_2746 : u32 = u_xlatu0;
    if ((x_2745 < x_2746)) {
    } else {
      break;
    }
    let x_2749 : u32 = u_xlatu_loop_1;
    u_xlatu81 = (x_2749 >> 2u);
    let x_2752 : u32 = u_xlatu_loop_1;
    u_xlati82 = bitcast<i32>((x_2752 & 3u));
    let x_2755 : u32 = u_xlatu81;
    let x_2758 : vec4<f32> = x_48.unity_LightIndices[bitcast<i32>(x_2755)];
    let x_2768 : i32 = u_xlati82;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2773 : vec4<u32> = indexable[x_2768];
    u_xlat81 = dot(x_2758, bitcast<vec4<f32>>(x_2773));
    let x_2777 : f32 = u_xlat81;
    u_xlati81 = i32(x_2777);
    let x_2779 : vec3<f32> = vs_INTERP7;
    let x_2790 : i32 = u_xlati81;
    let x_2792 : vec4<f32> = x_2789.x_AdditionalLightsPosition[x_2790];
    let x_2795 : i32 = u_xlati81;
    let x_2797 : vec4<f32> = x_2789.x_AdditionalLightsPosition[x_2795];
    u_xlat33 = ((-(x_2779) * vec3<f32>(x_2792.w, x_2792.w, x_2792.w)) + vec3<f32>(x_2797.x, x_2797.y, x_2797.z));
    let x_2800 : vec3<f32> = u_xlat33;
    let x_2801 : vec3<f32> = u_xlat33;
    u_xlat82 = dot(x_2800, x_2801);
    let x_2803 : f32 = u_xlat82;
    u_xlat82 = max(x_2803, 0.00006103515625f);
    let x_2805 : f32 = u_xlat82;
    u_xlat9.x = inverseSqrt(x_2805);
    let x_2809 : vec3<f32> = u_xlat33;
    let x_2810 : vec4<f32> = u_xlat9;
    u_xlat34 = (x_2809 * vec3<f32>(x_2810.x, x_2810.x, x_2810.x));
    let x_2813 : f32 = u_xlat82;
    u_xlat10.x = (1.0f / x_2813);
    let x_2816 : f32 = u_xlat82;
    let x_2817 : i32 = u_xlati81;
    let x_2819 : f32 = x_2789.x_AdditionalLightsAttenuation[x_2817].x;
    u_xlat82 = (x_2816 * x_2819);
    let x_2821 : f32 = u_xlat82;
    let x_2823 : f32 = u_xlat82;
    u_xlat82 = ((-(x_2821) * x_2823) + 1.0f);
    let x_2826 : f32 = u_xlat82;
    u_xlat82 = max(x_2826, 0.0f);
    let x_2828 : f32 = u_xlat82;
    let x_2829 : f32 = u_xlat82;
    u_xlat82 = (x_2828 * x_2829);
    let x_2831 : f32 = u_xlat82;
    let x_2833 : f32 = u_xlat10.x;
    u_xlat82 = (x_2831 * x_2833);
    let x_2835 : i32 = u_xlati81;
    let x_2837 : vec4<f32> = x_2789.x_AdditionalLightsSpotDir[x_2835];
    let x_2839 : vec3<f32> = u_xlat34;
    u_xlat10.x = dot(vec3<f32>(x_2837.x, x_2837.y, x_2837.z), x_2839);
    let x_2843 : f32 = u_xlat10.x;
    let x_2844 : i32 = u_xlati81;
    let x_2846 : f32 = x_2789.x_AdditionalLightsAttenuation[x_2844].z;
    let x_2848 : i32 = u_xlati81;
    let x_2850 : f32 = x_2789.x_AdditionalLightsAttenuation[x_2848].w;
    u_xlat10.x = ((x_2843 * x_2846) + x_2850);
    let x_2854 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_2854, 0.0f, 1.0f);
    let x_2858 : f32 = u_xlat10.x;
    let x_2860 : f32 = u_xlat10.x;
    u_xlat10.x = (x_2858 * x_2860);
    let x_2863 : f32 = u_xlat82;
    let x_2865 : f32 = u_xlat10.x;
    u_xlat82 = (x_2863 * x_2865);
    let x_2869 : i32 = u_xlati81;
    let x_2871 : f32 = x_666.x_AdditionalShadowParams[x_2869].w;
    u_xlati10 = i32(x_2871);
    let x_2876 : i32 = u_xlati10;
    u_xlatb35.x = (x_2876 >= 0i);
    let x_2880 : bool = u_xlatb35.x;
    if (x_2880) {
      let x_2884 : i32 = u_xlati81;
      let x_2886 : f32 = x_666.x_AdditionalShadowParams[x_2884].z;
      u_xlatb35.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2886, x_2886, x_2886, x_2886))));
      let x_2892 : bool = u_xlatb35.x;
      if (x_2892) {
        let x_2895 : vec3<f32> = u_xlat34;
        let x_2898 : vec3<f32> = u_xlat34;
        let x_2901 : vec4<bool> = (abs(vec4<f32>(x_2895.z, x_2895.z, x_2895.y, x_2895.y)) >= abs(vec4<f32>(x_2898.x, x_2898.y, x_2898.x, x_2898.x)));
        u_xlatb35 = vec3<bool>(x_2901.x, x_2901.y, x_2901.z);
        let x_2904 : bool = u_xlatb35.y;
        let x_2906 : bool = u_xlatb35.x;
        u_xlatb35.x = (x_2904 & x_2906);
        let x_2910 : vec3<f32> = u_xlat34;
        let x_2913 : vec4<bool> = (-(vec4<f32>(x_2910.z, x_2910.y, x_2910.x, x_2910.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_2913.x, x_2913.y, x_2913.z);
        let x_2916 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2916);
        let x_2921 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2921);
        let x_2925 : bool = u_xlatb11.z;
        u_xlat60.x = select(0.0f, 1.0f, x_2925);
        let x_2929 : bool = u_xlatb35.z;
        if (x_2929) {
          let x_2934 : f32 = u_xlat11.y;
          x_2930 = x_2934;
        } else {
          let x_2937 : f32 = u_xlat60.x;
          x_2930 = x_2937;
        }
        let x_2938 : f32 = x_2930;
        u_xlat60.x = x_2938;
        let x_2942 : bool = u_xlatb35.x;
        if (x_2942) {
          let x_2947 : f32 = u_xlat11.x;
          x_2943 = x_2947;
        } else {
          let x_2950 : f32 = u_xlat60.x;
          x_2943 = x_2950;
        }
        let x_2951 : f32 = x_2943;
        u_xlat35.x = x_2951;
        let x_2953 : i32 = u_xlati81;
        let x_2955 : f32 = x_666.x_AdditionalShadowParams[x_2953].w;
        u_xlat60.x = trunc(x_2955);
        let x_2959 : f32 = u_xlat35.x;
        let x_2961 : f32 = u_xlat60.x;
        u_xlat35.x = (x_2959 + x_2961);
        let x_2965 : f32 = u_xlat35.x;
        u_xlati10 = i32(x_2965);
      }
      let x_2967 : i32 = u_xlati10;
      u_xlati10 = (x_2967 << bitcast<u32>(2i));
      let x_2969 : vec3<f32> = vs_INTERP7;
      let x_2972 : i32 = u_xlati10;
      let x_2975 : i32 = u_xlati10;
      let x_2979 : vec4<f32> = x_666.x_AdditionalLightsWorldToShadow[((x_2972 + 1i) / 4i)][((x_2975 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2969.y, x_2969.y, x_2969.y, x_2969.y) * x_2979);
      let x_2981 : i32 = u_xlati10;
      let x_2983 : i32 = u_xlati10;
      let x_2986 : vec4<f32> = x_666.x_AdditionalLightsWorldToShadow[(x_2981 / 4i)][(x_2983 % 4i)];
      let x_2987 : vec3<f32> = vs_INTERP7;
      let x_2990 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2986 * vec4<f32>(x_2987.x, x_2987.x, x_2987.x, x_2987.x)) + x_2990);
      let x_2992 : i32 = u_xlati10;
      let x_2995 : i32 = u_xlati10;
      let x_2999 : vec4<f32> = x_666.x_AdditionalLightsWorldToShadow[((x_2992 + 2i) / 4i)][((x_2995 + 2i) % 4i)];
      let x_3000 : vec3<f32> = vs_INTERP7;
      let x_3003 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2999 * vec4<f32>(x_3000.z, x_3000.z, x_3000.z, x_3000.z)) + x_3003);
      let x_3005 : vec4<f32> = u_xlat11;
      let x_3006 : i32 = u_xlati10;
      let x_3009 : i32 = u_xlati10;
      let x_3013 : vec4<f32> = x_666.x_AdditionalLightsWorldToShadow[((x_3006 + 3i) / 4i)][((x_3009 + 3i) % 4i)];
      u_xlat10 = (x_3005 + x_3013);
      let x_3015 : vec4<f32> = u_xlat10;
      let x_3017 : vec4<f32> = u_xlat10;
      let x_3019 : vec3<f32> = (vec3<f32>(x_3015.x, x_3015.y, x_3015.z) / vec3<f32>(x_3017.w, x_3017.w, x_3017.w));
      let x_3020 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_3019.x, x_3019.y, x_3019.z, x_3020.w);
      let x_3023 : i32 = u_xlati81;
      let x_3025 : f32 = x_666.x_AdditionalShadowParams[x_3023].y;
      u_xlatb85 = (0.0f < x_3025);
      let x_3027 : bool = u_xlatb85;
      if (x_3027) {
        let x_3030 : i32 = u_xlati81;
        let x_3032 : f32 = x_666.x_AdditionalShadowParams[x_3030].y;
        u_xlatb85 = (1.0f == x_3032);
        let x_3034 : bool = u_xlatb85;
        if (x_3034) {
          let x_3037 : vec4<f32> = u_xlat10;
          let x_3041 : vec4<f32> = x_666.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_3037.x, x_3037.y, x_3037.x, x_3037.y) + x_3041);
          let x_3044 : vec4<f32> = u_xlat11;
          let x_3045 : vec2<f32> = vec2<f32>(x_3044.x, x_3044.y);
          let x_3047 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_3045.x, x_3045.y, x_3047);
          let x_3055 : vec3<f32> = txVec30;
          let x_3057 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3055.xy, x_3055.z);
          u_xlat12.x = x_3057;
          let x_3060 : vec4<f32> = u_xlat11;
          let x_3061 : vec2<f32> = vec2<f32>(x_3060.z, x_3060.w);
          let x_3063 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_3061.x, x_3061.y, x_3063);
          let x_3070 : vec3<f32> = txVec31;
          let x_3072 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3070.xy, x_3070.z);
          u_xlat12.y = x_3072;
          let x_3074 : vec4<f32> = u_xlat10;
          let x_3078 : vec4<f32> = x_666.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_3074.x, x_3074.y, x_3074.x, x_3074.y) + x_3078);
          let x_3081 : vec4<f32> = u_xlat11;
          let x_3082 : vec2<f32> = vec2<f32>(x_3081.x, x_3081.y);
          let x_3084 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_3082.x, x_3082.y, x_3084);
          let x_3091 : vec3<f32> = txVec32;
          let x_3093 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3091.xy, x_3091.z);
          u_xlat12.z = x_3093;
          let x_3096 : vec4<f32> = u_xlat11;
          let x_3097 : vec2<f32> = vec2<f32>(x_3096.z, x_3096.w);
          let x_3099 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_3097.x, x_3097.y, x_3099);
          let x_3106 : vec3<f32> = txVec33;
          let x_3108 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3106.xy, x_3106.z);
          u_xlat12.w = x_3108;
          let x_3111 : vec4<f32> = u_xlat12;
          u_xlat85 = dot(x_3111, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_3114 : i32 = u_xlati81;
          let x_3116 : f32 = x_666.x_AdditionalShadowParams[x_3114].y;
          u_xlatb11.x = (2.0f == x_3116);
          let x_3120 : bool = u_xlatb11.x;
          if (x_3120) {
            let x_3123 : vec4<f32> = u_xlat10;
            let x_3127 : vec4<f32> = x_666.x_AdditionalShadowmapSize;
            let x_3130 : vec2<f32> = ((vec2<f32>(x_3123.x, x_3123.y) * vec2<f32>(x_3127.z, x_3127.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3131 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3130.x, x_3130.y, x_3131.z, x_3131.w);
            let x_3133 : vec4<f32> = u_xlat11;
            let x_3135 : vec2<f32> = floor(vec2<f32>(x_3133.x, x_3133.y));
            let x_3136 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3135.x, x_3135.y, x_3136.z, x_3136.w);
            let x_3139 : vec4<f32> = u_xlat10;
            let x_3142 : vec4<f32> = x_666.x_AdditionalShadowmapSize;
            let x_3145 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3139.x, x_3139.y) * vec2<f32>(x_3142.z, x_3142.w)) + -(vec2<f32>(x_3145.x, x_3145.y)));
            let x_3149 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3149.x, x_3149.x, x_3149.y, x_3149.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3152 : vec4<f32> = u_xlat12;
            let x_3154 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3152.x, x_3152.x, x_3152.z, x_3152.z) * vec4<f32>(x_3154.x, x_3154.x, x_3154.z, x_3154.z));
            let x_3157 : vec4<f32> = u_xlat13;
            let x_3159 : vec2<f32> = (vec2<f32>(x_3157.y, x_3157.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_3160 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3159.x, x_3160.y, x_3159.y, x_3160.w);
            let x_3162 : vec4<f32> = u_xlat13;
            let x_3165 : vec2<f32> = u_xlat61;
            let x_3167 : vec2<f32> = ((vec2<f32>(x_3162.x, x_3162.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3165));
            let x_3168 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3167.x, x_3167.y, x_3168.z, x_3168.w);
            let x_3170 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_3170) + vec2<f32>(1.0f, 1.0f));
            let x_3173 : vec2<f32> = u_xlat61;
            let x_3174 : vec2<f32> = min(x_3173, vec2<f32>(0.0f, 0.0f));
            let x_3175 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3174.x, x_3174.y, x_3175.z, x_3175.w);
            let x_3177 : vec4<f32> = u_xlat14;
            let x_3180 : vec4<f32> = u_xlat14;
            let x_3183 : vec2<f32> = u_xlat63;
            let x_3184 : vec2<f32> = ((-(vec2<f32>(x_3177.x, x_3177.y)) * vec2<f32>(x_3180.x, x_3180.y)) + x_3183);
            let x_3185 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3184.x, x_3184.y, x_3185.z, x_3185.w);
            let x_3187 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_3187, vec2<f32>(0.0f, 0.0f));
            let x_3189 : vec2<f32> = u_xlat61;
            let x_3191 : vec2<f32> = u_xlat61;
            let x_3193 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_3189) * x_3191) + vec2<f32>(x_3193.y, x_3193.w));
            let x_3196 : vec4<f32> = u_xlat14;
            let x_3198 : vec2<f32> = (vec2<f32>(x_3196.x, x_3196.y) + vec2<f32>(1.0f, 1.0f));
            let x_3199 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3198.x, x_3198.y, x_3199.z, x_3199.w);
            let x_3201 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_3201 + vec2<f32>(1.0f, 1.0f));
            let x_3203 : vec4<f32> = u_xlat13;
            let x_3205 : vec2<f32> = (vec2<f32>(x_3203.x, x_3203.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3206 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3205.x, x_3205.y, x_3206.z, x_3206.w);
            let x_3208 : vec2<f32> = u_xlat63;
            let x_3209 : vec2<f32> = (x_3208 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3210 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3209.x, x_3209.y, x_3210.z, x_3210.w);
            let x_3212 : vec4<f32> = u_xlat14;
            let x_3214 : vec2<f32> = (vec2<f32>(x_3212.x, x_3212.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3215 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3214.x, x_3214.y, x_3215.z, x_3215.w);
            let x_3217 : vec2<f32> = u_xlat61;
            let x_3218 : vec2<f32> = (x_3217 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3219 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3218.x, x_3218.y, x_3219.z, x_3219.w);
            let x_3221 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_3221.y, x_3221.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3225 : f32 = u_xlat14.x;
            u_xlat15.z = x_3225;
            let x_3228 : f32 = u_xlat61.x;
            u_xlat15.w = x_3228;
            let x_3231 : f32 = u_xlat16.x;
            u_xlat13.z = x_3231;
            let x_3234 : f32 = u_xlat12.x;
            u_xlat13.w = x_3234;
            let x_3236 : vec4<f32> = u_xlat13;
            let x_3238 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_3236.z, x_3236.w, x_3236.x, x_3236.z) + vec4<f32>(x_3238.z, x_3238.w, x_3238.x, x_3238.z));
            let x_3242 : f32 = u_xlat15.y;
            u_xlat14.z = x_3242;
            let x_3245 : f32 = u_xlat61.y;
            u_xlat14.w = x_3245;
            let x_3248 : f32 = u_xlat13.y;
            u_xlat16.z = x_3248;
            let x_3251 : f32 = u_xlat12.z;
            u_xlat16.w = x_3251;
            let x_3253 : vec4<f32> = u_xlat14;
            let x_3255 : vec4<f32> = u_xlat16;
            let x_3257 : vec3<f32> = (vec3<f32>(x_3253.z, x_3253.y, x_3253.w) + vec3<f32>(x_3255.z, x_3255.y, x_3255.w));
            let x_3258 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3257.x, x_3257.y, x_3257.z, x_3258.w);
            let x_3260 : vec4<f32> = u_xlat13;
            let x_3262 : vec4<f32> = u_xlat17;
            let x_3264 : vec3<f32> = (vec3<f32>(x_3260.x, x_3260.z, x_3260.w) / vec3<f32>(x_3262.z, x_3262.w, x_3262.y));
            let x_3265 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3264.x, x_3264.y, x_3264.z, x_3265.w);
            let x_3267 : vec4<f32> = u_xlat13;
            let x_3269 : vec3<f32> = (vec3<f32>(x_3267.x, x_3267.y, x_3267.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3270 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3269.x, x_3269.y, x_3269.z, x_3270.w);
            let x_3272 : vec4<f32> = u_xlat16;
            let x_3274 : vec4<f32> = u_xlat12;
            let x_3276 : vec3<f32> = (vec3<f32>(x_3272.z, x_3272.y, x_3272.w) / vec3<f32>(x_3274.x, x_3274.y, x_3274.z));
            let x_3277 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3276.x, x_3276.y, x_3276.z, x_3277.w);
            let x_3279 : vec4<f32> = u_xlat14;
            let x_3281 : vec3<f32> = (vec3<f32>(x_3279.x, x_3279.y, x_3279.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3282 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3281.x, x_3281.y, x_3281.z, x_3282.w);
            let x_3284 : vec4<f32> = u_xlat13;
            let x_3287 : vec4<f32> = x_666.x_AdditionalShadowmapSize;
            let x_3289 : vec3<f32> = (vec3<f32>(x_3284.y, x_3284.x, x_3284.z) * vec3<f32>(x_3287.x, x_3287.x, x_3287.x));
            let x_3290 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3289.x, x_3289.y, x_3289.z, x_3290.w);
            let x_3292 : vec4<f32> = u_xlat14;
            let x_3295 : vec4<f32> = x_666.x_AdditionalShadowmapSize;
            let x_3297 : vec3<f32> = (vec3<f32>(x_3292.x, x_3292.y, x_3292.z) * vec3<f32>(x_3295.y, x_3295.y, x_3295.y));
            let x_3298 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3297.x, x_3297.y, x_3297.z, x_3298.w);
            let x_3301 : f32 = u_xlat14.x;
            u_xlat13.w = x_3301;
            let x_3303 : vec4<f32> = u_xlat11;
            let x_3306 : vec4<f32> = x_666.x_AdditionalShadowmapSize;
            let x_3309 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_3303.x, x_3303.y, x_3303.x, x_3303.y) * vec4<f32>(x_3306.x, x_3306.y, x_3306.x, x_3306.y)) + vec4<f32>(x_3309.y, x_3309.w, x_3309.x, x_3309.w));
            let x_3312 : vec4<f32> = u_xlat11;
            let x_3315 : vec4<f32> = x_666.x_AdditionalShadowmapSize;
            let x_3318 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_3312.x, x_3312.y) * vec2<f32>(x_3315.x, x_3315.y)) + vec2<f32>(x_3318.z, x_3318.w));
            let x_3322 : f32 = u_xlat13.y;
            u_xlat14.w = x_3322;
            let x_3324 : vec4<f32> = u_xlat14;
            let x_3325 : vec2<f32> = vec2<f32>(x_3324.y, x_3324.z);
            let x_3326 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3326.x, x_3325.x, x_3326.z, x_3325.y);
            let x_3328 : vec4<f32> = u_xlat11;
            let x_3331 : vec4<f32> = x_666.x_AdditionalShadowmapSize;
            let x_3334 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_3328.x, x_3328.y, x_3328.x, x_3328.y) * vec4<f32>(x_3331.x, x_3331.y, x_3331.x, x_3331.y)) + vec4<f32>(x_3334.x, x_3334.y, x_3334.z, x_3334.y));
            let x_3337 : vec4<f32> = u_xlat11;
            let x_3340 : vec4<f32> = x_666.x_AdditionalShadowmapSize;
            let x_3343 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3337.x, x_3337.y, x_3337.x, x_3337.y) * vec4<f32>(x_3340.x, x_3340.y, x_3340.x, x_3340.y)) + vec4<f32>(x_3343.w, x_3343.y, x_3343.w, x_3343.z));
            let x_3346 : vec4<f32> = u_xlat11;
            let x_3349 : vec4<f32> = x_666.x_AdditionalShadowmapSize;
            let x_3352 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_3346.x, x_3346.y, x_3346.x, x_3346.y) * vec4<f32>(x_3349.x, x_3349.y, x_3349.x, x_3349.y)) + vec4<f32>(x_3352.x, x_3352.w, x_3352.z, x_3352.w));
            let x_3355 : vec4<f32> = u_xlat12;
            let x_3357 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_3355.x, x_3355.x, x_3355.x, x_3355.y) * vec4<f32>(x_3357.z, x_3357.w, x_3357.y, x_3357.z));
            let x_3360 : vec4<f32> = u_xlat12;
            let x_3362 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_3360.y, x_3360.y, x_3360.z, x_3360.z) * x_3362);
            let x_3365 : f32 = u_xlat12.z;
            let x_3367 : f32 = u_xlat17.y;
            u_xlat11.x = (x_3365 * x_3367);
            let x_3371 : vec4<f32> = u_xlat15;
            let x_3372 : vec2<f32> = vec2<f32>(x_3371.x, x_3371.y);
            let x_3374 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_3372.x, x_3372.y, x_3374);
            let x_3382 : vec3<f32> = txVec34;
            let x_3384 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3382.xy, x_3382.z);
            u_xlat36 = x_3384;
            let x_3386 : vec4<f32> = u_xlat15;
            let x_3387 : vec2<f32> = vec2<f32>(x_3386.z, x_3386.w);
            let x_3389 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_3387.x, x_3387.y, x_3389);
            let x_3396 : vec3<f32> = txVec35;
            let x_3398 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3396.xy, x_3396.z);
            u_xlat12.x = x_3398;
            let x_3401 : f32 = u_xlat12.x;
            let x_3403 : f32 = u_xlat18.y;
            u_xlat12.x = (x_3401 * x_3403);
            let x_3407 : f32 = u_xlat18.x;
            let x_3408 : f32 = u_xlat36;
            let x_3411 : f32 = u_xlat12.x;
            u_xlat36 = ((x_3407 * x_3408) + x_3411);
            let x_3414 : vec2<f32> = u_xlat61;
            let x_3416 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_3414.x, x_3414.y, x_3416);
            let x_3423 : vec3<f32> = txVec36;
            let x_3425 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3423.xy, x_3423.z);
            u_xlat61.x = x_3425;
            let x_3428 : f32 = u_xlat18.z;
            let x_3430 : f32 = u_xlat61.x;
            let x_3432 : f32 = u_xlat36;
            u_xlat36 = ((x_3428 * x_3430) + x_3432);
            let x_3435 : vec4<f32> = u_xlat14;
            let x_3436 : vec2<f32> = vec2<f32>(x_3435.x, x_3435.y);
            let x_3438 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_3436.x, x_3436.y, x_3438);
            let x_3445 : vec3<f32> = txVec37;
            let x_3447 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3445.xy, x_3445.z);
            u_xlat61.x = x_3447;
            let x_3450 : f32 = u_xlat18.w;
            let x_3452 : f32 = u_xlat61.x;
            let x_3454 : f32 = u_xlat36;
            u_xlat36 = ((x_3450 * x_3452) + x_3454);
            let x_3457 : vec4<f32> = u_xlat16;
            let x_3458 : vec2<f32> = vec2<f32>(x_3457.x, x_3457.y);
            let x_3460 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_3458.x, x_3458.y, x_3460);
            let x_3467 : vec3<f32> = txVec38;
            let x_3469 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3467.xy, x_3467.z);
            u_xlat61.x = x_3469;
            let x_3472 : f32 = u_xlat19.x;
            let x_3474 : f32 = u_xlat61.x;
            let x_3476 : f32 = u_xlat36;
            u_xlat36 = ((x_3472 * x_3474) + x_3476);
            let x_3479 : vec4<f32> = u_xlat16;
            let x_3480 : vec2<f32> = vec2<f32>(x_3479.z, x_3479.w);
            let x_3482 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_3480.x, x_3480.y, x_3482);
            let x_3489 : vec3<f32> = txVec39;
            let x_3491 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3489.xy, x_3489.z);
            u_xlat61.x = x_3491;
            let x_3494 : f32 = u_xlat19.y;
            let x_3496 : f32 = u_xlat61.x;
            let x_3498 : f32 = u_xlat36;
            u_xlat36 = ((x_3494 * x_3496) + x_3498);
            let x_3501 : vec4<f32> = u_xlat14;
            let x_3502 : vec2<f32> = vec2<f32>(x_3501.z, x_3501.w);
            let x_3504 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_3502.x, x_3502.y, x_3504);
            let x_3511 : vec3<f32> = txVec40;
            let x_3513 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3511.xy, x_3511.z);
            u_xlat61.x = x_3513;
            let x_3516 : f32 = u_xlat19.z;
            let x_3518 : f32 = u_xlat61.x;
            let x_3520 : f32 = u_xlat36;
            u_xlat36 = ((x_3516 * x_3518) + x_3520);
            let x_3523 : vec4<f32> = u_xlat13;
            let x_3524 : vec2<f32> = vec2<f32>(x_3523.x, x_3523.y);
            let x_3526 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_3524.x, x_3524.y, x_3526);
            let x_3533 : vec3<f32> = txVec41;
            let x_3535 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3533.xy, x_3533.z);
            u_xlat61.x = x_3535;
            let x_3538 : f32 = u_xlat19.w;
            let x_3540 : f32 = u_xlat61.x;
            let x_3542 : f32 = u_xlat36;
            u_xlat36 = ((x_3538 * x_3540) + x_3542);
            let x_3545 : vec4<f32> = u_xlat13;
            let x_3546 : vec2<f32> = vec2<f32>(x_3545.z, x_3545.w);
            let x_3548 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_3546.x, x_3546.y, x_3548);
            let x_3555 : vec3<f32> = txVec42;
            let x_3557 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3555.xy, x_3555.z);
            u_xlat61.x = x_3557;
            let x_3560 : f32 = u_xlat11.x;
            let x_3562 : f32 = u_xlat61.x;
            let x_3564 : f32 = u_xlat36;
            u_xlat85 = ((x_3560 * x_3562) + x_3564);
          } else {
            let x_3567 : vec4<f32> = u_xlat10;
            let x_3570 : vec4<f32> = x_666.x_AdditionalShadowmapSize;
            let x_3573 : vec2<f32> = ((vec2<f32>(x_3567.x, x_3567.y) * vec2<f32>(x_3570.z, x_3570.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3574 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3573.x, x_3573.y, x_3574.z, x_3574.w);
            let x_3576 : vec4<f32> = u_xlat11;
            let x_3578 : vec2<f32> = floor(vec2<f32>(x_3576.x, x_3576.y));
            let x_3579 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3578.x, x_3578.y, x_3579.z, x_3579.w);
            let x_3581 : vec4<f32> = u_xlat10;
            let x_3584 : vec4<f32> = x_666.x_AdditionalShadowmapSize;
            let x_3587 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3581.x, x_3581.y) * vec2<f32>(x_3584.z, x_3584.w)) + -(vec2<f32>(x_3587.x, x_3587.y)));
            let x_3591 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3591.x, x_3591.x, x_3591.y, x_3591.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3594 : vec4<f32> = u_xlat12;
            let x_3596 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3594.x, x_3594.x, x_3594.z, x_3594.z) * vec4<f32>(x_3596.x, x_3596.x, x_3596.z, x_3596.z));
            let x_3599 : vec4<f32> = u_xlat13;
            let x_3601 : vec2<f32> = (vec2<f32>(x_3599.y, x_3599.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3602 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3602.x, x_3601.x, x_3602.z, x_3601.y);
            let x_3604 : vec4<f32> = u_xlat13;
            let x_3607 : vec2<f32> = u_xlat61;
            let x_3609 : vec2<f32> = ((vec2<f32>(x_3604.x, x_3604.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3607));
            let x_3610 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3609.x, x_3610.y, x_3609.y, x_3610.w);
            let x_3612 : vec2<f32> = u_xlat61;
            let x_3614 : vec2<f32> = (-(x_3612) + vec2<f32>(1.0f, 1.0f));
            let x_3615 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3614.x, x_3614.y, x_3615.z, x_3615.w);
            let x_3617 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_3617, vec2<f32>(0.0f, 0.0f));
            let x_3619 : vec2<f32> = u_xlat63;
            let x_3621 : vec2<f32> = u_xlat63;
            let x_3623 : vec4<f32> = u_xlat13;
            let x_3625 : vec2<f32> = ((-(x_3619) * x_3621) + vec2<f32>(x_3623.x, x_3623.y));
            let x_3626 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3625.x, x_3625.y, x_3626.z, x_3626.w);
            let x_3628 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_3628, vec2<f32>(0.0f, 0.0f));
            let x_3631 : vec2<f32> = u_xlat63;
            let x_3633 : vec2<f32> = u_xlat63;
            let x_3635 : vec4<f32> = u_xlat12;
            let x_3637 : vec2<f32> = ((-(x_3631) * x_3633) + vec2<f32>(x_3635.y, x_3635.w));
            let x_3638 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_3637.x, x_3638.y, x_3637.y);
            let x_3640 : vec4<f32> = u_xlat13;
            let x_3642 : vec2<f32> = (vec2<f32>(x_3640.x, x_3640.y) + vec2<f32>(2.0f, 2.0f));
            let x_3643 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3642.x, x_3642.y, x_3643.z, x_3643.w);
            let x_3645 : vec3<f32> = u_xlat37;
            let x_3647 : vec2<f32> = (vec2<f32>(x_3645.x, x_3645.z) + vec2<f32>(2.0f, 2.0f));
            let x_3648 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3648.x, x_3647.x, x_3648.z, x_3647.y);
            let x_3651 : f32 = u_xlat12.y;
            u_xlat15.z = (x_3651 * 0.08163200318813323975f);
            let x_3654 : vec4<f32> = u_xlat12;
            let x_3657 : vec3<f32> = (vec3<f32>(x_3654.z, x_3654.x, x_3654.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3658 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3657.x, x_3657.y, x_3657.z, x_3658.w);
            let x_3660 : vec4<f32> = u_xlat13;
            let x_3662 : vec2<f32> = (vec2<f32>(x_3660.x, x_3660.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3663 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3662.x, x_3662.y, x_3663.z, x_3663.w);
            let x_3666 : f32 = u_xlat16.y;
            u_xlat15.x = x_3666;
            let x_3668 : vec2<f32> = u_xlat61;
            let x_3671 : vec2<f32> = ((vec2<f32>(x_3668.x, x_3668.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3672 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3672.x, x_3671.x, x_3672.z, x_3671.y);
            let x_3674 : vec2<f32> = u_xlat61;
            let x_3677 : vec2<f32> = ((vec2<f32>(x_3674.x, x_3674.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3678 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3677.x, x_3678.y, x_3677.y, x_3678.w);
            let x_3681 : f32 = u_xlat12.x;
            u_xlat13.y = x_3681;
            let x_3684 : f32 = u_xlat14.y;
            u_xlat13.w = x_3684;
            let x_3686 : vec4<f32> = u_xlat13;
            let x_3687 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3686 + x_3687);
            let x_3689 : vec2<f32> = u_xlat61;
            let x_3692 : vec2<f32> = ((vec2<f32>(x_3689.y, x_3689.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3693 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3693.x, x_3692.x, x_3693.z, x_3692.y);
            let x_3695 : vec2<f32> = u_xlat61;
            let x_3698 : vec2<f32> = ((vec2<f32>(x_3695.y, x_3695.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3699 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3698.x, x_3699.y, x_3698.y, x_3699.w);
            let x_3702 : f32 = u_xlat12.y;
            u_xlat14.y = x_3702;
            let x_3704 : vec4<f32> = u_xlat14;
            let x_3705 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_3704 + x_3705);
            let x_3707 : vec4<f32> = u_xlat13;
            let x_3708 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_3707 / x_3708);
            let x_3710 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3710 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3712 : vec4<f32> = u_xlat14;
            let x_3713 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_3712 / x_3713);
            let x_3715 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3715 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3717 : vec4<f32> = u_xlat13;
            let x_3720 : vec4<f32> = x_666.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3717.w, x_3717.x, x_3717.y, x_3717.z) * vec4<f32>(x_3720.x, x_3720.x, x_3720.x, x_3720.x));
            let x_3723 : vec4<f32> = u_xlat14;
            let x_3726 : vec4<f32> = x_666.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3723.x, x_3723.w, x_3723.y, x_3723.z) * vec4<f32>(x_3726.y, x_3726.y, x_3726.y, x_3726.y));
            let x_3729 : vec4<f32> = u_xlat13;
            let x_3730 : vec3<f32> = vec3<f32>(x_3729.y, x_3729.z, x_3729.w);
            let x_3731 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3730.x, x_3731.y, x_3730.y, x_3730.z);
            let x_3734 : f32 = u_xlat14.x;
            u_xlat16.y = x_3734;
            let x_3736 : vec4<f32> = u_xlat11;
            let x_3739 : vec4<f32> = x_666.x_AdditionalShadowmapSize;
            let x_3742 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3736.x, x_3736.y, x_3736.x, x_3736.y) * vec4<f32>(x_3739.x, x_3739.y, x_3739.x, x_3739.y)) + vec4<f32>(x_3742.x, x_3742.y, x_3742.z, x_3742.y));
            let x_3745 : vec4<f32> = u_xlat11;
            let x_3748 : vec4<f32> = x_666.x_AdditionalShadowmapSize;
            let x_3751 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_3745.x, x_3745.y) * vec2<f32>(x_3748.x, x_3748.y)) + vec2<f32>(x_3751.w, x_3751.y));
            let x_3755 : f32 = u_xlat16.y;
            u_xlat13.y = x_3755;
            let x_3758 : f32 = u_xlat14.z;
            u_xlat16.y = x_3758;
            let x_3760 : vec4<f32> = u_xlat11;
            let x_3763 : vec4<f32> = x_666.x_AdditionalShadowmapSize;
            let x_3766 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3760.x, x_3760.y, x_3760.x, x_3760.y) * vec4<f32>(x_3763.x, x_3763.y, x_3763.x, x_3763.y)) + vec4<f32>(x_3766.x, x_3766.y, x_3766.z, x_3766.y));
            let x_3769 : vec4<f32> = u_xlat11;
            let x_3772 : vec4<f32> = x_666.x_AdditionalShadowmapSize;
            let x_3775 : vec4<f32> = u_xlat16;
            let x_3777 : vec2<f32> = ((vec2<f32>(x_3769.x, x_3769.y) * vec2<f32>(x_3772.x, x_3772.y)) + vec2<f32>(x_3775.w, x_3775.y));
            let x_3778 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3777.x, x_3777.y, x_3778.z, x_3778.w);
            let x_3781 : f32 = u_xlat16.y;
            u_xlat13.z = x_3781;
            let x_3783 : vec4<f32> = u_xlat11;
            let x_3786 : vec4<f32> = x_666.x_AdditionalShadowmapSize;
            let x_3789 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3783.x, x_3783.y, x_3783.x, x_3783.y) * vec4<f32>(x_3786.x, x_3786.y, x_3786.x, x_3786.y)) + vec4<f32>(x_3789.x, x_3789.y, x_3789.x, x_3789.z));
            let x_3793 : f32 = u_xlat14.w;
            u_xlat16.y = x_3793;
            let x_3796 : vec4<f32> = u_xlat11;
            let x_3799 : vec4<f32> = x_666.x_AdditionalShadowmapSize;
            let x_3802 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3796.x, x_3796.y, x_3796.x, x_3796.y) * vec4<f32>(x_3799.x, x_3799.y, x_3799.x, x_3799.y)) + vec4<f32>(x_3802.x, x_3802.y, x_3802.z, x_3802.y));
            let x_3806 : vec4<f32> = u_xlat11;
            let x_3809 : vec4<f32> = x_666.x_AdditionalShadowmapSize;
            let x_3812 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3806.x, x_3806.y) * vec2<f32>(x_3809.x, x_3809.y)) + vec2<f32>(x_3812.w, x_3812.y));
            let x_3816 : f32 = u_xlat16.y;
            u_xlat13.w = x_3816;
            let x_3819 : vec4<f32> = u_xlat11;
            let x_3822 : vec4<f32> = x_666.x_AdditionalShadowmapSize;
            let x_3825 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3819.x, x_3819.y) * vec2<f32>(x_3822.x, x_3822.y)) + vec2<f32>(x_3825.x, x_3825.w));
            let x_3828 : vec4<f32> = u_xlat16;
            let x_3829 : vec3<f32> = vec3<f32>(x_3828.x, x_3828.z, x_3828.w);
            let x_3830 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3829.x, x_3830.y, x_3829.y, x_3829.z);
            let x_3832 : vec4<f32> = u_xlat11;
            let x_3835 : vec4<f32> = x_666.x_AdditionalShadowmapSize;
            let x_3838 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3832.x, x_3832.y, x_3832.x, x_3832.y) * vec4<f32>(x_3835.x, x_3835.y, x_3835.x, x_3835.y)) + vec4<f32>(x_3838.x, x_3838.y, x_3838.z, x_3838.y));
            let x_3842 : vec4<f32> = u_xlat11;
            let x_3845 : vec4<f32> = x_666.x_AdditionalShadowmapSize;
            let x_3848 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3842.x, x_3842.y) * vec2<f32>(x_3845.x, x_3845.y)) + vec2<f32>(x_3848.w, x_3848.y));
            let x_3852 : f32 = u_xlat13.x;
            u_xlat14.x = x_3852;
            let x_3854 : vec4<f32> = u_xlat11;
            let x_3857 : vec4<f32> = x_666.x_AdditionalShadowmapSize;
            let x_3860 : vec4<f32> = u_xlat14;
            let x_3862 : vec2<f32> = ((vec2<f32>(x_3854.x, x_3854.y) * vec2<f32>(x_3857.x, x_3857.y)) + vec2<f32>(x_3860.x, x_3860.y));
            let x_3863 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3862.x, x_3862.y, x_3863.z, x_3863.w);
            let x_3866 : vec4<f32> = u_xlat12;
            let x_3868 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3866.x, x_3866.x, x_3866.x, x_3866.x) * x_3868);
            let x_3871 : vec4<f32> = u_xlat12;
            let x_3873 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3871.y, x_3871.y, x_3871.y, x_3871.y) * x_3873);
            let x_3876 : vec4<f32> = u_xlat12;
            let x_3878 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3876.z, x_3876.z, x_3876.z, x_3876.z) * x_3878);
            let x_3880 : vec4<f32> = u_xlat12;
            let x_3882 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3880.w, x_3880.w, x_3880.w, x_3880.w) * x_3882);
            let x_3885 : vec4<f32> = u_xlat17;
            let x_3886 : vec2<f32> = vec2<f32>(x_3885.x, x_3885.y);
            let x_3888 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3886.x, x_3886.y, x_3888);
            let x_3895 : vec3<f32> = txVec43;
            let x_3897 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3895.xy, x_3895.z);
            u_xlat13.x = x_3897;
            let x_3900 : vec4<f32> = u_xlat17;
            let x_3901 : vec2<f32> = vec2<f32>(x_3900.z, x_3900.w);
            let x_3903 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3901.x, x_3901.y, x_3903);
            let x_3911 : vec3<f32> = txVec44;
            let x_3913 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3911.xy, x_3911.z);
            u_xlat88 = x_3913;
            let x_3914 : f32 = u_xlat88;
            let x_3916 : f32 = u_xlat22.y;
            u_xlat88 = (x_3914 * x_3916);
            let x_3919 : f32 = u_xlat22.x;
            let x_3921 : f32 = u_xlat13.x;
            let x_3923 : f32 = u_xlat88;
            u_xlat13.x = ((x_3919 * x_3921) + x_3923);
            let x_3927 : vec2<f32> = u_xlat61;
            let x_3929 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3927.x, x_3927.y, x_3929);
            let x_3936 : vec3<f32> = txVec45;
            let x_3938 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3936.xy, x_3936.z);
            u_xlat61.x = x_3938;
            let x_3941 : f32 = u_xlat22.z;
            let x_3943 : f32 = u_xlat61.x;
            let x_3946 : f32 = u_xlat13.x;
            u_xlat61.x = ((x_3941 * x_3943) + x_3946);
            let x_3950 : vec4<f32> = u_xlat20;
            let x_3951 : vec2<f32> = vec2<f32>(x_3950.x, x_3950.y);
            let x_3953 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3951.x, x_3951.y, x_3953);
            let x_3961 : vec3<f32> = txVec46;
            let x_3963 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3961.xy, x_3961.z);
            u_xlat86 = x_3963;
            let x_3965 : f32 = u_xlat22.w;
            let x_3966 : f32 = u_xlat86;
            let x_3969 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3965 * x_3966) + x_3969);
            let x_3973 : vec4<f32> = u_xlat18;
            let x_3974 : vec2<f32> = vec2<f32>(x_3973.x, x_3973.y);
            let x_3976 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3974.x, x_3974.y, x_3976);
            let x_3983 : vec3<f32> = txVec47;
            let x_3985 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3983.xy, x_3983.z);
            u_xlat86 = x_3985;
            let x_3987 : f32 = u_xlat23.x;
            let x_3988 : f32 = u_xlat86;
            let x_3991 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3987 * x_3988) + x_3991);
            let x_3995 : vec4<f32> = u_xlat18;
            let x_3996 : vec2<f32> = vec2<f32>(x_3995.z, x_3995.w);
            let x_3998 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3996.x, x_3996.y, x_3998);
            let x_4005 : vec3<f32> = txVec48;
            let x_4007 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4005.xy, x_4005.z);
            u_xlat86 = x_4007;
            let x_4009 : f32 = u_xlat23.y;
            let x_4010 : f32 = u_xlat86;
            let x_4013 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_4009 * x_4010) + x_4013);
            let x_4017 : vec4<f32> = u_xlat19;
            let x_4018 : vec2<f32> = vec2<f32>(x_4017.x, x_4017.y);
            let x_4020 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_4018.x, x_4018.y, x_4020);
            let x_4027 : vec3<f32> = txVec49;
            let x_4029 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4027.xy, x_4027.z);
            u_xlat86 = x_4029;
            let x_4031 : f32 = u_xlat23.z;
            let x_4032 : f32 = u_xlat86;
            let x_4035 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_4031 * x_4032) + x_4035);
            let x_4039 : vec4<f32> = u_xlat20;
            let x_4040 : vec2<f32> = vec2<f32>(x_4039.z, x_4039.w);
            let x_4042 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_4040.x, x_4040.y, x_4042);
            let x_4049 : vec3<f32> = txVec50;
            let x_4051 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4049.xy, x_4049.z);
            u_xlat86 = x_4051;
            let x_4053 : f32 = u_xlat23.w;
            let x_4054 : f32 = u_xlat86;
            let x_4057 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_4053 * x_4054) + x_4057);
            let x_4061 : vec4<f32> = u_xlat21;
            let x_4062 : vec2<f32> = vec2<f32>(x_4061.x, x_4061.y);
            let x_4064 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_4062.x, x_4062.y, x_4064);
            let x_4071 : vec3<f32> = txVec51;
            let x_4073 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4071.xy, x_4071.z);
            u_xlat86 = x_4073;
            let x_4075 : f32 = u_xlat24.x;
            let x_4076 : f32 = u_xlat86;
            let x_4079 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_4075 * x_4076) + x_4079);
            let x_4083 : vec4<f32> = u_xlat21;
            let x_4084 : vec2<f32> = vec2<f32>(x_4083.z, x_4083.w);
            let x_4086 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_4084.x, x_4084.y, x_4086);
            let x_4093 : vec3<f32> = txVec52;
            let x_4095 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4093.xy, x_4093.z);
            u_xlat86 = x_4095;
            let x_4097 : f32 = u_xlat24.y;
            let x_4098 : f32 = u_xlat86;
            let x_4101 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_4097 * x_4098) + x_4101);
            let x_4105 : vec2<f32> = u_xlat38;
            let x_4107 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_4105.x, x_4105.y, x_4107);
            let x_4114 : vec3<f32> = txVec53;
            let x_4116 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4114.xy, x_4114.z);
            u_xlat86 = x_4116;
            let x_4118 : f32 = u_xlat24.z;
            let x_4119 : f32 = u_xlat86;
            let x_4122 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_4118 * x_4119) + x_4122);
            let x_4126 : vec2<f32> = u_xlat69;
            let x_4128 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_4126.x, x_4126.y, x_4128);
            let x_4135 : vec3<f32> = txVec54;
            let x_4137 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4135.xy, x_4135.z);
            u_xlat86 = x_4137;
            let x_4139 : f32 = u_xlat24.w;
            let x_4140 : f32 = u_xlat86;
            let x_4143 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_4139 * x_4140) + x_4143);
            let x_4147 : vec4<f32> = u_xlat16;
            let x_4148 : vec2<f32> = vec2<f32>(x_4147.x, x_4147.y);
            let x_4150 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_4148.x, x_4148.y, x_4150);
            let x_4157 : vec3<f32> = txVec55;
            let x_4159 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4157.xy, x_4157.z);
            u_xlat86 = x_4159;
            let x_4161 : f32 = u_xlat12.x;
            let x_4162 : f32 = u_xlat86;
            let x_4165 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_4161 * x_4162) + x_4165);
            let x_4169 : vec4<f32> = u_xlat16;
            let x_4170 : vec2<f32> = vec2<f32>(x_4169.z, x_4169.w);
            let x_4172 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_4170.x, x_4170.y, x_4172);
            let x_4179 : vec3<f32> = txVec56;
            let x_4181 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4179.xy, x_4179.z);
            u_xlat86 = x_4181;
            let x_4183 : f32 = u_xlat12.y;
            let x_4184 : f32 = u_xlat86;
            let x_4187 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_4183 * x_4184) + x_4187);
            let x_4191 : vec2<f32> = u_xlat64;
            let x_4193 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_4191.x, x_4191.y, x_4193);
            let x_4200 : vec3<f32> = txVec57;
            let x_4202 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4200.xy, x_4200.z);
            u_xlat86 = x_4202;
            let x_4204 : f32 = u_xlat12.z;
            let x_4205 : f32 = u_xlat86;
            let x_4208 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_4204 * x_4205) + x_4208);
            let x_4212 : vec4<f32> = u_xlat11;
            let x_4213 : vec2<f32> = vec2<f32>(x_4212.x, x_4212.y);
            let x_4215 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_4213.x, x_4213.y, x_4215);
            let x_4222 : vec3<f32> = txVec58;
            let x_4224 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4222.xy, x_4222.z);
            u_xlat11.x = x_4224;
            let x_4227 : f32 = u_xlat12.w;
            let x_4229 : f32 = u_xlat11.x;
            let x_4232 : f32 = u_xlat61.x;
            u_xlat85 = ((x_4227 * x_4229) + x_4232);
          }
        }
      } else {
        let x_4236 : vec4<f32> = u_xlat10;
        let x_4237 : vec2<f32> = vec2<f32>(x_4236.x, x_4236.y);
        let x_4239 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_4237.x, x_4237.y, x_4239);
        let x_4246 : vec3<f32> = txVec59;
        let x_4248 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4246.xy, x_4246.z);
        u_xlat85 = x_4248;
      }
      let x_4249 : i32 = u_xlati81;
      let x_4251 : f32 = x_666.x_AdditionalShadowParams[x_4249].x;
      u_xlat10.x = (1.0f + -(x_4251));
      let x_4255 : f32 = u_xlat85;
      let x_4256 : i32 = u_xlati81;
      let x_4258 : f32 = x_666.x_AdditionalShadowParams[x_4256].x;
      let x_4261 : f32 = u_xlat10.x;
      u_xlat10.x = ((x_4255 * x_4258) + x_4261);
      let x_4265 : f32 = u_xlat10.z;
      u_xlatb35.x = (0.0f >= x_4265);
      let x_4270 : f32 = u_xlat10.z;
      u_xlatb60 = (x_4270 >= 1.0f);
      let x_4272 : bool = u_xlatb60;
      let x_4274 : bool = u_xlatb35.x;
      u_xlatb35.x = (x_4272 | x_4274);
      let x_4278 : bool = u_xlatb35.x;
      if (x_4278) {
        x_4279 = 1.0f;
      } else {
        let x_4284 : f32 = u_xlat10.x;
        x_4279 = x_4284;
      }
      let x_4285 : f32 = x_4279;
      u_xlat10.x = x_4285;
    } else {
      u_xlat10.x = 1.0f;
    }
    let x_4290 : f32 = u_xlat10.x;
    u_xlat35.x = (-(x_4290) + 1.0f);
    let x_4295 : f32 = u_xlat26.x;
    let x_4297 : f32 = u_xlat35.x;
    let x_4300 : f32 = u_xlat10.x;
    u_xlat10.x = ((x_4295 * x_4297) + x_4300);
    let x_4304 : i32 = u_xlati81;
    u_xlati35 = (1i << bitcast<u32>((x_4304 & 31i)));
    let x_4308 : i32 = u_xlati35;
    let x_4311 : f32 = x_2340.x_AdditionalLightsCookieEnableBits;
    u_xlati35 = bitcast<i32>((bitcast<u32>(x_4308) & bitcast<u32>(x_4311)));
    let x_4315 : i32 = u_xlati35;
    if ((x_4315 != 0i)) {
      let x_4319 : i32 = u_xlati81;
      let x_4321 : f32 = x_2340.x_AdditionalLightsLightTypes[x_4319].el;
      u_xlati35 = i32(x_4321);
      let x_4324 : i32 = u_xlati35;
      u_xlati60 = select(1i, 0i, (x_4324 != 0i));
      let x_4328 : i32 = u_xlati81;
      u_xlati85 = (x_4328 << bitcast<u32>(2i));
      let x_4330 : i32 = u_xlati60;
      if ((x_4330 != 0i)) {
        let x_4334 : vec3<f32> = vs_INTERP7;
        let x_4336 : i32 = u_xlati85;
        let x_4339 : i32 = u_xlati85;
        let x_4343 : vec4<f32> = x_2340.x_AdditionalLightsWorldToLights[((x_4336 + 1i) / 4i)][((x_4339 + 1i) % 4i)];
        let x_4345 : vec3<f32> = (vec3<f32>(x_4334.y, x_4334.y, x_4334.y) * vec3<f32>(x_4343.x, x_4343.y, x_4343.w));
        let x_4346 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4345.x, x_4345.y, x_4345.z, x_4346.w);
        let x_4348 : i32 = u_xlati85;
        let x_4350 : i32 = u_xlati85;
        let x_4353 : vec4<f32> = x_2340.x_AdditionalLightsWorldToLights[(x_4348 / 4i)][(x_4350 % 4i)];
        let x_4355 : vec3<f32> = vs_INTERP7;
        let x_4358 : vec4<f32> = u_xlat11;
        let x_4360 : vec3<f32> = ((vec3<f32>(x_4353.x, x_4353.y, x_4353.w) * vec3<f32>(x_4355.x, x_4355.x, x_4355.x)) + vec3<f32>(x_4358.x, x_4358.y, x_4358.z));
        let x_4361 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4360.x, x_4360.y, x_4360.z, x_4361.w);
        let x_4363 : i32 = u_xlati85;
        let x_4366 : i32 = u_xlati85;
        let x_4370 : vec4<f32> = x_2340.x_AdditionalLightsWorldToLights[((x_4363 + 2i) / 4i)][((x_4366 + 2i) % 4i)];
        let x_4372 : vec3<f32> = vs_INTERP7;
        let x_4375 : vec4<f32> = u_xlat11;
        let x_4377 : vec3<f32> = ((vec3<f32>(x_4370.x, x_4370.y, x_4370.w) * vec3<f32>(x_4372.z, x_4372.z, x_4372.z)) + vec3<f32>(x_4375.x, x_4375.y, x_4375.z));
        let x_4378 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4377.x, x_4377.y, x_4377.z, x_4378.w);
        let x_4380 : vec4<f32> = u_xlat11;
        let x_4382 : i32 = u_xlati85;
        let x_4385 : i32 = u_xlati85;
        let x_4389 : vec4<f32> = x_2340.x_AdditionalLightsWorldToLights[((x_4382 + 3i) / 4i)][((x_4385 + 3i) % 4i)];
        let x_4391 : vec3<f32> = (vec3<f32>(x_4380.x, x_4380.y, x_4380.z) + vec3<f32>(x_4389.x, x_4389.y, x_4389.w));
        let x_4392 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4391.x, x_4391.y, x_4391.z, x_4392.w);
        let x_4394 : vec4<f32> = u_xlat11;
        let x_4396 : vec4<f32> = u_xlat11;
        let x_4398 : vec2<f32> = (vec2<f32>(x_4394.x, x_4394.y) / vec2<f32>(x_4396.z, x_4396.z));
        let x_4399 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4398.x, x_4398.y, x_4399.z, x_4399.w);
        let x_4401 : vec4<f32> = u_xlat11;
        let x_4404 : vec2<f32> = ((vec2<f32>(x_4401.x, x_4401.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_4405 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4404.x, x_4404.y, x_4405.z, x_4405.w);
        let x_4407 : vec4<f32> = u_xlat11;
        let x_4411 : vec2<f32> = clamp(vec2<f32>(x_4407.x, x_4407.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_4412 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4411.x, x_4411.y, x_4412.z, x_4412.w);
        let x_4414 : i32 = u_xlati81;
        let x_4416 : vec4<f32> = x_2340.x_AdditionalLightsCookieAtlasUVRects[x_4414];
        let x_4418 : vec4<f32> = u_xlat11;
        let x_4421 : i32 = u_xlati81;
        let x_4423 : vec4<f32> = x_2340.x_AdditionalLightsCookieAtlasUVRects[x_4421];
        let x_4425 : vec2<f32> = ((vec2<f32>(x_4416.x, x_4416.y) * vec2<f32>(x_4418.x, x_4418.y)) + vec2<f32>(x_4423.z, x_4423.w));
        let x_4426 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4425.x, x_4425.y, x_4426.z, x_4426.w);
      } else {
        let x_4429 : i32 = u_xlati35;
        u_xlatb35.x = (x_4429 == 1i);
        let x_4433 : bool = u_xlatb35.x;
        u_xlati35 = select(0i, 1i, x_4433);
        let x_4435 : i32 = u_xlati35;
        if ((x_4435 != 0i)) {
          let x_4439 : vec3<f32> = vs_INTERP7;
          let x_4441 : i32 = u_xlati85;
          let x_4444 : i32 = u_xlati85;
          let x_4448 : vec4<f32> = x_2340.x_AdditionalLightsWorldToLights[((x_4441 + 1i) / 4i)][((x_4444 + 1i) % 4i)];
          let x_4450 : vec2<f32> = (vec2<f32>(x_4439.y, x_4439.y) * vec2<f32>(x_4448.x, x_4448.y));
          let x_4451 : vec3<f32> = u_xlat35;
          u_xlat35 = vec3<f32>(x_4450.x, x_4450.y, x_4451.z);
          let x_4453 : i32 = u_xlati85;
          let x_4455 : i32 = u_xlati85;
          let x_4458 : vec4<f32> = x_2340.x_AdditionalLightsWorldToLights[(x_4453 / 4i)][(x_4455 % 4i)];
          let x_4460 : vec3<f32> = vs_INTERP7;
          let x_4463 : vec3<f32> = u_xlat35;
          let x_4465 : vec2<f32> = ((vec2<f32>(x_4458.x, x_4458.y) * vec2<f32>(x_4460.x, x_4460.x)) + vec2<f32>(x_4463.x, x_4463.y));
          let x_4466 : vec3<f32> = u_xlat35;
          u_xlat35 = vec3<f32>(x_4465.x, x_4465.y, x_4466.z);
          let x_4468 : i32 = u_xlati85;
          let x_4471 : i32 = u_xlati85;
          let x_4475 : vec4<f32> = x_2340.x_AdditionalLightsWorldToLights[((x_4468 + 2i) / 4i)][((x_4471 + 2i) % 4i)];
          let x_4477 : vec3<f32> = vs_INTERP7;
          let x_4480 : vec3<f32> = u_xlat35;
          let x_4482 : vec2<f32> = ((vec2<f32>(x_4475.x, x_4475.y) * vec2<f32>(x_4477.z, x_4477.z)) + vec2<f32>(x_4480.x, x_4480.y));
          let x_4483 : vec3<f32> = u_xlat35;
          u_xlat35 = vec3<f32>(x_4482.x, x_4482.y, x_4483.z);
          let x_4485 : vec3<f32> = u_xlat35;
          let x_4487 : i32 = u_xlati85;
          let x_4490 : i32 = u_xlati85;
          let x_4494 : vec4<f32> = x_2340.x_AdditionalLightsWorldToLights[((x_4487 + 3i) / 4i)][((x_4490 + 3i) % 4i)];
          let x_4496 : vec2<f32> = (vec2<f32>(x_4485.x, x_4485.y) + vec2<f32>(x_4494.x, x_4494.y));
          let x_4497 : vec3<f32> = u_xlat35;
          u_xlat35 = vec3<f32>(x_4496.x, x_4496.y, x_4497.z);
          let x_4499 : vec3<f32> = u_xlat35;
          let x_4502 : vec2<f32> = ((vec2<f32>(x_4499.x, x_4499.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4503 : vec3<f32> = u_xlat35;
          u_xlat35 = vec3<f32>(x_4502.x, x_4502.y, x_4503.z);
          let x_4505 : vec3<f32> = u_xlat35;
          let x_4507 : vec2<f32> = fract(vec2<f32>(x_4505.x, x_4505.y));
          let x_4508 : vec3<f32> = u_xlat35;
          u_xlat35 = vec3<f32>(x_4507.x, x_4507.y, x_4508.z);
          let x_4510 : i32 = u_xlati81;
          let x_4512 : vec4<f32> = x_2340.x_AdditionalLightsCookieAtlasUVRects[x_4510];
          let x_4514 : vec3<f32> = u_xlat35;
          let x_4517 : i32 = u_xlati81;
          let x_4519 : vec4<f32> = x_2340.x_AdditionalLightsCookieAtlasUVRects[x_4517];
          let x_4521 : vec2<f32> = ((vec2<f32>(x_4512.x, x_4512.y) * vec2<f32>(x_4514.x, x_4514.y)) + vec2<f32>(x_4519.z, x_4519.w));
          let x_4522 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4521.x, x_4521.y, x_4522.z, x_4522.w);
        } else {
          let x_4525 : vec3<f32> = vs_INTERP7;
          let x_4527 : i32 = u_xlati85;
          let x_4530 : i32 = u_xlati85;
          let x_4534 : vec4<f32> = x_2340.x_AdditionalLightsWorldToLights[((x_4527 + 1i) / 4i)][((x_4530 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_4525.y, x_4525.y, x_4525.y, x_4525.y) * x_4534);
          let x_4536 : i32 = u_xlati85;
          let x_4538 : i32 = u_xlati85;
          let x_4541 : vec4<f32> = x_2340.x_AdditionalLightsWorldToLights[(x_4536 / 4i)][(x_4538 % 4i)];
          let x_4542 : vec3<f32> = vs_INTERP7;
          let x_4545 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4541 * vec4<f32>(x_4542.x, x_4542.x, x_4542.x, x_4542.x)) + x_4545);
          let x_4547 : i32 = u_xlati85;
          let x_4550 : i32 = u_xlati85;
          let x_4554 : vec4<f32> = x_2340.x_AdditionalLightsWorldToLights[((x_4547 + 2i) / 4i)][((x_4550 + 2i) % 4i)];
          let x_4555 : vec3<f32> = vs_INTERP7;
          let x_4558 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4554 * vec4<f32>(x_4555.z, x_4555.z, x_4555.z, x_4555.z)) + x_4558);
          let x_4560 : vec4<f32> = u_xlat12;
          let x_4561 : i32 = u_xlati85;
          let x_4564 : i32 = u_xlati85;
          let x_4568 : vec4<f32> = x_2340.x_AdditionalLightsWorldToLights[((x_4561 + 3i) / 4i)][((x_4564 + 3i) % 4i)];
          u_xlat12 = (x_4560 + x_4568);
          let x_4570 : vec4<f32> = u_xlat12;
          let x_4572 : vec4<f32> = u_xlat12;
          u_xlat35 = (vec3<f32>(x_4570.x, x_4570.y, x_4570.z) / vec3<f32>(x_4572.w, x_4572.w, x_4572.w));
          let x_4575 : vec3<f32> = u_xlat35;
          let x_4576 : vec3<f32> = u_xlat35;
          u_xlat61.x = dot(x_4575, x_4576);
          let x_4580 : f32 = u_xlat61.x;
          u_xlat61.x = inverseSqrt(x_4580);
          let x_4583 : vec3<f32> = u_xlat35;
          let x_4584 : vec2<f32> = u_xlat61;
          u_xlat35 = (x_4583 * vec3<f32>(x_4584.x, x_4584.x, x_4584.x));
          let x_4587 : vec3<f32> = u_xlat35;
          u_xlat61.x = dot(abs(x_4587), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_4593 : f32 = u_xlat61.x;
          u_xlat61.x = max(x_4593, 0.00000099999999747524f);
          let x_4598 : f32 = u_xlat61.x;
          u_xlat61.x = (1.0f / x_4598);
          let x_4601 : vec3<f32> = u_xlat35;
          let x_4603 : vec2<f32> = u_xlat61;
          let x_4605 : vec3<f32> = (vec3<f32>(x_4601.z, x_4601.x, x_4601.y) * vec3<f32>(x_4603.x, x_4603.x, x_4603.x));
          let x_4606 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4605.x, x_4605.y, x_4605.z, x_4606.w);
          let x_4609 : f32 = u_xlat12.x;
          u_xlat12.x = -(x_4609);
          let x_4613 : f32 = u_xlat12.x;
          u_xlat12.x = clamp(x_4613, 0.0f, 1.0f);
          let x_4617 : vec4<f32> = u_xlat12;
          let x_4619 : vec4<bool> = (vec4<f32>(x_4617.y, x_4617.z, x_4617.y, x_4617.y) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb37 = vec2<bool>(x_4619.x, x_4619.y);
          let x_4623 : vec4<f32> = u_xlat12;
          hlslcc_movcTemp = x_4623;
          let x_4625 : bool = u_xlatb37.x;
          if (x_4625) {
            let x_4630 : f32 = u_xlat12.x;
            x_4626 = x_4630;
          } else {
            let x_4633 : f32 = u_xlat12.x;
            x_4626 = -(x_4633);
          }
          let x_4635 : f32 = x_4626;
          hlslcc_movcTemp.x = x_4635;
          let x_4638 : bool = u_xlatb37.y;
          if (x_4638) {
            let x_4643 : f32 = u_xlat12.x;
            x_4639 = x_4643;
          } else {
            let x_4646 : f32 = u_xlat12.x;
            x_4639 = -(x_4646);
          }
          let x_4648 : f32 = x_4639;
          hlslcc_movcTemp.y = x_4648;
          let x_4650 : vec4<f32> = hlslcc_movcTemp;
          u_xlat12 = x_4650;
          let x_4651 : vec3<f32> = u_xlat35;
          let x_4653 : vec2<f32> = u_xlat61;
          let x_4656 : vec4<f32> = u_xlat12;
          let x_4658 : vec2<f32> = ((vec2<f32>(x_4651.x, x_4651.y) * vec2<f32>(x_4653.x, x_4653.x)) + vec2<f32>(x_4656.x, x_4656.y));
          let x_4659 : vec3<f32> = u_xlat35;
          u_xlat35 = vec3<f32>(x_4658.x, x_4658.y, x_4659.z);
          let x_4661 : vec3<f32> = u_xlat35;
          let x_4664 : vec2<f32> = ((vec2<f32>(x_4661.x, x_4661.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4665 : vec3<f32> = u_xlat35;
          u_xlat35 = vec3<f32>(x_4664.x, x_4664.y, x_4665.z);
          let x_4667 : vec3<f32> = u_xlat35;
          let x_4671 : vec2<f32> = clamp(vec2<f32>(x_4667.x, x_4667.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4672 : vec3<f32> = u_xlat35;
          u_xlat35 = vec3<f32>(x_4671.x, x_4671.y, x_4672.z);
          let x_4674 : i32 = u_xlati81;
          let x_4676 : vec4<f32> = x_2340.x_AdditionalLightsCookieAtlasUVRects[x_4674];
          let x_4678 : vec3<f32> = u_xlat35;
          let x_4681 : i32 = u_xlati81;
          let x_4683 : vec4<f32> = x_2340.x_AdditionalLightsCookieAtlasUVRects[x_4681];
          let x_4685 : vec2<f32> = ((vec2<f32>(x_4676.x, x_4676.y) * vec2<f32>(x_4678.x, x_4678.y)) + vec2<f32>(x_4683.z, x_4683.w));
          let x_4686 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4685.x, x_4685.y, x_4686.z, x_4686.w);
        }
      }
      let x_4693 : vec4<f32> = u_xlat11;
      let x_4695 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4693.x, x_4693.y), 0.0f);
      u_xlat11 = x_4695;
      let x_4697 : bool = u_xlatb31.y;
      if (x_4697) {
        let x_4702 : f32 = u_xlat11.w;
        x_4698 = x_4702;
      } else {
        let x_4705 : f32 = u_xlat11.x;
        x_4698 = x_4705;
      }
      let x_4706 : f32 = x_4698;
      u_xlat35.x = x_4706;
      let x_4709 : bool = u_xlatb31.x;
      if (x_4709) {
        let x_4713 : vec4<f32> = u_xlat11;
        x_4710 = vec3<f32>(x_4713.x, x_4713.y, x_4713.z);
      } else {
        let x_4716 : vec3<f32> = u_xlat35;
        x_4710 = vec3<f32>(x_4716.x, x_4716.x, x_4716.x);
      }
      let x_4718 : vec3<f32> = x_4710;
      u_xlat35 = x_4718;
    } else {
      u_xlat35.x = 1.0f;
      u_xlat35.y = 1.0f;
      u_xlat35.z = 1.0f;
    }
    let x_4723 : vec3<f32> = u_xlat35;
    let x_4724 : i32 = u_xlati81;
    let x_4726 : vec4<f32> = x_2789.x_AdditionalLightsColor[x_4724];
    u_xlat35 = (x_4723 * vec3<f32>(x_4726.x, x_4726.y, x_4726.z));
    let x_4729 : f32 = u_xlat82;
    let x_4731 : f32 = u_xlat10.x;
    u_xlat81 = (x_4729 * x_4731);
    let x_4733 : vec4<f32> = u_xlat4;
    let x_4735 : vec3<f32> = u_xlat34;
    u_xlat82 = dot(vec3<f32>(x_4733.x, x_4733.y, x_4733.z), x_4735);
    let x_4737 : f32 = u_xlat82;
    u_xlat82 = clamp(x_4737, 0.0f, 1.0f);
    let x_4739 : f32 = u_xlat81;
    let x_4740 : f32 = u_xlat82;
    u_xlat81 = (x_4739 * x_4740);
    let x_4742 : f32 = u_xlat81;
    let x_4744 : vec3<f32> = u_xlat35;
    let x_4745 : vec3<f32> = (vec3<f32>(x_4742, x_4742, x_4742) * x_4744);
    let x_4746 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_4745.x, x_4745.y, x_4745.z, x_4746.w);
    let x_4748 : vec3<f32> = u_xlat33;
    let x_4749 : vec4<f32> = u_xlat9;
    let x_4752 : vec3<f32> = u_xlat25;
    u_xlat33 = ((x_4748 * vec3<f32>(x_4749.x, x_4749.x, x_4749.x)) + x_4752);
    let x_4754 : vec3<f32> = u_xlat33;
    let x_4755 : vec3<f32> = u_xlat33;
    u_xlat81 = dot(x_4754, x_4755);
    let x_4757 : f32 = u_xlat81;
    u_xlat81 = max(x_4757, 1.17549435e-38f);
    let x_4759 : f32 = u_xlat81;
    u_xlat81 = inverseSqrt(x_4759);
    let x_4761 : f32 = u_xlat81;
    let x_4763 : vec3<f32> = u_xlat33;
    u_xlat33 = (vec3<f32>(x_4761, x_4761, x_4761) * x_4763);
    let x_4765 : vec4<f32> = u_xlat4;
    let x_4767 : vec3<f32> = u_xlat33;
    u_xlat81 = dot(vec3<f32>(x_4765.x, x_4765.y, x_4765.z), x_4767);
    let x_4769 : f32 = u_xlat81;
    u_xlat81 = clamp(x_4769, 0.0f, 1.0f);
    let x_4771 : vec3<f32> = u_xlat34;
    let x_4772 : vec3<f32> = u_xlat33;
    u_xlat82 = dot(x_4771, x_4772);
    let x_4774 : f32 = u_xlat82;
    u_xlat82 = clamp(x_4774, 0.0f, 1.0f);
    let x_4776 : f32 = u_xlat81;
    let x_4777 : f32 = u_xlat81;
    u_xlat81 = (x_4776 * x_4777);
    let x_4779 : f32 = u_xlat81;
    let x_4781 : f32 = u_xlat8.x;
    u_xlat81 = ((x_4779 * x_4781) + 1.00001001358032226562f);
    let x_4784 : f32 = u_xlat82;
    let x_4785 : f32 = u_xlat82;
    u_xlat82 = (x_4784 * x_4785);
    let x_4787 : f32 = u_xlat81;
    let x_4788 : f32 = u_xlat81;
    u_xlat81 = (x_4787 * x_4788);
    let x_4790 : f32 = u_xlat82;
    u_xlat82 = max(x_4790, 0.10000000149011611938f);
    let x_4792 : f32 = u_xlat81;
    let x_4793 : f32 = u_xlat82;
    u_xlat81 = (x_4792 * x_4793);
    let x_4795 : f32 = u_xlat80;
    let x_4796 : f32 = u_xlat81;
    u_xlat81 = (x_4795 * x_4796);
    let x_4798 : f32 = u_xlat79;
    let x_4799 : f32 = u_xlat81;
    u_xlat81 = (x_4798 / x_4799);
    let x_4801 : vec3<f32> = u_xlat2;
    let x_4802 : f32 = u_xlat81;
    let x_4805 : vec3<f32> = u_xlat3;
    u_xlat33 = ((x_4801 * vec3<f32>(x_4802, x_4802, x_4802)) + x_4805);
    let x_4807 : vec3<f32> = u_xlat33;
    let x_4808 : vec4<f32> = u_xlat10;
    let x_4811 : vec4<f32> = u_xlat7;
    let x_4813 : vec3<f32> = ((x_4807 * vec3<f32>(x_4808.x, x_4808.y, x_4808.z)) + vec3<f32>(x_4811.x, x_4811.y, x_4811.z));
    let x_4814 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_4813.x, x_4813.y, x_4813.z, x_4814.w);

    continuing {
      let x_4816 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4816 + bitcast<u32>(1i));
    }
  }
  let x_4818 : vec3<f32> = u_xlat5;
  let x_4819 : vec4<f32> = u_xlat6;
  let x_4822 : vec4<f32> = u_xlat1;
  let x_4824 : vec3<f32> = ((x_4818 * vec3<f32>(x_4819.x, x_4819.x, x_4819.x)) + vec3<f32>(x_4822.x, x_4822.z, x_4822.w));
  let x_4825 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4824.x, x_4824.y, x_4824.z, x_4825.w);
  let x_4827 : vec4<f32> = u_xlat7;
  let x_4829 : vec4<f32> = u_xlat0;
  let x_4831 : vec3<f32> = (vec3<f32>(x_4827.x, x_4827.y, x_4827.z) + vec3<f32>(x_4829.x, x_4829.y, x_4829.z));
  let x_4832 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4831.x, x_4831.y, x_4831.z, x_4832.w);
  let x_4835 : f32 = u_xlat77;
  let x_4836 : f32 = u_xlat77;
  u_xlat75 = (x_4835 * -(x_4836));
  let x_4839 : f32 = u_xlat75;
  u_xlat75 = exp2(x_4839);
  let x_4841 : vec4<f32> = u_xlat0;
  let x_4844 : vec4<f32> = x_135.unity_FogColor;
  let x_4847 : vec3<f32> = (vec3<f32>(x_4841.x, x_4841.y, x_4841.z) + -(vec3<f32>(x_4844.x, x_4844.y, x_4844.z)));
  let x_4848 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4847.x, x_4847.y, x_4847.z, x_4848.w);
  let x_4852 : f32 = u_xlat75;
  let x_4854 : vec4<f32> = u_xlat0;
  let x_4858 : vec4<f32> = x_135.unity_FogColor;
  let x_4860 : vec3<f32> = ((vec3<f32>(x_4852, x_4852, x_4852) * vec3<f32>(x_4854.x, x_4854.y, x_4854.z)) + vec3<f32>(x_4858.x, x_4858.y, x_4858.z));
  let x_4861 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4860.x, x_4860.y, x_4860.z, x_4861.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(3) vs_INTERP8_param : vec3<f32>, @location(0) vs_INTERP4_param : vec4<f32>, @location(1) vs_INTERP5_param : vec4<f32>, @location(2) vs_INTERP7_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP7 = vs_INTERP7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


