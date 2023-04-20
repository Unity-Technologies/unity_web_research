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

@group(0) @binding(5) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(11) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP5 : vec4<f32>;

var<private> u_xlat4 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_188 : UnityPerMaterial;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(6) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(12) var samplerTexture2D_D9BFD5F1 : sampler;

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

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

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

var<private> u_xlat84 : f32;

var<private> u_xlat34 : f32;

var<private> u_xlatb61 : bool;

var<private> u_xlat62 : vec2<f32>;

var<private> u_xlat88 : f32;

var<private> u_xlat68 : vec2<f32>;

var<private> u_xlat65 : vec2<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat90 : f32;

@group(1) @binding(4) var<uniform> x_3456 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatb8 : vec2<bool>;

var<private> u_xlatu84 : u32;

var<private> u_xlati85 : i32;

var<private> u_xlati84 : i32;

@group(1) @binding(1) var<uniform> x_3890 : AdditionalLights;

var<private> u_xlat86 : f32;

var<private> u_xlati88 : i32;

var<private> u_xlatb62 : bool;

var<private> u_xlatb12 : vec4<bool>;

var<private> u_xlat89 : f32;

var<private> u_xlatb88 : bool;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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
  var x_3538 : f32;
  var x_3549 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_4026 : f32;
  var x_4035 : f32;
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
  var x_5625 : f32;
  var x_5638 : f32;
  var x_5686 : f32;
  var x_5698 : vec3<f32>;
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
  u_xlat3.w = 1.0f;
  let x_2084 : vec4<f32> = x_132.unity_SHAr;
  let x_2085 : vec4<f32> = u_xlat3;
  u_xlat7.x = dot(x_2084, x_2085);
  let x_2090 : vec4<f32> = x_132.unity_SHAg;
  let x_2091 : vec4<f32> = u_xlat3;
  u_xlat7.y = dot(x_2090, x_2091);
  let x_2096 : vec4<f32> = x_132.unity_SHAb;
  let x_2097 : vec4<f32> = u_xlat3;
  u_xlat7.z = dot(x_2096, x_2097);
  let x_2100 : vec4<f32> = u_xlat3;
  let x_2102 : vec4<f32> = u_xlat3;
  u_xlat8 = (vec4<f32>(x_2100.y, x_2100.z, x_2100.z, x_2100.x) * vec4<f32>(x_2102.x, x_2102.y, x_2102.z, x_2102.z));
  let x_2107 : vec4<f32> = x_132.unity_SHBr;
  let x_2108 : vec4<f32> = u_xlat8;
  u_xlat9.x = dot(x_2107, x_2108);
  let x_2113 : vec4<f32> = x_132.unity_SHBg;
  let x_2114 : vec4<f32> = u_xlat8;
  u_xlat9.y = dot(x_2113, x_2114);
  let x_2118 : vec4<f32> = x_132.unity_SHBb;
  let x_2119 : vec4<f32> = u_xlat8;
  u_xlat9.z = dot(x_2118, x_2119);
  let x_2123 : f32 = u_xlat3.y;
  let x_2125 : f32 = u_xlat3.y;
  u_xlat56 = (x_2123 * x_2125);
  let x_2128 : f32 = u_xlat3.x;
  let x_2130 : f32 = u_xlat3.x;
  let x_2132 : f32 = u_xlat56;
  u_xlat56 = ((x_2128 * x_2130) + -(x_2132));
  let x_2137 : vec4<f32> = x_132.unity_SHC;
  let x_2139 : f32 = u_xlat56;
  let x_2142 : vec4<f32> = u_xlat9;
  u_xlat32 = ((vec3<f32>(x_2137.x, x_2137.y, x_2137.z) * vec3<f32>(x_2139, x_2139, x_2139)) + vec3<f32>(x_2142.x, x_2142.y, x_2142.z));
  let x_2145 : vec3<f32> = u_xlat32;
  let x_2146 : vec4<f32> = u_xlat7;
  u_xlat32 = (x_2145 + vec3<f32>(x_2146.x, x_2146.y, x_2146.z));
  let x_2149 : vec3<f32> = u_xlat32;
  u_xlat32 = max(x_2149, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_2152 : f32 = u_xlat5.x;
  u_xlat5.x = x_2152;
  let x_2155 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_2155, 0.0f, 1.0f);
  let x_2158 : f32 = u_xlat82;
  u_xlat82 = x_2158;
  let x_2159 : f32 = u_xlat82;
  u_xlat82 = clamp(x_2159, 0.0f, 1.0f);
  let x_2161 : vec3<f32> = u_xlat4;
  u_xlat4 = (x_2161 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_2166 : f32 = u_xlat5.x;
  u_xlat56 = (-(x_2166) + 1.0f);
  let x_2170 : f32 = u_xlat56;
  let x_2171 : f32 = u_xlat56;
  u_xlat84 = (x_2170 * x_2171);
  let x_2173 : f32 = u_xlat84;
  u_xlat84 = max(x_2173, 0.0078125f);
  let x_2176 : f32 = u_xlat84;
  let x_2177 : f32 = u_xlat84;
  u_xlat87 = (x_2176 * x_2177);
  let x_2180 : f32 = u_xlat5.x;
  u_xlat5.x = (x_2180 + 0.04000002145767211914f);
  let x_2185 : f32 = u_xlat5.x;
  u_xlat5.x = min(x_2185, 1.0f);
  let x_2188 : f32 = u_xlat84;
  u_xlat7.x = ((x_2188 * 4.0f) + 2.0f);
  let x_2194 : f32 = vs_INTERP6.w;
  u_xlat34 = min(x_2194, 1.0f);
  let x_2196 : bool = u_xlatb81;
  if (x_2196) {
    let x_2200 : f32 = x_248.x_MainLightShadowParams.y;
    u_xlatb81 = (x_2200 == 1.0f);
    let x_2202 : bool = u_xlatb81;
    if (x_2202) {
      let x_2205 : vec4<f32> = u_xlat6;
      let x_2208 : vec4<f32> = x_248.x_MainLightShadowOffset0;
      u_xlat8 = (vec4<f32>(x_2205.x, x_2205.y, x_2205.x, x_2205.y) + x_2208);
      let x_2211 : vec4<f32> = u_xlat8;
      let x_2212 : vec2<f32> = vec2<f32>(x_2211.x, x_2211.y);
      let x_2214 : f32 = u_xlat6.z;
      txVec30 = vec3<f32>(x_2212.x, x_2212.y, x_2214);
      let x_2221 : vec3<f32> = txVec30;
      let x_2223 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2221.xy, x_2221.z);
      u_xlat9.x = x_2223;
      let x_2226 : vec4<f32> = u_xlat8;
      let x_2227 : vec2<f32> = vec2<f32>(x_2226.z, x_2226.w);
      let x_2229 : f32 = u_xlat6.z;
      txVec31 = vec3<f32>(x_2227.x, x_2227.y, x_2229);
      let x_2236 : vec3<f32> = txVec31;
      let x_2238 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2236.xy, x_2236.z);
      u_xlat9.y = x_2238;
      let x_2240 : vec4<f32> = u_xlat6;
      let x_2243 : vec4<f32> = x_248.x_MainLightShadowOffset1;
      u_xlat8 = (vec4<f32>(x_2240.x, x_2240.y, x_2240.x, x_2240.y) + x_2243);
      let x_2246 : vec4<f32> = u_xlat8;
      let x_2247 : vec2<f32> = vec2<f32>(x_2246.x, x_2246.y);
      let x_2249 : f32 = u_xlat6.z;
      txVec32 = vec3<f32>(x_2247.x, x_2247.y, x_2249);
      let x_2256 : vec3<f32> = txVec32;
      let x_2258 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2256.xy, x_2256.z);
      u_xlat9.z = x_2258;
      let x_2261 : vec4<f32> = u_xlat8;
      let x_2262 : vec2<f32> = vec2<f32>(x_2261.z, x_2261.w);
      let x_2264 : f32 = u_xlat6.z;
      txVec33 = vec3<f32>(x_2262.x, x_2262.y, x_2264);
      let x_2271 : vec3<f32> = txVec33;
      let x_2273 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2271.xy, x_2271.z);
      u_xlat9.w = x_2273;
      let x_2275 : vec4<f32> = u_xlat9;
      u_xlat81 = dot(x_2275, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_2280 : f32 = x_248.x_MainLightShadowParams.y;
      u_xlatb61 = (x_2280 == 2.0f);
      let x_2282 : bool = u_xlatb61;
      if (x_2282) {
        let x_2285 : vec4<f32> = u_xlat6;
        let x_2288 : vec4<f32> = x_248.x_MainLightShadowmapSize;
        u_xlat61 = ((vec2<f32>(x_2285.x, x_2285.y) * vec2<f32>(x_2288.z, x_2288.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2292 : vec2<f32> = u_xlat61;
        u_xlat61 = floor(x_2292);
        let x_2294 : vec4<f32> = u_xlat6;
        let x_2297 : vec4<f32> = x_248.x_MainLightShadowmapSize;
        let x_2300 : vec2<f32> = u_xlat61;
        let x_2302 : vec2<f32> = ((vec2<f32>(x_2294.x, x_2294.y) * vec2<f32>(x_2297.z, x_2297.w)) + -(x_2300));
        let x_2303 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2302.x, x_2302.y, x_2303.z, x_2303.w);
        let x_2305 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2305.x, x_2305.x, x_2305.y, x_2305.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2308 : vec4<f32> = u_xlat9;
        let x_2310 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_2308.x, x_2308.x, x_2308.z, x_2308.z) * vec4<f32>(x_2310.x, x_2310.x, x_2310.z, x_2310.z));
        let x_2314 : vec4<f32> = u_xlat10;
        u_xlat62 = (vec2<f32>(x_2314.y, x_2314.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_2317 : vec4<f32> = u_xlat10;
        let x_2320 : vec4<f32> = u_xlat8;
        let x_2323 : vec2<f32> = ((vec2<f32>(x_2317.x, x_2317.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2320.x, x_2320.y)));
        let x_2324 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2323.x, x_2324.y, x_2323.y, x_2324.w);
        let x_2326 : vec4<f32> = u_xlat8;
        let x_2329 : vec2<f32> = (-(vec2<f32>(x_2326.x, x_2326.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2330 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2329.x, x_2329.y, x_2330.z, x_2330.w);
        let x_2332 : vec4<f32> = u_xlat8;
        u_xlat64 = min(vec2<f32>(x_2332.x, x_2332.y), vec2<f32>(0.0f, 0.0f));
        let x_2335 : vec2<f32> = u_xlat64;
        let x_2337 : vec2<f32> = u_xlat64;
        let x_2339 : vec4<f32> = u_xlat10;
        u_xlat64 = ((-(x_2335) * x_2337) + vec2<f32>(x_2339.x, x_2339.y));
        let x_2342 : vec4<f32> = u_xlat8;
        let x_2344 : vec2<f32> = max(vec2<f32>(x_2342.x, x_2342.y), vec2<f32>(0.0f, 0.0f));
        let x_2345 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2344.x, x_2344.y, x_2345.z, x_2345.w);
        let x_2347 : vec4<f32> = u_xlat8;
        let x_2350 : vec4<f32> = u_xlat8;
        let x_2353 : vec4<f32> = u_xlat9;
        let x_2355 : vec2<f32> = ((-(vec2<f32>(x_2347.x, x_2347.y)) * vec2<f32>(x_2350.x, x_2350.y)) + vec2<f32>(x_2353.y, x_2353.w));
        let x_2356 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2355.x, x_2355.y, x_2356.z, x_2356.w);
        let x_2358 : vec2<f32> = u_xlat64;
        u_xlat64 = (x_2358 + vec2<f32>(1.0f, 1.0f));
        let x_2360 : vec4<f32> = u_xlat8;
        let x_2362 : vec2<f32> = (vec2<f32>(x_2360.x, x_2360.y) + vec2<f32>(1.0f, 1.0f));
        let x_2363 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2362.x, x_2362.y, x_2363.z, x_2363.w);
        let x_2365 : vec4<f32> = u_xlat9;
        let x_2367 : vec2<f32> = (vec2<f32>(x_2365.x, x_2365.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2368 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2367.x, x_2367.y, x_2368.z, x_2368.w);
        let x_2370 : vec4<f32> = u_xlat10;
        let x_2372 : vec2<f32> = (vec2<f32>(x_2370.x, x_2370.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2373 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2372.x, x_2372.y, x_2373.z, x_2373.w);
        let x_2375 : vec2<f32> = u_xlat64;
        let x_2376 : vec2<f32> = (x_2375 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2377 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2376.x, x_2376.y, x_2377.z, x_2377.w);
        let x_2379 : vec4<f32> = u_xlat8;
        let x_2381 : vec2<f32> = (vec2<f32>(x_2379.x, x_2379.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2382 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_2381.x, x_2381.y, x_2382.z, x_2382.w);
        let x_2384 : vec4<f32> = u_xlat9;
        let x_2386 : vec2<f32> = (vec2<f32>(x_2384.y, x_2384.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2387 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2386.x, x_2386.y, x_2387.z, x_2387.w);
        let x_2390 : f32 = u_xlat10.x;
        u_xlat11.z = x_2390;
        let x_2393 : f32 = u_xlat8.x;
        u_xlat11.w = x_2393;
        let x_2396 : f32 = u_xlat13.x;
        u_xlat12.z = x_2396;
        let x_2399 : f32 = u_xlat62.x;
        u_xlat12.w = x_2399;
        let x_2401 : vec4<f32> = u_xlat11;
        let x_2403 : vec4<f32> = u_xlat12;
        u_xlat9 = (vec4<f32>(x_2401.z, x_2401.w, x_2401.x, x_2401.z) + vec4<f32>(x_2403.z, x_2403.w, x_2403.x, x_2403.z));
        let x_2407 : f32 = u_xlat11.y;
        u_xlat10.z = x_2407;
        let x_2410 : f32 = u_xlat8.y;
        u_xlat10.w = x_2410;
        let x_2413 : f32 = u_xlat12.y;
        u_xlat13.z = x_2413;
        let x_2416 : f32 = u_xlat62.y;
        u_xlat13.w = x_2416;
        let x_2418 : vec4<f32> = u_xlat10;
        let x_2420 : vec4<f32> = u_xlat13;
        let x_2422 : vec3<f32> = (vec3<f32>(x_2418.z, x_2418.y, x_2418.w) + vec3<f32>(x_2420.z, x_2420.y, x_2420.w));
        let x_2423 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2422.x, x_2422.y, x_2422.z, x_2423.w);
        let x_2425 : vec4<f32> = u_xlat12;
        let x_2427 : vec4<f32> = u_xlat9;
        let x_2429 : vec3<f32> = (vec3<f32>(x_2425.x, x_2425.z, x_2425.w) / vec3<f32>(x_2427.z, x_2427.w, x_2427.y));
        let x_2430 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2429.x, x_2429.y, x_2429.z, x_2430.w);
        let x_2432 : vec4<f32> = u_xlat10;
        let x_2434 : vec3<f32> = (vec3<f32>(x_2432.x, x_2432.y, x_2432.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2435 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2434.x, x_2434.y, x_2434.z, x_2435.w);
        let x_2437 : vec4<f32> = u_xlat13;
        let x_2439 : vec4<f32> = u_xlat8;
        let x_2441 : vec3<f32> = (vec3<f32>(x_2437.z, x_2437.y, x_2437.w) / vec3<f32>(x_2439.x, x_2439.y, x_2439.z));
        let x_2442 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2441.x, x_2441.y, x_2441.z, x_2442.w);
        let x_2444 : vec4<f32> = u_xlat11;
        let x_2446 : vec3<f32> = (vec3<f32>(x_2444.x, x_2444.y, x_2444.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2447 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2446.x, x_2446.y, x_2446.z, x_2447.w);
        let x_2449 : vec4<f32> = u_xlat10;
        let x_2452 : vec4<f32> = x_248.x_MainLightShadowmapSize;
        let x_2454 : vec3<f32> = (vec3<f32>(x_2449.y, x_2449.x, x_2449.z) * vec3<f32>(x_2452.x, x_2452.x, x_2452.x));
        let x_2455 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2454.x, x_2454.y, x_2454.z, x_2455.w);
        let x_2457 : vec4<f32> = u_xlat11;
        let x_2460 : vec4<f32> = x_248.x_MainLightShadowmapSize;
        let x_2462 : vec3<f32> = (vec3<f32>(x_2457.x, x_2457.y, x_2457.z) * vec3<f32>(x_2460.y, x_2460.y, x_2460.y));
        let x_2463 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2462.x, x_2462.y, x_2462.z, x_2463.w);
        let x_2466 : f32 = u_xlat11.x;
        u_xlat10.w = x_2466;
        let x_2468 : vec2<f32> = u_xlat61;
        let x_2471 : vec4<f32> = x_248.x_MainLightShadowmapSize;
        let x_2474 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_2468.x, x_2468.y, x_2468.x, x_2468.y) * vec4<f32>(x_2471.x, x_2471.y, x_2471.x, x_2471.y)) + vec4<f32>(x_2474.y, x_2474.w, x_2474.x, x_2474.w));
        let x_2477 : vec2<f32> = u_xlat61;
        let x_2479 : vec4<f32> = x_248.x_MainLightShadowmapSize;
        let x_2482 : vec4<f32> = u_xlat10;
        let x_2484 : vec2<f32> = ((x_2477 * vec2<f32>(x_2479.x, x_2479.y)) + vec2<f32>(x_2482.z, x_2482.w));
        let x_2485 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_2484.x, x_2484.y, x_2485.z, x_2485.w);
        let x_2488 : f32 = u_xlat10.y;
        u_xlat11.w = x_2488;
        let x_2490 : vec4<f32> = u_xlat11;
        let x_2491 : vec2<f32> = vec2<f32>(x_2490.y, x_2490.z);
        let x_2492 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2492.x, x_2491.x, x_2492.z, x_2491.y);
        let x_2494 : vec2<f32> = u_xlat61;
        let x_2497 : vec4<f32> = x_248.x_MainLightShadowmapSize;
        let x_2500 : vec4<f32> = u_xlat10;
        u_xlat14 = ((vec4<f32>(x_2494.x, x_2494.y, x_2494.x, x_2494.y) * vec4<f32>(x_2497.x, x_2497.y, x_2497.x, x_2497.y)) + vec4<f32>(x_2500.x, x_2500.y, x_2500.z, x_2500.y));
        let x_2503 : vec2<f32> = u_xlat61;
        let x_2506 : vec4<f32> = x_248.x_MainLightShadowmapSize;
        let x_2509 : vec4<f32> = u_xlat11;
        u_xlat11 = ((vec4<f32>(x_2503.x, x_2503.y, x_2503.x, x_2503.y) * vec4<f32>(x_2506.x, x_2506.y, x_2506.x, x_2506.y)) + vec4<f32>(x_2509.w, x_2509.y, x_2509.w, x_2509.z));
        let x_2512 : vec2<f32> = u_xlat61;
        let x_2515 : vec4<f32> = x_248.x_MainLightShadowmapSize;
        let x_2518 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_2512.x, x_2512.y, x_2512.x, x_2512.y) * vec4<f32>(x_2515.x, x_2515.y, x_2515.x, x_2515.y)) + vec4<f32>(x_2518.x, x_2518.w, x_2518.z, x_2518.w));
        let x_2521 : vec4<f32> = u_xlat8;
        let x_2523 : vec4<f32> = u_xlat9;
        u_xlat15 = (vec4<f32>(x_2521.x, x_2521.x, x_2521.x, x_2521.y) * vec4<f32>(x_2523.z, x_2523.w, x_2523.y, x_2523.z));
        let x_2526 : vec4<f32> = u_xlat8;
        let x_2528 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_2526.y, x_2526.y, x_2526.z, x_2526.z) * x_2528);
        let x_2531 : f32 = u_xlat8.z;
        let x_2533 : f32 = u_xlat9.y;
        u_xlat61.x = (x_2531 * x_2533);
        let x_2537 : vec4<f32> = u_xlat12;
        let x_2538 : vec2<f32> = vec2<f32>(x_2537.x, x_2537.y);
        let x_2540 : f32 = u_xlat6.z;
        txVec34 = vec3<f32>(x_2538.x, x_2538.y, x_2540);
        let x_2548 : vec3<f32> = txVec34;
        let x_2550 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2548.xy, x_2548.z);
        u_xlat88 = x_2550;
        let x_2552 : vec4<f32> = u_xlat12;
        let x_2553 : vec2<f32> = vec2<f32>(x_2552.z, x_2552.w);
        let x_2555 : f32 = u_xlat6.z;
        txVec35 = vec3<f32>(x_2553.x, x_2553.y, x_2555);
        let x_2562 : vec3<f32> = txVec35;
        let x_2564 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2562.xy, x_2562.z);
        u_xlat8.x = x_2564;
        let x_2567 : f32 = u_xlat8.x;
        let x_2569 : f32 = u_xlat15.y;
        u_xlat8.x = (x_2567 * x_2569);
        let x_2573 : f32 = u_xlat15.x;
        let x_2574 : f32 = u_xlat88;
        let x_2577 : f32 = u_xlat8.x;
        u_xlat88 = ((x_2573 * x_2574) + x_2577);
        let x_2580 : vec4<f32> = u_xlat13;
        let x_2581 : vec2<f32> = vec2<f32>(x_2580.x, x_2580.y);
        let x_2583 : f32 = u_xlat6.z;
        txVec36 = vec3<f32>(x_2581.x, x_2581.y, x_2583);
        let x_2590 : vec3<f32> = txVec36;
        let x_2592 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2590.xy, x_2590.z);
        u_xlat8.x = x_2592;
        let x_2595 : f32 = u_xlat15.z;
        let x_2597 : f32 = u_xlat8.x;
        let x_2599 : f32 = u_xlat88;
        u_xlat88 = ((x_2595 * x_2597) + x_2599);
        let x_2602 : vec4<f32> = u_xlat11;
        let x_2603 : vec2<f32> = vec2<f32>(x_2602.x, x_2602.y);
        let x_2605 : f32 = u_xlat6.z;
        txVec37 = vec3<f32>(x_2603.x, x_2603.y, x_2605);
        let x_2612 : vec3<f32> = txVec37;
        let x_2614 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2612.xy, x_2612.z);
        u_xlat8.x = x_2614;
        let x_2617 : f32 = u_xlat15.w;
        let x_2619 : f32 = u_xlat8.x;
        let x_2621 : f32 = u_xlat88;
        u_xlat88 = ((x_2617 * x_2619) + x_2621);
        let x_2624 : vec4<f32> = u_xlat14;
        let x_2625 : vec2<f32> = vec2<f32>(x_2624.x, x_2624.y);
        let x_2627 : f32 = u_xlat6.z;
        txVec38 = vec3<f32>(x_2625.x, x_2625.y, x_2627);
        let x_2634 : vec3<f32> = txVec38;
        let x_2636 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2634.xy, x_2634.z);
        u_xlat8.x = x_2636;
        let x_2639 : f32 = u_xlat16.x;
        let x_2641 : f32 = u_xlat8.x;
        let x_2643 : f32 = u_xlat88;
        u_xlat88 = ((x_2639 * x_2641) + x_2643);
        let x_2646 : vec4<f32> = u_xlat14;
        let x_2647 : vec2<f32> = vec2<f32>(x_2646.z, x_2646.w);
        let x_2649 : f32 = u_xlat6.z;
        txVec39 = vec3<f32>(x_2647.x, x_2647.y, x_2649);
        let x_2656 : vec3<f32> = txVec39;
        let x_2658 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2656.xy, x_2656.z);
        u_xlat8.x = x_2658;
        let x_2661 : f32 = u_xlat16.y;
        let x_2663 : f32 = u_xlat8.x;
        let x_2665 : f32 = u_xlat88;
        u_xlat88 = ((x_2661 * x_2663) + x_2665);
        let x_2668 : vec4<f32> = u_xlat11;
        let x_2669 : vec2<f32> = vec2<f32>(x_2668.z, x_2668.w);
        let x_2671 : f32 = u_xlat6.z;
        txVec40 = vec3<f32>(x_2669.x, x_2669.y, x_2671);
        let x_2678 : vec3<f32> = txVec40;
        let x_2680 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2678.xy, x_2678.z);
        u_xlat8.x = x_2680;
        let x_2683 : f32 = u_xlat16.z;
        let x_2685 : f32 = u_xlat8.x;
        let x_2687 : f32 = u_xlat88;
        u_xlat88 = ((x_2683 * x_2685) + x_2687);
        let x_2690 : vec4<f32> = u_xlat10;
        let x_2691 : vec2<f32> = vec2<f32>(x_2690.x, x_2690.y);
        let x_2693 : f32 = u_xlat6.z;
        txVec41 = vec3<f32>(x_2691.x, x_2691.y, x_2693);
        let x_2700 : vec3<f32> = txVec41;
        let x_2702 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2700.xy, x_2700.z);
        u_xlat8.x = x_2702;
        let x_2705 : f32 = u_xlat16.w;
        let x_2707 : f32 = u_xlat8.x;
        let x_2709 : f32 = u_xlat88;
        u_xlat88 = ((x_2705 * x_2707) + x_2709);
        let x_2712 : vec4<f32> = u_xlat10;
        let x_2713 : vec2<f32> = vec2<f32>(x_2712.z, x_2712.w);
        let x_2715 : f32 = u_xlat6.z;
        txVec42 = vec3<f32>(x_2713.x, x_2713.y, x_2715);
        let x_2722 : vec3<f32> = txVec42;
        let x_2724 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2722.xy, x_2722.z);
        u_xlat8.x = x_2724;
        let x_2727 : f32 = u_xlat61.x;
        let x_2729 : f32 = u_xlat8.x;
        let x_2731 : f32 = u_xlat88;
        u_xlat81 = ((x_2727 * x_2729) + x_2731);
      } else {
        let x_2734 : vec4<f32> = u_xlat6;
        let x_2737 : vec4<f32> = x_248.x_MainLightShadowmapSize;
        u_xlat61 = ((vec2<f32>(x_2734.x, x_2734.y) * vec2<f32>(x_2737.z, x_2737.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2741 : vec2<f32> = u_xlat61;
        u_xlat61 = floor(x_2741);
        let x_2743 : vec4<f32> = u_xlat6;
        let x_2746 : vec4<f32> = x_248.x_MainLightShadowmapSize;
        let x_2749 : vec2<f32> = u_xlat61;
        let x_2751 : vec2<f32> = ((vec2<f32>(x_2743.x, x_2743.y) * vec2<f32>(x_2746.z, x_2746.w)) + -(x_2749));
        let x_2752 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2751.x, x_2751.y, x_2752.z, x_2752.w);
        let x_2754 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2754.x, x_2754.x, x_2754.y, x_2754.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2757 : vec4<f32> = u_xlat9;
        let x_2759 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_2757.x, x_2757.x, x_2757.z, x_2757.z) * vec4<f32>(x_2759.x, x_2759.x, x_2759.z, x_2759.z));
        let x_2762 : vec4<f32> = u_xlat10;
        let x_2764 : vec2<f32> = (vec2<f32>(x_2762.y, x_2762.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_2765 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2765.x, x_2764.x, x_2765.z, x_2764.y);
        let x_2767 : vec4<f32> = u_xlat10;
        let x_2770 : vec4<f32> = u_xlat8;
        u_xlat62 = ((vec2<f32>(x_2767.x, x_2767.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2770.x, x_2770.y)));
        let x_2774 : vec4<f32> = u_xlat8;
        let x_2777 : vec2<f32> = (-(vec2<f32>(x_2774.x, x_2774.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2778 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2777.x, x_2778.y, x_2777.y, x_2778.w);
        let x_2780 : vec4<f32> = u_xlat8;
        let x_2782 : vec2<f32> = min(vec2<f32>(x_2780.x, x_2780.y), vec2<f32>(0.0f, 0.0f));
        let x_2783 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2782.x, x_2782.y, x_2783.z, x_2783.w);
        let x_2785 : vec4<f32> = u_xlat10;
        let x_2788 : vec4<f32> = u_xlat10;
        let x_2791 : vec4<f32> = u_xlat9;
        let x_2793 : vec2<f32> = ((-(vec2<f32>(x_2785.x, x_2785.y)) * vec2<f32>(x_2788.x, x_2788.y)) + vec2<f32>(x_2791.x, x_2791.z));
        let x_2794 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2793.x, x_2794.y, x_2793.y, x_2794.w);
        let x_2796 : vec4<f32> = u_xlat8;
        let x_2798 : vec2<f32> = max(vec2<f32>(x_2796.x, x_2796.y), vec2<f32>(0.0f, 0.0f));
        let x_2799 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2798.x, x_2798.y, x_2799.z, x_2799.w);
        let x_2801 : vec4<f32> = u_xlat10;
        let x_2804 : vec4<f32> = u_xlat10;
        let x_2807 : vec4<f32> = u_xlat9;
        let x_2809 : vec2<f32> = ((-(vec2<f32>(x_2801.x, x_2801.y)) * vec2<f32>(x_2804.x, x_2804.y)) + vec2<f32>(x_2807.y, x_2807.w));
        let x_2810 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2810.x, x_2809.x, x_2810.z, x_2809.y);
        let x_2812 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_2812 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_2815 : f32 = u_xlat9.y;
        u_xlat10.z = (x_2815 * 0.08163200318813323975f);
        let x_2818 : vec2<f32> = u_xlat62;
        let x_2820 : vec2<f32> = (vec2<f32>(x_2818.y, x_2818.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2821 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2820.x, x_2820.y, x_2821.z, x_2821.w);
        let x_2823 : vec4<f32> = u_xlat9;
        u_xlat62 = (vec2<f32>(x_2823.x, x_2823.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2827 : f32 = u_xlat9.w;
        u_xlat12.z = (x_2827 * 0.08163200318813323975f);
        let x_2831 : f32 = u_xlat12.y;
        u_xlat10.x = x_2831;
        let x_2833 : vec4<f32> = u_xlat8;
        let x_2836 : vec2<f32> = ((vec2<f32>(x_2833.x, x_2833.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2837 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2837.x, x_2836.x, x_2837.z, x_2836.y);
        let x_2839 : vec4<f32> = u_xlat8;
        let x_2842 : vec2<f32> = ((vec2<f32>(x_2839.x, x_2839.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2843 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2842.x, x_2843.y, x_2842.y, x_2843.w);
        let x_2846 : f32 = u_xlat62.x;
        u_xlat9.y = x_2846;
        let x_2849 : f32 = u_xlat11.y;
        u_xlat9.w = x_2849;
        let x_2851 : vec4<f32> = u_xlat9;
        let x_2852 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_2851 + x_2852);
        let x_2854 : vec4<f32> = u_xlat8;
        let x_2857 : vec2<f32> = ((vec2<f32>(x_2854.y, x_2854.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2858 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2858.x, x_2857.x, x_2858.z, x_2857.y);
        let x_2860 : vec4<f32> = u_xlat8;
        let x_2863 : vec2<f32> = ((vec2<f32>(x_2860.y, x_2860.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2864 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2863.x, x_2864.y, x_2863.y, x_2864.w);
        let x_2867 : f32 = u_xlat62.y;
        u_xlat11.y = x_2867;
        let x_2869 : vec4<f32> = u_xlat11;
        let x_2870 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_2869 + x_2870);
        let x_2872 : vec4<f32> = u_xlat9;
        let x_2873 : vec4<f32> = u_xlat10;
        u_xlat9 = (x_2872 / x_2873);
        let x_2875 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_2875 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2877 : vec4<f32> = u_xlat11;
        let x_2878 : vec4<f32> = u_xlat8;
        u_xlat11 = (x_2877 / x_2878);
        let x_2880 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_2880 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2882 : vec4<f32> = u_xlat9;
        let x_2885 : vec4<f32> = x_248.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_2882.w, x_2882.x, x_2882.y, x_2882.z) * vec4<f32>(x_2885.x, x_2885.x, x_2885.x, x_2885.x));
        let x_2888 : vec4<f32> = u_xlat11;
        let x_2891 : vec4<f32> = x_248.x_MainLightShadowmapSize;
        u_xlat11 = (vec4<f32>(x_2888.x, x_2888.w, x_2888.y, x_2888.z) * vec4<f32>(x_2891.y, x_2891.y, x_2891.y, x_2891.y));
        let x_2894 : vec4<f32> = u_xlat9;
        let x_2895 : vec3<f32> = vec3<f32>(x_2894.y, x_2894.z, x_2894.w);
        let x_2896 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2895.x, x_2896.y, x_2895.y, x_2895.z);
        let x_2899 : f32 = u_xlat11.x;
        u_xlat12.y = x_2899;
        let x_2901 : vec2<f32> = u_xlat61;
        let x_2904 : vec4<f32> = x_248.x_MainLightShadowmapSize;
        let x_2907 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_2901.x, x_2901.y, x_2901.x, x_2901.y) * vec4<f32>(x_2904.x, x_2904.y, x_2904.x, x_2904.y)) + vec4<f32>(x_2907.x, x_2907.y, x_2907.z, x_2907.y));
        let x_2910 : vec2<f32> = u_xlat61;
        let x_2912 : vec4<f32> = x_248.x_MainLightShadowmapSize;
        let x_2915 : vec4<f32> = u_xlat12;
        let x_2917 : vec2<f32> = ((x_2910 * vec2<f32>(x_2912.x, x_2912.y)) + vec2<f32>(x_2915.w, x_2915.y));
        let x_2918 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_2917.x, x_2917.y, x_2918.z, x_2918.w);
        let x_2921 : f32 = u_xlat12.y;
        u_xlat9.y = x_2921;
        let x_2924 : f32 = u_xlat11.z;
        u_xlat12.y = x_2924;
        let x_2926 : vec2<f32> = u_xlat61;
        let x_2929 : vec4<f32> = x_248.x_MainLightShadowmapSize;
        let x_2932 : vec4<f32> = u_xlat12;
        u_xlat15 = ((vec4<f32>(x_2926.x, x_2926.y, x_2926.x, x_2926.y) * vec4<f32>(x_2929.x, x_2929.y, x_2929.x, x_2929.y)) + vec4<f32>(x_2932.x, x_2932.y, x_2932.z, x_2932.y));
        let x_2936 : vec2<f32> = u_xlat61;
        let x_2938 : vec4<f32> = x_248.x_MainLightShadowmapSize;
        let x_2941 : vec4<f32> = u_xlat12;
        u_xlat68 = ((x_2936 * vec2<f32>(x_2938.x, x_2938.y)) + vec2<f32>(x_2941.w, x_2941.y));
        let x_2945 : f32 = u_xlat12.y;
        u_xlat9.z = x_2945;
        let x_2947 : vec2<f32> = u_xlat61;
        let x_2950 : vec4<f32> = x_248.x_MainLightShadowmapSize;
        let x_2953 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_2947.x, x_2947.y, x_2947.x, x_2947.y) * vec4<f32>(x_2950.x, x_2950.y, x_2950.x, x_2950.y)) + vec4<f32>(x_2953.x, x_2953.y, x_2953.x, x_2953.z));
        let x_2957 : f32 = u_xlat11.w;
        u_xlat12.y = x_2957;
        let x_2959 : vec2<f32> = u_xlat61;
        let x_2962 : vec4<f32> = x_248.x_MainLightShadowmapSize;
        let x_2965 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_2959.x, x_2959.y, x_2959.x, x_2959.y) * vec4<f32>(x_2962.x, x_2962.y, x_2962.x, x_2962.y)) + vec4<f32>(x_2965.x, x_2965.y, x_2965.z, x_2965.y));
        let x_2968 : vec2<f32> = u_xlat61;
        let x_2970 : vec4<f32> = x_248.x_MainLightShadowmapSize;
        let x_2973 : vec4<f32> = u_xlat12;
        u_xlat36 = ((x_2968 * vec2<f32>(x_2970.x, x_2970.y)) + vec2<f32>(x_2973.w, x_2973.y));
        let x_2977 : f32 = u_xlat12.y;
        u_xlat9.w = x_2977;
        let x_2979 : vec2<f32> = u_xlat61;
        let x_2981 : vec4<f32> = x_248.x_MainLightShadowmapSize;
        let x_2984 : vec4<f32> = u_xlat9;
        let x_2986 : vec2<f32> = ((x_2979 * vec2<f32>(x_2981.x, x_2981.y)) + vec2<f32>(x_2984.x, x_2984.w));
        let x_2987 : vec4<f32> = u_xlat18;
        u_xlat18 = vec4<f32>(x_2986.x, x_2986.y, x_2987.z, x_2987.w);
        let x_2989 : vec4<f32> = u_xlat12;
        let x_2990 : vec3<f32> = vec3<f32>(x_2989.x, x_2989.z, x_2989.w);
        let x_2991 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2990.x, x_2991.y, x_2990.y, x_2990.z);
        let x_2993 : vec2<f32> = u_xlat61;
        let x_2996 : vec4<f32> = x_248.x_MainLightShadowmapSize;
        let x_2999 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_2993.x, x_2993.y, x_2993.x, x_2993.y) * vec4<f32>(x_2996.x, x_2996.y, x_2996.x, x_2996.y)) + vec4<f32>(x_2999.x, x_2999.y, x_2999.z, x_2999.y));
        let x_3003 : vec2<f32> = u_xlat61;
        let x_3005 : vec4<f32> = x_248.x_MainLightShadowmapSize;
        let x_3008 : vec4<f32> = u_xlat11;
        u_xlat65 = ((x_3003 * vec2<f32>(x_3005.x, x_3005.y)) + vec2<f32>(x_3008.w, x_3008.y));
        let x_3012 : f32 = u_xlat9.x;
        u_xlat11.x = x_3012;
        let x_3014 : vec2<f32> = u_xlat61;
        let x_3016 : vec4<f32> = x_248.x_MainLightShadowmapSize;
        let x_3019 : vec4<f32> = u_xlat11;
        u_xlat61 = ((x_3014 * vec2<f32>(x_3016.x, x_3016.y)) + vec2<f32>(x_3019.x, x_3019.y));
        let x_3022 : vec4<f32> = u_xlat8;
        let x_3024 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_3022.x, x_3022.x, x_3022.x, x_3022.x) * x_3024);
        let x_3026 : vec4<f32> = u_xlat8;
        let x_3028 : vec4<f32> = u_xlat10;
        u_xlat20 = (vec4<f32>(x_3026.y, x_3026.y, x_3026.y, x_3026.y) * x_3028);
        let x_3031 : vec4<f32> = u_xlat8;
        let x_3033 : vec4<f32> = u_xlat10;
        u_xlat21 = (vec4<f32>(x_3031.z, x_3031.z, x_3031.z, x_3031.z) * x_3033);
        let x_3035 : vec4<f32> = u_xlat8;
        let x_3037 : vec4<f32> = u_xlat10;
        u_xlat8 = (vec4<f32>(x_3035.w, x_3035.w, x_3035.w, x_3035.w) * x_3037);
        let x_3040 : vec4<f32> = u_xlat13;
        let x_3041 : vec2<f32> = vec2<f32>(x_3040.x, x_3040.y);
        let x_3043 : f32 = u_xlat6.z;
        txVec43 = vec3<f32>(x_3041.x, x_3041.y, x_3043);
        let x_3050 : vec3<f32> = txVec43;
        let x_3052 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3050.xy, x_3050.z);
        u_xlat9.x = x_3052;
        let x_3055 : vec4<f32> = u_xlat13;
        let x_3056 : vec2<f32> = vec2<f32>(x_3055.z, x_3055.w);
        let x_3058 : f32 = u_xlat6.z;
        txVec44 = vec3<f32>(x_3056.x, x_3056.y, x_3058);
        let x_3066 : vec3<f32> = txVec44;
        let x_3068 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3066.xy, x_3066.z);
        u_xlat90 = x_3068;
        let x_3069 : f32 = u_xlat90;
        let x_3071 : f32 = u_xlat19.y;
        u_xlat90 = (x_3069 * x_3071);
        let x_3074 : f32 = u_xlat19.x;
        let x_3076 : f32 = u_xlat9.x;
        let x_3078 : f32 = u_xlat90;
        u_xlat9.x = ((x_3074 * x_3076) + x_3078);
        let x_3082 : vec4<f32> = u_xlat14;
        let x_3083 : vec2<f32> = vec2<f32>(x_3082.x, x_3082.y);
        let x_3085 : f32 = u_xlat6.z;
        txVec45 = vec3<f32>(x_3083.x, x_3083.y, x_3085);
        let x_3092 : vec3<f32> = txVec45;
        let x_3094 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3092.xy, x_3092.z);
        u_xlat90 = x_3094;
        let x_3096 : f32 = u_xlat19.z;
        let x_3097 : f32 = u_xlat90;
        let x_3100 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_3096 * x_3097) + x_3100);
        let x_3104 : vec4<f32> = u_xlat16;
        let x_3105 : vec2<f32> = vec2<f32>(x_3104.x, x_3104.y);
        let x_3107 : f32 = u_xlat6.z;
        txVec46 = vec3<f32>(x_3105.x, x_3105.y, x_3107);
        let x_3114 : vec3<f32> = txVec46;
        let x_3116 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3114.xy, x_3114.z);
        u_xlat90 = x_3116;
        let x_3118 : f32 = u_xlat19.w;
        let x_3119 : f32 = u_xlat90;
        let x_3122 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_3118 * x_3119) + x_3122);
        let x_3126 : vec4<f32> = u_xlat15;
        let x_3127 : vec2<f32> = vec2<f32>(x_3126.x, x_3126.y);
        let x_3129 : f32 = u_xlat6.z;
        txVec47 = vec3<f32>(x_3127.x, x_3127.y, x_3129);
        let x_3136 : vec3<f32> = txVec47;
        let x_3138 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3136.xy, x_3136.z);
        u_xlat90 = x_3138;
        let x_3140 : f32 = u_xlat20.x;
        let x_3141 : f32 = u_xlat90;
        let x_3144 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_3140 * x_3141) + x_3144);
        let x_3148 : vec4<f32> = u_xlat15;
        let x_3149 : vec2<f32> = vec2<f32>(x_3148.z, x_3148.w);
        let x_3151 : f32 = u_xlat6.z;
        txVec48 = vec3<f32>(x_3149.x, x_3149.y, x_3151);
        let x_3158 : vec3<f32> = txVec48;
        let x_3160 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3158.xy, x_3158.z);
        u_xlat90 = x_3160;
        let x_3162 : f32 = u_xlat20.y;
        let x_3163 : f32 = u_xlat90;
        let x_3166 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_3162 * x_3163) + x_3166);
        let x_3170 : vec2<f32> = u_xlat68;
        let x_3172 : f32 = u_xlat6.z;
        txVec49 = vec3<f32>(x_3170.x, x_3170.y, x_3172);
        let x_3179 : vec3<f32> = txVec49;
        let x_3181 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3179.xy, x_3179.z);
        u_xlat90 = x_3181;
        let x_3183 : f32 = u_xlat20.z;
        let x_3184 : f32 = u_xlat90;
        let x_3187 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_3183 * x_3184) + x_3187);
        let x_3191 : vec4<f32> = u_xlat16;
        let x_3192 : vec2<f32> = vec2<f32>(x_3191.z, x_3191.w);
        let x_3194 : f32 = u_xlat6.z;
        txVec50 = vec3<f32>(x_3192.x, x_3192.y, x_3194);
        let x_3201 : vec3<f32> = txVec50;
        let x_3203 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3201.xy, x_3201.z);
        u_xlat90 = x_3203;
        let x_3205 : f32 = u_xlat20.w;
        let x_3206 : f32 = u_xlat90;
        let x_3209 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_3205 * x_3206) + x_3209);
        let x_3213 : vec4<f32> = u_xlat17;
        let x_3214 : vec2<f32> = vec2<f32>(x_3213.x, x_3213.y);
        let x_3216 : f32 = u_xlat6.z;
        txVec51 = vec3<f32>(x_3214.x, x_3214.y, x_3216);
        let x_3223 : vec3<f32> = txVec51;
        let x_3225 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3223.xy, x_3223.z);
        u_xlat90 = x_3225;
        let x_3227 : f32 = u_xlat21.x;
        let x_3228 : f32 = u_xlat90;
        let x_3231 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_3227 * x_3228) + x_3231);
        let x_3235 : vec4<f32> = u_xlat17;
        let x_3236 : vec2<f32> = vec2<f32>(x_3235.z, x_3235.w);
        let x_3238 : f32 = u_xlat6.z;
        txVec52 = vec3<f32>(x_3236.x, x_3236.y, x_3238);
        let x_3245 : vec3<f32> = txVec52;
        let x_3247 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3245.xy, x_3245.z);
        u_xlat90 = x_3247;
        let x_3249 : f32 = u_xlat21.y;
        let x_3250 : f32 = u_xlat90;
        let x_3253 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_3249 * x_3250) + x_3253);
        let x_3257 : vec2<f32> = u_xlat36;
        let x_3259 : f32 = u_xlat6.z;
        txVec53 = vec3<f32>(x_3257.x, x_3257.y, x_3259);
        let x_3266 : vec3<f32> = txVec53;
        let x_3268 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3266.xy, x_3266.z);
        u_xlat36.x = x_3268;
        let x_3271 : f32 = u_xlat21.z;
        let x_3273 : f32 = u_xlat36.x;
        let x_3276 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_3271 * x_3273) + x_3276);
        let x_3280 : vec4<f32> = u_xlat18;
        let x_3281 : vec2<f32> = vec2<f32>(x_3280.x, x_3280.y);
        let x_3283 : f32 = u_xlat6.z;
        txVec54 = vec3<f32>(x_3281.x, x_3281.y, x_3283);
        let x_3290 : vec3<f32> = txVec54;
        let x_3292 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3290.xy, x_3290.z);
        u_xlat36.x = x_3292;
        let x_3295 : f32 = u_xlat21.w;
        let x_3297 : f32 = u_xlat36.x;
        let x_3300 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_3295 * x_3297) + x_3300);
        let x_3304 : vec4<f32> = u_xlat12;
        let x_3305 : vec2<f32> = vec2<f32>(x_3304.x, x_3304.y);
        let x_3307 : f32 = u_xlat6.z;
        txVec55 = vec3<f32>(x_3305.x, x_3305.y, x_3307);
        let x_3314 : vec3<f32> = txVec55;
        let x_3316 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3314.xy, x_3314.z);
        u_xlat36.x = x_3316;
        let x_3319 : f32 = u_xlat8.x;
        let x_3321 : f32 = u_xlat36.x;
        let x_3324 : f32 = u_xlat9.x;
        u_xlat8.x = ((x_3319 * x_3321) + x_3324);
        let x_3328 : vec4<f32> = u_xlat12;
        let x_3329 : vec2<f32> = vec2<f32>(x_3328.z, x_3328.w);
        let x_3331 : f32 = u_xlat6.z;
        txVec56 = vec3<f32>(x_3329.x, x_3329.y, x_3331);
        let x_3338 : vec3<f32> = txVec56;
        let x_3340 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3338.xy, x_3338.z);
        u_xlat9.x = x_3340;
        let x_3343 : f32 = u_xlat8.y;
        let x_3345 : f32 = u_xlat9.x;
        let x_3348 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_3343 * x_3345) + x_3348);
        let x_3352 : vec2<f32> = u_xlat65;
        let x_3354 : f32 = u_xlat6.z;
        txVec57 = vec3<f32>(x_3352.x, x_3352.y, x_3354);
        let x_3361 : vec3<f32> = txVec57;
        let x_3363 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3361.xy, x_3361.z);
        u_xlat35.x = x_3363;
        let x_3366 : f32 = u_xlat8.z;
        let x_3368 : f32 = u_xlat35.x;
        let x_3371 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_3366 * x_3368) + x_3371);
        let x_3375 : vec2<f32> = u_xlat61;
        let x_3377 : f32 = u_xlat6.z;
        txVec58 = vec3<f32>(x_3375.x, x_3375.y, x_3377);
        let x_3384 : vec3<f32> = txVec58;
        let x_3386 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3384.xy, x_3384.z);
        u_xlat61.x = x_3386;
        let x_3389 : f32 = u_xlat8.w;
        let x_3391 : f32 = u_xlat61.x;
        let x_3394 : f32 = u_xlat8.x;
        u_xlat81 = ((x_3389 * x_3391) + x_3394);
      }
    }
  } else {
    let x_3398 : vec4<f32> = u_xlat6;
    let x_3399 : vec2<f32> = vec2<f32>(x_3398.x, x_3398.y);
    let x_3401 : f32 = u_xlat6.z;
    txVec59 = vec3<f32>(x_3399.x, x_3399.y, x_3401);
    let x_3408 : vec3<f32> = txVec59;
    let x_3410 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3408.xy, x_3408.z);
    u_xlat81 = x_3410;
  }
  let x_3411 : f32 = u_xlat81;
  let x_3413 : f32 = x_248.x_MainLightShadowParams.x;
  let x_3415 : f32 = u_xlat83;
  u_xlat81 = ((x_3411 * x_3413) + x_3415);
  let x_3417 : bool = u_xlatb85;
  let x_3418 : f32 = u_xlat81;
  u_xlat81 = select(x_3418, 1.0f, x_3417);
  let x_3420 : vec3<f32> = vs_INTERP8;
  let x_3422 : vec3<f32> = x_75.x_WorldSpaceCameraPos;
  let x_3424 : vec3<f32> = (x_3420 + -(x_3422));
  let x_3425 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_3424.x, x_3424.y, x_3424.z, x_3425.w);
  let x_3427 : vec4<f32> = u_xlat6;
  let x_3429 : vec4<f32> = u_xlat6;
  u_xlat83 = dot(vec3<f32>(x_3427.x, x_3427.y, x_3427.z), vec3<f32>(x_3429.x, x_3429.y, x_3429.z));
  let x_3432 : f32 = u_xlat83;
  let x_3434 : f32 = x_248.x_MainLightShadowParams.z;
  let x_3437 : f32 = x_248.x_MainLightShadowParams.w;
  u_xlat85 = ((x_3432 * x_3434) + x_3437);
  let x_3439 : f32 = u_xlat85;
  u_xlat85 = clamp(x_3439, 0.0f, 1.0f);
  let x_3441 : f32 = u_xlat81;
  u_xlat6.x = (-(x_3441) + 1.0f);
  let x_3445 : f32 = u_xlat85;
  let x_3447 : f32 = u_xlat6.x;
  let x_3449 : f32 = u_xlat81;
  u_xlat81 = ((x_3445 * x_3447) + x_3449);
  let x_3458 : f32 = x_3456.x_MainLightCookieTextureFormat;
  u_xlatb85 = !((x_3458 == -1.0f));
  let x_3460 : bool = u_xlatb85;
  if (x_3460) {
    let x_3463 : vec3<f32> = vs_INTERP8;
    let x_3466 : vec4<f32> = x_3456.x_MainLightWorldToLight[1i];
    let x_3468 : vec2<f32> = (vec2<f32>(x_3463.y, x_3463.y) * vec2<f32>(x_3466.x, x_3466.y));
    let x_3469 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3468.x, x_3468.y, x_3469.z, x_3469.w);
    let x_3472 : vec4<f32> = x_3456.x_MainLightWorldToLight[0i];
    let x_3474 : vec3<f32> = vs_INTERP8;
    let x_3477 : vec4<f32> = u_xlat6;
    let x_3479 : vec2<f32> = ((vec2<f32>(x_3472.x, x_3472.y) * vec2<f32>(x_3474.x, x_3474.x)) + vec2<f32>(x_3477.x, x_3477.y));
    let x_3480 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3479.x, x_3479.y, x_3480.z, x_3480.w);
    let x_3483 : vec4<f32> = x_3456.x_MainLightWorldToLight[2i];
    let x_3485 : vec3<f32> = vs_INTERP8;
    let x_3488 : vec4<f32> = u_xlat6;
    let x_3490 : vec2<f32> = ((vec2<f32>(x_3483.x, x_3483.y) * vec2<f32>(x_3485.z, x_3485.z)) + vec2<f32>(x_3488.x, x_3488.y));
    let x_3491 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3490.x, x_3490.y, x_3491.z, x_3491.w);
    let x_3493 : vec4<f32> = u_xlat6;
    let x_3496 : vec4<f32> = x_3456.x_MainLightWorldToLight[3i];
    let x_3498 : vec2<f32> = (vec2<f32>(x_3493.x, x_3493.y) + vec2<f32>(x_3496.x, x_3496.y));
    let x_3499 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3498.x, x_3498.y, x_3499.z, x_3499.w);
    let x_3501 : vec4<f32> = u_xlat6;
    let x_3504 : vec2<f32> = ((vec2<f32>(x_3501.x, x_3501.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_3505 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3504.x, x_3504.y, x_3505.z, x_3505.w);
    let x_3512 : vec4<f32> = u_xlat6;
    let x_3515 : f32 = x_75.x_GlobalMipBias.x;
    let x_3516 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_3512.x, x_3512.y), x_3515);
    u_xlat8 = x_3516;
    let x_3518 : f32 = x_3456.x_MainLightCookieTextureFormat;
    let x_3520 : f32 = x_3456.x_MainLightCookieTextureFormat;
    let x_3522 : f32 = x_3456.x_MainLightCookieTextureFormat;
    let x_3524 : f32 = x_3456.x_MainLightCookieTextureFormat;
    let x_3525 : vec4<f32> = vec4<f32>(x_3518, x_3520, x_3522, x_3524);
    let x_3532 : vec4<bool> = (vec4<f32>(x_3525.x, x_3525.y, x_3525.z, x_3525.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    let x_3533 : vec2<bool> = vec2<bool>(x_3532.x, x_3532.y);
    let x_3534 : vec4<bool> = u_xlatb6;
    u_xlatb6 = vec4<bool>(x_3533.x, x_3533.y, x_3534.z, x_3534.w);
    let x_3537 : bool = u_xlatb6.y;
    if (x_3537) {
      let x_3542 : f32 = u_xlat8.w;
      x_3538 = x_3542;
    } else {
      let x_3545 : f32 = u_xlat8.x;
      x_3538 = x_3545;
    }
    let x_3546 : f32 = x_3538;
    u_xlat85 = x_3546;
    let x_3548 : bool = u_xlatb6.x;
    if (x_3548) {
      let x_3552 : vec4<f32> = u_xlat8;
      x_3549 = vec3<f32>(x_3552.x, x_3552.y, x_3552.z);
    } else {
      let x_3555 : f32 = u_xlat85;
      x_3549 = vec3<f32>(x_3555, x_3555, x_3555);
    }
    let x_3557 : vec3<f32> = x_3549;
    let x_3558 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3557.x, x_3557.y, x_3557.z, x_3558.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_3564 : vec4<f32> = u_xlat6;
  let x_3567 : vec4<f32> = x_75.x_MainLightColor;
  let x_3569 : vec3<f32> = (vec3<f32>(x_3564.x, x_3564.y, x_3564.z) * vec3<f32>(x_3567.x, x_3567.y, x_3567.z));
  let x_3570 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_3569.x, x_3569.y, x_3569.z, x_3570.w);
  let x_3572 : vec3<f32> = u_xlat1;
  let x_3574 : vec4<f32> = u_xlat3;
  u_xlat85 = dot(-(x_3572), vec3<f32>(x_3574.x, x_3574.y, x_3574.z));
  let x_3577 : f32 = u_xlat85;
  let x_3578 : f32 = u_xlat85;
  u_xlat85 = (x_3577 + x_3578);
  let x_3580 : vec4<f32> = u_xlat3;
  let x_3582 : f32 = u_xlat85;
  let x_3586 : vec3<f32> = u_xlat1;
  let x_3588 : vec3<f32> = ((vec3<f32>(x_3580.x, x_3580.y, x_3580.z) * -(vec3<f32>(x_3582, x_3582, x_3582))) + -(x_3586));
  let x_3589 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3588.x, x_3588.y, x_3588.z, x_3589.w);
  let x_3591 : vec4<f32> = u_xlat3;
  let x_3593 : vec3<f32> = u_xlat1;
  u_xlat85 = dot(vec3<f32>(x_3591.x, x_3591.y, x_3591.z), x_3593);
  let x_3595 : f32 = u_xlat85;
  u_xlat85 = clamp(x_3595, 0.0f, 1.0f);
  let x_3597 : f32 = u_xlat85;
  u_xlat85 = (-(x_3597) + 1.0f);
  let x_3600 : f32 = u_xlat85;
  let x_3601 : f32 = u_xlat85;
  u_xlat85 = (x_3600 * x_3601);
  let x_3603 : f32 = u_xlat85;
  let x_3604 : f32 = u_xlat85;
  u_xlat85 = (x_3603 * x_3604);
  let x_3606 : f32 = u_xlat56;
  u_xlat61.x = ((-(x_3606) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_3613 : f32 = u_xlat56;
  let x_3615 : f32 = u_xlat61.x;
  u_xlat56 = (x_3613 * x_3615);
  let x_3617 : f32 = u_xlat56;
  u_xlat56 = (x_3617 * 6.0f);
  let x_3628 : vec4<f32> = u_xlat8;
  let x_3630 : f32 = u_xlat56;
  let x_3631 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_3628.x, x_3628.y, x_3628.z), x_3630);
  u_xlat8 = x_3631;
  let x_3633 : f32 = u_xlat8.w;
  u_xlat56 = (x_3633 + -1.0f);
  let x_3636 : f32 = x_132.unity_SpecCube0_HDR.w;
  let x_3637 : f32 = u_xlat56;
  u_xlat56 = ((x_3636 * x_3637) + 1.0f);
  let x_3640 : f32 = u_xlat56;
  u_xlat56 = max(x_3640, 0.0f);
  let x_3642 : f32 = u_xlat56;
  u_xlat56 = log2(x_3642);
  let x_3644 : f32 = u_xlat56;
  let x_3646 : f32 = x_132.unity_SpecCube0_HDR.y;
  u_xlat56 = (x_3644 * x_3646);
  let x_3648 : f32 = u_xlat56;
  u_xlat56 = exp2(x_3648);
  let x_3650 : f32 = u_xlat56;
  let x_3652 : f32 = x_132.unity_SpecCube0_HDR.x;
  u_xlat56 = (x_3650 * x_3652);
  let x_3654 : vec4<f32> = u_xlat8;
  let x_3656 : f32 = u_xlat56;
  let x_3658 : vec3<f32> = (vec3<f32>(x_3654.x, x_3654.y, x_3654.z) * vec3<f32>(x_3656, x_3656, x_3656));
  let x_3659 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3658.x, x_3658.y, x_3658.z, x_3659.w);
  let x_3661 : f32 = u_xlat84;
  let x_3663 : f32 = u_xlat84;
  u_xlat61 = ((vec2<f32>(x_3661, x_3661) * vec2<f32>(x_3663, x_3663)) + vec2<f32>(-1.0f, 1.0f));
  let x_3669 : f32 = u_xlat61.y;
  u_xlat56 = (1.0f / x_3669);
  let x_3672 : f32 = u_xlat5.x;
  u_xlat84 = (x_3672 + -0.03999999910593032837f);
  let x_3675 : f32 = u_xlat85;
  let x_3676 : f32 = u_xlat84;
  u_xlat84 = ((x_3675 * x_3676) + 0.03999999910593032837f);
  let x_3680 : f32 = u_xlat56;
  let x_3681 : f32 = u_xlat84;
  u_xlat56 = (x_3680 * x_3681);
  let x_3683 : f32 = u_xlat56;
  let x_3685 : vec4<f32> = u_xlat8;
  let x_3687 : vec3<f32> = (vec3<f32>(x_3683, x_3683, x_3683) * vec3<f32>(x_3685.x, x_3685.y, x_3685.z));
  let x_3688 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3687.x, x_3687.y, x_3687.z, x_3688.w);
  let x_3690 : vec3<f32> = u_xlat32;
  let x_3691 : vec3<f32> = u_xlat4;
  let x_3693 : vec4<f32> = u_xlat8;
  let x_3695 : vec3<f32> = ((x_3690 * x_3691) + vec3<f32>(x_3693.x, x_3693.y, x_3693.z));
  let x_3696 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_3695.x, x_3695.y, x_3695.z, x_3696.w);
  let x_3698 : f32 = u_xlat81;
  let x_3700 : f32 = x_132.unity_LightData.z;
  u_xlat81 = (x_3698 * x_3700);
  let x_3702 : vec4<f32> = u_xlat3;
  let x_3705 : vec4<f32> = x_75.x_MainLightPosition;
  u_xlat56 = dot(vec3<f32>(x_3702.x, x_3702.y, x_3702.z), vec3<f32>(x_3705.x, x_3705.y, x_3705.z));
  let x_3708 : f32 = u_xlat56;
  u_xlat56 = clamp(x_3708, 0.0f, 1.0f);
  let x_3710 : f32 = u_xlat81;
  let x_3711 : f32 = u_xlat56;
  u_xlat81 = (x_3710 * x_3711);
  let x_3713 : f32 = u_xlat81;
  let x_3715 : vec4<f32> = u_xlat6;
  let x_3717 : vec3<f32> = (vec3<f32>(x_3713, x_3713, x_3713) * vec3<f32>(x_3715.x, x_3715.y, x_3715.z));
  let x_3718 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_3717.x, x_3717.y, x_3717.z, x_3718.w);
  let x_3720 : vec3<f32> = u_xlat1;
  let x_3722 : vec4<f32> = x_75.x_MainLightPosition;
  let x_3724 : vec3<f32> = (x_3720 + vec3<f32>(x_3722.x, x_3722.y, x_3722.z));
  let x_3725 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3724.x, x_3724.y, x_3724.z, x_3725.w);
  let x_3727 : vec4<f32> = u_xlat8;
  let x_3729 : vec4<f32> = u_xlat8;
  u_xlat81 = dot(vec3<f32>(x_3727.x, x_3727.y, x_3727.z), vec3<f32>(x_3729.x, x_3729.y, x_3729.z));
  let x_3732 : f32 = u_xlat81;
  u_xlat81 = max(x_3732, 1.17549435e-38f);
  let x_3735 : f32 = u_xlat81;
  u_xlat81 = inverseSqrt(x_3735);
  let x_3737 : f32 = u_xlat81;
  let x_3739 : vec4<f32> = u_xlat8;
  let x_3741 : vec3<f32> = (vec3<f32>(x_3737, x_3737, x_3737) * vec3<f32>(x_3739.x, x_3739.y, x_3739.z));
  let x_3742 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3741.x, x_3741.y, x_3741.z, x_3742.w);
  let x_3744 : vec4<f32> = u_xlat3;
  let x_3746 : vec4<f32> = u_xlat8;
  u_xlat81 = dot(vec3<f32>(x_3744.x, x_3744.y, x_3744.z), vec3<f32>(x_3746.x, x_3746.y, x_3746.z));
  let x_3749 : f32 = u_xlat81;
  u_xlat81 = clamp(x_3749, 0.0f, 1.0f);
  let x_3752 : vec4<f32> = x_75.x_MainLightPosition;
  let x_3754 : vec4<f32> = u_xlat8;
  u_xlat56 = dot(vec3<f32>(x_3752.x, x_3752.y, x_3752.z), vec3<f32>(x_3754.x, x_3754.y, x_3754.z));
  let x_3757 : f32 = u_xlat56;
  u_xlat56 = clamp(x_3757, 0.0f, 1.0f);
  let x_3759 : f32 = u_xlat81;
  let x_3760 : f32 = u_xlat81;
  u_xlat81 = (x_3759 * x_3760);
  let x_3762 : f32 = u_xlat81;
  let x_3764 : f32 = u_xlat61.x;
  u_xlat81 = ((x_3762 * x_3764) + 1.00001001358032226562f);
  let x_3768 : f32 = u_xlat56;
  let x_3769 : f32 = u_xlat56;
  u_xlat56 = (x_3768 * x_3769);
  let x_3771 : f32 = u_xlat81;
  let x_3772 : f32 = u_xlat81;
  u_xlat81 = (x_3771 * x_3772);
  let x_3774 : f32 = u_xlat56;
  u_xlat56 = max(x_3774, 0.10000000149011611938f);
  let x_3777 : f32 = u_xlat81;
  let x_3778 : f32 = u_xlat56;
  u_xlat81 = (x_3777 * x_3778);
  let x_3781 : f32 = u_xlat7.x;
  let x_3782 : f32 = u_xlat81;
  u_xlat81 = (x_3781 * x_3782);
  let x_3784 : f32 = u_xlat87;
  let x_3785 : f32 = u_xlat81;
  u_xlat81 = (x_3784 / x_3785);
  let x_3787 : f32 = u_xlat81;
  let x_3791 : vec3<f32> = u_xlat4;
  let x_3792 : vec3<f32> = ((vec3<f32>(x_3787, x_3787, x_3787) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_3791);
  let x_3793 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3792.x, x_3792.y, x_3792.z, x_3793.w);
  let x_3795 : vec4<f32> = u_xlat6;
  let x_3797 : vec4<f32> = u_xlat8;
  let x_3799 : vec3<f32> = (vec3<f32>(x_3795.x, x_3795.y, x_3795.z) * vec3<f32>(x_3797.x, x_3797.y, x_3797.z));
  let x_3800 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_3799.x, x_3799.y, x_3799.z, x_3800.w);
  let x_3803 : f32 = x_75.x_AdditionalLightsCount.x;
  let x_3805 : f32 = x_132.unity_LightData.y;
  u_xlat81 = min(x_3803, x_3805);
  let x_3807 : f32 = u_xlat81;
  u_xlatu81 = bitcast<u32>(i32(x_3807));
  let x_3810 : f32 = u_xlat83;
  let x_3813 : f32 = x_248.x_AdditionalShadowFadeParams.x;
  let x_3816 : f32 = x_248.x_AdditionalShadowFadeParams.y;
  u_xlat56 = ((x_3810 * x_3813) + x_3816);
  let x_3818 : f32 = u_xlat56;
  u_xlat56 = clamp(x_3818, 0.0f, 1.0f);
  let x_3822 : f32 = x_3456.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3824 : f32 = x_3456.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3826 : f32 = x_3456.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3828 : f32 = x_3456.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3829 : vec4<f32> = vec4<f32>(x_3822, x_3824, x_3826, x_3828);
  let x_3835 : vec4<bool> = (vec4<f32>(x_3829.x, x_3829.y, x_3829.z, x_3829.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb8 = vec2<bool>(x_3835.x, x_3835.y);
  u_xlat9.x = 0.0f;
  u_xlat9.y = 0.0f;
  u_xlat9.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_3846 : u32 = u_xlatu_loop_1;
    let x_3847 : u32 = u_xlatu81;
    if ((x_3846 < x_3847)) {
    } else {
      break;
    }
    let x_3850 : u32 = u_xlatu_loop_1;
    u_xlatu84 = (x_3850 >> 2u);
    let x_3853 : u32 = u_xlatu_loop_1;
    u_xlati85 = bitcast<i32>((x_3853 & 3u));
    let x_3856 : u32 = u_xlatu84;
    let x_3859 : vec4<f32> = x_132.unity_LightIndices[bitcast<i32>(x_3856)];
    let x_3869 : i32 = u_xlati85;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_3874 : vec4<u32> = indexable[x_3869];
    u_xlat84 = dot(x_3859, bitcast<vec4<f32>>(x_3874));
    let x_3878 : f32 = u_xlat84;
    u_xlati84 = i32(x_3878);
    let x_3880 : vec3<f32> = vs_INTERP8;
    let x_3891 : i32 = u_xlati84;
    let x_3893 : vec4<f32> = x_3890.x_AdditionalLightsPosition[x_3891];
    let x_3896 : i32 = u_xlati84;
    let x_3898 : vec4<f32> = x_3890.x_AdditionalLightsPosition[x_3896];
    let x_3900 : vec3<f32> = ((-(x_3880) * vec3<f32>(x_3893.w, x_3893.w, x_3893.w)) + vec3<f32>(x_3898.x, x_3898.y, x_3898.z));
    let x_3901 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3900.x, x_3900.y, x_3900.z, x_3901.w);
    let x_3903 : vec4<f32> = u_xlat10;
    let x_3905 : vec4<f32> = u_xlat10;
    u_xlat85 = dot(vec3<f32>(x_3903.x, x_3903.y, x_3903.z), vec3<f32>(x_3905.x, x_3905.y, x_3905.z));
    let x_3908 : f32 = u_xlat85;
    u_xlat85 = max(x_3908, 0.00006103515625f);
    let x_3912 : f32 = u_xlat85;
    u_xlat86 = inverseSqrt(x_3912);
    let x_3914 : f32 = u_xlat86;
    let x_3916 : vec4<f32> = u_xlat10;
    let x_3918 : vec3<f32> = (vec3<f32>(x_3914, x_3914, x_3914) * vec3<f32>(x_3916.x, x_3916.y, x_3916.z));
    let x_3919 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3918.x, x_3918.y, x_3918.z, x_3919.w);
    let x_3921 : f32 = u_xlat85;
    u_xlat88 = (1.0f / x_3921);
    let x_3923 : f32 = u_xlat85;
    let x_3924 : i32 = u_xlati84;
    let x_3926 : f32 = x_3890.x_AdditionalLightsAttenuation[x_3924].x;
    u_xlat85 = (x_3923 * x_3926);
    let x_3928 : f32 = u_xlat85;
    let x_3930 : f32 = u_xlat85;
    u_xlat85 = ((-(x_3928) * x_3930) + 1.0f);
    let x_3933 : f32 = u_xlat85;
    u_xlat85 = max(x_3933, 0.0f);
    let x_3935 : f32 = u_xlat85;
    let x_3936 : f32 = u_xlat85;
    u_xlat85 = (x_3935 * x_3936);
    let x_3938 : f32 = u_xlat85;
    let x_3939 : f32 = u_xlat88;
    u_xlat85 = (x_3938 * x_3939);
    let x_3941 : i32 = u_xlati84;
    let x_3943 : vec4<f32> = x_3890.x_AdditionalLightsSpotDir[x_3941];
    let x_3945 : vec4<f32> = u_xlat11;
    u_xlat88 = dot(vec3<f32>(x_3943.x, x_3943.y, x_3943.z), vec3<f32>(x_3945.x, x_3945.y, x_3945.z));
    let x_3948 : f32 = u_xlat88;
    let x_3949 : i32 = u_xlati84;
    let x_3951 : f32 = x_3890.x_AdditionalLightsAttenuation[x_3949].z;
    let x_3953 : i32 = u_xlati84;
    let x_3955 : f32 = x_3890.x_AdditionalLightsAttenuation[x_3953].w;
    u_xlat88 = ((x_3948 * x_3951) + x_3955);
    let x_3957 : f32 = u_xlat88;
    u_xlat88 = clamp(x_3957, 0.0f, 1.0f);
    let x_3959 : f32 = u_xlat88;
    let x_3960 : f32 = u_xlat88;
    u_xlat88 = (x_3959 * x_3960);
    let x_3962 : f32 = u_xlat85;
    let x_3963 : f32 = u_xlat88;
    u_xlat85 = (x_3962 * x_3963);
    let x_3967 : i32 = u_xlati84;
    let x_3969 : f32 = x_248.x_AdditionalShadowParams[x_3967].w;
    u_xlati88 = i32(x_3969);
    let x_3972 : i32 = u_xlati88;
    u_xlatb62 = (x_3972 >= 0i);
    let x_3974 : bool = u_xlatb62;
    if (x_3974) {
      let x_3978 : i32 = u_xlati84;
      let x_3980 : f32 = x_248.x_AdditionalShadowParams[x_3978].z;
      u_xlatb62 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_3980, x_3980, x_3980, x_3980))));
      let x_3984 : bool = u_xlatb62;
      if (x_3984) {
        let x_3988 : vec4<f32> = u_xlat11;
        let x_3991 : vec4<f32> = u_xlat11;
        let x_3994 : vec4<bool> = (abs(vec4<f32>(x_3988.z, x_3988.z, x_3988.y, x_3988.z)) >= abs(vec4<f32>(x_3991.x, x_3991.y, x_3991.x, x_3991.x)));
        let x_3996 : vec3<bool> = vec3<bool>(x_3994.x, x_3994.y, x_3994.z);
        let x_3997 : vec4<bool> = u_xlatb12;
        u_xlatb12 = vec4<bool>(x_3996.x, x_3996.y, x_3996.z, x_3997.w);
        let x_4000 : bool = u_xlatb12.y;
        let x_4002 : bool = u_xlatb12.x;
        u_xlatb62 = (x_4000 & x_4002);
        let x_4004 : vec4<f32> = u_xlat11;
        let x_4007 : vec4<bool> = (-(vec4<f32>(x_4004.z, x_4004.y, x_4004.z, x_4004.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_4008 : vec3<bool> = vec3<bool>(x_4007.x, x_4007.y, x_4007.w);
        let x_4009 : vec4<bool> = u_xlatb12;
        u_xlatb12 = vec4<bool>(x_4008.x, x_4008.y, x_4009.z, x_4008.z);
        let x_4012 : bool = u_xlatb12.x;
        u_xlat12.x = select(4.0f, 5.0f, x_4012);
        let x_4017 : bool = u_xlatb12.y;
        u_xlat12.y = select(2.0f, 3.0f, x_4017);
        let x_4022 : bool = u_xlatb12.w;
        u_xlat89 = select(0.0f, 1.0f, x_4022);
        let x_4025 : bool = u_xlatb12.z;
        if (x_4025) {
          let x_4030 : f32 = u_xlat12.y;
          x_4026 = x_4030;
        } else {
          let x_4032 : f32 = u_xlat89;
          x_4026 = x_4032;
        }
        let x_4033 : f32 = x_4026;
        u_xlat89 = x_4033;
        let x_4034 : bool = u_xlatb62;
        if (x_4034) {
          let x_4039 : f32 = u_xlat12.x;
          x_4035 = x_4039;
        } else {
          let x_4041 : f32 = u_xlat89;
          x_4035 = x_4041;
        }
        let x_4042 : f32 = x_4035;
        u_xlat62.x = x_4042;
        let x_4044 : i32 = u_xlati84;
        let x_4046 : f32 = x_248.x_AdditionalShadowParams[x_4044].w;
        u_xlat89 = trunc(x_4046);
        let x_4049 : f32 = u_xlat62.x;
        let x_4050 : f32 = u_xlat89;
        u_xlat62.x = (x_4049 + x_4050);
        let x_4054 : f32 = u_xlat62.x;
        u_xlati88 = i32(x_4054);
      }
      let x_4056 : i32 = u_xlati88;
      u_xlati88 = (x_4056 << bitcast<u32>(2i));
      let x_4058 : vec3<f32> = vs_INTERP8;
      let x_4061 : i32 = u_xlati88;
      let x_4064 : i32 = u_xlati88;
      let x_4068 : vec4<f32> = x_248.x_AdditionalLightsWorldToShadow[((x_4061 + 1i) / 4i)][((x_4064 + 1i) % 4i)];
      u_xlat12 = (vec4<f32>(x_4058.y, x_4058.y, x_4058.y, x_4058.y) * x_4068);
      let x_4070 : i32 = u_xlati88;
      let x_4072 : i32 = u_xlati88;
      let x_4075 : vec4<f32> = x_248.x_AdditionalLightsWorldToShadow[(x_4070 / 4i)][(x_4072 % 4i)];
      let x_4076 : vec3<f32> = vs_INTERP8;
      let x_4079 : vec4<f32> = u_xlat12;
      u_xlat12 = ((x_4075 * vec4<f32>(x_4076.x, x_4076.x, x_4076.x, x_4076.x)) + x_4079);
      let x_4081 : i32 = u_xlati88;
      let x_4084 : i32 = u_xlati88;
      let x_4088 : vec4<f32> = x_248.x_AdditionalLightsWorldToShadow[((x_4081 + 2i) / 4i)][((x_4084 + 2i) % 4i)];
      let x_4089 : vec3<f32> = vs_INTERP8;
      let x_4092 : vec4<f32> = u_xlat12;
      u_xlat12 = ((x_4088 * vec4<f32>(x_4089.z, x_4089.z, x_4089.z, x_4089.z)) + x_4092);
      let x_4094 : vec4<f32> = u_xlat12;
      let x_4095 : i32 = u_xlati88;
      let x_4098 : i32 = u_xlati88;
      let x_4102 : vec4<f32> = x_248.x_AdditionalLightsWorldToShadow[((x_4095 + 3i) / 4i)][((x_4098 + 3i) % 4i)];
      u_xlat12 = (x_4094 + x_4102);
      let x_4104 : vec4<f32> = u_xlat12;
      let x_4106 : vec4<f32> = u_xlat12;
      let x_4108 : vec3<f32> = (vec3<f32>(x_4104.x, x_4104.y, x_4104.z) / vec3<f32>(x_4106.w, x_4106.w, x_4106.w));
      let x_4109 : vec4<f32> = u_xlat12;
      u_xlat12 = vec4<f32>(x_4108.x, x_4108.y, x_4108.z, x_4109.w);
      let x_4112 : i32 = u_xlati84;
      let x_4114 : f32 = x_248.x_AdditionalShadowParams[x_4112].y;
      u_xlatb88 = (0.0f < x_4114);
      let x_4116 : bool = u_xlatb88;
      if (x_4116) {
        let x_4119 : i32 = u_xlati84;
        let x_4121 : f32 = x_248.x_AdditionalShadowParams[x_4119].y;
        u_xlatb88 = (1.0f == x_4121);
        let x_4123 : bool = u_xlatb88;
        if (x_4123) {
          let x_4126 : vec4<f32> = u_xlat12;
          let x_4130 : vec4<f32> = x_248.x_AdditionalShadowOffset0;
          u_xlat13 = (vec4<f32>(x_4126.x, x_4126.y, x_4126.x, x_4126.y) + x_4130);
          let x_4133 : vec4<f32> = u_xlat13;
          let x_4134 : vec2<f32> = vec2<f32>(x_4133.x, x_4133.y);
          let x_4136 : f32 = u_xlat12.z;
          txVec60 = vec3<f32>(x_4134.x, x_4134.y, x_4136);
          let x_4144 : vec3<f32> = txVec60;
          let x_4146 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4144.xy, x_4144.z);
          u_xlat14.x = x_4146;
          let x_4149 : vec4<f32> = u_xlat13;
          let x_4150 : vec2<f32> = vec2<f32>(x_4149.z, x_4149.w);
          let x_4152 : f32 = u_xlat12.z;
          txVec61 = vec3<f32>(x_4150.x, x_4150.y, x_4152);
          let x_4159 : vec3<f32> = txVec61;
          let x_4161 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4159.xy, x_4159.z);
          u_xlat14.y = x_4161;
          let x_4163 : vec4<f32> = u_xlat12;
          let x_4166 : vec4<f32> = x_248.x_AdditionalShadowOffset1;
          u_xlat13 = (vec4<f32>(x_4163.x, x_4163.y, x_4163.x, x_4163.y) + x_4166);
          let x_4169 : vec4<f32> = u_xlat13;
          let x_4170 : vec2<f32> = vec2<f32>(x_4169.x, x_4169.y);
          let x_4172 : f32 = u_xlat12.z;
          txVec62 = vec3<f32>(x_4170.x, x_4170.y, x_4172);
          let x_4179 : vec3<f32> = txVec62;
          let x_4181 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4179.xy, x_4179.z);
          u_xlat14.z = x_4181;
          let x_4184 : vec4<f32> = u_xlat13;
          let x_4185 : vec2<f32> = vec2<f32>(x_4184.z, x_4184.w);
          let x_4187 : f32 = u_xlat12.z;
          txVec63 = vec3<f32>(x_4185.x, x_4185.y, x_4187);
          let x_4194 : vec3<f32> = txVec63;
          let x_4196 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4194.xy, x_4194.z);
          u_xlat14.w = x_4196;
          let x_4198 : vec4<f32> = u_xlat14;
          u_xlat88 = dot(x_4198, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_4201 : i32 = u_xlati84;
          let x_4203 : f32 = x_248.x_AdditionalShadowParams[x_4201].y;
          u_xlatb62 = (2.0f == x_4203);
          let x_4205 : bool = u_xlatb62;
          if (x_4205) {
            let x_4208 : vec4<f32> = u_xlat12;
            let x_4212 : vec4<f32> = x_248.x_AdditionalShadowmapSize;
            u_xlat62 = ((vec2<f32>(x_4208.x, x_4208.y) * vec2<f32>(x_4212.z, x_4212.w)) + vec2<f32>(0.5f, 0.5f));
            let x_4216 : vec2<f32> = u_xlat62;
            u_xlat62 = floor(x_4216);
            let x_4218 : vec4<f32> = u_xlat12;
            let x_4221 : vec4<f32> = x_248.x_AdditionalShadowmapSize;
            let x_4224 : vec2<f32> = u_xlat62;
            let x_4226 : vec2<f32> = ((vec2<f32>(x_4218.x, x_4218.y) * vec2<f32>(x_4221.z, x_4221.w)) + -(x_4224));
            let x_4227 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4226.x, x_4226.y, x_4227.z, x_4227.w);
            let x_4229 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_4229.x, x_4229.x, x_4229.y, x_4229.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4232 : vec4<f32> = u_xlat14;
            let x_4234 : vec4<f32> = u_xlat14;
            u_xlat15 = (vec4<f32>(x_4232.x, x_4232.x, x_4232.z, x_4232.z) * vec4<f32>(x_4234.x, x_4234.x, x_4234.z, x_4234.z));
            let x_4238 : vec4<f32> = u_xlat15;
            u_xlat67 = (vec2<f32>(x_4238.y, x_4238.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_4241 : vec4<f32> = u_xlat15;
            let x_4244 : vec4<f32> = u_xlat13;
            let x_4247 : vec2<f32> = ((vec2<f32>(x_4241.x, x_4241.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_4244.x, x_4244.y)));
            let x_4248 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4247.x, x_4248.y, x_4247.y, x_4248.w);
            let x_4250 : vec4<f32> = u_xlat13;
            let x_4253 : vec2<f32> = (-(vec2<f32>(x_4250.x, x_4250.y)) + vec2<f32>(1.0f, 1.0f));
            let x_4254 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4253.x, x_4253.y, x_4254.z, x_4254.w);
            let x_4256 : vec4<f32> = u_xlat13;
            u_xlat69 = min(vec2<f32>(x_4256.x, x_4256.y), vec2<f32>(0.0f, 0.0f));
            let x_4259 : vec2<f32> = u_xlat69;
            let x_4261 : vec2<f32> = u_xlat69;
            let x_4263 : vec4<f32> = u_xlat15;
            u_xlat69 = ((-(x_4259) * x_4261) + vec2<f32>(x_4263.x, x_4263.y));
            let x_4266 : vec4<f32> = u_xlat13;
            let x_4268 : vec2<f32> = max(vec2<f32>(x_4266.x, x_4266.y), vec2<f32>(0.0f, 0.0f));
            let x_4269 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4268.x, x_4268.y, x_4269.z, x_4269.w);
            let x_4271 : vec4<f32> = u_xlat13;
            let x_4274 : vec4<f32> = u_xlat13;
            let x_4277 : vec4<f32> = u_xlat14;
            let x_4279 : vec2<f32> = ((-(vec2<f32>(x_4271.x, x_4271.y)) * vec2<f32>(x_4274.x, x_4274.y)) + vec2<f32>(x_4277.y, x_4277.w));
            let x_4280 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4279.x, x_4279.y, x_4280.z, x_4280.w);
            let x_4282 : vec2<f32> = u_xlat69;
            u_xlat69 = (x_4282 + vec2<f32>(1.0f, 1.0f));
            let x_4284 : vec4<f32> = u_xlat13;
            let x_4286 : vec2<f32> = (vec2<f32>(x_4284.x, x_4284.y) + vec2<f32>(1.0f, 1.0f));
            let x_4287 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4286.x, x_4286.y, x_4287.z, x_4287.w);
            let x_4289 : vec4<f32> = u_xlat14;
            let x_4291 : vec2<f32> = (vec2<f32>(x_4289.x, x_4289.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4292 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4291.x, x_4291.y, x_4292.z, x_4292.w);
            let x_4294 : vec4<f32> = u_xlat15;
            let x_4296 : vec2<f32> = (vec2<f32>(x_4294.x, x_4294.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4297 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4296.x, x_4296.y, x_4297.z, x_4297.w);
            let x_4299 : vec2<f32> = u_xlat69;
            let x_4300 : vec2<f32> = (x_4299 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4301 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4300.x, x_4300.y, x_4301.z, x_4301.w);
            let x_4303 : vec4<f32> = u_xlat13;
            let x_4305 : vec2<f32> = (vec2<f32>(x_4303.x, x_4303.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4306 : vec4<f32> = u_xlat18;
            u_xlat18 = vec4<f32>(x_4305.x, x_4305.y, x_4306.z, x_4306.w);
            let x_4308 : vec4<f32> = u_xlat14;
            let x_4310 : vec2<f32> = (vec2<f32>(x_4308.y, x_4308.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4311 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4310.x, x_4310.y, x_4311.z, x_4311.w);
            let x_4314 : f32 = u_xlat15.x;
            u_xlat16.z = x_4314;
            let x_4317 : f32 = u_xlat13.x;
            u_xlat16.w = x_4317;
            let x_4320 : f32 = u_xlat18.x;
            u_xlat17.z = x_4320;
            let x_4323 : f32 = u_xlat67.x;
            u_xlat17.w = x_4323;
            let x_4325 : vec4<f32> = u_xlat16;
            let x_4327 : vec4<f32> = u_xlat17;
            u_xlat14 = (vec4<f32>(x_4325.z, x_4325.w, x_4325.x, x_4325.z) + vec4<f32>(x_4327.z, x_4327.w, x_4327.x, x_4327.z));
            let x_4331 : f32 = u_xlat16.y;
            u_xlat15.z = x_4331;
            let x_4334 : f32 = u_xlat13.y;
            u_xlat15.w = x_4334;
            let x_4337 : f32 = u_xlat17.y;
            u_xlat18.z = x_4337;
            let x_4340 : f32 = u_xlat67.y;
            u_xlat18.w = x_4340;
            let x_4342 : vec4<f32> = u_xlat15;
            let x_4344 : vec4<f32> = u_xlat18;
            let x_4346 : vec3<f32> = (vec3<f32>(x_4342.z, x_4342.y, x_4342.w) + vec3<f32>(x_4344.z, x_4344.y, x_4344.w));
            let x_4347 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4346.x, x_4346.y, x_4346.z, x_4347.w);
            let x_4349 : vec4<f32> = u_xlat17;
            let x_4351 : vec4<f32> = u_xlat14;
            let x_4353 : vec3<f32> = (vec3<f32>(x_4349.x, x_4349.z, x_4349.w) / vec3<f32>(x_4351.z, x_4351.w, x_4351.y));
            let x_4354 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4353.x, x_4353.y, x_4353.z, x_4354.w);
            let x_4356 : vec4<f32> = u_xlat15;
            let x_4358 : vec3<f32> = (vec3<f32>(x_4356.x, x_4356.y, x_4356.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4359 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4358.x, x_4358.y, x_4358.z, x_4359.w);
            let x_4361 : vec4<f32> = u_xlat18;
            let x_4363 : vec4<f32> = u_xlat13;
            let x_4365 : vec3<f32> = (vec3<f32>(x_4361.z, x_4361.y, x_4361.w) / vec3<f32>(x_4363.x, x_4363.y, x_4363.z));
            let x_4366 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4365.x, x_4365.y, x_4365.z, x_4366.w);
            let x_4368 : vec4<f32> = u_xlat16;
            let x_4370 : vec3<f32> = (vec3<f32>(x_4368.x, x_4368.y, x_4368.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4371 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4370.x, x_4370.y, x_4370.z, x_4371.w);
            let x_4373 : vec4<f32> = u_xlat15;
            let x_4376 : vec4<f32> = x_248.x_AdditionalShadowmapSize;
            let x_4378 : vec3<f32> = (vec3<f32>(x_4373.y, x_4373.x, x_4373.z) * vec3<f32>(x_4376.x, x_4376.x, x_4376.x));
            let x_4379 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4378.x, x_4378.y, x_4378.z, x_4379.w);
            let x_4381 : vec4<f32> = u_xlat16;
            let x_4384 : vec4<f32> = x_248.x_AdditionalShadowmapSize;
            let x_4386 : vec3<f32> = (vec3<f32>(x_4381.x, x_4381.y, x_4381.z) * vec3<f32>(x_4384.y, x_4384.y, x_4384.y));
            let x_4387 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4386.x, x_4386.y, x_4386.z, x_4387.w);
            let x_4390 : f32 = u_xlat16.x;
            u_xlat15.w = x_4390;
            let x_4392 : vec2<f32> = u_xlat62;
            let x_4395 : vec4<f32> = x_248.x_AdditionalShadowmapSize;
            let x_4398 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_4392.x, x_4392.y, x_4392.x, x_4392.y) * vec4<f32>(x_4395.x, x_4395.y, x_4395.x, x_4395.y)) + vec4<f32>(x_4398.y, x_4398.w, x_4398.x, x_4398.w));
            let x_4401 : vec2<f32> = u_xlat62;
            let x_4403 : vec4<f32> = x_248.x_AdditionalShadowmapSize;
            let x_4406 : vec4<f32> = u_xlat15;
            let x_4408 : vec2<f32> = ((x_4401 * vec2<f32>(x_4403.x, x_4403.y)) + vec2<f32>(x_4406.z, x_4406.w));
            let x_4409 : vec4<f32> = u_xlat18;
            u_xlat18 = vec4<f32>(x_4408.x, x_4408.y, x_4409.z, x_4409.w);
            let x_4412 : f32 = u_xlat15.y;
            u_xlat16.w = x_4412;
            let x_4414 : vec4<f32> = u_xlat16;
            let x_4415 : vec2<f32> = vec2<f32>(x_4414.y, x_4414.z);
            let x_4416 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4416.x, x_4415.x, x_4416.z, x_4415.y);
            let x_4418 : vec2<f32> = u_xlat62;
            let x_4421 : vec4<f32> = x_248.x_AdditionalShadowmapSize;
            let x_4424 : vec4<f32> = u_xlat15;
            u_xlat19 = ((vec4<f32>(x_4418.x, x_4418.y, x_4418.x, x_4418.y) * vec4<f32>(x_4421.x, x_4421.y, x_4421.x, x_4421.y)) + vec4<f32>(x_4424.x, x_4424.y, x_4424.z, x_4424.y));
            let x_4427 : vec2<f32> = u_xlat62;
            let x_4430 : vec4<f32> = x_248.x_AdditionalShadowmapSize;
            let x_4433 : vec4<f32> = u_xlat16;
            u_xlat16 = ((vec4<f32>(x_4427.x, x_4427.y, x_4427.x, x_4427.y) * vec4<f32>(x_4430.x, x_4430.y, x_4430.x, x_4430.y)) + vec4<f32>(x_4433.w, x_4433.y, x_4433.w, x_4433.z));
            let x_4436 : vec2<f32> = u_xlat62;
            let x_4439 : vec4<f32> = x_248.x_AdditionalShadowmapSize;
            let x_4442 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_4436.x, x_4436.y, x_4436.x, x_4436.y) * vec4<f32>(x_4439.x, x_4439.y, x_4439.x, x_4439.y)) + vec4<f32>(x_4442.x, x_4442.w, x_4442.z, x_4442.w));
            let x_4445 : vec4<f32> = u_xlat13;
            let x_4447 : vec4<f32> = u_xlat14;
            u_xlat20 = (vec4<f32>(x_4445.x, x_4445.x, x_4445.x, x_4445.y) * vec4<f32>(x_4447.z, x_4447.w, x_4447.y, x_4447.z));
            let x_4450 : vec4<f32> = u_xlat13;
            let x_4452 : vec4<f32> = u_xlat14;
            u_xlat21 = (vec4<f32>(x_4450.y, x_4450.y, x_4450.z, x_4450.z) * x_4452);
            let x_4455 : f32 = u_xlat13.z;
            let x_4457 : f32 = u_xlat14.y;
            u_xlat62.x = (x_4455 * x_4457);
            let x_4461 : vec4<f32> = u_xlat17;
            let x_4462 : vec2<f32> = vec2<f32>(x_4461.x, x_4461.y);
            let x_4464 : f32 = u_xlat12.z;
            txVec64 = vec3<f32>(x_4462.x, x_4462.y, x_4464);
            let x_4471 : vec3<f32> = txVec64;
            let x_4473 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4471.xy, x_4471.z);
            u_xlat89 = x_4473;
            let x_4475 : vec4<f32> = u_xlat17;
            let x_4476 : vec2<f32> = vec2<f32>(x_4475.z, x_4475.w);
            let x_4478 : f32 = u_xlat12.z;
            txVec65 = vec3<f32>(x_4476.x, x_4476.y, x_4478);
            let x_4485 : vec3<f32> = txVec65;
            let x_4487 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4485.xy, x_4485.z);
            u_xlat90 = x_4487;
            let x_4488 : f32 = u_xlat90;
            let x_4490 : f32 = u_xlat20.y;
            u_xlat90 = (x_4488 * x_4490);
            let x_4493 : f32 = u_xlat20.x;
            let x_4494 : f32 = u_xlat89;
            let x_4496 : f32 = u_xlat90;
            u_xlat89 = ((x_4493 * x_4494) + x_4496);
            let x_4499 : vec4<f32> = u_xlat18;
            let x_4500 : vec2<f32> = vec2<f32>(x_4499.x, x_4499.y);
            let x_4502 : f32 = u_xlat12.z;
            txVec66 = vec3<f32>(x_4500.x, x_4500.y, x_4502);
            let x_4509 : vec3<f32> = txVec66;
            let x_4511 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4509.xy, x_4509.z);
            u_xlat90 = x_4511;
            let x_4513 : f32 = u_xlat20.z;
            let x_4514 : f32 = u_xlat90;
            let x_4516 : f32 = u_xlat89;
            u_xlat89 = ((x_4513 * x_4514) + x_4516);
            let x_4519 : vec4<f32> = u_xlat16;
            let x_4520 : vec2<f32> = vec2<f32>(x_4519.x, x_4519.y);
            let x_4522 : f32 = u_xlat12.z;
            txVec67 = vec3<f32>(x_4520.x, x_4520.y, x_4522);
            let x_4529 : vec3<f32> = txVec67;
            let x_4531 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4529.xy, x_4529.z);
            u_xlat90 = x_4531;
            let x_4533 : f32 = u_xlat20.w;
            let x_4534 : f32 = u_xlat90;
            let x_4536 : f32 = u_xlat89;
            u_xlat89 = ((x_4533 * x_4534) + x_4536);
            let x_4539 : vec4<f32> = u_xlat19;
            let x_4540 : vec2<f32> = vec2<f32>(x_4539.x, x_4539.y);
            let x_4542 : f32 = u_xlat12.z;
            txVec68 = vec3<f32>(x_4540.x, x_4540.y, x_4542);
            let x_4549 : vec3<f32> = txVec68;
            let x_4551 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4549.xy, x_4549.z);
            u_xlat90 = x_4551;
            let x_4553 : f32 = u_xlat21.x;
            let x_4554 : f32 = u_xlat90;
            let x_4556 : f32 = u_xlat89;
            u_xlat89 = ((x_4553 * x_4554) + x_4556);
            let x_4559 : vec4<f32> = u_xlat19;
            let x_4560 : vec2<f32> = vec2<f32>(x_4559.z, x_4559.w);
            let x_4562 : f32 = u_xlat12.z;
            txVec69 = vec3<f32>(x_4560.x, x_4560.y, x_4562);
            let x_4569 : vec3<f32> = txVec69;
            let x_4571 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4569.xy, x_4569.z);
            u_xlat90 = x_4571;
            let x_4573 : f32 = u_xlat21.y;
            let x_4574 : f32 = u_xlat90;
            let x_4576 : f32 = u_xlat89;
            u_xlat89 = ((x_4573 * x_4574) + x_4576);
            let x_4579 : vec4<f32> = u_xlat16;
            let x_4580 : vec2<f32> = vec2<f32>(x_4579.z, x_4579.w);
            let x_4582 : f32 = u_xlat12.z;
            txVec70 = vec3<f32>(x_4580.x, x_4580.y, x_4582);
            let x_4589 : vec3<f32> = txVec70;
            let x_4591 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4589.xy, x_4589.z);
            u_xlat90 = x_4591;
            let x_4593 : f32 = u_xlat21.z;
            let x_4594 : f32 = u_xlat90;
            let x_4596 : f32 = u_xlat89;
            u_xlat89 = ((x_4593 * x_4594) + x_4596);
            let x_4599 : vec4<f32> = u_xlat15;
            let x_4600 : vec2<f32> = vec2<f32>(x_4599.x, x_4599.y);
            let x_4602 : f32 = u_xlat12.z;
            txVec71 = vec3<f32>(x_4600.x, x_4600.y, x_4602);
            let x_4609 : vec3<f32> = txVec71;
            let x_4611 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4609.xy, x_4609.z);
            u_xlat90 = x_4611;
            let x_4613 : f32 = u_xlat21.w;
            let x_4614 : f32 = u_xlat90;
            let x_4616 : f32 = u_xlat89;
            u_xlat89 = ((x_4613 * x_4614) + x_4616);
            let x_4619 : vec4<f32> = u_xlat15;
            let x_4620 : vec2<f32> = vec2<f32>(x_4619.z, x_4619.w);
            let x_4622 : f32 = u_xlat12.z;
            txVec72 = vec3<f32>(x_4620.x, x_4620.y, x_4622);
            let x_4629 : vec3<f32> = txVec72;
            let x_4631 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4629.xy, x_4629.z);
            u_xlat90 = x_4631;
            let x_4633 : f32 = u_xlat62.x;
            let x_4634 : f32 = u_xlat90;
            let x_4636 : f32 = u_xlat89;
            u_xlat88 = ((x_4633 * x_4634) + x_4636);
          } else {
            let x_4639 : vec4<f32> = u_xlat12;
            let x_4642 : vec4<f32> = x_248.x_AdditionalShadowmapSize;
            u_xlat62 = ((vec2<f32>(x_4639.x, x_4639.y) * vec2<f32>(x_4642.z, x_4642.w)) + vec2<f32>(0.5f, 0.5f));
            let x_4646 : vec2<f32> = u_xlat62;
            u_xlat62 = floor(x_4646);
            let x_4648 : vec4<f32> = u_xlat12;
            let x_4651 : vec4<f32> = x_248.x_AdditionalShadowmapSize;
            let x_4654 : vec2<f32> = u_xlat62;
            let x_4656 : vec2<f32> = ((vec2<f32>(x_4648.x, x_4648.y) * vec2<f32>(x_4651.z, x_4651.w)) + -(x_4654));
            let x_4657 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4656.x, x_4656.y, x_4657.z, x_4657.w);
            let x_4659 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_4659.x, x_4659.x, x_4659.y, x_4659.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4662 : vec4<f32> = u_xlat14;
            let x_4664 : vec4<f32> = u_xlat14;
            u_xlat15 = (vec4<f32>(x_4662.x, x_4662.x, x_4662.z, x_4662.z) * vec4<f32>(x_4664.x, x_4664.x, x_4664.z, x_4664.z));
            let x_4667 : vec4<f32> = u_xlat15;
            let x_4669 : vec2<f32> = (vec2<f32>(x_4667.y, x_4667.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_4670 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4670.x, x_4669.x, x_4670.z, x_4669.y);
            let x_4672 : vec4<f32> = u_xlat15;
            let x_4675 : vec4<f32> = u_xlat13;
            u_xlat67 = ((vec2<f32>(x_4672.x, x_4672.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_4675.x, x_4675.y)));
            let x_4679 : vec4<f32> = u_xlat13;
            let x_4682 : vec2<f32> = (-(vec2<f32>(x_4679.x, x_4679.y)) + vec2<f32>(1.0f, 1.0f));
            let x_4683 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4682.x, x_4683.y, x_4682.y, x_4683.w);
            let x_4685 : vec4<f32> = u_xlat13;
            let x_4687 : vec2<f32> = min(vec2<f32>(x_4685.x, x_4685.y), vec2<f32>(0.0f, 0.0f));
            let x_4688 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4687.x, x_4687.y, x_4688.z, x_4688.w);
            let x_4690 : vec4<f32> = u_xlat15;
            let x_4693 : vec4<f32> = u_xlat15;
            let x_4696 : vec4<f32> = u_xlat14;
            let x_4698 : vec2<f32> = ((-(vec2<f32>(x_4690.x, x_4690.y)) * vec2<f32>(x_4693.x, x_4693.y)) + vec2<f32>(x_4696.x, x_4696.z));
            let x_4699 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4698.x, x_4699.y, x_4698.y, x_4699.w);
            let x_4701 : vec4<f32> = u_xlat13;
            let x_4703 : vec2<f32> = max(vec2<f32>(x_4701.x, x_4701.y), vec2<f32>(0.0f, 0.0f));
            let x_4704 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4703.x, x_4703.y, x_4704.z, x_4704.w);
            let x_4706 : vec4<f32> = u_xlat15;
            let x_4709 : vec4<f32> = u_xlat15;
            let x_4712 : vec4<f32> = u_xlat14;
            let x_4714 : vec2<f32> = ((-(vec2<f32>(x_4706.x, x_4706.y)) * vec2<f32>(x_4709.x, x_4709.y)) + vec2<f32>(x_4712.y, x_4712.w));
            let x_4715 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4715.x, x_4714.x, x_4715.z, x_4714.y);
            let x_4717 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_4717 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
            let x_4720 : f32 = u_xlat14.y;
            u_xlat15.z = (x_4720 * 0.08163200318813323975f);
            let x_4723 : vec2<f32> = u_xlat67;
            let x_4725 : vec2<f32> = (vec2<f32>(x_4723.y, x_4723.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_4726 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4725.x, x_4725.y, x_4726.z, x_4726.w);
            let x_4728 : vec4<f32> = u_xlat14;
            u_xlat67 = (vec2<f32>(x_4728.x, x_4728.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_4732 : f32 = u_xlat14.w;
            u_xlat17.z = (x_4732 * 0.08163200318813323975f);
            let x_4736 : f32 = u_xlat17.y;
            u_xlat15.x = x_4736;
            let x_4738 : vec4<f32> = u_xlat13;
            let x_4741 : vec2<f32> = ((vec2<f32>(x_4738.x, x_4738.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4742 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4742.x, x_4741.x, x_4742.z, x_4741.y);
            let x_4744 : vec4<f32> = u_xlat13;
            let x_4747 : vec2<f32> = ((vec2<f32>(x_4744.x, x_4744.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4748 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4747.x, x_4748.y, x_4747.y, x_4748.w);
            let x_4751 : f32 = u_xlat67.x;
            u_xlat14.y = x_4751;
            let x_4754 : f32 = u_xlat16.y;
            u_xlat14.w = x_4754;
            let x_4756 : vec4<f32> = u_xlat14;
            let x_4757 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_4756 + x_4757);
            let x_4759 : vec4<f32> = u_xlat13;
            let x_4762 : vec2<f32> = ((vec2<f32>(x_4759.y, x_4759.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4763 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4763.x, x_4762.x, x_4763.z, x_4762.y);
            let x_4765 : vec4<f32> = u_xlat13;
            let x_4768 : vec2<f32> = ((vec2<f32>(x_4765.y, x_4765.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4769 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4768.x, x_4769.y, x_4768.y, x_4769.w);
            let x_4772 : f32 = u_xlat67.y;
            u_xlat16.y = x_4772;
            let x_4774 : vec4<f32> = u_xlat16;
            let x_4775 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_4774 + x_4775);
            let x_4777 : vec4<f32> = u_xlat14;
            let x_4778 : vec4<f32> = u_xlat15;
            u_xlat14 = (x_4777 / x_4778);
            let x_4780 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_4780 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4782 : vec4<f32> = u_xlat16;
            let x_4783 : vec4<f32> = u_xlat13;
            u_xlat16 = (x_4782 / x_4783);
            let x_4785 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_4785 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4787 : vec4<f32> = u_xlat14;
            let x_4790 : vec4<f32> = x_248.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_4787.w, x_4787.x, x_4787.y, x_4787.z) * vec4<f32>(x_4790.x, x_4790.x, x_4790.x, x_4790.x));
            let x_4793 : vec4<f32> = u_xlat16;
            let x_4796 : vec4<f32> = x_248.x_AdditionalShadowmapSize;
            u_xlat16 = (vec4<f32>(x_4793.x, x_4793.w, x_4793.y, x_4793.z) * vec4<f32>(x_4796.y, x_4796.y, x_4796.y, x_4796.y));
            let x_4799 : vec4<f32> = u_xlat14;
            let x_4800 : vec3<f32> = vec3<f32>(x_4799.y, x_4799.z, x_4799.w);
            let x_4801 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4800.x, x_4801.y, x_4800.y, x_4800.z);
            let x_4804 : f32 = u_xlat16.x;
            u_xlat17.y = x_4804;
            let x_4806 : vec2<f32> = u_xlat62;
            let x_4809 : vec4<f32> = x_248.x_AdditionalShadowmapSize;
            let x_4812 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_4806.x, x_4806.y, x_4806.x, x_4806.y) * vec4<f32>(x_4809.x, x_4809.y, x_4809.x, x_4809.y)) + vec4<f32>(x_4812.x, x_4812.y, x_4812.z, x_4812.y));
            let x_4815 : vec2<f32> = u_xlat62;
            let x_4817 : vec4<f32> = x_248.x_AdditionalShadowmapSize;
            let x_4820 : vec4<f32> = u_xlat17;
            let x_4822 : vec2<f32> = ((x_4815 * vec2<f32>(x_4817.x, x_4817.y)) + vec2<f32>(x_4820.w, x_4820.y));
            let x_4823 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_4822.x, x_4822.y, x_4823.z, x_4823.w);
            let x_4826 : f32 = u_xlat17.y;
            u_xlat14.y = x_4826;
            let x_4829 : f32 = u_xlat16.z;
            u_xlat17.y = x_4829;
            let x_4831 : vec2<f32> = u_xlat62;
            let x_4834 : vec4<f32> = x_248.x_AdditionalShadowmapSize;
            let x_4837 : vec4<f32> = u_xlat17;
            u_xlat20 = ((vec4<f32>(x_4831.x, x_4831.y, x_4831.x, x_4831.y) * vec4<f32>(x_4834.x, x_4834.y, x_4834.x, x_4834.y)) + vec4<f32>(x_4837.x, x_4837.y, x_4837.z, x_4837.y));
            let x_4841 : vec2<f32> = u_xlat62;
            let x_4843 : vec4<f32> = x_248.x_AdditionalShadowmapSize;
            let x_4846 : vec4<f32> = u_xlat17;
            u_xlat73 = ((x_4841 * vec2<f32>(x_4843.x, x_4843.y)) + vec2<f32>(x_4846.w, x_4846.y));
            let x_4850 : f32 = u_xlat17.y;
            u_xlat14.z = x_4850;
            let x_4852 : vec2<f32> = u_xlat62;
            let x_4855 : vec4<f32> = x_248.x_AdditionalShadowmapSize;
            let x_4858 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_4852.x, x_4852.y, x_4852.x, x_4852.y) * vec4<f32>(x_4855.x, x_4855.y, x_4855.x, x_4855.y)) + vec4<f32>(x_4858.x, x_4858.y, x_4858.x, x_4858.z));
            let x_4862 : f32 = u_xlat16.w;
            u_xlat17.y = x_4862;
            let x_4865 : vec2<f32> = u_xlat62;
            let x_4868 : vec4<f32> = x_248.x_AdditionalShadowmapSize;
            let x_4871 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_4865.x, x_4865.y, x_4865.x, x_4865.y) * vec4<f32>(x_4868.x, x_4868.y, x_4868.x, x_4868.y)) + vec4<f32>(x_4871.x, x_4871.y, x_4871.z, x_4871.y));
            let x_4875 : vec2<f32> = u_xlat62;
            let x_4877 : vec4<f32> = x_248.x_AdditionalShadowmapSize;
            let x_4880 : vec4<f32> = u_xlat17;
            u_xlat41 = ((x_4875 * vec2<f32>(x_4877.x, x_4877.y)) + vec2<f32>(x_4880.w, x_4880.y));
            let x_4884 : f32 = u_xlat17.y;
            u_xlat14.w = x_4884;
            let x_4887 : vec2<f32> = u_xlat62;
            let x_4889 : vec4<f32> = x_248.x_AdditionalShadowmapSize;
            let x_4892 : vec4<f32> = u_xlat14;
            u_xlat23 = ((x_4887 * vec2<f32>(x_4889.x, x_4889.y)) + vec2<f32>(x_4892.x, x_4892.w));
            let x_4895 : vec4<f32> = u_xlat17;
            let x_4896 : vec3<f32> = vec3<f32>(x_4895.x, x_4895.z, x_4895.w);
            let x_4897 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4896.x, x_4897.y, x_4896.y, x_4896.z);
            let x_4899 : vec2<f32> = u_xlat62;
            let x_4902 : vec4<f32> = x_248.x_AdditionalShadowmapSize;
            let x_4905 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_4899.x, x_4899.y, x_4899.x, x_4899.y) * vec4<f32>(x_4902.x, x_4902.y, x_4902.x, x_4902.y)) + vec4<f32>(x_4905.x, x_4905.y, x_4905.z, x_4905.y));
            let x_4909 : vec2<f32> = u_xlat62;
            let x_4911 : vec4<f32> = x_248.x_AdditionalShadowmapSize;
            let x_4914 : vec4<f32> = u_xlat16;
            u_xlat70 = ((x_4909 * vec2<f32>(x_4911.x, x_4911.y)) + vec2<f32>(x_4914.w, x_4914.y));
            let x_4918 : f32 = u_xlat14.x;
            u_xlat16.x = x_4918;
            let x_4920 : vec2<f32> = u_xlat62;
            let x_4922 : vec4<f32> = x_248.x_AdditionalShadowmapSize;
            let x_4925 : vec4<f32> = u_xlat16;
            u_xlat62 = ((x_4920 * vec2<f32>(x_4922.x, x_4922.y)) + vec2<f32>(x_4925.x, x_4925.y));
            let x_4929 : vec4<f32> = u_xlat13;
            let x_4931 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_4929.x, x_4929.x, x_4929.x, x_4929.x) * x_4931);
            let x_4934 : vec4<f32> = u_xlat13;
            let x_4936 : vec4<f32> = u_xlat15;
            u_xlat25 = (vec4<f32>(x_4934.y, x_4934.y, x_4934.y, x_4934.y) * x_4936);
            let x_4939 : vec4<f32> = u_xlat13;
            let x_4941 : vec4<f32> = u_xlat15;
            u_xlat26 = (vec4<f32>(x_4939.z, x_4939.z, x_4939.z, x_4939.z) * x_4941);
            let x_4943 : vec4<f32> = u_xlat13;
            let x_4945 : vec4<f32> = u_xlat15;
            u_xlat13 = (vec4<f32>(x_4943.w, x_4943.w, x_4943.w, x_4943.w) * x_4945);
            let x_4948 : vec4<f32> = u_xlat18;
            let x_4949 : vec2<f32> = vec2<f32>(x_4948.x, x_4948.y);
            let x_4951 : f32 = u_xlat12.z;
            txVec73 = vec3<f32>(x_4949.x, x_4949.y, x_4951);
            let x_4958 : vec3<f32> = txVec73;
            let x_4960 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4958.xy, x_4958.z);
            u_xlat90 = x_4960;
            let x_4962 : vec4<f32> = u_xlat18;
            let x_4963 : vec2<f32> = vec2<f32>(x_4962.z, x_4962.w);
            let x_4965 : f32 = u_xlat12.z;
            txVec74 = vec3<f32>(x_4963.x, x_4963.y, x_4965);
            let x_4973 : vec3<f32> = txVec74;
            let x_4975 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4973.xy, x_4973.z);
            u_xlat91 = x_4975;
            let x_4976 : f32 = u_xlat91;
            let x_4978 : f32 = u_xlat24.y;
            u_xlat91 = (x_4976 * x_4978);
            let x_4981 : f32 = u_xlat24.x;
            let x_4982 : f32 = u_xlat90;
            let x_4984 : f32 = u_xlat91;
            u_xlat90 = ((x_4981 * x_4982) + x_4984);
            let x_4987 : vec4<f32> = u_xlat19;
            let x_4988 : vec2<f32> = vec2<f32>(x_4987.x, x_4987.y);
            let x_4990 : f32 = u_xlat12.z;
            txVec75 = vec3<f32>(x_4988.x, x_4988.y, x_4990);
            let x_4997 : vec3<f32> = txVec75;
            let x_4999 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4997.xy, x_4997.z);
            u_xlat91 = x_4999;
            let x_5001 : f32 = u_xlat24.z;
            let x_5002 : f32 = u_xlat91;
            let x_5004 : f32 = u_xlat90;
            u_xlat90 = ((x_5001 * x_5002) + x_5004);
            let x_5007 : vec4<f32> = u_xlat21;
            let x_5008 : vec2<f32> = vec2<f32>(x_5007.x, x_5007.y);
            let x_5010 : f32 = u_xlat12.z;
            txVec76 = vec3<f32>(x_5008.x, x_5008.y, x_5010);
            let x_5017 : vec3<f32> = txVec76;
            let x_5019 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5017.xy, x_5017.z);
            u_xlat91 = x_5019;
            let x_5021 : f32 = u_xlat24.w;
            let x_5022 : f32 = u_xlat91;
            let x_5024 : f32 = u_xlat90;
            u_xlat90 = ((x_5021 * x_5022) + x_5024);
            let x_5027 : vec4<f32> = u_xlat20;
            let x_5028 : vec2<f32> = vec2<f32>(x_5027.x, x_5027.y);
            let x_5030 : f32 = u_xlat12.z;
            txVec77 = vec3<f32>(x_5028.x, x_5028.y, x_5030);
            let x_5037 : vec3<f32> = txVec77;
            let x_5039 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5037.xy, x_5037.z);
            u_xlat91 = x_5039;
            let x_5041 : f32 = u_xlat25.x;
            let x_5042 : f32 = u_xlat91;
            let x_5044 : f32 = u_xlat90;
            u_xlat90 = ((x_5041 * x_5042) + x_5044);
            let x_5047 : vec4<f32> = u_xlat20;
            let x_5048 : vec2<f32> = vec2<f32>(x_5047.z, x_5047.w);
            let x_5050 : f32 = u_xlat12.z;
            txVec78 = vec3<f32>(x_5048.x, x_5048.y, x_5050);
            let x_5057 : vec3<f32> = txVec78;
            let x_5059 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5057.xy, x_5057.z);
            u_xlat91 = x_5059;
            let x_5061 : f32 = u_xlat25.y;
            let x_5062 : f32 = u_xlat91;
            let x_5064 : f32 = u_xlat90;
            u_xlat90 = ((x_5061 * x_5062) + x_5064);
            let x_5067 : vec2<f32> = u_xlat73;
            let x_5069 : f32 = u_xlat12.z;
            txVec79 = vec3<f32>(x_5067.x, x_5067.y, x_5069);
            let x_5076 : vec3<f32> = txVec79;
            let x_5078 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5076.xy, x_5076.z);
            u_xlat91 = x_5078;
            let x_5080 : f32 = u_xlat25.z;
            let x_5081 : f32 = u_xlat91;
            let x_5083 : f32 = u_xlat90;
            u_xlat90 = ((x_5080 * x_5081) + x_5083);
            let x_5086 : vec4<f32> = u_xlat21;
            let x_5087 : vec2<f32> = vec2<f32>(x_5086.z, x_5086.w);
            let x_5089 : f32 = u_xlat12.z;
            txVec80 = vec3<f32>(x_5087.x, x_5087.y, x_5089);
            let x_5096 : vec3<f32> = txVec80;
            let x_5098 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5096.xy, x_5096.z);
            u_xlat91 = x_5098;
            let x_5100 : f32 = u_xlat25.w;
            let x_5101 : f32 = u_xlat91;
            let x_5103 : f32 = u_xlat90;
            u_xlat90 = ((x_5100 * x_5101) + x_5103);
            let x_5106 : vec4<f32> = u_xlat22;
            let x_5107 : vec2<f32> = vec2<f32>(x_5106.x, x_5106.y);
            let x_5109 : f32 = u_xlat12.z;
            txVec81 = vec3<f32>(x_5107.x, x_5107.y, x_5109);
            let x_5116 : vec3<f32> = txVec81;
            let x_5118 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5116.xy, x_5116.z);
            u_xlat91 = x_5118;
            let x_5120 : f32 = u_xlat26.x;
            let x_5121 : f32 = u_xlat91;
            let x_5123 : f32 = u_xlat90;
            u_xlat90 = ((x_5120 * x_5121) + x_5123);
            let x_5126 : vec4<f32> = u_xlat22;
            let x_5127 : vec2<f32> = vec2<f32>(x_5126.z, x_5126.w);
            let x_5129 : f32 = u_xlat12.z;
            txVec82 = vec3<f32>(x_5127.x, x_5127.y, x_5129);
            let x_5136 : vec3<f32> = txVec82;
            let x_5138 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5136.xy, x_5136.z);
            u_xlat91 = x_5138;
            let x_5140 : f32 = u_xlat26.y;
            let x_5141 : f32 = u_xlat91;
            let x_5143 : f32 = u_xlat90;
            u_xlat90 = ((x_5140 * x_5141) + x_5143);
            let x_5146 : vec2<f32> = u_xlat41;
            let x_5148 : f32 = u_xlat12.z;
            txVec83 = vec3<f32>(x_5146.x, x_5146.y, x_5148);
            let x_5155 : vec3<f32> = txVec83;
            let x_5157 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5155.xy, x_5155.z);
            u_xlat91 = x_5157;
            let x_5159 : f32 = u_xlat26.z;
            let x_5160 : f32 = u_xlat91;
            let x_5162 : f32 = u_xlat90;
            u_xlat90 = ((x_5159 * x_5160) + x_5162);
            let x_5165 : vec2<f32> = u_xlat23;
            let x_5167 : f32 = u_xlat12.z;
            txVec84 = vec3<f32>(x_5165.x, x_5165.y, x_5167);
            let x_5174 : vec3<f32> = txVec84;
            let x_5176 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5174.xy, x_5174.z);
            u_xlat91 = x_5176;
            let x_5178 : f32 = u_xlat26.w;
            let x_5179 : f32 = u_xlat91;
            let x_5181 : f32 = u_xlat90;
            u_xlat90 = ((x_5178 * x_5179) + x_5181);
            let x_5184 : vec4<f32> = u_xlat17;
            let x_5185 : vec2<f32> = vec2<f32>(x_5184.x, x_5184.y);
            let x_5187 : f32 = u_xlat12.z;
            txVec85 = vec3<f32>(x_5185.x, x_5185.y, x_5187);
            let x_5194 : vec3<f32> = txVec85;
            let x_5196 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5194.xy, x_5194.z);
            u_xlat91 = x_5196;
            let x_5198 : f32 = u_xlat13.x;
            let x_5199 : f32 = u_xlat91;
            let x_5201 : f32 = u_xlat90;
            u_xlat90 = ((x_5198 * x_5199) + x_5201);
            let x_5204 : vec4<f32> = u_xlat17;
            let x_5205 : vec2<f32> = vec2<f32>(x_5204.z, x_5204.w);
            let x_5207 : f32 = u_xlat12.z;
            txVec86 = vec3<f32>(x_5205.x, x_5205.y, x_5207);
            let x_5214 : vec3<f32> = txVec86;
            let x_5216 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5214.xy, x_5214.z);
            u_xlat91 = x_5216;
            let x_5218 : f32 = u_xlat13.y;
            let x_5219 : f32 = u_xlat91;
            let x_5221 : f32 = u_xlat90;
            u_xlat90 = ((x_5218 * x_5219) + x_5221);
            let x_5224 : vec2<f32> = u_xlat70;
            let x_5226 : f32 = u_xlat12.z;
            txVec87 = vec3<f32>(x_5224.x, x_5224.y, x_5226);
            let x_5233 : vec3<f32> = txVec87;
            let x_5235 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5233.xy, x_5233.z);
            u_xlat91 = x_5235;
            let x_5237 : f32 = u_xlat13.z;
            let x_5238 : f32 = u_xlat91;
            let x_5240 : f32 = u_xlat90;
            u_xlat90 = ((x_5237 * x_5238) + x_5240);
            let x_5243 : vec2<f32> = u_xlat62;
            let x_5245 : f32 = u_xlat12.z;
            txVec88 = vec3<f32>(x_5243.x, x_5243.y, x_5245);
            let x_5252 : vec3<f32> = txVec88;
            let x_5254 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5252.xy, x_5252.z);
            u_xlat62.x = x_5254;
            let x_5257 : f32 = u_xlat13.w;
            let x_5259 : f32 = u_xlat62.x;
            let x_5261 : f32 = u_xlat90;
            u_xlat88 = ((x_5257 * x_5259) + x_5261);
          }
        }
      } else {
        let x_5265 : vec4<f32> = u_xlat12;
        let x_5266 : vec2<f32> = vec2<f32>(x_5265.x, x_5265.y);
        let x_5268 : f32 = u_xlat12.z;
        txVec89 = vec3<f32>(x_5266.x, x_5266.y, x_5268);
        let x_5275 : vec3<f32> = txVec89;
        let x_5277 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5275.xy, x_5275.z);
        u_xlat88 = x_5277;
      }
      let x_5278 : i32 = u_xlati84;
      let x_5280 : f32 = x_248.x_AdditionalShadowParams[x_5278].x;
      u_xlat62.x = (1.0f + -(x_5280));
      let x_5284 : f32 = u_xlat88;
      let x_5285 : i32 = u_xlati84;
      let x_5287 : f32 = x_248.x_AdditionalShadowParams[x_5285].x;
      let x_5290 : f32 = u_xlat62.x;
      u_xlat88 = ((x_5284 * x_5287) + x_5290);
      let x_5293 : f32 = u_xlat12.z;
      u_xlatb62 = (0.0f >= x_5293);
      let x_5297 : f32 = u_xlat12.z;
      u_xlatb89 = (x_5297 >= 1.0f);
      let x_5299 : bool = u_xlatb89;
      let x_5300 : bool = u_xlatb62;
      u_xlatb62 = (x_5299 | x_5300);
      let x_5302 : bool = u_xlatb62;
      let x_5303 : f32 = u_xlat88;
      u_xlat88 = select(x_5303, 1.0f, x_5302);
    } else {
      u_xlat88 = 1.0f;
    }
    let x_5306 : f32 = u_xlat88;
    u_xlat62.x = (-(x_5306) + 1.0f);
    let x_5310 : f32 = u_xlat56;
    let x_5312 : f32 = u_xlat62.x;
    let x_5314 : f32 = u_xlat88;
    u_xlat88 = ((x_5310 * x_5312) + x_5314);
    let x_5317 : i32 = u_xlati84;
    u_xlati62 = (1i << bitcast<u32>((x_5317 & 31i)));
    let x_5321 : i32 = u_xlati62;
    let x_5324 : f32 = x_3456.x_AdditionalLightsCookieEnableBits;
    u_xlati62 = bitcast<i32>((bitcast<u32>(x_5321) & bitcast<u32>(x_5324)));
    let x_5328 : i32 = u_xlati62;
    if ((x_5328 != 0i)) {
      let x_5332 : i32 = u_xlati84;
      let x_5334 : f32 = x_3456.x_AdditionalLightsLightTypes[x_5332].el;
      u_xlati62 = i32(x_5334);
      let x_5337 : i32 = u_xlati62;
      u_xlati89 = select(1i, 0i, (x_5337 != 0i));
      let x_5341 : i32 = u_xlati84;
      u_xlati90 = (x_5341 << bitcast<u32>(2i));
      let x_5343 : i32 = u_xlati89;
      if ((x_5343 != 0i)) {
        let x_5347 : vec3<f32> = vs_INTERP8;
        let x_5349 : i32 = u_xlati90;
        let x_5352 : i32 = u_xlati90;
        let x_5356 : vec4<f32> = x_3456.x_AdditionalLightsWorldToLights[((x_5349 + 1i) / 4i)][((x_5352 + 1i) % 4i)];
        let x_5358 : vec3<f32> = (vec3<f32>(x_5347.y, x_5347.y, x_5347.y) * vec3<f32>(x_5356.x, x_5356.y, x_5356.w));
        let x_5359 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_5358.x, x_5358.y, x_5358.z, x_5359.w);
        let x_5361 : i32 = u_xlati90;
        let x_5363 : i32 = u_xlati90;
        let x_5366 : vec4<f32> = x_3456.x_AdditionalLightsWorldToLights[(x_5361 / 4i)][(x_5363 % 4i)];
        let x_5368 : vec3<f32> = vs_INTERP8;
        let x_5371 : vec4<f32> = u_xlat12;
        let x_5373 : vec3<f32> = ((vec3<f32>(x_5366.x, x_5366.y, x_5366.w) * vec3<f32>(x_5368.x, x_5368.x, x_5368.x)) + vec3<f32>(x_5371.x, x_5371.y, x_5371.z));
        let x_5374 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_5373.x, x_5373.y, x_5373.z, x_5374.w);
        let x_5376 : i32 = u_xlati90;
        let x_5379 : i32 = u_xlati90;
        let x_5383 : vec4<f32> = x_3456.x_AdditionalLightsWorldToLights[((x_5376 + 2i) / 4i)][((x_5379 + 2i) % 4i)];
        let x_5385 : vec3<f32> = vs_INTERP8;
        let x_5388 : vec4<f32> = u_xlat12;
        let x_5390 : vec3<f32> = ((vec3<f32>(x_5383.x, x_5383.y, x_5383.w) * vec3<f32>(x_5385.z, x_5385.z, x_5385.z)) + vec3<f32>(x_5388.x, x_5388.y, x_5388.z));
        let x_5391 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_5390.x, x_5390.y, x_5390.z, x_5391.w);
        let x_5393 : vec4<f32> = u_xlat12;
        let x_5395 : i32 = u_xlati90;
        let x_5398 : i32 = u_xlati90;
        let x_5402 : vec4<f32> = x_3456.x_AdditionalLightsWorldToLights[((x_5395 + 3i) / 4i)][((x_5398 + 3i) % 4i)];
        let x_5404 : vec3<f32> = (vec3<f32>(x_5393.x, x_5393.y, x_5393.z) + vec3<f32>(x_5402.x, x_5402.y, x_5402.w));
        let x_5405 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_5404.x, x_5404.y, x_5404.z, x_5405.w);
        let x_5407 : vec4<f32> = u_xlat12;
        let x_5409 : vec4<f32> = u_xlat12;
        let x_5411 : vec2<f32> = (vec2<f32>(x_5407.x, x_5407.y) / vec2<f32>(x_5409.z, x_5409.z));
        let x_5412 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_5411.x, x_5411.y, x_5412.z, x_5412.w);
        let x_5414 : vec4<f32> = u_xlat12;
        let x_5417 : vec2<f32> = ((vec2<f32>(x_5414.x, x_5414.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_5418 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_5417.x, x_5417.y, x_5418.z, x_5418.w);
        let x_5420 : vec4<f32> = u_xlat12;
        let x_5424 : vec2<f32> = clamp(vec2<f32>(x_5420.x, x_5420.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_5425 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_5424.x, x_5424.y, x_5425.z, x_5425.w);
        let x_5427 : i32 = u_xlati84;
        let x_5429 : vec4<f32> = x_3456.x_AdditionalLightsCookieAtlasUVRects[x_5427];
        let x_5431 : vec4<f32> = u_xlat12;
        let x_5434 : i32 = u_xlati84;
        let x_5436 : vec4<f32> = x_3456.x_AdditionalLightsCookieAtlasUVRects[x_5434];
        let x_5438 : vec2<f32> = ((vec2<f32>(x_5429.x, x_5429.y) * vec2<f32>(x_5431.x, x_5431.y)) + vec2<f32>(x_5436.z, x_5436.w));
        let x_5439 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_5438.x, x_5438.y, x_5439.z, x_5439.w);
      } else {
        let x_5442 : i32 = u_xlati62;
        u_xlatb62 = (x_5442 == 1i);
        let x_5444 : bool = u_xlatb62;
        u_xlati62 = select(0i, 1i, x_5444);
        let x_5446 : i32 = u_xlati62;
        if ((x_5446 != 0i)) {
          let x_5450 : vec3<f32> = vs_INTERP8;
          let x_5452 : i32 = u_xlati90;
          let x_5455 : i32 = u_xlati90;
          let x_5459 : vec4<f32> = x_3456.x_AdditionalLightsWorldToLights[((x_5452 + 1i) / 4i)][((x_5455 + 1i) % 4i)];
          u_xlat62 = (vec2<f32>(x_5450.y, x_5450.y) * vec2<f32>(x_5459.x, x_5459.y));
          let x_5462 : i32 = u_xlati90;
          let x_5464 : i32 = u_xlati90;
          let x_5467 : vec4<f32> = x_3456.x_AdditionalLightsWorldToLights[(x_5462 / 4i)][(x_5464 % 4i)];
          let x_5469 : vec3<f32> = vs_INTERP8;
          let x_5472 : vec2<f32> = u_xlat62;
          u_xlat62 = ((vec2<f32>(x_5467.x, x_5467.y) * vec2<f32>(x_5469.x, x_5469.x)) + x_5472);
          let x_5474 : i32 = u_xlati90;
          let x_5477 : i32 = u_xlati90;
          let x_5481 : vec4<f32> = x_3456.x_AdditionalLightsWorldToLights[((x_5474 + 2i) / 4i)][((x_5477 + 2i) % 4i)];
          let x_5483 : vec3<f32> = vs_INTERP8;
          let x_5486 : vec2<f32> = u_xlat62;
          u_xlat62 = ((vec2<f32>(x_5481.x, x_5481.y) * vec2<f32>(x_5483.z, x_5483.z)) + x_5486);
          let x_5488 : vec2<f32> = u_xlat62;
          let x_5489 : i32 = u_xlati90;
          let x_5492 : i32 = u_xlati90;
          let x_5496 : vec4<f32> = x_3456.x_AdditionalLightsWorldToLights[((x_5489 + 3i) / 4i)][((x_5492 + 3i) % 4i)];
          u_xlat62 = (x_5488 + vec2<f32>(x_5496.x, x_5496.y));
          let x_5499 : vec2<f32> = u_xlat62;
          u_xlat62 = ((x_5499 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_5502 : vec2<f32> = u_xlat62;
          u_xlat62 = fract(x_5502);
          let x_5504 : i32 = u_xlati84;
          let x_5506 : vec4<f32> = x_3456.x_AdditionalLightsCookieAtlasUVRects[x_5504];
          let x_5508 : vec2<f32> = u_xlat62;
          let x_5510 : i32 = u_xlati84;
          let x_5512 : vec4<f32> = x_3456.x_AdditionalLightsCookieAtlasUVRects[x_5510];
          let x_5514 : vec2<f32> = ((vec2<f32>(x_5506.x, x_5506.y) * x_5508) + vec2<f32>(x_5512.z, x_5512.w));
          let x_5515 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5514.x, x_5514.y, x_5515.z, x_5515.w);
        } else {
          let x_5518 : vec3<f32> = vs_INTERP8;
          let x_5520 : i32 = u_xlati90;
          let x_5523 : i32 = u_xlati90;
          let x_5527 : vec4<f32> = x_3456.x_AdditionalLightsWorldToLights[((x_5520 + 1i) / 4i)][((x_5523 + 1i) % 4i)];
          u_xlat13 = (vec4<f32>(x_5518.y, x_5518.y, x_5518.y, x_5518.y) * x_5527);
          let x_5529 : i32 = u_xlati90;
          let x_5531 : i32 = u_xlati90;
          let x_5534 : vec4<f32> = x_3456.x_AdditionalLightsWorldToLights[(x_5529 / 4i)][(x_5531 % 4i)];
          let x_5535 : vec3<f32> = vs_INTERP8;
          let x_5538 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_5534 * vec4<f32>(x_5535.x, x_5535.x, x_5535.x, x_5535.x)) + x_5538);
          let x_5540 : i32 = u_xlati90;
          let x_5543 : i32 = u_xlati90;
          let x_5547 : vec4<f32> = x_3456.x_AdditionalLightsWorldToLights[((x_5540 + 2i) / 4i)][((x_5543 + 2i) % 4i)];
          let x_5548 : vec3<f32> = vs_INTERP8;
          let x_5551 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_5547 * vec4<f32>(x_5548.z, x_5548.z, x_5548.z, x_5548.z)) + x_5551);
          let x_5553 : vec4<f32> = u_xlat13;
          let x_5554 : i32 = u_xlati90;
          let x_5557 : i32 = u_xlati90;
          let x_5561 : vec4<f32> = x_3456.x_AdditionalLightsWorldToLights[((x_5554 + 3i) / 4i)][((x_5557 + 3i) % 4i)];
          u_xlat13 = (x_5553 + x_5561);
          let x_5563 : vec4<f32> = u_xlat13;
          let x_5565 : vec4<f32> = u_xlat13;
          let x_5567 : vec3<f32> = (vec3<f32>(x_5563.x, x_5563.y, x_5563.z) / vec3<f32>(x_5565.w, x_5565.w, x_5565.w));
          let x_5568 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_5567.x, x_5567.y, x_5567.z, x_5568.w);
          let x_5570 : vec4<f32> = u_xlat13;
          let x_5572 : vec4<f32> = u_xlat13;
          u_xlat62.x = dot(vec3<f32>(x_5570.x, x_5570.y, x_5570.z), vec3<f32>(x_5572.x, x_5572.y, x_5572.z));
          let x_5577 : f32 = u_xlat62.x;
          u_xlat62.x = inverseSqrt(x_5577);
          let x_5580 : vec2<f32> = u_xlat62;
          let x_5582 : vec4<f32> = u_xlat13;
          let x_5584 : vec3<f32> = (vec3<f32>(x_5580.x, x_5580.x, x_5580.x) * vec3<f32>(x_5582.x, x_5582.y, x_5582.z));
          let x_5585 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_5584.x, x_5584.y, x_5584.z, x_5585.w);
          let x_5587 : vec4<f32> = u_xlat13;
          u_xlat62.x = dot(abs(vec3<f32>(x_5587.x, x_5587.y, x_5587.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_5594 : f32 = u_xlat62.x;
          u_xlat62.x = max(x_5594, 0.00000099999999747524f);
          let x_5599 : f32 = u_xlat62.x;
          u_xlat62.x = (1.0f / x_5599);
          let x_5602 : vec2<f32> = u_xlat62;
          let x_5604 : vec4<f32> = u_xlat13;
          let x_5606 : vec3<f32> = (vec3<f32>(x_5602.x, x_5602.x, x_5602.x) * vec3<f32>(x_5604.z, x_5604.x, x_5604.y));
          let x_5607 : vec4<f32> = u_xlat14;
          u_xlat14 = vec4<f32>(x_5606.x, x_5606.y, x_5606.z, x_5607.w);
          let x_5610 : f32 = u_xlat14.x;
          u_xlat14.x = -(x_5610);
          let x_5614 : f32 = u_xlat14.x;
          u_xlat14.x = clamp(x_5614, 0.0f, 1.0f);
          let x_5618 : vec4<f32> = u_xlat14;
          let x_5620 : vec4<bool> = (vec4<f32>(x_5618.y, x_5618.z, x_5618.y, x_5618.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb66 = vec2<bool>(x_5620.x, x_5620.y);
          let x_5624 : bool = u_xlatb66.x;
          if (x_5624) {
            let x_5629 : f32 = u_xlat14.x;
            x_5625 = x_5629;
          } else {
            let x_5632 : f32 = u_xlat14.x;
            x_5625 = -(x_5632);
          }
          let x_5634 : f32 = x_5625;
          u_xlat66.x = x_5634;
          let x_5637 : bool = u_xlatb66.y;
          if (x_5637) {
            let x_5642 : f32 = u_xlat14.x;
            x_5638 = x_5642;
          } else {
            let x_5645 : f32 = u_xlat14.x;
            x_5638 = -(x_5645);
          }
          let x_5647 : f32 = x_5638;
          u_xlat66.y = x_5647;
          let x_5649 : vec4<f32> = u_xlat13;
          let x_5651 : vec2<f32> = u_xlat62;
          let x_5654 : vec2<f32> = u_xlat66;
          u_xlat62 = ((vec2<f32>(x_5649.x, x_5649.y) * vec2<f32>(x_5651.x, x_5651.x)) + x_5654);
          let x_5656 : vec2<f32> = u_xlat62;
          u_xlat62 = ((x_5656 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_5659 : vec2<f32> = u_xlat62;
          u_xlat62 = clamp(x_5659, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_5663 : i32 = u_xlati84;
          let x_5665 : vec4<f32> = x_3456.x_AdditionalLightsCookieAtlasUVRects[x_5663];
          let x_5667 : vec2<f32> = u_xlat62;
          let x_5669 : i32 = u_xlati84;
          let x_5671 : vec4<f32> = x_3456.x_AdditionalLightsCookieAtlasUVRects[x_5669];
          let x_5673 : vec2<f32> = ((vec2<f32>(x_5665.x, x_5665.y) * x_5667) + vec2<f32>(x_5671.z, x_5671.w));
          let x_5674 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5673.x, x_5673.y, x_5674.z, x_5674.w);
        }
      }
      let x_5681 : vec4<f32> = u_xlat12;
      let x_5683 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_5681.x, x_5681.y), 0.0f);
      u_xlat12 = x_5683;
      let x_5685 : bool = u_xlatb8.y;
      if (x_5685) {
        let x_5690 : f32 = u_xlat12.w;
        x_5686 = x_5690;
      } else {
        let x_5693 : f32 = u_xlat12.x;
        x_5686 = x_5693;
      }
      let x_5694 : f32 = x_5686;
      u_xlat62.x = x_5694;
      let x_5697 : bool = u_xlatb8.x;
      if (x_5697) {
        let x_5701 : vec4<f32> = u_xlat12;
        x_5698 = vec3<f32>(x_5701.x, x_5701.y, x_5701.z);
      } else {
        let x_5704 : vec2<f32> = u_xlat62;
        x_5698 = vec3<f32>(x_5704.x, x_5704.x, x_5704.x);
      }
      let x_5706 : vec3<f32> = x_5698;
      let x_5707 : vec4<f32> = u_xlat12;
      u_xlat12 = vec4<f32>(x_5706.x, x_5706.y, x_5706.z, x_5707.w);
    } else {
      u_xlat12.x = 1.0f;
      u_xlat12.y = 1.0f;
      u_xlat12.z = 1.0f;
    }
    let x_5713 : vec4<f32> = u_xlat12;
    let x_5715 : i32 = u_xlati84;
    let x_5717 : vec4<f32> = x_3890.x_AdditionalLightsColor[x_5715];
    let x_5719 : vec3<f32> = (vec3<f32>(x_5713.x, x_5713.y, x_5713.z) * vec3<f32>(x_5717.x, x_5717.y, x_5717.z));
    let x_5720 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_5719.x, x_5719.y, x_5719.z, x_5720.w);
    let x_5722 : f32 = u_xlat85;
    let x_5723 : f32 = u_xlat88;
    u_xlat84 = (x_5722 * x_5723);
    let x_5725 : vec4<f32> = u_xlat3;
    let x_5727 : vec4<f32> = u_xlat11;
    u_xlat85 = dot(vec3<f32>(x_5725.x, x_5725.y, x_5725.z), vec3<f32>(x_5727.x, x_5727.y, x_5727.z));
    let x_5730 : f32 = u_xlat85;
    u_xlat85 = clamp(x_5730, 0.0f, 1.0f);
    let x_5732 : f32 = u_xlat84;
    let x_5733 : f32 = u_xlat85;
    u_xlat84 = (x_5732 * x_5733);
    let x_5735 : f32 = u_xlat84;
    let x_5737 : vec4<f32> = u_xlat12;
    let x_5739 : vec3<f32> = (vec3<f32>(x_5735, x_5735, x_5735) * vec3<f32>(x_5737.x, x_5737.y, x_5737.z));
    let x_5740 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_5739.x, x_5739.y, x_5739.z, x_5740.w);
    let x_5742 : vec4<f32> = u_xlat10;
    let x_5744 : f32 = u_xlat86;
    let x_5747 : vec3<f32> = u_xlat1;
    let x_5748 : vec3<f32> = ((vec3<f32>(x_5742.x, x_5742.y, x_5742.z) * vec3<f32>(x_5744, x_5744, x_5744)) + x_5747);
    let x_5749 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_5748.x, x_5748.y, x_5748.z, x_5749.w);
    let x_5751 : vec4<f32> = u_xlat10;
    let x_5753 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(vec3<f32>(x_5751.x, x_5751.y, x_5751.z), vec3<f32>(x_5753.x, x_5753.y, x_5753.z));
    let x_5756 : f32 = u_xlat84;
    u_xlat84 = max(x_5756, 1.17549435e-38f);
    let x_5758 : f32 = u_xlat84;
    u_xlat84 = inverseSqrt(x_5758);
    let x_5760 : f32 = u_xlat84;
    let x_5762 : vec4<f32> = u_xlat10;
    let x_5764 : vec3<f32> = (vec3<f32>(x_5760, x_5760, x_5760) * vec3<f32>(x_5762.x, x_5762.y, x_5762.z));
    let x_5765 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_5764.x, x_5764.y, x_5764.z, x_5765.w);
    let x_5767 : vec4<f32> = u_xlat3;
    let x_5769 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(vec3<f32>(x_5767.x, x_5767.y, x_5767.z), vec3<f32>(x_5769.x, x_5769.y, x_5769.z));
    let x_5772 : f32 = u_xlat84;
    u_xlat84 = clamp(x_5772, 0.0f, 1.0f);
    let x_5774 : vec4<f32> = u_xlat11;
    let x_5776 : vec4<f32> = u_xlat10;
    u_xlat85 = dot(vec3<f32>(x_5774.x, x_5774.y, x_5774.z), vec3<f32>(x_5776.x, x_5776.y, x_5776.z));
    let x_5779 : f32 = u_xlat85;
    u_xlat85 = clamp(x_5779, 0.0f, 1.0f);
    let x_5781 : f32 = u_xlat84;
    let x_5782 : f32 = u_xlat84;
    u_xlat84 = (x_5781 * x_5782);
    let x_5784 : f32 = u_xlat84;
    let x_5786 : f32 = u_xlat61.x;
    u_xlat84 = ((x_5784 * x_5786) + 1.00001001358032226562f);
    let x_5789 : f32 = u_xlat85;
    let x_5790 : f32 = u_xlat85;
    u_xlat85 = (x_5789 * x_5790);
    let x_5792 : f32 = u_xlat84;
    let x_5793 : f32 = u_xlat84;
    u_xlat84 = (x_5792 * x_5793);
    let x_5795 : f32 = u_xlat85;
    u_xlat85 = max(x_5795, 0.10000000149011611938f);
    let x_5797 : f32 = u_xlat84;
    let x_5798 : f32 = u_xlat85;
    u_xlat84 = (x_5797 * x_5798);
    let x_5801 : f32 = u_xlat7.x;
    let x_5802 : f32 = u_xlat84;
    u_xlat84 = (x_5801 * x_5802);
    let x_5804 : f32 = u_xlat87;
    let x_5805 : f32 = u_xlat84;
    u_xlat84 = (x_5804 / x_5805);
    let x_5807 : f32 = u_xlat84;
    let x_5810 : vec3<f32> = u_xlat4;
    let x_5811 : vec3<f32> = ((vec3<f32>(x_5807, x_5807, x_5807) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_5810);
    let x_5812 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_5811.x, x_5811.y, x_5811.z, x_5812.w);
    let x_5814 : vec4<f32> = u_xlat10;
    let x_5816 : vec4<f32> = u_xlat12;
    let x_5819 : vec4<f32> = u_xlat9;
    let x_5821 : vec3<f32> = ((vec3<f32>(x_5814.x, x_5814.y, x_5814.z) * vec3<f32>(x_5816.x, x_5816.y, x_5816.z)) + vec3<f32>(x_5819.x, x_5819.y, x_5819.z));
    let x_5822 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5821.x, x_5821.y, x_5821.z, x_5822.w);

    continuing {
      let x_5824 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_5824 + bitcast<u32>(1i));
    }
  }
  let x_5826 : vec4<f32> = u_xlat5;
  let x_5828 : f32 = u_xlat34;
  let x_5831 : vec4<f32> = u_xlat6;
  u_xlat1 = ((vec3<f32>(x_5826.x, x_5826.y, x_5826.z) * vec3<f32>(x_5828, x_5828, x_5828)) + vec3<f32>(x_5831.x, x_5831.y, x_5831.z));
  let x_5834 : vec4<f32> = u_xlat9;
  let x_5836 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_5834.x, x_5834.y, x_5834.z) + x_5836);
  let x_5838 : vec4<f32> = vs_INTERP6;
  let x_5840 : vec3<f32> = u_xlat0;
  let x_5842 : vec3<f32> = u_xlat1;
  u_xlat0 = ((vec3<f32>(x_5838.w, x_5838.w, x_5838.w) * x_5840) + x_5842);
  let x_5845 : f32 = u_xlat29.x;
  let x_5847 : f32 = u_xlat29.x;
  u_xlat81 = (x_5845 * -(x_5847));
  let x_5850 : f32 = u_xlat81;
  u_xlat81 = exp2(x_5850);
  let x_5852 : vec3<f32> = u_xlat0;
  let x_5854 : vec4<f32> = x_75.unity_FogColor;
  u_xlat0 = (x_5852 + -(vec3<f32>(x_5854.x, x_5854.y, x_5854.z)));
  let x_5860 : f32 = u_xlat81;
  let x_5862 : vec3<f32> = u_xlat0;
  let x_5865 : vec4<f32> = x_75.unity_FogColor;
  let x_5867 : vec3<f32> = ((vec3<f32>(x_5860, x_5860, x_5860) * x_5862) + vec3<f32>(x_5865.x, x_5865.y, x_5865.z));
  let x_5868 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_5867.x, x_5867.y, x_5867.z, x_5868.w);
  let x_5870 : bool = u_xlatb2;
  let x_5871 : f32 = u_xlat82;
  SV_Target0.w = select(1.0f, x_5871, x_5870);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(4) vs_INTERP9_param : vec3<f32>, @location(3) vs_INTERP8_param : vec3<f32>, @location(1) vs_INTERP5_param : vec4<f32>, @location(2) vs_INTERP6_param : vec4<f32>, @location(0) vs_INTERP4_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP9 = vs_INTERP9_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP6 = vs_INTERP6_param;
  vs_INTERP4 = vs_INTERP4_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


