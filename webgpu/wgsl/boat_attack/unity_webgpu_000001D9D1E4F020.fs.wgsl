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

var<private> u_xlatb81 : bool;

@group(1) @binding(0) var<uniform> x_75 : PGlobals;

var<private> u_xlat1 : vec3<f32>;

var<private> vs_INTERP8 : vec3<f32>;

var<private> u_xlat82 : f32;

var<private> u_xlat2 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_132 : UnityPerDraw;

var<private> u_xlat81 : f32;

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

var<private> u_xlat32 : vec3<f32>;

var<private> vs_INTERP6 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_248 : LightShadows;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlatb6 : vec4<bool>;

var<private> u_xlatu81 : u32;

var<private> u_xlati81 : i32;

var<private> u_xlatb82 : bool;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb83 : bool;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat83 : f32;

var<private> u_xlat85 : f32;

var<private> u_xlat87 : f32;

var<private> u_xlat35 : vec3<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat36 : vec2<f32>;

var<private> u_xlat69 : vec2<f32>;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlatb85 : bool;

var<private> u_xlatb87 : bool;

var<private> u_xlatb3 : bool;

var<private> u_xlatu2 : vec3<u32>;

var<private> u_xlatu56 : u32;

var<private> u_xlatu30 : u32;

var<private> u_xlati56 : i32;

var<private> u_xlati29 : i32;

var<private> u_xlatu29 : u32;

var<private> u_xlati2 : i32;

var<private> u_xlat29 : vec2<f32>;

var<private> u_xlatb29 : vec2<bool>;

var<private> u_xlat56 : f32;

var<private> u_xlatb2 : bool;

var<private> vs_INTERP4 : vec4<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat84 : f32;

var<private> u_xlat34 : f32;

var<private> u_xlatb61 : bool;

var<private> u_xlat62 : vec2<f32>;

var<private> u_xlat88 : f32;

var<private> u_xlat68 : vec2<f32>;

var<private> u_xlat65 : vec2<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat90 : f32;

@group(1) @binding(4) var<uniform> x_3430 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatb8 : vec2<bool>;

var<private> u_xlatu84 : u32;

var<private> u_xlati85 : i32;

var<private> u_xlati84 : i32;

@group(1) @binding(1) var<uniform> x_3864 : AdditionalLights;

var<private> u_xlat86 : f32;

var<private> u_xlati88 : i32;

var<private> u_xlatb62 : bool;

var<private> u_xlatb12 : vec4<bool>;

var<private> u_xlat89 : f32;

var<private> u_xlatb88 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat67 : vec2<f32>;

var<private> u_xlat73 : vec2<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat41 : vec2<f32>;

var<private> u_xlat23 : vec2<f32>;

var<private> u_xlat70 : vec2<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlat25 : vec4<f32>;

var<private> u_xlat26 : vec4<f32>;

var<private> u_xlat91 : f32;

var<private> u_xlatb89 : bool;

var<private> u_xlati62 : i32;

var<private> u_xlati89 : i32;

var<private> u_xlati90 : i32;

var<private> u_xlatb66 : vec2<bool>;

var<private> u_xlat66 : vec2<f32>;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_LinearClamp : sampler;

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
  var x_1706 : f32;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var x_1839 : f32;
  var x_1870 : f32;
  var x_1917 : f32;
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
  var x_3512 : f32;
  var x_3523 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_4000 : f32;
  var x_4009 : f32;
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
  var x_5599 : f32;
  var x_5612 : f32;
  var x_5660 : f32;
  var x_5672 : vec3<f32>;
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
  u_xlatb81 = (x_80 == 0.0f);
  let x_85 : vec3<f32> = vs_INTERP8;
  let x_90 : vec3<f32> = x_75.x_WorldSpaceCameraPos;
  u_xlat1 = (-(x_85) + x_90);
  let x_93 : vec3<f32> = u_xlat1;
  let x_94 : vec3<f32> = u_xlat1;
  u_xlat82 = dot(x_93, x_94);
  let x_96 : f32 = u_xlat82;
  u_xlat82 = inverseSqrt(x_96);
  let x_98 : f32 = u_xlat82;
  let x_100 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_98, x_98, x_98) * x_100);
  let x_107 : f32 = x_75.unity_MatrixV[0i].z;
  u_xlat2.x = x_107;
  let x_111 : f32 = x_75.unity_MatrixV[1i].z;
  u_xlat2.y = x_111;
  let x_116 : f32 = x_75.unity_MatrixV[2i].z;
  u_xlat2.z = x_116;
  let x_118 : bool = u_xlatb81;
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
  u_xlat81 = dot(x_155, x_156);
  let x_158 : f32 = u_xlat81;
  u_xlat81 = inverseSqrt(x_158);
  let x_160 : f32 = u_xlat81;
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
  u_xlat81 = dot(x_214, x_215);
  let x_217 : f32 = u_xlat81;
  u_xlat81 = inverseSqrt(x_217);
  let x_220 : f32 = u_xlat81;
  let x_222 : vec4<f32> = u_xlat6;
  u_xlat32 = (vec3<f32>(x_220, x_220, x_220) * vec3<f32>(x_222.x, x_222.y, x_222.z));
  let x_228 : f32 = vs_INTERP6.y;
  u_xlat81 = (x_228 * 200.0f);
  let x_231 : f32 = u_xlat81;
  u_xlat81 = min(x_231, 1.0f);
  let x_233 : f32 = u_xlat81;
  let x_235 : vec4<f32> = u_xlat3;
  let x_237 : vec3<f32> = (vec3<f32>(x_233, x_233, x_233) * vec3<f32>(x_235.x, x_235.y, x_235.z));
  let x_238 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_237.x, x_237.y, x_237.z, x_238.w);
  let x_240 : vec3<f32> = vs_INTERP8;
  let x_250 : vec4<f32> = x_248.x_CascadeShadowSplitSpheres0;
  let x_253 : vec3<f32> = (x_240 + -(vec3<f32>(x_250.x, x_250.y, x_250.z)));
  let x_254 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_253.x, x_253.y, x_253.z, x_254.w);
  let x_257 : vec3<f32> = vs_INTERP8;
  let x_259 : vec4<f32> = x_248.x_CascadeShadowSplitSpheres1;
  let x_262 : vec3<f32> = (x_257 + -(vec3<f32>(x_259.x, x_259.y, x_259.z)));
  let x_263 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_262.x, x_262.y, x_262.z, x_263.w);
  let x_266 : vec3<f32> = vs_INTERP8;
  let x_269 : vec4<f32> = x_248.x_CascadeShadowSplitSpheres2;
  let x_272 : vec3<f32> = (x_266 + -(vec3<f32>(x_269.x, x_269.y, x_269.z)));
  let x_273 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_272.x, x_272.y, x_272.z, x_273.w);
  let x_276 : vec3<f32> = vs_INTERP8;
  let x_279 : vec4<f32> = x_248.x_CascadeShadowSplitSpheres3;
  let x_282 : vec3<f32> = (x_276 + -(vec3<f32>(x_279.x, x_279.y, x_279.z)));
  let x_283 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_282.x, x_282.y, x_282.z, x_283.w);
  let x_285 : vec4<f32> = u_xlat6;
  let x_287 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_285.x, x_285.y, x_285.z), vec3<f32>(x_287.x, x_287.y, x_287.z));
  let x_291 : vec4<f32> = u_xlat7;
  let x_293 : vec4<f32> = u_xlat7;
  u_xlat6.y = dot(vec3<f32>(x_291.x, x_291.y, x_291.z), vec3<f32>(x_293.x, x_293.y, x_293.z));
  let x_297 : vec4<f32> = u_xlat8;
  let x_299 : vec4<f32> = u_xlat8;
  u_xlat6.z = dot(vec3<f32>(x_297.x, x_297.y, x_297.z), vec3<f32>(x_299.x, x_299.y, x_299.z));
  let x_303 : vec4<f32> = u_xlat9;
  let x_305 : vec4<f32> = u_xlat9;
  u_xlat6.w = dot(vec3<f32>(x_303.x, x_303.y, x_303.z), vec3<f32>(x_305.x, x_305.y, x_305.z));
  let x_312 : vec4<f32> = u_xlat6;
  let x_314 : vec4<f32> = x_248.x_CascadeShadowSplitSphereRadii;
  u_xlatb6 = (x_312 < x_314);
  let x_317 : bool = u_xlatb6.x;
  u_xlat7.x = select(0.0f, 1.0f, x_317);
  let x_321 : bool = u_xlatb6.y;
  u_xlat7.y = select(0.0f, 1.0f, x_321);
  let x_325 : bool = u_xlatb6.z;
  u_xlat7.z = select(0.0f, 1.0f, x_325);
  let x_329 : bool = u_xlatb6.w;
  u_xlat7.w = select(0.0f, 1.0f, x_329);
  let x_333 : bool = u_xlatb6.x;
  u_xlat6.x = select(-0.0f, -1.0f, x_333);
  let x_338 : bool = u_xlatb6.y;
  u_xlat6.y = select(-0.0f, -1.0f, x_338);
  let x_342 : bool = u_xlatb6.z;
  u_xlat6.z = select(-0.0f, -1.0f, x_342);
  let x_345 : vec4<f32> = u_xlat6;
  let x_347 : vec4<f32> = u_xlat7;
  let x_349 : vec3<f32> = (vec3<f32>(x_345.x, x_345.y, x_345.z) + vec3<f32>(x_347.y, x_347.z, x_347.w));
  let x_350 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_349.x, x_349.y, x_349.z, x_350.w);
  let x_352 : vec4<f32> = u_xlat6;
  let x_355 : vec3<f32> = max(vec3<f32>(x_352.x, x_352.y, x_352.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_356 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_356.x, x_355.x, x_355.y, x_355.z);
  let x_358 : vec4<f32> = u_xlat7;
  u_xlat81 = dot(x_358, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_363 : f32 = u_xlat81;
  u_xlat81 = (-(x_363) + 4.0f);
  let x_368 : f32 = u_xlat81;
  u_xlatu81 = u32(x_368);
  let x_372 : u32 = u_xlatu81;
  u_xlati81 = (bitcast<i32>(x_372) << bitcast<u32>(2i));
  let x_375 : vec3<f32> = vs_INTERP8;
  let x_377 : i32 = u_xlati81;
  let x_380 : i32 = u_xlati81;
  let x_384 : vec4<f32> = x_248.x_MainLightWorldToShadow[((x_377 + 1i) / 4i)][((x_380 + 1i) % 4i)];
  let x_386 : vec3<f32> = (vec3<f32>(x_375.y, x_375.y, x_375.y) * vec3<f32>(x_384.x, x_384.y, x_384.z));
  let x_387 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_386.x, x_386.y, x_386.z, x_387.w);
  let x_389 : i32 = u_xlati81;
  let x_391 : i32 = u_xlati81;
  let x_394 : vec4<f32> = x_248.x_MainLightWorldToShadow[(x_389 / 4i)][(x_391 % 4i)];
  let x_396 : vec3<f32> = vs_INTERP8;
  let x_399 : vec4<f32> = u_xlat6;
  let x_401 : vec3<f32> = ((vec3<f32>(x_394.x, x_394.y, x_394.z) * vec3<f32>(x_396.x, x_396.x, x_396.x)) + vec3<f32>(x_399.x, x_399.y, x_399.z));
  let x_402 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_401.x, x_401.y, x_401.z, x_402.w);
  let x_404 : i32 = u_xlati81;
  let x_407 : i32 = u_xlati81;
  let x_411 : vec4<f32> = x_248.x_MainLightWorldToShadow[((x_404 + 2i) / 4i)][((x_407 + 2i) % 4i)];
  let x_413 : vec3<f32> = vs_INTERP8;
  let x_416 : vec4<f32> = u_xlat6;
  let x_418 : vec3<f32> = ((vec3<f32>(x_411.x, x_411.y, x_411.z) * vec3<f32>(x_413.z, x_413.z, x_413.z)) + vec3<f32>(x_416.x, x_416.y, x_416.z));
  let x_419 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_418.x, x_418.y, x_418.z, x_419.w);
  let x_421 : vec4<f32> = u_xlat6;
  let x_423 : i32 = u_xlati81;
  let x_426 : i32 = u_xlati81;
  let x_430 : vec4<f32> = x_248.x_MainLightWorldToShadow[((x_423 + 3i) / 4i)][((x_426 + 3i) % 4i)];
  let x_432 : vec3<f32> = (vec3<f32>(x_421.x, x_421.y, x_421.z) + vec3<f32>(x_430.x, x_430.y, x_430.z));
  let x_433 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_432.x, x_432.y, x_432.z, x_433.w);
  let x_436 : f32 = x_248.x_MainLightShadowParams.y;
  u_xlatb81 = (0.0f < x_436);
  let x_438 : bool = u_xlatb81;
  if (x_438) {
    let x_443 : f32 = x_248.x_MainLightShadowParams.y;
    u_xlatb82 = (x_443 == 1.0f);
    let x_445 : bool = u_xlatb82;
    if (x_445) {
      let x_448 : vec4<f32> = u_xlat6;
      let x_452 : vec4<f32> = x_248.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_448.x, x_448.y, x_448.x, x_448.y) + x_452);
      let x_455 : vec4<f32> = u_xlat7;
      let x_456 : vec2<f32> = vec2<f32>(x_455.x, x_455.y);
      let x_458 : f32 = u_xlat6.z;
      txVec0 = vec3<f32>(x_456.x, x_456.y, x_458);
      let x_470 : vec3<f32> = txVec0;
      let x_472 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_470.xy, x_470.z);
      u_xlat8.x = x_472;
      let x_475 : vec4<f32> = u_xlat7;
      let x_476 : vec2<f32> = vec2<f32>(x_475.z, x_475.w);
      let x_478 : f32 = u_xlat6.z;
      txVec1 = vec3<f32>(x_476.x, x_476.y, x_478);
      let x_485 : vec3<f32> = txVec1;
      let x_487 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_485.xy, x_485.z);
      u_xlat8.y = x_487;
      let x_489 : vec4<f32> = u_xlat6;
      let x_493 : vec4<f32> = x_248.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_489.x, x_489.y, x_489.x, x_489.y) + x_493);
      let x_496 : vec4<f32> = u_xlat7;
      let x_497 : vec2<f32> = vec2<f32>(x_496.x, x_496.y);
      let x_499 : f32 = u_xlat6.z;
      txVec2 = vec3<f32>(x_497.x, x_497.y, x_499);
      let x_506 : vec3<f32> = txVec2;
      let x_508 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_506.xy, x_506.z);
      u_xlat8.z = x_508;
      let x_511 : vec4<f32> = u_xlat7;
      let x_512 : vec2<f32> = vec2<f32>(x_511.z, x_511.w);
      let x_514 : f32 = u_xlat6.z;
      txVec3 = vec3<f32>(x_512.x, x_512.y, x_514);
      let x_521 : vec3<f32> = txVec3;
      let x_523 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_521.xy, x_521.z);
      u_xlat8.w = x_523;
      let x_525 : vec4<f32> = u_xlat8;
      u_xlat82 = dot(x_525, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_532 : f32 = x_248.x_MainLightShadowParams.y;
      u_xlatb83 = (x_532 == 2.0f);
      let x_534 : bool = u_xlatb83;
      if (x_534) {
        let x_537 : vec4<f32> = u_xlat6;
        let x_541 : vec4<f32> = x_248.x_MainLightShadowmapSize;
        let x_546 : vec2<f32> = ((vec2<f32>(x_537.x, x_537.y) * vec2<f32>(x_541.z, x_541.w)) + vec2<f32>(0.5f, 0.5f));
        let x_547 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_546.x, x_546.y, x_547.z, x_547.w);
        let x_549 : vec4<f32> = u_xlat7;
        let x_551 : vec2<f32> = floor(vec2<f32>(x_549.x, x_549.y));
        let x_552 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_551.x, x_551.y, x_552.z, x_552.w);
        let x_556 : vec4<f32> = u_xlat6;
        let x_559 : vec4<f32> = x_248.x_MainLightShadowmapSize;
        let x_562 : vec4<f32> = u_xlat7;
        u_xlat61 = ((vec2<f32>(x_556.x, x_556.y) * vec2<f32>(x_559.z, x_559.w)) + -(vec2<f32>(x_562.x, x_562.y)));
        let x_566 : vec2<f32> = u_xlat61;
        u_xlat8 = (vec4<f32>(x_566.x, x_566.x, x_566.y, x_566.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_570 : vec4<f32> = u_xlat8;
        let x_572 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_570.x, x_570.x, x_570.z, x_570.z) * vec4<f32>(x_572.x, x_572.x, x_572.z, x_572.z));
        let x_575 : vec4<f32> = u_xlat9;
        let x_579 : vec2<f32> = (vec2<f32>(x_575.y, x_575.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_580 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_579.x, x_580.y, x_579.y, x_580.w);
        let x_582 : vec4<f32> = u_xlat9;
        let x_585 : vec2<f32> = u_xlat61;
        let x_587 : vec2<f32> = ((vec2<f32>(x_582.x, x_582.z) * vec2<f32>(0.5f, 0.5f)) + -(x_585));
        let x_588 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_587.x, x_587.y, x_588.z, x_588.w);
        let x_591 : vec2<f32> = u_xlat61;
        u_xlat63 = (-(x_591) + vec2<f32>(1.0f, 1.0f));
        let x_596 : vec2<f32> = u_xlat61;
        let x_598 : vec2<f32> = min(x_596, vec2<f32>(0.0f, 0.0f));
        let x_599 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_598.x, x_598.y, x_599.z, x_599.w);
        let x_601 : vec4<f32> = u_xlat10;
        let x_604 : vec4<f32> = u_xlat10;
        let x_607 : vec2<f32> = u_xlat63;
        let x_608 : vec2<f32> = ((-(vec2<f32>(x_601.x, x_601.y)) * vec2<f32>(x_604.x, x_604.y)) + x_607);
        let x_609 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_608.x, x_608.y, x_609.z, x_609.w);
        let x_611 : vec2<f32> = u_xlat61;
        u_xlat61 = max(x_611, vec2<f32>(0.0f, 0.0f));
        let x_613 : vec2<f32> = u_xlat61;
        let x_615 : vec2<f32> = u_xlat61;
        let x_617 : vec4<f32> = u_xlat8;
        u_xlat61 = ((-(x_613) * x_615) + vec2<f32>(x_617.y, x_617.w));
        let x_620 : vec4<f32> = u_xlat10;
        let x_622 : vec2<f32> = (vec2<f32>(x_620.x, x_620.y) + vec2<f32>(1.0f, 1.0f));
        let x_623 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_622.x, x_622.y, x_623.z, x_623.w);
        let x_625 : vec2<f32> = u_xlat61;
        u_xlat61 = (x_625 + vec2<f32>(1.0f, 1.0f));
        let x_628 : vec4<f32> = u_xlat9;
        let x_632 : vec2<f32> = (vec2<f32>(x_628.x, x_628.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_633 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_632.x, x_632.y, x_633.z, x_633.w);
        let x_635 : vec2<f32> = u_xlat63;
        let x_636 : vec2<f32> = (x_635 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_637 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_636.x, x_636.y, x_637.z, x_637.w);
        let x_639 : vec4<f32> = u_xlat10;
        let x_641 : vec2<f32> = (vec2<f32>(x_639.x, x_639.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_642 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_641.x, x_641.y, x_642.z, x_642.w);
        let x_645 : vec2<f32> = u_xlat61;
        let x_646 : vec2<f32> = (x_645 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_647 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_646.x, x_646.y, x_647.z, x_647.w);
        let x_649 : vec4<f32> = u_xlat8;
        u_xlat61 = (vec2<f32>(x_649.y, x_649.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_653 : f32 = u_xlat10.x;
        u_xlat11.z = x_653;
        let x_656 : f32 = u_xlat61.x;
        u_xlat11.w = x_656;
        let x_659 : f32 = u_xlat12.x;
        u_xlat9.z = x_659;
        let x_662 : f32 = u_xlat8.x;
        u_xlat9.w = x_662;
        let x_665 : vec4<f32> = u_xlat9;
        let x_667 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_665.z, x_665.w, x_665.x, x_665.z) + vec4<f32>(x_667.z, x_667.w, x_667.x, x_667.z));
        let x_671 : f32 = u_xlat11.y;
        u_xlat10.z = x_671;
        let x_674 : f32 = u_xlat61.y;
        u_xlat10.w = x_674;
        let x_677 : f32 = u_xlat9.y;
        u_xlat12.z = x_677;
        let x_680 : f32 = u_xlat8.z;
        u_xlat12.w = x_680;
        let x_682 : vec4<f32> = u_xlat10;
        let x_684 : vec4<f32> = u_xlat12;
        let x_686 : vec3<f32> = (vec3<f32>(x_682.z, x_682.y, x_682.w) + vec3<f32>(x_684.z, x_684.y, x_684.w));
        let x_687 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_686.x, x_686.y, x_686.z, x_687.w);
        let x_689 : vec4<f32> = u_xlat9;
        let x_691 : vec4<f32> = u_xlat13;
        let x_693 : vec3<f32> = (vec3<f32>(x_689.x, x_689.z, x_689.w) / vec3<f32>(x_691.z, x_691.w, x_691.y));
        let x_694 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_693.x, x_693.y, x_693.z, x_694.w);
        let x_696 : vec4<f32> = u_xlat9;
        let x_702 : vec3<f32> = (vec3<f32>(x_696.x, x_696.y, x_696.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_703 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_702.x, x_702.y, x_702.z, x_703.w);
        let x_705 : vec4<f32> = u_xlat12;
        let x_707 : vec4<f32> = u_xlat8;
        let x_709 : vec3<f32> = (vec3<f32>(x_705.z, x_705.y, x_705.w) / vec3<f32>(x_707.x, x_707.y, x_707.z));
        let x_710 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_709.x, x_709.y, x_709.z, x_710.w);
        let x_712 : vec4<f32> = u_xlat10;
        let x_714 : vec3<f32> = (vec3<f32>(x_712.x, x_712.y, x_712.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_715 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_714.x, x_714.y, x_714.z, x_715.w);
        let x_717 : vec4<f32> = u_xlat9;
        let x_720 : vec4<f32> = x_248.x_MainLightShadowmapSize;
        let x_722 : vec3<f32> = (vec3<f32>(x_717.y, x_717.x, x_717.z) * vec3<f32>(x_720.x, x_720.x, x_720.x));
        let x_723 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_722.x, x_722.y, x_722.z, x_723.w);
        let x_725 : vec4<f32> = u_xlat10;
        let x_728 : vec4<f32> = x_248.x_MainLightShadowmapSize;
        let x_730 : vec3<f32> = (vec3<f32>(x_725.x, x_725.y, x_725.z) * vec3<f32>(x_728.y, x_728.y, x_728.y));
        let x_731 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_730.x, x_730.y, x_730.z, x_731.w);
        let x_734 : f32 = u_xlat10.x;
        u_xlat9.w = x_734;
        let x_736 : vec4<f32> = u_xlat7;
        let x_739 : vec4<f32> = x_248.x_MainLightShadowmapSize;
        let x_742 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_736.x, x_736.y, x_736.x, x_736.y) * vec4<f32>(x_739.x, x_739.y, x_739.x, x_739.y)) + vec4<f32>(x_742.y, x_742.w, x_742.x, x_742.w));
        let x_745 : vec4<f32> = u_xlat7;
        let x_748 : vec4<f32> = x_248.x_MainLightShadowmapSize;
        let x_751 : vec4<f32> = u_xlat9;
        u_xlat61 = ((vec2<f32>(x_745.x, x_745.y) * vec2<f32>(x_748.x, x_748.y)) + vec2<f32>(x_751.z, x_751.w));
        let x_755 : f32 = u_xlat9.y;
        u_xlat10.w = x_755;
        let x_757 : vec4<f32> = u_xlat10;
        let x_758 : vec2<f32> = vec2<f32>(x_757.y, x_757.z);
        let x_759 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_759.x, x_758.x, x_759.z, x_758.y);
        let x_761 : vec4<f32> = u_xlat7;
        let x_764 : vec4<f32> = x_248.x_MainLightShadowmapSize;
        let x_767 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_761.x, x_761.y, x_761.x, x_761.y) * vec4<f32>(x_764.x, x_764.y, x_764.x, x_764.y)) + vec4<f32>(x_767.x, x_767.y, x_767.z, x_767.y));
        let x_770 : vec4<f32> = u_xlat7;
        let x_773 : vec4<f32> = x_248.x_MainLightShadowmapSize;
        let x_776 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_770.x, x_770.y, x_770.x, x_770.y) * vec4<f32>(x_773.x, x_773.y, x_773.x, x_773.y)) + vec4<f32>(x_776.w, x_776.y, x_776.w, x_776.z));
        let x_779 : vec4<f32> = u_xlat7;
        let x_782 : vec4<f32> = x_248.x_MainLightShadowmapSize;
        let x_785 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_779.x, x_779.y, x_779.x, x_779.y) * vec4<f32>(x_782.x, x_782.y, x_782.x, x_782.y)) + vec4<f32>(x_785.x, x_785.w, x_785.z, x_785.w));
        let x_789 : vec4<f32> = u_xlat8;
        let x_791 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_789.x, x_789.x, x_789.x, x_789.y) * vec4<f32>(x_791.z, x_791.w, x_791.y, x_791.z));
        let x_795 : vec4<f32> = u_xlat8;
        let x_797 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_795.y, x_795.y, x_795.z, x_795.z) * x_797);
        let x_801 : f32 = u_xlat8.z;
        let x_803 : f32 = u_xlat13.y;
        u_xlat83 = (x_801 * x_803);
        let x_806 : vec4<f32> = u_xlat11;
        let x_807 : vec2<f32> = vec2<f32>(x_806.x, x_806.y);
        let x_809 : f32 = u_xlat6.z;
        txVec4 = vec3<f32>(x_807.x, x_807.y, x_809);
        let x_817 : vec3<f32> = txVec4;
        let x_819 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_817.xy, x_817.z);
        u_xlat85 = x_819;
        let x_821 : vec4<f32> = u_xlat11;
        let x_822 : vec2<f32> = vec2<f32>(x_821.z, x_821.w);
        let x_824 : f32 = u_xlat6.z;
        txVec5 = vec3<f32>(x_822.x, x_822.y, x_824);
        let x_832 : vec3<f32> = txVec5;
        let x_834 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_832.xy, x_832.z);
        u_xlat87 = x_834;
        let x_835 : f32 = u_xlat87;
        let x_837 : f32 = u_xlat14.y;
        u_xlat87 = (x_835 * x_837);
        let x_840 : f32 = u_xlat14.x;
        let x_841 : f32 = u_xlat85;
        let x_843 : f32 = u_xlat87;
        u_xlat85 = ((x_840 * x_841) + x_843);
        let x_846 : vec2<f32> = u_xlat61;
        let x_848 : f32 = u_xlat6.z;
        txVec6 = vec3<f32>(x_846.x, x_846.y, x_848);
        let x_855 : vec3<f32> = txVec6;
        let x_857 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_855.xy, x_855.z);
        u_xlat87 = x_857;
        let x_859 : f32 = u_xlat14.z;
        let x_860 : f32 = u_xlat87;
        let x_862 : f32 = u_xlat85;
        u_xlat85 = ((x_859 * x_860) + x_862);
        let x_865 : vec4<f32> = u_xlat10;
        let x_866 : vec2<f32> = vec2<f32>(x_865.x, x_865.y);
        let x_868 : f32 = u_xlat6.z;
        txVec7 = vec3<f32>(x_866.x, x_866.y, x_868);
        let x_875 : vec3<f32> = txVec7;
        let x_877 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_875.xy, x_875.z);
        u_xlat87 = x_877;
        let x_879 : f32 = u_xlat14.w;
        let x_880 : f32 = u_xlat87;
        let x_882 : f32 = u_xlat85;
        u_xlat85 = ((x_879 * x_880) + x_882);
        let x_885 : vec4<f32> = u_xlat12;
        let x_886 : vec2<f32> = vec2<f32>(x_885.x, x_885.y);
        let x_888 : f32 = u_xlat6.z;
        txVec8 = vec3<f32>(x_886.x, x_886.y, x_888);
        let x_895 : vec3<f32> = txVec8;
        let x_897 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_895.xy, x_895.z);
        u_xlat87 = x_897;
        let x_899 : f32 = u_xlat15.x;
        let x_900 : f32 = u_xlat87;
        let x_902 : f32 = u_xlat85;
        u_xlat85 = ((x_899 * x_900) + x_902);
        let x_905 : vec4<f32> = u_xlat12;
        let x_906 : vec2<f32> = vec2<f32>(x_905.z, x_905.w);
        let x_908 : f32 = u_xlat6.z;
        txVec9 = vec3<f32>(x_906.x, x_906.y, x_908);
        let x_915 : vec3<f32> = txVec9;
        let x_917 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_915.xy, x_915.z);
        u_xlat87 = x_917;
        let x_919 : f32 = u_xlat15.y;
        let x_920 : f32 = u_xlat87;
        let x_922 : f32 = u_xlat85;
        u_xlat85 = ((x_919 * x_920) + x_922);
        let x_925 : vec4<f32> = u_xlat10;
        let x_926 : vec2<f32> = vec2<f32>(x_925.z, x_925.w);
        let x_928 : f32 = u_xlat6.z;
        txVec10 = vec3<f32>(x_926.x, x_926.y, x_928);
        let x_935 : vec3<f32> = txVec10;
        let x_937 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_935.xy, x_935.z);
        u_xlat87 = x_937;
        let x_939 : f32 = u_xlat15.z;
        let x_940 : f32 = u_xlat87;
        let x_942 : f32 = u_xlat85;
        u_xlat85 = ((x_939 * x_940) + x_942);
        let x_945 : vec4<f32> = u_xlat9;
        let x_946 : vec2<f32> = vec2<f32>(x_945.x, x_945.y);
        let x_948 : f32 = u_xlat6.z;
        txVec11 = vec3<f32>(x_946.x, x_946.y, x_948);
        let x_955 : vec3<f32> = txVec11;
        let x_957 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_955.xy, x_955.z);
        u_xlat87 = x_957;
        let x_959 : f32 = u_xlat15.w;
        let x_960 : f32 = u_xlat87;
        let x_962 : f32 = u_xlat85;
        u_xlat85 = ((x_959 * x_960) + x_962);
        let x_965 : vec4<f32> = u_xlat9;
        let x_966 : vec2<f32> = vec2<f32>(x_965.z, x_965.w);
        let x_968 : f32 = u_xlat6.z;
        txVec12 = vec3<f32>(x_966.x, x_966.y, x_968);
        let x_975 : vec3<f32> = txVec12;
        let x_977 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_975.xy, x_975.z);
        u_xlat87 = x_977;
        let x_978 : f32 = u_xlat83;
        let x_979 : f32 = u_xlat87;
        let x_981 : f32 = u_xlat85;
        u_xlat82 = ((x_978 * x_979) + x_981);
      } else {
        let x_984 : vec4<f32> = u_xlat6;
        let x_987 : vec4<f32> = x_248.x_MainLightShadowmapSize;
        let x_990 : vec2<f32> = ((vec2<f32>(x_984.x, x_984.y) * vec2<f32>(x_987.z, x_987.w)) + vec2<f32>(0.5f, 0.5f));
        let x_991 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_990.x, x_990.y, x_991.z, x_991.w);
        let x_993 : vec4<f32> = u_xlat7;
        let x_995 : vec2<f32> = floor(vec2<f32>(x_993.x, x_993.y));
        let x_996 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_995.x, x_995.y, x_996.z, x_996.w);
        let x_998 : vec4<f32> = u_xlat6;
        let x_1001 : vec4<f32> = x_248.x_MainLightShadowmapSize;
        let x_1004 : vec4<f32> = u_xlat7;
        u_xlat61 = ((vec2<f32>(x_998.x, x_998.y) * vec2<f32>(x_1001.z, x_1001.w)) + -(vec2<f32>(x_1004.x, x_1004.y)));
        let x_1008 : vec2<f32> = u_xlat61;
        u_xlat8 = (vec4<f32>(x_1008.x, x_1008.x, x_1008.y, x_1008.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1011 : vec4<f32> = u_xlat8;
        let x_1013 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1011.x, x_1011.x, x_1011.z, x_1011.z) * vec4<f32>(x_1013.x, x_1013.x, x_1013.z, x_1013.z));
        let x_1016 : vec4<f32> = u_xlat9;
        let x_1020 : vec2<f32> = (vec2<f32>(x_1016.y, x_1016.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1021 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1021.x, x_1020.x, x_1021.z, x_1020.y);
        let x_1023 : vec4<f32> = u_xlat9;
        let x_1026 : vec2<f32> = u_xlat61;
        let x_1028 : vec2<f32> = ((vec2<f32>(x_1023.x, x_1023.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1026));
        let x_1029 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1028.x, x_1029.y, x_1028.y, x_1029.w);
        let x_1031 : vec2<f32> = u_xlat61;
        let x_1033 : vec2<f32> = (-(x_1031) + vec2<f32>(1.0f, 1.0f));
        let x_1034 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1033.x, x_1033.y, x_1034.z, x_1034.w);
        let x_1036 : vec2<f32> = u_xlat61;
        u_xlat63 = min(x_1036, vec2<f32>(0.0f, 0.0f));
        let x_1038 : vec2<f32> = u_xlat63;
        let x_1040 : vec2<f32> = u_xlat63;
        let x_1042 : vec4<f32> = u_xlat9;
        let x_1044 : vec2<f32> = ((-(x_1038) * x_1040) + vec2<f32>(x_1042.x, x_1042.y));
        let x_1045 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1044.x, x_1044.y, x_1045.z, x_1045.w);
        let x_1047 : vec2<f32> = u_xlat61;
        u_xlat63 = max(x_1047, vec2<f32>(0.0f, 0.0f));
        let x_1050 : vec2<f32> = u_xlat63;
        let x_1052 : vec2<f32> = u_xlat63;
        let x_1054 : vec4<f32> = u_xlat8;
        let x_1056 : vec2<f32> = ((-(x_1050) * x_1052) + vec2<f32>(x_1054.y, x_1054.w));
        let x_1057 : vec3<f32> = u_xlat35;
        u_xlat35 = vec3<f32>(x_1056.x, x_1057.y, x_1056.y);
        let x_1059 : vec4<f32> = u_xlat9;
        let x_1062 : vec2<f32> = (vec2<f32>(x_1059.x, x_1059.y) + vec2<f32>(2.0f, 2.0f));
        let x_1063 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1062.x, x_1062.y, x_1063.z, x_1063.w);
        let x_1065 : vec3<f32> = u_xlat35;
        let x_1067 : vec2<f32> = (vec2<f32>(x_1065.x, x_1065.z) + vec2<f32>(2.0f, 2.0f));
        let x_1068 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1068.x, x_1067.x, x_1068.z, x_1067.y);
        let x_1071 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1071 * 0.08163200318813323975f);
        let x_1075 : vec4<f32> = u_xlat8;
        let x_1078 : vec3<f32> = (vec3<f32>(x_1075.z, x_1075.x, x_1075.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1079 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1078.x, x_1078.y, x_1078.z, x_1079.w);
        let x_1081 : vec4<f32> = u_xlat9;
        let x_1084 : vec2<f32> = (vec2<f32>(x_1081.x, x_1081.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1085 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1084.x, x_1084.y, x_1085.z, x_1085.w);
        let x_1088 : f32 = u_xlat12.y;
        u_xlat11.x = x_1088;
        let x_1090 : vec2<f32> = u_xlat61;
        let x_1097 : vec2<f32> = ((vec2<f32>(x_1090.x, x_1090.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1098 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1098.x, x_1097.x, x_1098.z, x_1097.y);
        let x_1100 : vec2<f32> = u_xlat61;
        let x_1104 : vec2<f32> = ((vec2<f32>(x_1100.x, x_1100.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1105 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1104.x, x_1105.y, x_1104.y, x_1105.w);
        let x_1108 : f32 = u_xlat8.x;
        u_xlat9.y = x_1108;
        let x_1111 : f32 = u_xlat10.y;
        u_xlat9.w = x_1111;
        let x_1113 : vec4<f32> = u_xlat9;
        let x_1114 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1113 + x_1114);
        let x_1116 : vec2<f32> = u_xlat61;
        let x_1119 : vec2<f32> = ((vec2<f32>(x_1116.y, x_1116.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1120 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1120.x, x_1119.x, x_1120.z, x_1119.y);
        let x_1122 : vec2<f32> = u_xlat61;
        let x_1125 : vec2<f32> = ((vec2<f32>(x_1122.y, x_1122.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1126 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1125.x, x_1126.y, x_1125.y, x_1126.w);
        let x_1129 : f32 = u_xlat8.y;
        u_xlat10.y = x_1129;
        let x_1131 : vec4<f32> = u_xlat10;
        let x_1132 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1131 + x_1132);
        let x_1134 : vec4<f32> = u_xlat9;
        let x_1135 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1134 / x_1135);
        let x_1137 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1137 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1143 : vec4<f32> = u_xlat10;
        let x_1144 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1143 / x_1144);
        let x_1146 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1146 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1148 : vec4<f32> = u_xlat9;
        let x_1151 : vec4<f32> = x_248.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1148.w, x_1148.x, x_1148.y, x_1148.z) * vec4<f32>(x_1151.x, x_1151.x, x_1151.x, x_1151.x));
        let x_1154 : vec4<f32> = u_xlat10;
        let x_1157 : vec4<f32> = x_248.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1154.x, x_1154.w, x_1154.y, x_1154.z) * vec4<f32>(x_1157.y, x_1157.y, x_1157.y, x_1157.y));
        let x_1160 : vec4<f32> = u_xlat9;
        let x_1161 : vec3<f32> = vec3<f32>(x_1160.y, x_1160.z, x_1160.w);
        let x_1162 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1161.x, x_1162.y, x_1161.y, x_1161.z);
        let x_1165 : f32 = u_xlat10.x;
        u_xlat12.y = x_1165;
        let x_1167 : vec4<f32> = u_xlat7;
        let x_1170 : vec4<f32> = x_248.x_MainLightShadowmapSize;
        let x_1173 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1167.x, x_1167.y, x_1167.x, x_1167.y) * vec4<f32>(x_1170.x, x_1170.y, x_1170.x, x_1170.y)) + vec4<f32>(x_1173.x, x_1173.y, x_1173.z, x_1173.y));
        let x_1176 : vec4<f32> = u_xlat7;
        let x_1179 : vec4<f32> = x_248.x_MainLightShadowmapSize;
        let x_1182 : vec4<f32> = u_xlat12;
        u_xlat61 = ((vec2<f32>(x_1176.x, x_1176.y) * vec2<f32>(x_1179.x, x_1179.y)) + vec2<f32>(x_1182.w, x_1182.y));
        let x_1186 : f32 = u_xlat12.y;
        u_xlat9.y = x_1186;
        let x_1189 : f32 = u_xlat10.z;
        u_xlat12.y = x_1189;
        let x_1191 : vec4<f32> = u_xlat7;
        let x_1194 : vec4<f32> = x_248.x_MainLightShadowmapSize;
        let x_1197 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1191.x, x_1191.y, x_1191.x, x_1191.y) * vec4<f32>(x_1194.x, x_1194.y, x_1194.x, x_1194.y)) + vec4<f32>(x_1197.x, x_1197.y, x_1197.z, x_1197.y));
        let x_1200 : vec4<f32> = u_xlat7;
        let x_1203 : vec4<f32> = x_248.x_MainLightShadowmapSize;
        let x_1206 : vec4<f32> = u_xlat12;
        let x_1208 : vec2<f32> = ((vec2<f32>(x_1200.x, x_1200.y) * vec2<f32>(x_1203.x, x_1203.y)) + vec2<f32>(x_1206.w, x_1206.y));
        let x_1209 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1208.x, x_1208.y, x_1209.z, x_1209.w);
        let x_1212 : f32 = u_xlat12.y;
        u_xlat9.z = x_1212;
        let x_1215 : vec4<f32> = u_xlat7;
        let x_1218 : vec4<f32> = x_248.x_MainLightShadowmapSize;
        let x_1221 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1215.x, x_1215.y, x_1215.x, x_1215.y) * vec4<f32>(x_1218.x, x_1218.y, x_1218.x, x_1218.y)) + vec4<f32>(x_1221.x, x_1221.y, x_1221.x, x_1221.z));
        let x_1225 : f32 = u_xlat10.w;
        u_xlat12.y = x_1225;
        let x_1228 : vec4<f32> = u_xlat7;
        let x_1231 : vec4<f32> = x_248.x_MainLightShadowmapSize;
        let x_1234 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1228.x, x_1228.y, x_1228.x, x_1228.y) * vec4<f32>(x_1231.x, x_1231.y, x_1231.x, x_1231.y)) + vec4<f32>(x_1234.x, x_1234.y, x_1234.z, x_1234.y));
        let x_1238 : vec4<f32> = u_xlat7;
        let x_1241 : vec4<f32> = x_248.x_MainLightShadowmapSize;
        let x_1244 : vec4<f32> = u_xlat12;
        u_xlat36 = ((vec2<f32>(x_1238.x, x_1238.y) * vec2<f32>(x_1241.x, x_1241.y)) + vec2<f32>(x_1244.w, x_1244.y));
        let x_1248 : f32 = u_xlat12.y;
        u_xlat9.w = x_1248;
        let x_1251 : vec4<f32> = u_xlat7;
        let x_1254 : vec4<f32> = x_248.x_MainLightShadowmapSize;
        let x_1257 : vec4<f32> = u_xlat9;
        u_xlat69 = ((vec2<f32>(x_1251.x, x_1251.y) * vec2<f32>(x_1254.x, x_1254.y)) + vec2<f32>(x_1257.x, x_1257.w));
        let x_1260 : vec4<f32> = u_xlat12;
        let x_1261 : vec3<f32> = vec3<f32>(x_1260.x, x_1260.z, x_1260.w);
        let x_1262 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1261.x, x_1262.y, x_1261.y, x_1261.z);
        let x_1264 : vec4<f32> = u_xlat7;
        let x_1267 : vec4<f32> = x_248.x_MainLightShadowmapSize;
        let x_1270 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1264.x, x_1264.y, x_1264.x, x_1264.y) * vec4<f32>(x_1267.x, x_1267.y, x_1267.x, x_1267.y)) + vec4<f32>(x_1270.x, x_1270.y, x_1270.z, x_1270.y));
        let x_1274 : vec4<f32> = u_xlat7;
        let x_1277 : vec4<f32> = x_248.x_MainLightShadowmapSize;
        let x_1280 : vec4<f32> = u_xlat10;
        u_xlat64 = ((vec2<f32>(x_1274.x, x_1274.y) * vec2<f32>(x_1277.x, x_1277.y)) + vec2<f32>(x_1280.w, x_1280.y));
        let x_1284 : f32 = u_xlat9.x;
        u_xlat10.x = x_1284;
        let x_1286 : vec4<f32> = u_xlat7;
        let x_1289 : vec4<f32> = x_248.x_MainLightShadowmapSize;
        let x_1292 : vec4<f32> = u_xlat10;
        let x_1294 : vec2<f32> = ((vec2<f32>(x_1286.x, x_1286.y) * vec2<f32>(x_1289.x, x_1289.y)) + vec2<f32>(x_1292.x, x_1292.y));
        let x_1295 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1294.x, x_1294.y, x_1295.z, x_1295.w);
        let x_1298 : vec4<f32> = u_xlat8;
        let x_1300 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1298.x, x_1298.x, x_1298.x, x_1298.x) * x_1300);
        let x_1303 : vec4<f32> = u_xlat8;
        let x_1305 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1303.y, x_1303.y, x_1303.y, x_1303.y) * x_1305);
        let x_1308 : vec4<f32> = u_xlat8;
        let x_1310 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1308.z, x_1308.z, x_1308.z, x_1308.z) * x_1310);
        let x_1312 : vec4<f32> = u_xlat8;
        let x_1314 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1312.w, x_1312.w, x_1312.w, x_1312.w) * x_1314);
        let x_1317 : vec4<f32> = u_xlat13;
        let x_1318 : vec2<f32> = vec2<f32>(x_1317.x, x_1317.y);
        let x_1320 : f32 = u_xlat6.z;
        txVec13 = vec3<f32>(x_1318.x, x_1318.y, x_1320);
        let x_1327 : vec3<f32> = txVec13;
        let x_1329 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1327.xy, x_1327.z);
        u_xlat83 = x_1329;
        let x_1331 : vec4<f32> = u_xlat13;
        let x_1332 : vec2<f32> = vec2<f32>(x_1331.z, x_1331.w);
        let x_1334 : f32 = u_xlat6.z;
        txVec14 = vec3<f32>(x_1332.x, x_1332.y, x_1334);
        let x_1341 : vec3<f32> = txVec14;
        let x_1343 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1341.xy, x_1341.z);
        u_xlat85 = x_1343;
        let x_1344 : f32 = u_xlat85;
        let x_1346 : f32 = u_xlat18.y;
        u_xlat85 = (x_1344 * x_1346);
        let x_1349 : f32 = u_xlat18.x;
        let x_1350 : f32 = u_xlat83;
        let x_1352 : f32 = u_xlat85;
        u_xlat83 = ((x_1349 * x_1350) + x_1352);
        let x_1355 : vec2<f32> = u_xlat61;
        let x_1357 : f32 = u_xlat6.z;
        txVec15 = vec3<f32>(x_1355.x, x_1355.y, x_1357);
        let x_1364 : vec3<f32> = txVec15;
        let x_1366 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1364.xy, x_1364.z);
        u_xlat85 = x_1366;
        let x_1368 : f32 = u_xlat18.z;
        let x_1369 : f32 = u_xlat85;
        let x_1371 : f32 = u_xlat83;
        u_xlat83 = ((x_1368 * x_1369) + x_1371);
        let x_1374 : vec4<f32> = u_xlat16;
        let x_1375 : vec2<f32> = vec2<f32>(x_1374.x, x_1374.y);
        let x_1377 : f32 = u_xlat6.z;
        txVec16 = vec3<f32>(x_1375.x, x_1375.y, x_1377);
        let x_1384 : vec3<f32> = txVec16;
        let x_1386 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1384.xy, x_1384.z);
        u_xlat85 = x_1386;
        let x_1388 : f32 = u_xlat18.w;
        let x_1389 : f32 = u_xlat85;
        let x_1391 : f32 = u_xlat83;
        u_xlat83 = ((x_1388 * x_1389) + x_1391);
        let x_1394 : vec4<f32> = u_xlat14;
        let x_1395 : vec2<f32> = vec2<f32>(x_1394.x, x_1394.y);
        let x_1397 : f32 = u_xlat6.z;
        txVec17 = vec3<f32>(x_1395.x, x_1395.y, x_1397);
        let x_1404 : vec3<f32> = txVec17;
        let x_1406 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1404.xy, x_1404.z);
        u_xlat85 = x_1406;
        let x_1408 : f32 = u_xlat19.x;
        let x_1409 : f32 = u_xlat85;
        let x_1411 : f32 = u_xlat83;
        u_xlat83 = ((x_1408 * x_1409) + x_1411);
        let x_1414 : vec4<f32> = u_xlat14;
        let x_1415 : vec2<f32> = vec2<f32>(x_1414.z, x_1414.w);
        let x_1417 : f32 = u_xlat6.z;
        txVec18 = vec3<f32>(x_1415.x, x_1415.y, x_1417);
        let x_1424 : vec3<f32> = txVec18;
        let x_1426 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1424.xy, x_1424.z);
        u_xlat85 = x_1426;
        let x_1428 : f32 = u_xlat19.y;
        let x_1429 : f32 = u_xlat85;
        let x_1431 : f32 = u_xlat83;
        u_xlat83 = ((x_1428 * x_1429) + x_1431);
        let x_1434 : vec4<f32> = u_xlat15;
        let x_1435 : vec2<f32> = vec2<f32>(x_1434.x, x_1434.y);
        let x_1437 : f32 = u_xlat6.z;
        txVec19 = vec3<f32>(x_1435.x, x_1435.y, x_1437);
        let x_1444 : vec3<f32> = txVec19;
        let x_1446 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1444.xy, x_1444.z);
        u_xlat85 = x_1446;
        let x_1448 : f32 = u_xlat19.z;
        let x_1449 : f32 = u_xlat85;
        let x_1451 : f32 = u_xlat83;
        u_xlat83 = ((x_1448 * x_1449) + x_1451);
        let x_1454 : vec4<f32> = u_xlat16;
        let x_1455 : vec2<f32> = vec2<f32>(x_1454.z, x_1454.w);
        let x_1457 : f32 = u_xlat6.z;
        txVec20 = vec3<f32>(x_1455.x, x_1455.y, x_1457);
        let x_1464 : vec3<f32> = txVec20;
        let x_1466 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1464.xy, x_1464.z);
        u_xlat85 = x_1466;
        let x_1468 : f32 = u_xlat19.w;
        let x_1469 : f32 = u_xlat85;
        let x_1471 : f32 = u_xlat83;
        u_xlat83 = ((x_1468 * x_1469) + x_1471);
        let x_1474 : vec4<f32> = u_xlat17;
        let x_1475 : vec2<f32> = vec2<f32>(x_1474.x, x_1474.y);
        let x_1477 : f32 = u_xlat6.z;
        txVec21 = vec3<f32>(x_1475.x, x_1475.y, x_1477);
        let x_1484 : vec3<f32> = txVec21;
        let x_1486 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1484.xy, x_1484.z);
        u_xlat85 = x_1486;
        let x_1488 : f32 = u_xlat20.x;
        let x_1489 : f32 = u_xlat85;
        let x_1491 : f32 = u_xlat83;
        u_xlat83 = ((x_1488 * x_1489) + x_1491);
        let x_1494 : vec4<f32> = u_xlat17;
        let x_1495 : vec2<f32> = vec2<f32>(x_1494.z, x_1494.w);
        let x_1497 : f32 = u_xlat6.z;
        txVec22 = vec3<f32>(x_1495.x, x_1495.y, x_1497);
        let x_1504 : vec3<f32> = txVec22;
        let x_1506 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1504.xy, x_1504.z);
        u_xlat85 = x_1506;
        let x_1508 : f32 = u_xlat20.y;
        let x_1509 : f32 = u_xlat85;
        let x_1511 : f32 = u_xlat83;
        u_xlat83 = ((x_1508 * x_1509) + x_1511);
        let x_1514 : vec2<f32> = u_xlat36;
        let x_1516 : f32 = u_xlat6.z;
        txVec23 = vec3<f32>(x_1514.x, x_1514.y, x_1516);
        let x_1523 : vec3<f32> = txVec23;
        let x_1525 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1523.xy, x_1523.z);
        u_xlat85 = x_1525;
        let x_1527 : f32 = u_xlat20.z;
        let x_1528 : f32 = u_xlat85;
        let x_1530 : f32 = u_xlat83;
        u_xlat83 = ((x_1527 * x_1528) + x_1530);
        let x_1533 : vec2<f32> = u_xlat69;
        let x_1535 : f32 = u_xlat6.z;
        txVec24 = vec3<f32>(x_1533.x, x_1533.y, x_1535);
        let x_1542 : vec3<f32> = txVec24;
        let x_1544 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1542.xy, x_1542.z);
        u_xlat85 = x_1544;
        let x_1546 : f32 = u_xlat20.w;
        let x_1547 : f32 = u_xlat85;
        let x_1549 : f32 = u_xlat83;
        u_xlat83 = ((x_1546 * x_1547) + x_1549);
        let x_1552 : vec4<f32> = u_xlat12;
        let x_1553 : vec2<f32> = vec2<f32>(x_1552.x, x_1552.y);
        let x_1555 : f32 = u_xlat6.z;
        txVec25 = vec3<f32>(x_1553.x, x_1553.y, x_1555);
        let x_1562 : vec3<f32> = txVec25;
        let x_1564 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1562.xy, x_1562.z);
        u_xlat85 = x_1564;
        let x_1566 : f32 = u_xlat8.x;
        let x_1567 : f32 = u_xlat85;
        let x_1569 : f32 = u_xlat83;
        u_xlat83 = ((x_1566 * x_1567) + x_1569);
        let x_1572 : vec4<f32> = u_xlat12;
        let x_1573 : vec2<f32> = vec2<f32>(x_1572.z, x_1572.w);
        let x_1575 : f32 = u_xlat6.z;
        txVec26 = vec3<f32>(x_1573.x, x_1573.y, x_1575);
        let x_1582 : vec3<f32> = txVec26;
        let x_1584 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1582.xy, x_1582.z);
        u_xlat85 = x_1584;
        let x_1586 : f32 = u_xlat8.y;
        let x_1587 : f32 = u_xlat85;
        let x_1589 : f32 = u_xlat83;
        u_xlat83 = ((x_1586 * x_1587) + x_1589);
        let x_1592 : vec2<f32> = u_xlat64;
        let x_1594 : f32 = u_xlat6.z;
        txVec27 = vec3<f32>(x_1592.x, x_1592.y, x_1594);
        let x_1601 : vec3<f32> = txVec27;
        let x_1603 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1601.xy, x_1601.z);
        u_xlat85 = x_1603;
        let x_1605 : f32 = u_xlat8.z;
        let x_1606 : f32 = u_xlat85;
        let x_1608 : f32 = u_xlat83;
        u_xlat83 = ((x_1605 * x_1606) + x_1608);
        let x_1611 : vec4<f32> = u_xlat7;
        let x_1612 : vec2<f32> = vec2<f32>(x_1611.x, x_1611.y);
        let x_1614 : f32 = u_xlat6.z;
        txVec28 = vec3<f32>(x_1612.x, x_1612.y, x_1614);
        let x_1621 : vec3<f32> = txVec28;
        let x_1623 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1621.xy, x_1621.z);
        u_xlat85 = x_1623;
        let x_1625 : f32 = u_xlat8.w;
        let x_1626 : f32 = u_xlat85;
        let x_1628 : f32 = u_xlat83;
        u_xlat82 = ((x_1625 * x_1626) + x_1628);
      }
    }
  } else {
    let x_1632 : vec4<f32> = u_xlat6;
    let x_1633 : vec2<f32> = vec2<f32>(x_1632.x, x_1632.y);
    let x_1635 : f32 = u_xlat6.z;
    txVec29 = vec3<f32>(x_1633.x, x_1633.y, x_1635);
    let x_1642 : vec3<f32> = txVec29;
    let x_1644 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1642.xy, x_1642.z);
    u_xlat82 = x_1644;
  }
  let x_1646 : f32 = x_248.x_MainLightShadowParams.x;
  u_xlat83 = (-(x_1646) + 1.0f);
  let x_1649 : f32 = u_xlat82;
  let x_1651 : f32 = x_248.x_MainLightShadowParams.x;
  let x_1653 : f32 = u_xlat83;
  u_xlat82 = ((x_1649 * x_1651) + x_1653);
  let x_1657 : f32 = u_xlat6.z;
  u_xlatb85 = (0.0f >= x_1657);
  let x_1661 : f32 = u_xlat6.z;
  u_xlatb87 = (x_1661 >= 1.0f);
  let x_1663 : bool = u_xlatb85;
  let x_1664 : bool = u_xlatb87;
  u_xlatb85 = (x_1663 | x_1664);
  let x_1666 : bool = u_xlatb85;
  let x_1667 : f32 = u_xlat82;
  u_xlat82 = select(x_1667, 1.0f, x_1666);
  let x_1669 : vec3<f32> = u_xlat0;
  let x_1671 : vec4<f32> = x_75.x_MainLightPosition;
  u_xlat0.x = dot(x_1669, -(vec3<f32>(x_1671.x, x_1671.y, x_1671.z)));
  let x_1677 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1677, 0.0f, 1.0f);
  let x_1680 : f32 = u_xlat82;
  let x_1683 : vec4<f32> = x_75.x_MainLightColor;
  let x_1685 : vec3<f32> = (vec3<f32>(x_1680, x_1680, x_1680) * vec3<f32>(x_1683.x, x_1683.y, x_1683.z));
  let x_1686 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1685.x, x_1685.y, x_1685.z, x_1686.w);
  let x_1688 : vec3<f32> = u_xlat0;
  let x_1690 : vec4<f32> = u_xlat7;
  u_xlat0 = (vec3<f32>(x_1688.x, x_1688.x, x_1688.x) * vec3<f32>(x_1690.x, x_1690.y, x_1690.z));
  let x_1693 : vec3<f32> = u_xlat0;
  let x_1694 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_1693 * vec3<f32>(x_1694.x, x_1694.y, x_1694.z));
  let x_1698 : f32 = x_132.unity_LODFade.x;
  u_xlatb82 = (x_1698 < 0.0f);
  let x_1701 : f32 = x_132.unity_LODFade.x;
  u_xlat3.x = (x_1701 + 1.0f);
  let x_1704 : bool = u_xlatb82;
  if (x_1704) {
    let x_1710 : f32 = u_xlat3.x;
    x_1706 = x_1710;
  } else {
    let x_1713 : f32 = x_132.unity_LODFade.x;
    x_1706 = x_1713;
  }
  let x_1714 : f32 = x_1706;
  u_xlat82 = x_1714;
  let x_1716 : f32 = u_xlat82;
  u_xlatb3 = (0.5f >= x_1716);
  let x_1718 : vec3<f32> = u_xlat2;
  let x_1721 : vec4<f32> = x_75.x_ScreenParams;
  u_xlat2 = (abs(x_1718) * vec3<f32>(x_1721.x, x_1721.y, x_1721.x));
  let x_1727 : vec3<f32> = u_xlat2;
  u_xlatu2 = vec3<u32>(x_1727);
  let x_1731 : u32 = u_xlatu2.z;
  u_xlatu56 = (x_1731 * 1025u);
  let x_1735 : u32 = u_xlatu56;
  u_xlatu30 = (x_1735 >> 6u);
  let x_1739 : u32 = u_xlatu56;
  let x_1740 : u32 = u_xlatu30;
  u_xlati56 = bitcast<i32>((x_1739 ^ x_1740));
  let x_1743 : i32 = u_xlati56;
  u_xlatu56 = (bitcast<u32>(x_1743) * 9u);
  let x_1747 : u32 = u_xlatu56;
  u_xlatu30 = (x_1747 >> 11u);
  let x_1750 : u32 = u_xlatu56;
  let x_1751 : u32 = u_xlatu30;
  u_xlati56 = bitcast<i32>((x_1750 ^ x_1751));
  let x_1754 : i32 = u_xlati56;
  u_xlati56 = (x_1754 * 32769i);
  let x_1758 : i32 = u_xlati56;
  let x_1761 : u32 = u_xlatu2.y;
  u_xlati29 = bitcast<i32>((bitcast<u32>(x_1758) ^ x_1761));
  let x_1765 : i32 = u_xlati29;
  u_xlatu29 = (bitcast<u32>(x_1765) * 1025u);
  let x_1768 : u32 = u_xlatu29;
  u_xlatu56 = (x_1768 >> 6u);
  let x_1770 : u32 = u_xlatu56;
  let x_1771 : u32 = u_xlatu29;
  u_xlati29 = bitcast<i32>((x_1770 ^ x_1771));
  let x_1774 : i32 = u_xlati29;
  u_xlatu29 = (bitcast<u32>(x_1774) * 9u);
  let x_1777 : u32 = u_xlatu29;
  u_xlatu56 = (x_1777 >> 11u);
  let x_1779 : u32 = u_xlatu56;
  let x_1780 : u32 = u_xlatu29;
  u_xlati29 = bitcast<i32>((x_1779 ^ x_1780));
  let x_1783 : i32 = u_xlati29;
  u_xlati29 = (x_1783 * 32769i);
  let x_1786 : i32 = u_xlati29;
  let x_1789 : u32 = u_xlatu2.x;
  u_xlati2 = bitcast<i32>((bitcast<u32>(x_1786) ^ x_1789));
  let x_1792 : i32 = u_xlati2;
  u_xlatu2.x = (bitcast<u32>(x_1792) * 1025u);
  let x_1797 : u32 = u_xlatu2.x;
  u_xlatu29 = (x_1797 >> 6u);
  let x_1799 : u32 = u_xlatu29;
  let x_1801 : u32 = u_xlatu2.x;
  u_xlati2 = bitcast<i32>((x_1799 ^ x_1801));
  let x_1804 : i32 = u_xlati2;
  u_xlatu2.x = (bitcast<u32>(x_1804) * 9u);
  let x_1809 : u32 = u_xlatu2.x;
  u_xlatu29 = (x_1809 >> 11u);
  let x_1811 : u32 = u_xlatu29;
  let x_1813 : u32 = u_xlatu2.x;
  u_xlati2 = bitcast<i32>((x_1811 ^ x_1813));
  let x_1816 : i32 = u_xlati2;
  u_xlati2 = (x_1816 * 32769i);
  param = 1065353216i;
  let x_1822 : i32 = u_xlati2;
  param_1 = x_1822;
  param_2 = 0i;
  param_3 = 23i;
  let x_1825 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlat2.x = bitcast<f32>(x_1825);
  let x_1829 : f32 = u_xlat2.x;
  u_xlat2.x = (x_1829 + -1.0f);
  let x_1834 : f32 = u_xlat2.x;
  u_xlat29.x = (-(x_1834) + 1.0f);
  let x_1838 : bool = u_xlatb3;
  if (x_1838) {
    let x_1843 : f32 = u_xlat2.x;
    x_1839 = x_1843;
  } else {
    let x_1846 : f32 = u_xlat29.x;
    x_1839 = x_1846;
  }
  let x_1847 : f32 = x_1839;
  u_xlat2.x = x_1847;
  let x_1849 : f32 = u_xlat82;
  let x_1852 : f32 = u_xlat2.x;
  u_xlat82 = ((x_1849 * 2.0f) + -(x_1852));
  let x_1855 : f32 = u_xlat82;
  let x_1857 : f32 = u_xlat3.w;
  u_xlat2.x = (x_1855 * x_1857);
  let x_1864 : f32 = u_xlat2.x;
  u_xlatb29.x = (x_1864 >= 0.40000000596046447754f);
  let x_1869 : bool = u_xlatb29.x;
  if (x_1869) {
    let x_1874 : f32 = u_xlat2.x;
    x_1870 = x_1874;
  } else {
    x_1870 = 0.0f;
  }
  let x_1876 : f32 = x_1870;
  u_xlat29.x = x_1876;
  let x_1879 : f32 = u_xlat3.w;
  let x_1880 : f32 = u_xlat82;
  u_xlat82 = ((x_1879 * x_1880) + -0.40000000596046447754f);
  let x_1886 : f32 = u_xlat2.x;
  u_xlat56 = dpdxCoarse(x_1886);
  let x_1889 : f32 = u_xlat2.x;
  u_xlat2.x = dpdyCoarse(x_1889);
  let x_1893 : f32 = u_xlat2.x;
  let x_1895 : f32 = u_xlat56;
  u_xlat2.x = (abs(x_1893) + abs(x_1895));
  let x_1900 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_1900, 0.00009999999747378752f);
  let x_1904 : f32 = u_xlat82;
  let x_1906 : f32 = u_xlat2.x;
  u_xlat82 = (x_1904 / x_1906);
  let x_1908 : f32 = u_xlat82;
  u_xlat82 = (x_1908 + 0.5f);
  let x_1910 : f32 = u_xlat82;
  u_xlat82 = clamp(x_1910, 0.0f, 1.0f);
  let x_1914 : f32 = x_75.x_AlphaToMaskAvailable;
  u_xlatb2 = !((x_1914 == 0.0f));
  let x_1916 : bool = u_xlatb2;
  if (x_1916) {
    let x_1920 : f32 = u_xlat82;
    x_1917 = x_1920;
  } else {
    let x_1923 : f32 = u_xlat29.x;
    x_1917 = x_1923;
  }
  let x_1924 : f32 = x_1917;
  u_xlat82 = x_1924;
  let x_1925 : f32 = u_xlat82;
  u_xlat29.x = (x_1925 + -0.00009999999747378752f);
  let x_1930 : f32 = u_xlat29.x;
  u_xlatb29.x = (x_1930 < 0.0f);
  let x_1934 : bool = u_xlatb29.x;
  if (((select(0i, 1i, x_1934) * -1i) != 0i)) {
    discard;
  }
  let x_1944 : f32 = vs_INTERP4.w;
  u_xlatb29.x = (0.0f < x_1944);
  let x_1948 : f32 = x_132.unity_WorldTransformParams.w;
  u_xlatb29.y = (x_1948 >= 0.0f);
  let x_1952 : bool = u_xlatb29.x;
  u_xlat29.x = select(-1.0f, 1.0f, x_1952);
  let x_1956 : bool = u_xlatb29.y;
  u_xlat29.y = select(-1.0f, 1.0f, x_1956);
  let x_1960 : f32 = u_xlat29.y;
  let x_1962 : f32 = u_xlat29.x;
  u_xlat29.x = (x_1960 * x_1962);
  let x_1965 : vec4<f32> = vs_INTERP4;
  let x_1967 : vec3<f32> = vs_INTERP9;
  let x_1969 : vec3<f32> = (vec3<f32>(x_1965.y, x_1965.z, x_1965.x) * vec3<f32>(x_1967.z, x_1967.x, x_1967.y));
  let x_1970 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1969.x, x_1969.y, x_1969.z, x_1970.w);
  let x_1972 : vec3<f32> = vs_INTERP9;
  let x_1974 : vec4<f32> = vs_INTERP4;
  let x_1977 : vec4<f32> = u_xlat3;
  let x_1980 : vec3<f32> = ((vec3<f32>(x_1972.y, x_1972.z, x_1972.x) * vec3<f32>(x_1974.z, x_1974.x, x_1974.y)) + -(vec3<f32>(x_1977.x, x_1977.y, x_1977.z)));
  let x_1981 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1980.x, x_1980.y, x_1980.z, x_1981.w);
  let x_1983 : vec2<f32> = u_xlat29;
  let x_1985 : vec4<f32> = u_xlat3;
  let x_1987 : vec3<f32> = (vec3<f32>(x_1983.x, x_1983.x, x_1983.x) * vec3<f32>(x_1985.x, x_1985.y, x_1985.z));
  let x_1988 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1987.x, x_1987.y, x_1987.z, x_1988.w);
  let x_1990 : vec4<f32> = u_xlat3;
  let x_1992 : vec3<f32> = u_xlat32;
  let x_1994 : vec3<f32> = (vec3<f32>(x_1990.x, x_1990.y, x_1990.z) * vec3<f32>(x_1992.y, x_1992.y, x_1992.y));
  let x_1995 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1994.x, x_1994.y, x_1994.z, x_1995.w);
  let x_1997 : vec3<f32> = u_xlat32;
  let x_1999 : vec4<f32> = vs_INTERP4;
  let x_2002 : vec4<f32> = u_xlat3;
  let x_2004 : vec3<f32> = ((vec3<f32>(x_1997.x, x_1997.x, x_1997.x) * vec3<f32>(x_1999.x, x_1999.y, x_1999.z)) + vec3<f32>(x_2002.x, x_2002.y, x_2002.z));
  let x_2005 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2004.x, x_2004.y, x_2004.z, x_2005.w);
  let x_2007 : vec3<f32> = u_xlat32;
  let x_2009 : vec3<f32> = vs_INTERP9;
  let x_2011 : vec4<f32> = u_xlat3;
  let x_2013 : vec3<f32> = ((vec3<f32>(x_2007.z, x_2007.z, x_2007.z) * x_2009) + vec3<f32>(x_2011.x, x_2011.y, x_2011.z));
  let x_2014 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2013.x, x_2013.y, x_2013.z, x_2014.w);
  let x_2016 : vec4<f32> = u_xlat3;
  let x_2018 : vec4<f32> = u_xlat3;
  u_xlat29.x = dot(vec3<f32>(x_2016.x, x_2016.y, x_2016.z), vec3<f32>(x_2018.x, x_2018.y, x_2018.z));
  let x_2023 : f32 = u_xlat29.x;
  u_xlat29.x = inverseSqrt(x_2023);
  let x_2026 : vec2<f32> = u_xlat29;
  let x_2028 : vec4<f32> = u_xlat3;
  let x_2030 : vec3<f32> = (vec3<f32>(x_2026.x, x_2026.x, x_2026.x) * vec3<f32>(x_2028.x, x_2028.y, x_2028.z));
  let x_2031 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2030.x, x_2030.y, x_2030.z, x_2031.w);
  let x_2034 : f32 = vs_INTERP8.y;
  let x_2036 : f32 = x_75.unity_MatrixV[1i].z;
  u_xlat29.x = (x_2034 * x_2036);
  let x_2040 : f32 = x_75.unity_MatrixV[0i].z;
  let x_2042 : f32 = vs_INTERP8.x;
  let x_2045 : f32 = u_xlat29.x;
  u_xlat29.x = ((x_2040 * x_2042) + x_2045);
  let x_2049 : f32 = x_75.unity_MatrixV[2i].z;
  let x_2051 : f32 = vs_INTERP8.z;
  let x_2054 : f32 = u_xlat29.x;
  u_xlat29.x = ((x_2049 * x_2051) + x_2054);
  let x_2058 : f32 = u_xlat29.x;
  let x_2060 : f32 = x_75.unity_MatrixV[3i].z;
  u_xlat29.x = (x_2058 + x_2060);
  let x_2064 : f32 = u_xlat29.x;
  let x_2067 : f32 = x_75.x_ProjectionParams.y;
  u_xlat29.x = (-(x_2064) + -(x_2067));
  let x_2072 : f32 = u_xlat29.x;
  u_xlat29.x = max(x_2072, 0.0f);
  let x_2076 : f32 = u_xlat29.x;
  let x_2078 : f32 = x_75.unity_FogParams.x;
  u_xlat29.x = (x_2076 * x_2078);
  let x_2088 : vec2<f32> = vs_INTERP0;
  let x_2090 : f32 = x_75.x_GlobalMipBias.x;
  let x_2091 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_2088, x_2090);
  u_xlat7 = x_2091;
  let x_2096 : vec2<f32> = vs_INTERP0;
  let x_2098 : f32 = x_75.x_GlobalMipBias.x;
  let x_2099 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_2096, x_2098);
  u_xlat32 = vec3<f32>(x_2099.x, x_2099.y, x_2099.z);
  let x_2101 : vec4<f32> = u_xlat7;
  let x_2104 : vec3<f32> = (vec3<f32>(x_2101.x, x_2101.y, x_2101.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_2105 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2104.x, x_2104.y, x_2104.z, x_2105.w);
  let x_2107 : vec4<f32> = u_xlat3;
  let x_2109 : vec4<f32> = u_xlat7;
  u_xlat56 = dot(vec3<f32>(x_2107.x, x_2107.y, x_2107.z), vec3<f32>(x_2109.x, x_2109.y, x_2109.z));
  let x_2112 : f32 = u_xlat56;
  u_xlat56 = (x_2112 + 0.5f);
  let x_2114 : f32 = u_xlat56;
  let x_2116 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_2114, x_2114, x_2114) * x_2116);
  let x_2119 : f32 = u_xlat7.w;
  u_xlat56 = max(x_2119, 0.00009999999747378752f);
  let x_2121 : vec3<f32> = u_xlat32;
  let x_2122 : f32 = u_xlat56;
  u_xlat32 = (x_2121 / vec3<f32>(x_2122, x_2122, x_2122));
  let x_2126 : f32 = u_xlat5.x;
  u_xlat5.x = x_2126;
  let x_2129 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_2129, 0.0f, 1.0f);
  let x_2132 : f32 = u_xlat82;
  u_xlat82 = x_2132;
  let x_2133 : f32 = u_xlat82;
  u_xlat82 = clamp(x_2133, 0.0f, 1.0f);
  let x_2135 : vec3<f32> = u_xlat4;
  u_xlat4 = (x_2135 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_2140 : f32 = u_xlat5.x;
  u_xlat56 = (-(x_2140) + 1.0f);
  let x_2144 : f32 = u_xlat56;
  let x_2145 : f32 = u_xlat56;
  u_xlat84 = (x_2144 * x_2145);
  let x_2147 : f32 = u_xlat84;
  u_xlat84 = max(x_2147, 0.0078125f);
  let x_2150 : f32 = u_xlat84;
  let x_2151 : f32 = u_xlat84;
  u_xlat87 = (x_2150 * x_2151);
  let x_2154 : f32 = u_xlat5.x;
  u_xlat5.x = (x_2154 + 0.04000002145767211914f);
  let x_2159 : f32 = u_xlat5.x;
  u_xlat5.x = min(x_2159, 1.0f);
  let x_2162 : f32 = u_xlat84;
  u_xlat7.x = ((x_2162 * 4.0f) + 2.0f);
  let x_2168 : f32 = vs_INTERP6.w;
  u_xlat34 = min(x_2168, 1.0f);
  let x_2170 : bool = u_xlatb81;
  if (x_2170) {
    let x_2174 : f32 = x_248.x_MainLightShadowParams.y;
    u_xlatb81 = (x_2174 == 1.0f);
    let x_2176 : bool = u_xlatb81;
    if (x_2176) {
      let x_2179 : vec4<f32> = u_xlat6;
      let x_2182 : vec4<f32> = x_248.x_MainLightShadowOffset0;
      u_xlat8 = (vec4<f32>(x_2179.x, x_2179.y, x_2179.x, x_2179.y) + x_2182);
      let x_2185 : vec4<f32> = u_xlat8;
      let x_2186 : vec2<f32> = vec2<f32>(x_2185.x, x_2185.y);
      let x_2188 : f32 = u_xlat6.z;
      txVec30 = vec3<f32>(x_2186.x, x_2186.y, x_2188);
      let x_2195 : vec3<f32> = txVec30;
      let x_2197 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2195.xy, x_2195.z);
      u_xlat9.x = x_2197;
      let x_2200 : vec4<f32> = u_xlat8;
      let x_2201 : vec2<f32> = vec2<f32>(x_2200.z, x_2200.w);
      let x_2203 : f32 = u_xlat6.z;
      txVec31 = vec3<f32>(x_2201.x, x_2201.y, x_2203);
      let x_2210 : vec3<f32> = txVec31;
      let x_2212 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2210.xy, x_2210.z);
      u_xlat9.y = x_2212;
      let x_2214 : vec4<f32> = u_xlat6;
      let x_2217 : vec4<f32> = x_248.x_MainLightShadowOffset1;
      u_xlat8 = (vec4<f32>(x_2214.x, x_2214.y, x_2214.x, x_2214.y) + x_2217);
      let x_2220 : vec4<f32> = u_xlat8;
      let x_2221 : vec2<f32> = vec2<f32>(x_2220.x, x_2220.y);
      let x_2223 : f32 = u_xlat6.z;
      txVec32 = vec3<f32>(x_2221.x, x_2221.y, x_2223);
      let x_2230 : vec3<f32> = txVec32;
      let x_2232 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2230.xy, x_2230.z);
      u_xlat9.z = x_2232;
      let x_2235 : vec4<f32> = u_xlat8;
      let x_2236 : vec2<f32> = vec2<f32>(x_2235.z, x_2235.w);
      let x_2238 : f32 = u_xlat6.z;
      txVec33 = vec3<f32>(x_2236.x, x_2236.y, x_2238);
      let x_2245 : vec3<f32> = txVec33;
      let x_2247 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2245.xy, x_2245.z);
      u_xlat9.w = x_2247;
      let x_2249 : vec4<f32> = u_xlat9;
      u_xlat81 = dot(x_2249, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_2254 : f32 = x_248.x_MainLightShadowParams.y;
      u_xlatb61 = (x_2254 == 2.0f);
      let x_2256 : bool = u_xlatb61;
      if (x_2256) {
        let x_2259 : vec4<f32> = u_xlat6;
        let x_2262 : vec4<f32> = x_248.x_MainLightShadowmapSize;
        u_xlat61 = ((vec2<f32>(x_2259.x, x_2259.y) * vec2<f32>(x_2262.z, x_2262.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2266 : vec2<f32> = u_xlat61;
        u_xlat61 = floor(x_2266);
        let x_2268 : vec4<f32> = u_xlat6;
        let x_2271 : vec4<f32> = x_248.x_MainLightShadowmapSize;
        let x_2274 : vec2<f32> = u_xlat61;
        let x_2276 : vec2<f32> = ((vec2<f32>(x_2268.x, x_2268.y) * vec2<f32>(x_2271.z, x_2271.w)) + -(x_2274));
        let x_2277 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2276.x, x_2276.y, x_2277.z, x_2277.w);
        let x_2279 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2279.x, x_2279.x, x_2279.y, x_2279.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2282 : vec4<f32> = u_xlat9;
        let x_2284 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_2282.x, x_2282.x, x_2282.z, x_2282.z) * vec4<f32>(x_2284.x, x_2284.x, x_2284.z, x_2284.z));
        let x_2288 : vec4<f32> = u_xlat10;
        u_xlat62 = (vec2<f32>(x_2288.y, x_2288.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_2291 : vec4<f32> = u_xlat10;
        let x_2294 : vec4<f32> = u_xlat8;
        let x_2297 : vec2<f32> = ((vec2<f32>(x_2291.x, x_2291.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2294.x, x_2294.y)));
        let x_2298 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2297.x, x_2298.y, x_2297.y, x_2298.w);
        let x_2300 : vec4<f32> = u_xlat8;
        let x_2303 : vec2<f32> = (-(vec2<f32>(x_2300.x, x_2300.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2304 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2303.x, x_2303.y, x_2304.z, x_2304.w);
        let x_2306 : vec4<f32> = u_xlat8;
        u_xlat64 = min(vec2<f32>(x_2306.x, x_2306.y), vec2<f32>(0.0f, 0.0f));
        let x_2309 : vec2<f32> = u_xlat64;
        let x_2311 : vec2<f32> = u_xlat64;
        let x_2313 : vec4<f32> = u_xlat10;
        u_xlat64 = ((-(x_2309) * x_2311) + vec2<f32>(x_2313.x, x_2313.y));
        let x_2316 : vec4<f32> = u_xlat8;
        let x_2318 : vec2<f32> = max(vec2<f32>(x_2316.x, x_2316.y), vec2<f32>(0.0f, 0.0f));
        let x_2319 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2318.x, x_2318.y, x_2319.z, x_2319.w);
        let x_2321 : vec4<f32> = u_xlat8;
        let x_2324 : vec4<f32> = u_xlat8;
        let x_2327 : vec4<f32> = u_xlat9;
        let x_2329 : vec2<f32> = ((-(vec2<f32>(x_2321.x, x_2321.y)) * vec2<f32>(x_2324.x, x_2324.y)) + vec2<f32>(x_2327.y, x_2327.w));
        let x_2330 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2329.x, x_2329.y, x_2330.z, x_2330.w);
        let x_2332 : vec2<f32> = u_xlat64;
        u_xlat64 = (x_2332 + vec2<f32>(1.0f, 1.0f));
        let x_2334 : vec4<f32> = u_xlat8;
        let x_2336 : vec2<f32> = (vec2<f32>(x_2334.x, x_2334.y) + vec2<f32>(1.0f, 1.0f));
        let x_2337 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2336.x, x_2336.y, x_2337.z, x_2337.w);
        let x_2339 : vec4<f32> = u_xlat9;
        let x_2341 : vec2<f32> = (vec2<f32>(x_2339.x, x_2339.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2342 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2341.x, x_2341.y, x_2342.z, x_2342.w);
        let x_2344 : vec4<f32> = u_xlat10;
        let x_2346 : vec2<f32> = (vec2<f32>(x_2344.x, x_2344.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2347 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2346.x, x_2346.y, x_2347.z, x_2347.w);
        let x_2349 : vec2<f32> = u_xlat64;
        let x_2350 : vec2<f32> = (x_2349 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2351 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2350.x, x_2350.y, x_2351.z, x_2351.w);
        let x_2353 : vec4<f32> = u_xlat8;
        let x_2355 : vec2<f32> = (vec2<f32>(x_2353.x, x_2353.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2356 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_2355.x, x_2355.y, x_2356.z, x_2356.w);
        let x_2358 : vec4<f32> = u_xlat9;
        let x_2360 : vec2<f32> = (vec2<f32>(x_2358.y, x_2358.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2361 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2360.x, x_2360.y, x_2361.z, x_2361.w);
        let x_2364 : f32 = u_xlat10.x;
        u_xlat11.z = x_2364;
        let x_2367 : f32 = u_xlat8.x;
        u_xlat11.w = x_2367;
        let x_2370 : f32 = u_xlat13.x;
        u_xlat12.z = x_2370;
        let x_2373 : f32 = u_xlat62.x;
        u_xlat12.w = x_2373;
        let x_2375 : vec4<f32> = u_xlat11;
        let x_2377 : vec4<f32> = u_xlat12;
        u_xlat9 = (vec4<f32>(x_2375.z, x_2375.w, x_2375.x, x_2375.z) + vec4<f32>(x_2377.z, x_2377.w, x_2377.x, x_2377.z));
        let x_2381 : f32 = u_xlat11.y;
        u_xlat10.z = x_2381;
        let x_2384 : f32 = u_xlat8.y;
        u_xlat10.w = x_2384;
        let x_2387 : f32 = u_xlat12.y;
        u_xlat13.z = x_2387;
        let x_2390 : f32 = u_xlat62.y;
        u_xlat13.w = x_2390;
        let x_2392 : vec4<f32> = u_xlat10;
        let x_2394 : vec4<f32> = u_xlat13;
        let x_2396 : vec3<f32> = (vec3<f32>(x_2392.z, x_2392.y, x_2392.w) + vec3<f32>(x_2394.z, x_2394.y, x_2394.w));
        let x_2397 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2396.x, x_2396.y, x_2396.z, x_2397.w);
        let x_2399 : vec4<f32> = u_xlat12;
        let x_2401 : vec4<f32> = u_xlat9;
        let x_2403 : vec3<f32> = (vec3<f32>(x_2399.x, x_2399.z, x_2399.w) / vec3<f32>(x_2401.z, x_2401.w, x_2401.y));
        let x_2404 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2403.x, x_2403.y, x_2403.z, x_2404.w);
        let x_2406 : vec4<f32> = u_xlat10;
        let x_2408 : vec3<f32> = (vec3<f32>(x_2406.x, x_2406.y, x_2406.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2409 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2408.x, x_2408.y, x_2408.z, x_2409.w);
        let x_2411 : vec4<f32> = u_xlat13;
        let x_2413 : vec4<f32> = u_xlat8;
        let x_2415 : vec3<f32> = (vec3<f32>(x_2411.z, x_2411.y, x_2411.w) / vec3<f32>(x_2413.x, x_2413.y, x_2413.z));
        let x_2416 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2415.x, x_2415.y, x_2415.z, x_2416.w);
        let x_2418 : vec4<f32> = u_xlat11;
        let x_2420 : vec3<f32> = (vec3<f32>(x_2418.x, x_2418.y, x_2418.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2421 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2420.x, x_2420.y, x_2420.z, x_2421.w);
        let x_2423 : vec4<f32> = u_xlat10;
        let x_2426 : vec4<f32> = x_248.x_MainLightShadowmapSize;
        let x_2428 : vec3<f32> = (vec3<f32>(x_2423.y, x_2423.x, x_2423.z) * vec3<f32>(x_2426.x, x_2426.x, x_2426.x));
        let x_2429 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2428.x, x_2428.y, x_2428.z, x_2429.w);
        let x_2431 : vec4<f32> = u_xlat11;
        let x_2434 : vec4<f32> = x_248.x_MainLightShadowmapSize;
        let x_2436 : vec3<f32> = (vec3<f32>(x_2431.x, x_2431.y, x_2431.z) * vec3<f32>(x_2434.y, x_2434.y, x_2434.y));
        let x_2437 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2436.x, x_2436.y, x_2436.z, x_2437.w);
        let x_2440 : f32 = u_xlat11.x;
        u_xlat10.w = x_2440;
        let x_2442 : vec2<f32> = u_xlat61;
        let x_2445 : vec4<f32> = x_248.x_MainLightShadowmapSize;
        let x_2448 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_2442.x, x_2442.y, x_2442.x, x_2442.y) * vec4<f32>(x_2445.x, x_2445.y, x_2445.x, x_2445.y)) + vec4<f32>(x_2448.y, x_2448.w, x_2448.x, x_2448.w));
        let x_2451 : vec2<f32> = u_xlat61;
        let x_2453 : vec4<f32> = x_248.x_MainLightShadowmapSize;
        let x_2456 : vec4<f32> = u_xlat10;
        let x_2458 : vec2<f32> = ((x_2451 * vec2<f32>(x_2453.x, x_2453.y)) + vec2<f32>(x_2456.z, x_2456.w));
        let x_2459 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_2458.x, x_2458.y, x_2459.z, x_2459.w);
        let x_2462 : f32 = u_xlat10.y;
        u_xlat11.w = x_2462;
        let x_2464 : vec4<f32> = u_xlat11;
        let x_2465 : vec2<f32> = vec2<f32>(x_2464.y, x_2464.z);
        let x_2466 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2466.x, x_2465.x, x_2466.z, x_2465.y);
        let x_2468 : vec2<f32> = u_xlat61;
        let x_2471 : vec4<f32> = x_248.x_MainLightShadowmapSize;
        let x_2474 : vec4<f32> = u_xlat10;
        u_xlat14 = ((vec4<f32>(x_2468.x, x_2468.y, x_2468.x, x_2468.y) * vec4<f32>(x_2471.x, x_2471.y, x_2471.x, x_2471.y)) + vec4<f32>(x_2474.x, x_2474.y, x_2474.z, x_2474.y));
        let x_2477 : vec2<f32> = u_xlat61;
        let x_2480 : vec4<f32> = x_248.x_MainLightShadowmapSize;
        let x_2483 : vec4<f32> = u_xlat11;
        u_xlat11 = ((vec4<f32>(x_2477.x, x_2477.y, x_2477.x, x_2477.y) * vec4<f32>(x_2480.x, x_2480.y, x_2480.x, x_2480.y)) + vec4<f32>(x_2483.w, x_2483.y, x_2483.w, x_2483.z));
        let x_2486 : vec2<f32> = u_xlat61;
        let x_2489 : vec4<f32> = x_248.x_MainLightShadowmapSize;
        let x_2492 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_2486.x, x_2486.y, x_2486.x, x_2486.y) * vec4<f32>(x_2489.x, x_2489.y, x_2489.x, x_2489.y)) + vec4<f32>(x_2492.x, x_2492.w, x_2492.z, x_2492.w));
        let x_2495 : vec4<f32> = u_xlat8;
        let x_2497 : vec4<f32> = u_xlat9;
        u_xlat15 = (vec4<f32>(x_2495.x, x_2495.x, x_2495.x, x_2495.y) * vec4<f32>(x_2497.z, x_2497.w, x_2497.y, x_2497.z));
        let x_2500 : vec4<f32> = u_xlat8;
        let x_2502 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_2500.y, x_2500.y, x_2500.z, x_2500.z) * x_2502);
        let x_2505 : f32 = u_xlat8.z;
        let x_2507 : f32 = u_xlat9.y;
        u_xlat61.x = (x_2505 * x_2507);
        let x_2511 : vec4<f32> = u_xlat12;
        let x_2512 : vec2<f32> = vec2<f32>(x_2511.x, x_2511.y);
        let x_2514 : f32 = u_xlat6.z;
        txVec34 = vec3<f32>(x_2512.x, x_2512.y, x_2514);
        let x_2522 : vec3<f32> = txVec34;
        let x_2524 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2522.xy, x_2522.z);
        u_xlat88 = x_2524;
        let x_2526 : vec4<f32> = u_xlat12;
        let x_2527 : vec2<f32> = vec2<f32>(x_2526.z, x_2526.w);
        let x_2529 : f32 = u_xlat6.z;
        txVec35 = vec3<f32>(x_2527.x, x_2527.y, x_2529);
        let x_2536 : vec3<f32> = txVec35;
        let x_2538 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2536.xy, x_2536.z);
        u_xlat8.x = x_2538;
        let x_2541 : f32 = u_xlat8.x;
        let x_2543 : f32 = u_xlat15.y;
        u_xlat8.x = (x_2541 * x_2543);
        let x_2547 : f32 = u_xlat15.x;
        let x_2548 : f32 = u_xlat88;
        let x_2551 : f32 = u_xlat8.x;
        u_xlat88 = ((x_2547 * x_2548) + x_2551);
        let x_2554 : vec4<f32> = u_xlat13;
        let x_2555 : vec2<f32> = vec2<f32>(x_2554.x, x_2554.y);
        let x_2557 : f32 = u_xlat6.z;
        txVec36 = vec3<f32>(x_2555.x, x_2555.y, x_2557);
        let x_2564 : vec3<f32> = txVec36;
        let x_2566 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2564.xy, x_2564.z);
        u_xlat8.x = x_2566;
        let x_2569 : f32 = u_xlat15.z;
        let x_2571 : f32 = u_xlat8.x;
        let x_2573 : f32 = u_xlat88;
        u_xlat88 = ((x_2569 * x_2571) + x_2573);
        let x_2576 : vec4<f32> = u_xlat11;
        let x_2577 : vec2<f32> = vec2<f32>(x_2576.x, x_2576.y);
        let x_2579 : f32 = u_xlat6.z;
        txVec37 = vec3<f32>(x_2577.x, x_2577.y, x_2579);
        let x_2586 : vec3<f32> = txVec37;
        let x_2588 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2586.xy, x_2586.z);
        u_xlat8.x = x_2588;
        let x_2591 : f32 = u_xlat15.w;
        let x_2593 : f32 = u_xlat8.x;
        let x_2595 : f32 = u_xlat88;
        u_xlat88 = ((x_2591 * x_2593) + x_2595);
        let x_2598 : vec4<f32> = u_xlat14;
        let x_2599 : vec2<f32> = vec2<f32>(x_2598.x, x_2598.y);
        let x_2601 : f32 = u_xlat6.z;
        txVec38 = vec3<f32>(x_2599.x, x_2599.y, x_2601);
        let x_2608 : vec3<f32> = txVec38;
        let x_2610 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2608.xy, x_2608.z);
        u_xlat8.x = x_2610;
        let x_2613 : f32 = u_xlat16.x;
        let x_2615 : f32 = u_xlat8.x;
        let x_2617 : f32 = u_xlat88;
        u_xlat88 = ((x_2613 * x_2615) + x_2617);
        let x_2620 : vec4<f32> = u_xlat14;
        let x_2621 : vec2<f32> = vec2<f32>(x_2620.z, x_2620.w);
        let x_2623 : f32 = u_xlat6.z;
        txVec39 = vec3<f32>(x_2621.x, x_2621.y, x_2623);
        let x_2630 : vec3<f32> = txVec39;
        let x_2632 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2630.xy, x_2630.z);
        u_xlat8.x = x_2632;
        let x_2635 : f32 = u_xlat16.y;
        let x_2637 : f32 = u_xlat8.x;
        let x_2639 : f32 = u_xlat88;
        u_xlat88 = ((x_2635 * x_2637) + x_2639);
        let x_2642 : vec4<f32> = u_xlat11;
        let x_2643 : vec2<f32> = vec2<f32>(x_2642.z, x_2642.w);
        let x_2645 : f32 = u_xlat6.z;
        txVec40 = vec3<f32>(x_2643.x, x_2643.y, x_2645);
        let x_2652 : vec3<f32> = txVec40;
        let x_2654 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2652.xy, x_2652.z);
        u_xlat8.x = x_2654;
        let x_2657 : f32 = u_xlat16.z;
        let x_2659 : f32 = u_xlat8.x;
        let x_2661 : f32 = u_xlat88;
        u_xlat88 = ((x_2657 * x_2659) + x_2661);
        let x_2664 : vec4<f32> = u_xlat10;
        let x_2665 : vec2<f32> = vec2<f32>(x_2664.x, x_2664.y);
        let x_2667 : f32 = u_xlat6.z;
        txVec41 = vec3<f32>(x_2665.x, x_2665.y, x_2667);
        let x_2674 : vec3<f32> = txVec41;
        let x_2676 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2674.xy, x_2674.z);
        u_xlat8.x = x_2676;
        let x_2679 : f32 = u_xlat16.w;
        let x_2681 : f32 = u_xlat8.x;
        let x_2683 : f32 = u_xlat88;
        u_xlat88 = ((x_2679 * x_2681) + x_2683);
        let x_2686 : vec4<f32> = u_xlat10;
        let x_2687 : vec2<f32> = vec2<f32>(x_2686.z, x_2686.w);
        let x_2689 : f32 = u_xlat6.z;
        txVec42 = vec3<f32>(x_2687.x, x_2687.y, x_2689);
        let x_2696 : vec3<f32> = txVec42;
        let x_2698 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2696.xy, x_2696.z);
        u_xlat8.x = x_2698;
        let x_2701 : f32 = u_xlat61.x;
        let x_2703 : f32 = u_xlat8.x;
        let x_2705 : f32 = u_xlat88;
        u_xlat81 = ((x_2701 * x_2703) + x_2705);
      } else {
        let x_2708 : vec4<f32> = u_xlat6;
        let x_2711 : vec4<f32> = x_248.x_MainLightShadowmapSize;
        u_xlat61 = ((vec2<f32>(x_2708.x, x_2708.y) * vec2<f32>(x_2711.z, x_2711.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2715 : vec2<f32> = u_xlat61;
        u_xlat61 = floor(x_2715);
        let x_2717 : vec4<f32> = u_xlat6;
        let x_2720 : vec4<f32> = x_248.x_MainLightShadowmapSize;
        let x_2723 : vec2<f32> = u_xlat61;
        let x_2725 : vec2<f32> = ((vec2<f32>(x_2717.x, x_2717.y) * vec2<f32>(x_2720.z, x_2720.w)) + -(x_2723));
        let x_2726 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2725.x, x_2725.y, x_2726.z, x_2726.w);
        let x_2728 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2728.x, x_2728.x, x_2728.y, x_2728.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2731 : vec4<f32> = u_xlat9;
        let x_2733 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_2731.x, x_2731.x, x_2731.z, x_2731.z) * vec4<f32>(x_2733.x, x_2733.x, x_2733.z, x_2733.z));
        let x_2736 : vec4<f32> = u_xlat10;
        let x_2738 : vec2<f32> = (vec2<f32>(x_2736.y, x_2736.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_2739 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2739.x, x_2738.x, x_2739.z, x_2738.y);
        let x_2741 : vec4<f32> = u_xlat10;
        let x_2744 : vec4<f32> = u_xlat8;
        u_xlat62 = ((vec2<f32>(x_2741.x, x_2741.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2744.x, x_2744.y)));
        let x_2748 : vec4<f32> = u_xlat8;
        let x_2751 : vec2<f32> = (-(vec2<f32>(x_2748.x, x_2748.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2752 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2751.x, x_2752.y, x_2751.y, x_2752.w);
        let x_2754 : vec4<f32> = u_xlat8;
        let x_2756 : vec2<f32> = min(vec2<f32>(x_2754.x, x_2754.y), vec2<f32>(0.0f, 0.0f));
        let x_2757 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2756.x, x_2756.y, x_2757.z, x_2757.w);
        let x_2759 : vec4<f32> = u_xlat10;
        let x_2762 : vec4<f32> = u_xlat10;
        let x_2765 : vec4<f32> = u_xlat9;
        let x_2767 : vec2<f32> = ((-(vec2<f32>(x_2759.x, x_2759.y)) * vec2<f32>(x_2762.x, x_2762.y)) + vec2<f32>(x_2765.x, x_2765.z));
        let x_2768 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2767.x, x_2768.y, x_2767.y, x_2768.w);
        let x_2770 : vec4<f32> = u_xlat8;
        let x_2772 : vec2<f32> = max(vec2<f32>(x_2770.x, x_2770.y), vec2<f32>(0.0f, 0.0f));
        let x_2773 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2772.x, x_2772.y, x_2773.z, x_2773.w);
        let x_2775 : vec4<f32> = u_xlat10;
        let x_2778 : vec4<f32> = u_xlat10;
        let x_2781 : vec4<f32> = u_xlat9;
        let x_2783 : vec2<f32> = ((-(vec2<f32>(x_2775.x, x_2775.y)) * vec2<f32>(x_2778.x, x_2778.y)) + vec2<f32>(x_2781.y, x_2781.w));
        let x_2784 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2784.x, x_2783.x, x_2784.z, x_2783.y);
        let x_2786 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_2786 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_2789 : f32 = u_xlat9.y;
        u_xlat10.z = (x_2789 * 0.08163200318813323975f);
        let x_2792 : vec2<f32> = u_xlat62;
        let x_2794 : vec2<f32> = (vec2<f32>(x_2792.y, x_2792.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2795 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2794.x, x_2794.y, x_2795.z, x_2795.w);
        let x_2797 : vec4<f32> = u_xlat9;
        u_xlat62 = (vec2<f32>(x_2797.x, x_2797.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2801 : f32 = u_xlat9.w;
        u_xlat12.z = (x_2801 * 0.08163200318813323975f);
        let x_2805 : f32 = u_xlat12.y;
        u_xlat10.x = x_2805;
        let x_2807 : vec4<f32> = u_xlat8;
        let x_2810 : vec2<f32> = ((vec2<f32>(x_2807.x, x_2807.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2811 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2811.x, x_2810.x, x_2811.z, x_2810.y);
        let x_2813 : vec4<f32> = u_xlat8;
        let x_2816 : vec2<f32> = ((vec2<f32>(x_2813.x, x_2813.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2817 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2816.x, x_2817.y, x_2816.y, x_2817.w);
        let x_2820 : f32 = u_xlat62.x;
        u_xlat9.y = x_2820;
        let x_2823 : f32 = u_xlat11.y;
        u_xlat9.w = x_2823;
        let x_2825 : vec4<f32> = u_xlat9;
        let x_2826 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_2825 + x_2826);
        let x_2828 : vec4<f32> = u_xlat8;
        let x_2831 : vec2<f32> = ((vec2<f32>(x_2828.y, x_2828.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2832 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2832.x, x_2831.x, x_2832.z, x_2831.y);
        let x_2834 : vec4<f32> = u_xlat8;
        let x_2837 : vec2<f32> = ((vec2<f32>(x_2834.y, x_2834.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2838 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2837.x, x_2838.y, x_2837.y, x_2838.w);
        let x_2841 : f32 = u_xlat62.y;
        u_xlat11.y = x_2841;
        let x_2843 : vec4<f32> = u_xlat11;
        let x_2844 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_2843 + x_2844);
        let x_2846 : vec4<f32> = u_xlat9;
        let x_2847 : vec4<f32> = u_xlat10;
        u_xlat9 = (x_2846 / x_2847);
        let x_2849 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_2849 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2851 : vec4<f32> = u_xlat11;
        let x_2852 : vec4<f32> = u_xlat8;
        u_xlat11 = (x_2851 / x_2852);
        let x_2854 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_2854 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2856 : vec4<f32> = u_xlat9;
        let x_2859 : vec4<f32> = x_248.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_2856.w, x_2856.x, x_2856.y, x_2856.z) * vec4<f32>(x_2859.x, x_2859.x, x_2859.x, x_2859.x));
        let x_2862 : vec4<f32> = u_xlat11;
        let x_2865 : vec4<f32> = x_248.x_MainLightShadowmapSize;
        u_xlat11 = (vec4<f32>(x_2862.x, x_2862.w, x_2862.y, x_2862.z) * vec4<f32>(x_2865.y, x_2865.y, x_2865.y, x_2865.y));
        let x_2868 : vec4<f32> = u_xlat9;
        let x_2869 : vec3<f32> = vec3<f32>(x_2868.y, x_2868.z, x_2868.w);
        let x_2870 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2869.x, x_2870.y, x_2869.y, x_2869.z);
        let x_2873 : f32 = u_xlat11.x;
        u_xlat12.y = x_2873;
        let x_2875 : vec2<f32> = u_xlat61;
        let x_2878 : vec4<f32> = x_248.x_MainLightShadowmapSize;
        let x_2881 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_2875.x, x_2875.y, x_2875.x, x_2875.y) * vec4<f32>(x_2878.x, x_2878.y, x_2878.x, x_2878.y)) + vec4<f32>(x_2881.x, x_2881.y, x_2881.z, x_2881.y));
        let x_2884 : vec2<f32> = u_xlat61;
        let x_2886 : vec4<f32> = x_248.x_MainLightShadowmapSize;
        let x_2889 : vec4<f32> = u_xlat12;
        let x_2891 : vec2<f32> = ((x_2884 * vec2<f32>(x_2886.x, x_2886.y)) + vec2<f32>(x_2889.w, x_2889.y));
        let x_2892 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_2891.x, x_2891.y, x_2892.z, x_2892.w);
        let x_2895 : f32 = u_xlat12.y;
        u_xlat9.y = x_2895;
        let x_2898 : f32 = u_xlat11.z;
        u_xlat12.y = x_2898;
        let x_2900 : vec2<f32> = u_xlat61;
        let x_2903 : vec4<f32> = x_248.x_MainLightShadowmapSize;
        let x_2906 : vec4<f32> = u_xlat12;
        u_xlat15 = ((vec4<f32>(x_2900.x, x_2900.y, x_2900.x, x_2900.y) * vec4<f32>(x_2903.x, x_2903.y, x_2903.x, x_2903.y)) + vec4<f32>(x_2906.x, x_2906.y, x_2906.z, x_2906.y));
        let x_2910 : vec2<f32> = u_xlat61;
        let x_2912 : vec4<f32> = x_248.x_MainLightShadowmapSize;
        let x_2915 : vec4<f32> = u_xlat12;
        u_xlat68 = ((x_2910 * vec2<f32>(x_2912.x, x_2912.y)) + vec2<f32>(x_2915.w, x_2915.y));
        let x_2919 : f32 = u_xlat12.y;
        u_xlat9.z = x_2919;
        let x_2921 : vec2<f32> = u_xlat61;
        let x_2924 : vec4<f32> = x_248.x_MainLightShadowmapSize;
        let x_2927 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_2921.x, x_2921.y, x_2921.x, x_2921.y) * vec4<f32>(x_2924.x, x_2924.y, x_2924.x, x_2924.y)) + vec4<f32>(x_2927.x, x_2927.y, x_2927.x, x_2927.z));
        let x_2931 : f32 = u_xlat11.w;
        u_xlat12.y = x_2931;
        let x_2933 : vec2<f32> = u_xlat61;
        let x_2936 : vec4<f32> = x_248.x_MainLightShadowmapSize;
        let x_2939 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_2933.x, x_2933.y, x_2933.x, x_2933.y) * vec4<f32>(x_2936.x, x_2936.y, x_2936.x, x_2936.y)) + vec4<f32>(x_2939.x, x_2939.y, x_2939.z, x_2939.y));
        let x_2942 : vec2<f32> = u_xlat61;
        let x_2944 : vec4<f32> = x_248.x_MainLightShadowmapSize;
        let x_2947 : vec4<f32> = u_xlat12;
        u_xlat36 = ((x_2942 * vec2<f32>(x_2944.x, x_2944.y)) + vec2<f32>(x_2947.w, x_2947.y));
        let x_2951 : f32 = u_xlat12.y;
        u_xlat9.w = x_2951;
        let x_2953 : vec2<f32> = u_xlat61;
        let x_2955 : vec4<f32> = x_248.x_MainLightShadowmapSize;
        let x_2958 : vec4<f32> = u_xlat9;
        let x_2960 : vec2<f32> = ((x_2953 * vec2<f32>(x_2955.x, x_2955.y)) + vec2<f32>(x_2958.x, x_2958.w));
        let x_2961 : vec4<f32> = u_xlat18;
        u_xlat18 = vec4<f32>(x_2960.x, x_2960.y, x_2961.z, x_2961.w);
        let x_2963 : vec4<f32> = u_xlat12;
        let x_2964 : vec3<f32> = vec3<f32>(x_2963.x, x_2963.z, x_2963.w);
        let x_2965 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2964.x, x_2965.y, x_2964.y, x_2964.z);
        let x_2967 : vec2<f32> = u_xlat61;
        let x_2970 : vec4<f32> = x_248.x_MainLightShadowmapSize;
        let x_2973 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_2967.x, x_2967.y, x_2967.x, x_2967.y) * vec4<f32>(x_2970.x, x_2970.y, x_2970.x, x_2970.y)) + vec4<f32>(x_2973.x, x_2973.y, x_2973.z, x_2973.y));
        let x_2977 : vec2<f32> = u_xlat61;
        let x_2979 : vec4<f32> = x_248.x_MainLightShadowmapSize;
        let x_2982 : vec4<f32> = u_xlat11;
        u_xlat65 = ((x_2977 * vec2<f32>(x_2979.x, x_2979.y)) + vec2<f32>(x_2982.w, x_2982.y));
        let x_2986 : f32 = u_xlat9.x;
        u_xlat11.x = x_2986;
        let x_2988 : vec2<f32> = u_xlat61;
        let x_2990 : vec4<f32> = x_248.x_MainLightShadowmapSize;
        let x_2993 : vec4<f32> = u_xlat11;
        u_xlat61 = ((x_2988 * vec2<f32>(x_2990.x, x_2990.y)) + vec2<f32>(x_2993.x, x_2993.y));
        let x_2996 : vec4<f32> = u_xlat8;
        let x_2998 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_2996.x, x_2996.x, x_2996.x, x_2996.x) * x_2998);
        let x_3000 : vec4<f32> = u_xlat8;
        let x_3002 : vec4<f32> = u_xlat10;
        u_xlat20 = (vec4<f32>(x_3000.y, x_3000.y, x_3000.y, x_3000.y) * x_3002);
        let x_3005 : vec4<f32> = u_xlat8;
        let x_3007 : vec4<f32> = u_xlat10;
        u_xlat21 = (vec4<f32>(x_3005.z, x_3005.z, x_3005.z, x_3005.z) * x_3007);
        let x_3009 : vec4<f32> = u_xlat8;
        let x_3011 : vec4<f32> = u_xlat10;
        u_xlat8 = (vec4<f32>(x_3009.w, x_3009.w, x_3009.w, x_3009.w) * x_3011);
        let x_3014 : vec4<f32> = u_xlat13;
        let x_3015 : vec2<f32> = vec2<f32>(x_3014.x, x_3014.y);
        let x_3017 : f32 = u_xlat6.z;
        txVec43 = vec3<f32>(x_3015.x, x_3015.y, x_3017);
        let x_3024 : vec3<f32> = txVec43;
        let x_3026 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3024.xy, x_3024.z);
        u_xlat9.x = x_3026;
        let x_3029 : vec4<f32> = u_xlat13;
        let x_3030 : vec2<f32> = vec2<f32>(x_3029.z, x_3029.w);
        let x_3032 : f32 = u_xlat6.z;
        txVec44 = vec3<f32>(x_3030.x, x_3030.y, x_3032);
        let x_3040 : vec3<f32> = txVec44;
        let x_3042 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3040.xy, x_3040.z);
        u_xlat90 = x_3042;
        let x_3043 : f32 = u_xlat90;
        let x_3045 : f32 = u_xlat19.y;
        u_xlat90 = (x_3043 * x_3045);
        let x_3048 : f32 = u_xlat19.x;
        let x_3050 : f32 = u_xlat9.x;
        let x_3052 : f32 = u_xlat90;
        u_xlat9.x = ((x_3048 * x_3050) + x_3052);
        let x_3056 : vec4<f32> = u_xlat14;
        let x_3057 : vec2<f32> = vec2<f32>(x_3056.x, x_3056.y);
        let x_3059 : f32 = u_xlat6.z;
        txVec45 = vec3<f32>(x_3057.x, x_3057.y, x_3059);
        let x_3066 : vec3<f32> = txVec45;
        let x_3068 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3066.xy, x_3066.z);
        u_xlat90 = x_3068;
        let x_3070 : f32 = u_xlat19.z;
        let x_3071 : f32 = u_xlat90;
        let x_3074 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_3070 * x_3071) + x_3074);
        let x_3078 : vec4<f32> = u_xlat16;
        let x_3079 : vec2<f32> = vec2<f32>(x_3078.x, x_3078.y);
        let x_3081 : f32 = u_xlat6.z;
        txVec46 = vec3<f32>(x_3079.x, x_3079.y, x_3081);
        let x_3088 : vec3<f32> = txVec46;
        let x_3090 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3088.xy, x_3088.z);
        u_xlat90 = x_3090;
        let x_3092 : f32 = u_xlat19.w;
        let x_3093 : f32 = u_xlat90;
        let x_3096 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_3092 * x_3093) + x_3096);
        let x_3100 : vec4<f32> = u_xlat15;
        let x_3101 : vec2<f32> = vec2<f32>(x_3100.x, x_3100.y);
        let x_3103 : f32 = u_xlat6.z;
        txVec47 = vec3<f32>(x_3101.x, x_3101.y, x_3103);
        let x_3110 : vec3<f32> = txVec47;
        let x_3112 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3110.xy, x_3110.z);
        u_xlat90 = x_3112;
        let x_3114 : f32 = u_xlat20.x;
        let x_3115 : f32 = u_xlat90;
        let x_3118 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_3114 * x_3115) + x_3118);
        let x_3122 : vec4<f32> = u_xlat15;
        let x_3123 : vec2<f32> = vec2<f32>(x_3122.z, x_3122.w);
        let x_3125 : f32 = u_xlat6.z;
        txVec48 = vec3<f32>(x_3123.x, x_3123.y, x_3125);
        let x_3132 : vec3<f32> = txVec48;
        let x_3134 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3132.xy, x_3132.z);
        u_xlat90 = x_3134;
        let x_3136 : f32 = u_xlat20.y;
        let x_3137 : f32 = u_xlat90;
        let x_3140 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_3136 * x_3137) + x_3140);
        let x_3144 : vec2<f32> = u_xlat68;
        let x_3146 : f32 = u_xlat6.z;
        txVec49 = vec3<f32>(x_3144.x, x_3144.y, x_3146);
        let x_3153 : vec3<f32> = txVec49;
        let x_3155 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3153.xy, x_3153.z);
        u_xlat90 = x_3155;
        let x_3157 : f32 = u_xlat20.z;
        let x_3158 : f32 = u_xlat90;
        let x_3161 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_3157 * x_3158) + x_3161);
        let x_3165 : vec4<f32> = u_xlat16;
        let x_3166 : vec2<f32> = vec2<f32>(x_3165.z, x_3165.w);
        let x_3168 : f32 = u_xlat6.z;
        txVec50 = vec3<f32>(x_3166.x, x_3166.y, x_3168);
        let x_3175 : vec3<f32> = txVec50;
        let x_3177 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3175.xy, x_3175.z);
        u_xlat90 = x_3177;
        let x_3179 : f32 = u_xlat20.w;
        let x_3180 : f32 = u_xlat90;
        let x_3183 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_3179 * x_3180) + x_3183);
        let x_3187 : vec4<f32> = u_xlat17;
        let x_3188 : vec2<f32> = vec2<f32>(x_3187.x, x_3187.y);
        let x_3190 : f32 = u_xlat6.z;
        txVec51 = vec3<f32>(x_3188.x, x_3188.y, x_3190);
        let x_3197 : vec3<f32> = txVec51;
        let x_3199 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3197.xy, x_3197.z);
        u_xlat90 = x_3199;
        let x_3201 : f32 = u_xlat21.x;
        let x_3202 : f32 = u_xlat90;
        let x_3205 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_3201 * x_3202) + x_3205);
        let x_3209 : vec4<f32> = u_xlat17;
        let x_3210 : vec2<f32> = vec2<f32>(x_3209.z, x_3209.w);
        let x_3212 : f32 = u_xlat6.z;
        txVec52 = vec3<f32>(x_3210.x, x_3210.y, x_3212);
        let x_3219 : vec3<f32> = txVec52;
        let x_3221 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3219.xy, x_3219.z);
        u_xlat90 = x_3221;
        let x_3223 : f32 = u_xlat21.y;
        let x_3224 : f32 = u_xlat90;
        let x_3227 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_3223 * x_3224) + x_3227);
        let x_3231 : vec2<f32> = u_xlat36;
        let x_3233 : f32 = u_xlat6.z;
        txVec53 = vec3<f32>(x_3231.x, x_3231.y, x_3233);
        let x_3240 : vec3<f32> = txVec53;
        let x_3242 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3240.xy, x_3240.z);
        u_xlat36.x = x_3242;
        let x_3245 : f32 = u_xlat21.z;
        let x_3247 : f32 = u_xlat36.x;
        let x_3250 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_3245 * x_3247) + x_3250);
        let x_3254 : vec4<f32> = u_xlat18;
        let x_3255 : vec2<f32> = vec2<f32>(x_3254.x, x_3254.y);
        let x_3257 : f32 = u_xlat6.z;
        txVec54 = vec3<f32>(x_3255.x, x_3255.y, x_3257);
        let x_3264 : vec3<f32> = txVec54;
        let x_3266 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3264.xy, x_3264.z);
        u_xlat36.x = x_3266;
        let x_3269 : f32 = u_xlat21.w;
        let x_3271 : f32 = u_xlat36.x;
        let x_3274 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_3269 * x_3271) + x_3274);
        let x_3278 : vec4<f32> = u_xlat12;
        let x_3279 : vec2<f32> = vec2<f32>(x_3278.x, x_3278.y);
        let x_3281 : f32 = u_xlat6.z;
        txVec55 = vec3<f32>(x_3279.x, x_3279.y, x_3281);
        let x_3288 : vec3<f32> = txVec55;
        let x_3290 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3288.xy, x_3288.z);
        u_xlat36.x = x_3290;
        let x_3293 : f32 = u_xlat8.x;
        let x_3295 : f32 = u_xlat36.x;
        let x_3298 : f32 = u_xlat9.x;
        u_xlat8.x = ((x_3293 * x_3295) + x_3298);
        let x_3302 : vec4<f32> = u_xlat12;
        let x_3303 : vec2<f32> = vec2<f32>(x_3302.z, x_3302.w);
        let x_3305 : f32 = u_xlat6.z;
        txVec56 = vec3<f32>(x_3303.x, x_3303.y, x_3305);
        let x_3312 : vec3<f32> = txVec56;
        let x_3314 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3312.xy, x_3312.z);
        u_xlat9.x = x_3314;
        let x_3317 : f32 = u_xlat8.y;
        let x_3319 : f32 = u_xlat9.x;
        let x_3322 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_3317 * x_3319) + x_3322);
        let x_3326 : vec2<f32> = u_xlat65;
        let x_3328 : f32 = u_xlat6.z;
        txVec57 = vec3<f32>(x_3326.x, x_3326.y, x_3328);
        let x_3335 : vec3<f32> = txVec57;
        let x_3337 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3335.xy, x_3335.z);
        u_xlat35.x = x_3337;
        let x_3340 : f32 = u_xlat8.z;
        let x_3342 : f32 = u_xlat35.x;
        let x_3345 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_3340 * x_3342) + x_3345);
        let x_3349 : vec2<f32> = u_xlat61;
        let x_3351 : f32 = u_xlat6.z;
        txVec58 = vec3<f32>(x_3349.x, x_3349.y, x_3351);
        let x_3358 : vec3<f32> = txVec58;
        let x_3360 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3358.xy, x_3358.z);
        u_xlat61.x = x_3360;
        let x_3363 : f32 = u_xlat8.w;
        let x_3365 : f32 = u_xlat61.x;
        let x_3368 : f32 = u_xlat8.x;
        u_xlat81 = ((x_3363 * x_3365) + x_3368);
      }
    }
  } else {
    let x_3372 : vec4<f32> = u_xlat6;
    let x_3373 : vec2<f32> = vec2<f32>(x_3372.x, x_3372.y);
    let x_3375 : f32 = u_xlat6.z;
    txVec59 = vec3<f32>(x_3373.x, x_3373.y, x_3375);
    let x_3382 : vec3<f32> = txVec59;
    let x_3384 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3382.xy, x_3382.z);
    u_xlat81 = x_3384;
  }
  let x_3385 : f32 = u_xlat81;
  let x_3387 : f32 = x_248.x_MainLightShadowParams.x;
  let x_3389 : f32 = u_xlat83;
  u_xlat81 = ((x_3385 * x_3387) + x_3389);
  let x_3391 : bool = u_xlatb85;
  let x_3392 : f32 = u_xlat81;
  u_xlat81 = select(x_3392, 1.0f, x_3391);
  let x_3394 : vec3<f32> = vs_INTERP8;
  let x_3396 : vec3<f32> = x_75.x_WorldSpaceCameraPos;
  let x_3398 : vec3<f32> = (x_3394 + -(x_3396));
  let x_3399 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_3398.x, x_3398.y, x_3398.z, x_3399.w);
  let x_3401 : vec4<f32> = u_xlat6;
  let x_3403 : vec4<f32> = u_xlat6;
  u_xlat83 = dot(vec3<f32>(x_3401.x, x_3401.y, x_3401.z), vec3<f32>(x_3403.x, x_3403.y, x_3403.z));
  let x_3406 : f32 = u_xlat83;
  let x_3408 : f32 = x_248.x_MainLightShadowParams.z;
  let x_3411 : f32 = x_248.x_MainLightShadowParams.w;
  u_xlat85 = ((x_3406 * x_3408) + x_3411);
  let x_3413 : f32 = u_xlat85;
  u_xlat85 = clamp(x_3413, 0.0f, 1.0f);
  let x_3415 : f32 = u_xlat81;
  u_xlat6.x = (-(x_3415) + 1.0f);
  let x_3419 : f32 = u_xlat85;
  let x_3421 : f32 = u_xlat6.x;
  let x_3423 : f32 = u_xlat81;
  u_xlat81 = ((x_3419 * x_3421) + x_3423);
  let x_3432 : f32 = x_3430.x_MainLightCookieTextureFormat;
  u_xlatb85 = !((x_3432 == -1.0f));
  let x_3434 : bool = u_xlatb85;
  if (x_3434) {
    let x_3437 : vec3<f32> = vs_INTERP8;
    let x_3440 : vec4<f32> = x_3430.x_MainLightWorldToLight[1i];
    let x_3442 : vec2<f32> = (vec2<f32>(x_3437.y, x_3437.y) * vec2<f32>(x_3440.x, x_3440.y));
    let x_3443 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3442.x, x_3442.y, x_3443.z, x_3443.w);
    let x_3446 : vec4<f32> = x_3430.x_MainLightWorldToLight[0i];
    let x_3448 : vec3<f32> = vs_INTERP8;
    let x_3451 : vec4<f32> = u_xlat6;
    let x_3453 : vec2<f32> = ((vec2<f32>(x_3446.x, x_3446.y) * vec2<f32>(x_3448.x, x_3448.x)) + vec2<f32>(x_3451.x, x_3451.y));
    let x_3454 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3453.x, x_3453.y, x_3454.z, x_3454.w);
    let x_3457 : vec4<f32> = x_3430.x_MainLightWorldToLight[2i];
    let x_3459 : vec3<f32> = vs_INTERP8;
    let x_3462 : vec4<f32> = u_xlat6;
    let x_3464 : vec2<f32> = ((vec2<f32>(x_3457.x, x_3457.y) * vec2<f32>(x_3459.z, x_3459.z)) + vec2<f32>(x_3462.x, x_3462.y));
    let x_3465 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3464.x, x_3464.y, x_3465.z, x_3465.w);
    let x_3467 : vec4<f32> = u_xlat6;
    let x_3470 : vec4<f32> = x_3430.x_MainLightWorldToLight[3i];
    let x_3472 : vec2<f32> = (vec2<f32>(x_3467.x, x_3467.y) + vec2<f32>(x_3470.x, x_3470.y));
    let x_3473 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3472.x, x_3472.y, x_3473.z, x_3473.w);
    let x_3475 : vec4<f32> = u_xlat6;
    let x_3478 : vec2<f32> = ((vec2<f32>(x_3475.x, x_3475.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_3479 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3478.x, x_3478.y, x_3479.z, x_3479.w);
    let x_3486 : vec4<f32> = u_xlat6;
    let x_3489 : f32 = x_75.x_GlobalMipBias.x;
    let x_3490 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_3486.x, x_3486.y), x_3489);
    u_xlat8 = x_3490;
    let x_3492 : f32 = x_3430.x_MainLightCookieTextureFormat;
    let x_3494 : f32 = x_3430.x_MainLightCookieTextureFormat;
    let x_3496 : f32 = x_3430.x_MainLightCookieTextureFormat;
    let x_3498 : f32 = x_3430.x_MainLightCookieTextureFormat;
    let x_3499 : vec4<f32> = vec4<f32>(x_3492, x_3494, x_3496, x_3498);
    let x_3506 : vec4<bool> = (vec4<f32>(x_3499.x, x_3499.y, x_3499.z, x_3499.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    let x_3507 : vec2<bool> = vec2<bool>(x_3506.x, x_3506.y);
    let x_3508 : vec4<bool> = u_xlatb6;
    u_xlatb6 = vec4<bool>(x_3507.x, x_3507.y, x_3508.z, x_3508.w);
    let x_3511 : bool = u_xlatb6.y;
    if (x_3511) {
      let x_3516 : f32 = u_xlat8.w;
      x_3512 = x_3516;
    } else {
      let x_3519 : f32 = u_xlat8.x;
      x_3512 = x_3519;
    }
    let x_3520 : f32 = x_3512;
    u_xlat85 = x_3520;
    let x_3522 : bool = u_xlatb6.x;
    if (x_3522) {
      let x_3526 : vec4<f32> = u_xlat8;
      x_3523 = vec3<f32>(x_3526.x, x_3526.y, x_3526.z);
    } else {
      let x_3529 : f32 = u_xlat85;
      x_3523 = vec3<f32>(x_3529, x_3529, x_3529);
    }
    let x_3531 : vec3<f32> = x_3523;
    let x_3532 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3531.x, x_3531.y, x_3531.z, x_3532.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_3538 : vec4<f32> = u_xlat6;
  let x_3541 : vec4<f32> = x_75.x_MainLightColor;
  let x_3543 : vec3<f32> = (vec3<f32>(x_3538.x, x_3538.y, x_3538.z) * vec3<f32>(x_3541.x, x_3541.y, x_3541.z));
  let x_3544 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_3543.x, x_3543.y, x_3543.z, x_3544.w);
  let x_3546 : vec3<f32> = u_xlat1;
  let x_3548 : vec4<f32> = u_xlat3;
  u_xlat85 = dot(-(x_3546), vec3<f32>(x_3548.x, x_3548.y, x_3548.z));
  let x_3551 : f32 = u_xlat85;
  let x_3552 : f32 = u_xlat85;
  u_xlat85 = (x_3551 + x_3552);
  let x_3554 : vec4<f32> = u_xlat3;
  let x_3556 : f32 = u_xlat85;
  let x_3560 : vec3<f32> = u_xlat1;
  let x_3562 : vec3<f32> = ((vec3<f32>(x_3554.x, x_3554.y, x_3554.z) * -(vec3<f32>(x_3556, x_3556, x_3556))) + -(x_3560));
  let x_3563 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3562.x, x_3562.y, x_3562.z, x_3563.w);
  let x_3565 : vec4<f32> = u_xlat3;
  let x_3567 : vec3<f32> = u_xlat1;
  u_xlat85 = dot(vec3<f32>(x_3565.x, x_3565.y, x_3565.z), x_3567);
  let x_3569 : f32 = u_xlat85;
  u_xlat85 = clamp(x_3569, 0.0f, 1.0f);
  let x_3571 : f32 = u_xlat85;
  u_xlat85 = (-(x_3571) + 1.0f);
  let x_3574 : f32 = u_xlat85;
  let x_3575 : f32 = u_xlat85;
  u_xlat85 = (x_3574 * x_3575);
  let x_3577 : f32 = u_xlat85;
  let x_3578 : f32 = u_xlat85;
  u_xlat85 = (x_3577 * x_3578);
  let x_3580 : f32 = u_xlat56;
  u_xlat61.x = ((-(x_3580) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_3587 : f32 = u_xlat56;
  let x_3589 : f32 = u_xlat61.x;
  u_xlat56 = (x_3587 * x_3589);
  let x_3591 : f32 = u_xlat56;
  u_xlat56 = (x_3591 * 6.0f);
  let x_3602 : vec4<f32> = u_xlat8;
  let x_3604 : f32 = u_xlat56;
  let x_3605 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_3602.x, x_3602.y, x_3602.z), x_3604);
  u_xlat8 = x_3605;
  let x_3607 : f32 = u_xlat8.w;
  u_xlat56 = (x_3607 + -1.0f);
  let x_3610 : f32 = x_132.unity_SpecCube0_HDR.w;
  let x_3611 : f32 = u_xlat56;
  u_xlat56 = ((x_3610 * x_3611) + 1.0f);
  let x_3614 : f32 = u_xlat56;
  u_xlat56 = max(x_3614, 0.0f);
  let x_3616 : f32 = u_xlat56;
  u_xlat56 = log2(x_3616);
  let x_3618 : f32 = u_xlat56;
  let x_3620 : f32 = x_132.unity_SpecCube0_HDR.y;
  u_xlat56 = (x_3618 * x_3620);
  let x_3622 : f32 = u_xlat56;
  u_xlat56 = exp2(x_3622);
  let x_3624 : f32 = u_xlat56;
  let x_3626 : f32 = x_132.unity_SpecCube0_HDR.x;
  u_xlat56 = (x_3624 * x_3626);
  let x_3628 : vec4<f32> = u_xlat8;
  let x_3630 : f32 = u_xlat56;
  let x_3632 : vec3<f32> = (vec3<f32>(x_3628.x, x_3628.y, x_3628.z) * vec3<f32>(x_3630, x_3630, x_3630));
  let x_3633 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3632.x, x_3632.y, x_3632.z, x_3633.w);
  let x_3635 : f32 = u_xlat84;
  let x_3637 : f32 = u_xlat84;
  u_xlat61 = ((vec2<f32>(x_3635, x_3635) * vec2<f32>(x_3637, x_3637)) + vec2<f32>(-1.0f, 1.0f));
  let x_3643 : f32 = u_xlat61.y;
  u_xlat56 = (1.0f / x_3643);
  let x_3646 : f32 = u_xlat5.x;
  u_xlat84 = (x_3646 + -0.03999999910593032837f);
  let x_3649 : f32 = u_xlat85;
  let x_3650 : f32 = u_xlat84;
  u_xlat84 = ((x_3649 * x_3650) + 0.03999999910593032837f);
  let x_3654 : f32 = u_xlat56;
  let x_3655 : f32 = u_xlat84;
  u_xlat56 = (x_3654 * x_3655);
  let x_3657 : f32 = u_xlat56;
  let x_3659 : vec4<f32> = u_xlat8;
  let x_3661 : vec3<f32> = (vec3<f32>(x_3657, x_3657, x_3657) * vec3<f32>(x_3659.x, x_3659.y, x_3659.z));
  let x_3662 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3661.x, x_3661.y, x_3661.z, x_3662.w);
  let x_3664 : vec3<f32> = u_xlat32;
  let x_3665 : vec3<f32> = u_xlat4;
  let x_3667 : vec4<f32> = u_xlat8;
  let x_3669 : vec3<f32> = ((x_3664 * x_3665) + vec3<f32>(x_3667.x, x_3667.y, x_3667.z));
  let x_3670 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_3669.x, x_3669.y, x_3669.z, x_3670.w);
  let x_3672 : f32 = u_xlat81;
  let x_3674 : f32 = x_132.unity_LightData.z;
  u_xlat81 = (x_3672 * x_3674);
  let x_3676 : vec4<f32> = u_xlat3;
  let x_3679 : vec4<f32> = x_75.x_MainLightPosition;
  u_xlat56 = dot(vec3<f32>(x_3676.x, x_3676.y, x_3676.z), vec3<f32>(x_3679.x, x_3679.y, x_3679.z));
  let x_3682 : f32 = u_xlat56;
  u_xlat56 = clamp(x_3682, 0.0f, 1.0f);
  let x_3684 : f32 = u_xlat81;
  let x_3685 : f32 = u_xlat56;
  u_xlat81 = (x_3684 * x_3685);
  let x_3687 : f32 = u_xlat81;
  let x_3689 : vec4<f32> = u_xlat6;
  let x_3691 : vec3<f32> = (vec3<f32>(x_3687, x_3687, x_3687) * vec3<f32>(x_3689.x, x_3689.y, x_3689.z));
  let x_3692 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_3691.x, x_3691.y, x_3691.z, x_3692.w);
  let x_3694 : vec3<f32> = u_xlat1;
  let x_3696 : vec4<f32> = x_75.x_MainLightPosition;
  let x_3698 : vec3<f32> = (x_3694 + vec3<f32>(x_3696.x, x_3696.y, x_3696.z));
  let x_3699 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3698.x, x_3698.y, x_3698.z, x_3699.w);
  let x_3701 : vec4<f32> = u_xlat8;
  let x_3703 : vec4<f32> = u_xlat8;
  u_xlat81 = dot(vec3<f32>(x_3701.x, x_3701.y, x_3701.z), vec3<f32>(x_3703.x, x_3703.y, x_3703.z));
  let x_3706 : f32 = u_xlat81;
  u_xlat81 = max(x_3706, 1.17549435e-38f);
  let x_3709 : f32 = u_xlat81;
  u_xlat81 = inverseSqrt(x_3709);
  let x_3711 : f32 = u_xlat81;
  let x_3713 : vec4<f32> = u_xlat8;
  let x_3715 : vec3<f32> = (vec3<f32>(x_3711, x_3711, x_3711) * vec3<f32>(x_3713.x, x_3713.y, x_3713.z));
  let x_3716 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3715.x, x_3715.y, x_3715.z, x_3716.w);
  let x_3718 : vec4<f32> = u_xlat3;
  let x_3720 : vec4<f32> = u_xlat8;
  u_xlat81 = dot(vec3<f32>(x_3718.x, x_3718.y, x_3718.z), vec3<f32>(x_3720.x, x_3720.y, x_3720.z));
  let x_3723 : f32 = u_xlat81;
  u_xlat81 = clamp(x_3723, 0.0f, 1.0f);
  let x_3726 : vec4<f32> = x_75.x_MainLightPosition;
  let x_3728 : vec4<f32> = u_xlat8;
  u_xlat56 = dot(vec3<f32>(x_3726.x, x_3726.y, x_3726.z), vec3<f32>(x_3728.x, x_3728.y, x_3728.z));
  let x_3731 : f32 = u_xlat56;
  u_xlat56 = clamp(x_3731, 0.0f, 1.0f);
  let x_3733 : f32 = u_xlat81;
  let x_3734 : f32 = u_xlat81;
  u_xlat81 = (x_3733 * x_3734);
  let x_3736 : f32 = u_xlat81;
  let x_3738 : f32 = u_xlat61.x;
  u_xlat81 = ((x_3736 * x_3738) + 1.00001001358032226562f);
  let x_3742 : f32 = u_xlat56;
  let x_3743 : f32 = u_xlat56;
  u_xlat56 = (x_3742 * x_3743);
  let x_3745 : f32 = u_xlat81;
  let x_3746 : f32 = u_xlat81;
  u_xlat81 = (x_3745 * x_3746);
  let x_3748 : f32 = u_xlat56;
  u_xlat56 = max(x_3748, 0.10000000149011611938f);
  let x_3751 : f32 = u_xlat81;
  let x_3752 : f32 = u_xlat56;
  u_xlat81 = (x_3751 * x_3752);
  let x_3755 : f32 = u_xlat7.x;
  let x_3756 : f32 = u_xlat81;
  u_xlat81 = (x_3755 * x_3756);
  let x_3758 : f32 = u_xlat87;
  let x_3759 : f32 = u_xlat81;
  u_xlat81 = (x_3758 / x_3759);
  let x_3761 : f32 = u_xlat81;
  let x_3765 : vec3<f32> = u_xlat4;
  let x_3766 : vec3<f32> = ((vec3<f32>(x_3761, x_3761, x_3761) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_3765);
  let x_3767 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3766.x, x_3766.y, x_3766.z, x_3767.w);
  let x_3769 : vec4<f32> = u_xlat6;
  let x_3771 : vec4<f32> = u_xlat8;
  let x_3773 : vec3<f32> = (vec3<f32>(x_3769.x, x_3769.y, x_3769.z) * vec3<f32>(x_3771.x, x_3771.y, x_3771.z));
  let x_3774 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_3773.x, x_3773.y, x_3773.z, x_3774.w);
  let x_3777 : f32 = x_75.x_AdditionalLightsCount.x;
  let x_3779 : f32 = x_132.unity_LightData.y;
  u_xlat81 = min(x_3777, x_3779);
  let x_3781 : f32 = u_xlat81;
  u_xlatu81 = bitcast<u32>(i32(x_3781));
  let x_3784 : f32 = u_xlat83;
  let x_3787 : f32 = x_248.x_AdditionalShadowFadeParams.x;
  let x_3790 : f32 = x_248.x_AdditionalShadowFadeParams.y;
  u_xlat56 = ((x_3784 * x_3787) + x_3790);
  let x_3792 : f32 = u_xlat56;
  u_xlat56 = clamp(x_3792, 0.0f, 1.0f);
  let x_3796 : f32 = x_3430.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3798 : f32 = x_3430.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3800 : f32 = x_3430.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3802 : f32 = x_3430.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3803 : vec4<f32> = vec4<f32>(x_3796, x_3798, x_3800, x_3802);
  let x_3809 : vec4<bool> = (vec4<f32>(x_3803.x, x_3803.y, x_3803.z, x_3803.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb8 = vec2<bool>(x_3809.x, x_3809.y);
  u_xlat9.x = 0.0f;
  u_xlat9.y = 0.0f;
  u_xlat9.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_3820 : u32 = u_xlatu_loop_1;
    let x_3821 : u32 = u_xlatu81;
    if ((x_3820 < x_3821)) {
    } else {
      break;
    }
    let x_3824 : u32 = u_xlatu_loop_1;
    u_xlatu84 = (x_3824 >> 2u);
    let x_3827 : u32 = u_xlatu_loop_1;
    u_xlati85 = bitcast<i32>((x_3827 & 3u));
    let x_3830 : u32 = u_xlatu84;
    let x_3833 : vec4<f32> = x_132.unity_LightIndices[bitcast<i32>(x_3830)];
    let x_3843 : i32 = u_xlati85;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_3848 : vec4<u32> = indexable[x_3843];
    u_xlat84 = dot(x_3833, bitcast<vec4<f32>>(x_3848));
    let x_3852 : f32 = u_xlat84;
    u_xlati84 = i32(x_3852);
    let x_3854 : vec3<f32> = vs_INTERP8;
    let x_3865 : i32 = u_xlati84;
    let x_3867 : vec4<f32> = x_3864.x_AdditionalLightsPosition[x_3865];
    let x_3870 : i32 = u_xlati84;
    let x_3872 : vec4<f32> = x_3864.x_AdditionalLightsPosition[x_3870];
    let x_3874 : vec3<f32> = ((-(x_3854) * vec3<f32>(x_3867.w, x_3867.w, x_3867.w)) + vec3<f32>(x_3872.x, x_3872.y, x_3872.z));
    let x_3875 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3874.x, x_3874.y, x_3874.z, x_3875.w);
    let x_3877 : vec4<f32> = u_xlat10;
    let x_3879 : vec4<f32> = u_xlat10;
    u_xlat85 = dot(vec3<f32>(x_3877.x, x_3877.y, x_3877.z), vec3<f32>(x_3879.x, x_3879.y, x_3879.z));
    let x_3882 : f32 = u_xlat85;
    u_xlat85 = max(x_3882, 0.00006103515625f);
    let x_3886 : f32 = u_xlat85;
    u_xlat86 = inverseSqrt(x_3886);
    let x_3888 : f32 = u_xlat86;
    let x_3890 : vec4<f32> = u_xlat10;
    let x_3892 : vec3<f32> = (vec3<f32>(x_3888, x_3888, x_3888) * vec3<f32>(x_3890.x, x_3890.y, x_3890.z));
    let x_3893 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3892.x, x_3892.y, x_3892.z, x_3893.w);
    let x_3895 : f32 = u_xlat85;
    u_xlat88 = (1.0f / x_3895);
    let x_3897 : f32 = u_xlat85;
    let x_3898 : i32 = u_xlati84;
    let x_3900 : f32 = x_3864.x_AdditionalLightsAttenuation[x_3898].x;
    u_xlat85 = (x_3897 * x_3900);
    let x_3902 : f32 = u_xlat85;
    let x_3904 : f32 = u_xlat85;
    u_xlat85 = ((-(x_3902) * x_3904) + 1.0f);
    let x_3907 : f32 = u_xlat85;
    u_xlat85 = max(x_3907, 0.0f);
    let x_3909 : f32 = u_xlat85;
    let x_3910 : f32 = u_xlat85;
    u_xlat85 = (x_3909 * x_3910);
    let x_3912 : f32 = u_xlat85;
    let x_3913 : f32 = u_xlat88;
    u_xlat85 = (x_3912 * x_3913);
    let x_3915 : i32 = u_xlati84;
    let x_3917 : vec4<f32> = x_3864.x_AdditionalLightsSpotDir[x_3915];
    let x_3919 : vec4<f32> = u_xlat11;
    u_xlat88 = dot(vec3<f32>(x_3917.x, x_3917.y, x_3917.z), vec3<f32>(x_3919.x, x_3919.y, x_3919.z));
    let x_3922 : f32 = u_xlat88;
    let x_3923 : i32 = u_xlati84;
    let x_3925 : f32 = x_3864.x_AdditionalLightsAttenuation[x_3923].z;
    let x_3927 : i32 = u_xlati84;
    let x_3929 : f32 = x_3864.x_AdditionalLightsAttenuation[x_3927].w;
    u_xlat88 = ((x_3922 * x_3925) + x_3929);
    let x_3931 : f32 = u_xlat88;
    u_xlat88 = clamp(x_3931, 0.0f, 1.0f);
    let x_3933 : f32 = u_xlat88;
    let x_3934 : f32 = u_xlat88;
    u_xlat88 = (x_3933 * x_3934);
    let x_3936 : f32 = u_xlat85;
    let x_3937 : f32 = u_xlat88;
    u_xlat85 = (x_3936 * x_3937);
    let x_3941 : i32 = u_xlati84;
    let x_3943 : f32 = x_248.x_AdditionalShadowParams[x_3941].w;
    u_xlati88 = i32(x_3943);
    let x_3946 : i32 = u_xlati88;
    u_xlatb62 = (x_3946 >= 0i);
    let x_3948 : bool = u_xlatb62;
    if (x_3948) {
      let x_3952 : i32 = u_xlati84;
      let x_3954 : f32 = x_248.x_AdditionalShadowParams[x_3952].z;
      u_xlatb62 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_3954, x_3954, x_3954, x_3954))));
      let x_3958 : bool = u_xlatb62;
      if (x_3958) {
        let x_3962 : vec4<f32> = u_xlat11;
        let x_3965 : vec4<f32> = u_xlat11;
        let x_3968 : vec4<bool> = (abs(vec4<f32>(x_3962.z, x_3962.z, x_3962.y, x_3962.z)) >= abs(vec4<f32>(x_3965.x, x_3965.y, x_3965.x, x_3965.x)));
        let x_3970 : vec3<bool> = vec3<bool>(x_3968.x, x_3968.y, x_3968.z);
        let x_3971 : vec4<bool> = u_xlatb12;
        u_xlatb12 = vec4<bool>(x_3970.x, x_3970.y, x_3970.z, x_3971.w);
        let x_3974 : bool = u_xlatb12.y;
        let x_3976 : bool = u_xlatb12.x;
        u_xlatb62 = (x_3974 & x_3976);
        let x_3978 : vec4<f32> = u_xlat11;
        let x_3981 : vec4<bool> = (-(vec4<f32>(x_3978.z, x_3978.y, x_3978.z, x_3978.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_3982 : vec3<bool> = vec3<bool>(x_3981.x, x_3981.y, x_3981.w);
        let x_3983 : vec4<bool> = u_xlatb12;
        u_xlatb12 = vec4<bool>(x_3982.x, x_3982.y, x_3983.z, x_3982.z);
        let x_3986 : bool = u_xlatb12.x;
        u_xlat12.x = select(4.0f, 5.0f, x_3986);
        let x_3991 : bool = u_xlatb12.y;
        u_xlat12.y = select(2.0f, 3.0f, x_3991);
        let x_3996 : bool = u_xlatb12.w;
        u_xlat89 = select(0.0f, 1.0f, x_3996);
        let x_3999 : bool = u_xlatb12.z;
        if (x_3999) {
          let x_4004 : f32 = u_xlat12.y;
          x_4000 = x_4004;
        } else {
          let x_4006 : f32 = u_xlat89;
          x_4000 = x_4006;
        }
        let x_4007 : f32 = x_4000;
        u_xlat89 = x_4007;
        let x_4008 : bool = u_xlatb62;
        if (x_4008) {
          let x_4013 : f32 = u_xlat12.x;
          x_4009 = x_4013;
        } else {
          let x_4015 : f32 = u_xlat89;
          x_4009 = x_4015;
        }
        let x_4016 : f32 = x_4009;
        u_xlat62.x = x_4016;
        let x_4018 : i32 = u_xlati84;
        let x_4020 : f32 = x_248.x_AdditionalShadowParams[x_4018].w;
        u_xlat89 = trunc(x_4020);
        let x_4023 : f32 = u_xlat62.x;
        let x_4024 : f32 = u_xlat89;
        u_xlat62.x = (x_4023 + x_4024);
        let x_4028 : f32 = u_xlat62.x;
        u_xlati88 = i32(x_4028);
      }
      let x_4030 : i32 = u_xlati88;
      u_xlati88 = (x_4030 << bitcast<u32>(2i));
      let x_4032 : vec3<f32> = vs_INTERP8;
      let x_4035 : i32 = u_xlati88;
      let x_4038 : i32 = u_xlati88;
      let x_4042 : vec4<f32> = x_248.x_AdditionalLightsWorldToShadow[((x_4035 + 1i) / 4i)][((x_4038 + 1i) % 4i)];
      u_xlat12 = (vec4<f32>(x_4032.y, x_4032.y, x_4032.y, x_4032.y) * x_4042);
      let x_4044 : i32 = u_xlati88;
      let x_4046 : i32 = u_xlati88;
      let x_4049 : vec4<f32> = x_248.x_AdditionalLightsWorldToShadow[(x_4044 / 4i)][(x_4046 % 4i)];
      let x_4050 : vec3<f32> = vs_INTERP8;
      let x_4053 : vec4<f32> = u_xlat12;
      u_xlat12 = ((x_4049 * vec4<f32>(x_4050.x, x_4050.x, x_4050.x, x_4050.x)) + x_4053);
      let x_4055 : i32 = u_xlati88;
      let x_4058 : i32 = u_xlati88;
      let x_4062 : vec4<f32> = x_248.x_AdditionalLightsWorldToShadow[((x_4055 + 2i) / 4i)][((x_4058 + 2i) % 4i)];
      let x_4063 : vec3<f32> = vs_INTERP8;
      let x_4066 : vec4<f32> = u_xlat12;
      u_xlat12 = ((x_4062 * vec4<f32>(x_4063.z, x_4063.z, x_4063.z, x_4063.z)) + x_4066);
      let x_4068 : vec4<f32> = u_xlat12;
      let x_4069 : i32 = u_xlati88;
      let x_4072 : i32 = u_xlati88;
      let x_4076 : vec4<f32> = x_248.x_AdditionalLightsWorldToShadow[((x_4069 + 3i) / 4i)][((x_4072 + 3i) % 4i)];
      u_xlat12 = (x_4068 + x_4076);
      let x_4078 : vec4<f32> = u_xlat12;
      let x_4080 : vec4<f32> = u_xlat12;
      let x_4082 : vec3<f32> = (vec3<f32>(x_4078.x, x_4078.y, x_4078.z) / vec3<f32>(x_4080.w, x_4080.w, x_4080.w));
      let x_4083 : vec4<f32> = u_xlat12;
      u_xlat12 = vec4<f32>(x_4082.x, x_4082.y, x_4082.z, x_4083.w);
      let x_4086 : i32 = u_xlati84;
      let x_4088 : f32 = x_248.x_AdditionalShadowParams[x_4086].y;
      u_xlatb88 = (0.0f < x_4088);
      let x_4090 : bool = u_xlatb88;
      if (x_4090) {
        let x_4093 : i32 = u_xlati84;
        let x_4095 : f32 = x_248.x_AdditionalShadowParams[x_4093].y;
        u_xlatb88 = (1.0f == x_4095);
        let x_4097 : bool = u_xlatb88;
        if (x_4097) {
          let x_4100 : vec4<f32> = u_xlat12;
          let x_4104 : vec4<f32> = x_248.x_AdditionalShadowOffset0;
          u_xlat13 = (vec4<f32>(x_4100.x, x_4100.y, x_4100.x, x_4100.y) + x_4104);
          let x_4107 : vec4<f32> = u_xlat13;
          let x_4108 : vec2<f32> = vec2<f32>(x_4107.x, x_4107.y);
          let x_4110 : f32 = u_xlat12.z;
          txVec60 = vec3<f32>(x_4108.x, x_4108.y, x_4110);
          let x_4118 : vec3<f32> = txVec60;
          let x_4120 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4118.xy, x_4118.z);
          u_xlat14.x = x_4120;
          let x_4123 : vec4<f32> = u_xlat13;
          let x_4124 : vec2<f32> = vec2<f32>(x_4123.z, x_4123.w);
          let x_4126 : f32 = u_xlat12.z;
          txVec61 = vec3<f32>(x_4124.x, x_4124.y, x_4126);
          let x_4133 : vec3<f32> = txVec61;
          let x_4135 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4133.xy, x_4133.z);
          u_xlat14.y = x_4135;
          let x_4137 : vec4<f32> = u_xlat12;
          let x_4140 : vec4<f32> = x_248.x_AdditionalShadowOffset1;
          u_xlat13 = (vec4<f32>(x_4137.x, x_4137.y, x_4137.x, x_4137.y) + x_4140);
          let x_4143 : vec4<f32> = u_xlat13;
          let x_4144 : vec2<f32> = vec2<f32>(x_4143.x, x_4143.y);
          let x_4146 : f32 = u_xlat12.z;
          txVec62 = vec3<f32>(x_4144.x, x_4144.y, x_4146);
          let x_4153 : vec3<f32> = txVec62;
          let x_4155 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4153.xy, x_4153.z);
          u_xlat14.z = x_4155;
          let x_4158 : vec4<f32> = u_xlat13;
          let x_4159 : vec2<f32> = vec2<f32>(x_4158.z, x_4158.w);
          let x_4161 : f32 = u_xlat12.z;
          txVec63 = vec3<f32>(x_4159.x, x_4159.y, x_4161);
          let x_4168 : vec3<f32> = txVec63;
          let x_4170 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4168.xy, x_4168.z);
          u_xlat14.w = x_4170;
          let x_4172 : vec4<f32> = u_xlat14;
          u_xlat88 = dot(x_4172, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_4175 : i32 = u_xlati84;
          let x_4177 : f32 = x_248.x_AdditionalShadowParams[x_4175].y;
          u_xlatb62 = (2.0f == x_4177);
          let x_4179 : bool = u_xlatb62;
          if (x_4179) {
            let x_4182 : vec4<f32> = u_xlat12;
            let x_4186 : vec4<f32> = x_248.x_AdditionalShadowmapSize;
            u_xlat62 = ((vec2<f32>(x_4182.x, x_4182.y) * vec2<f32>(x_4186.z, x_4186.w)) + vec2<f32>(0.5f, 0.5f));
            let x_4190 : vec2<f32> = u_xlat62;
            u_xlat62 = floor(x_4190);
            let x_4192 : vec4<f32> = u_xlat12;
            let x_4195 : vec4<f32> = x_248.x_AdditionalShadowmapSize;
            let x_4198 : vec2<f32> = u_xlat62;
            let x_4200 : vec2<f32> = ((vec2<f32>(x_4192.x, x_4192.y) * vec2<f32>(x_4195.z, x_4195.w)) + -(x_4198));
            let x_4201 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4200.x, x_4200.y, x_4201.z, x_4201.w);
            let x_4203 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_4203.x, x_4203.x, x_4203.y, x_4203.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4206 : vec4<f32> = u_xlat14;
            let x_4208 : vec4<f32> = u_xlat14;
            u_xlat15 = (vec4<f32>(x_4206.x, x_4206.x, x_4206.z, x_4206.z) * vec4<f32>(x_4208.x, x_4208.x, x_4208.z, x_4208.z));
            let x_4212 : vec4<f32> = u_xlat15;
            u_xlat67 = (vec2<f32>(x_4212.y, x_4212.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_4215 : vec4<f32> = u_xlat15;
            let x_4218 : vec4<f32> = u_xlat13;
            let x_4221 : vec2<f32> = ((vec2<f32>(x_4215.x, x_4215.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_4218.x, x_4218.y)));
            let x_4222 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4221.x, x_4222.y, x_4221.y, x_4222.w);
            let x_4224 : vec4<f32> = u_xlat13;
            let x_4227 : vec2<f32> = (-(vec2<f32>(x_4224.x, x_4224.y)) + vec2<f32>(1.0f, 1.0f));
            let x_4228 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4227.x, x_4227.y, x_4228.z, x_4228.w);
            let x_4230 : vec4<f32> = u_xlat13;
            u_xlat69 = min(vec2<f32>(x_4230.x, x_4230.y), vec2<f32>(0.0f, 0.0f));
            let x_4233 : vec2<f32> = u_xlat69;
            let x_4235 : vec2<f32> = u_xlat69;
            let x_4237 : vec4<f32> = u_xlat15;
            u_xlat69 = ((-(x_4233) * x_4235) + vec2<f32>(x_4237.x, x_4237.y));
            let x_4240 : vec4<f32> = u_xlat13;
            let x_4242 : vec2<f32> = max(vec2<f32>(x_4240.x, x_4240.y), vec2<f32>(0.0f, 0.0f));
            let x_4243 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4242.x, x_4242.y, x_4243.z, x_4243.w);
            let x_4245 : vec4<f32> = u_xlat13;
            let x_4248 : vec4<f32> = u_xlat13;
            let x_4251 : vec4<f32> = u_xlat14;
            let x_4253 : vec2<f32> = ((-(vec2<f32>(x_4245.x, x_4245.y)) * vec2<f32>(x_4248.x, x_4248.y)) + vec2<f32>(x_4251.y, x_4251.w));
            let x_4254 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4253.x, x_4253.y, x_4254.z, x_4254.w);
            let x_4256 : vec2<f32> = u_xlat69;
            u_xlat69 = (x_4256 + vec2<f32>(1.0f, 1.0f));
            let x_4258 : vec4<f32> = u_xlat13;
            let x_4260 : vec2<f32> = (vec2<f32>(x_4258.x, x_4258.y) + vec2<f32>(1.0f, 1.0f));
            let x_4261 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4260.x, x_4260.y, x_4261.z, x_4261.w);
            let x_4263 : vec4<f32> = u_xlat14;
            let x_4265 : vec2<f32> = (vec2<f32>(x_4263.x, x_4263.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4266 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4265.x, x_4265.y, x_4266.z, x_4266.w);
            let x_4268 : vec4<f32> = u_xlat15;
            let x_4270 : vec2<f32> = (vec2<f32>(x_4268.x, x_4268.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4271 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4270.x, x_4270.y, x_4271.z, x_4271.w);
            let x_4273 : vec2<f32> = u_xlat69;
            let x_4274 : vec2<f32> = (x_4273 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4275 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4274.x, x_4274.y, x_4275.z, x_4275.w);
            let x_4277 : vec4<f32> = u_xlat13;
            let x_4279 : vec2<f32> = (vec2<f32>(x_4277.x, x_4277.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4280 : vec4<f32> = u_xlat18;
            u_xlat18 = vec4<f32>(x_4279.x, x_4279.y, x_4280.z, x_4280.w);
            let x_4282 : vec4<f32> = u_xlat14;
            let x_4284 : vec2<f32> = (vec2<f32>(x_4282.y, x_4282.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4285 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4284.x, x_4284.y, x_4285.z, x_4285.w);
            let x_4288 : f32 = u_xlat15.x;
            u_xlat16.z = x_4288;
            let x_4291 : f32 = u_xlat13.x;
            u_xlat16.w = x_4291;
            let x_4294 : f32 = u_xlat18.x;
            u_xlat17.z = x_4294;
            let x_4297 : f32 = u_xlat67.x;
            u_xlat17.w = x_4297;
            let x_4299 : vec4<f32> = u_xlat16;
            let x_4301 : vec4<f32> = u_xlat17;
            u_xlat14 = (vec4<f32>(x_4299.z, x_4299.w, x_4299.x, x_4299.z) + vec4<f32>(x_4301.z, x_4301.w, x_4301.x, x_4301.z));
            let x_4305 : f32 = u_xlat16.y;
            u_xlat15.z = x_4305;
            let x_4308 : f32 = u_xlat13.y;
            u_xlat15.w = x_4308;
            let x_4311 : f32 = u_xlat17.y;
            u_xlat18.z = x_4311;
            let x_4314 : f32 = u_xlat67.y;
            u_xlat18.w = x_4314;
            let x_4316 : vec4<f32> = u_xlat15;
            let x_4318 : vec4<f32> = u_xlat18;
            let x_4320 : vec3<f32> = (vec3<f32>(x_4316.z, x_4316.y, x_4316.w) + vec3<f32>(x_4318.z, x_4318.y, x_4318.w));
            let x_4321 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4320.x, x_4320.y, x_4320.z, x_4321.w);
            let x_4323 : vec4<f32> = u_xlat17;
            let x_4325 : vec4<f32> = u_xlat14;
            let x_4327 : vec3<f32> = (vec3<f32>(x_4323.x, x_4323.z, x_4323.w) / vec3<f32>(x_4325.z, x_4325.w, x_4325.y));
            let x_4328 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4327.x, x_4327.y, x_4327.z, x_4328.w);
            let x_4330 : vec4<f32> = u_xlat15;
            let x_4332 : vec3<f32> = (vec3<f32>(x_4330.x, x_4330.y, x_4330.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4333 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4332.x, x_4332.y, x_4332.z, x_4333.w);
            let x_4335 : vec4<f32> = u_xlat18;
            let x_4337 : vec4<f32> = u_xlat13;
            let x_4339 : vec3<f32> = (vec3<f32>(x_4335.z, x_4335.y, x_4335.w) / vec3<f32>(x_4337.x, x_4337.y, x_4337.z));
            let x_4340 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4339.x, x_4339.y, x_4339.z, x_4340.w);
            let x_4342 : vec4<f32> = u_xlat16;
            let x_4344 : vec3<f32> = (vec3<f32>(x_4342.x, x_4342.y, x_4342.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4345 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4344.x, x_4344.y, x_4344.z, x_4345.w);
            let x_4347 : vec4<f32> = u_xlat15;
            let x_4350 : vec4<f32> = x_248.x_AdditionalShadowmapSize;
            let x_4352 : vec3<f32> = (vec3<f32>(x_4347.y, x_4347.x, x_4347.z) * vec3<f32>(x_4350.x, x_4350.x, x_4350.x));
            let x_4353 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4352.x, x_4352.y, x_4352.z, x_4353.w);
            let x_4355 : vec4<f32> = u_xlat16;
            let x_4358 : vec4<f32> = x_248.x_AdditionalShadowmapSize;
            let x_4360 : vec3<f32> = (vec3<f32>(x_4355.x, x_4355.y, x_4355.z) * vec3<f32>(x_4358.y, x_4358.y, x_4358.y));
            let x_4361 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4360.x, x_4360.y, x_4360.z, x_4361.w);
            let x_4364 : f32 = u_xlat16.x;
            u_xlat15.w = x_4364;
            let x_4366 : vec2<f32> = u_xlat62;
            let x_4369 : vec4<f32> = x_248.x_AdditionalShadowmapSize;
            let x_4372 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_4366.x, x_4366.y, x_4366.x, x_4366.y) * vec4<f32>(x_4369.x, x_4369.y, x_4369.x, x_4369.y)) + vec4<f32>(x_4372.y, x_4372.w, x_4372.x, x_4372.w));
            let x_4375 : vec2<f32> = u_xlat62;
            let x_4377 : vec4<f32> = x_248.x_AdditionalShadowmapSize;
            let x_4380 : vec4<f32> = u_xlat15;
            let x_4382 : vec2<f32> = ((x_4375 * vec2<f32>(x_4377.x, x_4377.y)) + vec2<f32>(x_4380.z, x_4380.w));
            let x_4383 : vec4<f32> = u_xlat18;
            u_xlat18 = vec4<f32>(x_4382.x, x_4382.y, x_4383.z, x_4383.w);
            let x_4386 : f32 = u_xlat15.y;
            u_xlat16.w = x_4386;
            let x_4388 : vec4<f32> = u_xlat16;
            let x_4389 : vec2<f32> = vec2<f32>(x_4388.y, x_4388.z);
            let x_4390 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4390.x, x_4389.x, x_4390.z, x_4389.y);
            let x_4392 : vec2<f32> = u_xlat62;
            let x_4395 : vec4<f32> = x_248.x_AdditionalShadowmapSize;
            let x_4398 : vec4<f32> = u_xlat15;
            u_xlat19 = ((vec4<f32>(x_4392.x, x_4392.y, x_4392.x, x_4392.y) * vec4<f32>(x_4395.x, x_4395.y, x_4395.x, x_4395.y)) + vec4<f32>(x_4398.x, x_4398.y, x_4398.z, x_4398.y));
            let x_4401 : vec2<f32> = u_xlat62;
            let x_4404 : vec4<f32> = x_248.x_AdditionalShadowmapSize;
            let x_4407 : vec4<f32> = u_xlat16;
            u_xlat16 = ((vec4<f32>(x_4401.x, x_4401.y, x_4401.x, x_4401.y) * vec4<f32>(x_4404.x, x_4404.y, x_4404.x, x_4404.y)) + vec4<f32>(x_4407.w, x_4407.y, x_4407.w, x_4407.z));
            let x_4410 : vec2<f32> = u_xlat62;
            let x_4413 : vec4<f32> = x_248.x_AdditionalShadowmapSize;
            let x_4416 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_4410.x, x_4410.y, x_4410.x, x_4410.y) * vec4<f32>(x_4413.x, x_4413.y, x_4413.x, x_4413.y)) + vec4<f32>(x_4416.x, x_4416.w, x_4416.z, x_4416.w));
            let x_4419 : vec4<f32> = u_xlat13;
            let x_4421 : vec4<f32> = u_xlat14;
            u_xlat20 = (vec4<f32>(x_4419.x, x_4419.x, x_4419.x, x_4419.y) * vec4<f32>(x_4421.z, x_4421.w, x_4421.y, x_4421.z));
            let x_4424 : vec4<f32> = u_xlat13;
            let x_4426 : vec4<f32> = u_xlat14;
            u_xlat21 = (vec4<f32>(x_4424.y, x_4424.y, x_4424.z, x_4424.z) * x_4426);
            let x_4429 : f32 = u_xlat13.z;
            let x_4431 : f32 = u_xlat14.y;
            u_xlat62.x = (x_4429 * x_4431);
            let x_4435 : vec4<f32> = u_xlat17;
            let x_4436 : vec2<f32> = vec2<f32>(x_4435.x, x_4435.y);
            let x_4438 : f32 = u_xlat12.z;
            txVec64 = vec3<f32>(x_4436.x, x_4436.y, x_4438);
            let x_4445 : vec3<f32> = txVec64;
            let x_4447 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4445.xy, x_4445.z);
            u_xlat89 = x_4447;
            let x_4449 : vec4<f32> = u_xlat17;
            let x_4450 : vec2<f32> = vec2<f32>(x_4449.z, x_4449.w);
            let x_4452 : f32 = u_xlat12.z;
            txVec65 = vec3<f32>(x_4450.x, x_4450.y, x_4452);
            let x_4459 : vec3<f32> = txVec65;
            let x_4461 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4459.xy, x_4459.z);
            u_xlat90 = x_4461;
            let x_4462 : f32 = u_xlat90;
            let x_4464 : f32 = u_xlat20.y;
            u_xlat90 = (x_4462 * x_4464);
            let x_4467 : f32 = u_xlat20.x;
            let x_4468 : f32 = u_xlat89;
            let x_4470 : f32 = u_xlat90;
            u_xlat89 = ((x_4467 * x_4468) + x_4470);
            let x_4473 : vec4<f32> = u_xlat18;
            let x_4474 : vec2<f32> = vec2<f32>(x_4473.x, x_4473.y);
            let x_4476 : f32 = u_xlat12.z;
            txVec66 = vec3<f32>(x_4474.x, x_4474.y, x_4476);
            let x_4483 : vec3<f32> = txVec66;
            let x_4485 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4483.xy, x_4483.z);
            u_xlat90 = x_4485;
            let x_4487 : f32 = u_xlat20.z;
            let x_4488 : f32 = u_xlat90;
            let x_4490 : f32 = u_xlat89;
            u_xlat89 = ((x_4487 * x_4488) + x_4490);
            let x_4493 : vec4<f32> = u_xlat16;
            let x_4494 : vec2<f32> = vec2<f32>(x_4493.x, x_4493.y);
            let x_4496 : f32 = u_xlat12.z;
            txVec67 = vec3<f32>(x_4494.x, x_4494.y, x_4496);
            let x_4503 : vec3<f32> = txVec67;
            let x_4505 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4503.xy, x_4503.z);
            u_xlat90 = x_4505;
            let x_4507 : f32 = u_xlat20.w;
            let x_4508 : f32 = u_xlat90;
            let x_4510 : f32 = u_xlat89;
            u_xlat89 = ((x_4507 * x_4508) + x_4510);
            let x_4513 : vec4<f32> = u_xlat19;
            let x_4514 : vec2<f32> = vec2<f32>(x_4513.x, x_4513.y);
            let x_4516 : f32 = u_xlat12.z;
            txVec68 = vec3<f32>(x_4514.x, x_4514.y, x_4516);
            let x_4523 : vec3<f32> = txVec68;
            let x_4525 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4523.xy, x_4523.z);
            u_xlat90 = x_4525;
            let x_4527 : f32 = u_xlat21.x;
            let x_4528 : f32 = u_xlat90;
            let x_4530 : f32 = u_xlat89;
            u_xlat89 = ((x_4527 * x_4528) + x_4530);
            let x_4533 : vec4<f32> = u_xlat19;
            let x_4534 : vec2<f32> = vec2<f32>(x_4533.z, x_4533.w);
            let x_4536 : f32 = u_xlat12.z;
            txVec69 = vec3<f32>(x_4534.x, x_4534.y, x_4536);
            let x_4543 : vec3<f32> = txVec69;
            let x_4545 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4543.xy, x_4543.z);
            u_xlat90 = x_4545;
            let x_4547 : f32 = u_xlat21.y;
            let x_4548 : f32 = u_xlat90;
            let x_4550 : f32 = u_xlat89;
            u_xlat89 = ((x_4547 * x_4548) + x_4550);
            let x_4553 : vec4<f32> = u_xlat16;
            let x_4554 : vec2<f32> = vec2<f32>(x_4553.z, x_4553.w);
            let x_4556 : f32 = u_xlat12.z;
            txVec70 = vec3<f32>(x_4554.x, x_4554.y, x_4556);
            let x_4563 : vec3<f32> = txVec70;
            let x_4565 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4563.xy, x_4563.z);
            u_xlat90 = x_4565;
            let x_4567 : f32 = u_xlat21.z;
            let x_4568 : f32 = u_xlat90;
            let x_4570 : f32 = u_xlat89;
            u_xlat89 = ((x_4567 * x_4568) + x_4570);
            let x_4573 : vec4<f32> = u_xlat15;
            let x_4574 : vec2<f32> = vec2<f32>(x_4573.x, x_4573.y);
            let x_4576 : f32 = u_xlat12.z;
            txVec71 = vec3<f32>(x_4574.x, x_4574.y, x_4576);
            let x_4583 : vec3<f32> = txVec71;
            let x_4585 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4583.xy, x_4583.z);
            u_xlat90 = x_4585;
            let x_4587 : f32 = u_xlat21.w;
            let x_4588 : f32 = u_xlat90;
            let x_4590 : f32 = u_xlat89;
            u_xlat89 = ((x_4587 * x_4588) + x_4590);
            let x_4593 : vec4<f32> = u_xlat15;
            let x_4594 : vec2<f32> = vec2<f32>(x_4593.z, x_4593.w);
            let x_4596 : f32 = u_xlat12.z;
            txVec72 = vec3<f32>(x_4594.x, x_4594.y, x_4596);
            let x_4603 : vec3<f32> = txVec72;
            let x_4605 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4603.xy, x_4603.z);
            u_xlat90 = x_4605;
            let x_4607 : f32 = u_xlat62.x;
            let x_4608 : f32 = u_xlat90;
            let x_4610 : f32 = u_xlat89;
            u_xlat88 = ((x_4607 * x_4608) + x_4610);
          } else {
            let x_4613 : vec4<f32> = u_xlat12;
            let x_4616 : vec4<f32> = x_248.x_AdditionalShadowmapSize;
            u_xlat62 = ((vec2<f32>(x_4613.x, x_4613.y) * vec2<f32>(x_4616.z, x_4616.w)) + vec2<f32>(0.5f, 0.5f));
            let x_4620 : vec2<f32> = u_xlat62;
            u_xlat62 = floor(x_4620);
            let x_4622 : vec4<f32> = u_xlat12;
            let x_4625 : vec4<f32> = x_248.x_AdditionalShadowmapSize;
            let x_4628 : vec2<f32> = u_xlat62;
            let x_4630 : vec2<f32> = ((vec2<f32>(x_4622.x, x_4622.y) * vec2<f32>(x_4625.z, x_4625.w)) + -(x_4628));
            let x_4631 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4630.x, x_4630.y, x_4631.z, x_4631.w);
            let x_4633 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_4633.x, x_4633.x, x_4633.y, x_4633.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4636 : vec4<f32> = u_xlat14;
            let x_4638 : vec4<f32> = u_xlat14;
            u_xlat15 = (vec4<f32>(x_4636.x, x_4636.x, x_4636.z, x_4636.z) * vec4<f32>(x_4638.x, x_4638.x, x_4638.z, x_4638.z));
            let x_4641 : vec4<f32> = u_xlat15;
            let x_4643 : vec2<f32> = (vec2<f32>(x_4641.y, x_4641.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_4644 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4644.x, x_4643.x, x_4644.z, x_4643.y);
            let x_4646 : vec4<f32> = u_xlat15;
            let x_4649 : vec4<f32> = u_xlat13;
            u_xlat67 = ((vec2<f32>(x_4646.x, x_4646.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_4649.x, x_4649.y)));
            let x_4653 : vec4<f32> = u_xlat13;
            let x_4656 : vec2<f32> = (-(vec2<f32>(x_4653.x, x_4653.y)) + vec2<f32>(1.0f, 1.0f));
            let x_4657 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4656.x, x_4657.y, x_4656.y, x_4657.w);
            let x_4659 : vec4<f32> = u_xlat13;
            let x_4661 : vec2<f32> = min(vec2<f32>(x_4659.x, x_4659.y), vec2<f32>(0.0f, 0.0f));
            let x_4662 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4661.x, x_4661.y, x_4662.z, x_4662.w);
            let x_4664 : vec4<f32> = u_xlat15;
            let x_4667 : vec4<f32> = u_xlat15;
            let x_4670 : vec4<f32> = u_xlat14;
            let x_4672 : vec2<f32> = ((-(vec2<f32>(x_4664.x, x_4664.y)) * vec2<f32>(x_4667.x, x_4667.y)) + vec2<f32>(x_4670.x, x_4670.z));
            let x_4673 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4672.x, x_4673.y, x_4672.y, x_4673.w);
            let x_4675 : vec4<f32> = u_xlat13;
            let x_4677 : vec2<f32> = max(vec2<f32>(x_4675.x, x_4675.y), vec2<f32>(0.0f, 0.0f));
            let x_4678 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4677.x, x_4677.y, x_4678.z, x_4678.w);
            let x_4680 : vec4<f32> = u_xlat15;
            let x_4683 : vec4<f32> = u_xlat15;
            let x_4686 : vec4<f32> = u_xlat14;
            let x_4688 : vec2<f32> = ((-(vec2<f32>(x_4680.x, x_4680.y)) * vec2<f32>(x_4683.x, x_4683.y)) + vec2<f32>(x_4686.y, x_4686.w));
            let x_4689 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4689.x, x_4688.x, x_4689.z, x_4688.y);
            let x_4691 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_4691 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
            let x_4694 : f32 = u_xlat14.y;
            u_xlat15.z = (x_4694 * 0.08163200318813323975f);
            let x_4697 : vec2<f32> = u_xlat67;
            let x_4699 : vec2<f32> = (vec2<f32>(x_4697.y, x_4697.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_4700 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4699.x, x_4699.y, x_4700.z, x_4700.w);
            let x_4702 : vec4<f32> = u_xlat14;
            u_xlat67 = (vec2<f32>(x_4702.x, x_4702.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_4706 : f32 = u_xlat14.w;
            u_xlat17.z = (x_4706 * 0.08163200318813323975f);
            let x_4710 : f32 = u_xlat17.y;
            u_xlat15.x = x_4710;
            let x_4712 : vec4<f32> = u_xlat13;
            let x_4715 : vec2<f32> = ((vec2<f32>(x_4712.x, x_4712.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4716 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4716.x, x_4715.x, x_4716.z, x_4715.y);
            let x_4718 : vec4<f32> = u_xlat13;
            let x_4721 : vec2<f32> = ((vec2<f32>(x_4718.x, x_4718.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4722 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4721.x, x_4722.y, x_4721.y, x_4722.w);
            let x_4725 : f32 = u_xlat67.x;
            u_xlat14.y = x_4725;
            let x_4728 : f32 = u_xlat16.y;
            u_xlat14.w = x_4728;
            let x_4730 : vec4<f32> = u_xlat14;
            let x_4731 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_4730 + x_4731);
            let x_4733 : vec4<f32> = u_xlat13;
            let x_4736 : vec2<f32> = ((vec2<f32>(x_4733.y, x_4733.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4737 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4737.x, x_4736.x, x_4737.z, x_4736.y);
            let x_4739 : vec4<f32> = u_xlat13;
            let x_4742 : vec2<f32> = ((vec2<f32>(x_4739.y, x_4739.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4743 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4742.x, x_4743.y, x_4742.y, x_4743.w);
            let x_4746 : f32 = u_xlat67.y;
            u_xlat16.y = x_4746;
            let x_4748 : vec4<f32> = u_xlat16;
            let x_4749 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_4748 + x_4749);
            let x_4751 : vec4<f32> = u_xlat14;
            let x_4752 : vec4<f32> = u_xlat15;
            u_xlat14 = (x_4751 / x_4752);
            let x_4754 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_4754 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4756 : vec4<f32> = u_xlat16;
            let x_4757 : vec4<f32> = u_xlat13;
            u_xlat16 = (x_4756 / x_4757);
            let x_4759 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_4759 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4761 : vec4<f32> = u_xlat14;
            let x_4764 : vec4<f32> = x_248.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_4761.w, x_4761.x, x_4761.y, x_4761.z) * vec4<f32>(x_4764.x, x_4764.x, x_4764.x, x_4764.x));
            let x_4767 : vec4<f32> = u_xlat16;
            let x_4770 : vec4<f32> = x_248.x_AdditionalShadowmapSize;
            u_xlat16 = (vec4<f32>(x_4767.x, x_4767.w, x_4767.y, x_4767.z) * vec4<f32>(x_4770.y, x_4770.y, x_4770.y, x_4770.y));
            let x_4773 : vec4<f32> = u_xlat14;
            let x_4774 : vec3<f32> = vec3<f32>(x_4773.y, x_4773.z, x_4773.w);
            let x_4775 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4774.x, x_4775.y, x_4774.y, x_4774.z);
            let x_4778 : f32 = u_xlat16.x;
            u_xlat17.y = x_4778;
            let x_4780 : vec2<f32> = u_xlat62;
            let x_4783 : vec4<f32> = x_248.x_AdditionalShadowmapSize;
            let x_4786 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_4780.x, x_4780.y, x_4780.x, x_4780.y) * vec4<f32>(x_4783.x, x_4783.y, x_4783.x, x_4783.y)) + vec4<f32>(x_4786.x, x_4786.y, x_4786.z, x_4786.y));
            let x_4789 : vec2<f32> = u_xlat62;
            let x_4791 : vec4<f32> = x_248.x_AdditionalShadowmapSize;
            let x_4794 : vec4<f32> = u_xlat17;
            let x_4796 : vec2<f32> = ((x_4789 * vec2<f32>(x_4791.x, x_4791.y)) + vec2<f32>(x_4794.w, x_4794.y));
            let x_4797 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_4796.x, x_4796.y, x_4797.z, x_4797.w);
            let x_4800 : f32 = u_xlat17.y;
            u_xlat14.y = x_4800;
            let x_4803 : f32 = u_xlat16.z;
            u_xlat17.y = x_4803;
            let x_4805 : vec2<f32> = u_xlat62;
            let x_4808 : vec4<f32> = x_248.x_AdditionalShadowmapSize;
            let x_4811 : vec4<f32> = u_xlat17;
            u_xlat20 = ((vec4<f32>(x_4805.x, x_4805.y, x_4805.x, x_4805.y) * vec4<f32>(x_4808.x, x_4808.y, x_4808.x, x_4808.y)) + vec4<f32>(x_4811.x, x_4811.y, x_4811.z, x_4811.y));
            let x_4815 : vec2<f32> = u_xlat62;
            let x_4817 : vec4<f32> = x_248.x_AdditionalShadowmapSize;
            let x_4820 : vec4<f32> = u_xlat17;
            u_xlat73 = ((x_4815 * vec2<f32>(x_4817.x, x_4817.y)) + vec2<f32>(x_4820.w, x_4820.y));
            let x_4824 : f32 = u_xlat17.y;
            u_xlat14.z = x_4824;
            let x_4826 : vec2<f32> = u_xlat62;
            let x_4829 : vec4<f32> = x_248.x_AdditionalShadowmapSize;
            let x_4832 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_4826.x, x_4826.y, x_4826.x, x_4826.y) * vec4<f32>(x_4829.x, x_4829.y, x_4829.x, x_4829.y)) + vec4<f32>(x_4832.x, x_4832.y, x_4832.x, x_4832.z));
            let x_4836 : f32 = u_xlat16.w;
            u_xlat17.y = x_4836;
            let x_4839 : vec2<f32> = u_xlat62;
            let x_4842 : vec4<f32> = x_248.x_AdditionalShadowmapSize;
            let x_4845 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_4839.x, x_4839.y, x_4839.x, x_4839.y) * vec4<f32>(x_4842.x, x_4842.y, x_4842.x, x_4842.y)) + vec4<f32>(x_4845.x, x_4845.y, x_4845.z, x_4845.y));
            let x_4849 : vec2<f32> = u_xlat62;
            let x_4851 : vec4<f32> = x_248.x_AdditionalShadowmapSize;
            let x_4854 : vec4<f32> = u_xlat17;
            u_xlat41 = ((x_4849 * vec2<f32>(x_4851.x, x_4851.y)) + vec2<f32>(x_4854.w, x_4854.y));
            let x_4858 : f32 = u_xlat17.y;
            u_xlat14.w = x_4858;
            let x_4861 : vec2<f32> = u_xlat62;
            let x_4863 : vec4<f32> = x_248.x_AdditionalShadowmapSize;
            let x_4866 : vec4<f32> = u_xlat14;
            u_xlat23 = ((x_4861 * vec2<f32>(x_4863.x, x_4863.y)) + vec2<f32>(x_4866.x, x_4866.w));
            let x_4869 : vec4<f32> = u_xlat17;
            let x_4870 : vec3<f32> = vec3<f32>(x_4869.x, x_4869.z, x_4869.w);
            let x_4871 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4870.x, x_4871.y, x_4870.y, x_4870.z);
            let x_4873 : vec2<f32> = u_xlat62;
            let x_4876 : vec4<f32> = x_248.x_AdditionalShadowmapSize;
            let x_4879 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_4873.x, x_4873.y, x_4873.x, x_4873.y) * vec4<f32>(x_4876.x, x_4876.y, x_4876.x, x_4876.y)) + vec4<f32>(x_4879.x, x_4879.y, x_4879.z, x_4879.y));
            let x_4883 : vec2<f32> = u_xlat62;
            let x_4885 : vec4<f32> = x_248.x_AdditionalShadowmapSize;
            let x_4888 : vec4<f32> = u_xlat16;
            u_xlat70 = ((x_4883 * vec2<f32>(x_4885.x, x_4885.y)) + vec2<f32>(x_4888.w, x_4888.y));
            let x_4892 : f32 = u_xlat14.x;
            u_xlat16.x = x_4892;
            let x_4894 : vec2<f32> = u_xlat62;
            let x_4896 : vec4<f32> = x_248.x_AdditionalShadowmapSize;
            let x_4899 : vec4<f32> = u_xlat16;
            u_xlat62 = ((x_4894 * vec2<f32>(x_4896.x, x_4896.y)) + vec2<f32>(x_4899.x, x_4899.y));
            let x_4903 : vec4<f32> = u_xlat13;
            let x_4905 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_4903.x, x_4903.x, x_4903.x, x_4903.x) * x_4905);
            let x_4908 : vec4<f32> = u_xlat13;
            let x_4910 : vec4<f32> = u_xlat15;
            u_xlat25 = (vec4<f32>(x_4908.y, x_4908.y, x_4908.y, x_4908.y) * x_4910);
            let x_4913 : vec4<f32> = u_xlat13;
            let x_4915 : vec4<f32> = u_xlat15;
            u_xlat26 = (vec4<f32>(x_4913.z, x_4913.z, x_4913.z, x_4913.z) * x_4915);
            let x_4917 : vec4<f32> = u_xlat13;
            let x_4919 : vec4<f32> = u_xlat15;
            u_xlat13 = (vec4<f32>(x_4917.w, x_4917.w, x_4917.w, x_4917.w) * x_4919);
            let x_4922 : vec4<f32> = u_xlat18;
            let x_4923 : vec2<f32> = vec2<f32>(x_4922.x, x_4922.y);
            let x_4925 : f32 = u_xlat12.z;
            txVec73 = vec3<f32>(x_4923.x, x_4923.y, x_4925);
            let x_4932 : vec3<f32> = txVec73;
            let x_4934 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4932.xy, x_4932.z);
            u_xlat90 = x_4934;
            let x_4936 : vec4<f32> = u_xlat18;
            let x_4937 : vec2<f32> = vec2<f32>(x_4936.z, x_4936.w);
            let x_4939 : f32 = u_xlat12.z;
            txVec74 = vec3<f32>(x_4937.x, x_4937.y, x_4939);
            let x_4947 : vec3<f32> = txVec74;
            let x_4949 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4947.xy, x_4947.z);
            u_xlat91 = x_4949;
            let x_4950 : f32 = u_xlat91;
            let x_4952 : f32 = u_xlat24.y;
            u_xlat91 = (x_4950 * x_4952);
            let x_4955 : f32 = u_xlat24.x;
            let x_4956 : f32 = u_xlat90;
            let x_4958 : f32 = u_xlat91;
            u_xlat90 = ((x_4955 * x_4956) + x_4958);
            let x_4961 : vec4<f32> = u_xlat19;
            let x_4962 : vec2<f32> = vec2<f32>(x_4961.x, x_4961.y);
            let x_4964 : f32 = u_xlat12.z;
            txVec75 = vec3<f32>(x_4962.x, x_4962.y, x_4964);
            let x_4971 : vec3<f32> = txVec75;
            let x_4973 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4971.xy, x_4971.z);
            u_xlat91 = x_4973;
            let x_4975 : f32 = u_xlat24.z;
            let x_4976 : f32 = u_xlat91;
            let x_4978 : f32 = u_xlat90;
            u_xlat90 = ((x_4975 * x_4976) + x_4978);
            let x_4981 : vec4<f32> = u_xlat21;
            let x_4982 : vec2<f32> = vec2<f32>(x_4981.x, x_4981.y);
            let x_4984 : f32 = u_xlat12.z;
            txVec76 = vec3<f32>(x_4982.x, x_4982.y, x_4984);
            let x_4991 : vec3<f32> = txVec76;
            let x_4993 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4991.xy, x_4991.z);
            u_xlat91 = x_4993;
            let x_4995 : f32 = u_xlat24.w;
            let x_4996 : f32 = u_xlat91;
            let x_4998 : f32 = u_xlat90;
            u_xlat90 = ((x_4995 * x_4996) + x_4998);
            let x_5001 : vec4<f32> = u_xlat20;
            let x_5002 : vec2<f32> = vec2<f32>(x_5001.x, x_5001.y);
            let x_5004 : f32 = u_xlat12.z;
            txVec77 = vec3<f32>(x_5002.x, x_5002.y, x_5004);
            let x_5011 : vec3<f32> = txVec77;
            let x_5013 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5011.xy, x_5011.z);
            u_xlat91 = x_5013;
            let x_5015 : f32 = u_xlat25.x;
            let x_5016 : f32 = u_xlat91;
            let x_5018 : f32 = u_xlat90;
            u_xlat90 = ((x_5015 * x_5016) + x_5018);
            let x_5021 : vec4<f32> = u_xlat20;
            let x_5022 : vec2<f32> = vec2<f32>(x_5021.z, x_5021.w);
            let x_5024 : f32 = u_xlat12.z;
            txVec78 = vec3<f32>(x_5022.x, x_5022.y, x_5024);
            let x_5031 : vec3<f32> = txVec78;
            let x_5033 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5031.xy, x_5031.z);
            u_xlat91 = x_5033;
            let x_5035 : f32 = u_xlat25.y;
            let x_5036 : f32 = u_xlat91;
            let x_5038 : f32 = u_xlat90;
            u_xlat90 = ((x_5035 * x_5036) + x_5038);
            let x_5041 : vec2<f32> = u_xlat73;
            let x_5043 : f32 = u_xlat12.z;
            txVec79 = vec3<f32>(x_5041.x, x_5041.y, x_5043);
            let x_5050 : vec3<f32> = txVec79;
            let x_5052 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5050.xy, x_5050.z);
            u_xlat91 = x_5052;
            let x_5054 : f32 = u_xlat25.z;
            let x_5055 : f32 = u_xlat91;
            let x_5057 : f32 = u_xlat90;
            u_xlat90 = ((x_5054 * x_5055) + x_5057);
            let x_5060 : vec4<f32> = u_xlat21;
            let x_5061 : vec2<f32> = vec2<f32>(x_5060.z, x_5060.w);
            let x_5063 : f32 = u_xlat12.z;
            txVec80 = vec3<f32>(x_5061.x, x_5061.y, x_5063);
            let x_5070 : vec3<f32> = txVec80;
            let x_5072 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5070.xy, x_5070.z);
            u_xlat91 = x_5072;
            let x_5074 : f32 = u_xlat25.w;
            let x_5075 : f32 = u_xlat91;
            let x_5077 : f32 = u_xlat90;
            u_xlat90 = ((x_5074 * x_5075) + x_5077);
            let x_5080 : vec4<f32> = u_xlat22;
            let x_5081 : vec2<f32> = vec2<f32>(x_5080.x, x_5080.y);
            let x_5083 : f32 = u_xlat12.z;
            txVec81 = vec3<f32>(x_5081.x, x_5081.y, x_5083);
            let x_5090 : vec3<f32> = txVec81;
            let x_5092 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5090.xy, x_5090.z);
            u_xlat91 = x_5092;
            let x_5094 : f32 = u_xlat26.x;
            let x_5095 : f32 = u_xlat91;
            let x_5097 : f32 = u_xlat90;
            u_xlat90 = ((x_5094 * x_5095) + x_5097);
            let x_5100 : vec4<f32> = u_xlat22;
            let x_5101 : vec2<f32> = vec2<f32>(x_5100.z, x_5100.w);
            let x_5103 : f32 = u_xlat12.z;
            txVec82 = vec3<f32>(x_5101.x, x_5101.y, x_5103);
            let x_5110 : vec3<f32> = txVec82;
            let x_5112 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5110.xy, x_5110.z);
            u_xlat91 = x_5112;
            let x_5114 : f32 = u_xlat26.y;
            let x_5115 : f32 = u_xlat91;
            let x_5117 : f32 = u_xlat90;
            u_xlat90 = ((x_5114 * x_5115) + x_5117);
            let x_5120 : vec2<f32> = u_xlat41;
            let x_5122 : f32 = u_xlat12.z;
            txVec83 = vec3<f32>(x_5120.x, x_5120.y, x_5122);
            let x_5129 : vec3<f32> = txVec83;
            let x_5131 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5129.xy, x_5129.z);
            u_xlat91 = x_5131;
            let x_5133 : f32 = u_xlat26.z;
            let x_5134 : f32 = u_xlat91;
            let x_5136 : f32 = u_xlat90;
            u_xlat90 = ((x_5133 * x_5134) + x_5136);
            let x_5139 : vec2<f32> = u_xlat23;
            let x_5141 : f32 = u_xlat12.z;
            txVec84 = vec3<f32>(x_5139.x, x_5139.y, x_5141);
            let x_5148 : vec3<f32> = txVec84;
            let x_5150 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5148.xy, x_5148.z);
            u_xlat91 = x_5150;
            let x_5152 : f32 = u_xlat26.w;
            let x_5153 : f32 = u_xlat91;
            let x_5155 : f32 = u_xlat90;
            u_xlat90 = ((x_5152 * x_5153) + x_5155);
            let x_5158 : vec4<f32> = u_xlat17;
            let x_5159 : vec2<f32> = vec2<f32>(x_5158.x, x_5158.y);
            let x_5161 : f32 = u_xlat12.z;
            txVec85 = vec3<f32>(x_5159.x, x_5159.y, x_5161);
            let x_5168 : vec3<f32> = txVec85;
            let x_5170 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5168.xy, x_5168.z);
            u_xlat91 = x_5170;
            let x_5172 : f32 = u_xlat13.x;
            let x_5173 : f32 = u_xlat91;
            let x_5175 : f32 = u_xlat90;
            u_xlat90 = ((x_5172 * x_5173) + x_5175);
            let x_5178 : vec4<f32> = u_xlat17;
            let x_5179 : vec2<f32> = vec2<f32>(x_5178.z, x_5178.w);
            let x_5181 : f32 = u_xlat12.z;
            txVec86 = vec3<f32>(x_5179.x, x_5179.y, x_5181);
            let x_5188 : vec3<f32> = txVec86;
            let x_5190 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5188.xy, x_5188.z);
            u_xlat91 = x_5190;
            let x_5192 : f32 = u_xlat13.y;
            let x_5193 : f32 = u_xlat91;
            let x_5195 : f32 = u_xlat90;
            u_xlat90 = ((x_5192 * x_5193) + x_5195);
            let x_5198 : vec2<f32> = u_xlat70;
            let x_5200 : f32 = u_xlat12.z;
            txVec87 = vec3<f32>(x_5198.x, x_5198.y, x_5200);
            let x_5207 : vec3<f32> = txVec87;
            let x_5209 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5207.xy, x_5207.z);
            u_xlat91 = x_5209;
            let x_5211 : f32 = u_xlat13.z;
            let x_5212 : f32 = u_xlat91;
            let x_5214 : f32 = u_xlat90;
            u_xlat90 = ((x_5211 * x_5212) + x_5214);
            let x_5217 : vec2<f32> = u_xlat62;
            let x_5219 : f32 = u_xlat12.z;
            txVec88 = vec3<f32>(x_5217.x, x_5217.y, x_5219);
            let x_5226 : vec3<f32> = txVec88;
            let x_5228 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5226.xy, x_5226.z);
            u_xlat62.x = x_5228;
            let x_5231 : f32 = u_xlat13.w;
            let x_5233 : f32 = u_xlat62.x;
            let x_5235 : f32 = u_xlat90;
            u_xlat88 = ((x_5231 * x_5233) + x_5235);
          }
        }
      } else {
        let x_5239 : vec4<f32> = u_xlat12;
        let x_5240 : vec2<f32> = vec2<f32>(x_5239.x, x_5239.y);
        let x_5242 : f32 = u_xlat12.z;
        txVec89 = vec3<f32>(x_5240.x, x_5240.y, x_5242);
        let x_5249 : vec3<f32> = txVec89;
        let x_5251 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5249.xy, x_5249.z);
        u_xlat88 = x_5251;
      }
      let x_5252 : i32 = u_xlati84;
      let x_5254 : f32 = x_248.x_AdditionalShadowParams[x_5252].x;
      u_xlat62.x = (1.0f + -(x_5254));
      let x_5258 : f32 = u_xlat88;
      let x_5259 : i32 = u_xlati84;
      let x_5261 : f32 = x_248.x_AdditionalShadowParams[x_5259].x;
      let x_5264 : f32 = u_xlat62.x;
      u_xlat88 = ((x_5258 * x_5261) + x_5264);
      let x_5267 : f32 = u_xlat12.z;
      u_xlatb62 = (0.0f >= x_5267);
      let x_5271 : f32 = u_xlat12.z;
      u_xlatb89 = (x_5271 >= 1.0f);
      let x_5273 : bool = u_xlatb89;
      let x_5274 : bool = u_xlatb62;
      u_xlatb62 = (x_5273 | x_5274);
      let x_5276 : bool = u_xlatb62;
      let x_5277 : f32 = u_xlat88;
      u_xlat88 = select(x_5277, 1.0f, x_5276);
    } else {
      u_xlat88 = 1.0f;
    }
    let x_5280 : f32 = u_xlat88;
    u_xlat62.x = (-(x_5280) + 1.0f);
    let x_5284 : f32 = u_xlat56;
    let x_5286 : f32 = u_xlat62.x;
    let x_5288 : f32 = u_xlat88;
    u_xlat88 = ((x_5284 * x_5286) + x_5288);
    let x_5291 : i32 = u_xlati84;
    u_xlati62 = (1i << bitcast<u32>((x_5291 & 31i)));
    let x_5295 : i32 = u_xlati62;
    let x_5298 : f32 = x_3430.x_AdditionalLightsCookieEnableBits;
    u_xlati62 = bitcast<i32>((bitcast<u32>(x_5295) & bitcast<u32>(x_5298)));
    let x_5302 : i32 = u_xlati62;
    if ((x_5302 != 0i)) {
      let x_5306 : i32 = u_xlati84;
      let x_5308 : f32 = x_3430.x_AdditionalLightsLightTypes[x_5306].el;
      u_xlati62 = i32(x_5308);
      let x_5311 : i32 = u_xlati62;
      u_xlati89 = select(1i, 0i, (x_5311 != 0i));
      let x_5315 : i32 = u_xlati84;
      u_xlati90 = (x_5315 << bitcast<u32>(2i));
      let x_5317 : i32 = u_xlati89;
      if ((x_5317 != 0i)) {
        let x_5321 : vec3<f32> = vs_INTERP8;
        let x_5323 : i32 = u_xlati90;
        let x_5326 : i32 = u_xlati90;
        let x_5330 : vec4<f32> = x_3430.x_AdditionalLightsWorldToLights[((x_5323 + 1i) / 4i)][((x_5326 + 1i) % 4i)];
        let x_5332 : vec3<f32> = (vec3<f32>(x_5321.y, x_5321.y, x_5321.y) * vec3<f32>(x_5330.x, x_5330.y, x_5330.w));
        let x_5333 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_5332.x, x_5332.y, x_5332.z, x_5333.w);
        let x_5335 : i32 = u_xlati90;
        let x_5337 : i32 = u_xlati90;
        let x_5340 : vec4<f32> = x_3430.x_AdditionalLightsWorldToLights[(x_5335 / 4i)][(x_5337 % 4i)];
        let x_5342 : vec3<f32> = vs_INTERP8;
        let x_5345 : vec4<f32> = u_xlat12;
        let x_5347 : vec3<f32> = ((vec3<f32>(x_5340.x, x_5340.y, x_5340.w) * vec3<f32>(x_5342.x, x_5342.x, x_5342.x)) + vec3<f32>(x_5345.x, x_5345.y, x_5345.z));
        let x_5348 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_5347.x, x_5347.y, x_5347.z, x_5348.w);
        let x_5350 : i32 = u_xlati90;
        let x_5353 : i32 = u_xlati90;
        let x_5357 : vec4<f32> = x_3430.x_AdditionalLightsWorldToLights[((x_5350 + 2i) / 4i)][((x_5353 + 2i) % 4i)];
        let x_5359 : vec3<f32> = vs_INTERP8;
        let x_5362 : vec4<f32> = u_xlat12;
        let x_5364 : vec3<f32> = ((vec3<f32>(x_5357.x, x_5357.y, x_5357.w) * vec3<f32>(x_5359.z, x_5359.z, x_5359.z)) + vec3<f32>(x_5362.x, x_5362.y, x_5362.z));
        let x_5365 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_5364.x, x_5364.y, x_5364.z, x_5365.w);
        let x_5367 : vec4<f32> = u_xlat12;
        let x_5369 : i32 = u_xlati90;
        let x_5372 : i32 = u_xlati90;
        let x_5376 : vec4<f32> = x_3430.x_AdditionalLightsWorldToLights[((x_5369 + 3i) / 4i)][((x_5372 + 3i) % 4i)];
        let x_5378 : vec3<f32> = (vec3<f32>(x_5367.x, x_5367.y, x_5367.z) + vec3<f32>(x_5376.x, x_5376.y, x_5376.w));
        let x_5379 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_5378.x, x_5378.y, x_5378.z, x_5379.w);
        let x_5381 : vec4<f32> = u_xlat12;
        let x_5383 : vec4<f32> = u_xlat12;
        let x_5385 : vec2<f32> = (vec2<f32>(x_5381.x, x_5381.y) / vec2<f32>(x_5383.z, x_5383.z));
        let x_5386 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_5385.x, x_5385.y, x_5386.z, x_5386.w);
        let x_5388 : vec4<f32> = u_xlat12;
        let x_5391 : vec2<f32> = ((vec2<f32>(x_5388.x, x_5388.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_5392 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_5391.x, x_5391.y, x_5392.z, x_5392.w);
        let x_5394 : vec4<f32> = u_xlat12;
        let x_5398 : vec2<f32> = clamp(vec2<f32>(x_5394.x, x_5394.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_5399 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_5398.x, x_5398.y, x_5399.z, x_5399.w);
        let x_5401 : i32 = u_xlati84;
        let x_5403 : vec4<f32> = x_3430.x_AdditionalLightsCookieAtlasUVRects[x_5401];
        let x_5405 : vec4<f32> = u_xlat12;
        let x_5408 : i32 = u_xlati84;
        let x_5410 : vec4<f32> = x_3430.x_AdditionalLightsCookieAtlasUVRects[x_5408];
        let x_5412 : vec2<f32> = ((vec2<f32>(x_5403.x, x_5403.y) * vec2<f32>(x_5405.x, x_5405.y)) + vec2<f32>(x_5410.z, x_5410.w));
        let x_5413 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_5412.x, x_5412.y, x_5413.z, x_5413.w);
      } else {
        let x_5416 : i32 = u_xlati62;
        u_xlatb62 = (x_5416 == 1i);
        let x_5418 : bool = u_xlatb62;
        u_xlati62 = select(0i, 1i, x_5418);
        let x_5420 : i32 = u_xlati62;
        if ((x_5420 != 0i)) {
          let x_5424 : vec3<f32> = vs_INTERP8;
          let x_5426 : i32 = u_xlati90;
          let x_5429 : i32 = u_xlati90;
          let x_5433 : vec4<f32> = x_3430.x_AdditionalLightsWorldToLights[((x_5426 + 1i) / 4i)][((x_5429 + 1i) % 4i)];
          u_xlat62 = (vec2<f32>(x_5424.y, x_5424.y) * vec2<f32>(x_5433.x, x_5433.y));
          let x_5436 : i32 = u_xlati90;
          let x_5438 : i32 = u_xlati90;
          let x_5441 : vec4<f32> = x_3430.x_AdditionalLightsWorldToLights[(x_5436 / 4i)][(x_5438 % 4i)];
          let x_5443 : vec3<f32> = vs_INTERP8;
          let x_5446 : vec2<f32> = u_xlat62;
          u_xlat62 = ((vec2<f32>(x_5441.x, x_5441.y) * vec2<f32>(x_5443.x, x_5443.x)) + x_5446);
          let x_5448 : i32 = u_xlati90;
          let x_5451 : i32 = u_xlati90;
          let x_5455 : vec4<f32> = x_3430.x_AdditionalLightsWorldToLights[((x_5448 + 2i) / 4i)][((x_5451 + 2i) % 4i)];
          let x_5457 : vec3<f32> = vs_INTERP8;
          let x_5460 : vec2<f32> = u_xlat62;
          u_xlat62 = ((vec2<f32>(x_5455.x, x_5455.y) * vec2<f32>(x_5457.z, x_5457.z)) + x_5460);
          let x_5462 : vec2<f32> = u_xlat62;
          let x_5463 : i32 = u_xlati90;
          let x_5466 : i32 = u_xlati90;
          let x_5470 : vec4<f32> = x_3430.x_AdditionalLightsWorldToLights[((x_5463 + 3i) / 4i)][((x_5466 + 3i) % 4i)];
          u_xlat62 = (x_5462 + vec2<f32>(x_5470.x, x_5470.y));
          let x_5473 : vec2<f32> = u_xlat62;
          u_xlat62 = ((x_5473 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_5476 : vec2<f32> = u_xlat62;
          u_xlat62 = fract(x_5476);
          let x_5478 : i32 = u_xlati84;
          let x_5480 : vec4<f32> = x_3430.x_AdditionalLightsCookieAtlasUVRects[x_5478];
          let x_5482 : vec2<f32> = u_xlat62;
          let x_5484 : i32 = u_xlati84;
          let x_5486 : vec4<f32> = x_3430.x_AdditionalLightsCookieAtlasUVRects[x_5484];
          let x_5488 : vec2<f32> = ((vec2<f32>(x_5480.x, x_5480.y) * x_5482) + vec2<f32>(x_5486.z, x_5486.w));
          let x_5489 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5488.x, x_5488.y, x_5489.z, x_5489.w);
        } else {
          let x_5492 : vec3<f32> = vs_INTERP8;
          let x_5494 : i32 = u_xlati90;
          let x_5497 : i32 = u_xlati90;
          let x_5501 : vec4<f32> = x_3430.x_AdditionalLightsWorldToLights[((x_5494 + 1i) / 4i)][((x_5497 + 1i) % 4i)];
          u_xlat13 = (vec4<f32>(x_5492.y, x_5492.y, x_5492.y, x_5492.y) * x_5501);
          let x_5503 : i32 = u_xlati90;
          let x_5505 : i32 = u_xlati90;
          let x_5508 : vec4<f32> = x_3430.x_AdditionalLightsWorldToLights[(x_5503 / 4i)][(x_5505 % 4i)];
          let x_5509 : vec3<f32> = vs_INTERP8;
          let x_5512 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_5508 * vec4<f32>(x_5509.x, x_5509.x, x_5509.x, x_5509.x)) + x_5512);
          let x_5514 : i32 = u_xlati90;
          let x_5517 : i32 = u_xlati90;
          let x_5521 : vec4<f32> = x_3430.x_AdditionalLightsWorldToLights[((x_5514 + 2i) / 4i)][((x_5517 + 2i) % 4i)];
          let x_5522 : vec3<f32> = vs_INTERP8;
          let x_5525 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_5521 * vec4<f32>(x_5522.z, x_5522.z, x_5522.z, x_5522.z)) + x_5525);
          let x_5527 : vec4<f32> = u_xlat13;
          let x_5528 : i32 = u_xlati90;
          let x_5531 : i32 = u_xlati90;
          let x_5535 : vec4<f32> = x_3430.x_AdditionalLightsWorldToLights[((x_5528 + 3i) / 4i)][((x_5531 + 3i) % 4i)];
          u_xlat13 = (x_5527 + x_5535);
          let x_5537 : vec4<f32> = u_xlat13;
          let x_5539 : vec4<f32> = u_xlat13;
          let x_5541 : vec3<f32> = (vec3<f32>(x_5537.x, x_5537.y, x_5537.z) / vec3<f32>(x_5539.w, x_5539.w, x_5539.w));
          let x_5542 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_5541.x, x_5541.y, x_5541.z, x_5542.w);
          let x_5544 : vec4<f32> = u_xlat13;
          let x_5546 : vec4<f32> = u_xlat13;
          u_xlat62.x = dot(vec3<f32>(x_5544.x, x_5544.y, x_5544.z), vec3<f32>(x_5546.x, x_5546.y, x_5546.z));
          let x_5551 : f32 = u_xlat62.x;
          u_xlat62.x = inverseSqrt(x_5551);
          let x_5554 : vec2<f32> = u_xlat62;
          let x_5556 : vec4<f32> = u_xlat13;
          let x_5558 : vec3<f32> = (vec3<f32>(x_5554.x, x_5554.x, x_5554.x) * vec3<f32>(x_5556.x, x_5556.y, x_5556.z));
          let x_5559 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_5558.x, x_5558.y, x_5558.z, x_5559.w);
          let x_5561 : vec4<f32> = u_xlat13;
          u_xlat62.x = dot(abs(vec3<f32>(x_5561.x, x_5561.y, x_5561.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_5568 : f32 = u_xlat62.x;
          u_xlat62.x = max(x_5568, 0.00000099999999747524f);
          let x_5573 : f32 = u_xlat62.x;
          u_xlat62.x = (1.0f / x_5573);
          let x_5576 : vec2<f32> = u_xlat62;
          let x_5578 : vec4<f32> = u_xlat13;
          let x_5580 : vec3<f32> = (vec3<f32>(x_5576.x, x_5576.x, x_5576.x) * vec3<f32>(x_5578.z, x_5578.x, x_5578.y));
          let x_5581 : vec4<f32> = u_xlat14;
          u_xlat14 = vec4<f32>(x_5580.x, x_5580.y, x_5580.z, x_5581.w);
          let x_5584 : f32 = u_xlat14.x;
          u_xlat14.x = -(x_5584);
          let x_5588 : f32 = u_xlat14.x;
          u_xlat14.x = clamp(x_5588, 0.0f, 1.0f);
          let x_5592 : vec4<f32> = u_xlat14;
          let x_5594 : vec4<bool> = (vec4<f32>(x_5592.y, x_5592.z, x_5592.y, x_5592.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb66 = vec2<bool>(x_5594.x, x_5594.y);
          let x_5598 : bool = u_xlatb66.x;
          if (x_5598) {
            let x_5603 : f32 = u_xlat14.x;
            x_5599 = x_5603;
          } else {
            let x_5606 : f32 = u_xlat14.x;
            x_5599 = -(x_5606);
          }
          let x_5608 : f32 = x_5599;
          u_xlat66.x = x_5608;
          let x_5611 : bool = u_xlatb66.y;
          if (x_5611) {
            let x_5616 : f32 = u_xlat14.x;
            x_5612 = x_5616;
          } else {
            let x_5619 : f32 = u_xlat14.x;
            x_5612 = -(x_5619);
          }
          let x_5621 : f32 = x_5612;
          u_xlat66.y = x_5621;
          let x_5623 : vec4<f32> = u_xlat13;
          let x_5625 : vec2<f32> = u_xlat62;
          let x_5628 : vec2<f32> = u_xlat66;
          u_xlat62 = ((vec2<f32>(x_5623.x, x_5623.y) * vec2<f32>(x_5625.x, x_5625.x)) + x_5628);
          let x_5630 : vec2<f32> = u_xlat62;
          u_xlat62 = ((x_5630 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_5633 : vec2<f32> = u_xlat62;
          u_xlat62 = clamp(x_5633, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_5637 : i32 = u_xlati84;
          let x_5639 : vec4<f32> = x_3430.x_AdditionalLightsCookieAtlasUVRects[x_5637];
          let x_5641 : vec2<f32> = u_xlat62;
          let x_5643 : i32 = u_xlati84;
          let x_5645 : vec4<f32> = x_3430.x_AdditionalLightsCookieAtlasUVRects[x_5643];
          let x_5647 : vec2<f32> = ((vec2<f32>(x_5639.x, x_5639.y) * x_5641) + vec2<f32>(x_5645.z, x_5645.w));
          let x_5648 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5647.x, x_5647.y, x_5648.z, x_5648.w);
        }
      }
      let x_5655 : vec4<f32> = u_xlat12;
      let x_5657 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_5655.x, x_5655.y), 0.0f);
      u_xlat12 = x_5657;
      let x_5659 : bool = u_xlatb8.y;
      if (x_5659) {
        let x_5664 : f32 = u_xlat12.w;
        x_5660 = x_5664;
      } else {
        let x_5667 : f32 = u_xlat12.x;
        x_5660 = x_5667;
      }
      let x_5668 : f32 = x_5660;
      u_xlat62.x = x_5668;
      let x_5671 : bool = u_xlatb8.x;
      if (x_5671) {
        let x_5675 : vec4<f32> = u_xlat12;
        x_5672 = vec3<f32>(x_5675.x, x_5675.y, x_5675.z);
      } else {
        let x_5678 : vec2<f32> = u_xlat62;
        x_5672 = vec3<f32>(x_5678.x, x_5678.x, x_5678.x);
      }
      let x_5680 : vec3<f32> = x_5672;
      let x_5681 : vec4<f32> = u_xlat12;
      u_xlat12 = vec4<f32>(x_5680.x, x_5680.y, x_5680.z, x_5681.w);
    } else {
      u_xlat12.x = 1.0f;
      u_xlat12.y = 1.0f;
      u_xlat12.z = 1.0f;
    }
    let x_5687 : vec4<f32> = u_xlat12;
    let x_5689 : i32 = u_xlati84;
    let x_5691 : vec4<f32> = x_3864.x_AdditionalLightsColor[x_5689];
    let x_5693 : vec3<f32> = (vec3<f32>(x_5687.x, x_5687.y, x_5687.z) * vec3<f32>(x_5691.x, x_5691.y, x_5691.z));
    let x_5694 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_5693.x, x_5693.y, x_5693.z, x_5694.w);
    let x_5696 : f32 = u_xlat85;
    let x_5697 : f32 = u_xlat88;
    u_xlat84 = (x_5696 * x_5697);
    let x_5699 : vec4<f32> = u_xlat3;
    let x_5701 : vec4<f32> = u_xlat11;
    u_xlat85 = dot(vec3<f32>(x_5699.x, x_5699.y, x_5699.z), vec3<f32>(x_5701.x, x_5701.y, x_5701.z));
    let x_5704 : f32 = u_xlat85;
    u_xlat85 = clamp(x_5704, 0.0f, 1.0f);
    let x_5706 : f32 = u_xlat84;
    let x_5707 : f32 = u_xlat85;
    u_xlat84 = (x_5706 * x_5707);
    let x_5709 : f32 = u_xlat84;
    let x_5711 : vec4<f32> = u_xlat12;
    let x_5713 : vec3<f32> = (vec3<f32>(x_5709, x_5709, x_5709) * vec3<f32>(x_5711.x, x_5711.y, x_5711.z));
    let x_5714 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_5713.x, x_5713.y, x_5713.z, x_5714.w);
    let x_5716 : vec4<f32> = u_xlat10;
    let x_5718 : f32 = u_xlat86;
    let x_5721 : vec3<f32> = u_xlat1;
    let x_5722 : vec3<f32> = ((vec3<f32>(x_5716.x, x_5716.y, x_5716.z) * vec3<f32>(x_5718, x_5718, x_5718)) + x_5721);
    let x_5723 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_5722.x, x_5722.y, x_5722.z, x_5723.w);
    let x_5725 : vec4<f32> = u_xlat10;
    let x_5727 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(vec3<f32>(x_5725.x, x_5725.y, x_5725.z), vec3<f32>(x_5727.x, x_5727.y, x_5727.z));
    let x_5730 : f32 = u_xlat84;
    u_xlat84 = max(x_5730, 1.17549435e-38f);
    let x_5732 : f32 = u_xlat84;
    u_xlat84 = inverseSqrt(x_5732);
    let x_5734 : f32 = u_xlat84;
    let x_5736 : vec4<f32> = u_xlat10;
    let x_5738 : vec3<f32> = (vec3<f32>(x_5734, x_5734, x_5734) * vec3<f32>(x_5736.x, x_5736.y, x_5736.z));
    let x_5739 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_5738.x, x_5738.y, x_5738.z, x_5739.w);
    let x_5741 : vec4<f32> = u_xlat3;
    let x_5743 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(vec3<f32>(x_5741.x, x_5741.y, x_5741.z), vec3<f32>(x_5743.x, x_5743.y, x_5743.z));
    let x_5746 : f32 = u_xlat84;
    u_xlat84 = clamp(x_5746, 0.0f, 1.0f);
    let x_5748 : vec4<f32> = u_xlat11;
    let x_5750 : vec4<f32> = u_xlat10;
    u_xlat85 = dot(vec3<f32>(x_5748.x, x_5748.y, x_5748.z), vec3<f32>(x_5750.x, x_5750.y, x_5750.z));
    let x_5753 : f32 = u_xlat85;
    u_xlat85 = clamp(x_5753, 0.0f, 1.0f);
    let x_5755 : f32 = u_xlat84;
    let x_5756 : f32 = u_xlat84;
    u_xlat84 = (x_5755 * x_5756);
    let x_5758 : f32 = u_xlat84;
    let x_5760 : f32 = u_xlat61.x;
    u_xlat84 = ((x_5758 * x_5760) + 1.00001001358032226562f);
    let x_5763 : f32 = u_xlat85;
    let x_5764 : f32 = u_xlat85;
    u_xlat85 = (x_5763 * x_5764);
    let x_5766 : f32 = u_xlat84;
    let x_5767 : f32 = u_xlat84;
    u_xlat84 = (x_5766 * x_5767);
    let x_5769 : f32 = u_xlat85;
    u_xlat85 = max(x_5769, 0.10000000149011611938f);
    let x_5771 : f32 = u_xlat84;
    let x_5772 : f32 = u_xlat85;
    u_xlat84 = (x_5771 * x_5772);
    let x_5775 : f32 = u_xlat7.x;
    let x_5776 : f32 = u_xlat84;
    u_xlat84 = (x_5775 * x_5776);
    let x_5778 : f32 = u_xlat87;
    let x_5779 : f32 = u_xlat84;
    u_xlat84 = (x_5778 / x_5779);
    let x_5781 : f32 = u_xlat84;
    let x_5784 : vec3<f32> = u_xlat4;
    let x_5785 : vec3<f32> = ((vec3<f32>(x_5781, x_5781, x_5781) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_5784);
    let x_5786 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_5785.x, x_5785.y, x_5785.z, x_5786.w);
    let x_5788 : vec4<f32> = u_xlat10;
    let x_5790 : vec4<f32> = u_xlat12;
    let x_5793 : vec4<f32> = u_xlat9;
    let x_5795 : vec3<f32> = ((vec3<f32>(x_5788.x, x_5788.y, x_5788.z) * vec3<f32>(x_5790.x, x_5790.y, x_5790.z)) + vec3<f32>(x_5793.x, x_5793.y, x_5793.z));
    let x_5796 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5795.x, x_5795.y, x_5795.z, x_5796.w);

    continuing {
      let x_5798 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_5798 + bitcast<u32>(1i));
    }
  }
  let x_5800 : vec4<f32> = u_xlat5;
  let x_5802 : f32 = u_xlat34;
  let x_5805 : vec4<f32> = u_xlat6;
  u_xlat1 = ((vec3<f32>(x_5800.x, x_5800.y, x_5800.z) * vec3<f32>(x_5802, x_5802, x_5802)) + vec3<f32>(x_5805.x, x_5805.y, x_5805.z));
  let x_5808 : vec4<f32> = u_xlat9;
  let x_5810 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_5808.x, x_5808.y, x_5808.z) + x_5810);
  let x_5812 : vec4<f32> = vs_INTERP6;
  let x_5814 : vec3<f32> = u_xlat0;
  let x_5816 : vec3<f32> = u_xlat1;
  u_xlat0 = ((vec3<f32>(x_5812.w, x_5812.w, x_5812.w) * x_5814) + x_5816);
  let x_5819 : f32 = u_xlat29.x;
  let x_5821 : f32 = u_xlat29.x;
  u_xlat81 = (x_5819 * -(x_5821));
  let x_5824 : f32 = u_xlat81;
  u_xlat81 = exp2(x_5824);
  let x_5826 : vec3<f32> = u_xlat0;
  let x_5828 : vec4<f32> = x_75.unity_FogColor;
  u_xlat0 = (x_5826 + -(vec3<f32>(x_5828.x, x_5828.y, x_5828.z)));
  let x_5834 : f32 = u_xlat81;
  let x_5836 : vec3<f32> = u_xlat0;
  let x_5839 : vec4<f32> = x_75.unity_FogColor;
  let x_5841 : vec3<f32> = ((vec3<f32>(x_5834, x_5834, x_5834) * x_5836) + vec3<f32>(x_5839.x, x_5839.y, x_5839.z));
  let x_5842 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_5841.x, x_5841.y, x_5841.z, x_5842.w);
  let x_5844 : bool = u_xlatb2;
  let x_5845 : f32 = u_xlat82;
  SV_Target0.w = select(1.0f, x_5845, x_5844);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(5) vs_INTERP9_param : vec3<f32>, @location(4) vs_INTERP8_param : vec3<f32>, @location(2) vs_INTERP5_param : vec4<f32>, @location(3) vs_INTERP6_param : vec4<f32>, @location(1) vs_INTERP4_param : vec4<f32>, @location(0) vs_INTERP0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP9 = vs_INTERP9_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP6 = vs_INTERP6_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP0 = vs_INTERP0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


