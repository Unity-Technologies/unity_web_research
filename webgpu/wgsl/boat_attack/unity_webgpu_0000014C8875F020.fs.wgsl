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

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(7) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_42 : UnityPerMaterial;

var<private> u_xlatb78 : bool;

var<private> u_xlat2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat78 : f32;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat4 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_162 : UnityPerDraw;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat81 : f32;

var<private> u_xlat27 : vec3<f32>;

var<private> u_xlat82 : f32;

var<private> u_xlat31 : f32;

var<private> u_xlatb57 : vec2<bool>;

@group(1) @binding(4) var<uniform> x_321 : LightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat57 : f32;

var<private> u_xlatb83 : bool;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat83 : f32;

var<private> u_xlat32 : f32;

var<private> u_xlat33 : vec3<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat34 : vec3<f32>;

var<private> u_xlat66 : vec2<f32>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlatb6 : bool;

@group(1) @binding(5) var<uniform> x_1649 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlat84 : f32;

var<private> u_xlat85 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu80 : u32;

var<private> u_xlatu84 : u32;

var<private> u_xlati85 : i32;

var<private> u_xlati84 : i32;

@group(1) @binding(1) var<uniform> x_2087 : AdditionalLights;

var<private> u_xlat87 : f32;

var<private> u_xlat88 : f32;

var<private> u_xlati88 : i32;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlatb12 : vec3<bool>;

var<private> u_xlat37 : vec3<f32>;

var<private> u_xlat63 : f32;

var<private> u_xlatb88 : bool;

@group(0) @binding(3) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb89 : bool;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat89 : f32;

var<private> u_xlat38 : f32;

var<private> u_xlat39 : vec3<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat40 : vec2<f32>;

var<private> u_xlat72 : vec2<f32>;

var<private> u_xlat67 : vec2<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlat25 : vec4<f32>;

var<private> u_xlatb37 : bool;

var<private> u_xlati11 : i32;

var<private> u_xlati37 : i32;

var<private> u_xlati63 : i32;

var<private> u_xlatb64 : vec2<bool>;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu82 : u32;

var<private> u_xlatb84 : bool;

fn main_1() {
  var x_96 : vec3<f32>;
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
  var x_1734 : f32;
  var x_1745 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2229 : f32;
  var x_2240 : f32;
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
  var x_3907 : f32;
  var x_3920 : f32;
  var x_3977 : f32;
  var x_3988 : vec3<f32>;
  var x_4163 : f32;
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
  let x_62 : vec3<f32> = vs_TEXCOORD1;
  let x_67 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_62) + x_67);
  let x_71 : vec3<f32> = u_xlat2;
  let x_72 : vec3<f32> = u_xlat2;
  u_xlat80 = dot(x_71, x_72);
  let x_74 : f32 = u_xlat80;
  u_xlat80 = inverseSqrt(x_74);
  let x_76 : f32 = u_xlat80;
  let x_78 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_76, x_76, x_76) * x_78);
  let x_84 : f32 = x_28.unity_MatrixV[0i].z;
  u_xlat3.x = x_84;
  let x_88 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat3.y = x_88;
  let x_92 : f32 = x_28.unity_MatrixV[2i].z;
  u_xlat3.z = x_92;
  let x_94 : bool = u_xlatb78;
  if (x_94) {
    let x_99 : vec3<f32> = u_xlat2;
    x_96 = x_99;
  } else {
    let x_101 : vec4<f32> = u_xlat3;
    x_96 = vec3<f32>(x_101.x, x_101.y, x_101.z);
  }
  let x_103 : vec3<f32> = x_96;
  u_xlat2 = x_103;
  let x_106 : vec3<f32> = vs_TEXCOORD2;
  let x_107 : vec3<f32> = vs_TEXCOORD2;
  u_xlat78 = dot(x_106, x_107);
  let x_109 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_109);
  let x_111 : f32 = u_xlat78;
  let x_113 : vec3<f32> = vs_TEXCOORD2;
  let x_114 : vec3<f32> = (vec3<f32>(x_111, x_111, x_111) * x_113);
  let x_115 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_114.x, x_114.y, x_114.z, x_115.w);
  let x_119 : f32 = vs_TEXCOORD1.y;
  let x_121 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat78 = (x_119 * x_121);
  let x_124 : f32 = x_28.unity_MatrixV[0i].z;
  let x_126 : f32 = vs_TEXCOORD1.x;
  let x_128 : f32 = u_xlat78;
  u_xlat78 = ((x_124 * x_126) + x_128);
  let x_131 : f32 = x_28.unity_MatrixV[2i].z;
  let x_133 : f32 = vs_TEXCOORD1.z;
  let x_135 : f32 = u_xlat78;
  u_xlat78 = ((x_131 * x_133) + x_135);
  let x_137 : f32 = u_xlat78;
  let x_140 : f32 = x_28.unity_MatrixV[3i].z;
  u_xlat78 = (x_137 + x_140);
  let x_142 : f32 = u_xlat78;
  let x_146 : f32 = x_28.x_ProjectionParams.y;
  u_xlat78 = (-(x_142) + -(x_146));
  let x_149 : f32 = u_xlat78;
  u_xlat78 = max(x_149, 0.0f);
  let x_151 : f32 = u_xlat78;
  let x_154 : f32 = x_28.unity_FogParams.x;
  u_xlat78 = (x_151 * x_154);
  u_xlat3.w = 1.0f;
  let x_165 : vec4<f32> = x_162.unity_SHAr;
  let x_166 : vec4<f32> = u_xlat3;
  u_xlat4.x = dot(x_165, x_166);
  let x_171 : vec4<f32> = x_162.unity_SHAg;
  let x_172 : vec4<f32> = u_xlat3;
  u_xlat4.y = dot(x_171, x_172);
  let x_177 : vec4<f32> = x_162.unity_SHAb;
  let x_178 : vec4<f32> = u_xlat3;
  u_xlat4.z = dot(x_177, x_178);
  let x_182 : vec4<f32> = u_xlat3;
  let x_184 : vec4<f32> = u_xlat3;
  u_xlat5 = (vec4<f32>(x_182.y, x_182.z, x_182.z, x_182.x) * vec4<f32>(x_184.x, x_184.y, x_184.z, x_184.z));
  let x_190 : vec4<f32> = x_162.unity_SHBr;
  let x_191 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_190, x_191);
  let x_196 : vec4<f32> = x_162.unity_SHBg;
  let x_197 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_196, x_197);
  let x_202 : vec4<f32> = x_162.unity_SHBb;
  let x_203 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_202, x_203);
  let x_207 : f32 = u_xlat3.y;
  let x_209 : f32 = u_xlat3.y;
  u_xlat80 = (x_207 * x_209);
  let x_212 : f32 = u_xlat3.x;
  let x_214 : f32 = u_xlat3.x;
  let x_216 : f32 = u_xlat80;
  u_xlat80 = ((x_212 * x_214) + -(x_216));
  let x_221 : vec4<f32> = x_162.unity_SHC;
  let x_223 : f32 = u_xlat80;
  let x_226 : vec4<f32> = u_xlat6;
  let x_228 : vec3<f32> = ((vec3<f32>(x_221.x, x_221.y, x_221.z) * vec3<f32>(x_223, x_223, x_223)) + vec3<f32>(x_226.x, x_226.y, x_226.z));
  let x_229 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_228.x, x_228.y, x_228.z, x_229.w);
  let x_231 : vec3<f32> = u_xlat4;
  let x_232 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_231 + vec3<f32>(x_232.x, x_232.y, x_232.z));
  let x_235 : vec3<f32> = u_xlat4;
  u_xlat4 = max(x_235, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_239 : f32 = x_42.x_Metallic;
  u_xlat80 = ((-(x_239) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_245 : f32 = u_xlat80;
  let x_248 : f32 = x_42.x_Smoothness;
  u_xlat81 = (-(x_245) + x_248);
  let x_251 : vec4<f32> = u_xlat1;
  let x_253 : f32 = u_xlat80;
  u_xlat27 = (vec3<f32>(x_251.y, x_251.z, x_251.w) * vec3<f32>(x_253, x_253, x_253));
  let x_256 : vec4<f32> = u_xlat0;
  let x_259 : vec4<f32> = x_42.x_BaseColor;
  let x_264 : vec3<f32> = ((vec3<f32>(x_256.x, x_256.y, x_256.z) * vec3<f32>(x_259.x, x_259.y, x_259.z)) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_265 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_264.x, x_264.y, x_264.z, x_265.w);
  let x_268 : f32 = x_42.x_Metallic;
  let x_270 : f32 = x_42.x_Metallic;
  let x_272 : f32 = x_42.x_Metallic;
  let x_273 : vec3<f32> = vec3<f32>(x_268, x_270, x_272);
  let x_278 : vec4<f32> = u_xlat0;
  let x_283 : vec3<f32> = ((vec3<f32>(x_273.x, x_273.y, x_273.z) * vec3<f32>(x_278.x, x_278.y, x_278.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_284 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_283.x, x_283.y, x_283.z, x_284.w);
  let x_287 : f32 = x_42.x_Smoothness;
  u_xlat80 = (-(x_287) + 1.0f);
  let x_291 : f32 = u_xlat80;
  let x_292 : f32 = u_xlat80;
  u_xlat82 = (x_291 * x_292);
  let x_294 : f32 = u_xlat82;
  u_xlat82 = max(x_294, 0.0078125f);
  let x_297 : f32 = u_xlat82;
  let x_298 : f32 = u_xlat82;
  u_xlat5.x = (x_297 * x_298);
  let x_301 : f32 = u_xlat81;
  u_xlat81 = (x_301 + 1.0f);
  let x_303 : f32 = u_xlat81;
  u_xlat81 = clamp(x_303, 0.0f, 1.0f);
  let x_306 : f32 = u_xlat82;
  u_xlat31 = ((x_306 * 4.0f) + 2.0f);
  let x_324 : f32 = x_321.x_MainLightShadowParams.y;
  u_xlatb57.x = (0.0f < x_324);
  let x_328 : bool = u_xlatb57.x;
  if (x_328) {
    let x_332 : f32 = x_321.x_MainLightShadowParams.y;
    u_xlatb57.x = (x_332 == 1.0f);
    let x_336 : bool = u_xlatb57.x;
    if (x_336) {
      let x_341 : vec4<f32> = vs_TEXCOORD6;
      let x_344 : vec4<f32> = x_321.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_341.x, x_341.y, x_341.x, x_341.y) + x_344);
      let x_347 : vec4<f32> = u_xlat6;
      let x_348 : vec2<f32> = vec2<f32>(x_347.x, x_347.y);
      let x_350 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_348.x, x_348.y, x_350);
      let x_363 : vec3<f32> = txVec0;
      let x_365 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_363.xy, x_363.z);
      u_xlat7.x = x_365;
      let x_368 : vec4<f32> = u_xlat6;
      let x_369 : vec2<f32> = vec2<f32>(x_368.z, x_368.w);
      let x_371 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_369.x, x_369.y, x_371);
      let x_378 : vec3<f32> = txVec1;
      let x_380 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_378.xy, x_378.z);
      u_xlat7.y = x_380;
      let x_382 : vec4<f32> = vs_TEXCOORD6;
      let x_385 : vec4<f32> = x_321.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_382.x, x_382.y, x_382.x, x_382.y) + x_385);
      let x_388 : vec4<f32> = u_xlat6;
      let x_389 : vec2<f32> = vec2<f32>(x_388.x, x_388.y);
      let x_391 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_389.x, x_389.y, x_391);
      let x_398 : vec3<f32> = txVec2;
      let x_400 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_398.xy, x_398.z);
      u_xlat7.z = x_400;
      let x_403 : vec4<f32> = u_xlat6;
      let x_404 : vec2<f32> = vec2<f32>(x_403.z, x_403.w);
      let x_406 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_404.x, x_404.y, x_406);
      let x_413 : vec3<f32> = txVec3;
      let x_415 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_413.xy, x_413.z);
      u_xlat7.w = x_415;
      let x_418 : vec4<f32> = u_xlat7;
      u_xlat57 = dot(x_418, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_425 : f32 = x_321.x_MainLightShadowParams.y;
      u_xlatb83 = (x_425 == 2.0f);
      let x_427 : bool = u_xlatb83;
      if (x_427) {
        let x_430 : vec4<f32> = vs_TEXCOORD6;
        let x_433 : vec4<f32> = x_321.x_MainLightShadowmapSize;
        let x_438 : vec2<f32> = ((vec2<f32>(x_430.x, x_430.y) * vec2<f32>(x_433.z, x_433.w)) + vec2<f32>(0.5f, 0.5f));
        let x_439 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_438.x, x_438.y, x_439.z, x_439.w);
        let x_441 : vec4<f32> = u_xlat6;
        let x_443 : vec2<f32> = floor(vec2<f32>(x_441.x, x_441.y));
        let x_444 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_443.x, x_443.y, x_444.z, x_444.w);
        let x_448 : vec4<f32> = vs_TEXCOORD6;
        let x_451 : vec4<f32> = x_321.x_MainLightShadowmapSize;
        let x_454 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_448.x, x_448.y) * vec2<f32>(x_451.z, x_451.w)) + -(vec2<f32>(x_454.x, x_454.y)));
        let x_458 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_458.x, x_458.x, x_458.y, x_458.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_463 : vec4<f32> = u_xlat7;
        let x_465 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_463.x, x_463.x, x_463.z, x_463.z) * vec4<f32>(x_465.x, x_465.x, x_465.z, x_465.z));
        let x_468 : vec4<f32> = u_xlat8;
        let x_472 : vec2<f32> = (vec2<f32>(x_468.y, x_468.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_473 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_472.x, x_473.y, x_472.y, x_473.w);
        let x_475 : vec4<f32> = u_xlat8;
        let x_478 : vec2<f32> = u_xlat58;
        let x_480 : vec2<f32> = ((vec2<f32>(x_475.x, x_475.z) * vec2<f32>(0.5f, 0.5f)) + -(x_478));
        let x_481 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_480.x, x_480.y, x_481.z, x_481.w);
        let x_484 : vec2<f32> = u_xlat58;
        u_xlat60 = (-(x_484) + vec2<f32>(1.0f, 1.0f));
        let x_489 : vec2<f32> = u_xlat58;
        let x_491 : vec2<f32> = min(x_489, vec2<f32>(0.0f, 0.0f));
        let x_492 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_491.x, x_491.y, x_492.z, x_492.w);
        let x_494 : vec4<f32> = u_xlat9;
        let x_497 : vec4<f32> = u_xlat9;
        let x_500 : vec2<f32> = u_xlat60;
        let x_501 : vec2<f32> = ((-(vec2<f32>(x_494.x, x_494.y)) * vec2<f32>(x_497.x, x_497.y)) + x_500);
        let x_502 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_501.x, x_501.y, x_502.z, x_502.w);
        let x_504 : vec2<f32> = u_xlat58;
        u_xlat58 = max(x_504, vec2<f32>(0.0f, 0.0f));
        let x_506 : vec2<f32> = u_xlat58;
        let x_508 : vec2<f32> = u_xlat58;
        let x_510 : vec4<f32> = u_xlat7;
        u_xlat58 = ((-(x_506) * x_508) + vec2<f32>(x_510.y, x_510.w));
        let x_513 : vec4<f32> = u_xlat9;
        let x_515 : vec2<f32> = (vec2<f32>(x_513.x, x_513.y) + vec2<f32>(1.0f, 1.0f));
        let x_516 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_515.x, x_515.y, x_516.z, x_516.w);
        let x_518 : vec2<f32> = u_xlat58;
        u_xlat58 = (x_518 + vec2<f32>(1.0f, 1.0f));
        let x_521 : vec4<f32> = u_xlat8;
        let x_525 : vec2<f32> = (vec2<f32>(x_521.x, x_521.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_526 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_525.x, x_525.y, x_526.z, x_526.w);
        let x_528 : vec2<f32> = u_xlat60;
        let x_529 : vec2<f32> = (x_528 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_530 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_529.x, x_529.y, x_530.z, x_530.w);
        let x_532 : vec4<f32> = u_xlat9;
        let x_534 : vec2<f32> = (vec2<f32>(x_532.x, x_532.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_535 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_534.x, x_534.y, x_535.z, x_535.w);
        let x_538 : vec2<f32> = u_xlat58;
        let x_539 : vec2<f32> = (x_538 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_540 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_539.x, x_539.y, x_540.z, x_540.w);
        let x_542 : vec4<f32> = u_xlat7;
        u_xlat58 = (vec2<f32>(x_542.y, x_542.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_546 : f32 = u_xlat9.x;
        u_xlat10.z = x_546;
        let x_549 : f32 = u_xlat58.x;
        u_xlat10.w = x_549;
        let x_552 : f32 = u_xlat11.x;
        u_xlat8.z = x_552;
        let x_555 : f32 = u_xlat7.x;
        u_xlat8.w = x_555;
        let x_558 : vec4<f32> = u_xlat8;
        let x_560 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_558.z, x_558.w, x_558.x, x_558.z) + vec4<f32>(x_560.z, x_560.w, x_560.x, x_560.z));
        let x_564 : f32 = u_xlat10.y;
        u_xlat9.z = x_564;
        let x_567 : f32 = u_xlat58.y;
        u_xlat9.w = x_567;
        let x_570 : f32 = u_xlat8.y;
        u_xlat11.z = x_570;
        let x_573 : f32 = u_xlat7.z;
        u_xlat11.w = x_573;
        let x_575 : vec4<f32> = u_xlat9;
        let x_577 : vec4<f32> = u_xlat11;
        let x_579 : vec3<f32> = (vec3<f32>(x_575.z, x_575.y, x_575.w) + vec3<f32>(x_577.z, x_577.y, x_577.w));
        let x_580 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_579.x, x_579.y, x_579.z, x_580.w);
        let x_582 : vec4<f32> = u_xlat8;
        let x_584 : vec4<f32> = u_xlat12;
        let x_586 : vec3<f32> = (vec3<f32>(x_582.x, x_582.z, x_582.w) / vec3<f32>(x_584.z, x_584.w, x_584.y));
        let x_587 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_586.x, x_586.y, x_586.z, x_587.w);
        let x_589 : vec4<f32> = u_xlat8;
        let x_595 : vec3<f32> = (vec3<f32>(x_589.x, x_589.y, x_589.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_596 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_595.x, x_595.y, x_595.z, x_596.w);
        let x_598 : vec4<f32> = u_xlat11;
        let x_600 : vec4<f32> = u_xlat7;
        let x_602 : vec3<f32> = (vec3<f32>(x_598.z, x_598.y, x_598.w) / vec3<f32>(x_600.x, x_600.y, x_600.z));
        let x_603 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_602.x, x_602.y, x_602.z, x_603.w);
        let x_605 : vec4<f32> = u_xlat9;
        let x_607 : vec3<f32> = (vec3<f32>(x_605.x, x_605.y, x_605.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_608 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_607.x, x_607.y, x_607.z, x_608.w);
        let x_610 : vec4<f32> = u_xlat8;
        let x_613 : vec4<f32> = x_321.x_MainLightShadowmapSize;
        let x_615 : vec3<f32> = (vec3<f32>(x_610.y, x_610.x, x_610.z) * vec3<f32>(x_613.x, x_613.x, x_613.x));
        let x_616 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_615.x, x_615.y, x_615.z, x_616.w);
        let x_618 : vec4<f32> = u_xlat9;
        let x_621 : vec4<f32> = x_321.x_MainLightShadowmapSize;
        let x_623 : vec3<f32> = (vec3<f32>(x_618.x, x_618.y, x_618.z) * vec3<f32>(x_621.y, x_621.y, x_621.y));
        let x_624 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_623.x, x_623.y, x_623.z, x_624.w);
        let x_627 : f32 = u_xlat9.x;
        u_xlat8.w = x_627;
        let x_629 : vec4<f32> = u_xlat6;
        let x_632 : vec4<f32> = x_321.x_MainLightShadowmapSize;
        let x_635 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_629.x, x_629.y, x_629.x, x_629.y) * vec4<f32>(x_632.x, x_632.y, x_632.x, x_632.y)) + vec4<f32>(x_635.y, x_635.w, x_635.x, x_635.w));
        let x_638 : vec4<f32> = u_xlat6;
        let x_641 : vec4<f32> = x_321.x_MainLightShadowmapSize;
        let x_644 : vec4<f32> = u_xlat8;
        u_xlat58 = ((vec2<f32>(x_638.x, x_638.y) * vec2<f32>(x_641.x, x_641.y)) + vec2<f32>(x_644.z, x_644.w));
        let x_648 : f32 = u_xlat8.y;
        u_xlat9.w = x_648;
        let x_650 : vec4<f32> = u_xlat9;
        let x_651 : vec2<f32> = vec2<f32>(x_650.y, x_650.z);
        let x_652 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_652.x, x_651.x, x_652.z, x_651.y);
        let x_654 : vec4<f32> = u_xlat6;
        let x_657 : vec4<f32> = x_321.x_MainLightShadowmapSize;
        let x_660 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_654.x, x_654.y, x_654.x, x_654.y) * vec4<f32>(x_657.x, x_657.y, x_657.x, x_657.y)) + vec4<f32>(x_660.x, x_660.y, x_660.z, x_660.y));
        let x_663 : vec4<f32> = u_xlat6;
        let x_666 : vec4<f32> = x_321.x_MainLightShadowmapSize;
        let x_669 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_663.x, x_663.y, x_663.x, x_663.y) * vec4<f32>(x_666.x, x_666.y, x_666.x, x_666.y)) + vec4<f32>(x_669.w, x_669.y, x_669.w, x_669.z));
        let x_672 : vec4<f32> = u_xlat6;
        let x_675 : vec4<f32> = x_321.x_MainLightShadowmapSize;
        let x_678 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_672.x, x_672.y, x_672.x, x_672.y) * vec4<f32>(x_675.x, x_675.y, x_675.x, x_675.y)) + vec4<f32>(x_678.x, x_678.w, x_678.z, x_678.w));
        let x_682 : vec4<f32> = u_xlat7;
        let x_684 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_682.x, x_682.x, x_682.x, x_682.y) * vec4<f32>(x_684.z, x_684.w, x_684.y, x_684.z));
        let x_688 : vec4<f32> = u_xlat7;
        let x_690 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_688.y, x_688.y, x_688.z, x_688.z) * x_690);
        let x_694 : f32 = u_xlat7.z;
        let x_696 : f32 = u_xlat12.y;
        u_xlat83 = (x_694 * x_696);
        let x_699 : vec4<f32> = u_xlat10;
        let x_700 : vec2<f32> = vec2<f32>(x_699.x, x_699.y);
        let x_702 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_700.x, x_700.y, x_702);
        let x_709 : vec3<f32> = txVec4;
        let x_711 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_709.xy, x_709.z);
        u_xlat6.x = x_711;
        let x_714 : vec4<f32> = u_xlat10;
        let x_715 : vec2<f32> = vec2<f32>(x_714.z, x_714.w);
        let x_717 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_715.x, x_715.y, x_717);
        let x_725 : vec3<f32> = txVec5;
        let x_727 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_725.xy, x_725.z);
        u_xlat32 = x_727;
        let x_728 : f32 = u_xlat32;
        let x_730 : f32 = u_xlat13.y;
        u_xlat32 = (x_728 * x_730);
        let x_733 : f32 = u_xlat13.x;
        let x_735 : f32 = u_xlat6.x;
        let x_737 : f32 = u_xlat32;
        u_xlat6.x = ((x_733 * x_735) + x_737);
        let x_741 : vec2<f32> = u_xlat58;
        let x_743 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_741.x, x_741.y, x_743);
        let x_750 : vec3<f32> = txVec6;
        let x_752 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_750.xy, x_750.z);
        u_xlat32 = x_752;
        let x_754 : f32 = u_xlat13.z;
        let x_755 : f32 = u_xlat32;
        let x_758 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_754 * x_755) + x_758);
        let x_762 : vec4<f32> = u_xlat9;
        let x_763 : vec2<f32> = vec2<f32>(x_762.x, x_762.y);
        let x_765 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_763.x, x_763.y, x_765);
        let x_772 : vec3<f32> = txVec7;
        let x_774 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_772.xy, x_772.z);
        u_xlat32 = x_774;
        let x_776 : f32 = u_xlat13.w;
        let x_777 : f32 = u_xlat32;
        let x_780 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_776 * x_777) + x_780);
        let x_784 : vec4<f32> = u_xlat11;
        let x_785 : vec2<f32> = vec2<f32>(x_784.x, x_784.y);
        let x_787 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_785.x, x_785.y, x_787);
        let x_794 : vec3<f32> = txVec8;
        let x_796 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_794.xy, x_794.z);
        u_xlat32 = x_796;
        let x_798 : f32 = u_xlat14.x;
        let x_799 : f32 = u_xlat32;
        let x_802 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_798 * x_799) + x_802);
        let x_806 : vec4<f32> = u_xlat11;
        let x_807 : vec2<f32> = vec2<f32>(x_806.z, x_806.w);
        let x_809 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_807.x, x_807.y, x_809);
        let x_816 : vec3<f32> = txVec9;
        let x_818 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_816.xy, x_816.z);
        u_xlat32 = x_818;
        let x_820 : f32 = u_xlat14.y;
        let x_821 : f32 = u_xlat32;
        let x_824 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_820 * x_821) + x_824);
        let x_828 : vec4<f32> = u_xlat9;
        let x_829 : vec2<f32> = vec2<f32>(x_828.z, x_828.w);
        let x_831 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_829.x, x_829.y, x_831);
        let x_838 : vec3<f32> = txVec10;
        let x_840 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_838.xy, x_838.z);
        u_xlat32 = x_840;
        let x_842 : f32 = u_xlat14.z;
        let x_843 : f32 = u_xlat32;
        let x_846 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_842 * x_843) + x_846);
        let x_850 : vec4<f32> = u_xlat8;
        let x_851 : vec2<f32> = vec2<f32>(x_850.x, x_850.y);
        let x_853 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_851.x, x_851.y, x_853);
        let x_860 : vec3<f32> = txVec11;
        let x_862 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_860.xy, x_860.z);
        u_xlat32 = x_862;
        let x_864 : f32 = u_xlat14.w;
        let x_865 : f32 = u_xlat32;
        let x_868 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_864 * x_865) + x_868);
        let x_872 : vec4<f32> = u_xlat8;
        let x_873 : vec2<f32> = vec2<f32>(x_872.z, x_872.w);
        let x_875 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_873.x, x_873.y, x_875);
        let x_882 : vec3<f32> = txVec12;
        let x_884 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_882.xy, x_882.z);
        u_xlat32 = x_884;
        let x_885 : f32 = u_xlat83;
        let x_886 : f32 = u_xlat32;
        let x_889 : f32 = u_xlat6.x;
        u_xlat57 = ((x_885 * x_886) + x_889);
      } else {
        let x_892 : vec4<f32> = vs_TEXCOORD6;
        let x_895 : vec4<f32> = x_321.x_MainLightShadowmapSize;
        let x_898 : vec2<f32> = ((vec2<f32>(x_892.x, x_892.y) * vec2<f32>(x_895.z, x_895.w)) + vec2<f32>(0.5f, 0.5f));
        let x_899 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_898.x, x_898.y, x_899.z, x_899.w);
        let x_901 : vec4<f32> = u_xlat6;
        let x_903 : vec2<f32> = floor(vec2<f32>(x_901.x, x_901.y));
        let x_904 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_903.x, x_903.y, x_904.z, x_904.w);
        let x_906 : vec4<f32> = vs_TEXCOORD6;
        let x_909 : vec4<f32> = x_321.x_MainLightShadowmapSize;
        let x_912 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_906.x, x_906.y) * vec2<f32>(x_909.z, x_909.w)) + -(vec2<f32>(x_912.x, x_912.y)));
        let x_916 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_916.x, x_916.x, x_916.y, x_916.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_919 : vec4<f32> = u_xlat7;
        let x_921 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_919.x, x_919.x, x_919.z, x_919.z) * vec4<f32>(x_921.x, x_921.x, x_921.z, x_921.z));
        let x_924 : vec4<f32> = u_xlat8;
        let x_928 : vec2<f32> = (vec2<f32>(x_924.y, x_924.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_929 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_929.x, x_928.x, x_929.z, x_928.y);
        let x_931 : vec4<f32> = u_xlat8;
        let x_934 : vec2<f32> = u_xlat58;
        let x_936 : vec2<f32> = ((vec2<f32>(x_931.x, x_931.z) * vec2<f32>(0.5f, 0.5f)) + -(x_934));
        let x_937 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_936.x, x_937.y, x_936.y, x_937.w);
        let x_939 : vec2<f32> = u_xlat58;
        let x_941 : vec2<f32> = (-(x_939) + vec2<f32>(1.0f, 1.0f));
        let x_942 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_941.x, x_941.y, x_942.z, x_942.w);
        let x_944 : vec2<f32> = u_xlat58;
        u_xlat60 = min(x_944, vec2<f32>(0.0f, 0.0f));
        let x_946 : vec2<f32> = u_xlat60;
        let x_948 : vec2<f32> = u_xlat60;
        let x_950 : vec4<f32> = u_xlat8;
        let x_952 : vec2<f32> = ((-(x_946) * x_948) + vec2<f32>(x_950.x, x_950.y));
        let x_953 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_952.x, x_952.y, x_953.z, x_953.w);
        let x_955 : vec2<f32> = u_xlat58;
        u_xlat60 = max(x_955, vec2<f32>(0.0f, 0.0f));
        let x_958 : vec2<f32> = u_xlat60;
        let x_960 : vec2<f32> = u_xlat60;
        let x_962 : vec4<f32> = u_xlat7;
        let x_964 : vec2<f32> = ((-(x_958) * x_960) + vec2<f32>(x_962.y, x_962.w));
        let x_965 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_964.x, x_965.y, x_964.y);
        let x_967 : vec4<f32> = u_xlat8;
        let x_970 : vec2<f32> = (vec2<f32>(x_967.x, x_967.y) + vec2<f32>(2.0f, 2.0f));
        let x_971 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_970.x, x_970.y, x_971.z, x_971.w);
        let x_973 : vec3<f32> = u_xlat33;
        let x_975 : vec2<f32> = (vec2<f32>(x_973.x, x_973.z) + vec2<f32>(2.0f, 2.0f));
        let x_976 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_976.x, x_975.x, x_976.z, x_975.y);
        let x_979 : f32 = u_xlat7.y;
        u_xlat10.z = (x_979 * 0.08163200318813323975f);
        let x_983 : vec4<f32> = u_xlat7;
        let x_986 : vec3<f32> = (vec3<f32>(x_983.z, x_983.x, x_983.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_987 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_986.x, x_986.y, x_986.z, x_987.w);
        let x_989 : vec4<f32> = u_xlat8;
        let x_992 : vec2<f32> = (vec2<f32>(x_989.x, x_989.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_993 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_992.x, x_992.y, x_993.z, x_993.w);
        let x_996 : f32 = u_xlat11.y;
        u_xlat10.x = x_996;
        let x_998 : vec2<f32> = u_xlat58;
        let x_1005 : vec2<f32> = ((vec2<f32>(x_998.x, x_998.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1006 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1006.x, x_1005.x, x_1006.z, x_1005.y);
        let x_1008 : vec2<f32> = u_xlat58;
        let x_1012 : vec2<f32> = ((vec2<f32>(x_1008.x, x_1008.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1013 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1012.x, x_1013.y, x_1012.y, x_1013.w);
        let x_1016 : f32 = u_xlat7.x;
        u_xlat8.y = x_1016;
        let x_1019 : f32 = u_xlat9.y;
        u_xlat8.w = x_1019;
        let x_1021 : vec4<f32> = u_xlat8;
        let x_1022 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1021 + x_1022);
        let x_1024 : vec2<f32> = u_xlat58;
        let x_1027 : vec2<f32> = ((vec2<f32>(x_1024.y, x_1024.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1028 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1028.x, x_1027.x, x_1028.z, x_1027.y);
        let x_1030 : vec2<f32> = u_xlat58;
        let x_1033 : vec2<f32> = ((vec2<f32>(x_1030.y, x_1030.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1034 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1033.x, x_1034.y, x_1033.y, x_1034.w);
        let x_1037 : f32 = u_xlat7.y;
        u_xlat9.y = x_1037;
        let x_1039 : vec4<f32> = u_xlat9;
        let x_1040 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1039 + x_1040);
        let x_1042 : vec4<f32> = u_xlat8;
        let x_1043 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1042 / x_1043);
        let x_1045 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1045 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1051 : vec4<f32> = u_xlat9;
        let x_1052 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1051 / x_1052);
        let x_1054 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1054 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1056 : vec4<f32> = u_xlat8;
        let x_1059 : vec4<f32> = x_321.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1056.w, x_1056.x, x_1056.y, x_1056.z) * vec4<f32>(x_1059.x, x_1059.x, x_1059.x, x_1059.x));
        let x_1062 : vec4<f32> = u_xlat9;
        let x_1065 : vec4<f32> = x_321.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1062.x, x_1062.w, x_1062.y, x_1062.z) * vec4<f32>(x_1065.y, x_1065.y, x_1065.y, x_1065.y));
        let x_1068 : vec4<f32> = u_xlat8;
        let x_1069 : vec3<f32> = vec3<f32>(x_1068.y, x_1068.z, x_1068.w);
        let x_1070 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1069.x, x_1070.y, x_1069.y, x_1069.z);
        let x_1073 : f32 = u_xlat9.x;
        u_xlat11.y = x_1073;
        let x_1075 : vec4<f32> = u_xlat6;
        let x_1078 : vec4<f32> = x_321.x_MainLightShadowmapSize;
        let x_1081 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1075.x, x_1075.y, x_1075.x, x_1075.y) * vec4<f32>(x_1078.x, x_1078.y, x_1078.x, x_1078.y)) + vec4<f32>(x_1081.x, x_1081.y, x_1081.z, x_1081.y));
        let x_1084 : vec4<f32> = u_xlat6;
        let x_1087 : vec4<f32> = x_321.x_MainLightShadowmapSize;
        let x_1090 : vec4<f32> = u_xlat11;
        u_xlat58 = ((vec2<f32>(x_1084.x, x_1084.y) * vec2<f32>(x_1087.x, x_1087.y)) + vec2<f32>(x_1090.w, x_1090.y));
        let x_1094 : f32 = u_xlat11.y;
        u_xlat8.y = x_1094;
        let x_1097 : f32 = u_xlat9.z;
        u_xlat11.y = x_1097;
        let x_1099 : vec4<f32> = u_xlat6;
        let x_1102 : vec4<f32> = x_321.x_MainLightShadowmapSize;
        let x_1105 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1099.x, x_1099.y, x_1099.x, x_1099.y) * vec4<f32>(x_1102.x, x_1102.y, x_1102.x, x_1102.y)) + vec4<f32>(x_1105.x, x_1105.y, x_1105.z, x_1105.y));
        let x_1108 : vec4<f32> = u_xlat6;
        let x_1111 : vec4<f32> = x_321.x_MainLightShadowmapSize;
        let x_1114 : vec4<f32> = u_xlat11;
        let x_1116 : vec2<f32> = ((vec2<f32>(x_1108.x, x_1108.y) * vec2<f32>(x_1111.x, x_1111.y)) + vec2<f32>(x_1114.w, x_1114.y));
        let x_1117 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1116.x, x_1116.y, x_1117.z, x_1117.w);
        let x_1120 : f32 = u_xlat11.y;
        u_xlat8.z = x_1120;
        let x_1123 : vec4<f32> = u_xlat6;
        let x_1126 : vec4<f32> = x_321.x_MainLightShadowmapSize;
        let x_1129 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1123.x, x_1123.y, x_1123.x, x_1123.y) * vec4<f32>(x_1126.x, x_1126.y, x_1126.x, x_1126.y)) + vec4<f32>(x_1129.x, x_1129.y, x_1129.x, x_1129.z));
        let x_1133 : f32 = u_xlat9.w;
        u_xlat11.y = x_1133;
        let x_1136 : vec4<f32> = u_xlat6;
        let x_1139 : vec4<f32> = x_321.x_MainLightShadowmapSize;
        let x_1142 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1136.x, x_1136.y, x_1136.x, x_1136.y) * vec4<f32>(x_1139.x, x_1139.y, x_1139.x, x_1139.y)) + vec4<f32>(x_1142.x, x_1142.y, x_1142.z, x_1142.y));
        let x_1146 : vec4<f32> = u_xlat6;
        let x_1149 : vec4<f32> = x_321.x_MainLightShadowmapSize;
        let x_1152 : vec4<f32> = u_xlat11;
        let x_1154 : vec2<f32> = ((vec2<f32>(x_1146.x, x_1146.y) * vec2<f32>(x_1149.x, x_1149.y)) + vec2<f32>(x_1152.w, x_1152.y));
        let x_1155 : vec3<f32> = u_xlat34;
        u_xlat34 = vec3<f32>(x_1154.x, x_1154.y, x_1155.z);
        let x_1158 : f32 = u_xlat11.y;
        u_xlat8.w = x_1158;
        let x_1161 : vec4<f32> = u_xlat6;
        let x_1164 : vec4<f32> = x_321.x_MainLightShadowmapSize;
        let x_1167 : vec4<f32> = u_xlat8;
        u_xlat66 = ((vec2<f32>(x_1161.x, x_1161.y) * vec2<f32>(x_1164.x, x_1164.y)) + vec2<f32>(x_1167.x, x_1167.w));
        let x_1170 : vec4<f32> = u_xlat11;
        let x_1171 : vec3<f32> = vec3<f32>(x_1170.x, x_1170.z, x_1170.w);
        let x_1172 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1171.x, x_1172.y, x_1171.y, x_1171.z);
        let x_1174 : vec4<f32> = u_xlat6;
        let x_1177 : vec4<f32> = x_321.x_MainLightShadowmapSize;
        let x_1180 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1174.x, x_1174.y, x_1174.x, x_1174.y) * vec4<f32>(x_1177.x, x_1177.y, x_1177.x, x_1177.y)) + vec4<f32>(x_1180.x, x_1180.y, x_1180.z, x_1180.y));
        let x_1184 : vec4<f32> = u_xlat6;
        let x_1187 : vec4<f32> = x_321.x_MainLightShadowmapSize;
        let x_1190 : vec4<f32> = u_xlat9;
        u_xlat61 = ((vec2<f32>(x_1184.x, x_1184.y) * vec2<f32>(x_1187.x, x_1187.y)) + vec2<f32>(x_1190.w, x_1190.y));
        let x_1194 : f32 = u_xlat8.x;
        u_xlat9.x = x_1194;
        let x_1196 : vec4<f32> = u_xlat6;
        let x_1199 : vec4<f32> = x_321.x_MainLightShadowmapSize;
        let x_1202 : vec4<f32> = u_xlat9;
        let x_1204 : vec2<f32> = ((vec2<f32>(x_1196.x, x_1196.y) * vec2<f32>(x_1199.x, x_1199.y)) + vec2<f32>(x_1202.x, x_1202.y));
        let x_1205 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1204.x, x_1204.y, x_1205.z, x_1205.w);
        let x_1208 : vec4<f32> = u_xlat7;
        let x_1210 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1208.x, x_1208.x, x_1208.x, x_1208.x) * x_1210);
        let x_1213 : vec4<f32> = u_xlat7;
        let x_1215 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1213.y, x_1213.y, x_1213.y, x_1213.y) * x_1215);
        let x_1218 : vec4<f32> = u_xlat7;
        let x_1220 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1218.z, x_1218.z, x_1218.z, x_1218.z) * x_1220);
        let x_1222 : vec4<f32> = u_xlat7;
        let x_1224 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1222.w, x_1222.w, x_1222.w, x_1222.w) * x_1224);
        let x_1227 : vec4<f32> = u_xlat12;
        let x_1228 : vec2<f32> = vec2<f32>(x_1227.x, x_1227.y);
        let x_1230 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1228.x, x_1228.y, x_1230);
        let x_1237 : vec3<f32> = txVec13;
        let x_1239 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1237.xy, x_1237.z);
        u_xlat83 = x_1239;
        let x_1241 : vec4<f32> = u_xlat12;
        let x_1242 : vec2<f32> = vec2<f32>(x_1241.z, x_1241.w);
        let x_1244 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1242.x, x_1242.y, x_1244);
        let x_1251 : vec3<f32> = txVec14;
        let x_1253 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1251.xy, x_1251.z);
        u_xlat8.x = x_1253;
        let x_1256 : f32 = u_xlat8.x;
        let x_1258 : f32 = u_xlat17.y;
        u_xlat8.x = (x_1256 * x_1258);
        let x_1262 : f32 = u_xlat17.x;
        let x_1263 : f32 = u_xlat83;
        let x_1266 : f32 = u_xlat8.x;
        u_xlat83 = ((x_1262 * x_1263) + x_1266);
        let x_1269 : vec2<f32> = u_xlat58;
        let x_1271 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1269.x, x_1269.y, x_1271);
        let x_1278 : vec3<f32> = txVec15;
        let x_1280 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1278.xy, x_1278.z);
        u_xlat58.x = x_1280;
        let x_1283 : f32 = u_xlat17.z;
        let x_1285 : f32 = u_xlat58.x;
        let x_1287 : f32 = u_xlat83;
        u_xlat83 = ((x_1283 * x_1285) + x_1287);
        let x_1290 : vec4<f32> = u_xlat15;
        let x_1291 : vec2<f32> = vec2<f32>(x_1290.x, x_1290.y);
        let x_1293 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1291.x, x_1291.y, x_1293);
        let x_1300 : vec3<f32> = txVec16;
        let x_1302 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1300.xy, x_1300.z);
        u_xlat58.x = x_1302;
        let x_1305 : f32 = u_xlat17.w;
        let x_1307 : f32 = u_xlat58.x;
        let x_1309 : f32 = u_xlat83;
        u_xlat83 = ((x_1305 * x_1307) + x_1309);
        let x_1312 : vec4<f32> = u_xlat13;
        let x_1313 : vec2<f32> = vec2<f32>(x_1312.x, x_1312.y);
        let x_1315 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1313.x, x_1313.y, x_1315);
        let x_1322 : vec3<f32> = txVec17;
        let x_1324 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1322.xy, x_1322.z);
        u_xlat58.x = x_1324;
        let x_1327 : f32 = u_xlat18.x;
        let x_1329 : f32 = u_xlat58.x;
        let x_1331 : f32 = u_xlat83;
        u_xlat83 = ((x_1327 * x_1329) + x_1331);
        let x_1334 : vec4<f32> = u_xlat13;
        let x_1335 : vec2<f32> = vec2<f32>(x_1334.z, x_1334.w);
        let x_1337 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1335.x, x_1335.y, x_1337);
        let x_1344 : vec3<f32> = txVec18;
        let x_1346 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1344.xy, x_1344.z);
        u_xlat58.x = x_1346;
        let x_1349 : f32 = u_xlat18.y;
        let x_1351 : f32 = u_xlat58.x;
        let x_1353 : f32 = u_xlat83;
        u_xlat83 = ((x_1349 * x_1351) + x_1353);
        let x_1356 : vec4<f32> = u_xlat14;
        let x_1357 : vec2<f32> = vec2<f32>(x_1356.x, x_1356.y);
        let x_1359 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1357.x, x_1357.y, x_1359);
        let x_1366 : vec3<f32> = txVec19;
        let x_1368 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1366.xy, x_1366.z);
        u_xlat58.x = x_1368;
        let x_1371 : f32 = u_xlat18.z;
        let x_1373 : f32 = u_xlat58.x;
        let x_1375 : f32 = u_xlat83;
        u_xlat83 = ((x_1371 * x_1373) + x_1375);
        let x_1378 : vec4<f32> = u_xlat15;
        let x_1379 : vec2<f32> = vec2<f32>(x_1378.z, x_1378.w);
        let x_1381 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1379.x, x_1379.y, x_1381);
        let x_1388 : vec3<f32> = txVec20;
        let x_1390 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1388.xy, x_1388.z);
        u_xlat58.x = x_1390;
        let x_1393 : f32 = u_xlat18.w;
        let x_1395 : f32 = u_xlat58.x;
        let x_1397 : f32 = u_xlat83;
        u_xlat83 = ((x_1393 * x_1395) + x_1397);
        let x_1400 : vec4<f32> = u_xlat16;
        let x_1401 : vec2<f32> = vec2<f32>(x_1400.x, x_1400.y);
        let x_1403 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1401.x, x_1401.y, x_1403);
        let x_1410 : vec3<f32> = txVec21;
        let x_1412 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1410.xy, x_1410.z);
        u_xlat58.x = x_1412;
        let x_1415 : f32 = u_xlat19.x;
        let x_1417 : f32 = u_xlat58.x;
        let x_1419 : f32 = u_xlat83;
        u_xlat83 = ((x_1415 * x_1417) + x_1419);
        let x_1422 : vec4<f32> = u_xlat16;
        let x_1423 : vec2<f32> = vec2<f32>(x_1422.z, x_1422.w);
        let x_1425 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1423.x, x_1423.y, x_1425);
        let x_1432 : vec3<f32> = txVec22;
        let x_1434 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1432.xy, x_1432.z);
        u_xlat58.x = x_1434;
        let x_1437 : f32 = u_xlat19.y;
        let x_1439 : f32 = u_xlat58.x;
        let x_1441 : f32 = u_xlat83;
        u_xlat83 = ((x_1437 * x_1439) + x_1441);
        let x_1444 : vec3<f32> = u_xlat34;
        let x_1445 : vec2<f32> = vec2<f32>(x_1444.x, x_1444.y);
        let x_1447 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1445.x, x_1445.y, x_1447);
        let x_1454 : vec3<f32> = txVec23;
        let x_1456 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1454.xy, x_1454.z);
        u_xlat58.x = x_1456;
        let x_1459 : f32 = u_xlat19.z;
        let x_1461 : f32 = u_xlat58.x;
        let x_1463 : f32 = u_xlat83;
        u_xlat83 = ((x_1459 * x_1461) + x_1463);
        let x_1466 : vec2<f32> = u_xlat66;
        let x_1468 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1466.x, x_1466.y, x_1468);
        let x_1475 : vec3<f32> = txVec24;
        let x_1477 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1475.xy, x_1475.z);
        u_xlat58.x = x_1477;
        let x_1480 : f32 = u_xlat19.w;
        let x_1482 : f32 = u_xlat58.x;
        let x_1484 : f32 = u_xlat83;
        u_xlat83 = ((x_1480 * x_1482) + x_1484);
        let x_1487 : vec4<f32> = u_xlat11;
        let x_1488 : vec2<f32> = vec2<f32>(x_1487.x, x_1487.y);
        let x_1490 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1488.x, x_1488.y, x_1490);
        let x_1497 : vec3<f32> = txVec25;
        let x_1499 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1497.xy, x_1497.z);
        u_xlat58.x = x_1499;
        let x_1502 : f32 = u_xlat7.x;
        let x_1504 : f32 = u_xlat58.x;
        let x_1506 : f32 = u_xlat83;
        u_xlat83 = ((x_1502 * x_1504) + x_1506);
        let x_1509 : vec4<f32> = u_xlat11;
        let x_1510 : vec2<f32> = vec2<f32>(x_1509.z, x_1509.w);
        let x_1512 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1510.x, x_1510.y, x_1512);
        let x_1519 : vec3<f32> = txVec26;
        let x_1521 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1519.xy, x_1519.z);
        u_xlat58.x = x_1521;
        let x_1524 : f32 = u_xlat7.y;
        let x_1526 : f32 = u_xlat58.x;
        let x_1528 : f32 = u_xlat83;
        u_xlat83 = ((x_1524 * x_1526) + x_1528);
        let x_1531 : vec2<f32> = u_xlat61;
        let x_1533 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1531.x, x_1531.y, x_1533);
        let x_1540 : vec3<f32> = txVec27;
        let x_1542 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1540.xy, x_1540.z);
        u_xlat58.x = x_1542;
        let x_1545 : f32 = u_xlat7.z;
        let x_1547 : f32 = u_xlat58.x;
        let x_1549 : f32 = u_xlat83;
        u_xlat83 = ((x_1545 * x_1547) + x_1549);
        let x_1552 : vec4<f32> = u_xlat6;
        let x_1553 : vec2<f32> = vec2<f32>(x_1552.x, x_1552.y);
        let x_1555 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1553.x, x_1553.y, x_1555);
        let x_1562 : vec3<f32> = txVec28;
        let x_1564 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1562.xy, x_1562.z);
        u_xlat6.x = x_1564;
        let x_1567 : f32 = u_xlat7.w;
        let x_1569 : f32 = u_xlat6.x;
        let x_1571 : f32 = u_xlat83;
        u_xlat57 = ((x_1567 * x_1569) + x_1571);
      }
    }
  } else {
    let x_1575 : vec4<f32> = vs_TEXCOORD6;
    let x_1576 : vec2<f32> = vec2<f32>(x_1575.x, x_1575.y);
    let x_1578 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1576.x, x_1576.y, x_1578);
    let x_1585 : vec3<f32> = txVec29;
    let x_1587 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1585.xy, x_1585.z);
    u_xlat57 = x_1587;
  }
  let x_1589 : f32 = x_321.x_MainLightShadowParams.x;
  u_xlat83 = (-(x_1589) + 1.0f);
  let x_1592 : f32 = u_xlat57;
  let x_1594 : f32 = x_321.x_MainLightShadowParams.x;
  let x_1596 : f32 = u_xlat83;
  u_xlat57 = ((x_1592 * x_1594) + x_1596);
  let x_1599 : f32 = vs_TEXCOORD6.z;
  u_xlatb83 = (0.0f >= x_1599);
  let x_1603 : f32 = vs_TEXCOORD6.z;
  u_xlatb6 = (x_1603 >= 1.0f);
  let x_1605 : bool = u_xlatb83;
  let x_1606 : bool = u_xlatb6;
  u_xlatb83 = (x_1605 | x_1606);
  let x_1608 : bool = u_xlatb83;
  let x_1609 : f32 = u_xlat57;
  u_xlat57 = select(x_1609, 1.0f, x_1608);
  let x_1611 : vec3<f32> = vs_TEXCOORD1;
  let x_1613 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_1615 : vec3<f32> = (x_1611 + -(x_1613));
  let x_1616 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1615.x, x_1615.y, x_1615.z, x_1616.w);
  let x_1618 : vec4<f32> = u_xlat6;
  let x_1620 : vec4<f32> = u_xlat6;
  u_xlat83 = dot(vec3<f32>(x_1618.x, x_1618.y, x_1618.z), vec3<f32>(x_1620.x, x_1620.y, x_1620.z));
  let x_1623 : f32 = u_xlat83;
  let x_1625 : f32 = x_321.x_MainLightShadowParams.z;
  let x_1628 : f32 = x_321.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_1623 * x_1625) + x_1628);
  let x_1632 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_1632, 0.0f, 1.0f);
  let x_1635 : f32 = u_xlat57;
  u_xlat32 = (-(x_1635) + 1.0f);
  let x_1639 : f32 = u_xlat6.x;
  let x_1640 : f32 = u_xlat32;
  let x_1642 : f32 = u_xlat57;
  u_xlat57 = ((x_1639 * x_1640) + x_1642);
  let x_1651 : f32 = x_1649.x_MainLightCookieTextureFormat;
  u_xlatb6 = !((x_1651 == -1.0f));
  let x_1654 : bool = u_xlatb6;
  if (x_1654) {
    let x_1657 : vec3<f32> = vs_TEXCOORD1;
    let x_1660 : vec4<f32> = x_1649.x_MainLightWorldToLight[1i];
    let x_1662 : vec2<f32> = (vec2<f32>(x_1657.y, x_1657.y) * vec2<f32>(x_1660.x, x_1660.y));
    let x_1663 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1662.x, x_1662.y, x_1663.z, x_1663.w);
    let x_1666 : vec4<f32> = x_1649.x_MainLightWorldToLight[0i];
    let x_1668 : vec3<f32> = vs_TEXCOORD1;
    let x_1671 : vec4<f32> = u_xlat6;
    let x_1673 : vec2<f32> = ((vec2<f32>(x_1666.x, x_1666.y) * vec2<f32>(x_1668.x, x_1668.x)) + vec2<f32>(x_1671.x, x_1671.y));
    let x_1674 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1673.x, x_1673.y, x_1674.z, x_1674.w);
    let x_1677 : vec4<f32> = x_1649.x_MainLightWorldToLight[2i];
    let x_1679 : vec3<f32> = vs_TEXCOORD1;
    let x_1682 : vec4<f32> = u_xlat6;
    let x_1684 : vec2<f32> = ((vec2<f32>(x_1677.x, x_1677.y) * vec2<f32>(x_1679.z, x_1679.z)) + vec2<f32>(x_1682.x, x_1682.y));
    let x_1685 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1684.x, x_1684.y, x_1685.z, x_1685.w);
    let x_1687 : vec4<f32> = u_xlat6;
    let x_1690 : vec4<f32> = x_1649.x_MainLightWorldToLight[3i];
    let x_1692 : vec2<f32> = (vec2<f32>(x_1687.x, x_1687.y) + vec2<f32>(x_1690.x, x_1690.y));
    let x_1693 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1692.x, x_1692.y, x_1693.z, x_1693.w);
    let x_1695 : vec4<f32> = u_xlat6;
    let x_1698 : vec2<f32> = ((vec2<f32>(x_1695.x, x_1695.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1699 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1698.x, x_1698.y, x_1699.z, x_1699.w);
    let x_1706 : vec4<f32> = u_xlat6;
    let x_1709 : f32 = x_28.x_GlobalMipBias.x;
    let x_1710 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1706.x, x_1706.y), x_1709);
    u_xlat6 = x_1710;
    let x_1713 : f32 = x_1649.x_MainLightCookieTextureFormat;
    let x_1715 : f32 = x_1649.x_MainLightCookieTextureFormat;
    let x_1717 : f32 = x_1649.x_MainLightCookieTextureFormat;
    let x_1719 : f32 = x_1649.x_MainLightCookieTextureFormat;
    let x_1720 : vec4<f32> = vec4<f32>(x_1713, x_1715, x_1717, x_1719);
    let x_1728 : vec4<bool> = (vec4<f32>(x_1720.x, x_1720.y, x_1720.z, x_1720.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_1728.x, x_1728.y);
    let x_1732 : bool = u_xlatb7.y;
    if (x_1732) {
      let x_1738 : f32 = u_xlat6.w;
      x_1734 = x_1738;
    } else {
      let x_1741 : f32 = u_xlat6.x;
      x_1734 = x_1741;
    }
    let x_1742 : f32 = x_1734;
    u_xlat84 = x_1742;
    let x_1744 : bool = u_xlatb7.x;
    if (x_1744) {
      let x_1748 : vec4<f32> = u_xlat6;
      x_1745 = vec3<f32>(x_1748.x, x_1748.y, x_1748.z);
    } else {
      let x_1751 : f32 = u_xlat84;
      x_1745 = vec3<f32>(x_1751, x_1751, x_1751);
    }
    let x_1753 : vec3<f32> = x_1745;
    let x_1754 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1753.x, x_1753.y, x_1753.z, x_1754.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_1760 : vec4<f32> = u_xlat6;
  let x_1763 : vec4<f32> = x_28.x_MainLightColor;
  let x_1765 : vec3<f32> = (vec3<f32>(x_1760.x, x_1760.y, x_1760.z) * vec3<f32>(x_1763.x, x_1763.y, x_1763.z));
  let x_1766 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1765.x, x_1765.y, x_1765.z, x_1766.w);
  let x_1768 : vec3<f32> = u_xlat2;
  let x_1770 : vec4<f32> = u_xlat3;
  u_xlat84 = dot(-(x_1768), vec3<f32>(x_1770.x, x_1770.y, x_1770.z));
  let x_1773 : f32 = u_xlat84;
  let x_1774 : f32 = u_xlat84;
  u_xlat84 = (x_1773 + x_1774);
  let x_1776 : vec4<f32> = u_xlat3;
  let x_1778 : f32 = u_xlat84;
  let x_1782 : vec3<f32> = u_xlat2;
  let x_1784 : vec3<f32> = ((vec3<f32>(x_1776.x, x_1776.y, x_1776.z) * -(vec3<f32>(x_1778, x_1778, x_1778))) + -(x_1782));
  let x_1785 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1784.x, x_1784.y, x_1784.z, x_1785.w);
  let x_1787 : vec4<f32> = u_xlat3;
  let x_1789 : vec3<f32> = u_xlat2;
  u_xlat84 = dot(vec3<f32>(x_1787.x, x_1787.y, x_1787.z), x_1789);
  let x_1791 : f32 = u_xlat84;
  u_xlat84 = clamp(x_1791, 0.0f, 1.0f);
  let x_1793 : f32 = u_xlat84;
  u_xlat84 = (-(x_1793) + 1.0f);
  let x_1796 : f32 = u_xlat84;
  let x_1797 : f32 = u_xlat84;
  u_xlat84 = (x_1796 * x_1797);
  let x_1799 : f32 = u_xlat84;
  let x_1800 : f32 = u_xlat84;
  u_xlat84 = (x_1799 * x_1800);
  let x_1803 : f32 = u_xlat80;
  u_xlat85 = ((-(x_1803) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1809 : f32 = u_xlat80;
  let x_1810 : f32 = u_xlat85;
  u_xlat80 = (x_1809 * x_1810);
  let x_1812 : f32 = u_xlat80;
  u_xlat80 = (x_1812 * 6.0f);
  let x_1823 : vec4<f32> = u_xlat7;
  let x_1825 : f32 = u_xlat80;
  let x_1826 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1823.x, x_1823.y, x_1823.z), x_1825);
  u_xlat7 = x_1826;
  let x_1828 : f32 = u_xlat7.w;
  u_xlat80 = (x_1828 + -1.0f);
  let x_1831 : f32 = x_162.unity_SpecCube0_HDR.w;
  let x_1832 : f32 = u_xlat80;
  u_xlat80 = ((x_1831 * x_1832) + 1.0f);
  let x_1835 : f32 = u_xlat80;
  u_xlat80 = max(x_1835, 0.0f);
  let x_1837 : f32 = u_xlat80;
  u_xlat80 = log2(x_1837);
  let x_1839 : f32 = u_xlat80;
  let x_1841 : f32 = x_162.unity_SpecCube0_HDR.y;
  u_xlat80 = (x_1839 * x_1841);
  let x_1843 : f32 = u_xlat80;
  u_xlat80 = exp2(x_1843);
  let x_1845 : f32 = u_xlat80;
  let x_1847 : f32 = x_162.unity_SpecCube0_HDR.x;
  u_xlat80 = (x_1845 * x_1847);
  let x_1849 : vec4<f32> = u_xlat7;
  let x_1851 : f32 = u_xlat80;
  let x_1853 : vec3<f32> = (vec3<f32>(x_1849.x, x_1849.y, x_1849.z) * vec3<f32>(x_1851, x_1851, x_1851));
  let x_1854 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1853.x, x_1853.y, x_1853.z, x_1854.w);
  let x_1856 : f32 = u_xlat82;
  let x_1858 : f32 = u_xlat82;
  let x_1862 : vec2<f32> = ((vec2<f32>(x_1856, x_1856) * vec2<f32>(x_1858, x_1858)) + vec2<f32>(-1.0f, 1.0f));
  let x_1863 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1862.x, x_1862.y, x_1863.z, x_1863.w);
  let x_1866 : f32 = u_xlat8.y;
  u_xlat80 = (1.0f / x_1866);
  let x_1868 : vec4<f32> = u_xlat0;
  let x_1871 : f32 = u_xlat81;
  u_xlat34 = (-(vec3<f32>(x_1868.x, x_1868.y, x_1868.z)) + vec3<f32>(x_1871, x_1871, x_1871));
  let x_1874 : f32 = u_xlat84;
  let x_1876 : vec3<f32> = u_xlat34;
  let x_1878 : vec4<f32> = u_xlat0;
  u_xlat34 = ((vec3<f32>(x_1874, x_1874, x_1874) * x_1876) + vec3<f32>(x_1878.x, x_1878.y, x_1878.z));
  let x_1881 : f32 = u_xlat80;
  let x_1883 : vec3<f32> = u_xlat34;
  u_xlat34 = (vec3<f32>(x_1881, x_1881, x_1881) * x_1883);
  let x_1885 : vec4<f32> = u_xlat7;
  let x_1887 : vec3<f32> = u_xlat34;
  let x_1888 : vec3<f32> = (vec3<f32>(x_1885.x, x_1885.y, x_1885.z) * x_1887);
  let x_1889 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1888.x, x_1888.y, x_1888.z, x_1889.w);
  let x_1891 : vec3<f32> = u_xlat4;
  let x_1892 : vec3<f32> = u_xlat27;
  let x_1894 : vec4<f32> = u_xlat7;
  u_xlat4 = ((x_1891 * x_1892) + vec3<f32>(x_1894.x, x_1894.y, x_1894.z));
  let x_1897 : f32 = u_xlat57;
  let x_1899 : f32 = x_162.unity_LightData.z;
  u_xlat80 = (x_1897 * x_1899);
  let x_1901 : vec4<f32> = u_xlat3;
  let x_1904 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat81 = dot(vec3<f32>(x_1901.x, x_1901.y, x_1901.z), vec3<f32>(x_1904.x, x_1904.y, x_1904.z));
  let x_1907 : f32 = u_xlat81;
  u_xlat81 = clamp(x_1907, 0.0f, 1.0f);
  let x_1909 : f32 = u_xlat80;
  let x_1910 : f32 = u_xlat81;
  u_xlat80 = (x_1909 * x_1910);
  let x_1912 : f32 = u_xlat80;
  let x_1914 : vec4<f32> = u_xlat6;
  let x_1916 : vec3<f32> = (vec3<f32>(x_1912, x_1912, x_1912) * vec3<f32>(x_1914.x, x_1914.y, x_1914.z));
  let x_1917 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1916.x, x_1916.y, x_1916.z, x_1917.w);
  let x_1919 : vec3<f32> = u_xlat2;
  let x_1921 : vec4<f32> = x_28.x_MainLightPosition;
  let x_1923 : vec3<f32> = (x_1919 + vec3<f32>(x_1921.x, x_1921.y, x_1921.z));
  let x_1924 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1923.x, x_1923.y, x_1923.z, x_1924.w);
  let x_1926 : vec4<f32> = u_xlat7;
  let x_1928 : vec4<f32> = u_xlat7;
  u_xlat80 = dot(vec3<f32>(x_1926.x, x_1926.y, x_1926.z), vec3<f32>(x_1928.x, x_1928.y, x_1928.z));
  let x_1931 : f32 = u_xlat80;
  u_xlat80 = max(x_1931, 1.17549435e-38f);
  let x_1934 : f32 = u_xlat80;
  u_xlat80 = inverseSqrt(x_1934);
  let x_1936 : f32 = u_xlat80;
  let x_1938 : vec4<f32> = u_xlat7;
  let x_1940 : vec3<f32> = (vec3<f32>(x_1936, x_1936, x_1936) * vec3<f32>(x_1938.x, x_1938.y, x_1938.z));
  let x_1941 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1940.x, x_1940.y, x_1940.z, x_1941.w);
  let x_1943 : vec4<f32> = u_xlat3;
  let x_1945 : vec4<f32> = u_xlat7;
  u_xlat80 = dot(vec3<f32>(x_1943.x, x_1943.y, x_1943.z), vec3<f32>(x_1945.x, x_1945.y, x_1945.z));
  let x_1948 : f32 = u_xlat80;
  u_xlat80 = clamp(x_1948, 0.0f, 1.0f);
  let x_1951 : vec4<f32> = x_28.x_MainLightPosition;
  let x_1953 : vec4<f32> = u_xlat7;
  u_xlat81 = dot(vec3<f32>(x_1951.x, x_1951.y, x_1951.z), vec3<f32>(x_1953.x, x_1953.y, x_1953.z));
  let x_1956 : f32 = u_xlat81;
  u_xlat81 = clamp(x_1956, 0.0f, 1.0f);
  let x_1958 : f32 = u_xlat80;
  let x_1959 : f32 = u_xlat80;
  u_xlat80 = (x_1958 * x_1959);
  let x_1961 : f32 = u_xlat80;
  let x_1963 : f32 = u_xlat8.x;
  u_xlat80 = ((x_1961 * x_1963) + 1.00001001358032226562f);
  let x_1967 : f32 = u_xlat81;
  let x_1968 : f32 = u_xlat81;
  u_xlat81 = (x_1967 * x_1968);
  let x_1970 : f32 = u_xlat80;
  let x_1971 : f32 = u_xlat80;
  u_xlat80 = (x_1970 * x_1971);
  let x_1973 : f32 = u_xlat81;
  u_xlat81 = max(x_1973, 0.10000000149011611938f);
  let x_1976 : f32 = u_xlat80;
  let x_1977 : f32 = u_xlat81;
  u_xlat80 = (x_1976 * x_1977);
  let x_1979 : f32 = u_xlat31;
  let x_1980 : f32 = u_xlat80;
  u_xlat80 = (x_1979 * x_1980);
  let x_1983 : f32 = u_xlat5.x;
  let x_1984 : f32 = u_xlat80;
  u_xlat80 = (x_1983 / x_1984);
  let x_1986 : vec4<f32> = u_xlat0;
  let x_1988 : f32 = u_xlat80;
  let x_1991 : vec3<f32> = u_xlat27;
  let x_1992 : vec3<f32> = ((vec3<f32>(x_1986.x, x_1986.y, x_1986.z) * vec3<f32>(x_1988, x_1988, x_1988)) + x_1991);
  let x_1993 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1992.x, x_1992.y, x_1992.z, x_1993.w);
  let x_1996 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_1998 : f32 = x_162.unity_LightData.y;
  u_xlat80 = min(x_1996, x_1998);
  let x_2002 : f32 = u_xlat80;
  u_xlatu80 = bitcast<u32>(i32(x_2002));
  let x_2005 : f32 = u_xlat83;
  let x_2008 : f32 = x_321.x_AdditionalShadowFadeParams.x;
  let x_2011 : f32 = x_321.x_AdditionalShadowFadeParams.y;
  u_xlat81 = ((x_2005 * x_2008) + x_2011);
  let x_2013 : f32 = u_xlat81;
  u_xlat81 = clamp(x_2013, 0.0f, 1.0f);
  let x_2016 : f32 = x_1649.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2018 : f32 = x_1649.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2020 : f32 = x_1649.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2022 : f32 = x_1649.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2023 : vec4<f32> = vec4<f32>(x_2016, x_2018, x_2020, x_2022);
  let x_2030 : vec4<bool> = (vec4<f32>(x_2023.x, x_2023.y, x_2023.z, x_2023.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
  u_xlatb57 = vec2<bool>(x_2030.x, x_2030.y);
  u_xlat34.x = 0.0f;
  u_xlat34.y = 0.0f;
  u_xlat34.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2042 : u32 = u_xlatu_loop_1;
    let x_2043 : u32 = u_xlatu80;
    if ((x_2042 < x_2043)) {
    } else {
      break;
    }
    let x_2046 : u32 = u_xlatu_loop_1;
    u_xlatu84 = (x_2046 >> 2u);
    let x_2050 : u32 = u_xlatu_loop_1;
    u_xlati85 = bitcast<i32>((x_2050 & 3u));
    let x_2053 : u32 = u_xlatu84;
    let x_2056 : vec4<f32> = x_162.unity_LightIndices[bitcast<i32>(x_2053)];
    let x_2066 : i32 = u_xlati85;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2071 : vec4<u32> = indexable[x_2066];
    u_xlat84 = dot(x_2056, bitcast<vec4<f32>>(x_2071));
    let x_2075 : f32 = u_xlat84;
    u_xlati84 = i32(x_2075);
    let x_2077 : vec3<f32> = vs_TEXCOORD1;
    let x_2088 : i32 = u_xlati84;
    let x_2090 : vec4<f32> = x_2087.x_AdditionalLightsPosition[x_2088];
    let x_2093 : i32 = u_xlati84;
    let x_2095 : vec4<f32> = x_2087.x_AdditionalLightsPosition[x_2093];
    let x_2097 : vec3<f32> = ((-(x_2077) * vec3<f32>(x_2090.w, x_2090.w, x_2090.w)) + vec3<f32>(x_2095.x, x_2095.y, x_2095.z));
    let x_2098 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2097.x, x_2097.y, x_2097.z, x_2098.w);
    let x_2100 : vec4<f32> = u_xlat9;
    let x_2102 : vec4<f32> = u_xlat9;
    u_xlat85 = dot(vec3<f32>(x_2100.x, x_2100.y, x_2100.z), vec3<f32>(x_2102.x, x_2102.y, x_2102.z));
    let x_2105 : f32 = u_xlat85;
    u_xlat85 = max(x_2105, 0.00006103515625f);
    let x_2109 : f32 = u_xlat85;
    u_xlat87 = inverseSqrt(x_2109);
    let x_2111 : f32 = u_xlat87;
    let x_2113 : vec4<f32> = u_xlat9;
    let x_2115 : vec3<f32> = (vec3<f32>(x_2111, x_2111, x_2111) * vec3<f32>(x_2113.x, x_2113.y, x_2113.z));
    let x_2116 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2115.x, x_2115.y, x_2115.z, x_2116.w);
    let x_2119 : f32 = u_xlat85;
    u_xlat88 = (1.0f / x_2119);
    let x_2121 : f32 = u_xlat85;
    let x_2122 : i32 = u_xlati84;
    let x_2124 : f32 = x_2087.x_AdditionalLightsAttenuation[x_2122].x;
    u_xlat85 = (x_2121 * x_2124);
    let x_2126 : f32 = u_xlat85;
    let x_2128 : f32 = u_xlat85;
    u_xlat85 = ((-(x_2126) * x_2128) + 1.0f);
    let x_2131 : f32 = u_xlat85;
    u_xlat85 = max(x_2131, 0.0f);
    let x_2133 : f32 = u_xlat85;
    let x_2134 : f32 = u_xlat85;
    u_xlat85 = (x_2133 * x_2134);
    let x_2136 : f32 = u_xlat85;
    let x_2137 : f32 = u_xlat88;
    u_xlat85 = (x_2136 * x_2137);
    let x_2139 : i32 = u_xlati84;
    let x_2141 : vec4<f32> = x_2087.x_AdditionalLightsSpotDir[x_2139];
    let x_2143 : vec4<f32> = u_xlat10;
    u_xlat88 = dot(vec3<f32>(x_2141.x, x_2141.y, x_2141.z), vec3<f32>(x_2143.x, x_2143.y, x_2143.z));
    let x_2146 : f32 = u_xlat88;
    let x_2147 : i32 = u_xlati84;
    let x_2149 : f32 = x_2087.x_AdditionalLightsAttenuation[x_2147].z;
    let x_2151 : i32 = u_xlati84;
    let x_2153 : f32 = x_2087.x_AdditionalLightsAttenuation[x_2151].w;
    u_xlat88 = ((x_2146 * x_2149) + x_2153);
    let x_2155 : f32 = u_xlat88;
    u_xlat88 = clamp(x_2155, 0.0f, 1.0f);
    let x_2157 : f32 = u_xlat88;
    let x_2158 : f32 = u_xlat88;
    u_xlat88 = (x_2157 * x_2158);
    let x_2160 : f32 = u_xlat85;
    let x_2161 : f32 = u_xlat88;
    u_xlat85 = (x_2160 * x_2161);
    let x_2165 : i32 = u_xlati84;
    let x_2167 : f32 = x_321.x_AdditionalShadowParams[x_2165].w;
    u_xlati88 = i32(x_2167);
    let x_2172 : i32 = u_xlati88;
    u_xlatb11.x = (x_2172 >= 0i);
    let x_2176 : bool = u_xlatb11.x;
    if (x_2176) {
      let x_2180 : i32 = u_xlati84;
      let x_2182 : f32 = x_321.x_AdditionalShadowParams[x_2180].z;
      u_xlatb11.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2182, x_2182, x_2182, x_2182))));
      let x_2188 : bool = u_xlatb11.x;
      if (x_2188) {
        let x_2191 : vec4<f32> = u_xlat10;
        let x_2194 : vec4<f32> = u_xlat10;
        let x_2197 : vec4<bool> = (abs(vec4<f32>(x_2191.z, x_2191.z, x_2191.y, x_2191.z)) >= abs(vec4<f32>(x_2194.x, x_2194.y, x_2194.x, x_2194.x)));
        u_xlatb11 = vec3<bool>(x_2197.x, x_2197.y, x_2197.z);
        let x_2200 : bool = u_xlatb11.y;
        let x_2202 : bool = u_xlatb11.x;
        u_xlatb11.x = (x_2200 & x_2202);
        let x_2206 : vec4<f32> = u_xlat10;
        let x_2209 : vec4<bool> = (-(vec4<f32>(x_2206.z, x_2206.y, x_2206.x, x_2206.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb12 = vec3<bool>(x_2209.x, x_2209.y, x_2209.z);
        let x_2213 : bool = u_xlatb12.x;
        u_xlat37.x = select(4.0f, 5.0f, x_2213);
        let x_2218 : bool = u_xlatb12.y;
        u_xlat37.z = select(2.0f, 3.0f, x_2218);
        let x_2223 : bool = u_xlatb12.z;
        u_xlat12.x = select(0.0f, 1.0f, x_2223);
        let x_2228 : bool = u_xlatb11.z;
        if (x_2228) {
          let x_2233 : f32 = u_xlat37.z;
          x_2229 = x_2233;
        } else {
          let x_2236 : f32 = u_xlat12.x;
          x_2229 = x_2236;
        }
        let x_2237 : f32 = x_2229;
        u_xlat63 = x_2237;
        let x_2239 : bool = u_xlatb11.x;
        if (x_2239) {
          let x_2244 : f32 = u_xlat37.x;
          x_2240 = x_2244;
        } else {
          let x_2246 : f32 = u_xlat63;
          x_2240 = x_2246;
        }
        let x_2247 : f32 = x_2240;
        u_xlat11.x = x_2247;
        let x_2249 : i32 = u_xlati84;
        let x_2251 : f32 = x_321.x_AdditionalShadowParams[x_2249].w;
        u_xlat37.x = trunc(x_2251);
        let x_2255 : f32 = u_xlat11.x;
        let x_2257 : f32 = u_xlat37.x;
        u_xlat11.x = (x_2255 + x_2257);
        let x_2261 : f32 = u_xlat11.x;
        u_xlati88 = i32(x_2261);
      }
      let x_2263 : i32 = u_xlati88;
      u_xlati88 = (x_2263 << bitcast<u32>(2i));
      let x_2265 : vec3<f32> = vs_TEXCOORD1;
      let x_2268 : i32 = u_xlati88;
      let x_2271 : i32 = u_xlati88;
      let x_2275 : vec4<f32> = x_321.x_AdditionalLightsWorldToShadow[((x_2268 + 1i) / 4i)][((x_2271 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2265.y, x_2265.y, x_2265.y, x_2265.y) * x_2275);
      let x_2277 : i32 = u_xlati88;
      let x_2279 : i32 = u_xlati88;
      let x_2282 : vec4<f32> = x_321.x_AdditionalLightsWorldToShadow[(x_2277 / 4i)][(x_2279 % 4i)];
      let x_2283 : vec3<f32> = vs_TEXCOORD1;
      let x_2286 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2282 * vec4<f32>(x_2283.x, x_2283.x, x_2283.x, x_2283.x)) + x_2286);
      let x_2288 : i32 = u_xlati88;
      let x_2291 : i32 = u_xlati88;
      let x_2295 : vec4<f32> = x_321.x_AdditionalLightsWorldToShadow[((x_2288 + 2i) / 4i)][((x_2291 + 2i) % 4i)];
      let x_2296 : vec3<f32> = vs_TEXCOORD1;
      let x_2299 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2295 * vec4<f32>(x_2296.z, x_2296.z, x_2296.z, x_2296.z)) + x_2299);
      let x_2301 : vec4<f32> = u_xlat11;
      let x_2302 : i32 = u_xlati88;
      let x_2305 : i32 = u_xlati88;
      let x_2309 : vec4<f32> = x_321.x_AdditionalLightsWorldToShadow[((x_2302 + 3i) / 4i)][((x_2305 + 3i) % 4i)];
      u_xlat11 = (x_2301 + x_2309);
      let x_2311 : vec4<f32> = u_xlat11;
      let x_2313 : vec4<f32> = u_xlat11;
      let x_2315 : vec3<f32> = (vec3<f32>(x_2311.x, x_2311.y, x_2311.z) / vec3<f32>(x_2313.w, x_2313.w, x_2313.w));
      let x_2316 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2315.x, x_2315.y, x_2315.z, x_2316.w);
      let x_2319 : i32 = u_xlati84;
      let x_2321 : f32 = x_321.x_AdditionalShadowParams[x_2319].y;
      u_xlatb88 = (0.0f < x_2321);
      let x_2323 : bool = u_xlatb88;
      if (x_2323) {
        let x_2326 : i32 = u_xlati84;
        let x_2328 : f32 = x_321.x_AdditionalShadowParams[x_2326].y;
        u_xlatb88 = (1.0f == x_2328);
        let x_2330 : bool = u_xlatb88;
        if (x_2330) {
          let x_2333 : vec4<f32> = u_xlat11;
          let x_2337 : vec4<f32> = x_321.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2333.x, x_2333.y, x_2333.x, x_2333.y) + x_2337);
          let x_2340 : vec4<f32> = u_xlat12;
          let x_2341 : vec2<f32> = vec2<f32>(x_2340.x, x_2340.y);
          let x_2343 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2341.x, x_2341.y, x_2343);
          let x_2351 : vec3<f32> = txVec30;
          let x_2353 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2351.xy, x_2351.z);
          u_xlat13.x = x_2353;
          let x_2356 : vec4<f32> = u_xlat12;
          let x_2357 : vec2<f32> = vec2<f32>(x_2356.z, x_2356.w);
          let x_2359 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2357.x, x_2357.y, x_2359);
          let x_2366 : vec3<f32> = txVec31;
          let x_2368 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2366.xy, x_2366.z);
          u_xlat13.y = x_2368;
          let x_2370 : vec4<f32> = u_xlat11;
          let x_2374 : vec4<f32> = x_321.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2370.x, x_2370.y, x_2370.x, x_2370.y) + x_2374);
          let x_2377 : vec4<f32> = u_xlat12;
          let x_2378 : vec2<f32> = vec2<f32>(x_2377.x, x_2377.y);
          let x_2380 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2378.x, x_2378.y, x_2380);
          let x_2387 : vec3<f32> = txVec32;
          let x_2389 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2387.xy, x_2387.z);
          u_xlat13.z = x_2389;
          let x_2392 : vec4<f32> = u_xlat12;
          let x_2393 : vec2<f32> = vec2<f32>(x_2392.z, x_2392.w);
          let x_2395 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2393.x, x_2393.y, x_2395);
          let x_2402 : vec3<f32> = txVec33;
          let x_2404 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2402.xy, x_2402.z);
          u_xlat13.w = x_2404;
          let x_2406 : vec4<f32> = u_xlat13;
          u_xlat88 = dot(x_2406, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2410 : i32 = u_xlati84;
          let x_2412 : f32 = x_321.x_AdditionalShadowParams[x_2410].y;
          u_xlatb89 = (2.0f == x_2412);
          let x_2414 : bool = u_xlatb89;
          if (x_2414) {
            let x_2417 : vec4<f32> = u_xlat11;
            let x_2421 : vec4<f32> = x_321.x_AdditionalShadowmapSize;
            let x_2424 : vec2<f32> = ((vec2<f32>(x_2417.x, x_2417.y) * vec2<f32>(x_2421.z, x_2421.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2425 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2424.x, x_2424.y, x_2425.z, x_2425.w);
            let x_2427 : vec4<f32> = u_xlat12;
            let x_2429 : vec2<f32> = floor(vec2<f32>(x_2427.x, x_2427.y));
            let x_2430 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2429.x, x_2429.y, x_2430.z, x_2430.w);
            let x_2433 : vec4<f32> = u_xlat11;
            let x_2436 : vec4<f32> = x_321.x_AdditionalShadowmapSize;
            let x_2439 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2433.x, x_2433.y) * vec2<f32>(x_2436.z, x_2436.w)) + -(vec2<f32>(x_2439.x, x_2439.y)));
            let x_2443 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2443.x, x_2443.x, x_2443.y, x_2443.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2446 : vec4<f32> = u_xlat13;
            let x_2448 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2446.x, x_2446.x, x_2446.z, x_2446.z) * vec4<f32>(x_2448.x, x_2448.x, x_2448.z, x_2448.z));
            let x_2451 : vec4<f32> = u_xlat14;
            let x_2453 : vec2<f32> = (vec2<f32>(x_2451.y, x_2451.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2454 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2453.x, x_2454.y, x_2453.y, x_2454.w);
            let x_2456 : vec4<f32> = u_xlat14;
            let x_2459 : vec2<f32> = u_xlat64;
            let x_2461 : vec2<f32> = ((vec2<f32>(x_2456.x, x_2456.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2459));
            let x_2462 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2461.x, x_2461.y, x_2462.z, x_2462.w);
            let x_2464 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_2464) + vec2<f32>(1.0f, 1.0f));
            let x_2467 : vec2<f32> = u_xlat64;
            let x_2468 : vec2<f32> = min(x_2467, vec2<f32>(0.0f, 0.0f));
            let x_2469 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2468.x, x_2468.y, x_2469.z, x_2469.w);
            let x_2471 : vec4<f32> = u_xlat15;
            let x_2474 : vec4<f32> = u_xlat15;
            let x_2477 : vec2<f32> = u_xlat66;
            let x_2478 : vec2<f32> = ((-(vec2<f32>(x_2471.x, x_2471.y)) * vec2<f32>(x_2474.x, x_2474.y)) + x_2477);
            let x_2479 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2478.x, x_2478.y, x_2479.z, x_2479.w);
            let x_2481 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_2481, vec2<f32>(0.0f, 0.0f));
            let x_2483 : vec2<f32> = u_xlat64;
            let x_2485 : vec2<f32> = u_xlat64;
            let x_2487 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_2483) * x_2485) + vec2<f32>(x_2487.y, x_2487.w));
            let x_2490 : vec4<f32> = u_xlat15;
            let x_2492 : vec2<f32> = (vec2<f32>(x_2490.x, x_2490.y) + vec2<f32>(1.0f, 1.0f));
            let x_2493 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2492.x, x_2492.y, x_2493.z, x_2493.w);
            let x_2495 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_2495 + vec2<f32>(1.0f, 1.0f));
            let x_2497 : vec4<f32> = u_xlat14;
            let x_2499 : vec2<f32> = (vec2<f32>(x_2497.x, x_2497.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2500 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2499.x, x_2499.y, x_2500.z, x_2500.w);
            let x_2502 : vec2<f32> = u_xlat66;
            let x_2503 : vec2<f32> = (x_2502 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2504 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2503.x, x_2503.y, x_2504.z, x_2504.w);
            let x_2506 : vec4<f32> = u_xlat15;
            let x_2508 : vec2<f32> = (vec2<f32>(x_2506.x, x_2506.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2509 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2508.x, x_2508.y, x_2509.z, x_2509.w);
            let x_2511 : vec2<f32> = u_xlat64;
            let x_2512 : vec2<f32> = (x_2511 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2513 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2512.x, x_2512.y, x_2513.z, x_2513.w);
            let x_2515 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_2515.y, x_2515.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2519 : f32 = u_xlat15.x;
            u_xlat16.z = x_2519;
            let x_2522 : f32 = u_xlat64.x;
            u_xlat16.w = x_2522;
            let x_2525 : f32 = u_xlat17.x;
            u_xlat14.z = x_2525;
            let x_2528 : f32 = u_xlat13.x;
            u_xlat14.w = x_2528;
            let x_2530 : vec4<f32> = u_xlat14;
            let x_2532 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_2530.z, x_2530.w, x_2530.x, x_2530.z) + vec4<f32>(x_2532.z, x_2532.w, x_2532.x, x_2532.z));
            let x_2536 : f32 = u_xlat16.y;
            u_xlat15.z = x_2536;
            let x_2539 : f32 = u_xlat64.y;
            u_xlat15.w = x_2539;
            let x_2542 : f32 = u_xlat14.y;
            u_xlat17.z = x_2542;
            let x_2545 : f32 = u_xlat13.z;
            u_xlat17.w = x_2545;
            let x_2547 : vec4<f32> = u_xlat15;
            let x_2549 : vec4<f32> = u_xlat17;
            let x_2551 : vec3<f32> = (vec3<f32>(x_2547.z, x_2547.y, x_2547.w) + vec3<f32>(x_2549.z, x_2549.y, x_2549.w));
            let x_2552 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2551.x, x_2551.y, x_2551.z, x_2552.w);
            let x_2554 : vec4<f32> = u_xlat14;
            let x_2556 : vec4<f32> = u_xlat18;
            let x_2558 : vec3<f32> = (vec3<f32>(x_2554.x, x_2554.z, x_2554.w) / vec3<f32>(x_2556.z, x_2556.w, x_2556.y));
            let x_2559 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2558.x, x_2558.y, x_2558.z, x_2559.w);
            let x_2561 : vec4<f32> = u_xlat14;
            let x_2563 : vec3<f32> = (vec3<f32>(x_2561.x, x_2561.y, x_2561.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2564 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2563.x, x_2563.y, x_2563.z, x_2564.w);
            let x_2566 : vec4<f32> = u_xlat17;
            let x_2568 : vec4<f32> = u_xlat13;
            let x_2570 : vec3<f32> = (vec3<f32>(x_2566.z, x_2566.y, x_2566.w) / vec3<f32>(x_2568.x, x_2568.y, x_2568.z));
            let x_2571 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2570.x, x_2570.y, x_2570.z, x_2571.w);
            let x_2573 : vec4<f32> = u_xlat15;
            let x_2575 : vec3<f32> = (vec3<f32>(x_2573.x, x_2573.y, x_2573.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2576 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2575.x, x_2575.y, x_2575.z, x_2576.w);
            let x_2578 : vec4<f32> = u_xlat14;
            let x_2581 : vec4<f32> = x_321.x_AdditionalShadowmapSize;
            let x_2583 : vec3<f32> = (vec3<f32>(x_2578.y, x_2578.x, x_2578.z) * vec3<f32>(x_2581.x, x_2581.x, x_2581.x));
            let x_2584 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2583.x, x_2583.y, x_2583.z, x_2584.w);
            let x_2586 : vec4<f32> = u_xlat15;
            let x_2589 : vec4<f32> = x_321.x_AdditionalShadowmapSize;
            let x_2591 : vec3<f32> = (vec3<f32>(x_2586.x, x_2586.y, x_2586.z) * vec3<f32>(x_2589.y, x_2589.y, x_2589.y));
            let x_2592 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2591.x, x_2591.y, x_2591.z, x_2592.w);
            let x_2595 : f32 = u_xlat15.x;
            u_xlat14.w = x_2595;
            let x_2597 : vec4<f32> = u_xlat12;
            let x_2600 : vec4<f32> = x_321.x_AdditionalShadowmapSize;
            let x_2603 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2597.x, x_2597.y, x_2597.x, x_2597.y) * vec4<f32>(x_2600.x, x_2600.y, x_2600.x, x_2600.y)) + vec4<f32>(x_2603.y, x_2603.w, x_2603.x, x_2603.w));
            let x_2606 : vec4<f32> = u_xlat12;
            let x_2609 : vec4<f32> = x_321.x_AdditionalShadowmapSize;
            let x_2612 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_2606.x, x_2606.y) * vec2<f32>(x_2609.x, x_2609.y)) + vec2<f32>(x_2612.z, x_2612.w));
            let x_2616 : f32 = u_xlat14.y;
            u_xlat15.w = x_2616;
            let x_2618 : vec4<f32> = u_xlat15;
            let x_2619 : vec2<f32> = vec2<f32>(x_2618.y, x_2618.z);
            let x_2620 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2620.x, x_2619.x, x_2620.z, x_2619.y);
            let x_2622 : vec4<f32> = u_xlat12;
            let x_2625 : vec4<f32> = x_321.x_AdditionalShadowmapSize;
            let x_2628 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_2622.x, x_2622.y, x_2622.x, x_2622.y) * vec4<f32>(x_2625.x, x_2625.y, x_2625.x, x_2625.y)) + vec4<f32>(x_2628.x, x_2628.y, x_2628.z, x_2628.y));
            let x_2631 : vec4<f32> = u_xlat12;
            let x_2634 : vec4<f32> = x_321.x_AdditionalShadowmapSize;
            let x_2637 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_2631.x, x_2631.y, x_2631.x, x_2631.y) * vec4<f32>(x_2634.x, x_2634.y, x_2634.x, x_2634.y)) + vec4<f32>(x_2637.w, x_2637.y, x_2637.w, x_2637.z));
            let x_2640 : vec4<f32> = u_xlat12;
            let x_2643 : vec4<f32> = x_321.x_AdditionalShadowmapSize;
            let x_2646 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2640.x, x_2640.y, x_2640.x, x_2640.y) * vec4<f32>(x_2643.x, x_2643.y, x_2643.x, x_2643.y)) + vec4<f32>(x_2646.x, x_2646.w, x_2646.z, x_2646.w));
            let x_2649 : vec4<f32> = u_xlat13;
            let x_2651 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_2649.x, x_2649.x, x_2649.x, x_2649.y) * vec4<f32>(x_2651.z, x_2651.w, x_2651.y, x_2651.z));
            let x_2655 : vec4<f32> = u_xlat13;
            let x_2657 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_2655.y, x_2655.y, x_2655.z, x_2655.z) * x_2657);
            let x_2661 : f32 = u_xlat13.z;
            let x_2663 : f32 = u_xlat18.y;
            u_xlat89 = (x_2661 * x_2663);
            let x_2666 : vec4<f32> = u_xlat16;
            let x_2667 : vec2<f32> = vec2<f32>(x_2666.x, x_2666.y);
            let x_2669 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_2667.x, x_2667.y, x_2669);
            let x_2676 : vec3<f32> = txVec34;
            let x_2678 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2676.xy, x_2676.z);
            u_xlat12.x = x_2678;
            let x_2681 : vec4<f32> = u_xlat16;
            let x_2682 : vec2<f32> = vec2<f32>(x_2681.z, x_2681.w);
            let x_2684 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_2682.x, x_2682.y, x_2684);
            let x_2692 : vec3<f32> = txVec35;
            let x_2694 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2692.xy, x_2692.z);
            u_xlat38 = x_2694;
            let x_2695 : f32 = u_xlat38;
            let x_2697 : f32 = u_xlat19.y;
            u_xlat38 = (x_2695 * x_2697);
            let x_2700 : f32 = u_xlat19.x;
            let x_2702 : f32 = u_xlat12.x;
            let x_2704 : f32 = u_xlat38;
            u_xlat12.x = ((x_2700 * x_2702) + x_2704);
            let x_2708 : vec2<f32> = u_xlat64;
            let x_2710 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_2708.x, x_2708.y, x_2710);
            let x_2717 : vec3<f32> = txVec36;
            let x_2719 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2717.xy, x_2717.z);
            u_xlat38 = x_2719;
            let x_2721 : f32 = u_xlat19.z;
            let x_2722 : f32 = u_xlat38;
            let x_2725 : f32 = u_xlat12.x;
            u_xlat12.x = ((x_2721 * x_2722) + x_2725);
            let x_2729 : vec4<f32> = u_xlat15;
            let x_2730 : vec2<f32> = vec2<f32>(x_2729.x, x_2729.y);
            let x_2732 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_2730.x, x_2730.y, x_2732);
            let x_2739 : vec3<f32> = txVec37;
            let x_2741 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2739.xy, x_2739.z);
            u_xlat38 = x_2741;
            let x_2743 : f32 = u_xlat19.w;
            let x_2744 : f32 = u_xlat38;
            let x_2747 : f32 = u_xlat12.x;
            u_xlat12.x = ((x_2743 * x_2744) + x_2747);
            let x_2751 : vec4<f32> = u_xlat17;
            let x_2752 : vec2<f32> = vec2<f32>(x_2751.x, x_2751.y);
            let x_2754 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_2752.x, x_2752.y, x_2754);
            let x_2761 : vec3<f32> = txVec38;
            let x_2763 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2761.xy, x_2761.z);
            u_xlat38 = x_2763;
            let x_2765 : f32 = u_xlat20.x;
            let x_2766 : f32 = u_xlat38;
            let x_2769 : f32 = u_xlat12.x;
            u_xlat12.x = ((x_2765 * x_2766) + x_2769);
            let x_2773 : vec4<f32> = u_xlat17;
            let x_2774 : vec2<f32> = vec2<f32>(x_2773.z, x_2773.w);
            let x_2776 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_2774.x, x_2774.y, x_2776);
            let x_2783 : vec3<f32> = txVec39;
            let x_2785 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2783.xy, x_2783.z);
            u_xlat38 = x_2785;
            let x_2787 : f32 = u_xlat20.y;
            let x_2788 : f32 = u_xlat38;
            let x_2791 : f32 = u_xlat12.x;
            u_xlat12.x = ((x_2787 * x_2788) + x_2791);
            let x_2795 : vec4<f32> = u_xlat15;
            let x_2796 : vec2<f32> = vec2<f32>(x_2795.z, x_2795.w);
            let x_2798 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_2796.x, x_2796.y, x_2798);
            let x_2805 : vec3<f32> = txVec40;
            let x_2807 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2805.xy, x_2805.z);
            u_xlat38 = x_2807;
            let x_2809 : f32 = u_xlat20.z;
            let x_2810 : f32 = u_xlat38;
            let x_2813 : f32 = u_xlat12.x;
            u_xlat12.x = ((x_2809 * x_2810) + x_2813);
            let x_2817 : vec4<f32> = u_xlat14;
            let x_2818 : vec2<f32> = vec2<f32>(x_2817.x, x_2817.y);
            let x_2820 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_2818.x, x_2818.y, x_2820);
            let x_2827 : vec3<f32> = txVec41;
            let x_2829 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2827.xy, x_2827.z);
            u_xlat38 = x_2829;
            let x_2831 : f32 = u_xlat20.w;
            let x_2832 : f32 = u_xlat38;
            let x_2835 : f32 = u_xlat12.x;
            u_xlat12.x = ((x_2831 * x_2832) + x_2835);
            let x_2839 : vec4<f32> = u_xlat14;
            let x_2840 : vec2<f32> = vec2<f32>(x_2839.z, x_2839.w);
            let x_2842 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_2840.x, x_2840.y, x_2842);
            let x_2849 : vec3<f32> = txVec42;
            let x_2851 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2849.xy, x_2849.z);
            u_xlat38 = x_2851;
            let x_2852 : f32 = u_xlat89;
            let x_2853 : f32 = u_xlat38;
            let x_2856 : f32 = u_xlat12.x;
            u_xlat88 = ((x_2852 * x_2853) + x_2856);
          } else {
            let x_2859 : vec4<f32> = u_xlat11;
            let x_2862 : vec4<f32> = x_321.x_AdditionalShadowmapSize;
            let x_2865 : vec2<f32> = ((vec2<f32>(x_2859.x, x_2859.y) * vec2<f32>(x_2862.z, x_2862.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2866 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2865.x, x_2865.y, x_2866.z, x_2866.w);
            let x_2868 : vec4<f32> = u_xlat12;
            let x_2870 : vec2<f32> = floor(vec2<f32>(x_2868.x, x_2868.y));
            let x_2871 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2870.x, x_2870.y, x_2871.z, x_2871.w);
            let x_2873 : vec4<f32> = u_xlat11;
            let x_2876 : vec4<f32> = x_321.x_AdditionalShadowmapSize;
            let x_2879 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2873.x, x_2873.y) * vec2<f32>(x_2876.z, x_2876.w)) + -(vec2<f32>(x_2879.x, x_2879.y)));
            let x_2883 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2883.x, x_2883.x, x_2883.y, x_2883.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2886 : vec4<f32> = u_xlat13;
            let x_2888 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2886.x, x_2886.x, x_2886.z, x_2886.z) * vec4<f32>(x_2888.x, x_2888.x, x_2888.z, x_2888.z));
            let x_2891 : vec4<f32> = u_xlat14;
            let x_2893 : vec2<f32> = (vec2<f32>(x_2891.y, x_2891.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2894 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2894.x, x_2893.x, x_2894.z, x_2893.y);
            let x_2896 : vec4<f32> = u_xlat14;
            let x_2899 : vec2<f32> = u_xlat64;
            let x_2901 : vec2<f32> = ((vec2<f32>(x_2896.x, x_2896.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2899));
            let x_2902 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2901.x, x_2902.y, x_2901.y, x_2902.w);
            let x_2904 : vec2<f32> = u_xlat64;
            let x_2906 : vec2<f32> = (-(x_2904) + vec2<f32>(1.0f, 1.0f));
            let x_2907 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2906.x, x_2906.y, x_2907.z, x_2907.w);
            let x_2909 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_2909, vec2<f32>(0.0f, 0.0f));
            let x_2911 : vec2<f32> = u_xlat66;
            let x_2913 : vec2<f32> = u_xlat66;
            let x_2915 : vec4<f32> = u_xlat14;
            let x_2917 : vec2<f32> = ((-(x_2911) * x_2913) + vec2<f32>(x_2915.x, x_2915.y));
            let x_2918 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2917.x, x_2917.y, x_2918.z, x_2918.w);
            let x_2920 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_2920, vec2<f32>(0.0f, 0.0f));
            let x_2923 : vec2<f32> = u_xlat66;
            let x_2925 : vec2<f32> = u_xlat66;
            let x_2927 : vec4<f32> = u_xlat13;
            let x_2929 : vec2<f32> = ((-(x_2923) * x_2925) + vec2<f32>(x_2927.y, x_2927.w));
            let x_2930 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_2929.x, x_2930.y, x_2929.y);
            let x_2932 : vec4<f32> = u_xlat14;
            let x_2934 : vec2<f32> = (vec2<f32>(x_2932.x, x_2932.y) + vec2<f32>(2.0f, 2.0f));
            let x_2935 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2934.x, x_2934.y, x_2935.z, x_2935.w);
            let x_2937 : vec3<f32> = u_xlat39;
            let x_2939 : vec2<f32> = (vec2<f32>(x_2937.x, x_2937.z) + vec2<f32>(2.0f, 2.0f));
            let x_2940 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2940.x, x_2939.x, x_2940.z, x_2939.y);
            let x_2943 : f32 = u_xlat13.y;
            u_xlat16.z = (x_2943 * 0.08163200318813323975f);
            let x_2946 : vec4<f32> = u_xlat13;
            let x_2948 : vec3<f32> = (vec3<f32>(x_2946.z, x_2946.x, x_2946.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2949 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2948.x, x_2948.y, x_2948.z, x_2949.w);
            let x_2951 : vec4<f32> = u_xlat14;
            let x_2953 : vec2<f32> = (vec2<f32>(x_2951.x, x_2951.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2954 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2953.x, x_2953.y, x_2954.z, x_2954.w);
            let x_2957 : f32 = u_xlat17.y;
            u_xlat16.x = x_2957;
            let x_2959 : vec2<f32> = u_xlat64;
            let x_2962 : vec2<f32> = ((vec2<f32>(x_2959.x, x_2959.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2963 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2963.x, x_2962.x, x_2963.z, x_2962.y);
            let x_2965 : vec2<f32> = u_xlat64;
            let x_2968 : vec2<f32> = ((vec2<f32>(x_2965.x, x_2965.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2969 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2968.x, x_2969.y, x_2968.y, x_2969.w);
            let x_2972 : f32 = u_xlat13.x;
            u_xlat14.y = x_2972;
            let x_2975 : f32 = u_xlat15.y;
            u_xlat14.w = x_2975;
            let x_2977 : vec4<f32> = u_xlat14;
            let x_2978 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_2977 + x_2978);
            let x_2980 : vec2<f32> = u_xlat64;
            let x_2983 : vec2<f32> = ((vec2<f32>(x_2980.y, x_2980.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2984 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2984.x, x_2983.x, x_2984.z, x_2983.y);
            let x_2986 : vec2<f32> = u_xlat64;
            let x_2989 : vec2<f32> = ((vec2<f32>(x_2986.y, x_2986.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2990 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2989.x, x_2990.y, x_2989.y, x_2990.w);
            let x_2993 : f32 = u_xlat13.y;
            u_xlat15.y = x_2993;
            let x_2995 : vec4<f32> = u_xlat15;
            let x_2996 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_2995 + x_2996);
            let x_2998 : vec4<f32> = u_xlat14;
            let x_2999 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_2998 / x_2999);
            let x_3001 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3001 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3003 : vec4<f32> = u_xlat15;
            let x_3004 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3003 / x_3004);
            let x_3006 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3006 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3008 : vec4<f32> = u_xlat14;
            let x_3011 : vec4<f32> = x_321.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3008.w, x_3008.x, x_3008.y, x_3008.z) * vec4<f32>(x_3011.x, x_3011.x, x_3011.x, x_3011.x));
            let x_3014 : vec4<f32> = u_xlat15;
            let x_3017 : vec4<f32> = x_321.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3014.x, x_3014.w, x_3014.y, x_3014.z) * vec4<f32>(x_3017.y, x_3017.y, x_3017.y, x_3017.y));
            let x_3020 : vec4<f32> = u_xlat14;
            let x_3021 : vec3<f32> = vec3<f32>(x_3020.y, x_3020.z, x_3020.w);
            let x_3022 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3021.x, x_3022.y, x_3021.y, x_3021.z);
            let x_3025 : f32 = u_xlat15.x;
            u_xlat17.y = x_3025;
            let x_3027 : vec4<f32> = u_xlat12;
            let x_3030 : vec4<f32> = x_321.x_AdditionalShadowmapSize;
            let x_3033 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3027.x, x_3027.y, x_3027.x, x_3027.y) * vec4<f32>(x_3030.x, x_3030.y, x_3030.x, x_3030.y)) + vec4<f32>(x_3033.x, x_3033.y, x_3033.z, x_3033.y));
            let x_3036 : vec4<f32> = u_xlat12;
            let x_3039 : vec4<f32> = x_321.x_AdditionalShadowmapSize;
            let x_3042 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3036.x, x_3036.y) * vec2<f32>(x_3039.x, x_3039.y)) + vec2<f32>(x_3042.w, x_3042.y));
            let x_3046 : f32 = u_xlat17.y;
            u_xlat14.y = x_3046;
            let x_3049 : f32 = u_xlat15.z;
            u_xlat17.y = x_3049;
            let x_3051 : vec4<f32> = u_xlat12;
            let x_3054 : vec4<f32> = x_321.x_AdditionalShadowmapSize;
            let x_3057 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3051.x, x_3051.y, x_3051.x, x_3051.y) * vec4<f32>(x_3054.x, x_3054.y, x_3054.x, x_3054.y)) + vec4<f32>(x_3057.x, x_3057.y, x_3057.z, x_3057.y));
            let x_3060 : vec4<f32> = u_xlat12;
            let x_3063 : vec4<f32> = x_321.x_AdditionalShadowmapSize;
            let x_3066 : vec4<f32> = u_xlat17;
            let x_3068 : vec2<f32> = ((vec2<f32>(x_3060.x, x_3060.y) * vec2<f32>(x_3063.x, x_3063.y)) + vec2<f32>(x_3066.w, x_3066.y));
            let x_3069 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3068.x, x_3068.y, x_3069.z, x_3069.w);
            let x_3072 : f32 = u_xlat17.y;
            u_xlat14.z = x_3072;
            let x_3075 : vec4<f32> = u_xlat12;
            let x_3078 : vec4<f32> = x_321.x_AdditionalShadowmapSize;
            let x_3081 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3075.x, x_3075.y, x_3075.x, x_3075.y) * vec4<f32>(x_3078.x, x_3078.y, x_3078.x, x_3078.y)) + vec4<f32>(x_3081.x, x_3081.y, x_3081.x, x_3081.z));
            let x_3085 : f32 = u_xlat15.w;
            u_xlat17.y = x_3085;
            let x_3088 : vec4<f32> = u_xlat12;
            let x_3091 : vec4<f32> = x_321.x_AdditionalShadowmapSize;
            let x_3094 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3088.x, x_3088.y, x_3088.x, x_3088.y) * vec4<f32>(x_3091.x, x_3091.y, x_3091.x, x_3091.y)) + vec4<f32>(x_3094.x, x_3094.y, x_3094.z, x_3094.y));
            let x_3098 : vec4<f32> = u_xlat12;
            let x_3101 : vec4<f32> = x_321.x_AdditionalShadowmapSize;
            let x_3104 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3098.x, x_3098.y) * vec2<f32>(x_3101.x, x_3101.y)) + vec2<f32>(x_3104.w, x_3104.y));
            let x_3108 : f32 = u_xlat17.y;
            u_xlat14.w = x_3108;
            let x_3111 : vec4<f32> = u_xlat12;
            let x_3114 : vec4<f32> = x_321.x_AdditionalShadowmapSize;
            let x_3117 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3111.x, x_3111.y) * vec2<f32>(x_3114.x, x_3114.y)) + vec2<f32>(x_3117.x, x_3117.w));
            let x_3120 : vec4<f32> = u_xlat17;
            let x_3121 : vec3<f32> = vec3<f32>(x_3120.x, x_3120.z, x_3120.w);
            let x_3122 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3121.x, x_3122.y, x_3121.y, x_3121.z);
            let x_3124 : vec4<f32> = u_xlat12;
            let x_3127 : vec4<f32> = x_321.x_AdditionalShadowmapSize;
            let x_3130 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3124.x, x_3124.y, x_3124.x, x_3124.y) * vec4<f32>(x_3127.x, x_3127.y, x_3127.x, x_3127.y)) + vec4<f32>(x_3130.x, x_3130.y, x_3130.z, x_3130.y));
            let x_3134 : vec4<f32> = u_xlat12;
            let x_3137 : vec4<f32> = x_321.x_AdditionalShadowmapSize;
            let x_3140 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3134.x, x_3134.y) * vec2<f32>(x_3137.x, x_3137.y)) + vec2<f32>(x_3140.w, x_3140.y));
            let x_3144 : f32 = u_xlat14.x;
            u_xlat15.x = x_3144;
            let x_3146 : vec4<f32> = u_xlat12;
            let x_3149 : vec4<f32> = x_321.x_AdditionalShadowmapSize;
            let x_3152 : vec4<f32> = u_xlat15;
            let x_3154 : vec2<f32> = ((vec2<f32>(x_3146.x, x_3146.y) * vec2<f32>(x_3149.x, x_3149.y)) + vec2<f32>(x_3152.x, x_3152.y));
            let x_3155 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3154.x, x_3154.y, x_3155.z, x_3155.w);
            let x_3158 : vec4<f32> = u_xlat13;
            let x_3160 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3158.x, x_3158.x, x_3158.x, x_3158.x) * x_3160);
            let x_3163 : vec4<f32> = u_xlat13;
            let x_3165 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3163.y, x_3163.y, x_3163.y, x_3163.y) * x_3165);
            let x_3168 : vec4<f32> = u_xlat13;
            let x_3170 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3168.z, x_3168.z, x_3168.z, x_3168.z) * x_3170);
            let x_3172 : vec4<f32> = u_xlat13;
            let x_3174 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3172.w, x_3172.w, x_3172.w, x_3172.w) * x_3174);
            let x_3177 : vec4<f32> = u_xlat18;
            let x_3178 : vec2<f32> = vec2<f32>(x_3177.x, x_3177.y);
            let x_3180 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3178.x, x_3178.y, x_3180);
            let x_3187 : vec3<f32> = txVec43;
            let x_3189 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3187.xy, x_3187.z);
            u_xlat89 = x_3189;
            let x_3191 : vec4<f32> = u_xlat18;
            let x_3192 : vec2<f32> = vec2<f32>(x_3191.z, x_3191.w);
            let x_3194 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3192.x, x_3192.y, x_3194);
            let x_3201 : vec3<f32> = txVec44;
            let x_3203 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3201.xy, x_3201.z);
            u_xlat14.x = x_3203;
            let x_3206 : f32 = u_xlat14.x;
            let x_3208 : f32 = u_xlat23.y;
            u_xlat14.x = (x_3206 * x_3208);
            let x_3212 : f32 = u_xlat23.x;
            let x_3213 : f32 = u_xlat89;
            let x_3216 : f32 = u_xlat14.x;
            u_xlat89 = ((x_3212 * x_3213) + x_3216);
            let x_3219 : vec2<f32> = u_xlat64;
            let x_3221 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3219.x, x_3219.y, x_3221);
            let x_3228 : vec3<f32> = txVec45;
            let x_3230 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3228.xy, x_3228.z);
            u_xlat64.x = x_3230;
            let x_3233 : f32 = u_xlat23.z;
            let x_3235 : f32 = u_xlat64.x;
            let x_3237 : f32 = u_xlat89;
            u_xlat89 = ((x_3233 * x_3235) + x_3237);
            let x_3240 : vec4<f32> = u_xlat21;
            let x_3241 : vec2<f32> = vec2<f32>(x_3240.x, x_3240.y);
            let x_3243 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3241.x, x_3241.y, x_3243);
            let x_3250 : vec3<f32> = txVec46;
            let x_3252 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3250.xy, x_3250.z);
            u_xlat64.x = x_3252;
            let x_3255 : f32 = u_xlat23.w;
            let x_3257 : f32 = u_xlat64.x;
            let x_3259 : f32 = u_xlat89;
            u_xlat89 = ((x_3255 * x_3257) + x_3259);
            let x_3262 : vec4<f32> = u_xlat19;
            let x_3263 : vec2<f32> = vec2<f32>(x_3262.x, x_3262.y);
            let x_3265 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3263.x, x_3263.y, x_3265);
            let x_3272 : vec3<f32> = txVec47;
            let x_3274 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3272.xy, x_3272.z);
            u_xlat64.x = x_3274;
            let x_3277 : f32 = u_xlat24.x;
            let x_3279 : f32 = u_xlat64.x;
            let x_3281 : f32 = u_xlat89;
            u_xlat89 = ((x_3277 * x_3279) + x_3281);
            let x_3284 : vec4<f32> = u_xlat19;
            let x_3285 : vec2<f32> = vec2<f32>(x_3284.z, x_3284.w);
            let x_3287 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3285.x, x_3285.y, x_3287);
            let x_3294 : vec3<f32> = txVec48;
            let x_3296 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3294.xy, x_3294.z);
            u_xlat64.x = x_3296;
            let x_3299 : f32 = u_xlat24.y;
            let x_3301 : f32 = u_xlat64.x;
            let x_3303 : f32 = u_xlat89;
            u_xlat89 = ((x_3299 * x_3301) + x_3303);
            let x_3306 : vec4<f32> = u_xlat20;
            let x_3307 : vec2<f32> = vec2<f32>(x_3306.x, x_3306.y);
            let x_3309 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3307.x, x_3307.y, x_3309);
            let x_3316 : vec3<f32> = txVec49;
            let x_3318 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3316.xy, x_3316.z);
            u_xlat64.x = x_3318;
            let x_3321 : f32 = u_xlat24.z;
            let x_3323 : f32 = u_xlat64.x;
            let x_3325 : f32 = u_xlat89;
            u_xlat89 = ((x_3321 * x_3323) + x_3325);
            let x_3328 : vec4<f32> = u_xlat21;
            let x_3329 : vec2<f32> = vec2<f32>(x_3328.z, x_3328.w);
            let x_3331 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3329.x, x_3329.y, x_3331);
            let x_3338 : vec3<f32> = txVec50;
            let x_3340 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3338.xy, x_3338.z);
            u_xlat64.x = x_3340;
            let x_3343 : f32 = u_xlat24.w;
            let x_3345 : f32 = u_xlat64.x;
            let x_3347 : f32 = u_xlat89;
            u_xlat89 = ((x_3343 * x_3345) + x_3347);
            let x_3350 : vec4<f32> = u_xlat22;
            let x_3351 : vec2<f32> = vec2<f32>(x_3350.x, x_3350.y);
            let x_3353 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3351.x, x_3351.y, x_3353);
            let x_3360 : vec3<f32> = txVec51;
            let x_3362 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3360.xy, x_3360.z);
            u_xlat64.x = x_3362;
            let x_3365 : f32 = u_xlat25.x;
            let x_3367 : f32 = u_xlat64.x;
            let x_3369 : f32 = u_xlat89;
            u_xlat89 = ((x_3365 * x_3367) + x_3369);
            let x_3372 : vec4<f32> = u_xlat22;
            let x_3373 : vec2<f32> = vec2<f32>(x_3372.z, x_3372.w);
            let x_3375 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3373.x, x_3373.y, x_3375);
            let x_3382 : vec3<f32> = txVec52;
            let x_3384 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3382.xy, x_3382.z);
            u_xlat64.x = x_3384;
            let x_3387 : f32 = u_xlat25.y;
            let x_3389 : f32 = u_xlat64.x;
            let x_3391 : f32 = u_xlat89;
            u_xlat89 = ((x_3387 * x_3389) + x_3391);
            let x_3394 : vec2<f32> = u_xlat40;
            let x_3396 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3394.x, x_3394.y, x_3396);
            let x_3403 : vec3<f32> = txVec53;
            let x_3405 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3403.xy, x_3403.z);
            u_xlat64.x = x_3405;
            let x_3408 : f32 = u_xlat25.z;
            let x_3410 : f32 = u_xlat64.x;
            let x_3412 : f32 = u_xlat89;
            u_xlat89 = ((x_3408 * x_3410) + x_3412);
            let x_3415 : vec2<f32> = u_xlat72;
            let x_3417 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3415.x, x_3415.y, x_3417);
            let x_3424 : vec3<f32> = txVec54;
            let x_3426 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3424.xy, x_3424.z);
            u_xlat64.x = x_3426;
            let x_3429 : f32 = u_xlat25.w;
            let x_3431 : f32 = u_xlat64.x;
            let x_3433 : f32 = u_xlat89;
            u_xlat89 = ((x_3429 * x_3431) + x_3433);
            let x_3436 : vec4<f32> = u_xlat17;
            let x_3437 : vec2<f32> = vec2<f32>(x_3436.x, x_3436.y);
            let x_3439 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3437.x, x_3437.y, x_3439);
            let x_3446 : vec3<f32> = txVec55;
            let x_3448 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3446.xy, x_3446.z);
            u_xlat64.x = x_3448;
            let x_3451 : f32 = u_xlat13.x;
            let x_3453 : f32 = u_xlat64.x;
            let x_3455 : f32 = u_xlat89;
            u_xlat89 = ((x_3451 * x_3453) + x_3455);
            let x_3458 : vec4<f32> = u_xlat17;
            let x_3459 : vec2<f32> = vec2<f32>(x_3458.z, x_3458.w);
            let x_3461 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3459.x, x_3459.y, x_3461);
            let x_3468 : vec3<f32> = txVec56;
            let x_3470 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3468.xy, x_3468.z);
            u_xlat64.x = x_3470;
            let x_3473 : f32 = u_xlat13.y;
            let x_3475 : f32 = u_xlat64.x;
            let x_3477 : f32 = u_xlat89;
            u_xlat89 = ((x_3473 * x_3475) + x_3477);
            let x_3480 : vec2<f32> = u_xlat67;
            let x_3482 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3480.x, x_3480.y, x_3482);
            let x_3489 : vec3<f32> = txVec57;
            let x_3491 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3489.xy, x_3489.z);
            u_xlat64.x = x_3491;
            let x_3494 : f32 = u_xlat13.z;
            let x_3496 : f32 = u_xlat64.x;
            let x_3498 : f32 = u_xlat89;
            u_xlat89 = ((x_3494 * x_3496) + x_3498);
            let x_3501 : vec4<f32> = u_xlat12;
            let x_3502 : vec2<f32> = vec2<f32>(x_3501.x, x_3501.y);
            let x_3504 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3502.x, x_3502.y, x_3504);
            let x_3511 : vec3<f32> = txVec58;
            let x_3513 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3511.xy, x_3511.z);
            u_xlat12.x = x_3513;
            let x_3516 : f32 = u_xlat13.w;
            let x_3518 : f32 = u_xlat12.x;
            let x_3520 : f32 = u_xlat89;
            u_xlat88 = ((x_3516 * x_3518) + x_3520);
          }
        }
      } else {
        let x_3524 : vec4<f32> = u_xlat11;
        let x_3525 : vec2<f32> = vec2<f32>(x_3524.x, x_3524.y);
        let x_3527 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3525.x, x_3525.y, x_3527);
        let x_3534 : vec3<f32> = txVec59;
        let x_3536 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3534.xy, x_3534.z);
        u_xlat88 = x_3536;
      }
      let x_3537 : i32 = u_xlati84;
      let x_3539 : f32 = x_321.x_AdditionalShadowParams[x_3537].x;
      u_xlat11.x = (1.0f + -(x_3539));
      let x_3543 : f32 = u_xlat88;
      let x_3544 : i32 = u_xlati84;
      let x_3546 : f32 = x_321.x_AdditionalShadowParams[x_3544].x;
      let x_3549 : f32 = u_xlat11.x;
      u_xlat88 = ((x_3543 * x_3546) + x_3549);
      let x_3552 : f32 = u_xlat11.z;
      u_xlatb11.x = (0.0f >= x_3552);
      let x_3557 : f32 = u_xlat11.z;
      u_xlatb37 = (x_3557 >= 1.0f);
      let x_3559 : bool = u_xlatb37;
      let x_3561 : bool = u_xlatb11.x;
      u_xlatb11.x = (x_3559 | x_3561);
      let x_3565 : bool = u_xlatb11.x;
      let x_3566 : f32 = u_xlat88;
      u_xlat88 = select(x_3566, 1.0f, x_3565);
    } else {
      u_xlat88 = 1.0f;
    }
    let x_3569 : f32 = u_xlat88;
    u_xlat11.x = (-(x_3569) + 1.0f);
    let x_3573 : f32 = u_xlat81;
    let x_3575 : f32 = u_xlat11.x;
    let x_3577 : f32 = u_xlat88;
    u_xlat88 = ((x_3573 * x_3575) + x_3577);
    let x_3580 : i32 = u_xlati84;
    u_xlati11 = (1i << bitcast<u32>((x_3580 & 31i)));
    let x_3584 : i32 = u_xlati11;
    let x_3587 : f32 = x_1649.x_AdditionalLightsCookieEnableBits;
    u_xlati11 = bitcast<i32>((bitcast<u32>(x_3584) & bitcast<u32>(x_3587)));
    let x_3591 : i32 = u_xlati11;
    if ((x_3591 != 0i)) {
      let x_3595 : i32 = u_xlati84;
      let x_3597 : f32 = x_1649.x_AdditionalLightsLightTypes[x_3595].el;
      u_xlati11 = i32(x_3597);
      let x_3600 : i32 = u_xlati11;
      u_xlati37 = select(1i, 0i, (x_3600 != 0i));
      let x_3604 : i32 = u_xlati84;
      u_xlati63 = (x_3604 << bitcast<u32>(2i));
      let x_3606 : i32 = u_xlati37;
      if ((x_3606 != 0i)) {
        let x_3610 : vec3<f32> = vs_TEXCOORD1;
        let x_3612 : i32 = u_xlati63;
        let x_3615 : i32 = u_xlati63;
        let x_3619 : vec4<f32> = x_1649.x_AdditionalLightsWorldToLights[((x_3612 + 1i) / 4i)][((x_3615 + 1i) % 4i)];
        let x_3621 : vec3<f32> = (vec3<f32>(x_3610.y, x_3610.y, x_3610.y) * vec3<f32>(x_3619.x, x_3619.y, x_3619.w));
        let x_3622 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_3621.x, x_3621.y, x_3621.z, x_3622.w);
        let x_3624 : i32 = u_xlati63;
        let x_3626 : i32 = u_xlati63;
        let x_3629 : vec4<f32> = x_1649.x_AdditionalLightsWorldToLights[(x_3624 / 4i)][(x_3626 % 4i)];
        let x_3631 : vec3<f32> = vs_TEXCOORD1;
        let x_3634 : vec4<f32> = u_xlat12;
        let x_3636 : vec3<f32> = ((vec3<f32>(x_3629.x, x_3629.y, x_3629.w) * vec3<f32>(x_3631.x, x_3631.x, x_3631.x)) + vec3<f32>(x_3634.x, x_3634.y, x_3634.z));
        let x_3637 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_3636.x, x_3636.y, x_3636.z, x_3637.w);
        let x_3639 : i32 = u_xlati63;
        let x_3642 : i32 = u_xlati63;
        let x_3646 : vec4<f32> = x_1649.x_AdditionalLightsWorldToLights[((x_3639 + 2i) / 4i)][((x_3642 + 2i) % 4i)];
        let x_3648 : vec3<f32> = vs_TEXCOORD1;
        let x_3651 : vec4<f32> = u_xlat12;
        let x_3653 : vec3<f32> = ((vec3<f32>(x_3646.x, x_3646.y, x_3646.w) * vec3<f32>(x_3648.z, x_3648.z, x_3648.z)) + vec3<f32>(x_3651.x, x_3651.y, x_3651.z));
        let x_3654 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_3653.x, x_3653.y, x_3653.z, x_3654.w);
        let x_3656 : vec4<f32> = u_xlat12;
        let x_3658 : i32 = u_xlati63;
        let x_3661 : i32 = u_xlati63;
        let x_3665 : vec4<f32> = x_1649.x_AdditionalLightsWorldToLights[((x_3658 + 3i) / 4i)][((x_3661 + 3i) % 4i)];
        let x_3667 : vec3<f32> = (vec3<f32>(x_3656.x, x_3656.y, x_3656.z) + vec3<f32>(x_3665.x, x_3665.y, x_3665.w));
        let x_3668 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_3667.x, x_3667.y, x_3667.z, x_3668.w);
        let x_3670 : vec4<f32> = u_xlat12;
        let x_3672 : vec4<f32> = u_xlat12;
        let x_3674 : vec2<f32> = (vec2<f32>(x_3670.x, x_3670.y) / vec2<f32>(x_3672.z, x_3672.z));
        let x_3675 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3674.x, x_3675.y, x_3674.y);
        let x_3677 : vec3<f32> = u_xlat37;
        let x_3680 : vec2<f32> = ((vec2<f32>(x_3677.x, x_3677.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3681 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3680.x, x_3681.y, x_3680.y);
        let x_3683 : vec3<f32> = u_xlat37;
        let x_3687 : vec2<f32> = clamp(vec2<f32>(x_3683.x, x_3683.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3688 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3687.x, x_3688.y, x_3687.y);
        let x_3690 : i32 = u_xlati84;
        let x_3692 : vec4<f32> = x_1649.x_AdditionalLightsCookieAtlasUVRects[x_3690];
        let x_3694 : vec3<f32> = u_xlat37;
        let x_3697 : i32 = u_xlati84;
        let x_3699 : vec4<f32> = x_1649.x_AdditionalLightsCookieAtlasUVRects[x_3697];
        let x_3701 : vec2<f32> = ((vec2<f32>(x_3692.x, x_3692.y) * vec2<f32>(x_3694.x, x_3694.z)) + vec2<f32>(x_3699.z, x_3699.w));
        let x_3702 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3701.x, x_3702.y, x_3701.y);
      } else {
        let x_3705 : i32 = u_xlati11;
        u_xlatb11.x = (x_3705 == 1i);
        let x_3709 : bool = u_xlatb11.x;
        u_xlati11 = select(0i, 1i, x_3709);
        let x_3711 : i32 = u_xlati11;
        if ((x_3711 != 0i)) {
          let x_3715 : vec3<f32> = vs_TEXCOORD1;
          let x_3717 : i32 = u_xlati63;
          let x_3720 : i32 = u_xlati63;
          let x_3724 : vec4<f32> = x_1649.x_AdditionalLightsWorldToLights[((x_3717 + 1i) / 4i)][((x_3720 + 1i) % 4i)];
          let x_3726 : vec2<f32> = (vec2<f32>(x_3715.y, x_3715.y) * vec2<f32>(x_3724.x, x_3724.y));
          let x_3727 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3726.x, x_3726.y, x_3727.z, x_3727.w);
          let x_3729 : i32 = u_xlati63;
          let x_3731 : i32 = u_xlati63;
          let x_3734 : vec4<f32> = x_1649.x_AdditionalLightsWorldToLights[(x_3729 / 4i)][(x_3731 % 4i)];
          let x_3736 : vec3<f32> = vs_TEXCOORD1;
          let x_3739 : vec4<f32> = u_xlat12;
          let x_3741 : vec2<f32> = ((vec2<f32>(x_3734.x, x_3734.y) * vec2<f32>(x_3736.x, x_3736.x)) + vec2<f32>(x_3739.x, x_3739.y));
          let x_3742 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3741.x, x_3741.y, x_3742.z, x_3742.w);
          let x_3744 : i32 = u_xlati63;
          let x_3747 : i32 = u_xlati63;
          let x_3751 : vec4<f32> = x_1649.x_AdditionalLightsWorldToLights[((x_3744 + 2i) / 4i)][((x_3747 + 2i) % 4i)];
          let x_3753 : vec3<f32> = vs_TEXCOORD1;
          let x_3756 : vec4<f32> = u_xlat12;
          let x_3758 : vec2<f32> = ((vec2<f32>(x_3751.x, x_3751.y) * vec2<f32>(x_3753.z, x_3753.z)) + vec2<f32>(x_3756.x, x_3756.y));
          let x_3759 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3758.x, x_3758.y, x_3759.z, x_3759.w);
          let x_3761 : vec4<f32> = u_xlat12;
          let x_3763 : i32 = u_xlati63;
          let x_3766 : i32 = u_xlati63;
          let x_3770 : vec4<f32> = x_1649.x_AdditionalLightsWorldToLights[((x_3763 + 3i) / 4i)][((x_3766 + 3i) % 4i)];
          let x_3772 : vec2<f32> = (vec2<f32>(x_3761.x, x_3761.y) + vec2<f32>(x_3770.x, x_3770.y));
          let x_3773 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3772.x, x_3772.y, x_3773.z, x_3773.w);
          let x_3775 : vec4<f32> = u_xlat12;
          let x_3778 : vec2<f32> = ((vec2<f32>(x_3775.x, x_3775.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3779 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3778.x, x_3778.y, x_3779.z, x_3779.w);
          let x_3781 : vec4<f32> = u_xlat12;
          let x_3783 : vec2<f32> = fract(vec2<f32>(x_3781.x, x_3781.y));
          let x_3784 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3783.x, x_3783.y, x_3784.z, x_3784.w);
          let x_3786 : i32 = u_xlati84;
          let x_3788 : vec4<f32> = x_1649.x_AdditionalLightsCookieAtlasUVRects[x_3786];
          let x_3790 : vec4<f32> = u_xlat12;
          let x_3793 : i32 = u_xlati84;
          let x_3795 : vec4<f32> = x_1649.x_AdditionalLightsCookieAtlasUVRects[x_3793];
          let x_3797 : vec2<f32> = ((vec2<f32>(x_3788.x, x_3788.y) * vec2<f32>(x_3790.x, x_3790.y)) + vec2<f32>(x_3795.z, x_3795.w));
          let x_3798 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_3797.x, x_3798.y, x_3797.y);
        } else {
          let x_3801 : vec3<f32> = vs_TEXCOORD1;
          let x_3803 : i32 = u_xlati63;
          let x_3806 : i32 = u_xlati63;
          let x_3810 : vec4<f32> = x_1649.x_AdditionalLightsWorldToLights[((x_3803 + 1i) / 4i)][((x_3806 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_3801.y, x_3801.y, x_3801.y, x_3801.y) * x_3810);
          let x_3812 : i32 = u_xlati63;
          let x_3814 : i32 = u_xlati63;
          let x_3817 : vec4<f32> = x_1649.x_AdditionalLightsWorldToLights[(x_3812 / 4i)][(x_3814 % 4i)];
          let x_3818 : vec3<f32> = vs_TEXCOORD1;
          let x_3821 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3817 * vec4<f32>(x_3818.x, x_3818.x, x_3818.x, x_3818.x)) + x_3821);
          let x_3823 : i32 = u_xlati63;
          let x_3826 : i32 = u_xlati63;
          let x_3830 : vec4<f32> = x_1649.x_AdditionalLightsWorldToLights[((x_3823 + 2i) / 4i)][((x_3826 + 2i) % 4i)];
          let x_3831 : vec3<f32> = vs_TEXCOORD1;
          let x_3834 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3830 * vec4<f32>(x_3831.z, x_3831.z, x_3831.z, x_3831.z)) + x_3834);
          let x_3836 : vec4<f32> = u_xlat12;
          let x_3837 : i32 = u_xlati63;
          let x_3840 : i32 = u_xlati63;
          let x_3844 : vec4<f32> = x_1649.x_AdditionalLightsWorldToLights[((x_3837 + 3i) / 4i)][((x_3840 + 3i) % 4i)];
          u_xlat12 = (x_3836 + x_3844);
          let x_3846 : vec4<f32> = u_xlat12;
          let x_3848 : vec4<f32> = u_xlat12;
          let x_3850 : vec3<f32> = (vec3<f32>(x_3846.x, x_3846.y, x_3846.z) / vec3<f32>(x_3848.w, x_3848.w, x_3848.w));
          let x_3851 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3850.x, x_3850.y, x_3850.z, x_3851.w);
          let x_3853 : vec4<f32> = u_xlat12;
          let x_3855 : vec4<f32> = u_xlat12;
          u_xlat11.x = dot(vec3<f32>(x_3853.x, x_3853.y, x_3853.z), vec3<f32>(x_3855.x, x_3855.y, x_3855.z));
          let x_3860 : f32 = u_xlat11.x;
          u_xlat11.x = inverseSqrt(x_3860);
          let x_3863 : vec4<f32> = u_xlat11;
          let x_3865 : vec4<f32> = u_xlat12;
          let x_3867 : vec3<f32> = (vec3<f32>(x_3863.x, x_3863.x, x_3863.x) * vec3<f32>(x_3865.x, x_3865.y, x_3865.z));
          let x_3868 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3867.x, x_3867.y, x_3867.z, x_3868.w);
          let x_3870 : vec4<f32> = u_xlat12;
          u_xlat11.x = dot(abs(vec3<f32>(x_3870.x, x_3870.y, x_3870.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3877 : f32 = u_xlat11.x;
          u_xlat11.x = max(x_3877, 0.00000099999999747524f);
          let x_3882 : f32 = u_xlat11.x;
          u_xlat11.x = (1.0f / x_3882);
          let x_3885 : vec4<f32> = u_xlat11;
          let x_3887 : vec4<f32> = u_xlat12;
          let x_3889 : vec3<f32> = (vec3<f32>(x_3885.x, x_3885.x, x_3885.x) * vec3<f32>(x_3887.z, x_3887.x, x_3887.y));
          let x_3890 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3889.x, x_3889.y, x_3889.z, x_3890.w);
          let x_3893 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_3893);
          let x_3897 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_3897, 0.0f, 1.0f);
          let x_3901 : vec4<f32> = u_xlat13;
          let x_3903 : vec4<bool> = (vec4<f32>(x_3901.y, x_3901.z, x_3901.y, x_3901.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb64 = vec2<bool>(x_3903.x, x_3903.y);
          let x_3906 : bool = u_xlatb64.x;
          if (x_3906) {
            let x_3911 : f32 = u_xlat13.x;
            x_3907 = x_3911;
          } else {
            let x_3914 : f32 = u_xlat13.x;
            x_3907 = -(x_3914);
          }
          let x_3916 : f32 = x_3907;
          u_xlat64.x = x_3916;
          let x_3919 : bool = u_xlatb64.y;
          if (x_3919) {
            let x_3924 : f32 = u_xlat13.x;
            x_3920 = x_3924;
          } else {
            let x_3927 : f32 = u_xlat13.x;
            x_3920 = -(x_3927);
          }
          let x_3929 : f32 = x_3920;
          u_xlat64.y = x_3929;
          let x_3931 : vec4<f32> = u_xlat12;
          let x_3933 : vec4<f32> = u_xlat11;
          let x_3936 : vec2<f32> = u_xlat64;
          let x_3937 : vec2<f32> = ((vec2<f32>(x_3931.x, x_3931.y) * vec2<f32>(x_3933.x, x_3933.x)) + x_3936);
          let x_3938 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3937.x, x_3938.y, x_3937.y, x_3938.w);
          let x_3940 : vec4<f32> = u_xlat11;
          let x_3943 : vec2<f32> = ((vec2<f32>(x_3940.x, x_3940.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3944 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3943.x, x_3944.y, x_3943.y, x_3944.w);
          let x_3946 : vec4<f32> = u_xlat11;
          let x_3950 : vec2<f32> = clamp(vec2<f32>(x_3946.x, x_3946.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3951 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3950.x, x_3951.y, x_3950.y, x_3951.w);
          let x_3953 : i32 = u_xlati84;
          let x_3955 : vec4<f32> = x_1649.x_AdditionalLightsCookieAtlasUVRects[x_3953];
          let x_3957 : vec4<f32> = u_xlat11;
          let x_3960 : i32 = u_xlati84;
          let x_3962 : vec4<f32> = x_1649.x_AdditionalLightsCookieAtlasUVRects[x_3960];
          let x_3964 : vec2<f32> = ((vec2<f32>(x_3955.x, x_3955.y) * vec2<f32>(x_3957.x, x_3957.z)) + vec2<f32>(x_3962.z, x_3962.w));
          let x_3965 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_3964.x, x_3965.y, x_3964.y);
        }
      }
      let x_3972 : vec3<f32> = u_xlat37;
      let x_3974 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_3972.x, x_3972.z), 0.0f);
      u_xlat11 = x_3974;
      let x_3976 : bool = u_xlatb57.y;
      if (x_3976) {
        let x_3981 : f32 = u_xlat11.w;
        x_3977 = x_3981;
      } else {
        let x_3984 : f32 = u_xlat11.x;
        x_3977 = x_3984;
      }
      let x_3985 : f32 = x_3977;
      u_xlat89 = x_3985;
      let x_3987 : bool = u_xlatb57.x;
      if (x_3987) {
        let x_3991 : vec4<f32> = u_xlat11;
        x_3988 = vec3<f32>(x_3991.x, x_3991.y, x_3991.z);
      } else {
        let x_3994 : f32 = u_xlat89;
        x_3988 = vec3<f32>(x_3994, x_3994, x_3994);
      }
      let x_3996 : vec3<f32> = x_3988;
      let x_3997 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3996.x, x_3996.y, x_3996.z, x_3997.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4003 : vec4<f32> = u_xlat11;
    let x_4005 : i32 = u_xlati84;
    let x_4007 : vec4<f32> = x_2087.x_AdditionalLightsColor[x_4005];
    let x_4009 : vec3<f32> = (vec3<f32>(x_4003.x, x_4003.y, x_4003.z) * vec3<f32>(x_4007.x, x_4007.y, x_4007.z));
    let x_4010 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4009.x, x_4009.y, x_4009.z, x_4010.w);
    let x_4012 : f32 = u_xlat85;
    let x_4013 : f32 = u_xlat88;
    u_xlat84 = (x_4012 * x_4013);
    let x_4015 : vec4<f32> = u_xlat3;
    let x_4017 : vec4<f32> = u_xlat10;
    u_xlat85 = dot(vec3<f32>(x_4015.x, x_4015.y, x_4015.z), vec3<f32>(x_4017.x, x_4017.y, x_4017.z));
    let x_4020 : f32 = u_xlat85;
    u_xlat85 = clamp(x_4020, 0.0f, 1.0f);
    let x_4022 : f32 = u_xlat84;
    let x_4023 : f32 = u_xlat85;
    u_xlat84 = (x_4022 * x_4023);
    let x_4025 : f32 = u_xlat84;
    let x_4027 : vec4<f32> = u_xlat11;
    let x_4029 : vec3<f32> = (vec3<f32>(x_4025, x_4025, x_4025) * vec3<f32>(x_4027.x, x_4027.y, x_4027.z));
    let x_4030 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4029.x, x_4029.y, x_4029.z, x_4030.w);
    let x_4032 : vec4<f32> = u_xlat9;
    let x_4034 : f32 = u_xlat87;
    let x_4037 : vec3<f32> = u_xlat2;
    let x_4038 : vec3<f32> = ((vec3<f32>(x_4032.x, x_4032.y, x_4032.z) * vec3<f32>(x_4034, x_4034, x_4034)) + x_4037);
    let x_4039 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4038.x, x_4038.y, x_4038.z, x_4039.w);
    let x_4041 : vec4<f32> = u_xlat9;
    let x_4043 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_4041.x, x_4041.y, x_4041.z), vec3<f32>(x_4043.x, x_4043.y, x_4043.z));
    let x_4046 : f32 = u_xlat84;
    u_xlat84 = max(x_4046, 1.17549435e-38f);
    let x_4048 : f32 = u_xlat84;
    u_xlat84 = inverseSqrt(x_4048);
    let x_4050 : f32 = u_xlat84;
    let x_4052 : vec4<f32> = u_xlat9;
    let x_4054 : vec3<f32> = (vec3<f32>(x_4050, x_4050, x_4050) * vec3<f32>(x_4052.x, x_4052.y, x_4052.z));
    let x_4055 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4054.x, x_4054.y, x_4054.z, x_4055.w);
    let x_4057 : vec4<f32> = u_xlat3;
    let x_4059 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_4057.x, x_4057.y, x_4057.z), vec3<f32>(x_4059.x, x_4059.y, x_4059.z));
    let x_4062 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4062, 0.0f, 1.0f);
    let x_4064 : vec4<f32> = u_xlat10;
    let x_4066 : vec4<f32> = u_xlat9;
    u_xlat85 = dot(vec3<f32>(x_4064.x, x_4064.y, x_4064.z), vec3<f32>(x_4066.x, x_4066.y, x_4066.z));
    let x_4069 : f32 = u_xlat85;
    u_xlat85 = clamp(x_4069, 0.0f, 1.0f);
    let x_4071 : f32 = u_xlat84;
    let x_4072 : f32 = u_xlat84;
    u_xlat84 = (x_4071 * x_4072);
    let x_4074 : f32 = u_xlat84;
    let x_4076 : f32 = u_xlat8.x;
    u_xlat84 = ((x_4074 * x_4076) + 1.00001001358032226562f);
    let x_4079 : f32 = u_xlat85;
    let x_4080 : f32 = u_xlat85;
    u_xlat85 = (x_4079 * x_4080);
    let x_4082 : f32 = u_xlat84;
    let x_4083 : f32 = u_xlat84;
    u_xlat84 = (x_4082 * x_4083);
    let x_4085 : f32 = u_xlat85;
    u_xlat85 = max(x_4085, 0.10000000149011611938f);
    let x_4087 : f32 = u_xlat84;
    let x_4088 : f32 = u_xlat85;
    u_xlat84 = (x_4087 * x_4088);
    let x_4090 : f32 = u_xlat31;
    let x_4091 : f32 = u_xlat84;
    u_xlat84 = (x_4090 * x_4091);
    let x_4094 : f32 = u_xlat5.x;
    let x_4095 : f32 = u_xlat84;
    u_xlat84 = (x_4094 / x_4095);
    let x_4097 : vec4<f32> = u_xlat0;
    let x_4099 : f32 = u_xlat84;
    let x_4102 : vec3<f32> = u_xlat27;
    let x_4103 : vec3<f32> = ((vec3<f32>(x_4097.x, x_4097.y, x_4097.z) * vec3<f32>(x_4099, x_4099, x_4099)) + x_4102);
    let x_4104 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4103.x, x_4103.y, x_4103.z, x_4104.w);
    let x_4106 : vec4<f32> = u_xlat9;
    let x_4108 : vec4<f32> = u_xlat11;
    let x_4111 : vec3<f32> = u_xlat34;
    u_xlat34 = ((vec3<f32>(x_4106.x, x_4106.y, x_4106.z) * vec3<f32>(x_4108.x, x_4108.y, x_4108.z)) + x_4111);

    continuing {
      let x_4113 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4113 + bitcast<u32>(1i));
    }
  }
  let x_4115 : vec4<f32> = u_xlat7;
  let x_4117 : vec4<f32> = u_xlat6;
  let x_4120 : vec3<f32> = u_xlat4;
  let x_4121 : vec3<f32> = ((vec3<f32>(x_4115.x, x_4115.y, x_4115.z) * vec3<f32>(x_4117.x, x_4117.y, x_4117.z)) + x_4120);
  let x_4122 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4121.x, x_4121.y, x_4121.z, x_4122.w);
  let x_4124 : vec3<f32> = u_xlat34;
  let x_4125 : vec4<f32> = u_xlat0;
  let x_4127 : vec3<f32> = (x_4124 + vec3<f32>(x_4125.x, x_4125.y, x_4125.z));
  let x_4128 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4127.x, x_4127.y, x_4127.z, x_4128.w);
  let x_4130 : f32 = u_xlat78;
  let x_4131 : f32 = u_xlat78;
  u_xlat78 = (x_4130 * -(x_4131));
  let x_4134 : f32 = u_xlat78;
  u_xlat78 = exp2(x_4134);
  let x_4136 : vec4<f32> = u_xlat0;
  let x_4139 : vec4<f32> = x_28.unity_FogColor;
  let x_4142 : vec3<f32> = (vec3<f32>(x_4136.x, x_4136.y, x_4136.z) + -(vec3<f32>(x_4139.x, x_4139.y, x_4139.z)));
  let x_4143 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4142.x, x_4142.y, x_4142.z, x_4143.w);
  let x_4147 : f32 = u_xlat78;
  let x_4149 : vec4<f32> = u_xlat0;
  let x_4153 : vec4<f32> = x_28.unity_FogColor;
  let x_4155 : vec3<f32> = ((vec3<f32>(x_4147, x_4147, x_4147) * vec3<f32>(x_4149.x, x_4149.y, x_4149.z)) + vec3<f32>(x_4153.x, x_4153.y, x_4153.z));
  let x_4156 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4155.x, x_4155.y, x_4155.z, x_4156.w);
  let x_4160 : f32 = x_42.x_Surface;
  u_xlatb0 = (x_4160 == 1.0f);
  let x_4162 : bool = u_xlatb0;
  if (x_4162) {
    let x_4167 : f32 = u_xlat1.x;
    x_4163 = x_4167;
  } else {
    x_4163 = 1.0f;
  }
  let x_4169 : f32 = x_4163;
  SV_Target0.w = x_4169;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


