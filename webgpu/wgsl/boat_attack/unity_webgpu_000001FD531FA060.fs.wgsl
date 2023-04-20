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

alias Arr_4 = array<mat4x4<f32>, 32u>;

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
  x_AdditionalLightsWorldToShadow : Arr_4,
}

alias Arr_5 = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr_5,
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
  x_AdditionalLightsWorldToLights : Arr_4,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_3,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_8,
}

alias Arr_9 = array<vec4<f32>, 32u>;

alias Arr_10 = array<vec4<f32>, 32u>;

alias Arr_11 = array<vec4<f32>, 32u>;

alias Arr_12 = array<vec4<f32>, 32u>;

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
  x_AdditionalLightsLayerMasks : Arr_8,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(7) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_42 : UnityPerMaterial;

var<private> u_xlatb78 : bool;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat78 : f32;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_148 : LightShadows;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlatb4 : vec4<bool>;

var<private> u_xlatu78 : u32;

var<private> u_xlati78 : i32;

@group(1) @binding(2) var<uniform> x_341 : UnityPerDraw;

var<private> u_xlat27 : vec3<f32>;

var<private> u_xlat81 : f32;

var<private> u_xlat82 : f32;

var<private> u_xlat83 : f32;

var<private> u_xlatb6 : bool;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb32 : bool;

var<private> u_xlat32 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat58 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlat65 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat34 : vec3<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat62 : vec2<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlatb30 : bool;

var<private> u_xlatb56 : bool;

var<private> u_xlat30 : f32;

var<private> u_xlat56 : f32;

@group(1) @binding(5) var<uniform> x_1817 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu56 : u32;

var<private> u_xlati84 : i32;

var<private> u_xlati56 : i32;

@group(1) @binding(1) var<uniform> x_2253 : AdditionalLights;

var<private> u_xlat85 : f32;

var<private> u_xlat87 : f32;

var<private> u_xlati87 : i32;

var<private> u_xlatb88 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat89 : f32;

var<private> u_xlat37 : vec3<f32>;

var<private> u_xlat88 : f32;

var<private> u_xlatb87 : bool;

@group(0) @binding(3) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat66 : vec2<f32>;

var<private> u_xlat39 : vec3<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat40 : vec2<f32>;

var<private> u_xlat72 : vec2<f32>;

var<private> u_xlat67 : vec2<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlat25 : vec4<f32>;

var<private> u_xlati88 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlati37 : i32;

var<private> u_xlatb37 : vec3<bool>;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu81 : u32;

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
  var x_1768 : f32;
  var x_1900 : f32;
  var x_1911 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2391 : f32;
  var x_2402 : f32;
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
  var x_4021 : f32;
  var x_4034 : f32;
  var x_4092 : f32;
  var x_4103 : vec3<f32>;
  var x_4252 : f32;
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
  u_xlatb78 = (x_55 == 0.0f);
  let x_61 : vec3<f32> = vs_TEXCOORD1;
  let x_66 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_67 : vec3<f32> = (-(x_61) + x_66);
  let x_68 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_67.x, x_67.y, x_67.z, x_68.w);
  let x_72 : vec4<f32> = u_xlat2;
  let x_74 : vec4<f32> = u_xlat2;
  u_xlat80 = dot(vec3<f32>(x_72.x, x_72.y, x_72.z), vec3<f32>(x_74.x, x_74.y, x_74.z));
  let x_77 : f32 = u_xlat80;
  u_xlat80 = inverseSqrt(x_77);
  let x_79 : f32 = u_xlat80;
  let x_81 : vec4<f32> = u_xlat2;
  let x_83 : vec3<f32> = (vec3<f32>(x_79, x_79, x_79) * vec3<f32>(x_81.x, x_81.y, x_81.z));
  let x_84 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_83.x, x_83.y, x_83.z, x_84.w);
  let x_88 : bool = u_xlatb78;
  if (x_88) {
    let x_94 : f32 = u_xlat2.x;
    x_90 = x_94;
  } else {
    let x_99 : f32 = x_28.unity_MatrixV[0i].z;
    x_90 = x_99;
  }
  let x_100 : f32 = x_90;
  u_xlat3.x = x_100;
  let x_102 : bool = u_xlatb78;
  if (x_102) {
    let x_108 : f32 = u_xlat2.y;
    x_103 = x_108;
  } else {
    let x_112 : f32 = x_28.unity_MatrixV[1i].z;
    x_103 = x_112;
  }
  let x_113 : f32 = x_103;
  u_xlat3.y = x_113;
  let x_115 : bool = u_xlatb78;
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
  u_xlat78 = dot(x_128, x_129);
  let x_131 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_131);
  let x_133 : f32 = u_xlat78;
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
  u_xlat78 = dot(x_259, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_265 : f32 = u_xlat78;
  u_xlat78 = (-(x_265) + 4.0f);
  let x_270 : f32 = u_xlat78;
  u_xlatu78 = u32(x_270);
  let x_274 : u32 = u_xlatu78;
  u_xlati78 = (bitcast<i32>(x_274) << bitcast<u32>(2i));
  let x_277 : vec3<f32> = vs_TEXCOORD1;
  let x_279 : i32 = u_xlati78;
  let x_282 : i32 = u_xlati78;
  let x_286 : vec4<f32> = x_148.x_MainLightWorldToShadow[((x_279 + 1i) / 4i)][((x_282 + 1i) % 4i)];
  let x_288 : vec3<f32> = (vec3<f32>(x_277.y, x_277.y, x_277.y) * vec3<f32>(x_286.x, x_286.y, x_286.z));
  let x_289 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_288.x, x_288.y, x_288.z, x_289.w);
  let x_291 : i32 = u_xlati78;
  let x_293 : i32 = u_xlati78;
  let x_296 : vec4<f32> = x_148.x_MainLightWorldToShadow[(x_291 / 4i)][(x_293 % 4i)];
  let x_298 : vec3<f32> = vs_TEXCOORD1;
  let x_301 : vec4<f32> = u_xlat4;
  let x_303 : vec3<f32> = ((vec3<f32>(x_296.x, x_296.y, x_296.z) * vec3<f32>(x_298.x, x_298.x, x_298.x)) + vec3<f32>(x_301.x, x_301.y, x_301.z));
  let x_304 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_303.x, x_303.y, x_303.z, x_304.w);
  let x_306 : i32 = u_xlati78;
  let x_309 : i32 = u_xlati78;
  let x_313 : vec4<f32> = x_148.x_MainLightWorldToShadow[((x_306 + 2i) / 4i)][((x_309 + 2i) % 4i)];
  let x_315 : vec3<f32> = vs_TEXCOORD1;
  let x_318 : vec4<f32> = u_xlat4;
  let x_320 : vec3<f32> = ((vec3<f32>(x_313.x, x_313.y, x_313.z) * vec3<f32>(x_315.z, x_315.z, x_315.z)) + vec3<f32>(x_318.x, x_318.y, x_318.z));
  let x_321 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_320.x, x_320.y, x_320.z, x_321.w);
  let x_323 : vec4<f32> = u_xlat4;
  let x_325 : i32 = u_xlati78;
  let x_328 : i32 = u_xlati78;
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
  u_xlat78 = (x_384 * x_386);
  let x_389 : f32 = u_xlat2.x;
  let x_391 : f32 = u_xlat2.x;
  let x_393 : f32 = u_xlat78;
  u_xlat78 = ((x_389 * x_391) + -(x_393));
  let x_398 : vec4<f32> = x_341.unity_SHC;
  let x_400 : f32 = u_xlat78;
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
  u_xlat78 = ((-(x_422) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_427 : f32 = u_xlat78;
  u_xlat80 = (-(x_427) + 1.0f);
  let x_431 : f32 = u_xlat78;
  let x_433 : vec4<f32> = u_xlat1;
  u_xlat27 = (vec3<f32>(x_431, x_431, x_431) * vec3<f32>(x_433.y, x_433.z, x_433.w));
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
  u_xlat78 = (-(x_467) + 1.0f);
  let x_471 : f32 = u_xlat78;
  let x_472 : f32 = u_xlat78;
  u_xlat81 = (x_471 * x_472);
  let x_474 : f32 = u_xlat81;
  u_xlat81 = max(x_474, 0.0078125f);
  let x_478 : f32 = u_xlat81;
  let x_479 : f32 = u_xlat81;
  u_xlat82 = (x_478 * x_479);
  let x_481 : f32 = u_xlat80;
  let x_483 : f32 = x_42.x_Smoothness;
  u_xlat80 = (x_481 + x_483);
  let x_485 : f32 = u_xlat80;
  u_xlat80 = clamp(x_485, 0.0f, 1.0f);
  let x_488 : f32 = u_xlat81;
  u_xlat83 = ((x_488 * 4.0f) + 2.0f);
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
      u_xlatb32 = (x_589 == 2.0f);
      let x_591 : bool = u_xlatb32;
      if (x_591) {
        let x_596 : vec4<f32> = u_xlat4;
        let x_600 : vec4<f32> = x_148.x_MainLightShadowmapSize;
        u_xlat32 = ((vec2<f32>(x_596.x, x_596.y) * vec2<f32>(x_600.z, x_600.w)) + vec2<f32>(0.5f, 0.5f));
        let x_606 : vec2<f32> = u_xlat32;
        u_xlat32 = floor(x_606);
        let x_608 : vec4<f32> = u_xlat4;
        let x_611 : vec4<f32> = x_148.x_MainLightShadowmapSize;
        let x_614 : vec2<f32> = u_xlat32;
        let x_616 : vec2<f32> = ((vec2<f32>(x_608.x, x_608.y) * vec2<f32>(x_611.z, x_611.w)) + -(x_614));
        let x_617 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_616.x, x_616.y, x_617.z, x_617.w);
        let x_620 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_620.x, x_620.x, x_620.y, x_620.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_625 : vec4<f32> = u_xlat8;
        let x_627 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_625.x, x_625.x, x_625.z, x_625.z) * vec4<f32>(x_627.x, x_627.x, x_627.z, x_627.z));
        let x_631 : vec4<f32> = u_xlat9;
        u_xlat59 = (vec2<f32>(x_631.y, x_631.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
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
        u_xlat61 = min(vec2<f32>(x_653.x, x_653.y), vec2<f32>(0.0f, 0.0f));
        let x_657 : vec2<f32> = u_xlat61;
        let x_659 : vec2<f32> = u_xlat61;
        let x_661 : vec4<f32> = u_xlat9;
        u_xlat61 = ((-(x_657) * x_659) + vec2<f32>(x_661.x, x_661.y));
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
        let x_680 : vec2<f32> = u_xlat61;
        u_xlat61 = (x_680 + vec2<f32>(1.0f, 1.0f));
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
        let x_701 : vec2<f32> = u_xlat61;
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
        let x_726 : f32 = u_xlat59.x;
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
        let x_743 : f32 = u_xlat59.y;
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
        let x_799 : vec2<f32> = u_xlat32;
        let x_802 : vec4<f32> = x_148.x_MainLightShadowmapSize;
        let x_805 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_799.x, x_799.y, x_799.x, x_799.y) * vec4<f32>(x_802.x, x_802.y, x_802.x, x_802.y)) + vec4<f32>(x_805.y, x_805.w, x_805.x, x_805.w));
        let x_808 : vec2<f32> = u_xlat32;
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
        let x_826 : vec2<f32> = u_xlat32;
        let x_829 : vec4<f32> = x_148.x_MainLightShadowmapSize;
        let x_832 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_826.x, x_826.y, x_826.x, x_826.y) * vec4<f32>(x_829.x, x_829.y, x_829.x, x_829.y)) + vec4<f32>(x_832.x, x_832.y, x_832.z, x_832.y));
        let x_835 : vec2<f32> = u_xlat32;
        let x_838 : vec4<f32> = x_148.x_MainLightShadowmapSize;
        let x_841 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_835.x, x_835.y, x_835.x, x_835.y) * vec4<f32>(x_838.x, x_838.y, x_838.x, x_838.y)) + vec4<f32>(x_841.w, x_841.y, x_841.w, x_841.z));
        let x_844 : vec2<f32> = u_xlat32;
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
        u_xlat32.x = (x_865 * x_867);
        let x_871 : vec4<f32> = u_xlat11;
        let x_872 : vec2<f32> = vec2<f32>(x_871.x, x_871.y);
        let x_874 : f32 = u_xlat4.z;
        txVec4 = vec3<f32>(x_872.x, x_872.y, x_874);
        let x_882 : vec3<f32> = txVec4;
        let x_884 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_882.xy, x_882.z);
        u_xlat58 = x_884;
        let x_886 : vec4<f32> = u_xlat11;
        let x_887 : vec2<f32> = vec2<f32>(x_886.z, x_886.w);
        let x_889 : f32 = u_xlat4.z;
        txVec5 = vec3<f32>(x_887.x, x_887.y, x_889);
        let x_897 : vec3<f32> = txVec5;
        let x_899 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_897.xy, x_897.z);
        u_xlat84 = x_899;
        let x_900 : f32 = u_xlat84;
        let x_902 : f32 = u_xlat14.y;
        u_xlat84 = (x_900 * x_902);
        let x_905 : f32 = u_xlat14.x;
        let x_906 : f32 = u_xlat58;
        let x_908 : f32 = u_xlat84;
        u_xlat58 = ((x_905 * x_906) + x_908);
        let x_911 : vec4<f32> = u_xlat12;
        let x_912 : vec2<f32> = vec2<f32>(x_911.x, x_911.y);
        let x_914 : f32 = u_xlat4.z;
        txVec6 = vec3<f32>(x_912.x, x_912.y, x_914);
        let x_921 : vec3<f32> = txVec6;
        let x_923 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_921.xy, x_921.z);
        u_xlat84 = x_923;
        let x_925 : f32 = u_xlat14.z;
        let x_926 : f32 = u_xlat84;
        let x_928 : f32 = u_xlat58;
        u_xlat58 = ((x_925 * x_926) + x_928);
        let x_931 : vec4<f32> = u_xlat10;
        let x_932 : vec2<f32> = vec2<f32>(x_931.x, x_931.y);
        let x_934 : f32 = u_xlat4.z;
        txVec7 = vec3<f32>(x_932.x, x_932.y, x_934);
        let x_941 : vec3<f32> = txVec7;
        let x_943 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_941.xy, x_941.z);
        u_xlat84 = x_943;
        let x_945 : f32 = u_xlat14.w;
        let x_946 : f32 = u_xlat84;
        let x_948 : f32 = u_xlat58;
        u_xlat58 = ((x_945 * x_946) + x_948);
        let x_951 : vec4<f32> = u_xlat13;
        let x_952 : vec2<f32> = vec2<f32>(x_951.x, x_951.y);
        let x_954 : f32 = u_xlat4.z;
        txVec8 = vec3<f32>(x_952.x, x_952.y, x_954);
        let x_961 : vec3<f32> = txVec8;
        let x_963 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_961.xy, x_961.z);
        u_xlat84 = x_963;
        let x_965 : f32 = u_xlat15.x;
        let x_966 : f32 = u_xlat84;
        let x_968 : f32 = u_xlat58;
        u_xlat58 = ((x_965 * x_966) + x_968);
        let x_971 : vec4<f32> = u_xlat13;
        let x_972 : vec2<f32> = vec2<f32>(x_971.z, x_971.w);
        let x_974 : f32 = u_xlat4.z;
        txVec9 = vec3<f32>(x_972.x, x_972.y, x_974);
        let x_981 : vec3<f32> = txVec9;
        let x_983 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_981.xy, x_981.z);
        u_xlat84 = x_983;
        let x_985 : f32 = u_xlat15.y;
        let x_986 : f32 = u_xlat84;
        let x_988 : f32 = u_xlat58;
        u_xlat58 = ((x_985 * x_986) + x_988);
        let x_991 : vec4<f32> = u_xlat10;
        let x_992 : vec2<f32> = vec2<f32>(x_991.z, x_991.w);
        let x_994 : f32 = u_xlat4.z;
        txVec10 = vec3<f32>(x_992.x, x_992.y, x_994);
        let x_1001 : vec3<f32> = txVec10;
        let x_1003 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1001.xy, x_1001.z);
        u_xlat84 = x_1003;
        let x_1005 : f32 = u_xlat15.z;
        let x_1006 : f32 = u_xlat84;
        let x_1008 : f32 = u_xlat58;
        u_xlat58 = ((x_1005 * x_1006) + x_1008);
        let x_1011 : vec4<f32> = u_xlat9;
        let x_1012 : vec2<f32> = vec2<f32>(x_1011.x, x_1011.y);
        let x_1014 : f32 = u_xlat4.z;
        txVec11 = vec3<f32>(x_1012.x, x_1012.y, x_1014);
        let x_1021 : vec3<f32> = txVec11;
        let x_1023 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1021.xy, x_1021.z);
        u_xlat84 = x_1023;
        let x_1025 : f32 = u_xlat15.w;
        let x_1026 : f32 = u_xlat84;
        let x_1028 : f32 = u_xlat58;
        u_xlat58 = ((x_1025 * x_1026) + x_1028);
        let x_1031 : vec4<f32> = u_xlat9;
        let x_1032 : vec2<f32> = vec2<f32>(x_1031.z, x_1031.w);
        let x_1034 : f32 = u_xlat4.z;
        txVec12 = vec3<f32>(x_1032.x, x_1032.y, x_1034);
        let x_1041 : vec3<f32> = txVec12;
        let x_1043 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1041.xy, x_1041.z);
        u_xlat84 = x_1043;
        let x_1045 : f32 = u_xlat32.x;
        let x_1046 : f32 = u_xlat84;
        let x_1048 : f32 = u_xlat58;
        u_xlat6.x = ((x_1045 * x_1046) + x_1048);
      } else {
        let x_1052 : vec4<f32> = u_xlat4;
        let x_1055 : vec4<f32> = x_148.x_MainLightShadowmapSize;
        u_xlat32 = ((vec2<f32>(x_1052.x, x_1052.y) * vec2<f32>(x_1055.z, x_1055.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1059 : vec2<f32> = u_xlat32;
        u_xlat32 = floor(x_1059);
        let x_1061 : vec4<f32> = u_xlat4;
        let x_1064 : vec4<f32> = x_148.x_MainLightShadowmapSize;
        let x_1067 : vec2<f32> = u_xlat32;
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
        u_xlat59 = ((vec2<f32>(x_1087.x, x_1087.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1090.x, x_1090.y)));
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
        let x_1140 : vec2<f32> = u_xlat59;
        let x_1143 : vec2<f32> = (vec2<f32>(x_1140.y, x_1140.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1144 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1143.x, x_1143.y, x_1144.z, x_1144.w);
        let x_1146 : vec4<f32> = u_xlat8;
        u_xlat59 = (vec2<f32>(x_1146.x, x_1146.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
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
        let x_1174 : f32 = u_xlat59.x;
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
        let x_1195 : f32 = u_xlat59.y;
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
        let x_1233 : vec2<f32> = u_xlat32;
        let x_1236 : vec4<f32> = x_148.x_MainLightShadowmapSize;
        let x_1239 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1233.x, x_1233.y, x_1233.x, x_1233.y) * vec4<f32>(x_1236.x, x_1236.y, x_1236.x, x_1236.y)) + vec4<f32>(x_1239.x, x_1239.y, x_1239.z, x_1239.y));
        let x_1242 : vec2<f32> = u_xlat32;
        let x_1244 : vec4<f32> = x_148.x_MainLightShadowmapSize;
        let x_1247 : vec4<f32> = u_xlat11;
        let x_1249 : vec2<f32> = ((x_1242 * vec2<f32>(x_1244.x, x_1244.y)) + vec2<f32>(x_1247.w, x_1247.y));
        let x_1250 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1249.x, x_1249.y, x_1250.z, x_1250.w);
        let x_1253 : f32 = u_xlat11.y;
        u_xlat8.y = x_1253;
        let x_1256 : f32 = u_xlat10.z;
        u_xlat11.y = x_1256;
        let x_1258 : vec2<f32> = u_xlat32;
        let x_1261 : vec4<f32> = x_148.x_MainLightShadowmapSize;
        let x_1264 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_1258.x, x_1258.y, x_1258.x, x_1258.y) * vec4<f32>(x_1261.x, x_1261.y, x_1261.x, x_1261.y)) + vec4<f32>(x_1264.x, x_1264.y, x_1264.z, x_1264.y));
        let x_1268 : vec2<f32> = u_xlat32;
        let x_1270 : vec4<f32> = x_148.x_MainLightShadowmapSize;
        let x_1273 : vec4<f32> = u_xlat11;
        u_xlat65 = ((x_1268 * vec2<f32>(x_1270.x, x_1270.y)) + vec2<f32>(x_1273.w, x_1273.y));
        let x_1277 : f32 = u_xlat11.y;
        u_xlat8.z = x_1277;
        let x_1279 : vec2<f32> = u_xlat32;
        let x_1282 : vec4<f32> = x_148.x_MainLightShadowmapSize;
        let x_1285 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1279.x, x_1279.y, x_1279.x, x_1279.y) * vec4<f32>(x_1282.x, x_1282.y, x_1282.x, x_1282.y)) + vec4<f32>(x_1285.x, x_1285.y, x_1285.x, x_1285.z));
        let x_1289 : f32 = u_xlat10.w;
        u_xlat11.y = x_1289;
        let x_1292 : vec2<f32> = u_xlat32;
        let x_1295 : vec4<f32> = x_148.x_MainLightShadowmapSize;
        let x_1298 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1292.x, x_1292.y, x_1292.x, x_1292.y) * vec4<f32>(x_1295.x, x_1295.y, x_1295.x, x_1295.y)) + vec4<f32>(x_1298.x, x_1298.y, x_1298.z, x_1298.y));
        let x_1302 : vec2<f32> = u_xlat32;
        let x_1304 : vec4<f32> = x_148.x_MainLightShadowmapSize;
        let x_1307 : vec4<f32> = u_xlat11;
        let x_1309 : vec2<f32> = ((x_1302 * vec2<f32>(x_1304.x, x_1304.y)) + vec2<f32>(x_1307.w, x_1307.y));
        let x_1310 : vec3<f32> = u_xlat34;
        u_xlat34 = vec3<f32>(x_1309.x, x_1309.y, x_1310.z);
        let x_1313 : f32 = u_xlat11.y;
        u_xlat8.w = x_1313;
        let x_1316 : vec2<f32> = u_xlat32;
        let x_1318 : vec4<f32> = x_148.x_MainLightShadowmapSize;
        let x_1321 : vec4<f32> = u_xlat8;
        let x_1323 : vec2<f32> = ((x_1316 * vec2<f32>(x_1318.x, x_1318.y)) + vec2<f32>(x_1321.x, x_1321.w));
        let x_1324 : vec4<f32> = u_xlat17;
        u_xlat17 = vec4<f32>(x_1323.x, x_1323.y, x_1324.z, x_1324.w);
        let x_1326 : vec4<f32> = u_xlat11;
        let x_1327 : vec3<f32> = vec3<f32>(x_1326.x, x_1326.z, x_1326.w);
        let x_1328 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1327.x, x_1328.y, x_1327.y, x_1327.z);
        let x_1330 : vec2<f32> = u_xlat32;
        let x_1333 : vec4<f32> = x_148.x_MainLightShadowmapSize;
        let x_1336 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1330.x, x_1330.y, x_1330.x, x_1330.y) * vec4<f32>(x_1333.x, x_1333.y, x_1333.x, x_1333.y)) + vec4<f32>(x_1336.x, x_1336.y, x_1336.z, x_1336.y));
        let x_1340 : vec2<f32> = u_xlat32;
        let x_1342 : vec4<f32> = x_148.x_MainLightShadowmapSize;
        let x_1345 : vec4<f32> = u_xlat10;
        u_xlat62 = ((x_1340 * vec2<f32>(x_1342.x, x_1342.y)) + vec2<f32>(x_1345.w, x_1345.y));
        let x_1349 : f32 = u_xlat8.x;
        u_xlat10.x = x_1349;
        let x_1351 : vec2<f32> = u_xlat32;
        let x_1353 : vec4<f32> = x_148.x_MainLightShadowmapSize;
        let x_1356 : vec4<f32> = u_xlat10;
        u_xlat32 = ((x_1351 * vec2<f32>(x_1353.x, x_1353.y)) + vec2<f32>(x_1356.x, x_1356.y));
        let x_1360 : vec4<f32> = u_xlat7;
        let x_1362 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1360.x, x_1360.x, x_1360.x, x_1360.x) * x_1362);
        let x_1365 : vec4<f32> = u_xlat7;
        let x_1367 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_1365.y, x_1365.y, x_1365.y, x_1365.y) * x_1367);
        let x_1370 : vec4<f32> = u_xlat7;
        let x_1372 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_1370.z, x_1370.z, x_1370.z, x_1370.z) * x_1372);
        let x_1374 : vec4<f32> = u_xlat7;
        let x_1376 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_1374.w, x_1374.w, x_1374.w, x_1374.w) * x_1376);
        let x_1379 : vec4<f32> = u_xlat12;
        let x_1380 : vec2<f32> = vec2<f32>(x_1379.x, x_1379.y);
        let x_1382 : f32 = u_xlat4.z;
        txVec13 = vec3<f32>(x_1380.x, x_1380.y, x_1382);
        let x_1389 : vec3<f32> = txVec13;
        let x_1391 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1389.xy, x_1389.z);
        u_xlat84 = x_1391;
        let x_1393 : vec4<f32> = u_xlat12;
        let x_1394 : vec2<f32> = vec2<f32>(x_1393.z, x_1393.w);
        let x_1396 : f32 = u_xlat4.z;
        txVec14 = vec3<f32>(x_1394.x, x_1394.y, x_1396);
        let x_1403 : vec3<f32> = txVec14;
        let x_1405 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1403.xy, x_1403.z);
        u_xlat8.x = x_1405;
        let x_1408 : f32 = u_xlat8.x;
        let x_1410 : f32 = u_xlat18.y;
        u_xlat8.x = (x_1408 * x_1410);
        let x_1414 : f32 = u_xlat18.x;
        let x_1415 : f32 = u_xlat84;
        let x_1418 : f32 = u_xlat8.x;
        u_xlat84 = ((x_1414 * x_1415) + x_1418);
        let x_1421 : vec4<f32> = u_xlat13;
        let x_1422 : vec2<f32> = vec2<f32>(x_1421.x, x_1421.y);
        let x_1424 : f32 = u_xlat4.z;
        txVec15 = vec3<f32>(x_1422.x, x_1422.y, x_1424);
        let x_1431 : vec3<f32> = txVec15;
        let x_1433 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1431.xy, x_1431.z);
        u_xlat8.x = x_1433;
        let x_1436 : f32 = u_xlat18.z;
        let x_1438 : f32 = u_xlat8.x;
        let x_1440 : f32 = u_xlat84;
        u_xlat84 = ((x_1436 * x_1438) + x_1440);
        let x_1443 : vec4<f32> = u_xlat15;
        let x_1444 : vec2<f32> = vec2<f32>(x_1443.x, x_1443.y);
        let x_1446 : f32 = u_xlat4.z;
        txVec16 = vec3<f32>(x_1444.x, x_1444.y, x_1446);
        let x_1453 : vec3<f32> = txVec16;
        let x_1455 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1453.xy, x_1453.z);
        u_xlat8.x = x_1455;
        let x_1458 : f32 = u_xlat18.w;
        let x_1460 : f32 = u_xlat8.x;
        let x_1462 : f32 = u_xlat84;
        u_xlat84 = ((x_1458 * x_1460) + x_1462);
        let x_1465 : vec4<f32> = u_xlat14;
        let x_1466 : vec2<f32> = vec2<f32>(x_1465.x, x_1465.y);
        let x_1468 : f32 = u_xlat4.z;
        txVec17 = vec3<f32>(x_1466.x, x_1466.y, x_1468);
        let x_1475 : vec3<f32> = txVec17;
        let x_1477 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1475.xy, x_1475.z);
        u_xlat8.x = x_1477;
        let x_1480 : f32 = u_xlat19.x;
        let x_1482 : f32 = u_xlat8.x;
        let x_1484 : f32 = u_xlat84;
        u_xlat84 = ((x_1480 * x_1482) + x_1484);
        let x_1487 : vec4<f32> = u_xlat14;
        let x_1488 : vec2<f32> = vec2<f32>(x_1487.z, x_1487.w);
        let x_1490 : f32 = u_xlat4.z;
        txVec18 = vec3<f32>(x_1488.x, x_1488.y, x_1490);
        let x_1497 : vec3<f32> = txVec18;
        let x_1499 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1497.xy, x_1497.z);
        u_xlat8.x = x_1499;
        let x_1502 : f32 = u_xlat19.y;
        let x_1504 : f32 = u_xlat8.x;
        let x_1506 : f32 = u_xlat84;
        u_xlat84 = ((x_1502 * x_1504) + x_1506);
        let x_1509 : vec2<f32> = u_xlat65;
        let x_1511 : f32 = u_xlat4.z;
        txVec19 = vec3<f32>(x_1509.x, x_1509.y, x_1511);
        let x_1518 : vec3<f32> = txVec19;
        let x_1520 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1518.xy, x_1518.z);
        u_xlat8.x = x_1520;
        let x_1523 : f32 = u_xlat19.z;
        let x_1525 : f32 = u_xlat8.x;
        let x_1527 : f32 = u_xlat84;
        u_xlat84 = ((x_1523 * x_1525) + x_1527);
        let x_1530 : vec4<f32> = u_xlat15;
        let x_1531 : vec2<f32> = vec2<f32>(x_1530.z, x_1530.w);
        let x_1533 : f32 = u_xlat4.z;
        txVec20 = vec3<f32>(x_1531.x, x_1531.y, x_1533);
        let x_1540 : vec3<f32> = txVec20;
        let x_1542 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1540.xy, x_1540.z);
        u_xlat8.x = x_1542;
        let x_1545 : f32 = u_xlat19.w;
        let x_1547 : f32 = u_xlat8.x;
        let x_1549 : f32 = u_xlat84;
        u_xlat84 = ((x_1545 * x_1547) + x_1549);
        let x_1552 : vec4<f32> = u_xlat16;
        let x_1553 : vec2<f32> = vec2<f32>(x_1552.x, x_1552.y);
        let x_1555 : f32 = u_xlat4.z;
        txVec21 = vec3<f32>(x_1553.x, x_1553.y, x_1555);
        let x_1562 : vec3<f32> = txVec21;
        let x_1564 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1562.xy, x_1562.z);
        u_xlat8.x = x_1564;
        let x_1567 : f32 = u_xlat20.x;
        let x_1569 : f32 = u_xlat8.x;
        let x_1571 : f32 = u_xlat84;
        u_xlat84 = ((x_1567 * x_1569) + x_1571);
        let x_1574 : vec4<f32> = u_xlat16;
        let x_1575 : vec2<f32> = vec2<f32>(x_1574.z, x_1574.w);
        let x_1577 : f32 = u_xlat4.z;
        txVec22 = vec3<f32>(x_1575.x, x_1575.y, x_1577);
        let x_1584 : vec3<f32> = txVec22;
        let x_1586 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1584.xy, x_1584.z);
        u_xlat8.x = x_1586;
        let x_1589 : f32 = u_xlat20.y;
        let x_1591 : f32 = u_xlat8.x;
        let x_1593 : f32 = u_xlat84;
        u_xlat84 = ((x_1589 * x_1591) + x_1593);
        let x_1596 : vec3<f32> = u_xlat34;
        let x_1597 : vec2<f32> = vec2<f32>(x_1596.x, x_1596.y);
        let x_1599 : f32 = u_xlat4.z;
        txVec23 = vec3<f32>(x_1597.x, x_1597.y, x_1599);
        let x_1606 : vec3<f32> = txVec23;
        let x_1608 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1606.xy, x_1606.z);
        u_xlat8.x = x_1608;
        let x_1611 : f32 = u_xlat20.z;
        let x_1613 : f32 = u_xlat8.x;
        let x_1615 : f32 = u_xlat84;
        u_xlat84 = ((x_1611 * x_1613) + x_1615);
        let x_1618 : vec4<f32> = u_xlat17;
        let x_1619 : vec2<f32> = vec2<f32>(x_1618.x, x_1618.y);
        let x_1621 : f32 = u_xlat4.z;
        txVec24 = vec3<f32>(x_1619.x, x_1619.y, x_1621);
        let x_1628 : vec3<f32> = txVec24;
        let x_1630 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1628.xy, x_1628.z);
        u_xlat8.x = x_1630;
        let x_1633 : f32 = u_xlat20.w;
        let x_1635 : f32 = u_xlat8.x;
        let x_1637 : f32 = u_xlat84;
        u_xlat84 = ((x_1633 * x_1635) + x_1637);
        let x_1640 : vec4<f32> = u_xlat11;
        let x_1641 : vec2<f32> = vec2<f32>(x_1640.x, x_1640.y);
        let x_1643 : f32 = u_xlat4.z;
        txVec25 = vec3<f32>(x_1641.x, x_1641.y, x_1643);
        let x_1650 : vec3<f32> = txVec25;
        let x_1652 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1650.xy, x_1650.z);
        u_xlat8.x = x_1652;
        let x_1655 : f32 = u_xlat7.x;
        let x_1657 : f32 = u_xlat8.x;
        let x_1659 : f32 = u_xlat84;
        u_xlat84 = ((x_1655 * x_1657) + x_1659);
        let x_1662 : vec4<f32> = u_xlat11;
        let x_1663 : vec2<f32> = vec2<f32>(x_1662.z, x_1662.w);
        let x_1665 : f32 = u_xlat4.z;
        txVec26 = vec3<f32>(x_1663.x, x_1663.y, x_1665);
        let x_1672 : vec3<f32> = txVec26;
        let x_1674 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1672.xy, x_1672.z);
        u_xlat7.x = x_1674;
        let x_1677 : f32 = u_xlat7.y;
        let x_1679 : f32 = u_xlat7.x;
        let x_1681 : f32 = u_xlat84;
        u_xlat84 = ((x_1677 * x_1679) + x_1681);
        let x_1684 : vec2<f32> = u_xlat62;
        let x_1686 : f32 = u_xlat4.z;
        txVec27 = vec3<f32>(x_1684.x, x_1684.y, x_1686);
        let x_1693 : vec3<f32> = txVec27;
        let x_1695 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1693.xy, x_1693.z);
        u_xlat7.x = x_1695;
        let x_1698 : f32 = u_xlat7.z;
        let x_1700 : f32 = u_xlat7.x;
        let x_1702 : f32 = u_xlat84;
        u_xlat84 = ((x_1698 * x_1700) + x_1702);
        let x_1705 : vec2<f32> = u_xlat32;
        let x_1707 : f32 = u_xlat4.z;
        txVec28 = vec3<f32>(x_1705.x, x_1705.y, x_1707);
        let x_1714 : vec3<f32> = txVec28;
        let x_1716 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1714.xy, x_1714.z);
        u_xlat32.x = x_1716;
        let x_1719 : f32 = u_xlat7.w;
        let x_1721 : f32 = u_xlat32.x;
        let x_1723 : f32 = u_xlat84;
        u_xlat6.x = ((x_1719 * x_1721) + x_1723);
      }
    }
  } else {
    let x_1728 : vec4<f32> = u_xlat4;
    let x_1729 : vec2<f32> = vec2<f32>(x_1728.x, x_1728.y);
    let x_1731 : f32 = u_xlat4.z;
    txVec29 = vec3<f32>(x_1729.x, x_1729.y, x_1731);
    let x_1738 : vec3<f32> = txVec29;
    let x_1740 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1738.xy, x_1738.z);
    u_xlat6.x = x_1740;
  }
  let x_1743 : f32 = x_148.x_MainLightShadowParams.x;
  u_xlat4.x = (-(x_1743) + 1.0f);
  let x_1748 : f32 = u_xlat6.x;
  let x_1750 : f32 = x_148.x_MainLightShadowParams.x;
  let x_1753 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_1748 * x_1750) + x_1753);
  let x_1758 : f32 = u_xlat4.z;
  u_xlatb30 = (0.0f >= x_1758);
  let x_1762 : f32 = u_xlat4.z;
  u_xlatb56 = (x_1762 >= 1.0f);
  let x_1764 : bool = u_xlatb56;
  let x_1765 : bool = u_xlatb30;
  u_xlatb30 = (x_1764 | x_1765);
  let x_1767 : bool = u_xlatb30;
  if (x_1767) {
    x_1768 = 1.0f;
  } else {
    let x_1773 : f32 = u_xlat4.x;
    x_1768 = x_1773;
  }
  let x_1774 : f32 = x_1768;
  u_xlat4.x = x_1774;
  let x_1776 : vec3<f32> = vs_TEXCOORD1;
  let x_1778 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_1780 : vec3<f32> = (x_1776 + -(x_1778));
  let x_1781 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1780.x, x_1780.y, x_1780.z, x_1781.w);
  let x_1784 : vec4<f32> = u_xlat6;
  let x_1786 : vec4<f32> = u_xlat6;
  u_xlat30 = dot(vec3<f32>(x_1784.x, x_1784.y, x_1784.z), vec3<f32>(x_1786.x, x_1786.y, x_1786.z));
  let x_1790 : f32 = u_xlat30;
  let x_1792 : f32 = x_148.x_MainLightShadowParams.z;
  let x_1795 : f32 = x_148.x_MainLightShadowParams.w;
  u_xlat56 = ((x_1790 * x_1792) + x_1795);
  let x_1797 : f32 = u_xlat56;
  u_xlat56 = clamp(x_1797, 0.0f, 1.0f);
  let x_1800 : f32 = u_xlat4.x;
  u_xlat6.x = (-(x_1800) + 1.0f);
  let x_1804 : f32 = u_xlat56;
  let x_1806 : f32 = u_xlat6.x;
  let x_1809 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_1804 * x_1806) + x_1809);
  let x_1819 : f32 = x_1817.x_MainLightCookieTextureFormat;
  u_xlatb56 = !((x_1819 == -1.0f));
  let x_1821 : bool = u_xlatb56;
  if (x_1821) {
    let x_1824 : vec3<f32> = vs_TEXCOORD1;
    let x_1827 : vec4<f32> = x_1817.x_MainLightWorldToLight[1i];
    let x_1829 : vec2<f32> = (vec2<f32>(x_1824.y, x_1824.y) * vec2<f32>(x_1827.x, x_1827.y));
    let x_1830 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1829.x, x_1829.y, x_1830.z, x_1830.w);
    let x_1833 : vec4<f32> = x_1817.x_MainLightWorldToLight[0i];
    let x_1835 : vec3<f32> = vs_TEXCOORD1;
    let x_1838 : vec4<f32> = u_xlat6;
    let x_1840 : vec2<f32> = ((vec2<f32>(x_1833.x, x_1833.y) * vec2<f32>(x_1835.x, x_1835.x)) + vec2<f32>(x_1838.x, x_1838.y));
    let x_1841 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1840.x, x_1840.y, x_1841.z, x_1841.w);
    let x_1844 : vec4<f32> = x_1817.x_MainLightWorldToLight[2i];
    let x_1846 : vec3<f32> = vs_TEXCOORD1;
    let x_1849 : vec4<f32> = u_xlat6;
    let x_1851 : vec2<f32> = ((vec2<f32>(x_1844.x, x_1844.y) * vec2<f32>(x_1846.z, x_1846.z)) + vec2<f32>(x_1849.x, x_1849.y));
    let x_1852 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1851.x, x_1851.y, x_1852.z, x_1852.w);
    let x_1854 : vec4<f32> = u_xlat6;
    let x_1857 : vec4<f32> = x_1817.x_MainLightWorldToLight[3i];
    let x_1859 : vec2<f32> = (vec2<f32>(x_1854.x, x_1854.y) + vec2<f32>(x_1857.x, x_1857.y));
    let x_1860 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1859.x, x_1859.y, x_1860.z, x_1860.w);
    let x_1862 : vec4<f32> = u_xlat6;
    let x_1865 : vec2<f32> = ((vec2<f32>(x_1862.x, x_1862.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1866 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1865.x, x_1865.y, x_1866.z, x_1866.w);
    let x_1873 : vec4<f32> = u_xlat6;
    let x_1876 : f32 = x_28.x_GlobalMipBias.x;
    let x_1877 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1873.x, x_1873.y), x_1876);
    u_xlat6 = x_1877;
    let x_1882 : f32 = x_1817.x_MainLightCookieTextureFormat;
    let x_1884 : f32 = x_1817.x_MainLightCookieTextureFormat;
    let x_1886 : f32 = x_1817.x_MainLightCookieTextureFormat;
    let x_1888 : f32 = x_1817.x_MainLightCookieTextureFormat;
    let x_1889 : vec4<f32> = vec4<f32>(x_1882, x_1884, x_1886, x_1888);
    let x_1896 : vec4<bool> = (vec4<f32>(x_1889.x, x_1889.y, x_1889.z, x_1889.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_1896.x, x_1896.y);
    let x_1899 : bool = u_xlatb7.y;
    if (x_1899) {
      let x_1904 : f32 = u_xlat6.w;
      x_1900 = x_1904;
    } else {
      let x_1907 : f32 = u_xlat6.x;
      x_1900 = x_1907;
    }
    let x_1908 : f32 = x_1900;
    u_xlat56 = x_1908;
    let x_1910 : bool = u_xlatb7.x;
    if (x_1910) {
      let x_1914 : vec4<f32> = u_xlat6;
      x_1911 = vec3<f32>(x_1914.x, x_1914.y, x_1914.z);
    } else {
      let x_1917 : f32 = u_xlat56;
      x_1911 = vec3<f32>(x_1917, x_1917, x_1917);
    }
    let x_1919 : vec3<f32> = x_1911;
    let x_1920 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1919.x, x_1919.y, x_1919.z, x_1920.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_1926 : vec4<f32> = u_xlat6;
  let x_1929 : vec4<f32> = x_28.x_MainLightColor;
  let x_1931 : vec3<f32> = (vec3<f32>(x_1926.x, x_1926.y, x_1926.z) * vec3<f32>(x_1929.x, x_1929.y, x_1929.z));
  let x_1932 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1931.x, x_1931.y, x_1931.z, x_1932.w);
  let x_1934 : vec3<f32> = u_xlat3;
  let x_1936 : vec4<f32> = u_xlat2;
  u_xlat56 = dot(-(x_1934), vec3<f32>(x_1936.x, x_1936.y, x_1936.z));
  let x_1939 : f32 = u_xlat56;
  let x_1940 : f32 = u_xlat56;
  u_xlat56 = (x_1939 + x_1940);
  let x_1942 : vec4<f32> = u_xlat2;
  let x_1944 : f32 = u_xlat56;
  let x_1948 : vec3<f32> = u_xlat3;
  let x_1950 : vec3<f32> = ((vec3<f32>(x_1942.x, x_1942.y, x_1942.z) * -(vec3<f32>(x_1944, x_1944, x_1944))) + -(x_1948));
  let x_1951 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1950.x, x_1950.y, x_1950.z, x_1951.w);
  let x_1953 : vec4<f32> = u_xlat2;
  let x_1955 : vec3<f32> = u_xlat3;
  u_xlat56 = dot(vec3<f32>(x_1953.x, x_1953.y, x_1953.z), x_1955);
  let x_1957 : f32 = u_xlat56;
  u_xlat56 = clamp(x_1957, 0.0f, 1.0f);
  let x_1959 : f32 = u_xlat56;
  u_xlat56 = (-(x_1959) + 1.0f);
  let x_1962 : f32 = u_xlat56;
  let x_1963 : f32 = u_xlat56;
  u_xlat56 = (x_1962 * x_1963);
  let x_1965 : f32 = u_xlat56;
  let x_1966 : f32 = u_xlat56;
  u_xlat56 = (x_1965 * x_1966);
  let x_1968 : f32 = u_xlat78;
  u_xlat84 = ((-(x_1968) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1974 : f32 = u_xlat78;
  let x_1975 : f32 = u_xlat84;
  u_xlat78 = (x_1974 * x_1975);
  let x_1977 : f32 = u_xlat78;
  u_xlat78 = (x_1977 * 6.0f);
  let x_1988 : vec4<f32> = u_xlat7;
  let x_1990 : f32 = u_xlat78;
  let x_1991 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1988.x, x_1988.y, x_1988.z), x_1990);
  u_xlat7 = x_1991;
  let x_1993 : f32 = u_xlat7.w;
  u_xlat78 = (x_1993 + -1.0f);
  let x_1996 : f32 = x_341.unity_SpecCube0_HDR.w;
  let x_1997 : f32 = u_xlat78;
  u_xlat78 = ((x_1996 * x_1997) + 1.0f);
  let x_2000 : f32 = u_xlat78;
  u_xlat78 = max(x_2000, 0.0f);
  let x_2002 : f32 = u_xlat78;
  u_xlat78 = log2(x_2002);
  let x_2004 : f32 = u_xlat78;
  let x_2006 : f32 = x_341.unity_SpecCube0_HDR.y;
  u_xlat78 = (x_2004 * x_2006);
  let x_2008 : f32 = u_xlat78;
  u_xlat78 = exp2(x_2008);
  let x_2010 : f32 = u_xlat78;
  let x_2012 : f32 = x_341.unity_SpecCube0_HDR.x;
  u_xlat78 = (x_2010 * x_2012);
  let x_2014 : vec4<f32> = u_xlat7;
  let x_2016 : f32 = u_xlat78;
  let x_2018 : vec3<f32> = (vec3<f32>(x_2014.x, x_2014.y, x_2014.z) * vec3<f32>(x_2016, x_2016, x_2016));
  let x_2019 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2018.x, x_2018.y, x_2018.z, x_2019.w);
  let x_2021 : f32 = u_xlat81;
  let x_2023 : f32 = u_xlat81;
  let x_2027 : vec2<f32> = ((vec2<f32>(x_2021, x_2021) * vec2<f32>(x_2023, x_2023)) + vec2<f32>(-1.0f, 1.0f));
  let x_2028 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2027.x, x_2027.y, x_2028.z, x_2028.w);
  let x_2031 : f32 = u_xlat8.y;
  u_xlat78 = (1.0f / x_2031);
  let x_2033 : vec4<f32> = u_xlat0;
  let x_2036 : f32 = u_xlat80;
  u_xlat34 = (-(vec3<f32>(x_2033.x, x_2033.y, x_2033.z)) + vec3<f32>(x_2036, x_2036, x_2036));
  let x_2039 : f32 = u_xlat56;
  let x_2041 : vec3<f32> = u_xlat34;
  let x_2043 : vec4<f32> = u_xlat0;
  u_xlat34 = ((vec3<f32>(x_2039, x_2039, x_2039) * x_2041) + vec3<f32>(x_2043.x, x_2043.y, x_2043.z));
  let x_2046 : f32 = u_xlat78;
  let x_2048 : vec3<f32> = u_xlat34;
  u_xlat34 = (vec3<f32>(x_2046, x_2046, x_2046) * x_2048);
  let x_2050 : vec4<f32> = u_xlat7;
  let x_2052 : vec3<f32> = u_xlat34;
  let x_2053 : vec3<f32> = (vec3<f32>(x_2050.x, x_2050.y, x_2050.z) * x_2052);
  let x_2054 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2053.x, x_2053.y, x_2053.z, x_2054.w);
  let x_2056 : vec4<f32> = u_xlat5;
  let x_2058 : vec3<f32> = u_xlat27;
  let x_2060 : vec4<f32> = u_xlat7;
  let x_2062 : vec3<f32> = ((vec3<f32>(x_2056.x, x_2056.y, x_2056.z) * x_2058) + vec3<f32>(x_2060.x, x_2060.y, x_2060.z));
  let x_2063 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2062.x, x_2062.y, x_2062.z, x_2063.w);
  let x_2066 : f32 = u_xlat4.x;
  let x_2068 : f32 = x_341.unity_LightData.z;
  u_xlat78 = (x_2066 * x_2068);
  let x_2070 : vec4<f32> = u_xlat2;
  let x_2073 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat80 = dot(vec3<f32>(x_2070.x, x_2070.y, x_2070.z), vec3<f32>(x_2073.x, x_2073.y, x_2073.z));
  let x_2076 : f32 = u_xlat80;
  u_xlat80 = clamp(x_2076, 0.0f, 1.0f);
  let x_2078 : f32 = u_xlat78;
  let x_2079 : f32 = u_xlat80;
  u_xlat78 = (x_2078 * x_2079);
  let x_2081 : f32 = u_xlat78;
  let x_2083 : vec4<f32> = u_xlat6;
  let x_2085 : vec3<f32> = (vec3<f32>(x_2081, x_2081, x_2081) * vec3<f32>(x_2083.x, x_2083.y, x_2083.z));
  let x_2086 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2085.x, x_2085.y, x_2085.z, x_2086.w);
  let x_2088 : vec3<f32> = u_xlat3;
  let x_2090 : vec4<f32> = x_28.x_MainLightPosition;
  let x_2092 : vec3<f32> = (x_2088 + vec3<f32>(x_2090.x, x_2090.y, x_2090.z));
  let x_2093 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2092.x, x_2092.y, x_2092.z, x_2093.w);
  let x_2095 : vec4<f32> = u_xlat7;
  let x_2097 : vec4<f32> = u_xlat7;
  u_xlat78 = dot(vec3<f32>(x_2095.x, x_2095.y, x_2095.z), vec3<f32>(x_2097.x, x_2097.y, x_2097.z));
  let x_2100 : f32 = u_xlat78;
  u_xlat78 = max(x_2100, 1.17549435e-38f);
  let x_2103 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_2103);
  let x_2105 : f32 = u_xlat78;
  let x_2107 : vec4<f32> = u_xlat7;
  let x_2109 : vec3<f32> = (vec3<f32>(x_2105, x_2105, x_2105) * vec3<f32>(x_2107.x, x_2107.y, x_2107.z));
  let x_2110 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2109.x, x_2109.y, x_2109.z, x_2110.w);
  let x_2112 : vec4<f32> = u_xlat2;
  let x_2114 : vec4<f32> = u_xlat7;
  u_xlat78 = dot(vec3<f32>(x_2112.x, x_2112.y, x_2112.z), vec3<f32>(x_2114.x, x_2114.y, x_2114.z));
  let x_2117 : f32 = u_xlat78;
  u_xlat78 = clamp(x_2117, 0.0f, 1.0f);
  let x_2120 : vec4<f32> = x_28.x_MainLightPosition;
  let x_2122 : vec4<f32> = u_xlat7;
  u_xlat80 = dot(vec3<f32>(x_2120.x, x_2120.y, x_2120.z), vec3<f32>(x_2122.x, x_2122.y, x_2122.z));
  let x_2125 : f32 = u_xlat80;
  u_xlat80 = clamp(x_2125, 0.0f, 1.0f);
  let x_2127 : f32 = u_xlat78;
  let x_2128 : f32 = u_xlat78;
  u_xlat78 = (x_2127 * x_2128);
  let x_2130 : f32 = u_xlat78;
  let x_2132 : f32 = u_xlat8.x;
  u_xlat78 = ((x_2130 * x_2132) + 1.00001001358032226562f);
  let x_2136 : f32 = u_xlat80;
  let x_2137 : f32 = u_xlat80;
  u_xlat80 = (x_2136 * x_2137);
  let x_2139 : f32 = u_xlat78;
  let x_2140 : f32 = u_xlat78;
  u_xlat78 = (x_2139 * x_2140);
  let x_2142 : f32 = u_xlat80;
  u_xlat80 = max(x_2142, 0.10000000149011611938f);
  let x_2145 : f32 = u_xlat78;
  let x_2146 : f32 = u_xlat80;
  u_xlat78 = (x_2145 * x_2146);
  let x_2148 : f32 = u_xlat83;
  let x_2149 : f32 = u_xlat78;
  u_xlat78 = (x_2148 * x_2149);
  let x_2151 : f32 = u_xlat82;
  let x_2152 : f32 = u_xlat78;
  u_xlat78 = (x_2151 / x_2152);
  let x_2154 : vec4<f32> = u_xlat0;
  let x_2156 : f32 = u_xlat78;
  let x_2159 : vec3<f32> = u_xlat27;
  let x_2160 : vec3<f32> = ((vec3<f32>(x_2154.x, x_2154.y, x_2154.z) * vec3<f32>(x_2156, x_2156, x_2156)) + x_2159);
  let x_2161 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2160.x, x_2160.y, x_2160.z, x_2161.w);
  let x_2164 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_2166 : f32 = x_341.unity_LightData.y;
  u_xlat78 = min(x_2164, x_2166);
  let x_2168 : f32 = u_xlat78;
  u_xlatu78 = bitcast<u32>(i32(x_2168));
  let x_2171 : f32 = u_xlat30;
  let x_2174 : f32 = x_148.x_AdditionalShadowFadeParams.x;
  let x_2177 : f32 = x_148.x_AdditionalShadowFadeParams.y;
  u_xlat80 = ((x_2171 * x_2174) + x_2177);
  let x_2179 : f32 = u_xlat80;
  u_xlat80 = clamp(x_2179, 0.0f, 1.0f);
  let x_2182 : f32 = x_1817.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2184 : f32 = x_1817.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2186 : f32 = x_1817.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2188 : f32 = x_1817.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2189 : vec4<f32> = vec4<f32>(x_2182, x_2184, x_2186, x_2188);
  let x_2195 : vec4<bool> = (vec4<f32>(x_2189.x, x_2189.y, x_2189.z, x_2189.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  let x_2196 : vec2<bool> = vec2<bool>(x_2195.x, x_2195.y);
  let x_2197 : vec4<bool> = u_xlatb4;
  u_xlatb4 = vec4<bool>(x_2196.x, x_2196.y, x_2197.z, x_2197.w);
  u_xlat34.x = 0.0f;
  u_xlat34.y = 0.0f;
  u_xlat34.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2209 : u32 = u_xlatu_loop_1;
    let x_2210 : u32 = u_xlatu78;
    if ((x_2209 < x_2210)) {
    } else {
      break;
    }
    let x_2213 : u32 = u_xlatu_loop_1;
    u_xlatu56 = (x_2213 >> 2u);
    let x_2216 : u32 = u_xlatu_loop_1;
    u_xlati84 = bitcast<i32>((x_2216 & 3u));
    let x_2219 : u32 = u_xlatu56;
    let x_2222 : vec4<f32> = x_341.unity_LightIndices[bitcast<i32>(x_2219)];
    let x_2232 : i32 = u_xlati84;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2237 : vec4<u32> = indexable[x_2232];
    u_xlat56 = dot(x_2222, bitcast<vec4<f32>>(x_2237));
    let x_2241 : f32 = u_xlat56;
    u_xlati56 = i32(x_2241);
    let x_2243 : vec3<f32> = vs_TEXCOORD1;
    let x_2254 : i32 = u_xlati56;
    let x_2256 : vec4<f32> = x_2253.x_AdditionalLightsPosition[x_2254];
    let x_2259 : i32 = u_xlati56;
    let x_2261 : vec4<f32> = x_2253.x_AdditionalLightsPosition[x_2259];
    let x_2263 : vec3<f32> = ((-(x_2243) * vec3<f32>(x_2256.w, x_2256.w, x_2256.w)) + vec3<f32>(x_2261.x, x_2261.y, x_2261.z));
    let x_2264 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2263.x, x_2263.y, x_2263.z, x_2264.w);
    let x_2266 : vec4<f32> = u_xlat9;
    let x_2268 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2266.x, x_2266.y, x_2266.z), vec3<f32>(x_2268.x, x_2268.y, x_2268.z));
    let x_2271 : f32 = u_xlat84;
    u_xlat84 = max(x_2271, 0.00006103515625f);
    let x_2275 : f32 = u_xlat84;
    u_xlat85 = inverseSqrt(x_2275);
    let x_2277 : f32 = u_xlat85;
    let x_2279 : vec4<f32> = u_xlat9;
    let x_2281 : vec3<f32> = (vec3<f32>(x_2277, x_2277, x_2277) * vec3<f32>(x_2279.x, x_2279.y, x_2279.z));
    let x_2282 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2281.x, x_2281.y, x_2281.z, x_2282.w);
    let x_2285 : f32 = u_xlat84;
    u_xlat87 = (1.0f / x_2285);
    let x_2287 : f32 = u_xlat84;
    let x_2288 : i32 = u_xlati56;
    let x_2290 : f32 = x_2253.x_AdditionalLightsAttenuation[x_2288].x;
    u_xlat84 = (x_2287 * x_2290);
    let x_2292 : f32 = u_xlat84;
    let x_2294 : f32 = u_xlat84;
    u_xlat84 = ((-(x_2292) * x_2294) + 1.0f);
    let x_2297 : f32 = u_xlat84;
    u_xlat84 = max(x_2297, 0.0f);
    let x_2299 : f32 = u_xlat84;
    let x_2300 : f32 = u_xlat84;
    u_xlat84 = (x_2299 * x_2300);
    let x_2302 : f32 = u_xlat84;
    let x_2303 : f32 = u_xlat87;
    u_xlat84 = (x_2302 * x_2303);
    let x_2305 : i32 = u_xlati56;
    let x_2307 : vec4<f32> = x_2253.x_AdditionalLightsSpotDir[x_2305];
    let x_2309 : vec4<f32> = u_xlat10;
    u_xlat87 = dot(vec3<f32>(x_2307.x, x_2307.y, x_2307.z), vec3<f32>(x_2309.x, x_2309.y, x_2309.z));
    let x_2312 : f32 = u_xlat87;
    let x_2313 : i32 = u_xlati56;
    let x_2315 : f32 = x_2253.x_AdditionalLightsAttenuation[x_2313].z;
    let x_2317 : i32 = u_xlati56;
    let x_2319 : f32 = x_2253.x_AdditionalLightsAttenuation[x_2317].w;
    u_xlat87 = ((x_2312 * x_2315) + x_2319);
    let x_2321 : f32 = u_xlat87;
    u_xlat87 = clamp(x_2321, 0.0f, 1.0f);
    let x_2323 : f32 = u_xlat87;
    let x_2324 : f32 = u_xlat87;
    u_xlat87 = (x_2323 * x_2324);
    let x_2326 : f32 = u_xlat84;
    let x_2327 : f32 = u_xlat87;
    u_xlat84 = (x_2326 * x_2327);
    let x_2331 : i32 = u_xlati56;
    let x_2333 : f32 = x_148.x_AdditionalShadowParams[x_2331].w;
    u_xlati87 = i32(x_2333);
    let x_2336 : i32 = u_xlati87;
    u_xlatb88 = (x_2336 >= 0i);
    let x_2338 : bool = u_xlatb88;
    if (x_2338) {
      let x_2342 : i32 = u_xlati56;
      let x_2344 : f32 = x_148.x_AdditionalShadowParams[x_2342].z;
      u_xlatb88 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2344, x_2344, x_2344, x_2344))));
      let x_2348 : bool = u_xlatb88;
      if (x_2348) {
        let x_2352 : vec4<f32> = u_xlat10;
        let x_2355 : vec4<f32> = u_xlat10;
        let x_2358 : vec4<bool> = (abs(vec4<f32>(x_2352.z, x_2352.z, x_2352.y, x_2352.z)) >= abs(vec4<f32>(x_2355.x, x_2355.y, x_2355.x, x_2355.x)));
        let x_2360 : vec3<bool> = vec3<bool>(x_2358.x, x_2358.y, x_2358.z);
        let x_2361 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2360.x, x_2360.y, x_2360.z, x_2361.w);
        let x_2364 : bool = u_xlatb11.y;
        let x_2366 : bool = u_xlatb11.x;
        u_xlatb88 = (x_2364 & x_2366);
        let x_2368 : vec4<f32> = u_xlat10;
        let x_2371 : vec4<bool> = (-(vec4<f32>(x_2368.z, x_2368.y, x_2368.z, x_2368.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2372 : vec3<bool> = vec3<bool>(x_2371.x, x_2371.y, x_2371.w);
        let x_2373 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2372.x, x_2372.y, x_2373.z, x_2372.z);
        let x_2376 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2376);
        let x_2381 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2381);
        let x_2386 : bool = u_xlatb11.w;
        u_xlat89 = select(0.0f, 1.0f, x_2386);
        let x_2390 : bool = u_xlatb11.z;
        if (x_2390) {
          let x_2395 : f32 = u_xlat11.y;
          x_2391 = x_2395;
        } else {
          let x_2397 : f32 = u_xlat89;
          x_2391 = x_2397;
        }
        let x_2398 : f32 = x_2391;
        u_xlat37.x = x_2398;
        let x_2401 : bool = u_xlatb88;
        if (x_2401) {
          let x_2406 : f32 = u_xlat11.x;
          x_2402 = x_2406;
        } else {
          let x_2409 : f32 = u_xlat37.x;
          x_2402 = x_2409;
        }
        let x_2410 : f32 = x_2402;
        u_xlat88 = x_2410;
        let x_2411 : i32 = u_xlati56;
        let x_2413 : f32 = x_148.x_AdditionalShadowParams[x_2411].w;
        u_xlat11.x = trunc(x_2413);
        let x_2416 : f32 = u_xlat88;
        let x_2418 : f32 = u_xlat11.x;
        u_xlat88 = (x_2416 + x_2418);
        let x_2420 : f32 = u_xlat88;
        u_xlati87 = i32(x_2420);
      }
      let x_2422 : i32 = u_xlati87;
      u_xlati87 = (x_2422 << bitcast<u32>(2i));
      let x_2424 : vec3<f32> = vs_TEXCOORD1;
      let x_2427 : i32 = u_xlati87;
      let x_2430 : i32 = u_xlati87;
      let x_2434 : vec4<f32> = x_148.x_AdditionalLightsWorldToShadow[((x_2427 + 1i) / 4i)][((x_2430 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2424.y, x_2424.y, x_2424.y, x_2424.y) * x_2434);
      let x_2436 : i32 = u_xlati87;
      let x_2438 : i32 = u_xlati87;
      let x_2441 : vec4<f32> = x_148.x_AdditionalLightsWorldToShadow[(x_2436 / 4i)][(x_2438 % 4i)];
      let x_2442 : vec3<f32> = vs_TEXCOORD1;
      let x_2445 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2441 * vec4<f32>(x_2442.x, x_2442.x, x_2442.x, x_2442.x)) + x_2445);
      let x_2447 : i32 = u_xlati87;
      let x_2450 : i32 = u_xlati87;
      let x_2454 : vec4<f32> = x_148.x_AdditionalLightsWorldToShadow[((x_2447 + 2i) / 4i)][((x_2450 + 2i) % 4i)];
      let x_2455 : vec3<f32> = vs_TEXCOORD1;
      let x_2458 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2454 * vec4<f32>(x_2455.z, x_2455.z, x_2455.z, x_2455.z)) + x_2458);
      let x_2460 : vec4<f32> = u_xlat11;
      let x_2461 : i32 = u_xlati87;
      let x_2464 : i32 = u_xlati87;
      let x_2468 : vec4<f32> = x_148.x_AdditionalLightsWorldToShadow[((x_2461 + 3i) / 4i)][((x_2464 + 3i) % 4i)];
      u_xlat11 = (x_2460 + x_2468);
      let x_2470 : vec4<f32> = u_xlat11;
      let x_2472 : vec4<f32> = u_xlat11;
      let x_2474 : vec3<f32> = (vec3<f32>(x_2470.x, x_2470.y, x_2470.z) / vec3<f32>(x_2472.w, x_2472.w, x_2472.w));
      let x_2475 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2474.x, x_2474.y, x_2474.z, x_2475.w);
      let x_2478 : i32 = u_xlati56;
      let x_2480 : f32 = x_148.x_AdditionalShadowParams[x_2478].y;
      u_xlatb87 = (0.0f < x_2480);
      let x_2482 : bool = u_xlatb87;
      if (x_2482) {
        let x_2485 : i32 = u_xlati56;
        let x_2487 : f32 = x_148.x_AdditionalShadowParams[x_2485].y;
        u_xlatb87 = (1.0f == x_2487);
        let x_2489 : bool = u_xlatb87;
        if (x_2489) {
          let x_2492 : vec4<f32> = u_xlat11;
          let x_2496 : vec4<f32> = x_148.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2492.x, x_2492.y, x_2492.x, x_2492.y) + x_2496);
          let x_2499 : vec4<f32> = u_xlat12;
          let x_2500 : vec2<f32> = vec2<f32>(x_2499.x, x_2499.y);
          let x_2502 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2500.x, x_2500.y, x_2502);
          let x_2510 : vec3<f32> = txVec30;
          let x_2512 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2510.xy, x_2510.z);
          u_xlat13.x = x_2512;
          let x_2515 : vec4<f32> = u_xlat12;
          let x_2516 : vec2<f32> = vec2<f32>(x_2515.z, x_2515.w);
          let x_2518 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2516.x, x_2516.y, x_2518);
          let x_2525 : vec3<f32> = txVec31;
          let x_2527 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2525.xy, x_2525.z);
          u_xlat13.y = x_2527;
          let x_2529 : vec4<f32> = u_xlat11;
          let x_2533 : vec4<f32> = x_148.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2529.x, x_2529.y, x_2529.x, x_2529.y) + x_2533);
          let x_2536 : vec4<f32> = u_xlat12;
          let x_2537 : vec2<f32> = vec2<f32>(x_2536.x, x_2536.y);
          let x_2539 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2537.x, x_2537.y, x_2539);
          let x_2546 : vec3<f32> = txVec32;
          let x_2548 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2546.xy, x_2546.z);
          u_xlat13.z = x_2548;
          let x_2551 : vec4<f32> = u_xlat12;
          let x_2552 : vec2<f32> = vec2<f32>(x_2551.z, x_2551.w);
          let x_2554 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2552.x, x_2552.y, x_2554);
          let x_2561 : vec3<f32> = txVec33;
          let x_2563 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2561.xy, x_2561.z);
          u_xlat13.w = x_2563;
          let x_2565 : vec4<f32> = u_xlat13;
          u_xlat87 = dot(x_2565, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2568 : i32 = u_xlati56;
          let x_2570 : f32 = x_148.x_AdditionalShadowParams[x_2568].y;
          u_xlatb88 = (2.0f == x_2570);
          let x_2572 : bool = u_xlatb88;
          if (x_2572) {
            let x_2575 : vec4<f32> = u_xlat11;
            let x_2579 : vec4<f32> = x_148.x_AdditionalShadowmapSize;
            let x_2582 : vec2<f32> = ((vec2<f32>(x_2575.x, x_2575.y) * vec2<f32>(x_2579.z, x_2579.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2583 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2582.x, x_2582.y, x_2583.z, x_2583.w);
            let x_2585 : vec4<f32> = u_xlat12;
            let x_2587 : vec2<f32> = floor(vec2<f32>(x_2585.x, x_2585.y));
            let x_2588 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2587.x, x_2587.y, x_2588.z, x_2588.w);
            let x_2591 : vec4<f32> = u_xlat11;
            let x_2594 : vec4<f32> = x_148.x_AdditionalShadowmapSize;
            let x_2597 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2591.x, x_2591.y) * vec2<f32>(x_2594.z, x_2594.w)) + -(vec2<f32>(x_2597.x, x_2597.y)));
            let x_2601 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2601.x, x_2601.x, x_2601.y, x_2601.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2604 : vec4<f32> = u_xlat13;
            let x_2606 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2604.x, x_2604.x, x_2604.z, x_2604.z) * vec4<f32>(x_2606.x, x_2606.x, x_2606.z, x_2606.z));
            let x_2609 : vec4<f32> = u_xlat14;
            let x_2611 : vec2<f32> = (vec2<f32>(x_2609.y, x_2609.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2612 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2611.x, x_2612.y, x_2611.y, x_2612.w);
            let x_2614 : vec4<f32> = u_xlat14;
            let x_2617 : vec2<f32> = u_xlat64;
            let x_2619 : vec2<f32> = ((vec2<f32>(x_2614.x, x_2614.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2617));
            let x_2620 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2619.x, x_2619.y, x_2620.z, x_2620.w);
            let x_2623 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_2623) + vec2<f32>(1.0f, 1.0f));
            let x_2626 : vec2<f32> = u_xlat64;
            let x_2627 : vec2<f32> = min(x_2626, vec2<f32>(0.0f, 0.0f));
            let x_2628 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2627.x, x_2627.y, x_2628.z, x_2628.w);
            let x_2630 : vec4<f32> = u_xlat15;
            let x_2633 : vec4<f32> = u_xlat15;
            let x_2636 : vec2<f32> = u_xlat66;
            let x_2637 : vec2<f32> = ((-(vec2<f32>(x_2630.x, x_2630.y)) * vec2<f32>(x_2633.x, x_2633.y)) + x_2636);
            let x_2638 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2637.x, x_2637.y, x_2638.z, x_2638.w);
            let x_2640 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_2640, vec2<f32>(0.0f, 0.0f));
            let x_2642 : vec2<f32> = u_xlat64;
            let x_2644 : vec2<f32> = u_xlat64;
            let x_2646 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_2642) * x_2644) + vec2<f32>(x_2646.y, x_2646.w));
            let x_2649 : vec4<f32> = u_xlat15;
            let x_2651 : vec2<f32> = (vec2<f32>(x_2649.x, x_2649.y) + vec2<f32>(1.0f, 1.0f));
            let x_2652 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2651.x, x_2651.y, x_2652.z, x_2652.w);
            let x_2654 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_2654 + vec2<f32>(1.0f, 1.0f));
            let x_2656 : vec4<f32> = u_xlat14;
            let x_2658 : vec2<f32> = (vec2<f32>(x_2656.x, x_2656.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2659 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2658.x, x_2658.y, x_2659.z, x_2659.w);
            let x_2661 : vec2<f32> = u_xlat66;
            let x_2662 : vec2<f32> = (x_2661 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2663 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2662.x, x_2662.y, x_2663.z, x_2663.w);
            let x_2665 : vec4<f32> = u_xlat15;
            let x_2667 : vec2<f32> = (vec2<f32>(x_2665.x, x_2665.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2668 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2667.x, x_2667.y, x_2668.z, x_2668.w);
            let x_2670 : vec2<f32> = u_xlat64;
            let x_2671 : vec2<f32> = (x_2670 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2672 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2671.x, x_2671.y, x_2672.z, x_2672.w);
            let x_2674 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_2674.y, x_2674.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2678 : f32 = u_xlat15.x;
            u_xlat16.z = x_2678;
            let x_2681 : f32 = u_xlat64.x;
            u_xlat16.w = x_2681;
            let x_2684 : f32 = u_xlat17.x;
            u_xlat14.z = x_2684;
            let x_2687 : f32 = u_xlat13.x;
            u_xlat14.w = x_2687;
            let x_2689 : vec4<f32> = u_xlat14;
            let x_2691 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_2689.z, x_2689.w, x_2689.x, x_2689.z) + vec4<f32>(x_2691.z, x_2691.w, x_2691.x, x_2691.z));
            let x_2695 : f32 = u_xlat16.y;
            u_xlat15.z = x_2695;
            let x_2698 : f32 = u_xlat64.y;
            u_xlat15.w = x_2698;
            let x_2701 : f32 = u_xlat14.y;
            u_xlat17.z = x_2701;
            let x_2704 : f32 = u_xlat13.z;
            u_xlat17.w = x_2704;
            let x_2706 : vec4<f32> = u_xlat15;
            let x_2708 : vec4<f32> = u_xlat17;
            let x_2710 : vec3<f32> = (vec3<f32>(x_2706.z, x_2706.y, x_2706.w) + vec3<f32>(x_2708.z, x_2708.y, x_2708.w));
            let x_2711 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2710.x, x_2710.y, x_2710.z, x_2711.w);
            let x_2713 : vec4<f32> = u_xlat14;
            let x_2715 : vec4<f32> = u_xlat18;
            let x_2717 : vec3<f32> = (vec3<f32>(x_2713.x, x_2713.z, x_2713.w) / vec3<f32>(x_2715.z, x_2715.w, x_2715.y));
            let x_2718 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2717.x, x_2717.y, x_2717.z, x_2718.w);
            let x_2720 : vec4<f32> = u_xlat14;
            let x_2722 : vec3<f32> = (vec3<f32>(x_2720.x, x_2720.y, x_2720.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2723 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2722.x, x_2722.y, x_2722.z, x_2723.w);
            let x_2725 : vec4<f32> = u_xlat17;
            let x_2727 : vec4<f32> = u_xlat13;
            let x_2729 : vec3<f32> = (vec3<f32>(x_2725.z, x_2725.y, x_2725.w) / vec3<f32>(x_2727.x, x_2727.y, x_2727.z));
            let x_2730 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2729.x, x_2729.y, x_2729.z, x_2730.w);
            let x_2732 : vec4<f32> = u_xlat15;
            let x_2734 : vec3<f32> = (vec3<f32>(x_2732.x, x_2732.y, x_2732.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2735 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2734.x, x_2734.y, x_2734.z, x_2735.w);
            let x_2737 : vec4<f32> = u_xlat14;
            let x_2740 : vec4<f32> = x_148.x_AdditionalShadowmapSize;
            let x_2742 : vec3<f32> = (vec3<f32>(x_2737.y, x_2737.x, x_2737.z) * vec3<f32>(x_2740.x, x_2740.x, x_2740.x));
            let x_2743 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2742.x, x_2742.y, x_2742.z, x_2743.w);
            let x_2745 : vec4<f32> = u_xlat15;
            let x_2748 : vec4<f32> = x_148.x_AdditionalShadowmapSize;
            let x_2750 : vec3<f32> = (vec3<f32>(x_2745.x, x_2745.y, x_2745.z) * vec3<f32>(x_2748.y, x_2748.y, x_2748.y));
            let x_2751 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2750.x, x_2750.y, x_2750.z, x_2751.w);
            let x_2754 : f32 = u_xlat15.x;
            u_xlat14.w = x_2754;
            let x_2756 : vec4<f32> = u_xlat12;
            let x_2759 : vec4<f32> = x_148.x_AdditionalShadowmapSize;
            let x_2762 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2756.x, x_2756.y, x_2756.x, x_2756.y) * vec4<f32>(x_2759.x, x_2759.y, x_2759.x, x_2759.y)) + vec4<f32>(x_2762.y, x_2762.w, x_2762.x, x_2762.w));
            let x_2765 : vec4<f32> = u_xlat12;
            let x_2768 : vec4<f32> = x_148.x_AdditionalShadowmapSize;
            let x_2771 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_2765.x, x_2765.y) * vec2<f32>(x_2768.x, x_2768.y)) + vec2<f32>(x_2771.z, x_2771.w));
            let x_2775 : f32 = u_xlat14.y;
            u_xlat15.w = x_2775;
            let x_2777 : vec4<f32> = u_xlat15;
            let x_2778 : vec2<f32> = vec2<f32>(x_2777.y, x_2777.z);
            let x_2779 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2779.x, x_2778.x, x_2779.z, x_2778.y);
            let x_2781 : vec4<f32> = u_xlat12;
            let x_2784 : vec4<f32> = x_148.x_AdditionalShadowmapSize;
            let x_2787 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_2781.x, x_2781.y, x_2781.x, x_2781.y) * vec4<f32>(x_2784.x, x_2784.y, x_2784.x, x_2784.y)) + vec4<f32>(x_2787.x, x_2787.y, x_2787.z, x_2787.y));
            let x_2790 : vec4<f32> = u_xlat12;
            let x_2793 : vec4<f32> = x_148.x_AdditionalShadowmapSize;
            let x_2796 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_2790.x, x_2790.y, x_2790.x, x_2790.y) * vec4<f32>(x_2793.x, x_2793.y, x_2793.x, x_2793.y)) + vec4<f32>(x_2796.w, x_2796.y, x_2796.w, x_2796.z));
            let x_2799 : vec4<f32> = u_xlat12;
            let x_2802 : vec4<f32> = x_148.x_AdditionalShadowmapSize;
            let x_2805 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2799.x, x_2799.y, x_2799.x, x_2799.y) * vec4<f32>(x_2802.x, x_2802.y, x_2802.x, x_2802.y)) + vec4<f32>(x_2805.x, x_2805.w, x_2805.z, x_2805.w));
            let x_2808 : vec4<f32> = u_xlat13;
            let x_2810 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_2808.x, x_2808.x, x_2808.x, x_2808.y) * vec4<f32>(x_2810.z, x_2810.w, x_2810.y, x_2810.z));
            let x_2813 : vec4<f32> = u_xlat13;
            let x_2815 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_2813.y, x_2813.y, x_2813.z, x_2813.z) * x_2815);
            let x_2818 : f32 = u_xlat13.z;
            let x_2820 : f32 = u_xlat18.y;
            u_xlat88 = (x_2818 * x_2820);
            let x_2823 : vec4<f32> = u_xlat16;
            let x_2824 : vec2<f32> = vec2<f32>(x_2823.x, x_2823.y);
            let x_2826 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_2824.x, x_2824.y, x_2826);
            let x_2833 : vec3<f32> = txVec34;
            let x_2835 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2833.xy, x_2833.z);
            u_xlat89 = x_2835;
            let x_2837 : vec4<f32> = u_xlat16;
            let x_2838 : vec2<f32> = vec2<f32>(x_2837.z, x_2837.w);
            let x_2840 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_2838.x, x_2838.y, x_2840);
            let x_2847 : vec3<f32> = txVec35;
            let x_2849 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2847.xy, x_2847.z);
            u_xlat12.x = x_2849;
            let x_2852 : f32 = u_xlat12.x;
            let x_2854 : f32 = u_xlat19.y;
            u_xlat12.x = (x_2852 * x_2854);
            let x_2858 : f32 = u_xlat19.x;
            let x_2859 : f32 = u_xlat89;
            let x_2862 : f32 = u_xlat12.x;
            u_xlat89 = ((x_2858 * x_2859) + x_2862);
            let x_2865 : vec2<f32> = u_xlat64;
            let x_2867 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_2865.x, x_2865.y, x_2867);
            let x_2874 : vec3<f32> = txVec36;
            let x_2876 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2874.xy, x_2874.z);
            u_xlat12.x = x_2876;
            let x_2879 : f32 = u_xlat19.z;
            let x_2881 : f32 = u_xlat12.x;
            let x_2883 : f32 = u_xlat89;
            u_xlat89 = ((x_2879 * x_2881) + x_2883);
            let x_2886 : vec4<f32> = u_xlat15;
            let x_2887 : vec2<f32> = vec2<f32>(x_2886.x, x_2886.y);
            let x_2889 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_2887.x, x_2887.y, x_2889);
            let x_2896 : vec3<f32> = txVec37;
            let x_2898 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2896.xy, x_2896.z);
            u_xlat12.x = x_2898;
            let x_2901 : f32 = u_xlat19.w;
            let x_2903 : f32 = u_xlat12.x;
            let x_2905 : f32 = u_xlat89;
            u_xlat89 = ((x_2901 * x_2903) + x_2905);
            let x_2908 : vec4<f32> = u_xlat17;
            let x_2909 : vec2<f32> = vec2<f32>(x_2908.x, x_2908.y);
            let x_2911 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_2909.x, x_2909.y, x_2911);
            let x_2918 : vec3<f32> = txVec38;
            let x_2920 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2918.xy, x_2918.z);
            u_xlat12.x = x_2920;
            let x_2923 : f32 = u_xlat20.x;
            let x_2925 : f32 = u_xlat12.x;
            let x_2927 : f32 = u_xlat89;
            u_xlat89 = ((x_2923 * x_2925) + x_2927);
            let x_2930 : vec4<f32> = u_xlat17;
            let x_2931 : vec2<f32> = vec2<f32>(x_2930.z, x_2930.w);
            let x_2933 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_2931.x, x_2931.y, x_2933);
            let x_2940 : vec3<f32> = txVec39;
            let x_2942 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2940.xy, x_2940.z);
            u_xlat12.x = x_2942;
            let x_2945 : f32 = u_xlat20.y;
            let x_2947 : f32 = u_xlat12.x;
            let x_2949 : f32 = u_xlat89;
            u_xlat89 = ((x_2945 * x_2947) + x_2949);
            let x_2952 : vec4<f32> = u_xlat15;
            let x_2953 : vec2<f32> = vec2<f32>(x_2952.z, x_2952.w);
            let x_2955 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_2953.x, x_2953.y, x_2955);
            let x_2962 : vec3<f32> = txVec40;
            let x_2964 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2962.xy, x_2962.z);
            u_xlat12.x = x_2964;
            let x_2967 : f32 = u_xlat20.z;
            let x_2969 : f32 = u_xlat12.x;
            let x_2971 : f32 = u_xlat89;
            u_xlat89 = ((x_2967 * x_2969) + x_2971);
            let x_2974 : vec4<f32> = u_xlat14;
            let x_2975 : vec2<f32> = vec2<f32>(x_2974.x, x_2974.y);
            let x_2977 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_2975.x, x_2975.y, x_2977);
            let x_2984 : vec3<f32> = txVec41;
            let x_2986 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2984.xy, x_2984.z);
            u_xlat12.x = x_2986;
            let x_2989 : f32 = u_xlat20.w;
            let x_2991 : f32 = u_xlat12.x;
            let x_2993 : f32 = u_xlat89;
            u_xlat89 = ((x_2989 * x_2991) + x_2993);
            let x_2996 : vec4<f32> = u_xlat14;
            let x_2997 : vec2<f32> = vec2<f32>(x_2996.z, x_2996.w);
            let x_2999 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_2997.x, x_2997.y, x_2999);
            let x_3006 : vec3<f32> = txVec42;
            let x_3008 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3006.xy, x_3006.z);
            u_xlat12.x = x_3008;
            let x_3010 : f32 = u_xlat88;
            let x_3012 : f32 = u_xlat12.x;
            let x_3014 : f32 = u_xlat89;
            u_xlat87 = ((x_3010 * x_3012) + x_3014);
          } else {
            let x_3017 : vec4<f32> = u_xlat11;
            let x_3020 : vec4<f32> = x_148.x_AdditionalShadowmapSize;
            let x_3023 : vec2<f32> = ((vec2<f32>(x_3017.x, x_3017.y) * vec2<f32>(x_3020.z, x_3020.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3024 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3023.x, x_3023.y, x_3024.z, x_3024.w);
            let x_3026 : vec4<f32> = u_xlat12;
            let x_3028 : vec2<f32> = floor(vec2<f32>(x_3026.x, x_3026.y));
            let x_3029 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3028.x, x_3028.y, x_3029.z, x_3029.w);
            let x_3031 : vec4<f32> = u_xlat11;
            let x_3034 : vec4<f32> = x_148.x_AdditionalShadowmapSize;
            let x_3037 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3031.x, x_3031.y) * vec2<f32>(x_3034.z, x_3034.w)) + -(vec2<f32>(x_3037.x, x_3037.y)));
            let x_3041 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3041.x, x_3041.x, x_3041.y, x_3041.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3044 : vec4<f32> = u_xlat13;
            let x_3046 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3044.x, x_3044.x, x_3044.z, x_3044.z) * vec4<f32>(x_3046.x, x_3046.x, x_3046.z, x_3046.z));
            let x_3049 : vec4<f32> = u_xlat14;
            let x_3051 : vec2<f32> = (vec2<f32>(x_3049.y, x_3049.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3052 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3052.x, x_3051.x, x_3052.z, x_3051.y);
            let x_3054 : vec4<f32> = u_xlat14;
            let x_3057 : vec2<f32> = u_xlat64;
            let x_3059 : vec2<f32> = ((vec2<f32>(x_3054.x, x_3054.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3057));
            let x_3060 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3059.x, x_3060.y, x_3059.y, x_3060.w);
            let x_3062 : vec2<f32> = u_xlat64;
            let x_3064 : vec2<f32> = (-(x_3062) + vec2<f32>(1.0f, 1.0f));
            let x_3065 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3064.x, x_3064.y, x_3065.z, x_3065.w);
            let x_3067 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3067, vec2<f32>(0.0f, 0.0f));
            let x_3069 : vec2<f32> = u_xlat66;
            let x_3071 : vec2<f32> = u_xlat66;
            let x_3073 : vec4<f32> = u_xlat14;
            let x_3075 : vec2<f32> = ((-(x_3069) * x_3071) + vec2<f32>(x_3073.x, x_3073.y));
            let x_3076 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3075.x, x_3075.y, x_3076.z, x_3076.w);
            let x_3078 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3078, vec2<f32>(0.0f, 0.0f));
            let x_3081 : vec2<f32> = u_xlat66;
            let x_3083 : vec2<f32> = u_xlat66;
            let x_3085 : vec4<f32> = u_xlat13;
            let x_3087 : vec2<f32> = ((-(x_3081) * x_3083) + vec2<f32>(x_3085.y, x_3085.w));
            let x_3088 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3087.x, x_3088.y, x_3087.y);
            let x_3090 : vec4<f32> = u_xlat14;
            let x_3093 : vec2<f32> = (vec2<f32>(x_3090.x, x_3090.y) + vec2<f32>(2.0f, 2.0f));
            let x_3094 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3093.x, x_3093.y, x_3094.z, x_3094.w);
            let x_3096 : vec3<f32> = u_xlat39;
            let x_3098 : vec2<f32> = (vec2<f32>(x_3096.x, x_3096.z) + vec2<f32>(2.0f, 2.0f));
            let x_3099 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3099.x, x_3098.x, x_3099.z, x_3098.y);
            let x_3102 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3102 * 0.08163200318813323975f);
            let x_3105 : vec4<f32> = u_xlat13;
            let x_3108 : vec3<f32> = (vec3<f32>(x_3105.z, x_3105.x, x_3105.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3109 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3108.x, x_3108.y, x_3108.z, x_3109.w);
            let x_3111 : vec4<f32> = u_xlat14;
            let x_3113 : vec2<f32> = (vec2<f32>(x_3111.x, x_3111.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3114 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3113.x, x_3113.y, x_3114.z, x_3114.w);
            let x_3117 : f32 = u_xlat17.y;
            u_xlat16.x = x_3117;
            let x_3119 : vec2<f32> = u_xlat64;
            let x_3122 : vec2<f32> = ((vec2<f32>(x_3119.x, x_3119.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3123 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3123.x, x_3122.x, x_3123.z, x_3122.y);
            let x_3125 : vec2<f32> = u_xlat64;
            let x_3128 : vec2<f32> = ((vec2<f32>(x_3125.x, x_3125.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3129 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3128.x, x_3129.y, x_3128.y, x_3129.w);
            let x_3132 : f32 = u_xlat13.x;
            u_xlat14.y = x_3132;
            let x_3135 : f32 = u_xlat15.y;
            u_xlat14.w = x_3135;
            let x_3137 : vec4<f32> = u_xlat14;
            let x_3138 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3137 + x_3138);
            let x_3140 : vec2<f32> = u_xlat64;
            let x_3143 : vec2<f32> = ((vec2<f32>(x_3140.y, x_3140.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3144 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3144.x, x_3143.x, x_3144.z, x_3143.y);
            let x_3146 : vec2<f32> = u_xlat64;
            let x_3149 : vec2<f32> = ((vec2<f32>(x_3146.y, x_3146.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3150 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3149.x, x_3150.y, x_3149.y, x_3150.w);
            let x_3153 : f32 = u_xlat13.y;
            u_xlat15.y = x_3153;
            let x_3155 : vec4<f32> = u_xlat15;
            let x_3156 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3155 + x_3156);
            let x_3158 : vec4<f32> = u_xlat14;
            let x_3159 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3158 / x_3159);
            let x_3161 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3161 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3163 : vec4<f32> = u_xlat15;
            let x_3164 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3163 / x_3164);
            let x_3166 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3166 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3168 : vec4<f32> = u_xlat14;
            let x_3171 : vec4<f32> = x_148.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3168.w, x_3168.x, x_3168.y, x_3168.z) * vec4<f32>(x_3171.x, x_3171.x, x_3171.x, x_3171.x));
            let x_3174 : vec4<f32> = u_xlat15;
            let x_3177 : vec4<f32> = x_148.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3174.x, x_3174.w, x_3174.y, x_3174.z) * vec4<f32>(x_3177.y, x_3177.y, x_3177.y, x_3177.y));
            let x_3180 : vec4<f32> = u_xlat14;
            let x_3181 : vec3<f32> = vec3<f32>(x_3180.y, x_3180.z, x_3180.w);
            let x_3182 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3181.x, x_3182.y, x_3181.y, x_3181.z);
            let x_3185 : f32 = u_xlat15.x;
            u_xlat17.y = x_3185;
            let x_3187 : vec4<f32> = u_xlat12;
            let x_3190 : vec4<f32> = x_148.x_AdditionalShadowmapSize;
            let x_3193 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3187.x, x_3187.y, x_3187.x, x_3187.y) * vec4<f32>(x_3190.x, x_3190.y, x_3190.x, x_3190.y)) + vec4<f32>(x_3193.x, x_3193.y, x_3193.z, x_3193.y));
            let x_3196 : vec4<f32> = u_xlat12;
            let x_3199 : vec4<f32> = x_148.x_AdditionalShadowmapSize;
            let x_3202 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3196.x, x_3196.y) * vec2<f32>(x_3199.x, x_3199.y)) + vec2<f32>(x_3202.w, x_3202.y));
            let x_3206 : f32 = u_xlat17.y;
            u_xlat14.y = x_3206;
            let x_3209 : f32 = u_xlat15.z;
            u_xlat17.y = x_3209;
            let x_3211 : vec4<f32> = u_xlat12;
            let x_3214 : vec4<f32> = x_148.x_AdditionalShadowmapSize;
            let x_3217 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3211.x, x_3211.y, x_3211.x, x_3211.y) * vec4<f32>(x_3214.x, x_3214.y, x_3214.x, x_3214.y)) + vec4<f32>(x_3217.x, x_3217.y, x_3217.z, x_3217.y));
            let x_3220 : vec4<f32> = u_xlat12;
            let x_3223 : vec4<f32> = x_148.x_AdditionalShadowmapSize;
            let x_3226 : vec4<f32> = u_xlat17;
            let x_3228 : vec2<f32> = ((vec2<f32>(x_3220.x, x_3220.y) * vec2<f32>(x_3223.x, x_3223.y)) + vec2<f32>(x_3226.w, x_3226.y));
            let x_3229 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3228.x, x_3228.y, x_3229.z, x_3229.w);
            let x_3232 : f32 = u_xlat17.y;
            u_xlat14.z = x_3232;
            let x_3235 : vec4<f32> = u_xlat12;
            let x_3238 : vec4<f32> = x_148.x_AdditionalShadowmapSize;
            let x_3241 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3235.x, x_3235.y, x_3235.x, x_3235.y) * vec4<f32>(x_3238.x, x_3238.y, x_3238.x, x_3238.y)) + vec4<f32>(x_3241.x, x_3241.y, x_3241.x, x_3241.z));
            let x_3245 : f32 = u_xlat15.w;
            u_xlat17.y = x_3245;
            let x_3248 : vec4<f32> = u_xlat12;
            let x_3251 : vec4<f32> = x_148.x_AdditionalShadowmapSize;
            let x_3254 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3248.x, x_3248.y, x_3248.x, x_3248.y) * vec4<f32>(x_3251.x, x_3251.y, x_3251.x, x_3251.y)) + vec4<f32>(x_3254.x, x_3254.y, x_3254.z, x_3254.y));
            let x_3258 : vec4<f32> = u_xlat12;
            let x_3261 : vec4<f32> = x_148.x_AdditionalShadowmapSize;
            let x_3264 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3258.x, x_3258.y) * vec2<f32>(x_3261.x, x_3261.y)) + vec2<f32>(x_3264.w, x_3264.y));
            let x_3268 : f32 = u_xlat17.y;
            u_xlat14.w = x_3268;
            let x_3271 : vec4<f32> = u_xlat12;
            let x_3274 : vec4<f32> = x_148.x_AdditionalShadowmapSize;
            let x_3277 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3271.x, x_3271.y) * vec2<f32>(x_3274.x, x_3274.y)) + vec2<f32>(x_3277.x, x_3277.w));
            let x_3280 : vec4<f32> = u_xlat17;
            let x_3281 : vec3<f32> = vec3<f32>(x_3280.x, x_3280.z, x_3280.w);
            let x_3282 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3281.x, x_3282.y, x_3281.y, x_3281.z);
            let x_3284 : vec4<f32> = u_xlat12;
            let x_3287 : vec4<f32> = x_148.x_AdditionalShadowmapSize;
            let x_3290 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3284.x, x_3284.y, x_3284.x, x_3284.y) * vec4<f32>(x_3287.x, x_3287.y, x_3287.x, x_3287.y)) + vec4<f32>(x_3290.x, x_3290.y, x_3290.z, x_3290.y));
            let x_3294 : vec4<f32> = u_xlat12;
            let x_3297 : vec4<f32> = x_148.x_AdditionalShadowmapSize;
            let x_3300 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3294.x, x_3294.y) * vec2<f32>(x_3297.x, x_3297.y)) + vec2<f32>(x_3300.w, x_3300.y));
            let x_3304 : f32 = u_xlat14.x;
            u_xlat15.x = x_3304;
            let x_3306 : vec4<f32> = u_xlat12;
            let x_3309 : vec4<f32> = x_148.x_AdditionalShadowmapSize;
            let x_3312 : vec4<f32> = u_xlat15;
            let x_3314 : vec2<f32> = ((vec2<f32>(x_3306.x, x_3306.y) * vec2<f32>(x_3309.x, x_3309.y)) + vec2<f32>(x_3312.x, x_3312.y));
            let x_3315 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3314.x, x_3314.y, x_3315.z, x_3315.w);
            let x_3318 : vec4<f32> = u_xlat13;
            let x_3320 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3318.x, x_3318.x, x_3318.x, x_3318.x) * x_3320);
            let x_3323 : vec4<f32> = u_xlat13;
            let x_3325 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3323.y, x_3323.y, x_3323.y, x_3323.y) * x_3325);
            let x_3328 : vec4<f32> = u_xlat13;
            let x_3330 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3328.z, x_3328.z, x_3328.z, x_3328.z) * x_3330);
            let x_3332 : vec4<f32> = u_xlat13;
            let x_3334 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3332.w, x_3332.w, x_3332.w, x_3332.w) * x_3334);
            let x_3337 : vec4<f32> = u_xlat18;
            let x_3338 : vec2<f32> = vec2<f32>(x_3337.x, x_3337.y);
            let x_3340 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3338.x, x_3338.y, x_3340);
            let x_3347 : vec3<f32> = txVec43;
            let x_3349 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3347.xy, x_3347.z);
            u_xlat88 = x_3349;
            let x_3351 : vec4<f32> = u_xlat18;
            let x_3352 : vec2<f32> = vec2<f32>(x_3351.z, x_3351.w);
            let x_3354 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3352.x, x_3352.y, x_3354);
            let x_3361 : vec3<f32> = txVec44;
            let x_3363 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3361.xy, x_3361.z);
            u_xlat89 = x_3363;
            let x_3364 : f32 = u_xlat89;
            let x_3366 : f32 = u_xlat23.y;
            u_xlat89 = (x_3364 * x_3366);
            let x_3369 : f32 = u_xlat23.x;
            let x_3370 : f32 = u_xlat88;
            let x_3372 : f32 = u_xlat89;
            u_xlat88 = ((x_3369 * x_3370) + x_3372);
            let x_3375 : vec2<f32> = u_xlat64;
            let x_3377 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3375.x, x_3375.y, x_3377);
            let x_3384 : vec3<f32> = txVec45;
            let x_3386 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3384.xy, x_3384.z);
            u_xlat89 = x_3386;
            let x_3388 : f32 = u_xlat23.z;
            let x_3389 : f32 = u_xlat89;
            let x_3391 : f32 = u_xlat88;
            u_xlat88 = ((x_3388 * x_3389) + x_3391);
            let x_3394 : vec4<f32> = u_xlat21;
            let x_3395 : vec2<f32> = vec2<f32>(x_3394.x, x_3394.y);
            let x_3397 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3395.x, x_3395.y, x_3397);
            let x_3404 : vec3<f32> = txVec46;
            let x_3406 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3404.xy, x_3404.z);
            u_xlat89 = x_3406;
            let x_3408 : f32 = u_xlat23.w;
            let x_3409 : f32 = u_xlat89;
            let x_3411 : f32 = u_xlat88;
            u_xlat88 = ((x_3408 * x_3409) + x_3411);
            let x_3414 : vec4<f32> = u_xlat19;
            let x_3415 : vec2<f32> = vec2<f32>(x_3414.x, x_3414.y);
            let x_3417 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3415.x, x_3415.y, x_3417);
            let x_3424 : vec3<f32> = txVec47;
            let x_3426 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3424.xy, x_3424.z);
            u_xlat89 = x_3426;
            let x_3428 : f32 = u_xlat24.x;
            let x_3429 : f32 = u_xlat89;
            let x_3431 : f32 = u_xlat88;
            u_xlat88 = ((x_3428 * x_3429) + x_3431);
            let x_3434 : vec4<f32> = u_xlat19;
            let x_3435 : vec2<f32> = vec2<f32>(x_3434.z, x_3434.w);
            let x_3437 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3435.x, x_3435.y, x_3437);
            let x_3444 : vec3<f32> = txVec48;
            let x_3446 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3444.xy, x_3444.z);
            u_xlat89 = x_3446;
            let x_3448 : f32 = u_xlat24.y;
            let x_3449 : f32 = u_xlat89;
            let x_3451 : f32 = u_xlat88;
            u_xlat88 = ((x_3448 * x_3449) + x_3451);
            let x_3454 : vec4<f32> = u_xlat20;
            let x_3455 : vec2<f32> = vec2<f32>(x_3454.x, x_3454.y);
            let x_3457 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3455.x, x_3455.y, x_3457);
            let x_3464 : vec3<f32> = txVec49;
            let x_3466 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3464.xy, x_3464.z);
            u_xlat89 = x_3466;
            let x_3468 : f32 = u_xlat24.z;
            let x_3469 : f32 = u_xlat89;
            let x_3471 : f32 = u_xlat88;
            u_xlat88 = ((x_3468 * x_3469) + x_3471);
            let x_3474 : vec4<f32> = u_xlat21;
            let x_3475 : vec2<f32> = vec2<f32>(x_3474.z, x_3474.w);
            let x_3477 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3475.x, x_3475.y, x_3477);
            let x_3484 : vec3<f32> = txVec50;
            let x_3486 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3484.xy, x_3484.z);
            u_xlat89 = x_3486;
            let x_3488 : f32 = u_xlat24.w;
            let x_3489 : f32 = u_xlat89;
            let x_3491 : f32 = u_xlat88;
            u_xlat88 = ((x_3488 * x_3489) + x_3491);
            let x_3494 : vec4<f32> = u_xlat22;
            let x_3495 : vec2<f32> = vec2<f32>(x_3494.x, x_3494.y);
            let x_3497 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3495.x, x_3495.y, x_3497);
            let x_3504 : vec3<f32> = txVec51;
            let x_3506 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3504.xy, x_3504.z);
            u_xlat89 = x_3506;
            let x_3508 : f32 = u_xlat25.x;
            let x_3509 : f32 = u_xlat89;
            let x_3511 : f32 = u_xlat88;
            u_xlat88 = ((x_3508 * x_3509) + x_3511);
            let x_3514 : vec4<f32> = u_xlat22;
            let x_3515 : vec2<f32> = vec2<f32>(x_3514.z, x_3514.w);
            let x_3517 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3515.x, x_3515.y, x_3517);
            let x_3524 : vec3<f32> = txVec52;
            let x_3526 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3524.xy, x_3524.z);
            u_xlat89 = x_3526;
            let x_3528 : f32 = u_xlat25.y;
            let x_3529 : f32 = u_xlat89;
            let x_3531 : f32 = u_xlat88;
            u_xlat88 = ((x_3528 * x_3529) + x_3531);
            let x_3534 : vec2<f32> = u_xlat40;
            let x_3536 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3534.x, x_3534.y, x_3536);
            let x_3543 : vec3<f32> = txVec53;
            let x_3545 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3543.xy, x_3543.z);
            u_xlat89 = x_3545;
            let x_3547 : f32 = u_xlat25.z;
            let x_3548 : f32 = u_xlat89;
            let x_3550 : f32 = u_xlat88;
            u_xlat88 = ((x_3547 * x_3548) + x_3550);
            let x_3553 : vec2<f32> = u_xlat72;
            let x_3555 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3553.x, x_3553.y, x_3555);
            let x_3562 : vec3<f32> = txVec54;
            let x_3564 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3562.xy, x_3562.z);
            u_xlat89 = x_3564;
            let x_3566 : f32 = u_xlat25.w;
            let x_3567 : f32 = u_xlat89;
            let x_3569 : f32 = u_xlat88;
            u_xlat88 = ((x_3566 * x_3567) + x_3569);
            let x_3572 : vec4<f32> = u_xlat17;
            let x_3573 : vec2<f32> = vec2<f32>(x_3572.x, x_3572.y);
            let x_3575 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3573.x, x_3573.y, x_3575);
            let x_3582 : vec3<f32> = txVec55;
            let x_3584 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3582.xy, x_3582.z);
            u_xlat89 = x_3584;
            let x_3586 : f32 = u_xlat13.x;
            let x_3587 : f32 = u_xlat89;
            let x_3589 : f32 = u_xlat88;
            u_xlat88 = ((x_3586 * x_3587) + x_3589);
            let x_3592 : vec4<f32> = u_xlat17;
            let x_3593 : vec2<f32> = vec2<f32>(x_3592.z, x_3592.w);
            let x_3595 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3593.x, x_3593.y, x_3595);
            let x_3602 : vec3<f32> = txVec56;
            let x_3604 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3602.xy, x_3602.z);
            u_xlat89 = x_3604;
            let x_3606 : f32 = u_xlat13.y;
            let x_3607 : f32 = u_xlat89;
            let x_3609 : f32 = u_xlat88;
            u_xlat88 = ((x_3606 * x_3607) + x_3609);
            let x_3612 : vec2<f32> = u_xlat67;
            let x_3614 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3612.x, x_3612.y, x_3614);
            let x_3621 : vec3<f32> = txVec57;
            let x_3623 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3621.xy, x_3621.z);
            u_xlat89 = x_3623;
            let x_3625 : f32 = u_xlat13.z;
            let x_3626 : f32 = u_xlat89;
            let x_3628 : f32 = u_xlat88;
            u_xlat88 = ((x_3625 * x_3626) + x_3628);
            let x_3631 : vec4<f32> = u_xlat12;
            let x_3632 : vec2<f32> = vec2<f32>(x_3631.x, x_3631.y);
            let x_3634 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3632.x, x_3632.y, x_3634);
            let x_3641 : vec3<f32> = txVec58;
            let x_3643 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3641.xy, x_3641.z);
            u_xlat89 = x_3643;
            let x_3645 : f32 = u_xlat13.w;
            let x_3646 : f32 = u_xlat89;
            let x_3648 : f32 = u_xlat88;
            u_xlat87 = ((x_3645 * x_3646) + x_3648);
          }
        }
      } else {
        let x_3652 : vec4<f32> = u_xlat11;
        let x_3653 : vec2<f32> = vec2<f32>(x_3652.x, x_3652.y);
        let x_3655 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3653.x, x_3653.y, x_3655);
        let x_3662 : vec3<f32> = txVec59;
        let x_3664 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3662.xy, x_3662.z);
        u_xlat87 = x_3664;
      }
      let x_3665 : i32 = u_xlati56;
      let x_3667 : f32 = x_148.x_AdditionalShadowParams[x_3665].x;
      u_xlat88 = (1.0f + -(x_3667));
      let x_3670 : f32 = u_xlat87;
      let x_3671 : i32 = u_xlati56;
      let x_3673 : f32 = x_148.x_AdditionalShadowParams[x_3671].x;
      let x_3675 : f32 = u_xlat88;
      u_xlat87 = ((x_3670 * x_3673) + x_3675);
      let x_3678 : f32 = u_xlat11.z;
      u_xlatb88 = (0.0f >= x_3678);
      let x_3681 : f32 = u_xlat11.z;
      u_xlatb11.x = (x_3681 >= 1.0f);
      let x_3684 : bool = u_xlatb88;
      let x_3686 : bool = u_xlatb11.x;
      u_xlatb88 = (x_3684 | x_3686);
      let x_3688 : bool = u_xlatb88;
      let x_3689 : f32 = u_xlat87;
      u_xlat87 = select(x_3689, 1.0f, x_3688);
    } else {
      u_xlat87 = 1.0f;
    }
    let x_3692 : f32 = u_xlat87;
    u_xlat88 = (-(x_3692) + 1.0f);
    let x_3695 : f32 = u_xlat80;
    let x_3696 : f32 = u_xlat88;
    let x_3698 : f32 = u_xlat87;
    u_xlat87 = ((x_3695 * x_3696) + x_3698);
    let x_3701 : i32 = u_xlati56;
    u_xlati88 = (1i << bitcast<u32>((x_3701 & 31i)));
    let x_3705 : i32 = u_xlati88;
    let x_3708 : f32 = x_1817.x_AdditionalLightsCookieEnableBits;
    u_xlati88 = bitcast<i32>((bitcast<u32>(x_3705) & bitcast<u32>(x_3708)));
    let x_3712 : i32 = u_xlati88;
    if ((x_3712 != 0i)) {
      let x_3716 : i32 = u_xlati56;
      let x_3718 : f32 = x_1817.x_AdditionalLightsLightTypes[x_3716].el;
      u_xlati88 = i32(x_3718);
      let x_3721 : i32 = u_xlati88;
      u_xlati11 = select(1i, 0i, (x_3721 != 0i));
      let x_3725 : i32 = u_xlati56;
      u_xlati37 = (x_3725 << bitcast<u32>(2i));
      let x_3727 : i32 = u_xlati11;
      if ((x_3727 != 0i)) {
        let x_3731 : vec3<f32> = vs_TEXCOORD1;
        let x_3733 : i32 = u_xlati37;
        let x_3736 : i32 = u_xlati37;
        let x_3740 : vec4<f32> = x_1817.x_AdditionalLightsWorldToLights[((x_3733 + 1i) / 4i)][((x_3736 + 1i) % 4i)];
        let x_3742 : vec3<f32> = (vec3<f32>(x_3731.y, x_3731.y, x_3731.y) * vec3<f32>(x_3740.x, x_3740.y, x_3740.w));
        let x_3743 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3742.x, x_3743.y, x_3742.y, x_3742.z);
        let x_3745 : i32 = u_xlati37;
        let x_3747 : i32 = u_xlati37;
        let x_3750 : vec4<f32> = x_1817.x_AdditionalLightsWorldToLights[(x_3745 / 4i)][(x_3747 % 4i)];
        let x_3752 : vec3<f32> = vs_TEXCOORD1;
        let x_3755 : vec4<f32> = u_xlat11;
        let x_3757 : vec3<f32> = ((vec3<f32>(x_3750.x, x_3750.y, x_3750.w) * vec3<f32>(x_3752.x, x_3752.x, x_3752.x)) + vec3<f32>(x_3755.x, x_3755.z, x_3755.w));
        let x_3758 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3757.x, x_3758.y, x_3757.y, x_3757.z);
        let x_3760 : i32 = u_xlati37;
        let x_3763 : i32 = u_xlati37;
        let x_3767 : vec4<f32> = x_1817.x_AdditionalLightsWorldToLights[((x_3760 + 2i) / 4i)][((x_3763 + 2i) % 4i)];
        let x_3769 : vec3<f32> = vs_TEXCOORD1;
        let x_3772 : vec4<f32> = u_xlat11;
        let x_3774 : vec3<f32> = ((vec3<f32>(x_3767.x, x_3767.y, x_3767.w) * vec3<f32>(x_3769.z, x_3769.z, x_3769.z)) + vec3<f32>(x_3772.x, x_3772.z, x_3772.w));
        let x_3775 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3774.x, x_3775.y, x_3774.y, x_3774.z);
        let x_3777 : vec4<f32> = u_xlat11;
        let x_3779 : i32 = u_xlati37;
        let x_3782 : i32 = u_xlati37;
        let x_3786 : vec4<f32> = x_1817.x_AdditionalLightsWorldToLights[((x_3779 + 3i) / 4i)][((x_3782 + 3i) % 4i)];
        let x_3788 : vec3<f32> = (vec3<f32>(x_3777.x, x_3777.z, x_3777.w) + vec3<f32>(x_3786.x, x_3786.y, x_3786.w));
        let x_3789 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3788.x, x_3789.y, x_3788.y, x_3788.z);
        let x_3791 : vec4<f32> = u_xlat11;
        let x_3793 : vec4<f32> = u_xlat11;
        let x_3795 : vec2<f32> = (vec2<f32>(x_3791.x, x_3791.z) / vec2<f32>(x_3793.w, x_3793.w));
        let x_3796 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3795.x, x_3796.y, x_3795.y, x_3796.w);
        let x_3798 : vec4<f32> = u_xlat11;
        let x_3801 : vec2<f32> = ((vec2<f32>(x_3798.x, x_3798.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3802 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3801.x, x_3802.y, x_3801.y, x_3802.w);
        let x_3804 : vec4<f32> = u_xlat11;
        let x_3808 : vec2<f32> = clamp(vec2<f32>(x_3804.x, x_3804.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3809 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3808.x, x_3809.y, x_3808.y, x_3809.w);
        let x_3811 : i32 = u_xlati56;
        let x_3813 : vec4<f32> = x_1817.x_AdditionalLightsCookieAtlasUVRects[x_3811];
        let x_3815 : vec4<f32> = u_xlat11;
        let x_3818 : i32 = u_xlati56;
        let x_3820 : vec4<f32> = x_1817.x_AdditionalLightsCookieAtlasUVRects[x_3818];
        let x_3822 : vec2<f32> = ((vec2<f32>(x_3813.x, x_3813.y) * vec2<f32>(x_3815.x, x_3815.z)) + vec2<f32>(x_3820.z, x_3820.w));
        let x_3823 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3822.x, x_3823.y, x_3822.y, x_3823.w);
      } else {
        let x_3826 : i32 = u_xlati88;
        u_xlatb88 = (x_3826 == 1i);
        let x_3828 : bool = u_xlatb88;
        u_xlati88 = select(0i, 1i, x_3828);
        let x_3830 : i32 = u_xlati88;
        if ((x_3830 != 0i)) {
          let x_3834 : vec3<f32> = vs_TEXCOORD1;
          let x_3836 : i32 = u_xlati37;
          let x_3839 : i32 = u_xlati37;
          let x_3843 : vec4<f32> = x_1817.x_AdditionalLightsWorldToLights[((x_3836 + 1i) / 4i)][((x_3839 + 1i) % 4i)];
          let x_3845 : vec2<f32> = (vec2<f32>(x_3834.y, x_3834.y) * vec2<f32>(x_3843.x, x_3843.y));
          let x_3846 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3845.x, x_3845.y, x_3846.z, x_3846.w);
          let x_3848 : i32 = u_xlati37;
          let x_3850 : i32 = u_xlati37;
          let x_3853 : vec4<f32> = x_1817.x_AdditionalLightsWorldToLights[(x_3848 / 4i)][(x_3850 % 4i)];
          let x_3855 : vec3<f32> = vs_TEXCOORD1;
          let x_3858 : vec4<f32> = u_xlat12;
          let x_3860 : vec2<f32> = ((vec2<f32>(x_3853.x, x_3853.y) * vec2<f32>(x_3855.x, x_3855.x)) + vec2<f32>(x_3858.x, x_3858.y));
          let x_3861 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3860.x, x_3860.y, x_3861.z, x_3861.w);
          let x_3863 : i32 = u_xlati37;
          let x_3866 : i32 = u_xlati37;
          let x_3870 : vec4<f32> = x_1817.x_AdditionalLightsWorldToLights[((x_3863 + 2i) / 4i)][((x_3866 + 2i) % 4i)];
          let x_3872 : vec3<f32> = vs_TEXCOORD1;
          let x_3875 : vec4<f32> = u_xlat12;
          let x_3877 : vec2<f32> = ((vec2<f32>(x_3870.x, x_3870.y) * vec2<f32>(x_3872.z, x_3872.z)) + vec2<f32>(x_3875.x, x_3875.y));
          let x_3878 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3877.x, x_3877.y, x_3878.z, x_3878.w);
          let x_3880 : vec4<f32> = u_xlat12;
          let x_3882 : i32 = u_xlati37;
          let x_3885 : i32 = u_xlati37;
          let x_3889 : vec4<f32> = x_1817.x_AdditionalLightsWorldToLights[((x_3882 + 3i) / 4i)][((x_3885 + 3i) % 4i)];
          let x_3891 : vec2<f32> = (vec2<f32>(x_3880.x, x_3880.y) + vec2<f32>(x_3889.x, x_3889.y));
          let x_3892 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3891.x, x_3891.y, x_3892.z, x_3892.w);
          let x_3894 : vec4<f32> = u_xlat12;
          let x_3897 : vec2<f32> = ((vec2<f32>(x_3894.x, x_3894.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3898 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3897.x, x_3897.y, x_3898.z, x_3898.w);
          let x_3900 : vec4<f32> = u_xlat12;
          let x_3902 : vec2<f32> = fract(vec2<f32>(x_3900.x, x_3900.y));
          let x_3903 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3902.x, x_3902.y, x_3903.z, x_3903.w);
          let x_3905 : i32 = u_xlati56;
          let x_3907 : vec4<f32> = x_1817.x_AdditionalLightsCookieAtlasUVRects[x_3905];
          let x_3909 : vec4<f32> = u_xlat12;
          let x_3912 : i32 = u_xlati56;
          let x_3914 : vec4<f32> = x_1817.x_AdditionalLightsCookieAtlasUVRects[x_3912];
          let x_3916 : vec2<f32> = ((vec2<f32>(x_3907.x, x_3907.y) * vec2<f32>(x_3909.x, x_3909.y)) + vec2<f32>(x_3914.z, x_3914.w));
          let x_3917 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3916.x, x_3917.y, x_3916.y, x_3917.w);
        } else {
          let x_3920 : vec3<f32> = vs_TEXCOORD1;
          let x_3922 : i32 = u_xlati37;
          let x_3925 : i32 = u_xlati37;
          let x_3929 : vec4<f32> = x_1817.x_AdditionalLightsWorldToLights[((x_3922 + 1i) / 4i)][((x_3925 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_3920.y, x_3920.y, x_3920.y, x_3920.y) * x_3929);
          let x_3931 : i32 = u_xlati37;
          let x_3933 : i32 = u_xlati37;
          let x_3936 : vec4<f32> = x_1817.x_AdditionalLightsWorldToLights[(x_3931 / 4i)][(x_3933 % 4i)];
          let x_3937 : vec3<f32> = vs_TEXCOORD1;
          let x_3940 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3936 * vec4<f32>(x_3937.x, x_3937.x, x_3937.x, x_3937.x)) + x_3940);
          let x_3942 : i32 = u_xlati37;
          let x_3945 : i32 = u_xlati37;
          let x_3949 : vec4<f32> = x_1817.x_AdditionalLightsWorldToLights[((x_3942 + 2i) / 4i)][((x_3945 + 2i) % 4i)];
          let x_3950 : vec3<f32> = vs_TEXCOORD1;
          let x_3953 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3949 * vec4<f32>(x_3950.z, x_3950.z, x_3950.z, x_3950.z)) + x_3953);
          let x_3955 : vec4<f32> = u_xlat12;
          let x_3956 : i32 = u_xlati37;
          let x_3959 : i32 = u_xlati37;
          let x_3963 : vec4<f32> = x_1817.x_AdditionalLightsWorldToLights[((x_3956 + 3i) / 4i)][((x_3959 + 3i) % 4i)];
          u_xlat12 = (x_3955 + x_3963);
          let x_3965 : vec4<f32> = u_xlat12;
          let x_3967 : vec4<f32> = u_xlat12;
          let x_3969 : vec3<f32> = (vec3<f32>(x_3965.x, x_3965.y, x_3965.z) / vec3<f32>(x_3967.w, x_3967.w, x_3967.w));
          let x_3970 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3969.x, x_3969.y, x_3969.z, x_3970.w);
          let x_3972 : vec4<f32> = u_xlat12;
          let x_3974 : vec4<f32> = u_xlat12;
          u_xlat88 = dot(vec3<f32>(x_3972.x, x_3972.y, x_3972.z), vec3<f32>(x_3974.x, x_3974.y, x_3974.z));
          let x_3977 : f32 = u_xlat88;
          u_xlat88 = inverseSqrt(x_3977);
          let x_3979 : f32 = u_xlat88;
          let x_3981 : vec4<f32> = u_xlat12;
          let x_3983 : vec3<f32> = (vec3<f32>(x_3979, x_3979, x_3979) * vec3<f32>(x_3981.x, x_3981.y, x_3981.z));
          let x_3984 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3983.x, x_3983.y, x_3983.z, x_3984.w);
          let x_3986 : vec4<f32> = u_xlat12;
          u_xlat88 = dot(abs(vec3<f32>(x_3986.x, x_3986.y, x_3986.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3991 : f32 = u_xlat88;
          u_xlat88 = max(x_3991, 0.00000099999999747524f);
          let x_3994 : f32 = u_xlat88;
          u_xlat88 = (1.0f / x_3994);
          let x_3996 : f32 = u_xlat88;
          let x_3998 : vec4<f32> = u_xlat12;
          let x_4000 : vec3<f32> = (vec3<f32>(x_3996, x_3996, x_3996) * vec3<f32>(x_3998.z, x_3998.x, x_3998.y));
          let x_4001 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_4000.x, x_4000.y, x_4000.z, x_4001.w);
          let x_4004 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_4004);
          let x_4008 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_4008, 0.0f, 1.0f);
          let x_4013 : vec4<f32> = u_xlat13;
          let x_4015 : vec4<bool> = (vec4<f32>(x_4013.y, x_4013.y, x_4013.z, x_4013.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_4016 : vec2<bool> = vec2<bool>(x_4015.x, x_4015.z);
          let x_4017 : vec3<bool> = u_xlatb37;
          u_xlatb37 = vec3<bool>(x_4016.x, x_4017.y, x_4016.y);
          let x_4020 : bool = u_xlatb37.x;
          if (x_4020) {
            let x_4025 : f32 = u_xlat13.x;
            x_4021 = x_4025;
          } else {
            let x_4028 : f32 = u_xlat13.x;
            x_4021 = -(x_4028);
          }
          let x_4030 : f32 = x_4021;
          u_xlat37.x = x_4030;
          let x_4033 : bool = u_xlatb37.z;
          if (x_4033) {
            let x_4038 : f32 = u_xlat13.x;
            x_4034 = x_4038;
          } else {
            let x_4041 : f32 = u_xlat13.x;
            x_4034 = -(x_4041);
          }
          let x_4043 : f32 = x_4034;
          u_xlat37.z = x_4043;
          let x_4045 : vec4<f32> = u_xlat12;
          let x_4047 : f32 = u_xlat88;
          let x_4050 : vec3<f32> = u_xlat37;
          let x_4052 : vec2<f32> = ((vec2<f32>(x_4045.x, x_4045.y) * vec2<f32>(x_4047, x_4047)) + vec2<f32>(x_4050.x, x_4050.z));
          let x_4053 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4052.x, x_4053.y, x_4052.y);
          let x_4055 : vec3<f32> = u_xlat37;
          let x_4058 : vec2<f32> = ((vec2<f32>(x_4055.x, x_4055.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4059 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4058.x, x_4059.y, x_4058.y);
          let x_4061 : vec3<f32> = u_xlat37;
          let x_4065 : vec2<f32> = clamp(vec2<f32>(x_4061.x, x_4061.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4066 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4065.x, x_4066.y, x_4065.y);
          let x_4068 : i32 = u_xlati56;
          let x_4070 : vec4<f32> = x_1817.x_AdditionalLightsCookieAtlasUVRects[x_4068];
          let x_4072 : vec3<f32> = u_xlat37;
          let x_4075 : i32 = u_xlati56;
          let x_4077 : vec4<f32> = x_1817.x_AdditionalLightsCookieAtlasUVRects[x_4075];
          let x_4079 : vec2<f32> = ((vec2<f32>(x_4070.x, x_4070.y) * vec2<f32>(x_4072.x, x_4072.z)) + vec2<f32>(x_4077.z, x_4077.w));
          let x_4080 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4079.x, x_4080.y, x_4079.y, x_4080.w);
        }
      }
      let x_4087 : vec4<f32> = u_xlat11;
      let x_4089 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4087.x, x_4087.z), 0.0f);
      u_xlat11 = x_4089;
      let x_4091 : bool = u_xlatb4.y;
      if (x_4091) {
        let x_4096 : f32 = u_xlat11.w;
        x_4092 = x_4096;
      } else {
        let x_4099 : f32 = u_xlat11.x;
        x_4092 = x_4099;
      }
      let x_4100 : f32 = x_4092;
      u_xlat88 = x_4100;
      let x_4102 : bool = u_xlatb4.x;
      if (x_4102) {
        let x_4106 : vec4<f32> = u_xlat11;
        x_4103 = vec3<f32>(x_4106.x, x_4106.y, x_4106.z);
      } else {
        let x_4109 : f32 = u_xlat88;
        x_4103 = vec3<f32>(x_4109, x_4109, x_4109);
      }
      let x_4111 : vec3<f32> = x_4103;
      let x_4112 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4111.x, x_4111.y, x_4111.z, x_4112.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4118 : vec4<f32> = u_xlat11;
    let x_4120 : i32 = u_xlati56;
    let x_4122 : vec4<f32> = x_2253.x_AdditionalLightsColor[x_4120];
    let x_4124 : vec3<f32> = (vec3<f32>(x_4118.x, x_4118.y, x_4118.z) * vec3<f32>(x_4122.x, x_4122.y, x_4122.z));
    let x_4125 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4124.x, x_4124.y, x_4124.z, x_4125.w);
    let x_4127 : f32 = u_xlat84;
    let x_4128 : f32 = u_xlat87;
    u_xlat56 = (x_4127 * x_4128);
    let x_4130 : vec4<f32> = u_xlat2;
    let x_4132 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(vec3<f32>(x_4130.x, x_4130.y, x_4130.z), vec3<f32>(x_4132.x, x_4132.y, x_4132.z));
    let x_4135 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4135, 0.0f, 1.0f);
    let x_4137 : f32 = u_xlat56;
    let x_4138 : f32 = u_xlat84;
    u_xlat56 = (x_4137 * x_4138);
    let x_4140 : f32 = u_xlat56;
    let x_4142 : vec4<f32> = u_xlat11;
    let x_4144 : vec3<f32> = (vec3<f32>(x_4140, x_4140, x_4140) * vec3<f32>(x_4142.x, x_4142.y, x_4142.z));
    let x_4145 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4144.x, x_4144.y, x_4144.z, x_4145.w);
    let x_4147 : vec4<f32> = u_xlat9;
    let x_4149 : f32 = u_xlat85;
    let x_4152 : vec3<f32> = u_xlat3;
    let x_4153 : vec3<f32> = ((vec3<f32>(x_4147.x, x_4147.y, x_4147.z) * vec3<f32>(x_4149, x_4149, x_4149)) + x_4152);
    let x_4154 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4153.x, x_4153.y, x_4153.z, x_4154.w);
    let x_4156 : vec4<f32> = u_xlat9;
    let x_4158 : vec4<f32> = u_xlat9;
    u_xlat56 = dot(vec3<f32>(x_4156.x, x_4156.y, x_4156.z), vec3<f32>(x_4158.x, x_4158.y, x_4158.z));
    let x_4161 : f32 = u_xlat56;
    u_xlat56 = max(x_4161, 1.17549435e-38f);
    let x_4163 : f32 = u_xlat56;
    u_xlat56 = inverseSqrt(x_4163);
    let x_4165 : f32 = u_xlat56;
    let x_4167 : vec4<f32> = u_xlat9;
    let x_4169 : vec3<f32> = (vec3<f32>(x_4165, x_4165, x_4165) * vec3<f32>(x_4167.x, x_4167.y, x_4167.z));
    let x_4170 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4169.x, x_4169.y, x_4169.z, x_4170.w);
    let x_4172 : vec4<f32> = u_xlat2;
    let x_4174 : vec4<f32> = u_xlat9;
    u_xlat56 = dot(vec3<f32>(x_4172.x, x_4172.y, x_4172.z), vec3<f32>(x_4174.x, x_4174.y, x_4174.z));
    let x_4177 : f32 = u_xlat56;
    u_xlat56 = clamp(x_4177, 0.0f, 1.0f);
    let x_4179 : vec4<f32> = u_xlat10;
    let x_4181 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_4179.x, x_4179.y, x_4179.z), vec3<f32>(x_4181.x, x_4181.y, x_4181.z));
    let x_4184 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4184, 0.0f, 1.0f);
    let x_4186 : f32 = u_xlat56;
    let x_4187 : f32 = u_xlat56;
    u_xlat56 = (x_4186 * x_4187);
    let x_4189 : f32 = u_xlat56;
    let x_4191 : f32 = u_xlat8.x;
    u_xlat56 = ((x_4189 * x_4191) + 1.00001001358032226562f);
    let x_4194 : f32 = u_xlat84;
    let x_4195 : f32 = u_xlat84;
    u_xlat84 = (x_4194 * x_4195);
    let x_4197 : f32 = u_xlat56;
    let x_4198 : f32 = u_xlat56;
    u_xlat56 = (x_4197 * x_4198);
    let x_4200 : f32 = u_xlat84;
    u_xlat84 = max(x_4200, 0.10000000149011611938f);
    let x_4202 : f32 = u_xlat56;
    let x_4203 : f32 = u_xlat84;
    u_xlat56 = (x_4202 * x_4203);
    let x_4205 : f32 = u_xlat83;
    let x_4206 : f32 = u_xlat56;
    u_xlat56 = (x_4205 * x_4206);
    let x_4208 : f32 = u_xlat82;
    let x_4209 : f32 = u_xlat56;
    u_xlat56 = (x_4208 / x_4209);
    let x_4211 : vec4<f32> = u_xlat0;
    let x_4213 : f32 = u_xlat56;
    let x_4216 : vec3<f32> = u_xlat27;
    let x_4217 : vec3<f32> = ((vec3<f32>(x_4211.x, x_4211.y, x_4211.z) * vec3<f32>(x_4213, x_4213, x_4213)) + x_4216);
    let x_4218 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4217.x, x_4217.y, x_4217.z, x_4218.w);
    let x_4220 : vec4<f32> = u_xlat9;
    let x_4222 : vec4<f32> = u_xlat11;
    let x_4225 : vec3<f32> = u_xlat34;
    u_xlat34 = ((vec3<f32>(x_4220.x, x_4220.y, x_4220.z) * vec3<f32>(x_4222.x, x_4222.y, x_4222.z)) + x_4225);

    continuing {
      let x_4227 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4227 + bitcast<u32>(1i));
    }
  }
  let x_4229 : vec4<f32> = u_xlat7;
  let x_4231 : vec4<f32> = u_xlat6;
  let x_4234 : vec4<f32> = u_xlat5;
  let x_4236 : vec3<f32> = ((vec3<f32>(x_4229.x, x_4229.y, x_4229.z) * vec3<f32>(x_4231.x, x_4231.y, x_4231.z)) + vec3<f32>(x_4234.x, x_4234.y, x_4234.z));
  let x_4237 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4236.x, x_4236.y, x_4236.z, x_4237.w);
  let x_4241 : vec3<f32> = u_xlat34;
  let x_4242 : vec4<f32> = u_xlat0;
  let x_4244 : vec3<f32> = (x_4241 + vec3<f32>(x_4242.x, x_4242.y, x_4242.z));
  let x_4245 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4244.x, x_4244.y, x_4244.z, x_4245.w);
  let x_4249 : f32 = x_42.x_Surface;
  u_xlatb0 = (x_4249 == 1.0f);
  let x_4251 : bool = u_xlatb0;
  if (x_4251) {
    let x_4256 : f32 = u_xlat1.x;
    x_4252 = x_4256;
  } else {
    x_4252 = 1.0f;
  }
  let x_4258 : f32 = x_4252;
  SV_Target0.w = x_4258;
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


