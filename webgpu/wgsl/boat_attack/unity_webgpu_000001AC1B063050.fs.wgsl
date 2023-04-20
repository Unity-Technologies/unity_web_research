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

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(13) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlatb54 : vec2<bool>;

@group(1) @binding(3) var<uniform> x_779 : LightShadows;

var<private> vs_INTERP3 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(15) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat54 : f32;

var<private> u_xlatb79 : bool;

var<private> u_xlat56 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat33 : vec3<f32>;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlatb80 : bool;

@group(1) @binding(4) var<uniform> x_2068 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlat81 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(12) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu0 : u32;

var<private> u_xlatu80 : u32;

var<private> u_xlati81 : i32;

var<private> u_xlati80 : i32;

@group(1) @binding(1) var<uniform> x_2530 : AdditionalLights;

var<private> u_xlat82 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlati84 : i32;

var<private> u_xlatb10 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat35 : vec3<f32>;

var<private> u_xlat60 : f32;

var<private> u_xlatb84 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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

var<private> u_xlati10 : i32;

var<private> u_xlati35 : i32;

var<private> u_xlati60 : i32;

var<private> u_xlatb61 : vec2<bool>;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

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
  var x_2150 : f32;
  var x_2161 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2665 : f32;
  var x_2676 : f32;
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
  var x_4342 : f32;
  var x_4355 : f32;
  var x_4412 : f32;
  var x_4423 : vec3<f32>;
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
  let x_678 : vec2<f32> = vs_INTERP0;
  let x_680 : f32 = x_135.x_GlobalMipBias.x;
  let x_681 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_678, x_680);
  u_xlat4 = x_681;
  let x_686 : vec2<f32> = vs_INTERP0;
  let x_688 : f32 = x_135.x_GlobalMipBias.x;
  let x_689 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_686, x_688);
  let x_690 : vec3<f32> = vec3<f32>(x_689.x, x_689.y, x_689.z);
  let x_691 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_690.x, x_690.y, x_690.z, x_691.w);
  let x_693 : vec4<f32> = u_xlat4;
  let x_696 : vec3<f32> = (vec3<f32>(x_693.x, x_693.y, x_693.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_697 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_696.x, x_696.y, x_696.z, x_697.w);
  let x_699 : vec3<f32> = u_xlat25;
  let x_700 : vec4<f32> = u_xlat4;
  u_xlat77 = dot(x_699, vec3<f32>(x_700.x, x_700.y, x_700.z));
  let x_703 : f32 = u_xlat77;
  u_xlat77 = (x_703 + 0.5f);
  let x_706 : vec4<f32> = u_xlat1;
  let x_708 : f32 = u_xlat77;
  let x_710 : vec3<f32> = (vec3<f32>(x_706.x, x_706.y, x_706.z) * vec3<f32>(x_708, x_708, x_708));
  let x_711 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_710.x, x_710.y, x_710.z, x_711.w);
  let x_714 : f32 = u_xlat4.w;
  u_xlat77 = max(x_714, 0.00009999999747378752f);
  let x_717 : vec4<f32> = u_xlat1;
  let x_719 : f32 = u_xlat77;
  let x_721 : vec3<f32> = (vec3<f32>(x_717.x, x_717.y, x_717.z) / vec3<f32>(x_719, x_719, x_719));
  let x_722 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_721.x, x_721.y, x_721.z, x_722.w);
  let x_724 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_724 * vec3<f32>(0.86399996280670166016f, 0.86399996280670166016f, 0.86399996280670166016f));
  let x_728 : vec4<f32> = u_xlat1;
  let x_730 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_728.w, x_728.w, x_728.w) * x_730) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_735 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_735 * vec3<f32>(0.10000000149011611938f, 0.10000000149011611938f, 0.10000000149011611938f)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_742 : f32 = u_xlat0.x;
  u_xlat76 = (-(x_742) + 1.0f);
  let x_745 : f32 = u_xlat76;
  let x_746 : f32 = u_xlat76;
  u_xlat77 = (x_745 * x_746);
  let x_748 : f32 = u_xlat77;
  u_xlat77 = max(x_748, 0.0078125f);
  let x_751 : f32 = u_xlat77;
  let x_752 : f32 = u_xlat77;
  u_xlat78 = (x_751 * x_752);
  let x_755 : f32 = u_xlat0.x;
  u_xlat0.x = (x_755 + 0.13600003719329833984f);
  let x_760 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_760, 1.0f);
  let x_763 : f32 = u_xlat77;
  u_xlat4.x = ((x_763 * 4.0f) + 2.0f);
  let x_768 : f32 = u_xlat7.x;
  u_xlat29.x = min(x_768, 1.0f);
  let x_781 : f32 = x_779.x_MainLightShadowParams.y;
  u_xlatb54.x = (0.0f < x_781);
  let x_785 : bool = u_xlatb54.x;
  if (x_785) {
    let x_789 : f32 = x_779.x_MainLightShadowParams.y;
    u_xlatb54.x = (x_789 == 1.0f);
    let x_793 : bool = u_xlatb54.x;
    if (x_793) {
      let x_797 : vec4<f32> = vs_INTERP3;
      let x_800 : vec4<f32> = x_779.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_797.x, x_797.y, x_797.x, x_797.y) + x_800);
      let x_804 : vec4<f32> = u_xlat6;
      let x_805 : vec2<f32> = vec2<f32>(x_804.x, x_804.y);
      let x_807 : f32 = vs_INTERP3.z;
      txVec0 = vec3<f32>(x_805.x, x_805.y, x_807);
      let x_819 : vec3<f32> = txVec0;
      let x_821 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_819.xy, x_819.z);
      u_xlat7.x = x_821;
      let x_824 : vec4<f32> = u_xlat6;
      let x_825 : vec2<f32> = vec2<f32>(x_824.z, x_824.w);
      let x_827 : f32 = vs_INTERP3.z;
      txVec1 = vec3<f32>(x_825.x, x_825.y, x_827);
      let x_834 : vec3<f32> = txVec1;
      let x_836 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_834.xy, x_834.z);
      u_xlat7.y = x_836;
      let x_838 : vec4<f32> = vs_INTERP3;
      let x_842 : vec4<f32> = x_779.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_838.x, x_838.y, x_838.x, x_838.y) + x_842);
      let x_845 : vec4<f32> = u_xlat6;
      let x_846 : vec2<f32> = vec2<f32>(x_845.x, x_845.y);
      let x_848 : f32 = vs_INTERP3.z;
      txVec2 = vec3<f32>(x_846.x, x_846.y, x_848);
      let x_855 : vec3<f32> = txVec2;
      let x_857 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_855.xy, x_855.z);
      u_xlat7.z = x_857;
      let x_860 : vec4<f32> = u_xlat6;
      let x_861 : vec2<f32> = vec2<f32>(x_860.z, x_860.w);
      let x_863 : f32 = vs_INTERP3.z;
      txVec3 = vec3<f32>(x_861.x, x_861.y, x_863);
      let x_870 : vec3<f32> = txVec3;
      let x_872 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_870.xy, x_870.z);
      u_xlat7.w = x_872;
      let x_875 : vec4<f32> = u_xlat7;
      u_xlat54 = dot(x_875, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_882 : f32 = x_779.x_MainLightShadowParams.y;
      u_xlatb79 = (x_882 == 2.0f);
      let x_884 : bool = u_xlatb79;
      if (x_884) {
        let x_887 : vec4<f32> = vs_INTERP3;
        let x_891 : vec4<f32> = x_779.x_MainLightShadowmapSize;
        let x_895 : vec2<f32> = ((vec2<f32>(x_887.x, x_887.y) * vec2<f32>(x_891.z, x_891.w)) + vec2<f32>(0.5f, 0.5f));
        let x_896 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_895.x, x_895.y, x_896.z, x_896.w);
        let x_898 : vec4<f32> = u_xlat6;
        let x_900 : vec2<f32> = floor(vec2<f32>(x_898.x, x_898.y));
        let x_901 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_900.x, x_900.y, x_901.z, x_901.w);
        let x_904 : vec4<f32> = vs_INTERP3;
        let x_907 : vec4<f32> = x_779.x_MainLightShadowmapSize;
        let x_910 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_904.x, x_904.y) * vec2<f32>(x_907.z, x_907.w)) + -(vec2<f32>(x_910.x, x_910.y)));
        let x_914 : vec2<f32> = u_xlat56;
        u_xlat7 = (vec4<f32>(x_914.x, x_914.x, x_914.y, x_914.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_919 : vec4<f32> = u_xlat7;
        let x_921 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_919.x, x_919.x, x_919.z, x_919.z) * vec4<f32>(x_921.x, x_921.x, x_921.z, x_921.z));
        let x_924 : vec4<f32> = u_xlat8;
        let x_928 : vec2<f32> = (vec2<f32>(x_924.y, x_924.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_929 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_928.x, x_929.y, x_928.y, x_929.w);
        let x_931 : vec4<f32> = u_xlat8;
        let x_934 : vec2<f32> = u_xlat56;
        let x_936 : vec2<f32> = ((vec2<f32>(x_931.x, x_931.z) * vec2<f32>(0.5f, 0.5f)) + -(x_934));
        let x_937 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_936.x, x_936.y, x_937.z, x_937.w);
        let x_940 : vec2<f32> = u_xlat56;
        u_xlat58 = (-(x_940) + vec2<f32>(1.0f, 1.0f));
        let x_944 : vec2<f32> = u_xlat56;
        let x_946 : vec2<f32> = min(x_944, vec2<f32>(0.0f, 0.0f));
        let x_947 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_946.x, x_946.y, x_947.z, x_947.w);
        let x_949 : vec4<f32> = u_xlat9;
        let x_952 : vec4<f32> = u_xlat9;
        let x_955 : vec2<f32> = u_xlat58;
        let x_956 : vec2<f32> = ((-(vec2<f32>(x_949.x, x_949.y)) * vec2<f32>(x_952.x, x_952.y)) + x_955);
        let x_957 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_956.x, x_956.y, x_957.z, x_957.w);
        let x_959 : vec2<f32> = u_xlat56;
        u_xlat56 = max(x_959, vec2<f32>(0.0f, 0.0f));
        let x_961 : vec2<f32> = u_xlat56;
        let x_963 : vec2<f32> = u_xlat56;
        let x_965 : vec4<f32> = u_xlat7;
        u_xlat56 = ((-(x_961) * x_963) + vec2<f32>(x_965.y, x_965.w));
        let x_968 : vec4<f32> = u_xlat9;
        let x_970 : vec2<f32> = (vec2<f32>(x_968.x, x_968.y) + vec2<f32>(1.0f, 1.0f));
        let x_971 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_970.x, x_970.y, x_971.z, x_971.w);
        let x_973 : vec2<f32> = u_xlat56;
        u_xlat56 = (x_973 + vec2<f32>(1.0f, 1.0f));
        let x_976 : vec4<f32> = u_xlat8;
        let x_980 : vec2<f32> = (vec2<f32>(x_976.x, x_976.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_981 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_980.x, x_980.y, x_981.z, x_981.w);
        let x_983 : vec2<f32> = u_xlat58;
        let x_984 : vec2<f32> = (x_983 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_985 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_984.x, x_984.y, x_985.z, x_985.w);
        let x_987 : vec4<f32> = u_xlat9;
        let x_989 : vec2<f32> = (vec2<f32>(x_987.x, x_987.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_990 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_989.x, x_989.y, x_990.z, x_990.w);
        let x_993 : vec2<f32> = u_xlat56;
        let x_994 : vec2<f32> = (x_993 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_995 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_994.x, x_994.y, x_995.z, x_995.w);
        let x_997 : vec4<f32> = u_xlat7;
        u_xlat56 = (vec2<f32>(x_997.y, x_997.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1001 : f32 = u_xlat9.x;
        u_xlat10.z = x_1001;
        let x_1004 : f32 = u_xlat56.x;
        u_xlat10.w = x_1004;
        let x_1007 : f32 = u_xlat11.x;
        u_xlat8.z = x_1007;
        let x_1010 : f32 = u_xlat7.x;
        u_xlat8.w = x_1010;
        let x_1013 : vec4<f32> = u_xlat8;
        let x_1015 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_1013.z, x_1013.w, x_1013.x, x_1013.z) + vec4<f32>(x_1015.z, x_1015.w, x_1015.x, x_1015.z));
        let x_1019 : f32 = u_xlat10.y;
        u_xlat9.z = x_1019;
        let x_1022 : f32 = u_xlat56.y;
        u_xlat9.w = x_1022;
        let x_1025 : f32 = u_xlat8.y;
        u_xlat11.z = x_1025;
        let x_1028 : f32 = u_xlat7.z;
        u_xlat11.w = x_1028;
        let x_1030 : vec4<f32> = u_xlat9;
        let x_1032 : vec4<f32> = u_xlat11;
        let x_1034 : vec3<f32> = (vec3<f32>(x_1030.z, x_1030.y, x_1030.w) + vec3<f32>(x_1032.z, x_1032.y, x_1032.w));
        let x_1035 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1034.x, x_1034.y, x_1034.z, x_1035.w);
        let x_1037 : vec4<f32> = u_xlat8;
        let x_1039 : vec4<f32> = u_xlat12;
        let x_1041 : vec3<f32> = (vec3<f32>(x_1037.x, x_1037.z, x_1037.w) / vec3<f32>(x_1039.z, x_1039.w, x_1039.y));
        let x_1042 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1041.x, x_1041.y, x_1041.z, x_1042.w);
        let x_1044 : vec4<f32> = u_xlat8;
        let x_1049 : vec3<f32> = (vec3<f32>(x_1044.x, x_1044.y, x_1044.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1050 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1049.x, x_1049.y, x_1049.z, x_1050.w);
        let x_1052 : vec4<f32> = u_xlat11;
        let x_1054 : vec4<f32> = u_xlat7;
        let x_1056 : vec3<f32> = (vec3<f32>(x_1052.z, x_1052.y, x_1052.w) / vec3<f32>(x_1054.x, x_1054.y, x_1054.z));
        let x_1057 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1056.x, x_1056.y, x_1056.z, x_1057.w);
        let x_1059 : vec4<f32> = u_xlat9;
        let x_1061 : vec3<f32> = (vec3<f32>(x_1059.x, x_1059.y, x_1059.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1062 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1061.x, x_1061.y, x_1061.z, x_1062.w);
        let x_1064 : vec4<f32> = u_xlat8;
        let x_1067 : vec4<f32> = x_779.x_MainLightShadowmapSize;
        let x_1069 : vec3<f32> = (vec3<f32>(x_1064.y, x_1064.x, x_1064.z) * vec3<f32>(x_1067.x, x_1067.x, x_1067.x));
        let x_1070 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1069.x, x_1069.y, x_1069.z, x_1070.w);
        let x_1072 : vec4<f32> = u_xlat9;
        let x_1075 : vec4<f32> = x_779.x_MainLightShadowmapSize;
        let x_1077 : vec3<f32> = (vec3<f32>(x_1072.x, x_1072.y, x_1072.z) * vec3<f32>(x_1075.y, x_1075.y, x_1075.y));
        let x_1078 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1077.x, x_1077.y, x_1077.z, x_1078.w);
        let x_1081 : f32 = u_xlat9.x;
        u_xlat8.w = x_1081;
        let x_1083 : vec4<f32> = u_xlat6;
        let x_1086 : vec4<f32> = x_779.x_MainLightShadowmapSize;
        let x_1089 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1083.x, x_1083.y, x_1083.x, x_1083.y) * vec4<f32>(x_1086.x, x_1086.y, x_1086.x, x_1086.y)) + vec4<f32>(x_1089.y, x_1089.w, x_1089.x, x_1089.w));
        let x_1092 : vec4<f32> = u_xlat6;
        let x_1095 : vec4<f32> = x_779.x_MainLightShadowmapSize;
        let x_1098 : vec4<f32> = u_xlat8;
        u_xlat56 = ((vec2<f32>(x_1092.x, x_1092.y) * vec2<f32>(x_1095.x, x_1095.y)) + vec2<f32>(x_1098.z, x_1098.w));
        let x_1102 : f32 = u_xlat8.y;
        u_xlat9.w = x_1102;
        let x_1104 : vec4<f32> = u_xlat9;
        let x_1105 : vec2<f32> = vec2<f32>(x_1104.y, x_1104.z);
        let x_1106 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1106.x, x_1105.x, x_1106.z, x_1105.y);
        let x_1108 : vec4<f32> = u_xlat6;
        let x_1111 : vec4<f32> = x_779.x_MainLightShadowmapSize;
        let x_1114 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1108.x, x_1108.y, x_1108.x, x_1108.y) * vec4<f32>(x_1111.x, x_1111.y, x_1111.x, x_1111.y)) + vec4<f32>(x_1114.x, x_1114.y, x_1114.z, x_1114.y));
        let x_1117 : vec4<f32> = u_xlat6;
        let x_1120 : vec4<f32> = x_779.x_MainLightShadowmapSize;
        let x_1123 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1117.x, x_1117.y, x_1117.x, x_1117.y) * vec4<f32>(x_1120.x, x_1120.y, x_1120.x, x_1120.y)) + vec4<f32>(x_1123.w, x_1123.y, x_1123.w, x_1123.z));
        let x_1126 : vec4<f32> = u_xlat6;
        let x_1129 : vec4<f32> = x_779.x_MainLightShadowmapSize;
        let x_1132 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1126.x, x_1126.y, x_1126.x, x_1126.y) * vec4<f32>(x_1129.x, x_1129.y, x_1129.x, x_1129.y)) + vec4<f32>(x_1132.x, x_1132.w, x_1132.z, x_1132.w));
        let x_1136 : vec4<f32> = u_xlat7;
        let x_1138 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_1136.x, x_1136.x, x_1136.x, x_1136.y) * vec4<f32>(x_1138.z, x_1138.w, x_1138.y, x_1138.z));
        let x_1142 : vec4<f32> = u_xlat7;
        let x_1144 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_1142.y, x_1142.y, x_1142.z, x_1142.z) * x_1144);
        let x_1147 : f32 = u_xlat7.z;
        let x_1149 : f32 = u_xlat12.y;
        u_xlat79 = (x_1147 * x_1149);
        let x_1152 : vec4<f32> = u_xlat10;
        let x_1153 : vec2<f32> = vec2<f32>(x_1152.x, x_1152.y);
        let x_1155 : f32 = vs_INTERP3.z;
        txVec4 = vec3<f32>(x_1153.x, x_1153.y, x_1155);
        let x_1163 : vec3<f32> = txVec4;
        let x_1165 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1163.xy, x_1163.z);
        u_xlat80 = x_1165;
        let x_1167 : vec4<f32> = u_xlat10;
        let x_1168 : vec2<f32> = vec2<f32>(x_1167.z, x_1167.w);
        let x_1170 : f32 = vs_INTERP3.z;
        txVec5 = vec3<f32>(x_1168.x, x_1168.y, x_1170);
        let x_1177 : vec3<f32> = txVec5;
        let x_1179 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1177.xy, x_1177.z);
        u_xlat6.x = x_1179;
        let x_1182 : f32 = u_xlat6.x;
        let x_1184 : f32 = u_xlat13.y;
        u_xlat6.x = (x_1182 * x_1184);
        let x_1188 : f32 = u_xlat13.x;
        let x_1189 : f32 = u_xlat80;
        let x_1192 : f32 = u_xlat6.x;
        u_xlat80 = ((x_1188 * x_1189) + x_1192);
        let x_1195 : vec2<f32> = u_xlat56;
        let x_1197 : f32 = vs_INTERP3.z;
        txVec6 = vec3<f32>(x_1195.x, x_1195.y, x_1197);
        let x_1204 : vec3<f32> = txVec6;
        let x_1206 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1204.xy, x_1204.z);
        u_xlat6.x = x_1206;
        let x_1209 : f32 = u_xlat13.z;
        let x_1211 : f32 = u_xlat6.x;
        let x_1213 : f32 = u_xlat80;
        u_xlat80 = ((x_1209 * x_1211) + x_1213);
        let x_1216 : vec4<f32> = u_xlat9;
        let x_1217 : vec2<f32> = vec2<f32>(x_1216.x, x_1216.y);
        let x_1219 : f32 = vs_INTERP3.z;
        txVec7 = vec3<f32>(x_1217.x, x_1217.y, x_1219);
        let x_1226 : vec3<f32> = txVec7;
        let x_1228 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1226.xy, x_1226.z);
        u_xlat6.x = x_1228;
        let x_1231 : f32 = u_xlat13.w;
        let x_1233 : f32 = u_xlat6.x;
        let x_1235 : f32 = u_xlat80;
        u_xlat80 = ((x_1231 * x_1233) + x_1235);
        let x_1238 : vec4<f32> = u_xlat11;
        let x_1239 : vec2<f32> = vec2<f32>(x_1238.x, x_1238.y);
        let x_1241 : f32 = vs_INTERP3.z;
        txVec8 = vec3<f32>(x_1239.x, x_1239.y, x_1241);
        let x_1248 : vec3<f32> = txVec8;
        let x_1250 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1248.xy, x_1248.z);
        u_xlat6.x = x_1250;
        let x_1253 : f32 = u_xlat14.x;
        let x_1255 : f32 = u_xlat6.x;
        let x_1257 : f32 = u_xlat80;
        u_xlat80 = ((x_1253 * x_1255) + x_1257);
        let x_1260 : vec4<f32> = u_xlat11;
        let x_1261 : vec2<f32> = vec2<f32>(x_1260.z, x_1260.w);
        let x_1263 : f32 = vs_INTERP3.z;
        txVec9 = vec3<f32>(x_1261.x, x_1261.y, x_1263);
        let x_1270 : vec3<f32> = txVec9;
        let x_1272 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1270.xy, x_1270.z);
        u_xlat6.x = x_1272;
        let x_1275 : f32 = u_xlat14.y;
        let x_1277 : f32 = u_xlat6.x;
        let x_1279 : f32 = u_xlat80;
        u_xlat80 = ((x_1275 * x_1277) + x_1279);
        let x_1282 : vec4<f32> = u_xlat9;
        let x_1283 : vec2<f32> = vec2<f32>(x_1282.z, x_1282.w);
        let x_1285 : f32 = vs_INTERP3.z;
        txVec10 = vec3<f32>(x_1283.x, x_1283.y, x_1285);
        let x_1292 : vec3<f32> = txVec10;
        let x_1294 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1292.xy, x_1292.z);
        u_xlat6.x = x_1294;
        let x_1297 : f32 = u_xlat14.z;
        let x_1299 : f32 = u_xlat6.x;
        let x_1301 : f32 = u_xlat80;
        u_xlat80 = ((x_1297 * x_1299) + x_1301);
        let x_1304 : vec4<f32> = u_xlat8;
        let x_1305 : vec2<f32> = vec2<f32>(x_1304.x, x_1304.y);
        let x_1307 : f32 = vs_INTERP3.z;
        txVec11 = vec3<f32>(x_1305.x, x_1305.y, x_1307);
        let x_1314 : vec3<f32> = txVec11;
        let x_1316 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1314.xy, x_1314.z);
        u_xlat6.x = x_1316;
        let x_1319 : f32 = u_xlat14.w;
        let x_1321 : f32 = u_xlat6.x;
        let x_1323 : f32 = u_xlat80;
        u_xlat80 = ((x_1319 * x_1321) + x_1323);
        let x_1326 : vec4<f32> = u_xlat8;
        let x_1327 : vec2<f32> = vec2<f32>(x_1326.z, x_1326.w);
        let x_1329 : f32 = vs_INTERP3.z;
        txVec12 = vec3<f32>(x_1327.x, x_1327.y, x_1329);
        let x_1336 : vec3<f32> = txVec12;
        let x_1338 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1336.xy, x_1336.z);
        u_xlat6.x = x_1338;
        let x_1340 : f32 = u_xlat79;
        let x_1342 : f32 = u_xlat6.x;
        let x_1344 : f32 = u_xlat80;
        u_xlat54 = ((x_1340 * x_1342) + x_1344);
      } else {
        let x_1347 : vec4<f32> = vs_INTERP3;
        let x_1350 : vec4<f32> = x_779.x_MainLightShadowmapSize;
        let x_1353 : vec2<f32> = ((vec2<f32>(x_1347.x, x_1347.y) * vec2<f32>(x_1350.z, x_1350.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1354 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1353.x, x_1353.y, x_1354.z, x_1354.w);
        let x_1356 : vec4<f32> = u_xlat6;
        let x_1358 : vec2<f32> = floor(vec2<f32>(x_1356.x, x_1356.y));
        let x_1359 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1358.x, x_1358.y, x_1359.z, x_1359.w);
        let x_1361 : vec4<f32> = vs_INTERP3;
        let x_1364 : vec4<f32> = x_779.x_MainLightShadowmapSize;
        let x_1367 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_1361.x, x_1361.y) * vec2<f32>(x_1364.z, x_1364.w)) + -(vec2<f32>(x_1367.x, x_1367.y)));
        let x_1371 : vec2<f32> = u_xlat56;
        u_xlat7 = (vec4<f32>(x_1371.x, x_1371.x, x_1371.y, x_1371.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1374 : vec4<f32> = u_xlat7;
        let x_1376 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1374.x, x_1374.x, x_1374.z, x_1374.z) * vec4<f32>(x_1376.x, x_1376.x, x_1376.z, x_1376.z));
        let x_1379 : vec4<f32> = u_xlat8;
        let x_1383 : vec2<f32> = (vec2<f32>(x_1379.y, x_1379.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1384 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1384.x, x_1383.x, x_1384.z, x_1383.y);
        let x_1386 : vec4<f32> = u_xlat8;
        let x_1389 : vec2<f32> = u_xlat56;
        let x_1391 : vec2<f32> = ((vec2<f32>(x_1386.x, x_1386.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1389));
        let x_1392 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1391.x, x_1392.y, x_1391.y, x_1392.w);
        let x_1394 : vec2<f32> = u_xlat56;
        let x_1396 : vec2<f32> = (-(x_1394) + vec2<f32>(1.0f, 1.0f));
        let x_1397 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1396.x, x_1396.y, x_1397.z, x_1397.w);
        let x_1399 : vec2<f32> = u_xlat56;
        u_xlat58 = min(x_1399, vec2<f32>(0.0f, 0.0f));
        let x_1401 : vec2<f32> = u_xlat58;
        let x_1403 : vec2<f32> = u_xlat58;
        let x_1405 : vec4<f32> = u_xlat8;
        let x_1407 : vec2<f32> = ((-(x_1401) * x_1403) + vec2<f32>(x_1405.x, x_1405.y));
        let x_1408 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1407.x, x_1407.y, x_1408.z, x_1408.w);
        let x_1410 : vec2<f32> = u_xlat56;
        u_xlat58 = max(x_1410, vec2<f32>(0.0f, 0.0f));
        let x_1412 : vec2<f32> = u_xlat58;
        let x_1414 : vec2<f32> = u_xlat58;
        let x_1416 : vec4<f32> = u_xlat7;
        let x_1418 : vec2<f32> = ((-(x_1412) * x_1414) + vec2<f32>(x_1416.y, x_1416.w));
        let x_1419 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_1418.x, x_1419.y, x_1418.y);
        let x_1421 : vec4<f32> = u_xlat8;
        let x_1423 : vec2<f32> = (vec2<f32>(x_1421.x, x_1421.y) + vec2<f32>(2.0f, 2.0f));
        let x_1424 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1423.x, x_1423.y, x_1424.z, x_1424.w);
        let x_1426 : vec3<f32> = u_xlat32;
        let x_1428 : vec2<f32> = (vec2<f32>(x_1426.x, x_1426.z) + vec2<f32>(2.0f, 2.0f));
        let x_1429 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1429.x, x_1428.x, x_1429.z, x_1428.y);
        let x_1432 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1432 * 0.08163200318813323975f);
        let x_1436 : vec4<f32> = u_xlat7;
        let x_1439 : vec3<f32> = (vec3<f32>(x_1436.z, x_1436.x, x_1436.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1440 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1439.x, x_1439.y, x_1439.z, x_1440.w);
        let x_1442 : vec4<f32> = u_xlat8;
        let x_1445 : vec2<f32> = (vec2<f32>(x_1442.x, x_1442.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1446 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1445.x, x_1445.y, x_1446.z, x_1446.w);
        let x_1449 : f32 = u_xlat11.y;
        u_xlat10.x = x_1449;
        let x_1451 : vec2<f32> = u_xlat56;
        let x_1458 : vec2<f32> = ((vec2<f32>(x_1451.x, x_1451.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1459 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1459.x, x_1458.x, x_1459.z, x_1458.y);
        let x_1461 : vec2<f32> = u_xlat56;
        let x_1465 : vec2<f32> = ((vec2<f32>(x_1461.x, x_1461.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1466 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1465.x, x_1466.y, x_1465.y, x_1466.w);
        let x_1469 : f32 = u_xlat7.x;
        u_xlat8.y = x_1469;
        let x_1472 : f32 = u_xlat9.y;
        u_xlat8.w = x_1472;
        let x_1474 : vec4<f32> = u_xlat8;
        let x_1475 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1474 + x_1475);
        let x_1477 : vec2<f32> = u_xlat56;
        let x_1480 : vec2<f32> = ((vec2<f32>(x_1477.y, x_1477.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1481 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1481.x, x_1480.x, x_1481.z, x_1480.y);
        let x_1483 : vec2<f32> = u_xlat56;
        let x_1486 : vec2<f32> = ((vec2<f32>(x_1483.y, x_1483.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1487 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1486.x, x_1487.y, x_1486.y, x_1487.w);
        let x_1490 : f32 = u_xlat7.y;
        u_xlat9.y = x_1490;
        let x_1492 : vec4<f32> = u_xlat9;
        let x_1493 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1492 + x_1493);
        let x_1495 : vec4<f32> = u_xlat8;
        let x_1496 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1495 / x_1496);
        let x_1498 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1498 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1504 : vec4<f32> = u_xlat9;
        let x_1505 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1504 / x_1505);
        let x_1507 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1507 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1509 : vec4<f32> = u_xlat8;
        let x_1512 : vec4<f32> = x_779.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1509.w, x_1509.x, x_1509.y, x_1509.z) * vec4<f32>(x_1512.x, x_1512.x, x_1512.x, x_1512.x));
        let x_1515 : vec4<f32> = u_xlat9;
        let x_1518 : vec4<f32> = x_779.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1515.x, x_1515.w, x_1515.y, x_1515.z) * vec4<f32>(x_1518.y, x_1518.y, x_1518.y, x_1518.y));
        let x_1521 : vec4<f32> = u_xlat8;
        let x_1522 : vec3<f32> = vec3<f32>(x_1521.y, x_1521.z, x_1521.w);
        let x_1523 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1522.x, x_1523.y, x_1522.y, x_1522.z);
        let x_1526 : f32 = u_xlat9.x;
        u_xlat11.y = x_1526;
        let x_1528 : vec4<f32> = u_xlat6;
        let x_1531 : vec4<f32> = x_779.x_MainLightShadowmapSize;
        let x_1534 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1528.x, x_1528.y, x_1528.x, x_1528.y) * vec4<f32>(x_1531.x, x_1531.y, x_1531.x, x_1531.y)) + vec4<f32>(x_1534.x, x_1534.y, x_1534.z, x_1534.y));
        let x_1537 : vec4<f32> = u_xlat6;
        let x_1540 : vec4<f32> = x_779.x_MainLightShadowmapSize;
        let x_1543 : vec4<f32> = u_xlat11;
        u_xlat56 = ((vec2<f32>(x_1537.x, x_1537.y) * vec2<f32>(x_1540.x, x_1540.y)) + vec2<f32>(x_1543.w, x_1543.y));
        let x_1547 : f32 = u_xlat11.y;
        u_xlat8.y = x_1547;
        let x_1550 : f32 = u_xlat9.z;
        u_xlat11.y = x_1550;
        let x_1552 : vec4<f32> = u_xlat6;
        let x_1555 : vec4<f32> = x_779.x_MainLightShadowmapSize;
        let x_1558 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1552.x, x_1552.y, x_1552.x, x_1552.y) * vec4<f32>(x_1555.x, x_1555.y, x_1555.x, x_1555.y)) + vec4<f32>(x_1558.x, x_1558.y, x_1558.z, x_1558.y));
        let x_1561 : vec4<f32> = u_xlat6;
        let x_1564 : vec4<f32> = x_779.x_MainLightShadowmapSize;
        let x_1567 : vec4<f32> = u_xlat11;
        let x_1569 : vec2<f32> = ((vec2<f32>(x_1561.x, x_1561.y) * vec2<f32>(x_1564.x, x_1564.y)) + vec2<f32>(x_1567.w, x_1567.y));
        let x_1570 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1569.x, x_1569.y, x_1570.z, x_1570.w);
        let x_1573 : f32 = u_xlat11.y;
        u_xlat8.z = x_1573;
        let x_1576 : vec4<f32> = u_xlat6;
        let x_1579 : vec4<f32> = x_779.x_MainLightShadowmapSize;
        let x_1582 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1576.x, x_1576.y, x_1576.x, x_1576.y) * vec4<f32>(x_1579.x, x_1579.y, x_1579.x, x_1579.y)) + vec4<f32>(x_1582.x, x_1582.y, x_1582.x, x_1582.z));
        let x_1586 : f32 = u_xlat9.w;
        u_xlat11.y = x_1586;
        let x_1589 : vec4<f32> = u_xlat6;
        let x_1592 : vec4<f32> = x_779.x_MainLightShadowmapSize;
        let x_1595 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1589.x, x_1589.y, x_1589.x, x_1589.y) * vec4<f32>(x_1592.x, x_1592.y, x_1592.x, x_1592.y)) + vec4<f32>(x_1595.x, x_1595.y, x_1595.z, x_1595.y));
        let x_1599 : vec4<f32> = u_xlat6;
        let x_1602 : vec4<f32> = x_779.x_MainLightShadowmapSize;
        let x_1605 : vec4<f32> = u_xlat11;
        let x_1607 : vec2<f32> = ((vec2<f32>(x_1599.x, x_1599.y) * vec2<f32>(x_1602.x, x_1602.y)) + vec2<f32>(x_1605.w, x_1605.y));
        let x_1608 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_1607.x, x_1607.y, x_1608.z);
        let x_1611 : f32 = u_xlat11.y;
        u_xlat8.w = x_1611;
        let x_1614 : vec4<f32> = u_xlat6;
        let x_1617 : vec4<f32> = x_779.x_MainLightShadowmapSize;
        let x_1620 : vec4<f32> = u_xlat8;
        u_xlat64 = ((vec2<f32>(x_1614.x, x_1614.y) * vec2<f32>(x_1617.x, x_1617.y)) + vec2<f32>(x_1620.x, x_1620.w));
        let x_1623 : vec4<f32> = u_xlat11;
        let x_1624 : vec3<f32> = vec3<f32>(x_1623.x, x_1623.z, x_1623.w);
        let x_1625 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1624.x, x_1625.y, x_1624.y, x_1624.z);
        let x_1627 : vec4<f32> = u_xlat6;
        let x_1630 : vec4<f32> = x_779.x_MainLightShadowmapSize;
        let x_1633 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1627.x, x_1627.y, x_1627.x, x_1627.y) * vec4<f32>(x_1630.x, x_1630.y, x_1630.x, x_1630.y)) + vec4<f32>(x_1633.x, x_1633.y, x_1633.z, x_1633.y));
        let x_1637 : vec4<f32> = u_xlat6;
        let x_1640 : vec4<f32> = x_779.x_MainLightShadowmapSize;
        let x_1643 : vec4<f32> = u_xlat9;
        u_xlat59 = ((vec2<f32>(x_1637.x, x_1637.y) * vec2<f32>(x_1640.x, x_1640.y)) + vec2<f32>(x_1643.w, x_1643.y));
        let x_1647 : f32 = u_xlat8.x;
        u_xlat9.x = x_1647;
        let x_1649 : vec4<f32> = u_xlat6;
        let x_1652 : vec4<f32> = x_779.x_MainLightShadowmapSize;
        let x_1655 : vec4<f32> = u_xlat9;
        let x_1657 : vec2<f32> = ((vec2<f32>(x_1649.x, x_1649.y) * vec2<f32>(x_1652.x, x_1652.y)) + vec2<f32>(x_1655.x, x_1655.y));
        let x_1658 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1657.x, x_1657.y, x_1658.z, x_1658.w);
        let x_1661 : vec4<f32> = u_xlat7;
        let x_1663 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1661.x, x_1661.x, x_1661.x, x_1661.x) * x_1663);
        let x_1666 : vec4<f32> = u_xlat7;
        let x_1668 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1666.y, x_1666.y, x_1666.y, x_1666.y) * x_1668);
        let x_1671 : vec4<f32> = u_xlat7;
        let x_1673 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1671.z, x_1671.z, x_1671.z, x_1671.z) * x_1673);
        let x_1675 : vec4<f32> = u_xlat7;
        let x_1677 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1675.w, x_1675.w, x_1675.w, x_1675.w) * x_1677);
        let x_1680 : vec4<f32> = u_xlat12;
        let x_1681 : vec2<f32> = vec2<f32>(x_1680.x, x_1680.y);
        let x_1683 : f32 = vs_INTERP3.z;
        txVec13 = vec3<f32>(x_1681.x, x_1681.y, x_1683);
        let x_1690 : vec3<f32> = txVec13;
        let x_1692 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1690.xy, x_1690.z);
        u_xlat79 = x_1692;
        let x_1694 : vec4<f32> = u_xlat12;
        let x_1695 : vec2<f32> = vec2<f32>(x_1694.z, x_1694.w);
        let x_1697 : f32 = vs_INTERP3.z;
        txVec14 = vec3<f32>(x_1695.x, x_1695.y, x_1697);
        let x_1704 : vec3<f32> = txVec14;
        let x_1706 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1704.xy, x_1704.z);
        u_xlat80 = x_1706;
        let x_1707 : f32 = u_xlat80;
        let x_1709 : f32 = u_xlat17.y;
        u_xlat80 = (x_1707 * x_1709);
        let x_1712 : f32 = u_xlat17.x;
        let x_1713 : f32 = u_xlat79;
        let x_1715 : f32 = u_xlat80;
        u_xlat79 = ((x_1712 * x_1713) + x_1715);
        let x_1718 : vec2<f32> = u_xlat56;
        let x_1720 : f32 = vs_INTERP3.z;
        txVec15 = vec3<f32>(x_1718.x, x_1718.y, x_1720);
        let x_1727 : vec3<f32> = txVec15;
        let x_1729 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1727.xy, x_1727.z);
        u_xlat80 = x_1729;
        let x_1731 : f32 = u_xlat17.z;
        let x_1732 : f32 = u_xlat80;
        let x_1734 : f32 = u_xlat79;
        u_xlat79 = ((x_1731 * x_1732) + x_1734);
        let x_1737 : vec4<f32> = u_xlat15;
        let x_1738 : vec2<f32> = vec2<f32>(x_1737.x, x_1737.y);
        let x_1740 : f32 = vs_INTERP3.z;
        txVec16 = vec3<f32>(x_1738.x, x_1738.y, x_1740);
        let x_1747 : vec3<f32> = txVec16;
        let x_1749 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1747.xy, x_1747.z);
        u_xlat80 = x_1749;
        let x_1751 : f32 = u_xlat17.w;
        let x_1752 : f32 = u_xlat80;
        let x_1754 : f32 = u_xlat79;
        u_xlat79 = ((x_1751 * x_1752) + x_1754);
        let x_1757 : vec4<f32> = u_xlat13;
        let x_1758 : vec2<f32> = vec2<f32>(x_1757.x, x_1757.y);
        let x_1760 : f32 = vs_INTERP3.z;
        txVec17 = vec3<f32>(x_1758.x, x_1758.y, x_1760);
        let x_1767 : vec3<f32> = txVec17;
        let x_1769 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1767.xy, x_1767.z);
        u_xlat80 = x_1769;
        let x_1771 : f32 = u_xlat18.x;
        let x_1772 : f32 = u_xlat80;
        let x_1774 : f32 = u_xlat79;
        u_xlat79 = ((x_1771 * x_1772) + x_1774);
        let x_1777 : vec4<f32> = u_xlat13;
        let x_1778 : vec2<f32> = vec2<f32>(x_1777.z, x_1777.w);
        let x_1780 : f32 = vs_INTERP3.z;
        txVec18 = vec3<f32>(x_1778.x, x_1778.y, x_1780);
        let x_1787 : vec3<f32> = txVec18;
        let x_1789 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1787.xy, x_1787.z);
        u_xlat80 = x_1789;
        let x_1791 : f32 = u_xlat18.y;
        let x_1792 : f32 = u_xlat80;
        let x_1794 : f32 = u_xlat79;
        u_xlat79 = ((x_1791 * x_1792) + x_1794);
        let x_1797 : vec4<f32> = u_xlat14;
        let x_1798 : vec2<f32> = vec2<f32>(x_1797.x, x_1797.y);
        let x_1800 : f32 = vs_INTERP3.z;
        txVec19 = vec3<f32>(x_1798.x, x_1798.y, x_1800);
        let x_1807 : vec3<f32> = txVec19;
        let x_1809 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1807.xy, x_1807.z);
        u_xlat80 = x_1809;
        let x_1811 : f32 = u_xlat18.z;
        let x_1812 : f32 = u_xlat80;
        let x_1814 : f32 = u_xlat79;
        u_xlat79 = ((x_1811 * x_1812) + x_1814);
        let x_1817 : vec4<f32> = u_xlat15;
        let x_1818 : vec2<f32> = vec2<f32>(x_1817.z, x_1817.w);
        let x_1820 : f32 = vs_INTERP3.z;
        txVec20 = vec3<f32>(x_1818.x, x_1818.y, x_1820);
        let x_1827 : vec3<f32> = txVec20;
        let x_1829 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1827.xy, x_1827.z);
        u_xlat80 = x_1829;
        let x_1831 : f32 = u_xlat18.w;
        let x_1832 : f32 = u_xlat80;
        let x_1834 : f32 = u_xlat79;
        u_xlat79 = ((x_1831 * x_1832) + x_1834);
        let x_1837 : vec4<f32> = u_xlat16;
        let x_1838 : vec2<f32> = vec2<f32>(x_1837.x, x_1837.y);
        let x_1840 : f32 = vs_INTERP3.z;
        txVec21 = vec3<f32>(x_1838.x, x_1838.y, x_1840);
        let x_1847 : vec3<f32> = txVec21;
        let x_1849 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1847.xy, x_1847.z);
        u_xlat80 = x_1849;
        let x_1851 : f32 = u_xlat19.x;
        let x_1852 : f32 = u_xlat80;
        let x_1854 : f32 = u_xlat79;
        u_xlat79 = ((x_1851 * x_1852) + x_1854);
        let x_1857 : vec4<f32> = u_xlat16;
        let x_1858 : vec2<f32> = vec2<f32>(x_1857.z, x_1857.w);
        let x_1860 : f32 = vs_INTERP3.z;
        txVec22 = vec3<f32>(x_1858.x, x_1858.y, x_1860);
        let x_1867 : vec3<f32> = txVec22;
        let x_1869 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1867.xy, x_1867.z);
        u_xlat80 = x_1869;
        let x_1871 : f32 = u_xlat19.y;
        let x_1872 : f32 = u_xlat80;
        let x_1874 : f32 = u_xlat79;
        u_xlat79 = ((x_1871 * x_1872) + x_1874);
        let x_1877 : vec3<f32> = u_xlat33;
        let x_1878 : vec2<f32> = vec2<f32>(x_1877.x, x_1877.y);
        let x_1880 : f32 = vs_INTERP3.z;
        txVec23 = vec3<f32>(x_1878.x, x_1878.y, x_1880);
        let x_1887 : vec3<f32> = txVec23;
        let x_1889 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1887.xy, x_1887.z);
        u_xlat80 = x_1889;
        let x_1891 : f32 = u_xlat19.z;
        let x_1892 : f32 = u_xlat80;
        let x_1894 : f32 = u_xlat79;
        u_xlat79 = ((x_1891 * x_1892) + x_1894);
        let x_1897 : vec2<f32> = u_xlat64;
        let x_1899 : f32 = vs_INTERP3.z;
        txVec24 = vec3<f32>(x_1897.x, x_1897.y, x_1899);
        let x_1906 : vec3<f32> = txVec24;
        let x_1908 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1906.xy, x_1906.z);
        u_xlat80 = x_1908;
        let x_1910 : f32 = u_xlat19.w;
        let x_1911 : f32 = u_xlat80;
        let x_1913 : f32 = u_xlat79;
        u_xlat79 = ((x_1910 * x_1911) + x_1913);
        let x_1916 : vec4<f32> = u_xlat11;
        let x_1917 : vec2<f32> = vec2<f32>(x_1916.x, x_1916.y);
        let x_1919 : f32 = vs_INTERP3.z;
        txVec25 = vec3<f32>(x_1917.x, x_1917.y, x_1919);
        let x_1926 : vec3<f32> = txVec25;
        let x_1928 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1926.xy, x_1926.z);
        u_xlat80 = x_1928;
        let x_1930 : f32 = u_xlat7.x;
        let x_1931 : f32 = u_xlat80;
        let x_1933 : f32 = u_xlat79;
        u_xlat79 = ((x_1930 * x_1931) + x_1933);
        let x_1936 : vec4<f32> = u_xlat11;
        let x_1937 : vec2<f32> = vec2<f32>(x_1936.z, x_1936.w);
        let x_1939 : f32 = vs_INTERP3.z;
        txVec26 = vec3<f32>(x_1937.x, x_1937.y, x_1939);
        let x_1946 : vec3<f32> = txVec26;
        let x_1948 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1946.xy, x_1946.z);
        u_xlat80 = x_1948;
        let x_1950 : f32 = u_xlat7.y;
        let x_1951 : f32 = u_xlat80;
        let x_1953 : f32 = u_xlat79;
        u_xlat79 = ((x_1950 * x_1951) + x_1953);
        let x_1956 : vec2<f32> = u_xlat59;
        let x_1958 : f32 = vs_INTERP3.z;
        txVec27 = vec3<f32>(x_1956.x, x_1956.y, x_1958);
        let x_1965 : vec3<f32> = txVec27;
        let x_1967 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1965.xy, x_1965.z);
        u_xlat80 = x_1967;
        let x_1969 : f32 = u_xlat7.z;
        let x_1970 : f32 = u_xlat80;
        let x_1972 : f32 = u_xlat79;
        u_xlat79 = ((x_1969 * x_1970) + x_1972);
        let x_1975 : vec4<f32> = u_xlat6;
        let x_1976 : vec2<f32> = vec2<f32>(x_1975.x, x_1975.y);
        let x_1978 : f32 = vs_INTERP3.z;
        txVec28 = vec3<f32>(x_1976.x, x_1976.y, x_1978);
        let x_1985 : vec3<f32> = txVec28;
        let x_1987 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1985.xy, x_1985.z);
        u_xlat80 = x_1987;
        let x_1989 : f32 = u_xlat7.w;
        let x_1990 : f32 = u_xlat80;
        let x_1992 : f32 = u_xlat79;
        u_xlat54 = ((x_1989 * x_1990) + x_1992);
      }
    }
  } else {
    let x_1996 : vec4<f32> = vs_INTERP3;
    let x_1997 : vec2<f32> = vec2<f32>(x_1996.x, x_1996.y);
    let x_1999 : f32 = vs_INTERP3.z;
    txVec29 = vec3<f32>(x_1997.x, x_1997.y, x_1999);
    let x_2006 : vec3<f32> = txVec29;
    let x_2008 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2006.xy, x_2006.z);
    u_xlat54 = x_2008;
  }
  let x_2010 : f32 = x_779.x_MainLightShadowParams.x;
  u_xlat79 = (-(x_2010) + 1.0f);
  let x_2013 : f32 = u_xlat54;
  let x_2015 : f32 = x_779.x_MainLightShadowParams.x;
  let x_2017 : f32 = u_xlat79;
  u_xlat54 = ((x_2013 * x_2015) + x_2017);
  let x_2020 : f32 = vs_INTERP3.z;
  u_xlatb79 = (0.0f >= x_2020);
  let x_2024 : f32 = vs_INTERP3.z;
  u_xlatb80 = (x_2024 >= 1.0f);
  let x_2026 : bool = u_xlatb79;
  let x_2027 : bool = u_xlatb80;
  u_xlatb79 = (x_2026 | x_2027);
  let x_2029 : bool = u_xlatb79;
  let x_2030 : f32 = u_xlat54;
  u_xlat54 = select(x_2030, 1.0f, x_2029);
  let x_2032 : vec3<f32> = vs_INTERP7;
  let x_2034 : vec3<f32> = x_135.x_WorldSpaceCameraPos;
  let x_2036 : vec3<f32> = (x_2032 + -(x_2034));
  let x_2037 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2036.x, x_2036.y, x_2036.z, x_2037.w);
  let x_2039 : vec4<f32> = u_xlat6;
  let x_2041 : vec4<f32> = u_xlat6;
  u_xlat79 = dot(vec3<f32>(x_2039.x, x_2039.y, x_2039.z), vec3<f32>(x_2041.x, x_2041.y, x_2041.z));
  let x_2044 : f32 = u_xlat79;
  let x_2046 : f32 = x_779.x_MainLightShadowParams.z;
  let x_2049 : f32 = x_779.x_MainLightShadowParams.w;
  u_xlat80 = ((x_2044 * x_2046) + x_2049);
  let x_2051 : f32 = u_xlat80;
  u_xlat80 = clamp(x_2051, 0.0f, 1.0f);
  let x_2053 : f32 = u_xlat54;
  u_xlat6.x = (-(x_2053) + 1.0f);
  let x_2057 : f32 = u_xlat80;
  let x_2059 : f32 = u_xlat6.x;
  let x_2061 : f32 = u_xlat54;
  u_xlat54 = ((x_2057 * x_2059) + x_2061);
  let x_2070 : f32 = x_2068.x_MainLightCookieTextureFormat;
  u_xlatb80 = !((x_2070 == -1.0f));
  let x_2072 : bool = u_xlatb80;
  if (x_2072) {
    let x_2075 : vec3<f32> = vs_INTERP7;
    let x_2078 : vec4<f32> = x_2068.x_MainLightWorldToLight[1i];
    let x_2080 : vec2<f32> = (vec2<f32>(x_2075.y, x_2075.y) * vec2<f32>(x_2078.x, x_2078.y));
    let x_2081 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2080.x, x_2080.y, x_2081.z, x_2081.w);
    let x_2084 : vec4<f32> = x_2068.x_MainLightWorldToLight[0i];
    let x_2086 : vec3<f32> = vs_INTERP7;
    let x_2089 : vec4<f32> = u_xlat6;
    let x_2091 : vec2<f32> = ((vec2<f32>(x_2084.x, x_2084.y) * vec2<f32>(x_2086.x, x_2086.x)) + vec2<f32>(x_2089.x, x_2089.y));
    let x_2092 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2091.x, x_2091.y, x_2092.z, x_2092.w);
    let x_2095 : vec4<f32> = x_2068.x_MainLightWorldToLight[2i];
    let x_2097 : vec3<f32> = vs_INTERP7;
    let x_2100 : vec4<f32> = u_xlat6;
    let x_2102 : vec2<f32> = ((vec2<f32>(x_2095.x, x_2095.y) * vec2<f32>(x_2097.z, x_2097.z)) + vec2<f32>(x_2100.x, x_2100.y));
    let x_2103 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2102.x, x_2102.y, x_2103.z, x_2103.w);
    let x_2105 : vec4<f32> = u_xlat6;
    let x_2108 : vec4<f32> = x_2068.x_MainLightWorldToLight[3i];
    let x_2110 : vec2<f32> = (vec2<f32>(x_2105.x, x_2105.y) + vec2<f32>(x_2108.x, x_2108.y));
    let x_2111 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2110.x, x_2110.y, x_2111.z, x_2111.w);
    let x_2113 : vec4<f32> = u_xlat6;
    let x_2116 : vec2<f32> = ((vec2<f32>(x_2113.x, x_2113.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2117 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2116.x, x_2116.y, x_2117.z, x_2117.w);
    let x_2124 : vec4<f32> = u_xlat6;
    let x_2127 : f32 = x_135.x_GlobalMipBias.x;
    let x_2128 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2124.x, x_2124.y), x_2127);
    u_xlat6 = x_2128;
    let x_2131 : f32 = x_2068.x_MainLightCookieTextureFormat;
    let x_2133 : f32 = x_2068.x_MainLightCookieTextureFormat;
    let x_2135 : f32 = x_2068.x_MainLightCookieTextureFormat;
    let x_2137 : f32 = x_2068.x_MainLightCookieTextureFormat;
    let x_2138 : vec4<f32> = vec4<f32>(x_2131, x_2133, x_2135, x_2137);
    let x_2146 : vec4<bool> = (vec4<f32>(x_2138.x, x_2138.y, x_2138.z, x_2138.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_2146.x, x_2146.y);
    let x_2149 : bool = u_xlatb7.y;
    if (x_2149) {
      let x_2154 : f32 = u_xlat6.w;
      x_2150 = x_2154;
    } else {
      let x_2157 : f32 = u_xlat6.x;
      x_2150 = x_2157;
    }
    let x_2158 : f32 = x_2150;
    u_xlat80 = x_2158;
    let x_2160 : bool = u_xlatb7.x;
    if (x_2160) {
      let x_2164 : vec4<f32> = u_xlat6;
      x_2161 = vec3<f32>(x_2164.x, x_2164.y, x_2164.z);
    } else {
      let x_2167 : f32 = u_xlat80;
      x_2161 = vec3<f32>(x_2167, x_2167, x_2167);
    }
    let x_2169 : vec3<f32> = x_2161;
    let x_2170 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2169.x, x_2169.y, x_2169.z, x_2170.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_2176 : vec4<f32> = u_xlat6;
  let x_2179 : vec4<f32> = x_135.x_MainLightColor;
  let x_2181 : vec3<f32> = (vec3<f32>(x_2176.x, x_2176.y, x_2176.z) * vec3<f32>(x_2179.x, x_2179.y, x_2179.z));
  let x_2182 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2181.x, x_2181.y, x_2181.z, x_2182.w);
  let x_2184 : vec3<f32> = u_xlat5;
  let x_2186 : vec3<f32> = u_xlat25;
  u_xlat80 = dot(-(x_2184), x_2186);
  let x_2188 : f32 = u_xlat80;
  let x_2189 : f32 = u_xlat80;
  u_xlat80 = (x_2188 + x_2189);
  let x_2191 : vec3<f32> = u_xlat25;
  let x_2192 : f32 = u_xlat80;
  let x_2196 : vec3<f32> = u_xlat5;
  let x_2198 : vec3<f32> = ((x_2191 * -(vec3<f32>(x_2192, x_2192, x_2192))) + -(x_2196));
  let x_2199 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2198.x, x_2198.y, x_2198.z, x_2199.w);
  let x_2201 : vec3<f32> = u_xlat25;
  let x_2202 : vec3<f32> = u_xlat5;
  u_xlat80 = dot(x_2201, x_2202);
  let x_2204 : f32 = u_xlat80;
  u_xlat80 = clamp(x_2204, 0.0f, 1.0f);
  let x_2206 : f32 = u_xlat80;
  u_xlat80 = (-(x_2206) + 1.0f);
  let x_2209 : f32 = u_xlat80;
  let x_2210 : f32 = u_xlat80;
  u_xlat80 = (x_2209 * x_2210);
  let x_2212 : f32 = u_xlat80;
  let x_2213 : f32 = u_xlat80;
  u_xlat80 = (x_2212 * x_2213);
  let x_2216 : f32 = u_xlat76;
  u_xlat81 = ((-(x_2216) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2222 : f32 = u_xlat76;
  let x_2223 : f32 = u_xlat81;
  u_xlat76 = (x_2222 * x_2223);
  let x_2225 : f32 = u_xlat76;
  u_xlat76 = (x_2225 * 6.0f);
  let x_2236 : vec4<f32> = u_xlat7;
  let x_2238 : f32 = u_xlat76;
  let x_2239 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2236.x, x_2236.y, x_2236.z), x_2238);
  u_xlat7 = x_2239;
  let x_2241 : f32 = u_xlat7.w;
  u_xlat76 = (x_2241 + -1.0f);
  let x_2244 : f32 = x_48.unity_SpecCube0_HDR.w;
  let x_2245 : f32 = u_xlat76;
  u_xlat76 = ((x_2244 * x_2245) + 1.0f);
  let x_2248 : f32 = u_xlat76;
  u_xlat76 = max(x_2248, 0.0f);
  let x_2250 : f32 = u_xlat76;
  u_xlat76 = log2(x_2250);
  let x_2252 : f32 = u_xlat76;
  let x_2254 : f32 = x_48.unity_SpecCube0_HDR.y;
  u_xlat76 = (x_2252 * x_2254);
  let x_2256 : f32 = u_xlat76;
  u_xlat76 = exp2(x_2256);
  let x_2258 : f32 = u_xlat76;
  let x_2260 : f32 = x_48.unity_SpecCube0_HDR.x;
  u_xlat76 = (x_2258 * x_2260);
  let x_2262 : vec4<f32> = u_xlat7;
  let x_2264 : f32 = u_xlat76;
  let x_2266 : vec3<f32> = (vec3<f32>(x_2262.x, x_2262.y, x_2262.z) * vec3<f32>(x_2264, x_2264, x_2264));
  let x_2267 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2266.x, x_2266.y, x_2266.z, x_2267.w);
  let x_2269 : f32 = u_xlat77;
  let x_2271 : f32 = u_xlat77;
  let x_2275 : vec2<f32> = ((vec2<f32>(x_2269, x_2269) * vec2<f32>(x_2271, x_2271)) + vec2<f32>(-1.0f, 1.0f));
  let x_2276 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2275.x, x_2275.y, x_2276.z, x_2276.w);
  let x_2279 : f32 = u_xlat8.y;
  u_xlat76 = (1.0f / x_2279);
  let x_2281 : vec3<f32> = u_xlat2;
  let x_2283 : vec4<f32> = u_xlat0;
  u_xlat33 = (-(x_2281) + vec3<f32>(x_2283.x, x_2283.x, x_2283.x));
  let x_2286 : f32 = u_xlat80;
  let x_2288 : vec3<f32> = u_xlat33;
  let x_2290 : vec3<f32> = u_xlat2;
  u_xlat33 = ((vec3<f32>(x_2286, x_2286, x_2286) * x_2288) + x_2290);
  let x_2292 : f32 = u_xlat76;
  let x_2294 : vec3<f32> = u_xlat33;
  u_xlat33 = (vec3<f32>(x_2292, x_2292, x_2292) * x_2294);
  let x_2296 : vec4<f32> = u_xlat7;
  let x_2298 : vec3<f32> = u_xlat33;
  let x_2299 : vec3<f32> = (vec3<f32>(x_2296.x, x_2296.y, x_2296.z) * x_2298);
  let x_2300 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2299.x, x_2299.y, x_2299.z, x_2300.w);
  let x_2302 : vec4<f32> = u_xlat1;
  let x_2304 : vec3<f32> = u_xlat3;
  let x_2306 : vec4<f32> = u_xlat7;
  let x_2308 : vec3<f32> = ((vec3<f32>(x_2302.x, x_2302.y, x_2302.z) * x_2304) + vec3<f32>(x_2306.x, x_2306.y, x_2306.z));
  let x_2309 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2308.x, x_2308.y, x_2308.z, x_2309.w);
  let x_2311 : f32 = u_xlat54;
  let x_2313 : f32 = x_48.unity_LightData.z;
  u_xlat0.x = (x_2311 * x_2313);
  let x_2316 : vec3<f32> = u_xlat25;
  let x_2318 : vec4<f32> = x_135.x_MainLightPosition;
  u_xlat76 = dot(x_2316, vec3<f32>(x_2318.x, x_2318.y, x_2318.z));
  let x_2321 : f32 = u_xlat76;
  u_xlat76 = clamp(x_2321, 0.0f, 1.0f);
  let x_2324 : f32 = u_xlat0.x;
  let x_2325 : f32 = u_xlat76;
  u_xlat0.x = (x_2324 * x_2325);
  let x_2328 : vec4<f32> = u_xlat0;
  let x_2330 : vec4<f32> = u_xlat6;
  let x_2332 : vec3<f32> = (vec3<f32>(x_2328.x, x_2328.x, x_2328.x) * vec3<f32>(x_2330.x, x_2330.y, x_2330.z));
  let x_2333 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2332.x, x_2332.y, x_2332.z, x_2333.w);
  let x_2335 : vec3<f32> = u_xlat5;
  let x_2337 : vec4<f32> = x_135.x_MainLightPosition;
  let x_2339 : vec3<f32> = (x_2335 + vec3<f32>(x_2337.x, x_2337.y, x_2337.z));
  let x_2340 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2339.x, x_2339.y, x_2339.z, x_2340.w);
  let x_2342 : vec4<f32> = u_xlat7;
  let x_2344 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(vec3<f32>(x_2342.x, x_2342.y, x_2342.z), vec3<f32>(x_2344.x, x_2344.y, x_2344.z));
  let x_2349 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2349, 1.17549435e-38f);
  let x_2353 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_2353);
  let x_2356 : vec4<f32> = u_xlat0;
  let x_2358 : vec4<f32> = u_xlat7;
  let x_2360 : vec3<f32> = (vec3<f32>(x_2356.x, x_2356.x, x_2356.x) * vec3<f32>(x_2358.x, x_2358.y, x_2358.z));
  let x_2361 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2360.x, x_2360.y, x_2360.z, x_2361.w);
  let x_2363 : vec3<f32> = u_xlat25;
  let x_2364 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_2363, vec3<f32>(x_2364.x, x_2364.y, x_2364.z));
  let x_2369 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_2369, 0.0f, 1.0f);
  let x_2373 : vec4<f32> = x_135.x_MainLightPosition;
  let x_2375 : vec4<f32> = u_xlat7;
  u_xlat76 = dot(vec3<f32>(x_2373.x, x_2373.y, x_2373.z), vec3<f32>(x_2375.x, x_2375.y, x_2375.z));
  let x_2378 : f32 = u_xlat76;
  u_xlat76 = clamp(x_2378, 0.0f, 1.0f);
  let x_2381 : f32 = u_xlat0.x;
  let x_2383 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2381 * x_2383);
  let x_2387 : f32 = u_xlat0.x;
  let x_2389 : f32 = u_xlat8.x;
  u_xlat0.x = ((x_2387 * x_2389) + 1.00001001358032226562f);
  let x_2394 : f32 = u_xlat76;
  let x_2395 : f32 = u_xlat76;
  u_xlat76 = (x_2394 * x_2395);
  let x_2398 : f32 = u_xlat0.x;
  let x_2400 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2398 * x_2400);
  let x_2403 : f32 = u_xlat76;
  u_xlat76 = max(x_2403, 0.10000000149011611938f);
  let x_2406 : f32 = u_xlat0.x;
  let x_2407 : f32 = u_xlat76;
  u_xlat0.x = (x_2406 * x_2407);
  let x_2411 : f32 = u_xlat4.x;
  let x_2413 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2411 * x_2413);
  let x_2416 : f32 = u_xlat78;
  let x_2418 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2416 / x_2418);
  let x_2421 : vec3<f32> = u_xlat2;
  let x_2422 : vec4<f32> = u_xlat0;
  let x_2425 : vec3<f32> = u_xlat3;
  let x_2426 : vec3<f32> = ((x_2421 * vec3<f32>(x_2422.x, x_2422.x, x_2422.x)) + x_2425);
  let x_2427 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2426.x, x_2426.y, x_2426.z, x_2427.w);
  let x_2429 : vec4<f32> = u_xlat6;
  let x_2431 : vec4<f32> = u_xlat7;
  let x_2433 : vec3<f32> = (vec3<f32>(x_2429.x, x_2429.y, x_2429.z) * vec3<f32>(x_2431.x, x_2431.y, x_2431.z));
  let x_2434 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2433.x, x_2433.y, x_2433.z, x_2434.w);
  let x_2437 : f32 = x_135.x_AdditionalLightsCount.x;
  let x_2439 : f32 = x_48.unity_LightData.y;
  u_xlat0.x = min(x_2437, x_2439);
  let x_2445 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_2445));
  let x_2448 : f32 = u_xlat79;
  let x_2451 : f32 = x_779.x_AdditionalShadowFadeParams.x;
  let x_2454 : f32 = x_779.x_AdditionalShadowFadeParams.y;
  u_xlat76 = ((x_2448 * x_2451) + x_2454);
  let x_2456 : f32 = u_xlat76;
  u_xlat76 = clamp(x_2456, 0.0f, 1.0f);
  let x_2459 : f32 = x_2068.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2461 : f32 = x_2068.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2463 : f32 = x_2068.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2465 : f32 = x_2068.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2466 : vec4<f32> = vec4<f32>(x_2459, x_2461, x_2463, x_2465);
  let x_2473 : vec4<bool> = (vec4<f32>(x_2466.x, x_2466.y, x_2466.z, x_2466.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
  u_xlatb54 = vec2<bool>(x_2473.x, x_2473.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2485 : u32 = u_xlatu_loop_1;
    let x_2486 : u32 = u_xlatu0;
    if ((x_2485 < x_2486)) {
    } else {
      break;
    }
    let x_2489 : u32 = u_xlatu_loop_1;
    u_xlatu80 = (x_2489 >> 2u);
    let x_2493 : u32 = u_xlatu_loop_1;
    u_xlati81 = bitcast<i32>((x_2493 & 3u));
    let x_2496 : u32 = u_xlatu80;
    let x_2499 : vec4<f32> = x_48.unity_LightIndices[bitcast<i32>(x_2496)];
    let x_2509 : i32 = u_xlati81;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2514 : vec4<u32> = indexable[x_2509];
    u_xlat80 = dot(x_2499, bitcast<vec4<f32>>(x_2514));
    let x_2518 : f32 = u_xlat80;
    u_xlati80 = i32(x_2518);
    let x_2520 : vec3<f32> = vs_INTERP7;
    let x_2531 : i32 = u_xlati80;
    let x_2533 : vec4<f32> = x_2530.x_AdditionalLightsPosition[x_2531];
    let x_2536 : i32 = u_xlati80;
    let x_2538 : vec4<f32> = x_2530.x_AdditionalLightsPosition[x_2536];
    u_xlat33 = ((-(x_2520) * vec3<f32>(x_2533.w, x_2533.w, x_2533.w)) + vec3<f32>(x_2538.x, x_2538.y, x_2538.z));
    let x_2541 : vec3<f32> = u_xlat33;
    let x_2542 : vec3<f32> = u_xlat33;
    u_xlat81 = dot(x_2541, x_2542);
    let x_2544 : f32 = u_xlat81;
    u_xlat81 = max(x_2544, 0.00006103515625f);
    let x_2547 : f32 = u_xlat81;
    u_xlat82 = inverseSqrt(x_2547);
    let x_2549 : f32 = u_xlat82;
    let x_2551 : vec3<f32> = u_xlat33;
    let x_2552 : vec3<f32> = (vec3<f32>(x_2549, x_2549, x_2549) * x_2551);
    let x_2553 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2552.x, x_2552.y, x_2552.z, x_2553.w);
    let x_2556 : f32 = u_xlat81;
    u_xlat84 = (1.0f / x_2556);
    let x_2558 : f32 = u_xlat81;
    let x_2559 : i32 = u_xlati80;
    let x_2561 : f32 = x_2530.x_AdditionalLightsAttenuation[x_2559].x;
    u_xlat81 = (x_2558 * x_2561);
    let x_2563 : f32 = u_xlat81;
    let x_2565 : f32 = u_xlat81;
    u_xlat81 = ((-(x_2563) * x_2565) + 1.0f);
    let x_2568 : f32 = u_xlat81;
    u_xlat81 = max(x_2568, 0.0f);
    let x_2570 : f32 = u_xlat81;
    let x_2571 : f32 = u_xlat81;
    u_xlat81 = (x_2570 * x_2571);
    let x_2573 : f32 = u_xlat81;
    let x_2574 : f32 = u_xlat84;
    u_xlat81 = (x_2573 * x_2574);
    let x_2576 : i32 = u_xlati80;
    let x_2578 : vec4<f32> = x_2530.x_AdditionalLightsSpotDir[x_2576];
    let x_2580 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2578.x, x_2578.y, x_2578.z), vec3<f32>(x_2580.x, x_2580.y, x_2580.z));
    let x_2583 : f32 = u_xlat84;
    let x_2584 : i32 = u_xlati80;
    let x_2586 : f32 = x_2530.x_AdditionalLightsAttenuation[x_2584].z;
    let x_2588 : i32 = u_xlati80;
    let x_2590 : f32 = x_2530.x_AdditionalLightsAttenuation[x_2588].w;
    u_xlat84 = ((x_2583 * x_2586) + x_2590);
    let x_2592 : f32 = u_xlat84;
    u_xlat84 = clamp(x_2592, 0.0f, 1.0f);
    let x_2594 : f32 = u_xlat84;
    let x_2595 : f32 = u_xlat84;
    u_xlat84 = (x_2594 * x_2595);
    let x_2597 : f32 = u_xlat81;
    let x_2598 : f32 = u_xlat84;
    u_xlat81 = (x_2597 * x_2598);
    let x_2602 : i32 = u_xlati80;
    let x_2604 : f32 = x_779.x_AdditionalShadowParams[x_2602].w;
    u_xlati84 = i32(x_2604);
    let x_2609 : i32 = u_xlati84;
    u_xlatb10.x = (x_2609 >= 0i);
    let x_2613 : bool = u_xlatb10.x;
    if (x_2613) {
      let x_2617 : i32 = u_xlati80;
      let x_2619 : f32 = x_779.x_AdditionalShadowParams[x_2617].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2619, x_2619, x_2619, x_2619))));
      let x_2625 : bool = u_xlatb10.x;
      if (x_2625) {
        let x_2628 : vec4<f32> = u_xlat9;
        let x_2631 : vec4<f32> = u_xlat9;
        let x_2634 : vec4<bool> = (abs(vec4<f32>(x_2628.z, x_2628.z, x_2628.y, x_2628.z)) >= abs(vec4<f32>(x_2631.x, x_2631.y, x_2631.x, x_2631.x)));
        u_xlatb10 = vec3<bool>(x_2634.x, x_2634.y, x_2634.z);
        let x_2637 : bool = u_xlatb10.y;
        let x_2639 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_2637 & x_2639);
        let x_2643 : vec4<f32> = u_xlat9;
        let x_2646 : vec4<bool> = (-(vec4<f32>(x_2643.z, x_2643.y, x_2643.x, x_2643.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_2646.x, x_2646.y, x_2646.z);
        let x_2650 : bool = u_xlatb11.x;
        u_xlat35.x = select(4.0f, 5.0f, x_2650);
        let x_2655 : bool = u_xlatb11.y;
        u_xlat35.z = select(2.0f, 3.0f, x_2655);
        let x_2659 : bool = u_xlatb11.z;
        u_xlat11.x = select(0.0f, 1.0f, x_2659);
        let x_2664 : bool = u_xlatb10.z;
        if (x_2664) {
          let x_2669 : f32 = u_xlat35.z;
          x_2665 = x_2669;
        } else {
          let x_2672 : f32 = u_xlat11.x;
          x_2665 = x_2672;
        }
        let x_2673 : f32 = x_2665;
        u_xlat60 = x_2673;
        let x_2675 : bool = u_xlatb10.x;
        if (x_2675) {
          let x_2680 : f32 = u_xlat35.x;
          x_2676 = x_2680;
        } else {
          let x_2682 : f32 = u_xlat60;
          x_2676 = x_2682;
        }
        let x_2683 : f32 = x_2676;
        u_xlat10.x = x_2683;
        let x_2685 : i32 = u_xlati80;
        let x_2687 : f32 = x_779.x_AdditionalShadowParams[x_2685].w;
        u_xlat35.x = trunc(x_2687);
        let x_2691 : f32 = u_xlat10.x;
        let x_2693 : f32 = u_xlat35.x;
        u_xlat10.x = (x_2691 + x_2693);
        let x_2697 : f32 = u_xlat10.x;
        u_xlati84 = i32(x_2697);
      }
      let x_2699 : i32 = u_xlati84;
      u_xlati84 = (x_2699 << bitcast<u32>(2i));
      let x_2701 : vec3<f32> = vs_INTERP7;
      let x_2704 : i32 = u_xlati84;
      let x_2707 : i32 = u_xlati84;
      let x_2711 : vec4<f32> = x_779.x_AdditionalLightsWorldToShadow[((x_2704 + 1i) / 4i)][((x_2707 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_2701.y, x_2701.y, x_2701.y, x_2701.y) * x_2711);
      let x_2713 : i32 = u_xlati84;
      let x_2715 : i32 = u_xlati84;
      let x_2718 : vec4<f32> = x_779.x_AdditionalLightsWorldToShadow[(x_2713 / 4i)][(x_2715 % 4i)];
      let x_2719 : vec3<f32> = vs_INTERP7;
      let x_2722 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2718 * vec4<f32>(x_2719.x, x_2719.x, x_2719.x, x_2719.x)) + x_2722);
      let x_2724 : i32 = u_xlati84;
      let x_2727 : i32 = u_xlati84;
      let x_2731 : vec4<f32> = x_779.x_AdditionalLightsWorldToShadow[((x_2724 + 2i) / 4i)][((x_2727 + 2i) % 4i)];
      let x_2732 : vec3<f32> = vs_INTERP7;
      let x_2735 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2731 * vec4<f32>(x_2732.z, x_2732.z, x_2732.z, x_2732.z)) + x_2735);
      let x_2737 : vec4<f32> = u_xlat10;
      let x_2738 : i32 = u_xlati84;
      let x_2741 : i32 = u_xlati84;
      let x_2745 : vec4<f32> = x_779.x_AdditionalLightsWorldToShadow[((x_2738 + 3i) / 4i)][((x_2741 + 3i) % 4i)];
      u_xlat10 = (x_2737 + x_2745);
      let x_2747 : vec4<f32> = u_xlat10;
      let x_2749 : vec4<f32> = u_xlat10;
      let x_2751 : vec3<f32> = (vec3<f32>(x_2747.x, x_2747.y, x_2747.z) / vec3<f32>(x_2749.w, x_2749.w, x_2749.w));
      let x_2752 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2751.x, x_2751.y, x_2751.z, x_2752.w);
      let x_2755 : i32 = u_xlati80;
      let x_2757 : f32 = x_779.x_AdditionalShadowParams[x_2755].y;
      u_xlatb84 = (0.0f < x_2757);
      let x_2759 : bool = u_xlatb84;
      if (x_2759) {
        let x_2762 : i32 = u_xlati80;
        let x_2764 : f32 = x_779.x_AdditionalShadowParams[x_2762].y;
        u_xlatb84 = (1.0f == x_2764);
        let x_2766 : bool = u_xlatb84;
        if (x_2766) {
          let x_2769 : vec4<f32> = u_xlat10;
          let x_2773 : vec4<f32> = x_779.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2769.x, x_2769.y, x_2769.x, x_2769.y) + x_2773);
          let x_2776 : vec4<f32> = u_xlat11;
          let x_2777 : vec2<f32> = vec2<f32>(x_2776.x, x_2776.y);
          let x_2779 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2777.x, x_2777.y, x_2779);
          let x_2787 : vec3<f32> = txVec30;
          let x_2789 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2787.xy, x_2787.z);
          u_xlat12.x = x_2789;
          let x_2792 : vec4<f32> = u_xlat11;
          let x_2793 : vec2<f32> = vec2<f32>(x_2792.z, x_2792.w);
          let x_2795 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_2793.x, x_2793.y, x_2795);
          let x_2802 : vec3<f32> = txVec31;
          let x_2804 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2802.xy, x_2802.z);
          u_xlat12.y = x_2804;
          let x_2806 : vec4<f32> = u_xlat10;
          let x_2810 : vec4<f32> = x_779.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_2806.x, x_2806.y, x_2806.x, x_2806.y) + x_2810);
          let x_2813 : vec4<f32> = u_xlat11;
          let x_2814 : vec2<f32> = vec2<f32>(x_2813.x, x_2813.y);
          let x_2816 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_2814.x, x_2814.y, x_2816);
          let x_2823 : vec3<f32> = txVec32;
          let x_2825 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2823.xy, x_2823.z);
          u_xlat12.z = x_2825;
          let x_2828 : vec4<f32> = u_xlat11;
          let x_2829 : vec2<f32> = vec2<f32>(x_2828.z, x_2828.w);
          let x_2831 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_2829.x, x_2829.y, x_2831);
          let x_2838 : vec3<f32> = txVec33;
          let x_2840 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2838.xy, x_2838.z);
          u_xlat12.w = x_2840;
          let x_2842 : vec4<f32> = u_xlat12;
          u_xlat84 = dot(x_2842, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2846 : i32 = u_xlati80;
          let x_2848 : f32 = x_779.x_AdditionalShadowParams[x_2846].y;
          u_xlatb85 = (2.0f == x_2848);
          let x_2850 : bool = u_xlatb85;
          if (x_2850) {
            let x_2853 : vec4<f32> = u_xlat10;
            let x_2857 : vec4<f32> = x_779.x_AdditionalShadowmapSize;
            let x_2860 : vec2<f32> = ((vec2<f32>(x_2853.x, x_2853.y) * vec2<f32>(x_2857.z, x_2857.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2861 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2860.x, x_2860.y, x_2861.z, x_2861.w);
            let x_2863 : vec4<f32> = u_xlat11;
            let x_2865 : vec2<f32> = floor(vec2<f32>(x_2863.x, x_2863.y));
            let x_2866 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2865.x, x_2865.y, x_2866.z, x_2866.w);
            let x_2869 : vec4<f32> = u_xlat10;
            let x_2872 : vec4<f32> = x_779.x_AdditionalShadowmapSize;
            let x_2875 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2869.x, x_2869.y) * vec2<f32>(x_2872.z, x_2872.w)) + -(vec2<f32>(x_2875.x, x_2875.y)));
            let x_2879 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2879.x, x_2879.x, x_2879.y, x_2879.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2882 : vec4<f32> = u_xlat12;
            let x_2884 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2882.x, x_2882.x, x_2882.z, x_2882.z) * vec4<f32>(x_2884.x, x_2884.x, x_2884.z, x_2884.z));
            let x_2887 : vec4<f32> = u_xlat13;
            let x_2889 : vec2<f32> = (vec2<f32>(x_2887.y, x_2887.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2890 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2889.x, x_2890.y, x_2889.y, x_2890.w);
            let x_2892 : vec4<f32> = u_xlat13;
            let x_2895 : vec2<f32> = u_xlat61;
            let x_2897 : vec2<f32> = ((vec2<f32>(x_2892.x, x_2892.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2895));
            let x_2898 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2897.x, x_2897.y, x_2898.z, x_2898.w);
            let x_2901 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_2901) + vec2<f32>(1.0f, 1.0f));
            let x_2904 : vec2<f32> = u_xlat61;
            let x_2905 : vec2<f32> = min(x_2904, vec2<f32>(0.0f, 0.0f));
            let x_2906 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2905.x, x_2905.y, x_2906.z, x_2906.w);
            let x_2908 : vec4<f32> = u_xlat14;
            let x_2911 : vec4<f32> = u_xlat14;
            let x_2914 : vec2<f32> = u_xlat63;
            let x_2915 : vec2<f32> = ((-(vec2<f32>(x_2908.x, x_2908.y)) * vec2<f32>(x_2911.x, x_2911.y)) + x_2914);
            let x_2916 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2915.x, x_2915.y, x_2916.z, x_2916.w);
            let x_2918 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_2918, vec2<f32>(0.0f, 0.0f));
            let x_2920 : vec2<f32> = u_xlat61;
            let x_2922 : vec2<f32> = u_xlat61;
            let x_2924 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_2920) * x_2922) + vec2<f32>(x_2924.y, x_2924.w));
            let x_2927 : vec4<f32> = u_xlat14;
            let x_2929 : vec2<f32> = (vec2<f32>(x_2927.x, x_2927.y) + vec2<f32>(1.0f, 1.0f));
            let x_2930 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2929.x, x_2929.y, x_2930.z, x_2930.w);
            let x_2932 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_2932 + vec2<f32>(1.0f, 1.0f));
            let x_2934 : vec4<f32> = u_xlat13;
            let x_2936 : vec2<f32> = (vec2<f32>(x_2934.x, x_2934.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2937 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2936.x, x_2936.y, x_2937.z, x_2937.w);
            let x_2939 : vec2<f32> = u_xlat63;
            let x_2940 : vec2<f32> = (x_2939 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2941 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2940.x, x_2940.y, x_2941.z, x_2941.w);
            let x_2943 : vec4<f32> = u_xlat14;
            let x_2945 : vec2<f32> = (vec2<f32>(x_2943.x, x_2943.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2946 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2945.x, x_2945.y, x_2946.z, x_2946.w);
            let x_2948 : vec2<f32> = u_xlat61;
            let x_2949 : vec2<f32> = (x_2948 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2950 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2949.x, x_2949.y, x_2950.z, x_2950.w);
            let x_2952 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_2952.y, x_2952.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2956 : f32 = u_xlat14.x;
            u_xlat15.z = x_2956;
            let x_2959 : f32 = u_xlat61.x;
            u_xlat15.w = x_2959;
            let x_2962 : f32 = u_xlat16.x;
            u_xlat13.z = x_2962;
            let x_2965 : f32 = u_xlat12.x;
            u_xlat13.w = x_2965;
            let x_2967 : vec4<f32> = u_xlat13;
            let x_2969 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2967.z, x_2967.w, x_2967.x, x_2967.z) + vec4<f32>(x_2969.z, x_2969.w, x_2969.x, x_2969.z));
            let x_2973 : f32 = u_xlat15.y;
            u_xlat14.z = x_2973;
            let x_2976 : f32 = u_xlat61.y;
            u_xlat14.w = x_2976;
            let x_2979 : f32 = u_xlat13.y;
            u_xlat16.z = x_2979;
            let x_2982 : f32 = u_xlat12.z;
            u_xlat16.w = x_2982;
            let x_2984 : vec4<f32> = u_xlat14;
            let x_2986 : vec4<f32> = u_xlat16;
            let x_2988 : vec3<f32> = (vec3<f32>(x_2984.z, x_2984.y, x_2984.w) + vec3<f32>(x_2986.z, x_2986.y, x_2986.w));
            let x_2989 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2988.x, x_2988.y, x_2988.z, x_2989.w);
            let x_2991 : vec4<f32> = u_xlat13;
            let x_2993 : vec4<f32> = u_xlat17;
            let x_2995 : vec3<f32> = (vec3<f32>(x_2991.x, x_2991.z, x_2991.w) / vec3<f32>(x_2993.z, x_2993.w, x_2993.y));
            let x_2996 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2995.x, x_2995.y, x_2995.z, x_2996.w);
            let x_2998 : vec4<f32> = u_xlat13;
            let x_3000 : vec3<f32> = (vec3<f32>(x_2998.x, x_2998.y, x_2998.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3001 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3000.x, x_3000.y, x_3000.z, x_3001.w);
            let x_3003 : vec4<f32> = u_xlat16;
            let x_3005 : vec4<f32> = u_xlat12;
            let x_3007 : vec3<f32> = (vec3<f32>(x_3003.z, x_3003.y, x_3003.w) / vec3<f32>(x_3005.x, x_3005.y, x_3005.z));
            let x_3008 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3007.x, x_3007.y, x_3007.z, x_3008.w);
            let x_3010 : vec4<f32> = u_xlat14;
            let x_3012 : vec3<f32> = (vec3<f32>(x_3010.x, x_3010.y, x_3010.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3013 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3012.x, x_3012.y, x_3012.z, x_3013.w);
            let x_3015 : vec4<f32> = u_xlat13;
            let x_3018 : vec4<f32> = x_779.x_AdditionalShadowmapSize;
            let x_3020 : vec3<f32> = (vec3<f32>(x_3015.y, x_3015.x, x_3015.z) * vec3<f32>(x_3018.x, x_3018.x, x_3018.x));
            let x_3021 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3020.x, x_3020.y, x_3020.z, x_3021.w);
            let x_3023 : vec4<f32> = u_xlat14;
            let x_3026 : vec4<f32> = x_779.x_AdditionalShadowmapSize;
            let x_3028 : vec3<f32> = (vec3<f32>(x_3023.x, x_3023.y, x_3023.z) * vec3<f32>(x_3026.y, x_3026.y, x_3026.y));
            let x_3029 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3028.x, x_3028.y, x_3028.z, x_3029.w);
            let x_3032 : f32 = u_xlat14.x;
            u_xlat13.w = x_3032;
            let x_3034 : vec4<f32> = u_xlat11;
            let x_3037 : vec4<f32> = x_779.x_AdditionalShadowmapSize;
            let x_3040 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_3034.x, x_3034.y, x_3034.x, x_3034.y) * vec4<f32>(x_3037.x, x_3037.y, x_3037.x, x_3037.y)) + vec4<f32>(x_3040.y, x_3040.w, x_3040.x, x_3040.w));
            let x_3043 : vec4<f32> = u_xlat11;
            let x_3046 : vec4<f32> = x_779.x_AdditionalShadowmapSize;
            let x_3049 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_3043.x, x_3043.y) * vec2<f32>(x_3046.x, x_3046.y)) + vec2<f32>(x_3049.z, x_3049.w));
            let x_3053 : f32 = u_xlat13.y;
            u_xlat14.w = x_3053;
            let x_3055 : vec4<f32> = u_xlat14;
            let x_3056 : vec2<f32> = vec2<f32>(x_3055.y, x_3055.z);
            let x_3057 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3057.x, x_3056.x, x_3057.z, x_3056.y);
            let x_3059 : vec4<f32> = u_xlat11;
            let x_3062 : vec4<f32> = x_779.x_AdditionalShadowmapSize;
            let x_3065 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_3059.x, x_3059.y, x_3059.x, x_3059.y) * vec4<f32>(x_3062.x, x_3062.y, x_3062.x, x_3062.y)) + vec4<f32>(x_3065.x, x_3065.y, x_3065.z, x_3065.y));
            let x_3068 : vec4<f32> = u_xlat11;
            let x_3071 : vec4<f32> = x_779.x_AdditionalShadowmapSize;
            let x_3074 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3068.x, x_3068.y, x_3068.x, x_3068.y) * vec4<f32>(x_3071.x, x_3071.y, x_3071.x, x_3071.y)) + vec4<f32>(x_3074.w, x_3074.y, x_3074.w, x_3074.z));
            let x_3077 : vec4<f32> = u_xlat11;
            let x_3080 : vec4<f32> = x_779.x_AdditionalShadowmapSize;
            let x_3083 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_3077.x, x_3077.y, x_3077.x, x_3077.y) * vec4<f32>(x_3080.x, x_3080.y, x_3080.x, x_3080.y)) + vec4<f32>(x_3083.x, x_3083.w, x_3083.z, x_3083.w));
            let x_3086 : vec4<f32> = u_xlat12;
            let x_3088 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_3086.x, x_3086.x, x_3086.x, x_3086.y) * vec4<f32>(x_3088.z, x_3088.w, x_3088.y, x_3088.z));
            let x_3091 : vec4<f32> = u_xlat12;
            let x_3093 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_3091.y, x_3091.y, x_3091.z, x_3091.z) * x_3093);
            let x_3097 : f32 = u_xlat12.z;
            let x_3099 : f32 = u_xlat17.y;
            u_xlat85 = (x_3097 * x_3099);
            let x_3102 : vec4<f32> = u_xlat15;
            let x_3103 : vec2<f32> = vec2<f32>(x_3102.x, x_3102.y);
            let x_3105 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_3103.x, x_3103.y, x_3105);
            let x_3112 : vec3<f32> = txVec34;
            let x_3114 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3112.xy, x_3112.z);
            u_xlat11.x = x_3114;
            let x_3117 : vec4<f32> = u_xlat15;
            let x_3118 : vec2<f32> = vec2<f32>(x_3117.z, x_3117.w);
            let x_3120 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_3118.x, x_3118.y, x_3120);
            let x_3128 : vec3<f32> = txVec35;
            let x_3130 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3128.xy, x_3128.z);
            u_xlat36 = x_3130;
            let x_3131 : f32 = u_xlat36;
            let x_3133 : f32 = u_xlat18.y;
            u_xlat36 = (x_3131 * x_3133);
            let x_3136 : f32 = u_xlat18.x;
            let x_3138 : f32 = u_xlat11.x;
            let x_3140 : f32 = u_xlat36;
            u_xlat11.x = ((x_3136 * x_3138) + x_3140);
            let x_3144 : vec2<f32> = u_xlat61;
            let x_3146 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_3144.x, x_3144.y, x_3146);
            let x_3153 : vec3<f32> = txVec36;
            let x_3155 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3153.xy, x_3153.z);
            u_xlat36 = x_3155;
            let x_3157 : f32 = u_xlat18.z;
            let x_3158 : f32 = u_xlat36;
            let x_3161 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3157 * x_3158) + x_3161);
            let x_3165 : vec4<f32> = u_xlat14;
            let x_3166 : vec2<f32> = vec2<f32>(x_3165.x, x_3165.y);
            let x_3168 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_3166.x, x_3166.y, x_3168);
            let x_3175 : vec3<f32> = txVec37;
            let x_3177 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3175.xy, x_3175.z);
            u_xlat36 = x_3177;
            let x_3179 : f32 = u_xlat18.w;
            let x_3180 : f32 = u_xlat36;
            let x_3183 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3179 * x_3180) + x_3183);
            let x_3187 : vec4<f32> = u_xlat16;
            let x_3188 : vec2<f32> = vec2<f32>(x_3187.x, x_3187.y);
            let x_3190 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_3188.x, x_3188.y, x_3190);
            let x_3197 : vec3<f32> = txVec38;
            let x_3199 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3197.xy, x_3197.z);
            u_xlat36 = x_3199;
            let x_3201 : f32 = u_xlat19.x;
            let x_3202 : f32 = u_xlat36;
            let x_3205 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3201 * x_3202) + x_3205);
            let x_3209 : vec4<f32> = u_xlat16;
            let x_3210 : vec2<f32> = vec2<f32>(x_3209.z, x_3209.w);
            let x_3212 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_3210.x, x_3210.y, x_3212);
            let x_3219 : vec3<f32> = txVec39;
            let x_3221 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3219.xy, x_3219.z);
            u_xlat36 = x_3221;
            let x_3223 : f32 = u_xlat19.y;
            let x_3224 : f32 = u_xlat36;
            let x_3227 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3223 * x_3224) + x_3227);
            let x_3231 : vec4<f32> = u_xlat14;
            let x_3232 : vec2<f32> = vec2<f32>(x_3231.z, x_3231.w);
            let x_3234 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_3232.x, x_3232.y, x_3234);
            let x_3241 : vec3<f32> = txVec40;
            let x_3243 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3241.xy, x_3241.z);
            u_xlat36 = x_3243;
            let x_3245 : f32 = u_xlat19.z;
            let x_3246 : f32 = u_xlat36;
            let x_3249 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3245 * x_3246) + x_3249);
            let x_3253 : vec4<f32> = u_xlat13;
            let x_3254 : vec2<f32> = vec2<f32>(x_3253.x, x_3253.y);
            let x_3256 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_3254.x, x_3254.y, x_3256);
            let x_3263 : vec3<f32> = txVec41;
            let x_3265 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3263.xy, x_3263.z);
            u_xlat36 = x_3265;
            let x_3267 : f32 = u_xlat19.w;
            let x_3268 : f32 = u_xlat36;
            let x_3271 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3267 * x_3268) + x_3271);
            let x_3275 : vec4<f32> = u_xlat13;
            let x_3276 : vec2<f32> = vec2<f32>(x_3275.z, x_3275.w);
            let x_3278 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_3276.x, x_3276.y, x_3278);
            let x_3285 : vec3<f32> = txVec42;
            let x_3287 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3285.xy, x_3285.z);
            u_xlat36 = x_3287;
            let x_3288 : f32 = u_xlat85;
            let x_3289 : f32 = u_xlat36;
            let x_3292 : f32 = u_xlat11.x;
            u_xlat84 = ((x_3288 * x_3289) + x_3292);
          } else {
            let x_3295 : vec4<f32> = u_xlat10;
            let x_3298 : vec4<f32> = x_779.x_AdditionalShadowmapSize;
            let x_3301 : vec2<f32> = ((vec2<f32>(x_3295.x, x_3295.y) * vec2<f32>(x_3298.z, x_3298.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3302 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3301.x, x_3301.y, x_3302.z, x_3302.w);
            let x_3304 : vec4<f32> = u_xlat11;
            let x_3306 : vec2<f32> = floor(vec2<f32>(x_3304.x, x_3304.y));
            let x_3307 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3306.x, x_3306.y, x_3307.z, x_3307.w);
            let x_3309 : vec4<f32> = u_xlat10;
            let x_3312 : vec4<f32> = x_779.x_AdditionalShadowmapSize;
            let x_3315 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3309.x, x_3309.y) * vec2<f32>(x_3312.z, x_3312.w)) + -(vec2<f32>(x_3315.x, x_3315.y)));
            let x_3319 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3319.x, x_3319.x, x_3319.y, x_3319.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3322 : vec4<f32> = u_xlat12;
            let x_3324 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3322.x, x_3322.x, x_3322.z, x_3322.z) * vec4<f32>(x_3324.x, x_3324.x, x_3324.z, x_3324.z));
            let x_3327 : vec4<f32> = u_xlat13;
            let x_3329 : vec2<f32> = (vec2<f32>(x_3327.y, x_3327.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3330 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3330.x, x_3329.x, x_3330.z, x_3329.y);
            let x_3332 : vec4<f32> = u_xlat13;
            let x_3335 : vec2<f32> = u_xlat61;
            let x_3337 : vec2<f32> = ((vec2<f32>(x_3332.x, x_3332.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3335));
            let x_3338 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3337.x, x_3338.y, x_3337.y, x_3338.w);
            let x_3340 : vec2<f32> = u_xlat61;
            let x_3342 : vec2<f32> = (-(x_3340) + vec2<f32>(1.0f, 1.0f));
            let x_3343 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3342.x, x_3342.y, x_3343.z, x_3343.w);
            let x_3345 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_3345, vec2<f32>(0.0f, 0.0f));
            let x_3347 : vec2<f32> = u_xlat63;
            let x_3349 : vec2<f32> = u_xlat63;
            let x_3351 : vec4<f32> = u_xlat13;
            let x_3353 : vec2<f32> = ((-(x_3347) * x_3349) + vec2<f32>(x_3351.x, x_3351.y));
            let x_3354 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3353.x, x_3353.y, x_3354.z, x_3354.w);
            let x_3356 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_3356, vec2<f32>(0.0f, 0.0f));
            let x_3359 : vec2<f32> = u_xlat63;
            let x_3361 : vec2<f32> = u_xlat63;
            let x_3363 : vec4<f32> = u_xlat12;
            let x_3365 : vec2<f32> = ((-(x_3359) * x_3361) + vec2<f32>(x_3363.y, x_3363.w));
            let x_3366 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_3365.x, x_3366.y, x_3365.y);
            let x_3368 : vec4<f32> = u_xlat13;
            let x_3370 : vec2<f32> = (vec2<f32>(x_3368.x, x_3368.y) + vec2<f32>(2.0f, 2.0f));
            let x_3371 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3370.x, x_3370.y, x_3371.z, x_3371.w);
            let x_3373 : vec3<f32> = u_xlat37;
            let x_3375 : vec2<f32> = (vec2<f32>(x_3373.x, x_3373.z) + vec2<f32>(2.0f, 2.0f));
            let x_3376 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3376.x, x_3375.x, x_3376.z, x_3375.y);
            let x_3379 : f32 = u_xlat12.y;
            u_xlat15.z = (x_3379 * 0.08163200318813323975f);
            let x_3382 : vec4<f32> = u_xlat12;
            let x_3384 : vec3<f32> = (vec3<f32>(x_3382.z, x_3382.x, x_3382.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3385 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3384.x, x_3384.y, x_3384.z, x_3385.w);
            let x_3387 : vec4<f32> = u_xlat13;
            let x_3389 : vec2<f32> = (vec2<f32>(x_3387.x, x_3387.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3390 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3389.x, x_3389.y, x_3390.z, x_3390.w);
            let x_3393 : f32 = u_xlat16.y;
            u_xlat15.x = x_3393;
            let x_3395 : vec2<f32> = u_xlat61;
            let x_3398 : vec2<f32> = ((vec2<f32>(x_3395.x, x_3395.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3399 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3399.x, x_3398.x, x_3399.z, x_3398.y);
            let x_3401 : vec2<f32> = u_xlat61;
            let x_3404 : vec2<f32> = ((vec2<f32>(x_3401.x, x_3401.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3405 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3404.x, x_3405.y, x_3404.y, x_3405.w);
            let x_3408 : f32 = u_xlat12.x;
            u_xlat13.y = x_3408;
            let x_3411 : f32 = u_xlat14.y;
            u_xlat13.w = x_3411;
            let x_3413 : vec4<f32> = u_xlat13;
            let x_3414 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3413 + x_3414);
            let x_3416 : vec2<f32> = u_xlat61;
            let x_3419 : vec2<f32> = ((vec2<f32>(x_3416.y, x_3416.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3420 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3420.x, x_3419.x, x_3420.z, x_3419.y);
            let x_3422 : vec2<f32> = u_xlat61;
            let x_3425 : vec2<f32> = ((vec2<f32>(x_3422.y, x_3422.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3426 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3425.x, x_3426.y, x_3425.y, x_3426.w);
            let x_3429 : f32 = u_xlat12.y;
            u_xlat14.y = x_3429;
            let x_3431 : vec4<f32> = u_xlat14;
            let x_3432 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_3431 + x_3432);
            let x_3434 : vec4<f32> = u_xlat13;
            let x_3435 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_3434 / x_3435);
            let x_3437 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3437 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3439 : vec4<f32> = u_xlat14;
            let x_3440 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_3439 / x_3440);
            let x_3442 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3442 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3444 : vec4<f32> = u_xlat13;
            let x_3447 : vec4<f32> = x_779.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3444.w, x_3444.x, x_3444.y, x_3444.z) * vec4<f32>(x_3447.x, x_3447.x, x_3447.x, x_3447.x));
            let x_3450 : vec4<f32> = u_xlat14;
            let x_3453 : vec4<f32> = x_779.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3450.x, x_3450.w, x_3450.y, x_3450.z) * vec4<f32>(x_3453.y, x_3453.y, x_3453.y, x_3453.y));
            let x_3456 : vec4<f32> = u_xlat13;
            let x_3457 : vec3<f32> = vec3<f32>(x_3456.y, x_3456.z, x_3456.w);
            let x_3458 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3457.x, x_3458.y, x_3457.y, x_3457.z);
            let x_3461 : f32 = u_xlat14.x;
            u_xlat16.y = x_3461;
            let x_3463 : vec4<f32> = u_xlat11;
            let x_3466 : vec4<f32> = x_779.x_AdditionalShadowmapSize;
            let x_3469 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3463.x, x_3463.y, x_3463.x, x_3463.y) * vec4<f32>(x_3466.x, x_3466.y, x_3466.x, x_3466.y)) + vec4<f32>(x_3469.x, x_3469.y, x_3469.z, x_3469.y));
            let x_3472 : vec4<f32> = u_xlat11;
            let x_3475 : vec4<f32> = x_779.x_AdditionalShadowmapSize;
            let x_3478 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_3472.x, x_3472.y) * vec2<f32>(x_3475.x, x_3475.y)) + vec2<f32>(x_3478.w, x_3478.y));
            let x_3482 : f32 = u_xlat16.y;
            u_xlat13.y = x_3482;
            let x_3485 : f32 = u_xlat14.z;
            u_xlat16.y = x_3485;
            let x_3487 : vec4<f32> = u_xlat11;
            let x_3490 : vec4<f32> = x_779.x_AdditionalShadowmapSize;
            let x_3493 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3487.x, x_3487.y, x_3487.x, x_3487.y) * vec4<f32>(x_3490.x, x_3490.y, x_3490.x, x_3490.y)) + vec4<f32>(x_3493.x, x_3493.y, x_3493.z, x_3493.y));
            let x_3496 : vec4<f32> = u_xlat11;
            let x_3499 : vec4<f32> = x_779.x_AdditionalShadowmapSize;
            let x_3502 : vec4<f32> = u_xlat16;
            let x_3504 : vec2<f32> = ((vec2<f32>(x_3496.x, x_3496.y) * vec2<f32>(x_3499.x, x_3499.y)) + vec2<f32>(x_3502.w, x_3502.y));
            let x_3505 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3504.x, x_3504.y, x_3505.z, x_3505.w);
            let x_3508 : f32 = u_xlat16.y;
            u_xlat13.z = x_3508;
            let x_3511 : vec4<f32> = u_xlat11;
            let x_3514 : vec4<f32> = x_779.x_AdditionalShadowmapSize;
            let x_3517 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3511.x, x_3511.y, x_3511.x, x_3511.y) * vec4<f32>(x_3514.x, x_3514.y, x_3514.x, x_3514.y)) + vec4<f32>(x_3517.x, x_3517.y, x_3517.x, x_3517.z));
            let x_3521 : f32 = u_xlat14.w;
            u_xlat16.y = x_3521;
            let x_3524 : vec4<f32> = u_xlat11;
            let x_3527 : vec4<f32> = x_779.x_AdditionalShadowmapSize;
            let x_3530 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3524.x, x_3524.y, x_3524.x, x_3524.y) * vec4<f32>(x_3527.x, x_3527.y, x_3527.x, x_3527.y)) + vec4<f32>(x_3530.x, x_3530.y, x_3530.z, x_3530.y));
            let x_3534 : vec4<f32> = u_xlat11;
            let x_3537 : vec4<f32> = x_779.x_AdditionalShadowmapSize;
            let x_3540 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3534.x, x_3534.y) * vec2<f32>(x_3537.x, x_3537.y)) + vec2<f32>(x_3540.w, x_3540.y));
            let x_3544 : f32 = u_xlat16.y;
            u_xlat13.w = x_3544;
            let x_3547 : vec4<f32> = u_xlat11;
            let x_3550 : vec4<f32> = x_779.x_AdditionalShadowmapSize;
            let x_3553 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3547.x, x_3547.y) * vec2<f32>(x_3550.x, x_3550.y)) + vec2<f32>(x_3553.x, x_3553.w));
            let x_3556 : vec4<f32> = u_xlat16;
            let x_3557 : vec3<f32> = vec3<f32>(x_3556.x, x_3556.z, x_3556.w);
            let x_3558 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3557.x, x_3558.y, x_3557.y, x_3557.z);
            let x_3560 : vec4<f32> = u_xlat11;
            let x_3563 : vec4<f32> = x_779.x_AdditionalShadowmapSize;
            let x_3566 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3560.x, x_3560.y, x_3560.x, x_3560.y) * vec4<f32>(x_3563.x, x_3563.y, x_3563.x, x_3563.y)) + vec4<f32>(x_3566.x, x_3566.y, x_3566.z, x_3566.y));
            let x_3569 : vec4<f32> = u_xlat11;
            let x_3572 : vec4<f32> = x_779.x_AdditionalShadowmapSize;
            let x_3575 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3569.x, x_3569.y) * vec2<f32>(x_3572.x, x_3572.y)) + vec2<f32>(x_3575.w, x_3575.y));
            let x_3579 : f32 = u_xlat13.x;
            u_xlat14.x = x_3579;
            let x_3581 : vec4<f32> = u_xlat11;
            let x_3584 : vec4<f32> = x_779.x_AdditionalShadowmapSize;
            let x_3587 : vec4<f32> = u_xlat14;
            let x_3589 : vec2<f32> = ((vec2<f32>(x_3581.x, x_3581.y) * vec2<f32>(x_3584.x, x_3584.y)) + vec2<f32>(x_3587.x, x_3587.y));
            let x_3590 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3589.x, x_3589.y, x_3590.z, x_3590.w);
            let x_3593 : vec4<f32> = u_xlat12;
            let x_3595 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3593.x, x_3593.x, x_3593.x, x_3593.x) * x_3595);
            let x_3598 : vec4<f32> = u_xlat12;
            let x_3600 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3598.y, x_3598.y, x_3598.y, x_3598.y) * x_3600);
            let x_3603 : vec4<f32> = u_xlat12;
            let x_3605 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3603.z, x_3603.z, x_3603.z, x_3603.z) * x_3605);
            let x_3607 : vec4<f32> = u_xlat12;
            let x_3609 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3607.w, x_3607.w, x_3607.w, x_3607.w) * x_3609);
            let x_3612 : vec4<f32> = u_xlat17;
            let x_3613 : vec2<f32> = vec2<f32>(x_3612.x, x_3612.y);
            let x_3615 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3613.x, x_3613.y, x_3615);
            let x_3622 : vec3<f32> = txVec43;
            let x_3624 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3622.xy, x_3622.z);
            u_xlat85 = x_3624;
            let x_3626 : vec4<f32> = u_xlat17;
            let x_3627 : vec2<f32> = vec2<f32>(x_3626.z, x_3626.w);
            let x_3629 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3627.x, x_3627.y, x_3629);
            let x_3636 : vec3<f32> = txVec44;
            let x_3638 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3636.xy, x_3636.z);
            u_xlat13.x = x_3638;
            let x_3641 : f32 = u_xlat13.x;
            let x_3643 : f32 = u_xlat22.y;
            u_xlat13.x = (x_3641 * x_3643);
            let x_3647 : f32 = u_xlat22.x;
            let x_3648 : f32 = u_xlat85;
            let x_3651 : f32 = u_xlat13.x;
            u_xlat85 = ((x_3647 * x_3648) + x_3651);
            let x_3654 : vec2<f32> = u_xlat61;
            let x_3656 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3654.x, x_3654.y, x_3656);
            let x_3663 : vec3<f32> = txVec45;
            let x_3665 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3663.xy, x_3663.z);
            u_xlat61.x = x_3665;
            let x_3668 : f32 = u_xlat22.z;
            let x_3670 : f32 = u_xlat61.x;
            let x_3672 : f32 = u_xlat85;
            u_xlat85 = ((x_3668 * x_3670) + x_3672);
            let x_3675 : vec4<f32> = u_xlat20;
            let x_3676 : vec2<f32> = vec2<f32>(x_3675.x, x_3675.y);
            let x_3678 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3676.x, x_3676.y, x_3678);
            let x_3685 : vec3<f32> = txVec46;
            let x_3687 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3685.xy, x_3685.z);
            u_xlat61.x = x_3687;
            let x_3690 : f32 = u_xlat22.w;
            let x_3692 : f32 = u_xlat61.x;
            let x_3694 : f32 = u_xlat85;
            u_xlat85 = ((x_3690 * x_3692) + x_3694);
            let x_3697 : vec4<f32> = u_xlat18;
            let x_3698 : vec2<f32> = vec2<f32>(x_3697.x, x_3697.y);
            let x_3700 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3698.x, x_3698.y, x_3700);
            let x_3707 : vec3<f32> = txVec47;
            let x_3709 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3707.xy, x_3707.z);
            u_xlat61.x = x_3709;
            let x_3712 : f32 = u_xlat23.x;
            let x_3714 : f32 = u_xlat61.x;
            let x_3716 : f32 = u_xlat85;
            u_xlat85 = ((x_3712 * x_3714) + x_3716);
            let x_3719 : vec4<f32> = u_xlat18;
            let x_3720 : vec2<f32> = vec2<f32>(x_3719.z, x_3719.w);
            let x_3722 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3720.x, x_3720.y, x_3722);
            let x_3729 : vec3<f32> = txVec48;
            let x_3731 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3729.xy, x_3729.z);
            u_xlat61.x = x_3731;
            let x_3734 : f32 = u_xlat23.y;
            let x_3736 : f32 = u_xlat61.x;
            let x_3738 : f32 = u_xlat85;
            u_xlat85 = ((x_3734 * x_3736) + x_3738);
            let x_3741 : vec4<f32> = u_xlat19;
            let x_3742 : vec2<f32> = vec2<f32>(x_3741.x, x_3741.y);
            let x_3744 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3742.x, x_3742.y, x_3744);
            let x_3751 : vec3<f32> = txVec49;
            let x_3753 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3751.xy, x_3751.z);
            u_xlat61.x = x_3753;
            let x_3756 : f32 = u_xlat23.z;
            let x_3758 : f32 = u_xlat61.x;
            let x_3760 : f32 = u_xlat85;
            u_xlat85 = ((x_3756 * x_3758) + x_3760);
            let x_3763 : vec4<f32> = u_xlat20;
            let x_3764 : vec2<f32> = vec2<f32>(x_3763.z, x_3763.w);
            let x_3766 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3764.x, x_3764.y, x_3766);
            let x_3773 : vec3<f32> = txVec50;
            let x_3775 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3773.xy, x_3773.z);
            u_xlat61.x = x_3775;
            let x_3778 : f32 = u_xlat23.w;
            let x_3780 : f32 = u_xlat61.x;
            let x_3782 : f32 = u_xlat85;
            u_xlat85 = ((x_3778 * x_3780) + x_3782);
            let x_3785 : vec4<f32> = u_xlat21;
            let x_3786 : vec2<f32> = vec2<f32>(x_3785.x, x_3785.y);
            let x_3788 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3786.x, x_3786.y, x_3788);
            let x_3795 : vec3<f32> = txVec51;
            let x_3797 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3795.xy, x_3795.z);
            u_xlat61.x = x_3797;
            let x_3800 : f32 = u_xlat24.x;
            let x_3802 : f32 = u_xlat61.x;
            let x_3804 : f32 = u_xlat85;
            u_xlat85 = ((x_3800 * x_3802) + x_3804);
            let x_3807 : vec4<f32> = u_xlat21;
            let x_3808 : vec2<f32> = vec2<f32>(x_3807.z, x_3807.w);
            let x_3810 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_3808.x, x_3808.y, x_3810);
            let x_3817 : vec3<f32> = txVec52;
            let x_3819 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3817.xy, x_3817.z);
            u_xlat61.x = x_3819;
            let x_3822 : f32 = u_xlat24.y;
            let x_3824 : f32 = u_xlat61.x;
            let x_3826 : f32 = u_xlat85;
            u_xlat85 = ((x_3822 * x_3824) + x_3826);
            let x_3829 : vec2<f32> = u_xlat38;
            let x_3831 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_3829.x, x_3829.y, x_3831);
            let x_3838 : vec3<f32> = txVec53;
            let x_3840 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3838.xy, x_3838.z);
            u_xlat61.x = x_3840;
            let x_3843 : f32 = u_xlat24.z;
            let x_3845 : f32 = u_xlat61.x;
            let x_3847 : f32 = u_xlat85;
            u_xlat85 = ((x_3843 * x_3845) + x_3847);
            let x_3850 : vec2<f32> = u_xlat69;
            let x_3852 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_3850.x, x_3850.y, x_3852);
            let x_3859 : vec3<f32> = txVec54;
            let x_3861 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3859.xy, x_3859.z);
            u_xlat61.x = x_3861;
            let x_3864 : f32 = u_xlat24.w;
            let x_3866 : f32 = u_xlat61.x;
            let x_3868 : f32 = u_xlat85;
            u_xlat85 = ((x_3864 * x_3866) + x_3868);
            let x_3871 : vec4<f32> = u_xlat16;
            let x_3872 : vec2<f32> = vec2<f32>(x_3871.x, x_3871.y);
            let x_3874 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_3872.x, x_3872.y, x_3874);
            let x_3881 : vec3<f32> = txVec55;
            let x_3883 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3881.xy, x_3881.z);
            u_xlat61.x = x_3883;
            let x_3886 : f32 = u_xlat12.x;
            let x_3888 : f32 = u_xlat61.x;
            let x_3890 : f32 = u_xlat85;
            u_xlat85 = ((x_3886 * x_3888) + x_3890);
            let x_3893 : vec4<f32> = u_xlat16;
            let x_3894 : vec2<f32> = vec2<f32>(x_3893.z, x_3893.w);
            let x_3896 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_3894.x, x_3894.y, x_3896);
            let x_3903 : vec3<f32> = txVec56;
            let x_3905 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3903.xy, x_3903.z);
            u_xlat61.x = x_3905;
            let x_3908 : f32 = u_xlat12.y;
            let x_3910 : f32 = u_xlat61.x;
            let x_3912 : f32 = u_xlat85;
            u_xlat85 = ((x_3908 * x_3910) + x_3912);
            let x_3915 : vec2<f32> = u_xlat64;
            let x_3917 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_3915.x, x_3915.y, x_3917);
            let x_3924 : vec3<f32> = txVec57;
            let x_3926 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3924.xy, x_3924.z);
            u_xlat61.x = x_3926;
            let x_3929 : f32 = u_xlat12.z;
            let x_3931 : f32 = u_xlat61.x;
            let x_3933 : f32 = u_xlat85;
            u_xlat85 = ((x_3929 * x_3931) + x_3933);
            let x_3936 : vec4<f32> = u_xlat11;
            let x_3937 : vec2<f32> = vec2<f32>(x_3936.x, x_3936.y);
            let x_3939 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_3937.x, x_3937.y, x_3939);
            let x_3946 : vec3<f32> = txVec58;
            let x_3948 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3946.xy, x_3946.z);
            u_xlat11.x = x_3948;
            let x_3951 : f32 = u_xlat12.w;
            let x_3953 : f32 = u_xlat11.x;
            let x_3955 : f32 = u_xlat85;
            u_xlat84 = ((x_3951 * x_3953) + x_3955);
          }
        }
      } else {
        let x_3959 : vec4<f32> = u_xlat10;
        let x_3960 : vec2<f32> = vec2<f32>(x_3959.x, x_3959.y);
        let x_3962 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_3960.x, x_3960.y, x_3962);
        let x_3969 : vec3<f32> = txVec59;
        let x_3971 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3969.xy, x_3969.z);
        u_xlat84 = x_3971;
      }
      let x_3972 : i32 = u_xlati80;
      let x_3974 : f32 = x_779.x_AdditionalShadowParams[x_3972].x;
      u_xlat10.x = (1.0f + -(x_3974));
      let x_3978 : f32 = u_xlat84;
      let x_3979 : i32 = u_xlati80;
      let x_3981 : f32 = x_779.x_AdditionalShadowParams[x_3979].x;
      let x_3984 : f32 = u_xlat10.x;
      u_xlat84 = ((x_3978 * x_3981) + x_3984);
      let x_3987 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_3987);
      let x_3992 : f32 = u_xlat10.z;
      u_xlatb35 = (x_3992 >= 1.0f);
      let x_3994 : bool = u_xlatb35;
      let x_3996 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_3994 | x_3996);
      let x_4000 : bool = u_xlatb10.x;
      let x_4001 : f32 = u_xlat84;
      u_xlat84 = select(x_4001, 1.0f, x_4000);
    } else {
      u_xlat84 = 1.0f;
    }
    let x_4004 : f32 = u_xlat84;
    u_xlat10.x = (-(x_4004) + 1.0f);
    let x_4008 : f32 = u_xlat76;
    let x_4010 : f32 = u_xlat10.x;
    let x_4012 : f32 = u_xlat84;
    u_xlat84 = ((x_4008 * x_4010) + x_4012);
    let x_4015 : i32 = u_xlati80;
    u_xlati10 = (1i << bitcast<u32>((x_4015 & 31i)));
    let x_4019 : i32 = u_xlati10;
    let x_4022 : f32 = x_2068.x_AdditionalLightsCookieEnableBits;
    u_xlati10 = bitcast<i32>((bitcast<u32>(x_4019) & bitcast<u32>(x_4022)));
    let x_4026 : i32 = u_xlati10;
    if ((x_4026 != 0i)) {
      let x_4030 : i32 = u_xlati80;
      let x_4032 : f32 = x_2068.x_AdditionalLightsLightTypes[x_4030].el;
      u_xlati10 = i32(x_4032);
      let x_4035 : i32 = u_xlati10;
      u_xlati35 = select(1i, 0i, (x_4035 != 0i));
      let x_4039 : i32 = u_xlati80;
      u_xlati60 = (x_4039 << bitcast<u32>(2i));
      let x_4041 : i32 = u_xlati35;
      if ((x_4041 != 0i)) {
        let x_4045 : vec3<f32> = vs_INTERP7;
        let x_4047 : i32 = u_xlati60;
        let x_4050 : i32 = u_xlati60;
        let x_4054 : vec4<f32> = x_2068.x_AdditionalLightsWorldToLights[((x_4047 + 1i) / 4i)][((x_4050 + 1i) % 4i)];
        let x_4056 : vec3<f32> = (vec3<f32>(x_4045.y, x_4045.y, x_4045.y) * vec3<f32>(x_4054.x, x_4054.y, x_4054.w));
        let x_4057 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4056.x, x_4056.y, x_4056.z, x_4057.w);
        let x_4059 : i32 = u_xlati60;
        let x_4061 : i32 = u_xlati60;
        let x_4064 : vec4<f32> = x_2068.x_AdditionalLightsWorldToLights[(x_4059 / 4i)][(x_4061 % 4i)];
        let x_4066 : vec3<f32> = vs_INTERP7;
        let x_4069 : vec4<f32> = u_xlat11;
        let x_4071 : vec3<f32> = ((vec3<f32>(x_4064.x, x_4064.y, x_4064.w) * vec3<f32>(x_4066.x, x_4066.x, x_4066.x)) + vec3<f32>(x_4069.x, x_4069.y, x_4069.z));
        let x_4072 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4071.x, x_4071.y, x_4071.z, x_4072.w);
        let x_4074 : i32 = u_xlati60;
        let x_4077 : i32 = u_xlati60;
        let x_4081 : vec4<f32> = x_2068.x_AdditionalLightsWorldToLights[((x_4074 + 2i) / 4i)][((x_4077 + 2i) % 4i)];
        let x_4083 : vec3<f32> = vs_INTERP7;
        let x_4086 : vec4<f32> = u_xlat11;
        let x_4088 : vec3<f32> = ((vec3<f32>(x_4081.x, x_4081.y, x_4081.w) * vec3<f32>(x_4083.z, x_4083.z, x_4083.z)) + vec3<f32>(x_4086.x, x_4086.y, x_4086.z));
        let x_4089 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4088.x, x_4088.y, x_4088.z, x_4089.w);
        let x_4091 : vec4<f32> = u_xlat11;
        let x_4093 : i32 = u_xlati60;
        let x_4096 : i32 = u_xlati60;
        let x_4100 : vec4<f32> = x_2068.x_AdditionalLightsWorldToLights[((x_4093 + 3i) / 4i)][((x_4096 + 3i) % 4i)];
        let x_4102 : vec3<f32> = (vec3<f32>(x_4091.x, x_4091.y, x_4091.z) + vec3<f32>(x_4100.x, x_4100.y, x_4100.w));
        let x_4103 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4102.x, x_4102.y, x_4102.z, x_4103.w);
        let x_4105 : vec4<f32> = u_xlat11;
        let x_4107 : vec4<f32> = u_xlat11;
        let x_4109 : vec2<f32> = (vec2<f32>(x_4105.x, x_4105.y) / vec2<f32>(x_4107.z, x_4107.z));
        let x_4110 : vec3<f32> = u_xlat35;
        u_xlat35 = vec3<f32>(x_4109.x, x_4110.y, x_4109.y);
        let x_4112 : vec3<f32> = u_xlat35;
        let x_4115 : vec2<f32> = ((vec2<f32>(x_4112.x, x_4112.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_4116 : vec3<f32> = u_xlat35;
        u_xlat35 = vec3<f32>(x_4115.x, x_4116.y, x_4115.y);
        let x_4118 : vec3<f32> = u_xlat35;
        let x_4122 : vec2<f32> = clamp(vec2<f32>(x_4118.x, x_4118.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_4123 : vec3<f32> = u_xlat35;
        u_xlat35 = vec3<f32>(x_4122.x, x_4123.y, x_4122.y);
        let x_4125 : i32 = u_xlati80;
        let x_4127 : vec4<f32> = x_2068.x_AdditionalLightsCookieAtlasUVRects[x_4125];
        let x_4129 : vec3<f32> = u_xlat35;
        let x_4132 : i32 = u_xlati80;
        let x_4134 : vec4<f32> = x_2068.x_AdditionalLightsCookieAtlasUVRects[x_4132];
        let x_4136 : vec2<f32> = ((vec2<f32>(x_4127.x, x_4127.y) * vec2<f32>(x_4129.x, x_4129.z)) + vec2<f32>(x_4134.z, x_4134.w));
        let x_4137 : vec3<f32> = u_xlat35;
        u_xlat35 = vec3<f32>(x_4136.x, x_4137.y, x_4136.y);
      } else {
        let x_4140 : i32 = u_xlati10;
        u_xlatb10.x = (x_4140 == 1i);
        let x_4144 : bool = u_xlatb10.x;
        u_xlati10 = select(0i, 1i, x_4144);
        let x_4146 : i32 = u_xlati10;
        if ((x_4146 != 0i)) {
          let x_4150 : vec3<f32> = vs_INTERP7;
          let x_4152 : i32 = u_xlati60;
          let x_4155 : i32 = u_xlati60;
          let x_4159 : vec4<f32> = x_2068.x_AdditionalLightsWorldToLights[((x_4152 + 1i) / 4i)][((x_4155 + 1i) % 4i)];
          let x_4161 : vec2<f32> = (vec2<f32>(x_4150.y, x_4150.y) * vec2<f32>(x_4159.x, x_4159.y));
          let x_4162 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4161.x, x_4161.y, x_4162.z, x_4162.w);
          let x_4164 : i32 = u_xlati60;
          let x_4166 : i32 = u_xlati60;
          let x_4169 : vec4<f32> = x_2068.x_AdditionalLightsWorldToLights[(x_4164 / 4i)][(x_4166 % 4i)];
          let x_4171 : vec3<f32> = vs_INTERP7;
          let x_4174 : vec4<f32> = u_xlat11;
          let x_4176 : vec2<f32> = ((vec2<f32>(x_4169.x, x_4169.y) * vec2<f32>(x_4171.x, x_4171.x)) + vec2<f32>(x_4174.x, x_4174.y));
          let x_4177 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4176.x, x_4176.y, x_4177.z, x_4177.w);
          let x_4179 : i32 = u_xlati60;
          let x_4182 : i32 = u_xlati60;
          let x_4186 : vec4<f32> = x_2068.x_AdditionalLightsWorldToLights[((x_4179 + 2i) / 4i)][((x_4182 + 2i) % 4i)];
          let x_4188 : vec3<f32> = vs_INTERP7;
          let x_4191 : vec4<f32> = u_xlat11;
          let x_4193 : vec2<f32> = ((vec2<f32>(x_4186.x, x_4186.y) * vec2<f32>(x_4188.z, x_4188.z)) + vec2<f32>(x_4191.x, x_4191.y));
          let x_4194 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4193.x, x_4193.y, x_4194.z, x_4194.w);
          let x_4196 : vec4<f32> = u_xlat11;
          let x_4198 : i32 = u_xlati60;
          let x_4201 : i32 = u_xlati60;
          let x_4205 : vec4<f32> = x_2068.x_AdditionalLightsWorldToLights[((x_4198 + 3i) / 4i)][((x_4201 + 3i) % 4i)];
          let x_4207 : vec2<f32> = (vec2<f32>(x_4196.x, x_4196.y) + vec2<f32>(x_4205.x, x_4205.y));
          let x_4208 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4207.x, x_4207.y, x_4208.z, x_4208.w);
          let x_4210 : vec4<f32> = u_xlat11;
          let x_4213 : vec2<f32> = ((vec2<f32>(x_4210.x, x_4210.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4214 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4213.x, x_4213.y, x_4214.z, x_4214.w);
          let x_4216 : vec4<f32> = u_xlat11;
          let x_4218 : vec2<f32> = fract(vec2<f32>(x_4216.x, x_4216.y));
          let x_4219 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4218.x, x_4218.y, x_4219.z, x_4219.w);
          let x_4221 : i32 = u_xlati80;
          let x_4223 : vec4<f32> = x_2068.x_AdditionalLightsCookieAtlasUVRects[x_4221];
          let x_4225 : vec4<f32> = u_xlat11;
          let x_4228 : i32 = u_xlati80;
          let x_4230 : vec4<f32> = x_2068.x_AdditionalLightsCookieAtlasUVRects[x_4228];
          let x_4232 : vec2<f32> = ((vec2<f32>(x_4223.x, x_4223.y) * vec2<f32>(x_4225.x, x_4225.y)) + vec2<f32>(x_4230.z, x_4230.w));
          let x_4233 : vec3<f32> = u_xlat35;
          u_xlat35 = vec3<f32>(x_4232.x, x_4233.y, x_4232.y);
        } else {
          let x_4236 : vec3<f32> = vs_INTERP7;
          let x_4238 : i32 = u_xlati60;
          let x_4241 : i32 = u_xlati60;
          let x_4245 : vec4<f32> = x_2068.x_AdditionalLightsWorldToLights[((x_4238 + 1i) / 4i)][((x_4241 + 1i) % 4i)];
          u_xlat11 = (vec4<f32>(x_4236.y, x_4236.y, x_4236.y, x_4236.y) * x_4245);
          let x_4247 : i32 = u_xlati60;
          let x_4249 : i32 = u_xlati60;
          let x_4252 : vec4<f32> = x_2068.x_AdditionalLightsWorldToLights[(x_4247 / 4i)][(x_4249 % 4i)];
          let x_4253 : vec3<f32> = vs_INTERP7;
          let x_4256 : vec4<f32> = u_xlat11;
          u_xlat11 = ((x_4252 * vec4<f32>(x_4253.x, x_4253.x, x_4253.x, x_4253.x)) + x_4256);
          let x_4258 : i32 = u_xlati60;
          let x_4261 : i32 = u_xlati60;
          let x_4265 : vec4<f32> = x_2068.x_AdditionalLightsWorldToLights[((x_4258 + 2i) / 4i)][((x_4261 + 2i) % 4i)];
          let x_4266 : vec3<f32> = vs_INTERP7;
          let x_4269 : vec4<f32> = u_xlat11;
          u_xlat11 = ((x_4265 * vec4<f32>(x_4266.z, x_4266.z, x_4266.z, x_4266.z)) + x_4269);
          let x_4271 : vec4<f32> = u_xlat11;
          let x_4272 : i32 = u_xlati60;
          let x_4275 : i32 = u_xlati60;
          let x_4279 : vec4<f32> = x_2068.x_AdditionalLightsWorldToLights[((x_4272 + 3i) / 4i)][((x_4275 + 3i) % 4i)];
          u_xlat11 = (x_4271 + x_4279);
          let x_4281 : vec4<f32> = u_xlat11;
          let x_4283 : vec4<f32> = u_xlat11;
          let x_4285 : vec3<f32> = (vec3<f32>(x_4281.x, x_4281.y, x_4281.z) / vec3<f32>(x_4283.w, x_4283.w, x_4283.w));
          let x_4286 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4285.x, x_4285.y, x_4285.z, x_4286.w);
          let x_4288 : vec4<f32> = u_xlat11;
          let x_4290 : vec4<f32> = u_xlat11;
          u_xlat10.x = dot(vec3<f32>(x_4288.x, x_4288.y, x_4288.z), vec3<f32>(x_4290.x, x_4290.y, x_4290.z));
          let x_4295 : f32 = u_xlat10.x;
          u_xlat10.x = inverseSqrt(x_4295);
          let x_4298 : vec4<f32> = u_xlat10;
          let x_4300 : vec4<f32> = u_xlat11;
          let x_4302 : vec3<f32> = (vec3<f32>(x_4298.x, x_4298.x, x_4298.x) * vec3<f32>(x_4300.x, x_4300.y, x_4300.z));
          let x_4303 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4302.x, x_4302.y, x_4302.z, x_4303.w);
          let x_4305 : vec4<f32> = u_xlat11;
          u_xlat10.x = dot(abs(vec3<f32>(x_4305.x, x_4305.y, x_4305.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_4312 : f32 = u_xlat10.x;
          u_xlat10.x = max(x_4312, 0.00000099999999747524f);
          let x_4317 : f32 = u_xlat10.x;
          u_xlat10.x = (1.0f / x_4317);
          let x_4320 : vec4<f32> = u_xlat10;
          let x_4322 : vec4<f32> = u_xlat11;
          let x_4324 : vec3<f32> = (vec3<f32>(x_4320.x, x_4320.x, x_4320.x) * vec3<f32>(x_4322.z, x_4322.x, x_4322.y));
          let x_4325 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4324.x, x_4324.y, x_4324.z, x_4325.w);
          let x_4328 : f32 = u_xlat12.x;
          u_xlat12.x = -(x_4328);
          let x_4332 : f32 = u_xlat12.x;
          u_xlat12.x = clamp(x_4332, 0.0f, 1.0f);
          let x_4336 : vec4<f32> = u_xlat12;
          let x_4338 : vec4<bool> = (vec4<f32>(x_4336.y, x_4336.z, x_4336.y, x_4336.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb61 = vec2<bool>(x_4338.x, x_4338.y);
          let x_4341 : bool = u_xlatb61.x;
          if (x_4341) {
            let x_4346 : f32 = u_xlat12.x;
            x_4342 = x_4346;
          } else {
            let x_4349 : f32 = u_xlat12.x;
            x_4342 = -(x_4349);
          }
          let x_4351 : f32 = x_4342;
          u_xlat61.x = x_4351;
          let x_4354 : bool = u_xlatb61.y;
          if (x_4354) {
            let x_4359 : f32 = u_xlat12.x;
            x_4355 = x_4359;
          } else {
            let x_4362 : f32 = u_xlat12.x;
            x_4355 = -(x_4362);
          }
          let x_4364 : f32 = x_4355;
          u_xlat61.y = x_4364;
          let x_4366 : vec4<f32> = u_xlat11;
          let x_4368 : vec4<f32> = u_xlat10;
          let x_4371 : vec2<f32> = u_xlat61;
          let x_4372 : vec2<f32> = ((vec2<f32>(x_4366.x, x_4366.y) * vec2<f32>(x_4368.x, x_4368.x)) + x_4371);
          let x_4373 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_4372.x, x_4373.y, x_4372.y, x_4373.w);
          let x_4375 : vec4<f32> = u_xlat10;
          let x_4378 : vec2<f32> = ((vec2<f32>(x_4375.x, x_4375.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4379 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_4378.x, x_4379.y, x_4378.y, x_4379.w);
          let x_4381 : vec4<f32> = u_xlat10;
          let x_4385 : vec2<f32> = clamp(vec2<f32>(x_4381.x, x_4381.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4386 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_4385.x, x_4386.y, x_4385.y, x_4386.w);
          let x_4388 : i32 = u_xlati80;
          let x_4390 : vec4<f32> = x_2068.x_AdditionalLightsCookieAtlasUVRects[x_4388];
          let x_4392 : vec4<f32> = u_xlat10;
          let x_4395 : i32 = u_xlati80;
          let x_4397 : vec4<f32> = x_2068.x_AdditionalLightsCookieAtlasUVRects[x_4395];
          let x_4399 : vec2<f32> = ((vec2<f32>(x_4390.x, x_4390.y) * vec2<f32>(x_4392.x, x_4392.z)) + vec2<f32>(x_4397.z, x_4397.w));
          let x_4400 : vec3<f32> = u_xlat35;
          u_xlat35 = vec3<f32>(x_4399.x, x_4400.y, x_4399.y);
        }
      }
      let x_4407 : vec3<f32> = u_xlat35;
      let x_4409 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4407.x, x_4407.z), 0.0f);
      u_xlat10 = x_4409;
      let x_4411 : bool = u_xlatb54.y;
      if (x_4411) {
        let x_4416 : f32 = u_xlat10.w;
        x_4412 = x_4416;
      } else {
        let x_4419 : f32 = u_xlat10.x;
        x_4412 = x_4419;
      }
      let x_4420 : f32 = x_4412;
      u_xlat85 = x_4420;
      let x_4422 : bool = u_xlatb54.x;
      if (x_4422) {
        let x_4426 : vec4<f32> = u_xlat10;
        x_4423 = vec3<f32>(x_4426.x, x_4426.y, x_4426.z);
      } else {
        let x_4429 : f32 = u_xlat85;
        x_4423 = vec3<f32>(x_4429, x_4429, x_4429);
      }
      let x_4431 : vec3<f32> = x_4423;
      let x_4432 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_4431.x, x_4431.y, x_4431.z, x_4432.w);
    } else {
      u_xlat10.x = 1.0f;
      u_xlat10.y = 1.0f;
      u_xlat10.z = 1.0f;
    }
    let x_4438 : vec4<f32> = u_xlat10;
    let x_4440 : i32 = u_xlati80;
    let x_4442 : vec4<f32> = x_2530.x_AdditionalLightsColor[x_4440];
    let x_4444 : vec3<f32> = (vec3<f32>(x_4438.x, x_4438.y, x_4438.z) * vec3<f32>(x_4442.x, x_4442.y, x_4442.z));
    let x_4445 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_4444.x, x_4444.y, x_4444.z, x_4445.w);
    let x_4447 : f32 = u_xlat81;
    let x_4448 : f32 = u_xlat84;
    u_xlat80 = (x_4447 * x_4448);
    let x_4450 : vec3<f32> = u_xlat25;
    let x_4451 : vec4<f32> = u_xlat9;
    u_xlat81 = dot(x_4450, vec3<f32>(x_4451.x, x_4451.y, x_4451.z));
    let x_4454 : f32 = u_xlat81;
    u_xlat81 = clamp(x_4454, 0.0f, 1.0f);
    let x_4456 : f32 = u_xlat80;
    let x_4457 : f32 = u_xlat81;
    u_xlat80 = (x_4456 * x_4457);
    let x_4459 : f32 = u_xlat80;
    let x_4461 : vec4<f32> = u_xlat10;
    let x_4463 : vec3<f32> = (vec3<f32>(x_4459, x_4459, x_4459) * vec3<f32>(x_4461.x, x_4461.y, x_4461.z));
    let x_4464 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_4463.x, x_4463.y, x_4463.z, x_4464.w);
    let x_4466 : vec3<f32> = u_xlat33;
    let x_4467 : f32 = u_xlat82;
    let x_4470 : vec3<f32> = u_xlat5;
    u_xlat33 = ((x_4466 * vec3<f32>(x_4467, x_4467, x_4467)) + x_4470);
    let x_4472 : vec3<f32> = u_xlat33;
    let x_4473 : vec3<f32> = u_xlat33;
    u_xlat80 = dot(x_4472, x_4473);
    let x_4475 : f32 = u_xlat80;
    u_xlat80 = max(x_4475, 1.17549435e-38f);
    let x_4477 : f32 = u_xlat80;
    u_xlat80 = inverseSqrt(x_4477);
    let x_4479 : f32 = u_xlat80;
    let x_4481 : vec3<f32> = u_xlat33;
    u_xlat33 = (vec3<f32>(x_4479, x_4479, x_4479) * x_4481);
    let x_4483 : vec3<f32> = u_xlat25;
    let x_4484 : vec3<f32> = u_xlat33;
    u_xlat80 = dot(x_4483, x_4484);
    let x_4486 : f32 = u_xlat80;
    u_xlat80 = clamp(x_4486, 0.0f, 1.0f);
    let x_4488 : vec4<f32> = u_xlat9;
    let x_4490 : vec3<f32> = u_xlat33;
    u_xlat81 = dot(vec3<f32>(x_4488.x, x_4488.y, x_4488.z), x_4490);
    let x_4492 : f32 = u_xlat81;
    u_xlat81 = clamp(x_4492, 0.0f, 1.0f);
    let x_4494 : f32 = u_xlat80;
    let x_4495 : f32 = u_xlat80;
    u_xlat80 = (x_4494 * x_4495);
    let x_4497 : f32 = u_xlat80;
    let x_4499 : f32 = u_xlat8.x;
    u_xlat80 = ((x_4497 * x_4499) + 1.00001001358032226562f);
    let x_4502 : f32 = u_xlat81;
    let x_4503 : f32 = u_xlat81;
    u_xlat81 = (x_4502 * x_4503);
    let x_4505 : f32 = u_xlat80;
    let x_4506 : f32 = u_xlat80;
    u_xlat80 = (x_4505 * x_4506);
    let x_4508 : f32 = u_xlat81;
    u_xlat81 = max(x_4508, 0.10000000149011611938f);
    let x_4510 : f32 = u_xlat80;
    let x_4511 : f32 = u_xlat81;
    u_xlat80 = (x_4510 * x_4511);
    let x_4514 : f32 = u_xlat4.x;
    let x_4515 : f32 = u_xlat80;
    u_xlat80 = (x_4514 * x_4515);
    let x_4517 : f32 = u_xlat78;
    let x_4518 : f32 = u_xlat80;
    u_xlat80 = (x_4517 / x_4518);
    let x_4520 : vec3<f32> = u_xlat2;
    let x_4521 : f32 = u_xlat80;
    let x_4524 : vec3<f32> = u_xlat3;
    u_xlat33 = ((x_4520 * vec3<f32>(x_4521, x_4521, x_4521)) + x_4524);
    let x_4526 : vec3<f32> = u_xlat33;
    let x_4527 : vec4<f32> = u_xlat10;
    let x_4530 : vec4<f32> = u_xlat7;
    let x_4532 : vec3<f32> = ((x_4526 * vec3<f32>(x_4527.x, x_4527.y, x_4527.z)) + vec3<f32>(x_4530.x, x_4530.y, x_4530.z));
    let x_4533 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_4532.x, x_4532.y, x_4532.z, x_4533.w);

    continuing {
      let x_4535 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4535 + bitcast<u32>(1i));
    }
  }
  let x_4537 : vec4<f32> = u_xlat1;
  let x_4539 : vec3<f32> = u_xlat29;
  let x_4542 : vec4<f32> = u_xlat6;
  let x_4544 : vec3<f32> = ((vec3<f32>(x_4537.x, x_4537.y, x_4537.z) * vec3<f32>(x_4539.x, x_4539.x, x_4539.x)) + vec3<f32>(x_4542.x, x_4542.y, x_4542.z));
  let x_4545 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4544.x, x_4544.y, x_4544.z, x_4545.w);
  let x_4549 : vec4<f32> = u_xlat7;
  let x_4551 : vec4<f32> = u_xlat0;
  let x_4553 : vec3<f32> = (vec3<f32>(x_4549.x, x_4549.y, x_4549.z) + vec3<f32>(x_4551.x, x_4551.y, x_4551.z));
  let x_4554 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4553.x, x_4553.y, x_4553.z, x_4554.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(5) vs_INTERP8_param : vec3<f32>, @location(2) vs_INTERP4_param : vec4<f32>, @location(3) vs_INTERP5_param : vec4<f32>, @location(4) vs_INTERP7_param : vec3<f32>, @location(0) vs_INTERP0_param : vec2<f32>, @location(1) vs_INTERP3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP7 = vs_INTERP7_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP3 = vs_INTERP3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


