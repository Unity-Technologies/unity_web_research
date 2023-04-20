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
  x_ScreenParams : vec4<f32>,
  /* @offset(96) */
  unity_OrthoParams : vec4<f32>,
  /* @offset(112) */
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

var<private> u_xlat0 : vec3<f32>;

var<private> vs_INTERP9 : vec3<f32>;

var<private> u_xlatb26 : vec2<bool>;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_83 : UnityPerDraw;

var<private> u_xlat26 : vec3<f32>;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlatb0 : bool;

@group(1) @binding(0) var<uniform> x_149 : PGlobals;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_INTERP8 : vec3<f32>;

var<private> u_xlat79 : f32;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(7) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(14) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP5 : vec4<f32>;

var<private> u_xlat7 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_289 : UnityPerMaterial;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(8) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(15) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat34 : vec3<f32>;

var<private> vs_INTERP6 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_394 : LightShadows;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlatu0 : u32;

var<private> u_xlati0 : i32;

var<private> u_xlatb79 : bool;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb80 : bool;

var<private> u_xlat55 : vec2<f32>;

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

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatb29 : bool;

var<private> u_xlat27 : vec3<f32>;

var<private> u_xlatu4 : vec3<u32>;

var<private> u_xlatu55 : u32;

var<private> u_xlatu81 : u32;

var<private> u_xlati55 : i32;

var<private> u_xlat81 : f32;

var<private> u_xlatb55 : bool;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat83 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlatb33 : bool;

var<private> u_xlat33 : vec3<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat59 : f32;

var<private> u_xlat85 : f32;

var<private> u_xlat66 : vec2<f32>;

var<private> u_xlat28 : vec3<f32>;

var<private> u_xlat54 : f32;

var<private> u_xlatb28 : vec2<bool>;

@group(1) @binding(4) var<uniform> x_3509 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu8 : u32;

var<private> u_xlati34 : i32;

var<private> u_xlati8 : i32;

@group(1) @binding(1) var<uniform> x_3993 : AdditionalLights;

var<private> u_xlat61 : f32;

var<private> u_xlati61 : i32;

var<private> u_xlatb87 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat88 : f32;

var<private> u_xlat87 : f32;

var<private> u_xlatb61 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat89 : f32;

var<private> u_xlat39 : vec3<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat40 : vec2<f32>;

var<private> u_xlat72 : vec2<f32>;

var<private> u_xlat67 : vec2<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlat25 : vec4<f32>;

var<private> u_xlatb88 : bool;

var<private> u_xlati87 : i32;

var<private> u_xlati88 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlat37 : vec3<f32>;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_LinearClamp : sampler;

var<private> u_xlat86 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb8 : bool;

var<private> u_xlatu83 : u32;

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
  var x_183 : f32;
  var x_196 : f32;
  var x_208 : f32;
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
  var x_1897 : f32;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var x_2022 : f32;
  var x_2076 : f32;
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
  var x_3455 : f32;
  var x_3591 : f32;
  var x_3602 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_4144 : f32;
  var x_4154 : f32;
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
  var x_5737 : f32;
  var x_5750 : f32;
  var x_5808 : f32;
  var x_5819 : vec3<f32>;
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
  let x_74 : f32 = vs_INTERP4.w;
  u_xlatb26.x = (0.0f < x_74);
  let x_87 : f32 = x_83.unity_WorldTransformParams.w;
  u_xlatb26.y = (x_87 >= 0.0f);
  let x_93 : bool = u_xlatb26.x;
  u_xlat26.x = select(-1.0f, 1.0f, x_93);
  let x_98 : bool = u_xlatb26.y;
  u_xlat26.y = select(-1.0f, 1.0f, x_98);
  let x_102 : f32 = u_xlat26.y;
  let x_104 : f32 = u_xlat26.x;
  u_xlat26.x = (x_102 * x_104);
  let x_108 : vec4<f32> = vs_INTERP4;
  let x_110 : vec3<f32> = vs_INTERP9;
  u_xlat1 = (vec3<f32>(x_108.y, x_108.z, x_108.x) * vec3<f32>(x_110.z, x_110.x, x_110.y));
  let x_113 : vec3<f32> = vs_INTERP9;
  let x_115 : vec4<f32> = vs_INTERP4;
  let x_118 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_113.y, x_113.z, x_113.x) * vec3<f32>(x_115.z, x_115.x, x_115.y)) + -(x_118));
  let x_121 : vec3<f32> = u_xlat26;
  let x_123 : vec3<f32> = u_xlat1;
  u_xlat26 = (vec3<f32>(x_121.x, x_121.x, x_121.x) * x_123);
  let x_125 : vec3<f32> = u_xlat0;
  let x_127 : vec3<f32> = vs_INTERP9;
  u_xlat1 = (vec3<f32>(x_125.x, x_125.x, x_125.x) * x_127);
  let x_131 : vec3<f32> = u_xlat0;
  let x_133 : vec4<f32> = vs_INTERP4;
  let x_135 : vec3<f32> = (vec3<f32>(x_131.x, x_131.x, x_131.x) * vec3<f32>(x_133.x, x_133.y, x_133.z));
  let x_136 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_135.x, x_135.y, x_135.z, x_136.w);
  let x_139 : vec3<f32> = u_xlat26;
  let x_140 : vec3<f32> = u_xlat0;
  let x_142 : vec3<f32> = (x_139 * vec3<f32>(x_140.x, x_140.x, x_140.x));
  let x_143 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_142.x, x_142.y, x_142.z, x_143.w);
  let x_152 : f32 = x_149.unity_OrthoParams.w;
  u_xlatb0 = (x_152 == 0.0f);
  let x_156 : vec3<f32> = vs_INTERP8;
  let x_161 : vec3<f32> = x_149.x_WorldSpaceCameraPos;
  let x_162 : vec3<f32> = (-(x_156) + x_161);
  let x_163 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_162.x, x_162.y, x_162.z, x_163.w);
  let x_166 : vec4<f32> = u_xlat4;
  let x_168 : vec4<f32> = u_xlat4;
  u_xlat79 = dot(vec3<f32>(x_166.x, x_166.y, x_166.z), vec3<f32>(x_168.x, x_168.y, x_168.z));
  let x_171 : f32 = u_xlat79;
  u_xlat79 = inverseSqrt(x_171);
  let x_173 : f32 = u_xlat79;
  let x_175 : vec4<f32> = u_xlat4;
  let x_177 : vec3<f32> = (vec3<f32>(x_173, x_173, x_173) * vec3<f32>(x_175.x, x_175.y, x_175.z));
  let x_178 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_177.x, x_177.y, x_177.z, x_178.w);
  let x_181 : bool = u_xlatb0;
  if (x_181) {
    let x_187 : f32 = u_xlat4.x;
    x_183 = x_187;
  } else {
    let x_192 : f32 = x_149.unity_MatrixV[0i].z;
    x_183 = x_192;
  }
  let x_193 : f32 = x_183;
  u_xlat5.x = x_193;
  let x_195 : bool = u_xlatb0;
  if (x_195) {
    let x_200 : f32 = u_xlat4.y;
    x_196 = x_200;
  } else {
    let x_204 : f32 = x_149.unity_MatrixV[1i].z;
    x_196 = x_204;
  }
  let x_205 : f32 = x_196;
  u_xlat5.y = x_205;
  let x_207 : bool = u_xlatb0;
  if (x_207) {
    let x_212 : f32 = u_xlat4.z;
    x_208 = x_212;
  } else {
    let x_216 : f32 = x_149.unity_MatrixV[2i].z;
    x_208 = x_216;
  }
  let x_217 : f32 = x_208;
  u_xlat5.z = x_217;
  let x_219 : vec3<f32> = u_xlat5;
  let x_223 : vec4<f32> = x_83.unity_WorldToObject[1i];
  let x_225 : vec3<f32> = (vec3<f32>(x_219.y, x_219.y, x_219.y) * vec3<f32>(x_223.x, x_223.y, x_223.z));
  let x_226 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_225.x, x_225.y, x_225.z, x_226.w);
  let x_229 : vec4<f32> = x_83.unity_WorldToObject[0i];
  let x_231 : vec3<f32> = u_xlat5;
  let x_234 : vec4<f32> = u_xlat4;
  let x_236 : vec3<f32> = ((vec3<f32>(x_229.x, x_229.y, x_229.z) * vec3<f32>(x_231.x, x_231.x, x_231.x)) + vec3<f32>(x_234.x, x_234.y, x_234.z));
  let x_237 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_236.x, x_236.y, x_236.z, x_237.w);
  let x_240 : vec4<f32> = x_83.unity_WorldToObject[2i];
  let x_242 : vec3<f32> = u_xlat5;
  let x_245 : vec4<f32> = u_xlat4;
  let x_247 : vec3<f32> = ((vec3<f32>(x_240.x, x_240.y, x_240.z) * vec3<f32>(x_242.z, x_242.z, x_242.z)) + vec3<f32>(x_245.x, x_245.y, x_245.z));
  let x_248 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_247.x, x_247.y, x_247.z, x_248.w);
  let x_250 : vec4<f32> = u_xlat4;
  let x_252 : vec4<f32> = u_xlat4;
  u_xlat0.x = dot(vec3<f32>(x_250.x, x_250.y, x_250.z), vec3<f32>(x_252.x, x_252.y, x_252.z));
  let x_257 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_257);
  let x_260 : vec3<f32> = u_xlat0;
  let x_262 : vec4<f32> = u_xlat4;
  let x_264 : vec3<f32> = (vec3<f32>(x_260.x, x_260.x, x_260.x) * vec3<f32>(x_262.x, x_262.y, x_262.z));
  let x_265 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_264.x, x_264.y, x_264.z, x_265.w);
  let x_279 : vec4<f32> = vs_INTERP5;
  let x_282 : f32 = x_149.x_GlobalMipBias.x;
  let x_283 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_279.x, x_279.y), x_282);
  u_xlat6 = x_283;
  let x_285 : vec4<f32> = u_xlat6;
  let x_291 : vec4<f32> = x_289.Color_C30C7CA3;
  u_xlat7 = (vec3<f32>(x_285.x, x_285.y, x_285.z) * vec3<f32>(x_291.x, x_291.y, x_291.z));
  let x_300 : vec4<f32> = vs_INTERP5;
  let x_303 : f32 = x_149.x_GlobalMipBias.x;
  let x_304 : vec4<f32> = textureSampleBias(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1, vec2<f32>(x_300.x, x_300.y), x_303);
  u_xlat8 = vec4<f32>(x_304.w, x_304.x, x_304.y, x_304.z);
  let x_307 : vec4<f32> = u_xlat8;
  u_xlat9 = ((vec4<f32>(x_307.y, x_307.z, x_307.w, x_307.x) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_314 : vec4<f32> = u_xlat9;
  let x_315 : vec4<f32> = u_xlat9;
  u_xlat0.x = dot(x_314, x_315);
  let x_319 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_319);
  let x_323 : vec3<f32> = u_xlat0;
  let x_325 : vec4<f32> = u_xlat9;
  u_xlat34 = (vec3<f32>(x_323.x, x_323.x, x_323.x) * vec3<f32>(x_325.x, x_325.y, x_325.z));
  let x_330 : f32 = vs_INTERP6.y;
  u_xlat0.x = (x_330 * 200.0f);
  let x_335 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_335, 1.0f);
  let x_338 : vec3<f32> = u_xlat0;
  let x_340 : vec4<f32> = u_xlat6;
  let x_342 : vec3<f32> = (vec3<f32>(x_338.x, x_338.x, x_338.x) * vec3<f32>(x_340.x, x_340.y, x_340.z));
  let x_343 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_342.x, x_342.y, x_342.z, x_343.w);
  let x_345 : vec4<f32> = u_xlat3;
  let x_347 : vec3<f32> = u_xlat34;
  let x_349 : vec3<f32> = (vec3<f32>(x_345.x, x_345.y, x_345.z) * vec3<f32>(x_347.y, x_347.y, x_347.y));
  let x_350 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_349.x, x_349.y, x_349.z, x_350.w);
  let x_352 : vec3<f32> = u_xlat34;
  let x_354 : vec4<f32> = u_xlat2;
  let x_357 : vec4<f32> = u_xlat3;
  let x_359 : vec3<f32> = ((vec3<f32>(x_352.x, x_352.x, x_352.x) * vec3<f32>(x_354.x, x_354.y, x_354.z)) + vec3<f32>(x_357.x, x_357.y, x_357.z));
  let x_360 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_359.x, x_359.y, x_359.z, x_360.w);
  let x_362 : vec3<f32> = u_xlat34;
  let x_364 : vec3<f32> = u_xlat1;
  let x_366 : vec4<f32> = u_xlat2;
  u_xlat1 = ((vec3<f32>(x_362.z, x_362.z, x_362.z) * x_364) + vec3<f32>(x_366.x, x_366.y, x_366.z));
  let x_369 : vec3<f32> = u_xlat1;
  let x_370 : vec3<f32> = u_xlat1;
  u_xlat0.x = dot(x_369, x_370);
  let x_374 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_374, 1.17549435e-38f);
  let x_379 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_379);
  let x_382 : vec3<f32> = u_xlat0;
  let x_384 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_382.x, x_382.x, x_382.x) * x_384);
  let x_386 : vec3<f32> = vs_INTERP8;
  let x_396 : vec4<f32> = x_394.x_CascadeShadowSplitSpheres0;
  let x_399 : vec3<f32> = (x_386 + -(vec3<f32>(x_396.x, x_396.y, x_396.z)));
  let x_400 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_399.x, x_399.y, x_399.z, x_400.w);
  let x_402 : vec3<f32> = vs_INTERP8;
  let x_404 : vec4<f32> = x_394.x_CascadeShadowSplitSpheres1;
  let x_407 : vec3<f32> = (x_402 + -(vec3<f32>(x_404.x, x_404.y, x_404.z)));
  let x_408 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_407.x, x_407.y, x_407.z, x_408.w);
  let x_410 : vec3<f32> = vs_INTERP8;
  let x_412 : vec4<f32> = x_394.x_CascadeShadowSplitSpheres2;
  let x_415 : vec3<f32> = (x_410 + -(vec3<f32>(x_412.x, x_412.y, x_412.z)));
  let x_416 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_415.x, x_415.y, x_415.z, x_416.w);
  let x_419 : vec3<f32> = vs_INTERP8;
  let x_422 : vec4<f32> = x_394.x_CascadeShadowSplitSpheres3;
  let x_425 : vec3<f32> = (x_419 + -(vec3<f32>(x_422.x, x_422.y, x_422.z)));
  let x_426 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_425.x, x_425.y, x_425.z, x_426.w);
  let x_428 : vec4<f32> = u_xlat2;
  let x_430 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_428.x, x_428.y, x_428.z), vec3<f32>(x_430.x, x_430.y, x_430.z));
  let x_434 : vec4<f32> = u_xlat3;
  let x_436 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_434.x, x_434.y, x_434.z), vec3<f32>(x_436.x, x_436.y, x_436.z));
  let x_440 : vec4<f32> = u_xlat9;
  let x_442 : vec4<f32> = u_xlat9;
  u_xlat2.z = dot(vec3<f32>(x_440.x, x_440.y, x_440.z), vec3<f32>(x_442.x, x_442.y, x_442.z));
  let x_446 : vec4<f32> = u_xlat10;
  let x_448 : vec4<f32> = u_xlat10;
  u_xlat2.w = dot(vec3<f32>(x_446.x, x_446.y, x_446.z), vec3<f32>(x_448.x, x_448.y, x_448.z));
  let x_455 : vec4<f32> = u_xlat2;
  let x_457 : vec4<f32> = x_394.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_455 < x_457);
  let x_460 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_460);
  let x_464 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_464);
  let x_468 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_468);
  let x_472 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_472);
  let x_476 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_476);
  let x_481 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_481);
  let x_485 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_485);
  let x_488 : vec4<f32> = u_xlat2;
  let x_490 : vec4<f32> = u_xlat3;
  let x_492 : vec3<f32> = (vec3<f32>(x_488.x, x_488.y, x_488.z) + vec3<f32>(x_490.y, x_490.z, x_490.w));
  let x_493 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_492.x, x_492.y, x_492.z, x_493.w);
  let x_495 : vec4<f32> = u_xlat2;
  let x_498 : vec3<f32> = max(vec3<f32>(x_495.x, x_495.y, x_495.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_499 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_499.x, x_498.x, x_498.y, x_498.z);
  let x_501 : vec4<f32> = u_xlat3;
  u_xlat0.x = dot(x_501, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_508 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_508) + 4.0f);
  let x_515 : f32 = u_xlat0.x;
  u_xlatu0 = u32(x_515);
  let x_519 : u32 = u_xlatu0;
  u_xlati0 = (bitcast<i32>(x_519) << bitcast<u32>(2i));
  let x_522 : vec3<f32> = vs_INTERP8;
  let x_524 : i32 = u_xlati0;
  let x_527 : i32 = u_xlati0;
  let x_531 : vec4<f32> = x_394.x_MainLightWorldToShadow[((x_524 + 1i) / 4i)][((x_527 + 1i) % 4i)];
  let x_533 : vec3<f32> = (vec3<f32>(x_522.y, x_522.y, x_522.y) * vec3<f32>(x_531.x, x_531.y, x_531.z));
  let x_534 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_533.x, x_533.y, x_533.z, x_534.w);
  let x_536 : i32 = u_xlati0;
  let x_538 : i32 = u_xlati0;
  let x_541 : vec4<f32> = x_394.x_MainLightWorldToShadow[(x_536 / 4i)][(x_538 % 4i)];
  let x_543 : vec3<f32> = vs_INTERP8;
  let x_546 : vec4<f32> = u_xlat2;
  let x_548 : vec3<f32> = ((vec3<f32>(x_541.x, x_541.y, x_541.z) * vec3<f32>(x_543.x, x_543.x, x_543.x)) + vec3<f32>(x_546.x, x_546.y, x_546.z));
  let x_549 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_548.x, x_548.y, x_548.z, x_549.w);
  let x_551 : i32 = u_xlati0;
  let x_554 : i32 = u_xlati0;
  let x_558 : vec4<f32> = x_394.x_MainLightWorldToShadow[((x_551 + 2i) / 4i)][((x_554 + 2i) % 4i)];
  let x_560 : vec3<f32> = vs_INTERP8;
  let x_563 : vec4<f32> = u_xlat2;
  let x_565 : vec3<f32> = ((vec3<f32>(x_558.x, x_558.y, x_558.z) * vec3<f32>(x_560.z, x_560.z, x_560.z)) + vec3<f32>(x_563.x, x_563.y, x_563.z));
  let x_566 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_565.x, x_565.y, x_565.z, x_566.w);
  let x_568 : vec4<f32> = u_xlat2;
  let x_570 : i32 = u_xlati0;
  let x_573 : i32 = u_xlati0;
  let x_577 : vec4<f32> = x_394.x_MainLightWorldToShadow[((x_570 + 3i) / 4i)][((x_573 + 3i) % 4i)];
  let x_579 : vec3<f32> = (vec3<f32>(x_568.x, x_568.y, x_568.z) + vec3<f32>(x_577.x, x_577.y, x_577.z));
  let x_580 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_579.x, x_579.y, x_579.z, x_580.w);
  let x_583 : f32 = x_394.x_MainLightShadowParams.y;
  u_xlatb0 = (0.0f < x_583);
  let x_585 : bool = u_xlatb0;
  if (x_585) {
    let x_590 : f32 = x_394.x_MainLightShadowParams.y;
    u_xlatb79 = (x_590 == 1.0f);
    let x_592 : bool = u_xlatb79;
    if (x_592) {
      let x_595 : vec4<f32> = u_xlat2;
      let x_599 : vec4<f32> = x_394.x_MainLightShadowOffset0;
      u_xlat3 = (vec4<f32>(x_595.x, x_595.y, x_595.x, x_595.y) + x_599);
      let x_603 : vec4<f32> = u_xlat3;
      let x_604 : vec2<f32> = vec2<f32>(x_603.x, x_603.y);
      let x_606 : f32 = u_xlat2.z;
      txVec0 = vec3<f32>(x_604.x, x_604.y, x_606);
      let x_618 : vec3<f32> = txVec0;
      let x_620 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_618.xy, x_618.z);
      u_xlat9.x = x_620;
      let x_623 : vec4<f32> = u_xlat3;
      let x_624 : vec2<f32> = vec2<f32>(x_623.z, x_623.w);
      let x_626 : f32 = u_xlat2.z;
      txVec1 = vec3<f32>(x_624.x, x_624.y, x_626);
      let x_633 : vec3<f32> = txVec1;
      let x_635 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_633.xy, x_633.z);
      u_xlat9.y = x_635;
      let x_637 : vec4<f32> = u_xlat2;
      let x_640 : vec4<f32> = x_394.x_MainLightShadowOffset1;
      u_xlat3 = (vec4<f32>(x_637.x, x_637.y, x_637.x, x_637.y) + x_640);
      let x_643 : vec4<f32> = u_xlat3;
      let x_644 : vec2<f32> = vec2<f32>(x_643.x, x_643.y);
      let x_646 : f32 = u_xlat2.z;
      txVec2 = vec3<f32>(x_644.x, x_644.y, x_646);
      let x_653 : vec3<f32> = txVec2;
      let x_655 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_653.xy, x_653.z);
      u_xlat9.z = x_655;
      let x_658 : vec4<f32> = u_xlat3;
      let x_659 : vec2<f32> = vec2<f32>(x_658.z, x_658.w);
      let x_661 : f32 = u_xlat2.z;
      txVec3 = vec3<f32>(x_659.x, x_659.y, x_661);
      let x_668 : vec3<f32> = txVec3;
      let x_670 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_668.xy, x_668.z);
      u_xlat9.w = x_670;
      let x_672 : vec4<f32> = u_xlat9;
      u_xlat79 = dot(x_672, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_679 : f32 = x_394.x_MainLightShadowParams.y;
      u_xlatb80 = (x_679 == 2.0f);
      let x_681 : bool = u_xlatb80;
      if (x_681) {
        let x_684 : vec4<f32> = u_xlat2;
        let x_688 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_693 : vec2<f32> = ((vec2<f32>(x_684.x, x_684.y) * vec2<f32>(x_688.z, x_688.w)) + vec2<f32>(0.5f, 0.5f));
        let x_694 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_693.x, x_693.y, x_694.z, x_694.w);
        let x_696 : vec4<f32> = u_xlat3;
        let x_698 : vec2<f32> = floor(vec2<f32>(x_696.x, x_696.y));
        let x_699 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_698.x, x_698.y, x_699.z, x_699.w);
        let x_703 : vec4<f32> = u_xlat2;
        let x_706 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_709 : vec4<f32> = u_xlat3;
        u_xlat55 = ((vec2<f32>(x_703.x, x_703.y) * vec2<f32>(x_706.z, x_706.w)) + -(vec2<f32>(x_709.x, x_709.y)));
        let x_713 : vec2<f32> = u_xlat55;
        u_xlat9 = (vec4<f32>(x_713.x, x_713.x, x_713.y, x_713.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_717 : vec4<f32> = u_xlat9;
        let x_719 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_717.x, x_717.x, x_717.z, x_717.z) * vec4<f32>(x_719.x, x_719.x, x_719.z, x_719.z));
        let x_722 : vec4<f32> = u_xlat10;
        let x_726 : vec2<f32> = (vec2<f32>(x_722.y, x_722.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_727 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_726.x, x_727.y, x_726.y, x_727.w);
        let x_729 : vec4<f32> = u_xlat10;
        let x_732 : vec2<f32> = u_xlat55;
        let x_734 : vec2<f32> = ((vec2<f32>(x_729.x, x_729.z) * vec2<f32>(0.5f, 0.5f)) + -(x_732));
        let x_735 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_734.x, x_734.y, x_735.z, x_735.w);
        let x_738 : vec2<f32> = u_xlat55;
        u_xlat62 = (-(x_738) + vec2<f32>(1.0f, 1.0f));
        let x_743 : vec2<f32> = u_xlat55;
        let x_745 : vec2<f32> = min(x_743, vec2<f32>(0.0f, 0.0f));
        let x_746 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_745.x, x_745.y, x_746.z, x_746.w);
        let x_748 : vec4<f32> = u_xlat11;
        let x_751 : vec4<f32> = u_xlat11;
        let x_754 : vec2<f32> = u_xlat62;
        let x_755 : vec2<f32> = ((-(vec2<f32>(x_748.x, x_748.y)) * vec2<f32>(x_751.x, x_751.y)) + x_754);
        let x_756 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_755.x, x_755.y, x_756.z, x_756.w);
        let x_758 : vec2<f32> = u_xlat55;
        u_xlat55 = max(x_758, vec2<f32>(0.0f, 0.0f));
        let x_760 : vec2<f32> = u_xlat55;
        let x_762 : vec2<f32> = u_xlat55;
        let x_764 : vec4<f32> = u_xlat9;
        u_xlat55 = ((-(x_760) * x_762) + vec2<f32>(x_764.y, x_764.w));
        let x_767 : vec4<f32> = u_xlat11;
        let x_769 : vec2<f32> = (vec2<f32>(x_767.x, x_767.y) + vec2<f32>(1.0f, 1.0f));
        let x_770 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_769.x, x_769.y, x_770.z, x_770.w);
        let x_772 : vec2<f32> = u_xlat55;
        u_xlat55 = (x_772 + vec2<f32>(1.0f, 1.0f));
        let x_775 : vec4<f32> = u_xlat10;
        let x_779 : vec2<f32> = (vec2<f32>(x_775.x, x_775.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_780 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_779.x, x_779.y, x_780.z, x_780.w);
        let x_782 : vec2<f32> = u_xlat62;
        let x_783 : vec2<f32> = (x_782 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_784 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_783.x, x_783.y, x_784.z, x_784.w);
        let x_786 : vec4<f32> = u_xlat11;
        let x_788 : vec2<f32> = (vec2<f32>(x_786.x, x_786.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_789 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_788.x, x_788.y, x_789.z, x_789.w);
        let x_792 : vec2<f32> = u_xlat55;
        let x_793 : vec2<f32> = (x_792 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_794 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_793.x, x_793.y, x_794.z, x_794.w);
        let x_796 : vec4<f32> = u_xlat9;
        u_xlat55 = (vec2<f32>(x_796.y, x_796.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_800 : f32 = u_xlat11.x;
        u_xlat12.z = x_800;
        let x_803 : f32 = u_xlat55.x;
        u_xlat12.w = x_803;
        let x_806 : f32 = u_xlat13.x;
        u_xlat10.z = x_806;
        let x_809 : f32 = u_xlat9.x;
        u_xlat10.w = x_809;
        let x_812 : vec4<f32> = u_xlat10;
        let x_814 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_812.z, x_812.w, x_812.x, x_812.z) + vec4<f32>(x_814.z, x_814.w, x_814.x, x_814.z));
        let x_818 : f32 = u_xlat12.y;
        u_xlat11.z = x_818;
        let x_821 : f32 = u_xlat55.y;
        u_xlat11.w = x_821;
        let x_824 : f32 = u_xlat10.y;
        u_xlat13.z = x_824;
        let x_827 : f32 = u_xlat9.z;
        u_xlat13.w = x_827;
        let x_829 : vec4<f32> = u_xlat11;
        let x_831 : vec4<f32> = u_xlat13;
        let x_833 : vec3<f32> = (vec3<f32>(x_829.z, x_829.y, x_829.w) + vec3<f32>(x_831.z, x_831.y, x_831.w));
        let x_834 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_833.x, x_833.y, x_833.z, x_834.w);
        let x_836 : vec4<f32> = u_xlat10;
        let x_838 : vec4<f32> = u_xlat14;
        let x_840 : vec3<f32> = (vec3<f32>(x_836.x, x_836.z, x_836.w) / vec3<f32>(x_838.z, x_838.w, x_838.y));
        let x_841 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_840.x, x_840.y, x_840.z, x_841.w);
        let x_843 : vec4<f32> = u_xlat10;
        let x_849 : vec3<f32> = (vec3<f32>(x_843.x, x_843.y, x_843.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_850 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_849.x, x_849.y, x_849.z, x_850.w);
        let x_852 : vec4<f32> = u_xlat13;
        let x_854 : vec4<f32> = u_xlat9;
        let x_856 : vec3<f32> = (vec3<f32>(x_852.z, x_852.y, x_852.w) / vec3<f32>(x_854.x, x_854.y, x_854.z));
        let x_857 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_856.x, x_856.y, x_856.z, x_857.w);
        let x_859 : vec4<f32> = u_xlat11;
        let x_861 : vec3<f32> = (vec3<f32>(x_859.x, x_859.y, x_859.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_862 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_861.x, x_861.y, x_861.z, x_862.w);
        let x_864 : vec4<f32> = u_xlat10;
        let x_867 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_869 : vec3<f32> = (vec3<f32>(x_864.y, x_864.x, x_864.z) * vec3<f32>(x_867.x, x_867.x, x_867.x));
        let x_870 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_869.x, x_869.y, x_869.z, x_870.w);
        let x_872 : vec4<f32> = u_xlat11;
        let x_875 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_877 : vec3<f32> = (vec3<f32>(x_872.x, x_872.y, x_872.z) * vec3<f32>(x_875.y, x_875.y, x_875.y));
        let x_878 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_877.x, x_877.y, x_877.z, x_878.w);
        let x_881 : f32 = u_xlat11.x;
        u_xlat10.w = x_881;
        let x_883 : vec4<f32> = u_xlat3;
        let x_886 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_889 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_883.x, x_883.y, x_883.x, x_883.y) * vec4<f32>(x_886.x, x_886.y, x_886.x, x_886.y)) + vec4<f32>(x_889.y, x_889.w, x_889.x, x_889.w));
        let x_892 : vec4<f32> = u_xlat3;
        let x_895 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_898 : vec4<f32> = u_xlat10;
        u_xlat55 = ((vec2<f32>(x_892.x, x_892.y) * vec2<f32>(x_895.x, x_895.y)) + vec2<f32>(x_898.z, x_898.w));
        let x_902 : f32 = u_xlat10.y;
        u_xlat11.w = x_902;
        let x_904 : vec4<f32> = u_xlat11;
        let x_905 : vec2<f32> = vec2<f32>(x_904.y, x_904.z);
        let x_906 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_906.x, x_905.x, x_906.z, x_905.y);
        let x_908 : vec4<f32> = u_xlat3;
        let x_911 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_914 : vec4<f32> = u_xlat10;
        u_xlat13 = ((vec4<f32>(x_908.x, x_908.y, x_908.x, x_908.y) * vec4<f32>(x_911.x, x_911.y, x_911.x, x_911.y)) + vec4<f32>(x_914.x, x_914.y, x_914.z, x_914.y));
        let x_917 : vec4<f32> = u_xlat3;
        let x_920 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_923 : vec4<f32> = u_xlat11;
        u_xlat11 = ((vec4<f32>(x_917.x, x_917.y, x_917.x, x_917.y) * vec4<f32>(x_920.x, x_920.y, x_920.x, x_920.y)) + vec4<f32>(x_923.w, x_923.y, x_923.w, x_923.z));
        let x_926 : vec4<f32> = u_xlat3;
        let x_929 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_932 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_926.x, x_926.y, x_926.x, x_926.y) * vec4<f32>(x_929.x, x_929.y, x_929.x, x_929.y)) + vec4<f32>(x_932.x, x_932.w, x_932.z, x_932.w));
        let x_936 : vec4<f32> = u_xlat9;
        let x_938 : vec4<f32> = u_xlat14;
        u_xlat15 = (vec4<f32>(x_936.x, x_936.x, x_936.x, x_936.y) * vec4<f32>(x_938.z, x_938.w, x_938.y, x_938.z));
        let x_942 : vec4<f32> = u_xlat9;
        let x_944 : vec4<f32> = u_xlat14;
        u_xlat16 = (vec4<f32>(x_942.y, x_942.y, x_942.z, x_942.z) * x_944);
        let x_948 : f32 = u_xlat9.z;
        let x_950 : f32 = u_xlat14.y;
        u_xlat80 = (x_948 * x_950);
        let x_953 : vec4<f32> = u_xlat12;
        let x_954 : vec2<f32> = vec2<f32>(x_953.x, x_953.y);
        let x_956 : f32 = u_xlat2.z;
        txVec4 = vec3<f32>(x_954.x, x_954.y, x_956);
        let x_963 : vec3<f32> = txVec4;
        let x_965 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_963.xy, x_963.z);
        u_xlat3.x = x_965;
        let x_968 : vec4<f32> = u_xlat12;
        let x_969 : vec2<f32> = vec2<f32>(x_968.z, x_968.w);
        let x_971 : f32 = u_xlat2.z;
        txVec5 = vec3<f32>(x_969.x, x_969.y, x_971);
        let x_979 : vec3<f32> = txVec5;
        let x_981 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_979.xy, x_979.z);
        u_xlat29 = x_981;
        let x_982 : f32 = u_xlat29;
        let x_984 : f32 = u_xlat15.y;
        u_xlat29 = (x_982 * x_984);
        let x_987 : f32 = u_xlat15.x;
        let x_989 : f32 = u_xlat3.x;
        let x_991 : f32 = u_xlat29;
        u_xlat3.x = ((x_987 * x_989) + x_991);
        let x_995 : vec2<f32> = u_xlat55;
        let x_997 : f32 = u_xlat2.z;
        txVec6 = vec3<f32>(x_995.x, x_995.y, x_997);
        let x_1004 : vec3<f32> = txVec6;
        let x_1006 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1004.xy, x_1004.z);
        u_xlat29 = x_1006;
        let x_1008 : f32 = u_xlat15.z;
        let x_1009 : f32 = u_xlat29;
        let x_1012 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_1008 * x_1009) + x_1012);
        let x_1016 : vec4<f32> = u_xlat11;
        let x_1017 : vec2<f32> = vec2<f32>(x_1016.x, x_1016.y);
        let x_1019 : f32 = u_xlat2.z;
        txVec7 = vec3<f32>(x_1017.x, x_1017.y, x_1019);
        let x_1026 : vec3<f32> = txVec7;
        let x_1028 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1026.xy, x_1026.z);
        u_xlat29 = x_1028;
        let x_1030 : f32 = u_xlat15.w;
        let x_1031 : f32 = u_xlat29;
        let x_1034 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_1030 * x_1031) + x_1034);
        let x_1038 : vec4<f32> = u_xlat13;
        let x_1039 : vec2<f32> = vec2<f32>(x_1038.x, x_1038.y);
        let x_1041 : f32 = u_xlat2.z;
        txVec8 = vec3<f32>(x_1039.x, x_1039.y, x_1041);
        let x_1048 : vec3<f32> = txVec8;
        let x_1050 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1048.xy, x_1048.z);
        u_xlat29 = x_1050;
        let x_1052 : f32 = u_xlat16.x;
        let x_1053 : f32 = u_xlat29;
        let x_1056 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_1052 * x_1053) + x_1056);
        let x_1060 : vec4<f32> = u_xlat13;
        let x_1061 : vec2<f32> = vec2<f32>(x_1060.z, x_1060.w);
        let x_1063 : f32 = u_xlat2.z;
        txVec9 = vec3<f32>(x_1061.x, x_1061.y, x_1063);
        let x_1070 : vec3<f32> = txVec9;
        let x_1072 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1070.xy, x_1070.z);
        u_xlat29 = x_1072;
        let x_1074 : f32 = u_xlat16.y;
        let x_1075 : f32 = u_xlat29;
        let x_1078 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_1074 * x_1075) + x_1078);
        let x_1082 : vec4<f32> = u_xlat11;
        let x_1083 : vec2<f32> = vec2<f32>(x_1082.z, x_1082.w);
        let x_1085 : f32 = u_xlat2.z;
        txVec10 = vec3<f32>(x_1083.x, x_1083.y, x_1085);
        let x_1092 : vec3<f32> = txVec10;
        let x_1094 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1092.xy, x_1092.z);
        u_xlat29 = x_1094;
        let x_1096 : f32 = u_xlat16.z;
        let x_1097 : f32 = u_xlat29;
        let x_1100 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_1096 * x_1097) + x_1100);
        let x_1104 : vec4<f32> = u_xlat10;
        let x_1105 : vec2<f32> = vec2<f32>(x_1104.x, x_1104.y);
        let x_1107 : f32 = u_xlat2.z;
        txVec11 = vec3<f32>(x_1105.x, x_1105.y, x_1107);
        let x_1114 : vec3<f32> = txVec11;
        let x_1116 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1114.xy, x_1114.z);
        u_xlat29 = x_1116;
        let x_1118 : f32 = u_xlat16.w;
        let x_1119 : f32 = u_xlat29;
        let x_1122 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_1118 * x_1119) + x_1122);
        let x_1126 : vec4<f32> = u_xlat10;
        let x_1127 : vec2<f32> = vec2<f32>(x_1126.z, x_1126.w);
        let x_1129 : f32 = u_xlat2.z;
        txVec12 = vec3<f32>(x_1127.x, x_1127.y, x_1129);
        let x_1136 : vec3<f32> = txVec12;
        let x_1138 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1136.xy, x_1136.z);
        u_xlat29 = x_1138;
        let x_1139 : f32 = u_xlat80;
        let x_1140 : f32 = u_xlat29;
        let x_1143 : f32 = u_xlat3.x;
        u_xlat79 = ((x_1139 * x_1140) + x_1143);
      } else {
        let x_1146 : vec4<f32> = u_xlat2;
        let x_1149 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_1152 : vec2<f32> = ((vec2<f32>(x_1146.x, x_1146.y) * vec2<f32>(x_1149.z, x_1149.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1153 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_1152.x, x_1152.y, x_1153.z, x_1153.w);
        let x_1155 : vec4<f32> = u_xlat3;
        let x_1157 : vec2<f32> = floor(vec2<f32>(x_1155.x, x_1155.y));
        let x_1158 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_1157.x, x_1157.y, x_1158.z, x_1158.w);
        let x_1160 : vec4<f32> = u_xlat2;
        let x_1163 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_1166 : vec4<f32> = u_xlat3;
        u_xlat55 = ((vec2<f32>(x_1160.x, x_1160.y) * vec2<f32>(x_1163.z, x_1163.w)) + -(vec2<f32>(x_1166.x, x_1166.y)));
        let x_1170 : vec2<f32> = u_xlat55;
        u_xlat9 = (vec4<f32>(x_1170.x, x_1170.x, x_1170.y, x_1170.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1173 : vec4<f32> = u_xlat9;
        let x_1175 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_1173.x, x_1173.x, x_1173.z, x_1173.z) * vec4<f32>(x_1175.x, x_1175.x, x_1175.z, x_1175.z));
        let x_1178 : vec4<f32> = u_xlat10;
        let x_1182 : vec2<f32> = (vec2<f32>(x_1178.y, x_1178.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1183 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1183.x, x_1182.x, x_1183.z, x_1182.y);
        let x_1185 : vec4<f32> = u_xlat10;
        let x_1188 : vec2<f32> = u_xlat55;
        let x_1190 : vec2<f32> = ((vec2<f32>(x_1185.x, x_1185.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1188));
        let x_1191 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1190.x, x_1191.y, x_1190.y, x_1191.w);
        let x_1193 : vec2<f32> = u_xlat55;
        let x_1195 : vec2<f32> = (-(x_1193) + vec2<f32>(1.0f, 1.0f));
        let x_1196 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1195.x, x_1195.y, x_1196.z, x_1196.w);
        let x_1198 : vec2<f32> = u_xlat55;
        u_xlat62 = min(x_1198, vec2<f32>(0.0f, 0.0f));
        let x_1200 : vec2<f32> = u_xlat62;
        let x_1202 : vec2<f32> = u_xlat62;
        let x_1204 : vec4<f32> = u_xlat10;
        let x_1206 : vec2<f32> = ((-(x_1200) * x_1202) + vec2<f32>(x_1204.x, x_1204.y));
        let x_1207 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1206.x, x_1206.y, x_1207.z, x_1207.w);
        let x_1209 : vec2<f32> = u_xlat55;
        u_xlat62 = max(x_1209, vec2<f32>(0.0f, 0.0f));
        let x_1212 : vec2<f32> = u_xlat62;
        let x_1214 : vec2<f32> = u_xlat62;
        let x_1216 : vec4<f32> = u_xlat9;
        let x_1218 : vec2<f32> = ((-(x_1212) * x_1214) + vec2<f32>(x_1216.y, x_1216.w));
        let x_1219 : vec3<f32> = u_xlat35;
        u_xlat35 = vec3<f32>(x_1218.x, x_1219.y, x_1218.y);
        let x_1221 : vec4<f32> = u_xlat10;
        let x_1224 : vec2<f32> = (vec2<f32>(x_1221.x, x_1221.y) + vec2<f32>(2.0f, 2.0f));
        let x_1225 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1224.x, x_1224.y, x_1225.z, x_1225.w);
        let x_1227 : vec3<f32> = u_xlat35;
        let x_1229 : vec2<f32> = (vec2<f32>(x_1227.x, x_1227.z) + vec2<f32>(2.0f, 2.0f));
        let x_1230 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1230.x, x_1229.x, x_1230.z, x_1229.y);
        let x_1233 : f32 = u_xlat9.y;
        u_xlat12.z = (x_1233 * 0.08163200318813323975f);
        let x_1237 : vec4<f32> = u_xlat9;
        let x_1240 : vec3<f32> = (vec3<f32>(x_1237.z, x_1237.x, x_1237.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1241 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1240.x, x_1240.y, x_1240.z, x_1241.w);
        let x_1243 : vec4<f32> = u_xlat10;
        let x_1246 : vec2<f32> = (vec2<f32>(x_1243.x, x_1243.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1247 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1246.x, x_1246.y, x_1247.z, x_1247.w);
        let x_1250 : f32 = u_xlat13.y;
        u_xlat12.x = x_1250;
        let x_1252 : vec2<f32> = u_xlat55;
        let x_1259 : vec2<f32> = ((vec2<f32>(x_1252.x, x_1252.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1260 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1260.x, x_1259.x, x_1260.z, x_1259.y);
        let x_1262 : vec2<f32> = u_xlat55;
        let x_1266 : vec2<f32> = ((vec2<f32>(x_1262.x, x_1262.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1267 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1266.x, x_1267.y, x_1266.y, x_1267.w);
        let x_1270 : f32 = u_xlat9.x;
        u_xlat10.y = x_1270;
        let x_1273 : f32 = u_xlat11.y;
        u_xlat10.w = x_1273;
        let x_1275 : vec4<f32> = u_xlat10;
        let x_1276 : vec4<f32> = u_xlat12;
        u_xlat12 = (x_1275 + x_1276);
        let x_1278 : vec2<f32> = u_xlat55;
        let x_1281 : vec2<f32> = ((vec2<f32>(x_1278.y, x_1278.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1282 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1282.x, x_1281.x, x_1282.z, x_1281.y);
        let x_1284 : vec2<f32> = u_xlat55;
        let x_1287 : vec2<f32> = ((vec2<f32>(x_1284.y, x_1284.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1288 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1287.x, x_1288.y, x_1287.y, x_1288.w);
        let x_1291 : f32 = u_xlat9.y;
        u_xlat11.y = x_1291;
        let x_1293 : vec4<f32> = u_xlat11;
        let x_1294 : vec4<f32> = u_xlat13;
        u_xlat9 = (x_1293 + x_1294);
        let x_1296 : vec4<f32> = u_xlat10;
        let x_1297 : vec4<f32> = u_xlat12;
        u_xlat10 = (x_1296 / x_1297);
        let x_1299 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1299 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1305 : vec4<f32> = u_xlat11;
        let x_1306 : vec4<f32> = u_xlat9;
        u_xlat11 = (x_1305 / x_1306);
        let x_1308 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1308 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1310 : vec4<f32> = u_xlat10;
        let x_1313 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1310.w, x_1310.x, x_1310.y, x_1310.z) * vec4<f32>(x_1313.x, x_1313.x, x_1313.x, x_1313.x));
        let x_1316 : vec4<f32> = u_xlat11;
        let x_1319 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        u_xlat11 = (vec4<f32>(x_1316.x, x_1316.w, x_1316.y, x_1316.z) * vec4<f32>(x_1319.y, x_1319.y, x_1319.y, x_1319.y));
        let x_1322 : vec4<f32> = u_xlat10;
        let x_1323 : vec3<f32> = vec3<f32>(x_1322.y, x_1322.z, x_1322.w);
        let x_1324 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1323.x, x_1324.y, x_1323.y, x_1323.z);
        let x_1327 : f32 = u_xlat11.x;
        u_xlat13.y = x_1327;
        let x_1329 : vec4<f32> = u_xlat3;
        let x_1332 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_1335 : vec4<f32> = u_xlat13;
        u_xlat14 = ((vec4<f32>(x_1329.x, x_1329.y, x_1329.x, x_1329.y) * vec4<f32>(x_1332.x, x_1332.y, x_1332.x, x_1332.y)) + vec4<f32>(x_1335.x, x_1335.y, x_1335.z, x_1335.y));
        let x_1338 : vec4<f32> = u_xlat3;
        let x_1341 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_1344 : vec4<f32> = u_xlat13;
        u_xlat55 = ((vec2<f32>(x_1338.x, x_1338.y) * vec2<f32>(x_1341.x, x_1341.y)) + vec2<f32>(x_1344.w, x_1344.y));
        let x_1348 : f32 = u_xlat13.y;
        u_xlat10.y = x_1348;
        let x_1351 : f32 = u_xlat11.z;
        u_xlat13.y = x_1351;
        let x_1353 : vec4<f32> = u_xlat3;
        let x_1356 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_1359 : vec4<f32> = u_xlat13;
        u_xlat15 = ((vec4<f32>(x_1353.x, x_1353.y, x_1353.x, x_1353.y) * vec4<f32>(x_1356.x, x_1356.y, x_1356.x, x_1356.y)) + vec4<f32>(x_1359.x, x_1359.y, x_1359.z, x_1359.y));
        let x_1362 : vec4<f32> = u_xlat3;
        let x_1365 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_1368 : vec4<f32> = u_xlat13;
        let x_1370 : vec2<f32> = ((vec2<f32>(x_1362.x, x_1362.y) * vec2<f32>(x_1365.x, x_1365.y)) + vec2<f32>(x_1368.w, x_1368.y));
        let x_1371 : vec4<f32> = u_xlat16;
        u_xlat16 = vec4<f32>(x_1370.x, x_1370.y, x_1371.z, x_1371.w);
        let x_1374 : f32 = u_xlat13.y;
        u_xlat10.z = x_1374;
        let x_1377 : vec4<f32> = u_xlat3;
        let x_1380 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_1383 : vec4<f32> = u_xlat10;
        u_xlat17 = ((vec4<f32>(x_1377.x, x_1377.y, x_1377.x, x_1377.y) * vec4<f32>(x_1380.x, x_1380.y, x_1380.x, x_1380.y)) + vec4<f32>(x_1383.x, x_1383.y, x_1383.x, x_1383.z));
        let x_1387 : f32 = u_xlat11.w;
        u_xlat13.y = x_1387;
        let x_1390 : vec4<f32> = u_xlat3;
        let x_1393 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_1396 : vec4<f32> = u_xlat13;
        u_xlat18 = ((vec4<f32>(x_1390.x, x_1390.y, x_1390.x, x_1390.y) * vec4<f32>(x_1393.x, x_1393.y, x_1393.x, x_1393.y)) + vec4<f32>(x_1396.x, x_1396.y, x_1396.z, x_1396.y));
        let x_1400 : vec4<f32> = u_xlat3;
        let x_1403 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_1406 : vec4<f32> = u_xlat13;
        u_xlat36 = ((vec2<f32>(x_1400.x, x_1400.y) * vec2<f32>(x_1403.x, x_1403.y)) + vec2<f32>(x_1406.w, x_1406.y));
        let x_1410 : f32 = u_xlat13.y;
        u_xlat10.w = x_1410;
        let x_1413 : vec4<f32> = u_xlat3;
        let x_1416 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_1419 : vec4<f32> = u_xlat10;
        u_xlat68 = ((vec2<f32>(x_1413.x, x_1413.y) * vec2<f32>(x_1416.x, x_1416.y)) + vec2<f32>(x_1419.x, x_1419.w));
        let x_1422 : vec4<f32> = u_xlat13;
        let x_1423 : vec3<f32> = vec3<f32>(x_1422.x, x_1422.z, x_1422.w);
        let x_1424 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1423.x, x_1424.y, x_1423.y, x_1423.z);
        let x_1426 : vec4<f32> = u_xlat3;
        let x_1429 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_1432 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1426.x, x_1426.y, x_1426.x, x_1426.y) * vec4<f32>(x_1429.x, x_1429.y, x_1429.x, x_1429.y)) + vec4<f32>(x_1432.x, x_1432.y, x_1432.z, x_1432.y));
        let x_1436 : vec4<f32> = u_xlat3;
        let x_1439 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_1442 : vec4<f32> = u_xlat11;
        u_xlat63 = ((vec2<f32>(x_1436.x, x_1436.y) * vec2<f32>(x_1439.x, x_1439.y)) + vec2<f32>(x_1442.w, x_1442.y));
        let x_1446 : f32 = u_xlat10.x;
        u_xlat11.x = x_1446;
        let x_1448 : vec4<f32> = u_xlat3;
        let x_1451 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_1454 : vec4<f32> = u_xlat11;
        let x_1456 : vec2<f32> = ((vec2<f32>(x_1448.x, x_1448.y) * vec2<f32>(x_1451.x, x_1451.y)) + vec2<f32>(x_1454.x, x_1454.y));
        let x_1457 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_1456.x, x_1456.y, x_1457.z, x_1457.w);
        let x_1460 : vec4<f32> = u_xlat9;
        let x_1462 : vec4<f32> = u_xlat12;
        u_xlat19 = (vec4<f32>(x_1460.x, x_1460.x, x_1460.x, x_1460.x) * x_1462);
        let x_1465 : vec4<f32> = u_xlat9;
        let x_1467 : vec4<f32> = u_xlat12;
        u_xlat20 = (vec4<f32>(x_1465.y, x_1465.y, x_1465.y, x_1465.y) * x_1467);
        let x_1470 : vec4<f32> = u_xlat9;
        let x_1472 : vec4<f32> = u_xlat12;
        u_xlat21 = (vec4<f32>(x_1470.z, x_1470.z, x_1470.z, x_1470.z) * x_1472);
        let x_1474 : vec4<f32> = u_xlat9;
        let x_1476 : vec4<f32> = u_xlat12;
        u_xlat9 = (vec4<f32>(x_1474.w, x_1474.w, x_1474.w, x_1474.w) * x_1476);
        let x_1479 : vec4<f32> = u_xlat14;
        let x_1480 : vec2<f32> = vec2<f32>(x_1479.x, x_1479.y);
        let x_1482 : f32 = u_xlat2.z;
        txVec13 = vec3<f32>(x_1480.x, x_1480.y, x_1482);
        let x_1489 : vec3<f32> = txVec13;
        let x_1491 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1489.xy, x_1489.z);
        u_xlat80 = x_1491;
        let x_1493 : vec4<f32> = u_xlat14;
        let x_1494 : vec2<f32> = vec2<f32>(x_1493.z, x_1493.w);
        let x_1496 : f32 = u_xlat2.z;
        txVec14 = vec3<f32>(x_1494.x, x_1494.y, x_1496);
        let x_1504 : vec3<f32> = txVec14;
        let x_1506 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1504.xy, x_1504.z);
        u_xlat82 = x_1506;
        let x_1507 : f32 = u_xlat82;
        let x_1509 : f32 = u_xlat19.y;
        u_xlat82 = (x_1507 * x_1509);
        let x_1512 : f32 = u_xlat19.x;
        let x_1513 : f32 = u_xlat80;
        let x_1515 : f32 = u_xlat82;
        u_xlat80 = ((x_1512 * x_1513) + x_1515);
        let x_1518 : vec2<f32> = u_xlat55;
        let x_1520 : f32 = u_xlat2.z;
        txVec15 = vec3<f32>(x_1518.x, x_1518.y, x_1520);
        let x_1527 : vec3<f32> = txVec15;
        let x_1529 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1527.xy, x_1527.z);
        u_xlat55.x = x_1529;
        let x_1532 : f32 = u_xlat19.z;
        let x_1534 : f32 = u_xlat55.x;
        let x_1536 : f32 = u_xlat80;
        u_xlat80 = ((x_1532 * x_1534) + x_1536);
        let x_1539 : vec4<f32> = u_xlat17;
        let x_1540 : vec2<f32> = vec2<f32>(x_1539.x, x_1539.y);
        let x_1542 : f32 = u_xlat2.z;
        txVec16 = vec3<f32>(x_1540.x, x_1540.y, x_1542);
        let x_1549 : vec3<f32> = txVec16;
        let x_1551 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1549.xy, x_1549.z);
        u_xlat55.x = x_1551;
        let x_1554 : f32 = u_xlat19.w;
        let x_1556 : f32 = u_xlat55.x;
        let x_1558 : f32 = u_xlat80;
        u_xlat80 = ((x_1554 * x_1556) + x_1558);
        let x_1561 : vec4<f32> = u_xlat15;
        let x_1562 : vec2<f32> = vec2<f32>(x_1561.x, x_1561.y);
        let x_1564 : f32 = u_xlat2.z;
        txVec17 = vec3<f32>(x_1562.x, x_1562.y, x_1564);
        let x_1571 : vec3<f32> = txVec17;
        let x_1573 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1571.xy, x_1571.z);
        u_xlat55.x = x_1573;
        let x_1576 : f32 = u_xlat20.x;
        let x_1578 : f32 = u_xlat55.x;
        let x_1580 : f32 = u_xlat80;
        u_xlat80 = ((x_1576 * x_1578) + x_1580);
        let x_1583 : vec4<f32> = u_xlat15;
        let x_1584 : vec2<f32> = vec2<f32>(x_1583.z, x_1583.w);
        let x_1586 : f32 = u_xlat2.z;
        txVec18 = vec3<f32>(x_1584.x, x_1584.y, x_1586);
        let x_1593 : vec3<f32> = txVec18;
        let x_1595 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1593.xy, x_1593.z);
        u_xlat55.x = x_1595;
        let x_1598 : f32 = u_xlat20.y;
        let x_1600 : f32 = u_xlat55.x;
        let x_1602 : f32 = u_xlat80;
        u_xlat80 = ((x_1598 * x_1600) + x_1602);
        let x_1605 : vec4<f32> = u_xlat16;
        let x_1606 : vec2<f32> = vec2<f32>(x_1605.x, x_1605.y);
        let x_1608 : f32 = u_xlat2.z;
        txVec19 = vec3<f32>(x_1606.x, x_1606.y, x_1608);
        let x_1615 : vec3<f32> = txVec19;
        let x_1617 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1615.xy, x_1615.z);
        u_xlat55.x = x_1617;
        let x_1620 : f32 = u_xlat20.z;
        let x_1622 : f32 = u_xlat55.x;
        let x_1624 : f32 = u_xlat80;
        u_xlat80 = ((x_1620 * x_1622) + x_1624);
        let x_1627 : vec4<f32> = u_xlat17;
        let x_1628 : vec2<f32> = vec2<f32>(x_1627.z, x_1627.w);
        let x_1630 : f32 = u_xlat2.z;
        txVec20 = vec3<f32>(x_1628.x, x_1628.y, x_1630);
        let x_1637 : vec3<f32> = txVec20;
        let x_1639 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1637.xy, x_1637.z);
        u_xlat55.x = x_1639;
        let x_1642 : f32 = u_xlat20.w;
        let x_1644 : f32 = u_xlat55.x;
        let x_1646 : f32 = u_xlat80;
        u_xlat80 = ((x_1642 * x_1644) + x_1646);
        let x_1649 : vec4<f32> = u_xlat18;
        let x_1650 : vec2<f32> = vec2<f32>(x_1649.x, x_1649.y);
        let x_1652 : f32 = u_xlat2.z;
        txVec21 = vec3<f32>(x_1650.x, x_1650.y, x_1652);
        let x_1659 : vec3<f32> = txVec21;
        let x_1661 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1659.xy, x_1659.z);
        u_xlat55.x = x_1661;
        let x_1664 : f32 = u_xlat21.x;
        let x_1666 : f32 = u_xlat55.x;
        let x_1668 : f32 = u_xlat80;
        u_xlat80 = ((x_1664 * x_1666) + x_1668);
        let x_1671 : vec4<f32> = u_xlat18;
        let x_1672 : vec2<f32> = vec2<f32>(x_1671.z, x_1671.w);
        let x_1674 : f32 = u_xlat2.z;
        txVec22 = vec3<f32>(x_1672.x, x_1672.y, x_1674);
        let x_1681 : vec3<f32> = txVec22;
        let x_1683 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1681.xy, x_1681.z);
        u_xlat55.x = x_1683;
        let x_1686 : f32 = u_xlat21.y;
        let x_1688 : f32 = u_xlat55.x;
        let x_1690 : f32 = u_xlat80;
        u_xlat80 = ((x_1686 * x_1688) + x_1690);
        let x_1693 : vec2<f32> = u_xlat36;
        let x_1695 : f32 = u_xlat2.z;
        txVec23 = vec3<f32>(x_1693.x, x_1693.y, x_1695);
        let x_1702 : vec3<f32> = txVec23;
        let x_1704 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1702.xy, x_1702.z);
        u_xlat55.x = x_1704;
        let x_1707 : f32 = u_xlat21.z;
        let x_1709 : f32 = u_xlat55.x;
        let x_1711 : f32 = u_xlat80;
        u_xlat80 = ((x_1707 * x_1709) + x_1711);
        let x_1714 : vec2<f32> = u_xlat68;
        let x_1716 : f32 = u_xlat2.z;
        txVec24 = vec3<f32>(x_1714.x, x_1714.y, x_1716);
        let x_1723 : vec3<f32> = txVec24;
        let x_1725 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1723.xy, x_1723.z);
        u_xlat55.x = x_1725;
        let x_1728 : f32 = u_xlat21.w;
        let x_1730 : f32 = u_xlat55.x;
        let x_1732 : f32 = u_xlat80;
        u_xlat80 = ((x_1728 * x_1730) + x_1732);
        let x_1735 : vec4<f32> = u_xlat13;
        let x_1736 : vec2<f32> = vec2<f32>(x_1735.x, x_1735.y);
        let x_1738 : f32 = u_xlat2.z;
        txVec25 = vec3<f32>(x_1736.x, x_1736.y, x_1738);
        let x_1745 : vec3<f32> = txVec25;
        let x_1747 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1745.xy, x_1745.z);
        u_xlat55.x = x_1747;
        let x_1750 : f32 = u_xlat9.x;
        let x_1752 : f32 = u_xlat55.x;
        let x_1754 : f32 = u_xlat80;
        u_xlat80 = ((x_1750 * x_1752) + x_1754);
        let x_1757 : vec4<f32> = u_xlat13;
        let x_1758 : vec2<f32> = vec2<f32>(x_1757.z, x_1757.w);
        let x_1760 : f32 = u_xlat2.z;
        txVec26 = vec3<f32>(x_1758.x, x_1758.y, x_1760);
        let x_1767 : vec3<f32> = txVec26;
        let x_1769 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1767.xy, x_1767.z);
        u_xlat55.x = x_1769;
        let x_1772 : f32 = u_xlat9.y;
        let x_1774 : f32 = u_xlat55.x;
        let x_1776 : f32 = u_xlat80;
        u_xlat80 = ((x_1772 * x_1774) + x_1776);
        let x_1779 : vec2<f32> = u_xlat63;
        let x_1781 : f32 = u_xlat2.z;
        txVec27 = vec3<f32>(x_1779.x, x_1779.y, x_1781);
        let x_1788 : vec3<f32> = txVec27;
        let x_1790 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1788.xy, x_1788.z);
        u_xlat55.x = x_1790;
        let x_1793 : f32 = u_xlat9.z;
        let x_1795 : f32 = u_xlat55.x;
        let x_1797 : f32 = u_xlat80;
        u_xlat80 = ((x_1793 * x_1795) + x_1797);
        let x_1800 : vec4<f32> = u_xlat3;
        let x_1801 : vec2<f32> = vec2<f32>(x_1800.x, x_1800.y);
        let x_1803 : f32 = u_xlat2.z;
        txVec28 = vec3<f32>(x_1801.x, x_1801.y, x_1803);
        let x_1810 : vec3<f32> = txVec28;
        let x_1812 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1810.xy, x_1810.z);
        u_xlat3.x = x_1812;
        let x_1815 : f32 = u_xlat9.w;
        let x_1817 : f32 = u_xlat3.x;
        let x_1819 : f32 = u_xlat80;
        u_xlat79 = ((x_1815 * x_1817) + x_1819);
      }
    }
  } else {
    let x_1823 : vec4<f32> = u_xlat2;
    let x_1824 : vec2<f32> = vec2<f32>(x_1823.x, x_1823.y);
    let x_1826 : f32 = u_xlat2.z;
    txVec29 = vec3<f32>(x_1824.x, x_1824.y, x_1826);
    let x_1833 : vec3<f32> = txVec29;
    let x_1835 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1833.xy, x_1833.z);
    u_xlat79 = x_1835;
  }
  let x_1837 : f32 = x_394.x_MainLightShadowParams.x;
  u_xlat80 = (-(x_1837) + 1.0f);
  let x_1840 : f32 = u_xlat79;
  let x_1842 : f32 = x_394.x_MainLightShadowParams.x;
  let x_1844 : f32 = u_xlat80;
  u_xlat79 = ((x_1840 * x_1842) + x_1844);
  let x_1848 : f32 = u_xlat2.z;
  u_xlatb3.x = (0.0f >= x_1848);
  let x_1853 : f32 = u_xlat2.z;
  u_xlatb29 = (x_1853 >= 1.0f);
  let x_1855 : bool = u_xlatb29;
  let x_1857 : bool = u_xlatb3.x;
  u_xlatb3.x = (x_1855 | x_1857);
  let x_1861 : bool = u_xlatb3.x;
  let x_1862 : f32 = u_xlat79;
  u_xlat79 = select(x_1862, 1.0f, x_1861);
  let x_1864 : vec3<f32> = u_xlat1;
  let x_1866 : vec4<f32> = x_149.x_MainLightPosition;
  u_xlat1.x = dot(x_1864, -(vec3<f32>(x_1866.x, x_1866.y, x_1866.z)));
  let x_1872 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1872, 0.0f, 1.0f);
  let x_1876 : f32 = u_xlat79;
  let x_1879 : vec4<f32> = x_149.x_MainLightColor;
  u_xlat27 = (vec3<f32>(x_1876, x_1876, x_1876) * vec3<f32>(x_1879.x, x_1879.y, x_1879.z));
  let x_1882 : vec3<f32> = u_xlat27;
  let x_1883 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_1882 * vec3<f32>(x_1883.x, x_1883.x, x_1883.x));
  let x_1886 : vec3<f32> = u_xlat1;
  let x_1887 : vec4<f32> = u_xlat6;
  u_xlat1 = (x_1886 * vec3<f32>(x_1887.x, x_1887.y, x_1887.z));
  let x_1891 : f32 = x_83.unity_LODFade.x;
  u_xlatb79 = (x_1891 < 0.0f);
  let x_1894 : f32 = x_83.unity_LODFade.x;
  u_xlat29 = (x_1894 + 1.0f);
  let x_1896 : bool = u_xlatb79;
  if (x_1896) {
    let x_1900 : f32 = u_xlat29;
    x_1897 = x_1900;
  } else {
    let x_1903 : f32 = x_83.unity_LODFade.x;
    x_1897 = x_1903;
  }
  let x_1904 : f32 = x_1897;
  u_xlat79 = x_1904;
  let x_1905 : f32 = u_xlat79;
  u_xlatb29 = (0.5f >= x_1905);
  let x_1907 : vec4<f32> = u_xlat4;
  let x_1911 : vec4<f32> = x_149.x_ScreenParams;
  let x_1913 : vec3<f32> = (abs(vec3<f32>(x_1907.x, x_1907.y, x_1907.z)) * vec3<f32>(x_1911.x, x_1911.y, x_1911.x));
  let x_1914 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1913.x, x_1913.y, x_1913.z, x_1914.w);
  let x_1919 : vec4<f32> = u_xlat4;
  u_xlatu4 = vec3<u32>(vec3<f32>(x_1919.x, x_1919.y, x_1919.z));
  let x_1924 : u32 = u_xlatu4.z;
  u_xlatu55 = (x_1924 * 1025u);
  let x_1928 : u32 = u_xlatu55;
  u_xlatu81 = (x_1928 >> 6u);
  let x_1932 : u32 = u_xlatu81;
  let x_1933 : u32 = u_xlatu55;
  u_xlati55 = bitcast<i32>((x_1932 ^ x_1933));
  let x_1936 : i32 = u_xlati55;
  u_xlatu55 = (bitcast<u32>(x_1936) * 9u);
  let x_1940 : u32 = u_xlatu55;
  u_xlatu81 = (x_1940 >> 11u);
  let x_1943 : u32 = u_xlatu81;
  let x_1944 : u32 = u_xlatu55;
  u_xlati55 = bitcast<i32>((x_1943 ^ x_1944));
  let x_1947 : i32 = u_xlati55;
  u_xlati55 = (x_1947 * 32769i);
  let x_1950 : i32 = u_xlati55;
  let x_1953 : u32 = u_xlatu4.y;
  u_xlati55 = bitcast<i32>((bitcast<u32>(x_1950) ^ x_1953));
  let x_1956 : i32 = u_xlati55;
  u_xlatu55 = (bitcast<u32>(x_1956) * 1025u);
  let x_1959 : u32 = u_xlatu55;
  u_xlatu81 = (x_1959 >> 6u);
  let x_1961 : u32 = u_xlatu81;
  let x_1962 : u32 = u_xlatu55;
  u_xlati55 = bitcast<i32>((x_1961 ^ x_1962));
  let x_1965 : i32 = u_xlati55;
  u_xlatu55 = (bitcast<u32>(x_1965) * 9u);
  let x_1968 : u32 = u_xlatu55;
  u_xlatu81 = (x_1968 >> 11u);
  let x_1970 : u32 = u_xlatu81;
  let x_1971 : u32 = u_xlatu55;
  u_xlati55 = bitcast<i32>((x_1970 ^ x_1971));
  let x_1974 : i32 = u_xlati55;
  u_xlati55 = (x_1974 * 32769i);
  let x_1976 : i32 = u_xlati55;
  let x_1979 : u32 = u_xlatu4.x;
  u_xlati55 = bitcast<i32>((bitcast<u32>(x_1976) ^ x_1979));
  let x_1982 : i32 = u_xlati55;
  u_xlatu55 = (bitcast<u32>(x_1982) * 1025u);
  let x_1985 : u32 = u_xlatu55;
  u_xlatu81 = (x_1985 >> 6u);
  let x_1987 : u32 = u_xlatu81;
  let x_1988 : u32 = u_xlatu55;
  u_xlati55 = bitcast<i32>((x_1987 ^ x_1988));
  let x_1991 : i32 = u_xlati55;
  u_xlatu55 = (bitcast<u32>(x_1991) * 9u);
  let x_1994 : u32 = u_xlatu55;
  u_xlatu81 = (x_1994 >> 11u);
  let x_1996 : u32 = u_xlatu81;
  let x_1997 : u32 = u_xlatu55;
  u_xlati55 = bitcast<i32>((x_1996 ^ x_1997));
  let x_2000 : i32 = u_xlati55;
  u_xlati55 = (x_2000 * 32769i);
  param = 1065353216i;
  let x_2006 : i32 = u_xlati55;
  param_1 = x_2006;
  param_2 = 0i;
  param_3 = 23i;
  let x_2009 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlat55.x = bitcast<f32>(x_2009);
  let x_2013 : f32 = u_xlat55.x;
  u_xlat55.x = (x_2013 + -1.0f);
  let x_2018 : f32 = u_xlat55.x;
  u_xlat81 = (-(x_2018) + 1.0f);
  let x_2021 : bool = u_xlatb29;
  if (x_2021) {
    let x_2026 : f32 = u_xlat55.x;
    x_2022 = x_2026;
  } else {
    let x_2028 : f32 = u_xlat81;
    x_2022 = x_2028;
  }
  let x_2029 : f32 = x_2022;
  u_xlat29 = x_2029;
  let x_2030 : f32 = u_xlat79;
  let x_2032 : f32 = u_xlat29;
  u_xlat79 = ((x_2030 * 2.0f) + -(x_2032));
  let x_2035 : f32 = u_xlat79;
  let x_2037 : f32 = u_xlat6.w;
  u_xlat29 = (x_2035 * x_2037);
  let x_2040 : f32 = u_xlat29;
  u_xlatb55 = (x_2040 >= 0.40000000596046447754f);
  let x_2043 : bool = u_xlatb55;
  let x_2044 : f32 = u_xlat29;
  u_xlat55.x = select(0.0f, x_2044, x_2043);
  let x_2048 : f32 = u_xlat6.w;
  let x_2049 : f32 = u_xlat79;
  u_xlat79 = ((x_2048 * x_2049) + -0.40000000596046447754f);
  let x_2053 : f32 = u_xlat29;
  u_xlat81 = dpdxCoarse(x_2053);
  let x_2055 : f32 = u_xlat29;
  u_xlat29 = dpdyCoarse(x_2055);
  let x_2057 : f32 = u_xlat29;
  let x_2059 : f32 = u_xlat81;
  u_xlat29 = (abs(x_2057) + abs(x_2059));
  let x_2062 : f32 = u_xlat29;
  u_xlat29 = max(x_2062, 0.00009999999747378752f);
  let x_2065 : f32 = u_xlat79;
  let x_2066 : f32 = u_xlat29;
  u_xlat79 = (x_2065 / x_2066);
  let x_2068 : f32 = u_xlat79;
  u_xlat79 = (x_2068 + 0.5f);
  let x_2070 : f32 = u_xlat79;
  u_xlat79 = clamp(x_2070, 0.0f, 1.0f);
  let x_2073 : f32 = x_149.x_AlphaToMaskAvailable;
  u_xlatb29 = !((x_2073 == 0.0f));
  let x_2075 : bool = u_xlatb29;
  if (x_2075) {
    let x_2079 : f32 = u_xlat79;
    x_2076 = x_2079;
  } else {
    let x_2082 : f32 = u_xlat55.x;
    x_2076 = x_2082;
  }
  let x_2083 : f32 = x_2076;
  u_xlat79 = x_2083;
  let x_2084 : f32 = u_xlat79;
  u_xlat55.x = (x_2084 + -0.00009999999747378752f);
  let x_2089 : f32 = u_xlat55.x;
  u_xlatb55 = (x_2089 < 0.0f);
  let x_2091 : bool = u_xlatb55;
  if (((select(0i, 1i, x_2091) * -1i) != 0i)) {
    discard;
  }
  let x_2099 : vec3<f32> = u_xlat26;
  let x_2100 : vec3<f32> = u_xlat34;
  u_xlat26 = (x_2099 * vec3<f32>(x_2100.y, x_2100.y, x_2100.y));
  let x_2103 : vec3<f32> = u_xlat34;
  let x_2105 : vec4<f32> = vs_INTERP4;
  let x_2108 : vec3<f32> = u_xlat26;
  u_xlat26 = ((vec3<f32>(x_2103.x, x_2103.x, x_2103.x) * vec3<f32>(x_2105.x, x_2105.y, x_2105.z)) + x_2108);
  let x_2110 : vec3<f32> = u_xlat34;
  let x_2112 : vec3<f32> = vs_INTERP9;
  let x_2114 : vec3<f32> = u_xlat26;
  u_xlat26 = ((vec3<f32>(x_2110.z, x_2110.z, x_2110.z) * x_2112) + x_2114);
  let x_2116 : vec3<f32> = u_xlat26;
  let x_2117 : vec3<f32> = u_xlat26;
  u_xlat55.x = dot(x_2116, x_2117);
  let x_2121 : f32 = u_xlat55.x;
  u_xlat55.x = inverseSqrt(x_2121);
  let x_2124 : vec3<f32> = u_xlat26;
  let x_2125 : vec2<f32> = u_xlat55;
  u_xlat26 = (x_2124 * vec3<f32>(x_2125.x, x_2125.x, x_2125.x));
  let x_2135 : vec2<f32> = vs_INTERP0;
  let x_2137 : f32 = x_149.x_GlobalMipBias.x;
  let x_2138 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_2135, x_2137);
  u_xlat4 = x_2138;
  let x_2143 : vec2<f32> = vs_INTERP0;
  let x_2145 : f32 = x_149.x_GlobalMipBias.x;
  let x_2146 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_2143, x_2145);
  let x_2147 : vec3<f32> = vec3<f32>(x_2146.x, x_2146.y, x_2146.z);
  let x_2148 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2147.x, x_2147.y, x_2147.z, x_2148.w);
  let x_2150 : vec4<f32> = u_xlat4;
  let x_2153 : vec3<f32> = (vec3<f32>(x_2150.x, x_2150.y, x_2150.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_2154 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2153.x, x_2153.y, x_2153.z, x_2154.w);
  let x_2156 : vec3<f32> = u_xlat26;
  let x_2157 : vec4<f32> = u_xlat4;
  u_xlat55.x = dot(x_2156, vec3<f32>(x_2157.x, x_2157.y, x_2157.z));
  let x_2162 : f32 = u_xlat55.x;
  u_xlat55.x = (x_2162 + 0.5f);
  let x_2165 : vec2<f32> = u_xlat55;
  let x_2167 : vec4<f32> = u_xlat6;
  let x_2169 : vec3<f32> = (vec3<f32>(x_2165.x, x_2165.x, x_2165.x) * vec3<f32>(x_2167.x, x_2167.y, x_2167.z));
  let x_2170 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2169.x, x_2169.y, x_2169.z, x_2170.w);
  let x_2173 : f32 = u_xlat4.w;
  u_xlat55.x = max(x_2173, 0.00009999999747378752f);
  let x_2176 : vec4<f32> = u_xlat4;
  let x_2178 : vec2<f32> = u_xlat55;
  let x_2180 : vec3<f32> = (vec3<f32>(x_2176.x, x_2176.y, x_2176.z) / vec3<f32>(x_2178.x, x_2178.x, x_2178.x));
  let x_2181 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2180.x, x_2180.y, x_2180.z, x_2181.w);
  let x_2184 : f32 = u_xlat8.x;
  u_xlat8.x = x_2184;
  let x_2187 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_2187, 0.0f, 1.0f);
  let x_2190 : f32 = u_xlat79;
  u_xlat79 = x_2190;
  let x_2191 : f32 = u_xlat79;
  u_xlat79 = clamp(x_2191, 0.0f, 1.0f);
  let x_2193 : vec3<f32> = u_xlat7;
  let x_2196 : vec3<f32> = (x_2193 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_2197 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2196.x, x_2196.y, x_2196.z, x_2197.w);
  let x_2200 : f32 = u_xlat8.x;
  u_xlat55.x = (-(x_2200) + 1.0f);
  let x_2205 : f32 = u_xlat55.x;
  let x_2207 : f32 = u_xlat55.x;
  u_xlat81 = (x_2205 * x_2207);
  let x_2209 : f32 = u_xlat81;
  u_xlat81 = max(x_2209, 0.0078125f);
  let x_2212 : f32 = u_xlat81;
  let x_2213 : f32 = u_xlat81;
  u_xlat82 = (x_2212 * x_2213);
  let x_2217 : f32 = u_xlat8.x;
  u_xlat83 = (x_2217 + 0.04000002145767211914f);
  let x_2220 : f32 = u_xlat83;
  u_xlat83 = min(x_2220, 1.0f);
  let x_2223 : f32 = u_xlat81;
  u_xlat84 = ((x_2223 * 4.0f) + 2.0f);
  let x_2227 : f32 = vs_INTERP6.w;
  u_xlat7.x = min(x_2227, 1.0f);
  let x_2230 : bool = u_xlatb0;
  if (x_2230) {
    let x_2234 : f32 = x_394.x_MainLightShadowParams.y;
    u_xlatb0 = (x_2234 == 1.0f);
    let x_2236 : bool = u_xlatb0;
    if (x_2236) {
      let x_2239 : vec4<f32> = u_xlat2;
      let x_2242 : vec4<f32> = x_394.x_MainLightShadowOffset0;
      u_xlat8 = (vec4<f32>(x_2239.x, x_2239.y, x_2239.x, x_2239.y) + x_2242);
      let x_2245 : vec4<f32> = u_xlat8;
      let x_2246 : vec2<f32> = vec2<f32>(x_2245.x, x_2245.y);
      let x_2248 : f32 = u_xlat2.z;
      txVec30 = vec3<f32>(x_2246.x, x_2246.y, x_2248);
      let x_2255 : vec3<f32> = txVec30;
      let x_2257 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2255.xy, x_2255.z);
      u_xlat9.x = x_2257;
      let x_2260 : vec4<f32> = u_xlat8;
      let x_2261 : vec2<f32> = vec2<f32>(x_2260.z, x_2260.w);
      let x_2263 : f32 = u_xlat2.z;
      txVec31 = vec3<f32>(x_2261.x, x_2261.y, x_2263);
      let x_2270 : vec3<f32> = txVec31;
      let x_2272 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2270.xy, x_2270.z);
      u_xlat9.y = x_2272;
      let x_2274 : vec4<f32> = u_xlat2;
      let x_2277 : vec4<f32> = x_394.x_MainLightShadowOffset1;
      u_xlat8 = (vec4<f32>(x_2274.x, x_2274.y, x_2274.x, x_2274.y) + x_2277);
      let x_2280 : vec4<f32> = u_xlat8;
      let x_2281 : vec2<f32> = vec2<f32>(x_2280.x, x_2280.y);
      let x_2283 : f32 = u_xlat2.z;
      txVec32 = vec3<f32>(x_2281.x, x_2281.y, x_2283);
      let x_2290 : vec3<f32> = txVec32;
      let x_2292 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2290.xy, x_2290.z);
      u_xlat9.z = x_2292;
      let x_2295 : vec4<f32> = u_xlat8;
      let x_2296 : vec2<f32> = vec2<f32>(x_2295.z, x_2295.w);
      let x_2298 : f32 = u_xlat2.z;
      txVec33 = vec3<f32>(x_2296.x, x_2296.y, x_2298);
      let x_2305 : vec3<f32> = txVec33;
      let x_2307 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2305.xy, x_2305.z);
      u_xlat9.w = x_2307;
      let x_2309 : vec4<f32> = u_xlat9;
      u_xlat0.x = dot(x_2309, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_2315 : f32 = x_394.x_MainLightShadowParams.y;
      u_xlatb33 = (x_2315 == 2.0f);
      let x_2317 : bool = u_xlatb33;
      if (x_2317) {
        let x_2321 : vec4<f32> = u_xlat2;
        let x_2324 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_2327 : vec2<f32> = ((vec2<f32>(x_2321.x, x_2321.y) * vec2<f32>(x_2324.z, x_2324.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2328 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_2327.x, x_2327.y, x_2328.z);
        let x_2330 : vec3<f32> = u_xlat33;
        let x_2332 : vec2<f32> = floor(vec2<f32>(x_2330.x, x_2330.y));
        let x_2333 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_2332.x, x_2332.y, x_2333.z);
        let x_2335 : vec4<f32> = u_xlat2;
        let x_2338 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_2341 : vec3<f32> = u_xlat33;
        let x_2344 : vec2<f32> = ((vec2<f32>(x_2335.x, x_2335.y) * vec2<f32>(x_2338.z, x_2338.w)) + -(vec2<f32>(x_2341.x, x_2341.y)));
        let x_2345 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2344.x, x_2344.y, x_2345.z, x_2345.w);
        let x_2347 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2347.x, x_2347.x, x_2347.y, x_2347.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2350 : vec4<f32> = u_xlat9;
        let x_2352 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_2350.x, x_2350.x, x_2350.z, x_2350.z) * vec4<f32>(x_2352.x, x_2352.x, x_2352.z, x_2352.z));
        let x_2356 : vec4<f32> = u_xlat10;
        u_xlat60 = (vec2<f32>(x_2356.y, x_2356.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_2359 : vec4<f32> = u_xlat10;
        let x_2362 : vec4<f32> = u_xlat8;
        let x_2365 : vec2<f32> = ((vec2<f32>(x_2359.x, x_2359.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2362.x, x_2362.y)));
        let x_2366 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2365.x, x_2366.y, x_2365.y, x_2366.w);
        let x_2368 : vec4<f32> = u_xlat8;
        let x_2371 : vec2<f32> = (-(vec2<f32>(x_2368.x, x_2368.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2372 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2371.x, x_2371.y, x_2372.z, x_2372.w);
        let x_2374 : vec4<f32> = u_xlat8;
        u_xlat62 = min(vec2<f32>(x_2374.x, x_2374.y), vec2<f32>(0.0f, 0.0f));
        let x_2377 : vec2<f32> = u_xlat62;
        let x_2379 : vec2<f32> = u_xlat62;
        let x_2381 : vec4<f32> = u_xlat10;
        u_xlat62 = ((-(x_2377) * x_2379) + vec2<f32>(x_2381.x, x_2381.y));
        let x_2384 : vec4<f32> = u_xlat8;
        let x_2386 : vec2<f32> = max(vec2<f32>(x_2384.x, x_2384.y), vec2<f32>(0.0f, 0.0f));
        let x_2387 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2386.x, x_2386.y, x_2387.z, x_2387.w);
        let x_2389 : vec4<f32> = u_xlat8;
        let x_2392 : vec4<f32> = u_xlat8;
        let x_2395 : vec4<f32> = u_xlat9;
        let x_2397 : vec2<f32> = ((-(vec2<f32>(x_2389.x, x_2389.y)) * vec2<f32>(x_2392.x, x_2392.y)) + vec2<f32>(x_2395.y, x_2395.w));
        let x_2398 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2397.x, x_2397.y, x_2398.z, x_2398.w);
        let x_2400 : vec2<f32> = u_xlat62;
        u_xlat62 = (x_2400 + vec2<f32>(1.0f, 1.0f));
        let x_2402 : vec4<f32> = u_xlat8;
        let x_2404 : vec2<f32> = (vec2<f32>(x_2402.x, x_2402.y) + vec2<f32>(1.0f, 1.0f));
        let x_2405 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2404.x, x_2404.y, x_2405.z, x_2405.w);
        let x_2407 : vec4<f32> = u_xlat9;
        let x_2409 : vec2<f32> = (vec2<f32>(x_2407.x, x_2407.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2410 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2409.x, x_2409.y, x_2410.z, x_2410.w);
        let x_2412 : vec4<f32> = u_xlat10;
        let x_2414 : vec2<f32> = (vec2<f32>(x_2412.x, x_2412.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2415 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2414.x, x_2414.y, x_2415.z, x_2415.w);
        let x_2417 : vec2<f32> = u_xlat62;
        let x_2418 : vec2<f32> = (x_2417 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2419 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2418.x, x_2418.y, x_2419.z, x_2419.w);
        let x_2421 : vec4<f32> = u_xlat8;
        let x_2423 : vec2<f32> = (vec2<f32>(x_2421.x, x_2421.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2424 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_2423.x, x_2423.y, x_2424.z, x_2424.w);
        let x_2426 : vec4<f32> = u_xlat9;
        let x_2428 : vec2<f32> = (vec2<f32>(x_2426.y, x_2426.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2429 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2428.x, x_2428.y, x_2429.z, x_2429.w);
        let x_2432 : f32 = u_xlat10.x;
        u_xlat11.z = x_2432;
        let x_2435 : f32 = u_xlat8.x;
        u_xlat11.w = x_2435;
        let x_2438 : f32 = u_xlat13.x;
        u_xlat12.z = x_2438;
        let x_2441 : f32 = u_xlat60.x;
        u_xlat12.w = x_2441;
        let x_2443 : vec4<f32> = u_xlat11;
        let x_2445 : vec4<f32> = u_xlat12;
        u_xlat9 = (vec4<f32>(x_2443.z, x_2443.w, x_2443.x, x_2443.z) + vec4<f32>(x_2445.z, x_2445.w, x_2445.x, x_2445.z));
        let x_2449 : f32 = u_xlat11.y;
        u_xlat10.z = x_2449;
        let x_2452 : f32 = u_xlat8.y;
        u_xlat10.w = x_2452;
        let x_2455 : f32 = u_xlat12.y;
        u_xlat13.z = x_2455;
        let x_2458 : f32 = u_xlat60.y;
        u_xlat13.w = x_2458;
        let x_2460 : vec4<f32> = u_xlat10;
        let x_2462 : vec4<f32> = u_xlat13;
        let x_2464 : vec3<f32> = (vec3<f32>(x_2460.z, x_2460.y, x_2460.w) + vec3<f32>(x_2462.z, x_2462.y, x_2462.w));
        let x_2465 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2464.x, x_2464.y, x_2464.z, x_2465.w);
        let x_2467 : vec4<f32> = u_xlat12;
        let x_2469 : vec4<f32> = u_xlat9;
        let x_2471 : vec3<f32> = (vec3<f32>(x_2467.x, x_2467.z, x_2467.w) / vec3<f32>(x_2469.z, x_2469.w, x_2469.y));
        let x_2472 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2471.x, x_2471.y, x_2471.z, x_2472.w);
        let x_2474 : vec4<f32> = u_xlat10;
        let x_2476 : vec3<f32> = (vec3<f32>(x_2474.x, x_2474.y, x_2474.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2477 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2476.x, x_2476.y, x_2476.z, x_2477.w);
        let x_2479 : vec4<f32> = u_xlat13;
        let x_2481 : vec4<f32> = u_xlat8;
        let x_2483 : vec3<f32> = (vec3<f32>(x_2479.z, x_2479.y, x_2479.w) / vec3<f32>(x_2481.x, x_2481.y, x_2481.z));
        let x_2484 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2483.x, x_2483.y, x_2483.z, x_2484.w);
        let x_2486 : vec4<f32> = u_xlat11;
        let x_2488 : vec3<f32> = (vec3<f32>(x_2486.x, x_2486.y, x_2486.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2489 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2488.x, x_2488.y, x_2488.z, x_2489.w);
        let x_2491 : vec4<f32> = u_xlat10;
        let x_2494 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_2496 : vec3<f32> = (vec3<f32>(x_2491.y, x_2491.x, x_2491.z) * vec3<f32>(x_2494.x, x_2494.x, x_2494.x));
        let x_2497 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2496.x, x_2496.y, x_2496.z, x_2497.w);
        let x_2499 : vec4<f32> = u_xlat11;
        let x_2502 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_2504 : vec3<f32> = (vec3<f32>(x_2499.x, x_2499.y, x_2499.z) * vec3<f32>(x_2502.y, x_2502.y, x_2502.y));
        let x_2505 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2504.x, x_2504.y, x_2504.z, x_2505.w);
        let x_2508 : f32 = u_xlat11.x;
        u_xlat10.w = x_2508;
        let x_2510 : vec3<f32> = u_xlat33;
        let x_2513 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_2516 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_2510.x, x_2510.y, x_2510.x, x_2510.y) * vec4<f32>(x_2513.x, x_2513.y, x_2513.x, x_2513.y)) + vec4<f32>(x_2516.y, x_2516.w, x_2516.x, x_2516.w));
        let x_2519 : vec3<f32> = u_xlat33;
        let x_2522 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_2525 : vec4<f32> = u_xlat10;
        let x_2527 : vec2<f32> = ((vec2<f32>(x_2519.x, x_2519.y) * vec2<f32>(x_2522.x, x_2522.y)) + vec2<f32>(x_2525.z, x_2525.w));
        let x_2528 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_2527.x, x_2527.y, x_2528.z, x_2528.w);
        let x_2531 : f32 = u_xlat10.y;
        u_xlat11.w = x_2531;
        let x_2533 : vec4<f32> = u_xlat11;
        let x_2534 : vec2<f32> = vec2<f32>(x_2533.y, x_2533.z);
        let x_2535 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2535.x, x_2534.x, x_2535.z, x_2534.y);
        let x_2537 : vec3<f32> = u_xlat33;
        let x_2540 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_2543 : vec4<f32> = u_xlat10;
        u_xlat14 = ((vec4<f32>(x_2537.x, x_2537.y, x_2537.x, x_2537.y) * vec4<f32>(x_2540.x, x_2540.y, x_2540.x, x_2540.y)) + vec4<f32>(x_2543.x, x_2543.y, x_2543.z, x_2543.y));
        let x_2546 : vec3<f32> = u_xlat33;
        let x_2549 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_2552 : vec4<f32> = u_xlat11;
        u_xlat11 = ((vec4<f32>(x_2546.x, x_2546.y, x_2546.x, x_2546.y) * vec4<f32>(x_2549.x, x_2549.y, x_2549.x, x_2549.y)) + vec4<f32>(x_2552.w, x_2552.y, x_2552.w, x_2552.z));
        let x_2555 : vec3<f32> = u_xlat33;
        let x_2558 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_2561 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_2555.x, x_2555.y, x_2555.x, x_2555.y) * vec4<f32>(x_2558.x, x_2558.y, x_2558.x, x_2558.y)) + vec4<f32>(x_2561.x, x_2561.w, x_2561.z, x_2561.w));
        let x_2564 : vec4<f32> = u_xlat8;
        let x_2566 : vec4<f32> = u_xlat9;
        u_xlat15 = (vec4<f32>(x_2564.x, x_2564.x, x_2564.x, x_2564.y) * vec4<f32>(x_2566.z, x_2566.w, x_2566.y, x_2566.z));
        let x_2569 : vec4<f32> = u_xlat8;
        let x_2571 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_2569.y, x_2569.y, x_2569.z, x_2569.z) * x_2571);
        let x_2574 : f32 = u_xlat8.z;
        let x_2576 : f32 = u_xlat9.y;
        u_xlat33.x = (x_2574 * x_2576);
        let x_2580 : vec4<f32> = u_xlat12;
        let x_2581 : vec2<f32> = vec2<f32>(x_2580.x, x_2580.y);
        let x_2583 : f32 = u_xlat2.z;
        txVec34 = vec3<f32>(x_2581.x, x_2581.y, x_2583);
        let x_2591 : vec3<f32> = txVec34;
        let x_2593 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2591.xy, x_2591.z);
        u_xlat59 = x_2593;
        let x_2595 : vec4<f32> = u_xlat12;
        let x_2596 : vec2<f32> = vec2<f32>(x_2595.z, x_2595.w);
        let x_2598 : f32 = u_xlat2.z;
        txVec35 = vec3<f32>(x_2596.x, x_2596.y, x_2598);
        let x_2606 : vec3<f32> = txVec35;
        let x_2608 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2606.xy, x_2606.z);
        u_xlat85 = x_2608;
        let x_2609 : f32 = u_xlat85;
        let x_2611 : f32 = u_xlat15.y;
        u_xlat85 = (x_2609 * x_2611);
        let x_2614 : f32 = u_xlat15.x;
        let x_2615 : f32 = u_xlat59;
        let x_2617 : f32 = u_xlat85;
        u_xlat59 = ((x_2614 * x_2615) + x_2617);
        let x_2620 : vec4<f32> = u_xlat13;
        let x_2621 : vec2<f32> = vec2<f32>(x_2620.x, x_2620.y);
        let x_2623 : f32 = u_xlat2.z;
        txVec36 = vec3<f32>(x_2621.x, x_2621.y, x_2623);
        let x_2630 : vec3<f32> = txVec36;
        let x_2632 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2630.xy, x_2630.z);
        u_xlat85 = x_2632;
        let x_2634 : f32 = u_xlat15.z;
        let x_2635 : f32 = u_xlat85;
        let x_2637 : f32 = u_xlat59;
        u_xlat59 = ((x_2634 * x_2635) + x_2637);
        let x_2640 : vec4<f32> = u_xlat11;
        let x_2641 : vec2<f32> = vec2<f32>(x_2640.x, x_2640.y);
        let x_2643 : f32 = u_xlat2.z;
        txVec37 = vec3<f32>(x_2641.x, x_2641.y, x_2643);
        let x_2650 : vec3<f32> = txVec37;
        let x_2652 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2650.xy, x_2650.z);
        u_xlat85 = x_2652;
        let x_2654 : f32 = u_xlat15.w;
        let x_2655 : f32 = u_xlat85;
        let x_2657 : f32 = u_xlat59;
        u_xlat59 = ((x_2654 * x_2655) + x_2657);
        let x_2660 : vec4<f32> = u_xlat14;
        let x_2661 : vec2<f32> = vec2<f32>(x_2660.x, x_2660.y);
        let x_2663 : f32 = u_xlat2.z;
        txVec38 = vec3<f32>(x_2661.x, x_2661.y, x_2663);
        let x_2670 : vec3<f32> = txVec38;
        let x_2672 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2670.xy, x_2670.z);
        u_xlat85 = x_2672;
        let x_2674 : f32 = u_xlat16.x;
        let x_2675 : f32 = u_xlat85;
        let x_2677 : f32 = u_xlat59;
        u_xlat59 = ((x_2674 * x_2675) + x_2677);
        let x_2680 : vec4<f32> = u_xlat14;
        let x_2681 : vec2<f32> = vec2<f32>(x_2680.z, x_2680.w);
        let x_2683 : f32 = u_xlat2.z;
        txVec39 = vec3<f32>(x_2681.x, x_2681.y, x_2683);
        let x_2690 : vec3<f32> = txVec39;
        let x_2692 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2690.xy, x_2690.z);
        u_xlat85 = x_2692;
        let x_2694 : f32 = u_xlat16.y;
        let x_2695 : f32 = u_xlat85;
        let x_2697 : f32 = u_xlat59;
        u_xlat59 = ((x_2694 * x_2695) + x_2697);
        let x_2700 : vec4<f32> = u_xlat11;
        let x_2701 : vec2<f32> = vec2<f32>(x_2700.z, x_2700.w);
        let x_2703 : f32 = u_xlat2.z;
        txVec40 = vec3<f32>(x_2701.x, x_2701.y, x_2703);
        let x_2710 : vec3<f32> = txVec40;
        let x_2712 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2710.xy, x_2710.z);
        u_xlat85 = x_2712;
        let x_2714 : f32 = u_xlat16.z;
        let x_2715 : f32 = u_xlat85;
        let x_2717 : f32 = u_xlat59;
        u_xlat59 = ((x_2714 * x_2715) + x_2717);
        let x_2720 : vec4<f32> = u_xlat10;
        let x_2721 : vec2<f32> = vec2<f32>(x_2720.x, x_2720.y);
        let x_2723 : f32 = u_xlat2.z;
        txVec41 = vec3<f32>(x_2721.x, x_2721.y, x_2723);
        let x_2730 : vec3<f32> = txVec41;
        let x_2732 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2730.xy, x_2730.z);
        u_xlat85 = x_2732;
        let x_2734 : f32 = u_xlat16.w;
        let x_2735 : f32 = u_xlat85;
        let x_2737 : f32 = u_xlat59;
        u_xlat59 = ((x_2734 * x_2735) + x_2737);
        let x_2740 : vec4<f32> = u_xlat10;
        let x_2741 : vec2<f32> = vec2<f32>(x_2740.z, x_2740.w);
        let x_2743 : f32 = u_xlat2.z;
        txVec42 = vec3<f32>(x_2741.x, x_2741.y, x_2743);
        let x_2750 : vec3<f32> = txVec42;
        let x_2752 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2750.xy, x_2750.z);
        u_xlat85 = x_2752;
        let x_2754 : f32 = u_xlat33.x;
        let x_2755 : f32 = u_xlat85;
        let x_2757 : f32 = u_xlat59;
        u_xlat0.x = ((x_2754 * x_2755) + x_2757);
      } else {
        let x_2761 : vec4<f32> = u_xlat2;
        let x_2764 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_2767 : vec2<f32> = ((vec2<f32>(x_2761.x, x_2761.y) * vec2<f32>(x_2764.z, x_2764.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2768 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_2767.x, x_2767.y, x_2768.z);
        let x_2770 : vec3<f32> = u_xlat33;
        let x_2772 : vec2<f32> = floor(vec2<f32>(x_2770.x, x_2770.y));
        let x_2773 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_2772.x, x_2772.y, x_2773.z);
        let x_2775 : vec4<f32> = u_xlat2;
        let x_2778 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_2781 : vec3<f32> = u_xlat33;
        let x_2784 : vec2<f32> = ((vec2<f32>(x_2775.x, x_2775.y) * vec2<f32>(x_2778.z, x_2778.w)) + -(vec2<f32>(x_2781.x, x_2781.y)));
        let x_2785 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2784.x, x_2784.y, x_2785.z, x_2785.w);
        let x_2787 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2787.x, x_2787.x, x_2787.y, x_2787.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2790 : vec4<f32> = u_xlat9;
        let x_2792 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_2790.x, x_2790.x, x_2790.z, x_2790.z) * vec4<f32>(x_2792.x, x_2792.x, x_2792.z, x_2792.z));
        let x_2795 : vec4<f32> = u_xlat10;
        let x_2797 : vec2<f32> = (vec2<f32>(x_2795.y, x_2795.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_2798 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2798.x, x_2797.x, x_2798.z, x_2797.y);
        let x_2800 : vec4<f32> = u_xlat10;
        let x_2803 : vec4<f32> = u_xlat8;
        u_xlat60 = ((vec2<f32>(x_2800.x, x_2800.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2803.x, x_2803.y)));
        let x_2807 : vec4<f32> = u_xlat8;
        let x_2810 : vec2<f32> = (-(vec2<f32>(x_2807.x, x_2807.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2811 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2810.x, x_2811.y, x_2810.y, x_2811.w);
        let x_2813 : vec4<f32> = u_xlat8;
        let x_2815 : vec2<f32> = min(vec2<f32>(x_2813.x, x_2813.y), vec2<f32>(0.0f, 0.0f));
        let x_2816 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2815.x, x_2815.y, x_2816.z, x_2816.w);
        let x_2818 : vec4<f32> = u_xlat10;
        let x_2821 : vec4<f32> = u_xlat10;
        let x_2824 : vec4<f32> = u_xlat9;
        let x_2826 : vec2<f32> = ((-(vec2<f32>(x_2818.x, x_2818.y)) * vec2<f32>(x_2821.x, x_2821.y)) + vec2<f32>(x_2824.x, x_2824.z));
        let x_2827 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2826.x, x_2827.y, x_2826.y, x_2827.w);
        let x_2829 : vec4<f32> = u_xlat8;
        let x_2831 : vec2<f32> = max(vec2<f32>(x_2829.x, x_2829.y), vec2<f32>(0.0f, 0.0f));
        let x_2832 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2831.x, x_2831.y, x_2832.z, x_2832.w);
        let x_2834 : vec4<f32> = u_xlat10;
        let x_2837 : vec4<f32> = u_xlat10;
        let x_2840 : vec4<f32> = u_xlat9;
        let x_2842 : vec2<f32> = ((-(vec2<f32>(x_2834.x, x_2834.y)) * vec2<f32>(x_2837.x, x_2837.y)) + vec2<f32>(x_2840.y, x_2840.w));
        let x_2843 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2843.x, x_2842.x, x_2843.z, x_2842.y);
        let x_2845 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_2845 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_2848 : f32 = u_xlat9.y;
        u_xlat10.z = (x_2848 * 0.08163200318813323975f);
        let x_2851 : vec2<f32> = u_xlat60;
        let x_2853 : vec2<f32> = (vec2<f32>(x_2851.y, x_2851.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2854 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2853.x, x_2853.y, x_2854.z, x_2854.w);
        let x_2856 : vec4<f32> = u_xlat9;
        u_xlat60 = (vec2<f32>(x_2856.x, x_2856.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2860 : f32 = u_xlat9.w;
        u_xlat12.z = (x_2860 * 0.08163200318813323975f);
        let x_2864 : f32 = u_xlat12.y;
        u_xlat10.x = x_2864;
        let x_2866 : vec4<f32> = u_xlat8;
        let x_2869 : vec2<f32> = ((vec2<f32>(x_2866.x, x_2866.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2870 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2870.x, x_2869.x, x_2870.z, x_2869.y);
        let x_2872 : vec4<f32> = u_xlat8;
        let x_2875 : vec2<f32> = ((vec2<f32>(x_2872.x, x_2872.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2876 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2875.x, x_2876.y, x_2875.y, x_2876.w);
        let x_2879 : f32 = u_xlat60.x;
        u_xlat9.y = x_2879;
        let x_2882 : f32 = u_xlat11.y;
        u_xlat9.w = x_2882;
        let x_2884 : vec4<f32> = u_xlat9;
        let x_2885 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_2884 + x_2885);
        let x_2887 : vec4<f32> = u_xlat8;
        let x_2890 : vec2<f32> = ((vec2<f32>(x_2887.y, x_2887.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2891 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2891.x, x_2890.x, x_2891.z, x_2890.y);
        let x_2893 : vec4<f32> = u_xlat8;
        let x_2896 : vec2<f32> = ((vec2<f32>(x_2893.y, x_2893.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2897 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2896.x, x_2897.y, x_2896.y, x_2897.w);
        let x_2900 : f32 = u_xlat60.y;
        u_xlat11.y = x_2900;
        let x_2902 : vec4<f32> = u_xlat11;
        let x_2903 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_2902 + x_2903);
        let x_2905 : vec4<f32> = u_xlat9;
        let x_2906 : vec4<f32> = u_xlat10;
        u_xlat9 = (x_2905 / x_2906);
        let x_2908 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_2908 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2910 : vec4<f32> = u_xlat11;
        let x_2911 : vec4<f32> = u_xlat8;
        u_xlat11 = (x_2910 / x_2911);
        let x_2913 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_2913 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2915 : vec4<f32> = u_xlat9;
        let x_2918 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_2915.w, x_2915.x, x_2915.y, x_2915.z) * vec4<f32>(x_2918.x, x_2918.x, x_2918.x, x_2918.x));
        let x_2921 : vec4<f32> = u_xlat11;
        let x_2924 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        u_xlat11 = (vec4<f32>(x_2921.x, x_2921.w, x_2921.y, x_2921.z) * vec4<f32>(x_2924.y, x_2924.y, x_2924.y, x_2924.y));
        let x_2927 : vec4<f32> = u_xlat9;
        let x_2928 : vec3<f32> = vec3<f32>(x_2927.y, x_2927.z, x_2927.w);
        let x_2929 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2928.x, x_2929.y, x_2928.y, x_2928.z);
        let x_2932 : f32 = u_xlat11.x;
        u_xlat12.y = x_2932;
        let x_2934 : vec3<f32> = u_xlat33;
        let x_2937 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_2940 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_2934.x, x_2934.y, x_2934.x, x_2934.y) * vec4<f32>(x_2937.x, x_2937.y, x_2937.x, x_2937.y)) + vec4<f32>(x_2940.x, x_2940.y, x_2940.z, x_2940.y));
        let x_2943 : vec3<f32> = u_xlat33;
        let x_2946 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_2949 : vec4<f32> = u_xlat12;
        let x_2951 : vec2<f32> = ((vec2<f32>(x_2943.x, x_2943.y) * vec2<f32>(x_2946.x, x_2946.y)) + vec2<f32>(x_2949.w, x_2949.y));
        let x_2952 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_2951.x, x_2951.y, x_2952.z, x_2952.w);
        let x_2955 : f32 = u_xlat12.y;
        u_xlat9.y = x_2955;
        let x_2958 : f32 = u_xlat11.z;
        u_xlat12.y = x_2958;
        let x_2960 : vec3<f32> = u_xlat33;
        let x_2963 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_2966 : vec4<f32> = u_xlat12;
        u_xlat15 = ((vec4<f32>(x_2960.x, x_2960.y, x_2960.x, x_2960.y) * vec4<f32>(x_2963.x, x_2963.y, x_2963.x, x_2963.y)) + vec4<f32>(x_2966.x, x_2966.y, x_2966.z, x_2966.y));
        let x_2970 : vec3<f32> = u_xlat33;
        let x_2973 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_2976 : vec4<f32> = u_xlat12;
        u_xlat66 = ((vec2<f32>(x_2970.x, x_2970.y) * vec2<f32>(x_2973.x, x_2973.y)) + vec2<f32>(x_2976.w, x_2976.y));
        let x_2980 : f32 = u_xlat12.y;
        u_xlat9.z = x_2980;
        let x_2982 : vec3<f32> = u_xlat33;
        let x_2985 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_2988 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_2982.x, x_2982.y, x_2982.x, x_2982.y) * vec4<f32>(x_2985.x, x_2985.y, x_2985.x, x_2985.y)) + vec4<f32>(x_2988.x, x_2988.y, x_2988.x, x_2988.z));
        let x_2992 : f32 = u_xlat11.w;
        u_xlat12.y = x_2992;
        let x_2994 : vec3<f32> = u_xlat33;
        let x_2997 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_3000 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_2994.x, x_2994.y, x_2994.x, x_2994.y) * vec4<f32>(x_2997.x, x_2997.y, x_2997.x, x_2997.y)) + vec4<f32>(x_3000.x, x_3000.y, x_3000.z, x_3000.y));
        let x_3003 : vec3<f32> = u_xlat33;
        let x_3006 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_3009 : vec4<f32> = u_xlat12;
        let x_3011 : vec2<f32> = ((vec2<f32>(x_3003.x, x_3003.y) * vec2<f32>(x_3006.x, x_3006.y)) + vec2<f32>(x_3009.w, x_3009.y));
        let x_3012 : vec3<f32> = u_xlat35;
        u_xlat35 = vec3<f32>(x_3011.x, x_3011.y, x_3012.z);
        let x_3015 : f32 = u_xlat12.y;
        u_xlat9.w = x_3015;
        let x_3017 : vec3<f32> = u_xlat33;
        let x_3020 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_3023 : vec4<f32> = u_xlat9;
        let x_3025 : vec2<f32> = ((vec2<f32>(x_3017.x, x_3017.y) * vec2<f32>(x_3020.x, x_3020.y)) + vec2<f32>(x_3023.x, x_3023.w));
        let x_3026 : vec4<f32> = u_xlat18;
        u_xlat18 = vec4<f32>(x_3025.x, x_3025.y, x_3026.z, x_3026.w);
        let x_3028 : vec4<f32> = u_xlat12;
        let x_3029 : vec3<f32> = vec3<f32>(x_3028.x, x_3028.z, x_3028.w);
        let x_3030 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3029.x, x_3030.y, x_3029.y, x_3029.z);
        let x_3032 : vec3<f32> = u_xlat33;
        let x_3035 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_3038 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_3032.x, x_3032.y, x_3032.x, x_3032.y) * vec4<f32>(x_3035.x, x_3035.y, x_3035.x, x_3035.y)) + vec4<f32>(x_3038.x, x_3038.y, x_3038.z, x_3038.y));
        let x_3041 : vec3<f32> = u_xlat33;
        let x_3044 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_3047 : vec4<f32> = u_xlat11;
        u_xlat63 = ((vec2<f32>(x_3041.x, x_3041.y) * vec2<f32>(x_3044.x, x_3044.y)) + vec2<f32>(x_3047.w, x_3047.y));
        let x_3051 : f32 = u_xlat9.x;
        u_xlat11.x = x_3051;
        let x_3053 : vec3<f32> = u_xlat33;
        let x_3056 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_3059 : vec4<f32> = u_xlat11;
        let x_3061 : vec2<f32> = ((vec2<f32>(x_3053.x, x_3053.y) * vec2<f32>(x_3056.x, x_3056.y)) + vec2<f32>(x_3059.x, x_3059.y));
        let x_3062 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_3061.x, x_3061.y, x_3062.z);
        let x_3064 : vec4<f32> = u_xlat8;
        let x_3066 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_3064.x, x_3064.x, x_3064.x, x_3064.x) * x_3066);
        let x_3068 : vec4<f32> = u_xlat8;
        let x_3070 : vec4<f32> = u_xlat10;
        u_xlat20 = (vec4<f32>(x_3068.y, x_3068.y, x_3068.y, x_3068.y) * x_3070);
        let x_3072 : vec4<f32> = u_xlat8;
        let x_3074 : vec4<f32> = u_xlat10;
        u_xlat21 = (vec4<f32>(x_3072.z, x_3072.z, x_3072.z, x_3072.z) * x_3074);
        let x_3076 : vec4<f32> = u_xlat8;
        let x_3078 : vec4<f32> = u_xlat10;
        u_xlat8 = (vec4<f32>(x_3076.w, x_3076.w, x_3076.w, x_3076.w) * x_3078);
        let x_3081 : vec4<f32> = u_xlat13;
        let x_3082 : vec2<f32> = vec2<f32>(x_3081.x, x_3081.y);
        let x_3084 : f32 = u_xlat2.z;
        txVec43 = vec3<f32>(x_3082.x, x_3082.y, x_3084);
        let x_3091 : vec3<f32> = txVec43;
        let x_3093 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3091.xy, x_3091.z);
        u_xlat85 = x_3093;
        let x_3095 : vec4<f32> = u_xlat13;
        let x_3096 : vec2<f32> = vec2<f32>(x_3095.z, x_3095.w);
        let x_3098 : f32 = u_xlat2.z;
        txVec44 = vec3<f32>(x_3096.x, x_3096.y, x_3098);
        let x_3105 : vec3<f32> = txVec44;
        let x_3107 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3105.xy, x_3105.z);
        u_xlat9.x = x_3107;
        let x_3110 : f32 = u_xlat9.x;
        let x_3112 : f32 = u_xlat19.y;
        u_xlat9.x = (x_3110 * x_3112);
        let x_3116 : f32 = u_xlat19.x;
        let x_3117 : f32 = u_xlat85;
        let x_3120 : f32 = u_xlat9.x;
        u_xlat85 = ((x_3116 * x_3117) + x_3120);
        let x_3123 : vec4<f32> = u_xlat14;
        let x_3124 : vec2<f32> = vec2<f32>(x_3123.x, x_3123.y);
        let x_3126 : f32 = u_xlat2.z;
        txVec45 = vec3<f32>(x_3124.x, x_3124.y, x_3126);
        let x_3133 : vec3<f32> = txVec45;
        let x_3135 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3133.xy, x_3133.z);
        u_xlat9.x = x_3135;
        let x_3138 : f32 = u_xlat19.z;
        let x_3140 : f32 = u_xlat9.x;
        let x_3142 : f32 = u_xlat85;
        u_xlat85 = ((x_3138 * x_3140) + x_3142);
        let x_3145 : vec4<f32> = u_xlat16;
        let x_3146 : vec2<f32> = vec2<f32>(x_3145.x, x_3145.y);
        let x_3148 : f32 = u_xlat2.z;
        txVec46 = vec3<f32>(x_3146.x, x_3146.y, x_3148);
        let x_3155 : vec3<f32> = txVec46;
        let x_3157 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3155.xy, x_3155.z);
        u_xlat9.x = x_3157;
        let x_3160 : f32 = u_xlat19.w;
        let x_3162 : f32 = u_xlat9.x;
        let x_3164 : f32 = u_xlat85;
        u_xlat85 = ((x_3160 * x_3162) + x_3164);
        let x_3167 : vec4<f32> = u_xlat15;
        let x_3168 : vec2<f32> = vec2<f32>(x_3167.x, x_3167.y);
        let x_3170 : f32 = u_xlat2.z;
        txVec47 = vec3<f32>(x_3168.x, x_3168.y, x_3170);
        let x_3177 : vec3<f32> = txVec47;
        let x_3179 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3177.xy, x_3177.z);
        u_xlat9.x = x_3179;
        let x_3182 : f32 = u_xlat20.x;
        let x_3184 : f32 = u_xlat9.x;
        let x_3186 : f32 = u_xlat85;
        u_xlat85 = ((x_3182 * x_3184) + x_3186);
        let x_3189 : vec4<f32> = u_xlat15;
        let x_3190 : vec2<f32> = vec2<f32>(x_3189.z, x_3189.w);
        let x_3192 : f32 = u_xlat2.z;
        txVec48 = vec3<f32>(x_3190.x, x_3190.y, x_3192);
        let x_3199 : vec3<f32> = txVec48;
        let x_3201 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3199.xy, x_3199.z);
        u_xlat9.x = x_3201;
        let x_3204 : f32 = u_xlat20.y;
        let x_3206 : f32 = u_xlat9.x;
        let x_3208 : f32 = u_xlat85;
        u_xlat85 = ((x_3204 * x_3206) + x_3208);
        let x_3211 : vec2<f32> = u_xlat66;
        let x_3213 : f32 = u_xlat2.z;
        txVec49 = vec3<f32>(x_3211.x, x_3211.y, x_3213);
        let x_3220 : vec3<f32> = txVec49;
        let x_3222 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3220.xy, x_3220.z);
        u_xlat9.x = x_3222;
        let x_3225 : f32 = u_xlat20.z;
        let x_3227 : f32 = u_xlat9.x;
        let x_3229 : f32 = u_xlat85;
        u_xlat85 = ((x_3225 * x_3227) + x_3229);
        let x_3232 : vec4<f32> = u_xlat16;
        let x_3233 : vec2<f32> = vec2<f32>(x_3232.z, x_3232.w);
        let x_3235 : f32 = u_xlat2.z;
        txVec50 = vec3<f32>(x_3233.x, x_3233.y, x_3235);
        let x_3242 : vec3<f32> = txVec50;
        let x_3244 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3242.xy, x_3242.z);
        u_xlat9.x = x_3244;
        let x_3247 : f32 = u_xlat20.w;
        let x_3249 : f32 = u_xlat9.x;
        let x_3251 : f32 = u_xlat85;
        u_xlat85 = ((x_3247 * x_3249) + x_3251);
        let x_3254 : vec4<f32> = u_xlat17;
        let x_3255 : vec2<f32> = vec2<f32>(x_3254.x, x_3254.y);
        let x_3257 : f32 = u_xlat2.z;
        txVec51 = vec3<f32>(x_3255.x, x_3255.y, x_3257);
        let x_3264 : vec3<f32> = txVec51;
        let x_3266 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3264.xy, x_3264.z);
        u_xlat9.x = x_3266;
        let x_3269 : f32 = u_xlat21.x;
        let x_3271 : f32 = u_xlat9.x;
        let x_3273 : f32 = u_xlat85;
        u_xlat85 = ((x_3269 * x_3271) + x_3273);
        let x_3276 : vec4<f32> = u_xlat17;
        let x_3277 : vec2<f32> = vec2<f32>(x_3276.z, x_3276.w);
        let x_3279 : f32 = u_xlat2.z;
        txVec52 = vec3<f32>(x_3277.x, x_3277.y, x_3279);
        let x_3286 : vec3<f32> = txVec52;
        let x_3288 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3286.xy, x_3286.z);
        u_xlat9.x = x_3288;
        let x_3291 : f32 = u_xlat21.y;
        let x_3293 : f32 = u_xlat9.x;
        let x_3295 : f32 = u_xlat85;
        u_xlat85 = ((x_3291 * x_3293) + x_3295);
        let x_3298 : vec3<f32> = u_xlat35;
        let x_3299 : vec2<f32> = vec2<f32>(x_3298.x, x_3298.y);
        let x_3301 : f32 = u_xlat2.z;
        txVec53 = vec3<f32>(x_3299.x, x_3299.y, x_3301);
        let x_3308 : vec3<f32> = txVec53;
        let x_3310 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3308.xy, x_3308.z);
        u_xlat9.x = x_3310;
        let x_3313 : f32 = u_xlat21.z;
        let x_3315 : f32 = u_xlat9.x;
        let x_3317 : f32 = u_xlat85;
        u_xlat85 = ((x_3313 * x_3315) + x_3317);
        let x_3320 : vec4<f32> = u_xlat18;
        let x_3321 : vec2<f32> = vec2<f32>(x_3320.x, x_3320.y);
        let x_3323 : f32 = u_xlat2.z;
        txVec54 = vec3<f32>(x_3321.x, x_3321.y, x_3323);
        let x_3330 : vec3<f32> = txVec54;
        let x_3332 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3330.xy, x_3330.z);
        u_xlat9.x = x_3332;
        let x_3335 : f32 = u_xlat21.w;
        let x_3337 : f32 = u_xlat9.x;
        let x_3339 : f32 = u_xlat85;
        u_xlat85 = ((x_3335 * x_3337) + x_3339);
        let x_3342 : vec4<f32> = u_xlat12;
        let x_3343 : vec2<f32> = vec2<f32>(x_3342.x, x_3342.y);
        let x_3345 : f32 = u_xlat2.z;
        txVec55 = vec3<f32>(x_3343.x, x_3343.y, x_3345);
        let x_3352 : vec3<f32> = txVec55;
        let x_3354 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3352.xy, x_3352.z);
        u_xlat9.x = x_3354;
        let x_3357 : f32 = u_xlat8.x;
        let x_3359 : f32 = u_xlat9.x;
        let x_3361 : f32 = u_xlat85;
        u_xlat85 = ((x_3357 * x_3359) + x_3361);
        let x_3364 : vec4<f32> = u_xlat12;
        let x_3365 : vec2<f32> = vec2<f32>(x_3364.z, x_3364.w);
        let x_3367 : f32 = u_xlat2.z;
        txVec56 = vec3<f32>(x_3365.x, x_3365.y, x_3367);
        let x_3374 : vec3<f32> = txVec56;
        let x_3376 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3374.xy, x_3374.z);
        u_xlat8.x = x_3376;
        let x_3379 : f32 = u_xlat8.y;
        let x_3381 : f32 = u_xlat8.x;
        let x_3383 : f32 = u_xlat85;
        u_xlat85 = ((x_3379 * x_3381) + x_3383);
        let x_3386 : vec2<f32> = u_xlat63;
        let x_3388 : f32 = u_xlat2.z;
        txVec57 = vec3<f32>(x_3386.x, x_3386.y, x_3388);
        let x_3395 : vec3<f32> = txVec57;
        let x_3397 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3395.xy, x_3395.z);
        u_xlat8.x = x_3397;
        let x_3400 : f32 = u_xlat8.z;
        let x_3402 : f32 = u_xlat8.x;
        let x_3404 : f32 = u_xlat85;
        u_xlat85 = ((x_3400 * x_3402) + x_3404);
        let x_3407 : vec3<f32> = u_xlat33;
        let x_3408 : vec2<f32> = vec2<f32>(x_3407.x, x_3407.y);
        let x_3410 : f32 = u_xlat2.z;
        txVec58 = vec3<f32>(x_3408.x, x_3408.y, x_3410);
        let x_3417 : vec3<f32> = txVec58;
        let x_3419 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3417.xy, x_3417.z);
        u_xlat33.x = x_3419;
        let x_3422 : f32 = u_xlat8.w;
        let x_3424 : f32 = u_xlat33.x;
        let x_3426 : f32 = u_xlat85;
        u_xlat0.x = ((x_3422 * x_3424) + x_3426);
      }
    }
  } else {
    let x_3431 : vec4<f32> = u_xlat2;
    let x_3432 : vec2<f32> = vec2<f32>(x_3431.x, x_3431.y);
    let x_3434 : f32 = u_xlat2.z;
    txVec59 = vec3<f32>(x_3432.x, x_3432.y, x_3434);
    let x_3441 : vec3<f32> = txVec59;
    let x_3443 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3441.xy, x_3441.z);
    u_xlat0.x = x_3443;
  }
  let x_3446 : f32 = u_xlat0.x;
  let x_3448 : f32 = x_394.x_MainLightShadowParams.x;
  let x_3450 : f32 = u_xlat80;
  u_xlat0.x = ((x_3446 * x_3448) + x_3450);
  let x_3454 : bool = u_xlatb3.x;
  if (x_3454) {
    x_3455 = 1.0f;
  } else {
    let x_3460 : f32 = u_xlat0.x;
    x_3455 = x_3460;
  }
  let x_3461 : f32 = x_3455;
  u_xlat0.x = x_3461;
  let x_3463 : vec3<f32> = vs_INTERP8;
  let x_3465 : vec3<f32> = x_149.x_WorldSpaceCameraPos;
  let x_3467 : vec3<f32> = (x_3463 + -(x_3465));
  let x_3468 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_3467.x, x_3467.y, x_3467.z, x_3468.w);
  let x_3470 : vec4<f32> = u_xlat2;
  let x_3472 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_3470.x, x_3470.y, x_3470.z), vec3<f32>(x_3472.x, x_3472.y, x_3472.z));
  let x_3478 : f32 = u_xlat2.x;
  let x_3480 : f32 = x_394.x_MainLightShadowParams.z;
  let x_3483 : f32 = x_394.x_MainLightShadowParams.w;
  u_xlat28.x = ((x_3478 * x_3480) + x_3483);
  let x_3487 : f32 = u_xlat28.x;
  u_xlat28.x = clamp(x_3487, 0.0f, 1.0f);
  let x_3492 : f32 = u_xlat0.x;
  u_xlat54 = (-(x_3492) + 1.0f);
  let x_3496 : f32 = u_xlat28.x;
  let x_3497 : f32 = u_xlat54;
  let x_3500 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_3496 * x_3497) + x_3500);
  let x_3511 : f32 = x_3509.x_MainLightCookieTextureFormat;
  u_xlatb28.x = !((x_3511 == -1.0f));
  let x_3515 : bool = u_xlatb28.x;
  if (x_3515) {
    let x_3518 : vec3<f32> = vs_INTERP8;
    let x_3521 : vec4<f32> = x_3509.x_MainLightWorldToLight[1i];
    let x_3523 : vec2<f32> = (vec2<f32>(x_3518.y, x_3518.y) * vec2<f32>(x_3521.x, x_3521.y));
    let x_3524 : vec3<f32> = u_xlat28;
    u_xlat28 = vec3<f32>(x_3523.x, x_3523.y, x_3524.z);
    let x_3527 : vec4<f32> = x_3509.x_MainLightWorldToLight[0i];
    let x_3529 : vec3<f32> = vs_INTERP8;
    let x_3532 : vec3<f32> = u_xlat28;
    let x_3534 : vec2<f32> = ((vec2<f32>(x_3527.x, x_3527.y) * vec2<f32>(x_3529.x, x_3529.x)) + vec2<f32>(x_3532.x, x_3532.y));
    let x_3535 : vec3<f32> = u_xlat28;
    u_xlat28 = vec3<f32>(x_3534.x, x_3534.y, x_3535.z);
    let x_3538 : vec4<f32> = x_3509.x_MainLightWorldToLight[2i];
    let x_3540 : vec3<f32> = vs_INTERP8;
    let x_3543 : vec3<f32> = u_xlat28;
    let x_3545 : vec2<f32> = ((vec2<f32>(x_3538.x, x_3538.y) * vec2<f32>(x_3540.z, x_3540.z)) + vec2<f32>(x_3543.x, x_3543.y));
    let x_3546 : vec3<f32> = u_xlat28;
    u_xlat28 = vec3<f32>(x_3545.x, x_3545.y, x_3546.z);
    let x_3548 : vec3<f32> = u_xlat28;
    let x_3551 : vec4<f32> = x_3509.x_MainLightWorldToLight[3i];
    let x_3553 : vec2<f32> = (vec2<f32>(x_3548.x, x_3548.y) + vec2<f32>(x_3551.x, x_3551.y));
    let x_3554 : vec3<f32> = u_xlat28;
    u_xlat28 = vec3<f32>(x_3553.x, x_3553.y, x_3554.z);
    let x_3556 : vec3<f32> = u_xlat28;
    let x_3559 : vec2<f32> = ((vec2<f32>(x_3556.x, x_3556.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_3560 : vec3<f32> = u_xlat28;
    u_xlat28 = vec3<f32>(x_3559.x, x_3559.y, x_3560.z);
    let x_3567 : vec3<f32> = u_xlat28;
    let x_3570 : f32 = x_149.x_GlobalMipBias.x;
    let x_3571 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_3567.x, x_3567.y), x_3570);
    u_xlat8 = x_3571;
    let x_3573 : f32 = x_3509.x_MainLightCookieTextureFormat;
    let x_3575 : f32 = x_3509.x_MainLightCookieTextureFormat;
    let x_3577 : f32 = x_3509.x_MainLightCookieTextureFormat;
    let x_3579 : f32 = x_3509.x_MainLightCookieTextureFormat;
    let x_3580 : vec4<f32> = vec4<f32>(x_3573, x_3575, x_3577, x_3579);
    let x_3587 : vec4<bool> = (vec4<f32>(x_3580.x, x_3580.y, x_3580.z, x_3580.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb28 = vec2<bool>(x_3587.x, x_3587.y);
    let x_3590 : bool = u_xlatb28.y;
    if (x_3590) {
      let x_3595 : f32 = u_xlat8.w;
      x_3591 = x_3595;
    } else {
      let x_3598 : f32 = u_xlat8.x;
      x_3591 = x_3598;
    }
    let x_3599 : f32 = x_3591;
    u_xlat54 = x_3599;
    let x_3601 : bool = u_xlatb28.x;
    if (x_3601) {
      let x_3605 : vec4<f32> = u_xlat8;
      x_3602 = vec3<f32>(x_3605.x, x_3605.y, x_3605.z);
    } else {
      let x_3608 : f32 = u_xlat54;
      x_3602 = vec3<f32>(x_3608, x_3608, x_3608);
    }
    let x_3610 : vec3<f32> = x_3602;
    u_xlat28 = x_3610;
  } else {
    u_xlat28.x = 1.0f;
    u_xlat28.y = 1.0f;
    u_xlat28.z = 1.0f;
  }
  let x_3615 : vec3<f32> = u_xlat28;
  let x_3617 : vec4<f32> = x_149.x_MainLightColor;
  u_xlat28 = (x_3615 * vec3<f32>(x_3617.x, x_3617.y, x_3617.z));
  let x_3620 : vec3<f32> = u_xlat5;
  let x_3622 : vec3<f32> = u_xlat26;
  u_xlat3.x = dot(-(x_3620), x_3622);
  let x_3626 : f32 = u_xlat3.x;
  let x_3628 : f32 = u_xlat3.x;
  u_xlat3.x = (x_3626 + x_3628);
  let x_3631 : vec3<f32> = u_xlat26;
  let x_3632 : vec4<f32> = u_xlat3;
  let x_3636 : vec3<f32> = u_xlat5;
  u_xlat33 = ((x_3631 * -(vec3<f32>(x_3632.x, x_3632.x, x_3632.x))) + -(x_3636));
  let x_3639 : vec3<f32> = u_xlat26;
  let x_3640 : vec3<f32> = u_xlat5;
  u_xlat3.x = dot(x_3639, x_3640);
  let x_3644 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_3644, 0.0f, 1.0f);
  let x_3648 : f32 = u_xlat3.x;
  u_xlat3.x = (-(x_3648) + 1.0f);
  let x_3653 : f32 = u_xlat3.x;
  let x_3655 : f32 = u_xlat3.x;
  u_xlat3.x = (x_3653 * x_3655);
  let x_3659 : f32 = u_xlat3.x;
  let x_3661 : f32 = u_xlat3.x;
  u_xlat3.x = (x_3659 * x_3661);
  let x_3665 : f32 = u_xlat55.x;
  u_xlat8.x = ((-(x_3665) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_3673 : f32 = u_xlat55.x;
  let x_3675 : f32 = u_xlat8.x;
  u_xlat55.x = (x_3673 * x_3675);
  let x_3679 : f32 = u_xlat55.x;
  u_xlat55.x = (x_3679 * 6.0f);
  let x_3691 : vec3<f32> = u_xlat33;
  let x_3693 : f32 = u_xlat55.x;
  let x_3694 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_3691, x_3693);
  u_xlat8 = x_3694;
  let x_3696 : f32 = u_xlat8.w;
  u_xlat55.x = (x_3696 + -1.0f);
  let x_3700 : f32 = x_83.unity_SpecCube0_HDR.w;
  let x_3702 : f32 = u_xlat55.x;
  u_xlat55.x = ((x_3700 * x_3702) + 1.0f);
  let x_3707 : f32 = u_xlat55.x;
  u_xlat55.x = max(x_3707, 0.0f);
  let x_3711 : f32 = u_xlat55.x;
  u_xlat55.x = log2(x_3711);
  let x_3715 : f32 = u_xlat55.x;
  let x_3717 : f32 = x_83.unity_SpecCube0_HDR.y;
  u_xlat55.x = (x_3715 * x_3717);
  let x_3721 : f32 = u_xlat55.x;
  u_xlat55.x = exp2(x_3721);
  let x_3725 : f32 = u_xlat55.x;
  let x_3727 : f32 = x_83.unity_SpecCube0_HDR.x;
  u_xlat55.x = (x_3725 * x_3727);
  let x_3730 : vec4<f32> = u_xlat8;
  let x_3732 : vec2<f32> = u_xlat55;
  u_xlat33 = (vec3<f32>(x_3730.x, x_3730.y, x_3730.z) * vec3<f32>(x_3732.x, x_3732.x, x_3732.x));
  let x_3735 : f32 = u_xlat81;
  let x_3737 : f32 = u_xlat81;
  u_xlat55 = ((vec2<f32>(x_3735, x_3735) * vec2<f32>(x_3737, x_3737)) + vec2<f32>(-1.0f, 1.0f));
  let x_3743 : f32 = u_xlat55.y;
  u_xlat81 = (1.0f / x_3743);
  let x_3745 : f32 = u_xlat83;
  u_xlat83 = (x_3745 + -0.03999999910593032837f);
  let x_3749 : f32 = u_xlat3.x;
  let x_3750 : f32 = u_xlat83;
  u_xlat3.x = ((x_3749 * x_3750) + 0.03999999910593032837f);
  let x_3756 : f32 = u_xlat3.x;
  let x_3757 : f32 = u_xlat81;
  u_xlat3.x = (x_3756 * x_3757);
  let x_3760 : vec4<f32> = u_xlat3;
  let x_3762 : vec3<f32> = u_xlat33;
  u_xlat33 = (vec3<f32>(x_3760.x, x_3760.x, x_3760.x) * x_3762);
  let x_3764 : vec4<f32> = u_xlat4;
  let x_3766 : vec4<f32> = u_xlat6;
  let x_3769 : vec3<f32> = u_xlat33;
  let x_3770 : vec3<f32> = ((vec3<f32>(x_3764.x, x_3764.y, x_3764.z) * vec3<f32>(x_3766.x, x_3766.y, x_3766.z)) + x_3769);
  let x_3771 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_3770.x, x_3770.y, x_3770.z, x_3771.w);
  let x_3774 : f32 = u_xlat0.x;
  let x_3776 : f32 = x_83.unity_LightData.z;
  u_xlat0.x = (x_3774 * x_3776);
  let x_3779 : vec3<f32> = u_xlat26;
  let x_3781 : vec4<f32> = x_149.x_MainLightPosition;
  u_xlat3.x = dot(x_3779, vec3<f32>(x_3781.x, x_3781.y, x_3781.z));
  let x_3786 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_3786, 0.0f, 1.0f);
  let x_3790 : f32 = u_xlat0.x;
  let x_3792 : f32 = u_xlat3.x;
  u_xlat0.x = (x_3790 * x_3792);
  let x_3795 : vec3<f32> = u_xlat0;
  let x_3797 : vec3<f32> = u_xlat28;
  u_xlat28 = (vec3<f32>(x_3795.x, x_3795.x, x_3795.x) * x_3797);
  let x_3799 : vec3<f32> = u_xlat5;
  let x_3801 : vec4<f32> = x_149.x_MainLightPosition;
  u_xlat33 = (x_3799 + vec3<f32>(x_3801.x, x_3801.y, x_3801.z));
  let x_3804 : vec3<f32> = u_xlat33;
  let x_3805 : vec3<f32> = u_xlat33;
  u_xlat0.x = dot(x_3804, x_3805);
  let x_3809 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_3809, 1.17549435e-38f);
  let x_3813 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_3813);
  let x_3816 : vec3<f32> = u_xlat0;
  let x_3818 : vec3<f32> = u_xlat33;
  u_xlat33 = (vec3<f32>(x_3816.x, x_3816.x, x_3816.x) * x_3818);
  let x_3820 : vec3<f32> = u_xlat26;
  let x_3821 : vec3<f32> = u_xlat33;
  u_xlat0.x = dot(x_3820, x_3821);
  let x_3825 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_3825, 0.0f, 1.0f);
  let x_3829 : vec4<f32> = x_149.x_MainLightPosition;
  let x_3831 : vec3<f32> = u_xlat33;
  u_xlat3.x = dot(vec3<f32>(x_3829.x, x_3829.y, x_3829.z), x_3831);
  let x_3835 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_3835, 0.0f, 1.0f);
  let x_3839 : f32 = u_xlat0.x;
  let x_3841 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3839 * x_3841);
  let x_3845 : f32 = u_xlat0.x;
  let x_3847 : f32 = u_xlat55.x;
  u_xlat0.x = ((x_3845 * x_3847) + 1.00001001358032226562f);
  let x_3853 : f32 = u_xlat3.x;
  let x_3855 : f32 = u_xlat3.x;
  u_xlat3.x = (x_3853 * x_3855);
  let x_3859 : f32 = u_xlat0.x;
  let x_3861 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3859 * x_3861);
  let x_3865 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_3865, 0.10000000149011611938f);
  let x_3870 : f32 = u_xlat0.x;
  let x_3872 : f32 = u_xlat3.x;
  u_xlat0.x = (x_3870 * x_3872);
  let x_3875 : f32 = u_xlat84;
  let x_3877 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3875 * x_3877);
  let x_3880 : f32 = u_xlat82;
  let x_3882 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3880 / x_3882);
  let x_3885 : vec3<f32> = u_xlat0;
  let x_3889 : vec4<f32> = u_xlat6;
  u_xlat33 = ((vec3<f32>(x_3885.x, x_3885.x, x_3885.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + vec3<f32>(x_3889.x, x_3889.y, x_3889.z));
  let x_3892 : vec3<f32> = u_xlat28;
  let x_3893 : vec3<f32> = u_xlat33;
  u_xlat28 = (x_3892 * x_3893);
  let x_3896 : f32 = x_149.x_AdditionalLightsCount.x;
  let x_3898 : f32 = x_83.unity_LightData.y;
  u_xlat0.x = min(x_3896, x_3898);
  let x_3902 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_3902));
  let x_3906 : f32 = u_xlat2.x;
  let x_3909 : f32 = x_394.x_AdditionalShadowFadeParams.x;
  let x_3912 : f32 = x_394.x_AdditionalShadowFadeParams.y;
  u_xlat2.x = ((x_3906 * x_3909) + x_3912);
  let x_3916 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_3916, 0.0f, 1.0f);
  let x_3920 : f32 = x_3509.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3922 : f32 = x_3509.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3924 : f32 = x_3509.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3926 : f32 = x_3509.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3927 : vec4<f32> = vec4<f32>(x_3920, x_3922, x_3924, x_3926);
  let x_3934 : vec4<bool> = (vec4<f32>(x_3927.x, x_3927.y, x_3927.z, x_3927.w) == vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));
  let x_3935 : vec2<bool> = vec2<bool>(x_3934.x, x_3934.w);
  let x_3936 : vec4<bool> = u_xlatb3;
  u_xlatb3 = vec4<bool>(x_3935.x, x_3936.y, x_3936.z, x_3935.y);
  u_xlat33.x = 0.0f;
  u_xlat33.y = 0.0f;
  u_xlat33.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_3947 : u32 = u_xlatu_loop_1;
    let x_3948 : u32 = u_xlatu0;
    if ((x_3947 < x_3948)) {
    } else {
      break;
    }
    let x_3951 : u32 = u_xlatu_loop_1;
    u_xlatu8 = (x_3951 >> 2u);
    let x_3954 : u32 = u_xlatu_loop_1;
    u_xlati34 = bitcast<i32>((x_3954 & 3u));
    let x_3957 : u32 = u_xlatu8;
    let x_3960 : vec4<f32> = x_83.unity_LightIndices[bitcast<i32>(x_3957)];
    let x_3970 : i32 = u_xlati34;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_3975 : vec4<u32> = indexable[x_3970];
    u_xlat8.x = dot(x_3960, bitcast<vec4<f32>>(x_3975));
    let x_3981 : f32 = u_xlat8.x;
    u_xlati8 = i32(x_3981);
    let x_3983 : vec3<f32> = vs_INTERP8;
    let x_3994 : i32 = u_xlati8;
    let x_3996 : vec4<f32> = x_3993.x_AdditionalLightsPosition[x_3994];
    let x_3999 : i32 = u_xlati8;
    let x_4001 : vec4<f32> = x_3993.x_AdditionalLightsPosition[x_3999];
    u_xlat34 = ((-(x_3983) * vec3<f32>(x_3996.w, x_3996.w, x_3996.w)) + vec3<f32>(x_4001.x, x_4001.y, x_4001.z));
    let x_4004 : vec3<f32> = u_xlat34;
    let x_4005 : vec3<f32> = u_xlat34;
    u_xlat9.x = dot(x_4004, x_4005);
    let x_4009 : f32 = u_xlat9.x;
    u_xlat9.x = max(x_4009, 0.00006103515625f);
    let x_4014 : f32 = u_xlat9.x;
    u_xlat35.x = inverseSqrt(x_4014);
    let x_4017 : vec3<f32> = u_xlat34;
    let x_4018 : vec3<f32> = u_xlat35;
    let x_4020 : vec3<f32> = (x_4017 * vec3<f32>(x_4018.x, x_4018.x, x_4018.x));
    let x_4021 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_4020.x, x_4020.y, x_4020.z, x_4021.w);
    let x_4025 : f32 = u_xlat9.x;
    u_xlat61 = (1.0f / x_4025);
    let x_4028 : f32 = u_xlat9.x;
    let x_4029 : i32 = u_xlati8;
    let x_4031 : f32 = x_3993.x_AdditionalLightsAttenuation[x_4029].x;
    u_xlat9.x = (x_4028 * x_4031);
    let x_4035 : f32 = u_xlat9.x;
    let x_4038 : f32 = u_xlat9.x;
    u_xlat9.x = ((-(x_4035) * x_4038) + 1.0f);
    let x_4043 : f32 = u_xlat9.x;
    u_xlat9.x = max(x_4043, 0.0f);
    let x_4047 : f32 = u_xlat9.x;
    let x_4049 : f32 = u_xlat9.x;
    u_xlat9.x = (x_4047 * x_4049);
    let x_4053 : f32 = u_xlat9.x;
    let x_4054 : f32 = u_xlat61;
    u_xlat9.x = (x_4053 * x_4054);
    let x_4057 : i32 = u_xlati8;
    let x_4059 : vec4<f32> = x_3993.x_AdditionalLightsSpotDir[x_4057];
    let x_4061 : vec4<f32> = u_xlat10;
    u_xlat61 = dot(vec3<f32>(x_4059.x, x_4059.y, x_4059.z), vec3<f32>(x_4061.x, x_4061.y, x_4061.z));
    let x_4064 : f32 = u_xlat61;
    let x_4065 : i32 = u_xlati8;
    let x_4067 : f32 = x_3993.x_AdditionalLightsAttenuation[x_4065].z;
    let x_4069 : i32 = u_xlati8;
    let x_4071 : f32 = x_3993.x_AdditionalLightsAttenuation[x_4069].w;
    u_xlat61 = ((x_4064 * x_4067) + x_4071);
    let x_4073 : f32 = u_xlat61;
    u_xlat61 = clamp(x_4073, 0.0f, 1.0f);
    let x_4075 : f32 = u_xlat61;
    let x_4076 : f32 = u_xlat61;
    u_xlat61 = (x_4075 * x_4076);
    let x_4078 : f32 = u_xlat61;
    let x_4080 : f32 = u_xlat9.x;
    u_xlat9.x = (x_4078 * x_4080);
    let x_4085 : i32 = u_xlati8;
    let x_4087 : f32 = x_394.x_AdditionalShadowParams[x_4085].w;
    u_xlati61 = i32(x_4087);
    let x_4090 : i32 = u_xlati61;
    u_xlatb87 = (x_4090 >= 0i);
    let x_4092 : bool = u_xlatb87;
    if (x_4092) {
      let x_4096 : i32 = u_xlati8;
      let x_4098 : f32 = x_394.x_AdditionalShadowParams[x_4096].z;
      u_xlatb87 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_4098, x_4098, x_4098, x_4098))));
      let x_4102 : bool = u_xlatb87;
      if (x_4102) {
        let x_4106 : vec4<f32> = u_xlat10;
        let x_4109 : vec4<f32> = u_xlat10;
        let x_4112 : vec4<bool> = (abs(vec4<f32>(x_4106.z, x_4106.z, x_4106.y, x_4106.z)) >= abs(vec4<f32>(x_4109.x, x_4109.y, x_4109.x, x_4109.x)));
        let x_4114 : vec3<bool> = vec3<bool>(x_4112.x, x_4112.y, x_4112.z);
        let x_4115 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_4114.x, x_4114.y, x_4114.z, x_4115.w);
        let x_4118 : bool = u_xlatb11.y;
        let x_4120 : bool = u_xlatb11.x;
        u_xlatb87 = (x_4118 & x_4120);
        let x_4122 : vec4<f32> = u_xlat10;
        let x_4125 : vec4<bool> = (-(vec4<f32>(x_4122.z, x_4122.y, x_4122.z, x_4122.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_4126 : vec3<bool> = vec3<bool>(x_4125.x, x_4125.y, x_4125.w);
        let x_4127 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_4126.x, x_4126.y, x_4127.z, x_4126.z);
        let x_4130 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_4130);
        let x_4135 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_4135);
        let x_4140 : bool = u_xlatb11.w;
        u_xlat88 = select(0.0f, 1.0f, x_4140);
        let x_4143 : bool = u_xlatb11.z;
        if (x_4143) {
          let x_4148 : f32 = u_xlat11.y;
          x_4144 = x_4148;
        } else {
          let x_4150 : f32 = u_xlat88;
          x_4144 = x_4150;
        }
        let x_4151 : f32 = x_4144;
        u_xlat88 = x_4151;
        let x_4153 : bool = u_xlatb87;
        if (x_4153) {
          let x_4158 : f32 = u_xlat11.x;
          x_4154 = x_4158;
        } else {
          let x_4160 : f32 = u_xlat88;
          x_4154 = x_4160;
        }
        let x_4161 : f32 = x_4154;
        u_xlat87 = x_4161;
        let x_4162 : i32 = u_xlati8;
        let x_4164 : f32 = x_394.x_AdditionalShadowParams[x_4162].w;
        u_xlat88 = trunc(x_4164);
        let x_4166 : f32 = u_xlat87;
        let x_4167 : f32 = u_xlat88;
        u_xlat87 = (x_4166 + x_4167);
        let x_4169 : f32 = u_xlat87;
        u_xlati61 = i32(x_4169);
      }
      let x_4171 : i32 = u_xlati61;
      u_xlati61 = (x_4171 << bitcast<u32>(2i));
      let x_4173 : vec3<f32> = vs_INTERP8;
      let x_4176 : i32 = u_xlati61;
      let x_4179 : i32 = u_xlati61;
      let x_4183 : vec4<f32> = x_394.x_AdditionalLightsWorldToShadow[((x_4176 + 1i) / 4i)][((x_4179 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_4173.y, x_4173.y, x_4173.y, x_4173.y) * x_4183);
      let x_4185 : i32 = u_xlati61;
      let x_4187 : i32 = u_xlati61;
      let x_4190 : vec4<f32> = x_394.x_AdditionalLightsWorldToShadow[(x_4185 / 4i)][(x_4187 % 4i)];
      let x_4191 : vec3<f32> = vs_INTERP8;
      let x_4194 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_4190 * vec4<f32>(x_4191.x, x_4191.x, x_4191.x, x_4191.x)) + x_4194);
      let x_4196 : i32 = u_xlati61;
      let x_4199 : i32 = u_xlati61;
      let x_4203 : vec4<f32> = x_394.x_AdditionalLightsWorldToShadow[((x_4196 + 2i) / 4i)][((x_4199 + 2i) % 4i)];
      let x_4204 : vec3<f32> = vs_INTERP8;
      let x_4207 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_4203 * vec4<f32>(x_4204.z, x_4204.z, x_4204.z, x_4204.z)) + x_4207);
      let x_4209 : vec4<f32> = u_xlat11;
      let x_4210 : i32 = u_xlati61;
      let x_4213 : i32 = u_xlati61;
      let x_4217 : vec4<f32> = x_394.x_AdditionalLightsWorldToShadow[((x_4210 + 3i) / 4i)][((x_4213 + 3i) % 4i)];
      u_xlat11 = (x_4209 + x_4217);
      let x_4219 : vec4<f32> = u_xlat11;
      let x_4221 : vec4<f32> = u_xlat11;
      let x_4223 : vec3<f32> = (vec3<f32>(x_4219.x, x_4219.y, x_4219.z) / vec3<f32>(x_4221.w, x_4221.w, x_4221.w));
      let x_4224 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4223.x, x_4223.y, x_4223.z, x_4224.w);
      let x_4227 : i32 = u_xlati8;
      let x_4229 : f32 = x_394.x_AdditionalShadowParams[x_4227].y;
      u_xlatb61 = (0.0f < x_4229);
      let x_4231 : bool = u_xlatb61;
      if (x_4231) {
        let x_4234 : i32 = u_xlati8;
        let x_4236 : f32 = x_394.x_AdditionalShadowParams[x_4234].y;
        u_xlatb61 = (1.0f == x_4236);
        let x_4238 : bool = u_xlatb61;
        if (x_4238) {
          let x_4241 : vec4<f32> = u_xlat11;
          let x_4245 : vec4<f32> = x_394.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_4241.x, x_4241.y, x_4241.x, x_4241.y) + x_4245);
          let x_4248 : vec4<f32> = u_xlat12;
          let x_4249 : vec2<f32> = vec2<f32>(x_4248.x, x_4248.y);
          let x_4251 : f32 = u_xlat11.z;
          txVec60 = vec3<f32>(x_4249.x, x_4249.y, x_4251);
          let x_4259 : vec3<f32> = txVec60;
          let x_4261 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4259.xy, x_4259.z);
          u_xlat13.x = x_4261;
          let x_4264 : vec4<f32> = u_xlat12;
          let x_4265 : vec2<f32> = vec2<f32>(x_4264.z, x_4264.w);
          let x_4267 : f32 = u_xlat11.z;
          txVec61 = vec3<f32>(x_4265.x, x_4265.y, x_4267);
          let x_4274 : vec3<f32> = txVec61;
          let x_4276 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4274.xy, x_4274.z);
          u_xlat13.y = x_4276;
          let x_4278 : vec4<f32> = u_xlat11;
          let x_4282 : vec4<f32> = x_394.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_4278.x, x_4278.y, x_4278.x, x_4278.y) + x_4282);
          let x_4285 : vec4<f32> = u_xlat12;
          let x_4286 : vec2<f32> = vec2<f32>(x_4285.x, x_4285.y);
          let x_4288 : f32 = u_xlat11.z;
          txVec62 = vec3<f32>(x_4286.x, x_4286.y, x_4288);
          let x_4295 : vec3<f32> = txVec62;
          let x_4297 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4295.xy, x_4295.z);
          u_xlat13.z = x_4297;
          let x_4300 : vec4<f32> = u_xlat12;
          let x_4301 : vec2<f32> = vec2<f32>(x_4300.z, x_4300.w);
          let x_4303 : f32 = u_xlat11.z;
          txVec63 = vec3<f32>(x_4301.x, x_4301.y, x_4303);
          let x_4310 : vec3<f32> = txVec63;
          let x_4312 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4310.xy, x_4310.z);
          u_xlat13.w = x_4312;
          let x_4314 : vec4<f32> = u_xlat13;
          u_xlat61 = dot(x_4314, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_4317 : i32 = u_xlati8;
          let x_4319 : f32 = x_394.x_AdditionalShadowParams[x_4317].y;
          u_xlatb87 = (2.0f == x_4319);
          let x_4321 : bool = u_xlatb87;
          if (x_4321) {
            let x_4324 : vec4<f32> = u_xlat11;
            let x_4328 : vec4<f32> = x_394.x_AdditionalShadowmapSize;
            let x_4331 : vec2<f32> = ((vec2<f32>(x_4324.x, x_4324.y) * vec2<f32>(x_4328.z, x_4328.w)) + vec2<f32>(0.5f, 0.5f));
            let x_4332 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4331.x, x_4331.y, x_4332.z, x_4332.w);
            let x_4334 : vec4<f32> = u_xlat12;
            let x_4336 : vec2<f32> = floor(vec2<f32>(x_4334.x, x_4334.y));
            let x_4337 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4336.x, x_4336.y, x_4337.z, x_4337.w);
            let x_4340 : vec4<f32> = u_xlat11;
            let x_4343 : vec4<f32> = x_394.x_AdditionalShadowmapSize;
            let x_4346 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_4340.x, x_4340.y) * vec2<f32>(x_4343.z, x_4343.w)) + -(vec2<f32>(x_4346.x, x_4346.y)));
            let x_4350 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_4350.x, x_4350.x, x_4350.y, x_4350.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4353 : vec4<f32> = u_xlat13;
            let x_4355 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_4353.x, x_4353.x, x_4353.z, x_4353.z) * vec4<f32>(x_4355.x, x_4355.x, x_4355.z, x_4355.z));
            let x_4358 : vec4<f32> = u_xlat14;
            let x_4360 : vec2<f32> = (vec2<f32>(x_4358.y, x_4358.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_4361 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4360.x, x_4361.y, x_4360.y, x_4361.w);
            let x_4363 : vec4<f32> = u_xlat14;
            let x_4366 : vec2<f32> = u_xlat64;
            let x_4368 : vec2<f32> = ((vec2<f32>(x_4363.x, x_4363.z) * vec2<f32>(0.5f, 0.5f)) + -(x_4366));
            let x_4369 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4368.x, x_4368.y, x_4369.z, x_4369.w);
            let x_4371 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_4371) + vec2<f32>(1.0f, 1.0f));
            let x_4374 : vec2<f32> = u_xlat64;
            let x_4375 : vec2<f32> = min(x_4374, vec2<f32>(0.0f, 0.0f));
            let x_4376 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4375.x, x_4375.y, x_4376.z, x_4376.w);
            let x_4378 : vec4<f32> = u_xlat15;
            let x_4381 : vec4<f32> = u_xlat15;
            let x_4384 : vec2<f32> = u_xlat66;
            let x_4385 : vec2<f32> = ((-(vec2<f32>(x_4378.x, x_4378.y)) * vec2<f32>(x_4381.x, x_4381.y)) + x_4384);
            let x_4386 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4385.x, x_4385.y, x_4386.z, x_4386.w);
            let x_4388 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_4388, vec2<f32>(0.0f, 0.0f));
            let x_4390 : vec2<f32> = u_xlat64;
            let x_4392 : vec2<f32> = u_xlat64;
            let x_4394 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_4390) * x_4392) + vec2<f32>(x_4394.y, x_4394.w));
            let x_4397 : vec4<f32> = u_xlat15;
            let x_4399 : vec2<f32> = (vec2<f32>(x_4397.x, x_4397.y) + vec2<f32>(1.0f, 1.0f));
            let x_4400 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4399.x, x_4399.y, x_4400.z, x_4400.w);
            let x_4402 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_4402 + vec2<f32>(1.0f, 1.0f));
            let x_4404 : vec4<f32> = u_xlat14;
            let x_4406 : vec2<f32> = (vec2<f32>(x_4404.x, x_4404.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4407 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4406.x, x_4406.y, x_4407.z, x_4407.w);
            let x_4409 : vec2<f32> = u_xlat66;
            let x_4410 : vec2<f32> = (x_4409 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4411 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4410.x, x_4410.y, x_4411.z, x_4411.w);
            let x_4413 : vec4<f32> = u_xlat15;
            let x_4415 : vec2<f32> = (vec2<f32>(x_4413.x, x_4413.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4416 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4415.x, x_4415.y, x_4416.z, x_4416.w);
            let x_4418 : vec2<f32> = u_xlat64;
            let x_4419 : vec2<f32> = (x_4418 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4420 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4419.x, x_4419.y, x_4420.z, x_4420.w);
            let x_4422 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_4422.y, x_4422.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4426 : f32 = u_xlat15.x;
            u_xlat16.z = x_4426;
            let x_4429 : f32 = u_xlat64.x;
            u_xlat16.w = x_4429;
            let x_4432 : f32 = u_xlat17.x;
            u_xlat14.z = x_4432;
            let x_4435 : f32 = u_xlat13.x;
            u_xlat14.w = x_4435;
            let x_4437 : vec4<f32> = u_xlat14;
            let x_4439 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_4437.z, x_4437.w, x_4437.x, x_4437.z) + vec4<f32>(x_4439.z, x_4439.w, x_4439.x, x_4439.z));
            let x_4443 : f32 = u_xlat16.y;
            u_xlat15.z = x_4443;
            let x_4446 : f32 = u_xlat64.y;
            u_xlat15.w = x_4446;
            let x_4449 : f32 = u_xlat14.y;
            u_xlat17.z = x_4449;
            let x_4452 : f32 = u_xlat13.z;
            u_xlat17.w = x_4452;
            let x_4454 : vec4<f32> = u_xlat15;
            let x_4456 : vec4<f32> = u_xlat17;
            let x_4458 : vec3<f32> = (vec3<f32>(x_4454.z, x_4454.y, x_4454.w) + vec3<f32>(x_4456.z, x_4456.y, x_4456.w));
            let x_4459 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4458.x, x_4458.y, x_4458.z, x_4459.w);
            let x_4461 : vec4<f32> = u_xlat14;
            let x_4463 : vec4<f32> = u_xlat18;
            let x_4465 : vec3<f32> = (vec3<f32>(x_4461.x, x_4461.z, x_4461.w) / vec3<f32>(x_4463.z, x_4463.w, x_4463.y));
            let x_4466 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4465.x, x_4465.y, x_4465.z, x_4466.w);
            let x_4468 : vec4<f32> = u_xlat14;
            let x_4470 : vec3<f32> = (vec3<f32>(x_4468.x, x_4468.y, x_4468.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4471 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4470.x, x_4470.y, x_4470.z, x_4471.w);
            let x_4473 : vec4<f32> = u_xlat17;
            let x_4475 : vec4<f32> = u_xlat13;
            let x_4477 : vec3<f32> = (vec3<f32>(x_4473.z, x_4473.y, x_4473.w) / vec3<f32>(x_4475.x, x_4475.y, x_4475.z));
            let x_4478 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4477.x, x_4477.y, x_4477.z, x_4478.w);
            let x_4480 : vec4<f32> = u_xlat15;
            let x_4482 : vec3<f32> = (vec3<f32>(x_4480.x, x_4480.y, x_4480.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4483 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4482.x, x_4482.y, x_4482.z, x_4483.w);
            let x_4485 : vec4<f32> = u_xlat14;
            let x_4488 : vec4<f32> = x_394.x_AdditionalShadowmapSize;
            let x_4490 : vec3<f32> = (vec3<f32>(x_4485.y, x_4485.x, x_4485.z) * vec3<f32>(x_4488.x, x_4488.x, x_4488.x));
            let x_4491 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4490.x, x_4490.y, x_4490.z, x_4491.w);
            let x_4493 : vec4<f32> = u_xlat15;
            let x_4496 : vec4<f32> = x_394.x_AdditionalShadowmapSize;
            let x_4498 : vec3<f32> = (vec3<f32>(x_4493.x, x_4493.y, x_4493.z) * vec3<f32>(x_4496.y, x_4496.y, x_4496.y));
            let x_4499 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4498.x, x_4498.y, x_4498.z, x_4499.w);
            let x_4502 : f32 = u_xlat15.x;
            u_xlat14.w = x_4502;
            let x_4504 : vec4<f32> = u_xlat12;
            let x_4507 : vec4<f32> = x_394.x_AdditionalShadowmapSize;
            let x_4510 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_4504.x, x_4504.y, x_4504.x, x_4504.y) * vec4<f32>(x_4507.x, x_4507.y, x_4507.x, x_4507.y)) + vec4<f32>(x_4510.y, x_4510.w, x_4510.x, x_4510.w));
            let x_4513 : vec4<f32> = u_xlat12;
            let x_4516 : vec4<f32> = x_394.x_AdditionalShadowmapSize;
            let x_4519 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_4513.x, x_4513.y) * vec2<f32>(x_4516.x, x_4516.y)) + vec2<f32>(x_4519.z, x_4519.w));
            let x_4523 : f32 = u_xlat14.y;
            u_xlat15.w = x_4523;
            let x_4525 : vec4<f32> = u_xlat15;
            let x_4526 : vec2<f32> = vec2<f32>(x_4525.y, x_4525.z);
            let x_4527 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4527.x, x_4526.x, x_4527.z, x_4526.y);
            let x_4529 : vec4<f32> = u_xlat12;
            let x_4532 : vec4<f32> = x_394.x_AdditionalShadowmapSize;
            let x_4535 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_4529.x, x_4529.y, x_4529.x, x_4529.y) * vec4<f32>(x_4532.x, x_4532.y, x_4532.x, x_4532.y)) + vec4<f32>(x_4535.x, x_4535.y, x_4535.z, x_4535.y));
            let x_4538 : vec4<f32> = u_xlat12;
            let x_4541 : vec4<f32> = x_394.x_AdditionalShadowmapSize;
            let x_4544 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_4538.x, x_4538.y, x_4538.x, x_4538.y) * vec4<f32>(x_4541.x, x_4541.y, x_4541.x, x_4541.y)) + vec4<f32>(x_4544.w, x_4544.y, x_4544.w, x_4544.z));
            let x_4547 : vec4<f32> = u_xlat12;
            let x_4550 : vec4<f32> = x_394.x_AdditionalShadowmapSize;
            let x_4553 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_4547.x, x_4547.y, x_4547.x, x_4547.y) * vec4<f32>(x_4550.x, x_4550.y, x_4550.x, x_4550.y)) + vec4<f32>(x_4553.x, x_4553.w, x_4553.z, x_4553.w));
            let x_4556 : vec4<f32> = u_xlat13;
            let x_4558 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_4556.x, x_4556.x, x_4556.x, x_4556.y) * vec4<f32>(x_4558.z, x_4558.w, x_4558.y, x_4558.z));
            let x_4561 : vec4<f32> = u_xlat13;
            let x_4563 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_4561.y, x_4561.y, x_4561.z, x_4561.z) * x_4563);
            let x_4566 : f32 = u_xlat13.z;
            let x_4568 : f32 = u_xlat18.y;
            u_xlat87 = (x_4566 * x_4568);
            let x_4571 : vec4<f32> = u_xlat16;
            let x_4572 : vec2<f32> = vec2<f32>(x_4571.x, x_4571.y);
            let x_4574 : f32 = u_xlat11.z;
            txVec64 = vec3<f32>(x_4572.x, x_4572.y, x_4574);
            let x_4581 : vec3<f32> = txVec64;
            let x_4583 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4581.xy, x_4581.z);
            u_xlat88 = x_4583;
            let x_4585 : vec4<f32> = u_xlat16;
            let x_4586 : vec2<f32> = vec2<f32>(x_4585.z, x_4585.w);
            let x_4588 : f32 = u_xlat11.z;
            txVec65 = vec3<f32>(x_4586.x, x_4586.y, x_4588);
            let x_4596 : vec3<f32> = txVec65;
            let x_4598 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4596.xy, x_4596.z);
            u_xlat89 = x_4598;
            let x_4599 : f32 = u_xlat89;
            let x_4601 : f32 = u_xlat19.y;
            u_xlat89 = (x_4599 * x_4601);
            let x_4604 : f32 = u_xlat19.x;
            let x_4605 : f32 = u_xlat88;
            let x_4607 : f32 = u_xlat89;
            u_xlat88 = ((x_4604 * x_4605) + x_4607);
            let x_4610 : vec2<f32> = u_xlat64;
            let x_4612 : f32 = u_xlat11.z;
            txVec66 = vec3<f32>(x_4610.x, x_4610.y, x_4612);
            let x_4619 : vec3<f32> = txVec66;
            let x_4621 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4619.xy, x_4619.z);
            u_xlat89 = x_4621;
            let x_4623 : f32 = u_xlat19.z;
            let x_4624 : f32 = u_xlat89;
            let x_4626 : f32 = u_xlat88;
            u_xlat88 = ((x_4623 * x_4624) + x_4626);
            let x_4629 : vec4<f32> = u_xlat15;
            let x_4630 : vec2<f32> = vec2<f32>(x_4629.x, x_4629.y);
            let x_4632 : f32 = u_xlat11.z;
            txVec67 = vec3<f32>(x_4630.x, x_4630.y, x_4632);
            let x_4639 : vec3<f32> = txVec67;
            let x_4641 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4639.xy, x_4639.z);
            u_xlat89 = x_4641;
            let x_4643 : f32 = u_xlat19.w;
            let x_4644 : f32 = u_xlat89;
            let x_4646 : f32 = u_xlat88;
            u_xlat88 = ((x_4643 * x_4644) + x_4646);
            let x_4649 : vec4<f32> = u_xlat17;
            let x_4650 : vec2<f32> = vec2<f32>(x_4649.x, x_4649.y);
            let x_4652 : f32 = u_xlat11.z;
            txVec68 = vec3<f32>(x_4650.x, x_4650.y, x_4652);
            let x_4659 : vec3<f32> = txVec68;
            let x_4661 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4659.xy, x_4659.z);
            u_xlat89 = x_4661;
            let x_4663 : f32 = u_xlat20.x;
            let x_4664 : f32 = u_xlat89;
            let x_4666 : f32 = u_xlat88;
            u_xlat88 = ((x_4663 * x_4664) + x_4666);
            let x_4669 : vec4<f32> = u_xlat17;
            let x_4670 : vec2<f32> = vec2<f32>(x_4669.z, x_4669.w);
            let x_4672 : f32 = u_xlat11.z;
            txVec69 = vec3<f32>(x_4670.x, x_4670.y, x_4672);
            let x_4679 : vec3<f32> = txVec69;
            let x_4681 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4679.xy, x_4679.z);
            u_xlat89 = x_4681;
            let x_4683 : f32 = u_xlat20.y;
            let x_4684 : f32 = u_xlat89;
            let x_4686 : f32 = u_xlat88;
            u_xlat88 = ((x_4683 * x_4684) + x_4686);
            let x_4689 : vec4<f32> = u_xlat15;
            let x_4690 : vec2<f32> = vec2<f32>(x_4689.z, x_4689.w);
            let x_4692 : f32 = u_xlat11.z;
            txVec70 = vec3<f32>(x_4690.x, x_4690.y, x_4692);
            let x_4699 : vec3<f32> = txVec70;
            let x_4701 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4699.xy, x_4699.z);
            u_xlat89 = x_4701;
            let x_4703 : f32 = u_xlat20.z;
            let x_4704 : f32 = u_xlat89;
            let x_4706 : f32 = u_xlat88;
            u_xlat88 = ((x_4703 * x_4704) + x_4706);
            let x_4709 : vec4<f32> = u_xlat14;
            let x_4710 : vec2<f32> = vec2<f32>(x_4709.x, x_4709.y);
            let x_4712 : f32 = u_xlat11.z;
            txVec71 = vec3<f32>(x_4710.x, x_4710.y, x_4712);
            let x_4719 : vec3<f32> = txVec71;
            let x_4721 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4719.xy, x_4719.z);
            u_xlat89 = x_4721;
            let x_4723 : f32 = u_xlat20.w;
            let x_4724 : f32 = u_xlat89;
            let x_4726 : f32 = u_xlat88;
            u_xlat88 = ((x_4723 * x_4724) + x_4726);
            let x_4729 : vec4<f32> = u_xlat14;
            let x_4730 : vec2<f32> = vec2<f32>(x_4729.z, x_4729.w);
            let x_4732 : f32 = u_xlat11.z;
            txVec72 = vec3<f32>(x_4730.x, x_4730.y, x_4732);
            let x_4739 : vec3<f32> = txVec72;
            let x_4741 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4739.xy, x_4739.z);
            u_xlat89 = x_4741;
            let x_4742 : f32 = u_xlat87;
            let x_4743 : f32 = u_xlat89;
            let x_4745 : f32 = u_xlat88;
            u_xlat61 = ((x_4742 * x_4743) + x_4745);
          } else {
            let x_4748 : vec4<f32> = u_xlat11;
            let x_4751 : vec4<f32> = x_394.x_AdditionalShadowmapSize;
            let x_4754 : vec2<f32> = ((vec2<f32>(x_4748.x, x_4748.y) * vec2<f32>(x_4751.z, x_4751.w)) + vec2<f32>(0.5f, 0.5f));
            let x_4755 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4754.x, x_4754.y, x_4755.z, x_4755.w);
            let x_4757 : vec4<f32> = u_xlat12;
            let x_4759 : vec2<f32> = floor(vec2<f32>(x_4757.x, x_4757.y));
            let x_4760 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4759.x, x_4759.y, x_4760.z, x_4760.w);
            let x_4762 : vec4<f32> = u_xlat11;
            let x_4765 : vec4<f32> = x_394.x_AdditionalShadowmapSize;
            let x_4768 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_4762.x, x_4762.y) * vec2<f32>(x_4765.z, x_4765.w)) + -(vec2<f32>(x_4768.x, x_4768.y)));
            let x_4772 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_4772.x, x_4772.x, x_4772.y, x_4772.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4775 : vec4<f32> = u_xlat13;
            let x_4777 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_4775.x, x_4775.x, x_4775.z, x_4775.z) * vec4<f32>(x_4777.x, x_4777.x, x_4777.z, x_4777.z));
            let x_4780 : vec4<f32> = u_xlat14;
            let x_4782 : vec2<f32> = (vec2<f32>(x_4780.y, x_4780.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_4783 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4783.x, x_4782.x, x_4783.z, x_4782.y);
            let x_4785 : vec4<f32> = u_xlat14;
            let x_4788 : vec2<f32> = u_xlat64;
            let x_4790 : vec2<f32> = ((vec2<f32>(x_4785.x, x_4785.z) * vec2<f32>(0.5f, 0.5f)) + -(x_4788));
            let x_4791 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4790.x, x_4791.y, x_4790.y, x_4791.w);
            let x_4793 : vec2<f32> = u_xlat64;
            let x_4795 : vec2<f32> = (-(x_4793) + vec2<f32>(1.0f, 1.0f));
            let x_4796 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4795.x, x_4795.y, x_4796.z, x_4796.w);
            let x_4798 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_4798, vec2<f32>(0.0f, 0.0f));
            let x_4800 : vec2<f32> = u_xlat66;
            let x_4802 : vec2<f32> = u_xlat66;
            let x_4804 : vec4<f32> = u_xlat14;
            let x_4806 : vec2<f32> = ((-(x_4800) * x_4802) + vec2<f32>(x_4804.x, x_4804.y));
            let x_4807 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4806.x, x_4806.y, x_4807.z, x_4807.w);
            let x_4809 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_4809, vec2<f32>(0.0f, 0.0f));
            let x_4812 : vec2<f32> = u_xlat66;
            let x_4814 : vec2<f32> = u_xlat66;
            let x_4816 : vec4<f32> = u_xlat13;
            let x_4818 : vec2<f32> = ((-(x_4812) * x_4814) + vec2<f32>(x_4816.y, x_4816.w));
            let x_4819 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_4818.x, x_4819.y, x_4818.y);
            let x_4821 : vec4<f32> = u_xlat14;
            let x_4823 : vec2<f32> = (vec2<f32>(x_4821.x, x_4821.y) + vec2<f32>(2.0f, 2.0f));
            let x_4824 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4823.x, x_4823.y, x_4824.z, x_4824.w);
            let x_4826 : vec3<f32> = u_xlat39;
            let x_4828 : vec2<f32> = (vec2<f32>(x_4826.x, x_4826.z) + vec2<f32>(2.0f, 2.0f));
            let x_4829 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4829.x, x_4828.x, x_4829.z, x_4828.y);
            let x_4832 : f32 = u_xlat13.y;
            u_xlat16.z = (x_4832 * 0.08163200318813323975f);
            let x_4835 : vec4<f32> = u_xlat13;
            let x_4837 : vec3<f32> = (vec3<f32>(x_4835.z, x_4835.x, x_4835.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_4838 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4837.x, x_4837.y, x_4837.z, x_4838.w);
            let x_4840 : vec4<f32> = u_xlat14;
            let x_4842 : vec2<f32> = (vec2<f32>(x_4840.x, x_4840.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_4843 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4842.x, x_4842.y, x_4843.z, x_4843.w);
            let x_4846 : f32 = u_xlat17.y;
            u_xlat16.x = x_4846;
            let x_4848 : vec2<f32> = u_xlat64;
            let x_4851 : vec2<f32> = ((vec2<f32>(x_4848.x, x_4848.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4852 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4852.x, x_4851.x, x_4852.z, x_4851.y);
            let x_4854 : vec2<f32> = u_xlat64;
            let x_4857 : vec2<f32> = ((vec2<f32>(x_4854.x, x_4854.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4858 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4857.x, x_4858.y, x_4857.y, x_4858.w);
            let x_4861 : f32 = u_xlat13.x;
            u_xlat14.y = x_4861;
            let x_4864 : f32 = u_xlat15.y;
            u_xlat14.w = x_4864;
            let x_4866 : vec4<f32> = u_xlat14;
            let x_4867 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_4866 + x_4867);
            let x_4869 : vec2<f32> = u_xlat64;
            let x_4872 : vec2<f32> = ((vec2<f32>(x_4869.y, x_4869.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4873 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4873.x, x_4872.x, x_4873.z, x_4872.y);
            let x_4875 : vec2<f32> = u_xlat64;
            let x_4878 : vec2<f32> = ((vec2<f32>(x_4875.y, x_4875.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4879 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4878.x, x_4879.y, x_4878.y, x_4879.w);
            let x_4882 : f32 = u_xlat13.y;
            u_xlat15.y = x_4882;
            let x_4884 : vec4<f32> = u_xlat15;
            let x_4885 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_4884 + x_4885);
            let x_4887 : vec4<f32> = u_xlat14;
            let x_4888 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_4887 / x_4888);
            let x_4890 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_4890 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4892 : vec4<f32> = u_xlat15;
            let x_4893 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_4892 / x_4893);
            let x_4895 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_4895 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4897 : vec4<f32> = u_xlat14;
            let x_4900 : vec4<f32> = x_394.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_4897.w, x_4897.x, x_4897.y, x_4897.z) * vec4<f32>(x_4900.x, x_4900.x, x_4900.x, x_4900.x));
            let x_4903 : vec4<f32> = u_xlat15;
            let x_4906 : vec4<f32> = x_394.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_4903.x, x_4903.w, x_4903.y, x_4903.z) * vec4<f32>(x_4906.y, x_4906.y, x_4906.y, x_4906.y));
            let x_4909 : vec4<f32> = u_xlat14;
            let x_4910 : vec3<f32> = vec3<f32>(x_4909.y, x_4909.z, x_4909.w);
            let x_4911 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4910.x, x_4911.y, x_4910.y, x_4910.z);
            let x_4914 : f32 = u_xlat15.x;
            u_xlat17.y = x_4914;
            let x_4916 : vec4<f32> = u_xlat12;
            let x_4919 : vec4<f32> = x_394.x_AdditionalShadowmapSize;
            let x_4922 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_4916.x, x_4916.y, x_4916.x, x_4916.y) * vec4<f32>(x_4919.x, x_4919.y, x_4919.x, x_4919.y)) + vec4<f32>(x_4922.x, x_4922.y, x_4922.z, x_4922.y));
            let x_4925 : vec4<f32> = u_xlat12;
            let x_4928 : vec4<f32> = x_394.x_AdditionalShadowmapSize;
            let x_4931 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_4925.x, x_4925.y) * vec2<f32>(x_4928.x, x_4928.y)) + vec2<f32>(x_4931.w, x_4931.y));
            let x_4935 : f32 = u_xlat17.y;
            u_xlat14.y = x_4935;
            let x_4938 : f32 = u_xlat15.z;
            u_xlat17.y = x_4938;
            let x_4940 : vec4<f32> = u_xlat12;
            let x_4943 : vec4<f32> = x_394.x_AdditionalShadowmapSize;
            let x_4946 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_4940.x, x_4940.y, x_4940.x, x_4940.y) * vec4<f32>(x_4943.x, x_4943.y, x_4943.x, x_4943.y)) + vec4<f32>(x_4946.x, x_4946.y, x_4946.z, x_4946.y));
            let x_4949 : vec4<f32> = u_xlat12;
            let x_4952 : vec4<f32> = x_394.x_AdditionalShadowmapSize;
            let x_4955 : vec4<f32> = u_xlat17;
            let x_4957 : vec2<f32> = ((vec2<f32>(x_4949.x, x_4949.y) * vec2<f32>(x_4952.x, x_4952.y)) + vec2<f32>(x_4955.w, x_4955.y));
            let x_4958 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_4957.x, x_4957.y, x_4958.z, x_4958.w);
            let x_4961 : f32 = u_xlat17.y;
            u_xlat14.z = x_4961;
            let x_4963 : vec4<f32> = u_xlat12;
            let x_4966 : vec4<f32> = x_394.x_AdditionalShadowmapSize;
            let x_4969 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_4963.x, x_4963.y, x_4963.x, x_4963.y) * vec4<f32>(x_4966.x, x_4966.y, x_4966.x, x_4966.y)) + vec4<f32>(x_4969.x, x_4969.y, x_4969.x, x_4969.z));
            let x_4973 : f32 = u_xlat15.w;
            u_xlat17.y = x_4973;
            let x_4976 : vec4<f32> = u_xlat12;
            let x_4979 : vec4<f32> = x_394.x_AdditionalShadowmapSize;
            let x_4982 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_4976.x, x_4976.y, x_4976.x, x_4976.y) * vec4<f32>(x_4979.x, x_4979.y, x_4979.x, x_4979.y)) + vec4<f32>(x_4982.x, x_4982.y, x_4982.z, x_4982.y));
            let x_4986 : vec4<f32> = u_xlat12;
            let x_4989 : vec4<f32> = x_394.x_AdditionalShadowmapSize;
            let x_4992 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_4986.x, x_4986.y) * vec2<f32>(x_4989.x, x_4989.y)) + vec2<f32>(x_4992.w, x_4992.y));
            let x_4996 : f32 = u_xlat17.y;
            u_xlat14.w = x_4996;
            let x_4999 : vec4<f32> = u_xlat12;
            let x_5002 : vec4<f32> = x_394.x_AdditionalShadowmapSize;
            let x_5005 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_4999.x, x_4999.y) * vec2<f32>(x_5002.x, x_5002.y)) + vec2<f32>(x_5005.x, x_5005.w));
            let x_5008 : vec4<f32> = u_xlat17;
            let x_5009 : vec3<f32> = vec3<f32>(x_5008.x, x_5008.z, x_5008.w);
            let x_5010 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_5009.x, x_5010.y, x_5009.y, x_5009.z);
            let x_5012 : vec4<f32> = u_xlat12;
            let x_5015 : vec4<f32> = x_394.x_AdditionalShadowmapSize;
            let x_5018 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_5012.x, x_5012.y, x_5012.x, x_5012.y) * vec4<f32>(x_5015.x, x_5015.y, x_5015.x, x_5015.y)) + vec4<f32>(x_5018.x, x_5018.y, x_5018.z, x_5018.y));
            let x_5022 : vec4<f32> = u_xlat12;
            let x_5025 : vec4<f32> = x_394.x_AdditionalShadowmapSize;
            let x_5028 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_5022.x, x_5022.y) * vec2<f32>(x_5025.x, x_5025.y)) + vec2<f32>(x_5028.w, x_5028.y));
            let x_5032 : f32 = u_xlat14.x;
            u_xlat15.x = x_5032;
            let x_5034 : vec4<f32> = u_xlat12;
            let x_5037 : vec4<f32> = x_394.x_AdditionalShadowmapSize;
            let x_5040 : vec4<f32> = u_xlat15;
            let x_5042 : vec2<f32> = ((vec2<f32>(x_5034.x, x_5034.y) * vec2<f32>(x_5037.x, x_5037.y)) + vec2<f32>(x_5040.x, x_5040.y));
            let x_5043 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_5042.x, x_5042.y, x_5043.z, x_5043.w);
            let x_5046 : vec4<f32> = u_xlat13;
            let x_5048 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_5046.x, x_5046.x, x_5046.x, x_5046.x) * x_5048);
            let x_5051 : vec4<f32> = u_xlat13;
            let x_5053 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_5051.y, x_5051.y, x_5051.y, x_5051.y) * x_5053);
            let x_5056 : vec4<f32> = u_xlat13;
            let x_5058 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_5056.z, x_5056.z, x_5056.z, x_5056.z) * x_5058);
            let x_5060 : vec4<f32> = u_xlat13;
            let x_5062 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_5060.w, x_5060.w, x_5060.w, x_5060.w) * x_5062);
            let x_5065 : vec4<f32> = u_xlat18;
            let x_5066 : vec2<f32> = vec2<f32>(x_5065.x, x_5065.y);
            let x_5068 : f32 = u_xlat11.z;
            txVec73 = vec3<f32>(x_5066.x, x_5066.y, x_5068);
            let x_5075 : vec3<f32> = txVec73;
            let x_5077 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5075.xy, x_5075.z);
            u_xlat87 = x_5077;
            let x_5079 : vec4<f32> = u_xlat18;
            let x_5080 : vec2<f32> = vec2<f32>(x_5079.z, x_5079.w);
            let x_5082 : f32 = u_xlat11.z;
            txVec74 = vec3<f32>(x_5080.x, x_5080.y, x_5082);
            let x_5089 : vec3<f32> = txVec74;
            let x_5091 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5089.xy, x_5089.z);
            u_xlat88 = x_5091;
            let x_5092 : f32 = u_xlat88;
            let x_5094 : f32 = u_xlat23.y;
            u_xlat88 = (x_5092 * x_5094);
            let x_5097 : f32 = u_xlat23.x;
            let x_5098 : f32 = u_xlat87;
            let x_5100 : f32 = u_xlat88;
            u_xlat87 = ((x_5097 * x_5098) + x_5100);
            let x_5103 : vec2<f32> = u_xlat64;
            let x_5105 : f32 = u_xlat11.z;
            txVec75 = vec3<f32>(x_5103.x, x_5103.y, x_5105);
            let x_5112 : vec3<f32> = txVec75;
            let x_5114 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5112.xy, x_5112.z);
            u_xlat88 = x_5114;
            let x_5116 : f32 = u_xlat23.z;
            let x_5117 : f32 = u_xlat88;
            let x_5119 : f32 = u_xlat87;
            u_xlat87 = ((x_5116 * x_5117) + x_5119);
            let x_5122 : vec4<f32> = u_xlat21;
            let x_5123 : vec2<f32> = vec2<f32>(x_5122.x, x_5122.y);
            let x_5125 : f32 = u_xlat11.z;
            txVec76 = vec3<f32>(x_5123.x, x_5123.y, x_5125);
            let x_5132 : vec3<f32> = txVec76;
            let x_5134 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5132.xy, x_5132.z);
            u_xlat88 = x_5134;
            let x_5136 : f32 = u_xlat23.w;
            let x_5137 : f32 = u_xlat88;
            let x_5139 : f32 = u_xlat87;
            u_xlat87 = ((x_5136 * x_5137) + x_5139);
            let x_5142 : vec4<f32> = u_xlat19;
            let x_5143 : vec2<f32> = vec2<f32>(x_5142.x, x_5142.y);
            let x_5145 : f32 = u_xlat11.z;
            txVec77 = vec3<f32>(x_5143.x, x_5143.y, x_5145);
            let x_5152 : vec3<f32> = txVec77;
            let x_5154 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5152.xy, x_5152.z);
            u_xlat88 = x_5154;
            let x_5156 : f32 = u_xlat24.x;
            let x_5157 : f32 = u_xlat88;
            let x_5159 : f32 = u_xlat87;
            u_xlat87 = ((x_5156 * x_5157) + x_5159);
            let x_5162 : vec4<f32> = u_xlat19;
            let x_5163 : vec2<f32> = vec2<f32>(x_5162.z, x_5162.w);
            let x_5165 : f32 = u_xlat11.z;
            txVec78 = vec3<f32>(x_5163.x, x_5163.y, x_5165);
            let x_5172 : vec3<f32> = txVec78;
            let x_5174 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5172.xy, x_5172.z);
            u_xlat88 = x_5174;
            let x_5176 : f32 = u_xlat24.y;
            let x_5177 : f32 = u_xlat88;
            let x_5179 : f32 = u_xlat87;
            u_xlat87 = ((x_5176 * x_5177) + x_5179);
            let x_5182 : vec4<f32> = u_xlat20;
            let x_5183 : vec2<f32> = vec2<f32>(x_5182.x, x_5182.y);
            let x_5185 : f32 = u_xlat11.z;
            txVec79 = vec3<f32>(x_5183.x, x_5183.y, x_5185);
            let x_5192 : vec3<f32> = txVec79;
            let x_5194 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5192.xy, x_5192.z);
            u_xlat88 = x_5194;
            let x_5196 : f32 = u_xlat24.z;
            let x_5197 : f32 = u_xlat88;
            let x_5199 : f32 = u_xlat87;
            u_xlat87 = ((x_5196 * x_5197) + x_5199);
            let x_5202 : vec4<f32> = u_xlat21;
            let x_5203 : vec2<f32> = vec2<f32>(x_5202.z, x_5202.w);
            let x_5205 : f32 = u_xlat11.z;
            txVec80 = vec3<f32>(x_5203.x, x_5203.y, x_5205);
            let x_5212 : vec3<f32> = txVec80;
            let x_5214 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5212.xy, x_5212.z);
            u_xlat88 = x_5214;
            let x_5216 : f32 = u_xlat24.w;
            let x_5217 : f32 = u_xlat88;
            let x_5219 : f32 = u_xlat87;
            u_xlat87 = ((x_5216 * x_5217) + x_5219);
            let x_5222 : vec4<f32> = u_xlat22;
            let x_5223 : vec2<f32> = vec2<f32>(x_5222.x, x_5222.y);
            let x_5225 : f32 = u_xlat11.z;
            txVec81 = vec3<f32>(x_5223.x, x_5223.y, x_5225);
            let x_5232 : vec3<f32> = txVec81;
            let x_5234 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5232.xy, x_5232.z);
            u_xlat88 = x_5234;
            let x_5236 : f32 = u_xlat25.x;
            let x_5237 : f32 = u_xlat88;
            let x_5239 : f32 = u_xlat87;
            u_xlat87 = ((x_5236 * x_5237) + x_5239);
            let x_5242 : vec4<f32> = u_xlat22;
            let x_5243 : vec2<f32> = vec2<f32>(x_5242.z, x_5242.w);
            let x_5245 : f32 = u_xlat11.z;
            txVec82 = vec3<f32>(x_5243.x, x_5243.y, x_5245);
            let x_5252 : vec3<f32> = txVec82;
            let x_5254 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5252.xy, x_5252.z);
            u_xlat88 = x_5254;
            let x_5256 : f32 = u_xlat25.y;
            let x_5257 : f32 = u_xlat88;
            let x_5259 : f32 = u_xlat87;
            u_xlat87 = ((x_5256 * x_5257) + x_5259);
            let x_5262 : vec2<f32> = u_xlat40;
            let x_5264 : f32 = u_xlat11.z;
            txVec83 = vec3<f32>(x_5262.x, x_5262.y, x_5264);
            let x_5271 : vec3<f32> = txVec83;
            let x_5273 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5271.xy, x_5271.z);
            u_xlat88 = x_5273;
            let x_5275 : f32 = u_xlat25.z;
            let x_5276 : f32 = u_xlat88;
            let x_5278 : f32 = u_xlat87;
            u_xlat87 = ((x_5275 * x_5276) + x_5278);
            let x_5281 : vec2<f32> = u_xlat72;
            let x_5283 : f32 = u_xlat11.z;
            txVec84 = vec3<f32>(x_5281.x, x_5281.y, x_5283);
            let x_5290 : vec3<f32> = txVec84;
            let x_5292 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5290.xy, x_5290.z);
            u_xlat88 = x_5292;
            let x_5294 : f32 = u_xlat25.w;
            let x_5295 : f32 = u_xlat88;
            let x_5297 : f32 = u_xlat87;
            u_xlat87 = ((x_5294 * x_5295) + x_5297);
            let x_5300 : vec4<f32> = u_xlat17;
            let x_5301 : vec2<f32> = vec2<f32>(x_5300.x, x_5300.y);
            let x_5303 : f32 = u_xlat11.z;
            txVec85 = vec3<f32>(x_5301.x, x_5301.y, x_5303);
            let x_5310 : vec3<f32> = txVec85;
            let x_5312 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5310.xy, x_5310.z);
            u_xlat88 = x_5312;
            let x_5314 : f32 = u_xlat13.x;
            let x_5315 : f32 = u_xlat88;
            let x_5317 : f32 = u_xlat87;
            u_xlat87 = ((x_5314 * x_5315) + x_5317);
            let x_5320 : vec4<f32> = u_xlat17;
            let x_5321 : vec2<f32> = vec2<f32>(x_5320.z, x_5320.w);
            let x_5323 : f32 = u_xlat11.z;
            txVec86 = vec3<f32>(x_5321.x, x_5321.y, x_5323);
            let x_5330 : vec3<f32> = txVec86;
            let x_5332 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5330.xy, x_5330.z);
            u_xlat88 = x_5332;
            let x_5334 : f32 = u_xlat13.y;
            let x_5335 : f32 = u_xlat88;
            let x_5337 : f32 = u_xlat87;
            u_xlat87 = ((x_5334 * x_5335) + x_5337);
            let x_5340 : vec2<f32> = u_xlat67;
            let x_5342 : f32 = u_xlat11.z;
            txVec87 = vec3<f32>(x_5340.x, x_5340.y, x_5342);
            let x_5349 : vec3<f32> = txVec87;
            let x_5351 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5349.xy, x_5349.z);
            u_xlat88 = x_5351;
            let x_5353 : f32 = u_xlat13.z;
            let x_5354 : f32 = u_xlat88;
            let x_5356 : f32 = u_xlat87;
            u_xlat87 = ((x_5353 * x_5354) + x_5356);
            let x_5359 : vec4<f32> = u_xlat12;
            let x_5360 : vec2<f32> = vec2<f32>(x_5359.x, x_5359.y);
            let x_5362 : f32 = u_xlat11.z;
            txVec88 = vec3<f32>(x_5360.x, x_5360.y, x_5362);
            let x_5369 : vec3<f32> = txVec88;
            let x_5371 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5369.xy, x_5369.z);
            u_xlat88 = x_5371;
            let x_5373 : f32 = u_xlat13.w;
            let x_5374 : f32 = u_xlat88;
            let x_5376 : f32 = u_xlat87;
            u_xlat61 = ((x_5373 * x_5374) + x_5376);
          }
        }
      } else {
        let x_5380 : vec4<f32> = u_xlat11;
        let x_5381 : vec2<f32> = vec2<f32>(x_5380.x, x_5380.y);
        let x_5383 : f32 = u_xlat11.z;
        txVec89 = vec3<f32>(x_5381.x, x_5381.y, x_5383);
        let x_5390 : vec3<f32> = txVec89;
        let x_5392 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5390.xy, x_5390.z);
        u_xlat61 = x_5392;
      }
      let x_5393 : i32 = u_xlati8;
      let x_5395 : f32 = x_394.x_AdditionalShadowParams[x_5393].x;
      u_xlat87 = (1.0f + -(x_5395));
      let x_5398 : f32 = u_xlat61;
      let x_5399 : i32 = u_xlati8;
      let x_5401 : f32 = x_394.x_AdditionalShadowParams[x_5399].x;
      let x_5403 : f32 = u_xlat87;
      u_xlat61 = ((x_5398 * x_5401) + x_5403);
      let x_5406 : f32 = u_xlat11.z;
      u_xlatb87 = (0.0f >= x_5406);
      let x_5410 : f32 = u_xlat11.z;
      u_xlatb88 = (x_5410 >= 1.0f);
      let x_5412 : bool = u_xlatb87;
      let x_5413 : bool = u_xlatb88;
      u_xlatb87 = (x_5412 | x_5413);
      let x_5415 : bool = u_xlatb87;
      let x_5416 : f32 = u_xlat61;
      u_xlat61 = select(x_5416, 1.0f, x_5415);
    } else {
      u_xlat61 = 1.0f;
    }
    let x_5419 : f32 = u_xlat61;
    u_xlat87 = (-(x_5419) + 1.0f);
    let x_5423 : f32 = u_xlat2.x;
    let x_5424 : f32 = u_xlat87;
    let x_5426 : f32 = u_xlat61;
    u_xlat61 = ((x_5423 * x_5424) + x_5426);
    let x_5429 : i32 = u_xlati8;
    u_xlati87 = (1i << bitcast<u32>((x_5429 & 31i)));
    let x_5433 : i32 = u_xlati87;
    let x_5436 : f32 = x_3509.x_AdditionalLightsCookieEnableBits;
    u_xlati87 = bitcast<i32>((bitcast<u32>(x_5433) & bitcast<u32>(x_5436)));
    let x_5440 : i32 = u_xlati87;
    if ((x_5440 != 0i)) {
      let x_5444 : i32 = u_xlati8;
      let x_5446 : f32 = x_3509.x_AdditionalLightsLightTypes[x_5444].el;
      u_xlati87 = i32(x_5446);
      let x_5449 : i32 = u_xlati87;
      u_xlati88 = select(1i, 0i, (x_5449 != 0i));
      let x_5453 : i32 = u_xlati8;
      u_xlati11 = (x_5453 << bitcast<u32>(2i));
      let x_5455 : i32 = u_xlati88;
      if ((x_5455 != 0i)) {
        let x_5460 : vec3<f32> = vs_INTERP8;
        let x_5462 : i32 = u_xlati11;
        let x_5465 : i32 = u_xlati11;
        let x_5469 : vec4<f32> = x_3509.x_AdditionalLightsWorldToLights[((x_5462 + 1i) / 4i)][((x_5465 + 1i) % 4i)];
        u_xlat37 = (vec3<f32>(x_5460.y, x_5460.y, x_5460.y) * vec3<f32>(x_5469.x, x_5469.y, x_5469.w));
        let x_5472 : i32 = u_xlati11;
        let x_5474 : i32 = u_xlati11;
        let x_5477 : vec4<f32> = x_3509.x_AdditionalLightsWorldToLights[(x_5472 / 4i)][(x_5474 % 4i)];
        let x_5479 : vec3<f32> = vs_INTERP8;
        let x_5482 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_5477.x, x_5477.y, x_5477.w) * vec3<f32>(x_5479.x, x_5479.x, x_5479.x)) + x_5482);
        let x_5484 : i32 = u_xlati11;
        let x_5487 : i32 = u_xlati11;
        let x_5491 : vec4<f32> = x_3509.x_AdditionalLightsWorldToLights[((x_5484 + 2i) / 4i)][((x_5487 + 2i) % 4i)];
        let x_5493 : vec3<f32> = vs_INTERP8;
        let x_5496 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_5491.x, x_5491.y, x_5491.w) * vec3<f32>(x_5493.z, x_5493.z, x_5493.z)) + x_5496);
        let x_5498 : vec3<f32> = u_xlat37;
        let x_5499 : i32 = u_xlati11;
        let x_5502 : i32 = u_xlati11;
        let x_5506 : vec4<f32> = x_3509.x_AdditionalLightsWorldToLights[((x_5499 + 3i) / 4i)][((x_5502 + 3i) % 4i)];
        u_xlat37 = (x_5498 + vec3<f32>(x_5506.x, x_5506.y, x_5506.w));
        let x_5509 : vec3<f32> = u_xlat37;
        let x_5511 : vec3<f32> = u_xlat37;
        let x_5513 : vec2<f32> = (vec2<f32>(x_5509.x, x_5509.y) / vec2<f32>(x_5511.z, x_5511.z));
        let x_5514 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_5513.x, x_5513.y, x_5514.z);
        let x_5516 : vec3<f32> = u_xlat37;
        let x_5519 : vec2<f32> = ((vec2<f32>(x_5516.x, x_5516.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_5520 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_5519.x, x_5519.y, x_5520.z);
        let x_5522 : vec3<f32> = u_xlat37;
        let x_5526 : vec2<f32> = clamp(vec2<f32>(x_5522.x, x_5522.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_5527 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_5526.x, x_5526.y, x_5527.z);
        let x_5529 : i32 = u_xlati8;
        let x_5531 : vec4<f32> = x_3509.x_AdditionalLightsCookieAtlasUVRects[x_5529];
        let x_5533 : vec3<f32> = u_xlat37;
        let x_5536 : i32 = u_xlati8;
        let x_5538 : vec4<f32> = x_3509.x_AdditionalLightsCookieAtlasUVRects[x_5536];
        let x_5540 : vec2<f32> = ((vec2<f32>(x_5531.x, x_5531.y) * vec2<f32>(x_5533.x, x_5533.y)) + vec2<f32>(x_5538.z, x_5538.w));
        let x_5541 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_5540.x, x_5540.y, x_5541.z);
      } else {
        let x_5544 : i32 = u_xlati87;
        u_xlatb87 = (x_5544 == 1i);
        let x_5546 : bool = u_xlatb87;
        u_xlati87 = select(0i, 1i, x_5546);
        let x_5548 : i32 = u_xlati87;
        if ((x_5548 != 0i)) {
          let x_5552 : vec3<f32> = vs_INTERP8;
          let x_5554 : i32 = u_xlati11;
          let x_5557 : i32 = u_xlati11;
          let x_5561 : vec4<f32> = x_3509.x_AdditionalLightsWorldToLights[((x_5554 + 1i) / 4i)][((x_5557 + 1i) % 4i)];
          let x_5563 : vec2<f32> = (vec2<f32>(x_5552.y, x_5552.y) * vec2<f32>(x_5561.x, x_5561.y));
          let x_5564 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5563.x, x_5563.y, x_5564.z, x_5564.w);
          let x_5566 : i32 = u_xlati11;
          let x_5568 : i32 = u_xlati11;
          let x_5571 : vec4<f32> = x_3509.x_AdditionalLightsWorldToLights[(x_5566 / 4i)][(x_5568 % 4i)];
          let x_5573 : vec3<f32> = vs_INTERP8;
          let x_5576 : vec4<f32> = u_xlat12;
          let x_5578 : vec2<f32> = ((vec2<f32>(x_5571.x, x_5571.y) * vec2<f32>(x_5573.x, x_5573.x)) + vec2<f32>(x_5576.x, x_5576.y));
          let x_5579 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5578.x, x_5578.y, x_5579.z, x_5579.w);
          let x_5581 : i32 = u_xlati11;
          let x_5584 : i32 = u_xlati11;
          let x_5588 : vec4<f32> = x_3509.x_AdditionalLightsWorldToLights[((x_5581 + 2i) / 4i)][((x_5584 + 2i) % 4i)];
          let x_5590 : vec3<f32> = vs_INTERP8;
          let x_5593 : vec4<f32> = u_xlat12;
          let x_5595 : vec2<f32> = ((vec2<f32>(x_5588.x, x_5588.y) * vec2<f32>(x_5590.z, x_5590.z)) + vec2<f32>(x_5593.x, x_5593.y));
          let x_5596 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5595.x, x_5595.y, x_5596.z, x_5596.w);
          let x_5598 : vec4<f32> = u_xlat12;
          let x_5600 : i32 = u_xlati11;
          let x_5603 : i32 = u_xlati11;
          let x_5607 : vec4<f32> = x_3509.x_AdditionalLightsWorldToLights[((x_5600 + 3i) / 4i)][((x_5603 + 3i) % 4i)];
          let x_5609 : vec2<f32> = (vec2<f32>(x_5598.x, x_5598.y) + vec2<f32>(x_5607.x, x_5607.y));
          let x_5610 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5609.x, x_5609.y, x_5610.z, x_5610.w);
          let x_5612 : vec4<f32> = u_xlat12;
          let x_5615 : vec2<f32> = ((vec2<f32>(x_5612.x, x_5612.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_5616 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5615.x, x_5615.y, x_5616.z, x_5616.w);
          let x_5618 : vec4<f32> = u_xlat12;
          let x_5620 : vec2<f32> = fract(vec2<f32>(x_5618.x, x_5618.y));
          let x_5621 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5620.x, x_5620.y, x_5621.z, x_5621.w);
          let x_5623 : i32 = u_xlati8;
          let x_5625 : vec4<f32> = x_3509.x_AdditionalLightsCookieAtlasUVRects[x_5623];
          let x_5627 : vec4<f32> = u_xlat12;
          let x_5630 : i32 = u_xlati8;
          let x_5632 : vec4<f32> = x_3509.x_AdditionalLightsCookieAtlasUVRects[x_5630];
          let x_5634 : vec2<f32> = ((vec2<f32>(x_5625.x, x_5625.y) * vec2<f32>(x_5627.x, x_5627.y)) + vec2<f32>(x_5632.z, x_5632.w));
          let x_5635 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_5634.x, x_5634.y, x_5635.z);
        } else {
          let x_5638 : vec3<f32> = vs_INTERP8;
          let x_5640 : i32 = u_xlati11;
          let x_5643 : i32 = u_xlati11;
          let x_5647 : vec4<f32> = x_3509.x_AdditionalLightsWorldToLights[((x_5640 + 1i) / 4i)][((x_5643 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_5638.y, x_5638.y, x_5638.y, x_5638.y) * x_5647);
          let x_5649 : i32 = u_xlati11;
          let x_5651 : i32 = u_xlati11;
          let x_5654 : vec4<f32> = x_3509.x_AdditionalLightsWorldToLights[(x_5649 / 4i)][(x_5651 % 4i)];
          let x_5655 : vec3<f32> = vs_INTERP8;
          let x_5658 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_5654 * vec4<f32>(x_5655.x, x_5655.x, x_5655.x, x_5655.x)) + x_5658);
          let x_5660 : i32 = u_xlati11;
          let x_5663 : i32 = u_xlati11;
          let x_5667 : vec4<f32> = x_3509.x_AdditionalLightsWorldToLights[((x_5660 + 2i) / 4i)][((x_5663 + 2i) % 4i)];
          let x_5668 : vec3<f32> = vs_INTERP8;
          let x_5671 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_5667 * vec4<f32>(x_5668.z, x_5668.z, x_5668.z, x_5668.z)) + x_5671);
          let x_5673 : vec4<f32> = u_xlat12;
          let x_5674 : i32 = u_xlati11;
          let x_5677 : i32 = u_xlati11;
          let x_5681 : vec4<f32> = x_3509.x_AdditionalLightsWorldToLights[((x_5674 + 3i) / 4i)][((x_5677 + 3i) % 4i)];
          u_xlat12 = (x_5673 + x_5681);
          let x_5683 : vec4<f32> = u_xlat12;
          let x_5685 : vec4<f32> = u_xlat12;
          let x_5687 : vec3<f32> = (vec3<f32>(x_5683.x, x_5683.y, x_5683.z) / vec3<f32>(x_5685.w, x_5685.w, x_5685.w));
          let x_5688 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5687.x, x_5687.y, x_5687.z, x_5688.w);
          let x_5690 : vec4<f32> = u_xlat12;
          let x_5692 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(vec3<f32>(x_5690.x, x_5690.y, x_5690.z), vec3<f32>(x_5692.x, x_5692.y, x_5692.z));
          let x_5695 : f32 = u_xlat87;
          u_xlat87 = inverseSqrt(x_5695);
          let x_5697 : f32 = u_xlat87;
          let x_5699 : vec4<f32> = u_xlat12;
          let x_5701 : vec3<f32> = (vec3<f32>(x_5697, x_5697, x_5697) * vec3<f32>(x_5699.x, x_5699.y, x_5699.z));
          let x_5702 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5701.x, x_5701.y, x_5701.z, x_5702.w);
          let x_5704 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(abs(vec3<f32>(x_5704.x, x_5704.y, x_5704.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_5709 : f32 = u_xlat87;
          u_xlat87 = max(x_5709, 0.00000099999999747524f);
          let x_5712 : f32 = u_xlat87;
          u_xlat87 = (1.0f / x_5712);
          let x_5714 : f32 = u_xlat87;
          let x_5716 : vec4<f32> = u_xlat12;
          let x_5718 : vec3<f32> = (vec3<f32>(x_5714, x_5714, x_5714) * vec3<f32>(x_5716.z, x_5716.x, x_5716.y));
          let x_5719 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_5718.x, x_5718.y, x_5718.z, x_5719.w);
          let x_5722 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_5722);
          let x_5726 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_5726, 0.0f, 1.0f);
          let x_5729 : vec4<f32> = u_xlat13;
          let x_5731 : vec4<bool> = (vec4<f32>(x_5729.y, x_5729.y, x_5729.y, x_5729.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_5732 : vec2<bool> = vec2<bool>(x_5731.x, x_5731.w);
          let x_5733 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_5732.x, x_5733.y, x_5733.z, x_5732.y);
          let x_5736 : bool = u_xlatb11.x;
          if (x_5736) {
            let x_5741 : f32 = u_xlat13.x;
            x_5737 = x_5741;
          } else {
            let x_5744 : f32 = u_xlat13.x;
            x_5737 = -(x_5744);
          }
          let x_5746 : f32 = x_5737;
          u_xlat11.x = x_5746;
          let x_5749 : bool = u_xlatb11.w;
          if (x_5749) {
            let x_5754 : f32 = u_xlat13.x;
            x_5750 = x_5754;
          } else {
            let x_5757 : f32 = u_xlat13.x;
            x_5750 = -(x_5757);
          }
          let x_5759 : f32 = x_5750;
          u_xlat11.w = x_5759;
          let x_5761 : vec4<f32> = u_xlat12;
          let x_5763 : f32 = u_xlat87;
          let x_5766 : vec4<f32> = u_xlat11;
          let x_5768 : vec2<f32> = ((vec2<f32>(x_5761.x, x_5761.y) * vec2<f32>(x_5763, x_5763)) + vec2<f32>(x_5766.x, x_5766.w));
          let x_5769 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_5768.x, x_5769.y, x_5769.z, x_5768.y);
          let x_5771 : vec4<f32> = u_xlat11;
          let x_5774 : vec2<f32> = ((vec2<f32>(x_5771.x, x_5771.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_5775 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_5774.x, x_5775.y, x_5775.z, x_5774.y);
          let x_5777 : vec4<f32> = u_xlat11;
          let x_5781 : vec2<f32> = clamp(vec2<f32>(x_5777.x, x_5777.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_5782 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_5781.x, x_5782.y, x_5782.z, x_5781.y);
          let x_5784 : i32 = u_xlati8;
          let x_5786 : vec4<f32> = x_3509.x_AdditionalLightsCookieAtlasUVRects[x_5784];
          let x_5788 : vec4<f32> = u_xlat11;
          let x_5791 : i32 = u_xlati8;
          let x_5793 : vec4<f32> = x_3509.x_AdditionalLightsCookieAtlasUVRects[x_5791];
          let x_5795 : vec2<f32> = ((vec2<f32>(x_5786.x, x_5786.y) * vec2<f32>(x_5788.x, x_5788.w)) + vec2<f32>(x_5793.z, x_5793.w));
          let x_5796 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_5795.x, x_5795.y, x_5796.z);
        }
      }
      let x_5803 : vec3<f32> = u_xlat37;
      let x_5805 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_5803.x, x_5803.y), 0.0f);
      u_xlat11 = x_5805;
      let x_5807 : bool = u_xlatb3.w;
      if (x_5807) {
        let x_5812 : f32 = u_xlat11.w;
        x_5808 = x_5812;
      } else {
        let x_5815 : f32 = u_xlat11.x;
        x_5808 = x_5815;
      }
      let x_5816 : f32 = x_5808;
      u_xlat87 = x_5816;
      let x_5818 : bool = u_xlatb3.x;
      if (x_5818) {
        let x_5822 : vec4<f32> = u_xlat11;
        x_5819 = vec3<f32>(x_5822.x, x_5822.y, x_5822.z);
      } else {
        let x_5825 : f32 = u_xlat87;
        x_5819 = vec3<f32>(x_5825, x_5825, x_5825);
      }
      let x_5827 : vec3<f32> = x_5819;
      let x_5828 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_5827.x, x_5827.y, x_5827.z, x_5828.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_5834 : vec4<f32> = u_xlat11;
    let x_5836 : i32 = u_xlati8;
    let x_5838 : vec4<f32> = x_3993.x_AdditionalLightsColor[x_5836];
    let x_5840 : vec3<f32> = (vec3<f32>(x_5834.x, x_5834.y, x_5834.z) * vec3<f32>(x_5838.x, x_5838.y, x_5838.z));
    let x_5841 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_5840.x, x_5840.y, x_5840.z, x_5841.w);
    let x_5843 : f32 = u_xlat61;
    let x_5845 : f32 = u_xlat9.x;
    u_xlat8.x = (x_5843 * x_5845);
    let x_5848 : vec3<f32> = u_xlat26;
    let x_5849 : vec4<f32> = u_xlat10;
    u_xlat9.x = dot(x_5848, vec3<f32>(x_5849.x, x_5849.y, x_5849.z));
    let x_5854 : f32 = u_xlat9.x;
    u_xlat9.x = clamp(x_5854, 0.0f, 1.0f);
    let x_5858 : f32 = u_xlat8.x;
    let x_5860 : f32 = u_xlat9.x;
    u_xlat8.x = (x_5858 * x_5860);
    let x_5863 : vec4<f32> = u_xlat8;
    let x_5865 : vec4<f32> = u_xlat11;
    let x_5867 : vec3<f32> = (vec3<f32>(x_5863.x, x_5863.x, x_5863.x) * vec3<f32>(x_5865.x, x_5865.y, x_5865.z));
    let x_5868 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5867.x, x_5868.y, x_5867.y, x_5867.z);
    let x_5870 : vec3<f32> = u_xlat34;
    let x_5871 : vec3<f32> = u_xlat35;
    let x_5874 : vec3<f32> = u_xlat5;
    let x_5875 : vec3<f32> = ((x_5870 * vec3<f32>(x_5871.x, x_5871.x, x_5871.x)) + x_5874);
    let x_5876 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_5875.x, x_5875.y, x_5875.z, x_5876.w);
    let x_5879 : vec4<f32> = u_xlat8;
    let x_5881 : vec4<f32> = u_xlat8;
    u_xlat86 = dot(vec3<f32>(x_5879.x, x_5879.y, x_5879.z), vec3<f32>(x_5881.x, x_5881.y, x_5881.z));
    let x_5884 : f32 = u_xlat86;
    u_xlat86 = max(x_5884, 1.17549435e-38f);
    let x_5886 : f32 = u_xlat86;
    u_xlat86 = inverseSqrt(x_5886);
    let x_5888 : f32 = u_xlat86;
    let x_5890 : vec4<f32> = u_xlat8;
    let x_5892 : vec3<f32> = (vec3<f32>(x_5888, x_5888, x_5888) * vec3<f32>(x_5890.x, x_5890.y, x_5890.z));
    let x_5893 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_5892.x, x_5892.y, x_5892.z, x_5893.w);
    let x_5895 : vec3<f32> = u_xlat26;
    let x_5896 : vec4<f32> = u_xlat8;
    u_xlat8.w = dot(x_5895, vec3<f32>(x_5896.x, x_5896.y, x_5896.z));
    let x_5901 : f32 = u_xlat8.w;
    u_xlat8.w = clamp(x_5901, 0.0f, 1.0f);
    let x_5904 : vec4<f32> = u_xlat10;
    let x_5906 : vec4<f32> = u_xlat8;
    u_xlat8.x = dot(vec3<f32>(x_5904.x, x_5904.y, x_5904.z), vec3<f32>(x_5906.x, x_5906.y, x_5906.z));
    let x_5911 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_5911, 0.0f, 1.0f);
    let x_5914 : vec4<f32> = u_xlat8;
    let x_5916 : vec4<f32> = u_xlat8;
    let x_5918 : vec2<f32> = (vec2<f32>(x_5914.x, x_5914.w) * vec2<f32>(x_5916.x, x_5916.w));
    let x_5919 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_5918.x, x_5918.y, x_5919.z, x_5919.w);
    let x_5922 : f32 = u_xlat8.y;
    let x_5924 : f32 = u_xlat55.x;
    u_xlat34.x = ((x_5922 * x_5924) + 1.00001001358032226562f);
    let x_5929 : f32 = u_xlat34.x;
    let x_5931 : f32 = u_xlat34.x;
    u_xlat34.x = (x_5929 * x_5931);
    let x_5935 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_5935, 0.10000000149011611938f);
    let x_5939 : f32 = u_xlat8.x;
    let x_5941 : f32 = u_xlat34.x;
    u_xlat8.x = (x_5939 * x_5941);
    let x_5944 : f32 = u_xlat84;
    let x_5946 : f32 = u_xlat8.x;
    u_xlat8.x = (x_5944 * x_5946);
    let x_5949 : f32 = u_xlat82;
    let x_5951 : f32 = u_xlat8.x;
    u_xlat8.x = (x_5949 / x_5951);
    let x_5954 : vec4<f32> = u_xlat8;
    let x_5957 : vec4<f32> = u_xlat6;
    let x_5959 : vec3<f32> = ((vec3<f32>(x_5954.x, x_5954.x, x_5954.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + vec3<f32>(x_5957.x, x_5957.y, x_5957.z));
    let x_5960 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_5959.x, x_5959.y, x_5959.z, x_5960.w);
    let x_5962 : vec4<f32> = u_xlat8;
    let x_5964 : vec4<f32> = u_xlat9;
    let x_5967 : vec3<f32> = u_xlat33;
    u_xlat33 = ((vec3<f32>(x_5962.x, x_5962.y, x_5962.z) * vec3<f32>(x_5964.x, x_5964.z, x_5964.w)) + x_5967);

    continuing {
      let x_5969 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_5969 + bitcast<u32>(1i));
    }
  }
  let x_5971 : vec4<f32> = u_xlat4;
  let x_5973 : vec3<f32> = u_xlat7;
  let x_5976 : vec3<f32> = u_xlat28;
  u_xlat0 = ((vec3<f32>(x_5971.x, x_5971.y, x_5971.z) * vec3<f32>(x_5973.x, x_5973.x, x_5973.x)) + x_5976);
  let x_5978 : vec3<f32> = u_xlat33;
  let x_5979 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_5978 + x_5979);
  let x_5983 : vec4<f32> = vs_INTERP6;
  let x_5985 : vec3<f32> = u_xlat1;
  let x_5987 : vec3<f32> = u_xlat0;
  let x_5988 : vec3<f32> = ((vec3<f32>(x_5983.w, x_5983.w, x_5983.w) * x_5985) + x_5987);
  let x_5989 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_5988.x, x_5988.y, x_5988.z, x_5989.w);
  let x_5991 : bool = u_xlatb29;
  let x_5992 : f32 = u_xlat79;
  SV_Target0.w = select(1.0f, x_5992, x_5991);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(5) vs_INTERP9_param : vec3<f32>, @location(1) vs_INTERP4_param : vec4<f32>, @location(4) vs_INTERP8_param : vec3<f32>, @location(2) vs_INTERP5_param : vec4<f32>, @location(3) vs_INTERP6_param : vec4<f32>, @location(0) vs_INTERP0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP9 = vs_INTERP9_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP6 = vs_INTERP6_param;
  vs_INTERP0 = vs_INTERP0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


