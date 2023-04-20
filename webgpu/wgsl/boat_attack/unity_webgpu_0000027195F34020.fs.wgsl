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

var<private> u_xlat0 : vec3<f32>;

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

@group(0) @binding(7) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(14) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP5 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

@group(1) @binding(5) var<uniform> x_251 : UnityPerMaterial;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(8) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(15) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat34 : vec3<f32>;

var<private> vs_INTERP6 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_355 : LightShadows;

var<private> u_xlatb79 : bool;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_LinearClampCompare : sampler_comparison;

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

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat81 : f32;

var<private> u_xlat83 : f32;

var<private> u_xlat32 : f32;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlatb58 : vec2<bool>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat84 : f32;

var<private> u_xlat65 : vec2<f32>;

var<private> u_xlat86 : f32;

var<private> u_xlat33 : f32;

var<private> u_xlatb2 : bool;

@group(1) @binding(4) var<uniform> x_3333 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu0 : u32;

var<private> u_xlatu81 : u32;

var<private> u_xlati83 : i32;

var<private> u_xlati81 : i32;

@group(1) @binding(1) var<uniform> x_3796 : AdditionalLights;

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

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_LinearClamp : sampler;

var<private> u_xlat78 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

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
  var x_3282 : f32;
  var x_3401 : f32;
  var x_3412 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_3930 : f32;
  var x_3941 : f32;
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
  var x_5557 : f32;
  var x_5570 : f32;
  var x_5628 : f32;
  var x_5639 : vec3<f32>;
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
  let x_130 : vec3<f32> = u_xlat0;
  let x_132 : vec4<f32> = vs_INTERP4;
  u_xlat2 = (vec3<f32>(x_130.x, x_130.x, x_130.x) * vec3<f32>(x_132.x, x_132.y, x_132.z));
  let x_137 : vec3<f32> = u_xlat26;
  let x_138 : vec3<f32> = u_xlat0;
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
  let x_225 : vec3<f32> = u_xlat0;
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
  let x_287 : vec3<f32> = u_xlat0;
  let x_289 : vec4<f32> = u_xlat9;
  u_xlat34 = (vec3<f32>(x_287.x, x_287.x, x_287.x) * vec3<f32>(x_289.x, x_289.y, x_289.z));
  let x_294 : f32 = vs_INTERP6.y;
  u_xlat0.x = (x_294 * 200.0f);
  let x_299 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_299, 1.0f);
  let x_302 : vec3<f32> = u_xlat0;
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
  let x_342 : vec3<f32> = u_xlat0;
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
  u_xlat26 = (x_1904 * vec3<f32>(x_1905, x_1905, x_1905));
  let x_1909 : f32 = vs_INTERP8.y;
  let x_1911 : f32 = x_147.unity_MatrixV[1i].z;
  u_xlat54 = (x_1909 * x_1911);
  let x_1914 : f32 = x_147.unity_MatrixV[0i].z;
  let x_1916 : f32 = vs_INTERP8.x;
  let x_1918 : f32 = u_xlat54;
  u_xlat54 = ((x_1914 * x_1916) + x_1918);
  let x_1921 : f32 = x_147.unity_MatrixV[2i].z;
  let x_1923 : f32 = vs_INTERP8.z;
  let x_1925 : f32 = u_xlat54;
  u_xlat54 = ((x_1921 * x_1923) + x_1925);
  let x_1927 : f32 = u_xlat54;
  let x_1929 : f32 = x_147.unity_MatrixV[3i].z;
  u_xlat54 = (x_1927 + x_1929);
  let x_1931 : f32 = u_xlat54;
  let x_1934 : f32 = x_147.x_ProjectionParams.y;
  u_xlat54 = (-(x_1931) + -(x_1934));
  let x_1937 : f32 = u_xlat54;
  u_xlat54 = max(x_1937, 0.0f);
  let x_1939 : f32 = u_xlat54;
  let x_1941 : f32 = x_147.unity_FogParams.x;
  u_xlat54 = (x_1939 * x_1941);
  let x_1950 : vec2<f32> = vs_INTERP0;
  let x_1952 : f32 = x_147.x_GlobalMipBias.x;
  let x_1953 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_1950, x_1952);
  u_xlat3 = x_1953;
  let x_1958 : vec2<f32> = vs_INTERP0;
  let x_1960 : f32 = x_147.x_GlobalMipBias.x;
  let x_1961 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_1958, x_1960);
  u_xlat5 = vec3<f32>(x_1961.x, x_1961.y, x_1961.z);
  let x_1963 : vec4<f32> = u_xlat3;
  let x_1966 : vec3<f32> = (vec3<f32>(x_1963.x, x_1963.y, x_1963.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_1967 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1966.x, x_1966.y, x_1966.z, x_1967.w);
  let x_1969 : vec3<f32> = u_xlat26;
  let x_1970 : vec4<f32> = u_xlat3;
  u_xlat80 = dot(x_1969, vec3<f32>(x_1970.x, x_1970.y, x_1970.z));
  let x_1973 : f32 = u_xlat80;
  u_xlat80 = (x_1973 + 0.5f);
  let x_1975 : f32 = u_xlat80;
  let x_1977 : vec3<f32> = u_xlat5;
  let x_1978 : vec3<f32> = (vec3<f32>(x_1975, x_1975, x_1975) * x_1977);
  let x_1979 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1978.x, x_1978.y, x_1978.z, x_1979.w);
  let x_1982 : f32 = u_xlat3.w;
  u_xlat80 = max(x_1982, 0.00009999999747378752f);
  let x_1984 : vec4<f32> = u_xlat3;
  let x_1986 : f32 = u_xlat80;
  let x_1988 : vec3<f32> = (vec3<f32>(x_1984.x, x_1984.y, x_1984.z) / vec3<f32>(x_1986, x_1986, x_1986));
  let x_1989 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1988.x, x_1988.y, x_1988.z, x_1989.w);
  let x_1992 : f32 = u_xlat8.x;
  u_xlat8.x = x_1992;
  let x_1995 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_1995, 0.0f, 1.0f);
  let x_1998 : f32 = u_xlat79;
  u_xlat79 = x_1998;
  let x_1999 : f32 = u_xlat79;
  u_xlat79 = clamp(x_1999, 0.0f, 1.0f);
  let x_2001 : vec4<f32> = u_xlat7;
  u_xlat5 = (vec3<f32>(x_2001.x, x_2001.y, x_2001.z) * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_2007 : f32 = u_xlat8.x;
  u_xlat80 = (-(x_2007) + 1.0f);
  let x_2011 : f32 = u_xlat80;
  let x_2012 : f32 = u_xlat80;
  u_xlat81 = (x_2011 * x_2012);
  let x_2014 : f32 = u_xlat81;
  u_xlat81 = max(x_2014, 0.0078125f);
  let x_2017 : f32 = u_xlat81;
  let x_2018 : f32 = u_xlat81;
  u_xlat82 = (x_2017 * x_2018);
  let x_2022 : f32 = u_xlat8.x;
  u_xlat83 = (x_2022 + 0.04000002145767211914f);
  let x_2025 : f32 = u_xlat83;
  u_xlat83 = min(x_2025, 1.0f);
  let x_2027 : f32 = u_xlat81;
  u_xlat6.x = ((x_2027 * 4.0f) + 2.0f);
  let x_2034 : f32 = vs_INTERP6.w;
  u_xlat32 = min(x_2034, 1.0f);
  let x_2036 : bool = u_xlatb0;
  if (x_2036) {
    let x_2040 : f32 = x_355.x_MainLightShadowParams.y;
    u_xlatb0 = (x_2040 == 1.0f);
    let x_2042 : bool = u_xlatb0;
    if (x_2042) {
      let x_2046 : vec4<f32> = vs_INTERP3;
      let x_2049 : vec4<f32> = x_355.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_2046.x, x_2046.y, x_2046.x, x_2046.y) + x_2049);
      let x_2052 : vec4<f32> = u_xlat7;
      let x_2053 : vec2<f32> = vec2<f32>(x_2052.x, x_2052.y);
      let x_2055 : f32 = vs_INTERP3.z;
      txVec30 = vec3<f32>(x_2053.x, x_2053.y, x_2055);
      let x_2062 : vec3<f32> = txVec30;
      let x_2064 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2062.xy, x_2062.z);
      u_xlat8.x = x_2064;
      let x_2067 : vec4<f32> = u_xlat7;
      let x_2068 : vec2<f32> = vec2<f32>(x_2067.z, x_2067.w);
      let x_2070 : f32 = vs_INTERP3.z;
      txVec31 = vec3<f32>(x_2068.x, x_2068.y, x_2070);
      let x_2077 : vec3<f32> = txVec31;
      let x_2079 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2077.xy, x_2077.z);
      u_xlat8.y = x_2079;
      let x_2081 : vec4<f32> = vs_INTERP3;
      let x_2084 : vec4<f32> = x_355.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_2081.x, x_2081.y, x_2081.x, x_2081.y) + x_2084);
      let x_2087 : vec4<f32> = u_xlat7;
      let x_2088 : vec2<f32> = vec2<f32>(x_2087.x, x_2087.y);
      let x_2090 : f32 = vs_INTERP3.z;
      txVec32 = vec3<f32>(x_2088.x, x_2088.y, x_2090);
      let x_2097 : vec3<f32> = txVec32;
      let x_2099 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2097.xy, x_2097.z);
      u_xlat8.z = x_2099;
      let x_2102 : vec4<f32> = u_xlat7;
      let x_2103 : vec2<f32> = vec2<f32>(x_2102.z, x_2102.w);
      let x_2105 : f32 = vs_INTERP3.z;
      txVec33 = vec3<f32>(x_2103.x, x_2103.y, x_2105);
      let x_2112 : vec3<f32> = txVec33;
      let x_2114 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2112.xy, x_2112.z);
      u_xlat8.w = x_2114;
      let x_2116 : vec4<f32> = u_xlat8;
      u_xlat0.x = dot(x_2116, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_2122 : f32 = x_355.x_MainLightShadowParams.y;
      u_xlatb58.x = (x_2122 == 2.0f);
      let x_2126 : bool = u_xlatb58.x;
      if (x_2126) {
        let x_2130 : vec4<f32> = vs_INTERP3;
        let x_2133 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        u_xlat58 = ((vec2<f32>(x_2130.x, x_2130.y) * vec2<f32>(x_2133.z, x_2133.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2137 : vec2<f32> = u_xlat58;
        u_xlat58 = floor(x_2137);
        let x_2139 : vec4<f32> = vs_INTERP3;
        let x_2142 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_2145 : vec2<f32> = u_xlat58;
        let x_2147 : vec2<f32> = ((vec2<f32>(x_2139.x, x_2139.y) * vec2<f32>(x_2142.z, x_2142.w)) + -(x_2145));
        let x_2148 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2147.x, x_2147.y, x_2148.z, x_2148.w);
        let x_2150 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_2150.x, x_2150.x, x_2150.y, x_2150.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2153 : vec4<f32> = u_xlat8;
        let x_2155 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2153.x, x_2153.x, x_2153.z, x_2153.z) * vec4<f32>(x_2155.x, x_2155.x, x_2155.z, x_2155.z));
        let x_2159 : vec4<f32> = u_xlat9;
        u_xlat59 = (vec2<f32>(x_2159.y, x_2159.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_2162 : vec4<f32> = u_xlat9;
        let x_2165 : vec4<f32> = u_xlat7;
        let x_2168 : vec2<f32> = ((vec2<f32>(x_2162.x, x_2162.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2165.x, x_2165.y)));
        let x_2169 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2168.x, x_2169.y, x_2168.y, x_2169.w);
        let x_2171 : vec4<f32> = u_xlat7;
        let x_2174 : vec2<f32> = (-(vec2<f32>(x_2171.x, x_2171.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2175 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2174.x, x_2174.y, x_2175.z, x_2175.w);
        let x_2178 : vec4<f32> = u_xlat7;
        u_xlat61 = min(vec2<f32>(x_2178.x, x_2178.y), vec2<f32>(0.0f, 0.0f));
        let x_2181 : vec2<f32> = u_xlat61;
        let x_2183 : vec2<f32> = u_xlat61;
        let x_2185 : vec4<f32> = u_xlat9;
        u_xlat61 = ((-(x_2181) * x_2183) + vec2<f32>(x_2185.x, x_2185.y));
        let x_2188 : vec4<f32> = u_xlat7;
        let x_2190 : vec2<f32> = max(vec2<f32>(x_2188.x, x_2188.y), vec2<f32>(0.0f, 0.0f));
        let x_2191 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2190.x, x_2190.y, x_2191.z, x_2191.w);
        let x_2193 : vec4<f32> = u_xlat7;
        let x_2196 : vec4<f32> = u_xlat7;
        let x_2199 : vec4<f32> = u_xlat8;
        let x_2201 : vec2<f32> = ((-(vec2<f32>(x_2193.x, x_2193.y)) * vec2<f32>(x_2196.x, x_2196.y)) + vec2<f32>(x_2199.y, x_2199.w));
        let x_2202 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2201.x, x_2201.y, x_2202.z, x_2202.w);
        let x_2204 : vec2<f32> = u_xlat61;
        u_xlat61 = (x_2204 + vec2<f32>(1.0f, 1.0f));
        let x_2206 : vec4<f32> = u_xlat7;
        let x_2208 : vec2<f32> = (vec2<f32>(x_2206.x, x_2206.y) + vec2<f32>(1.0f, 1.0f));
        let x_2209 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2208.x, x_2208.y, x_2209.z, x_2209.w);
        let x_2211 : vec4<f32> = u_xlat8;
        let x_2213 : vec2<f32> = (vec2<f32>(x_2211.x, x_2211.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2214 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2213.x, x_2213.y, x_2214.z, x_2214.w);
        let x_2216 : vec4<f32> = u_xlat9;
        let x_2218 : vec2<f32> = (vec2<f32>(x_2216.x, x_2216.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2219 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2218.x, x_2218.y, x_2219.z, x_2219.w);
        let x_2221 : vec2<f32> = u_xlat61;
        let x_2222 : vec2<f32> = (x_2221 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2223 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2222.x, x_2222.y, x_2223.z, x_2223.w);
        let x_2225 : vec4<f32> = u_xlat7;
        let x_2227 : vec2<f32> = (vec2<f32>(x_2225.x, x_2225.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2228 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2227.x, x_2227.y, x_2228.z, x_2228.w);
        let x_2230 : vec4<f32> = u_xlat8;
        let x_2232 : vec2<f32> = (vec2<f32>(x_2230.y, x_2230.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2233 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2232.x, x_2232.y, x_2233.z, x_2233.w);
        let x_2236 : f32 = u_xlat9.x;
        u_xlat10.z = x_2236;
        let x_2239 : f32 = u_xlat7.x;
        u_xlat10.w = x_2239;
        let x_2242 : f32 = u_xlat12.x;
        u_xlat11.z = x_2242;
        let x_2245 : f32 = u_xlat59.x;
        u_xlat11.w = x_2245;
        let x_2247 : vec4<f32> = u_xlat10;
        let x_2249 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_2247.z, x_2247.w, x_2247.x, x_2247.z) + vec4<f32>(x_2249.z, x_2249.w, x_2249.x, x_2249.z));
        let x_2253 : f32 = u_xlat10.y;
        u_xlat9.z = x_2253;
        let x_2256 : f32 = u_xlat7.y;
        u_xlat9.w = x_2256;
        let x_2259 : f32 = u_xlat11.y;
        u_xlat12.z = x_2259;
        let x_2262 : f32 = u_xlat59.y;
        u_xlat12.w = x_2262;
        let x_2264 : vec4<f32> = u_xlat9;
        let x_2266 : vec4<f32> = u_xlat12;
        let x_2268 : vec3<f32> = (vec3<f32>(x_2264.z, x_2264.y, x_2264.w) + vec3<f32>(x_2266.z, x_2266.y, x_2266.w));
        let x_2269 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2268.x, x_2268.y, x_2268.z, x_2269.w);
        let x_2271 : vec4<f32> = u_xlat11;
        let x_2273 : vec4<f32> = u_xlat8;
        let x_2275 : vec3<f32> = (vec3<f32>(x_2271.x, x_2271.z, x_2271.w) / vec3<f32>(x_2273.z, x_2273.w, x_2273.y));
        let x_2276 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2275.x, x_2275.y, x_2275.z, x_2276.w);
        let x_2278 : vec4<f32> = u_xlat9;
        let x_2280 : vec3<f32> = (vec3<f32>(x_2278.x, x_2278.y, x_2278.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2281 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2280.x, x_2280.y, x_2280.z, x_2281.w);
        let x_2283 : vec4<f32> = u_xlat12;
        let x_2285 : vec4<f32> = u_xlat7;
        let x_2287 : vec3<f32> = (vec3<f32>(x_2283.z, x_2283.y, x_2283.w) / vec3<f32>(x_2285.x, x_2285.y, x_2285.z));
        let x_2288 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2287.x, x_2287.y, x_2287.z, x_2288.w);
        let x_2290 : vec4<f32> = u_xlat10;
        let x_2292 : vec3<f32> = (vec3<f32>(x_2290.x, x_2290.y, x_2290.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2293 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2292.x, x_2292.y, x_2292.z, x_2293.w);
        let x_2295 : vec4<f32> = u_xlat9;
        let x_2298 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_2300 : vec3<f32> = (vec3<f32>(x_2295.y, x_2295.x, x_2295.z) * vec3<f32>(x_2298.x, x_2298.x, x_2298.x));
        let x_2301 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2300.x, x_2300.y, x_2300.z, x_2301.w);
        let x_2303 : vec4<f32> = u_xlat10;
        let x_2306 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_2308 : vec3<f32> = (vec3<f32>(x_2303.x, x_2303.y, x_2303.z) * vec3<f32>(x_2306.y, x_2306.y, x_2306.y));
        let x_2309 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2308.x, x_2308.y, x_2308.z, x_2309.w);
        let x_2312 : f32 = u_xlat10.x;
        u_xlat9.w = x_2312;
        let x_2314 : vec2<f32> = u_xlat58;
        let x_2317 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_2320 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_2314.x, x_2314.y, x_2314.x, x_2314.y) * vec4<f32>(x_2317.x, x_2317.y, x_2317.x, x_2317.y)) + vec4<f32>(x_2320.y, x_2320.w, x_2320.x, x_2320.w));
        let x_2323 : vec2<f32> = u_xlat58;
        let x_2325 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_2328 : vec4<f32> = u_xlat9;
        let x_2330 : vec2<f32> = ((x_2323 * vec2<f32>(x_2325.x, x_2325.y)) + vec2<f32>(x_2328.z, x_2328.w));
        let x_2331 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2330.x, x_2330.y, x_2331.z, x_2331.w);
        let x_2334 : f32 = u_xlat9.y;
        u_xlat10.w = x_2334;
        let x_2336 : vec4<f32> = u_xlat10;
        let x_2337 : vec2<f32> = vec2<f32>(x_2336.y, x_2336.z);
        let x_2338 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2338.x, x_2337.x, x_2338.z, x_2337.y);
        let x_2340 : vec2<f32> = u_xlat58;
        let x_2343 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_2346 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_2340.x, x_2340.y, x_2340.x, x_2340.y) * vec4<f32>(x_2343.x, x_2343.y, x_2343.x, x_2343.y)) + vec4<f32>(x_2346.x, x_2346.y, x_2346.z, x_2346.y));
        let x_2349 : vec2<f32> = u_xlat58;
        let x_2352 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_2355 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_2349.x, x_2349.y, x_2349.x, x_2349.y) * vec4<f32>(x_2352.x, x_2352.y, x_2352.x, x_2352.y)) + vec4<f32>(x_2355.w, x_2355.y, x_2355.w, x_2355.z));
        let x_2358 : vec2<f32> = u_xlat58;
        let x_2361 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_2364 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_2358.x, x_2358.y, x_2358.x, x_2358.y) * vec4<f32>(x_2361.x, x_2361.y, x_2361.x, x_2361.y)) + vec4<f32>(x_2364.x, x_2364.w, x_2364.z, x_2364.w));
        let x_2367 : vec4<f32> = u_xlat7;
        let x_2369 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_2367.x, x_2367.x, x_2367.x, x_2367.y) * vec4<f32>(x_2369.z, x_2369.w, x_2369.y, x_2369.z));
        let x_2372 : vec4<f32> = u_xlat7;
        let x_2374 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_2372.y, x_2372.y, x_2372.z, x_2372.z) * x_2374);
        let x_2377 : f32 = u_xlat7.z;
        let x_2379 : f32 = u_xlat8.y;
        u_xlat58.x = (x_2377 * x_2379);
        let x_2383 : vec4<f32> = u_xlat11;
        let x_2384 : vec2<f32> = vec2<f32>(x_2383.x, x_2383.y);
        let x_2386 : f32 = vs_INTERP3.z;
        txVec34 = vec3<f32>(x_2384.x, x_2384.y, x_2386);
        let x_2394 : vec3<f32> = txVec34;
        let x_2396 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2394.xy, x_2394.z);
        u_xlat84 = x_2396;
        let x_2398 : vec4<f32> = u_xlat11;
        let x_2399 : vec2<f32> = vec2<f32>(x_2398.z, x_2398.w);
        let x_2401 : f32 = vs_INTERP3.z;
        txVec35 = vec3<f32>(x_2399.x, x_2399.y, x_2401);
        let x_2408 : vec3<f32> = txVec35;
        let x_2410 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2408.xy, x_2408.z);
        u_xlat7.x = x_2410;
        let x_2413 : f32 = u_xlat7.x;
        let x_2415 : f32 = u_xlat14.y;
        u_xlat7.x = (x_2413 * x_2415);
        let x_2419 : f32 = u_xlat14.x;
        let x_2420 : f32 = u_xlat84;
        let x_2423 : f32 = u_xlat7.x;
        u_xlat84 = ((x_2419 * x_2420) + x_2423);
        let x_2426 : vec4<f32> = u_xlat12;
        let x_2427 : vec2<f32> = vec2<f32>(x_2426.x, x_2426.y);
        let x_2429 : f32 = vs_INTERP3.z;
        txVec36 = vec3<f32>(x_2427.x, x_2427.y, x_2429);
        let x_2436 : vec3<f32> = txVec36;
        let x_2438 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2436.xy, x_2436.z);
        u_xlat7.x = x_2438;
        let x_2441 : f32 = u_xlat14.z;
        let x_2443 : f32 = u_xlat7.x;
        let x_2445 : f32 = u_xlat84;
        u_xlat84 = ((x_2441 * x_2443) + x_2445);
        let x_2448 : vec4<f32> = u_xlat10;
        let x_2449 : vec2<f32> = vec2<f32>(x_2448.x, x_2448.y);
        let x_2451 : f32 = vs_INTERP3.z;
        txVec37 = vec3<f32>(x_2449.x, x_2449.y, x_2451);
        let x_2458 : vec3<f32> = txVec37;
        let x_2460 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2458.xy, x_2458.z);
        u_xlat7.x = x_2460;
        let x_2463 : f32 = u_xlat14.w;
        let x_2465 : f32 = u_xlat7.x;
        let x_2467 : f32 = u_xlat84;
        u_xlat84 = ((x_2463 * x_2465) + x_2467);
        let x_2470 : vec4<f32> = u_xlat13;
        let x_2471 : vec2<f32> = vec2<f32>(x_2470.x, x_2470.y);
        let x_2473 : f32 = vs_INTERP3.z;
        txVec38 = vec3<f32>(x_2471.x, x_2471.y, x_2473);
        let x_2480 : vec3<f32> = txVec38;
        let x_2482 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2480.xy, x_2480.z);
        u_xlat7.x = x_2482;
        let x_2485 : f32 = u_xlat15.x;
        let x_2487 : f32 = u_xlat7.x;
        let x_2489 : f32 = u_xlat84;
        u_xlat84 = ((x_2485 * x_2487) + x_2489);
        let x_2492 : vec4<f32> = u_xlat13;
        let x_2493 : vec2<f32> = vec2<f32>(x_2492.z, x_2492.w);
        let x_2495 : f32 = vs_INTERP3.z;
        txVec39 = vec3<f32>(x_2493.x, x_2493.y, x_2495);
        let x_2502 : vec3<f32> = txVec39;
        let x_2504 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2502.xy, x_2502.z);
        u_xlat7.x = x_2504;
        let x_2507 : f32 = u_xlat15.y;
        let x_2509 : f32 = u_xlat7.x;
        let x_2511 : f32 = u_xlat84;
        u_xlat84 = ((x_2507 * x_2509) + x_2511);
        let x_2514 : vec4<f32> = u_xlat10;
        let x_2515 : vec2<f32> = vec2<f32>(x_2514.z, x_2514.w);
        let x_2517 : f32 = vs_INTERP3.z;
        txVec40 = vec3<f32>(x_2515.x, x_2515.y, x_2517);
        let x_2524 : vec3<f32> = txVec40;
        let x_2526 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2524.xy, x_2524.z);
        u_xlat7.x = x_2526;
        let x_2529 : f32 = u_xlat15.z;
        let x_2531 : f32 = u_xlat7.x;
        let x_2533 : f32 = u_xlat84;
        u_xlat84 = ((x_2529 * x_2531) + x_2533);
        let x_2536 : vec4<f32> = u_xlat9;
        let x_2537 : vec2<f32> = vec2<f32>(x_2536.x, x_2536.y);
        let x_2539 : f32 = vs_INTERP3.z;
        txVec41 = vec3<f32>(x_2537.x, x_2537.y, x_2539);
        let x_2546 : vec3<f32> = txVec41;
        let x_2548 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2546.xy, x_2546.z);
        u_xlat7.x = x_2548;
        let x_2551 : f32 = u_xlat15.w;
        let x_2553 : f32 = u_xlat7.x;
        let x_2555 : f32 = u_xlat84;
        u_xlat84 = ((x_2551 * x_2553) + x_2555);
        let x_2558 : vec4<f32> = u_xlat9;
        let x_2559 : vec2<f32> = vec2<f32>(x_2558.z, x_2558.w);
        let x_2561 : f32 = vs_INTERP3.z;
        txVec42 = vec3<f32>(x_2559.x, x_2559.y, x_2561);
        let x_2568 : vec3<f32> = txVec42;
        let x_2570 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2568.xy, x_2568.z);
        u_xlat7.x = x_2570;
        let x_2573 : f32 = u_xlat58.x;
        let x_2575 : f32 = u_xlat7.x;
        let x_2577 : f32 = u_xlat84;
        u_xlat0.x = ((x_2573 * x_2575) + x_2577);
      } else {
        let x_2581 : vec4<f32> = vs_INTERP3;
        let x_2584 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        u_xlat58 = ((vec2<f32>(x_2581.x, x_2581.y) * vec2<f32>(x_2584.z, x_2584.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2588 : vec2<f32> = u_xlat58;
        u_xlat58 = floor(x_2588);
        let x_2590 : vec4<f32> = vs_INTERP3;
        let x_2593 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_2596 : vec2<f32> = u_xlat58;
        let x_2598 : vec2<f32> = ((vec2<f32>(x_2590.x, x_2590.y) * vec2<f32>(x_2593.z, x_2593.w)) + -(x_2596));
        let x_2599 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2598.x, x_2598.y, x_2599.z, x_2599.w);
        let x_2601 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_2601.x, x_2601.x, x_2601.y, x_2601.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2604 : vec4<f32> = u_xlat8;
        let x_2606 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2604.x, x_2604.x, x_2604.z, x_2604.z) * vec4<f32>(x_2606.x, x_2606.x, x_2606.z, x_2606.z));
        let x_2609 : vec4<f32> = u_xlat9;
        let x_2611 : vec2<f32> = (vec2<f32>(x_2609.y, x_2609.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_2612 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2612.x, x_2611.x, x_2612.z, x_2611.y);
        let x_2614 : vec4<f32> = u_xlat9;
        let x_2617 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_2614.x, x_2614.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2617.x, x_2617.y)));
        let x_2621 : vec4<f32> = u_xlat7;
        let x_2624 : vec2<f32> = (-(vec2<f32>(x_2621.x, x_2621.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2625 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2624.x, x_2625.y, x_2624.y, x_2625.w);
        let x_2627 : vec4<f32> = u_xlat7;
        let x_2629 : vec2<f32> = min(vec2<f32>(x_2627.x, x_2627.y), vec2<f32>(0.0f, 0.0f));
        let x_2630 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2629.x, x_2629.y, x_2630.z, x_2630.w);
        let x_2632 : vec4<f32> = u_xlat9;
        let x_2635 : vec4<f32> = u_xlat9;
        let x_2638 : vec4<f32> = u_xlat8;
        let x_2640 : vec2<f32> = ((-(vec2<f32>(x_2632.x, x_2632.y)) * vec2<f32>(x_2635.x, x_2635.y)) + vec2<f32>(x_2638.x, x_2638.z));
        let x_2641 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2640.x, x_2641.y, x_2640.y, x_2641.w);
        let x_2643 : vec4<f32> = u_xlat7;
        let x_2645 : vec2<f32> = max(vec2<f32>(x_2643.x, x_2643.y), vec2<f32>(0.0f, 0.0f));
        let x_2646 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2645.x, x_2645.y, x_2646.z, x_2646.w);
        let x_2648 : vec4<f32> = u_xlat9;
        let x_2651 : vec4<f32> = u_xlat9;
        let x_2654 : vec4<f32> = u_xlat8;
        let x_2656 : vec2<f32> = ((-(vec2<f32>(x_2648.x, x_2648.y)) * vec2<f32>(x_2651.x, x_2651.y)) + vec2<f32>(x_2654.y, x_2654.w));
        let x_2657 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2657.x, x_2656.x, x_2657.z, x_2656.y);
        let x_2659 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_2659 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_2662 : f32 = u_xlat8.y;
        u_xlat9.z = (x_2662 * 0.08163200318813323975f);
        let x_2665 : vec2<f32> = u_xlat59;
        let x_2667 : vec2<f32> = (vec2<f32>(x_2665.y, x_2665.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2668 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2667.x, x_2667.y, x_2668.z, x_2668.w);
        let x_2670 : vec4<f32> = u_xlat8;
        u_xlat59 = (vec2<f32>(x_2670.x, x_2670.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2674 : f32 = u_xlat8.w;
        u_xlat11.z = (x_2674 * 0.08163200318813323975f);
        let x_2678 : f32 = u_xlat11.y;
        u_xlat9.x = x_2678;
        let x_2680 : vec4<f32> = u_xlat7;
        let x_2683 : vec2<f32> = ((vec2<f32>(x_2680.x, x_2680.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2684 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2684.x, x_2683.x, x_2684.z, x_2683.y);
        let x_2686 : vec4<f32> = u_xlat7;
        let x_2689 : vec2<f32> = ((vec2<f32>(x_2686.x, x_2686.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2690 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2689.x, x_2690.y, x_2689.y, x_2690.w);
        let x_2693 : f32 = u_xlat59.x;
        u_xlat8.y = x_2693;
        let x_2696 : f32 = u_xlat10.y;
        u_xlat8.w = x_2696;
        let x_2698 : vec4<f32> = u_xlat8;
        let x_2699 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_2698 + x_2699);
        let x_2701 : vec4<f32> = u_xlat7;
        let x_2704 : vec2<f32> = ((vec2<f32>(x_2701.y, x_2701.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2705 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2705.x, x_2704.x, x_2705.z, x_2704.y);
        let x_2707 : vec4<f32> = u_xlat7;
        let x_2710 : vec2<f32> = ((vec2<f32>(x_2707.y, x_2707.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2711 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2710.x, x_2711.y, x_2710.y, x_2711.w);
        let x_2714 : f32 = u_xlat59.y;
        u_xlat10.y = x_2714;
        let x_2716 : vec4<f32> = u_xlat10;
        let x_2717 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_2716 + x_2717);
        let x_2719 : vec4<f32> = u_xlat8;
        let x_2720 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_2719 / x_2720);
        let x_2722 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_2722 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2724 : vec4<f32> = u_xlat10;
        let x_2725 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_2724 / x_2725);
        let x_2727 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_2727 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2729 : vec4<f32> = u_xlat8;
        let x_2732 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_2729.w, x_2729.x, x_2729.y, x_2729.z) * vec4<f32>(x_2732.x, x_2732.x, x_2732.x, x_2732.x));
        let x_2735 : vec4<f32> = u_xlat10;
        let x_2738 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_2735.x, x_2735.w, x_2735.y, x_2735.z) * vec4<f32>(x_2738.y, x_2738.y, x_2738.y, x_2738.y));
        let x_2741 : vec4<f32> = u_xlat8;
        let x_2742 : vec3<f32> = vec3<f32>(x_2741.y, x_2741.z, x_2741.w);
        let x_2743 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2742.x, x_2743.y, x_2742.y, x_2742.z);
        let x_2746 : f32 = u_xlat10.x;
        u_xlat11.y = x_2746;
        let x_2748 : vec2<f32> = u_xlat58;
        let x_2751 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_2754 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_2748.x, x_2748.y, x_2748.x, x_2748.y) * vec4<f32>(x_2751.x, x_2751.y, x_2751.x, x_2751.y)) + vec4<f32>(x_2754.x, x_2754.y, x_2754.z, x_2754.y));
        let x_2757 : vec2<f32> = u_xlat58;
        let x_2759 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_2762 : vec4<f32> = u_xlat11;
        let x_2764 : vec2<f32> = ((x_2757 * vec2<f32>(x_2759.x, x_2759.y)) + vec2<f32>(x_2762.w, x_2762.y));
        let x_2765 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_2764.x, x_2764.y, x_2765.z, x_2765.w);
        let x_2768 : f32 = u_xlat11.y;
        u_xlat8.y = x_2768;
        let x_2771 : f32 = u_xlat10.z;
        u_xlat11.y = x_2771;
        let x_2773 : vec2<f32> = u_xlat58;
        let x_2776 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_2779 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_2773.x, x_2773.y, x_2773.x, x_2773.y) * vec4<f32>(x_2776.x, x_2776.y, x_2776.x, x_2776.y)) + vec4<f32>(x_2779.x, x_2779.y, x_2779.z, x_2779.y));
        let x_2783 : vec2<f32> = u_xlat58;
        let x_2785 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_2788 : vec4<f32> = u_xlat11;
        u_xlat65 = ((x_2783 * vec2<f32>(x_2785.x, x_2785.y)) + vec2<f32>(x_2788.w, x_2788.y));
        let x_2792 : f32 = u_xlat11.y;
        u_xlat8.z = x_2792;
        let x_2794 : vec2<f32> = u_xlat58;
        let x_2797 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_2800 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_2794.x, x_2794.y, x_2794.x, x_2794.y) * vec4<f32>(x_2797.x, x_2797.y, x_2797.x, x_2797.y)) + vec4<f32>(x_2800.x, x_2800.y, x_2800.x, x_2800.z));
        let x_2804 : f32 = u_xlat10.w;
        u_xlat11.y = x_2804;
        let x_2806 : vec2<f32> = u_xlat58;
        let x_2809 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_2812 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_2806.x, x_2806.y, x_2806.x, x_2806.y) * vec4<f32>(x_2809.x, x_2809.y, x_2809.x, x_2809.y)) + vec4<f32>(x_2812.x, x_2812.y, x_2812.z, x_2812.y));
        let x_2815 : vec2<f32> = u_xlat58;
        let x_2817 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_2820 : vec4<f32> = u_xlat11;
        let x_2822 : vec2<f32> = ((x_2815 * vec2<f32>(x_2817.x, x_2817.y)) + vec2<f32>(x_2820.w, x_2820.y));
        let x_2823 : vec3<f32> = u_xlat34;
        u_xlat34 = vec3<f32>(x_2822.x, x_2822.y, x_2823.z);
        let x_2826 : f32 = u_xlat11.y;
        u_xlat8.w = x_2826;
        let x_2828 : vec2<f32> = u_xlat58;
        let x_2830 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_2833 : vec4<f32> = u_xlat8;
        let x_2835 : vec2<f32> = ((x_2828 * vec2<f32>(x_2830.x, x_2830.y)) + vec2<f32>(x_2833.x, x_2833.w));
        let x_2836 : vec4<f32> = u_xlat17;
        u_xlat17 = vec4<f32>(x_2835.x, x_2835.y, x_2836.z, x_2836.w);
        let x_2838 : vec4<f32> = u_xlat11;
        let x_2839 : vec3<f32> = vec3<f32>(x_2838.x, x_2838.z, x_2838.w);
        let x_2840 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2839.x, x_2840.y, x_2839.y, x_2839.z);
        let x_2842 : vec2<f32> = u_xlat58;
        let x_2845 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_2848 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_2842.x, x_2842.y, x_2842.x, x_2842.y) * vec4<f32>(x_2845.x, x_2845.y, x_2845.x, x_2845.y)) + vec4<f32>(x_2848.x, x_2848.y, x_2848.z, x_2848.y));
        let x_2851 : vec2<f32> = u_xlat58;
        let x_2853 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_2856 : vec4<f32> = u_xlat10;
        u_xlat62 = ((x_2851 * vec2<f32>(x_2853.x, x_2853.y)) + vec2<f32>(x_2856.w, x_2856.y));
        let x_2860 : f32 = u_xlat8.x;
        u_xlat10.x = x_2860;
        let x_2862 : vec2<f32> = u_xlat58;
        let x_2864 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_2867 : vec4<f32> = u_xlat10;
        u_xlat58 = ((x_2862 * vec2<f32>(x_2864.x, x_2864.y)) + vec2<f32>(x_2867.x, x_2867.y));
        let x_2870 : vec4<f32> = u_xlat7;
        let x_2872 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_2870.x, x_2870.x, x_2870.x, x_2870.x) * x_2872);
        let x_2874 : vec4<f32> = u_xlat7;
        let x_2876 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_2874.y, x_2874.y, x_2874.y, x_2874.y) * x_2876);
        let x_2878 : vec4<f32> = u_xlat7;
        let x_2880 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_2878.z, x_2878.z, x_2878.z, x_2878.z) * x_2880);
        let x_2882 : vec4<f32> = u_xlat7;
        let x_2884 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_2882.w, x_2882.w, x_2882.w, x_2882.w) * x_2884);
        let x_2887 : vec4<f32> = u_xlat12;
        let x_2888 : vec2<f32> = vec2<f32>(x_2887.x, x_2887.y);
        let x_2890 : f32 = vs_INTERP3.z;
        txVec43 = vec3<f32>(x_2888.x, x_2888.y, x_2890);
        let x_2897 : vec3<f32> = txVec43;
        let x_2899 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2897.xy, x_2897.z);
        u_xlat8.x = x_2899;
        let x_2902 : vec4<f32> = u_xlat12;
        let x_2903 : vec2<f32> = vec2<f32>(x_2902.z, x_2902.w);
        let x_2905 : f32 = vs_INTERP3.z;
        txVec44 = vec3<f32>(x_2903.x, x_2903.y, x_2905);
        let x_2913 : vec3<f32> = txVec44;
        let x_2915 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2913.xy, x_2913.z);
        u_xlat86 = x_2915;
        let x_2916 : f32 = u_xlat86;
        let x_2918 : f32 = u_xlat18.y;
        u_xlat86 = (x_2916 * x_2918);
        let x_2921 : f32 = u_xlat18.x;
        let x_2923 : f32 = u_xlat8.x;
        let x_2925 : f32 = u_xlat86;
        u_xlat8.x = ((x_2921 * x_2923) + x_2925);
        let x_2929 : vec4<f32> = u_xlat13;
        let x_2930 : vec2<f32> = vec2<f32>(x_2929.x, x_2929.y);
        let x_2932 : f32 = vs_INTERP3.z;
        txVec45 = vec3<f32>(x_2930.x, x_2930.y, x_2932);
        let x_2939 : vec3<f32> = txVec45;
        let x_2941 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2939.xy, x_2939.z);
        u_xlat86 = x_2941;
        let x_2943 : f32 = u_xlat18.z;
        let x_2944 : f32 = u_xlat86;
        let x_2947 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2943 * x_2944) + x_2947);
        let x_2951 : vec4<f32> = u_xlat15;
        let x_2952 : vec2<f32> = vec2<f32>(x_2951.x, x_2951.y);
        let x_2954 : f32 = vs_INTERP3.z;
        txVec46 = vec3<f32>(x_2952.x, x_2952.y, x_2954);
        let x_2961 : vec3<f32> = txVec46;
        let x_2963 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2961.xy, x_2961.z);
        u_xlat86 = x_2963;
        let x_2965 : f32 = u_xlat18.w;
        let x_2966 : f32 = u_xlat86;
        let x_2969 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2965 * x_2966) + x_2969);
        let x_2973 : vec4<f32> = u_xlat14;
        let x_2974 : vec2<f32> = vec2<f32>(x_2973.x, x_2973.y);
        let x_2976 : f32 = vs_INTERP3.z;
        txVec47 = vec3<f32>(x_2974.x, x_2974.y, x_2976);
        let x_2983 : vec3<f32> = txVec47;
        let x_2985 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2983.xy, x_2983.z);
        u_xlat86 = x_2985;
        let x_2987 : f32 = u_xlat19.x;
        let x_2988 : f32 = u_xlat86;
        let x_2991 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2987 * x_2988) + x_2991);
        let x_2995 : vec4<f32> = u_xlat14;
        let x_2996 : vec2<f32> = vec2<f32>(x_2995.z, x_2995.w);
        let x_2998 : f32 = vs_INTERP3.z;
        txVec48 = vec3<f32>(x_2996.x, x_2996.y, x_2998);
        let x_3005 : vec3<f32> = txVec48;
        let x_3007 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3005.xy, x_3005.z);
        u_xlat86 = x_3007;
        let x_3009 : f32 = u_xlat19.y;
        let x_3010 : f32 = u_xlat86;
        let x_3013 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_3009 * x_3010) + x_3013);
        let x_3017 : vec2<f32> = u_xlat65;
        let x_3019 : f32 = vs_INTERP3.z;
        txVec49 = vec3<f32>(x_3017.x, x_3017.y, x_3019);
        let x_3026 : vec3<f32> = txVec49;
        let x_3028 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3026.xy, x_3026.z);
        u_xlat86 = x_3028;
        let x_3030 : f32 = u_xlat19.z;
        let x_3031 : f32 = u_xlat86;
        let x_3034 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_3030 * x_3031) + x_3034);
        let x_3038 : vec4<f32> = u_xlat15;
        let x_3039 : vec2<f32> = vec2<f32>(x_3038.z, x_3038.w);
        let x_3041 : f32 = vs_INTERP3.z;
        txVec50 = vec3<f32>(x_3039.x, x_3039.y, x_3041);
        let x_3048 : vec3<f32> = txVec50;
        let x_3050 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3048.xy, x_3048.z);
        u_xlat86 = x_3050;
        let x_3052 : f32 = u_xlat19.w;
        let x_3053 : f32 = u_xlat86;
        let x_3056 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_3052 * x_3053) + x_3056);
        let x_3060 : vec4<f32> = u_xlat16;
        let x_3061 : vec2<f32> = vec2<f32>(x_3060.x, x_3060.y);
        let x_3063 : f32 = vs_INTERP3.z;
        txVec51 = vec3<f32>(x_3061.x, x_3061.y, x_3063);
        let x_3070 : vec3<f32> = txVec51;
        let x_3072 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3070.xy, x_3070.z);
        u_xlat86 = x_3072;
        let x_3074 : f32 = u_xlat20.x;
        let x_3075 : f32 = u_xlat86;
        let x_3078 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_3074 * x_3075) + x_3078);
        let x_3082 : vec4<f32> = u_xlat16;
        let x_3083 : vec2<f32> = vec2<f32>(x_3082.z, x_3082.w);
        let x_3085 : f32 = vs_INTERP3.z;
        txVec52 = vec3<f32>(x_3083.x, x_3083.y, x_3085);
        let x_3092 : vec3<f32> = txVec52;
        let x_3094 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3092.xy, x_3092.z);
        u_xlat86 = x_3094;
        let x_3096 : f32 = u_xlat20.y;
        let x_3097 : f32 = u_xlat86;
        let x_3100 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_3096 * x_3097) + x_3100);
        let x_3104 : vec3<f32> = u_xlat34;
        let x_3105 : vec2<f32> = vec2<f32>(x_3104.x, x_3104.y);
        let x_3107 : f32 = vs_INTERP3.z;
        txVec53 = vec3<f32>(x_3105.x, x_3105.y, x_3107);
        let x_3114 : vec3<f32> = txVec53;
        let x_3116 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3114.xy, x_3114.z);
        u_xlat34.x = x_3116;
        let x_3119 : f32 = u_xlat20.z;
        let x_3121 : f32 = u_xlat34.x;
        let x_3124 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_3119 * x_3121) + x_3124);
        let x_3128 : vec4<f32> = u_xlat17;
        let x_3129 : vec2<f32> = vec2<f32>(x_3128.x, x_3128.y);
        let x_3131 : f32 = vs_INTERP3.z;
        txVec54 = vec3<f32>(x_3129.x, x_3129.y, x_3131);
        let x_3138 : vec3<f32> = txVec54;
        let x_3140 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3138.xy, x_3138.z);
        u_xlat34.x = x_3140;
        let x_3143 : f32 = u_xlat20.w;
        let x_3145 : f32 = u_xlat34.x;
        let x_3148 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_3143 * x_3145) + x_3148);
        let x_3152 : vec4<f32> = u_xlat11;
        let x_3153 : vec2<f32> = vec2<f32>(x_3152.x, x_3152.y);
        let x_3155 : f32 = vs_INTERP3.z;
        txVec55 = vec3<f32>(x_3153.x, x_3153.y, x_3155);
        let x_3162 : vec3<f32> = txVec55;
        let x_3164 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3162.xy, x_3162.z);
        u_xlat34.x = x_3164;
        let x_3167 : f32 = u_xlat7.x;
        let x_3169 : f32 = u_xlat34.x;
        let x_3172 : f32 = u_xlat8.x;
        u_xlat7.x = ((x_3167 * x_3169) + x_3172);
        let x_3176 : vec4<f32> = u_xlat11;
        let x_3177 : vec2<f32> = vec2<f32>(x_3176.z, x_3176.w);
        let x_3179 : f32 = vs_INTERP3.z;
        txVec56 = vec3<f32>(x_3177.x, x_3177.y, x_3179);
        let x_3186 : vec3<f32> = txVec56;
        let x_3188 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3186.xy, x_3186.z);
        u_xlat8.x = x_3188;
        let x_3191 : f32 = u_xlat7.y;
        let x_3193 : f32 = u_xlat8.x;
        let x_3196 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_3191 * x_3193) + x_3196);
        let x_3200 : vec2<f32> = u_xlat62;
        let x_3202 : f32 = vs_INTERP3.z;
        txVec57 = vec3<f32>(x_3200.x, x_3200.y, x_3202);
        let x_3210 : vec3<f32> = txVec57;
        let x_3212 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3210.xy, x_3210.z);
        u_xlat33 = x_3212;
        let x_3214 : f32 = u_xlat7.z;
        let x_3215 : f32 = u_xlat33;
        let x_3218 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_3214 * x_3215) + x_3218);
        let x_3222 : vec2<f32> = u_xlat58;
        let x_3224 : f32 = vs_INTERP3.z;
        txVec58 = vec3<f32>(x_3222.x, x_3222.y, x_3224);
        let x_3231 : vec3<f32> = txVec58;
        let x_3233 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3231.xy, x_3231.z);
        u_xlat58.x = x_3233;
        let x_3236 : f32 = u_xlat7.w;
        let x_3238 : f32 = u_xlat58.x;
        let x_3241 : f32 = u_xlat7.x;
        u_xlat0.x = ((x_3236 * x_3238) + x_3241);
      }
    }
  } else {
    let x_3246 : vec4<f32> = vs_INTERP3;
    let x_3247 : vec2<f32> = vec2<f32>(x_3246.x, x_3246.y);
    let x_3249 : f32 = vs_INTERP3.z;
    txVec59 = vec3<f32>(x_3247.x, x_3247.y, x_3249);
    let x_3256 : vec3<f32> = txVec59;
    let x_3258 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3256.xy, x_3256.z);
    u_xlat0.x = x_3258;
  }
  let x_3261 : f32 = u_xlat0.x;
  let x_3263 : f32 = x_355.x_MainLightShadowParams.x;
  let x_3266 : f32 = u_xlat2.x;
  u_xlat0.x = ((x_3261 * x_3263) + x_3266);
  let x_3271 : f32 = vs_INTERP3.z;
  u_xlatb2 = (0.0f >= x_3271);
  let x_3274 : f32 = vs_INTERP3.z;
  u_xlatb58.x = (x_3274 >= 1.0f);
  let x_3277 : bool = u_xlatb2;
  let x_3279 : bool = u_xlatb58.x;
  u_xlatb2 = (x_3277 | x_3279);
  let x_3281 : bool = u_xlatb2;
  if (x_3281) {
    x_3282 = 1.0f;
  } else {
    let x_3287 : f32 = u_xlat0.x;
    x_3282 = x_3287;
  }
  let x_3288 : f32 = x_3282;
  u_xlat0.x = x_3288;
  let x_3290 : vec3<f32> = vs_INTERP8;
  let x_3292 : vec3<f32> = x_147.x_WorldSpaceCameraPos;
  let x_3294 : vec3<f32> = (x_3290 + -(x_3292));
  let x_3295 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3294.x, x_3294.y, x_3294.z, x_3295.w);
  let x_3297 : vec4<f32> = u_xlat7;
  let x_3299 : vec4<f32> = u_xlat7;
  u_xlat2.x = dot(vec3<f32>(x_3297.x, x_3297.y, x_3297.z), vec3<f32>(x_3299.x, x_3299.y, x_3299.z));
  let x_3304 : f32 = u_xlat2.x;
  let x_3306 : f32 = x_355.x_MainLightShadowParams.z;
  let x_3309 : f32 = x_355.x_MainLightShadowParams.w;
  u_xlat58.x = ((x_3304 * x_3306) + x_3309);
  let x_3313 : f32 = u_xlat58.x;
  u_xlat58.x = clamp(x_3313, 0.0f, 1.0f);
  let x_3317 : f32 = u_xlat0.x;
  u_xlat84 = (-(x_3317) + 1.0f);
  let x_3321 : f32 = u_xlat58.x;
  let x_3322 : f32 = u_xlat84;
  let x_3325 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_3321 * x_3322) + x_3325);
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
    let x_3379 : f32 = x_147.x_GlobalMipBias.x;
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
  let x_3430 : vec4<f32> = x_147.x_MainLightColor;
  let x_3432 : vec3<f32> = (vec3<f32>(x_3427.x, x_3427.y, x_3427.z) * vec3<f32>(x_3430.x, x_3430.y, x_3430.z));
  let x_3433 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3432.x, x_3432.y, x_3432.z, x_3433.w);
  let x_3435 : vec3<f32> = u_xlat4;
  let x_3437 : vec3<f32> = u_xlat26;
  u_xlat58.x = dot(-(x_3435), x_3437);
  let x_3441 : f32 = u_xlat58.x;
  let x_3443 : f32 = u_xlat58.x;
  u_xlat58.x = (x_3441 + x_3443);
  let x_3446 : vec3<f32> = u_xlat26;
  let x_3447 : vec2<f32> = u_xlat58;
  let x_3451 : vec3<f32> = u_xlat4;
  let x_3453 : vec3<f32> = ((x_3446 * -(vec3<f32>(x_3447.x, x_3447.x, x_3447.x))) + -(x_3451));
  let x_3454 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3453.x, x_3453.y, x_3453.z, x_3454.w);
  let x_3456 : vec3<f32> = u_xlat26;
  let x_3457 : vec3<f32> = u_xlat4;
  u_xlat58.x = dot(x_3456, x_3457);
  let x_3461 : f32 = u_xlat58.x;
  u_xlat58.x = clamp(x_3461, 0.0f, 1.0f);
  let x_3465 : f32 = u_xlat58.x;
  u_xlat58.x = (-(x_3465) + 1.0f);
  let x_3470 : f32 = u_xlat58.x;
  let x_3472 : f32 = u_xlat58.x;
  u_xlat58.x = (x_3470 * x_3472);
  let x_3476 : f32 = u_xlat58.x;
  let x_3478 : f32 = u_xlat58.x;
  u_xlat58.x = (x_3476 * x_3478);
  let x_3481 : f32 = u_xlat80;
  u_xlat84 = ((-(x_3481) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_3487 : f32 = u_xlat80;
  let x_3488 : f32 = u_xlat84;
  u_xlat80 = (x_3487 * x_3488);
  let x_3490 : f32 = u_xlat80;
  u_xlat80 = (x_3490 * 6.0f);
  let x_3501 : vec4<f32> = u_xlat8;
  let x_3503 : f32 = u_xlat80;
  let x_3504 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_3501.x, x_3501.y, x_3501.z), x_3503);
  u_xlat8 = x_3504;
  let x_3506 : f32 = u_xlat8.w;
  u_xlat80 = (x_3506 + -1.0f);
  let x_3509 : f32 = x_83.unity_SpecCube0_HDR.w;
  let x_3510 : f32 = u_xlat80;
  u_xlat80 = ((x_3509 * x_3510) + 1.0f);
  let x_3513 : f32 = u_xlat80;
  u_xlat80 = max(x_3513, 0.0f);
  let x_3515 : f32 = u_xlat80;
  u_xlat80 = log2(x_3515);
  let x_3517 : f32 = u_xlat80;
  let x_3519 : f32 = x_83.unity_SpecCube0_HDR.y;
  u_xlat80 = (x_3517 * x_3519);
  let x_3521 : f32 = u_xlat80;
  u_xlat80 = exp2(x_3521);
  let x_3523 : f32 = u_xlat80;
  let x_3525 : f32 = x_83.unity_SpecCube0_HDR.x;
  u_xlat80 = (x_3523 * x_3525);
  let x_3527 : vec4<f32> = u_xlat8;
  let x_3529 : f32 = u_xlat80;
  let x_3531 : vec3<f32> = (vec3<f32>(x_3527.x, x_3527.y, x_3527.z) * vec3<f32>(x_3529, x_3529, x_3529));
  let x_3532 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3531.x, x_3531.y, x_3531.z, x_3532.w);
  let x_3534 : f32 = u_xlat81;
  let x_3536 : f32 = u_xlat81;
  let x_3540 : vec2<f32> = ((vec2<f32>(x_3534, x_3534) * vec2<f32>(x_3536, x_3536)) + vec2<f32>(-1.0f, 1.0f));
  let x_3541 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_3540.x, x_3540.y, x_3541.z, x_3541.w);
  let x_3544 : f32 = u_xlat9.y;
  u_xlat80 = (1.0f / x_3544);
  let x_3546 : f32 = u_xlat83;
  u_xlat81 = (x_3546 + -0.03999999910593032837f);
  let x_3550 : f32 = u_xlat58.x;
  let x_3551 : f32 = u_xlat81;
  u_xlat81 = ((x_3550 * x_3551) + 0.03999999910593032837f);
  let x_3555 : f32 = u_xlat80;
  let x_3556 : f32 = u_xlat81;
  u_xlat80 = (x_3555 * x_3556);
  let x_3558 : f32 = u_xlat80;
  let x_3560 : vec4<f32> = u_xlat8;
  let x_3562 : vec3<f32> = (vec3<f32>(x_3558, x_3558, x_3558) * vec3<f32>(x_3560.x, x_3560.y, x_3560.z));
  let x_3563 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3562.x, x_3562.y, x_3562.z, x_3563.w);
  let x_3565 : vec4<f32> = u_xlat3;
  let x_3567 : vec3<f32> = u_xlat5;
  let x_3569 : vec4<f32> = u_xlat8;
  let x_3571 : vec3<f32> = ((vec3<f32>(x_3565.x, x_3565.y, x_3565.z) * x_3567) + vec3<f32>(x_3569.x, x_3569.y, x_3569.z));
  let x_3572 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_3571.x, x_3571.y, x_3571.z, x_3572.w);
  let x_3575 : f32 = u_xlat0.x;
  let x_3577 : f32 = x_83.unity_LightData.z;
  u_xlat0.x = (x_3575 * x_3577);
  let x_3580 : vec3<f32> = u_xlat26;
  let x_3582 : vec4<f32> = x_147.x_MainLightPosition;
  u_xlat80 = dot(x_3580, vec3<f32>(x_3582.x, x_3582.y, x_3582.z));
  let x_3585 : f32 = u_xlat80;
  u_xlat80 = clamp(x_3585, 0.0f, 1.0f);
  let x_3588 : f32 = u_xlat0.x;
  let x_3589 : f32 = u_xlat80;
  u_xlat0.x = (x_3588 * x_3589);
  let x_3592 : vec3<f32> = u_xlat0;
  let x_3594 : vec4<f32> = u_xlat7;
  let x_3596 : vec3<f32> = (vec3<f32>(x_3592.x, x_3592.x, x_3592.x) * vec3<f32>(x_3594.x, x_3594.y, x_3594.z));
  let x_3597 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3596.x, x_3596.y, x_3596.z, x_3597.w);
  let x_3599 : vec3<f32> = u_xlat4;
  let x_3601 : vec4<f32> = x_147.x_MainLightPosition;
  let x_3603 : vec3<f32> = (x_3599 + vec3<f32>(x_3601.x, x_3601.y, x_3601.z));
  let x_3604 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3603.x, x_3603.y, x_3603.z, x_3604.w);
  let x_3606 : vec4<f32> = u_xlat8;
  let x_3608 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(vec3<f32>(x_3606.x, x_3606.y, x_3606.z), vec3<f32>(x_3608.x, x_3608.y, x_3608.z));
  let x_3613 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_3613, 1.17549435e-38f);
  let x_3617 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_3617);
  let x_3620 : vec3<f32> = u_xlat0;
  let x_3622 : vec4<f32> = u_xlat8;
  let x_3624 : vec3<f32> = (vec3<f32>(x_3620.x, x_3620.x, x_3620.x) * vec3<f32>(x_3622.x, x_3622.y, x_3622.z));
  let x_3625 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3624.x, x_3624.y, x_3624.z, x_3625.w);
  let x_3627 : vec3<f32> = u_xlat26;
  let x_3628 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_3627, vec3<f32>(x_3628.x, x_3628.y, x_3628.z));
  let x_3633 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_3633, 0.0f, 1.0f);
  let x_3637 : vec4<f32> = x_147.x_MainLightPosition;
  let x_3639 : vec4<f32> = u_xlat8;
  u_xlat80 = dot(vec3<f32>(x_3637.x, x_3637.y, x_3637.z), vec3<f32>(x_3639.x, x_3639.y, x_3639.z));
  let x_3642 : f32 = u_xlat80;
  u_xlat80 = clamp(x_3642, 0.0f, 1.0f);
  let x_3645 : f32 = u_xlat0.x;
  let x_3647 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3645 * x_3647);
  let x_3651 : f32 = u_xlat0.x;
  let x_3653 : f32 = u_xlat9.x;
  u_xlat0.x = ((x_3651 * x_3653) + 1.00001001358032226562f);
  let x_3658 : f32 = u_xlat80;
  let x_3659 : f32 = u_xlat80;
  u_xlat80 = (x_3658 * x_3659);
  let x_3662 : f32 = u_xlat0.x;
  let x_3664 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3662 * x_3664);
  let x_3667 : f32 = u_xlat80;
  u_xlat80 = max(x_3667, 0.10000000149011611938f);
  let x_3671 : f32 = u_xlat0.x;
  let x_3672 : f32 = u_xlat80;
  u_xlat0.x = (x_3671 * x_3672);
  let x_3676 : f32 = u_xlat6.x;
  let x_3678 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3676 * x_3678);
  let x_3681 : f32 = u_xlat82;
  let x_3683 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3681 / x_3683);
  let x_3686 : vec3<f32> = u_xlat0;
  let x_3690 : vec3<f32> = u_xlat5;
  let x_3691 : vec3<f32> = ((vec3<f32>(x_3686.x, x_3686.x, x_3686.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_3690);
  let x_3692 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3691.x, x_3691.y, x_3691.z, x_3692.w);
  let x_3694 : vec4<f32> = u_xlat7;
  let x_3696 : vec4<f32> = u_xlat8;
  let x_3698 : vec3<f32> = (vec3<f32>(x_3694.x, x_3694.y, x_3694.z) * vec3<f32>(x_3696.x, x_3696.y, x_3696.z));
  let x_3699 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3698.x, x_3698.y, x_3698.z, x_3699.w);
  let x_3703 : f32 = x_147.x_AdditionalLightsCount.x;
  let x_3705 : f32 = x_83.unity_LightData.y;
  u_xlat0.x = min(x_3703, x_3705);
  let x_3710 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_3710));
  let x_3714 : f32 = u_xlat2.x;
  let x_3717 : f32 = x_355.x_AdditionalShadowFadeParams.x;
  let x_3720 : f32 = x_355.x_AdditionalShadowFadeParams.y;
  u_xlat2.x = ((x_3714 * x_3717) + x_3720);
  let x_3724 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_3724, 0.0f, 1.0f);
  let x_3728 : f32 = x_3333.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3730 : f32 = x_3333.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3732 : f32 = x_3333.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3734 : f32 = x_3333.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3735 : vec4<f32> = vec4<f32>(x_3728, x_3730, x_3732, x_3734);
  let x_3741 : vec4<bool> = (vec4<f32>(x_3735.x, x_3735.y, x_3735.z, x_3735.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
  u_xlatb58 = vec2<bool>(x_3741.x, x_3741.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_3752 : u32 = u_xlatu_loop_1;
    let x_3753 : u32 = u_xlatu0;
    if ((x_3752 < x_3753)) {
    } else {
      break;
    }
    let x_3756 : u32 = u_xlatu_loop_1;
    u_xlatu81 = (x_3756 >> 2u);
    let x_3759 : u32 = u_xlatu_loop_1;
    u_xlati83 = bitcast<i32>((x_3759 & 3u));
    let x_3762 : u32 = u_xlatu81;
    let x_3765 : vec4<f32> = x_83.unity_LightIndices[bitcast<i32>(x_3762)];
    let x_3775 : i32 = u_xlati83;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_3780 : vec4<u32> = indexable[x_3775];
    u_xlat81 = dot(x_3765, bitcast<vec4<f32>>(x_3780));
    let x_3784 : f32 = u_xlat81;
    u_xlati81 = i32(x_3784);
    let x_3786 : vec3<f32> = vs_INTERP8;
    let x_3797 : i32 = u_xlati81;
    let x_3799 : vec4<f32> = x_3796.x_AdditionalLightsPosition[x_3797];
    let x_3802 : i32 = u_xlati81;
    let x_3804 : vec4<f32> = x_3796.x_AdditionalLightsPosition[x_3802];
    u_xlat35 = ((-(x_3786) * vec3<f32>(x_3799.w, x_3799.w, x_3799.w)) + vec3<f32>(x_3804.x, x_3804.y, x_3804.z));
    let x_3807 : vec3<f32> = u_xlat35;
    let x_3808 : vec3<f32> = u_xlat35;
    u_xlat83 = dot(x_3807, x_3808);
    let x_3810 : f32 = u_xlat83;
    u_xlat83 = max(x_3810, 0.00006103515625f);
    let x_3814 : f32 = u_xlat83;
    u_xlat85 = inverseSqrt(x_3814);
    let x_3816 : f32 = u_xlat85;
    let x_3818 : vec3<f32> = u_xlat35;
    let x_3819 : vec3<f32> = (vec3<f32>(x_3816, x_3816, x_3816) * x_3818);
    let x_3820 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3819.x, x_3819.y, x_3819.z, x_3820.w);
    let x_3822 : f32 = u_xlat83;
    u_xlat86 = (1.0f / x_3822);
    let x_3824 : f32 = u_xlat83;
    let x_3825 : i32 = u_xlati81;
    let x_3827 : f32 = x_3796.x_AdditionalLightsAttenuation[x_3825].x;
    u_xlat83 = (x_3824 * x_3827);
    let x_3829 : f32 = u_xlat83;
    let x_3831 : f32 = u_xlat83;
    u_xlat83 = ((-(x_3829) * x_3831) + 1.0f);
    let x_3834 : f32 = u_xlat83;
    u_xlat83 = max(x_3834, 0.0f);
    let x_3836 : f32 = u_xlat83;
    let x_3837 : f32 = u_xlat83;
    u_xlat83 = (x_3836 * x_3837);
    let x_3839 : f32 = u_xlat83;
    let x_3840 : f32 = u_xlat86;
    u_xlat83 = (x_3839 * x_3840);
    let x_3842 : i32 = u_xlati81;
    let x_3844 : vec4<f32> = x_3796.x_AdditionalLightsSpotDir[x_3842];
    let x_3846 : vec4<f32> = u_xlat10;
    u_xlat86 = dot(vec3<f32>(x_3844.x, x_3844.y, x_3844.z), vec3<f32>(x_3846.x, x_3846.y, x_3846.z));
    let x_3849 : f32 = u_xlat86;
    let x_3850 : i32 = u_xlati81;
    let x_3852 : f32 = x_3796.x_AdditionalLightsAttenuation[x_3850].z;
    let x_3854 : i32 = u_xlati81;
    let x_3856 : f32 = x_3796.x_AdditionalLightsAttenuation[x_3854].w;
    u_xlat86 = ((x_3849 * x_3852) + x_3856);
    let x_3858 : f32 = u_xlat86;
    u_xlat86 = clamp(x_3858, 0.0f, 1.0f);
    let x_3860 : f32 = u_xlat86;
    let x_3861 : f32 = u_xlat86;
    u_xlat86 = (x_3860 * x_3861);
    let x_3863 : f32 = u_xlat83;
    let x_3864 : f32 = u_xlat86;
    u_xlat83 = (x_3863 * x_3864);
    let x_3868 : i32 = u_xlati81;
    let x_3870 : f32 = x_355.x_AdditionalShadowParams[x_3868].w;
    u_xlati86 = i32(x_3870);
    let x_3873 : i32 = u_xlati86;
    u_xlatb88 = (x_3873 >= 0i);
    let x_3875 : bool = u_xlatb88;
    if (x_3875) {
      let x_3879 : i32 = u_xlati81;
      let x_3881 : f32 = x_355.x_AdditionalShadowParams[x_3879].z;
      u_xlatb88 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_3881, x_3881, x_3881, x_3881))));
      let x_3885 : bool = u_xlatb88;
      if (x_3885) {
        let x_3890 : vec4<f32> = u_xlat10;
        let x_3893 : vec4<f32> = u_xlat10;
        let x_3896 : vec4<bool> = (abs(vec4<f32>(x_3890.z, x_3890.z, x_3890.y, x_3890.z)) >= abs(vec4<f32>(x_3893.x, x_3893.y, x_3893.x, x_3893.x)));
        let x_3898 : vec3<bool> = vec3<bool>(x_3896.x, x_3896.y, x_3896.z);
        let x_3899 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3898.x, x_3898.y, x_3898.z, x_3899.w);
        let x_3902 : bool = u_xlatb11.y;
        let x_3904 : bool = u_xlatb11.x;
        u_xlatb88 = (x_3902 & x_3904);
        let x_3906 : vec4<f32> = u_xlat10;
        let x_3909 : vec4<bool> = (-(vec4<f32>(x_3906.z, x_3906.y, x_3906.z, x_3906.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_3910 : vec3<bool> = vec3<bool>(x_3909.x, x_3909.y, x_3909.w);
        let x_3911 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3910.x, x_3910.y, x_3911.z, x_3910.z);
        let x_3914 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_3914);
        let x_3919 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_3919);
        let x_3925 : bool = u_xlatb11.w;
        u_xlat89 = select(0.0f, 1.0f, x_3925);
        let x_3929 : bool = u_xlatb11.z;
        if (x_3929) {
          let x_3934 : f32 = u_xlat11.y;
          x_3930 = x_3934;
        } else {
          let x_3936 : f32 = u_xlat89;
          x_3930 = x_3936;
        }
        let x_3937 : f32 = x_3930;
        u_xlat37.x = x_3937;
        let x_3940 : bool = u_xlatb88;
        if (x_3940) {
          let x_3945 : f32 = u_xlat11.x;
          x_3941 = x_3945;
        } else {
          let x_3948 : f32 = u_xlat37.x;
          x_3941 = x_3948;
        }
        let x_3949 : f32 = x_3941;
        u_xlat88 = x_3949;
        let x_3950 : i32 = u_xlati81;
        let x_3952 : f32 = x_355.x_AdditionalShadowParams[x_3950].w;
        u_xlat11.x = trunc(x_3952);
        let x_3955 : f32 = u_xlat88;
        let x_3957 : f32 = u_xlat11.x;
        u_xlat88 = (x_3955 + x_3957);
        let x_3959 : f32 = u_xlat88;
        u_xlati86 = i32(x_3959);
      }
      let x_3961 : i32 = u_xlati86;
      u_xlati86 = (x_3961 << bitcast<u32>(2i));
      let x_3963 : vec3<f32> = vs_INTERP8;
      let x_3966 : i32 = u_xlati86;
      let x_3969 : i32 = u_xlati86;
      let x_3973 : vec4<f32> = x_355.x_AdditionalLightsWorldToShadow[((x_3966 + 1i) / 4i)][((x_3969 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_3963.y, x_3963.y, x_3963.y, x_3963.y) * x_3973);
      let x_3975 : i32 = u_xlati86;
      let x_3977 : i32 = u_xlati86;
      let x_3980 : vec4<f32> = x_355.x_AdditionalLightsWorldToShadow[(x_3975 / 4i)][(x_3977 % 4i)];
      let x_3981 : vec3<f32> = vs_INTERP8;
      let x_3984 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3980 * vec4<f32>(x_3981.x, x_3981.x, x_3981.x, x_3981.x)) + x_3984);
      let x_3986 : i32 = u_xlati86;
      let x_3989 : i32 = u_xlati86;
      let x_3993 : vec4<f32> = x_355.x_AdditionalLightsWorldToShadow[((x_3986 + 2i) / 4i)][((x_3989 + 2i) % 4i)];
      let x_3994 : vec3<f32> = vs_INTERP8;
      let x_3997 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3993 * vec4<f32>(x_3994.z, x_3994.z, x_3994.z, x_3994.z)) + x_3997);
      let x_3999 : vec4<f32> = u_xlat11;
      let x_4000 : i32 = u_xlati86;
      let x_4003 : i32 = u_xlati86;
      let x_4007 : vec4<f32> = x_355.x_AdditionalLightsWorldToShadow[((x_4000 + 3i) / 4i)][((x_4003 + 3i) % 4i)];
      u_xlat11 = (x_3999 + x_4007);
      let x_4009 : vec4<f32> = u_xlat11;
      let x_4011 : vec4<f32> = u_xlat11;
      let x_4013 : vec3<f32> = (vec3<f32>(x_4009.x, x_4009.y, x_4009.z) / vec3<f32>(x_4011.w, x_4011.w, x_4011.w));
      let x_4014 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4013.x, x_4013.y, x_4013.z, x_4014.w);
      let x_4017 : i32 = u_xlati81;
      let x_4019 : f32 = x_355.x_AdditionalShadowParams[x_4017].y;
      u_xlatb86 = (0.0f < x_4019);
      let x_4021 : bool = u_xlatb86;
      if (x_4021) {
        let x_4024 : i32 = u_xlati81;
        let x_4026 : f32 = x_355.x_AdditionalShadowParams[x_4024].y;
        u_xlatb86 = (1.0f == x_4026);
        let x_4028 : bool = u_xlatb86;
        if (x_4028) {
          let x_4031 : vec4<f32> = u_xlat11;
          let x_4035 : vec4<f32> = x_355.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_4031.x, x_4031.y, x_4031.x, x_4031.y) + x_4035);
          let x_4038 : vec4<f32> = u_xlat12;
          let x_4039 : vec2<f32> = vec2<f32>(x_4038.x, x_4038.y);
          let x_4041 : f32 = u_xlat11.z;
          txVec60 = vec3<f32>(x_4039.x, x_4039.y, x_4041);
          let x_4049 : vec3<f32> = txVec60;
          let x_4051 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4049.xy, x_4049.z);
          u_xlat13.x = x_4051;
          let x_4054 : vec4<f32> = u_xlat12;
          let x_4055 : vec2<f32> = vec2<f32>(x_4054.z, x_4054.w);
          let x_4057 : f32 = u_xlat11.z;
          txVec61 = vec3<f32>(x_4055.x, x_4055.y, x_4057);
          let x_4064 : vec3<f32> = txVec61;
          let x_4066 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4064.xy, x_4064.z);
          u_xlat13.y = x_4066;
          let x_4068 : vec4<f32> = u_xlat11;
          let x_4071 : vec4<f32> = x_355.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_4068.x, x_4068.y, x_4068.x, x_4068.y) + x_4071);
          let x_4074 : vec4<f32> = u_xlat12;
          let x_4075 : vec2<f32> = vec2<f32>(x_4074.x, x_4074.y);
          let x_4077 : f32 = u_xlat11.z;
          txVec62 = vec3<f32>(x_4075.x, x_4075.y, x_4077);
          let x_4084 : vec3<f32> = txVec62;
          let x_4086 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4084.xy, x_4084.z);
          u_xlat13.z = x_4086;
          let x_4089 : vec4<f32> = u_xlat12;
          let x_4090 : vec2<f32> = vec2<f32>(x_4089.z, x_4089.w);
          let x_4092 : f32 = u_xlat11.z;
          txVec63 = vec3<f32>(x_4090.x, x_4090.y, x_4092);
          let x_4099 : vec3<f32> = txVec63;
          let x_4101 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4099.xy, x_4099.z);
          u_xlat13.w = x_4101;
          let x_4103 : vec4<f32> = u_xlat13;
          u_xlat86 = dot(x_4103, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_4106 : i32 = u_xlati81;
          let x_4108 : f32 = x_355.x_AdditionalShadowParams[x_4106].y;
          u_xlatb88 = (2.0f == x_4108);
          let x_4110 : bool = u_xlatb88;
          if (x_4110) {
            let x_4113 : vec4<f32> = u_xlat11;
            let x_4117 : vec4<f32> = x_355.x_AdditionalShadowmapSize;
            let x_4120 : vec2<f32> = ((vec2<f32>(x_4113.x, x_4113.y) * vec2<f32>(x_4117.z, x_4117.w)) + vec2<f32>(0.5f, 0.5f));
            let x_4121 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4120.x, x_4120.y, x_4121.z, x_4121.w);
            let x_4123 : vec4<f32> = u_xlat12;
            let x_4125 : vec2<f32> = floor(vec2<f32>(x_4123.x, x_4123.y));
            let x_4126 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4125.x, x_4125.y, x_4126.z, x_4126.w);
            let x_4129 : vec4<f32> = u_xlat11;
            let x_4132 : vec4<f32> = x_355.x_AdditionalShadowmapSize;
            let x_4135 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_4129.x, x_4129.y) * vec2<f32>(x_4132.z, x_4132.w)) + -(vec2<f32>(x_4135.x, x_4135.y)));
            let x_4139 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_4139.x, x_4139.x, x_4139.y, x_4139.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4142 : vec4<f32> = u_xlat13;
            let x_4144 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_4142.x, x_4142.x, x_4142.z, x_4142.z) * vec4<f32>(x_4144.x, x_4144.x, x_4144.z, x_4144.z));
            let x_4147 : vec4<f32> = u_xlat14;
            let x_4149 : vec2<f32> = (vec2<f32>(x_4147.y, x_4147.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_4150 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4149.x, x_4150.y, x_4149.y, x_4150.w);
            let x_4152 : vec4<f32> = u_xlat14;
            let x_4155 : vec2<f32> = u_xlat64;
            let x_4157 : vec2<f32> = ((vec2<f32>(x_4152.x, x_4152.z) * vec2<f32>(0.5f, 0.5f)) + -(x_4155));
            let x_4158 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4157.x, x_4157.y, x_4158.z, x_4158.w);
            let x_4161 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_4161) + vec2<f32>(1.0f, 1.0f));
            let x_4164 : vec2<f32> = u_xlat64;
            let x_4165 : vec2<f32> = min(x_4164, vec2<f32>(0.0f, 0.0f));
            let x_4166 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4165.x, x_4165.y, x_4166.z, x_4166.w);
            let x_4168 : vec4<f32> = u_xlat15;
            let x_4171 : vec4<f32> = u_xlat15;
            let x_4174 : vec2<f32> = u_xlat66;
            let x_4175 : vec2<f32> = ((-(vec2<f32>(x_4168.x, x_4168.y)) * vec2<f32>(x_4171.x, x_4171.y)) + x_4174);
            let x_4176 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4175.x, x_4175.y, x_4176.z, x_4176.w);
            let x_4178 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_4178, vec2<f32>(0.0f, 0.0f));
            let x_4180 : vec2<f32> = u_xlat64;
            let x_4182 : vec2<f32> = u_xlat64;
            let x_4184 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_4180) * x_4182) + vec2<f32>(x_4184.y, x_4184.w));
            let x_4187 : vec4<f32> = u_xlat15;
            let x_4189 : vec2<f32> = (vec2<f32>(x_4187.x, x_4187.y) + vec2<f32>(1.0f, 1.0f));
            let x_4190 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4189.x, x_4189.y, x_4190.z, x_4190.w);
            let x_4192 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_4192 + vec2<f32>(1.0f, 1.0f));
            let x_4194 : vec4<f32> = u_xlat14;
            let x_4196 : vec2<f32> = (vec2<f32>(x_4194.x, x_4194.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4197 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4196.x, x_4196.y, x_4197.z, x_4197.w);
            let x_4199 : vec2<f32> = u_xlat66;
            let x_4200 : vec2<f32> = (x_4199 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4201 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4200.x, x_4200.y, x_4201.z, x_4201.w);
            let x_4203 : vec4<f32> = u_xlat15;
            let x_4205 : vec2<f32> = (vec2<f32>(x_4203.x, x_4203.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4206 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4205.x, x_4205.y, x_4206.z, x_4206.w);
            let x_4208 : vec2<f32> = u_xlat64;
            let x_4209 : vec2<f32> = (x_4208 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4210 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4209.x, x_4209.y, x_4210.z, x_4210.w);
            let x_4212 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_4212.y, x_4212.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4216 : f32 = u_xlat15.x;
            u_xlat16.z = x_4216;
            let x_4219 : f32 = u_xlat64.x;
            u_xlat16.w = x_4219;
            let x_4222 : f32 = u_xlat17.x;
            u_xlat14.z = x_4222;
            let x_4225 : f32 = u_xlat13.x;
            u_xlat14.w = x_4225;
            let x_4227 : vec4<f32> = u_xlat14;
            let x_4229 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_4227.z, x_4227.w, x_4227.x, x_4227.z) + vec4<f32>(x_4229.z, x_4229.w, x_4229.x, x_4229.z));
            let x_4233 : f32 = u_xlat16.y;
            u_xlat15.z = x_4233;
            let x_4236 : f32 = u_xlat64.y;
            u_xlat15.w = x_4236;
            let x_4239 : f32 = u_xlat14.y;
            u_xlat17.z = x_4239;
            let x_4242 : f32 = u_xlat13.z;
            u_xlat17.w = x_4242;
            let x_4244 : vec4<f32> = u_xlat15;
            let x_4246 : vec4<f32> = u_xlat17;
            let x_4248 : vec3<f32> = (vec3<f32>(x_4244.z, x_4244.y, x_4244.w) + vec3<f32>(x_4246.z, x_4246.y, x_4246.w));
            let x_4249 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4248.x, x_4248.y, x_4248.z, x_4249.w);
            let x_4251 : vec4<f32> = u_xlat14;
            let x_4253 : vec4<f32> = u_xlat18;
            let x_4255 : vec3<f32> = (vec3<f32>(x_4251.x, x_4251.z, x_4251.w) / vec3<f32>(x_4253.z, x_4253.w, x_4253.y));
            let x_4256 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4255.x, x_4255.y, x_4255.z, x_4256.w);
            let x_4258 : vec4<f32> = u_xlat14;
            let x_4260 : vec3<f32> = (vec3<f32>(x_4258.x, x_4258.y, x_4258.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4261 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4260.x, x_4260.y, x_4260.z, x_4261.w);
            let x_4263 : vec4<f32> = u_xlat17;
            let x_4265 : vec4<f32> = u_xlat13;
            let x_4267 : vec3<f32> = (vec3<f32>(x_4263.z, x_4263.y, x_4263.w) / vec3<f32>(x_4265.x, x_4265.y, x_4265.z));
            let x_4268 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4267.x, x_4267.y, x_4267.z, x_4268.w);
            let x_4270 : vec4<f32> = u_xlat15;
            let x_4272 : vec3<f32> = (vec3<f32>(x_4270.x, x_4270.y, x_4270.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4273 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4272.x, x_4272.y, x_4272.z, x_4273.w);
            let x_4275 : vec4<f32> = u_xlat14;
            let x_4278 : vec4<f32> = x_355.x_AdditionalShadowmapSize;
            let x_4280 : vec3<f32> = (vec3<f32>(x_4275.y, x_4275.x, x_4275.z) * vec3<f32>(x_4278.x, x_4278.x, x_4278.x));
            let x_4281 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4280.x, x_4280.y, x_4280.z, x_4281.w);
            let x_4283 : vec4<f32> = u_xlat15;
            let x_4286 : vec4<f32> = x_355.x_AdditionalShadowmapSize;
            let x_4288 : vec3<f32> = (vec3<f32>(x_4283.x, x_4283.y, x_4283.z) * vec3<f32>(x_4286.y, x_4286.y, x_4286.y));
            let x_4289 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4288.x, x_4288.y, x_4288.z, x_4289.w);
            let x_4292 : f32 = u_xlat15.x;
            u_xlat14.w = x_4292;
            let x_4294 : vec4<f32> = u_xlat12;
            let x_4297 : vec4<f32> = x_355.x_AdditionalShadowmapSize;
            let x_4300 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_4294.x, x_4294.y, x_4294.x, x_4294.y) * vec4<f32>(x_4297.x, x_4297.y, x_4297.x, x_4297.y)) + vec4<f32>(x_4300.y, x_4300.w, x_4300.x, x_4300.w));
            let x_4303 : vec4<f32> = u_xlat12;
            let x_4306 : vec4<f32> = x_355.x_AdditionalShadowmapSize;
            let x_4309 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_4303.x, x_4303.y) * vec2<f32>(x_4306.x, x_4306.y)) + vec2<f32>(x_4309.z, x_4309.w));
            let x_4313 : f32 = u_xlat14.y;
            u_xlat15.w = x_4313;
            let x_4315 : vec4<f32> = u_xlat15;
            let x_4316 : vec2<f32> = vec2<f32>(x_4315.y, x_4315.z);
            let x_4317 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4317.x, x_4316.x, x_4317.z, x_4316.y);
            let x_4319 : vec4<f32> = u_xlat12;
            let x_4322 : vec4<f32> = x_355.x_AdditionalShadowmapSize;
            let x_4325 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_4319.x, x_4319.y, x_4319.x, x_4319.y) * vec4<f32>(x_4322.x, x_4322.y, x_4322.x, x_4322.y)) + vec4<f32>(x_4325.x, x_4325.y, x_4325.z, x_4325.y));
            let x_4328 : vec4<f32> = u_xlat12;
            let x_4331 : vec4<f32> = x_355.x_AdditionalShadowmapSize;
            let x_4334 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_4328.x, x_4328.y, x_4328.x, x_4328.y) * vec4<f32>(x_4331.x, x_4331.y, x_4331.x, x_4331.y)) + vec4<f32>(x_4334.w, x_4334.y, x_4334.w, x_4334.z));
            let x_4337 : vec4<f32> = u_xlat12;
            let x_4340 : vec4<f32> = x_355.x_AdditionalShadowmapSize;
            let x_4343 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_4337.x, x_4337.y, x_4337.x, x_4337.y) * vec4<f32>(x_4340.x, x_4340.y, x_4340.x, x_4340.y)) + vec4<f32>(x_4343.x, x_4343.w, x_4343.z, x_4343.w));
            let x_4346 : vec4<f32> = u_xlat13;
            let x_4348 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_4346.x, x_4346.x, x_4346.x, x_4346.y) * vec4<f32>(x_4348.z, x_4348.w, x_4348.y, x_4348.z));
            let x_4351 : vec4<f32> = u_xlat13;
            let x_4353 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_4351.y, x_4351.y, x_4351.z, x_4351.z) * x_4353);
            let x_4356 : f32 = u_xlat13.z;
            let x_4358 : f32 = u_xlat18.y;
            u_xlat88 = (x_4356 * x_4358);
            let x_4361 : vec4<f32> = u_xlat16;
            let x_4362 : vec2<f32> = vec2<f32>(x_4361.x, x_4361.y);
            let x_4364 : f32 = u_xlat11.z;
            txVec64 = vec3<f32>(x_4362.x, x_4362.y, x_4364);
            let x_4371 : vec3<f32> = txVec64;
            let x_4373 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4371.xy, x_4371.z);
            u_xlat89 = x_4373;
            let x_4375 : vec4<f32> = u_xlat16;
            let x_4376 : vec2<f32> = vec2<f32>(x_4375.z, x_4375.w);
            let x_4378 : f32 = u_xlat11.z;
            txVec65 = vec3<f32>(x_4376.x, x_4376.y, x_4378);
            let x_4385 : vec3<f32> = txVec65;
            let x_4387 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4385.xy, x_4385.z);
            u_xlat12.x = x_4387;
            let x_4390 : f32 = u_xlat12.x;
            let x_4392 : f32 = u_xlat19.y;
            u_xlat12.x = (x_4390 * x_4392);
            let x_4396 : f32 = u_xlat19.x;
            let x_4397 : f32 = u_xlat89;
            let x_4400 : f32 = u_xlat12.x;
            u_xlat89 = ((x_4396 * x_4397) + x_4400);
            let x_4403 : vec2<f32> = u_xlat64;
            let x_4405 : f32 = u_xlat11.z;
            txVec66 = vec3<f32>(x_4403.x, x_4403.y, x_4405);
            let x_4412 : vec3<f32> = txVec66;
            let x_4414 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4412.xy, x_4412.z);
            u_xlat12.x = x_4414;
            let x_4417 : f32 = u_xlat19.z;
            let x_4419 : f32 = u_xlat12.x;
            let x_4421 : f32 = u_xlat89;
            u_xlat89 = ((x_4417 * x_4419) + x_4421);
            let x_4424 : vec4<f32> = u_xlat15;
            let x_4425 : vec2<f32> = vec2<f32>(x_4424.x, x_4424.y);
            let x_4427 : f32 = u_xlat11.z;
            txVec67 = vec3<f32>(x_4425.x, x_4425.y, x_4427);
            let x_4434 : vec3<f32> = txVec67;
            let x_4436 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4434.xy, x_4434.z);
            u_xlat12.x = x_4436;
            let x_4439 : f32 = u_xlat19.w;
            let x_4441 : f32 = u_xlat12.x;
            let x_4443 : f32 = u_xlat89;
            u_xlat89 = ((x_4439 * x_4441) + x_4443);
            let x_4446 : vec4<f32> = u_xlat17;
            let x_4447 : vec2<f32> = vec2<f32>(x_4446.x, x_4446.y);
            let x_4449 : f32 = u_xlat11.z;
            txVec68 = vec3<f32>(x_4447.x, x_4447.y, x_4449);
            let x_4456 : vec3<f32> = txVec68;
            let x_4458 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4456.xy, x_4456.z);
            u_xlat12.x = x_4458;
            let x_4461 : f32 = u_xlat20.x;
            let x_4463 : f32 = u_xlat12.x;
            let x_4465 : f32 = u_xlat89;
            u_xlat89 = ((x_4461 * x_4463) + x_4465);
            let x_4468 : vec4<f32> = u_xlat17;
            let x_4469 : vec2<f32> = vec2<f32>(x_4468.z, x_4468.w);
            let x_4471 : f32 = u_xlat11.z;
            txVec69 = vec3<f32>(x_4469.x, x_4469.y, x_4471);
            let x_4478 : vec3<f32> = txVec69;
            let x_4480 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4478.xy, x_4478.z);
            u_xlat12.x = x_4480;
            let x_4483 : f32 = u_xlat20.y;
            let x_4485 : f32 = u_xlat12.x;
            let x_4487 : f32 = u_xlat89;
            u_xlat89 = ((x_4483 * x_4485) + x_4487);
            let x_4490 : vec4<f32> = u_xlat15;
            let x_4491 : vec2<f32> = vec2<f32>(x_4490.z, x_4490.w);
            let x_4493 : f32 = u_xlat11.z;
            txVec70 = vec3<f32>(x_4491.x, x_4491.y, x_4493);
            let x_4500 : vec3<f32> = txVec70;
            let x_4502 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4500.xy, x_4500.z);
            u_xlat12.x = x_4502;
            let x_4505 : f32 = u_xlat20.z;
            let x_4507 : f32 = u_xlat12.x;
            let x_4509 : f32 = u_xlat89;
            u_xlat89 = ((x_4505 * x_4507) + x_4509);
            let x_4512 : vec4<f32> = u_xlat14;
            let x_4513 : vec2<f32> = vec2<f32>(x_4512.x, x_4512.y);
            let x_4515 : f32 = u_xlat11.z;
            txVec71 = vec3<f32>(x_4513.x, x_4513.y, x_4515);
            let x_4522 : vec3<f32> = txVec71;
            let x_4524 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4522.xy, x_4522.z);
            u_xlat12.x = x_4524;
            let x_4527 : f32 = u_xlat20.w;
            let x_4529 : f32 = u_xlat12.x;
            let x_4531 : f32 = u_xlat89;
            u_xlat89 = ((x_4527 * x_4529) + x_4531);
            let x_4534 : vec4<f32> = u_xlat14;
            let x_4535 : vec2<f32> = vec2<f32>(x_4534.z, x_4534.w);
            let x_4537 : f32 = u_xlat11.z;
            txVec72 = vec3<f32>(x_4535.x, x_4535.y, x_4537);
            let x_4544 : vec3<f32> = txVec72;
            let x_4546 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4544.xy, x_4544.z);
            u_xlat12.x = x_4546;
            let x_4548 : f32 = u_xlat88;
            let x_4550 : f32 = u_xlat12.x;
            let x_4552 : f32 = u_xlat89;
            u_xlat86 = ((x_4548 * x_4550) + x_4552);
          } else {
            let x_4555 : vec4<f32> = u_xlat11;
            let x_4558 : vec4<f32> = x_355.x_AdditionalShadowmapSize;
            let x_4561 : vec2<f32> = ((vec2<f32>(x_4555.x, x_4555.y) * vec2<f32>(x_4558.z, x_4558.w)) + vec2<f32>(0.5f, 0.5f));
            let x_4562 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4561.x, x_4561.y, x_4562.z, x_4562.w);
            let x_4564 : vec4<f32> = u_xlat12;
            let x_4566 : vec2<f32> = floor(vec2<f32>(x_4564.x, x_4564.y));
            let x_4567 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4566.x, x_4566.y, x_4567.z, x_4567.w);
            let x_4569 : vec4<f32> = u_xlat11;
            let x_4572 : vec4<f32> = x_355.x_AdditionalShadowmapSize;
            let x_4575 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_4569.x, x_4569.y) * vec2<f32>(x_4572.z, x_4572.w)) + -(vec2<f32>(x_4575.x, x_4575.y)));
            let x_4579 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_4579.x, x_4579.x, x_4579.y, x_4579.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4582 : vec4<f32> = u_xlat13;
            let x_4584 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_4582.x, x_4582.x, x_4582.z, x_4582.z) * vec4<f32>(x_4584.x, x_4584.x, x_4584.z, x_4584.z));
            let x_4587 : vec4<f32> = u_xlat14;
            let x_4589 : vec2<f32> = (vec2<f32>(x_4587.y, x_4587.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_4590 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4590.x, x_4589.x, x_4590.z, x_4589.y);
            let x_4592 : vec4<f32> = u_xlat14;
            let x_4595 : vec2<f32> = u_xlat64;
            let x_4597 : vec2<f32> = ((vec2<f32>(x_4592.x, x_4592.z) * vec2<f32>(0.5f, 0.5f)) + -(x_4595));
            let x_4598 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4597.x, x_4598.y, x_4597.y, x_4598.w);
            let x_4600 : vec2<f32> = u_xlat64;
            let x_4602 : vec2<f32> = (-(x_4600) + vec2<f32>(1.0f, 1.0f));
            let x_4603 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4602.x, x_4602.y, x_4603.z, x_4603.w);
            let x_4605 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_4605, vec2<f32>(0.0f, 0.0f));
            let x_4607 : vec2<f32> = u_xlat66;
            let x_4609 : vec2<f32> = u_xlat66;
            let x_4611 : vec4<f32> = u_xlat14;
            let x_4613 : vec2<f32> = ((-(x_4607) * x_4609) + vec2<f32>(x_4611.x, x_4611.y));
            let x_4614 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4613.x, x_4613.y, x_4614.z, x_4614.w);
            let x_4616 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_4616, vec2<f32>(0.0f, 0.0f));
            let x_4619 : vec2<f32> = u_xlat66;
            let x_4621 : vec2<f32> = u_xlat66;
            let x_4623 : vec4<f32> = u_xlat13;
            let x_4625 : vec2<f32> = ((-(x_4619) * x_4621) + vec2<f32>(x_4623.y, x_4623.w));
            let x_4626 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_4625.x, x_4626.y, x_4625.y);
            let x_4628 : vec4<f32> = u_xlat14;
            let x_4630 : vec2<f32> = (vec2<f32>(x_4628.x, x_4628.y) + vec2<f32>(2.0f, 2.0f));
            let x_4631 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4630.x, x_4630.y, x_4631.z, x_4631.w);
            let x_4633 : vec3<f32> = u_xlat39;
            let x_4635 : vec2<f32> = (vec2<f32>(x_4633.x, x_4633.z) + vec2<f32>(2.0f, 2.0f));
            let x_4636 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4636.x, x_4635.x, x_4636.z, x_4635.y);
            let x_4639 : f32 = u_xlat13.y;
            u_xlat16.z = (x_4639 * 0.08163200318813323975f);
            let x_4642 : vec4<f32> = u_xlat13;
            let x_4644 : vec3<f32> = (vec3<f32>(x_4642.z, x_4642.x, x_4642.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_4645 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4644.x, x_4644.y, x_4644.z, x_4645.w);
            let x_4647 : vec4<f32> = u_xlat14;
            let x_4649 : vec2<f32> = (vec2<f32>(x_4647.x, x_4647.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_4650 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4649.x, x_4649.y, x_4650.z, x_4650.w);
            let x_4653 : f32 = u_xlat17.y;
            u_xlat16.x = x_4653;
            let x_4655 : vec2<f32> = u_xlat64;
            let x_4658 : vec2<f32> = ((vec2<f32>(x_4655.x, x_4655.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4659 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4659.x, x_4658.x, x_4659.z, x_4658.y);
            let x_4661 : vec2<f32> = u_xlat64;
            let x_4664 : vec2<f32> = ((vec2<f32>(x_4661.x, x_4661.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4665 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4664.x, x_4665.y, x_4664.y, x_4665.w);
            let x_4668 : f32 = u_xlat13.x;
            u_xlat14.y = x_4668;
            let x_4671 : f32 = u_xlat15.y;
            u_xlat14.w = x_4671;
            let x_4673 : vec4<f32> = u_xlat14;
            let x_4674 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_4673 + x_4674);
            let x_4676 : vec2<f32> = u_xlat64;
            let x_4679 : vec2<f32> = ((vec2<f32>(x_4676.y, x_4676.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4680 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4680.x, x_4679.x, x_4680.z, x_4679.y);
            let x_4682 : vec2<f32> = u_xlat64;
            let x_4685 : vec2<f32> = ((vec2<f32>(x_4682.y, x_4682.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4686 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4685.x, x_4686.y, x_4685.y, x_4686.w);
            let x_4689 : f32 = u_xlat13.y;
            u_xlat15.y = x_4689;
            let x_4691 : vec4<f32> = u_xlat15;
            let x_4692 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_4691 + x_4692);
            let x_4694 : vec4<f32> = u_xlat14;
            let x_4695 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_4694 / x_4695);
            let x_4697 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_4697 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4699 : vec4<f32> = u_xlat15;
            let x_4700 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_4699 / x_4700);
            let x_4702 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_4702 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4704 : vec4<f32> = u_xlat14;
            let x_4707 : vec4<f32> = x_355.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_4704.w, x_4704.x, x_4704.y, x_4704.z) * vec4<f32>(x_4707.x, x_4707.x, x_4707.x, x_4707.x));
            let x_4710 : vec4<f32> = u_xlat15;
            let x_4713 : vec4<f32> = x_355.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_4710.x, x_4710.w, x_4710.y, x_4710.z) * vec4<f32>(x_4713.y, x_4713.y, x_4713.y, x_4713.y));
            let x_4716 : vec4<f32> = u_xlat14;
            let x_4717 : vec3<f32> = vec3<f32>(x_4716.y, x_4716.z, x_4716.w);
            let x_4718 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4717.x, x_4718.y, x_4717.y, x_4717.z);
            let x_4721 : f32 = u_xlat15.x;
            u_xlat17.y = x_4721;
            let x_4723 : vec4<f32> = u_xlat12;
            let x_4726 : vec4<f32> = x_355.x_AdditionalShadowmapSize;
            let x_4729 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_4723.x, x_4723.y, x_4723.x, x_4723.y) * vec4<f32>(x_4726.x, x_4726.y, x_4726.x, x_4726.y)) + vec4<f32>(x_4729.x, x_4729.y, x_4729.z, x_4729.y));
            let x_4732 : vec4<f32> = u_xlat12;
            let x_4735 : vec4<f32> = x_355.x_AdditionalShadowmapSize;
            let x_4738 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_4732.x, x_4732.y) * vec2<f32>(x_4735.x, x_4735.y)) + vec2<f32>(x_4738.w, x_4738.y));
            let x_4742 : f32 = u_xlat17.y;
            u_xlat14.y = x_4742;
            let x_4745 : f32 = u_xlat15.z;
            u_xlat17.y = x_4745;
            let x_4747 : vec4<f32> = u_xlat12;
            let x_4750 : vec4<f32> = x_355.x_AdditionalShadowmapSize;
            let x_4753 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_4747.x, x_4747.y, x_4747.x, x_4747.y) * vec4<f32>(x_4750.x, x_4750.y, x_4750.x, x_4750.y)) + vec4<f32>(x_4753.x, x_4753.y, x_4753.z, x_4753.y));
            let x_4756 : vec4<f32> = u_xlat12;
            let x_4759 : vec4<f32> = x_355.x_AdditionalShadowmapSize;
            let x_4762 : vec4<f32> = u_xlat17;
            let x_4764 : vec2<f32> = ((vec2<f32>(x_4756.x, x_4756.y) * vec2<f32>(x_4759.x, x_4759.y)) + vec2<f32>(x_4762.w, x_4762.y));
            let x_4765 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_4764.x, x_4764.y, x_4765.z, x_4765.w);
            let x_4768 : f32 = u_xlat17.y;
            u_xlat14.z = x_4768;
            let x_4770 : vec4<f32> = u_xlat12;
            let x_4773 : vec4<f32> = x_355.x_AdditionalShadowmapSize;
            let x_4776 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_4770.x, x_4770.y, x_4770.x, x_4770.y) * vec4<f32>(x_4773.x, x_4773.y, x_4773.x, x_4773.y)) + vec4<f32>(x_4776.x, x_4776.y, x_4776.x, x_4776.z));
            let x_4780 : f32 = u_xlat15.w;
            u_xlat17.y = x_4780;
            let x_4783 : vec4<f32> = u_xlat12;
            let x_4786 : vec4<f32> = x_355.x_AdditionalShadowmapSize;
            let x_4789 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_4783.x, x_4783.y, x_4783.x, x_4783.y) * vec4<f32>(x_4786.x, x_4786.y, x_4786.x, x_4786.y)) + vec4<f32>(x_4789.x, x_4789.y, x_4789.z, x_4789.y));
            let x_4793 : vec4<f32> = u_xlat12;
            let x_4796 : vec4<f32> = x_355.x_AdditionalShadowmapSize;
            let x_4799 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_4793.x, x_4793.y) * vec2<f32>(x_4796.x, x_4796.y)) + vec2<f32>(x_4799.w, x_4799.y));
            let x_4803 : f32 = u_xlat17.y;
            u_xlat14.w = x_4803;
            let x_4806 : vec4<f32> = u_xlat12;
            let x_4809 : vec4<f32> = x_355.x_AdditionalShadowmapSize;
            let x_4812 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_4806.x, x_4806.y) * vec2<f32>(x_4809.x, x_4809.y)) + vec2<f32>(x_4812.x, x_4812.w));
            let x_4815 : vec4<f32> = u_xlat17;
            let x_4816 : vec3<f32> = vec3<f32>(x_4815.x, x_4815.z, x_4815.w);
            let x_4817 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4816.x, x_4817.y, x_4816.y, x_4816.z);
            let x_4819 : vec4<f32> = u_xlat12;
            let x_4822 : vec4<f32> = x_355.x_AdditionalShadowmapSize;
            let x_4825 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_4819.x, x_4819.y, x_4819.x, x_4819.y) * vec4<f32>(x_4822.x, x_4822.y, x_4822.x, x_4822.y)) + vec4<f32>(x_4825.x, x_4825.y, x_4825.z, x_4825.y));
            let x_4829 : vec4<f32> = u_xlat12;
            let x_4832 : vec4<f32> = x_355.x_AdditionalShadowmapSize;
            let x_4835 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_4829.x, x_4829.y) * vec2<f32>(x_4832.x, x_4832.y)) + vec2<f32>(x_4835.w, x_4835.y));
            let x_4839 : f32 = u_xlat14.x;
            u_xlat15.x = x_4839;
            let x_4841 : vec4<f32> = u_xlat12;
            let x_4844 : vec4<f32> = x_355.x_AdditionalShadowmapSize;
            let x_4847 : vec4<f32> = u_xlat15;
            let x_4849 : vec2<f32> = ((vec2<f32>(x_4841.x, x_4841.y) * vec2<f32>(x_4844.x, x_4844.y)) + vec2<f32>(x_4847.x, x_4847.y));
            let x_4850 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4849.x, x_4849.y, x_4850.z, x_4850.w);
            let x_4853 : vec4<f32> = u_xlat13;
            let x_4855 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_4853.x, x_4853.x, x_4853.x, x_4853.x) * x_4855);
            let x_4858 : vec4<f32> = u_xlat13;
            let x_4860 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_4858.y, x_4858.y, x_4858.y, x_4858.y) * x_4860);
            let x_4863 : vec4<f32> = u_xlat13;
            let x_4865 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_4863.z, x_4863.z, x_4863.z, x_4863.z) * x_4865);
            let x_4867 : vec4<f32> = u_xlat13;
            let x_4869 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_4867.w, x_4867.w, x_4867.w, x_4867.w) * x_4869);
            let x_4872 : vec4<f32> = u_xlat18;
            let x_4873 : vec2<f32> = vec2<f32>(x_4872.x, x_4872.y);
            let x_4875 : f32 = u_xlat11.z;
            txVec73 = vec3<f32>(x_4873.x, x_4873.y, x_4875);
            let x_4882 : vec3<f32> = txVec73;
            let x_4884 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4882.xy, x_4882.z);
            u_xlat88 = x_4884;
            let x_4886 : vec4<f32> = u_xlat18;
            let x_4887 : vec2<f32> = vec2<f32>(x_4886.z, x_4886.w);
            let x_4889 : f32 = u_xlat11.z;
            txVec74 = vec3<f32>(x_4887.x, x_4887.y, x_4889);
            let x_4896 : vec3<f32> = txVec74;
            let x_4898 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4896.xy, x_4896.z);
            u_xlat89 = x_4898;
            let x_4899 : f32 = u_xlat89;
            let x_4901 : f32 = u_xlat23.y;
            u_xlat89 = (x_4899 * x_4901);
            let x_4904 : f32 = u_xlat23.x;
            let x_4905 : f32 = u_xlat88;
            let x_4907 : f32 = u_xlat89;
            u_xlat88 = ((x_4904 * x_4905) + x_4907);
            let x_4910 : vec2<f32> = u_xlat64;
            let x_4912 : f32 = u_xlat11.z;
            txVec75 = vec3<f32>(x_4910.x, x_4910.y, x_4912);
            let x_4919 : vec3<f32> = txVec75;
            let x_4921 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4919.xy, x_4919.z);
            u_xlat89 = x_4921;
            let x_4923 : f32 = u_xlat23.z;
            let x_4924 : f32 = u_xlat89;
            let x_4926 : f32 = u_xlat88;
            u_xlat88 = ((x_4923 * x_4924) + x_4926);
            let x_4929 : vec4<f32> = u_xlat21;
            let x_4930 : vec2<f32> = vec2<f32>(x_4929.x, x_4929.y);
            let x_4932 : f32 = u_xlat11.z;
            txVec76 = vec3<f32>(x_4930.x, x_4930.y, x_4932);
            let x_4939 : vec3<f32> = txVec76;
            let x_4941 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4939.xy, x_4939.z);
            u_xlat89 = x_4941;
            let x_4943 : f32 = u_xlat23.w;
            let x_4944 : f32 = u_xlat89;
            let x_4946 : f32 = u_xlat88;
            u_xlat88 = ((x_4943 * x_4944) + x_4946);
            let x_4949 : vec4<f32> = u_xlat19;
            let x_4950 : vec2<f32> = vec2<f32>(x_4949.x, x_4949.y);
            let x_4952 : f32 = u_xlat11.z;
            txVec77 = vec3<f32>(x_4950.x, x_4950.y, x_4952);
            let x_4959 : vec3<f32> = txVec77;
            let x_4961 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4959.xy, x_4959.z);
            u_xlat89 = x_4961;
            let x_4963 : f32 = u_xlat24.x;
            let x_4964 : f32 = u_xlat89;
            let x_4966 : f32 = u_xlat88;
            u_xlat88 = ((x_4963 * x_4964) + x_4966);
            let x_4969 : vec4<f32> = u_xlat19;
            let x_4970 : vec2<f32> = vec2<f32>(x_4969.z, x_4969.w);
            let x_4972 : f32 = u_xlat11.z;
            txVec78 = vec3<f32>(x_4970.x, x_4970.y, x_4972);
            let x_4979 : vec3<f32> = txVec78;
            let x_4981 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4979.xy, x_4979.z);
            u_xlat89 = x_4981;
            let x_4983 : f32 = u_xlat24.y;
            let x_4984 : f32 = u_xlat89;
            let x_4986 : f32 = u_xlat88;
            u_xlat88 = ((x_4983 * x_4984) + x_4986);
            let x_4989 : vec4<f32> = u_xlat20;
            let x_4990 : vec2<f32> = vec2<f32>(x_4989.x, x_4989.y);
            let x_4992 : f32 = u_xlat11.z;
            txVec79 = vec3<f32>(x_4990.x, x_4990.y, x_4992);
            let x_4999 : vec3<f32> = txVec79;
            let x_5001 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4999.xy, x_4999.z);
            u_xlat89 = x_5001;
            let x_5003 : f32 = u_xlat24.z;
            let x_5004 : f32 = u_xlat89;
            let x_5006 : f32 = u_xlat88;
            u_xlat88 = ((x_5003 * x_5004) + x_5006);
            let x_5009 : vec4<f32> = u_xlat21;
            let x_5010 : vec2<f32> = vec2<f32>(x_5009.z, x_5009.w);
            let x_5012 : f32 = u_xlat11.z;
            txVec80 = vec3<f32>(x_5010.x, x_5010.y, x_5012);
            let x_5019 : vec3<f32> = txVec80;
            let x_5021 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5019.xy, x_5019.z);
            u_xlat89 = x_5021;
            let x_5023 : f32 = u_xlat24.w;
            let x_5024 : f32 = u_xlat89;
            let x_5026 : f32 = u_xlat88;
            u_xlat88 = ((x_5023 * x_5024) + x_5026);
            let x_5029 : vec4<f32> = u_xlat22;
            let x_5030 : vec2<f32> = vec2<f32>(x_5029.x, x_5029.y);
            let x_5032 : f32 = u_xlat11.z;
            txVec81 = vec3<f32>(x_5030.x, x_5030.y, x_5032);
            let x_5039 : vec3<f32> = txVec81;
            let x_5041 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5039.xy, x_5039.z);
            u_xlat89 = x_5041;
            let x_5043 : f32 = u_xlat25.x;
            let x_5044 : f32 = u_xlat89;
            let x_5046 : f32 = u_xlat88;
            u_xlat88 = ((x_5043 * x_5044) + x_5046);
            let x_5049 : vec4<f32> = u_xlat22;
            let x_5050 : vec2<f32> = vec2<f32>(x_5049.z, x_5049.w);
            let x_5052 : f32 = u_xlat11.z;
            txVec82 = vec3<f32>(x_5050.x, x_5050.y, x_5052);
            let x_5059 : vec3<f32> = txVec82;
            let x_5061 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5059.xy, x_5059.z);
            u_xlat89 = x_5061;
            let x_5063 : f32 = u_xlat25.y;
            let x_5064 : f32 = u_xlat89;
            let x_5066 : f32 = u_xlat88;
            u_xlat88 = ((x_5063 * x_5064) + x_5066);
            let x_5069 : vec2<f32> = u_xlat40;
            let x_5071 : f32 = u_xlat11.z;
            txVec83 = vec3<f32>(x_5069.x, x_5069.y, x_5071);
            let x_5078 : vec3<f32> = txVec83;
            let x_5080 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5078.xy, x_5078.z);
            u_xlat89 = x_5080;
            let x_5082 : f32 = u_xlat25.z;
            let x_5083 : f32 = u_xlat89;
            let x_5085 : f32 = u_xlat88;
            u_xlat88 = ((x_5082 * x_5083) + x_5085);
            let x_5088 : vec2<f32> = u_xlat72;
            let x_5090 : f32 = u_xlat11.z;
            txVec84 = vec3<f32>(x_5088.x, x_5088.y, x_5090);
            let x_5097 : vec3<f32> = txVec84;
            let x_5099 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5097.xy, x_5097.z);
            u_xlat89 = x_5099;
            let x_5101 : f32 = u_xlat25.w;
            let x_5102 : f32 = u_xlat89;
            let x_5104 : f32 = u_xlat88;
            u_xlat88 = ((x_5101 * x_5102) + x_5104);
            let x_5107 : vec4<f32> = u_xlat17;
            let x_5108 : vec2<f32> = vec2<f32>(x_5107.x, x_5107.y);
            let x_5110 : f32 = u_xlat11.z;
            txVec85 = vec3<f32>(x_5108.x, x_5108.y, x_5110);
            let x_5117 : vec3<f32> = txVec85;
            let x_5119 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5117.xy, x_5117.z);
            u_xlat89 = x_5119;
            let x_5121 : f32 = u_xlat13.x;
            let x_5122 : f32 = u_xlat89;
            let x_5124 : f32 = u_xlat88;
            u_xlat88 = ((x_5121 * x_5122) + x_5124);
            let x_5127 : vec4<f32> = u_xlat17;
            let x_5128 : vec2<f32> = vec2<f32>(x_5127.z, x_5127.w);
            let x_5130 : f32 = u_xlat11.z;
            txVec86 = vec3<f32>(x_5128.x, x_5128.y, x_5130);
            let x_5137 : vec3<f32> = txVec86;
            let x_5139 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5137.xy, x_5137.z);
            u_xlat89 = x_5139;
            let x_5141 : f32 = u_xlat13.y;
            let x_5142 : f32 = u_xlat89;
            let x_5144 : f32 = u_xlat88;
            u_xlat88 = ((x_5141 * x_5142) + x_5144);
            let x_5147 : vec2<f32> = u_xlat67;
            let x_5149 : f32 = u_xlat11.z;
            txVec87 = vec3<f32>(x_5147.x, x_5147.y, x_5149);
            let x_5156 : vec3<f32> = txVec87;
            let x_5158 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5156.xy, x_5156.z);
            u_xlat89 = x_5158;
            let x_5160 : f32 = u_xlat13.z;
            let x_5161 : f32 = u_xlat89;
            let x_5163 : f32 = u_xlat88;
            u_xlat88 = ((x_5160 * x_5161) + x_5163);
            let x_5166 : vec4<f32> = u_xlat12;
            let x_5167 : vec2<f32> = vec2<f32>(x_5166.x, x_5166.y);
            let x_5169 : f32 = u_xlat11.z;
            txVec88 = vec3<f32>(x_5167.x, x_5167.y, x_5169);
            let x_5176 : vec3<f32> = txVec88;
            let x_5178 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5176.xy, x_5176.z);
            u_xlat89 = x_5178;
            let x_5180 : f32 = u_xlat13.w;
            let x_5181 : f32 = u_xlat89;
            let x_5183 : f32 = u_xlat88;
            u_xlat86 = ((x_5180 * x_5181) + x_5183);
          }
        }
      } else {
        let x_5187 : vec4<f32> = u_xlat11;
        let x_5188 : vec2<f32> = vec2<f32>(x_5187.x, x_5187.y);
        let x_5190 : f32 = u_xlat11.z;
        txVec89 = vec3<f32>(x_5188.x, x_5188.y, x_5190);
        let x_5197 : vec3<f32> = txVec89;
        let x_5199 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5197.xy, x_5197.z);
        u_xlat86 = x_5199;
      }
      let x_5200 : i32 = u_xlati81;
      let x_5202 : f32 = x_355.x_AdditionalShadowParams[x_5200].x;
      u_xlat88 = (1.0f + -(x_5202));
      let x_5205 : f32 = u_xlat86;
      let x_5206 : i32 = u_xlati81;
      let x_5208 : f32 = x_355.x_AdditionalShadowParams[x_5206].x;
      let x_5210 : f32 = u_xlat88;
      u_xlat86 = ((x_5205 * x_5208) + x_5210);
      let x_5213 : f32 = u_xlat11.z;
      u_xlatb88 = (0.0f >= x_5213);
      let x_5216 : f32 = u_xlat11.z;
      u_xlatb11.x = (x_5216 >= 1.0f);
      let x_5219 : bool = u_xlatb88;
      let x_5221 : bool = u_xlatb11.x;
      u_xlatb88 = (x_5219 | x_5221);
      let x_5223 : bool = u_xlatb88;
      let x_5224 : f32 = u_xlat86;
      u_xlat86 = select(x_5224, 1.0f, x_5223);
    } else {
      u_xlat86 = 1.0f;
    }
    let x_5227 : f32 = u_xlat86;
    u_xlat88 = (-(x_5227) + 1.0f);
    let x_5231 : f32 = u_xlat2.x;
    let x_5232 : f32 = u_xlat88;
    let x_5234 : f32 = u_xlat86;
    u_xlat86 = ((x_5231 * x_5232) + x_5234);
    let x_5237 : i32 = u_xlati81;
    u_xlati88 = (1i << bitcast<u32>((x_5237 & 31i)));
    let x_5241 : i32 = u_xlati88;
    let x_5244 : f32 = x_3333.x_AdditionalLightsCookieEnableBits;
    u_xlati88 = bitcast<i32>((bitcast<u32>(x_5241) & bitcast<u32>(x_5244)));
    let x_5248 : i32 = u_xlati88;
    if ((x_5248 != 0i)) {
      let x_5252 : i32 = u_xlati81;
      let x_5254 : f32 = x_3333.x_AdditionalLightsLightTypes[x_5252].el;
      u_xlati88 = i32(x_5254);
      let x_5257 : i32 = u_xlati88;
      u_xlati11 = select(1i, 0i, (x_5257 != 0i));
      let x_5261 : i32 = u_xlati81;
      u_xlati37 = (x_5261 << bitcast<u32>(2i));
      let x_5263 : i32 = u_xlati11;
      if ((x_5263 != 0i)) {
        let x_5267 : vec3<f32> = vs_INTERP8;
        let x_5269 : i32 = u_xlati37;
        let x_5272 : i32 = u_xlati37;
        let x_5276 : vec4<f32> = x_3333.x_AdditionalLightsWorldToLights[((x_5269 + 1i) / 4i)][((x_5272 + 1i) % 4i)];
        let x_5278 : vec3<f32> = (vec3<f32>(x_5267.y, x_5267.y, x_5267.y) * vec3<f32>(x_5276.x, x_5276.y, x_5276.w));
        let x_5279 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5278.x, x_5279.y, x_5278.y, x_5278.z);
        let x_5281 : i32 = u_xlati37;
        let x_5283 : i32 = u_xlati37;
        let x_5286 : vec4<f32> = x_3333.x_AdditionalLightsWorldToLights[(x_5281 / 4i)][(x_5283 % 4i)];
        let x_5288 : vec3<f32> = vs_INTERP8;
        let x_5291 : vec4<f32> = u_xlat11;
        let x_5293 : vec3<f32> = ((vec3<f32>(x_5286.x, x_5286.y, x_5286.w) * vec3<f32>(x_5288.x, x_5288.x, x_5288.x)) + vec3<f32>(x_5291.x, x_5291.z, x_5291.w));
        let x_5294 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5293.x, x_5294.y, x_5293.y, x_5293.z);
        let x_5296 : i32 = u_xlati37;
        let x_5299 : i32 = u_xlati37;
        let x_5303 : vec4<f32> = x_3333.x_AdditionalLightsWorldToLights[((x_5296 + 2i) / 4i)][((x_5299 + 2i) % 4i)];
        let x_5305 : vec3<f32> = vs_INTERP8;
        let x_5308 : vec4<f32> = u_xlat11;
        let x_5310 : vec3<f32> = ((vec3<f32>(x_5303.x, x_5303.y, x_5303.w) * vec3<f32>(x_5305.z, x_5305.z, x_5305.z)) + vec3<f32>(x_5308.x, x_5308.z, x_5308.w));
        let x_5311 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5310.x, x_5311.y, x_5310.y, x_5310.z);
        let x_5313 : vec4<f32> = u_xlat11;
        let x_5315 : i32 = u_xlati37;
        let x_5318 : i32 = u_xlati37;
        let x_5322 : vec4<f32> = x_3333.x_AdditionalLightsWorldToLights[((x_5315 + 3i) / 4i)][((x_5318 + 3i) % 4i)];
        let x_5324 : vec3<f32> = (vec3<f32>(x_5313.x, x_5313.z, x_5313.w) + vec3<f32>(x_5322.x, x_5322.y, x_5322.w));
        let x_5325 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5324.x, x_5325.y, x_5324.y, x_5324.z);
        let x_5327 : vec4<f32> = u_xlat11;
        let x_5329 : vec4<f32> = u_xlat11;
        let x_5331 : vec2<f32> = (vec2<f32>(x_5327.x, x_5327.z) / vec2<f32>(x_5329.w, x_5329.w));
        let x_5332 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5331.x, x_5332.y, x_5331.y, x_5332.w);
        let x_5334 : vec4<f32> = u_xlat11;
        let x_5337 : vec2<f32> = ((vec2<f32>(x_5334.x, x_5334.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_5338 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5337.x, x_5338.y, x_5337.y, x_5338.w);
        let x_5340 : vec4<f32> = u_xlat11;
        let x_5344 : vec2<f32> = clamp(vec2<f32>(x_5340.x, x_5340.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_5345 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5344.x, x_5345.y, x_5344.y, x_5345.w);
        let x_5347 : i32 = u_xlati81;
        let x_5349 : vec4<f32> = x_3333.x_AdditionalLightsCookieAtlasUVRects[x_5347];
        let x_5351 : vec4<f32> = u_xlat11;
        let x_5354 : i32 = u_xlati81;
        let x_5356 : vec4<f32> = x_3333.x_AdditionalLightsCookieAtlasUVRects[x_5354];
        let x_5358 : vec2<f32> = ((vec2<f32>(x_5349.x, x_5349.y) * vec2<f32>(x_5351.x, x_5351.z)) + vec2<f32>(x_5356.z, x_5356.w));
        let x_5359 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5358.x, x_5359.y, x_5358.y, x_5359.w);
      } else {
        let x_5362 : i32 = u_xlati88;
        u_xlatb88 = (x_5362 == 1i);
        let x_5364 : bool = u_xlatb88;
        u_xlati88 = select(0i, 1i, x_5364);
        let x_5366 : i32 = u_xlati88;
        if ((x_5366 != 0i)) {
          let x_5370 : vec3<f32> = vs_INTERP8;
          let x_5372 : i32 = u_xlati37;
          let x_5375 : i32 = u_xlati37;
          let x_5379 : vec4<f32> = x_3333.x_AdditionalLightsWorldToLights[((x_5372 + 1i) / 4i)][((x_5375 + 1i) % 4i)];
          let x_5381 : vec2<f32> = (vec2<f32>(x_5370.y, x_5370.y) * vec2<f32>(x_5379.x, x_5379.y));
          let x_5382 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5381.x, x_5381.y, x_5382.z, x_5382.w);
          let x_5384 : i32 = u_xlati37;
          let x_5386 : i32 = u_xlati37;
          let x_5389 : vec4<f32> = x_3333.x_AdditionalLightsWorldToLights[(x_5384 / 4i)][(x_5386 % 4i)];
          let x_5391 : vec3<f32> = vs_INTERP8;
          let x_5394 : vec4<f32> = u_xlat12;
          let x_5396 : vec2<f32> = ((vec2<f32>(x_5389.x, x_5389.y) * vec2<f32>(x_5391.x, x_5391.x)) + vec2<f32>(x_5394.x, x_5394.y));
          let x_5397 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5396.x, x_5396.y, x_5397.z, x_5397.w);
          let x_5399 : i32 = u_xlati37;
          let x_5402 : i32 = u_xlati37;
          let x_5406 : vec4<f32> = x_3333.x_AdditionalLightsWorldToLights[((x_5399 + 2i) / 4i)][((x_5402 + 2i) % 4i)];
          let x_5408 : vec3<f32> = vs_INTERP8;
          let x_5411 : vec4<f32> = u_xlat12;
          let x_5413 : vec2<f32> = ((vec2<f32>(x_5406.x, x_5406.y) * vec2<f32>(x_5408.z, x_5408.z)) + vec2<f32>(x_5411.x, x_5411.y));
          let x_5414 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5413.x, x_5413.y, x_5414.z, x_5414.w);
          let x_5416 : vec4<f32> = u_xlat12;
          let x_5418 : i32 = u_xlati37;
          let x_5421 : i32 = u_xlati37;
          let x_5425 : vec4<f32> = x_3333.x_AdditionalLightsWorldToLights[((x_5418 + 3i) / 4i)][((x_5421 + 3i) % 4i)];
          let x_5427 : vec2<f32> = (vec2<f32>(x_5416.x, x_5416.y) + vec2<f32>(x_5425.x, x_5425.y));
          let x_5428 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5427.x, x_5427.y, x_5428.z, x_5428.w);
          let x_5430 : vec4<f32> = u_xlat12;
          let x_5433 : vec2<f32> = ((vec2<f32>(x_5430.x, x_5430.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_5434 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5433.x, x_5433.y, x_5434.z, x_5434.w);
          let x_5436 : vec4<f32> = u_xlat12;
          let x_5438 : vec2<f32> = fract(vec2<f32>(x_5436.x, x_5436.y));
          let x_5439 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5438.x, x_5438.y, x_5439.z, x_5439.w);
          let x_5441 : i32 = u_xlati81;
          let x_5443 : vec4<f32> = x_3333.x_AdditionalLightsCookieAtlasUVRects[x_5441];
          let x_5445 : vec4<f32> = u_xlat12;
          let x_5448 : i32 = u_xlati81;
          let x_5450 : vec4<f32> = x_3333.x_AdditionalLightsCookieAtlasUVRects[x_5448];
          let x_5452 : vec2<f32> = ((vec2<f32>(x_5443.x, x_5443.y) * vec2<f32>(x_5445.x, x_5445.y)) + vec2<f32>(x_5450.z, x_5450.w));
          let x_5453 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_5452.x, x_5453.y, x_5452.y, x_5453.w);
        } else {
          let x_5456 : vec3<f32> = vs_INTERP8;
          let x_5458 : i32 = u_xlati37;
          let x_5461 : i32 = u_xlati37;
          let x_5465 : vec4<f32> = x_3333.x_AdditionalLightsWorldToLights[((x_5458 + 1i) / 4i)][((x_5461 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_5456.y, x_5456.y, x_5456.y, x_5456.y) * x_5465);
          let x_5467 : i32 = u_xlati37;
          let x_5469 : i32 = u_xlati37;
          let x_5472 : vec4<f32> = x_3333.x_AdditionalLightsWorldToLights[(x_5467 / 4i)][(x_5469 % 4i)];
          let x_5473 : vec3<f32> = vs_INTERP8;
          let x_5476 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_5472 * vec4<f32>(x_5473.x, x_5473.x, x_5473.x, x_5473.x)) + x_5476);
          let x_5478 : i32 = u_xlati37;
          let x_5481 : i32 = u_xlati37;
          let x_5485 : vec4<f32> = x_3333.x_AdditionalLightsWorldToLights[((x_5478 + 2i) / 4i)][((x_5481 + 2i) % 4i)];
          let x_5486 : vec3<f32> = vs_INTERP8;
          let x_5489 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_5485 * vec4<f32>(x_5486.z, x_5486.z, x_5486.z, x_5486.z)) + x_5489);
          let x_5491 : vec4<f32> = u_xlat12;
          let x_5492 : i32 = u_xlati37;
          let x_5495 : i32 = u_xlati37;
          let x_5499 : vec4<f32> = x_3333.x_AdditionalLightsWorldToLights[((x_5492 + 3i) / 4i)][((x_5495 + 3i) % 4i)];
          u_xlat12 = (x_5491 + x_5499);
          let x_5501 : vec4<f32> = u_xlat12;
          let x_5503 : vec4<f32> = u_xlat12;
          let x_5505 : vec3<f32> = (vec3<f32>(x_5501.x, x_5501.y, x_5501.z) / vec3<f32>(x_5503.w, x_5503.w, x_5503.w));
          let x_5506 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5505.x, x_5505.y, x_5505.z, x_5506.w);
          let x_5508 : vec4<f32> = u_xlat12;
          let x_5510 : vec4<f32> = u_xlat12;
          u_xlat88 = dot(vec3<f32>(x_5508.x, x_5508.y, x_5508.z), vec3<f32>(x_5510.x, x_5510.y, x_5510.z));
          let x_5513 : f32 = u_xlat88;
          u_xlat88 = inverseSqrt(x_5513);
          let x_5515 : f32 = u_xlat88;
          let x_5517 : vec4<f32> = u_xlat12;
          let x_5519 : vec3<f32> = (vec3<f32>(x_5515, x_5515, x_5515) * vec3<f32>(x_5517.x, x_5517.y, x_5517.z));
          let x_5520 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5519.x, x_5519.y, x_5519.z, x_5520.w);
          let x_5522 : vec4<f32> = u_xlat12;
          u_xlat88 = dot(abs(vec3<f32>(x_5522.x, x_5522.y, x_5522.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_5527 : f32 = u_xlat88;
          u_xlat88 = max(x_5527, 0.00000099999999747524f);
          let x_5530 : f32 = u_xlat88;
          u_xlat88 = (1.0f / x_5530);
          let x_5532 : f32 = u_xlat88;
          let x_5534 : vec4<f32> = u_xlat12;
          let x_5536 : vec3<f32> = (vec3<f32>(x_5532, x_5532, x_5532) * vec3<f32>(x_5534.z, x_5534.x, x_5534.y));
          let x_5537 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_5536.x, x_5536.y, x_5536.z, x_5537.w);
          let x_5540 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_5540);
          let x_5544 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_5544, 0.0f, 1.0f);
          let x_5549 : vec4<f32> = u_xlat13;
          let x_5551 : vec4<bool> = (vec4<f32>(x_5549.y, x_5549.y, x_5549.z, x_5549.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_5552 : vec2<bool> = vec2<bool>(x_5551.x, x_5551.z);
          let x_5553 : vec3<bool> = u_xlatb37;
          u_xlatb37 = vec3<bool>(x_5552.x, x_5553.y, x_5552.y);
          let x_5556 : bool = u_xlatb37.x;
          if (x_5556) {
            let x_5561 : f32 = u_xlat13.x;
            x_5557 = x_5561;
          } else {
            let x_5564 : f32 = u_xlat13.x;
            x_5557 = -(x_5564);
          }
          let x_5566 : f32 = x_5557;
          u_xlat37.x = x_5566;
          let x_5569 : bool = u_xlatb37.z;
          if (x_5569) {
            let x_5574 : f32 = u_xlat13.x;
            x_5570 = x_5574;
          } else {
            let x_5577 : f32 = u_xlat13.x;
            x_5570 = -(x_5577);
          }
          let x_5579 : f32 = x_5570;
          u_xlat37.z = x_5579;
          let x_5581 : vec4<f32> = u_xlat12;
          let x_5583 : f32 = u_xlat88;
          let x_5586 : vec3<f32> = u_xlat37;
          let x_5588 : vec2<f32> = ((vec2<f32>(x_5581.x, x_5581.y) * vec2<f32>(x_5583, x_5583)) + vec2<f32>(x_5586.x, x_5586.z));
          let x_5589 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_5588.x, x_5589.y, x_5588.y);
          let x_5591 : vec3<f32> = u_xlat37;
          let x_5594 : vec2<f32> = ((vec2<f32>(x_5591.x, x_5591.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_5595 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_5594.x, x_5595.y, x_5594.y);
          let x_5597 : vec3<f32> = u_xlat37;
          let x_5601 : vec2<f32> = clamp(vec2<f32>(x_5597.x, x_5597.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_5602 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_5601.x, x_5602.y, x_5601.y);
          let x_5604 : i32 = u_xlati81;
          let x_5606 : vec4<f32> = x_3333.x_AdditionalLightsCookieAtlasUVRects[x_5604];
          let x_5608 : vec3<f32> = u_xlat37;
          let x_5611 : i32 = u_xlati81;
          let x_5613 : vec4<f32> = x_3333.x_AdditionalLightsCookieAtlasUVRects[x_5611];
          let x_5615 : vec2<f32> = ((vec2<f32>(x_5606.x, x_5606.y) * vec2<f32>(x_5608.x, x_5608.z)) + vec2<f32>(x_5613.z, x_5613.w));
          let x_5616 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_5615.x, x_5616.y, x_5615.y, x_5616.w);
        }
      }
      let x_5623 : vec4<f32> = u_xlat11;
      let x_5625 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_5623.x, x_5623.z), 0.0f);
      u_xlat11 = x_5625;
      let x_5627 : bool = u_xlatb58.y;
      if (x_5627) {
        let x_5632 : f32 = u_xlat11.w;
        x_5628 = x_5632;
      } else {
        let x_5635 : f32 = u_xlat11.x;
        x_5628 = x_5635;
      }
      let x_5636 : f32 = x_5628;
      u_xlat88 = x_5636;
      let x_5638 : bool = u_xlatb58.x;
      if (x_5638) {
        let x_5642 : vec4<f32> = u_xlat11;
        x_5639 = vec3<f32>(x_5642.x, x_5642.y, x_5642.z);
      } else {
        let x_5645 : f32 = u_xlat88;
        x_5639 = vec3<f32>(x_5645, x_5645, x_5645);
      }
      let x_5647 : vec3<f32> = x_5639;
      let x_5648 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_5647.x, x_5647.y, x_5647.z, x_5648.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_5654 : vec4<f32> = u_xlat11;
    let x_5656 : i32 = u_xlati81;
    let x_5658 : vec4<f32> = x_3796.x_AdditionalLightsColor[x_5656];
    let x_5660 : vec3<f32> = (vec3<f32>(x_5654.x, x_5654.y, x_5654.z) * vec3<f32>(x_5658.x, x_5658.y, x_5658.z));
    let x_5661 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_5660.x, x_5660.y, x_5660.z, x_5661.w);
    let x_5663 : f32 = u_xlat83;
    let x_5664 : f32 = u_xlat86;
    u_xlat81 = (x_5663 * x_5664);
    let x_5666 : vec3<f32> = u_xlat26;
    let x_5667 : vec4<f32> = u_xlat10;
    u_xlat83 = dot(x_5666, vec3<f32>(x_5667.x, x_5667.y, x_5667.z));
    let x_5670 : f32 = u_xlat83;
    u_xlat83 = clamp(x_5670, 0.0f, 1.0f);
    let x_5672 : f32 = u_xlat81;
    let x_5673 : f32 = u_xlat83;
    u_xlat81 = (x_5672 * x_5673);
    let x_5675 : f32 = u_xlat81;
    let x_5677 : vec4<f32> = u_xlat11;
    let x_5679 : vec3<f32> = (vec3<f32>(x_5675, x_5675, x_5675) * vec3<f32>(x_5677.x, x_5677.y, x_5677.z));
    let x_5680 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_5679.x, x_5679.y, x_5679.z, x_5680.w);
    let x_5682 : vec3<f32> = u_xlat35;
    let x_5683 : f32 = u_xlat85;
    let x_5686 : vec3<f32> = u_xlat4;
    u_xlat35 = ((x_5682 * vec3<f32>(x_5683, x_5683, x_5683)) + x_5686);
    let x_5688 : vec3<f32> = u_xlat35;
    let x_5689 : vec3<f32> = u_xlat35;
    u_xlat81 = dot(x_5688, x_5689);
    let x_5691 : f32 = u_xlat81;
    u_xlat81 = max(x_5691, 1.17549435e-38f);
    let x_5693 : f32 = u_xlat81;
    u_xlat81 = inverseSqrt(x_5693);
    let x_5695 : f32 = u_xlat81;
    let x_5697 : vec3<f32> = u_xlat35;
    u_xlat35 = (vec3<f32>(x_5695, x_5695, x_5695) * x_5697);
    let x_5699 : vec3<f32> = u_xlat26;
    let x_5700 : vec3<f32> = u_xlat35;
    u_xlat81 = dot(x_5699, x_5700);
    let x_5702 : f32 = u_xlat81;
    u_xlat81 = clamp(x_5702, 0.0f, 1.0f);
    let x_5704 : vec4<f32> = u_xlat10;
    let x_5706 : vec3<f32> = u_xlat35;
    u_xlat83 = dot(vec3<f32>(x_5704.x, x_5704.y, x_5704.z), x_5706);
    let x_5708 : f32 = u_xlat83;
    u_xlat83 = clamp(x_5708, 0.0f, 1.0f);
    let x_5710 : f32 = u_xlat81;
    let x_5711 : f32 = u_xlat81;
    u_xlat81 = (x_5710 * x_5711);
    let x_5713 : f32 = u_xlat81;
    let x_5715 : f32 = u_xlat9.x;
    u_xlat81 = ((x_5713 * x_5715) + 1.00001001358032226562f);
    let x_5718 : f32 = u_xlat83;
    let x_5719 : f32 = u_xlat83;
    u_xlat83 = (x_5718 * x_5719);
    let x_5721 : f32 = u_xlat81;
    let x_5722 : f32 = u_xlat81;
    u_xlat81 = (x_5721 * x_5722);
    let x_5724 : f32 = u_xlat83;
    u_xlat83 = max(x_5724, 0.10000000149011611938f);
    let x_5726 : f32 = u_xlat81;
    let x_5727 : f32 = u_xlat83;
    u_xlat81 = (x_5726 * x_5727);
    let x_5730 : f32 = u_xlat6.x;
    let x_5731 : f32 = u_xlat81;
    u_xlat81 = (x_5730 * x_5731);
    let x_5733 : f32 = u_xlat82;
    let x_5734 : f32 = u_xlat81;
    u_xlat81 = (x_5733 / x_5734);
    let x_5736 : f32 = u_xlat81;
    let x_5739 : vec3<f32> = u_xlat5;
    u_xlat35 = ((vec3<f32>(x_5736, x_5736, x_5736) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_5739);
    let x_5741 : vec3<f32> = u_xlat35;
    let x_5742 : vec4<f32> = u_xlat11;
    let x_5745 : vec4<f32> = u_xlat8;
    let x_5747 : vec3<f32> = ((x_5741 * vec3<f32>(x_5742.x, x_5742.y, x_5742.z)) + vec3<f32>(x_5745.x, x_5745.y, x_5745.z));
    let x_5748 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_5747.x, x_5747.y, x_5747.z, x_5748.w);

    continuing {
      let x_5750 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_5750 + bitcast<u32>(1i));
    }
  }
  let x_5752 : vec4<f32> = u_xlat3;
  let x_5754 : f32 = u_xlat32;
  let x_5757 : vec4<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_5752.x, x_5752.y, x_5752.z) * vec3<f32>(x_5754, x_5754, x_5754)) + vec3<f32>(x_5757.x, x_5757.y, x_5757.z));
  let x_5760 : vec4<f32> = u_xlat8;
  let x_5762 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_5760.x, x_5760.y, x_5760.z) + x_5762);
  let x_5764 : vec4<f32> = vs_INTERP6;
  let x_5766 : vec3<f32> = u_xlat1;
  let x_5768 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_5764.w, x_5764.w, x_5764.w) * x_5766) + x_5768);
  let x_5771 : f32 = u_xlat54;
  let x_5772 : f32 = u_xlat54;
  u_xlat78 = (x_5771 * -(x_5772));
  let x_5775 : f32 = u_xlat78;
  u_xlat78 = exp2(x_5775);
  let x_5777 : vec3<f32> = u_xlat0;
  let x_5779 : vec4<f32> = x_147.unity_FogColor;
  u_xlat0 = (x_5777 + -(vec3<f32>(x_5779.x, x_5779.y, x_5779.z)));
  let x_5785 : f32 = u_xlat78;
  let x_5787 : vec3<f32> = u_xlat0;
  let x_5790 : vec4<f32> = x_147.unity_FogColor;
  let x_5792 : vec3<f32> = ((vec3<f32>(x_5785, x_5785, x_5785) * x_5787) + vec3<f32>(x_5790.x, x_5790.y, x_5790.z));
  let x_5793 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_5792.x, x_5792.y, x_5792.z, x_5793.w);
  let x_5795 : bool = u_xlatb28;
  let x_5796 : f32 = u_xlat79;
  SV_Target0.w = select(1.0f, x_5796, x_5795);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(6) vs_INTERP9_param : vec3<f32>, @location(2) vs_INTERP4_param : vec4<f32>, @location(5) vs_INTERP8_param : vec3<f32>, @location(3) vs_INTERP5_param : vec4<f32>, @location(4) vs_INTERP6_param : vec4<f32>, @location(0) vs_INTERP0_param : vec2<f32>, @location(1) vs_INTERP3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP9 = vs_INTERP9_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP6 = vs_INTERP6_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP3 = vs_INTERP3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


