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

@group(0) @binding(4) var x_MainTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainTex : sampler;

var<private> vs_INTERP5 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_135 : PGlobals;

var<private> u_xlat76 : f32;

var<private> vs_INTERP7 : vec3<f32>;

var<private> u_xlat77 : f32;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(7) var Texture2D_D7D66558 : texture_2d<f32>;

@group(0) @binding(14) var samplerTexture2D_D7D66558 : sampler;

@group(1) @binding(4) var<uniform> x_195 : UnityPerMaterial;

var<private> u_xlat78 : f32;

var<private> u_xlat79 : f32;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(5) var Texture2D_DE8BF47E : texture_2d<f32>;

@group(0) @binding(12) var samplerTexture2D_DE8BF47E : sampler;

var<private> u_xlat32 : vec3<f32>;

var<private> u_xlat26 : vec2<f32>;

var<private> u_xlat29 : vec3<f32>;

@group(0) @binding(6) var Texture2D_C005B064 : texture_2d<f32>;

@group(0) @binding(13) var samplerTexture2D_C005B064 : sampler;

@group(0) @binding(3) var x_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1_Texture2D : texture_2d<f32>;

@group(0) @binding(10) var sampler_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1_Texture2D : sampler;

var<private> u_xlat50 : f32;

@group(1) @binding(3) var<uniform> x_682 : LightShadows;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlatb6 : vec4<bool>;

var<private> u_xlatu25 : u32;

var<private> u_xlati25 : i32;

var<private> u_xlat80 : f32;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

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

var<private> u_xlatb50 : bool;

var<private> u_xlatb75 : bool;

var<private> u_xlat75 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu76 : u32;

var<private> u_xlatu81 : u32;

var<private> u_xlati32 : i32;

var<private> u_xlati81 : i32;

@group(1) @binding(1) var<uniform> x_2606 : AdditionalLights;

var<private> u_xlat58 : f32;

var<private> u_xlati58 : i32;

var<private> u_xlatb83 : bool;

var<private> u_xlatb10 : vec4<bool>;

var<private> u_xlat84 : f32;

var<private> u_xlat83 : f32;

var<private> u_xlatb58 : bool;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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
  var x_2251 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2756 : f32;
  var x_2766 : f32;
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
        u_xlat56 = x_1370;
        let x_1372 : vec4<f32> = u_xlat11;
        let x_1373 : vec2<f32> = vec2<f32>(x_1372.z, x_1372.w);
        let x_1375 : f32 = u_xlat25.z;
        txVec5 = vec3<f32>(x_1373.x, x_1373.y, x_1375);
        let x_1383 : vec3<f32> = txVec5;
        let x_1385 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1383.xy, x_1383.z);
        u_xlat81 = x_1385;
        let x_1386 : f32 = u_xlat81;
        let x_1388 : f32 = u_xlat14.y;
        u_xlat81 = (x_1386 * x_1388);
        let x_1391 : f32 = u_xlat14.x;
        let x_1392 : f32 = u_xlat56;
        let x_1394 : f32 = u_xlat81;
        u_xlat56 = ((x_1391 * x_1392) + x_1394);
        let x_1397 : vec4<f32> = u_xlat12;
        let x_1398 : vec2<f32> = vec2<f32>(x_1397.x, x_1397.y);
        let x_1400 : f32 = u_xlat25.z;
        txVec6 = vec3<f32>(x_1398.x, x_1398.y, x_1400);
        let x_1407 : vec3<f32> = txVec6;
        let x_1409 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1407.xy, x_1407.z);
        u_xlat81 = x_1409;
        let x_1411 : f32 = u_xlat14.z;
        let x_1412 : f32 = u_xlat81;
        let x_1414 : f32 = u_xlat56;
        u_xlat56 = ((x_1411 * x_1412) + x_1414);
        let x_1417 : vec4<f32> = u_xlat10;
        let x_1418 : vec2<f32> = vec2<f32>(x_1417.x, x_1417.y);
        let x_1420 : f32 = u_xlat25.z;
        txVec7 = vec3<f32>(x_1418.x, x_1418.y, x_1420);
        let x_1427 : vec3<f32> = txVec7;
        let x_1429 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1427.xy, x_1427.z);
        u_xlat81 = x_1429;
        let x_1431 : f32 = u_xlat14.w;
        let x_1432 : f32 = u_xlat81;
        let x_1434 : f32 = u_xlat56;
        u_xlat56 = ((x_1431 * x_1432) + x_1434);
        let x_1437 : vec4<f32> = u_xlat13;
        let x_1438 : vec2<f32> = vec2<f32>(x_1437.x, x_1437.y);
        let x_1440 : f32 = u_xlat25.z;
        txVec8 = vec3<f32>(x_1438.x, x_1438.y, x_1440);
        let x_1447 : vec3<f32> = txVec8;
        let x_1449 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1447.xy, x_1447.z);
        u_xlat81 = x_1449;
        let x_1451 : f32 = u_xlat15.x;
        let x_1452 : f32 = u_xlat81;
        let x_1454 : f32 = u_xlat56;
        u_xlat56 = ((x_1451 * x_1452) + x_1454);
        let x_1457 : vec4<f32> = u_xlat13;
        let x_1458 : vec2<f32> = vec2<f32>(x_1457.z, x_1457.w);
        let x_1460 : f32 = u_xlat25.z;
        txVec9 = vec3<f32>(x_1458.x, x_1458.y, x_1460);
        let x_1467 : vec3<f32> = txVec9;
        let x_1469 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1467.xy, x_1467.z);
        u_xlat81 = x_1469;
        let x_1471 : f32 = u_xlat15.y;
        let x_1472 : f32 = u_xlat81;
        let x_1474 : f32 = u_xlat56;
        u_xlat56 = ((x_1471 * x_1472) + x_1474);
        let x_1477 : vec4<f32> = u_xlat10;
        let x_1478 : vec2<f32> = vec2<f32>(x_1477.z, x_1477.w);
        let x_1480 : f32 = u_xlat25.z;
        txVec10 = vec3<f32>(x_1478.x, x_1478.y, x_1480);
        let x_1487 : vec3<f32> = txVec10;
        let x_1489 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1487.xy, x_1487.z);
        u_xlat81 = x_1489;
        let x_1491 : f32 = u_xlat15.z;
        let x_1492 : f32 = u_xlat81;
        let x_1494 : f32 = u_xlat56;
        u_xlat56 = ((x_1491 * x_1492) + x_1494);
        let x_1497 : vec4<f32> = u_xlat9;
        let x_1498 : vec2<f32> = vec2<f32>(x_1497.x, x_1497.y);
        let x_1500 : f32 = u_xlat25.z;
        txVec11 = vec3<f32>(x_1498.x, x_1498.y, x_1500);
        let x_1507 : vec3<f32> = txVec11;
        let x_1509 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1507.xy, x_1507.z);
        u_xlat81 = x_1509;
        let x_1511 : f32 = u_xlat15.w;
        let x_1512 : f32 = u_xlat81;
        let x_1514 : f32 = u_xlat56;
        u_xlat56 = ((x_1511 * x_1512) + x_1514);
        let x_1517 : vec4<f32> = u_xlat9;
        let x_1518 : vec2<f32> = vec2<f32>(x_1517.z, x_1517.w);
        let x_1520 : f32 = u_xlat25.z;
        txVec12 = vec3<f32>(x_1518.x, x_1518.y, x_1520);
        let x_1527 : vec3<f32> = txVec12;
        let x_1529 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1527.xy, x_1527.z);
        u_xlat81 = x_1529;
        let x_1531 : f32 = u_xlat31.x;
        let x_1532 : f32 = u_xlat81;
        let x_1534 : f32 = u_xlat56;
        u_xlat6.x = ((x_1531 * x_1532) + x_1534);
      } else {
        let x_1538 : vec3<f32> = u_xlat25;
        let x_1541 : vec4<f32> = x_682.x_MainLightShadowmapSize;
        u_xlat31 = ((vec2<f32>(x_1538.x, x_1538.y) * vec2<f32>(x_1541.z, x_1541.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1545 : vec2<f32> = u_xlat31;
        u_xlat31 = floor(x_1545);
        let x_1547 : vec3<f32> = u_xlat25;
        let x_1550 : vec4<f32> = x_682.x_MainLightShadowmapSize;
        let x_1553 : vec2<f32> = u_xlat31;
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
        let x_1703 : vec4<f32> = x_682.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1700.w, x_1700.x, x_1700.y, x_1700.z) * vec4<f32>(x_1703.x, x_1703.x, x_1703.x, x_1703.x));
        let x_1706 : vec4<f32> = u_xlat10;
        let x_1709 : vec4<f32> = x_682.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1706.x, x_1706.w, x_1706.y, x_1706.z) * vec4<f32>(x_1709.y, x_1709.y, x_1709.y, x_1709.y));
        let x_1712 : vec4<f32> = u_xlat8;
        let x_1713 : vec3<f32> = vec3<f32>(x_1712.y, x_1712.z, x_1712.w);
        let x_1714 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1713.x, x_1714.y, x_1713.y, x_1713.z);
        let x_1717 : f32 = u_xlat10.x;
        u_xlat11.y = x_1717;
        let x_1719 : vec2<f32> = u_xlat31;
        let x_1722 : vec4<f32> = x_682.x_MainLightShadowmapSize;
        let x_1725 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1719.x, x_1719.y, x_1719.x, x_1719.y) * vec4<f32>(x_1722.x, x_1722.y, x_1722.x, x_1722.y)) + vec4<f32>(x_1725.x, x_1725.y, x_1725.z, x_1725.y));
        let x_1728 : vec2<f32> = u_xlat31;
        let x_1730 : vec4<f32> = x_682.x_MainLightShadowmapSize;
        let x_1733 : vec4<f32> = u_xlat11;
        let x_1735 : vec2<f32> = ((x_1728 * vec2<f32>(x_1730.x, x_1730.y)) + vec2<f32>(x_1733.w, x_1733.y));
        let x_1736 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1735.x, x_1735.y, x_1736.z, x_1736.w);
        let x_1739 : f32 = u_xlat11.y;
        u_xlat8.y = x_1739;
        let x_1742 : f32 = u_xlat10.z;
        u_xlat11.y = x_1742;
        let x_1744 : vec2<f32> = u_xlat31;
        let x_1747 : vec4<f32> = x_682.x_MainLightShadowmapSize;
        let x_1750 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_1744.x, x_1744.y, x_1744.x, x_1744.y) * vec4<f32>(x_1747.x, x_1747.y, x_1747.x, x_1747.y)) + vec4<f32>(x_1750.x, x_1750.y, x_1750.z, x_1750.y));
        let x_1754 : vec2<f32> = u_xlat31;
        let x_1756 : vec4<f32> = x_682.x_MainLightShadowmapSize;
        let x_1759 : vec4<f32> = u_xlat11;
        u_xlat63 = ((x_1754 * vec2<f32>(x_1756.x, x_1756.y)) + vec2<f32>(x_1759.w, x_1759.y));
        let x_1763 : f32 = u_xlat11.y;
        u_xlat8.z = x_1763;
        let x_1765 : vec2<f32> = u_xlat31;
        let x_1768 : vec4<f32> = x_682.x_MainLightShadowmapSize;
        let x_1771 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1765.x, x_1765.y, x_1765.x, x_1765.y) * vec4<f32>(x_1768.x, x_1768.y, x_1768.x, x_1768.y)) + vec4<f32>(x_1771.x, x_1771.y, x_1771.x, x_1771.z));
        let x_1775 : f32 = u_xlat10.w;
        u_xlat11.y = x_1775;
        let x_1778 : vec2<f32> = u_xlat31;
        let x_1781 : vec4<f32> = x_682.x_MainLightShadowmapSize;
        let x_1784 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1778.x, x_1778.y, x_1778.x, x_1778.y) * vec4<f32>(x_1781.x, x_1781.y, x_1781.x, x_1781.y)) + vec4<f32>(x_1784.x, x_1784.y, x_1784.z, x_1784.y));
        let x_1788 : vec2<f32> = u_xlat31;
        let x_1790 : vec4<f32> = x_682.x_MainLightShadowmapSize;
        let x_1793 : vec4<f32> = u_xlat11;
        u_xlat33 = ((x_1788 * vec2<f32>(x_1790.x, x_1790.y)) + vec2<f32>(x_1793.w, x_1793.y));
        let x_1797 : f32 = u_xlat11.y;
        u_xlat8.w = x_1797;
        let x_1800 : vec2<f32> = u_xlat31;
        let x_1802 : vec4<f32> = x_682.x_MainLightShadowmapSize;
        let x_1805 : vec4<f32> = u_xlat8;
        let x_1807 : vec2<f32> = ((x_1800 * vec2<f32>(x_1802.x, x_1802.y)) + vec2<f32>(x_1805.x, x_1805.w));
        let x_1808 : vec4<f32> = u_xlat17;
        u_xlat17 = vec4<f32>(x_1807.x, x_1807.y, x_1808.z, x_1808.w);
        let x_1810 : vec4<f32> = u_xlat11;
        let x_1811 : vec3<f32> = vec3<f32>(x_1810.x, x_1810.z, x_1810.w);
        let x_1812 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1811.x, x_1812.y, x_1811.y, x_1811.z);
        let x_1814 : vec2<f32> = u_xlat31;
        let x_1817 : vec4<f32> = x_682.x_MainLightShadowmapSize;
        let x_1820 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1814.x, x_1814.y, x_1814.x, x_1814.y) * vec4<f32>(x_1817.x, x_1817.y, x_1817.x, x_1817.y)) + vec4<f32>(x_1820.x, x_1820.y, x_1820.z, x_1820.y));
        let x_1824 : vec2<f32> = u_xlat31;
        let x_1826 : vec4<f32> = x_682.x_MainLightShadowmapSize;
        let x_1829 : vec4<f32> = u_xlat10;
        u_xlat60 = ((x_1824 * vec2<f32>(x_1826.x, x_1826.y)) + vec2<f32>(x_1829.w, x_1829.y));
        let x_1833 : f32 = u_xlat8.x;
        u_xlat10.x = x_1833;
        let x_1835 : vec2<f32> = u_xlat31;
        let x_1837 : vec4<f32> = x_682.x_MainLightShadowmapSize;
        let x_1840 : vec4<f32> = u_xlat10;
        u_xlat31 = ((x_1835 * vec2<f32>(x_1837.x, x_1837.y)) + vec2<f32>(x_1840.x, x_1840.y));
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
        let x_1866 : f32 = u_xlat25.z;
        txVec13 = vec3<f32>(x_1864.x, x_1864.y, x_1866);
        let x_1873 : vec3<f32> = txVec13;
        let x_1875 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1873.xy, x_1873.z);
        u_xlat81 = x_1875;
        let x_1877 : vec4<f32> = u_xlat12;
        let x_1878 : vec2<f32> = vec2<f32>(x_1877.z, x_1877.w);
        let x_1880 : f32 = u_xlat25.z;
        txVec14 = vec3<f32>(x_1878.x, x_1878.y, x_1880);
        let x_1887 : vec3<f32> = txVec14;
        let x_1889 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1887.xy, x_1887.z);
        u_xlat8.x = x_1889;
        let x_1892 : f32 = u_xlat8.x;
        let x_1894 : f32 = u_xlat18.y;
        u_xlat8.x = (x_1892 * x_1894);
        let x_1898 : f32 = u_xlat18.x;
        let x_1899 : f32 = u_xlat81;
        let x_1902 : f32 = u_xlat8.x;
        u_xlat81 = ((x_1898 * x_1899) + x_1902);
        let x_1905 : vec4<f32> = u_xlat13;
        let x_1906 : vec2<f32> = vec2<f32>(x_1905.x, x_1905.y);
        let x_1908 : f32 = u_xlat25.z;
        txVec15 = vec3<f32>(x_1906.x, x_1906.y, x_1908);
        let x_1915 : vec3<f32> = txVec15;
        let x_1917 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1915.xy, x_1915.z);
        u_xlat8.x = x_1917;
        let x_1920 : f32 = u_xlat18.z;
        let x_1922 : f32 = u_xlat8.x;
        let x_1924 : f32 = u_xlat81;
        u_xlat81 = ((x_1920 * x_1922) + x_1924);
        let x_1927 : vec4<f32> = u_xlat15;
        let x_1928 : vec2<f32> = vec2<f32>(x_1927.x, x_1927.y);
        let x_1930 : f32 = u_xlat25.z;
        txVec16 = vec3<f32>(x_1928.x, x_1928.y, x_1930);
        let x_1937 : vec3<f32> = txVec16;
        let x_1939 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1937.xy, x_1937.z);
        u_xlat8.x = x_1939;
        let x_1942 : f32 = u_xlat18.w;
        let x_1944 : f32 = u_xlat8.x;
        let x_1946 : f32 = u_xlat81;
        u_xlat81 = ((x_1942 * x_1944) + x_1946);
        let x_1949 : vec4<f32> = u_xlat14;
        let x_1950 : vec2<f32> = vec2<f32>(x_1949.x, x_1949.y);
        let x_1952 : f32 = u_xlat25.z;
        txVec17 = vec3<f32>(x_1950.x, x_1950.y, x_1952);
        let x_1959 : vec3<f32> = txVec17;
        let x_1961 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1959.xy, x_1959.z);
        u_xlat8.x = x_1961;
        let x_1964 : f32 = u_xlat19.x;
        let x_1966 : f32 = u_xlat8.x;
        let x_1968 : f32 = u_xlat81;
        u_xlat81 = ((x_1964 * x_1966) + x_1968);
        let x_1971 : vec4<f32> = u_xlat14;
        let x_1972 : vec2<f32> = vec2<f32>(x_1971.z, x_1971.w);
        let x_1974 : f32 = u_xlat25.z;
        txVec18 = vec3<f32>(x_1972.x, x_1972.y, x_1974);
        let x_1981 : vec3<f32> = txVec18;
        let x_1983 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1981.xy, x_1981.z);
        u_xlat8.x = x_1983;
        let x_1986 : f32 = u_xlat19.y;
        let x_1988 : f32 = u_xlat8.x;
        let x_1990 : f32 = u_xlat81;
        u_xlat81 = ((x_1986 * x_1988) + x_1990);
        let x_1993 : vec2<f32> = u_xlat63;
        let x_1995 : f32 = u_xlat25.z;
        txVec19 = vec3<f32>(x_1993.x, x_1993.y, x_1995);
        let x_2002 : vec3<f32> = txVec19;
        let x_2004 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2002.xy, x_2002.z);
        u_xlat8.x = x_2004;
        let x_2007 : f32 = u_xlat19.z;
        let x_2009 : f32 = u_xlat8.x;
        let x_2011 : f32 = u_xlat81;
        u_xlat81 = ((x_2007 * x_2009) + x_2011);
        let x_2014 : vec4<f32> = u_xlat15;
        let x_2015 : vec2<f32> = vec2<f32>(x_2014.z, x_2014.w);
        let x_2017 : f32 = u_xlat25.z;
        txVec20 = vec3<f32>(x_2015.x, x_2015.y, x_2017);
        let x_2024 : vec3<f32> = txVec20;
        let x_2026 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2024.xy, x_2024.z);
        u_xlat8.x = x_2026;
        let x_2029 : f32 = u_xlat19.w;
        let x_2031 : f32 = u_xlat8.x;
        let x_2033 : f32 = u_xlat81;
        u_xlat81 = ((x_2029 * x_2031) + x_2033);
        let x_2036 : vec4<f32> = u_xlat16;
        let x_2037 : vec2<f32> = vec2<f32>(x_2036.x, x_2036.y);
        let x_2039 : f32 = u_xlat25.z;
        txVec21 = vec3<f32>(x_2037.x, x_2037.y, x_2039);
        let x_2046 : vec3<f32> = txVec21;
        let x_2048 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2046.xy, x_2046.z);
        u_xlat8.x = x_2048;
        let x_2051 : f32 = u_xlat20.x;
        let x_2053 : f32 = u_xlat8.x;
        let x_2055 : f32 = u_xlat81;
        u_xlat81 = ((x_2051 * x_2053) + x_2055);
        let x_2058 : vec4<f32> = u_xlat16;
        let x_2059 : vec2<f32> = vec2<f32>(x_2058.z, x_2058.w);
        let x_2061 : f32 = u_xlat25.z;
        txVec22 = vec3<f32>(x_2059.x, x_2059.y, x_2061);
        let x_2068 : vec3<f32> = txVec22;
        let x_2070 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2068.xy, x_2068.z);
        u_xlat8.x = x_2070;
        let x_2073 : f32 = u_xlat20.y;
        let x_2075 : f32 = u_xlat8.x;
        let x_2077 : f32 = u_xlat81;
        u_xlat81 = ((x_2073 * x_2075) + x_2077);
        let x_2080 : vec2<f32> = u_xlat33;
        let x_2082 : f32 = u_xlat25.z;
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
        let x_2104 : f32 = u_xlat25.z;
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
        let x_2126 : f32 = u_xlat25.z;
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
        let x_2148 : f32 = u_xlat25.z;
        txVec26 = vec3<f32>(x_2146.x, x_2146.y, x_2148);
        let x_2155 : vec3<f32> = txVec26;
        let x_2157 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2155.xy, x_2155.z);
        u_xlat7.x = x_2157;
        let x_2160 : f32 = u_xlat7.y;
        let x_2162 : f32 = u_xlat7.x;
        let x_2164 : f32 = u_xlat81;
        u_xlat81 = ((x_2160 * x_2162) + x_2164);
        let x_2167 : vec2<f32> = u_xlat60;
        let x_2169 : f32 = u_xlat25.z;
        txVec27 = vec3<f32>(x_2167.x, x_2167.y, x_2169);
        let x_2176 : vec3<f32> = txVec27;
        let x_2178 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2176.xy, x_2176.z);
        u_xlat7.x = x_2178;
        let x_2181 : f32 = u_xlat7.z;
        let x_2183 : f32 = u_xlat7.x;
        let x_2185 : f32 = u_xlat81;
        u_xlat81 = ((x_2181 * x_2183) + x_2185);
        let x_2188 : vec2<f32> = u_xlat31;
        let x_2190 : f32 = u_xlat25.z;
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
    let x_2211 : vec3<f32> = u_xlat25;
    let x_2212 : vec2<f32> = vec2<f32>(x_2211.x, x_2211.y);
    let x_2214 : f32 = u_xlat25.z;
    txVec29 = vec3<f32>(x_2212.x, x_2212.y, x_2214);
    let x_2221 : vec3<f32> = txVec29;
    let x_2223 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2221.xy, x_2221.z);
    u_xlat6.x = x_2223;
  }
  let x_2226 : f32 = x_682.x_MainLightShadowParams.x;
  u_xlat25.x = (-(x_2226) + 1.0f);
  let x_2231 : f32 = u_xlat6.x;
  let x_2233 : f32 = x_682.x_MainLightShadowParams.x;
  let x_2236 : f32 = u_xlat25.x;
  u_xlat25.x = ((x_2231 * x_2233) + x_2236);
  let x_2241 : f32 = u_xlat25.z;
  u_xlatb50 = (0.0f >= x_2241);
  let x_2245 : f32 = u_xlat25.z;
  u_xlatb75 = (x_2245 >= 1.0f);
  let x_2247 : bool = u_xlatb75;
  let x_2248 : bool = u_xlatb50;
  u_xlatb50 = (x_2247 | x_2248);
  let x_2250 : bool = u_xlatb50;
  if (x_2250) {
    x_2251 = 1.0f;
  } else {
    let x_2256 : f32 = u_xlat25.x;
    x_2251 = x_2256;
  }
  let x_2257 : f32 = x_2251;
  u_xlat25.x = x_2257;
  let x_2259 : vec3<f32> = vs_INTERP7;
  let x_2261 : vec3<f32> = x_135.x_WorldSpaceCameraPos;
  let x_2263 : vec3<f32> = (x_2259 + -(x_2261));
  let x_2264 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2263.x, x_2263.y, x_2263.z, x_2264.w);
  let x_2266 : vec4<f32> = u_xlat6;
  let x_2268 : vec4<f32> = u_xlat6;
  u_xlat50 = dot(vec3<f32>(x_2266.x, x_2266.y, x_2266.z), vec3<f32>(x_2268.x, x_2268.y, x_2268.z));
  let x_2272 : f32 = u_xlat50;
  let x_2274 : f32 = x_682.x_MainLightShadowParams.z;
  let x_2277 : f32 = x_682.x_MainLightShadowParams.w;
  u_xlat75 = ((x_2272 * x_2274) + x_2277);
  let x_2279 : f32 = u_xlat75;
  u_xlat75 = clamp(x_2279, 0.0f, 1.0f);
  let x_2282 : f32 = u_xlat25.x;
  u_xlat6.x = (-(x_2282) + 1.0f);
  let x_2286 : f32 = u_xlat75;
  let x_2288 : f32 = u_xlat6.x;
  let x_2291 : f32 = u_xlat25.x;
  u_xlat25.x = ((x_2286 * x_2288) + x_2291);
  let x_2294 : vec3<f32> = u_xlat5;
  let x_2296 : vec4<f32> = u_xlat4;
  u_xlat75 = dot(-(x_2294), vec3<f32>(x_2296.x, x_2296.y, x_2296.z));
  let x_2299 : f32 = u_xlat75;
  let x_2300 : f32 = u_xlat75;
  u_xlat75 = (x_2299 + x_2300);
  let x_2302 : vec4<f32> = u_xlat4;
  let x_2304 : f32 = u_xlat75;
  let x_2308 : vec3<f32> = u_xlat5;
  let x_2310 : vec3<f32> = ((vec3<f32>(x_2302.x, x_2302.y, x_2302.z) * -(vec3<f32>(x_2304, x_2304, x_2304))) + -(x_2308));
  let x_2311 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2310.x, x_2310.y, x_2310.z, x_2311.w);
  let x_2313 : vec4<f32> = u_xlat4;
  let x_2315 : vec3<f32> = u_xlat5;
  u_xlat75 = dot(vec3<f32>(x_2313.x, x_2313.y, x_2313.z), x_2315);
  let x_2317 : f32 = u_xlat75;
  u_xlat75 = clamp(x_2317, 0.0f, 1.0f);
  let x_2319 : f32 = u_xlat75;
  u_xlat75 = (-(x_2319) + 1.0f);
  let x_2322 : f32 = u_xlat75;
  let x_2323 : f32 = u_xlat75;
  u_xlat75 = (x_2322 * x_2323);
  let x_2325 : f32 = u_xlat75;
  let x_2326 : f32 = u_xlat75;
  u_xlat75 = (x_2325 * x_2326);
  let x_2328 : f32 = u_xlat76;
  u_xlat81 = ((-(x_2328) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2334 : f32 = u_xlat76;
  let x_2335 : f32 = u_xlat81;
  u_xlat76 = (x_2334 * x_2335);
  let x_2337 : f32 = u_xlat76;
  u_xlat76 = (x_2337 * 6.0f);
  let x_2348 : vec4<f32> = u_xlat6;
  let x_2350 : f32 = u_xlat76;
  let x_2351 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2348.x, x_2348.y, x_2348.z), x_2350);
  u_xlat6 = x_2351;
  let x_2353 : f32 = u_xlat6.w;
  u_xlat76 = (x_2353 + -1.0f);
  let x_2356 : f32 = x_48.unity_SpecCube0_HDR.w;
  let x_2357 : f32 = u_xlat76;
  u_xlat76 = ((x_2356 * x_2357) + 1.0f);
  let x_2360 : f32 = u_xlat76;
  u_xlat76 = max(x_2360, 0.0f);
  let x_2362 : f32 = u_xlat76;
  u_xlat76 = log2(x_2362);
  let x_2364 : f32 = u_xlat76;
  let x_2366 : f32 = x_48.unity_SpecCube0_HDR.y;
  u_xlat76 = (x_2364 * x_2366);
  let x_2368 : f32 = u_xlat76;
  u_xlat76 = exp2(x_2368);
  let x_2370 : f32 = u_xlat76;
  let x_2372 : f32 = x_48.unity_SpecCube0_HDR.x;
  u_xlat76 = (x_2370 * x_2372);
  let x_2374 : vec4<f32> = u_xlat6;
  let x_2376 : f32 = u_xlat76;
  let x_2378 : vec3<f32> = (vec3<f32>(x_2374.x, x_2374.y, x_2374.z) * vec3<f32>(x_2376, x_2376, x_2376));
  let x_2379 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2378.x, x_2378.y, x_2378.z, x_2379.w);
  let x_2381 : f32 = u_xlat77;
  let x_2383 : f32 = u_xlat77;
  let x_2387 : vec2<f32> = ((vec2<f32>(x_2381, x_2381) * vec2<f32>(x_2383, x_2383)) + vec2<f32>(-1.0f, 1.0f));
  let x_2388 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2387.x, x_2387.y, x_2388.z, x_2388.w);
  let x_2391 : f32 = u_xlat7.y;
  u_xlat76 = (1.0f / x_2391);
  let x_2393 : vec3<f32> = u_xlat2;
  let x_2395 : vec4<f32> = u_xlat0;
  u_xlat32 = (-(x_2393) + vec3<f32>(x_2395.x, x_2395.x, x_2395.x));
  let x_2398 : f32 = u_xlat75;
  let x_2400 : vec3<f32> = u_xlat32;
  let x_2402 : vec3<f32> = u_xlat2;
  u_xlat32 = ((vec3<f32>(x_2398, x_2398, x_2398) * x_2400) + x_2402);
  let x_2404 : f32 = u_xlat76;
  let x_2406 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_2404, x_2404, x_2404) * x_2406);
  let x_2408 : vec4<f32> = u_xlat6;
  let x_2410 : vec3<f32> = u_xlat32;
  let x_2411 : vec3<f32> = (vec3<f32>(x_2408.x, x_2408.y, x_2408.z) * x_2410);
  let x_2412 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2411.x, x_2411.y, x_2411.z, x_2412.w);
  let x_2414 : vec4<f32> = u_xlat1;
  let x_2416 : vec3<f32> = u_xlat3;
  let x_2418 : vec4<f32> = u_xlat6;
  let x_2420 : vec3<f32> = ((vec3<f32>(x_2414.x, x_2414.y, x_2414.z) * x_2416) + vec3<f32>(x_2418.x, x_2418.y, x_2418.z));
  let x_2421 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2420.x, x_2420.y, x_2420.z, x_2421.w);
  let x_2424 : f32 = u_xlat25.x;
  let x_2426 : f32 = x_48.unity_LightData.z;
  u_xlat0.x = (x_2424 * x_2426);
  let x_2429 : vec4<f32> = u_xlat4;
  let x_2432 : vec4<f32> = x_135.x_MainLightPosition;
  u_xlat25.x = dot(vec3<f32>(x_2429.x, x_2429.y, x_2429.z), vec3<f32>(x_2432.x, x_2432.y, x_2432.z));
  let x_2437 : f32 = u_xlat25.x;
  u_xlat25.x = clamp(x_2437, 0.0f, 1.0f);
  let x_2441 : f32 = u_xlat25.x;
  let x_2443 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2441 * x_2443);
  let x_2446 : vec4<f32> = u_xlat0;
  let x_2449 : vec4<f32> = x_135.x_MainLightColor;
  let x_2451 : vec3<f32> = (vec3<f32>(x_2446.x, x_2446.x, x_2446.x) * vec3<f32>(x_2449.x, x_2449.y, x_2449.z));
  let x_2452 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2451.x, x_2451.y, x_2452.z, x_2451.z);
  let x_2454 : vec3<f32> = u_xlat5;
  let x_2456 : vec4<f32> = x_135.x_MainLightPosition;
  let x_2458 : vec3<f32> = (x_2454 + vec3<f32>(x_2456.x, x_2456.y, x_2456.z));
  let x_2459 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2458.x, x_2458.y, x_2458.z, x_2459.w);
  let x_2461 : vec4<f32> = u_xlat6;
  let x_2463 : vec4<f32> = u_xlat6;
  u_xlat76 = dot(vec3<f32>(x_2461.x, x_2461.y, x_2461.z), vec3<f32>(x_2463.x, x_2463.y, x_2463.z));
  let x_2466 : f32 = u_xlat76;
  u_xlat76 = max(x_2466, 1.17549435e-38f);
  let x_2468 : f32 = u_xlat76;
  u_xlat76 = inverseSqrt(x_2468);
  let x_2470 : f32 = u_xlat76;
  let x_2472 : vec4<f32> = u_xlat6;
  let x_2474 : vec3<f32> = (vec3<f32>(x_2470, x_2470, x_2470) * vec3<f32>(x_2472.x, x_2472.y, x_2472.z));
  let x_2475 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2474.x, x_2474.y, x_2474.z, x_2475.w);
  let x_2477 : vec4<f32> = u_xlat4;
  let x_2479 : vec4<f32> = u_xlat6;
  u_xlat76 = dot(vec3<f32>(x_2477.x, x_2477.y, x_2477.z), vec3<f32>(x_2479.x, x_2479.y, x_2479.z));
  let x_2482 : f32 = u_xlat76;
  u_xlat76 = clamp(x_2482, 0.0f, 1.0f);
  let x_2485 : vec4<f32> = x_135.x_MainLightPosition;
  let x_2487 : vec4<f32> = u_xlat6;
  u_xlat77 = dot(vec3<f32>(x_2485.x, x_2485.y, x_2485.z), vec3<f32>(x_2487.x, x_2487.y, x_2487.z));
  let x_2490 : f32 = u_xlat77;
  u_xlat77 = clamp(x_2490, 0.0f, 1.0f);
  let x_2492 : f32 = u_xlat76;
  let x_2493 : f32 = u_xlat76;
  u_xlat76 = (x_2492 * x_2493);
  let x_2495 : f32 = u_xlat76;
  let x_2497 : f32 = u_xlat7.x;
  u_xlat76 = ((x_2495 * x_2497) + 1.00001001358032226562f);
  let x_2501 : f32 = u_xlat77;
  let x_2502 : f32 = u_xlat77;
  u_xlat77 = (x_2501 * x_2502);
  let x_2504 : f32 = u_xlat76;
  let x_2505 : f32 = u_xlat76;
  u_xlat76 = (x_2504 * x_2505);
  let x_2507 : f32 = u_xlat77;
  u_xlat77 = max(x_2507, 0.10000000149011611938f);
  let x_2509 : f32 = u_xlat76;
  let x_2510 : f32 = u_xlat77;
  u_xlat76 = (x_2509 * x_2510);
  let x_2512 : f32 = u_xlat79;
  let x_2513 : f32 = u_xlat76;
  u_xlat76 = (x_2512 * x_2513);
  let x_2515 : f32 = u_xlat78;
  let x_2516 : f32 = u_xlat76;
  u_xlat76 = (x_2515 / x_2516);
  let x_2518 : vec3<f32> = u_xlat2;
  let x_2519 : f32 = u_xlat76;
  let x_2522 : vec3<f32> = u_xlat3;
  let x_2523 : vec3<f32> = ((x_2518 * vec3<f32>(x_2519, x_2519, x_2519)) + x_2522);
  let x_2524 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2523.x, x_2523.y, x_2523.z, x_2524.w);
  let x_2526 : vec4<f32> = u_xlat0;
  let x_2528 : vec4<f32> = u_xlat6;
  let x_2530 : vec3<f32> = (vec3<f32>(x_2526.x, x_2526.y, x_2526.w) * vec3<f32>(x_2528.x, x_2528.y, x_2528.z));
  let x_2531 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2530.x, x_2530.y, x_2531.z, x_2530.z);
  let x_2534 : f32 = x_135.x_AdditionalLightsCount.x;
  let x_2536 : f32 = x_48.unity_LightData.y;
  u_xlat76 = min(x_2534, x_2536);
  let x_2539 : f32 = u_xlat76;
  u_xlatu76 = bitcast<u32>(i32(x_2539));
  let x_2542 : f32 = u_xlat50;
  let x_2545 : f32 = x_682.x_AdditionalShadowFadeParams.x;
  let x_2548 : f32 = x_682.x_AdditionalShadowFadeParams.y;
  u_xlat50 = ((x_2542 * x_2545) + x_2548);
  let x_2550 : f32 = u_xlat50;
  u_xlat50 = clamp(x_2550, 0.0f, 1.0f);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2562 : u32 = u_xlatu_loop_1;
    let x_2563 : u32 = u_xlatu76;
    if ((x_2562 < x_2563)) {
    } else {
      break;
    }
    let x_2566 : u32 = u_xlatu_loop_1;
    u_xlatu81 = (x_2566 >> 2u);
    let x_2569 : u32 = u_xlatu_loop_1;
    u_xlati32 = bitcast<i32>((x_2569 & 3u));
    let x_2572 : u32 = u_xlatu81;
    let x_2575 : vec4<f32> = x_48.unity_LightIndices[bitcast<i32>(x_2572)];
    let x_2585 : i32 = u_xlati32;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2590 : vec4<u32> = indexable[x_2585];
    u_xlat81 = dot(x_2575, bitcast<vec4<f32>>(x_2590));
    let x_2594 : f32 = u_xlat81;
    u_xlati81 = i32(x_2594);
    let x_2596 : vec3<f32> = vs_INTERP7;
    let x_2607 : i32 = u_xlati81;
    let x_2609 : vec4<f32> = x_2606.x_AdditionalLightsPosition[x_2607];
    let x_2612 : i32 = u_xlati81;
    let x_2614 : vec4<f32> = x_2606.x_AdditionalLightsPosition[x_2612];
    u_xlat32 = ((-(x_2596) * vec3<f32>(x_2609.w, x_2609.w, x_2609.w)) + vec3<f32>(x_2614.x, x_2614.y, x_2614.z));
    let x_2617 : vec3<f32> = u_xlat32;
    let x_2618 : vec3<f32> = u_xlat32;
    u_xlat8.x = dot(x_2617, x_2618);
    let x_2622 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_2622, 0.00006103515625f);
    let x_2626 : f32 = u_xlat8.x;
    u_xlat33.x = inverseSqrt(x_2626);
    let x_2629 : vec3<f32> = u_xlat32;
    let x_2630 : vec2<f32> = u_xlat33;
    let x_2632 : vec3<f32> = (x_2629 * vec3<f32>(x_2630.x, x_2630.x, x_2630.x));
    let x_2633 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2632.x, x_2632.y, x_2632.z, x_2633.w);
    let x_2637 : f32 = u_xlat8.x;
    u_xlat58 = (1.0f / x_2637);
    let x_2640 : f32 = u_xlat8.x;
    let x_2641 : i32 = u_xlati81;
    let x_2643 : f32 = x_2606.x_AdditionalLightsAttenuation[x_2641].x;
    u_xlat8.x = (x_2640 * x_2643);
    let x_2647 : f32 = u_xlat8.x;
    let x_2650 : f32 = u_xlat8.x;
    u_xlat8.x = ((-(x_2647) * x_2650) + 1.0f);
    let x_2655 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_2655, 0.0f);
    let x_2659 : f32 = u_xlat8.x;
    let x_2661 : f32 = u_xlat8.x;
    u_xlat8.x = (x_2659 * x_2661);
    let x_2665 : f32 = u_xlat8.x;
    let x_2666 : f32 = u_xlat58;
    u_xlat8.x = (x_2665 * x_2666);
    let x_2669 : i32 = u_xlati81;
    let x_2671 : vec4<f32> = x_2606.x_AdditionalLightsSpotDir[x_2669];
    let x_2673 : vec4<f32> = u_xlat9;
    u_xlat58 = dot(vec3<f32>(x_2671.x, x_2671.y, x_2671.z), vec3<f32>(x_2673.x, x_2673.y, x_2673.z));
    let x_2676 : f32 = u_xlat58;
    let x_2677 : i32 = u_xlati81;
    let x_2679 : f32 = x_2606.x_AdditionalLightsAttenuation[x_2677].z;
    let x_2681 : i32 = u_xlati81;
    let x_2683 : f32 = x_2606.x_AdditionalLightsAttenuation[x_2681].w;
    u_xlat58 = ((x_2676 * x_2679) + x_2683);
    let x_2685 : f32 = u_xlat58;
    u_xlat58 = clamp(x_2685, 0.0f, 1.0f);
    let x_2687 : f32 = u_xlat58;
    let x_2688 : f32 = u_xlat58;
    u_xlat58 = (x_2687 * x_2688);
    let x_2690 : f32 = u_xlat58;
    let x_2692 : f32 = u_xlat8.x;
    u_xlat8.x = (x_2690 * x_2692);
    let x_2697 : i32 = u_xlati81;
    let x_2699 : f32 = x_682.x_AdditionalShadowParams[x_2697].w;
    u_xlati58 = i32(x_2699);
    let x_2702 : i32 = u_xlati58;
    u_xlatb83 = (x_2702 >= 0i);
    let x_2704 : bool = u_xlatb83;
    if (x_2704) {
      let x_2708 : i32 = u_xlati81;
      let x_2710 : f32 = x_682.x_AdditionalShadowParams[x_2708].z;
      u_xlatb83 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2710, x_2710, x_2710, x_2710))));
      let x_2714 : bool = u_xlatb83;
      if (x_2714) {
        let x_2718 : vec4<f32> = u_xlat9;
        let x_2721 : vec4<f32> = u_xlat9;
        let x_2724 : vec4<bool> = (abs(vec4<f32>(x_2718.z, x_2718.z, x_2718.y, x_2718.z)) >= abs(vec4<f32>(x_2721.x, x_2721.y, x_2721.x, x_2721.x)));
        let x_2726 : vec3<bool> = vec3<bool>(x_2724.x, x_2724.y, x_2724.z);
        let x_2727 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_2726.x, x_2726.y, x_2726.z, x_2727.w);
        let x_2730 : bool = u_xlatb10.y;
        let x_2732 : bool = u_xlatb10.x;
        u_xlatb83 = (x_2730 & x_2732);
        let x_2734 : vec4<f32> = u_xlat9;
        let x_2737 : vec4<bool> = (-(vec4<f32>(x_2734.z, x_2734.y, x_2734.z, x_2734.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2738 : vec3<bool> = vec3<bool>(x_2737.x, x_2737.y, x_2737.w);
        let x_2739 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_2738.x, x_2738.y, x_2739.z, x_2738.z);
        let x_2742 : bool = u_xlatb10.x;
        u_xlat10.x = select(4.0f, 5.0f, x_2742);
        let x_2747 : bool = u_xlatb10.y;
        u_xlat10.y = select(2.0f, 3.0f, x_2747);
        let x_2752 : bool = u_xlatb10.w;
        u_xlat84 = select(0.0f, 1.0f, x_2752);
        let x_2755 : bool = u_xlatb10.z;
        if (x_2755) {
          let x_2760 : f32 = u_xlat10.y;
          x_2756 = x_2760;
        } else {
          let x_2762 : f32 = u_xlat84;
          x_2756 = x_2762;
        }
        let x_2763 : f32 = x_2756;
        u_xlat84 = x_2763;
        let x_2765 : bool = u_xlatb83;
        if (x_2765) {
          let x_2770 : f32 = u_xlat10.x;
          x_2766 = x_2770;
        } else {
          let x_2772 : f32 = u_xlat84;
          x_2766 = x_2772;
        }
        let x_2773 : f32 = x_2766;
        u_xlat83 = x_2773;
        let x_2774 : i32 = u_xlati81;
        let x_2776 : f32 = x_682.x_AdditionalShadowParams[x_2774].w;
        u_xlat84 = trunc(x_2776);
        let x_2778 : f32 = u_xlat83;
        let x_2779 : f32 = u_xlat84;
        u_xlat83 = (x_2778 + x_2779);
        let x_2781 : f32 = u_xlat83;
        u_xlati58 = i32(x_2781);
      }
      let x_2783 : i32 = u_xlati58;
      u_xlati58 = (x_2783 << bitcast<u32>(2i));
      let x_2785 : vec3<f32> = vs_INTERP7;
      let x_2788 : i32 = u_xlati58;
      let x_2791 : i32 = u_xlati58;
      let x_2795 : vec4<f32> = x_682.x_AdditionalLightsWorldToShadow[((x_2788 + 1i) / 4i)][((x_2791 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_2785.y, x_2785.y, x_2785.y, x_2785.y) * x_2795);
      let x_2797 : i32 = u_xlati58;
      let x_2799 : i32 = u_xlati58;
      let x_2802 : vec4<f32> = x_682.x_AdditionalLightsWorldToShadow[(x_2797 / 4i)][(x_2799 % 4i)];
      let x_2803 : vec3<f32> = vs_INTERP7;
      let x_2806 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2802 * vec4<f32>(x_2803.x, x_2803.x, x_2803.x, x_2803.x)) + x_2806);
      let x_2808 : i32 = u_xlati58;
      let x_2811 : i32 = u_xlati58;
      let x_2815 : vec4<f32> = x_682.x_AdditionalLightsWorldToShadow[((x_2808 + 2i) / 4i)][((x_2811 + 2i) % 4i)];
      let x_2816 : vec3<f32> = vs_INTERP7;
      let x_2819 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2815 * vec4<f32>(x_2816.z, x_2816.z, x_2816.z, x_2816.z)) + x_2819);
      let x_2821 : vec4<f32> = u_xlat10;
      let x_2822 : i32 = u_xlati58;
      let x_2825 : i32 = u_xlati58;
      let x_2829 : vec4<f32> = x_682.x_AdditionalLightsWorldToShadow[((x_2822 + 3i) / 4i)][((x_2825 + 3i) % 4i)];
      u_xlat10 = (x_2821 + x_2829);
      let x_2831 : vec4<f32> = u_xlat10;
      let x_2833 : vec4<f32> = u_xlat10;
      let x_2835 : vec3<f32> = (vec3<f32>(x_2831.x, x_2831.y, x_2831.z) / vec3<f32>(x_2833.w, x_2833.w, x_2833.w));
      let x_2836 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2835.x, x_2835.y, x_2835.z, x_2836.w);
      let x_2839 : i32 = u_xlati81;
      let x_2841 : f32 = x_682.x_AdditionalShadowParams[x_2839].y;
      u_xlatb58 = (0.0f < x_2841);
      let x_2843 : bool = u_xlatb58;
      if (x_2843) {
        let x_2846 : i32 = u_xlati81;
        let x_2848 : f32 = x_682.x_AdditionalShadowParams[x_2846].y;
        u_xlatb58 = (1.0f == x_2848);
        let x_2850 : bool = u_xlatb58;
        if (x_2850) {
          let x_2853 : vec4<f32> = u_xlat10;
          let x_2857 : vec4<f32> = x_682.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2853.x, x_2853.y, x_2853.x, x_2853.y) + x_2857);
          let x_2860 : vec4<f32> = u_xlat11;
          let x_2861 : vec2<f32> = vec2<f32>(x_2860.x, x_2860.y);
          let x_2863 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2861.x, x_2861.y, x_2863);
          let x_2871 : vec3<f32> = txVec30;
          let x_2873 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2871.xy, x_2871.z);
          u_xlat12.x = x_2873;
          let x_2876 : vec4<f32> = u_xlat11;
          let x_2877 : vec2<f32> = vec2<f32>(x_2876.z, x_2876.w);
          let x_2879 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_2877.x, x_2877.y, x_2879);
          let x_2886 : vec3<f32> = txVec31;
          let x_2888 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2886.xy, x_2886.z);
          u_xlat12.y = x_2888;
          let x_2890 : vec4<f32> = u_xlat10;
          let x_2894 : vec4<f32> = x_682.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_2890.x, x_2890.y, x_2890.x, x_2890.y) + x_2894);
          let x_2897 : vec4<f32> = u_xlat11;
          let x_2898 : vec2<f32> = vec2<f32>(x_2897.x, x_2897.y);
          let x_2900 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_2898.x, x_2898.y, x_2900);
          let x_2907 : vec3<f32> = txVec32;
          let x_2909 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2907.xy, x_2907.z);
          u_xlat12.z = x_2909;
          let x_2912 : vec4<f32> = u_xlat11;
          let x_2913 : vec2<f32> = vec2<f32>(x_2912.z, x_2912.w);
          let x_2915 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_2913.x, x_2913.y, x_2915);
          let x_2922 : vec3<f32> = txVec33;
          let x_2924 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2922.xy, x_2922.z);
          u_xlat12.w = x_2924;
          let x_2926 : vec4<f32> = u_xlat12;
          u_xlat58 = dot(x_2926, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2929 : i32 = u_xlati81;
          let x_2931 : f32 = x_682.x_AdditionalShadowParams[x_2929].y;
          u_xlatb83 = (2.0f == x_2931);
          let x_2933 : bool = u_xlatb83;
          if (x_2933) {
            let x_2936 : vec4<f32> = u_xlat10;
            let x_2940 : vec4<f32> = x_682.x_AdditionalShadowmapSize;
            let x_2943 : vec2<f32> = ((vec2<f32>(x_2936.x, x_2936.y) * vec2<f32>(x_2940.z, x_2940.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2944 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2943.x, x_2943.y, x_2944.z, x_2944.w);
            let x_2946 : vec4<f32> = u_xlat11;
            let x_2948 : vec2<f32> = floor(vec2<f32>(x_2946.x, x_2946.y));
            let x_2949 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2948.x, x_2948.y, x_2949.z, x_2949.w);
            let x_2952 : vec4<f32> = u_xlat10;
            let x_2955 : vec4<f32> = x_682.x_AdditionalShadowmapSize;
            let x_2958 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2952.x, x_2952.y) * vec2<f32>(x_2955.z, x_2955.w)) + -(vec2<f32>(x_2958.x, x_2958.y)));
            let x_2962 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2962.x, x_2962.x, x_2962.y, x_2962.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2965 : vec4<f32> = u_xlat12;
            let x_2967 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2965.x, x_2965.x, x_2965.z, x_2965.z) * vec4<f32>(x_2967.x, x_2967.x, x_2967.z, x_2967.z));
            let x_2970 : vec4<f32> = u_xlat13;
            let x_2972 : vec2<f32> = (vec2<f32>(x_2970.y, x_2970.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2973 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2972.x, x_2973.y, x_2972.y, x_2973.w);
            let x_2975 : vec4<f32> = u_xlat13;
            let x_2978 : vec2<f32> = u_xlat61;
            let x_2980 : vec2<f32> = ((vec2<f32>(x_2975.x, x_2975.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2978));
            let x_2981 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2980.x, x_2980.y, x_2981.z, x_2981.w);
            let x_2983 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_2983) + vec2<f32>(1.0f, 1.0f));
            let x_2986 : vec2<f32> = u_xlat61;
            let x_2987 : vec2<f32> = min(x_2986, vec2<f32>(0.0f, 0.0f));
            let x_2988 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2987.x, x_2987.y, x_2988.z, x_2988.w);
            let x_2990 : vec4<f32> = u_xlat14;
            let x_2993 : vec4<f32> = u_xlat14;
            let x_2996 : vec2<f32> = u_xlat63;
            let x_2997 : vec2<f32> = ((-(vec2<f32>(x_2990.x, x_2990.y)) * vec2<f32>(x_2993.x, x_2993.y)) + x_2996);
            let x_2998 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2997.x, x_2997.y, x_2998.z, x_2998.w);
            let x_3000 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_3000, vec2<f32>(0.0f, 0.0f));
            let x_3002 : vec2<f32> = u_xlat61;
            let x_3004 : vec2<f32> = u_xlat61;
            let x_3006 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_3002) * x_3004) + vec2<f32>(x_3006.y, x_3006.w));
            let x_3009 : vec4<f32> = u_xlat14;
            let x_3011 : vec2<f32> = (vec2<f32>(x_3009.x, x_3009.y) + vec2<f32>(1.0f, 1.0f));
            let x_3012 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3011.x, x_3011.y, x_3012.z, x_3012.w);
            let x_3014 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_3014 + vec2<f32>(1.0f, 1.0f));
            let x_3016 : vec4<f32> = u_xlat13;
            let x_3018 : vec2<f32> = (vec2<f32>(x_3016.x, x_3016.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3019 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3018.x, x_3018.y, x_3019.z, x_3019.w);
            let x_3021 : vec2<f32> = u_xlat63;
            let x_3022 : vec2<f32> = (x_3021 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3023 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3022.x, x_3022.y, x_3023.z, x_3023.w);
            let x_3025 : vec4<f32> = u_xlat14;
            let x_3027 : vec2<f32> = (vec2<f32>(x_3025.x, x_3025.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3028 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3027.x, x_3027.y, x_3028.z, x_3028.w);
            let x_3030 : vec2<f32> = u_xlat61;
            let x_3031 : vec2<f32> = (x_3030 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3032 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3031.x, x_3031.y, x_3032.z, x_3032.w);
            let x_3034 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_3034.y, x_3034.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3038 : f32 = u_xlat14.x;
            u_xlat15.z = x_3038;
            let x_3041 : f32 = u_xlat61.x;
            u_xlat15.w = x_3041;
            let x_3044 : f32 = u_xlat16.x;
            u_xlat13.z = x_3044;
            let x_3047 : f32 = u_xlat12.x;
            u_xlat13.w = x_3047;
            let x_3049 : vec4<f32> = u_xlat13;
            let x_3051 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_3049.z, x_3049.w, x_3049.x, x_3049.z) + vec4<f32>(x_3051.z, x_3051.w, x_3051.x, x_3051.z));
            let x_3055 : f32 = u_xlat15.y;
            u_xlat14.z = x_3055;
            let x_3058 : f32 = u_xlat61.y;
            u_xlat14.w = x_3058;
            let x_3061 : f32 = u_xlat13.y;
            u_xlat16.z = x_3061;
            let x_3064 : f32 = u_xlat12.z;
            u_xlat16.w = x_3064;
            let x_3066 : vec4<f32> = u_xlat14;
            let x_3068 : vec4<f32> = u_xlat16;
            let x_3070 : vec3<f32> = (vec3<f32>(x_3066.z, x_3066.y, x_3066.w) + vec3<f32>(x_3068.z, x_3068.y, x_3068.w));
            let x_3071 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3070.x, x_3070.y, x_3070.z, x_3071.w);
            let x_3073 : vec4<f32> = u_xlat13;
            let x_3075 : vec4<f32> = u_xlat17;
            let x_3077 : vec3<f32> = (vec3<f32>(x_3073.x, x_3073.z, x_3073.w) / vec3<f32>(x_3075.z, x_3075.w, x_3075.y));
            let x_3078 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3077.x, x_3077.y, x_3077.z, x_3078.w);
            let x_3080 : vec4<f32> = u_xlat13;
            let x_3082 : vec3<f32> = (vec3<f32>(x_3080.x, x_3080.y, x_3080.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3083 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3082.x, x_3082.y, x_3082.z, x_3083.w);
            let x_3085 : vec4<f32> = u_xlat16;
            let x_3087 : vec4<f32> = u_xlat12;
            let x_3089 : vec3<f32> = (vec3<f32>(x_3085.z, x_3085.y, x_3085.w) / vec3<f32>(x_3087.x, x_3087.y, x_3087.z));
            let x_3090 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3089.x, x_3089.y, x_3089.z, x_3090.w);
            let x_3092 : vec4<f32> = u_xlat14;
            let x_3094 : vec3<f32> = (vec3<f32>(x_3092.x, x_3092.y, x_3092.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3095 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3094.x, x_3094.y, x_3094.z, x_3095.w);
            let x_3097 : vec4<f32> = u_xlat13;
            let x_3100 : vec4<f32> = x_682.x_AdditionalShadowmapSize;
            let x_3102 : vec3<f32> = (vec3<f32>(x_3097.y, x_3097.x, x_3097.z) * vec3<f32>(x_3100.x, x_3100.x, x_3100.x));
            let x_3103 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3102.x, x_3102.y, x_3102.z, x_3103.w);
            let x_3105 : vec4<f32> = u_xlat14;
            let x_3108 : vec4<f32> = x_682.x_AdditionalShadowmapSize;
            let x_3110 : vec3<f32> = (vec3<f32>(x_3105.x, x_3105.y, x_3105.z) * vec3<f32>(x_3108.y, x_3108.y, x_3108.y));
            let x_3111 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3110.x, x_3110.y, x_3110.z, x_3111.w);
            let x_3114 : f32 = u_xlat14.x;
            u_xlat13.w = x_3114;
            let x_3116 : vec4<f32> = u_xlat11;
            let x_3119 : vec4<f32> = x_682.x_AdditionalShadowmapSize;
            let x_3122 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_3116.x, x_3116.y, x_3116.x, x_3116.y) * vec4<f32>(x_3119.x, x_3119.y, x_3119.x, x_3119.y)) + vec4<f32>(x_3122.y, x_3122.w, x_3122.x, x_3122.w));
            let x_3125 : vec4<f32> = u_xlat11;
            let x_3128 : vec4<f32> = x_682.x_AdditionalShadowmapSize;
            let x_3131 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_3125.x, x_3125.y) * vec2<f32>(x_3128.x, x_3128.y)) + vec2<f32>(x_3131.z, x_3131.w));
            let x_3135 : f32 = u_xlat13.y;
            u_xlat14.w = x_3135;
            let x_3137 : vec4<f32> = u_xlat14;
            let x_3138 : vec2<f32> = vec2<f32>(x_3137.y, x_3137.z);
            let x_3139 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3139.x, x_3138.x, x_3139.z, x_3138.y);
            let x_3141 : vec4<f32> = u_xlat11;
            let x_3144 : vec4<f32> = x_682.x_AdditionalShadowmapSize;
            let x_3147 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_3141.x, x_3141.y, x_3141.x, x_3141.y) * vec4<f32>(x_3144.x, x_3144.y, x_3144.x, x_3144.y)) + vec4<f32>(x_3147.x, x_3147.y, x_3147.z, x_3147.y));
            let x_3150 : vec4<f32> = u_xlat11;
            let x_3153 : vec4<f32> = x_682.x_AdditionalShadowmapSize;
            let x_3156 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3150.x, x_3150.y, x_3150.x, x_3150.y) * vec4<f32>(x_3153.x, x_3153.y, x_3153.x, x_3153.y)) + vec4<f32>(x_3156.w, x_3156.y, x_3156.w, x_3156.z));
            let x_3159 : vec4<f32> = u_xlat11;
            let x_3162 : vec4<f32> = x_682.x_AdditionalShadowmapSize;
            let x_3165 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_3159.x, x_3159.y, x_3159.x, x_3159.y) * vec4<f32>(x_3162.x, x_3162.y, x_3162.x, x_3162.y)) + vec4<f32>(x_3165.x, x_3165.w, x_3165.z, x_3165.w));
            let x_3168 : vec4<f32> = u_xlat12;
            let x_3170 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_3168.x, x_3168.x, x_3168.x, x_3168.y) * vec4<f32>(x_3170.z, x_3170.w, x_3170.y, x_3170.z));
            let x_3173 : vec4<f32> = u_xlat12;
            let x_3175 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_3173.y, x_3173.y, x_3173.z, x_3173.z) * x_3175);
            let x_3178 : f32 = u_xlat12.z;
            let x_3180 : f32 = u_xlat17.y;
            u_xlat83 = (x_3178 * x_3180);
            let x_3183 : vec4<f32> = u_xlat15;
            let x_3184 : vec2<f32> = vec2<f32>(x_3183.x, x_3183.y);
            let x_3186 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_3184.x, x_3184.y, x_3186);
            let x_3193 : vec3<f32> = txVec34;
            let x_3195 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3193.xy, x_3193.z);
            u_xlat84 = x_3195;
            let x_3197 : vec4<f32> = u_xlat15;
            let x_3198 : vec2<f32> = vec2<f32>(x_3197.z, x_3197.w);
            let x_3200 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_3198.x, x_3198.y, x_3200);
            let x_3208 : vec3<f32> = txVec35;
            let x_3210 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3208.xy, x_3208.z);
            u_xlat85 = x_3210;
            let x_3211 : f32 = u_xlat85;
            let x_3213 : f32 = u_xlat18.y;
            u_xlat85 = (x_3211 * x_3213);
            let x_3216 : f32 = u_xlat18.x;
            let x_3217 : f32 = u_xlat84;
            let x_3219 : f32 = u_xlat85;
            u_xlat84 = ((x_3216 * x_3217) + x_3219);
            let x_3222 : vec2<f32> = u_xlat61;
            let x_3224 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_3222.x, x_3222.y, x_3224);
            let x_3231 : vec3<f32> = txVec36;
            let x_3233 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3231.xy, x_3231.z);
            u_xlat85 = x_3233;
            let x_3235 : f32 = u_xlat18.z;
            let x_3236 : f32 = u_xlat85;
            let x_3238 : f32 = u_xlat84;
            u_xlat84 = ((x_3235 * x_3236) + x_3238);
            let x_3241 : vec4<f32> = u_xlat14;
            let x_3242 : vec2<f32> = vec2<f32>(x_3241.x, x_3241.y);
            let x_3244 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_3242.x, x_3242.y, x_3244);
            let x_3251 : vec3<f32> = txVec37;
            let x_3253 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3251.xy, x_3251.z);
            u_xlat85 = x_3253;
            let x_3255 : f32 = u_xlat18.w;
            let x_3256 : f32 = u_xlat85;
            let x_3258 : f32 = u_xlat84;
            u_xlat84 = ((x_3255 * x_3256) + x_3258);
            let x_3261 : vec4<f32> = u_xlat16;
            let x_3262 : vec2<f32> = vec2<f32>(x_3261.x, x_3261.y);
            let x_3264 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_3262.x, x_3262.y, x_3264);
            let x_3271 : vec3<f32> = txVec38;
            let x_3273 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3271.xy, x_3271.z);
            u_xlat85 = x_3273;
            let x_3275 : f32 = u_xlat19.x;
            let x_3276 : f32 = u_xlat85;
            let x_3278 : f32 = u_xlat84;
            u_xlat84 = ((x_3275 * x_3276) + x_3278);
            let x_3281 : vec4<f32> = u_xlat16;
            let x_3282 : vec2<f32> = vec2<f32>(x_3281.z, x_3281.w);
            let x_3284 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_3282.x, x_3282.y, x_3284);
            let x_3291 : vec3<f32> = txVec39;
            let x_3293 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3291.xy, x_3291.z);
            u_xlat85 = x_3293;
            let x_3295 : f32 = u_xlat19.y;
            let x_3296 : f32 = u_xlat85;
            let x_3298 : f32 = u_xlat84;
            u_xlat84 = ((x_3295 * x_3296) + x_3298);
            let x_3301 : vec4<f32> = u_xlat14;
            let x_3302 : vec2<f32> = vec2<f32>(x_3301.z, x_3301.w);
            let x_3304 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_3302.x, x_3302.y, x_3304);
            let x_3311 : vec3<f32> = txVec40;
            let x_3313 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3311.xy, x_3311.z);
            u_xlat85 = x_3313;
            let x_3315 : f32 = u_xlat19.z;
            let x_3316 : f32 = u_xlat85;
            let x_3318 : f32 = u_xlat84;
            u_xlat84 = ((x_3315 * x_3316) + x_3318);
            let x_3321 : vec4<f32> = u_xlat13;
            let x_3322 : vec2<f32> = vec2<f32>(x_3321.x, x_3321.y);
            let x_3324 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_3322.x, x_3322.y, x_3324);
            let x_3331 : vec3<f32> = txVec41;
            let x_3333 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3331.xy, x_3331.z);
            u_xlat85 = x_3333;
            let x_3335 : f32 = u_xlat19.w;
            let x_3336 : f32 = u_xlat85;
            let x_3338 : f32 = u_xlat84;
            u_xlat84 = ((x_3335 * x_3336) + x_3338);
            let x_3341 : vec4<f32> = u_xlat13;
            let x_3342 : vec2<f32> = vec2<f32>(x_3341.z, x_3341.w);
            let x_3344 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_3342.x, x_3342.y, x_3344);
            let x_3351 : vec3<f32> = txVec42;
            let x_3353 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3351.xy, x_3351.z);
            u_xlat85 = x_3353;
            let x_3354 : f32 = u_xlat83;
            let x_3355 : f32 = u_xlat85;
            let x_3357 : f32 = u_xlat84;
            u_xlat58 = ((x_3354 * x_3355) + x_3357);
          } else {
            let x_3360 : vec4<f32> = u_xlat10;
            let x_3363 : vec4<f32> = x_682.x_AdditionalShadowmapSize;
            let x_3366 : vec2<f32> = ((vec2<f32>(x_3360.x, x_3360.y) * vec2<f32>(x_3363.z, x_3363.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3367 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3366.x, x_3366.y, x_3367.z, x_3367.w);
            let x_3369 : vec4<f32> = u_xlat11;
            let x_3371 : vec2<f32> = floor(vec2<f32>(x_3369.x, x_3369.y));
            let x_3372 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3371.x, x_3371.y, x_3372.z, x_3372.w);
            let x_3374 : vec4<f32> = u_xlat10;
            let x_3377 : vec4<f32> = x_682.x_AdditionalShadowmapSize;
            let x_3380 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3374.x, x_3374.y) * vec2<f32>(x_3377.z, x_3377.w)) + -(vec2<f32>(x_3380.x, x_3380.y)));
            let x_3384 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3384.x, x_3384.x, x_3384.y, x_3384.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3387 : vec4<f32> = u_xlat12;
            let x_3389 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3387.x, x_3387.x, x_3387.z, x_3387.z) * vec4<f32>(x_3389.x, x_3389.x, x_3389.z, x_3389.z));
            let x_3392 : vec4<f32> = u_xlat13;
            let x_3394 : vec2<f32> = (vec2<f32>(x_3392.y, x_3392.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3395 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3395.x, x_3394.x, x_3395.z, x_3394.y);
            let x_3397 : vec4<f32> = u_xlat13;
            let x_3400 : vec2<f32> = u_xlat61;
            let x_3402 : vec2<f32> = ((vec2<f32>(x_3397.x, x_3397.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3400));
            let x_3403 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3402.x, x_3403.y, x_3402.y, x_3403.w);
            let x_3405 : vec2<f32> = u_xlat61;
            let x_3407 : vec2<f32> = (-(x_3405) + vec2<f32>(1.0f, 1.0f));
            let x_3408 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3407.x, x_3407.y, x_3408.z, x_3408.w);
            let x_3410 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_3410, vec2<f32>(0.0f, 0.0f));
            let x_3412 : vec2<f32> = u_xlat63;
            let x_3414 : vec2<f32> = u_xlat63;
            let x_3416 : vec4<f32> = u_xlat13;
            let x_3418 : vec2<f32> = ((-(x_3412) * x_3414) + vec2<f32>(x_3416.x, x_3416.y));
            let x_3419 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3418.x, x_3418.y, x_3419.z, x_3419.w);
            let x_3421 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_3421, vec2<f32>(0.0f, 0.0f));
            let x_3424 : vec2<f32> = u_xlat63;
            let x_3426 : vec2<f32> = u_xlat63;
            let x_3428 : vec4<f32> = u_xlat12;
            let x_3430 : vec2<f32> = ((-(x_3424) * x_3426) + vec2<f32>(x_3428.y, x_3428.w));
            let x_3431 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_3430.x, x_3431.y, x_3430.y);
            let x_3433 : vec4<f32> = u_xlat13;
            let x_3435 : vec2<f32> = (vec2<f32>(x_3433.x, x_3433.y) + vec2<f32>(2.0f, 2.0f));
            let x_3436 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3435.x, x_3435.y, x_3436.z, x_3436.w);
            let x_3438 : vec3<f32> = u_xlat37;
            let x_3440 : vec2<f32> = (vec2<f32>(x_3438.x, x_3438.z) + vec2<f32>(2.0f, 2.0f));
            let x_3441 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3441.x, x_3440.x, x_3441.z, x_3440.y);
            let x_3444 : f32 = u_xlat12.y;
            u_xlat15.z = (x_3444 * 0.08163200318813323975f);
            let x_3447 : vec4<f32> = u_xlat12;
            let x_3450 : vec3<f32> = (vec3<f32>(x_3447.z, x_3447.x, x_3447.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3451 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3450.x, x_3450.y, x_3450.z, x_3451.w);
            let x_3453 : vec4<f32> = u_xlat13;
            let x_3455 : vec2<f32> = (vec2<f32>(x_3453.x, x_3453.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3456 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3455.x, x_3455.y, x_3456.z, x_3456.w);
            let x_3459 : f32 = u_xlat16.y;
            u_xlat15.x = x_3459;
            let x_3461 : vec2<f32> = u_xlat61;
            let x_3464 : vec2<f32> = ((vec2<f32>(x_3461.x, x_3461.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3465 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3465.x, x_3464.x, x_3465.z, x_3464.y);
            let x_3467 : vec2<f32> = u_xlat61;
            let x_3470 : vec2<f32> = ((vec2<f32>(x_3467.x, x_3467.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3471 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3470.x, x_3471.y, x_3470.y, x_3471.w);
            let x_3474 : f32 = u_xlat12.x;
            u_xlat13.y = x_3474;
            let x_3477 : f32 = u_xlat14.y;
            u_xlat13.w = x_3477;
            let x_3479 : vec4<f32> = u_xlat13;
            let x_3480 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3479 + x_3480);
            let x_3482 : vec2<f32> = u_xlat61;
            let x_3485 : vec2<f32> = ((vec2<f32>(x_3482.y, x_3482.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3486 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3486.x, x_3485.x, x_3486.z, x_3485.y);
            let x_3488 : vec2<f32> = u_xlat61;
            let x_3491 : vec2<f32> = ((vec2<f32>(x_3488.y, x_3488.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3492 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3491.x, x_3492.y, x_3491.y, x_3492.w);
            let x_3495 : f32 = u_xlat12.y;
            u_xlat14.y = x_3495;
            let x_3497 : vec4<f32> = u_xlat14;
            let x_3498 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_3497 + x_3498);
            let x_3500 : vec4<f32> = u_xlat13;
            let x_3501 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_3500 / x_3501);
            let x_3503 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3503 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3505 : vec4<f32> = u_xlat14;
            let x_3506 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_3505 / x_3506);
            let x_3508 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3508 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3510 : vec4<f32> = u_xlat13;
            let x_3513 : vec4<f32> = x_682.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3510.w, x_3510.x, x_3510.y, x_3510.z) * vec4<f32>(x_3513.x, x_3513.x, x_3513.x, x_3513.x));
            let x_3516 : vec4<f32> = u_xlat14;
            let x_3519 : vec4<f32> = x_682.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3516.x, x_3516.w, x_3516.y, x_3516.z) * vec4<f32>(x_3519.y, x_3519.y, x_3519.y, x_3519.y));
            let x_3522 : vec4<f32> = u_xlat13;
            let x_3523 : vec3<f32> = vec3<f32>(x_3522.y, x_3522.z, x_3522.w);
            let x_3524 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3523.x, x_3524.y, x_3523.y, x_3523.z);
            let x_3527 : f32 = u_xlat14.x;
            u_xlat16.y = x_3527;
            let x_3529 : vec4<f32> = u_xlat11;
            let x_3532 : vec4<f32> = x_682.x_AdditionalShadowmapSize;
            let x_3535 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3529.x, x_3529.y, x_3529.x, x_3529.y) * vec4<f32>(x_3532.x, x_3532.y, x_3532.x, x_3532.y)) + vec4<f32>(x_3535.x, x_3535.y, x_3535.z, x_3535.y));
            let x_3538 : vec4<f32> = u_xlat11;
            let x_3541 : vec4<f32> = x_682.x_AdditionalShadowmapSize;
            let x_3544 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_3538.x, x_3538.y) * vec2<f32>(x_3541.x, x_3541.y)) + vec2<f32>(x_3544.w, x_3544.y));
            let x_3548 : f32 = u_xlat16.y;
            u_xlat13.y = x_3548;
            let x_3551 : f32 = u_xlat14.z;
            u_xlat16.y = x_3551;
            let x_3553 : vec4<f32> = u_xlat11;
            let x_3556 : vec4<f32> = x_682.x_AdditionalShadowmapSize;
            let x_3559 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3553.x, x_3553.y, x_3553.x, x_3553.y) * vec4<f32>(x_3556.x, x_3556.y, x_3556.x, x_3556.y)) + vec4<f32>(x_3559.x, x_3559.y, x_3559.z, x_3559.y));
            let x_3562 : vec4<f32> = u_xlat11;
            let x_3565 : vec4<f32> = x_682.x_AdditionalShadowmapSize;
            let x_3568 : vec4<f32> = u_xlat16;
            let x_3570 : vec2<f32> = ((vec2<f32>(x_3562.x, x_3562.y) * vec2<f32>(x_3565.x, x_3565.y)) + vec2<f32>(x_3568.w, x_3568.y));
            let x_3571 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3570.x, x_3570.y, x_3571.z, x_3571.w);
            let x_3574 : f32 = u_xlat16.y;
            u_xlat13.z = x_3574;
            let x_3576 : vec4<f32> = u_xlat11;
            let x_3579 : vec4<f32> = x_682.x_AdditionalShadowmapSize;
            let x_3582 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3576.x, x_3576.y, x_3576.x, x_3576.y) * vec4<f32>(x_3579.x, x_3579.y, x_3579.x, x_3579.y)) + vec4<f32>(x_3582.x, x_3582.y, x_3582.x, x_3582.z));
            let x_3586 : f32 = u_xlat14.w;
            u_xlat16.y = x_3586;
            let x_3589 : vec4<f32> = u_xlat11;
            let x_3592 : vec4<f32> = x_682.x_AdditionalShadowmapSize;
            let x_3595 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3589.x, x_3589.y, x_3589.x, x_3589.y) * vec4<f32>(x_3592.x, x_3592.y, x_3592.x, x_3592.y)) + vec4<f32>(x_3595.x, x_3595.y, x_3595.z, x_3595.y));
            let x_3599 : vec4<f32> = u_xlat11;
            let x_3602 : vec4<f32> = x_682.x_AdditionalShadowmapSize;
            let x_3605 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3599.x, x_3599.y) * vec2<f32>(x_3602.x, x_3602.y)) + vec2<f32>(x_3605.w, x_3605.y));
            let x_3609 : f32 = u_xlat16.y;
            u_xlat13.w = x_3609;
            let x_3612 : vec4<f32> = u_xlat11;
            let x_3615 : vec4<f32> = x_682.x_AdditionalShadowmapSize;
            let x_3618 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3612.x, x_3612.y) * vec2<f32>(x_3615.x, x_3615.y)) + vec2<f32>(x_3618.x, x_3618.w));
            let x_3621 : vec4<f32> = u_xlat16;
            let x_3622 : vec3<f32> = vec3<f32>(x_3621.x, x_3621.z, x_3621.w);
            let x_3623 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3622.x, x_3623.y, x_3622.y, x_3622.z);
            let x_3625 : vec4<f32> = u_xlat11;
            let x_3628 : vec4<f32> = x_682.x_AdditionalShadowmapSize;
            let x_3631 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3625.x, x_3625.y, x_3625.x, x_3625.y) * vec4<f32>(x_3628.x, x_3628.y, x_3628.x, x_3628.y)) + vec4<f32>(x_3631.x, x_3631.y, x_3631.z, x_3631.y));
            let x_3635 : vec4<f32> = u_xlat11;
            let x_3638 : vec4<f32> = x_682.x_AdditionalShadowmapSize;
            let x_3641 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3635.x, x_3635.y) * vec2<f32>(x_3638.x, x_3638.y)) + vec2<f32>(x_3641.w, x_3641.y));
            let x_3645 : f32 = u_xlat13.x;
            u_xlat14.x = x_3645;
            let x_3647 : vec4<f32> = u_xlat11;
            let x_3650 : vec4<f32> = x_682.x_AdditionalShadowmapSize;
            let x_3653 : vec4<f32> = u_xlat14;
            let x_3655 : vec2<f32> = ((vec2<f32>(x_3647.x, x_3647.y) * vec2<f32>(x_3650.x, x_3650.y)) + vec2<f32>(x_3653.x, x_3653.y));
            let x_3656 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3655.x, x_3655.y, x_3656.z, x_3656.w);
            let x_3659 : vec4<f32> = u_xlat12;
            let x_3661 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3659.x, x_3659.x, x_3659.x, x_3659.x) * x_3661);
            let x_3664 : vec4<f32> = u_xlat12;
            let x_3666 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3664.y, x_3664.y, x_3664.y, x_3664.y) * x_3666);
            let x_3669 : vec4<f32> = u_xlat12;
            let x_3671 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3669.z, x_3669.z, x_3669.z, x_3669.z) * x_3671);
            let x_3673 : vec4<f32> = u_xlat12;
            let x_3675 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3673.w, x_3673.w, x_3673.w, x_3673.w) * x_3675);
            let x_3678 : vec4<f32> = u_xlat17;
            let x_3679 : vec2<f32> = vec2<f32>(x_3678.x, x_3678.y);
            let x_3681 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3679.x, x_3679.y, x_3681);
            let x_3688 : vec3<f32> = txVec43;
            let x_3690 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3688.xy, x_3688.z);
            u_xlat83 = x_3690;
            let x_3692 : vec4<f32> = u_xlat17;
            let x_3693 : vec2<f32> = vec2<f32>(x_3692.z, x_3692.w);
            let x_3695 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3693.x, x_3693.y, x_3695);
            let x_3702 : vec3<f32> = txVec44;
            let x_3704 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3702.xy, x_3702.z);
            u_xlat84 = x_3704;
            let x_3705 : f32 = u_xlat84;
            let x_3707 : f32 = u_xlat22.y;
            u_xlat84 = (x_3705 * x_3707);
            let x_3710 : f32 = u_xlat22.x;
            let x_3711 : f32 = u_xlat83;
            let x_3713 : f32 = u_xlat84;
            u_xlat83 = ((x_3710 * x_3711) + x_3713);
            let x_3716 : vec2<f32> = u_xlat61;
            let x_3718 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3716.x, x_3716.y, x_3718);
            let x_3725 : vec3<f32> = txVec45;
            let x_3727 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3725.xy, x_3725.z);
            u_xlat84 = x_3727;
            let x_3729 : f32 = u_xlat22.z;
            let x_3730 : f32 = u_xlat84;
            let x_3732 : f32 = u_xlat83;
            u_xlat83 = ((x_3729 * x_3730) + x_3732);
            let x_3735 : vec4<f32> = u_xlat20;
            let x_3736 : vec2<f32> = vec2<f32>(x_3735.x, x_3735.y);
            let x_3738 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3736.x, x_3736.y, x_3738);
            let x_3745 : vec3<f32> = txVec46;
            let x_3747 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3745.xy, x_3745.z);
            u_xlat84 = x_3747;
            let x_3749 : f32 = u_xlat22.w;
            let x_3750 : f32 = u_xlat84;
            let x_3752 : f32 = u_xlat83;
            u_xlat83 = ((x_3749 * x_3750) + x_3752);
            let x_3755 : vec4<f32> = u_xlat18;
            let x_3756 : vec2<f32> = vec2<f32>(x_3755.x, x_3755.y);
            let x_3758 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3756.x, x_3756.y, x_3758);
            let x_3765 : vec3<f32> = txVec47;
            let x_3767 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3765.xy, x_3765.z);
            u_xlat84 = x_3767;
            let x_3769 : f32 = u_xlat23.x;
            let x_3770 : f32 = u_xlat84;
            let x_3772 : f32 = u_xlat83;
            u_xlat83 = ((x_3769 * x_3770) + x_3772);
            let x_3775 : vec4<f32> = u_xlat18;
            let x_3776 : vec2<f32> = vec2<f32>(x_3775.z, x_3775.w);
            let x_3778 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3776.x, x_3776.y, x_3778);
            let x_3785 : vec3<f32> = txVec48;
            let x_3787 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3785.xy, x_3785.z);
            u_xlat84 = x_3787;
            let x_3789 : f32 = u_xlat23.y;
            let x_3790 : f32 = u_xlat84;
            let x_3792 : f32 = u_xlat83;
            u_xlat83 = ((x_3789 * x_3790) + x_3792);
            let x_3795 : vec4<f32> = u_xlat19;
            let x_3796 : vec2<f32> = vec2<f32>(x_3795.x, x_3795.y);
            let x_3798 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3796.x, x_3796.y, x_3798);
            let x_3805 : vec3<f32> = txVec49;
            let x_3807 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3805.xy, x_3805.z);
            u_xlat84 = x_3807;
            let x_3809 : f32 = u_xlat23.z;
            let x_3810 : f32 = u_xlat84;
            let x_3812 : f32 = u_xlat83;
            u_xlat83 = ((x_3809 * x_3810) + x_3812);
            let x_3815 : vec4<f32> = u_xlat20;
            let x_3816 : vec2<f32> = vec2<f32>(x_3815.z, x_3815.w);
            let x_3818 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3816.x, x_3816.y, x_3818);
            let x_3825 : vec3<f32> = txVec50;
            let x_3827 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3825.xy, x_3825.z);
            u_xlat84 = x_3827;
            let x_3829 : f32 = u_xlat23.w;
            let x_3830 : f32 = u_xlat84;
            let x_3832 : f32 = u_xlat83;
            u_xlat83 = ((x_3829 * x_3830) + x_3832);
            let x_3835 : vec4<f32> = u_xlat21;
            let x_3836 : vec2<f32> = vec2<f32>(x_3835.x, x_3835.y);
            let x_3838 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3836.x, x_3836.y, x_3838);
            let x_3845 : vec3<f32> = txVec51;
            let x_3847 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3845.xy, x_3845.z);
            u_xlat84 = x_3847;
            let x_3849 : f32 = u_xlat24.x;
            let x_3850 : f32 = u_xlat84;
            let x_3852 : f32 = u_xlat83;
            u_xlat83 = ((x_3849 * x_3850) + x_3852);
            let x_3855 : vec4<f32> = u_xlat21;
            let x_3856 : vec2<f32> = vec2<f32>(x_3855.z, x_3855.w);
            let x_3858 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_3856.x, x_3856.y, x_3858);
            let x_3865 : vec3<f32> = txVec52;
            let x_3867 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3865.xy, x_3865.z);
            u_xlat84 = x_3867;
            let x_3869 : f32 = u_xlat24.y;
            let x_3870 : f32 = u_xlat84;
            let x_3872 : f32 = u_xlat83;
            u_xlat83 = ((x_3869 * x_3870) + x_3872);
            let x_3875 : vec2<f32> = u_xlat38;
            let x_3877 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_3875.x, x_3875.y, x_3877);
            let x_3884 : vec3<f32> = txVec53;
            let x_3886 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3884.xy, x_3884.z);
            u_xlat84 = x_3886;
            let x_3888 : f32 = u_xlat24.z;
            let x_3889 : f32 = u_xlat84;
            let x_3891 : f32 = u_xlat83;
            u_xlat83 = ((x_3888 * x_3889) + x_3891);
            let x_3894 : vec2<f32> = u_xlat69;
            let x_3896 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_3894.x, x_3894.y, x_3896);
            let x_3903 : vec3<f32> = txVec54;
            let x_3905 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3903.xy, x_3903.z);
            u_xlat84 = x_3905;
            let x_3907 : f32 = u_xlat24.w;
            let x_3908 : f32 = u_xlat84;
            let x_3910 : f32 = u_xlat83;
            u_xlat83 = ((x_3907 * x_3908) + x_3910);
            let x_3913 : vec4<f32> = u_xlat16;
            let x_3914 : vec2<f32> = vec2<f32>(x_3913.x, x_3913.y);
            let x_3916 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_3914.x, x_3914.y, x_3916);
            let x_3923 : vec3<f32> = txVec55;
            let x_3925 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3923.xy, x_3923.z);
            u_xlat84 = x_3925;
            let x_3927 : f32 = u_xlat12.x;
            let x_3928 : f32 = u_xlat84;
            let x_3930 : f32 = u_xlat83;
            u_xlat83 = ((x_3927 * x_3928) + x_3930);
            let x_3933 : vec4<f32> = u_xlat16;
            let x_3934 : vec2<f32> = vec2<f32>(x_3933.z, x_3933.w);
            let x_3936 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_3934.x, x_3934.y, x_3936);
            let x_3943 : vec3<f32> = txVec56;
            let x_3945 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3943.xy, x_3943.z);
            u_xlat84 = x_3945;
            let x_3947 : f32 = u_xlat12.y;
            let x_3948 : f32 = u_xlat84;
            let x_3950 : f32 = u_xlat83;
            u_xlat83 = ((x_3947 * x_3948) + x_3950);
            let x_3953 : vec2<f32> = u_xlat64;
            let x_3955 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_3953.x, x_3953.y, x_3955);
            let x_3962 : vec3<f32> = txVec57;
            let x_3964 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3962.xy, x_3962.z);
            u_xlat84 = x_3964;
            let x_3966 : f32 = u_xlat12.z;
            let x_3967 : f32 = u_xlat84;
            let x_3969 : f32 = u_xlat83;
            u_xlat83 = ((x_3966 * x_3967) + x_3969);
            let x_3972 : vec4<f32> = u_xlat11;
            let x_3973 : vec2<f32> = vec2<f32>(x_3972.x, x_3972.y);
            let x_3975 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_3973.x, x_3973.y, x_3975);
            let x_3982 : vec3<f32> = txVec58;
            let x_3984 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3982.xy, x_3982.z);
            u_xlat84 = x_3984;
            let x_3986 : f32 = u_xlat12.w;
            let x_3987 : f32 = u_xlat84;
            let x_3989 : f32 = u_xlat83;
            u_xlat58 = ((x_3986 * x_3987) + x_3989);
          }
        }
      } else {
        let x_3993 : vec4<f32> = u_xlat10;
        let x_3994 : vec2<f32> = vec2<f32>(x_3993.x, x_3993.y);
        let x_3996 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_3994.x, x_3994.y, x_3996);
        let x_4003 : vec3<f32> = txVec59;
        let x_4005 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4003.xy, x_4003.z);
        u_xlat58 = x_4005;
      }
      let x_4006 : i32 = u_xlati81;
      let x_4008 : f32 = x_682.x_AdditionalShadowParams[x_4006].x;
      u_xlat83 = (1.0f + -(x_4008));
      let x_4011 : f32 = u_xlat58;
      let x_4012 : i32 = u_xlati81;
      let x_4014 : f32 = x_682.x_AdditionalShadowParams[x_4012].x;
      let x_4016 : f32 = u_xlat83;
      u_xlat58 = ((x_4011 * x_4014) + x_4016);
      let x_4019 : f32 = u_xlat10.z;
      u_xlatb83 = (0.0f >= x_4019);
      let x_4023 : f32 = u_xlat10.z;
      u_xlatb84 = (x_4023 >= 1.0f);
      let x_4025 : bool = u_xlatb83;
      let x_4026 : bool = u_xlatb84;
      u_xlatb83 = (x_4025 | x_4026);
      let x_4028 : bool = u_xlatb83;
      let x_4029 : f32 = u_xlat58;
      u_xlat58 = select(x_4029, 1.0f, x_4028);
    } else {
      u_xlat58 = 1.0f;
    }
    let x_4032 : f32 = u_xlat58;
    u_xlat83 = (-(x_4032) + 1.0f);
    let x_4035 : f32 = u_xlat50;
    let x_4036 : f32 = u_xlat83;
    let x_4038 : f32 = u_xlat58;
    u_xlat58 = ((x_4035 * x_4036) + x_4038);
    let x_4040 : f32 = u_xlat58;
    let x_4042 : f32 = u_xlat8.x;
    u_xlat8.x = (x_4040 * x_4042);
    let x_4045 : vec4<f32> = u_xlat4;
    let x_4047 : vec4<f32> = u_xlat9;
    u_xlat58 = dot(vec3<f32>(x_4045.x, x_4045.y, x_4045.z), vec3<f32>(x_4047.x, x_4047.y, x_4047.z));
    let x_4050 : f32 = u_xlat58;
    u_xlat58 = clamp(x_4050, 0.0f, 1.0f);
    let x_4052 : f32 = u_xlat58;
    let x_4054 : f32 = u_xlat8.x;
    u_xlat8.x = (x_4052 * x_4054);
    let x_4057 : vec4<f32> = u_xlat8;
    let x_4059 : i32 = u_xlati81;
    let x_4061 : vec4<f32> = x_2606.x_AdditionalLightsColor[x_4059];
    let x_4063 : vec3<f32> = (vec3<f32>(x_4057.x, x_4057.x, x_4057.x) * vec3<f32>(x_4061.x, x_4061.y, x_4061.z));
    let x_4064 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4063.x, x_4064.y, x_4063.y, x_4063.z);
    let x_4066 : vec3<f32> = u_xlat32;
    let x_4067 : vec2<f32> = u_xlat33;
    let x_4070 : vec3<f32> = u_xlat5;
    u_xlat32 = ((x_4066 * vec3<f32>(x_4067.x, x_4067.x, x_4067.x)) + x_4070);
    let x_4072 : vec3<f32> = u_xlat32;
    let x_4073 : vec3<f32> = u_xlat32;
    u_xlat81 = dot(x_4072, x_4073);
    let x_4075 : f32 = u_xlat81;
    u_xlat81 = max(x_4075, 1.17549435e-38f);
    let x_4077 : f32 = u_xlat81;
    u_xlat81 = inverseSqrt(x_4077);
    let x_4079 : f32 = u_xlat81;
    let x_4081 : vec3<f32> = u_xlat32;
    u_xlat32 = (vec3<f32>(x_4079, x_4079, x_4079) * x_4081);
    let x_4083 : vec4<f32> = u_xlat4;
    let x_4085 : vec3<f32> = u_xlat32;
    u_xlat81 = dot(vec3<f32>(x_4083.x, x_4083.y, x_4083.z), x_4085);
    let x_4087 : f32 = u_xlat81;
    u_xlat81 = clamp(x_4087, 0.0f, 1.0f);
    let x_4089 : vec4<f32> = u_xlat9;
    let x_4091 : vec3<f32> = u_xlat32;
    u_xlat32.x = dot(vec3<f32>(x_4089.x, x_4089.y, x_4089.z), x_4091);
    let x_4095 : f32 = u_xlat32.x;
    u_xlat32.x = clamp(x_4095, 0.0f, 1.0f);
    let x_4098 : f32 = u_xlat81;
    let x_4099 : f32 = u_xlat81;
    u_xlat81 = (x_4098 * x_4099);
    let x_4101 : f32 = u_xlat81;
    let x_4103 : f32 = u_xlat7.x;
    u_xlat81 = ((x_4101 * x_4103) + 1.00001001358032226562f);
    let x_4107 : f32 = u_xlat32.x;
    let x_4109 : f32 = u_xlat32.x;
    u_xlat32.x = (x_4107 * x_4109);
    let x_4112 : f32 = u_xlat81;
    let x_4113 : f32 = u_xlat81;
    u_xlat81 = (x_4112 * x_4113);
    let x_4116 : f32 = u_xlat32.x;
    u_xlat32.x = max(x_4116, 0.10000000149011611938f);
    let x_4119 : f32 = u_xlat81;
    let x_4121 : f32 = u_xlat32.x;
    u_xlat81 = (x_4119 * x_4121);
    let x_4123 : f32 = u_xlat79;
    let x_4124 : f32 = u_xlat81;
    u_xlat81 = (x_4123 * x_4124);
    let x_4126 : f32 = u_xlat78;
    let x_4127 : f32 = u_xlat81;
    u_xlat81 = (x_4126 / x_4127);
    let x_4129 : vec3<f32> = u_xlat2;
    let x_4130 : f32 = u_xlat81;
    let x_4133 : vec3<f32> = u_xlat3;
    u_xlat32 = ((x_4129 * vec3<f32>(x_4130, x_4130, x_4130)) + x_4133);
    let x_4135 : vec3<f32> = u_xlat32;
    let x_4136 : vec4<f32> = u_xlat8;
    let x_4139 : vec4<f32> = u_xlat6;
    let x_4141 : vec3<f32> = ((x_4135 * vec3<f32>(x_4136.x, x_4136.z, x_4136.w)) + vec3<f32>(x_4139.x, x_4139.y, x_4139.z));
    let x_4142 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_4141.x, x_4141.y, x_4141.z, x_4142.w);

    continuing {
      let x_4144 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4144 + bitcast<u32>(1i));
    }
  }
  let x_4146 : vec4<f32> = u_xlat1;
  let x_4148 : f32 = u_xlat80;
  let x_4151 : vec4<f32> = u_xlat0;
  let x_4153 : vec3<f32> = ((vec3<f32>(x_4146.x, x_4146.y, x_4146.z) * vec3<f32>(x_4148, x_4148, x_4148)) + vec3<f32>(x_4151.x, x_4151.y, x_4151.w));
  let x_4154 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4153.x, x_4153.y, x_4153.z, x_4154.w);
  let x_4158 : vec4<f32> = u_xlat6;
  let x_4160 : vec4<f32> = u_xlat0;
  let x_4162 : vec3<f32> = (vec3<f32>(x_4158.x, x_4158.y, x_4158.z) + vec3<f32>(x_4160.x, x_4160.y, x_4160.z));
  let x_4163 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4162.x, x_4162.y, x_4162.z, x_4163.w);
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


