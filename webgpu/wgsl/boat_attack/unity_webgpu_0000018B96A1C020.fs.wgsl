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

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(9) var Texture2D_D7D66558 : texture_2d<f32>;

@group(0) @binding(17) var samplerTexture2D_D7D66558 : sampler;

@group(1) @binding(4) var<uniform> x_195 : UnityPerMaterial;

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

@group(1) @binding(3) var<uniform> x_679 : LightShadows;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlatb4 : vec4<bool>;

var<private> u_xlatu1 : u32;

var<private> u_xlati1 : i32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(11) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlatb6 : bool;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

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

var<private> u_xlat56 : f32;

var<private> u_xlat81 : f32;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat33 : vec2<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlatb26 : bool;

var<private> u_xlatb51 : bool;

var<private> u_xlat51 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu0 : u32;

var<private> u_xlatu81 : u32;

var<private> u_xlati32 : i32;

var<private> u_xlati81 : i32;

@group(1) @binding(1) var<uniform> x_2608 : AdditionalLights;

var<private> u_xlat58 : f32;

var<private> u_xlati58 : i32;

var<private> u_xlatb83 : bool;

var<private> u_xlatb10 : vec4<bool>;

var<private> u_xlat84 : f32;

var<private> u_xlat83 : f32;

var<private> u_xlatb58 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat85 : f32;

var<private> u_xlat37 : vec3<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat38 : vec2<f32>;

var<private> u_xlat69 : vec2<f32>;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlatb84 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu77 : u32;

var<private> u_xlatb81 : bool;

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
  var x_2228 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2758 : f32;
  var x_2768 : f32;
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
  u_xlatb6 = (0.0f < x_961);
  let x_963 : bool = u_xlatb6;
  if (x_963) {
    let x_967 : f32 = x_679.x_MainLightShadowParams.y;
    u_xlatb6 = (x_967 == 1.0f);
    let x_969 : bool = u_xlatb6;
    if (x_969) {
      let x_972 : vec4<f32> = u_xlat1;
      let x_975 : vec4<f32> = x_679.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_972.x, x_972.y, x_972.x, x_972.y) + x_975);
      let x_979 : vec4<f32> = u_xlat6;
      let x_980 : vec2<f32> = vec2<f32>(x_979.x, x_979.y);
      let x_982 : f32 = u_xlat1.z;
      txVec0 = vec3<f32>(x_980.x, x_980.y, x_982);
      let x_994 : vec3<f32> = txVec0;
      let x_996 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_994.xy, x_994.z);
      u_xlat7.x = x_996;
      let x_999 : vec4<f32> = u_xlat6;
      let x_1000 : vec2<f32> = vec2<f32>(x_999.z, x_999.w);
      let x_1002 : f32 = u_xlat1.z;
      txVec1 = vec3<f32>(x_1000.x, x_1000.y, x_1002);
      let x_1009 : vec3<f32> = txVec1;
      let x_1011 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1009.xy, x_1009.z);
      u_xlat7.y = x_1011;
      let x_1013 : vec4<f32> = u_xlat1;
      let x_1017 : vec4<f32> = x_679.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_1013.x, x_1013.y, x_1013.x, x_1013.y) + x_1017);
      let x_1020 : vec4<f32> = u_xlat6;
      let x_1021 : vec2<f32> = vec2<f32>(x_1020.x, x_1020.y);
      let x_1023 : f32 = u_xlat1.z;
      txVec2 = vec3<f32>(x_1021.x, x_1021.y, x_1023);
      let x_1030 : vec3<f32> = txVec2;
      let x_1032 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1030.xy, x_1030.z);
      u_xlat7.z = x_1032;
      let x_1035 : vec4<f32> = u_xlat6;
      let x_1036 : vec2<f32> = vec2<f32>(x_1035.z, x_1035.w);
      let x_1038 : f32 = u_xlat1.z;
      txVec3 = vec3<f32>(x_1036.x, x_1036.y, x_1038);
      let x_1045 : vec3<f32> = txVec3;
      let x_1047 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1045.xy, x_1045.z);
      u_xlat7.w = x_1047;
      let x_1049 : vec4<f32> = u_xlat7;
      u_xlat6.x = dot(x_1049, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1057 : f32 = x_679.x_MainLightShadowParams.y;
      u_xlatb31 = (x_1057 == 2.0f);
      let x_1059 : bool = u_xlatb31;
      if (x_1059) {
        let x_1063 : vec4<f32> = u_xlat1;
        let x_1067 : vec4<f32> = x_679.x_MainLightShadowmapSize;
        u_xlat31 = ((vec2<f32>(x_1063.x, x_1063.y) * vec2<f32>(x_1067.z, x_1067.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1072 : vec2<f32> = u_xlat31;
        u_xlat31 = floor(x_1072);
        let x_1074 : vec4<f32> = u_xlat1;
        let x_1077 : vec4<f32> = x_679.x_MainLightShadowmapSize;
        let x_1080 : vec2<f32> = u_xlat31;
        let x_1082 : vec2<f32> = ((vec2<f32>(x_1074.x, x_1074.y) * vec2<f32>(x_1077.z, x_1077.w)) + -(x_1080));
        let x_1083 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1082.x, x_1082.y, x_1083.z, x_1083.w);
        let x_1085 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1085.x, x_1085.x, x_1085.y, x_1085.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1090 : vec4<f32> = u_xlat8;
        let x_1092 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1090.x, x_1090.x, x_1090.z, x_1090.z) * vec4<f32>(x_1092.x, x_1092.x, x_1092.z, x_1092.z));
        let x_1096 : vec4<f32> = u_xlat9;
        u_xlat57 = (vec2<f32>(x_1096.y, x_1096.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1101 : vec4<f32> = u_xlat9;
        let x_1104 : vec4<f32> = u_xlat7;
        let x_1107 : vec2<f32> = ((vec2<f32>(x_1101.x, x_1101.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1104.x, x_1104.y)));
        let x_1108 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1107.x, x_1108.y, x_1107.y, x_1108.w);
        let x_1110 : vec4<f32> = u_xlat7;
        let x_1113 : vec2<f32> = (-(vec2<f32>(x_1110.x, x_1110.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1114 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1113.x, x_1113.y, x_1114.z, x_1114.w);
        let x_1117 : vec4<f32> = u_xlat7;
        u_xlat59 = min(vec2<f32>(x_1117.x, x_1117.y), vec2<f32>(0.0f, 0.0f));
        let x_1121 : vec2<f32> = u_xlat59;
        let x_1123 : vec2<f32> = u_xlat59;
        let x_1125 : vec4<f32> = u_xlat9;
        u_xlat59 = ((-(x_1121) * x_1123) + vec2<f32>(x_1125.x, x_1125.y));
        let x_1128 : vec4<f32> = u_xlat7;
        let x_1130 : vec2<f32> = max(vec2<f32>(x_1128.x, x_1128.y), vec2<f32>(0.0f, 0.0f));
        let x_1131 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1130.x, x_1130.y, x_1131.z, x_1131.w);
        let x_1133 : vec4<f32> = u_xlat7;
        let x_1136 : vec4<f32> = u_xlat7;
        let x_1139 : vec4<f32> = u_xlat8;
        let x_1141 : vec2<f32> = ((-(vec2<f32>(x_1133.x, x_1133.y)) * vec2<f32>(x_1136.x, x_1136.y)) + vec2<f32>(x_1139.y, x_1139.w));
        let x_1142 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1141.x, x_1141.y, x_1142.z, x_1142.w);
        let x_1144 : vec2<f32> = u_xlat59;
        u_xlat59 = (x_1144 + vec2<f32>(1.0f, 1.0f));
        let x_1146 : vec4<f32> = u_xlat7;
        let x_1148 : vec2<f32> = (vec2<f32>(x_1146.x, x_1146.y) + vec2<f32>(1.0f, 1.0f));
        let x_1149 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1148.x, x_1148.y, x_1149.z, x_1149.w);
        let x_1152 : vec4<f32> = u_xlat8;
        let x_1156 : vec2<f32> = (vec2<f32>(x_1152.x, x_1152.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1157 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1156.x, x_1156.y, x_1157.z, x_1157.w);
        let x_1160 : vec4<f32> = u_xlat9;
        let x_1162 : vec2<f32> = (vec2<f32>(x_1160.x, x_1160.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1163 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1162.x, x_1162.y, x_1163.z, x_1163.w);
        let x_1165 : vec2<f32> = u_xlat59;
        let x_1166 : vec2<f32> = (x_1165 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1167 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1166.x, x_1166.y, x_1167.z, x_1167.w);
        let x_1170 : vec4<f32> = u_xlat7;
        let x_1172 : vec2<f32> = (vec2<f32>(x_1170.x, x_1170.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1173 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1172.x, x_1172.y, x_1173.z, x_1173.w);
        let x_1175 : vec4<f32> = u_xlat8;
        let x_1177 : vec2<f32> = (vec2<f32>(x_1175.y, x_1175.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1178 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1177.x, x_1177.y, x_1178.z, x_1178.w);
        let x_1181 : f32 = u_xlat9.x;
        u_xlat10.z = x_1181;
        let x_1184 : f32 = u_xlat7.x;
        u_xlat10.w = x_1184;
        let x_1187 : f32 = u_xlat12.x;
        u_xlat11.z = x_1187;
        let x_1190 : f32 = u_xlat57.x;
        u_xlat11.w = x_1190;
        let x_1192 : vec4<f32> = u_xlat10;
        let x_1194 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1192.z, x_1192.w, x_1192.x, x_1192.z) + vec4<f32>(x_1194.z, x_1194.w, x_1194.x, x_1194.z));
        let x_1198 : f32 = u_xlat10.y;
        u_xlat9.z = x_1198;
        let x_1201 : f32 = u_xlat7.y;
        u_xlat9.w = x_1201;
        let x_1204 : f32 = u_xlat11.y;
        u_xlat12.z = x_1204;
        let x_1207 : f32 = u_xlat57.y;
        u_xlat12.w = x_1207;
        let x_1209 : vec4<f32> = u_xlat9;
        let x_1211 : vec4<f32> = u_xlat12;
        let x_1213 : vec3<f32> = (vec3<f32>(x_1209.z, x_1209.y, x_1209.w) + vec3<f32>(x_1211.z, x_1211.y, x_1211.w));
        let x_1214 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1213.x, x_1213.y, x_1213.z, x_1214.w);
        let x_1216 : vec4<f32> = u_xlat11;
        let x_1218 : vec4<f32> = u_xlat8;
        let x_1220 : vec3<f32> = (vec3<f32>(x_1216.x, x_1216.z, x_1216.w) / vec3<f32>(x_1218.z, x_1218.w, x_1218.y));
        let x_1221 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1220.x, x_1220.y, x_1220.z, x_1221.w);
        let x_1223 : vec4<f32> = u_xlat9;
        let x_1228 : vec3<f32> = (vec3<f32>(x_1223.x, x_1223.y, x_1223.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1229 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1228.x, x_1228.y, x_1228.z, x_1229.w);
        let x_1231 : vec4<f32> = u_xlat12;
        let x_1233 : vec4<f32> = u_xlat7;
        let x_1235 : vec3<f32> = (vec3<f32>(x_1231.z, x_1231.y, x_1231.w) / vec3<f32>(x_1233.x, x_1233.y, x_1233.z));
        let x_1236 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1235.x, x_1235.y, x_1235.z, x_1236.w);
        let x_1238 : vec4<f32> = u_xlat10;
        let x_1240 : vec3<f32> = (vec3<f32>(x_1238.x, x_1238.y, x_1238.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1241 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1240.x, x_1240.y, x_1240.z, x_1241.w);
        let x_1243 : vec4<f32> = u_xlat9;
        let x_1246 : vec4<f32> = x_679.x_MainLightShadowmapSize;
        let x_1248 : vec3<f32> = (vec3<f32>(x_1243.y, x_1243.x, x_1243.z) * vec3<f32>(x_1246.x, x_1246.x, x_1246.x));
        let x_1249 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1248.x, x_1248.y, x_1248.z, x_1249.w);
        let x_1251 : vec4<f32> = u_xlat10;
        let x_1254 : vec4<f32> = x_679.x_MainLightShadowmapSize;
        let x_1256 : vec3<f32> = (vec3<f32>(x_1251.x, x_1251.y, x_1251.z) * vec3<f32>(x_1254.y, x_1254.y, x_1254.y));
        let x_1257 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1256.x, x_1256.y, x_1256.z, x_1257.w);
        let x_1260 : f32 = u_xlat10.x;
        u_xlat9.w = x_1260;
        let x_1262 : vec2<f32> = u_xlat31;
        let x_1265 : vec4<f32> = x_679.x_MainLightShadowmapSize;
        let x_1268 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1262.x, x_1262.y, x_1262.x, x_1262.y) * vec4<f32>(x_1265.x, x_1265.y, x_1265.x, x_1265.y)) + vec4<f32>(x_1268.y, x_1268.w, x_1268.x, x_1268.w));
        let x_1271 : vec2<f32> = u_xlat31;
        let x_1273 : vec4<f32> = x_679.x_MainLightShadowmapSize;
        let x_1276 : vec4<f32> = u_xlat9;
        let x_1278 : vec2<f32> = ((x_1271 * vec2<f32>(x_1273.x, x_1273.y)) + vec2<f32>(x_1276.z, x_1276.w));
        let x_1279 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1278.x, x_1278.y, x_1279.z, x_1279.w);
        let x_1282 : f32 = u_xlat9.y;
        u_xlat10.w = x_1282;
        let x_1284 : vec4<f32> = u_xlat10;
        let x_1285 : vec2<f32> = vec2<f32>(x_1284.y, x_1284.z);
        let x_1286 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1286.x, x_1285.x, x_1286.z, x_1285.y);
        let x_1289 : vec2<f32> = u_xlat31;
        let x_1292 : vec4<f32> = x_679.x_MainLightShadowmapSize;
        let x_1295 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_1289.x, x_1289.y, x_1289.x, x_1289.y) * vec4<f32>(x_1292.x, x_1292.y, x_1292.x, x_1292.y)) + vec4<f32>(x_1295.x, x_1295.y, x_1295.z, x_1295.y));
        let x_1298 : vec2<f32> = u_xlat31;
        let x_1301 : vec4<f32> = x_679.x_MainLightShadowmapSize;
        let x_1304 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1298.x, x_1298.y, x_1298.x, x_1298.y) * vec4<f32>(x_1301.x, x_1301.y, x_1301.x, x_1301.y)) + vec4<f32>(x_1304.w, x_1304.y, x_1304.w, x_1304.z));
        let x_1307 : vec2<f32> = u_xlat31;
        let x_1310 : vec4<f32> = x_679.x_MainLightShadowmapSize;
        let x_1313 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1307.x, x_1307.y, x_1307.x, x_1307.y) * vec4<f32>(x_1310.x, x_1310.y, x_1310.x, x_1310.y)) + vec4<f32>(x_1313.x, x_1313.w, x_1313.z, x_1313.w));
        let x_1317 : vec4<f32> = u_xlat7;
        let x_1319 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_1317.x, x_1317.x, x_1317.x, x_1317.y) * vec4<f32>(x_1319.z, x_1319.w, x_1319.y, x_1319.z));
        let x_1323 : vec4<f32> = u_xlat7;
        let x_1325 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1323.y, x_1323.y, x_1323.z, x_1323.z) * x_1325);
        let x_1328 : f32 = u_xlat7.z;
        let x_1330 : f32 = u_xlat8.y;
        u_xlat31.x = (x_1328 * x_1330);
        let x_1334 : vec4<f32> = u_xlat11;
        let x_1335 : vec2<f32> = vec2<f32>(x_1334.x, x_1334.y);
        let x_1337 : f32 = u_xlat1.z;
        txVec4 = vec3<f32>(x_1335.x, x_1335.y, x_1337);
        let x_1345 : vec3<f32> = txVec4;
        let x_1347 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1345.xy, x_1345.z);
        u_xlat56 = x_1347;
        let x_1349 : vec4<f32> = u_xlat11;
        let x_1350 : vec2<f32> = vec2<f32>(x_1349.z, x_1349.w);
        let x_1352 : f32 = u_xlat1.z;
        txVec5 = vec3<f32>(x_1350.x, x_1350.y, x_1352);
        let x_1360 : vec3<f32> = txVec5;
        let x_1362 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1360.xy, x_1360.z);
        u_xlat81 = x_1362;
        let x_1363 : f32 = u_xlat81;
        let x_1365 : f32 = u_xlat14.y;
        u_xlat81 = (x_1363 * x_1365);
        let x_1368 : f32 = u_xlat14.x;
        let x_1369 : f32 = u_xlat56;
        let x_1371 : f32 = u_xlat81;
        u_xlat56 = ((x_1368 * x_1369) + x_1371);
        let x_1374 : vec4<f32> = u_xlat12;
        let x_1375 : vec2<f32> = vec2<f32>(x_1374.x, x_1374.y);
        let x_1377 : f32 = u_xlat1.z;
        txVec6 = vec3<f32>(x_1375.x, x_1375.y, x_1377);
        let x_1384 : vec3<f32> = txVec6;
        let x_1386 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1384.xy, x_1384.z);
        u_xlat81 = x_1386;
        let x_1388 : f32 = u_xlat14.z;
        let x_1389 : f32 = u_xlat81;
        let x_1391 : f32 = u_xlat56;
        u_xlat56 = ((x_1388 * x_1389) + x_1391);
        let x_1394 : vec4<f32> = u_xlat10;
        let x_1395 : vec2<f32> = vec2<f32>(x_1394.x, x_1394.y);
        let x_1397 : f32 = u_xlat1.z;
        txVec7 = vec3<f32>(x_1395.x, x_1395.y, x_1397);
        let x_1404 : vec3<f32> = txVec7;
        let x_1406 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1404.xy, x_1404.z);
        u_xlat81 = x_1406;
        let x_1408 : f32 = u_xlat14.w;
        let x_1409 : f32 = u_xlat81;
        let x_1411 : f32 = u_xlat56;
        u_xlat56 = ((x_1408 * x_1409) + x_1411);
        let x_1414 : vec4<f32> = u_xlat13;
        let x_1415 : vec2<f32> = vec2<f32>(x_1414.x, x_1414.y);
        let x_1417 : f32 = u_xlat1.z;
        txVec8 = vec3<f32>(x_1415.x, x_1415.y, x_1417);
        let x_1424 : vec3<f32> = txVec8;
        let x_1426 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1424.xy, x_1424.z);
        u_xlat81 = x_1426;
        let x_1428 : f32 = u_xlat15.x;
        let x_1429 : f32 = u_xlat81;
        let x_1431 : f32 = u_xlat56;
        u_xlat56 = ((x_1428 * x_1429) + x_1431);
        let x_1434 : vec4<f32> = u_xlat13;
        let x_1435 : vec2<f32> = vec2<f32>(x_1434.z, x_1434.w);
        let x_1437 : f32 = u_xlat1.z;
        txVec9 = vec3<f32>(x_1435.x, x_1435.y, x_1437);
        let x_1444 : vec3<f32> = txVec9;
        let x_1446 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1444.xy, x_1444.z);
        u_xlat81 = x_1446;
        let x_1448 : f32 = u_xlat15.y;
        let x_1449 : f32 = u_xlat81;
        let x_1451 : f32 = u_xlat56;
        u_xlat56 = ((x_1448 * x_1449) + x_1451);
        let x_1454 : vec4<f32> = u_xlat10;
        let x_1455 : vec2<f32> = vec2<f32>(x_1454.z, x_1454.w);
        let x_1457 : f32 = u_xlat1.z;
        txVec10 = vec3<f32>(x_1455.x, x_1455.y, x_1457);
        let x_1464 : vec3<f32> = txVec10;
        let x_1466 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1464.xy, x_1464.z);
        u_xlat81 = x_1466;
        let x_1468 : f32 = u_xlat15.z;
        let x_1469 : f32 = u_xlat81;
        let x_1471 : f32 = u_xlat56;
        u_xlat56 = ((x_1468 * x_1469) + x_1471);
        let x_1474 : vec4<f32> = u_xlat9;
        let x_1475 : vec2<f32> = vec2<f32>(x_1474.x, x_1474.y);
        let x_1477 : f32 = u_xlat1.z;
        txVec11 = vec3<f32>(x_1475.x, x_1475.y, x_1477);
        let x_1484 : vec3<f32> = txVec11;
        let x_1486 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1484.xy, x_1484.z);
        u_xlat81 = x_1486;
        let x_1488 : f32 = u_xlat15.w;
        let x_1489 : f32 = u_xlat81;
        let x_1491 : f32 = u_xlat56;
        u_xlat56 = ((x_1488 * x_1489) + x_1491);
        let x_1494 : vec4<f32> = u_xlat9;
        let x_1495 : vec2<f32> = vec2<f32>(x_1494.z, x_1494.w);
        let x_1497 : f32 = u_xlat1.z;
        txVec12 = vec3<f32>(x_1495.x, x_1495.y, x_1497);
        let x_1504 : vec3<f32> = txVec12;
        let x_1506 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1504.xy, x_1504.z);
        u_xlat81 = x_1506;
        let x_1508 : f32 = u_xlat31.x;
        let x_1509 : f32 = u_xlat81;
        let x_1511 : f32 = u_xlat56;
        u_xlat6.x = ((x_1508 * x_1509) + x_1511);
      } else {
        let x_1515 : vec4<f32> = u_xlat1;
        let x_1518 : vec4<f32> = x_679.x_MainLightShadowmapSize;
        u_xlat31 = ((vec2<f32>(x_1515.x, x_1515.y) * vec2<f32>(x_1518.z, x_1518.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1522 : vec2<f32> = u_xlat31;
        u_xlat31 = floor(x_1522);
        let x_1524 : vec4<f32> = u_xlat1;
        let x_1527 : vec4<f32> = x_679.x_MainLightShadowmapSize;
        let x_1530 : vec2<f32> = u_xlat31;
        let x_1532 : vec2<f32> = ((vec2<f32>(x_1524.x, x_1524.y) * vec2<f32>(x_1527.z, x_1527.w)) + -(x_1530));
        let x_1533 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1532.x, x_1532.y, x_1533.z, x_1533.w);
        let x_1535 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1535.x, x_1535.x, x_1535.y, x_1535.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1538 : vec4<f32> = u_xlat8;
        let x_1540 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1538.x, x_1538.x, x_1538.z, x_1538.z) * vec4<f32>(x_1540.x, x_1540.x, x_1540.z, x_1540.z));
        let x_1543 : vec4<f32> = u_xlat9;
        let x_1547 : vec2<f32> = (vec2<f32>(x_1543.y, x_1543.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1548 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1548.x, x_1547.x, x_1548.z, x_1547.y);
        let x_1550 : vec4<f32> = u_xlat9;
        let x_1553 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_1550.x, x_1550.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1553.x, x_1553.y)));
        let x_1557 : vec4<f32> = u_xlat7;
        let x_1560 : vec2<f32> = (-(vec2<f32>(x_1557.x, x_1557.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1561 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1560.x, x_1561.y, x_1560.y, x_1561.w);
        let x_1563 : vec4<f32> = u_xlat7;
        let x_1565 : vec2<f32> = min(vec2<f32>(x_1563.x, x_1563.y), vec2<f32>(0.0f, 0.0f));
        let x_1566 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1565.x, x_1565.y, x_1566.z, x_1566.w);
        let x_1568 : vec4<f32> = u_xlat9;
        let x_1571 : vec4<f32> = u_xlat9;
        let x_1574 : vec4<f32> = u_xlat8;
        let x_1576 : vec2<f32> = ((-(vec2<f32>(x_1568.x, x_1568.y)) * vec2<f32>(x_1571.x, x_1571.y)) + vec2<f32>(x_1574.x, x_1574.z));
        let x_1577 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1576.x, x_1577.y, x_1576.y, x_1577.w);
        let x_1579 : vec4<f32> = u_xlat7;
        let x_1581 : vec2<f32> = max(vec2<f32>(x_1579.x, x_1579.y), vec2<f32>(0.0f, 0.0f));
        let x_1582 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1581.x, x_1581.y, x_1582.z, x_1582.w);
        let x_1584 : vec4<f32> = u_xlat9;
        let x_1587 : vec4<f32> = u_xlat9;
        let x_1590 : vec4<f32> = u_xlat8;
        let x_1592 : vec2<f32> = ((-(vec2<f32>(x_1584.x, x_1584.y)) * vec2<f32>(x_1587.x, x_1587.y)) + vec2<f32>(x_1590.y, x_1590.w));
        let x_1593 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1593.x, x_1592.x, x_1593.z, x_1592.y);
        let x_1595 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1595 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1599 : f32 = u_xlat8.y;
        u_xlat9.z = (x_1599 * 0.08163200318813323975f);
        let x_1603 : vec2<f32> = u_xlat57;
        let x_1606 : vec2<f32> = (vec2<f32>(x_1603.y, x_1603.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1607 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1606.x, x_1606.y, x_1607.z, x_1607.w);
        let x_1609 : vec4<f32> = u_xlat8;
        u_xlat57 = (vec2<f32>(x_1609.x, x_1609.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1613 : f32 = u_xlat8.w;
        u_xlat11.z = (x_1613 * 0.08163200318813323975f);
        let x_1617 : f32 = u_xlat11.y;
        u_xlat9.x = x_1617;
        let x_1619 : vec4<f32> = u_xlat7;
        let x_1626 : vec2<f32> = ((vec2<f32>(x_1619.x, x_1619.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1627 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1627.x, x_1626.x, x_1627.z, x_1626.y);
        let x_1629 : vec4<f32> = u_xlat7;
        let x_1633 : vec2<f32> = ((vec2<f32>(x_1629.x, x_1629.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1634 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1633.x, x_1634.y, x_1633.y, x_1634.w);
        let x_1637 : f32 = u_xlat57.x;
        u_xlat8.y = x_1637;
        let x_1640 : f32 = u_xlat10.y;
        u_xlat8.w = x_1640;
        let x_1642 : vec4<f32> = u_xlat8;
        let x_1643 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1642 + x_1643);
        let x_1645 : vec4<f32> = u_xlat7;
        let x_1648 : vec2<f32> = ((vec2<f32>(x_1645.y, x_1645.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1649 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1649.x, x_1648.x, x_1649.z, x_1648.y);
        let x_1651 : vec4<f32> = u_xlat7;
        let x_1654 : vec2<f32> = ((vec2<f32>(x_1651.y, x_1651.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1655 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1654.x, x_1655.y, x_1654.y, x_1655.w);
        let x_1658 : f32 = u_xlat57.y;
        u_xlat10.y = x_1658;
        let x_1660 : vec4<f32> = u_xlat10;
        let x_1661 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1660 + x_1661);
        let x_1663 : vec4<f32> = u_xlat8;
        let x_1664 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_1663 / x_1664);
        let x_1666 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1666 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1672 : vec4<f32> = u_xlat10;
        let x_1673 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_1672 / x_1673);
        let x_1675 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1675 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1677 : vec4<f32> = u_xlat8;
        let x_1680 : vec4<f32> = x_679.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1677.w, x_1677.x, x_1677.y, x_1677.z) * vec4<f32>(x_1680.x, x_1680.x, x_1680.x, x_1680.x));
        let x_1683 : vec4<f32> = u_xlat10;
        let x_1686 : vec4<f32> = x_679.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1683.x, x_1683.w, x_1683.y, x_1683.z) * vec4<f32>(x_1686.y, x_1686.y, x_1686.y, x_1686.y));
        let x_1689 : vec4<f32> = u_xlat8;
        let x_1690 : vec3<f32> = vec3<f32>(x_1689.y, x_1689.z, x_1689.w);
        let x_1691 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1690.x, x_1691.y, x_1690.y, x_1690.z);
        let x_1694 : f32 = u_xlat10.x;
        u_xlat11.y = x_1694;
        let x_1696 : vec2<f32> = u_xlat31;
        let x_1699 : vec4<f32> = x_679.x_MainLightShadowmapSize;
        let x_1702 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1696.x, x_1696.y, x_1696.x, x_1696.y) * vec4<f32>(x_1699.x, x_1699.y, x_1699.x, x_1699.y)) + vec4<f32>(x_1702.x, x_1702.y, x_1702.z, x_1702.y));
        let x_1705 : vec2<f32> = u_xlat31;
        let x_1707 : vec4<f32> = x_679.x_MainLightShadowmapSize;
        let x_1710 : vec4<f32> = u_xlat11;
        let x_1712 : vec2<f32> = ((x_1705 * vec2<f32>(x_1707.x, x_1707.y)) + vec2<f32>(x_1710.w, x_1710.y));
        let x_1713 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1712.x, x_1712.y, x_1713.z, x_1713.w);
        let x_1716 : f32 = u_xlat11.y;
        u_xlat8.y = x_1716;
        let x_1719 : f32 = u_xlat10.z;
        u_xlat11.y = x_1719;
        let x_1721 : vec2<f32> = u_xlat31;
        let x_1724 : vec4<f32> = x_679.x_MainLightShadowmapSize;
        let x_1727 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_1721.x, x_1721.y, x_1721.x, x_1721.y) * vec4<f32>(x_1724.x, x_1724.y, x_1724.x, x_1724.y)) + vec4<f32>(x_1727.x, x_1727.y, x_1727.z, x_1727.y));
        let x_1731 : vec2<f32> = u_xlat31;
        let x_1733 : vec4<f32> = x_679.x_MainLightShadowmapSize;
        let x_1736 : vec4<f32> = u_xlat11;
        u_xlat63 = ((x_1731 * vec2<f32>(x_1733.x, x_1733.y)) + vec2<f32>(x_1736.w, x_1736.y));
        let x_1740 : f32 = u_xlat11.y;
        u_xlat8.z = x_1740;
        let x_1742 : vec2<f32> = u_xlat31;
        let x_1745 : vec4<f32> = x_679.x_MainLightShadowmapSize;
        let x_1748 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1742.x, x_1742.y, x_1742.x, x_1742.y) * vec4<f32>(x_1745.x, x_1745.y, x_1745.x, x_1745.y)) + vec4<f32>(x_1748.x, x_1748.y, x_1748.x, x_1748.z));
        let x_1752 : f32 = u_xlat10.w;
        u_xlat11.y = x_1752;
        let x_1755 : vec2<f32> = u_xlat31;
        let x_1758 : vec4<f32> = x_679.x_MainLightShadowmapSize;
        let x_1761 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1755.x, x_1755.y, x_1755.x, x_1755.y) * vec4<f32>(x_1758.x, x_1758.y, x_1758.x, x_1758.y)) + vec4<f32>(x_1761.x, x_1761.y, x_1761.z, x_1761.y));
        let x_1765 : vec2<f32> = u_xlat31;
        let x_1767 : vec4<f32> = x_679.x_MainLightShadowmapSize;
        let x_1770 : vec4<f32> = u_xlat11;
        u_xlat33 = ((x_1765 * vec2<f32>(x_1767.x, x_1767.y)) + vec2<f32>(x_1770.w, x_1770.y));
        let x_1774 : f32 = u_xlat11.y;
        u_xlat8.w = x_1774;
        let x_1777 : vec2<f32> = u_xlat31;
        let x_1779 : vec4<f32> = x_679.x_MainLightShadowmapSize;
        let x_1782 : vec4<f32> = u_xlat8;
        let x_1784 : vec2<f32> = ((x_1777 * vec2<f32>(x_1779.x, x_1779.y)) + vec2<f32>(x_1782.x, x_1782.w));
        let x_1785 : vec4<f32> = u_xlat17;
        u_xlat17 = vec4<f32>(x_1784.x, x_1784.y, x_1785.z, x_1785.w);
        let x_1787 : vec4<f32> = u_xlat11;
        let x_1788 : vec3<f32> = vec3<f32>(x_1787.x, x_1787.z, x_1787.w);
        let x_1789 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1788.x, x_1789.y, x_1788.y, x_1788.z);
        let x_1791 : vec2<f32> = u_xlat31;
        let x_1794 : vec4<f32> = x_679.x_MainLightShadowmapSize;
        let x_1797 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1791.x, x_1791.y, x_1791.x, x_1791.y) * vec4<f32>(x_1794.x, x_1794.y, x_1794.x, x_1794.y)) + vec4<f32>(x_1797.x, x_1797.y, x_1797.z, x_1797.y));
        let x_1801 : vec2<f32> = u_xlat31;
        let x_1803 : vec4<f32> = x_679.x_MainLightShadowmapSize;
        let x_1806 : vec4<f32> = u_xlat10;
        u_xlat60 = ((x_1801 * vec2<f32>(x_1803.x, x_1803.y)) + vec2<f32>(x_1806.w, x_1806.y));
        let x_1810 : f32 = u_xlat8.x;
        u_xlat10.x = x_1810;
        let x_1812 : vec2<f32> = u_xlat31;
        let x_1814 : vec4<f32> = x_679.x_MainLightShadowmapSize;
        let x_1817 : vec4<f32> = u_xlat10;
        u_xlat31 = ((x_1812 * vec2<f32>(x_1814.x, x_1814.y)) + vec2<f32>(x_1817.x, x_1817.y));
        let x_1821 : vec4<f32> = u_xlat7;
        let x_1823 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1821.x, x_1821.x, x_1821.x, x_1821.x) * x_1823);
        let x_1826 : vec4<f32> = u_xlat7;
        let x_1828 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_1826.y, x_1826.y, x_1826.y, x_1826.y) * x_1828);
        let x_1831 : vec4<f32> = u_xlat7;
        let x_1833 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_1831.z, x_1831.z, x_1831.z, x_1831.z) * x_1833);
        let x_1835 : vec4<f32> = u_xlat7;
        let x_1837 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_1835.w, x_1835.w, x_1835.w, x_1835.w) * x_1837);
        let x_1840 : vec4<f32> = u_xlat12;
        let x_1841 : vec2<f32> = vec2<f32>(x_1840.x, x_1840.y);
        let x_1843 : f32 = u_xlat1.z;
        txVec13 = vec3<f32>(x_1841.x, x_1841.y, x_1843);
        let x_1850 : vec3<f32> = txVec13;
        let x_1852 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1850.xy, x_1850.z);
        u_xlat81 = x_1852;
        let x_1854 : vec4<f32> = u_xlat12;
        let x_1855 : vec2<f32> = vec2<f32>(x_1854.z, x_1854.w);
        let x_1857 : f32 = u_xlat1.z;
        txVec14 = vec3<f32>(x_1855.x, x_1855.y, x_1857);
        let x_1864 : vec3<f32> = txVec14;
        let x_1866 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1864.xy, x_1864.z);
        u_xlat8.x = x_1866;
        let x_1869 : f32 = u_xlat8.x;
        let x_1871 : f32 = u_xlat18.y;
        u_xlat8.x = (x_1869 * x_1871);
        let x_1875 : f32 = u_xlat18.x;
        let x_1876 : f32 = u_xlat81;
        let x_1879 : f32 = u_xlat8.x;
        u_xlat81 = ((x_1875 * x_1876) + x_1879);
        let x_1882 : vec4<f32> = u_xlat13;
        let x_1883 : vec2<f32> = vec2<f32>(x_1882.x, x_1882.y);
        let x_1885 : f32 = u_xlat1.z;
        txVec15 = vec3<f32>(x_1883.x, x_1883.y, x_1885);
        let x_1892 : vec3<f32> = txVec15;
        let x_1894 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1892.xy, x_1892.z);
        u_xlat8.x = x_1894;
        let x_1897 : f32 = u_xlat18.z;
        let x_1899 : f32 = u_xlat8.x;
        let x_1901 : f32 = u_xlat81;
        u_xlat81 = ((x_1897 * x_1899) + x_1901);
        let x_1904 : vec4<f32> = u_xlat15;
        let x_1905 : vec2<f32> = vec2<f32>(x_1904.x, x_1904.y);
        let x_1907 : f32 = u_xlat1.z;
        txVec16 = vec3<f32>(x_1905.x, x_1905.y, x_1907);
        let x_1914 : vec3<f32> = txVec16;
        let x_1916 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1914.xy, x_1914.z);
        u_xlat8.x = x_1916;
        let x_1919 : f32 = u_xlat18.w;
        let x_1921 : f32 = u_xlat8.x;
        let x_1923 : f32 = u_xlat81;
        u_xlat81 = ((x_1919 * x_1921) + x_1923);
        let x_1926 : vec4<f32> = u_xlat14;
        let x_1927 : vec2<f32> = vec2<f32>(x_1926.x, x_1926.y);
        let x_1929 : f32 = u_xlat1.z;
        txVec17 = vec3<f32>(x_1927.x, x_1927.y, x_1929);
        let x_1936 : vec3<f32> = txVec17;
        let x_1938 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1936.xy, x_1936.z);
        u_xlat8.x = x_1938;
        let x_1941 : f32 = u_xlat19.x;
        let x_1943 : f32 = u_xlat8.x;
        let x_1945 : f32 = u_xlat81;
        u_xlat81 = ((x_1941 * x_1943) + x_1945);
        let x_1948 : vec4<f32> = u_xlat14;
        let x_1949 : vec2<f32> = vec2<f32>(x_1948.z, x_1948.w);
        let x_1951 : f32 = u_xlat1.z;
        txVec18 = vec3<f32>(x_1949.x, x_1949.y, x_1951);
        let x_1958 : vec3<f32> = txVec18;
        let x_1960 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1958.xy, x_1958.z);
        u_xlat8.x = x_1960;
        let x_1963 : f32 = u_xlat19.y;
        let x_1965 : f32 = u_xlat8.x;
        let x_1967 : f32 = u_xlat81;
        u_xlat81 = ((x_1963 * x_1965) + x_1967);
        let x_1970 : vec2<f32> = u_xlat63;
        let x_1972 : f32 = u_xlat1.z;
        txVec19 = vec3<f32>(x_1970.x, x_1970.y, x_1972);
        let x_1979 : vec3<f32> = txVec19;
        let x_1981 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1979.xy, x_1979.z);
        u_xlat8.x = x_1981;
        let x_1984 : f32 = u_xlat19.z;
        let x_1986 : f32 = u_xlat8.x;
        let x_1988 : f32 = u_xlat81;
        u_xlat81 = ((x_1984 * x_1986) + x_1988);
        let x_1991 : vec4<f32> = u_xlat15;
        let x_1992 : vec2<f32> = vec2<f32>(x_1991.z, x_1991.w);
        let x_1994 : f32 = u_xlat1.z;
        txVec20 = vec3<f32>(x_1992.x, x_1992.y, x_1994);
        let x_2001 : vec3<f32> = txVec20;
        let x_2003 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2001.xy, x_2001.z);
        u_xlat8.x = x_2003;
        let x_2006 : f32 = u_xlat19.w;
        let x_2008 : f32 = u_xlat8.x;
        let x_2010 : f32 = u_xlat81;
        u_xlat81 = ((x_2006 * x_2008) + x_2010);
        let x_2013 : vec4<f32> = u_xlat16;
        let x_2014 : vec2<f32> = vec2<f32>(x_2013.x, x_2013.y);
        let x_2016 : f32 = u_xlat1.z;
        txVec21 = vec3<f32>(x_2014.x, x_2014.y, x_2016);
        let x_2023 : vec3<f32> = txVec21;
        let x_2025 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2023.xy, x_2023.z);
        u_xlat8.x = x_2025;
        let x_2028 : f32 = u_xlat20.x;
        let x_2030 : f32 = u_xlat8.x;
        let x_2032 : f32 = u_xlat81;
        u_xlat81 = ((x_2028 * x_2030) + x_2032);
        let x_2035 : vec4<f32> = u_xlat16;
        let x_2036 : vec2<f32> = vec2<f32>(x_2035.z, x_2035.w);
        let x_2038 : f32 = u_xlat1.z;
        txVec22 = vec3<f32>(x_2036.x, x_2036.y, x_2038);
        let x_2045 : vec3<f32> = txVec22;
        let x_2047 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2045.xy, x_2045.z);
        u_xlat8.x = x_2047;
        let x_2050 : f32 = u_xlat20.y;
        let x_2052 : f32 = u_xlat8.x;
        let x_2054 : f32 = u_xlat81;
        u_xlat81 = ((x_2050 * x_2052) + x_2054);
        let x_2057 : vec2<f32> = u_xlat33;
        let x_2059 : f32 = u_xlat1.z;
        txVec23 = vec3<f32>(x_2057.x, x_2057.y, x_2059);
        let x_2066 : vec3<f32> = txVec23;
        let x_2068 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2066.xy, x_2066.z);
        u_xlat8.x = x_2068;
        let x_2071 : f32 = u_xlat20.z;
        let x_2073 : f32 = u_xlat8.x;
        let x_2075 : f32 = u_xlat81;
        u_xlat81 = ((x_2071 * x_2073) + x_2075);
        let x_2078 : vec4<f32> = u_xlat17;
        let x_2079 : vec2<f32> = vec2<f32>(x_2078.x, x_2078.y);
        let x_2081 : f32 = u_xlat1.z;
        txVec24 = vec3<f32>(x_2079.x, x_2079.y, x_2081);
        let x_2088 : vec3<f32> = txVec24;
        let x_2090 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2088.xy, x_2088.z);
        u_xlat8.x = x_2090;
        let x_2093 : f32 = u_xlat20.w;
        let x_2095 : f32 = u_xlat8.x;
        let x_2097 : f32 = u_xlat81;
        u_xlat81 = ((x_2093 * x_2095) + x_2097);
        let x_2100 : vec4<f32> = u_xlat11;
        let x_2101 : vec2<f32> = vec2<f32>(x_2100.x, x_2100.y);
        let x_2103 : f32 = u_xlat1.z;
        txVec25 = vec3<f32>(x_2101.x, x_2101.y, x_2103);
        let x_2110 : vec3<f32> = txVec25;
        let x_2112 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2110.xy, x_2110.z);
        u_xlat8.x = x_2112;
        let x_2115 : f32 = u_xlat7.x;
        let x_2117 : f32 = u_xlat8.x;
        let x_2119 : f32 = u_xlat81;
        u_xlat81 = ((x_2115 * x_2117) + x_2119);
        let x_2122 : vec4<f32> = u_xlat11;
        let x_2123 : vec2<f32> = vec2<f32>(x_2122.z, x_2122.w);
        let x_2125 : f32 = u_xlat1.z;
        txVec26 = vec3<f32>(x_2123.x, x_2123.y, x_2125);
        let x_2132 : vec3<f32> = txVec26;
        let x_2134 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2132.xy, x_2132.z);
        u_xlat7.x = x_2134;
        let x_2137 : f32 = u_xlat7.y;
        let x_2139 : f32 = u_xlat7.x;
        let x_2141 : f32 = u_xlat81;
        u_xlat81 = ((x_2137 * x_2139) + x_2141);
        let x_2144 : vec2<f32> = u_xlat60;
        let x_2146 : f32 = u_xlat1.z;
        txVec27 = vec3<f32>(x_2144.x, x_2144.y, x_2146);
        let x_2153 : vec3<f32> = txVec27;
        let x_2155 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2153.xy, x_2153.z);
        u_xlat7.x = x_2155;
        let x_2158 : f32 = u_xlat7.z;
        let x_2160 : f32 = u_xlat7.x;
        let x_2162 : f32 = u_xlat81;
        u_xlat81 = ((x_2158 * x_2160) + x_2162);
        let x_2165 : vec2<f32> = u_xlat31;
        let x_2167 : f32 = u_xlat1.z;
        txVec28 = vec3<f32>(x_2165.x, x_2165.y, x_2167);
        let x_2174 : vec3<f32> = txVec28;
        let x_2176 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2174.xy, x_2174.z);
        u_xlat31.x = x_2176;
        let x_2179 : f32 = u_xlat7.w;
        let x_2181 : f32 = u_xlat31.x;
        let x_2183 : f32 = u_xlat81;
        u_xlat6.x = ((x_2179 * x_2181) + x_2183);
      }
    }
  } else {
    let x_2188 : vec4<f32> = u_xlat1;
    let x_2189 : vec2<f32> = vec2<f32>(x_2188.x, x_2188.y);
    let x_2191 : f32 = u_xlat1.z;
    txVec29 = vec3<f32>(x_2189.x, x_2189.y, x_2191);
    let x_2198 : vec3<f32> = txVec29;
    let x_2200 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2198.xy, x_2198.z);
    u_xlat6.x = x_2200;
  }
  let x_2203 : f32 = x_679.x_MainLightShadowParams.x;
  u_xlat1.x = (-(x_2203) + 1.0f);
  let x_2208 : f32 = u_xlat6.x;
  let x_2210 : f32 = x_679.x_MainLightShadowParams.x;
  let x_2213 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_2208 * x_2210) + x_2213);
  let x_2218 : f32 = u_xlat1.z;
  u_xlatb26 = (0.0f >= x_2218);
  let x_2222 : f32 = u_xlat1.z;
  u_xlatb51 = (x_2222 >= 1.0f);
  let x_2224 : bool = u_xlatb51;
  let x_2225 : bool = u_xlatb26;
  u_xlatb26 = (x_2224 | x_2225);
  let x_2227 : bool = u_xlatb26;
  if (x_2227) {
    x_2228 = 1.0f;
  } else {
    let x_2233 : f32 = u_xlat1.x;
    x_2228 = x_2233;
  }
  let x_2234 : f32 = x_2228;
  u_xlat1.x = x_2234;
  let x_2236 : vec3<f32> = vs_INTERP7;
  let x_2238 : vec3<f32> = x_135.x_WorldSpaceCameraPos;
  let x_2240 : vec3<f32> = (x_2236 + -(x_2238));
  let x_2241 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2240.x, x_2240.y, x_2240.z, x_2241.w);
  let x_2243 : vec4<f32> = u_xlat6;
  let x_2245 : vec4<f32> = u_xlat6;
  u_xlat26.x = dot(vec3<f32>(x_2243.x, x_2243.y, x_2243.z), vec3<f32>(x_2245.x, x_2245.y, x_2245.z));
  let x_2251 : f32 = u_xlat26.x;
  let x_2253 : f32 = x_679.x_MainLightShadowParams.z;
  let x_2256 : f32 = x_679.x_MainLightShadowParams.w;
  u_xlat51 = ((x_2251 * x_2253) + x_2256);
  let x_2258 : f32 = u_xlat51;
  u_xlat51 = clamp(x_2258, 0.0f, 1.0f);
  let x_2261 : f32 = u_xlat1.x;
  u_xlat6.x = (-(x_2261) + 1.0f);
  let x_2265 : f32 = u_xlat51;
  let x_2267 : f32 = u_xlat6.x;
  let x_2270 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_2265 * x_2267) + x_2270);
  let x_2273 : vec3<f32> = u_xlat5;
  let x_2275 : vec3<f32> = u_xlat25;
  u_xlat51 = dot(-(x_2273), x_2275);
  let x_2277 : f32 = u_xlat51;
  let x_2278 : f32 = u_xlat51;
  u_xlat51 = (x_2277 + x_2278);
  let x_2280 : vec3<f32> = u_xlat25;
  let x_2281 : f32 = u_xlat51;
  let x_2285 : vec3<f32> = u_xlat5;
  let x_2287 : vec3<f32> = ((x_2280 * -(vec3<f32>(x_2281, x_2281, x_2281))) + -(x_2285));
  let x_2288 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2287.x, x_2287.y, x_2287.z, x_2288.w);
  let x_2290 : vec3<f32> = u_xlat25;
  let x_2291 : vec3<f32> = u_xlat5;
  u_xlat51 = dot(x_2290, x_2291);
  let x_2293 : f32 = u_xlat51;
  u_xlat51 = clamp(x_2293, 0.0f, 1.0f);
  let x_2295 : f32 = u_xlat51;
  u_xlat51 = (-(x_2295) + 1.0f);
  let x_2298 : f32 = u_xlat51;
  let x_2299 : f32 = u_xlat51;
  u_xlat51 = (x_2298 * x_2299);
  let x_2301 : f32 = u_xlat51;
  let x_2302 : f32 = u_xlat51;
  u_xlat51 = (x_2301 * x_2302);
  let x_2304 : f32 = u_xlat76;
  u_xlat81 = ((-(x_2304) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2310 : f32 = u_xlat76;
  let x_2311 : f32 = u_xlat81;
  u_xlat76 = (x_2310 * x_2311);
  let x_2313 : f32 = u_xlat76;
  u_xlat76 = (x_2313 * 6.0f);
  let x_2324 : vec4<f32> = u_xlat6;
  let x_2326 : f32 = u_xlat76;
  let x_2327 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2324.x, x_2324.y, x_2324.z), x_2326);
  u_xlat6 = x_2327;
  let x_2329 : f32 = u_xlat6.w;
  u_xlat76 = (x_2329 + -1.0f);
  let x_2332 : f32 = x_48.unity_SpecCube0_HDR.w;
  let x_2333 : f32 = u_xlat76;
  u_xlat76 = ((x_2332 * x_2333) + 1.0f);
  let x_2336 : f32 = u_xlat76;
  u_xlat76 = max(x_2336, 0.0f);
  let x_2338 : f32 = u_xlat76;
  u_xlat76 = log2(x_2338);
  let x_2340 : f32 = u_xlat76;
  let x_2342 : f32 = x_48.unity_SpecCube0_HDR.y;
  u_xlat76 = (x_2340 * x_2342);
  let x_2344 : f32 = u_xlat76;
  u_xlat76 = exp2(x_2344);
  let x_2346 : f32 = u_xlat76;
  let x_2348 : f32 = x_48.unity_SpecCube0_HDR.x;
  u_xlat76 = (x_2346 * x_2348);
  let x_2350 : vec4<f32> = u_xlat6;
  let x_2352 : f32 = u_xlat76;
  let x_2354 : vec3<f32> = (vec3<f32>(x_2350.x, x_2350.y, x_2350.z) * vec3<f32>(x_2352, x_2352, x_2352));
  let x_2355 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2354.x, x_2354.y, x_2354.z, x_2355.w);
  let x_2357 : f32 = u_xlat77;
  let x_2359 : f32 = u_xlat77;
  let x_2363 : vec2<f32> = ((vec2<f32>(x_2357, x_2357) * vec2<f32>(x_2359, x_2359)) + vec2<f32>(-1.0f, 1.0f));
  let x_2364 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2363.x, x_2363.y, x_2364.z, x_2364.w);
  let x_2367 : f32 = u_xlat7.y;
  u_xlat76 = (1.0f / x_2367);
  let x_2369 : vec3<f32> = u_xlat2;
  let x_2371 : vec4<f32> = u_xlat0;
  u_xlat32 = (-(x_2369) + vec3<f32>(x_2371.x, x_2371.x, x_2371.x));
  let x_2374 : f32 = u_xlat51;
  let x_2376 : vec3<f32> = u_xlat32;
  let x_2378 : vec3<f32> = u_xlat2;
  u_xlat32 = ((vec3<f32>(x_2374, x_2374, x_2374) * x_2376) + x_2378);
  let x_2380 : f32 = u_xlat76;
  let x_2382 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_2380, x_2380, x_2380) * x_2382);
  let x_2384 : vec4<f32> = u_xlat6;
  let x_2386 : vec3<f32> = u_xlat32;
  let x_2387 : vec3<f32> = (vec3<f32>(x_2384.x, x_2384.y, x_2384.z) * x_2386);
  let x_2388 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2387.x, x_2387.y, x_2387.z, x_2388.w);
  let x_2390 : vec4<f32> = u_xlat4;
  let x_2392 : vec3<f32> = u_xlat3;
  let x_2394 : vec4<f32> = u_xlat6;
  let x_2396 : vec3<f32> = ((vec3<f32>(x_2390.x, x_2390.y, x_2390.z) * x_2392) + vec3<f32>(x_2394.x, x_2394.y, x_2394.z));
  let x_2397 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2396.x, x_2396.y, x_2396.z, x_2397.w);
  let x_2400 : f32 = u_xlat1.x;
  let x_2402 : f32 = x_48.unity_LightData.z;
  u_xlat0.x = (x_2400 * x_2402);
  let x_2405 : vec3<f32> = u_xlat25;
  let x_2407 : vec4<f32> = x_135.x_MainLightPosition;
  u_xlat1.x = dot(x_2405, vec3<f32>(x_2407.x, x_2407.y, x_2407.z));
  let x_2412 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_2412, 0.0f, 1.0f);
  let x_2416 : f32 = u_xlat0.x;
  let x_2418 : f32 = u_xlat1.x;
  u_xlat0.x = (x_2416 * x_2418);
  let x_2421 : vec4<f32> = u_xlat0;
  let x_2424 : vec4<f32> = x_135.x_MainLightColor;
  let x_2426 : vec3<f32> = (vec3<f32>(x_2421.x, x_2421.x, x_2421.x) * vec3<f32>(x_2424.x, x_2424.y, x_2424.z));
  let x_2427 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2426.x, x_2427.y, x_2426.y, x_2426.z);
  let x_2429 : vec3<f32> = u_xlat5;
  let x_2431 : vec4<f32> = x_135.x_MainLightPosition;
  let x_2433 : vec3<f32> = (x_2429 + vec3<f32>(x_2431.x, x_2431.y, x_2431.z));
  let x_2434 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2433.x, x_2433.y, x_2433.z, x_2434.w);
  let x_2436 : vec4<f32> = u_xlat6;
  let x_2438 : vec4<f32> = u_xlat6;
  u_xlat0.x = dot(vec3<f32>(x_2436.x, x_2436.y, x_2436.z), vec3<f32>(x_2438.x, x_2438.y, x_2438.z));
  let x_2443 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2443, 1.17549435e-38f);
  let x_2447 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_2447);
  let x_2450 : vec4<f32> = u_xlat0;
  let x_2452 : vec4<f32> = u_xlat6;
  let x_2454 : vec3<f32> = (vec3<f32>(x_2450.x, x_2450.x, x_2450.x) * vec3<f32>(x_2452.x, x_2452.y, x_2452.z));
  let x_2455 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2454.x, x_2454.y, x_2454.z, x_2455.w);
  let x_2457 : vec3<f32> = u_xlat25;
  let x_2458 : vec4<f32> = u_xlat6;
  u_xlat0.x = dot(x_2457, vec3<f32>(x_2458.x, x_2458.y, x_2458.z));
  let x_2463 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_2463, 0.0f, 1.0f);
  let x_2467 : vec4<f32> = x_135.x_MainLightPosition;
  let x_2469 : vec4<f32> = u_xlat6;
  u_xlat77 = dot(vec3<f32>(x_2467.x, x_2467.y, x_2467.z), vec3<f32>(x_2469.x, x_2469.y, x_2469.z));
  let x_2472 : f32 = u_xlat77;
  u_xlat77 = clamp(x_2472, 0.0f, 1.0f);
  let x_2475 : f32 = u_xlat0.x;
  let x_2477 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2475 * x_2477);
  let x_2481 : f32 = u_xlat0.x;
  let x_2483 : f32 = u_xlat7.x;
  u_xlat0.x = ((x_2481 * x_2483) + 1.00001001358032226562f);
  let x_2488 : f32 = u_xlat77;
  let x_2489 : f32 = u_xlat77;
  u_xlat77 = (x_2488 * x_2489);
  let x_2492 : f32 = u_xlat0.x;
  let x_2494 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2492 * x_2494);
  let x_2497 : f32 = u_xlat77;
  u_xlat77 = max(x_2497, 0.10000000149011611938f);
  let x_2500 : f32 = u_xlat0.x;
  let x_2501 : f32 = u_xlat77;
  u_xlat0.x = (x_2500 * x_2501);
  let x_2504 : f32 = u_xlat79;
  let x_2506 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2504 * x_2506);
  let x_2509 : f32 = u_xlat78;
  let x_2511 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2509 / x_2511);
  let x_2514 : vec3<f32> = u_xlat2;
  let x_2515 : vec4<f32> = u_xlat0;
  let x_2518 : vec3<f32> = u_xlat3;
  let x_2519 : vec3<f32> = ((x_2514 * vec3<f32>(x_2515.x, x_2515.x, x_2515.x)) + x_2518);
  let x_2520 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2519.x, x_2519.y, x_2519.z, x_2520.w);
  let x_2522 : vec4<f32> = u_xlat1;
  let x_2524 : vec4<f32> = u_xlat6;
  let x_2526 : vec3<f32> = (vec3<f32>(x_2522.x, x_2522.z, x_2522.w) * vec3<f32>(x_2524.x, x_2524.y, x_2524.z));
  let x_2527 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2526.x, x_2527.y, x_2526.y, x_2526.z);
  let x_2530 : f32 = x_135.x_AdditionalLightsCount.x;
  let x_2532 : f32 = x_48.unity_LightData.y;
  u_xlat0.x = min(x_2530, x_2532);
  let x_2537 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_2537));
  let x_2541 : f32 = u_xlat26.x;
  let x_2544 : f32 = x_679.x_AdditionalShadowFadeParams.x;
  let x_2547 : f32 = x_679.x_AdditionalShadowFadeParams.y;
  u_xlat26.x = ((x_2541 * x_2544) + x_2547);
  let x_2551 : f32 = u_xlat26.x;
  u_xlat26.x = clamp(x_2551, 0.0f, 1.0f);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2564 : u32 = u_xlatu_loop_1;
    let x_2565 : u32 = u_xlatu0;
    if ((x_2564 < x_2565)) {
    } else {
      break;
    }
    let x_2568 : u32 = u_xlatu_loop_1;
    u_xlatu81 = (x_2568 >> 2u);
    let x_2571 : u32 = u_xlatu_loop_1;
    u_xlati32 = bitcast<i32>((x_2571 & 3u));
    let x_2574 : u32 = u_xlatu81;
    let x_2577 : vec4<f32> = x_48.unity_LightIndices[bitcast<i32>(x_2574)];
    let x_2587 : i32 = u_xlati32;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2592 : vec4<u32> = indexable[x_2587];
    u_xlat81 = dot(x_2577, bitcast<vec4<f32>>(x_2592));
    let x_2596 : f32 = u_xlat81;
    u_xlati81 = i32(x_2596);
    let x_2598 : vec3<f32> = vs_INTERP7;
    let x_2609 : i32 = u_xlati81;
    let x_2611 : vec4<f32> = x_2608.x_AdditionalLightsPosition[x_2609];
    let x_2614 : i32 = u_xlati81;
    let x_2616 : vec4<f32> = x_2608.x_AdditionalLightsPosition[x_2614];
    u_xlat32 = ((-(x_2598) * vec3<f32>(x_2611.w, x_2611.w, x_2611.w)) + vec3<f32>(x_2616.x, x_2616.y, x_2616.z));
    let x_2619 : vec3<f32> = u_xlat32;
    let x_2620 : vec3<f32> = u_xlat32;
    u_xlat8.x = dot(x_2619, x_2620);
    let x_2624 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_2624, 0.00006103515625f);
    let x_2628 : f32 = u_xlat8.x;
    u_xlat33.x = inverseSqrt(x_2628);
    let x_2631 : vec3<f32> = u_xlat32;
    let x_2632 : vec2<f32> = u_xlat33;
    let x_2634 : vec3<f32> = (x_2631 * vec3<f32>(x_2632.x, x_2632.x, x_2632.x));
    let x_2635 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2634.x, x_2634.y, x_2634.z, x_2635.w);
    let x_2639 : f32 = u_xlat8.x;
    u_xlat58 = (1.0f / x_2639);
    let x_2642 : f32 = u_xlat8.x;
    let x_2643 : i32 = u_xlati81;
    let x_2645 : f32 = x_2608.x_AdditionalLightsAttenuation[x_2643].x;
    u_xlat8.x = (x_2642 * x_2645);
    let x_2649 : f32 = u_xlat8.x;
    let x_2652 : f32 = u_xlat8.x;
    u_xlat8.x = ((-(x_2649) * x_2652) + 1.0f);
    let x_2657 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_2657, 0.0f);
    let x_2661 : f32 = u_xlat8.x;
    let x_2663 : f32 = u_xlat8.x;
    u_xlat8.x = (x_2661 * x_2663);
    let x_2667 : f32 = u_xlat8.x;
    let x_2668 : f32 = u_xlat58;
    u_xlat8.x = (x_2667 * x_2668);
    let x_2671 : i32 = u_xlati81;
    let x_2673 : vec4<f32> = x_2608.x_AdditionalLightsSpotDir[x_2671];
    let x_2675 : vec4<f32> = u_xlat9;
    u_xlat58 = dot(vec3<f32>(x_2673.x, x_2673.y, x_2673.z), vec3<f32>(x_2675.x, x_2675.y, x_2675.z));
    let x_2678 : f32 = u_xlat58;
    let x_2679 : i32 = u_xlati81;
    let x_2681 : f32 = x_2608.x_AdditionalLightsAttenuation[x_2679].z;
    let x_2683 : i32 = u_xlati81;
    let x_2685 : f32 = x_2608.x_AdditionalLightsAttenuation[x_2683].w;
    u_xlat58 = ((x_2678 * x_2681) + x_2685);
    let x_2687 : f32 = u_xlat58;
    u_xlat58 = clamp(x_2687, 0.0f, 1.0f);
    let x_2689 : f32 = u_xlat58;
    let x_2690 : f32 = u_xlat58;
    u_xlat58 = (x_2689 * x_2690);
    let x_2692 : f32 = u_xlat58;
    let x_2694 : f32 = u_xlat8.x;
    u_xlat8.x = (x_2692 * x_2694);
    let x_2699 : i32 = u_xlati81;
    let x_2701 : f32 = x_679.x_AdditionalShadowParams[x_2699].w;
    u_xlati58 = i32(x_2701);
    let x_2704 : i32 = u_xlati58;
    u_xlatb83 = (x_2704 >= 0i);
    let x_2706 : bool = u_xlatb83;
    if (x_2706) {
      let x_2710 : i32 = u_xlati81;
      let x_2712 : f32 = x_679.x_AdditionalShadowParams[x_2710].z;
      u_xlatb83 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2712, x_2712, x_2712, x_2712))));
      let x_2716 : bool = u_xlatb83;
      if (x_2716) {
        let x_2720 : vec4<f32> = u_xlat9;
        let x_2723 : vec4<f32> = u_xlat9;
        let x_2726 : vec4<bool> = (abs(vec4<f32>(x_2720.z, x_2720.z, x_2720.y, x_2720.z)) >= abs(vec4<f32>(x_2723.x, x_2723.y, x_2723.x, x_2723.x)));
        let x_2728 : vec3<bool> = vec3<bool>(x_2726.x, x_2726.y, x_2726.z);
        let x_2729 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_2728.x, x_2728.y, x_2728.z, x_2729.w);
        let x_2732 : bool = u_xlatb10.y;
        let x_2734 : bool = u_xlatb10.x;
        u_xlatb83 = (x_2732 & x_2734);
        let x_2736 : vec4<f32> = u_xlat9;
        let x_2739 : vec4<bool> = (-(vec4<f32>(x_2736.z, x_2736.y, x_2736.z, x_2736.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2740 : vec3<bool> = vec3<bool>(x_2739.x, x_2739.y, x_2739.w);
        let x_2741 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_2740.x, x_2740.y, x_2741.z, x_2740.z);
        let x_2744 : bool = u_xlatb10.x;
        u_xlat10.x = select(4.0f, 5.0f, x_2744);
        let x_2749 : bool = u_xlatb10.y;
        u_xlat10.y = select(2.0f, 3.0f, x_2749);
        let x_2754 : bool = u_xlatb10.w;
        u_xlat84 = select(0.0f, 1.0f, x_2754);
        let x_2757 : bool = u_xlatb10.z;
        if (x_2757) {
          let x_2762 : f32 = u_xlat10.y;
          x_2758 = x_2762;
        } else {
          let x_2764 : f32 = u_xlat84;
          x_2758 = x_2764;
        }
        let x_2765 : f32 = x_2758;
        u_xlat84 = x_2765;
        let x_2767 : bool = u_xlatb83;
        if (x_2767) {
          let x_2772 : f32 = u_xlat10.x;
          x_2768 = x_2772;
        } else {
          let x_2774 : f32 = u_xlat84;
          x_2768 = x_2774;
        }
        let x_2775 : f32 = x_2768;
        u_xlat83 = x_2775;
        let x_2776 : i32 = u_xlati81;
        let x_2778 : f32 = x_679.x_AdditionalShadowParams[x_2776].w;
        u_xlat84 = trunc(x_2778);
        let x_2780 : f32 = u_xlat83;
        let x_2781 : f32 = u_xlat84;
        u_xlat83 = (x_2780 + x_2781);
        let x_2783 : f32 = u_xlat83;
        u_xlati58 = i32(x_2783);
      }
      let x_2785 : i32 = u_xlati58;
      u_xlati58 = (x_2785 << bitcast<u32>(2i));
      let x_2787 : vec3<f32> = vs_INTERP7;
      let x_2790 : i32 = u_xlati58;
      let x_2793 : i32 = u_xlati58;
      let x_2797 : vec4<f32> = x_679.x_AdditionalLightsWorldToShadow[((x_2790 + 1i) / 4i)][((x_2793 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_2787.y, x_2787.y, x_2787.y, x_2787.y) * x_2797);
      let x_2799 : i32 = u_xlati58;
      let x_2801 : i32 = u_xlati58;
      let x_2804 : vec4<f32> = x_679.x_AdditionalLightsWorldToShadow[(x_2799 / 4i)][(x_2801 % 4i)];
      let x_2805 : vec3<f32> = vs_INTERP7;
      let x_2808 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2804 * vec4<f32>(x_2805.x, x_2805.x, x_2805.x, x_2805.x)) + x_2808);
      let x_2810 : i32 = u_xlati58;
      let x_2813 : i32 = u_xlati58;
      let x_2817 : vec4<f32> = x_679.x_AdditionalLightsWorldToShadow[((x_2810 + 2i) / 4i)][((x_2813 + 2i) % 4i)];
      let x_2818 : vec3<f32> = vs_INTERP7;
      let x_2821 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2817 * vec4<f32>(x_2818.z, x_2818.z, x_2818.z, x_2818.z)) + x_2821);
      let x_2823 : vec4<f32> = u_xlat10;
      let x_2824 : i32 = u_xlati58;
      let x_2827 : i32 = u_xlati58;
      let x_2831 : vec4<f32> = x_679.x_AdditionalLightsWorldToShadow[((x_2824 + 3i) / 4i)][((x_2827 + 3i) % 4i)];
      u_xlat10 = (x_2823 + x_2831);
      let x_2833 : vec4<f32> = u_xlat10;
      let x_2835 : vec4<f32> = u_xlat10;
      let x_2837 : vec3<f32> = (vec3<f32>(x_2833.x, x_2833.y, x_2833.z) / vec3<f32>(x_2835.w, x_2835.w, x_2835.w));
      let x_2838 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2837.x, x_2837.y, x_2837.z, x_2838.w);
      let x_2841 : i32 = u_xlati81;
      let x_2843 : f32 = x_679.x_AdditionalShadowParams[x_2841].y;
      u_xlatb58 = (0.0f < x_2843);
      let x_2845 : bool = u_xlatb58;
      if (x_2845) {
        let x_2848 : i32 = u_xlati81;
        let x_2850 : f32 = x_679.x_AdditionalShadowParams[x_2848].y;
        u_xlatb58 = (1.0f == x_2850);
        let x_2852 : bool = u_xlatb58;
        if (x_2852) {
          let x_2855 : vec4<f32> = u_xlat10;
          let x_2859 : vec4<f32> = x_679.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2855.x, x_2855.y, x_2855.x, x_2855.y) + x_2859);
          let x_2862 : vec4<f32> = u_xlat11;
          let x_2863 : vec2<f32> = vec2<f32>(x_2862.x, x_2862.y);
          let x_2865 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2863.x, x_2863.y, x_2865);
          let x_2873 : vec3<f32> = txVec30;
          let x_2875 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2873.xy, x_2873.z);
          u_xlat12.x = x_2875;
          let x_2878 : vec4<f32> = u_xlat11;
          let x_2879 : vec2<f32> = vec2<f32>(x_2878.z, x_2878.w);
          let x_2881 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_2879.x, x_2879.y, x_2881);
          let x_2888 : vec3<f32> = txVec31;
          let x_2890 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2888.xy, x_2888.z);
          u_xlat12.y = x_2890;
          let x_2892 : vec4<f32> = u_xlat10;
          let x_2896 : vec4<f32> = x_679.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_2892.x, x_2892.y, x_2892.x, x_2892.y) + x_2896);
          let x_2899 : vec4<f32> = u_xlat11;
          let x_2900 : vec2<f32> = vec2<f32>(x_2899.x, x_2899.y);
          let x_2902 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_2900.x, x_2900.y, x_2902);
          let x_2909 : vec3<f32> = txVec32;
          let x_2911 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2909.xy, x_2909.z);
          u_xlat12.z = x_2911;
          let x_2914 : vec4<f32> = u_xlat11;
          let x_2915 : vec2<f32> = vec2<f32>(x_2914.z, x_2914.w);
          let x_2917 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_2915.x, x_2915.y, x_2917);
          let x_2924 : vec3<f32> = txVec33;
          let x_2926 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2924.xy, x_2924.z);
          u_xlat12.w = x_2926;
          let x_2928 : vec4<f32> = u_xlat12;
          u_xlat58 = dot(x_2928, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2931 : i32 = u_xlati81;
          let x_2933 : f32 = x_679.x_AdditionalShadowParams[x_2931].y;
          u_xlatb83 = (2.0f == x_2933);
          let x_2935 : bool = u_xlatb83;
          if (x_2935) {
            let x_2938 : vec4<f32> = u_xlat10;
            let x_2942 : vec4<f32> = x_679.x_AdditionalShadowmapSize;
            let x_2945 : vec2<f32> = ((vec2<f32>(x_2938.x, x_2938.y) * vec2<f32>(x_2942.z, x_2942.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2946 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2945.x, x_2945.y, x_2946.z, x_2946.w);
            let x_2948 : vec4<f32> = u_xlat11;
            let x_2950 : vec2<f32> = floor(vec2<f32>(x_2948.x, x_2948.y));
            let x_2951 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2950.x, x_2950.y, x_2951.z, x_2951.w);
            let x_2954 : vec4<f32> = u_xlat10;
            let x_2957 : vec4<f32> = x_679.x_AdditionalShadowmapSize;
            let x_2960 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2954.x, x_2954.y) * vec2<f32>(x_2957.z, x_2957.w)) + -(vec2<f32>(x_2960.x, x_2960.y)));
            let x_2964 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2964.x, x_2964.x, x_2964.y, x_2964.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2967 : vec4<f32> = u_xlat12;
            let x_2969 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2967.x, x_2967.x, x_2967.z, x_2967.z) * vec4<f32>(x_2969.x, x_2969.x, x_2969.z, x_2969.z));
            let x_2972 : vec4<f32> = u_xlat13;
            let x_2974 : vec2<f32> = (vec2<f32>(x_2972.y, x_2972.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2975 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2974.x, x_2975.y, x_2974.y, x_2975.w);
            let x_2977 : vec4<f32> = u_xlat13;
            let x_2980 : vec2<f32> = u_xlat61;
            let x_2982 : vec2<f32> = ((vec2<f32>(x_2977.x, x_2977.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2980));
            let x_2983 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2982.x, x_2982.y, x_2983.z, x_2983.w);
            let x_2985 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_2985) + vec2<f32>(1.0f, 1.0f));
            let x_2988 : vec2<f32> = u_xlat61;
            let x_2989 : vec2<f32> = min(x_2988, vec2<f32>(0.0f, 0.0f));
            let x_2990 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2989.x, x_2989.y, x_2990.z, x_2990.w);
            let x_2992 : vec4<f32> = u_xlat14;
            let x_2995 : vec4<f32> = u_xlat14;
            let x_2998 : vec2<f32> = u_xlat63;
            let x_2999 : vec2<f32> = ((-(vec2<f32>(x_2992.x, x_2992.y)) * vec2<f32>(x_2995.x, x_2995.y)) + x_2998);
            let x_3000 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2999.x, x_2999.y, x_3000.z, x_3000.w);
            let x_3002 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_3002, vec2<f32>(0.0f, 0.0f));
            let x_3004 : vec2<f32> = u_xlat61;
            let x_3006 : vec2<f32> = u_xlat61;
            let x_3008 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_3004) * x_3006) + vec2<f32>(x_3008.y, x_3008.w));
            let x_3011 : vec4<f32> = u_xlat14;
            let x_3013 : vec2<f32> = (vec2<f32>(x_3011.x, x_3011.y) + vec2<f32>(1.0f, 1.0f));
            let x_3014 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3013.x, x_3013.y, x_3014.z, x_3014.w);
            let x_3016 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_3016 + vec2<f32>(1.0f, 1.0f));
            let x_3018 : vec4<f32> = u_xlat13;
            let x_3020 : vec2<f32> = (vec2<f32>(x_3018.x, x_3018.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3021 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3020.x, x_3020.y, x_3021.z, x_3021.w);
            let x_3023 : vec2<f32> = u_xlat63;
            let x_3024 : vec2<f32> = (x_3023 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3025 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3024.x, x_3024.y, x_3025.z, x_3025.w);
            let x_3027 : vec4<f32> = u_xlat14;
            let x_3029 : vec2<f32> = (vec2<f32>(x_3027.x, x_3027.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3030 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3029.x, x_3029.y, x_3030.z, x_3030.w);
            let x_3032 : vec2<f32> = u_xlat61;
            let x_3033 : vec2<f32> = (x_3032 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3034 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3033.x, x_3033.y, x_3034.z, x_3034.w);
            let x_3036 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_3036.y, x_3036.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3040 : f32 = u_xlat14.x;
            u_xlat15.z = x_3040;
            let x_3043 : f32 = u_xlat61.x;
            u_xlat15.w = x_3043;
            let x_3046 : f32 = u_xlat16.x;
            u_xlat13.z = x_3046;
            let x_3049 : f32 = u_xlat12.x;
            u_xlat13.w = x_3049;
            let x_3051 : vec4<f32> = u_xlat13;
            let x_3053 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_3051.z, x_3051.w, x_3051.x, x_3051.z) + vec4<f32>(x_3053.z, x_3053.w, x_3053.x, x_3053.z));
            let x_3057 : f32 = u_xlat15.y;
            u_xlat14.z = x_3057;
            let x_3060 : f32 = u_xlat61.y;
            u_xlat14.w = x_3060;
            let x_3063 : f32 = u_xlat13.y;
            u_xlat16.z = x_3063;
            let x_3066 : f32 = u_xlat12.z;
            u_xlat16.w = x_3066;
            let x_3068 : vec4<f32> = u_xlat14;
            let x_3070 : vec4<f32> = u_xlat16;
            let x_3072 : vec3<f32> = (vec3<f32>(x_3068.z, x_3068.y, x_3068.w) + vec3<f32>(x_3070.z, x_3070.y, x_3070.w));
            let x_3073 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3072.x, x_3072.y, x_3072.z, x_3073.w);
            let x_3075 : vec4<f32> = u_xlat13;
            let x_3077 : vec4<f32> = u_xlat17;
            let x_3079 : vec3<f32> = (vec3<f32>(x_3075.x, x_3075.z, x_3075.w) / vec3<f32>(x_3077.z, x_3077.w, x_3077.y));
            let x_3080 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3079.x, x_3079.y, x_3079.z, x_3080.w);
            let x_3082 : vec4<f32> = u_xlat13;
            let x_3084 : vec3<f32> = (vec3<f32>(x_3082.x, x_3082.y, x_3082.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3085 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3084.x, x_3084.y, x_3084.z, x_3085.w);
            let x_3087 : vec4<f32> = u_xlat16;
            let x_3089 : vec4<f32> = u_xlat12;
            let x_3091 : vec3<f32> = (vec3<f32>(x_3087.z, x_3087.y, x_3087.w) / vec3<f32>(x_3089.x, x_3089.y, x_3089.z));
            let x_3092 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3091.x, x_3091.y, x_3091.z, x_3092.w);
            let x_3094 : vec4<f32> = u_xlat14;
            let x_3096 : vec3<f32> = (vec3<f32>(x_3094.x, x_3094.y, x_3094.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3097 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3096.x, x_3096.y, x_3096.z, x_3097.w);
            let x_3099 : vec4<f32> = u_xlat13;
            let x_3102 : vec4<f32> = x_679.x_AdditionalShadowmapSize;
            let x_3104 : vec3<f32> = (vec3<f32>(x_3099.y, x_3099.x, x_3099.z) * vec3<f32>(x_3102.x, x_3102.x, x_3102.x));
            let x_3105 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3104.x, x_3104.y, x_3104.z, x_3105.w);
            let x_3107 : vec4<f32> = u_xlat14;
            let x_3110 : vec4<f32> = x_679.x_AdditionalShadowmapSize;
            let x_3112 : vec3<f32> = (vec3<f32>(x_3107.x, x_3107.y, x_3107.z) * vec3<f32>(x_3110.y, x_3110.y, x_3110.y));
            let x_3113 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3112.x, x_3112.y, x_3112.z, x_3113.w);
            let x_3116 : f32 = u_xlat14.x;
            u_xlat13.w = x_3116;
            let x_3118 : vec4<f32> = u_xlat11;
            let x_3121 : vec4<f32> = x_679.x_AdditionalShadowmapSize;
            let x_3124 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_3118.x, x_3118.y, x_3118.x, x_3118.y) * vec4<f32>(x_3121.x, x_3121.y, x_3121.x, x_3121.y)) + vec4<f32>(x_3124.y, x_3124.w, x_3124.x, x_3124.w));
            let x_3127 : vec4<f32> = u_xlat11;
            let x_3130 : vec4<f32> = x_679.x_AdditionalShadowmapSize;
            let x_3133 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_3127.x, x_3127.y) * vec2<f32>(x_3130.x, x_3130.y)) + vec2<f32>(x_3133.z, x_3133.w));
            let x_3137 : f32 = u_xlat13.y;
            u_xlat14.w = x_3137;
            let x_3139 : vec4<f32> = u_xlat14;
            let x_3140 : vec2<f32> = vec2<f32>(x_3139.y, x_3139.z);
            let x_3141 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3141.x, x_3140.x, x_3141.z, x_3140.y);
            let x_3143 : vec4<f32> = u_xlat11;
            let x_3146 : vec4<f32> = x_679.x_AdditionalShadowmapSize;
            let x_3149 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_3143.x, x_3143.y, x_3143.x, x_3143.y) * vec4<f32>(x_3146.x, x_3146.y, x_3146.x, x_3146.y)) + vec4<f32>(x_3149.x, x_3149.y, x_3149.z, x_3149.y));
            let x_3152 : vec4<f32> = u_xlat11;
            let x_3155 : vec4<f32> = x_679.x_AdditionalShadowmapSize;
            let x_3158 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3152.x, x_3152.y, x_3152.x, x_3152.y) * vec4<f32>(x_3155.x, x_3155.y, x_3155.x, x_3155.y)) + vec4<f32>(x_3158.w, x_3158.y, x_3158.w, x_3158.z));
            let x_3161 : vec4<f32> = u_xlat11;
            let x_3164 : vec4<f32> = x_679.x_AdditionalShadowmapSize;
            let x_3167 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_3161.x, x_3161.y, x_3161.x, x_3161.y) * vec4<f32>(x_3164.x, x_3164.y, x_3164.x, x_3164.y)) + vec4<f32>(x_3167.x, x_3167.w, x_3167.z, x_3167.w));
            let x_3170 : vec4<f32> = u_xlat12;
            let x_3172 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_3170.x, x_3170.x, x_3170.x, x_3170.y) * vec4<f32>(x_3172.z, x_3172.w, x_3172.y, x_3172.z));
            let x_3175 : vec4<f32> = u_xlat12;
            let x_3177 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_3175.y, x_3175.y, x_3175.z, x_3175.z) * x_3177);
            let x_3180 : f32 = u_xlat12.z;
            let x_3182 : f32 = u_xlat17.y;
            u_xlat83 = (x_3180 * x_3182);
            let x_3185 : vec4<f32> = u_xlat15;
            let x_3186 : vec2<f32> = vec2<f32>(x_3185.x, x_3185.y);
            let x_3188 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_3186.x, x_3186.y, x_3188);
            let x_3195 : vec3<f32> = txVec34;
            let x_3197 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3195.xy, x_3195.z);
            u_xlat84 = x_3197;
            let x_3199 : vec4<f32> = u_xlat15;
            let x_3200 : vec2<f32> = vec2<f32>(x_3199.z, x_3199.w);
            let x_3202 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_3200.x, x_3200.y, x_3202);
            let x_3210 : vec3<f32> = txVec35;
            let x_3212 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3210.xy, x_3210.z);
            u_xlat85 = x_3212;
            let x_3213 : f32 = u_xlat85;
            let x_3215 : f32 = u_xlat18.y;
            u_xlat85 = (x_3213 * x_3215);
            let x_3218 : f32 = u_xlat18.x;
            let x_3219 : f32 = u_xlat84;
            let x_3221 : f32 = u_xlat85;
            u_xlat84 = ((x_3218 * x_3219) + x_3221);
            let x_3224 : vec2<f32> = u_xlat61;
            let x_3226 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_3224.x, x_3224.y, x_3226);
            let x_3233 : vec3<f32> = txVec36;
            let x_3235 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3233.xy, x_3233.z);
            u_xlat85 = x_3235;
            let x_3237 : f32 = u_xlat18.z;
            let x_3238 : f32 = u_xlat85;
            let x_3240 : f32 = u_xlat84;
            u_xlat84 = ((x_3237 * x_3238) + x_3240);
            let x_3243 : vec4<f32> = u_xlat14;
            let x_3244 : vec2<f32> = vec2<f32>(x_3243.x, x_3243.y);
            let x_3246 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_3244.x, x_3244.y, x_3246);
            let x_3253 : vec3<f32> = txVec37;
            let x_3255 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3253.xy, x_3253.z);
            u_xlat85 = x_3255;
            let x_3257 : f32 = u_xlat18.w;
            let x_3258 : f32 = u_xlat85;
            let x_3260 : f32 = u_xlat84;
            u_xlat84 = ((x_3257 * x_3258) + x_3260);
            let x_3263 : vec4<f32> = u_xlat16;
            let x_3264 : vec2<f32> = vec2<f32>(x_3263.x, x_3263.y);
            let x_3266 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_3264.x, x_3264.y, x_3266);
            let x_3273 : vec3<f32> = txVec38;
            let x_3275 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3273.xy, x_3273.z);
            u_xlat85 = x_3275;
            let x_3277 : f32 = u_xlat19.x;
            let x_3278 : f32 = u_xlat85;
            let x_3280 : f32 = u_xlat84;
            u_xlat84 = ((x_3277 * x_3278) + x_3280);
            let x_3283 : vec4<f32> = u_xlat16;
            let x_3284 : vec2<f32> = vec2<f32>(x_3283.z, x_3283.w);
            let x_3286 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_3284.x, x_3284.y, x_3286);
            let x_3293 : vec3<f32> = txVec39;
            let x_3295 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3293.xy, x_3293.z);
            u_xlat85 = x_3295;
            let x_3297 : f32 = u_xlat19.y;
            let x_3298 : f32 = u_xlat85;
            let x_3300 : f32 = u_xlat84;
            u_xlat84 = ((x_3297 * x_3298) + x_3300);
            let x_3303 : vec4<f32> = u_xlat14;
            let x_3304 : vec2<f32> = vec2<f32>(x_3303.z, x_3303.w);
            let x_3306 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_3304.x, x_3304.y, x_3306);
            let x_3313 : vec3<f32> = txVec40;
            let x_3315 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3313.xy, x_3313.z);
            u_xlat85 = x_3315;
            let x_3317 : f32 = u_xlat19.z;
            let x_3318 : f32 = u_xlat85;
            let x_3320 : f32 = u_xlat84;
            u_xlat84 = ((x_3317 * x_3318) + x_3320);
            let x_3323 : vec4<f32> = u_xlat13;
            let x_3324 : vec2<f32> = vec2<f32>(x_3323.x, x_3323.y);
            let x_3326 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_3324.x, x_3324.y, x_3326);
            let x_3333 : vec3<f32> = txVec41;
            let x_3335 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3333.xy, x_3333.z);
            u_xlat85 = x_3335;
            let x_3337 : f32 = u_xlat19.w;
            let x_3338 : f32 = u_xlat85;
            let x_3340 : f32 = u_xlat84;
            u_xlat84 = ((x_3337 * x_3338) + x_3340);
            let x_3343 : vec4<f32> = u_xlat13;
            let x_3344 : vec2<f32> = vec2<f32>(x_3343.z, x_3343.w);
            let x_3346 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_3344.x, x_3344.y, x_3346);
            let x_3353 : vec3<f32> = txVec42;
            let x_3355 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3353.xy, x_3353.z);
            u_xlat85 = x_3355;
            let x_3356 : f32 = u_xlat83;
            let x_3357 : f32 = u_xlat85;
            let x_3359 : f32 = u_xlat84;
            u_xlat58 = ((x_3356 * x_3357) + x_3359);
          } else {
            let x_3362 : vec4<f32> = u_xlat10;
            let x_3365 : vec4<f32> = x_679.x_AdditionalShadowmapSize;
            let x_3368 : vec2<f32> = ((vec2<f32>(x_3362.x, x_3362.y) * vec2<f32>(x_3365.z, x_3365.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3369 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3368.x, x_3368.y, x_3369.z, x_3369.w);
            let x_3371 : vec4<f32> = u_xlat11;
            let x_3373 : vec2<f32> = floor(vec2<f32>(x_3371.x, x_3371.y));
            let x_3374 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3373.x, x_3373.y, x_3374.z, x_3374.w);
            let x_3376 : vec4<f32> = u_xlat10;
            let x_3379 : vec4<f32> = x_679.x_AdditionalShadowmapSize;
            let x_3382 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3376.x, x_3376.y) * vec2<f32>(x_3379.z, x_3379.w)) + -(vec2<f32>(x_3382.x, x_3382.y)));
            let x_3386 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3386.x, x_3386.x, x_3386.y, x_3386.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3389 : vec4<f32> = u_xlat12;
            let x_3391 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3389.x, x_3389.x, x_3389.z, x_3389.z) * vec4<f32>(x_3391.x, x_3391.x, x_3391.z, x_3391.z));
            let x_3394 : vec4<f32> = u_xlat13;
            let x_3396 : vec2<f32> = (vec2<f32>(x_3394.y, x_3394.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3397 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3397.x, x_3396.x, x_3397.z, x_3396.y);
            let x_3399 : vec4<f32> = u_xlat13;
            let x_3402 : vec2<f32> = u_xlat61;
            let x_3404 : vec2<f32> = ((vec2<f32>(x_3399.x, x_3399.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3402));
            let x_3405 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3404.x, x_3405.y, x_3404.y, x_3405.w);
            let x_3407 : vec2<f32> = u_xlat61;
            let x_3409 : vec2<f32> = (-(x_3407) + vec2<f32>(1.0f, 1.0f));
            let x_3410 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3409.x, x_3409.y, x_3410.z, x_3410.w);
            let x_3412 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_3412, vec2<f32>(0.0f, 0.0f));
            let x_3414 : vec2<f32> = u_xlat63;
            let x_3416 : vec2<f32> = u_xlat63;
            let x_3418 : vec4<f32> = u_xlat13;
            let x_3420 : vec2<f32> = ((-(x_3414) * x_3416) + vec2<f32>(x_3418.x, x_3418.y));
            let x_3421 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3420.x, x_3420.y, x_3421.z, x_3421.w);
            let x_3423 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_3423, vec2<f32>(0.0f, 0.0f));
            let x_3426 : vec2<f32> = u_xlat63;
            let x_3428 : vec2<f32> = u_xlat63;
            let x_3430 : vec4<f32> = u_xlat12;
            let x_3432 : vec2<f32> = ((-(x_3426) * x_3428) + vec2<f32>(x_3430.y, x_3430.w));
            let x_3433 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_3432.x, x_3433.y, x_3432.y);
            let x_3435 : vec4<f32> = u_xlat13;
            let x_3437 : vec2<f32> = (vec2<f32>(x_3435.x, x_3435.y) + vec2<f32>(2.0f, 2.0f));
            let x_3438 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3437.x, x_3437.y, x_3438.z, x_3438.w);
            let x_3440 : vec3<f32> = u_xlat37;
            let x_3442 : vec2<f32> = (vec2<f32>(x_3440.x, x_3440.z) + vec2<f32>(2.0f, 2.0f));
            let x_3443 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3443.x, x_3442.x, x_3443.z, x_3442.y);
            let x_3446 : f32 = u_xlat12.y;
            u_xlat15.z = (x_3446 * 0.08163200318813323975f);
            let x_3449 : vec4<f32> = u_xlat12;
            let x_3452 : vec3<f32> = (vec3<f32>(x_3449.z, x_3449.x, x_3449.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3453 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3452.x, x_3452.y, x_3452.z, x_3453.w);
            let x_3455 : vec4<f32> = u_xlat13;
            let x_3457 : vec2<f32> = (vec2<f32>(x_3455.x, x_3455.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3458 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3457.x, x_3457.y, x_3458.z, x_3458.w);
            let x_3461 : f32 = u_xlat16.y;
            u_xlat15.x = x_3461;
            let x_3463 : vec2<f32> = u_xlat61;
            let x_3466 : vec2<f32> = ((vec2<f32>(x_3463.x, x_3463.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3467 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3467.x, x_3466.x, x_3467.z, x_3466.y);
            let x_3469 : vec2<f32> = u_xlat61;
            let x_3472 : vec2<f32> = ((vec2<f32>(x_3469.x, x_3469.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3473 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3472.x, x_3473.y, x_3472.y, x_3473.w);
            let x_3476 : f32 = u_xlat12.x;
            u_xlat13.y = x_3476;
            let x_3479 : f32 = u_xlat14.y;
            u_xlat13.w = x_3479;
            let x_3481 : vec4<f32> = u_xlat13;
            let x_3482 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3481 + x_3482);
            let x_3484 : vec2<f32> = u_xlat61;
            let x_3487 : vec2<f32> = ((vec2<f32>(x_3484.y, x_3484.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3488 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3488.x, x_3487.x, x_3488.z, x_3487.y);
            let x_3490 : vec2<f32> = u_xlat61;
            let x_3493 : vec2<f32> = ((vec2<f32>(x_3490.y, x_3490.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3494 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3493.x, x_3494.y, x_3493.y, x_3494.w);
            let x_3497 : f32 = u_xlat12.y;
            u_xlat14.y = x_3497;
            let x_3499 : vec4<f32> = u_xlat14;
            let x_3500 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_3499 + x_3500);
            let x_3502 : vec4<f32> = u_xlat13;
            let x_3503 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_3502 / x_3503);
            let x_3505 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3505 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3507 : vec4<f32> = u_xlat14;
            let x_3508 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_3507 / x_3508);
            let x_3510 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3510 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3512 : vec4<f32> = u_xlat13;
            let x_3515 : vec4<f32> = x_679.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3512.w, x_3512.x, x_3512.y, x_3512.z) * vec4<f32>(x_3515.x, x_3515.x, x_3515.x, x_3515.x));
            let x_3518 : vec4<f32> = u_xlat14;
            let x_3521 : vec4<f32> = x_679.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3518.x, x_3518.w, x_3518.y, x_3518.z) * vec4<f32>(x_3521.y, x_3521.y, x_3521.y, x_3521.y));
            let x_3524 : vec4<f32> = u_xlat13;
            let x_3525 : vec3<f32> = vec3<f32>(x_3524.y, x_3524.z, x_3524.w);
            let x_3526 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3525.x, x_3526.y, x_3525.y, x_3525.z);
            let x_3529 : f32 = u_xlat14.x;
            u_xlat16.y = x_3529;
            let x_3531 : vec4<f32> = u_xlat11;
            let x_3534 : vec4<f32> = x_679.x_AdditionalShadowmapSize;
            let x_3537 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3531.x, x_3531.y, x_3531.x, x_3531.y) * vec4<f32>(x_3534.x, x_3534.y, x_3534.x, x_3534.y)) + vec4<f32>(x_3537.x, x_3537.y, x_3537.z, x_3537.y));
            let x_3540 : vec4<f32> = u_xlat11;
            let x_3543 : vec4<f32> = x_679.x_AdditionalShadowmapSize;
            let x_3546 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_3540.x, x_3540.y) * vec2<f32>(x_3543.x, x_3543.y)) + vec2<f32>(x_3546.w, x_3546.y));
            let x_3550 : f32 = u_xlat16.y;
            u_xlat13.y = x_3550;
            let x_3553 : f32 = u_xlat14.z;
            u_xlat16.y = x_3553;
            let x_3555 : vec4<f32> = u_xlat11;
            let x_3558 : vec4<f32> = x_679.x_AdditionalShadowmapSize;
            let x_3561 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3555.x, x_3555.y, x_3555.x, x_3555.y) * vec4<f32>(x_3558.x, x_3558.y, x_3558.x, x_3558.y)) + vec4<f32>(x_3561.x, x_3561.y, x_3561.z, x_3561.y));
            let x_3564 : vec4<f32> = u_xlat11;
            let x_3567 : vec4<f32> = x_679.x_AdditionalShadowmapSize;
            let x_3570 : vec4<f32> = u_xlat16;
            let x_3572 : vec2<f32> = ((vec2<f32>(x_3564.x, x_3564.y) * vec2<f32>(x_3567.x, x_3567.y)) + vec2<f32>(x_3570.w, x_3570.y));
            let x_3573 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3572.x, x_3572.y, x_3573.z, x_3573.w);
            let x_3576 : f32 = u_xlat16.y;
            u_xlat13.z = x_3576;
            let x_3578 : vec4<f32> = u_xlat11;
            let x_3581 : vec4<f32> = x_679.x_AdditionalShadowmapSize;
            let x_3584 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3578.x, x_3578.y, x_3578.x, x_3578.y) * vec4<f32>(x_3581.x, x_3581.y, x_3581.x, x_3581.y)) + vec4<f32>(x_3584.x, x_3584.y, x_3584.x, x_3584.z));
            let x_3588 : f32 = u_xlat14.w;
            u_xlat16.y = x_3588;
            let x_3591 : vec4<f32> = u_xlat11;
            let x_3594 : vec4<f32> = x_679.x_AdditionalShadowmapSize;
            let x_3597 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3591.x, x_3591.y, x_3591.x, x_3591.y) * vec4<f32>(x_3594.x, x_3594.y, x_3594.x, x_3594.y)) + vec4<f32>(x_3597.x, x_3597.y, x_3597.z, x_3597.y));
            let x_3601 : vec4<f32> = u_xlat11;
            let x_3604 : vec4<f32> = x_679.x_AdditionalShadowmapSize;
            let x_3607 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3601.x, x_3601.y) * vec2<f32>(x_3604.x, x_3604.y)) + vec2<f32>(x_3607.w, x_3607.y));
            let x_3611 : f32 = u_xlat16.y;
            u_xlat13.w = x_3611;
            let x_3614 : vec4<f32> = u_xlat11;
            let x_3617 : vec4<f32> = x_679.x_AdditionalShadowmapSize;
            let x_3620 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3614.x, x_3614.y) * vec2<f32>(x_3617.x, x_3617.y)) + vec2<f32>(x_3620.x, x_3620.w));
            let x_3623 : vec4<f32> = u_xlat16;
            let x_3624 : vec3<f32> = vec3<f32>(x_3623.x, x_3623.z, x_3623.w);
            let x_3625 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3624.x, x_3625.y, x_3624.y, x_3624.z);
            let x_3627 : vec4<f32> = u_xlat11;
            let x_3630 : vec4<f32> = x_679.x_AdditionalShadowmapSize;
            let x_3633 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3627.x, x_3627.y, x_3627.x, x_3627.y) * vec4<f32>(x_3630.x, x_3630.y, x_3630.x, x_3630.y)) + vec4<f32>(x_3633.x, x_3633.y, x_3633.z, x_3633.y));
            let x_3637 : vec4<f32> = u_xlat11;
            let x_3640 : vec4<f32> = x_679.x_AdditionalShadowmapSize;
            let x_3643 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3637.x, x_3637.y) * vec2<f32>(x_3640.x, x_3640.y)) + vec2<f32>(x_3643.w, x_3643.y));
            let x_3647 : f32 = u_xlat13.x;
            u_xlat14.x = x_3647;
            let x_3649 : vec4<f32> = u_xlat11;
            let x_3652 : vec4<f32> = x_679.x_AdditionalShadowmapSize;
            let x_3655 : vec4<f32> = u_xlat14;
            let x_3657 : vec2<f32> = ((vec2<f32>(x_3649.x, x_3649.y) * vec2<f32>(x_3652.x, x_3652.y)) + vec2<f32>(x_3655.x, x_3655.y));
            let x_3658 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3657.x, x_3657.y, x_3658.z, x_3658.w);
            let x_3661 : vec4<f32> = u_xlat12;
            let x_3663 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3661.x, x_3661.x, x_3661.x, x_3661.x) * x_3663);
            let x_3666 : vec4<f32> = u_xlat12;
            let x_3668 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3666.y, x_3666.y, x_3666.y, x_3666.y) * x_3668);
            let x_3671 : vec4<f32> = u_xlat12;
            let x_3673 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3671.z, x_3671.z, x_3671.z, x_3671.z) * x_3673);
            let x_3675 : vec4<f32> = u_xlat12;
            let x_3677 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3675.w, x_3675.w, x_3675.w, x_3675.w) * x_3677);
            let x_3680 : vec4<f32> = u_xlat17;
            let x_3681 : vec2<f32> = vec2<f32>(x_3680.x, x_3680.y);
            let x_3683 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3681.x, x_3681.y, x_3683);
            let x_3690 : vec3<f32> = txVec43;
            let x_3692 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3690.xy, x_3690.z);
            u_xlat83 = x_3692;
            let x_3694 : vec4<f32> = u_xlat17;
            let x_3695 : vec2<f32> = vec2<f32>(x_3694.z, x_3694.w);
            let x_3697 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3695.x, x_3695.y, x_3697);
            let x_3704 : vec3<f32> = txVec44;
            let x_3706 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3704.xy, x_3704.z);
            u_xlat84 = x_3706;
            let x_3707 : f32 = u_xlat84;
            let x_3709 : f32 = u_xlat22.y;
            u_xlat84 = (x_3707 * x_3709);
            let x_3712 : f32 = u_xlat22.x;
            let x_3713 : f32 = u_xlat83;
            let x_3715 : f32 = u_xlat84;
            u_xlat83 = ((x_3712 * x_3713) + x_3715);
            let x_3718 : vec2<f32> = u_xlat61;
            let x_3720 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3718.x, x_3718.y, x_3720);
            let x_3727 : vec3<f32> = txVec45;
            let x_3729 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3727.xy, x_3727.z);
            u_xlat84 = x_3729;
            let x_3731 : f32 = u_xlat22.z;
            let x_3732 : f32 = u_xlat84;
            let x_3734 : f32 = u_xlat83;
            u_xlat83 = ((x_3731 * x_3732) + x_3734);
            let x_3737 : vec4<f32> = u_xlat20;
            let x_3738 : vec2<f32> = vec2<f32>(x_3737.x, x_3737.y);
            let x_3740 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3738.x, x_3738.y, x_3740);
            let x_3747 : vec3<f32> = txVec46;
            let x_3749 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3747.xy, x_3747.z);
            u_xlat84 = x_3749;
            let x_3751 : f32 = u_xlat22.w;
            let x_3752 : f32 = u_xlat84;
            let x_3754 : f32 = u_xlat83;
            u_xlat83 = ((x_3751 * x_3752) + x_3754);
            let x_3757 : vec4<f32> = u_xlat18;
            let x_3758 : vec2<f32> = vec2<f32>(x_3757.x, x_3757.y);
            let x_3760 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3758.x, x_3758.y, x_3760);
            let x_3767 : vec3<f32> = txVec47;
            let x_3769 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3767.xy, x_3767.z);
            u_xlat84 = x_3769;
            let x_3771 : f32 = u_xlat23.x;
            let x_3772 : f32 = u_xlat84;
            let x_3774 : f32 = u_xlat83;
            u_xlat83 = ((x_3771 * x_3772) + x_3774);
            let x_3777 : vec4<f32> = u_xlat18;
            let x_3778 : vec2<f32> = vec2<f32>(x_3777.z, x_3777.w);
            let x_3780 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3778.x, x_3778.y, x_3780);
            let x_3787 : vec3<f32> = txVec48;
            let x_3789 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3787.xy, x_3787.z);
            u_xlat84 = x_3789;
            let x_3791 : f32 = u_xlat23.y;
            let x_3792 : f32 = u_xlat84;
            let x_3794 : f32 = u_xlat83;
            u_xlat83 = ((x_3791 * x_3792) + x_3794);
            let x_3797 : vec4<f32> = u_xlat19;
            let x_3798 : vec2<f32> = vec2<f32>(x_3797.x, x_3797.y);
            let x_3800 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3798.x, x_3798.y, x_3800);
            let x_3807 : vec3<f32> = txVec49;
            let x_3809 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3807.xy, x_3807.z);
            u_xlat84 = x_3809;
            let x_3811 : f32 = u_xlat23.z;
            let x_3812 : f32 = u_xlat84;
            let x_3814 : f32 = u_xlat83;
            u_xlat83 = ((x_3811 * x_3812) + x_3814);
            let x_3817 : vec4<f32> = u_xlat20;
            let x_3818 : vec2<f32> = vec2<f32>(x_3817.z, x_3817.w);
            let x_3820 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3818.x, x_3818.y, x_3820);
            let x_3827 : vec3<f32> = txVec50;
            let x_3829 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3827.xy, x_3827.z);
            u_xlat84 = x_3829;
            let x_3831 : f32 = u_xlat23.w;
            let x_3832 : f32 = u_xlat84;
            let x_3834 : f32 = u_xlat83;
            u_xlat83 = ((x_3831 * x_3832) + x_3834);
            let x_3837 : vec4<f32> = u_xlat21;
            let x_3838 : vec2<f32> = vec2<f32>(x_3837.x, x_3837.y);
            let x_3840 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3838.x, x_3838.y, x_3840);
            let x_3847 : vec3<f32> = txVec51;
            let x_3849 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3847.xy, x_3847.z);
            u_xlat84 = x_3849;
            let x_3851 : f32 = u_xlat24.x;
            let x_3852 : f32 = u_xlat84;
            let x_3854 : f32 = u_xlat83;
            u_xlat83 = ((x_3851 * x_3852) + x_3854);
            let x_3857 : vec4<f32> = u_xlat21;
            let x_3858 : vec2<f32> = vec2<f32>(x_3857.z, x_3857.w);
            let x_3860 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_3858.x, x_3858.y, x_3860);
            let x_3867 : vec3<f32> = txVec52;
            let x_3869 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3867.xy, x_3867.z);
            u_xlat84 = x_3869;
            let x_3871 : f32 = u_xlat24.y;
            let x_3872 : f32 = u_xlat84;
            let x_3874 : f32 = u_xlat83;
            u_xlat83 = ((x_3871 * x_3872) + x_3874);
            let x_3877 : vec2<f32> = u_xlat38;
            let x_3879 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_3877.x, x_3877.y, x_3879);
            let x_3886 : vec3<f32> = txVec53;
            let x_3888 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3886.xy, x_3886.z);
            u_xlat84 = x_3888;
            let x_3890 : f32 = u_xlat24.z;
            let x_3891 : f32 = u_xlat84;
            let x_3893 : f32 = u_xlat83;
            u_xlat83 = ((x_3890 * x_3891) + x_3893);
            let x_3896 : vec2<f32> = u_xlat69;
            let x_3898 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_3896.x, x_3896.y, x_3898);
            let x_3905 : vec3<f32> = txVec54;
            let x_3907 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3905.xy, x_3905.z);
            u_xlat84 = x_3907;
            let x_3909 : f32 = u_xlat24.w;
            let x_3910 : f32 = u_xlat84;
            let x_3912 : f32 = u_xlat83;
            u_xlat83 = ((x_3909 * x_3910) + x_3912);
            let x_3915 : vec4<f32> = u_xlat16;
            let x_3916 : vec2<f32> = vec2<f32>(x_3915.x, x_3915.y);
            let x_3918 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_3916.x, x_3916.y, x_3918);
            let x_3925 : vec3<f32> = txVec55;
            let x_3927 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3925.xy, x_3925.z);
            u_xlat84 = x_3927;
            let x_3929 : f32 = u_xlat12.x;
            let x_3930 : f32 = u_xlat84;
            let x_3932 : f32 = u_xlat83;
            u_xlat83 = ((x_3929 * x_3930) + x_3932);
            let x_3935 : vec4<f32> = u_xlat16;
            let x_3936 : vec2<f32> = vec2<f32>(x_3935.z, x_3935.w);
            let x_3938 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_3936.x, x_3936.y, x_3938);
            let x_3945 : vec3<f32> = txVec56;
            let x_3947 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3945.xy, x_3945.z);
            u_xlat84 = x_3947;
            let x_3949 : f32 = u_xlat12.y;
            let x_3950 : f32 = u_xlat84;
            let x_3952 : f32 = u_xlat83;
            u_xlat83 = ((x_3949 * x_3950) + x_3952);
            let x_3955 : vec2<f32> = u_xlat64;
            let x_3957 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_3955.x, x_3955.y, x_3957);
            let x_3964 : vec3<f32> = txVec57;
            let x_3966 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3964.xy, x_3964.z);
            u_xlat84 = x_3966;
            let x_3968 : f32 = u_xlat12.z;
            let x_3969 : f32 = u_xlat84;
            let x_3971 : f32 = u_xlat83;
            u_xlat83 = ((x_3968 * x_3969) + x_3971);
            let x_3974 : vec4<f32> = u_xlat11;
            let x_3975 : vec2<f32> = vec2<f32>(x_3974.x, x_3974.y);
            let x_3977 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_3975.x, x_3975.y, x_3977);
            let x_3984 : vec3<f32> = txVec58;
            let x_3986 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3984.xy, x_3984.z);
            u_xlat84 = x_3986;
            let x_3988 : f32 = u_xlat12.w;
            let x_3989 : f32 = u_xlat84;
            let x_3991 : f32 = u_xlat83;
            u_xlat58 = ((x_3988 * x_3989) + x_3991);
          }
        }
      } else {
        let x_3995 : vec4<f32> = u_xlat10;
        let x_3996 : vec2<f32> = vec2<f32>(x_3995.x, x_3995.y);
        let x_3998 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_3996.x, x_3996.y, x_3998);
        let x_4005 : vec3<f32> = txVec59;
        let x_4007 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4005.xy, x_4005.z);
        u_xlat58 = x_4007;
      }
      let x_4008 : i32 = u_xlati81;
      let x_4010 : f32 = x_679.x_AdditionalShadowParams[x_4008].x;
      u_xlat83 = (1.0f + -(x_4010));
      let x_4013 : f32 = u_xlat58;
      let x_4014 : i32 = u_xlati81;
      let x_4016 : f32 = x_679.x_AdditionalShadowParams[x_4014].x;
      let x_4018 : f32 = u_xlat83;
      u_xlat58 = ((x_4013 * x_4016) + x_4018);
      let x_4021 : f32 = u_xlat10.z;
      u_xlatb83 = (0.0f >= x_4021);
      let x_4025 : f32 = u_xlat10.z;
      u_xlatb84 = (x_4025 >= 1.0f);
      let x_4027 : bool = u_xlatb83;
      let x_4028 : bool = u_xlatb84;
      u_xlatb83 = (x_4027 | x_4028);
      let x_4030 : bool = u_xlatb83;
      let x_4031 : f32 = u_xlat58;
      u_xlat58 = select(x_4031, 1.0f, x_4030);
    } else {
      u_xlat58 = 1.0f;
    }
    let x_4034 : f32 = u_xlat58;
    u_xlat83 = (-(x_4034) + 1.0f);
    let x_4038 : f32 = u_xlat26.x;
    let x_4039 : f32 = u_xlat83;
    let x_4041 : f32 = u_xlat58;
    u_xlat58 = ((x_4038 * x_4039) + x_4041);
    let x_4043 : f32 = u_xlat58;
    let x_4045 : f32 = u_xlat8.x;
    u_xlat8.x = (x_4043 * x_4045);
    let x_4048 : vec3<f32> = u_xlat25;
    let x_4049 : vec4<f32> = u_xlat9;
    u_xlat58 = dot(x_4048, vec3<f32>(x_4049.x, x_4049.y, x_4049.z));
    let x_4052 : f32 = u_xlat58;
    u_xlat58 = clamp(x_4052, 0.0f, 1.0f);
    let x_4054 : f32 = u_xlat58;
    let x_4056 : f32 = u_xlat8.x;
    u_xlat8.x = (x_4054 * x_4056);
    let x_4059 : vec4<f32> = u_xlat8;
    let x_4061 : i32 = u_xlati81;
    let x_4063 : vec4<f32> = x_2608.x_AdditionalLightsColor[x_4061];
    let x_4065 : vec3<f32> = (vec3<f32>(x_4059.x, x_4059.x, x_4059.x) * vec3<f32>(x_4063.x, x_4063.y, x_4063.z));
    let x_4066 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4065.x, x_4066.y, x_4065.y, x_4065.z);
    let x_4068 : vec3<f32> = u_xlat32;
    let x_4069 : vec2<f32> = u_xlat33;
    let x_4072 : vec3<f32> = u_xlat5;
    u_xlat32 = ((x_4068 * vec3<f32>(x_4069.x, x_4069.x, x_4069.x)) + x_4072);
    let x_4074 : vec3<f32> = u_xlat32;
    let x_4075 : vec3<f32> = u_xlat32;
    u_xlat81 = dot(x_4074, x_4075);
    let x_4077 : f32 = u_xlat81;
    u_xlat81 = max(x_4077, 1.17549435e-38f);
    let x_4079 : f32 = u_xlat81;
    u_xlat81 = inverseSqrt(x_4079);
    let x_4081 : f32 = u_xlat81;
    let x_4083 : vec3<f32> = u_xlat32;
    u_xlat32 = (vec3<f32>(x_4081, x_4081, x_4081) * x_4083);
    let x_4085 : vec3<f32> = u_xlat25;
    let x_4086 : vec3<f32> = u_xlat32;
    u_xlat81 = dot(x_4085, x_4086);
    let x_4088 : f32 = u_xlat81;
    u_xlat81 = clamp(x_4088, 0.0f, 1.0f);
    let x_4090 : vec4<f32> = u_xlat9;
    let x_4092 : vec3<f32> = u_xlat32;
    u_xlat32.x = dot(vec3<f32>(x_4090.x, x_4090.y, x_4090.z), x_4092);
    let x_4096 : f32 = u_xlat32.x;
    u_xlat32.x = clamp(x_4096, 0.0f, 1.0f);
    let x_4099 : f32 = u_xlat81;
    let x_4100 : f32 = u_xlat81;
    u_xlat81 = (x_4099 * x_4100);
    let x_4102 : f32 = u_xlat81;
    let x_4104 : f32 = u_xlat7.x;
    u_xlat81 = ((x_4102 * x_4104) + 1.00001001358032226562f);
    let x_4108 : f32 = u_xlat32.x;
    let x_4110 : f32 = u_xlat32.x;
    u_xlat32.x = (x_4108 * x_4110);
    let x_4113 : f32 = u_xlat81;
    let x_4114 : f32 = u_xlat81;
    u_xlat81 = (x_4113 * x_4114);
    let x_4117 : f32 = u_xlat32.x;
    u_xlat32.x = max(x_4117, 0.10000000149011611938f);
    let x_4120 : f32 = u_xlat81;
    let x_4122 : f32 = u_xlat32.x;
    u_xlat81 = (x_4120 * x_4122);
    let x_4124 : f32 = u_xlat79;
    let x_4125 : f32 = u_xlat81;
    u_xlat81 = (x_4124 * x_4125);
    let x_4127 : f32 = u_xlat78;
    let x_4128 : f32 = u_xlat81;
    u_xlat81 = (x_4127 / x_4128);
    let x_4130 : vec3<f32> = u_xlat2;
    let x_4131 : f32 = u_xlat81;
    let x_4134 : vec3<f32> = u_xlat3;
    u_xlat32 = ((x_4130 * vec3<f32>(x_4131, x_4131, x_4131)) + x_4134);
    let x_4136 : vec3<f32> = u_xlat32;
    let x_4137 : vec4<f32> = u_xlat8;
    let x_4140 : vec4<f32> = u_xlat6;
    let x_4142 : vec3<f32> = ((x_4136 * vec3<f32>(x_4137.x, x_4137.z, x_4137.w)) + vec3<f32>(x_4140.x, x_4140.y, x_4140.z));
    let x_4143 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_4142.x, x_4142.y, x_4142.z, x_4143.w);

    continuing {
      let x_4145 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4145 + bitcast<u32>(1i));
    }
  }
  let x_4147 : vec4<f32> = u_xlat4;
  let x_4149 : f32 = u_xlat80;
  let x_4152 : vec4<f32> = u_xlat1;
  let x_4154 : vec3<f32> = ((vec3<f32>(x_4147.x, x_4147.y, x_4147.z) * vec3<f32>(x_4149, x_4149, x_4149)) + vec3<f32>(x_4152.x, x_4152.z, x_4152.w));
  let x_4155 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4154.x, x_4154.y, x_4154.z, x_4155.w);
  let x_4159 : vec4<f32> = u_xlat6;
  let x_4161 : vec4<f32> = u_xlat0;
  let x_4163 : vec3<f32> = (vec3<f32>(x_4159.x, x_4159.y, x_4159.z) + vec3<f32>(x_4161.x, x_4161.y, x_4161.z));
  let x_4164 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4163.x, x_4163.y, x_4163.z, x_4164.w);
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


