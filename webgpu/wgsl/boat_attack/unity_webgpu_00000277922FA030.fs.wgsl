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

@group(0) @binding(14) var sampler_MainTex : sampler;

var<private> vs_INTERP5 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_135 : PGlobals;

var<private> u_xlat76 : f32;

var<private> vs_INTERP7 : vec3<f32>;

var<private> u_xlat77 : f32;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

@group(0) @binding(9) var Texture2D_D7D66558 : texture_2d<f32>;

@group(0) @binding(17) var samplerTexture2D_D7D66558 : sampler;

@group(1) @binding(4) var<uniform> x_193 : UnityPerMaterial;

var<private> u_xlat78 : f32;

var<private> u_xlat79 : f32;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(7) var Texture2D_DE8BF47E : texture_2d<f32>;

@group(0) @binding(15) var samplerTexture2D_DE8BF47E : sampler;

var<private> u_xlat32 : vec3<f32>;

var<private> u_xlat26 : vec2<f32>;

var<private> u_xlat29 : vec3<f32>;

@group(0) @binding(8) var Texture2D_C005B064 : texture_2d<f32>;

@group(0) @binding(16) var samplerTexture2D_C005B064 : sampler;

@group(0) @binding(5) var x_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1_Texture2D : texture_2d<f32>;

@group(0) @binding(13) var sampler_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1_Texture2D : sampler;

var<private> u_xlatb1 : bool;

@group(1) @binding(3) var<uniform> x_661 : LightShadows;

var<private> u_xlatb4 : vec4<bool>;

var<private> u_xlatu77 : u32;

var<private> u_xlati77 : i32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(11) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlatb31 : bool;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

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

var<private> u_xlat33 : vec2<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat83 : f32;

var<private> u_xlatb29 : bool;

var<private> u_xlatb54 : bool;

var<private> u_xlat54 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu0 : u32;

var<private> u_xlatu32 : u32;

var<private> u_xlati57 : i32;

var<private> u_xlati32 : i32;

@group(1) @binding(1) var<uniform> x_2614 : AdditionalLights;

var<private> u_xlat82 : f32;

var<private> u_xlati83 : i32;

var<private> u_xlatb84 : bool;

var<private> u_xlatb10 : vec4<bool>;

var<private> u_xlat85 : f32;

var<private> u_xlat35 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlatb83 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat37 : vec3<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat38 : vec2<f32>;

var<private> u_xlat69 : vec2<f32>;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlat75 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb32 : bool;

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
  var x_2263 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2769 : f32;
  var x_2779 : f32;
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
  u_xlatb31 = (0.0f < x_968);
  let x_970 : bool = u_xlatb31;
  if (x_970) {
    let x_974 : f32 = x_661.x_MainLightShadowParams.y;
    u_xlatb31 = (x_974 == 1.0f);
    let x_976 : bool = u_xlatb31;
    if (x_976) {
      let x_979 : vec4<f32> = u_xlat4;
      let x_982 : vec4<f32> = x_661.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_979.x, x_979.y, x_979.x, x_979.y) + x_982);
      let x_985 : vec4<f32> = u_xlat7;
      let x_986 : vec2<f32> = vec2<f32>(x_985.x, x_985.y);
      let x_988 : f32 = u_xlat4.z;
      txVec0 = vec3<f32>(x_986.x, x_986.y, x_988);
      let x_1001 : vec3<f32> = txVec0;
      let x_1003 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1001.xy, x_1001.z);
      u_xlat8.x = x_1003;
      let x_1006 : vec4<f32> = u_xlat7;
      let x_1007 : vec2<f32> = vec2<f32>(x_1006.z, x_1006.w);
      let x_1009 : f32 = u_xlat4.z;
      txVec1 = vec3<f32>(x_1007.x, x_1007.y, x_1009);
      let x_1016 : vec3<f32> = txVec1;
      let x_1018 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1016.xy, x_1016.z);
      u_xlat8.y = x_1018;
      let x_1020 : vec4<f32> = u_xlat4;
      let x_1023 : vec4<f32> = x_661.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_1020.x, x_1020.y, x_1020.x, x_1020.y) + x_1023);
      let x_1026 : vec4<f32> = u_xlat7;
      let x_1027 : vec2<f32> = vec2<f32>(x_1026.x, x_1026.y);
      let x_1029 : f32 = u_xlat4.z;
      txVec2 = vec3<f32>(x_1027.x, x_1027.y, x_1029);
      let x_1036 : vec3<f32> = txVec2;
      let x_1038 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1036.xy, x_1036.z);
      u_xlat8.z = x_1038;
      let x_1041 : vec4<f32> = u_xlat7;
      let x_1042 : vec2<f32> = vec2<f32>(x_1041.z, x_1041.w);
      let x_1044 : f32 = u_xlat4.z;
      txVec3 = vec3<f32>(x_1042.x, x_1042.y, x_1044);
      let x_1051 : vec3<f32> = txVec3;
      let x_1053 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1051.xy, x_1051.z);
      u_xlat8.w = x_1053;
      let x_1056 : vec4<f32> = u_xlat8;
      u_xlat31.x = dot(x_1056, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1064 : f32 = x_661.x_MainLightShadowParams.y;
      u_xlatb56 = (x_1064 == 2.0f);
      let x_1066 : bool = u_xlatb56;
      if (x_1066) {
        let x_1070 : vec4<f32> = u_xlat4;
        let x_1073 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        u_xlat56 = ((vec2<f32>(x_1070.x, x_1070.y) * vec2<f32>(x_1073.z, x_1073.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1078 : vec2<f32> = u_xlat56;
        u_xlat56 = floor(x_1078);
        let x_1080 : vec4<f32> = u_xlat4;
        let x_1083 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_1086 : vec2<f32> = u_xlat56;
        let x_1088 : vec2<f32> = ((vec2<f32>(x_1080.x, x_1080.y) * vec2<f32>(x_1083.z, x_1083.w)) + -(x_1086));
        let x_1089 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1088.x, x_1088.y, x_1089.z, x_1089.w);
        let x_1091 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1091.x, x_1091.x, x_1091.y, x_1091.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1096 : vec4<f32> = u_xlat8;
        let x_1098 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1096.x, x_1096.x, x_1096.z, x_1096.z) * vec4<f32>(x_1098.x, x_1098.x, x_1098.z, x_1098.z));
        let x_1102 : vec4<f32> = u_xlat9;
        u_xlat57 = (vec2<f32>(x_1102.y, x_1102.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1107 : vec4<f32> = u_xlat9;
        let x_1110 : vec4<f32> = u_xlat7;
        let x_1113 : vec2<f32> = ((vec2<f32>(x_1107.x, x_1107.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1110.x, x_1110.y)));
        let x_1114 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1113.x, x_1114.y, x_1113.y, x_1114.w);
        let x_1116 : vec4<f32> = u_xlat7;
        let x_1119 : vec2<f32> = (-(vec2<f32>(x_1116.x, x_1116.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1120 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1119.x, x_1119.y, x_1120.z, x_1120.w);
        let x_1123 : vec4<f32> = u_xlat7;
        u_xlat59 = min(vec2<f32>(x_1123.x, x_1123.y), vec2<f32>(0.0f, 0.0f));
        let x_1127 : vec2<f32> = u_xlat59;
        let x_1129 : vec2<f32> = u_xlat59;
        let x_1131 : vec4<f32> = u_xlat9;
        u_xlat59 = ((-(x_1127) * x_1129) + vec2<f32>(x_1131.x, x_1131.y));
        let x_1134 : vec4<f32> = u_xlat7;
        let x_1136 : vec2<f32> = max(vec2<f32>(x_1134.x, x_1134.y), vec2<f32>(0.0f, 0.0f));
        let x_1137 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1136.x, x_1136.y, x_1137.z, x_1137.w);
        let x_1139 : vec4<f32> = u_xlat7;
        let x_1142 : vec4<f32> = u_xlat7;
        let x_1145 : vec4<f32> = u_xlat8;
        let x_1147 : vec2<f32> = ((-(vec2<f32>(x_1139.x, x_1139.y)) * vec2<f32>(x_1142.x, x_1142.y)) + vec2<f32>(x_1145.y, x_1145.w));
        let x_1148 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1147.x, x_1147.y, x_1148.z, x_1148.w);
        let x_1150 : vec2<f32> = u_xlat59;
        u_xlat59 = (x_1150 + vec2<f32>(1.0f, 1.0f));
        let x_1152 : vec4<f32> = u_xlat7;
        let x_1154 : vec2<f32> = (vec2<f32>(x_1152.x, x_1152.y) + vec2<f32>(1.0f, 1.0f));
        let x_1155 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1154.x, x_1154.y, x_1155.z, x_1155.w);
        let x_1158 : vec4<f32> = u_xlat8;
        let x_1162 : vec2<f32> = (vec2<f32>(x_1158.x, x_1158.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1163 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1162.x, x_1162.y, x_1163.z, x_1163.w);
        let x_1166 : vec4<f32> = u_xlat9;
        let x_1168 : vec2<f32> = (vec2<f32>(x_1166.x, x_1166.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1169 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1168.x, x_1168.y, x_1169.z, x_1169.w);
        let x_1171 : vec2<f32> = u_xlat59;
        let x_1172 : vec2<f32> = (x_1171 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1173 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1172.x, x_1172.y, x_1173.z, x_1173.w);
        let x_1176 : vec4<f32> = u_xlat7;
        let x_1178 : vec2<f32> = (vec2<f32>(x_1176.x, x_1176.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1179 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1178.x, x_1178.y, x_1179.z, x_1179.w);
        let x_1181 : vec4<f32> = u_xlat8;
        let x_1183 : vec2<f32> = (vec2<f32>(x_1181.y, x_1181.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1184 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1183.x, x_1183.y, x_1184.z, x_1184.w);
        let x_1187 : f32 = u_xlat9.x;
        u_xlat10.z = x_1187;
        let x_1190 : f32 = u_xlat7.x;
        u_xlat10.w = x_1190;
        let x_1193 : f32 = u_xlat12.x;
        u_xlat11.z = x_1193;
        let x_1196 : f32 = u_xlat57.x;
        u_xlat11.w = x_1196;
        let x_1198 : vec4<f32> = u_xlat10;
        let x_1200 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1198.z, x_1198.w, x_1198.x, x_1198.z) + vec4<f32>(x_1200.z, x_1200.w, x_1200.x, x_1200.z));
        let x_1204 : f32 = u_xlat10.y;
        u_xlat9.z = x_1204;
        let x_1207 : f32 = u_xlat7.y;
        u_xlat9.w = x_1207;
        let x_1210 : f32 = u_xlat11.y;
        u_xlat12.z = x_1210;
        let x_1213 : f32 = u_xlat57.y;
        u_xlat12.w = x_1213;
        let x_1215 : vec4<f32> = u_xlat9;
        let x_1217 : vec4<f32> = u_xlat12;
        let x_1219 : vec3<f32> = (vec3<f32>(x_1215.z, x_1215.y, x_1215.w) + vec3<f32>(x_1217.z, x_1217.y, x_1217.w));
        let x_1220 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1219.x, x_1219.y, x_1219.z, x_1220.w);
        let x_1222 : vec4<f32> = u_xlat11;
        let x_1224 : vec4<f32> = u_xlat8;
        let x_1226 : vec3<f32> = (vec3<f32>(x_1222.x, x_1222.z, x_1222.w) / vec3<f32>(x_1224.z, x_1224.w, x_1224.y));
        let x_1227 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1226.x, x_1226.y, x_1226.z, x_1227.w);
        let x_1229 : vec4<f32> = u_xlat9;
        let x_1234 : vec3<f32> = (vec3<f32>(x_1229.x, x_1229.y, x_1229.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1235 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1234.x, x_1234.y, x_1234.z, x_1235.w);
        let x_1237 : vec4<f32> = u_xlat12;
        let x_1239 : vec4<f32> = u_xlat7;
        let x_1241 : vec3<f32> = (vec3<f32>(x_1237.z, x_1237.y, x_1237.w) / vec3<f32>(x_1239.x, x_1239.y, x_1239.z));
        let x_1242 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1241.x, x_1241.y, x_1241.z, x_1242.w);
        let x_1244 : vec4<f32> = u_xlat10;
        let x_1246 : vec3<f32> = (vec3<f32>(x_1244.x, x_1244.y, x_1244.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1247 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1246.x, x_1246.y, x_1246.z, x_1247.w);
        let x_1249 : vec4<f32> = u_xlat9;
        let x_1252 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_1254 : vec3<f32> = (vec3<f32>(x_1249.y, x_1249.x, x_1249.z) * vec3<f32>(x_1252.x, x_1252.x, x_1252.x));
        let x_1255 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1254.x, x_1254.y, x_1254.z, x_1255.w);
        let x_1257 : vec4<f32> = u_xlat10;
        let x_1260 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_1262 : vec3<f32> = (vec3<f32>(x_1257.x, x_1257.y, x_1257.z) * vec3<f32>(x_1260.y, x_1260.y, x_1260.y));
        let x_1263 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1262.x, x_1262.y, x_1262.z, x_1263.w);
        let x_1266 : f32 = u_xlat10.x;
        u_xlat9.w = x_1266;
        let x_1268 : vec2<f32> = u_xlat56;
        let x_1271 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_1274 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1268.x, x_1268.y, x_1268.x, x_1268.y) * vec4<f32>(x_1271.x, x_1271.y, x_1271.x, x_1271.y)) + vec4<f32>(x_1274.y, x_1274.w, x_1274.x, x_1274.w));
        let x_1277 : vec2<f32> = u_xlat56;
        let x_1279 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_1282 : vec4<f32> = u_xlat9;
        let x_1284 : vec2<f32> = ((x_1277 * vec2<f32>(x_1279.x, x_1279.y)) + vec2<f32>(x_1282.z, x_1282.w));
        let x_1285 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1284.x, x_1284.y, x_1285.z, x_1285.w);
        let x_1288 : f32 = u_xlat9.y;
        u_xlat10.w = x_1288;
        let x_1290 : vec4<f32> = u_xlat10;
        let x_1291 : vec2<f32> = vec2<f32>(x_1290.y, x_1290.z);
        let x_1292 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1292.x, x_1291.x, x_1292.z, x_1291.y);
        let x_1295 : vec2<f32> = u_xlat56;
        let x_1298 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_1301 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_1295.x, x_1295.y, x_1295.x, x_1295.y) * vec4<f32>(x_1298.x, x_1298.y, x_1298.x, x_1298.y)) + vec4<f32>(x_1301.x, x_1301.y, x_1301.z, x_1301.y));
        let x_1304 : vec2<f32> = u_xlat56;
        let x_1307 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_1310 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1304.x, x_1304.y, x_1304.x, x_1304.y) * vec4<f32>(x_1307.x, x_1307.y, x_1307.x, x_1307.y)) + vec4<f32>(x_1310.w, x_1310.y, x_1310.w, x_1310.z));
        let x_1313 : vec2<f32> = u_xlat56;
        let x_1316 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_1319 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1313.x, x_1313.y, x_1313.x, x_1313.y) * vec4<f32>(x_1316.x, x_1316.y, x_1316.x, x_1316.y)) + vec4<f32>(x_1319.x, x_1319.w, x_1319.z, x_1319.w));
        let x_1323 : vec4<f32> = u_xlat7;
        let x_1325 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_1323.x, x_1323.x, x_1323.x, x_1323.y) * vec4<f32>(x_1325.z, x_1325.w, x_1325.y, x_1325.z));
        let x_1329 : vec4<f32> = u_xlat7;
        let x_1331 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1329.y, x_1329.y, x_1329.z, x_1329.z) * x_1331);
        let x_1334 : f32 = u_xlat7.z;
        let x_1336 : f32 = u_xlat8.y;
        u_xlat56.x = (x_1334 * x_1336);
        let x_1340 : vec4<f32> = u_xlat11;
        let x_1341 : vec2<f32> = vec2<f32>(x_1340.x, x_1340.y);
        let x_1343 : f32 = u_xlat4.z;
        txVec4 = vec3<f32>(x_1341.x, x_1341.y, x_1343);
        let x_1351 : vec3<f32> = txVec4;
        let x_1353 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1351.xy, x_1351.z);
        u_xlat81 = x_1353;
        let x_1355 : vec4<f32> = u_xlat11;
        let x_1356 : vec2<f32> = vec2<f32>(x_1355.z, x_1355.w);
        let x_1358 : f32 = u_xlat4.z;
        txVec5 = vec3<f32>(x_1356.x, x_1356.y, x_1358);
        let x_1365 : vec3<f32> = txVec5;
        let x_1367 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1365.xy, x_1365.z);
        u_xlat7.x = x_1367;
        let x_1370 : f32 = u_xlat7.x;
        let x_1372 : f32 = u_xlat14.y;
        u_xlat7.x = (x_1370 * x_1372);
        let x_1376 : f32 = u_xlat14.x;
        let x_1377 : f32 = u_xlat81;
        let x_1380 : f32 = u_xlat7.x;
        u_xlat81 = ((x_1376 * x_1377) + x_1380);
        let x_1383 : vec4<f32> = u_xlat12;
        let x_1384 : vec2<f32> = vec2<f32>(x_1383.x, x_1383.y);
        let x_1386 : f32 = u_xlat4.z;
        txVec6 = vec3<f32>(x_1384.x, x_1384.y, x_1386);
        let x_1393 : vec3<f32> = txVec6;
        let x_1395 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1393.xy, x_1393.z);
        u_xlat7.x = x_1395;
        let x_1398 : f32 = u_xlat14.z;
        let x_1400 : f32 = u_xlat7.x;
        let x_1402 : f32 = u_xlat81;
        u_xlat81 = ((x_1398 * x_1400) + x_1402);
        let x_1405 : vec4<f32> = u_xlat10;
        let x_1406 : vec2<f32> = vec2<f32>(x_1405.x, x_1405.y);
        let x_1408 : f32 = u_xlat4.z;
        txVec7 = vec3<f32>(x_1406.x, x_1406.y, x_1408);
        let x_1415 : vec3<f32> = txVec7;
        let x_1417 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1415.xy, x_1415.z);
        u_xlat7.x = x_1417;
        let x_1420 : f32 = u_xlat14.w;
        let x_1422 : f32 = u_xlat7.x;
        let x_1424 : f32 = u_xlat81;
        u_xlat81 = ((x_1420 * x_1422) + x_1424);
        let x_1427 : vec4<f32> = u_xlat13;
        let x_1428 : vec2<f32> = vec2<f32>(x_1427.x, x_1427.y);
        let x_1430 : f32 = u_xlat4.z;
        txVec8 = vec3<f32>(x_1428.x, x_1428.y, x_1430);
        let x_1437 : vec3<f32> = txVec8;
        let x_1439 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1437.xy, x_1437.z);
        u_xlat7.x = x_1439;
        let x_1442 : f32 = u_xlat15.x;
        let x_1444 : f32 = u_xlat7.x;
        let x_1446 : f32 = u_xlat81;
        u_xlat81 = ((x_1442 * x_1444) + x_1446);
        let x_1449 : vec4<f32> = u_xlat13;
        let x_1450 : vec2<f32> = vec2<f32>(x_1449.z, x_1449.w);
        let x_1452 : f32 = u_xlat4.z;
        txVec9 = vec3<f32>(x_1450.x, x_1450.y, x_1452);
        let x_1459 : vec3<f32> = txVec9;
        let x_1461 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1459.xy, x_1459.z);
        u_xlat7.x = x_1461;
        let x_1464 : f32 = u_xlat15.y;
        let x_1466 : f32 = u_xlat7.x;
        let x_1468 : f32 = u_xlat81;
        u_xlat81 = ((x_1464 * x_1466) + x_1468);
        let x_1471 : vec4<f32> = u_xlat10;
        let x_1472 : vec2<f32> = vec2<f32>(x_1471.z, x_1471.w);
        let x_1474 : f32 = u_xlat4.z;
        txVec10 = vec3<f32>(x_1472.x, x_1472.y, x_1474);
        let x_1481 : vec3<f32> = txVec10;
        let x_1483 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1481.xy, x_1481.z);
        u_xlat7.x = x_1483;
        let x_1486 : f32 = u_xlat15.z;
        let x_1488 : f32 = u_xlat7.x;
        let x_1490 : f32 = u_xlat81;
        u_xlat81 = ((x_1486 * x_1488) + x_1490);
        let x_1493 : vec4<f32> = u_xlat9;
        let x_1494 : vec2<f32> = vec2<f32>(x_1493.x, x_1493.y);
        let x_1496 : f32 = u_xlat4.z;
        txVec11 = vec3<f32>(x_1494.x, x_1494.y, x_1496);
        let x_1503 : vec3<f32> = txVec11;
        let x_1505 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1503.xy, x_1503.z);
        u_xlat7.x = x_1505;
        let x_1508 : f32 = u_xlat15.w;
        let x_1510 : f32 = u_xlat7.x;
        let x_1512 : f32 = u_xlat81;
        u_xlat81 = ((x_1508 * x_1510) + x_1512);
        let x_1515 : vec4<f32> = u_xlat9;
        let x_1516 : vec2<f32> = vec2<f32>(x_1515.z, x_1515.w);
        let x_1518 : f32 = u_xlat4.z;
        txVec12 = vec3<f32>(x_1516.x, x_1516.y, x_1518);
        let x_1525 : vec3<f32> = txVec12;
        let x_1527 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1525.xy, x_1525.z);
        u_xlat7.x = x_1527;
        let x_1530 : f32 = u_xlat56.x;
        let x_1532 : f32 = u_xlat7.x;
        let x_1534 : f32 = u_xlat81;
        u_xlat31.x = ((x_1530 * x_1532) + x_1534);
      } else {
        let x_1538 : vec4<f32> = u_xlat4;
        let x_1541 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        u_xlat56 = ((vec2<f32>(x_1538.x, x_1538.y) * vec2<f32>(x_1541.z, x_1541.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1545 : vec2<f32> = u_xlat56;
        u_xlat56 = floor(x_1545);
        let x_1547 : vec4<f32> = u_xlat4;
        let x_1550 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_1553 : vec2<f32> = u_xlat56;
        let x_1555 : vec2<f32> = ((vec2<f32>(x_1547.x, x_1547.y) * vec2<f32>(x_1550.z, x_1550.w)) + -(x_1553));
        let x_1556 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1555.x, x_1555.y, x_1556.z, x_1556.w);
        let x_1558 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1558.x, x_1558.x, x_1558.y, x_1558.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1561 : vec4<f32> = u_xlat8;
        let x_1563 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1561.x, x_1561.x, x_1561.z, x_1561.z) * vec4<f32>(x_1563.x, x_1563.x, x_1563.z, x_1563.z));
        let x_1566 : vec4<f32> = u_xlat9;
        let x_1570 : vec2<f32> = (vec2<f32>(x_1566.y, x_1566.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1571 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1571.x, x_1570.x, x_1571.z, x_1570.y);
        let x_1573 : vec4<f32> = u_xlat9;
        let x_1576 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_1573.x, x_1573.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1576.x, x_1576.y)));
        let x_1580 : vec4<f32> = u_xlat7;
        let x_1583 : vec2<f32> = (-(vec2<f32>(x_1580.x, x_1580.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1584 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1583.x, x_1584.y, x_1583.y, x_1584.w);
        let x_1586 : vec4<f32> = u_xlat7;
        let x_1588 : vec2<f32> = min(vec2<f32>(x_1586.x, x_1586.y), vec2<f32>(0.0f, 0.0f));
        let x_1589 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1588.x, x_1588.y, x_1589.z, x_1589.w);
        let x_1591 : vec4<f32> = u_xlat9;
        let x_1594 : vec4<f32> = u_xlat9;
        let x_1597 : vec4<f32> = u_xlat8;
        let x_1599 : vec2<f32> = ((-(vec2<f32>(x_1591.x, x_1591.y)) * vec2<f32>(x_1594.x, x_1594.y)) + vec2<f32>(x_1597.x, x_1597.z));
        let x_1600 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1599.x, x_1600.y, x_1599.y, x_1600.w);
        let x_1602 : vec4<f32> = u_xlat7;
        let x_1604 : vec2<f32> = max(vec2<f32>(x_1602.x, x_1602.y), vec2<f32>(0.0f, 0.0f));
        let x_1605 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1604.x, x_1604.y, x_1605.z, x_1605.w);
        let x_1607 : vec4<f32> = u_xlat9;
        let x_1610 : vec4<f32> = u_xlat9;
        let x_1613 : vec4<f32> = u_xlat8;
        let x_1615 : vec2<f32> = ((-(vec2<f32>(x_1607.x, x_1607.y)) * vec2<f32>(x_1610.x, x_1610.y)) + vec2<f32>(x_1613.y, x_1613.w));
        let x_1616 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1616.x, x_1615.x, x_1616.z, x_1615.y);
        let x_1618 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1618 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1622 : f32 = u_xlat8.y;
        u_xlat9.z = (x_1622 * 0.08163200318813323975f);
        let x_1626 : vec2<f32> = u_xlat57;
        let x_1629 : vec2<f32> = (vec2<f32>(x_1626.y, x_1626.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1630 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1629.x, x_1629.y, x_1630.z, x_1630.w);
        let x_1632 : vec4<f32> = u_xlat8;
        u_xlat57 = (vec2<f32>(x_1632.x, x_1632.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1636 : f32 = u_xlat8.w;
        u_xlat11.z = (x_1636 * 0.08163200318813323975f);
        let x_1640 : f32 = u_xlat11.y;
        u_xlat9.x = x_1640;
        let x_1642 : vec4<f32> = u_xlat7;
        let x_1649 : vec2<f32> = ((vec2<f32>(x_1642.x, x_1642.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1650 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1650.x, x_1649.x, x_1650.z, x_1649.y);
        let x_1652 : vec4<f32> = u_xlat7;
        let x_1656 : vec2<f32> = ((vec2<f32>(x_1652.x, x_1652.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1657 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1656.x, x_1657.y, x_1656.y, x_1657.w);
        let x_1660 : f32 = u_xlat57.x;
        u_xlat8.y = x_1660;
        let x_1663 : f32 = u_xlat10.y;
        u_xlat8.w = x_1663;
        let x_1665 : vec4<f32> = u_xlat8;
        let x_1666 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1665 + x_1666);
        let x_1668 : vec4<f32> = u_xlat7;
        let x_1671 : vec2<f32> = ((vec2<f32>(x_1668.y, x_1668.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1672 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1672.x, x_1671.x, x_1672.z, x_1671.y);
        let x_1674 : vec4<f32> = u_xlat7;
        let x_1677 : vec2<f32> = ((vec2<f32>(x_1674.y, x_1674.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1678 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1677.x, x_1678.y, x_1677.y, x_1678.w);
        let x_1681 : f32 = u_xlat57.y;
        u_xlat10.y = x_1681;
        let x_1683 : vec4<f32> = u_xlat10;
        let x_1684 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1683 + x_1684);
        let x_1686 : vec4<f32> = u_xlat8;
        let x_1687 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_1686 / x_1687);
        let x_1689 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1689 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1695 : vec4<f32> = u_xlat10;
        let x_1696 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_1695 / x_1696);
        let x_1698 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1698 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1700 : vec4<f32> = u_xlat8;
        let x_1703 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1700.w, x_1700.x, x_1700.y, x_1700.z) * vec4<f32>(x_1703.x, x_1703.x, x_1703.x, x_1703.x));
        let x_1706 : vec4<f32> = u_xlat10;
        let x_1709 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1706.x, x_1706.w, x_1706.y, x_1706.z) * vec4<f32>(x_1709.y, x_1709.y, x_1709.y, x_1709.y));
        let x_1712 : vec4<f32> = u_xlat8;
        let x_1713 : vec3<f32> = vec3<f32>(x_1712.y, x_1712.z, x_1712.w);
        let x_1714 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1713.x, x_1714.y, x_1713.y, x_1713.z);
        let x_1717 : f32 = u_xlat10.x;
        u_xlat11.y = x_1717;
        let x_1719 : vec2<f32> = u_xlat56;
        let x_1722 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_1725 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1719.x, x_1719.y, x_1719.x, x_1719.y) * vec4<f32>(x_1722.x, x_1722.y, x_1722.x, x_1722.y)) + vec4<f32>(x_1725.x, x_1725.y, x_1725.z, x_1725.y));
        let x_1728 : vec2<f32> = u_xlat56;
        let x_1730 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_1733 : vec4<f32> = u_xlat11;
        let x_1735 : vec2<f32> = ((x_1728 * vec2<f32>(x_1730.x, x_1730.y)) + vec2<f32>(x_1733.w, x_1733.y));
        let x_1736 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1735.x, x_1735.y, x_1736.z, x_1736.w);
        let x_1739 : f32 = u_xlat11.y;
        u_xlat8.y = x_1739;
        let x_1742 : f32 = u_xlat10.z;
        u_xlat11.y = x_1742;
        let x_1744 : vec2<f32> = u_xlat56;
        let x_1747 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_1750 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_1744.x, x_1744.y, x_1744.x, x_1744.y) * vec4<f32>(x_1747.x, x_1747.y, x_1747.x, x_1747.y)) + vec4<f32>(x_1750.x, x_1750.y, x_1750.z, x_1750.y));
        let x_1754 : vec2<f32> = u_xlat56;
        let x_1756 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_1759 : vec4<f32> = u_xlat11;
        u_xlat63 = ((x_1754 * vec2<f32>(x_1756.x, x_1756.y)) + vec2<f32>(x_1759.w, x_1759.y));
        let x_1763 : f32 = u_xlat11.y;
        u_xlat8.z = x_1763;
        let x_1765 : vec2<f32> = u_xlat56;
        let x_1768 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_1771 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1765.x, x_1765.y, x_1765.x, x_1765.y) * vec4<f32>(x_1768.x, x_1768.y, x_1768.x, x_1768.y)) + vec4<f32>(x_1771.x, x_1771.y, x_1771.x, x_1771.z));
        let x_1775 : f32 = u_xlat10.w;
        u_xlat11.y = x_1775;
        let x_1778 : vec2<f32> = u_xlat56;
        let x_1781 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_1784 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1778.x, x_1778.y, x_1778.x, x_1778.y) * vec4<f32>(x_1781.x, x_1781.y, x_1781.x, x_1781.y)) + vec4<f32>(x_1784.x, x_1784.y, x_1784.z, x_1784.y));
        let x_1788 : vec2<f32> = u_xlat56;
        let x_1790 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_1793 : vec4<f32> = u_xlat11;
        u_xlat33 = ((x_1788 * vec2<f32>(x_1790.x, x_1790.y)) + vec2<f32>(x_1793.w, x_1793.y));
        let x_1797 : f32 = u_xlat11.y;
        u_xlat8.w = x_1797;
        let x_1800 : vec2<f32> = u_xlat56;
        let x_1802 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_1805 : vec4<f32> = u_xlat8;
        let x_1807 : vec2<f32> = ((x_1800 * vec2<f32>(x_1802.x, x_1802.y)) + vec2<f32>(x_1805.x, x_1805.w));
        let x_1808 : vec4<f32> = u_xlat17;
        u_xlat17 = vec4<f32>(x_1807.x, x_1807.y, x_1808.z, x_1808.w);
        let x_1810 : vec4<f32> = u_xlat11;
        let x_1811 : vec3<f32> = vec3<f32>(x_1810.x, x_1810.z, x_1810.w);
        let x_1812 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1811.x, x_1812.y, x_1811.y, x_1811.z);
        let x_1814 : vec2<f32> = u_xlat56;
        let x_1817 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_1820 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1814.x, x_1814.y, x_1814.x, x_1814.y) * vec4<f32>(x_1817.x, x_1817.y, x_1817.x, x_1817.y)) + vec4<f32>(x_1820.x, x_1820.y, x_1820.z, x_1820.y));
        let x_1824 : vec2<f32> = u_xlat56;
        let x_1826 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_1829 : vec4<f32> = u_xlat10;
        u_xlat60 = ((x_1824 * vec2<f32>(x_1826.x, x_1826.y)) + vec2<f32>(x_1829.w, x_1829.y));
        let x_1833 : f32 = u_xlat8.x;
        u_xlat10.x = x_1833;
        let x_1835 : vec2<f32> = u_xlat56;
        let x_1837 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_1840 : vec4<f32> = u_xlat10;
        u_xlat56 = ((x_1835 * vec2<f32>(x_1837.x, x_1837.y)) + vec2<f32>(x_1840.x, x_1840.y));
        let x_1844 : vec4<f32> = u_xlat7;
        let x_1846 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1844.x, x_1844.x, x_1844.x, x_1844.x) * x_1846);
        let x_1849 : vec4<f32> = u_xlat7;
        let x_1851 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_1849.y, x_1849.y, x_1849.y, x_1849.y) * x_1851);
        let x_1854 : vec4<f32> = u_xlat7;
        let x_1856 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_1854.z, x_1854.z, x_1854.z, x_1854.z) * x_1856);
        let x_1858 : vec4<f32> = u_xlat7;
        let x_1860 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_1858.w, x_1858.w, x_1858.w, x_1858.w) * x_1860);
        let x_1863 : vec4<f32> = u_xlat12;
        let x_1864 : vec2<f32> = vec2<f32>(x_1863.x, x_1863.y);
        let x_1866 : f32 = u_xlat4.z;
        txVec13 = vec3<f32>(x_1864.x, x_1864.y, x_1866);
        let x_1873 : vec3<f32> = txVec13;
        let x_1875 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1873.xy, x_1873.z);
        u_xlat8.x = x_1875;
        let x_1878 : vec4<f32> = u_xlat12;
        let x_1879 : vec2<f32> = vec2<f32>(x_1878.z, x_1878.w);
        let x_1881 : f32 = u_xlat4.z;
        txVec14 = vec3<f32>(x_1879.x, x_1879.y, x_1881);
        let x_1889 : vec3<f32> = txVec14;
        let x_1891 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1889.xy, x_1889.z);
        u_xlat83 = x_1891;
        let x_1892 : f32 = u_xlat83;
        let x_1894 : f32 = u_xlat18.y;
        u_xlat83 = (x_1892 * x_1894);
        let x_1897 : f32 = u_xlat18.x;
        let x_1899 : f32 = u_xlat8.x;
        let x_1901 : f32 = u_xlat83;
        u_xlat8.x = ((x_1897 * x_1899) + x_1901);
        let x_1905 : vec4<f32> = u_xlat13;
        let x_1906 : vec2<f32> = vec2<f32>(x_1905.x, x_1905.y);
        let x_1908 : f32 = u_xlat4.z;
        txVec15 = vec3<f32>(x_1906.x, x_1906.y, x_1908);
        let x_1915 : vec3<f32> = txVec15;
        let x_1917 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1915.xy, x_1915.z);
        u_xlat83 = x_1917;
        let x_1919 : f32 = u_xlat18.z;
        let x_1920 : f32 = u_xlat83;
        let x_1923 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1919 * x_1920) + x_1923);
        let x_1927 : vec4<f32> = u_xlat15;
        let x_1928 : vec2<f32> = vec2<f32>(x_1927.x, x_1927.y);
        let x_1930 : f32 = u_xlat4.z;
        txVec16 = vec3<f32>(x_1928.x, x_1928.y, x_1930);
        let x_1937 : vec3<f32> = txVec16;
        let x_1939 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1937.xy, x_1937.z);
        u_xlat83 = x_1939;
        let x_1941 : f32 = u_xlat18.w;
        let x_1942 : f32 = u_xlat83;
        let x_1945 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1941 * x_1942) + x_1945);
        let x_1949 : vec4<f32> = u_xlat14;
        let x_1950 : vec2<f32> = vec2<f32>(x_1949.x, x_1949.y);
        let x_1952 : f32 = u_xlat4.z;
        txVec17 = vec3<f32>(x_1950.x, x_1950.y, x_1952);
        let x_1959 : vec3<f32> = txVec17;
        let x_1961 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1959.xy, x_1959.z);
        u_xlat83 = x_1961;
        let x_1963 : f32 = u_xlat19.x;
        let x_1964 : f32 = u_xlat83;
        let x_1967 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1963 * x_1964) + x_1967);
        let x_1971 : vec4<f32> = u_xlat14;
        let x_1972 : vec2<f32> = vec2<f32>(x_1971.z, x_1971.w);
        let x_1974 : f32 = u_xlat4.z;
        txVec18 = vec3<f32>(x_1972.x, x_1972.y, x_1974);
        let x_1981 : vec3<f32> = txVec18;
        let x_1983 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1981.xy, x_1981.z);
        u_xlat83 = x_1983;
        let x_1985 : f32 = u_xlat19.y;
        let x_1986 : f32 = u_xlat83;
        let x_1989 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1985 * x_1986) + x_1989);
        let x_1993 : vec2<f32> = u_xlat63;
        let x_1995 : f32 = u_xlat4.z;
        txVec19 = vec3<f32>(x_1993.x, x_1993.y, x_1995);
        let x_2002 : vec3<f32> = txVec19;
        let x_2004 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2002.xy, x_2002.z);
        u_xlat83 = x_2004;
        let x_2006 : f32 = u_xlat19.z;
        let x_2007 : f32 = u_xlat83;
        let x_2010 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2006 * x_2007) + x_2010);
        let x_2014 : vec4<f32> = u_xlat15;
        let x_2015 : vec2<f32> = vec2<f32>(x_2014.z, x_2014.w);
        let x_2017 : f32 = u_xlat4.z;
        txVec20 = vec3<f32>(x_2015.x, x_2015.y, x_2017);
        let x_2024 : vec3<f32> = txVec20;
        let x_2026 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2024.xy, x_2024.z);
        u_xlat83 = x_2026;
        let x_2028 : f32 = u_xlat19.w;
        let x_2029 : f32 = u_xlat83;
        let x_2032 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2028 * x_2029) + x_2032);
        let x_2036 : vec4<f32> = u_xlat16;
        let x_2037 : vec2<f32> = vec2<f32>(x_2036.x, x_2036.y);
        let x_2039 : f32 = u_xlat4.z;
        txVec21 = vec3<f32>(x_2037.x, x_2037.y, x_2039);
        let x_2046 : vec3<f32> = txVec21;
        let x_2048 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2046.xy, x_2046.z);
        u_xlat83 = x_2048;
        let x_2050 : f32 = u_xlat20.x;
        let x_2051 : f32 = u_xlat83;
        let x_2054 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2050 * x_2051) + x_2054);
        let x_2058 : vec4<f32> = u_xlat16;
        let x_2059 : vec2<f32> = vec2<f32>(x_2058.z, x_2058.w);
        let x_2061 : f32 = u_xlat4.z;
        txVec22 = vec3<f32>(x_2059.x, x_2059.y, x_2061);
        let x_2068 : vec3<f32> = txVec22;
        let x_2070 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2068.xy, x_2068.z);
        u_xlat83 = x_2070;
        let x_2072 : f32 = u_xlat20.y;
        let x_2073 : f32 = u_xlat83;
        let x_2076 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2072 * x_2073) + x_2076);
        let x_2080 : vec2<f32> = u_xlat33;
        let x_2082 : f32 = u_xlat4.z;
        txVec23 = vec3<f32>(x_2080.x, x_2080.y, x_2082);
        let x_2089 : vec3<f32> = txVec23;
        let x_2091 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2089.xy, x_2089.z);
        u_xlat33.x = x_2091;
        let x_2094 : f32 = u_xlat20.z;
        let x_2096 : f32 = u_xlat33.x;
        let x_2099 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2094 * x_2096) + x_2099);
        let x_2103 : vec4<f32> = u_xlat17;
        let x_2104 : vec2<f32> = vec2<f32>(x_2103.x, x_2103.y);
        let x_2106 : f32 = u_xlat4.z;
        txVec24 = vec3<f32>(x_2104.x, x_2104.y, x_2106);
        let x_2113 : vec3<f32> = txVec24;
        let x_2115 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2113.xy, x_2113.z);
        u_xlat33.x = x_2115;
        let x_2118 : f32 = u_xlat20.w;
        let x_2120 : f32 = u_xlat33.x;
        let x_2123 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2118 * x_2120) + x_2123);
        let x_2127 : vec4<f32> = u_xlat11;
        let x_2128 : vec2<f32> = vec2<f32>(x_2127.x, x_2127.y);
        let x_2130 : f32 = u_xlat4.z;
        txVec25 = vec3<f32>(x_2128.x, x_2128.y, x_2130);
        let x_2137 : vec3<f32> = txVec25;
        let x_2139 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2137.xy, x_2137.z);
        u_xlat33.x = x_2139;
        let x_2142 : f32 = u_xlat7.x;
        let x_2144 : f32 = u_xlat33.x;
        let x_2147 : f32 = u_xlat8.x;
        u_xlat7.x = ((x_2142 * x_2144) + x_2147);
        let x_2151 : vec4<f32> = u_xlat11;
        let x_2152 : vec2<f32> = vec2<f32>(x_2151.z, x_2151.w);
        let x_2154 : f32 = u_xlat4.z;
        txVec26 = vec3<f32>(x_2152.x, x_2152.y, x_2154);
        let x_2161 : vec3<f32> = txVec26;
        let x_2163 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2161.xy, x_2161.z);
        u_xlat8.x = x_2163;
        let x_2166 : f32 = u_xlat7.y;
        let x_2168 : f32 = u_xlat8.x;
        let x_2171 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_2166 * x_2168) + x_2171);
        let x_2175 : vec2<f32> = u_xlat60;
        let x_2177 : f32 = u_xlat4.z;
        txVec27 = vec3<f32>(x_2175.x, x_2175.y, x_2177);
        let x_2184 : vec3<f32> = txVec27;
        let x_2186 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2184.xy, x_2184.z);
        u_xlat32.x = x_2186;
        let x_2189 : f32 = u_xlat7.z;
        let x_2191 : f32 = u_xlat32.x;
        let x_2194 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_2189 * x_2191) + x_2194);
        let x_2198 : vec2<f32> = u_xlat56;
        let x_2200 : f32 = u_xlat4.z;
        txVec28 = vec3<f32>(x_2198.x, x_2198.y, x_2200);
        let x_2207 : vec3<f32> = txVec28;
        let x_2209 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2207.xy, x_2207.z);
        u_xlat56.x = x_2209;
        let x_2212 : f32 = u_xlat7.w;
        let x_2214 : f32 = u_xlat56.x;
        let x_2217 : f32 = u_xlat7.x;
        u_xlat31.x = ((x_2212 * x_2214) + x_2217);
      }
    }
  } else {
    let x_2222 : vec4<f32> = u_xlat4;
    let x_2223 : vec2<f32> = vec2<f32>(x_2222.x, x_2222.y);
    let x_2225 : f32 = u_xlat4.z;
    txVec29 = vec3<f32>(x_2223.x, x_2223.y, x_2225);
    let x_2232 : vec3<f32> = txVec29;
    let x_2234 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2232.xy, x_2232.z);
    u_xlat31.x = x_2234;
  }
  let x_2237 : f32 = x_661.x_MainLightShadowParams.x;
  u_xlat4.x = (-(x_2237) + 1.0f);
  let x_2242 : f32 = u_xlat31.x;
  let x_2244 : f32 = x_661.x_MainLightShadowParams.x;
  let x_2247 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_2242 * x_2244) + x_2247);
  let x_2252 : f32 = u_xlat4.z;
  u_xlatb29 = (0.0f >= x_2252);
  let x_2256 : f32 = u_xlat4.z;
  u_xlatb54 = (x_2256 >= 1.0f);
  let x_2258 : bool = u_xlatb54;
  let x_2259 : bool = u_xlatb29;
  u_xlatb29 = (x_2258 | x_2259);
  let x_2261 : bool = u_xlatb29;
  if (x_2261) {
    x_2263 = 1.0f;
  } else {
    let x_2268 : f32 = u_xlat4.x;
    x_2263 = x_2268;
  }
  let x_2269 : f32 = x_2263;
  u_xlat4.x = x_2269;
  let x_2271 : vec3<f32> = vs_INTERP7;
  let x_2273 : vec3<f32> = x_135.x_WorldSpaceCameraPos;
  u_xlat31 = (x_2271 + -(x_2273));
  let x_2276 : vec3<f32> = u_xlat31;
  let x_2277 : vec3<f32> = u_xlat31;
  u_xlat29.x = dot(x_2276, x_2277);
  let x_2282 : f32 = u_xlat29.x;
  let x_2284 : f32 = x_661.x_MainLightShadowParams.z;
  let x_2287 : f32 = x_661.x_MainLightShadowParams.w;
  u_xlat54 = ((x_2282 * x_2284) + x_2287);
  let x_2289 : f32 = u_xlat54;
  u_xlat54 = clamp(x_2289, 0.0f, 1.0f);
  let x_2292 : f32 = u_xlat4.x;
  u_xlat31.x = (-(x_2292) + 1.0f);
  let x_2296 : f32 = u_xlat54;
  let x_2298 : f32 = u_xlat31.x;
  let x_2301 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_2296 * x_2298) + x_2301);
  let x_2304 : vec4<f32> = u_xlat1;
  let x_2307 : vec3<f32> = u_xlat25;
  u_xlat54 = dot(-(vec3<f32>(x_2304.x, x_2304.y, x_2304.z)), x_2307);
  let x_2309 : f32 = u_xlat54;
  let x_2310 : f32 = u_xlat54;
  u_xlat54 = (x_2309 + x_2310);
  let x_2312 : vec3<f32> = u_xlat25;
  let x_2313 : f32 = u_xlat54;
  let x_2317 : vec4<f32> = u_xlat1;
  u_xlat31 = ((x_2312 * -(vec3<f32>(x_2313, x_2313, x_2313))) + -(vec3<f32>(x_2317.x, x_2317.y, x_2317.z)));
  let x_2321 : vec3<f32> = u_xlat25;
  let x_2322 : vec4<f32> = u_xlat1;
  u_xlat54 = dot(x_2321, vec3<f32>(x_2322.x, x_2322.y, x_2322.z));
  let x_2325 : f32 = u_xlat54;
  u_xlat54 = clamp(x_2325, 0.0f, 1.0f);
  let x_2327 : f32 = u_xlat54;
  u_xlat54 = (-(x_2327) + 1.0f);
  let x_2330 : f32 = u_xlat54;
  let x_2331 : f32 = u_xlat54;
  u_xlat54 = (x_2330 * x_2331);
  let x_2333 : f32 = u_xlat54;
  let x_2334 : f32 = u_xlat54;
  u_xlat54 = (x_2333 * x_2334);
  let x_2336 : f32 = u_xlat76;
  u_xlat7.x = ((-(x_2336) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2343 : f32 = u_xlat76;
  let x_2345 : f32 = u_xlat7.x;
  u_xlat76 = (x_2343 * x_2345);
  let x_2347 : f32 = u_xlat76;
  u_xlat76 = (x_2347 * 6.0f);
  let x_2358 : vec3<f32> = u_xlat31;
  let x_2359 : f32 = u_xlat76;
  let x_2360 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_2358, x_2359);
  u_xlat7 = x_2360;
  let x_2362 : f32 = u_xlat7.w;
  u_xlat76 = (x_2362 + -1.0f);
  let x_2365 : f32 = x_48.unity_SpecCube0_HDR.w;
  let x_2366 : f32 = u_xlat76;
  u_xlat76 = ((x_2365 * x_2366) + 1.0f);
  let x_2369 : f32 = u_xlat76;
  u_xlat76 = max(x_2369, 0.0f);
  let x_2371 : f32 = u_xlat76;
  u_xlat76 = log2(x_2371);
  let x_2373 : f32 = u_xlat76;
  let x_2375 : f32 = x_48.unity_SpecCube0_HDR.y;
  u_xlat76 = (x_2373 * x_2375);
  let x_2377 : f32 = u_xlat76;
  u_xlat76 = exp2(x_2377);
  let x_2379 : f32 = u_xlat76;
  let x_2381 : f32 = x_48.unity_SpecCube0_HDR.x;
  u_xlat76 = (x_2379 * x_2381);
  let x_2383 : vec4<f32> = u_xlat7;
  let x_2385 : f32 = u_xlat76;
  u_xlat31 = (vec3<f32>(x_2383.x, x_2383.y, x_2383.z) * vec3<f32>(x_2385, x_2385, x_2385));
  let x_2388 : f32 = u_xlat78;
  let x_2390 : f32 = u_xlat78;
  let x_2394 : vec2<f32> = ((vec2<f32>(x_2388, x_2388) * vec2<f32>(x_2390, x_2390)) + vec2<f32>(-1.0f, 1.0f));
  let x_2395 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2394.x, x_2394.y, x_2395.z, x_2395.w);
  let x_2398 : f32 = u_xlat7.y;
  u_xlat76 = (1.0f / x_2398);
  let x_2400 : vec3<f32> = u_xlat2;
  let x_2402 : vec4<f32> = u_xlat0;
  u_xlat32 = (-(x_2400) + vec3<f32>(x_2402.x, x_2402.x, x_2402.x));
  let x_2405 : f32 = u_xlat54;
  let x_2407 : vec3<f32> = u_xlat32;
  let x_2409 : vec3<f32> = u_xlat2;
  u_xlat32 = ((vec3<f32>(x_2405, x_2405, x_2405) * x_2407) + x_2409);
  let x_2411 : f32 = u_xlat76;
  let x_2413 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_2411, x_2411, x_2411) * x_2413);
  let x_2415 : vec3<f32> = u_xlat31;
  let x_2416 : vec3<f32> = u_xlat32;
  u_xlat31 = (x_2415 * x_2416);
  let x_2418 : vec4<f32> = u_xlat5;
  let x_2420 : vec3<f32> = u_xlat3;
  let x_2422 : vec3<f32> = u_xlat31;
  let x_2423 : vec3<f32> = ((vec3<f32>(x_2418.x, x_2418.y, x_2418.z) * x_2420) + x_2422);
  let x_2424 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2423.x, x_2423.y, x_2423.z, x_2424.w);
  let x_2427 : f32 = u_xlat4.x;
  let x_2429 : f32 = x_48.unity_LightData.z;
  u_xlat0.x = (x_2427 * x_2429);
  let x_2432 : vec3<f32> = u_xlat25;
  let x_2434 : vec4<f32> = x_135.x_MainLightPosition;
  u_xlat76 = dot(x_2432, vec3<f32>(x_2434.x, x_2434.y, x_2434.z));
  let x_2437 : f32 = u_xlat76;
  u_xlat76 = clamp(x_2437, 0.0f, 1.0f);
  let x_2440 : f32 = u_xlat0.x;
  let x_2441 : f32 = u_xlat76;
  u_xlat0.x = (x_2440 * x_2441);
  let x_2444 : vec4<f32> = u_xlat0;
  let x_2447 : vec4<f32> = x_135.x_MainLightColor;
  u_xlat31 = (vec3<f32>(x_2444.x, x_2444.x, x_2444.x) * vec3<f32>(x_2447.x, x_2447.y, x_2447.z));
  let x_2450 : vec4<f32> = u_xlat1;
  let x_2453 : vec4<f32> = x_135.x_MainLightPosition;
  u_xlat32 = (vec3<f32>(x_2450.x, x_2450.y, x_2450.z) + vec3<f32>(x_2453.x, x_2453.y, x_2453.z));
  let x_2456 : vec3<f32> = u_xlat32;
  let x_2457 : vec3<f32> = u_xlat32;
  u_xlat0.x = dot(x_2456, x_2457);
  let x_2461 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2461, 1.17549435e-38f);
  let x_2465 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_2465);
  let x_2468 : vec4<f32> = u_xlat0;
  let x_2470 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_2468.x, x_2468.x, x_2468.x) * x_2470);
  let x_2472 : vec3<f32> = u_xlat25;
  let x_2473 : vec3<f32> = u_xlat32;
  u_xlat0.x = dot(x_2472, x_2473);
  let x_2477 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_2477, 0.0f, 1.0f);
  let x_2481 : vec4<f32> = x_135.x_MainLightPosition;
  let x_2483 : vec3<f32> = u_xlat32;
  u_xlat76 = dot(vec3<f32>(x_2481.x, x_2481.y, x_2481.z), x_2483);
  let x_2485 : f32 = u_xlat76;
  u_xlat76 = clamp(x_2485, 0.0f, 1.0f);
  let x_2488 : f32 = u_xlat0.x;
  let x_2490 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2488 * x_2490);
  let x_2494 : f32 = u_xlat0.x;
  let x_2496 : f32 = u_xlat7.x;
  u_xlat0.x = ((x_2494 * x_2496) + 1.00001001358032226562f);
  let x_2501 : f32 = u_xlat76;
  let x_2502 : f32 = u_xlat76;
  u_xlat76 = (x_2501 * x_2502);
  let x_2505 : f32 = u_xlat0.x;
  let x_2507 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2505 * x_2507);
  let x_2510 : f32 = u_xlat76;
  u_xlat76 = max(x_2510, 0.10000000149011611938f);
  let x_2513 : f32 = u_xlat0.x;
  let x_2514 : f32 = u_xlat76;
  u_xlat0.x = (x_2513 * x_2514);
  let x_2517 : f32 = u_xlat80;
  let x_2519 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2517 * x_2519);
  let x_2522 : f32 = u_xlat79;
  let x_2524 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2522 / x_2524);
  let x_2527 : vec3<f32> = u_xlat2;
  let x_2528 : vec4<f32> = u_xlat0;
  let x_2531 : vec3<f32> = u_xlat3;
  u_xlat32 = ((x_2527 * vec3<f32>(x_2528.x, x_2528.x, x_2528.x)) + x_2531);
  let x_2533 : vec3<f32> = u_xlat31;
  let x_2534 : vec3<f32> = u_xlat32;
  u_xlat31 = (x_2533 * x_2534);
  let x_2537 : f32 = x_135.x_AdditionalLightsCount.x;
  let x_2539 : f32 = x_48.unity_LightData.y;
  u_xlat0.x = min(x_2537, x_2539);
  let x_2544 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_2544));
  let x_2548 : f32 = u_xlat29.x;
  let x_2551 : f32 = x_661.x_AdditionalShadowFadeParams.x;
  let x_2554 : f32 = x_661.x_AdditionalShadowFadeParams.y;
  u_xlat76 = ((x_2548 * x_2551) + x_2554);
  let x_2556 : f32 = u_xlat76;
  u_xlat76 = clamp(x_2556, 0.0f, 1.0f);
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2568 : u32 = u_xlatu_loop_1;
    let x_2569 : u32 = u_xlatu0;
    if ((x_2568 < x_2569)) {
    } else {
      break;
    }
    let x_2572 : u32 = u_xlatu_loop_1;
    u_xlatu32 = (x_2572 >> 2u);
    let x_2575 : u32 = u_xlatu_loop_1;
    u_xlati57 = bitcast<i32>((x_2575 & 3u));
    let x_2578 : u32 = u_xlatu32;
    let x_2581 : vec4<f32> = x_48.unity_LightIndices[bitcast<i32>(x_2578)];
    let x_2591 : i32 = u_xlati57;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2596 : vec4<u32> = indexable[x_2591];
    u_xlat32.x = dot(x_2581, bitcast<vec4<f32>>(x_2596));
    let x_2602 : f32 = u_xlat32.x;
    u_xlati32 = i32(x_2602);
    let x_2604 : vec3<f32> = vs_INTERP7;
    let x_2615 : i32 = u_xlati32;
    let x_2617 : vec4<f32> = x_2614.x_AdditionalLightsPosition[x_2615];
    let x_2620 : i32 = u_xlati32;
    let x_2622 : vec4<f32> = x_2614.x_AdditionalLightsPosition[x_2620];
    let x_2624 : vec3<f32> = ((-(x_2604) * vec3<f32>(x_2617.w, x_2617.w, x_2617.w)) + vec3<f32>(x_2622.x, x_2622.y, x_2622.z));
    let x_2625 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2624.x, x_2624.y, x_2624.z, x_2625.w);
    let x_2627 : vec4<f32> = u_xlat8;
    let x_2629 : vec4<f32> = u_xlat8;
    u_xlat57.x = dot(vec3<f32>(x_2627.x, x_2627.y, x_2627.z), vec3<f32>(x_2629.x, x_2629.y, x_2629.z));
    let x_2634 : f32 = u_xlat57.x;
    u_xlat57.x = max(x_2634, 0.00006103515625f);
    let x_2639 : f32 = u_xlat57.x;
    u_xlat82 = inverseSqrt(x_2639);
    let x_2641 : f32 = u_xlat82;
    let x_2643 : vec4<f32> = u_xlat8;
    let x_2645 : vec3<f32> = (vec3<f32>(x_2641, x_2641, x_2641) * vec3<f32>(x_2643.x, x_2643.y, x_2643.z));
    let x_2646 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2645.x, x_2645.y, x_2645.z, x_2646.w);
    let x_2649 : f32 = u_xlat57.x;
    u_xlat83 = (1.0f / x_2649);
    let x_2652 : f32 = u_xlat57.x;
    let x_2653 : i32 = u_xlati32;
    let x_2655 : f32 = x_2614.x_AdditionalLightsAttenuation[x_2653].x;
    u_xlat57.x = (x_2652 * x_2655);
    let x_2659 : f32 = u_xlat57.x;
    let x_2662 : f32 = u_xlat57.x;
    u_xlat57.x = ((-(x_2659) * x_2662) + 1.0f);
    let x_2667 : f32 = u_xlat57.x;
    u_xlat57.x = max(x_2667, 0.0f);
    let x_2671 : f32 = u_xlat57.x;
    let x_2673 : f32 = u_xlat57.x;
    u_xlat57.x = (x_2671 * x_2673);
    let x_2677 : f32 = u_xlat57.x;
    let x_2678 : f32 = u_xlat83;
    u_xlat57.x = (x_2677 * x_2678);
    let x_2681 : i32 = u_xlati32;
    let x_2683 : vec4<f32> = x_2614.x_AdditionalLightsSpotDir[x_2681];
    let x_2685 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_2683.x, x_2683.y, x_2683.z), vec3<f32>(x_2685.x, x_2685.y, x_2685.z));
    let x_2688 : f32 = u_xlat83;
    let x_2689 : i32 = u_xlati32;
    let x_2691 : f32 = x_2614.x_AdditionalLightsAttenuation[x_2689].z;
    let x_2693 : i32 = u_xlati32;
    let x_2695 : f32 = x_2614.x_AdditionalLightsAttenuation[x_2693].w;
    u_xlat83 = ((x_2688 * x_2691) + x_2695);
    let x_2697 : f32 = u_xlat83;
    u_xlat83 = clamp(x_2697, 0.0f, 1.0f);
    let x_2699 : f32 = u_xlat83;
    let x_2700 : f32 = u_xlat83;
    u_xlat83 = (x_2699 * x_2700);
    let x_2703 : f32 = u_xlat57.x;
    let x_2704 : f32 = u_xlat83;
    u_xlat57.x = (x_2703 * x_2704);
    let x_2709 : i32 = u_xlati32;
    let x_2711 : f32 = x_661.x_AdditionalShadowParams[x_2709].w;
    u_xlati83 = i32(x_2711);
    let x_2714 : i32 = u_xlati83;
    u_xlatb84 = (x_2714 >= 0i);
    let x_2716 : bool = u_xlatb84;
    if (x_2716) {
      let x_2720 : i32 = u_xlati32;
      let x_2722 : f32 = x_661.x_AdditionalShadowParams[x_2720].z;
      u_xlatb84 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2722, x_2722, x_2722, x_2722))));
      let x_2726 : bool = u_xlatb84;
      if (x_2726) {
        let x_2730 : vec4<f32> = u_xlat9;
        let x_2733 : vec4<f32> = u_xlat9;
        let x_2736 : vec4<bool> = (abs(vec4<f32>(x_2730.z, x_2730.z, x_2730.y, x_2730.z)) >= abs(vec4<f32>(x_2733.x, x_2733.y, x_2733.x, x_2733.x)));
        let x_2738 : vec3<bool> = vec3<bool>(x_2736.x, x_2736.y, x_2736.z);
        let x_2739 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_2738.x, x_2738.y, x_2738.z, x_2739.w);
        let x_2742 : bool = u_xlatb10.y;
        let x_2744 : bool = u_xlatb10.x;
        u_xlatb84 = (x_2742 & x_2744);
        let x_2746 : vec4<f32> = u_xlat9;
        let x_2749 : vec4<bool> = (-(vec4<f32>(x_2746.z, x_2746.y, x_2746.z, x_2746.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2750 : vec3<bool> = vec3<bool>(x_2749.x, x_2749.y, x_2749.w);
        let x_2751 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_2750.x, x_2750.y, x_2751.z, x_2750.z);
        let x_2754 : bool = u_xlatb10.x;
        u_xlat10.x = select(4.0f, 5.0f, x_2754);
        let x_2759 : bool = u_xlatb10.y;
        u_xlat10.y = select(2.0f, 3.0f, x_2759);
        let x_2764 : bool = u_xlatb10.w;
        u_xlat85 = select(0.0f, 1.0f, x_2764);
        let x_2768 : bool = u_xlatb10.z;
        if (x_2768) {
          let x_2773 : f32 = u_xlat10.y;
          x_2769 = x_2773;
        } else {
          let x_2775 : f32 = u_xlat85;
          x_2769 = x_2775;
        }
        let x_2776 : f32 = x_2769;
        u_xlat35 = x_2776;
        let x_2778 : bool = u_xlatb84;
        if (x_2778) {
          let x_2783 : f32 = u_xlat10.x;
          x_2779 = x_2783;
        } else {
          let x_2785 : f32 = u_xlat35;
          x_2779 = x_2785;
        }
        let x_2786 : f32 = x_2779;
        u_xlat84 = x_2786;
        let x_2787 : i32 = u_xlati32;
        let x_2789 : f32 = x_661.x_AdditionalShadowParams[x_2787].w;
        u_xlat10.x = trunc(x_2789);
        let x_2792 : f32 = u_xlat84;
        let x_2794 : f32 = u_xlat10.x;
        u_xlat84 = (x_2792 + x_2794);
        let x_2796 : f32 = u_xlat84;
        u_xlati83 = i32(x_2796);
      }
      let x_2798 : i32 = u_xlati83;
      u_xlati83 = (x_2798 << bitcast<u32>(2i));
      let x_2800 : vec3<f32> = vs_INTERP7;
      let x_2803 : i32 = u_xlati83;
      let x_2806 : i32 = u_xlati83;
      let x_2810 : vec4<f32> = x_661.x_AdditionalLightsWorldToShadow[((x_2803 + 1i) / 4i)][((x_2806 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_2800.y, x_2800.y, x_2800.y, x_2800.y) * x_2810);
      let x_2812 : i32 = u_xlati83;
      let x_2814 : i32 = u_xlati83;
      let x_2817 : vec4<f32> = x_661.x_AdditionalLightsWorldToShadow[(x_2812 / 4i)][(x_2814 % 4i)];
      let x_2818 : vec3<f32> = vs_INTERP7;
      let x_2821 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2817 * vec4<f32>(x_2818.x, x_2818.x, x_2818.x, x_2818.x)) + x_2821);
      let x_2823 : i32 = u_xlati83;
      let x_2826 : i32 = u_xlati83;
      let x_2830 : vec4<f32> = x_661.x_AdditionalLightsWorldToShadow[((x_2823 + 2i) / 4i)][((x_2826 + 2i) % 4i)];
      let x_2831 : vec3<f32> = vs_INTERP7;
      let x_2834 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2830 * vec4<f32>(x_2831.z, x_2831.z, x_2831.z, x_2831.z)) + x_2834);
      let x_2836 : vec4<f32> = u_xlat10;
      let x_2837 : i32 = u_xlati83;
      let x_2840 : i32 = u_xlati83;
      let x_2844 : vec4<f32> = x_661.x_AdditionalLightsWorldToShadow[((x_2837 + 3i) / 4i)][((x_2840 + 3i) % 4i)];
      u_xlat10 = (x_2836 + x_2844);
      let x_2846 : vec4<f32> = u_xlat10;
      let x_2848 : vec4<f32> = u_xlat10;
      let x_2850 : vec3<f32> = (vec3<f32>(x_2846.x, x_2846.y, x_2846.z) / vec3<f32>(x_2848.w, x_2848.w, x_2848.w));
      let x_2851 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2850.x, x_2850.y, x_2850.z, x_2851.w);
      let x_2854 : i32 = u_xlati32;
      let x_2856 : f32 = x_661.x_AdditionalShadowParams[x_2854].y;
      u_xlatb83 = (0.0f < x_2856);
      let x_2858 : bool = u_xlatb83;
      if (x_2858) {
        let x_2861 : i32 = u_xlati32;
        let x_2863 : f32 = x_661.x_AdditionalShadowParams[x_2861].y;
        u_xlatb83 = (1.0f == x_2863);
        let x_2865 : bool = u_xlatb83;
        if (x_2865) {
          let x_2868 : vec4<f32> = u_xlat10;
          let x_2872 : vec4<f32> = x_661.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2868.x, x_2868.y, x_2868.x, x_2868.y) + x_2872);
          let x_2875 : vec4<f32> = u_xlat11;
          let x_2876 : vec2<f32> = vec2<f32>(x_2875.x, x_2875.y);
          let x_2878 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2876.x, x_2876.y, x_2878);
          let x_2886 : vec3<f32> = txVec30;
          let x_2888 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2886.xy, x_2886.z);
          u_xlat12.x = x_2888;
          let x_2891 : vec4<f32> = u_xlat11;
          let x_2892 : vec2<f32> = vec2<f32>(x_2891.z, x_2891.w);
          let x_2894 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_2892.x, x_2892.y, x_2894);
          let x_2901 : vec3<f32> = txVec31;
          let x_2903 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2901.xy, x_2901.z);
          u_xlat12.y = x_2903;
          let x_2905 : vec4<f32> = u_xlat10;
          let x_2909 : vec4<f32> = x_661.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_2905.x, x_2905.y, x_2905.x, x_2905.y) + x_2909);
          let x_2912 : vec4<f32> = u_xlat11;
          let x_2913 : vec2<f32> = vec2<f32>(x_2912.x, x_2912.y);
          let x_2915 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_2913.x, x_2913.y, x_2915);
          let x_2922 : vec3<f32> = txVec32;
          let x_2924 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2922.xy, x_2922.z);
          u_xlat12.z = x_2924;
          let x_2927 : vec4<f32> = u_xlat11;
          let x_2928 : vec2<f32> = vec2<f32>(x_2927.z, x_2927.w);
          let x_2930 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_2928.x, x_2928.y, x_2930);
          let x_2937 : vec3<f32> = txVec33;
          let x_2939 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2937.xy, x_2937.z);
          u_xlat12.w = x_2939;
          let x_2941 : vec4<f32> = u_xlat12;
          u_xlat83 = dot(x_2941, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2944 : i32 = u_xlati32;
          let x_2946 : f32 = x_661.x_AdditionalShadowParams[x_2944].y;
          u_xlatb84 = (2.0f == x_2946);
          let x_2948 : bool = u_xlatb84;
          if (x_2948) {
            let x_2951 : vec4<f32> = u_xlat10;
            let x_2955 : vec4<f32> = x_661.x_AdditionalShadowmapSize;
            let x_2958 : vec2<f32> = ((vec2<f32>(x_2951.x, x_2951.y) * vec2<f32>(x_2955.z, x_2955.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2959 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2958.x, x_2958.y, x_2959.z, x_2959.w);
            let x_2961 : vec4<f32> = u_xlat11;
            let x_2963 : vec2<f32> = floor(vec2<f32>(x_2961.x, x_2961.y));
            let x_2964 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2963.x, x_2963.y, x_2964.z, x_2964.w);
            let x_2967 : vec4<f32> = u_xlat10;
            let x_2970 : vec4<f32> = x_661.x_AdditionalShadowmapSize;
            let x_2973 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2967.x, x_2967.y) * vec2<f32>(x_2970.z, x_2970.w)) + -(vec2<f32>(x_2973.x, x_2973.y)));
            let x_2977 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2977.x, x_2977.x, x_2977.y, x_2977.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2980 : vec4<f32> = u_xlat12;
            let x_2982 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2980.x, x_2980.x, x_2980.z, x_2980.z) * vec4<f32>(x_2982.x, x_2982.x, x_2982.z, x_2982.z));
            let x_2985 : vec4<f32> = u_xlat13;
            let x_2987 : vec2<f32> = (vec2<f32>(x_2985.y, x_2985.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2988 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2987.x, x_2988.y, x_2987.y, x_2988.w);
            let x_2990 : vec4<f32> = u_xlat13;
            let x_2993 : vec2<f32> = u_xlat61;
            let x_2995 : vec2<f32> = ((vec2<f32>(x_2990.x, x_2990.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2993));
            let x_2996 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2995.x, x_2995.y, x_2996.z, x_2996.w);
            let x_2998 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_2998) + vec2<f32>(1.0f, 1.0f));
            let x_3001 : vec2<f32> = u_xlat61;
            let x_3002 : vec2<f32> = min(x_3001, vec2<f32>(0.0f, 0.0f));
            let x_3003 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3002.x, x_3002.y, x_3003.z, x_3003.w);
            let x_3005 : vec4<f32> = u_xlat14;
            let x_3008 : vec4<f32> = u_xlat14;
            let x_3011 : vec2<f32> = u_xlat63;
            let x_3012 : vec2<f32> = ((-(vec2<f32>(x_3005.x, x_3005.y)) * vec2<f32>(x_3008.x, x_3008.y)) + x_3011);
            let x_3013 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3012.x, x_3012.y, x_3013.z, x_3013.w);
            let x_3015 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_3015, vec2<f32>(0.0f, 0.0f));
            let x_3017 : vec2<f32> = u_xlat61;
            let x_3019 : vec2<f32> = u_xlat61;
            let x_3021 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_3017) * x_3019) + vec2<f32>(x_3021.y, x_3021.w));
            let x_3024 : vec4<f32> = u_xlat14;
            let x_3026 : vec2<f32> = (vec2<f32>(x_3024.x, x_3024.y) + vec2<f32>(1.0f, 1.0f));
            let x_3027 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3026.x, x_3026.y, x_3027.z, x_3027.w);
            let x_3029 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_3029 + vec2<f32>(1.0f, 1.0f));
            let x_3031 : vec4<f32> = u_xlat13;
            let x_3033 : vec2<f32> = (vec2<f32>(x_3031.x, x_3031.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3034 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3033.x, x_3033.y, x_3034.z, x_3034.w);
            let x_3036 : vec2<f32> = u_xlat63;
            let x_3037 : vec2<f32> = (x_3036 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3038 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3037.x, x_3037.y, x_3038.z, x_3038.w);
            let x_3040 : vec4<f32> = u_xlat14;
            let x_3042 : vec2<f32> = (vec2<f32>(x_3040.x, x_3040.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3043 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3042.x, x_3042.y, x_3043.z, x_3043.w);
            let x_3045 : vec2<f32> = u_xlat61;
            let x_3046 : vec2<f32> = (x_3045 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3047 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3046.x, x_3046.y, x_3047.z, x_3047.w);
            let x_3049 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_3049.y, x_3049.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3053 : f32 = u_xlat14.x;
            u_xlat15.z = x_3053;
            let x_3056 : f32 = u_xlat61.x;
            u_xlat15.w = x_3056;
            let x_3059 : f32 = u_xlat16.x;
            u_xlat13.z = x_3059;
            let x_3062 : f32 = u_xlat12.x;
            u_xlat13.w = x_3062;
            let x_3064 : vec4<f32> = u_xlat13;
            let x_3066 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_3064.z, x_3064.w, x_3064.x, x_3064.z) + vec4<f32>(x_3066.z, x_3066.w, x_3066.x, x_3066.z));
            let x_3070 : f32 = u_xlat15.y;
            u_xlat14.z = x_3070;
            let x_3073 : f32 = u_xlat61.y;
            u_xlat14.w = x_3073;
            let x_3076 : f32 = u_xlat13.y;
            u_xlat16.z = x_3076;
            let x_3079 : f32 = u_xlat12.z;
            u_xlat16.w = x_3079;
            let x_3081 : vec4<f32> = u_xlat14;
            let x_3083 : vec4<f32> = u_xlat16;
            let x_3085 : vec3<f32> = (vec3<f32>(x_3081.z, x_3081.y, x_3081.w) + vec3<f32>(x_3083.z, x_3083.y, x_3083.w));
            let x_3086 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3085.x, x_3085.y, x_3085.z, x_3086.w);
            let x_3088 : vec4<f32> = u_xlat13;
            let x_3090 : vec4<f32> = u_xlat17;
            let x_3092 : vec3<f32> = (vec3<f32>(x_3088.x, x_3088.z, x_3088.w) / vec3<f32>(x_3090.z, x_3090.w, x_3090.y));
            let x_3093 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3092.x, x_3092.y, x_3092.z, x_3093.w);
            let x_3095 : vec4<f32> = u_xlat13;
            let x_3097 : vec3<f32> = (vec3<f32>(x_3095.x, x_3095.y, x_3095.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3098 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3097.x, x_3097.y, x_3097.z, x_3098.w);
            let x_3100 : vec4<f32> = u_xlat16;
            let x_3102 : vec4<f32> = u_xlat12;
            let x_3104 : vec3<f32> = (vec3<f32>(x_3100.z, x_3100.y, x_3100.w) / vec3<f32>(x_3102.x, x_3102.y, x_3102.z));
            let x_3105 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3104.x, x_3104.y, x_3104.z, x_3105.w);
            let x_3107 : vec4<f32> = u_xlat14;
            let x_3109 : vec3<f32> = (vec3<f32>(x_3107.x, x_3107.y, x_3107.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3110 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3109.x, x_3109.y, x_3109.z, x_3110.w);
            let x_3112 : vec4<f32> = u_xlat13;
            let x_3115 : vec4<f32> = x_661.x_AdditionalShadowmapSize;
            let x_3117 : vec3<f32> = (vec3<f32>(x_3112.y, x_3112.x, x_3112.z) * vec3<f32>(x_3115.x, x_3115.x, x_3115.x));
            let x_3118 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3117.x, x_3117.y, x_3117.z, x_3118.w);
            let x_3120 : vec4<f32> = u_xlat14;
            let x_3123 : vec4<f32> = x_661.x_AdditionalShadowmapSize;
            let x_3125 : vec3<f32> = (vec3<f32>(x_3120.x, x_3120.y, x_3120.z) * vec3<f32>(x_3123.y, x_3123.y, x_3123.y));
            let x_3126 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3125.x, x_3125.y, x_3125.z, x_3126.w);
            let x_3129 : f32 = u_xlat14.x;
            u_xlat13.w = x_3129;
            let x_3131 : vec4<f32> = u_xlat11;
            let x_3134 : vec4<f32> = x_661.x_AdditionalShadowmapSize;
            let x_3137 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_3131.x, x_3131.y, x_3131.x, x_3131.y) * vec4<f32>(x_3134.x, x_3134.y, x_3134.x, x_3134.y)) + vec4<f32>(x_3137.y, x_3137.w, x_3137.x, x_3137.w));
            let x_3140 : vec4<f32> = u_xlat11;
            let x_3143 : vec4<f32> = x_661.x_AdditionalShadowmapSize;
            let x_3146 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_3140.x, x_3140.y) * vec2<f32>(x_3143.x, x_3143.y)) + vec2<f32>(x_3146.z, x_3146.w));
            let x_3150 : f32 = u_xlat13.y;
            u_xlat14.w = x_3150;
            let x_3152 : vec4<f32> = u_xlat14;
            let x_3153 : vec2<f32> = vec2<f32>(x_3152.y, x_3152.z);
            let x_3154 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3154.x, x_3153.x, x_3154.z, x_3153.y);
            let x_3156 : vec4<f32> = u_xlat11;
            let x_3159 : vec4<f32> = x_661.x_AdditionalShadowmapSize;
            let x_3162 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_3156.x, x_3156.y, x_3156.x, x_3156.y) * vec4<f32>(x_3159.x, x_3159.y, x_3159.x, x_3159.y)) + vec4<f32>(x_3162.x, x_3162.y, x_3162.z, x_3162.y));
            let x_3165 : vec4<f32> = u_xlat11;
            let x_3168 : vec4<f32> = x_661.x_AdditionalShadowmapSize;
            let x_3171 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3165.x, x_3165.y, x_3165.x, x_3165.y) * vec4<f32>(x_3168.x, x_3168.y, x_3168.x, x_3168.y)) + vec4<f32>(x_3171.w, x_3171.y, x_3171.w, x_3171.z));
            let x_3174 : vec4<f32> = u_xlat11;
            let x_3177 : vec4<f32> = x_661.x_AdditionalShadowmapSize;
            let x_3180 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_3174.x, x_3174.y, x_3174.x, x_3174.y) * vec4<f32>(x_3177.x, x_3177.y, x_3177.x, x_3177.y)) + vec4<f32>(x_3180.x, x_3180.w, x_3180.z, x_3180.w));
            let x_3183 : vec4<f32> = u_xlat12;
            let x_3185 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_3183.x, x_3183.x, x_3183.x, x_3183.y) * vec4<f32>(x_3185.z, x_3185.w, x_3185.y, x_3185.z));
            let x_3188 : vec4<f32> = u_xlat12;
            let x_3190 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_3188.y, x_3188.y, x_3188.z, x_3188.z) * x_3190);
            let x_3193 : f32 = u_xlat12.z;
            let x_3195 : f32 = u_xlat17.y;
            u_xlat84 = (x_3193 * x_3195);
            let x_3198 : vec4<f32> = u_xlat15;
            let x_3199 : vec2<f32> = vec2<f32>(x_3198.x, x_3198.y);
            let x_3201 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_3199.x, x_3199.y, x_3201);
            let x_3208 : vec3<f32> = txVec34;
            let x_3210 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3208.xy, x_3208.z);
            u_xlat85 = x_3210;
            let x_3212 : vec4<f32> = u_xlat15;
            let x_3213 : vec2<f32> = vec2<f32>(x_3212.z, x_3212.w);
            let x_3215 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_3213.x, x_3213.y, x_3215);
            let x_3222 : vec3<f32> = txVec35;
            let x_3224 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3222.xy, x_3222.z);
            u_xlat11.x = x_3224;
            let x_3227 : f32 = u_xlat11.x;
            let x_3229 : f32 = u_xlat18.y;
            u_xlat11.x = (x_3227 * x_3229);
            let x_3233 : f32 = u_xlat18.x;
            let x_3234 : f32 = u_xlat85;
            let x_3237 : f32 = u_xlat11.x;
            u_xlat85 = ((x_3233 * x_3234) + x_3237);
            let x_3240 : vec2<f32> = u_xlat61;
            let x_3242 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_3240.x, x_3240.y, x_3242);
            let x_3249 : vec3<f32> = txVec36;
            let x_3251 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3249.xy, x_3249.z);
            u_xlat11.x = x_3251;
            let x_3254 : f32 = u_xlat18.z;
            let x_3256 : f32 = u_xlat11.x;
            let x_3258 : f32 = u_xlat85;
            u_xlat85 = ((x_3254 * x_3256) + x_3258);
            let x_3261 : vec4<f32> = u_xlat14;
            let x_3262 : vec2<f32> = vec2<f32>(x_3261.x, x_3261.y);
            let x_3264 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_3262.x, x_3262.y, x_3264);
            let x_3271 : vec3<f32> = txVec37;
            let x_3273 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3271.xy, x_3271.z);
            u_xlat11.x = x_3273;
            let x_3276 : f32 = u_xlat18.w;
            let x_3278 : f32 = u_xlat11.x;
            let x_3280 : f32 = u_xlat85;
            u_xlat85 = ((x_3276 * x_3278) + x_3280);
            let x_3283 : vec4<f32> = u_xlat16;
            let x_3284 : vec2<f32> = vec2<f32>(x_3283.x, x_3283.y);
            let x_3286 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_3284.x, x_3284.y, x_3286);
            let x_3293 : vec3<f32> = txVec38;
            let x_3295 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3293.xy, x_3293.z);
            u_xlat11.x = x_3295;
            let x_3298 : f32 = u_xlat19.x;
            let x_3300 : f32 = u_xlat11.x;
            let x_3302 : f32 = u_xlat85;
            u_xlat85 = ((x_3298 * x_3300) + x_3302);
            let x_3305 : vec4<f32> = u_xlat16;
            let x_3306 : vec2<f32> = vec2<f32>(x_3305.z, x_3305.w);
            let x_3308 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_3306.x, x_3306.y, x_3308);
            let x_3315 : vec3<f32> = txVec39;
            let x_3317 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3315.xy, x_3315.z);
            u_xlat11.x = x_3317;
            let x_3320 : f32 = u_xlat19.y;
            let x_3322 : f32 = u_xlat11.x;
            let x_3324 : f32 = u_xlat85;
            u_xlat85 = ((x_3320 * x_3322) + x_3324);
            let x_3327 : vec4<f32> = u_xlat14;
            let x_3328 : vec2<f32> = vec2<f32>(x_3327.z, x_3327.w);
            let x_3330 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_3328.x, x_3328.y, x_3330);
            let x_3337 : vec3<f32> = txVec40;
            let x_3339 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3337.xy, x_3337.z);
            u_xlat11.x = x_3339;
            let x_3342 : f32 = u_xlat19.z;
            let x_3344 : f32 = u_xlat11.x;
            let x_3346 : f32 = u_xlat85;
            u_xlat85 = ((x_3342 * x_3344) + x_3346);
            let x_3349 : vec4<f32> = u_xlat13;
            let x_3350 : vec2<f32> = vec2<f32>(x_3349.x, x_3349.y);
            let x_3352 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_3350.x, x_3350.y, x_3352);
            let x_3359 : vec3<f32> = txVec41;
            let x_3361 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3359.xy, x_3359.z);
            u_xlat11.x = x_3361;
            let x_3364 : f32 = u_xlat19.w;
            let x_3366 : f32 = u_xlat11.x;
            let x_3368 : f32 = u_xlat85;
            u_xlat85 = ((x_3364 * x_3366) + x_3368);
            let x_3371 : vec4<f32> = u_xlat13;
            let x_3372 : vec2<f32> = vec2<f32>(x_3371.z, x_3371.w);
            let x_3374 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_3372.x, x_3372.y, x_3374);
            let x_3381 : vec3<f32> = txVec42;
            let x_3383 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3381.xy, x_3381.z);
            u_xlat11.x = x_3383;
            let x_3385 : f32 = u_xlat84;
            let x_3387 : f32 = u_xlat11.x;
            let x_3389 : f32 = u_xlat85;
            u_xlat83 = ((x_3385 * x_3387) + x_3389);
          } else {
            let x_3392 : vec4<f32> = u_xlat10;
            let x_3395 : vec4<f32> = x_661.x_AdditionalShadowmapSize;
            let x_3398 : vec2<f32> = ((vec2<f32>(x_3392.x, x_3392.y) * vec2<f32>(x_3395.z, x_3395.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3399 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3398.x, x_3398.y, x_3399.z, x_3399.w);
            let x_3401 : vec4<f32> = u_xlat11;
            let x_3403 : vec2<f32> = floor(vec2<f32>(x_3401.x, x_3401.y));
            let x_3404 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3403.x, x_3403.y, x_3404.z, x_3404.w);
            let x_3406 : vec4<f32> = u_xlat10;
            let x_3409 : vec4<f32> = x_661.x_AdditionalShadowmapSize;
            let x_3412 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3406.x, x_3406.y) * vec2<f32>(x_3409.z, x_3409.w)) + -(vec2<f32>(x_3412.x, x_3412.y)));
            let x_3416 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3416.x, x_3416.x, x_3416.y, x_3416.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3419 : vec4<f32> = u_xlat12;
            let x_3421 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3419.x, x_3419.x, x_3419.z, x_3419.z) * vec4<f32>(x_3421.x, x_3421.x, x_3421.z, x_3421.z));
            let x_3424 : vec4<f32> = u_xlat13;
            let x_3426 : vec2<f32> = (vec2<f32>(x_3424.y, x_3424.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3427 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3427.x, x_3426.x, x_3427.z, x_3426.y);
            let x_3429 : vec4<f32> = u_xlat13;
            let x_3432 : vec2<f32> = u_xlat61;
            let x_3434 : vec2<f32> = ((vec2<f32>(x_3429.x, x_3429.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3432));
            let x_3435 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3434.x, x_3435.y, x_3434.y, x_3435.w);
            let x_3437 : vec2<f32> = u_xlat61;
            let x_3439 : vec2<f32> = (-(x_3437) + vec2<f32>(1.0f, 1.0f));
            let x_3440 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3439.x, x_3439.y, x_3440.z, x_3440.w);
            let x_3442 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_3442, vec2<f32>(0.0f, 0.0f));
            let x_3444 : vec2<f32> = u_xlat63;
            let x_3446 : vec2<f32> = u_xlat63;
            let x_3448 : vec4<f32> = u_xlat13;
            let x_3450 : vec2<f32> = ((-(x_3444) * x_3446) + vec2<f32>(x_3448.x, x_3448.y));
            let x_3451 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3450.x, x_3450.y, x_3451.z, x_3451.w);
            let x_3453 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_3453, vec2<f32>(0.0f, 0.0f));
            let x_3456 : vec2<f32> = u_xlat63;
            let x_3458 : vec2<f32> = u_xlat63;
            let x_3460 : vec4<f32> = u_xlat12;
            let x_3462 : vec2<f32> = ((-(x_3456) * x_3458) + vec2<f32>(x_3460.y, x_3460.w));
            let x_3463 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_3462.x, x_3463.y, x_3462.y);
            let x_3465 : vec4<f32> = u_xlat13;
            let x_3467 : vec2<f32> = (vec2<f32>(x_3465.x, x_3465.y) + vec2<f32>(2.0f, 2.0f));
            let x_3468 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3467.x, x_3467.y, x_3468.z, x_3468.w);
            let x_3470 : vec3<f32> = u_xlat37;
            let x_3472 : vec2<f32> = (vec2<f32>(x_3470.x, x_3470.z) + vec2<f32>(2.0f, 2.0f));
            let x_3473 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3473.x, x_3472.x, x_3473.z, x_3472.y);
            let x_3476 : f32 = u_xlat12.y;
            u_xlat15.z = (x_3476 * 0.08163200318813323975f);
            let x_3479 : vec4<f32> = u_xlat12;
            let x_3482 : vec3<f32> = (vec3<f32>(x_3479.z, x_3479.x, x_3479.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3483 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3482.x, x_3482.y, x_3482.z, x_3483.w);
            let x_3485 : vec4<f32> = u_xlat13;
            let x_3487 : vec2<f32> = (vec2<f32>(x_3485.x, x_3485.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3488 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3487.x, x_3487.y, x_3488.z, x_3488.w);
            let x_3491 : f32 = u_xlat16.y;
            u_xlat15.x = x_3491;
            let x_3493 : vec2<f32> = u_xlat61;
            let x_3496 : vec2<f32> = ((vec2<f32>(x_3493.x, x_3493.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3497 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3497.x, x_3496.x, x_3497.z, x_3496.y);
            let x_3499 : vec2<f32> = u_xlat61;
            let x_3502 : vec2<f32> = ((vec2<f32>(x_3499.x, x_3499.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3503 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3502.x, x_3503.y, x_3502.y, x_3503.w);
            let x_3506 : f32 = u_xlat12.x;
            u_xlat13.y = x_3506;
            let x_3509 : f32 = u_xlat14.y;
            u_xlat13.w = x_3509;
            let x_3511 : vec4<f32> = u_xlat13;
            let x_3512 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3511 + x_3512);
            let x_3514 : vec2<f32> = u_xlat61;
            let x_3517 : vec2<f32> = ((vec2<f32>(x_3514.y, x_3514.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3518 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3518.x, x_3517.x, x_3518.z, x_3517.y);
            let x_3520 : vec2<f32> = u_xlat61;
            let x_3523 : vec2<f32> = ((vec2<f32>(x_3520.y, x_3520.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3524 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3523.x, x_3524.y, x_3523.y, x_3524.w);
            let x_3527 : f32 = u_xlat12.y;
            u_xlat14.y = x_3527;
            let x_3529 : vec4<f32> = u_xlat14;
            let x_3530 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_3529 + x_3530);
            let x_3532 : vec4<f32> = u_xlat13;
            let x_3533 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_3532 / x_3533);
            let x_3535 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3535 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3537 : vec4<f32> = u_xlat14;
            let x_3538 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_3537 / x_3538);
            let x_3540 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3540 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3542 : vec4<f32> = u_xlat13;
            let x_3545 : vec4<f32> = x_661.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3542.w, x_3542.x, x_3542.y, x_3542.z) * vec4<f32>(x_3545.x, x_3545.x, x_3545.x, x_3545.x));
            let x_3548 : vec4<f32> = u_xlat14;
            let x_3551 : vec4<f32> = x_661.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3548.x, x_3548.w, x_3548.y, x_3548.z) * vec4<f32>(x_3551.y, x_3551.y, x_3551.y, x_3551.y));
            let x_3554 : vec4<f32> = u_xlat13;
            let x_3555 : vec3<f32> = vec3<f32>(x_3554.y, x_3554.z, x_3554.w);
            let x_3556 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3555.x, x_3556.y, x_3555.y, x_3555.z);
            let x_3559 : f32 = u_xlat14.x;
            u_xlat16.y = x_3559;
            let x_3561 : vec4<f32> = u_xlat11;
            let x_3564 : vec4<f32> = x_661.x_AdditionalShadowmapSize;
            let x_3567 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3561.x, x_3561.y, x_3561.x, x_3561.y) * vec4<f32>(x_3564.x, x_3564.y, x_3564.x, x_3564.y)) + vec4<f32>(x_3567.x, x_3567.y, x_3567.z, x_3567.y));
            let x_3570 : vec4<f32> = u_xlat11;
            let x_3573 : vec4<f32> = x_661.x_AdditionalShadowmapSize;
            let x_3576 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_3570.x, x_3570.y) * vec2<f32>(x_3573.x, x_3573.y)) + vec2<f32>(x_3576.w, x_3576.y));
            let x_3580 : f32 = u_xlat16.y;
            u_xlat13.y = x_3580;
            let x_3583 : f32 = u_xlat14.z;
            u_xlat16.y = x_3583;
            let x_3585 : vec4<f32> = u_xlat11;
            let x_3588 : vec4<f32> = x_661.x_AdditionalShadowmapSize;
            let x_3591 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3585.x, x_3585.y, x_3585.x, x_3585.y) * vec4<f32>(x_3588.x, x_3588.y, x_3588.x, x_3588.y)) + vec4<f32>(x_3591.x, x_3591.y, x_3591.z, x_3591.y));
            let x_3594 : vec4<f32> = u_xlat11;
            let x_3597 : vec4<f32> = x_661.x_AdditionalShadowmapSize;
            let x_3600 : vec4<f32> = u_xlat16;
            let x_3602 : vec2<f32> = ((vec2<f32>(x_3594.x, x_3594.y) * vec2<f32>(x_3597.x, x_3597.y)) + vec2<f32>(x_3600.w, x_3600.y));
            let x_3603 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3602.x, x_3602.y, x_3603.z, x_3603.w);
            let x_3606 : f32 = u_xlat16.y;
            u_xlat13.z = x_3606;
            let x_3608 : vec4<f32> = u_xlat11;
            let x_3611 : vec4<f32> = x_661.x_AdditionalShadowmapSize;
            let x_3614 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3608.x, x_3608.y, x_3608.x, x_3608.y) * vec4<f32>(x_3611.x, x_3611.y, x_3611.x, x_3611.y)) + vec4<f32>(x_3614.x, x_3614.y, x_3614.x, x_3614.z));
            let x_3618 : f32 = u_xlat14.w;
            u_xlat16.y = x_3618;
            let x_3621 : vec4<f32> = u_xlat11;
            let x_3624 : vec4<f32> = x_661.x_AdditionalShadowmapSize;
            let x_3627 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3621.x, x_3621.y, x_3621.x, x_3621.y) * vec4<f32>(x_3624.x, x_3624.y, x_3624.x, x_3624.y)) + vec4<f32>(x_3627.x, x_3627.y, x_3627.z, x_3627.y));
            let x_3631 : vec4<f32> = u_xlat11;
            let x_3634 : vec4<f32> = x_661.x_AdditionalShadowmapSize;
            let x_3637 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3631.x, x_3631.y) * vec2<f32>(x_3634.x, x_3634.y)) + vec2<f32>(x_3637.w, x_3637.y));
            let x_3641 : f32 = u_xlat16.y;
            u_xlat13.w = x_3641;
            let x_3644 : vec4<f32> = u_xlat11;
            let x_3647 : vec4<f32> = x_661.x_AdditionalShadowmapSize;
            let x_3650 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3644.x, x_3644.y) * vec2<f32>(x_3647.x, x_3647.y)) + vec2<f32>(x_3650.x, x_3650.w));
            let x_3653 : vec4<f32> = u_xlat16;
            let x_3654 : vec3<f32> = vec3<f32>(x_3653.x, x_3653.z, x_3653.w);
            let x_3655 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3654.x, x_3655.y, x_3654.y, x_3654.z);
            let x_3657 : vec4<f32> = u_xlat11;
            let x_3660 : vec4<f32> = x_661.x_AdditionalShadowmapSize;
            let x_3663 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3657.x, x_3657.y, x_3657.x, x_3657.y) * vec4<f32>(x_3660.x, x_3660.y, x_3660.x, x_3660.y)) + vec4<f32>(x_3663.x, x_3663.y, x_3663.z, x_3663.y));
            let x_3667 : vec4<f32> = u_xlat11;
            let x_3670 : vec4<f32> = x_661.x_AdditionalShadowmapSize;
            let x_3673 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3667.x, x_3667.y) * vec2<f32>(x_3670.x, x_3670.y)) + vec2<f32>(x_3673.w, x_3673.y));
            let x_3677 : f32 = u_xlat13.x;
            u_xlat14.x = x_3677;
            let x_3679 : vec4<f32> = u_xlat11;
            let x_3682 : vec4<f32> = x_661.x_AdditionalShadowmapSize;
            let x_3685 : vec4<f32> = u_xlat14;
            let x_3687 : vec2<f32> = ((vec2<f32>(x_3679.x, x_3679.y) * vec2<f32>(x_3682.x, x_3682.y)) + vec2<f32>(x_3685.x, x_3685.y));
            let x_3688 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3687.x, x_3687.y, x_3688.z, x_3688.w);
            let x_3691 : vec4<f32> = u_xlat12;
            let x_3693 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3691.x, x_3691.x, x_3691.x, x_3691.x) * x_3693);
            let x_3696 : vec4<f32> = u_xlat12;
            let x_3698 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3696.y, x_3696.y, x_3696.y, x_3696.y) * x_3698);
            let x_3701 : vec4<f32> = u_xlat12;
            let x_3703 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3701.z, x_3701.z, x_3701.z, x_3701.z) * x_3703);
            let x_3705 : vec4<f32> = u_xlat12;
            let x_3707 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3705.w, x_3705.w, x_3705.w, x_3705.w) * x_3707);
            let x_3710 : vec4<f32> = u_xlat17;
            let x_3711 : vec2<f32> = vec2<f32>(x_3710.x, x_3710.y);
            let x_3713 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3711.x, x_3711.y, x_3713);
            let x_3720 : vec3<f32> = txVec43;
            let x_3722 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3720.xy, x_3720.z);
            u_xlat84 = x_3722;
            let x_3724 : vec4<f32> = u_xlat17;
            let x_3725 : vec2<f32> = vec2<f32>(x_3724.z, x_3724.w);
            let x_3727 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3725.x, x_3725.y, x_3727);
            let x_3734 : vec3<f32> = txVec44;
            let x_3736 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3734.xy, x_3734.z);
            u_xlat85 = x_3736;
            let x_3737 : f32 = u_xlat85;
            let x_3739 : f32 = u_xlat22.y;
            u_xlat85 = (x_3737 * x_3739);
            let x_3742 : f32 = u_xlat22.x;
            let x_3743 : f32 = u_xlat84;
            let x_3745 : f32 = u_xlat85;
            u_xlat84 = ((x_3742 * x_3743) + x_3745);
            let x_3748 : vec2<f32> = u_xlat61;
            let x_3750 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3748.x, x_3748.y, x_3750);
            let x_3757 : vec3<f32> = txVec45;
            let x_3759 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3757.xy, x_3757.z);
            u_xlat85 = x_3759;
            let x_3761 : f32 = u_xlat22.z;
            let x_3762 : f32 = u_xlat85;
            let x_3764 : f32 = u_xlat84;
            u_xlat84 = ((x_3761 * x_3762) + x_3764);
            let x_3767 : vec4<f32> = u_xlat20;
            let x_3768 : vec2<f32> = vec2<f32>(x_3767.x, x_3767.y);
            let x_3770 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3768.x, x_3768.y, x_3770);
            let x_3777 : vec3<f32> = txVec46;
            let x_3779 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3777.xy, x_3777.z);
            u_xlat85 = x_3779;
            let x_3781 : f32 = u_xlat22.w;
            let x_3782 : f32 = u_xlat85;
            let x_3784 : f32 = u_xlat84;
            u_xlat84 = ((x_3781 * x_3782) + x_3784);
            let x_3787 : vec4<f32> = u_xlat18;
            let x_3788 : vec2<f32> = vec2<f32>(x_3787.x, x_3787.y);
            let x_3790 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3788.x, x_3788.y, x_3790);
            let x_3797 : vec3<f32> = txVec47;
            let x_3799 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3797.xy, x_3797.z);
            u_xlat85 = x_3799;
            let x_3801 : f32 = u_xlat23.x;
            let x_3802 : f32 = u_xlat85;
            let x_3804 : f32 = u_xlat84;
            u_xlat84 = ((x_3801 * x_3802) + x_3804);
            let x_3807 : vec4<f32> = u_xlat18;
            let x_3808 : vec2<f32> = vec2<f32>(x_3807.z, x_3807.w);
            let x_3810 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3808.x, x_3808.y, x_3810);
            let x_3817 : vec3<f32> = txVec48;
            let x_3819 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3817.xy, x_3817.z);
            u_xlat85 = x_3819;
            let x_3821 : f32 = u_xlat23.y;
            let x_3822 : f32 = u_xlat85;
            let x_3824 : f32 = u_xlat84;
            u_xlat84 = ((x_3821 * x_3822) + x_3824);
            let x_3827 : vec4<f32> = u_xlat19;
            let x_3828 : vec2<f32> = vec2<f32>(x_3827.x, x_3827.y);
            let x_3830 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3828.x, x_3828.y, x_3830);
            let x_3837 : vec3<f32> = txVec49;
            let x_3839 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3837.xy, x_3837.z);
            u_xlat85 = x_3839;
            let x_3841 : f32 = u_xlat23.z;
            let x_3842 : f32 = u_xlat85;
            let x_3844 : f32 = u_xlat84;
            u_xlat84 = ((x_3841 * x_3842) + x_3844);
            let x_3847 : vec4<f32> = u_xlat20;
            let x_3848 : vec2<f32> = vec2<f32>(x_3847.z, x_3847.w);
            let x_3850 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3848.x, x_3848.y, x_3850);
            let x_3857 : vec3<f32> = txVec50;
            let x_3859 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3857.xy, x_3857.z);
            u_xlat85 = x_3859;
            let x_3861 : f32 = u_xlat23.w;
            let x_3862 : f32 = u_xlat85;
            let x_3864 : f32 = u_xlat84;
            u_xlat84 = ((x_3861 * x_3862) + x_3864);
            let x_3867 : vec4<f32> = u_xlat21;
            let x_3868 : vec2<f32> = vec2<f32>(x_3867.x, x_3867.y);
            let x_3870 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3868.x, x_3868.y, x_3870);
            let x_3877 : vec3<f32> = txVec51;
            let x_3879 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3877.xy, x_3877.z);
            u_xlat85 = x_3879;
            let x_3881 : f32 = u_xlat24.x;
            let x_3882 : f32 = u_xlat85;
            let x_3884 : f32 = u_xlat84;
            u_xlat84 = ((x_3881 * x_3882) + x_3884);
            let x_3887 : vec4<f32> = u_xlat21;
            let x_3888 : vec2<f32> = vec2<f32>(x_3887.z, x_3887.w);
            let x_3890 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_3888.x, x_3888.y, x_3890);
            let x_3897 : vec3<f32> = txVec52;
            let x_3899 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3897.xy, x_3897.z);
            u_xlat85 = x_3899;
            let x_3901 : f32 = u_xlat24.y;
            let x_3902 : f32 = u_xlat85;
            let x_3904 : f32 = u_xlat84;
            u_xlat84 = ((x_3901 * x_3902) + x_3904);
            let x_3907 : vec2<f32> = u_xlat38;
            let x_3909 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_3907.x, x_3907.y, x_3909);
            let x_3916 : vec3<f32> = txVec53;
            let x_3918 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3916.xy, x_3916.z);
            u_xlat85 = x_3918;
            let x_3920 : f32 = u_xlat24.z;
            let x_3921 : f32 = u_xlat85;
            let x_3923 : f32 = u_xlat84;
            u_xlat84 = ((x_3920 * x_3921) + x_3923);
            let x_3926 : vec2<f32> = u_xlat69;
            let x_3928 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_3926.x, x_3926.y, x_3928);
            let x_3935 : vec3<f32> = txVec54;
            let x_3937 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3935.xy, x_3935.z);
            u_xlat85 = x_3937;
            let x_3939 : f32 = u_xlat24.w;
            let x_3940 : f32 = u_xlat85;
            let x_3942 : f32 = u_xlat84;
            u_xlat84 = ((x_3939 * x_3940) + x_3942);
            let x_3945 : vec4<f32> = u_xlat16;
            let x_3946 : vec2<f32> = vec2<f32>(x_3945.x, x_3945.y);
            let x_3948 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_3946.x, x_3946.y, x_3948);
            let x_3955 : vec3<f32> = txVec55;
            let x_3957 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3955.xy, x_3955.z);
            u_xlat85 = x_3957;
            let x_3959 : f32 = u_xlat12.x;
            let x_3960 : f32 = u_xlat85;
            let x_3962 : f32 = u_xlat84;
            u_xlat84 = ((x_3959 * x_3960) + x_3962);
            let x_3965 : vec4<f32> = u_xlat16;
            let x_3966 : vec2<f32> = vec2<f32>(x_3965.z, x_3965.w);
            let x_3968 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_3966.x, x_3966.y, x_3968);
            let x_3975 : vec3<f32> = txVec56;
            let x_3977 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3975.xy, x_3975.z);
            u_xlat85 = x_3977;
            let x_3979 : f32 = u_xlat12.y;
            let x_3980 : f32 = u_xlat85;
            let x_3982 : f32 = u_xlat84;
            u_xlat84 = ((x_3979 * x_3980) + x_3982);
            let x_3985 : vec2<f32> = u_xlat64;
            let x_3987 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_3985.x, x_3985.y, x_3987);
            let x_3994 : vec3<f32> = txVec57;
            let x_3996 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3994.xy, x_3994.z);
            u_xlat85 = x_3996;
            let x_3998 : f32 = u_xlat12.z;
            let x_3999 : f32 = u_xlat85;
            let x_4001 : f32 = u_xlat84;
            u_xlat84 = ((x_3998 * x_3999) + x_4001);
            let x_4004 : vec4<f32> = u_xlat11;
            let x_4005 : vec2<f32> = vec2<f32>(x_4004.x, x_4004.y);
            let x_4007 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_4005.x, x_4005.y, x_4007);
            let x_4014 : vec3<f32> = txVec58;
            let x_4016 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4014.xy, x_4014.z);
            u_xlat85 = x_4016;
            let x_4018 : f32 = u_xlat12.w;
            let x_4019 : f32 = u_xlat85;
            let x_4021 : f32 = u_xlat84;
            u_xlat83 = ((x_4018 * x_4019) + x_4021);
          }
        }
      } else {
        let x_4025 : vec4<f32> = u_xlat10;
        let x_4026 : vec2<f32> = vec2<f32>(x_4025.x, x_4025.y);
        let x_4028 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_4026.x, x_4026.y, x_4028);
        let x_4035 : vec3<f32> = txVec59;
        let x_4037 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4035.xy, x_4035.z);
        u_xlat83 = x_4037;
      }
      let x_4038 : i32 = u_xlati32;
      let x_4040 : f32 = x_661.x_AdditionalShadowParams[x_4038].x;
      u_xlat84 = (1.0f + -(x_4040));
      let x_4043 : f32 = u_xlat83;
      let x_4044 : i32 = u_xlati32;
      let x_4046 : f32 = x_661.x_AdditionalShadowParams[x_4044].x;
      let x_4048 : f32 = u_xlat84;
      u_xlat83 = ((x_4043 * x_4046) + x_4048);
      let x_4051 : f32 = u_xlat10.z;
      u_xlatb84 = (0.0f >= x_4051);
      let x_4054 : f32 = u_xlat10.z;
      u_xlatb10.x = (x_4054 >= 1.0f);
      let x_4057 : bool = u_xlatb84;
      let x_4059 : bool = u_xlatb10.x;
      u_xlatb84 = (x_4057 | x_4059);
      let x_4061 : bool = u_xlatb84;
      let x_4062 : f32 = u_xlat83;
      u_xlat83 = select(x_4062, 1.0f, x_4061);
    } else {
      u_xlat83 = 1.0f;
    }
    let x_4065 : f32 = u_xlat83;
    u_xlat84 = (-(x_4065) + 1.0f);
    let x_4068 : f32 = u_xlat76;
    let x_4069 : f32 = u_xlat84;
    let x_4071 : f32 = u_xlat83;
    u_xlat83 = ((x_4068 * x_4069) + x_4071);
    let x_4074 : f32 = u_xlat57.x;
    let x_4075 : f32 = u_xlat83;
    u_xlat57.x = (x_4074 * x_4075);
    let x_4078 : vec3<f32> = u_xlat25;
    let x_4079 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(x_4078, vec3<f32>(x_4079.x, x_4079.y, x_4079.z));
    let x_4082 : f32 = u_xlat83;
    u_xlat83 = clamp(x_4082, 0.0f, 1.0f);
    let x_4085 : f32 = u_xlat57.x;
    let x_4086 : f32 = u_xlat83;
    u_xlat57.x = (x_4085 * x_4086);
    let x_4089 : vec2<f32> = u_xlat57;
    let x_4091 : i32 = u_xlati32;
    let x_4093 : vec4<f32> = x_2614.x_AdditionalLightsColor[x_4091];
    let x_4095 : vec3<f32> = (vec3<f32>(x_4089.x, x_4089.x, x_4089.x) * vec3<f32>(x_4093.x, x_4093.y, x_4093.z));
    let x_4096 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_4095.x, x_4095.y, x_4095.z, x_4096.w);
    let x_4098 : vec4<f32> = u_xlat8;
    let x_4100 : f32 = u_xlat82;
    let x_4103 : vec4<f32> = u_xlat1;
    u_xlat32 = ((vec3<f32>(x_4098.x, x_4098.y, x_4098.z) * vec3<f32>(x_4100, x_4100, x_4100)) + vec3<f32>(x_4103.x, x_4103.y, x_4103.z));
    let x_4106 : vec3<f32> = u_xlat32;
    let x_4107 : vec3<f32> = u_xlat32;
    u_xlat8.x = dot(x_4106, x_4107);
    let x_4111 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_4111, 1.17549435e-38f);
    let x_4115 : f32 = u_xlat8.x;
    u_xlat8.x = inverseSqrt(x_4115);
    let x_4118 : vec3<f32> = u_xlat32;
    let x_4119 : vec4<f32> = u_xlat8;
    u_xlat32 = (x_4118 * vec3<f32>(x_4119.x, x_4119.x, x_4119.x));
    let x_4122 : vec3<f32> = u_xlat25;
    let x_4123 : vec3<f32> = u_xlat32;
    u_xlat8.x = dot(x_4122, x_4123);
    let x_4127 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_4127, 0.0f, 1.0f);
    let x_4130 : vec4<f32> = u_xlat9;
    let x_4132 : vec3<f32> = u_xlat32;
    u_xlat32.x = dot(vec3<f32>(x_4130.x, x_4130.y, x_4130.z), x_4132);
    let x_4136 : f32 = u_xlat32.x;
    u_xlat32.x = clamp(x_4136, 0.0f, 1.0f);
    let x_4140 : f32 = u_xlat8.x;
    let x_4142 : f32 = u_xlat8.x;
    u_xlat57.x = (x_4140 * x_4142);
    let x_4146 : f32 = u_xlat57.x;
    let x_4148 : f32 = u_xlat7.x;
    u_xlat57.x = ((x_4146 * x_4148) + 1.00001001358032226562f);
    let x_4153 : f32 = u_xlat32.x;
    let x_4155 : f32 = u_xlat32.x;
    u_xlat32.x = (x_4153 * x_4155);
    let x_4159 : f32 = u_xlat57.x;
    let x_4161 : f32 = u_xlat57.x;
    u_xlat57.x = (x_4159 * x_4161);
    let x_4165 : f32 = u_xlat32.x;
    u_xlat32.x = max(x_4165, 0.10000000149011611938f);
    let x_4169 : f32 = u_xlat32.x;
    let x_4171 : f32 = u_xlat57.x;
    u_xlat32.x = (x_4169 * x_4171);
    let x_4174 : f32 = u_xlat80;
    let x_4176 : f32 = u_xlat32.x;
    u_xlat32.x = (x_4174 * x_4176);
    let x_4179 : f32 = u_xlat79;
    let x_4181 : f32 = u_xlat32.x;
    u_xlat32.x = (x_4179 / x_4181);
    let x_4184 : vec3<f32> = u_xlat2;
    let x_4185 : vec3<f32> = u_xlat32;
    let x_4188 : vec3<f32> = u_xlat3;
    u_xlat32 = ((x_4184 * vec3<f32>(x_4185.x, x_4185.x, x_4185.x)) + x_4188);
    let x_4190 : vec3<f32> = u_xlat32;
    let x_4191 : vec4<f32> = u_xlat10;
    let x_4194 : vec4<f32> = u_xlat4;
    let x_4196 : vec3<f32> = ((x_4190 * vec3<f32>(x_4191.x, x_4191.y, x_4191.z)) + vec3<f32>(x_4194.x, x_4194.y, x_4194.z));
    let x_4197 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_4196.x, x_4196.y, x_4196.z, x_4197.w);

    continuing {
      let x_4199 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4199 + bitcast<u32>(1i));
    }
  }
  let x_4201 : vec4<f32> = u_xlat5;
  let x_4203 : vec3<f32> = u_xlat6;
  let x_4206 : vec3<f32> = u_xlat31;
  let x_4207 : vec3<f32> = ((vec3<f32>(x_4201.x, x_4201.y, x_4201.z) * vec3<f32>(x_4203.x, x_4203.x, x_4203.x)) + x_4206);
  let x_4208 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4207.x, x_4207.y, x_4207.z, x_4208.w);
  let x_4210 : vec4<f32> = u_xlat4;
  let x_4212 : vec4<f32> = u_xlat0;
  let x_4214 : vec3<f32> = (vec3<f32>(x_4210.x, x_4210.y, x_4210.z) + vec3<f32>(x_4212.x, x_4212.y, x_4212.z));
  let x_4215 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4214.x, x_4214.y, x_4214.z, x_4215.w);
  let x_4218 : f32 = u_xlat77;
  let x_4219 : f32 = u_xlat77;
  u_xlat75 = (x_4218 * -(x_4219));
  let x_4222 : f32 = u_xlat75;
  u_xlat75 = exp2(x_4222);
  let x_4224 : vec4<f32> = u_xlat0;
  let x_4227 : vec4<f32> = x_135.unity_FogColor;
  let x_4230 : vec3<f32> = (vec3<f32>(x_4224.x, x_4224.y, x_4224.z) + -(vec3<f32>(x_4227.x, x_4227.y, x_4227.z)));
  let x_4231 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4230.x, x_4230.y, x_4230.z, x_4231.w);
  let x_4235 : f32 = u_xlat75;
  let x_4237 : vec4<f32> = u_xlat0;
  let x_4241 : vec4<f32> = x_135.unity_FogColor;
  let x_4243 : vec3<f32> = ((vec3<f32>(x_4235, x_4235, x_4235) * vec3<f32>(x_4237.x, x_4237.y, x_4237.z)) + vec3<f32>(x_4241.x, x_4241.y, x_4241.z));
  let x_4244 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4243.x, x_4243.y, x_4243.z, x_4244.w);
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


