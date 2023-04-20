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

var<private> u_xlatb26 : vec2<bool>;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_48 : UnityPerDraw;

var<private> u_xlat26 : vec3<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(6) var x_MainTex : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainTex : sampler;

var<private> vs_INTERP5 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_135 : PGlobals;

var<private> u_xlat79 : f32;

var<private> vs_INTERP7 : vec3<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(9) var Texture2D_D7D66558 : texture_2d<f32>;

@group(0) @binding(18) var samplerTexture2D_D7D66558 : sampler;

@group(1) @binding(5) var<uniform> x_195 : UnityPerMaterial;

var<private> u_xlat81 : f32;

var<private> u_xlat82 : f32;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(7) var Texture2D_DE8BF47E : texture_2d<f32>;

@group(0) @binding(16) var samplerTexture2D_DE8BF47E : sampler;

var<private> u_xlat33 : vec3<f32>;

var<private> u_xlat27 : vec3<f32>;

var<private> u_xlat30 : vec3<f32>;

@group(0) @binding(8) var Texture2D_C005B064 : texture_2d<f32>;

@group(0) @binding(17) var samplerTexture2D_C005B064 : sampler;

@group(0) @binding(5) var x_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1_Texture2D : texture_2d<f32>;

@group(0) @binding(14) var sampler_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1_Texture2D : sampler;

var<private> u_xlat52 : f32;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat28 : f32;

var<private> u_xlat54 : f32;

var<private> u_xlatb82 : bool;

@group(1) @binding(3) var<uniform> x_850 : LightShadows;

var<private> vs_INTERP3 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb83 : bool;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat83 : f32;

var<private> u_xlat32 : f32;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat34 : vec2<f32>;

var<private> u_xlat66 : vec2<f32>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlatb6 : bool;

@group(1) @binding(4) var<uniform> x_2162 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlat84 : f32;

var<private> u_xlat85 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu0 : u32;

var<private> u_xlatu83 : u32;

var<private> u_xlati84 : i32;

var<private> u_xlati83 : i32;

@group(1) @binding(1) var<uniform> x_2654 : AdditionalLights;

var<private> u_xlat59 : f32;

var<private> u_xlati85 : i32;

var<private> u_xlatb86 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat87 : f32;

var<private> u_xlat86 : f32;

var<private> u_xlatb85 : bool;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat88 : f32;

var<private> u_xlat39 : vec3<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat40 : vec2<f32>;

var<private> u_xlat72 : vec2<f32>;

var<private> u_xlat67 : vec2<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlat25 : vec4<f32>;

var<private> u_xlatb87 : bool;

var<private> u_xlati86 : i32;

var<private> u_xlati87 : i32;

var<private> u_xlati88 : i32;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlatb63 : vec2<bool>;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_LinearClamp : sampler;

var<private> u_xlat78 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu82 : u32;

fn main_1() {
  var x_657 : vec3<f32>;
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
  var x_2246 : f32;
  var x_2257 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2790 : f32;
  var x_2800 : f32;
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
  var x_4376 : f32;
  var x_4389 : f32;
  var x_4437 : f32;
  var x_4448 : vec3<f32>;
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
  u_xlatb26.x = (0.0f < x_39);
  let x_53 : f32 = x_48.unity_WorldTransformParams.w;
  u_xlatb26.y = (x_53 >= 0.0f);
  let x_60 : bool = u_xlatb26.x;
  u_xlat26.x = select(-1.0f, 1.0f, x_60);
  let x_65 : bool = u_xlatb26.y;
  u_xlat26.y = select(-1.0f, 1.0f, x_65);
  let x_69 : f32 = u_xlat26.y;
  let x_71 : f32 = u_xlat26.x;
  u_xlat26.x = (x_69 * x_71);
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
  let x_93 : vec3<f32> = u_xlat26;
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
  u_xlat79 = ((x_147 * 4.0f) + x_152);
  let x_154 : f32 = u_xlat79;
  u_xlat79 = (x_154 * 0.33000001311302185059f);
  let x_159 : f32 = vs_INTERP7.y;
  u_xlat80 = (x_159 + 1.0f);
  let x_161 : f32 = u_xlat80;
  u_xlat80 = ((x_161 * -1.33333337306976318359f) + 1.0f);
  let x_165 : f32 = u_xlat79;
  let x_166 : f32 = u_xlat80;
  u_xlat79 = max(x_165, x_166);
  let x_168 : f32 = u_xlat79;
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
  u_xlat80 = ((-(x_198) * 0.01111099962145090103f) + 0.94999998807907104492f);
  let x_207 : f32 = x_195.Vector1_A492C01C;
  u_xlat81 = (x_207 + -10.0f);
  let x_210 : f32 = u_xlat81;
  let x_213 : f32 = vs_INTERP7.y;
  u_xlat81 = (-(x_210) + x_213);
  let x_215 : f32 = u_xlat81;
  u_xlat81 = (x_215 * 0.05000000074505805969f);
  let x_218 : f32 = u_xlat81;
  u_xlat81 = clamp(x_218, 0.0f, 1.0f);
  let x_221 : f32 = u_xlat81;
  u_xlat82 = ((x_221 * -2.0f) + 3.0f);
  let x_226 : f32 = u_xlat81;
  let x_227 : f32 = u_xlat81;
  u_xlat81 = (x_226 * x_227);
  let x_229 : f32 = u_xlat81;
  let x_230 : f32 = u_xlat82;
  u_xlat81 = (x_229 * x_230);
  let x_238 : vec4<f32> = vs_INTERP5;
  let x_241 : f32 = x_135.x_GlobalMipBias.x;
  let x_242 : vec4<f32> = textureSampleBias(Texture2D_DE8BF47E, samplerTexture2D_DE8BF47E, vec2<f32>(x_238.x, x_238.y), x_241);
  u_xlat7 = x_242;
  let x_244 : vec4<f32> = u_xlat7;
  u_xlat33 = ((vec3<f32>(x_244.w, x_244.y, x_244.z) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_251 : vec3<f32> = u_xlat3;
  let x_252 : vec3<f32> = u_xlat33;
  u_xlat3 = (x_251 * vec3<f32>(x_252.y, x_252.y, x_252.y));
  let x_255 : vec3<f32> = u_xlat33;
  let x_257 : vec3<f32> = u_xlat2;
  let x_259 : vec3<f32> = u_xlat3;
  u_xlat2 = ((vec3<f32>(x_255.x, x_255.x, x_255.x) * x_257) + x_259);
  let x_261 : vec3<f32> = u_xlat33;
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
  let x_291 : f32 = u_xlat81;
  let x_293 : f32 = u_xlat1.x;
  let x_295 : f32 = u_xlat80;
  u_xlat1.x = ((x_291 * x_293) + -(x_295));
  let x_300 : f32 = u_xlat1.x;
  u_xlat1.x = (x_300 * 10.0f);
  let x_305 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_305, 0.0f, 1.0f);
  let x_310 : f32 = u_xlat1.x;
  u_xlat27.x = ((x_310 * -2.0f) + 3.0f);
  let x_315 : f32 = u_xlat1.x;
  let x_317 : f32 = u_xlat1.x;
  u_xlat1.x = (x_315 * x_317);
  let x_321 : f32 = u_xlat1.x;
  let x_323 : f32 = u_xlat27.x;
  u_xlat1.x = (x_321 * x_323);
  let x_326 : vec4<f32> = u_xlat1;
  let x_329 : vec2<f32> = min(vec2<f32>(x_326.x, x_326.w), vec2<f32>(1.0f, 1.0f));
  let x_330 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_329.x, x_330.y, x_330.z, x_329.y);
  let x_333 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_333) + 1.0f);
  let x_337 : vec4<f32> = u_xlat4;
  let x_339 : vec4<f32> = u_xlat6;
  u_xlat2 = (vec3<f32>(x_337.x, x_337.y, x_337.z) + -(vec3<f32>(x_339.x, x_339.y, x_339.z)));
  let x_343 : vec4<f32> = u_xlat1;
  let x_345 : vec3<f32> = u_xlat2;
  let x_347 : vec4<f32> = u_xlat6;
  u_xlat2 = ((vec3<f32>(x_343.x, x_343.x, x_343.x) * x_345) + vec3<f32>(x_347.x, x_347.y, x_347.z));
  let x_350 : vec4<f32> = u_xlat1;
  let x_352 : vec3<f32> = u_xlat2;
  u_xlat3 = (vec3<f32>(x_350.w, x_350.w, x_350.w) * x_352);
  let x_360 : vec3<f32> = u_xlat5;
  let x_363 : f32 = x_135.x_GlobalMipBias.x;
  let x_364 : vec4<f32> = textureSampleBias(Texture2D_C005B064, samplerTexture2D_C005B064, vec2<f32>(x_360.x, x_360.y), x_363);
  u_xlat30 = vec3<f32>(x_364.x, x_364.y, x_364.w);
  let x_367 : f32 = u_xlat30.x;
  let x_369 : f32 = u_xlat30.z;
  u_xlat30.x = (x_367 * x_369);
  let x_372 : vec3<f32> = u_xlat30;
  let x_377 : vec2<f32> = ((vec2<f32>(x_372.x, x_372.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_378 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_377.x, x_377.y, x_378.z);
  let x_380 : vec3<f32> = u_xlat5;
  let x_382 : vec3<f32> = u_xlat5;
  u_xlat27.x = dot(vec2<f32>(x_380.x, x_380.y), vec2<f32>(x_382.x, x_382.y));
  let x_387 : f32 = u_xlat27.x;
  u_xlat27.x = min(x_387, 1.0f);
  let x_391 : f32 = u_xlat27.x;
  u_xlat27.x = (-(x_391) + 1.0f);
  let x_396 : f32 = u_xlat27.x;
  u_xlat27.x = sqrt(x_396);
  let x_400 : f32 = u_xlat27.x;
  u_xlat5.z = max(x_400, 0.0000000000000001f);
  let x_406 : vec4<f32> = x_48.unity_ObjectToWorld[0i];
  let x_409 : vec4<f32> = x_48.unity_ObjectToWorld[0i];
  u_xlat27.x = dot(vec3<f32>(x_406.x, x_406.y, x_406.z), vec3<f32>(x_409.x, x_409.y, x_409.z));
  let x_414 : f32 = u_xlat27.x;
  u_xlat6.x = sqrt(x_414);
  let x_419 : vec4<f32> = x_48.unity_ObjectToWorld[1i];
  let x_422 : vec4<f32> = x_48.unity_ObjectToWorld[1i];
  u_xlat27.x = dot(vec3<f32>(x_419.x, x_419.y, x_419.z), vec3<f32>(x_422.x, x_422.y, x_422.z));
  let x_427 : f32 = u_xlat27.x;
  u_xlat6.y = sqrt(x_427);
  let x_432 : vec4<f32> = x_48.unity_ObjectToWorld[2i];
  let x_435 : vec4<f32> = x_48.unity_ObjectToWorld[2i];
  u_xlat27.x = dot(vec3<f32>(x_432.x, x_432.y, x_432.z), vec3<f32>(x_435.x, x_435.y, x_435.z));
  let x_440 : f32 = u_xlat27.x;
  u_xlat6.z = sqrt(x_440);
  let x_443 : vec4<f32> = u_xlat6;
  let x_445 : vec4<f32> = u_xlat6;
  u_xlat27.x = dot(vec3<f32>(x_443.x, x_443.y, x_443.z), vec3<f32>(x_445.x, x_445.y, x_445.z));
  let x_450 : f32 = u_xlat27.x;
  u_xlat27.x = sqrt(x_450);
  let x_454 : f32 = u_xlat27.x;
  let x_457 : f32 = x_195.Vector1_90E376AD;
  u_xlat27.x = (x_454 * x_457);
  let x_461 : f32 = u_xlat27.x;
  u_xlat27.x = (x_461 * 30.0f);
  let x_465 : vec3<f32> = u_xlat27;
  let x_467 : vec4<f32> = vs_INTERP5;
  let x_469 : vec2<f32> = (vec2<f32>(x_465.x, x_465.x) * vec2<f32>(x_467.x, x_467.y));
  let x_470 : vec3<f32> = u_xlat27;
  u_xlat27 = vec3<f32>(x_469.x, x_469.y, x_470.z);
  let x_477 : vec3<f32> = u_xlat27;
  let x_480 : f32 = x_135.x_GlobalMipBias.x;
  let x_481 : vec4<f32> = textureSampleBias(x_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1_Texture2D, sampler_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1_Texture2D, vec2<f32>(x_477.x, x_477.y), x_480);
  u_xlat30 = vec3<f32>(x_481.x, x_481.y, x_481.w);
  let x_484 : f32 = u_xlat30.x;
  let x_486 : f32 = u_xlat30.z;
  u_xlat30.x = (x_484 * x_486);
  let x_489 : vec3<f32> = u_xlat30;
  let x_492 : vec2<f32> = ((vec2<f32>(x_489.x, x_489.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_493 : vec3<f32> = u_xlat27;
  u_xlat27 = vec3<f32>(x_492.x, x_492.y, x_493.z);
  let x_495 : vec3<f32> = u_xlat27;
  let x_497 : vec3<f32> = u_xlat27;
  u_xlat80 = dot(vec2<f32>(x_495.x, x_495.y), vec2<f32>(x_497.x, x_497.y));
  let x_500 : f32 = u_xlat80;
  u_xlat80 = min(x_500, 1.0f);
  let x_502 : f32 = u_xlat80;
  u_xlat80 = (-(x_502) + 1.0f);
  let x_505 : f32 = u_xlat80;
  u_xlat80 = sqrt(x_505);
  let x_507 : f32 = u_xlat80;
  u_xlat80 = max(x_507, 0.0000000000000001f);
  let x_509 : vec3<f32> = u_xlat27;
  let x_511 : vec3<f32> = u_xlat33;
  let x_513 : vec2<f32> = (vec2<f32>(x_509.x, x_509.y) + vec2<f32>(x_511.x, x_511.y));
  let x_514 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_513.x, x_513.y, x_514.z, x_514.w);
  let x_516 : f32 = u_xlat80;
  let x_518 : f32 = u_xlat33.z;
  u_xlat6.z = (x_516 * x_518);
  let x_521 : vec4<f32> = u_xlat6;
  let x_523 : vec4<f32> = u_xlat6;
  u_xlat27.x = dot(vec3<f32>(x_521.x, x_521.y, x_521.z), vec3<f32>(x_523.x, x_523.y, x_523.z));
  let x_528 : f32 = u_xlat27.x;
  u_xlat27.x = max(x_528, 0.00006103515625f);
  let x_533 : f32 = u_xlat27.x;
  u_xlat27.x = inverseSqrt(x_533);
  let x_536 : vec4<f32> = u_xlat6;
  let x_538 : vec3<f32> = u_xlat27;
  let x_541 : vec3<f32> = u_xlat5;
  u_xlat30 = ((vec3<f32>(x_536.x, x_536.y, x_536.z) * vec3<f32>(x_538.x, x_538.x, x_538.x)) + -(x_541));
  let x_544 : vec4<f32> = u_xlat1;
  let x_546 : vec3<f32> = u_xlat30;
  let x_548 : vec3<f32> = u_xlat5;
  let x_549 : vec3<f32> = ((vec3<f32>(x_544.x, x_544.x, x_544.x) * x_546) + x_548);
  let x_550 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_550.x, x_549.x, x_549.y, x_549.z);
  let x_553 : f32 = u_xlat0.x;
  u_xlat0.x = (-(abs(x_553)) + 1.0f);
  let x_558 : vec4<f32> = u_xlat0;
  let x_559 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_558 * vec4<f32>(x_559.x, x_559.z, x_559.z, x_559.z));
  let x_563 : f32 = u_xlat0.x;
  let x_565 : f32 = x_195.Vector1_6E11FCEA;
  u_xlat0.x = (x_563 * x_565);
  let x_569 : f32 = u_xlat1.x;
  let x_571 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_569 * x_571) + -0.85000002384185791016f);
  let x_577 : f32 = u_xlat1.w;
  let x_579 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_577 * x_579) + 0.85000002384185791016f);
  let x_585 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_585, 0.0f, 1.0f);
  let x_588 : vec4<f32> = u_xlat4;
  let x_590 : vec4<f32> = vs_INTERP4;
  let x_593 : vec4<f32> = u_xlat0;
  u_xlat26 = ((vec3<f32>(x_588.y, x_588.y, x_588.y) * vec3<f32>(x_590.x, x_590.y, x_590.z)) + vec3<f32>(x_593.y, x_593.z, x_593.w));
  let x_596 : vec4<f32> = u_xlat4;
  let x_598 : vec3<f32> = vs_INTERP8;
  let x_600 : vec3<f32> = u_xlat26;
  u_xlat26 = ((vec3<f32>(x_596.w, x_596.w, x_596.w) * x_598) + x_600);
  let x_602 : vec3<f32> = u_xlat26;
  let x_603 : vec3<f32> = u_xlat26;
  u_xlat1.x = dot(x_602, x_603);
  let x_607 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_607);
  let x_610 : vec3<f32> = u_xlat26;
  let x_611 : vec4<f32> = u_xlat1;
  let x_613 : vec3<f32> = (x_610 * vec3<f32>(x_611.x, x_611.x, x_611.x));
  let x_614 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_613.x, x_613.y, x_613.z, x_614.w);
  let x_618 : f32 = x_135.unity_OrthoParams.w;
  u_xlatb26.x = (x_618 == 0.0f);
  let x_621 : vec3<f32> = vs_INTERP7;
  let x_625 : vec3<f32> = x_135.x_WorldSpaceCameraPos;
  let x_626 : vec3<f32> = (-(x_621) + x_625);
  let x_627 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_626.x, x_626.y, x_626.z, x_627.w);
  let x_630 : vec4<f32> = u_xlat1;
  let x_632 : vec4<f32> = u_xlat1;
  u_xlat52 = dot(vec3<f32>(x_630.x, x_630.y, x_630.z), vec3<f32>(x_632.x, x_632.y, x_632.z));
  let x_635 : f32 = u_xlat52;
  u_xlat52 = inverseSqrt(x_635);
  let x_637 : f32 = u_xlat52;
  let x_639 : vec4<f32> = u_xlat1;
  let x_641 : vec3<f32> = (vec3<f32>(x_637, x_637, x_637) * vec3<f32>(x_639.x, x_639.y, x_639.z));
  let x_642 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_641.x, x_641.y, x_641.z, x_642.w);
  let x_646 : f32 = x_135.unity_MatrixV[0i].z;
  u_xlat5.x = x_646;
  let x_649 : f32 = x_135.unity_MatrixV[1i].z;
  u_xlat5.y = x_649;
  let x_652 : f32 = x_135.unity_MatrixV[2i].z;
  u_xlat5.z = x_652;
  let x_655 : bool = u_xlatb26.x;
  if (x_655) {
    let x_660 : vec4<f32> = u_xlat1;
    x_657 = vec3<f32>(x_660.x, x_660.y, x_660.z);
  } else {
    let x_663 : vec3<f32> = u_xlat5;
    x_657 = x_663;
  }
  let x_664 : vec3<f32> = x_657;
  u_xlat26 = x_664;
  let x_666 : f32 = vs_INTERP7.y;
  let x_668 : f32 = x_135.unity_MatrixV[1i].z;
  u_xlat1.x = (x_666 * x_668);
  let x_672 : f32 = x_135.unity_MatrixV[0i].z;
  let x_674 : f32 = vs_INTERP7.x;
  let x_677 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_672 * x_674) + x_677);
  let x_681 : f32 = x_135.unity_MatrixV[2i].z;
  let x_683 : f32 = vs_INTERP7.z;
  let x_686 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_681 * x_683) + x_686);
  let x_690 : f32 = u_xlat1.x;
  let x_692 : f32 = x_135.unity_MatrixV[3i].z;
  u_xlat1.x = (x_690 + x_692);
  let x_696 : f32 = u_xlat1.x;
  let x_699 : f32 = x_135.x_ProjectionParams.y;
  u_xlat1.x = (-(x_696) + -(x_699));
  let x_704 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_704, 0.0f);
  let x_708 : f32 = u_xlat1.x;
  let x_711 : f32 = x_135.unity_FogParams.x;
  u_xlat1.x = (x_708 * x_711);
  u_xlat4.w = 1.0f;
  let x_717 : vec4<f32> = x_48.unity_SHAr;
  let x_718 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_717, x_718);
  let x_723 : vec4<f32> = x_48.unity_SHAg;
  let x_724 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_723, x_724);
  let x_729 : vec4<f32> = x_48.unity_SHAb;
  let x_730 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_729, x_730);
  let x_733 : vec4<f32> = u_xlat4;
  let x_735 : vec4<f32> = u_xlat4;
  u_xlat6 = (vec4<f32>(x_733.y, x_733.z, x_733.z, x_733.x) * vec4<f32>(x_735.x, x_735.y, x_735.z, x_735.z));
  let x_741 : vec4<f32> = x_48.unity_SHBr;
  let x_742 : vec4<f32> = u_xlat6;
  u_xlat8.x = dot(x_741, x_742);
  let x_747 : vec4<f32> = x_48.unity_SHBg;
  let x_748 : vec4<f32> = u_xlat6;
  u_xlat8.y = dot(x_747, x_748);
  let x_753 : vec4<f32> = x_48.unity_SHBb;
  let x_754 : vec4<f32> = u_xlat6;
  u_xlat8.z = dot(x_753, x_754);
  let x_758 : f32 = u_xlat4.y;
  let x_760 : f32 = u_xlat4.y;
  u_xlat27.x = (x_758 * x_760);
  let x_764 : f32 = u_xlat4.x;
  let x_766 : f32 = u_xlat4.x;
  let x_769 : f32 = u_xlat27.x;
  u_xlat27.x = ((x_764 * x_766) + -(x_769));
  let x_775 : vec4<f32> = x_48.unity_SHC;
  let x_777 : vec3<f32> = u_xlat27;
  let x_780 : vec4<f32> = u_xlat8;
  let x_782 : vec3<f32> = ((vec3<f32>(x_775.x, x_775.y, x_775.z) * vec3<f32>(x_777.x, x_777.x, x_777.x)) + vec3<f32>(x_780.x, x_780.y, x_780.z));
  let x_783 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_782.x, x_782.y, x_782.z, x_783.w);
  let x_785 : vec3<f32> = u_xlat5;
  let x_786 : vec4<f32> = u_xlat6;
  u_xlat5 = (x_785 + vec3<f32>(x_786.x, x_786.y, x_786.z));
  let x_789 : vec3<f32> = u_xlat5;
  u_xlat5 = max(x_789, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_792 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_792 * vec3<f32>(0.86399996280670166016f, 0.86399996280670166016f, 0.86399996280670166016f));
  let x_796 : vec4<f32> = u_xlat1;
  let x_798 : vec3<f32> = u_xlat2;
  u_xlat27 = ((vec3<f32>(x_796.w, x_796.w, x_796.w) * x_798) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_803 : vec3<f32> = u_xlat27;
  u_xlat27 = ((x_803 * vec3<f32>(0.10000000149011611938f, 0.10000000149011611938f, 0.10000000149011611938f)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_810 : f32 = u_xlat0.x;
  u_xlat2.x = (-(x_810) + 1.0f);
  let x_816 : f32 = u_xlat2.x;
  let x_818 : f32 = u_xlat2.x;
  u_xlat28 = (x_816 * x_818);
  let x_820 : f32 = u_xlat28;
  u_xlat28 = max(x_820, 0.0078125f);
  let x_824 : f32 = u_xlat28;
  let x_825 : f32 = u_xlat28;
  u_xlat54 = (x_824 * x_825);
  let x_828 : f32 = u_xlat0.x;
  u_xlat0.x = (x_828 + 0.13600003719329833984f);
  let x_833 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_833, 1.0f);
  let x_836 : f32 = u_xlat28;
  u_xlat80 = ((x_836 * 4.0f) + 2.0f);
  let x_840 : f32 = u_xlat7.x;
  u_xlat81 = min(x_840, 1.0f);
  let x_852 : f32 = x_850.x_MainLightShadowParams.y;
  u_xlatb82 = (0.0f < x_852);
  let x_854 : bool = u_xlatb82;
  if (x_854) {
    let x_858 : f32 = x_850.x_MainLightShadowParams.y;
    u_xlatb82 = (x_858 == 1.0f);
    let x_860 : bool = u_xlatb82;
    if (x_860) {
      let x_864 : vec4<f32> = vs_INTERP3;
      let x_867 : vec4<f32> = x_850.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_864.x, x_864.y, x_864.x, x_864.y) + x_867);
      let x_870 : vec4<f32> = u_xlat6;
      let x_871 : vec2<f32> = vec2<f32>(x_870.x, x_870.y);
      let x_873 : f32 = vs_INTERP3.z;
      txVec0 = vec3<f32>(x_871.x, x_871.y, x_873);
      let x_885 : vec3<f32> = txVec0;
      let x_887 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_885.xy, x_885.z);
      u_xlat7.x = x_887;
      let x_890 : vec4<f32> = u_xlat6;
      let x_891 : vec2<f32> = vec2<f32>(x_890.z, x_890.w);
      let x_893 : f32 = vs_INTERP3.z;
      txVec1 = vec3<f32>(x_891.x, x_891.y, x_893);
      let x_900 : vec3<f32> = txVec1;
      let x_902 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_900.xy, x_900.z);
      u_xlat7.y = x_902;
      let x_904 : vec4<f32> = vs_INTERP3;
      let x_907 : vec4<f32> = x_850.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_904.x, x_904.y, x_904.x, x_904.y) + x_907);
      let x_910 : vec4<f32> = u_xlat6;
      let x_911 : vec2<f32> = vec2<f32>(x_910.x, x_910.y);
      let x_913 : f32 = vs_INTERP3.z;
      txVec2 = vec3<f32>(x_911.x, x_911.y, x_913);
      let x_920 : vec3<f32> = txVec2;
      let x_922 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_920.xy, x_920.z);
      u_xlat7.z = x_922;
      let x_925 : vec4<f32> = u_xlat6;
      let x_926 : vec2<f32> = vec2<f32>(x_925.z, x_925.w);
      let x_928 : f32 = vs_INTERP3.z;
      txVec3 = vec3<f32>(x_926.x, x_926.y, x_928);
      let x_935 : vec3<f32> = txVec3;
      let x_937 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_935.xy, x_935.z);
      u_xlat7.w = x_937;
      let x_939 : vec4<f32> = u_xlat7;
      u_xlat82 = dot(x_939, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_946 : f32 = x_850.x_MainLightShadowParams.y;
      u_xlatb83 = (x_946 == 2.0f);
      let x_948 : bool = u_xlatb83;
      if (x_948) {
        let x_951 : vec4<f32> = vs_INTERP3;
        let x_954 : vec4<f32> = x_850.x_MainLightShadowmapSize;
        let x_959 : vec2<f32> = ((vec2<f32>(x_951.x, x_951.y) * vec2<f32>(x_954.z, x_954.w)) + vec2<f32>(0.5f, 0.5f));
        let x_960 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_959.x, x_959.y, x_960.z, x_960.w);
        let x_962 : vec4<f32> = u_xlat6;
        let x_964 : vec2<f32> = floor(vec2<f32>(x_962.x, x_962.y));
        let x_965 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_964.x, x_964.y, x_965.z, x_965.w);
        let x_969 : vec4<f32> = vs_INTERP3;
        let x_972 : vec4<f32> = x_850.x_MainLightShadowmapSize;
        let x_975 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_969.x, x_969.y) * vec2<f32>(x_972.z, x_972.w)) + -(vec2<f32>(x_975.x, x_975.y)));
        let x_979 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_979.x, x_979.x, x_979.y, x_979.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_983 : vec4<f32> = u_xlat7;
        let x_985 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_983.x, x_983.x, x_983.z, x_983.z) * vec4<f32>(x_985.x, x_985.x, x_985.z, x_985.z));
        let x_988 : vec4<f32> = u_xlat8;
        let x_992 : vec2<f32> = (vec2<f32>(x_988.y, x_988.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_993 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_992.x, x_993.y, x_992.y, x_993.w);
        let x_995 : vec4<f32> = u_xlat8;
        let x_998 : vec2<f32> = u_xlat58;
        let x_1000 : vec2<f32> = ((vec2<f32>(x_995.x, x_995.z) * vec2<f32>(0.5f, 0.5f)) + -(x_998));
        let x_1001 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1000.x, x_1000.y, x_1001.z, x_1001.w);
        let x_1004 : vec2<f32> = u_xlat58;
        u_xlat60 = (-(x_1004) + vec2<f32>(1.0f, 1.0f));
        let x_1008 : vec2<f32> = u_xlat58;
        let x_1010 : vec2<f32> = min(x_1008, vec2<f32>(0.0f, 0.0f));
        let x_1011 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1010.x, x_1010.y, x_1011.z, x_1011.w);
        let x_1013 : vec4<f32> = u_xlat9;
        let x_1016 : vec4<f32> = u_xlat9;
        let x_1019 : vec2<f32> = u_xlat60;
        let x_1020 : vec2<f32> = ((-(vec2<f32>(x_1013.x, x_1013.y)) * vec2<f32>(x_1016.x, x_1016.y)) + x_1019);
        let x_1021 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1020.x, x_1020.y, x_1021.z, x_1021.w);
        let x_1023 : vec2<f32> = u_xlat58;
        u_xlat58 = max(x_1023, vec2<f32>(0.0f, 0.0f));
        let x_1025 : vec2<f32> = u_xlat58;
        let x_1027 : vec2<f32> = u_xlat58;
        let x_1029 : vec4<f32> = u_xlat7;
        u_xlat58 = ((-(x_1025) * x_1027) + vec2<f32>(x_1029.y, x_1029.w));
        let x_1032 : vec4<f32> = u_xlat9;
        let x_1034 : vec2<f32> = (vec2<f32>(x_1032.x, x_1032.y) + vec2<f32>(1.0f, 1.0f));
        let x_1035 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1034.x, x_1034.y, x_1035.z, x_1035.w);
        let x_1037 : vec2<f32> = u_xlat58;
        u_xlat58 = (x_1037 + vec2<f32>(1.0f, 1.0f));
        let x_1040 : vec4<f32> = u_xlat8;
        let x_1044 : vec2<f32> = (vec2<f32>(x_1040.x, x_1040.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1045 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1044.x, x_1044.y, x_1045.z, x_1045.w);
        let x_1047 : vec2<f32> = u_xlat60;
        let x_1048 : vec2<f32> = (x_1047 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1049 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1048.x, x_1048.y, x_1049.z, x_1049.w);
        let x_1051 : vec4<f32> = u_xlat9;
        let x_1053 : vec2<f32> = (vec2<f32>(x_1051.x, x_1051.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1054 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1053.x, x_1053.y, x_1054.z, x_1054.w);
        let x_1057 : vec2<f32> = u_xlat58;
        let x_1058 : vec2<f32> = (x_1057 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1059 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1058.x, x_1058.y, x_1059.z, x_1059.w);
        let x_1061 : vec4<f32> = u_xlat7;
        u_xlat58 = (vec2<f32>(x_1061.y, x_1061.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1065 : f32 = u_xlat9.x;
        u_xlat10.z = x_1065;
        let x_1068 : f32 = u_xlat58.x;
        u_xlat10.w = x_1068;
        let x_1071 : f32 = u_xlat11.x;
        u_xlat8.z = x_1071;
        let x_1074 : f32 = u_xlat7.x;
        u_xlat8.w = x_1074;
        let x_1077 : vec4<f32> = u_xlat8;
        let x_1079 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_1077.z, x_1077.w, x_1077.x, x_1077.z) + vec4<f32>(x_1079.z, x_1079.w, x_1079.x, x_1079.z));
        let x_1083 : f32 = u_xlat10.y;
        u_xlat9.z = x_1083;
        let x_1086 : f32 = u_xlat58.y;
        u_xlat9.w = x_1086;
        let x_1089 : f32 = u_xlat8.y;
        u_xlat11.z = x_1089;
        let x_1092 : f32 = u_xlat7.z;
        u_xlat11.w = x_1092;
        let x_1094 : vec4<f32> = u_xlat9;
        let x_1096 : vec4<f32> = u_xlat11;
        let x_1098 : vec3<f32> = (vec3<f32>(x_1094.z, x_1094.y, x_1094.w) + vec3<f32>(x_1096.z, x_1096.y, x_1096.w));
        let x_1099 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1098.x, x_1098.y, x_1098.z, x_1099.w);
        let x_1101 : vec4<f32> = u_xlat8;
        let x_1103 : vec4<f32> = u_xlat12;
        let x_1105 : vec3<f32> = (vec3<f32>(x_1101.x, x_1101.z, x_1101.w) / vec3<f32>(x_1103.z, x_1103.w, x_1103.y));
        let x_1106 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1105.x, x_1105.y, x_1105.z, x_1106.w);
        let x_1108 : vec4<f32> = u_xlat8;
        let x_1113 : vec3<f32> = (vec3<f32>(x_1108.x, x_1108.y, x_1108.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1114 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1113.x, x_1113.y, x_1113.z, x_1114.w);
        let x_1116 : vec4<f32> = u_xlat11;
        let x_1118 : vec4<f32> = u_xlat7;
        let x_1120 : vec3<f32> = (vec3<f32>(x_1116.z, x_1116.y, x_1116.w) / vec3<f32>(x_1118.x, x_1118.y, x_1118.z));
        let x_1121 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1120.x, x_1120.y, x_1120.z, x_1121.w);
        let x_1123 : vec4<f32> = u_xlat9;
        let x_1125 : vec3<f32> = (vec3<f32>(x_1123.x, x_1123.y, x_1123.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1126 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1125.x, x_1125.y, x_1125.z, x_1126.w);
        let x_1128 : vec4<f32> = u_xlat8;
        let x_1131 : vec4<f32> = x_850.x_MainLightShadowmapSize;
        let x_1133 : vec3<f32> = (vec3<f32>(x_1128.y, x_1128.x, x_1128.z) * vec3<f32>(x_1131.x, x_1131.x, x_1131.x));
        let x_1134 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1133.x, x_1133.y, x_1133.z, x_1134.w);
        let x_1136 : vec4<f32> = u_xlat9;
        let x_1139 : vec4<f32> = x_850.x_MainLightShadowmapSize;
        let x_1141 : vec3<f32> = (vec3<f32>(x_1136.x, x_1136.y, x_1136.z) * vec3<f32>(x_1139.y, x_1139.y, x_1139.y));
        let x_1142 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1141.x, x_1141.y, x_1141.z, x_1142.w);
        let x_1145 : f32 = u_xlat9.x;
        u_xlat8.w = x_1145;
        let x_1147 : vec4<f32> = u_xlat6;
        let x_1150 : vec4<f32> = x_850.x_MainLightShadowmapSize;
        let x_1153 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1147.x, x_1147.y, x_1147.x, x_1147.y) * vec4<f32>(x_1150.x, x_1150.y, x_1150.x, x_1150.y)) + vec4<f32>(x_1153.y, x_1153.w, x_1153.x, x_1153.w));
        let x_1156 : vec4<f32> = u_xlat6;
        let x_1159 : vec4<f32> = x_850.x_MainLightShadowmapSize;
        let x_1162 : vec4<f32> = u_xlat8;
        u_xlat58 = ((vec2<f32>(x_1156.x, x_1156.y) * vec2<f32>(x_1159.x, x_1159.y)) + vec2<f32>(x_1162.z, x_1162.w));
        let x_1166 : f32 = u_xlat8.y;
        u_xlat9.w = x_1166;
        let x_1168 : vec4<f32> = u_xlat9;
        let x_1169 : vec2<f32> = vec2<f32>(x_1168.y, x_1168.z);
        let x_1170 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1170.x, x_1169.x, x_1170.z, x_1169.y);
        let x_1172 : vec4<f32> = u_xlat6;
        let x_1175 : vec4<f32> = x_850.x_MainLightShadowmapSize;
        let x_1178 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1172.x, x_1172.y, x_1172.x, x_1172.y) * vec4<f32>(x_1175.x, x_1175.y, x_1175.x, x_1175.y)) + vec4<f32>(x_1178.x, x_1178.y, x_1178.z, x_1178.y));
        let x_1181 : vec4<f32> = u_xlat6;
        let x_1184 : vec4<f32> = x_850.x_MainLightShadowmapSize;
        let x_1187 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1181.x, x_1181.y, x_1181.x, x_1181.y) * vec4<f32>(x_1184.x, x_1184.y, x_1184.x, x_1184.y)) + vec4<f32>(x_1187.w, x_1187.y, x_1187.w, x_1187.z));
        let x_1190 : vec4<f32> = u_xlat6;
        let x_1193 : vec4<f32> = x_850.x_MainLightShadowmapSize;
        let x_1196 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1190.x, x_1190.y, x_1190.x, x_1190.y) * vec4<f32>(x_1193.x, x_1193.y, x_1193.x, x_1193.y)) + vec4<f32>(x_1196.x, x_1196.w, x_1196.z, x_1196.w));
        let x_1200 : vec4<f32> = u_xlat7;
        let x_1202 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_1200.x, x_1200.x, x_1200.x, x_1200.y) * vec4<f32>(x_1202.z, x_1202.w, x_1202.y, x_1202.z));
        let x_1206 : vec4<f32> = u_xlat7;
        let x_1208 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_1206.y, x_1206.y, x_1206.z, x_1206.z) * x_1208);
        let x_1212 : f32 = u_xlat7.z;
        let x_1214 : f32 = u_xlat12.y;
        u_xlat83 = (x_1212 * x_1214);
        let x_1217 : vec4<f32> = u_xlat10;
        let x_1218 : vec2<f32> = vec2<f32>(x_1217.x, x_1217.y);
        let x_1220 : f32 = vs_INTERP3.z;
        txVec4 = vec3<f32>(x_1218.x, x_1218.y, x_1220);
        let x_1227 : vec3<f32> = txVec4;
        let x_1229 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1227.xy, x_1227.z);
        u_xlat6.x = x_1229;
        let x_1232 : vec4<f32> = u_xlat10;
        let x_1233 : vec2<f32> = vec2<f32>(x_1232.z, x_1232.w);
        let x_1235 : f32 = vs_INTERP3.z;
        txVec5 = vec3<f32>(x_1233.x, x_1233.y, x_1235);
        let x_1243 : vec3<f32> = txVec5;
        let x_1245 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1243.xy, x_1243.z);
        u_xlat32 = x_1245;
        let x_1246 : f32 = u_xlat32;
        let x_1248 : f32 = u_xlat13.y;
        u_xlat32 = (x_1246 * x_1248);
        let x_1251 : f32 = u_xlat13.x;
        let x_1253 : f32 = u_xlat6.x;
        let x_1255 : f32 = u_xlat32;
        u_xlat6.x = ((x_1251 * x_1253) + x_1255);
        let x_1259 : vec2<f32> = u_xlat58;
        let x_1261 : f32 = vs_INTERP3.z;
        txVec6 = vec3<f32>(x_1259.x, x_1259.y, x_1261);
        let x_1268 : vec3<f32> = txVec6;
        let x_1270 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1268.xy, x_1268.z);
        u_xlat32 = x_1270;
        let x_1272 : f32 = u_xlat13.z;
        let x_1273 : f32 = u_xlat32;
        let x_1276 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1272 * x_1273) + x_1276);
        let x_1280 : vec4<f32> = u_xlat9;
        let x_1281 : vec2<f32> = vec2<f32>(x_1280.x, x_1280.y);
        let x_1283 : f32 = vs_INTERP3.z;
        txVec7 = vec3<f32>(x_1281.x, x_1281.y, x_1283);
        let x_1290 : vec3<f32> = txVec7;
        let x_1292 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1290.xy, x_1290.z);
        u_xlat32 = x_1292;
        let x_1294 : f32 = u_xlat13.w;
        let x_1295 : f32 = u_xlat32;
        let x_1298 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1294 * x_1295) + x_1298);
        let x_1302 : vec4<f32> = u_xlat11;
        let x_1303 : vec2<f32> = vec2<f32>(x_1302.x, x_1302.y);
        let x_1305 : f32 = vs_INTERP3.z;
        txVec8 = vec3<f32>(x_1303.x, x_1303.y, x_1305);
        let x_1312 : vec3<f32> = txVec8;
        let x_1314 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1312.xy, x_1312.z);
        u_xlat32 = x_1314;
        let x_1316 : f32 = u_xlat14.x;
        let x_1317 : f32 = u_xlat32;
        let x_1320 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1316 * x_1317) + x_1320);
        let x_1324 : vec4<f32> = u_xlat11;
        let x_1325 : vec2<f32> = vec2<f32>(x_1324.z, x_1324.w);
        let x_1327 : f32 = vs_INTERP3.z;
        txVec9 = vec3<f32>(x_1325.x, x_1325.y, x_1327);
        let x_1334 : vec3<f32> = txVec9;
        let x_1336 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1334.xy, x_1334.z);
        u_xlat32 = x_1336;
        let x_1338 : f32 = u_xlat14.y;
        let x_1339 : f32 = u_xlat32;
        let x_1342 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1338 * x_1339) + x_1342);
        let x_1346 : vec4<f32> = u_xlat9;
        let x_1347 : vec2<f32> = vec2<f32>(x_1346.z, x_1346.w);
        let x_1349 : f32 = vs_INTERP3.z;
        txVec10 = vec3<f32>(x_1347.x, x_1347.y, x_1349);
        let x_1356 : vec3<f32> = txVec10;
        let x_1358 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1356.xy, x_1356.z);
        u_xlat32 = x_1358;
        let x_1360 : f32 = u_xlat14.z;
        let x_1361 : f32 = u_xlat32;
        let x_1364 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1360 * x_1361) + x_1364);
        let x_1368 : vec4<f32> = u_xlat8;
        let x_1369 : vec2<f32> = vec2<f32>(x_1368.x, x_1368.y);
        let x_1371 : f32 = vs_INTERP3.z;
        txVec11 = vec3<f32>(x_1369.x, x_1369.y, x_1371);
        let x_1378 : vec3<f32> = txVec11;
        let x_1380 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1378.xy, x_1378.z);
        u_xlat32 = x_1380;
        let x_1382 : f32 = u_xlat14.w;
        let x_1383 : f32 = u_xlat32;
        let x_1386 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1382 * x_1383) + x_1386);
        let x_1390 : vec4<f32> = u_xlat8;
        let x_1391 : vec2<f32> = vec2<f32>(x_1390.z, x_1390.w);
        let x_1393 : f32 = vs_INTERP3.z;
        txVec12 = vec3<f32>(x_1391.x, x_1391.y, x_1393);
        let x_1400 : vec3<f32> = txVec12;
        let x_1402 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1400.xy, x_1400.z);
        u_xlat32 = x_1402;
        let x_1403 : f32 = u_xlat83;
        let x_1404 : f32 = u_xlat32;
        let x_1407 : f32 = u_xlat6.x;
        u_xlat82 = ((x_1403 * x_1404) + x_1407);
      } else {
        let x_1410 : vec4<f32> = vs_INTERP3;
        let x_1413 : vec4<f32> = x_850.x_MainLightShadowmapSize;
        let x_1416 : vec2<f32> = ((vec2<f32>(x_1410.x, x_1410.y) * vec2<f32>(x_1413.z, x_1413.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1417 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1416.x, x_1416.y, x_1417.z, x_1417.w);
        let x_1419 : vec4<f32> = u_xlat6;
        let x_1421 : vec2<f32> = floor(vec2<f32>(x_1419.x, x_1419.y));
        let x_1422 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1421.x, x_1421.y, x_1422.z, x_1422.w);
        let x_1424 : vec4<f32> = vs_INTERP3;
        let x_1427 : vec4<f32> = x_850.x_MainLightShadowmapSize;
        let x_1430 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1424.x, x_1424.y) * vec2<f32>(x_1427.z, x_1427.w)) + -(vec2<f32>(x_1430.x, x_1430.y)));
        let x_1434 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_1434.x, x_1434.x, x_1434.y, x_1434.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1437 : vec4<f32> = u_xlat7;
        let x_1439 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1437.x, x_1437.x, x_1437.z, x_1437.z) * vec4<f32>(x_1439.x, x_1439.x, x_1439.z, x_1439.z));
        let x_1442 : vec4<f32> = u_xlat8;
        let x_1446 : vec2<f32> = (vec2<f32>(x_1442.y, x_1442.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1447 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1447.x, x_1446.x, x_1447.z, x_1446.y);
        let x_1449 : vec4<f32> = u_xlat8;
        let x_1452 : vec2<f32> = u_xlat58;
        let x_1454 : vec2<f32> = ((vec2<f32>(x_1449.x, x_1449.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1452));
        let x_1455 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1454.x, x_1455.y, x_1454.y, x_1455.w);
        let x_1457 : vec2<f32> = u_xlat58;
        let x_1459 : vec2<f32> = (-(x_1457) + vec2<f32>(1.0f, 1.0f));
        let x_1460 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1459.x, x_1459.y, x_1460.z, x_1460.w);
        let x_1462 : vec2<f32> = u_xlat58;
        u_xlat60 = min(x_1462, vec2<f32>(0.0f, 0.0f));
        let x_1464 : vec2<f32> = u_xlat60;
        let x_1466 : vec2<f32> = u_xlat60;
        let x_1468 : vec4<f32> = u_xlat8;
        let x_1470 : vec2<f32> = ((-(x_1464) * x_1466) + vec2<f32>(x_1468.x, x_1468.y));
        let x_1471 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1470.x, x_1470.y, x_1471.z, x_1471.w);
        let x_1473 : vec2<f32> = u_xlat58;
        u_xlat60 = max(x_1473, vec2<f32>(0.0f, 0.0f));
        let x_1475 : vec2<f32> = u_xlat60;
        let x_1477 : vec2<f32> = u_xlat60;
        let x_1479 : vec4<f32> = u_xlat7;
        let x_1481 : vec2<f32> = ((-(x_1475) * x_1477) + vec2<f32>(x_1479.y, x_1479.w));
        let x_1482 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_1481.x, x_1482.y, x_1481.y);
        let x_1484 : vec4<f32> = u_xlat8;
        let x_1486 : vec2<f32> = (vec2<f32>(x_1484.x, x_1484.y) + vec2<f32>(2.0f, 2.0f));
        let x_1487 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1486.x, x_1486.y, x_1487.z, x_1487.w);
        let x_1489 : vec3<f32> = u_xlat33;
        let x_1491 : vec2<f32> = (vec2<f32>(x_1489.x, x_1489.z) + vec2<f32>(2.0f, 2.0f));
        let x_1492 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1492.x, x_1491.x, x_1492.z, x_1491.y);
        let x_1495 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1495 * 0.08163200318813323975f);
        let x_1499 : vec4<f32> = u_xlat7;
        let x_1502 : vec3<f32> = (vec3<f32>(x_1499.z, x_1499.x, x_1499.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1503 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1502.x, x_1502.y, x_1502.z, x_1503.w);
        let x_1505 : vec4<f32> = u_xlat8;
        let x_1508 : vec2<f32> = (vec2<f32>(x_1505.x, x_1505.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1509 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1508.x, x_1508.y, x_1509.z, x_1509.w);
        let x_1512 : f32 = u_xlat11.y;
        u_xlat10.x = x_1512;
        let x_1514 : vec2<f32> = u_xlat58;
        let x_1521 : vec2<f32> = ((vec2<f32>(x_1514.x, x_1514.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1522 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1522.x, x_1521.x, x_1522.z, x_1521.y);
        let x_1524 : vec2<f32> = u_xlat58;
        let x_1528 : vec2<f32> = ((vec2<f32>(x_1524.x, x_1524.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1529 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1528.x, x_1529.y, x_1528.y, x_1529.w);
        let x_1532 : f32 = u_xlat7.x;
        u_xlat8.y = x_1532;
        let x_1535 : f32 = u_xlat9.y;
        u_xlat8.w = x_1535;
        let x_1537 : vec4<f32> = u_xlat8;
        let x_1538 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1537 + x_1538);
        let x_1540 : vec2<f32> = u_xlat58;
        let x_1543 : vec2<f32> = ((vec2<f32>(x_1540.y, x_1540.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1544 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1544.x, x_1543.x, x_1544.z, x_1543.y);
        let x_1546 : vec2<f32> = u_xlat58;
        let x_1549 : vec2<f32> = ((vec2<f32>(x_1546.y, x_1546.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1550 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1549.x, x_1550.y, x_1549.y, x_1550.w);
        let x_1553 : f32 = u_xlat7.y;
        u_xlat9.y = x_1553;
        let x_1555 : vec4<f32> = u_xlat9;
        let x_1556 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1555 + x_1556);
        let x_1558 : vec4<f32> = u_xlat8;
        let x_1559 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1558 / x_1559);
        let x_1561 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1561 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1567 : vec4<f32> = u_xlat9;
        let x_1568 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1567 / x_1568);
        let x_1570 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1570 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1572 : vec4<f32> = u_xlat8;
        let x_1575 : vec4<f32> = x_850.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1572.w, x_1572.x, x_1572.y, x_1572.z) * vec4<f32>(x_1575.x, x_1575.x, x_1575.x, x_1575.x));
        let x_1578 : vec4<f32> = u_xlat9;
        let x_1581 : vec4<f32> = x_850.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1578.x, x_1578.w, x_1578.y, x_1578.z) * vec4<f32>(x_1581.y, x_1581.y, x_1581.y, x_1581.y));
        let x_1584 : vec4<f32> = u_xlat8;
        let x_1585 : vec3<f32> = vec3<f32>(x_1584.y, x_1584.z, x_1584.w);
        let x_1586 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1585.x, x_1586.y, x_1585.y, x_1585.z);
        let x_1589 : f32 = u_xlat9.x;
        u_xlat11.y = x_1589;
        let x_1591 : vec4<f32> = u_xlat6;
        let x_1594 : vec4<f32> = x_850.x_MainLightShadowmapSize;
        let x_1597 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1591.x, x_1591.y, x_1591.x, x_1591.y) * vec4<f32>(x_1594.x, x_1594.y, x_1594.x, x_1594.y)) + vec4<f32>(x_1597.x, x_1597.y, x_1597.z, x_1597.y));
        let x_1600 : vec4<f32> = u_xlat6;
        let x_1603 : vec4<f32> = x_850.x_MainLightShadowmapSize;
        let x_1606 : vec4<f32> = u_xlat11;
        u_xlat58 = ((vec2<f32>(x_1600.x, x_1600.y) * vec2<f32>(x_1603.x, x_1603.y)) + vec2<f32>(x_1606.w, x_1606.y));
        let x_1610 : f32 = u_xlat11.y;
        u_xlat8.y = x_1610;
        let x_1613 : f32 = u_xlat9.z;
        u_xlat11.y = x_1613;
        let x_1615 : vec4<f32> = u_xlat6;
        let x_1618 : vec4<f32> = x_850.x_MainLightShadowmapSize;
        let x_1621 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1615.x, x_1615.y, x_1615.x, x_1615.y) * vec4<f32>(x_1618.x, x_1618.y, x_1618.x, x_1618.y)) + vec4<f32>(x_1621.x, x_1621.y, x_1621.z, x_1621.y));
        let x_1624 : vec4<f32> = u_xlat6;
        let x_1627 : vec4<f32> = x_850.x_MainLightShadowmapSize;
        let x_1630 : vec4<f32> = u_xlat11;
        let x_1632 : vec2<f32> = ((vec2<f32>(x_1624.x, x_1624.y) * vec2<f32>(x_1627.x, x_1627.y)) + vec2<f32>(x_1630.w, x_1630.y));
        let x_1633 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1632.x, x_1632.y, x_1633.z, x_1633.w);
        let x_1636 : f32 = u_xlat11.y;
        u_xlat8.z = x_1636;
        let x_1639 : vec4<f32> = u_xlat6;
        let x_1642 : vec4<f32> = x_850.x_MainLightShadowmapSize;
        let x_1645 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1639.x, x_1639.y, x_1639.x, x_1639.y) * vec4<f32>(x_1642.x, x_1642.y, x_1642.x, x_1642.y)) + vec4<f32>(x_1645.x, x_1645.y, x_1645.x, x_1645.z));
        let x_1649 : f32 = u_xlat9.w;
        u_xlat11.y = x_1649;
        let x_1652 : vec4<f32> = u_xlat6;
        let x_1655 : vec4<f32> = x_850.x_MainLightShadowmapSize;
        let x_1658 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1652.x, x_1652.y, x_1652.x, x_1652.y) * vec4<f32>(x_1655.x, x_1655.y, x_1655.x, x_1655.y)) + vec4<f32>(x_1658.x, x_1658.y, x_1658.z, x_1658.y));
        let x_1662 : vec4<f32> = u_xlat6;
        let x_1665 : vec4<f32> = x_850.x_MainLightShadowmapSize;
        let x_1668 : vec4<f32> = u_xlat11;
        u_xlat34 = ((vec2<f32>(x_1662.x, x_1662.y) * vec2<f32>(x_1665.x, x_1665.y)) + vec2<f32>(x_1668.w, x_1668.y));
        let x_1672 : f32 = u_xlat11.y;
        u_xlat8.w = x_1672;
        let x_1675 : vec4<f32> = u_xlat6;
        let x_1678 : vec4<f32> = x_850.x_MainLightShadowmapSize;
        let x_1681 : vec4<f32> = u_xlat8;
        u_xlat66 = ((vec2<f32>(x_1675.x, x_1675.y) * vec2<f32>(x_1678.x, x_1678.y)) + vec2<f32>(x_1681.x, x_1681.w));
        let x_1684 : vec4<f32> = u_xlat11;
        let x_1685 : vec3<f32> = vec3<f32>(x_1684.x, x_1684.z, x_1684.w);
        let x_1686 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1685.x, x_1686.y, x_1685.y, x_1685.z);
        let x_1688 : vec4<f32> = u_xlat6;
        let x_1691 : vec4<f32> = x_850.x_MainLightShadowmapSize;
        let x_1694 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1688.x, x_1688.y, x_1688.x, x_1688.y) * vec4<f32>(x_1691.x, x_1691.y, x_1691.x, x_1691.y)) + vec4<f32>(x_1694.x, x_1694.y, x_1694.z, x_1694.y));
        let x_1698 : vec4<f32> = u_xlat6;
        let x_1701 : vec4<f32> = x_850.x_MainLightShadowmapSize;
        let x_1704 : vec4<f32> = u_xlat9;
        u_xlat61 = ((vec2<f32>(x_1698.x, x_1698.y) * vec2<f32>(x_1701.x, x_1701.y)) + vec2<f32>(x_1704.w, x_1704.y));
        let x_1708 : f32 = u_xlat8.x;
        u_xlat9.x = x_1708;
        let x_1710 : vec4<f32> = u_xlat6;
        let x_1713 : vec4<f32> = x_850.x_MainLightShadowmapSize;
        let x_1716 : vec4<f32> = u_xlat9;
        let x_1718 : vec2<f32> = ((vec2<f32>(x_1710.x, x_1710.y) * vec2<f32>(x_1713.x, x_1713.y)) + vec2<f32>(x_1716.x, x_1716.y));
        let x_1719 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1718.x, x_1718.y, x_1719.z, x_1719.w);
        let x_1722 : vec4<f32> = u_xlat7;
        let x_1724 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1722.x, x_1722.x, x_1722.x, x_1722.x) * x_1724);
        let x_1727 : vec4<f32> = u_xlat7;
        let x_1729 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1727.y, x_1727.y, x_1727.y, x_1727.y) * x_1729);
        let x_1732 : vec4<f32> = u_xlat7;
        let x_1734 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1732.z, x_1732.z, x_1732.z, x_1732.z) * x_1734);
        let x_1736 : vec4<f32> = u_xlat7;
        let x_1738 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1736.w, x_1736.w, x_1736.w, x_1736.w) * x_1738);
        let x_1741 : vec4<f32> = u_xlat12;
        let x_1742 : vec2<f32> = vec2<f32>(x_1741.x, x_1741.y);
        let x_1744 : f32 = vs_INTERP3.z;
        txVec13 = vec3<f32>(x_1742.x, x_1742.y, x_1744);
        let x_1751 : vec3<f32> = txVec13;
        let x_1753 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1751.xy, x_1751.z);
        u_xlat83 = x_1753;
        let x_1755 : vec4<f32> = u_xlat12;
        let x_1756 : vec2<f32> = vec2<f32>(x_1755.z, x_1755.w);
        let x_1758 : f32 = vs_INTERP3.z;
        txVec14 = vec3<f32>(x_1756.x, x_1756.y, x_1758);
        let x_1765 : vec3<f32> = txVec14;
        let x_1767 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1765.xy, x_1765.z);
        u_xlat8.x = x_1767;
        let x_1770 : f32 = u_xlat8.x;
        let x_1772 : f32 = u_xlat17.y;
        u_xlat8.x = (x_1770 * x_1772);
        let x_1776 : f32 = u_xlat17.x;
        let x_1777 : f32 = u_xlat83;
        let x_1780 : f32 = u_xlat8.x;
        u_xlat83 = ((x_1776 * x_1777) + x_1780);
        let x_1783 : vec2<f32> = u_xlat58;
        let x_1785 : f32 = vs_INTERP3.z;
        txVec15 = vec3<f32>(x_1783.x, x_1783.y, x_1785);
        let x_1792 : vec3<f32> = txVec15;
        let x_1794 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1792.xy, x_1792.z);
        u_xlat58.x = x_1794;
        let x_1797 : f32 = u_xlat17.z;
        let x_1799 : f32 = u_xlat58.x;
        let x_1801 : f32 = u_xlat83;
        u_xlat83 = ((x_1797 * x_1799) + x_1801);
        let x_1804 : vec4<f32> = u_xlat15;
        let x_1805 : vec2<f32> = vec2<f32>(x_1804.x, x_1804.y);
        let x_1807 : f32 = vs_INTERP3.z;
        txVec16 = vec3<f32>(x_1805.x, x_1805.y, x_1807);
        let x_1814 : vec3<f32> = txVec16;
        let x_1816 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1814.xy, x_1814.z);
        u_xlat58.x = x_1816;
        let x_1819 : f32 = u_xlat17.w;
        let x_1821 : f32 = u_xlat58.x;
        let x_1823 : f32 = u_xlat83;
        u_xlat83 = ((x_1819 * x_1821) + x_1823);
        let x_1826 : vec4<f32> = u_xlat13;
        let x_1827 : vec2<f32> = vec2<f32>(x_1826.x, x_1826.y);
        let x_1829 : f32 = vs_INTERP3.z;
        txVec17 = vec3<f32>(x_1827.x, x_1827.y, x_1829);
        let x_1836 : vec3<f32> = txVec17;
        let x_1838 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1836.xy, x_1836.z);
        u_xlat58.x = x_1838;
        let x_1841 : f32 = u_xlat18.x;
        let x_1843 : f32 = u_xlat58.x;
        let x_1845 : f32 = u_xlat83;
        u_xlat83 = ((x_1841 * x_1843) + x_1845);
        let x_1848 : vec4<f32> = u_xlat13;
        let x_1849 : vec2<f32> = vec2<f32>(x_1848.z, x_1848.w);
        let x_1851 : f32 = vs_INTERP3.z;
        txVec18 = vec3<f32>(x_1849.x, x_1849.y, x_1851);
        let x_1858 : vec3<f32> = txVec18;
        let x_1860 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1858.xy, x_1858.z);
        u_xlat58.x = x_1860;
        let x_1863 : f32 = u_xlat18.y;
        let x_1865 : f32 = u_xlat58.x;
        let x_1867 : f32 = u_xlat83;
        u_xlat83 = ((x_1863 * x_1865) + x_1867);
        let x_1870 : vec4<f32> = u_xlat14;
        let x_1871 : vec2<f32> = vec2<f32>(x_1870.x, x_1870.y);
        let x_1873 : f32 = vs_INTERP3.z;
        txVec19 = vec3<f32>(x_1871.x, x_1871.y, x_1873);
        let x_1880 : vec3<f32> = txVec19;
        let x_1882 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1880.xy, x_1880.z);
        u_xlat58.x = x_1882;
        let x_1885 : f32 = u_xlat18.z;
        let x_1887 : f32 = u_xlat58.x;
        let x_1889 : f32 = u_xlat83;
        u_xlat83 = ((x_1885 * x_1887) + x_1889);
        let x_1892 : vec4<f32> = u_xlat15;
        let x_1893 : vec2<f32> = vec2<f32>(x_1892.z, x_1892.w);
        let x_1895 : f32 = vs_INTERP3.z;
        txVec20 = vec3<f32>(x_1893.x, x_1893.y, x_1895);
        let x_1902 : vec3<f32> = txVec20;
        let x_1904 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1902.xy, x_1902.z);
        u_xlat58.x = x_1904;
        let x_1907 : f32 = u_xlat18.w;
        let x_1909 : f32 = u_xlat58.x;
        let x_1911 : f32 = u_xlat83;
        u_xlat83 = ((x_1907 * x_1909) + x_1911);
        let x_1914 : vec4<f32> = u_xlat16;
        let x_1915 : vec2<f32> = vec2<f32>(x_1914.x, x_1914.y);
        let x_1917 : f32 = vs_INTERP3.z;
        txVec21 = vec3<f32>(x_1915.x, x_1915.y, x_1917);
        let x_1924 : vec3<f32> = txVec21;
        let x_1926 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1924.xy, x_1924.z);
        u_xlat58.x = x_1926;
        let x_1929 : f32 = u_xlat19.x;
        let x_1931 : f32 = u_xlat58.x;
        let x_1933 : f32 = u_xlat83;
        u_xlat83 = ((x_1929 * x_1931) + x_1933);
        let x_1936 : vec4<f32> = u_xlat16;
        let x_1937 : vec2<f32> = vec2<f32>(x_1936.z, x_1936.w);
        let x_1939 : f32 = vs_INTERP3.z;
        txVec22 = vec3<f32>(x_1937.x, x_1937.y, x_1939);
        let x_1946 : vec3<f32> = txVec22;
        let x_1948 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1946.xy, x_1946.z);
        u_xlat58.x = x_1948;
        let x_1951 : f32 = u_xlat19.y;
        let x_1953 : f32 = u_xlat58.x;
        let x_1955 : f32 = u_xlat83;
        u_xlat83 = ((x_1951 * x_1953) + x_1955);
        let x_1958 : vec2<f32> = u_xlat34;
        let x_1960 : f32 = vs_INTERP3.z;
        txVec23 = vec3<f32>(x_1958.x, x_1958.y, x_1960);
        let x_1967 : vec3<f32> = txVec23;
        let x_1969 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1967.xy, x_1967.z);
        u_xlat58.x = x_1969;
        let x_1972 : f32 = u_xlat19.z;
        let x_1974 : f32 = u_xlat58.x;
        let x_1976 : f32 = u_xlat83;
        u_xlat83 = ((x_1972 * x_1974) + x_1976);
        let x_1979 : vec2<f32> = u_xlat66;
        let x_1981 : f32 = vs_INTERP3.z;
        txVec24 = vec3<f32>(x_1979.x, x_1979.y, x_1981);
        let x_1988 : vec3<f32> = txVec24;
        let x_1990 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1988.xy, x_1988.z);
        u_xlat58.x = x_1990;
        let x_1993 : f32 = u_xlat19.w;
        let x_1995 : f32 = u_xlat58.x;
        let x_1997 : f32 = u_xlat83;
        u_xlat83 = ((x_1993 * x_1995) + x_1997);
        let x_2000 : vec4<f32> = u_xlat11;
        let x_2001 : vec2<f32> = vec2<f32>(x_2000.x, x_2000.y);
        let x_2003 : f32 = vs_INTERP3.z;
        txVec25 = vec3<f32>(x_2001.x, x_2001.y, x_2003);
        let x_2010 : vec3<f32> = txVec25;
        let x_2012 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2010.xy, x_2010.z);
        u_xlat58.x = x_2012;
        let x_2015 : f32 = u_xlat7.x;
        let x_2017 : f32 = u_xlat58.x;
        let x_2019 : f32 = u_xlat83;
        u_xlat83 = ((x_2015 * x_2017) + x_2019);
        let x_2022 : vec4<f32> = u_xlat11;
        let x_2023 : vec2<f32> = vec2<f32>(x_2022.z, x_2022.w);
        let x_2025 : f32 = vs_INTERP3.z;
        txVec26 = vec3<f32>(x_2023.x, x_2023.y, x_2025);
        let x_2032 : vec3<f32> = txVec26;
        let x_2034 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2032.xy, x_2032.z);
        u_xlat58.x = x_2034;
        let x_2037 : f32 = u_xlat7.y;
        let x_2039 : f32 = u_xlat58.x;
        let x_2041 : f32 = u_xlat83;
        u_xlat83 = ((x_2037 * x_2039) + x_2041);
        let x_2044 : vec2<f32> = u_xlat61;
        let x_2046 : f32 = vs_INTERP3.z;
        txVec27 = vec3<f32>(x_2044.x, x_2044.y, x_2046);
        let x_2053 : vec3<f32> = txVec27;
        let x_2055 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2053.xy, x_2053.z);
        u_xlat58.x = x_2055;
        let x_2058 : f32 = u_xlat7.z;
        let x_2060 : f32 = u_xlat58.x;
        let x_2062 : f32 = u_xlat83;
        u_xlat83 = ((x_2058 * x_2060) + x_2062);
        let x_2065 : vec4<f32> = u_xlat6;
        let x_2066 : vec2<f32> = vec2<f32>(x_2065.x, x_2065.y);
        let x_2068 : f32 = vs_INTERP3.z;
        txVec28 = vec3<f32>(x_2066.x, x_2066.y, x_2068);
        let x_2075 : vec3<f32> = txVec28;
        let x_2077 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2075.xy, x_2075.z);
        u_xlat6.x = x_2077;
        let x_2080 : f32 = u_xlat7.w;
        let x_2082 : f32 = u_xlat6.x;
        let x_2084 : f32 = u_xlat83;
        u_xlat82 = ((x_2080 * x_2082) + x_2084);
      }
    }
  } else {
    let x_2088 : vec4<f32> = vs_INTERP3;
    let x_2089 : vec2<f32> = vec2<f32>(x_2088.x, x_2088.y);
    let x_2091 : f32 = vs_INTERP3.z;
    txVec29 = vec3<f32>(x_2089.x, x_2089.y, x_2091);
    let x_2098 : vec3<f32> = txVec29;
    let x_2100 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2098.xy, x_2098.z);
    u_xlat82 = x_2100;
  }
  let x_2102 : f32 = x_850.x_MainLightShadowParams.x;
  u_xlat83 = (-(x_2102) + 1.0f);
  let x_2105 : f32 = u_xlat82;
  let x_2107 : f32 = x_850.x_MainLightShadowParams.x;
  let x_2109 : f32 = u_xlat83;
  u_xlat82 = ((x_2105 * x_2107) + x_2109);
  let x_2112 : f32 = vs_INTERP3.z;
  u_xlatb83 = (0.0f >= x_2112);
  let x_2116 : f32 = vs_INTERP3.z;
  u_xlatb6 = (x_2116 >= 1.0f);
  let x_2118 : bool = u_xlatb83;
  let x_2119 : bool = u_xlatb6;
  u_xlatb83 = (x_2118 | x_2119);
  let x_2121 : bool = u_xlatb83;
  let x_2122 : f32 = u_xlat82;
  u_xlat82 = select(x_2122, 1.0f, x_2121);
  let x_2124 : vec3<f32> = vs_INTERP7;
  let x_2126 : vec3<f32> = x_135.x_WorldSpaceCameraPos;
  let x_2128 : vec3<f32> = (x_2124 + -(x_2126));
  let x_2129 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2128.x, x_2128.y, x_2128.z, x_2129.w);
  let x_2131 : vec4<f32> = u_xlat6;
  let x_2133 : vec4<f32> = u_xlat6;
  u_xlat83 = dot(vec3<f32>(x_2131.x, x_2131.y, x_2131.z), vec3<f32>(x_2133.x, x_2133.y, x_2133.z));
  let x_2136 : f32 = u_xlat83;
  let x_2138 : f32 = x_850.x_MainLightShadowParams.z;
  let x_2141 : f32 = x_850.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_2136 * x_2138) + x_2141);
  let x_2145 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_2145, 0.0f, 1.0f);
  let x_2148 : f32 = u_xlat82;
  u_xlat32 = (-(x_2148) + 1.0f);
  let x_2152 : f32 = u_xlat6.x;
  let x_2153 : f32 = u_xlat32;
  let x_2155 : f32 = u_xlat82;
  u_xlat82 = ((x_2152 * x_2153) + x_2155);
  let x_2164 : f32 = x_2162.x_MainLightCookieTextureFormat;
  u_xlatb6 = !((x_2164 == -1.0f));
  let x_2166 : bool = u_xlatb6;
  if (x_2166) {
    let x_2169 : vec3<f32> = vs_INTERP7;
    let x_2172 : vec4<f32> = x_2162.x_MainLightWorldToLight[1i];
    let x_2174 : vec2<f32> = (vec2<f32>(x_2169.y, x_2169.y) * vec2<f32>(x_2172.x, x_2172.y));
    let x_2175 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2174.x, x_2174.y, x_2175.z, x_2175.w);
    let x_2178 : vec4<f32> = x_2162.x_MainLightWorldToLight[0i];
    let x_2180 : vec3<f32> = vs_INTERP7;
    let x_2183 : vec4<f32> = u_xlat6;
    let x_2185 : vec2<f32> = ((vec2<f32>(x_2178.x, x_2178.y) * vec2<f32>(x_2180.x, x_2180.x)) + vec2<f32>(x_2183.x, x_2183.y));
    let x_2186 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2185.x, x_2185.y, x_2186.z, x_2186.w);
    let x_2189 : vec4<f32> = x_2162.x_MainLightWorldToLight[2i];
    let x_2191 : vec3<f32> = vs_INTERP7;
    let x_2194 : vec4<f32> = u_xlat6;
    let x_2196 : vec2<f32> = ((vec2<f32>(x_2189.x, x_2189.y) * vec2<f32>(x_2191.z, x_2191.z)) + vec2<f32>(x_2194.x, x_2194.y));
    let x_2197 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2196.x, x_2196.y, x_2197.z, x_2197.w);
    let x_2199 : vec4<f32> = u_xlat6;
    let x_2202 : vec4<f32> = x_2162.x_MainLightWorldToLight[3i];
    let x_2204 : vec2<f32> = (vec2<f32>(x_2199.x, x_2199.y) + vec2<f32>(x_2202.x, x_2202.y));
    let x_2205 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2204.x, x_2204.y, x_2205.z, x_2205.w);
    let x_2207 : vec4<f32> = u_xlat6;
    let x_2210 : vec2<f32> = ((vec2<f32>(x_2207.x, x_2207.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2211 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2210.x, x_2210.y, x_2211.z, x_2211.w);
    let x_2218 : vec4<f32> = u_xlat6;
    let x_2221 : f32 = x_135.x_GlobalMipBias.x;
    let x_2222 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2218.x, x_2218.y), x_2221);
    u_xlat6 = x_2222;
    let x_2225 : f32 = x_2162.x_MainLightCookieTextureFormat;
    let x_2227 : f32 = x_2162.x_MainLightCookieTextureFormat;
    let x_2229 : f32 = x_2162.x_MainLightCookieTextureFormat;
    let x_2231 : f32 = x_2162.x_MainLightCookieTextureFormat;
    let x_2232 : vec4<f32> = vec4<f32>(x_2225, x_2227, x_2229, x_2231);
    let x_2240 : vec4<bool> = (vec4<f32>(x_2232.x, x_2232.y, x_2232.z, x_2232.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_2240.x, x_2240.y);
    let x_2244 : bool = u_xlatb7.y;
    if (x_2244) {
      let x_2250 : f32 = u_xlat6.w;
      x_2246 = x_2250;
    } else {
      let x_2253 : f32 = u_xlat6.x;
      x_2246 = x_2253;
    }
    let x_2254 : f32 = x_2246;
    u_xlat84 = x_2254;
    let x_2256 : bool = u_xlatb7.x;
    if (x_2256) {
      let x_2260 : vec4<f32> = u_xlat6;
      x_2257 = vec3<f32>(x_2260.x, x_2260.y, x_2260.z);
    } else {
      let x_2263 : f32 = u_xlat84;
      x_2257 = vec3<f32>(x_2263, x_2263, x_2263);
    }
    let x_2265 : vec3<f32> = x_2257;
    let x_2266 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2265.x, x_2265.y, x_2265.z, x_2266.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_2272 : vec4<f32> = u_xlat6;
  let x_2275 : vec4<f32> = x_135.x_MainLightColor;
  let x_2277 : vec3<f32> = (vec3<f32>(x_2272.x, x_2272.y, x_2272.z) * vec3<f32>(x_2275.x, x_2275.y, x_2275.z));
  let x_2278 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2277.x, x_2277.y, x_2277.z, x_2278.w);
  let x_2280 : vec3<f32> = u_xlat26;
  let x_2282 : vec4<f32> = u_xlat4;
  u_xlat84 = dot(-(x_2280), vec3<f32>(x_2282.x, x_2282.y, x_2282.z));
  let x_2285 : f32 = u_xlat84;
  let x_2286 : f32 = u_xlat84;
  u_xlat84 = (x_2285 + x_2286);
  let x_2288 : vec4<f32> = u_xlat4;
  let x_2290 : f32 = u_xlat84;
  let x_2294 : vec3<f32> = u_xlat26;
  let x_2296 : vec3<f32> = ((vec3<f32>(x_2288.x, x_2288.y, x_2288.z) * -(vec3<f32>(x_2290, x_2290, x_2290))) + -(x_2294));
  let x_2297 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2296.x, x_2296.y, x_2296.z, x_2297.w);
  let x_2299 : vec4<f32> = u_xlat4;
  let x_2301 : vec3<f32> = u_xlat26;
  u_xlat84 = dot(vec3<f32>(x_2299.x, x_2299.y, x_2299.z), x_2301);
  let x_2303 : f32 = u_xlat84;
  u_xlat84 = clamp(x_2303, 0.0f, 1.0f);
  let x_2305 : f32 = u_xlat84;
  u_xlat84 = (-(x_2305) + 1.0f);
  let x_2308 : f32 = u_xlat84;
  let x_2309 : f32 = u_xlat84;
  u_xlat84 = (x_2308 * x_2309);
  let x_2311 : f32 = u_xlat84;
  let x_2312 : f32 = u_xlat84;
  u_xlat84 = (x_2311 * x_2312);
  let x_2316 : f32 = u_xlat2.x;
  u_xlat85 = ((-(x_2316) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2323 : f32 = u_xlat2.x;
  let x_2324 : f32 = u_xlat85;
  u_xlat2.x = (x_2323 * x_2324);
  let x_2328 : f32 = u_xlat2.x;
  u_xlat2.x = (x_2328 * 6.0f);
  let x_2340 : vec4<f32> = u_xlat7;
  let x_2343 : f32 = u_xlat2.x;
  let x_2344 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2340.x, x_2340.y, x_2340.z), x_2343);
  u_xlat7 = x_2344;
  let x_2346 : f32 = u_xlat7.w;
  u_xlat2.x = (x_2346 + -1.0f);
  let x_2350 : f32 = x_48.unity_SpecCube0_HDR.w;
  let x_2352 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_2350 * x_2352) + 1.0f);
  let x_2357 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_2357, 0.0f);
  let x_2361 : f32 = u_xlat2.x;
  u_xlat2.x = log2(x_2361);
  let x_2365 : f32 = u_xlat2.x;
  let x_2367 : f32 = x_48.unity_SpecCube0_HDR.y;
  u_xlat2.x = (x_2365 * x_2367);
  let x_2371 : f32 = u_xlat2.x;
  u_xlat2.x = exp2(x_2371);
  let x_2375 : f32 = u_xlat2.x;
  let x_2377 : f32 = x_48.unity_SpecCube0_HDR.x;
  u_xlat2.x = (x_2375 * x_2377);
  let x_2380 : vec4<f32> = u_xlat7;
  let x_2382 : vec3<f32> = u_xlat2;
  let x_2384 : vec3<f32> = (vec3<f32>(x_2380.x, x_2380.y, x_2380.z) * vec3<f32>(x_2382.x, x_2382.x, x_2382.x));
  let x_2385 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2384.x, x_2384.y, x_2384.z, x_2385.w);
  let x_2387 : f32 = u_xlat28;
  let x_2389 : f32 = u_xlat28;
  let x_2393 : vec2<f32> = ((vec2<f32>(x_2387, x_2387) * vec2<f32>(x_2389, x_2389)) + vec2<f32>(-1.0f, 1.0f));
  let x_2394 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_2393.x, x_2393.y, x_2394.z);
  let x_2397 : f32 = u_xlat2.y;
  u_xlat28 = (1.0f / x_2397);
  let x_2399 : vec3<f32> = u_xlat27;
  let x_2401 : vec4<f32> = u_xlat0;
  let x_2403 : vec3<f32> = (-(x_2399) + vec3<f32>(x_2401.x, x_2401.x, x_2401.x));
  let x_2404 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2403.x, x_2403.y, x_2403.z, x_2404.w);
  let x_2406 : f32 = u_xlat84;
  let x_2408 : vec4<f32> = u_xlat8;
  let x_2411 : vec3<f32> = u_xlat27;
  let x_2412 : vec3<f32> = ((vec3<f32>(x_2406, x_2406, x_2406) * vec3<f32>(x_2408.x, x_2408.y, x_2408.z)) + x_2411);
  let x_2413 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2412.x, x_2412.y, x_2412.z, x_2413.w);
  let x_2415 : f32 = u_xlat28;
  let x_2417 : vec4<f32> = u_xlat8;
  let x_2419 : vec3<f32> = (vec3<f32>(x_2415, x_2415, x_2415) * vec3<f32>(x_2417.x, x_2417.y, x_2417.z));
  let x_2420 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2419.x, x_2419.y, x_2419.z, x_2420.w);
  let x_2422 : vec4<f32> = u_xlat7;
  let x_2424 : vec4<f32> = u_xlat8;
  let x_2426 : vec3<f32> = (vec3<f32>(x_2422.x, x_2422.y, x_2422.z) * vec3<f32>(x_2424.x, x_2424.y, x_2424.z));
  let x_2427 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2426.x, x_2426.y, x_2426.z, x_2427.w);
  let x_2429 : vec3<f32> = u_xlat5;
  let x_2430 : vec3<f32> = u_xlat3;
  let x_2432 : vec4<f32> = u_xlat7;
  u_xlat5 = ((x_2429 * x_2430) + vec3<f32>(x_2432.x, x_2432.y, x_2432.z));
  let x_2435 : f32 = u_xlat82;
  let x_2437 : f32 = x_48.unity_LightData.z;
  u_xlat0.x = (x_2435 * x_2437);
  let x_2440 : vec4<f32> = u_xlat4;
  let x_2443 : vec4<f32> = x_135.x_MainLightPosition;
  u_xlat28 = dot(vec3<f32>(x_2440.x, x_2440.y, x_2440.z), vec3<f32>(x_2443.x, x_2443.y, x_2443.z));
  let x_2446 : f32 = u_xlat28;
  u_xlat28 = clamp(x_2446, 0.0f, 1.0f);
  let x_2449 : f32 = u_xlat0.x;
  let x_2450 : f32 = u_xlat28;
  u_xlat0.x = (x_2449 * x_2450);
  let x_2453 : vec4<f32> = u_xlat0;
  let x_2455 : vec4<f32> = u_xlat6;
  let x_2457 : vec3<f32> = (vec3<f32>(x_2453.x, x_2453.x, x_2453.x) * vec3<f32>(x_2455.x, x_2455.y, x_2455.z));
  let x_2458 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2457.x, x_2457.y, x_2457.z, x_2458.w);
  let x_2460 : vec3<f32> = u_xlat26;
  let x_2462 : vec4<f32> = x_135.x_MainLightPosition;
  let x_2464 : vec3<f32> = (x_2460 + vec3<f32>(x_2462.x, x_2462.y, x_2462.z));
  let x_2465 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2464.x, x_2464.y, x_2464.z, x_2465.w);
  let x_2467 : vec4<f32> = u_xlat7;
  let x_2469 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(vec3<f32>(x_2467.x, x_2467.y, x_2467.z), vec3<f32>(x_2469.x, x_2469.y, x_2469.z));
  let x_2474 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2474, 1.17549435e-38f);
  let x_2478 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_2478);
  let x_2481 : vec4<f32> = u_xlat0;
  let x_2483 : vec4<f32> = u_xlat7;
  let x_2485 : vec3<f32> = (vec3<f32>(x_2481.x, x_2481.x, x_2481.x) * vec3<f32>(x_2483.x, x_2483.y, x_2483.z));
  let x_2486 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2485.x, x_2485.y, x_2485.z, x_2486.w);
  let x_2488 : vec4<f32> = u_xlat4;
  let x_2490 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(vec3<f32>(x_2488.x, x_2488.y, x_2488.z), vec3<f32>(x_2490.x, x_2490.y, x_2490.z));
  let x_2495 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_2495, 0.0f, 1.0f);
  let x_2499 : vec4<f32> = x_135.x_MainLightPosition;
  let x_2501 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_2499.x, x_2499.y, x_2499.z), vec3<f32>(x_2501.x, x_2501.y, x_2501.z));
  let x_2504 : f32 = u_xlat28;
  u_xlat28 = clamp(x_2504, 0.0f, 1.0f);
  let x_2507 : f32 = u_xlat0.x;
  let x_2509 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2507 * x_2509);
  let x_2513 : f32 = u_xlat0.x;
  let x_2515 : f32 = u_xlat2.x;
  u_xlat0.x = ((x_2513 * x_2515) + 1.00001001358032226562f);
  let x_2520 : f32 = u_xlat28;
  let x_2521 : f32 = u_xlat28;
  u_xlat28 = (x_2520 * x_2521);
  let x_2524 : f32 = u_xlat0.x;
  let x_2526 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2524 * x_2526);
  let x_2529 : f32 = u_xlat28;
  u_xlat28 = max(x_2529, 0.10000000149011611938f);
  let x_2532 : f32 = u_xlat0.x;
  let x_2533 : f32 = u_xlat28;
  u_xlat0.x = (x_2532 * x_2533);
  let x_2536 : f32 = u_xlat80;
  let x_2538 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2536 * x_2538);
  let x_2541 : f32 = u_xlat54;
  let x_2543 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2541 / x_2543);
  let x_2546 : vec3<f32> = u_xlat27;
  let x_2547 : vec4<f32> = u_xlat0;
  let x_2550 : vec3<f32> = u_xlat3;
  let x_2551 : vec3<f32> = ((x_2546 * vec3<f32>(x_2547.x, x_2547.x, x_2547.x)) + x_2550);
  let x_2552 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2551.x, x_2551.y, x_2551.z, x_2552.w);
  let x_2554 : vec4<f32> = u_xlat6;
  let x_2556 : vec4<f32> = u_xlat7;
  let x_2558 : vec3<f32> = (vec3<f32>(x_2554.x, x_2554.y, x_2554.z) * vec3<f32>(x_2556.x, x_2556.y, x_2556.z));
  let x_2559 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2558.x, x_2558.y, x_2558.z, x_2559.w);
  let x_2562 : f32 = x_135.x_AdditionalLightsCount.x;
  let x_2564 : f32 = x_48.unity_LightData.y;
  u_xlat0.x = min(x_2562, x_2564);
  let x_2570 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_2570));
  let x_2573 : f32 = u_xlat83;
  let x_2576 : f32 = x_850.x_AdditionalShadowFadeParams.x;
  let x_2579 : f32 = x_850.x_AdditionalShadowFadeParams.y;
  u_xlat28 = ((x_2573 * x_2576) + x_2579);
  let x_2581 : f32 = u_xlat28;
  u_xlat28 = clamp(x_2581, 0.0f, 1.0f);
  let x_2584 : f32 = x_2162.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2586 : f32 = x_2162.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2588 : f32 = x_2162.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2590 : f32 = x_2162.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2591 : vec4<f32> = vec4<f32>(x_2584, x_2586, x_2588, x_2590);
  let x_2597 : vec4<bool> = (vec4<f32>(x_2591.x, x_2591.y, x_2591.z, x_2591.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2597.x, x_2597.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2609 : u32 = u_xlatu_loop_1;
    let x_2610 : u32 = u_xlatu0;
    if ((x_2609 < x_2610)) {
    } else {
      break;
    }
    let x_2613 : u32 = u_xlatu_loop_1;
    u_xlatu83 = (x_2613 >> 2u);
    let x_2617 : u32 = u_xlatu_loop_1;
    u_xlati84 = bitcast<i32>((x_2617 & 3u));
    let x_2620 : u32 = u_xlatu83;
    let x_2623 : vec4<f32> = x_48.unity_LightIndices[bitcast<i32>(x_2620)];
    let x_2633 : i32 = u_xlati84;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2638 : vec4<u32> = indexable[x_2633];
    u_xlat83 = dot(x_2623, bitcast<vec4<f32>>(x_2638));
    let x_2642 : f32 = u_xlat83;
    u_xlati83 = i32(x_2642);
    let x_2644 : vec3<f32> = vs_INTERP7;
    let x_2655 : i32 = u_xlati83;
    let x_2657 : vec4<f32> = x_2654.x_AdditionalLightsPosition[x_2655];
    let x_2660 : i32 = u_xlati83;
    let x_2662 : vec4<f32> = x_2654.x_AdditionalLightsPosition[x_2660];
    let x_2664 : vec3<f32> = ((-(x_2644) * vec3<f32>(x_2657.w, x_2657.w, x_2657.w)) + vec3<f32>(x_2662.x, x_2662.y, x_2662.z));
    let x_2665 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2664.x, x_2664.y, x_2664.z, x_2665.w);
    let x_2667 : vec4<f32> = u_xlat9;
    let x_2669 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2667.x, x_2667.y, x_2667.z), vec3<f32>(x_2669.x, x_2669.y, x_2669.z));
    let x_2672 : f32 = u_xlat84;
    u_xlat84 = max(x_2672, 0.00006103515625f);
    let x_2675 : f32 = u_xlat84;
    u_xlat59 = inverseSqrt(x_2675);
    let x_2677 : f32 = u_xlat59;
    let x_2679 : vec4<f32> = u_xlat9;
    let x_2681 : vec3<f32> = (vec3<f32>(x_2677, x_2677, x_2677) * vec3<f32>(x_2679.x, x_2679.y, x_2679.z));
    let x_2682 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2681.x, x_2681.y, x_2681.z, x_2682.w);
    let x_2684 : f32 = u_xlat84;
    u_xlat85 = (1.0f / x_2684);
    let x_2686 : f32 = u_xlat84;
    let x_2687 : i32 = u_xlati83;
    let x_2689 : f32 = x_2654.x_AdditionalLightsAttenuation[x_2687].x;
    u_xlat84 = (x_2686 * x_2689);
    let x_2691 : f32 = u_xlat84;
    let x_2693 : f32 = u_xlat84;
    u_xlat84 = ((-(x_2691) * x_2693) + 1.0f);
    let x_2696 : f32 = u_xlat84;
    u_xlat84 = max(x_2696, 0.0f);
    let x_2698 : f32 = u_xlat84;
    let x_2699 : f32 = u_xlat84;
    u_xlat84 = (x_2698 * x_2699);
    let x_2701 : f32 = u_xlat84;
    let x_2702 : f32 = u_xlat85;
    u_xlat84 = (x_2701 * x_2702);
    let x_2704 : i32 = u_xlati83;
    let x_2706 : vec4<f32> = x_2654.x_AdditionalLightsSpotDir[x_2704];
    let x_2708 : vec4<f32> = u_xlat10;
    u_xlat85 = dot(vec3<f32>(x_2706.x, x_2706.y, x_2706.z), vec3<f32>(x_2708.x, x_2708.y, x_2708.z));
    let x_2711 : f32 = u_xlat85;
    let x_2712 : i32 = u_xlati83;
    let x_2714 : f32 = x_2654.x_AdditionalLightsAttenuation[x_2712].z;
    let x_2716 : i32 = u_xlati83;
    let x_2718 : f32 = x_2654.x_AdditionalLightsAttenuation[x_2716].w;
    u_xlat85 = ((x_2711 * x_2714) + x_2718);
    let x_2720 : f32 = u_xlat85;
    u_xlat85 = clamp(x_2720, 0.0f, 1.0f);
    let x_2722 : f32 = u_xlat85;
    let x_2723 : f32 = u_xlat85;
    u_xlat85 = (x_2722 * x_2723);
    let x_2725 : f32 = u_xlat84;
    let x_2726 : f32 = u_xlat85;
    u_xlat84 = (x_2725 * x_2726);
    let x_2730 : i32 = u_xlati83;
    let x_2732 : f32 = x_850.x_AdditionalShadowParams[x_2730].w;
    u_xlati85 = i32(x_2732);
    let x_2735 : i32 = u_xlati85;
    u_xlatb86 = (x_2735 >= 0i);
    let x_2737 : bool = u_xlatb86;
    if (x_2737) {
      let x_2741 : i32 = u_xlati83;
      let x_2743 : f32 = x_850.x_AdditionalShadowParams[x_2741].z;
      u_xlatb86 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2743, x_2743, x_2743, x_2743))));
      let x_2747 : bool = u_xlatb86;
      if (x_2747) {
        let x_2752 : vec4<f32> = u_xlat10;
        let x_2755 : vec4<f32> = u_xlat10;
        let x_2758 : vec4<bool> = (abs(vec4<f32>(x_2752.z, x_2752.z, x_2752.y, x_2752.z)) >= abs(vec4<f32>(x_2755.x, x_2755.y, x_2755.x, x_2755.x)));
        let x_2760 : vec3<bool> = vec3<bool>(x_2758.x, x_2758.y, x_2758.z);
        let x_2761 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2760.x, x_2760.y, x_2760.z, x_2761.w);
        let x_2764 : bool = u_xlatb11.y;
        let x_2766 : bool = u_xlatb11.x;
        u_xlatb86 = (x_2764 & x_2766);
        let x_2768 : vec4<f32> = u_xlat10;
        let x_2771 : vec4<bool> = (-(vec4<f32>(x_2768.z, x_2768.y, x_2768.z, x_2768.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2772 : vec3<bool> = vec3<bool>(x_2771.x, x_2771.y, x_2771.w);
        let x_2773 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2772.x, x_2772.y, x_2773.z, x_2772.z);
        let x_2776 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2776);
        let x_2781 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2781);
        let x_2786 : bool = u_xlatb11.w;
        u_xlat87 = select(0.0f, 1.0f, x_2786);
        let x_2789 : bool = u_xlatb11.z;
        if (x_2789) {
          let x_2794 : f32 = u_xlat11.y;
          x_2790 = x_2794;
        } else {
          let x_2796 : f32 = u_xlat87;
          x_2790 = x_2796;
        }
        let x_2797 : f32 = x_2790;
        u_xlat87 = x_2797;
        let x_2799 : bool = u_xlatb86;
        if (x_2799) {
          let x_2804 : f32 = u_xlat11.x;
          x_2800 = x_2804;
        } else {
          let x_2806 : f32 = u_xlat87;
          x_2800 = x_2806;
        }
        let x_2807 : f32 = x_2800;
        u_xlat86 = x_2807;
        let x_2808 : i32 = u_xlati83;
        let x_2810 : f32 = x_850.x_AdditionalShadowParams[x_2808].w;
        u_xlat87 = trunc(x_2810);
        let x_2812 : f32 = u_xlat86;
        let x_2813 : f32 = u_xlat87;
        u_xlat86 = (x_2812 + x_2813);
        let x_2815 : f32 = u_xlat86;
        u_xlati85 = i32(x_2815);
      }
      let x_2817 : i32 = u_xlati85;
      u_xlati85 = (x_2817 << bitcast<u32>(2i));
      let x_2819 : vec3<f32> = vs_INTERP7;
      let x_2822 : i32 = u_xlati85;
      let x_2825 : i32 = u_xlati85;
      let x_2829 : vec4<f32> = x_850.x_AdditionalLightsWorldToShadow[((x_2822 + 1i) / 4i)][((x_2825 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2819.y, x_2819.y, x_2819.y, x_2819.y) * x_2829);
      let x_2831 : i32 = u_xlati85;
      let x_2833 : i32 = u_xlati85;
      let x_2836 : vec4<f32> = x_850.x_AdditionalLightsWorldToShadow[(x_2831 / 4i)][(x_2833 % 4i)];
      let x_2837 : vec3<f32> = vs_INTERP7;
      let x_2840 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2836 * vec4<f32>(x_2837.x, x_2837.x, x_2837.x, x_2837.x)) + x_2840);
      let x_2842 : i32 = u_xlati85;
      let x_2845 : i32 = u_xlati85;
      let x_2849 : vec4<f32> = x_850.x_AdditionalLightsWorldToShadow[((x_2842 + 2i) / 4i)][((x_2845 + 2i) % 4i)];
      let x_2850 : vec3<f32> = vs_INTERP7;
      let x_2853 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2849 * vec4<f32>(x_2850.z, x_2850.z, x_2850.z, x_2850.z)) + x_2853);
      let x_2855 : vec4<f32> = u_xlat11;
      let x_2856 : i32 = u_xlati85;
      let x_2859 : i32 = u_xlati85;
      let x_2863 : vec4<f32> = x_850.x_AdditionalLightsWorldToShadow[((x_2856 + 3i) / 4i)][((x_2859 + 3i) % 4i)];
      u_xlat11 = (x_2855 + x_2863);
      let x_2865 : vec4<f32> = u_xlat11;
      let x_2867 : vec4<f32> = u_xlat11;
      let x_2869 : vec3<f32> = (vec3<f32>(x_2865.x, x_2865.y, x_2865.z) / vec3<f32>(x_2867.w, x_2867.w, x_2867.w));
      let x_2870 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2869.x, x_2869.y, x_2869.z, x_2870.w);
      let x_2873 : i32 = u_xlati83;
      let x_2875 : f32 = x_850.x_AdditionalShadowParams[x_2873].y;
      u_xlatb85 = (0.0f < x_2875);
      let x_2877 : bool = u_xlatb85;
      if (x_2877) {
        let x_2880 : i32 = u_xlati83;
        let x_2882 : f32 = x_850.x_AdditionalShadowParams[x_2880].y;
        u_xlatb85 = (1.0f == x_2882);
        let x_2884 : bool = u_xlatb85;
        if (x_2884) {
          let x_2887 : vec4<f32> = u_xlat11;
          let x_2891 : vec4<f32> = x_850.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2887.x, x_2887.y, x_2887.x, x_2887.y) + x_2891);
          let x_2894 : vec4<f32> = u_xlat12;
          let x_2895 : vec2<f32> = vec2<f32>(x_2894.x, x_2894.y);
          let x_2897 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2895.x, x_2895.y, x_2897);
          let x_2905 : vec3<f32> = txVec30;
          let x_2907 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2905.xy, x_2905.z);
          u_xlat13.x = x_2907;
          let x_2910 : vec4<f32> = u_xlat12;
          let x_2911 : vec2<f32> = vec2<f32>(x_2910.z, x_2910.w);
          let x_2913 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2911.x, x_2911.y, x_2913);
          let x_2920 : vec3<f32> = txVec31;
          let x_2922 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2920.xy, x_2920.z);
          u_xlat13.y = x_2922;
          let x_2924 : vec4<f32> = u_xlat11;
          let x_2928 : vec4<f32> = x_850.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2924.x, x_2924.y, x_2924.x, x_2924.y) + x_2928);
          let x_2931 : vec4<f32> = u_xlat12;
          let x_2932 : vec2<f32> = vec2<f32>(x_2931.x, x_2931.y);
          let x_2934 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2932.x, x_2932.y, x_2934);
          let x_2941 : vec3<f32> = txVec32;
          let x_2943 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2941.xy, x_2941.z);
          u_xlat13.z = x_2943;
          let x_2946 : vec4<f32> = u_xlat12;
          let x_2947 : vec2<f32> = vec2<f32>(x_2946.z, x_2946.w);
          let x_2949 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2947.x, x_2947.y, x_2949);
          let x_2956 : vec3<f32> = txVec33;
          let x_2958 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2956.xy, x_2956.z);
          u_xlat13.w = x_2958;
          let x_2960 : vec4<f32> = u_xlat13;
          u_xlat85 = dot(x_2960, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2963 : i32 = u_xlati83;
          let x_2965 : f32 = x_850.x_AdditionalShadowParams[x_2963].y;
          u_xlatb86 = (2.0f == x_2965);
          let x_2967 : bool = u_xlatb86;
          if (x_2967) {
            let x_2970 : vec4<f32> = u_xlat11;
            let x_2974 : vec4<f32> = x_850.x_AdditionalShadowmapSize;
            let x_2977 : vec2<f32> = ((vec2<f32>(x_2970.x, x_2970.y) * vec2<f32>(x_2974.z, x_2974.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2978 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2977.x, x_2977.y, x_2978.z, x_2978.w);
            let x_2980 : vec4<f32> = u_xlat12;
            let x_2982 : vec2<f32> = floor(vec2<f32>(x_2980.x, x_2980.y));
            let x_2983 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2982.x, x_2982.y, x_2983.z, x_2983.w);
            let x_2986 : vec4<f32> = u_xlat11;
            let x_2989 : vec4<f32> = x_850.x_AdditionalShadowmapSize;
            let x_2992 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2986.x, x_2986.y) * vec2<f32>(x_2989.z, x_2989.w)) + -(vec2<f32>(x_2992.x, x_2992.y)));
            let x_2996 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2996.x, x_2996.x, x_2996.y, x_2996.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2999 : vec4<f32> = u_xlat13;
            let x_3001 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2999.x, x_2999.x, x_2999.z, x_2999.z) * vec4<f32>(x_3001.x, x_3001.x, x_3001.z, x_3001.z));
            let x_3004 : vec4<f32> = u_xlat14;
            let x_3006 : vec2<f32> = (vec2<f32>(x_3004.y, x_3004.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_3007 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3006.x, x_3007.y, x_3006.y, x_3007.w);
            let x_3009 : vec4<f32> = u_xlat14;
            let x_3012 : vec2<f32> = u_xlat64;
            let x_3014 : vec2<f32> = ((vec2<f32>(x_3009.x, x_3009.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3012));
            let x_3015 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3014.x, x_3014.y, x_3015.z, x_3015.w);
            let x_3017 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_3017) + vec2<f32>(1.0f, 1.0f));
            let x_3020 : vec2<f32> = u_xlat64;
            let x_3021 : vec2<f32> = min(x_3020, vec2<f32>(0.0f, 0.0f));
            let x_3022 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3021.x, x_3021.y, x_3022.z, x_3022.w);
            let x_3024 : vec4<f32> = u_xlat15;
            let x_3027 : vec4<f32> = u_xlat15;
            let x_3030 : vec2<f32> = u_xlat66;
            let x_3031 : vec2<f32> = ((-(vec2<f32>(x_3024.x, x_3024.y)) * vec2<f32>(x_3027.x, x_3027.y)) + x_3030);
            let x_3032 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3031.x, x_3031.y, x_3032.z, x_3032.w);
            let x_3034 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_3034, vec2<f32>(0.0f, 0.0f));
            let x_3036 : vec2<f32> = u_xlat64;
            let x_3038 : vec2<f32> = u_xlat64;
            let x_3040 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_3036) * x_3038) + vec2<f32>(x_3040.y, x_3040.w));
            let x_3043 : vec4<f32> = u_xlat15;
            let x_3045 : vec2<f32> = (vec2<f32>(x_3043.x, x_3043.y) + vec2<f32>(1.0f, 1.0f));
            let x_3046 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3045.x, x_3045.y, x_3046.z, x_3046.w);
            let x_3048 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_3048 + vec2<f32>(1.0f, 1.0f));
            let x_3050 : vec4<f32> = u_xlat14;
            let x_3052 : vec2<f32> = (vec2<f32>(x_3050.x, x_3050.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3053 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3052.x, x_3052.y, x_3053.z, x_3053.w);
            let x_3055 : vec2<f32> = u_xlat66;
            let x_3056 : vec2<f32> = (x_3055 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3057 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3056.x, x_3056.y, x_3057.z, x_3057.w);
            let x_3059 : vec4<f32> = u_xlat15;
            let x_3061 : vec2<f32> = (vec2<f32>(x_3059.x, x_3059.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3062 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3061.x, x_3061.y, x_3062.z, x_3062.w);
            let x_3064 : vec2<f32> = u_xlat64;
            let x_3065 : vec2<f32> = (x_3064 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3066 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3065.x, x_3065.y, x_3066.z, x_3066.w);
            let x_3068 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_3068.y, x_3068.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3072 : f32 = u_xlat15.x;
            u_xlat16.z = x_3072;
            let x_3075 : f32 = u_xlat64.x;
            u_xlat16.w = x_3075;
            let x_3078 : f32 = u_xlat17.x;
            u_xlat14.z = x_3078;
            let x_3081 : f32 = u_xlat13.x;
            u_xlat14.w = x_3081;
            let x_3083 : vec4<f32> = u_xlat14;
            let x_3085 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_3083.z, x_3083.w, x_3083.x, x_3083.z) + vec4<f32>(x_3085.z, x_3085.w, x_3085.x, x_3085.z));
            let x_3089 : f32 = u_xlat16.y;
            u_xlat15.z = x_3089;
            let x_3092 : f32 = u_xlat64.y;
            u_xlat15.w = x_3092;
            let x_3095 : f32 = u_xlat14.y;
            u_xlat17.z = x_3095;
            let x_3098 : f32 = u_xlat13.z;
            u_xlat17.w = x_3098;
            let x_3100 : vec4<f32> = u_xlat15;
            let x_3102 : vec4<f32> = u_xlat17;
            let x_3104 : vec3<f32> = (vec3<f32>(x_3100.z, x_3100.y, x_3100.w) + vec3<f32>(x_3102.z, x_3102.y, x_3102.w));
            let x_3105 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3104.x, x_3104.y, x_3104.z, x_3105.w);
            let x_3107 : vec4<f32> = u_xlat14;
            let x_3109 : vec4<f32> = u_xlat18;
            let x_3111 : vec3<f32> = (vec3<f32>(x_3107.x, x_3107.z, x_3107.w) / vec3<f32>(x_3109.z, x_3109.w, x_3109.y));
            let x_3112 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3111.x, x_3111.y, x_3111.z, x_3112.w);
            let x_3114 : vec4<f32> = u_xlat14;
            let x_3116 : vec3<f32> = (vec3<f32>(x_3114.x, x_3114.y, x_3114.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3117 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3116.x, x_3116.y, x_3116.z, x_3117.w);
            let x_3119 : vec4<f32> = u_xlat17;
            let x_3121 : vec4<f32> = u_xlat13;
            let x_3123 : vec3<f32> = (vec3<f32>(x_3119.z, x_3119.y, x_3119.w) / vec3<f32>(x_3121.x, x_3121.y, x_3121.z));
            let x_3124 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3123.x, x_3123.y, x_3123.z, x_3124.w);
            let x_3126 : vec4<f32> = u_xlat15;
            let x_3128 : vec3<f32> = (vec3<f32>(x_3126.x, x_3126.y, x_3126.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3129 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3128.x, x_3128.y, x_3128.z, x_3129.w);
            let x_3131 : vec4<f32> = u_xlat14;
            let x_3134 : vec4<f32> = x_850.x_AdditionalShadowmapSize;
            let x_3136 : vec3<f32> = (vec3<f32>(x_3131.y, x_3131.x, x_3131.z) * vec3<f32>(x_3134.x, x_3134.x, x_3134.x));
            let x_3137 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3136.x, x_3136.y, x_3136.z, x_3137.w);
            let x_3139 : vec4<f32> = u_xlat15;
            let x_3142 : vec4<f32> = x_850.x_AdditionalShadowmapSize;
            let x_3144 : vec3<f32> = (vec3<f32>(x_3139.x, x_3139.y, x_3139.z) * vec3<f32>(x_3142.y, x_3142.y, x_3142.y));
            let x_3145 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3144.x, x_3144.y, x_3144.z, x_3145.w);
            let x_3148 : f32 = u_xlat15.x;
            u_xlat14.w = x_3148;
            let x_3150 : vec4<f32> = u_xlat12;
            let x_3153 : vec4<f32> = x_850.x_AdditionalShadowmapSize;
            let x_3156 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3150.x, x_3150.y, x_3150.x, x_3150.y) * vec4<f32>(x_3153.x, x_3153.y, x_3153.x, x_3153.y)) + vec4<f32>(x_3156.y, x_3156.w, x_3156.x, x_3156.w));
            let x_3159 : vec4<f32> = u_xlat12;
            let x_3162 : vec4<f32> = x_850.x_AdditionalShadowmapSize;
            let x_3165 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3159.x, x_3159.y) * vec2<f32>(x_3162.x, x_3162.y)) + vec2<f32>(x_3165.z, x_3165.w));
            let x_3169 : f32 = u_xlat14.y;
            u_xlat15.w = x_3169;
            let x_3171 : vec4<f32> = u_xlat15;
            let x_3172 : vec2<f32> = vec2<f32>(x_3171.y, x_3171.z);
            let x_3173 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3173.x, x_3172.x, x_3173.z, x_3172.y);
            let x_3175 : vec4<f32> = u_xlat12;
            let x_3178 : vec4<f32> = x_850.x_AdditionalShadowmapSize;
            let x_3181 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_3175.x, x_3175.y, x_3175.x, x_3175.y) * vec4<f32>(x_3178.x, x_3178.y, x_3178.x, x_3178.y)) + vec4<f32>(x_3181.x, x_3181.y, x_3181.z, x_3181.y));
            let x_3184 : vec4<f32> = u_xlat12;
            let x_3187 : vec4<f32> = x_850.x_AdditionalShadowmapSize;
            let x_3190 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_3184.x, x_3184.y, x_3184.x, x_3184.y) * vec4<f32>(x_3187.x, x_3187.y, x_3187.x, x_3187.y)) + vec4<f32>(x_3190.w, x_3190.y, x_3190.w, x_3190.z));
            let x_3193 : vec4<f32> = u_xlat12;
            let x_3196 : vec4<f32> = x_850.x_AdditionalShadowmapSize;
            let x_3199 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3193.x, x_3193.y, x_3193.x, x_3193.y) * vec4<f32>(x_3196.x, x_3196.y, x_3196.x, x_3196.y)) + vec4<f32>(x_3199.x, x_3199.w, x_3199.z, x_3199.w));
            let x_3202 : vec4<f32> = u_xlat13;
            let x_3204 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_3202.x, x_3202.x, x_3202.x, x_3202.y) * vec4<f32>(x_3204.z, x_3204.w, x_3204.y, x_3204.z));
            let x_3208 : vec4<f32> = u_xlat13;
            let x_3210 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_3208.y, x_3208.y, x_3208.z, x_3208.z) * x_3210);
            let x_3213 : f32 = u_xlat13.z;
            let x_3215 : f32 = u_xlat18.y;
            u_xlat86 = (x_3213 * x_3215);
            let x_3218 : vec4<f32> = u_xlat16;
            let x_3219 : vec2<f32> = vec2<f32>(x_3218.x, x_3218.y);
            let x_3221 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_3219.x, x_3219.y, x_3221);
            let x_3228 : vec3<f32> = txVec34;
            let x_3230 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3228.xy, x_3228.z);
            u_xlat87 = x_3230;
            let x_3232 : vec4<f32> = u_xlat16;
            let x_3233 : vec2<f32> = vec2<f32>(x_3232.z, x_3232.w);
            let x_3235 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_3233.x, x_3233.y, x_3235);
            let x_3243 : vec3<f32> = txVec35;
            let x_3245 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3243.xy, x_3243.z);
            u_xlat88 = x_3245;
            let x_3246 : f32 = u_xlat88;
            let x_3248 : f32 = u_xlat19.y;
            u_xlat88 = (x_3246 * x_3248);
            let x_3251 : f32 = u_xlat19.x;
            let x_3252 : f32 = u_xlat87;
            let x_3254 : f32 = u_xlat88;
            u_xlat87 = ((x_3251 * x_3252) + x_3254);
            let x_3257 : vec2<f32> = u_xlat64;
            let x_3259 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_3257.x, x_3257.y, x_3259);
            let x_3266 : vec3<f32> = txVec36;
            let x_3268 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3266.xy, x_3266.z);
            u_xlat88 = x_3268;
            let x_3270 : f32 = u_xlat19.z;
            let x_3271 : f32 = u_xlat88;
            let x_3273 : f32 = u_xlat87;
            u_xlat87 = ((x_3270 * x_3271) + x_3273);
            let x_3276 : vec4<f32> = u_xlat15;
            let x_3277 : vec2<f32> = vec2<f32>(x_3276.x, x_3276.y);
            let x_3279 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_3277.x, x_3277.y, x_3279);
            let x_3286 : vec3<f32> = txVec37;
            let x_3288 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3286.xy, x_3286.z);
            u_xlat88 = x_3288;
            let x_3290 : f32 = u_xlat19.w;
            let x_3291 : f32 = u_xlat88;
            let x_3293 : f32 = u_xlat87;
            u_xlat87 = ((x_3290 * x_3291) + x_3293);
            let x_3296 : vec4<f32> = u_xlat17;
            let x_3297 : vec2<f32> = vec2<f32>(x_3296.x, x_3296.y);
            let x_3299 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_3297.x, x_3297.y, x_3299);
            let x_3306 : vec3<f32> = txVec38;
            let x_3308 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3306.xy, x_3306.z);
            u_xlat88 = x_3308;
            let x_3310 : f32 = u_xlat20.x;
            let x_3311 : f32 = u_xlat88;
            let x_3313 : f32 = u_xlat87;
            u_xlat87 = ((x_3310 * x_3311) + x_3313);
            let x_3316 : vec4<f32> = u_xlat17;
            let x_3317 : vec2<f32> = vec2<f32>(x_3316.z, x_3316.w);
            let x_3319 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_3317.x, x_3317.y, x_3319);
            let x_3326 : vec3<f32> = txVec39;
            let x_3328 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3326.xy, x_3326.z);
            u_xlat88 = x_3328;
            let x_3330 : f32 = u_xlat20.y;
            let x_3331 : f32 = u_xlat88;
            let x_3333 : f32 = u_xlat87;
            u_xlat87 = ((x_3330 * x_3331) + x_3333);
            let x_3336 : vec4<f32> = u_xlat15;
            let x_3337 : vec2<f32> = vec2<f32>(x_3336.z, x_3336.w);
            let x_3339 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_3337.x, x_3337.y, x_3339);
            let x_3346 : vec3<f32> = txVec40;
            let x_3348 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3346.xy, x_3346.z);
            u_xlat88 = x_3348;
            let x_3350 : f32 = u_xlat20.z;
            let x_3351 : f32 = u_xlat88;
            let x_3353 : f32 = u_xlat87;
            u_xlat87 = ((x_3350 * x_3351) + x_3353);
            let x_3356 : vec4<f32> = u_xlat14;
            let x_3357 : vec2<f32> = vec2<f32>(x_3356.x, x_3356.y);
            let x_3359 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_3357.x, x_3357.y, x_3359);
            let x_3366 : vec3<f32> = txVec41;
            let x_3368 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3366.xy, x_3366.z);
            u_xlat88 = x_3368;
            let x_3370 : f32 = u_xlat20.w;
            let x_3371 : f32 = u_xlat88;
            let x_3373 : f32 = u_xlat87;
            u_xlat87 = ((x_3370 * x_3371) + x_3373);
            let x_3376 : vec4<f32> = u_xlat14;
            let x_3377 : vec2<f32> = vec2<f32>(x_3376.z, x_3376.w);
            let x_3379 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_3377.x, x_3377.y, x_3379);
            let x_3386 : vec3<f32> = txVec42;
            let x_3388 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3386.xy, x_3386.z);
            u_xlat88 = x_3388;
            let x_3389 : f32 = u_xlat86;
            let x_3390 : f32 = u_xlat88;
            let x_3392 : f32 = u_xlat87;
            u_xlat85 = ((x_3389 * x_3390) + x_3392);
          } else {
            let x_3395 : vec4<f32> = u_xlat11;
            let x_3398 : vec4<f32> = x_850.x_AdditionalShadowmapSize;
            let x_3401 : vec2<f32> = ((vec2<f32>(x_3395.x, x_3395.y) * vec2<f32>(x_3398.z, x_3398.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3402 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3401.x, x_3401.y, x_3402.z, x_3402.w);
            let x_3404 : vec4<f32> = u_xlat12;
            let x_3406 : vec2<f32> = floor(vec2<f32>(x_3404.x, x_3404.y));
            let x_3407 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3406.x, x_3406.y, x_3407.z, x_3407.w);
            let x_3409 : vec4<f32> = u_xlat11;
            let x_3412 : vec4<f32> = x_850.x_AdditionalShadowmapSize;
            let x_3415 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3409.x, x_3409.y) * vec2<f32>(x_3412.z, x_3412.w)) + -(vec2<f32>(x_3415.x, x_3415.y)));
            let x_3419 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3419.x, x_3419.x, x_3419.y, x_3419.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3422 : vec4<f32> = u_xlat13;
            let x_3424 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3422.x, x_3422.x, x_3422.z, x_3422.z) * vec4<f32>(x_3424.x, x_3424.x, x_3424.z, x_3424.z));
            let x_3427 : vec4<f32> = u_xlat14;
            let x_3429 : vec2<f32> = (vec2<f32>(x_3427.y, x_3427.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3430 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3430.x, x_3429.x, x_3430.z, x_3429.y);
            let x_3432 : vec4<f32> = u_xlat14;
            let x_3435 : vec2<f32> = u_xlat64;
            let x_3437 : vec2<f32> = ((vec2<f32>(x_3432.x, x_3432.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3435));
            let x_3438 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3437.x, x_3438.y, x_3437.y, x_3438.w);
            let x_3440 : vec2<f32> = u_xlat64;
            let x_3442 : vec2<f32> = (-(x_3440) + vec2<f32>(1.0f, 1.0f));
            let x_3443 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3442.x, x_3442.y, x_3443.z, x_3443.w);
            let x_3445 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3445, vec2<f32>(0.0f, 0.0f));
            let x_3447 : vec2<f32> = u_xlat66;
            let x_3449 : vec2<f32> = u_xlat66;
            let x_3451 : vec4<f32> = u_xlat14;
            let x_3453 : vec2<f32> = ((-(x_3447) * x_3449) + vec2<f32>(x_3451.x, x_3451.y));
            let x_3454 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3453.x, x_3453.y, x_3454.z, x_3454.w);
            let x_3456 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3456, vec2<f32>(0.0f, 0.0f));
            let x_3459 : vec2<f32> = u_xlat66;
            let x_3461 : vec2<f32> = u_xlat66;
            let x_3463 : vec4<f32> = u_xlat13;
            let x_3465 : vec2<f32> = ((-(x_3459) * x_3461) + vec2<f32>(x_3463.y, x_3463.w));
            let x_3466 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3465.x, x_3466.y, x_3465.y);
            let x_3468 : vec4<f32> = u_xlat14;
            let x_3470 : vec2<f32> = (vec2<f32>(x_3468.x, x_3468.y) + vec2<f32>(2.0f, 2.0f));
            let x_3471 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3470.x, x_3470.y, x_3471.z, x_3471.w);
            let x_3473 : vec3<f32> = u_xlat39;
            let x_3475 : vec2<f32> = (vec2<f32>(x_3473.x, x_3473.z) + vec2<f32>(2.0f, 2.0f));
            let x_3476 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3476.x, x_3475.x, x_3476.z, x_3475.y);
            let x_3479 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3479 * 0.08163200318813323975f);
            let x_3482 : vec4<f32> = u_xlat13;
            let x_3484 : vec3<f32> = (vec3<f32>(x_3482.z, x_3482.x, x_3482.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3485 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3484.x, x_3484.y, x_3484.z, x_3485.w);
            let x_3487 : vec4<f32> = u_xlat14;
            let x_3489 : vec2<f32> = (vec2<f32>(x_3487.x, x_3487.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3490 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3489.x, x_3489.y, x_3490.z, x_3490.w);
            let x_3493 : f32 = u_xlat17.y;
            u_xlat16.x = x_3493;
            let x_3495 : vec2<f32> = u_xlat64;
            let x_3498 : vec2<f32> = ((vec2<f32>(x_3495.x, x_3495.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3499 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3499.x, x_3498.x, x_3499.z, x_3498.y);
            let x_3501 : vec2<f32> = u_xlat64;
            let x_3504 : vec2<f32> = ((vec2<f32>(x_3501.x, x_3501.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3505 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3504.x, x_3505.y, x_3504.y, x_3505.w);
            let x_3508 : f32 = u_xlat13.x;
            u_xlat14.y = x_3508;
            let x_3511 : f32 = u_xlat15.y;
            u_xlat14.w = x_3511;
            let x_3513 : vec4<f32> = u_xlat14;
            let x_3514 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3513 + x_3514);
            let x_3516 : vec2<f32> = u_xlat64;
            let x_3519 : vec2<f32> = ((vec2<f32>(x_3516.y, x_3516.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3520 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3520.x, x_3519.x, x_3520.z, x_3519.y);
            let x_3522 : vec2<f32> = u_xlat64;
            let x_3525 : vec2<f32> = ((vec2<f32>(x_3522.y, x_3522.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3526 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3525.x, x_3526.y, x_3525.y, x_3526.w);
            let x_3529 : f32 = u_xlat13.y;
            u_xlat15.y = x_3529;
            let x_3531 : vec4<f32> = u_xlat15;
            let x_3532 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3531 + x_3532);
            let x_3534 : vec4<f32> = u_xlat14;
            let x_3535 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3534 / x_3535);
            let x_3537 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3537 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3539 : vec4<f32> = u_xlat15;
            let x_3540 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3539 / x_3540);
            let x_3542 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3542 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3544 : vec4<f32> = u_xlat14;
            let x_3547 : vec4<f32> = x_850.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3544.w, x_3544.x, x_3544.y, x_3544.z) * vec4<f32>(x_3547.x, x_3547.x, x_3547.x, x_3547.x));
            let x_3550 : vec4<f32> = u_xlat15;
            let x_3553 : vec4<f32> = x_850.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3550.x, x_3550.w, x_3550.y, x_3550.z) * vec4<f32>(x_3553.y, x_3553.y, x_3553.y, x_3553.y));
            let x_3556 : vec4<f32> = u_xlat14;
            let x_3557 : vec3<f32> = vec3<f32>(x_3556.y, x_3556.z, x_3556.w);
            let x_3558 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3557.x, x_3558.y, x_3557.y, x_3557.z);
            let x_3561 : f32 = u_xlat15.x;
            u_xlat17.y = x_3561;
            let x_3563 : vec4<f32> = u_xlat12;
            let x_3566 : vec4<f32> = x_850.x_AdditionalShadowmapSize;
            let x_3569 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3563.x, x_3563.y, x_3563.x, x_3563.y) * vec4<f32>(x_3566.x, x_3566.y, x_3566.x, x_3566.y)) + vec4<f32>(x_3569.x, x_3569.y, x_3569.z, x_3569.y));
            let x_3572 : vec4<f32> = u_xlat12;
            let x_3575 : vec4<f32> = x_850.x_AdditionalShadowmapSize;
            let x_3578 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3572.x, x_3572.y) * vec2<f32>(x_3575.x, x_3575.y)) + vec2<f32>(x_3578.w, x_3578.y));
            let x_3582 : f32 = u_xlat17.y;
            u_xlat14.y = x_3582;
            let x_3585 : f32 = u_xlat15.z;
            u_xlat17.y = x_3585;
            let x_3587 : vec4<f32> = u_xlat12;
            let x_3590 : vec4<f32> = x_850.x_AdditionalShadowmapSize;
            let x_3593 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3587.x, x_3587.y, x_3587.x, x_3587.y) * vec4<f32>(x_3590.x, x_3590.y, x_3590.x, x_3590.y)) + vec4<f32>(x_3593.x, x_3593.y, x_3593.z, x_3593.y));
            let x_3596 : vec4<f32> = u_xlat12;
            let x_3599 : vec4<f32> = x_850.x_AdditionalShadowmapSize;
            let x_3602 : vec4<f32> = u_xlat17;
            let x_3604 : vec2<f32> = ((vec2<f32>(x_3596.x, x_3596.y) * vec2<f32>(x_3599.x, x_3599.y)) + vec2<f32>(x_3602.w, x_3602.y));
            let x_3605 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3604.x, x_3604.y, x_3605.z, x_3605.w);
            let x_3608 : f32 = u_xlat17.y;
            u_xlat14.z = x_3608;
            let x_3611 : vec4<f32> = u_xlat12;
            let x_3614 : vec4<f32> = x_850.x_AdditionalShadowmapSize;
            let x_3617 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3611.x, x_3611.y, x_3611.x, x_3611.y) * vec4<f32>(x_3614.x, x_3614.y, x_3614.x, x_3614.y)) + vec4<f32>(x_3617.x, x_3617.y, x_3617.x, x_3617.z));
            let x_3621 : f32 = u_xlat15.w;
            u_xlat17.y = x_3621;
            let x_3624 : vec4<f32> = u_xlat12;
            let x_3627 : vec4<f32> = x_850.x_AdditionalShadowmapSize;
            let x_3630 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3624.x, x_3624.y, x_3624.x, x_3624.y) * vec4<f32>(x_3627.x, x_3627.y, x_3627.x, x_3627.y)) + vec4<f32>(x_3630.x, x_3630.y, x_3630.z, x_3630.y));
            let x_3634 : vec4<f32> = u_xlat12;
            let x_3637 : vec4<f32> = x_850.x_AdditionalShadowmapSize;
            let x_3640 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3634.x, x_3634.y) * vec2<f32>(x_3637.x, x_3637.y)) + vec2<f32>(x_3640.w, x_3640.y));
            let x_3644 : f32 = u_xlat17.y;
            u_xlat14.w = x_3644;
            let x_3647 : vec4<f32> = u_xlat12;
            let x_3650 : vec4<f32> = x_850.x_AdditionalShadowmapSize;
            let x_3653 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3647.x, x_3647.y) * vec2<f32>(x_3650.x, x_3650.y)) + vec2<f32>(x_3653.x, x_3653.w));
            let x_3656 : vec4<f32> = u_xlat17;
            let x_3657 : vec3<f32> = vec3<f32>(x_3656.x, x_3656.z, x_3656.w);
            let x_3658 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3657.x, x_3658.y, x_3657.y, x_3657.z);
            let x_3660 : vec4<f32> = u_xlat12;
            let x_3663 : vec4<f32> = x_850.x_AdditionalShadowmapSize;
            let x_3666 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3660.x, x_3660.y, x_3660.x, x_3660.y) * vec4<f32>(x_3663.x, x_3663.y, x_3663.x, x_3663.y)) + vec4<f32>(x_3666.x, x_3666.y, x_3666.z, x_3666.y));
            let x_3670 : vec4<f32> = u_xlat12;
            let x_3673 : vec4<f32> = x_850.x_AdditionalShadowmapSize;
            let x_3676 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3670.x, x_3670.y) * vec2<f32>(x_3673.x, x_3673.y)) + vec2<f32>(x_3676.w, x_3676.y));
            let x_3680 : f32 = u_xlat14.x;
            u_xlat15.x = x_3680;
            let x_3682 : vec4<f32> = u_xlat12;
            let x_3685 : vec4<f32> = x_850.x_AdditionalShadowmapSize;
            let x_3688 : vec4<f32> = u_xlat15;
            let x_3690 : vec2<f32> = ((vec2<f32>(x_3682.x, x_3682.y) * vec2<f32>(x_3685.x, x_3685.y)) + vec2<f32>(x_3688.x, x_3688.y));
            let x_3691 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3690.x, x_3690.y, x_3691.z, x_3691.w);
            let x_3694 : vec4<f32> = u_xlat13;
            let x_3696 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3694.x, x_3694.x, x_3694.x, x_3694.x) * x_3696);
            let x_3699 : vec4<f32> = u_xlat13;
            let x_3701 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3699.y, x_3699.y, x_3699.y, x_3699.y) * x_3701);
            let x_3704 : vec4<f32> = u_xlat13;
            let x_3706 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3704.z, x_3704.z, x_3704.z, x_3704.z) * x_3706);
            let x_3708 : vec4<f32> = u_xlat13;
            let x_3710 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3708.w, x_3708.w, x_3708.w, x_3708.w) * x_3710);
            let x_3713 : vec4<f32> = u_xlat18;
            let x_3714 : vec2<f32> = vec2<f32>(x_3713.x, x_3713.y);
            let x_3716 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3714.x, x_3714.y, x_3716);
            let x_3723 : vec3<f32> = txVec43;
            let x_3725 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3723.xy, x_3723.z);
            u_xlat86 = x_3725;
            let x_3727 : vec4<f32> = u_xlat18;
            let x_3728 : vec2<f32> = vec2<f32>(x_3727.z, x_3727.w);
            let x_3730 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3728.x, x_3728.y, x_3730);
            let x_3737 : vec3<f32> = txVec44;
            let x_3739 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3737.xy, x_3737.z);
            u_xlat87 = x_3739;
            let x_3740 : f32 = u_xlat87;
            let x_3742 : f32 = u_xlat23.y;
            u_xlat87 = (x_3740 * x_3742);
            let x_3745 : f32 = u_xlat23.x;
            let x_3746 : f32 = u_xlat86;
            let x_3748 : f32 = u_xlat87;
            u_xlat86 = ((x_3745 * x_3746) + x_3748);
            let x_3751 : vec2<f32> = u_xlat64;
            let x_3753 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3751.x, x_3751.y, x_3753);
            let x_3760 : vec3<f32> = txVec45;
            let x_3762 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3760.xy, x_3760.z);
            u_xlat87 = x_3762;
            let x_3764 : f32 = u_xlat23.z;
            let x_3765 : f32 = u_xlat87;
            let x_3767 : f32 = u_xlat86;
            u_xlat86 = ((x_3764 * x_3765) + x_3767);
            let x_3770 : vec4<f32> = u_xlat21;
            let x_3771 : vec2<f32> = vec2<f32>(x_3770.x, x_3770.y);
            let x_3773 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3771.x, x_3771.y, x_3773);
            let x_3780 : vec3<f32> = txVec46;
            let x_3782 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3780.xy, x_3780.z);
            u_xlat87 = x_3782;
            let x_3784 : f32 = u_xlat23.w;
            let x_3785 : f32 = u_xlat87;
            let x_3787 : f32 = u_xlat86;
            u_xlat86 = ((x_3784 * x_3785) + x_3787);
            let x_3790 : vec4<f32> = u_xlat19;
            let x_3791 : vec2<f32> = vec2<f32>(x_3790.x, x_3790.y);
            let x_3793 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3791.x, x_3791.y, x_3793);
            let x_3800 : vec3<f32> = txVec47;
            let x_3802 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3800.xy, x_3800.z);
            u_xlat87 = x_3802;
            let x_3804 : f32 = u_xlat24.x;
            let x_3805 : f32 = u_xlat87;
            let x_3807 : f32 = u_xlat86;
            u_xlat86 = ((x_3804 * x_3805) + x_3807);
            let x_3810 : vec4<f32> = u_xlat19;
            let x_3811 : vec2<f32> = vec2<f32>(x_3810.z, x_3810.w);
            let x_3813 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3811.x, x_3811.y, x_3813);
            let x_3820 : vec3<f32> = txVec48;
            let x_3822 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3820.xy, x_3820.z);
            u_xlat87 = x_3822;
            let x_3824 : f32 = u_xlat24.y;
            let x_3825 : f32 = u_xlat87;
            let x_3827 : f32 = u_xlat86;
            u_xlat86 = ((x_3824 * x_3825) + x_3827);
            let x_3830 : vec4<f32> = u_xlat20;
            let x_3831 : vec2<f32> = vec2<f32>(x_3830.x, x_3830.y);
            let x_3833 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3831.x, x_3831.y, x_3833);
            let x_3840 : vec3<f32> = txVec49;
            let x_3842 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3840.xy, x_3840.z);
            u_xlat87 = x_3842;
            let x_3844 : f32 = u_xlat24.z;
            let x_3845 : f32 = u_xlat87;
            let x_3847 : f32 = u_xlat86;
            u_xlat86 = ((x_3844 * x_3845) + x_3847);
            let x_3850 : vec4<f32> = u_xlat21;
            let x_3851 : vec2<f32> = vec2<f32>(x_3850.z, x_3850.w);
            let x_3853 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3851.x, x_3851.y, x_3853);
            let x_3860 : vec3<f32> = txVec50;
            let x_3862 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3860.xy, x_3860.z);
            u_xlat87 = x_3862;
            let x_3864 : f32 = u_xlat24.w;
            let x_3865 : f32 = u_xlat87;
            let x_3867 : f32 = u_xlat86;
            u_xlat86 = ((x_3864 * x_3865) + x_3867);
            let x_3870 : vec4<f32> = u_xlat22;
            let x_3871 : vec2<f32> = vec2<f32>(x_3870.x, x_3870.y);
            let x_3873 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3871.x, x_3871.y, x_3873);
            let x_3880 : vec3<f32> = txVec51;
            let x_3882 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3880.xy, x_3880.z);
            u_xlat87 = x_3882;
            let x_3884 : f32 = u_xlat25.x;
            let x_3885 : f32 = u_xlat87;
            let x_3887 : f32 = u_xlat86;
            u_xlat86 = ((x_3884 * x_3885) + x_3887);
            let x_3890 : vec4<f32> = u_xlat22;
            let x_3891 : vec2<f32> = vec2<f32>(x_3890.z, x_3890.w);
            let x_3893 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3891.x, x_3891.y, x_3893);
            let x_3900 : vec3<f32> = txVec52;
            let x_3902 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3900.xy, x_3900.z);
            u_xlat87 = x_3902;
            let x_3904 : f32 = u_xlat25.y;
            let x_3905 : f32 = u_xlat87;
            let x_3907 : f32 = u_xlat86;
            u_xlat86 = ((x_3904 * x_3905) + x_3907);
            let x_3910 : vec2<f32> = u_xlat40;
            let x_3912 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3910.x, x_3910.y, x_3912);
            let x_3919 : vec3<f32> = txVec53;
            let x_3921 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3919.xy, x_3919.z);
            u_xlat87 = x_3921;
            let x_3923 : f32 = u_xlat25.z;
            let x_3924 : f32 = u_xlat87;
            let x_3926 : f32 = u_xlat86;
            u_xlat86 = ((x_3923 * x_3924) + x_3926);
            let x_3929 : vec2<f32> = u_xlat72;
            let x_3931 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3929.x, x_3929.y, x_3931);
            let x_3938 : vec3<f32> = txVec54;
            let x_3940 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3938.xy, x_3938.z);
            u_xlat87 = x_3940;
            let x_3942 : f32 = u_xlat25.w;
            let x_3943 : f32 = u_xlat87;
            let x_3945 : f32 = u_xlat86;
            u_xlat86 = ((x_3942 * x_3943) + x_3945);
            let x_3948 : vec4<f32> = u_xlat17;
            let x_3949 : vec2<f32> = vec2<f32>(x_3948.x, x_3948.y);
            let x_3951 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3949.x, x_3949.y, x_3951);
            let x_3958 : vec3<f32> = txVec55;
            let x_3960 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3958.xy, x_3958.z);
            u_xlat87 = x_3960;
            let x_3962 : f32 = u_xlat13.x;
            let x_3963 : f32 = u_xlat87;
            let x_3965 : f32 = u_xlat86;
            u_xlat86 = ((x_3962 * x_3963) + x_3965);
            let x_3968 : vec4<f32> = u_xlat17;
            let x_3969 : vec2<f32> = vec2<f32>(x_3968.z, x_3968.w);
            let x_3971 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3969.x, x_3969.y, x_3971);
            let x_3978 : vec3<f32> = txVec56;
            let x_3980 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3978.xy, x_3978.z);
            u_xlat87 = x_3980;
            let x_3982 : f32 = u_xlat13.y;
            let x_3983 : f32 = u_xlat87;
            let x_3985 : f32 = u_xlat86;
            u_xlat86 = ((x_3982 * x_3983) + x_3985);
            let x_3988 : vec2<f32> = u_xlat67;
            let x_3990 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3988.x, x_3988.y, x_3990);
            let x_3997 : vec3<f32> = txVec57;
            let x_3999 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3997.xy, x_3997.z);
            u_xlat87 = x_3999;
            let x_4001 : f32 = u_xlat13.z;
            let x_4002 : f32 = u_xlat87;
            let x_4004 : f32 = u_xlat86;
            u_xlat86 = ((x_4001 * x_4002) + x_4004);
            let x_4007 : vec4<f32> = u_xlat12;
            let x_4008 : vec2<f32> = vec2<f32>(x_4007.x, x_4007.y);
            let x_4010 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_4008.x, x_4008.y, x_4010);
            let x_4017 : vec3<f32> = txVec58;
            let x_4019 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4017.xy, x_4017.z);
            u_xlat87 = x_4019;
            let x_4021 : f32 = u_xlat13.w;
            let x_4022 : f32 = u_xlat87;
            let x_4024 : f32 = u_xlat86;
            u_xlat85 = ((x_4021 * x_4022) + x_4024);
          }
        }
      } else {
        let x_4028 : vec4<f32> = u_xlat11;
        let x_4029 : vec2<f32> = vec2<f32>(x_4028.x, x_4028.y);
        let x_4031 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_4029.x, x_4029.y, x_4031);
        let x_4038 : vec3<f32> = txVec59;
        let x_4040 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4038.xy, x_4038.z);
        u_xlat85 = x_4040;
      }
      let x_4041 : i32 = u_xlati83;
      let x_4043 : f32 = x_850.x_AdditionalShadowParams[x_4041].x;
      u_xlat86 = (1.0f + -(x_4043));
      let x_4046 : f32 = u_xlat85;
      let x_4047 : i32 = u_xlati83;
      let x_4049 : f32 = x_850.x_AdditionalShadowParams[x_4047].x;
      let x_4051 : f32 = u_xlat86;
      u_xlat85 = ((x_4046 * x_4049) + x_4051);
      let x_4054 : f32 = u_xlat11.z;
      u_xlatb86 = (0.0f >= x_4054);
      let x_4058 : f32 = u_xlat11.z;
      u_xlatb87 = (x_4058 >= 1.0f);
      let x_4060 : bool = u_xlatb86;
      let x_4061 : bool = u_xlatb87;
      u_xlatb86 = (x_4060 | x_4061);
      let x_4063 : bool = u_xlatb86;
      let x_4064 : f32 = u_xlat85;
      u_xlat85 = select(x_4064, 1.0f, x_4063);
    } else {
      u_xlat85 = 1.0f;
    }
    let x_4067 : f32 = u_xlat85;
    u_xlat86 = (-(x_4067) + 1.0f);
    let x_4070 : f32 = u_xlat28;
    let x_4071 : f32 = u_xlat86;
    let x_4073 : f32 = u_xlat85;
    u_xlat85 = ((x_4070 * x_4071) + x_4073);
    let x_4076 : i32 = u_xlati83;
    u_xlati86 = (1i << bitcast<u32>((x_4076 & 31i)));
    let x_4080 : i32 = u_xlati86;
    let x_4083 : f32 = x_2162.x_AdditionalLightsCookieEnableBits;
    u_xlati86 = bitcast<i32>((bitcast<u32>(x_4080) & bitcast<u32>(x_4083)));
    let x_4087 : i32 = u_xlati86;
    if ((x_4087 != 0i)) {
      let x_4091 : i32 = u_xlati83;
      let x_4093 : f32 = x_2162.x_AdditionalLightsLightTypes[x_4091].el;
      u_xlati86 = i32(x_4093);
      let x_4096 : i32 = u_xlati86;
      u_xlati87 = select(1i, 0i, (x_4096 != 0i));
      let x_4100 : i32 = u_xlati83;
      u_xlati88 = (x_4100 << bitcast<u32>(2i));
      let x_4102 : i32 = u_xlati87;
      if ((x_4102 != 0i)) {
        let x_4106 : vec3<f32> = vs_INTERP7;
        let x_4108 : i32 = u_xlati88;
        let x_4111 : i32 = u_xlati88;
        let x_4115 : vec4<f32> = x_2162.x_AdditionalLightsWorldToLights[((x_4108 + 1i) / 4i)][((x_4111 + 1i) % 4i)];
        let x_4117 : vec3<f32> = (vec3<f32>(x_4106.y, x_4106.y, x_4106.y) * vec3<f32>(x_4115.x, x_4115.y, x_4115.w));
        let x_4118 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4117.x, x_4117.y, x_4117.z, x_4118.w);
        let x_4120 : i32 = u_xlati88;
        let x_4122 : i32 = u_xlati88;
        let x_4125 : vec4<f32> = x_2162.x_AdditionalLightsWorldToLights[(x_4120 / 4i)][(x_4122 % 4i)];
        let x_4127 : vec3<f32> = vs_INTERP7;
        let x_4130 : vec4<f32> = u_xlat11;
        let x_4132 : vec3<f32> = ((vec3<f32>(x_4125.x, x_4125.y, x_4125.w) * vec3<f32>(x_4127.x, x_4127.x, x_4127.x)) + vec3<f32>(x_4130.x, x_4130.y, x_4130.z));
        let x_4133 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4132.x, x_4132.y, x_4132.z, x_4133.w);
        let x_4135 : i32 = u_xlati88;
        let x_4138 : i32 = u_xlati88;
        let x_4142 : vec4<f32> = x_2162.x_AdditionalLightsWorldToLights[((x_4135 + 2i) / 4i)][((x_4138 + 2i) % 4i)];
        let x_4144 : vec3<f32> = vs_INTERP7;
        let x_4147 : vec4<f32> = u_xlat11;
        let x_4149 : vec3<f32> = ((vec3<f32>(x_4142.x, x_4142.y, x_4142.w) * vec3<f32>(x_4144.z, x_4144.z, x_4144.z)) + vec3<f32>(x_4147.x, x_4147.y, x_4147.z));
        let x_4150 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4149.x, x_4149.y, x_4149.z, x_4150.w);
        let x_4152 : vec4<f32> = u_xlat11;
        let x_4154 : i32 = u_xlati88;
        let x_4157 : i32 = u_xlati88;
        let x_4161 : vec4<f32> = x_2162.x_AdditionalLightsWorldToLights[((x_4154 + 3i) / 4i)][((x_4157 + 3i) % 4i)];
        let x_4163 : vec3<f32> = (vec3<f32>(x_4152.x, x_4152.y, x_4152.z) + vec3<f32>(x_4161.x, x_4161.y, x_4161.w));
        let x_4164 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4163.x, x_4163.y, x_4163.z, x_4164.w);
        let x_4166 : vec4<f32> = u_xlat11;
        let x_4168 : vec4<f32> = u_xlat11;
        let x_4170 : vec2<f32> = (vec2<f32>(x_4166.x, x_4166.y) / vec2<f32>(x_4168.z, x_4168.z));
        let x_4171 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4170.x, x_4170.y, x_4171.z, x_4171.w);
        let x_4173 : vec4<f32> = u_xlat11;
        let x_4176 : vec2<f32> = ((vec2<f32>(x_4173.x, x_4173.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_4177 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4176.x, x_4176.y, x_4177.z, x_4177.w);
        let x_4179 : vec4<f32> = u_xlat11;
        let x_4183 : vec2<f32> = clamp(vec2<f32>(x_4179.x, x_4179.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_4184 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4183.x, x_4183.y, x_4184.z, x_4184.w);
        let x_4186 : i32 = u_xlati83;
        let x_4188 : vec4<f32> = x_2162.x_AdditionalLightsCookieAtlasUVRects[x_4186];
        let x_4190 : vec4<f32> = u_xlat11;
        let x_4193 : i32 = u_xlati83;
        let x_4195 : vec4<f32> = x_2162.x_AdditionalLightsCookieAtlasUVRects[x_4193];
        let x_4197 : vec2<f32> = ((vec2<f32>(x_4188.x, x_4188.y) * vec2<f32>(x_4190.x, x_4190.y)) + vec2<f32>(x_4195.z, x_4195.w));
        let x_4198 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4197.x, x_4197.y, x_4198.z, x_4198.w);
      } else {
        let x_4201 : i32 = u_xlati86;
        u_xlatb86 = (x_4201 == 1i);
        let x_4203 : bool = u_xlatb86;
        u_xlati86 = select(0i, 1i, x_4203);
        let x_4205 : i32 = u_xlati86;
        if ((x_4205 != 0i)) {
          let x_4210 : vec3<f32> = vs_INTERP7;
          let x_4212 : i32 = u_xlati88;
          let x_4215 : i32 = u_xlati88;
          let x_4219 : vec4<f32> = x_2162.x_AdditionalLightsWorldToLights[((x_4212 + 1i) / 4i)][((x_4215 + 1i) % 4i)];
          u_xlat63 = (vec2<f32>(x_4210.y, x_4210.y) * vec2<f32>(x_4219.x, x_4219.y));
          let x_4222 : i32 = u_xlati88;
          let x_4224 : i32 = u_xlati88;
          let x_4227 : vec4<f32> = x_2162.x_AdditionalLightsWorldToLights[(x_4222 / 4i)][(x_4224 % 4i)];
          let x_4229 : vec3<f32> = vs_INTERP7;
          let x_4232 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4227.x, x_4227.y) * vec2<f32>(x_4229.x, x_4229.x)) + x_4232);
          let x_4234 : i32 = u_xlati88;
          let x_4237 : i32 = u_xlati88;
          let x_4241 : vec4<f32> = x_2162.x_AdditionalLightsWorldToLights[((x_4234 + 2i) / 4i)][((x_4237 + 2i) % 4i)];
          let x_4243 : vec3<f32> = vs_INTERP7;
          let x_4246 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4241.x, x_4241.y) * vec2<f32>(x_4243.z, x_4243.z)) + x_4246);
          let x_4248 : vec2<f32> = u_xlat63;
          let x_4249 : i32 = u_xlati88;
          let x_4252 : i32 = u_xlati88;
          let x_4256 : vec4<f32> = x_2162.x_AdditionalLightsWorldToLights[((x_4249 + 3i) / 4i)][((x_4252 + 3i) % 4i)];
          u_xlat63 = (x_4248 + vec2<f32>(x_4256.x, x_4256.y));
          let x_4259 : vec2<f32> = u_xlat63;
          u_xlat63 = ((x_4259 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4262 : vec2<f32> = u_xlat63;
          u_xlat63 = fract(x_4262);
          let x_4264 : i32 = u_xlati83;
          let x_4266 : vec4<f32> = x_2162.x_AdditionalLightsCookieAtlasUVRects[x_4264];
          let x_4268 : vec2<f32> = u_xlat63;
          let x_4270 : i32 = u_xlati83;
          let x_4272 : vec4<f32> = x_2162.x_AdditionalLightsCookieAtlasUVRects[x_4270];
          let x_4274 : vec2<f32> = ((vec2<f32>(x_4266.x, x_4266.y) * x_4268) + vec2<f32>(x_4272.z, x_4272.w));
          let x_4275 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4274.x, x_4274.y, x_4275.z, x_4275.w);
        } else {
          let x_4278 : vec3<f32> = vs_INTERP7;
          let x_4280 : i32 = u_xlati88;
          let x_4283 : i32 = u_xlati88;
          let x_4287 : vec4<f32> = x_2162.x_AdditionalLightsWorldToLights[((x_4280 + 1i) / 4i)][((x_4283 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_4278.y, x_4278.y, x_4278.y, x_4278.y) * x_4287);
          let x_4289 : i32 = u_xlati88;
          let x_4291 : i32 = u_xlati88;
          let x_4294 : vec4<f32> = x_2162.x_AdditionalLightsWorldToLights[(x_4289 / 4i)][(x_4291 % 4i)];
          let x_4295 : vec3<f32> = vs_INTERP7;
          let x_4298 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4294 * vec4<f32>(x_4295.x, x_4295.x, x_4295.x, x_4295.x)) + x_4298);
          let x_4300 : i32 = u_xlati88;
          let x_4303 : i32 = u_xlati88;
          let x_4307 : vec4<f32> = x_2162.x_AdditionalLightsWorldToLights[((x_4300 + 2i) / 4i)][((x_4303 + 2i) % 4i)];
          let x_4308 : vec3<f32> = vs_INTERP7;
          let x_4311 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4307 * vec4<f32>(x_4308.z, x_4308.z, x_4308.z, x_4308.z)) + x_4311);
          let x_4313 : vec4<f32> = u_xlat12;
          let x_4314 : i32 = u_xlati88;
          let x_4317 : i32 = u_xlati88;
          let x_4321 : vec4<f32> = x_2162.x_AdditionalLightsWorldToLights[((x_4314 + 3i) / 4i)][((x_4317 + 3i) % 4i)];
          u_xlat12 = (x_4313 + x_4321);
          let x_4323 : vec4<f32> = u_xlat12;
          let x_4325 : vec4<f32> = u_xlat12;
          let x_4327 : vec3<f32> = (vec3<f32>(x_4323.x, x_4323.y, x_4323.z) / vec3<f32>(x_4325.w, x_4325.w, x_4325.w));
          let x_4328 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4327.x, x_4327.y, x_4327.z, x_4328.w);
          let x_4330 : vec4<f32> = u_xlat12;
          let x_4332 : vec4<f32> = u_xlat12;
          u_xlat86 = dot(vec3<f32>(x_4330.x, x_4330.y, x_4330.z), vec3<f32>(x_4332.x, x_4332.y, x_4332.z));
          let x_4335 : f32 = u_xlat86;
          u_xlat86 = inverseSqrt(x_4335);
          let x_4337 : f32 = u_xlat86;
          let x_4339 : vec4<f32> = u_xlat12;
          let x_4341 : vec3<f32> = (vec3<f32>(x_4337, x_4337, x_4337) * vec3<f32>(x_4339.x, x_4339.y, x_4339.z));
          let x_4342 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4341.x, x_4341.y, x_4341.z, x_4342.w);
          let x_4344 : vec4<f32> = u_xlat12;
          u_xlat86 = dot(abs(vec3<f32>(x_4344.x, x_4344.y, x_4344.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_4349 : f32 = u_xlat86;
          u_xlat86 = max(x_4349, 0.00000099999999747524f);
          let x_4352 : f32 = u_xlat86;
          u_xlat86 = (1.0f / x_4352);
          let x_4354 : f32 = u_xlat86;
          let x_4356 : vec4<f32> = u_xlat12;
          let x_4358 : vec3<f32> = (vec3<f32>(x_4354, x_4354, x_4354) * vec3<f32>(x_4356.z, x_4356.x, x_4356.y));
          let x_4359 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_4358.x, x_4358.y, x_4358.z, x_4359.w);
          let x_4362 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_4362);
          let x_4366 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_4366, 0.0f, 1.0f);
          let x_4370 : vec4<f32> = u_xlat13;
          let x_4372 : vec4<bool> = (vec4<f32>(x_4370.y, x_4370.z, x_4370.y, x_4370.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb63 = vec2<bool>(x_4372.x, x_4372.y);
          let x_4375 : bool = u_xlatb63.x;
          if (x_4375) {
            let x_4380 : f32 = u_xlat13.x;
            x_4376 = x_4380;
          } else {
            let x_4383 : f32 = u_xlat13.x;
            x_4376 = -(x_4383);
          }
          let x_4385 : f32 = x_4376;
          u_xlat63.x = x_4385;
          let x_4388 : bool = u_xlatb63.y;
          if (x_4388) {
            let x_4393 : f32 = u_xlat13.x;
            x_4389 = x_4393;
          } else {
            let x_4396 : f32 = u_xlat13.x;
            x_4389 = -(x_4396);
          }
          let x_4398 : f32 = x_4389;
          u_xlat63.y = x_4398;
          let x_4400 : vec4<f32> = u_xlat12;
          let x_4402 : f32 = u_xlat86;
          let x_4405 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4400.x, x_4400.y) * vec2<f32>(x_4402, x_4402)) + x_4405);
          let x_4407 : vec2<f32> = u_xlat63;
          u_xlat63 = ((x_4407 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4410 : vec2<f32> = u_xlat63;
          u_xlat63 = clamp(x_4410, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4414 : i32 = u_xlati83;
          let x_4416 : vec4<f32> = x_2162.x_AdditionalLightsCookieAtlasUVRects[x_4414];
          let x_4418 : vec2<f32> = u_xlat63;
          let x_4420 : i32 = u_xlati83;
          let x_4422 : vec4<f32> = x_2162.x_AdditionalLightsCookieAtlasUVRects[x_4420];
          let x_4424 : vec2<f32> = ((vec2<f32>(x_4416.x, x_4416.y) * x_4418) + vec2<f32>(x_4422.z, x_4422.w));
          let x_4425 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4424.x, x_4424.y, x_4425.z, x_4425.w);
        }
      }
      let x_4432 : vec4<f32> = u_xlat11;
      let x_4434 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4432.x, x_4432.y), 0.0f);
      u_xlat11 = x_4434;
      let x_4436 : bool = u_xlatb7.y;
      if (x_4436) {
        let x_4441 : f32 = u_xlat11.w;
        x_4437 = x_4441;
      } else {
        let x_4444 : f32 = u_xlat11.x;
        x_4437 = x_4444;
      }
      let x_4445 : f32 = x_4437;
      u_xlat86 = x_4445;
      let x_4447 : bool = u_xlatb7.x;
      if (x_4447) {
        let x_4451 : vec4<f32> = u_xlat11;
        x_4448 = vec3<f32>(x_4451.x, x_4451.y, x_4451.z);
      } else {
        let x_4454 : f32 = u_xlat86;
        x_4448 = vec3<f32>(x_4454, x_4454, x_4454);
      }
      let x_4456 : vec3<f32> = x_4448;
      let x_4457 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4456.x, x_4456.y, x_4456.z, x_4457.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4463 : vec4<f32> = u_xlat11;
    let x_4465 : i32 = u_xlati83;
    let x_4467 : vec4<f32> = x_2654.x_AdditionalLightsColor[x_4465];
    let x_4469 : vec3<f32> = (vec3<f32>(x_4463.x, x_4463.y, x_4463.z) * vec3<f32>(x_4467.x, x_4467.y, x_4467.z));
    let x_4470 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4469.x, x_4469.y, x_4469.z, x_4470.w);
    let x_4472 : f32 = u_xlat84;
    let x_4473 : f32 = u_xlat85;
    u_xlat83 = (x_4472 * x_4473);
    let x_4475 : vec4<f32> = u_xlat4;
    let x_4477 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(vec3<f32>(x_4475.x, x_4475.y, x_4475.z), vec3<f32>(x_4477.x, x_4477.y, x_4477.z));
    let x_4480 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4480, 0.0f, 1.0f);
    let x_4482 : f32 = u_xlat83;
    let x_4483 : f32 = u_xlat84;
    u_xlat83 = (x_4482 * x_4483);
    let x_4485 : f32 = u_xlat83;
    let x_4487 : vec4<f32> = u_xlat11;
    let x_4489 : vec3<f32> = (vec3<f32>(x_4485, x_4485, x_4485) * vec3<f32>(x_4487.x, x_4487.y, x_4487.z));
    let x_4490 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4489.x, x_4489.y, x_4489.z, x_4490.w);
    let x_4492 : vec4<f32> = u_xlat9;
    let x_4494 : f32 = u_xlat59;
    let x_4497 : vec3<f32> = u_xlat26;
    let x_4498 : vec3<f32> = ((vec3<f32>(x_4492.x, x_4492.y, x_4492.z) * vec3<f32>(x_4494, x_4494, x_4494)) + x_4497);
    let x_4499 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4498.x, x_4498.y, x_4498.z, x_4499.w);
    let x_4501 : vec4<f32> = u_xlat9;
    let x_4503 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_4501.x, x_4501.y, x_4501.z), vec3<f32>(x_4503.x, x_4503.y, x_4503.z));
    let x_4506 : f32 = u_xlat83;
    u_xlat83 = max(x_4506, 1.17549435e-38f);
    let x_4508 : f32 = u_xlat83;
    u_xlat83 = inverseSqrt(x_4508);
    let x_4510 : f32 = u_xlat83;
    let x_4512 : vec4<f32> = u_xlat9;
    let x_4514 : vec3<f32> = (vec3<f32>(x_4510, x_4510, x_4510) * vec3<f32>(x_4512.x, x_4512.y, x_4512.z));
    let x_4515 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4514.x, x_4514.y, x_4514.z, x_4515.w);
    let x_4517 : vec4<f32> = u_xlat4;
    let x_4519 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_4517.x, x_4517.y, x_4517.z), vec3<f32>(x_4519.x, x_4519.y, x_4519.z));
    let x_4522 : f32 = u_xlat83;
    u_xlat83 = clamp(x_4522, 0.0f, 1.0f);
    let x_4524 : vec4<f32> = u_xlat10;
    let x_4526 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_4524.x, x_4524.y, x_4524.z), vec3<f32>(x_4526.x, x_4526.y, x_4526.z));
    let x_4529 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4529, 0.0f, 1.0f);
    let x_4531 : f32 = u_xlat83;
    let x_4532 : f32 = u_xlat83;
    u_xlat83 = (x_4531 * x_4532);
    let x_4534 : f32 = u_xlat83;
    let x_4536 : f32 = u_xlat2.x;
    u_xlat83 = ((x_4534 * x_4536) + 1.00001001358032226562f);
    let x_4539 : f32 = u_xlat84;
    let x_4540 : f32 = u_xlat84;
    u_xlat84 = (x_4539 * x_4540);
    let x_4542 : f32 = u_xlat83;
    let x_4543 : f32 = u_xlat83;
    u_xlat83 = (x_4542 * x_4543);
    let x_4545 : f32 = u_xlat84;
    u_xlat84 = max(x_4545, 0.10000000149011611938f);
    let x_4547 : f32 = u_xlat83;
    let x_4548 : f32 = u_xlat84;
    u_xlat83 = (x_4547 * x_4548);
    let x_4550 : f32 = u_xlat80;
    let x_4551 : f32 = u_xlat83;
    u_xlat83 = (x_4550 * x_4551);
    let x_4553 : f32 = u_xlat54;
    let x_4554 : f32 = u_xlat83;
    u_xlat83 = (x_4553 / x_4554);
    let x_4556 : vec3<f32> = u_xlat27;
    let x_4557 : f32 = u_xlat83;
    let x_4560 : vec3<f32> = u_xlat3;
    let x_4561 : vec3<f32> = ((x_4556 * vec3<f32>(x_4557, x_4557, x_4557)) + x_4560);
    let x_4562 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4561.x, x_4561.y, x_4561.z, x_4562.w);
    let x_4564 : vec4<f32> = u_xlat9;
    let x_4566 : vec4<f32> = u_xlat11;
    let x_4569 : vec4<f32> = u_xlat8;
    let x_4571 : vec3<f32> = ((vec3<f32>(x_4564.x, x_4564.y, x_4564.z) * vec3<f32>(x_4566.x, x_4566.y, x_4566.z)) + vec3<f32>(x_4569.x, x_4569.y, x_4569.z));
    let x_4572 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4571.x, x_4571.y, x_4571.z, x_4572.w);

    continuing {
      let x_4574 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4574 + bitcast<u32>(1i));
    }
  }
  let x_4576 : vec3<f32> = u_xlat5;
  let x_4577 : f32 = u_xlat81;
  let x_4580 : vec4<f32> = u_xlat6;
  let x_4582 : vec3<f32> = ((x_4576 * vec3<f32>(x_4577, x_4577, x_4577)) + vec3<f32>(x_4580.x, x_4580.y, x_4580.z));
  let x_4583 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4582.x, x_4582.y, x_4582.z, x_4583.w);
  let x_4585 : vec4<f32> = u_xlat8;
  let x_4587 : vec4<f32> = u_xlat0;
  let x_4589 : vec3<f32> = (vec3<f32>(x_4585.x, x_4585.y, x_4585.z) + vec3<f32>(x_4587.x, x_4587.y, x_4587.z));
  let x_4590 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4589.x, x_4589.y, x_4589.z, x_4590.w);
  let x_4594 : f32 = u_xlat1.x;
  let x_4596 : f32 = u_xlat1.x;
  u_xlat78 = (x_4594 * -(x_4596));
  let x_4599 : f32 = u_xlat78;
  u_xlat78 = exp2(x_4599);
  let x_4601 : vec4<f32> = u_xlat0;
  let x_4604 : vec4<f32> = x_135.unity_FogColor;
  let x_4607 : vec3<f32> = (vec3<f32>(x_4601.x, x_4601.y, x_4601.z) + -(vec3<f32>(x_4604.x, x_4604.y, x_4604.z)));
  let x_4608 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4607.x, x_4607.y, x_4607.z, x_4608.w);
  let x_4612 : f32 = u_xlat78;
  let x_4614 : vec4<f32> = u_xlat0;
  let x_4618 : vec4<f32> = x_135.unity_FogColor;
  let x_4620 : vec3<f32> = ((vec3<f32>(x_4612, x_4612, x_4612) * vec3<f32>(x_4614.x, x_4614.y, x_4614.z)) + vec3<f32>(x_4618.x, x_4618.y, x_4618.z));
  let x_4621 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4620.x, x_4620.y, x_4620.z, x_4621.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(4) vs_INTERP8_param : vec3<f32>, @location(1) vs_INTERP4_param : vec4<f32>, @location(2) vs_INTERP5_param : vec4<f32>, @location(3) vs_INTERP7_param : vec3<f32>, @location(0) vs_INTERP3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP7 = vs_INTERP7_param;
  vs_INTERP3 = vs_INTERP3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


