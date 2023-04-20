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

var<private> u_xlat27 : vec2<f32>;

var<private> u_xlat30 : vec3<f32>;

@group(0) @binding(8) var Texture2D_C005B064 : texture_2d<f32>;

@group(0) @binding(17) var samplerTexture2D_C005B064 : sampler;

@group(0) @binding(5) var x_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1_Texture2D : texture_2d<f32>;

@group(0) @binding(14) var sampler_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1_Texture2D : sampler;

var<private> u_xlat52 : f32;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat29 : f32;

var<private> u_xlat55 : f32;

var<private> u_xlatb81 : bool;

@group(1) @binding(3) var<uniform> x_808 : LightShadows;

var<private> vs_INTERP3 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb82 : bool;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat83 : f32;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat34 : vec3<f32>;

var<private> u_xlat66 : vec2<f32>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlatb83 : bool;

@group(1) @binding(4) var<uniform> x_2092 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlat84 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat78 : f32;

var<private> u_xlatu78 : u32;

var<private> u_xlatu81 : u32;

var<private> u_xlati82 : i32;

var<private> u_xlati81 : i32;

@group(1) @binding(1) var<uniform> x_2533 : AdditionalLights;

var<private> u_xlati84 : i32;

var<private> u_xlatb59 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat85 : f32;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlatb84 : bool;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat87 : f32;

var<private> u_xlat70 : vec2<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat39 : vec2<f32>;

var<private> u_xlat22 : vec2<f32>;

var<private> u_xlat67 : vec2<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlat25 : vec4<f32>;

var<private> u_xlat88 : f32;

var<private> u_xlatb85 : bool;

var<private> u_xlati59 : i32;

var<private> u_xlati85 : i32;

var<private> u_xlati87 : i32;

var<private> u_xlatb63 : vec2<bool>;

var<private> u_xlat63 : vec2<f32>;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu80 : u32;

fn main_1() {
  var x_639 : f32;
  var x_652 : f32;
  var x_664 : f32;
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
  var x_2174 : f32;
  var x_2185 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2668 : f32;
  var x_2678 : f32;
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
  var x_4272 : f32;
  var x_4285 : f32;
  var x_4333 : f32;
  var x_4345 : vec3<f32>;
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
  let x_311 : f32 = u_xlat1.x;
  u_xlat27.x = ((x_311 * -2.0f) + 3.0f);
  let x_316 : f32 = u_xlat1.x;
  let x_318 : f32 = u_xlat1.x;
  u_xlat1.x = (x_316 * x_318);
  let x_322 : f32 = u_xlat1.x;
  let x_324 : f32 = u_xlat27.x;
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
  u_xlat30 = vec3<f32>(x_365.x, x_365.y, x_365.w);
  let x_368 : f32 = u_xlat30.x;
  let x_370 : f32 = u_xlat30.z;
  u_xlat30.x = (x_368 * x_370);
  let x_373 : vec3<f32> = u_xlat30;
  let x_378 : vec2<f32> = ((vec2<f32>(x_373.x, x_373.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_379 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_378.x, x_378.y, x_379.z);
  let x_381 : vec3<f32> = u_xlat5;
  let x_383 : vec3<f32> = u_xlat5;
  u_xlat27.x = dot(vec2<f32>(x_381.x, x_381.y), vec2<f32>(x_383.x, x_383.y));
  let x_388 : f32 = u_xlat27.x;
  u_xlat27.x = min(x_388, 1.0f);
  let x_392 : f32 = u_xlat27.x;
  u_xlat27.x = (-(x_392) + 1.0f);
  let x_397 : f32 = u_xlat27.x;
  u_xlat27.x = sqrt(x_397);
  let x_401 : f32 = u_xlat27.x;
  u_xlat5.z = max(x_401, 0.0000000000000001f);
  let x_407 : vec4<f32> = x_48.unity_ObjectToWorld[0i];
  let x_410 : vec4<f32> = x_48.unity_ObjectToWorld[0i];
  u_xlat27.x = dot(vec3<f32>(x_407.x, x_407.y, x_407.z), vec3<f32>(x_410.x, x_410.y, x_410.z));
  let x_415 : f32 = u_xlat27.x;
  u_xlat6.x = sqrt(x_415);
  let x_420 : vec4<f32> = x_48.unity_ObjectToWorld[1i];
  let x_423 : vec4<f32> = x_48.unity_ObjectToWorld[1i];
  u_xlat27.x = dot(vec3<f32>(x_420.x, x_420.y, x_420.z), vec3<f32>(x_423.x, x_423.y, x_423.z));
  let x_428 : f32 = u_xlat27.x;
  u_xlat6.y = sqrt(x_428);
  let x_433 : vec4<f32> = x_48.unity_ObjectToWorld[2i];
  let x_436 : vec4<f32> = x_48.unity_ObjectToWorld[2i];
  u_xlat27.x = dot(vec3<f32>(x_433.x, x_433.y, x_433.z), vec3<f32>(x_436.x, x_436.y, x_436.z));
  let x_441 : f32 = u_xlat27.x;
  u_xlat6.z = sqrt(x_441);
  let x_444 : vec4<f32> = u_xlat6;
  let x_446 : vec4<f32> = u_xlat6;
  u_xlat27.x = dot(vec3<f32>(x_444.x, x_444.y, x_444.z), vec3<f32>(x_446.x, x_446.y, x_446.z));
  let x_451 : f32 = u_xlat27.x;
  u_xlat27.x = sqrt(x_451);
  let x_455 : f32 = u_xlat27.x;
  let x_458 : f32 = x_195.Vector1_90E376AD;
  u_xlat27.x = (x_455 * x_458);
  let x_462 : f32 = u_xlat27.x;
  u_xlat27.x = (x_462 * 30.0f);
  let x_466 : vec2<f32> = u_xlat27;
  let x_468 : vec4<f32> = vs_INTERP5;
  u_xlat27 = (vec2<f32>(x_466.x, x_466.x) * vec2<f32>(x_468.x, x_468.y));
  let x_476 : vec2<f32> = u_xlat27;
  let x_478 : f32 = x_135.x_GlobalMipBias.x;
  let x_479 : vec4<f32> = textureSampleBias(x_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1_Texture2D, sampler_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1_Texture2D, x_476, x_478);
  u_xlat30 = vec3<f32>(x_479.x, x_479.y, x_479.w);
  let x_482 : f32 = u_xlat30.x;
  let x_484 : f32 = u_xlat30.z;
  u_xlat30.x = (x_482 * x_484);
  let x_487 : vec3<f32> = u_xlat30;
  u_xlat27 = ((vec2<f32>(x_487.x, x_487.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_491 : vec2<f32> = u_xlat27;
  let x_492 : vec2<f32> = u_xlat27;
  u_xlat80 = dot(x_491, x_492);
  let x_494 : f32 = u_xlat80;
  u_xlat80 = min(x_494, 1.0f);
  let x_496 : f32 = u_xlat80;
  u_xlat80 = (-(x_496) + 1.0f);
  let x_499 : f32 = u_xlat80;
  u_xlat80 = sqrt(x_499);
  let x_501 : f32 = u_xlat80;
  u_xlat80 = max(x_501, 0.0000000000000001f);
  let x_503 : vec2<f32> = u_xlat27;
  let x_504 : vec3<f32> = u_xlat33;
  let x_506 : vec2<f32> = (x_503 + vec2<f32>(x_504.x, x_504.y));
  let x_507 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_506.x, x_506.y, x_507.z, x_507.w);
  let x_509 : f32 = u_xlat80;
  let x_511 : f32 = u_xlat33.z;
  u_xlat6.z = (x_509 * x_511);
  let x_514 : vec4<f32> = u_xlat6;
  let x_516 : vec4<f32> = u_xlat6;
  u_xlat27.x = dot(vec3<f32>(x_514.x, x_514.y, x_514.z), vec3<f32>(x_516.x, x_516.y, x_516.z));
  let x_521 : f32 = u_xlat27.x;
  u_xlat27.x = max(x_521, 0.00006103515625f);
  let x_526 : f32 = u_xlat27.x;
  u_xlat27.x = inverseSqrt(x_526);
  let x_529 : vec4<f32> = u_xlat6;
  let x_531 : vec2<f32> = u_xlat27;
  let x_534 : vec3<f32> = u_xlat5;
  u_xlat30 = ((vec3<f32>(x_529.x, x_529.y, x_529.z) * vec3<f32>(x_531.x, x_531.x, x_531.x)) + -(x_534));
  let x_537 : vec4<f32> = u_xlat1;
  let x_539 : vec3<f32> = u_xlat30;
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
  u_xlat26 = ((vec3<f32>(x_581.y, x_581.y, x_581.y) * vec3<f32>(x_583.x, x_583.y, x_583.z)) + vec3<f32>(x_586.y, x_586.z, x_586.w));
  let x_589 : vec4<f32> = u_xlat4;
  let x_591 : vec3<f32> = vs_INTERP8;
  let x_593 : vec3<f32> = u_xlat26;
  u_xlat26 = ((vec3<f32>(x_589.w, x_589.w, x_589.w) * x_591) + x_593);
  let x_595 : vec3<f32> = u_xlat26;
  let x_596 : vec3<f32> = u_xlat26;
  u_xlat1.x = dot(x_595, x_596);
  let x_600 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_600);
  let x_603 : vec3<f32> = u_xlat26;
  let x_604 : vec4<f32> = u_xlat1;
  let x_606 : vec3<f32> = (x_603 * vec3<f32>(x_604.x, x_604.x, x_604.x));
  let x_607 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_606.x, x_606.y, x_606.z, x_607.w);
  let x_610 : f32 = x_135.unity_OrthoParams.w;
  u_xlatb26.x = (x_610 == 0.0f);
  let x_613 : vec3<f32> = vs_INTERP7;
  let x_617 : vec3<f32> = x_135.x_WorldSpaceCameraPos;
  let x_618 : vec3<f32> = (-(x_613) + x_617);
  let x_619 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_618.x, x_618.y, x_618.z, x_619.w);
  let x_622 : vec4<f32> = u_xlat1;
  let x_624 : vec4<f32> = u_xlat1;
  u_xlat52 = dot(vec3<f32>(x_622.x, x_622.y, x_622.z), vec3<f32>(x_624.x, x_624.y, x_624.z));
  let x_627 : f32 = u_xlat52;
  u_xlat52 = inverseSqrt(x_627);
  let x_629 : f32 = u_xlat52;
  let x_631 : vec4<f32> = u_xlat1;
  let x_633 : vec3<f32> = (vec3<f32>(x_629, x_629, x_629) * vec3<f32>(x_631.x, x_631.y, x_631.z));
  let x_634 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_633.x, x_633.y, x_633.z, x_634.w);
  let x_637 : bool = u_xlatb26.x;
  if (x_637) {
    let x_643 : f32 = u_xlat1.x;
    x_639 = x_643;
  } else {
    let x_647 : f32 = x_135.unity_MatrixV[0i].z;
    x_639 = x_647;
  }
  let x_648 : f32 = x_639;
  u_xlat5.x = x_648;
  let x_651 : bool = u_xlatb26.x;
  if (x_651) {
    let x_656 : f32 = u_xlat1.y;
    x_652 = x_656;
  } else {
    let x_659 : f32 = x_135.unity_MatrixV[1i].z;
    x_652 = x_659;
  }
  let x_660 : f32 = x_652;
  u_xlat5.y = x_660;
  let x_663 : bool = u_xlatb26.x;
  if (x_663) {
    let x_668 : f32 = u_xlat1.z;
    x_664 = x_668;
  } else {
    let x_671 : f32 = x_135.unity_MatrixV[2i].z;
    x_664 = x_671;
  }
  let x_672 : f32 = x_664;
  u_xlat5.z = x_672;
  u_xlat4.w = 1.0f;
  let x_677 : vec4<f32> = x_48.unity_SHAr;
  let x_678 : vec4<f32> = u_xlat4;
  u_xlat1.x = dot(x_677, x_678);
  let x_683 : vec4<f32> = x_48.unity_SHAg;
  let x_684 : vec4<f32> = u_xlat4;
  u_xlat1.y = dot(x_683, x_684);
  let x_689 : vec4<f32> = x_48.unity_SHAb;
  let x_690 : vec4<f32> = u_xlat4;
  u_xlat1.z = dot(x_689, x_690);
  let x_693 : vec4<f32> = u_xlat4;
  let x_695 : vec4<f32> = u_xlat4;
  u_xlat6 = (vec4<f32>(x_693.y, x_693.z, x_693.z, x_693.x) * vec4<f32>(x_695.x, x_695.y, x_695.z, x_695.z));
  let x_701 : vec4<f32> = x_48.unity_SHBr;
  let x_702 : vec4<f32> = u_xlat6;
  u_xlat8.x = dot(x_701, x_702);
  let x_707 : vec4<f32> = x_48.unity_SHBg;
  let x_708 : vec4<f32> = u_xlat6;
  u_xlat8.y = dot(x_707, x_708);
  let x_713 : vec4<f32> = x_48.unity_SHBb;
  let x_714 : vec4<f32> = u_xlat6;
  u_xlat8.z = dot(x_713, x_714);
  let x_718 : f32 = u_xlat4.y;
  let x_720 : f32 = u_xlat4.y;
  u_xlat26.x = (x_718 * x_720);
  let x_724 : f32 = u_xlat4.x;
  let x_726 : f32 = u_xlat4.x;
  let x_729 : f32 = u_xlat26.x;
  u_xlat26.x = ((x_724 * x_726) + -(x_729));
  let x_735 : vec4<f32> = x_48.unity_SHC;
  let x_737 : vec3<f32> = u_xlat26;
  let x_740 : vec4<f32> = u_xlat8;
  u_xlat26 = ((vec3<f32>(x_735.x, x_735.y, x_735.z) * vec3<f32>(x_737.x, x_737.x, x_737.x)) + vec3<f32>(x_740.x, x_740.y, x_740.z));
  let x_743 : vec3<f32> = u_xlat26;
  let x_744 : vec4<f32> = u_xlat1;
  u_xlat26 = (x_743 + vec3<f32>(x_744.x, x_744.y, x_744.z));
  let x_747 : vec3<f32> = u_xlat26;
  u_xlat26 = max(x_747, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_750 : vec3<f32> = u_xlat3;
  let x_753 : vec3<f32> = (x_750 * vec3<f32>(0.86399996280670166016f, 0.86399996280670166016f, 0.86399996280670166016f));
  let x_754 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_753.x, x_753.y, x_753.z, x_754.w);
  let x_756 : vec4<f32> = u_xlat1;
  let x_758 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_756.w, x_756.w, x_756.w) * x_758) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_763 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_763 * vec3<f32>(0.10000000149011611938f, 0.10000000149011611938f, 0.10000000149011611938f)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_770 : f32 = u_xlat0.x;
  u_xlat79 = (-(x_770) + 1.0f);
  let x_773 : f32 = u_xlat79;
  let x_774 : f32 = u_xlat79;
  u_xlat80 = (x_773 * x_774);
  let x_776 : f32 = u_xlat80;
  u_xlat80 = max(x_776, 0.0078125f);
  let x_779 : f32 = u_xlat80;
  let x_780 : f32 = u_xlat80;
  u_xlat3.x = (x_779 * x_780);
  let x_784 : f32 = u_xlat0.x;
  u_xlat0.x = (x_784 + 0.13600003719329833984f);
  let x_789 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_789, 1.0f);
  let x_793 : f32 = u_xlat80;
  u_xlat29 = ((x_793 * 4.0f) + 2.0f);
  let x_798 : f32 = u_xlat7.x;
  u_xlat55 = min(x_798, 1.0f);
  let x_810 : f32 = x_808.x_MainLightShadowParams.y;
  u_xlatb81 = (0.0f < x_810);
  let x_812 : bool = u_xlatb81;
  if (x_812) {
    let x_816 : f32 = x_808.x_MainLightShadowParams.y;
    u_xlatb81 = (x_816 == 1.0f);
    let x_818 : bool = u_xlatb81;
    if (x_818) {
      let x_822 : vec4<f32> = vs_INTERP3;
      let x_825 : vec4<f32> = x_808.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_822.x, x_822.y, x_822.x, x_822.y) + x_825);
      let x_829 : vec4<f32> = u_xlat6;
      let x_830 : vec2<f32> = vec2<f32>(x_829.x, x_829.y);
      let x_832 : f32 = vs_INTERP3.z;
      txVec0 = vec3<f32>(x_830.x, x_830.y, x_832);
      let x_844 : vec3<f32> = txVec0;
      let x_846 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_844.xy, x_844.z);
      u_xlat7.x = x_846;
      let x_849 : vec4<f32> = u_xlat6;
      let x_850 : vec2<f32> = vec2<f32>(x_849.z, x_849.w);
      let x_852 : f32 = vs_INTERP3.z;
      txVec1 = vec3<f32>(x_850.x, x_850.y, x_852);
      let x_859 : vec3<f32> = txVec1;
      let x_861 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_859.xy, x_859.z);
      u_xlat7.y = x_861;
      let x_863 : vec4<f32> = vs_INTERP3;
      let x_867 : vec4<f32> = x_808.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_863.x, x_863.y, x_863.x, x_863.y) + x_867);
      let x_870 : vec4<f32> = u_xlat6;
      let x_871 : vec2<f32> = vec2<f32>(x_870.x, x_870.y);
      let x_873 : f32 = vs_INTERP3.z;
      txVec2 = vec3<f32>(x_871.x, x_871.y, x_873);
      let x_880 : vec3<f32> = txVec2;
      let x_882 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_880.xy, x_880.z);
      u_xlat7.z = x_882;
      let x_885 : vec4<f32> = u_xlat6;
      let x_886 : vec2<f32> = vec2<f32>(x_885.z, x_885.w);
      let x_888 : f32 = vs_INTERP3.z;
      txVec3 = vec3<f32>(x_886.x, x_886.y, x_888);
      let x_895 : vec3<f32> = txVec3;
      let x_897 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_895.xy, x_895.z);
      u_xlat7.w = x_897;
      let x_899 : vec4<f32> = u_xlat7;
      u_xlat81 = dot(x_899, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_906 : f32 = x_808.x_MainLightShadowParams.y;
      u_xlatb82 = (x_906 == 2.0f);
      let x_908 : bool = u_xlatb82;
      if (x_908) {
        let x_911 : vec4<f32> = vs_INTERP3;
        let x_915 : vec4<f32> = x_808.x_MainLightShadowmapSize;
        let x_920 : vec2<f32> = ((vec2<f32>(x_911.x, x_911.y) * vec2<f32>(x_915.z, x_915.w)) + vec2<f32>(0.5f, 0.5f));
        let x_921 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_920.x, x_920.y, x_921.z, x_921.w);
        let x_923 : vec4<f32> = u_xlat6;
        let x_925 : vec2<f32> = floor(vec2<f32>(x_923.x, x_923.y));
        let x_926 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_925.x, x_925.y, x_926.z, x_926.w);
        let x_929 : vec4<f32> = vs_INTERP3;
        let x_932 : vec4<f32> = x_808.x_MainLightShadowmapSize;
        let x_935 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_929.x, x_929.y) * vec2<f32>(x_932.z, x_932.w)) + -(vec2<f32>(x_935.x, x_935.y)));
        let x_939 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_939.x, x_939.x, x_939.y, x_939.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_943 : vec4<f32> = u_xlat7;
        let x_945 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_943.x, x_943.x, x_943.z, x_943.z) * vec4<f32>(x_945.x, x_945.x, x_945.z, x_945.z));
        let x_948 : vec4<f32> = u_xlat8;
        let x_952 : vec2<f32> = (vec2<f32>(x_948.y, x_948.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_953 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_952.x, x_953.y, x_952.y, x_953.w);
        let x_955 : vec4<f32> = u_xlat8;
        let x_958 : vec2<f32> = u_xlat58;
        let x_960 : vec2<f32> = ((vec2<f32>(x_955.x, x_955.z) * vec2<f32>(0.5f, 0.5f)) + -(x_958));
        let x_961 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_960.x, x_960.y, x_961.z, x_961.w);
        let x_964 : vec2<f32> = u_xlat58;
        u_xlat60 = (-(x_964) + vec2<f32>(1.0f, 1.0f));
        let x_968 : vec2<f32> = u_xlat58;
        let x_970 : vec2<f32> = min(x_968, vec2<f32>(0.0f, 0.0f));
        let x_971 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_970.x, x_970.y, x_971.z, x_971.w);
        let x_973 : vec4<f32> = u_xlat9;
        let x_976 : vec4<f32> = u_xlat9;
        let x_979 : vec2<f32> = u_xlat60;
        let x_980 : vec2<f32> = ((-(vec2<f32>(x_973.x, x_973.y)) * vec2<f32>(x_976.x, x_976.y)) + x_979);
        let x_981 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_980.x, x_980.y, x_981.z, x_981.w);
        let x_983 : vec2<f32> = u_xlat58;
        u_xlat58 = max(x_983, vec2<f32>(0.0f, 0.0f));
        let x_985 : vec2<f32> = u_xlat58;
        let x_987 : vec2<f32> = u_xlat58;
        let x_989 : vec4<f32> = u_xlat7;
        u_xlat58 = ((-(x_985) * x_987) + vec2<f32>(x_989.y, x_989.w));
        let x_992 : vec4<f32> = u_xlat9;
        let x_994 : vec2<f32> = (vec2<f32>(x_992.x, x_992.y) + vec2<f32>(1.0f, 1.0f));
        let x_995 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_994.x, x_994.y, x_995.z, x_995.w);
        let x_997 : vec2<f32> = u_xlat58;
        u_xlat58 = (x_997 + vec2<f32>(1.0f, 1.0f));
        let x_1000 : vec4<f32> = u_xlat8;
        let x_1004 : vec2<f32> = (vec2<f32>(x_1000.x, x_1000.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1005 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1004.x, x_1004.y, x_1005.z, x_1005.w);
        let x_1007 : vec2<f32> = u_xlat60;
        let x_1008 : vec2<f32> = (x_1007 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1009 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1008.x, x_1008.y, x_1009.z, x_1009.w);
        let x_1011 : vec4<f32> = u_xlat9;
        let x_1013 : vec2<f32> = (vec2<f32>(x_1011.x, x_1011.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1014 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1013.x, x_1013.y, x_1014.z, x_1014.w);
        let x_1017 : vec2<f32> = u_xlat58;
        let x_1018 : vec2<f32> = (x_1017 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1019 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1018.x, x_1018.y, x_1019.z, x_1019.w);
        let x_1021 : vec4<f32> = u_xlat7;
        u_xlat58 = (vec2<f32>(x_1021.y, x_1021.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1025 : f32 = u_xlat9.x;
        u_xlat10.z = x_1025;
        let x_1028 : f32 = u_xlat58.x;
        u_xlat10.w = x_1028;
        let x_1031 : f32 = u_xlat11.x;
        u_xlat8.z = x_1031;
        let x_1034 : f32 = u_xlat7.x;
        u_xlat8.w = x_1034;
        let x_1037 : vec4<f32> = u_xlat8;
        let x_1039 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_1037.z, x_1037.w, x_1037.x, x_1037.z) + vec4<f32>(x_1039.z, x_1039.w, x_1039.x, x_1039.z));
        let x_1043 : f32 = u_xlat10.y;
        u_xlat9.z = x_1043;
        let x_1046 : f32 = u_xlat58.y;
        u_xlat9.w = x_1046;
        let x_1049 : f32 = u_xlat8.y;
        u_xlat11.z = x_1049;
        let x_1052 : f32 = u_xlat7.z;
        u_xlat11.w = x_1052;
        let x_1054 : vec4<f32> = u_xlat9;
        let x_1056 : vec4<f32> = u_xlat11;
        let x_1058 : vec3<f32> = (vec3<f32>(x_1054.z, x_1054.y, x_1054.w) + vec3<f32>(x_1056.z, x_1056.y, x_1056.w));
        let x_1059 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1058.x, x_1058.y, x_1058.z, x_1059.w);
        let x_1061 : vec4<f32> = u_xlat8;
        let x_1063 : vec4<f32> = u_xlat12;
        let x_1065 : vec3<f32> = (vec3<f32>(x_1061.x, x_1061.z, x_1061.w) / vec3<f32>(x_1063.z, x_1063.w, x_1063.y));
        let x_1066 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1065.x, x_1065.y, x_1065.z, x_1066.w);
        let x_1068 : vec4<f32> = u_xlat8;
        let x_1073 : vec3<f32> = (vec3<f32>(x_1068.x, x_1068.y, x_1068.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1074 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1073.x, x_1073.y, x_1073.z, x_1074.w);
        let x_1076 : vec4<f32> = u_xlat11;
        let x_1078 : vec4<f32> = u_xlat7;
        let x_1080 : vec3<f32> = (vec3<f32>(x_1076.z, x_1076.y, x_1076.w) / vec3<f32>(x_1078.x, x_1078.y, x_1078.z));
        let x_1081 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1080.x, x_1080.y, x_1080.z, x_1081.w);
        let x_1083 : vec4<f32> = u_xlat9;
        let x_1085 : vec3<f32> = (vec3<f32>(x_1083.x, x_1083.y, x_1083.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1086 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1085.x, x_1085.y, x_1085.z, x_1086.w);
        let x_1088 : vec4<f32> = u_xlat8;
        let x_1091 : vec4<f32> = x_808.x_MainLightShadowmapSize;
        let x_1093 : vec3<f32> = (vec3<f32>(x_1088.y, x_1088.x, x_1088.z) * vec3<f32>(x_1091.x, x_1091.x, x_1091.x));
        let x_1094 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1093.x, x_1093.y, x_1093.z, x_1094.w);
        let x_1096 : vec4<f32> = u_xlat9;
        let x_1099 : vec4<f32> = x_808.x_MainLightShadowmapSize;
        let x_1101 : vec3<f32> = (vec3<f32>(x_1096.x, x_1096.y, x_1096.z) * vec3<f32>(x_1099.y, x_1099.y, x_1099.y));
        let x_1102 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1101.x, x_1101.y, x_1101.z, x_1102.w);
        let x_1105 : f32 = u_xlat9.x;
        u_xlat8.w = x_1105;
        let x_1107 : vec4<f32> = u_xlat6;
        let x_1110 : vec4<f32> = x_808.x_MainLightShadowmapSize;
        let x_1113 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1107.x, x_1107.y, x_1107.x, x_1107.y) * vec4<f32>(x_1110.x, x_1110.y, x_1110.x, x_1110.y)) + vec4<f32>(x_1113.y, x_1113.w, x_1113.x, x_1113.w));
        let x_1116 : vec4<f32> = u_xlat6;
        let x_1119 : vec4<f32> = x_808.x_MainLightShadowmapSize;
        let x_1122 : vec4<f32> = u_xlat8;
        u_xlat58 = ((vec2<f32>(x_1116.x, x_1116.y) * vec2<f32>(x_1119.x, x_1119.y)) + vec2<f32>(x_1122.z, x_1122.w));
        let x_1126 : f32 = u_xlat8.y;
        u_xlat9.w = x_1126;
        let x_1128 : vec4<f32> = u_xlat9;
        let x_1129 : vec2<f32> = vec2<f32>(x_1128.y, x_1128.z);
        let x_1130 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1130.x, x_1129.x, x_1130.z, x_1129.y);
        let x_1132 : vec4<f32> = u_xlat6;
        let x_1135 : vec4<f32> = x_808.x_MainLightShadowmapSize;
        let x_1138 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1132.x, x_1132.y, x_1132.x, x_1132.y) * vec4<f32>(x_1135.x, x_1135.y, x_1135.x, x_1135.y)) + vec4<f32>(x_1138.x, x_1138.y, x_1138.z, x_1138.y));
        let x_1141 : vec4<f32> = u_xlat6;
        let x_1144 : vec4<f32> = x_808.x_MainLightShadowmapSize;
        let x_1147 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1141.x, x_1141.y, x_1141.x, x_1141.y) * vec4<f32>(x_1144.x, x_1144.y, x_1144.x, x_1144.y)) + vec4<f32>(x_1147.w, x_1147.y, x_1147.w, x_1147.z));
        let x_1150 : vec4<f32> = u_xlat6;
        let x_1153 : vec4<f32> = x_808.x_MainLightShadowmapSize;
        let x_1156 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1150.x, x_1150.y, x_1150.x, x_1150.y) * vec4<f32>(x_1153.x, x_1153.y, x_1153.x, x_1153.y)) + vec4<f32>(x_1156.x, x_1156.w, x_1156.z, x_1156.w));
        let x_1160 : vec4<f32> = u_xlat7;
        let x_1162 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_1160.x, x_1160.x, x_1160.x, x_1160.y) * vec4<f32>(x_1162.z, x_1162.w, x_1162.y, x_1162.z));
        let x_1166 : vec4<f32> = u_xlat7;
        let x_1168 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_1166.y, x_1166.y, x_1166.z, x_1166.z) * x_1168);
        let x_1171 : f32 = u_xlat7.z;
        let x_1173 : f32 = u_xlat12.y;
        u_xlat82 = (x_1171 * x_1173);
        let x_1176 : vec4<f32> = u_xlat10;
        let x_1177 : vec2<f32> = vec2<f32>(x_1176.x, x_1176.y);
        let x_1179 : f32 = vs_INTERP3.z;
        txVec4 = vec3<f32>(x_1177.x, x_1177.y, x_1179);
        let x_1187 : vec3<f32> = txVec4;
        let x_1189 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1187.xy, x_1187.z);
        u_xlat83 = x_1189;
        let x_1191 : vec4<f32> = u_xlat10;
        let x_1192 : vec2<f32> = vec2<f32>(x_1191.z, x_1191.w);
        let x_1194 : f32 = vs_INTERP3.z;
        txVec5 = vec3<f32>(x_1192.x, x_1192.y, x_1194);
        let x_1201 : vec3<f32> = txVec5;
        let x_1203 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1201.xy, x_1201.z);
        u_xlat6.x = x_1203;
        let x_1206 : f32 = u_xlat6.x;
        let x_1208 : f32 = u_xlat13.y;
        u_xlat6.x = (x_1206 * x_1208);
        let x_1212 : f32 = u_xlat13.x;
        let x_1213 : f32 = u_xlat83;
        let x_1216 : f32 = u_xlat6.x;
        u_xlat83 = ((x_1212 * x_1213) + x_1216);
        let x_1219 : vec2<f32> = u_xlat58;
        let x_1221 : f32 = vs_INTERP3.z;
        txVec6 = vec3<f32>(x_1219.x, x_1219.y, x_1221);
        let x_1228 : vec3<f32> = txVec6;
        let x_1230 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1228.xy, x_1228.z);
        u_xlat6.x = x_1230;
        let x_1233 : f32 = u_xlat13.z;
        let x_1235 : f32 = u_xlat6.x;
        let x_1237 : f32 = u_xlat83;
        u_xlat83 = ((x_1233 * x_1235) + x_1237);
        let x_1240 : vec4<f32> = u_xlat9;
        let x_1241 : vec2<f32> = vec2<f32>(x_1240.x, x_1240.y);
        let x_1243 : f32 = vs_INTERP3.z;
        txVec7 = vec3<f32>(x_1241.x, x_1241.y, x_1243);
        let x_1250 : vec3<f32> = txVec7;
        let x_1252 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1250.xy, x_1250.z);
        u_xlat6.x = x_1252;
        let x_1255 : f32 = u_xlat13.w;
        let x_1257 : f32 = u_xlat6.x;
        let x_1259 : f32 = u_xlat83;
        u_xlat83 = ((x_1255 * x_1257) + x_1259);
        let x_1262 : vec4<f32> = u_xlat11;
        let x_1263 : vec2<f32> = vec2<f32>(x_1262.x, x_1262.y);
        let x_1265 : f32 = vs_INTERP3.z;
        txVec8 = vec3<f32>(x_1263.x, x_1263.y, x_1265);
        let x_1272 : vec3<f32> = txVec8;
        let x_1274 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1272.xy, x_1272.z);
        u_xlat6.x = x_1274;
        let x_1277 : f32 = u_xlat14.x;
        let x_1279 : f32 = u_xlat6.x;
        let x_1281 : f32 = u_xlat83;
        u_xlat83 = ((x_1277 * x_1279) + x_1281);
        let x_1284 : vec4<f32> = u_xlat11;
        let x_1285 : vec2<f32> = vec2<f32>(x_1284.z, x_1284.w);
        let x_1287 : f32 = vs_INTERP3.z;
        txVec9 = vec3<f32>(x_1285.x, x_1285.y, x_1287);
        let x_1294 : vec3<f32> = txVec9;
        let x_1296 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1294.xy, x_1294.z);
        u_xlat6.x = x_1296;
        let x_1299 : f32 = u_xlat14.y;
        let x_1301 : f32 = u_xlat6.x;
        let x_1303 : f32 = u_xlat83;
        u_xlat83 = ((x_1299 * x_1301) + x_1303);
        let x_1306 : vec4<f32> = u_xlat9;
        let x_1307 : vec2<f32> = vec2<f32>(x_1306.z, x_1306.w);
        let x_1309 : f32 = vs_INTERP3.z;
        txVec10 = vec3<f32>(x_1307.x, x_1307.y, x_1309);
        let x_1316 : vec3<f32> = txVec10;
        let x_1318 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1316.xy, x_1316.z);
        u_xlat6.x = x_1318;
        let x_1321 : f32 = u_xlat14.z;
        let x_1323 : f32 = u_xlat6.x;
        let x_1325 : f32 = u_xlat83;
        u_xlat83 = ((x_1321 * x_1323) + x_1325);
        let x_1328 : vec4<f32> = u_xlat8;
        let x_1329 : vec2<f32> = vec2<f32>(x_1328.x, x_1328.y);
        let x_1331 : f32 = vs_INTERP3.z;
        txVec11 = vec3<f32>(x_1329.x, x_1329.y, x_1331);
        let x_1338 : vec3<f32> = txVec11;
        let x_1340 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1338.xy, x_1338.z);
        u_xlat6.x = x_1340;
        let x_1343 : f32 = u_xlat14.w;
        let x_1345 : f32 = u_xlat6.x;
        let x_1347 : f32 = u_xlat83;
        u_xlat83 = ((x_1343 * x_1345) + x_1347);
        let x_1350 : vec4<f32> = u_xlat8;
        let x_1351 : vec2<f32> = vec2<f32>(x_1350.z, x_1350.w);
        let x_1353 : f32 = vs_INTERP3.z;
        txVec12 = vec3<f32>(x_1351.x, x_1351.y, x_1353);
        let x_1360 : vec3<f32> = txVec12;
        let x_1362 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1360.xy, x_1360.z);
        u_xlat6.x = x_1362;
        let x_1364 : f32 = u_xlat82;
        let x_1366 : f32 = u_xlat6.x;
        let x_1368 : f32 = u_xlat83;
        u_xlat81 = ((x_1364 * x_1366) + x_1368);
      } else {
        let x_1371 : vec4<f32> = vs_INTERP3;
        let x_1374 : vec4<f32> = x_808.x_MainLightShadowmapSize;
        let x_1377 : vec2<f32> = ((vec2<f32>(x_1371.x, x_1371.y) * vec2<f32>(x_1374.z, x_1374.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1378 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1377.x, x_1377.y, x_1378.z, x_1378.w);
        let x_1380 : vec4<f32> = u_xlat6;
        let x_1382 : vec2<f32> = floor(vec2<f32>(x_1380.x, x_1380.y));
        let x_1383 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1382.x, x_1382.y, x_1383.z, x_1383.w);
        let x_1385 : vec4<f32> = vs_INTERP3;
        let x_1388 : vec4<f32> = x_808.x_MainLightShadowmapSize;
        let x_1391 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1385.x, x_1385.y) * vec2<f32>(x_1388.z, x_1388.w)) + -(vec2<f32>(x_1391.x, x_1391.y)));
        let x_1395 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_1395.x, x_1395.x, x_1395.y, x_1395.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1398 : vec4<f32> = u_xlat7;
        let x_1400 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1398.x, x_1398.x, x_1398.z, x_1398.z) * vec4<f32>(x_1400.x, x_1400.x, x_1400.z, x_1400.z));
        let x_1403 : vec4<f32> = u_xlat8;
        let x_1407 : vec2<f32> = (vec2<f32>(x_1403.y, x_1403.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1408 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1408.x, x_1407.x, x_1408.z, x_1407.y);
        let x_1410 : vec4<f32> = u_xlat8;
        let x_1413 : vec2<f32> = u_xlat58;
        let x_1415 : vec2<f32> = ((vec2<f32>(x_1410.x, x_1410.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1413));
        let x_1416 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1415.x, x_1416.y, x_1415.y, x_1416.w);
        let x_1418 : vec2<f32> = u_xlat58;
        let x_1420 : vec2<f32> = (-(x_1418) + vec2<f32>(1.0f, 1.0f));
        let x_1421 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1420.x, x_1420.y, x_1421.z, x_1421.w);
        let x_1423 : vec2<f32> = u_xlat58;
        u_xlat60 = min(x_1423, vec2<f32>(0.0f, 0.0f));
        let x_1425 : vec2<f32> = u_xlat60;
        let x_1427 : vec2<f32> = u_xlat60;
        let x_1429 : vec4<f32> = u_xlat8;
        let x_1431 : vec2<f32> = ((-(x_1425) * x_1427) + vec2<f32>(x_1429.x, x_1429.y));
        let x_1432 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1431.x, x_1431.y, x_1432.z, x_1432.w);
        let x_1434 : vec2<f32> = u_xlat58;
        u_xlat60 = max(x_1434, vec2<f32>(0.0f, 0.0f));
        let x_1436 : vec2<f32> = u_xlat60;
        let x_1438 : vec2<f32> = u_xlat60;
        let x_1440 : vec4<f32> = u_xlat7;
        let x_1442 : vec2<f32> = ((-(x_1436) * x_1438) + vec2<f32>(x_1440.y, x_1440.w));
        let x_1443 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_1442.x, x_1443.y, x_1442.y);
        let x_1445 : vec4<f32> = u_xlat8;
        let x_1447 : vec2<f32> = (vec2<f32>(x_1445.x, x_1445.y) + vec2<f32>(2.0f, 2.0f));
        let x_1448 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1447.x, x_1447.y, x_1448.z, x_1448.w);
        let x_1450 : vec3<f32> = u_xlat33;
        let x_1452 : vec2<f32> = (vec2<f32>(x_1450.x, x_1450.z) + vec2<f32>(2.0f, 2.0f));
        let x_1453 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1453.x, x_1452.x, x_1453.z, x_1452.y);
        let x_1456 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1456 * 0.08163200318813323975f);
        let x_1460 : vec4<f32> = u_xlat7;
        let x_1463 : vec3<f32> = (vec3<f32>(x_1460.z, x_1460.x, x_1460.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1464 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1463.x, x_1463.y, x_1463.z, x_1464.w);
        let x_1466 : vec4<f32> = u_xlat8;
        let x_1469 : vec2<f32> = (vec2<f32>(x_1466.x, x_1466.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1470 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1469.x, x_1469.y, x_1470.z, x_1470.w);
        let x_1473 : f32 = u_xlat11.y;
        u_xlat10.x = x_1473;
        let x_1475 : vec2<f32> = u_xlat58;
        let x_1482 : vec2<f32> = ((vec2<f32>(x_1475.x, x_1475.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1483 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1483.x, x_1482.x, x_1483.z, x_1482.y);
        let x_1485 : vec2<f32> = u_xlat58;
        let x_1489 : vec2<f32> = ((vec2<f32>(x_1485.x, x_1485.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1490 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1489.x, x_1490.y, x_1489.y, x_1490.w);
        let x_1493 : f32 = u_xlat7.x;
        u_xlat8.y = x_1493;
        let x_1496 : f32 = u_xlat9.y;
        u_xlat8.w = x_1496;
        let x_1498 : vec4<f32> = u_xlat8;
        let x_1499 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1498 + x_1499);
        let x_1501 : vec2<f32> = u_xlat58;
        let x_1504 : vec2<f32> = ((vec2<f32>(x_1501.y, x_1501.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1505 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1505.x, x_1504.x, x_1505.z, x_1504.y);
        let x_1507 : vec2<f32> = u_xlat58;
        let x_1510 : vec2<f32> = ((vec2<f32>(x_1507.y, x_1507.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1511 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1510.x, x_1511.y, x_1510.y, x_1511.w);
        let x_1514 : f32 = u_xlat7.y;
        u_xlat9.y = x_1514;
        let x_1516 : vec4<f32> = u_xlat9;
        let x_1517 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1516 + x_1517);
        let x_1519 : vec4<f32> = u_xlat8;
        let x_1520 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1519 / x_1520);
        let x_1522 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1522 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1528 : vec4<f32> = u_xlat9;
        let x_1529 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1528 / x_1529);
        let x_1531 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1531 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1533 : vec4<f32> = u_xlat8;
        let x_1536 : vec4<f32> = x_808.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1533.w, x_1533.x, x_1533.y, x_1533.z) * vec4<f32>(x_1536.x, x_1536.x, x_1536.x, x_1536.x));
        let x_1539 : vec4<f32> = u_xlat9;
        let x_1542 : vec4<f32> = x_808.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1539.x, x_1539.w, x_1539.y, x_1539.z) * vec4<f32>(x_1542.y, x_1542.y, x_1542.y, x_1542.y));
        let x_1545 : vec4<f32> = u_xlat8;
        let x_1546 : vec3<f32> = vec3<f32>(x_1545.y, x_1545.z, x_1545.w);
        let x_1547 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1546.x, x_1547.y, x_1546.y, x_1546.z);
        let x_1550 : f32 = u_xlat9.x;
        u_xlat11.y = x_1550;
        let x_1552 : vec4<f32> = u_xlat6;
        let x_1555 : vec4<f32> = x_808.x_MainLightShadowmapSize;
        let x_1558 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1552.x, x_1552.y, x_1552.x, x_1552.y) * vec4<f32>(x_1555.x, x_1555.y, x_1555.x, x_1555.y)) + vec4<f32>(x_1558.x, x_1558.y, x_1558.z, x_1558.y));
        let x_1561 : vec4<f32> = u_xlat6;
        let x_1564 : vec4<f32> = x_808.x_MainLightShadowmapSize;
        let x_1567 : vec4<f32> = u_xlat11;
        u_xlat58 = ((vec2<f32>(x_1561.x, x_1561.y) * vec2<f32>(x_1564.x, x_1564.y)) + vec2<f32>(x_1567.w, x_1567.y));
        let x_1571 : f32 = u_xlat11.y;
        u_xlat8.y = x_1571;
        let x_1574 : f32 = u_xlat9.z;
        u_xlat11.y = x_1574;
        let x_1576 : vec4<f32> = u_xlat6;
        let x_1579 : vec4<f32> = x_808.x_MainLightShadowmapSize;
        let x_1582 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1576.x, x_1576.y, x_1576.x, x_1576.y) * vec4<f32>(x_1579.x, x_1579.y, x_1579.x, x_1579.y)) + vec4<f32>(x_1582.x, x_1582.y, x_1582.z, x_1582.y));
        let x_1585 : vec4<f32> = u_xlat6;
        let x_1588 : vec4<f32> = x_808.x_MainLightShadowmapSize;
        let x_1591 : vec4<f32> = u_xlat11;
        let x_1593 : vec2<f32> = ((vec2<f32>(x_1585.x, x_1585.y) * vec2<f32>(x_1588.x, x_1588.y)) + vec2<f32>(x_1591.w, x_1591.y));
        let x_1594 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1593.x, x_1593.y, x_1594.z, x_1594.w);
        let x_1597 : f32 = u_xlat11.y;
        u_xlat8.z = x_1597;
        let x_1600 : vec4<f32> = u_xlat6;
        let x_1603 : vec4<f32> = x_808.x_MainLightShadowmapSize;
        let x_1606 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1600.x, x_1600.y, x_1600.x, x_1600.y) * vec4<f32>(x_1603.x, x_1603.y, x_1603.x, x_1603.y)) + vec4<f32>(x_1606.x, x_1606.y, x_1606.x, x_1606.z));
        let x_1610 : f32 = u_xlat9.w;
        u_xlat11.y = x_1610;
        let x_1613 : vec4<f32> = u_xlat6;
        let x_1616 : vec4<f32> = x_808.x_MainLightShadowmapSize;
        let x_1619 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1613.x, x_1613.y, x_1613.x, x_1613.y) * vec4<f32>(x_1616.x, x_1616.y, x_1616.x, x_1616.y)) + vec4<f32>(x_1619.x, x_1619.y, x_1619.z, x_1619.y));
        let x_1623 : vec4<f32> = u_xlat6;
        let x_1626 : vec4<f32> = x_808.x_MainLightShadowmapSize;
        let x_1629 : vec4<f32> = u_xlat11;
        let x_1631 : vec2<f32> = ((vec2<f32>(x_1623.x, x_1623.y) * vec2<f32>(x_1626.x, x_1626.y)) + vec2<f32>(x_1629.w, x_1629.y));
        let x_1632 : vec3<f32> = u_xlat34;
        u_xlat34 = vec3<f32>(x_1631.x, x_1631.y, x_1632.z);
        let x_1635 : f32 = u_xlat11.y;
        u_xlat8.w = x_1635;
        let x_1638 : vec4<f32> = u_xlat6;
        let x_1641 : vec4<f32> = x_808.x_MainLightShadowmapSize;
        let x_1644 : vec4<f32> = u_xlat8;
        u_xlat66 = ((vec2<f32>(x_1638.x, x_1638.y) * vec2<f32>(x_1641.x, x_1641.y)) + vec2<f32>(x_1644.x, x_1644.w));
        let x_1647 : vec4<f32> = u_xlat11;
        let x_1648 : vec3<f32> = vec3<f32>(x_1647.x, x_1647.z, x_1647.w);
        let x_1649 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1648.x, x_1649.y, x_1648.y, x_1648.z);
        let x_1651 : vec4<f32> = u_xlat6;
        let x_1654 : vec4<f32> = x_808.x_MainLightShadowmapSize;
        let x_1657 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1651.x, x_1651.y, x_1651.x, x_1651.y) * vec4<f32>(x_1654.x, x_1654.y, x_1654.x, x_1654.y)) + vec4<f32>(x_1657.x, x_1657.y, x_1657.z, x_1657.y));
        let x_1661 : vec4<f32> = u_xlat6;
        let x_1664 : vec4<f32> = x_808.x_MainLightShadowmapSize;
        let x_1667 : vec4<f32> = u_xlat9;
        u_xlat61 = ((vec2<f32>(x_1661.x, x_1661.y) * vec2<f32>(x_1664.x, x_1664.y)) + vec2<f32>(x_1667.w, x_1667.y));
        let x_1671 : f32 = u_xlat8.x;
        u_xlat9.x = x_1671;
        let x_1673 : vec4<f32> = u_xlat6;
        let x_1676 : vec4<f32> = x_808.x_MainLightShadowmapSize;
        let x_1679 : vec4<f32> = u_xlat9;
        let x_1681 : vec2<f32> = ((vec2<f32>(x_1673.x, x_1673.y) * vec2<f32>(x_1676.x, x_1676.y)) + vec2<f32>(x_1679.x, x_1679.y));
        let x_1682 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1681.x, x_1681.y, x_1682.z, x_1682.w);
        let x_1685 : vec4<f32> = u_xlat7;
        let x_1687 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1685.x, x_1685.x, x_1685.x, x_1685.x) * x_1687);
        let x_1690 : vec4<f32> = u_xlat7;
        let x_1692 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1690.y, x_1690.y, x_1690.y, x_1690.y) * x_1692);
        let x_1695 : vec4<f32> = u_xlat7;
        let x_1697 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1695.z, x_1695.z, x_1695.z, x_1695.z) * x_1697);
        let x_1699 : vec4<f32> = u_xlat7;
        let x_1701 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1699.w, x_1699.w, x_1699.w, x_1699.w) * x_1701);
        let x_1704 : vec4<f32> = u_xlat12;
        let x_1705 : vec2<f32> = vec2<f32>(x_1704.x, x_1704.y);
        let x_1707 : f32 = vs_INTERP3.z;
        txVec13 = vec3<f32>(x_1705.x, x_1705.y, x_1707);
        let x_1714 : vec3<f32> = txVec13;
        let x_1716 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1714.xy, x_1714.z);
        u_xlat82 = x_1716;
        let x_1718 : vec4<f32> = u_xlat12;
        let x_1719 : vec2<f32> = vec2<f32>(x_1718.z, x_1718.w);
        let x_1721 : f32 = vs_INTERP3.z;
        txVec14 = vec3<f32>(x_1719.x, x_1719.y, x_1721);
        let x_1728 : vec3<f32> = txVec14;
        let x_1730 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1728.xy, x_1728.z);
        u_xlat83 = x_1730;
        let x_1731 : f32 = u_xlat83;
        let x_1733 : f32 = u_xlat17.y;
        u_xlat83 = (x_1731 * x_1733);
        let x_1736 : f32 = u_xlat17.x;
        let x_1737 : f32 = u_xlat82;
        let x_1739 : f32 = u_xlat83;
        u_xlat82 = ((x_1736 * x_1737) + x_1739);
        let x_1742 : vec2<f32> = u_xlat58;
        let x_1744 : f32 = vs_INTERP3.z;
        txVec15 = vec3<f32>(x_1742.x, x_1742.y, x_1744);
        let x_1751 : vec3<f32> = txVec15;
        let x_1753 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1751.xy, x_1751.z);
        u_xlat83 = x_1753;
        let x_1755 : f32 = u_xlat17.z;
        let x_1756 : f32 = u_xlat83;
        let x_1758 : f32 = u_xlat82;
        u_xlat82 = ((x_1755 * x_1756) + x_1758);
        let x_1761 : vec4<f32> = u_xlat15;
        let x_1762 : vec2<f32> = vec2<f32>(x_1761.x, x_1761.y);
        let x_1764 : f32 = vs_INTERP3.z;
        txVec16 = vec3<f32>(x_1762.x, x_1762.y, x_1764);
        let x_1771 : vec3<f32> = txVec16;
        let x_1773 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1771.xy, x_1771.z);
        u_xlat83 = x_1773;
        let x_1775 : f32 = u_xlat17.w;
        let x_1776 : f32 = u_xlat83;
        let x_1778 : f32 = u_xlat82;
        u_xlat82 = ((x_1775 * x_1776) + x_1778);
        let x_1781 : vec4<f32> = u_xlat13;
        let x_1782 : vec2<f32> = vec2<f32>(x_1781.x, x_1781.y);
        let x_1784 : f32 = vs_INTERP3.z;
        txVec17 = vec3<f32>(x_1782.x, x_1782.y, x_1784);
        let x_1791 : vec3<f32> = txVec17;
        let x_1793 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1791.xy, x_1791.z);
        u_xlat83 = x_1793;
        let x_1795 : f32 = u_xlat18.x;
        let x_1796 : f32 = u_xlat83;
        let x_1798 : f32 = u_xlat82;
        u_xlat82 = ((x_1795 * x_1796) + x_1798);
        let x_1801 : vec4<f32> = u_xlat13;
        let x_1802 : vec2<f32> = vec2<f32>(x_1801.z, x_1801.w);
        let x_1804 : f32 = vs_INTERP3.z;
        txVec18 = vec3<f32>(x_1802.x, x_1802.y, x_1804);
        let x_1811 : vec3<f32> = txVec18;
        let x_1813 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1811.xy, x_1811.z);
        u_xlat83 = x_1813;
        let x_1815 : f32 = u_xlat18.y;
        let x_1816 : f32 = u_xlat83;
        let x_1818 : f32 = u_xlat82;
        u_xlat82 = ((x_1815 * x_1816) + x_1818);
        let x_1821 : vec4<f32> = u_xlat14;
        let x_1822 : vec2<f32> = vec2<f32>(x_1821.x, x_1821.y);
        let x_1824 : f32 = vs_INTERP3.z;
        txVec19 = vec3<f32>(x_1822.x, x_1822.y, x_1824);
        let x_1831 : vec3<f32> = txVec19;
        let x_1833 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1831.xy, x_1831.z);
        u_xlat83 = x_1833;
        let x_1835 : f32 = u_xlat18.z;
        let x_1836 : f32 = u_xlat83;
        let x_1838 : f32 = u_xlat82;
        u_xlat82 = ((x_1835 * x_1836) + x_1838);
        let x_1841 : vec4<f32> = u_xlat15;
        let x_1842 : vec2<f32> = vec2<f32>(x_1841.z, x_1841.w);
        let x_1844 : f32 = vs_INTERP3.z;
        txVec20 = vec3<f32>(x_1842.x, x_1842.y, x_1844);
        let x_1851 : vec3<f32> = txVec20;
        let x_1853 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1851.xy, x_1851.z);
        u_xlat83 = x_1853;
        let x_1855 : f32 = u_xlat18.w;
        let x_1856 : f32 = u_xlat83;
        let x_1858 : f32 = u_xlat82;
        u_xlat82 = ((x_1855 * x_1856) + x_1858);
        let x_1861 : vec4<f32> = u_xlat16;
        let x_1862 : vec2<f32> = vec2<f32>(x_1861.x, x_1861.y);
        let x_1864 : f32 = vs_INTERP3.z;
        txVec21 = vec3<f32>(x_1862.x, x_1862.y, x_1864);
        let x_1871 : vec3<f32> = txVec21;
        let x_1873 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1871.xy, x_1871.z);
        u_xlat83 = x_1873;
        let x_1875 : f32 = u_xlat19.x;
        let x_1876 : f32 = u_xlat83;
        let x_1878 : f32 = u_xlat82;
        u_xlat82 = ((x_1875 * x_1876) + x_1878);
        let x_1881 : vec4<f32> = u_xlat16;
        let x_1882 : vec2<f32> = vec2<f32>(x_1881.z, x_1881.w);
        let x_1884 : f32 = vs_INTERP3.z;
        txVec22 = vec3<f32>(x_1882.x, x_1882.y, x_1884);
        let x_1891 : vec3<f32> = txVec22;
        let x_1893 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1891.xy, x_1891.z);
        u_xlat83 = x_1893;
        let x_1895 : f32 = u_xlat19.y;
        let x_1896 : f32 = u_xlat83;
        let x_1898 : f32 = u_xlat82;
        u_xlat82 = ((x_1895 * x_1896) + x_1898);
        let x_1901 : vec3<f32> = u_xlat34;
        let x_1902 : vec2<f32> = vec2<f32>(x_1901.x, x_1901.y);
        let x_1904 : f32 = vs_INTERP3.z;
        txVec23 = vec3<f32>(x_1902.x, x_1902.y, x_1904);
        let x_1911 : vec3<f32> = txVec23;
        let x_1913 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1911.xy, x_1911.z);
        u_xlat83 = x_1913;
        let x_1915 : f32 = u_xlat19.z;
        let x_1916 : f32 = u_xlat83;
        let x_1918 : f32 = u_xlat82;
        u_xlat82 = ((x_1915 * x_1916) + x_1918);
        let x_1921 : vec2<f32> = u_xlat66;
        let x_1923 : f32 = vs_INTERP3.z;
        txVec24 = vec3<f32>(x_1921.x, x_1921.y, x_1923);
        let x_1930 : vec3<f32> = txVec24;
        let x_1932 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1930.xy, x_1930.z);
        u_xlat83 = x_1932;
        let x_1934 : f32 = u_xlat19.w;
        let x_1935 : f32 = u_xlat83;
        let x_1937 : f32 = u_xlat82;
        u_xlat82 = ((x_1934 * x_1935) + x_1937);
        let x_1940 : vec4<f32> = u_xlat11;
        let x_1941 : vec2<f32> = vec2<f32>(x_1940.x, x_1940.y);
        let x_1943 : f32 = vs_INTERP3.z;
        txVec25 = vec3<f32>(x_1941.x, x_1941.y, x_1943);
        let x_1950 : vec3<f32> = txVec25;
        let x_1952 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1950.xy, x_1950.z);
        u_xlat83 = x_1952;
        let x_1954 : f32 = u_xlat7.x;
        let x_1955 : f32 = u_xlat83;
        let x_1957 : f32 = u_xlat82;
        u_xlat82 = ((x_1954 * x_1955) + x_1957);
        let x_1960 : vec4<f32> = u_xlat11;
        let x_1961 : vec2<f32> = vec2<f32>(x_1960.z, x_1960.w);
        let x_1963 : f32 = vs_INTERP3.z;
        txVec26 = vec3<f32>(x_1961.x, x_1961.y, x_1963);
        let x_1970 : vec3<f32> = txVec26;
        let x_1972 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1970.xy, x_1970.z);
        u_xlat83 = x_1972;
        let x_1974 : f32 = u_xlat7.y;
        let x_1975 : f32 = u_xlat83;
        let x_1977 : f32 = u_xlat82;
        u_xlat82 = ((x_1974 * x_1975) + x_1977);
        let x_1980 : vec2<f32> = u_xlat61;
        let x_1982 : f32 = vs_INTERP3.z;
        txVec27 = vec3<f32>(x_1980.x, x_1980.y, x_1982);
        let x_1989 : vec3<f32> = txVec27;
        let x_1991 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1989.xy, x_1989.z);
        u_xlat83 = x_1991;
        let x_1993 : f32 = u_xlat7.z;
        let x_1994 : f32 = u_xlat83;
        let x_1996 : f32 = u_xlat82;
        u_xlat82 = ((x_1993 * x_1994) + x_1996);
        let x_1999 : vec4<f32> = u_xlat6;
        let x_2000 : vec2<f32> = vec2<f32>(x_1999.x, x_1999.y);
        let x_2002 : f32 = vs_INTERP3.z;
        txVec28 = vec3<f32>(x_2000.x, x_2000.y, x_2002);
        let x_2009 : vec3<f32> = txVec28;
        let x_2011 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2009.xy, x_2009.z);
        u_xlat83 = x_2011;
        let x_2013 : f32 = u_xlat7.w;
        let x_2014 : f32 = u_xlat83;
        let x_2016 : f32 = u_xlat82;
        u_xlat81 = ((x_2013 * x_2014) + x_2016);
      }
    }
  } else {
    let x_2020 : vec4<f32> = vs_INTERP3;
    let x_2021 : vec2<f32> = vec2<f32>(x_2020.x, x_2020.y);
    let x_2023 : f32 = vs_INTERP3.z;
    txVec29 = vec3<f32>(x_2021.x, x_2021.y, x_2023);
    let x_2030 : vec3<f32> = txVec29;
    let x_2032 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2030.xy, x_2030.z);
    u_xlat81 = x_2032;
  }
  let x_2034 : f32 = x_808.x_MainLightShadowParams.x;
  u_xlat82 = (-(x_2034) + 1.0f);
  let x_2037 : f32 = u_xlat81;
  let x_2039 : f32 = x_808.x_MainLightShadowParams.x;
  let x_2041 : f32 = u_xlat82;
  u_xlat81 = ((x_2037 * x_2039) + x_2041);
  let x_2044 : f32 = vs_INTERP3.z;
  u_xlatb82 = (0.0f >= x_2044);
  let x_2048 : f32 = vs_INTERP3.z;
  u_xlatb83 = (x_2048 >= 1.0f);
  let x_2050 : bool = u_xlatb82;
  let x_2051 : bool = u_xlatb83;
  u_xlatb82 = (x_2050 | x_2051);
  let x_2053 : bool = u_xlatb82;
  let x_2054 : f32 = u_xlat81;
  u_xlat81 = select(x_2054, 1.0f, x_2053);
  let x_2056 : vec3<f32> = vs_INTERP7;
  let x_2058 : vec3<f32> = x_135.x_WorldSpaceCameraPos;
  let x_2060 : vec3<f32> = (x_2056 + -(x_2058));
  let x_2061 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2060.x, x_2060.y, x_2060.z, x_2061.w);
  let x_2063 : vec4<f32> = u_xlat6;
  let x_2065 : vec4<f32> = u_xlat6;
  u_xlat82 = dot(vec3<f32>(x_2063.x, x_2063.y, x_2063.z), vec3<f32>(x_2065.x, x_2065.y, x_2065.z));
  let x_2068 : f32 = u_xlat82;
  let x_2070 : f32 = x_808.x_MainLightShadowParams.z;
  let x_2073 : f32 = x_808.x_MainLightShadowParams.w;
  u_xlat83 = ((x_2068 * x_2070) + x_2073);
  let x_2075 : f32 = u_xlat83;
  u_xlat83 = clamp(x_2075, 0.0f, 1.0f);
  let x_2077 : f32 = u_xlat81;
  u_xlat6.x = (-(x_2077) + 1.0f);
  let x_2081 : f32 = u_xlat83;
  let x_2083 : f32 = u_xlat6.x;
  let x_2085 : f32 = u_xlat81;
  u_xlat81 = ((x_2081 * x_2083) + x_2085);
  let x_2094 : f32 = x_2092.x_MainLightCookieTextureFormat;
  u_xlatb83 = !((x_2094 == -1.0f));
  let x_2096 : bool = u_xlatb83;
  if (x_2096) {
    let x_2099 : vec3<f32> = vs_INTERP7;
    let x_2102 : vec4<f32> = x_2092.x_MainLightWorldToLight[1i];
    let x_2104 : vec2<f32> = (vec2<f32>(x_2099.y, x_2099.y) * vec2<f32>(x_2102.x, x_2102.y));
    let x_2105 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2104.x, x_2104.y, x_2105.z, x_2105.w);
    let x_2108 : vec4<f32> = x_2092.x_MainLightWorldToLight[0i];
    let x_2110 : vec3<f32> = vs_INTERP7;
    let x_2113 : vec4<f32> = u_xlat6;
    let x_2115 : vec2<f32> = ((vec2<f32>(x_2108.x, x_2108.y) * vec2<f32>(x_2110.x, x_2110.x)) + vec2<f32>(x_2113.x, x_2113.y));
    let x_2116 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2115.x, x_2115.y, x_2116.z, x_2116.w);
    let x_2119 : vec4<f32> = x_2092.x_MainLightWorldToLight[2i];
    let x_2121 : vec3<f32> = vs_INTERP7;
    let x_2124 : vec4<f32> = u_xlat6;
    let x_2126 : vec2<f32> = ((vec2<f32>(x_2119.x, x_2119.y) * vec2<f32>(x_2121.z, x_2121.z)) + vec2<f32>(x_2124.x, x_2124.y));
    let x_2127 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2126.x, x_2126.y, x_2127.z, x_2127.w);
    let x_2129 : vec4<f32> = u_xlat6;
    let x_2132 : vec4<f32> = x_2092.x_MainLightWorldToLight[3i];
    let x_2134 : vec2<f32> = (vec2<f32>(x_2129.x, x_2129.y) + vec2<f32>(x_2132.x, x_2132.y));
    let x_2135 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2134.x, x_2134.y, x_2135.z, x_2135.w);
    let x_2137 : vec4<f32> = u_xlat6;
    let x_2140 : vec2<f32> = ((vec2<f32>(x_2137.x, x_2137.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2141 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2140.x, x_2140.y, x_2141.z, x_2141.w);
    let x_2148 : vec4<f32> = u_xlat6;
    let x_2151 : f32 = x_135.x_GlobalMipBias.x;
    let x_2152 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2148.x, x_2148.y), x_2151);
    u_xlat6 = x_2152;
    let x_2155 : f32 = x_2092.x_MainLightCookieTextureFormat;
    let x_2157 : f32 = x_2092.x_MainLightCookieTextureFormat;
    let x_2159 : f32 = x_2092.x_MainLightCookieTextureFormat;
    let x_2161 : f32 = x_2092.x_MainLightCookieTextureFormat;
    let x_2162 : vec4<f32> = vec4<f32>(x_2155, x_2157, x_2159, x_2161);
    let x_2170 : vec4<bool> = (vec4<f32>(x_2162.x, x_2162.y, x_2162.z, x_2162.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_2170.x, x_2170.y);
    let x_2173 : bool = u_xlatb7.y;
    if (x_2173) {
      let x_2178 : f32 = u_xlat6.w;
      x_2174 = x_2178;
    } else {
      let x_2181 : f32 = u_xlat6.x;
      x_2174 = x_2181;
    }
    let x_2182 : f32 = x_2174;
    u_xlat83 = x_2182;
    let x_2184 : bool = u_xlatb7.x;
    if (x_2184) {
      let x_2188 : vec4<f32> = u_xlat6;
      x_2185 = vec3<f32>(x_2188.x, x_2188.y, x_2188.z);
    } else {
      let x_2191 : f32 = u_xlat83;
      x_2185 = vec3<f32>(x_2191, x_2191, x_2191);
    }
    let x_2193 : vec3<f32> = x_2185;
    let x_2194 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2193.x, x_2193.y, x_2193.z, x_2194.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_2200 : vec4<f32> = u_xlat6;
  let x_2203 : vec4<f32> = x_135.x_MainLightColor;
  let x_2205 : vec3<f32> = (vec3<f32>(x_2200.x, x_2200.y, x_2200.z) * vec3<f32>(x_2203.x, x_2203.y, x_2203.z));
  let x_2206 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2205.x, x_2205.y, x_2205.z, x_2206.w);
  let x_2208 : vec3<f32> = u_xlat5;
  let x_2210 : vec4<f32> = u_xlat4;
  u_xlat83 = dot(-(x_2208), vec3<f32>(x_2210.x, x_2210.y, x_2210.z));
  let x_2213 : f32 = u_xlat83;
  let x_2214 : f32 = u_xlat83;
  u_xlat83 = (x_2213 + x_2214);
  let x_2216 : vec4<f32> = u_xlat4;
  let x_2218 : f32 = u_xlat83;
  let x_2222 : vec3<f32> = u_xlat5;
  let x_2224 : vec3<f32> = ((vec3<f32>(x_2216.x, x_2216.y, x_2216.z) * -(vec3<f32>(x_2218, x_2218, x_2218))) + -(x_2222));
  let x_2225 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2224.x, x_2224.y, x_2224.z, x_2225.w);
  let x_2227 : vec4<f32> = u_xlat4;
  let x_2229 : vec3<f32> = u_xlat5;
  u_xlat83 = dot(vec3<f32>(x_2227.x, x_2227.y, x_2227.z), x_2229);
  let x_2231 : f32 = u_xlat83;
  u_xlat83 = clamp(x_2231, 0.0f, 1.0f);
  let x_2233 : f32 = u_xlat83;
  u_xlat83 = (-(x_2233) + 1.0f);
  let x_2236 : f32 = u_xlat83;
  let x_2237 : f32 = u_xlat83;
  u_xlat83 = (x_2236 * x_2237);
  let x_2239 : f32 = u_xlat83;
  let x_2240 : f32 = u_xlat83;
  u_xlat83 = (x_2239 * x_2240);
  let x_2243 : f32 = u_xlat79;
  u_xlat84 = ((-(x_2243) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2249 : f32 = u_xlat79;
  let x_2250 : f32 = u_xlat84;
  u_xlat79 = (x_2249 * x_2250);
  let x_2252 : f32 = u_xlat79;
  u_xlat79 = (x_2252 * 6.0f);
  let x_2263 : vec4<f32> = u_xlat7;
  let x_2265 : f32 = u_xlat79;
  let x_2266 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2263.x, x_2263.y, x_2263.z), x_2265);
  u_xlat7 = x_2266;
  let x_2268 : f32 = u_xlat7.w;
  u_xlat79 = (x_2268 + -1.0f);
  let x_2271 : f32 = x_48.unity_SpecCube0_HDR.w;
  let x_2272 : f32 = u_xlat79;
  u_xlat79 = ((x_2271 * x_2272) + 1.0f);
  let x_2275 : f32 = u_xlat79;
  u_xlat79 = max(x_2275, 0.0f);
  let x_2277 : f32 = u_xlat79;
  u_xlat79 = log2(x_2277);
  let x_2279 : f32 = u_xlat79;
  let x_2281 : f32 = x_48.unity_SpecCube0_HDR.y;
  u_xlat79 = (x_2279 * x_2281);
  let x_2283 : f32 = u_xlat79;
  u_xlat79 = exp2(x_2283);
  let x_2285 : f32 = u_xlat79;
  let x_2287 : f32 = x_48.unity_SpecCube0_HDR.x;
  u_xlat79 = (x_2285 * x_2287);
  let x_2289 : vec4<f32> = u_xlat7;
  let x_2291 : f32 = u_xlat79;
  let x_2293 : vec3<f32> = (vec3<f32>(x_2289.x, x_2289.y, x_2289.z) * vec3<f32>(x_2291, x_2291, x_2291));
  let x_2294 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2293.x, x_2293.y, x_2293.z, x_2294.w);
  let x_2296 : f32 = u_xlat80;
  let x_2298 : f32 = u_xlat80;
  let x_2302 : vec2<f32> = ((vec2<f32>(x_2296, x_2296) * vec2<f32>(x_2298, x_2298)) + vec2<f32>(-1.0f, 1.0f));
  let x_2303 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2302.x, x_2302.y, x_2303.z, x_2303.w);
  let x_2306 : f32 = u_xlat8.y;
  u_xlat79 = (1.0f / x_2306);
  let x_2308 : vec3<f32> = u_xlat2;
  let x_2310 : vec4<f32> = u_xlat0;
  u_xlat34 = (-(x_2308) + vec3<f32>(x_2310.x, x_2310.x, x_2310.x));
  let x_2313 : f32 = u_xlat83;
  let x_2315 : vec3<f32> = u_xlat34;
  let x_2317 : vec3<f32> = u_xlat2;
  u_xlat34 = ((vec3<f32>(x_2313, x_2313, x_2313) * x_2315) + x_2317);
  let x_2319 : f32 = u_xlat79;
  let x_2321 : vec3<f32> = u_xlat34;
  u_xlat34 = (vec3<f32>(x_2319, x_2319, x_2319) * x_2321);
  let x_2323 : vec4<f32> = u_xlat7;
  let x_2325 : vec3<f32> = u_xlat34;
  let x_2326 : vec3<f32> = (vec3<f32>(x_2323.x, x_2323.y, x_2323.z) * x_2325);
  let x_2327 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2326.x, x_2326.y, x_2326.z, x_2327.w);
  let x_2329 : vec3<f32> = u_xlat26;
  let x_2330 : vec4<f32> = u_xlat1;
  let x_2333 : vec4<f32> = u_xlat7;
  let x_2335 : vec3<f32> = ((x_2329 * vec3<f32>(x_2330.x, x_2330.y, x_2330.z)) + vec3<f32>(x_2333.x, x_2333.y, x_2333.z));
  let x_2336 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2335.x, x_2335.y, x_2335.z, x_2336.w);
  let x_2339 : f32 = u_xlat81;
  let x_2341 : f32 = x_48.unity_LightData.z;
  u_xlat78 = (x_2339 * x_2341);
  let x_2343 : vec4<f32> = u_xlat4;
  let x_2346 : vec4<f32> = x_135.x_MainLightPosition;
  u_xlat79 = dot(vec3<f32>(x_2343.x, x_2343.y, x_2343.z), vec3<f32>(x_2346.x, x_2346.y, x_2346.z));
  let x_2349 : f32 = u_xlat79;
  u_xlat79 = clamp(x_2349, 0.0f, 1.0f);
  let x_2351 : f32 = u_xlat78;
  let x_2352 : f32 = u_xlat79;
  u_xlat78 = (x_2351 * x_2352);
  let x_2354 : f32 = u_xlat78;
  let x_2356 : vec4<f32> = u_xlat6;
  let x_2358 : vec3<f32> = (vec3<f32>(x_2354, x_2354, x_2354) * vec3<f32>(x_2356.x, x_2356.y, x_2356.z));
  let x_2359 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2358.x, x_2358.y, x_2358.z, x_2359.w);
  let x_2361 : vec3<f32> = u_xlat5;
  let x_2363 : vec4<f32> = x_135.x_MainLightPosition;
  let x_2365 : vec3<f32> = (x_2361 + vec3<f32>(x_2363.x, x_2363.y, x_2363.z));
  let x_2366 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2365.x, x_2365.y, x_2365.z, x_2366.w);
  let x_2368 : vec4<f32> = u_xlat7;
  let x_2370 : vec4<f32> = u_xlat7;
  u_xlat78 = dot(vec3<f32>(x_2368.x, x_2368.y, x_2368.z), vec3<f32>(x_2370.x, x_2370.y, x_2370.z));
  let x_2373 : f32 = u_xlat78;
  u_xlat78 = max(x_2373, 1.17549435e-38f);
  let x_2375 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_2375);
  let x_2377 : f32 = u_xlat78;
  let x_2379 : vec4<f32> = u_xlat7;
  let x_2381 : vec3<f32> = (vec3<f32>(x_2377, x_2377, x_2377) * vec3<f32>(x_2379.x, x_2379.y, x_2379.z));
  let x_2382 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2381.x, x_2381.y, x_2381.z, x_2382.w);
  let x_2384 : vec4<f32> = u_xlat4;
  let x_2386 : vec4<f32> = u_xlat7;
  u_xlat78 = dot(vec3<f32>(x_2384.x, x_2384.y, x_2384.z), vec3<f32>(x_2386.x, x_2386.y, x_2386.z));
  let x_2389 : f32 = u_xlat78;
  u_xlat78 = clamp(x_2389, 0.0f, 1.0f);
  let x_2392 : vec4<f32> = x_135.x_MainLightPosition;
  let x_2394 : vec4<f32> = u_xlat7;
  u_xlat79 = dot(vec3<f32>(x_2392.x, x_2392.y, x_2392.z), vec3<f32>(x_2394.x, x_2394.y, x_2394.z));
  let x_2397 : f32 = u_xlat79;
  u_xlat79 = clamp(x_2397, 0.0f, 1.0f);
  let x_2399 : f32 = u_xlat78;
  let x_2400 : f32 = u_xlat78;
  u_xlat78 = (x_2399 * x_2400);
  let x_2402 : f32 = u_xlat78;
  let x_2404 : f32 = u_xlat8.x;
  u_xlat78 = ((x_2402 * x_2404) + 1.00001001358032226562f);
  let x_2408 : f32 = u_xlat79;
  let x_2409 : f32 = u_xlat79;
  u_xlat79 = (x_2408 * x_2409);
  let x_2411 : f32 = u_xlat78;
  let x_2412 : f32 = u_xlat78;
  u_xlat78 = (x_2411 * x_2412);
  let x_2414 : f32 = u_xlat79;
  u_xlat79 = max(x_2414, 0.10000000149011611938f);
  let x_2416 : f32 = u_xlat78;
  let x_2417 : f32 = u_xlat79;
  u_xlat78 = (x_2416 * x_2417);
  let x_2419 : f32 = u_xlat29;
  let x_2420 : f32 = u_xlat78;
  u_xlat78 = (x_2419 * x_2420);
  let x_2423 : f32 = u_xlat3.x;
  let x_2424 : f32 = u_xlat78;
  u_xlat78 = (x_2423 / x_2424);
  let x_2426 : vec3<f32> = u_xlat2;
  let x_2427 : f32 = u_xlat78;
  let x_2430 : vec4<f32> = u_xlat1;
  let x_2432 : vec3<f32> = ((x_2426 * vec3<f32>(x_2427, x_2427, x_2427)) + vec3<f32>(x_2430.x, x_2430.y, x_2430.z));
  let x_2433 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2432.x, x_2432.y, x_2432.z, x_2433.w);
  let x_2435 : vec4<f32> = u_xlat6;
  let x_2437 : vec4<f32> = u_xlat7;
  let x_2439 : vec3<f32> = (vec3<f32>(x_2435.x, x_2435.y, x_2435.z) * vec3<f32>(x_2437.x, x_2437.y, x_2437.z));
  let x_2440 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2439.x, x_2439.y, x_2439.z, x_2440.w);
  let x_2443 : f32 = x_135.x_AdditionalLightsCount.x;
  let x_2445 : f32 = x_48.unity_LightData.y;
  u_xlat78 = min(x_2443, x_2445);
  let x_2449 : f32 = u_xlat78;
  u_xlatu78 = bitcast<u32>(i32(x_2449));
  let x_2452 : f32 = u_xlat82;
  let x_2455 : f32 = x_808.x_AdditionalShadowFadeParams.x;
  let x_2458 : f32 = x_808.x_AdditionalShadowFadeParams.y;
  u_xlat79 = ((x_2452 * x_2455) + x_2458);
  let x_2460 : f32 = u_xlat79;
  u_xlat79 = clamp(x_2460, 0.0f, 1.0f);
  let x_2463 : f32 = x_2092.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2465 : f32 = x_2092.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2467 : f32 = x_2092.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2469 : f32 = x_2092.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2470 : vec4<f32> = vec4<f32>(x_2463, x_2465, x_2467, x_2469);
  let x_2476 : vec4<bool> = (vec4<f32>(x_2470.x, x_2470.y, x_2470.z, x_2470.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2476.x, x_2476.y);
  u_xlat34.x = 0.0f;
  u_xlat34.y = 0.0f;
  u_xlat34.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2488 : u32 = u_xlatu_loop_1;
    let x_2489 : u32 = u_xlatu78;
    if ((x_2488 < x_2489)) {
    } else {
      break;
    }
    let x_2492 : u32 = u_xlatu_loop_1;
    u_xlatu81 = (x_2492 >> 2u);
    let x_2496 : u32 = u_xlatu_loop_1;
    u_xlati82 = bitcast<i32>((x_2496 & 3u));
    let x_2499 : u32 = u_xlatu81;
    let x_2502 : vec4<f32> = x_48.unity_LightIndices[bitcast<i32>(x_2499)];
    let x_2512 : i32 = u_xlati82;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2517 : vec4<u32> = indexable[x_2512];
    u_xlat81 = dot(x_2502, bitcast<vec4<f32>>(x_2517));
    let x_2521 : f32 = u_xlat81;
    u_xlati81 = i32(x_2521);
    let x_2523 : vec3<f32> = vs_INTERP7;
    let x_2534 : i32 = u_xlati81;
    let x_2536 : vec4<f32> = x_2533.x_AdditionalLightsPosition[x_2534];
    let x_2539 : i32 = u_xlati81;
    let x_2541 : vec4<f32> = x_2533.x_AdditionalLightsPosition[x_2539];
    let x_2543 : vec3<f32> = ((-(x_2523) * vec3<f32>(x_2536.w, x_2536.w, x_2536.w)) + vec3<f32>(x_2541.x, x_2541.y, x_2541.z));
    let x_2544 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2543.x, x_2543.y, x_2543.z, x_2544.w);
    let x_2546 : vec4<f32> = u_xlat9;
    let x_2548 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_2546.x, x_2546.y, x_2546.z), vec3<f32>(x_2548.x, x_2548.y, x_2548.z));
    let x_2551 : f32 = u_xlat82;
    u_xlat82 = max(x_2551, 0.00006103515625f);
    let x_2553 : f32 = u_xlat82;
    u_xlat83 = inverseSqrt(x_2553);
    let x_2555 : f32 = u_xlat83;
    let x_2557 : vec4<f32> = u_xlat9;
    let x_2559 : vec3<f32> = (vec3<f32>(x_2555, x_2555, x_2555) * vec3<f32>(x_2557.x, x_2557.y, x_2557.z));
    let x_2560 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2559.x, x_2559.y, x_2559.z, x_2560.w);
    let x_2562 : f32 = u_xlat82;
    u_xlat84 = (1.0f / x_2562);
    let x_2564 : f32 = u_xlat82;
    let x_2565 : i32 = u_xlati81;
    let x_2567 : f32 = x_2533.x_AdditionalLightsAttenuation[x_2565].x;
    u_xlat82 = (x_2564 * x_2567);
    let x_2569 : f32 = u_xlat82;
    let x_2571 : f32 = u_xlat82;
    u_xlat82 = ((-(x_2569) * x_2571) + 1.0f);
    let x_2574 : f32 = u_xlat82;
    u_xlat82 = max(x_2574, 0.0f);
    let x_2576 : f32 = u_xlat82;
    let x_2577 : f32 = u_xlat82;
    u_xlat82 = (x_2576 * x_2577);
    let x_2579 : f32 = u_xlat82;
    let x_2580 : f32 = u_xlat84;
    u_xlat82 = (x_2579 * x_2580);
    let x_2582 : i32 = u_xlati81;
    let x_2584 : vec4<f32> = x_2533.x_AdditionalLightsSpotDir[x_2582];
    let x_2586 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(vec3<f32>(x_2584.x, x_2584.y, x_2584.z), vec3<f32>(x_2586.x, x_2586.y, x_2586.z));
    let x_2589 : f32 = u_xlat84;
    let x_2590 : i32 = u_xlati81;
    let x_2592 : f32 = x_2533.x_AdditionalLightsAttenuation[x_2590].z;
    let x_2594 : i32 = u_xlati81;
    let x_2596 : f32 = x_2533.x_AdditionalLightsAttenuation[x_2594].w;
    u_xlat84 = ((x_2589 * x_2592) + x_2596);
    let x_2598 : f32 = u_xlat84;
    u_xlat84 = clamp(x_2598, 0.0f, 1.0f);
    let x_2600 : f32 = u_xlat84;
    let x_2601 : f32 = u_xlat84;
    u_xlat84 = (x_2600 * x_2601);
    let x_2603 : f32 = u_xlat82;
    let x_2604 : f32 = u_xlat84;
    u_xlat82 = (x_2603 * x_2604);
    let x_2608 : i32 = u_xlati81;
    let x_2610 : f32 = x_808.x_AdditionalShadowParams[x_2608].w;
    u_xlati84 = i32(x_2610);
    let x_2613 : i32 = u_xlati84;
    u_xlatb59 = (x_2613 >= 0i);
    let x_2615 : bool = u_xlatb59;
    if (x_2615) {
      let x_2619 : i32 = u_xlati81;
      let x_2621 : f32 = x_808.x_AdditionalShadowParams[x_2619].z;
      u_xlatb59 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2621, x_2621, x_2621, x_2621))));
      let x_2625 : bool = u_xlatb59;
      if (x_2625) {
        let x_2630 : vec4<f32> = u_xlat10;
        let x_2633 : vec4<f32> = u_xlat10;
        let x_2636 : vec4<bool> = (abs(vec4<f32>(x_2630.z, x_2630.z, x_2630.y, x_2630.z)) >= abs(vec4<f32>(x_2633.x, x_2633.y, x_2633.x, x_2633.x)));
        let x_2638 : vec3<bool> = vec3<bool>(x_2636.x, x_2636.y, x_2636.z);
        let x_2639 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2638.x, x_2638.y, x_2638.z, x_2639.w);
        let x_2642 : bool = u_xlatb11.y;
        let x_2644 : bool = u_xlatb11.x;
        u_xlatb59 = (x_2642 & x_2644);
        let x_2646 : vec4<f32> = u_xlat10;
        let x_2649 : vec4<bool> = (-(vec4<f32>(x_2646.z, x_2646.y, x_2646.z, x_2646.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2650 : vec3<bool> = vec3<bool>(x_2649.x, x_2649.y, x_2649.w);
        let x_2651 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2650.x, x_2650.y, x_2651.z, x_2650.z);
        let x_2654 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2654);
        let x_2659 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2659);
        let x_2664 : bool = u_xlatb11.w;
        u_xlat85 = select(0.0f, 1.0f, x_2664);
        let x_2667 : bool = u_xlatb11.z;
        if (x_2667) {
          let x_2672 : f32 = u_xlat11.y;
          x_2668 = x_2672;
        } else {
          let x_2674 : f32 = u_xlat85;
          x_2668 = x_2674;
        }
        let x_2675 : f32 = x_2668;
        u_xlat85 = x_2675;
        let x_2677 : bool = u_xlatb59;
        if (x_2677) {
          let x_2682 : f32 = u_xlat11.x;
          x_2678 = x_2682;
        } else {
          let x_2684 : f32 = u_xlat85;
          x_2678 = x_2684;
        }
        let x_2685 : f32 = x_2678;
        u_xlat59.x = x_2685;
        let x_2687 : i32 = u_xlati81;
        let x_2689 : f32 = x_808.x_AdditionalShadowParams[x_2687].w;
        u_xlat85 = trunc(x_2689);
        let x_2692 : f32 = u_xlat59.x;
        let x_2693 : f32 = u_xlat85;
        u_xlat59.x = (x_2692 + x_2693);
        let x_2697 : f32 = u_xlat59.x;
        u_xlati84 = i32(x_2697);
      }
      let x_2699 : i32 = u_xlati84;
      u_xlati84 = (x_2699 << bitcast<u32>(2i));
      let x_2701 : vec3<f32> = vs_INTERP7;
      let x_2704 : i32 = u_xlati84;
      let x_2707 : i32 = u_xlati84;
      let x_2711 : vec4<f32> = x_808.x_AdditionalLightsWorldToShadow[((x_2704 + 1i) / 4i)][((x_2707 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2701.y, x_2701.y, x_2701.y, x_2701.y) * x_2711);
      let x_2713 : i32 = u_xlati84;
      let x_2715 : i32 = u_xlati84;
      let x_2718 : vec4<f32> = x_808.x_AdditionalLightsWorldToShadow[(x_2713 / 4i)][(x_2715 % 4i)];
      let x_2719 : vec3<f32> = vs_INTERP7;
      let x_2722 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2718 * vec4<f32>(x_2719.x, x_2719.x, x_2719.x, x_2719.x)) + x_2722);
      let x_2724 : i32 = u_xlati84;
      let x_2727 : i32 = u_xlati84;
      let x_2731 : vec4<f32> = x_808.x_AdditionalLightsWorldToShadow[((x_2724 + 2i) / 4i)][((x_2727 + 2i) % 4i)];
      let x_2732 : vec3<f32> = vs_INTERP7;
      let x_2735 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2731 * vec4<f32>(x_2732.z, x_2732.z, x_2732.z, x_2732.z)) + x_2735);
      let x_2737 : vec4<f32> = u_xlat11;
      let x_2738 : i32 = u_xlati84;
      let x_2741 : i32 = u_xlati84;
      let x_2745 : vec4<f32> = x_808.x_AdditionalLightsWorldToShadow[((x_2738 + 3i) / 4i)][((x_2741 + 3i) % 4i)];
      u_xlat11 = (x_2737 + x_2745);
      let x_2747 : vec4<f32> = u_xlat11;
      let x_2749 : vec4<f32> = u_xlat11;
      let x_2751 : vec3<f32> = (vec3<f32>(x_2747.x, x_2747.y, x_2747.z) / vec3<f32>(x_2749.w, x_2749.w, x_2749.w));
      let x_2752 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2751.x, x_2751.y, x_2751.z, x_2752.w);
      let x_2755 : i32 = u_xlati81;
      let x_2757 : f32 = x_808.x_AdditionalShadowParams[x_2755].y;
      u_xlatb84 = (0.0f < x_2757);
      let x_2759 : bool = u_xlatb84;
      if (x_2759) {
        let x_2762 : i32 = u_xlati81;
        let x_2764 : f32 = x_808.x_AdditionalShadowParams[x_2762].y;
        u_xlatb84 = (1.0f == x_2764);
        let x_2766 : bool = u_xlatb84;
        if (x_2766) {
          let x_2769 : vec4<f32> = u_xlat11;
          let x_2773 : vec4<f32> = x_808.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2769.x, x_2769.y, x_2769.x, x_2769.y) + x_2773);
          let x_2776 : vec4<f32> = u_xlat12;
          let x_2777 : vec2<f32> = vec2<f32>(x_2776.x, x_2776.y);
          let x_2779 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2777.x, x_2777.y, x_2779);
          let x_2787 : vec3<f32> = txVec30;
          let x_2789 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2787.xy, x_2787.z);
          u_xlat13.x = x_2789;
          let x_2792 : vec4<f32> = u_xlat12;
          let x_2793 : vec2<f32> = vec2<f32>(x_2792.z, x_2792.w);
          let x_2795 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2793.x, x_2793.y, x_2795);
          let x_2802 : vec3<f32> = txVec31;
          let x_2804 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2802.xy, x_2802.z);
          u_xlat13.y = x_2804;
          let x_2806 : vec4<f32> = u_xlat11;
          let x_2810 : vec4<f32> = x_808.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2806.x, x_2806.y, x_2806.x, x_2806.y) + x_2810);
          let x_2813 : vec4<f32> = u_xlat12;
          let x_2814 : vec2<f32> = vec2<f32>(x_2813.x, x_2813.y);
          let x_2816 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2814.x, x_2814.y, x_2816);
          let x_2823 : vec3<f32> = txVec32;
          let x_2825 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2823.xy, x_2823.z);
          u_xlat13.z = x_2825;
          let x_2828 : vec4<f32> = u_xlat12;
          let x_2829 : vec2<f32> = vec2<f32>(x_2828.z, x_2828.w);
          let x_2831 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2829.x, x_2829.y, x_2831);
          let x_2838 : vec3<f32> = txVec33;
          let x_2840 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2838.xy, x_2838.z);
          u_xlat13.w = x_2840;
          let x_2842 : vec4<f32> = u_xlat13;
          u_xlat84 = dot(x_2842, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2845 : i32 = u_xlati81;
          let x_2847 : f32 = x_808.x_AdditionalShadowParams[x_2845].y;
          u_xlatb59 = (2.0f == x_2847);
          let x_2849 : bool = u_xlatb59;
          if (x_2849) {
            let x_2852 : vec4<f32> = u_xlat11;
            let x_2856 : vec4<f32> = x_808.x_AdditionalShadowmapSize;
            u_xlat59 = ((vec2<f32>(x_2852.x, x_2852.y) * vec2<f32>(x_2856.z, x_2856.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2860 : vec2<f32> = u_xlat59;
            u_xlat59 = floor(x_2860);
            let x_2862 : vec4<f32> = u_xlat11;
            let x_2865 : vec4<f32> = x_808.x_AdditionalShadowmapSize;
            let x_2868 : vec2<f32> = u_xlat59;
            let x_2870 : vec2<f32> = ((vec2<f32>(x_2862.x, x_2862.y) * vec2<f32>(x_2865.z, x_2865.w)) + -(x_2868));
            let x_2871 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2870.x, x_2870.y, x_2871.z, x_2871.w);
            let x_2873 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2873.x, x_2873.x, x_2873.y, x_2873.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2876 : vec4<f32> = u_xlat13;
            let x_2878 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2876.x, x_2876.x, x_2876.z, x_2876.z) * vec4<f32>(x_2878.x, x_2878.x, x_2878.z, x_2878.z));
            let x_2882 : vec4<f32> = u_xlat14;
            u_xlat64 = (vec2<f32>(x_2882.y, x_2882.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2885 : vec4<f32> = u_xlat14;
            let x_2888 : vec4<f32> = u_xlat12;
            let x_2891 : vec2<f32> = ((vec2<f32>(x_2885.x, x_2885.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2888.x, x_2888.y)));
            let x_2892 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2891.x, x_2892.y, x_2891.y, x_2892.w);
            let x_2894 : vec4<f32> = u_xlat12;
            let x_2897 : vec2<f32> = (-(vec2<f32>(x_2894.x, x_2894.y)) + vec2<f32>(1.0f, 1.0f));
            let x_2898 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2897.x, x_2897.y, x_2898.z, x_2898.w);
            let x_2900 : vec4<f32> = u_xlat12;
            u_xlat66 = min(vec2<f32>(x_2900.x, x_2900.y), vec2<f32>(0.0f, 0.0f));
            let x_2903 : vec2<f32> = u_xlat66;
            let x_2905 : vec2<f32> = u_xlat66;
            let x_2907 : vec4<f32> = u_xlat14;
            u_xlat66 = ((-(x_2903) * x_2905) + vec2<f32>(x_2907.x, x_2907.y));
            let x_2910 : vec4<f32> = u_xlat12;
            let x_2912 : vec2<f32> = max(vec2<f32>(x_2910.x, x_2910.y), vec2<f32>(0.0f, 0.0f));
            let x_2913 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2912.x, x_2912.y, x_2913.z, x_2913.w);
            let x_2915 : vec4<f32> = u_xlat12;
            let x_2918 : vec4<f32> = u_xlat12;
            let x_2921 : vec4<f32> = u_xlat13;
            let x_2923 : vec2<f32> = ((-(vec2<f32>(x_2915.x, x_2915.y)) * vec2<f32>(x_2918.x, x_2918.y)) + vec2<f32>(x_2921.y, x_2921.w));
            let x_2924 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2923.x, x_2923.y, x_2924.z, x_2924.w);
            let x_2926 : vec2<f32> = u_xlat66;
            u_xlat66 = (x_2926 + vec2<f32>(1.0f, 1.0f));
            let x_2928 : vec4<f32> = u_xlat12;
            let x_2930 : vec2<f32> = (vec2<f32>(x_2928.x, x_2928.y) + vec2<f32>(1.0f, 1.0f));
            let x_2931 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2930.x, x_2930.y, x_2931.z, x_2931.w);
            let x_2933 : vec4<f32> = u_xlat13;
            let x_2935 : vec2<f32> = (vec2<f32>(x_2933.x, x_2933.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2936 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2935.x, x_2935.y, x_2936.z, x_2936.w);
            let x_2938 : vec4<f32> = u_xlat14;
            let x_2940 : vec2<f32> = (vec2<f32>(x_2938.x, x_2938.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2941 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2940.x, x_2940.y, x_2941.z, x_2941.w);
            let x_2943 : vec2<f32> = u_xlat66;
            let x_2944 : vec2<f32> = (x_2943 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2945 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2944.x, x_2944.y, x_2945.z, x_2945.w);
            let x_2947 : vec4<f32> = u_xlat12;
            let x_2949 : vec2<f32> = (vec2<f32>(x_2947.x, x_2947.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2950 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2949.x, x_2949.y, x_2950.z, x_2950.w);
            let x_2952 : vec4<f32> = u_xlat13;
            let x_2954 : vec2<f32> = (vec2<f32>(x_2952.y, x_2952.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2955 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2954.x, x_2954.y, x_2955.z, x_2955.w);
            let x_2958 : f32 = u_xlat14.x;
            u_xlat15.z = x_2958;
            let x_2961 : f32 = u_xlat12.x;
            u_xlat15.w = x_2961;
            let x_2964 : f32 = u_xlat17.x;
            u_xlat16.z = x_2964;
            let x_2967 : f32 = u_xlat64.x;
            u_xlat16.w = x_2967;
            let x_2969 : vec4<f32> = u_xlat15;
            let x_2971 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_2969.z, x_2969.w, x_2969.x, x_2969.z) + vec4<f32>(x_2971.z, x_2971.w, x_2971.x, x_2971.z));
            let x_2975 : f32 = u_xlat15.y;
            u_xlat14.z = x_2975;
            let x_2978 : f32 = u_xlat12.y;
            u_xlat14.w = x_2978;
            let x_2981 : f32 = u_xlat16.y;
            u_xlat17.z = x_2981;
            let x_2984 : f32 = u_xlat64.y;
            u_xlat17.w = x_2984;
            let x_2986 : vec4<f32> = u_xlat14;
            let x_2988 : vec4<f32> = u_xlat17;
            let x_2990 : vec3<f32> = (vec3<f32>(x_2986.z, x_2986.y, x_2986.w) + vec3<f32>(x_2988.z, x_2988.y, x_2988.w));
            let x_2991 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2990.x, x_2990.y, x_2990.z, x_2991.w);
            let x_2993 : vec4<f32> = u_xlat16;
            let x_2995 : vec4<f32> = u_xlat13;
            let x_2997 : vec3<f32> = (vec3<f32>(x_2993.x, x_2993.z, x_2993.w) / vec3<f32>(x_2995.z, x_2995.w, x_2995.y));
            let x_2998 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2997.x, x_2997.y, x_2997.z, x_2998.w);
            let x_3000 : vec4<f32> = u_xlat14;
            let x_3002 : vec3<f32> = (vec3<f32>(x_3000.x, x_3000.y, x_3000.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3003 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3002.x, x_3002.y, x_3002.z, x_3003.w);
            let x_3005 : vec4<f32> = u_xlat17;
            let x_3007 : vec4<f32> = u_xlat12;
            let x_3009 : vec3<f32> = (vec3<f32>(x_3005.z, x_3005.y, x_3005.w) / vec3<f32>(x_3007.x, x_3007.y, x_3007.z));
            let x_3010 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3009.x, x_3009.y, x_3009.z, x_3010.w);
            let x_3012 : vec4<f32> = u_xlat15;
            let x_3014 : vec3<f32> = (vec3<f32>(x_3012.x, x_3012.y, x_3012.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3015 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3014.x, x_3014.y, x_3014.z, x_3015.w);
            let x_3017 : vec4<f32> = u_xlat14;
            let x_3020 : vec4<f32> = x_808.x_AdditionalShadowmapSize;
            let x_3022 : vec3<f32> = (vec3<f32>(x_3017.y, x_3017.x, x_3017.z) * vec3<f32>(x_3020.x, x_3020.x, x_3020.x));
            let x_3023 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3022.x, x_3022.y, x_3022.z, x_3023.w);
            let x_3025 : vec4<f32> = u_xlat15;
            let x_3028 : vec4<f32> = x_808.x_AdditionalShadowmapSize;
            let x_3030 : vec3<f32> = (vec3<f32>(x_3025.x, x_3025.y, x_3025.z) * vec3<f32>(x_3028.y, x_3028.y, x_3028.y));
            let x_3031 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3030.x, x_3030.y, x_3030.z, x_3031.w);
            let x_3034 : f32 = u_xlat15.x;
            u_xlat14.w = x_3034;
            let x_3036 : vec2<f32> = u_xlat59;
            let x_3039 : vec4<f32> = x_808.x_AdditionalShadowmapSize;
            let x_3042 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3036.x, x_3036.y, x_3036.x, x_3036.y) * vec4<f32>(x_3039.x, x_3039.y, x_3039.x, x_3039.y)) + vec4<f32>(x_3042.y, x_3042.w, x_3042.x, x_3042.w));
            let x_3045 : vec2<f32> = u_xlat59;
            let x_3047 : vec4<f32> = x_808.x_AdditionalShadowmapSize;
            let x_3050 : vec4<f32> = u_xlat14;
            let x_3052 : vec2<f32> = ((x_3045 * vec2<f32>(x_3047.x, x_3047.y)) + vec2<f32>(x_3050.z, x_3050.w));
            let x_3053 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3052.x, x_3052.y, x_3053.z, x_3053.w);
            let x_3056 : f32 = u_xlat14.y;
            u_xlat15.w = x_3056;
            let x_3058 : vec4<f32> = u_xlat15;
            let x_3059 : vec2<f32> = vec2<f32>(x_3058.y, x_3058.z);
            let x_3060 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3060.x, x_3059.x, x_3060.z, x_3059.y);
            let x_3062 : vec2<f32> = u_xlat59;
            let x_3065 : vec4<f32> = x_808.x_AdditionalShadowmapSize;
            let x_3068 : vec4<f32> = u_xlat14;
            u_xlat18 = ((vec4<f32>(x_3062.x, x_3062.y, x_3062.x, x_3062.y) * vec4<f32>(x_3065.x, x_3065.y, x_3065.x, x_3065.y)) + vec4<f32>(x_3068.x, x_3068.y, x_3068.z, x_3068.y));
            let x_3071 : vec2<f32> = u_xlat59;
            let x_3074 : vec4<f32> = x_808.x_AdditionalShadowmapSize;
            let x_3077 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_3071.x, x_3071.y, x_3071.x, x_3071.y) * vec4<f32>(x_3074.x, x_3074.y, x_3074.x, x_3074.y)) + vec4<f32>(x_3077.w, x_3077.y, x_3077.w, x_3077.z));
            let x_3080 : vec2<f32> = u_xlat59;
            let x_3083 : vec4<f32> = x_808.x_AdditionalShadowmapSize;
            let x_3086 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3080.x, x_3080.y, x_3080.x, x_3080.y) * vec4<f32>(x_3083.x, x_3083.y, x_3083.x, x_3083.y)) + vec4<f32>(x_3086.x, x_3086.w, x_3086.z, x_3086.w));
            let x_3089 : vec4<f32> = u_xlat12;
            let x_3091 : vec4<f32> = u_xlat13;
            u_xlat19 = (vec4<f32>(x_3089.x, x_3089.x, x_3089.x, x_3089.y) * vec4<f32>(x_3091.z, x_3091.w, x_3091.y, x_3091.z));
            let x_3095 : vec4<f32> = u_xlat12;
            let x_3097 : vec4<f32> = u_xlat13;
            u_xlat20 = (vec4<f32>(x_3095.y, x_3095.y, x_3095.z, x_3095.z) * x_3097);
            let x_3100 : f32 = u_xlat12.z;
            let x_3102 : f32 = u_xlat13.y;
            u_xlat59.x = (x_3100 * x_3102);
            let x_3106 : vec4<f32> = u_xlat16;
            let x_3107 : vec2<f32> = vec2<f32>(x_3106.x, x_3106.y);
            let x_3109 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_3107.x, x_3107.y, x_3109);
            let x_3116 : vec3<f32> = txVec34;
            let x_3118 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3116.xy, x_3116.z);
            u_xlat85 = x_3118;
            let x_3120 : vec4<f32> = u_xlat16;
            let x_3121 : vec2<f32> = vec2<f32>(x_3120.z, x_3120.w);
            let x_3123 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_3121.x, x_3121.y, x_3123);
            let x_3131 : vec3<f32> = txVec35;
            let x_3133 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3131.xy, x_3131.z);
            u_xlat87 = x_3133;
            let x_3134 : f32 = u_xlat87;
            let x_3136 : f32 = u_xlat19.y;
            u_xlat87 = (x_3134 * x_3136);
            let x_3139 : f32 = u_xlat19.x;
            let x_3140 : f32 = u_xlat85;
            let x_3142 : f32 = u_xlat87;
            u_xlat85 = ((x_3139 * x_3140) + x_3142);
            let x_3145 : vec4<f32> = u_xlat17;
            let x_3146 : vec2<f32> = vec2<f32>(x_3145.x, x_3145.y);
            let x_3148 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_3146.x, x_3146.y, x_3148);
            let x_3155 : vec3<f32> = txVec36;
            let x_3157 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3155.xy, x_3155.z);
            u_xlat87 = x_3157;
            let x_3159 : f32 = u_xlat19.z;
            let x_3160 : f32 = u_xlat87;
            let x_3162 : f32 = u_xlat85;
            u_xlat85 = ((x_3159 * x_3160) + x_3162);
            let x_3165 : vec4<f32> = u_xlat15;
            let x_3166 : vec2<f32> = vec2<f32>(x_3165.x, x_3165.y);
            let x_3168 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_3166.x, x_3166.y, x_3168);
            let x_3175 : vec3<f32> = txVec37;
            let x_3177 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3175.xy, x_3175.z);
            u_xlat87 = x_3177;
            let x_3179 : f32 = u_xlat19.w;
            let x_3180 : f32 = u_xlat87;
            let x_3182 : f32 = u_xlat85;
            u_xlat85 = ((x_3179 * x_3180) + x_3182);
            let x_3185 : vec4<f32> = u_xlat18;
            let x_3186 : vec2<f32> = vec2<f32>(x_3185.x, x_3185.y);
            let x_3188 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_3186.x, x_3186.y, x_3188);
            let x_3195 : vec3<f32> = txVec38;
            let x_3197 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3195.xy, x_3195.z);
            u_xlat87 = x_3197;
            let x_3199 : f32 = u_xlat20.x;
            let x_3200 : f32 = u_xlat87;
            let x_3202 : f32 = u_xlat85;
            u_xlat85 = ((x_3199 * x_3200) + x_3202);
            let x_3205 : vec4<f32> = u_xlat18;
            let x_3206 : vec2<f32> = vec2<f32>(x_3205.z, x_3205.w);
            let x_3208 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_3206.x, x_3206.y, x_3208);
            let x_3215 : vec3<f32> = txVec39;
            let x_3217 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3215.xy, x_3215.z);
            u_xlat87 = x_3217;
            let x_3219 : f32 = u_xlat20.y;
            let x_3220 : f32 = u_xlat87;
            let x_3222 : f32 = u_xlat85;
            u_xlat85 = ((x_3219 * x_3220) + x_3222);
            let x_3225 : vec4<f32> = u_xlat15;
            let x_3226 : vec2<f32> = vec2<f32>(x_3225.z, x_3225.w);
            let x_3228 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_3226.x, x_3226.y, x_3228);
            let x_3235 : vec3<f32> = txVec40;
            let x_3237 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3235.xy, x_3235.z);
            u_xlat87 = x_3237;
            let x_3239 : f32 = u_xlat20.z;
            let x_3240 : f32 = u_xlat87;
            let x_3242 : f32 = u_xlat85;
            u_xlat85 = ((x_3239 * x_3240) + x_3242);
            let x_3245 : vec4<f32> = u_xlat14;
            let x_3246 : vec2<f32> = vec2<f32>(x_3245.x, x_3245.y);
            let x_3248 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_3246.x, x_3246.y, x_3248);
            let x_3255 : vec3<f32> = txVec41;
            let x_3257 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3255.xy, x_3255.z);
            u_xlat87 = x_3257;
            let x_3259 : f32 = u_xlat20.w;
            let x_3260 : f32 = u_xlat87;
            let x_3262 : f32 = u_xlat85;
            u_xlat85 = ((x_3259 * x_3260) + x_3262);
            let x_3265 : vec4<f32> = u_xlat14;
            let x_3266 : vec2<f32> = vec2<f32>(x_3265.z, x_3265.w);
            let x_3268 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_3266.x, x_3266.y, x_3268);
            let x_3275 : vec3<f32> = txVec42;
            let x_3277 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3275.xy, x_3275.z);
            u_xlat87 = x_3277;
            let x_3279 : f32 = u_xlat59.x;
            let x_3280 : f32 = u_xlat87;
            let x_3282 : f32 = u_xlat85;
            u_xlat84 = ((x_3279 * x_3280) + x_3282);
          } else {
            let x_3285 : vec4<f32> = u_xlat11;
            let x_3288 : vec4<f32> = x_808.x_AdditionalShadowmapSize;
            u_xlat59 = ((vec2<f32>(x_3285.x, x_3285.y) * vec2<f32>(x_3288.z, x_3288.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3292 : vec2<f32> = u_xlat59;
            u_xlat59 = floor(x_3292);
            let x_3294 : vec4<f32> = u_xlat11;
            let x_3297 : vec4<f32> = x_808.x_AdditionalShadowmapSize;
            let x_3300 : vec2<f32> = u_xlat59;
            let x_3302 : vec2<f32> = ((vec2<f32>(x_3294.x, x_3294.y) * vec2<f32>(x_3297.z, x_3297.w)) + -(x_3300));
            let x_3303 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3302.x, x_3302.y, x_3303.z, x_3303.w);
            let x_3305 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3305.x, x_3305.x, x_3305.y, x_3305.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3308 : vec4<f32> = u_xlat13;
            let x_3310 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3308.x, x_3308.x, x_3308.z, x_3308.z) * vec4<f32>(x_3310.x, x_3310.x, x_3310.z, x_3310.z));
            let x_3313 : vec4<f32> = u_xlat14;
            let x_3315 : vec2<f32> = (vec2<f32>(x_3313.y, x_3313.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3316 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3316.x, x_3315.x, x_3316.z, x_3315.y);
            let x_3318 : vec4<f32> = u_xlat14;
            let x_3321 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3318.x, x_3318.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_3321.x, x_3321.y)));
            let x_3325 : vec4<f32> = u_xlat12;
            let x_3328 : vec2<f32> = (-(vec2<f32>(x_3325.x, x_3325.y)) + vec2<f32>(1.0f, 1.0f));
            let x_3329 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3328.x, x_3329.y, x_3328.y, x_3329.w);
            let x_3331 : vec4<f32> = u_xlat12;
            let x_3333 : vec2<f32> = min(vec2<f32>(x_3331.x, x_3331.y), vec2<f32>(0.0f, 0.0f));
            let x_3334 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3333.x, x_3333.y, x_3334.z, x_3334.w);
            let x_3336 : vec4<f32> = u_xlat14;
            let x_3339 : vec4<f32> = u_xlat14;
            let x_3342 : vec4<f32> = u_xlat13;
            let x_3344 : vec2<f32> = ((-(vec2<f32>(x_3336.x, x_3336.y)) * vec2<f32>(x_3339.x, x_3339.y)) + vec2<f32>(x_3342.x, x_3342.z));
            let x_3345 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3344.x, x_3345.y, x_3344.y, x_3345.w);
            let x_3347 : vec4<f32> = u_xlat12;
            let x_3349 : vec2<f32> = max(vec2<f32>(x_3347.x, x_3347.y), vec2<f32>(0.0f, 0.0f));
            let x_3350 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3349.x, x_3349.y, x_3350.z, x_3350.w);
            let x_3352 : vec4<f32> = u_xlat14;
            let x_3355 : vec4<f32> = u_xlat14;
            let x_3358 : vec4<f32> = u_xlat13;
            let x_3360 : vec2<f32> = ((-(vec2<f32>(x_3352.x, x_3352.y)) * vec2<f32>(x_3355.x, x_3355.y)) + vec2<f32>(x_3358.y, x_3358.w));
            let x_3361 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3361.x, x_3360.x, x_3361.z, x_3360.y);
            let x_3363 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3363 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
            let x_3367 : f32 = u_xlat13.y;
            u_xlat14.z = (x_3367 * 0.08163200318813323975f);
            let x_3370 : vec2<f32> = u_xlat64;
            let x_3372 : vec2<f32> = (vec2<f32>(x_3370.y, x_3370.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3373 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3372.x, x_3372.y, x_3373.z, x_3373.w);
            let x_3375 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_3375.x, x_3375.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3379 : f32 = u_xlat13.w;
            u_xlat16.z = (x_3379 * 0.08163200318813323975f);
            let x_3383 : f32 = u_xlat16.y;
            u_xlat14.x = x_3383;
            let x_3385 : vec4<f32> = u_xlat12;
            let x_3388 : vec2<f32> = ((vec2<f32>(x_3385.x, x_3385.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3389 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3389.x, x_3388.x, x_3389.z, x_3388.y);
            let x_3391 : vec4<f32> = u_xlat12;
            let x_3394 : vec2<f32> = ((vec2<f32>(x_3391.x, x_3391.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3395 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3394.x, x_3395.y, x_3394.y, x_3395.w);
            let x_3398 : f32 = u_xlat64.x;
            u_xlat13.y = x_3398;
            let x_3401 : f32 = u_xlat15.y;
            u_xlat13.w = x_3401;
            let x_3403 : vec4<f32> = u_xlat13;
            let x_3404 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3403 + x_3404);
            let x_3406 : vec4<f32> = u_xlat12;
            let x_3409 : vec2<f32> = ((vec2<f32>(x_3406.y, x_3406.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3410 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3410.x, x_3409.x, x_3410.z, x_3409.y);
            let x_3412 : vec4<f32> = u_xlat12;
            let x_3415 : vec2<f32> = ((vec2<f32>(x_3412.y, x_3412.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3416 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3415.x, x_3416.y, x_3415.y, x_3416.w);
            let x_3419 : f32 = u_xlat64.y;
            u_xlat15.y = x_3419;
            let x_3421 : vec4<f32> = u_xlat15;
            let x_3422 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_3421 + x_3422);
            let x_3424 : vec4<f32> = u_xlat13;
            let x_3425 : vec4<f32> = u_xlat14;
            u_xlat13 = (x_3424 / x_3425);
            let x_3427 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3427 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3429 : vec4<f32> = u_xlat15;
            let x_3430 : vec4<f32> = u_xlat12;
            u_xlat15 = (x_3429 / x_3430);
            let x_3432 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3432 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3434 : vec4<f32> = u_xlat13;
            let x_3437 : vec4<f32> = x_808.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3434.w, x_3434.x, x_3434.y, x_3434.z) * vec4<f32>(x_3437.x, x_3437.x, x_3437.x, x_3437.x));
            let x_3440 : vec4<f32> = u_xlat15;
            let x_3443 : vec4<f32> = x_808.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3440.x, x_3440.w, x_3440.y, x_3440.z) * vec4<f32>(x_3443.y, x_3443.y, x_3443.y, x_3443.y));
            let x_3446 : vec4<f32> = u_xlat13;
            let x_3447 : vec3<f32> = vec3<f32>(x_3446.y, x_3446.z, x_3446.w);
            let x_3448 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3447.x, x_3448.y, x_3447.y, x_3447.z);
            let x_3451 : f32 = u_xlat15.x;
            u_xlat16.y = x_3451;
            let x_3453 : vec2<f32> = u_xlat59;
            let x_3456 : vec4<f32> = x_808.x_AdditionalShadowmapSize;
            let x_3459 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3453.x, x_3453.y, x_3453.x, x_3453.y) * vec4<f32>(x_3456.x, x_3456.y, x_3456.x, x_3456.y)) + vec4<f32>(x_3459.x, x_3459.y, x_3459.z, x_3459.y));
            let x_3462 : vec2<f32> = u_xlat59;
            let x_3464 : vec4<f32> = x_808.x_AdditionalShadowmapSize;
            let x_3467 : vec4<f32> = u_xlat16;
            let x_3469 : vec2<f32> = ((x_3462 * vec2<f32>(x_3464.x, x_3464.y)) + vec2<f32>(x_3467.w, x_3467.y));
            let x_3470 : vec4<f32> = u_xlat18;
            u_xlat18 = vec4<f32>(x_3469.x, x_3469.y, x_3470.z, x_3470.w);
            let x_3473 : f32 = u_xlat16.y;
            u_xlat13.y = x_3473;
            let x_3476 : f32 = u_xlat15.z;
            u_xlat16.y = x_3476;
            let x_3478 : vec2<f32> = u_xlat59;
            let x_3481 : vec4<f32> = x_808.x_AdditionalShadowmapSize;
            let x_3484 : vec4<f32> = u_xlat16;
            u_xlat19 = ((vec4<f32>(x_3478.x, x_3478.y, x_3478.x, x_3478.y) * vec4<f32>(x_3481.x, x_3481.y, x_3481.x, x_3481.y)) + vec4<f32>(x_3484.x, x_3484.y, x_3484.z, x_3484.y));
            let x_3488 : vec2<f32> = u_xlat59;
            let x_3490 : vec4<f32> = x_808.x_AdditionalShadowmapSize;
            let x_3493 : vec4<f32> = u_xlat16;
            u_xlat70 = ((x_3488 * vec2<f32>(x_3490.x, x_3490.y)) + vec2<f32>(x_3493.w, x_3493.y));
            let x_3497 : f32 = u_xlat16.y;
            u_xlat13.z = x_3497;
            let x_3499 : vec2<f32> = u_xlat59;
            let x_3502 : vec4<f32> = x_808.x_AdditionalShadowmapSize;
            let x_3505 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3499.x, x_3499.y, x_3499.x, x_3499.y) * vec4<f32>(x_3502.x, x_3502.y, x_3502.x, x_3502.y)) + vec4<f32>(x_3505.x, x_3505.y, x_3505.x, x_3505.z));
            let x_3509 : f32 = u_xlat15.w;
            u_xlat16.y = x_3509;
            let x_3512 : vec2<f32> = u_xlat59;
            let x_3515 : vec4<f32> = x_808.x_AdditionalShadowmapSize;
            let x_3518 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3512.x, x_3512.y, x_3512.x, x_3512.y) * vec4<f32>(x_3515.x, x_3515.y, x_3515.x, x_3515.y)) + vec4<f32>(x_3518.x, x_3518.y, x_3518.z, x_3518.y));
            let x_3522 : vec2<f32> = u_xlat59;
            let x_3524 : vec4<f32> = x_808.x_AdditionalShadowmapSize;
            let x_3527 : vec4<f32> = u_xlat16;
            u_xlat39 = ((x_3522 * vec2<f32>(x_3524.x, x_3524.y)) + vec2<f32>(x_3527.w, x_3527.y));
            let x_3531 : f32 = u_xlat16.y;
            u_xlat13.w = x_3531;
            let x_3534 : vec2<f32> = u_xlat59;
            let x_3536 : vec4<f32> = x_808.x_AdditionalShadowmapSize;
            let x_3539 : vec4<f32> = u_xlat13;
            u_xlat22 = ((x_3534 * vec2<f32>(x_3536.x, x_3536.y)) + vec2<f32>(x_3539.x, x_3539.w));
            let x_3542 : vec4<f32> = u_xlat16;
            let x_3543 : vec3<f32> = vec3<f32>(x_3542.x, x_3542.z, x_3542.w);
            let x_3544 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3543.x, x_3544.y, x_3543.y, x_3543.z);
            let x_3546 : vec2<f32> = u_xlat59;
            let x_3549 : vec4<f32> = x_808.x_AdditionalShadowmapSize;
            let x_3552 : vec4<f32> = u_xlat15;
            u_xlat16 = ((vec4<f32>(x_3546.x, x_3546.y, x_3546.x, x_3546.y) * vec4<f32>(x_3549.x, x_3549.y, x_3549.x, x_3549.y)) + vec4<f32>(x_3552.x, x_3552.y, x_3552.z, x_3552.y));
            let x_3556 : vec2<f32> = u_xlat59;
            let x_3558 : vec4<f32> = x_808.x_AdditionalShadowmapSize;
            let x_3561 : vec4<f32> = u_xlat15;
            u_xlat67 = ((x_3556 * vec2<f32>(x_3558.x, x_3558.y)) + vec2<f32>(x_3561.w, x_3561.y));
            let x_3565 : f32 = u_xlat13.x;
            u_xlat15.x = x_3565;
            let x_3567 : vec2<f32> = u_xlat59;
            let x_3569 : vec4<f32> = x_808.x_AdditionalShadowmapSize;
            let x_3572 : vec4<f32> = u_xlat15;
            u_xlat59 = ((x_3567 * vec2<f32>(x_3569.x, x_3569.y)) + vec2<f32>(x_3572.x, x_3572.y));
            let x_3576 : vec4<f32> = u_xlat12;
            let x_3578 : vec4<f32> = u_xlat14;
            u_xlat23 = (vec4<f32>(x_3576.x, x_3576.x, x_3576.x, x_3576.x) * x_3578);
            let x_3581 : vec4<f32> = u_xlat12;
            let x_3583 : vec4<f32> = u_xlat14;
            u_xlat24 = (vec4<f32>(x_3581.y, x_3581.y, x_3581.y, x_3581.y) * x_3583);
            let x_3586 : vec4<f32> = u_xlat12;
            let x_3588 : vec4<f32> = u_xlat14;
            u_xlat25 = (vec4<f32>(x_3586.z, x_3586.z, x_3586.z, x_3586.z) * x_3588);
            let x_3590 : vec4<f32> = u_xlat12;
            let x_3592 : vec4<f32> = u_xlat14;
            u_xlat12 = (vec4<f32>(x_3590.w, x_3590.w, x_3590.w, x_3590.w) * x_3592);
            let x_3595 : vec4<f32> = u_xlat17;
            let x_3596 : vec2<f32> = vec2<f32>(x_3595.x, x_3595.y);
            let x_3598 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3596.x, x_3596.y, x_3598);
            let x_3605 : vec3<f32> = txVec43;
            let x_3607 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3605.xy, x_3605.z);
            u_xlat87 = x_3607;
            let x_3609 : vec4<f32> = u_xlat17;
            let x_3610 : vec2<f32> = vec2<f32>(x_3609.z, x_3609.w);
            let x_3612 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3610.x, x_3610.y, x_3612);
            let x_3620 : vec3<f32> = txVec44;
            let x_3622 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3620.xy, x_3620.z);
            u_xlat88 = x_3622;
            let x_3623 : f32 = u_xlat88;
            let x_3625 : f32 = u_xlat23.y;
            u_xlat88 = (x_3623 * x_3625);
            let x_3628 : f32 = u_xlat23.x;
            let x_3629 : f32 = u_xlat87;
            let x_3631 : f32 = u_xlat88;
            u_xlat87 = ((x_3628 * x_3629) + x_3631);
            let x_3634 : vec4<f32> = u_xlat18;
            let x_3635 : vec2<f32> = vec2<f32>(x_3634.x, x_3634.y);
            let x_3637 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3635.x, x_3635.y, x_3637);
            let x_3644 : vec3<f32> = txVec45;
            let x_3646 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3644.xy, x_3644.z);
            u_xlat88 = x_3646;
            let x_3648 : f32 = u_xlat23.z;
            let x_3649 : f32 = u_xlat88;
            let x_3651 : f32 = u_xlat87;
            u_xlat87 = ((x_3648 * x_3649) + x_3651);
            let x_3654 : vec4<f32> = u_xlat20;
            let x_3655 : vec2<f32> = vec2<f32>(x_3654.x, x_3654.y);
            let x_3657 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3655.x, x_3655.y, x_3657);
            let x_3664 : vec3<f32> = txVec46;
            let x_3666 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3664.xy, x_3664.z);
            u_xlat88 = x_3666;
            let x_3668 : f32 = u_xlat23.w;
            let x_3669 : f32 = u_xlat88;
            let x_3671 : f32 = u_xlat87;
            u_xlat87 = ((x_3668 * x_3669) + x_3671);
            let x_3674 : vec4<f32> = u_xlat19;
            let x_3675 : vec2<f32> = vec2<f32>(x_3674.x, x_3674.y);
            let x_3677 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3675.x, x_3675.y, x_3677);
            let x_3684 : vec3<f32> = txVec47;
            let x_3686 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3684.xy, x_3684.z);
            u_xlat88 = x_3686;
            let x_3688 : f32 = u_xlat24.x;
            let x_3689 : f32 = u_xlat88;
            let x_3691 : f32 = u_xlat87;
            u_xlat87 = ((x_3688 * x_3689) + x_3691);
            let x_3694 : vec4<f32> = u_xlat19;
            let x_3695 : vec2<f32> = vec2<f32>(x_3694.z, x_3694.w);
            let x_3697 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3695.x, x_3695.y, x_3697);
            let x_3704 : vec3<f32> = txVec48;
            let x_3706 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3704.xy, x_3704.z);
            u_xlat88 = x_3706;
            let x_3708 : f32 = u_xlat24.y;
            let x_3709 : f32 = u_xlat88;
            let x_3711 : f32 = u_xlat87;
            u_xlat87 = ((x_3708 * x_3709) + x_3711);
            let x_3714 : vec2<f32> = u_xlat70;
            let x_3716 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3714.x, x_3714.y, x_3716);
            let x_3723 : vec3<f32> = txVec49;
            let x_3725 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3723.xy, x_3723.z);
            u_xlat88 = x_3725;
            let x_3727 : f32 = u_xlat24.z;
            let x_3728 : f32 = u_xlat88;
            let x_3730 : f32 = u_xlat87;
            u_xlat87 = ((x_3727 * x_3728) + x_3730);
            let x_3733 : vec4<f32> = u_xlat20;
            let x_3734 : vec2<f32> = vec2<f32>(x_3733.z, x_3733.w);
            let x_3736 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3734.x, x_3734.y, x_3736);
            let x_3743 : vec3<f32> = txVec50;
            let x_3745 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3743.xy, x_3743.z);
            u_xlat88 = x_3745;
            let x_3747 : f32 = u_xlat24.w;
            let x_3748 : f32 = u_xlat88;
            let x_3750 : f32 = u_xlat87;
            u_xlat87 = ((x_3747 * x_3748) + x_3750);
            let x_3753 : vec4<f32> = u_xlat21;
            let x_3754 : vec2<f32> = vec2<f32>(x_3753.x, x_3753.y);
            let x_3756 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3754.x, x_3754.y, x_3756);
            let x_3763 : vec3<f32> = txVec51;
            let x_3765 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3763.xy, x_3763.z);
            u_xlat88 = x_3765;
            let x_3767 : f32 = u_xlat25.x;
            let x_3768 : f32 = u_xlat88;
            let x_3770 : f32 = u_xlat87;
            u_xlat87 = ((x_3767 * x_3768) + x_3770);
            let x_3773 : vec4<f32> = u_xlat21;
            let x_3774 : vec2<f32> = vec2<f32>(x_3773.z, x_3773.w);
            let x_3776 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3774.x, x_3774.y, x_3776);
            let x_3783 : vec3<f32> = txVec52;
            let x_3785 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3783.xy, x_3783.z);
            u_xlat88 = x_3785;
            let x_3787 : f32 = u_xlat25.y;
            let x_3788 : f32 = u_xlat88;
            let x_3790 : f32 = u_xlat87;
            u_xlat87 = ((x_3787 * x_3788) + x_3790);
            let x_3793 : vec2<f32> = u_xlat39;
            let x_3795 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3793.x, x_3793.y, x_3795);
            let x_3802 : vec3<f32> = txVec53;
            let x_3804 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3802.xy, x_3802.z);
            u_xlat88 = x_3804;
            let x_3806 : f32 = u_xlat25.z;
            let x_3807 : f32 = u_xlat88;
            let x_3809 : f32 = u_xlat87;
            u_xlat87 = ((x_3806 * x_3807) + x_3809);
            let x_3812 : vec2<f32> = u_xlat22;
            let x_3814 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3812.x, x_3812.y, x_3814);
            let x_3821 : vec3<f32> = txVec54;
            let x_3823 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3821.xy, x_3821.z);
            u_xlat88 = x_3823;
            let x_3825 : f32 = u_xlat25.w;
            let x_3826 : f32 = u_xlat88;
            let x_3828 : f32 = u_xlat87;
            u_xlat87 = ((x_3825 * x_3826) + x_3828);
            let x_3831 : vec4<f32> = u_xlat16;
            let x_3832 : vec2<f32> = vec2<f32>(x_3831.x, x_3831.y);
            let x_3834 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3832.x, x_3832.y, x_3834);
            let x_3841 : vec3<f32> = txVec55;
            let x_3843 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3841.xy, x_3841.z);
            u_xlat88 = x_3843;
            let x_3845 : f32 = u_xlat12.x;
            let x_3846 : f32 = u_xlat88;
            let x_3848 : f32 = u_xlat87;
            u_xlat87 = ((x_3845 * x_3846) + x_3848);
            let x_3851 : vec4<f32> = u_xlat16;
            let x_3852 : vec2<f32> = vec2<f32>(x_3851.z, x_3851.w);
            let x_3854 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3852.x, x_3852.y, x_3854);
            let x_3861 : vec3<f32> = txVec56;
            let x_3863 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3861.xy, x_3861.z);
            u_xlat88 = x_3863;
            let x_3865 : f32 = u_xlat12.y;
            let x_3866 : f32 = u_xlat88;
            let x_3868 : f32 = u_xlat87;
            u_xlat87 = ((x_3865 * x_3866) + x_3868);
            let x_3871 : vec2<f32> = u_xlat67;
            let x_3873 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3871.x, x_3871.y, x_3873);
            let x_3880 : vec3<f32> = txVec57;
            let x_3882 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3880.xy, x_3880.z);
            u_xlat88 = x_3882;
            let x_3884 : f32 = u_xlat12.z;
            let x_3885 : f32 = u_xlat88;
            let x_3887 : f32 = u_xlat87;
            u_xlat87 = ((x_3884 * x_3885) + x_3887);
            let x_3890 : vec2<f32> = u_xlat59;
            let x_3892 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3890.x, x_3890.y, x_3892);
            let x_3899 : vec3<f32> = txVec58;
            let x_3901 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3899.xy, x_3899.z);
            u_xlat59.x = x_3901;
            let x_3904 : f32 = u_xlat12.w;
            let x_3906 : f32 = u_xlat59.x;
            let x_3908 : f32 = u_xlat87;
            u_xlat84 = ((x_3904 * x_3906) + x_3908);
          }
        }
      } else {
        let x_3912 : vec4<f32> = u_xlat11;
        let x_3913 : vec2<f32> = vec2<f32>(x_3912.x, x_3912.y);
        let x_3915 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3913.x, x_3913.y, x_3915);
        let x_3922 : vec3<f32> = txVec59;
        let x_3924 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3922.xy, x_3922.z);
        u_xlat84 = x_3924;
      }
      let x_3925 : i32 = u_xlati81;
      let x_3927 : f32 = x_808.x_AdditionalShadowParams[x_3925].x;
      u_xlat59.x = (1.0f + -(x_3927));
      let x_3931 : f32 = u_xlat84;
      let x_3932 : i32 = u_xlati81;
      let x_3934 : f32 = x_808.x_AdditionalShadowParams[x_3932].x;
      let x_3937 : f32 = u_xlat59.x;
      u_xlat84 = ((x_3931 * x_3934) + x_3937);
      let x_3940 : f32 = u_xlat11.z;
      u_xlatb59 = (0.0f >= x_3940);
      let x_3944 : f32 = u_xlat11.z;
      u_xlatb85 = (x_3944 >= 1.0f);
      let x_3946 : bool = u_xlatb85;
      let x_3947 : bool = u_xlatb59;
      u_xlatb59 = (x_3946 | x_3947);
      let x_3949 : bool = u_xlatb59;
      let x_3950 : f32 = u_xlat84;
      u_xlat84 = select(x_3950, 1.0f, x_3949);
    } else {
      u_xlat84 = 1.0f;
    }
    let x_3953 : f32 = u_xlat84;
    u_xlat59.x = (-(x_3953) + 1.0f);
    let x_3957 : f32 = u_xlat79;
    let x_3959 : f32 = u_xlat59.x;
    let x_3961 : f32 = u_xlat84;
    u_xlat84 = ((x_3957 * x_3959) + x_3961);
    let x_3964 : i32 = u_xlati81;
    u_xlati59 = (1i << bitcast<u32>((x_3964 & 31i)));
    let x_3968 : i32 = u_xlati59;
    let x_3971 : f32 = x_2092.x_AdditionalLightsCookieEnableBits;
    u_xlati59 = bitcast<i32>((bitcast<u32>(x_3968) & bitcast<u32>(x_3971)));
    let x_3975 : i32 = u_xlati59;
    if ((x_3975 != 0i)) {
      let x_3979 : i32 = u_xlati81;
      let x_3981 : f32 = x_2092.x_AdditionalLightsLightTypes[x_3979].el;
      u_xlati59 = i32(x_3981);
      let x_3984 : i32 = u_xlati59;
      u_xlati85 = select(1i, 0i, (x_3984 != 0i));
      let x_3988 : i32 = u_xlati81;
      u_xlati87 = (x_3988 << bitcast<u32>(2i));
      let x_3990 : i32 = u_xlati85;
      if ((x_3990 != 0i)) {
        let x_3994 : vec3<f32> = vs_INTERP7;
        let x_3996 : i32 = u_xlati87;
        let x_3999 : i32 = u_xlati87;
        let x_4003 : vec4<f32> = x_2092.x_AdditionalLightsWorldToLights[((x_3996 + 1i) / 4i)][((x_3999 + 1i) % 4i)];
        let x_4005 : vec3<f32> = (vec3<f32>(x_3994.y, x_3994.y, x_3994.y) * vec3<f32>(x_4003.x, x_4003.y, x_4003.w));
        let x_4006 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4005.x, x_4005.y, x_4005.z, x_4006.w);
        let x_4008 : i32 = u_xlati87;
        let x_4010 : i32 = u_xlati87;
        let x_4013 : vec4<f32> = x_2092.x_AdditionalLightsWorldToLights[(x_4008 / 4i)][(x_4010 % 4i)];
        let x_4015 : vec3<f32> = vs_INTERP7;
        let x_4018 : vec4<f32> = u_xlat11;
        let x_4020 : vec3<f32> = ((vec3<f32>(x_4013.x, x_4013.y, x_4013.w) * vec3<f32>(x_4015.x, x_4015.x, x_4015.x)) + vec3<f32>(x_4018.x, x_4018.y, x_4018.z));
        let x_4021 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4020.x, x_4020.y, x_4020.z, x_4021.w);
        let x_4023 : i32 = u_xlati87;
        let x_4026 : i32 = u_xlati87;
        let x_4030 : vec4<f32> = x_2092.x_AdditionalLightsWorldToLights[((x_4023 + 2i) / 4i)][((x_4026 + 2i) % 4i)];
        let x_4032 : vec3<f32> = vs_INTERP7;
        let x_4035 : vec4<f32> = u_xlat11;
        let x_4037 : vec3<f32> = ((vec3<f32>(x_4030.x, x_4030.y, x_4030.w) * vec3<f32>(x_4032.z, x_4032.z, x_4032.z)) + vec3<f32>(x_4035.x, x_4035.y, x_4035.z));
        let x_4038 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4037.x, x_4037.y, x_4037.z, x_4038.w);
        let x_4040 : vec4<f32> = u_xlat11;
        let x_4042 : i32 = u_xlati87;
        let x_4045 : i32 = u_xlati87;
        let x_4049 : vec4<f32> = x_2092.x_AdditionalLightsWorldToLights[((x_4042 + 3i) / 4i)][((x_4045 + 3i) % 4i)];
        let x_4051 : vec3<f32> = (vec3<f32>(x_4040.x, x_4040.y, x_4040.z) + vec3<f32>(x_4049.x, x_4049.y, x_4049.w));
        let x_4052 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4051.x, x_4051.y, x_4051.z, x_4052.w);
        let x_4054 : vec4<f32> = u_xlat11;
        let x_4056 : vec4<f32> = u_xlat11;
        let x_4058 : vec2<f32> = (vec2<f32>(x_4054.x, x_4054.y) / vec2<f32>(x_4056.z, x_4056.z));
        let x_4059 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4058.x, x_4058.y, x_4059.z, x_4059.w);
        let x_4061 : vec4<f32> = u_xlat11;
        let x_4064 : vec2<f32> = ((vec2<f32>(x_4061.x, x_4061.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_4065 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4064.x, x_4064.y, x_4065.z, x_4065.w);
        let x_4067 : vec4<f32> = u_xlat11;
        let x_4071 : vec2<f32> = clamp(vec2<f32>(x_4067.x, x_4067.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_4072 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4071.x, x_4071.y, x_4072.z, x_4072.w);
        let x_4074 : i32 = u_xlati81;
        let x_4076 : vec4<f32> = x_2092.x_AdditionalLightsCookieAtlasUVRects[x_4074];
        let x_4078 : vec4<f32> = u_xlat11;
        let x_4081 : i32 = u_xlati81;
        let x_4083 : vec4<f32> = x_2092.x_AdditionalLightsCookieAtlasUVRects[x_4081];
        let x_4085 : vec2<f32> = ((vec2<f32>(x_4076.x, x_4076.y) * vec2<f32>(x_4078.x, x_4078.y)) + vec2<f32>(x_4083.z, x_4083.w));
        let x_4086 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4085.x, x_4085.y, x_4086.z, x_4086.w);
      } else {
        let x_4089 : i32 = u_xlati59;
        u_xlatb59 = (x_4089 == 1i);
        let x_4091 : bool = u_xlatb59;
        u_xlati59 = select(0i, 1i, x_4091);
        let x_4093 : i32 = u_xlati59;
        if ((x_4093 != 0i)) {
          let x_4097 : vec3<f32> = vs_INTERP7;
          let x_4099 : i32 = u_xlati87;
          let x_4102 : i32 = u_xlati87;
          let x_4106 : vec4<f32> = x_2092.x_AdditionalLightsWorldToLights[((x_4099 + 1i) / 4i)][((x_4102 + 1i) % 4i)];
          u_xlat59 = (vec2<f32>(x_4097.y, x_4097.y) * vec2<f32>(x_4106.x, x_4106.y));
          let x_4109 : i32 = u_xlati87;
          let x_4111 : i32 = u_xlati87;
          let x_4114 : vec4<f32> = x_2092.x_AdditionalLightsWorldToLights[(x_4109 / 4i)][(x_4111 % 4i)];
          let x_4116 : vec3<f32> = vs_INTERP7;
          let x_4119 : vec2<f32> = u_xlat59;
          u_xlat59 = ((vec2<f32>(x_4114.x, x_4114.y) * vec2<f32>(x_4116.x, x_4116.x)) + x_4119);
          let x_4121 : i32 = u_xlati87;
          let x_4124 : i32 = u_xlati87;
          let x_4128 : vec4<f32> = x_2092.x_AdditionalLightsWorldToLights[((x_4121 + 2i) / 4i)][((x_4124 + 2i) % 4i)];
          let x_4130 : vec3<f32> = vs_INTERP7;
          let x_4133 : vec2<f32> = u_xlat59;
          u_xlat59 = ((vec2<f32>(x_4128.x, x_4128.y) * vec2<f32>(x_4130.z, x_4130.z)) + x_4133);
          let x_4135 : vec2<f32> = u_xlat59;
          let x_4136 : i32 = u_xlati87;
          let x_4139 : i32 = u_xlati87;
          let x_4143 : vec4<f32> = x_2092.x_AdditionalLightsWorldToLights[((x_4136 + 3i) / 4i)][((x_4139 + 3i) % 4i)];
          u_xlat59 = (x_4135 + vec2<f32>(x_4143.x, x_4143.y));
          let x_4146 : vec2<f32> = u_xlat59;
          u_xlat59 = ((x_4146 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4149 : vec2<f32> = u_xlat59;
          u_xlat59 = fract(x_4149);
          let x_4151 : i32 = u_xlati81;
          let x_4153 : vec4<f32> = x_2092.x_AdditionalLightsCookieAtlasUVRects[x_4151];
          let x_4155 : vec2<f32> = u_xlat59;
          let x_4157 : i32 = u_xlati81;
          let x_4159 : vec4<f32> = x_2092.x_AdditionalLightsCookieAtlasUVRects[x_4157];
          let x_4161 : vec2<f32> = ((vec2<f32>(x_4153.x, x_4153.y) * x_4155) + vec2<f32>(x_4159.z, x_4159.w));
          let x_4162 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4161.x, x_4161.y, x_4162.z, x_4162.w);
        } else {
          let x_4165 : vec3<f32> = vs_INTERP7;
          let x_4167 : i32 = u_xlati87;
          let x_4170 : i32 = u_xlati87;
          let x_4174 : vec4<f32> = x_2092.x_AdditionalLightsWorldToLights[((x_4167 + 1i) / 4i)][((x_4170 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_4165.y, x_4165.y, x_4165.y, x_4165.y) * x_4174);
          let x_4176 : i32 = u_xlati87;
          let x_4178 : i32 = u_xlati87;
          let x_4181 : vec4<f32> = x_2092.x_AdditionalLightsWorldToLights[(x_4176 / 4i)][(x_4178 % 4i)];
          let x_4182 : vec3<f32> = vs_INTERP7;
          let x_4185 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4181 * vec4<f32>(x_4182.x, x_4182.x, x_4182.x, x_4182.x)) + x_4185);
          let x_4187 : i32 = u_xlati87;
          let x_4190 : i32 = u_xlati87;
          let x_4194 : vec4<f32> = x_2092.x_AdditionalLightsWorldToLights[((x_4187 + 2i) / 4i)][((x_4190 + 2i) % 4i)];
          let x_4195 : vec3<f32> = vs_INTERP7;
          let x_4198 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4194 * vec4<f32>(x_4195.z, x_4195.z, x_4195.z, x_4195.z)) + x_4198);
          let x_4200 : vec4<f32> = u_xlat12;
          let x_4201 : i32 = u_xlati87;
          let x_4204 : i32 = u_xlati87;
          let x_4208 : vec4<f32> = x_2092.x_AdditionalLightsWorldToLights[((x_4201 + 3i) / 4i)][((x_4204 + 3i) % 4i)];
          u_xlat12 = (x_4200 + x_4208);
          let x_4210 : vec4<f32> = u_xlat12;
          let x_4212 : vec4<f32> = u_xlat12;
          let x_4214 : vec3<f32> = (vec3<f32>(x_4210.x, x_4210.y, x_4210.z) / vec3<f32>(x_4212.w, x_4212.w, x_4212.w));
          let x_4215 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4214.x, x_4214.y, x_4214.z, x_4215.w);
          let x_4217 : vec4<f32> = u_xlat12;
          let x_4219 : vec4<f32> = u_xlat12;
          u_xlat59.x = dot(vec3<f32>(x_4217.x, x_4217.y, x_4217.z), vec3<f32>(x_4219.x, x_4219.y, x_4219.z));
          let x_4224 : f32 = u_xlat59.x;
          u_xlat59.x = inverseSqrt(x_4224);
          let x_4227 : vec2<f32> = u_xlat59;
          let x_4229 : vec4<f32> = u_xlat12;
          let x_4231 : vec3<f32> = (vec3<f32>(x_4227.x, x_4227.x, x_4227.x) * vec3<f32>(x_4229.x, x_4229.y, x_4229.z));
          let x_4232 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4231.x, x_4231.y, x_4231.z, x_4232.w);
          let x_4234 : vec4<f32> = u_xlat12;
          u_xlat59.x = dot(abs(vec3<f32>(x_4234.x, x_4234.y, x_4234.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_4241 : f32 = u_xlat59.x;
          u_xlat59.x = max(x_4241, 0.00000099999999747524f);
          let x_4246 : f32 = u_xlat59.x;
          u_xlat59.x = (1.0f / x_4246);
          let x_4249 : vec2<f32> = u_xlat59;
          let x_4251 : vec4<f32> = u_xlat12;
          let x_4253 : vec3<f32> = (vec3<f32>(x_4249.x, x_4249.x, x_4249.x) * vec3<f32>(x_4251.z, x_4251.x, x_4251.y));
          let x_4254 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_4253.x, x_4253.y, x_4253.z, x_4254.w);
          let x_4257 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_4257);
          let x_4261 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_4261, 0.0f, 1.0f);
          let x_4265 : vec4<f32> = u_xlat13;
          let x_4267 : vec4<bool> = (vec4<f32>(x_4265.y, x_4265.z, x_4265.y, x_4265.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb63 = vec2<bool>(x_4267.x, x_4267.y);
          let x_4271 : bool = u_xlatb63.x;
          if (x_4271) {
            let x_4276 : f32 = u_xlat13.x;
            x_4272 = x_4276;
          } else {
            let x_4279 : f32 = u_xlat13.x;
            x_4272 = -(x_4279);
          }
          let x_4281 : f32 = x_4272;
          u_xlat63.x = x_4281;
          let x_4284 : bool = u_xlatb63.y;
          if (x_4284) {
            let x_4289 : f32 = u_xlat13.x;
            x_4285 = x_4289;
          } else {
            let x_4292 : f32 = u_xlat13.x;
            x_4285 = -(x_4292);
          }
          let x_4294 : f32 = x_4285;
          u_xlat63.y = x_4294;
          let x_4296 : vec4<f32> = u_xlat12;
          let x_4298 : vec2<f32> = u_xlat59;
          let x_4301 : vec2<f32> = u_xlat63;
          u_xlat59 = ((vec2<f32>(x_4296.x, x_4296.y) * vec2<f32>(x_4298.x, x_4298.x)) + x_4301);
          let x_4303 : vec2<f32> = u_xlat59;
          u_xlat59 = ((x_4303 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4306 : vec2<f32> = u_xlat59;
          u_xlat59 = clamp(x_4306, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4310 : i32 = u_xlati81;
          let x_4312 : vec4<f32> = x_2092.x_AdditionalLightsCookieAtlasUVRects[x_4310];
          let x_4314 : vec2<f32> = u_xlat59;
          let x_4316 : i32 = u_xlati81;
          let x_4318 : vec4<f32> = x_2092.x_AdditionalLightsCookieAtlasUVRects[x_4316];
          let x_4320 : vec2<f32> = ((vec2<f32>(x_4312.x, x_4312.y) * x_4314) + vec2<f32>(x_4318.z, x_4318.w));
          let x_4321 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4320.x, x_4320.y, x_4321.z, x_4321.w);
        }
      }
      let x_4328 : vec4<f32> = u_xlat11;
      let x_4330 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4328.x, x_4328.y), 0.0f);
      u_xlat11 = x_4330;
      let x_4332 : bool = u_xlatb7.y;
      if (x_4332) {
        let x_4337 : f32 = u_xlat11.w;
        x_4333 = x_4337;
      } else {
        let x_4340 : f32 = u_xlat11.x;
        x_4333 = x_4340;
      }
      let x_4341 : f32 = x_4333;
      u_xlat59.x = x_4341;
      let x_4344 : bool = u_xlatb7.x;
      if (x_4344) {
        let x_4348 : vec4<f32> = u_xlat11;
        x_4345 = vec3<f32>(x_4348.x, x_4348.y, x_4348.z);
      } else {
        let x_4351 : vec2<f32> = u_xlat59;
        x_4345 = vec3<f32>(x_4351.x, x_4351.x, x_4351.x);
      }
      let x_4353 : vec3<f32> = x_4345;
      let x_4354 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4353.x, x_4353.y, x_4353.z, x_4354.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4360 : vec4<f32> = u_xlat11;
    let x_4362 : i32 = u_xlati81;
    let x_4364 : vec4<f32> = x_2533.x_AdditionalLightsColor[x_4362];
    let x_4366 : vec3<f32> = (vec3<f32>(x_4360.x, x_4360.y, x_4360.z) * vec3<f32>(x_4364.x, x_4364.y, x_4364.z));
    let x_4367 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4366.x, x_4366.y, x_4366.z, x_4367.w);
    let x_4369 : f32 = u_xlat82;
    let x_4370 : f32 = u_xlat84;
    u_xlat81 = (x_4369 * x_4370);
    let x_4372 : vec4<f32> = u_xlat4;
    let x_4374 : vec4<f32> = u_xlat10;
    u_xlat82 = dot(vec3<f32>(x_4372.x, x_4372.y, x_4372.z), vec3<f32>(x_4374.x, x_4374.y, x_4374.z));
    let x_4377 : f32 = u_xlat82;
    u_xlat82 = clamp(x_4377, 0.0f, 1.0f);
    let x_4379 : f32 = u_xlat81;
    let x_4380 : f32 = u_xlat82;
    u_xlat81 = (x_4379 * x_4380);
    let x_4382 : f32 = u_xlat81;
    let x_4384 : vec4<f32> = u_xlat11;
    let x_4386 : vec3<f32> = (vec3<f32>(x_4382, x_4382, x_4382) * vec3<f32>(x_4384.x, x_4384.y, x_4384.z));
    let x_4387 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4386.x, x_4386.y, x_4386.z, x_4387.w);
    let x_4389 : vec4<f32> = u_xlat9;
    let x_4391 : f32 = u_xlat83;
    let x_4394 : vec3<f32> = u_xlat5;
    let x_4395 : vec3<f32> = ((vec3<f32>(x_4389.x, x_4389.y, x_4389.z) * vec3<f32>(x_4391, x_4391, x_4391)) + x_4394);
    let x_4396 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4395.x, x_4395.y, x_4395.z, x_4396.w);
    let x_4398 : vec4<f32> = u_xlat9;
    let x_4400 : vec4<f32> = u_xlat9;
    u_xlat81 = dot(vec3<f32>(x_4398.x, x_4398.y, x_4398.z), vec3<f32>(x_4400.x, x_4400.y, x_4400.z));
    let x_4403 : f32 = u_xlat81;
    u_xlat81 = max(x_4403, 1.17549435e-38f);
    let x_4405 : f32 = u_xlat81;
    u_xlat81 = inverseSqrt(x_4405);
    let x_4407 : f32 = u_xlat81;
    let x_4409 : vec4<f32> = u_xlat9;
    let x_4411 : vec3<f32> = (vec3<f32>(x_4407, x_4407, x_4407) * vec3<f32>(x_4409.x, x_4409.y, x_4409.z));
    let x_4412 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4411.x, x_4411.y, x_4411.z, x_4412.w);
    let x_4414 : vec4<f32> = u_xlat4;
    let x_4416 : vec4<f32> = u_xlat9;
    u_xlat81 = dot(vec3<f32>(x_4414.x, x_4414.y, x_4414.z), vec3<f32>(x_4416.x, x_4416.y, x_4416.z));
    let x_4419 : f32 = u_xlat81;
    u_xlat81 = clamp(x_4419, 0.0f, 1.0f);
    let x_4421 : vec4<f32> = u_xlat10;
    let x_4423 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_4421.x, x_4421.y, x_4421.z), vec3<f32>(x_4423.x, x_4423.y, x_4423.z));
    let x_4426 : f32 = u_xlat82;
    u_xlat82 = clamp(x_4426, 0.0f, 1.0f);
    let x_4428 : f32 = u_xlat81;
    let x_4429 : f32 = u_xlat81;
    u_xlat81 = (x_4428 * x_4429);
    let x_4431 : f32 = u_xlat81;
    let x_4433 : f32 = u_xlat8.x;
    u_xlat81 = ((x_4431 * x_4433) + 1.00001001358032226562f);
    let x_4436 : f32 = u_xlat82;
    let x_4437 : f32 = u_xlat82;
    u_xlat82 = (x_4436 * x_4437);
    let x_4439 : f32 = u_xlat81;
    let x_4440 : f32 = u_xlat81;
    u_xlat81 = (x_4439 * x_4440);
    let x_4442 : f32 = u_xlat82;
    u_xlat82 = max(x_4442, 0.10000000149011611938f);
    let x_4444 : f32 = u_xlat81;
    let x_4445 : f32 = u_xlat82;
    u_xlat81 = (x_4444 * x_4445);
    let x_4447 : f32 = u_xlat29;
    let x_4448 : f32 = u_xlat81;
    u_xlat81 = (x_4447 * x_4448);
    let x_4451 : f32 = u_xlat3.x;
    let x_4452 : f32 = u_xlat81;
    u_xlat81 = (x_4451 / x_4452);
    let x_4454 : vec3<f32> = u_xlat2;
    let x_4455 : f32 = u_xlat81;
    let x_4458 : vec4<f32> = u_xlat1;
    let x_4460 : vec3<f32> = ((x_4454 * vec3<f32>(x_4455, x_4455, x_4455)) + vec3<f32>(x_4458.x, x_4458.y, x_4458.z));
    let x_4461 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4460.x, x_4460.y, x_4460.z, x_4461.w);
    let x_4463 : vec4<f32> = u_xlat9;
    let x_4465 : vec4<f32> = u_xlat11;
    let x_4468 : vec3<f32> = u_xlat34;
    u_xlat34 = ((vec3<f32>(x_4463.x, x_4463.y, x_4463.z) * vec3<f32>(x_4465.x, x_4465.y, x_4465.z)) + x_4468);

    continuing {
      let x_4470 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4470 + bitcast<u32>(1i));
    }
  }
  let x_4472 : vec4<f32> = u_xlat0;
  let x_4474 : f32 = u_xlat55;
  let x_4477 : vec4<f32> = u_xlat6;
  let x_4479 : vec3<f32> = ((vec3<f32>(x_4472.x, x_4472.y, x_4472.z) * vec3<f32>(x_4474, x_4474, x_4474)) + vec3<f32>(x_4477.x, x_4477.y, x_4477.z));
  let x_4480 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4479.x, x_4479.y, x_4479.z, x_4480.w);
  let x_4484 : vec3<f32> = u_xlat34;
  let x_4485 : vec4<f32> = u_xlat0;
  let x_4487 : vec3<f32> = (x_4484 + vec3<f32>(x_4485.x, x_4485.y, x_4485.z));
  let x_4488 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4487.x, x_4487.y, x_4487.z, x_4488.w);
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


