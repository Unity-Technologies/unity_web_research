diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(8) */
  x_AlphaToMaskAvailable : f32,
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
  x_ScreenParams : vec4<f32>,
  /* @offset(112) */
  unity_OrthoParams : vec4<f32>,
  /* @offset(128) */
  unity_FogParams : vec4<f32>,
  /* @offset(144) */
  unity_FogColor : vec4<f32>,
  /* @offset(160) */
  unity_MatrixV : mat4x4<f32>,
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

struct UnityPerMaterial {
  /* @offset(0) */
  Texture2D_B222E8F_TexelSize : vec4<f32>,
  /* @offset(16) */
  Color_C30C7CA3 : vec4<f32>,
  /* @offset(32) */
  Texture2D_D9BFD5F1_TexelSize : vec4<f32>,
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

var<private> u_xlat0 : vec3<f32>;

var<private> vs_INTERP9 : vec3<f32>;

var<private> u_xlatb78 : bool;

@group(1) @binding(0) var<uniform> x_75 : PGlobals;

var<private> u_xlat1 : vec3<f32>;

var<private> vs_INTERP8 : vec3<f32>;

var<private> u_xlat79 : f32;

var<private> u_xlat2 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_132 : UnityPerDraw;

var<private> u_xlat78 : f32;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(7) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(14) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP5 : vec4<f32>;

var<private> u_xlat4 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_188 : UnityPerMaterial;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(8) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(15) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat31 : vec3<f32>;

var<private> vs_INTERP6 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_249 : LightShadows;

var<private> u_xlatb79 : bool;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb80 : bool;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat82 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlat34 : vec3<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat35 : vec3<f32>;

var<private> u_xlat67 : vec2<f32>;

var<private> u_xlat62 : vec2<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlatb82 : bool;

var<private> u_xlatb6 : bool;

var<private> u_xlatb3 : bool;

var<private> u_xlatu2 : vec3<u32>;

var<private> u_xlatu54 : u32;

var<private> u_xlatu29 : u32;

var<private> u_xlati54 : i32;

var<private> u_xlati28 : i32;

var<private> u_xlatu28 : u32;

var<private> u_xlati2 : i32;

var<private> u_xlat28 : vec2<f32>;

var<private> u_xlatb28 : vec2<bool>;

var<private> u_xlat54 : f32;

var<private> u_xlatb2 : bool;

var<private> vs_INTERP4 : vec4<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat81 : f32;

var<private> u_xlat32 : f32;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlatb58 : vec2<bool>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat65 : vec2<f32>;

var<private> u_xlat86 : f32;

var<private> u_xlat33 : f32;

@group(1) @binding(4) var<uniform> x_3306 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu78 : u32;

var<private> u_xlatu81 : u32;

var<private> u_xlati83 : i32;

var<private> u_xlati81 : i32;

@group(1) @binding(1) var<uniform> x_3743 : AdditionalLights;

var<private> u_xlat83 : f32;

var<private> u_xlat85 : f32;

var<private> u_xlati86 : i32;

var<private> u_xlatb88 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat89 : f32;

var<private> u_xlat37 : vec3<f32>;

var<private> u_xlat88 : f32;

var<private> u_xlatb86 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat66 : vec2<f32>;

var<private> u_xlat39 : vec3<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat40 : vec2<f32>;

var<private> u_xlat72 : vec2<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlat25 : vec4<f32>;

var<private> u_xlati88 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlati37 : i32;

var<private> u_xlatb37 : vec3<bool>;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu80 : u32;

var<private> u_xlatb81 : bool;

fn int_bitfieldInsert_i1_i1_i1_i1_(base : ptr<function, i32>, insert : ptr<function, i32>, offset_1 : ptr<function, i32>, bits : ptr<function, i32>) -> i32 {
  var mask : u32;
  let x_19 : i32 = *(bits);
  let x_23 : i32 = *(offset_1);
  mask = (~((4294967295u << bitcast<u32>(x_19))) << bitcast<u32>(x_23));
  let x_26 : i32 = *(base);
  let x_28 : u32 = mask;
  let x_31 : i32 = *(insert);
  let x_33 : i32 = *(offset_1);
  let x_36 : u32 = mask;
  return bitcast<i32>(((bitcast<u32>(x_26) & ~(x_28)) | ((bitcast<u32>(x_31) << bitcast<u32>(x_33)) & x_36)));
}

fn main_1() {
  var x_120 : vec3<f32>;
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
  var x_1564 : f32;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var x_1699 : f32;
  var x_1730 : f32;
  var x_1777 : f32;
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
  var x_3374 : f32;
  var x_3385 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_3878 : f32;
  var x_3889 : f32;
  var txVec60 : vec3<f32>;
  var txVec61 : vec3<f32>;
  var txVec62 : vec3<f32>;
  var txVec63 : vec3<f32>;
  var txVec64 : vec3<f32>;
  var txVec65 : vec3<f32>;
  var txVec66 : vec3<f32>;
  var txVec67 : vec3<f32>;
  var txVec68 : vec3<f32>;
  var txVec69 : vec3<f32>;
  var txVec70 : vec3<f32>;
  var txVec71 : vec3<f32>;
  var txVec72 : vec3<f32>;
  var txVec73 : vec3<f32>;
  var txVec74 : vec3<f32>;
  var txVec75 : vec3<f32>;
  var txVec76 : vec3<f32>;
  var txVec77 : vec3<f32>;
  var txVec78 : vec3<f32>;
  var txVec79 : vec3<f32>;
  var txVec80 : vec3<f32>;
  var txVec81 : vec3<f32>;
  var txVec82 : vec3<f32>;
  var txVec83 : vec3<f32>;
  var txVec84 : vec3<f32>;
  var txVec85 : vec3<f32>;
  var txVec86 : vec3<f32>;
  var txVec87 : vec3<f32>;
  var txVec88 : vec3<f32>;
  var txVec89 : vec3<f32>;
  var x_5504 : f32;
  var x_5517 : f32;
  var x_5575 : f32;
  var x_5586 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_48 : vec3<f32> = vs_INTERP9;
  let x_49 : vec3<f32> = vs_INTERP9;
  u_xlat0.x = dot(x_48, x_49);
  let x_55 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_55);
  let x_60 : f32 = u_xlat0.x;
  u_xlat0.x = (1.0f / x_60);
  let x_63 : vec3<f32> = u_xlat0;
  let x_65 : vec3<f32> = vs_INTERP9;
  u_xlat0 = (vec3<f32>(x_63.x, x_63.x, x_63.x) * x_65);
  let x_80 : f32 = x_75.unity_OrthoParams.w;
  u_xlatb78 = (x_80 == 0.0f);
  let x_85 : vec3<f32> = vs_INTERP8;
  let x_90 : vec3<f32> = x_75.x_WorldSpaceCameraPos;
  u_xlat1 = (-(x_85) + x_90);
  let x_93 : vec3<f32> = u_xlat1;
  let x_94 : vec3<f32> = u_xlat1;
  u_xlat79 = dot(x_93, x_94);
  let x_96 : f32 = u_xlat79;
  u_xlat79 = inverseSqrt(x_96);
  let x_98 : f32 = u_xlat79;
  let x_100 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_98, x_98, x_98) * x_100);
  let x_107 : f32 = x_75.unity_MatrixV[0i].z;
  u_xlat2.x = x_107;
  let x_111 : f32 = x_75.unity_MatrixV[1i].z;
  u_xlat2.y = x_111;
  let x_116 : f32 = x_75.unity_MatrixV[2i].z;
  u_xlat2.z = x_116;
  let x_118 : bool = u_xlatb78;
  if (x_118) {
    let x_123 : vec3<f32> = u_xlat1;
    x_120 = x_123;
  } else {
    let x_125 : vec3<f32> = u_xlat2;
    x_120 = x_125;
  }
  let x_126 : vec3<f32> = x_120;
  u_xlat1 = x_126;
  let x_127 : vec3<f32> = u_xlat1;
  let x_135 : vec4<f32> = x_132.unity_WorldToObject[1i];
  u_xlat2 = (vec3<f32>(x_127.y, x_127.y, x_127.y) * vec3<f32>(x_135.x, x_135.y, x_135.z));
  let x_139 : vec4<f32> = x_132.unity_WorldToObject[0i];
  let x_141 : vec3<f32> = u_xlat1;
  let x_144 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_139.x, x_139.y, x_139.z) * vec3<f32>(x_141.x, x_141.x, x_141.x)) + x_144);
  let x_147 : vec4<f32> = x_132.unity_WorldToObject[2i];
  let x_149 : vec3<f32> = u_xlat1;
  let x_152 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_147.x, x_147.y, x_147.z) * vec3<f32>(x_149.z, x_149.z, x_149.z)) + x_152);
  let x_155 : vec3<f32> = u_xlat2;
  let x_156 : vec3<f32> = u_xlat2;
  u_xlat78 = dot(x_155, x_156);
  let x_158 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_158);
  let x_160 : f32 = u_xlat78;
  let x_162 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_160, x_160, x_160) * x_162);
  let x_178 : vec4<f32> = vs_INTERP5;
  let x_181 : f32 = x_75.x_GlobalMipBias.x;
  let x_182 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_178.x, x_178.y), x_181);
  u_xlat3 = x_182;
  let x_184 : vec4<f32> = u_xlat3;
  let x_190 : vec4<f32> = x_188.Color_C30C7CA3;
  u_xlat4 = (vec3<f32>(x_184.x, x_184.y, x_184.z) * vec3<f32>(x_190.x, x_190.y, x_190.z));
  let x_199 : vec4<f32> = vs_INTERP5;
  let x_202 : f32 = x_75.x_GlobalMipBias.x;
  let x_203 : vec4<f32> = textureSampleBias(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1, vec2<f32>(x_199.x, x_199.y), x_202);
  u_xlat5 = vec4<f32>(x_203.w, x_203.x, x_203.y, x_203.z);
  let x_206 : vec4<f32> = u_xlat5;
  u_xlat6 = ((vec4<f32>(x_206.y, x_206.z, x_206.w, x_206.x) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_214 : vec4<f32> = u_xlat6;
  let x_215 : vec4<f32> = u_xlat6;
  u_xlat78 = dot(x_214, x_215);
  let x_217 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_217);
  let x_220 : f32 = u_xlat78;
  let x_222 : vec4<f32> = u_xlat6;
  u_xlat31 = (vec3<f32>(x_220, x_220, x_220) * vec3<f32>(x_222.x, x_222.y, x_222.z));
  let x_228 : f32 = vs_INTERP6.y;
  u_xlat78 = (x_228 * 200.0f);
  let x_231 : f32 = u_xlat78;
  u_xlat78 = min(x_231, 1.0f);
  let x_233 : f32 = u_xlat78;
  let x_235 : vec4<f32> = u_xlat3;
  let x_237 : vec3<f32> = (vec3<f32>(x_233, x_233, x_233) * vec3<f32>(x_235.x, x_235.y, x_235.z));
  let x_238 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_237.x, x_237.y, x_237.z, x_238.w);
  let x_240 : vec3<f32> = vs_INTERP8;
  let x_251 : vec4<f32> = x_249.x_MainLightWorldToShadow[0i][1i];
  let x_253 : vec3<f32> = (vec3<f32>(x_240.y, x_240.y, x_240.y) * vec3<f32>(x_251.x, x_251.y, x_251.z));
  let x_254 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_253.x, x_253.y, x_253.z, x_254.w);
  let x_257 : vec4<f32> = x_249.x_MainLightWorldToShadow[0i][0i];
  let x_259 : vec3<f32> = vs_INTERP8;
  let x_262 : vec4<f32> = u_xlat6;
  let x_264 : vec3<f32> = ((vec3<f32>(x_257.x, x_257.y, x_257.z) * vec3<f32>(x_259.x, x_259.x, x_259.x)) + vec3<f32>(x_262.x, x_262.y, x_262.z));
  let x_265 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_264.x, x_264.y, x_264.z, x_265.w);
  let x_268 : vec4<f32> = x_249.x_MainLightWorldToShadow[0i][2i];
  let x_270 : vec3<f32> = vs_INTERP8;
  let x_273 : vec4<f32> = u_xlat6;
  let x_275 : vec3<f32> = ((vec3<f32>(x_268.x, x_268.y, x_268.z) * vec3<f32>(x_270.z, x_270.z, x_270.z)) + vec3<f32>(x_273.x, x_273.y, x_273.z));
  let x_276 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_275.x, x_275.y, x_275.z, x_276.w);
  let x_278 : vec4<f32> = u_xlat6;
  let x_282 : vec4<f32> = x_249.x_MainLightWorldToShadow[0i][3i];
  let x_284 : vec3<f32> = (vec3<f32>(x_278.x, x_278.y, x_278.z) + vec3<f32>(x_282.x, x_282.y, x_282.z));
  let x_285 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_284.x, x_284.y, x_284.z, x_285.w);
  let x_288 : f32 = x_249.x_MainLightShadowParams.y;
  u_xlatb78 = (0.0f < x_288);
  let x_290 : bool = u_xlatb78;
  if (x_290) {
    let x_295 : f32 = x_249.x_MainLightShadowParams.y;
    u_xlatb79 = (x_295 == 1.0f);
    let x_297 : bool = u_xlatb79;
    if (x_297) {
      let x_301 : vec4<f32> = u_xlat6;
      let x_305 : vec4<f32> = x_249.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_301.x, x_301.y, x_301.x, x_301.y) + x_305);
      let x_308 : vec4<f32> = u_xlat7;
      let x_309 : vec2<f32> = vec2<f32>(x_308.x, x_308.y);
      let x_311 : f32 = u_xlat6.z;
      txVec0 = vec3<f32>(x_309.x, x_309.y, x_311);
      let x_324 : vec3<f32> = txVec0;
      let x_326 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_324.xy, x_324.z);
      u_xlat8.x = x_326;
      let x_329 : vec4<f32> = u_xlat7;
      let x_330 : vec2<f32> = vec2<f32>(x_329.z, x_329.w);
      let x_332 : f32 = u_xlat6.z;
      txVec1 = vec3<f32>(x_330.x, x_330.y, x_332);
      let x_339 : vec3<f32> = txVec1;
      let x_341 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_339.xy, x_339.z);
      u_xlat8.y = x_341;
      let x_343 : vec4<f32> = u_xlat6;
      let x_347 : vec4<f32> = x_249.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_343.x, x_343.y, x_343.x, x_343.y) + x_347);
      let x_350 : vec4<f32> = u_xlat7;
      let x_351 : vec2<f32> = vec2<f32>(x_350.x, x_350.y);
      let x_353 : f32 = u_xlat6.z;
      txVec2 = vec3<f32>(x_351.x, x_351.y, x_353);
      let x_360 : vec3<f32> = txVec2;
      let x_362 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_360.xy, x_360.z);
      u_xlat8.z = x_362;
      let x_365 : vec4<f32> = u_xlat7;
      let x_366 : vec2<f32> = vec2<f32>(x_365.z, x_365.w);
      let x_368 : f32 = u_xlat6.z;
      txVec3 = vec3<f32>(x_366.x, x_366.y, x_368);
      let x_375 : vec3<f32> = txVec3;
      let x_377 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_375.xy, x_375.z);
      u_xlat8.w = x_377;
      let x_379 : vec4<f32> = u_xlat8;
      u_xlat79 = dot(x_379, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_386 : f32 = x_249.x_MainLightShadowParams.y;
      u_xlatb80 = (x_386 == 2.0f);
      let x_388 : bool = u_xlatb80;
      if (x_388) {
        let x_391 : vec4<f32> = u_xlat6;
        let x_395 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_400 : vec2<f32> = ((vec2<f32>(x_391.x, x_391.y) * vec2<f32>(x_395.z, x_395.w)) + vec2<f32>(0.5f, 0.5f));
        let x_401 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_400.x, x_400.y, x_401.z, x_401.w);
        let x_403 : vec4<f32> = u_xlat7;
        let x_405 : vec2<f32> = floor(vec2<f32>(x_403.x, x_403.y));
        let x_406 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_405.x, x_405.y, x_406.z, x_406.w);
        let x_410 : vec4<f32> = u_xlat6;
        let x_413 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_416 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_410.x, x_410.y) * vec2<f32>(x_413.z, x_413.w)) + -(vec2<f32>(x_416.x, x_416.y)));
        let x_420 : vec2<f32> = u_xlat59;
        u_xlat8 = (vec4<f32>(x_420.x, x_420.x, x_420.y, x_420.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_425 : vec4<f32> = u_xlat8;
        let x_427 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_425.x, x_425.x, x_425.z, x_425.z) * vec4<f32>(x_427.x, x_427.x, x_427.z, x_427.z));
        let x_430 : vec4<f32> = u_xlat9;
        let x_434 : vec2<f32> = (vec2<f32>(x_430.y, x_430.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_435 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_434.x, x_435.y, x_434.y, x_435.w);
        let x_437 : vec4<f32> = u_xlat9;
        let x_440 : vec2<f32> = u_xlat59;
        let x_442 : vec2<f32> = ((vec2<f32>(x_437.x, x_437.z) * vec2<f32>(0.5f, 0.5f)) + -(x_440));
        let x_443 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_442.x, x_442.y, x_443.z, x_443.w);
        let x_446 : vec2<f32> = u_xlat59;
        u_xlat61 = (-(x_446) + vec2<f32>(1.0f, 1.0f));
        let x_451 : vec2<f32> = u_xlat59;
        let x_453 : vec2<f32> = min(x_451, vec2<f32>(0.0f, 0.0f));
        let x_454 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_453.x, x_453.y, x_454.z, x_454.w);
        let x_456 : vec4<f32> = u_xlat10;
        let x_459 : vec4<f32> = u_xlat10;
        let x_462 : vec2<f32> = u_xlat61;
        let x_463 : vec2<f32> = ((-(vec2<f32>(x_456.x, x_456.y)) * vec2<f32>(x_459.x, x_459.y)) + x_462);
        let x_464 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_463.x, x_463.y, x_464.z, x_464.w);
        let x_466 : vec2<f32> = u_xlat59;
        u_xlat59 = max(x_466, vec2<f32>(0.0f, 0.0f));
        let x_468 : vec2<f32> = u_xlat59;
        let x_470 : vec2<f32> = u_xlat59;
        let x_472 : vec4<f32> = u_xlat8;
        u_xlat59 = ((-(x_468) * x_470) + vec2<f32>(x_472.y, x_472.w));
        let x_475 : vec4<f32> = u_xlat10;
        let x_477 : vec2<f32> = (vec2<f32>(x_475.x, x_475.y) + vec2<f32>(1.0f, 1.0f));
        let x_478 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_477.x, x_477.y, x_478.z, x_478.w);
        let x_480 : vec2<f32> = u_xlat59;
        u_xlat59 = (x_480 + vec2<f32>(1.0f, 1.0f));
        let x_483 : vec4<f32> = u_xlat9;
        let x_487 : vec2<f32> = (vec2<f32>(x_483.x, x_483.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_488 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_487.x, x_487.y, x_488.z, x_488.w);
        let x_490 : vec2<f32> = u_xlat61;
        let x_491 : vec2<f32> = (x_490 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_492 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_491.x, x_491.y, x_492.z, x_492.w);
        let x_494 : vec4<f32> = u_xlat10;
        let x_496 : vec2<f32> = (vec2<f32>(x_494.x, x_494.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_497 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_496.x, x_496.y, x_497.z, x_497.w);
        let x_500 : vec2<f32> = u_xlat59;
        let x_501 : vec2<f32> = (x_500 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_502 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_501.x, x_501.y, x_502.z, x_502.w);
        let x_504 : vec4<f32> = u_xlat8;
        u_xlat59 = (vec2<f32>(x_504.y, x_504.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_508 : f32 = u_xlat10.x;
        u_xlat11.z = x_508;
        let x_511 : f32 = u_xlat59.x;
        u_xlat11.w = x_511;
        let x_514 : f32 = u_xlat12.x;
        u_xlat9.z = x_514;
        let x_517 : f32 = u_xlat8.x;
        u_xlat9.w = x_517;
        let x_520 : vec4<f32> = u_xlat9;
        let x_522 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_520.z, x_520.w, x_520.x, x_520.z) + vec4<f32>(x_522.z, x_522.w, x_522.x, x_522.z));
        let x_526 : f32 = u_xlat11.y;
        u_xlat10.z = x_526;
        let x_529 : f32 = u_xlat59.y;
        u_xlat10.w = x_529;
        let x_532 : f32 = u_xlat9.y;
        u_xlat12.z = x_532;
        let x_535 : f32 = u_xlat8.z;
        u_xlat12.w = x_535;
        let x_537 : vec4<f32> = u_xlat10;
        let x_539 : vec4<f32> = u_xlat12;
        let x_541 : vec3<f32> = (vec3<f32>(x_537.z, x_537.y, x_537.w) + vec3<f32>(x_539.z, x_539.y, x_539.w));
        let x_542 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_541.x, x_541.y, x_541.z, x_542.w);
        let x_544 : vec4<f32> = u_xlat9;
        let x_546 : vec4<f32> = u_xlat13;
        let x_548 : vec3<f32> = (vec3<f32>(x_544.x, x_544.z, x_544.w) / vec3<f32>(x_546.z, x_546.w, x_546.y));
        let x_549 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_548.x, x_548.y, x_548.z, x_549.w);
        let x_551 : vec4<f32> = u_xlat9;
        let x_557 : vec3<f32> = (vec3<f32>(x_551.x, x_551.y, x_551.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_558 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_557.x, x_557.y, x_557.z, x_558.w);
        let x_560 : vec4<f32> = u_xlat12;
        let x_562 : vec4<f32> = u_xlat8;
        let x_564 : vec3<f32> = (vec3<f32>(x_560.z, x_560.y, x_560.w) / vec3<f32>(x_562.x, x_562.y, x_562.z));
        let x_565 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_564.x, x_564.y, x_564.z, x_565.w);
        let x_567 : vec4<f32> = u_xlat10;
        let x_569 : vec3<f32> = (vec3<f32>(x_567.x, x_567.y, x_567.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_570 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_569.x, x_569.y, x_569.z, x_570.w);
        let x_572 : vec4<f32> = u_xlat9;
        let x_575 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_577 : vec3<f32> = (vec3<f32>(x_572.y, x_572.x, x_572.z) * vec3<f32>(x_575.x, x_575.x, x_575.x));
        let x_578 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_577.x, x_577.y, x_577.z, x_578.w);
        let x_580 : vec4<f32> = u_xlat10;
        let x_583 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_585 : vec3<f32> = (vec3<f32>(x_580.x, x_580.y, x_580.z) * vec3<f32>(x_583.y, x_583.y, x_583.y));
        let x_586 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_585.x, x_585.y, x_585.z, x_586.w);
        let x_589 : f32 = u_xlat10.x;
        u_xlat9.w = x_589;
        let x_591 : vec4<f32> = u_xlat7;
        let x_594 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_597 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_591.x, x_591.y, x_591.x, x_591.y) * vec4<f32>(x_594.x, x_594.y, x_594.x, x_594.y)) + vec4<f32>(x_597.y, x_597.w, x_597.x, x_597.w));
        let x_600 : vec4<f32> = u_xlat7;
        let x_603 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_606 : vec4<f32> = u_xlat9;
        u_xlat59 = ((vec2<f32>(x_600.x, x_600.y) * vec2<f32>(x_603.x, x_603.y)) + vec2<f32>(x_606.z, x_606.w));
        let x_610 : f32 = u_xlat9.y;
        u_xlat10.w = x_610;
        let x_612 : vec4<f32> = u_xlat10;
        let x_613 : vec2<f32> = vec2<f32>(x_612.y, x_612.z);
        let x_614 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_614.x, x_613.x, x_614.z, x_613.y);
        let x_616 : vec4<f32> = u_xlat7;
        let x_619 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_622 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_616.x, x_616.y, x_616.x, x_616.y) * vec4<f32>(x_619.x, x_619.y, x_619.x, x_619.y)) + vec4<f32>(x_622.x, x_622.y, x_622.z, x_622.y));
        let x_625 : vec4<f32> = u_xlat7;
        let x_628 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_631 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_625.x, x_625.y, x_625.x, x_625.y) * vec4<f32>(x_628.x, x_628.y, x_628.x, x_628.y)) + vec4<f32>(x_631.w, x_631.y, x_631.w, x_631.z));
        let x_634 : vec4<f32> = u_xlat7;
        let x_637 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_640 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_634.x, x_634.y, x_634.x, x_634.y) * vec4<f32>(x_637.x, x_637.y, x_637.x, x_637.y)) + vec4<f32>(x_640.x, x_640.w, x_640.z, x_640.w));
        let x_644 : vec4<f32> = u_xlat8;
        let x_646 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_644.x, x_644.x, x_644.x, x_644.y) * vec4<f32>(x_646.z, x_646.w, x_646.y, x_646.z));
        let x_650 : vec4<f32> = u_xlat8;
        let x_652 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_650.y, x_650.y, x_650.z, x_650.z) * x_652);
        let x_656 : f32 = u_xlat8.z;
        let x_658 : f32 = u_xlat13.y;
        u_xlat80 = (x_656 * x_658);
        let x_661 : vec4<f32> = u_xlat11;
        let x_662 : vec2<f32> = vec2<f32>(x_661.x, x_661.y);
        let x_664 : f32 = u_xlat6.z;
        txVec4 = vec3<f32>(x_662.x, x_662.y, x_664);
        let x_672 : vec3<f32> = txVec4;
        let x_674 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_672.xy, x_672.z);
        u_xlat82 = x_674;
        let x_676 : vec4<f32> = u_xlat11;
        let x_677 : vec2<f32> = vec2<f32>(x_676.z, x_676.w);
        let x_679 : f32 = u_xlat6.z;
        txVec5 = vec3<f32>(x_677.x, x_677.y, x_679);
        let x_687 : vec3<f32> = txVec5;
        let x_689 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_687.xy, x_687.z);
        u_xlat84 = x_689;
        let x_690 : f32 = u_xlat84;
        let x_692 : f32 = u_xlat14.y;
        u_xlat84 = (x_690 * x_692);
        let x_695 : f32 = u_xlat14.x;
        let x_696 : f32 = u_xlat82;
        let x_698 : f32 = u_xlat84;
        u_xlat82 = ((x_695 * x_696) + x_698);
        let x_701 : vec2<f32> = u_xlat59;
        let x_703 : f32 = u_xlat6.z;
        txVec6 = vec3<f32>(x_701.x, x_701.y, x_703);
        let x_710 : vec3<f32> = txVec6;
        let x_712 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_710.xy, x_710.z);
        u_xlat84 = x_712;
        let x_714 : f32 = u_xlat14.z;
        let x_715 : f32 = u_xlat84;
        let x_717 : f32 = u_xlat82;
        u_xlat82 = ((x_714 * x_715) + x_717);
        let x_720 : vec4<f32> = u_xlat10;
        let x_721 : vec2<f32> = vec2<f32>(x_720.x, x_720.y);
        let x_723 : f32 = u_xlat6.z;
        txVec7 = vec3<f32>(x_721.x, x_721.y, x_723);
        let x_730 : vec3<f32> = txVec7;
        let x_732 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_730.xy, x_730.z);
        u_xlat84 = x_732;
        let x_734 : f32 = u_xlat14.w;
        let x_735 : f32 = u_xlat84;
        let x_737 : f32 = u_xlat82;
        u_xlat82 = ((x_734 * x_735) + x_737);
        let x_740 : vec4<f32> = u_xlat12;
        let x_741 : vec2<f32> = vec2<f32>(x_740.x, x_740.y);
        let x_743 : f32 = u_xlat6.z;
        txVec8 = vec3<f32>(x_741.x, x_741.y, x_743);
        let x_750 : vec3<f32> = txVec8;
        let x_752 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_750.xy, x_750.z);
        u_xlat84 = x_752;
        let x_754 : f32 = u_xlat15.x;
        let x_755 : f32 = u_xlat84;
        let x_757 : f32 = u_xlat82;
        u_xlat82 = ((x_754 * x_755) + x_757);
        let x_760 : vec4<f32> = u_xlat12;
        let x_761 : vec2<f32> = vec2<f32>(x_760.z, x_760.w);
        let x_763 : f32 = u_xlat6.z;
        txVec9 = vec3<f32>(x_761.x, x_761.y, x_763);
        let x_770 : vec3<f32> = txVec9;
        let x_772 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_770.xy, x_770.z);
        u_xlat84 = x_772;
        let x_774 : f32 = u_xlat15.y;
        let x_775 : f32 = u_xlat84;
        let x_777 : f32 = u_xlat82;
        u_xlat82 = ((x_774 * x_775) + x_777);
        let x_780 : vec4<f32> = u_xlat10;
        let x_781 : vec2<f32> = vec2<f32>(x_780.z, x_780.w);
        let x_783 : f32 = u_xlat6.z;
        txVec10 = vec3<f32>(x_781.x, x_781.y, x_783);
        let x_790 : vec3<f32> = txVec10;
        let x_792 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_790.xy, x_790.z);
        u_xlat84 = x_792;
        let x_794 : f32 = u_xlat15.z;
        let x_795 : f32 = u_xlat84;
        let x_797 : f32 = u_xlat82;
        u_xlat82 = ((x_794 * x_795) + x_797);
        let x_800 : vec4<f32> = u_xlat9;
        let x_801 : vec2<f32> = vec2<f32>(x_800.x, x_800.y);
        let x_803 : f32 = u_xlat6.z;
        txVec11 = vec3<f32>(x_801.x, x_801.y, x_803);
        let x_810 : vec3<f32> = txVec11;
        let x_812 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_810.xy, x_810.z);
        u_xlat84 = x_812;
        let x_814 : f32 = u_xlat15.w;
        let x_815 : f32 = u_xlat84;
        let x_817 : f32 = u_xlat82;
        u_xlat82 = ((x_814 * x_815) + x_817);
        let x_820 : vec4<f32> = u_xlat9;
        let x_821 : vec2<f32> = vec2<f32>(x_820.z, x_820.w);
        let x_823 : f32 = u_xlat6.z;
        txVec12 = vec3<f32>(x_821.x, x_821.y, x_823);
        let x_830 : vec3<f32> = txVec12;
        let x_832 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_830.xy, x_830.z);
        u_xlat84 = x_832;
        let x_833 : f32 = u_xlat80;
        let x_834 : f32 = u_xlat84;
        let x_836 : f32 = u_xlat82;
        u_xlat79 = ((x_833 * x_834) + x_836);
      } else {
        let x_839 : vec4<f32> = u_xlat6;
        let x_842 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_845 : vec2<f32> = ((vec2<f32>(x_839.x, x_839.y) * vec2<f32>(x_842.z, x_842.w)) + vec2<f32>(0.5f, 0.5f));
        let x_846 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_845.x, x_845.y, x_846.z, x_846.w);
        let x_848 : vec4<f32> = u_xlat7;
        let x_850 : vec2<f32> = floor(vec2<f32>(x_848.x, x_848.y));
        let x_851 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_850.x, x_850.y, x_851.z, x_851.w);
        let x_853 : vec4<f32> = u_xlat6;
        let x_856 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_859 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_853.x, x_853.y) * vec2<f32>(x_856.z, x_856.w)) + -(vec2<f32>(x_859.x, x_859.y)));
        let x_863 : vec2<f32> = u_xlat59;
        u_xlat8 = (vec4<f32>(x_863.x, x_863.x, x_863.y, x_863.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_866 : vec4<f32> = u_xlat8;
        let x_868 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_866.x, x_866.x, x_866.z, x_866.z) * vec4<f32>(x_868.x, x_868.x, x_868.z, x_868.z));
        let x_871 : vec4<f32> = u_xlat9;
        let x_875 : vec2<f32> = (vec2<f32>(x_871.y, x_871.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_876 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_876.x, x_875.x, x_876.z, x_875.y);
        let x_878 : vec4<f32> = u_xlat9;
        let x_881 : vec2<f32> = u_xlat59;
        let x_883 : vec2<f32> = ((vec2<f32>(x_878.x, x_878.z) * vec2<f32>(0.5f, 0.5f)) + -(x_881));
        let x_884 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_883.x, x_884.y, x_883.y, x_884.w);
        let x_886 : vec2<f32> = u_xlat59;
        let x_888 : vec2<f32> = (-(x_886) + vec2<f32>(1.0f, 1.0f));
        let x_889 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_888.x, x_888.y, x_889.z, x_889.w);
        let x_891 : vec2<f32> = u_xlat59;
        u_xlat61 = min(x_891, vec2<f32>(0.0f, 0.0f));
        let x_893 : vec2<f32> = u_xlat61;
        let x_895 : vec2<f32> = u_xlat61;
        let x_897 : vec4<f32> = u_xlat9;
        let x_899 : vec2<f32> = ((-(x_893) * x_895) + vec2<f32>(x_897.x, x_897.y));
        let x_900 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_899.x, x_899.y, x_900.z, x_900.w);
        let x_902 : vec2<f32> = u_xlat59;
        u_xlat61 = max(x_902, vec2<f32>(0.0f, 0.0f));
        let x_905 : vec2<f32> = u_xlat61;
        let x_907 : vec2<f32> = u_xlat61;
        let x_909 : vec4<f32> = u_xlat8;
        let x_911 : vec2<f32> = ((-(x_905) * x_907) + vec2<f32>(x_909.y, x_909.w));
        let x_912 : vec3<f32> = u_xlat34;
        u_xlat34 = vec3<f32>(x_911.x, x_912.y, x_911.y);
        let x_914 : vec4<f32> = u_xlat9;
        let x_917 : vec2<f32> = (vec2<f32>(x_914.x, x_914.y) + vec2<f32>(2.0f, 2.0f));
        let x_918 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_917.x, x_917.y, x_918.z, x_918.w);
        let x_920 : vec3<f32> = u_xlat34;
        let x_922 : vec2<f32> = (vec2<f32>(x_920.x, x_920.z) + vec2<f32>(2.0f, 2.0f));
        let x_923 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_923.x, x_922.x, x_923.z, x_922.y);
        let x_926 : f32 = u_xlat8.y;
        u_xlat11.z = (x_926 * 0.08163200318813323975f);
        let x_930 : vec4<f32> = u_xlat8;
        let x_933 : vec3<f32> = (vec3<f32>(x_930.z, x_930.x, x_930.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_934 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_933.x, x_933.y, x_933.z, x_934.w);
        let x_936 : vec4<f32> = u_xlat9;
        let x_939 : vec2<f32> = (vec2<f32>(x_936.x, x_936.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_940 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_939.x, x_939.y, x_940.z, x_940.w);
        let x_943 : f32 = u_xlat12.y;
        u_xlat11.x = x_943;
        let x_945 : vec2<f32> = u_xlat59;
        let x_952 : vec2<f32> = ((vec2<f32>(x_945.x, x_945.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_953 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_953.x, x_952.x, x_953.z, x_952.y);
        let x_955 : vec2<f32> = u_xlat59;
        let x_959 : vec2<f32> = ((vec2<f32>(x_955.x, x_955.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_960 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_959.x, x_960.y, x_959.y, x_960.w);
        let x_963 : f32 = u_xlat8.x;
        u_xlat9.y = x_963;
        let x_966 : f32 = u_xlat10.y;
        u_xlat9.w = x_966;
        let x_968 : vec4<f32> = u_xlat9;
        let x_969 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_968 + x_969);
        let x_971 : vec2<f32> = u_xlat59;
        let x_974 : vec2<f32> = ((vec2<f32>(x_971.y, x_971.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_975 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_975.x, x_974.x, x_975.z, x_974.y);
        let x_977 : vec2<f32> = u_xlat59;
        let x_980 : vec2<f32> = ((vec2<f32>(x_977.y, x_977.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_981 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_980.x, x_981.y, x_980.y, x_981.w);
        let x_984 : f32 = u_xlat8.y;
        u_xlat10.y = x_984;
        let x_986 : vec4<f32> = u_xlat10;
        let x_987 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_986 + x_987);
        let x_989 : vec4<f32> = u_xlat9;
        let x_990 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_989 / x_990);
        let x_992 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_992 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_998 : vec4<f32> = u_xlat10;
        let x_999 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_998 / x_999);
        let x_1001 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1001 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1003 : vec4<f32> = u_xlat9;
        let x_1006 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1003.w, x_1003.x, x_1003.y, x_1003.z) * vec4<f32>(x_1006.x, x_1006.x, x_1006.x, x_1006.x));
        let x_1009 : vec4<f32> = u_xlat10;
        let x_1012 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1009.x, x_1009.w, x_1009.y, x_1009.z) * vec4<f32>(x_1012.y, x_1012.y, x_1012.y, x_1012.y));
        let x_1015 : vec4<f32> = u_xlat9;
        let x_1016 : vec3<f32> = vec3<f32>(x_1015.y, x_1015.z, x_1015.w);
        let x_1017 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1016.x, x_1017.y, x_1016.y, x_1016.z);
        let x_1020 : f32 = u_xlat10.x;
        u_xlat12.y = x_1020;
        let x_1022 : vec4<f32> = u_xlat7;
        let x_1025 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1028 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1022.x, x_1022.y, x_1022.x, x_1022.y) * vec4<f32>(x_1025.x, x_1025.y, x_1025.x, x_1025.y)) + vec4<f32>(x_1028.x, x_1028.y, x_1028.z, x_1028.y));
        let x_1031 : vec4<f32> = u_xlat7;
        let x_1034 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1037 : vec4<f32> = u_xlat12;
        u_xlat59 = ((vec2<f32>(x_1031.x, x_1031.y) * vec2<f32>(x_1034.x, x_1034.y)) + vec2<f32>(x_1037.w, x_1037.y));
        let x_1041 : f32 = u_xlat12.y;
        u_xlat9.y = x_1041;
        let x_1044 : f32 = u_xlat10.z;
        u_xlat12.y = x_1044;
        let x_1046 : vec4<f32> = u_xlat7;
        let x_1049 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1052 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1046.x, x_1046.y, x_1046.x, x_1046.y) * vec4<f32>(x_1049.x, x_1049.y, x_1049.x, x_1049.y)) + vec4<f32>(x_1052.x, x_1052.y, x_1052.z, x_1052.y));
        let x_1055 : vec4<f32> = u_xlat7;
        let x_1058 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1061 : vec4<f32> = u_xlat12;
        let x_1063 : vec2<f32> = ((vec2<f32>(x_1055.x, x_1055.y) * vec2<f32>(x_1058.x, x_1058.y)) + vec2<f32>(x_1061.w, x_1061.y));
        let x_1064 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1063.x, x_1063.y, x_1064.z, x_1064.w);
        let x_1067 : f32 = u_xlat12.y;
        u_xlat9.z = x_1067;
        let x_1070 : vec4<f32> = u_xlat7;
        let x_1073 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1076 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1070.x, x_1070.y, x_1070.x, x_1070.y) * vec4<f32>(x_1073.x, x_1073.y, x_1073.x, x_1073.y)) + vec4<f32>(x_1076.x, x_1076.y, x_1076.x, x_1076.z));
        let x_1080 : f32 = u_xlat10.w;
        u_xlat12.y = x_1080;
        let x_1083 : vec4<f32> = u_xlat7;
        let x_1086 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1089 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1083.x, x_1083.y, x_1083.x, x_1083.y) * vec4<f32>(x_1086.x, x_1086.y, x_1086.x, x_1086.y)) + vec4<f32>(x_1089.x, x_1089.y, x_1089.z, x_1089.y));
        let x_1093 : vec4<f32> = u_xlat7;
        let x_1096 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1099 : vec4<f32> = u_xlat12;
        let x_1101 : vec2<f32> = ((vec2<f32>(x_1093.x, x_1093.y) * vec2<f32>(x_1096.x, x_1096.y)) + vec2<f32>(x_1099.w, x_1099.y));
        let x_1102 : vec3<f32> = u_xlat35;
        u_xlat35 = vec3<f32>(x_1101.x, x_1101.y, x_1102.z);
        let x_1105 : f32 = u_xlat12.y;
        u_xlat9.w = x_1105;
        let x_1108 : vec4<f32> = u_xlat7;
        let x_1111 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1114 : vec4<f32> = u_xlat9;
        u_xlat67 = ((vec2<f32>(x_1108.x, x_1108.y) * vec2<f32>(x_1111.x, x_1111.y)) + vec2<f32>(x_1114.x, x_1114.w));
        let x_1117 : vec4<f32> = u_xlat12;
        let x_1118 : vec3<f32> = vec3<f32>(x_1117.x, x_1117.z, x_1117.w);
        let x_1119 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1118.x, x_1119.y, x_1118.y, x_1118.z);
        let x_1121 : vec4<f32> = u_xlat7;
        let x_1124 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1127 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1121.x, x_1121.y, x_1121.x, x_1121.y) * vec4<f32>(x_1124.x, x_1124.y, x_1124.x, x_1124.y)) + vec4<f32>(x_1127.x, x_1127.y, x_1127.z, x_1127.y));
        let x_1131 : vec4<f32> = u_xlat7;
        let x_1134 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1137 : vec4<f32> = u_xlat10;
        u_xlat62 = ((vec2<f32>(x_1131.x, x_1131.y) * vec2<f32>(x_1134.x, x_1134.y)) + vec2<f32>(x_1137.w, x_1137.y));
        let x_1141 : f32 = u_xlat9.x;
        u_xlat10.x = x_1141;
        let x_1143 : vec4<f32> = u_xlat7;
        let x_1146 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1149 : vec4<f32> = u_xlat10;
        let x_1151 : vec2<f32> = ((vec2<f32>(x_1143.x, x_1143.y) * vec2<f32>(x_1146.x, x_1146.y)) + vec2<f32>(x_1149.x, x_1149.y));
        let x_1152 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1151.x, x_1151.y, x_1152.z, x_1152.w);
        let x_1155 : vec4<f32> = u_xlat8;
        let x_1157 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1155.x, x_1155.x, x_1155.x, x_1155.x) * x_1157);
        let x_1160 : vec4<f32> = u_xlat8;
        let x_1162 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1160.y, x_1160.y, x_1160.y, x_1160.y) * x_1162);
        let x_1165 : vec4<f32> = u_xlat8;
        let x_1167 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1165.z, x_1165.z, x_1165.z, x_1165.z) * x_1167);
        let x_1169 : vec4<f32> = u_xlat8;
        let x_1171 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1169.w, x_1169.w, x_1169.w, x_1169.w) * x_1171);
        let x_1174 : vec4<f32> = u_xlat13;
        let x_1175 : vec2<f32> = vec2<f32>(x_1174.x, x_1174.y);
        let x_1177 : f32 = u_xlat6.z;
        txVec13 = vec3<f32>(x_1175.x, x_1175.y, x_1177);
        let x_1184 : vec3<f32> = txVec13;
        let x_1186 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1184.xy, x_1184.z);
        u_xlat80 = x_1186;
        let x_1188 : vec4<f32> = u_xlat13;
        let x_1189 : vec2<f32> = vec2<f32>(x_1188.z, x_1188.w);
        let x_1191 : f32 = u_xlat6.z;
        txVec14 = vec3<f32>(x_1189.x, x_1189.y, x_1191);
        let x_1198 : vec3<f32> = txVec14;
        let x_1200 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1198.xy, x_1198.z);
        u_xlat82 = x_1200;
        let x_1201 : f32 = u_xlat82;
        let x_1203 : f32 = u_xlat18.y;
        u_xlat82 = (x_1201 * x_1203);
        let x_1206 : f32 = u_xlat18.x;
        let x_1207 : f32 = u_xlat80;
        let x_1209 : f32 = u_xlat82;
        u_xlat80 = ((x_1206 * x_1207) + x_1209);
        let x_1212 : vec2<f32> = u_xlat59;
        let x_1214 : f32 = u_xlat6.z;
        txVec15 = vec3<f32>(x_1212.x, x_1212.y, x_1214);
        let x_1221 : vec3<f32> = txVec15;
        let x_1223 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1221.xy, x_1221.z);
        u_xlat82 = x_1223;
        let x_1225 : f32 = u_xlat18.z;
        let x_1226 : f32 = u_xlat82;
        let x_1228 : f32 = u_xlat80;
        u_xlat80 = ((x_1225 * x_1226) + x_1228);
        let x_1231 : vec4<f32> = u_xlat16;
        let x_1232 : vec2<f32> = vec2<f32>(x_1231.x, x_1231.y);
        let x_1234 : f32 = u_xlat6.z;
        txVec16 = vec3<f32>(x_1232.x, x_1232.y, x_1234);
        let x_1241 : vec3<f32> = txVec16;
        let x_1243 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1241.xy, x_1241.z);
        u_xlat82 = x_1243;
        let x_1245 : f32 = u_xlat18.w;
        let x_1246 : f32 = u_xlat82;
        let x_1248 : f32 = u_xlat80;
        u_xlat80 = ((x_1245 * x_1246) + x_1248);
        let x_1251 : vec4<f32> = u_xlat14;
        let x_1252 : vec2<f32> = vec2<f32>(x_1251.x, x_1251.y);
        let x_1254 : f32 = u_xlat6.z;
        txVec17 = vec3<f32>(x_1252.x, x_1252.y, x_1254);
        let x_1261 : vec3<f32> = txVec17;
        let x_1263 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1261.xy, x_1261.z);
        u_xlat82 = x_1263;
        let x_1265 : f32 = u_xlat19.x;
        let x_1266 : f32 = u_xlat82;
        let x_1268 : f32 = u_xlat80;
        u_xlat80 = ((x_1265 * x_1266) + x_1268);
        let x_1271 : vec4<f32> = u_xlat14;
        let x_1272 : vec2<f32> = vec2<f32>(x_1271.z, x_1271.w);
        let x_1274 : f32 = u_xlat6.z;
        txVec18 = vec3<f32>(x_1272.x, x_1272.y, x_1274);
        let x_1281 : vec3<f32> = txVec18;
        let x_1283 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1281.xy, x_1281.z);
        u_xlat82 = x_1283;
        let x_1285 : f32 = u_xlat19.y;
        let x_1286 : f32 = u_xlat82;
        let x_1288 : f32 = u_xlat80;
        u_xlat80 = ((x_1285 * x_1286) + x_1288);
        let x_1291 : vec4<f32> = u_xlat15;
        let x_1292 : vec2<f32> = vec2<f32>(x_1291.x, x_1291.y);
        let x_1294 : f32 = u_xlat6.z;
        txVec19 = vec3<f32>(x_1292.x, x_1292.y, x_1294);
        let x_1301 : vec3<f32> = txVec19;
        let x_1303 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1301.xy, x_1301.z);
        u_xlat82 = x_1303;
        let x_1305 : f32 = u_xlat19.z;
        let x_1306 : f32 = u_xlat82;
        let x_1308 : f32 = u_xlat80;
        u_xlat80 = ((x_1305 * x_1306) + x_1308);
        let x_1311 : vec4<f32> = u_xlat16;
        let x_1312 : vec2<f32> = vec2<f32>(x_1311.z, x_1311.w);
        let x_1314 : f32 = u_xlat6.z;
        txVec20 = vec3<f32>(x_1312.x, x_1312.y, x_1314);
        let x_1321 : vec3<f32> = txVec20;
        let x_1323 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1321.xy, x_1321.z);
        u_xlat82 = x_1323;
        let x_1325 : f32 = u_xlat19.w;
        let x_1326 : f32 = u_xlat82;
        let x_1328 : f32 = u_xlat80;
        u_xlat80 = ((x_1325 * x_1326) + x_1328);
        let x_1331 : vec4<f32> = u_xlat17;
        let x_1332 : vec2<f32> = vec2<f32>(x_1331.x, x_1331.y);
        let x_1334 : f32 = u_xlat6.z;
        txVec21 = vec3<f32>(x_1332.x, x_1332.y, x_1334);
        let x_1341 : vec3<f32> = txVec21;
        let x_1343 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1341.xy, x_1341.z);
        u_xlat82 = x_1343;
        let x_1345 : f32 = u_xlat20.x;
        let x_1346 : f32 = u_xlat82;
        let x_1348 : f32 = u_xlat80;
        u_xlat80 = ((x_1345 * x_1346) + x_1348);
        let x_1351 : vec4<f32> = u_xlat17;
        let x_1352 : vec2<f32> = vec2<f32>(x_1351.z, x_1351.w);
        let x_1354 : f32 = u_xlat6.z;
        txVec22 = vec3<f32>(x_1352.x, x_1352.y, x_1354);
        let x_1361 : vec3<f32> = txVec22;
        let x_1363 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1361.xy, x_1361.z);
        u_xlat82 = x_1363;
        let x_1365 : f32 = u_xlat20.y;
        let x_1366 : f32 = u_xlat82;
        let x_1368 : f32 = u_xlat80;
        u_xlat80 = ((x_1365 * x_1366) + x_1368);
        let x_1371 : vec3<f32> = u_xlat35;
        let x_1372 : vec2<f32> = vec2<f32>(x_1371.x, x_1371.y);
        let x_1374 : f32 = u_xlat6.z;
        txVec23 = vec3<f32>(x_1372.x, x_1372.y, x_1374);
        let x_1381 : vec3<f32> = txVec23;
        let x_1383 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1381.xy, x_1381.z);
        u_xlat82 = x_1383;
        let x_1385 : f32 = u_xlat20.z;
        let x_1386 : f32 = u_xlat82;
        let x_1388 : f32 = u_xlat80;
        u_xlat80 = ((x_1385 * x_1386) + x_1388);
        let x_1391 : vec2<f32> = u_xlat67;
        let x_1393 : f32 = u_xlat6.z;
        txVec24 = vec3<f32>(x_1391.x, x_1391.y, x_1393);
        let x_1400 : vec3<f32> = txVec24;
        let x_1402 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1400.xy, x_1400.z);
        u_xlat82 = x_1402;
        let x_1404 : f32 = u_xlat20.w;
        let x_1405 : f32 = u_xlat82;
        let x_1407 : f32 = u_xlat80;
        u_xlat80 = ((x_1404 * x_1405) + x_1407);
        let x_1410 : vec4<f32> = u_xlat12;
        let x_1411 : vec2<f32> = vec2<f32>(x_1410.x, x_1410.y);
        let x_1413 : f32 = u_xlat6.z;
        txVec25 = vec3<f32>(x_1411.x, x_1411.y, x_1413);
        let x_1420 : vec3<f32> = txVec25;
        let x_1422 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1420.xy, x_1420.z);
        u_xlat82 = x_1422;
        let x_1424 : f32 = u_xlat8.x;
        let x_1425 : f32 = u_xlat82;
        let x_1427 : f32 = u_xlat80;
        u_xlat80 = ((x_1424 * x_1425) + x_1427);
        let x_1430 : vec4<f32> = u_xlat12;
        let x_1431 : vec2<f32> = vec2<f32>(x_1430.z, x_1430.w);
        let x_1433 : f32 = u_xlat6.z;
        txVec26 = vec3<f32>(x_1431.x, x_1431.y, x_1433);
        let x_1440 : vec3<f32> = txVec26;
        let x_1442 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1440.xy, x_1440.z);
        u_xlat82 = x_1442;
        let x_1444 : f32 = u_xlat8.y;
        let x_1445 : f32 = u_xlat82;
        let x_1447 : f32 = u_xlat80;
        u_xlat80 = ((x_1444 * x_1445) + x_1447);
        let x_1450 : vec2<f32> = u_xlat62;
        let x_1452 : f32 = u_xlat6.z;
        txVec27 = vec3<f32>(x_1450.x, x_1450.y, x_1452);
        let x_1459 : vec3<f32> = txVec27;
        let x_1461 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1459.xy, x_1459.z);
        u_xlat82 = x_1461;
        let x_1463 : f32 = u_xlat8.z;
        let x_1464 : f32 = u_xlat82;
        let x_1466 : f32 = u_xlat80;
        u_xlat80 = ((x_1463 * x_1464) + x_1466);
        let x_1469 : vec4<f32> = u_xlat7;
        let x_1470 : vec2<f32> = vec2<f32>(x_1469.x, x_1469.y);
        let x_1472 : f32 = u_xlat6.z;
        txVec28 = vec3<f32>(x_1470.x, x_1470.y, x_1472);
        let x_1479 : vec3<f32> = txVec28;
        let x_1481 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1479.xy, x_1479.z);
        u_xlat82 = x_1481;
        let x_1483 : f32 = u_xlat8.w;
        let x_1484 : f32 = u_xlat82;
        let x_1486 : f32 = u_xlat80;
        u_xlat79 = ((x_1483 * x_1484) + x_1486);
      }
    }
  } else {
    let x_1490 : vec4<f32> = u_xlat6;
    let x_1491 : vec2<f32> = vec2<f32>(x_1490.x, x_1490.y);
    let x_1493 : f32 = u_xlat6.z;
    txVec29 = vec3<f32>(x_1491.x, x_1491.y, x_1493);
    let x_1500 : vec3<f32> = txVec29;
    let x_1502 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1500.xy, x_1500.z);
    u_xlat79 = x_1502;
  }
  let x_1504 : f32 = x_249.x_MainLightShadowParams.x;
  u_xlat80 = (-(x_1504) + 1.0f);
  let x_1507 : f32 = u_xlat79;
  let x_1509 : f32 = x_249.x_MainLightShadowParams.x;
  let x_1511 : f32 = u_xlat80;
  u_xlat79 = ((x_1507 * x_1509) + x_1511);
  let x_1515 : f32 = u_xlat6.z;
  u_xlatb82 = (0.0f >= x_1515);
  let x_1519 : f32 = u_xlat6.z;
  u_xlatb6 = (x_1519 >= 1.0f);
  let x_1521 : bool = u_xlatb82;
  let x_1522 : bool = u_xlatb6;
  u_xlatb82 = (x_1521 | x_1522);
  let x_1524 : bool = u_xlatb82;
  let x_1525 : f32 = u_xlat79;
  u_xlat79 = select(x_1525, 1.0f, x_1524);
  let x_1527 : vec3<f32> = u_xlat0;
  let x_1529 : vec4<f32> = x_75.x_MainLightPosition;
  u_xlat0.x = dot(x_1527, -(vec3<f32>(x_1529.x, x_1529.y, x_1529.z)));
  let x_1535 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1535, 0.0f, 1.0f);
  let x_1538 : f32 = u_xlat79;
  let x_1541 : vec4<f32> = x_75.x_MainLightColor;
  let x_1543 : vec3<f32> = (vec3<f32>(x_1538, x_1538, x_1538) * vec3<f32>(x_1541.x, x_1541.y, x_1541.z));
  let x_1544 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1543.x, x_1543.y, x_1543.z, x_1544.w);
  let x_1546 : vec3<f32> = u_xlat0;
  let x_1548 : vec4<f32> = u_xlat6;
  u_xlat0 = (vec3<f32>(x_1546.x, x_1546.x, x_1546.x) * vec3<f32>(x_1548.x, x_1548.y, x_1548.z));
  let x_1551 : vec3<f32> = u_xlat0;
  let x_1552 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_1551 * vec3<f32>(x_1552.x, x_1552.y, x_1552.z));
  let x_1556 : f32 = x_132.unity_LODFade.x;
  u_xlatb79 = (x_1556 < 0.0f);
  let x_1559 : f32 = x_132.unity_LODFade.x;
  u_xlat3.x = (x_1559 + 1.0f);
  let x_1562 : bool = u_xlatb79;
  if (x_1562) {
    let x_1568 : f32 = u_xlat3.x;
    x_1564 = x_1568;
  } else {
    let x_1571 : f32 = x_132.unity_LODFade.x;
    x_1564 = x_1571;
  }
  let x_1572 : f32 = x_1564;
  u_xlat79 = x_1572;
  let x_1574 : f32 = u_xlat79;
  u_xlatb3 = (0.5f >= x_1574);
  let x_1576 : vec3<f32> = u_xlat2;
  let x_1579 : vec4<f32> = x_75.x_ScreenParams;
  u_xlat2 = (abs(x_1576) * vec3<f32>(x_1579.x, x_1579.y, x_1579.x));
  let x_1585 : vec3<f32> = u_xlat2;
  u_xlatu2 = vec3<u32>(x_1585);
  let x_1590 : u32 = u_xlatu2.z;
  u_xlatu54 = (x_1590 * 1025u);
  let x_1594 : u32 = u_xlatu54;
  u_xlatu29 = (x_1594 >> 6u);
  let x_1599 : u32 = u_xlatu54;
  let x_1600 : u32 = u_xlatu29;
  u_xlati54 = bitcast<i32>((x_1599 ^ x_1600));
  let x_1603 : i32 = u_xlati54;
  u_xlatu54 = (bitcast<u32>(x_1603) * 9u);
  let x_1607 : u32 = u_xlatu54;
  u_xlatu29 = (x_1607 >> 11u);
  let x_1610 : u32 = u_xlatu54;
  let x_1611 : u32 = u_xlatu29;
  u_xlati54 = bitcast<i32>((x_1610 ^ x_1611));
  let x_1614 : i32 = u_xlati54;
  u_xlati54 = (x_1614 * 32769i);
  let x_1618 : i32 = u_xlati54;
  let x_1621 : u32 = u_xlatu2.y;
  u_xlati28 = bitcast<i32>((bitcast<u32>(x_1618) ^ x_1621));
  let x_1625 : i32 = u_xlati28;
  u_xlatu28 = (bitcast<u32>(x_1625) * 1025u);
  let x_1628 : u32 = u_xlatu28;
  u_xlatu54 = (x_1628 >> 6u);
  let x_1630 : u32 = u_xlatu54;
  let x_1631 : u32 = u_xlatu28;
  u_xlati28 = bitcast<i32>((x_1630 ^ x_1631));
  let x_1634 : i32 = u_xlati28;
  u_xlatu28 = (bitcast<u32>(x_1634) * 9u);
  let x_1637 : u32 = u_xlatu28;
  u_xlatu54 = (x_1637 >> 11u);
  let x_1639 : u32 = u_xlatu54;
  let x_1640 : u32 = u_xlatu28;
  u_xlati28 = bitcast<i32>((x_1639 ^ x_1640));
  let x_1643 : i32 = u_xlati28;
  u_xlati28 = (x_1643 * 32769i);
  let x_1646 : i32 = u_xlati28;
  let x_1649 : u32 = u_xlatu2.x;
  u_xlati2 = bitcast<i32>((bitcast<u32>(x_1646) ^ x_1649));
  let x_1652 : i32 = u_xlati2;
  u_xlatu2.x = (bitcast<u32>(x_1652) * 1025u);
  let x_1657 : u32 = u_xlatu2.x;
  u_xlatu28 = (x_1657 >> 6u);
  let x_1659 : u32 = u_xlatu28;
  let x_1661 : u32 = u_xlatu2.x;
  u_xlati2 = bitcast<i32>((x_1659 ^ x_1661));
  let x_1664 : i32 = u_xlati2;
  u_xlatu2.x = (bitcast<u32>(x_1664) * 9u);
  let x_1669 : u32 = u_xlatu2.x;
  u_xlatu28 = (x_1669 >> 11u);
  let x_1671 : u32 = u_xlatu28;
  let x_1673 : u32 = u_xlatu2.x;
  u_xlati2 = bitcast<i32>((x_1671 ^ x_1673));
  let x_1676 : i32 = u_xlati2;
  u_xlati2 = (x_1676 * 32769i);
  param = 1065353216i;
  let x_1682 : i32 = u_xlati2;
  param_1 = x_1682;
  param_2 = 0i;
  param_3 = 23i;
  let x_1685 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlat2.x = bitcast<f32>(x_1685);
  let x_1689 : f32 = u_xlat2.x;
  u_xlat2.x = (x_1689 + -1.0f);
  let x_1694 : f32 = u_xlat2.x;
  u_xlat28.x = (-(x_1694) + 1.0f);
  let x_1698 : bool = u_xlatb3;
  if (x_1698) {
    let x_1703 : f32 = u_xlat2.x;
    x_1699 = x_1703;
  } else {
    let x_1706 : f32 = u_xlat28.x;
    x_1699 = x_1706;
  }
  let x_1707 : f32 = x_1699;
  u_xlat2.x = x_1707;
  let x_1709 : f32 = u_xlat79;
  let x_1712 : f32 = u_xlat2.x;
  u_xlat79 = ((x_1709 * 2.0f) + -(x_1712));
  let x_1715 : f32 = u_xlat79;
  let x_1717 : f32 = u_xlat3.w;
  u_xlat2.x = (x_1715 * x_1717);
  let x_1724 : f32 = u_xlat2.x;
  u_xlatb28.x = (x_1724 >= 0.40000000596046447754f);
  let x_1729 : bool = u_xlatb28.x;
  if (x_1729) {
    let x_1734 : f32 = u_xlat2.x;
    x_1730 = x_1734;
  } else {
    x_1730 = 0.0f;
  }
  let x_1736 : f32 = x_1730;
  u_xlat28.x = x_1736;
  let x_1739 : f32 = u_xlat3.w;
  let x_1740 : f32 = u_xlat79;
  u_xlat79 = ((x_1739 * x_1740) + -0.40000000596046447754f);
  let x_1746 : f32 = u_xlat2.x;
  u_xlat54 = dpdxCoarse(x_1746);
  let x_1749 : f32 = u_xlat2.x;
  u_xlat2.x = dpdyCoarse(x_1749);
  let x_1753 : f32 = u_xlat2.x;
  let x_1755 : f32 = u_xlat54;
  u_xlat2.x = (abs(x_1753) + abs(x_1755));
  let x_1760 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_1760, 0.00009999999747378752f);
  let x_1764 : f32 = u_xlat79;
  let x_1766 : f32 = u_xlat2.x;
  u_xlat79 = (x_1764 / x_1766);
  let x_1768 : f32 = u_xlat79;
  u_xlat79 = (x_1768 + 0.5f);
  let x_1770 : f32 = u_xlat79;
  u_xlat79 = clamp(x_1770, 0.0f, 1.0f);
  let x_1774 : f32 = x_75.x_AlphaToMaskAvailable;
  u_xlatb2 = !((x_1774 == 0.0f));
  let x_1776 : bool = u_xlatb2;
  if (x_1776) {
    let x_1780 : f32 = u_xlat79;
    x_1777 = x_1780;
  } else {
    let x_1783 : f32 = u_xlat28.x;
    x_1777 = x_1783;
  }
  let x_1784 : f32 = x_1777;
  u_xlat79 = x_1784;
  let x_1785 : f32 = u_xlat79;
  u_xlat28.x = (x_1785 + -0.00009999999747378752f);
  let x_1790 : f32 = u_xlat28.x;
  u_xlatb28.x = (x_1790 < 0.0f);
  let x_1794 : bool = u_xlatb28.x;
  if (((select(0i, 1i, x_1794) * -1i) != 0i)) {
    discard;
  }
  let x_1804 : f32 = vs_INTERP4.w;
  u_xlatb28.x = (0.0f < x_1804);
  let x_1808 : f32 = x_132.unity_WorldTransformParams.w;
  u_xlatb28.y = (x_1808 >= 0.0f);
  let x_1812 : bool = u_xlatb28.x;
  u_xlat28.x = select(-1.0f, 1.0f, x_1812);
  let x_1816 : bool = u_xlatb28.y;
  u_xlat28.y = select(-1.0f, 1.0f, x_1816);
  let x_1820 : f32 = u_xlat28.y;
  let x_1822 : f32 = u_xlat28.x;
  u_xlat28.x = (x_1820 * x_1822);
  let x_1825 : vec4<f32> = vs_INTERP4;
  let x_1827 : vec3<f32> = vs_INTERP9;
  let x_1829 : vec3<f32> = (vec3<f32>(x_1825.y, x_1825.z, x_1825.x) * vec3<f32>(x_1827.z, x_1827.x, x_1827.y));
  let x_1830 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1829.x, x_1829.y, x_1829.z, x_1830.w);
  let x_1832 : vec3<f32> = vs_INTERP9;
  let x_1834 : vec4<f32> = vs_INTERP4;
  let x_1837 : vec4<f32> = u_xlat3;
  let x_1840 : vec3<f32> = ((vec3<f32>(x_1832.y, x_1832.z, x_1832.x) * vec3<f32>(x_1834.z, x_1834.x, x_1834.y)) + -(vec3<f32>(x_1837.x, x_1837.y, x_1837.z)));
  let x_1841 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1840.x, x_1840.y, x_1840.z, x_1841.w);
  let x_1843 : vec2<f32> = u_xlat28;
  let x_1845 : vec4<f32> = u_xlat3;
  let x_1847 : vec3<f32> = (vec3<f32>(x_1843.x, x_1843.x, x_1843.x) * vec3<f32>(x_1845.x, x_1845.y, x_1845.z));
  let x_1848 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1847.x, x_1847.y, x_1847.z, x_1848.w);
  let x_1850 : vec4<f32> = u_xlat3;
  let x_1852 : vec3<f32> = u_xlat31;
  let x_1854 : vec3<f32> = (vec3<f32>(x_1850.x, x_1850.y, x_1850.z) * vec3<f32>(x_1852.y, x_1852.y, x_1852.y));
  let x_1855 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1854.x, x_1854.y, x_1854.z, x_1855.w);
  let x_1857 : vec3<f32> = u_xlat31;
  let x_1859 : vec4<f32> = vs_INTERP4;
  let x_1862 : vec4<f32> = u_xlat3;
  let x_1864 : vec3<f32> = ((vec3<f32>(x_1857.x, x_1857.x, x_1857.x) * vec3<f32>(x_1859.x, x_1859.y, x_1859.z)) + vec3<f32>(x_1862.x, x_1862.y, x_1862.z));
  let x_1865 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1864.x, x_1864.y, x_1864.z, x_1865.w);
  let x_1867 : vec3<f32> = u_xlat31;
  let x_1869 : vec3<f32> = vs_INTERP9;
  let x_1871 : vec4<f32> = u_xlat3;
  let x_1873 : vec3<f32> = ((vec3<f32>(x_1867.z, x_1867.z, x_1867.z) * x_1869) + vec3<f32>(x_1871.x, x_1871.y, x_1871.z));
  let x_1874 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1873.x, x_1873.y, x_1873.z, x_1874.w);
  let x_1876 : vec4<f32> = u_xlat3;
  let x_1878 : vec4<f32> = u_xlat3;
  u_xlat28.x = dot(vec3<f32>(x_1876.x, x_1876.y, x_1876.z), vec3<f32>(x_1878.x, x_1878.y, x_1878.z));
  let x_1883 : f32 = u_xlat28.x;
  u_xlat28.x = inverseSqrt(x_1883);
  let x_1886 : vec2<f32> = u_xlat28;
  let x_1888 : vec4<f32> = u_xlat3;
  let x_1890 : vec3<f32> = (vec3<f32>(x_1886.x, x_1886.x, x_1886.x) * vec3<f32>(x_1888.x, x_1888.y, x_1888.z));
  let x_1891 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1890.x, x_1890.y, x_1890.z, x_1891.w);
  let x_1894 : f32 = vs_INTERP8.y;
  let x_1896 : f32 = x_75.unity_MatrixV[1i].z;
  u_xlat28.x = (x_1894 * x_1896);
  let x_1900 : f32 = x_75.unity_MatrixV[0i].z;
  let x_1902 : f32 = vs_INTERP8.x;
  let x_1905 : f32 = u_xlat28.x;
  u_xlat28.x = ((x_1900 * x_1902) + x_1905);
  let x_1909 : f32 = x_75.unity_MatrixV[2i].z;
  let x_1911 : f32 = vs_INTERP8.z;
  let x_1914 : f32 = u_xlat28.x;
  u_xlat28.x = ((x_1909 * x_1911) + x_1914);
  let x_1918 : f32 = u_xlat28.x;
  let x_1920 : f32 = x_75.unity_MatrixV[3i].z;
  u_xlat28.x = (x_1918 + x_1920);
  let x_1924 : f32 = u_xlat28.x;
  let x_1927 : f32 = x_75.x_ProjectionParams.y;
  u_xlat28.x = (-(x_1924) + -(x_1927));
  let x_1932 : f32 = u_xlat28.x;
  u_xlat28.x = max(x_1932, 0.0f);
  let x_1936 : f32 = u_xlat28.x;
  let x_1938 : f32 = x_75.unity_FogParams.x;
  u_xlat28.x = (x_1936 * x_1938);
  let x_1948 : vec2<f32> = vs_INTERP0;
  let x_1950 : f32 = x_75.x_GlobalMipBias.x;
  let x_1951 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_1948, x_1950);
  u_xlat6 = x_1951;
  let x_1956 : vec2<f32> = vs_INTERP0;
  let x_1958 : f32 = x_75.x_GlobalMipBias.x;
  let x_1959 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_1956, x_1958);
  u_xlat31 = vec3<f32>(x_1959.x, x_1959.y, x_1959.z);
  let x_1961 : vec4<f32> = u_xlat6;
  let x_1964 : vec3<f32> = (vec3<f32>(x_1961.x, x_1961.y, x_1961.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_1965 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1964.x, x_1964.y, x_1964.z, x_1965.w);
  let x_1967 : vec4<f32> = u_xlat3;
  let x_1969 : vec4<f32> = u_xlat6;
  u_xlat54 = dot(vec3<f32>(x_1967.x, x_1967.y, x_1967.z), vec3<f32>(x_1969.x, x_1969.y, x_1969.z));
  let x_1972 : f32 = u_xlat54;
  u_xlat54 = (x_1972 + 0.5f);
  let x_1974 : f32 = u_xlat54;
  let x_1976 : vec3<f32> = u_xlat31;
  u_xlat31 = (vec3<f32>(x_1974, x_1974, x_1974) * x_1976);
  let x_1979 : f32 = u_xlat6.w;
  u_xlat54 = max(x_1979, 0.00009999999747378752f);
  let x_1981 : vec3<f32> = u_xlat31;
  let x_1982 : f32 = u_xlat54;
  u_xlat31 = (x_1981 / vec3<f32>(x_1982, x_1982, x_1982));
  let x_1986 : f32 = u_xlat5.x;
  u_xlat5.x = x_1986;
  let x_1989 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_1989, 0.0f, 1.0f);
  let x_1992 : f32 = u_xlat79;
  u_xlat79 = x_1992;
  let x_1993 : f32 = u_xlat79;
  u_xlat79 = clamp(x_1993, 0.0f, 1.0f);
  let x_1995 : vec3<f32> = u_xlat4;
  u_xlat4 = (x_1995 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_2000 : f32 = u_xlat5.x;
  u_xlat54 = (-(x_2000) + 1.0f);
  let x_2004 : f32 = u_xlat54;
  let x_2005 : f32 = u_xlat54;
  u_xlat81 = (x_2004 * x_2005);
  let x_2007 : f32 = u_xlat81;
  u_xlat81 = max(x_2007, 0.0078125f);
  let x_2010 : f32 = u_xlat81;
  let x_2011 : f32 = u_xlat81;
  u_xlat82 = (x_2010 * x_2011);
  let x_2014 : f32 = u_xlat5.x;
  u_xlat5.x = (x_2014 + 0.04000002145767211914f);
  let x_2019 : f32 = u_xlat5.x;
  u_xlat5.x = min(x_2019, 1.0f);
  let x_2022 : f32 = u_xlat81;
  u_xlat6.x = ((x_2022 * 4.0f) + 2.0f);
  let x_2029 : f32 = vs_INTERP6.w;
  u_xlat32 = min(x_2029, 1.0f);
  let x_2031 : bool = u_xlatb78;
  if (x_2031) {
    let x_2035 : f32 = x_249.x_MainLightShadowParams.y;
    u_xlatb78 = (x_2035 == 1.0f);
    let x_2037 : bool = u_xlatb78;
    if (x_2037) {
      let x_2041 : vec4<f32> = vs_INTERP3;
      let x_2044 : vec4<f32> = x_249.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_2041.x, x_2041.y, x_2041.x, x_2041.y) + x_2044);
      let x_2047 : vec4<f32> = u_xlat7;
      let x_2048 : vec2<f32> = vec2<f32>(x_2047.x, x_2047.y);
      let x_2050 : f32 = vs_INTERP3.z;
      txVec30 = vec3<f32>(x_2048.x, x_2048.y, x_2050);
      let x_2057 : vec3<f32> = txVec30;
      let x_2059 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2057.xy, x_2057.z);
      u_xlat8.x = x_2059;
      let x_2062 : vec4<f32> = u_xlat7;
      let x_2063 : vec2<f32> = vec2<f32>(x_2062.z, x_2062.w);
      let x_2065 : f32 = vs_INTERP3.z;
      txVec31 = vec3<f32>(x_2063.x, x_2063.y, x_2065);
      let x_2072 : vec3<f32> = txVec31;
      let x_2074 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2072.xy, x_2072.z);
      u_xlat8.y = x_2074;
      let x_2076 : vec4<f32> = vs_INTERP3;
      let x_2079 : vec4<f32> = x_249.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_2076.x, x_2076.y, x_2076.x, x_2076.y) + x_2079);
      let x_2082 : vec4<f32> = u_xlat7;
      let x_2083 : vec2<f32> = vec2<f32>(x_2082.x, x_2082.y);
      let x_2085 : f32 = vs_INTERP3.z;
      txVec32 = vec3<f32>(x_2083.x, x_2083.y, x_2085);
      let x_2092 : vec3<f32> = txVec32;
      let x_2094 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2092.xy, x_2092.z);
      u_xlat8.z = x_2094;
      let x_2097 : vec4<f32> = u_xlat7;
      let x_2098 : vec2<f32> = vec2<f32>(x_2097.z, x_2097.w);
      let x_2100 : f32 = vs_INTERP3.z;
      txVec33 = vec3<f32>(x_2098.x, x_2098.y, x_2100);
      let x_2107 : vec3<f32> = txVec33;
      let x_2109 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2107.xy, x_2107.z);
      u_xlat8.w = x_2109;
      let x_2111 : vec4<f32> = u_xlat8;
      u_xlat78 = dot(x_2111, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_2116 : f32 = x_249.x_MainLightShadowParams.y;
      u_xlatb58.x = (x_2116 == 2.0f);
      let x_2120 : bool = u_xlatb58.x;
      if (x_2120) {
        let x_2124 : vec4<f32> = vs_INTERP3;
        let x_2127 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        u_xlat58 = ((vec2<f32>(x_2124.x, x_2124.y) * vec2<f32>(x_2127.z, x_2127.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2131 : vec2<f32> = u_xlat58;
        u_xlat58 = floor(x_2131);
        let x_2133 : vec4<f32> = vs_INTERP3;
        let x_2136 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2139 : vec2<f32> = u_xlat58;
        let x_2141 : vec2<f32> = ((vec2<f32>(x_2133.x, x_2133.y) * vec2<f32>(x_2136.z, x_2136.w)) + -(x_2139));
        let x_2142 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2141.x, x_2141.y, x_2142.z, x_2142.w);
        let x_2144 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_2144.x, x_2144.x, x_2144.y, x_2144.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2147 : vec4<f32> = u_xlat8;
        let x_2149 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2147.x, x_2147.x, x_2147.z, x_2147.z) * vec4<f32>(x_2149.x, x_2149.x, x_2149.z, x_2149.z));
        let x_2152 : vec4<f32> = u_xlat9;
        u_xlat59 = (vec2<f32>(x_2152.y, x_2152.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_2155 : vec4<f32> = u_xlat9;
        let x_2158 : vec4<f32> = u_xlat7;
        let x_2161 : vec2<f32> = ((vec2<f32>(x_2155.x, x_2155.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2158.x, x_2158.y)));
        let x_2162 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2161.x, x_2162.y, x_2161.y, x_2162.w);
        let x_2164 : vec4<f32> = u_xlat7;
        let x_2167 : vec2<f32> = (-(vec2<f32>(x_2164.x, x_2164.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2168 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2167.x, x_2167.y, x_2168.z, x_2168.w);
        let x_2170 : vec4<f32> = u_xlat7;
        u_xlat61 = min(vec2<f32>(x_2170.x, x_2170.y), vec2<f32>(0.0f, 0.0f));
        let x_2173 : vec2<f32> = u_xlat61;
        let x_2175 : vec2<f32> = u_xlat61;
        let x_2177 : vec4<f32> = u_xlat9;
        u_xlat61 = ((-(x_2173) * x_2175) + vec2<f32>(x_2177.x, x_2177.y));
        let x_2180 : vec4<f32> = u_xlat7;
        let x_2182 : vec2<f32> = max(vec2<f32>(x_2180.x, x_2180.y), vec2<f32>(0.0f, 0.0f));
        let x_2183 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2182.x, x_2182.y, x_2183.z, x_2183.w);
        let x_2185 : vec4<f32> = u_xlat7;
        let x_2188 : vec4<f32> = u_xlat7;
        let x_2191 : vec4<f32> = u_xlat8;
        let x_2193 : vec2<f32> = ((-(vec2<f32>(x_2185.x, x_2185.y)) * vec2<f32>(x_2188.x, x_2188.y)) + vec2<f32>(x_2191.y, x_2191.w));
        let x_2194 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2193.x, x_2193.y, x_2194.z, x_2194.w);
        let x_2196 : vec2<f32> = u_xlat61;
        u_xlat61 = (x_2196 + vec2<f32>(1.0f, 1.0f));
        let x_2198 : vec4<f32> = u_xlat7;
        let x_2200 : vec2<f32> = (vec2<f32>(x_2198.x, x_2198.y) + vec2<f32>(1.0f, 1.0f));
        let x_2201 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2200.x, x_2200.y, x_2201.z, x_2201.w);
        let x_2203 : vec4<f32> = u_xlat8;
        let x_2205 : vec2<f32> = (vec2<f32>(x_2203.x, x_2203.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2206 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2205.x, x_2205.y, x_2206.z, x_2206.w);
        let x_2208 : vec4<f32> = u_xlat9;
        let x_2210 : vec2<f32> = (vec2<f32>(x_2208.x, x_2208.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2211 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2210.x, x_2210.y, x_2211.z, x_2211.w);
        let x_2213 : vec2<f32> = u_xlat61;
        let x_2214 : vec2<f32> = (x_2213 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2215 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2214.x, x_2214.y, x_2215.z, x_2215.w);
        let x_2217 : vec4<f32> = u_xlat7;
        let x_2219 : vec2<f32> = (vec2<f32>(x_2217.x, x_2217.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2220 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2219.x, x_2219.y, x_2220.z, x_2220.w);
        let x_2222 : vec4<f32> = u_xlat8;
        let x_2224 : vec2<f32> = (vec2<f32>(x_2222.y, x_2222.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2225 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2224.x, x_2224.y, x_2225.z, x_2225.w);
        let x_2228 : f32 = u_xlat9.x;
        u_xlat10.z = x_2228;
        let x_2231 : f32 = u_xlat7.x;
        u_xlat10.w = x_2231;
        let x_2234 : f32 = u_xlat12.x;
        u_xlat11.z = x_2234;
        let x_2237 : f32 = u_xlat59.x;
        u_xlat11.w = x_2237;
        let x_2239 : vec4<f32> = u_xlat10;
        let x_2241 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_2239.z, x_2239.w, x_2239.x, x_2239.z) + vec4<f32>(x_2241.z, x_2241.w, x_2241.x, x_2241.z));
        let x_2245 : f32 = u_xlat10.y;
        u_xlat9.z = x_2245;
        let x_2248 : f32 = u_xlat7.y;
        u_xlat9.w = x_2248;
        let x_2251 : f32 = u_xlat11.y;
        u_xlat12.z = x_2251;
        let x_2254 : f32 = u_xlat59.y;
        u_xlat12.w = x_2254;
        let x_2256 : vec4<f32> = u_xlat9;
        let x_2258 : vec4<f32> = u_xlat12;
        let x_2260 : vec3<f32> = (vec3<f32>(x_2256.z, x_2256.y, x_2256.w) + vec3<f32>(x_2258.z, x_2258.y, x_2258.w));
        let x_2261 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2260.x, x_2260.y, x_2260.z, x_2261.w);
        let x_2263 : vec4<f32> = u_xlat11;
        let x_2265 : vec4<f32> = u_xlat8;
        let x_2267 : vec3<f32> = (vec3<f32>(x_2263.x, x_2263.z, x_2263.w) / vec3<f32>(x_2265.z, x_2265.w, x_2265.y));
        let x_2268 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2267.x, x_2267.y, x_2267.z, x_2268.w);
        let x_2270 : vec4<f32> = u_xlat9;
        let x_2272 : vec3<f32> = (vec3<f32>(x_2270.x, x_2270.y, x_2270.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2273 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2272.x, x_2272.y, x_2272.z, x_2273.w);
        let x_2275 : vec4<f32> = u_xlat12;
        let x_2277 : vec4<f32> = u_xlat7;
        let x_2279 : vec3<f32> = (vec3<f32>(x_2275.z, x_2275.y, x_2275.w) / vec3<f32>(x_2277.x, x_2277.y, x_2277.z));
        let x_2280 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2279.x, x_2279.y, x_2279.z, x_2280.w);
        let x_2282 : vec4<f32> = u_xlat10;
        let x_2284 : vec3<f32> = (vec3<f32>(x_2282.x, x_2282.y, x_2282.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2285 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2284.x, x_2284.y, x_2284.z, x_2285.w);
        let x_2287 : vec4<f32> = u_xlat9;
        let x_2290 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2292 : vec3<f32> = (vec3<f32>(x_2287.y, x_2287.x, x_2287.z) * vec3<f32>(x_2290.x, x_2290.x, x_2290.x));
        let x_2293 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2292.x, x_2292.y, x_2292.z, x_2293.w);
        let x_2295 : vec4<f32> = u_xlat10;
        let x_2298 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2300 : vec3<f32> = (vec3<f32>(x_2295.x, x_2295.y, x_2295.z) * vec3<f32>(x_2298.y, x_2298.y, x_2298.y));
        let x_2301 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2300.x, x_2300.y, x_2300.z, x_2301.w);
        let x_2304 : f32 = u_xlat10.x;
        u_xlat9.w = x_2304;
        let x_2306 : vec2<f32> = u_xlat58;
        let x_2309 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2312 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_2306.x, x_2306.y, x_2306.x, x_2306.y) * vec4<f32>(x_2309.x, x_2309.y, x_2309.x, x_2309.y)) + vec4<f32>(x_2312.y, x_2312.w, x_2312.x, x_2312.w));
        let x_2315 : vec2<f32> = u_xlat58;
        let x_2317 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2320 : vec4<f32> = u_xlat9;
        let x_2322 : vec2<f32> = ((x_2315 * vec2<f32>(x_2317.x, x_2317.y)) + vec2<f32>(x_2320.z, x_2320.w));
        let x_2323 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2322.x, x_2322.y, x_2323.z, x_2323.w);
        let x_2326 : f32 = u_xlat9.y;
        u_xlat10.w = x_2326;
        let x_2328 : vec4<f32> = u_xlat10;
        let x_2329 : vec2<f32> = vec2<f32>(x_2328.y, x_2328.z);
        let x_2330 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2330.x, x_2329.x, x_2330.z, x_2329.y);
        let x_2332 : vec2<f32> = u_xlat58;
        let x_2335 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2338 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_2332.x, x_2332.y, x_2332.x, x_2332.y) * vec4<f32>(x_2335.x, x_2335.y, x_2335.x, x_2335.y)) + vec4<f32>(x_2338.x, x_2338.y, x_2338.z, x_2338.y));
        let x_2341 : vec2<f32> = u_xlat58;
        let x_2344 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2347 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_2341.x, x_2341.y, x_2341.x, x_2341.y) * vec4<f32>(x_2344.x, x_2344.y, x_2344.x, x_2344.y)) + vec4<f32>(x_2347.w, x_2347.y, x_2347.w, x_2347.z));
        let x_2350 : vec2<f32> = u_xlat58;
        let x_2353 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2356 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_2350.x, x_2350.y, x_2350.x, x_2350.y) * vec4<f32>(x_2353.x, x_2353.y, x_2353.x, x_2353.y)) + vec4<f32>(x_2356.x, x_2356.w, x_2356.z, x_2356.w));
        let x_2359 : vec4<f32> = u_xlat7;
        let x_2361 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_2359.x, x_2359.x, x_2359.x, x_2359.y) * vec4<f32>(x_2361.z, x_2361.w, x_2361.y, x_2361.z));
        let x_2364 : vec4<f32> = u_xlat7;
        let x_2366 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_2364.y, x_2364.y, x_2364.z, x_2364.z) * x_2366);
        let x_2369 : f32 = u_xlat7.z;
        let x_2371 : f32 = u_xlat8.y;
        u_xlat58.x = (x_2369 * x_2371);
        let x_2375 : vec4<f32> = u_xlat11;
        let x_2376 : vec2<f32> = vec2<f32>(x_2375.x, x_2375.y);
        let x_2378 : f32 = vs_INTERP3.z;
        txVec34 = vec3<f32>(x_2376.x, x_2376.y, x_2378);
        let x_2385 : vec3<f32> = txVec34;
        let x_2387 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2385.xy, x_2385.z);
        u_xlat84 = x_2387;
        let x_2389 : vec4<f32> = u_xlat11;
        let x_2390 : vec2<f32> = vec2<f32>(x_2389.z, x_2389.w);
        let x_2392 : f32 = vs_INTERP3.z;
        txVec35 = vec3<f32>(x_2390.x, x_2390.y, x_2392);
        let x_2399 : vec3<f32> = txVec35;
        let x_2401 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2399.xy, x_2399.z);
        u_xlat7.x = x_2401;
        let x_2404 : f32 = u_xlat7.x;
        let x_2406 : f32 = u_xlat14.y;
        u_xlat7.x = (x_2404 * x_2406);
        let x_2410 : f32 = u_xlat14.x;
        let x_2411 : f32 = u_xlat84;
        let x_2414 : f32 = u_xlat7.x;
        u_xlat84 = ((x_2410 * x_2411) + x_2414);
        let x_2417 : vec4<f32> = u_xlat12;
        let x_2418 : vec2<f32> = vec2<f32>(x_2417.x, x_2417.y);
        let x_2420 : f32 = vs_INTERP3.z;
        txVec36 = vec3<f32>(x_2418.x, x_2418.y, x_2420);
        let x_2427 : vec3<f32> = txVec36;
        let x_2429 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2427.xy, x_2427.z);
        u_xlat7.x = x_2429;
        let x_2432 : f32 = u_xlat14.z;
        let x_2434 : f32 = u_xlat7.x;
        let x_2436 : f32 = u_xlat84;
        u_xlat84 = ((x_2432 * x_2434) + x_2436);
        let x_2439 : vec4<f32> = u_xlat10;
        let x_2440 : vec2<f32> = vec2<f32>(x_2439.x, x_2439.y);
        let x_2442 : f32 = vs_INTERP3.z;
        txVec37 = vec3<f32>(x_2440.x, x_2440.y, x_2442);
        let x_2449 : vec3<f32> = txVec37;
        let x_2451 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2449.xy, x_2449.z);
        u_xlat7.x = x_2451;
        let x_2454 : f32 = u_xlat14.w;
        let x_2456 : f32 = u_xlat7.x;
        let x_2458 : f32 = u_xlat84;
        u_xlat84 = ((x_2454 * x_2456) + x_2458);
        let x_2461 : vec4<f32> = u_xlat13;
        let x_2462 : vec2<f32> = vec2<f32>(x_2461.x, x_2461.y);
        let x_2464 : f32 = vs_INTERP3.z;
        txVec38 = vec3<f32>(x_2462.x, x_2462.y, x_2464);
        let x_2471 : vec3<f32> = txVec38;
        let x_2473 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2471.xy, x_2471.z);
        u_xlat7.x = x_2473;
        let x_2476 : f32 = u_xlat15.x;
        let x_2478 : f32 = u_xlat7.x;
        let x_2480 : f32 = u_xlat84;
        u_xlat84 = ((x_2476 * x_2478) + x_2480);
        let x_2483 : vec4<f32> = u_xlat13;
        let x_2484 : vec2<f32> = vec2<f32>(x_2483.z, x_2483.w);
        let x_2486 : f32 = vs_INTERP3.z;
        txVec39 = vec3<f32>(x_2484.x, x_2484.y, x_2486);
        let x_2493 : vec3<f32> = txVec39;
        let x_2495 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2493.xy, x_2493.z);
        u_xlat7.x = x_2495;
        let x_2498 : f32 = u_xlat15.y;
        let x_2500 : f32 = u_xlat7.x;
        let x_2502 : f32 = u_xlat84;
        u_xlat84 = ((x_2498 * x_2500) + x_2502);
        let x_2505 : vec4<f32> = u_xlat10;
        let x_2506 : vec2<f32> = vec2<f32>(x_2505.z, x_2505.w);
        let x_2508 : f32 = vs_INTERP3.z;
        txVec40 = vec3<f32>(x_2506.x, x_2506.y, x_2508);
        let x_2515 : vec3<f32> = txVec40;
        let x_2517 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2515.xy, x_2515.z);
        u_xlat7.x = x_2517;
        let x_2520 : f32 = u_xlat15.z;
        let x_2522 : f32 = u_xlat7.x;
        let x_2524 : f32 = u_xlat84;
        u_xlat84 = ((x_2520 * x_2522) + x_2524);
        let x_2527 : vec4<f32> = u_xlat9;
        let x_2528 : vec2<f32> = vec2<f32>(x_2527.x, x_2527.y);
        let x_2530 : f32 = vs_INTERP3.z;
        txVec41 = vec3<f32>(x_2528.x, x_2528.y, x_2530);
        let x_2537 : vec3<f32> = txVec41;
        let x_2539 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2537.xy, x_2537.z);
        u_xlat7.x = x_2539;
        let x_2542 : f32 = u_xlat15.w;
        let x_2544 : f32 = u_xlat7.x;
        let x_2546 : f32 = u_xlat84;
        u_xlat84 = ((x_2542 * x_2544) + x_2546);
        let x_2549 : vec4<f32> = u_xlat9;
        let x_2550 : vec2<f32> = vec2<f32>(x_2549.z, x_2549.w);
        let x_2552 : f32 = vs_INTERP3.z;
        txVec42 = vec3<f32>(x_2550.x, x_2550.y, x_2552);
        let x_2559 : vec3<f32> = txVec42;
        let x_2561 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2559.xy, x_2559.z);
        u_xlat7.x = x_2561;
        let x_2564 : f32 = u_xlat58.x;
        let x_2566 : f32 = u_xlat7.x;
        let x_2568 : f32 = u_xlat84;
        u_xlat78 = ((x_2564 * x_2566) + x_2568);
      } else {
        let x_2571 : vec4<f32> = vs_INTERP3;
        let x_2574 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        u_xlat58 = ((vec2<f32>(x_2571.x, x_2571.y) * vec2<f32>(x_2574.z, x_2574.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2578 : vec2<f32> = u_xlat58;
        u_xlat58 = floor(x_2578);
        let x_2580 : vec4<f32> = vs_INTERP3;
        let x_2583 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2586 : vec2<f32> = u_xlat58;
        let x_2588 : vec2<f32> = ((vec2<f32>(x_2580.x, x_2580.y) * vec2<f32>(x_2583.z, x_2583.w)) + -(x_2586));
        let x_2589 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2588.x, x_2588.y, x_2589.z, x_2589.w);
        let x_2591 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_2591.x, x_2591.x, x_2591.y, x_2591.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2594 : vec4<f32> = u_xlat8;
        let x_2596 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2594.x, x_2594.x, x_2594.z, x_2594.z) * vec4<f32>(x_2596.x, x_2596.x, x_2596.z, x_2596.z));
        let x_2599 : vec4<f32> = u_xlat9;
        let x_2601 : vec2<f32> = (vec2<f32>(x_2599.y, x_2599.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_2602 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2602.x, x_2601.x, x_2602.z, x_2601.y);
        let x_2604 : vec4<f32> = u_xlat9;
        let x_2607 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_2604.x, x_2604.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2607.x, x_2607.y)));
        let x_2611 : vec4<f32> = u_xlat7;
        let x_2614 : vec2<f32> = (-(vec2<f32>(x_2611.x, x_2611.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2615 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2614.x, x_2615.y, x_2614.y, x_2615.w);
        let x_2617 : vec4<f32> = u_xlat7;
        let x_2619 : vec2<f32> = min(vec2<f32>(x_2617.x, x_2617.y), vec2<f32>(0.0f, 0.0f));
        let x_2620 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2619.x, x_2619.y, x_2620.z, x_2620.w);
        let x_2622 : vec4<f32> = u_xlat9;
        let x_2625 : vec4<f32> = u_xlat9;
        let x_2628 : vec4<f32> = u_xlat8;
        let x_2630 : vec2<f32> = ((-(vec2<f32>(x_2622.x, x_2622.y)) * vec2<f32>(x_2625.x, x_2625.y)) + vec2<f32>(x_2628.x, x_2628.z));
        let x_2631 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2630.x, x_2631.y, x_2630.y, x_2631.w);
        let x_2633 : vec4<f32> = u_xlat7;
        let x_2635 : vec2<f32> = max(vec2<f32>(x_2633.x, x_2633.y), vec2<f32>(0.0f, 0.0f));
        let x_2636 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2635.x, x_2635.y, x_2636.z, x_2636.w);
        let x_2638 : vec4<f32> = u_xlat9;
        let x_2641 : vec4<f32> = u_xlat9;
        let x_2644 : vec4<f32> = u_xlat8;
        let x_2646 : vec2<f32> = ((-(vec2<f32>(x_2638.x, x_2638.y)) * vec2<f32>(x_2641.x, x_2641.y)) + vec2<f32>(x_2644.y, x_2644.w));
        let x_2647 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2647.x, x_2646.x, x_2647.z, x_2646.y);
        let x_2649 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_2649 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_2652 : f32 = u_xlat8.y;
        u_xlat9.z = (x_2652 * 0.08163200318813323975f);
        let x_2655 : vec2<f32> = u_xlat59;
        let x_2657 : vec2<f32> = (vec2<f32>(x_2655.y, x_2655.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2658 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2657.x, x_2657.y, x_2658.z, x_2658.w);
        let x_2660 : vec4<f32> = u_xlat8;
        u_xlat59 = (vec2<f32>(x_2660.x, x_2660.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2664 : f32 = u_xlat8.w;
        u_xlat11.z = (x_2664 * 0.08163200318813323975f);
        let x_2668 : f32 = u_xlat11.y;
        u_xlat9.x = x_2668;
        let x_2670 : vec4<f32> = u_xlat7;
        let x_2673 : vec2<f32> = ((vec2<f32>(x_2670.x, x_2670.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2674 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2674.x, x_2673.x, x_2674.z, x_2673.y);
        let x_2676 : vec4<f32> = u_xlat7;
        let x_2679 : vec2<f32> = ((vec2<f32>(x_2676.x, x_2676.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2680 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2679.x, x_2680.y, x_2679.y, x_2680.w);
        let x_2683 : f32 = u_xlat59.x;
        u_xlat8.y = x_2683;
        let x_2686 : f32 = u_xlat10.y;
        u_xlat8.w = x_2686;
        let x_2688 : vec4<f32> = u_xlat8;
        let x_2689 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_2688 + x_2689);
        let x_2691 : vec4<f32> = u_xlat7;
        let x_2694 : vec2<f32> = ((vec2<f32>(x_2691.y, x_2691.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2695 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2695.x, x_2694.x, x_2695.z, x_2694.y);
        let x_2697 : vec4<f32> = u_xlat7;
        let x_2700 : vec2<f32> = ((vec2<f32>(x_2697.y, x_2697.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2701 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2700.x, x_2701.y, x_2700.y, x_2701.w);
        let x_2704 : f32 = u_xlat59.y;
        u_xlat10.y = x_2704;
        let x_2706 : vec4<f32> = u_xlat10;
        let x_2707 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_2706 + x_2707);
        let x_2709 : vec4<f32> = u_xlat8;
        let x_2710 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_2709 / x_2710);
        let x_2712 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_2712 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2714 : vec4<f32> = u_xlat10;
        let x_2715 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_2714 / x_2715);
        let x_2717 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_2717 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2719 : vec4<f32> = u_xlat8;
        let x_2722 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_2719.w, x_2719.x, x_2719.y, x_2719.z) * vec4<f32>(x_2722.x, x_2722.x, x_2722.x, x_2722.x));
        let x_2725 : vec4<f32> = u_xlat10;
        let x_2728 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_2725.x, x_2725.w, x_2725.y, x_2725.z) * vec4<f32>(x_2728.y, x_2728.y, x_2728.y, x_2728.y));
        let x_2731 : vec4<f32> = u_xlat8;
        let x_2732 : vec3<f32> = vec3<f32>(x_2731.y, x_2731.z, x_2731.w);
        let x_2733 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2732.x, x_2733.y, x_2732.y, x_2732.z);
        let x_2736 : f32 = u_xlat10.x;
        u_xlat11.y = x_2736;
        let x_2738 : vec2<f32> = u_xlat58;
        let x_2741 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2744 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_2738.x, x_2738.y, x_2738.x, x_2738.y) * vec4<f32>(x_2741.x, x_2741.y, x_2741.x, x_2741.y)) + vec4<f32>(x_2744.x, x_2744.y, x_2744.z, x_2744.y));
        let x_2747 : vec2<f32> = u_xlat58;
        let x_2749 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2752 : vec4<f32> = u_xlat11;
        let x_2754 : vec2<f32> = ((x_2747 * vec2<f32>(x_2749.x, x_2749.y)) + vec2<f32>(x_2752.w, x_2752.y));
        let x_2755 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_2754.x, x_2754.y, x_2755.z, x_2755.w);
        let x_2758 : f32 = u_xlat11.y;
        u_xlat8.y = x_2758;
        let x_2761 : f32 = u_xlat10.z;
        u_xlat11.y = x_2761;
        let x_2763 : vec2<f32> = u_xlat58;
        let x_2766 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2769 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_2763.x, x_2763.y, x_2763.x, x_2763.y) * vec4<f32>(x_2766.x, x_2766.y, x_2766.x, x_2766.y)) + vec4<f32>(x_2769.x, x_2769.y, x_2769.z, x_2769.y));
        let x_2773 : vec2<f32> = u_xlat58;
        let x_2775 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2778 : vec4<f32> = u_xlat11;
        u_xlat65 = ((x_2773 * vec2<f32>(x_2775.x, x_2775.y)) + vec2<f32>(x_2778.w, x_2778.y));
        let x_2782 : f32 = u_xlat11.y;
        u_xlat8.z = x_2782;
        let x_2784 : vec2<f32> = u_xlat58;
        let x_2787 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2790 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_2784.x, x_2784.y, x_2784.x, x_2784.y) * vec4<f32>(x_2787.x, x_2787.y, x_2787.x, x_2787.y)) + vec4<f32>(x_2790.x, x_2790.y, x_2790.x, x_2790.z));
        let x_2794 : f32 = u_xlat10.w;
        u_xlat11.y = x_2794;
        let x_2796 : vec2<f32> = u_xlat58;
        let x_2799 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2802 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_2796.x, x_2796.y, x_2796.x, x_2796.y) * vec4<f32>(x_2799.x, x_2799.y, x_2799.x, x_2799.y)) + vec4<f32>(x_2802.x, x_2802.y, x_2802.z, x_2802.y));
        let x_2805 : vec2<f32> = u_xlat58;
        let x_2807 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2810 : vec4<f32> = u_xlat11;
        let x_2812 : vec2<f32> = ((x_2805 * vec2<f32>(x_2807.x, x_2807.y)) + vec2<f32>(x_2810.w, x_2810.y));
        let x_2813 : vec3<f32> = u_xlat34;
        u_xlat34 = vec3<f32>(x_2812.x, x_2812.y, x_2813.z);
        let x_2816 : f32 = u_xlat11.y;
        u_xlat8.w = x_2816;
        let x_2818 : vec2<f32> = u_xlat58;
        let x_2820 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2823 : vec4<f32> = u_xlat8;
        let x_2825 : vec2<f32> = ((x_2818 * vec2<f32>(x_2820.x, x_2820.y)) + vec2<f32>(x_2823.x, x_2823.w));
        let x_2826 : vec4<f32> = u_xlat17;
        u_xlat17 = vec4<f32>(x_2825.x, x_2825.y, x_2826.z, x_2826.w);
        let x_2828 : vec4<f32> = u_xlat11;
        let x_2829 : vec3<f32> = vec3<f32>(x_2828.x, x_2828.z, x_2828.w);
        let x_2830 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2829.x, x_2830.y, x_2829.y, x_2829.z);
        let x_2832 : vec2<f32> = u_xlat58;
        let x_2835 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2838 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_2832.x, x_2832.y, x_2832.x, x_2832.y) * vec4<f32>(x_2835.x, x_2835.y, x_2835.x, x_2835.y)) + vec4<f32>(x_2838.x, x_2838.y, x_2838.z, x_2838.y));
        let x_2841 : vec2<f32> = u_xlat58;
        let x_2843 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2846 : vec4<f32> = u_xlat10;
        u_xlat62 = ((x_2841 * vec2<f32>(x_2843.x, x_2843.y)) + vec2<f32>(x_2846.w, x_2846.y));
        let x_2850 : f32 = u_xlat8.x;
        u_xlat10.x = x_2850;
        let x_2852 : vec2<f32> = u_xlat58;
        let x_2854 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2857 : vec4<f32> = u_xlat10;
        u_xlat58 = ((x_2852 * vec2<f32>(x_2854.x, x_2854.y)) + vec2<f32>(x_2857.x, x_2857.y));
        let x_2860 : vec4<f32> = u_xlat7;
        let x_2862 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_2860.x, x_2860.x, x_2860.x, x_2860.x) * x_2862);
        let x_2864 : vec4<f32> = u_xlat7;
        let x_2866 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_2864.y, x_2864.y, x_2864.y, x_2864.y) * x_2866);
        let x_2868 : vec4<f32> = u_xlat7;
        let x_2870 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_2868.z, x_2868.z, x_2868.z, x_2868.z) * x_2870);
        let x_2872 : vec4<f32> = u_xlat7;
        let x_2874 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_2872.w, x_2872.w, x_2872.w, x_2872.w) * x_2874);
        let x_2877 : vec4<f32> = u_xlat12;
        let x_2878 : vec2<f32> = vec2<f32>(x_2877.x, x_2877.y);
        let x_2880 : f32 = vs_INTERP3.z;
        txVec43 = vec3<f32>(x_2878.x, x_2878.y, x_2880);
        let x_2887 : vec3<f32> = txVec43;
        let x_2889 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2887.xy, x_2887.z);
        u_xlat8.x = x_2889;
        let x_2892 : vec4<f32> = u_xlat12;
        let x_2893 : vec2<f32> = vec2<f32>(x_2892.z, x_2892.w);
        let x_2895 : f32 = vs_INTERP3.z;
        txVec44 = vec3<f32>(x_2893.x, x_2893.y, x_2895);
        let x_2903 : vec3<f32> = txVec44;
        let x_2905 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2903.xy, x_2903.z);
        u_xlat86 = x_2905;
        let x_2906 : f32 = u_xlat86;
        let x_2908 : f32 = u_xlat18.y;
        u_xlat86 = (x_2906 * x_2908);
        let x_2911 : f32 = u_xlat18.x;
        let x_2913 : f32 = u_xlat8.x;
        let x_2915 : f32 = u_xlat86;
        u_xlat8.x = ((x_2911 * x_2913) + x_2915);
        let x_2919 : vec4<f32> = u_xlat13;
        let x_2920 : vec2<f32> = vec2<f32>(x_2919.x, x_2919.y);
        let x_2922 : f32 = vs_INTERP3.z;
        txVec45 = vec3<f32>(x_2920.x, x_2920.y, x_2922);
        let x_2929 : vec3<f32> = txVec45;
        let x_2931 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2929.xy, x_2929.z);
        u_xlat86 = x_2931;
        let x_2933 : f32 = u_xlat18.z;
        let x_2934 : f32 = u_xlat86;
        let x_2937 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2933 * x_2934) + x_2937);
        let x_2941 : vec4<f32> = u_xlat15;
        let x_2942 : vec2<f32> = vec2<f32>(x_2941.x, x_2941.y);
        let x_2944 : f32 = vs_INTERP3.z;
        txVec46 = vec3<f32>(x_2942.x, x_2942.y, x_2944);
        let x_2951 : vec3<f32> = txVec46;
        let x_2953 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2951.xy, x_2951.z);
        u_xlat86 = x_2953;
        let x_2955 : f32 = u_xlat18.w;
        let x_2956 : f32 = u_xlat86;
        let x_2959 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2955 * x_2956) + x_2959);
        let x_2963 : vec4<f32> = u_xlat14;
        let x_2964 : vec2<f32> = vec2<f32>(x_2963.x, x_2963.y);
        let x_2966 : f32 = vs_INTERP3.z;
        txVec47 = vec3<f32>(x_2964.x, x_2964.y, x_2966);
        let x_2973 : vec3<f32> = txVec47;
        let x_2975 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2973.xy, x_2973.z);
        u_xlat86 = x_2975;
        let x_2977 : f32 = u_xlat19.x;
        let x_2978 : f32 = u_xlat86;
        let x_2981 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2977 * x_2978) + x_2981);
        let x_2985 : vec4<f32> = u_xlat14;
        let x_2986 : vec2<f32> = vec2<f32>(x_2985.z, x_2985.w);
        let x_2988 : f32 = vs_INTERP3.z;
        txVec48 = vec3<f32>(x_2986.x, x_2986.y, x_2988);
        let x_2995 : vec3<f32> = txVec48;
        let x_2997 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2995.xy, x_2995.z);
        u_xlat86 = x_2997;
        let x_2999 : f32 = u_xlat19.y;
        let x_3000 : f32 = u_xlat86;
        let x_3003 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2999 * x_3000) + x_3003);
        let x_3007 : vec2<f32> = u_xlat65;
        let x_3009 : f32 = vs_INTERP3.z;
        txVec49 = vec3<f32>(x_3007.x, x_3007.y, x_3009);
        let x_3016 : vec3<f32> = txVec49;
        let x_3018 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3016.xy, x_3016.z);
        u_xlat86 = x_3018;
        let x_3020 : f32 = u_xlat19.z;
        let x_3021 : f32 = u_xlat86;
        let x_3024 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_3020 * x_3021) + x_3024);
        let x_3028 : vec4<f32> = u_xlat15;
        let x_3029 : vec2<f32> = vec2<f32>(x_3028.z, x_3028.w);
        let x_3031 : f32 = vs_INTERP3.z;
        txVec50 = vec3<f32>(x_3029.x, x_3029.y, x_3031);
        let x_3038 : vec3<f32> = txVec50;
        let x_3040 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3038.xy, x_3038.z);
        u_xlat86 = x_3040;
        let x_3042 : f32 = u_xlat19.w;
        let x_3043 : f32 = u_xlat86;
        let x_3046 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_3042 * x_3043) + x_3046);
        let x_3050 : vec4<f32> = u_xlat16;
        let x_3051 : vec2<f32> = vec2<f32>(x_3050.x, x_3050.y);
        let x_3053 : f32 = vs_INTERP3.z;
        txVec51 = vec3<f32>(x_3051.x, x_3051.y, x_3053);
        let x_3060 : vec3<f32> = txVec51;
        let x_3062 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3060.xy, x_3060.z);
        u_xlat86 = x_3062;
        let x_3064 : f32 = u_xlat20.x;
        let x_3065 : f32 = u_xlat86;
        let x_3068 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_3064 * x_3065) + x_3068);
        let x_3072 : vec4<f32> = u_xlat16;
        let x_3073 : vec2<f32> = vec2<f32>(x_3072.z, x_3072.w);
        let x_3075 : f32 = vs_INTERP3.z;
        txVec52 = vec3<f32>(x_3073.x, x_3073.y, x_3075);
        let x_3082 : vec3<f32> = txVec52;
        let x_3084 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3082.xy, x_3082.z);
        u_xlat86 = x_3084;
        let x_3086 : f32 = u_xlat20.y;
        let x_3087 : f32 = u_xlat86;
        let x_3090 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_3086 * x_3087) + x_3090);
        let x_3094 : vec3<f32> = u_xlat34;
        let x_3095 : vec2<f32> = vec2<f32>(x_3094.x, x_3094.y);
        let x_3097 : f32 = vs_INTERP3.z;
        txVec53 = vec3<f32>(x_3095.x, x_3095.y, x_3097);
        let x_3104 : vec3<f32> = txVec53;
        let x_3106 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3104.xy, x_3104.z);
        u_xlat34.x = x_3106;
        let x_3109 : f32 = u_xlat20.z;
        let x_3111 : f32 = u_xlat34.x;
        let x_3114 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_3109 * x_3111) + x_3114);
        let x_3118 : vec4<f32> = u_xlat17;
        let x_3119 : vec2<f32> = vec2<f32>(x_3118.x, x_3118.y);
        let x_3121 : f32 = vs_INTERP3.z;
        txVec54 = vec3<f32>(x_3119.x, x_3119.y, x_3121);
        let x_3128 : vec3<f32> = txVec54;
        let x_3130 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3128.xy, x_3128.z);
        u_xlat34.x = x_3130;
        let x_3133 : f32 = u_xlat20.w;
        let x_3135 : f32 = u_xlat34.x;
        let x_3138 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_3133 * x_3135) + x_3138);
        let x_3142 : vec4<f32> = u_xlat11;
        let x_3143 : vec2<f32> = vec2<f32>(x_3142.x, x_3142.y);
        let x_3145 : f32 = vs_INTERP3.z;
        txVec55 = vec3<f32>(x_3143.x, x_3143.y, x_3145);
        let x_3152 : vec3<f32> = txVec55;
        let x_3154 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3152.xy, x_3152.z);
        u_xlat34.x = x_3154;
        let x_3157 : f32 = u_xlat7.x;
        let x_3159 : f32 = u_xlat34.x;
        let x_3162 : f32 = u_xlat8.x;
        u_xlat7.x = ((x_3157 * x_3159) + x_3162);
        let x_3166 : vec4<f32> = u_xlat11;
        let x_3167 : vec2<f32> = vec2<f32>(x_3166.z, x_3166.w);
        let x_3169 : f32 = vs_INTERP3.z;
        txVec56 = vec3<f32>(x_3167.x, x_3167.y, x_3169);
        let x_3176 : vec3<f32> = txVec56;
        let x_3178 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3176.xy, x_3176.z);
        u_xlat8.x = x_3178;
        let x_3181 : f32 = u_xlat7.y;
        let x_3183 : f32 = u_xlat8.x;
        let x_3186 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_3181 * x_3183) + x_3186);
        let x_3190 : vec2<f32> = u_xlat62;
        let x_3192 : f32 = vs_INTERP3.z;
        txVec57 = vec3<f32>(x_3190.x, x_3190.y, x_3192);
        let x_3200 : vec3<f32> = txVec57;
        let x_3202 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3200.xy, x_3200.z);
        u_xlat33 = x_3202;
        let x_3204 : f32 = u_xlat7.z;
        let x_3205 : f32 = u_xlat33;
        let x_3208 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_3204 * x_3205) + x_3208);
        let x_3212 : vec2<f32> = u_xlat58;
        let x_3214 : f32 = vs_INTERP3.z;
        txVec58 = vec3<f32>(x_3212.x, x_3212.y, x_3214);
        let x_3221 : vec3<f32> = txVec58;
        let x_3223 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3221.xy, x_3221.z);
        u_xlat58.x = x_3223;
        let x_3226 : f32 = u_xlat7.w;
        let x_3228 : f32 = u_xlat58.x;
        let x_3231 : f32 = u_xlat7.x;
        u_xlat78 = ((x_3226 * x_3228) + x_3231);
      }
    }
  } else {
    let x_3235 : vec4<f32> = vs_INTERP3;
    let x_3236 : vec2<f32> = vec2<f32>(x_3235.x, x_3235.y);
    let x_3238 : f32 = vs_INTERP3.z;
    txVec59 = vec3<f32>(x_3236.x, x_3236.y, x_3238);
    let x_3245 : vec3<f32> = txVec59;
    let x_3247 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3245.xy, x_3245.z);
    u_xlat78 = x_3247;
  }
  let x_3248 : f32 = u_xlat78;
  let x_3250 : f32 = x_249.x_MainLightShadowParams.x;
  let x_3252 : f32 = u_xlat80;
  u_xlat78 = ((x_3248 * x_3250) + x_3252);
  let x_3255 : f32 = vs_INTERP3.z;
  u_xlatb80 = (0.0f >= x_3255);
  let x_3258 : f32 = vs_INTERP3.z;
  u_xlatb58.x = (x_3258 >= 1.0f);
  let x_3261 : bool = u_xlatb80;
  let x_3263 : bool = u_xlatb58.x;
  u_xlatb80 = (x_3261 | x_3263);
  let x_3265 : bool = u_xlatb80;
  let x_3266 : f32 = u_xlat78;
  u_xlat78 = select(x_3266, 1.0f, x_3265);
  let x_3268 : vec3<f32> = vs_INTERP8;
  let x_3270 : vec3<f32> = x_75.x_WorldSpaceCameraPos;
  let x_3272 : vec3<f32> = (x_3268 + -(x_3270));
  let x_3273 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3272.x, x_3272.y, x_3272.z, x_3273.w);
  let x_3275 : vec4<f32> = u_xlat7;
  let x_3277 : vec4<f32> = u_xlat7;
  u_xlat80 = dot(vec3<f32>(x_3275.x, x_3275.y, x_3275.z), vec3<f32>(x_3277.x, x_3277.y, x_3277.z));
  let x_3280 : f32 = u_xlat80;
  let x_3282 : f32 = x_249.x_MainLightShadowParams.z;
  let x_3285 : f32 = x_249.x_MainLightShadowParams.w;
  u_xlat58.x = ((x_3280 * x_3282) + x_3285);
  let x_3289 : f32 = u_xlat58.x;
  u_xlat58.x = clamp(x_3289, 0.0f, 1.0f);
  let x_3292 : f32 = u_xlat78;
  u_xlat84 = (-(x_3292) + 1.0f);
  let x_3296 : f32 = u_xlat58.x;
  let x_3297 : f32 = u_xlat84;
  let x_3299 : f32 = u_xlat78;
  u_xlat78 = ((x_3296 * x_3297) + x_3299);
  let x_3308 : f32 = x_3306.x_MainLightCookieTextureFormat;
  u_xlatb58.x = !((x_3308 == -1.0f));
  let x_3312 : bool = u_xlatb58.x;
  if (x_3312) {
    let x_3315 : vec3<f32> = vs_INTERP8;
    let x_3318 : vec4<f32> = x_3306.x_MainLightWorldToLight[1i];
    u_xlat58 = (vec2<f32>(x_3315.y, x_3315.y) * vec2<f32>(x_3318.x, x_3318.y));
    let x_3322 : vec4<f32> = x_3306.x_MainLightWorldToLight[0i];
    let x_3324 : vec3<f32> = vs_INTERP8;
    let x_3327 : vec2<f32> = u_xlat58;
    u_xlat58 = ((vec2<f32>(x_3322.x, x_3322.y) * vec2<f32>(x_3324.x, x_3324.x)) + x_3327);
    let x_3330 : vec4<f32> = x_3306.x_MainLightWorldToLight[2i];
    let x_3332 : vec3<f32> = vs_INTERP8;
    let x_3335 : vec2<f32> = u_xlat58;
    u_xlat58 = ((vec2<f32>(x_3330.x, x_3330.y) * vec2<f32>(x_3332.z, x_3332.z)) + x_3335);
    let x_3337 : vec2<f32> = u_xlat58;
    let x_3339 : vec4<f32> = x_3306.x_MainLightWorldToLight[3i];
    u_xlat58 = (x_3337 + vec2<f32>(x_3339.x, x_3339.y));
    let x_3342 : vec2<f32> = u_xlat58;
    u_xlat58 = ((x_3342 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_3350 : vec2<f32> = u_xlat58;
    let x_3352 : f32 = x_75.x_GlobalMipBias.x;
    let x_3353 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_3350, x_3352);
    u_xlat7 = x_3353;
    let x_3355 : f32 = x_3306.x_MainLightCookieTextureFormat;
    let x_3357 : f32 = x_3306.x_MainLightCookieTextureFormat;
    let x_3359 : f32 = x_3306.x_MainLightCookieTextureFormat;
    let x_3361 : f32 = x_3306.x_MainLightCookieTextureFormat;
    let x_3362 : vec4<f32> = vec4<f32>(x_3355, x_3357, x_3359, x_3361);
    let x_3370 : vec4<bool> = (vec4<f32>(x_3362.x, x_3362.y, x_3362.z, x_3362.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb58 = vec2<bool>(x_3370.x, x_3370.y);
    let x_3373 : bool = u_xlatb58.y;
    if (x_3373) {
      let x_3378 : f32 = u_xlat7.w;
      x_3374 = x_3378;
    } else {
      let x_3381 : f32 = u_xlat7.x;
      x_3374 = x_3381;
    }
    let x_3382 : f32 = x_3374;
    u_xlat84 = x_3382;
    let x_3384 : bool = u_xlatb58.x;
    if (x_3384) {
      let x_3388 : vec4<f32> = u_xlat7;
      x_3385 = vec3<f32>(x_3388.x, x_3388.y, x_3388.z);
    } else {
      let x_3391 : f32 = u_xlat84;
      x_3385 = vec3<f32>(x_3391, x_3391, x_3391);
    }
    let x_3393 : vec3<f32> = x_3385;
    let x_3394 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3393.x, x_3393.y, x_3393.z, x_3394.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_3400 : vec4<f32> = u_xlat7;
  let x_3403 : vec4<f32> = x_75.x_MainLightColor;
  let x_3405 : vec3<f32> = (vec3<f32>(x_3400.x, x_3400.y, x_3400.z) * vec3<f32>(x_3403.x, x_3403.y, x_3403.z));
  let x_3406 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3405.x, x_3405.y, x_3405.z, x_3406.w);
  let x_3408 : vec3<f32> = u_xlat1;
  let x_3410 : vec4<f32> = u_xlat3;
  u_xlat58.x = dot(-(x_3408), vec3<f32>(x_3410.x, x_3410.y, x_3410.z));
  let x_3415 : f32 = u_xlat58.x;
  let x_3417 : f32 = u_xlat58.x;
  u_xlat58.x = (x_3415 + x_3417);
  let x_3420 : vec4<f32> = u_xlat3;
  let x_3422 : vec2<f32> = u_xlat58;
  let x_3426 : vec3<f32> = u_xlat1;
  let x_3428 : vec3<f32> = ((vec3<f32>(x_3420.x, x_3420.y, x_3420.z) * -(vec3<f32>(x_3422.x, x_3422.x, x_3422.x))) + -(x_3426));
  let x_3429 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3428.x, x_3428.y, x_3428.z, x_3429.w);
  let x_3431 : vec4<f32> = u_xlat3;
  let x_3433 : vec3<f32> = u_xlat1;
  u_xlat58.x = dot(vec3<f32>(x_3431.x, x_3431.y, x_3431.z), x_3433);
  let x_3437 : f32 = u_xlat58.x;
  u_xlat58.x = clamp(x_3437, 0.0f, 1.0f);
  let x_3441 : f32 = u_xlat58.x;
  u_xlat58.x = (-(x_3441) + 1.0f);
  let x_3446 : f32 = u_xlat58.x;
  let x_3448 : f32 = u_xlat58.x;
  u_xlat58.x = (x_3446 * x_3448);
  let x_3452 : f32 = u_xlat58.x;
  let x_3454 : f32 = u_xlat58.x;
  u_xlat58.x = (x_3452 * x_3454);
  let x_3457 : f32 = u_xlat54;
  u_xlat84 = ((-(x_3457) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_3463 : f32 = u_xlat54;
  let x_3464 : f32 = u_xlat84;
  u_xlat54 = (x_3463 * x_3464);
  let x_3466 : f32 = u_xlat54;
  u_xlat54 = (x_3466 * 6.0f);
  let x_3477 : vec4<f32> = u_xlat8;
  let x_3479 : f32 = u_xlat54;
  let x_3480 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_3477.x, x_3477.y, x_3477.z), x_3479);
  u_xlat8 = x_3480;
  let x_3482 : f32 = u_xlat8.w;
  u_xlat54 = (x_3482 + -1.0f);
  let x_3485 : f32 = x_132.unity_SpecCube0_HDR.w;
  let x_3486 : f32 = u_xlat54;
  u_xlat54 = ((x_3485 * x_3486) + 1.0f);
  let x_3489 : f32 = u_xlat54;
  u_xlat54 = max(x_3489, 0.0f);
  let x_3491 : f32 = u_xlat54;
  u_xlat54 = log2(x_3491);
  let x_3493 : f32 = u_xlat54;
  let x_3495 : f32 = x_132.unity_SpecCube0_HDR.y;
  u_xlat54 = (x_3493 * x_3495);
  let x_3497 : f32 = u_xlat54;
  u_xlat54 = exp2(x_3497);
  let x_3499 : f32 = u_xlat54;
  let x_3501 : f32 = x_132.unity_SpecCube0_HDR.x;
  u_xlat54 = (x_3499 * x_3501);
  let x_3503 : vec4<f32> = u_xlat8;
  let x_3505 : f32 = u_xlat54;
  let x_3507 : vec3<f32> = (vec3<f32>(x_3503.x, x_3503.y, x_3503.z) * vec3<f32>(x_3505, x_3505, x_3505));
  let x_3508 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3507.x, x_3507.y, x_3507.z, x_3508.w);
  let x_3510 : f32 = u_xlat81;
  let x_3512 : f32 = u_xlat81;
  let x_3516 : vec2<f32> = ((vec2<f32>(x_3510, x_3510) * vec2<f32>(x_3512, x_3512)) + vec2<f32>(-1.0f, 1.0f));
  let x_3517 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_3516.x, x_3516.y, x_3517.z, x_3517.w);
  let x_3520 : f32 = u_xlat9.y;
  u_xlat54 = (1.0f / x_3520);
  let x_3523 : f32 = u_xlat5.x;
  u_xlat81 = (x_3523 + -0.03999999910593032837f);
  let x_3527 : f32 = u_xlat58.x;
  let x_3528 : f32 = u_xlat81;
  u_xlat81 = ((x_3527 * x_3528) + 0.03999999910593032837f);
  let x_3532 : f32 = u_xlat54;
  let x_3533 : f32 = u_xlat81;
  u_xlat54 = (x_3532 * x_3533);
  let x_3535 : f32 = u_xlat54;
  let x_3537 : vec4<f32> = u_xlat8;
  let x_3539 : vec3<f32> = (vec3<f32>(x_3535, x_3535, x_3535) * vec3<f32>(x_3537.x, x_3537.y, x_3537.z));
  let x_3540 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3539.x, x_3539.y, x_3539.z, x_3540.w);
  let x_3542 : vec3<f32> = u_xlat31;
  let x_3543 : vec3<f32> = u_xlat4;
  let x_3545 : vec4<f32> = u_xlat8;
  let x_3547 : vec3<f32> = ((x_3542 * x_3543) + vec3<f32>(x_3545.x, x_3545.y, x_3545.z));
  let x_3548 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_3547.x, x_3547.y, x_3547.z, x_3548.w);
  let x_3550 : f32 = u_xlat78;
  let x_3552 : f32 = x_132.unity_LightData.z;
  u_xlat78 = (x_3550 * x_3552);
  let x_3554 : vec4<f32> = u_xlat3;
  let x_3557 : vec4<f32> = x_75.x_MainLightPosition;
  u_xlat54 = dot(vec3<f32>(x_3554.x, x_3554.y, x_3554.z), vec3<f32>(x_3557.x, x_3557.y, x_3557.z));
  let x_3560 : f32 = u_xlat54;
  u_xlat54 = clamp(x_3560, 0.0f, 1.0f);
  let x_3562 : f32 = u_xlat78;
  let x_3563 : f32 = u_xlat54;
  u_xlat78 = (x_3562 * x_3563);
  let x_3565 : f32 = u_xlat78;
  let x_3567 : vec4<f32> = u_xlat7;
  let x_3569 : vec3<f32> = (vec3<f32>(x_3565, x_3565, x_3565) * vec3<f32>(x_3567.x, x_3567.y, x_3567.z));
  let x_3570 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3569.x, x_3569.y, x_3569.z, x_3570.w);
  let x_3572 : vec3<f32> = u_xlat1;
  let x_3574 : vec4<f32> = x_75.x_MainLightPosition;
  let x_3576 : vec3<f32> = (x_3572 + vec3<f32>(x_3574.x, x_3574.y, x_3574.z));
  let x_3577 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3576.x, x_3576.y, x_3576.z, x_3577.w);
  let x_3579 : vec4<f32> = u_xlat8;
  let x_3581 : vec4<f32> = u_xlat8;
  u_xlat78 = dot(vec3<f32>(x_3579.x, x_3579.y, x_3579.z), vec3<f32>(x_3581.x, x_3581.y, x_3581.z));
  let x_3584 : f32 = u_xlat78;
  u_xlat78 = max(x_3584, 1.17549435e-38f);
  let x_3587 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_3587);
  let x_3589 : f32 = u_xlat78;
  let x_3591 : vec4<f32> = u_xlat8;
  let x_3593 : vec3<f32> = (vec3<f32>(x_3589, x_3589, x_3589) * vec3<f32>(x_3591.x, x_3591.y, x_3591.z));
  let x_3594 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3593.x, x_3593.y, x_3593.z, x_3594.w);
  let x_3596 : vec4<f32> = u_xlat3;
  let x_3598 : vec4<f32> = u_xlat8;
  u_xlat78 = dot(vec3<f32>(x_3596.x, x_3596.y, x_3596.z), vec3<f32>(x_3598.x, x_3598.y, x_3598.z));
  let x_3601 : f32 = u_xlat78;
  u_xlat78 = clamp(x_3601, 0.0f, 1.0f);
  let x_3604 : vec4<f32> = x_75.x_MainLightPosition;
  let x_3606 : vec4<f32> = u_xlat8;
  u_xlat54 = dot(vec3<f32>(x_3604.x, x_3604.y, x_3604.z), vec3<f32>(x_3606.x, x_3606.y, x_3606.z));
  let x_3609 : f32 = u_xlat54;
  u_xlat54 = clamp(x_3609, 0.0f, 1.0f);
  let x_3611 : f32 = u_xlat78;
  let x_3612 : f32 = u_xlat78;
  u_xlat78 = (x_3611 * x_3612);
  let x_3614 : f32 = u_xlat78;
  let x_3616 : f32 = u_xlat9.x;
  u_xlat78 = ((x_3614 * x_3616) + 1.00001001358032226562f);
  let x_3620 : f32 = u_xlat54;
  let x_3621 : f32 = u_xlat54;
  u_xlat54 = (x_3620 * x_3621);
  let x_3623 : f32 = u_xlat78;
  let x_3624 : f32 = u_xlat78;
  u_xlat78 = (x_3623 * x_3624);
  let x_3626 : f32 = u_xlat54;
  u_xlat54 = max(x_3626, 0.10000000149011611938f);
  let x_3629 : f32 = u_xlat78;
  let x_3630 : f32 = u_xlat54;
  u_xlat78 = (x_3629 * x_3630);
  let x_3633 : f32 = u_xlat6.x;
  let x_3634 : f32 = u_xlat78;
  u_xlat78 = (x_3633 * x_3634);
  let x_3636 : f32 = u_xlat82;
  let x_3637 : f32 = u_xlat78;
  u_xlat78 = (x_3636 / x_3637);
  let x_3639 : f32 = u_xlat78;
  let x_3643 : vec3<f32> = u_xlat4;
  let x_3644 : vec3<f32> = ((vec3<f32>(x_3639, x_3639, x_3639) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_3643);
  let x_3645 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3644.x, x_3644.y, x_3644.z, x_3645.w);
  let x_3647 : vec4<f32> = u_xlat7;
  let x_3649 : vec4<f32> = u_xlat8;
  let x_3651 : vec3<f32> = (vec3<f32>(x_3647.x, x_3647.y, x_3647.z) * vec3<f32>(x_3649.x, x_3649.y, x_3649.z));
  let x_3652 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3651.x, x_3651.y, x_3651.z, x_3652.w);
  let x_3656 : f32 = x_75.x_AdditionalLightsCount.x;
  let x_3658 : f32 = x_132.unity_LightData.y;
  u_xlat78 = min(x_3656, x_3658);
  let x_3661 : f32 = u_xlat78;
  u_xlatu78 = bitcast<u32>(i32(x_3661));
  let x_3664 : f32 = u_xlat80;
  let x_3667 : f32 = x_249.x_AdditionalShadowFadeParams.x;
  let x_3670 : f32 = x_249.x_AdditionalShadowFadeParams.y;
  u_xlat54 = ((x_3664 * x_3667) + x_3670);
  let x_3672 : f32 = u_xlat54;
  u_xlat54 = clamp(x_3672, 0.0f, 1.0f);
  let x_3675 : f32 = x_3306.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3677 : f32 = x_3306.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3679 : f32 = x_3306.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3681 : f32 = x_3306.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3682 : vec4<f32> = vec4<f32>(x_3675, x_3677, x_3679, x_3681);
  let x_3688 : vec4<bool> = (vec4<f32>(x_3682.x, x_3682.y, x_3682.z, x_3682.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
  u_xlatb58 = vec2<bool>(x_3688.x, x_3688.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_3699 : u32 = u_xlatu_loop_1;
    let x_3700 : u32 = u_xlatu78;
    if ((x_3699 < x_3700)) {
    } else {
      break;
    }
    let x_3703 : u32 = u_xlatu_loop_1;
    u_xlatu81 = (x_3703 >> 2u);
    let x_3706 : u32 = u_xlatu_loop_1;
    u_xlati83 = bitcast<i32>((x_3706 & 3u));
    let x_3709 : u32 = u_xlatu81;
    let x_3712 : vec4<f32> = x_132.unity_LightIndices[bitcast<i32>(x_3709)];
    let x_3722 : i32 = u_xlati83;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_3727 : vec4<u32> = indexable[x_3722];
    u_xlat81 = dot(x_3712, bitcast<vec4<f32>>(x_3727));
    let x_3731 : f32 = u_xlat81;
    u_xlati81 = i32(x_3731);
    let x_3733 : vec3<f32> = vs_INTERP8;
    let x_3744 : i32 = u_xlati81;
    let x_3746 : vec4<f32> = x_3743.x_AdditionalLightsPosition[x_3744];
    let x_3749 : i32 = u_xlati81;
    let x_3751 : vec4<f32> = x_3743.x_AdditionalLightsPosition[x_3749];
    u_xlat35 = ((-(x_3733) * vec3<f32>(x_3746.w, x_3746.w, x_3746.w)) + vec3<f32>(x_3751.x, x_3751.y, x_3751.z));
    let x_3755 : vec3<f32> = u_xlat35;
    let x_3756 : vec3<f32> = u_xlat35;
    u_xlat83 = dot(x_3755, x_3756);
    let x_3758 : f32 = u_xlat83;
    u_xlat83 = max(x_3758, 0.00006103515625f);
    let x_3762 : f32 = u_xlat83;
    u_xlat85 = inverseSqrt(x_3762);
    let x_3764 : f32 = u_xlat85;
    let x_3766 : vec3<f32> = u_xlat35;
    let x_3767 : vec3<f32> = (vec3<f32>(x_3764, x_3764, x_3764) * x_3766);
    let x_3768 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3767.x, x_3767.y, x_3767.z, x_3768.w);
    let x_3770 : f32 = u_xlat83;
    u_xlat86 = (1.0f / x_3770);
    let x_3772 : f32 = u_xlat83;
    let x_3773 : i32 = u_xlati81;
    let x_3775 : f32 = x_3743.x_AdditionalLightsAttenuation[x_3773].x;
    u_xlat83 = (x_3772 * x_3775);
    let x_3777 : f32 = u_xlat83;
    let x_3779 : f32 = u_xlat83;
    u_xlat83 = ((-(x_3777) * x_3779) + 1.0f);
    let x_3782 : f32 = u_xlat83;
    u_xlat83 = max(x_3782, 0.0f);
    let x_3784 : f32 = u_xlat83;
    let x_3785 : f32 = u_xlat83;
    u_xlat83 = (x_3784 * x_3785);
    let x_3787 : f32 = u_xlat83;
    let x_3788 : f32 = u_xlat86;
    u_xlat83 = (x_3787 * x_3788);
    let x_3790 : i32 = u_xlati81;
    let x_3792 : vec4<f32> = x_3743.x_AdditionalLightsSpotDir[x_3790];
    let x_3794 : vec4<f32> = u_xlat10;
    u_xlat86 = dot(vec3<f32>(x_3792.x, x_3792.y, x_3792.z), vec3<f32>(x_3794.x, x_3794.y, x_3794.z));
    let x_3797 : f32 = u_xlat86;
    let x_3798 : i32 = u_xlati81;
    let x_3800 : f32 = x_3743.x_AdditionalLightsAttenuation[x_3798].z;
    let x_3802 : i32 = u_xlati81;
    let x_3804 : f32 = x_3743.x_AdditionalLightsAttenuation[x_3802].w;
    u_xlat86 = ((x_3797 * x_3800) + x_3804);
    let x_3806 : f32 = u_xlat86;
    u_xlat86 = clamp(x_3806, 0.0f, 1.0f);
    let x_3808 : f32 = u_xlat86;
    let x_3809 : f32 = u_xlat86;
    u_xlat86 = (x_3808 * x_3809);
    let x_3811 : f32 = u_xlat83;
    let x_3812 : f32 = u_xlat86;
    u_xlat83 = (x_3811 * x_3812);
    let x_3816 : i32 = u_xlati81;
    let x_3818 : f32 = x_249.x_AdditionalShadowParams[x_3816].w;
    u_xlati86 = i32(x_3818);
    let x_3821 : i32 = u_xlati86;
    u_xlatb88 = (x_3821 >= 0i);
    let x_3823 : bool = u_xlatb88;
    if (x_3823) {
      let x_3827 : i32 = u_xlati81;
      let x_3829 : f32 = x_249.x_AdditionalShadowParams[x_3827].z;
      u_xlatb88 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_3829, x_3829, x_3829, x_3829))));
      let x_3833 : bool = u_xlatb88;
      if (x_3833) {
        let x_3838 : vec4<f32> = u_xlat10;
        let x_3841 : vec4<f32> = u_xlat10;
        let x_3844 : vec4<bool> = (abs(vec4<f32>(x_3838.z, x_3838.z, x_3838.y, x_3838.z)) >= abs(vec4<f32>(x_3841.x, x_3841.y, x_3841.x, x_3841.x)));
        let x_3846 : vec3<bool> = vec3<bool>(x_3844.x, x_3844.y, x_3844.z);
        let x_3847 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3846.x, x_3846.y, x_3846.z, x_3847.w);
        let x_3850 : bool = u_xlatb11.y;
        let x_3852 : bool = u_xlatb11.x;
        u_xlatb88 = (x_3850 & x_3852);
        let x_3854 : vec4<f32> = u_xlat10;
        let x_3857 : vec4<bool> = (-(vec4<f32>(x_3854.z, x_3854.y, x_3854.z, x_3854.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_3858 : vec3<bool> = vec3<bool>(x_3857.x, x_3857.y, x_3857.w);
        let x_3859 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3858.x, x_3858.y, x_3859.z, x_3858.z);
        let x_3862 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_3862);
        let x_3867 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_3867);
        let x_3873 : bool = u_xlatb11.w;
        u_xlat89 = select(0.0f, 1.0f, x_3873);
        let x_3877 : bool = u_xlatb11.z;
        if (x_3877) {
          let x_3882 : f32 = u_xlat11.y;
          x_3878 = x_3882;
        } else {
          let x_3884 : f32 = u_xlat89;
          x_3878 = x_3884;
        }
        let x_3885 : f32 = x_3878;
        u_xlat37.x = x_3885;
        let x_3888 : bool = u_xlatb88;
        if (x_3888) {
          let x_3893 : f32 = u_xlat11.x;
          x_3889 = x_3893;
        } else {
          let x_3896 : f32 = u_xlat37.x;
          x_3889 = x_3896;
        }
        let x_3897 : f32 = x_3889;
        u_xlat88 = x_3897;
        let x_3898 : i32 = u_xlati81;
        let x_3900 : f32 = x_249.x_AdditionalShadowParams[x_3898].w;
        u_xlat11.x = trunc(x_3900);
        let x_3903 : f32 = u_xlat88;
        let x_3905 : f32 = u_xlat11.x;
        u_xlat88 = (x_3903 + x_3905);
        let x_3907 : f32 = u_xlat88;
        u_xlati86 = i32(x_3907);
      }
      let x_3909 : i32 = u_xlati86;
      u_xlati86 = (x_3909 << bitcast<u32>(2i));
      let x_3911 : vec3<f32> = vs_INTERP8;
      let x_3914 : i32 = u_xlati86;
      let x_3917 : i32 = u_xlati86;
      let x_3921 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[((x_3914 + 1i) / 4i)][((x_3917 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_3911.y, x_3911.y, x_3911.y, x_3911.y) * x_3921);
      let x_3923 : i32 = u_xlati86;
      let x_3925 : i32 = u_xlati86;
      let x_3928 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[(x_3923 / 4i)][(x_3925 % 4i)];
      let x_3929 : vec3<f32> = vs_INTERP8;
      let x_3932 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3928 * vec4<f32>(x_3929.x, x_3929.x, x_3929.x, x_3929.x)) + x_3932);
      let x_3934 : i32 = u_xlati86;
      let x_3937 : i32 = u_xlati86;
      let x_3941 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[((x_3934 + 2i) / 4i)][((x_3937 + 2i) % 4i)];
      let x_3942 : vec3<f32> = vs_INTERP8;
      let x_3945 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3941 * vec4<f32>(x_3942.z, x_3942.z, x_3942.z, x_3942.z)) + x_3945);
      let x_3947 : vec4<f32> = u_xlat11;
      let x_3948 : i32 = u_xlati86;
      let x_3951 : i32 = u_xlati86;
      let x_3955 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[((x_3948 + 3i) / 4i)][((x_3951 + 3i) % 4i)];
      u_xlat11 = (x_3947 + x_3955);
      let x_3957 : vec4<f32> = u_xlat11;
      let x_3959 : vec4<f32> = u_xlat11;
      let x_3961 : vec3<f32> = (vec3<f32>(x_3957.x, x_3957.y, x_3957.z) / vec3<f32>(x_3959.w, x_3959.w, x_3959.w));
      let x_3962 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3961.x, x_3961.y, x_3961.z, x_3962.w);
      let x_3965 : i32 = u_xlati81;
      let x_3967 : f32 = x_249.x_AdditionalShadowParams[x_3965].y;
      u_xlatb86 = (0.0f < x_3967);
      let x_3969 : bool = u_xlatb86;
      if (x_3969) {
        let x_3972 : i32 = u_xlati81;
        let x_3974 : f32 = x_249.x_AdditionalShadowParams[x_3972].y;
        u_xlatb86 = (1.0f == x_3974);
        let x_3976 : bool = u_xlatb86;
        if (x_3976) {
          let x_3979 : vec4<f32> = u_xlat11;
          let x_3983 : vec4<f32> = x_249.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_3979.x, x_3979.y, x_3979.x, x_3979.y) + x_3983);
          let x_3986 : vec4<f32> = u_xlat12;
          let x_3987 : vec2<f32> = vec2<f32>(x_3986.x, x_3986.y);
          let x_3989 : f32 = u_xlat11.z;
          txVec60 = vec3<f32>(x_3987.x, x_3987.y, x_3989);
          let x_3997 : vec3<f32> = txVec60;
          let x_3999 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3997.xy, x_3997.z);
          u_xlat13.x = x_3999;
          let x_4002 : vec4<f32> = u_xlat12;
          let x_4003 : vec2<f32> = vec2<f32>(x_4002.z, x_4002.w);
          let x_4005 : f32 = u_xlat11.z;
          txVec61 = vec3<f32>(x_4003.x, x_4003.y, x_4005);
          let x_4012 : vec3<f32> = txVec61;
          let x_4014 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4012.xy, x_4012.z);
          u_xlat13.y = x_4014;
          let x_4016 : vec4<f32> = u_xlat11;
          let x_4019 : vec4<f32> = x_249.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_4016.x, x_4016.y, x_4016.x, x_4016.y) + x_4019);
          let x_4022 : vec4<f32> = u_xlat12;
          let x_4023 : vec2<f32> = vec2<f32>(x_4022.x, x_4022.y);
          let x_4025 : f32 = u_xlat11.z;
          txVec62 = vec3<f32>(x_4023.x, x_4023.y, x_4025);
          let x_4032 : vec3<f32> = txVec62;
          let x_4034 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4032.xy, x_4032.z);
          u_xlat13.z = x_4034;
          let x_4037 : vec4<f32> = u_xlat12;
          let x_4038 : vec2<f32> = vec2<f32>(x_4037.z, x_4037.w);
          let x_4040 : f32 = u_xlat11.z;
          txVec63 = vec3<f32>(x_4038.x, x_4038.y, x_4040);
          let x_4047 : vec3<f32> = txVec63;
          let x_4049 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4047.xy, x_4047.z);
          u_xlat13.w = x_4049;
          let x_4051 : vec4<f32> = u_xlat13;
          u_xlat86 = dot(x_4051, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_4054 : i32 = u_xlati81;
          let x_4056 : f32 = x_249.x_AdditionalShadowParams[x_4054].y;
          u_xlatb88 = (2.0f == x_4056);
          let x_4058 : bool = u_xlatb88;
          if (x_4058) {
            let x_4061 : vec4<f32> = u_xlat11;
            let x_4065 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4068 : vec2<f32> = ((vec2<f32>(x_4061.x, x_4061.y) * vec2<f32>(x_4065.z, x_4065.w)) + vec2<f32>(0.5f, 0.5f));
            let x_4069 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4068.x, x_4068.y, x_4069.z, x_4069.w);
            let x_4071 : vec4<f32> = u_xlat12;
            let x_4073 : vec2<f32> = floor(vec2<f32>(x_4071.x, x_4071.y));
            let x_4074 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4073.x, x_4073.y, x_4074.z, x_4074.w);
            let x_4077 : vec4<f32> = u_xlat11;
            let x_4080 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4083 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_4077.x, x_4077.y) * vec2<f32>(x_4080.z, x_4080.w)) + -(vec2<f32>(x_4083.x, x_4083.y)));
            let x_4087 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_4087.x, x_4087.x, x_4087.y, x_4087.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4090 : vec4<f32> = u_xlat13;
            let x_4092 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_4090.x, x_4090.x, x_4090.z, x_4090.z) * vec4<f32>(x_4092.x, x_4092.x, x_4092.z, x_4092.z));
            let x_4095 : vec4<f32> = u_xlat14;
            let x_4097 : vec2<f32> = (vec2<f32>(x_4095.y, x_4095.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_4098 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4097.x, x_4098.y, x_4097.y, x_4098.w);
            let x_4100 : vec4<f32> = u_xlat14;
            let x_4103 : vec2<f32> = u_xlat64;
            let x_4105 : vec2<f32> = ((vec2<f32>(x_4100.x, x_4100.z) * vec2<f32>(0.5f, 0.5f)) + -(x_4103));
            let x_4106 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4105.x, x_4105.y, x_4106.z, x_4106.w);
            let x_4109 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_4109) + vec2<f32>(1.0f, 1.0f));
            let x_4112 : vec2<f32> = u_xlat64;
            let x_4113 : vec2<f32> = min(x_4112, vec2<f32>(0.0f, 0.0f));
            let x_4114 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4113.x, x_4113.y, x_4114.z, x_4114.w);
            let x_4116 : vec4<f32> = u_xlat15;
            let x_4119 : vec4<f32> = u_xlat15;
            let x_4122 : vec2<f32> = u_xlat66;
            let x_4123 : vec2<f32> = ((-(vec2<f32>(x_4116.x, x_4116.y)) * vec2<f32>(x_4119.x, x_4119.y)) + x_4122);
            let x_4124 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4123.x, x_4123.y, x_4124.z, x_4124.w);
            let x_4126 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_4126, vec2<f32>(0.0f, 0.0f));
            let x_4128 : vec2<f32> = u_xlat64;
            let x_4130 : vec2<f32> = u_xlat64;
            let x_4132 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_4128) * x_4130) + vec2<f32>(x_4132.y, x_4132.w));
            let x_4135 : vec4<f32> = u_xlat15;
            let x_4137 : vec2<f32> = (vec2<f32>(x_4135.x, x_4135.y) + vec2<f32>(1.0f, 1.0f));
            let x_4138 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4137.x, x_4137.y, x_4138.z, x_4138.w);
            let x_4140 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_4140 + vec2<f32>(1.0f, 1.0f));
            let x_4142 : vec4<f32> = u_xlat14;
            let x_4144 : vec2<f32> = (vec2<f32>(x_4142.x, x_4142.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4145 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4144.x, x_4144.y, x_4145.z, x_4145.w);
            let x_4147 : vec2<f32> = u_xlat66;
            let x_4148 : vec2<f32> = (x_4147 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4149 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4148.x, x_4148.y, x_4149.z, x_4149.w);
            let x_4151 : vec4<f32> = u_xlat15;
            let x_4153 : vec2<f32> = (vec2<f32>(x_4151.x, x_4151.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4154 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4153.x, x_4153.y, x_4154.z, x_4154.w);
            let x_4156 : vec2<f32> = u_xlat64;
            let x_4157 : vec2<f32> = (x_4156 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4158 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4157.x, x_4157.y, x_4158.z, x_4158.w);
            let x_4160 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_4160.y, x_4160.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4164 : f32 = u_xlat15.x;
            u_xlat16.z = x_4164;
            let x_4167 : f32 = u_xlat64.x;
            u_xlat16.w = x_4167;
            let x_4170 : f32 = u_xlat17.x;
            u_xlat14.z = x_4170;
            let x_4173 : f32 = u_xlat13.x;
            u_xlat14.w = x_4173;
            let x_4175 : vec4<f32> = u_xlat14;
            let x_4177 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_4175.z, x_4175.w, x_4175.x, x_4175.z) + vec4<f32>(x_4177.z, x_4177.w, x_4177.x, x_4177.z));
            let x_4181 : f32 = u_xlat16.y;
            u_xlat15.z = x_4181;
            let x_4184 : f32 = u_xlat64.y;
            u_xlat15.w = x_4184;
            let x_4187 : f32 = u_xlat14.y;
            u_xlat17.z = x_4187;
            let x_4190 : f32 = u_xlat13.z;
            u_xlat17.w = x_4190;
            let x_4192 : vec4<f32> = u_xlat15;
            let x_4194 : vec4<f32> = u_xlat17;
            let x_4196 : vec3<f32> = (vec3<f32>(x_4192.z, x_4192.y, x_4192.w) + vec3<f32>(x_4194.z, x_4194.y, x_4194.w));
            let x_4197 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4196.x, x_4196.y, x_4196.z, x_4197.w);
            let x_4199 : vec4<f32> = u_xlat14;
            let x_4201 : vec4<f32> = u_xlat18;
            let x_4203 : vec3<f32> = (vec3<f32>(x_4199.x, x_4199.z, x_4199.w) / vec3<f32>(x_4201.z, x_4201.w, x_4201.y));
            let x_4204 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4203.x, x_4203.y, x_4203.z, x_4204.w);
            let x_4206 : vec4<f32> = u_xlat14;
            let x_4208 : vec3<f32> = (vec3<f32>(x_4206.x, x_4206.y, x_4206.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4209 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4208.x, x_4208.y, x_4208.z, x_4209.w);
            let x_4211 : vec4<f32> = u_xlat17;
            let x_4213 : vec4<f32> = u_xlat13;
            let x_4215 : vec3<f32> = (vec3<f32>(x_4211.z, x_4211.y, x_4211.w) / vec3<f32>(x_4213.x, x_4213.y, x_4213.z));
            let x_4216 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4215.x, x_4215.y, x_4215.z, x_4216.w);
            let x_4218 : vec4<f32> = u_xlat15;
            let x_4220 : vec3<f32> = (vec3<f32>(x_4218.x, x_4218.y, x_4218.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4221 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4220.x, x_4220.y, x_4220.z, x_4221.w);
            let x_4223 : vec4<f32> = u_xlat14;
            let x_4226 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4228 : vec3<f32> = (vec3<f32>(x_4223.y, x_4223.x, x_4223.z) * vec3<f32>(x_4226.x, x_4226.x, x_4226.x));
            let x_4229 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4228.x, x_4228.y, x_4228.z, x_4229.w);
            let x_4231 : vec4<f32> = u_xlat15;
            let x_4234 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4236 : vec3<f32> = (vec3<f32>(x_4231.x, x_4231.y, x_4231.z) * vec3<f32>(x_4234.y, x_4234.y, x_4234.y));
            let x_4237 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4236.x, x_4236.y, x_4236.z, x_4237.w);
            let x_4240 : f32 = u_xlat15.x;
            u_xlat14.w = x_4240;
            let x_4242 : vec4<f32> = u_xlat12;
            let x_4245 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4248 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_4242.x, x_4242.y, x_4242.x, x_4242.y) * vec4<f32>(x_4245.x, x_4245.y, x_4245.x, x_4245.y)) + vec4<f32>(x_4248.y, x_4248.w, x_4248.x, x_4248.w));
            let x_4251 : vec4<f32> = u_xlat12;
            let x_4254 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4257 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_4251.x, x_4251.y) * vec2<f32>(x_4254.x, x_4254.y)) + vec2<f32>(x_4257.z, x_4257.w));
            let x_4261 : f32 = u_xlat14.y;
            u_xlat15.w = x_4261;
            let x_4263 : vec4<f32> = u_xlat15;
            let x_4264 : vec2<f32> = vec2<f32>(x_4263.y, x_4263.z);
            let x_4265 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4265.x, x_4264.x, x_4265.z, x_4264.y);
            let x_4267 : vec4<f32> = u_xlat12;
            let x_4270 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4273 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_4267.x, x_4267.y, x_4267.x, x_4267.y) * vec4<f32>(x_4270.x, x_4270.y, x_4270.x, x_4270.y)) + vec4<f32>(x_4273.x, x_4273.y, x_4273.z, x_4273.y));
            let x_4276 : vec4<f32> = u_xlat12;
            let x_4279 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4282 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_4276.x, x_4276.y, x_4276.x, x_4276.y) * vec4<f32>(x_4279.x, x_4279.y, x_4279.x, x_4279.y)) + vec4<f32>(x_4282.w, x_4282.y, x_4282.w, x_4282.z));
            let x_4285 : vec4<f32> = u_xlat12;
            let x_4288 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4291 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_4285.x, x_4285.y, x_4285.x, x_4285.y) * vec4<f32>(x_4288.x, x_4288.y, x_4288.x, x_4288.y)) + vec4<f32>(x_4291.x, x_4291.w, x_4291.z, x_4291.w));
            let x_4294 : vec4<f32> = u_xlat13;
            let x_4296 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_4294.x, x_4294.x, x_4294.x, x_4294.y) * vec4<f32>(x_4296.z, x_4296.w, x_4296.y, x_4296.z));
            let x_4299 : vec4<f32> = u_xlat13;
            let x_4301 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_4299.y, x_4299.y, x_4299.z, x_4299.z) * x_4301);
            let x_4304 : f32 = u_xlat13.z;
            let x_4306 : f32 = u_xlat18.y;
            u_xlat88 = (x_4304 * x_4306);
            let x_4309 : vec4<f32> = u_xlat16;
            let x_4310 : vec2<f32> = vec2<f32>(x_4309.x, x_4309.y);
            let x_4312 : f32 = u_xlat11.z;
            txVec64 = vec3<f32>(x_4310.x, x_4310.y, x_4312);
            let x_4319 : vec3<f32> = txVec64;
            let x_4321 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4319.xy, x_4319.z);
            u_xlat89 = x_4321;
            let x_4323 : vec4<f32> = u_xlat16;
            let x_4324 : vec2<f32> = vec2<f32>(x_4323.z, x_4323.w);
            let x_4326 : f32 = u_xlat11.z;
            txVec65 = vec3<f32>(x_4324.x, x_4324.y, x_4326);
            let x_4333 : vec3<f32> = txVec65;
            let x_4335 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4333.xy, x_4333.z);
            u_xlat12.x = x_4335;
            let x_4338 : f32 = u_xlat12.x;
            let x_4340 : f32 = u_xlat19.y;
            u_xlat12.x = (x_4338 * x_4340);
            let x_4344 : f32 = u_xlat19.x;
            let x_4345 : f32 = u_xlat89;
            let x_4348 : f32 = u_xlat12.x;
            u_xlat89 = ((x_4344 * x_4345) + x_4348);
            let x_4351 : vec2<f32> = u_xlat64;
            let x_4353 : f32 = u_xlat11.z;
            txVec66 = vec3<f32>(x_4351.x, x_4351.y, x_4353);
            let x_4360 : vec3<f32> = txVec66;
            let x_4362 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4360.xy, x_4360.z);
            u_xlat12.x = x_4362;
            let x_4365 : f32 = u_xlat19.z;
            let x_4367 : f32 = u_xlat12.x;
            let x_4369 : f32 = u_xlat89;
            u_xlat89 = ((x_4365 * x_4367) + x_4369);
            let x_4372 : vec4<f32> = u_xlat15;
            let x_4373 : vec2<f32> = vec2<f32>(x_4372.x, x_4372.y);
            let x_4375 : f32 = u_xlat11.z;
            txVec67 = vec3<f32>(x_4373.x, x_4373.y, x_4375);
            let x_4382 : vec3<f32> = txVec67;
            let x_4384 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4382.xy, x_4382.z);
            u_xlat12.x = x_4384;
            let x_4387 : f32 = u_xlat19.w;
            let x_4389 : f32 = u_xlat12.x;
            let x_4391 : f32 = u_xlat89;
            u_xlat89 = ((x_4387 * x_4389) + x_4391);
            let x_4394 : vec4<f32> = u_xlat17;
            let x_4395 : vec2<f32> = vec2<f32>(x_4394.x, x_4394.y);
            let x_4397 : f32 = u_xlat11.z;
            txVec68 = vec3<f32>(x_4395.x, x_4395.y, x_4397);
            let x_4404 : vec3<f32> = txVec68;
            let x_4406 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4404.xy, x_4404.z);
            u_xlat12.x = x_4406;
            let x_4409 : f32 = u_xlat20.x;
            let x_4411 : f32 = u_xlat12.x;
            let x_4413 : f32 = u_xlat89;
            u_xlat89 = ((x_4409 * x_4411) + x_4413);
            let x_4416 : vec4<f32> = u_xlat17;
            let x_4417 : vec2<f32> = vec2<f32>(x_4416.z, x_4416.w);
            let x_4419 : f32 = u_xlat11.z;
            txVec69 = vec3<f32>(x_4417.x, x_4417.y, x_4419);
            let x_4426 : vec3<f32> = txVec69;
            let x_4428 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4426.xy, x_4426.z);
            u_xlat12.x = x_4428;
            let x_4431 : f32 = u_xlat20.y;
            let x_4433 : f32 = u_xlat12.x;
            let x_4435 : f32 = u_xlat89;
            u_xlat89 = ((x_4431 * x_4433) + x_4435);
            let x_4438 : vec4<f32> = u_xlat15;
            let x_4439 : vec2<f32> = vec2<f32>(x_4438.z, x_4438.w);
            let x_4441 : f32 = u_xlat11.z;
            txVec70 = vec3<f32>(x_4439.x, x_4439.y, x_4441);
            let x_4448 : vec3<f32> = txVec70;
            let x_4450 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4448.xy, x_4448.z);
            u_xlat12.x = x_4450;
            let x_4453 : f32 = u_xlat20.z;
            let x_4455 : f32 = u_xlat12.x;
            let x_4457 : f32 = u_xlat89;
            u_xlat89 = ((x_4453 * x_4455) + x_4457);
            let x_4460 : vec4<f32> = u_xlat14;
            let x_4461 : vec2<f32> = vec2<f32>(x_4460.x, x_4460.y);
            let x_4463 : f32 = u_xlat11.z;
            txVec71 = vec3<f32>(x_4461.x, x_4461.y, x_4463);
            let x_4470 : vec3<f32> = txVec71;
            let x_4472 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4470.xy, x_4470.z);
            u_xlat12.x = x_4472;
            let x_4475 : f32 = u_xlat20.w;
            let x_4477 : f32 = u_xlat12.x;
            let x_4479 : f32 = u_xlat89;
            u_xlat89 = ((x_4475 * x_4477) + x_4479);
            let x_4482 : vec4<f32> = u_xlat14;
            let x_4483 : vec2<f32> = vec2<f32>(x_4482.z, x_4482.w);
            let x_4485 : f32 = u_xlat11.z;
            txVec72 = vec3<f32>(x_4483.x, x_4483.y, x_4485);
            let x_4492 : vec3<f32> = txVec72;
            let x_4494 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4492.xy, x_4492.z);
            u_xlat12.x = x_4494;
            let x_4496 : f32 = u_xlat88;
            let x_4498 : f32 = u_xlat12.x;
            let x_4500 : f32 = u_xlat89;
            u_xlat86 = ((x_4496 * x_4498) + x_4500);
          } else {
            let x_4503 : vec4<f32> = u_xlat11;
            let x_4506 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4509 : vec2<f32> = ((vec2<f32>(x_4503.x, x_4503.y) * vec2<f32>(x_4506.z, x_4506.w)) + vec2<f32>(0.5f, 0.5f));
            let x_4510 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4509.x, x_4509.y, x_4510.z, x_4510.w);
            let x_4512 : vec4<f32> = u_xlat12;
            let x_4514 : vec2<f32> = floor(vec2<f32>(x_4512.x, x_4512.y));
            let x_4515 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4514.x, x_4514.y, x_4515.z, x_4515.w);
            let x_4517 : vec4<f32> = u_xlat11;
            let x_4520 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4523 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_4517.x, x_4517.y) * vec2<f32>(x_4520.z, x_4520.w)) + -(vec2<f32>(x_4523.x, x_4523.y)));
            let x_4527 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_4527.x, x_4527.x, x_4527.y, x_4527.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4530 : vec4<f32> = u_xlat13;
            let x_4532 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_4530.x, x_4530.x, x_4530.z, x_4530.z) * vec4<f32>(x_4532.x, x_4532.x, x_4532.z, x_4532.z));
            let x_4535 : vec4<f32> = u_xlat14;
            let x_4537 : vec2<f32> = (vec2<f32>(x_4535.y, x_4535.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_4538 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4538.x, x_4537.x, x_4538.z, x_4537.y);
            let x_4540 : vec4<f32> = u_xlat14;
            let x_4543 : vec2<f32> = u_xlat64;
            let x_4545 : vec2<f32> = ((vec2<f32>(x_4540.x, x_4540.z) * vec2<f32>(0.5f, 0.5f)) + -(x_4543));
            let x_4546 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4545.x, x_4546.y, x_4545.y, x_4546.w);
            let x_4548 : vec2<f32> = u_xlat64;
            let x_4550 : vec2<f32> = (-(x_4548) + vec2<f32>(1.0f, 1.0f));
            let x_4551 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4550.x, x_4550.y, x_4551.z, x_4551.w);
            let x_4553 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_4553, vec2<f32>(0.0f, 0.0f));
            let x_4555 : vec2<f32> = u_xlat66;
            let x_4557 : vec2<f32> = u_xlat66;
            let x_4559 : vec4<f32> = u_xlat14;
            let x_4561 : vec2<f32> = ((-(x_4555) * x_4557) + vec2<f32>(x_4559.x, x_4559.y));
            let x_4562 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4561.x, x_4561.y, x_4562.z, x_4562.w);
            let x_4564 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_4564, vec2<f32>(0.0f, 0.0f));
            let x_4567 : vec2<f32> = u_xlat66;
            let x_4569 : vec2<f32> = u_xlat66;
            let x_4571 : vec4<f32> = u_xlat13;
            let x_4573 : vec2<f32> = ((-(x_4567) * x_4569) + vec2<f32>(x_4571.y, x_4571.w));
            let x_4574 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_4573.x, x_4574.y, x_4573.y);
            let x_4576 : vec4<f32> = u_xlat14;
            let x_4578 : vec2<f32> = (vec2<f32>(x_4576.x, x_4576.y) + vec2<f32>(2.0f, 2.0f));
            let x_4579 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4578.x, x_4578.y, x_4579.z, x_4579.w);
            let x_4581 : vec3<f32> = u_xlat39;
            let x_4583 : vec2<f32> = (vec2<f32>(x_4581.x, x_4581.z) + vec2<f32>(2.0f, 2.0f));
            let x_4584 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4584.x, x_4583.x, x_4584.z, x_4583.y);
            let x_4587 : f32 = u_xlat13.y;
            u_xlat16.z = (x_4587 * 0.08163200318813323975f);
            let x_4590 : vec4<f32> = u_xlat13;
            let x_4592 : vec3<f32> = (vec3<f32>(x_4590.z, x_4590.x, x_4590.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_4593 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4592.x, x_4592.y, x_4592.z, x_4593.w);
            let x_4595 : vec4<f32> = u_xlat14;
            let x_4597 : vec2<f32> = (vec2<f32>(x_4595.x, x_4595.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_4598 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4597.x, x_4597.y, x_4598.z, x_4598.w);
            let x_4601 : f32 = u_xlat17.y;
            u_xlat16.x = x_4601;
            let x_4603 : vec2<f32> = u_xlat64;
            let x_4606 : vec2<f32> = ((vec2<f32>(x_4603.x, x_4603.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4607 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4607.x, x_4606.x, x_4607.z, x_4606.y);
            let x_4609 : vec2<f32> = u_xlat64;
            let x_4612 : vec2<f32> = ((vec2<f32>(x_4609.x, x_4609.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4613 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4612.x, x_4613.y, x_4612.y, x_4613.w);
            let x_4616 : f32 = u_xlat13.x;
            u_xlat14.y = x_4616;
            let x_4619 : f32 = u_xlat15.y;
            u_xlat14.w = x_4619;
            let x_4621 : vec4<f32> = u_xlat14;
            let x_4622 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_4621 + x_4622);
            let x_4624 : vec2<f32> = u_xlat64;
            let x_4627 : vec2<f32> = ((vec2<f32>(x_4624.y, x_4624.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4628 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4628.x, x_4627.x, x_4628.z, x_4627.y);
            let x_4630 : vec2<f32> = u_xlat64;
            let x_4633 : vec2<f32> = ((vec2<f32>(x_4630.y, x_4630.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4634 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4633.x, x_4634.y, x_4633.y, x_4634.w);
            let x_4637 : f32 = u_xlat13.y;
            u_xlat15.y = x_4637;
            let x_4639 : vec4<f32> = u_xlat15;
            let x_4640 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_4639 + x_4640);
            let x_4642 : vec4<f32> = u_xlat14;
            let x_4643 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_4642 / x_4643);
            let x_4645 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_4645 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4647 : vec4<f32> = u_xlat15;
            let x_4648 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_4647 / x_4648);
            let x_4650 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_4650 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4652 : vec4<f32> = u_xlat14;
            let x_4655 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_4652.w, x_4652.x, x_4652.y, x_4652.z) * vec4<f32>(x_4655.x, x_4655.x, x_4655.x, x_4655.x));
            let x_4658 : vec4<f32> = u_xlat15;
            let x_4661 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_4658.x, x_4658.w, x_4658.y, x_4658.z) * vec4<f32>(x_4661.y, x_4661.y, x_4661.y, x_4661.y));
            let x_4664 : vec4<f32> = u_xlat14;
            let x_4665 : vec3<f32> = vec3<f32>(x_4664.y, x_4664.z, x_4664.w);
            let x_4666 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4665.x, x_4666.y, x_4665.y, x_4665.z);
            let x_4669 : f32 = u_xlat15.x;
            u_xlat17.y = x_4669;
            let x_4671 : vec4<f32> = u_xlat12;
            let x_4674 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4677 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_4671.x, x_4671.y, x_4671.x, x_4671.y) * vec4<f32>(x_4674.x, x_4674.y, x_4674.x, x_4674.y)) + vec4<f32>(x_4677.x, x_4677.y, x_4677.z, x_4677.y));
            let x_4680 : vec4<f32> = u_xlat12;
            let x_4683 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4686 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_4680.x, x_4680.y) * vec2<f32>(x_4683.x, x_4683.y)) + vec2<f32>(x_4686.w, x_4686.y));
            let x_4690 : f32 = u_xlat17.y;
            u_xlat14.y = x_4690;
            let x_4693 : f32 = u_xlat15.z;
            u_xlat17.y = x_4693;
            let x_4695 : vec4<f32> = u_xlat12;
            let x_4698 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4701 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_4695.x, x_4695.y, x_4695.x, x_4695.y) * vec4<f32>(x_4698.x, x_4698.y, x_4698.x, x_4698.y)) + vec4<f32>(x_4701.x, x_4701.y, x_4701.z, x_4701.y));
            let x_4704 : vec4<f32> = u_xlat12;
            let x_4707 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4710 : vec4<f32> = u_xlat17;
            let x_4712 : vec2<f32> = ((vec2<f32>(x_4704.x, x_4704.y) * vec2<f32>(x_4707.x, x_4707.y)) + vec2<f32>(x_4710.w, x_4710.y));
            let x_4713 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_4712.x, x_4712.y, x_4713.z, x_4713.w);
            let x_4716 : f32 = u_xlat17.y;
            u_xlat14.z = x_4716;
            let x_4719 : vec4<f32> = u_xlat12;
            let x_4722 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4725 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_4719.x, x_4719.y, x_4719.x, x_4719.y) * vec4<f32>(x_4722.x, x_4722.y, x_4722.x, x_4722.y)) + vec4<f32>(x_4725.x, x_4725.y, x_4725.x, x_4725.z));
            let x_4729 : f32 = u_xlat15.w;
            u_xlat17.y = x_4729;
            let x_4732 : vec4<f32> = u_xlat12;
            let x_4735 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4738 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_4732.x, x_4732.y, x_4732.x, x_4732.y) * vec4<f32>(x_4735.x, x_4735.y, x_4735.x, x_4735.y)) + vec4<f32>(x_4738.x, x_4738.y, x_4738.z, x_4738.y));
            let x_4742 : vec4<f32> = u_xlat12;
            let x_4745 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4748 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_4742.x, x_4742.y) * vec2<f32>(x_4745.x, x_4745.y)) + vec2<f32>(x_4748.w, x_4748.y));
            let x_4752 : f32 = u_xlat17.y;
            u_xlat14.w = x_4752;
            let x_4755 : vec4<f32> = u_xlat12;
            let x_4758 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4761 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_4755.x, x_4755.y) * vec2<f32>(x_4758.x, x_4758.y)) + vec2<f32>(x_4761.x, x_4761.w));
            let x_4764 : vec4<f32> = u_xlat17;
            let x_4765 : vec3<f32> = vec3<f32>(x_4764.x, x_4764.z, x_4764.w);
            let x_4766 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4765.x, x_4766.y, x_4765.y, x_4765.z);
            let x_4768 : vec4<f32> = u_xlat12;
            let x_4771 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4774 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_4768.x, x_4768.y, x_4768.x, x_4768.y) * vec4<f32>(x_4771.x, x_4771.y, x_4771.x, x_4771.y)) + vec4<f32>(x_4774.x, x_4774.y, x_4774.z, x_4774.y));
            let x_4777 : vec4<f32> = u_xlat12;
            let x_4780 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4783 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_4777.x, x_4777.y) * vec2<f32>(x_4780.x, x_4780.y)) + vec2<f32>(x_4783.w, x_4783.y));
            let x_4787 : f32 = u_xlat14.x;
            u_xlat15.x = x_4787;
            let x_4789 : vec4<f32> = u_xlat12;
            let x_4792 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4795 : vec4<f32> = u_xlat15;
            let x_4797 : vec2<f32> = ((vec2<f32>(x_4789.x, x_4789.y) * vec2<f32>(x_4792.x, x_4792.y)) + vec2<f32>(x_4795.x, x_4795.y));
            let x_4798 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4797.x, x_4797.y, x_4798.z, x_4798.w);
            let x_4801 : vec4<f32> = u_xlat13;
            let x_4803 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_4801.x, x_4801.x, x_4801.x, x_4801.x) * x_4803);
            let x_4806 : vec4<f32> = u_xlat13;
            let x_4808 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_4806.y, x_4806.y, x_4806.y, x_4806.y) * x_4808);
            let x_4811 : vec4<f32> = u_xlat13;
            let x_4813 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_4811.z, x_4811.z, x_4811.z, x_4811.z) * x_4813);
            let x_4815 : vec4<f32> = u_xlat13;
            let x_4817 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_4815.w, x_4815.w, x_4815.w, x_4815.w) * x_4817);
            let x_4820 : vec4<f32> = u_xlat18;
            let x_4821 : vec2<f32> = vec2<f32>(x_4820.x, x_4820.y);
            let x_4823 : f32 = u_xlat11.z;
            txVec73 = vec3<f32>(x_4821.x, x_4821.y, x_4823);
            let x_4830 : vec3<f32> = txVec73;
            let x_4832 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4830.xy, x_4830.z);
            u_xlat88 = x_4832;
            let x_4834 : vec4<f32> = u_xlat18;
            let x_4835 : vec2<f32> = vec2<f32>(x_4834.z, x_4834.w);
            let x_4837 : f32 = u_xlat11.z;
            txVec74 = vec3<f32>(x_4835.x, x_4835.y, x_4837);
            let x_4844 : vec3<f32> = txVec74;
            let x_4846 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4844.xy, x_4844.z);
            u_xlat89 = x_4846;
            let x_4847 : f32 = u_xlat89;
            let x_4849 : f32 = u_xlat23.y;
            u_xlat89 = (x_4847 * x_4849);
            let x_4852 : f32 = u_xlat23.x;
            let x_4853 : f32 = u_xlat88;
            let x_4855 : f32 = u_xlat89;
            u_xlat88 = ((x_4852 * x_4853) + x_4855);
            let x_4858 : vec2<f32> = u_xlat64;
            let x_4860 : f32 = u_xlat11.z;
            txVec75 = vec3<f32>(x_4858.x, x_4858.y, x_4860);
            let x_4867 : vec3<f32> = txVec75;
            let x_4869 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4867.xy, x_4867.z);
            u_xlat89 = x_4869;
            let x_4871 : f32 = u_xlat23.z;
            let x_4872 : f32 = u_xlat89;
            let x_4874 : f32 = u_xlat88;
            u_xlat88 = ((x_4871 * x_4872) + x_4874);
            let x_4877 : vec4<f32> = u_xlat21;
            let x_4878 : vec2<f32> = vec2<f32>(x_4877.x, x_4877.y);
            let x_4880 : f32 = u_xlat11.z;
            txVec76 = vec3<f32>(x_4878.x, x_4878.y, x_4880);
            let x_4887 : vec3<f32> = txVec76;
            let x_4889 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4887.xy, x_4887.z);
            u_xlat89 = x_4889;
            let x_4891 : f32 = u_xlat23.w;
            let x_4892 : f32 = u_xlat89;
            let x_4894 : f32 = u_xlat88;
            u_xlat88 = ((x_4891 * x_4892) + x_4894);
            let x_4897 : vec4<f32> = u_xlat19;
            let x_4898 : vec2<f32> = vec2<f32>(x_4897.x, x_4897.y);
            let x_4900 : f32 = u_xlat11.z;
            txVec77 = vec3<f32>(x_4898.x, x_4898.y, x_4900);
            let x_4907 : vec3<f32> = txVec77;
            let x_4909 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4907.xy, x_4907.z);
            u_xlat89 = x_4909;
            let x_4911 : f32 = u_xlat24.x;
            let x_4912 : f32 = u_xlat89;
            let x_4914 : f32 = u_xlat88;
            u_xlat88 = ((x_4911 * x_4912) + x_4914);
            let x_4917 : vec4<f32> = u_xlat19;
            let x_4918 : vec2<f32> = vec2<f32>(x_4917.z, x_4917.w);
            let x_4920 : f32 = u_xlat11.z;
            txVec78 = vec3<f32>(x_4918.x, x_4918.y, x_4920);
            let x_4927 : vec3<f32> = txVec78;
            let x_4929 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4927.xy, x_4927.z);
            u_xlat89 = x_4929;
            let x_4931 : f32 = u_xlat24.y;
            let x_4932 : f32 = u_xlat89;
            let x_4934 : f32 = u_xlat88;
            u_xlat88 = ((x_4931 * x_4932) + x_4934);
            let x_4937 : vec4<f32> = u_xlat20;
            let x_4938 : vec2<f32> = vec2<f32>(x_4937.x, x_4937.y);
            let x_4940 : f32 = u_xlat11.z;
            txVec79 = vec3<f32>(x_4938.x, x_4938.y, x_4940);
            let x_4947 : vec3<f32> = txVec79;
            let x_4949 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4947.xy, x_4947.z);
            u_xlat89 = x_4949;
            let x_4951 : f32 = u_xlat24.z;
            let x_4952 : f32 = u_xlat89;
            let x_4954 : f32 = u_xlat88;
            u_xlat88 = ((x_4951 * x_4952) + x_4954);
            let x_4957 : vec4<f32> = u_xlat21;
            let x_4958 : vec2<f32> = vec2<f32>(x_4957.z, x_4957.w);
            let x_4960 : f32 = u_xlat11.z;
            txVec80 = vec3<f32>(x_4958.x, x_4958.y, x_4960);
            let x_4967 : vec3<f32> = txVec80;
            let x_4969 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4967.xy, x_4967.z);
            u_xlat89 = x_4969;
            let x_4971 : f32 = u_xlat24.w;
            let x_4972 : f32 = u_xlat89;
            let x_4974 : f32 = u_xlat88;
            u_xlat88 = ((x_4971 * x_4972) + x_4974);
            let x_4977 : vec4<f32> = u_xlat22;
            let x_4978 : vec2<f32> = vec2<f32>(x_4977.x, x_4977.y);
            let x_4980 : f32 = u_xlat11.z;
            txVec81 = vec3<f32>(x_4978.x, x_4978.y, x_4980);
            let x_4987 : vec3<f32> = txVec81;
            let x_4989 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4987.xy, x_4987.z);
            u_xlat89 = x_4989;
            let x_4991 : f32 = u_xlat25.x;
            let x_4992 : f32 = u_xlat89;
            let x_4994 : f32 = u_xlat88;
            u_xlat88 = ((x_4991 * x_4992) + x_4994);
            let x_4997 : vec4<f32> = u_xlat22;
            let x_4998 : vec2<f32> = vec2<f32>(x_4997.z, x_4997.w);
            let x_5000 : f32 = u_xlat11.z;
            txVec82 = vec3<f32>(x_4998.x, x_4998.y, x_5000);
            let x_5007 : vec3<f32> = txVec82;
            let x_5009 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5007.xy, x_5007.z);
            u_xlat89 = x_5009;
            let x_5011 : f32 = u_xlat25.y;
            let x_5012 : f32 = u_xlat89;
            let x_5014 : f32 = u_xlat88;
            u_xlat88 = ((x_5011 * x_5012) + x_5014);
            let x_5017 : vec2<f32> = u_xlat40;
            let x_5019 : f32 = u_xlat11.z;
            txVec83 = vec3<f32>(x_5017.x, x_5017.y, x_5019);
            let x_5026 : vec3<f32> = txVec83;
            let x_5028 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5026.xy, x_5026.z);
            u_xlat89 = x_5028;
            let x_5030 : f32 = u_xlat25.z;
            let x_5031 : f32 = u_xlat89;
            let x_5033 : f32 = u_xlat88;
            u_xlat88 = ((x_5030 * x_5031) + x_5033);
            let x_5036 : vec2<f32> = u_xlat72;
            let x_5038 : f32 = u_xlat11.z;
            txVec84 = vec3<f32>(x_5036.x, x_5036.y, x_5038);
            let x_5045 : vec3<f32> = txVec84;
            let x_5047 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5045.xy, x_5045.z);
            u_xlat89 = x_5047;
            let x_5049 : f32 = u_xlat25.w;
            let x_5050 : f32 = u_xlat89;
            let x_5052 : f32 = u_xlat88;
            u_xlat88 = ((x_5049 * x_5050) + x_5052);
            let x_5055 : vec4<f32> = u_xlat17;
            let x_5056 : vec2<f32> = vec2<f32>(x_5055.x, x_5055.y);
            let x_5058 : f32 = u_xlat11.z;
            txVec85 = vec3<f32>(x_5056.x, x_5056.y, x_5058);
            let x_5065 : vec3<f32> = txVec85;
            let x_5067 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5065.xy, x_5065.z);
            u_xlat89 = x_5067;
            let x_5069 : f32 = u_xlat13.x;
            let x_5070 : f32 = u_xlat89;
            let x_5072 : f32 = u_xlat88;
            u_xlat88 = ((x_5069 * x_5070) + x_5072);
            let x_5075 : vec4<f32> = u_xlat17;
            let x_5076 : vec2<f32> = vec2<f32>(x_5075.z, x_5075.w);
            let x_5078 : f32 = u_xlat11.z;
            txVec86 = vec3<f32>(x_5076.x, x_5076.y, x_5078);
            let x_5085 : vec3<f32> = txVec86;
            let x_5087 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5085.xy, x_5085.z);
            u_xlat89 = x_5087;
            let x_5089 : f32 = u_xlat13.y;
            let x_5090 : f32 = u_xlat89;
            let x_5092 : f32 = u_xlat88;
            u_xlat88 = ((x_5089 * x_5090) + x_5092);
            let x_5095 : vec2<f32> = u_xlat67;
            let x_5097 : f32 = u_xlat11.z;
            txVec87 = vec3<f32>(x_5095.x, x_5095.y, x_5097);
            let x_5104 : vec3<f32> = txVec87;
            let x_5106 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5104.xy, x_5104.z);
            u_xlat89 = x_5106;
            let x_5108 : f32 = u_xlat13.z;
            let x_5109 : f32 = u_xlat89;
            let x_5111 : f32 = u_xlat88;
            u_xlat88 = ((x_5108 * x_5109) + x_5111);
            let x_5114 : vec4<f32> = u_xlat12;
            let x_5115 : vec2<f32> = vec2<f32>(x_5114.x, x_5114.y);
            let x_5117 : f32 = u_xlat11.z;
            txVec88 = vec3<f32>(x_5115.x, x_5115.y, x_5117);
            let x_5124 : vec3<f32> = txVec88;
            let x_5126 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5124.xy, x_5124.z);
            u_xlat89 = x_5126;
            let x_5128 : f32 = u_xlat13.w;
            let x_5129 : f32 = u_xlat89;
            let x_5131 : f32 = u_xlat88;
            u_xlat86 = ((x_5128 * x_5129) + x_5131);
          }
        }
      } else {
        let x_5135 : vec4<f32> = u_xlat11;
        let x_5136 : vec2<f32> = vec2<f32>(x_5135.x, x_5135.y);
        let x_5138 : f32 = u_xlat11.z;
        txVec89 = vec3<f32>(x_5136.x, x_5136.y, x_5138);
        let x_5145 : vec3<f32> = txVec89;
        let x_5147 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5145.xy, x_5145.z);
        u_xlat86 = x_5147;
      }
      let x_5148 : i32 = u_xlati81;
      let x_5150 : f32 = x_249.x_AdditionalShadowParams[x_5148].x;
      u_xlat88 = (1.0f + -(x_5150));
      let x_5153 : f32 = u_xlat86;
      let x_5154 : i32 = u_xlati81;
      let x_5156 : f32 = x_249.x_AdditionalShadowParams[x_5154].x;
      let x_5158 : f32 = u_xlat88;
      u_xlat86 = ((x_5153 * x_5156) + x_5158);
      let x_5161 : f32 = u_xlat11.z;
      u_xlatb88 = (0.0f >= x_5161);
      let x_5164 : f32 = u_xlat11.z;
      u_xlatb11.x = (x_5164 >= 1.0f);
      let x_5167 : bool = u_xlatb88;
      let x_5169 : bool = u_xlatb11.x;
      u_xlatb88 = (x_5167 | x_5169);
      let x_5171 : bool = u_xlatb88;
      let x_5172 : f32 = u_xlat86;
      u_xlat86 = select(x_5172, 1.0f, x_5171);
    } else {
      u_xlat86 = 1.0f;
    }
    let x_5175 : f32 = u_xlat86;
    u_xlat88 = (-(x_5175) + 1.0f);
    let x_5178 : f32 = u_xlat54;
    let x_5179 : f32 = u_xlat88;
    let x_5181 : f32 = u_xlat86;
    u_xlat86 = ((x_5178 * x_5179) + x_5181);
    let x_5184 : i32 = u_xlati81;
    u_xlati88 = (1i << bitcast<u32>((x_5184 & 31i)));
    let x_5188 : i32 = u_xlati88;
    let x_5191 : f32 = x_3306.x_AdditionalLightsCookieEnableBits;
    u_xlati88 = bitcast<i32>((bitcast<u32>(x_5188) & bitcast<u32>(x_5191)));
    let x_5195 : i32 = u_xlati88;
    if ((x_5195 != 0i)) {
      let x_5199 : i32 = u_xlati81;
      let x_5201 : f32 = x_3306.x_AdditionalLightsLightTypes[x_5199].el;
      u_xlati88 = i32(x_5201);
      let x_5204 : i32 = u_xlati88;
      u_xlati11 = select(1i, 0i, (x_5204 != 0i));
      let x_5208 : i32 = u_xlati81;
      u_xlati37 = (x_5208 << bitcast<u32>(2i));
      let x_5210 : i32 = u_xlati11;
      if ((x_5210 != 0i)) {
        let x_5214 : vec3<f32> = vs_INTERP8;
        let x_5216 : i32 = u_xlati37;
        let x_5219 : i32 = u_xlati37;
        let x_5223 : vec4<f32> = x_3306.x_AdditionalLightsWorldToLights[((x_5216 + 1i) / 4i)][((x_5219 + 1i) % 4i)];
        let x_5225 : vec3<f32> = (vec3<f32>(x_5214.y, x_5214.y, x_5214.y) * vec3<f32>(x_5223.x, x_5223.y, x_5223.w));
        let x_5226 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5225.x, x_5226.y, x_5225.y, x_5225.z);
        let x_5228 : i32 = u_xlati37;
        let x_5230 : i32 = u_xlati37;
        let x_5233 : vec4<f32> = x_3306.x_AdditionalLightsWorldToLights[(x_5228 / 4i)][(x_5230 % 4i)];
        let x_5235 : vec3<f32> = vs_INTERP8;
        let x_5238 : vec4<f32> = u_xlat11;
        let x_5240 : vec3<f32> = ((vec3<f32>(x_5233.x, x_5233.y, x_5233.w) * vec3<f32>(x_5235.x, x_5235.x, x_5235.x)) + vec3<f32>(x_5238.x, x_5238.z, x_5238.w));
        let x_5241 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5240.x, x_5241.y, x_5240.y, x_5240.z);
        let x_5243 : i32 = u_xlati37;
        let x_5246 : i32 = u_xlati37;
        let x_5250 : vec4<f32> = x_3306.x_AdditionalLightsWorldToLights[((x_5243 + 2i) / 4i)][((x_5246 + 2i) % 4i)];
        let x_5252 : vec3<f32> = vs_INTERP8;
        let x_5255 : vec4<f32> = u_xlat11;
        let x_5257 : vec3<f32> = ((vec3<f32>(x_5250.x, x_5250.y, x_5250.w) * vec3<f32>(x_5252.z, x_5252.z, x_5252.z)) + vec3<f32>(x_5255.x, x_5255.z, x_5255.w));
        let x_5258 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5257.x, x_5258.y, x_5257.y, x_5257.z);
        let x_5260 : vec4<f32> = u_xlat11;
        let x_5262 : i32 = u_xlati37;
        let x_5265 : i32 = u_xlati37;
        let x_5269 : vec4<f32> = x_3306.x_AdditionalLightsWorldToLights[((x_5262 + 3i) / 4i)][((x_5265 + 3i) % 4i)];
        let x_5271 : vec3<f32> = (vec3<f32>(x_5260.x, x_5260.z, x_5260.w) + vec3<f32>(x_5269.x, x_5269.y, x_5269.w));
        let x_5272 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5271.x, x_5272.y, x_5271.y, x_5271.z);
        let x_5274 : vec4<f32> = u_xlat11;
        let x_5276 : vec4<f32> = u_xlat11;
        let x_5278 : vec2<f32> = (vec2<f32>(x_5274.x, x_5274.z) / vec2<f32>(x_5276.w, x_5276.w));
        let x_5279 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5278.x, x_5279.y, x_5278.y, x_5279.w);
        let x_5281 : vec4<f32> = u_xlat11;
        let x_5284 : vec2<f32> = ((vec2<f32>(x_5281.x, x_5281.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_5285 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5284.x, x_5285.y, x_5284.y, x_5285.w);
        let x_5287 : vec4<f32> = u_xlat11;
        let x_5291 : vec2<f32> = clamp(vec2<f32>(x_5287.x, x_5287.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_5292 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5291.x, x_5292.y, x_5291.y, x_5292.w);
        let x_5294 : i32 = u_xlati81;
        let x_5296 : vec4<f32> = x_3306.x_AdditionalLightsCookieAtlasUVRects[x_5294];
        let x_5298 : vec4<f32> = u_xlat11;
        let x_5301 : i32 = u_xlati81;
        let x_5303 : vec4<f32> = x_3306.x_AdditionalLightsCookieAtlasUVRects[x_5301];
        let x_5305 : vec2<f32> = ((vec2<f32>(x_5296.x, x_5296.y) * vec2<f32>(x_5298.x, x_5298.z)) + vec2<f32>(x_5303.z, x_5303.w));
        let x_5306 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5305.x, x_5306.y, x_5305.y, x_5306.w);
      } else {
        let x_5309 : i32 = u_xlati88;
        u_xlatb88 = (x_5309 == 1i);
        let x_5311 : bool = u_xlatb88;
        u_xlati88 = select(0i, 1i, x_5311);
        let x_5313 : i32 = u_xlati88;
        if ((x_5313 != 0i)) {
          let x_5317 : vec3<f32> = vs_INTERP8;
          let x_5319 : i32 = u_xlati37;
          let x_5322 : i32 = u_xlati37;
          let x_5326 : vec4<f32> = x_3306.x_AdditionalLightsWorldToLights[((x_5319 + 1i) / 4i)][((x_5322 + 1i) % 4i)];
          let x_5328 : vec2<f32> = (vec2<f32>(x_5317.y, x_5317.y) * vec2<f32>(x_5326.x, x_5326.y));
          let x_5329 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5328.x, x_5328.y, x_5329.z, x_5329.w);
          let x_5331 : i32 = u_xlati37;
          let x_5333 : i32 = u_xlati37;
          let x_5336 : vec4<f32> = x_3306.x_AdditionalLightsWorldToLights[(x_5331 / 4i)][(x_5333 % 4i)];
          let x_5338 : vec3<f32> = vs_INTERP8;
          let x_5341 : vec4<f32> = u_xlat12;
          let x_5343 : vec2<f32> = ((vec2<f32>(x_5336.x, x_5336.y) * vec2<f32>(x_5338.x, x_5338.x)) + vec2<f32>(x_5341.x, x_5341.y));
          let x_5344 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5343.x, x_5343.y, x_5344.z, x_5344.w);
          let x_5346 : i32 = u_xlati37;
          let x_5349 : i32 = u_xlati37;
          let x_5353 : vec4<f32> = x_3306.x_AdditionalLightsWorldToLights[((x_5346 + 2i) / 4i)][((x_5349 + 2i) % 4i)];
          let x_5355 : vec3<f32> = vs_INTERP8;
          let x_5358 : vec4<f32> = u_xlat12;
          let x_5360 : vec2<f32> = ((vec2<f32>(x_5353.x, x_5353.y) * vec2<f32>(x_5355.z, x_5355.z)) + vec2<f32>(x_5358.x, x_5358.y));
          let x_5361 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5360.x, x_5360.y, x_5361.z, x_5361.w);
          let x_5363 : vec4<f32> = u_xlat12;
          let x_5365 : i32 = u_xlati37;
          let x_5368 : i32 = u_xlati37;
          let x_5372 : vec4<f32> = x_3306.x_AdditionalLightsWorldToLights[((x_5365 + 3i) / 4i)][((x_5368 + 3i) % 4i)];
          let x_5374 : vec2<f32> = (vec2<f32>(x_5363.x, x_5363.y) + vec2<f32>(x_5372.x, x_5372.y));
          let x_5375 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5374.x, x_5374.y, x_5375.z, x_5375.w);
          let x_5377 : vec4<f32> = u_xlat12;
          let x_5380 : vec2<f32> = ((vec2<f32>(x_5377.x, x_5377.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_5381 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5380.x, x_5380.y, x_5381.z, x_5381.w);
          let x_5383 : vec4<f32> = u_xlat12;
          let x_5385 : vec2<f32> = fract(vec2<f32>(x_5383.x, x_5383.y));
          let x_5386 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5385.x, x_5385.y, x_5386.z, x_5386.w);
          let x_5388 : i32 = u_xlati81;
          let x_5390 : vec4<f32> = x_3306.x_AdditionalLightsCookieAtlasUVRects[x_5388];
          let x_5392 : vec4<f32> = u_xlat12;
          let x_5395 : i32 = u_xlati81;
          let x_5397 : vec4<f32> = x_3306.x_AdditionalLightsCookieAtlasUVRects[x_5395];
          let x_5399 : vec2<f32> = ((vec2<f32>(x_5390.x, x_5390.y) * vec2<f32>(x_5392.x, x_5392.y)) + vec2<f32>(x_5397.z, x_5397.w));
          let x_5400 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_5399.x, x_5400.y, x_5399.y, x_5400.w);
        } else {
          let x_5403 : vec3<f32> = vs_INTERP8;
          let x_5405 : i32 = u_xlati37;
          let x_5408 : i32 = u_xlati37;
          let x_5412 : vec4<f32> = x_3306.x_AdditionalLightsWorldToLights[((x_5405 + 1i) / 4i)][((x_5408 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_5403.y, x_5403.y, x_5403.y, x_5403.y) * x_5412);
          let x_5414 : i32 = u_xlati37;
          let x_5416 : i32 = u_xlati37;
          let x_5419 : vec4<f32> = x_3306.x_AdditionalLightsWorldToLights[(x_5414 / 4i)][(x_5416 % 4i)];
          let x_5420 : vec3<f32> = vs_INTERP8;
          let x_5423 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_5419 * vec4<f32>(x_5420.x, x_5420.x, x_5420.x, x_5420.x)) + x_5423);
          let x_5425 : i32 = u_xlati37;
          let x_5428 : i32 = u_xlati37;
          let x_5432 : vec4<f32> = x_3306.x_AdditionalLightsWorldToLights[((x_5425 + 2i) / 4i)][((x_5428 + 2i) % 4i)];
          let x_5433 : vec3<f32> = vs_INTERP8;
          let x_5436 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_5432 * vec4<f32>(x_5433.z, x_5433.z, x_5433.z, x_5433.z)) + x_5436);
          let x_5438 : vec4<f32> = u_xlat12;
          let x_5439 : i32 = u_xlati37;
          let x_5442 : i32 = u_xlati37;
          let x_5446 : vec4<f32> = x_3306.x_AdditionalLightsWorldToLights[((x_5439 + 3i) / 4i)][((x_5442 + 3i) % 4i)];
          u_xlat12 = (x_5438 + x_5446);
          let x_5448 : vec4<f32> = u_xlat12;
          let x_5450 : vec4<f32> = u_xlat12;
          let x_5452 : vec3<f32> = (vec3<f32>(x_5448.x, x_5448.y, x_5448.z) / vec3<f32>(x_5450.w, x_5450.w, x_5450.w));
          let x_5453 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5452.x, x_5452.y, x_5452.z, x_5453.w);
          let x_5455 : vec4<f32> = u_xlat12;
          let x_5457 : vec4<f32> = u_xlat12;
          u_xlat88 = dot(vec3<f32>(x_5455.x, x_5455.y, x_5455.z), vec3<f32>(x_5457.x, x_5457.y, x_5457.z));
          let x_5460 : f32 = u_xlat88;
          u_xlat88 = inverseSqrt(x_5460);
          let x_5462 : f32 = u_xlat88;
          let x_5464 : vec4<f32> = u_xlat12;
          let x_5466 : vec3<f32> = (vec3<f32>(x_5462, x_5462, x_5462) * vec3<f32>(x_5464.x, x_5464.y, x_5464.z));
          let x_5467 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5466.x, x_5466.y, x_5466.z, x_5467.w);
          let x_5469 : vec4<f32> = u_xlat12;
          u_xlat88 = dot(abs(vec3<f32>(x_5469.x, x_5469.y, x_5469.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_5474 : f32 = u_xlat88;
          u_xlat88 = max(x_5474, 0.00000099999999747524f);
          let x_5477 : f32 = u_xlat88;
          u_xlat88 = (1.0f / x_5477);
          let x_5479 : f32 = u_xlat88;
          let x_5481 : vec4<f32> = u_xlat12;
          let x_5483 : vec3<f32> = (vec3<f32>(x_5479, x_5479, x_5479) * vec3<f32>(x_5481.z, x_5481.x, x_5481.y));
          let x_5484 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_5483.x, x_5483.y, x_5483.z, x_5484.w);
          let x_5487 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_5487);
          let x_5491 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_5491, 0.0f, 1.0f);
          let x_5496 : vec4<f32> = u_xlat13;
          let x_5498 : vec4<bool> = (vec4<f32>(x_5496.y, x_5496.y, x_5496.z, x_5496.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_5499 : vec2<bool> = vec2<bool>(x_5498.x, x_5498.z);
          let x_5500 : vec3<bool> = u_xlatb37;
          u_xlatb37 = vec3<bool>(x_5499.x, x_5500.y, x_5499.y);
          let x_5503 : bool = u_xlatb37.x;
          if (x_5503) {
            let x_5508 : f32 = u_xlat13.x;
            x_5504 = x_5508;
          } else {
            let x_5511 : f32 = u_xlat13.x;
            x_5504 = -(x_5511);
          }
          let x_5513 : f32 = x_5504;
          u_xlat37.x = x_5513;
          let x_5516 : bool = u_xlatb37.z;
          if (x_5516) {
            let x_5521 : f32 = u_xlat13.x;
            x_5517 = x_5521;
          } else {
            let x_5524 : f32 = u_xlat13.x;
            x_5517 = -(x_5524);
          }
          let x_5526 : f32 = x_5517;
          u_xlat37.z = x_5526;
          let x_5528 : vec4<f32> = u_xlat12;
          let x_5530 : f32 = u_xlat88;
          let x_5533 : vec3<f32> = u_xlat37;
          let x_5535 : vec2<f32> = ((vec2<f32>(x_5528.x, x_5528.y) * vec2<f32>(x_5530, x_5530)) + vec2<f32>(x_5533.x, x_5533.z));
          let x_5536 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_5535.x, x_5536.y, x_5535.y);
          let x_5538 : vec3<f32> = u_xlat37;
          let x_5541 : vec2<f32> = ((vec2<f32>(x_5538.x, x_5538.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_5542 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_5541.x, x_5542.y, x_5541.y);
          let x_5544 : vec3<f32> = u_xlat37;
          let x_5548 : vec2<f32> = clamp(vec2<f32>(x_5544.x, x_5544.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_5549 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_5548.x, x_5549.y, x_5548.y);
          let x_5551 : i32 = u_xlati81;
          let x_5553 : vec4<f32> = x_3306.x_AdditionalLightsCookieAtlasUVRects[x_5551];
          let x_5555 : vec3<f32> = u_xlat37;
          let x_5558 : i32 = u_xlati81;
          let x_5560 : vec4<f32> = x_3306.x_AdditionalLightsCookieAtlasUVRects[x_5558];
          let x_5562 : vec2<f32> = ((vec2<f32>(x_5553.x, x_5553.y) * vec2<f32>(x_5555.x, x_5555.z)) + vec2<f32>(x_5560.z, x_5560.w));
          let x_5563 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_5562.x, x_5563.y, x_5562.y, x_5563.w);
        }
      }
      let x_5570 : vec4<f32> = u_xlat11;
      let x_5572 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_5570.x, x_5570.z), 0.0f);
      u_xlat11 = x_5572;
      let x_5574 : bool = u_xlatb58.y;
      if (x_5574) {
        let x_5579 : f32 = u_xlat11.w;
        x_5575 = x_5579;
      } else {
        let x_5582 : f32 = u_xlat11.x;
        x_5575 = x_5582;
      }
      let x_5583 : f32 = x_5575;
      u_xlat88 = x_5583;
      let x_5585 : bool = u_xlatb58.x;
      if (x_5585) {
        let x_5589 : vec4<f32> = u_xlat11;
        x_5586 = vec3<f32>(x_5589.x, x_5589.y, x_5589.z);
      } else {
        let x_5592 : f32 = u_xlat88;
        x_5586 = vec3<f32>(x_5592, x_5592, x_5592);
      }
      let x_5594 : vec3<f32> = x_5586;
      let x_5595 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_5594.x, x_5594.y, x_5594.z, x_5595.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_5601 : vec4<f32> = u_xlat11;
    let x_5603 : i32 = u_xlati81;
    let x_5605 : vec4<f32> = x_3743.x_AdditionalLightsColor[x_5603];
    let x_5607 : vec3<f32> = (vec3<f32>(x_5601.x, x_5601.y, x_5601.z) * vec3<f32>(x_5605.x, x_5605.y, x_5605.z));
    let x_5608 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_5607.x, x_5607.y, x_5607.z, x_5608.w);
    let x_5610 : f32 = u_xlat83;
    let x_5611 : f32 = u_xlat86;
    u_xlat81 = (x_5610 * x_5611);
    let x_5613 : vec4<f32> = u_xlat3;
    let x_5615 : vec4<f32> = u_xlat10;
    u_xlat83 = dot(vec3<f32>(x_5613.x, x_5613.y, x_5613.z), vec3<f32>(x_5615.x, x_5615.y, x_5615.z));
    let x_5618 : f32 = u_xlat83;
    u_xlat83 = clamp(x_5618, 0.0f, 1.0f);
    let x_5620 : f32 = u_xlat81;
    let x_5621 : f32 = u_xlat83;
    u_xlat81 = (x_5620 * x_5621);
    let x_5623 : f32 = u_xlat81;
    let x_5625 : vec4<f32> = u_xlat11;
    let x_5627 : vec3<f32> = (vec3<f32>(x_5623, x_5623, x_5623) * vec3<f32>(x_5625.x, x_5625.y, x_5625.z));
    let x_5628 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_5627.x, x_5627.y, x_5627.z, x_5628.w);
    let x_5630 : vec3<f32> = u_xlat35;
    let x_5631 : f32 = u_xlat85;
    let x_5634 : vec3<f32> = u_xlat1;
    u_xlat35 = ((x_5630 * vec3<f32>(x_5631, x_5631, x_5631)) + x_5634);
    let x_5636 : vec3<f32> = u_xlat35;
    let x_5637 : vec3<f32> = u_xlat35;
    u_xlat81 = dot(x_5636, x_5637);
    let x_5639 : f32 = u_xlat81;
    u_xlat81 = max(x_5639, 1.17549435e-38f);
    let x_5641 : f32 = u_xlat81;
    u_xlat81 = inverseSqrt(x_5641);
    let x_5643 : f32 = u_xlat81;
    let x_5645 : vec3<f32> = u_xlat35;
    u_xlat35 = (vec3<f32>(x_5643, x_5643, x_5643) * x_5645);
    let x_5647 : vec4<f32> = u_xlat3;
    let x_5649 : vec3<f32> = u_xlat35;
    u_xlat81 = dot(vec3<f32>(x_5647.x, x_5647.y, x_5647.z), x_5649);
    let x_5651 : f32 = u_xlat81;
    u_xlat81 = clamp(x_5651, 0.0f, 1.0f);
    let x_5653 : vec4<f32> = u_xlat10;
    let x_5655 : vec3<f32> = u_xlat35;
    u_xlat83 = dot(vec3<f32>(x_5653.x, x_5653.y, x_5653.z), x_5655);
    let x_5657 : f32 = u_xlat83;
    u_xlat83 = clamp(x_5657, 0.0f, 1.0f);
    let x_5659 : f32 = u_xlat81;
    let x_5660 : f32 = u_xlat81;
    u_xlat81 = (x_5659 * x_5660);
    let x_5662 : f32 = u_xlat81;
    let x_5664 : f32 = u_xlat9.x;
    u_xlat81 = ((x_5662 * x_5664) + 1.00001001358032226562f);
    let x_5667 : f32 = u_xlat83;
    let x_5668 : f32 = u_xlat83;
    u_xlat83 = (x_5667 * x_5668);
    let x_5670 : f32 = u_xlat81;
    let x_5671 : f32 = u_xlat81;
    u_xlat81 = (x_5670 * x_5671);
    let x_5673 : f32 = u_xlat83;
    u_xlat83 = max(x_5673, 0.10000000149011611938f);
    let x_5675 : f32 = u_xlat81;
    let x_5676 : f32 = u_xlat83;
    u_xlat81 = (x_5675 * x_5676);
    let x_5679 : f32 = u_xlat6.x;
    let x_5680 : f32 = u_xlat81;
    u_xlat81 = (x_5679 * x_5680);
    let x_5682 : f32 = u_xlat82;
    let x_5683 : f32 = u_xlat81;
    u_xlat81 = (x_5682 / x_5683);
    let x_5685 : f32 = u_xlat81;
    let x_5688 : vec3<f32> = u_xlat4;
    u_xlat35 = ((vec3<f32>(x_5685, x_5685, x_5685) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_5688);
    let x_5690 : vec3<f32> = u_xlat35;
    let x_5691 : vec4<f32> = u_xlat11;
    let x_5694 : vec4<f32> = u_xlat8;
    let x_5696 : vec3<f32> = ((x_5690 * vec3<f32>(x_5691.x, x_5691.y, x_5691.z)) + vec3<f32>(x_5694.x, x_5694.y, x_5694.z));
    let x_5697 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_5696.x, x_5696.y, x_5696.z, x_5697.w);

    continuing {
      let x_5699 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_5699 + bitcast<u32>(1i));
    }
  }
  let x_5701 : vec4<f32> = u_xlat5;
  let x_5703 : f32 = u_xlat32;
  let x_5706 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec3<f32>(x_5701.x, x_5701.y, x_5701.z) * vec3<f32>(x_5703, x_5703, x_5703)) + vec3<f32>(x_5706.x, x_5706.y, x_5706.z));
  let x_5709 : vec4<f32> = u_xlat8;
  let x_5711 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_5709.x, x_5709.y, x_5709.z) + x_5711);
  let x_5713 : vec4<f32> = vs_INTERP6;
  let x_5715 : vec3<f32> = u_xlat0;
  let x_5717 : vec3<f32> = u_xlat1;
  u_xlat0 = ((vec3<f32>(x_5713.w, x_5713.w, x_5713.w) * x_5715) + x_5717);
  let x_5720 : f32 = u_xlat28.x;
  let x_5722 : f32 = u_xlat28.x;
  u_xlat78 = (x_5720 * -(x_5722));
  let x_5725 : f32 = u_xlat78;
  u_xlat78 = exp2(x_5725);
  let x_5727 : vec3<f32> = u_xlat0;
  let x_5729 : vec4<f32> = x_75.unity_FogColor;
  u_xlat0 = (x_5727 + -(vec3<f32>(x_5729.x, x_5729.y, x_5729.z)));
  let x_5735 : f32 = u_xlat78;
  let x_5737 : vec3<f32> = u_xlat0;
  let x_5740 : vec4<f32> = x_75.unity_FogColor;
  let x_5742 : vec3<f32> = ((vec3<f32>(x_5735, x_5735, x_5735) * x_5737) + vec3<f32>(x_5740.x, x_5740.y, x_5740.z));
  let x_5743 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_5742.x, x_5742.y, x_5742.z, x_5743.w);
  let x_5745 : bool = u_xlatb2;
  let x_5746 : f32 = u_xlat79;
  SV_Target0.w = select(1.0f, x_5746, x_5745);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(6) vs_INTERP9_param : vec3<f32>, @location(5) vs_INTERP8_param : vec3<f32>, @location(3) vs_INTERP5_param : vec4<f32>, @location(4) vs_INTERP6_param : vec4<f32>, @location(2) vs_INTERP4_param : vec4<f32>, @location(0) vs_INTERP0_param : vec2<f32>, @location(1) vs_INTERP3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP9 = vs_INTERP9_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP6 = vs_INTERP6_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP3 = vs_INTERP3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


