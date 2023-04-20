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
  unity_OrthoParams : vec4<f32>,
  /* @offset(96) */
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

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(11) var Texture2D_D7D66558 : texture_2d<f32>;

@group(0) @binding(21) var samplerTexture2D_D7D66558 : sampler;

@group(1) @binding(5) var<uniform> x_195 : UnityPerMaterial;

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

@group(1) @binding(3) var<uniform> x_679 : LightShadows;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlatb4 : vec4<bool>;

var<private> u_xlatu1 : u32;

var<private> u_xlati1 : i32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(13) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlatb6 : vec2<bool>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(15) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb31 : bool;

var<private> u_xlat31 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat56 : vec2<f32>;

var<private> u_xlat81 : f32;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat33 : vec3<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlatb26 : bool;

var<private> u_xlatb51 : bool;

var<private> u_xlat51 : f32;

@group(1) @binding(4) var<uniform> x_2301 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(12) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu0 : u32;

var<private> u_xlatu56 : u32;

var<private> u_xlati81 : i32;

var<private> u_xlati56 : i32;

@group(1) @binding(1) var<uniform> x_2768 : AdditionalLights;

var<private> u_xlat82 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlati84 : i32;

var<private> u_xlatb10 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat35 : vec3<f32>;

var<private> u_xlatb84 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb85 : bool;

var<private> u_xlat61 : vec2<f32>;

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

var<private> u_xlati10 : i32;

var<private> u_xlati35 : i32;

var<private> u_xlati60 : i32;

var<private> u_xlatb61 : vec2<bool>;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb56 : bool;

var<private> u_xlatu77 : u32;

fn main_1() {
  var x_638 : f32;
  var x_650 : f32;
  var x_661 : f32;
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
  var x_2251 : f32;
  var x_2382 : f32;
  var x_2393 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2902 : f32;
  var x_2914 : f32;
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
  var x_4582 : f32;
  var x_4595 : f32;
  var x_4652 : f32;
  var x_4663 : vec3<f32>;
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
  u_xlat25 = (x_603 * vec3<f32>(x_604.x, x_604.x, x_604.x));
  let x_609 : f32 = x_135.unity_OrthoParams.w;
  u_xlatb1 = (x_609 == 0.0f);
  let x_611 : vec3<f32> = vs_INTERP7;
  let x_615 : vec3<f32> = x_135.x_WorldSpaceCameraPos;
  let x_616 : vec3<f32> = (-(x_611) + x_615);
  let x_617 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_616.x, x_616.y, x_616.z, x_617.w);
  let x_619 : vec4<f32> = u_xlat4;
  let x_621 : vec4<f32> = u_xlat4;
  u_xlat26.x = dot(vec3<f32>(x_619.x, x_619.y, x_619.z), vec3<f32>(x_621.x, x_621.y, x_621.z));
  let x_626 : f32 = u_xlat26.x;
  u_xlat26.x = inverseSqrt(x_626);
  let x_629 : vec2<f32> = u_xlat26;
  let x_631 : vec4<f32> = u_xlat4;
  let x_633 : vec3<f32> = (vec3<f32>(x_629.x, x_629.x, x_629.x) * vec3<f32>(x_631.x, x_631.y, x_631.z));
  let x_634 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_633.x, x_633.y, x_633.z, x_634.w);
  let x_636 : bool = u_xlatb1;
  if (x_636) {
    let x_642 : f32 = u_xlat4.x;
    x_638 = x_642;
  } else {
    let x_646 : f32 = x_135.unity_MatrixV[0i].z;
    x_638 = x_646;
  }
  let x_647 : f32 = x_638;
  u_xlat5.x = x_647;
  let x_649 : bool = u_xlatb1;
  if (x_649) {
    let x_654 : f32 = u_xlat4.y;
    x_650 = x_654;
  } else {
    let x_657 : f32 = x_135.unity_MatrixV[1i].z;
    x_650 = x_657;
  }
  let x_658 : f32 = x_650;
  u_xlat5.y = x_658;
  let x_660 : bool = u_xlatb1;
  if (x_660) {
    let x_665 : f32 = u_xlat4.z;
    x_661 = x_665;
  } else {
    let x_668 : f32 = x_135.unity_MatrixV[2i].z;
    x_661 = x_668;
  }
  let x_669 : f32 = x_661;
  u_xlat5.z = x_669;
  let x_671 : vec3<f32> = vs_INTERP7;
  let x_681 : vec4<f32> = x_679.x_CascadeShadowSplitSpheres0;
  let x_684 : vec3<f32> = (x_671 + -(vec3<f32>(x_681.x, x_681.y, x_681.z)));
  let x_685 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_684.x, x_684.y, x_684.z, x_685.w);
  let x_687 : vec3<f32> = vs_INTERP7;
  let x_689 : vec4<f32> = x_679.x_CascadeShadowSplitSpheres1;
  let x_692 : vec3<f32> = (x_687 + -(vec3<f32>(x_689.x, x_689.y, x_689.z)));
  let x_693 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_692.x, x_692.y, x_692.z, x_693.w);
  let x_695 : vec3<f32> = vs_INTERP7;
  let x_697 : vec4<f32> = x_679.x_CascadeShadowSplitSpheres2;
  let x_700 : vec3<f32> = (x_695 + -(vec3<f32>(x_697.x, x_697.y, x_697.z)));
  let x_701 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_700.x, x_700.y, x_700.z, x_701.w);
  let x_703 : vec3<f32> = vs_INTERP7;
  let x_705 : vec4<f32> = x_679.x_CascadeShadowSplitSpheres3;
  u_xlat32 = (x_703 + -(vec3<f32>(x_705.x, x_705.y, x_705.z)));
  let x_710 : vec4<f32> = u_xlat1;
  let x_712 : vec4<f32> = u_xlat1;
  u_xlat8.x = dot(vec3<f32>(x_710.x, x_710.y, x_710.z), vec3<f32>(x_712.x, x_712.y, x_712.z));
  let x_716 : vec4<f32> = u_xlat4;
  let x_718 : vec4<f32> = u_xlat4;
  u_xlat8.y = dot(vec3<f32>(x_716.x, x_716.y, x_716.z), vec3<f32>(x_718.x, x_718.y, x_718.z));
  let x_722 : vec4<f32> = u_xlat6;
  let x_724 : vec4<f32> = u_xlat6;
  u_xlat8.z = dot(vec3<f32>(x_722.x, x_722.y, x_722.z), vec3<f32>(x_724.x, x_724.y, x_724.z));
  let x_728 : vec3<f32> = u_xlat32;
  let x_729 : vec3<f32> = u_xlat32;
  u_xlat8.w = dot(x_728, x_729);
  let x_735 : vec4<f32> = u_xlat8;
  let x_737 : vec4<f32> = x_679.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_735 < x_737);
  let x_740 : bool = u_xlatb4.x;
  u_xlat6.x = select(0.0f, 1.0f, x_740);
  let x_744 : bool = u_xlatb4.y;
  u_xlat6.y = select(0.0f, 1.0f, x_744);
  let x_748 : bool = u_xlatb4.z;
  u_xlat6.z = select(0.0f, 1.0f, x_748);
  let x_752 : bool = u_xlatb4.w;
  u_xlat6.w = select(0.0f, 1.0f, x_752);
  let x_756 : bool = u_xlatb4.x;
  u_xlat1.x = select(-0.0f, -1.0f, x_756);
  let x_761 : bool = u_xlatb4.y;
  u_xlat1.y = select(-0.0f, -1.0f, x_761);
  let x_765 : bool = u_xlatb4.z;
  u_xlat1.z = select(-0.0f, -1.0f, x_765);
  let x_768 : vec4<f32> = u_xlat1;
  let x_770 : vec4<f32> = u_xlat6;
  let x_772 : vec3<f32> = (vec3<f32>(x_768.x, x_768.y, x_768.z) + vec3<f32>(x_770.y, x_770.z, x_770.w));
  let x_773 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_772.x, x_772.y, x_772.z, x_773.w);
  let x_775 : vec4<f32> = u_xlat1;
  let x_778 : vec3<f32> = max(vec3<f32>(x_775.x, x_775.y, x_775.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_779 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_779.x, x_778.x, x_778.y, x_778.z);
  let x_781 : vec4<f32> = u_xlat6;
  u_xlat1.x = dot(x_781, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_786 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_786) + 4.0f);
  let x_793 : f32 = u_xlat1.x;
  u_xlatu1 = u32(x_793);
  let x_797 : u32 = u_xlatu1;
  u_xlati1 = (bitcast<i32>(x_797) << bitcast<u32>(2i));
  let x_800 : vec3<f32> = vs_INTERP7;
  let x_802 : i32 = u_xlati1;
  let x_805 : i32 = u_xlati1;
  let x_809 : vec4<f32> = x_679.x_MainLightWorldToShadow[((x_802 + 1i) / 4i)][((x_805 + 1i) % 4i)];
  let x_811 : vec3<f32> = (vec3<f32>(x_800.y, x_800.y, x_800.y) * vec3<f32>(x_809.x, x_809.y, x_809.z));
  let x_812 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_811.x, x_811.y, x_811.z, x_812.w);
  let x_814 : i32 = u_xlati1;
  let x_816 : i32 = u_xlati1;
  let x_819 : vec4<f32> = x_679.x_MainLightWorldToShadow[(x_814 / 4i)][(x_816 % 4i)];
  let x_821 : vec3<f32> = vs_INTERP7;
  let x_824 : vec4<f32> = u_xlat4;
  let x_826 : vec3<f32> = ((vec3<f32>(x_819.x, x_819.y, x_819.z) * vec3<f32>(x_821.x, x_821.x, x_821.x)) + vec3<f32>(x_824.x, x_824.y, x_824.z));
  let x_827 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_826.x, x_826.y, x_826.z, x_827.w);
  let x_829 : i32 = u_xlati1;
  let x_832 : i32 = u_xlati1;
  let x_836 : vec4<f32> = x_679.x_MainLightWorldToShadow[((x_829 + 2i) / 4i)][((x_832 + 2i) % 4i)];
  let x_838 : vec3<f32> = vs_INTERP7;
  let x_841 : vec4<f32> = u_xlat4;
  let x_843 : vec3<f32> = ((vec3<f32>(x_836.x, x_836.y, x_836.z) * vec3<f32>(x_838.z, x_838.z, x_838.z)) + vec3<f32>(x_841.x, x_841.y, x_841.z));
  let x_844 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_843.x, x_843.y, x_843.z, x_844.w);
  let x_846 : vec4<f32> = u_xlat4;
  let x_848 : i32 = u_xlati1;
  let x_851 : i32 = u_xlati1;
  let x_855 : vec4<f32> = x_679.x_MainLightWorldToShadow[((x_848 + 3i) / 4i)][((x_851 + 3i) % 4i)];
  let x_857 : vec3<f32> = (vec3<f32>(x_846.x, x_846.y, x_846.z) + vec3<f32>(x_855.x, x_855.y, x_855.z));
  let x_858 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_857.x, x_857.y, x_857.z, x_858.w);
  let x_867 : vec2<f32> = vs_INTERP0;
  let x_869 : f32 = x_135.x_GlobalMipBias.x;
  let x_870 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_867, x_869);
  u_xlat4 = x_870;
  let x_875 : vec2<f32> = vs_INTERP0;
  let x_877 : f32 = x_135.x_GlobalMipBias.x;
  let x_878 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_875, x_877);
  let x_879 : vec3<f32> = vec3<f32>(x_878.x, x_878.y, x_878.z);
  let x_880 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_879.x, x_879.y, x_879.z, x_880.w);
  let x_882 : vec4<f32> = u_xlat4;
  let x_885 : vec3<f32> = (vec3<f32>(x_882.x, x_882.y, x_882.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_886 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_885.x, x_885.y, x_885.z, x_886.w);
  let x_888 : vec3<f32> = u_xlat25;
  let x_889 : vec4<f32> = u_xlat4;
  u_xlat77 = dot(x_888, vec3<f32>(x_889.x, x_889.y, x_889.z));
  let x_892 : f32 = u_xlat77;
  u_xlat77 = (x_892 + 0.5f);
  let x_895 : f32 = u_xlat77;
  let x_897 : vec4<f32> = u_xlat6;
  let x_899 : vec3<f32> = (vec3<f32>(x_895, x_895, x_895) * vec3<f32>(x_897.x, x_897.y, x_897.z));
  let x_900 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_899.x, x_899.y, x_899.z, x_900.w);
  let x_903 : f32 = u_xlat4.w;
  u_xlat77 = max(x_903, 0.00009999999747378752f);
  let x_906 : vec4<f32> = u_xlat4;
  let x_908 : f32 = u_xlat77;
  let x_910 : vec3<f32> = (vec3<f32>(x_906.x, x_906.y, x_906.z) / vec3<f32>(x_908, x_908, x_908));
  let x_911 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_910.x, x_910.y, x_910.z, x_911.w);
  let x_913 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_913 * vec3<f32>(0.86399996280670166016f, 0.86399996280670166016f, 0.86399996280670166016f));
  let x_917 : vec4<f32> = u_xlat1;
  let x_919 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_917.w, x_917.w, x_917.w) * x_919) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_924 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_924 * vec3<f32>(0.10000000149011611938f, 0.10000000149011611938f, 0.10000000149011611938f)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_931 : f32 = u_xlat0.x;
  u_xlat76 = (-(x_931) + 1.0f);
  let x_934 : f32 = u_xlat76;
  let x_935 : f32 = u_xlat76;
  u_xlat77 = (x_934 * x_935);
  let x_937 : f32 = u_xlat77;
  u_xlat77 = max(x_937, 0.0078125f);
  let x_940 : f32 = u_xlat77;
  let x_941 : f32 = u_xlat77;
  u_xlat78 = (x_940 * x_941);
  let x_944 : f32 = u_xlat0.x;
  u_xlat0.x = (x_944 + 0.13600003719329833984f);
  let x_949 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_949, 1.0f);
  let x_952 : f32 = u_xlat77;
  u_xlat79 = ((x_952 * 4.0f) + 2.0f);
  let x_957 : f32 = u_xlat7.x;
  u_xlat80 = min(x_957, 1.0f);
  let x_961 : f32 = x_679.x_MainLightShadowParams.y;
  u_xlatb6.x = (0.0f < x_961);
  let x_965 : bool = u_xlatb6.x;
  if (x_965) {
    let x_969 : f32 = x_679.x_MainLightShadowParams.y;
    u_xlatb6.x = (x_969 == 1.0f);
    let x_973 : bool = u_xlatb6.x;
    if (x_973) {
      let x_976 : vec4<f32> = u_xlat1;
      let x_979 : vec4<f32> = x_679.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_976.x, x_976.y, x_976.x, x_976.y) + x_979);
      let x_983 : vec4<f32> = u_xlat6;
      let x_984 : vec2<f32> = vec2<f32>(x_983.x, x_983.y);
      let x_986 : f32 = u_xlat1.z;
      txVec0 = vec3<f32>(x_984.x, x_984.y, x_986);
      let x_998 : vec3<f32> = txVec0;
      let x_1000 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_998.xy, x_998.z);
      u_xlat7.x = x_1000;
      let x_1003 : vec4<f32> = u_xlat6;
      let x_1004 : vec2<f32> = vec2<f32>(x_1003.z, x_1003.w);
      let x_1006 : f32 = u_xlat1.z;
      txVec1 = vec3<f32>(x_1004.x, x_1004.y, x_1006);
      let x_1013 : vec3<f32> = txVec1;
      let x_1015 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1013.xy, x_1013.z);
      u_xlat7.y = x_1015;
      let x_1017 : vec4<f32> = u_xlat1;
      let x_1021 : vec4<f32> = x_679.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_1017.x, x_1017.y, x_1017.x, x_1017.y) + x_1021);
      let x_1024 : vec4<f32> = u_xlat6;
      let x_1025 : vec2<f32> = vec2<f32>(x_1024.x, x_1024.y);
      let x_1027 : f32 = u_xlat1.z;
      txVec2 = vec3<f32>(x_1025.x, x_1025.y, x_1027);
      let x_1034 : vec3<f32> = txVec2;
      let x_1036 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1034.xy, x_1034.z);
      u_xlat7.z = x_1036;
      let x_1039 : vec4<f32> = u_xlat6;
      let x_1040 : vec2<f32> = vec2<f32>(x_1039.z, x_1039.w);
      let x_1042 : f32 = u_xlat1.z;
      txVec3 = vec3<f32>(x_1040.x, x_1040.y, x_1042);
      let x_1049 : vec3<f32> = txVec3;
      let x_1051 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1049.xy, x_1049.z);
      u_xlat7.w = x_1051;
      let x_1053 : vec4<f32> = u_xlat7;
      u_xlat6.x = dot(x_1053, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1061 : f32 = x_679.x_MainLightShadowParams.y;
      u_xlatb31 = (x_1061 == 2.0f);
      let x_1063 : bool = u_xlatb31;
      if (x_1063) {
        let x_1067 : vec4<f32> = u_xlat1;
        let x_1071 : vec4<f32> = x_679.x_MainLightShadowmapSize;
        u_xlat31 = ((vec2<f32>(x_1067.x, x_1067.y) * vec2<f32>(x_1071.z, x_1071.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1076 : vec2<f32> = u_xlat31;
        u_xlat31 = floor(x_1076);
        let x_1078 : vec4<f32> = u_xlat1;
        let x_1081 : vec4<f32> = x_679.x_MainLightShadowmapSize;
        let x_1084 : vec2<f32> = u_xlat31;
        let x_1086 : vec2<f32> = ((vec2<f32>(x_1078.x, x_1078.y) * vec2<f32>(x_1081.z, x_1081.w)) + -(x_1084));
        let x_1087 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1086.x, x_1086.y, x_1087.z, x_1087.w);
        let x_1089 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1089.x, x_1089.x, x_1089.y, x_1089.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1094 : vec4<f32> = u_xlat8;
        let x_1096 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1094.x, x_1094.x, x_1094.z, x_1094.z) * vec4<f32>(x_1096.x, x_1096.x, x_1096.z, x_1096.z));
        let x_1100 : vec4<f32> = u_xlat9;
        u_xlat57 = (vec2<f32>(x_1100.y, x_1100.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1105 : vec4<f32> = u_xlat9;
        let x_1108 : vec4<f32> = u_xlat7;
        let x_1111 : vec2<f32> = ((vec2<f32>(x_1105.x, x_1105.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1108.x, x_1108.y)));
        let x_1112 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1111.x, x_1112.y, x_1111.y, x_1112.w);
        let x_1114 : vec4<f32> = u_xlat7;
        let x_1117 : vec2<f32> = (-(vec2<f32>(x_1114.x, x_1114.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1118 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1117.x, x_1117.y, x_1118.z, x_1118.w);
        let x_1121 : vec4<f32> = u_xlat7;
        u_xlat59 = min(vec2<f32>(x_1121.x, x_1121.y), vec2<f32>(0.0f, 0.0f));
        let x_1125 : vec2<f32> = u_xlat59;
        let x_1127 : vec2<f32> = u_xlat59;
        let x_1129 : vec4<f32> = u_xlat9;
        u_xlat59 = ((-(x_1125) * x_1127) + vec2<f32>(x_1129.x, x_1129.y));
        let x_1132 : vec4<f32> = u_xlat7;
        let x_1134 : vec2<f32> = max(vec2<f32>(x_1132.x, x_1132.y), vec2<f32>(0.0f, 0.0f));
        let x_1135 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1134.x, x_1134.y, x_1135.z, x_1135.w);
        let x_1137 : vec4<f32> = u_xlat7;
        let x_1140 : vec4<f32> = u_xlat7;
        let x_1143 : vec4<f32> = u_xlat8;
        let x_1145 : vec2<f32> = ((-(vec2<f32>(x_1137.x, x_1137.y)) * vec2<f32>(x_1140.x, x_1140.y)) + vec2<f32>(x_1143.y, x_1143.w));
        let x_1146 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1145.x, x_1145.y, x_1146.z, x_1146.w);
        let x_1148 : vec2<f32> = u_xlat59;
        u_xlat59 = (x_1148 + vec2<f32>(1.0f, 1.0f));
        let x_1150 : vec4<f32> = u_xlat7;
        let x_1152 : vec2<f32> = (vec2<f32>(x_1150.x, x_1150.y) + vec2<f32>(1.0f, 1.0f));
        let x_1153 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1152.x, x_1152.y, x_1153.z, x_1153.w);
        let x_1156 : vec4<f32> = u_xlat8;
        let x_1160 : vec2<f32> = (vec2<f32>(x_1156.x, x_1156.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1161 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1160.x, x_1160.y, x_1161.z, x_1161.w);
        let x_1164 : vec4<f32> = u_xlat9;
        let x_1166 : vec2<f32> = (vec2<f32>(x_1164.x, x_1164.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1167 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1166.x, x_1166.y, x_1167.z, x_1167.w);
        let x_1169 : vec2<f32> = u_xlat59;
        let x_1170 : vec2<f32> = (x_1169 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1171 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1170.x, x_1170.y, x_1171.z, x_1171.w);
        let x_1174 : vec4<f32> = u_xlat7;
        let x_1176 : vec2<f32> = (vec2<f32>(x_1174.x, x_1174.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1177 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1176.x, x_1176.y, x_1177.z, x_1177.w);
        let x_1179 : vec4<f32> = u_xlat8;
        let x_1181 : vec2<f32> = (vec2<f32>(x_1179.y, x_1179.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1182 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1181.x, x_1181.y, x_1182.z, x_1182.w);
        let x_1185 : f32 = u_xlat9.x;
        u_xlat10.z = x_1185;
        let x_1188 : f32 = u_xlat7.x;
        u_xlat10.w = x_1188;
        let x_1191 : f32 = u_xlat12.x;
        u_xlat11.z = x_1191;
        let x_1194 : f32 = u_xlat57.x;
        u_xlat11.w = x_1194;
        let x_1196 : vec4<f32> = u_xlat10;
        let x_1198 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1196.z, x_1196.w, x_1196.x, x_1196.z) + vec4<f32>(x_1198.z, x_1198.w, x_1198.x, x_1198.z));
        let x_1202 : f32 = u_xlat10.y;
        u_xlat9.z = x_1202;
        let x_1205 : f32 = u_xlat7.y;
        u_xlat9.w = x_1205;
        let x_1208 : f32 = u_xlat11.y;
        u_xlat12.z = x_1208;
        let x_1211 : f32 = u_xlat57.y;
        u_xlat12.w = x_1211;
        let x_1213 : vec4<f32> = u_xlat9;
        let x_1215 : vec4<f32> = u_xlat12;
        let x_1217 : vec3<f32> = (vec3<f32>(x_1213.z, x_1213.y, x_1213.w) + vec3<f32>(x_1215.z, x_1215.y, x_1215.w));
        let x_1218 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1217.x, x_1217.y, x_1217.z, x_1218.w);
        let x_1220 : vec4<f32> = u_xlat11;
        let x_1222 : vec4<f32> = u_xlat8;
        let x_1224 : vec3<f32> = (vec3<f32>(x_1220.x, x_1220.z, x_1220.w) / vec3<f32>(x_1222.z, x_1222.w, x_1222.y));
        let x_1225 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1224.x, x_1224.y, x_1224.z, x_1225.w);
        let x_1227 : vec4<f32> = u_xlat9;
        let x_1232 : vec3<f32> = (vec3<f32>(x_1227.x, x_1227.y, x_1227.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1233 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1232.x, x_1232.y, x_1232.z, x_1233.w);
        let x_1235 : vec4<f32> = u_xlat12;
        let x_1237 : vec4<f32> = u_xlat7;
        let x_1239 : vec3<f32> = (vec3<f32>(x_1235.z, x_1235.y, x_1235.w) / vec3<f32>(x_1237.x, x_1237.y, x_1237.z));
        let x_1240 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1239.x, x_1239.y, x_1239.z, x_1240.w);
        let x_1242 : vec4<f32> = u_xlat10;
        let x_1244 : vec3<f32> = (vec3<f32>(x_1242.x, x_1242.y, x_1242.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1245 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1244.x, x_1244.y, x_1244.z, x_1245.w);
        let x_1247 : vec4<f32> = u_xlat9;
        let x_1250 : vec4<f32> = x_679.x_MainLightShadowmapSize;
        let x_1252 : vec3<f32> = (vec3<f32>(x_1247.y, x_1247.x, x_1247.z) * vec3<f32>(x_1250.x, x_1250.x, x_1250.x));
        let x_1253 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1252.x, x_1252.y, x_1252.z, x_1253.w);
        let x_1255 : vec4<f32> = u_xlat10;
        let x_1258 : vec4<f32> = x_679.x_MainLightShadowmapSize;
        let x_1260 : vec3<f32> = (vec3<f32>(x_1255.x, x_1255.y, x_1255.z) * vec3<f32>(x_1258.y, x_1258.y, x_1258.y));
        let x_1261 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1260.x, x_1260.y, x_1260.z, x_1261.w);
        let x_1264 : f32 = u_xlat10.x;
        u_xlat9.w = x_1264;
        let x_1266 : vec2<f32> = u_xlat31;
        let x_1269 : vec4<f32> = x_679.x_MainLightShadowmapSize;
        let x_1272 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1266.x, x_1266.y, x_1266.x, x_1266.y) * vec4<f32>(x_1269.x, x_1269.y, x_1269.x, x_1269.y)) + vec4<f32>(x_1272.y, x_1272.w, x_1272.x, x_1272.w));
        let x_1275 : vec2<f32> = u_xlat31;
        let x_1277 : vec4<f32> = x_679.x_MainLightShadowmapSize;
        let x_1280 : vec4<f32> = u_xlat9;
        let x_1282 : vec2<f32> = ((x_1275 * vec2<f32>(x_1277.x, x_1277.y)) + vec2<f32>(x_1280.z, x_1280.w));
        let x_1283 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1282.x, x_1282.y, x_1283.z, x_1283.w);
        let x_1286 : f32 = u_xlat9.y;
        u_xlat10.w = x_1286;
        let x_1288 : vec4<f32> = u_xlat10;
        let x_1289 : vec2<f32> = vec2<f32>(x_1288.y, x_1288.z);
        let x_1290 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1290.x, x_1289.x, x_1290.z, x_1289.y);
        let x_1293 : vec2<f32> = u_xlat31;
        let x_1296 : vec4<f32> = x_679.x_MainLightShadowmapSize;
        let x_1299 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_1293.x, x_1293.y, x_1293.x, x_1293.y) * vec4<f32>(x_1296.x, x_1296.y, x_1296.x, x_1296.y)) + vec4<f32>(x_1299.x, x_1299.y, x_1299.z, x_1299.y));
        let x_1302 : vec2<f32> = u_xlat31;
        let x_1305 : vec4<f32> = x_679.x_MainLightShadowmapSize;
        let x_1308 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1302.x, x_1302.y, x_1302.x, x_1302.y) * vec4<f32>(x_1305.x, x_1305.y, x_1305.x, x_1305.y)) + vec4<f32>(x_1308.w, x_1308.y, x_1308.w, x_1308.z));
        let x_1311 : vec2<f32> = u_xlat31;
        let x_1314 : vec4<f32> = x_679.x_MainLightShadowmapSize;
        let x_1317 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1311.x, x_1311.y, x_1311.x, x_1311.y) * vec4<f32>(x_1314.x, x_1314.y, x_1314.x, x_1314.y)) + vec4<f32>(x_1317.x, x_1317.w, x_1317.z, x_1317.w));
        let x_1321 : vec4<f32> = u_xlat7;
        let x_1323 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_1321.x, x_1321.x, x_1321.x, x_1321.y) * vec4<f32>(x_1323.z, x_1323.w, x_1323.y, x_1323.z));
        let x_1327 : vec4<f32> = u_xlat7;
        let x_1329 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1327.y, x_1327.y, x_1327.z, x_1327.z) * x_1329);
        let x_1332 : f32 = u_xlat7.z;
        let x_1334 : f32 = u_xlat8.y;
        u_xlat31.x = (x_1332 * x_1334);
        let x_1338 : vec4<f32> = u_xlat11;
        let x_1339 : vec2<f32> = vec2<f32>(x_1338.x, x_1338.y);
        let x_1341 : f32 = u_xlat1.z;
        txVec4 = vec3<f32>(x_1339.x, x_1339.y, x_1341);
        let x_1349 : vec3<f32> = txVec4;
        let x_1351 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1349.xy, x_1349.z);
        u_xlat56.x = x_1351;
        let x_1354 : vec4<f32> = u_xlat11;
        let x_1355 : vec2<f32> = vec2<f32>(x_1354.z, x_1354.w);
        let x_1357 : f32 = u_xlat1.z;
        txVec5 = vec3<f32>(x_1355.x, x_1355.y, x_1357);
        let x_1365 : vec3<f32> = txVec5;
        let x_1367 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1365.xy, x_1365.z);
        u_xlat81 = x_1367;
        let x_1368 : f32 = u_xlat81;
        let x_1370 : f32 = u_xlat14.y;
        u_xlat81 = (x_1368 * x_1370);
        let x_1373 : f32 = u_xlat14.x;
        let x_1375 : f32 = u_xlat56.x;
        let x_1377 : f32 = u_xlat81;
        u_xlat56.x = ((x_1373 * x_1375) + x_1377);
        let x_1381 : vec4<f32> = u_xlat12;
        let x_1382 : vec2<f32> = vec2<f32>(x_1381.x, x_1381.y);
        let x_1384 : f32 = u_xlat1.z;
        txVec6 = vec3<f32>(x_1382.x, x_1382.y, x_1384);
        let x_1391 : vec3<f32> = txVec6;
        let x_1393 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1391.xy, x_1391.z);
        u_xlat81 = x_1393;
        let x_1395 : f32 = u_xlat14.z;
        let x_1396 : f32 = u_xlat81;
        let x_1399 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1395 * x_1396) + x_1399);
        let x_1403 : vec4<f32> = u_xlat10;
        let x_1404 : vec2<f32> = vec2<f32>(x_1403.x, x_1403.y);
        let x_1406 : f32 = u_xlat1.z;
        txVec7 = vec3<f32>(x_1404.x, x_1404.y, x_1406);
        let x_1413 : vec3<f32> = txVec7;
        let x_1415 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1413.xy, x_1413.z);
        u_xlat81 = x_1415;
        let x_1417 : f32 = u_xlat14.w;
        let x_1418 : f32 = u_xlat81;
        let x_1421 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1417 * x_1418) + x_1421);
        let x_1425 : vec4<f32> = u_xlat13;
        let x_1426 : vec2<f32> = vec2<f32>(x_1425.x, x_1425.y);
        let x_1428 : f32 = u_xlat1.z;
        txVec8 = vec3<f32>(x_1426.x, x_1426.y, x_1428);
        let x_1435 : vec3<f32> = txVec8;
        let x_1437 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1435.xy, x_1435.z);
        u_xlat81 = x_1437;
        let x_1439 : f32 = u_xlat15.x;
        let x_1440 : f32 = u_xlat81;
        let x_1443 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1439 * x_1440) + x_1443);
        let x_1447 : vec4<f32> = u_xlat13;
        let x_1448 : vec2<f32> = vec2<f32>(x_1447.z, x_1447.w);
        let x_1450 : f32 = u_xlat1.z;
        txVec9 = vec3<f32>(x_1448.x, x_1448.y, x_1450);
        let x_1457 : vec3<f32> = txVec9;
        let x_1459 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1457.xy, x_1457.z);
        u_xlat81 = x_1459;
        let x_1461 : f32 = u_xlat15.y;
        let x_1462 : f32 = u_xlat81;
        let x_1465 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1461 * x_1462) + x_1465);
        let x_1469 : vec4<f32> = u_xlat10;
        let x_1470 : vec2<f32> = vec2<f32>(x_1469.z, x_1469.w);
        let x_1472 : f32 = u_xlat1.z;
        txVec10 = vec3<f32>(x_1470.x, x_1470.y, x_1472);
        let x_1479 : vec3<f32> = txVec10;
        let x_1481 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1479.xy, x_1479.z);
        u_xlat81 = x_1481;
        let x_1483 : f32 = u_xlat15.z;
        let x_1484 : f32 = u_xlat81;
        let x_1487 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1483 * x_1484) + x_1487);
        let x_1491 : vec4<f32> = u_xlat9;
        let x_1492 : vec2<f32> = vec2<f32>(x_1491.x, x_1491.y);
        let x_1494 : f32 = u_xlat1.z;
        txVec11 = vec3<f32>(x_1492.x, x_1492.y, x_1494);
        let x_1501 : vec3<f32> = txVec11;
        let x_1503 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1501.xy, x_1501.z);
        u_xlat81 = x_1503;
        let x_1505 : f32 = u_xlat15.w;
        let x_1506 : f32 = u_xlat81;
        let x_1509 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1505 * x_1506) + x_1509);
        let x_1513 : vec4<f32> = u_xlat9;
        let x_1514 : vec2<f32> = vec2<f32>(x_1513.z, x_1513.w);
        let x_1516 : f32 = u_xlat1.z;
        txVec12 = vec3<f32>(x_1514.x, x_1514.y, x_1516);
        let x_1523 : vec3<f32> = txVec12;
        let x_1525 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1523.xy, x_1523.z);
        u_xlat81 = x_1525;
        let x_1527 : f32 = u_xlat31.x;
        let x_1528 : f32 = u_xlat81;
        let x_1531 : f32 = u_xlat56.x;
        u_xlat6.x = ((x_1527 * x_1528) + x_1531);
      } else {
        let x_1535 : vec4<f32> = u_xlat1;
        let x_1538 : vec4<f32> = x_679.x_MainLightShadowmapSize;
        u_xlat31 = ((vec2<f32>(x_1535.x, x_1535.y) * vec2<f32>(x_1538.z, x_1538.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1542 : vec2<f32> = u_xlat31;
        u_xlat31 = floor(x_1542);
        let x_1544 : vec4<f32> = u_xlat1;
        let x_1547 : vec4<f32> = x_679.x_MainLightShadowmapSize;
        let x_1550 : vec2<f32> = u_xlat31;
        let x_1552 : vec2<f32> = ((vec2<f32>(x_1544.x, x_1544.y) * vec2<f32>(x_1547.z, x_1547.w)) + -(x_1550));
        let x_1553 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1552.x, x_1552.y, x_1553.z, x_1553.w);
        let x_1555 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1555.x, x_1555.x, x_1555.y, x_1555.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1558 : vec4<f32> = u_xlat8;
        let x_1560 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1558.x, x_1558.x, x_1558.z, x_1558.z) * vec4<f32>(x_1560.x, x_1560.x, x_1560.z, x_1560.z));
        let x_1563 : vec4<f32> = u_xlat9;
        let x_1567 : vec2<f32> = (vec2<f32>(x_1563.y, x_1563.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1568 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1568.x, x_1567.x, x_1568.z, x_1567.y);
        let x_1570 : vec4<f32> = u_xlat9;
        let x_1573 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_1570.x, x_1570.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1573.x, x_1573.y)));
        let x_1577 : vec4<f32> = u_xlat7;
        let x_1580 : vec2<f32> = (-(vec2<f32>(x_1577.x, x_1577.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1581 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1580.x, x_1581.y, x_1580.y, x_1581.w);
        let x_1583 : vec4<f32> = u_xlat7;
        let x_1585 : vec2<f32> = min(vec2<f32>(x_1583.x, x_1583.y), vec2<f32>(0.0f, 0.0f));
        let x_1586 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1585.x, x_1585.y, x_1586.z, x_1586.w);
        let x_1588 : vec4<f32> = u_xlat9;
        let x_1591 : vec4<f32> = u_xlat9;
        let x_1594 : vec4<f32> = u_xlat8;
        let x_1596 : vec2<f32> = ((-(vec2<f32>(x_1588.x, x_1588.y)) * vec2<f32>(x_1591.x, x_1591.y)) + vec2<f32>(x_1594.x, x_1594.z));
        let x_1597 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1596.x, x_1597.y, x_1596.y, x_1597.w);
        let x_1599 : vec4<f32> = u_xlat7;
        let x_1601 : vec2<f32> = max(vec2<f32>(x_1599.x, x_1599.y), vec2<f32>(0.0f, 0.0f));
        let x_1602 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1601.x, x_1601.y, x_1602.z, x_1602.w);
        let x_1604 : vec4<f32> = u_xlat9;
        let x_1607 : vec4<f32> = u_xlat9;
        let x_1610 : vec4<f32> = u_xlat8;
        let x_1612 : vec2<f32> = ((-(vec2<f32>(x_1604.x, x_1604.y)) * vec2<f32>(x_1607.x, x_1607.y)) + vec2<f32>(x_1610.y, x_1610.w));
        let x_1613 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1613.x, x_1612.x, x_1613.z, x_1612.y);
        let x_1615 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1615 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1619 : f32 = u_xlat8.y;
        u_xlat9.z = (x_1619 * 0.08163200318813323975f);
        let x_1623 : vec2<f32> = u_xlat57;
        let x_1626 : vec2<f32> = (vec2<f32>(x_1623.y, x_1623.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1627 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1626.x, x_1626.y, x_1627.z, x_1627.w);
        let x_1629 : vec4<f32> = u_xlat8;
        u_xlat57 = (vec2<f32>(x_1629.x, x_1629.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1633 : f32 = u_xlat8.w;
        u_xlat11.z = (x_1633 * 0.08163200318813323975f);
        let x_1637 : f32 = u_xlat11.y;
        u_xlat9.x = x_1637;
        let x_1639 : vec4<f32> = u_xlat7;
        let x_1646 : vec2<f32> = ((vec2<f32>(x_1639.x, x_1639.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1647 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1647.x, x_1646.x, x_1647.z, x_1646.y);
        let x_1649 : vec4<f32> = u_xlat7;
        let x_1653 : vec2<f32> = ((vec2<f32>(x_1649.x, x_1649.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1654 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1653.x, x_1654.y, x_1653.y, x_1654.w);
        let x_1657 : f32 = u_xlat57.x;
        u_xlat8.y = x_1657;
        let x_1660 : f32 = u_xlat10.y;
        u_xlat8.w = x_1660;
        let x_1662 : vec4<f32> = u_xlat8;
        let x_1663 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1662 + x_1663);
        let x_1665 : vec4<f32> = u_xlat7;
        let x_1668 : vec2<f32> = ((vec2<f32>(x_1665.y, x_1665.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1669 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1669.x, x_1668.x, x_1669.z, x_1668.y);
        let x_1671 : vec4<f32> = u_xlat7;
        let x_1674 : vec2<f32> = ((vec2<f32>(x_1671.y, x_1671.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1675 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1674.x, x_1675.y, x_1674.y, x_1675.w);
        let x_1678 : f32 = u_xlat57.y;
        u_xlat10.y = x_1678;
        let x_1680 : vec4<f32> = u_xlat10;
        let x_1681 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1680 + x_1681);
        let x_1683 : vec4<f32> = u_xlat8;
        let x_1684 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_1683 / x_1684);
        let x_1686 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1686 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1692 : vec4<f32> = u_xlat10;
        let x_1693 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_1692 / x_1693);
        let x_1695 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1695 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1697 : vec4<f32> = u_xlat8;
        let x_1700 : vec4<f32> = x_679.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1697.w, x_1697.x, x_1697.y, x_1697.z) * vec4<f32>(x_1700.x, x_1700.x, x_1700.x, x_1700.x));
        let x_1703 : vec4<f32> = u_xlat10;
        let x_1706 : vec4<f32> = x_679.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1703.x, x_1703.w, x_1703.y, x_1703.z) * vec4<f32>(x_1706.y, x_1706.y, x_1706.y, x_1706.y));
        let x_1709 : vec4<f32> = u_xlat8;
        let x_1710 : vec3<f32> = vec3<f32>(x_1709.y, x_1709.z, x_1709.w);
        let x_1711 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1710.x, x_1711.y, x_1710.y, x_1710.z);
        let x_1714 : f32 = u_xlat10.x;
        u_xlat11.y = x_1714;
        let x_1716 : vec2<f32> = u_xlat31;
        let x_1719 : vec4<f32> = x_679.x_MainLightShadowmapSize;
        let x_1722 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1716.x, x_1716.y, x_1716.x, x_1716.y) * vec4<f32>(x_1719.x, x_1719.y, x_1719.x, x_1719.y)) + vec4<f32>(x_1722.x, x_1722.y, x_1722.z, x_1722.y));
        let x_1725 : vec2<f32> = u_xlat31;
        let x_1727 : vec4<f32> = x_679.x_MainLightShadowmapSize;
        let x_1730 : vec4<f32> = u_xlat11;
        let x_1732 : vec2<f32> = ((x_1725 * vec2<f32>(x_1727.x, x_1727.y)) + vec2<f32>(x_1730.w, x_1730.y));
        let x_1733 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1732.x, x_1732.y, x_1733.z, x_1733.w);
        let x_1736 : f32 = u_xlat11.y;
        u_xlat8.y = x_1736;
        let x_1739 : f32 = u_xlat10.z;
        u_xlat11.y = x_1739;
        let x_1741 : vec2<f32> = u_xlat31;
        let x_1744 : vec4<f32> = x_679.x_MainLightShadowmapSize;
        let x_1747 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_1741.x, x_1741.y, x_1741.x, x_1741.y) * vec4<f32>(x_1744.x, x_1744.y, x_1744.x, x_1744.y)) + vec4<f32>(x_1747.x, x_1747.y, x_1747.z, x_1747.y));
        let x_1751 : vec2<f32> = u_xlat31;
        let x_1753 : vec4<f32> = x_679.x_MainLightShadowmapSize;
        let x_1756 : vec4<f32> = u_xlat11;
        u_xlat63 = ((x_1751 * vec2<f32>(x_1753.x, x_1753.y)) + vec2<f32>(x_1756.w, x_1756.y));
        let x_1760 : f32 = u_xlat11.y;
        u_xlat8.z = x_1760;
        let x_1762 : vec2<f32> = u_xlat31;
        let x_1765 : vec4<f32> = x_679.x_MainLightShadowmapSize;
        let x_1768 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1762.x, x_1762.y, x_1762.x, x_1762.y) * vec4<f32>(x_1765.x, x_1765.y, x_1765.x, x_1765.y)) + vec4<f32>(x_1768.x, x_1768.y, x_1768.x, x_1768.z));
        let x_1772 : f32 = u_xlat10.w;
        u_xlat11.y = x_1772;
        let x_1775 : vec2<f32> = u_xlat31;
        let x_1778 : vec4<f32> = x_679.x_MainLightShadowmapSize;
        let x_1781 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1775.x, x_1775.y, x_1775.x, x_1775.y) * vec4<f32>(x_1778.x, x_1778.y, x_1778.x, x_1778.y)) + vec4<f32>(x_1781.x, x_1781.y, x_1781.z, x_1781.y));
        let x_1785 : vec2<f32> = u_xlat31;
        let x_1787 : vec4<f32> = x_679.x_MainLightShadowmapSize;
        let x_1790 : vec4<f32> = u_xlat11;
        let x_1792 : vec2<f32> = ((x_1785 * vec2<f32>(x_1787.x, x_1787.y)) + vec2<f32>(x_1790.w, x_1790.y));
        let x_1793 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_1792.x, x_1792.y, x_1793.z);
        let x_1796 : f32 = u_xlat11.y;
        u_xlat8.w = x_1796;
        let x_1799 : vec2<f32> = u_xlat31;
        let x_1801 : vec4<f32> = x_679.x_MainLightShadowmapSize;
        let x_1804 : vec4<f32> = u_xlat8;
        let x_1806 : vec2<f32> = ((x_1799 * vec2<f32>(x_1801.x, x_1801.y)) + vec2<f32>(x_1804.x, x_1804.w));
        let x_1807 : vec4<f32> = u_xlat17;
        u_xlat17 = vec4<f32>(x_1806.x, x_1806.y, x_1807.z, x_1807.w);
        let x_1809 : vec4<f32> = u_xlat11;
        let x_1810 : vec3<f32> = vec3<f32>(x_1809.x, x_1809.z, x_1809.w);
        let x_1811 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1810.x, x_1811.y, x_1810.y, x_1810.z);
        let x_1813 : vec2<f32> = u_xlat31;
        let x_1816 : vec4<f32> = x_679.x_MainLightShadowmapSize;
        let x_1819 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1813.x, x_1813.y, x_1813.x, x_1813.y) * vec4<f32>(x_1816.x, x_1816.y, x_1816.x, x_1816.y)) + vec4<f32>(x_1819.x, x_1819.y, x_1819.z, x_1819.y));
        let x_1823 : vec2<f32> = u_xlat31;
        let x_1825 : vec4<f32> = x_679.x_MainLightShadowmapSize;
        let x_1828 : vec4<f32> = u_xlat10;
        u_xlat60 = ((x_1823 * vec2<f32>(x_1825.x, x_1825.y)) + vec2<f32>(x_1828.w, x_1828.y));
        let x_1832 : f32 = u_xlat8.x;
        u_xlat10.x = x_1832;
        let x_1834 : vec2<f32> = u_xlat31;
        let x_1836 : vec4<f32> = x_679.x_MainLightShadowmapSize;
        let x_1839 : vec4<f32> = u_xlat10;
        u_xlat31 = ((x_1834 * vec2<f32>(x_1836.x, x_1836.y)) + vec2<f32>(x_1839.x, x_1839.y));
        let x_1843 : vec4<f32> = u_xlat7;
        let x_1845 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1843.x, x_1843.x, x_1843.x, x_1843.x) * x_1845);
        let x_1848 : vec4<f32> = u_xlat7;
        let x_1850 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_1848.y, x_1848.y, x_1848.y, x_1848.y) * x_1850);
        let x_1853 : vec4<f32> = u_xlat7;
        let x_1855 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_1853.z, x_1853.z, x_1853.z, x_1853.z) * x_1855);
        let x_1857 : vec4<f32> = u_xlat7;
        let x_1859 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_1857.w, x_1857.w, x_1857.w, x_1857.w) * x_1859);
        let x_1862 : vec4<f32> = u_xlat12;
        let x_1863 : vec2<f32> = vec2<f32>(x_1862.x, x_1862.y);
        let x_1865 : f32 = u_xlat1.z;
        txVec13 = vec3<f32>(x_1863.x, x_1863.y, x_1865);
        let x_1872 : vec3<f32> = txVec13;
        let x_1874 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1872.xy, x_1872.z);
        u_xlat81 = x_1874;
        let x_1876 : vec4<f32> = u_xlat12;
        let x_1877 : vec2<f32> = vec2<f32>(x_1876.z, x_1876.w);
        let x_1879 : f32 = u_xlat1.z;
        txVec14 = vec3<f32>(x_1877.x, x_1877.y, x_1879);
        let x_1886 : vec3<f32> = txVec14;
        let x_1888 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1886.xy, x_1886.z);
        u_xlat8.x = x_1888;
        let x_1891 : f32 = u_xlat8.x;
        let x_1893 : f32 = u_xlat18.y;
        u_xlat8.x = (x_1891 * x_1893);
        let x_1897 : f32 = u_xlat18.x;
        let x_1898 : f32 = u_xlat81;
        let x_1901 : f32 = u_xlat8.x;
        u_xlat81 = ((x_1897 * x_1898) + x_1901);
        let x_1904 : vec4<f32> = u_xlat13;
        let x_1905 : vec2<f32> = vec2<f32>(x_1904.x, x_1904.y);
        let x_1907 : f32 = u_xlat1.z;
        txVec15 = vec3<f32>(x_1905.x, x_1905.y, x_1907);
        let x_1914 : vec3<f32> = txVec15;
        let x_1916 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1914.xy, x_1914.z);
        u_xlat8.x = x_1916;
        let x_1919 : f32 = u_xlat18.z;
        let x_1921 : f32 = u_xlat8.x;
        let x_1923 : f32 = u_xlat81;
        u_xlat81 = ((x_1919 * x_1921) + x_1923);
        let x_1926 : vec4<f32> = u_xlat15;
        let x_1927 : vec2<f32> = vec2<f32>(x_1926.x, x_1926.y);
        let x_1929 : f32 = u_xlat1.z;
        txVec16 = vec3<f32>(x_1927.x, x_1927.y, x_1929);
        let x_1936 : vec3<f32> = txVec16;
        let x_1938 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1936.xy, x_1936.z);
        u_xlat8.x = x_1938;
        let x_1941 : f32 = u_xlat18.w;
        let x_1943 : f32 = u_xlat8.x;
        let x_1945 : f32 = u_xlat81;
        u_xlat81 = ((x_1941 * x_1943) + x_1945);
        let x_1948 : vec4<f32> = u_xlat14;
        let x_1949 : vec2<f32> = vec2<f32>(x_1948.x, x_1948.y);
        let x_1951 : f32 = u_xlat1.z;
        txVec17 = vec3<f32>(x_1949.x, x_1949.y, x_1951);
        let x_1958 : vec3<f32> = txVec17;
        let x_1960 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1958.xy, x_1958.z);
        u_xlat8.x = x_1960;
        let x_1963 : f32 = u_xlat19.x;
        let x_1965 : f32 = u_xlat8.x;
        let x_1967 : f32 = u_xlat81;
        u_xlat81 = ((x_1963 * x_1965) + x_1967);
        let x_1970 : vec4<f32> = u_xlat14;
        let x_1971 : vec2<f32> = vec2<f32>(x_1970.z, x_1970.w);
        let x_1973 : f32 = u_xlat1.z;
        txVec18 = vec3<f32>(x_1971.x, x_1971.y, x_1973);
        let x_1980 : vec3<f32> = txVec18;
        let x_1982 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1980.xy, x_1980.z);
        u_xlat8.x = x_1982;
        let x_1985 : f32 = u_xlat19.y;
        let x_1987 : f32 = u_xlat8.x;
        let x_1989 : f32 = u_xlat81;
        u_xlat81 = ((x_1985 * x_1987) + x_1989);
        let x_1992 : vec2<f32> = u_xlat63;
        let x_1994 : f32 = u_xlat1.z;
        txVec19 = vec3<f32>(x_1992.x, x_1992.y, x_1994);
        let x_2001 : vec3<f32> = txVec19;
        let x_2003 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2001.xy, x_2001.z);
        u_xlat8.x = x_2003;
        let x_2006 : f32 = u_xlat19.z;
        let x_2008 : f32 = u_xlat8.x;
        let x_2010 : f32 = u_xlat81;
        u_xlat81 = ((x_2006 * x_2008) + x_2010);
        let x_2013 : vec4<f32> = u_xlat15;
        let x_2014 : vec2<f32> = vec2<f32>(x_2013.z, x_2013.w);
        let x_2016 : f32 = u_xlat1.z;
        txVec20 = vec3<f32>(x_2014.x, x_2014.y, x_2016);
        let x_2023 : vec3<f32> = txVec20;
        let x_2025 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2023.xy, x_2023.z);
        u_xlat8.x = x_2025;
        let x_2028 : f32 = u_xlat19.w;
        let x_2030 : f32 = u_xlat8.x;
        let x_2032 : f32 = u_xlat81;
        u_xlat81 = ((x_2028 * x_2030) + x_2032);
        let x_2035 : vec4<f32> = u_xlat16;
        let x_2036 : vec2<f32> = vec2<f32>(x_2035.x, x_2035.y);
        let x_2038 : f32 = u_xlat1.z;
        txVec21 = vec3<f32>(x_2036.x, x_2036.y, x_2038);
        let x_2045 : vec3<f32> = txVec21;
        let x_2047 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2045.xy, x_2045.z);
        u_xlat8.x = x_2047;
        let x_2050 : f32 = u_xlat20.x;
        let x_2052 : f32 = u_xlat8.x;
        let x_2054 : f32 = u_xlat81;
        u_xlat81 = ((x_2050 * x_2052) + x_2054);
        let x_2057 : vec4<f32> = u_xlat16;
        let x_2058 : vec2<f32> = vec2<f32>(x_2057.z, x_2057.w);
        let x_2060 : f32 = u_xlat1.z;
        txVec22 = vec3<f32>(x_2058.x, x_2058.y, x_2060);
        let x_2067 : vec3<f32> = txVec22;
        let x_2069 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2067.xy, x_2067.z);
        u_xlat8.x = x_2069;
        let x_2072 : f32 = u_xlat20.y;
        let x_2074 : f32 = u_xlat8.x;
        let x_2076 : f32 = u_xlat81;
        u_xlat81 = ((x_2072 * x_2074) + x_2076);
        let x_2079 : vec3<f32> = u_xlat33;
        let x_2080 : vec2<f32> = vec2<f32>(x_2079.x, x_2079.y);
        let x_2082 : f32 = u_xlat1.z;
        txVec23 = vec3<f32>(x_2080.x, x_2080.y, x_2082);
        let x_2089 : vec3<f32> = txVec23;
        let x_2091 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2089.xy, x_2089.z);
        u_xlat8.x = x_2091;
        let x_2094 : f32 = u_xlat20.z;
        let x_2096 : f32 = u_xlat8.x;
        let x_2098 : f32 = u_xlat81;
        u_xlat81 = ((x_2094 * x_2096) + x_2098);
        let x_2101 : vec4<f32> = u_xlat17;
        let x_2102 : vec2<f32> = vec2<f32>(x_2101.x, x_2101.y);
        let x_2104 : f32 = u_xlat1.z;
        txVec24 = vec3<f32>(x_2102.x, x_2102.y, x_2104);
        let x_2111 : vec3<f32> = txVec24;
        let x_2113 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2111.xy, x_2111.z);
        u_xlat8.x = x_2113;
        let x_2116 : f32 = u_xlat20.w;
        let x_2118 : f32 = u_xlat8.x;
        let x_2120 : f32 = u_xlat81;
        u_xlat81 = ((x_2116 * x_2118) + x_2120);
        let x_2123 : vec4<f32> = u_xlat11;
        let x_2124 : vec2<f32> = vec2<f32>(x_2123.x, x_2123.y);
        let x_2126 : f32 = u_xlat1.z;
        txVec25 = vec3<f32>(x_2124.x, x_2124.y, x_2126);
        let x_2133 : vec3<f32> = txVec25;
        let x_2135 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2133.xy, x_2133.z);
        u_xlat8.x = x_2135;
        let x_2138 : f32 = u_xlat7.x;
        let x_2140 : f32 = u_xlat8.x;
        let x_2142 : f32 = u_xlat81;
        u_xlat81 = ((x_2138 * x_2140) + x_2142);
        let x_2145 : vec4<f32> = u_xlat11;
        let x_2146 : vec2<f32> = vec2<f32>(x_2145.z, x_2145.w);
        let x_2148 : f32 = u_xlat1.z;
        txVec26 = vec3<f32>(x_2146.x, x_2146.y, x_2148);
        let x_2155 : vec3<f32> = txVec26;
        let x_2157 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2155.xy, x_2155.z);
        u_xlat7.x = x_2157;
        let x_2160 : f32 = u_xlat7.y;
        let x_2162 : f32 = u_xlat7.x;
        let x_2164 : f32 = u_xlat81;
        u_xlat81 = ((x_2160 * x_2162) + x_2164);
        let x_2167 : vec2<f32> = u_xlat60;
        let x_2169 : f32 = u_xlat1.z;
        txVec27 = vec3<f32>(x_2167.x, x_2167.y, x_2169);
        let x_2176 : vec3<f32> = txVec27;
        let x_2178 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2176.xy, x_2176.z);
        u_xlat7.x = x_2178;
        let x_2181 : f32 = u_xlat7.z;
        let x_2183 : f32 = u_xlat7.x;
        let x_2185 : f32 = u_xlat81;
        u_xlat81 = ((x_2181 * x_2183) + x_2185);
        let x_2188 : vec2<f32> = u_xlat31;
        let x_2190 : f32 = u_xlat1.z;
        txVec28 = vec3<f32>(x_2188.x, x_2188.y, x_2190);
        let x_2197 : vec3<f32> = txVec28;
        let x_2199 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2197.xy, x_2197.z);
        u_xlat31.x = x_2199;
        let x_2202 : f32 = u_xlat7.w;
        let x_2204 : f32 = u_xlat31.x;
        let x_2206 : f32 = u_xlat81;
        u_xlat6.x = ((x_2202 * x_2204) + x_2206);
      }
    }
  } else {
    let x_2211 : vec4<f32> = u_xlat1;
    let x_2212 : vec2<f32> = vec2<f32>(x_2211.x, x_2211.y);
    let x_2214 : f32 = u_xlat1.z;
    txVec29 = vec3<f32>(x_2212.x, x_2212.y, x_2214);
    let x_2221 : vec3<f32> = txVec29;
    let x_2223 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2221.xy, x_2221.z);
    u_xlat6.x = x_2223;
  }
  let x_2226 : f32 = x_679.x_MainLightShadowParams.x;
  u_xlat1.x = (-(x_2226) + 1.0f);
  let x_2231 : f32 = u_xlat6.x;
  let x_2233 : f32 = x_679.x_MainLightShadowParams.x;
  let x_2236 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_2231 * x_2233) + x_2236);
  let x_2241 : f32 = u_xlat1.z;
  u_xlatb26 = (0.0f >= x_2241);
  let x_2245 : f32 = u_xlat1.z;
  u_xlatb51 = (x_2245 >= 1.0f);
  let x_2247 : bool = u_xlatb51;
  let x_2248 : bool = u_xlatb26;
  u_xlatb26 = (x_2247 | x_2248);
  let x_2250 : bool = u_xlatb26;
  if (x_2250) {
    x_2251 = 1.0f;
  } else {
    let x_2256 : f32 = u_xlat1.x;
    x_2251 = x_2256;
  }
  let x_2257 : f32 = x_2251;
  u_xlat1.x = x_2257;
  let x_2259 : vec3<f32> = vs_INTERP7;
  let x_2261 : vec3<f32> = x_135.x_WorldSpaceCameraPos;
  let x_2263 : vec3<f32> = (x_2259 + -(x_2261));
  let x_2264 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2263.x, x_2263.y, x_2263.z, x_2264.w);
  let x_2266 : vec4<f32> = u_xlat6;
  let x_2268 : vec4<f32> = u_xlat6;
  u_xlat26.x = dot(vec3<f32>(x_2266.x, x_2266.y, x_2266.z), vec3<f32>(x_2268.x, x_2268.y, x_2268.z));
  let x_2274 : f32 = u_xlat26.x;
  let x_2276 : f32 = x_679.x_MainLightShadowParams.z;
  let x_2279 : f32 = x_679.x_MainLightShadowParams.w;
  u_xlat51 = ((x_2274 * x_2276) + x_2279);
  let x_2281 : f32 = u_xlat51;
  u_xlat51 = clamp(x_2281, 0.0f, 1.0f);
  let x_2284 : f32 = u_xlat1.x;
  u_xlat6.x = (-(x_2284) + 1.0f);
  let x_2288 : f32 = u_xlat51;
  let x_2290 : f32 = u_xlat6.x;
  let x_2293 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_2288 * x_2290) + x_2293);
  let x_2303 : f32 = x_2301.x_MainLightCookieTextureFormat;
  u_xlatb51 = !((x_2303 == -1.0f));
  let x_2305 : bool = u_xlatb51;
  if (x_2305) {
    let x_2308 : vec3<f32> = vs_INTERP7;
    let x_2311 : vec4<f32> = x_2301.x_MainLightWorldToLight[1i];
    let x_2313 : vec2<f32> = (vec2<f32>(x_2308.y, x_2308.y) * vec2<f32>(x_2311.x, x_2311.y));
    let x_2314 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2313.x, x_2313.y, x_2314.z, x_2314.w);
    let x_2317 : vec4<f32> = x_2301.x_MainLightWorldToLight[0i];
    let x_2319 : vec3<f32> = vs_INTERP7;
    let x_2322 : vec4<f32> = u_xlat6;
    let x_2324 : vec2<f32> = ((vec2<f32>(x_2317.x, x_2317.y) * vec2<f32>(x_2319.x, x_2319.x)) + vec2<f32>(x_2322.x, x_2322.y));
    let x_2325 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2324.x, x_2324.y, x_2325.z, x_2325.w);
    let x_2328 : vec4<f32> = x_2301.x_MainLightWorldToLight[2i];
    let x_2330 : vec3<f32> = vs_INTERP7;
    let x_2333 : vec4<f32> = u_xlat6;
    let x_2335 : vec2<f32> = ((vec2<f32>(x_2328.x, x_2328.y) * vec2<f32>(x_2330.z, x_2330.z)) + vec2<f32>(x_2333.x, x_2333.y));
    let x_2336 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2335.x, x_2335.y, x_2336.z, x_2336.w);
    let x_2338 : vec4<f32> = u_xlat6;
    let x_2341 : vec4<f32> = x_2301.x_MainLightWorldToLight[3i];
    let x_2343 : vec2<f32> = (vec2<f32>(x_2338.x, x_2338.y) + vec2<f32>(x_2341.x, x_2341.y));
    let x_2344 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2343.x, x_2343.y, x_2344.z, x_2344.w);
    let x_2346 : vec4<f32> = u_xlat6;
    let x_2349 : vec2<f32> = ((vec2<f32>(x_2346.x, x_2346.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2350 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2349.x, x_2349.y, x_2350.z, x_2350.w);
    let x_2357 : vec4<f32> = u_xlat6;
    let x_2360 : f32 = x_135.x_GlobalMipBias.x;
    let x_2361 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2357.x, x_2357.y), x_2360);
    u_xlat6 = x_2361;
    let x_2364 : f32 = x_2301.x_MainLightCookieTextureFormat;
    let x_2366 : f32 = x_2301.x_MainLightCookieTextureFormat;
    let x_2368 : f32 = x_2301.x_MainLightCookieTextureFormat;
    let x_2370 : f32 = x_2301.x_MainLightCookieTextureFormat;
    let x_2371 : vec4<f32> = vec4<f32>(x_2364, x_2366, x_2368, x_2370);
    let x_2378 : vec4<bool> = (vec4<f32>(x_2371.x, x_2371.y, x_2371.z, x_2371.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_2378.x, x_2378.y);
    let x_2381 : bool = u_xlatb7.y;
    if (x_2381) {
      let x_2386 : f32 = u_xlat6.w;
      x_2382 = x_2386;
    } else {
      let x_2389 : f32 = u_xlat6.x;
      x_2382 = x_2389;
    }
    let x_2390 : f32 = x_2382;
    u_xlat51 = x_2390;
    let x_2392 : bool = u_xlatb7.x;
    if (x_2392) {
      let x_2396 : vec4<f32> = u_xlat6;
      x_2393 = vec3<f32>(x_2396.x, x_2396.y, x_2396.z);
    } else {
      let x_2399 : f32 = u_xlat51;
      x_2393 = vec3<f32>(x_2399, x_2399, x_2399);
    }
    let x_2401 : vec3<f32> = x_2393;
    let x_2402 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2401.x, x_2401.y, x_2401.z, x_2402.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_2408 : vec4<f32> = u_xlat6;
  let x_2411 : vec4<f32> = x_135.x_MainLightColor;
  let x_2413 : vec3<f32> = (vec3<f32>(x_2408.x, x_2408.y, x_2408.z) * vec3<f32>(x_2411.x, x_2411.y, x_2411.z));
  let x_2414 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2413.x, x_2413.y, x_2413.z, x_2414.w);
  let x_2416 : vec3<f32> = u_xlat5;
  let x_2418 : vec3<f32> = u_xlat25;
  u_xlat51 = dot(-(x_2416), x_2418);
  let x_2420 : f32 = u_xlat51;
  let x_2421 : f32 = u_xlat51;
  u_xlat51 = (x_2420 + x_2421);
  let x_2423 : vec3<f32> = u_xlat25;
  let x_2424 : f32 = u_xlat51;
  let x_2428 : vec3<f32> = u_xlat5;
  let x_2430 : vec3<f32> = ((x_2423 * -(vec3<f32>(x_2424, x_2424, x_2424))) + -(x_2428));
  let x_2431 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2430.x, x_2430.y, x_2430.z, x_2431.w);
  let x_2433 : vec3<f32> = u_xlat25;
  let x_2434 : vec3<f32> = u_xlat5;
  u_xlat51 = dot(x_2433, x_2434);
  let x_2436 : f32 = u_xlat51;
  u_xlat51 = clamp(x_2436, 0.0f, 1.0f);
  let x_2438 : f32 = u_xlat51;
  u_xlat51 = (-(x_2438) + 1.0f);
  let x_2441 : f32 = u_xlat51;
  let x_2442 : f32 = u_xlat51;
  u_xlat51 = (x_2441 * x_2442);
  let x_2444 : f32 = u_xlat51;
  let x_2445 : f32 = u_xlat51;
  u_xlat51 = (x_2444 * x_2445);
  let x_2447 : f32 = u_xlat76;
  u_xlat81 = ((-(x_2447) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2453 : f32 = u_xlat76;
  let x_2454 : f32 = u_xlat81;
  u_xlat76 = (x_2453 * x_2454);
  let x_2456 : f32 = u_xlat76;
  u_xlat76 = (x_2456 * 6.0f);
  let x_2467 : vec4<f32> = u_xlat7;
  let x_2469 : f32 = u_xlat76;
  let x_2470 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2467.x, x_2467.y, x_2467.z), x_2469);
  u_xlat7 = x_2470;
  let x_2472 : f32 = u_xlat7.w;
  u_xlat76 = (x_2472 + -1.0f);
  let x_2475 : f32 = x_48.unity_SpecCube0_HDR.w;
  let x_2476 : f32 = u_xlat76;
  u_xlat76 = ((x_2475 * x_2476) + 1.0f);
  let x_2479 : f32 = u_xlat76;
  u_xlat76 = max(x_2479, 0.0f);
  let x_2481 : f32 = u_xlat76;
  u_xlat76 = log2(x_2481);
  let x_2483 : f32 = u_xlat76;
  let x_2485 : f32 = x_48.unity_SpecCube0_HDR.y;
  u_xlat76 = (x_2483 * x_2485);
  let x_2487 : f32 = u_xlat76;
  u_xlat76 = exp2(x_2487);
  let x_2489 : f32 = u_xlat76;
  let x_2491 : f32 = x_48.unity_SpecCube0_HDR.x;
  u_xlat76 = (x_2489 * x_2491);
  let x_2493 : vec4<f32> = u_xlat7;
  let x_2495 : f32 = u_xlat76;
  let x_2497 : vec3<f32> = (vec3<f32>(x_2493.x, x_2493.y, x_2493.z) * vec3<f32>(x_2495, x_2495, x_2495));
  let x_2498 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2497.x, x_2497.y, x_2497.z, x_2498.w);
  let x_2500 : f32 = u_xlat77;
  let x_2502 : f32 = u_xlat77;
  let x_2506 : vec2<f32> = ((vec2<f32>(x_2500, x_2500) * vec2<f32>(x_2502, x_2502)) + vec2<f32>(-1.0f, 1.0f));
  let x_2507 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2506.x, x_2506.y, x_2507.z, x_2507.w);
  let x_2510 : f32 = u_xlat8.y;
  u_xlat76 = (1.0f / x_2510);
  let x_2512 : vec3<f32> = u_xlat2;
  let x_2514 : vec4<f32> = u_xlat0;
  u_xlat33 = (-(x_2512) + vec3<f32>(x_2514.x, x_2514.x, x_2514.x));
  let x_2517 : f32 = u_xlat51;
  let x_2519 : vec3<f32> = u_xlat33;
  let x_2521 : vec3<f32> = u_xlat2;
  u_xlat33 = ((vec3<f32>(x_2517, x_2517, x_2517) * x_2519) + x_2521);
  let x_2523 : f32 = u_xlat76;
  let x_2525 : vec3<f32> = u_xlat33;
  u_xlat33 = (vec3<f32>(x_2523, x_2523, x_2523) * x_2525);
  let x_2527 : vec4<f32> = u_xlat7;
  let x_2529 : vec3<f32> = u_xlat33;
  let x_2530 : vec3<f32> = (vec3<f32>(x_2527.x, x_2527.y, x_2527.z) * x_2529);
  let x_2531 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2530.x, x_2530.y, x_2530.z, x_2531.w);
  let x_2533 : vec4<f32> = u_xlat4;
  let x_2535 : vec3<f32> = u_xlat3;
  let x_2537 : vec4<f32> = u_xlat7;
  let x_2539 : vec3<f32> = ((vec3<f32>(x_2533.x, x_2533.y, x_2533.z) * x_2535) + vec3<f32>(x_2537.x, x_2537.y, x_2537.z));
  let x_2540 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2539.x, x_2539.y, x_2539.z, x_2540.w);
  let x_2543 : f32 = u_xlat1.x;
  let x_2545 : f32 = x_48.unity_LightData.z;
  u_xlat0.x = (x_2543 * x_2545);
  let x_2548 : vec3<f32> = u_xlat25;
  let x_2550 : vec4<f32> = x_135.x_MainLightPosition;
  u_xlat1.x = dot(x_2548, vec3<f32>(x_2550.x, x_2550.y, x_2550.z));
  let x_2555 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_2555, 0.0f, 1.0f);
  let x_2559 : f32 = u_xlat0.x;
  let x_2561 : f32 = u_xlat1.x;
  u_xlat0.x = (x_2559 * x_2561);
  let x_2564 : vec4<f32> = u_xlat0;
  let x_2566 : vec4<f32> = u_xlat6;
  let x_2568 : vec3<f32> = (vec3<f32>(x_2564.x, x_2564.x, x_2564.x) * vec3<f32>(x_2566.x, x_2566.y, x_2566.z));
  let x_2569 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2568.x, x_2569.y, x_2568.y, x_2568.z);
  let x_2571 : vec3<f32> = u_xlat5;
  let x_2573 : vec4<f32> = x_135.x_MainLightPosition;
  let x_2575 : vec3<f32> = (x_2571 + vec3<f32>(x_2573.x, x_2573.y, x_2573.z));
  let x_2576 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2575.x, x_2575.y, x_2575.z, x_2576.w);
  let x_2578 : vec4<f32> = u_xlat6;
  let x_2580 : vec4<f32> = u_xlat6;
  u_xlat0.x = dot(vec3<f32>(x_2578.x, x_2578.y, x_2578.z), vec3<f32>(x_2580.x, x_2580.y, x_2580.z));
  let x_2585 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2585, 1.17549435e-38f);
  let x_2589 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_2589);
  let x_2592 : vec4<f32> = u_xlat0;
  let x_2594 : vec4<f32> = u_xlat6;
  let x_2596 : vec3<f32> = (vec3<f32>(x_2592.x, x_2592.x, x_2592.x) * vec3<f32>(x_2594.x, x_2594.y, x_2594.z));
  let x_2597 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2596.x, x_2596.y, x_2596.z, x_2597.w);
  let x_2599 : vec3<f32> = u_xlat25;
  let x_2600 : vec4<f32> = u_xlat6;
  u_xlat0.x = dot(x_2599, vec3<f32>(x_2600.x, x_2600.y, x_2600.z));
  let x_2605 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_2605, 0.0f, 1.0f);
  let x_2609 : vec4<f32> = x_135.x_MainLightPosition;
  let x_2611 : vec4<f32> = u_xlat6;
  u_xlat77 = dot(vec3<f32>(x_2609.x, x_2609.y, x_2609.z), vec3<f32>(x_2611.x, x_2611.y, x_2611.z));
  let x_2614 : f32 = u_xlat77;
  u_xlat77 = clamp(x_2614, 0.0f, 1.0f);
  let x_2617 : f32 = u_xlat0.x;
  let x_2619 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2617 * x_2619);
  let x_2623 : f32 = u_xlat0.x;
  let x_2625 : f32 = u_xlat8.x;
  u_xlat0.x = ((x_2623 * x_2625) + 1.00001001358032226562f);
  let x_2630 : f32 = u_xlat77;
  let x_2631 : f32 = u_xlat77;
  u_xlat77 = (x_2630 * x_2631);
  let x_2634 : f32 = u_xlat0.x;
  let x_2636 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2634 * x_2636);
  let x_2639 : f32 = u_xlat77;
  u_xlat77 = max(x_2639, 0.10000000149011611938f);
  let x_2642 : f32 = u_xlat0.x;
  let x_2643 : f32 = u_xlat77;
  u_xlat0.x = (x_2642 * x_2643);
  let x_2646 : f32 = u_xlat79;
  let x_2648 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2646 * x_2648);
  let x_2651 : f32 = u_xlat78;
  let x_2653 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2651 / x_2653);
  let x_2656 : vec3<f32> = u_xlat2;
  let x_2657 : vec4<f32> = u_xlat0;
  let x_2660 : vec3<f32> = u_xlat3;
  let x_2661 : vec3<f32> = ((x_2656 * vec3<f32>(x_2657.x, x_2657.x, x_2657.x)) + x_2660);
  let x_2662 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2661.x, x_2661.y, x_2661.z, x_2662.w);
  let x_2664 : vec4<f32> = u_xlat1;
  let x_2666 : vec4<f32> = u_xlat6;
  let x_2668 : vec3<f32> = (vec3<f32>(x_2664.x, x_2664.z, x_2664.w) * vec3<f32>(x_2666.x, x_2666.y, x_2666.z));
  let x_2669 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2668.x, x_2669.y, x_2668.y, x_2668.z);
  let x_2672 : f32 = x_135.x_AdditionalLightsCount.x;
  let x_2674 : f32 = x_48.unity_LightData.y;
  u_xlat0.x = min(x_2672, x_2674);
  let x_2679 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_2679));
  let x_2683 : f32 = u_xlat26.x;
  let x_2686 : f32 = x_679.x_AdditionalShadowFadeParams.x;
  let x_2689 : f32 = x_679.x_AdditionalShadowFadeParams.y;
  u_xlat26.x = ((x_2683 * x_2686) + x_2689);
  let x_2693 : f32 = u_xlat26.x;
  u_xlat26.x = clamp(x_2693, 0.0f, 1.0f);
  let x_2697 : f32 = x_2301.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2699 : f32 = x_2301.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2701 : f32 = x_2301.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2703 : f32 = x_2301.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2704 : vec4<f32> = vec4<f32>(x_2697, x_2699, x_2701, x_2703);
  let x_2710 : vec4<bool> = (vec4<f32>(x_2704.x, x_2704.y, x_2704.z, x_2704.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_2710.x, x_2710.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2722 : u32 = u_xlatu_loop_1;
    let x_2723 : u32 = u_xlatu0;
    if ((x_2722 < x_2723)) {
    } else {
      break;
    }
    let x_2726 : u32 = u_xlatu_loop_1;
    u_xlatu56 = (x_2726 >> 2u);
    let x_2729 : u32 = u_xlatu_loop_1;
    u_xlati81 = bitcast<i32>((x_2729 & 3u));
    let x_2732 : u32 = u_xlatu56;
    let x_2735 : vec4<f32> = x_48.unity_LightIndices[bitcast<i32>(x_2732)];
    let x_2745 : i32 = u_xlati81;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2750 : vec4<u32> = indexable[x_2745];
    u_xlat56.x = dot(x_2735, bitcast<vec4<f32>>(x_2750));
    let x_2756 : f32 = u_xlat56.x;
    u_xlati56 = i32(x_2756);
    let x_2758 : vec3<f32> = vs_INTERP7;
    let x_2769 : i32 = u_xlati56;
    let x_2771 : vec4<f32> = x_2768.x_AdditionalLightsPosition[x_2769];
    let x_2774 : i32 = u_xlati56;
    let x_2776 : vec4<f32> = x_2768.x_AdditionalLightsPosition[x_2774];
    u_xlat33 = ((-(x_2758) * vec3<f32>(x_2771.w, x_2771.w, x_2771.w)) + vec3<f32>(x_2776.x, x_2776.y, x_2776.z));
    let x_2779 : vec3<f32> = u_xlat33;
    let x_2780 : vec3<f32> = u_xlat33;
    u_xlat81 = dot(x_2779, x_2780);
    let x_2782 : f32 = u_xlat81;
    u_xlat81 = max(x_2782, 0.00006103515625f);
    let x_2785 : f32 = u_xlat81;
    u_xlat82 = inverseSqrt(x_2785);
    let x_2787 : f32 = u_xlat82;
    let x_2789 : vec3<f32> = u_xlat33;
    let x_2790 : vec3<f32> = (vec3<f32>(x_2787, x_2787, x_2787) * x_2789);
    let x_2791 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2790.x, x_2790.y, x_2790.z, x_2791.w);
    let x_2794 : f32 = u_xlat81;
    u_xlat84 = (1.0f / x_2794);
    let x_2796 : f32 = u_xlat81;
    let x_2797 : i32 = u_xlati56;
    let x_2799 : f32 = x_2768.x_AdditionalLightsAttenuation[x_2797].x;
    u_xlat81 = (x_2796 * x_2799);
    let x_2801 : f32 = u_xlat81;
    let x_2803 : f32 = u_xlat81;
    u_xlat81 = ((-(x_2801) * x_2803) + 1.0f);
    let x_2806 : f32 = u_xlat81;
    u_xlat81 = max(x_2806, 0.0f);
    let x_2808 : f32 = u_xlat81;
    let x_2809 : f32 = u_xlat81;
    u_xlat81 = (x_2808 * x_2809);
    let x_2811 : f32 = u_xlat81;
    let x_2812 : f32 = u_xlat84;
    u_xlat81 = (x_2811 * x_2812);
    let x_2814 : i32 = u_xlati56;
    let x_2816 : vec4<f32> = x_2768.x_AdditionalLightsSpotDir[x_2814];
    let x_2818 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2816.x, x_2816.y, x_2816.z), vec3<f32>(x_2818.x, x_2818.y, x_2818.z));
    let x_2821 : f32 = u_xlat84;
    let x_2822 : i32 = u_xlati56;
    let x_2824 : f32 = x_2768.x_AdditionalLightsAttenuation[x_2822].z;
    let x_2826 : i32 = u_xlati56;
    let x_2828 : f32 = x_2768.x_AdditionalLightsAttenuation[x_2826].w;
    u_xlat84 = ((x_2821 * x_2824) + x_2828);
    let x_2830 : f32 = u_xlat84;
    u_xlat84 = clamp(x_2830, 0.0f, 1.0f);
    let x_2832 : f32 = u_xlat84;
    let x_2833 : f32 = u_xlat84;
    u_xlat84 = (x_2832 * x_2833);
    let x_2835 : f32 = u_xlat81;
    let x_2836 : f32 = u_xlat84;
    u_xlat81 = (x_2835 * x_2836);
    let x_2840 : i32 = u_xlati56;
    let x_2842 : f32 = x_679.x_AdditionalShadowParams[x_2840].w;
    u_xlati84 = i32(x_2842);
    let x_2847 : i32 = u_xlati84;
    u_xlatb10.x = (x_2847 >= 0i);
    let x_2851 : bool = u_xlatb10.x;
    if (x_2851) {
      let x_2855 : i32 = u_xlati56;
      let x_2857 : f32 = x_679.x_AdditionalShadowParams[x_2855].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2857, x_2857, x_2857, x_2857))));
      let x_2863 : bool = u_xlatb10.x;
      if (x_2863) {
        let x_2866 : vec4<f32> = u_xlat9;
        let x_2869 : vec4<f32> = u_xlat9;
        let x_2872 : vec4<bool> = (abs(vec4<f32>(x_2866.z, x_2866.z, x_2866.y, x_2866.z)) >= abs(vec4<f32>(x_2869.x, x_2869.y, x_2869.x, x_2869.x)));
        u_xlatb10 = vec3<bool>(x_2872.x, x_2872.y, x_2872.z);
        let x_2875 : bool = u_xlatb10.y;
        let x_2877 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_2875 & x_2877);
        let x_2881 : vec4<f32> = u_xlat9;
        let x_2884 : vec4<bool> = (-(vec4<f32>(x_2881.z, x_2881.y, x_2881.x, x_2881.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_2884.x, x_2884.y, x_2884.z);
        let x_2888 : bool = u_xlatb11.x;
        u_xlat35.x = select(4.0f, 5.0f, x_2888);
        let x_2893 : bool = u_xlatb11.y;
        u_xlat35.z = select(2.0f, 3.0f, x_2893);
        let x_2897 : bool = u_xlatb11.z;
        u_xlat11.x = select(0.0f, 1.0f, x_2897);
        let x_2901 : bool = u_xlatb10.z;
        if (x_2901) {
          let x_2906 : f32 = u_xlat35.z;
          x_2902 = x_2906;
        } else {
          let x_2909 : f32 = u_xlat11.x;
          x_2902 = x_2909;
        }
        let x_2910 : f32 = x_2902;
        u_xlat60.x = x_2910;
        let x_2913 : bool = u_xlatb10.x;
        if (x_2913) {
          let x_2918 : f32 = u_xlat35.x;
          x_2914 = x_2918;
        } else {
          let x_2921 : f32 = u_xlat60.x;
          x_2914 = x_2921;
        }
        let x_2922 : f32 = x_2914;
        u_xlat10.x = x_2922;
        let x_2924 : i32 = u_xlati56;
        let x_2926 : f32 = x_679.x_AdditionalShadowParams[x_2924].w;
        u_xlat35.x = trunc(x_2926);
        let x_2930 : f32 = u_xlat10.x;
        let x_2932 : f32 = u_xlat35.x;
        u_xlat10.x = (x_2930 + x_2932);
        let x_2936 : f32 = u_xlat10.x;
        u_xlati84 = i32(x_2936);
      }
      let x_2938 : i32 = u_xlati84;
      u_xlati84 = (x_2938 << bitcast<u32>(2i));
      let x_2940 : vec3<f32> = vs_INTERP7;
      let x_2943 : i32 = u_xlati84;
      let x_2946 : i32 = u_xlati84;
      let x_2950 : vec4<f32> = x_679.x_AdditionalLightsWorldToShadow[((x_2943 + 1i) / 4i)][((x_2946 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_2940.y, x_2940.y, x_2940.y, x_2940.y) * x_2950);
      let x_2952 : i32 = u_xlati84;
      let x_2954 : i32 = u_xlati84;
      let x_2957 : vec4<f32> = x_679.x_AdditionalLightsWorldToShadow[(x_2952 / 4i)][(x_2954 % 4i)];
      let x_2958 : vec3<f32> = vs_INTERP7;
      let x_2961 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2957 * vec4<f32>(x_2958.x, x_2958.x, x_2958.x, x_2958.x)) + x_2961);
      let x_2963 : i32 = u_xlati84;
      let x_2966 : i32 = u_xlati84;
      let x_2970 : vec4<f32> = x_679.x_AdditionalLightsWorldToShadow[((x_2963 + 2i) / 4i)][((x_2966 + 2i) % 4i)];
      let x_2971 : vec3<f32> = vs_INTERP7;
      let x_2974 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2970 * vec4<f32>(x_2971.z, x_2971.z, x_2971.z, x_2971.z)) + x_2974);
      let x_2976 : vec4<f32> = u_xlat10;
      let x_2977 : i32 = u_xlati84;
      let x_2980 : i32 = u_xlati84;
      let x_2984 : vec4<f32> = x_679.x_AdditionalLightsWorldToShadow[((x_2977 + 3i) / 4i)][((x_2980 + 3i) % 4i)];
      u_xlat10 = (x_2976 + x_2984);
      let x_2986 : vec4<f32> = u_xlat10;
      let x_2988 : vec4<f32> = u_xlat10;
      let x_2990 : vec3<f32> = (vec3<f32>(x_2986.x, x_2986.y, x_2986.z) / vec3<f32>(x_2988.w, x_2988.w, x_2988.w));
      let x_2991 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2990.x, x_2990.y, x_2990.z, x_2991.w);
      let x_2994 : i32 = u_xlati56;
      let x_2996 : f32 = x_679.x_AdditionalShadowParams[x_2994].y;
      u_xlatb84 = (0.0f < x_2996);
      let x_2998 : bool = u_xlatb84;
      if (x_2998) {
        let x_3001 : i32 = u_xlati56;
        let x_3003 : f32 = x_679.x_AdditionalShadowParams[x_3001].y;
        u_xlatb84 = (1.0f == x_3003);
        let x_3005 : bool = u_xlatb84;
        if (x_3005) {
          let x_3008 : vec4<f32> = u_xlat10;
          let x_3012 : vec4<f32> = x_679.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_3008.x, x_3008.y, x_3008.x, x_3008.y) + x_3012);
          let x_3015 : vec4<f32> = u_xlat11;
          let x_3016 : vec2<f32> = vec2<f32>(x_3015.x, x_3015.y);
          let x_3018 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_3016.x, x_3016.y, x_3018);
          let x_3026 : vec3<f32> = txVec30;
          let x_3028 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3026.xy, x_3026.z);
          u_xlat12.x = x_3028;
          let x_3031 : vec4<f32> = u_xlat11;
          let x_3032 : vec2<f32> = vec2<f32>(x_3031.z, x_3031.w);
          let x_3034 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_3032.x, x_3032.y, x_3034);
          let x_3041 : vec3<f32> = txVec31;
          let x_3043 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3041.xy, x_3041.z);
          u_xlat12.y = x_3043;
          let x_3045 : vec4<f32> = u_xlat10;
          let x_3049 : vec4<f32> = x_679.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_3045.x, x_3045.y, x_3045.x, x_3045.y) + x_3049);
          let x_3052 : vec4<f32> = u_xlat11;
          let x_3053 : vec2<f32> = vec2<f32>(x_3052.x, x_3052.y);
          let x_3055 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_3053.x, x_3053.y, x_3055);
          let x_3062 : vec3<f32> = txVec32;
          let x_3064 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3062.xy, x_3062.z);
          u_xlat12.z = x_3064;
          let x_3067 : vec4<f32> = u_xlat11;
          let x_3068 : vec2<f32> = vec2<f32>(x_3067.z, x_3067.w);
          let x_3070 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_3068.x, x_3068.y, x_3070);
          let x_3077 : vec3<f32> = txVec33;
          let x_3079 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3077.xy, x_3077.z);
          u_xlat12.w = x_3079;
          let x_3081 : vec4<f32> = u_xlat12;
          u_xlat84 = dot(x_3081, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_3085 : i32 = u_xlati56;
          let x_3087 : f32 = x_679.x_AdditionalShadowParams[x_3085].y;
          u_xlatb85 = (2.0f == x_3087);
          let x_3089 : bool = u_xlatb85;
          if (x_3089) {
            let x_3092 : vec4<f32> = u_xlat10;
            let x_3096 : vec4<f32> = x_679.x_AdditionalShadowmapSize;
            let x_3099 : vec2<f32> = ((vec2<f32>(x_3092.x, x_3092.y) * vec2<f32>(x_3096.z, x_3096.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3100 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3099.x, x_3099.y, x_3100.z, x_3100.w);
            let x_3102 : vec4<f32> = u_xlat11;
            let x_3104 : vec2<f32> = floor(vec2<f32>(x_3102.x, x_3102.y));
            let x_3105 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3104.x, x_3104.y, x_3105.z, x_3105.w);
            let x_3108 : vec4<f32> = u_xlat10;
            let x_3111 : vec4<f32> = x_679.x_AdditionalShadowmapSize;
            let x_3114 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3108.x, x_3108.y) * vec2<f32>(x_3111.z, x_3111.w)) + -(vec2<f32>(x_3114.x, x_3114.y)));
            let x_3118 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3118.x, x_3118.x, x_3118.y, x_3118.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3121 : vec4<f32> = u_xlat12;
            let x_3123 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3121.x, x_3121.x, x_3121.z, x_3121.z) * vec4<f32>(x_3123.x, x_3123.x, x_3123.z, x_3123.z));
            let x_3126 : vec4<f32> = u_xlat13;
            let x_3128 : vec2<f32> = (vec2<f32>(x_3126.y, x_3126.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_3129 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3128.x, x_3129.y, x_3128.y, x_3129.w);
            let x_3131 : vec4<f32> = u_xlat13;
            let x_3134 : vec2<f32> = u_xlat61;
            let x_3136 : vec2<f32> = ((vec2<f32>(x_3131.x, x_3131.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3134));
            let x_3137 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3136.x, x_3136.y, x_3137.z, x_3137.w);
            let x_3139 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_3139) + vec2<f32>(1.0f, 1.0f));
            let x_3142 : vec2<f32> = u_xlat61;
            let x_3143 : vec2<f32> = min(x_3142, vec2<f32>(0.0f, 0.0f));
            let x_3144 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3143.x, x_3143.y, x_3144.z, x_3144.w);
            let x_3146 : vec4<f32> = u_xlat14;
            let x_3149 : vec4<f32> = u_xlat14;
            let x_3152 : vec2<f32> = u_xlat63;
            let x_3153 : vec2<f32> = ((-(vec2<f32>(x_3146.x, x_3146.y)) * vec2<f32>(x_3149.x, x_3149.y)) + x_3152);
            let x_3154 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3153.x, x_3153.y, x_3154.z, x_3154.w);
            let x_3156 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_3156, vec2<f32>(0.0f, 0.0f));
            let x_3158 : vec2<f32> = u_xlat61;
            let x_3160 : vec2<f32> = u_xlat61;
            let x_3162 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_3158) * x_3160) + vec2<f32>(x_3162.y, x_3162.w));
            let x_3165 : vec4<f32> = u_xlat14;
            let x_3167 : vec2<f32> = (vec2<f32>(x_3165.x, x_3165.y) + vec2<f32>(1.0f, 1.0f));
            let x_3168 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3167.x, x_3167.y, x_3168.z, x_3168.w);
            let x_3170 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_3170 + vec2<f32>(1.0f, 1.0f));
            let x_3172 : vec4<f32> = u_xlat13;
            let x_3174 : vec2<f32> = (vec2<f32>(x_3172.x, x_3172.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3175 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3174.x, x_3174.y, x_3175.z, x_3175.w);
            let x_3177 : vec2<f32> = u_xlat63;
            let x_3178 : vec2<f32> = (x_3177 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3179 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3178.x, x_3178.y, x_3179.z, x_3179.w);
            let x_3181 : vec4<f32> = u_xlat14;
            let x_3183 : vec2<f32> = (vec2<f32>(x_3181.x, x_3181.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3184 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3183.x, x_3183.y, x_3184.z, x_3184.w);
            let x_3186 : vec2<f32> = u_xlat61;
            let x_3187 : vec2<f32> = (x_3186 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3188 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3187.x, x_3187.y, x_3188.z, x_3188.w);
            let x_3190 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_3190.y, x_3190.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3194 : f32 = u_xlat14.x;
            u_xlat15.z = x_3194;
            let x_3197 : f32 = u_xlat61.x;
            u_xlat15.w = x_3197;
            let x_3200 : f32 = u_xlat16.x;
            u_xlat13.z = x_3200;
            let x_3203 : f32 = u_xlat12.x;
            u_xlat13.w = x_3203;
            let x_3205 : vec4<f32> = u_xlat13;
            let x_3207 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_3205.z, x_3205.w, x_3205.x, x_3205.z) + vec4<f32>(x_3207.z, x_3207.w, x_3207.x, x_3207.z));
            let x_3211 : f32 = u_xlat15.y;
            u_xlat14.z = x_3211;
            let x_3214 : f32 = u_xlat61.y;
            u_xlat14.w = x_3214;
            let x_3217 : f32 = u_xlat13.y;
            u_xlat16.z = x_3217;
            let x_3220 : f32 = u_xlat12.z;
            u_xlat16.w = x_3220;
            let x_3222 : vec4<f32> = u_xlat14;
            let x_3224 : vec4<f32> = u_xlat16;
            let x_3226 : vec3<f32> = (vec3<f32>(x_3222.z, x_3222.y, x_3222.w) + vec3<f32>(x_3224.z, x_3224.y, x_3224.w));
            let x_3227 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3226.x, x_3226.y, x_3226.z, x_3227.w);
            let x_3229 : vec4<f32> = u_xlat13;
            let x_3231 : vec4<f32> = u_xlat17;
            let x_3233 : vec3<f32> = (vec3<f32>(x_3229.x, x_3229.z, x_3229.w) / vec3<f32>(x_3231.z, x_3231.w, x_3231.y));
            let x_3234 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3233.x, x_3233.y, x_3233.z, x_3234.w);
            let x_3236 : vec4<f32> = u_xlat13;
            let x_3238 : vec3<f32> = (vec3<f32>(x_3236.x, x_3236.y, x_3236.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3239 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3238.x, x_3238.y, x_3238.z, x_3239.w);
            let x_3241 : vec4<f32> = u_xlat16;
            let x_3243 : vec4<f32> = u_xlat12;
            let x_3245 : vec3<f32> = (vec3<f32>(x_3241.z, x_3241.y, x_3241.w) / vec3<f32>(x_3243.x, x_3243.y, x_3243.z));
            let x_3246 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3245.x, x_3245.y, x_3245.z, x_3246.w);
            let x_3248 : vec4<f32> = u_xlat14;
            let x_3250 : vec3<f32> = (vec3<f32>(x_3248.x, x_3248.y, x_3248.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3251 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3250.x, x_3250.y, x_3250.z, x_3251.w);
            let x_3253 : vec4<f32> = u_xlat13;
            let x_3256 : vec4<f32> = x_679.x_AdditionalShadowmapSize;
            let x_3258 : vec3<f32> = (vec3<f32>(x_3253.y, x_3253.x, x_3253.z) * vec3<f32>(x_3256.x, x_3256.x, x_3256.x));
            let x_3259 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3258.x, x_3258.y, x_3258.z, x_3259.w);
            let x_3261 : vec4<f32> = u_xlat14;
            let x_3264 : vec4<f32> = x_679.x_AdditionalShadowmapSize;
            let x_3266 : vec3<f32> = (vec3<f32>(x_3261.x, x_3261.y, x_3261.z) * vec3<f32>(x_3264.y, x_3264.y, x_3264.y));
            let x_3267 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3266.x, x_3266.y, x_3266.z, x_3267.w);
            let x_3270 : f32 = u_xlat14.x;
            u_xlat13.w = x_3270;
            let x_3272 : vec4<f32> = u_xlat11;
            let x_3275 : vec4<f32> = x_679.x_AdditionalShadowmapSize;
            let x_3278 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_3272.x, x_3272.y, x_3272.x, x_3272.y) * vec4<f32>(x_3275.x, x_3275.y, x_3275.x, x_3275.y)) + vec4<f32>(x_3278.y, x_3278.w, x_3278.x, x_3278.w));
            let x_3281 : vec4<f32> = u_xlat11;
            let x_3284 : vec4<f32> = x_679.x_AdditionalShadowmapSize;
            let x_3287 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_3281.x, x_3281.y) * vec2<f32>(x_3284.x, x_3284.y)) + vec2<f32>(x_3287.z, x_3287.w));
            let x_3291 : f32 = u_xlat13.y;
            u_xlat14.w = x_3291;
            let x_3293 : vec4<f32> = u_xlat14;
            let x_3294 : vec2<f32> = vec2<f32>(x_3293.y, x_3293.z);
            let x_3295 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3295.x, x_3294.x, x_3295.z, x_3294.y);
            let x_3297 : vec4<f32> = u_xlat11;
            let x_3300 : vec4<f32> = x_679.x_AdditionalShadowmapSize;
            let x_3303 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_3297.x, x_3297.y, x_3297.x, x_3297.y) * vec4<f32>(x_3300.x, x_3300.y, x_3300.x, x_3300.y)) + vec4<f32>(x_3303.x, x_3303.y, x_3303.z, x_3303.y));
            let x_3306 : vec4<f32> = u_xlat11;
            let x_3309 : vec4<f32> = x_679.x_AdditionalShadowmapSize;
            let x_3312 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3306.x, x_3306.y, x_3306.x, x_3306.y) * vec4<f32>(x_3309.x, x_3309.y, x_3309.x, x_3309.y)) + vec4<f32>(x_3312.w, x_3312.y, x_3312.w, x_3312.z));
            let x_3315 : vec4<f32> = u_xlat11;
            let x_3318 : vec4<f32> = x_679.x_AdditionalShadowmapSize;
            let x_3321 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_3315.x, x_3315.y, x_3315.x, x_3315.y) * vec4<f32>(x_3318.x, x_3318.y, x_3318.x, x_3318.y)) + vec4<f32>(x_3321.x, x_3321.w, x_3321.z, x_3321.w));
            let x_3324 : vec4<f32> = u_xlat12;
            let x_3326 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_3324.x, x_3324.x, x_3324.x, x_3324.y) * vec4<f32>(x_3326.z, x_3326.w, x_3326.y, x_3326.z));
            let x_3329 : vec4<f32> = u_xlat12;
            let x_3331 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_3329.y, x_3329.y, x_3329.z, x_3329.z) * x_3331);
            let x_3335 : f32 = u_xlat12.z;
            let x_3337 : f32 = u_xlat17.y;
            u_xlat85 = (x_3335 * x_3337);
            let x_3340 : vec4<f32> = u_xlat15;
            let x_3341 : vec2<f32> = vec2<f32>(x_3340.x, x_3340.y);
            let x_3343 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_3341.x, x_3341.y, x_3343);
            let x_3350 : vec3<f32> = txVec34;
            let x_3352 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3350.xy, x_3350.z);
            u_xlat11.x = x_3352;
            let x_3355 : vec4<f32> = u_xlat15;
            let x_3356 : vec2<f32> = vec2<f32>(x_3355.z, x_3355.w);
            let x_3358 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_3356.x, x_3356.y, x_3358);
            let x_3366 : vec3<f32> = txVec35;
            let x_3368 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3366.xy, x_3366.z);
            u_xlat36 = x_3368;
            let x_3369 : f32 = u_xlat36;
            let x_3371 : f32 = u_xlat18.y;
            u_xlat36 = (x_3369 * x_3371);
            let x_3374 : f32 = u_xlat18.x;
            let x_3376 : f32 = u_xlat11.x;
            let x_3378 : f32 = u_xlat36;
            u_xlat11.x = ((x_3374 * x_3376) + x_3378);
            let x_3382 : vec2<f32> = u_xlat61;
            let x_3384 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_3382.x, x_3382.y, x_3384);
            let x_3391 : vec3<f32> = txVec36;
            let x_3393 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3391.xy, x_3391.z);
            u_xlat36 = x_3393;
            let x_3395 : f32 = u_xlat18.z;
            let x_3396 : f32 = u_xlat36;
            let x_3399 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3395 * x_3396) + x_3399);
            let x_3403 : vec4<f32> = u_xlat14;
            let x_3404 : vec2<f32> = vec2<f32>(x_3403.x, x_3403.y);
            let x_3406 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_3404.x, x_3404.y, x_3406);
            let x_3413 : vec3<f32> = txVec37;
            let x_3415 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3413.xy, x_3413.z);
            u_xlat36 = x_3415;
            let x_3417 : f32 = u_xlat18.w;
            let x_3418 : f32 = u_xlat36;
            let x_3421 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3417 * x_3418) + x_3421);
            let x_3425 : vec4<f32> = u_xlat16;
            let x_3426 : vec2<f32> = vec2<f32>(x_3425.x, x_3425.y);
            let x_3428 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_3426.x, x_3426.y, x_3428);
            let x_3435 : vec3<f32> = txVec38;
            let x_3437 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3435.xy, x_3435.z);
            u_xlat36 = x_3437;
            let x_3439 : f32 = u_xlat19.x;
            let x_3440 : f32 = u_xlat36;
            let x_3443 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3439 * x_3440) + x_3443);
            let x_3447 : vec4<f32> = u_xlat16;
            let x_3448 : vec2<f32> = vec2<f32>(x_3447.z, x_3447.w);
            let x_3450 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_3448.x, x_3448.y, x_3450);
            let x_3457 : vec3<f32> = txVec39;
            let x_3459 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3457.xy, x_3457.z);
            u_xlat36 = x_3459;
            let x_3461 : f32 = u_xlat19.y;
            let x_3462 : f32 = u_xlat36;
            let x_3465 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3461 * x_3462) + x_3465);
            let x_3469 : vec4<f32> = u_xlat14;
            let x_3470 : vec2<f32> = vec2<f32>(x_3469.z, x_3469.w);
            let x_3472 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_3470.x, x_3470.y, x_3472);
            let x_3479 : vec3<f32> = txVec40;
            let x_3481 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3479.xy, x_3479.z);
            u_xlat36 = x_3481;
            let x_3483 : f32 = u_xlat19.z;
            let x_3484 : f32 = u_xlat36;
            let x_3487 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3483 * x_3484) + x_3487);
            let x_3491 : vec4<f32> = u_xlat13;
            let x_3492 : vec2<f32> = vec2<f32>(x_3491.x, x_3491.y);
            let x_3494 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_3492.x, x_3492.y, x_3494);
            let x_3501 : vec3<f32> = txVec41;
            let x_3503 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3501.xy, x_3501.z);
            u_xlat36 = x_3503;
            let x_3505 : f32 = u_xlat19.w;
            let x_3506 : f32 = u_xlat36;
            let x_3509 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3505 * x_3506) + x_3509);
            let x_3513 : vec4<f32> = u_xlat13;
            let x_3514 : vec2<f32> = vec2<f32>(x_3513.z, x_3513.w);
            let x_3516 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_3514.x, x_3514.y, x_3516);
            let x_3523 : vec3<f32> = txVec42;
            let x_3525 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3523.xy, x_3523.z);
            u_xlat36 = x_3525;
            let x_3526 : f32 = u_xlat85;
            let x_3527 : f32 = u_xlat36;
            let x_3530 : f32 = u_xlat11.x;
            u_xlat84 = ((x_3526 * x_3527) + x_3530);
          } else {
            let x_3533 : vec4<f32> = u_xlat10;
            let x_3536 : vec4<f32> = x_679.x_AdditionalShadowmapSize;
            let x_3539 : vec2<f32> = ((vec2<f32>(x_3533.x, x_3533.y) * vec2<f32>(x_3536.z, x_3536.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3540 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3539.x, x_3539.y, x_3540.z, x_3540.w);
            let x_3542 : vec4<f32> = u_xlat11;
            let x_3544 : vec2<f32> = floor(vec2<f32>(x_3542.x, x_3542.y));
            let x_3545 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3544.x, x_3544.y, x_3545.z, x_3545.w);
            let x_3547 : vec4<f32> = u_xlat10;
            let x_3550 : vec4<f32> = x_679.x_AdditionalShadowmapSize;
            let x_3553 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3547.x, x_3547.y) * vec2<f32>(x_3550.z, x_3550.w)) + -(vec2<f32>(x_3553.x, x_3553.y)));
            let x_3557 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3557.x, x_3557.x, x_3557.y, x_3557.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3560 : vec4<f32> = u_xlat12;
            let x_3562 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3560.x, x_3560.x, x_3560.z, x_3560.z) * vec4<f32>(x_3562.x, x_3562.x, x_3562.z, x_3562.z));
            let x_3565 : vec4<f32> = u_xlat13;
            let x_3567 : vec2<f32> = (vec2<f32>(x_3565.y, x_3565.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3568 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3568.x, x_3567.x, x_3568.z, x_3567.y);
            let x_3570 : vec4<f32> = u_xlat13;
            let x_3573 : vec2<f32> = u_xlat61;
            let x_3575 : vec2<f32> = ((vec2<f32>(x_3570.x, x_3570.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3573));
            let x_3576 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3575.x, x_3576.y, x_3575.y, x_3576.w);
            let x_3578 : vec2<f32> = u_xlat61;
            let x_3580 : vec2<f32> = (-(x_3578) + vec2<f32>(1.0f, 1.0f));
            let x_3581 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3580.x, x_3580.y, x_3581.z, x_3581.w);
            let x_3583 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_3583, vec2<f32>(0.0f, 0.0f));
            let x_3585 : vec2<f32> = u_xlat63;
            let x_3587 : vec2<f32> = u_xlat63;
            let x_3589 : vec4<f32> = u_xlat13;
            let x_3591 : vec2<f32> = ((-(x_3585) * x_3587) + vec2<f32>(x_3589.x, x_3589.y));
            let x_3592 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3591.x, x_3591.y, x_3592.z, x_3592.w);
            let x_3594 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_3594, vec2<f32>(0.0f, 0.0f));
            let x_3597 : vec2<f32> = u_xlat63;
            let x_3599 : vec2<f32> = u_xlat63;
            let x_3601 : vec4<f32> = u_xlat12;
            let x_3603 : vec2<f32> = ((-(x_3597) * x_3599) + vec2<f32>(x_3601.y, x_3601.w));
            let x_3604 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_3603.x, x_3604.y, x_3603.y);
            let x_3606 : vec4<f32> = u_xlat13;
            let x_3608 : vec2<f32> = (vec2<f32>(x_3606.x, x_3606.y) + vec2<f32>(2.0f, 2.0f));
            let x_3609 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3608.x, x_3608.y, x_3609.z, x_3609.w);
            let x_3611 : vec3<f32> = u_xlat37;
            let x_3613 : vec2<f32> = (vec2<f32>(x_3611.x, x_3611.z) + vec2<f32>(2.0f, 2.0f));
            let x_3614 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3614.x, x_3613.x, x_3614.z, x_3613.y);
            let x_3617 : f32 = u_xlat12.y;
            u_xlat15.z = (x_3617 * 0.08163200318813323975f);
            let x_3620 : vec4<f32> = u_xlat12;
            let x_3623 : vec3<f32> = (vec3<f32>(x_3620.z, x_3620.x, x_3620.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3624 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3623.x, x_3623.y, x_3623.z, x_3624.w);
            let x_3626 : vec4<f32> = u_xlat13;
            let x_3628 : vec2<f32> = (vec2<f32>(x_3626.x, x_3626.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3629 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3628.x, x_3628.y, x_3629.z, x_3629.w);
            let x_3632 : f32 = u_xlat16.y;
            u_xlat15.x = x_3632;
            let x_3634 : vec2<f32> = u_xlat61;
            let x_3637 : vec2<f32> = ((vec2<f32>(x_3634.x, x_3634.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3638 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3638.x, x_3637.x, x_3638.z, x_3637.y);
            let x_3640 : vec2<f32> = u_xlat61;
            let x_3643 : vec2<f32> = ((vec2<f32>(x_3640.x, x_3640.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3644 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3643.x, x_3644.y, x_3643.y, x_3644.w);
            let x_3647 : f32 = u_xlat12.x;
            u_xlat13.y = x_3647;
            let x_3650 : f32 = u_xlat14.y;
            u_xlat13.w = x_3650;
            let x_3652 : vec4<f32> = u_xlat13;
            let x_3653 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3652 + x_3653);
            let x_3655 : vec2<f32> = u_xlat61;
            let x_3658 : vec2<f32> = ((vec2<f32>(x_3655.y, x_3655.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3659 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3659.x, x_3658.x, x_3659.z, x_3658.y);
            let x_3661 : vec2<f32> = u_xlat61;
            let x_3664 : vec2<f32> = ((vec2<f32>(x_3661.y, x_3661.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3665 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3664.x, x_3665.y, x_3664.y, x_3665.w);
            let x_3668 : f32 = u_xlat12.y;
            u_xlat14.y = x_3668;
            let x_3670 : vec4<f32> = u_xlat14;
            let x_3671 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_3670 + x_3671);
            let x_3673 : vec4<f32> = u_xlat13;
            let x_3674 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_3673 / x_3674);
            let x_3676 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3676 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3678 : vec4<f32> = u_xlat14;
            let x_3679 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_3678 / x_3679);
            let x_3681 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3681 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3683 : vec4<f32> = u_xlat13;
            let x_3686 : vec4<f32> = x_679.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3683.w, x_3683.x, x_3683.y, x_3683.z) * vec4<f32>(x_3686.x, x_3686.x, x_3686.x, x_3686.x));
            let x_3689 : vec4<f32> = u_xlat14;
            let x_3692 : vec4<f32> = x_679.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3689.x, x_3689.w, x_3689.y, x_3689.z) * vec4<f32>(x_3692.y, x_3692.y, x_3692.y, x_3692.y));
            let x_3695 : vec4<f32> = u_xlat13;
            let x_3696 : vec3<f32> = vec3<f32>(x_3695.y, x_3695.z, x_3695.w);
            let x_3697 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3696.x, x_3697.y, x_3696.y, x_3696.z);
            let x_3700 : f32 = u_xlat14.x;
            u_xlat16.y = x_3700;
            let x_3702 : vec4<f32> = u_xlat11;
            let x_3705 : vec4<f32> = x_679.x_AdditionalShadowmapSize;
            let x_3708 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3702.x, x_3702.y, x_3702.x, x_3702.y) * vec4<f32>(x_3705.x, x_3705.y, x_3705.x, x_3705.y)) + vec4<f32>(x_3708.x, x_3708.y, x_3708.z, x_3708.y));
            let x_3711 : vec4<f32> = u_xlat11;
            let x_3714 : vec4<f32> = x_679.x_AdditionalShadowmapSize;
            let x_3717 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_3711.x, x_3711.y) * vec2<f32>(x_3714.x, x_3714.y)) + vec2<f32>(x_3717.w, x_3717.y));
            let x_3721 : f32 = u_xlat16.y;
            u_xlat13.y = x_3721;
            let x_3724 : f32 = u_xlat14.z;
            u_xlat16.y = x_3724;
            let x_3726 : vec4<f32> = u_xlat11;
            let x_3729 : vec4<f32> = x_679.x_AdditionalShadowmapSize;
            let x_3732 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3726.x, x_3726.y, x_3726.x, x_3726.y) * vec4<f32>(x_3729.x, x_3729.y, x_3729.x, x_3729.y)) + vec4<f32>(x_3732.x, x_3732.y, x_3732.z, x_3732.y));
            let x_3735 : vec4<f32> = u_xlat11;
            let x_3738 : vec4<f32> = x_679.x_AdditionalShadowmapSize;
            let x_3741 : vec4<f32> = u_xlat16;
            let x_3743 : vec2<f32> = ((vec2<f32>(x_3735.x, x_3735.y) * vec2<f32>(x_3738.x, x_3738.y)) + vec2<f32>(x_3741.w, x_3741.y));
            let x_3744 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3743.x, x_3743.y, x_3744.z, x_3744.w);
            let x_3747 : f32 = u_xlat16.y;
            u_xlat13.z = x_3747;
            let x_3749 : vec4<f32> = u_xlat11;
            let x_3752 : vec4<f32> = x_679.x_AdditionalShadowmapSize;
            let x_3755 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3749.x, x_3749.y, x_3749.x, x_3749.y) * vec4<f32>(x_3752.x, x_3752.y, x_3752.x, x_3752.y)) + vec4<f32>(x_3755.x, x_3755.y, x_3755.x, x_3755.z));
            let x_3759 : f32 = u_xlat14.w;
            u_xlat16.y = x_3759;
            let x_3762 : vec4<f32> = u_xlat11;
            let x_3765 : vec4<f32> = x_679.x_AdditionalShadowmapSize;
            let x_3768 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3762.x, x_3762.y, x_3762.x, x_3762.y) * vec4<f32>(x_3765.x, x_3765.y, x_3765.x, x_3765.y)) + vec4<f32>(x_3768.x, x_3768.y, x_3768.z, x_3768.y));
            let x_3772 : vec4<f32> = u_xlat11;
            let x_3775 : vec4<f32> = x_679.x_AdditionalShadowmapSize;
            let x_3778 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3772.x, x_3772.y) * vec2<f32>(x_3775.x, x_3775.y)) + vec2<f32>(x_3778.w, x_3778.y));
            let x_3782 : f32 = u_xlat16.y;
            u_xlat13.w = x_3782;
            let x_3785 : vec4<f32> = u_xlat11;
            let x_3788 : vec4<f32> = x_679.x_AdditionalShadowmapSize;
            let x_3791 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3785.x, x_3785.y) * vec2<f32>(x_3788.x, x_3788.y)) + vec2<f32>(x_3791.x, x_3791.w));
            let x_3794 : vec4<f32> = u_xlat16;
            let x_3795 : vec3<f32> = vec3<f32>(x_3794.x, x_3794.z, x_3794.w);
            let x_3796 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3795.x, x_3796.y, x_3795.y, x_3795.z);
            let x_3798 : vec4<f32> = u_xlat11;
            let x_3801 : vec4<f32> = x_679.x_AdditionalShadowmapSize;
            let x_3804 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3798.x, x_3798.y, x_3798.x, x_3798.y) * vec4<f32>(x_3801.x, x_3801.y, x_3801.x, x_3801.y)) + vec4<f32>(x_3804.x, x_3804.y, x_3804.z, x_3804.y));
            let x_3808 : vec4<f32> = u_xlat11;
            let x_3811 : vec4<f32> = x_679.x_AdditionalShadowmapSize;
            let x_3814 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3808.x, x_3808.y) * vec2<f32>(x_3811.x, x_3811.y)) + vec2<f32>(x_3814.w, x_3814.y));
            let x_3818 : f32 = u_xlat13.x;
            u_xlat14.x = x_3818;
            let x_3820 : vec4<f32> = u_xlat11;
            let x_3823 : vec4<f32> = x_679.x_AdditionalShadowmapSize;
            let x_3826 : vec4<f32> = u_xlat14;
            let x_3828 : vec2<f32> = ((vec2<f32>(x_3820.x, x_3820.y) * vec2<f32>(x_3823.x, x_3823.y)) + vec2<f32>(x_3826.x, x_3826.y));
            let x_3829 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3828.x, x_3828.y, x_3829.z, x_3829.w);
            let x_3832 : vec4<f32> = u_xlat12;
            let x_3834 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3832.x, x_3832.x, x_3832.x, x_3832.x) * x_3834);
            let x_3837 : vec4<f32> = u_xlat12;
            let x_3839 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3837.y, x_3837.y, x_3837.y, x_3837.y) * x_3839);
            let x_3842 : vec4<f32> = u_xlat12;
            let x_3844 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3842.z, x_3842.z, x_3842.z, x_3842.z) * x_3844);
            let x_3846 : vec4<f32> = u_xlat12;
            let x_3848 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3846.w, x_3846.w, x_3846.w, x_3846.w) * x_3848);
            let x_3851 : vec4<f32> = u_xlat17;
            let x_3852 : vec2<f32> = vec2<f32>(x_3851.x, x_3851.y);
            let x_3854 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3852.x, x_3852.y, x_3854);
            let x_3861 : vec3<f32> = txVec43;
            let x_3863 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3861.xy, x_3861.z);
            u_xlat85 = x_3863;
            let x_3865 : vec4<f32> = u_xlat17;
            let x_3866 : vec2<f32> = vec2<f32>(x_3865.z, x_3865.w);
            let x_3868 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3866.x, x_3866.y, x_3868);
            let x_3875 : vec3<f32> = txVec44;
            let x_3877 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3875.xy, x_3875.z);
            u_xlat13.x = x_3877;
            let x_3880 : f32 = u_xlat13.x;
            let x_3882 : f32 = u_xlat22.y;
            u_xlat13.x = (x_3880 * x_3882);
            let x_3886 : f32 = u_xlat22.x;
            let x_3887 : f32 = u_xlat85;
            let x_3890 : f32 = u_xlat13.x;
            u_xlat85 = ((x_3886 * x_3887) + x_3890);
            let x_3893 : vec2<f32> = u_xlat61;
            let x_3895 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3893.x, x_3893.y, x_3895);
            let x_3902 : vec3<f32> = txVec45;
            let x_3904 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3902.xy, x_3902.z);
            u_xlat61.x = x_3904;
            let x_3907 : f32 = u_xlat22.z;
            let x_3909 : f32 = u_xlat61.x;
            let x_3911 : f32 = u_xlat85;
            u_xlat85 = ((x_3907 * x_3909) + x_3911);
            let x_3914 : vec4<f32> = u_xlat20;
            let x_3915 : vec2<f32> = vec2<f32>(x_3914.x, x_3914.y);
            let x_3917 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3915.x, x_3915.y, x_3917);
            let x_3924 : vec3<f32> = txVec46;
            let x_3926 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3924.xy, x_3924.z);
            u_xlat61.x = x_3926;
            let x_3929 : f32 = u_xlat22.w;
            let x_3931 : f32 = u_xlat61.x;
            let x_3933 : f32 = u_xlat85;
            u_xlat85 = ((x_3929 * x_3931) + x_3933);
            let x_3936 : vec4<f32> = u_xlat18;
            let x_3937 : vec2<f32> = vec2<f32>(x_3936.x, x_3936.y);
            let x_3939 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3937.x, x_3937.y, x_3939);
            let x_3946 : vec3<f32> = txVec47;
            let x_3948 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3946.xy, x_3946.z);
            u_xlat61.x = x_3948;
            let x_3951 : f32 = u_xlat23.x;
            let x_3953 : f32 = u_xlat61.x;
            let x_3955 : f32 = u_xlat85;
            u_xlat85 = ((x_3951 * x_3953) + x_3955);
            let x_3958 : vec4<f32> = u_xlat18;
            let x_3959 : vec2<f32> = vec2<f32>(x_3958.z, x_3958.w);
            let x_3961 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3959.x, x_3959.y, x_3961);
            let x_3968 : vec3<f32> = txVec48;
            let x_3970 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3968.xy, x_3968.z);
            u_xlat61.x = x_3970;
            let x_3973 : f32 = u_xlat23.y;
            let x_3975 : f32 = u_xlat61.x;
            let x_3977 : f32 = u_xlat85;
            u_xlat85 = ((x_3973 * x_3975) + x_3977);
            let x_3980 : vec4<f32> = u_xlat19;
            let x_3981 : vec2<f32> = vec2<f32>(x_3980.x, x_3980.y);
            let x_3983 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3981.x, x_3981.y, x_3983);
            let x_3990 : vec3<f32> = txVec49;
            let x_3992 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3990.xy, x_3990.z);
            u_xlat61.x = x_3992;
            let x_3995 : f32 = u_xlat23.z;
            let x_3997 : f32 = u_xlat61.x;
            let x_3999 : f32 = u_xlat85;
            u_xlat85 = ((x_3995 * x_3997) + x_3999);
            let x_4002 : vec4<f32> = u_xlat20;
            let x_4003 : vec2<f32> = vec2<f32>(x_4002.z, x_4002.w);
            let x_4005 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_4003.x, x_4003.y, x_4005);
            let x_4012 : vec3<f32> = txVec50;
            let x_4014 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4012.xy, x_4012.z);
            u_xlat61.x = x_4014;
            let x_4017 : f32 = u_xlat23.w;
            let x_4019 : f32 = u_xlat61.x;
            let x_4021 : f32 = u_xlat85;
            u_xlat85 = ((x_4017 * x_4019) + x_4021);
            let x_4024 : vec4<f32> = u_xlat21;
            let x_4025 : vec2<f32> = vec2<f32>(x_4024.x, x_4024.y);
            let x_4027 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_4025.x, x_4025.y, x_4027);
            let x_4034 : vec3<f32> = txVec51;
            let x_4036 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4034.xy, x_4034.z);
            u_xlat61.x = x_4036;
            let x_4039 : f32 = u_xlat24.x;
            let x_4041 : f32 = u_xlat61.x;
            let x_4043 : f32 = u_xlat85;
            u_xlat85 = ((x_4039 * x_4041) + x_4043);
            let x_4046 : vec4<f32> = u_xlat21;
            let x_4047 : vec2<f32> = vec2<f32>(x_4046.z, x_4046.w);
            let x_4049 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_4047.x, x_4047.y, x_4049);
            let x_4056 : vec3<f32> = txVec52;
            let x_4058 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4056.xy, x_4056.z);
            u_xlat61.x = x_4058;
            let x_4061 : f32 = u_xlat24.y;
            let x_4063 : f32 = u_xlat61.x;
            let x_4065 : f32 = u_xlat85;
            u_xlat85 = ((x_4061 * x_4063) + x_4065);
            let x_4068 : vec2<f32> = u_xlat38;
            let x_4070 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_4068.x, x_4068.y, x_4070);
            let x_4077 : vec3<f32> = txVec53;
            let x_4079 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4077.xy, x_4077.z);
            u_xlat61.x = x_4079;
            let x_4082 : f32 = u_xlat24.z;
            let x_4084 : f32 = u_xlat61.x;
            let x_4086 : f32 = u_xlat85;
            u_xlat85 = ((x_4082 * x_4084) + x_4086);
            let x_4089 : vec2<f32> = u_xlat69;
            let x_4091 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_4089.x, x_4089.y, x_4091);
            let x_4098 : vec3<f32> = txVec54;
            let x_4100 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4098.xy, x_4098.z);
            u_xlat61.x = x_4100;
            let x_4103 : f32 = u_xlat24.w;
            let x_4105 : f32 = u_xlat61.x;
            let x_4107 : f32 = u_xlat85;
            u_xlat85 = ((x_4103 * x_4105) + x_4107);
            let x_4110 : vec4<f32> = u_xlat16;
            let x_4111 : vec2<f32> = vec2<f32>(x_4110.x, x_4110.y);
            let x_4113 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_4111.x, x_4111.y, x_4113);
            let x_4120 : vec3<f32> = txVec55;
            let x_4122 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4120.xy, x_4120.z);
            u_xlat61.x = x_4122;
            let x_4125 : f32 = u_xlat12.x;
            let x_4127 : f32 = u_xlat61.x;
            let x_4129 : f32 = u_xlat85;
            u_xlat85 = ((x_4125 * x_4127) + x_4129);
            let x_4132 : vec4<f32> = u_xlat16;
            let x_4133 : vec2<f32> = vec2<f32>(x_4132.z, x_4132.w);
            let x_4135 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_4133.x, x_4133.y, x_4135);
            let x_4142 : vec3<f32> = txVec56;
            let x_4144 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4142.xy, x_4142.z);
            u_xlat61.x = x_4144;
            let x_4147 : f32 = u_xlat12.y;
            let x_4149 : f32 = u_xlat61.x;
            let x_4151 : f32 = u_xlat85;
            u_xlat85 = ((x_4147 * x_4149) + x_4151);
            let x_4154 : vec2<f32> = u_xlat64;
            let x_4156 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_4154.x, x_4154.y, x_4156);
            let x_4163 : vec3<f32> = txVec57;
            let x_4165 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4163.xy, x_4163.z);
            u_xlat61.x = x_4165;
            let x_4168 : f32 = u_xlat12.z;
            let x_4170 : f32 = u_xlat61.x;
            let x_4172 : f32 = u_xlat85;
            u_xlat85 = ((x_4168 * x_4170) + x_4172);
            let x_4175 : vec4<f32> = u_xlat11;
            let x_4176 : vec2<f32> = vec2<f32>(x_4175.x, x_4175.y);
            let x_4178 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_4176.x, x_4176.y, x_4178);
            let x_4185 : vec3<f32> = txVec58;
            let x_4187 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4185.xy, x_4185.z);
            u_xlat11.x = x_4187;
            let x_4190 : f32 = u_xlat12.w;
            let x_4192 : f32 = u_xlat11.x;
            let x_4194 : f32 = u_xlat85;
            u_xlat84 = ((x_4190 * x_4192) + x_4194);
          }
        }
      } else {
        let x_4198 : vec4<f32> = u_xlat10;
        let x_4199 : vec2<f32> = vec2<f32>(x_4198.x, x_4198.y);
        let x_4201 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_4199.x, x_4199.y, x_4201);
        let x_4208 : vec3<f32> = txVec59;
        let x_4210 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4208.xy, x_4208.z);
        u_xlat84 = x_4210;
      }
      let x_4211 : i32 = u_xlati56;
      let x_4213 : f32 = x_679.x_AdditionalShadowParams[x_4211].x;
      u_xlat10.x = (1.0f + -(x_4213));
      let x_4217 : f32 = u_xlat84;
      let x_4218 : i32 = u_xlati56;
      let x_4220 : f32 = x_679.x_AdditionalShadowParams[x_4218].x;
      let x_4223 : f32 = u_xlat10.x;
      u_xlat84 = ((x_4217 * x_4220) + x_4223);
      let x_4226 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_4226);
      let x_4231 : f32 = u_xlat10.z;
      u_xlatb35 = (x_4231 >= 1.0f);
      let x_4233 : bool = u_xlatb35;
      let x_4235 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_4233 | x_4235);
      let x_4239 : bool = u_xlatb10.x;
      let x_4240 : f32 = u_xlat84;
      u_xlat84 = select(x_4240, 1.0f, x_4239);
    } else {
      u_xlat84 = 1.0f;
    }
    let x_4243 : f32 = u_xlat84;
    u_xlat10.x = (-(x_4243) + 1.0f);
    let x_4248 : f32 = u_xlat26.x;
    let x_4250 : f32 = u_xlat10.x;
    let x_4252 : f32 = u_xlat84;
    u_xlat84 = ((x_4248 * x_4250) + x_4252);
    let x_4255 : i32 = u_xlati56;
    u_xlati10 = (1i << bitcast<u32>((x_4255 & 31i)));
    let x_4259 : i32 = u_xlati10;
    let x_4262 : f32 = x_2301.x_AdditionalLightsCookieEnableBits;
    u_xlati10 = bitcast<i32>((bitcast<u32>(x_4259) & bitcast<u32>(x_4262)));
    let x_4266 : i32 = u_xlati10;
    if ((x_4266 != 0i)) {
      let x_4270 : i32 = u_xlati56;
      let x_4272 : f32 = x_2301.x_AdditionalLightsLightTypes[x_4270].el;
      u_xlati10 = i32(x_4272);
      let x_4275 : i32 = u_xlati10;
      u_xlati35 = select(1i, 0i, (x_4275 != 0i));
      let x_4279 : i32 = u_xlati56;
      u_xlati60 = (x_4279 << bitcast<u32>(2i));
      let x_4281 : i32 = u_xlati35;
      if ((x_4281 != 0i)) {
        let x_4285 : vec3<f32> = vs_INTERP7;
        let x_4287 : i32 = u_xlati60;
        let x_4290 : i32 = u_xlati60;
        let x_4294 : vec4<f32> = x_2301.x_AdditionalLightsWorldToLights[((x_4287 + 1i) / 4i)][((x_4290 + 1i) % 4i)];
        let x_4296 : vec3<f32> = (vec3<f32>(x_4285.y, x_4285.y, x_4285.y) * vec3<f32>(x_4294.x, x_4294.y, x_4294.w));
        let x_4297 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4296.x, x_4296.y, x_4296.z, x_4297.w);
        let x_4299 : i32 = u_xlati60;
        let x_4301 : i32 = u_xlati60;
        let x_4304 : vec4<f32> = x_2301.x_AdditionalLightsWorldToLights[(x_4299 / 4i)][(x_4301 % 4i)];
        let x_4306 : vec3<f32> = vs_INTERP7;
        let x_4309 : vec4<f32> = u_xlat11;
        let x_4311 : vec3<f32> = ((vec3<f32>(x_4304.x, x_4304.y, x_4304.w) * vec3<f32>(x_4306.x, x_4306.x, x_4306.x)) + vec3<f32>(x_4309.x, x_4309.y, x_4309.z));
        let x_4312 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4311.x, x_4311.y, x_4311.z, x_4312.w);
        let x_4314 : i32 = u_xlati60;
        let x_4317 : i32 = u_xlati60;
        let x_4321 : vec4<f32> = x_2301.x_AdditionalLightsWorldToLights[((x_4314 + 2i) / 4i)][((x_4317 + 2i) % 4i)];
        let x_4323 : vec3<f32> = vs_INTERP7;
        let x_4326 : vec4<f32> = u_xlat11;
        let x_4328 : vec3<f32> = ((vec3<f32>(x_4321.x, x_4321.y, x_4321.w) * vec3<f32>(x_4323.z, x_4323.z, x_4323.z)) + vec3<f32>(x_4326.x, x_4326.y, x_4326.z));
        let x_4329 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4328.x, x_4328.y, x_4328.z, x_4329.w);
        let x_4331 : vec4<f32> = u_xlat11;
        let x_4333 : i32 = u_xlati60;
        let x_4336 : i32 = u_xlati60;
        let x_4340 : vec4<f32> = x_2301.x_AdditionalLightsWorldToLights[((x_4333 + 3i) / 4i)][((x_4336 + 3i) % 4i)];
        let x_4342 : vec3<f32> = (vec3<f32>(x_4331.x, x_4331.y, x_4331.z) + vec3<f32>(x_4340.x, x_4340.y, x_4340.w));
        let x_4343 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4342.x, x_4342.y, x_4342.z, x_4343.w);
        let x_4345 : vec4<f32> = u_xlat11;
        let x_4347 : vec4<f32> = u_xlat11;
        let x_4349 : vec2<f32> = (vec2<f32>(x_4345.x, x_4345.y) / vec2<f32>(x_4347.z, x_4347.z));
        let x_4350 : vec3<f32> = u_xlat35;
        u_xlat35 = vec3<f32>(x_4349.x, x_4350.y, x_4349.y);
        let x_4352 : vec3<f32> = u_xlat35;
        let x_4355 : vec2<f32> = ((vec2<f32>(x_4352.x, x_4352.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_4356 : vec3<f32> = u_xlat35;
        u_xlat35 = vec3<f32>(x_4355.x, x_4356.y, x_4355.y);
        let x_4358 : vec3<f32> = u_xlat35;
        let x_4362 : vec2<f32> = clamp(vec2<f32>(x_4358.x, x_4358.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_4363 : vec3<f32> = u_xlat35;
        u_xlat35 = vec3<f32>(x_4362.x, x_4363.y, x_4362.y);
        let x_4365 : i32 = u_xlati56;
        let x_4367 : vec4<f32> = x_2301.x_AdditionalLightsCookieAtlasUVRects[x_4365];
        let x_4369 : vec3<f32> = u_xlat35;
        let x_4372 : i32 = u_xlati56;
        let x_4374 : vec4<f32> = x_2301.x_AdditionalLightsCookieAtlasUVRects[x_4372];
        let x_4376 : vec2<f32> = ((vec2<f32>(x_4367.x, x_4367.y) * vec2<f32>(x_4369.x, x_4369.z)) + vec2<f32>(x_4374.z, x_4374.w));
        let x_4377 : vec3<f32> = u_xlat35;
        u_xlat35 = vec3<f32>(x_4376.x, x_4377.y, x_4376.y);
      } else {
        let x_4380 : i32 = u_xlati10;
        u_xlatb10.x = (x_4380 == 1i);
        let x_4384 : bool = u_xlatb10.x;
        u_xlati10 = select(0i, 1i, x_4384);
        let x_4386 : i32 = u_xlati10;
        if ((x_4386 != 0i)) {
          let x_4390 : vec3<f32> = vs_INTERP7;
          let x_4392 : i32 = u_xlati60;
          let x_4395 : i32 = u_xlati60;
          let x_4399 : vec4<f32> = x_2301.x_AdditionalLightsWorldToLights[((x_4392 + 1i) / 4i)][((x_4395 + 1i) % 4i)];
          let x_4401 : vec2<f32> = (vec2<f32>(x_4390.y, x_4390.y) * vec2<f32>(x_4399.x, x_4399.y));
          let x_4402 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4401.x, x_4401.y, x_4402.z, x_4402.w);
          let x_4404 : i32 = u_xlati60;
          let x_4406 : i32 = u_xlati60;
          let x_4409 : vec4<f32> = x_2301.x_AdditionalLightsWorldToLights[(x_4404 / 4i)][(x_4406 % 4i)];
          let x_4411 : vec3<f32> = vs_INTERP7;
          let x_4414 : vec4<f32> = u_xlat11;
          let x_4416 : vec2<f32> = ((vec2<f32>(x_4409.x, x_4409.y) * vec2<f32>(x_4411.x, x_4411.x)) + vec2<f32>(x_4414.x, x_4414.y));
          let x_4417 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4416.x, x_4416.y, x_4417.z, x_4417.w);
          let x_4419 : i32 = u_xlati60;
          let x_4422 : i32 = u_xlati60;
          let x_4426 : vec4<f32> = x_2301.x_AdditionalLightsWorldToLights[((x_4419 + 2i) / 4i)][((x_4422 + 2i) % 4i)];
          let x_4428 : vec3<f32> = vs_INTERP7;
          let x_4431 : vec4<f32> = u_xlat11;
          let x_4433 : vec2<f32> = ((vec2<f32>(x_4426.x, x_4426.y) * vec2<f32>(x_4428.z, x_4428.z)) + vec2<f32>(x_4431.x, x_4431.y));
          let x_4434 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4433.x, x_4433.y, x_4434.z, x_4434.w);
          let x_4436 : vec4<f32> = u_xlat11;
          let x_4438 : i32 = u_xlati60;
          let x_4441 : i32 = u_xlati60;
          let x_4445 : vec4<f32> = x_2301.x_AdditionalLightsWorldToLights[((x_4438 + 3i) / 4i)][((x_4441 + 3i) % 4i)];
          let x_4447 : vec2<f32> = (vec2<f32>(x_4436.x, x_4436.y) + vec2<f32>(x_4445.x, x_4445.y));
          let x_4448 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4447.x, x_4447.y, x_4448.z, x_4448.w);
          let x_4450 : vec4<f32> = u_xlat11;
          let x_4453 : vec2<f32> = ((vec2<f32>(x_4450.x, x_4450.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4454 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4453.x, x_4453.y, x_4454.z, x_4454.w);
          let x_4456 : vec4<f32> = u_xlat11;
          let x_4458 : vec2<f32> = fract(vec2<f32>(x_4456.x, x_4456.y));
          let x_4459 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4458.x, x_4458.y, x_4459.z, x_4459.w);
          let x_4461 : i32 = u_xlati56;
          let x_4463 : vec4<f32> = x_2301.x_AdditionalLightsCookieAtlasUVRects[x_4461];
          let x_4465 : vec4<f32> = u_xlat11;
          let x_4468 : i32 = u_xlati56;
          let x_4470 : vec4<f32> = x_2301.x_AdditionalLightsCookieAtlasUVRects[x_4468];
          let x_4472 : vec2<f32> = ((vec2<f32>(x_4463.x, x_4463.y) * vec2<f32>(x_4465.x, x_4465.y)) + vec2<f32>(x_4470.z, x_4470.w));
          let x_4473 : vec3<f32> = u_xlat35;
          u_xlat35 = vec3<f32>(x_4472.x, x_4473.y, x_4472.y);
        } else {
          let x_4476 : vec3<f32> = vs_INTERP7;
          let x_4478 : i32 = u_xlati60;
          let x_4481 : i32 = u_xlati60;
          let x_4485 : vec4<f32> = x_2301.x_AdditionalLightsWorldToLights[((x_4478 + 1i) / 4i)][((x_4481 + 1i) % 4i)];
          u_xlat11 = (vec4<f32>(x_4476.y, x_4476.y, x_4476.y, x_4476.y) * x_4485);
          let x_4487 : i32 = u_xlati60;
          let x_4489 : i32 = u_xlati60;
          let x_4492 : vec4<f32> = x_2301.x_AdditionalLightsWorldToLights[(x_4487 / 4i)][(x_4489 % 4i)];
          let x_4493 : vec3<f32> = vs_INTERP7;
          let x_4496 : vec4<f32> = u_xlat11;
          u_xlat11 = ((x_4492 * vec4<f32>(x_4493.x, x_4493.x, x_4493.x, x_4493.x)) + x_4496);
          let x_4498 : i32 = u_xlati60;
          let x_4501 : i32 = u_xlati60;
          let x_4505 : vec4<f32> = x_2301.x_AdditionalLightsWorldToLights[((x_4498 + 2i) / 4i)][((x_4501 + 2i) % 4i)];
          let x_4506 : vec3<f32> = vs_INTERP7;
          let x_4509 : vec4<f32> = u_xlat11;
          u_xlat11 = ((x_4505 * vec4<f32>(x_4506.z, x_4506.z, x_4506.z, x_4506.z)) + x_4509);
          let x_4511 : vec4<f32> = u_xlat11;
          let x_4512 : i32 = u_xlati60;
          let x_4515 : i32 = u_xlati60;
          let x_4519 : vec4<f32> = x_2301.x_AdditionalLightsWorldToLights[((x_4512 + 3i) / 4i)][((x_4515 + 3i) % 4i)];
          u_xlat11 = (x_4511 + x_4519);
          let x_4521 : vec4<f32> = u_xlat11;
          let x_4523 : vec4<f32> = u_xlat11;
          let x_4525 : vec3<f32> = (vec3<f32>(x_4521.x, x_4521.y, x_4521.z) / vec3<f32>(x_4523.w, x_4523.w, x_4523.w));
          let x_4526 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4525.x, x_4525.y, x_4525.z, x_4526.w);
          let x_4528 : vec4<f32> = u_xlat11;
          let x_4530 : vec4<f32> = u_xlat11;
          u_xlat10.x = dot(vec3<f32>(x_4528.x, x_4528.y, x_4528.z), vec3<f32>(x_4530.x, x_4530.y, x_4530.z));
          let x_4535 : f32 = u_xlat10.x;
          u_xlat10.x = inverseSqrt(x_4535);
          let x_4538 : vec4<f32> = u_xlat10;
          let x_4540 : vec4<f32> = u_xlat11;
          let x_4542 : vec3<f32> = (vec3<f32>(x_4538.x, x_4538.x, x_4538.x) * vec3<f32>(x_4540.x, x_4540.y, x_4540.z));
          let x_4543 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4542.x, x_4542.y, x_4542.z, x_4543.w);
          let x_4545 : vec4<f32> = u_xlat11;
          u_xlat10.x = dot(abs(vec3<f32>(x_4545.x, x_4545.y, x_4545.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_4552 : f32 = u_xlat10.x;
          u_xlat10.x = max(x_4552, 0.00000099999999747524f);
          let x_4557 : f32 = u_xlat10.x;
          u_xlat10.x = (1.0f / x_4557);
          let x_4560 : vec4<f32> = u_xlat10;
          let x_4562 : vec4<f32> = u_xlat11;
          let x_4564 : vec3<f32> = (vec3<f32>(x_4560.x, x_4560.x, x_4560.x) * vec3<f32>(x_4562.z, x_4562.x, x_4562.y));
          let x_4565 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4564.x, x_4564.y, x_4564.z, x_4565.w);
          let x_4568 : f32 = u_xlat12.x;
          u_xlat12.x = -(x_4568);
          let x_4572 : f32 = u_xlat12.x;
          u_xlat12.x = clamp(x_4572, 0.0f, 1.0f);
          let x_4576 : vec4<f32> = u_xlat12;
          let x_4578 : vec4<bool> = (vec4<f32>(x_4576.y, x_4576.z, x_4576.y, x_4576.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb61 = vec2<bool>(x_4578.x, x_4578.y);
          let x_4581 : bool = u_xlatb61.x;
          if (x_4581) {
            let x_4586 : f32 = u_xlat12.x;
            x_4582 = x_4586;
          } else {
            let x_4589 : f32 = u_xlat12.x;
            x_4582 = -(x_4589);
          }
          let x_4591 : f32 = x_4582;
          u_xlat61.x = x_4591;
          let x_4594 : bool = u_xlatb61.y;
          if (x_4594) {
            let x_4599 : f32 = u_xlat12.x;
            x_4595 = x_4599;
          } else {
            let x_4602 : f32 = u_xlat12.x;
            x_4595 = -(x_4602);
          }
          let x_4604 : f32 = x_4595;
          u_xlat61.y = x_4604;
          let x_4606 : vec4<f32> = u_xlat11;
          let x_4608 : vec4<f32> = u_xlat10;
          let x_4611 : vec2<f32> = u_xlat61;
          let x_4612 : vec2<f32> = ((vec2<f32>(x_4606.x, x_4606.y) * vec2<f32>(x_4608.x, x_4608.x)) + x_4611);
          let x_4613 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_4612.x, x_4613.y, x_4612.y, x_4613.w);
          let x_4615 : vec4<f32> = u_xlat10;
          let x_4618 : vec2<f32> = ((vec2<f32>(x_4615.x, x_4615.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4619 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_4618.x, x_4619.y, x_4618.y, x_4619.w);
          let x_4621 : vec4<f32> = u_xlat10;
          let x_4625 : vec2<f32> = clamp(vec2<f32>(x_4621.x, x_4621.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4626 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_4625.x, x_4626.y, x_4625.y, x_4626.w);
          let x_4628 : i32 = u_xlati56;
          let x_4630 : vec4<f32> = x_2301.x_AdditionalLightsCookieAtlasUVRects[x_4628];
          let x_4632 : vec4<f32> = u_xlat10;
          let x_4635 : i32 = u_xlati56;
          let x_4637 : vec4<f32> = x_2301.x_AdditionalLightsCookieAtlasUVRects[x_4635];
          let x_4639 : vec2<f32> = ((vec2<f32>(x_4630.x, x_4630.y) * vec2<f32>(x_4632.x, x_4632.z)) + vec2<f32>(x_4637.z, x_4637.w));
          let x_4640 : vec3<f32> = u_xlat35;
          u_xlat35 = vec3<f32>(x_4639.x, x_4640.y, x_4639.y);
        }
      }
      let x_4647 : vec3<f32> = u_xlat35;
      let x_4649 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4647.x, x_4647.z), 0.0f);
      u_xlat10 = x_4649;
      let x_4651 : bool = u_xlatb6.y;
      if (x_4651) {
        let x_4656 : f32 = u_xlat10.w;
        x_4652 = x_4656;
      } else {
        let x_4659 : f32 = u_xlat10.x;
        x_4652 = x_4659;
      }
      let x_4660 : f32 = x_4652;
      u_xlat85 = x_4660;
      let x_4662 : bool = u_xlatb6.x;
      if (x_4662) {
        let x_4666 : vec4<f32> = u_xlat10;
        x_4663 = vec3<f32>(x_4666.x, x_4666.y, x_4666.z);
      } else {
        let x_4669 : f32 = u_xlat85;
        x_4663 = vec3<f32>(x_4669, x_4669, x_4669);
      }
      let x_4671 : vec3<f32> = x_4663;
      let x_4672 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_4671.x, x_4671.y, x_4671.z, x_4672.w);
    } else {
      u_xlat10.x = 1.0f;
      u_xlat10.y = 1.0f;
      u_xlat10.z = 1.0f;
    }
    let x_4678 : vec4<f32> = u_xlat10;
    let x_4680 : i32 = u_xlati56;
    let x_4682 : vec4<f32> = x_2768.x_AdditionalLightsColor[x_4680];
    let x_4684 : vec3<f32> = (vec3<f32>(x_4678.x, x_4678.y, x_4678.z) * vec3<f32>(x_4682.x, x_4682.y, x_4682.z));
    let x_4685 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_4684.x, x_4684.y, x_4684.z, x_4685.w);
    let x_4687 : f32 = u_xlat81;
    let x_4688 : f32 = u_xlat84;
    u_xlat56.x = (x_4687 * x_4688);
    let x_4691 : vec3<f32> = u_xlat25;
    let x_4692 : vec4<f32> = u_xlat9;
    u_xlat81 = dot(x_4691, vec3<f32>(x_4692.x, x_4692.y, x_4692.z));
    let x_4695 : f32 = u_xlat81;
    u_xlat81 = clamp(x_4695, 0.0f, 1.0f);
    let x_4697 : f32 = u_xlat81;
    let x_4699 : f32 = u_xlat56.x;
    u_xlat56.x = (x_4697 * x_4699);
    let x_4702 : vec2<f32> = u_xlat56;
    let x_4704 : vec4<f32> = u_xlat10;
    let x_4706 : vec3<f32> = (vec3<f32>(x_4702.x, x_4702.x, x_4702.x) * vec3<f32>(x_4704.x, x_4704.y, x_4704.z));
    let x_4707 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_4706.x, x_4706.y, x_4706.z, x_4707.w);
    let x_4709 : vec3<f32> = u_xlat33;
    let x_4710 : f32 = u_xlat82;
    let x_4713 : vec3<f32> = u_xlat5;
    u_xlat33 = ((x_4709 * vec3<f32>(x_4710, x_4710, x_4710)) + x_4713);
    let x_4715 : vec3<f32> = u_xlat33;
    let x_4716 : vec3<f32> = u_xlat33;
    u_xlat56.x = dot(x_4715, x_4716);
    let x_4720 : f32 = u_xlat56.x;
    u_xlat56.x = max(x_4720, 1.17549435e-38f);
    let x_4724 : f32 = u_xlat56.x;
    u_xlat56.x = inverseSqrt(x_4724);
    let x_4727 : vec2<f32> = u_xlat56;
    let x_4729 : vec3<f32> = u_xlat33;
    u_xlat33 = (vec3<f32>(x_4727.x, x_4727.x, x_4727.x) * x_4729);
    let x_4731 : vec3<f32> = u_xlat25;
    let x_4732 : vec3<f32> = u_xlat33;
    u_xlat56.x = dot(x_4731, x_4732);
    let x_4736 : f32 = u_xlat56.x;
    u_xlat56.x = clamp(x_4736, 0.0f, 1.0f);
    let x_4739 : vec4<f32> = u_xlat9;
    let x_4741 : vec3<f32> = u_xlat33;
    u_xlat56.y = dot(vec3<f32>(x_4739.x, x_4739.y, x_4739.z), x_4741);
    let x_4745 : f32 = u_xlat56.y;
    u_xlat56.y = clamp(x_4745, 0.0f, 1.0f);
    let x_4748 : vec2<f32> = u_xlat56;
    let x_4749 : vec2<f32> = u_xlat56;
    u_xlat56 = (x_4748 * x_4749);
    let x_4752 : f32 = u_xlat56.x;
    let x_4754 : f32 = u_xlat8.x;
    u_xlat56.x = ((x_4752 * x_4754) + 1.00001001358032226562f);
    let x_4759 : f32 = u_xlat56.x;
    let x_4761 : f32 = u_xlat56.x;
    u_xlat56.x = (x_4759 * x_4761);
    let x_4765 : f32 = u_xlat56.y;
    u_xlat81 = max(x_4765, 0.10000000149011611938f);
    let x_4767 : f32 = u_xlat81;
    let x_4769 : f32 = u_xlat56.x;
    u_xlat56.x = (x_4767 * x_4769);
    let x_4772 : f32 = u_xlat79;
    let x_4774 : f32 = u_xlat56.x;
    u_xlat56.x = (x_4772 * x_4774);
    let x_4777 : f32 = u_xlat78;
    let x_4779 : f32 = u_xlat56.x;
    u_xlat56.x = (x_4777 / x_4779);
    let x_4782 : vec3<f32> = u_xlat2;
    let x_4783 : vec2<f32> = u_xlat56;
    let x_4786 : vec3<f32> = u_xlat3;
    u_xlat33 = ((x_4782 * vec3<f32>(x_4783.x, x_4783.x, x_4783.x)) + x_4786);
    let x_4788 : vec3<f32> = u_xlat33;
    let x_4789 : vec4<f32> = u_xlat10;
    let x_4792 : vec4<f32> = u_xlat7;
    let x_4794 : vec3<f32> = ((x_4788 * vec3<f32>(x_4789.x, x_4789.y, x_4789.z)) + vec3<f32>(x_4792.x, x_4792.y, x_4792.z));
    let x_4795 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_4794.x, x_4794.y, x_4794.z, x_4795.w);

    continuing {
      let x_4797 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4797 + bitcast<u32>(1i));
    }
  }
  let x_4799 : vec4<f32> = u_xlat4;
  let x_4801 : f32 = u_xlat80;
  let x_4804 : vec4<f32> = u_xlat1;
  let x_4806 : vec3<f32> = ((vec3<f32>(x_4799.x, x_4799.y, x_4799.z) * vec3<f32>(x_4801, x_4801, x_4801)) + vec3<f32>(x_4804.x, x_4804.z, x_4804.w));
  let x_4807 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4806.x, x_4806.y, x_4806.z, x_4807.w);
  let x_4811 : vec4<f32> = u_xlat7;
  let x_4813 : vec4<f32> = u_xlat0;
  let x_4815 : vec3<f32> = (vec3<f32>(x_4811.x, x_4811.y, x_4811.z) + vec3<f32>(x_4813.x, x_4813.y, x_4813.z));
  let x_4816 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4815.x, x_4815.y, x_4815.z, x_4816.w);
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


