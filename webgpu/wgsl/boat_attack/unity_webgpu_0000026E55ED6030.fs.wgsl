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

var<private> u_xlat0 : vec4<f32>;

var<private> vs_INTERP9 : vec3<f32>;

var<private> u_xlatb26 : vec2<bool>;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_83 : UnityPerDraw;

var<private> u_xlat26 : vec3<f32>;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlatb0 : bool;

@group(1) @binding(0) var<uniform> x_147 : PGlobals;

var<private> u_xlat4 : vec3<f32>;

var<private> vs_INTERP8 : vec3<f32>;

var<private> u_xlat79 : f32;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(5) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(11) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP5 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

@group(1) @binding(5) var<uniform> x_251 : UnityPerMaterial;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(6) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(12) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat34 : vec3<f32>;

var<private> vs_INTERP6 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_355 : LightShadows;

var<private> u_xlatb79 : bool;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb80 : bool;

var<private> u_xlat55 : vec2<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat62 : vec2<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat29 : f32;

var<private> u_xlat35 : vec3<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat36 : vec2<f32>;

var<private> u_xlat68 : vec2<f32>;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat82 : f32;

var<private> u_xlatb28 : bool;

var<private> u_xlatb54 : bool;

var<private> u_xlat27 : vec3<f32>;

var<private> u_xlat28 : f32;

var<private> u_xlatu3 : vec3<u32>;

var<private> u_xlatu54 : u32;

var<private> u_xlatu80 : u32;

var<private> u_xlati54 : i32;

var<private> u_xlat54 : f32;

var<private> u_xlat52 : vec2<f32>;

var<private> u_xlat78 : f32;

var<private> u_xlat81 : f32;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlatb83 : bool;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat83 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlat67 : vec2<f32>;

var<private> u_xlatb2 : vec4<bool>;

@group(1) @binding(4) var<uniform> x_3334 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb8 : vec2<bool>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu0 : u32;

var<private> u_xlatu84 : u32;

var<private> u_xlati85 : i32;

var<private> u_xlati84 : i32;

@group(1) @binding(1) var<uniform> x_3816 : AdditionalLights;

var<private> u_xlat85 : f32;

var<private> u_xlat86 : f32;

var<private> u_xlat87 : f32;

var<private> u_xlati87 : i32;

var<private> u_xlatb88 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat89 : f32;

var<private> u_xlat37 : vec3<f32>;

var<private> u_xlat88 : f32;

var<private> u_xlatb87 : bool;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat66 : vec2<f32>;

var<private> u_xlat39 : vec3<f32>;

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

var<private> u_xlatu83 : u32;

var<private> u_xlatb84 : bool;

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
  var x_187 : vec3<f32>;
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
  var x_1697 : f32;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
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
  var x_3287 : f32;
  var x_3415 : f32;
  var x_3426 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_3956 : f32;
  var x_3967 : f32;
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
  var x_5581 : f32;
  var x_5594 : f32;
  var x_5652 : f32;
  var x_5663 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_49 : vec3<f32> = vs_INTERP9;
  let x_50 : vec3<f32> = vs_INTERP9;
  u_xlat0.x = dot(x_49, x_50);
  let x_56 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_56);
  let x_61 : f32 = u_xlat0.x;
  u_xlat0.x = (1.0f / x_61);
  let x_74 : f32 = vs_INTERP4.w;
  u_xlatb26.x = (0.0f < x_74);
  let x_87 : f32 = x_83.unity_WorldTransformParams.w;
  u_xlatb26.y = (x_87 >= 0.0f);
  let x_94 : bool = u_xlatb26.x;
  u_xlat26.x = select(-1.0f, 1.0f, x_94);
  let x_99 : bool = u_xlatb26.y;
  u_xlat26.y = select(-1.0f, 1.0f, x_99);
  let x_103 : f32 = u_xlat26.y;
  let x_105 : f32 = u_xlat26.x;
  u_xlat26.x = (x_103 * x_105);
  let x_109 : vec4<f32> = vs_INTERP4;
  let x_111 : vec3<f32> = vs_INTERP9;
  u_xlat1 = (vec3<f32>(x_109.y, x_109.z, x_109.x) * vec3<f32>(x_111.z, x_111.x, x_111.y));
  let x_114 : vec3<f32> = vs_INTERP9;
  let x_116 : vec4<f32> = vs_INTERP4;
  let x_119 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_114.y, x_114.z, x_114.x) * vec3<f32>(x_116.z, x_116.x, x_116.y)) + -(x_119));
  let x_122 : vec3<f32> = u_xlat26;
  let x_124 : vec3<f32> = u_xlat1;
  u_xlat26 = (vec3<f32>(x_122.x, x_122.x, x_122.x) * x_124);
  let x_126 : vec4<f32> = u_xlat0;
  let x_128 : vec3<f32> = vs_INTERP9;
  u_xlat1 = (vec3<f32>(x_126.x, x_126.x, x_126.x) * x_128);
  let x_131 : vec4<f32> = u_xlat0;
  let x_133 : vec4<f32> = vs_INTERP4;
  u_xlat2 = (vec3<f32>(x_131.x, x_131.x, x_131.x) * vec3<f32>(x_133.x, x_133.y, x_133.z));
  let x_137 : vec3<f32> = u_xlat26;
  let x_138 : vec4<f32> = u_xlat0;
  let x_140 : vec3<f32> = (x_137 * vec3<f32>(x_138.x, x_138.x, x_138.x));
  let x_141 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_140.x, x_140.y, x_140.z, x_141.w);
  let x_150 : f32 = x_147.unity_OrthoParams.w;
  u_xlatb0 = (x_150 == 0.0f);
  let x_154 : vec3<f32> = vs_INTERP8;
  let x_159 : vec3<f32> = x_147.x_WorldSpaceCameraPos;
  u_xlat4 = (-(x_154) + x_159);
  let x_162 : vec3<f32> = u_xlat4;
  let x_163 : vec3<f32> = u_xlat4;
  u_xlat79 = dot(x_162, x_163);
  let x_165 : f32 = u_xlat79;
  u_xlat79 = inverseSqrt(x_165);
  let x_167 : f32 = u_xlat79;
  let x_169 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_167, x_167, x_167) * x_169);
  let x_175 : f32 = x_147.unity_MatrixV[0i].z;
  u_xlat5.x = x_175;
  let x_179 : f32 = x_147.unity_MatrixV[1i].z;
  u_xlat5.y = x_179;
  let x_183 : f32 = x_147.unity_MatrixV[2i].z;
  u_xlat5.z = x_183;
  let x_185 : bool = u_xlatb0;
  if (x_185) {
    let x_190 : vec3<f32> = u_xlat4;
    x_187 = x_190;
  } else {
    let x_192 : vec3<f32> = u_xlat5;
    x_187 = x_192;
  }
  let x_193 : vec3<f32> = x_187;
  u_xlat4 = x_193;
  let x_194 : vec3<f32> = u_xlat4;
  let x_198 : vec4<f32> = x_83.unity_WorldToObject[1i];
  u_xlat5 = (vec3<f32>(x_194.y, x_194.y, x_194.y) * vec3<f32>(x_198.x, x_198.y, x_198.z));
  let x_202 : vec4<f32> = x_83.unity_WorldToObject[0i];
  let x_204 : vec3<f32> = u_xlat4;
  let x_207 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_202.x, x_202.y, x_202.z) * vec3<f32>(x_204.x, x_204.x, x_204.x)) + x_207);
  let x_210 : vec4<f32> = x_83.unity_WorldToObject[2i];
  let x_212 : vec3<f32> = u_xlat4;
  let x_215 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_210.x, x_210.y, x_210.z) * vec3<f32>(x_212.z, x_212.z, x_212.z)) + x_215);
  let x_217 : vec3<f32> = u_xlat5;
  let x_218 : vec3<f32> = u_xlat5;
  u_xlat0.x = dot(x_217, x_218);
  let x_222 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_222);
  let x_225 : vec4<f32> = u_xlat0;
  let x_227 : vec3<f32> = u_xlat5;
  u_xlat5 = (vec3<f32>(x_225.x, x_225.x, x_225.x) * x_227);
  let x_241 : vec4<f32> = vs_INTERP5;
  let x_244 : f32 = x_147.x_GlobalMipBias.x;
  let x_245 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_241.x, x_241.y), x_244);
  u_xlat6 = x_245;
  let x_247 : vec4<f32> = u_xlat6;
  let x_253 : vec4<f32> = x_251.Color_C30C7CA3;
  let x_255 : vec3<f32> = (vec3<f32>(x_247.x, x_247.y, x_247.z) * vec3<f32>(x_253.x, x_253.y, x_253.z));
  let x_256 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_255.x, x_255.y, x_255.z, x_256.w);
  let x_264 : vec4<f32> = vs_INTERP5;
  let x_267 : f32 = x_147.x_GlobalMipBias.x;
  let x_268 : vec4<f32> = textureSampleBias(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1, vec2<f32>(x_264.x, x_264.y), x_267);
  u_xlat8 = vec4<f32>(x_268.w, x_268.x, x_268.y, x_268.z);
  let x_271 : vec4<f32> = u_xlat8;
  u_xlat9 = ((vec4<f32>(x_271.y, x_271.z, x_271.w, x_271.x) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_278 : vec4<f32> = u_xlat9;
  let x_279 : vec4<f32> = u_xlat9;
  u_xlat0.x = dot(x_278, x_279);
  let x_283 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_283);
  let x_287 : vec4<f32> = u_xlat0;
  let x_289 : vec4<f32> = u_xlat9;
  u_xlat34 = (vec3<f32>(x_287.x, x_287.x, x_287.x) * vec3<f32>(x_289.x, x_289.y, x_289.z));
  let x_294 : f32 = vs_INTERP6.y;
  u_xlat0.x = (x_294 * 200.0f);
  let x_299 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_299, 1.0f);
  let x_302 : vec4<f32> = u_xlat0;
  let x_304 : vec4<f32> = u_xlat6;
  let x_306 : vec3<f32> = (vec3<f32>(x_302.x, x_302.x, x_302.x) * vec3<f32>(x_304.x, x_304.y, x_304.z));
  let x_307 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_306.x, x_306.y, x_306.z, x_307.w);
  let x_309 : vec4<f32> = u_xlat3;
  let x_311 : vec3<f32> = u_xlat34;
  let x_313 : vec3<f32> = (vec3<f32>(x_309.x, x_309.y, x_309.z) * vec3<f32>(x_311.y, x_311.y, x_311.y));
  let x_314 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_313.x, x_313.y, x_313.z, x_314.w);
  let x_316 : vec3<f32> = u_xlat34;
  let x_318 : vec3<f32> = u_xlat2;
  let x_320 : vec4<f32> = u_xlat3;
  u_xlat2 = ((vec3<f32>(x_316.x, x_316.x, x_316.x) * x_318) + vec3<f32>(x_320.x, x_320.y, x_320.z));
  let x_323 : vec3<f32> = u_xlat34;
  let x_325 : vec3<f32> = u_xlat1;
  let x_327 : vec3<f32> = u_xlat2;
  u_xlat1 = ((vec3<f32>(x_323.z, x_323.z, x_323.z) * x_325) + x_327);
  let x_329 : vec3<f32> = u_xlat1;
  let x_330 : vec3<f32> = u_xlat1;
  u_xlat0.x = dot(x_329, x_330);
  let x_334 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_334, 1.17549435e-38f);
  let x_339 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_339);
  let x_342 : vec4<f32> = u_xlat0;
  let x_344 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_342.x, x_342.x, x_342.x) * x_344);
  let x_346 : vec3<f32> = vs_INTERP8;
  let x_357 : vec4<f32> = x_355.x_MainLightWorldToShadow[0i][1i];
  u_xlat2 = (vec3<f32>(x_346.y, x_346.y, x_346.y) * vec3<f32>(x_357.x, x_357.y, x_357.z));
  let x_361 : vec4<f32> = x_355.x_MainLightWorldToShadow[0i][0i];
  let x_363 : vec3<f32> = vs_INTERP8;
  let x_366 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_361.x, x_361.y, x_361.z) * vec3<f32>(x_363.x, x_363.x, x_363.x)) + x_366);
  let x_369 : vec4<f32> = x_355.x_MainLightWorldToShadow[0i][2i];
  let x_371 : vec3<f32> = vs_INTERP8;
  let x_374 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_369.x, x_369.y, x_369.z) * vec3<f32>(x_371.z, x_371.z, x_371.z)) + x_374);
  let x_376 : vec3<f32> = u_xlat2;
  let x_378 : vec4<f32> = x_355.x_MainLightWorldToShadow[0i][3i];
  u_xlat2 = (x_376 + vec3<f32>(x_378.x, x_378.y, x_378.z));
  let x_382 : f32 = x_355.x_MainLightShadowParams.y;
  u_xlatb0 = (0.0f < x_382);
  let x_384 : bool = u_xlatb0;
  if (x_384) {
    let x_389 : f32 = x_355.x_MainLightShadowParams.y;
    u_xlatb79 = (x_389 == 1.0f);
    let x_391 : bool = u_xlatb79;
    if (x_391) {
      let x_394 : vec3<f32> = u_xlat2;
      let x_398 : vec4<f32> = x_355.x_MainLightShadowOffset0;
      u_xlat3 = (vec4<f32>(x_394.x, x_394.y, x_394.x, x_394.y) + x_398);
      let x_401 : vec4<f32> = u_xlat3;
      let x_402 : vec2<f32> = vec2<f32>(x_401.x, x_401.y);
      let x_404 : f32 = u_xlat2.z;
      txVec0 = vec3<f32>(x_402.x, x_402.y, x_404);
      let x_416 : vec3<f32> = txVec0;
      let x_418 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_416.xy, x_416.z);
      u_xlat9.x = x_418;
      let x_421 : vec4<f32> = u_xlat3;
      let x_422 : vec2<f32> = vec2<f32>(x_421.z, x_421.w);
      let x_424 : f32 = u_xlat2.z;
      txVec1 = vec3<f32>(x_422.x, x_422.y, x_424);
      let x_431 : vec3<f32> = txVec1;
      let x_433 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_431.xy, x_431.z);
      u_xlat9.y = x_433;
      let x_435 : vec3<f32> = u_xlat2;
      let x_439 : vec4<f32> = x_355.x_MainLightShadowOffset1;
      u_xlat3 = (vec4<f32>(x_435.x, x_435.y, x_435.x, x_435.y) + x_439);
      let x_442 : vec4<f32> = u_xlat3;
      let x_443 : vec2<f32> = vec2<f32>(x_442.x, x_442.y);
      let x_445 : f32 = u_xlat2.z;
      txVec2 = vec3<f32>(x_443.x, x_443.y, x_445);
      let x_452 : vec3<f32> = txVec2;
      let x_454 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_452.xy, x_452.z);
      u_xlat9.z = x_454;
      let x_457 : vec4<f32> = u_xlat3;
      let x_458 : vec2<f32> = vec2<f32>(x_457.z, x_457.w);
      let x_460 : f32 = u_xlat2.z;
      txVec3 = vec3<f32>(x_458.x, x_458.y, x_460);
      let x_467 : vec3<f32> = txVec3;
      let x_469 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_467.xy, x_467.z);
      u_xlat9.w = x_469;
      let x_471 : vec4<f32> = u_xlat9;
      u_xlat79 = dot(x_471, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_478 : f32 = x_355.x_MainLightShadowParams.y;
      u_xlatb80 = (x_478 == 2.0f);
      let x_480 : bool = u_xlatb80;
      if (x_480) {
        let x_483 : vec3<f32> = u_xlat2;
        let x_487 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_492 : vec2<f32> = ((vec2<f32>(x_483.x, x_483.y) * vec2<f32>(x_487.z, x_487.w)) + vec2<f32>(0.5f, 0.5f));
        let x_493 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_492.x, x_492.y, x_493.z, x_493.w);
        let x_495 : vec4<f32> = u_xlat3;
        let x_497 : vec2<f32> = floor(vec2<f32>(x_495.x, x_495.y));
        let x_498 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_497.x, x_497.y, x_498.z, x_498.w);
        let x_502 : vec3<f32> = u_xlat2;
        let x_505 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_508 : vec4<f32> = u_xlat3;
        u_xlat55 = ((vec2<f32>(x_502.x, x_502.y) * vec2<f32>(x_505.z, x_505.w)) + -(vec2<f32>(x_508.x, x_508.y)));
        let x_512 : vec2<f32> = u_xlat55;
        u_xlat9 = (vec4<f32>(x_512.x, x_512.x, x_512.y, x_512.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_517 : vec4<f32> = u_xlat9;
        let x_519 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_517.x, x_517.x, x_517.z, x_517.z) * vec4<f32>(x_519.x, x_519.x, x_519.z, x_519.z));
        let x_522 : vec4<f32> = u_xlat10;
        let x_526 : vec2<f32> = (vec2<f32>(x_522.y, x_522.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_527 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_526.x, x_527.y, x_526.y, x_527.w);
        let x_529 : vec4<f32> = u_xlat10;
        let x_532 : vec2<f32> = u_xlat55;
        let x_534 : vec2<f32> = ((vec2<f32>(x_529.x, x_529.z) * vec2<f32>(0.5f, 0.5f)) + -(x_532));
        let x_535 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_534.x, x_534.y, x_535.z, x_535.w);
        let x_538 : vec2<f32> = u_xlat55;
        u_xlat62 = (-(x_538) + vec2<f32>(1.0f, 1.0f));
        let x_543 : vec2<f32> = u_xlat55;
        let x_545 : vec2<f32> = min(x_543, vec2<f32>(0.0f, 0.0f));
        let x_546 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_545.x, x_545.y, x_546.z, x_546.w);
        let x_548 : vec4<f32> = u_xlat11;
        let x_551 : vec4<f32> = u_xlat11;
        let x_554 : vec2<f32> = u_xlat62;
        let x_555 : vec2<f32> = ((-(vec2<f32>(x_548.x, x_548.y)) * vec2<f32>(x_551.x, x_551.y)) + x_554);
        let x_556 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_555.x, x_555.y, x_556.z, x_556.w);
        let x_558 : vec2<f32> = u_xlat55;
        u_xlat55 = max(x_558, vec2<f32>(0.0f, 0.0f));
        let x_560 : vec2<f32> = u_xlat55;
        let x_562 : vec2<f32> = u_xlat55;
        let x_564 : vec4<f32> = u_xlat9;
        u_xlat55 = ((-(x_560) * x_562) + vec2<f32>(x_564.y, x_564.w));
        let x_567 : vec4<f32> = u_xlat11;
        let x_569 : vec2<f32> = (vec2<f32>(x_567.x, x_567.y) + vec2<f32>(1.0f, 1.0f));
        let x_570 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_569.x, x_569.y, x_570.z, x_570.w);
        let x_572 : vec2<f32> = u_xlat55;
        u_xlat55 = (x_572 + vec2<f32>(1.0f, 1.0f));
        let x_575 : vec4<f32> = u_xlat10;
        let x_579 : vec2<f32> = (vec2<f32>(x_575.x, x_575.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_580 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_579.x, x_579.y, x_580.z, x_580.w);
        let x_582 : vec2<f32> = u_xlat62;
        let x_583 : vec2<f32> = (x_582 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_584 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_583.x, x_583.y, x_584.z, x_584.w);
        let x_586 : vec4<f32> = u_xlat11;
        let x_588 : vec2<f32> = (vec2<f32>(x_586.x, x_586.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_589 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_588.x, x_588.y, x_589.z, x_589.w);
        let x_592 : vec2<f32> = u_xlat55;
        let x_593 : vec2<f32> = (x_592 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_594 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_593.x, x_593.y, x_594.z, x_594.w);
        let x_596 : vec4<f32> = u_xlat9;
        u_xlat55 = (vec2<f32>(x_596.y, x_596.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_600 : f32 = u_xlat11.x;
        u_xlat12.z = x_600;
        let x_603 : f32 = u_xlat55.x;
        u_xlat12.w = x_603;
        let x_606 : f32 = u_xlat13.x;
        u_xlat10.z = x_606;
        let x_609 : f32 = u_xlat9.x;
        u_xlat10.w = x_609;
        let x_612 : vec4<f32> = u_xlat10;
        let x_614 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_612.z, x_612.w, x_612.x, x_612.z) + vec4<f32>(x_614.z, x_614.w, x_614.x, x_614.z));
        let x_618 : f32 = u_xlat12.y;
        u_xlat11.z = x_618;
        let x_621 : f32 = u_xlat55.y;
        u_xlat11.w = x_621;
        let x_624 : f32 = u_xlat10.y;
        u_xlat13.z = x_624;
        let x_627 : f32 = u_xlat9.z;
        u_xlat13.w = x_627;
        let x_629 : vec4<f32> = u_xlat11;
        let x_631 : vec4<f32> = u_xlat13;
        let x_633 : vec3<f32> = (vec3<f32>(x_629.z, x_629.y, x_629.w) + vec3<f32>(x_631.z, x_631.y, x_631.w));
        let x_634 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_633.x, x_633.y, x_633.z, x_634.w);
        let x_636 : vec4<f32> = u_xlat10;
        let x_638 : vec4<f32> = u_xlat14;
        let x_640 : vec3<f32> = (vec3<f32>(x_636.x, x_636.z, x_636.w) / vec3<f32>(x_638.z, x_638.w, x_638.y));
        let x_641 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_640.x, x_640.y, x_640.z, x_641.w);
        let x_643 : vec4<f32> = u_xlat10;
        let x_649 : vec3<f32> = (vec3<f32>(x_643.x, x_643.y, x_643.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_650 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_649.x, x_649.y, x_649.z, x_650.w);
        let x_652 : vec4<f32> = u_xlat13;
        let x_654 : vec4<f32> = u_xlat9;
        let x_656 : vec3<f32> = (vec3<f32>(x_652.z, x_652.y, x_652.w) / vec3<f32>(x_654.x, x_654.y, x_654.z));
        let x_657 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_656.x, x_656.y, x_656.z, x_657.w);
        let x_659 : vec4<f32> = u_xlat11;
        let x_661 : vec3<f32> = (vec3<f32>(x_659.x, x_659.y, x_659.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_662 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_661.x, x_661.y, x_661.z, x_662.w);
        let x_664 : vec4<f32> = u_xlat10;
        let x_667 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_669 : vec3<f32> = (vec3<f32>(x_664.y, x_664.x, x_664.z) * vec3<f32>(x_667.x, x_667.x, x_667.x));
        let x_670 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_669.x, x_669.y, x_669.z, x_670.w);
        let x_672 : vec4<f32> = u_xlat11;
        let x_675 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_677 : vec3<f32> = (vec3<f32>(x_672.x, x_672.y, x_672.z) * vec3<f32>(x_675.y, x_675.y, x_675.y));
        let x_678 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_677.x, x_677.y, x_677.z, x_678.w);
        let x_681 : f32 = u_xlat11.x;
        u_xlat10.w = x_681;
        let x_683 : vec4<f32> = u_xlat3;
        let x_686 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_689 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_683.x, x_683.y, x_683.x, x_683.y) * vec4<f32>(x_686.x, x_686.y, x_686.x, x_686.y)) + vec4<f32>(x_689.y, x_689.w, x_689.x, x_689.w));
        let x_692 : vec4<f32> = u_xlat3;
        let x_695 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_698 : vec4<f32> = u_xlat10;
        u_xlat55 = ((vec2<f32>(x_692.x, x_692.y) * vec2<f32>(x_695.x, x_695.y)) + vec2<f32>(x_698.z, x_698.w));
        let x_702 : f32 = u_xlat10.y;
        u_xlat11.w = x_702;
        let x_704 : vec4<f32> = u_xlat11;
        let x_705 : vec2<f32> = vec2<f32>(x_704.y, x_704.z);
        let x_706 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_706.x, x_705.x, x_706.z, x_705.y);
        let x_708 : vec4<f32> = u_xlat3;
        let x_711 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_714 : vec4<f32> = u_xlat10;
        u_xlat13 = ((vec4<f32>(x_708.x, x_708.y, x_708.x, x_708.y) * vec4<f32>(x_711.x, x_711.y, x_711.x, x_711.y)) + vec4<f32>(x_714.x, x_714.y, x_714.z, x_714.y));
        let x_717 : vec4<f32> = u_xlat3;
        let x_720 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_723 : vec4<f32> = u_xlat11;
        u_xlat11 = ((vec4<f32>(x_717.x, x_717.y, x_717.x, x_717.y) * vec4<f32>(x_720.x, x_720.y, x_720.x, x_720.y)) + vec4<f32>(x_723.w, x_723.y, x_723.w, x_723.z));
        let x_726 : vec4<f32> = u_xlat3;
        let x_729 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_732 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_726.x, x_726.y, x_726.x, x_726.y) * vec4<f32>(x_729.x, x_729.y, x_729.x, x_729.y)) + vec4<f32>(x_732.x, x_732.w, x_732.z, x_732.w));
        let x_736 : vec4<f32> = u_xlat9;
        let x_738 : vec4<f32> = u_xlat14;
        u_xlat15 = (vec4<f32>(x_736.x, x_736.x, x_736.x, x_736.y) * vec4<f32>(x_738.z, x_738.w, x_738.y, x_738.z));
        let x_742 : vec4<f32> = u_xlat9;
        let x_744 : vec4<f32> = u_xlat14;
        u_xlat16 = (vec4<f32>(x_742.y, x_742.y, x_742.z, x_742.z) * x_744);
        let x_748 : f32 = u_xlat9.z;
        let x_750 : f32 = u_xlat14.y;
        u_xlat80 = (x_748 * x_750);
        let x_753 : vec4<f32> = u_xlat12;
        let x_754 : vec2<f32> = vec2<f32>(x_753.x, x_753.y);
        let x_756 : f32 = u_xlat2.z;
        txVec4 = vec3<f32>(x_754.x, x_754.y, x_756);
        let x_763 : vec3<f32> = txVec4;
        let x_765 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_763.xy, x_763.z);
        u_xlat3.x = x_765;
        let x_768 : vec4<f32> = u_xlat12;
        let x_769 : vec2<f32> = vec2<f32>(x_768.z, x_768.w);
        let x_771 : f32 = u_xlat2.z;
        txVec5 = vec3<f32>(x_769.x, x_769.y, x_771);
        let x_779 : vec3<f32> = txVec5;
        let x_781 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_779.xy, x_779.z);
        u_xlat29 = x_781;
        let x_782 : f32 = u_xlat29;
        let x_784 : f32 = u_xlat15.y;
        u_xlat29 = (x_782 * x_784);
        let x_787 : f32 = u_xlat15.x;
        let x_789 : f32 = u_xlat3.x;
        let x_791 : f32 = u_xlat29;
        u_xlat3.x = ((x_787 * x_789) + x_791);
        let x_795 : vec2<f32> = u_xlat55;
        let x_797 : f32 = u_xlat2.z;
        txVec6 = vec3<f32>(x_795.x, x_795.y, x_797);
        let x_804 : vec3<f32> = txVec6;
        let x_806 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_804.xy, x_804.z);
        u_xlat29 = x_806;
        let x_808 : f32 = u_xlat15.z;
        let x_809 : f32 = u_xlat29;
        let x_812 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_808 * x_809) + x_812);
        let x_816 : vec4<f32> = u_xlat11;
        let x_817 : vec2<f32> = vec2<f32>(x_816.x, x_816.y);
        let x_819 : f32 = u_xlat2.z;
        txVec7 = vec3<f32>(x_817.x, x_817.y, x_819);
        let x_826 : vec3<f32> = txVec7;
        let x_828 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_826.xy, x_826.z);
        u_xlat29 = x_828;
        let x_830 : f32 = u_xlat15.w;
        let x_831 : f32 = u_xlat29;
        let x_834 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_830 * x_831) + x_834);
        let x_838 : vec4<f32> = u_xlat13;
        let x_839 : vec2<f32> = vec2<f32>(x_838.x, x_838.y);
        let x_841 : f32 = u_xlat2.z;
        txVec8 = vec3<f32>(x_839.x, x_839.y, x_841);
        let x_848 : vec3<f32> = txVec8;
        let x_850 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_848.xy, x_848.z);
        u_xlat29 = x_850;
        let x_852 : f32 = u_xlat16.x;
        let x_853 : f32 = u_xlat29;
        let x_856 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_852 * x_853) + x_856);
        let x_860 : vec4<f32> = u_xlat13;
        let x_861 : vec2<f32> = vec2<f32>(x_860.z, x_860.w);
        let x_863 : f32 = u_xlat2.z;
        txVec9 = vec3<f32>(x_861.x, x_861.y, x_863);
        let x_870 : vec3<f32> = txVec9;
        let x_872 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_870.xy, x_870.z);
        u_xlat29 = x_872;
        let x_874 : f32 = u_xlat16.y;
        let x_875 : f32 = u_xlat29;
        let x_878 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_874 * x_875) + x_878);
        let x_882 : vec4<f32> = u_xlat11;
        let x_883 : vec2<f32> = vec2<f32>(x_882.z, x_882.w);
        let x_885 : f32 = u_xlat2.z;
        txVec10 = vec3<f32>(x_883.x, x_883.y, x_885);
        let x_892 : vec3<f32> = txVec10;
        let x_894 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_892.xy, x_892.z);
        u_xlat29 = x_894;
        let x_896 : f32 = u_xlat16.z;
        let x_897 : f32 = u_xlat29;
        let x_900 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_896 * x_897) + x_900);
        let x_904 : vec4<f32> = u_xlat10;
        let x_905 : vec2<f32> = vec2<f32>(x_904.x, x_904.y);
        let x_907 : f32 = u_xlat2.z;
        txVec11 = vec3<f32>(x_905.x, x_905.y, x_907);
        let x_914 : vec3<f32> = txVec11;
        let x_916 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_914.xy, x_914.z);
        u_xlat29 = x_916;
        let x_918 : f32 = u_xlat16.w;
        let x_919 : f32 = u_xlat29;
        let x_922 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_918 * x_919) + x_922);
        let x_926 : vec4<f32> = u_xlat10;
        let x_927 : vec2<f32> = vec2<f32>(x_926.z, x_926.w);
        let x_929 : f32 = u_xlat2.z;
        txVec12 = vec3<f32>(x_927.x, x_927.y, x_929);
        let x_936 : vec3<f32> = txVec12;
        let x_938 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_936.xy, x_936.z);
        u_xlat29 = x_938;
        let x_939 : f32 = u_xlat80;
        let x_940 : f32 = u_xlat29;
        let x_943 : f32 = u_xlat3.x;
        u_xlat79 = ((x_939 * x_940) + x_943);
      } else {
        let x_946 : vec3<f32> = u_xlat2;
        let x_949 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_952 : vec2<f32> = ((vec2<f32>(x_946.x, x_946.y) * vec2<f32>(x_949.z, x_949.w)) + vec2<f32>(0.5f, 0.5f));
        let x_953 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_952.x, x_952.y, x_953.z, x_953.w);
        let x_955 : vec4<f32> = u_xlat3;
        let x_957 : vec2<f32> = floor(vec2<f32>(x_955.x, x_955.y));
        let x_958 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_957.x, x_957.y, x_958.z, x_958.w);
        let x_960 : vec3<f32> = u_xlat2;
        let x_963 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_966 : vec4<f32> = u_xlat3;
        u_xlat55 = ((vec2<f32>(x_960.x, x_960.y) * vec2<f32>(x_963.z, x_963.w)) + -(vec2<f32>(x_966.x, x_966.y)));
        let x_970 : vec2<f32> = u_xlat55;
        u_xlat9 = (vec4<f32>(x_970.x, x_970.x, x_970.y, x_970.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_973 : vec4<f32> = u_xlat9;
        let x_975 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_973.x, x_973.x, x_973.z, x_973.z) * vec4<f32>(x_975.x, x_975.x, x_975.z, x_975.z));
        let x_978 : vec4<f32> = u_xlat10;
        let x_982 : vec2<f32> = (vec2<f32>(x_978.y, x_978.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_983 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_983.x, x_982.x, x_983.z, x_982.y);
        let x_985 : vec4<f32> = u_xlat10;
        let x_988 : vec2<f32> = u_xlat55;
        let x_990 : vec2<f32> = ((vec2<f32>(x_985.x, x_985.z) * vec2<f32>(0.5f, 0.5f)) + -(x_988));
        let x_991 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_990.x, x_991.y, x_990.y, x_991.w);
        let x_993 : vec2<f32> = u_xlat55;
        let x_995 : vec2<f32> = (-(x_993) + vec2<f32>(1.0f, 1.0f));
        let x_996 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_995.x, x_995.y, x_996.z, x_996.w);
        let x_998 : vec2<f32> = u_xlat55;
        u_xlat62 = min(x_998, vec2<f32>(0.0f, 0.0f));
        let x_1000 : vec2<f32> = u_xlat62;
        let x_1002 : vec2<f32> = u_xlat62;
        let x_1004 : vec4<f32> = u_xlat10;
        let x_1006 : vec2<f32> = ((-(x_1000) * x_1002) + vec2<f32>(x_1004.x, x_1004.y));
        let x_1007 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1006.x, x_1006.y, x_1007.z, x_1007.w);
        let x_1009 : vec2<f32> = u_xlat55;
        u_xlat62 = max(x_1009, vec2<f32>(0.0f, 0.0f));
        let x_1012 : vec2<f32> = u_xlat62;
        let x_1014 : vec2<f32> = u_xlat62;
        let x_1016 : vec4<f32> = u_xlat9;
        let x_1018 : vec2<f32> = ((-(x_1012) * x_1014) + vec2<f32>(x_1016.y, x_1016.w));
        let x_1019 : vec3<f32> = u_xlat35;
        u_xlat35 = vec3<f32>(x_1018.x, x_1019.y, x_1018.y);
        let x_1021 : vec4<f32> = u_xlat10;
        let x_1024 : vec2<f32> = (vec2<f32>(x_1021.x, x_1021.y) + vec2<f32>(2.0f, 2.0f));
        let x_1025 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1024.x, x_1024.y, x_1025.z, x_1025.w);
        let x_1027 : vec3<f32> = u_xlat35;
        let x_1029 : vec2<f32> = (vec2<f32>(x_1027.x, x_1027.z) + vec2<f32>(2.0f, 2.0f));
        let x_1030 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1030.x, x_1029.x, x_1030.z, x_1029.y);
        let x_1033 : f32 = u_xlat9.y;
        u_xlat12.z = (x_1033 * 0.08163200318813323975f);
        let x_1037 : vec4<f32> = u_xlat9;
        let x_1040 : vec3<f32> = (vec3<f32>(x_1037.z, x_1037.x, x_1037.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1041 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1040.x, x_1040.y, x_1040.z, x_1041.w);
        let x_1043 : vec4<f32> = u_xlat10;
        let x_1046 : vec2<f32> = (vec2<f32>(x_1043.x, x_1043.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1047 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1046.x, x_1046.y, x_1047.z, x_1047.w);
        let x_1050 : f32 = u_xlat13.y;
        u_xlat12.x = x_1050;
        let x_1052 : vec2<f32> = u_xlat55;
        let x_1059 : vec2<f32> = ((vec2<f32>(x_1052.x, x_1052.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1060 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1060.x, x_1059.x, x_1060.z, x_1059.y);
        let x_1062 : vec2<f32> = u_xlat55;
        let x_1066 : vec2<f32> = ((vec2<f32>(x_1062.x, x_1062.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1067 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1066.x, x_1067.y, x_1066.y, x_1067.w);
        let x_1070 : f32 = u_xlat9.x;
        u_xlat10.y = x_1070;
        let x_1073 : f32 = u_xlat11.y;
        u_xlat10.w = x_1073;
        let x_1075 : vec4<f32> = u_xlat10;
        let x_1076 : vec4<f32> = u_xlat12;
        u_xlat12 = (x_1075 + x_1076);
        let x_1078 : vec2<f32> = u_xlat55;
        let x_1081 : vec2<f32> = ((vec2<f32>(x_1078.y, x_1078.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1082 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1082.x, x_1081.x, x_1082.z, x_1081.y);
        let x_1084 : vec2<f32> = u_xlat55;
        let x_1087 : vec2<f32> = ((vec2<f32>(x_1084.y, x_1084.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1088 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1087.x, x_1088.y, x_1087.y, x_1088.w);
        let x_1091 : f32 = u_xlat9.y;
        u_xlat11.y = x_1091;
        let x_1093 : vec4<f32> = u_xlat11;
        let x_1094 : vec4<f32> = u_xlat13;
        u_xlat9 = (x_1093 + x_1094);
        let x_1096 : vec4<f32> = u_xlat10;
        let x_1097 : vec4<f32> = u_xlat12;
        u_xlat10 = (x_1096 / x_1097);
        let x_1099 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1099 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1105 : vec4<f32> = u_xlat11;
        let x_1106 : vec4<f32> = u_xlat9;
        u_xlat11 = (x_1105 / x_1106);
        let x_1108 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1108 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1110 : vec4<f32> = u_xlat10;
        let x_1113 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1110.w, x_1110.x, x_1110.y, x_1110.z) * vec4<f32>(x_1113.x, x_1113.x, x_1113.x, x_1113.x));
        let x_1116 : vec4<f32> = u_xlat11;
        let x_1119 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        u_xlat11 = (vec4<f32>(x_1116.x, x_1116.w, x_1116.y, x_1116.z) * vec4<f32>(x_1119.y, x_1119.y, x_1119.y, x_1119.y));
        let x_1122 : vec4<f32> = u_xlat10;
        let x_1123 : vec3<f32> = vec3<f32>(x_1122.y, x_1122.z, x_1122.w);
        let x_1124 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1123.x, x_1124.y, x_1123.y, x_1123.z);
        let x_1127 : f32 = u_xlat11.x;
        u_xlat13.y = x_1127;
        let x_1129 : vec4<f32> = u_xlat3;
        let x_1132 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_1135 : vec4<f32> = u_xlat13;
        u_xlat14 = ((vec4<f32>(x_1129.x, x_1129.y, x_1129.x, x_1129.y) * vec4<f32>(x_1132.x, x_1132.y, x_1132.x, x_1132.y)) + vec4<f32>(x_1135.x, x_1135.y, x_1135.z, x_1135.y));
        let x_1138 : vec4<f32> = u_xlat3;
        let x_1141 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_1144 : vec4<f32> = u_xlat13;
        u_xlat55 = ((vec2<f32>(x_1138.x, x_1138.y) * vec2<f32>(x_1141.x, x_1141.y)) + vec2<f32>(x_1144.w, x_1144.y));
        let x_1148 : f32 = u_xlat13.y;
        u_xlat10.y = x_1148;
        let x_1151 : f32 = u_xlat11.z;
        u_xlat13.y = x_1151;
        let x_1153 : vec4<f32> = u_xlat3;
        let x_1156 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_1159 : vec4<f32> = u_xlat13;
        u_xlat15 = ((vec4<f32>(x_1153.x, x_1153.y, x_1153.x, x_1153.y) * vec4<f32>(x_1156.x, x_1156.y, x_1156.x, x_1156.y)) + vec4<f32>(x_1159.x, x_1159.y, x_1159.z, x_1159.y));
        let x_1162 : vec4<f32> = u_xlat3;
        let x_1165 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_1168 : vec4<f32> = u_xlat13;
        let x_1170 : vec2<f32> = ((vec2<f32>(x_1162.x, x_1162.y) * vec2<f32>(x_1165.x, x_1165.y)) + vec2<f32>(x_1168.w, x_1168.y));
        let x_1171 : vec4<f32> = u_xlat16;
        u_xlat16 = vec4<f32>(x_1170.x, x_1170.y, x_1171.z, x_1171.w);
        let x_1174 : f32 = u_xlat13.y;
        u_xlat10.z = x_1174;
        let x_1177 : vec4<f32> = u_xlat3;
        let x_1180 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_1183 : vec4<f32> = u_xlat10;
        u_xlat17 = ((vec4<f32>(x_1177.x, x_1177.y, x_1177.x, x_1177.y) * vec4<f32>(x_1180.x, x_1180.y, x_1180.x, x_1180.y)) + vec4<f32>(x_1183.x, x_1183.y, x_1183.x, x_1183.z));
        let x_1187 : f32 = u_xlat11.w;
        u_xlat13.y = x_1187;
        let x_1190 : vec4<f32> = u_xlat3;
        let x_1193 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_1196 : vec4<f32> = u_xlat13;
        u_xlat18 = ((vec4<f32>(x_1190.x, x_1190.y, x_1190.x, x_1190.y) * vec4<f32>(x_1193.x, x_1193.y, x_1193.x, x_1193.y)) + vec4<f32>(x_1196.x, x_1196.y, x_1196.z, x_1196.y));
        let x_1200 : vec4<f32> = u_xlat3;
        let x_1203 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_1206 : vec4<f32> = u_xlat13;
        u_xlat36 = ((vec2<f32>(x_1200.x, x_1200.y) * vec2<f32>(x_1203.x, x_1203.y)) + vec2<f32>(x_1206.w, x_1206.y));
        let x_1210 : f32 = u_xlat13.y;
        u_xlat10.w = x_1210;
        let x_1213 : vec4<f32> = u_xlat3;
        let x_1216 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_1219 : vec4<f32> = u_xlat10;
        u_xlat68 = ((vec2<f32>(x_1213.x, x_1213.y) * vec2<f32>(x_1216.x, x_1216.y)) + vec2<f32>(x_1219.x, x_1219.w));
        let x_1222 : vec4<f32> = u_xlat13;
        let x_1223 : vec3<f32> = vec3<f32>(x_1222.x, x_1222.z, x_1222.w);
        let x_1224 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1223.x, x_1224.y, x_1223.y, x_1223.z);
        let x_1226 : vec4<f32> = u_xlat3;
        let x_1229 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_1232 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1226.x, x_1226.y, x_1226.x, x_1226.y) * vec4<f32>(x_1229.x, x_1229.y, x_1229.x, x_1229.y)) + vec4<f32>(x_1232.x, x_1232.y, x_1232.z, x_1232.y));
        let x_1236 : vec4<f32> = u_xlat3;
        let x_1239 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_1242 : vec4<f32> = u_xlat11;
        u_xlat63 = ((vec2<f32>(x_1236.x, x_1236.y) * vec2<f32>(x_1239.x, x_1239.y)) + vec2<f32>(x_1242.w, x_1242.y));
        let x_1246 : f32 = u_xlat10.x;
        u_xlat11.x = x_1246;
        let x_1248 : vec4<f32> = u_xlat3;
        let x_1251 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_1254 : vec4<f32> = u_xlat11;
        let x_1256 : vec2<f32> = ((vec2<f32>(x_1248.x, x_1248.y) * vec2<f32>(x_1251.x, x_1251.y)) + vec2<f32>(x_1254.x, x_1254.y));
        let x_1257 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_1256.x, x_1256.y, x_1257.z, x_1257.w);
        let x_1260 : vec4<f32> = u_xlat9;
        let x_1262 : vec4<f32> = u_xlat12;
        u_xlat19 = (vec4<f32>(x_1260.x, x_1260.x, x_1260.x, x_1260.x) * x_1262);
        let x_1265 : vec4<f32> = u_xlat9;
        let x_1267 : vec4<f32> = u_xlat12;
        u_xlat20 = (vec4<f32>(x_1265.y, x_1265.y, x_1265.y, x_1265.y) * x_1267);
        let x_1270 : vec4<f32> = u_xlat9;
        let x_1272 : vec4<f32> = u_xlat12;
        u_xlat21 = (vec4<f32>(x_1270.z, x_1270.z, x_1270.z, x_1270.z) * x_1272);
        let x_1274 : vec4<f32> = u_xlat9;
        let x_1276 : vec4<f32> = u_xlat12;
        u_xlat9 = (vec4<f32>(x_1274.w, x_1274.w, x_1274.w, x_1274.w) * x_1276);
        let x_1279 : vec4<f32> = u_xlat14;
        let x_1280 : vec2<f32> = vec2<f32>(x_1279.x, x_1279.y);
        let x_1282 : f32 = u_xlat2.z;
        txVec13 = vec3<f32>(x_1280.x, x_1280.y, x_1282);
        let x_1289 : vec3<f32> = txVec13;
        let x_1291 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1289.xy, x_1289.z);
        u_xlat80 = x_1291;
        let x_1293 : vec4<f32> = u_xlat14;
        let x_1294 : vec2<f32> = vec2<f32>(x_1293.z, x_1293.w);
        let x_1296 : f32 = u_xlat2.z;
        txVec14 = vec3<f32>(x_1294.x, x_1294.y, x_1296);
        let x_1304 : vec3<f32> = txVec14;
        let x_1306 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1304.xy, x_1304.z);
        u_xlat82 = x_1306;
        let x_1307 : f32 = u_xlat82;
        let x_1309 : f32 = u_xlat19.y;
        u_xlat82 = (x_1307 * x_1309);
        let x_1312 : f32 = u_xlat19.x;
        let x_1313 : f32 = u_xlat80;
        let x_1315 : f32 = u_xlat82;
        u_xlat80 = ((x_1312 * x_1313) + x_1315);
        let x_1318 : vec2<f32> = u_xlat55;
        let x_1320 : f32 = u_xlat2.z;
        txVec15 = vec3<f32>(x_1318.x, x_1318.y, x_1320);
        let x_1327 : vec3<f32> = txVec15;
        let x_1329 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1327.xy, x_1327.z);
        u_xlat55.x = x_1329;
        let x_1332 : f32 = u_xlat19.z;
        let x_1334 : f32 = u_xlat55.x;
        let x_1336 : f32 = u_xlat80;
        u_xlat80 = ((x_1332 * x_1334) + x_1336);
        let x_1339 : vec4<f32> = u_xlat17;
        let x_1340 : vec2<f32> = vec2<f32>(x_1339.x, x_1339.y);
        let x_1342 : f32 = u_xlat2.z;
        txVec16 = vec3<f32>(x_1340.x, x_1340.y, x_1342);
        let x_1349 : vec3<f32> = txVec16;
        let x_1351 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1349.xy, x_1349.z);
        u_xlat55.x = x_1351;
        let x_1354 : f32 = u_xlat19.w;
        let x_1356 : f32 = u_xlat55.x;
        let x_1358 : f32 = u_xlat80;
        u_xlat80 = ((x_1354 * x_1356) + x_1358);
        let x_1361 : vec4<f32> = u_xlat15;
        let x_1362 : vec2<f32> = vec2<f32>(x_1361.x, x_1361.y);
        let x_1364 : f32 = u_xlat2.z;
        txVec17 = vec3<f32>(x_1362.x, x_1362.y, x_1364);
        let x_1371 : vec3<f32> = txVec17;
        let x_1373 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1371.xy, x_1371.z);
        u_xlat55.x = x_1373;
        let x_1376 : f32 = u_xlat20.x;
        let x_1378 : f32 = u_xlat55.x;
        let x_1380 : f32 = u_xlat80;
        u_xlat80 = ((x_1376 * x_1378) + x_1380);
        let x_1383 : vec4<f32> = u_xlat15;
        let x_1384 : vec2<f32> = vec2<f32>(x_1383.z, x_1383.w);
        let x_1386 : f32 = u_xlat2.z;
        txVec18 = vec3<f32>(x_1384.x, x_1384.y, x_1386);
        let x_1393 : vec3<f32> = txVec18;
        let x_1395 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1393.xy, x_1393.z);
        u_xlat55.x = x_1395;
        let x_1398 : f32 = u_xlat20.y;
        let x_1400 : f32 = u_xlat55.x;
        let x_1402 : f32 = u_xlat80;
        u_xlat80 = ((x_1398 * x_1400) + x_1402);
        let x_1405 : vec4<f32> = u_xlat16;
        let x_1406 : vec2<f32> = vec2<f32>(x_1405.x, x_1405.y);
        let x_1408 : f32 = u_xlat2.z;
        txVec19 = vec3<f32>(x_1406.x, x_1406.y, x_1408);
        let x_1415 : vec3<f32> = txVec19;
        let x_1417 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1415.xy, x_1415.z);
        u_xlat55.x = x_1417;
        let x_1420 : f32 = u_xlat20.z;
        let x_1422 : f32 = u_xlat55.x;
        let x_1424 : f32 = u_xlat80;
        u_xlat80 = ((x_1420 * x_1422) + x_1424);
        let x_1427 : vec4<f32> = u_xlat17;
        let x_1428 : vec2<f32> = vec2<f32>(x_1427.z, x_1427.w);
        let x_1430 : f32 = u_xlat2.z;
        txVec20 = vec3<f32>(x_1428.x, x_1428.y, x_1430);
        let x_1437 : vec3<f32> = txVec20;
        let x_1439 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1437.xy, x_1437.z);
        u_xlat55.x = x_1439;
        let x_1442 : f32 = u_xlat20.w;
        let x_1444 : f32 = u_xlat55.x;
        let x_1446 : f32 = u_xlat80;
        u_xlat80 = ((x_1442 * x_1444) + x_1446);
        let x_1449 : vec4<f32> = u_xlat18;
        let x_1450 : vec2<f32> = vec2<f32>(x_1449.x, x_1449.y);
        let x_1452 : f32 = u_xlat2.z;
        txVec21 = vec3<f32>(x_1450.x, x_1450.y, x_1452);
        let x_1459 : vec3<f32> = txVec21;
        let x_1461 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1459.xy, x_1459.z);
        u_xlat55.x = x_1461;
        let x_1464 : f32 = u_xlat21.x;
        let x_1466 : f32 = u_xlat55.x;
        let x_1468 : f32 = u_xlat80;
        u_xlat80 = ((x_1464 * x_1466) + x_1468);
        let x_1471 : vec4<f32> = u_xlat18;
        let x_1472 : vec2<f32> = vec2<f32>(x_1471.z, x_1471.w);
        let x_1474 : f32 = u_xlat2.z;
        txVec22 = vec3<f32>(x_1472.x, x_1472.y, x_1474);
        let x_1481 : vec3<f32> = txVec22;
        let x_1483 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1481.xy, x_1481.z);
        u_xlat55.x = x_1483;
        let x_1486 : f32 = u_xlat21.y;
        let x_1488 : f32 = u_xlat55.x;
        let x_1490 : f32 = u_xlat80;
        u_xlat80 = ((x_1486 * x_1488) + x_1490);
        let x_1493 : vec2<f32> = u_xlat36;
        let x_1495 : f32 = u_xlat2.z;
        txVec23 = vec3<f32>(x_1493.x, x_1493.y, x_1495);
        let x_1502 : vec3<f32> = txVec23;
        let x_1504 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1502.xy, x_1502.z);
        u_xlat55.x = x_1504;
        let x_1507 : f32 = u_xlat21.z;
        let x_1509 : f32 = u_xlat55.x;
        let x_1511 : f32 = u_xlat80;
        u_xlat80 = ((x_1507 * x_1509) + x_1511);
        let x_1514 : vec2<f32> = u_xlat68;
        let x_1516 : f32 = u_xlat2.z;
        txVec24 = vec3<f32>(x_1514.x, x_1514.y, x_1516);
        let x_1523 : vec3<f32> = txVec24;
        let x_1525 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1523.xy, x_1523.z);
        u_xlat55.x = x_1525;
        let x_1528 : f32 = u_xlat21.w;
        let x_1530 : f32 = u_xlat55.x;
        let x_1532 : f32 = u_xlat80;
        u_xlat80 = ((x_1528 * x_1530) + x_1532);
        let x_1535 : vec4<f32> = u_xlat13;
        let x_1536 : vec2<f32> = vec2<f32>(x_1535.x, x_1535.y);
        let x_1538 : f32 = u_xlat2.z;
        txVec25 = vec3<f32>(x_1536.x, x_1536.y, x_1538);
        let x_1545 : vec3<f32> = txVec25;
        let x_1547 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1545.xy, x_1545.z);
        u_xlat55.x = x_1547;
        let x_1550 : f32 = u_xlat9.x;
        let x_1552 : f32 = u_xlat55.x;
        let x_1554 : f32 = u_xlat80;
        u_xlat80 = ((x_1550 * x_1552) + x_1554);
        let x_1557 : vec4<f32> = u_xlat13;
        let x_1558 : vec2<f32> = vec2<f32>(x_1557.z, x_1557.w);
        let x_1560 : f32 = u_xlat2.z;
        txVec26 = vec3<f32>(x_1558.x, x_1558.y, x_1560);
        let x_1567 : vec3<f32> = txVec26;
        let x_1569 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1567.xy, x_1567.z);
        u_xlat55.x = x_1569;
        let x_1572 : f32 = u_xlat9.y;
        let x_1574 : f32 = u_xlat55.x;
        let x_1576 : f32 = u_xlat80;
        u_xlat80 = ((x_1572 * x_1574) + x_1576);
        let x_1579 : vec2<f32> = u_xlat63;
        let x_1581 : f32 = u_xlat2.z;
        txVec27 = vec3<f32>(x_1579.x, x_1579.y, x_1581);
        let x_1588 : vec3<f32> = txVec27;
        let x_1590 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1588.xy, x_1588.z);
        u_xlat55.x = x_1590;
        let x_1593 : f32 = u_xlat9.z;
        let x_1595 : f32 = u_xlat55.x;
        let x_1597 : f32 = u_xlat80;
        u_xlat80 = ((x_1593 * x_1595) + x_1597);
        let x_1600 : vec4<f32> = u_xlat3;
        let x_1601 : vec2<f32> = vec2<f32>(x_1600.x, x_1600.y);
        let x_1603 : f32 = u_xlat2.z;
        txVec28 = vec3<f32>(x_1601.x, x_1601.y, x_1603);
        let x_1610 : vec3<f32> = txVec28;
        let x_1612 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1610.xy, x_1610.z);
        u_xlat3.x = x_1612;
        let x_1615 : f32 = u_xlat9.w;
        let x_1617 : f32 = u_xlat3.x;
        let x_1619 : f32 = u_xlat80;
        u_xlat79 = ((x_1615 * x_1617) + x_1619);
      }
    }
  } else {
    let x_1623 : vec3<f32> = u_xlat2;
    let x_1624 : vec2<f32> = vec2<f32>(x_1623.x, x_1623.y);
    let x_1626 : f32 = u_xlat2.z;
    txVec29 = vec3<f32>(x_1624.x, x_1624.y, x_1626);
    let x_1633 : vec3<f32> = txVec29;
    let x_1635 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1633.xy, x_1633.z);
    u_xlat79 = x_1635;
  }
  let x_1637 : f32 = x_355.x_MainLightShadowParams.x;
  u_xlat2.x = (-(x_1637) + 1.0f);
  let x_1641 : f32 = u_xlat79;
  let x_1643 : f32 = x_355.x_MainLightShadowParams.x;
  let x_1646 : f32 = u_xlat2.x;
  u_xlat79 = ((x_1641 * x_1643) + x_1646);
  let x_1650 : f32 = u_xlat2.z;
  u_xlatb28 = (0.0f >= x_1650);
  let x_1654 : f32 = u_xlat2.z;
  u_xlatb54 = (x_1654 >= 1.0f);
  let x_1656 : bool = u_xlatb54;
  let x_1657 : bool = u_xlatb28;
  u_xlatb28 = (x_1656 | x_1657);
  let x_1659 : bool = u_xlatb28;
  let x_1660 : f32 = u_xlat79;
  u_xlat79 = select(x_1660, 1.0f, x_1659);
  let x_1662 : vec3<f32> = u_xlat1;
  let x_1664 : vec4<f32> = x_147.x_MainLightPosition;
  u_xlat1.x = dot(x_1662, -(vec3<f32>(x_1664.x, x_1664.y, x_1664.z)));
  let x_1670 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1670, 0.0f, 1.0f);
  let x_1674 : f32 = u_xlat79;
  let x_1677 : vec4<f32> = x_147.x_MainLightColor;
  u_xlat27 = (vec3<f32>(x_1674, x_1674, x_1674) * vec3<f32>(x_1677.x, x_1677.y, x_1677.z));
  let x_1680 : vec3<f32> = u_xlat27;
  let x_1681 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_1680 * vec3<f32>(x_1681.x, x_1681.x, x_1681.x));
  let x_1684 : vec3<f32> = u_xlat1;
  let x_1685 : vec4<f32> = u_xlat6;
  u_xlat1 = (x_1684 * vec3<f32>(x_1685.x, x_1685.y, x_1685.z));
  let x_1689 : f32 = x_83.unity_LODFade.x;
  u_xlatb79 = (x_1689 < 0.0f);
  let x_1693 : f32 = x_83.unity_LODFade.x;
  u_xlat28 = (x_1693 + 1.0f);
  let x_1695 : bool = u_xlatb79;
  if (x_1695) {
    let x_1700 : f32 = u_xlat28;
    x_1697 = x_1700;
  } else {
    let x_1703 : f32 = x_83.unity_LODFade.x;
    x_1697 = x_1703;
  }
  let x_1704 : f32 = x_1697;
  u_xlat79 = x_1704;
  let x_1705 : f32 = u_xlat79;
  u_xlatb28 = (0.5f >= x_1705);
  let x_1707 : vec3<f32> = u_xlat5;
  let x_1710 : vec4<f32> = x_147.x_ScreenParams;
  let x_1712 : vec3<f32> = (abs(x_1707) * vec3<f32>(x_1710.x, x_1710.y, x_1710.x));
  let x_1713 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1712.x, x_1712.y, x_1712.z, x_1713.w);
  let x_1718 : vec4<f32> = u_xlat3;
  u_xlatu3 = vec3<u32>(vec3<f32>(x_1718.x, x_1718.y, x_1718.z));
  let x_1724 : u32 = u_xlatu3.z;
  u_xlatu54 = (x_1724 * 1025u);
  let x_1728 : u32 = u_xlatu54;
  u_xlatu80 = (x_1728 >> 6u);
  let x_1733 : u32 = u_xlatu80;
  let x_1734 : u32 = u_xlatu54;
  u_xlati54 = bitcast<i32>((x_1733 ^ x_1734));
  let x_1737 : i32 = u_xlati54;
  u_xlatu54 = (bitcast<u32>(x_1737) * 9u);
  let x_1741 : u32 = u_xlatu54;
  u_xlatu80 = (x_1741 >> 11u);
  let x_1744 : u32 = u_xlatu80;
  let x_1745 : u32 = u_xlatu54;
  u_xlati54 = bitcast<i32>((x_1744 ^ x_1745));
  let x_1748 : i32 = u_xlati54;
  u_xlati54 = (x_1748 * 32769i);
  let x_1751 : i32 = u_xlati54;
  let x_1754 : u32 = u_xlatu3.y;
  u_xlati54 = bitcast<i32>((bitcast<u32>(x_1751) ^ x_1754));
  let x_1757 : i32 = u_xlati54;
  u_xlatu54 = (bitcast<u32>(x_1757) * 1025u);
  let x_1760 : u32 = u_xlatu54;
  u_xlatu80 = (x_1760 >> 6u);
  let x_1762 : u32 = u_xlatu80;
  let x_1763 : u32 = u_xlatu54;
  u_xlati54 = bitcast<i32>((x_1762 ^ x_1763));
  let x_1766 : i32 = u_xlati54;
  u_xlatu54 = (bitcast<u32>(x_1766) * 9u);
  let x_1769 : u32 = u_xlatu54;
  u_xlatu80 = (x_1769 >> 11u);
  let x_1771 : u32 = u_xlatu80;
  let x_1772 : u32 = u_xlatu54;
  u_xlati54 = bitcast<i32>((x_1771 ^ x_1772));
  let x_1775 : i32 = u_xlati54;
  u_xlati54 = (x_1775 * 32769i);
  let x_1777 : i32 = u_xlati54;
  let x_1780 : u32 = u_xlatu3.x;
  u_xlati54 = bitcast<i32>((bitcast<u32>(x_1777) ^ x_1780));
  let x_1783 : i32 = u_xlati54;
  u_xlatu54 = (bitcast<u32>(x_1783) * 1025u);
  let x_1786 : u32 = u_xlatu54;
  u_xlatu80 = (x_1786 >> 6u);
  let x_1788 : u32 = u_xlatu80;
  let x_1789 : u32 = u_xlatu54;
  u_xlati54 = bitcast<i32>((x_1788 ^ x_1789));
  let x_1792 : i32 = u_xlati54;
  u_xlatu54 = (bitcast<u32>(x_1792) * 9u);
  let x_1795 : u32 = u_xlatu54;
  u_xlatu80 = (x_1795 >> 11u);
  let x_1797 : u32 = u_xlatu80;
  let x_1798 : u32 = u_xlatu54;
  u_xlati54 = bitcast<i32>((x_1797 ^ x_1798));
  let x_1801 : i32 = u_xlati54;
  u_xlati54 = (x_1801 * 32769i);
  param = 1065353216i;
  let x_1808 : i32 = u_xlati54;
  param_1 = x_1808;
  param_2 = 0i;
  param_3 = 23i;
  let x_1811 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlat54 = bitcast<f32>(x_1811);
  let x_1813 : f32 = u_xlat54;
  u_xlat54 = (x_1813 + -1.0f);
  let x_1815 : f32 = u_xlat54;
  u_xlat80 = (-(x_1815) + 1.0f);
  let x_1818 : bool = u_xlatb28;
  let x_1819 : f32 = u_xlat54;
  let x_1820 : f32 = u_xlat80;
  u_xlat28 = select(x_1820, x_1819, x_1818);
  let x_1822 : f32 = u_xlat79;
  let x_1824 : f32 = u_xlat28;
  u_xlat79 = ((x_1822 * 2.0f) + -(x_1824));
  let x_1827 : f32 = u_xlat79;
  let x_1829 : f32 = u_xlat6.w;
  u_xlat28 = (x_1827 * x_1829);
  let x_1831 : f32 = u_xlat28;
  u_xlatb54 = (x_1831 >= 0.40000000596046447754f);
  let x_1834 : bool = u_xlatb54;
  let x_1835 : f32 = u_xlat28;
  u_xlat54 = select(0.0f, x_1835, x_1834);
  let x_1838 : f32 = u_xlat6.w;
  let x_1839 : f32 = u_xlat79;
  u_xlat79 = ((x_1838 * x_1839) + -0.40000000596046447754f);
  let x_1843 : f32 = u_xlat28;
  u_xlat80 = dpdxCoarse(x_1843);
  let x_1845 : f32 = u_xlat28;
  u_xlat28 = dpdyCoarse(x_1845);
  let x_1847 : f32 = u_xlat28;
  let x_1849 : f32 = u_xlat80;
  u_xlat28 = (abs(x_1847) + abs(x_1849));
  let x_1852 : f32 = u_xlat28;
  u_xlat28 = max(x_1852, 0.00009999999747378752f);
  let x_1855 : f32 = u_xlat79;
  let x_1856 : f32 = u_xlat28;
  u_xlat79 = (x_1855 / x_1856);
  let x_1858 : f32 = u_xlat79;
  u_xlat79 = (x_1858 + 0.5f);
  let x_1860 : f32 = u_xlat79;
  u_xlat79 = clamp(x_1860, 0.0f, 1.0f);
  let x_1863 : f32 = x_147.x_AlphaToMaskAvailable;
  u_xlatb28 = !((x_1863 == 0.0f));
  let x_1865 : bool = u_xlatb28;
  let x_1866 : f32 = u_xlat79;
  let x_1867 : f32 = u_xlat54;
  u_xlat79 = select(x_1867, x_1866, x_1865);
  let x_1869 : f32 = u_xlat79;
  u_xlat54 = (x_1869 + -0.00009999999747378752f);
  let x_1872 : f32 = u_xlat54;
  u_xlatb54 = (x_1872 < 0.0f);
  let x_1874 : bool = u_xlatb54;
  if (((select(0i, 1i, x_1874) * -1i) != 0i)) {
    discard;
  }
  let x_1882 : vec3<f32> = u_xlat26;
  let x_1883 : vec3<f32> = u_xlat34;
  u_xlat26 = (x_1882 * vec3<f32>(x_1883.y, x_1883.y, x_1883.y));
  let x_1886 : vec3<f32> = u_xlat34;
  let x_1888 : vec4<f32> = vs_INTERP4;
  let x_1891 : vec3<f32> = u_xlat26;
  u_xlat26 = ((vec3<f32>(x_1886.x, x_1886.x, x_1886.x) * vec3<f32>(x_1888.x, x_1888.y, x_1888.z)) + x_1891);
  let x_1893 : vec3<f32> = u_xlat34;
  let x_1895 : vec3<f32> = vs_INTERP9;
  let x_1897 : vec3<f32> = u_xlat26;
  u_xlat26 = ((vec3<f32>(x_1893.z, x_1893.z, x_1893.z) * x_1895) + x_1897);
  let x_1899 : vec3<f32> = u_xlat26;
  let x_1900 : vec3<f32> = u_xlat26;
  u_xlat54 = dot(x_1899, x_1900);
  let x_1902 : f32 = u_xlat54;
  u_xlat54 = inverseSqrt(x_1902);
  let x_1904 : vec3<f32> = u_xlat26;
  let x_1905 : f32 = u_xlat54;
  let x_1907 : vec3<f32> = (x_1904 * vec3<f32>(x_1905, x_1905, x_1905));
  let x_1908 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1907.x, x_1907.y, x_1907.z, x_1908.w);
  let x_1911 : f32 = vs_INTERP8.y;
  let x_1913 : f32 = x_147.unity_MatrixV[1i].z;
  u_xlat26.x = (x_1911 * x_1913);
  let x_1917 : f32 = x_147.unity_MatrixV[0i].z;
  let x_1919 : f32 = vs_INTERP8.x;
  let x_1922 : f32 = u_xlat26.x;
  u_xlat26.x = ((x_1917 * x_1919) + x_1922);
  let x_1926 : f32 = x_147.unity_MatrixV[2i].z;
  let x_1928 : f32 = vs_INTERP8.z;
  let x_1931 : f32 = u_xlat26.x;
  u_xlat26.x = ((x_1926 * x_1928) + x_1931);
  let x_1935 : f32 = u_xlat26.x;
  let x_1937 : f32 = x_147.unity_MatrixV[3i].z;
  u_xlat26.x = (x_1935 + x_1937);
  let x_1941 : f32 = u_xlat26.x;
  let x_1944 : f32 = x_147.x_ProjectionParams.y;
  u_xlat26.x = (-(x_1941) + -(x_1944));
  let x_1949 : f32 = u_xlat26.x;
  u_xlat26.x = max(x_1949, 0.0f);
  let x_1953 : f32 = u_xlat26.x;
  let x_1955 : f32 = x_147.unity_FogParams.x;
  u_xlat26.x = (x_1953 * x_1955);
  u_xlat3.w = 1.0f;
  let x_1961 : vec4<f32> = x_83.unity_SHAr;
  let x_1962 : vec4<f32> = u_xlat3;
  u_xlat5.x = dot(x_1961, x_1962);
  let x_1967 : vec4<f32> = x_83.unity_SHAg;
  let x_1968 : vec4<f32> = u_xlat3;
  u_xlat5.y = dot(x_1967, x_1968);
  let x_1973 : vec4<f32> = x_83.unity_SHAb;
  let x_1974 : vec4<f32> = u_xlat3;
  u_xlat5.z = dot(x_1973, x_1974);
  let x_1977 : vec4<f32> = u_xlat3;
  let x_1979 : vec4<f32> = u_xlat3;
  u_xlat6 = (vec4<f32>(x_1977.y, x_1977.z, x_1977.z, x_1977.x) * vec4<f32>(x_1979.x, x_1979.y, x_1979.z, x_1979.z));
  let x_1984 : vec4<f32> = x_83.unity_SHBr;
  let x_1985 : vec4<f32> = u_xlat6;
  u_xlat9.x = dot(x_1984, x_1985);
  let x_1990 : vec4<f32> = x_83.unity_SHBg;
  let x_1991 : vec4<f32> = u_xlat6;
  u_xlat9.y = dot(x_1990, x_1991);
  let x_1995 : vec4<f32> = x_83.unity_SHBb;
  let x_1996 : vec4<f32> = u_xlat6;
  u_xlat9.z = dot(x_1995, x_1996);
  let x_2001 : f32 = u_xlat3.y;
  let x_2003 : f32 = u_xlat3.y;
  u_xlat52.x = (x_2001 * x_2003);
  let x_2007 : f32 = u_xlat3.x;
  let x_2009 : f32 = u_xlat3.x;
  let x_2012 : f32 = u_xlat52.x;
  u_xlat52.x = ((x_2007 * x_2009) + -(x_2012));
  let x_2018 : vec4<f32> = x_83.unity_SHC;
  let x_2020 : vec2<f32> = u_xlat52;
  let x_2023 : vec4<f32> = u_xlat9;
  let x_2025 : vec3<f32> = ((vec3<f32>(x_2018.x, x_2018.y, x_2018.z) * vec3<f32>(x_2020.x, x_2020.x, x_2020.x)) + vec3<f32>(x_2023.x, x_2023.y, x_2023.z));
  let x_2026 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2025.x, x_2025.y, x_2025.z, x_2026.w);
  let x_2028 : vec3<f32> = u_xlat5;
  let x_2029 : vec4<f32> = u_xlat6;
  u_xlat5 = (x_2028 + vec3<f32>(x_2029.x, x_2029.y, x_2029.z));
  let x_2032 : vec3<f32> = u_xlat5;
  u_xlat5 = max(x_2032, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_2036 : f32 = u_xlat8.x;
  u_xlat8.x = x_2036;
  let x_2039 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_2039, 0.0f, 1.0f);
  let x_2042 : f32 = u_xlat79;
  u_xlat79 = x_2042;
  let x_2043 : f32 = u_xlat79;
  u_xlat79 = clamp(x_2043, 0.0f, 1.0f);
  let x_2045 : vec4<f32> = u_xlat7;
  let x_2049 : vec3<f32> = (vec3<f32>(x_2045.x, x_2045.y, x_2045.z) * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_2050 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2049.x, x_2049.y, x_2049.z, x_2050.w);
  let x_2053 : f32 = u_xlat8.x;
  u_xlat52.x = (-(x_2053) + 1.0f);
  let x_2059 : f32 = u_xlat52.x;
  let x_2061 : f32 = u_xlat52.x;
  u_xlat78 = (x_2059 * x_2061);
  let x_2063 : f32 = u_xlat78;
  u_xlat78 = max(x_2063, 0.0078125f);
  let x_2066 : f32 = u_xlat78;
  let x_2067 : f32 = u_xlat78;
  u_xlat54 = (x_2066 * x_2067);
  let x_2070 : f32 = u_xlat8.x;
  u_xlat80 = (x_2070 + 0.04000002145767211914f);
  let x_2073 : f32 = u_xlat80;
  u_xlat80 = min(x_2073, 1.0f);
  let x_2076 : f32 = u_xlat78;
  u_xlat81 = ((x_2076 * 4.0f) + 2.0f);
  let x_2081 : f32 = vs_INTERP6.w;
  u_xlat82 = min(x_2081, 1.0f);
  let x_2083 : bool = u_xlatb0;
  if (x_2083) {
    let x_2087 : f32 = x_355.x_MainLightShadowParams.y;
    u_xlatb0 = (x_2087 == 1.0f);
    let x_2089 : bool = u_xlatb0;
    if (x_2089) {
      let x_2093 : vec4<f32> = vs_INTERP3;
      let x_2096 : vec4<f32> = x_355.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_2093.x, x_2093.y, x_2093.x, x_2093.y) + x_2096);
      let x_2099 : vec4<f32> = u_xlat7;
      let x_2100 : vec2<f32> = vec2<f32>(x_2099.x, x_2099.y);
      let x_2102 : f32 = vs_INTERP3.z;
      txVec30 = vec3<f32>(x_2100.x, x_2100.y, x_2102);
      let x_2109 : vec3<f32> = txVec30;
      let x_2111 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2109.xy, x_2109.z);
      u_xlat8.x = x_2111;
      let x_2114 : vec4<f32> = u_xlat7;
      let x_2115 : vec2<f32> = vec2<f32>(x_2114.z, x_2114.w);
      let x_2117 : f32 = vs_INTERP3.z;
      txVec31 = vec3<f32>(x_2115.x, x_2115.y, x_2117);
      let x_2124 : vec3<f32> = txVec31;
      let x_2126 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2124.xy, x_2124.z);
      u_xlat8.y = x_2126;
      let x_2128 : vec4<f32> = vs_INTERP3;
      let x_2131 : vec4<f32> = x_355.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_2128.x, x_2128.y, x_2128.x, x_2128.y) + x_2131);
      let x_2134 : vec4<f32> = u_xlat7;
      let x_2135 : vec2<f32> = vec2<f32>(x_2134.x, x_2134.y);
      let x_2137 : f32 = vs_INTERP3.z;
      txVec32 = vec3<f32>(x_2135.x, x_2135.y, x_2137);
      let x_2144 : vec3<f32> = txVec32;
      let x_2146 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2144.xy, x_2144.z);
      u_xlat8.z = x_2146;
      let x_2149 : vec4<f32> = u_xlat7;
      let x_2150 : vec2<f32> = vec2<f32>(x_2149.z, x_2149.w);
      let x_2152 : f32 = vs_INTERP3.z;
      txVec33 = vec3<f32>(x_2150.x, x_2150.y, x_2152);
      let x_2159 : vec3<f32> = txVec33;
      let x_2161 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2159.xy, x_2159.z);
      u_xlat8.w = x_2161;
      let x_2163 : vec4<f32> = u_xlat8;
      u_xlat0.x = dot(x_2163, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_2169 : f32 = x_355.x_MainLightShadowParams.y;
      u_xlatb83 = (x_2169 == 2.0f);
      let x_2171 : bool = u_xlatb83;
      if (x_2171) {
        let x_2174 : vec4<f32> = vs_INTERP3;
        let x_2177 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_2180 : vec2<f32> = ((vec2<f32>(x_2174.x, x_2174.y) * vec2<f32>(x_2177.z, x_2177.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2181 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2180.x, x_2180.y, x_2181.z, x_2181.w);
        let x_2183 : vec4<f32> = u_xlat7;
        let x_2185 : vec2<f32> = floor(vec2<f32>(x_2183.x, x_2183.y));
        let x_2186 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2185.x, x_2185.y, x_2186.z, x_2186.w);
        let x_2189 : vec4<f32> = vs_INTERP3;
        let x_2192 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_2195 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_2189.x, x_2189.y) * vec2<f32>(x_2192.z, x_2192.w)) + -(vec2<f32>(x_2195.x, x_2195.y)));
        let x_2199 : vec2<f32> = u_xlat59;
        u_xlat8 = (vec4<f32>(x_2199.x, x_2199.x, x_2199.y, x_2199.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2202 : vec4<f32> = u_xlat8;
        let x_2204 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2202.x, x_2202.x, x_2202.z, x_2202.z) * vec4<f32>(x_2204.x, x_2204.x, x_2204.z, x_2204.z));
        let x_2207 : vec4<f32> = u_xlat9;
        let x_2209 : vec2<f32> = (vec2<f32>(x_2207.y, x_2207.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_2210 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2209.x, x_2210.y, x_2209.y, x_2210.w);
        let x_2212 : vec4<f32> = u_xlat9;
        let x_2215 : vec2<f32> = u_xlat59;
        let x_2217 : vec2<f32> = ((vec2<f32>(x_2212.x, x_2212.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2215));
        let x_2218 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2217.x, x_2217.y, x_2218.z, x_2218.w);
        let x_2221 : vec2<f32> = u_xlat59;
        u_xlat61 = (-(x_2221) + vec2<f32>(1.0f, 1.0f));
        let x_2224 : vec2<f32> = u_xlat59;
        let x_2225 : vec2<f32> = min(x_2224, vec2<f32>(0.0f, 0.0f));
        let x_2226 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2225.x, x_2225.y, x_2226.z, x_2226.w);
        let x_2228 : vec4<f32> = u_xlat10;
        let x_2231 : vec4<f32> = u_xlat10;
        let x_2234 : vec2<f32> = u_xlat61;
        let x_2235 : vec2<f32> = ((-(vec2<f32>(x_2228.x, x_2228.y)) * vec2<f32>(x_2231.x, x_2231.y)) + x_2234);
        let x_2236 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2235.x, x_2235.y, x_2236.z, x_2236.w);
        let x_2238 : vec2<f32> = u_xlat59;
        u_xlat59 = max(x_2238, vec2<f32>(0.0f, 0.0f));
        let x_2240 : vec2<f32> = u_xlat59;
        let x_2242 : vec2<f32> = u_xlat59;
        let x_2244 : vec4<f32> = u_xlat8;
        u_xlat59 = ((-(x_2240) * x_2242) + vec2<f32>(x_2244.y, x_2244.w));
        let x_2247 : vec4<f32> = u_xlat10;
        let x_2249 : vec2<f32> = (vec2<f32>(x_2247.x, x_2247.y) + vec2<f32>(1.0f, 1.0f));
        let x_2250 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2249.x, x_2249.y, x_2250.z, x_2250.w);
        let x_2252 : vec2<f32> = u_xlat59;
        u_xlat59 = (x_2252 + vec2<f32>(1.0f, 1.0f));
        let x_2254 : vec4<f32> = u_xlat9;
        let x_2256 : vec2<f32> = (vec2<f32>(x_2254.x, x_2254.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2257 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2256.x, x_2256.y, x_2257.z, x_2257.w);
        let x_2259 : vec2<f32> = u_xlat61;
        let x_2260 : vec2<f32> = (x_2259 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2261 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2260.x, x_2260.y, x_2261.z, x_2261.w);
        let x_2263 : vec4<f32> = u_xlat10;
        let x_2265 : vec2<f32> = (vec2<f32>(x_2263.x, x_2263.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2266 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2265.x, x_2265.y, x_2266.z, x_2266.w);
        let x_2268 : vec2<f32> = u_xlat59;
        let x_2269 : vec2<f32> = (x_2268 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2270 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2269.x, x_2269.y, x_2270.z, x_2270.w);
        let x_2272 : vec4<f32> = u_xlat8;
        u_xlat59 = (vec2<f32>(x_2272.y, x_2272.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2276 : f32 = u_xlat10.x;
        u_xlat11.z = x_2276;
        let x_2279 : f32 = u_xlat59.x;
        u_xlat11.w = x_2279;
        let x_2282 : f32 = u_xlat12.x;
        u_xlat9.z = x_2282;
        let x_2285 : f32 = u_xlat8.x;
        u_xlat9.w = x_2285;
        let x_2287 : vec4<f32> = u_xlat9;
        let x_2289 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_2287.z, x_2287.w, x_2287.x, x_2287.z) + vec4<f32>(x_2289.z, x_2289.w, x_2289.x, x_2289.z));
        let x_2293 : f32 = u_xlat11.y;
        u_xlat10.z = x_2293;
        let x_2296 : f32 = u_xlat59.y;
        u_xlat10.w = x_2296;
        let x_2299 : f32 = u_xlat9.y;
        u_xlat12.z = x_2299;
        let x_2302 : f32 = u_xlat8.z;
        u_xlat12.w = x_2302;
        let x_2304 : vec4<f32> = u_xlat10;
        let x_2306 : vec4<f32> = u_xlat12;
        let x_2308 : vec3<f32> = (vec3<f32>(x_2304.z, x_2304.y, x_2304.w) + vec3<f32>(x_2306.z, x_2306.y, x_2306.w));
        let x_2309 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2308.x, x_2308.y, x_2308.z, x_2309.w);
        let x_2311 : vec4<f32> = u_xlat9;
        let x_2313 : vec4<f32> = u_xlat13;
        let x_2315 : vec3<f32> = (vec3<f32>(x_2311.x, x_2311.z, x_2311.w) / vec3<f32>(x_2313.z, x_2313.w, x_2313.y));
        let x_2316 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2315.x, x_2315.y, x_2315.z, x_2316.w);
        let x_2318 : vec4<f32> = u_xlat9;
        let x_2320 : vec3<f32> = (vec3<f32>(x_2318.x, x_2318.y, x_2318.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2321 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2320.x, x_2320.y, x_2320.z, x_2321.w);
        let x_2323 : vec4<f32> = u_xlat12;
        let x_2325 : vec4<f32> = u_xlat8;
        let x_2327 : vec3<f32> = (vec3<f32>(x_2323.z, x_2323.y, x_2323.w) / vec3<f32>(x_2325.x, x_2325.y, x_2325.z));
        let x_2328 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2327.x, x_2327.y, x_2327.z, x_2328.w);
        let x_2330 : vec4<f32> = u_xlat10;
        let x_2332 : vec3<f32> = (vec3<f32>(x_2330.x, x_2330.y, x_2330.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2333 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2332.x, x_2332.y, x_2332.z, x_2333.w);
        let x_2335 : vec4<f32> = u_xlat9;
        let x_2338 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_2340 : vec3<f32> = (vec3<f32>(x_2335.y, x_2335.x, x_2335.z) * vec3<f32>(x_2338.x, x_2338.x, x_2338.x));
        let x_2341 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2340.x, x_2340.y, x_2340.z, x_2341.w);
        let x_2343 : vec4<f32> = u_xlat10;
        let x_2346 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_2348 : vec3<f32> = (vec3<f32>(x_2343.x, x_2343.y, x_2343.z) * vec3<f32>(x_2346.y, x_2346.y, x_2346.y));
        let x_2349 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2348.x, x_2348.y, x_2348.z, x_2349.w);
        let x_2352 : f32 = u_xlat10.x;
        u_xlat9.w = x_2352;
        let x_2354 : vec4<f32> = u_xlat7;
        let x_2357 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_2360 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_2354.x, x_2354.y, x_2354.x, x_2354.y) * vec4<f32>(x_2357.x, x_2357.y, x_2357.x, x_2357.y)) + vec4<f32>(x_2360.y, x_2360.w, x_2360.x, x_2360.w));
        let x_2363 : vec4<f32> = u_xlat7;
        let x_2366 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_2369 : vec4<f32> = u_xlat9;
        u_xlat59 = ((vec2<f32>(x_2363.x, x_2363.y) * vec2<f32>(x_2366.x, x_2366.y)) + vec2<f32>(x_2369.z, x_2369.w));
        let x_2373 : f32 = u_xlat9.y;
        u_xlat10.w = x_2373;
        let x_2375 : vec4<f32> = u_xlat10;
        let x_2376 : vec2<f32> = vec2<f32>(x_2375.y, x_2375.z);
        let x_2377 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2377.x, x_2376.x, x_2377.z, x_2376.y);
        let x_2379 : vec4<f32> = u_xlat7;
        let x_2382 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_2385 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_2379.x, x_2379.y, x_2379.x, x_2379.y) * vec4<f32>(x_2382.x, x_2382.y, x_2382.x, x_2382.y)) + vec4<f32>(x_2385.x, x_2385.y, x_2385.z, x_2385.y));
        let x_2388 : vec4<f32> = u_xlat7;
        let x_2391 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_2394 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_2388.x, x_2388.y, x_2388.x, x_2388.y) * vec4<f32>(x_2391.x, x_2391.y, x_2391.x, x_2391.y)) + vec4<f32>(x_2394.w, x_2394.y, x_2394.w, x_2394.z));
        let x_2397 : vec4<f32> = u_xlat7;
        let x_2400 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_2403 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_2397.x, x_2397.y, x_2397.x, x_2397.y) * vec4<f32>(x_2400.x, x_2400.y, x_2400.x, x_2400.y)) + vec4<f32>(x_2403.x, x_2403.w, x_2403.z, x_2403.w));
        let x_2406 : vec4<f32> = u_xlat8;
        let x_2408 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_2406.x, x_2406.x, x_2406.x, x_2406.y) * vec4<f32>(x_2408.z, x_2408.w, x_2408.y, x_2408.z));
        let x_2411 : vec4<f32> = u_xlat8;
        let x_2413 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_2411.y, x_2411.y, x_2411.z, x_2411.z) * x_2413);
        let x_2417 : f32 = u_xlat8.z;
        let x_2419 : f32 = u_xlat13.y;
        u_xlat83 = (x_2417 * x_2419);
        let x_2422 : vec4<f32> = u_xlat11;
        let x_2423 : vec2<f32> = vec2<f32>(x_2422.x, x_2422.y);
        let x_2425 : f32 = vs_INTERP3.z;
        txVec34 = vec3<f32>(x_2423.x, x_2423.y, x_2425);
        let x_2433 : vec3<f32> = txVec34;
        let x_2435 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2433.xy, x_2433.z);
        u_xlat84 = x_2435;
        let x_2437 : vec4<f32> = u_xlat11;
        let x_2438 : vec2<f32> = vec2<f32>(x_2437.z, x_2437.w);
        let x_2440 : f32 = vs_INTERP3.z;
        txVec35 = vec3<f32>(x_2438.x, x_2438.y, x_2440);
        let x_2447 : vec3<f32> = txVec35;
        let x_2449 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2447.xy, x_2447.z);
        u_xlat7.x = x_2449;
        let x_2452 : f32 = u_xlat7.x;
        let x_2454 : f32 = u_xlat14.y;
        u_xlat7.x = (x_2452 * x_2454);
        let x_2458 : f32 = u_xlat14.x;
        let x_2459 : f32 = u_xlat84;
        let x_2462 : f32 = u_xlat7.x;
        u_xlat84 = ((x_2458 * x_2459) + x_2462);
        let x_2465 : vec2<f32> = u_xlat59;
        let x_2467 : f32 = vs_INTERP3.z;
        txVec36 = vec3<f32>(x_2465.x, x_2465.y, x_2467);
        let x_2474 : vec3<f32> = txVec36;
        let x_2476 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2474.xy, x_2474.z);
        u_xlat7.x = x_2476;
        let x_2479 : f32 = u_xlat14.z;
        let x_2481 : f32 = u_xlat7.x;
        let x_2483 : f32 = u_xlat84;
        u_xlat84 = ((x_2479 * x_2481) + x_2483);
        let x_2486 : vec4<f32> = u_xlat10;
        let x_2487 : vec2<f32> = vec2<f32>(x_2486.x, x_2486.y);
        let x_2489 : f32 = vs_INTERP3.z;
        txVec37 = vec3<f32>(x_2487.x, x_2487.y, x_2489);
        let x_2496 : vec3<f32> = txVec37;
        let x_2498 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2496.xy, x_2496.z);
        u_xlat7.x = x_2498;
        let x_2501 : f32 = u_xlat14.w;
        let x_2503 : f32 = u_xlat7.x;
        let x_2505 : f32 = u_xlat84;
        u_xlat84 = ((x_2501 * x_2503) + x_2505);
        let x_2508 : vec4<f32> = u_xlat12;
        let x_2509 : vec2<f32> = vec2<f32>(x_2508.x, x_2508.y);
        let x_2511 : f32 = vs_INTERP3.z;
        txVec38 = vec3<f32>(x_2509.x, x_2509.y, x_2511);
        let x_2518 : vec3<f32> = txVec38;
        let x_2520 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2518.xy, x_2518.z);
        u_xlat7.x = x_2520;
        let x_2523 : f32 = u_xlat15.x;
        let x_2525 : f32 = u_xlat7.x;
        let x_2527 : f32 = u_xlat84;
        u_xlat84 = ((x_2523 * x_2525) + x_2527);
        let x_2530 : vec4<f32> = u_xlat12;
        let x_2531 : vec2<f32> = vec2<f32>(x_2530.z, x_2530.w);
        let x_2533 : f32 = vs_INTERP3.z;
        txVec39 = vec3<f32>(x_2531.x, x_2531.y, x_2533);
        let x_2540 : vec3<f32> = txVec39;
        let x_2542 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2540.xy, x_2540.z);
        u_xlat7.x = x_2542;
        let x_2545 : f32 = u_xlat15.y;
        let x_2547 : f32 = u_xlat7.x;
        let x_2549 : f32 = u_xlat84;
        u_xlat84 = ((x_2545 * x_2547) + x_2549);
        let x_2552 : vec4<f32> = u_xlat10;
        let x_2553 : vec2<f32> = vec2<f32>(x_2552.z, x_2552.w);
        let x_2555 : f32 = vs_INTERP3.z;
        txVec40 = vec3<f32>(x_2553.x, x_2553.y, x_2555);
        let x_2562 : vec3<f32> = txVec40;
        let x_2564 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2562.xy, x_2562.z);
        u_xlat7.x = x_2564;
        let x_2567 : f32 = u_xlat15.z;
        let x_2569 : f32 = u_xlat7.x;
        let x_2571 : f32 = u_xlat84;
        u_xlat84 = ((x_2567 * x_2569) + x_2571);
        let x_2574 : vec4<f32> = u_xlat9;
        let x_2575 : vec2<f32> = vec2<f32>(x_2574.x, x_2574.y);
        let x_2577 : f32 = vs_INTERP3.z;
        txVec41 = vec3<f32>(x_2575.x, x_2575.y, x_2577);
        let x_2584 : vec3<f32> = txVec41;
        let x_2586 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2584.xy, x_2584.z);
        u_xlat7.x = x_2586;
        let x_2589 : f32 = u_xlat15.w;
        let x_2591 : f32 = u_xlat7.x;
        let x_2593 : f32 = u_xlat84;
        u_xlat84 = ((x_2589 * x_2591) + x_2593);
        let x_2596 : vec4<f32> = u_xlat9;
        let x_2597 : vec2<f32> = vec2<f32>(x_2596.z, x_2596.w);
        let x_2599 : f32 = vs_INTERP3.z;
        txVec42 = vec3<f32>(x_2597.x, x_2597.y, x_2599);
        let x_2606 : vec3<f32> = txVec42;
        let x_2608 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2606.xy, x_2606.z);
        u_xlat7.x = x_2608;
        let x_2610 : f32 = u_xlat83;
        let x_2612 : f32 = u_xlat7.x;
        let x_2614 : f32 = u_xlat84;
        u_xlat0.x = ((x_2610 * x_2612) + x_2614);
      } else {
        let x_2618 : vec4<f32> = vs_INTERP3;
        let x_2621 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_2624 : vec2<f32> = ((vec2<f32>(x_2618.x, x_2618.y) * vec2<f32>(x_2621.z, x_2621.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2625 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2624.x, x_2624.y, x_2625.z, x_2625.w);
        let x_2627 : vec4<f32> = u_xlat7;
        let x_2629 : vec2<f32> = floor(vec2<f32>(x_2627.x, x_2627.y));
        let x_2630 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2629.x, x_2629.y, x_2630.z, x_2630.w);
        let x_2632 : vec4<f32> = vs_INTERP3;
        let x_2635 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_2638 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_2632.x, x_2632.y) * vec2<f32>(x_2635.z, x_2635.w)) + -(vec2<f32>(x_2638.x, x_2638.y)));
        let x_2642 : vec2<f32> = u_xlat59;
        u_xlat8 = (vec4<f32>(x_2642.x, x_2642.x, x_2642.y, x_2642.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2645 : vec4<f32> = u_xlat8;
        let x_2647 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2645.x, x_2645.x, x_2645.z, x_2645.z) * vec4<f32>(x_2647.x, x_2647.x, x_2647.z, x_2647.z));
        let x_2650 : vec4<f32> = u_xlat9;
        let x_2652 : vec2<f32> = (vec2<f32>(x_2650.y, x_2650.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_2653 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2653.x, x_2652.x, x_2653.z, x_2652.y);
        let x_2655 : vec4<f32> = u_xlat9;
        let x_2658 : vec2<f32> = u_xlat59;
        let x_2660 : vec2<f32> = ((vec2<f32>(x_2655.x, x_2655.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2658));
        let x_2661 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2660.x, x_2661.y, x_2660.y, x_2661.w);
        let x_2663 : vec2<f32> = u_xlat59;
        let x_2665 : vec2<f32> = (-(x_2663) + vec2<f32>(1.0f, 1.0f));
        let x_2666 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2665.x, x_2665.y, x_2666.z, x_2666.w);
        let x_2668 : vec2<f32> = u_xlat59;
        u_xlat61 = min(x_2668, vec2<f32>(0.0f, 0.0f));
        let x_2670 : vec2<f32> = u_xlat61;
        let x_2672 : vec2<f32> = u_xlat61;
        let x_2674 : vec4<f32> = u_xlat9;
        let x_2676 : vec2<f32> = ((-(x_2670) * x_2672) + vec2<f32>(x_2674.x, x_2674.y));
        let x_2677 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2676.x, x_2676.y, x_2677.z, x_2677.w);
        let x_2679 : vec2<f32> = u_xlat59;
        u_xlat61 = max(x_2679, vec2<f32>(0.0f, 0.0f));
        let x_2681 : vec2<f32> = u_xlat61;
        let x_2683 : vec2<f32> = u_xlat61;
        let x_2685 : vec4<f32> = u_xlat8;
        let x_2687 : vec2<f32> = ((-(x_2681) * x_2683) + vec2<f32>(x_2685.y, x_2685.w));
        let x_2688 : vec3<f32> = u_xlat34;
        u_xlat34 = vec3<f32>(x_2687.x, x_2688.y, x_2687.y);
        let x_2690 : vec4<f32> = u_xlat9;
        let x_2692 : vec2<f32> = (vec2<f32>(x_2690.x, x_2690.y) + vec2<f32>(2.0f, 2.0f));
        let x_2693 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2692.x, x_2692.y, x_2693.z, x_2693.w);
        let x_2695 : vec3<f32> = u_xlat34;
        let x_2697 : vec2<f32> = (vec2<f32>(x_2695.x, x_2695.z) + vec2<f32>(2.0f, 2.0f));
        let x_2698 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2698.x, x_2697.x, x_2698.z, x_2697.y);
        let x_2701 : f32 = u_xlat8.y;
        u_xlat11.z = (x_2701 * 0.08163200318813323975f);
        let x_2704 : vec4<f32> = u_xlat8;
        let x_2706 : vec3<f32> = (vec3<f32>(x_2704.z, x_2704.x, x_2704.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_2707 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2706.x, x_2706.y, x_2706.z, x_2707.w);
        let x_2709 : vec4<f32> = u_xlat9;
        let x_2711 : vec2<f32> = (vec2<f32>(x_2709.x, x_2709.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2712 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2711.x, x_2711.y, x_2712.z, x_2712.w);
        let x_2715 : f32 = u_xlat12.y;
        u_xlat11.x = x_2715;
        let x_2717 : vec2<f32> = u_xlat59;
        let x_2720 : vec2<f32> = ((vec2<f32>(x_2717.x, x_2717.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2721 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2721.x, x_2720.x, x_2721.z, x_2720.y);
        let x_2723 : vec2<f32> = u_xlat59;
        let x_2726 : vec2<f32> = ((vec2<f32>(x_2723.x, x_2723.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2727 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2726.x, x_2727.y, x_2726.y, x_2727.w);
        let x_2730 : f32 = u_xlat8.x;
        u_xlat9.y = x_2730;
        let x_2733 : f32 = u_xlat10.y;
        u_xlat9.w = x_2733;
        let x_2735 : vec4<f32> = u_xlat9;
        let x_2736 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_2735 + x_2736);
        let x_2738 : vec2<f32> = u_xlat59;
        let x_2741 : vec2<f32> = ((vec2<f32>(x_2738.y, x_2738.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2742 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2742.x, x_2741.x, x_2742.z, x_2741.y);
        let x_2744 : vec2<f32> = u_xlat59;
        let x_2747 : vec2<f32> = ((vec2<f32>(x_2744.y, x_2744.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2748 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2747.x, x_2748.y, x_2747.y, x_2748.w);
        let x_2751 : f32 = u_xlat8.y;
        u_xlat10.y = x_2751;
        let x_2753 : vec4<f32> = u_xlat10;
        let x_2754 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_2753 + x_2754);
        let x_2756 : vec4<f32> = u_xlat9;
        let x_2757 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_2756 / x_2757);
        let x_2759 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_2759 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2761 : vec4<f32> = u_xlat10;
        let x_2762 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_2761 / x_2762);
        let x_2764 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_2764 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2766 : vec4<f32> = u_xlat9;
        let x_2769 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_2766.w, x_2766.x, x_2766.y, x_2766.z) * vec4<f32>(x_2769.x, x_2769.x, x_2769.x, x_2769.x));
        let x_2772 : vec4<f32> = u_xlat10;
        let x_2775 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_2772.x, x_2772.w, x_2772.y, x_2772.z) * vec4<f32>(x_2775.y, x_2775.y, x_2775.y, x_2775.y));
        let x_2778 : vec4<f32> = u_xlat9;
        let x_2779 : vec3<f32> = vec3<f32>(x_2778.y, x_2778.z, x_2778.w);
        let x_2780 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2779.x, x_2780.y, x_2779.y, x_2779.z);
        let x_2783 : f32 = u_xlat10.x;
        u_xlat12.y = x_2783;
        let x_2785 : vec4<f32> = u_xlat7;
        let x_2788 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_2791 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_2785.x, x_2785.y, x_2785.x, x_2785.y) * vec4<f32>(x_2788.x, x_2788.y, x_2788.x, x_2788.y)) + vec4<f32>(x_2791.x, x_2791.y, x_2791.z, x_2791.y));
        let x_2794 : vec4<f32> = u_xlat7;
        let x_2797 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_2800 : vec4<f32> = u_xlat12;
        u_xlat59 = ((vec2<f32>(x_2794.x, x_2794.y) * vec2<f32>(x_2797.x, x_2797.y)) + vec2<f32>(x_2800.w, x_2800.y));
        let x_2804 : f32 = u_xlat12.y;
        u_xlat9.y = x_2804;
        let x_2807 : f32 = u_xlat10.z;
        u_xlat12.y = x_2807;
        let x_2809 : vec4<f32> = u_xlat7;
        let x_2812 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_2815 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_2809.x, x_2809.y, x_2809.x, x_2809.y) * vec4<f32>(x_2812.x, x_2812.y, x_2812.x, x_2812.y)) + vec4<f32>(x_2815.x, x_2815.y, x_2815.z, x_2815.y));
        let x_2818 : vec4<f32> = u_xlat7;
        let x_2821 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_2824 : vec4<f32> = u_xlat12;
        let x_2826 : vec2<f32> = ((vec2<f32>(x_2818.x, x_2818.y) * vec2<f32>(x_2821.x, x_2821.y)) + vec2<f32>(x_2824.w, x_2824.y));
        let x_2827 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_2826.x, x_2826.y, x_2827.z, x_2827.w);
        let x_2830 : f32 = u_xlat12.y;
        u_xlat9.z = x_2830;
        let x_2832 : vec4<f32> = u_xlat7;
        let x_2835 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_2838 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_2832.x, x_2832.y, x_2832.x, x_2832.y) * vec4<f32>(x_2835.x, x_2835.y, x_2835.x, x_2835.y)) + vec4<f32>(x_2838.x, x_2838.y, x_2838.x, x_2838.z));
        let x_2842 : f32 = u_xlat10.w;
        u_xlat12.y = x_2842;
        let x_2844 : vec4<f32> = u_xlat7;
        let x_2847 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_2850 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_2844.x, x_2844.y, x_2844.x, x_2844.y) * vec4<f32>(x_2847.x, x_2847.y, x_2847.x, x_2847.y)) + vec4<f32>(x_2850.x, x_2850.y, x_2850.z, x_2850.y));
        let x_2853 : vec4<f32> = u_xlat7;
        let x_2856 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_2859 : vec4<f32> = u_xlat12;
        let x_2861 : vec2<f32> = ((vec2<f32>(x_2853.x, x_2853.y) * vec2<f32>(x_2856.x, x_2856.y)) + vec2<f32>(x_2859.w, x_2859.y));
        let x_2862 : vec3<f32> = u_xlat35;
        u_xlat35 = vec3<f32>(x_2861.x, x_2861.y, x_2862.z);
        let x_2865 : f32 = u_xlat12.y;
        u_xlat9.w = x_2865;
        let x_2868 : vec4<f32> = u_xlat7;
        let x_2871 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_2874 : vec4<f32> = u_xlat9;
        u_xlat67 = ((vec2<f32>(x_2868.x, x_2868.y) * vec2<f32>(x_2871.x, x_2871.y)) + vec2<f32>(x_2874.x, x_2874.w));
        let x_2877 : vec4<f32> = u_xlat12;
        let x_2878 : vec3<f32> = vec3<f32>(x_2877.x, x_2877.z, x_2877.w);
        let x_2879 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2878.x, x_2879.y, x_2878.y, x_2878.z);
        let x_2881 : vec4<f32> = u_xlat7;
        let x_2884 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_2887 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_2881.x, x_2881.y, x_2881.x, x_2881.y) * vec4<f32>(x_2884.x, x_2884.y, x_2884.x, x_2884.y)) + vec4<f32>(x_2887.x, x_2887.y, x_2887.z, x_2887.y));
        let x_2890 : vec4<f32> = u_xlat7;
        let x_2893 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_2896 : vec4<f32> = u_xlat10;
        u_xlat62 = ((vec2<f32>(x_2890.x, x_2890.y) * vec2<f32>(x_2893.x, x_2893.y)) + vec2<f32>(x_2896.w, x_2896.y));
        let x_2900 : f32 = u_xlat9.x;
        u_xlat10.x = x_2900;
        let x_2902 : vec4<f32> = u_xlat7;
        let x_2905 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_2908 : vec4<f32> = u_xlat10;
        let x_2910 : vec2<f32> = ((vec2<f32>(x_2902.x, x_2902.y) * vec2<f32>(x_2905.x, x_2905.y)) + vec2<f32>(x_2908.x, x_2908.y));
        let x_2911 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2910.x, x_2910.y, x_2911.z, x_2911.w);
        let x_2913 : vec4<f32> = u_xlat8;
        let x_2915 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_2913.x, x_2913.x, x_2913.x, x_2913.x) * x_2915);
        let x_2917 : vec4<f32> = u_xlat8;
        let x_2919 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_2917.y, x_2917.y, x_2917.y, x_2917.y) * x_2919);
        let x_2921 : vec4<f32> = u_xlat8;
        let x_2923 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_2921.z, x_2921.z, x_2921.z, x_2921.z) * x_2923);
        let x_2925 : vec4<f32> = u_xlat8;
        let x_2927 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_2925.w, x_2925.w, x_2925.w, x_2925.w) * x_2927);
        let x_2930 : vec4<f32> = u_xlat13;
        let x_2931 : vec2<f32> = vec2<f32>(x_2930.x, x_2930.y);
        let x_2933 : f32 = vs_INTERP3.z;
        txVec43 = vec3<f32>(x_2931.x, x_2931.y, x_2933);
        let x_2940 : vec3<f32> = txVec43;
        let x_2942 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2940.xy, x_2940.z);
        u_xlat83 = x_2942;
        let x_2944 : vec4<f32> = u_xlat13;
        let x_2945 : vec2<f32> = vec2<f32>(x_2944.z, x_2944.w);
        let x_2947 : f32 = vs_INTERP3.z;
        txVec44 = vec3<f32>(x_2945.x, x_2945.y, x_2947);
        let x_2954 : vec3<f32> = txVec44;
        let x_2956 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2954.xy, x_2954.z);
        u_xlat84 = x_2956;
        let x_2957 : f32 = u_xlat84;
        let x_2959 : f32 = u_xlat18.y;
        u_xlat84 = (x_2957 * x_2959);
        let x_2962 : f32 = u_xlat18.x;
        let x_2963 : f32 = u_xlat83;
        let x_2965 : f32 = u_xlat84;
        u_xlat83 = ((x_2962 * x_2963) + x_2965);
        let x_2968 : vec2<f32> = u_xlat59;
        let x_2970 : f32 = vs_INTERP3.z;
        txVec45 = vec3<f32>(x_2968.x, x_2968.y, x_2970);
        let x_2977 : vec3<f32> = txVec45;
        let x_2979 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2977.xy, x_2977.z);
        u_xlat84 = x_2979;
        let x_2981 : f32 = u_xlat18.z;
        let x_2982 : f32 = u_xlat84;
        let x_2984 : f32 = u_xlat83;
        u_xlat83 = ((x_2981 * x_2982) + x_2984);
        let x_2987 : vec4<f32> = u_xlat16;
        let x_2988 : vec2<f32> = vec2<f32>(x_2987.x, x_2987.y);
        let x_2990 : f32 = vs_INTERP3.z;
        txVec46 = vec3<f32>(x_2988.x, x_2988.y, x_2990);
        let x_2997 : vec3<f32> = txVec46;
        let x_2999 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2997.xy, x_2997.z);
        u_xlat84 = x_2999;
        let x_3001 : f32 = u_xlat18.w;
        let x_3002 : f32 = u_xlat84;
        let x_3004 : f32 = u_xlat83;
        u_xlat83 = ((x_3001 * x_3002) + x_3004);
        let x_3007 : vec4<f32> = u_xlat14;
        let x_3008 : vec2<f32> = vec2<f32>(x_3007.x, x_3007.y);
        let x_3010 : f32 = vs_INTERP3.z;
        txVec47 = vec3<f32>(x_3008.x, x_3008.y, x_3010);
        let x_3017 : vec3<f32> = txVec47;
        let x_3019 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3017.xy, x_3017.z);
        u_xlat84 = x_3019;
        let x_3021 : f32 = u_xlat19.x;
        let x_3022 : f32 = u_xlat84;
        let x_3024 : f32 = u_xlat83;
        u_xlat83 = ((x_3021 * x_3022) + x_3024);
        let x_3027 : vec4<f32> = u_xlat14;
        let x_3028 : vec2<f32> = vec2<f32>(x_3027.z, x_3027.w);
        let x_3030 : f32 = vs_INTERP3.z;
        txVec48 = vec3<f32>(x_3028.x, x_3028.y, x_3030);
        let x_3037 : vec3<f32> = txVec48;
        let x_3039 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3037.xy, x_3037.z);
        u_xlat84 = x_3039;
        let x_3041 : f32 = u_xlat19.y;
        let x_3042 : f32 = u_xlat84;
        let x_3044 : f32 = u_xlat83;
        u_xlat83 = ((x_3041 * x_3042) + x_3044);
        let x_3047 : vec4<f32> = u_xlat15;
        let x_3048 : vec2<f32> = vec2<f32>(x_3047.x, x_3047.y);
        let x_3050 : f32 = vs_INTERP3.z;
        txVec49 = vec3<f32>(x_3048.x, x_3048.y, x_3050);
        let x_3057 : vec3<f32> = txVec49;
        let x_3059 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3057.xy, x_3057.z);
        u_xlat84 = x_3059;
        let x_3061 : f32 = u_xlat19.z;
        let x_3062 : f32 = u_xlat84;
        let x_3064 : f32 = u_xlat83;
        u_xlat83 = ((x_3061 * x_3062) + x_3064);
        let x_3067 : vec4<f32> = u_xlat16;
        let x_3068 : vec2<f32> = vec2<f32>(x_3067.z, x_3067.w);
        let x_3070 : f32 = vs_INTERP3.z;
        txVec50 = vec3<f32>(x_3068.x, x_3068.y, x_3070);
        let x_3077 : vec3<f32> = txVec50;
        let x_3079 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3077.xy, x_3077.z);
        u_xlat84 = x_3079;
        let x_3081 : f32 = u_xlat19.w;
        let x_3082 : f32 = u_xlat84;
        let x_3084 : f32 = u_xlat83;
        u_xlat83 = ((x_3081 * x_3082) + x_3084);
        let x_3087 : vec4<f32> = u_xlat17;
        let x_3088 : vec2<f32> = vec2<f32>(x_3087.x, x_3087.y);
        let x_3090 : f32 = vs_INTERP3.z;
        txVec51 = vec3<f32>(x_3088.x, x_3088.y, x_3090);
        let x_3097 : vec3<f32> = txVec51;
        let x_3099 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3097.xy, x_3097.z);
        u_xlat84 = x_3099;
        let x_3101 : f32 = u_xlat20.x;
        let x_3102 : f32 = u_xlat84;
        let x_3104 : f32 = u_xlat83;
        u_xlat83 = ((x_3101 * x_3102) + x_3104);
        let x_3107 : vec4<f32> = u_xlat17;
        let x_3108 : vec2<f32> = vec2<f32>(x_3107.z, x_3107.w);
        let x_3110 : f32 = vs_INTERP3.z;
        txVec52 = vec3<f32>(x_3108.x, x_3108.y, x_3110);
        let x_3117 : vec3<f32> = txVec52;
        let x_3119 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3117.xy, x_3117.z);
        u_xlat84 = x_3119;
        let x_3121 : f32 = u_xlat20.y;
        let x_3122 : f32 = u_xlat84;
        let x_3124 : f32 = u_xlat83;
        u_xlat83 = ((x_3121 * x_3122) + x_3124);
        let x_3127 : vec3<f32> = u_xlat35;
        let x_3128 : vec2<f32> = vec2<f32>(x_3127.x, x_3127.y);
        let x_3130 : f32 = vs_INTERP3.z;
        txVec53 = vec3<f32>(x_3128.x, x_3128.y, x_3130);
        let x_3137 : vec3<f32> = txVec53;
        let x_3139 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3137.xy, x_3137.z);
        u_xlat84 = x_3139;
        let x_3141 : f32 = u_xlat20.z;
        let x_3142 : f32 = u_xlat84;
        let x_3144 : f32 = u_xlat83;
        u_xlat83 = ((x_3141 * x_3142) + x_3144);
        let x_3147 : vec2<f32> = u_xlat67;
        let x_3149 : f32 = vs_INTERP3.z;
        txVec54 = vec3<f32>(x_3147.x, x_3147.y, x_3149);
        let x_3156 : vec3<f32> = txVec54;
        let x_3158 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3156.xy, x_3156.z);
        u_xlat84 = x_3158;
        let x_3160 : f32 = u_xlat20.w;
        let x_3161 : f32 = u_xlat84;
        let x_3163 : f32 = u_xlat83;
        u_xlat83 = ((x_3160 * x_3161) + x_3163);
        let x_3166 : vec4<f32> = u_xlat12;
        let x_3167 : vec2<f32> = vec2<f32>(x_3166.x, x_3166.y);
        let x_3169 : f32 = vs_INTERP3.z;
        txVec55 = vec3<f32>(x_3167.x, x_3167.y, x_3169);
        let x_3176 : vec3<f32> = txVec55;
        let x_3178 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3176.xy, x_3176.z);
        u_xlat84 = x_3178;
        let x_3180 : f32 = u_xlat8.x;
        let x_3181 : f32 = u_xlat84;
        let x_3183 : f32 = u_xlat83;
        u_xlat83 = ((x_3180 * x_3181) + x_3183);
        let x_3186 : vec4<f32> = u_xlat12;
        let x_3187 : vec2<f32> = vec2<f32>(x_3186.z, x_3186.w);
        let x_3189 : f32 = vs_INTERP3.z;
        txVec56 = vec3<f32>(x_3187.x, x_3187.y, x_3189);
        let x_3196 : vec3<f32> = txVec56;
        let x_3198 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3196.xy, x_3196.z);
        u_xlat84 = x_3198;
        let x_3200 : f32 = u_xlat8.y;
        let x_3201 : f32 = u_xlat84;
        let x_3203 : f32 = u_xlat83;
        u_xlat83 = ((x_3200 * x_3201) + x_3203);
        let x_3206 : vec2<f32> = u_xlat62;
        let x_3208 : f32 = vs_INTERP3.z;
        txVec57 = vec3<f32>(x_3206.x, x_3206.y, x_3208);
        let x_3215 : vec3<f32> = txVec57;
        let x_3217 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3215.xy, x_3215.z);
        u_xlat84 = x_3217;
        let x_3219 : f32 = u_xlat8.z;
        let x_3220 : f32 = u_xlat84;
        let x_3222 : f32 = u_xlat83;
        u_xlat83 = ((x_3219 * x_3220) + x_3222);
        let x_3225 : vec4<f32> = u_xlat7;
        let x_3226 : vec2<f32> = vec2<f32>(x_3225.x, x_3225.y);
        let x_3228 : f32 = vs_INTERP3.z;
        txVec58 = vec3<f32>(x_3226.x, x_3226.y, x_3228);
        let x_3235 : vec3<f32> = txVec58;
        let x_3237 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3235.xy, x_3235.z);
        u_xlat84 = x_3237;
        let x_3239 : f32 = u_xlat8.w;
        let x_3240 : f32 = u_xlat84;
        let x_3242 : f32 = u_xlat83;
        u_xlat0.x = ((x_3239 * x_3240) + x_3242);
      }
    }
  } else {
    let x_3247 : vec4<f32> = vs_INTERP3;
    let x_3248 : vec2<f32> = vec2<f32>(x_3247.x, x_3247.y);
    let x_3250 : f32 = vs_INTERP3.z;
    txVec59 = vec3<f32>(x_3248.x, x_3248.y, x_3250);
    let x_3257 : vec3<f32> = txVec59;
    let x_3259 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3257.xy, x_3257.z);
    u_xlat0.x = x_3259;
  }
  let x_3262 : f32 = u_xlat0.x;
  let x_3264 : f32 = x_355.x_MainLightShadowParams.x;
  let x_3267 : f32 = u_xlat2.x;
  u_xlat0.x = ((x_3262 * x_3264) + x_3267);
  let x_3274 : f32 = vs_INTERP3.z;
  u_xlatb2.x = (0.0f >= x_3274);
  let x_3278 : f32 = vs_INTERP3.z;
  u_xlatb83 = (x_3278 >= 1.0f);
  let x_3281 : bool = u_xlatb2.x;
  let x_3282 : bool = u_xlatb83;
  u_xlatb2.x = (x_3281 | x_3282);
  let x_3286 : bool = u_xlatb2.x;
  if (x_3286) {
    x_3287 = 1.0f;
  } else {
    let x_3292 : f32 = u_xlat0.x;
    x_3287 = x_3292;
  }
  let x_3293 : f32 = x_3287;
  u_xlat0.x = x_3293;
  let x_3295 : vec3<f32> = vs_INTERP8;
  let x_3297 : vec3<f32> = x_147.x_WorldSpaceCameraPos;
  let x_3299 : vec3<f32> = (x_3295 + -(x_3297));
  let x_3300 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3299.x, x_3299.y, x_3299.z, x_3300.w);
  let x_3302 : vec4<f32> = u_xlat7;
  let x_3304 : vec4<f32> = u_xlat7;
  u_xlat2.x = dot(vec3<f32>(x_3302.x, x_3302.y, x_3302.z), vec3<f32>(x_3304.x, x_3304.y, x_3304.z));
  let x_3309 : f32 = u_xlat2.x;
  let x_3311 : f32 = x_355.x_MainLightShadowParams.z;
  let x_3314 : f32 = x_355.x_MainLightShadowParams.w;
  u_xlat83 = ((x_3309 * x_3311) + x_3314);
  let x_3316 : f32 = u_xlat83;
  u_xlat83 = clamp(x_3316, 0.0f, 1.0f);
  let x_3319 : f32 = u_xlat0.x;
  u_xlat84 = (-(x_3319) + 1.0f);
  let x_3322 : f32 = u_xlat83;
  let x_3323 : f32 = u_xlat84;
  let x_3326 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_3322 * x_3323) + x_3326);
  let x_3336 : f32 = x_3334.x_MainLightCookieTextureFormat;
  u_xlatb83 = !((x_3336 == -1.0f));
  let x_3338 : bool = u_xlatb83;
  if (x_3338) {
    let x_3341 : vec3<f32> = vs_INTERP8;
    let x_3344 : vec4<f32> = x_3334.x_MainLightWorldToLight[1i];
    let x_3346 : vec2<f32> = (vec2<f32>(x_3341.y, x_3341.y) * vec2<f32>(x_3344.x, x_3344.y));
    let x_3347 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3346.x, x_3346.y, x_3347.z, x_3347.w);
    let x_3350 : vec4<f32> = x_3334.x_MainLightWorldToLight[0i];
    let x_3352 : vec3<f32> = vs_INTERP8;
    let x_3355 : vec4<f32> = u_xlat7;
    let x_3357 : vec2<f32> = ((vec2<f32>(x_3350.x, x_3350.y) * vec2<f32>(x_3352.x, x_3352.x)) + vec2<f32>(x_3355.x, x_3355.y));
    let x_3358 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3357.x, x_3357.y, x_3358.z, x_3358.w);
    let x_3361 : vec4<f32> = x_3334.x_MainLightWorldToLight[2i];
    let x_3363 : vec3<f32> = vs_INTERP8;
    let x_3366 : vec4<f32> = u_xlat7;
    let x_3368 : vec2<f32> = ((vec2<f32>(x_3361.x, x_3361.y) * vec2<f32>(x_3363.z, x_3363.z)) + vec2<f32>(x_3366.x, x_3366.y));
    let x_3369 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3368.x, x_3368.y, x_3369.z, x_3369.w);
    let x_3371 : vec4<f32> = u_xlat7;
    let x_3374 : vec4<f32> = x_3334.x_MainLightWorldToLight[3i];
    let x_3376 : vec2<f32> = (vec2<f32>(x_3371.x, x_3371.y) + vec2<f32>(x_3374.x, x_3374.y));
    let x_3377 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3376.x, x_3376.y, x_3377.z, x_3377.w);
    let x_3379 : vec4<f32> = u_xlat7;
    let x_3382 : vec2<f32> = ((vec2<f32>(x_3379.x, x_3379.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_3383 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3382.x, x_3382.y, x_3383.z, x_3383.w);
    let x_3390 : vec4<f32> = u_xlat7;
    let x_3393 : f32 = x_147.x_GlobalMipBias.x;
    let x_3394 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_3390.x, x_3390.y), x_3393);
    u_xlat7 = x_3394;
    let x_3397 : f32 = x_3334.x_MainLightCookieTextureFormat;
    let x_3399 : f32 = x_3334.x_MainLightCookieTextureFormat;
    let x_3401 : f32 = x_3334.x_MainLightCookieTextureFormat;
    let x_3403 : f32 = x_3334.x_MainLightCookieTextureFormat;
    let x_3404 : vec4<f32> = vec4<f32>(x_3397, x_3399, x_3401, x_3403);
    let x_3411 : vec4<bool> = (vec4<f32>(x_3404.x, x_3404.y, x_3404.z, x_3404.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb8 = vec2<bool>(x_3411.x, x_3411.y);
    let x_3414 : bool = u_xlatb8.y;
    if (x_3414) {
      let x_3419 : f32 = u_xlat7.w;
      x_3415 = x_3419;
    } else {
      let x_3422 : f32 = u_xlat7.x;
      x_3415 = x_3422;
    }
    let x_3423 : f32 = x_3415;
    u_xlat83 = x_3423;
    let x_3425 : bool = u_xlatb8.x;
    if (x_3425) {
      let x_3429 : vec4<f32> = u_xlat7;
      x_3426 = vec3<f32>(x_3429.x, x_3429.y, x_3429.z);
    } else {
      let x_3432 : f32 = u_xlat83;
      x_3426 = vec3<f32>(x_3432, x_3432, x_3432);
    }
    let x_3434 : vec3<f32> = x_3426;
    let x_3435 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3434.x, x_3434.y, x_3434.z, x_3435.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_3441 : vec4<f32> = u_xlat7;
  let x_3444 : vec4<f32> = x_147.x_MainLightColor;
  let x_3446 : vec3<f32> = (vec3<f32>(x_3441.x, x_3441.y, x_3441.z) * vec3<f32>(x_3444.x, x_3444.y, x_3444.z));
  let x_3447 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3446.x, x_3446.y, x_3446.z, x_3447.w);
  let x_3449 : vec3<f32> = u_xlat4;
  let x_3451 : vec4<f32> = u_xlat3;
  u_xlat83 = dot(-(x_3449), vec3<f32>(x_3451.x, x_3451.y, x_3451.z));
  let x_3454 : f32 = u_xlat83;
  let x_3455 : f32 = u_xlat83;
  u_xlat83 = (x_3454 + x_3455);
  let x_3457 : vec4<f32> = u_xlat3;
  let x_3459 : f32 = u_xlat83;
  let x_3463 : vec3<f32> = u_xlat4;
  let x_3465 : vec3<f32> = ((vec3<f32>(x_3457.x, x_3457.y, x_3457.z) * -(vec3<f32>(x_3459, x_3459, x_3459))) + -(x_3463));
  let x_3466 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3465.x, x_3465.y, x_3465.z, x_3466.w);
  let x_3468 : vec4<f32> = u_xlat3;
  let x_3470 : vec3<f32> = u_xlat4;
  u_xlat83 = dot(vec3<f32>(x_3468.x, x_3468.y, x_3468.z), x_3470);
  let x_3472 : f32 = u_xlat83;
  u_xlat83 = clamp(x_3472, 0.0f, 1.0f);
  let x_3474 : f32 = u_xlat83;
  u_xlat83 = (-(x_3474) + 1.0f);
  let x_3477 : f32 = u_xlat83;
  let x_3478 : f32 = u_xlat83;
  u_xlat83 = (x_3477 * x_3478);
  let x_3480 : f32 = u_xlat83;
  let x_3481 : f32 = u_xlat83;
  u_xlat83 = (x_3480 * x_3481);
  let x_3484 : f32 = u_xlat52.x;
  u_xlat84 = ((-(x_3484) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_3491 : f32 = u_xlat52.x;
  let x_3492 : f32 = u_xlat84;
  u_xlat52.x = (x_3491 * x_3492);
  let x_3496 : f32 = u_xlat52.x;
  u_xlat52.x = (x_3496 * 6.0f);
  let x_3508 : vec4<f32> = u_xlat8;
  let x_3511 : f32 = u_xlat52.x;
  let x_3512 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_3508.x, x_3508.y, x_3508.z), x_3511);
  u_xlat8 = x_3512;
  let x_3514 : f32 = u_xlat8.w;
  u_xlat52.x = (x_3514 + -1.0f);
  let x_3518 : f32 = x_83.unity_SpecCube0_HDR.w;
  let x_3520 : f32 = u_xlat52.x;
  u_xlat52.x = ((x_3518 * x_3520) + 1.0f);
  let x_3525 : f32 = u_xlat52.x;
  u_xlat52.x = max(x_3525, 0.0f);
  let x_3529 : f32 = u_xlat52.x;
  u_xlat52.x = log2(x_3529);
  let x_3533 : f32 = u_xlat52.x;
  let x_3535 : f32 = x_83.unity_SpecCube0_HDR.y;
  u_xlat52.x = (x_3533 * x_3535);
  let x_3539 : f32 = u_xlat52.x;
  u_xlat52.x = exp2(x_3539);
  let x_3543 : f32 = u_xlat52.x;
  let x_3545 : f32 = x_83.unity_SpecCube0_HDR.x;
  u_xlat52.x = (x_3543 * x_3545);
  let x_3548 : vec4<f32> = u_xlat8;
  let x_3550 : vec2<f32> = u_xlat52;
  let x_3552 : vec3<f32> = (vec3<f32>(x_3548.x, x_3548.y, x_3548.z) * vec3<f32>(x_3550.x, x_3550.x, x_3550.x));
  let x_3553 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3552.x, x_3552.y, x_3552.z, x_3553.w);
  let x_3555 : f32 = u_xlat78;
  let x_3557 : f32 = u_xlat78;
  u_xlat52 = ((vec2<f32>(x_3555, x_3555) * vec2<f32>(x_3557, x_3557)) + vec2<f32>(-1.0f, 1.0f));
  let x_3563 : f32 = u_xlat52.y;
  u_xlat78 = (1.0f / x_3563);
  let x_3565 : f32 = u_xlat80;
  u_xlat80 = (x_3565 + -0.03999999910593032837f);
  let x_3568 : f32 = u_xlat83;
  let x_3569 : f32 = u_xlat80;
  u_xlat80 = ((x_3568 * x_3569) + 0.03999999910593032837f);
  let x_3573 : f32 = u_xlat78;
  let x_3574 : f32 = u_xlat80;
  u_xlat78 = (x_3573 * x_3574);
  let x_3576 : f32 = u_xlat78;
  let x_3578 : vec4<f32> = u_xlat8;
  let x_3580 : vec3<f32> = (vec3<f32>(x_3576, x_3576, x_3576) * vec3<f32>(x_3578.x, x_3578.y, x_3578.z));
  let x_3581 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3580.x, x_3580.y, x_3580.z, x_3581.w);
  let x_3583 : vec3<f32> = u_xlat5;
  let x_3584 : vec4<f32> = u_xlat6;
  let x_3587 : vec4<f32> = u_xlat8;
  u_xlat5 = ((x_3583 * vec3<f32>(x_3584.x, x_3584.y, x_3584.z)) + vec3<f32>(x_3587.x, x_3587.y, x_3587.z));
  let x_3591 : f32 = u_xlat0.x;
  let x_3593 : f32 = x_83.unity_LightData.z;
  u_xlat0.x = (x_3591 * x_3593);
  let x_3596 : vec4<f32> = u_xlat3;
  let x_3599 : vec4<f32> = x_147.x_MainLightPosition;
  u_xlat78 = dot(vec3<f32>(x_3596.x, x_3596.y, x_3596.z), vec3<f32>(x_3599.x, x_3599.y, x_3599.z));
  let x_3602 : f32 = u_xlat78;
  u_xlat78 = clamp(x_3602, 0.0f, 1.0f);
  let x_3604 : f32 = u_xlat78;
  let x_3606 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3604 * x_3606);
  let x_3609 : vec4<f32> = u_xlat0;
  let x_3611 : vec4<f32> = u_xlat7;
  let x_3613 : vec3<f32> = (vec3<f32>(x_3609.x, x_3609.x, x_3609.x) * vec3<f32>(x_3611.x, x_3611.y, x_3611.z));
  let x_3614 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3613.x, x_3613.y, x_3613.z, x_3614.w);
  let x_3616 : vec3<f32> = u_xlat4;
  let x_3618 : vec4<f32> = x_147.x_MainLightPosition;
  let x_3620 : vec3<f32> = (x_3616 + vec3<f32>(x_3618.x, x_3618.y, x_3618.z));
  let x_3621 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3620.x, x_3620.y, x_3620.z, x_3621.w);
  let x_3623 : vec4<f32> = u_xlat8;
  let x_3625 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(vec3<f32>(x_3623.x, x_3623.y, x_3623.z), vec3<f32>(x_3625.x, x_3625.y, x_3625.z));
  let x_3630 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_3630, 1.17549435e-38f);
  let x_3634 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_3634);
  let x_3637 : vec4<f32> = u_xlat0;
  let x_3639 : vec4<f32> = u_xlat8;
  let x_3641 : vec3<f32> = (vec3<f32>(x_3637.x, x_3637.x, x_3637.x) * vec3<f32>(x_3639.x, x_3639.y, x_3639.z));
  let x_3642 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3641.x, x_3641.y, x_3641.z, x_3642.w);
  let x_3644 : vec4<f32> = u_xlat3;
  let x_3646 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(vec3<f32>(x_3644.x, x_3644.y, x_3644.z), vec3<f32>(x_3646.x, x_3646.y, x_3646.z));
  let x_3651 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_3651, 0.0f, 1.0f);
  let x_3655 : vec4<f32> = x_147.x_MainLightPosition;
  let x_3657 : vec4<f32> = u_xlat8;
  u_xlat0.w = dot(vec3<f32>(x_3655.x, x_3655.y, x_3655.z), vec3<f32>(x_3657.x, x_3657.y, x_3657.z));
  let x_3662 : f32 = u_xlat0.w;
  u_xlat0.w = clamp(x_3662, 0.0f, 1.0f);
  let x_3665 : vec4<f32> = u_xlat0;
  let x_3667 : vec4<f32> = u_xlat0;
  let x_3669 : vec2<f32> = (vec2<f32>(x_3665.x, x_3665.w) * vec2<f32>(x_3667.x, x_3667.w));
  let x_3670 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3669.x, x_3670.y, x_3670.z, x_3669.y);
  let x_3673 : f32 = u_xlat0.x;
  let x_3675 : f32 = u_xlat52.x;
  u_xlat0.x = ((x_3673 * x_3675) + 1.00001001358032226562f);
  let x_3681 : f32 = u_xlat0.x;
  let x_3683 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3681 * x_3683);
  let x_3687 : f32 = u_xlat0.w;
  u_xlat78 = max(x_3687, 0.10000000149011611938f);
  let x_3690 : f32 = u_xlat78;
  let x_3692 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3690 * x_3692);
  let x_3695 : f32 = u_xlat81;
  let x_3697 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3695 * x_3697);
  let x_3700 : f32 = u_xlat54;
  let x_3702 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3700 / x_3702);
  let x_3705 : vec4<f32> = u_xlat0;
  let x_3709 : vec4<f32> = u_xlat6;
  let x_3711 : vec3<f32> = ((vec3<f32>(x_3705.x, x_3705.x, x_3705.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + vec3<f32>(x_3709.x, x_3709.y, x_3709.z));
  let x_3712 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3711.x, x_3711.y, x_3711.z, x_3712.w);
  let x_3714 : vec4<f32> = u_xlat7;
  let x_3716 : vec4<f32> = u_xlat8;
  let x_3718 : vec3<f32> = (vec3<f32>(x_3714.x, x_3714.y, x_3714.z) * vec3<f32>(x_3716.x, x_3716.y, x_3716.z));
  let x_3719 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3718.x, x_3718.y, x_3718.z, x_3719.w);
  let x_3723 : f32 = x_147.x_AdditionalLightsCount.x;
  let x_3725 : f32 = x_83.unity_LightData.y;
  u_xlat0.x = min(x_3723, x_3725);
  let x_3730 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_3730));
  let x_3734 : f32 = u_xlat2.x;
  let x_3737 : f32 = x_355.x_AdditionalShadowFadeParams.x;
  let x_3740 : f32 = x_355.x_AdditionalShadowFadeParams.y;
  u_xlat78 = ((x_3734 * x_3737) + x_3740);
  let x_3742 : f32 = u_xlat78;
  u_xlat78 = clamp(x_3742, 0.0f, 1.0f);
  let x_3745 : f32 = x_3334.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3747 : f32 = x_3334.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3749 : f32 = x_3334.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3751 : f32 = x_3334.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3752 : vec4<f32> = vec4<f32>(x_3745, x_3747, x_3749, x_3751);
  let x_3759 : vec4<bool> = (vec4<f32>(x_3752.x, x_3752.y, x_3752.z, x_3752.w) == vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));
  let x_3760 : vec2<bool> = vec2<bool>(x_3759.x, x_3759.w);
  let x_3761 : vec4<bool> = u_xlatb2;
  u_xlatb2 = vec4<bool>(x_3760.x, x_3761.y, x_3761.z, x_3760.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_3772 : u32 = u_xlatu_loop_1;
    let x_3773 : u32 = u_xlatu0;
    if ((x_3772 < x_3773)) {
    } else {
      break;
    }
    let x_3776 : u32 = u_xlatu_loop_1;
    u_xlatu84 = (x_3776 >> 2u);
    let x_3779 : u32 = u_xlatu_loop_1;
    u_xlati85 = bitcast<i32>((x_3779 & 3u));
    let x_3782 : u32 = u_xlatu84;
    let x_3785 : vec4<f32> = x_83.unity_LightIndices[bitcast<i32>(x_3782)];
    let x_3795 : i32 = u_xlati85;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_3800 : vec4<u32> = indexable[x_3795];
    u_xlat84 = dot(x_3785, bitcast<vec4<f32>>(x_3800));
    let x_3804 : f32 = u_xlat84;
    u_xlati84 = i32(x_3804);
    let x_3806 : vec3<f32> = vs_INTERP8;
    let x_3817 : i32 = u_xlati84;
    let x_3819 : vec4<f32> = x_3816.x_AdditionalLightsPosition[x_3817];
    let x_3822 : i32 = u_xlati84;
    let x_3824 : vec4<f32> = x_3816.x_AdditionalLightsPosition[x_3822];
    let x_3826 : vec3<f32> = ((-(x_3806) * vec3<f32>(x_3819.w, x_3819.w, x_3819.w)) + vec3<f32>(x_3824.x, x_3824.y, x_3824.z));
    let x_3827 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3826.x, x_3826.y, x_3826.z, x_3827.w);
    let x_3830 : vec4<f32> = u_xlat9;
    let x_3832 : vec4<f32> = u_xlat9;
    u_xlat85 = dot(vec3<f32>(x_3830.x, x_3830.y, x_3830.z), vec3<f32>(x_3832.x, x_3832.y, x_3832.z));
    let x_3835 : f32 = u_xlat85;
    u_xlat85 = max(x_3835, 0.00006103515625f);
    let x_3839 : f32 = u_xlat85;
    u_xlat86 = inverseSqrt(x_3839);
    let x_3841 : f32 = u_xlat86;
    let x_3843 : vec4<f32> = u_xlat9;
    let x_3845 : vec3<f32> = (vec3<f32>(x_3841, x_3841, x_3841) * vec3<f32>(x_3843.x, x_3843.y, x_3843.z));
    let x_3846 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3845.x, x_3845.y, x_3845.z, x_3846.w);
    let x_3849 : f32 = u_xlat85;
    u_xlat87 = (1.0f / x_3849);
    let x_3851 : f32 = u_xlat85;
    let x_3852 : i32 = u_xlati84;
    let x_3854 : f32 = x_3816.x_AdditionalLightsAttenuation[x_3852].x;
    u_xlat85 = (x_3851 * x_3854);
    let x_3856 : f32 = u_xlat85;
    let x_3858 : f32 = u_xlat85;
    u_xlat85 = ((-(x_3856) * x_3858) + 1.0f);
    let x_3861 : f32 = u_xlat85;
    u_xlat85 = max(x_3861, 0.0f);
    let x_3863 : f32 = u_xlat85;
    let x_3864 : f32 = u_xlat85;
    u_xlat85 = (x_3863 * x_3864);
    let x_3866 : f32 = u_xlat85;
    let x_3867 : f32 = u_xlat87;
    u_xlat85 = (x_3866 * x_3867);
    let x_3869 : i32 = u_xlati84;
    let x_3871 : vec4<f32> = x_3816.x_AdditionalLightsSpotDir[x_3869];
    let x_3873 : vec4<f32> = u_xlat10;
    u_xlat87 = dot(vec3<f32>(x_3871.x, x_3871.y, x_3871.z), vec3<f32>(x_3873.x, x_3873.y, x_3873.z));
    let x_3876 : f32 = u_xlat87;
    let x_3877 : i32 = u_xlati84;
    let x_3879 : f32 = x_3816.x_AdditionalLightsAttenuation[x_3877].z;
    let x_3881 : i32 = u_xlati84;
    let x_3883 : f32 = x_3816.x_AdditionalLightsAttenuation[x_3881].w;
    u_xlat87 = ((x_3876 * x_3879) + x_3883);
    let x_3885 : f32 = u_xlat87;
    u_xlat87 = clamp(x_3885, 0.0f, 1.0f);
    let x_3887 : f32 = u_xlat87;
    let x_3888 : f32 = u_xlat87;
    u_xlat87 = (x_3887 * x_3888);
    let x_3890 : f32 = u_xlat85;
    let x_3891 : f32 = u_xlat87;
    u_xlat85 = (x_3890 * x_3891);
    let x_3895 : i32 = u_xlati84;
    let x_3897 : f32 = x_355.x_AdditionalShadowParams[x_3895].w;
    u_xlati87 = i32(x_3897);
    let x_3900 : i32 = u_xlati87;
    u_xlatb88 = (x_3900 >= 0i);
    let x_3902 : bool = u_xlatb88;
    if (x_3902) {
      let x_3906 : i32 = u_xlati84;
      let x_3908 : f32 = x_355.x_AdditionalShadowParams[x_3906].z;
      u_xlatb88 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_3908, x_3908, x_3908, x_3908))));
      let x_3912 : bool = u_xlatb88;
      if (x_3912) {
        let x_3916 : vec4<f32> = u_xlat10;
        let x_3919 : vec4<f32> = u_xlat10;
        let x_3922 : vec4<bool> = (abs(vec4<f32>(x_3916.z, x_3916.z, x_3916.y, x_3916.z)) >= abs(vec4<f32>(x_3919.x, x_3919.y, x_3919.x, x_3919.x)));
        let x_3924 : vec3<bool> = vec3<bool>(x_3922.x, x_3922.y, x_3922.z);
        let x_3925 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3924.x, x_3924.y, x_3924.z, x_3925.w);
        let x_3928 : bool = u_xlatb11.y;
        let x_3930 : bool = u_xlatb11.x;
        u_xlatb88 = (x_3928 & x_3930);
        let x_3932 : vec4<f32> = u_xlat10;
        let x_3935 : vec4<bool> = (-(vec4<f32>(x_3932.z, x_3932.y, x_3932.z, x_3932.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_3936 : vec3<bool> = vec3<bool>(x_3935.x, x_3935.y, x_3935.w);
        let x_3937 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3936.x, x_3936.y, x_3937.z, x_3936.z);
        let x_3940 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_3940);
        let x_3945 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_3945);
        let x_3951 : bool = u_xlatb11.w;
        u_xlat89 = select(0.0f, 1.0f, x_3951);
        let x_3955 : bool = u_xlatb11.z;
        if (x_3955) {
          let x_3960 : f32 = u_xlat11.y;
          x_3956 = x_3960;
        } else {
          let x_3962 : f32 = u_xlat89;
          x_3956 = x_3962;
        }
        let x_3963 : f32 = x_3956;
        u_xlat37.x = x_3963;
        let x_3966 : bool = u_xlatb88;
        if (x_3966) {
          let x_3971 : f32 = u_xlat11.x;
          x_3967 = x_3971;
        } else {
          let x_3974 : f32 = u_xlat37.x;
          x_3967 = x_3974;
        }
        let x_3975 : f32 = x_3967;
        u_xlat88 = x_3975;
        let x_3976 : i32 = u_xlati84;
        let x_3978 : f32 = x_355.x_AdditionalShadowParams[x_3976].w;
        u_xlat11.x = trunc(x_3978);
        let x_3981 : f32 = u_xlat88;
        let x_3983 : f32 = u_xlat11.x;
        u_xlat88 = (x_3981 + x_3983);
        let x_3985 : f32 = u_xlat88;
        u_xlati87 = i32(x_3985);
      }
      let x_3987 : i32 = u_xlati87;
      u_xlati87 = (x_3987 << bitcast<u32>(2i));
      let x_3989 : vec3<f32> = vs_INTERP8;
      let x_3992 : i32 = u_xlati87;
      let x_3995 : i32 = u_xlati87;
      let x_3999 : vec4<f32> = x_355.x_AdditionalLightsWorldToShadow[((x_3992 + 1i) / 4i)][((x_3995 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_3989.y, x_3989.y, x_3989.y, x_3989.y) * x_3999);
      let x_4001 : i32 = u_xlati87;
      let x_4003 : i32 = u_xlati87;
      let x_4006 : vec4<f32> = x_355.x_AdditionalLightsWorldToShadow[(x_4001 / 4i)][(x_4003 % 4i)];
      let x_4007 : vec3<f32> = vs_INTERP8;
      let x_4010 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_4006 * vec4<f32>(x_4007.x, x_4007.x, x_4007.x, x_4007.x)) + x_4010);
      let x_4012 : i32 = u_xlati87;
      let x_4015 : i32 = u_xlati87;
      let x_4019 : vec4<f32> = x_355.x_AdditionalLightsWorldToShadow[((x_4012 + 2i) / 4i)][((x_4015 + 2i) % 4i)];
      let x_4020 : vec3<f32> = vs_INTERP8;
      let x_4023 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_4019 * vec4<f32>(x_4020.z, x_4020.z, x_4020.z, x_4020.z)) + x_4023);
      let x_4025 : vec4<f32> = u_xlat11;
      let x_4026 : i32 = u_xlati87;
      let x_4029 : i32 = u_xlati87;
      let x_4033 : vec4<f32> = x_355.x_AdditionalLightsWorldToShadow[((x_4026 + 3i) / 4i)][((x_4029 + 3i) % 4i)];
      u_xlat11 = (x_4025 + x_4033);
      let x_4035 : vec4<f32> = u_xlat11;
      let x_4037 : vec4<f32> = u_xlat11;
      let x_4039 : vec3<f32> = (vec3<f32>(x_4035.x, x_4035.y, x_4035.z) / vec3<f32>(x_4037.w, x_4037.w, x_4037.w));
      let x_4040 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4039.x, x_4039.y, x_4039.z, x_4040.w);
      let x_4043 : i32 = u_xlati84;
      let x_4045 : f32 = x_355.x_AdditionalShadowParams[x_4043].y;
      u_xlatb87 = (0.0f < x_4045);
      let x_4047 : bool = u_xlatb87;
      if (x_4047) {
        let x_4050 : i32 = u_xlati84;
        let x_4052 : f32 = x_355.x_AdditionalShadowParams[x_4050].y;
        u_xlatb87 = (1.0f == x_4052);
        let x_4054 : bool = u_xlatb87;
        if (x_4054) {
          let x_4057 : vec4<f32> = u_xlat11;
          let x_4061 : vec4<f32> = x_355.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_4057.x, x_4057.y, x_4057.x, x_4057.y) + x_4061);
          let x_4064 : vec4<f32> = u_xlat12;
          let x_4065 : vec2<f32> = vec2<f32>(x_4064.x, x_4064.y);
          let x_4067 : f32 = u_xlat11.z;
          txVec60 = vec3<f32>(x_4065.x, x_4065.y, x_4067);
          let x_4075 : vec3<f32> = txVec60;
          let x_4077 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4075.xy, x_4075.z);
          u_xlat13.x = x_4077;
          let x_4080 : vec4<f32> = u_xlat12;
          let x_4081 : vec2<f32> = vec2<f32>(x_4080.z, x_4080.w);
          let x_4083 : f32 = u_xlat11.z;
          txVec61 = vec3<f32>(x_4081.x, x_4081.y, x_4083);
          let x_4090 : vec3<f32> = txVec61;
          let x_4092 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4090.xy, x_4090.z);
          u_xlat13.y = x_4092;
          let x_4094 : vec4<f32> = u_xlat11;
          let x_4097 : vec4<f32> = x_355.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_4094.x, x_4094.y, x_4094.x, x_4094.y) + x_4097);
          let x_4100 : vec4<f32> = u_xlat12;
          let x_4101 : vec2<f32> = vec2<f32>(x_4100.x, x_4100.y);
          let x_4103 : f32 = u_xlat11.z;
          txVec62 = vec3<f32>(x_4101.x, x_4101.y, x_4103);
          let x_4110 : vec3<f32> = txVec62;
          let x_4112 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4110.xy, x_4110.z);
          u_xlat13.z = x_4112;
          let x_4115 : vec4<f32> = u_xlat12;
          let x_4116 : vec2<f32> = vec2<f32>(x_4115.z, x_4115.w);
          let x_4118 : f32 = u_xlat11.z;
          txVec63 = vec3<f32>(x_4116.x, x_4116.y, x_4118);
          let x_4125 : vec3<f32> = txVec63;
          let x_4127 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4125.xy, x_4125.z);
          u_xlat13.w = x_4127;
          let x_4129 : vec4<f32> = u_xlat13;
          u_xlat87 = dot(x_4129, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_4132 : i32 = u_xlati84;
          let x_4134 : f32 = x_355.x_AdditionalShadowParams[x_4132].y;
          u_xlatb88 = (2.0f == x_4134);
          let x_4136 : bool = u_xlatb88;
          if (x_4136) {
            let x_4139 : vec4<f32> = u_xlat11;
            let x_4143 : vec4<f32> = x_355.x_AdditionalShadowmapSize;
            let x_4146 : vec2<f32> = ((vec2<f32>(x_4139.x, x_4139.y) * vec2<f32>(x_4143.z, x_4143.w)) + vec2<f32>(0.5f, 0.5f));
            let x_4147 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4146.x, x_4146.y, x_4147.z, x_4147.w);
            let x_4149 : vec4<f32> = u_xlat12;
            let x_4151 : vec2<f32> = floor(vec2<f32>(x_4149.x, x_4149.y));
            let x_4152 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4151.x, x_4151.y, x_4152.z, x_4152.w);
            let x_4155 : vec4<f32> = u_xlat11;
            let x_4158 : vec4<f32> = x_355.x_AdditionalShadowmapSize;
            let x_4161 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_4155.x, x_4155.y) * vec2<f32>(x_4158.z, x_4158.w)) + -(vec2<f32>(x_4161.x, x_4161.y)));
            let x_4165 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_4165.x, x_4165.x, x_4165.y, x_4165.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4168 : vec4<f32> = u_xlat13;
            let x_4170 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_4168.x, x_4168.x, x_4168.z, x_4168.z) * vec4<f32>(x_4170.x, x_4170.x, x_4170.z, x_4170.z));
            let x_4173 : vec4<f32> = u_xlat14;
            let x_4175 : vec2<f32> = (vec2<f32>(x_4173.y, x_4173.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_4176 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4175.x, x_4176.y, x_4175.y, x_4176.w);
            let x_4178 : vec4<f32> = u_xlat14;
            let x_4181 : vec2<f32> = u_xlat64;
            let x_4183 : vec2<f32> = ((vec2<f32>(x_4178.x, x_4178.z) * vec2<f32>(0.5f, 0.5f)) + -(x_4181));
            let x_4184 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4183.x, x_4183.y, x_4184.z, x_4184.w);
            let x_4187 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_4187) + vec2<f32>(1.0f, 1.0f));
            let x_4190 : vec2<f32> = u_xlat64;
            let x_4191 : vec2<f32> = min(x_4190, vec2<f32>(0.0f, 0.0f));
            let x_4192 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4191.x, x_4191.y, x_4192.z, x_4192.w);
            let x_4194 : vec4<f32> = u_xlat15;
            let x_4197 : vec4<f32> = u_xlat15;
            let x_4200 : vec2<f32> = u_xlat66;
            let x_4201 : vec2<f32> = ((-(vec2<f32>(x_4194.x, x_4194.y)) * vec2<f32>(x_4197.x, x_4197.y)) + x_4200);
            let x_4202 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4201.x, x_4201.y, x_4202.z, x_4202.w);
            let x_4204 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_4204, vec2<f32>(0.0f, 0.0f));
            let x_4206 : vec2<f32> = u_xlat64;
            let x_4208 : vec2<f32> = u_xlat64;
            let x_4210 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_4206) * x_4208) + vec2<f32>(x_4210.y, x_4210.w));
            let x_4213 : vec4<f32> = u_xlat15;
            let x_4215 : vec2<f32> = (vec2<f32>(x_4213.x, x_4213.y) + vec2<f32>(1.0f, 1.0f));
            let x_4216 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4215.x, x_4215.y, x_4216.z, x_4216.w);
            let x_4218 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_4218 + vec2<f32>(1.0f, 1.0f));
            let x_4220 : vec4<f32> = u_xlat14;
            let x_4222 : vec2<f32> = (vec2<f32>(x_4220.x, x_4220.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4223 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4222.x, x_4222.y, x_4223.z, x_4223.w);
            let x_4225 : vec2<f32> = u_xlat66;
            let x_4226 : vec2<f32> = (x_4225 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4227 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4226.x, x_4226.y, x_4227.z, x_4227.w);
            let x_4229 : vec4<f32> = u_xlat15;
            let x_4231 : vec2<f32> = (vec2<f32>(x_4229.x, x_4229.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4232 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4231.x, x_4231.y, x_4232.z, x_4232.w);
            let x_4234 : vec2<f32> = u_xlat64;
            let x_4235 : vec2<f32> = (x_4234 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4236 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4235.x, x_4235.y, x_4236.z, x_4236.w);
            let x_4238 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_4238.y, x_4238.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4242 : f32 = u_xlat15.x;
            u_xlat16.z = x_4242;
            let x_4245 : f32 = u_xlat64.x;
            u_xlat16.w = x_4245;
            let x_4248 : f32 = u_xlat17.x;
            u_xlat14.z = x_4248;
            let x_4251 : f32 = u_xlat13.x;
            u_xlat14.w = x_4251;
            let x_4253 : vec4<f32> = u_xlat14;
            let x_4255 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_4253.z, x_4253.w, x_4253.x, x_4253.z) + vec4<f32>(x_4255.z, x_4255.w, x_4255.x, x_4255.z));
            let x_4259 : f32 = u_xlat16.y;
            u_xlat15.z = x_4259;
            let x_4262 : f32 = u_xlat64.y;
            u_xlat15.w = x_4262;
            let x_4265 : f32 = u_xlat14.y;
            u_xlat17.z = x_4265;
            let x_4268 : f32 = u_xlat13.z;
            u_xlat17.w = x_4268;
            let x_4270 : vec4<f32> = u_xlat15;
            let x_4272 : vec4<f32> = u_xlat17;
            let x_4274 : vec3<f32> = (vec3<f32>(x_4270.z, x_4270.y, x_4270.w) + vec3<f32>(x_4272.z, x_4272.y, x_4272.w));
            let x_4275 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4274.x, x_4274.y, x_4274.z, x_4275.w);
            let x_4277 : vec4<f32> = u_xlat14;
            let x_4279 : vec4<f32> = u_xlat18;
            let x_4281 : vec3<f32> = (vec3<f32>(x_4277.x, x_4277.z, x_4277.w) / vec3<f32>(x_4279.z, x_4279.w, x_4279.y));
            let x_4282 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4281.x, x_4281.y, x_4281.z, x_4282.w);
            let x_4284 : vec4<f32> = u_xlat14;
            let x_4286 : vec3<f32> = (vec3<f32>(x_4284.x, x_4284.y, x_4284.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4287 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4286.x, x_4286.y, x_4286.z, x_4287.w);
            let x_4289 : vec4<f32> = u_xlat17;
            let x_4291 : vec4<f32> = u_xlat13;
            let x_4293 : vec3<f32> = (vec3<f32>(x_4289.z, x_4289.y, x_4289.w) / vec3<f32>(x_4291.x, x_4291.y, x_4291.z));
            let x_4294 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4293.x, x_4293.y, x_4293.z, x_4294.w);
            let x_4296 : vec4<f32> = u_xlat15;
            let x_4298 : vec3<f32> = (vec3<f32>(x_4296.x, x_4296.y, x_4296.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4299 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4298.x, x_4298.y, x_4298.z, x_4299.w);
            let x_4301 : vec4<f32> = u_xlat14;
            let x_4304 : vec4<f32> = x_355.x_AdditionalShadowmapSize;
            let x_4306 : vec3<f32> = (vec3<f32>(x_4301.y, x_4301.x, x_4301.z) * vec3<f32>(x_4304.x, x_4304.x, x_4304.x));
            let x_4307 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4306.x, x_4306.y, x_4306.z, x_4307.w);
            let x_4309 : vec4<f32> = u_xlat15;
            let x_4312 : vec4<f32> = x_355.x_AdditionalShadowmapSize;
            let x_4314 : vec3<f32> = (vec3<f32>(x_4309.x, x_4309.y, x_4309.z) * vec3<f32>(x_4312.y, x_4312.y, x_4312.y));
            let x_4315 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4314.x, x_4314.y, x_4314.z, x_4315.w);
            let x_4318 : f32 = u_xlat15.x;
            u_xlat14.w = x_4318;
            let x_4320 : vec4<f32> = u_xlat12;
            let x_4323 : vec4<f32> = x_355.x_AdditionalShadowmapSize;
            let x_4326 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_4320.x, x_4320.y, x_4320.x, x_4320.y) * vec4<f32>(x_4323.x, x_4323.y, x_4323.x, x_4323.y)) + vec4<f32>(x_4326.y, x_4326.w, x_4326.x, x_4326.w));
            let x_4329 : vec4<f32> = u_xlat12;
            let x_4332 : vec4<f32> = x_355.x_AdditionalShadowmapSize;
            let x_4335 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_4329.x, x_4329.y) * vec2<f32>(x_4332.x, x_4332.y)) + vec2<f32>(x_4335.z, x_4335.w));
            let x_4339 : f32 = u_xlat14.y;
            u_xlat15.w = x_4339;
            let x_4341 : vec4<f32> = u_xlat15;
            let x_4342 : vec2<f32> = vec2<f32>(x_4341.y, x_4341.z);
            let x_4343 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4343.x, x_4342.x, x_4343.z, x_4342.y);
            let x_4345 : vec4<f32> = u_xlat12;
            let x_4348 : vec4<f32> = x_355.x_AdditionalShadowmapSize;
            let x_4351 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_4345.x, x_4345.y, x_4345.x, x_4345.y) * vec4<f32>(x_4348.x, x_4348.y, x_4348.x, x_4348.y)) + vec4<f32>(x_4351.x, x_4351.y, x_4351.z, x_4351.y));
            let x_4354 : vec4<f32> = u_xlat12;
            let x_4357 : vec4<f32> = x_355.x_AdditionalShadowmapSize;
            let x_4360 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_4354.x, x_4354.y, x_4354.x, x_4354.y) * vec4<f32>(x_4357.x, x_4357.y, x_4357.x, x_4357.y)) + vec4<f32>(x_4360.w, x_4360.y, x_4360.w, x_4360.z));
            let x_4363 : vec4<f32> = u_xlat12;
            let x_4366 : vec4<f32> = x_355.x_AdditionalShadowmapSize;
            let x_4369 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_4363.x, x_4363.y, x_4363.x, x_4363.y) * vec4<f32>(x_4366.x, x_4366.y, x_4366.x, x_4366.y)) + vec4<f32>(x_4369.x, x_4369.w, x_4369.z, x_4369.w));
            let x_4372 : vec4<f32> = u_xlat13;
            let x_4374 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_4372.x, x_4372.x, x_4372.x, x_4372.y) * vec4<f32>(x_4374.z, x_4374.w, x_4374.y, x_4374.z));
            let x_4377 : vec4<f32> = u_xlat13;
            let x_4379 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_4377.y, x_4377.y, x_4377.z, x_4377.z) * x_4379);
            let x_4382 : f32 = u_xlat13.z;
            let x_4384 : f32 = u_xlat18.y;
            u_xlat88 = (x_4382 * x_4384);
            let x_4387 : vec4<f32> = u_xlat16;
            let x_4388 : vec2<f32> = vec2<f32>(x_4387.x, x_4387.y);
            let x_4390 : f32 = u_xlat11.z;
            txVec64 = vec3<f32>(x_4388.x, x_4388.y, x_4390);
            let x_4397 : vec3<f32> = txVec64;
            let x_4399 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4397.xy, x_4397.z);
            u_xlat89 = x_4399;
            let x_4401 : vec4<f32> = u_xlat16;
            let x_4402 : vec2<f32> = vec2<f32>(x_4401.z, x_4401.w);
            let x_4404 : f32 = u_xlat11.z;
            txVec65 = vec3<f32>(x_4402.x, x_4402.y, x_4404);
            let x_4411 : vec3<f32> = txVec65;
            let x_4413 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4411.xy, x_4411.z);
            u_xlat12.x = x_4413;
            let x_4416 : f32 = u_xlat12.x;
            let x_4418 : f32 = u_xlat19.y;
            u_xlat12.x = (x_4416 * x_4418);
            let x_4422 : f32 = u_xlat19.x;
            let x_4423 : f32 = u_xlat89;
            let x_4426 : f32 = u_xlat12.x;
            u_xlat89 = ((x_4422 * x_4423) + x_4426);
            let x_4429 : vec2<f32> = u_xlat64;
            let x_4431 : f32 = u_xlat11.z;
            txVec66 = vec3<f32>(x_4429.x, x_4429.y, x_4431);
            let x_4438 : vec3<f32> = txVec66;
            let x_4440 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4438.xy, x_4438.z);
            u_xlat12.x = x_4440;
            let x_4443 : f32 = u_xlat19.z;
            let x_4445 : f32 = u_xlat12.x;
            let x_4447 : f32 = u_xlat89;
            u_xlat89 = ((x_4443 * x_4445) + x_4447);
            let x_4450 : vec4<f32> = u_xlat15;
            let x_4451 : vec2<f32> = vec2<f32>(x_4450.x, x_4450.y);
            let x_4453 : f32 = u_xlat11.z;
            txVec67 = vec3<f32>(x_4451.x, x_4451.y, x_4453);
            let x_4460 : vec3<f32> = txVec67;
            let x_4462 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4460.xy, x_4460.z);
            u_xlat12.x = x_4462;
            let x_4465 : f32 = u_xlat19.w;
            let x_4467 : f32 = u_xlat12.x;
            let x_4469 : f32 = u_xlat89;
            u_xlat89 = ((x_4465 * x_4467) + x_4469);
            let x_4472 : vec4<f32> = u_xlat17;
            let x_4473 : vec2<f32> = vec2<f32>(x_4472.x, x_4472.y);
            let x_4475 : f32 = u_xlat11.z;
            txVec68 = vec3<f32>(x_4473.x, x_4473.y, x_4475);
            let x_4482 : vec3<f32> = txVec68;
            let x_4484 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4482.xy, x_4482.z);
            u_xlat12.x = x_4484;
            let x_4487 : f32 = u_xlat20.x;
            let x_4489 : f32 = u_xlat12.x;
            let x_4491 : f32 = u_xlat89;
            u_xlat89 = ((x_4487 * x_4489) + x_4491);
            let x_4494 : vec4<f32> = u_xlat17;
            let x_4495 : vec2<f32> = vec2<f32>(x_4494.z, x_4494.w);
            let x_4497 : f32 = u_xlat11.z;
            txVec69 = vec3<f32>(x_4495.x, x_4495.y, x_4497);
            let x_4504 : vec3<f32> = txVec69;
            let x_4506 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4504.xy, x_4504.z);
            u_xlat12.x = x_4506;
            let x_4509 : f32 = u_xlat20.y;
            let x_4511 : f32 = u_xlat12.x;
            let x_4513 : f32 = u_xlat89;
            u_xlat89 = ((x_4509 * x_4511) + x_4513);
            let x_4516 : vec4<f32> = u_xlat15;
            let x_4517 : vec2<f32> = vec2<f32>(x_4516.z, x_4516.w);
            let x_4519 : f32 = u_xlat11.z;
            txVec70 = vec3<f32>(x_4517.x, x_4517.y, x_4519);
            let x_4526 : vec3<f32> = txVec70;
            let x_4528 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4526.xy, x_4526.z);
            u_xlat12.x = x_4528;
            let x_4531 : f32 = u_xlat20.z;
            let x_4533 : f32 = u_xlat12.x;
            let x_4535 : f32 = u_xlat89;
            u_xlat89 = ((x_4531 * x_4533) + x_4535);
            let x_4538 : vec4<f32> = u_xlat14;
            let x_4539 : vec2<f32> = vec2<f32>(x_4538.x, x_4538.y);
            let x_4541 : f32 = u_xlat11.z;
            txVec71 = vec3<f32>(x_4539.x, x_4539.y, x_4541);
            let x_4548 : vec3<f32> = txVec71;
            let x_4550 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4548.xy, x_4548.z);
            u_xlat12.x = x_4550;
            let x_4553 : f32 = u_xlat20.w;
            let x_4555 : f32 = u_xlat12.x;
            let x_4557 : f32 = u_xlat89;
            u_xlat89 = ((x_4553 * x_4555) + x_4557);
            let x_4560 : vec4<f32> = u_xlat14;
            let x_4561 : vec2<f32> = vec2<f32>(x_4560.z, x_4560.w);
            let x_4563 : f32 = u_xlat11.z;
            txVec72 = vec3<f32>(x_4561.x, x_4561.y, x_4563);
            let x_4570 : vec3<f32> = txVec72;
            let x_4572 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4570.xy, x_4570.z);
            u_xlat12.x = x_4572;
            let x_4574 : f32 = u_xlat88;
            let x_4576 : f32 = u_xlat12.x;
            let x_4578 : f32 = u_xlat89;
            u_xlat87 = ((x_4574 * x_4576) + x_4578);
          } else {
            let x_4581 : vec4<f32> = u_xlat11;
            let x_4584 : vec4<f32> = x_355.x_AdditionalShadowmapSize;
            let x_4587 : vec2<f32> = ((vec2<f32>(x_4581.x, x_4581.y) * vec2<f32>(x_4584.z, x_4584.w)) + vec2<f32>(0.5f, 0.5f));
            let x_4588 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4587.x, x_4587.y, x_4588.z, x_4588.w);
            let x_4590 : vec4<f32> = u_xlat12;
            let x_4592 : vec2<f32> = floor(vec2<f32>(x_4590.x, x_4590.y));
            let x_4593 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4592.x, x_4592.y, x_4593.z, x_4593.w);
            let x_4595 : vec4<f32> = u_xlat11;
            let x_4598 : vec4<f32> = x_355.x_AdditionalShadowmapSize;
            let x_4601 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_4595.x, x_4595.y) * vec2<f32>(x_4598.z, x_4598.w)) + -(vec2<f32>(x_4601.x, x_4601.y)));
            let x_4605 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_4605.x, x_4605.x, x_4605.y, x_4605.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4608 : vec4<f32> = u_xlat13;
            let x_4610 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_4608.x, x_4608.x, x_4608.z, x_4608.z) * vec4<f32>(x_4610.x, x_4610.x, x_4610.z, x_4610.z));
            let x_4613 : vec4<f32> = u_xlat14;
            let x_4615 : vec2<f32> = (vec2<f32>(x_4613.y, x_4613.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_4616 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4616.x, x_4615.x, x_4616.z, x_4615.y);
            let x_4618 : vec4<f32> = u_xlat14;
            let x_4621 : vec2<f32> = u_xlat64;
            let x_4623 : vec2<f32> = ((vec2<f32>(x_4618.x, x_4618.z) * vec2<f32>(0.5f, 0.5f)) + -(x_4621));
            let x_4624 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4623.x, x_4624.y, x_4623.y, x_4624.w);
            let x_4626 : vec2<f32> = u_xlat64;
            let x_4628 : vec2<f32> = (-(x_4626) + vec2<f32>(1.0f, 1.0f));
            let x_4629 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4628.x, x_4628.y, x_4629.z, x_4629.w);
            let x_4631 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_4631, vec2<f32>(0.0f, 0.0f));
            let x_4633 : vec2<f32> = u_xlat66;
            let x_4635 : vec2<f32> = u_xlat66;
            let x_4637 : vec4<f32> = u_xlat14;
            let x_4639 : vec2<f32> = ((-(x_4633) * x_4635) + vec2<f32>(x_4637.x, x_4637.y));
            let x_4640 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4639.x, x_4639.y, x_4640.z, x_4640.w);
            let x_4642 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_4642, vec2<f32>(0.0f, 0.0f));
            let x_4645 : vec2<f32> = u_xlat66;
            let x_4647 : vec2<f32> = u_xlat66;
            let x_4649 : vec4<f32> = u_xlat13;
            let x_4651 : vec2<f32> = ((-(x_4645) * x_4647) + vec2<f32>(x_4649.y, x_4649.w));
            let x_4652 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_4651.x, x_4652.y, x_4651.y);
            let x_4654 : vec4<f32> = u_xlat14;
            let x_4656 : vec2<f32> = (vec2<f32>(x_4654.x, x_4654.y) + vec2<f32>(2.0f, 2.0f));
            let x_4657 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4656.x, x_4656.y, x_4657.z, x_4657.w);
            let x_4659 : vec3<f32> = u_xlat39;
            let x_4661 : vec2<f32> = (vec2<f32>(x_4659.x, x_4659.z) + vec2<f32>(2.0f, 2.0f));
            let x_4662 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4662.x, x_4661.x, x_4662.z, x_4661.y);
            let x_4665 : f32 = u_xlat13.y;
            u_xlat16.z = (x_4665 * 0.08163200318813323975f);
            let x_4668 : vec4<f32> = u_xlat13;
            let x_4670 : vec3<f32> = (vec3<f32>(x_4668.z, x_4668.x, x_4668.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_4671 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4670.x, x_4670.y, x_4670.z, x_4671.w);
            let x_4673 : vec4<f32> = u_xlat14;
            let x_4675 : vec2<f32> = (vec2<f32>(x_4673.x, x_4673.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_4676 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4675.x, x_4675.y, x_4676.z, x_4676.w);
            let x_4679 : f32 = u_xlat17.y;
            u_xlat16.x = x_4679;
            let x_4681 : vec2<f32> = u_xlat64;
            let x_4684 : vec2<f32> = ((vec2<f32>(x_4681.x, x_4681.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4685 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4685.x, x_4684.x, x_4685.z, x_4684.y);
            let x_4687 : vec2<f32> = u_xlat64;
            let x_4690 : vec2<f32> = ((vec2<f32>(x_4687.x, x_4687.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4691 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4690.x, x_4691.y, x_4690.y, x_4691.w);
            let x_4694 : f32 = u_xlat13.x;
            u_xlat14.y = x_4694;
            let x_4697 : f32 = u_xlat15.y;
            u_xlat14.w = x_4697;
            let x_4699 : vec4<f32> = u_xlat14;
            let x_4700 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_4699 + x_4700);
            let x_4702 : vec2<f32> = u_xlat64;
            let x_4705 : vec2<f32> = ((vec2<f32>(x_4702.y, x_4702.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4706 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4706.x, x_4705.x, x_4706.z, x_4705.y);
            let x_4708 : vec2<f32> = u_xlat64;
            let x_4711 : vec2<f32> = ((vec2<f32>(x_4708.y, x_4708.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4712 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4711.x, x_4712.y, x_4711.y, x_4712.w);
            let x_4715 : f32 = u_xlat13.y;
            u_xlat15.y = x_4715;
            let x_4717 : vec4<f32> = u_xlat15;
            let x_4718 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_4717 + x_4718);
            let x_4720 : vec4<f32> = u_xlat14;
            let x_4721 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_4720 / x_4721);
            let x_4723 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_4723 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4725 : vec4<f32> = u_xlat15;
            let x_4726 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_4725 / x_4726);
            let x_4728 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_4728 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4730 : vec4<f32> = u_xlat14;
            let x_4733 : vec4<f32> = x_355.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_4730.w, x_4730.x, x_4730.y, x_4730.z) * vec4<f32>(x_4733.x, x_4733.x, x_4733.x, x_4733.x));
            let x_4736 : vec4<f32> = u_xlat15;
            let x_4739 : vec4<f32> = x_355.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_4736.x, x_4736.w, x_4736.y, x_4736.z) * vec4<f32>(x_4739.y, x_4739.y, x_4739.y, x_4739.y));
            let x_4742 : vec4<f32> = u_xlat14;
            let x_4743 : vec3<f32> = vec3<f32>(x_4742.y, x_4742.z, x_4742.w);
            let x_4744 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4743.x, x_4744.y, x_4743.y, x_4743.z);
            let x_4747 : f32 = u_xlat15.x;
            u_xlat17.y = x_4747;
            let x_4749 : vec4<f32> = u_xlat12;
            let x_4752 : vec4<f32> = x_355.x_AdditionalShadowmapSize;
            let x_4755 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_4749.x, x_4749.y, x_4749.x, x_4749.y) * vec4<f32>(x_4752.x, x_4752.y, x_4752.x, x_4752.y)) + vec4<f32>(x_4755.x, x_4755.y, x_4755.z, x_4755.y));
            let x_4758 : vec4<f32> = u_xlat12;
            let x_4761 : vec4<f32> = x_355.x_AdditionalShadowmapSize;
            let x_4764 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_4758.x, x_4758.y) * vec2<f32>(x_4761.x, x_4761.y)) + vec2<f32>(x_4764.w, x_4764.y));
            let x_4768 : f32 = u_xlat17.y;
            u_xlat14.y = x_4768;
            let x_4771 : f32 = u_xlat15.z;
            u_xlat17.y = x_4771;
            let x_4773 : vec4<f32> = u_xlat12;
            let x_4776 : vec4<f32> = x_355.x_AdditionalShadowmapSize;
            let x_4779 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_4773.x, x_4773.y, x_4773.x, x_4773.y) * vec4<f32>(x_4776.x, x_4776.y, x_4776.x, x_4776.y)) + vec4<f32>(x_4779.x, x_4779.y, x_4779.z, x_4779.y));
            let x_4782 : vec4<f32> = u_xlat12;
            let x_4785 : vec4<f32> = x_355.x_AdditionalShadowmapSize;
            let x_4788 : vec4<f32> = u_xlat17;
            let x_4790 : vec2<f32> = ((vec2<f32>(x_4782.x, x_4782.y) * vec2<f32>(x_4785.x, x_4785.y)) + vec2<f32>(x_4788.w, x_4788.y));
            let x_4791 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_4790.x, x_4790.y, x_4791.z, x_4791.w);
            let x_4794 : f32 = u_xlat17.y;
            u_xlat14.z = x_4794;
            let x_4796 : vec4<f32> = u_xlat12;
            let x_4799 : vec4<f32> = x_355.x_AdditionalShadowmapSize;
            let x_4802 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_4796.x, x_4796.y, x_4796.x, x_4796.y) * vec4<f32>(x_4799.x, x_4799.y, x_4799.x, x_4799.y)) + vec4<f32>(x_4802.x, x_4802.y, x_4802.x, x_4802.z));
            let x_4806 : f32 = u_xlat15.w;
            u_xlat17.y = x_4806;
            let x_4809 : vec4<f32> = u_xlat12;
            let x_4812 : vec4<f32> = x_355.x_AdditionalShadowmapSize;
            let x_4815 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_4809.x, x_4809.y, x_4809.x, x_4809.y) * vec4<f32>(x_4812.x, x_4812.y, x_4812.x, x_4812.y)) + vec4<f32>(x_4815.x, x_4815.y, x_4815.z, x_4815.y));
            let x_4819 : vec4<f32> = u_xlat12;
            let x_4822 : vec4<f32> = x_355.x_AdditionalShadowmapSize;
            let x_4825 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_4819.x, x_4819.y) * vec2<f32>(x_4822.x, x_4822.y)) + vec2<f32>(x_4825.w, x_4825.y));
            let x_4829 : f32 = u_xlat17.y;
            u_xlat14.w = x_4829;
            let x_4832 : vec4<f32> = u_xlat12;
            let x_4835 : vec4<f32> = x_355.x_AdditionalShadowmapSize;
            let x_4838 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_4832.x, x_4832.y) * vec2<f32>(x_4835.x, x_4835.y)) + vec2<f32>(x_4838.x, x_4838.w));
            let x_4841 : vec4<f32> = u_xlat17;
            let x_4842 : vec3<f32> = vec3<f32>(x_4841.x, x_4841.z, x_4841.w);
            let x_4843 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4842.x, x_4843.y, x_4842.y, x_4842.z);
            let x_4845 : vec4<f32> = u_xlat12;
            let x_4848 : vec4<f32> = x_355.x_AdditionalShadowmapSize;
            let x_4851 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_4845.x, x_4845.y, x_4845.x, x_4845.y) * vec4<f32>(x_4848.x, x_4848.y, x_4848.x, x_4848.y)) + vec4<f32>(x_4851.x, x_4851.y, x_4851.z, x_4851.y));
            let x_4854 : vec4<f32> = u_xlat12;
            let x_4857 : vec4<f32> = x_355.x_AdditionalShadowmapSize;
            let x_4860 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_4854.x, x_4854.y) * vec2<f32>(x_4857.x, x_4857.y)) + vec2<f32>(x_4860.w, x_4860.y));
            let x_4864 : f32 = u_xlat14.x;
            u_xlat15.x = x_4864;
            let x_4866 : vec4<f32> = u_xlat12;
            let x_4869 : vec4<f32> = x_355.x_AdditionalShadowmapSize;
            let x_4872 : vec4<f32> = u_xlat15;
            let x_4874 : vec2<f32> = ((vec2<f32>(x_4866.x, x_4866.y) * vec2<f32>(x_4869.x, x_4869.y)) + vec2<f32>(x_4872.x, x_4872.y));
            let x_4875 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4874.x, x_4874.y, x_4875.z, x_4875.w);
            let x_4878 : vec4<f32> = u_xlat13;
            let x_4880 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_4878.x, x_4878.x, x_4878.x, x_4878.x) * x_4880);
            let x_4883 : vec4<f32> = u_xlat13;
            let x_4885 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_4883.y, x_4883.y, x_4883.y, x_4883.y) * x_4885);
            let x_4888 : vec4<f32> = u_xlat13;
            let x_4890 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_4888.z, x_4888.z, x_4888.z, x_4888.z) * x_4890);
            let x_4892 : vec4<f32> = u_xlat13;
            let x_4894 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_4892.w, x_4892.w, x_4892.w, x_4892.w) * x_4894);
            let x_4897 : vec4<f32> = u_xlat18;
            let x_4898 : vec2<f32> = vec2<f32>(x_4897.x, x_4897.y);
            let x_4900 : f32 = u_xlat11.z;
            txVec73 = vec3<f32>(x_4898.x, x_4898.y, x_4900);
            let x_4907 : vec3<f32> = txVec73;
            let x_4909 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4907.xy, x_4907.z);
            u_xlat88 = x_4909;
            let x_4911 : vec4<f32> = u_xlat18;
            let x_4912 : vec2<f32> = vec2<f32>(x_4911.z, x_4911.w);
            let x_4914 : f32 = u_xlat11.z;
            txVec74 = vec3<f32>(x_4912.x, x_4912.y, x_4914);
            let x_4921 : vec3<f32> = txVec74;
            let x_4923 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4921.xy, x_4921.z);
            u_xlat89 = x_4923;
            let x_4924 : f32 = u_xlat89;
            let x_4926 : f32 = u_xlat23.y;
            u_xlat89 = (x_4924 * x_4926);
            let x_4929 : f32 = u_xlat23.x;
            let x_4930 : f32 = u_xlat88;
            let x_4932 : f32 = u_xlat89;
            u_xlat88 = ((x_4929 * x_4930) + x_4932);
            let x_4935 : vec2<f32> = u_xlat64;
            let x_4937 : f32 = u_xlat11.z;
            txVec75 = vec3<f32>(x_4935.x, x_4935.y, x_4937);
            let x_4944 : vec3<f32> = txVec75;
            let x_4946 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4944.xy, x_4944.z);
            u_xlat89 = x_4946;
            let x_4948 : f32 = u_xlat23.z;
            let x_4949 : f32 = u_xlat89;
            let x_4951 : f32 = u_xlat88;
            u_xlat88 = ((x_4948 * x_4949) + x_4951);
            let x_4954 : vec4<f32> = u_xlat21;
            let x_4955 : vec2<f32> = vec2<f32>(x_4954.x, x_4954.y);
            let x_4957 : f32 = u_xlat11.z;
            txVec76 = vec3<f32>(x_4955.x, x_4955.y, x_4957);
            let x_4964 : vec3<f32> = txVec76;
            let x_4966 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4964.xy, x_4964.z);
            u_xlat89 = x_4966;
            let x_4968 : f32 = u_xlat23.w;
            let x_4969 : f32 = u_xlat89;
            let x_4971 : f32 = u_xlat88;
            u_xlat88 = ((x_4968 * x_4969) + x_4971);
            let x_4974 : vec4<f32> = u_xlat19;
            let x_4975 : vec2<f32> = vec2<f32>(x_4974.x, x_4974.y);
            let x_4977 : f32 = u_xlat11.z;
            txVec77 = vec3<f32>(x_4975.x, x_4975.y, x_4977);
            let x_4984 : vec3<f32> = txVec77;
            let x_4986 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4984.xy, x_4984.z);
            u_xlat89 = x_4986;
            let x_4988 : f32 = u_xlat24.x;
            let x_4989 : f32 = u_xlat89;
            let x_4991 : f32 = u_xlat88;
            u_xlat88 = ((x_4988 * x_4989) + x_4991);
            let x_4994 : vec4<f32> = u_xlat19;
            let x_4995 : vec2<f32> = vec2<f32>(x_4994.z, x_4994.w);
            let x_4997 : f32 = u_xlat11.z;
            txVec78 = vec3<f32>(x_4995.x, x_4995.y, x_4997);
            let x_5004 : vec3<f32> = txVec78;
            let x_5006 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5004.xy, x_5004.z);
            u_xlat89 = x_5006;
            let x_5008 : f32 = u_xlat24.y;
            let x_5009 : f32 = u_xlat89;
            let x_5011 : f32 = u_xlat88;
            u_xlat88 = ((x_5008 * x_5009) + x_5011);
            let x_5014 : vec4<f32> = u_xlat20;
            let x_5015 : vec2<f32> = vec2<f32>(x_5014.x, x_5014.y);
            let x_5017 : f32 = u_xlat11.z;
            txVec79 = vec3<f32>(x_5015.x, x_5015.y, x_5017);
            let x_5024 : vec3<f32> = txVec79;
            let x_5026 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5024.xy, x_5024.z);
            u_xlat89 = x_5026;
            let x_5028 : f32 = u_xlat24.z;
            let x_5029 : f32 = u_xlat89;
            let x_5031 : f32 = u_xlat88;
            u_xlat88 = ((x_5028 * x_5029) + x_5031);
            let x_5034 : vec4<f32> = u_xlat21;
            let x_5035 : vec2<f32> = vec2<f32>(x_5034.z, x_5034.w);
            let x_5037 : f32 = u_xlat11.z;
            txVec80 = vec3<f32>(x_5035.x, x_5035.y, x_5037);
            let x_5044 : vec3<f32> = txVec80;
            let x_5046 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5044.xy, x_5044.z);
            u_xlat89 = x_5046;
            let x_5048 : f32 = u_xlat24.w;
            let x_5049 : f32 = u_xlat89;
            let x_5051 : f32 = u_xlat88;
            u_xlat88 = ((x_5048 * x_5049) + x_5051);
            let x_5054 : vec4<f32> = u_xlat22;
            let x_5055 : vec2<f32> = vec2<f32>(x_5054.x, x_5054.y);
            let x_5057 : f32 = u_xlat11.z;
            txVec81 = vec3<f32>(x_5055.x, x_5055.y, x_5057);
            let x_5064 : vec3<f32> = txVec81;
            let x_5066 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5064.xy, x_5064.z);
            u_xlat89 = x_5066;
            let x_5068 : f32 = u_xlat25.x;
            let x_5069 : f32 = u_xlat89;
            let x_5071 : f32 = u_xlat88;
            u_xlat88 = ((x_5068 * x_5069) + x_5071);
            let x_5074 : vec4<f32> = u_xlat22;
            let x_5075 : vec2<f32> = vec2<f32>(x_5074.z, x_5074.w);
            let x_5077 : f32 = u_xlat11.z;
            txVec82 = vec3<f32>(x_5075.x, x_5075.y, x_5077);
            let x_5084 : vec3<f32> = txVec82;
            let x_5086 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5084.xy, x_5084.z);
            u_xlat89 = x_5086;
            let x_5088 : f32 = u_xlat25.y;
            let x_5089 : f32 = u_xlat89;
            let x_5091 : f32 = u_xlat88;
            u_xlat88 = ((x_5088 * x_5089) + x_5091);
            let x_5094 : vec2<f32> = u_xlat40;
            let x_5096 : f32 = u_xlat11.z;
            txVec83 = vec3<f32>(x_5094.x, x_5094.y, x_5096);
            let x_5103 : vec3<f32> = txVec83;
            let x_5105 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5103.xy, x_5103.z);
            u_xlat89 = x_5105;
            let x_5107 : f32 = u_xlat25.z;
            let x_5108 : f32 = u_xlat89;
            let x_5110 : f32 = u_xlat88;
            u_xlat88 = ((x_5107 * x_5108) + x_5110);
            let x_5113 : vec2<f32> = u_xlat72;
            let x_5115 : f32 = u_xlat11.z;
            txVec84 = vec3<f32>(x_5113.x, x_5113.y, x_5115);
            let x_5122 : vec3<f32> = txVec84;
            let x_5124 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5122.xy, x_5122.z);
            u_xlat89 = x_5124;
            let x_5126 : f32 = u_xlat25.w;
            let x_5127 : f32 = u_xlat89;
            let x_5129 : f32 = u_xlat88;
            u_xlat88 = ((x_5126 * x_5127) + x_5129);
            let x_5132 : vec4<f32> = u_xlat17;
            let x_5133 : vec2<f32> = vec2<f32>(x_5132.x, x_5132.y);
            let x_5135 : f32 = u_xlat11.z;
            txVec85 = vec3<f32>(x_5133.x, x_5133.y, x_5135);
            let x_5142 : vec3<f32> = txVec85;
            let x_5144 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5142.xy, x_5142.z);
            u_xlat89 = x_5144;
            let x_5146 : f32 = u_xlat13.x;
            let x_5147 : f32 = u_xlat89;
            let x_5149 : f32 = u_xlat88;
            u_xlat88 = ((x_5146 * x_5147) + x_5149);
            let x_5152 : vec4<f32> = u_xlat17;
            let x_5153 : vec2<f32> = vec2<f32>(x_5152.z, x_5152.w);
            let x_5155 : f32 = u_xlat11.z;
            txVec86 = vec3<f32>(x_5153.x, x_5153.y, x_5155);
            let x_5162 : vec3<f32> = txVec86;
            let x_5164 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5162.xy, x_5162.z);
            u_xlat89 = x_5164;
            let x_5166 : f32 = u_xlat13.y;
            let x_5167 : f32 = u_xlat89;
            let x_5169 : f32 = u_xlat88;
            u_xlat88 = ((x_5166 * x_5167) + x_5169);
            let x_5172 : vec2<f32> = u_xlat67;
            let x_5174 : f32 = u_xlat11.z;
            txVec87 = vec3<f32>(x_5172.x, x_5172.y, x_5174);
            let x_5181 : vec3<f32> = txVec87;
            let x_5183 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5181.xy, x_5181.z);
            u_xlat89 = x_5183;
            let x_5185 : f32 = u_xlat13.z;
            let x_5186 : f32 = u_xlat89;
            let x_5188 : f32 = u_xlat88;
            u_xlat88 = ((x_5185 * x_5186) + x_5188);
            let x_5191 : vec4<f32> = u_xlat12;
            let x_5192 : vec2<f32> = vec2<f32>(x_5191.x, x_5191.y);
            let x_5194 : f32 = u_xlat11.z;
            txVec88 = vec3<f32>(x_5192.x, x_5192.y, x_5194);
            let x_5201 : vec3<f32> = txVec88;
            let x_5203 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5201.xy, x_5201.z);
            u_xlat89 = x_5203;
            let x_5205 : f32 = u_xlat13.w;
            let x_5206 : f32 = u_xlat89;
            let x_5208 : f32 = u_xlat88;
            u_xlat87 = ((x_5205 * x_5206) + x_5208);
          }
        }
      } else {
        let x_5212 : vec4<f32> = u_xlat11;
        let x_5213 : vec2<f32> = vec2<f32>(x_5212.x, x_5212.y);
        let x_5215 : f32 = u_xlat11.z;
        txVec89 = vec3<f32>(x_5213.x, x_5213.y, x_5215);
        let x_5222 : vec3<f32> = txVec89;
        let x_5224 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5222.xy, x_5222.z);
        u_xlat87 = x_5224;
      }
      let x_5225 : i32 = u_xlati84;
      let x_5227 : f32 = x_355.x_AdditionalShadowParams[x_5225].x;
      u_xlat88 = (1.0f + -(x_5227));
      let x_5230 : f32 = u_xlat87;
      let x_5231 : i32 = u_xlati84;
      let x_5233 : f32 = x_355.x_AdditionalShadowParams[x_5231].x;
      let x_5235 : f32 = u_xlat88;
      u_xlat87 = ((x_5230 * x_5233) + x_5235);
      let x_5238 : f32 = u_xlat11.z;
      u_xlatb88 = (0.0f >= x_5238);
      let x_5241 : f32 = u_xlat11.z;
      u_xlatb11.x = (x_5241 >= 1.0f);
      let x_5244 : bool = u_xlatb88;
      let x_5246 : bool = u_xlatb11.x;
      u_xlatb88 = (x_5244 | x_5246);
      let x_5248 : bool = u_xlatb88;
      let x_5249 : f32 = u_xlat87;
      u_xlat87 = select(x_5249, 1.0f, x_5248);
    } else {
      u_xlat87 = 1.0f;
    }
    let x_5252 : f32 = u_xlat87;
    u_xlat88 = (-(x_5252) + 1.0f);
    let x_5255 : f32 = u_xlat78;
    let x_5256 : f32 = u_xlat88;
    let x_5258 : f32 = u_xlat87;
    u_xlat87 = ((x_5255 * x_5256) + x_5258);
    let x_5261 : i32 = u_xlati84;
    u_xlati88 = (1i << bitcast<u32>((x_5261 & 31i)));
    let x_5265 : i32 = u_xlati88;
    let x_5268 : f32 = x_3334.x_AdditionalLightsCookieEnableBits;
    u_xlati88 = bitcast<i32>((bitcast<u32>(x_5265) & bitcast<u32>(x_5268)));
    let x_5272 : i32 = u_xlati88;
    if ((x_5272 != 0i)) {
      let x_5276 : i32 = u_xlati84;
      let x_5278 : f32 = x_3334.x_AdditionalLightsLightTypes[x_5276].el;
      u_xlati88 = i32(x_5278);
      let x_5281 : i32 = u_xlati88;
      u_xlati11 = select(1i, 0i, (x_5281 != 0i));
      let x_5285 : i32 = u_xlati84;
      u_xlati37 = (x_5285 << bitcast<u32>(2i));
      let x_5287 : i32 = u_xlati11;
      if ((x_5287 != 0i)) {
        let x_5291 : vec3<f32> = vs_INTERP8;
        let x_5293 : i32 = u_xlati37;
        let x_5296 : i32 = u_xlati37;
        let x_5300 : vec4<f32> = x_3334.x_AdditionalLightsWorldToLights[((x_5293 + 1i) / 4i)][((x_5296 + 1i) % 4i)];
        let x_5302 : vec3<f32> = (vec3<f32>(x_5291.y, x_5291.y, x_5291.y) * vec3<f32>(x_5300.x, x_5300.y, x_5300.w));
        let x_5303 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5302.x, x_5303.y, x_5302.y, x_5302.z);
        let x_5305 : i32 = u_xlati37;
        let x_5307 : i32 = u_xlati37;
        let x_5310 : vec4<f32> = x_3334.x_AdditionalLightsWorldToLights[(x_5305 / 4i)][(x_5307 % 4i)];
        let x_5312 : vec3<f32> = vs_INTERP8;
        let x_5315 : vec4<f32> = u_xlat11;
        let x_5317 : vec3<f32> = ((vec3<f32>(x_5310.x, x_5310.y, x_5310.w) * vec3<f32>(x_5312.x, x_5312.x, x_5312.x)) + vec3<f32>(x_5315.x, x_5315.z, x_5315.w));
        let x_5318 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5317.x, x_5318.y, x_5317.y, x_5317.z);
        let x_5320 : i32 = u_xlati37;
        let x_5323 : i32 = u_xlati37;
        let x_5327 : vec4<f32> = x_3334.x_AdditionalLightsWorldToLights[((x_5320 + 2i) / 4i)][((x_5323 + 2i) % 4i)];
        let x_5329 : vec3<f32> = vs_INTERP8;
        let x_5332 : vec4<f32> = u_xlat11;
        let x_5334 : vec3<f32> = ((vec3<f32>(x_5327.x, x_5327.y, x_5327.w) * vec3<f32>(x_5329.z, x_5329.z, x_5329.z)) + vec3<f32>(x_5332.x, x_5332.z, x_5332.w));
        let x_5335 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5334.x, x_5335.y, x_5334.y, x_5334.z);
        let x_5337 : vec4<f32> = u_xlat11;
        let x_5339 : i32 = u_xlati37;
        let x_5342 : i32 = u_xlati37;
        let x_5346 : vec4<f32> = x_3334.x_AdditionalLightsWorldToLights[((x_5339 + 3i) / 4i)][((x_5342 + 3i) % 4i)];
        let x_5348 : vec3<f32> = (vec3<f32>(x_5337.x, x_5337.z, x_5337.w) + vec3<f32>(x_5346.x, x_5346.y, x_5346.w));
        let x_5349 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5348.x, x_5349.y, x_5348.y, x_5348.z);
        let x_5351 : vec4<f32> = u_xlat11;
        let x_5353 : vec4<f32> = u_xlat11;
        let x_5355 : vec2<f32> = (vec2<f32>(x_5351.x, x_5351.z) / vec2<f32>(x_5353.w, x_5353.w));
        let x_5356 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5355.x, x_5356.y, x_5355.y, x_5356.w);
        let x_5358 : vec4<f32> = u_xlat11;
        let x_5361 : vec2<f32> = ((vec2<f32>(x_5358.x, x_5358.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_5362 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5361.x, x_5362.y, x_5361.y, x_5362.w);
        let x_5364 : vec4<f32> = u_xlat11;
        let x_5368 : vec2<f32> = clamp(vec2<f32>(x_5364.x, x_5364.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_5369 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5368.x, x_5369.y, x_5368.y, x_5369.w);
        let x_5371 : i32 = u_xlati84;
        let x_5373 : vec4<f32> = x_3334.x_AdditionalLightsCookieAtlasUVRects[x_5371];
        let x_5375 : vec4<f32> = u_xlat11;
        let x_5378 : i32 = u_xlati84;
        let x_5380 : vec4<f32> = x_3334.x_AdditionalLightsCookieAtlasUVRects[x_5378];
        let x_5382 : vec2<f32> = ((vec2<f32>(x_5373.x, x_5373.y) * vec2<f32>(x_5375.x, x_5375.z)) + vec2<f32>(x_5380.z, x_5380.w));
        let x_5383 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5382.x, x_5383.y, x_5382.y, x_5383.w);
      } else {
        let x_5386 : i32 = u_xlati88;
        u_xlatb88 = (x_5386 == 1i);
        let x_5388 : bool = u_xlatb88;
        u_xlati88 = select(0i, 1i, x_5388);
        let x_5390 : i32 = u_xlati88;
        if ((x_5390 != 0i)) {
          let x_5394 : vec3<f32> = vs_INTERP8;
          let x_5396 : i32 = u_xlati37;
          let x_5399 : i32 = u_xlati37;
          let x_5403 : vec4<f32> = x_3334.x_AdditionalLightsWorldToLights[((x_5396 + 1i) / 4i)][((x_5399 + 1i) % 4i)];
          let x_5405 : vec2<f32> = (vec2<f32>(x_5394.y, x_5394.y) * vec2<f32>(x_5403.x, x_5403.y));
          let x_5406 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5405.x, x_5405.y, x_5406.z, x_5406.w);
          let x_5408 : i32 = u_xlati37;
          let x_5410 : i32 = u_xlati37;
          let x_5413 : vec4<f32> = x_3334.x_AdditionalLightsWorldToLights[(x_5408 / 4i)][(x_5410 % 4i)];
          let x_5415 : vec3<f32> = vs_INTERP8;
          let x_5418 : vec4<f32> = u_xlat12;
          let x_5420 : vec2<f32> = ((vec2<f32>(x_5413.x, x_5413.y) * vec2<f32>(x_5415.x, x_5415.x)) + vec2<f32>(x_5418.x, x_5418.y));
          let x_5421 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5420.x, x_5420.y, x_5421.z, x_5421.w);
          let x_5423 : i32 = u_xlati37;
          let x_5426 : i32 = u_xlati37;
          let x_5430 : vec4<f32> = x_3334.x_AdditionalLightsWorldToLights[((x_5423 + 2i) / 4i)][((x_5426 + 2i) % 4i)];
          let x_5432 : vec3<f32> = vs_INTERP8;
          let x_5435 : vec4<f32> = u_xlat12;
          let x_5437 : vec2<f32> = ((vec2<f32>(x_5430.x, x_5430.y) * vec2<f32>(x_5432.z, x_5432.z)) + vec2<f32>(x_5435.x, x_5435.y));
          let x_5438 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5437.x, x_5437.y, x_5438.z, x_5438.w);
          let x_5440 : vec4<f32> = u_xlat12;
          let x_5442 : i32 = u_xlati37;
          let x_5445 : i32 = u_xlati37;
          let x_5449 : vec4<f32> = x_3334.x_AdditionalLightsWorldToLights[((x_5442 + 3i) / 4i)][((x_5445 + 3i) % 4i)];
          let x_5451 : vec2<f32> = (vec2<f32>(x_5440.x, x_5440.y) + vec2<f32>(x_5449.x, x_5449.y));
          let x_5452 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5451.x, x_5451.y, x_5452.z, x_5452.w);
          let x_5454 : vec4<f32> = u_xlat12;
          let x_5457 : vec2<f32> = ((vec2<f32>(x_5454.x, x_5454.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_5458 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5457.x, x_5457.y, x_5458.z, x_5458.w);
          let x_5460 : vec4<f32> = u_xlat12;
          let x_5462 : vec2<f32> = fract(vec2<f32>(x_5460.x, x_5460.y));
          let x_5463 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5462.x, x_5462.y, x_5463.z, x_5463.w);
          let x_5465 : i32 = u_xlati84;
          let x_5467 : vec4<f32> = x_3334.x_AdditionalLightsCookieAtlasUVRects[x_5465];
          let x_5469 : vec4<f32> = u_xlat12;
          let x_5472 : i32 = u_xlati84;
          let x_5474 : vec4<f32> = x_3334.x_AdditionalLightsCookieAtlasUVRects[x_5472];
          let x_5476 : vec2<f32> = ((vec2<f32>(x_5467.x, x_5467.y) * vec2<f32>(x_5469.x, x_5469.y)) + vec2<f32>(x_5474.z, x_5474.w));
          let x_5477 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_5476.x, x_5477.y, x_5476.y, x_5477.w);
        } else {
          let x_5480 : vec3<f32> = vs_INTERP8;
          let x_5482 : i32 = u_xlati37;
          let x_5485 : i32 = u_xlati37;
          let x_5489 : vec4<f32> = x_3334.x_AdditionalLightsWorldToLights[((x_5482 + 1i) / 4i)][((x_5485 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_5480.y, x_5480.y, x_5480.y, x_5480.y) * x_5489);
          let x_5491 : i32 = u_xlati37;
          let x_5493 : i32 = u_xlati37;
          let x_5496 : vec4<f32> = x_3334.x_AdditionalLightsWorldToLights[(x_5491 / 4i)][(x_5493 % 4i)];
          let x_5497 : vec3<f32> = vs_INTERP8;
          let x_5500 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_5496 * vec4<f32>(x_5497.x, x_5497.x, x_5497.x, x_5497.x)) + x_5500);
          let x_5502 : i32 = u_xlati37;
          let x_5505 : i32 = u_xlati37;
          let x_5509 : vec4<f32> = x_3334.x_AdditionalLightsWorldToLights[((x_5502 + 2i) / 4i)][((x_5505 + 2i) % 4i)];
          let x_5510 : vec3<f32> = vs_INTERP8;
          let x_5513 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_5509 * vec4<f32>(x_5510.z, x_5510.z, x_5510.z, x_5510.z)) + x_5513);
          let x_5515 : vec4<f32> = u_xlat12;
          let x_5516 : i32 = u_xlati37;
          let x_5519 : i32 = u_xlati37;
          let x_5523 : vec4<f32> = x_3334.x_AdditionalLightsWorldToLights[((x_5516 + 3i) / 4i)][((x_5519 + 3i) % 4i)];
          u_xlat12 = (x_5515 + x_5523);
          let x_5525 : vec4<f32> = u_xlat12;
          let x_5527 : vec4<f32> = u_xlat12;
          let x_5529 : vec3<f32> = (vec3<f32>(x_5525.x, x_5525.y, x_5525.z) / vec3<f32>(x_5527.w, x_5527.w, x_5527.w));
          let x_5530 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5529.x, x_5529.y, x_5529.z, x_5530.w);
          let x_5532 : vec4<f32> = u_xlat12;
          let x_5534 : vec4<f32> = u_xlat12;
          u_xlat88 = dot(vec3<f32>(x_5532.x, x_5532.y, x_5532.z), vec3<f32>(x_5534.x, x_5534.y, x_5534.z));
          let x_5537 : f32 = u_xlat88;
          u_xlat88 = inverseSqrt(x_5537);
          let x_5539 : f32 = u_xlat88;
          let x_5541 : vec4<f32> = u_xlat12;
          let x_5543 : vec3<f32> = (vec3<f32>(x_5539, x_5539, x_5539) * vec3<f32>(x_5541.x, x_5541.y, x_5541.z));
          let x_5544 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5543.x, x_5543.y, x_5543.z, x_5544.w);
          let x_5546 : vec4<f32> = u_xlat12;
          u_xlat88 = dot(abs(vec3<f32>(x_5546.x, x_5546.y, x_5546.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_5551 : f32 = u_xlat88;
          u_xlat88 = max(x_5551, 0.00000099999999747524f);
          let x_5554 : f32 = u_xlat88;
          u_xlat88 = (1.0f / x_5554);
          let x_5556 : f32 = u_xlat88;
          let x_5558 : vec4<f32> = u_xlat12;
          let x_5560 : vec3<f32> = (vec3<f32>(x_5556, x_5556, x_5556) * vec3<f32>(x_5558.z, x_5558.x, x_5558.y));
          let x_5561 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_5560.x, x_5560.y, x_5560.z, x_5561.w);
          let x_5564 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_5564);
          let x_5568 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_5568, 0.0f, 1.0f);
          let x_5573 : vec4<f32> = u_xlat13;
          let x_5575 : vec4<bool> = (vec4<f32>(x_5573.y, x_5573.y, x_5573.z, x_5573.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_5576 : vec2<bool> = vec2<bool>(x_5575.x, x_5575.z);
          let x_5577 : vec3<bool> = u_xlatb37;
          u_xlatb37 = vec3<bool>(x_5576.x, x_5577.y, x_5576.y);
          let x_5580 : bool = u_xlatb37.x;
          if (x_5580) {
            let x_5585 : f32 = u_xlat13.x;
            x_5581 = x_5585;
          } else {
            let x_5588 : f32 = u_xlat13.x;
            x_5581 = -(x_5588);
          }
          let x_5590 : f32 = x_5581;
          u_xlat37.x = x_5590;
          let x_5593 : bool = u_xlatb37.z;
          if (x_5593) {
            let x_5598 : f32 = u_xlat13.x;
            x_5594 = x_5598;
          } else {
            let x_5601 : f32 = u_xlat13.x;
            x_5594 = -(x_5601);
          }
          let x_5603 : f32 = x_5594;
          u_xlat37.z = x_5603;
          let x_5605 : vec4<f32> = u_xlat12;
          let x_5607 : f32 = u_xlat88;
          let x_5610 : vec3<f32> = u_xlat37;
          let x_5612 : vec2<f32> = ((vec2<f32>(x_5605.x, x_5605.y) * vec2<f32>(x_5607, x_5607)) + vec2<f32>(x_5610.x, x_5610.z));
          let x_5613 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_5612.x, x_5613.y, x_5612.y);
          let x_5615 : vec3<f32> = u_xlat37;
          let x_5618 : vec2<f32> = ((vec2<f32>(x_5615.x, x_5615.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_5619 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_5618.x, x_5619.y, x_5618.y);
          let x_5621 : vec3<f32> = u_xlat37;
          let x_5625 : vec2<f32> = clamp(vec2<f32>(x_5621.x, x_5621.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_5626 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_5625.x, x_5626.y, x_5625.y);
          let x_5628 : i32 = u_xlati84;
          let x_5630 : vec4<f32> = x_3334.x_AdditionalLightsCookieAtlasUVRects[x_5628];
          let x_5632 : vec3<f32> = u_xlat37;
          let x_5635 : i32 = u_xlati84;
          let x_5637 : vec4<f32> = x_3334.x_AdditionalLightsCookieAtlasUVRects[x_5635];
          let x_5639 : vec2<f32> = ((vec2<f32>(x_5630.x, x_5630.y) * vec2<f32>(x_5632.x, x_5632.z)) + vec2<f32>(x_5637.z, x_5637.w));
          let x_5640 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_5639.x, x_5640.y, x_5639.y, x_5640.w);
        }
      }
      let x_5647 : vec4<f32> = u_xlat11;
      let x_5649 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_5647.x, x_5647.z), 0.0f);
      u_xlat11 = x_5649;
      let x_5651 : bool = u_xlatb2.w;
      if (x_5651) {
        let x_5656 : f32 = u_xlat11.w;
        x_5652 = x_5656;
      } else {
        let x_5659 : f32 = u_xlat11.x;
        x_5652 = x_5659;
      }
      let x_5660 : f32 = x_5652;
      u_xlat88 = x_5660;
      let x_5662 : bool = u_xlatb2.x;
      if (x_5662) {
        let x_5666 : vec4<f32> = u_xlat11;
        x_5663 = vec3<f32>(x_5666.x, x_5666.y, x_5666.z);
      } else {
        let x_5669 : f32 = u_xlat88;
        x_5663 = vec3<f32>(x_5669, x_5669, x_5669);
      }
      let x_5671 : vec3<f32> = x_5663;
      let x_5672 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_5671.x, x_5671.y, x_5671.z, x_5672.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_5678 : vec4<f32> = u_xlat11;
    let x_5680 : i32 = u_xlati84;
    let x_5682 : vec4<f32> = x_3816.x_AdditionalLightsColor[x_5680];
    let x_5684 : vec3<f32> = (vec3<f32>(x_5678.x, x_5678.y, x_5678.z) * vec3<f32>(x_5682.x, x_5682.y, x_5682.z));
    let x_5685 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_5684.x, x_5684.y, x_5684.z, x_5685.w);
    let x_5687 : f32 = u_xlat85;
    let x_5688 : f32 = u_xlat87;
    u_xlat84 = (x_5687 * x_5688);
    let x_5690 : vec4<f32> = u_xlat3;
    let x_5692 : vec4<f32> = u_xlat10;
    u_xlat85 = dot(vec3<f32>(x_5690.x, x_5690.y, x_5690.z), vec3<f32>(x_5692.x, x_5692.y, x_5692.z));
    let x_5695 : f32 = u_xlat85;
    u_xlat85 = clamp(x_5695, 0.0f, 1.0f);
    let x_5697 : f32 = u_xlat84;
    let x_5698 : f32 = u_xlat85;
    u_xlat84 = (x_5697 * x_5698);
    let x_5700 : f32 = u_xlat84;
    let x_5702 : vec4<f32> = u_xlat11;
    let x_5704 : vec3<f32> = (vec3<f32>(x_5700, x_5700, x_5700) * vec3<f32>(x_5702.x, x_5702.y, x_5702.z));
    let x_5705 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_5704.x, x_5704.y, x_5704.z, x_5705.w);
    let x_5707 : vec4<f32> = u_xlat9;
    let x_5709 : f32 = u_xlat86;
    let x_5712 : vec3<f32> = u_xlat4;
    let x_5713 : vec3<f32> = ((vec3<f32>(x_5707.x, x_5707.y, x_5707.z) * vec3<f32>(x_5709, x_5709, x_5709)) + x_5712);
    let x_5714 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5713.x, x_5713.y, x_5713.z, x_5714.w);
    let x_5716 : vec4<f32> = u_xlat9;
    let x_5718 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_5716.x, x_5716.y, x_5716.z), vec3<f32>(x_5718.x, x_5718.y, x_5718.z));
    let x_5721 : f32 = u_xlat84;
    u_xlat84 = max(x_5721, 1.17549435e-38f);
    let x_5723 : f32 = u_xlat84;
    u_xlat84 = inverseSqrt(x_5723);
    let x_5725 : f32 = u_xlat84;
    let x_5727 : vec4<f32> = u_xlat9;
    let x_5729 : vec3<f32> = (vec3<f32>(x_5725, x_5725, x_5725) * vec3<f32>(x_5727.x, x_5727.y, x_5727.z));
    let x_5730 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5729.x, x_5729.y, x_5729.z, x_5730.w);
    let x_5732 : vec4<f32> = u_xlat3;
    let x_5734 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_5732.x, x_5732.y, x_5732.z), vec3<f32>(x_5734.x, x_5734.y, x_5734.z));
    let x_5737 : f32 = u_xlat84;
    u_xlat84 = clamp(x_5737, 0.0f, 1.0f);
    let x_5739 : vec4<f32> = u_xlat10;
    let x_5741 : vec4<f32> = u_xlat9;
    u_xlat85 = dot(vec3<f32>(x_5739.x, x_5739.y, x_5739.z), vec3<f32>(x_5741.x, x_5741.y, x_5741.z));
    let x_5744 : f32 = u_xlat85;
    u_xlat85 = clamp(x_5744, 0.0f, 1.0f);
    let x_5746 : f32 = u_xlat84;
    let x_5747 : f32 = u_xlat84;
    u_xlat84 = (x_5746 * x_5747);
    let x_5749 : f32 = u_xlat84;
    let x_5751 : f32 = u_xlat52.x;
    u_xlat84 = ((x_5749 * x_5751) + 1.00001001358032226562f);
    let x_5754 : f32 = u_xlat85;
    let x_5755 : f32 = u_xlat85;
    u_xlat85 = (x_5754 * x_5755);
    let x_5757 : f32 = u_xlat84;
    let x_5758 : f32 = u_xlat84;
    u_xlat84 = (x_5757 * x_5758);
    let x_5760 : f32 = u_xlat85;
    u_xlat85 = max(x_5760, 0.10000000149011611938f);
    let x_5762 : f32 = u_xlat84;
    let x_5763 : f32 = u_xlat85;
    u_xlat84 = (x_5762 * x_5763);
    let x_5765 : f32 = u_xlat81;
    let x_5766 : f32 = u_xlat84;
    u_xlat84 = (x_5765 * x_5766);
    let x_5768 : f32 = u_xlat54;
    let x_5769 : f32 = u_xlat84;
    u_xlat84 = (x_5768 / x_5769);
    let x_5771 : f32 = u_xlat84;
    let x_5774 : vec4<f32> = u_xlat6;
    let x_5776 : vec3<f32> = ((vec3<f32>(x_5771, x_5771, x_5771) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + vec3<f32>(x_5774.x, x_5774.y, x_5774.z));
    let x_5777 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5776.x, x_5776.y, x_5776.z, x_5777.w);
    let x_5779 : vec4<f32> = u_xlat9;
    let x_5781 : vec4<f32> = u_xlat11;
    let x_5784 : vec4<f32> = u_xlat8;
    let x_5786 : vec3<f32> = ((vec3<f32>(x_5779.x, x_5779.y, x_5779.z) * vec3<f32>(x_5781.x, x_5781.y, x_5781.z)) + vec3<f32>(x_5784.x, x_5784.y, x_5784.z));
    let x_5787 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_5786.x, x_5786.y, x_5786.z, x_5787.w);

    continuing {
      let x_5789 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_5789 + bitcast<u32>(1i));
    }
  }
  let x_5791 : vec3<f32> = u_xlat5;
  let x_5792 : f32 = u_xlat82;
  let x_5795 : vec4<f32> = u_xlat7;
  let x_5797 : vec3<f32> = ((x_5791 * vec3<f32>(x_5792, x_5792, x_5792)) + vec3<f32>(x_5795.x, x_5795.y, x_5795.z));
  let x_5798 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_5797.x, x_5798.y, x_5797.y, x_5797.z);
  let x_5800 : vec4<f32> = u_xlat8;
  let x_5802 : vec4<f32> = u_xlat0;
  let x_5804 : vec3<f32> = (vec3<f32>(x_5800.x, x_5800.y, x_5800.z) + vec3<f32>(x_5802.x, x_5802.z, x_5802.w));
  let x_5805 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_5804.x, x_5805.y, x_5804.y, x_5804.z);
  let x_5807 : vec4<f32> = vs_INTERP6;
  let x_5809 : vec3<f32> = u_xlat1;
  let x_5811 : vec4<f32> = u_xlat0;
  let x_5813 : vec3<f32> = ((vec3<f32>(x_5807.w, x_5807.w, x_5807.w) * x_5809) + vec3<f32>(x_5811.x, x_5811.z, x_5811.w));
  let x_5814 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_5813.x, x_5814.y, x_5813.y, x_5813.z);
  let x_5817 : f32 = u_xlat26.x;
  let x_5819 : f32 = u_xlat26.x;
  u_xlat26.x = (x_5817 * -(x_5819));
  let x_5824 : f32 = u_xlat26.x;
  u_xlat26.x = exp2(x_5824);
  let x_5827 : vec4<f32> = u_xlat0;
  let x_5830 : vec4<f32> = x_147.unity_FogColor;
  let x_5833 : vec3<f32> = (vec3<f32>(x_5827.x, x_5827.z, x_5827.w) + -(vec3<f32>(x_5830.x, x_5830.y, x_5830.z)));
  let x_5834 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_5833.x, x_5834.y, x_5833.y, x_5833.z);
  let x_5838 : vec3<f32> = u_xlat26;
  let x_5840 : vec4<f32> = u_xlat0;
  let x_5844 : vec4<f32> = x_147.unity_FogColor;
  let x_5846 : vec3<f32> = ((vec3<f32>(x_5838.x, x_5838.x, x_5838.x) * vec3<f32>(x_5840.x, x_5840.z, x_5840.w)) + vec3<f32>(x_5844.x, x_5844.y, x_5844.z));
  let x_5847 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_5846.x, x_5846.y, x_5846.z, x_5847.w);
  let x_5849 : bool = u_xlatb28;
  let x_5850 : f32 = u_xlat79;
  SV_Target0.w = select(1.0f, x_5850, x_5849);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(5) vs_INTERP9_param : vec3<f32>, @location(1) vs_INTERP4_param : vec4<f32>, @location(4) vs_INTERP8_param : vec3<f32>, @location(2) vs_INTERP5_param : vec4<f32>, @location(3) vs_INTERP6_param : vec4<f32>, @location(0) vs_INTERP3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP9 = vs_INTERP9_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP6 = vs_INTERP6_param;
  vs_INTERP3 = vs_INTERP3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


