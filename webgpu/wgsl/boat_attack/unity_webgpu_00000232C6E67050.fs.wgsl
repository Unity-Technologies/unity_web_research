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

@group(0) @binding(5) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(11) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP5 : vec4<f32>;

var<private> u_xlat4 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_188 : UnityPerMaterial;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(6) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(12) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat31 : vec3<f32>;

var<private> vs_INTERP6 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_249 : LightShadows;

var<private> u_xlatb79 : bool;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

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

var<private> u_xlat81 : f32;

var<private> u_xlat32 : f32;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlatb58 : vec2<bool>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat65 : vec2<f32>;

var<private> u_xlat86 : f32;

var<private> u_xlat33 : f32;

@group(1) @binding(4) var<uniform> x_3333 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu78 : u32;

var<private> u_xlatu81 : u32;

var<private> u_xlati83 : i32;

var<private> u_xlati81 : i32;

@group(1) @binding(1) var<uniform> x_3770 : AdditionalLights;

var<private> u_xlat83 : f32;

var<private> u_xlat85 : f32;

var<private> u_xlati86 : i32;

var<private> u_xlatb88 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat89 : f32;

var<private> u_xlat37 : vec3<f32>;

var<private> u_xlat88 : f32;

var<private> u_xlatb86 : bool;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_LinearClamp : sampler;

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
  var x_3401 : f32;
  var x_3412 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_3905 : f32;
  var x_3916 : f32;
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
  var x_5531 : f32;
  var x_5544 : f32;
  var x_5602 : f32;
  var x_5613 : vec3<f32>;
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
  u_xlat3.w = 1.0f;
  let x_1944 : vec4<f32> = x_132.unity_SHAr;
  let x_1945 : vec4<f32> = u_xlat3;
  u_xlat6.x = dot(x_1944, x_1945);
  let x_1950 : vec4<f32> = x_132.unity_SHAg;
  let x_1951 : vec4<f32> = u_xlat3;
  u_xlat6.y = dot(x_1950, x_1951);
  let x_1956 : vec4<f32> = x_132.unity_SHAb;
  let x_1957 : vec4<f32> = u_xlat3;
  u_xlat6.z = dot(x_1956, x_1957);
  let x_1960 : vec4<f32> = u_xlat3;
  let x_1962 : vec4<f32> = u_xlat3;
  u_xlat7 = (vec4<f32>(x_1960.y, x_1960.z, x_1960.z, x_1960.x) * vec4<f32>(x_1962.x, x_1962.y, x_1962.z, x_1962.z));
  let x_1967 : vec4<f32> = x_132.unity_SHBr;
  let x_1968 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_1967, x_1968);
  let x_1973 : vec4<f32> = x_132.unity_SHBg;
  let x_1974 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_1973, x_1974);
  let x_1978 : vec4<f32> = x_132.unity_SHBb;
  let x_1979 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_1978, x_1979);
  let x_1983 : f32 = u_xlat3.y;
  let x_1985 : f32 = u_xlat3.y;
  u_xlat54 = (x_1983 * x_1985);
  let x_1988 : f32 = u_xlat3.x;
  let x_1990 : f32 = u_xlat3.x;
  let x_1992 : f32 = u_xlat54;
  u_xlat54 = ((x_1988 * x_1990) + -(x_1992));
  let x_1997 : vec4<f32> = x_132.unity_SHC;
  let x_1999 : f32 = u_xlat54;
  let x_2002 : vec4<f32> = u_xlat8;
  u_xlat31 = ((vec3<f32>(x_1997.x, x_1997.y, x_1997.z) * vec3<f32>(x_1999, x_1999, x_1999)) + vec3<f32>(x_2002.x, x_2002.y, x_2002.z));
  let x_2005 : vec3<f32> = u_xlat31;
  let x_2006 : vec4<f32> = u_xlat6;
  u_xlat31 = (x_2005 + vec3<f32>(x_2006.x, x_2006.y, x_2006.z));
  let x_2009 : vec3<f32> = u_xlat31;
  u_xlat31 = max(x_2009, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_2013 : f32 = u_xlat5.x;
  u_xlat5.x = x_2013;
  let x_2016 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_2016, 0.0f, 1.0f);
  let x_2019 : f32 = u_xlat79;
  u_xlat79 = x_2019;
  let x_2020 : f32 = u_xlat79;
  u_xlat79 = clamp(x_2020, 0.0f, 1.0f);
  let x_2022 : vec3<f32> = u_xlat4;
  u_xlat4 = (x_2022 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_2027 : f32 = u_xlat5.x;
  u_xlat54 = (-(x_2027) + 1.0f);
  let x_2031 : f32 = u_xlat54;
  let x_2032 : f32 = u_xlat54;
  u_xlat81 = (x_2031 * x_2032);
  let x_2034 : f32 = u_xlat81;
  u_xlat81 = max(x_2034, 0.0078125f);
  let x_2037 : f32 = u_xlat81;
  let x_2038 : f32 = u_xlat81;
  u_xlat82 = (x_2037 * x_2038);
  let x_2041 : f32 = u_xlat5.x;
  u_xlat5.x = (x_2041 + 0.04000002145767211914f);
  let x_2046 : f32 = u_xlat5.x;
  u_xlat5.x = min(x_2046, 1.0f);
  let x_2049 : f32 = u_xlat81;
  u_xlat6.x = ((x_2049 * 4.0f) + 2.0f);
  let x_2056 : f32 = vs_INTERP6.w;
  u_xlat32 = min(x_2056, 1.0f);
  let x_2058 : bool = u_xlatb78;
  if (x_2058) {
    let x_2062 : f32 = x_249.x_MainLightShadowParams.y;
    u_xlatb78 = (x_2062 == 1.0f);
    let x_2064 : bool = u_xlatb78;
    if (x_2064) {
      let x_2068 : vec4<f32> = vs_INTERP3;
      let x_2071 : vec4<f32> = x_249.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_2068.x, x_2068.y, x_2068.x, x_2068.y) + x_2071);
      let x_2074 : vec4<f32> = u_xlat7;
      let x_2075 : vec2<f32> = vec2<f32>(x_2074.x, x_2074.y);
      let x_2077 : f32 = vs_INTERP3.z;
      txVec30 = vec3<f32>(x_2075.x, x_2075.y, x_2077);
      let x_2084 : vec3<f32> = txVec30;
      let x_2086 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2084.xy, x_2084.z);
      u_xlat8.x = x_2086;
      let x_2089 : vec4<f32> = u_xlat7;
      let x_2090 : vec2<f32> = vec2<f32>(x_2089.z, x_2089.w);
      let x_2092 : f32 = vs_INTERP3.z;
      txVec31 = vec3<f32>(x_2090.x, x_2090.y, x_2092);
      let x_2099 : vec3<f32> = txVec31;
      let x_2101 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2099.xy, x_2099.z);
      u_xlat8.y = x_2101;
      let x_2103 : vec4<f32> = vs_INTERP3;
      let x_2106 : vec4<f32> = x_249.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_2103.x, x_2103.y, x_2103.x, x_2103.y) + x_2106);
      let x_2109 : vec4<f32> = u_xlat7;
      let x_2110 : vec2<f32> = vec2<f32>(x_2109.x, x_2109.y);
      let x_2112 : f32 = vs_INTERP3.z;
      txVec32 = vec3<f32>(x_2110.x, x_2110.y, x_2112);
      let x_2119 : vec3<f32> = txVec32;
      let x_2121 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2119.xy, x_2119.z);
      u_xlat8.z = x_2121;
      let x_2124 : vec4<f32> = u_xlat7;
      let x_2125 : vec2<f32> = vec2<f32>(x_2124.z, x_2124.w);
      let x_2127 : f32 = vs_INTERP3.z;
      txVec33 = vec3<f32>(x_2125.x, x_2125.y, x_2127);
      let x_2134 : vec3<f32> = txVec33;
      let x_2136 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2134.xy, x_2134.z);
      u_xlat8.w = x_2136;
      let x_2138 : vec4<f32> = u_xlat8;
      u_xlat78 = dot(x_2138, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_2143 : f32 = x_249.x_MainLightShadowParams.y;
      u_xlatb58.x = (x_2143 == 2.0f);
      let x_2147 : bool = u_xlatb58.x;
      if (x_2147) {
        let x_2151 : vec4<f32> = vs_INTERP3;
        let x_2154 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        u_xlat58 = ((vec2<f32>(x_2151.x, x_2151.y) * vec2<f32>(x_2154.z, x_2154.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2158 : vec2<f32> = u_xlat58;
        u_xlat58 = floor(x_2158);
        let x_2160 : vec4<f32> = vs_INTERP3;
        let x_2163 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2166 : vec2<f32> = u_xlat58;
        let x_2168 : vec2<f32> = ((vec2<f32>(x_2160.x, x_2160.y) * vec2<f32>(x_2163.z, x_2163.w)) + -(x_2166));
        let x_2169 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2168.x, x_2168.y, x_2169.z, x_2169.w);
        let x_2171 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_2171.x, x_2171.x, x_2171.y, x_2171.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2174 : vec4<f32> = u_xlat8;
        let x_2176 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2174.x, x_2174.x, x_2174.z, x_2174.z) * vec4<f32>(x_2176.x, x_2176.x, x_2176.z, x_2176.z));
        let x_2179 : vec4<f32> = u_xlat9;
        u_xlat59 = (vec2<f32>(x_2179.y, x_2179.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_2182 : vec4<f32> = u_xlat9;
        let x_2185 : vec4<f32> = u_xlat7;
        let x_2188 : vec2<f32> = ((vec2<f32>(x_2182.x, x_2182.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2185.x, x_2185.y)));
        let x_2189 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2188.x, x_2189.y, x_2188.y, x_2189.w);
        let x_2191 : vec4<f32> = u_xlat7;
        let x_2194 : vec2<f32> = (-(vec2<f32>(x_2191.x, x_2191.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2195 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2194.x, x_2194.y, x_2195.z, x_2195.w);
        let x_2197 : vec4<f32> = u_xlat7;
        u_xlat61 = min(vec2<f32>(x_2197.x, x_2197.y), vec2<f32>(0.0f, 0.0f));
        let x_2200 : vec2<f32> = u_xlat61;
        let x_2202 : vec2<f32> = u_xlat61;
        let x_2204 : vec4<f32> = u_xlat9;
        u_xlat61 = ((-(x_2200) * x_2202) + vec2<f32>(x_2204.x, x_2204.y));
        let x_2207 : vec4<f32> = u_xlat7;
        let x_2209 : vec2<f32> = max(vec2<f32>(x_2207.x, x_2207.y), vec2<f32>(0.0f, 0.0f));
        let x_2210 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2209.x, x_2209.y, x_2210.z, x_2210.w);
        let x_2212 : vec4<f32> = u_xlat7;
        let x_2215 : vec4<f32> = u_xlat7;
        let x_2218 : vec4<f32> = u_xlat8;
        let x_2220 : vec2<f32> = ((-(vec2<f32>(x_2212.x, x_2212.y)) * vec2<f32>(x_2215.x, x_2215.y)) + vec2<f32>(x_2218.y, x_2218.w));
        let x_2221 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2220.x, x_2220.y, x_2221.z, x_2221.w);
        let x_2223 : vec2<f32> = u_xlat61;
        u_xlat61 = (x_2223 + vec2<f32>(1.0f, 1.0f));
        let x_2225 : vec4<f32> = u_xlat7;
        let x_2227 : vec2<f32> = (vec2<f32>(x_2225.x, x_2225.y) + vec2<f32>(1.0f, 1.0f));
        let x_2228 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2227.x, x_2227.y, x_2228.z, x_2228.w);
        let x_2230 : vec4<f32> = u_xlat8;
        let x_2232 : vec2<f32> = (vec2<f32>(x_2230.x, x_2230.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2233 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2232.x, x_2232.y, x_2233.z, x_2233.w);
        let x_2235 : vec4<f32> = u_xlat9;
        let x_2237 : vec2<f32> = (vec2<f32>(x_2235.x, x_2235.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2238 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2237.x, x_2237.y, x_2238.z, x_2238.w);
        let x_2240 : vec2<f32> = u_xlat61;
        let x_2241 : vec2<f32> = (x_2240 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2242 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2241.x, x_2241.y, x_2242.z, x_2242.w);
        let x_2244 : vec4<f32> = u_xlat7;
        let x_2246 : vec2<f32> = (vec2<f32>(x_2244.x, x_2244.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2247 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2246.x, x_2246.y, x_2247.z, x_2247.w);
        let x_2249 : vec4<f32> = u_xlat8;
        let x_2251 : vec2<f32> = (vec2<f32>(x_2249.y, x_2249.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2252 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2251.x, x_2251.y, x_2252.z, x_2252.w);
        let x_2255 : f32 = u_xlat9.x;
        u_xlat10.z = x_2255;
        let x_2258 : f32 = u_xlat7.x;
        u_xlat10.w = x_2258;
        let x_2261 : f32 = u_xlat12.x;
        u_xlat11.z = x_2261;
        let x_2264 : f32 = u_xlat59.x;
        u_xlat11.w = x_2264;
        let x_2266 : vec4<f32> = u_xlat10;
        let x_2268 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_2266.z, x_2266.w, x_2266.x, x_2266.z) + vec4<f32>(x_2268.z, x_2268.w, x_2268.x, x_2268.z));
        let x_2272 : f32 = u_xlat10.y;
        u_xlat9.z = x_2272;
        let x_2275 : f32 = u_xlat7.y;
        u_xlat9.w = x_2275;
        let x_2278 : f32 = u_xlat11.y;
        u_xlat12.z = x_2278;
        let x_2281 : f32 = u_xlat59.y;
        u_xlat12.w = x_2281;
        let x_2283 : vec4<f32> = u_xlat9;
        let x_2285 : vec4<f32> = u_xlat12;
        let x_2287 : vec3<f32> = (vec3<f32>(x_2283.z, x_2283.y, x_2283.w) + vec3<f32>(x_2285.z, x_2285.y, x_2285.w));
        let x_2288 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2287.x, x_2287.y, x_2287.z, x_2288.w);
        let x_2290 : vec4<f32> = u_xlat11;
        let x_2292 : vec4<f32> = u_xlat8;
        let x_2294 : vec3<f32> = (vec3<f32>(x_2290.x, x_2290.z, x_2290.w) / vec3<f32>(x_2292.z, x_2292.w, x_2292.y));
        let x_2295 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2294.x, x_2294.y, x_2294.z, x_2295.w);
        let x_2297 : vec4<f32> = u_xlat9;
        let x_2299 : vec3<f32> = (vec3<f32>(x_2297.x, x_2297.y, x_2297.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2300 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2299.x, x_2299.y, x_2299.z, x_2300.w);
        let x_2302 : vec4<f32> = u_xlat12;
        let x_2304 : vec4<f32> = u_xlat7;
        let x_2306 : vec3<f32> = (vec3<f32>(x_2302.z, x_2302.y, x_2302.w) / vec3<f32>(x_2304.x, x_2304.y, x_2304.z));
        let x_2307 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2306.x, x_2306.y, x_2306.z, x_2307.w);
        let x_2309 : vec4<f32> = u_xlat10;
        let x_2311 : vec3<f32> = (vec3<f32>(x_2309.x, x_2309.y, x_2309.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2312 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2311.x, x_2311.y, x_2311.z, x_2312.w);
        let x_2314 : vec4<f32> = u_xlat9;
        let x_2317 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2319 : vec3<f32> = (vec3<f32>(x_2314.y, x_2314.x, x_2314.z) * vec3<f32>(x_2317.x, x_2317.x, x_2317.x));
        let x_2320 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2319.x, x_2319.y, x_2319.z, x_2320.w);
        let x_2322 : vec4<f32> = u_xlat10;
        let x_2325 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2327 : vec3<f32> = (vec3<f32>(x_2322.x, x_2322.y, x_2322.z) * vec3<f32>(x_2325.y, x_2325.y, x_2325.y));
        let x_2328 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2327.x, x_2327.y, x_2327.z, x_2328.w);
        let x_2331 : f32 = u_xlat10.x;
        u_xlat9.w = x_2331;
        let x_2333 : vec2<f32> = u_xlat58;
        let x_2336 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2339 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_2333.x, x_2333.y, x_2333.x, x_2333.y) * vec4<f32>(x_2336.x, x_2336.y, x_2336.x, x_2336.y)) + vec4<f32>(x_2339.y, x_2339.w, x_2339.x, x_2339.w));
        let x_2342 : vec2<f32> = u_xlat58;
        let x_2344 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2347 : vec4<f32> = u_xlat9;
        let x_2349 : vec2<f32> = ((x_2342 * vec2<f32>(x_2344.x, x_2344.y)) + vec2<f32>(x_2347.z, x_2347.w));
        let x_2350 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2349.x, x_2349.y, x_2350.z, x_2350.w);
        let x_2353 : f32 = u_xlat9.y;
        u_xlat10.w = x_2353;
        let x_2355 : vec4<f32> = u_xlat10;
        let x_2356 : vec2<f32> = vec2<f32>(x_2355.y, x_2355.z);
        let x_2357 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2357.x, x_2356.x, x_2357.z, x_2356.y);
        let x_2359 : vec2<f32> = u_xlat58;
        let x_2362 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2365 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_2359.x, x_2359.y, x_2359.x, x_2359.y) * vec4<f32>(x_2362.x, x_2362.y, x_2362.x, x_2362.y)) + vec4<f32>(x_2365.x, x_2365.y, x_2365.z, x_2365.y));
        let x_2368 : vec2<f32> = u_xlat58;
        let x_2371 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2374 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_2368.x, x_2368.y, x_2368.x, x_2368.y) * vec4<f32>(x_2371.x, x_2371.y, x_2371.x, x_2371.y)) + vec4<f32>(x_2374.w, x_2374.y, x_2374.w, x_2374.z));
        let x_2377 : vec2<f32> = u_xlat58;
        let x_2380 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2383 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_2377.x, x_2377.y, x_2377.x, x_2377.y) * vec4<f32>(x_2380.x, x_2380.y, x_2380.x, x_2380.y)) + vec4<f32>(x_2383.x, x_2383.w, x_2383.z, x_2383.w));
        let x_2386 : vec4<f32> = u_xlat7;
        let x_2388 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_2386.x, x_2386.x, x_2386.x, x_2386.y) * vec4<f32>(x_2388.z, x_2388.w, x_2388.y, x_2388.z));
        let x_2391 : vec4<f32> = u_xlat7;
        let x_2393 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_2391.y, x_2391.y, x_2391.z, x_2391.z) * x_2393);
        let x_2396 : f32 = u_xlat7.z;
        let x_2398 : f32 = u_xlat8.y;
        u_xlat58.x = (x_2396 * x_2398);
        let x_2402 : vec4<f32> = u_xlat11;
        let x_2403 : vec2<f32> = vec2<f32>(x_2402.x, x_2402.y);
        let x_2405 : f32 = vs_INTERP3.z;
        txVec34 = vec3<f32>(x_2403.x, x_2403.y, x_2405);
        let x_2412 : vec3<f32> = txVec34;
        let x_2414 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2412.xy, x_2412.z);
        u_xlat84 = x_2414;
        let x_2416 : vec4<f32> = u_xlat11;
        let x_2417 : vec2<f32> = vec2<f32>(x_2416.z, x_2416.w);
        let x_2419 : f32 = vs_INTERP3.z;
        txVec35 = vec3<f32>(x_2417.x, x_2417.y, x_2419);
        let x_2426 : vec3<f32> = txVec35;
        let x_2428 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2426.xy, x_2426.z);
        u_xlat7.x = x_2428;
        let x_2431 : f32 = u_xlat7.x;
        let x_2433 : f32 = u_xlat14.y;
        u_xlat7.x = (x_2431 * x_2433);
        let x_2437 : f32 = u_xlat14.x;
        let x_2438 : f32 = u_xlat84;
        let x_2441 : f32 = u_xlat7.x;
        u_xlat84 = ((x_2437 * x_2438) + x_2441);
        let x_2444 : vec4<f32> = u_xlat12;
        let x_2445 : vec2<f32> = vec2<f32>(x_2444.x, x_2444.y);
        let x_2447 : f32 = vs_INTERP3.z;
        txVec36 = vec3<f32>(x_2445.x, x_2445.y, x_2447);
        let x_2454 : vec3<f32> = txVec36;
        let x_2456 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2454.xy, x_2454.z);
        u_xlat7.x = x_2456;
        let x_2459 : f32 = u_xlat14.z;
        let x_2461 : f32 = u_xlat7.x;
        let x_2463 : f32 = u_xlat84;
        u_xlat84 = ((x_2459 * x_2461) + x_2463);
        let x_2466 : vec4<f32> = u_xlat10;
        let x_2467 : vec2<f32> = vec2<f32>(x_2466.x, x_2466.y);
        let x_2469 : f32 = vs_INTERP3.z;
        txVec37 = vec3<f32>(x_2467.x, x_2467.y, x_2469);
        let x_2476 : vec3<f32> = txVec37;
        let x_2478 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2476.xy, x_2476.z);
        u_xlat7.x = x_2478;
        let x_2481 : f32 = u_xlat14.w;
        let x_2483 : f32 = u_xlat7.x;
        let x_2485 : f32 = u_xlat84;
        u_xlat84 = ((x_2481 * x_2483) + x_2485);
        let x_2488 : vec4<f32> = u_xlat13;
        let x_2489 : vec2<f32> = vec2<f32>(x_2488.x, x_2488.y);
        let x_2491 : f32 = vs_INTERP3.z;
        txVec38 = vec3<f32>(x_2489.x, x_2489.y, x_2491);
        let x_2498 : vec3<f32> = txVec38;
        let x_2500 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2498.xy, x_2498.z);
        u_xlat7.x = x_2500;
        let x_2503 : f32 = u_xlat15.x;
        let x_2505 : f32 = u_xlat7.x;
        let x_2507 : f32 = u_xlat84;
        u_xlat84 = ((x_2503 * x_2505) + x_2507);
        let x_2510 : vec4<f32> = u_xlat13;
        let x_2511 : vec2<f32> = vec2<f32>(x_2510.z, x_2510.w);
        let x_2513 : f32 = vs_INTERP3.z;
        txVec39 = vec3<f32>(x_2511.x, x_2511.y, x_2513);
        let x_2520 : vec3<f32> = txVec39;
        let x_2522 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2520.xy, x_2520.z);
        u_xlat7.x = x_2522;
        let x_2525 : f32 = u_xlat15.y;
        let x_2527 : f32 = u_xlat7.x;
        let x_2529 : f32 = u_xlat84;
        u_xlat84 = ((x_2525 * x_2527) + x_2529);
        let x_2532 : vec4<f32> = u_xlat10;
        let x_2533 : vec2<f32> = vec2<f32>(x_2532.z, x_2532.w);
        let x_2535 : f32 = vs_INTERP3.z;
        txVec40 = vec3<f32>(x_2533.x, x_2533.y, x_2535);
        let x_2542 : vec3<f32> = txVec40;
        let x_2544 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2542.xy, x_2542.z);
        u_xlat7.x = x_2544;
        let x_2547 : f32 = u_xlat15.z;
        let x_2549 : f32 = u_xlat7.x;
        let x_2551 : f32 = u_xlat84;
        u_xlat84 = ((x_2547 * x_2549) + x_2551);
        let x_2554 : vec4<f32> = u_xlat9;
        let x_2555 : vec2<f32> = vec2<f32>(x_2554.x, x_2554.y);
        let x_2557 : f32 = vs_INTERP3.z;
        txVec41 = vec3<f32>(x_2555.x, x_2555.y, x_2557);
        let x_2564 : vec3<f32> = txVec41;
        let x_2566 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2564.xy, x_2564.z);
        u_xlat7.x = x_2566;
        let x_2569 : f32 = u_xlat15.w;
        let x_2571 : f32 = u_xlat7.x;
        let x_2573 : f32 = u_xlat84;
        u_xlat84 = ((x_2569 * x_2571) + x_2573);
        let x_2576 : vec4<f32> = u_xlat9;
        let x_2577 : vec2<f32> = vec2<f32>(x_2576.z, x_2576.w);
        let x_2579 : f32 = vs_INTERP3.z;
        txVec42 = vec3<f32>(x_2577.x, x_2577.y, x_2579);
        let x_2586 : vec3<f32> = txVec42;
        let x_2588 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2586.xy, x_2586.z);
        u_xlat7.x = x_2588;
        let x_2591 : f32 = u_xlat58.x;
        let x_2593 : f32 = u_xlat7.x;
        let x_2595 : f32 = u_xlat84;
        u_xlat78 = ((x_2591 * x_2593) + x_2595);
      } else {
        let x_2598 : vec4<f32> = vs_INTERP3;
        let x_2601 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        u_xlat58 = ((vec2<f32>(x_2598.x, x_2598.y) * vec2<f32>(x_2601.z, x_2601.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2605 : vec2<f32> = u_xlat58;
        u_xlat58 = floor(x_2605);
        let x_2607 : vec4<f32> = vs_INTERP3;
        let x_2610 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2613 : vec2<f32> = u_xlat58;
        let x_2615 : vec2<f32> = ((vec2<f32>(x_2607.x, x_2607.y) * vec2<f32>(x_2610.z, x_2610.w)) + -(x_2613));
        let x_2616 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2615.x, x_2615.y, x_2616.z, x_2616.w);
        let x_2618 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_2618.x, x_2618.x, x_2618.y, x_2618.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2621 : vec4<f32> = u_xlat8;
        let x_2623 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2621.x, x_2621.x, x_2621.z, x_2621.z) * vec4<f32>(x_2623.x, x_2623.x, x_2623.z, x_2623.z));
        let x_2626 : vec4<f32> = u_xlat9;
        let x_2628 : vec2<f32> = (vec2<f32>(x_2626.y, x_2626.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_2629 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2629.x, x_2628.x, x_2629.z, x_2628.y);
        let x_2631 : vec4<f32> = u_xlat9;
        let x_2634 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_2631.x, x_2631.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2634.x, x_2634.y)));
        let x_2638 : vec4<f32> = u_xlat7;
        let x_2641 : vec2<f32> = (-(vec2<f32>(x_2638.x, x_2638.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2642 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2641.x, x_2642.y, x_2641.y, x_2642.w);
        let x_2644 : vec4<f32> = u_xlat7;
        let x_2646 : vec2<f32> = min(vec2<f32>(x_2644.x, x_2644.y), vec2<f32>(0.0f, 0.0f));
        let x_2647 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2646.x, x_2646.y, x_2647.z, x_2647.w);
        let x_2649 : vec4<f32> = u_xlat9;
        let x_2652 : vec4<f32> = u_xlat9;
        let x_2655 : vec4<f32> = u_xlat8;
        let x_2657 : vec2<f32> = ((-(vec2<f32>(x_2649.x, x_2649.y)) * vec2<f32>(x_2652.x, x_2652.y)) + vec2<f32>(x_2655.x, x_2655.z));
        let x_2658 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2657.x, x_2658.y, x_2657.y, x_2658.w);
        let x_2660 : vec4<f32> = u_xlat7;
        let x_2662 : vec2<f32> = max(vec2<f32>(x_2660.x, x_2660.y), vec2<f32>(0.0f, 0.0f));
        let x_2663 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2662.x, x_2662.y, x_2663.z, x_2663.w);
        let x_2665 : vec4<f32> = u_xlat9;
        let x_2668 : vec4<f32> = u_xlat9;
        let x_2671 : vec4<f32> = u_xlat8;
        let x_2673 : vec2<f32> = ((-(vec2<f32>(x_2665.x, x_2665.y)) * vec2<f32>(x_2668.x, x_2668.y)) + vec2<f32>(x_2671.y, x_2671.w));
        let x_2674 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2674.x, x_2673.x, x_2674.z, x_2673.y);
        let x_2676 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_2676 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_2679 : f32 = u_xlat8.y;
        u_xlat9.z = (x_2679 * 0.08163200318813323975f);
        let x_2682 : vec2<f32> = u_xlat59;
        let x_2684 : vec2<f32> = (vec2<f32>(x_2682.y, x_2682.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2685 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2684.x, x_2684.y, x_2685.z, x_2685.w);
        let x_2687 : vec4<f32> = u_xlat8;
        u_xlat59 = (vec2<f32>(x_2687.x, x_2687.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2691 : f32 = u_xlat8.w;
        u_xlat11.z = (x_2691 * 0.08163200318813323975f);
        let x_2695 : f32 = u_xlat11.y;
        u_xlat9.x = x_2695;
        let x_2697 : vec4<f32> = u_xlat7;
        let x_2700 : vec2<f32> = ((vec2<f32>(x_2697.x, x_2697.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2701 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2701.x, x_2700.x, x_2701.z, x_2700.y);
        let x_2703 : vec4<f32> = u_xlat7;
        let x_2706 : vec2<f32> = ((vec2<f32>(x_2703.x, x_2703.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2707 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2706.x, x_2707.y, x_2706.y, x_2707.w);
        let x_2710 : f32 = u_xlat59.x;
        u_xlat8.y = x_2710;
        let x_2713 : f32 = u_xlat10.y;
        u_xlat8.w = x_2713;
        let x_2715 : vec4<f32> = u_xlat8;
        let x_2716 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_2715 + x_2716);
        let x_2718 : vec4<f32> = u_xlat7;
        let x_2721 : vec2<f32> = ((vec2<f32>(x_2718.y, x_2718.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2722 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2722.x, x_2721.x, x_2722.z, x_2721.y);
        let x_2724 : vec4<f32> = u_xlat7;
        let x_2727 : vec2<f32> = ((vec2<f32>(x_2724.y, x_2724.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2728 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2727.x, x_2728.y, x_2727.y, x_2728.w);
        let x_2731 : f32 = u_xlat59.y;
        u_xlat10.y = x_2731;
        let x_2733 : vec4<f32> = u_xlat10;
        let x_2734 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_2733 + x_2734);
        let x_2736 : vec4<f32> = u_xlat8;
        let x_2737 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_2736 / x_2737);
        let x_2739 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_2739 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2741 : vec4<f32> = u_xlat10;
        let x_2742 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_2741 / x_2742);
        let x_2744 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_2744 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2746 : vec4<f32> = u_xlat8;
        let x_2749 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_2746.w, x_2746.x, x_2746.y, x_2746.z) * vec4<f32>(x_2749.x, x_2749.x, x_2749.x, x_2749.x));
        let x_2752 : vec4<f32> = u_xlat10;
        let x_2755 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_2752.x, x_2752.w, x_2752.y, x_2752.z) * vec4<f32>(x_2755.y, x_2755.y, x_2755.y, x_2755.y));
        let x_2758 : vec4<f32> = u_xlat8;
        let x_2759 : vec3<f32> = vec3<f32>(x_2758.y, x_2758.z, x_2758.w);
        let x_2760 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2759.x, x_2760.y, x_2759.y, x_2759.z);
        let x_2763 : f32 = u_xlat10.x;
        u_xlat11.y = x_2763;
        let x_2765 : vec2<f32> = u_xlat58;
        let x_2768 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2771 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_2765.x, x_2765.y, x_2765.x, x_2765.y) * vec4<f32>(x_2768.x, x_2768.y, x_2768.x, x_2768.y)) + vec4<f32>(x_2771.x, x_2771.y, x_2771.z, x_2771.y));
        let x_2774 : vec2<f32> = u_xlat58;
        let x_2776 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2779 : vec4<f32> = u_xlat11;
        let x_2781 : vec2<f32> = ((x_2774 * vec2<f32>(x_2776.x, x_2776.y)) + vec2<f32>(x_2779.w, x_2779.y));
        let x_2782 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_2781.x, x_2781.y, x_2782.z, x_2782.w);
        let x_2785 : f32 = u_xlat11.y;
        u_xlat8.y = x_2785;
        let x_2788 : f32 = u_xlat10.z;
        u_xlat11.y = x_2788;
        let x_2790 : vec2<f32> = u_xlat58;
        let x_2793 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2796 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_2790.x, x_2790.y, x_2790.x, x_2790.y) * vec4<f32>(x_2793.x, x_2793.y, x_2793.x, x_2793.y)) + vec4<f32>(x_2796.x, x_2796.y, x_2796.z, x_2796.y));
        let x_2800 : vec2<f32> = u_xlat58;
        let x_2802 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2805 : vec4<f32> = u_xlat11;
        u_xlat65 = ((x_2800 * vec2<f32>(x_2802.x, x_2802.y)) + vec2<f32>(x_2805.w, x_2805.y));
        let x_2809 : f32 = u_xlat11.y;
        u_xlat8.z = x_2809;
        let x_2811 : vec2<f32> = u_xlat58;
        let x_2814 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2817 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_2811.x, x_2811.y, x_2811.x, x_2811.y) * vec4<f32>(x_2814.x, x_2814.y, x_2814.x, x_2814.y)) + vec4<f32>(x_2817.x, x_2817.y, x_2817.x, x_2817.z));
        let x_2821 : f32 = u_xlat10.w;
        u_xlat11.y = x_2821;
        let x_2823 : vec2<f32> = u_xlat58;
        let x_2826 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2829 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_2823.x, x_2823.y, x_2823.x, x_2823.y) * vec4<f32>(x_2826.x, x_2826.y, x_2826.x, x_2826.y)) + vec4<f32>(x_2829.x, x_2829.y, x_2829.z, x_2829.y));
        let x_2832 : vec2<f32> = u_xlat58;
        let x_2834 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2837 : vec4<f32> = u_xlat11;
        let x_2839 : vec2<f32> = ((x_2832 * vec2<f32>(x_2834.x, x_2834.y)) + vec2<f32>(x_2837.w, x_2837.y));
        let x_2840 : vec3<f32> = u_xlat34;
        u_xlat34 = vec3<f32>(x_2839.x, x_2839.y, x_2840.z);
        let x_2843 : f32 = u_xlat11.y;
        u_xlat8.w = x_2843;
        let x_2845 : vec2<f32> = u_xlat58;
        let x_2847 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2850 : vec4<f32> = u_xlat8;
        let x_2852 : vec2<f32> = ((x_2845 * vec2<f32>(x_2847.x, x_2847.y)) + vec2<f32>(x_2850.x, x_2850.w));
        let x_2853 : vec4<f32> = u_xlat17;
        u_xlat17 = vec4<f32>(x_2852.x, x_2852.y, x_2853.z, x_2853.w);
        let x_2855 : vec4<f32> = u_xlat11;
        let x_2856 : vec3<f32> = vec3<f32>(x_2855.x, x_2855.z, x_2855.w);
        let x_2857 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2856.x, x_2857.y, x_2856.y, x_2856.z);
        let x_2859 : vec2<f32> = u_xlat58;
        let x_2862 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2865 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_2859.x, x_2859.y, x_2859.x, x_2859.y) * vec4<f32>(x_2862.x, x_2862.y, x_2862.x, x_2862.y)) + vec4<f32>(x_2865.x, x_2865.y, x_2865.z, x_2865.y));
        let x_2868 : vec2<f32> = u_xlat58;
        let x_2870 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2873 : vec4<f32> = u_xlat10;
        u_xlat62 = ((x_2868 * vec2<f32>(x_2870.x, x_2870.y)) + vec2<f32>(x_2873.w, x_2873.y));
        let x_2877 : f32 = u_xlat8.x;
        u_xlat10.x = x_2877;
        let x_2879 : vec2<f32> = u_xlat58;
        let x_2881 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2884 : vec4<f32> = u_xlat10;
        u_xlat58 = ((x_2879 * vec2<f32>(x_2881.x, x_2881.y)) + vec2<f32>(x_2884.x, x_2884.y));
        let x_2887 : vec4<f32> = u_xlat7;
        let x_2889 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_2887.x, x_2887.x, x_2887.x, x_2887.x) * x_2889);
        let x_2891 : vec4<f32> = u_xlat7;
        let x_2893 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_2891.y, x_2891.y, x_2891.y, x_2891.y) * x_2893);
        let x_2895 : vec4<f32> = u_xlat7;
        let x_2897 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_2895.z, x_2895.z, x_2895.z, x_2895.z) * x_2897);
        let x_2899 : vec4<f32> = u_xlat7;
        let x_2901 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_2899.w, x_2899.w, x_2899.w, x_2899.w) * x_2901);
        let x_2904 : vec4<f32> = u_xlat12;
        let x_2905 : vec2<f32> = vec2<f32>(x_2904.x, x_2904.y);
        let x_2907 : f32 = vs_INTERP3.z;
        txVec43 = vec3<f32>(x_2905.x, x_2905.y, x_2907);
        let x_2914 : vec3<f32> = txVec43;
        let x_2916 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2914.xy, x_2914.z);
        u_xlat8.x = x_2916;
        let x_2919 : vec4<f32> = u_xlat12;
        let x_2920 : vec2<f32> = vec2<f32>(x_2919.z, x_2919.w);
        let x_2922 : f32 = vs_INTERP3.z;
        txVec44 = vec3<f32>(x_2920.x, x_2920.y, x_2922);
        let x_2930 : vec3<f32> = txVec44;
        let x_2932 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2930.xy, x_2930.z);
        u_xlat86 = x_2932;
        let x_2933 : f32 = u_xlat86;
        let x_2935 : f32 = u_xlat18.y;
        u_xlat86 = (x_2933 * x_2935);
        let x_2938 : f32 = u_xlat18.x;
        let x_2940 : f32 = u_xlat8.x;
        let x_2942 : f32 = u_xlat86;
        u_xlat8.x = ((x_2938 * x_2940) + x_2942);
        let x_2946 : vec4<f32> = u_xlat13;
        let x_2947 : vec2<f32> = vec2<f32>(x_2946.x, x_2946.y);
        let x_2949 : f32 = vs_INTERP3.z;
        txVec45 = vec3<f32>(x_2947.x, x_2947.y, x_2949);
        let x_2956 : vec3<f32> = txVec45;
        let x_2958 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2956.xy, x_2956.z);
        u_xlat86 = x_2958;
        let x_2960 : f32 = u_xlat18.z;
        let x_2961 : f32 = u_xlat86;
        let x_2964 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2960 * x_2961) + x_2964);
        let x_2968 : vec4<f32> = u_xlat15;
        let x_2969 : vec2<f32> = vec2<f32>(x_2968.x, x_2968.y);
        let x_2971 : f32 = vs_INTERP3.z;
        txVec46 = vec3<f32>(x_2969.x, x_2969.y, x_2971);
        let x_2978 : vec3<f32> = txVec46;
        let x_2980 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2978.xy, x_2978.z);
        u_xlat86 = x_2980;
        let x_2982 : f32 = u_xlat18.w;
        let x_2983 : f32 = u_xlat86;
        let x_2986 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2982 * x_2983) + x_2986);
        let x_2990 : vec4<f32> = u_xlat14;
        let x_2991 : vec2<f32> = vec2<f32>(x_2990.x, x_2990.y);
        let x_2993 : f32 = vs_INTERP3.z;
        txVec47 = vec3<f32>(x_2991.x, x_2991.y, x_2993);
        let x_3000 : vec3<f32> = txVec47;
        let x_3002 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3000.xy, x_3000.z);
        u_xlat86 = x_3002;
        let x_3004 : f32 = u_xlat19.x;
        let x_3005 : f32 = u_xlat86;
        let x_3008 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_3004 * x_3005) + x_3008);
        let x_3012 : vec4<f32> = u_xlat14;
        let x_3013 : vec2<f32> = vec2<f32>(x_3012.z, x_3012.w);
        let x_3015 : f32 = vs_INTERP3.z;
        txVec48 = vec3<f32>(x_3013.x, x_3013.y, x_3015);
        let x_3022 : vec3<f32> = txVec48;
        let x_3024 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3022.xy, x_3022.z);
        u_xlat86 = x_3024;
        let x_3026 : f32 = u_xlat19.y;
        let x_3027 : f32 = u_xlat86;
        let x_3030 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_3026 * x_3027) + x_3030);
        let x_3034 : vec2<f32> = u_xlat65;
        let x_3036 : f32 = vs_INTERP3.z;
        txVec49 = vec3<f32>(x_3034.x, x_3034.y, x_3036);
        let x_3043 : vec3<f32> = txVec49;
        let x_3045 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3043.xy, x_3043.z);
        u_xlat86 = x_3045;
        let x_3047 : f32 = u_xlat19.z;
        let x_3048 : f32 = u_xlat86;
        let x_3051 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_3047 * x_3048) + x_3051);
        let x_3055 : vec4<f32> = u_xlat15;
        let x_3056 : vec2<f32> = vec2<f32>(x_3055.z, x_3055.w);
        let x_3058 : f32 = vs_INTERP3.z;
        txVec50 = vec3<f32>(x_3056.x, x_3056.y, x_3058);
        let x_3065 : vec3<f32> = txVec50;
        let x_3067 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3065.xy, x_3065.z);
        u_xlat86 = x_3067;
        let x_3069 : f32 = u_xlat19.w;
        let x_3070 : f32 = u_xlat86;
        let x_3073 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_3069 * x_3070) + x_3073);
        let x_3077 : vec4<f32> = u_xlat16;
        let x_3078 : vec2<f32> = vec2<f32>(x_3077.x, x_3077.y);
        let x_3080 : f32 = vs_INTERP3.z;
        txVec51 = vec3<f32>(x_3078.x, x_3078.y, x_3080);
        let x_3087 : vec3<f32> = txVec51;
        let x_3089 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3087.xy, x_3087.z);
        u_xlat86 = x_3089;
        let x_3091 : f32 = u_xlat20.x;
        let x_3092 : f32 = u_xlat86;
        let x_3095 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_3091 * x_3092) + x_3095);
        let x_3099 : vec4<f32> = u_xlat16;
        let x_3100 : vec2<f32> = vec2<f32>(x_3099.z, x_3099.w);
        let x_3102 : f32 = vs_INTERP3.z;
        txVec52 = vec3<f32>(x_3100.x, x_3100.y, x_3102);
        let x_3109 : vec3<f32> = txVec52;
        let x_3111 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3109.xy, x_3109.z);
        u_xlat86 = x_3111;
        let x_3113 : f32 = u_xlat20.y;
        let x_3114 : f32 = u_xlat86;
        let x_3117 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_3113 * x_3114) + x_3117);
        let x_3121 : vec3<f32> = u_xlat34;
        let x_3122 : vec2<f32> = vec2<f32>(x_3121.x, x_3121.y);
        let x_3124 : f32 = vs_INTERP3.z;
        txVec53 = vec3<f32>(x_3122.x, x_3122.y, x_3124);
        let x_3131 : vec3<f32> = txVec53;
        let x_3133 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3131.xy, x_3131.z);
        u_xlat34.x = x_3133;
        let x_3136 : f32 = u_xlat20.z;
        let x_3138 : f32 = u_xlat34.x;
        let x_3141 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_3136 * x_3138) + x_3141);
        let x_3145 : vec4<f32> = u_xlat17;
        let x_3146 : vec2<f32> = vec2<f32>(x_3145.x, x_3145.y);
        let x_3148 : f32 = vs_INTERP3.z;
        txVec54 = vec3<f32>(x_3146.x, x_3146.y, x_3148);
        let x_3155 : vec3<f32> = txVec54;
        let x_3157 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3155.xy, x_3155.z);
        u_xlat34.x = x_3157;
        let x_3160 : f32 = u_xlat20.w;
        let x_3162 : f32 = u_xlat34.x;
        let x_3165 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_3160 * x_3162) + x_3165);
        let x_3169 : vec4<f32> = u_xlat11;
        let x_3170 : vec2<f32> = vec2<f32>(x_3169.x, x_3169.y);
        let x_3172 : f32 = vs_INTERP3.z;
        txVec55 = vec3<f32>(x_3170.x, x_3170.y, x_3172);
        let x_3179 : vec3<f32> = txVec55;
        let x_3181 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3179.xy, x_3179.z);
        u_xlat34.x = x_3181;
        let x_3184 : f32 = u_xlat7.x;
        let x_3186 : f32 = u_xlat34.x;
        let x_3189 : f32 = u_xlat8.x;
        u_xlat7.x = ((x_3184 * x_3186) + x_3189);
        let x_3193 : vec4<f32> = u_xlat11;
        let x_3194 : vec2<f32> = vec2<f32>(x_3193.z, x_3193.w);
        let x_3196 : f32 = vs_INTERP3.z;
        txVec56 = vec3<f32>(x_3194.x, x_3194.y, x_3196);
        let x_3203 : vec3<f32> = txVec56;
        let x_3205 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3203.xy, x_3203.z);
        u_xlat8.x = x_3205;
        let x_3208 : f32 = u_xlat7.y;
        let x_3210 : f32 = u_xlat8.x;
        let x_3213 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_3208 * x_3210) + x_3213);
        let x_3217 : vec2<f32> = u_xlat62;
        let x_3219 : f32 = vs_INTERP3.z;
        txVec57 = vec3<f32>(x_3217.x, x_3217.y, x_3219);
        let x_3227 : vec3<f32> = txVec57;
        let x_3229 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3227.xy, x_3227.z);
        u_xlat33 = x_3229;
        let x_3231 : f32 = u_xlat7.z;
        let x_3232 : f32 = u_xlat33;
        let x_3235 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_3231 * x_3232) + x_3235);
        let x_3239 : vec2<f32> = u_xlat58;
        let x_3241 : f32 = vs_INTERP3.z;
        txVec58 = vec3<f32>(x_3239.x, x_3239.y, x_3241);
        let x_3248 : vec3<f32> = txVec58;
        let x_3250 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3248.xy, x_3248.z);
        u_xlat58.x = x_3250;
        let x_3253 : f32 = u_xlat7.w;
        let x_3255 : f32 = u_xlat58.x;
        let x_3258 : f32 = u_xlat7.x;
        u_xlat78 = ((x_3253 * x_3255) + x_3258);
      }
    }
  } else {
    let x_3262 : vec4<f32> = vs_INTERP3;
    let x_3263 : vec2<f32> = vec2<f32>(x_3262.x, x_3262.y);
    let x_3265 : f32 = vs_INTERP3.z;
    txVec59 = vec3<f32>(x_3263.x, x_3263.y, x_3265);
    let x_3272 : vec3<f32> = txVec59;
    let x_3274 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3272.xy, x_3272.z);
    u_xlat78 = x_3274;
  }
  let x_3275 : f32 = u_xlat78;
  let x_3277 : f32 = x_249.x_MainLightShadowParams.x;
  let x_3279 : f32 = u_xlat80;
  u_xlat78 = ((x_3275 * x_3277) + x_3279);
  let x_3282 : f32 = vs_INTERP3.z;
  u_xlatb80 = (0.0f >= x_3282);
  let x_3285 : f32 = vs_INTERP3.z;
  u_xlatb58.x = (x_3285 >= 1.0f);
  let x_3288 : bool = u_xlatb80;
  let x_3290 : bool = u_xlatb58.x;
  u_xlatb80 = (x_3288 | x_3290);
  let x_3292 : bool = u_xlatb80;
  let x_3293 : f32 = u_xlat78;
  u_xlat78 = select(x_3293, 1.0f, x_3292);
  let x_3295 : vec3<f32> = vs_INTERP8;
  let x_3297 : vec3<f32> = x_75.x_WorldSpaceCameraPos;
  let x_3299 : vec3<f32> = (x_3295 + -(x_3297));
  let x_3300 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3299.x, x_3299.y, x_3299.z, x_3300.w);
  let x_3302 : vec4<f32> = u_xlat7;
  let x_3304 : vec4<f32> = u_xlat7;
  u_xlat80 = dot(vec3<f32>(x_3302.x, x_3302.y, x_3302.z), vec3<f32>(x_3304.x, x_3304.y, x_3304.z));
  let x_3307 : f32 = u_xlat80;
  let x_3309 : f32 = x_249.x_MainLightShadowParams.z;
  let x_3312 : f32 = x_249.x_MainLightShadowParams.w;
  u_xlat58.x = ((x_3307 * x_3309) + x_3312);
  let x_3316 : f32 = u_xlat58.x;
  u_xlat58.x = clamp(x_3316, 0.0f, 1.0f);
  let x_3319 : f32 = u_xlat78;
  u_xlat84 = (-(x_3319) + 1.0f);
  let x_3323 : f32 = u_xlat58.x;
  let x_3324 : f32 = u_xlat84;
  let x_3326 : f32 = u_xlat78;
  u_xlat78 = ((x_3323 * x_3324) + x_3326);
  let x_3335 : f32 = x_3333.x_MainLightCookieTextureFormat;
  u_xlatb58.x = !((x_3335 == -1.0f));
  let x_3339 : bool = u_xlatb58.x;
  if (x_3339) {
    let x_3342 : vec3<f32> = vs_INTERP8;
    let x_3345 : vec4<f32> = x_3333.x_MainLightWorldToLight[1i];
    u_xlat58 = (vec2<f32>(x_3342.y, x_3342.y) * vec2<f32>(x_3345.x, x_3345.y));
    let x_3349 : vec4<f32> = x_3333.x_MainLightWorldToLight[0i];
    let x_3351 : vec3<f32> = vs_INTERP8;
    let x_3354 : vec2<f32> = u_xlat58;
    u_xlat58 = ((vec2<f32>(x_3349.x, x_3349.y) * vec2<f32>(x_3351.x, x_3351.x)) + x_3354);
    let x_3357 : vec4<f32> = x_3333.x_MainLightWorldToLight[2i];
    let x_3359 : vec3<f32> = vs_INTERP8;
    let x_3362 : vec2<f32> = u_xlat58;
    u_xlat58 = ((vec2<f32>(x_3357.x, x_3357.y) * vec2<f32>(x_3359.z, x_3359.z)) + x_3362);
    let x_3364 : vec2<f32> = u_xlat58;
    let x_3366 : vec4<f32> = x_3333.x_MainLightWorldToLight[3i];
    u_xlat58 = (x_3364 + vec2<f32>(x_3366.x, x_3366.y));
    let x_3369 : vec2<f32> = u_xlat58;
    u_xlat58 = ((x_3369 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_3377 : vec2<f32> = u_xlat58;
    let x_3379 : f32 = x_75.x_GlobalMipBias.x;
    let x_3380 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_3377, x_3379);
    u_xlat7 = x_3380;
    let x_3382 : f32 = x_3333.x_MainLightCookieTextureFormat;
    let x_3384 : f32 = x_3333.x_MainLightCookieTextureFormat;
    let x_3386 : f32 = x_3333.x_MainLightCookieTextureFormat;
    let x_3388 : f32 = x_3333.x_MainLightCookieTextureFormat;
    let x_3389 : vec4<f32> = vec4<f32>(x_3382, x_3384, x_3386, x_3388);
    let x_3397 : vec4<bool> = (vec4<f32>(x_3389.x, x_3389.y, x_3389.z, x_3389.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb58 = vec2<bool>(x_3397.x, x_3397.y);
    let x_3400 : bool = u_xlatb58.y;
    if (x_3400) {
      let x_3405 : f32 = u_xlat7.w;
      x_3401 = x_3405;
    } else {
      let x_3408 : f32 = u_xlat7.x;
      x_3401 = x_3408;
    }
    let x_3409 : f32 = x_3401;
    u_xlat84 = x_3409;
    let x_3411 : bool = u_xlatb58.x;
    if (x_3411) {
      let x_3415 : vec4<f32> = u_xlat7;
      x_3412 = vec3<f32>(x_3415.x, x_3415.y, x_3415.z);
    } else {
      let x_3418 : f32 = u_xlat84;
      x_3412 = vec3<f32>(x_3418, x_3418, x_3418);
    }
    let x_3420 : vec3<f32> = x_3412;
    let x_3421 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3420.x, x_3420.y, x_3420.z, x_3421.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_3427 : vec4<f32> = u_xlat7;
  let x_3430 : vec4<f32> = x_75.x_MainLightColor;
  let x_3432 : vec3<f32> = (vec3<f32>(x_3427.x, x_3427.y, x_3427.z) * vec3<f32>(x_3430.x, x_3430.y, x_3430.z));
  let x_3433 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3432.x, x_3432.y, x_3432.z, x_3433.w);
  let x_3435 : vec3<f32> = u_xlat1;
  let x_3437 : vec4<f32> = u_xlat3;
  u_xlat58.x = dot(-(x_3435), vec3<f32>(x_3437.x, x_3437.y, x_3437.z));
  let x_3442 : f32 = u_xlat58.x;
  let x_3444 : f32 = u_xlat58.x;
  u_xlat58.x = (x_3442 + x_3444);
  let x_3447 : vec4<f32> = u_xlat3;
  let x_3449 : vec2<f32> = u_xlat58;
  let x_3453 : vec3<f32> = u_xlat1;
  let x_3455 : vec3<f32> = ((vec3<f32>(x_3447.x, x_3447.y, x_3447.z) * -(vec3<f32>(x_3449.x, x_3449.x, x_3449.x))) + -(x_3453));
  let x_3456 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3455.x, x_3455.y, x_3455.z, x_3456.w);
  let x_3458 : vec4<f32> = u_xlat3;
  let x_3460 : vec3<f32> = u_xlat1;
  u_xlat58.x = dot(vec3<f32>(x_3458.x, x_3458.y, x_3458.z), x_3460);
  let x_3464 : f32 = u_xlat58.x;
  u_xlat58.x = clamp(x_3464, 0.0f, 1.0f);
  let x_3468 : f32 = u_xlat58.x;
  u_xlat58.x = (-(x_3468) + 1.0f);
  let x_3473 : f32 = u_xlat58.x;
  let x_3475 : f32 = u_xlat58.x;
  u_xlat58.x = (x_3473 * x_3475);
  let x_3479 : f32 = u_xlat58.x;
  let x_3481 : f32 = u_xlat58.x;
  u_xlat58.x = (x_3479 * x_3481);
  let x_3484 : f32 = u_xlat54;
  u_xlat84 = ((-(x_3484) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_3490 : f32 = u_xlat54;
  let x_3491 : f32 = u_xlat84;
  u_xlat54 = (x_3490 * x_3491);
  let x_3493 : f32 = u_xlat54;
  u_xlat54 = (x_3493 * 6.0f);
  let x_3504 : vec4<f32> = u_xlat8;
  let x_3506 : f32 = u_xlat54;
  let x_3507 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_3504.x, x_3504.y, x_3504.z), x_3506);
  u_xlat8 = x_3507;
  let x_3509 : f32 = u_xlat8.w;
  u_xlat54 = (x_3509 + -1.0f);
  let x_3512 : f32 = x_132.unity_SpecCube0_HDR.w;
  let x_3513 : f32 = u_xlat54;
  u_xlat54 = ((x_3512 * x_3513) + 1.0f);
  let x_3516 : f32 = u_xlat54;
  u_xlat54 = max(x_3516, 0.0f);
  let x_3518 : f32 = u_xlat54;
  u_xlat54 = log2(x_3518);
  let x_3520 : f32 = u_xlat54;
  let x_3522 : f32 = x_132.unity_SpecCube0_HDR.y;
  u_xlat54 = (x_3520 * x_3522);
  let x_3524 : f32 = u_xlat54;
  u_xlat54 = exp2(x_3524);
  let x_3526 : f32 = u_xlat54;
  let x_3528 : f32 = x_132.unity_SpecCube0_HDR.x;
  u_xlat54 = (x_3526 * x_3528);
  let x_3530 : vec4<f32> = u_xlat8;
  let x_3532 : f32 = u_xlat54;
  let x_3534 : vec3<f32> = (vec3<f32>(x_3530.x, x_3530.y, x_3530.z) * vec3<f32>(x_3532, x_3532, x_3532));
  let x_3535 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3534.x, x_3534.y, x_3534.z, x_3535.w);
  let x_3537 : f32 = u_xlat81;
  let x_3539 : f32 = u_xlat81;
  let x_3543 : vec2<f32> = ((vec2<f32>(x_3537, x_3537) * vec2<f32>(x_3539, x_3539)) + vec2<f32>(-1.0f, 1.0f));
  let x_3544 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_3543.x, x_3543.y, x_3544.z, x_3544.w);
  let x_3547 : f32 = u_xlat9.y;
  u_xlat54 = (1.0f / x_3547);
  let x_3550 : f32 = u_xlat5.x;
  u_xlat81 = (x_3550 + -0.03999999910593032837f);
  let x_3554 : f32 = u_xlat58.x;
  let x_3555 : f32 = u_xlat81;
  u_xlat81 = ((x_3554 * x_3555) + 0.03999999910593032837f);
  let x_3559 : f32 = u_xlat54;
  let x_3560 : f32 = u_xlat81;
  u_xlat54 = (x_3559 * x_3560);
  let x_3562 : f32 = u_xlat54;
  let x_3564 : vec4<f32> = u_xlat8;
  let x_3566 : vec3<f32> = (vec3<f32>(x_3562, x_3562, x_3562) * vec3<f32>(x_3564.x, x_3564.y, x_3564.z));
  let x_3567 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3566.x, x_3566.y, x_3566.z, x_3567.w);
  let x_3569 : vec3<f32> = u_xlat31;
  let x_3570 : vec3<f32> = u_xlat4;
  let x_3572 : vec4<f32> = u_xlat8;
  let x_3574 : vec3<f32> = ((x_3569 * x_3570) + vec3<f32>(x_3572.x, x_3572.y, x_3572.z));
  let x_3575 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_3574.x, x_3574.y, x_3574.z, x_3575.w);
  let x_3577 : f32 = u_xlat78;
  let x_3579 : f32 = x_132.unity_LightData.z;
  u_xlat78 = (x_3577 * x_3579);
  let x_3581 : vec4<f32> = u_xlat3;
  let x_3584 : vec4<f32> = x_75.x_MainLightPosition;
  u_xlat54 = dot(vec3<f32>(x_3581.x, x_3581.y, x_3581.z), vec3<f32>(x_3584.x, x_3584.y, x_3584.z));
  let x_3587 : f32 = u_xlat54;
  u_xlat54 = clamp(x_3587, 0.0f, 1.0f);
  let x_3589 : f32 = u_xlat78;
  let x_3590 : f32 = u_xlat54;
  u_xlat78 = (x_3589 * x_3590);
  let x_3592 : f32 = u_xlat78;
  let x_3594 : vec4<f32> = u_xlat7;
  let x_3596 : vec3<f32> = (vec3<f32>(x_3592, x_3592, x_3592) * vec3<f32>(x_3594.x, x_3594.y, x_3594.z));
  let x_3597 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3596.x, x_3596.y, x_3596.z, x_3597.w);
  let x_3599 : vec3<f32> = u_xlat1;
  let x_3601 : vec4<f32> = x_75.x_MainLightPosition;
  let x_3603 : vec3<f32> = (x_3599 + vec3<f32>(x_3601.x, x_3601.y, x_3601.z));
  let x_3604 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3603.x, x_3603.y, x_3603.z, x_3604.w);
  let x_3606 : vec4<f32> = u_xlat8;
  let x_3608 : vec4<f32> = u_xlat8;
  u_xlat78 = dot(vec3<f32>(x_3606.x, x_3606.y, x_3606.z), vec3<f32>(x_3608.x, x_3608.y, x_3608.z));
  let x_3611 : f32 = u_xlat78;
  u_xlat78 = max(x_3611, 1.17549435e-38f);
  let x_3614 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_3614);
  let x_3616 : f32 = u_xlat78;
  let x_3618 : vec4<f32> = u_xlat8;
  let x_3620 : vec3<f32> = (vec3<f32>(x_3616, x_3616, x_3616) * vec3<f32>(x_3618.x, x_3618.y, x_3618.z));
  let x_3621 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3620.x, x_3620.y, x_3620.z, x_3621.w);
  let x_3623 : vec4<f32> = u_xlat3;
  let x_3625 : vec4<f32> = u_xlat8;
  u_xlat78 = dot(vec3<f32>(x_3623.x, x_3623.y, x_3623.z), vec3<f32>(x_3625.x, x_3625.y, x_3625.z));
  let x_3628 : f32 = u_xlat78;
  u_xlat78 = clamp(x_3628, 0.0f, 1.0f);
  let x_3631 : vec4<f32> = x_75.x_MainLightPosition;
  let x_3633 : vec4<f32> = u_xlat8;
  u_xlat54 = dot(vec3<f32>(x_3631.x, x_3631.y, x_3631.z), vec3<f32>(x_3633.x, x_3633.y, x_3633.z));
  let x_3636 : f32 = u_xlat54;
  u_xlat54 = clamp(x_3636, 0.0f, 1.0f);
  let x_3638 : f32 = u_xlat78;
  let x_3639 : f32 = u_xlat78;
  u_xlat78 = (x_3638 * x_3639);
  let x_3641 : f32 = u_xlat78;
  let x_3643 : f32 = u_xlat9.x;
  u_xlat78 = ((x_3641 * x_3643) + 1.00001001358032226562f);
  let x_3647 : f32 = u_xlat54;
  let x_3648 : f32 = u_xlat54;
  u_xlat54 = (x_3647 * x_3648);
  let x_3650 : f32 = u_xlat78;
  let x_3651 : f32 = u_xlat78;
  u_xlat78 = (x_3650 * x_3651);
  let x_3653 : f32 = u_xlat54;
  u_xlat54 = max(x_3653, 0.10000000149011611938f);
  let x_3656 : f32 = u_xlat78;
  let x_3657 : f32 = u_xlat54;
  u_xlat78 = (x_3656 * x_3657);
  let x_3660 : f32 = u_xlat6.x;
  let x_3661 : f32 = u_xlat78;
  u_xlat78 = (x_3660 * x_3661);
  let x_3663 : f32 = u_xlat82;
  let x_3664 : f32 = u_xlat78;
  u_xlat78 = (x_3663 / x_3664);
  let x_3666 : f32 = u_xlat78;
  let x_3670 : vec3<f32> = u_xlat4;
  let x_3671 : vec3<f32> = ((vec3<f32>(x_3666, x_3666, x_3666) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_3670);
  let x_3672 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3671.x, x_3671.y, x_3671.z, x_3672.w);
  let x_3674 : vec4<f32> = u_xlat7;
  let x_3676 : vec4<f32> = u_xlat8;
  let x_3678 : vec3<f32> = (vec3<f32>(x_3674.x, x_3674.y, x_3674.z) * vec3<f32>(x_3676.x, x_3676.y, x_3676.z));
  let x_3679 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3678.x, x_3678.y, x_3678.z, x_3679.w);
  let x_3683 : f32 = x_75.x_AdditionalLightsCount.x;
  let x_3685 : f32 = x_132.unity_LightData.y;
  u_xlat78 = min(x_3683, x_3685);
  let x_3688 : f32 = u_xlat78;
  u_xlatu78 = bitcast<u32>(i32(x_3688));
  let x_3691 : f32 = u_xlat80;
  let x_3694 : f32 = x_249.x_AdditionalShadowFadeParams.x;
  let x_3697 : f32 = x_249.x_AdditionalShadowFadeParams.y;
  u_xlat54 = ((x_3691 * x_3694) + x_3697);
  let x_3699 : f32 = u_xlat54;
  u_xlat54 = clamp(x_3699, 0.0f, 1.0f);
  let x_3702 : f32 = x_3333.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3704 : f32 = x_3333.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3706 : f32 = x_3333.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3708 : f32 = x_3333.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3709 : vec4<f32> = vec4<f32>(x_3702, x_3704, x_3706, x_3708);
  let x_3715 : vec4<bool> = (vec4<f32>(x_3709.x, x_3709.y, x_3709.z, x_3709.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
  u_xlatb58 = vec2<bool>(x_3715.x, x_3715.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_3726 : u32 = u_xlatu_loop_1;
    let x_3727 : u32 = u_xlatu78;
    if ((x_3726 < x_3727)) {
    } else {
      break;
    }
    let x_3730 : u32 = u_xlatu_loop_1;
    u_xlatu81 = (x_3730 >> 2u);
    let x_3733 : u32 = u_xlatu_loop_1;
    u_xlati83 = bitcast<i32>((x_3733 & 3u));
    let x_3736 : u32 = u_xlatu81;
    let x_3739 : vec4<f32> = x_132.unity_LightIndices[bitcast<i32>(x_3736)];
    let x_3749 : i32 = u_xlati83;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_3754 : vec4<u32> = indexable[x_3749];
    u_xlat81 = dot(x_3739, bitcast<vec4<f32>>(x_3754));
    let x_3758 : f32 = u_xlat81;
    u_xlati81 = i32(x_3758);
    let x_3760 : vec3<f32> = vs_INTERP8;
    let x_3771 : i32 = u_xlati81;
    let x_3773 : vec4<f32> = x_3770.x_AdditionalLightsPosition[x_3771];
    let x_3776 : i32 = u_xlati81;
    let x_3778 : vec4<f32> = x_3770.x_AdditionalLightsPosition[x_3776];
    u_xlat35 = ((-(x_3760) * vec3<f32>(x_3773.w, x_3773.w, x_3773.w)) + vec3<f32>(x_3778.x, x_3778.y, x_3778.z));
    let x_3782 : vec3<f32> = u_xlat35;
    let x_3783 : vec3<f32> = u_xlat35;
    u_xlat83 = dot(x_3782, x_3783);
    let x_3785 : f32 = u_xlat83;
    u_xlat83 = max(x_3785, 0.00006103515625f);
    let x_3789 : f32 = u_xlat83;
    u_xlat85 = inverseSqrt(x_3789);
    let x_3791 : f32 = u_xlat85;
    let x_3793 : vec3<f32> = u_xlat35;
    let x_3794 : vec3<f32> = (vec3<f32>(x_3791, x_3791, x_3791) * x_3793);
    let x_3795 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3794.x, x_3794.y, x_3794.z, x_3795.w);
    let x_3797 : f32 = u_xlat83;
    u_xlat86 = (1.0f / x_3797);
    let x_3799 : f32 = u_xlat83;
    let x_3800 : i32 = u_xlati81;
    let x_3802 : f32 = x_3770.x_AdditionalLightsAttenuation[x_3800].x;
    u_xlat83 = (x_3799 * x_3802);
    let x_3804 : f32 = u_xlat83;
    let x_3806 : f32 = u_xlat83;
    u_xlat83 = ((-(x_3804) * x_3806) + 1.0f);
    let x_3809 : f32 = u_xlat83;
    u_xlat83 = max(x_3809, 0.0f);
    let x_3811 : f32 = u_xlat83;
    let x_3812 : f32 = u_xlat83;
    u_xlat83 = (x_3811 * x_3812);
    let x_3814 : f32 = u_xlat83;
    let x_3815 : f32 = u_xlat86;
    u_xlat83 = (x_3814 * x_3815);
    let x_3817 : i32 = u_xlati81;
    let x_3819 : vec4<f32> = x_3770.x_AdditionalLightsSpotDir[x_3817];
    let x_3821 : vec4<f32> = u_xlat10;
    u_xlat86 = dot(vec3<f32>(x_3819.x, x_3819.y, x_3819.z), vec3<f32>(x_3821.x, x_3821.y, x_3821.z));
    let x_3824 : f32 = u_xlat86;
    let x_3825 : i32 = u_xlati81;
    let x_3827 : f32 = x_3770.x_AdditionalLightsAttenuation[x_3825].z;
    let x_3829 : i32 = u_xlati81;
    let x_3831 : f32 = x_3770.x_AdditionalLightsAttenuation[x_3829].w;
    u_xlat86 = ((x_3824 * x_3827) + x_3831);
    let x_3833 : f32 = u_xlat86;
    u_xlat86 = clamp(x_3833, 0.0f, 1.0f);
    let x_3835 : f32 = u_xlat86;
    let x_3836 : f32 = u_xlat86;
    u_xlat86 = (x_3835 * x_3836);
    let x_3838 : f32 = u_xlat83;
    let x_3839 : f32 = u_xlat86;
    u_xlat83 = (x_3838 * x_3839);
    let x_3843 : i32 = u_xlati81;
    let x_3845 : f32 = x_249.x_AdditionalShadowParams[x_3843].w;
    u_xlati86 = i32(x_3845);
    let x_3848 : i32 = u_xlati86;
    u_xlatb88 = (x_3848 >= 0i);
    let x_3850 : bool = u_xlatb88;
    if (x_3850) {
      let x_3854 : i32 = u_xlati81;
      let x_3856 : f32 = x_249.x_AdditionalShadowParams[x_3854].z;
      u_xlatb88 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_3856, x_3856, x_3856, x_3856))));
      let x_3860 : bool = u_xlatb88;
      if (x_3860) {
        let x_3865 : vec4<f32> = u_xlat10;
        let x_3868 : vec4<f32> = u_xlat10;
        let x_3871 : vec4<bool> = (abs(vec4<f32>(x_3865.z, x_3865.z, x_3865.y, x_3865.z)) >= abs(vec4<f32>(x_3868.x, x_3868.y, x_3868.x, x_3868.x)));
        let x_3873 : vec3<bool> = vec3<bool>(x_3871.x, x_3871.y, x_3871.z);
        let x_3874 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3873.x, x_3873.y, x_3873.z, x_3874.w);
        let x_3877 : bool = u_xlatb11.y;
        let x_3879 : bool = u_xlatb11.x;
        u_xlatb88 = (x_3877 & x_3879);
        let x_3881 : vec4<f32> = u_xlat10;
        let x_3884 : vec4<bool> = (-(vec4<f32>(x_3881.z, x_3881.y, x_3881.z, x_3881.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_3885 : vec3<bool> = vec3<bool>(x_3884.x, x_3884.y, x_3884.w);
        let x_3886 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3885.x, x_3885.y, x_3886.z, x_3885.z);
        let x_3889 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_3889);
        let x_3894 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_3894);
        let x_3900 : bool = u_xlatb11.w;
        u_xlat89 = select(0.0f, 1.0f, x_3900);
        let x_3904 : bool = u_xlatb11.z;
        if (x_3904) {
          let x_3909 : f32 = u_xlat11.y;
          x_3905 = x_3909;
        } else {
          let x_3911 : f32 = u_xlat89;
          x_3905 = x_3911;
        }
        let x_3912 : f32 = x_3905;
        u_xlat37.x = x_3912;
        let x_3915 : bool = u_xlatb88;
        if (x_3915) {
          let x_3920 : f32 = u_xlat11.x;
          x_3916 = x_3920;
        } else {
          let x_3923 : f32 = u_xlat37.x;
          x_3916 = x_3923;
        }
        let x_3924 : f32 = x_3916;
        u_xlat88 = x_3924;
        let x_3925 : i32 = u_xlati81;
        let x_3927 : f32 = x_249.x_AdditionalShadowParams[x_3925].w;
        u_xlat11.x = trunc(x_3927);
        let x_3930 : f32 = u_xlat88;
        let x_3932 : f32 = u_xlat11.x;
        u_xlat88 = (x_3930 + x_3932);
        let x_3934 : f32 = u_xlat88;
        u_xlati86 = i32(x_3934);
      }
      let x_3936 : i32 = u_xlati86;
      u_xlati86 = (x_3936 << bitcast<u32>(2i));
      let x_3938 : vec3<f32> = vs_INTERP8;
      let x_3941 : i32 = u_xlati86;
      let x_3944 : i32 = u_xlati86;
      let x_3948 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[((x_3941 + 1i) / 4i)][((x_3944 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_3938.y, x_3938.y, x_3938.y, x_3938.y) * x_3948);
      let x_3950 : i32 = u_xlati86;
      let x_3952 : i32 = u_xlati86;
      let x_3955 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[(x_3950 / 4i)][(x_3952 % 4i)];
      let x_3956 : vec3<f32> = vs_INTERP8;
      let x_3959 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3955 * vec4<f32>(x_3956.x, x_3956.x, x_3956.x, x_3956.x)) + x_3959);
      let x_3961 : i32 = u_xlati86;
      let x_3964 : i32 = u_xlati86;
      let x_3968 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[((x_3961 + 2i) / 4i)][((x_3964 + 2i) % 4i)];
      let x_3969 : vec3<f32> = vs_INTERP8;
      let x_3972 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3968 * vec4<f32>(x_3969.z, x_3969.z, x_3969.z, x_3969.z)) + x_3972);
      let x_3974 : vec4<f32> = u_xlat11;
      let x_3975 : i32 = u_xlati86;
      let x_3978 : i32 = u_xlati86;
      let x_3982 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[((x_3975 + 3i) / 4i)][((x_3978 + 3i) % 4i)];
      u_xlat11 = (x_3974 + x_3982);
      let x_3984 : vec4<f32> = u_xlat11;
      let x_3986 : vec4<f32> = u_xlat11;
      let x_3988 : vec3<f32> = (vec3<f32>(x_3984.x, x_3984.y, x_3984.z) / vec3<f32>(x_3986.w, x_3986.w, x_3986.w));
      let x_3989 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3988.x, x_3988.y, x_3988.z, x_3989.w);
      let x_3992 : i32 = u_xlati81;
      let x_3994 : f32 = x_249.x_AdditionalShadowParams[x_3992].y;
      u_xlatb86 = (0.0f < x_3994);
      let x_3996 : bool = u_xlatb86;
      if (x_3996) {
        let x_3999 : i32 = u_xlati81;
        let x_4001 : f32 = x_249.x_AdditionalShadowParams[x_3999].y;
        u_xlatb86 = (1.0f == x_4001);
        let x_4003 : bool = u_xlatb86;
        if (x_4003) {
          let x_4006 : vec4<f32> = u_xlat11;
          let x_4010 : vec4<f32> = x_249.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_4006.x, x_4006.y, x_4006.x, x_4006.y) + x_4010);
          let x_4013 : vec4<f32> = u_xlat12;
          let x_4014 : vec2<f32> = vec2<f32>(x_4013.x, x_4013.y);
          let x_4016 : f32 = u_xlat11.z;
          txVec60 = vec3<f32>(x_4014.x, x_4014.y, x_4016);
          let x_4024 : vec3<f32> = txVec60;
          let x_4026 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4024.xy, x_4024.z);
          u_xlat13.x = x_4026;
          let x_4029 : vec4<f32> = u_xlat12;
          let x_4030 : vec2<f32> = vec2<f32>(x_4029.z, x_4029.w);
          let x_4032 : f32 = u_xlat11.z;
          txVec61 = vec3<f32>(x_4030.x, x_4030.y, x_4032);
          let x_4039 : vec3<f32> = txVec61;
          let x_4041 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4039.xy, x_4039.z);
          u_xlat13.y = x_4041;
          let x_4043 : vec4<f32> = u_xlat11;
          let x_4046 : vec4<f32> = x_249.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_4043.x, x_4043.y, x_4043.x, x_4043.y) + x_4046);
          let x_4049 : vec4<f32> = u_xlat12;
          let x_4050 : vec2<f32> = vec2<f32>(x_4049.x, x_4049.y);
          let x_4052 : f32 = u_xlat11.z;
          txVec62 = vec3<f32>(x_4050.x, x_4050.y, x_4052);
          let x_4059 : vec3<f32> = txVec62;
          let x_4061 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4059.xy, x_4059.z);
          u_xlat13.z = x_4061;
          let x_4064 : vec4<f32> = u_xlat12;
          let x_4065 : vec2<f32> = vec2<f32>(x_4064.z, x_4064.w);
          let x_4067 : f32 = u_xlat11.z;
          txVec63 = vec3<f32>(x_4065.x, x_4065.y, x_4067);
          let x_4074 : vec3<f32> = txVec63;
          let x_4076 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4074.xy, x_4074.z);
          u_xlat13.w = x_4076;
          let x_4078 : vec4<f32> = u_xlat13;
          u_xlat86 = dot(x_4078, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_4081 : i32 = u_xlati81;
          let x_4083 : f32 = x_249.x_AdditionalShadowParams[x_4081].y;
          u_xlatb88 = (2.0f == x_4083);
          let x_4085 : bool = u_xlatb88;
          if (x_4085) {
            let x_4088 : vec4<f32> = u_xlat11;
            let x_4092 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4095 : vec2<f32> = ((vec2<f32>(x_4088.x, x_4088.y) * vec2<f32>(x_4092.z, x_4092.w)) + vec2<f32>(0.5f, 0.5f));
            let x_4096 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4095.x, x_4095.y, x_4096.z, x_4096.w);
            let x_4098 : vec4<f32> = u_xlat12;
            let x_4100 : vec2<f32> = floor(vec2<f32>(x_4098.x, x_4098.y));
            let x_4101 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4100.x, x_4100.y, x_4101.z, x_4101.w);
            let x_4104 : vec4<f32> = u_xlat11;
            let x_4107 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4110 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_4104.x, x_4104.y) * vec2<f32>(x_4107.z, x_4107.w)) + -(vec2<f32>(x_4110.x, x_4110.y)));
            let x_4114 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_4114.x, x_4114.x, x_4114.y, x_4114.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4117 : vec4<f32> = u_xlat13;
            let x_4119 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_4117.x, x_4117.x, x_4117.z, x_4117.z) * vec4<f32>(x_4119.x, x_4119.x, x_4119.z, x_4119.z));
            let x_4122 : vec4<f32> = u_xlat14;
            let x_4124 : vec2<f32> = (vec2<f32>(x_4122.y, x_4122.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_4125 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4124.x, x_4125.y, x_4124.y, x_4125.w);
            let x_4127 : vec4<f32> = u_xlat14;
            let x_4130 : vec2<f32> = u_xlat64;
            let x_4132 : vec2<f32> = ((vec2<f32>(x_4127.x, x_4127.z) * vec2<f32>(0.5f, 0.5f)) + -(x_4130));
            let x_4133 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4132.x, x_4132.y, x_4133.z, x_4133.w);
            let x_4136 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_4136) + vec2<f32>(1.0f, 1.0f));
            let x_4139 : vec2<f32> = u_xlat64;
            let x_4140 : vec2<f32> = min(x_4139, vec2<f32>(0.0f, 0.0f));
            let x_4141 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4140.x, x_4140.y, x_4141.z, x_4141.w);
            let x_4143 : vec4<f32> = u_xlat15;
            let x_4146 : vec4<f32> = u_xlat15;
            let x_4149 : vec2<f32> = u_xlat66;
            let x_4150 : vec2<f32> = ((-(vec2<f32>(x_4143.x, x_4143.y)) * vec2<f32>(x_4146.x, x_4146.y)) + x_4149);
            let x_4151 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4150.x, x_4150.y, x_4151.z, x_4151.w);
            let x_4153 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_4153, vec2<f32>(0.0f, 0.0f));
            let x_4155 : vec2<f32> = u_xlat64;
            let x_4157 : vec2<f32> = u_xlat64;
            let x_4159 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_4155) * x_4157) + vec2<f32>(x_4159.y, x_4159.w));
            let x_4162 : vec4<f32> = u_xlat15;
            let x_4164 : vec2<f32> = (vec2<f32>(x_4162.x, x_4162.y) + vec2<f32>(1.0f, 1.0f));
            let x_4165 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4164.x, x_4164.y, x_4165.z, x_4165.w);
            let x_4167 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_4167 + vec2<f32>(1.0f, 1.0f));
            let x_4169 : vec4<f32> = u_xlat14;
            let x_4171 : vec2<f32> = (vec2<f32>(x_4169.x, x_4169.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4172 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4171.x, x_4171.y, x_4172.z, x_4172.w);
            let x_4174 : vec2<f32> = u_xlat66;
            let x_4175 : vec2<f32> = (x_4174 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4176 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4175.x, x_4175.y, x_4176.z, x_4176.w);
            let x_4178 : vec4<f32> = u_xlat15;
            let x_4180 : vec2<f32> = (vec2<f32>(x_4178.x, x_4178.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4181 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4180.x, x_4180.y, x_4181.z, x_4181.w);
            let x_4183 : vec2<f32> = u_xlat64;
            let x_4184 : vec2<f32> = (x_4183 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4185 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4184.x, x_4184.y, x_4185.z, x_4185.w);
            let x_4187 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_4187.y, x_4187.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4191 : f32 = u_xlat15.x;
            u_xlat16.z = x_4191;
            let x_4194 : f32 = u_xlat64.x;
            u_xlat16.w = x_4194;
            let x_4197 : f32 = u_xlat17.x;
            u_xlat14.z = x_4197;
            let x_4200 : f32 = u_xlat13.x;
            u_xlat14.w = x_4200;
            let x_4202 : vec4<f32> = u_xlat14;
            let x_4204 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_4202.z, x_4202.w, x_4202.x, x_4202.z) + vec4<f32>(x_4204.z, x_4204.w, x_4204.x, x_4204.z));
            let x_4208 : f32 = u_xlat16.y;
            u_xlat15.z = x_4208;
            let x_4211 : f32 = u_xlat64.y;
            u_xlat15.w = x_4211;
            let x_4214 : f32 = u_xlat14.y;
            u_xlat17.z = x_4214;
            let x_4217 : f32 = u_xlat13.z;
            u_xlat17.w = x_4217;
            let x_4219 : vec4<f32> = u_xlat15;
            let x_4221 : vec4<f32> = u_xlat17;
            let x_4223 : vec3<f32> = (vec3<f32>(x_4219.z, x_4219.y, x_4219.w) + vec3<f32>(x_4221.z, x_4221.y, x_4221.w));
            let x_4224 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4223.x, x_4223.y, x_4223.z, x_4224.w);
            let x_4226 : vec4<f32> = u_xlat14;
            let x_4228 : vec4<f32> = u_xlat18;
            let x_4230 : vec3<f32> = (vec3<f32>(x_4226.x, x_4226.z, x_4226.w) / vec3<f32>(x_4228.z, x_4228.w, x_4228.y));
            let x_4231 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4230.x, x_4230.y, x_4230.z, x_4231.w);
            let x_4233 : vec4<f32> = u_xlat14;
            let x_4235 : vec3<f32> = (vec3<f32>(x_4233.x, x_4233.y, x_4233.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4236 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4235.x, x_4235.y, x_4235.z, x_4236.w);
            let x_4238 : vec4<f32> = u_xlat17;
            let x_4240 : vec4<f32> = u_xlat13;
            let x_4242 : vec3<f32> = (vec3<f32>(x_4238.z, x_4238.y, x_4238.w) / vec3<f32>(x_4240.x, x_4240.y, x_4240.z));
            let x_4243 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4242.x, x_4242.y, x_4242.z, x_4243.w);
            let x_4245 : vec4<f32> = u_xlat15;
            let x_4247 : vec3<f32> = (vec3<f32>(x_4245.x, x_4245.y, x_4245.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4248 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4247.x, x_4247.y, x_4247.z, x_4248.w);
            let x_4250 : vec4<f32> = u_xlat14;
            let x_4253 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4255 : vec3<f32> = (vec3<f32>(x_4250.y, x_4250.x, x_4250.z) * vec3<f32>(x_4253.x, x_4253.x, x_4253.x));
            let x_4256 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4255.x, x_4255.y, x_4255.z, x_4256.w);
            let x_4258 : vec4<f32> = u_xlat15;
            let x_4261 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4263 : vec3<f32> = (vec3<f32>(x_4258.x, x_4258.y, x_4258.z) * vec3<f32>(x_4261.y, x_4261.y, x_4261.y));
            let x_4264 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4263.x, x_4263.y, x_4263.z, x_4264.w);
            let x_4267 : f32 = u_xlat15.x;
            u_xlat14.w = x_4267;
            let x_4269 : vec4<f32> = u_xlat12;
            let x_4272 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4275 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_4269.x, x_4269.y, x_4269.x, x_4269.y) * vec4<f32>(x_4272.x, x_4272.y, x_4272.x, x_4272.y)) + vec4<f32>(x_4275.y, x_4275.w, x_4275.x, x_4275.w));
            let x_4278 : vec4<f32> = u_xlat12;
            let x_4281 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4284 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_4278.x, x_4278.y) * vec2<f32>(x_4281.x, x_4281.y)) + vec2<f32>(x_4284.z, x_4284.w));
            let x_4288 : f32 = u_xlat14.y;
            u_xlat15.w = x_4288;
            let x_4290 : vec4<f32> = u_xlat15;
            let x_4291 : vec2<f32> = vec2<f32>(x_4290.y, x_4290.z);
            let x_4292 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4292.x, x_4291.x, x_4292.z, x_4291.y);
            let x_4294 : vec4<f32> = u_xlat12;
            let x_4297 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4300 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_4294.x, x_4294.y, x_4294.x, x_4294.y) * vec4<f32>(x_4297.x, x_4297.y, x_4297.x, x_4297.y)) + vec4<f32>(x_4300.x, x_4300.y, x_4300.z, x_4300.y));
            let x_4303 : vec4<f32> = u_xlat12;
            let x_4306 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4309 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_4303.x, x_4303.y, x_4303.x, x_4303.y) * vec4<f32>(x_4306.x, x_4306.y, x_4306.x, x_4306.y)) + vec4<f32>(x_4309.w, x_4309.y, x_4309.w, x_4309.z));
            let x_4312 : vec4<f32> = u_xlat12;
            let x_4315 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4318 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_4312.x, x_4312.y, x_4312.x, x_4312.y) * vec4<f32>(x_4315.x, x_4315.y, x_4315.x, x_4315.y)) + vec4<f32>(x_4318.x, x_4318.w, x_4318.z, x_4318.w));
            let x_4321 : vec4<f32> = u_xlat13;
            let x_4323 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_4321.x, x_4321.x, x_4321.x, x_4321.y) * vec4<f32>(x_4323.z, x_4323.w, x_4323.y, x_4323.z));
            let x_4326 : vec4<f32> = u_xlat13;
            let x_4328 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_4326.y, x_4326.y, x_4326.z, x_4326.z) * x_4328);
            let x_4331 : f32 = u_xlat13.z;
            let x_4333 : f32 = u_xlat18.y;
            u_xlat88 = (x_4331 * x_4333);
            let x_4336 : vec4<f32> = u_xlat16;
            let x_4337 : vec2<f32> = vec2<f32>(x_4336.x, x_4336.y);
            let x_4339 : f32 = u_xlat11.z;
            txVec64 = vec3<f32>(x_4337.x, x_4337.y, x_4339);
            let x_4346 : vec3<f32> = txVec64;
            let x_4348 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4346.xy, x_4346.z);
            u_xlat89 = x_4348;
            let x_4350 : vec4<f32> = u_xlat16;
            let x_4351 : vec2<f32> = vec2<f32>(x_4350.z, x_4350.w);
            let x_4353 : f32 = u_xlat11.z;
            txVec65 = vec3<f32>(x_4351.x, x_4351.y, x_4353);
            let x_4360 : vec3<f32> = txVec65;
            let x_4362 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4360.xy, x_4360.z);
            u_xlat12.x = x_4362;
            let x_4365 : f32 = u_xlat12.x;
            let x_4367 : f32 = u_xlat19.y;
            u_xlat12.x = (x_4365 * x_4367);
            let x_4371 : f32 = u_xlat19.x;
            let x_4372 : f32 = u_xlat89;
            let x_4375 : f32 = u_xlat12.x;
            u_xlat89 = ((x_4371 * x_4372) + x_4375);
            let x_4378 : vec2<f32> = u_xlat64;
            let x_4380 : f32 = u_xlat11.z;
            txVec66 = vec3<f32>(x_4378.x, x_4378.y, x_4380);
            let x_4387 : vec3<f32> = txVec66;
            let x_4389 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4387.xy, x_4387.z);
            u_xlat12.x = x_4389;
            let x_4392 : f32 = u_xlat19.z;
            let x_4394 : f32 = u_xlat12.x;
            let x_4396 : f32 = u_xlat89;
            u_xlat89 = ((x_4392 * x_4394) + x_4396);
            let x_4399 : vec4<f32> = u_xlat15;
            let x_4400 : vec2<f32> = vec2<f32>(x_4399.x, x_4399.y);
            let x_4402 : f32 = u_xlat11.z;
            txVec67 = vec3<f32>(x_4400.x, x_4400.y, x_4402);
            let x_4409 : vec3<f32> = txVec67;
            let x_4411 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4409.xy, x_4409.z);
            u_xlat12.x = x_4411;
            let x_4414 : f32 = u_xlat19.w;
            let x_4416 : f32 = u_xlat12.x;
            let x_4418 : f32 = u_xlat89;
            u_xlat89 = ((x_4414 * x_4416) + x_4418);
            let x_4421 : vec4<f32> = u_xlat17;
            let x_4422 : vec2<f32> = vec2<f32>(x_4421.x, x_4421.y);
            let x_4424 : f32 = u_xlat11.z;
            txVec68 = vec3<f32>(x_4422.x, x_4422.y, x_4424);
            let x_4431 : vec3<f32> = txVec68;
            let x_4433 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4431.xy, x_4431.z);
            u_xlat12.x = x_4433;
            let x_4436 : f32 = u_xlat20.x;
            let x_4438 : f32 = u_xlat12.x;
            let x_4440 : f32 = u_xlat89;
            u_xlat89 = ((x_4436 * x_4438) + x_4440);
            let x_4443 : vec4<f32> = u_xlat17;
            let x_4444 : vec2<f32> = vec2<f32>(x_4443.z, x_4443.w);
            let x_4446 : f32 = u_xlat11.z;
            txVec69 = vec3<f32>(x_4444.x, x_4444.y, x_4446);
            let x_4453 : vec3<f32> = txVec69;
            let x_4455 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4453.xy, x_4453.z);
            u_xlat12.x = x_4455;
            let x_4458 : f32 = u_xlat20.y;
            let x_4460 : f32 = u_xlat12.x;
            let x_4462 : f32 = u_xlat89;
            u_xlat89 = ((x_4458 * x_4460) + x_4462);
            let x_4465 : vec4<f32> = u_xlat15;
            let x_4466 : vec2<f32> = vec2<f32>(x_4465.z, x_4465.w);
            let x_4468 : f32 = u_xlat11.z;
            txVec70 = vec3<f32>(x_4466.x, x_4466.y, x_4468);
            let x_4475 : vec3<f32> = txVec70;
            let x_4477 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4475.xy, x_4475.z);
            u_xlat12.x = x_4477;
            let x_4480 : f32 = u_xlat20.z;
            let x_4482 : f32 = u_xlat12.x;
            let x_4484 : f32 = u_xlat89;
            u_xlat89 = ((x_4480 * x_4482) + x_4484);
            let x_4487 : vec4<f32> = u_xlat14;
            let x_4488 : vec2<f32> = vec2<f32>(x_4487.x, x_4487.y);
            let x_4490 : f32 = u_xlat11.z;
            txVec71 = vec3<f32>(x_4488.x, x_4488.y, x_4490);
            let x_4497 : vec3<f32> = txVec71;
            let x_4499 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4497.xy, x_4497.z);
            u_xlat12.x = x_4499;
            let x_4502 : f32 = u_xlat20.w;
            let x_4504 : f32 = u_xlat12.x;
            let x_4506 : f32 = u_xlat89;
            u_xlat89 = ((x_4502 * x_4504) + x_4506);
            let x_4509 : vec4<f32> = u_xlat14;
            let x_4510 : vec2<f32> = vec2<f32>(x_4509.z, x_4509.w);
            let x_4512 : f32 = u_xlat11.z;
            txVec72 = vec3<f32>(x_4510.x, x_4510.y, x_4512);
            let x_4519 : vec3<f32> = txVec72;
            let x_4521 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4519.xy, x_4519.z);
            u_xlat12.x = x_4521;
            let x_4523 : f32 = u_xlat88;
            let x_4525 : f32 = u_xlat12.x;
            let x_4527 : f32 = u_xlat89;
            u_xlat86 = ((x_4523 * x_4525) + x_4527);
          } else {
            let x_4530 : vec4<f32> = u_xlat11;
            let x_4533 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4536 : vec2<f32> = ((vec2<f32>(x_4530.x, x_4530.y) * vec2<f32>(x_4533.z, x_4533.w)) + vec2<f32>(0.5f, 0.5f));
            let x_4537 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4536.x, x_4536.y, x_4537.z, x_4537.w);
            let x_4539 : vec4<f32> = u_xlat12;
            let x_4541 : vec2<f32> = floor(vec2<f32>(x_4539.x, x_4539.y));
            let x_4542 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4541.x, x_4541.y, x_4542.z, x_4542.w);
            let x_4544 : vec4<f32> = u_xlat11;
            let x_4547 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4550 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_4544.x, x_4544.y) * vec2<f32>(x_4547.z, x_4547.w)) + -(vec2<f32>(x_4550.x, x_4550.y)));
            let x_4554 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_4554.x, x_4554.x, x_4554.y, x_4554.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4557 : vec4<f32> = u_xlat13;
            let x_4559 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_4557.x, x_4557.x, x_4557.z, x_4557.z) * vec4<f32>(x_4559.x, x_4559.x, x_4559.z, x_4559.z));
            let x_4562 : vec4<f32> = u_xlat14;
            let x_4564 : vec2<f32> = (vec2<f32>(x_4562.y, x_4562.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_4565 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4565.x, x_4564.x, x_4565.z, x_4564.y);
            let x_4567 : vec4<f32> = u_xlat14;
            let x_4570 : vec2<f32> = u_xlat64;
            let x_4572 : vec2<f32> = ((vec2<f32>(x_4567.x, x_4567.z) * vec2<f32>(0.5f, 0.5f)) + -(x_4570));
            let x_4573 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4572.x, x_4573.y, x_4572.y, x_4573.w);
            let x_4575 : vec2<f32> = u_xlat64;
            let x_4577 : vec2<f32> = (-(x_4575) + vec2<f32>(1.0f, 1.0f));
            let x_4578 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4577.x, x_4577.y, x_4578.z, x_4578.w);
            let x_4580 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_4580, vec2<f32>(0.0f, 0.0f));
            let x_4582 : vec2<f32> = u_xlat66;
            let x_4584 : vec2<f32> = u_xlat66;
            let x_4586 : vec4<f32> = u_xlat14;
            let x_4588 : vec2<f32> = ((-(x_4582) * x_4584) + vec2<f32>(x_4586.x, x_4586.y));
            let x_4589 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4588.x, x_4588.y, x_4589.z, x_4589.w);
            let x_4591 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_4591, vec2<f32>(0.0f, 0.0f));
            let x_4594 : vec2<f32> = u_xlat66;
            let x_4596 : vec2<f32> = u_xlat66;
            let x_4598 : vec4<f32> = u_xlat13;
            let x_4600 : vec2<f32> = ((-(x_4594) * x_4596) + vec2<f32>(x_4598.y, x_4598.w));
            let x_4601 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_4600.x, x_4601.y, x_4600.y);
            let x_4603 : vec4<f32> = u_xlat14;
            let x_4605 : vec2<f32> = (vec2<f32>(x_4603.x, x_4603.y) + vec2<f32>(2.0f, 2.0f));
            let x_4606 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4605.x, x_4605.y, x_4606.z, x_4606.w);
            let x_4608 : vec3<f32> = u_xlat39;
            let x_4610 : vec2<f32> = (vec2<f32>(x_4608.x, x_4608.z) + vec2<f32>(2.0f, 2.0f));
            let x_4611 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4611.x, x_4610.x, x_4611.z, x_4610.y);
            let x_4614 : f32 = u_xlat13.y;
            u_xlat16.z = (x_4614 * 0.08163200318813323975f);
            let x_4617 : vec4<f32> = u_xlat13;
            let x_4619 : vec3<f32> = (vec3<f32>(x_4617.z, x_4617.x, x_4617.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_4620 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4619.x, x_4619.y, x_4619.z, x_4620.w);
            let x_4622 : vec4<f32> = u_xlat14;
            let x_4624 : vec2<f32> = (vec2<f32>(x_4622.x, x_4622.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_4625 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4624.x, x_4624.y, x_4625.z, x_4625.w);
            let x_4628 : f32 = u_xlat17.y;
            u_xlat16.x = x_4628;
            let x_4630 : vec2<f32> = u_xlat64;
            let x_4633 : vec2<f32> = ((vec2<f32>(x_4630.x, x_4630.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4634 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4634.x, x_4633.x, x_4634.z, x_4633.y);
            let x_4636 : vec2<f32> = u_xlat64;
            let x_4639 : vec2<f32> = ((vec2<f32>(x_4636.x, x_4636.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4640 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4639.x, x_4640.y, x_4639.y, x_4640.w);
            let x_4643 : f32 = u_xlat13.x;
            u_xlat14.y = x_4643;
            let x_4646 : f32 = u_xlat15.y;
            u_xlat14.w = x_4646;
            let x_4648 : vec4<f32> = u_xlat14;
            let x_4649 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_4648 + x_4649);
            let x_4651 : vec2<f32> = u_xlat64;
            let x_4654 : vec2<f32> = ((vec2<f32>(x_4651.y, x_4651.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4655 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4655.x, x_4654.x, x_4655.z, x_4654.y);
            let x_4657 : vec2<f32> = u_xlat64;
            let x_4660 : vec2<f32> = ((vec2<f32>(x_4657.y, x_4657.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4661 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4660.x, x_4661.y, x_4660.y, x_4661.w);
            let x_4664 : f32 = u_xlat13.y;
            u_xlat15.y = x_4664;
            let x_4666 : vec4<f32> = u_xlat15;
            let x_4667 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_4666 + x_4667);
            let x_4669 : vec4<f32> = u_xlat14;
            let x_4670 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_4669 / x_4670);
            let x_4672 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_4672 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4674 : vec4<f32> = u_xlat15;
            let x_4675 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_4674 / x_4675);
            let x_4677 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_4677 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4679 : vec4<f32> = u_xlat14;
            let x_4682 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_4679.w, x_4679.x, x_4679.y, x_4679.z) * vec4<f32>(x_4682.x, x_4682.x, x_4682.x, x_4682.x));
            let x_4685 : vec4<f32> = u_xlat15;
            let x_4688 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_4685.x, x_4685.w, x_4685.y, x_4685.z) * vec4<f32>(x_4688.y, x_4688.y, x_4688.y, x_4688.y));
            let x_4691 : vec4<f32> = u_xlat14;
            let x_4692 : vec3<f32> = vec3<f32>(x_4691.y, x_4691.z, x_4691.w);
            let x_4693 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4692.x, x_4693.y, x_4692.y, x_4692.z);
            let x_4696 : f32 = u_xlat15.x;
            u_xlat17.y = x_4696;
            let x_4698 : vec4<f32> = u_xlat12;
            let x_4701 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4704 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_4698.x, x_4698.y, x_4698.x, x_4698.y) * vec4<f32>(x_4701.x, x_4701.y, x_4701.x, x_4701.y)) + vec4<f32>(x_4704.x, x_4704.y, x_4704.z, x_4704.y));
            let x_4707 : vec4<f32> = u_xlat12;
            let x_4710 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4713 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_4707.x, x_4707.y) * vec2<f32>(x_4710.x, x_4710.y)) + vec2<f32>(x_4713.w, x_4713.y));
            let x_4717 : f32 = u_xlat17.y;
            u_xlat14.y = x_4717;
            let x_4720 : f32 = u_xlat15.z;
            u_xlat17.y = x_4720;
            let x_4722 : vec4<f32> = u_xlat12;
            let x_4725 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4728 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_4722.x, x_4722.y, x_4722.x, x_4722.y) * vec4<f32>(x_4725.x, x_4725.y, x_4725.x, x_4725.y)) + vec4<f32>(x_4728.x, x_4728.y, x_4728.z, x_4728.y));
            let x_4731 : vec4<f32> = u_xlat12;
            let x_4734 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4737 : vec4<f32> = u_xlat17;
            let x_4739 : vec2<f32> = ((vec2<f32>(x_4731.x, x_4731.y) * vec2<f32>(x_4734.x, x_4734.y)) + vec2<f32>(x_4737.w, x_4737.y));
            let x_4740 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_4739.x, x_4739.y, x_4740.z, x_4740.w);
            let x_4743 : f32 = u_xlat17.y;
            u_xlat14.z = x_4743;
            let x_4746 : vec4<f32> = u_xlat12;
            let x_4749 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4752 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_4746.x, x_4746.y, x_4746.x, x_4746.y) * vec4<f32>(x_4749.x, x_4749.y, x_4749.x, x_4749.y)) + vec4<f32>(x_4752.x, x_4752.y, x_4752.x, x_4752.z));
            let x_4756 : f32 = u_xlat15.w;
            u_xlat17.y = x_4756;
            let x_4759 : vec4<f32> = u_xlat12;
            let x_4762 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4765 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_4759.x, x_4759.y, x_4759.x, x_4759.y) * vec4<f32>(x_4762.x, x_4762.y, x_4762.x, x_4762.y)) + vec4<f32>(x_4765.x, x_4765.y, x_4765.z, x_4765.y));
            let x_4769 : vec4<f32> = u_xlat12;
            let x_4772 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4775 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_4769.x, x_4769.y) * vec2<f32>(x_4772.x, x_4772.y)) + vec2<f32>(x_4775.w, x_4775.y));
            let x_4779 : f32 = u_xlat17.y;
            u_xlat14.w = x_4779;
            let x_4782 : vec4<f32> = u_xlat12;
            let x_4785 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4788 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_4782.x, x_4782.y) * vec2<f32>(x_4785.x, x_4785.y)) + vec2<f32>(x_4788.x, x_4788.w));
            let x_4791 : vec4<f32> = u_xlat17;
            let x_4792 : vec3<f32> = vec3<f32>(x_4791.x, x_4791.z, x_4791.w);
            let x_4793 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4792.x, x_4793.y, x_4792.y, x_4792.z);
            let x_4795 : vec4<f32> = u_xlat12;
            let x_4798 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4801 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_4795.x, x_4795.y, x_4795.x, x_4795.y) * vec4<f32>(x_4798.x, x_4798.y, x_4798.x, x_4798.y)) + vec4<f32>(x_4801.x, x_4801.y, x_4801.z, x_4801.y));
            let x_4804 : vec4<f32> = u_xlat12;
            let x_4807 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4810 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_4804.x, x_4804.y) * vec2<f32>(x_4807.x, x_4807.y)) + vec2<f32>(x_4810.w, x_4810.y));
            let x_4814 : f32 = u_xlat14.x;
            u_xlat15.x = x_4814;
            let x_4816 : vec4<f32> = u_xlat12;
            let x_4819 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4822 : vec4<f32> = u_xlat15;
            let x_4824 : vec2<f32> = ((vec2<f32>(x_4816.x, x_4816.y) * vec2<f32>(x_4819.x, x_4819.y)) + vec2<f32>(x_4822.x, x_4822.y));
            let x_4825 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4824.x, x_4824.y, x_4825.z, x_4825.w);
            let x_4828 : vec4<f32> = u_xlat13;
            let x_4830 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_4828.x, x_4828.x, x_4828.x, x_4828.x) * x_4830);
            let x_4833 : vec4<f32> = u_xlat13;
            let x_4835 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_4833.y, x_4833.y, x_4833.y, x_4833.y) * x_4835);
            let x_4838 : vec4<f32> = u_xlat13;
            let x_4840 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_4838.z, x_4838.z, x_4838.z, x_4838.z) * x_4840);
            let x_4842 : vec4<f32> = u_xlat13;
            let x_4844 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_4842.w, x_4842.w, x_4842.w, x_4842.w) * x_4844);
            let x_4847 : vec4<f32> = u_xlat18;
            let x_4848 : vec2<f32> = vec2<f32>(x_4847.x, x_4847.y);
            let x_4850 : f32 = u_xlat11.z;
            txVec73 = vec3<f32>(x_4848.x, x_4848.y, x_4850);
            let x_4857 : vec3<f32> = txVec73;
            let x_4859 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4857.xy, x_4857.z);
            u_xlat88 = x_4859;
            let x_4861 : vec4<f32> = u_xlat18;
            let x_4862 : vec2<f32> = vec2<f32>(x_4861.z, x_4861.w);
            let x_4864 : f32 = u_xlat11.z;
            txVec74 = vec3<f32>(x_4862.x, x_4862.y, x_4864);
            let x_4871 : vec3<f32> = txVec74;
            let x_4873 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4871.xy, x_4871.z);
            u_xlat89 = x_4873;
            let x_4874 : f32 = u_xlat89;
            let x_4876 : f32 = u_xlat23.y;
            u_xlat89 = (x_4874 * x_4876);
            let x_4879 : f32 = u_xlat23.x;
            let x_4880 : f32 = u_xlat88;
            let x_4882 : f32 = u_xlat89;
            u_xlat88 = ((x_4879 * x_4880) + x_4882);
            let x_4885 : vec2<f32> = u_xlat64;
            let x_4887 : f32 = u_xlat11.z;
            txVec75 = vec3<f32>(x_4885.x, x_4885.y, x_4887);
            let x_4894 : vec3<f32> = txVec75;
            let x_4896 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4894.xy, x_4894.z);
            u_xlat89 = x_4896;
            let x_4898 : f32 = u_xlat23.z;
            let x_4899 : f32 = u_xlat89;
            let x_4901 : f32 = u_xlat88;
            u_xlat88 = ((x_4898 * x_4899) + x_4901);
            let x_4904 : vec4<f32> = u_xlat21;
            let x_4905 : vec2<f32> = vec2<f32>(x_4904.x, x_4904.y);
            let x_4907 : f32 = u_xlat11.z;
            txVec76 = vec3<f32>(x_4905.x, x_4905.y, x_4907);
            let x_4914 : vec3<f32> = txVec76;
            let x_4916 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4914.xy, x_4914.z);
            u_xlat89 = x_4916;
            let x_4918 : f32 = u_xlat23.w;
            let x_4919 : f32 = u_xlat89;
            let x_4921 : f32 = u_xlat88;
            u_xlat88 = ((x_4918 * x_4919) + x_4921);
            let x_4924 : vec4<f32> = u_xlat19;
            let x_4925 : vec2<f32> = vec2<f32>(x_4924.x, x_4924.y);
            let x_4927 : f32 = u_xlat11.z;
            txVec77 = vec3<f32>(x_4925.x, x_4925.y, x_4927);
            let x_4934 : vec3<f32> = txVec77;
            let x_4936 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4934.xy, x_4934.z);
            u_xlat89 = x_4936;
            let x_4938 : f32 = u_xlat24.x;
            let x_4939 : f32 = u_xlat89;
            let x_4941 : f32 = u_xlat88;
            u_xlat88 = ((x_4938 * x_4939) + x_4941);
            let x_4944 : vec4<f32> = u_xlat19;
            let x_4945 : vec2<f32> = vec2<f32>(x_4944.z, x_4944.w);
            let x_4947 : f32 = u_xlat11.z;
            txVec78 = vec3<f32>(x_4945.x, x_4945.y, x_4947);
            let x_4954 : vec3<f32> = txVec78;
            let x_4956 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4954.xy, x_4954.z);
            u_xlat89 = x_4956;
            let x_4958 : f32 = u_xlat24.y;
            let x_4959 : f32 = u_xlat89;
            let x_4961 : f32 = u_xlat88;
            u_xlat88 = ((x_4958 * x_4959) + x_4961);
            let x_4964 : vec4<f32> = u_xlat20;
            let x_4965 : vec2<f32> = vec2<f32>(x_4964.x, x_4964.y);
            let x_4967 : f32 = u_xlat11.z;
            txVec79 = vec3<f32>(x_4965.x, x_4965.y, x_4967);
            let x_4974 : vec3<f32> = txVec79;
            let x_4976 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4974.xy, x_4974.z);
            u_xlat89 = x_4976;
            let x_4978 : f32 = u_xlat24.z;
            let x_4979 : f32 = u_xlat89;
            let x_4981 : f32 = u_xlat88;
            u_xlat88 = ((x_4978 * x_4979) + x_4981);
            let x_4984 : vec4<f32> = u_xlat21;
            let x_4985 : vec2<f32> = vec2<f32>(x_4984.z, x_4984.w);
            let x_4987 : f32 = u_xlat11.z;
            txVec80 = vec3<f32>(x_4985.x, x_4985.y, x_4987);
            let x_4994 : vec3<f32> = txVec80;
            let x_4996 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4994.xy, x_4994.z);
            u_xlat89 = x_4996;
            let x_4998 : f32 = u_xlat24.w;
            let x_4999 : f32 = u_xlat89;
            let x_5001 : f32 = u_xlat88;
            u_xlat88 = ((x_4998 * x_4999) + x_5001);
            let x_5004 : vec4<f32> = u_xlat22;
            let x_5005 : vec2<f32> = vec2<f32>(x_5004.x, x_5004.y);
            let x_5007 : f32 = u_xlat11.z;
            txVec81 = vec3<f32>(x_5005.x, x_5005.y, x_5007);
            let x_5014 : vec3<f32> = txVec81;
            let x_5016 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5014.xy, x_5014.z);
            u_xlat89 = x_5016;
            let x_5018 : f32 = u_xlat25.x;
            let x_5019 : f32 = u_xlat89;
            let x_5021 : f32 = u_xlat88;
            u_xlat88 = ((x_5018 * x_5019) + x_5021);
            let x_5024 : vec4<f32> = u_xlat22;
            let x_5025 : vec2<f32> = vec2<f32>(x_5024.z, x_5024.w);
            let x_5027 : f32 = u_xlat11.z;
            txVec82 = vec3<f32>(x_5025.x, x_5025.y, x_5027);
            let x_5034 : vec3<f32> = txVec82;
            let x_5036 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5034.xy, x_5034.z);
            u_xlat89 = x_5036;
            let x_5038 : f32 = u_xlat25.y;
            let x_5039 : f32 = u_xlat89;
            let x_5041 : f32 = u_xlat88;
            u_xlat88 = ((x_5038 * x_5039) + x_5041);
            let x_5044 : vec2<f32> = u_xlat40;
            let x_5046 : f32 = u_xlat11.z;
            txVec83 = vec3<f32>(x_5044.x, x_5044.y, x_5046);
            let x_5053 : vec3<f32> = txVec83;
            let x_5055 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5053.xy, x_5053.z);
            u_xlat89 = x_5055;
            let x_5057 : f32 = u_xlat25.z;
            let x_5058 : f32 = u_xlat89;
            let x_5060 : f32 = u_xlat88;
            u_xlat88 = ((x_5057 * x_5058) + x_5060);
            let x_5063 : vec2<f32> = u_xlat72;
            let x_5065 : f32 = u_xlat11.z;
            txVec84 = vec3<f32>(x_5063.x, x_5063.y, x_5065);
            let x_5072 : vec3<f32> = txVec84;
            let x_5074 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5072.xy, x_5072.z);
            u_xlat89 = x_5074;
            let x_5076 : f32 = u_xlat25.w;
            let x_5077 : f32 = u_xlat89;
            let x_5079 : f32 = u_xlat88;
            u_xlat88 = ((x_5076 * x_5077) + x_5079);
            let x_5082 : vec4<f32> = u_xlat17;
            let x_5083 : vec2<f32> = vec2<f32>(x_5082.x, x_5082.y);
            let x_5085 : f32 = u_xlat11.z;
            txVec85 = vec3<f32>(x_5083.x, x_5083.y, x_5085);
            let x_5092 : vec3<f32> = txVec85;
            let x_5094 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5092.xy, x_5092.z);
            u_xlat89 = x_5094;
            let x_5096 : f32 = u_xlat13.x;
            let x_5097 : f32 = u_xlat89;
            let x_5099 : f32 = u_xlat88;
            u_xlat88 = ((x_5096 * x_5097) + x_5099);
            let x_5102 : vec4<f32> = u_xlat17;
            let x_5103 : vec2<f32> = vec2<f32>(x_5102.z, x_5102.w);
            let x_5105 : f32 = u_xlat11.z;
            txVec86 = vec3<f32>(x_5103.x, x_5103.y, x_5105);
            let x_5112 : vec3<f32> = txVec86;
            let x_5114 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5112.xy, x_5112.z);
            u_xlat89 = x_5114;
            let x_5116 : f32 = u_xlat13.y;
            let x_5117 : f32 = u_xlat89;
            let x_5119 : f32 = u_xlat88;
            u_xlat88 = ((x_5116 * x_5117) + x_5119);
            let x_5122 : vec2<f32> = u_xlat67;
            let x_5124 : f32 = u_xlat11.z;
            txVec87 = vec3<f32>(x_5122.x, x_5122.y, x_5124);
            let x_5131 : vec3<f32> = txVec87;
            let x_5133 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5131.xy, x_5131.z);
            u_xlat89 = x_5133;
            let x_5135 : f32 = u_xlat13.z;
            let x_5136 : f32 = u_xlat89;
            let x_5138 : f32 = u_xlat88;
            u_xlat88 = ((x_5135 * x_5136) + x_5138);
            let x_5141 : vec4<f32> = u_xlat12;
            let x_5142 : vec2<f32> = vec2<f32>(x_5141.x, x_5141.y);
            let x_5144 : f32 = u_xlat11.z;
            txVec88 = vec3<f32>(x_5142.x, x_5142.y, x_5144);
            let x_5151 : vec3<f32> = txVec88;
            let x_5153 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5151.xy, x_5151.z);
            u_xlat89 = x_5153;
            let x_5155 : f32 = u_xlat13.w;
            let x_5156 : f32 = u_xlat89;
            let x_5158 : f32 = u_xlat88;
            u_xlat86 = ((x_5155 * x_5156) + x_5158);
          }
        }
      } else {
        let x_5162 : vec4<f32> = u_xlat11;
        let x_5163 : vec2<f32> = vec2<f32>(x_5162.x, x_5162.y);
        let x_5165 : f32 = u_xlat11.z;
        txVec89 = vec3<f32>(x_5163.x, x_5163.y, x_5165);
        let x_5172 : vec3<f32> = txVec89;
        let x_5174 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5172.xy, x_5172.z);
        u_xlat86 = x_5174;
      }
      let x_5175 : i32 = u_xlati81;
      let x_5177 : f32 = x_249.x_AdditionalShadowParams[x_5175].x;
      u_xlat88 = (1.0f + -(x_5177));
      let x_5180 : f32 = u_xlat86;
      let x_5181 : i32 = u_xlati81;
      let x_5183 : f32 = x_249.x_AdditionalShadowParams[x_5181].x;
      let x_5185 : f32 = u_xlat88;
      u_xlat86 = ((x_5180 * x_5183) + x_5185);
      let x_5188 : f32 = u_xlat11.z;
      u_xlatb88 = (0.0f >= x_5188);
      let x_5191 : f32 = u_xlat11.z;
      u_xlatb11.x = (x_5191 >= 1.0f);
      let x_5194 : bool = u_xlatb88;
      let x_5196 : bool = u_xlatb11.x;
      u_xlatb88 = (x_5194 | x_5196);
      let x_5198 : bool = u_xlatb88;
      let x_5199 : f32 = u_xlat86;
      u_xlat86 = select(x_5199, 1.0f, x_5198);
    } else {
      u_xlat86 = 1.0f;
    }
    let x_5202 : f32 = u_xlat86;
    u_xlat88 = (-(x_5202) + 1.0f);
    let x_5205 : f32 = u_xlat54;
    let x_5206 : f32 = u_xlat88;
    let x_5208 : f32 = u_xlat86;
    u_xlat86 = ((x_5205 * x_5206) + x_5208);
    let x_5211 : i32 = u_xlati81;
    u_xlati88 = (1i << bitcast<u32>((x_5211 & 31i)));
    let x_5215 : i32 = u_xlati88;
    let x_5218 : f32 = x_3333.x_AdditionalLightsCookieEnableBits;
    u_xlati88 = bitcast<i32>((bitcast<u32>(x_5215) & bitcast<u32>(x_5218)));
    let x_5222 : i32 = u_xlati88;
    if ((x_5222 != 0i)) {
      let x_5226 : i32 = u_xlati81;
      let x_5228 : f32 = x_3333.x_AdditionalLightsLightTypes[x_5226].el;
      u_xlati88 = i32(x_5228);
      let x_5231 : i32 = u_xlati88;
      u_xlati11 = select(1i, 0i, (x_5231 != 0i));
      let x_5235 : i32 = u_xlati81;
      u_xlati37 = (x_5235 << bitcast<u32>(2i));
      let x_5237 : i32 = u_xlati11;
      if ((x_5237 != 0i)) {
        let x_5241 : vec3<f32> = vs_INTERP8;
        let x_5243 : i32 = u_xlati37;
        let x_5246 : i32 = u_xlati37;
        let x_5250 : vec4<f32> = x_3333.x_AdditionalLightsWorldToLights[((x_5243 + 1i) / 4i)][((x_5246 + 1i) % 4i)];
        let x_5252 : vec3<f32> = (vec3<f32>(x_5241.y, x_5241.y, x_5241.y) * vec3<f32>(x_5250.x, x_5250.y, x_5250.w));
        let x_5253 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5252.x, x_5253.y, x_5252.y, x_5252.z);
        let x_5255 : i32 = u_xlati37;
        let x_5257 : i32 = u_xlati37;
        let x_5260 : vec4<f32> = x_3333.x_AdditionalLightsWorldToLights[(x_5255 / 4i)][(x_5257 % 4i)];
        let x_5262 : vec3<f32> = vs_INTERP8;
        let x_5265 : vec4<f32> = u_xlat11;
        let x_5267 : vec3<f32> = ((vec3<f32>(x_5260.x, x_5260.y, x_5260.w) * vec3<f32>(x_5262.x, x_5262.x, x_5262.x)) + vec3<f32>(x_5265.x, x_5265.z, x_5265.w));
        let x_5268 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5267.x, x_5268.y, x_5267.y, x_5267.z);
        let x_5270 : i32 = u_xlati37;
        let x_5273 : i32 = u_xlati37;
        let x_5277 : vec4<f32> = x_3333.x_AdditionalLightsWorldToLights[((x_5270 + 2i) / 4i)][((x_5273 + 2i) % 4i)];
        let x_5279 : vec3<f32> = vs_INTERP8;
        let x_5282 : vec4<f32> = u_xlat11;
        let x_5284 : vec3<f32> = ((vec3<f32>(x_5277.x, x_5277.y, x_5277.w) * vec3<f32>(x_5279.z, x_5279.z, x_5279.z)) + vec3<f32>(x_5282.x, x_5282.z, x_5282.w));
        let x_5285 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5284.x, x_5285.y, x_5284.y, x_5284.z);
        let x_5287 : vec4<f32> = u_xlat11;
        let x_5289 : i32 = u_xlati37;
        let x_5292 : i32 = u_xlati37;
        let x_5296 : vec4<f32> = x_3333.x_AdditionalLightsWorldToLights[((x_5289 + 3i) / 4i)][((x_5292 + 3i) % 4i)];
        let x_5298 : vec3<f32> = (vec3<f32>(x_5287.x, x_5287.z, x_5287.w) + vec3<f32>(x_5296.x, x_5296.y, x_5296.w));
        let x_5299 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5298.x, x_5299.y, x_5298.y, x_5298.z);
        let x_5301 : vec4<f32> = u_xlat11;
        let x_5303 : vec4<f32> = u_xlat11;
        let x_5305 : vec2<f32> = (vec2<f32>(x_5301.x, x_5301.z) / vec2<f32>(x_5303.w, x_5303.w));
        let x_5306 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5305.x, x_5306.y, x_5305.y, x_5306.w);
        let x_5308 : vec4<f32> = u_xlat11;
        let x_5311 : vec2<f32> = ((vec2<f32>(x_5308.x, x_5308.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_5312 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5311.x, x_5312.y, x_5311.y, x_5312.w);
        let x_5314 : vec4<f32> = u_xlat11;
        let x_5318 : vec2<f32> = clamp(vec2<f32>(x_5314.x, x_5314.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_5319 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5318.x, x_5319.y, x_5318.y, x_5319.w);
        let x_5321 : i32 = u_xlati81;
        let x_5323 : vec4<f32> = x_3333.x_AdditionalLightsCookieAtlasUVRects[x_5321];
        let x_5325 : vec4<f32> = u_xlat11;
        let x_5328 : i32 = u_xlati81;
        let x_5330 : vec4<f32> = x_3333.x_AdditionalLightsCookieAtlasUVRects[x_5328];
        let x_5332 : vec2<f32> = ((vec2<f32>(x_5323.x, x_5323.y) * vec2<f32>(x_5325.x, x_5325.z)) + vec2<f32>(x_5330.z, x_5330.w));
        let x_5333 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5332.x, x_5333.y, x_5332.y, x_5333.w);
      } else {
        let x_5336 : i32 = u_xlati88;
        u_xlatb88 = (x_5336 == 1i);
        let x_5338 : bool = u_xlatb88;
        u_xlati88 = select(0i, 1i, x_5338);
        let x_5340 : i32 = u_xlati88;
        if ((x_5340 != 0i)) {
          let x_5344 : vec3<f32> = vs_INTERP8;
          let x_5346 : i32 = u_xlati37;
          let x_5349 : i32 = u_xlati37;
          let x_5353 : vec4<f32> = x_3333.x_AdditionalLightsWorldToLights[((x_5346 + 1i) / 4i)][((x_5349 + 1i) % 4i)];
          let x_5355 : vec2<f32> = (vec2<f32>(x_5344.y, x_5344.y) * vec2<f32>(x_5353.x, x_5353.y));
          let x_5356 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5355.x, x_5355.y, x_5356.z, x_5356.w);
          let x_5358 : i32 = u_xlati37;
          let x_5360 : i32 = u_xlati37;
          let x_5363 : vec4<f32> = x_3333.x_AdditionalLightsWorldToLights[(x_5358 / 4i)][(x_5360 % 4i)];
          let x_5365 : vec3<f32> = vs_INTERP8;
          let x_5368 : vec4<f32> = u_xlat12;
          let x_5370 : vec2<f32> = ((vec2<f32>(x_5363.x, x_5363.y) * vec2<f32>(x_5365.x, x_5365.x)) + vec2<f32>(x_5368.x, x_5368.y));
          let x_5371 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5370.x, x_5370.y, x_5371.z, x_5371.w);
          let x_5373 : i32 = u_xlati37;
          let x_5376 : i32 = u_xlati37;
          let x_5380 : vec4<f32> = x_3333.x_AdditionalLightsWorldToLights[((x_5373 + 2i) / 4i)][((x_5376 + 2i) % 4i)];
          let x_5382 : vec3<f32> = vs_INTERP8;
          let x_5385 : vec4<f32> = u_xlat12;
          let x_5387 : vec2<f32> = ((vec2<f32>(x_5380.x, x_5380.y) * vec2<f32>(x_5382.z, x_5382.z)) + vec2<f32>(x_5385.x, x_5385.y));
          let x_5388 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5387.x, x_5387.y, x_5388.z, x_5388.w);
          let x_5390 : vec4<f32> = u_xlat12;
          let x_5392 : i32 = u_xlati37;
          let x_5395 : i32 = u_xlati37;
          let x_5399 : vec4<f32> = x_3333.x_AdditionalLightsWorldToLights[((x_5392 + 3i) / 4i)][((x_5395 + 3i) % 4i)];
          let x_5401 : vec2<f32> = (vec2<f32>(x_5390.x, x_5390.y) + vec2<f32>(x_5399.x, x_5399.y));
          let x_5402 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5401.x, x_5401.y, x_5402.z, x_5402.w);
          let x_5404 : vec4<f32> = u_xlat12;
          let x_5407 : vec2<f32> = ((vec2<f32>(x_5404.x, x_5404.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_5408 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5407.x, x_5407.y, x_5408.z, x_5408.w);
          let x_5410 : vec4<f32> = u_xlat12;
          let x_5412 : vec2<f32> = fract(vec2<f32>(x_5410.x, x_5410.y));
          let x_5413 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5412.x, x_5412.y, x_5413.z, x_5413.w);
          let x_5415 : i32 = u_xlati81;
          let x_5417 : vec4<f32> = x_3333.x_AdditionalLightsCookieAtlasUVRects[x_5415];
          let x_5419 : vec4<f32> = u_xlat12;
          let x_5422 : i32 = u_xlati81;
          let x_5424 : vec4<f32> = x_3333.x_AdditionalLightsCookieAtlasUVRects[x_5422];
          let x_5426 : vec2<f32> = ((vec2<f32>(x_5417.x, x_5417.y) * vec2<f32>(x_5419.x, x_5419.y)) + vec2<f32>(x_5424.z, x_5424.w));
          let x_5427 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_5426.x, x_5427.y, x_5426.y, x_5427.w);
        } else {
          let x_5430 : vec3<f32> = vs_INTERP8;
          let x_5432 : i32 = u_xlati37;
          let x_5435 : i32 = u_xlati37;
          let x_5439 : vec4<f32> = x_3333.x_AdditionalLightsWorldToLights[((x_5432 + 1i) / 4i)][((x_5435 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_5430.y, x_5430.y, x_5430.y, x_5430.y) * x_5439);
          let x_5441 : i32 = u_xlati37;
          let x_5443 : i32 = u_xlati37;
          let x_5446 : vec4<f32> = x_3333.x_AdditionalLightsWorldToLights[(x_5441 / 4i)][(x_5443 % 4i)];
          let x_5447 : vec3<f32> = vs_INTERP8;
          let x_5450 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_5446 * vec4<f32>(x_5447.x, x_5447.x, x_5447.x, x_5447.x)) + x_5450);
          let x_5452 : i32 = u_xlati37;
          let x_5455 : i32 = u_xlati37;
          let x_5459 : vec4<f32> = x_3333.x_AdditionalLightsWorldToLights[((x_5452 + 2i) / 4i)][((x_5455 + 2i) % 4i)];
          let x_5460 : vec3<f32> = vs_INTERP8;
          let x_5463 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_5459 * vec4<f32>(x_5460.z, x_5460.z, x_5460.z, x_5460.z)) + x_5463);
          let x_5465 : vec4<f32> = u_xlat12;
          let x_5466 : i32 = u_xlati37;
          let x_5469 : i32 = u_xlati37;
          let x_5473 : vec4<f32> = x_3333.x_AdditionalLightsWorldToLights[((x_5466 + 3i) / 4i)][((x_5469 + 3i) % 4i)];
          u_xlat12 = (x_5465 + x_5473);
          let x_5475 : vec4<f32> = u_xlat12;
          let x_5477 : vec4<f32> = u_xlat12;
          let x_5479 : vec3<f32> = (vec3<f32>(x_5475.x, x_5475.y, x_5475.z) / vec3<f32>(x_5477.w, x_5477.w, x_5477.w));
          let x_5480 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5479.x, x_5479.y, x_5479.z, x_5480.w);
          let x_5482 : vec4<f32> = u_xlat12;
          let x_5484 : vec4<f32> = u_xlat12;
          u_xlat88 = dot(vec3<f32>(x_5482.x, x_5482.y, x_5482.z), vec3<f32>(x_5484.x, x_5484.y, x_5484.z));
          let x_5487 : f32 = u_xlat88;
          u_xlat88 = inverseSqrt(x_5487);
          let x_5489 : f32 = u_xlat88;
          let x_5491 : vec4<f32> = u_xlat12;
          let x_5493 : vec3<f32> = (vec3<f32>(x_5489, x_5489, x_5489) * vec3<f32>(x_5491.x, x_5491.y, x_5491.z));
          let x_5494 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5493.x, x_5493.y, x_5493.z, x_5494.w);
          let x_5496 : vec4<f32> = u_xlat12;
          u_xlat88 = dot(abs(vec3<f32>(x_5496.x, x_5496.y, x_5496.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_5501 : f32 = u_xlat88;
          u_xlat88 = max(x_5501, 0.00000099999999747524f);
          let x_5504 : f32 = u_xlat88;
          u_xlat88 = (1.0f / x_5504);
          let x_5506 : f32 = u_xlat88;
          let x_5508 : vec4<f32> = u_xlat12;
          let x_5510 : vec3<f32> = (vec3<f32>(x_5506, x_5506, x_5506) * vec3<f32>(x_5508.z, x_5508.x, x_5508.y));
          let x_5511 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_5510.x, x_5510.y, x_5510.z, x_5511.w);
          let x_5514 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_5514);
          let x_5518 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_5518, 0.0f, 1.0f);
          let x_5523 : vec4<f32> = u_xlat13;
          let x_5525 : vec4<bool> = (vec4<f32>(x_5523.y, x_5523.y, x_5523.z, x_5523.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_5526 : vec2<bool> = vec2<bool>(x_5525.x, x_5525.z);
          let x_5527 : vec3<bool> = u_xlatb37;
          u_xlatb37 = vec3<bool>(x_5526.x, x_5527.y, x_5526.y);
          let x_5530 : bool = u_xlatb37.x;
          if (x_5530) {
            let x_5535 : f32 = u_xlat13.x;
            x_5531 = x_5535;
          } else {
            let x_5538 : f32 = u_xlat13.x;
            x_5531 = -(x_5538);
          }
          let x_5540 : f32 = x_5531;
          u_xlat37.x = x_5540;
          let x_5543 : bool = u_xlatb37.z;
          if (x_5543) {
            let x_5548 : f32 = u_xlat13.x;
            x_5544 = x_5548;
          } else {
            let x_5551 : f32 = u_xlat13.x;
            x_5544 = -(x_5551);
          }
          let x_5553 : f32 = x_5544;
          u_xlat37.z = x_5553;
          let x_5555 : vec4<f32> = u_xlat12;
          let x_5557 : f32 = u_xlat88;
          let x_5560 : vec3<f32> = u_xlat37;
          let x_5562 : vec2<f32> = ((vec2<f32>(x_5555.x, x_5555.y) * vec2<f32>(x_5557, x_5557)) + vec2<f32>(x_5560.x, x_5560.z));
          let x_5563 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_5562.x, x_5563.y, x_5562.y);
          let x_5565 : vec3<f32> = u_xlat37;
          let x_5568 : vec2<f32> = ((vec2<f32>(x_5565.x, x_5565.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_5569 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_5568.x, x_5569.y, x_5568.y);
          let x_5571 : vec3<f32> = u_xlat37;
          let x_5575 : vec2<f32> = clamp(vec2<f32>(x_5571.x, x_5571.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_5576 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_5575.x, x_5576.y, x_5575.y);
          let x_5578 : i32 = u_xlati81;
          let x_5580 : vec4<f32> = x_3333.x_AdditionalLightsCookieAtlasUVRects[x_5578];
          let x_5582 : vec3<f32> = u_xlat37;
          let x_5585 : i32 = u_xlati81;
          let x_5587 : vec4<f32> = x_3333.x_AdditionalLightsCookieAtlasUVRects[x_5585];
          let x_5589 : vec2<f32> = ((vec2<f32>(x_5580.x, x_5580.y) * vec2<f32>(x_5582.x, x_5582.z)) + vec2<f32>(x_5587.z, x_5587.w));
          let x_5590 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_5589.x, x_5590.y, x_5589.y, x_5590.w);
        }
      }
      let x_5597 : vec4<f32> = u_xlat11;
      let x_5599 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_5597.x, x_5597.z), 0.0f);
      u_xlat11 = x_5599;
      let x_5601 : bool = u_xlatb58.y;
      if (x_5601) {
        let x_5606 : f32 = u_xlat11.w;
        x_5602 = x_5606;
      } else {
        let x_5609 : f32 = u_xlat11.x;
        x_5602 = x_5609;
      }
      let x_5610 : f32 = x_5602;
      u_xlat88 = x_5610;
      let x_5612 : bool = u_xlatb58.x;
      if (x_5612) {
        let x_5616 : vec4<f32> = u_xlat11;
        x_5613 = vec3<f32>(x_5616.x, x_5616.y, x_5616.z);
      } else {
        let x_5619 : f32 = u_xlat88;
        x_5613 = vec3<f32>(x_5619, x_5619, x_5619);
      }
      let x_5621 : vec3<f32> = x_5613;
      let x_5622 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_5621.x, x_5621.y, x_5621.z, x_5622.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_5628 : vec4<f32> = u_xlat11;
    let x_5630 : i32 = u_xlati81;
    let x_5632 : vec4<f32> = x_3770.x_AdditionalLightsColor[x_5630];
    let x_5634 : vec3<f32> = (vec3<f32>(x_5628.x, x_5628.y, x_5628.z) * vec3<f32>(x_5632.x, x_5632.y, x_5632.z));
    let x_5635 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_5634.x, x_5634.y, x_5634.z, x_5635.w);
    let x_5637 : f32 = u_xlat83;
    let x_5638 : f32 = u_xlat86;
    u_xlat81 = (x_5637 * x_5638);
    let x_5640 : vec4<f32> = u_xlat3;
    let x_5642 : vec4<f32> = u_xlat10;
    u_xlat83 = dot(vec3<f32>(x_5640.x, x_5640.y, x_5640.z), vec3<f32>(x_5642.x, x_5642.y, x_5642.z));
    let x_5645 : f32 = u_xlat83;
    u_xlat83 = clamp(x_5645, 0.0f, 1.0f);
    let x_5647 : f32 = u_xlat81;
    let x_5648 : f32 = u_xlat83;
    u_xlat81 = (x_5647 * x_5648);
    let x_5650 : f32 = u_xlat81;
    let x_5652 : vec4<f32> = u_xlat11;
    let x_5654 : vec3<f32> = (vec3<f32>(x_5650, x_5650, x_5650) * vec3<f32>(x_5652.x, x_5652.y, x_5652.z));
    let x_5655 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_5654.x, x_5654.y, x_5654.z, x_5655.w);
    let x_5657 : vec3<f32> = u_xlat35;
    let x_5658 : f32 = u_xlat85;
    let x_5661 : vec3<f32> = u_xlat1;
    u_xlat35 = ((x_5657 * vec3<f32>(x_5658, x_5658, x_5658)) + x_5661);
    let x_5663 : vec3<f32> = u_xlat35;
    let x_5664 : vec3<f32> = u_xlat35;
    u_xlat81 = dot(x_5663, x_5664);
    let x_5666 : f32 = u_xlat81;
    u_xlat81 = max(x_5666, 1.17549435e-38f);
    let x_5668 : f32 = u_xlat81;
    u_xlat81 = inverseSqrt(x_5668);
    let x_5670 : f32 = u_xlat81;
    let x_5672 : vec3<f32> = u_xlat35;
    u_xlat35 = (vec3<f32>(x_5670, x_5670, x_5670) * x_5672);
    let x_5674 : vec4<f32> = u_xlat3;
    let x_5676 : vec3<f32> = u_xlat35;
    u_xlat81 = dot(vec3<f32>(x_5674.x, x_5674.y, x_5674.z), x_5676);
    let x_5678 : f32 = u_xlat81;
    u_xlat81 = clamp(x_5678, 0.0f, 1.0f);
    let x_5680 : vec4<f32> = u_xlat10;
    let x_5682 : vec3<f32> = u_xlat35;
    u_xlat83 = dot(vec3<f32>(x_5680.x, x_5680.y, x_5680.z), x_5682);
    let x_5684 : f32 = u_xlat83;
    u_xlat83 = clamp(x_5684, 0.0f, 1.0f);
    let x_5686 : f32 = u_xlat81;
    let x_5687 : f32 = u_xlat81;
    u_xlat81 = (x_5686 * x_5687);
    let x_5689 : f32 = u_xlat81;
    let x_5691 : f32 = u_xlat9.x;
    u_xlat81 = ((x_5689 * x_5691) + 1.00001001358032226562f);
    let x_5694 : f32 = u_xlat83;
    let x_5695 : f32 = u_xlat83;
    u_xlat83 = (x_5694 * x_5695);
    let x_5697 : f32 = u_xlat81;
    let x_5698 : f32 = u_xlat81;
    u_xlat81 = (x_5697 * x_5698);
    let x_5700 : f32 = u_xlat83;
    u_xlat83 = max(x_5700, 0.10000000149011611938f);
    let x_5702 : f32 = u_xlat81;
    let x_5703 : f32 = u_xlat83;
    u_xlat81 = (x_5702 * x_5703);
    let x_5706 : f32 = u_xlat6.x;
    let x_5707 : f32 = u_xlat81;
    u_xlat81 = (x_5706 * x_5707);
    let x_5709 : f32 = u_xlat82;
    let x_5710 : f32 = u_xlat81;
    u_xlat81 = (x_5709 / x_5710);
    let x_5712 : f32 = u_xlat81;
    let x_5715 : vec3<f32> = u_xlat4;
    u_xlat35 = ((vec3<f32>(x_5712, x_5712, x_5712) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_5715);
    let x_5717 : vec3<f32> = u_xlat35;
    let x_5718 : vec4<f32> = u_xlat11;
    let x_5721 : vec4<f32> = u_xlat8;
    let x_5723 : vec3<f32> = ((x_5717 * vec3<f32>(x_5718.x, x_5718.y, x_5718.z)) + vec3<f32>(x_5721.x, x_5721.y, x_5721.z));
    let x_5724 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_5723.x, x_5723.y, x_5723.z, x_5724.w);

    continuing {
      let x_5726 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_5726 + bitcast<u32>(1i));
    }
  }
  let x_5728 : vec4<f32> = u_xlat5;
  let x_5730 : f32 = u_xlat32;
  let x_5733 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec3<f32>(x_5728.x, x_5728.y, x_5728.z) * vec3<f32>(x_5730, x_5730, x_5730)) + vec3<f32>(x_5733.x, x_5733.y, x_5733.z));
  let x_5736 : vec4<f32> = u_xlat8;
  let x_5738 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_5736.x, x_5736.y, x_5736.z) + x_5738);
  let x_5740 : vec4<f32> = vs_INTERP6;
  let x_5742 : vec3<f32> = u_xlat0;
  let x_5744 : vec3<f32> = u_xlat1;
  u_xlat0 = ((vec3<f32>(x_5740.w, x_5740.w, x_5740.w) * x_5742) + x_5744);
  let x_5747 : f32 = u_xlat28.x;
  let x_5749 : f32 = u_xlat28.x;
  u_xlat78 = (x_5747 * -(x_5749));
  let x_5752 : f32 = u_xlat78;
  u_xlat78 = exp2(x_5752);
  let x_5754 : vec3<f32> = u_xlat0;
  let x_5756 : vec4<f32> = x_75.unity_FogColor;
  u_xlat0 = (x_5754 + -(vec3<f32>(x_5756.x, x_5756.y, x_5756.z)));
  let x_5762 : f32 = u_xlat78;
  let x_5764 : vec3<f32> = u_xlat0;
  let x_5767 : vec4<f32> = x_75.unity_FogColor;
  let x_5769 : vec3<f32> = ((vec3<f32>(x_5762, x_5762, x_5762) * x_5764) + vec3<f32>(x_5767.x, x_5767.y, x_5767.z));
  let x_5770 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_5769.x, x_5769.y, x_5769.z, x_5770.w);
  let x_5772 : bool = u_xlatb2;
  let x_5773 : f32 = u_xlat79;
  SV_Target0.w = select(1.0f, x_5773, x_5772);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(5) vs_INTERP9_param : vec3<f32>, @location(4) vs_INTERP8_param : vec3<f32>, @location(2) vs_INTERP5_param : vec4<f32>, @location(3) vs_INTERP6_param : vec4<f32>, @location(1) vs_INTERP4_param : vec4<f32>, @location(0) vs_INTERP3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP9 = vs_INTERP9_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP6 = vs_INTERP6_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP3 = vs_INTERP3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


