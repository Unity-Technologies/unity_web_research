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
  x_BaseMap_ST : vec4<f32>,
  /* @offset(16) */
  x_DetailAlbedoMap_ST : vec4<f32>,
  /* @offset(32) */
  x_BaseColor : vec4<f32>,
  /* @offset(48) */
  x_SpecColor : vec4<f32>,
  /* @offset(64) */
  x_EmissionColor : vec4<f32>,
  /* @offset(80) */
  x_Cutoff : f32,
  /* @offset(84) */
  x_Smoothness : f32,
  /* @offset(88) */
  x_Metallic : f32,
  /* @offset(92) */
  x_BumpScale : f32,
  /* @offset(96) */
  x_Parallax : f32,
  /* @offset(100) */
  x_OcclusionStrength : f32,
  /* @offset(104) */
  x_ClearCoatMask : f32,
  /* @offset(108) */
  x_ClearCoatSmoothness : f32,
  /* @offset(112) */
  x_DetailAlbedoMapScale : f32,
  /* @offset(116) */
  x_DetailNormalMapScale : f32,
  /* @offset(120) */
  x_Surface : f32,
}

alias Arr = array<mat4x4<f32>, 5u>;

alias Arr_1 = array<vec4<f32>, 32u>;

alias Arr_2 = array<mat4x4<f32>, 32u>;

alias Arr_3 = array<vec4<f32>, 32u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr,
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
  x_AdditionalShadowParams : Arr_3,
  /* @offset(1040) */
  x_AdditionalLightsWorldToShadow : Arr_2,
}

alias Arr_4 = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr_4,
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
  x_AdditionalLightsPosition : Arr_3,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_3,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_3,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_3,
  /* @offset(2048) */
  x_AdditionalLightsOcclusionProbes : Arr_3,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_9,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(5) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_42 : UnityPerMaterial;

var<private> u_xlatb75 : bool;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat77 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat75 : f32;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_148 : LightShadows;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlatb4 : vec4<bool>;

var<private> u_xlatu75 : u32;

var<private> u_xlati75 : i32;

@group(1) @binding(2) var<uniform> x_341 : UnityPerDraw;

var<private> u_xlat26 : vec3<f32>;

var<private> u_xlat78 : f32;

var<private> u_xlat79 : f32;

var<private> u_xlat80 : f32;

var<private> u_xlatb6 : bool;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb31 : bool;

var<private> u_xlat31 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

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

var<private> u_xlatb29 : bool;

var<private> u_xlatb54 : bool;

var<private> u_xlat29 : f32;

var<private> u_xlat54 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(4) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat32 : vec3<f32>;

var<private> u_xlatu81 : u32;

var<private> u_xlati8 : i32;

var<private> u_xlati81 : i32;

@group(1) @binding(1) var<uniform> x_2101 : AdditionalLights;

var<private> u_xlat83 : f32;

var<private> u_xlat34 : vec3<f32>;

var<private> u_xlati10 : i32;

var<private> u_xlatb35 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat35 : f32;

var<private> u_xlatb85 : bool;

@group(0) @binding(3) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu78 : u32;

var<private> u_xlatb81 : bool;

fn main_1() {
  var x_90 : f32;
  var x_103 : f32;
  var x_116 : f32;
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
  var x_1765 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2249 : f32;
  var x_2262 : f32;
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
  var x_3595 : f32;
  var x_3758 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_35);
  u_xlat0 = x_36;
  let x_38 : vec4<f32> = u_xlat0;
  let x_46 : vec4<f32> = x_42.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_38.w, x_38.x, x_38.y, x_38.z) * vec4<f32>(x_46.w, x_46.x, x_46.y, x_46.z));
  let x_55 : f32 = x_28.unity_OrthoParams.w;
  u_xlatb75 = (x_55 == 0.0f);
  let x_61 : vec3<f32> = vs_TEXCOORD1;
  let x_66 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_67 : vec3<f32> = (-(x_61) + x_66);
  let x_68 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_67.x, x_67.y, x_67.z, x_68.w);
  let x_72 : vec4<f32> = u_xlat2;
  let x_74 : vec4<f32> = u_xlat2;
  u_xlat77 = dot(vec3<f32>(x_72.x, x_72.y, x_72.z), vec3<f32>(x_74.x, x_74.y, x_74.z));
  let x_77 : f32 = u_xlat77;
  u_xlat77 = inverseSqrt(x_77);
  let x_79 : f32 = u_xlat77;
  let x_81 : vec4<f32> = u_xlat2;
  let x_83 : vec3<f32> = (vec3<f32>(x_79, x_79, x_79) * vec3<f32>(x_81.x, x_81.y, x_81.z));
  let x_84 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_83.x, x_83.y, x_83.z, x_84.w);
  let x_88 : bool = u_xlatb75;
  if (x_88) {
    let x_94 : f32 = u_xlat2.x;
    x_90 = x_94;
  } else {
    let x_99 : f32 = x_28.unity_MatrixV[0i].z;
    x_90 = x_99;
  }
  let x_100 : f32 = x_90;
  u_xlat3.x = x_100;
  let x_102 : bool = u_xlatb75;
  if (x_102) {
    let x_108 : f32 = u_xlat2.y;
    x_103 = x_108;
  } else {
    let x_112 : f32 = x_28.unity_MatrixV[1i].z;
    x_103 = x_112;
  }
  let x_113 : f32 = x_103;
  u_xlat3.y = x_113;
  let x_115 : bool = u_xlatb75;
  if (x_115) {
    let x_120 : f32 = u_xlat2.z;
    x_116 = x_120;
  } else {
    let x_123 : f32 = x_28.unity_MatrixV[2i].z;
    x_116 = x_123;
  }
  let x_124 : f32 = x_116;
  u_xlat3.z = x_124;
  let x_128 : vec3<f32> = vs_TEXCOORD2;
  let x_129 : vec3<f32> = vs_TEXCOORD2;
  u_xlat75 = dot(x_128, x_129);
  let x_131 : f32 = u_xlat75;
  u_xlat75 = inverseSqrt(x_131);
  let x_133 : f32 = u_xlat75;
  let x_135 : vec3<f32> = vs_TEXCOORD2;
  let x_136 : vec3<f32> = (vec3<f32>(x_133, x_133, x_133) * x_135);
  let x_137 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_136.x, x_136.y, x_136.z, x_137.w);
  let x_140 : vec3<f32> = vs_TEXCOORD1;
  let x_150 : vec4<f32> = x_148.x_CascadeShadowSplitSpheres0;
  let x_153 : vec3<f32> = (x_140 + -(vec3<f32>(x_150.x, x_150.y, x_150.z)));
  let x_154 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_153.x, x_153.y, x_153.z, x_154.w);
  let x_157 : vec3<f32> = vs_TEXCOORD1;
  let x_159 : vec4<f32> = x_148.x_CascadeShadowSplitSpheres1;
  let x_162 : vec3<f32> = (x_157 + -(vec3<f32>(x_159.x, x_159.y, x_159.z)));
  let x_163 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_162.x, x_162.y, x_162.z, x_163.w);
  let x_166 : vec3<f32> = vs_TEXCOORD1;
  let x_169 : vec4<f32> = x_148.x_CascadeShadowSplitSpheres2;
  let x_172 : vec3<f32> = (x_166 + -(vec3<f32>(x_169.x, x_169.y, x_169.z)));
  let x_173 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_172.x, x_172.y, x_172.z, x_173.w);
  let x_176 : vec3<f32> = vs_TEXCOORD1;
  let x_178 : vec4<f32> = x_148.x_CascadeShadowSplitSpheres3;
  let x_181 : vec3<f32> = (x_176 + -(vec3<f32>(x_178.x, x_178.y, x_178.z)));
  let x_182 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_181.x, x_181.y, x_181.z, x_182.w);
  let x_184 : vec4<f32> = u_xlat4;
  let x_186 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_184.x, x_184.y, x_184.z), vec3<f32>(x_186.x, x_186.y, x_186.z));
  let x_190 : vec4<f32> = u_xlat5;
  let x_192 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_190.x, x_190.y, x_190.z), vec3<f32>(x_192.x, x_192.y, x_192.z));
  let x_196 : vec4<f32> = u_xlat6;
  let x_198 : vec4<f32> = u_xlat6;
  u_xlat4.z = dot(vec3<f32>(x_196.x, x_196.y, x_196.z), vec3<f32>(x_198.x, x_198.y, x_198.z));
  let x_202 : vec4<f32> = u_xlat7;
  let x_204 : vec4<f32> = u_xlat7;
  u_xlat4.w = dot(vec3<f32>(x_202.x, x_202.y, x_202.z), vec3<f32>(x_204.x, x_204.y, x_204.z));
  let x_211 : vec4<f32> = u_xlat4;
  let x_213 : vec4<f32> = x_148.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_211 < x_213);
  let x_216 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_216);
  let x_221 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_221);
  let x_225 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_225);
  let x_229 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_229);
  let x_233 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_233);
  let x_239 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_239);
  let x_243 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_243);
  let x_246 : vec4<f32> = u_xlat4;
  let x_248 : vec4<f32> = u_xlat5;
  let x_250 : vec3<f32> = (vec3<f32>(x_246.x, x_246.y, x_246.z) + vec3<f32>(x_248.y, x_248.z, x_248.w));
  let x_251 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_250.x, x_250.y, x_250.z, x_251.w);
  let x_253 : vec4<f32> = u_xlat4;
  let x_256 : vec3<f32> = max(vec3<f32>(x_253.x, x_253.y, x_253.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_257 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_257.x, x_256.x, x_256.y, x_256.z);
  let x_259 : vec4<f32> = u_xlat5;
  u_xlat75 = dot(x_259, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_265 : f32 = u_xlat75;
  u_xlat75 = (-(x_265) + 4.0f);
  let x_270 : f32 = u_xlat75;
  u_xlatu75 = u32(x_270);
  let x_274 : u32 = u_xlatu75;
  u_xlati75 = (bitcast<i32>(x_274) << bitcast<u32>(2i));
  let x_277 : vec3<f32> = vs_TEXCOORD1;
  let x_279 : i32 = u_xlati75;
  let x_282 : i32 = u_xlati75;
  let x_286 : vec4<f32> = x_148.x_MainLightWorldToShadow[((x_279 + 1i) / 4i)][((x_282 + 1i) % 4i)];
  let x_288 : vec3<f32> = (vec3<f32>(x_277.y, x_277.y, x_277.y) * vec3<f32>(x_286.x, x_286.y, x_286.z));
  let x_289 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_288.x, x_288.y, x_288.z, x_289.w);
  let x_291 : i32 = u_xlati75;
  let x_293 : i32 = u_xlati75;
  let x_296 : vec4<f32> = x_148.x_MainLightWorldToShadow[(x_291 / 4i)][(x_293 % 4i)];
  let x_298 : vec3<f32> = vs_TEXCOORD1;
  let x_301 : vec4<f32> = u_xlat4;
  let x_303 : vec3<f32> = ((vec3<f32>(x_296.x, x_296.y, x_296.z) * vec3<f32>(x_298.x, x_298.x, x_298.x)) + vec3<f32>(x_301.x, x_301.y, x_301.z));
  let x_304 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_303.x, x_303.y, x_303.z, x_304.w);
  let x_306 : i32 = u_xlati75;
  let x_309 : i32 = u_xlati75;
  let x_313 : vec4<f32> = x_148.x_MainLightWorldToShadow[((x_306 + 2i) / 4i)][((x_309 + 2i) % 4i)];
  let x_315 : vec3<f32> = vs_TEXCOORD1;
  let x_318 : vec4<f32> = u_xlat4;
  let x_320 : vec3<f32> = ((vec3<f32>(x_313.x, x_313.y, x_313.z) * vec3<f32>(x_315.z, x_315.z, x_315.z)) + vec3<f32>(x_318.x, x_318.y, x_318.z));
  let x_321 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_320.x, x_320.y, x_320.z, x_321.w);
  let x_323 : vec4<f32> = u_xlat4;
  let x_325 : i32 = u_xlati75;
  let x_328 : i32 = u_xlati75;
  let x_332 : vec4<f32> = x_148.x_MainLightWorldToShadow[((x_325 + 3i) / 4i)][((x_328 + 3i) % 4i)];
  let x_334 : vec3<f32> = (vec3<f32>(x_323.x, x_323.y, x_323.z) + vec3<f32>(x_332.x, x_332.y, x_332.z));
  let x_335 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  u_xlat2.w = 1.0f;
  let x_344 : vec4<f32> = x_341.unity_SHAr;
  let x_345 : vec4<f32> = u_xlat2;
  u_xlat5.x = dot(x_344, x_345);
  let x_350 : vec4<f32> = x_341.unity_SHAg;
  let x_351 : vec4<f32> = u_xlat2;
  u_xlat5.y = dot(x_350, x_351);
  let x_356 : vec4<f32> = x_341.unity_SHAb;
  let x_357 : vec4<f32> = u_xlat2;
  u_xlat5.z = dot(x_356, x_357);
  let x_360 : vec4<f32> = u_xlat2;
  let x_362 : vec4<f32> = u_xlat2;
  u_xlat6 = (vec4<f32>(x_360.y, x_360.z, x_360.z, x_360.x) * vec4<f32>(x_362.x, x_362.y, x_362.z, x_362.z));
  let x_367 : vec4<f32> = x_341.unity_SHBr;
  let x_368 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_367, x_368);
  let x_373 : vec4<f32> = x_341.unity_SHBg;
  let x_374 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_373, x_374);
  let x_379 : vec4<f32> = x_341.unity_SHBb;
  let x_380 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_379, x_380);
  let x_384 : f32 = u_xlat2.y;
  let x_386 : f32 = u_xlat2.y;
  u_xlat75 = (x_384 * x_386);
  let x_389 : f32 = u_xlat2.x;
  let x_391 : f32 = u_xlat2.x;
  let x_393 : f32 = u_xlat75;
  u_xlat75 = ((x_389 * x_391) + -(x_393));
  let x_398 : vec4<f32> = x_341.unity_SHC;
  let x_400 : f32 = u_xlat75;
  let x_403 : vec4<f32> = u_xlat7;
  let x_405 : vec3<f32> = ((vec3<f32>(x_398.x, x_398.y, x_398.z) * vec3<f32>(x_400, x_400, x_400)) + vec3<f32>(x_403.x, x_403.y, x_403.z));
  let x_406 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_405.x, x_405.y, x_405.z, x_406.w);
  let x_408 : vec4<f32> = u_xlat5;
  let x_410 : vec4<f32> = u_xlat6;
  let x_412 : vec3<f32> = (vec3<f32>(x_408.x, x_408.y, x_408.z) + vec3<f32>(x_410.x, x_410.y, x_410.z));
  let x_413 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_412.x, x_412.y, x_412.z, x_413.w);
  let x_415 : vec4<f32> = u_xlat5;
  let x_417 : vec3<f32> = max(vec3<f32>(x_415.x, x_415.y, x_415.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_418 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_417.x, x_417.y, x_417.z, x_418.w);
  let x_422 : f32 = x_42.x_Metallic;
  u_xlat75 = ((-(x_422) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_427 : f32 = u_xlat75;
  u_xlat77 = (-(x_427) + 1.0f);
  let x_431 : f32 = u_xlat75;
  let x_433 : vec4<f32> = u_xlat1;
  u_xlat26 = (vec3<f32>(x_431, x_431, x_431) * vec3<f32>(x_433.y, x_433.z, x_433.w));
  let x_436 : vec4<f32> = u_xlat0;
  let x_439 : vec4<f32> = x_42.x_BaseColor;
  let x_444 : vec3<f32> = ((vec3<f32>(x_436.x, x_436.y, x_436.z) * vec3<f32>(x_439.x, x_439.y, x_439.z)) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_445 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_444.x, x_444.y, x_444.z, x_445.w);
  let x_448 : f32 = x_42.x_Metallic;
  let x_450 : f32 = x_42.x_Metallic;
  let x_452 : f32 = x_42.x_Metallic;
  let x_453 : vec3<f32> = vec3<f32>(x_448, x_450, x_452);
  let x_458 : vec4<f32> = u_xlat0;
  let x_463 : vec3<f32> = ((vec3<f32>(x_453.x, x_453.y, x_453.z) * vec3<f32>(x_458.x, x_458.y, x_458.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_464 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_463.x, x_463.y, x_463.z, x_464.w);
  let x_467 : f32 = x_42.x_Smoothness;
  u_xlat75 = (-(x_467) + 1.0f);
  let x_471 : f32 = u_xlat75;
  let x_472 : f32 = u_xlat75;
  u_xlat78 = (x_471 * x_472);
  let x_474 : f32 = u_xlat78;
  u_xlat78 = max(x_474, 0.0078125f);
  let x_478 : f32 = u_xlat78;
  let x_479 : f32 = u_xlat78;
  u_xlat79 = (x_478 * x_479);
  let x_481 : f32 = u_xlat77;
  let x_483 : f32 = x_42.x_Smoothness;
  u_xlat77 = (x_481 + x_483);
  let x_485 : f32 = u_xlat77;
  u_xlat77 = clamp(x_485, 0.0f, 1.0f);
  let x_488 : f32 = u_xlat78;
  u_xlat80 = ((x_488 * 4.0f) + 2.0f);
  let x_494 : f32 = x_148.x_MainLightShadowParams.y;
  u_xlatb6 = (0.0f < x_494);
  let x_496 : bool = u_xlatb6;
  if (x_496) {
    let x_500 : f32 = x_148.x_MainLightShadowParams.y;
    u_xlatb6 = (x_500 == 1.0f);
    let x_502 : bool = u_xlatb6;
    if (x_502) {
      let x_505 : vec4<f32> = u_xlat4;
      let x_508 : vec4<f32> = x_148.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_505.x, x_505.y, x_505.x, x_505.y) + x_508);
      let x_512 : vec4<f32> = u_xlat6;
      let x_513 : vec2<f32> = vec2<f32>(x_512.x, x_512.y);
      let x_515 : f32 = u_xlat4.z;
      txVec0 = vec3<f32>(x_513.x, x_513.y, x_515);
      let x_527 : vec3<f32> = txVec0;
      let x_529 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_527.xy, x_527.z);
      u_xlat7.x = x_529;
      let x_532 : vec4<f32> = u_xlat6;
      let x_533 : vec2<f32> = vec2<f32>(x_532.z, x_532.w);
      let x_535 : f32 = u_xlat4.z;
      txVec1 = vec3<f32>(x_533.x, x_533.y, x_535);
      let x_542 : vec3<f32> = txVec1;
      let x_544 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_542.xy, x_542.z);
      u_xlat7.y = x_544;
      let x_546 : vec4<f32> = u_xlat4;
      let x_549 : vec4<f32> = x_148.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_546.x, x_546.y, x_546.x, x_546.y) + x_549);
      let x_552 : vec4<f32> = u_xlat6;
      let x_553 : vec2<f32> = vec2<f32>(x_552.x, x_552.y);
      let x_555 : f32 = u_xlat4.z;
      txVec2 = vec3<f32>(x_553.x, x_553.y, x_555);
      let x_562 : vec3<f32> = txVec2;
      let x_564 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_562.xy, x_562.z);
      u_xlat7.z = x_564;
      let x_567 : vec4<f32> = u_xlat6;
      let x_568 : vec2<f32> = vec2<f32>(x_567.z, x_567.w);
      let x_570 : f32 = u_xlat4.z;
      txVec3 = vec3<f32>(x_568.x, x_568.y, x_570);
      let x_577 : vec3<f32> = txVec3;
      let x_579 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_577.xy, x_577.z);
      u_xlat7.w = x_579;
      let x_581 : vec4<f32> = u_xlat7;
      u_xlat6.x = dot(x_581, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_589 : f32 = x_148.x_MainLightShadowParams.y;
      u_xlatb31 = (x_589 == 2.0f);
      let x_591 : bool = u_xlatb31;
      if (x_591) {
        let x_596 : vec4<f32> = u_xlat4;
        let x_600 : vec4<f32> = x_148.x_MainLightShadowmapSize;
        u_xlat31 = ((vec2<f32>(x_596.x, x_596.y) * vec2<f32>(x_600.z, x_600.w)) + vec2<f32>(0.5f, 0.5f));
        let x_606 : vec2<f32> = u_xlat31;
        u_xlat31 = floor(x_606);
        let x_608 : vec4<f32> = u_xlat4;
        let x_611 : vec4<f32> = x_148.x_MainLightShadowmapSize;
        let x_614 : vec2<f32> = u_xlat31;
        let x_616 : vec2<f32> = ((vec2<f32>(x_608.x, x_608.y) * vec2<f32>(x_611.z, x_611.w)) + -(x_614));
        let x_617 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_616.x, x_616.y, x_617.z, x_617.w);
        let x_620 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_620.x, x_620.x, x_620.y, x_620.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_625 : vec4<f32> = u_xlat8;
        let x_627 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_625.x, x_625.x, x_625.z, x_625.z) * vec4<f32>(x_627.x, x_627.x, x_627.z, x_627.z));
        let x_631 : vec4<f32> = u_xlat9;
        u_xlat57 = (vec2<f32>(x_631.y, x_631.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_636 : vec4<f32> = u_xlat9;
        let x_639 : vec4<f32> = u_xlat7;
        let x_642 : vec2<f32> = ((vec2<f32>(x_636.x, x_636.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_639.x, x_639.y)));
        let x_643 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_642.x, x_643.y, x_642.y, x_643.w);
        let x_645 : vec4<f32> = u_xlat7;
        let x_649 : vec2<f32> = (-(vec2<f32>(x_645.x, x_645.y)) + vec2<f32>(1.0f, 1.0f));
        let x_650 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_649.x, x_649.y, x_650.z, x_650.w);
        let x_653 : vec4<f32> = u_xlat7;
        u_xlat59 = min(vec2<f32>(x_653.x, x_653.y), vec2<f32>(0.0f, 0.0f));
        let x_657 : vec2<f32> = u_xlat59;
        let x_659 : vec2<f32> = u_xlat59;
        let x_661 : vec4<f32> = u_xlat9;
        u_xlat59 = ((-(x_657) * x_659) + vec2<f32>(x_661.x, x_661.y));
        let x_664 : vec4<f32> = u_xlat7;
        let x_666 : vec2<f32> = max(vec2<f32>(x_664.x, x_664.y), vec2<f32>(0.0f, 0.0f));
        let x_667 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_666.x, x_666.y, x_667.z, x_667.w);
        let x_669 : vec4<f32> = u_xlat7;
        let x_672 : vec4<f32> = u_xlat7;
        let x_675 : vec4<f32> = u_xlat8;
        let x_677 : vec2<f32> = ((-(vec2<f32>(x_669.x, x_669.y)) * vec2<f32>(x_672.x, x_672.y)) + vec2<f32>(x_675.y, x_675.w));
        let x_678 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_677.x, x_677.y, x_678.z, x_678.w);
        let x_680 : vec2<f32> = u_xlat59;
        u_xlat59 = (x_680 + vec2<f32>(1.0f, 1.0f));
        let x_682 : vec4<f32> = u_xlat7;
        let x_684 : vec2<f32> = (vec2<f32>(x_682.x, x_682.y) + vec2<f32>(1.0f, 1.0f));
        let x_685 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_684.x, x_684.y, x_685.z, x_685.w);
        let x_688 : vec4<f32> = u_xlat8;
        let x_692 : vec2<f32> = (vec2<f32>(x_688.x, x_688.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_693 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_692.x, x_692.y, x_693.z, x_693.w);
        let x_696 : vec4<f32> = u_xlat9;
        let x_698 : vec2<f32> = (vec2<f32>(x_696.x, x_696.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_699 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_698.x, x_698.y, x_699.z, x_699.w);
        let x_701 : vec2<f32> = u_xlat59;
        let x_702 : vec2<f32> = (x_701 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_703 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_702.x, x_702.y, x_703.z, x_703.w);
        let x_706 : vec4<f32> = u_xlat7;
        let x_708 : vec2<f32> = (vec2<f32>(x_706.x, x_706.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_709 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_708.x, x_708.y, x_709.z, x_709.w);
        let x_711 : vec4<f32> = u_xlat8;
        let x_713 : vec2<f32> = (vec2<f32>(x_711.y, x_711.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_714 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_713.x, x_713.y, x_714.z, x_714.w);
        let x_717 : f32 = u_xlat9.x;
        u_xlat10.z = x_717;
        let x_720 : f32 = u_xlat7.x;
        u_xlat10.w = x_720;
        let x_723 : f32 = u_xlat12.x;
        u_xlat11.z = x_723;
        let x_726 : f32 = u_xlat57.x;
        u_xlat11.w = x_726;
        let x_728 : vec4<f32> = u_xlat10;
        let x_730 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_728.z, x_728.w, x_728.x, x_728.z) + vec4<f32>(x_730.z, x_730.w, x_730.x, x_730.z));
        let x_734 : f32 = u_xlat10.y;
        u_xlat9.z = x_734;
        let x_737 : f32 = u_xlat7.y;
        u_xlat9.w = x_737;
        let x_740 : f32 = u_xlat11.y;
        u_xlat12.z = x_740;
        let x_743 : f32 = u_xlat57.y;
        u_xlat12.w = x_743;
        let x_745 : vec4<f32> = u_xlat9;
        let x_747 : vec4<f32> = u_xlat12;
        let x_749 : vec3<f32> = (vec3<f32>(x_745.z, x_745.y, x_745.w) + vec3<f32>(x_747.z, x_747.y, x_747.w));
        let x_750 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_749.x, x_749.y, x_749.z, x_750.w);
        let x_752 : vec4<f32> = u_xlat11;
        let x_754 : vec4<f32> = u_xlat8;
        let x_756 : vec3<f32> = (vec3<f32>(x_752.x, x_752.z, x_752.w) / vec3<f32>(x_754.z, x_754.w, x_754.y));
        let x_757 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_756.x, x_756.y, x_756.z, x_757.w);
        let x_759 : vec4<f32> = u_xlat9;
        let x_765 : vec3<f32> = (vec3<f32>(x_759.x, x_759.y, x_759.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_766 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_765.x, x_765.y, x_765.z, x_766.w);
        let x_768 : vec4<f32> = u_xlat12;
        let x_770 : vec4<f32> = u_xlat7;
        let x_772 : vec3<f32> = (vec3<f32>(x_768.z, x_768.y, x_768.w) / vec3<f32>(x_770.x, x_770.y, x_770.z));
        let x_773 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_772.x, x_772.y, x_772.z, x_773.w);
        let x_775 : vec4<f32> = u_xlat10;
        let x_777 : vec3<f32> = (vec3<f32>(x_775.x, x_775.y, x_775.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_778 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_777.x, x_777.y, x_777.z, x_778.w);
        let x_780 : vec4<f32> = u_xlat9;
        let x_783 : vec4<f32> = x_148.x_MainLightShadowmapSize;
        let x_785 : vec3<f32> = (vec3<f32>(x_780.y, x_780.x, x_780.z) * vec3<f32>(x_783.x, x_783.x, x_783.x));
        let x_786 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_785.x, x_785.y, x_785.z, x_786.w);
        let x_788 : vec4<f32> = u_xlat10;
        let x_791 : vec4<f32> = x_148.x_MainLightShadowmapSize;
        let x_793 : vec3<f32> = (vec3<f32>(x_788.x, x_788.y, x_788.z) * vec3<f32>(x_791.y, x_791.y, x_791.y));
        let x_794 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_793.x, x_793.y, x_793.z, x_794.w);
        let x_797 : f32 = u_xlat10.x;
        u_xlat9.w = x_797;
        let x_799 : vec2<f32> = u_xlat31;
        let x_802 : vec4<f32> = x_148.x_MainLightShadowmapSize;
        let x_805 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_799.x, x_799.y, x_799.x, x_799.y) * vec4<f32>(x_802.x, x_802.y, x_802.x, x_802.y)) + vec4<f32>(x_805.y, x_805.w, x_805.x, x_805.w));
        let x_808 : vec2<f32> = u_xlat31;
        let x_810 : vec4<f32> = x_148.x_MainLightShadowmapSize;
        let x_813 : vec4<f32> = u_xlat9;
        let x_815 : vec2<f32> = ((x_808 * vec2<f32>(x_810.x, x_810.y)) + vec2<f32>(x_813.z, x_813.w));
        let x_816 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_815.x, x_815.y, x_816.z, x_816.w);
        let x_819 : f32 = u_xlat9.y;
        u_xlat10.w = x_819;
        let x_821 : vec4<f32> = u_xlat10;
        let x_822 : vec2<f32> = vec2<f32>(x_821.y, x_821.z);
        let x_823 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_823.x, x_822.x, x_823.z, x_822.y);
        let x_826 : vec2<f32> = u_xlat31;
        let x_829 : vec4<f32> = x_148.x_MainLightShadowmapSize;
        let x_832 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_826.x, x_826.y, x_826.x, x_826.y) * vec4<f32>(x_829.x, x_829.y, x_829.x, x_829.y)) + vec4<f32>(x_832.x, x_832.y, x_832.z, x_832.y));
        let x_835 : vec2<f32> = u_xlat31;
        let x_838 : vec4<f32> = x_148.x_MainLightShadowmapSize;
        let x_841 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_835.x, x_835.y, x_835.x, x_835.y) * vec4<f32>(x_838.x, x_838.y, x_838.x, x_838.y)) + vec4<f32>(x_841.w, x_841.y, x_841.w, x_841.z));
        let x_844 : vec2<f32> = u_xlat31;
        let x_847 : vec4<f32> = x_148.x_MainLightShadowmapSize;
        let x_850 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_844.x, x_844.y, x_844.x, x_844.y) * vec4<f32>(x_847.x, x_847.y, x_847.x, x_847.y)) + vec4<f32>(x_850.x, x_850.w, x_850.z, x_850.w));
        let x_854 : vec4<f32> = u_xlat7;
        let x_856 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_854.x, x_854.x, x_854.x, x_854.y) * vec4<f32>(x_856.z, x_856.w, x_856.y, x_856.z));
        let x_860 : vec4<f32> = u_xlat7;
        let x_862 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_860.y, x_860.y, x_860.z, x_860.z) * x_862);
        let x_865 : f32 = u_xlat7.z;
        let x_867 : f32 = u_xlat8.y;
        u_xlat31.x = (x_865 * x_867);
        let x_871 : vec4<f32> = u_xlat11;
        let x_872 : vec2<f32> = vec2<f32>(x_871.x, x_871.y);
        let x_874 : f32 = u_xlat4.z;
        txVec4 = vec3<f32>(x_872.x, x_872.y, x_874);
        let x_882 : vec3<f32> = txVec4;
        let x_884 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_882.xy, x_882.z);
        u_xlat56 = x_884;
        let x_886 : vec4<f32> = u_xlat11;
        let x_887 : vec2<f32> = vec2<f32>(x_886.z, x_886.w);
        let x_889 : f32 = u_xlat4.z;
        txVec5 = vec3<f32>(x_887.x, x_887.y, x_889);
        let x_897 : vec3<f32> = txVec5;
        let x_899 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_897.xy, x_897.z);
        u_xlat81 = x_899;
        let x_900 : f32 = u_xlat81;
        let x_902 : f32 = u_xlat14.y;
        u_xlat81 = (x_900 * x_902);
        let x_905 : f32 = u_xlat14.x;
        let x_906 : f32 = u_xlat56;
        let x_908 : f32 = u_xlat81;
        u_xlat56 = ((x_905 * x_906) + x_908);
        let x_911 : vec4<f32> = u_xlat12;
        let x_912 : vec2<f32> = vec2<f32>(x_911.x, x_911.y);
        let x_914 : f32 = u_xlat4.z;
        txVec6 = vec3<f32>(x_912.x, x_912.y, x_914);
        let x_921 : vec3<f32> = txVec6;
        let x_923 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_921.xy, x_921.z);
        u_xlat81 = x_923;
        let x_925 : f32 = u_xlat14.z;
        let x_926 : f32 = u_xlat81;
        let x_928 : f32 = u_xlat56;
        u_xlat56 = ((x_925 * x_926) + x_928);
        let x_931 : vec4<f32> = u_xlat10;
        let x_932 : vec2<f32> = vec2<f32>(x_931.x, x_931.y);
        let x_934 : f32 = u_xlat4.z;
        txVec7 = vec3<f32>(x_932.x, x_932.y, x_934);
        let x_941 : vec3<f32> = txVec7;
        let x_943 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_941.xy, x_941.z);
        u_xlat81 = x_943;
        let x_945 : f32 = u_xlat14.w;
        let x_946 : f32 = u_xlat81;
        let x_948 : f32 = u_xlat56;
        u_xlat56 = ((x_945 * x_946) + x_948);
        let x_951 : vec4<f32> = u_xlat13;
        let x_952 : vec2<f32> = vec2<f32>(x_951.x, x_951.y);
        let x_954 : f32 = u_xlat4.z;
        txVec8 = vec3<f32>(x_952.x, x_952.y, x_954);
        let x_961 : vec3<f32> = txVec8;
        let x_963 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_961.xy, x_961.z);
        u_xlat81 = x_963;
        let x_965 : f32 = u_xlat15.x;
        let x_966 : f32 = u_xlat81;
        let x_968 : f32 = u_xlat56;
        u_xlat56 = ((x_965 * x_966) + x_968);
        let x_971 : vec4<f32> = u_xlat13;
        let x_972 : vec2<f32> = vec2<f32>(x_971.z, x_971.w);
        let x_974 : f32 = u_xlat4.z;
        txVec9 = vec3<f32>(x_972.x, x_972.y, x_974);
        let x_981 : vec3<f32> = txVec9;
        let x_983 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_981.xy, x_981.z);
        u_xlat81 = x_983;
        let x_985 : f32 = u_xlat15.y;
        let x_986 : f32 = u_xlat81;
        let x_988 : f32 = u_xlat56;
        u_xlat56 = ((x_985 * x_986) + x_988);
        let x_991 : vec4<f32> = u_xlat10;
        let x_992 : vec2<f32> = vec2<f32>(x_991.z, x_991.w);
        let x_994 : f32 = u_xlat4.z;
        txVec10 = vec3<f32>(x_992.x, x_992.y, x_994);
        let x_1001 : vec3<f32> = txVec10;
        let x_1003 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1001.xy, x_1001.z);
        u_xlat81 = x_1003;
        let x_1005 : f32 = u_xlat15.z;
        let x_1006 : f32 = u_xlat81;
        let x_1008 : f32 = u_xlat56;
        u_xlat56 = ((x_1005 * x_1006) + x_1008);
        let x_1011 : vec4<f32> = u_xlat9;
        let x_1012 : vec2<f32> = vec2<f32>(x_1011.x, x_1011.y);
        let x_1014 : f32 = u_xlat4.z;
        txVec11 = vec3<f32>(x_1012.x, x_1012.y, x_1014);
        let x_1021 : vec3<f32> = txVec11;
        let x_1023 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1021.xy, x_1021.z);
        u_xlat81 = x_1023;
        let x_1025 : f32 = u_xlat15.w;
        let x_1026 : f32 = u_xlat81;
        let x_1028 : f32 = u_xlat56;
        u_xlat56 = ((x_1025 * x_1026) + x_1028);
        let x_1031 : vec4<f32> = u_xlat9;
        let x_1032 : vec2<f32> = vec2<f32>(x_1031.z, x_1031.w);
        let x_1034 : f32 = u_xlat4.z;
        txVec12 = vec3<f32>(x_1032.x, x_1032.y, x_1034);
        let x_1041 : vec3<f32> = txVec12;
        let x_1043 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1041.xy, x_1041.z);
        u_xlat81 = x_1043;
        let x_1045 : f32 = u_xlat31.x;
        let x_1046 : f32 = u_xlat81;
        let x_1048 : f32 = u_xlat56;
        u_xlat6.x = ((x_1045 * x_1046) + x_1048);
      } else {
        let x_1052 : vec4<f32> = u_xlat4;
        let x_1055 : vec4<f32> = x_148.x_MainLightShadowmapSize;
        u_xlat31 = ((vec2<f32>(x_1052.x, x_1052.y) * vec2<f32>(x_1055.z, x_1055.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1059 : vec2<f32> = u_xlat31;
        u_xlat31 = floor(x_1059);
        let x_1061 : vec4<f32> = u_xlat4;
        let x_1064 : vec4<f32> = x_148.x_MainLightShadowmapSize;
        let x_1067 : vec2<f32> = u_xlat31;
        let x_1069 : vec2<f32> = ((vec2<f32>(x_1061.x, x_1061.y) * vec2<f32>(x_1064.z, x_1064.w)) + -(x_1067));
        let x_1070 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1069.x, x_1069.y, x_1070.z, x_1070.w);
        let x_1072 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1072.x, x_1072.x, x_1072.y, x_1072.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1075 : vec4<f32> = u_xlat8;
        let x_1077 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1075.x, x_1075.x, x_1075.z, x_1075.z) * vec4<f32>(x_1077.x, x_1077.x, x_1077.z, x_1077.z));
        let x_1080 : vec4<f32> = u_xlat9;
        let x_1084 : vec2<f32> = (vec2<f32>(x_1080.y, x_1080.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1085 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1085.x, x_1084.x, x_1085.z, x_1084.y);
        let x_1087 : vec4<f32> = u_xlat9;
        let x_1090 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_1087.x, x_1087.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1090.x, x_1090.y)));
        let x_1094 : vec4<f32> = u_xlat7;
        let x_1097 : vec2<f32> = (-(vec2<f32>(x_1094.x, x_1094.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1098 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1097.x, x_1098.y, x_1097.y, x_1098.w);
        let x_1100 : vec4<f32> = u_xlat7;
        let x_1102 : vec2<f32> = min(vec2<f32>(x_1100.x, x_1100.y), vec2<f32>(0.0f, 0.0f));
        let x_1103 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1102.x, x_1102.y, x_1103.z, x_1103.w);
        let x_1105 : vec4<f32> = u_xlat9;
        let x_1108 : vec4<f32> = u_xlat9;
        let x_1111 : vec4<f32> = u_xlat8;
        let x_1113 : vec2<f32> = ((-(vec2<f32>(x_1105.x, x_1105.y)) * vec2<f32>(x_1108.x, x_1108.y)) + vec2<f32>(x_1111.x, x_1111.z));
        let x_1114 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1113.x, x_1114.y, x_1113.y, x_1114.w);
        let x_1116 : vec4<f32> = u_xlat7;
        let x_1118 : vec2<f32> = max(vec2<f32>(x_1116.x, x_1116.y), vec2<f32>(0.0f, 0.0f));
        let x_1119 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1118.x, x_1118.y, x_1119.z, x_1119.w);
        let x_1121 : vec4<f32> = u_xlat9;
        let x_1124 : vec4<f32> = u_xlat9;
        let x_1127 : vec4<f32> = u_xlat8;
        let x_1129 : vec2<f32> = ((-(vec2<f32>(x_1121.x, x_1121.y)) * vec2<f32>(x_1124.x, x_1124.y)) + vec2<f32>(x_1127.y, x_1127.w));
        let x_1130 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1130.x, x_1129.x, x_1130.z, x_1129.y);
        let x_1132 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1132 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1136 : f32 = u_xlat8.y;
        u_xlat9.z = (x_1136 * 0.08163200318813323975f);
        let x_1140 : vec2<f32> = u_xlat57;
        let x_1143 : vec2<f32> = (vec2<f32>(x_1140.y, x_1140.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1144 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1143.x, x_1143.y, x_1144.z, x_1144.w);
        let x_1146 : vec4<f32> = u_xlat8;
        u_xlat57 = (vec2<f32>(x_1146.x, x_1146.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1150 : f32 = u_xlat8.w;
        u_xlat11.z = (x_1150 * 0.08163200318813323975f);
        let x_1154 : f32 = u_xlat11.y;
        u_xlat9.x = x_1154;
        let x_1156 : vec4<f32> = u_xlat7;
        let x_1163 : vec2<f32> = ((vec2<f32>(x_1156.x, x_1156.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1164 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1164.x, x_1163.x, x_1164.z, x_1163.y);
        let x_1166 : vec4<f32> = u_xlat7;
        let x_1170 : vec2<f32> = ((vec2<f32>(x_1166.x, x_1166.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1171 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1170.x, x_1171.y, x_1170.y, x_1171.w);
        let x_1174 : f32 = u_xlat57.x;
        u_xlat8.y = x_1174;
        let x_1177 : f32 = u_xlat10.y;
        u_xlat8.w = x_1177;
        let x_1179 : vec4<f32> = u_xlat8;
        let x_1180 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1179 + x_1180);
        let x_1182 : vec4<f32> = u_xlat7;
        let x_1185 : vec2<f32> = ((vec2<f32>(x_1182.y, x_1182.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1186 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1186.x, x_1185.x, x_1186.z, x_1185.y);
        let x_1188 : vec4<f32> = u_xlat7;
        let x_1191 : vec2<f32> = ((vec2<f32>(x_1188.y, x_1188.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1192 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1191.x, x_1192.y, x_1191.y, x_1192.w);
        let x_1195 : f32 = u_xlat57.y;
        u_xlat10.y = x_1195;
        let x_1197 : vec4<f32> = u_xlat10;
        let x_1198 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1197 + x_1198);
        let x_1200 : vec4<f32> = u_xlat8;
        let x_1201 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_1200 / x_1201);
        let x_1203 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1203 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1209 : vec4<f32> = u_xlat10;
        let x_1210 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_1209 / x_1210);
        let x_1212 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1212 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1214 : vec4<f32> = u_xlat8;
        let x_1217 : vec4<f32> = x_148.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1214.w, x_1214.x, x_1214.y, x_1214.z) * vec4<f32>(x_1217.x, x_1217.x, x_1217.x, x_1217.x));
        let x_1220 : vec4<f32> = u_xlat10;
        let x_1223 : vec4<f32> = x_148.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1220.x, x_1220.w, x_1220.y, x_1220.z) * vec4<f32>(x_1223.y, x_1223.y, x_1223.y, x_1223.y));
        let x_1226 : vec4<f32> = u_xlat8;
        let x_1227 : vec3<f32> = vec3<f32>(x_1226.y, x_1226.z, x_1226.w);
        let x_1228 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1227.x, x_1228.y, x_1227.y, x_1227.z);
        let x_1231 : f32 = u_xlat10.x;
        u_xlat11.y = x_1231;
        let x_1233 : vec2<f32> = u_xlat31;
        let x_1236 : vec4<f32> = x_148.x_MainLightShadowmapSize;
        let x_1239 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1233.x, x_1233.y, x_1233.x, x_1233.y) * vec4<f32>(x_1236.x, x_1236.y, x_1236.x, x_1236.y)) + vec4<f32>(x_1239.x, x_1239.y, x_1239.z, x_1239.y));
        let x_1242 : vec2<f32> = u_xlat31;
        let x_1244 : vec4<f32> = x_148.x_MainLightShadowmapSize;
        let x_1247 : vec4<f32> = u_xlat11;
        let x_1249 : vec2<f32> = ((x_1242 * vec2<f32>(x_1244.x, x_1244.y)) + vec2<f32>(x_1247.w, x_1247.y));
        let x_1250 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1249.x, x_1249.y, x_1250.z, x_1250.w);
        let x_1253 : f32 = u_xlat11.y;
        u_xlat8.y = x_1253;
        let x_1256 : f32 = u_xlat10.z;
        u_xlat11.y = x_1256;
        let x_1258 : vec2<f32> = u_xlat31;
        let x_1261 : vec4<f32> = x_148.x_MainLightShadowmapSize;
        let x_1264 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_1258.x, x_1258.y, x_1258.x, x_1258.y) * vec4<f32>(x_1261.x, x_1261.y, x_1261.x, x_1261.y)) + vec4<f32>(x_1264.x, x_1264.y, x_1264.z, x_1264.y));
        let x_1268 : vec2<f32> = u_xlat31;
        let x_1270 : vec4<f32> = x_148.x_MainLightShadowmapSize;
        let x_1273 : vec4<f32> = u_xlat11;
        u_xlat63 = ((x_1268 * vec2<f32>(x_1270.x, x_1270.y)) + vec2<f32>(x_1273.w, x_1273.y));
        let x_1277 : f32 = u_xlat11.y;
        u_xlat8.z = x_1277;
        let x_1279 : vec2<f32> = u_xlat31;
        let x_1282 : vec4<f32> = x_148.x_MainLightShadowmapSize;
        let x_1285 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1279.x, x_1279.y, x_1279.x, x_1279.y) * vec4<f32>(x_1282.x, x_1282.y, x_1282.x, x_1282.y)) + vec4<f32>(x_1285.x, x_1285.y, x_1285.x, x_1285.z));
        let x_1289 : f32 = u_xlat10.w;
        u_xlat11.y = x_1289;
        let x_1292 : vec2<f32> = u_xlat31;
        let x_1295 : vec4<f32> = x_148.x_MainLightShadowmapSize;
        let x_1298 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1292.x, x_1292.y, x_1292.x, x_1292.y) * vec4<f32>(x_1295.x, x_1295.y, x_1295.x, x_1295.y)) + vec4<f32>(x_1298.x, x_1298.y, x_1298.z, x_1298.y));
        let x_1302 : vec2<f32> = u_xlat31;
        let x_1304 : vec4<f32> = x_148.x_MainLightShadowmapSize;
        let x_1307 : vec4<f32> = u_xlat11;
        u_xlat33 = ((x_1302 * vec2<f32>(x_1304.x, x_1304.y)) + vec2<f32>(x_1307.w, x_1307.y));
        let x_1311 : f32 = u_xlat11.y;
        u_xlat8.w = x_1311;
        let x_1314 : vec2<f32> = u_xlat31;
        let x_1316 : vec4<f32> = x_148.x_MainLightShadowmapSize;
        let x_1319 : vec4<f32> = u_xlat8;
        let x_1321 : vec2<f32> = ((x_1314 * vec2<f32>(x_1316.x, x_1316.y)) + vec2<f32>(x_1319.x, x_1319.w));
        let x_1322 : vec4<f32> = u_xlat17;
        u_xlat17 = vec4<f32>(x_1321.x, x_1321.y, x_1322.z, x_1322.w);
        let x_1324 : vec4<f32> = u_xlat11;
        let x_1325 : vec3<f32> = vec3<f32>(x_1324.x, x_1324.z, x_1324.w);
        let x_1326 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1325.x, x_1326.y, x_1325.y, x_1325.z);
        let x_1328 : vec2<f32> = u_xlat31;
        let x_1331 : vec4<f32> = x_148.x_MainLightShadowmapSize;
        let x_1334 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1328.x, x_1328.y, x_1328.x, x_1328.y) * vec4<f32>(x_1331.x, x_1331.y, x_1331.x, x_1331.y)) + vec4<f32>(x_1334.x, x_1334.y, x_1334.z, x_1334.y));
        let x_1338 : vec2<f32> = u_xlat31;
        let x_1340 : vec4<f32> = x_148.x_MainLightShadowmapSize;
        let x_1343 : vec4<f32> = u_xlat10;
        u_xlat60 = ((x_1338 * vec2<f32>(x_1340.x, x_1340.y)) + vec2<f32>(x_1343.w, x_1343.y));
        let x_1347 : f32 = u_xlat8.x;
        u_xlat10.x = x_1347;
        let x_1349 : vec2<f32> = u_xlat31;
        let x_1351 : vec4<f32> = x_148.x_MainLightShadowmapSize;
        let x_1354 : vec4<f32> = u_xlat10;
        u_xlat31 = ((x_1349 * vec2<f32>(x_1351.x, x_1351.y)) + vec2<f32>(x_1354.x, x_1354.y));
        let x_1358 : vec4<f32> = u_xlat7;
        let x_1360 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1358.x, x_1358.x, x_1358.x, x_1358.x) * x_1360);
        let x_1363 : vec4<f32> = u_xlat7;
        let x_1365 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_1363.y, x_1363.y, x_1363.y, x_1363.y) * x_1365);
        let x_1368 : vec4<f32> = u_xlat7;
        let x_1370 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_1368.z, x_1368.z, x_1368.z, x_1368.z) * x_1370);
        let x_1372 : vec4<f32> = u_xlat7;
        let x_1374 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_1372.w, x_1372.w, x_1372.w, x_1372.w) * x_1374);
        let x_1377 : vec4<f32> = u_xlat12;
        let x_1378 : vec2<f32> = vec2<f32>(x_1377.x, x_1377.y);
        let x_1380 : f32 = u_xlat4.z;
        txVec13 = vec3<f32>(x_1378.x, x_1378.y, x_1380);
        let x_1387 : vec3<f32> = txVec13;
        let x_1389 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1387.xy, x_1387.z);
        u_xlat81 = x_1389;
        let x_1391 : vec4<f32> = u_xlat12;
        let x_1392 : vec2<f32> = vec2<f32>(x_1391.z, x_1391.w);
        let x_1394 : f32 = u_xlat4.z;
        txVec14 = vec3<f32>(x_1392.x, x_1392.y, x_1394);
        let x_1401 : vec3<f32> = txVec14;
        let x_1403 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1401.xy, x_1401.z);
        u_xlat8.x = x_1403;
        let x_1406 : f32 = u_xlat8.x;
        let x_1408 : f32 = u_xlat18.y;
        u_xlat8.x = (x_1406 * x_1408);
        let x_1412 : f32 = u_xlat18.x;
        let x_1413 : f32 = u_xlat81;
        let x_1416 : f32 = u_xlat8.x;
        u_xlat81 = ((x_1412 * x_1413) + x_1416);
        let x_1419 : vec4<f32> = u_xlat13;
        let x_1420 : vec2<f32> = vec2<f32>(x_1419.x, x_1419.y);
        let x_1422 : f32 = u_xlat4.z;
        txVec15 = vec3<f32>(x_1420.x, x_1420.y, x_1422);
        let x_1429 : vec3<f32> = txVec15;
        let x_1431 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1429.xy, x_1429.z);
        u_xlat8.x = x_1431;
        let x_1434 : f32 = u_xlat18.z;
        let x_1436 : f32 = u_xlat8.x;
        let x_1438 : f32 = u_xlat81;
        u_xlat81 = ((x_1434 * x_1436) + x_1438);
        let x_1441 : vec4<f32> = u_xlat15;
        let x_1442 : vec2<f32> = vec2<f32>(x_1441.x, x_1441.y);
        let x_1444 : f32 = u_xlat4.z;
        txVec16 = vec3<f32>(x_1442.x, x_1442.y, x_1444);
        let x_1451 : vec3<f32> = txVec16;
        let x_1453 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1451.xy, x_1451.z);
        u_xlat8.x = x_1453;
        let x_1456 : f32 = u_xlat18.w;
        let x_1458 : f32 = u_xlat8.x;
        let x_1460 : f32 = u_xlat81;
        u_xlat81 = ((x_1456 * x_1458) + x_1460);
        let x_1463 : vec4<f32> = u_xlat14;
        let x_1464 : vec2<f32> = vec2<f32>(x_1463.x, x_1463.y);
        let x_1466 : f32 = u_xlat4.z;
        txVec17 = vec3<f32>(x_1464.x, x_1464.y, x_1466);
        let x_1473 : vec3<f32> = txVec17;
        let x_1475 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1473.xy, x_1473.z);
        u_xlat8.x = x_1475;
        let x_1478 : f32 = u_xlat19.x;
        let x_1480 : f32 = u_xlat8.x;
        let x_1482 : f32 = u_xlat81;
        u_xlat81 = ((x_1478 * x_1480) + x_1482);
        let x_1485 : vec4<f32> = u_xlat14;
        let x_1486 : vec2<f32> = vec2<f32>(x_1485.z, x_1485.w);
        let x_1488 : f32 = u_xlat4.z;
        txVec18 = vec3<f32>(x_1486.x, x_1486.y, x_1488);
        let x_1495 : vec3<f32> = txVec18;
        let x_1497 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1495.xy, x_1495.z);
        u_xlat8.x = x_1497;
        let x_1500 : f32 = u_xlat19.y;
        let x_1502 : f32 = u_xlat8.x;
        let x_1504 : f32 = u_xlat81;
        u_xlat81 = ((x_1500 * x_1502) + x_1504);
        let x_1507 : vec2<f32> = u_xlat63;
        let x_1509 : f32 = u_xlat4.z;
        txVec19 = vec3<f32>(x_1507.x, x_1507.y, x_1509);
        let x_1516 : vec3<f32> = txVec19;
        let x_1518 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1516.xy, x_1516.z);
        u_xlat8.x = x_1518;
        let x_1521 : f32 = u_xlat19.z;
        let x_1523 : f32 = u_xlat8.x;
        let x_1525 : f32 = u_xlat81;
        u_xlat81 = ((x_1521 * x_1523) + x_1525);
        let x_1528 : vec4<f32> = u_xlat15;
        let x_1529 : vec2<f32> = vec2<f32>(x_1528.z, x_1528.w);
        let x_1531 : f32 = u_xlat4.z;
        txVec20 = vec3<f32>(x_1529.x, x_1529.y, x_1531);
        let x_1538 : vec3<f32> = txVec20;
        let x_1540 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1538.xy, x_1538.z);
        u_xlat8.x = x_1540;
        let x_1543 : f32 = u_xlat19.w;
        let x_1545 : f32 = u_xlat8.x;
        let x_1547 : f32 = u_xlat81;
        u_xlat81 = ((x_1543 * x_1545) + x_1547);
        let x_1550 : vec4<f32> = u_xlat16;
        let x_1551 : vec2<f32> = vec2<f32>(x_1550.x, x_1550.y);
        let x_1553 : f32 = u_xlat4.z;
        txVec21 = vec3<f32>(x_1551.x, x_1551.y, x_1553);
        let x_1560 : vec3<f32> = txVec21;
        let x_1562 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1560.xy, x_1560.z);
        u_xlat8.x = x_1562;
        let x_1565 : f32 = u_xlat20.x;
        let x_1567 : f32 = u_xlat8.x;
        let x_1569 : f32 = u_xlat81;
        u_xlat81 = ((x_1565 * x_1567) + x_1569);
        let x_1572 : vec4<f32> = u_xlat16;
        let x_1573 : vec2<f32> = vec2<f32>(x_1572.z, x_1572.w);
        let x_1575 : f32 = u_xlat4.z;
        txVec22 = vec3<f32>(x_1573.x, x_1573.y, x_1575);
        let x_1582 : vec3<f32> = txVec22;
        let x_1584 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1582.xy, x_1582.z);
        u_xlat8.x = x_1584;
        let x_1587 : f32 = u_xlat20.y;
        let x_1589 : f32 = u_xlat8.x;
        let x_1591 : f32 = u_xlat81;
        u_xlat81 = ((x_1587 * x_1589) + x_1591);
        let x_1594 : vec2<f32> = u_xlat33;
        let x_1596 : f32 = u_xlat4.z;
        txVec23 = vec3<f32>(x_1594.x, x_1594.y, x_1596);
        let x_1603 : vec3<f32> = txVec23;
        let x_1605 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1603.xy, x_1603.z);
        u_xlat8.x = x_1605;
        let x_1608 : f32 = u_xlat20.z;
        let x_1610 : f32 = u_xlat8.x;
        let x_1612 : f32 = u_xlat81;
        u_xlat81 = ((x_1608 * x_1610) + x_1612);
        let x_1615 : vec4<f32> = u_xlat17;
        let x_1616 : vec2<f32> = vec2<f32>(x_1615.x, x_1615.y);
        let x_1618 : f32 = u_xlat4.z;
        txVec24 = vec3<f32>(x_1616.x, x_1616.y, x_1618);
        let x_1625 : vec3<f32> = txVec24;
        let x_1627 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1625.xy, x_1625.z);
        u_xlat8.x = x_1627;
        let x_1630 : f32 = u_xlat20.w;
        let x_1632 : f32 = u_xlat8.x;
        let x_1634 : f32 = u_xlat81;
        u_xlat81 = ((x_1630 * x_1632) + x_1634);
        let x_1637 : vec4<f32> = u_xlat11;
        let x_1638 : vec2<f32> = vec2<f32>(x_1637.x, x_1637.y);
        let x_1640 : f32 = u_xlat4.z;
        txVec25 = vec3<f32>(x_1638.x, x_1638.y, x_1640);
        let x_1647 : vec3<f32> = txVec25;
        let x_1649 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1647.xy, x_1647.z);
        u_xlat8.x = x_1649;
        let x_1652 : f32 = u_xlat7.x;
        let x_1654 : f32 = u_xlat8.x;
        let x_1656 : f32 = u_xlat81;
        u_xlat81 = ((x_1652 * x_1654) + x_1656);
        let x_1659 : vec4<f32> = u_xlat11;
        let x_1660 : vec2<f32> = vec2<f32>(x_1659.z, x_1659.w);
        let x_1662 : f32 = u_xlat4.z;
        txVec26 = vec3<f32>(x_1660.x, x_1660.y, x_1662);
        let x_1669 : vec3<f32> = txVec26;
        let x_1671 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1669.xy, x_1669.z);
        u_xlat7.x = x_1671;
        let x_1674 : f32 = u_xlat7.y;
        let x_1676 : f32 = u_xlat7.x;
        let x_1678 : f32 = u_xlat81;
        u_xlat81 = ((x_1674 * x_1676) + x_1678);
        let x_1681 : vec2<f32> = u_xlat60;
        let x_1683 : f32 = u_xlat4.z;
        txVec27 = vec3<f32>(x_1681.x, x_1681.y, x_1683);
        let x_1690 : vec3<f32> = txVec27;
        let x_1692 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1690.xy, x_1690.z);
        u_xlat7.x = x_1692;
        let x_1695 : f32 = u_xlat7.z;
        let x_1697 : f32 = u_xlat7.x;
        let x_1699 : f32 = u_xlat81;
        u_xlat81 = ((x_1695 * x_1697) + x_1699);
        let x_1702 : vec2<f32> = u_xlat31;
        let x_1704 : f32 = u_xlat4.z;
        txVec28 = vec3<f32>(x_1702.x, x_1702.y, x_1704);
        let x_1711 : vec3<f32> = txVec28;
        let x_1713 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1711.xy, x_1711.z);
        u_xlat31.x = x_1713;
        let x_1716 : f32 = u_xlat7.w;
        let x_1718 : f32 = u_xlat31.x;
        let x_1720 : f32 = u_xlat81;
        u_xlat6.x = ((x_1716 * x_1718) + x_1720);
      }
    }
  } else {
    let x_1725 : vec4<f32> = u_xlat4;
    let x_1726 : vec2<f32> = vec2<f32>(x_1725.x, x_1725.y);
    let x_1728 : f32 = u_xlat4.z;
    txVec29 = vec3<f32>(x_1726.x, x_1726.y, x_1728);
    let x_1735 : vec3<f32> = txVec29;
    let x_1737 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1735.xy, x_1735.z);
    u_xlat6.x = x_1737;
  }
  let x_1740 : f32 = x_148.x_MainLightShadowParams.x;
  u_xlat4.x = (-(x_1740) + 1.0f);
  let x_1745 : f32 = u_xlat6.x;
  let x_1747 : f32 = x_148.x_MainLightShadowParams.x;
  let x_1750 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_1745 * x_1747) + x_1750);
  let x_1755 : f32 = u_xlat4.z;
  u_xlatb29 = (0.0f >= x_1755);
  let x_1759 : f32 = u_xlat4.z;
  u_xlatb54 = (x_1759 >= 1.0f);
  let x_1761 : bool = u_xlatb54;
  let x_1762 : bool = u_xlatb29;
  u_xlatb29 = (x_1761 | x_1762);
  let x_1764 : bool = u_xlatb29;
  if (x_1764) {
    x_1765 = 1.0f;
  } else {
    let x_1770 : f32 = u_xlat4.x;
    x_1765 = x_1770;
  }
  let x_1771 : f32 = x_1765;
  u_xlat4.x = x_1771;
  let x_1773 : vec3<f32> = vs_TEXCOORD1;
  let x_1775 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_1777 : vec3<f32> = (x_1773 + -(x_1775));
  let x_1778 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1777.x, x_1777.y, x_1777.z, x_1778.w);
  let x_1781 : vec4<f32> = u_xlat6;
  let x_1783 : vec4<f32> = u_xlat6;
  u_xlat29 = dot(vec3<f32>(x_1781.x, x_1781.y, x_1781.z), vec3<f32>(x_1783.x, x_1783.y, x_1783.z));
  let x_1787 : f32 = u_xlat29;
  let x_1789 : f32 = x_148.x_MainLightShadowParams.z;
  let x_1792 : f32 = x_148.x_MainLightShadowParams.w;
  u_xlat54 = ((x_1787 * x_1789) + x_1792);
  let x_1794 : f32 = u_xlat54;
  u_xlat54 = clamp(x_1794, 0.0f, 1.0f);
  let x_1797 : f32 = u_xlat4.x;
  u_xlat6.x = (-(x_1797) + 1.0f);
  let x_1801 : f32 = u_xlat54;
  let x_1803 : f32 = u_xlat6.x;
  let x_1806 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_1801 * x_1803) + x_1806);
  let x_1809 : vec3<f32> = u_xlat3;
  let x_1811 : vec4<f32> = u_xlat2;
  u_xlat54 = dot(-(x_1809), vec3<f32>(x_1811.x, x_1811.y, x_1811.z));
  let x_1814 : f32 = u_xlat54;
  let x_1815 : f32 = u_xlat54;
  u_xlat54 = (x_1814 + x_1815);
  let x_1817 : vec4<f32> = u_xlat2;
  let x_1819 : f32 = u_xlat54;
  let x_1823 : vec3<f32> = u_xlat3;
  let x_1825 : vec3<f32> = ((vec3<f32>(x_1817.x, x_1817.y, x_1817.z) * -(vec3<f32>(x_1819, x_1819, x_1819))) + -(x_1823));
  let x_1826 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1825.x, x_1825.y, x_1825.z, x_1826.w);
  let x_1828 : vec4<f32> = u_xlat2;
  let x_1830 : vec3<f32> = u_xlat3;
  u_xlat54 = dot(vec3<f32>(x_1828.x, x_1828.y, x_1828.z), x_1830);
  let x_1832 : f32 = u_xlat54;
  u_xlat54 = clamp(x_1832, 0.0f, 1.0f);
  let x_1834 : f32 = u_xlat54;
  u_xlat54 = (-(x_1834) + 1.0f);
  let x_1837 : f32 = u_xlat54;
  let x_1838 : f32 = u_xlat54;
  u_xlat54 = (x_1837 * x_1838);
  let x_1840 : f32 = u_xlat54;
  let x_1841 : f32 = u_xlat54;
  u_xlat54 = (x_1840 * x_1841);
  let x_1843 : f32 = u_xlat75;
  u_xlat81 = ((-(x_1843) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1849 : f32 = u_xlat75;
  let x_1850 : f32 = u_xlat81;
  u_xlat75 = (x_1849 * x_1850);
  let x_1852 : f32 = u_xlat75;
  u_xlat75 = (x_1852 * 6.0f);
  let x_1863 : vec4<f32> = u_xlat6;
  let x_1865 : f32 = u_xlat75;
  let x_1866 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1863.x, x_1863.y, x_1863.z), x_1865);
  u_xlat6 = x_1866;
  let x_1868 : f32 = u_xlat6.w;
  u_xlat75 = (x_1868 + -1.0f);
  let x_1871 : f32 = x_341.unity_SpecCube0_HDR.w;
  let x_1872 : f32 = u_xlat75;
  u_xlat75 = ((x_1871 * x_1872) + 1.0f);
  let x_1875 : f32 = u_xlat75;
  u_xlat75 = max(x_1875, 0.0f);
  let x_1877 : f32 = u_xlat75;
  u_xlat75 = log2(x_1877);
  let x_1879 : f32 = u_xlat75;
  let x_1881 : f32 = x_341.unity_SpecCube0_HDR.y;
  u_xlat75 = (x_1879 * x_1881);
  let x_1883 : f32 = u_xlat75;
  u_xlat75 = exp2(x_1883);
  let x_1885 : f32 = u_xlat75;
  let x_1887 : f32 = x_341.unity_SpecCube0_HDR.x;
  u_xlat75 = (x_1885 * x_1887);
  let x_1889 : vec4<f32> = u_xlat6;
  let x_1891 : f32 = u_xlat75;
  let x_1893 : vec3<f32> = (vec3<f32>(x_1889.x, x_1889.y, x_1889.z) * vec3<f32>(x_1891, x_1891, x_1891));
  let x_1894 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1893.x, x_1893.y, x_1893.z, x_1894.w);
  let x_1896 : f32 = u_xlat78;
  let x_1898 : f32 = u_xlat78;
  let x_1902 : vec2<f32> = ((vec2<f32>(x_1896, x_1896) * vec2<f32>(x_1898, x_1898)) + vec2<f32>(-1.0f, 1.0f));
  let x_1903 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1902.x, x_1902.y, x_1903.z, x_1903.w);
  let x_1906 : f32 = u_xlat7.y;
  u_xlat75 = (1.0f / x_1906);
  let x_1909 : vec4<f32> = u_xlat0;
  let x_1912 : f32 = u_xlat77;
  u_xlat32 = (-(vec3<f32>(x_1909.x, x_1909.y, x_1909.z)) + vec3<f32>(x_1912, x_1912, x_1912));
  let x_1915 : f32 = u_xlat54;
  let x_1917 : vec3<f32> = u_xlat32;
  let x_1919 : vec4<f32> = u_xlat0;
  u_xlat32 = ((vec3<f32>(x_1915, x_1915, x_1915) * x_1917) + vec3<f32>(x_1919.x, x_1919.y, x_1919.z));
  let x_1922 : f32 = u_xlat75;
  let x_1924 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_1922, x_1922, x_1922) * x_1924);
  let x_1926 : vec4<f32> = u_xlat6;
  let x_1928 : vec3<f32> = u_xlat32;
  let x_1929 : vec3<f32> = (vec3<f32>(x_1926.x, x_1926.y, x_1926.z) * x_1928);
  let x_1930 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1929.x, x_1929.y, x_1929.z, x_1930.w);
  let x_1932 : vec4<f32> = u_xlat5;
  let x_1934 : vec3<f32> = u_xlat26;
  let x_1936 : vec4<f32> = u_xlat6;
  let x_1938 : vec3<f32> = ((vec3<f32>(x_1932.x, x_1932.y, x_1932.z) * x_1934) + vec3<f32>(x_1936.x, x_1936.y, x_1936.z));
  let x_1939 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1938.x, x_1938.y, x_1938.z, x_1939.w);
  let x_1942 : f32 = u_xlat4.x;
  let x_1944 : f32 = x_341.unity_LightData.z;
  u_xlat75 = (x_1942 * x_1944);
  let x_1946 : vec4<f32> = u_xlat2;
  let x_1949 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat77 = dot(vec3<f32>(x_1946.x, x_1946.y, x_1946.z), vec3<f32>(x_1949.x, x_1949.y, x_1949.z));
  let x_1952 : f32 = u_xlat77;
  u_xlat77 = clamp(x_1952, 0.0f, 1.0f);
  let x_1954 : f32 = u_xlat75;
  let x_1955 : f32 = u_xlat77;
  u_xlat75 = (x_1954 * x_1955);
  let x_1957 : f32 = u_xlat75;
  let x_1960 : vec4<f32> = x_28.x_MainLightColor;
  let x_1962 : vec3<f32> = (vec3<f32>(x_1957, x_1957, x_1957) * vec3<f32>(x_1960.x, x_1960.y, x_1960.z));
  let x_1963 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1962.x, x_1962.y, x_1962.z, x_1963.w);
  let x_1965 : vec3<f32> = u_xlat3;
  let x_1967 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat32 = (x_1965 + vec3<f32>(x_1967.x, x_1967.y, x_1967.z));
  let x_1970 : vec3<f32> = u_xlat32;
  let x_1971 : vec3<f32> = u_xlat32;
  u_xlat75 = dot(x_1970, x_1971);
  let x_1973 : f32 = u_xlat75;
  u_xlat75 = max(x_1973, 1.17549435e-38f);
  let x_1976 : f32 = u_xlat75;
  u_xlat75 = inverseSqrt(x_1976);
  let x_1978 : f32 = u_xlat75;
  let x_1980 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_1978, x_1978, x_1978) * x_1980);
  let x_1982 : vec4<f32> = u_xlat2;
  let x_1984 : vec3<f32> = u_xlat32;
  u_xlat75 = dot(vec3<f32>(x_1982.x, x_1982.y, x_1982.z), x_1984);
  let x_1986 : f32 = u_xlat75;
  u_xlat75 = clamp(x_1986, 0.0f, 1.0f);
  let x_1989 : vec4<f32> = x_28.x_MainLightPosition;
  let x_1991 : vec3<f32> = u_xlat32;
  u_xlat77 = dot(vec3<f32>(x_1989.x, x_1989.y, x_1989.z), x_1991);
  let x_1993 : f32 = u_xlat77;
  u_xlat77 = clamp(x_1993, 0.0f, 1.0f);
  let x_1995 : f32 = u_xlat75;
  let x_1996 : f32 = u_xlat75;
  u_xlat75 = (x_1995 * x_1996);
  let x_1998 : f32 = u_xlat75;
  let x_2000 : f32 = u_xlat7.x;
  u_xlat75 = ((x_1998 * x_2000) + 1.00001001358032226562f);
  let x_2004 : f32 = u_xlat77;
  let x_2005 : f32 = u_xlat77;
  u_xlat77 = (x_2004 * x_2005);
  let x_2007 : f32 = u_xlat75;
  let x_2008 : f32 = u_xlat75;
  u_xlat75 = (x_2007 * x_2008);
  let x_2010 : f32 = u_xlat77;
  u_xlat77 = max(x_2010, 0.10000000149011611938f);
  let x_2013 : f32 = u_xlat75;
  let x_2014 : f32 = u_xlat77;
  u_xlat75 = (x_2013 * x_2014);
  let x_2016 : f32 = u_xlat80;
  let x_2017 : f32 = u_xlat75;
  u_xlat75 = (x_2016 * x_2017);
  let x_2019 : f32 = u_xlat79;
  let x_2020 : f32 = u_xlat75;
  u_xlat75 = (x_2019 / x_2020);
  let x_2022 : vec4<f32> = u_xlat0;
  let x_2024 : f32 = u_xlat75;
  let x_2027 : vec3<f32> = u_xlat26;
  u_xlat32 = ((vec3<f32>(x_2022.x, x_2022.y, x_2022.z) * vec3<f32>(x_2024, x_2024, x_2024)) + x_2027);
  let x_2030 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_2032 : f32 = x_341.unity_LightData.y;
  u_xlat75 = min(x_2030, x_2032);
  let x_2034 : f32 = u_xlat75;
  u_xlatu75 = bitcast<u32>(i32(x_2034));
  let x_2037 : f32 = u_xlat29;
  let x_2040 : f32 = x_148.x_AdditionalShadowFadeParams.x;
  let x_2043 : f32 = x_148.x_AdditionalShadowFadeParams.y;
  u_xlat77 = ((x_2037 * x_2040) + x_2043);
  let x_2045 : f32 = u_xlat77;
  u_xlat77 = clamp(x_2045, 0.0f, 1.0f);
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2057 : u32 = u_xlatu_loop_1;
    let x_2058 : u32 = u_xlatu75;
    if ((x_2057 < x_2058)) {
    } else {
      break;
    }
    let x_2061 : u32 = u_xlatu_loop_1;
    u_xlatu81 = (x_2061 >> 2u);
    let x_2064 : u32 = u_xlatu_loop_1;
    u_xlati8 = bitcast<i32>((x_2064 & 3u));
    let x_2067 : u32 = u_xlatu81;
    let x_2070 : vec4<f32> = x_341.unity_LightIndices[bitcast<i32>(x_2067)];
    let x_2080 : i32 = u_xlati8;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2085 : vec4<u32> = indexable[x_2080];
    u_xlat81 = dot(x_2070, bitcast<vec4<f32>>(x_2085));
    let x_2089 : f32 = u_xlat81;
    u_xlati81 = i32(x_2089);
    let x_2091 : vec3<f32> = vs_TEXCOORD1;
    let x_2102 : i32 = u_xlati81;
    let x_2104 : vec4<f32> = x_2101.x_AdditionalLightsPosition[x_2102];
    let x_2107 : i32 = u_xlati81;
    let x_2109 : vec4<f32> = x_2101.x_AdditionalLightsPosition[x_2107];
    let x_2111 : vec3<f32> = ((-(x_2091) * vec3<f32>(x_2104.w, x_2104.w, x_2104.w)) + vec3<f32>(x_2109.x, x_2109.y, x_2109.z));
    let x_2112 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2111.x, x_2111.y, x_2111.z, x_2112.w);
    let x_2115 : vec4<f32> = u_xlat8;
    let x_2117 : vec4<f32> = u_xlat8;
    u_xlat83 = dot(vec3<f32>(x_2115.x, x_2115.y, x_2115.z), vec3<f32>(x_2117.x, x_2117.y, x_2117.z));
    let x_2120 : f32 = u_xlat83;
    u_xlat83 = max(x_2120, 0.00006103515625f);
    let x_2123 : f32 = u_xlat83;
    u_xlat9.x = inverseSqrt(x_2123);
    let x_2127 : vec4<f32> = u_xlat8;
    let x_2129 : vec4<f32> = u_xlat9;
    u_xlat34 = (vec3<f32>(x_2127.x, x_2127.y, x_2127.z) * vec3<f32>(x_2129.x, x_2129.x, x_2129.x));
    let x_2132 : f32 = u_xlat83;
    u_xlat10.x = (1.0f / x_2132);
    let x_2135 : f32 = u_xlat83;
    let x_2136 : i32 = u_xlati81;
    let x_2138 : f32 = x_2101.x_AdditionalLightsAttenuation[x_2136].x;
    u_xlat83 = (x_2135 * x_2138);
    let x_2140 : f32 = u_xlat83;
    let x_2142 : f32 = u_xlat83;
    u_xlat83 = ((-(x_2140) * x_2142) + 1.0f);
    let x_2145 : f32 = u_xlat83;
    u_xlat83 = max(x_2145, 0.0f);
    let x_2147 : f32 = u_xlat83;
    let x_2148 : f32 = u_xlat83;
    u_xlat83 = (x_2147 * x_2148);
    let x_2150 : f32 = u_xlat83;
    let x_2152 : f32 = u_xlat10.x;
    u_xlat83 = (x_2150 * x_2152);
    let x_2154 : i32 = u_xlati81;
    let x_2156 : vec4<f32> = x_2101.x_AdditionalLightsSpotDir[x_2154];
    let x_2158 : vec3<f32> = u_xlat34;
    u_xlat10.x = dot(vec3<f32>(x_2156.x, x_2156.y, x_2156.z), x_2158);
    let x_2162 : f32 = u_xlat10.x;
    let x_2163 : i32 = u_xlati81;
    let x_2165 : f32 = x_2101.x_AdditionalLightsAttenuation[x_2163].z;
    let x_2167 : i32 = u_xlati81;
    let x_2169 : f32 = x_2101.x_AdditionalLightsAttenuation[x_2167].w;
    u_xlat10.x = ((x_2162 * x_2165) + x_2169);
    let x_2173 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_2173, 0.0f, 1.0f);
    let x_2177 : f32 = u_xlat10.x;
    let x_2179 : f32 = u_xlat10.x;
    u_xlat10.x = (x_2177 * x_2179);
    let x_2182 : f32 = u_xlat83;
    let x_2184 : f32 = u_xlat10.x;
    u_xlat83 = (x_2182 * x_2184);
    let x_2188 : i32 = u_xlati81;
    let x_2190 : f32 = x_148.x_AdditionalShadowParams[x_2188].w;
    u_xlati10 = i32(x_2190);
    let x_2195 : i32 = u_xlati10;
    u_xlatb35.x = (x_2195 >= 0i);
    let x_2199 : bool = u_xlatb35.x;
    if (x_2199) {
      let x_2203 : i32 = u_xlati81;
      let x_2205 : f32 = x_148.x_AdditionalShadowParams[x_2203].z;
      u_xlatb35.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2205, x_2205, x_2205, x_2205))));
      let x_2211 : bool = u_xlatb35.x;
      if (x_2211) {
        let x_2214 : vec3<f32> = u_xlat34;
        let x_2217 : vec3<f32> = u_xlat34;
        let x_2220 : vec4<bool> = (abs(vec4<f32>(x_2214.z, x_2214.z, x_2214.y, x_2214.y)) >= abs(vec4<f32>(x_2217.x, x_2217.y, x_2217.x, x_2217.x)));
        u_xlatb35 = vec3<bool>(x_2220.x, x_2220.y, x_2220.z);
        let x_2223 : bool = u_xlatb35.y;
        let x_2225 : bool = u_xlatb35.x;
        u_xlatb35.x = (x_2223 & x_2225);
        let x_2229 : vec3<f32> = u_xlat34;
        let x_2232 : vec4<bool> = (-(vec4<f32>(x_2229.z, x_2229.y, x_2229.x, x_2229.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_2232.x, x_2232.y, x_2232.z);
        let x_2235 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2235);
        let x_2240 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2240);
        let x_2244 : bool = u_xlatb11.z;
        u_xlat60.x = select(0.0f, 1.0f, x_2244);
        let x_2248 : bool = u_xlatb35.z;
        if (x_2248) {
          let x_2253 : f32 = u_xlat11.y;
          x_2249 = x_2253;
        } else {
          let x_2256 : f32 = u_xlat60.x;
          x_2249 = x_2256;
        }
        let x_2257 : f32 = x_2249;
        u_xlat60.x = x_2257;
        let x_2261 : bool = u_xlatb35.x;
        if (x_2261) {
          let x_2266 : f32 = u_xlat11.x;
          x_2262 = x_2266;
        } else {
          let x_2269 : f32 = u_xlat60.x;
          x_2262 = x_2269;
        }
        let x_2270 : f32 = x_2262;
        u_xlat35 = x_2270;
        let x_2271 : i32 = u_xlati81;
        let x_2273 : f32 = x_148.x_AdditionalShadowParams[x_2271].w;
        u_xlat60.x = trunc(x_2273);
        let x_2276 : f32 = u_xlat35;
        let x_2278 : f32 = u_xlat60.x;
        u_xlat35 = (x_2276 + x_2278);
        let x_2280 : f32 = u_xlat35;
        u_xlati10 = i32(x_2280);
      }
      let x_2282 : i32 = u_xlati10;
      u_xlati10 = (x_2282 << bitcast<u32>(2i));
      let x_2284 : vec3<f32> = vs_TEXCOORD1;
      let x_2287 : i32 = u_xlati10;
      let x_2290 : i32 = u_xlati10;
      let x_2294 : vec4<f32> = x_148.x_AdditionalLightsWorldToShadow[((x_2287 + 1i) / 4i)][((x_2290 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2284.y, x_2284.y, x_2284.y, x_2284.y) * x_2294);
      let x_2296 : i32 = u_xlati10;
      let x_2298 : i32 = u_xlati10;
      let x_2301 : vec4<f32> = x_148.x_AdditionalLightsWorldToShadow[(x_2296 / 4i)][(x_2298 % 4i)];
      let x_2302 : vec3<f32> = vs_TEXCOORD1;
      let x_2305 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2301 * vec4<f32>(x_2302.x, x_2302.x, x_2302.x, x_2302.x)) + x_2305);
      let x_2307 : i32 = u_xlati10;
      let x_2310 : i32 = u_xlati10;
      let x_2314 : vec4<f32> = x_148.x_AdditionalLightsWorldToShadow[((x_2307 + 2i) / 4i)][((x_2310 + 2i) % 4i)];
      let x_2315 : vec3<f32> = vs_TEXCOORD1;
      let x_2318 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2314 * vec4<f32>(x_2315.z, x_2315.z, x_2315.z, x_2315.z)) + x_2318);
      let x_2320 : vec4<f32> = u_xlat11;
      let x_2321 : i32 = u_xlati10;
      let x_2324 : i32 = u_xlati10;
      let x_2328 : vec4<f32> = x_148.x_AdditionalLightsWorldToShadow[((x_2321 + 3i) / 4i)][((x_2324 + 3i) % 4i)];
      u_xlat10 = (x_2320 + x_2328);
      let x_2330 : vec4<f32> = u_xlat10;
      let x_2332 : vec4<f32> = u_xlat10;
      let x_2334 : vec3<f32> = (vec3<f32>(x_2330.x, x_2330.y, x_2330.z) / vec3<f32>(x_2332.w, x_2332.w, x_2332.w));
      let x_2335 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2334.x, x_2334.y, x_2334.z, x_2335.w);
      let x_2338 : i32 = u_xlati81;
      let x_2340 : f32 = x_148.x_AdditionalShadowParams[x_2338].y;
      u_xlatb85 = (0.0f < x_2340);
      let x_2342 : bool = u_xlatb85;
      if (x_2342) {
        let x_2345 : i32 = u_xlati81;
        let x_2347 : f32 = x_148.x_AdditionalShadowParams[x_2345].y;
        u_xlatb85 = (1.0f == x_2347);
        let x_2349 : bool = u_xlatb85;
        if (x_2349) {
          let x_2352 : vec4<f32> = u_xlat10;
          let x_2356 : vec4<f32> = x_148.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2352.x, x_2352.y, x_2352.x, x_2352.y) + x_2356);
          let x_2359 : vec4<f32> = u_xlat11;
          let x_2360 : vec2<f32> = vec2<f32>(x_2359.x, x_2359.y);
          let x_2362 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2360.x, x_2360.y, x_2362);
          let x_2370 : vec3<f32> = txVec30;
          let x_2372 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2370.xy, x_2370.z);
          u_xlat12.x = x_2372;
          let x_2375 : vec4<f32> = u_xlat11;
          let x_2376 : vec2<f32> = vec2<f32>(x_2375.z, x_2375.w);
          let x_2378 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_2376.x, x_2376.y, x_2378);
          let x_2385 : vec3<f32> = txVec31;
          let x_2387 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2385.xy, x_2385.z);
          u_xlat12.y = x_2387;
          let x_2389 : vec4<f32> = u_xlat10;
          let x_2393 : vec4<f32> = x_148.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_2389.x, x_2389.y, x_2389.x, x_2389.y) + x_2393);
          let x_2396 : vec4<f32> = u_xlat11;
          let x_2397 : vec2<f32> = vec2<f32>(x_2396.x, x_2396.y);
          let x_2399 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_2397.x, x_2397.y, x_2399);
          let x_2406 : vec3<f32> = txVec32;
          let x_2408 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2406.xy, x_2406.z);
          u_xlat12.z = x_2408;
          let x_2411 : vec4<f32> = u_xlat11;
          let x_2412 : vec2<f32> = vec2<f32>(x_2411.z, x_2411.w);
          let x_2414 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_2412.x, x_2412.y, x_2414);
          let x_2421 : vec3<f32> = txVec33;
          let x_2423 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2421.xy, x_2421.z);
          u_xlat12.w = x_2423;
          let x_2426 : vec4<f32> = u_xlat12;
          u_xlat85 = dot(x_2426, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2429 : i32 = u_xlati81;
          let x_2431 : f32 = x_148.x_AdditionalShadowParams[x_2429].y;
          u_xlatb11.x = (2.0f == x_2431);
          let x_2435 : bool = u_xlatb11.x;
          if (x_2435) {
            let x_2438 : vec4<f32> = u_xlat10;
            let x_2442 : vec4<f32> = x_148.x_AdditionalShadowmapSize;
            let x_2445 : vec2<f32> = ((vec2<f32>(x_2438.x, x_2438.y) * vec2<f32>(x_2442.z, x_2442.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2446 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2445.x, x_2445.y, x_2446.z, x_2446.w);
            let x_2448 : vec4<f32> = u_xlat11;
            let x_2450 : vec2<f32> = floor(vec2<f32>(x_2448.x, x_2448.y));
            let x_2451 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2450.x, x_2450.y, x_2451.z, x_2451.w);
            let x_2454 : vec4<f32> = u_xlat10;
            let x_2457 : vec4<f32> = x_148.x_AdditionalShadowmapSize;
            let x_2460 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2454.x, x_2454.y) * vec2<f32>(x_2457.z, x_2457.w)) + -(vec2<f32>(x_2460.x, x_2460.y)));
            let x_2464 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2464.x, x_2464.x, x_2464.y, x_2464.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2467 : vec4<f32> = u_xlat12;
            let x_2469 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2467.x, x_2467.x, x_2467.z, x_2467.z) * vec4<f32>(x_2469.x, x_2469.x, x_2469.z, x_2469.z));
            let x_2472 : vec4<f32> = u_xlat13;
            let x_2474 : vec2<f32> = (vec2<f32>(x_2472.y, x_2472.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2475 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2474.x, x_2475.y, x_2474.y, x_2475.w);
            let x_2477 : vec4<f32> = u_xlat13;
            let x_2480 : vec2<f32> = u_xlat61;
            let x_2482 : vec2<f32> = ((vec2<f32>(x_2477.x, x_2477.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2480));
            let x_2483 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2482.x, x_2482.y, x_2483.z, x_2483.w);
            let x_2485 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_2485) + vec2<f32>(1.0f, 1.0f));
            let x_2488 : vec2<f32> = u_xlat61;
            let x_2489 : vec2<f32> = min(x_2488, vec2<f32>(0.0f, 0.0f));
            let x_2490 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2489.x, x_2489.y, x_2490.z, x_2490.w);
            let x_2492 : vec4<f32> = u_xlat14;
            let x_2495 : vec4<f32> = u_xlat14;
            let x_2498 : vec2<f32> = u_xlat63;
            let x_2499 : vec2<f32> = ((-(vec2<f32>(x_2492.x, x_2492.y)) * vec2<f32>(x_2495.x, x_2495.y)) + x_2498);
            let x_2500 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2499.x, x_2499.y, x_2500.z, x_2500.w);
            let x_2502 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_2502, vec2<f32>(0.0f, 0.0f));
            let x_2504 : vec2<f32> = u_xlat61;
            let x_2506 : vec2<f32> = u_xlat61;
            let x_2508 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_2504) * x_2506) + vec2<f32>(x_2508.y, x_2508.w));
            let x_2511 : vec4<f32> = u_xlat14;
            let x_2513 : vec2<f32> = (vec2<f32>(x_2511.x, x_2511.y) + vec2<f32>(1.0f, 1.0f));
            let x_2514 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2513.x, x_2513.y, x_2514.z, x_2514.w);
            let x_2516 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_2516 + vec2<f32>(1.0f, 1.0f));
            let x_2518 : vec4<f32> = u_xlat13;
            let x_2520 : vec2<f32> = (vec2<f32>(x_2518.x, x_2518.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2521 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2520.x, x_2520.y, x_2521.z, x_2521.w);
            let x_2523 : vec2<f32> = u_xlat63;
            let x_2524 : vec2<f32> = (x_2523 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2525 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2524.x, x_2524.y, x_2525.z, x_2525.w);
            let x_2527 : vec4<f32> = u_xlat14;
            let x_2529 : vec2<f32> = (vec2<f32>(x_2527.x, x_2527.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2530 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2529.x, x_2529.y, x_2530.z, x_2530.w);
            let x_2532 : vec2<f32> = u_xlat61;
            let x_2533 : vec2<f32> = (x_2532 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2534 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2533.x, x_2533.y, x_2534.z, x_2534.w);
            let x_2536 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_2536.y, x_2536.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2540 : f32 = u_xlat14.x;
            u_xlat15.z = x_2540;
            let x_2543 : f32 = u_xlat61.x;
            u_xlat15.w = x_2543;
            let x_2546 : f32 = u_xlat16.x;
            u_xlat13.z = x_2546;
            let x_2549 : f32 = u_xlat12.x;
            u_xlat13.w = x_2549;
            let x_2551 : vec4<f32> = u_xlat13;
            let x_2553 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2551.z, x_2551.w, x_2551.x, x_2551.z) + vec4<f32>(x_2553.z, x_2553.w, x_2553.x, x_2553.z));
            let x_2557 : f32 = u_xlat15.y;
            u_xlat14.z = x_2557;
            let x_2560 : f32 = u_xlat61.y;
            u_xlat14.w = x_2560;
            let x_2563 : f32 = u_xlat13.y;
            u_xlat16.z = x_2563;
            let x_2566 : f32 = u_xlat12.z;
            u_xlat16.w = x_2566;
            let x_2568 : vec4<f32> = u_xlat14;
            let x_2570 : vec4<f32> = u_xlat16;
            let x_2572 : vec3<f32> = (vec3<f32>(x_2568.z, x_2568.y, x_2568.w) + vec3<f32>(x_2570.z, x_2570.y, x_2570.w));
            let x_2573 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2572.x, x_2572.y, x_2572.z, x_2573.w);
            let x_2575 : vec4<f32> = u_xlat13;
            let x_2577 : vec4<f32> = u_xlat17;
            let x_2579 : vec3<f32> = (vec3<f32>(x_2575.x, x_2575.z, x_2575.w) / vec3<f32>(x_2577.z, x_2577.w, x_2577.y));
            let x_2580 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2579.x, x_2579.y, x_2579.z, x_2580.w);
            let x_2582 : vec4<f32> = u_xlat13;
            let x_2584 : vec3<f32> = (vec3<f32>(x_2582.x, x_2582.y, x_2582.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2585 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2584.x, x_2584.y, x_2584.z, x_2585.w);
            let x_2587 : vec4<f32> = u_xlat16;
            let x_2589 : vec4<f32> = u_xlat12;
            let x_2591 : vec3<f32> = (vec3<f32>(x_2587.z, x_2587.y, x_2587.w) / vec3<f32>(x_2589.x, x_2589.y, x_2589.z));
            let x_2592 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2591.x, x_2591.y, x_2591.z, x_2592.w);
            let x_2594 : vec4<f32> = u_xlat14;
            let x_2596 : vec3<f32> = (vec3<f32>(x_2594.x, x_2594.y, x_2594.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2597 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2596.x, x_2596.y, x_2596.z, x_2597.w);
            let x_2599 : vec4<f32> = u_xlat13;
            let x_2602 : vec4<f32> = x_148.x_AdditionalShadowmapSize;
            let x_2604 : vec3<f32> = (vec3<f32>(x_2599.y, x_2599.x, x_2599.z) * vec3<f32>(x_2602.x, x_2602.x, x_2602.x));
            let x_2605 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2604.x, x_2604.y, x_2604.z, x_2605.w);
            let x_2607 : vec4<f32> = u_xlat14;
            let x_2610 : vec4<f32> = x_148.x_AdditionalShadowmapSize;
            let x_2612 : vec3<f32> = (vec3<f32>(x_2607.x, x_2607.y, x_2607.z) * vec3<f32>(x_2610.y, x_2610.y, x_2610.y));
            let x_2613 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2612.x, x_2612.y, x_2612.z, x_2613.w);
            let x_2616 : f32 = u_xlat14.x;
            u_xlat13.w = x_2616;
            let x_2618 : vec4<f32> = u_xlat11;
            let x_2621 : vec4<f32> = x_148.x_AdditionalShadowmapSize;
            let x_2624 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2618.x, x_2618.y, x_2618.x, x_2618.y) * vec4<f32>(x_2621.x, x_2621.y, x_2621.x, x_2621.y)) + vec4<f32>(x_2624.y, x_2624.w, x_2624.x, x_2624.w));
            let x_2627 : vec4<f32> = u_xlat11;
            let x_2630 : vec4<f32> = x_148.x_AdditionalShadowmapSize;
            let x_2633 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_2627.x, x_2627.y) * vec2<f32>(x_2630.x, x_2630.y)) + vec2<f32>(x_2633.z, x_2633.w));
            let x_2637 : f32 = u_xlat13.y;
            u_xlat14.w = x_2637;
            let x_2639 : vec4<f32> = u_xlat14;
            let x_2640 : vec2<f32> = vec2<f32>(x_2639.y, x_2639.z);
            let x_2641 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2641.x, x_2640.x, x_2641.z, x_2640.y);
            let x_2643 : vec4<f32> = u_xlat11;
            let x_2646 : vec4<f32> = x_148.x_AdditionalShadowmapSize;
            let x_2649 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_2643.x, x_2643.y, x_2643.x, x_2643.y) * vec4<f32>(x_2646.x, x_2646.y, x_2646.x, x_2646.y)) + vec4<f32>(x_2649.x, x_2649.y, x_2649.z, x_2649.y));
            let x_2652 : vec4<f32> = u_xlat11;
            let x_2655 : vec4<f32> = x_148.x_AdditionalShadowmapSize;
            let x_2658 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2652.x, x_2652.y, x_2652.x, x_2652.y) * vec4<f32>(x_2655.x, x_2655.y, x_2655.x, x_2655.y)) + vec4<f32>(x_2658.w, x_2658.y, x_2658.w, x_2658.z));
            let x_2661 : vec4<f32> = u_xlat11;
            let x_2664 : vec4<f32> = x_148.x_AdditionalShadowmapSize;
            let x_2667 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_2661.x, x_2661.y, x_2661.x, x_2661.y) * vec4<f32>(x_2664.x, x_2664.y, x_2664.x, x_2664.y)) + vec4<f32>(x_2667.x, x_2667.w, x_2667.z, x_2667.w));
            let x_2670 : vec4<f32> = u_xlat12;
            let x_2672 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_2670.x, x_2670.x, x_2670.x, x_2670.y) * vec4<f32>(x_2672.z, x_2672.w, x_2672.y, x_2672.z));
            let x_2675 : vec4<f32> = u_xlat12;
            let x_2677 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_2675.y, x_2675.y, x_2675.z, x_2675.z) * x_2677);
            let x_2680 : f32 = u_xlat12.z;
            let x_2682 : f32 = u_xlat17.y;
            u_xlat11.x = (x_2680 * x_2682);
            let x_2686 : vec4<f32> = u_xlat15;
            let x_2687 : vec2<f32> = vec2<f32>(x_2686.x, x_2686.y);
            let x_2689 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_2687.x, x_2687.y, x_2689);
            let x_2697 : vec3<f32> = txVec34;
            let x_2699 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2697.xy, x_2697.z);
            u_xlat36 = x_2699;
            let x_2701 : vec4<f32> = u_xlat15;
            let x_2702 : vec2<f32> = vec2<f32>(x_2701.z, x_2701.w);
            let x_2704 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_2702.x, x_2702.y, x_2704);
            let x_2711 : vec3<f32> = txVec35;
            let x_2713 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2711.xy, x_2711.z);
            u_xlat12.x = x_2713;
            let x_2716 : f32 = u_xlat12.x;
            let x_2718 : f32 = u_xlat18.y;
            u_xlat12.x = (x_2716 * x_2718);
            let x_2722 : f32 = u_xlat18.x;
            let x_2723 : f32 = u_xlat36;
            let x_2726 : f32 = u_xlat12.x;
            u_xlat36 = ((x_2722 * x_2723) + x_2726);
            let x_2729 : vec2<f32> = u_xlat61;
            let x_2731 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_2729.x, x_2729.y, x_2731);
            let x_2738 : vec3<f32> = txVec36;
            let x_2740 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2738.xy, x_2738.z);
            u_xlat61.x = x_2740;
            let x_2743 : f32 = u_xlat18.z;
            let x_2745 : f32 = u_xlat61.x;
            let x_2747 : f32 = u_xlat36;
            u_xlat36 = ((x_2743 * x_2745) + x_2747);
            let x_2750 : vec4<f32> = u_xlat14;
            let x_2751 : vec2<f32> = vec2<f32>(x_2750.x, x_2750.y);
            let x_2753 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_2751.x, x_2751.y, x_2753);
            let x_2760 : vec3<f32> = txVec37;
            let x_2762 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2760.xy, x_2760.z);
            u_xlat61.x = x_2762;
            let x_2765 : f32 = u_xlat18.w;
            let x_2767 : f32 = u_xlat61.x;
            let x_2769 : f32 = u_xlat36;
            u_xlat36 = ((x_2765 * x_2767) + x_2769);
            let x_2772 : vec4<f32> = u_xlat16;
            let x_2773 : vec2<f32> = vec2<f32>(x_2772.x, x_2772.y);
            let x_2775 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_2773.x, x_2773.y, x_2775);
            let x_2782 : vec3<f32> = txVec38;
            let x_2784 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2782.xy, x_2782.z);
            u_xlat61.x = x_2784;
            let x_2787 : f32 = u_xlat19.x;
            let x_2789 : f32 = u_xlat61.x;
            let x_2791 : f32 = u_xlat36;
            u_xlat36 = ((x_2787 * x_2789) + x_2791);
            let x_2794 : vec4<f32> = u_xlat16;
            let x_2795 : vec2<f32> = vec2<f32>(x_2794.z, x_2794.w);
            let x_2797 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_2795.x, x_2795.y, x_2797);
            let x_2804 : vec3<f32> = txVec39;
            let x_2806 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2804.xy, x_2804.z);
            u_xlat61.x = x_2806;
            let x_2809 : f32 = u_xlat19.y;
            let x_2811 : f32 = u_xlat61.x;
            let x_2813 : f32 = u_xlat36;
            u_xlat36 = ((x_2809 * x_2811) + x_2813);
            let x_2816 : vec4<f32> = u_xlat14;
            let x_2817 : vec2<f32> = vec2<f32>(x_2816.z, x_2816.w);
            let x_2819 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_2817.x, x_2817.y, x_2819);
            let x_2826 : vec3<f32> = txVec40;
            let x_2828 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2826.xy, x_2826.z);
            u_xlat61.x = x_2828;
            let x_2831 : f32 = u_xlat19.z;
            let x_2833 : f32 = u_xlat61.x;
            let x_2835 : f32 = u_xlat36;
            u_xlat36 = ((x_2831 * x_2833) + x_2835);
            let x_2838 : vec4<f32> = u_xlat13;
            let x_2839 : vec2<f32> = vec2<f32>(x_2838.x, x_2838.y);
            let x_2841 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_2839.x, x_2839.y, x_2841);
            let x_2848 : vec3<f32> = txVec41;
            let x_2850 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2848.xy, x_2848.z);
            u_xlat61.x = x_2850;
            let x_2853 : f32 = u_xlat19.w;
            let x_2855 : f32 = u_xlat61.x;
            let x_2857 : f32 = u_xlat36;
            u_xlat36 = ((x_2853 * x_2855) + x_2857);
            let x_2860 : vec4<f32> = u_xlat13;
            let x_2861 : vec2<f32> = vec2<f32>(x_2860.z, x_2860.w);
            let x_2863 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_2861.x, x_2861.y, x_2863);
            let x_2870 : vec3<f32> = txVec42;
            let x_2872 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2870.xy, x_2870.z);
            u_xlat61.x = x_2872;
            let x_2875 : f32 = u_xlat11.x;
            let x_2877 : f32 = u_xlat61.x;
            let x_2879 : f32 = u_xlat36;
            u_xlat85 = ((x_2875 * x_2877) + x_2879);
          } else {
            let x_2882 : vec4<f32> = u_xlat10;
            let x_2885 : vec4<f32> = x_148.x_AdditionalShadowmapSize;
            let x_2888 : vec2<f32> = ((vec2<f32>(x_2882.x, x_2882.y) * vec2<f32>(x_2885.z, x_2885.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2889 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2888.x, x_2888.y, x_2889.z, x_2889.w);
            let x_2891 : vec4<f32> = u_xlat11;
            let x_2893 : vec2<f32> = floor(vec2<f32>(x_2891.x, x_2891.y));
            let x_2894 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2893.x, x_2893.y, x_2894.z, x_2894.w);
            let x_2896 : vec4<f32> = u_xlat10;
            let x_2899 : vec4<f32> = x_148.x_AdditionalShadowmapSize;
            let x_2902 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2896.x, x_2896.y) * vec2<f32>(x_2899.z, x_2899.w)) + -(vec2<f32>(x_2902.x, x_2902.y)));
            let x_2906 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2906.x, x_2906.x, x_2906.y, x_2906.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2909 : vec4<f32> = u_xlat12;
            let x_2911 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2909.x, x_2909.x, x_2909.z, x_2909.z) * vec4<f32>(x_2911.x, x_2911.x, x_2911.z, x_2911.z));
            let x_2914 : vec4<f32> = u_xlat13;
            let x_2916 : vec2<f32> = (vec2<f32>(x_2914.y, x_2914.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2917 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2917.x, x_2916.x, x_2917.z, x_2916.y);
            let x_2919 : vec4<f32> = u_xlat13;
            let x_2922 : vec2<f32> = u_xlat61;
            let x_2924 : vec2<f32> = ((vec2<f32>(x_2919.x, x_2919.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2922));
            let x_2925 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2924.x, x_2925.y, x_2924.y, x_2925.w);
            let x_2927 : vec2<f32> = u_xlat61;
            let x_2929 : vec2<f32> = (-(x_2927) + vec2<f32>(1.0f, 1.0f));
            let x_2930 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2929.x, x_2929.y, x_2930.z, x_2930.w);
            let x_2932 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_2932, vec2<f32>(0.0f, 0.0f));
            let x_2934 : vec2<f32> = u_xlat63;
            let x_2936 : vec2<f32> = u_xlat63;
            let x_2938 : vec4<f32> = u_xlat13;
            let x_2940 : vec2<f32> = ((-(x_2934) * x_2936) + vec2<f32>(x_2938.x, x_2938.y));
            let x_2941 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2940.x, x_2940.y, x_2941.z, x_2941.w);
            let x_2943 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_2943, vec2<f32>(0.0f, 0.0f));
            let x_2946 : vec2<f32> = u_xlat63;
            let x_2948 : vec2<f32> = u_xlat63;
            let x_2950 : vec4<f32> = u_xlat12;
            let x_2952 : vec2<f32> = ((-(x_2946) * x_2948) + vec2<f32>(x_2950.y, x_2950.w));
            let x_2953 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_2952.x, x_2953.y, x_2952.y);
            let x_2955 : vec4<f32> = u_xlat13;
            let x_2958 : vec2<f32> = (vec2<f32>(x_2955.x, x_2955.y) + vec2<f32>(2.0f, 2.0f));
            let x_2959 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2958.x, x_2958.y, x_2959.z, x_2959.w);
            let x_2961 : vec3<f32> = u_xlat37;
            let x_2963 : vec2<f32> = (vec2<f32>(x_2961.x, x_2961.z) + vec2<f32>(2.0f, 2.0f));
            let x_2964 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2964.x, x_2963.x, x_2964.z, x_2963.y);
            let x_2967 : f32 = u_xlat12.y;
            u_xlat15.z = (x_2967 * 0.08163200318813323975f);
            let x_2970 : vec4<f32> = u_xlat12;
            let x_2973 : vec3<f32> = (vec3<f32>(x_2970.z, x_2970.x, x_2970.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2974 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2973.x, x_2973.y, x_2973.z, x_2974.w);
            let x_2976 : vec4<f32> = u_xlat13;
            let x_2978 : vec2<f32> = (vec2<f32>(x_2976.x, x_2976.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2979 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2978.x, x_2978.y, x_2979.z, x_2979.w);
            let x_2982 : f32 = u_xlat16.y;
            u_xlat15.x = x_2982;
            let x_2984 : vec2<f32> = u_xlat61;
            let x_2987 : vec2<f32> = ((vec2<f32>(x_2984.x, x_2984.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2988 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2988.x, x_2987.x, x_2988.z, x_2987.y);
            let x_2990 : vec2<f32> = u_xlat61;
            let x_2993 : vec2<f32> = ((vec2<f32>(x_2990.x, x_2990.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2994 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2993.x, x_2994.y, x_2993.y, x_2994.w);
            let x_2997 : f32 = u_xlat12.x;
            u_xlat13.y = x_2997;
            let x_3000 : f32 = u_xlat14.y;
            u_xlat13.w = x_3000;
            let x_3002 : vec4<f32> = u_xlat13;
            let x_3003 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3002 + x_3003);
            let x_3005 : vec2<f32> = u_xlat61;
            let x_3008 : vec2<f32> = ((vec2<f32>(x_3005.y, x_3005.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3009 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3009.x, x_3008.x, x_3009.z, x_3008.y);
            let x_3011 : vec2<f32> = u_xlat61;
            let x_3014 : vec2<f32> = ((vec2<f32>(x_3011.y, x_3011.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3015 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3014.x, x_3015.y, x_3014.y, x_3015.w);
            let x_3018 : f32 = u_xlat12.y;
            u_xlat14.y = x_3018;
            let x_3020 : vec4<f32> = u_xlat14;
            let x_3021 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_3020 + x_3021);
            let x_3023 : vec4<f32> = u_xlat13;
            let x_3024 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_3023 / x_3024);
            let x_3026 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3026 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3028 : vec4<f32> = u_xlat14;
            let x_3029 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_3028 / x_3029);
            let x_3031 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3031 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3033 : vec4<f32> = u_xlat13;
            let x_3036 : vec4<f32> = x_148.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3033.w, x_3033.x, x_3033.y, x_3033.z) * vec4<f32>(x_3036.x, x_3036.x, x_3036.x, x_3036.x));
            let x_3039 : vec4<f32> = u_xlat14;
            let x_3042 : vec4<f32> = x_148.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3039.x, x_3039.w, x_3039.y, x_3039.z) * vec4<f32>(x_3042.y, x_3042.y, x_3042.y, x_3042.y));
            let x_3045 : vec4<f32> = u_xlat13;
            let x_3046 : vec3<f32> = vec3<f32>(x_3045.y, x_3045.z, x_3045.w);
            let x_3047 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3046.x, x_3047.y, x_3046.y, x_3046.z);
            let x_3050 : f32 = u_xlat14.x;
            u_xlat16.y = x_3050;
            let x_3052 : vec4<f32> = u_xlat11;
            let x_3055 : vec4<f32> = x_148.x_AdditionalShadowmapSize;
            let x_3058 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3052.x, x_3052.y, x_3052.x, x_3052.y) * vec4<f32>(x_3055.x, x_3055.y, x_3055.x, x_3055.y)) + vec4<f32>(x_3058.x, x_3058.y, x_3058.z, x_3058.y));
            let x_3061 : vec4<f32> = u_xlat11;
            let x_3064 : vec4<f32> = x_148.x_AdditionalShadowmapSize;
            let x_3067 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_3061.x, x_3061.y) * vec2<f32>(x_3064.x, x_3064.y)) + vec2<f32>(x_3067.w, x_3067.y));
            let x_3071 : f32 = u_xlat16.y;
            u_xlat13.y = x_3071;
            let x_3074 : f32 = u_xlat14.z;
            u_xlat16.y = x_3074;
            let x_3076 : vec4<f32> = u_xlat11;
            let x_3079 : vec4<f32> = x_148.x_AdditionalShadowmapSize;
            let x_3082 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3076.x, x_3076.y, x_3076.x, x_3076.y) * vec4<f32>(x_3079.x, x_3079.y, x_3079.x, x_3079.y)) + vec4<f32>(x_3082.x, x_3082.y, x_3082.z, x_3082.y));
            let x_3085 : vec4<f32> = u_xlat11;
            let x_3088 : vec4<f32> = x_148.x_AdditionalShadowmapSize;
            let x_3091 : vec4<f32> = u_xlat16;
            let x_3093 : vec2<f32> = ((vec2<f32>(x_3085.x, x_3085.y) * vec2<f32>(x_3088.x, x_3088.y)) + vec2<f32>(x_3091.w, x_3091.y));
            let x_3094 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3093.x, x_3093.y, x_3094.z, x_3094.w);
            let x_3097 : f32 = u_xlat16.y;
            u_xlat13.z = x_3097;
            let x_3099 : vec4<f32> = u_xlat11;
            let x_3102 : vec4<f32> = x_148.x_AdditionalShadowmapSize;
            let x_3105 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3099.x, x_3099.y, x_3099.x, x_3099.y) * vec4<f32>(x_3102.x, x_3102.y, x_3102.x, x_3102.y)) + vec4<f32>(x_3105.x, x_3105.y, x_3105.x, x_3105.z));
            let x_3109 : f32 = u_xlat14.w;
            u_xlat16.y = x_3109;
            let x_3112 : vec4<f32> = u_xlat11;
            let x_3115 : vec4<f32> = x_148.x_AdditionalShadowmapSize;
            let x_3118 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3112.x, x_3112.y, x_3112.x, x_3112.y) * vec4<f32>(x_3115.x, x_3115.y, x_3115.x, x_3115.y)) + vec4<f32>(x_3118.x, x_3118.y, x_3118.z, x_3118.y));
            let x_3122 : vec4<f32> = u_xlat11;
            let x_3125 : vec4<f32> = x_148.x_AdditionalShadowmapSize;
            let x_3128 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3122.x, x_3122.y) * vec2<f32>(x_3125.x, x_3125.y)) + vec2<f32>(x_3128.w, x_3128.y));
            let x_3132 : f32 = u_xlat16.y;
            u_xlat13.w = x_3132;
            let x_3135 : vec4<f32> = u_xlat11;
            let x_3138 : vec4<f32> = x_148.x_AdditionalShadowmapSize;
            let x_3141 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3135.x, x_3135.y) * vec2<f32>(x_3138.x, x_3138.y)) + vec2<f32>(x_3141.x, x_3141.w));
            let x_3144 : vec4<f32> = u_xlat16;
            let x_3145 : vec3<f32> = vec3<f32>(x_3144.x, x_3144.z, x_3144.w);
            let x_3146 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3145.x, x_3146.y, x_3145.y, x_3145.z);
            let x_3148 : vec4<f32> = u_xlat11;
            let x_3151 : vec4<f32> = x_148.x_AdditionalShadowmapSize;
            let x_3154 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3148.x, x_3148.y, x_3148.x, x_3148.y) * vec4<f32>(x_3151.x, x_3151.y, x_3151.x, x_3151.y)) + vec4<f32>(x_3154.x, x_3154.y, x_3154.z, x_3154.y));
            let x_3158 : vec4<f32> = u_xlat11;
            let x_3161 : vec4<f32> = x_148.x_AdditionalShadowmapSize;
            let x_3164 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3158.x, x_3158.y) * vec2<f32>(x_3161.x, x_3161.y)) + vec2<f32>(x_3164.w, x_3164.y));
            let x_3168 : f32 = u_xlat13.x;
            u_xlat14.x = x_3168;
            let x_3170 : vec4<f32> = u_xlat11;
            let x_3173 : vec4<f32> = x_148.x_AdditionalShadowmapSize;
            let x_3176 : vec4<f32> = u_xlat14;
            let x_3178 : vec2<f32> = ((vec2<f32>(x_3170.x, x_3170.y) * vec2<f32>(x_3173.x, x_3173.y)) + vec2<f32>(x_3176.x, x_3176.y));
            let x_3179 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3178.x, x_3178.y, x_3179.z, x_3179.w);
            let x_3182 : vec4<f32> = u_xlat12;
            let x_3184 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3182.x, x_3182.x, x_3182.x, x_3182.x) * x_3184);
            let x_3187 : vec4<f32> = u_xlat12;
            let x_3189 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3187.y, x_3187.y, x_3187.y, x_3187.y) * x_3189);
            let x_3192 : vec4<f32> = u_xlat12;
            let x_3194 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3192.z, x_3192.z, x_3192.z, x_3192.z) * x_3194);
            let x_3196 : vec4<f32> = u_xlat12;
            let x_3198 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3196.w, x_3196.w, x_3196.w, x_3196.w) * x_3198);
            let x_3201 : vec4<f32> = u_xlat17;
            let x_3202 : vec2<f32> = vec2<f32>(x_3201.x, x_3201.y);
            let x_3204 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3202.x, x_3202.y, x_3204);
            let x_3211 : vec3<f32> = txVec43;
            let x_3213 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3211.xy, x_3211.z);
            u_xlat13.x = x_3213;
            let x_3216 : vec4<f32> = u_xlat17;
            let x_3217 : vec2<f32> = vec2<f32>(x_3216.z, x_3216.w);
            let x_3219 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3217.x, x_3217.y, x_3219);
            let x_3227 : vec3<f32> = txVec44;
            let x_3229 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3227.xy, x_3227.z);
            u_xlat88 = x_3229;
            let x_3230 : f32 = u_xlat88;
            let x_3232 : f32 = u_xlat22.y;
            u_xlat88 = (x_3230 * x_3232);
            let x_3235 : f32 = u_xlat22.x;
            let x_3237 : f32 = u_xlat13.x;
            let x_3239 : f32 = u_xlat88;
            u_xlat13.x = ((x_3235 * x_3237) + x_3239);
            let x_3243 : vec2<f32> = u_xlat61;
            let x_3245 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3243.x, x_3243.y, x_3245);
            let x_3252 : vec3<f32> = txVec45;
            let x_3254 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3252.xy, x_3252.z);
            u_xlat61.x = x_3254;
            let x_3257 : f32 = u_xlat22.z;
            let x_3259 : f32 = u_xlat61.x;
            let x_3262 : f32 = u_xlat13.x;
            u_xlat61.x = ((x_3257 * x_3259) + x_3262);
            let x_3266 : vec4<f32> = u_xlat20;
            let x_3267 : vec2<f32> = vec2<f32>(x_3266.x, x_3266.y);
            let x_3269 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3267.x, x_3267.y, x_3269);
            let x_3277 : vec3<f32> = txVec46;
            let x_3279 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3277.xy, x_3277.z);
            u_xlat86 = x_3279;
            let x_3281 : f32 = u_xlat22.w;
            let x_3282 : f32 = u_xlat86;
            let x_3285 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3281 * x_3282) + x_3285);
            let x_3289 : vec4<f32> = u_xlat18;
            let x_3290 : vec2<f32> = vec2<f32>(x_3289.x, x_3289.y);
            let x_3292 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3290.x, x_3290.y, x_3292);
            let x_3299 : vec3<f32> = txVec47;
            let x_3301 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3299.xy, x_3299.z);
            u_xlat86 = x_3301;
            let x_3303 : f32 = u_xlat23.x;
            let x_3304 : f32 = u_xlat86;
            let x_3307 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3303 * x_3304) + x_3307);
            let x_3311 : vec4<f32> = u_xlat18;
            let x_3312 : vec2<f32> = vec2<f32>(x_3311.z, x_3311.w);
            let x_3314 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3312.x, x_3312.y, x_3314);
            let x_3321 : vec3<f32> = txVec48;
            let x_3323 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3321.xy, x_3321.z);
            u_xlat86 = x_3323;
            let x_3325 : f32 = u_xlat23.y;
            let x_3326 : f32 = u_xlat86;
            let x_3329 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3325 * x_3326) + x_3329);
            let x_3333 : vec4<f32> = u_xlat19;
            let x_3334 : vec2<f32> = vec2<f32>(x_3333.x, x_3333.y);
            let x_3336 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3334.x, x_3334.y, x_3336);
            let x_3343 : vec3<f32> = txVec49;
            let x_3345 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3343.xy, x_3343.z);
            u_xlat86 = x_3345;
            let x_3347 : f32 = u_xlat23.z;
            let x_3348 : f32 = u_xlat86;
            let x_3351 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3347 * x_3348) + x_3351);
            let x_3355 : vec4<f32> = u_xlat20;
            let x_3356 : vec2<f32> = vec2<f32>(x_3355.z, x_3355.w);
            let x_3358 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3356.x, x_3356.y, x_3358);
            let x_3365 : vec3<f32> = txVec50;
            let x_3367 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3365.xy, x_3365.z);
            u_xlat86 = x_3367;
            let x_3369 : f32 = u_xlat23.w;
            let x_3370 : f32 = u_xlat86;
            let x_3373 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3369 * x_3370) + x_3373);
            let x_3377 : vec4<f32> = u_xlat21;
            let x_3378 : vec2<f32> = vec2<f32>(x_3377.x, x_3377.y);
            let x_3380 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3378.x, x_3378.y, x_3380);
            let x_3387 : vec3<f32> = txVec51;
            let x_3389 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3387.xy, x_3387.z);
            u_xlat86 = x_3389;
            let x_3391 : f32 = u_xlat24.x;
            let x_3392 : f32 = u_xlat86;
            let x_3395 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3391 * x_3392) + x_3395);
            let x_3399 : vec4<f32> = u_xlat21;
            let x_3400 : vec2<f32> = vec2<f32>(x_3399.z, x_3399.w);
            let x_3402 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_3400.x, x_3400.y, x_3402);
            let x_3409 : vec3<f32> = txVec52;
            let x_3411 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3409.xy, x_3409.z);
            u_xlat86 = x_3411;
            let x_3413 : f32 = u_xlat24.y;
            let x_3414 : f32 = u_xlat86;
            let x_3417 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3413 * x_3414) + x_3417);
            let x_3421 : vec2<f32> = u_xlat38;
            let x_3423 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_3421.x, x_3421.y, x_3423);
            let x_3430 : vec3<f32> = txVec53;
            let x_3432 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3430.xy, x_3430.z);
            u_xlat86 = x_3432;
            let x_3434 : f32 = u_xlat24.z;
            let x_3435 : f32 = u_xlat86;
            let x_3438 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3434 * x_3435) + x_3438);
            let x_3442 : vec2<f32> = u_xlat69;
            let x_3444 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_3442.x, x_3442.y, x_3444);
            let x_3451 : vec3<f32> = txVec54;
            let x_3453 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3451.xy, x_3451.z);
            u_xlat86 = x_3453;
            let x_3455 : f32 = u_xlat24.w;
            let x_3456 : f32 = u_xlat86;
            let x_3459 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3455 * x_3456) + x_3459);
            let x_3463 : vec4<f32> = u_xlat16;
            let x_3464 : vec2<f32> = vec2<f32>(x_3463.x, x_3463.y);
            let x_3466 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_3464.x, x_3464.y, x_3466);
            let x_3473 : vec3<f32> = txVec55;
            let x_3475 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3473.xy, x_3473.z);
            u_xlat86 = x_3475;
            let x_3477 : f32 = u_xlat12.x;
            let x_3478 : f32 = u_xlat86;
            let x_3481 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3477 * x_3478) + x_3481);
            let x_3485 : vec4<f32> = u_xlat16;
            let x_3486 : vec2<f32> = vec2<f32>(x_3485.z, x_3485.w);
            let x_3488 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_3486.x, x_3486.y, x_3488);
            let x_3495 : vec3<f32> = txVec56;
            let x_3497 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3495.xy, x_3495.z);
            u_xlat86 = x_3497;
            let x_3499 : f32 = u_xlat12.y;
            let x_3500 : f32 = u_xlat86;
            let x_3503 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3499 * x_3500) + x_3503);
            let x_3507 : vec2<f32> = u_xlat64;
            let x_3509 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_3507.x, x_3507.y, x_3509);
            let x_3516 : vec3<f32> = txVec57;
            let x_3518 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3516.xy, x_3516.z);
            u_xlat86 = x_3518;
            let x_3520 : f32 = u_xlat12.z;
            let x_3521 : f32 = u_xlat86;
            let x_3524 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3520 * x_3521) + x_3524);
            let x_3528 : vec4<f32> = u_xlat11;
            let x_3529 : vec2<f32> = vec2<f32>(x_3528.x, x_3528.y);
            let x_3531 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_3529.x, x_3529.y, x_3531);
            let x_3538 : vec3<f32> = txVec58;
            let x_3540 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3538.xy, x_3538.z);
            u_xlat11.x = x_3540;
            let x_3543 : f32 = u_xlat12.w;
            let x_3545 : f32 = u_xlat11.x;
            let x_3548 : f32 = u_xlat61.x;
            u_xlat85 = ((x_3543 * x_3545) + x_3548);
          }
        }
      } else {
        let x_3552 : vec4<f32> = u_xlat10;
        let x_3553 : vec2<f32> = vec2<f32>(x_3552.x, x_3552.y);
        let x_3555 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_3553.x, x_3553.y, x_3555);
        let x_3562 : vec3<f32> = txVec59;
        let x_3564 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3562.xy, x_3562.z);
        u_xlat85 = x_3564;
      }
      let x_3565 : i32 = u_xlati81;
      let x_3567 : f32 = x_148.x_AdditionalShadowParams[x_3565].x;
      u_xlat10.x = (1.0f + -(x_3567));
      let x_3571 : f32 = u_xlat85;
      let x_3572 : i32 = u_xlati81;
      let x_3574 : f32 = x_148.x_AdditionalShadowParams[x_3572].x;
      let x_3577 : f32 = u_xlat10.x;
      u_xlat10.x = ((x_3571 * x_3574) + x_3577);
      let x_3581 : f32 = u_xlat10.z;
      u_xlatb35.x = (0.0f >= x_3581);
      let x_3586 : f32 = u_xlat10.z;
      u_xlatb60 = (x_3586 >= 1.0f);
      let x_3588 : bool = u_xlatb60;
      let x_3590 : bool = u_xlatb35.x;
      u_xlatb35.x = (x_3588 | x_3590);
      let x_3594 : bool = u_xlatb35.x;
      if (x_3594) {
        x_3595 = 1.0f;
      } else {
        let x_3600 : f32 = u_xlat10.x;
        x_3595 = x_3600;
      }
      let x_3601 : f32 = x_3595;
      u_xlat10.x = x_3601;
    } else {
      u_xlat10.x = 1.0f;
    }
    let x_3606 : f32 = u_xlat10.x;
    u_xlat35 = (-(x_3606) + 1.0f);
    let x_3609 : f32 = u_xlat77;
    let x_3610 : f32 = u_xlat35;
    let x_3613 : f32 = u_xlat10.x;
    u_xlat10.x = ((x_3609 * x_3610) + x_3613);
    let x_3616 : f32 = u_xlat83;
    let x_3618 : f32 = u_xlat10.x;
    u_xlat83 = (x_3616 * x_3618);
    let x_3620 : vec4<f32> = u_xlat2;
    let x_3622 : vec3<f32> = u_xlat34;
    u_xlat10.x = dot(vec3<f32>(x_3620.x, x_3620.y, x_3620.z), x_3622);
    let x_3626 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_3626, 0.0f, 1.0f);
    let x_3629 : f32 = u_xlat83;
    let x_3631 : f32 = u_xlat10.x;
    u_xlat83 = (x_3629 * x_3631);
    let x_3633 : f32 = u_xlat83;
    let x_3635 : i32 = u_xlati81;
    let x_3637 : vec4<f32> = x_2101.x_AdditionalLightsColor[x_3635];
    let x_3639 : vec3<f32> = (vec3<f32>(x_3633, x_3633, x_3633) * vec3<f32>(x_3637.x, x_3637.y, x_3637.z));
    let x_3640 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3639.x, x_3639.y, x_3639.z, x_3640.w);
    let x_3642 : vec4<f32> = u_xlat8;
    let x_3644 : vec4<f32> = u_xlat9;
    let x_3647 : vec3<f32> = u_xlat3;
    let x_3648 : vec3<f32> = ((vec3<f32>(x_3642.x, x_3642.y, x_3642.z) * vec3<f32>(x_3644.x, x_3644.x, x_3644.x)) + x_3647);
    let x_3649 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3648.x, x_3648.y, x_3648.z, x_3649.w);
    let x_3651 : vec4<f32> = u_xlat8;
    let x_3653 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_3651.x, x_3651.y, x_3651.z), vec3<f32>(x_3653.x, x_3653.y, x_3653.z));
    let x_3656 : f32 = u_xlat81;
    u_xlat81 = max(x_3656, 1.17549435e-38f);
    let x_3658 : f32 = u_xlat81;
    u_xlat81 = inverseSqrt(x_3658);
    let x_3660 : f32 = u_xlat81;
    let x_3662 : vec4<f32> = u_xlat8;
    let x_3664 : vec3<f32> = (vec3<f32>(x_3660, x_3660, x_3660) * vec3<f32>(x_3662.x, x_3662.y, x_3662.z));
    let x_3665 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3664.x, x_3664.y, x_3664.z, x_3665.w);
    let x_3667 : vec4<f32> = u_xlat2;
    let x_3669 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_3667.x, x_3667.y, x_3667.z), vec3<f32>(x_3669.x, x_3669.y, x_3669.z));
    let x_3672 : f32 = u_xlat81;
    u_xlat81 = clamp(x_3672, 0.0f, 1.0f);
    let x_3674 : vec3<f32> = u_xlat34;
    let x_3675 : vec4<f32> = u_xlat8;
    u_xlat8.x = dot(x_3674, vec3<f32>(x_3675.x, x_3675.y, x_3675.z));
    let x_3680 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_3680, 0.0f, 1.0f);
    let x_3683 : f32 = u_xlat81;
    let x_3684 : f32 = u_xlat81;
    u_xlat81 = (x_3683 * x_3684);
    let x_3686 : f32 = u_xlat81;
    let x_3688 : f32 = u_xlat7.x;
    u_xlat81 = ((x_3686 * x_3688) + 1.00001001358032226562f);
    let x_3692 : f32 = u_xlat8.x;
    let x_3694 : f32 = u_xlat8.x;
    u_xlat8.x = (x_3692 * x_3694);
    let x_3697 : f32 = u_xlat81;
    let x_3698 : f32 = u_xlat81;
    u_xlat81 = (x_3697 * x_3698);
    let x_3701 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_3701, 0.10000000149011611938f);
    let x_3704 : f32 = u_xlat81;
    let x_3706 : f32 = u_xlat8.x;
    u_xlat81 = (x_3704 * x_3706);
    let x_3708 : f32 = u_xlat80;
    let x_3709 : f32 = u_xlat81;
    u_xlat81 = (x_3708 * x_3709);
    let x_3711 : f32 = u_xlat79;
    let x_3712 : f32 = u_xlat81;
    u_xlat81 = (x_3711 / x_3712);
    let x_3714 : vec4<f32> = u_xlat0;
    let x_3716 : f32 = u_xlat81;
    let x_3719 : vec3<f32> = u_xlat26;
    let x_3720 : vec3<f32> = ((vec3<f32>(x_3714.x, x_3714.y, x_3714.z) * vec3<f32>(x_3716, x_3716, x_3716)) + x_3719);
    let x_3721 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3720.x, x_3720.y, x_3720.z, x_3721.w);
    let x_3723 : vec4<f32> = u_xlat8;
    let x_3725 : vec4<f32> = u_xlat10;
    let x_3728 : vec4<f32> = u_xlat4;
    let x_3730 : vec3<f32> = ((vec3<f32>(x_3723.x, x_3723.y, x_3723.z) * vec3<f32>(x_3725.x, x_3725.y, x_3725.z)) + vec3<f32>(x_3728.x, x_3728.y, x_3728.z));
    let x_3731 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_3730.x, x_3730.y, x_3730.z, x_3731.w);

    continuing {
      let x_3733 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3733 + bitcast<u32>(1i));
    }
  }
  let x_3735 : vec3<f32> = u_xlat32;
  let x_3736 : vec4<f32> = u_xlat6;
  let x_3739 : vec4<f32> = u_xlat5;
  let x_3741 : vec3<f32> = ((x_3735 * vec3<f32>(x_3736.x, x_3736.y, x_3736.z)) + vec3<f32>(x_3739.x, x_3739.y, x_3739.z));
  let x_3742 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3741.x, x_3741.y, x_3741.z, x_3742.w);
  let x_3746 : vec4<f32> = u_xlat4;
  let x_3748 : vec4<f32> = u_xlat0;
  let x_3750 : vec3<f32> = (vec3<f32>(x_3746.x, x_3746.y, x_3746.z) + vec3<f32>(x_3748.x, x_3748.y, x_3748.z));
  let x_3751 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3750.x, x_3750.y, x_3750.z, x_3751.w);
  let x_3755 : f32 = x_42.x_Surface;
  u_xlatb0 = (x_3755 == 1.0f);
  let x_3757 : bool = u_xlatb0;
  if (x_3757) {
    let x_3762 : f32 = u_xlat1.x;
    x_3758 = x_3762;
  } else {
    x_3758 = 1.0f;
  }
  let x_3764 : f32 = x_3758;
  SV_Target0.w = x_3764;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


