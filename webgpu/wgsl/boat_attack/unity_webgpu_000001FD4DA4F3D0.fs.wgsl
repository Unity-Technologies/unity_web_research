diagnostic(off, derivative_uniformity);

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
  x_MainTex_TexelSize : vec4<f32>,
  /* @offset(16) */
  x_MRLL_TexelSize : vec4<f32>,
  /* @offset(32) */
  x_BumpMap_TexelSize : vec4<f32>,
  /* @offset(48) */
  x_Color1 : vec4<f32>,
  /* @offset(64) */
  x_Color2 : vec4<f32>,
}

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

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var samplerSamplerState_Trilinear_Clamp : sampler;

var<private> vs_INTERP5 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(4) var x_MRLL : texture_2d<f32>;

var<private> u_xlat2 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_54 : UnityPerMaterial;

var<private> u_xlat51 : f32;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlatb4 : vec3<bool>;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(5) var x_BumpMap : texture_2d<f32>;

var<private> u_xlat25 : vec2<f32>;

var<private> u_xlatb26 : vec3<bool>;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_271 : UnityPerDraw;

var<private> u_xlat26 : vec3<f32>;

var<private> vs_INTERP8 : vec3<f32>;

var<private> u_xlatb25 : bool;

var<private> vs_INTERP7 : vec3<f32>;

var<private> u_xlat50 : f32;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat77 : f32;

var<private> u_xlat75 : f32;

var<private> u_xlatb78 : bool;

@group(1) @binding(3) var<uniform> x_558 : LightShadows;

var<private> vs_INTERP3 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat78 : f32;

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

var<private> u_xlat79 : f32;

var<private> u_xlat80 : f32;

var<private> u_xlat32 : vec3<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat33 : vec2<f32>;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlatb80 : bool;

var<private> u_xlat81 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu25 : u32;

var<private> u_xlatu79 : u32;

var<private> u_xlati80 : i32;

var<private> u_xlati79 : i32;

@group(1) @binding(1) var<uniform> x_2201 : AdditionalLights;

var<private> u_xlat82 : f32;

var<private> u_xlati82 : i32;

var<private> u_xlatb83 : bool;

var<private> u_xlatb10 : vec4<bool>;

var<private> u_xlat84 : f32;

var<private> u_xlat83 : f32;

var<private> u_xlatb82 : bool;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat85 : f32;

var<private> u_xlat37 : vec3<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat38 : vec2<f32>;

var<private> u_xlat69 : vec2<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlatb84 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu78 : u32;

fn main_1() {
  var x_380 : f32;
  var x_392 : f32;
  var x_404 : f32;
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
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2338 : f32;
  var x_2348 : f32;
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
  let x_23 : vec4<f32> = vs_INTERP5;
  let x_36 : f32 = x_29.x_GlobalMipBias.x;
  let x_37 : vec4<f32> = textureSampleBias(x_MainTex, samplerSamplerState_Trilinear_Clamp, vec2<f32>(x_23.x, x_23.y), x_36);
  u_xlat0 = x_37;
  let x_43 : vec4<f32> = vs_INTERP5;
  let x_46 : f32 = x_29.x_GlobalMipBias.x;
  let x_47 : vec4<f32> = textureSampleBias(x_MRLL, samplerSamplerState_Trilinear_Clamp, vec2<f32>(x_43.x, x_43.y), x_46);
  u_xlat1 = x_47;
  let x_50 : vec4<f32> = u_xlat1;
  let x_58 : vec4<f32> = x_54.x_Color2;
  u_xlat2 = (vec3<f32>(x_50.w, x_50.w, x_50.w) * vec3<f32>(x_58.x, x_58.y, x_58.z));
  let x_63 : vec4<f32> = x_54.x_Color1;
  let x_65 : vec4<f32> = u_xlat1;
  let x_68 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_63.x, x_63.y, x_63.z) * vec3<f32>(x_65.z, x_65.z, x_65.z)) + x_68);
  let x_74 : f32 = u_xlat1.w;
  let x_77 : f32 = u_xlat1.z;
  u_xlat51 = (x_74 + x_77);
  let x_79 : f32 = u_xlat51;
  u_xlat51 = clamp(x_79, 0.0f, 1.0f);
  let x_84 : vec4<f32> = u_xlat0;
  let x_88 : vec3<f32> = (-(vec3<f32>(x_84.x, x_84.y, x_84.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_89 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_88.x, x_88.y, x_88.z, x_89.w);
  let x_91 : vec4<f32> = u_xlat3;
  let x_93 : vec4<f32> = u_xlat3;
  let x_95 : vec3<f32> = (vec3<f32>(x_91.x, x_91.y, x_91.z) + vec3<f32>(x_93.x, x_93.y, x_93.z));
  let x_96 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_95.x, x_95.y, x_95.z, x_96.w);
  let x_99 : vec3<f32> = u_xlat2;
  u_xlat4 = (-(x_99) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_102 : vec4<f32> = u_xlat3;
  let x_105 : vec3<f32> = u_xlat4;
  let x_107 : vec3<f32> = ((-(vec3<f32>(x_102.x, x_102.y, x_102.z)) * x_105) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_108 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_107.x, x_107.y, x_107.z, x_108.w);
  let x_110 : vec4<f32> = u_xlat0;
  let x_112 : vec4<f32> = u_xlat0;
  u_xlat4 = (vec3<f32>(x_110.x, x_110.y, x_110.z) + vec3<f32>(x_112.x, x_112.y, x_112.z));
  let x_115 : vec3<f32> = u_xlat2;
  let x_116 : vec3<f32> = u_xlat4;
  u_xlat2 = (x_115 * x_116);
  let x_124 : vec4<f32> = u_xlat0;
  let x_127 : vec4<bool> = (vec4<f32>(0.5f, 0.5f, 0.5f, 0.0f) >= vec4<f32>(x_124.x, x_124.y, x_124.z, x_124.x));
  u_xlatb4 = vec3<bool>(x_127.x, x_127.y, x_127.z);
  let x_132 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_132);
  let x_137 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_137);
  let x_141 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_141);
  let x_145 : bool = u_xlatb4.x;
  u_xlat4.x = select(1.0f, 0.0f, x_145);
  let x_149 : bool = u_xlatb4.y;
  u_xlat4.y = select(1.0f, 0.0f, x_149);
  let x_153 : bool = u_xlatb4.z;
  u_xlat4.z = select(1.0f, 0.0f, x_153);
  let x_156 : vec4<f32> = u_xlat3;
  let x_158 : vec3<f32> = u_xlat4;
  let x_159 : vec3<f32> = (vec3<f32>(x_156.x, x_156.y, x_156.z) * x_158);
  let x_160 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_159.x, x_159.y, x_159.z, x_160.w);
  let x_162 : vec3<f32> = u_xlat2;
  let x_163 : vec3<f32> = u_xlat5;
  let x_165 : vec4<f32> = u_xlat3;
  u_xlat2 = ((x_162 * x_163) + vec3<f32>(x_165.x, x_165.y, x_165.z));
  let x_168 : vec4<f32> = u_xlat0;
  let x_171 : vec3<f32> = u_xlat2;
  u_xlat2 = (-(vec3<f32>(x_168.x, x_168.y, x_168.z)) + x_171);
  let x_173 : f32 = u_xlat51;
  let x_175 : vec3<f32> = u_xlat2;
  let x_177 : vec4<f32> = u_xlat0;
  u_xlat2 = ((vec3<f32>(x_173, x_173, x_173) * x_175) + vec3<f32>(x_177.x, x_177.y, x_177.z));
  let x_181 : f32 = u_xlat0.x;
  u_xlat0.x = (x_181 + -0.15000000596046447754f);
  let x_186 : f32 = u_xlat0.x;
  u_xlat0.x = ceil(x_186);
  let x_190 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_190) + 1.0f);
  let x_194 : vec4<f32> = u_xlat0;
  let x_199 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_194.x, x_194.x, x_194.x) * vec3<f32>(0.40000000596046447754f, 0.40000000596046447754f, 0.40000000596046447754f)) + x_199);
  let x_205 : vec4<f32> = vs_INTERP5;
  let x_208 : f32 = x_29.x_GlobalMipBias.x;
  let x_209 : vec4<f32> = textureSampleBias(x_BumpMap, samplerSamplerState_Trilinear_Clamp, vec2<f32>(x_205.x, x_205.y), x_208);
  let x_210 : vec3<f32> = vec3<f32>(x_209.x, x_209.y, x_209.w);
  let x_211 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_210.x, x_210.y, x_210.z, x_211.w);
  let x_214 : f32 = u_xlat3.x;
  let x_216 : f32 = u_xlat3.z;
  u_xlat3.x = (x_214 * x_216);
  let x_221 : vec4<f32> = u_xlat3;
  u_xlat25 = ((vec2<f32>(x_221.x, x_221.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_229 : vec2<f32> = u_xlat25;
  let x_230 : vec2<f32> = u_xlat25;
  u_xlat51 = dot(x_229, x_230);
  let x_232 : f32 = u_xlat51;
  u_xlat51 = min(x_232, 1.0f);
  let x_234 : f32 = u_xlat51;
  u_xlat51 = (-(x_234) + 1.0f);
  let x_237 : f32 = u_xlat51;
  u_xlat51 = sqrt(x_237);
  let x_239 : f32 = u_xlat51;
  u_xlat51 = max(x_239, 0.0000000000000001f);
  let x_243 : f32 = u_xlat1.x;
  let x_245 : f32 = u_xlat0.x;
  u_xlat0.x = (x_243 + x_245);
  let x_249 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_249, 0.0f, 1.0f);
  let x_253 : f32 = u_xlat1.y;
  u_xlat1.x = max(x_253, 0.0f);
  let x_257 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_257, 0.85000002384185791016f);
  let x_265 : f32 = vs_INTERP4.w;
  u_xlatb26.x = (0.0f < x_265);
  let x_273 : f32 = x_271.unity_WorldTransformParams.w;
  u_xlatb26.z = (x_273 >= 0.0f);
  let x_278 : bool = u_xlatb26.x;
  u_xlat26.x = select(-1.0f, 1.0f, x_278);
  let x_282 : bool = u_xlatb26.z;
  u_xlat26.z = select(-1.0f, 1.0f, x_282);
  let x_286 : f32 = u_xlat26.z;
  let x_288 : f32 = u_xlat26.x;
  u_xlat26.x = (x_286 * x_288);
  let x_291 : vec4<f32> = vs_INTERP4;
  let x_295 : vec3<f32> = vs_INTERP8;
  let x_297 : vec3<f32> = (vec3<f32>(x_291.y, x_291.z, x_291.x) * vec3<f32>(x_295.z, x_295.x, x_295.y));
  let x_298 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_297.x, x_297.y, x_297.z, x_298.w);
  let x_300 : vec3<f32> = vs_INTERP8;
  let x_302 : vec4<f32> = vs_INTERP4;
  let x_305 : vec4<f32> = u_xlat3;
  let x_308 : vec3<f32> = ((vec3<f32>(x_300.y, x_300.z, x_300.x) * vec3<f32>(x_302.z, x_302.x, x_302.y)) + -(vec3<f32>(x_305.x, x_305.y, x_305.z)));
  let x_309 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_308.x, x_308.y, x_308.z, x_309.w);
  let x_311 : vec3<f32> = u_xlat26;
  let x_313 : vec4<f32> = u_xlat3;
  let x_315 : vec3<f32> = (vec3<f32>(x_311.x, x_311.x, x_311.x) * vec3<f32>(x_313.x, x_313.y, x_313.z));
  let x_316 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_315.x, x_315.y, x_315.z, x_316.w);
  let x_318 : vec2<f32> = u_xlat25;
  let x_320 : vec4<f32> = u_xlat3;
  let x_322 : vec3<f32> = (vec3<f32>(x_318.y, x_318.y, x_318.y) * vec3<f32>(x_320.x, x_320.y, x_320.z));
  let x_323 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323.w);
  let x_325 : vec2<f32> = u_xlat25;
  let x_327 : vec4<f32> = vs_INTERP4;
  let x_330 : vec4<f32> = u_xlat3;
  let x_332 : vec3<f32> = ((vec3<f32>(x_325.x, x_325.x, x_325.x) * vec3<f32>(x_327.x, x_327.y, x_327.z)) + vec3<f32>(x_330.x, x_330.y, x_330.z));
  let x_333 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_332.x, x_332.y, x_332.z, x_333.w);
  let x_335 : f32 = u_xlat51;
  let x_337 : vec3<f32> = vs_INTERP8;
  let x_339 : vec4<f32> = u_xlat3;
  u_xlat26 = ((vec3<f32>(x_335, x_335, x_335) * x_337) + vec3<f32>(x_339.x, x_339.y, x_339.z));
  let x_342 : vec3<f32> = u_xlat26;
  let x_343 : vec3<f32> = u_xlat26;
  u_xlat25.x = dot(x_342, x_343);
  let x_347 : f32 = u_xlat25.x;
  u_xlat25.x = inverseSqrt(x_347);
  let x_350 : vec2<f32> = u_xlat25;
  let x_352 : vec3<f32> = u_xlat26;
  let x_353 : vec3<f32> = (vec3<f32>(x_350.x, x_350.x, x_350.x) * x_352);
  let x_354 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_353.x, x_353.y, x_353.z, x_354.w);
  let x_359 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb25 = (x_359 == 0.0f);
  let x_362 : vec3<f32> = vs_INTERP7;
  let x_366 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat26 = (-(x_362) + x_366);
  let x_369 : vec3<f32> = u_xlat26;
  let x_370 : vec3<f32> = u_xlat26;
  u_xlat50 = dot(x_369, x_370);
  let x_372 : f32 = u_xlat50;
  u_xlat50 = inverseSqrt(x_372);
  let x_374 : f32 = u_xlat50;
  let x_376 : vec3<f32> = u_xlat26;
  u_xlat26 = (vec3<f32>(x_374, x_374, x_374) * x_376);
  let x_378 : bool = u_xlatb25;
  if (x_378) {
    let x_384 : f32 = u_xlat26.x;
    x_380 = x_384;
  } else {
    let x_388 : f32 = x_29.unity_MatrixV[0i].z;
    x_380 = x_388;
  }
  let x_389 : f32 = x_380;
  u_xlat4.x = x_389;
  let x_391 : bool = u_xlatb25;
  if (x_391) {
    let x_396 : f32 = u_xlat26.y;
    x_392 = x_396;
  } else {
    let x_400 : f32 = x_29.unity_MatrixV[1i].z;
    x_392 = x_400;
  }
  let x_401 : f32 = x_392;
  u_xlat4.y = x_401;
  let x_403 : bool = u_xlatb25;
  if (x_403) {
    let x_408 : f32 = u_xlat26.z;
    x_404 = x_408;
  } else {
    let x_412 : f32 = x_29.unity_MatrixV[2i].z;
    x_404 = x_412;
  }
  let x_413 : f32 = x_404;
  u_xlat4.z = x_413;
  u_xlat3.w = 1.0f;
  let x_418 : vec4<f32> = x_271.unity_SHAr;
  let x_419 : vec4<f32> = u_xlat3;
  u_xlat5.x = dot(x_418, x_419);
  let x_424 : vec4<f32> = x_271.unity_SHAg;
  let x_425 : vec4<f32> = u_xlat3;
  u_xlat5.y = dot(x_424, x_425);
  let x_430 : vec4<f32> = x_271.unity_SHAb;
  let x_431 : vec4<f32> = u_xlat3;
  u_xlat5.z = dot(x_430, x_431);
  let x_435 : vec4<f32> = u_xlat3;
  let x_437 : vec4<f32> = u_xlat3;
  u_xlat6 = (vec4<f32>(x_435.y, x_435.z, x_435.z, x_435.x) * vec4<f32>(x_437.x, x_437.y, x_437.z, x_437.z));
  let x_443 : vec4<f32> = x_271.unity_SHBr;
  let x_444 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_443, x_444);
  let x_449 : vec4<f32> = x_271.unity_SHBg;
  let x_450 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_449, x_450);
  let x_455 : vec4<f32> = x_271.unity_SHBb;
  let x_456 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_455, x_456);
  let x_460 : f32 = u_xlat3.y;
  let x_462 : f32 = u_xlat3.y;
  u_xlat25.x = (x_460 * x_462);
  let x_466 : f32 = u_xlat3.x;
  let x_468 : f32 = u_xlat3.x;
  let x_471 : f32 = u_xlat25.x;
  u_xlat25.x = ((x_466 * x_468) + -(x_471));
  let x_477 : vec4<f32> = x_271.unity_SHC;
  let x_479 : vec2<f32> = u_xlat25;
  let x_482 : vec4<f32> = u_xlat7;
  u_xlat26 = ((vec3<f32>(x_477.x, x_477.y, x_477.z) * vec3<f32>(x_479.x, x_479.x, x_479.x)) + vec3<f32>(x_482.x, x_482.y, x_482.z));
  let x_485 : vec3<f32> = u_xlat26;
  let x_486 : vec3<f32> = u_xlat5;
  u_xlat26 = (x_485 + x_486);
  let x_488 : vec3<f32> = u_xlat26;
  u_xlat26 = max(x_488, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_492 : f32 = u_xlat0.x;
  u_xlat25.x = ((-(x_492) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_499 : f32 = u_xlat25.x;
  let x_502 : f32 = u_xlat1.x;
  u_xlat50 = (-(x_499) + x_502);
  let x_504 : vec2<f32> = u_xlat25;
  let x_506 : vec3<f32> = u_xlat2;
  u_xlat5 = (vec3<f32>(x_504.x, x_504.x, x_504.x) * x_506);
  let x_508 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_508 + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_512 : vec4<f32> = u_xlat0;
  let x_514 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_512.x, x_512.x, x_512.x) * x_514) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_520 : f32 = u_xlat1.x;
  u_xlat0.x = (-(x_520) + 1.0f);
  let x_525 : f32 = u_xlat0.x;
  let x_527 : f32 = u_xlat0.x;
  u_xlat25.x = (x_525 * x_527);
  let x_531 : f32 = u_xlat25.x;
  let x_533 : f32 = u_xlat25.x;
  u_xlat1.x = (x_531 * x_533);
  let x_536 : f32 = u_xlat50;
  u_xlat50 = (x_536 + 1.0f);
  let x_538 : f32 = u_xlat50;
  u_xlat50 = min(x_538, 1.0f);
  let x_542 : f32 = u_xlat25.x;
  u_xlat77 = ((x_542 * 4.0f) + 2.0f);
  let x_548 : f32 = u_xlat0.w;
  u_xlat75 = min(x_548, 1.0f);
  let x_561 : f32 = x_558.x_MainLightShadowParams.y;
  u_xlatb78 = (0.0f < x_561);
  let x_563 : bool = u_xlatb78;
  if (x_563) {
    let x_567 : f32 = x_558.x_MainLightShadowParams.y;
    u_xlatb78 = (x_567 == 1.0f);
    let x_569 : bool = u_xlatb78;
    if (x_569) {
      let x_573 : vec4<f32> = vs_INTERP3;
      let x_576 : vec4<f32> = x_558.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_573.x, x_573.y, x_573.x, x_573.y) + x_576);
      let x_580 : vec4<f32> = u_xlat6;
      let x_581 : vec2<f32> = vec2<f32>(x_580.x, x_580.y);
      let x_583 : f32 = vs_INTERP3.z;
      txVec0 = vec3<f32>(x_581.x, x_581.y, x_583);
      let x_595 : vec3<f32> = txVec0;
      let x_597 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_595.xy, x_595.z);
      u_xlat7.x = x_597;
      let x_600 : vec4<f32> = u_xlat6;
      let x_601 : vec2<f32> = vec2<f32>(x_600.z, x_600.w);
      let x_603 : f32 = vs_INTERP3.z;
      txVec1 = vec3<f32>(x_601.x, x_601.y, x_603);
      let x_610 : vec3<f32> = txVec1;
      let x_612 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_610.xy, x_610.z);
      u_xlat7.y = x_612;
      let x_614 : vec4<f32> = vs_INTERP3;
      let x_618 : vec4<f32> = x_558.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_614.x, x_614.y, x_614.x, x_614.y) + x_618);
      let x_621 : vec4<f32> = u_xlat6;
      let x_622 : vec2<f32> = vec2<f32>(x_621.x, x_621.y);
      let x_624 : f32 = vs_INTERP3.z;
      txVec2 = vec3<f32>(x_622.x, x_622.y, x_624);
      let x_631 : vec3<f32> = txVec2;
      let x_633 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_631.xy, x_631.z);
      u_xlat7.z = x_633;
      let x_636 : vec4<f32> = u_xlat6;
      let x_637 : vec2<f32> = vec2<f32>(x_636.z, x_636.w);
      let x_639 : f32 = vs_INTERP3.z;
      txVec3 = vec3<f32>(x_637.x, x_637.y, x_639);
      let x_646 : vec3<f32> = txVec3;
      let x_648 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_646.xy, x_646.z);
      u_xlat7.w = x_648;
      let x_651 : vec4<f32> = u_xlat7;
      u_xlat78 = dot(x_651, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_658 : f32 = x_558.x_MainLightShadowParams.y;
      u_xlatb79 = (x_658 == 2.0f);
      let x_660 : bool = u_xlatb79;
      if (x_660) {
        let x_663 : vec4<f32> = vs_INTERP3;
        let x_667 : vec4<f32> = x_558.x_MainLightShadowmapSize;
        let x_671 : vec2<f32> = ((vec2<f32>(x_663.x, x_663.y) * vec2<f32>(x_667.z, x_667.w)) + vec2<f32>(0.5f, 0.5f));
        let x_672 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_671.x, x_671.y, x_672.z, x_672.w);
        let x_674 : vec4<f32> = u_xlat6;
        let x_676 : vec2<f32> = floor(vec2<f32>(x_674.x, x_674.y));
        let x_677 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_676.x, x_676.y, x_677.z, x_677.w);
        let x_680 : vec4<f32> = vs_INTERP3;
        let x_683 : vec4<f32> = x_558.x_MainLightShadowmapSize;
        let x_686 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_680.x, x_680.y) * vec2<f32>(x_683.z, x_683.w)) + -(vec2<f32>(x_686.x, x_686.y)));
        let x_690 : vec2<f32> = u_xlat56;
        u_xlat7 = (vec4<f32>(x_690.x, x_690.x, x_690.y, x_690.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_695 : vec4<f32> = u_xlat7;
        let x_697 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_695.x, x_695.x, x_695.z, x_695.z) * vec4<f32>(x_697.x, x_697.x, x_697.z, x_697.z));
        let x_700 : vec4<f32> = u_xlat8;
        let x_704 : vec2<f32> = (vec2<f32>(x_700.y, x_700.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_705 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_704.x, x_705.y, x_704.y, x_705.w);
        let x_707 : vec4<f32> = u_xlat8;
        let x_710 : vec2<f32> = u_xlat56;
        let x_712 : vec2<f32> = ((vec2<f32>(x_707.x, x_707.z) * vec2<f32>(0.5f, 0.5f)) + -(x_710));
        let x_713 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_712.x, x_712.y, x_713.z, x_713.w);
        let x_716 : vec2<f32> = u_xlat56;
        u_xlat58 = (-(x_716) + vec2<f32>(1.0f, 1.0f));
        let x_721 : vec2<f32> = u_xlat56;
        let x_723 : vec2<f32> = min(x_721, vec2<f32>(0.0f, 0.0f));
        let x_724 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_723.x, x_723.y, x_724.z, x_724.w);
        let x_726 : vec4<f32> = u_xlat9;
        let x_729 : vec4<f32> = u_xlat9;
        let x_732 : vec2<f32> = u_xlat58;
        let x_733 : vec2<f32> = ((-(vec2<f32>(x_726.x, x_726.y)) * vec2<f32>(x_729.x, x_729.y)) + x_732);
        let x_734 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_733.x, x_733.y, x_734.z, x_734.w);
        let x_736 : vec2<f32> = u_xlat56;
        u_xlat56 = max(x_736, vec2<f32>(0.0f, 0.0f));
        let x_738 : vec2<f32> = u_xlat56;
        let x_740 : vec2<f32> = u_xlat56;
        let x_742 : vec4<f32> = u_xlat7;
        u_xlat56 = ((-(x_738) * x_740) + vec2<f32>(x_742.y, x_742.w));
        let x_745 : vec4<f32> = u_xlat9;
        let x_747 : vec2<f32> = (vec2<f32>(x_745.x, x_745.y) + vec2<f32>(1.0f, 1.0f));
        let x_748 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_747.x, x_747.y, x_748.z, x_748.w);
        let x_750 : vec2<f32> = u_xlat56;
        u_xlat56 = (x_750 + vec2<f32>(1.0f, 1.0f));
        let x_753 : vec4<f32> = u_xlat8;
        let x_757 : vec2<f32> = (vec2<f32>(x_753.x, x_753.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_758 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_757.x, x_757.y, x_758.z, x_758.w);
        let x_760 : vec2<f32> = u_xlat58;
        let x_761 : vec2<f32> = (x_760 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_762 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_761.x, x_761.y, x_762.z, x_762.w);
        let x_764 : vec4<f32> = u_xlat9;
        let x_766 : vec2<f32> = (vec2<f32>(x_764.x, x_764.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_767 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_766.x, x_766.y, x_767.z, x_767.w);
        let x_770 : vec2<f32> = u_xlat56;
        let x_771 : vec2<f32> = (x_770 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_772 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_771.x, x_771.y, x_772.z, x_772.w);
        let x_774 : vec4<f32> = u_xlat7;
        u_xlat56 = (vec2<f32>(x_774.y, x_774.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_778 : f32 = u_xlat9.x;
        u_xlat10.z = x_778;
        let x_781 : f32 = u_xlat56.x;
        u_xlat10.w = x_781;
        let x_784 : f32 = u_xlat11.x;
        u_xlat8.z = x_784;
        let x_787 : f32 = u_xlat7.x;
        u_xlat8.w = x_787;
        let x_790 : vec4<f32> = u_xlat8;
        let x_792 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_790.z, x_790.w, x_790.x, x_790.z) + vec4<f32>(x_792.z, x_792.w, x_792.x, x_792.z));
        let x_796 : f32 = u_xlat10.y;
        u_xlat9.z = x_796;
        let x_799 : f32 = u_xlat56.y;
        u_xlat9.w = x_799;
        let x_802 : f32 = u_xlat8.y;
        u_xlat11.z = x_802;
        let x_805 : f32 = u_xlat7.z;
        u_xlat11.w = x_805;
        let x_807 : vec4<f32> = u_xlat9;
        let x_809 : vec4<f32> = u_xlat11;
        let x_811 : vec3<f32> = (vec3<f32>(x_807.z, x_807.y, x_807.w) + vec3<f32>(x_809.z, x_809.y, x_809.w));
        let x_812 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_811.x, x_811.y, x_811.z, x_812.w);
        let x_814 : vec4<f32> = u_xlat8;
        let x_816 : vec4<f32> = u_xlat12;
        let x_818 : vec3<f32> = (vec3<f32>(x_814.x, x_814.z, x_814.w) / vec3<f32>(x_816.z, x_816.w, x_816.y));
        let x_819 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_818.x, x_818.y, x_818.z, x_819.w);
        let x_821 : vec4<f32> = u_xlat8;
        let x_827 : vec3<f32> = (vec3<f32>(x_821.x, x_821.y, x_821.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_828 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_827.x, x_827.y, x_827.z, x_828.w);
        let x_830 : vec4<f32> = u_xlat11;
        let x_832 : vec4<f32> = u_xlat7;
        let x_834 : vec3<f32> = (vec3<f32>(x_830.z, x_830.y, x_830.w) / vec3<f32>(x_832.x, x_832.y, x_832.z));
        let x_835 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_834.x, x_834.y, x_834.z, x_835.w);
        let x_837 : vec4<f32> = u_xlat9;
        let x_839 : vec3<f32> = (vec3<f32>(x_837.x, x_837.y, x_837.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_840 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_839.x, x_839.y, x_839.z, x_840.w);
        let x_842 : vec4<f32> = u_xlat8;
        let x_845 : vec4<f32> = x_558.x_MainLightShadowmapSize;
        let x_847 : vec3<f32> = (vec3<f32>(x_842.y, x_842.x, x_842.z) * vec3<f32>(x_845.x, x_845.x, x_845.x));
        let x_848 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_847.x, x_847.y, x_847.z, x_848.w);
        let x_850 : vec4<f32> = u_xlat9;
        let x_853 : vec4<f32> = x_558.x_MainLightShadowmapSize;
        let x_855 : vec3<f32> = (vec3<f32>(x_850.x, x_850.y, x_850.z) * vec3<f32>(x_853.y, x_853.y, x_853.y));
        let x_856 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_855.x, x_855.y, x_855.z, x_856.w);
        let x_859 : f32 = u_xlat9.x;
        u_xlat8.w = x_859;
        let x_861 : vec4<f32> = u_xlat6;
        let x_864 : vec4<f32> = x_558.x_MainLightShadowmapSize;
        let x_867 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_861.x, x_861.y, x_861.x, x_861.y) * vec4<f32>(x_864.x, x_864.y, x_864.x, x_864.y)) + vec4<f32>(x_867.y, x_867.w, x_867.x, x_867.w));
        let x_870 : vec4<f32> = u_xlat6;
        let x_873 : vec4<f32> = x_558.x_MainLightShadowmapSize;
        let x_876 : vec4<f32> = u_xlat8;
        u_xlat56 = ((vec2<f32>(x_870.x, x_870.y) * vec2<f32>(x_873.x, x_873.y)) + vec2<f32>(x_876.z, x_876.w));
        let x_880 : f32 = u_xlat8.y;
        u_xlat9.w = x_880;
        let x_882 : vec4<f32> = u_xlat9;
        let x_883 : vec2<f32> = vec2<f32>(x_882.y, x_882.z);
        let x_884 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_884.x, x_883.x, x_884.z, x_883.y);
        let x_886 : vec4<f32> = u_xlat6;
        let x_889 : vec4<f32> = x_558.x_MainLightShadowmapSize;
        let x_892 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_886.x, x_886.y, x_886.x, x_886.y) * vec4<f32>(x_889.x, x_889.y, x_889.x, x_889.y)) + vec4<f32>(x_892.x, x_892.y, x_892.z, x_892.y));
        let x_895 : vec4<f32> = u_xlat6;
        let x_898 : vec4<f32> = x_558.x_MainLightShadowmapSize;
        let x_901 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_895.x, x_895.y, x_895.x, x_895.y) * vec4<f32>(x_898.x, x_898.y, x_898.x, x_898.y)) + vec4<f32>(x_901.w, x_901.y, x_901.w, x_901.z));
        let x_904 : vec4<f32> = u_xlat6;
        let x_907 : vec4<f32> = x_558.x_MainLightShadowmapSize;
        let x_910 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_904.x, x_904.y, x_904.x, x_904.y) * vec4<f32>(x_907.x, x_907.y, x_907.x, x_907.y)) + vec4<f32>(x_910.x, x_910.w, x_910.z, x_910.w));
        let x_914 : vec4<f32> = u_xlat7;
        let x_916 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_914.x, x_914.x, x_914.x, x_914.y) * vec4<f32>(x_916.z, x_916.w, x_916.y, x_916.z));
        let x_920 : vec4<f32> = u_xlat7;
        let x_922 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_920.y, x_920.y, x_920.z, x_920.z) * x_922);
        let x_926 : f32 = u_xlat7.z;
        let x_928 : f32 = u_xlat12.y;
        u_xlat79 = (x_926 * x_928);
        let x_931 : vec4<f32> = u_xlat10;
        let x_932 : vec2<f32> = vec2<f32>(x_931.x, x_931.y);
        let x_934 : f32 = vs_INTERP3.z;
        txVec4 = vec3<f32>(x_932.x, x_932.y, x_934);
        let x_942 : vec3<f32> = txVec4;
        let x_944 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_942.xy, x_942.z);
        u_xlat80 = x_944;
        let x_946 : vec4<f32> = u_xlat10;
        let x_947 : vec2<f32> = vec2<f32>(x_946.z, x_946.w);
        let x_949 : f32 = vs_INTERP3.z;
        txVec5 = vec3<f32>(x_947.x, x_947.y, x_949);
        let x_956 : vec3<f32> = txVec5;
        let x_958 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_956.xy, x_956.z);
        u_xlat6.x = x_958;
        let x_961 : f32 = u_xlat6.x;
        let x_963 : f32 = u_xlat13.y;
        u_xlat6.x = (x_961 * x_963);
        let x_967 : f32 = u_xlat13.x;
        let x_968 : f32 = u_xlat80;
        let x_971 : f32 = u_xlat6.x;
        u_xlat80 = ((x_967 * x_968) + x_971);
        let x_974 : vec2<f32> = u_xlat56;
        let x_976 : f32 = vs_INTERP3.z;
        txVec6 = vec3<f32>(x_974.x, x_974.y, x_976);
        let x_983 : vec3<f32> = txVec6;
        let x_985 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_983.xy, x_983.z);
        u_xlat6.x = x_985;
        let x_988 : f32 = u_xlat13.z;
        let x_990 : f32 = u_xlat6.x;
        let x_992 : f32 = u_xlat80;
        u_xlat80 = ((x_988 * x_990) + x_992);
        let x_995 : vec4<f32> = u_xlat9;
        let x_996 : vec2<f32> = vec2<f32>(x_995.x, x_995.y);
        let x_998 : f32 = vs_INTERP3.z;
        txVec7 = vec3<f32>(x_996.x, x_996.y, x_998);
        let x_1005 : vec3<f32> = txVec7;
        let x_1007 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1005.xy, x_1005.z);
        u_xlat6.x = x_1007;
        let x_1010 : f32 = u_xlat13.w;
        let x_1012 : f32 = u_xlat6.x;
        let x_1014 : f32 = u_xlat80;
        u_xlat80 = ((x_1010 * x_1012) + x_1014);
        let x_1017 : vec4<f32> = u_xlat11;
        let x_1018 : vec2<f32> = vec2<f32>(x_1017.x, x_1017.y);
        let x_1020 : f32 = vs_INTERP3.z;
        txVec8 = vec3<f32>(x_1018.x, x_1018.y, x_1020);
        let x_1027 : vec3<f32> = txVec8;
        let x_1029 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1027.xy, x_1027.z);
        u_xlat6.x = x_1029;
        let x_1032 : f32 = u_xlat14.x;
        let x_1034 : f32 = u_xlat6.x;
        let x_1036 : f32 = u_xlat80;
        u_xlat80 = ((x_1032 * x_1034) + x_1036);
        let x_1039 : vec4<f32> = u_xlat11;
        let x_1040 : vec2<f32> = vec2<f32>(x_1039.z, x_1039.w);
        let x_1042 : f32 = vs_INTERP3.z;
        txVec9 = vec3<f32>(x_1040.x, x_1040.y, x_1042);
        let x_1049 : vec3<f32> = txVec9;
        let x_1051 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1049.xy, x_1049.z);
        u_xlat6.x = x_1051;
        let x_1054 : f32 = u_xlat14.y;
        let x_1056 : f32 = u_xlat6.x;
        let x_1058 : f32 = u_xlat80;
        u_xlat80 = ((x_1054 * x_1056) + x_1058);
        let x_1061 : vec4<f32> = u_xlat9;
        let x_1062 : vec2<f32> = vec2<f32>(x_1061.z, x_1061.w);
        let x_1064 : f32 = vs_INTERP3.z;
        txVec10 = vec3<f32>(x_1062.x, x_1062.y, x_1064);
        let x_1071 : vec3<f32> = txVec10;
        let x_1073 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1071.xy, x_1071.z);
        u_xlat6.x = x_1073;
        let x_1076 : f32 = u_xlat14.z;
        let x_1078 : f32 = u_xlat6.x;
        let x_1080 : f32 = u_xlat80;
        u_xlat80 = ((x_1076 * x_1078) + x_1080);
        let x_1083 : vec4<f32> = u_xlat8;
        let x_1084 : vec2<f32> = vec2<f32>(x_1083.x, x_1083.y);
        let x_1086 : f32 = vs_INTERP3.z;
        txVec11 = vec3<f32>(x_1084.x, x_1084.y, x_1086);
        let x_1093 : vec3<f32> = txVec11;
        let x_1095 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1093.xy, x_1093.z);
        u_xlat6.x = x_1095;
        let x_1098 : f32 = u_xlat14.w;
        let x_1100 : f32 = u_xlat6.x;
        let x_1102 : f32 = u_xlat80;
        u_xlat80 = ((x_1098 * x_1100) + x_1102);
        let x_1105 : vec4<f32> = u_xlat8;
        let x_1106 : vec2<f32> = vec2<f32>(x_1105.z, x_1105.w);
        let x_1108 : f32 = vs_INTERP3.z;
        txVec12 = vec3<f32>(x_1106.x, x_1106.y, x_1108);
        let x_1115 : vec3<f32> = txVec12;
        let x_1117 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1115.xy, x_1115.z);
        u_xlat6.x = x_1117;
        let x_1119 : f32 = u_xlat79;
        let x_1121 : f32 = u_xlat6.x;
        let x_1123 : f32 = u_xlat80;
        u_xlat78 = ((x_1119 * x_1121) + x_1123);
      } else {
        let x_1126 : vec4<f32> = vs_INTERP3;
        let x_1129 : vec4<f32> = x_558.x_MainLightShadowmapSize;
        let x_1132 : vec2<f32> = ((vec2<f32>(x_1126.x, x_1126.y) * vec2<f32>(x_1129.z, x_1129.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1133 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1132.x, x_1132.y, x_1133.z, x_1133.w);
        let x_1135 : vec4<f32> = u_xlat6;
        let x_1137 : vec2<f32> = floor(vec2<f32>(x_1135.x, x_1135.y));
        let x_1138 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1137.x, x_1137.y, x_1138.z, x_1138.w);
        let x_1140 : vec4<f32> = vs_INTERP3;
        let x_1143 : vec4<f32> = x_558.x_MainLightShadowmapSize;
        let x_1146 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_1140.x, x_1140.y) * vec2<f32>(x_1143.z, x_1143.w)) + -(vec2<f32>(x_1146.x, x_1146.y)));
        let x_1150 : vec2<f32> = u_xlat56;
        u_xlat7 = (vec4<f32>(x_1150.x, x_1150.x, x_1150.y, x_1150.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1153 : vec4<f32> = u_xlat7;
        let x_1155 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1153.x, x_1153.x, x_1153.z, x_1153.z) * vec4<f32>(x_1155.x, x_1155.x, x_1155.z, x_1155.z));
        let x_1158 : vec4<f32> = u_xlat8;
        let x_1162 : vec2<f32> = (vec2<f32>(x_1158.y, x_1158.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1163 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1163.x, x_1162.x, x_1163.z, x_1162.y);
        let x_1165 : vec4<f32> = u_xlat8;
        let x_1168 : vec2<f32> = u_xlat56;
        let x_1170 : vec2<f32> = ((vec2<f32>(x_1165.x, x_1165.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1168));
        let x_1171 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1170.x, x_1171.y, x_1170.y, x_1171.w);
        let x_1173 : vec2<f32> = u_xlat56;
        let x_1175 : vec2<f32> = (-(x_1173) + vec2<f32>(1.0f, 1.0f));
        let x_1176 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1175.x, x_1175.y, x_1176.z, x_1176.w);
        let x_1178 : vec2<f32> = u_xlat56;
        u_xlat58 = min(x_1178, vec2<f32>(0.0f, 0.0f));
        let x_1180 : vec2<f32> = u_xlat58;
        let x_1182 : vec2<f32> = u_xlat58;
        let x_1184 : vec4<f32> = u_xlat8;
        let x_1186 : vec2<f32> = ((-(x_1180) * x_1182) + vec2<f32>(x_1184.x, x_1184.y));
        let x_1187 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1186.x, x_1186.y, x_1187.z, x_1187.w);
        let x_1189 : vec2<f32> = u_xlat56;
        u_xlat58 = max(x_1189, vec2<f32>(0.0f, 0.0f));
        let x_1192 : vec2<f32> = u_xlat58;
        let x_1194 : vec2<f32> = u_xlat58;
        let x_1196 : vec4<f32> = u_xlat7;
        let x_1198 : vec2<f32> = ((-(x_1192) * x_1194) + vec2<f32>(x_1196.y, x_1196.w));
        let x_1199 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_1198.x, x_1199.y, x_1198.y);
        let x_1201 : vec4<f32> = u_xlat8;
        let x_1203 : vec2<f32> = (vec2<f32>(x_1201.x, x_1201.y) + vec2<f32>(2.0f, 2.0f));
        let x_1204 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1203.x, x_1203.y, x_1204.z, x_1204.w);
        let x_1206 : vec3<f32> = u_xlat32;
        let x_1208 : vec2<f32> = (vec2<f32>(x_1206.x, x_1206.z) + vec2<f32>(2.0f, 2.0f));
        let x_1209 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1209.x, x_1208.x, x_1209.z, x_1208.y);
        let x_1212 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1212 * 0.08163200318813323975f);
        let x_1216 : vec4<f32> = u_xlat7;
        let x_1219 : vec3<f32> = (vec3<f32>(x_1216.z, x_1216.x, x_1216.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1220 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1219.x, x_1219.y, x_1219.z, x_1220.w);
        let x_1222 : vec4<f32> = u_xlat8;
        let x_1225 : vec2<f32> = (vec2<f32>(x_1222.x, x_1222.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1226 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1225.x, x_1225.y, x_1226.z, x_1226.w);
        let x_1229 : f32 = u_xlat11.y;
        u_xlat10.x = x_1229;
        let x_1231 : vec2<f32> = u_xlat56;
        let x_1238 : vec2<f32> = ((vec2<f32>(x_1231.x, x_1231.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1239 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1239.x, x_1238.x, x_1239.z, x_1238.y);
        let x_1241 : vec2<f32> = u_xlat56;
        let x_1245 : vec2<f32> = ((vec2<f32>(x_1241.x, x_1241.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1246 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1245.x, x_1246.y, x_1245.y, x_1246.w);
        let x_1249 : f32 = u_xlat7.x;
        u_xlat8.y = x_1249;
        let x_1252 : f32 = u_xlat9.y;
        u_xlat8.w = x_1252;
        let x_1254 : vec4<f32> = u_xlat8;
        let x_1255 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1254 + x_1255);
        let x_1257 : vec2<f32> = u_xlat56;
        let x_1260 : vec2<f32> = ((vec2<f32>(x_1257.y, x_1257.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1261 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1261.x, x_1260.x, x_1261.z, x_1260.y);
        let x_1263 : vec2<f32> = u_xlat56;
        let x_1266 : vec2<f32> = ((vec2<f32>(x_1263.y, x_1263.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1267 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1266.x, x_1267.y, x_1266.y, x_1267.w);
        let x_1270 : f32 = u_xlat7.y;
        u_xlat9.y = x_1270;
        let x_1272 : vec4<f32> = u_xlat9;
        let x_1273 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1272 + x_1273);
        let x_1275 : vec4<f32> = u_xlat8;
        let x_1276 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1275 / x_1276);
        let x_1278 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1278 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1284 : vec4<f32> = u_xlat9;
        let x_1285 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1284 / x_1285);
        let x_1287 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1287 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1289 : vec4<f32> = u_xlat8;
        let x_1292 : vec4<f32> = x_558.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1289.w, x_1289.x, x_1289.y, x_1289.z) * vec4<f32>(x_1292.x, x_1292.x, x_1292.x, x_1292.x));
        let x_1295 : vec4<f32> = u_xlat9;
        let x_1298 : vec4<f32> = x_558.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1295.x, x_1295.w, x_1295.y, x_1295.z) * vec4<f32>(x_1298.y, x_1298.y, x_1298.y, x_1298.y));
        let x_1301 : vec4<f32> = u_xlat8;
        let x_1302 : vec3<f32> = vec3<f32>(x_1301.y, x_1301.z, x_1301.w);
        let x_1303 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1302.x, x_1303.y, x_1302.y, x_1302.z);
        let x_1306 : f32 = u_xlat9.x;
        u_xlat11.y = x_1306;
        let x_1308 : vec4<f32> = u_xlat6;
        let x_1311 : vec4<f32> = x_558.x_MainLightShadowmapSize;
        let x_1314 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1308.x, x_1308.y, x_1308.x, x_1308.y) * vec4<f32>(x_1311.x, x_1311.y, x_1311.x, x_1311.y)) + vec4<f32>(x_1314.x, x_1314.y, x_1314.z, x_1314.y));
        let x_1317 : vec4<f32> = u_xlat6;
        let x_1320 : vec4<f32> = x_558.x_MainLightShadowmapSize;
        let x_1323 : vec4<f32> = u_xlat11;
        u_xlat56 = ((vec2<f32>(x_1317.x, x_1317.y) * vec2<f32>(x_1320.x, x_1320.y)) + vec2<f32>(x_1323.w, x_1323.y));
        let x_1327 : f32 = u_xlat11.y;
        u_xlat8.y = x_1327;
        let x_1330 : f32 = u_xlat9.z;
        u_xlat11.y = x_1330;
        let x_1332 : vec4<f32> = u_xlat6;
        let x_1335 : vec4<f32> = x_558.x_MainLightShadowmapSize;
        let x_1338 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1332.x, x_1332.y, x_1332.x, x_1332.y) * vec4<f32>(x_1335.x, x_1335.y, x_1335.x, x_1335.y)) + vec4<f32>(x_1338.x, x_1338.y, x_1338.z, x_1338.y));
        let x_1341 : vec4<f32> = u_xlat6;
        let x_1344 : vec4<f32> = x_558.x_MainLightShadowmapSize;
        let x_1347 : vec4<f32> = u_xlat11;
        let x_1349 : vec2<f32> = ((vec2<f32>(x_1341.x, x_1341.y) * vec2<f32>(x_1344.x, x_1344.y)) + vec2<f32>(x_1347.w, x_1347.y));
        let x_1350 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1349.x, x_1349.y, x_1350.z, x_1350.w);
        let x_1353 : f32 = u_xlat11.y;
        u_xlat8.z = x_1353;
        let x_1356 : vec4<f32> = u_xlat6;
        let x_1359 : vec4<f32> = x_558.x_MainLightShadowmapSize;
        let x_1362 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1356.x, x_1356.y, x_1356.x, x_1356.y) * vec4<f32>(x_1359.x, x_1359.y, x_1359.x, x_1359.y)) + vec4<f32>(x_1362.x, x_1362.y, x_1362.x, x_1362.z));
        let x_1366 : f32 = u_xlat9.w;
        u_xlat11.y = x_1366;
        let x_1369 : vec4<f32> = u_xlat6;
        let x_1372 : vec4<f32> = x_558.x_MainLightShadowmapSize;
        let x_1375 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1369.x, x_1369.y, x_1369.x, x_1369.y) * vec4<f32>(x_1372.x, x_1372.y, x_1372.x, x_1372.y)) + vec4<f32>(x_1375.x, x_1375.y, x_1375.z, x_1375.y));
        let x_1379 : vec4<f32> = u_xlat6;
        let x_1382 : vec4<f32> = x_558.x_MainLightShadowmapSize;
        let x_1385 : vec4<f32> = u_xlat11;
        u_xlat33 = ((vec2<f32>(x_1379.x, x_1379.y) * vec2<f32>(x_1382.x, x_1382.y)) + vec2<f32>(x_1385.w, x_1385.y));
        let x_1389 : f32 = u_xlat11.y;
        u_xlat8.w = x_1389;
        let x_1392 : vec4<f32> = u_xlat6;
        let x_1395 : vec4<f32> = x_558.x_MainLightShadowmapSize;
        let x_1398 : vec4<f32> = u_xlat8;
        u_xlat64 = ((vec2<f32>(x_1392.x, x_1392.y) * vec2<f32>(x_1395.x, x_1395.y)) + vec2<f32>(x_1398.x, x_1398.w));
        let x_1401 : vec4<f32> = u_xlat11;
        let x_1402 : vec3<f32> = vec3<f32>(x_1401.x, x_1401.z, x_1401.w);
        let x_1403 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1402.x, x_1403.y, x_1402.y, x_1402.z);
        let x_1405 : vec4<f32> = u_xlat6;
        let x_1408 : vec4<f32> = x_558.x_MainLightShadowmapSize;
        let x_1411 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1405.x, x_1405.y, x_1405.x, x_1405.y) * vec4<f32>(x_1408.x, x_1408.y, x_1408.x, x_1408.y)) + vec4<f32>(x_1411.x, x_1411.y, x_1411.z, x_1411.y));
        let x_1415 : vec4<f32> = u_xlat6;
        let x_1418 : vec4<f32> = x_558.x_MainLightShadowmapSize;
        let x_1421 : vec4<f32> = u_xlat9;
        u_xlat59 = ((vec2<f32>(x_1415.x, x_1415.y) * vec2<f32>(x_1418.x, x_1418.y)) + vec2<f32>(x_1421.w, x_1421.y));
        let x_1425 : f32 = u_xlat8.x;
        u_xlat9.x = x_1425;
        let x_1427 : vec4<f32> = u_xlat6;
        let x_1430 : vec4<f32> = x_558.x_MainLightShadowmapSize;
        let x_1433 : vec4<f32> = u_xlat9;
        let x_1435 : vec2<f32> = ((vec2<f32>(x_1427.x, x_1427.y) * vec2<f32>(x_1430.x, x_1430.y)) + vec2<f32>(x_1433.x, x_1433.y));
        let x_1436 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1435.x, x_1435.y, x_1436.z, x_1436.w);
        let x_1439 : vec4<f32> = u_xlat7;
        let x_1441 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1439.x, x_1439.x, x_1439.x, x_1439.x) * x_1441);
        let x_1444 : vec4<f32> = u_xlat7;
        let x_1446 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1444.y, x_1444.y, x_1444.y, x_1444.y) * x_1446);
        let x_1449 : vec4<f32> = u_xlat7;
        let x_1451 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1449.z, x_1449.z, x_1449.z, x_1449.z) * x_1451);
        let x_1453 : vec4<f32> = u_xlat7;
        let x_1455 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1453.w, x_1453.w, x_1453.w, x_1453.w) * x_1455);
        let x_1458 : vec4<f32> = u_xlat12;
        let x_1459 : vec2<f32> = vec2<f32>(x_1458.x, x_1458.y);
        let x_1461 : f32 = vs_INTERP3.z;
        txVec13 = vec3<f32>(x_1459.x, x_1459.y, x_1461);
        let x_1468 : vec3<f32> = txVec13;
        let x_1470 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1468.xy, x_1468.z);
        u_xlat79 = x_1470;
        let x_1472 : vec4<f32> = u_xlat12;
        let x_1473 : vec2<f32> = vec2<f32>(x_1472.z, x_1472.w);
        let x_1475 : f32 = vs_INTERP3.z;
        txVec14 = vec3<f32>(x_1473.x, x_1473.y, x_1475);
        let x_1482 : vec3<f32> = txVec14;
        let x_1484 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1482.xy, x_1482.z);
        u_xlat80 = x_1484;
        let x_1485 : f32 = u_xlat80;
        let x_1487 : f32 = u_xlat17.y;
        u_xlat80 = (x_1485 * x_1487);
        let x_1490 : f32 = u_xlat17.x;
        let x_1491 : f32 = u_xlat79;
        let x_1493 : f32 = u_xlat80;
        u_xlat79 = ((x_1490 * x_1491) + x_1493);
        let x_1496 : vec2<f32> = u_xlat56;
        let x_1498 : f32 = vs_INTERP3.z;
        txVec15 = vec3<f32>(x_1496.x, x_1496.y, x_1498);
        let x_1505 : vec3<f32> = txVec15;
        let x_1507 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1505.xy, x_1505.z);
        u_xlat80 = x_1507;
        let x_1509 : f32 = u_xlat17.z;
        let x_1510 : f32 = u_xlat80;
        let x_1512 : f32 = u_xlat79;
        u_xlat79 = ((x_1509 * x_1510) + x_1512);
        let x_1515 : vec4<f32> = u_xlat15;
        let x_1516 : vec2<f32> = vec2<f32>(x_1515.x, x_1515.y);
        let x_1518 : f32 = vs_INTERP3.z;
        txVec16 = vec3<f32>(x_1516.x, x_1516.y, x_1518);
        let x_1525 : vec3<f32> = txVec16;
        let x_1527 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1525.xy, x_1525.z);
        u_xlat80 = x_1527;
        let x_1529 : f32 = u_xlat17.w;
        let x_1530 : f32 = u_xlat80;
        let x_1532 : f32 = u_xlat79;
        u_xlat79 = ((x_1529 * x_1530) + x_1532);
        let x_1535 : vec4<f32> = u_xlat13;
        let x_1536 : vec2<f32> = vec2<f32>(x_1535.x, x_1535.y);
        let x_1538 : f32 = vs_INTERP3.z;
        txVec17 = vec3<f32>(x_1536.x, x_1536.y, x_1538);
        let x_1545 : vec3<f32> = txVec17;
        let x_1547 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1545.xy, x_1545.z);
        u_xlat80 = x_1547;
        let x_1549 : f32 = u_xlat18.x;
        let x_1550 : f32 = u_xlat80;
        let x_1552 : f32 = u_xlat79;
        u_xlat79 = ((x_1549 * x_1550) + x_1552);
        let x_1555 : vec4<f32> = u_xlat13;
        let x_1556 : vec2<f32> = vec2<f32>(x_1555.z, x_1555.w);
        let x_1558 : f32 = vs_INTERP3.z;
        txVec18 = vec3<f32>(x_1556.x, x_1556.y, x_1558);
        let x_1565 : vec3<f32> = txVec18;
        let x_1567 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1565.xy, x_1565.z);
        u_xlat80 = x_1567;
        let x_1569 : f32 = u_xlat18.y;
        let x_1570 : f32 = u_xlat80;
        let x_1572 : f32 = u_xlat79;
        u_xlat79 = ((x_1569 * x_1570) + x_1572);
        let x_1575 : vec4<f32> = u_xlat14;
        let x_1576 : vec2<f32> = vec2<f32>(x_1575.x, x_1575.y);
        let x_1578 : f32 = vs_INTERP3.z;
        txVec19 = vec3<f32>(x_1576.x, x_1576.y, x_1578);
        let x_1585 : vec3<f32> = txVec19;
        let x_1587 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1585.xy, x_1585.z);
        u_xlat80 = x_1587;
        let x_1589 : f32 = u_xlat18.z;
        let x_1590 : f32 = u_xlat80;
        let x_1592 : f32 = u_xlat79;
        u_xlat79 = ((x_1589 * x_1590) + x_1592);
        let x_1595 : vec4<f32> = u_xlat15;
        let x_1596 : vec2<f32> = vec2<f32>(x_1595.z, x_1595.w);
        let x_1598 : f32 = vs_INTERP3.z;
        txVec20 = vec3<f32>(x_1596.x, x_1596.y, x_1598);
        let x_1605 : vec3<f32> = txVec20;
        let x_1607 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1605.xy, x_1605.z);
        u_xlat80 = x_1607;
        let x_1609 : f32 = u_xlat18.w;
        let x_1610 : f32 = u_xlat80;
        let x_1612 : f32 = u_xlat79;
        u_xlat79 = ((x_1609 * x_1610) + x_1612);
        let x_1615 : vec4<f32> = u_xlat16;
        let x_1616 : vec2<f32> = vec2<f32>(x_1615.x, x_1615.y);
        let x_1618 : f32 = vs_INTERP3.z;
        txVec21 = vec3<f32>(x_1616.x, x_1616.y, x_1618);
        let x_1625 : vec3<f32> = txVec21;
        let x_1627 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1625.xy, x_1625.z);
        u_xlat80 = x_1627;
        let x_1629 : f32 = u_xlat19.x;
        let x_1630 : f32 = u_xlat80;
        let x_1632 : f32 = u_xlat79;
        u_xlat79 = ((x_1629 * x_1630) + x_1632);
        let x_1635 : vec4<f32> = u_xlat16;
        let x_1636 : vec2<f32> = vec2<f32>(x_1635.z, x_1635.w);
        let x_1638 : f32 = vs_INTERP3.z;
        txVec22 = vec3<f32>(x_1636.x, x_1636.y, x_1638);
        let x_1645 : vec3<f32> = txVec22;
        let x_1647 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1645.xy, x_1645.z);
        u_xlat80 = x_1647;
        let x_1649 : f32 = u_xlat19.y;
        let x_1650 : f32 = u_xlat80;
        let x_1652 : f32 = u_xlat79;
        u_xlat79 = ((x_1649 * x_1650) + x_1652);
        let x_1655 : vec2<f32> = u_xlat33;
        let x_1657 : f32 = vs_INTERP3.z;
        txVec23 = vec3<f32>(x_1655.x, x_1655.y, x_1657);
        let x_1664 : vec3<f32> = txVec23;
        let x_1666 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1664.xy, x_1664.z);
        u_xlat80 = x_1666;
        let x_1668 : f32 = u_xlat19.z;
        let x_1669 : f32 = u_xlat80;
        let x_1671 : f32 = u_xlat79;
        u_xlat79 = ((x_1668 * x_1669) + x_1671);
        let x_1674 : vec2<f32> = u_xlat64;
        let x_1676 : f32 = vs_INTERP3.z;
        txVec24 = vec3<f32>(x_1674.x, x_1674.y, x_1676);
        let x_1683 : vec3<f32> = txVec24;
        let x_1685 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1683.xy, x_1683.z);
        u_xlat80 = x_1685;
        let x_1687 : f32 = u_xlat19.w;
        let x_1688 : f32 = u_xlat80;
        let x_1690 : f32 = u_xlat79;
        u_xlat79 = ((x_1687 * x_1688) + x_1690);
        let x_1693 : vec4<f32> = u_xlat11;
        let x_1694 : vec2<f32> = vec2<f32>(x_1693.x, x_1693.y);
        let x_1696 : f32 = vs_INTERP3.z;
        txVec25 = vec3<f32>(x_1694.x, x_1694.y, x_1696);
        let x_1703 : vec3<f32> = txVec25;
        let x_1705 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1703.xy, x_1703.z);
        u_xlat80 = x_1705;
        let x_1707 : f32 = u_xlat7.x;
        let x_1708 : f32 = u_xlat80;
        let x_1710 : f32 = u_xlat79;
        u_xlat79 = ((x_1707 * x_1708) + x_1710);
        let x_1713 : vec4<f32> = u_xlat11;
        let x_1714 : vec2<f32> = vec2<f32>(x_1713.z, x_1713.w);
        let x_1716 : f32 = vs_INTERP3.z;
        txVec26 = vec3<f32>(x_1714.x, x_1714.y, x_1716);
        let x_1723 : vec3<f32> = txVec26;
        let x_1725 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1723.xy, x_1723.z);
        u_xlat80 = x_1725;
        let x_1727 : f32 = u_xlat7.y;
        let x_1728 : f32 = u_xlat80;
        let x_1730 : f32 = u_xlat79;
        u_xlat79 = ((x_1727 * x_1728) + x_1730);
        let x_1733 : vec2<f32> = u_xlat59;
        let x_1735 : f32 = vs_INTERP3.z;
        txVec27 = vec3<f32>(x_1733.x, x_1733.y, x_1735);
        let x_1742 : vec3<f32> = txVec27;
        let x_1744 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1742.xy, x_1742.z);
        u_xlat80 = x_1744;
        let x_1746 : f32 = u_xlat7.z;
        let x_1747 : f32 = u_xlat80;
        let x_1749 : f32 = u_xlat79;
        u_xlat79 = ((x_1746 * x_1747) + x_1749);
        let x_1752 : vec4<f32> = u_xlat6;
        let x_1753 : vec2<f32> = vec2<f32>(x_1752.x, x_1752.y);
        let x_1755 : f32 = vs_INTERP3.z;
        txVec28 = vec3<f32>(x_1753.x, x_1753.y, x_1755);
        let x_1762 : vec3<f32> = txVec28;
        let x_1764 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1762.xy, x_1762.z);
        u_xlat80 = x_1764;
        let x_1766 : f32 = u_xlat7.w;
        let x_1767 : f32 = u_xlat80;
        let x_1769 : f32 = u_xlat79;
        u_xlat78 = ((x_1766 * x_1767) + x_1769);
      }
    }
  } else {
    let x_1773 : vec4<f32> = vs_INTERP3;
    let x_1774 : vec2<f32> = vec2<f32>(x_1773.x, x_1773.y);
    let x_1776 : f32 = vs_INTERP3.z;
    txVec29 = vec3<f32>(x_1774.x, x_1774.y, x_1776);
    let x_1783 : vec3<f32> = txVec29;
    let x_1785 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1783.xy, x_1783.z);
    u_xlat78 = x_1785;
  }
  let x_1787 : f32 = x_558.x_MainLightShadowParams.x;
  u_xlat79 = (-(x_1787) + 1.0f);
  let x_1790 : f32 = u_xlat78;
  let x_1792 : f32 = x_558.x_MainLightShadowParams.x;
  let x_1794 : f32 = u_xlat79;
  u_xlat78 = ((x_1790 * x_1792) + x_1794);
  let x_1797 : f32 = vs_INTERP3.z;
  u_xlatb79 = (0.0f >= x_1797);
  let x_1801 : f32 = vs_INTERP3.z;
  u_xlatb80 = (x_1801 >= 1.0f);
  let x_1803 : bool = u_xlatb79;
  let x_1804 : bool = u_xlatb80;
  u_xlatb79 = (x_1803 | x_1804);
  let x_1806 : bool = u_xlatb79;
  let x_1807 : f32 = u_xlat78;
  u_xlat78 = select(x_1807, 1.0f, x_1806);
  let x_1809 : vec3<f32> = vs_INTERP7;
  let x_1811 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_1813 : vec3<f32> = (x_1809 + -(x_1811));
  let x_1814 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1813.x, x_1813.y, x_1813.z, x_1814.w);
  let x_1816 : vec4<f32> = u_xlat6;
  let x_1818 : vec4<f32> = u_xlat6;
  u_xlat79 = dot(vec3<f32>(x_1816.x, x_1816.y, x_1816.z), vec3<f32>(x_1818.x, x_1818.y, x_1818.z));
  let x_1821 : f32 = u_xlat79;
  let x_1823 : f32 = x_558.x_MainLightShadowParams.z;
  let x_1826 : f32 = x_558.x_MainLightShadowParams.w;
  u_xlat80 = ((x_1821 * x_1823) + x_1826);
  let x_1828 : f32 = u_xlat80;
  u_xlat80 = clamp(x_1828, 0.0f, 1.0f);
  let x_1830 : f32 = u_xlat78;
  u_xlat6.x = (-(x_1830) + 1.0f);
  let x_1834 : f32 = u_xlat80;
  let x_1836 : f32 = u_xlat6.x;
  let x_1838 : f32 = u_xlat78;
  u_xlat78 = ((x_1834 * x_1836) + x_1838);
  let x_1840 : vec3<f32> = u_xlat4;
  let x_1842 : vec4<f32> = u_xlat3;
  u_xlat80 = dot(-(x_1840), vec3<f32>(x_1842.x, x_1842.y, x_1842.z));
  let x_1845 : f32 = u_xlat80;
  let x_1846 : f32 = u_xlat80;
  u_xlat80 = (x_1845 + x_1846);
  let x_1848 : vec4<f32> = u_xlat3;
  let x_1850 : f32 = u_xlat80;
  let x_1854 : vec3<f32> = u_xlat4;
  let x_1856 : vec3<f32> = ((vec3<f32>(x_1848.x, x_1848.y, x_1848.z) * -(vec3<f32>(x_1850, x_1850, x_1850))) + -(x_1854));
  let x_1857 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1856.x, x_1856.y, x_1856.z, x_1857.w);
  let x_1859 : vec4<f32> = u_xlat3;
  let x_1861 : vec3<f32> = u_xlat4;
  u_xlat80 = dot(vec3<f32>(x_1859.x, x_1859.y, x_1859.z), x_1861);
  let x_1863 : f32 = u_xlat80;
  u_xlat80 = clamp(x_1863, 0.0f, 1.0f);
  let x_1865 : f32 = u_xlat80;
  u_xlat80 = (-(x_1865) + 1.0f);
  let x_1868 : f32 = u_xlat80;
  let x_1869 : f32 = u_xlat80;
  u_xlat80 = (x_1868 * x_1869);
  let x_1871 : f32 = u_xlat80;
  let x_1872 : f32 = u_xlat80;
  u_xlat80 = (x_1871 * x_1872);
  let x_1876 : f32 = u_xlat0.x;
  u_xlat81 = ((-(x_1876) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1883 : f32 = u_xlat0.x;
  let x_1884 : f32 = u_xlat81;
  u_xlat0.x = (x_1883 * x_1884);
  let x_1888 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1888 * 6.0f);
  let x_1900 : vec4<f32> = u_xlat6;
  let x_1903 : f32 = u_xlat0.x;
  let x_1904 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1900.x, x_1900.y, x_1900.z), x_1903);
  u_xlat6 = x_1904;
  let x_1906 : f32 = u_xlat6.w;
  u_xlat0.x = (x_1906 + -1.0f);
  let x_1910 : f32 = x_271.unity_SpecCube0_HDR.w;
  let x_1912 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1910 * x_1912) + 1.0f);
  let x_1917 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1917, 0.0f);
  let x_1921 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1921);
  let x_1925 : f32 = u_xlat0.x;
  let x_1927 : f32 = x_271.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1925 * x_1927);
  let x_1931 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1931);
  let x_1935 : f32 = u_xlat0.x;
  let x_1937 : f32 = x_271.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1935 * x_1937);
  let x_1940 : vec4<f32> = u_xlat6;
  let x_1942 : vec4<f32> = u_xlat0;
  let x_1944 : vec3<f32> = (vec3<f32>(x_1940.x, x_1940.y, x_1940.z) * vec3<f32>(x_1942.x, x_1942.x, x_1942.x));
  let x_1945 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1944.x, x_1944.y, x_1944.z, x_1945.w);
  let x_1947 : vec2<f32> = u_xlat25;
  let x_1949 : vec2<f32> = u_xlat25;
  let x_1953 : vec2<f32> = ((vec2<f32>(x_1947.x, x_1947.x) * vec2<f32>(x_1949.x, x_1949.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1954 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1953.x, x_1953.y, x_1954.z, x_1954.w);
  let x_1957 : f32 = u_xlat0.y;
  u_xlat25.x = (1.0f / x_1957);
  let x_1960 : vec3<f32> = u_xlat2;
  let x_1962 : f32 = u_xlat50;
  let x_1964 : vec3<f32> = (-(x_1960) + vec3<f32>(x_1962, x_1962, x_1962));
  let x_1965 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1964.x, x_1964.y, x_1964.z, x_1965.w);
  let x_1967 : f32 = u_xlat80;
  let x_1969 : vec4<f32> = u_xlat7;
  let x_1972 : vec3<f32> = u_xlat2;
  let x_1973 : vec3<f32> = ((vec3<f32>(x_1967, x_1967, x_1967) * vec3<f32>(x_1969.x, x_1969.y, x_1969.z)) + x_1972);
  let x_1974 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1973.x, x_1973.y, x_1973.z, x_1974.w);
  let x_1976 : vec2<f32> = u_xlat25;
  let x_1978 : vec4<f32> = u_xlat7;
  let x_1980 : vec3<f32> = (vec3<f32>(x_1976.x, x_1976.x, x_1976.x) * vec3<f32>(x_1978.x, x_1978.y, x_1978.z));
  let x_1981 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1980.x, x_1980.y, x_1980.z, x_1981.w);
  let x_1983 : vec4<f32> = u_xlat6;
  let x_1985 : vec4<f32> = u_xlat7;
  let x_1987 : vec3<f32> = (vec3<f32>(x_1983.x, x_1983.y, x_1983.z) * vec3<f32>(x_1985.x, x_1985.y, x_1985.z));
  let x_1988 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1987.x, x_1987.y, x_1987.z, x_1988.w);
  let x_1990 : vec3<f32> = u_xlat26;
  let x_1991 : vec3<f32> = u_xlat5;
  let x_1993 : vec4<f32> = u_xlat6;
  u_xlat26 = ((x_1990 * x_1991) + vec3<f32>(x_1993.x, x_1993.y, x_1993.z));
  let x_1996 : f32 = u_xlat78;
  let x_1998 : f32 = x_271.unity_LightData.z;
  u_xlat25.x = (x_1996 * x_1998);
  let x_2001 : vec4<f32> = u_xlat3;
  let x_2004 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat50 = dot(vec3<f32>(x_2001.x, x_2001.y, x_2001.z), vec3<f32>(x_2004.x, x_2004.y, x_2004.z));
  let x_2007 : f32 = u_xlat50;
  u_xlat50 = clamp(x_2007, 0.0f, 1.0f);
  let x_2009 : f32 = u_xlat50;
  let x_2011 : f32 = u_xlat25.x;
  u_xlat25.x = (x_2009 * x_2011);
  let x_2014 : vec2<f32> = u_xlat25;
  let x_2017 : vec4<f32> = x_29.x_MainLightColor;
  let x_2019 : vec3<f32> = (vec3<f32>(x_2014.x, x_2014.x, x_2014.x) * vec3<f32>(x_2017.x, x_2017.y, x_2017.z));
  let x_2020 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2019.x, x_2019.y, x_2019.z, x_2020.w);
  let x_2022 : vec3<f32> = u_xlat4;
  let x_2024 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2026 : vec3<f32> = (x_2022 + vec3<f32>(x_2024.x, x_2024.y, x_2024.z));
  let x_2027 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2026.x, x_2026.y, x_2026.z, x_2027.w);
  let x_2029 : vec4<f32> = u_xlat7;
  let x_2031 : vec4<f32> = u_xlat7;
  u_xlat25.x = dot(vec3<f32>(x_2029.x, x_2029.y, x_2029.z), vec3<f32>(x_2031.x, x_2031.y, x_2031.z));
  let x_2036 : f32 = u_xlat25.x;
  u_xlat25.x = max(x_2036, 1.17549435e-38f);
  let x_2041 : f32 = u_xlat25.x;
  u_xlat25.x = inverseSqrt(x_2041);
  let x_2044 : vec2<f32> = u_xlat25;
  let x_2046 : vec4<f32> = u_xlat7;
  let x_2048 : vec3<f32> = (vec3<f32>(x_2044.x, x_2044.x, x_2044.x) * vec3<f32>(x_2046.x, x_2046.y, x_2046.z));
  let x_2049 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2048.x, x_2048.y, x_2048.z, x_2049.w);
  let x_2051 : vec4<f32> = u_xlat3;
  let x_2053 : vec4<f32> = u_xlat7;
  u_xlat25.x = dot(vec3<f32>(x_2051.x, x_2051.y, x_2051.z), vec3<f32>(x_2053.x, x_2053.y, x_2053.z));
  let x_2058 : f32 = u_xlat25.x;
  u_xlat25.x = clamp(x_2058, 0.0f, 1.0f);
  let x_2062 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2064 : vec4<f32> = u_xlat7;
  u_xlat25.y = dot(vec3<f32>(x_2062.x, x_2062.y, x_2062.z), vec3<f32>(x_2064.x, x_2064.y, x_2064.z));
  let x_2069 : f32 = u_xlat25.y;
  u_xlat25.y = clamp(x_2069, 0.0f, 1.0f);
  let x_2072 : vec2<f32> = u_xlat25;
  let x_2073 : vec2<f32> = u_xlat25;
  u_xlat25 = (x_2072 * x_2073);
  let x_2076 : f32 = u_xlat25.x;
  let x_2078 : f32 = u_xlat0.x;
  u_xlat25.x = ((x_2076 * x_2078) + 1.00001001358032226562f);
  let x_2084 : f32 = u_xlat25.x;
  let x_2086 : f32 = u_xlat25.x;
  u_xlat25.x = (x_2084 * x_2086);
  let x_2090 : f32 = u_xlat25.y;
  u_xlat50 = max(x_2090, 0.10000000149011611938f);
  let x_2093 : f32 = u_xlat50;
  let x_2095 : f32 = u_xlat25.x;
  u_xlat25.x = (x_2093 * x_2095);
  let x_2098 : f32 = u_xlat77;
  let x_2100 : f32 = u_xlat25.x;
  u_xlat25.x = (x_2098 * x_2100);
  let x_2104 : f32 = u_xlat1.x;
  let x_2106 : f32 = u_xlat25.x;
  u_xlat25.x = (x_2104 / x_2106);
  let x_2109 : vec3<f32> = u_xlat2;
  let x_2110 : vec2<f32> = u_xlat25;
  let x_2113 : vec3<f32> = u_xlat5;
  let x_2114 : vec3<f32> = ((x_2109 * vec3<f32>(x_2110.x, x_2110.x, x_2110.x)) + x_2113);
  let x_2115 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2114.x, x_2114.y, x_2114.z, x_2115.w);
  let x_2117 : vec4<f32> = u_xlat6;
  let x_2119 : vec4<f32> = u_xlat7;
  let x_2121 : vec3<f32> = (vec3<f32>(x_2117.x, x_2117.y, x_2117.z) * vec3<f32>(x_2119.x, x_2119.y, x_2119.z));
  let x_2122 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2121.x, x_2121.y, x_2121.z, x_2122.w);
  let x_2125 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_2127 : f32 = x_271.unity_LightData.y;
  u_xlat25.x = min(x_2125, x_2127);
  let x_2133 : f32 = u_xlat25.x;
  u_xlatu25 = bitcast<u32>(i32(x_2133));
  let x_2136 : f32 = u_xlat79;
  let x_2139 : f32 = x_558.x_AdditionalShadowFadeParams.x;
  let x_2142 : f32 = x_558.x_AdditionalShadowFadeParams.y;
  u_xlat50 = ((x_2136 * x_2139) + x_2142);
  let x_2144 : f32 = u_xlat50;
  u_xlat50 = clamp(x_2144, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2156 : u32 = u_xlatu_loop_1;
    let x_2157 : u32 = u_xlatu25;
    if ((x_2156 < x_2157)) {
    } else {
      break;
    }
    let x_2160 : u32 = u_xlatu_loop_1;
    u_xlatu79 = (x_2160 >> 2u);
    let x_2164 : u32 = u_xlatu_loop_1;
    u_xlati80 = bitcast<i32>((x_2164 & 3u));
    let x_2167 : u32 = u_xlatu79;
    let x_2170 : vec4<f32> = x_271.unity_LightIndices[bitcast<i32>(x_2167)];
    let x_2180 : i32 = u_xlati80;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2185 : vec4<u32> = indexable[x_2180];
    u_xlat79 = dot(x_2170, bitcast<vec4<f32>>(x_2185));
    let x_2189 : f32 = u_xlat79;
    u_xlati79 = i32(x_2189);
    let x_2191 : vec3<f32> = vs_INTERP7;
    let x_2202 : i32 = u_xlati79;
    let x_2204 : vec4<f32> = x_2201.x_AdditionalLightsPosition[x_2202];
    let x_2207 : i32 = u_xlati79;
    let x_2209 : vec4<f32> = x_2201.x_AdditionalLightsPosition[x_2207];
    let x_2211 : vec3<f32> = ((-(x_2191) * vec3<f32>(x_2204.w, x_2204.w, x_2204.w)) + vec3<f32>(x_2209.x, x_2209.y, x_2209.z));
    let x_2212 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2211.x, x_2211.y, x_2211.z, x_2212.w);
    let x_2214 : vec4<f32> = u_xlat8;
    let x_2216 : vec4<f32> = u_xlat8;
    u_xlat80 = dot(vec3<f32>(x_2214.x, x_2214.y, x_2214.z), vec3<f32>(x_2216.x, x_2216.y, x_2216.z));
    let x_2219 : f32 = u_xlat80;
    u_xlat80 = max(x_2219, 0.00006103515625f);
    let x_2222 : f32 = u_xlat80;
    u_xlat81 = inverseSqrt(x_2222);
    let x_2224 : f32 = u_xlat81;
    let x_2226 : vec4<f32> = u_xlat8;
    let x_2228 : vec3<f32> = (vec3<f32>(x_2224, x_2224, x_2224) * vec3<f32>(x_2226.x, x_2226.y, x_2226.z));
    let x_2229 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2228.x, x_2228.y, x_2228.z, x_2229.w);
    let x_2232 : f32 = u_xlat80;
    u_xlat82 = (1.0f / x_2232);
    let x_2234 : f32 = u_xlat80;
    let x_2235 : i32 = u_xlati79;
    let x_2237 : f32 = x_2201.x_AdditionalLightsAttenuation[x_2235].x;
    u_xlat80 = (x_2234 * x_2237);
    let x_2239 : f32 = u_xlat80;
    let x_2241 : f32 = u_xlat80;
    u_xlat80 = ((-(x_2239) * x_2241) + 1.0f);
    let x_2244 : f32 = u_xlat80;
    u_xlat80 = max(x_2244, 0.0f);
    let x_2246 : f32 = u_xlat80;
    let x_2247 : f32 = u_xlat80;
    u_xlat80 = (x_2246 * x_2247);
    let x_2249 : f32 = u_xlat80;
    let x_2250 : f32 = u_xlat82;
    u_xlat80 = (x_2249 * x_2250);
    let x_2252 : i32 = u_xlati79;
    let x_2254 : vec4<f32> = x_2201.x_AdditionalLightsSpotDir[x_2252];
    let x_2256 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_2254.x, x_2254.y, x_2254.z), vec3<f32>(x_2256.x, x_2256.y, x_2256.z));
    let x_2259 : f32 = u_xlat82;
    let x_2260 : i32 = u_xlati79;
    let x_2262 : f32 = x_2201.x_AdditionalLightsAttenuation[x_2260].z;
    let x_2264 : i32 = u_xlati79;
    let x_2266 : f32 = x_2201.x_AdditionalLightsAttenuation[x_2264].w;
    u_xlat82 = ((x_2259 * x_2262) + x_2266);
    let x_2268 : f32 = u_xlat82;
    u_xlat82 = clamp(x_2268, 0.0f, 1.0f);
    let x_2270 : f32 = u_xlat82;
    let x_2271 : f32 = u_xlat82;
    u_xlat82 = (x_2270 * x_2271);
    let x_2273 : f32 = u_xlat80;
    let x_2274 : f32 = u_xlat82;
    u_xlat80 = (x_2273 * x_2274);
    let x_2278 : i32 = u_xlati79;
    let x_2280 : f32 = x_558.x_AdditionalShadowParams[x_2278].w;
    u_xlati82 = i32(x_2280);
    let x_2283 : i32 = u_xlati82;
    u_xlatb83 = (x_2283 >= 0i);
    let x_2285 : bool = u_xlatb83;
    if (x_2285) {
      let x_2289 : i32 = u_xlati79;
      let x_2291 : f32 = x_558.x_AdditionalShadowParams[x_2289].z;
      u_xlatb83 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2291, x_2291, x_2291, x_2291))));
      let x_2295 : bool = u_xlatb83;
      if (x_2295) {
        let x_2300 : vec4<f32> = u_xlat9;
        let x_2303 : vec4<f32> = u_xlat9;
        let x_2306 : vec4<bool> = (abs(vec4<f32>(x_2300.z, x_2300.z, x_2300.y, x_2300.z)) >= abs(vec4<f32>(x_2303.x, x_2303.y, x_2303.x, x_2303.x)));
        let x_2307 : vec3<bool> = vec3<bool>(x_2306.x, x_2306.y, x_2306.z);
        let x_2308 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_2307.x, x_2307.y, x_2307.z, x_2308.w);
        let x_2311 : bool = u_xlatb10.y;
        let x_2313 : bool = u_xlatb10.x;
        u_xlatb83 = (x_2311 & x_2313);
        let x_2315 : vec4<f32> = u_xlat9;
        let x_2318 : vec4<bool> = (-(vec4<f32>(x_2315.z, x_2315.y, x_2315.z, x_2315.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2319 : vec3<bool> = vec3<bool>(x_2318.x, x_2318.y, x_2318.w);
        let x_2320 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_2319.x, x_2319.y, x_2320.z, x_2319.z);
        let x_2323 : bool = u_xlatb10.x;
        u_xlat10.x = select(4.0f, 5.0f, x_2323);
        let x_2328 : bool = u_xlatb10.y;
        u_xlat10.y = select(2.0f, 3.0f, x_2328);
        let x_2334 : bool = u_xlatb10.w;
        u_xlat84 = select(0.0f, 1.0f, x_2334);
        let x_2337 : bool = u_xlatb10.z;
        if (x_2337) {
          let x_2342 : f32 = u_xlat10.y;
          x_2338 = x_2342;
        } else {
          let x_2344 : f32 = u_xlat84;
          x_2338 = x_2344;
        }
        let x_2345 : f32 = x_2338;
        u_xlat84 = x_2345;
        let x_2347 : bool = u_xlatb83;
        if (x_2347) {
          let x_2352 : f32 = u_xlat10.x;
          x_2348 = x_2352;
        } else {
          let x_2354 : f32 = u_xlat84;
          x_2348 = x_2354;
        }
        let x_2355 : f32 = x_2348;
        u_xlat83 = x_2355;
        let x_2356 : i32 = u_xlati79;
        let x_2358 : f32 = x_558.x_AdditionalShadowParams[x_2356].w;
        u_xlat84 = trunc(x_2358);
        let x_2360 : f32 = u_xlat83;
        let x_2361 : f32 = u_xlat84;
        u_xlat83 = (x_2360 + x_2361);
        let x_2363 : f32 = u_xlat83;
        u_xlati82 = i32(x_2363);
      }
      let x_2365 : i32 = u_xlati82;
      u_xlati82 = (x_2365 << bitcast<u32>(2i));
      let x_2367 : vec3<f32> = vs_INTERP7;
      let x_2370 : i32 = u_xlati82;
      let x_2373 : i32 = u_xlati82;
      let x_2377 : vec4<f32> = x_558.x_AdditionalLightsWorldToShadow[((x_2370 + 1i) / 4i)][((x_2373 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_2367.y, x_2367.y, x_2367.y, x_2367.y) * x_2377);
      let x_2379 : i32 = u_xlati82;
      let x_2381 : i32 = u_xlati82;
      let x_2384 : vec4<f32> = x_558.x_AdditionalLightsWorldToShadow[(x_2379 / 4i)][(x_2381 % 4i)];
      let x_2385 : vec3<f32> = vs_INTERP7;
      let x_2388 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2384 * vec4<f32>(x_2385.x, x_2385.x, x_2385.x, x_2385.x)) + x_2388);
      let x_2390 : i32 = u_xlati82;
      let x_2393 : i32 = u_xlati82;
      let x_2397 : vec4<f32> = x_558.x_AdditionalLightsWorldToShadow[((x_2390 + 2i) / 4i)][((x_2393 + 2i) % 4i)];
      let x_2398 : vec3<f32> = vs_INTERP7;
      let x_2401 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2397 * vec4<f32>(x_2398.z, x_2398.z, x_2398.z, x_2398.z)) + x_2401);
      let x_2403 : vec4<f32> = u_xlat10;
      let x_2404 : i32 = u_xlati82;
      let x_2407 : i32 = u_xlati82;
      let x_2411 : vec4<f32> = x_558.x_AdditionalLightsWorldToShadow[((x_2404 + 3i) / 4i)][((x_2407 + 3i) % 4i)];
      u_xlat10 = (x_2403 + x_2411);
      let x_2413 : vec4<f32> = u_xlat10;
      let x_2415 : vec4<f32> = u_xlat10;
      let x_2417 : vec3<f32> = (vec3<f32>(x_2413.x, x_2413.y, x_2413.z) / vec3<f32>(x_2415.w, x_2415.w, x_2415.w));
      let x_2418 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2417.x, x_2417.y, x_2417.z, x_2418.w);
      let x_2421 : i32 = u_xlati79;
      let x_2423 : f32 = x_558.x_AdditionalShadowParams[x_2421].y;
      u_xlatb82 = (0.0f < x_2423);
      let x_2425 : bool = u_xlatb82;
      if (x_2425) {
        let x_2428 : i32 = u_xlati79;
        let x_2430 : f32 = x_558.x_AdditionalShadowParams[x_2428].y;
        u_xlatb82 = (1.0f == x_2430);
        let x_2432 : bool = u_xlatb82;
        if (x_2432) {
          let x_2435 : vec4<f32> = u_xlat10;
          let x_2439 : vec4<f32> = x_558.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2435.x, x_2435.y, x_2435.x, x_2435.y) + x_2439);
          let x_2442 : vec4<f32> = u_xlat11;
          let x_2443 : vec2<f32> = vec2<f32>(x_2442.x, x_2442.y);
          let x_2445 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2443.x, x_2443.y, x_2445);
          let x_2453 : vec3<f32> = txVec30;
          let x_2455 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2453.xy, x_2453.z);
          u_xlat12.x = x_2455;
          let x_2458 : vec4<f32> = u_xlat11;
          let x_2459 : vec2<f32> = vec2<f32>(x_2458.z, x_2458.w);
          let x_2461 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_2459.x, x_2459.y, x_2461);
          let x_2468 : vec3<f32> = txVec31;
          let x_2470 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2468.xy, x_2468.z);
          u_xlat12.y = x_2470;
          let x_2472 : vec4<f32> = u_xlat10;
          let x_2476 : vec4<f32> = x_558.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_2472.x, x_2472.y, x_2472.x, x_2472.y) + x_2476);
          let x_2479 : vec4<f32> = u_xlat11;
          let x_2480 : vec2<f32> = vec2<f32>(x_2479.x, x_2479.y);
          let x_2482 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_2480.x, x_2480.y, x_2482);
          let x_2489 : vec3<f32> = txVec32;
          let x_2491 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2489.xy, x_2489.z);
          u_xlat12.z = x_2491;
          let x_2494 : vec4<f32> = u_xlat11;
          let x_2495 : vec2<f32> = vec2<f32>(x_2494.z, x_2494.w);
          let x_2497 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_2495.x, x_2495.y, x_2497);
          let x_2504 : vec3<f32> = txVec33;
          let x_2506 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2504.xy, x_2504.z);
          u_xlat12.w = x_2506;
          let x_2508 : vec4<f32> = u_xlat12;
          u_xlat82 = dot(x_2508, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2511 : i32 = u_xlati79;
          let x_2513 : f32 = x_558.x_AdditionalShadowParams[x_2511].y;
          u_xlatb83 = (2.0f == x_2513);
          let x_2515 : bool = u_xlatb83;
          if (x_2515) {
            let x_2518 : vec4<f32> = u_xlat10;
            let x_2522 : vec4<f32> = x_558.x_AdditionalShadowmapSize;
            let x_2525 : vec2<f32> = ((vec2<f32>(x_2518.x, x_2518.y) * vec2<f32>(x_2522.z, x_2522.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2526 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2525.x, x_2525.y, x_2526.z, x_2526.w);
            let x_2528 : vec4<f32> = u_xlat11;
            let x_2530 : vec2<f32> = floor(vec2<f32>(x_2528.x, x_2528.y));
            let x_2531 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2530.x, x_2530.y, x_2531.z, x_2531.w);
            let x_2534 : vec4<f32> = u_xlat10;
            let x_2537 : vec4<f32> = x_558.x_AdditionalShadowmapSize;
            let x_2540 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2534.x, x_2534.y) * vec2<f32>(x_2537.z, x_2537.w)) + -(vec2<f32>(x_2540.x, x_2540.y)));
            let x_2544 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2544.x, x_2544.x, x_2544.y, x_2544.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2547 : vec4<f32> = u_xlat12;
            let x_2549 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2547.x, x_2547.x, x_2547.z, x_2547.z) * vec4<f32>(x_2549.x, x_2549.x, x_2549.z, x_2549.z));
            let x_2552 : vec4<f32> = u_xlat13;
            let x_2554 : vec2<f32> = (vec2<f32>(x_2552.y, x_2552.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2555 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2554.x, x_2555.y, x_2554.y, x_2555.w);
            let x_2557 : vec4<f32> = u_xlat13;
            let x_2560 : vec2<f32> = u_xlat61;
            let x_2562 : vec2<f32> = ((vec2<f32>(x_2557.x, x_2557.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2560));
            let x_2563 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2562.x, x_2562.y, x_2563.z, x_2563.w);
            let x_2566 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_2566) + vec2<f32>(1.0f, 1.0f));
            let x_2569 : vec2<f32> = u_xlat61;
            let x_2570 : vec2<f32> = min(x_2569, vec2<f32>(0.0f, 0.0f));
            let x_2571 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2570.x, x_2570.y, x_2571.z, x_2571.w);
            let x_2573 : vec4<f32> = u_xlat14;
            let x_2576 : vec4<f32> = u_xlat14;
            let x_2579 : vec2<f32> = u_xlat63;
            let x_2580 : vec2<f32> = ((-(vec2<f32>(x_2573.x, x_2573.y)) * vec2<f32>(x_2576.x, x_2576.y)) + x_2579);
            let x_2581 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2580.x, x_2580.y, x_2581.z, x_2581.w);
            let x_2583 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_2583, vec2<f32>(0.0f, 0.0f));
            let x_2585 : vec2<f32> = u_xlat61;
            let x_2587 : vec2<f32> = u_xlat61;
            let x_2589 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_2585) * x_2587) + vec2<f32>(x_2589.y, x_2589.w));
            let x_2592 : vec4<f32> = u_xlat14;
            let x_2594 : vec2<f32> = (vec2<f32>(x_2592.x, x_2592.y) + vec2<f32>(1.0f, 1.0f));
            let x_2595 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2594.x, x_2594.y, x_2595.z, x_2595.w);
            let x_2597 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_2597 + vec2<f32>(1.0f, 1.0f));
            let x_2599 : vec4<f32> = u_xlat13;
            let x_2601 : vec2<f32> = (vec2<f32>(x_2599.x, x_2599.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2602 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2601.x, x_2601.y, x_2602.z, x_2602.w);
            let x_2604 : vec2<f32> = u_xlat63;
            let x_2605 : vec2<f32> = (x_2604 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2606 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2605.x, x_2605.y, x_2606.z, x_2606.w);
            let x_2608 : vec4<f32> = u_xlat14;
            let x_2610 : vec2<f32> = (vec2<f32>(x_2608.x, x_2608.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2611 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2610.x, x_2610.y, x_2611.z, x_2611.w);
            let x_2613 : vec2<f32> = u_xlat61;
            let x_2614 : vec2<f32> = (x_2613 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2615 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2614.x, x_2614.y, x_2615.z, x_2615.w);
            let x_2617 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_2617.y, x_2617.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2621 : f32 = u_xlat14.x;
            u_xlat15.z = x_2621;
            let x_2624 : f32 = u_xlat61.x;
            u_xlat15.w = x_2624;
            let x_2627 : f32 = u_xlat16.x;
            u_xlat13.z = x_2627;
            let x_2630 : f32 = u_xlat12.x;
            u_xlat13.w = x_2630;
            let x_2632 : vec4<f32> = u_xlat13;
            let x_2634 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2632.z, x_2632.w, x_2632.x, x_2632.z) + vec4<f32>(x_2634.z, x_2634.w, x_2634.x, x_2634.z));
            let x_2638 : f32 = u_xlat15.y;
            u_xlat14.z = x_2638;
            let x_2641 : f32 = u_xlat61.y;
            u_xlat14.w = x_2641;
            let x_2644 : f32 = u_xlat13.y;
            u_xlat16.z = x_2644;
            let x_2647 : f32 = u_xlat12.z;
            u_xlat16.w = x_2647;
            let x_2649 : vec4<f32> = u_xlat14;
            let x_2651 : vec4<f32> = u_xlat16;
            let x_2653 : vec3<f32> = (vec3<f32>(x_2649.z, x_2649.y, x_2649.w) + vec3<f32>(x_2651.z, x_2651.y, x_2651.w));
            let x_2654 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2653.x, x_2653.y, x_2653.z, x_2654.w);
            let x_2656 : vec4<f32> = u_xlat13;
            let x_2658 : vec4<f32> = u_xlat17;
            let x_2660 : vec3<f32> = (vec3<f32>(x_2656.x, x_2656.z, x_2656.w) / vec3<f32>(x_2658.z, x_2658.w, x_2658.y));
            let x_2661 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2660.x, x_2660.y, x_2660.z, x_2661.w);
            let x_2663 : vec4<f32> = u_xlat13;
            let x_2665 : vec3<f32> = (vec3<f32>(x_2663.x, x_2663.y, x_2663.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2666 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2665.x, x_2665.y, x_2665.z, x_2666.w);
            let x_2668 : vec4<f32> = u_xlat16;
            let x_2670 : vec4<f32> = u_xlat12;
            let x_2672 : vec3<f32> = (vec3<f32>(x_2668.z, x_2668.y, x_2668.w) / vec3<f32>(x_2670.x, x_2670.y, x_2670.z));
            let x_2673 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2672.x, x_2672.y, x_2672.z, x_2673.w);
            let x_2675 : vec4<f32> = u_xlat14;
            let x_2677 : vec3<f32> = (vec3<f32>(x_2675.x, x_2675.y, x_2675.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2678 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2677.x, x_2677.y, x_2677.z, x_2678.w);
            let x_2680 : vec4<f32> = u_xlat13;
            let x_2683 : vec4<f32> = x_558.x_AdditionalShadowmapSize;
            let x_2685 : vec3<f32> = (vec3<f32>(x_2680.y, x_2680.x, x_2680.z) * vec3<f32>(x_2683.x, x_2683.x, x_2683.x));
            let x_2686 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2685.x, x_2685.y, x_2685.z, x_2686.w);
            let x_2688 : vec4<f32> = u_xlat14;
            let x_2691 : vec4<f32> = x_558.x_AdditionalShadowmapSize;
            let x_2693 : vec3<f32> = (vec3<f32>(x_2688.x, x_2688.y, x_2688.z) * vec3<f32>(x_2691.y, x_2691.y, x_2691.y));
            let x_2694 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2693.x, x_2693.y, x_2693.z, x_2694.w);
            let x_2697 : f32 = u_xlat14.x;
            u_xlat13.w = x_2697;
            let x_2699 : vec4<f32> = u_xlat11;
            let x_2702 : vec4<f32> = x_558.x_AdditionalShadowmapSize;
            let x_2705 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2699.x, x_2699.y, x_2699.x, x_2699.y) * vec4<f32>(x_2702.x, x_2702.y, x_2702.x, x_2702.y)) + vec4<f32>(x_2705.y, x_2705.w, x_2705.x, x_2705.w));
            let x_2708 : vec4<f32> = u_xlat11;
            let x_2711 : vec4<f32> = x_558.x_AdditionalShadowmapSize;
            let x_2714 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_2708.x, x_2708.y) * vec2<f32>(x_2711.x, x_2711.y)) + vec2<f32>(x_2714.z, x_2714.w));
            let x_2718 : f32 = u_xlat13.y;
            u_xlat14.w = x_2718;
            let x_2720 : vec4<f32> = u_xlat14;
            let x_2721 : vec2<f32> = vec2<f32>(x_2720.y, x_2720.z);
            let x_2722 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2722.x, x_2721.x, x_2722.z, x_2721.y);
            let x_2724 : vec4<f32> = u_xlat11;
            let x_2727 : vec4<f32> = x_558.x_AdditionalShadowmapSize;
            let x_2730 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_2724.x, x_2724.y, x_2724.x, x_2724.y) * vec4<f32>(x_2727.x, x_2727.y, x_2727.x, x_2727.y)) + vec4<f32>(x_2730.x, x_2730.y, x_2730.z, x_2730.y));
            let x_2733 : vec4<f32> = u_xlat11;
            let x_2736 : vec4<f32> = x_558.x_AdditionalShadowmapSize;
            let x_2739 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2733.x, x_2733.y, x_2733.x, x_2733.y) * vec4<f32>(x_2736.x, x_2736.y, x_2736.x, x_2736.y)) + vec4<f32>(x_2739.w, x_2739.y, x_2739.w, x_2739.z));
            let x_2742 : vec4<f32> = u_xlat11;
            let x_2745 : vec4<f32> = x_558.x_AdditionalShadowmapSize;
            let x_2748 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_2742.x, x_2742.y, x_2742.x, x_2742.y) * vec4<f32>(x_2745.x, x_2745.y, x_2745.x, x_2745.y)) + vec4<f32>(x_2748.x, x_2748.w, x_2748.z, x_2748.w));
            let x_2751 : vec4<f32> = u_xlat12;
            let x_2753 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_2751.x, x_2751.x, x_2751.x, x_2751.y) * vec4<f32>(x_2753.z, x_2753.w, x_2753.y, x_2753.z));
            let x_2756 : vec4<f32> = u_xlat12;
            let x_2758 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_2756.y, x_2756.y, x_2756.z, x_2756.z) * x_2758);
            let x_2761 : f32 = u_xlat12.z;
            let x_2763 : f32 = u_xlat17.y;
            u_xlat83 = (x_2761 * x_2763);
            let x_2766 : vec4<f32> = u_xlat15;
            let x_2767 : vec2<f32> = vec2<f32>(x_2766.x, x_2766.y);
            let x_2769 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_2767.x, x_2767.y, x_2769);
            let x_2776 : vec3<f32> = txVec34;
            let x_2778 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2776.xy, x_2776.z);
            u_xlat84 = x_2778;
            let x_2780 : vec4<f32> = u_xlat15;
            let x_2781 : vec2<f32> = vec2<f32>(x_2780.z, x_2780.w);
            let x_2783 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_2781.x, x_2781.y, x_2783);
            let x_2791 : vec3<f32> = txVec35;
            let x_2793 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2791.xy, x_2791.z);
            u_xlat85 = x_2793;
            let x_2794 : f32 = u_xlat85;
            let x_2796 : f32 = u_xlat18.y;
            u_xlat85 = (x_2794 * x_2796);
            let x_2799 : f32 = u_xlat18.x;
            let x_2800 : f32 = u_xlat84;
            let x_2802 : f32 = u_xlat85;
            u_xlat84 = ((x_2799 * x_2800) + x_2802);
            let x_2805 : vec2<f32> = u_xlat61;
            let x_2807 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_2805.x, x_2805.y, x_2807);
            let x_2814 : vec3<f32> = txVec36;
            let x_2816 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2814.xy, x_2814.z);
            u_xlat85 = x_2816;
            let x_2818 : f32 = u_xlat18.z;
            let x_2819 : f32 = u_xlat85;
            let x_2821 : f32 = u_xlat84;
            u_xlat84 = ((x_2818 * x_2819) + x_2821);
            let x_2824 : vec4<f32> = u_xlat14;
            let x_2825 : vec2<f32> = vec2<f32>(x_2824.x, x_2824.y);
            let x_2827 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_2825.x, x_2825.y, x_2827);
            let x_2834 : vec3<f32> = txVec37;
            let x_2836 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2834.xy, x_2834.z);
            u_xlat85 = x_2836;
            let x_2838 : f32 = u_xlat18.w;
            let x_2839 : f32 = u_xlat85;
            let x_2841 : f32 = u_xlat84;
            u_xlat84 = ((x_2838 * x_2839) + x_2841);
            let x_2844 : vec4<f32> = u_xlat16;
            let x_2845 : vec2<f32> = vec2<f32>(x_2844.x, x_2844.y);
            let x_2847 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_2845.x, x_2845.y, x_2847);
            let x_2854 : vec3<f32> = txVec38;
            let x_2856 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2854.xy, x_2854.z);
            u_xlat85 = x_2856;
            let x_2858 : f32 = u_xlat19.x;
            let x_2859 : f32 = u_xlat85;
            let x_2861 : f32 = u_xlat84;
            u_xlat84 = ((x_2858 * x_2859) + x_2861);
            let x_2864 : vec4<f32> = u_xlat16;
            let x_2865 : vec2<f32> = vec2<f32>(x_2864.z, x_2864.w);
            let x_2867 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_2865.x, x_2865.y, x_2867);
            let x_2874 : vec3<f32> = txVec39;
            let x_2876 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2874.xy, x_2874.z);
            u_xlat85 = x_2876;
            let x_2878 : f32 = u_xlat19.y;
            let x_2879 : f32 = u_xlat85;
            let x_2881 : f32 = u_xlat84;
            u_xlat84 = ((x_2878 * x_2879) + x_2881);
            let x_2884 : vec4<f32> = u_xlat14;
            let x_2885 : vec2<f32> = vec2<f32>(x_2884.z, x_2884.w);
            let x_2887 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_2885.x, x_2885.y, x_2887);
            let x_2894 : vec3<f32> = txVec40;
            let x_2896 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2894.xy, x_2894.z);
            u_xlat85 = x_2896;
            let x_2898 : f32 = u_xlat19.z;
            let x_2899 : f32 = u_xlat85;
            let x_2901 : f32 = u_xlat84;
            u_xlat84 = ((x_2898 * x_2899) + x_2901);
            let x_2904 : vec4<f32> = u_xlat13;
            let x_2905 : vec2<f32> = vec2<f32>(x_2904.x, x_2904.y);
            let x_2907 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_2905.x, x_2905.y, x_2907);
            let x_2914 : vec3<f32> = txVec41;
            let x_2916 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2914.xy, x_2914.z);
            u_xlat85 = x_2916;
            let x_2918 : f32 = u_xlat19.w;
            let x_2919 : f32 = u_xlat85;
            let x_2921 : f32 = u_xlat84;
            u_xlat84 = ((x_2918 * x_2919) + x_2921);
            let x_2924 : vec4<f32> = u_xlat13;
            let x_2925 : vec2<f32> = vec2<f32>(x_2924.z, x_2924.w);
            let x_2927 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_2925.x, x_2925.y, x_2927);
            let x_2934 : vec3<f32> = txVec42;
            let x_2936 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2934.xy, x_2934.z);
            u_xlat85 = x_2936;
            let x_2937 : f32 = u_xlat83;
            let x_2938 : f32 = u_xlat85;
            let x_2940 : f32 = u_xlat84;
            u_xlat82 = ((x_2937 * x_2938) + x_2940);
          } else {
            let x_2943 : vec4<f32> = u_xlat10;
            let x_2946 : vec4<f32> = x_558.x_AdditionalShadowmapSize;
            let x_2949 : vec2<f32> = ((vec2<f32>(x_2943.x, x_2943.y) * vec2<f32>(x_2946.z, x_2946.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2950 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2949.x, x_2949.y, x_2950.z, x_2950.w);
            let x_2952 : vec4<f32> = u_xlat11;
            let x_2954 : vec2<f32> = floor(vec2<f32>(x_2952.x, x_2952.y));
            let x_2955 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2954.x, x_2954.y, x_2955.z, x_2955.w);
            let x_2957 : vec4<f32> = u_xlat10;
            let x_2960 : vec4<f32> = x_558.x_AdditionalShadowmapSize;
            let x_2963 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2957.x, x_2957.y) * vec2<f32>(x_2960.z, x_2960.w)) + -(vec2<f32>(x_2963.x, x_2963.y)));
            let x_2967 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2967.x, x_2967.x, x_2967.y, x_2967.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2970 : vec4<f32> = u_xlat12;
            let x_2972 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2970.x, x_2970.x, x_2970.z, x_2970.z) * vec4<f32>(x_2972.x, x_2972.x, x_2972.z, x_2972.z));
            let x_2975 : vec4<f32> = u_xlat13;
            let x_2977 : vec2<f32> = (vec2<f32>(x_2975.y, x_2975.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2978 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2978.x, x_2977.x, x_2978.z, x_2977.y);
            let x_2980 : vec4<f32> = u_xlat13;
            let x_2983 : vec2<f32> = u_xlat61;
            let x_2985 : vec2<f32> = ((vec2<f32>(x_2980.x, x_2980.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2983));
            let x_2986 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2985.x, x_2986.y, x_2985.y, x_2986.w);
            let x_2988 : vec2<f32> = u_xlat61;
            let x_2990 : vec2<f32> = (-(x_2988) + vec2<f32>(1.0f, 1.0f));
            let x_2991 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2990.x, x_2990.y, x_2991.z, x_2991.w);
            let x_2993 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_2993, vec2<f32>(0.0f, 0.0f));
            let x_2995 : vec2<f32> = u_xlat63;
            let x_2997 : vec2<f32> = u_xlat63;
            let x_2999 : vec4<f32> = u_xlat13;
            let x_3001 : vec2<f32> = ((-(x_2995) * x_2997) + vec2<f32>(x_2999.x, x_2999.y));
            let x_3002 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3001.x, x_3001.y, x_3002.z, x_3002.w);
            let x_3004 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_3004, vec2<f32>(0.0f, 0.0f));
            let x_3007 : vec2<f32> = u_xlat63;
            let x_3009 : vec2<f32> = u_xlat63;
            let x_3011 : vec4<f32> = u_xlat12;
            let x_3013 : vec2<f32> = ((-(x_3007) * x_3009) + vec2<f32>(x_3011.y, x_3011.w));
            let x_3014 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_3013.x, x_3014.y, x_3013.y);
            let x_3016 : vec4<f32> = u_xlat13;
            let x_3018 : vec2<f32> = (vec2<f32>(x_3016.x, x_3016.y) + vec2<f32>(2.0f, 2.0f));
            let x_3019 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3018.x, x_3018.y, x_3019.z, x_3019.w);
            let x_3021 : vec3<f32> = u_xlat37;
            let x_3023 : vec2<f32> = (vec2<f32>(x_3021.x, x_3021.z) + vec2<f32>(2.0f, 2.0f));
            let x_3024 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3024.x, x_3023.x, x_3024.z, x_3023.y);
            let x_3027 : f32 = u_xlat12.y;
            u_xlat15.z = (x_3027 * 0.08163200318813323975f);
            let x_3030 : vec4<f32> = u_xlat12;
            let x_3032 : vec3<f32> = (vec3<f32>(x_3030.z, x_3030.x, x_3030.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3033 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3032.x, x_3032.y, x_3032.z, x_3033.w);
            let x_3035 : vec4<f32> = u_xlat13;
            let x_3037 : vec2<f32> = (vec2<f32>(x_3035.x, x_3035.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3038 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3037.x, x_3037.y, x_3038.z, x_3038.w);
            let x_3041 : f32 = u_xlat16.y;
            u_xlat15.x = x_3041;
            let x_3043 : vec2<f32> = u_xlat61;
            let x_3046 : vec2<f32> = ((vec2<f32>(x_3043.x, x_3043.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3047 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3047.x, x_3046.x, x_3047.z, x_3046.y);
            let x_3049 : vec2<f32> = u_xlat61;
            let x_3052 : vec2<f32> = ((vec2<f32>(x_3049.x, x_3049.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3053 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3052.x, x_3053.y, x_3052.y, x_3053.w);
            let x_3056 : f32 = u_xlat12.x;
            u_xlat13.y = x_3056;
            let x_3059 : f32 = u_xlat14.y;
            u_xlat13.w = x_3059;
            let x_3061 : vec4<f32> = u_xlat13;
            let x_3062 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3061 + x_3062);
            let x_3064 : vec2<f32> = u_xlat61;
            let x_3067 : vec2<f32> = ((vec2<f32>(x_3064.y, x_3064.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3068 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3068.x, x_3067.x, x_3068.z, x_3067.y);
            let x_3070 : vec2<f32> = u_xlat61;
            let x_3073 : vec2<f32> = ((vec2<f32>(x_3070.y, x_3070.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3074 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3073.x, x_3074.y, x_3073.y, x_3074.w);
            let x_3077 : f32 = u_xlat12.y;
            u_xlat14.y = x_3077;
            let x_3079 : vec4<f32> = u_xlat14;
            let x_3080 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_3079 + x_3080);
            let x_3082 : vec4<f32> = u_xlat13;
            let x_3083 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_3082 / x_3083);
            let x_3085 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3085 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3087 : vec4<f32> = u_xlat14;
            let x_3088 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_3087 / x_3088);
            let x_3090 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3090 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3092 : vec4<f32> = u_xlat13;
            let x_3095 : vec4<f32> = x_558.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3092.w, x_3092.x, x_3092.y, x_3092.z) * vec4<f32>(x_3095.x, x_3095.x, x_3095.x, x_3095.x));
            let x_3098 : vec4<f32> = u_xlat14;
            let x_3101 : vec4<f32> = x_558.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3098.x, x_3098.w, x_3098.y, x_3098.z) * vec4<f32>(x_3101.y, x_3101.y, x_3101.y, x_3101.y));
            let x_3104 : vec4<f32> = u_xlat13;
            let x_3105 : vec3<f32> = vec3<f32>(x_3104.y, x_3104.z, x_3104.w);
            let x_3106 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3105.x, x_3106.y, x_3105.y, x_3105.z);
            let x_3109 : f32 = u_xlat14.x;
            u_xlat16.y = x_3109;
            let x_3111 : vec4<f32> = u_xlat11;
            let x_3114 : vec4<f32> = x_558.x_AdditionalShadowmapSize;
            let x_3117 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3111.x, x_3111.y, x_3111.x, x_3111.y) * vec4<f32>(x_3114.x, x_3114.y, x_3114.x, x_3114.y)) + vec4<f32>(x_3117.x, x_3117.y, x_3117.z, x_3117.y));
            let x_3120 : vec4<f32> = u_xlat11;
            let x_3123 : vec4<f32> = x_558.x_AdditionalShadowmapSize;
            let x_3126 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_3120.x, x_3120.y) * vec2<f32>(x_3123.x, x_3123.y)) + vec2<f32>(x_3126.w, x_3126.y));
            let x_3130 : f32 = u_xlat16.y;
            u_xlat13.y = x_3130;
            let x_3133 : f32 = u_xlat14.z;
            u_xlat16.y = x_3133;
            let x_3135 : vec4<f32> = u_xlat11;
            let x_3138 : vec4<f32> = x_558.x_AdditionalShadowmapSize;
            let x_3141 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3135.x, x_3135.y, x_3135.x, x_3135.y) * vec4<f32>(x_3138.x, x_3138.y, x_3138.x, x_3138.y)) + vec4<f32>(x_3141.x, x_3141.y, x_3141.z, x_3141.y));
            let x_3144 : vec4<f32> = u_xlat11;
            let x_3147 : vec4<f32> = x_558.x_AdditionalShadowmapSize;
            let x_3150 : vec4<f32> = u_xlat16;
            let x_3152 : vec2<f32> = ((vec2<f32>(x_3144.x, x_3144.y) * vec2<f32>(x_3147.x, x_3147.y)) + vec2<f32>(x_3150.w, x_3150.y));
            let x_3153 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3152.x, x_3152.y, x_3153.z, x_3153.w);
            let x_3156 : f32 = u_xlat16.y;
            u_xlat13.z = x_3156;
            let x_3159 : vec4<f32> = u_xlat11;
            let x_3162 : vec4<f32> = x_558.x_AdditionalShadowmapSize;
            let x_3165 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3159.x, x_3159.y, x_3159.x, x_3159.y) * vec4<f32>(x_3162.x, x_3162.y, x_3162.x, x_3162.y)) + vec4<f32>(x_3165.x, x_3165.y, x_3165.x, x_3165.z));
            let x_3169 : f32 = u_xlat14.w;
            u_xlat16.y = x_3169;
            let x_3172 : vec4<f32> = u_xlat11;
            let x_3175 : vec4<f32> = x_558.x_AdditionalShadowmapSize;
            let x_3178 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3172.x, x_3172.y, x_3172.x, x_3172.y) * vec4<f32>(x_3175.x, x_3175.y, x_3175.x, x_3175.y)) + vec4<f32>(x_3178.x, x_3178.y, x_3178.z, x_3178.y));
            let x_3182 : vec4<f32> = u_xlat11;
            let x_3185 : vec4<f32> = x_558.x_AdditionalShadowmapSize;
            let x_3188 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3182.x, x_3182.y) * vec2<f32>(x_3185.x, x_3185.y)) + vec2<f32>(x_3188.w, x_3188.y));
            let x_3192 : f32 = u_xlat16.y;
            u_xlat13.w = x_3192;
            let x_3195 : vec4<f32> = u_xlat11;
            let x_3198 : vec4<f32> = x_558.x_AdditionalShadowmapSize;
            let x_3201 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3195.x, x_3195.y) * vec2<f32>(x_3198.x, x_3198.y)) + vec2<f32>(x_3201.x, x_3201.w));
            let x_3204 : vec4<f32> = u_xlat16;
            let x_3205 : vec3<f32> = vec3<f32>(x_3204.x, x_3204.z, x_3204.w);
            let x_3206 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3205.x, x_3206.y, x_3205.y, x_3205.z);
            let x_3208 : vec4<f32> = u_xlat11;
            let x_3211 : vec4<f32> = x_558.x_AdditionalShadowmapSize;
            let x_3214 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3208.x, x_3208.y, x_3208.x, x_3208.y) * vec4<f32>(x_3211.x, x_3211.y, x_3211.x, x_3211.y)) + vec4<f32>(x_3214.x, x_3214.y, x_3214.z, x_3214.y));
            let x_3217 : vec4<f32> = u_xlat11;
            let x_3220 : vec4<f32> = x_558.x_AdditionalShadowmapSize;
            let x_3223 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3217.x, x_3217.y) * vec2<f32>(x_3220.x, x_3220.y)) + vec2<f32>(x_3223.w, x_3223.y));
            let x_3227 : f32 = u_xlat13.x;
            u_xlat14.x = x_3227;
            let x_3229 : vec4<f32> = u_xlat11;
            let x_3232 : vec4<f32> = x_558.x_AdditionalShadowmapSize;
            let x_3235 : vec4<f32> = u_xlat14;
            let x_3237 : vec2<f32> = ((vec2<f32>(x_3229.x, x_3229.y) * vec2<f32>(x_3232.x, x_3232.y)) + vec2<f32>(x_3235.x, x_3235.y));
            let x_3238 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3237.x, x_3237.y, x_3238.z, x_3238.w);
            let x_3241 : vec4<f32> = u_xlat12;
            let x_3243 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3241.x, x_3241.x, x_3241.x, x_3241.x) * x_3243);
            let x_3246 : vec4<f32> = u_xlat12;
            let x_3248 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3246.y, x_3246.y, x_3246.y, x_3246.y) * x_3248);
            let x_3251 : vec4<f32> = u_xlat12;
            let x_3253 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3251.z, x_3251.z, x_3251.z, x_3251.z) * x_3253);
            let x_3255 : vec4<f32> = u_xlat12;
            let x_3257 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3255.w, x_3255.w, x_3255.w, x_3255.w) * x_3257);
            let x_3260 : vec4<f32> = u_xlat17;
            let x_3261 : vec2<f32> = vec2<f32>(x_3260.x, x_3260.y);
            let x_3263 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3261.x, x_3261.y, x_3263);
            let x_3270 : vec3<f32> = txVec43;
            let x_3272 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3270.xy, x_3270.z);
            u_xlat83 = x_3272;
            let x_3274 : vec4<f32> = u_xlat17;
            let x_3275 : vec2<f32> = vec2<f32>(x_3274.z, x_3274.w);
            let x_3277 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3275.x, x_3275.y, x_3277);
            let x_3284 : vec3<f32> = txVec44;
            let x_3286 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3284.xy, x_3284.z);
            u_xlat84 = x_3286;
            let x_3287 : f32 = u_xlat84;
            let x_3289 : f32 = u_xlat22.y;
            u_xlat84 = (x_3287 * x_3289);
            let x_3292 : f32 = u_xlat22.x;
            let x_3293 : f32 = u_xlat83;
            let x_3295 : f32 = u_xlat84;
            u_xlat83 = ((x_3292 * x_3293) + x_3295);
            let x_3298 : vec2<f32> = u_xlat61;
            let x_3300 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3298.x, x_3298.y, x_3300);
            let x_3307 : vec3<f32> = txVec45;
            let x_3309 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3307.xy, x_3307.z);
            u_xlat84 = x_3309;
            let x_3311 : f32 = u_xlat22.z;
            let x_3312 : f32 = u_xlat84;
            let x_3314 : f32 = u_xlat83;
            u_xlat83 = ((x_3311 * x_3312) + x_3314);
            let x_3317 : vec4<f32> = u_xlat20;
            let x_3318 : vec2<f32> = vec2<f32>(x_3317.x, x_3317.y);
            let x_3320 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3318.x, x_3318.y, x_3320);
            let x_3327 : vec3<f32> = txVec46;
            let x_3329 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3327.xy, x_3327.z);
            u_xlat84 = x_3329;
            let x_3331 : f32 = u_xlat22.w;
            let x_3332 : f32 = u_xlat84;
            let x_3334 : f32 = u_xlat83;
            u_xlat83 = ((x_3331 * x_3332) + x_3334);
            let x_3337 : vec4<f32> = u_xlat18;
            let x_3338 : vec2<f32> = vec2<f32>(x_3337.x, x_3337.y);
            let x_3340 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3338.x, x_3338.y, x_3340);
            let x_3347 : vec3<f32> = txVec47;
            let x_3349 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3347.xy, x_3347.z);
            u_xlat84 = x_3349;
            let x_3351 : f32 = u_xlat23.x;
            let x_3352 : f32 = u_xlat84;
            let x_3354 : f32 = u_xlat83;
            u_xlat83 = ((x_3351 * x_3352) + x_3354);
            let x_3357 : vec4<f32> = u_xlat18;
            let x_3358 : vec2<f32> = vec2<f32>(x_3357.z, x_3357.w);
            let x_3360 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3358.x, x_3358.y, x_3360);
            let x_3367 : vec3<f32> = txVec48;
            let x_3369 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3367.xy, x_3367.z);
            u_xlat84 = x_3369;
            let x_3371 : f32 = u_xlat23.y;
            let x_3372 : f32 = u_xlat84;
            let x_3374 : f32 = u_xlat83;
            u_xlat83 = ((x_3371 * x_3372) + x_3374);
            let x_3377 : vec4<f32> = u_xlat19;
            let x_3378 : vec2<f32> = vec2<f32>(x_3377.x, x_3377.y);
            let x_3380 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3378.x, x_3378.y, x_3380);
            let x_3387 : vec3<f32> = txVec49;
            let x_3389 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3387.xy, x_3387.z);
            u_xlat84 = x_3389;
            let x_3391 : f32 = u_xlat23.z;
            let x_3392 : f32 = u_xlat84;
            let x_3394 : f32 = u_xlat83;
            u_xlat83 = ((x_3391 * x_3392) + x_3394);
            let x_3397 : vec4<f32> = u_xlat20;
            let x_3398 : vec2<f32> = vec2<f32>(x_3397.z, x_3397.w);
            let x_3400 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3398.x, x_3398.y, x_3400);
            let x_3407 : vec3<f32> = txVec50;
            let x_3409 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3407.xy, x_3407.z);
            u_xlat84 = x_3409;
            let x_3411 : f32 = u_xlat23.w;
            let x_3412 : f32 = u_xlat84;
            let x_3414 : f32 = u_xlat83;
            u_xlat83 = ((x_3411 * x_3412) + x_3414);
            let x_3417 : vec4<f32> = u_xlat21;
            let x_3418 : vec2<f32> = vec2<f32>(x_3417.x, x_3417.y);
            let x_3420 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3418.x, x_3418.y, x_3420);
            let x_3427 : vec3<f32> = txVec51;
            let x_3429 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3427.xy, x_3427.z);
            u_xlat84 = x_3429;
            let x_3431 : f32 = u_xlat24.x;
            let x_3432 : f32 = u_xlat84;
            let x_3434 : f32 = u_xlat83;
            u_xlat83 = ((x_3431 * x_3432) + x_3434);
            let x_3437 : vec4<f32> = u_xlat21;
            let x_3438 : vec2<f32> = vec2<f32>(x_3437.z, x_3437.w);
            let x_3440 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_3438.x, x_3438.y, x_3440);
            let x_3447 : vec3<f32> = txVec52;
            let x_3449 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3447.xy, x_3447.z);
            u_xlat84 = x_3449;
            let x_3451 : f32 = u_xlat24.y;
            let x_3452 : f32 = u_xlat84;
            let x_3454 : f32 = u_xlat83;
            u_xlat83 = ((x_3451 * x_3452) + x_3454);
            let x_3457 : vec2<f32> = u_xlat38;
            let x_3459 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_3457.x, x_3457.y, x_3459);
            let x_3466 : vec3<f32> = txVec53;
            let x_3468 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3466.xy, x_3466.z);
            u_xlat84 = x_3468;
            let x_3470 : f32 = u_xlat24.z;
            let x_3471 : f32 = u_xlat84;
            let x_3473 : f32 = u_xlat83;
            u_xlat83 = ((x_3470 * x_3471) + x_3473);
            let x_3476 : vec2<f32> = u_xlat69;
            let x_3478 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_3476.x, x_3476.y, x_3478);
            let x_3485 : vec3<f32> = txVec54;
            let x_3487 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3485.xy, x_3485.z);
            u_xlat84 = x_3487;
            let x_3489 : f32 = u_xlat24.w;
            let x_3490 : f32 = u_xlat84;
            let x_3492 : f32 = u_xlat83;
            u_xlat83 = ((x_3489 * x_3490) + x_3492);
            let x_3495 : vec4<f32> = u_xlat16;
            let x_3496 : vec2<f32> = vec2<f32>(x_3495.x, x_3495.y);
            let x_3498 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_3496.x, x_3496.y, x_3498);
            let x_3505 : vec3<f32> = txVec55;
            let x_3507 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3505.xy, x_3505.z);
            u_xlat84 = x_3507;
            let x_3509 : f32 = u_xlat12.x;
            let x_3510 : f32 = u_xlat84;
            let x_3512 : f32 = u_xlat83;
            u_xlat83 = ((x_3509 * x_3510) + x_3512);
            let x_3515 : vec4<f32> = u_xlat16;
            let x_3516 : vec2<f32> = vec2<f32>(x_3515.z, x_3515.w);
            let x_3518 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_3516.x, x_3516.y, x_3518);
            let x_3525 : vec3<f32> = txVec56;
            let x_3527 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3525.xy, x_3525.z);
            u_xlat84 = x_3527;
            let x_3529 : f32 = u_xlat12.y;
            let x_3530 : f32 = u_xlat84;
            let x_3532 : f32 = u_xlat83;
            u_xlat83 = ((x_3529 * x_3530) + x_3532);
            let x_3535 : vec2<f32> = u_xlat64;
            let x_3537 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_3535.x, x_3535.y, x_3537);
            let x_3544 : vec3<f32> = txVec57;
            let x_3546 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3544.xy, x_3544.z);
            u_xlat84 = x_3546;
            let x_3548 : f32 = u_xlat12.z;
            let x_3549 : f32 = u_xlat84;
            let x_3551 : f32 = u_xlat83;
            u_xlat83 = ((x_3548 * x_3549) + x_3551);
            let x_3554 : vec4<f32> = u_xlat11;
            let x_3555 : vec2<f32> = vec2<f32>(x_3554.x, x_3554.y);
            let x_3557 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_3555.x, x_3555.y, x_3557);
            let x_3564 : vec3<f32> = txVec58;
            let x_3566 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3564.xy, x_3564.z);
            u_xlat84 = x_3566;
            let x_3568 : f32 = u_xlat12.w;
            let x_3569 : f32 = u_xlat84;
            let x_3571 : f32 = u_xlat83;
            u_xlat82 = ((x_3568 * x_3569) + x_3571);
          }
        }
      } else {
        let x_3575 : vec4<f32> = u_xlat10;
        let x_3576 : vec2<f32> = vec2<f32>(x_3575.x, x_3575.y);
        let x_3578 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_3576.x, x_3576.y, x_3578);
        let x_3585 : vec3<f32> = txVec59;
        let x_3587 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3585.xy, x_3585.z);
        u_xlat82 = x_3587;
      }
      let x_3588 : i32 = u_xlati79;
      let x_3590 : f32 = x_558.x_AdditionalShadowParams[x_3588].x;
      u_xlat83 = (1.0f + -(x_3590));
      let x_3593 : f32 = u_xlat82;
      let x_3594 : i32 = u_xlati79;
      let x_3596 : f32 = x_558.x_AdditionalShadowParams[x_3594].x;
      let x_3598 : f32 = u_xlat83;
      u_xlat82 = ((x_3593 * x_3596) + x_3598);
      let x_3601 : f32 = u_xlat10.z;
      u_xlatb83 = (0.0f >= x_3601);
      let x_3605 : f32 = u_xlat10.z;
      u_xlatb84 = (x_3605 >= 1.0f);
      let x_3607 : bool = u_xlatb83;
      let x_3608 : bool = u_xlatb84;
      u_xlatb83 = (x_3607 | x_3608);
      let x_3610 : bool = u_xlatb83;
      let x_3611 : f32 = u_xlat82;
      u_xlat82 = select(x_3611, 1.0f, x_3610);
    } else {
      u_xlat82 = 1.0f;
    }
    let x_3614 : f32 = u_xlat82;
    u_xlat83 = (-(x_3614) + 1.0f);
    let x_3617 : f32 = u_xlat50;
    let x_3618 : f32 = u_xlat83;
    let x_3620 : f32 = u_xlat82;
    u_xlat82 = ((x_3617 * x_3618) + x_3620);
    let x_3622 : f32 = u_xlat80;
    let x_3623 : f32 = u_xlat82;
    u_xlat80 = (x_3622 * x_3623);
    let x_3625 : vec4<f32> = u_xlat3;
    let x_3627 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_3625.x, x_3625.y, x_3625.z), vec3<f32>(x_3627.x, x_3627.y, x_3627.z));
    let x_3630 : f32 = u_xlat82;
    u_xlat82 = clamp(x_3630, 0.0f, 1.0f);
    let x_3632 : f32 = u_xlat80;
    let x_3633 : f32 = u_xlat82;
    u_xlat80 = (x_3632 * x_3633);
    let x_3635 : f32 = u_xlat80;
    let x_3637 : i32 = u_xlati79;
    let x_3639 : vec4<f32> = x_2201.x_AdditionalLightsColor[x_3637];
    let x_3641 : vec3<f32> = (vec3<f32>(x_3635, x_3635, x_3635) * vec3<f32>(x_3639.x, x_3639.y, x_3639.z));
    let x_3642 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3641.x, x_3641.y, x_3641.z, x_3642.w);
    let x_3644 : vec4<f32> = u_xlat8;
    let x_3646 : f32 = u_xlat81;
    let x_3649 : vec3<f32> = u_xlat4;
    let x_3650 : vec3<f32> = ((vec3<f32>(x_3644.x, x_3644.y, x_3644.z) * vec3<f32>(x_3646, x_3646, x_3646)) + x_3649);
    let x_3651 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3650.x, x_3650.y, x_3650.z, x_3651.w);
    let x_3653 : vec4<f32> = u_xlat8;
    let x_3655 : vec4<f32> = u_xlat8;
    u_xlat79 = dot(vec3<f32>(x_3653.x, x_3653.y, x_3653.z), vec3<f32>(x_3655.x, x_3655.y, x_3655.z));
    let x_3658 : f32 = u_xlat79;
    u_xlat79 = max(x_3658, 1.17549435e-38f);
    let x_3660 : f32 = u_xlat79;
    u_xlat79 = inverseSqrt(x_3660);
    let x_3662 : f32 = u_xlat79;
    let x_3664 : vec4<f32> = u_xlat8;
    let x_3666 : vec3<f32> = (vec3<f32>(x_3662, x_3662, x_3662) * vec3<f32>(x_3664.x, x_3664.y, x_3664.z));
    let x_3667 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3666.x, x_3666.y, x_3666.z, x_3667.w);
    let x_3669 : vec4<f32> = u_xlat3;
    let x_3671 : vec4<f32> = u_xlat8;
    u_xlat79 = dot(vec3<f32>(x_3669.x, x_3669.y, x_3669.z), vec3<f32>(x_3671.x, x_3671.y, x_3671.z));
    let x_3674 : f32 = u_xlat79;
    u_xlat79 = clamp(x_3674, 0.0f, 1.0f);
    let x_3676 : vec4<f32> = u_xlat9;
    let x_3678 : vec4<f32> = u_xlat8;
    u_xlat80 = dot(vec3<f32>(x_3676.x, x_3676.y, x_3676.z), vec3<f32>(x_3678.x, x_3678.y, x_3678.z));
    let x_3681 : f32 = u_xlat80;
    u_xlat80 = clamp(x_3681, 0.0f, 1.0f);
    let x_3683 : f32 = u_xlat79;
    let x_3684 : f32 = u_xlat79;
    u_xlat79 = (x_3683 * x_3684);
    let x_3686 : f32 = u_xlat79;
    let x_3688 : f32 = u_xlat0.x;
    u_xlat79 = ((x_3686 * x_3688) + 1.00001001358032226562f);
    let x_3691 : f32 = u_xlat80;
    let x_3692 : f32 = u_xlat80;
    u_xlat80 = (x_3691 * x_3692);
    let x_3694 : f32 = u_xlat79;
    let x_3695 : f32 = u_xlat79;
    u_xlat79 = (x_3694 * x_3695);
    let x_3697 : f32 = u_xlat80;
    u_xlat80 = max(x_3697, 0.10000000149011611938f);
    let x_3699 : f32 = u_xlat79;
    let x_3700 : f32 = u_xlat80;
    u_xlat79 = (x_3699 * x_3700);
    let x_3702 : f32 = u_xlat77;
    let x_3703 : f32 = u_xlat79;
    u_xlat79 = (x_3702 * x_3703);
    let x_3706 : f32 = u_xlat1.x;
    let x_3707 : f32 = u_xlat79;
    u_xlat79 = (x_3706 / x_3707);
    let x_3709 : vec3<f32> = u_xlat2;
    let x_3710 : f32 = u_xlat79;
    let x_3713 : vec3<f32> = u_xlat5;
    let x_3714 : vec3<f32> = ((x_3709 * vec3<f32>(x_3710, x_3710, x_3710)) + x_3713);
    let x_3715 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3714.x, x_3714.y, x_3714.z, x_3715.w);
    let x_3717 : vec4<f32> = u_xlat8;
    let x_3719 : vec4<f32> = u_xlat10;
    let x_3722 : vec4<f32> = u_xlat7;
    let x_3724 : vec3<f32> = ((vec3<f32>(x_3717.x, x_3717.y, x_3717.z) * vec3<f32>(x_3719.x, x_3719.y, x_3719.z)) + vec3<f32>(x_3722.x, x_3722.y, x_3722.z));
    let x_3725 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3724.x, x_3724.y, x_3724.z, x_3725.w);

    continuing {
      let x_3727 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3727 + bitcast<u32>(1i));
    }
  }
  let x_3729 : vec3<f32> = u_xlat26;
  let x_3730 : f32 = u_xlat75;
  let x_3733 : vec4<f32> = u_xlat6;
  let x_3735 : vec3<f32> = ((x_3729 * vec3<f32>(x_3730, x_3730, x_3730)) + vec3<f32>(x_3733.x, x_3733.y, x_3733.z));
  let x_3736 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3735.x, x_3735.y, x_3735.z, x_3736.w);
  let x_3740 : vec4<f32> = u_xlat7;
  let x_3742 : vec4<f32> = u_xlat0;
  let x_3744 : vec3<f32> = (vec3<f32>(x_3740.x, x_3740.y, x_3740.z) + vec3<f32>(x_3742.x, x_3742.y, x_3742.z));
  let x_3745 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3744.x, x_3744.y, x_3744.z, x_3745.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(2) vs_INTERP5_param : vec4<f32>, @location(1) vs_INTERP4_param : vec4<f32>, @location(4) vs_INTERP8_param : vec3<f32>, @location(3) vs_INTERP7_param : vec3<f32>, @location(0) vs_INTERP3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP7 = vs_INTERP7_param;
  vs_INTERP3 = vs_INTERP3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


