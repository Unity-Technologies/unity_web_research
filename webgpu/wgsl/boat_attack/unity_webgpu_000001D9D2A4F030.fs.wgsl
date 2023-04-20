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

@group(1) @binding(3) var<uniform> x_682 : LightShadows;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlatb6 : vec4<bool>;

var<private> u_xlatu25 : u32;

var<private> u_xlati25 : i32;

var<private> u_xlat80 : f32;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_LinearClampCompare : sampler_comparison;

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

var<private> u_xlatb50 : bool;

var<private> u_xlatb75 : bool;

var<private> u_xlat75 : f32;

@group(1) @binding(4) var<uniform> x_2318 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu76 : u32;

var<private> u_xlatu56 : u32;

var<private> u_xlati81 : i32;

var<private> u_xlati56 : i32;

@group(1) @binding(1) var<uniform> x_2764 : AdditionalLights;

var<private> u_xlat82 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlati84 : i32;

var<private> u_xlatb10 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat35 : vec3<f32>;

var<private> u_xlatb84 : bool;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb56 : bool;

var<private> u_xlatu77 : u32;

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
  var x_2270 : f32;
  var x_2399 : f32;
  var x_2410 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2898 : f32;
  var x_2910 : f32;
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
  var x_4577 : f32;
  var x_4590 : f32;
  var x_4647 : f32;
  var x_4658 : vec3<f32>;
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
  let x_610 : f32 = x_135.unity_OrthoParams.w;
  u_xlatb25.x = (x_610 == 0.0f);
  let x_613 : vec3<f32> = vs_INTERP7;
  let x_617 : vec3<f32> = x_135.x_WorldSpaceCameraPos;
  let x_618 : vec3<f32> = (-(x_613) + x_617);
  let x_619 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_618.x, x_618.y, x_618.z, x_619.w);
  let x_622 : vec4<f32> = u_xlat1;
  let x_624 : vec4<f32> = u_xlat1;
  u_xlat50 = dot(vec3<f32>(x_622.x, x_622.y, x_622.z), vec3<f32>(x_624.x, x_624.y, x_624.z));
  let x_627 : f32 = u_xlat50;
  u_xlat50 = inverseSqrt(x_627);
  let x_629 : f32 = u_xlat50;
  let x_631 : vec4<f32> = u_xlat1;
  let x_633 : vec3<f32> = (vec3<f32>(x_629, x_629, x_629) * vec3<f32>(x_631.x, x_631.y, x_631.z));
  let x_634 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_633.x, x_633.y, x_633.z, x_634.w);
  let x_637 : bool = u_xlatb25.x;
  if (x_637) {
    let x_643 : f32 = u_xlat1.x;
    x_639 = x_643;
  } else {
    let x_647 : f32 = x_135.unity_MatrixV[0i].z;
    x_639 = x_647;
  }
  let x_648 : f32 = x_639;
  u_xlat5.x = x_648;
  let x_651 : bool = u_xlatb25.x;
  if (x_651) {
    let x_656 : f32 = u_xlat1.y;
    x_652 = x_656;
  } else {
    let x_659 : f32 = x_135.unity_MatrixV[1i].z;
    x_652 = x_659;
  }
  let x_660 : f32 = x_652;
  u_xlat5.y = x_660;
  let x_663 : bool = u_xlatb25.x;
  if (x_663) {
    let x_668 : f32 = u_xlat1.z;
    x_664 = x_668;
  } else {
    let x_671 : f32 = x_135.unity_MatrixV[2i].z;
    x_664 = x_671;
  }
  let x_672 : f32 = x_664;
  u_xlat5.z = x_672;
  let x_674 : vec3<f32> = vs_INTERP7;
  let x_684 : vec4<f32> = x_682.x_CascadeShadowSplitSpheres0;
  u_xlat25 = (x_674 + -(vec3<f32>(x_684.x, x_684.y, x_684.z)));
  let x_688 : vec3<f32> = vs_INTERP7;
  let x_690 : vec4<f32> = x_682.x_CascadeShadowSplitSpheres1;
  let x_693 : vec3<f32> = (x_688 + -(vec3<f32>(x_690.x, x_690.y, x_690.z)));
  let x_694 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_693.x, x_693.y, x_693.z, x_694.w);
  let x_696 : vec3<f32> = vs_INTERP7;
  let x_698 : vec4<f32> = x_682.x_CascadeShadowSplitSpheres2;
  let x_701 : vec3<f32> = (x_696 + -(vec3<f32>(x_698.x, x_698.y, x_698.z)));
  let x_702 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_701.x, x_701.y, x_701.z, x_702.w);
  let x_704 : vec3<f32> = vs_INTERP7;
  let x_706 : vec4<f32> = x_682.x_CascadeShadowSplitSpheres3;
  u_xlat32 = (x_704 + -(vec3<f32>(x_706.x, x_706.y, x_706.z)));
  let x_711 : vec3<f32> = u_xlat25;
  let x_712 : vec3<f32> = u_xlat25;
  u_xlat8.x = dot(x_711, x_712);
  let x_715 : vec4<f32> = u_xlat1;
  let x_717 : vec4<f32> = u_xlat1;
  u_xlat8.y = dot(vec3<f32>(x_715.x, x_715.y, x_715.z), vec3<f32>(x_717.x, x_717.y, x_717.z));
  let x_721 : vec4<f32> = u_xlat6;
  let x_723 : vec4<f32> = u_xlat6;
  u_xlat8.z = dot(vec3<f32>(x_721.x, x_721.y, x_721.z), vec3<f32>(x_723.x, x_723.y, x_723.z));
  let x_727 : vec3<f32> = u_xlat32;
  let x_728 : vec3<f32> = u_xlat32;
  u_xlat8.w = dot(x_727, x_728);
  let x_734 : vec4<f32> = u_xlat8;
  let x_736 : vec4<f32> = x_682.x_CascadeShadowSplitSphereRadii;
  u_xlatb6 = (x_734 < x_736);
  let x_739 : bool = u_xlatb6.x;
  u_xlat8.x = select(0.0f, 1.0f, x_739);
  let x_743 : bool = u_xlatb6.y;
  u_xlat8.y = select(0.0f, 1.0f, x_743);
  let x_747 : bool = u_xlatb6.z;
  u_xlat8.z = select(0.0f, 1.0f, x_747);
  let x_751 : bool = u_xlatb6.w;
  u_xlat8.w = select(0.0f, 1.0f, x_751);
  let x_755 : bool = u_xlatb6.x;
  u_xlat25.x = select(-0.0f, -1.0f, x_755);
  let x_760 : bool = u_xlatb6.y;
  u_xlat25.y = select(-0.0f, -1.0f, x_760);
  let x_764 : bool = u_xlatb6.z;
  u_xlat25.z = select(-0.0f, -1.0f, x_764);
  let x_767 : vec3<f32> = u_xlat25;
  let x_768 : vec4<f32> = u_xlat8;
  u_xlat25 = (x_767 + vec3<f32>(x_768.y, x_768.z, x_768.w));
  let x_771 : vec3<f32> = u_xlat25;
  let x_773 : vec3<f32> = max(x_771, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_774 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_774.x, x_773.x, x_773.y, x_773.z);
  let x_776 : vec4<f32> = u_xlat8;
  u_xlat25.x = dot(x_776, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_781 : f32 = u_xlat25.x;
  u_xlat25.x = (-(x_781) + 4.0f);
  let x_788 : f32 = u_xlat25.x;
  u_xlatu25 = u32(x_788);
  let x_792 : u32 = u_xlatu25;
  u_xlati25 = (bitcast<i32>(x_792) << bitcast<u32>(2i));
  let x_795 : vec3<f32> = vs_INTERP7;
  let x_797 : i32 = u_xlati25;
  let x_800 : i32 = u_xlati25;
  let x_804 : vec4<f32> = x_682.x_MainLightWorldToShadow[((x_797 + 1i) / 4i)][((x_800 + 1i) % 4i)];
  let x_806 : vec3<f32> = (vec3<f32>(x_795.y, x_795.y, x_795.y) * vec3<f32>(x_804.x, x_804.y, x_804.z));
  let x_807 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_806.x, x_806.y, x_806.z, x_807.w);
  let x_809 : i32 = u_xlati25;
  let x_811 : i32 = u_xlati25;
  let x_814 : vec4<f32> = x_682.x_MainLightWorldToShadow[(x_809 / 4i)][(x_811 % 4i)];
  let x_816 : vec3<f32> = vs_INTERP7;
  let x_819 : vec4<f32> = u_xlat1;
  let x_821 : vec3<f32> = ((vec3<f32>(x_814.x, x_814.y, x_814.z) * vec3<f32>(x_816.x, x_816.x, x_816.x)) + vec3<f32>(x_819.x, x_819.y, x_819.z));
  let x_822 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_821.x, x_821.y, x_821.z, x_822.w);
  let x_824 : i32 = u_xlati25;
  let x_827 : i32 = u_xlati25;
  let x_831 : vec4<f32> = x_682.x_MainLightWorldToShadow[((x_824 + 2i) / 4i)][((x_827 + 2i) % 4i)];
  let x_833 : vec3<f32> = vs_INTERP7;
  let x_836 : vec4<f32> = u_xlat1;
  let x_838 : vec3<f32> = ((vec3<f32>(x_831.x, x_831.y, x_831.z) * vec3<f32>(x_833.z, x_833.z, x_833.z)) + vec3<f32>(x_836.x, x_836.y, x_836.z));
  let x_839 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_838.x, x_838.y, x_838.z, x_839.w);
  let x_841 : vec4<f32> = u_xlat1;
  let x_843 : i32 = u_xlati25;
  let x_846 : i32 = u_xlati25;
  let x_850 : vec4<f32> = x_682.x_MainLightWorldToShadow[((x_843 + 3i) / 4i)][((x_846 + 3i) % 4i)];
  u_xlat25 = (vec3<f32>(x_841.x, x_841.y, x_841.z) + vec3<f32>(x_850.x, x_850.y, x_850.z));
  u_xlat4.w = 1.0f;
  let x_856 : vec4<f32> = x_48.unity_SHAr;
  let x_857 : vec4<f32> = u_xlat4;
  u_xlat1.x = dot(x_856, x_857);
  let x_862 : vec4<f32> = x_48.unity_SHAg;
  let x_863 : vec4<f32> = u_xlat4;
  u_xlat1.y = dot(x_862, x_863);
  let x_868 : vec4<f32> = x_48.unity_SHAb;
  let x_869 : vec4<f32> = u_xlat4;
  u_xlat1.z = dot(x_868, x_869);
  let x_872 : vec4<f32> = u_xlat4;
  let x_874 : vec4<f32> = u_xlat4;
  u_xlat6 = (vec4<f32>(x_872.y, x_872.z, x_872.z, x_872.x) * vec4<f32>(x_874.x, x_874.y, x_874.z, x_874.z));
  let x_879 : vec4<f32> = x_48.unity_SHBr;
  let x_880 : vec4<f32> = u_xlat6;
  u_xlat8.x = dot(x_879, x_880);
  let x_885 : vec4<f32> = x_48.unity_SHBg;
  let x_886 : vec4<f32> = u_xlat6;
  u_xlat8.y = dot(x_885, x_886);
  let x_891 : vec4<f32> = x_48.unity_SHBb;
  let x_892 : vec4<f32> = u_xlat6;
  u_xlat8.z = dot(x_891, x_892);
  let x_896 : f32 = u_xlat4.y;
  let x_898 : f32 = u_xlat4.y;
  u_xlat77 = (x_896 * x_898);
  let x_901 : f32 = u_xlat4.x;
  let x_903 : f32 = u_xlat4.x;
  let x_905 : f32 = u_xlat77;
  u_xlat77 = ((x_901 * x_903) + -(x_905));
  let x_910 : vec4<f32> = x_48.unity_SHC;
  let x_912 : f32 = u_xlat77;
  let x_915 : vec4<f32> = u_xlat8;
  let x_917 : vec3<f32> = ((vec3<f32>(x_910.x, x_910.y, x_910.z) * vec3<f32>(x_912, x_912, x_912)) + vec3<f32>(x_915.x, x_915.y, x_915.z));
  let x_918 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_917.x, x_917.y, x_917.z, x_918.w);
  let x_920 : vec4<f32> = u_xlat1;
  let x_922 : vec4<f32> = u_xlat6;
  let x_924 : vec3<f32> = (vec3<f32>(x_920.x, x_920.y, x_920.z) + vec3<f32>(x_922.x, x_922.y, x_922.z));
  let x_925 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_924.x, x_924.y, x_924.z, x_925.w);
  let x_927 : vec4<f32> = u_xlat1;
  let x_929 : vec3<f32> = max(vec3<f32>(x_927.x, x_927.y, x_927.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_930 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_929.x, x_929.y, x_929.z, x_930.w);
  let x_932 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_932 * vec3<f32>(0.86399996280670166016f, 0.86399996280670166016f, 0.86399996280670166016f));
  let x_936 : vec4<f32> = u_xlat1;
  let x_938 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_936.w, x_936.w, x_936.w) * x_938) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_943 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_943 * vec3<f32>(0.10000000149011611938f, 0.10000000149011611938f, 0.10000000149011611938f)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_950 : f32 = u_xlat0.x;
  u_xlat76 = (-(x_950) + 1.0f);
  let x_953 : f32 = u_xlat76;
  let x_954 : f32 = u_xlat76;
  u_xlat77 = (x_953 * x_954);
  let x_956 : f32 = u_xlat77;
  u_xlat77 = max(x_956, 0.0078125f);
  let x_959 : f32 = u_xlat77;
  let x_960 : f32 = u_xlat77;
  u_xlat78 = (x_959 * x_960);
  let x_963 : f32 = u_xlat0.x;
  u_xlat0.x = (x_963 + 0.13600003719329833984f);
  let x_968 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_968, 1.0f);
  let x_971 : f32 = u_xlat77;
  u_xlat79 = ((x_971 * 4.0f) + 2.0f);
  let x_976 : f32 = u_xlat7.x;
  u_xlat80 = min(x_976, 1.0f);
  let x_979 : f32 = x_682.x_MainLightShadowParams.y;
  u_xlatb6.x = (0.0f < x_979);
  let x_983 : bool = u_xlatb6.x;
  if (x_983) {
    let x_987 : f32 = x_682.x_MainLightShadowParams.y;
    u_xlatb6.x = (x_987 == 1.0f);
    let x_991 : bool = u_xlatb6.x;
    if (x_991) {
      let x_994 : vec3<f32> = u_xlat25;
      let x_997 : vec4<f32> = x_682.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_994.x, x_994.y, x_994.x, x_994.y) + x_997);
      let x_1001 : vec4<f32> = u_xlat6;
      let x_1002 : vec2<f32> = vec2<f32>(x_1001.x, x_1001.y);
      let x_1004 : f32 = u_xlat25.z;
      txVec0 = vec3<f32>(x_1002.x, x_1002.y, x_1004);
      let x_1016 : vec3<f32> = txVec0;
      let x_1018 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1016.xy, x_1016.z);
      u_xlat7.x = x_1018;
      let x_1021 : vec4<f32> = u_xlat6;
      let x_1022 : vec2<f32> = vec2<f32>(x_1021.z, x_1021.w);
      let x_1024 : f32 = u_xlat25.z;
      txVec1 = vec3<f32>(x_1022.x, x_1022.y, x_1024);
      let x_1031 : vec3<f32> = txVec1;
      let x_1033 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1031.xy, x_1031.z);
      u_xlat7.y = x_1033;
      let x_1035 : vec3<f32> = u_xlat25;
      let x_1039 : vec4<f32> = x_682.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_1035.x, x_1035.y, x_1035.x, x_1035.y) + x_1039);
      let x_1042 : vec4<f32> = u_xlat6;
      let x_1043 : vec2<f32> = vec2<f32>(x_1042.x, x_1042.y);
      let x_1045 : f32 = u_xlat25.z;
      txVec2 = vec3<f32>(x_1043.x, x_1043.y, x_1045);
      let x_1052 : vec3<f32> = txVec2;
      let x_1054 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1052.xy, x_1052.z);
      u_xlat7.z = x_1054;
      let x_1057 : vec4<f32> = u_xlat6;
      let x_1058 : vec2<f32> = vec2<f32>(x_1057.z, x_1057.w);
      let x_1060 : f32 = u_xlat25.z;
      txVec3 = vec3<f32>(x_1058.x, x_1058.y, x_1060);
      let x_1067 : vec3<f32> = txVec3;
      let x_1069 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1067.xy, x_1067.z);
      u_xlat7.w = x_1069;
      let x_1071 : vec4<f32> = u_xlat7;
      u_xlat6.x = dot(x_1071, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1079 : f32 = x_682.x_MainLightShadowParams.y;
      u_xlatb31 = (x_1079 == 2.0f);
      let x_1081 : bool = u_xlatb31;
      if (x_1081) {
        let x_1085 : vec3<f32> = u_xlat25;
        let x_1089 : vec4<f32> = x_682.x_MainLightShadowmapSize;
        u_xlat31 = ((vec2<f32>(x_1085.x, x_1085.y) * vec2<f32>(x_1089.z, x_1089.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1095 : vec2<f32> = u_xlat31;
        u_xlat31 = floor(x_1095);
        let x_1097 : vec3<f32> = u_xlat25;
        let x_1100 : vec4<f32> = x_682.x_MainLightShadowmapSize;
        let x_1103 : vec2<f32> = u_xlat31;
        let x_1105 : vec2<f32> = ((vec2<f32>(x_1097.x, x_1097.y) * vec2<f32>(x_1100.z, x_1100.w)) + -(x_1103));
        let x_1106 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1105.x, x_1105.y, x_1106.z, x_1106.w);
        let x_1108 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1108.x, x_1108.x, x_1108.y, x_1108.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1113 : vec4<f32> = u_xlat8;
        let x_1115 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1113.x, x_1113.x, x_1113.z, x_1113.z) * vec4<f32>(x_1115.x, x_1115.x, x_1115.z, x_1115.z));
        let x_1119 : vec4<f32> = u_xlat9;
        u_xlat57 = (vec2<f32>(x_1119.y, x_1119.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1124 : vec4<f32> = u_xlat9;
        let x_1127 : vec4<f32> = u_xlat7;
        let x_1130 : vec2<f32> = ((vec2<f32>(x_1124.x, x_1124.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1127.x, x_1127.y)));
        let x_1131 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1130.x, x_1131.y, x_1130.y, x_1131.w);
        let x_1133 : vec4<f32> = u_xlat7;
        let x_1136 : vec2<f32> = (-(vec2<f32>(x_1133.x, x_1133.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1137 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1136.x, x_1136.y, x_1137.z, x_1137.w);
        let x_1140 : vec4<f32> = u_xlat7;
        u_xlat59 = min(vec2<f32>(x_1140.x, x_1140.y), vec2<f32>(0.0f, 0.0f));
        let x_1144 : vec2<f32> = u_xlat59;
        let x_1146 : vec2<f32> = u_xlat59;
        let x_1148 : vec4<f32> = u_xlat9;
        u_xlat59 = ((-(x_1144) * x_1146) + vec2<f32>(x_1148.x, x_1148.y));
        let x_1151 : vec4<f32> = u_xlat7;
        let x_1153 : vec2<f32> = max(vec2<f32>(x_1151.x, x_1151.y), vec2<f32>(0.0f, 0.0f));
        let x_1154 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1153.x, x_1153.y, x_1154.z, x_1154.w);
        let x_1156 : vec4<f32> = u_xlat7;
        let x_1159 : vec4<f32> = u_xlat7;
        let x_1162 : vec4<f32> = u_xlat8;
        let x_1164 : vec2<f32> = ((-(vec2<f32>(x_1156.x, x_1156.y)) * vec2<f32>(x_1159.x, x_1159.y)) + vec2<f32>(x_1162.y, x_1162.w));
        let x_1165 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1164.x, x_1164.y, x_1165.z, x_1165.w);
        let x_1167 : vec2<f32> = u_xlat59;
        u_xlat59 = (x_1167 + vec2<f32>(1.0f, 1.0f));
        let x_1169 : vec4<f32> = u_xlat7;
        let x_1171 : vec2<f32> = (vec2<f32>(x_1169.x, x_1169.y) + vec2<f32>(1.0f, 1.0f));
        let x_1172 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1171.x, x_1171.y, x_1172.z, x_1172.w);
        let x_1175 : vec4<f32> = u_xlat8;
        let x_1179 : vec2<f32> = (vec2<f32>(x_1175.x, x_1175.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1180 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1179.x, x_1179.y, x_1180.z, x_1180.w);
        let x_1183 : vec4<f32> = u_xlat9;
        let x_1185 : vec2<f32> = (vec2<f32>(x_1183.x, x_1183.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1186 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1185.x, x_1185.y, x_1186.z, x_1186.w);
        let x_1188 : vec2<f32> = u_xlat59;
        let x_1189 : vec2<f32> = (x_1188 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1190 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1189.x, x_1189.y, x_1190.z, x_1190.w);
        let x_1193 : vec4<f32> = u_xlat7;
        let x_1195 : vec2<f32> = (vec2<f32>(x_1193.x, x_1193.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1196 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1195.x, x_1195.y, x_1196.z, x_1196.w);
        let x_1198 : vec4<f32> = u_xlat8;
        let x_1200 : vec2<f32> = (vec2<f32>(x_1198.y, x_1198.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1201 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1200.x, x_1200.y, x_1201.z, x_1201.w);
        let x_1204 : f32 = u_xlat9.x;
        u_xlat10.z = x_1204;
        let x_1207 : f32 = u_xlat7.x;
        u_xlat10.w = x_1207;
        let x_1210 : f32 = u_xlat12.x;
        u_xlat11.z = x_1210;
        let x_1213 : f32 = u_xlat57.x;
        u_xlat11.w = x_1213;
        let x_1215 : vec4<f32> = u_xlat10;
        let x_1217 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1215.z, x_1215.w, x_1215.x, x_1215.z) + vec4<f32>(x_1217.z, x_1217.w, x_1217.x, x_1217.z));
        let x_1221 : f32 = u_xlat10.y;
        u_xlat9.z = x_1221;
        let x_1224 : f32 = u_xlat7.y;
        u_xlat9.w = x_1224;
        let x_1227 : f32 = u_xlat11.y;
        u_xlat12.z = x_1227;
        let x_1230 : f32 = u_xlat57.y;
        u_xlat12.w = x_1230;
        let x_1232 : vec4<f32> = u_xlat9;
        let x_1234 : vec4<f32> = u_xlat12;
        let x_1236 : vec3<f32> = (vec3<f32>(x_1232.z, x_1232.y, x_1232.w) + vec3<f32>(x_1234.z, x_1234.y, x_1234.w));
        let x_1237 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1236.x, x_1236.y, x_1236.z, x_1237.w);
        let x_1239 : vec4<f32> = u_xlat11;
        let x_1241 : vec4<f32> = u_xlat8;
        let x_1243 : vec3<f32> = (vec3<f32>(x_1239.x, x_1239.z, x_1239.w) / vec3<f32>(x_1241.z, x_1241.w, x_1241.y));
        let x_1244 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1243.x, x_1243.y, x_1243.z, x_1244.w);
        let x_1246 : vec4<f32> = u_xlat9;
        let x_1251 : vec3<f32> = (vec3<f32>(x_1246.x, x_1246.y, x_1246.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1252 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1251.x, x_1251.y, x_1251.z, x_1252.w);
        let x_1254 : vec4<f32> = u_xlat12;
        let x_1256 : vec4<f32> = u_xlat7;
        let x_1258 : vec3<f32> = (vec3<f32>(x_1254.z, x_1254.y, x_1254.w) / vec3<f32>(x_1256.x, x_1256.y, x_1256.z));
        let x_1259 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1258.x, x_1258.y, x_1258.z, x_1259.w);
        let x_1261 : vec4<f32> = u_xlat10;
        let x_1263 : vec3<f32> = (vec3<f32>(x_1261.x, x_1261.y, x_1261.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1264 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1263.x, x_1263.y, x_1263.z, x_1264.w);
        let x_1266 : vec4<f32> = u_xlat9;
        let x_1269 : vec4<f32> = x_682.x_MainLightShadowmapSize;
        let x_1271 : vec3<f32> = (vec3<f32>(x_1266.y, x_1266.x, x_1266.z) * vec3<f32>(x_1269.x, x_1269.x, x_1269.x));
        let x_1272 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1271.x, x_1271.y, x_1271.z, x_1272.w);
        let x_1274 : vec4<f32> = u_xlat10;
        let x_1277 : vec4<f32> = x_682.x_MainLightShadowmapSize;
        let x_1279 : vec3<f32> = (vec3<f32>(x_1274.x, x_1274.y, x_1274.z) * vec3<f32>(x_1277.y, x_1277.y, x_1277.y));
        let x_1280 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1279.x, x_1279.y, x_1279.z, x_1280.w);
        let x_1283 : f32 = u_xlat10.x;
        u_xlat9.w = x_1283;
        let x_1285 : vec2<f32> = u_xlat31;
        let x_1288 : vec4<f32> = x_682.x_MainLightShadowmapSize;
        let x_1291 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1285.x, x_1285.y, x_1285.x, x_1285.y) * vec4<f32>(x_1288.x, x_1288.y, x_1288.x, x_1288.y)) + vec4<f32>(x_1291.y, x_1291.w, x_1291.x, x_1291.w));
        let x_1294 : vec2<f32> = u_xlat31;
        let x_1296 : vec4<f32> = x_682.x_MainLightShadowmapSize;
        let x_1299 : vec4<f32> = u_xlat9;
        let x_1301 : vec2<f32> = ((x_1294 * vec2<f32>(x_1296.x, x_1296.y)) + vec2<f32>(x_1299.z, x_1299.w));
        let x_1302 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1301.x, x_1301.y, x_1302.z, x_1302.w);
        let x_1305 : f32 = u_xlat9.y;
        u_xlat10.w = x_1305;
        let x_1307 : vec4<f32> = u_xlat10;
        let x_1308 : vec2<f32> = vec2<f32>(x_1307.y, x_1307.z);
        let x_1309 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1309.x, x_1308.x, x_1309.z, x_1308.y);
        let x_1312 : vec2<f32> = u_xlat31;
        let x_1315 : vec4<f32> = x_682.x_MainLightShadowmapSize;
        let x_1318 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_1312.x, x_1312.y, x_1312.x, x_1312.y) * vec4<f32>(x_1315.x, x_1315.y, x_1315.x, x_1315.y)) + vec4<f32>(x_1318.x, x_1318.y, x_1318.z, x_1318.y));
        let x_1321 : vec2<f32> = u_xlat31;
        let x_1324 : vec4<f32> = x_682.x_MainLightShadowmapSize;
        let x_1327 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1321.x, x_1321.y, x_1321.x, x_1321.y) * vec4<f32>(x_1324.x, x_1324.y, x_1324.x, x_1324.y)) + vec4<f32>(x_1327.w, x_1327.y, x_1327.w, x_1327.z));
        let x_1330 : vec2<f32> = u_xlat31;
        let x_1333 : vec4<f32> = x_682.x_MainLightShadowmapSize;
        let x_1336 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1330.x, x_1330.y, x_1330.x, x_1330.y) * vec4<f32>(x_1333.x, x_1333.y, x_1333.x, x_1333.y)) + vec4<f32>(x_1336.x, x_1336.w, x_1336.z, x_1336.w));
        let x_1340 : vec4<f32> = u_xlat7;
        let x_1342 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_1340.x, x_1340.x, x_1340.x, x_1340.y) * vec4<f32>(x_1342.z, x_1342.w, x_1342.y, x_1342.z));
        let x_1346 : vec4<f32> = u_xlat7;
        let x_1348 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1346.y, x_1346.y, x_1346.z, x_1346.z) * x_1348);
        let x_1351 : f32 = u_xlat7.z;
        let x_1353 : f32 = u_xlat8.y;
        u_xlat31.x = (x_1351 * x_1353);
        let x_1357 : vec4<f32> = u_xlat11;
        let x_1358 : vec2<f32> = vec2<f32>(x_1357.x, x_1357.y);
        let x_1360 : f32 = u_xlat25.z;
        txVec4 = vec3<f32>(x_1358.x, x_1358.y, x_1360);
        let x_1368 : vec3<f32> = txVec4;
        let x_1370 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1368.xy, x_1368.z);
        u_xlat56.x = x_1370;
        let x_1373 : vec4<f32> = u_xlat11;
        let x_1374 : vec2<f32> = vec2<f32>(x_1373.z, x_1373.w);
        let x_1376 : f32 = u_xlat25.z;
        txVec5 = vec3<f32>(x_1374.x, x_1374.y, x_1376);
        let x_1384 : vec3<f32> = txVec5;
        let x_1386 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1384.xy, x_1384.z);
        u_xlat81 = x_1386;
        let x_1387 : f32 = u_xlat81;
        let x_1389 : f32 = u_xlat14.y;
        u_xlat81 = (x_1387 * x_1389);
        let x_1392 : f32 = u_xlat14.x;
        let x_1394 : f32 = u_xlat56.x;
        let x_1396 : f32 = u_xlat81;
        u_xlat56.x = ((x_1392 * x_1394) + x_1396);
        let x_1400 : vec4<f32> = u_xlat12;
        let x_1401 : vec2<f32> = vec2<f32>(x_1400.x, x_1400.y);
        let x_1403 : f32 = u_xlat25.z;
        txVec6 = vec3<f32>(x_1401.x, x_1401.y, x_1403);
        let x_1410 : vec3<f32> = txVec6;
        let x_1412 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1410.xy, x_1410.z);
        u_xlat81 = x_1412;
        let x_1414 : f32 = u_xlat14.z;
        let x_1415 : f32 = u_xlat81;
        let x_1418 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1414 * x_1415) + x_1418);
        let x_1422 : vec4<f32> = u_xlat10;
        let x_1423 : vec2<f32> = vec2<f32>(x_1422.x, x_1422.y);
        let x_1425 : f32 = u_xlat25.z;
        txVec7 = vec3<f32>(x_1423.x, x_1423.y, x_1425);
        let x_1432 : vec3<f32> = txVec7;
        let x_1434 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1432.xy, x_1432.z);
        u_xlat81 = x_1434;
        let x_1436 : f32 = u_xlat14.w;
        let x_1437 : f32 = u_xlat81;
        let x_1440 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1436 * x_1437) + x_1440);
        let x_1444 : vec4<f32> = u_xlat13;
        let x_1445 : vec2<f32> = vec2<f32>(x_1444.x, x_1444.y);
        let x_1447 : f32 = u_xlat25.z;
        txVec8 = vec3<f32>(x_1445.x, x_1445.y, x_1447);
        let x_1454 : vec3<f32> = txVec8;
        let x_1456 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1454.xy, x_1454.z);
        u_xlat81 = x_1456;
        let x_1458 : f32 = u_xlat15.x;
        let x_1459 : f32 = u_xlat81;
        let x_1462 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1458 * x_1459) + x_1462);
        let x_1466 : vec4<f32> = u_xlat13;
        let x_1467 : vec2<f32> = vec2<f32>(x_1466.z, x_1466.w);
        let x_1469 : f32 = u_xlat25.z;
        txVec9 = vec3<f32>(x_1467.x, x_1467.y, x_1469);
        let x_1476 : vec3<f32> = txVec9;
        let x_1478 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1476.xy, x_1476.z);
        u_xlat81 = x_1478;
        let x_1480 : f32 = u_xlat15.y;
        let x_1481 : f32 = u_xlat81;
        let x_1484 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1480 * x_1481) + x_1484);
        let x_1488 : vec4<f32> = u_xlat10;
        let x_1489 : vec2<f32> = vec2<f32>(x_1488.z, x_1488.w);
        let x_1491 : f32 = u_xlat25.z;
        txVec10 = vec3<f32>(x_1489.x, x_1489.y, x_1491);
        let x_1498 : vec3<f32> = txVec10;
        let x_1500 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1498.xy, x_1498.z);
        u_xlat81 = x_1500;
        let x_1502 : f32 = u_xlat15.z;
        let x_1503 : f32 = u_xlat81;
        let x_1506 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1502 * x_1503) + x_1506);
        let x_1510 : vec4<f32> = u_xlat9;
        let x_1511 : vec2<f32> = vec2<f32>(x_1510.x, x_1510.y);
        let x_1513 : f32 = u_xlat25.z;
        txVec11 = vec3<f32>(x_1511.x, x_1511.y, x_1513);
        let x_1520 : vec3<f32> = txVec11;
        let x_1522 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1520.xy, x_1520.z);
        u_xlat81 = x_1522;
        let x_1524 : f32 = u_xlat15.w;
        let x_1525 : f32 = u_xlat81;
        let x_1528 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1524 * x_1525) + x_1528);
        let x_1532 : vec4<f32> = u_xlat9;
        let x_1533 : vec2<f32> = vec2<f32>(x_1532.z, x_1532.w);
        let x_1535 : f32 = u_xlat25.z;
        txVec12 = vec3<f32>(x_1533.x, x_1533.y, x_1535);
        let x_1542 : vec3<f32> = txVec12;
        let x_1544 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1542.xy, x_1542.z);
        u_xlat81 = x_1544;
        let x_1546 : f32 = u_xlat31.x;
        let x_1547 : f32 = u_xlat81;
        let x_1550 : f32 = u_xlat56.x;
        u_xlat6.x = ((x_1546 * x_1547) + x_1550);
      } else {
        let x_1554 : vec3<f32> = u_xlat25;
        let x_1557 : vec4<f32> = x_682.x_MainLightShadowmapSize;
        u_xlat31 = ((vec2<f32>(x_1554.x, x_1554.y) * vec2<f32>(x_1557.z, x_1557.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1561 : vec2<f32> = u_xlat31;
        u_xlat31 = floor(x_1561);
        let x_1563 : vec3<f32> = u_xlat25;
        let x_1566 : vec4<f32> = x_682.x_MainLightShadowmapSize;
        let x_1569 : vec2<f32> = u_xlat31;
        let x_1571 : vec2<f32> = ((vec2<f32>(x_1563.x, x_1563.y) * vec2<f32>(x_1566.z, x_1566.w)) + -(x_1569));
        let x_1572 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1571.x, x_1571.y, x_1572.z, x_1572.w);
        let x_1574 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1574.x, x_1574.x, x_1574.y, x_1574.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1577 : vec4<f32> = u_xlat8;
        let x_1579 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1577.x, x_1577.x, x_1577.z, x_1577.z) * vec4<f32>(x_1579.x, x_1579.x, x_1579.z, x_1579.z));
        let x_1582 : vec4<f32> = u_xlat9;
        let x_1586 : vec2<f32> = (vec2<f32>(x_1582.y, x_1582.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1587 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1587.x, x_1586.x, x_1587.z, x_1586.y);
        let x_1589 : vec4<f32> = u_xlat9;
        let x_1592 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_1589.x, x_1589.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1592.x, x_1592.y)));
        let x_1596 : vec4<f32> = u_xlat7;
        let x_1599 : vec2<f32> = (-(vec2<f32>(x_1596.x, x_1596.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1600 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1599.x, x_1600.y, x_1599.y, x_1600.w);
        let x_1602 : vec4<f32> = u_xlat7;
        let x_1604 : vec2<f32> = min(vec2<f32>(x_1602.x, x_1602.y), vec2<f32>(0.0f, 0.0f));
        let x_1605 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1604.x, x_1604.y, x_1605.z, x_1605.w);
        let x_1607 : vec4<f32> = u_xlat9;
        let x_1610 : vec4<f32> = u_xlat9;
        let x_1613 : vec4<f32> = u_xlat8;
        let x_1615 : vec2<f32> = ((-(vec2<f32>(x_1607.x, x_1607.y)) * vec2<f32>(x_1610.x, x_1610.y)) + vec2<f32>(x_1613.x, x_1613.z));
        let x_1616 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1615.x, x_1616.y, x_1615.y, x_1616.w);
        let x_1618 : vec4<f32> = u_xlat7;
        let x_1620 : vec2<f32> = max(vec2<f32>(x_1618.x, x_1618.y), vec2<f32>(0.0f, 0.0f));
        let x_1621 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1620.x, x_1620.y, x_1621.z, x_1621.w);
        let x_1623 : vec4<f32> = u_xlat9;
        let x_1626 : vec4<f32> = u_xlat9;
        let x_1629 : vec4<f32> = u_xlat8;
        let x_1631 : vec2<f32> = ((-(vec2<f32>(x_1623.x, x_1623.y)) * vec2<f32>(x_1626.x, x_1626.y)) + vec2<f32>(x_1629.y, x_1629.w));
        let x_1632 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1632.x, x_1631.x, x_1632.z, x_1631.y);
        let x_1634 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1634 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1638 : f32 = u_xlat8.y;
        u_xlat9.z = (x_1638 * 0.08163200318813323975f);
        let x_1642 : vec2<f32> = u_xlat57;
        let x_1645 : vec2<f32> = (vec2<f32>(x_1642.y, x_1642.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1646 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1645.x, x_1645.y, x_1646.z, x_1646.w);
        let x_1648 : vec4<f32> = u_xlat8;
        u_xlat57 = (vec2<f32>(x_1648.x, x_1648.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1652 : f32 = u_xlat8.w;
        u_xlat11.z = (x_1652 * 0.08163200318813323975f);
        let x_1656 : f32 = u_xlat11.y;
        u_xlat9.x = x_1656;
        let x_1658 : vec4<f32> = u_xlat7;
        let x_1665 : vec2<f32> = ((vec2<f32>(x_1658.x, x_1658.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1666 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1666.x, x_1665.x, x_1666.z, x_1665.y);
        let x_1668 : vec4<f32> = u_xlat7;
        let x_1672 : vec2<f32> = ((vec2<f32>(x_1668.x, x_1668.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1673 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1672.x, x_1673.y, x_1672.y, x_1673.w);
        let x_1676 : f32 = u_xlat57.x;
        u_xlat8.y = x_1676;
        let x_1679 : f32 = u_xlat10.y;
        u_xlat8.w = x_1679;
        let x_1681 : vec4<f32> = u_xlat8;
        let x_1682 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1681 + x_1682);
        let x_1684 : vec4<f32> = u_xlat7;
        let x_1687 : vec2<f32> = ((vec2<f32>(x_1684.y, x_1684.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1688 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1688.x, x_1687.x, x_1688.z, x_1687.y);
        let x_1690 : vec4<f32> = u_xlat7;
        let x_1693 : vec2<f32> = ((vec2<f32>(x_1690.y, x_1690.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1694 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1693.x, x_1694.y, x_1693.y, x_1694.w);
        let x_1697 : f32 = u_xlat57.y;
        u_xlat10.y = x_1697;
        let x_1699 : vec4<f32> = u_xlat10;
        let x_1700 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1699 + x_1700);
        let x_1702 : vec4<f32> = u_xlat8;
        let x_1703 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_1702 / x_1703);
        let x_1705 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1705 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1711 : vec4<f32> = u_xlat10;
        let x_1712 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_1711 / x_1712);
        let x_1714 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1714 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1716 : vec4<f32> = u_xlat8;
        let x_1719 : vec4<f32> = x_682.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1716.w, x_1716.x, x_1716.y, x_1716.z) * vec4<f32>(x_1719.x, x_1719.x, x_1719.x, x_1719.x));
        let x_1722 : vec4<f32> = u_xlat10;
        let x_1725 : vec4<f32> = x_682.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1722.x, x_1722.w, x_1722.y, x_1722.z) * vec4<f32>(x_1725.y, x_1725.y, x_1725.y, x_1725.y));
        let x_1728 : vec4<f32> = u_xlat8;
        let x_1729 : vec3<f32> = vec3<f32>(x_1728.y, x_1728.z, x_1728.w);
        let x_1730 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1729.x, x_1730.y, x_1729.y, x_1729.z);
        let x_1733 : f32 = u_xlat10.x;
        u_xlat11.y = x_1733;
        let x_1735 : vec2<f32> = u_xlat31;
        let x_1738 : vec4<f32> = x_682.x_MainLightShadowmapSize;
        let x_1741 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1735.x, x_1735.y, x_1735.x, x_1735.y) * vec4<f32>(x_1738.x, x_1738.y, x_1738.x, x_1738.y)) + vec4<f32>(x_1741.x, x_1741.y, x_1741.z, x_1741.y));
        let x_1744 : vec2<f32> = u_xlat31;
        let x_1746 : vec4<f32> = x_682.x_MainLightShadowmapSize;
        let x_1749 : vec4<f32> = u_xlat11;
        let x_1751 : vec2<f32> = ((x_1744 * vec2<f32>(x_1746.x, x_1746.y)) + vec2<f32>(x_1749.w, x_1749.y));
        let x_1752 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1751.x, x_1751.y, x_1752.z, x_1752.w);
        let x_1755 : f32 = u_xlat11.y;
        u_xlat8.y = x_1755;
        let x_1758 : f32 = u_xlat10.z;
        u_xlat11.y = x_1758;
        let x_1760 : vec2<f32> = u_xlat31;
        let x_1763 : vec4<f32> = x_682.x_MainLightShadowmapSize;
        let x_1766 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_1760.x, x_1760.y, x_1760.x, x_1760.y) * vec4<f32>(x_1763.x, x_1763.y, x_1763.x, x_1763.y)) + vec4<f32>(x_1766.x, x_1766.y, x_1766.z, x_1766.y));
        let x_1770 : vec2<f32> = u_xlat31;
        let x_1772 : vec4<f32> = x_682.x_MainLightShadowmapSize;
        let x_1775 : vec4<f32> = u_xlat11;
        u_xlat63 = ((x_1770 * vec2<f32>(x_1772.x, x_1772.y)) + vec2<f32>(x_1775.w, x_1775.y));
        let x_1779 : f32 = u_xlat11.y;
        u_xlat8.z = x_1779;
        let x_1781 : vec2<f32> = u_xlat31;
        let x_1784 : vec4<f32> = x_682.x_MainLightShadowmapSize;
        let x_1787 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1781.x, x_1781.y, x_1781.x, x_1781.y) * vec4<f32>(x_1784.x, x_1784.y, x_1784.x, x_1784.y)) + vec4<f32>(x_1787.x, x_1787.y, x_1787.x, x_1787.z));
        let x_1791 : f32 = u_xlat10.w;
        u_xlat11.y = x_1791;
        let x_1794 : vec2<f32> = u_xlat31;
        let x_1797 : vec4<f32> = x_682.x_MainLightShadowmapSize;
        let x_1800 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1794.x, x_1794.y, x_1794.x, x_1794.y) * vec4<f32>(x_1797.x, x_1797.y, x_1797.x, x_1797.y)) + vec4<f32>(x_1800.x, x_1800.y, x_1800.z, x_1800.y));
        let x_1804 : vec2<f32> = u_xlat31;
        let x_1806 : vec4<f32> = x_682.x_MainLightShadowmapSize;
        let x_1809 : vec4<f32> = u_xlat11;
        let x_1811 : vec2<f32> = ((x_1804 * vec2<f32>(x_1806.x, x_1806.y)) + vec2<f32>(x_1809.w, x_1809.y));
        let x_1812 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_1811.x, x_1811.y, x_1812.z);
        let x_1815 : f32 = u_xlat11.y;
        u_xlat8.w = x_1815;
        let x_1818 : vec2<f32> = u_xlat31;
        let x_1820 : vec4<f32> = x_682.x_MainLightShadowmapSize;
        let x_1823 : vec4<f32> = u_xlat8;
        let x_1825 : vec2<f32> = ((x_1818 * vec2<f32>(x_1820.x, x_1820.y)) + vec2<f32>(x_1823.x, x_1823.w));
        let x_1826 : vec4<f32> = u_xlat17;
        u_xlat17 = vec4<f32>(x_1825.x, x_1825.y, x_1826.z, x_1826.w);
        let x_1828 : vec4<f32> = u_xlat11;
        let x_1829 : vec3<f32> = vec3<f32>(x_1828.x, x_1828.z, x_1828.w);
        let x_1830 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1829.x, x_1830.y, x_1829.y, x_1829.z);
        let x_1832 : vec2<f32> = u_xlat31;
        let x_1835 : vec4<f32> = x_682.x_MainLightShadowmapSize;
        let x_1838 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1832.x, x_1832.y, x_1832.x, x_1832.y) * vec4<f32>(x_1835.x, x_1835.y, x_1835.x, x_1835.y)) + vec4<f32>(x_1838.x, x_1838.y, x_1838.z, x_1838.y));
        let x_1842 : vec2<f32> = u_xlat31;
        let x_1844 : vec4<f32> = x_682.x_MainLightShadowmapSize;
        let x_1847 : vec4<f32> = u_xlat10;
        u_xlat60 = ((x_1842 * vec2<f32>(x_1844.x, x_1844.y)) + vec2<f32>(x_1847.w, x_1847.y));
        let x_1851 : f32 = u_xlat8.x;
        u_xlat10.x = x_1851;
        let x_1853 : vec2<f32> = u_xlat31;
        let x_1855 : vec4<f32> = x_682.x_MainLightShadowmapSize;
        let x_1858 : vec4<f32> = u_xlat10;
        u_xlat31 = ((x_1853 * vec2<f32>(x_1855.x, x_1855.y)) + vec2<f32>(x_1858.x, x_1858.y));
        let x_1862 : vec4<f32> = u_xlat7;
        let x_1864 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1862.x, x_1862.x, x_1862.x, x_1862.x) * x_1864);
        let x_1867 : vec4<f32> = u_xlat7;
        let x_1869 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_1867.y, x_1867.y, x_1867.y, x_1867.y) * x_1869);
        let x_1872 : vec4<f32> = u_xlat7;
        let x_1874 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_1872.z, x_1872.z, x_1872.z, x_1872.z) * x_1874);
        let x_1876 : vec4<f32> = u_xlat7;
        let x_1878 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_1876.w, x_1876.w, x_1876.w, x_1876.w) * x_1878);
        let x_1881 : vec4<f32> = u_xlat12;
        let x_1882 : vec2<f32> = vec2<f32>(x_1881.x, x_1881.y);
        let x_1884 : f32 = u_xlat25.z;
        txVec13 = vec3<f32>(x_1882.x, x_1882.y, x_1884);
        let x_1891 : vec3<f32> = txVec13;
        let x_1893 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1891.xy, x_1891.z);
        u_xlat81 = x_1893;
        let x_1895 : vec4<f32> = u_xlat12;
        let x_1896 : vec2<f32> = vec2<f32>(x_1895.z, x_1895.w);
        let x_1898 : f32 = u_xlat25.z;
        txVec14 = vec3<f32>(x_1896.x, x_1896.y, x_1898);
        let x_1905 : vec3<f32> = txVec14;
        let x_1907 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1905.xy, x_1905.z);
        u_xlat8.x = x_1907;
        let x_1910 : f32 = u_xlat8.x;
        let x_1912 : f32 = u_xlat18.y;
        u_xlat8.x = (x_1910 * x_1912);
        let x_1916 : f32 = u_xlat18.x;
        let x_1917 : f32 = u_xlat81;
        let x_1920 : f32 = u_xlat8.x;
        u_xlat81 = ((x_1916 * x_1917) + x_1920);
        let x_1923 : vec4<f32> = u_xlat13;
        let x_1924 : vec2<f32> = vec2<f32>(x_1923.x, x_1923.y);
        let x_1926 : f32 = u_xlat25.z;
        txVec15 = vec3<f32>(x_1924.x, x_1924.y, x_1926);
        let x_1933 : vec3<f32> = txVec15;
        let x_1935 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1933.xy, x_1933.z);
        u_xlat8.x = x_1935;
        let x_1938 : f32 = u_xlat18.z;
        let x_1940 : f32 = u_xlat8.x;
        let x_1942 : f32 = u_xlat81;
        u_xlat81 = ((x_1938 * x_1940) + x_1942);
        let x_1945 : vec4<f32> = u_xlat15;
        let x_1946 : vec2<f32> = vec2<f32>(x_1945.x, x_1945.y);
        let x_1948 : f32 = u_xlat25.z;
        txVec16 = vec3<f32>(x_1946.x, x_1946.y, x_1948);
        let x_1955 : vec3<f32> = txVec16;
        let x_1957 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1955.xy, x_1955.z);
        u_xlat8.x = x_1957;
        let x_1960 : f32 = u_xlat18.w;
        let x_1962 : f32 = u_xlat8.x;
        let x_1964 : f32 = u_xlat81;
        u_xlat81 = ((x_1960 * x_1962) + x_1964);
        let x_1967 : vec4<f32> = u_xlat14;
        let x_1968 : vec2<f32> = vec2<f32>(x_1967.x, x_1967.y);
        let x_1970 : f32 = u_xlat25.z;
        txVec17 = vec3<f32>(x_1968.x, x_1968.y, x_1970);
        let x_1977 : vec3<f32> = txVec17;
        let x_1979 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1977.xy, x_1977.z);
        u_xlat8.x = x_1979;
        let x_1982 : f32 = u_xlat19.x;
        let x_1984 : f32 = u_xlat8.x;
        let x_1986 : f32 = u_xlat81;
        u_xlat81 = ((x_1982 * x_1984) + x_1986);
        let x_1989 : vec4<f32> = u_xlat14;
        let x_1990 : vec2<f32> = vec2<f32>(x_1989.z, x_1989.w);
        let x_1992 : f32 = u_xlat25.z;
        txVec18 = vec3<f32>(x_1990.x, x_1990.y, x_1992);
        let x_1999 : vec3<f32> = txVec18;
        let x_2001 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1999.xy, x_1999.z);
        u_xlat8.x = x_2001;
        let x_2004 : f32 = u_xlat19.y;
        let x_2006 : f32 = u_xlat8.x;
        let x_2008 : f32 = u_xlat81;
        u_xlat81 = ((x_2004 * x_2006) + x_2008);
        let x_2011 : vec2<f32> = u_xlat63;
        let x_2013 : f32 = u_xlat25.z;
        txVec19 = vec3<f32>(x_2011.x, x_2011.y, x_2013);
        let x_2020 : vec3<f32> = txVec19;
        let x_2022 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2020.xy, x_2020.z);
        u_xlat8.x = x_2022;
        let x_2025 : f32 = u_xlat19.z;
        let x_2027 : f32 = u_xlat8.x;
        let x_2029 : f32 = u_xlat81;
        u_xlat81 = ((x_2025 * x_2027) + x_2029);
        let x_2032 : vec4<f32> = u_xlat15;
        let x_2033 : vec2<f32> = vec2<f32>(x_2032.z, x_2032.w);
        let x_2035 : f32 = u_xlat25.z;
        txVec20 = vec3<f32>(x_2033.x, x_2033.y, x_2035);
        let x_2042 : vec3<f32> = txVec20;
        let x_2044 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2042.xy, x_2042.z);
        u_xlat8.x = x_2044;
        let x_2047 : f32 = u_xlat19.w;
        let x_2049 : f32 = u_xlat8.x;
        let x_2051 : f32 = u_xlat81;
        u_xlat81 = ((x_2047 * x_2049) + x_2051);
        let x_2054 : vec4<f32> = u_xlat16;
        let x_2055 : vec2<f32> = vec2<f32>(x_2054.x, x_2054.y);
        let x_2057 : f32 = u_xlat25.z;
        txVec21 = vec3<f32>(x_2055.x, x_2055.y, x_2057);
        let x_2064 : vec3<f32> = txVec21;
        let x_2066 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2064.xy, x_2064.z);
        u_xlat8.x = x_2066;
        let x_2069 : f32 = u_xlat20.x;
        let x_2071 : f32 = u_xlat8.x;
        let x_2073 : f32 = u_xlat81;
        u_xlat81 = ((x_2069 * x_2071) + x_2073);
        let x_2076 : vec4<f32> = u_xlat16;
        let x_2077 : vec2<f32> = vec2<f32>(x_2076.z, x_2076.w);
        let x_2079 : f32 = u_xlat25.z;
        txVec22 = vec3<f32>(x_2077.x, x_2077.y, x_2079);
        let x_2086 : vec3<f32> = txVec22;
        let x_2088 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2086.xy, x_2086.z);
        u_xlat8.x = x_2088;
        let x_2091 : f32 = u_xlat20.y;
        let x_2093 : f32 = u_xlat8.x;
        let x_2095 : f32 = u_xlat81;
        u_xlat81 = ((x_2091 * x_2093) + x_2095);
        let x_2098 : vec3<f32> = u_xlat33;
        let x_2099 : vec2<f32> = vec2<f32>(x_2098.x, x_2098.y);
        let x_2101 : f32 = u_xlat25.z;
        txVec23 = vec3<f32>(x_2099.x, x_2099.y, x_2101);
        let x_2108 : vec3<f32> = txVec23;
        let x_2110 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2108.xy, x_2108.z);
        u_xlat8.x = x_2110;
        let x_2113 : f32 = u_xlat20.z;
        let x_2115 : f32 = u_xlat8.x;
        let x_2117 : f32 = u_xlat81;
        u_xlat81 = ((x_2113 * x_2115) + x_2117);
        let x_2120 : vec4<f32> = u_xlat17;
        let x_2121 : vec2<f32> = vec2<f32>(x_2120.x, x_2120.y);
        let x_2123 : f32 = u_xlat25.z;
        txVec24 = vec3<f32>(x_2121.x, x_2121.y, x_2123);
        let x_2130 : vec3<f32> = txVec24;
        let x_2132 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2130.xy, x_2130.z);
        u_xlat8.x = x_2132;
        let x_2135 : f32 = u_xlat20.w;
        let x_2137 : f32 = u_xlat8.x;
        let x_2139 : f32 = u_xlat81;
        u_xlat81 = ((x_2135 * x_2137) + x_2139);
        let x_2142 : vec4<f32> = u_xlat11;
        let x_2143 : vec2<f32> = vec2<f32>(x_2142.x, x_2142.y);
        let x_2145 : f32 = u_xlat25.z;
        txVec25 = vec3<f32>(x_2143.x, x_2143.y, x_2145);
        let x_2152 : vec3<f32> = txVec25;
        let x_2154 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2152.xy, x_2152.z);
        u_xlat8.x = x_2154;
        let x_2157 : f32 = u_xlat7.x;
        let x_2159 : f32 = u_xlat8.x;
        let x_2161 : f32 = u_xlat81;
        u_xlat81 = ((x_2157 * x_2159) + x_2161);
        let x_2164 : vec4<f32> = u_xlat11;
        let x_2165 : vec2<f32> = vec2<f32>(x_2164.z, x_2164.w);
        let x_2167 : f32 = u_xlat25.z;
        txVec26 = vec3<f32>(x_2165.x, x_2165.y, x_2167);
        let x_2174 : vec3<f32> = txVec26;
        let x_2176 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2174.xy, x_2174.z);
        u_xlat7.x = x_2176;
        let x_2179 : f32 = u_xlat7.y;
        let x_2181 : f32 = u_xlat7.x;
        let x_2183 : f32 = u_xlat81;
        u_xlat81 = ((x_2179 * x_2181) + x_2183);
        let x_2186 : vec2<f32> = u_xlat60;
        let x_2188 : f32 = u_xlat25.z;
        txVec27 = vec3<f32>(x_2186.x, x_2186.y, x_2188);
        let x_2195 : vec3<f32> = txVec27;
        let x_2197 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2195.xy, x_2195.z);
        u_xlat7.x = x_2197;
        let x_2200 : f32 = u_xlat7.z;
        let x_2202 : f32 = u_xlat7.x;
        let x_2204 : f32 = u_xlat81;
        u_xlat81 = ((x_2200 * x_2202) + x_2204);
        let x_2207 : vec2<f32> = u_xlat31;
        let x_2209 : f32 = u_xlat25.z;
        txVec28 = vec3<f32>(x_2207.x, x_2207.y, x_2209);
        let x_2216 : vec3<f32> = txVec28;
        let x_2218 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2216.xy, x_2216.z);
        u_xlat31.x = x_2218;
        let x_2221 : f32 = u_xlat7.w;
        let x_2223 : f32 = u_xlat31.x;
        let x_2225 : f32 = u_xlat81;
        u_xlat6.x = ((x_2221 * x_2223) + x_2225);
      }
    }
  } else {
    let x_2230 : vec3<f32> = u_xlat25;
    let x_2231 : vec2<f32> = vec2<f32>(x_2230.x, x_2230.y);
    let x_2233 : f32 = u_xlat25.z;
    txVec29 = vec3<f32>(x_2231.x, x_2231.y, x_2233);
    let x_2240 : vec3<f32> = txVec29;
    let x_2242 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2240.xy, x_2240.z);
    u_xlat6.x = x_2242;
  }
  let x_2245 : f32 = x_682.x_MainLightShadowParams.x;
  u_xlat25.x = (-(x_2245) + 1.0f);
  let x_2250 : f32 = u_xlat6.x;
  let x_2252 : f32 = x_682.x_MainLightShadowParams.x;
  let x_2255 : f32 = u_xlat25.x;
  u_xlat25.x = ((x_2250 * x_2252) + x_2255);
  let x_2260 : f32 = u_xlat25.z;
  u_xlatb50 = (0.0f >= x_2260);
  let x_2264 : f32 = u_xlat25.z;
  u_xlatb75 = (x_2264 >= 1.0f);
  let x_2266 : bool = u_xlatb75;
  let x_2267 : bool = u_xlatb50;
  u_xlatb50 = (x_2266 | x_2267);
  let x_2269 : bool = u_xlatb50;
  if (x_2269) {
    x_2270 = 1.0f;
  } else {
    let x_2275 : f32 = u_xlat25.x;
    x_2270 = x_2275;
  }
  let x_2276 : f32 = x_2270;
  u_xlat25.x = x_2276;
  let x_2278 : vec3<f32> = vs_INTERP7;
  let x_2280 : vec3<f32> = x_135.x_WorldSpaceCameraPos;
  let x_2282 : vec3<f32> = (x_2278 + -(x_2280));
  let x_2283 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2282.x, x_2282.y, x_2282.z, x_2283.w);
  let x_2285 : vec4<f32> = u_xlat6;
  let x_2287 : vec4<f32> = u_xlat6;
  u_xlat50 = dot(vec3<f32>(x_2285.x, x_2285.y, x_2285.z), vec3<f32>(x_2287.x, x_2287.y, x_2287.z));
  let x_2291 : f32 = u_xlat50;
  let x_2293 : f32 = x_682.x_MainLightShadowParams.z;
  let x_2296 : f32 = x_682.x_MainLightShadowParams.w;
  u_xlat75 = ((x_2291 * x_2293) + x_2296);
  let x_2298 : f32 = u_xlat75;
  u_xlat75 = clamp(x_2298, 0.0f, 1.0f);
  let x_2301 : f32 = u_xlat25.x;
  u_xlat6.x = (-(x_2301) + 1.0f);
  let x_2305 : f32 = u_xlat75;
  let x_2307 : f32 = u_xlat6.x;
  let x_2310 : f32 = u_xlat25.x;
  u_xlat25.x = ((x_2305 * x_2307) + x_2310);
  let x_2320 : f32 = x_2318.x_MainLightCookieTextureFormat;
  u_xlatb75 = !((x_2320 == -1.0f));
  let x_2322 : bool = u_xlatb75;
  if (x_2322) {
    let x_2325 : vec3<f32> = vs_INTERP7;
    let x_2328 : vec4<f32> = x_2318.x_MainLightWorldToLight[1i];
    let x_2330 : vec2<f32> = (vec2<f32>(x_2325.y, x_2325.y) * vec2<f32>(x_2328.x, x_2328.y));
    let x_2331 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2330.x, x_2330.y, x_2331.z, x_2331.w);
    let x_2334 : vec4<f32> = x_2318.x_MainLightWorldToLight[0i];
    let x_2336 : vec3<f32> = vs_INTERP7;
    let x_2339 : vec4<f32> = u_xlat6;
    let x_2341 : vec2<f32> = ((vec2<f32>(x_2334.x, x_2334.y) * vec2<f32>(x_2336.x, x_2336.x)) + vec2<f32>(x_2339.x, x_2339.y));
    let x_2342 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2341.x, x_2341.y, x_2342.z, x_2342.w);
    let x_2345 : vec4<f32> = x_2318.x_MainLightWorldToLight[2i];
    let x_2347 : vec3<f32> = vs_INTERP7;
    let x_2350 : vec4<f32> = u_xlat6;
    let x_2352 : vec2<f32> = ((vec2<f32>(x_2345.x, x_2345.y) * vec2<f32>(x_2347.z, x_2347.z)) + vec2<f32>(x_2350.x, x_2350.y));
    let x_2353 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2352.x, x_2352.y, x_2353.z, x_2353.w);
    let x_2355 : vec4<f32> = u_xlat6;
    let x_2358 : vec4<f32> = x_2318.x_MainLightWorldToLight[3i];
    let x_2360 : vec2<f32> = (vec2<f32>(x_2355.x, x_2355.y) + vec2<f32>(x_2358.x, x_2358.y));
    let x_2361 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2360.x, x_2360.y, x_2361.z, x_2361.w);
    let x_2363 : vec4<f32> = u_xlat6;
    let x_2366 : vec2<f32> = ((vec2<f32>(x_2363.x, x_2363.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2367 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2366.x, x_2366.y, x_2367.z, x_2367.w);
    let x_2374 : vec4<f32> = u_xlat6;
    let x_2377 : f32 = x_135.x_GlobalMipBias.x;
    let x_2378 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2374.x, x_2374.y), x_2377);
    u_xlat6 = x_2378;
    let x_2381 : f32 = x_2318.x_MainLightCookieTextureFormat;
    let x_2383 : f32 = x_2318.x_MainLightCookieTextureFormat;
    let x_2385 : f32 = x_2318.x_MainLightCookieTextureFormat;
    let x_2387 : f32 = x_2318.x_MainLightCookieTextureFormat;
    let x_2388 : vec4<f32> = vec4<f32>(x_2381, x_2383, x_2385, x_2387);
    let x_2395 : vec4<bool> = (vec4<f32>(x_2388.x, x_2388.y, x_2388.z, x_2388.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_2395.x, x_2395.y);
    let x_2398 : bool = u_xlatb7.y;
    if (x_2398) {
      let x_2403 : f32 = u_xlat6.w;
      x_2399 = x_2403;
    } else {
      let x_2406 : f32 = u_xlat6.x;
      x_2399 = x_2406;
    }
    let x_2407 : f32 = x_2399;
    u_xlat75 = x_2407;
    let x_2409 : bool = u_xlatb7.x;
    if (x_2409) {
      let x_2413 : vec4<f32> = u_xlat6;
      x_2410 = vec3<f32>(x_2413.x, x_2413.y, x_2413.z);
    } else {
      let x_2416 : f32 = u_xlat75;
      x_2410 = vec3<f32>(x_2416, x_2416, x_2416);
    }
    let x_2418 : vec3<f32> = x_2410;
    let x_2419 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2418.x, x_2418.y, x_2418.z, x_2419.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_2425 : vec4<f32> = u_xlat6;
  let x_2428 : vec4<f32> = x_135.x_MainLightColor;
  let x_2430 : vec3<f32> = (vec3<f32>(x_2425.x, x_2425.y, x_2425.z) * vec3<f32>(x_2428.x, x_2428.y, x_2428.z));
  let x_2431 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2430.x, x_2430.y, x_2430.z, x_2431.w);
  let x_2433 : vec3<f32> = u_xlat5;
  let x_2435 : vec4<f32> = u_xlat4;
  u_xlat75 = dot(-(x_2433), vec3<f32>(x_2435.x, x_2435.y, x_2435.z));
  let x_2438 : f32 = u_xlat75;
  let x_2439 : f32 = u_xlat75;
  u_xlat75 = (x_2438 + x_2439);
  let x_2441 : vec4<f32> = u_xlat4;
  let x_2443 : f32 = u_xlat75;
  let x_2447 : vec3<f32> = u_xlat5;
  let x_2449 : vec3<f32> = ((vec3<f32>(x_2441.x, x_2441.y, x_2441.z) * -(vec3<f32>(x_2443, x_2443, x_2443))) + -(x_2447));
  let x_2450 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2449.x, x_2449.y, x_2449.z, x_2450.w);
  let x_2452 : vec4<f32> = u_xlat4;
  let x_2454 : vec3<f32> = u_xlat5;
  u_xlat75 = dot(vec3<f32>(x_2452.x, x_2452.y, x_2452.z), x_2454);
  let x_2456 : f32 = u_xlat75;
  u_xlat75 = clamp(x_2456, 0.0f, 1.0f);
  let x_2458 : f32 = u_xlat75;
  u_xlat75 = (-(x_2458) + 1.0f);
  let x_2461 : f32 = u_xlat75;
  let x_2462 : f32 = u_xlat75;
  u_xlat75 = (x_2461 * x_2462);
  let x_2464 : f32 = u_xlat75;
  let x_2465 : f32 = u_xlat75;
  u_xlat75 = (x_2464 * x_2465);
  let x_2467 : f32 = u_xlat76;
  u_xlat81 = ((-(x_2467) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2473 : f32 = u_xlat76;
  let x_2474 : f32 = u_xlat81;
  u_xlat76 = (x_2473 * x_2474);
  let x_2476 : f32 = u_xlat76;
  u_xlat76 = (x_2476 * 6.0f);
  let x_2487 : vec4<f32> = u_xlat7;
  let x_2489 : f32 = u_xlat76;
  let x_2490 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2487.x, x_2487.y, x_2487.z), x_2489);
  u_xlat7 = x_2490;
  let x_2492 : f32 = u_xlat7.w;
  u_xlat76 = (x_2492 + -1.0f);
  let x_2495 : f32 = x_48.unity_SpecCube0_HDR.w;
  let x_2496 : f32 = u_xlat76;
  u_xlat76 = ((x_2495 * x_2496) + 1.0f);
  let x_2499 : f32 = u_xlat76;
  u_xlat76 = max(x_2499, 0.0f);
  let x_2501 : f32 = u_xlat76;
  u_xlat76 = log2(x_2501);
  let x_2503 : f32 = u_xlat76;
  let x_2505 : f32 = x_48.unity_SpecCube0_HDR.y;
  u_xlat76 = (x_2503 * x_2505);
  let x_2507 : f32 = u_xlat76;
  u_xlat76 = exp2(x_2507);
  let x_2509 : f32 = u_xlat76;
  let x_2511 : f32 = x_48.unity_SpecCube0_HDR.x;
  u_xlat76 = (x_2509 * x_2511);
  let x_2513 : vec4<f32> = u_xlat7;
  let x_2515 : f32 = u_xlat76;
  let x_2517 : vec3<f32> = (vec3<f32>(x_2513.x, x_2513.y, x_2513.z) * vec3<f32>(x_2515, x_2515, x_2515));
  let x_2518 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2517.x, x_2517.y, x_2517.z, x_2518.w);
  let x_2520 : f32 = u_xlat77;
  let x_2522 : f32 = u_xlat77;
  let x_2526 : vec2<f32> = ((vec2<f32>(x_2520, x_2520) * vec2<f32>(x_2522, x_2522)) + vec2<f32>(-1.0f, 1.0f));
  let x_2527 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2526.x, x_2526.y, x_2527.z, x_2527.w);
  let x_2530 : f32 = u_xlat8.y;
  u_xlat76 = (1.0f / x_2530);
  let x_2532 : vec3<f32> = u_xlat2;
  let x_2534 : vec4<f32> = u_xlat0;
  u_xlat33 = (-(x_2532) + vec3<f32>(x_2534.x, x_2534.x, x_2534.x));
  let x_2537 : f32 = u_xlat75;
  let x_2539 : vec3<f32> = u_xlat33;
  let x_2541 : vec3<f32> = u_xlat2;
  u_xlat33 = ((vec3<f32>(x_2537, x_2537, x_2537) * x_2539) + x_2541);
  let x_2543 : f32 = u_xlat76;
  let x_2545 : vec3<f32> = u_xlat33;
  u_xlat33 = (vec3<f32>(x_2543, x_2543, x_2543) * x_2545);
  let x_2547 : vec4<f32> = u_xlat7;
  let x_2549 : vec3<f32> = u_xlat33;
  let x_2550 : vec3<f32> = (vec3<f32>(x_2547.x, x_2547.y, x_2547.z) * x_2549);
  let x_2551 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2550.x, x_2550.y, x_2550.z, x_2551.w);
  let x_2553 : vec4<f32> = u_xlat1;
  let x_2555 : vec3<f32> = u_xlat3;
  let x_2557 : vec4<f32> = u_xlat7;
  let x_2559 : vec3<f32> = ((vec3<f32>(x_2553.x, x_2553.y, x_2553.z) * x_2555) + vec3<f32>(x_2557.x, x_2557.y, x_2557.z));
  let x_2560 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2559.x, x_2559.y, x_2559.z, x_2560.w);
  let x_2563 : f32 = u_xlat25.x;
  let x_2565 : f32 = x_48.unity_LightData.z;
  u_xlat0.x = (x_2563 * x_2565);
  let x_2568 : vec4<f32> = u_xlat4;
  let x_2571 : vec4<f32> = x_135.x_MainLightPosition;
  u_xlat25.x = dot(vec3<f32>(x_2568.x, x_2568.y, x_2568.z), vec3<f32>(x_2571.x, x_2571.y, x_2571.z));
  let x_2576 : f32 = u_xlat25.x;
  u_xlat25.x = clamp(x_2576, 0.0f, 1.0f);
  let x_2580 : f32 = u_xlat25.x;
  let x_2582 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2580 * x_2582);
  let x_2585 : vec4<f32> = u_xlat0;
  let x_2587 : vec4<f32> = u_xlat6;
  let x_2589 : vec3<f32> = (vec3<f32>(x_2585.x, x_2585.x, x_2585.x) * vec3<f32>(x_2587.x, x_2587.y, x_2587.z));
  let x_2590 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2589.x, x_2589.y, x_2590.z, x_2589.z);
  let x_2592 : vec3<f32> = u_xlat5;
  let x_2594 : vec4<f32> = x_135.x_MainLightPosition;
  let x_2596 : vec3<f32> = (x_2592 + vec3<f32>(x_2594.x, x_2594.y, x_2594.z));
  let x_2597 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2596.x, x_2596.y, x_2596.z, x_2597.w);
  let x_2599 : vec4<f32> = u_xlat6;
  let x_2601 : vec4<f32> = u_xlat6;
  u_xlat76 = dot(vec3<f32>(x_2599.x, x_2599.y, x_2599.z), vec3<f32>(x_2601.x, x_2601.y, x_2601.z));
  let x_2604 : f32 = u_xlat76;
  u_xlat76 = max(x_2604, 1.17549435e-38f);
  let x_2606 : f32 = u_xlat76;
  u_xlat76 = inverseSqrt(x_2606);
  let x_2608 : f32 = u_xlat76;
  let x_2610 : vec4<f32> = u_xlat6;
  let x_2612 : vec3<f32> = (vec3<f32>(x_2608, x_2608, x_2608) * vec3<f32>(x_2610.x, x_2610.y, x_2610.z));
  let x_2613 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2612.x, x_2612.y, x_2612.z, x_2613.w);
  let x_2615 : vec4<f32> = u_xlat4;
  let x_2617 : vec4<f32> = u_xlat6;
  u_xlat76 = dot(vec3<f32>(x_2615.x, x_2615.y, x_2615.z), vec3<f32>(x_2617.x, x_2617.y, x_2617.z));
  let x_2620 : f32 = u_xlat76;
  u_xlat76 = clamp(x_2620, 0.0f, 1.0f);
  let x_2623 : vec4<f32> = x_135.x_MainLightPosition;
  let x_2625 : vec4<f32> = u_xlat6;
  u_xlat77 = dot(vec3<f32>(x_2623.x, x_2623.y, x_2623.z), vec3<f32>(x_2625.x, x_2625.y, x_2625.z));
  let x_2628 : f32 = u_xlat77;
  u_xlat77 = clamp(x_2628, 0.0f, 1.0f);
  let x_2630 : f32 = u_xlat76;
  let x_2631 : f32 = u_xlat76;
  u_xlat76 = (x_2630 * x_2631);
  let x_2633 : f32 = u_xlat76;
  let x_2635 : f32 = u_xlat8.x;
  u_xlat76 = ((x_2633 * x_2635) + 1.00001001358032226562f);
  let x_2639 : f32 = u_xlat77;
  let x_2640 : f32 = u_xlat77;
  u_xlat77 = (x_2639 * x_2640);
  let x_2642 : f32 = u_xlat76;
  let x_2643 : f32 = u_xlat76;
  u_xlat76 = (x_2642 * x_2643);
  let x_2645 : f32 = u_xlat77;
  u_xlat77 = max(x_2645, 0.10000000149011611938f);
  let x_2647 : f32 = u_xlat76;
  let x_2648 : f32 = u_xlat77;
  u_xlat76 = (x_2647 * x_2648);
  let x_2650 : f32 = u_xlat79;
  let x_2651 : f32 = u_xlat76;
  u_xlat76 = (x_2650 * x_2651);
  let x_2653 : f32 = u_xlat78;
  let x_2654 : f32 = u_xlat76;
  u_xlat76 = (x_2653 / x_2654);
  let x_2656 : vec3<f32> = u_xlat2;
  let x_2657 : f32 = u_xlat76;
  let x_2660 : vec3<f32> = u_xlat3;
  let x_2661 : vec3<f32> = ((x_2656 * vec3<f32>(x_2657, x_2657, x_2657)) + x_2660);
  let x_2662 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2661.x, x_2661.y, x_2661.z, x_2662.w);
  let x_2664 : vec4<f32> = u_xlat0;
  let x_2666 : vec4<f32> = u_xlat6;
  let x_2668 : vec3<f32> = (vec3<f32>(x_2664.x, x_2664.y, x_2664.w) * vec3<f32>(x_2666.x, x_2666.y, x_2666.z));
  let x_2669 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2668.x, x_2668.y, x_2669.z, x_2668.z);
  let x_2672 : f32 = x_135.x_AdditionalLightsCount.x;
  let x_2674 : f32 = x_48.unity_LightData.y;
  u_xlat76 = min(x_2672, x_2674);
  let x_2677 : f32 = u_xlat76;
  u_xlatu76 = bitcast<u32>(i32(x_2677));
  let x_2680 : f32 = u_xlat50;
  let x_2683 : f32 = x_682.x_AdditionalShadowFadeParams.x;
  let x_2686 : f32 = x_682.x_AdditionalShadowFadeParams.y;
  u_xlat50 = ((x_2680 * x_2683) + x_2686);
  let x_2688 : f32 = u_xlat50;
  u_xlat50 = clamp(x_2688, 0.0f, 1.0f);
  let x_2691 : f32 = x_2318.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2693 : f32 = x_2318.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2695 : f32 = x_2318.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2697 : f32 = x_2318.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2698 : vec4<f32> = vec4<f32>(x_2691, x_2693, x_2695, x_2697);
  let x_2704 : vec4<bool> = (vec4<f32>(x_2698.x, x_2698.y, x_2698.z, x_2698.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  let x_2705 : vec2<bool> = vec2<bool>(x_2704.x, x_2704.y);
  let x_2706 : vec4<bool> = u_xlatb6;
  u_xlatb6 = vec4<bool>(x_2705.x, x_2705.y, x_2706.z, x_2706.w);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2718 : u32 = u_xlatu_loop_1;
    let x_2719 : u32 = u_xlatu76;
    if ((x_2718 < x_2719)) {
    } else {
      break;
    }
    let x_2722 : u32 = u_xlatu_loop_1;
    u_xlatu56 = (x_2722 >> 2u);
    let x_2725 : u32 = u_xlatu_loop_1;
    u_xlati81 = bitcast<i32>((x_2725 & 3u));
    let x_2728 : u32 = u_xlatu56;
    let x_2731 : vec4<f32> = x_48.unity_LightIndices[bitcast<i32>(x_2728)];
    let x_2741 : i32 = u_xlati81;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2746 : vec4<u32> = indexable[x_2741];
    u_xlat56.x = dot(x_2731, bitcast<vec4<f32>>(x_2746));
    let x_2752 : f32 = u_xlat56.x;
    u_xlati56 = i32(x_2752);
    let x_2754 : vec3<f32> = vs_INTERP7;
    let x_2765 : i32 = u_xlati56;
    let x_2767 : vec4<f32> = x_2764.x_AdditionalLightsPosition[x_2765];
    let x_2770 : i32 = u_xlati56;
    let x_2772 : vec4<f32> = x_2764.x_AdditionalLightsPosition[x_2770];
    u_xlat33 = ((-(x_2754) * vec3<f32>(x_2767.w, x_2767.w, x_2767.w)) + vec3<f32>(x_2772.x, x_2772.y, x_2772.z));
    let x_2775 : vec3<f32> = u_xlat33;
    let x_2776 : vec3<f32> = u_xlat33;
    u_xlat81 = dot(x_2775, x_2776);
    let x_2778 : f32 = u_xlat81;
    u_xlat81 = max(x_2778, 0.00006103515625f);
    let x_2781 : f32 = u_xlat81;
    u_xlat82 = inverseSqrt(x_2781);
    let x_2783 : f32 = u_xlat82;
    let x_2785 : vec3<f32> = u_xlat33;
    let x_2786 : vec3<f32> = (vec3<f32>(x_2783, x_2783, x_2783) * x_2785);
    let x_2787 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2786.x, x_2786.y, x_2786.z, x_2787.w);
    let x_2790 : f32 = u_xlat81;
    u_xlat84 = (1.0f / x_2790);
    let x_2792 : f32 = u_xlat81;
    let x_2793 : i32 = u_xlati56;
    let x_2795 : f32 = x_2764.x_AdditionalLightsAttenuation[x_2793].x;
    u_xlat81 = (x_2792 * x_2795);
    let x_2797 : f32 = u_xlat81;
    let x_2799 : f32 = u_xlat81;
    u_xlat81 = ((-(x_2797) * x_2799) + 1.0f);
    let x_2802 : f32 = u_xlat81;
    u_xlat81 = max(x_2802, 0.0f);
    let x_2804 : f32 = u_xlat81;
    let x_2805 : f32 = u_xlat81;
    u_xlat81 = (x_2804 * x_2805);
    let x_2807 : f32 = u_xlat81;
    let x_2808 : f32 = u_xlat84;
    u_xlat81 = (x_2807 * x_2808);
    let x_2810 : i32 = u_xlati56;
    let x_2812 : vec4<f32> = x_2764.x_AdditionalLightsSpotDir[x_2810];
    let x_2814 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2812.x, x_2812.y, x_2812.z), vec3<f32>(x_2814.x, x_2814.y, x_2814.z));
    let x_2817 : f32 = u_xlat84;
    let x_2818 : i32 = u_xlati56;
    let x_2820 : f32 = x_2764.x_AdditionalLightsAttenuation[x_2818].z;
    let x_2822 : i32 = u_xlati56;
    let x_2824 : f32 = x_2764.x_AdditionalLightsAttenuation[x_2822].w;
    u_xlat84 = ((x_2817 * x_2820) + x_2824);
    let x_2826 : f32 = u_xlat84;
    u_xlat84 = clamp(x_2826, 0.0f, 1.0f);
    let x_2828 : f32 = u_xlat84;
    let x_2829 : f32 = u_xlat84;
    u_xlat84 = (x_2828 * x_2829);
    let x_2831 : f32 = u_xlat81;
    let x_2832 : f32 = u_xlat84;
    u_xlat81 = (x_2831 * x_2832);
    let x_2836 : i32 = u_xlati56;
    let x_2838 : f32 = x_682.x_AdditionalShadowParams[x_2836].w;
    u_xlati84 = i32(x_2838);
    let x_2843 : i32 = u_xlati84;
    u_xlatb10.x = (x_2843 >= 0i);
    let x_2847 : bool = u_xlatb10.x;
    if (x_2847) {
      let x_2851 : i32 = u_xlati56;
      let x_2853 : f32 = x_682.x_AdditionalShadowParams[x_2851].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2853, x_2853, x_2853, x_2853))));
      let x_2859 : bool = u_xlatb10.x;
      if (x_2859) {
        let x_2862 : vec4<f32> = u_xlat9;
        let x_2865 : vec4<f32> = u_xlat9;
        let x_2868 : vec4<bool> = (abs(vec4<f32>(x_2862.z, x_2862.z, x_2862.y, x_2862.z)) >= abs(vec4<f32>(x_2865.x, x_2865.y, x_2865.x, x_2865.x)));
        u_xlatb10 = vec3<bool>(x_2868.x, x_2868.y, x_2868.z);
        let x_2871 : bool = u_xlatb10.y;
        let x_2873 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_2871 & x_2873);
        let x_2877 : vec4<f32> = u_xlat9;
        let x_2880 : vec4<bool> = (-(vec4<f32>(x_2877.z, x_2877.y, x_2877.x, x_2877.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_2880.x, x_2880.y, x_2880.z);
        let x_2884 : bool = u_xlatb11.x;
        u_xlat35.x = select(4.0f, 5.0f, x_2884);
        let x_2889 : bool = u_xlatb11.y;
        u_xlat35.z = select(2.0f, 3.0f, x_2889);
        let x_2893 : bool = u_xlatb11.z;
        u_xlat11.x = select(0.0f, 1.0f, x_2893);
        let x_2897 : bool = u_xlatb10.z;
        if (x_2897) {
          let x_2902 : f32 = u_xlat35.z;
          x_2898 = x_2902;
        } else {
          let x_2905 : f32 = u_xlat11.x;
          x_2898 = x_2905;
        }
        let x_2906 : f32 = x_2898;
        u_xlat60.x = x_2906;
        let x_2909 : bool = u_xlatb10.x;
        if (x_2909) {
          let x_2914 : f32 = u_xlat35.x;
          x_2910 = x_2914;
        } else {
          let x_2917 : f32 = u_xlat60.x;
          x_2910 = x_2917;
        }
        let x_2918 : f32 = x_2910;
        u_xlat10.x = x_2918;
        let x_2920 : i32 = u_xlati56;
        let x_2922 : f32 = x_682.x_AdditionalShadowParams[x_2920].w;
        u_xlat35.x = trunc(x_2922);
        let x_2926 : f32 = u_xlat10.x;
        let x_2928 : f32 = u_xlat35.x;
        u_xlat10.x = (x_2926 + x_2928);
        let x_2932 : f32 = u_xlat10.x;
        u_xlati84 = i32(x_2932);
      }
      let x_2934 : i32 = u_xlati84;
      u_xlati84 = (x_2934 << bitcast<u32>(2i));
      let x_2936 : vec3<f32> = vs_INTERP7;
      let x_2939 : i32 = u_xlati84;
      let x_2942 : i32 = u_xlati84;
      let x_2946 : vec4<f32> = x_682.x_AdditionalLightsWorldToShadow[((x_2939 + 1i) / 4i)][((x_2942 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_2936.y, x_2936.y, x_2936.y, x_2936.y) * x_2946);
      let x_2948 : i32 = u_xlati84;
      let x_2950 : i32 = u_xlati84;
      let x_2953 : vec4<f32> = x_682.x_AdditionalLightsWorldToShadow[(x_2948 / 4i)][(x_2950 % 4i)];
      let x_2954 : vec3<f32> = vs_INTERP7;
      let x_2957 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2953 * vec4<f32>(x_2954.x, x_2954.x, x_2954.x, x_2954.x)) + x_2957);
      let x_2959 : i32 = u_xlati84;
      let x_2962 : i32 = u_xlati84;
      let x_2966 : vec4<f32> = x_682.x_AdditionalLightsWorldToShadow[((x_2959 + 2i) / 4i)][((x_2962 + 2i) % 4i)];
      let x_2967 : vec3<f32> = vs_INTERP7;
      let x_2970 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2966 * vec4<f32>(x_2967.z, x_2967.z, x_2967.z, x_2967.z)) + x_2970);
      let x_2972 : vec4<f32> = u_xlat10;
      let x_2973 : i32 = u_xlati84;
      let x_2976 : i32 = u_xlati84;
      let x_2980 : vec4<f32> = x_682.x_AdditionalLightsWorldToShadow[((x_2973 + 3i) / 4i)][((x_2976 + 3i) % 4i)];
      u_xlat10 = (x_2972 + x_2980);
      let x_2982 : vec4<f32> = u_xlat10;
      let x_2984 : vec4<f32> = u_xlat10;
      let x_2986 : vec3<f32> = (vec3<f32>(x_2982.x, x_2982.y, x_2982.z) / vec3<f32>(x_2984.w, x_2984.w, x_2984.w));
      let x_2987 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2986.x, x_2986.y, x_2986.z, x_2987.w);
      let x_2990 : i32 = u_xlati56;
      let x_2992 : f32 = x_682.x_AdditionalShadowParams[x_2990].y;
      u_xlatb84 = (0.0f < x_2992);
      let x_2994 : bool = u_xlatb84;
      if (x_2994) {
        let x_2997 : i32 = u_xlati56;
        let x_2999 : f32 = x_682.x_AdditionalShadowParams[x_2997].y;
        u_xlatb84 = (1.0f == x_2999);
        let x_3001 : bool = u_xlatb84;
        if (x_3001) {
          let x_3004 : vec4<f32> = u_xlat10;
          let x_3008 : vec4<f32> = x_682.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_3004.x, x_3004.y, x_3004.x, x_3004.y) + x_3008);
          let x_3011 : vec4<f32> = u_xlat11;
          let x_3012 : vec2<f32> = vec2<f32>(x_3011.x, x_3011.y);
          let x_3014 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_3012.x, x_3012.y, x_3014);
          let x_3022 : vec3<f32> = txVec30;
          let x_3024 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3022.xy, x_3022.z);
          u_xlat12.x = x_3024;
          let x_3027 : vec4<f32> = u_xlat11;
          let x_3028 : vec2<f32> = vec2<f32>(x_3027.z, x_3027.w);
          let x_3030 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_3028.x, x_3028.y, x_3030);
          let x_3037 : vec3<f32> = txVec31;
          let x_3039 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3037.xy, x_3037.z);
          u_xlat12.y = x_3039;
          let x_3041 : vec4<f32> = u_xlat10;
          let x_3045 : vec4<f32> = x_682.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_3041.x, x_3041.y, x_3041.x, x_3041.y) + x_3045);
          let x_3048 : vec4<f32> = u_xlat11;
          let x_3049 : vec2<f32> = vec2<f32>(x_3048.x, x_3048.y);
          let x_3051 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_3049.x, x_3049.y, x_3051);
          let x_3058 : vec3<f32> = txVec32;
          let x_3060 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3058.xy, x_3058.z);
          u_xlat12.z = x_3060;
          let x_3063 : vec4<f32> = u_xlat11;
          let x_3064 : vec2<f32> = vec2<f32>(x_3063.z, x_3063.w);
          let x_3066 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_3064.x, x_3064.y, x_3066);
          let x_3073 : vec3<f32> = txVec33;
          let x_3075 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3073.xy, x_3073.z);
          u_xlat12.w = x_3075;
          let x_3077 : vec4<f32> = u_xlat12;
          u_xlat84 = dot(x_3077, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_3081 : i32 = u_xlati56;
          let x_3083 : f32 = x_682.x_AdditionalShadowParams[x_3081].y;
          u_xlatb85 = (2.0f == x_3083);
          let x_3085 : bool = u_xlatb85;
          if (x_3085) {
            let x_3088 : vec4<f32> = u_xlat10;
            let x_3092 : vec4<f32> = x_682.x_AdditionalShadowmapSize;
            let x_3095 : vec2<f32> = ((vec2<f32>(x_3088.x, x_3088.y) * vec2<f32>(x_3092.z, x_3092.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3096 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3095.x, x_3095.y, x_3096.z, x_3096.w);
            let x_3098 : vec4<f32> = u_xlat11;
            let x_3100 : vec2<f32> = floor(vec2<f32>(x_3098.x, x_3098.y));
            let x_3101 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3100.x, x_3100.y, x_3101.z, x_3101.w);
            let x_3104 : vec4<f32> = u_xlat10;
            let x_3107 : vec4<f32> = x_682.x_AdditionalShadowmapSize;
            let x_3110 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3104.x, x_3104.y) * vec2<f32>(x_3107.z, x_3107.w)) + -(vec2<f32>(x_3110.x, x_3110.y)));
            let x_3114 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3114.x, x_3114.x, x_3114.y, x_3114.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3117 : vec4<f32> = u_xlat12;
            let x_3119 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3117.x, x_3117.x, x_3117.z, x_3117.z) * vec4<f32>(x_3119.x, x_3119.x, x_3119.z, x_3119.z));
            let x_3122 : vec4<f32> = u_xlat13;
            let x_3124 : vec2<f32> = (vec2<f32>(x_3122.y, x_3122.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_3125 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3124.x, x_3125.y, x_3124.y, x_3125.w);
            let x_3127 : vec4<f32> = u_xlat13;
            let x_3130 : vec2<f32> = u_xlat61;
            let x_3132 : vec2<f32> = ((vec2<f32>(x_3127.x, x_3127.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3130));
            let x_3133 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3132.x, x_3132.y, x_3133.z, x_3133.w);
            let x_3135 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_3135) + vec2<f32>(1.0f, 1.0f));
            let x_3138 : vec2<f32> = u_xlat61;
            let x_3139 : vec2<f32> = min(x_3138, vec2<f32>(0.0f, 0.0f));
            let x_3140 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3139.x, x_3139.y, x_3140.z, x_3140.w);
            let x_3142 : vec4<f32> = u_xlat14;
            let x_3145 : vec4<f32> = u_xlat14;
            let x_3148 : vec2<f32> = u_xlat63;
            let x_3149 : vec2<f32> = ((-(vec2<f32>(x_3142.x, x_3142.y)) * vec2<f32>(x_3145.x, x_3145.y)) + x_3148);
            let x_3150 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3149.x, x_3149.y, x_3150.z, x_3150.w);
            let x_3152 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_3152, vec2<f32>(0.0f, 0.0f));
            let x_3154 : vec2<f32> = u_xlat61;
            let x_3156 : vec2<f32> = u_xlat61;
            let x_3158 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_3154) * x_3156) + vec2<f32>(x_3158.y, x_3158.w));
            let x_3161 : vec4<f32> = u_xlat14;
            let x_3163 : vec2<f32> = (vec2<f32>(x_3161.x, x_3161.y) + vec2<f32>(1.0f, 1.0f));
            let x_3164 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3163.x, x_3163.y, x_3164.z, x_3164.w);
            let x_3166 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_3166 + vec2<f32>(1.0f, 1.0f));
            let x_3168 : vec4<f32> = u_xlat13;
            let x_3170 : vec2<f32> = (vec2<f32>(x_3168.x, x_3168.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3171 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3170.x, x_3170.y, x_3171.z, x_3171.w);
            let x_3173 : vec2<f32> = u_xlat63;
            let x_3174 : vec2<f32> = (x_3173 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3175 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3174.x, x_3174.y, x_3175.z, x_3175.w);
            let x_3177 : vec4<f32> = u_xlat14;
            let x_3179 : vec2<f32> = (vec2<f32>(x_3177.x, x_3177.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3180 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3179.x, x_3179.y, x_3180.z, x_3180.w);
            let x_3182 : vec2<f32> = u_xlat61;
            let x_3183 : vec2<f32> = (x_3182 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3184 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3183.x, x_3183.y, x_3184.z, x_3184.w);
            let x_3186 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_3186.y, x_3186.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3190 : f32 = u_xlat14.x;
            u_xlat15.z = x_3190;
            let x_3193 : f32 = u_xlat61.x;
            u_xlat15.w = x_3193;
            let x_3196 : f32 = u_xlat16.x;
            u_xlat13.z = x_3196;
            let x_3199 : f32 = u_xlat12.x;
            u_xlat13.w = x_3199;
            let x_3201 : vec4<f32> = u_xlat13;
            let x_3203 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_3201.z, x_3201.w, x_3201.x, x_3201.z) + vec4<f32>(x_3203.z, x_3203.w, x_3203.x, x_3203.z));
            let x_3207 : f32 = u_xlat15.y;
            u_xlat14.z = x_3207;
            let x_3210 : f32 = u_xlat61.y;
            u_xlat14.w = x_3210;
            let x_3213 : f32 = u_xlat13.y;
            u_xlat16.z = x_3213;
            let x_3216 : f32 = u_xlat12.z;
            u_xlat16.w = x_3216;
            let x_3218 : vec4<f32> = u_xlat14;
            let x_3220 : vec4<f32> = u_xlat16;
            let x_3222 : vec3<f32> = (vec3<f32>(x_3218.z, x_3218.y, x_3218.w) + vec3<f32>(x_3220.z, x_3220.y, x_3220.w));
            let x_3223 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3222.x, x_3222.y, x_3222.z, x_3223.w);
            let x_3225 : vec4<f32> = u_xlat13;
            let x_3227 : vec4<f32> = u_xlat17;
            let x_3229 : vec3<f32> = (vec3<f32>(x_3225.x, x_3225.z, x_3225.w) / vec3<f32>(x_3227.z, x_3227.w, x_3227.y));
            let x_3230 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3229.x, x_3229.y, x_3229.z, x_3230.w);
            let x_3232 : vec4<f32> = u_xlat13;
            let x_3234 : vec3<f32> = (vec3<f32>(x_3232.x, x_3232.y, x_3232.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3235 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3234.x, x_3234.y, x_3234.z, x_3235.w);
            let x_3237 : vec4<f32> = u_xlat16;
            let x_3239 : vec4<f32> = u_xlat12;
            let x_3241 : vec3<f32> = (vec3<f32>(x_3237.z, x_3237.y, x_3237.w) / vec3<f32>(x_3239.x, x_3239.y, x_3239.z));
            let x_3242 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3241.x, x_3241.y, x_3241.z, x_3242.w);
            let x_3244 : vec4<f32> = u_xlat14;
            let x_3246 : vec3<f32> = (vec3<f32>(x_3244.x, x_3244.y, x_3244.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3247 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3246.x, x_3246.y, x_3246.z, x_3247.w);
            let x_3249 : vec4<f32> = u_xlat13;
            let x_3252 : vec4<f32> = x_682.x_AdditionalShadowmapSize;
            let x_3254 : vec3<f32> = (vec3<f32>(x_3249.y, x_3249.x, x_3249.z) * vec3<f32>(x_3252.x, x_3252.x, x_3252.x));
            let x_3255 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3254.x, x_3254.y, x_3254.z, x_3255.w);
            let x_3257 : vec4<f32> = u_xlat14;
            let x_3260 : vec4<f32> = x_682.x_AdditionalShadowmapSize;
            let x_3262 : vec3<f32> = (vec3<f32>(x_3257.x, x_3257.y, x_3257.z) * vec3<f32>(x_3260.y, x_3260.y, x_3260.y));
            let x_3263 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3262.x, x_3262.y, x_3262.z, x_3263.w);
            let x_3266 : f32 = u_xlat14.x;
            u_xlat13.w = x_3266;
            let x_3268 : vec4<f32> = u_xlat11;
            let x_3271 : vec4<f32> = x_682.x_AdditionalShadowmapSize;
            let x_3274 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_3268.x, x_3268.y, x_3268.x, x_3268.y) * vec4<f32>(x_3271.x, x_3271.y, x_3271.x, x_3271.y)) + vec4<f32>(x_3274.y, x_3274.w, x_3274.x, x_3274.w));
            let x_3277 : vec4<f32> = u_xlat11;
            let x_3280 : vec4<f32> = x_682.x_AdditionalShadowmapSize;
            let x_3283 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_3277.x, x_3277.y) * vec2<f32>(x_3280.x, x_3280.y)) + vec2<f32>(x_3283.z, x_3283.w));
            let x_3287 : f32 = u_xlat13.y;
            u_xlat14.w = x_3287;
            let x_3289 : vec4<f32> = u_xlat14;
            let x_3290 : vec2<f32> = vec2<f32>(x_3289.y, x_3289.z);
            let x_3291 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3291.x, x_3290.x, x_3291.z, x_3290.y);
            let x_3293 : vec4<f32> = u_xlat11;
            let x_3296 : vec4<f32> = x_682.x_AdditionalShadowmapSize;
            let x_3299 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_3293.x, x_3293.y, x_3293.x, x_3293.y) * vec4<f32>(x_3296.x, x_3296.y, x_3296.x, x_3296.y)) + vec4<f32>(x_3299.x, x_3299.y, x_3299.z, x_3299.y));
            let x_3302 : vec4<f32> = u_xlat11;
            let x_3305 : vec4<f32> = x_682.x_AdditionalShadowmapSize;
            let x_3308 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3302.x, x_3302.y, x_3302.x, x_3302.y) * vec4<f32>(x_3305.x, x_3305.y, x_3305.x, x_3305.y)) + vec4<f32>(x_3308.w, x_3308.y, x_3308.w, x_3308.z));
            let x_3311 : vec4<f32> = u_xlat11;
            let x_3314 : vec4<f32> = x_682.x_AdditionalShadowmapSize;
            let x_3317 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_3311.x, x_3311.y, x_3311.x, x_3311.y) * vec4<f32>(x_3314.x, x_3314.y, x_3314.x, x_3314.y)) + vec4<f32>(x_3317.x, x_3317.w, x_3317.z, x_3317.w));
            let x_3320 : vec4<f32> = u_xlat12;
            let x_3322 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_3320.x, x_3320.x, x_3320.x, x_3320.y) * vec4<f32>(x_3322.z, x_3322.w, x_3322.y, x_3322.z));
            let x_3325 : vec4<f32> = u_xlat12;
            let x_3327 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_3325.y, x_3325.y, x_3325.z, x_3325.z) * x_3327);
            let x_3331 : f32 = u_xlat12.z;
            let x_3333 : f32 = u_xlat17.y;
            u_xlat85 = (x_3331 * x_3333);
            let x_3336 : vec4<f32> = u_xlat15;
            let x_3337 : vec2<f32> = vec2<f32>(x_3336.x, x_3336.y);
            let x_3339 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_3337.x, x_3337.y, x_3339);
            let x_3346 : vec3<f32> = txVec34;
            let x_3348 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3346.xy, x_3346.z);
            u_xlat11.x = x_3348;
            let x_3351 : vec4<f32> = u_xlat15;
            let x_3352 : vec2<f32> = vec2<f32>(x_3351.z, x_3351.w);
            let x_3354 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_3352.x, x_3352.y, x_3354);
            let x_3362 : vec3<f32> = txVec35;
            let x_3364 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3362.xy, x_3362.z);
            u_xlat36 = x_3364;
            let x_3365 : f32 = u_xlat36;
            let x_3367 : f32 = u_xlat18.y;
            u_xlat36 = (x_3365 * x_3367);
            let x_3370 : f32 = u_xlat18.x;
            let x_3372 : f32 = u_xlat11.x;
            let x_3374 : f32 = u_xlat36;
            u_xlat11.x = ((x_3370 * x_3372) + x_3374);
            let x_3378 : vec2<f32> = u_xlat61;
            let x_3380 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_3378.x, x_3378.y, x_3380);
            let x_3387 : vec3<f32> = txVec36;
            let x_3389 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3387.xy, x_3387.z);
            u_xlat36 = x_3389;
            let x_3391 : f32 = u_xlat18.z;
            let x_3392 : f32 = u_xlat36;
            let x_3395 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3391 * x_3392) + x_3395);
            let x_3399 : vec4<f32> = u_xlat14;
            let x_3400 : vec2<f32> = vec2<f32>(x_3399.x, x_3399.y);
            let x_3402 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_3400.x, x_3400.y, x_3402);
            let x_3409 : vec3<f32> = txVec37;
            let x_3411 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3409.xy, x_3409.z);
            u_xlat36 = x_3411;
            let x_3413 : f32 = u_xlat18.w;
            let x_3414 : f32 = u_xlat36;
            let x_3417 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3413 * x_3414) + x_3417);
            let x_3421 : vec4<f32> = u_xlat16;
            let x_3422 : vec2<f32> = vec2<f32>(x_3421.x, x_3421.y);
            let x_3424 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_3422.x, x_3422.y, x_3424);
            let x_3431 : vec3<f32> = txVec38;
            let x_3433 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3431.xy, x_3431.z);
            u_xlat36 = x_3433;
            let x_3435 : f32 = u_xlat19.x;
            let x_3436 : f32 = u_xlat36;
            let x_3439 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3435 * x_3436) + x_3439);
            let x_3443 : vec4<f32> = u_xlat16;
            let x_3444 : vec2<f32> = vec2<f32>(x_3443.z, x_3443.w);
            let x_3446 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_3444.x, x_3444.y, x_3446);
            let x_3453 : vec3<f32> = txVec39;
            let x_3455 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3453.xy, x_3453.z);
            u_xlat36 = x_3455;
            let x_3457 : f32 = u_xlat19.y;
            let x_3458 : f32 = u_xlat36;
            let x_3461 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3457 * x_3458) + x_3461);
            let x_3465 : vec4<f32> = u_xlat14;
            let x_3466 : vec2<f32> = vec2<f32>(x_3465.z, x_3465.w);
            let x_3468 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_3466.x, x_3466.y, x_3468);
            let x_3475 : vec3<f32> = txVec40;
            let x_3477 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3475.xy, x_3475.z);
            u_xlat36 = x_3477;
            let x_3479 : f32 = u_xlat19.z;
            let x_3480 : f32 = u_xlat36;
            let x_3483 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3479 * x_3480) + x_3483);
            let x_3487 : vec4<f32> = u_xlat13;
            let x_3488 : vec2<f32> = vec2<f32>(x_3487.x, x_3487.y);
            let x_3490 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_3488.x, x_3488.y, x_3490);
            let x_3497 : vec3<f32> = txVec41;
            let x_3499 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3497.xy, x_3497.z);
            u_xlat36 = x_3499;
            let x_3501 : f32 = u_xlat19.w;
            let x_3502 : f32 = u_xlat36;
            let x_3505 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3501 * x_3502) + x_3505);
            let x_3509 : vec4<f32> = u_xlat13;
            let x_3510 : vec2<f32> = vec2<f32>(x_3509.z, x_3509.w);
            let x_3512 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_3510.x, x_3510.y, x_3512);
            let x_3519 : vec3<f32> = txVec42;
            let x_3521 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3519.xy, x_3519.z);
            u_xlat36 = x_3521;
            let x_3522 : f32 = u_xlat85;
            let x_3523 : f32 = u_xlat36;
            let x_3526 : f32 = u_xlat11.x;
            u_xlat84 = ((x_3522 * x_3523) + x_3526);
          } else {
            let x_3529 : vec4<f32> = u_xlat10;
            let x_3532 : vec4<f32> = x_682.x_AdditionalShadowmapSize;
            let x_3535 : vec2<f32> = ((vec2<f32>(x_3529.x, x_3529.y) * vec2<f32>(x_3532.z, x_3532.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3536 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3535.x, x_3535.y, x_3536.z, x_3536.w);
            let x_3538 : vec4<f32> = u_xlat11;
            let x_3540 : vec2<f32> = floor(vec2<f32>(x_3538.x, x_3538.y));
            let x_3541 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3540.x, x_3540.y, x_3541.z, x_3541.w);
            let x_3543 : vec4<f32> = u_xlat10;
            let x_3546 : vec4<f32> = x_682.x_AdditionalShadowmapSize;
            let x_3549 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3543.x, x_3543.y) * vec2<f32>(x_3546.z, x_3546.w)) + -(vec2<f32>(x_3549.x, x_3549.y)));
            let x_3553 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3553.x, x_3553.x, x_3553.y, x_3553.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3556 : vec4<f32> = u_xlat12;
            let x_3558 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3556.x, x_3556.x, x_3556.z, x_3556.z) * vec4<f32>(x_3558.x, x_3558.x, x_3558.z, x_3558.z));
            let x_3561 : vec4<f32> = u_xlat13;
            let x_3563 : vec2<f32> = (vec2<f32>(x_3561.y, x_3561.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3564 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3564.x, x_3563.x, x_3564.z, x_3563.y);
            let x_3566 : vec4<f32> = u_xlat13;
            let x_3569 : vec2<f32> = u_xlat61;
            let x_3571 : vec2<f32> = ((vec2<f32>(x_3566.x, x_3566.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3569));
            let x_3572 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3571.x, x_3572.y, x_3571.y, x_3572.w);
            let x_3574 : vec2<f32> = u_xlat61;
            let x_3576 : vec2<f32> = (-(x_3574) + vec2<f32>(1.0f, 1.0f));
            let x_3577 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3576.x, x_3576.y, x_3577.z, x_3577.w);
            let x_3579 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_3579, vec2<f32>(0.0f, 0.0f));
            let x_3581 : vec2<f32> = u_xlat63;
            let x_3583 : vec2<f32> = u_xlat63;
            let x_3585 : vec4<f32> = u_xlat13;
            let x_3587 : vec2<f32> = ((-(x_3581) * x_3583) + vec2<f32>(x_3585.x, x_3585.y));
            let x_3588 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3587.x, x_3587.y, x_3588.z, x_3588.w);
            let x_3590 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_3590, vec2<f32>(0.0f, 0.0f));
            let x_3593 : vec2<f32> = u_xlat63;
            let x_3595 : vec2<f32> = u_xlat63;
            let x_3597 : vec4<f32> = u_xlat12;
            let x_3599 : vec2<f32> = ((-(x_3593) * x_3595) + vec2<f32>(x_3597.y, x_3597.w));
            let x_3600 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_3599.x, x_3600.y, x_3599.y);
            let x_3602 : vec4<f32> = u_xlat13;
            let x_3604 : vec2<f32> = (vec2<f32>(x_3602.x, x_3602.y) + vec2<f32>(2.0f, 2.0f));
            let x_3605 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3604.x, x_3604.y, x_3605.z, x_3605.w);
            let x_3607 : vec3<f32> = u_xlat37;
            let x_3609 : vec2<f32> = (vec2<f32>(x_3607.x, x_3607.z) + vec2<f32>(2.0f, 2.0f));
            let x_3610 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3610.x, x_3609.x, x_3610.z, x_3609.y);
            let x_3613 : f32 = u_xlat12.y;
            u_xlat15.z = (x_3613 * 0.08163200318813323975f);
            let x_3616 : vec4<f32> = u_xlat12;
            let x_3619 : vec3<f32> = (vec3<f32>(x_3616.z, x_3616.x, x_3616.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3620 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3619.x, x_3619.y, x_3619.z, x_3620.w);
            let x_3622 : vec4<f32> = u_xlat13;
            let x_3624 : vec2<f32> = (vec2<f32>(x_3622.x, x_3622.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3625 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3624.x, x_3624.y, x_3625.z, x_3625.w);
            let x_3628 : f32 = u_xlat16.y;
            u_xlat15.x = x_3628;
            let x_3630 : vec2<f32> = u_xlat61;
            let x_3633 : vec2<f32> = ((vec2<f32>(x_3630.x, x_3630.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3634 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3634.x, x_3633.x, x_3634.z, x_3633.y);
            let x_3636 : vec2<f32> = u_xlat61;
            let x_3639 : vec2<f32> = ((vec2<f32>(x_3636.x, x_3636.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3640 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3639.x, x_3640.y, x_3639.y, x_3640.w);
            let x_3643 : f32 = u_xlat12.x;
            u_xlat13.y = x_3643;
            let x_3646 : f32 = u_xlat14.y;
            u_xlat13.w = x_3646;
            let x_3648 : vec4<f32> = u_xlat13;
            let x_3649 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3648 + x_3649);
            let x_3651 : vec2<f32> = u_xlat61;
            let x_3654 : vec2<f32> = ((vec2<f32>(x_3651.y, x_3651.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3655 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3655.x, x_3654.x, x_3655.z, x_3654.y);
            let x_3657 : vec2<f32> = u_xlat61;
            let x_3660 : vec2<f32> = ((vec2<f32>(x_3657.y, x_3657.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3661 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3660.x, x_3661.y, x_3660.y, x_3661.w);
            let x_3664 : f32 = u_xlat12.y;
            u_xlat14.y = x_3664;
            let x_3666 : vec4<f32> = u_xlat14;
            let x_3667 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_3666 + x_3667);
            let x_3669 : vec4<f32> = u_xlat13;
            let x_3670 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_3669 / x_3670);
            let x_3672 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3672 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3674 : vec4<f32> = u_xlat14;
            let x_3675 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_3674 / x_3675);
            let x_3677 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3677 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3679 : vec4<f32> = u_xlat13;
            let x_3682 : vec4<f32> = x_682.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3679.w, x_3679.x, x_3679.y, x_3679.z) * vec4<f32>(x_3682.x, x_3682.x, x_3682.x, x_3682.x));
            let x_3685 : vec4<f32> = u_xlat14;
            let x_3688 : vec4<f32> = x_682.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3685.x, x_3685.w, x_3685.y, x_3685.z) * vec4<f32>(x_3688.y, x_3688.y, x_3688.y, x_3688.y));
            let x_3691 : vec4<f32> = u_xlat13;
            let x_3692 : vec3<f32> = vec3<f32>(x_3691.y, x_3691.z, x_3691.w);
            let x_3693 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3692.x, x_3693.y, x_3692.y, x_3692.z);
            let x_3696 : f32 = u_xlat14.x;
            u_xlat16.y = x_3696;
            let x_3698 : vec4<f32> = u_xlat11;
            let x_3701 : vec4<f32> = x_682.x_AdditionalShadowmapSize;
            let x_3704 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3698.x, x_3698.y, x_3698.x, x_3698.y) * vec4<f32>(x_3701.x, x_3701.y, x_3701.x, x_3701.y)) + vec4<f32>(x_3704.x, x_3704.y, x_3704.z, x_3704.y));
            let x_3707 : vec4<f32> = u_xlat11;
            let x_3710 : vec4<f32> = x_682.x_AdditionalShadowmapSize;
            let x_3713 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_3707.x, x_3707.y) * vec2<f32>(x_3710.x, x_3710.y)) + vec2<f32>(x_3713.w, x_3713.y));
            let x_3717 : f32 = u_xlat16.y;
            u_xlat13.y = x_3717;
            let x_3720 : f32 = u_xlat14.z;
            u_xlat16.y = x_3720;
            let x_3722 : vec4<f32> = u_xlat11;
            let x_3725 : vec4<f32> = x_682.x_AdditionalShadowmapSize;
            let x_3728 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3722.x, x_3722.y, x_3722.x, x_3722.y) * vec4<f32>(x_3725.x, x_3725.y, x_3725.x, x_3725.y)) + vec4<f32>(x_3728.x, x_3728.y, x_3728.z, x_3728.y));
            let x_3731 : vec4<f32> = u_xlat11;
            let x_3734 : vec4<f32> = x_682.x_AdditionalShadowmapSize;
            let x_3737 : vec4<f32> = u_xlat16;
            let x_3739 : vec2<f32> = ((vec2<f32>(x_3731.x, x_3731.y) * vec2<f32>(x_3734.x, x_3734.y)) + vec2<f32>(x_3737.w, x_3737.y));
            let x_3740 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3739.x, x_3739.y, x_3740.z, x_3740.w);
            let x_3743 : f32 = u_xlat16.y;
            u_xlat13.z = x_3743;
            let x_3745 : vec4<f32> = u_xlat11;
            let x_3748 : vec4<f32> = x_682.x_AdditionalShadowmapSize;
            let x_3751 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3745.x, x_3745.y, x_3745.x, x_3745.y) * vec4<f32>(x_3748.x, x_3748.y, x_3748.x, x_3748.y)) + vec4<f32>(x_3751.x, x_3751.y, x_3751.x, x_3751.z));
            let x_3755 : f32 = u_xlat14.w;
            u_xlat16.y = x_3755;
            let x_3758 : vec4<f32> = u_xlat11;
            let x_3761 : vec4<f32> = x_682.x_AdditionalShadowmapSize;
            let x_3764 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3758.x, x_3758.y, x_3758.x, x_3758.y) * vec4<f32>(x_3761.x, x_3761.y, x_3761.x, x_3761.y)) + vec4<f32>(x_3764.x, x_3764.y, x_3764.z, x_3764.y));
            let x_3768 : vec4<f32> = u_xlat11;
            let x_3771 : vec4<f32> = x_682.x_AdditionalShadowmapSize;
            let x_3774 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3768.x, x_3768.y) * vec2<f32>(x_3771.x, x_3771.y)) + vec2<f32>(x_3774.w, x_3774.y));
            let x_3778 : f32 = u_xlat16.y;
            u_xlat13.w = x_3778;
            let x_3781 : vec4<f32> = u_xlat11;
            let x_3784 : vec4<f32> = x_682.x_AdditionalShadowmapSize;
            let x_3787 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3781.x, x_3781.y) * vec2<f32>(x_3784.x, x_3784.y)) + vec2<f32>(x_3787.x, x_3787.w));
            let x_3790 : vec4<f32> = u_xlat16;
            let x_3791 : vec3<f32> = vec3<f32>(x_3790.x, x_3790.z, x_3790.w);
            let x_3792 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3791.x, x_3792.y, x_3791.y, x_3791.z);
            let x_3794 : vec4<f32> = u_xlat11;
            let x_3797 : vec4<f32> = x_682.x_AdditionalShadowmapSize;
            let x_3800 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3794.x, x_3794.y, x_3794.x, x_3794.y) * vec4<f32>(x_3797.x, x_3797.y, x_3797.x, x_3797.y)) + vec4<f32>(x_3800.x, x_3800.y, x_3800.z, x_3800.y));
            let x_3804 : vec4<f32> = u_xlat11;
            let x_3807 : vec4<f32> = x_682.x_AdditionalShadowmapSize;
            let x_3810 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3804.x, x_3804.y) * vec2<f32>(x_3807.x, x_3807.y)) + vec2<f32>(x_3810.w, x_3810.y));
            let x_3814 : f32 = u_xlat13.x;
            u_xlat14.x = x_3814;
            let x_3816 : vec4<f32> = u_xlat11;
            let x_3819 : vec4<f32> = x_682.x_AdditionalShadowmapSize;
            let x_3822 : vec4<f32> = u_xlat14;
            let x_3824 : vec2<f32> = ((vec2<f32>(x_3816.x, x_3816.y) * vec2<f32>(x_3819.x, x_3819.y)) + vec2<f32>(x_3822.x, x_3822.y));
            let x_3825 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3824.x, x_3824.y, x_3825.z, x_3825.w);
            let x_3828 : vec4<f32> = u_xlat12;
            let x_3830 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3828.x, x_3828.x, x_3828.x, x_3828.x) * x_3830);
            let x_3833 : vec4<f32> = u_xlat12;
            let x_3835 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3833.y, x_3833.y, x_3833.y, x_3833.y) * x_3835);
            let x_3838 : vec4<f32> = u_xlat12;
            let x_3840 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3838.z, x_3838.z, x_3838.z, x_3838.z) * x_3840);
            let x_3842 : vec4<f32> = u_xlat12;
            let x_3844 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3842.w, x_3842.w, x_3842.w, x_3842.w) * x_3844);
            let x_3847 : vec4<f32> = u_xlat17;
            let x_3848 : vec2<f32> = vec2<f32>(x_3847.x, x_3847.y);
            let x_3850 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3848.x, x_3848.y, x_3850);
            let x_3857 : vec3<f32> = txVec43;
            let x_3859 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3857.xy, x_3857.z);
            u_xlat85 = x_3859;
            let x_3861 : vec4<f32> = u_xlat17;
            let x_3862 : vec2<f32> = vec2<f32>(x_3861.z, x_3861.w);
            let x_3864 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3862.x, x_3862.y, x_3864);
            let x_3871 : vec3<f32> = txVec44;
            let x_3873 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3871.xy, x_3871.z);
            u_xlat13.x = x_3873;
            let x_3876 : f32 = u_xlat13.x;
            let x_3878 : f32 = u_xlat22.y;
            u_xlat13.x = (x_3876 * x_3878);
            let x_3882 : f32 = u_xlat22.x;
            let x_3883 : f32 = u_xlat85;
            let x_3886 : f32 = u_xlat13.x;
            u_xlat85 = ((x_3882 * x_3883) + x_3886);
            let x_3889 : vec2<f32> = u_xlat61;
            let x_3891 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3889.x, x_3889.y, x_3891);
            let x_3898 : vec3<f32> = txVec45;
            let x_3900 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3898.xy, x_3898.z);
            u_xlat61.x = x_3900;
            let x_3903 : f32 = u_xlat22.z;
            let x_3905 : f32 = u_xlat61.x;
            let x_3907 : f32 = u_xlat85;
            u_xlat85 = ((x_3903 * x_3905) + x_3907);
            let x_3910 : vec4<f32> = u_xlat20;
            let x_3911 : vec2<f32> = vec2<f32>(x_3910.x, x_3910.y);
            let x_3913 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3911.x, x_3911.y, x_3913);
            let x_3920 : vec3<f32> = txVec46;
            let x_3922 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3920.xy, x_3920.z);
            u_xlat61.x = x_3922;
            let x_3925 : f32 = u_xlat22.w;
            let x_3927 : f32 = u_xlat61.x;
            let x_3929 : f32 = u_xlat85;
            u_xlat85 = ((x_3925 * x_3927) + x_3929);
            let x_3932 : vec4<f32> = u_xlat18;
            let x_3933 : vec2<f32> = vec2<f32>(x_3932.x, x_3932.y);
            let x_3935 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3933.x, x_3933.y, x_3935);
            let x_3942 : vec3<f32> = txVec47;
            let x_3944 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3942.xy, x_3942.z);
            u_xlat61.x = x_3944;
            let x_3947 : f32 = u_xlat23.x;
            let x_3949 : f32 = u_xlat61.x;
            let x_3951 : f32 = u_xlat85;
            u_xlat85 = ((x_3947 * x_3949) + x_3951);
            let x_3954 : vec4<f32> = u_xlat18;
            let x_3955 : vec2<f32> = vec2<f32>(x_3954.z, x_3954.w);
            let x_3957 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3955.x, x_3955.y, x_3957);
            let x_3964 : vec3<f32> = txVec48;
            let x_3966 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3964.xy, x_3964.z);
            u_xlat61.x = x_3966;
            let x_3969 : f32 = u_xlat23.y;
            let x_3971 : f32 = u_xlat61.x;
            let x_3973 : f32 = u_xlat85;
            u_xlat85 = ((x_3969 * x_3971) + x_3973);
            let x_3976 : vec4<f32> = u_xlat19;
            let x_3977 : vec2<f32> = vec2<f32>(x_3976.x, x_3976.y);
            let x_3979 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3977.x, x_3977.y, x_3979);
            let x_3986 : vec3<f32> = txVec49;
            let x_3988 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3986.xy, x_3986.z);
            u_xlat61.x = x_3988;
            let x_3991 : f32 = u_xlat23.z;
            let x_3993 : f32 = u_xlat61.x;
            let x_3995 : f32 = u_xlat85;
            u_xlat85 = ((x_3991 * x_3993) + x_3995);
            let x_3998 : vec4<f32> = u_xlat20;
            let x_3999 : vec2<f32> = vec2<f32>(x_3998.z, x_3998.w);
            let x_4001 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3999.x, x_3999.y, x_4001);
            let x_4008 : vec3<f32> = txVec50;
            let x_4010 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4008.xy, x_4008.z);
            u_xlat61.x = x_4010;
            let x_4013 : f32 = u_xlat23.w;
            let x_4015 : f32 = u_xlat61.x;
            let x_4017 : f32 = u_xlat85;
            u_xlat85 = ((x_4013 * x_4015) + x_4017);
            let x_4020 : vec4<f32> = u_xlat21;
            let x_4021 : vec2<f32> = vec2<f32>(x_4020.x, x_4020.y);
            let x_4023 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_4021.x, x_4021.y, x_4023);
            let x_4030 : vec3<f32> = txVec51;
            let x_4032 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4030.xy, x_4030.z);
            u_xlat61.x = x_4032;
            let x_4035 : f32 = u_xlat24.x;
            let x_4037 : f32 = u_xlat61.x;
            let x_4039 : f32 = u_xlat85;
            u_xlat85 = ((x_4035 * x_4037) + x_4039);
            let x_4042 : vec4<f32> = u_xlat21;
            let x_4043 : vec2<f32> = vec2<f32>(x_4042.z, x_4042.w);
            let x_4045 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_4043.x, x_4043.y, x_4045);
            let x_4052 : vec3<f32> = txVec52;
            let x_4054 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4052.xy, x_4052.z);
            u_xlat61.x = x_4054;
            let x_4057 : f32 = u_xlat24.y;
            let x_4059 : f32 = u_xlat61.x;
            let x_4061 : f32 = u_xlat85;
            u_xlat85 = ((x_4057 * x_4059) + x_4061);
            let x_4064 : vec2<f32> = u_xlat38;
            let x_4066 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_4064.x, x_4064.y, x_4066);
            let x_4073 : vec3<f32> = txVec53;
            let x_4075 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4073.xy, x_4073.z);
            u_xlat61.x = x_4075;
            let x_4078 : f32 = u_xlat24.z;
            let x_4080 : f32 = u_xlat61.x;
            let x_4082 : f32 = u_xlat85;
            u_xlat85 = ((x_4078 * x_4080) + x_4082);
            let x_4085 : vec2<f32> = u_xlat69;
            let x_4087 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_4085.x, x_4085.y, x_4087);
            let x_4094 : vec3<f32> = txVec54;
            let x_4096 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4094.xy, x_4094.z);
            u_xlat61.x = x_4096;
            let x_4099 : f32 = u_xlat24.w;
            let x_4101 : f32 = u_xlat61.x;
            let x_4103 : f32 = u_xlat85;
            u_xlat85 = ((x_4099 * x_4101) + x_4103);
            let x_4106 : vec4<f32> = u_xlat16;
            let x_4107 : vec2<f32> = vec2<f32>(x_4106.x, x_4106.y);
            let x_4109 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_4107.x, x_4107.y, x_4109);
            let x_4116 : vec3<f32> = txVec55;
            let x_4118 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4116.xy, x_4116.z);
            u_xlat61.x = x_4118;
            let x_4121 : f32 = u_xlat12.x;
            let x_4123 : f32 = u_xlat61.x;
            let x_4125 : f32 = u_xlat85;
            u_xlat85 = ((x_4121 * x_4123) + x_4125);
            let x_4128 : vec4<f32> = u_xlat16;
            let x_4129 : vec2<f32> = vec2<f32>(x_4128.z, x_4128.w);
            let x_4131 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_4129.x, x_4129.y, x_4131);
            let x_4138 : vec3<f32> = txVec56;
            let x_4140 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4138.xy, x_4138.z);
            u_xlat61.x = x_4140;
            let x_4143 : f32 = u_xlat12.y;
            let x_4145 : f32 = u_xlat61.x;
            let x_4147 : f32 = u_xlat85;
            u_xlat85 = ((x_4143 * x_4145) + x_4147);
            let x_4150 : vec2<f32> = u_xlat64;
            let x_4152 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_4150.x, x_4150.y, x_4152);
            let x_4159 : vec3<f32> = txVec57;
            let x_4161 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4159.xy, x_4159.z);
            u_xlat61.x = x_4161;
            let x_4164 : f32 = u_xlat12.z;
            let x_4166 : f32 = u_xlat61.x;
            let x_4168 : f32 = u_xlat85;
            u_xlat85 = ((x_4164 * x_4166) + x_4168);
            let x_4171 : vec4<f32> = u_xlat11;
            let x_4172 : vec2<f32> = vec2<f32>(x_4171.x, x_4171.y);
            let x_4174 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_4172.x, x_4172.y, x_4174);
            let x_4181 : vec3<f32> = txVec58;
            let x_4183 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4181.xy, x_4181.z);
            u_xlat11.x = x_4183;
            let x_4186 : f32 = u_xlat12.w;
            let x_4188 : f32 = u_xlat11.x;
            let x_4190 : f32 = u_xlat85;
            u_xlat84 = ((x_4186 * x_4188) + x_4190);
          }
        }
      } else {
        let x_4194 : vec4<f32> = u_xlat10;
        let x_4195 : vec2<f32> = vec2<f32>(x_4194.x, x_4194.y);
        let x_4197 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_4195.x, x_4195.y, x_4197);
        let x_4204 : vec3<f32> = txVec59;
        let x_4206 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4204.xy, x_4204.z);
        u_xlat84 = x_4206;
      }
      let x_4207 : i32 = u_xlati56;
      let x_4209 : f32 = x_682.x_AdditionalShadowParams[x_4207].x;
      u_xlat10.x = (1.0f + -(x_4209));
      let x_4213 : f32 = u_xlat84;
      let x_4214 : i32 = u_xlati56;
      let x_4216 : f32 = x_682.x_AdditionalShadowParams[x_4214].x;
      let x_4219 : f32 = u_xlat10.x;
      u_xlat84 = ((x_4213 * x_4216) + x_4219);
      let x_4222 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_4222);
      let x_4227 : f32 = u_xlat10.z;
      u_xlatb35 = (x_4227 >= 1.0f);
      let x_4229 : bool = u_xlatb35;
      let x_4231 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_4229 | x_4231);
      let x_4235 : bool = u_xlatb10.x;
      let x_4236 : f32 = u_xlat84;
      u_xlat84 = select(x_4236, 1.0f, x_4235);
    } else {
      u_xlat84 = 1.0f;
    }
    let x_4239 : f32 = u_xlat84;
    u_xlat10.x = (-(x_4239) + 1.0f);
    let x_4243 : f32 = u_xlat50;
    let x_4245 : f32 = u_xlat10.x;
    let x_4247 : f32 = u_xlat84;
    u_xlat84 = ((x_4243 * x_4245) + x_4247);
    let x_4250 : i32 = u_xlati56;
    u_xlati10 = (1i << bitcast<u32>((x_4250 & 31i)));
    let x_4254 : i32 = u_xlati10;
    let x_4257 : f32 = x_2318.x_AdditionalLightsCookieEnableBits;
    u_xlati10 = bitcast<i32>((bitcast<u32>(x_4254) & bitcast<u32>(x_4257)));
    let x_4261 : i32 = u_xlati10;
    if ((x_4261 != 0i)) {
      let x_4265 : i32 = u_xlati56;
      let x_4267 : f32 = x_2318.x_AdditionalLightsLightTypes[x_4265].el;
      u_xlati10 = i32(x_4267);
      let x_4270 : i32 = u_xlati10;
      u_xlati35 = select(1i, 0i, (x_4270 != 0i));
      let x_4274 : i32 = u_xlati56;
      u_xlati60 = (x_4274 << bitcast<u32>(2i));
      let x_4276 : i32 = u_xlati35;
      if ((x_4276 != 0i)) {
        let x_4280 : vec3<f32> = vs_INTERP7;
        let x_4282 : i32 = u_xlati60;
        let x_4285 : i32 = u_xlati60;
        let x_4289 : vec4<f32> = x_2318.x_AdditionalLightsWorldToLights[((x_4282 + 1i) / 4i)][((x_4285 + 1i) % 4i)];
        let x_4291 : vec3<f32> = (vec3<f32>(x_4280.y, x_4280.y, x_4280.y) * vec3<f32>(x_4289.x, x_4289.y, x_4289.w));
        let x_4292 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4291.x, x_4291.y, x_4291.z, x_4292.w);
        let x_4294 : i32 = u_xlati60;
        let x_4296 : i32 = u_xlati60;
        let x_4299 : vec4<f32> = x_2318.x_AdditionalLightsWorldToLights[(x_4294 / 4i)][(x_4296 % 4i)];
        let x_4301 : vec3<f32> = vs_INTERP7;
        let x_4304 : vec4<f32> = u_xlat11;
        let x_4306 : vec3<f32> = ((vec3<f32>(x_4299.x, x_4299.y, x_4299.w) * vec3<f32>(x_4301.x, x_4301.x, x_4301.x)) + vec3<f32>(x_4304.x, x_4304.y, x_4304.z));
        let x_4307 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4306.x, x_4306.y, x_4306.z, x_4307.w);
        let x_4309 : i32 = u_xlati60;
        let x_4312 : i32 = u_xlati60;
        let x_4316 : vec4<f32> = x_2318.x_AdditionalLightsWorldToLights[((x_4309 + 2i) / 4i)][((x_4312 + 2i) % 4i)];
        let x_4318 : vec3<f32> = vs_INTERP7;
        let x_4321 : vec4<f32> = u_xlat11;
        let x_4323 : vec3<f32> = ((vec3<f32>(x_4316.x, x_4316.y, x_4316.w) * vec3<f32>(x_4318.z, x_4318.z, x_4318.z)) + vec3<f32>(x_4321.x, x_4321.y, x_4321.z));
        let x_4324 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4323.x, x_4323.y, x_4323.z, x_4324.w);
        let x_4326 : vec4<f32> = u_xlat11;
        let x_4328 : i32 = u_xlati60;
        let x_4331 : i32 = u_xlati60;
        let x_4335 : vec4<f32> = x_2318.x_AdditionalLightsWorldToLights[((x_4328 + 3i) / 4i)][((x_4331 + 3i) % 4i)];
        let x_4337 : vec3<f32> = (vec3<f32>(x_4326.x, x_4326.y, x_4326.z) + vec3<f32>(x_4335.x, x_4335.y, x_4335.w));
        let x_4338 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4337.x, x_4337.y, x_4337.z, x_4338.w);
        let x_4340 : vec4<f32> = u_xlat11;
        let x_4342 : vec4<f32> = u_xlat11;
        let x_4344 : vec2<f32> = (vec2<f32>(x_4340.x, x_4340.y) / vec2<f32>(x_4342.z, x_4342.z));
        let x_4345 : vec3<f32> = u_xlat35;
        u_xlat35 = vec3<f32>(x_4344.x, x_4345.y, x_4344.y);
        let x_4347 : vec3<f32> = u_xlat35;
        let x_4350 : vec2<f32> = ((vec2<f32>(x_4347.x, x_4347.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_4351 : vec3<f32> = u_xlat35;
        u_xlat35 = vec3<f32>(x_4350.x, x_4351.y, x_4350.y);
        let x_4353 : vec3<f32> = u_xlat35;
        let x_4357 : vec2<f32> = clamp(vec2<f32>(x_4353.x, x_4353.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_4358 : vec3<f32> = u_xlat35;
        u_xlat35 = vec3<f32>(x_4357.x, x_4358.y, x_4357.y);
        let x_4360 : i32 = u_xlati56;
        let x_4362 : vec4<f32> = x_2318.x_AdditionalLightsCookieAtlasUVRects[x_4360];
        let x_4364 : vec3<f32> = u_xlat35;
        let x_4367 : i32 = u_xlati56;
        let x_4369 : vec4<f32> = x_2318.x_AdditionalLightsCookieAtlasUVRects[x_4367];
        let x_4371 : vec2<f32> = ((vec2<f32>(x_4362.x, x_4362.y) * vec2<f32>(x_4364.x, x_4364.z)) + vec2<f32>(x_4369.z, x_4369.w));
        let x_4372 : vec3<f32> = u_xlat35;
        u_xlat35 = vec3<f32>(x_4371.x, x_4372.y, x_4371.y);
      } else {
        let x_4375 : i32 = u_xlati10;
        u_xlatb10.x = (x_4375 == 1i);
        let x_4379 : bool = u_xlatb10.x;
        u_xlati10 = select(0i, 1i, x_4379);
        let x_4381 : i32 = u_xlati10;
        if ((x_4381 != 0i)) {
          let x_4385 : vec3<f32> = vs_INTERP7;
          let x_4387 : i32 = u_xlati60;
          let x_4390 : i32 = u_xlati60;
          let x_4394 : vec4<f32> = x_2318.x_AdditionalLightsWorldToLights[((x_4387 + 1i) / 4i)][((x_4390 + 1i) % 4i)];
          let x_4396 : vec2<f32> = (vec2<f32>(x_4385.y, x_4385.y) * vec2<f32>(x_4394.x, x_4394.y));
          let x_4397 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4396.x, x_4396.y, x_4397.z, x_4397.w);
          let x_4399 : i32 = u_xlati60;
          let x_4401 : i32 = u_xlati60;
          let x_4404 : vec4<f32> = x_2318.x_AdditionalLightsWorldToLights[(x_4399 / 4i)][(x_4401 % 4i)];
          let x_4406 : vec3<f32> = vs_INTERP7;
          let x_4409 : vec4<f32> = u_xlat11;
          let x_4411 : vec2<f32> = ((vec2<f32>(x_4404.x, x_4404.y) * vec2<f32>(x_4406.x, x_4406.x)) + vec2<f32>(x_4409.x, x_4409.y));
          let x_4412 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4411.x, x_4411.y, x_4412.z, x_4412.w);
          let x_4414 : i32 = u_xlati60;
          let x_4417 : i32 = u_xlati60;
          let x_4421 : vec4<f32> = x_2318.x_AdditionalLightsWorldToLights[((x_4414 + 2i) / 4i)][((x_4417 + 2i) % 4i)];
          let x_4423 : vec3<f32> = vs_INTERP7;
          let x_4426 : vec4<f32> = u_xlat11;
          let x_4428 : vec2<f32> = ((vec2<f32>(x_4421.x, x_4421.y) * vec2<f32>(x_4423.z, x_4423.z)) + vec2<f32>(x_4426.x, x_4426.y));
          let x_4429 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4428.x, x_4428.y, x_4429.z, x_4429.w);
          let x_4431 : vec4<f32> = u_xlat11;
          let x_4433 : i32 = u_xlati60;
          let x_4436 : i32 = u_xlati60;
          let x_4440 : vec4<f32> = x_2318.x_AdditionalLightsWorldToLights[((x_4433 + 3i) / 4i)][((x_4436 + 3i) % 4i)];
          let x_4442 : vec2<f32> = (vec2<f32>(x_4431.x, x_4431.y) + vec2<f32>(x_4440.x, x_4440.y));
          let x_4443 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4442.x, x_4442.y, x_4443.z, x_4443.w);
          let x_4445 : vec4<f32> = u_xlat11;
          let x_4448 : vec2<f32> = ((vec2<f32>(x_4445.x, x_4445.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4449 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4448.x, x_4448.y, x_4449.z, x_4449.w);
          let x_4451 : vec4<f32> = u_xlat11;
          let x_4453 : vec2<f32> = fract(vec2<f32>(x_4451.x, x_4451.y));
          let x_4454 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4453.x, x_4453.y, x_4454.z, x_4454.w);
          let x_4456 : i32 = u_xlati56;
          let x_4458 : vec4<f32> = x_2318.x_AdditionalLightsCookieAtlasUVRects[x_4456];
          let x_4460 : vec4<f32> = u_xlat11;
          let x_4463 : i32 = u_xlati56;
          let x_4465 : vec4<f32> = x_2318.x_AdditionalLightsCookieAtlasUVRects[x_4463];
          let x_4467 : vec2<f32> = ((vec2<f32>(x_4458.x, x_4458.y) * vec2<f32>(x_4460.x, x_4460.y)) + vec2<f32>(x_4465.z, x_4465.w));
          let x_4468 : vec3<f32> = u_xlat35;
          u_xlat35 = vec3<f32>(x_4467.x, x_4468.y, x_4467.y);
        } else {
          let x_4471 : vec3<f32> = vs_INTERP7;
          let x_4473 : i32 = u_xlati60;
          let x_4476 : i32 = u_xlati60;
          let x_4480 : vec4<f32> = x_2318.x_AdditionalLightsWorldToLights[((x_4473 + 1i) / 4i)][((x_4476 + 1i) % 4i)];
          u_xlat11 = (vec4<f32>(x_4471.y, x_4471.y, x_4471.y, x_4471.y) * x_4480);
          let x_4482 : i32 = u_xlati60;
          let x_4484 : i32 = u_xlati60;
          let x_4487 : vec4<f32> = x_2318.x_AdditionalLightsWorldToLights[(x_4482 / 4i)][(x_4484 % 4i)];
          let x_4488 : vec3<f32> = vs_INTERP7;
          let x_4491 : vec4<f32> = u_xlat11;
          u_xlat11 = ((x_4487 * vec4<f32>(x_4488.x, x_4488.x, x_4488.x, x_4488.x)) + x_4491);
          let x_4493 : i32 = u_xlati60;
          let x_4496 : i32 = u_xlati60;
          let x_4500 : vec4<f32> = x_2318.x_AdditionalLightsWorldToLights[((x_4493 + 2i) / 4i)][((x_4496 + 2i) % 4i)];
          let x_4501 : vec3<f32> = vs_INTERP7;
          let x_4504 : vec4<f32> = u_xlat11;
          u_xlat11 = ((x_4500 * vec4<f32>(x_4501.z, x_4501.z, x_4501.z, x_4501.z)) + x_4504);
          let x_4506 : vec4<f32> = u_xlat11;
          let x_4507 : i32 = u_xlati60;
          let x_4510 : i32 = u_xlati60;
          let x_4514 : vec4<f32> = x_2318.x_AdditionalLightsWorldToLights[((x_4507 + 3i) / 4i)][((x_4510 + 3i) % 4i)];
          u_xlat11 = (x_4506 + x_4514);
          let x_4516 : vec4<f32> = u_xlat11;
          let x_4518 : vec4<f32> = u_xlat11;
          let x_4520 : vec3<f32> = (vec3<f32>(x_4516.x, x_4516.y, x_4516.z) / vec3<f32>(x_4518.w, x_4518.w, x_4518.w));
          let x_4521 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4520.x, x_4520.y, x_4520.z, x_4521.w);
          let x_4523 : vec4<f32> = u_xlat11;
          let x_4525 : vec4<f32> = u_xlat11;
          u_xlat10.x = dot(vec3<f32>(x_4523.x, x_4523.y, x_4523.z), vec3<f32>(x_4525.x, x_4525.y, x_4525.z));
          let x_4530 : f32 = u_xlat10.x;
          u_xlat10.x = inverseSqrt(x_4530);
          let x_4533 : vec4<f32> = u_xlat10;
          let x_4535 : vec4<f32> = u_xlat11;
          let x_4537 : vec3<f32> = (vec3<f32>(x_4533.x, x_4533.x, x_4533.x) * vec3<f32>(x_4535.x, x_4535.y, x_4535.z));
          let x_4538 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4537.x, x_4537.y, x_4537.z, x_4538.w);
          let x_4540 : vec4<f32> = u_xlat11;
          u_xlat10.x = dot(abs(vec3<f32>(x_4540.x, x_4540.y, x_4540.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_4547 : f32 = u_xlat10.x;
          u_xlat10.x = max(x_4547, 0.00000099999999747524f);
          let x_4552 : f32 = u_xlat10.x;
          u_xlat10.x = (1.0f / x_4552);
          let x_4555 : vec4<f32> = u_xlat10;
          let x_4557 : vec4<f32> = u_xlat11;
          let x_4559 : vec3<f32> = (vec3<f32>(x_4555.x, x_4555.x, x_4555.x) * vec3<f32>(x_4557.z, x_4557.x, x_4557.y));
          let x_4560 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4559.x, x_4559.y, x_4559.z, x_4560.w);
          let x_4563 : f32 = u_xlat12.x;
          u_xlat12.x = -(x_4563);
          let x_4567 : f32 = u_xlat12.x;
          u_xlat12.x = clamp(x_4567, 0.0f, 1.0f);
          let x_4571 : vec4<f32> = u_xlat12;
          let x_4573 : vec4<bool> = (vec4<f32>(x_4571.y, x_4571.z, x_4571.y, x_4571.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb61 = vec2<bool>(x_4573.x, x_4573.y);
          let x_4576 : bool = u_xlatb61.x;
          if (x_4576) {
            let x_4581 : f32 = u_xlat12.x;
            x_4577 = x_4581;
          } else {
            let x_4584 : f32 = u_xlat12.x;
            x_4577 = -(x_4584);
          }
          let x_4586 : f32 = x_4577;
          u_xlat61.x = x_4586;
          let x_4589 : bool = u_xlatb61.y;
          if (x_4589) {
            let x_4594 : f32 = u_xlat12.x;
            x_4590 = x_4594;
          } else {
            let x_4597 : f32 = u_xlat12.x;
            x_4590 = -(x_4597);
          }
          let x_4599 : f32 = x_4590;
          u_xlat61.y = x_4599;
          let x_4601 : vec4<f32> = u_xlat11;
          let x_4603 : vec4<f32> = u_xlat10;
          let x_4606 : vec2<f32> = u_xlat61;
          let x_4607 : vec2<f32> = ((vec2<f32>(x_4601.x, x_4601.y) * vec2<f32>(x_4603.x, x_4603.x)) + x_4606);
          let x_4608 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_4607.x, x_4608.y, x_4607.y, x_4608.w);
          let x_4610 : vec4<f32> = u_xlat10;
          let x_4613 : vec2<f32> = ((vec2<f32>(x_4610.x, x_4610.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4614 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_4613.x, x_4614.y, x_4613.y, x_4614.w);
          let x_4616 : vec4<f32> = u_xlat10;
          let x_4620 : vec2<f32> = clamp(vec2<f32>(x_4616.x, x_4616.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4621 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_4620.x, x_4621.y, x_4620.y, x_4621.w);
          let x_4623 : i32 = u_xlati56;
          let x_4625 : vec4<f32> = x_2318.x_AdditionalLightsCookieAtlasUVRects[x_4623];
          let x_4627 : vec4<f32> = u_xlat10;
          let x_4630 : i32 = u_xlati56;
          let x_4632 : vec4<f32> = x_2318.x_AdditionalLightsCookieAtlasUVRects[x_4630];
          let x_4634 : vec2<f32> = ((vec2<f32>(x_4625.x, x_4625.y) * vec2<f32>(x_4627.x, x_4627.z)) + vec2<f32>(x_4632.z, x_4632.w));
          let x_4635 : vec3<f32> = u_xlat35;
          u_xlat35 = vec3<f32>(x_4634.x, x_4635.y, x_4634.y);
        }
      }
      let x_4642 : vec3<f32> = u_xlat35;
      let x_4644 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4642.x, x_4642.z), 0.0f);
      u_xlat10 = x_4644;
      let x_4646 : bool = u_xlatb6.y;
      if (x_4646) {
        let x_4651 : f32 = u_xlat10.w;
        x_4647 = x_4651;
      } else {
        let x_4654 : f32 = u_xlat10.x;
        x_4647 = x_4654;
      }
      let x_4655 : f32 = x_4647;
      u_xlat85 = x_4655;
      let x_4657 : bool = u_xlatb6.x;
      if (x_4657) {
        let x_4661 : vec4<f32> = u_xlat10;
        x_4658 = vec3<f32>(x_4661.x, x_4661.y, x_4661.z);
      } else {
        let x_4664 : f32 = u_xlat85;
        x_4658 = vec3<f32>(x_4664, x_4664, x_4664);
      }
      let x_4666 : vec3<f32> = x_4658;
      let x_4667 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_4666.x, x_4666.y, x_4666.z, x_4667.w);
    } else {
      u_xlat10.x = 1.0f;
      u_xlat10.y = 1.0f;
      u_xlat10.z = 1.0f;
    }
    let x_4673 : vec4<f32> = u_xlat10;
    let x_4675 : i32 = u_xlati56;
    let x_4677 : vec4<f32> = x_2764.x_AdditionalLightsColor[x_4675];
    let x_4679 : vec3<f32> = (vec3<f32>(x_4673.x, x_4673.y, x_4673.z) * vec3<f32>(x_4677.x, x_4677.y, x_4677.z));
    let x_4680 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_4679.x, x_4679.y, x_4679.z, x_4680.w);
    let x_4682 : f32 = u_xlat81;
    let x_4683 : f32 = u_xlat84;
    u_xlat56.x = (x_4682 * x_4683);
    let x_4686 : vec4<f32> = u_xlat4;
    let x_4688 : vec4<f32> = u_xlat9;
    u_xlat81 = dot(vec3<f32>(x_4686.x, x_4686.y, x_4686.z), vec3<f32>(x_4688.x, x_4688.y, x_4688.z));
    let x_4691 : f32 = u_xlat81;
    u_xlat81 = clamp(x_4691, 0.0f, 1.0f);
    let x_4693 : f32 = u_xlat81;
    let x_4695 : f32 = u_xlat56.x;
    u_xlat56.x = (x_4693 * x_4695);
    let x_4698 : vec2<f32> = u_xlat56;
    let x_4700 : vec4<f32> = u_xlat10;
    let x_4702 : vec3<f32> = (vec3<f32>(x_4698.x, x_4698.x, x_4698.x) * vec3<f32>(x_4700.x, x_4700.y, x_4700.z));
    let x_4703 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_4702.x, x_4702.y, x_4702.z, x_4703.w);
    let x_4705 : vec3<f32> = u_xlat33;
    let x_4706 : f32 = u_xlat82;
    let x_4709 : vec3<f32> = u_xlat5;
    u_xlat33 = ((x_4705 * vec3<f32>(x_4706, x_4706, x_4706)) + x_4709);
    let x_4711 : vec3<f32> = u_xlat33;
    let x_4712 : vec3<f32> = u_xlat33;
    u_xlat56.x = dot(x_4711, x_4712);
    let x_4716 : f32 = u_xlat56.x;
    u_xlat56.x = max(x_4716, 1.17549435e-38f);
    let x_4720 : f32 = u_xlat56.x;
    u_xlat56.x = inverseSqrt(x_4720);
    let x_4723 : vec2<f32> = u_xlat56;
    let x_4725 : vec3<f32> = u_xlat33;
    u_xlat33 = (vec3<f32>(x_4723.x, x_4723.x, x_4723.x) * x_4725);
    let x_4727 : vec4<f32> = u_xlat4;
    let x_4729 : vec3<f32> = u_xlat33;
    u_xlat56.x = dot(vec3<f32>(x_4727.x, x_4727.y, x_4727.z), x_4729);
    let x_4733 : f32 = u_xlat56.x;
    u_xlat56.x = clamp(x_4733, 0.0f, 1.0f);
    let x_4736 : vec4<f32> = u_xlat9;
    let x_4738 : vec3<f32> = u_xlat33;
    u_xlat56.y = dot(vec3<f32>(x_4736.x, x_4736.y, x_4736.z), x_4738);
    let x_4742 : f32 = u_xlat56.y;
    u_xlat56.y = clamp(x_4742, 0.0f, 1.0f);
    let x_4745 : vec2<f32> = u_xlat56;
    let x_4746 : vec2<f32> = u_xlat56;
    u_xlat56 = (x_4745 * x_4746);
    let x_4749 : f32 = u_xlat56.x;
    let x_4751 : f32 = u_xlat8.x;
    u_xlat56.x = ((x_4749 * x_4751) + 1.00001001358032226562f);
    let x_4756 : f32 = u_xlat56.x;
    let x_4758 : f32 = u_xlat56.x;
    u_xlat56.x = (x_4756 * x_4758);
    let x_4762 : f32 = u_xlat56.y;
    u_xlat81 = max(x_4762, 0.10000000149011611938f);
    let x_4764 : f32 = u_xlat81;
    let x_4766 : f32 = u_xlat56.x;
    u_xlat56.x = (x_4764 * x_4766);
    let x_4769 : f32 = u_xlat79;
    let x_4771 : f32 = u_xlat56.x;
    u_xlat56.x = (x_4769 * x_4771);
    let x_4774 : f32 = u_xlat78;
    let x_4776 : f32 = u_xlat56.x;
    u_xlat56.x = (x_4774 / x_4776);
    let x_4779 : vec3<f32> = u_xlat2;
    let x_4780 : vec2<f32> = u_xlat56;
    let x_4783 : vec3<f32> = u_xlat3;
    u_xlat33 = ((x_4779 * vec3<f32>(x_4780.x, x_4780.x, x_4780.x)) + x_4783);
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
  let x_4796 : vec4<f32> = u_xlat1;
  let x_4798 : f32 = u_xlat80;
  let x_4801 : vec4<f32> = u_xlat0;
  let x_4803 : vec3<f32> = ((vec3<f32>(x_4796.x, x_4796.y, x_4796.z) * vec3<f32>(x_4798, x_4798, x_4798)) + vec3<f32>(x_4801.x, x_4801.y, x_4801.w));
  let x_4804 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4803.x, x_4803.y, x_4803.z, x_4804.w);
  let x_4808 : vec4<f32> = u_xlat7;
  let x_4810 : vec4<f32> = u_xlat0;
  let x_4812 : vec3<f32> = (vec3<f32>(x_4808.x, x_4808.y, x_4808.z) + vec3<f32>(x_4810.x, x_4810.y, x_4810.z));
  let x_4813 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4812.x, x_4812.y, x_4812.z, x_4813.w);
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


