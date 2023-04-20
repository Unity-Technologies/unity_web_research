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

@group(1) @binding(5) var<uniform> x_267 : UnityPerMaterial;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(8) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(15) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat34 : vec3<f32>;

var<private> vs_INTERP6 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_371 : LightShadows;

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

var<private> u_xlat54 : vec2<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat81 : f32;

var<private> u_xlat83 : f32;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlatb32 : vec2<bool>;

var<private> u_xlat32 : vec3<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat58 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlat65 : vec2<f32>;

var<private> u_xlatb2 : bool;

@group(1) @binding(4) var<uniform> x_3330 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlat85 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu0 : u32;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu82 : u32;

var<private> u_xlati59 : i32;

var<private> u_xlati82 : i32;

@group(1) @binding(1) var<uniform> x_3805 : AdditionalLights;

var<private> u_xlat86 : f32;

var<private> u_xlati86 : i32;

var<private> u_xlatb87 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat88 : f32;

var<private> u_xlat87 : f32;

var<private> u_xlatb86 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat66 : vec2<f32>;

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

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb82 : bool;

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
  var x_174 : f32;
  var x_187 : f32;
  var x_199 : f32;
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
  var x_1712 : f32;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var x_1838 : f32;
  var x_1891 : f32;
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
  var x_3283 : f32;
  var x_3413 : f32;
  var x_3424 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_3962 : f32;
  var x_3972 : f32;
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
  var x_5556 : f32;
  var x_5569 : f32;
  var x_5627 : f32;
  var x_5638 : vec3<f32>;
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
  let x_172 : bool = u_xlatb0;
  if (x_172) {
    let x_178 : f32 = u_xlat4.x;
    x_174 = x_178;
  } else {
    let x_183 : f32 = x_147.unity_MatrixV[0i].z;
    x_174 = x_183;
  }
  let x_184 : f32 = x_174;
  u_xlat5.x = x_184;
  let x_186 : bool = u_xlatb0;
  if (x_186) {
    let x_191 : f32 = u_xlat4.y;
    x_187 = x_191;
  } else {
    let x_195 : f32 = x_147.unity_MatrixV[1i].z;
    x_187 = x_195;
  }
  let x_196 : f32 = x_187;
  u_xlat5.y = x_196;
  let x_198 : bool = u_xlatb0;
  if (x_198) {
    let x_203 : f32 = u_xlat4.z;
    x_199 = x_203;
  } else {
    let x_207 : f32 = x_147.unity_MatrixV[2i].z;
    x_199 = x_207;
  }
  let x_208 : f32 = x_199;
  u_xlat5.z = x_208;
  let x_210 : vec3<f32> = u_xlat5;
  let x_214 : vec4<f32> = x_83.unity_WorldToObject[1i];
  u_xlat4 = (vec3<f32>(x_210.y, x_210.y, x_210.y) * vec3<f32>(x_214.x, x_214.y, x_214.z));
  let x_218 : vec4<f32> = x_83.unity_WorldToObject[0i];
  let x_220 : vec3<f32> = u_xlat5;
  let x_223 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_218.x, x_218.y, x_218.z) * vec3<f32>(x_220.x, x_220.x, x_220.x)) + x_223);
  let x_226 : vec4<f32> = x_83.unity_WorldToObject[2i];
  let x_228 : vec3<f32> = u_xlat5;
  let x_231 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_226.x, x_226.y, x_226.z) * vec3<f32>(x_228.z, x_228.z, x_228.z)) + x_231);
  let x_233 : vec3<f32> = u_xlat4;
  let x_234 : vec3<f32> = u_xlat4;
  u_xlat0.x = dot(x_233, x_234);
  let x_238 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_238);
  let x_241 : vec3<f32> = u_xlat0;
  let x_243 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_241.x, x_241.x, x_241.x) * x_243);
  let x_257 : vec4<f32> = vs_INTERP5;
  let x_260 : f32 = x_147.x_GlobalMipBias.x;
  let x_261 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_257.x, x_257.y), x_260);
  u_xlat6 = x_261;
  let x_263 : vec4<f32> = u_xlat6;
  let x_269 : vec4<f32> = x_267.Color_C30C7CA3;
  let x_271 : vec3<f32> = (vec3<f32>(x_263.x, x_263.y, x_263.z) * vec3<f32>(x_269.x, x_269.y, x_269.z));
  let x_272 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_271.x, x_271.y, x_271.z, x_272.w);
  let x_280 : vec4<f32> = vs_INTERP5;
  let x_283 : f32 = x_147.x_GlobalMipBias.x;
  let x_284 : vec4<f32> = textureSampleBias(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1, vec2<f32>(x_280.x, x_280.y), x_283);
  u_xlat8 = vec4<f32>(x_284.w, x_284.x, x_284.y, x_284.z);
  let x_287 : vec4<f32> = u_xlat8;
  u_xlat9 = ((vec4<f32>(x_287.y, x_287.z, x_287.w, x_287.x) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_294 : vec4<f32> = u_xlat9;
  let x_295 : vec4<f32> = u_xlat9;
  u_xlat0.x = dot(x_294, x_295);
  let x_299 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_299);
  let x_303 : vec3<f32> = u_xlat0;
  let x_305 : vec4<f32> = u_xlat9;
  u_xlat34 = (vec3<f32>(x_303.x, x_303.x, x_303.x) * vec3<f32>(x_305.x, x_305.y, x_305.z));
  let x_310 : f32 = vs_INTERP6.y;
  u_xlat0.x = (x_310 * 200.0f);
  let x_315 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_315, 1.0f);
  let x_318 : vec3<f32> = u_xlat0;
  let x_320 : vec4<f32> = u_xlat6;
  let x_322 : vec3<f32> = (vec3<f32>(x_318.x, x_318.x, x_318.x) * vec3<f32>(x_320.x, x_320.y, x_320.z));
  let x_323 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323.w);
  let x_325 : vec4<f32> = u_xlat3;
  let x_327 : vec3<f32> = u_xlat34;
  let x_329 : vec3<f32> = (vec3<f32>(x_325.x, x_325.y, x_325.z) * vec3<f32>(x_327.y, x_327.y, x_327.y));
  let x_330 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_329.x, x_329.y, x_329.z, x_330.w);
  let x_332 : vec3<f32> = u_xlat34;
  let x_334 : vec3<f32> = u_xlat2;
  let x_336 : vec4<f32> = u_xlat3;
  u_xlat2 = ((vec3<f32>(x_332.x, x_332.x, x_332.x) * x_334) + vec3<f32>(x_336.x, x_336.y, x_336.z));
  let x_339 : vec3<f32> = u_xlat34;
  let x_341 : vec3<f32> = u_xlat1;
  let x_343 : vec3<f32> = u_xlat2;
  u_xlat1 = ((vec3<f32>(x_339.z, x_339.z, x_339.z) * x_341) + x_343);
  let x_345 : vec3<f32> = u_xlat1;
  let x_346 : vec3<f32> = u_xlat1;
  u_xlat0.x = dot(x_345, x_346);
  let x_350 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_350, 1.17549435e-38f);
  let x_355 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_355);
  let x_358 : vec3<f32> = u_xlat0;
  let x_360 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_358.x, x_358.x, x_358.x) * x_360);
  let x_362 : vec3<f32> = vs_INTERP8;
  let x_373 : vec4<f32> = x_371.x_MainLightWorldToShadow[0i][1i];
  u_xlat2 = (vec3<f32>(x_362.y, x_362.y, x_362.y) * vec3<f32>(x_373.x, x_373.y, x_373.z));
  let x_377 : vec4<f32> = x_371.x_MainLightWorldToShadow[0i][0i];
  let x_379 : vec3<f32> = vs_INTERP8;
  let x_382 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_377.x, x_377.y, x_377.z) * vec3<f32>(x_379.x, x_379.x, x_379.x)) + x_382);
  let x_385 : vec4<f32> = x_371.x_MainLightWorldToShadow[0i][2i];
  let x_387 : vec3<f32> = vs_INTERP8;
  let x_390 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_385.x, x_385.y, x_385.z) * vec3<f32>(x_387.z, x_387.z, x_387.z)) + x_390);
  let x_392 : vec3<f32> = u_xlat2;
  let x_394 : vec4<f32> = x_371.x_MainLightWorldToShadow[0i][3i];
  u_xlat2 = (x_392 + vec3<f32>(x_394.x, x_394.y, x_394.z));
  let x_398 : f32 = x_371.x_MainLightShadowParams.y;
  u_xlatb0 = (0.0f < x_398);
  let x_400 : bool = u_xlatb0;
  if (x_400) {
    let x_405 : f32 = x_371.x_MainLightShadowParams.y;
    u_xlatb79 = (x_405 == 1.0f);
    let x_407 : bool = u_xlatb79;
    if (x_407) {
      let x_410 : vec3<f32> = u_xlat2;
      let x_414 : vec4<f32> = x_371.x_MainLightShadowOffset0;
      u_xlat3 = (vec4<f32>(x_410.x, x_410.y, x_410.x, x_410.y) + x_414);
      let x_418 : vec4<f32> = u_xlat3;
      let x_419 : vec2<f32> = vec2<f32>(x_418.x, x_418.y);
      let x_421 : f32 = u_xlat2.z;
      txVec0 = vec3<f32>(x_419.x, x_419.y, x_421);
      let x_433 : vec3<f32> = txVec0;
      let x_435 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_433.xy, x_433.z);
      u_xlat9.x = x_435;
      let x_438 : vec4<f32> = u_xlat3;
      let x_439 : vec2<f32> = vec2<f32>(x_438.z, x_438.w);
      let x_441 : f32 = u_xlat2.z;
      txVec1 = vec3<f32>(x_439.x, x_439.y, x_441);
      let x_448 : vec3<f32> = txVec1;
      let x_450 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_448.xy, x_448.z);
      u_xlat9.y = x_450;
      let x_452 : vec3<f32> = u_xlat2;
      let x_455 : vec4<f32> = x_371.x_MainLightShadowOffset1;
      u_xlat3 = (vec4<f32>(x_452.x, x_452.y, x_452.x, x_452.y) + x_455);
      let x_458 : vec4<f32> = u_xlat3;
      let x_459 : vec2<f32> = vec2<f32>(x_458.x, x_458.y);
      let x_461 : f32 = u_xlat2.z;
      txVec2 = vec3<f32>(x_459.x, x_459.y, x_461);
      let x_468 : vec3<f32> = txVec2;
      let x_470 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_468.xy, x_468.z);
      u_xlat9.z = x_470;
      let x_473 : vec4<f32> = u_xlat3;
      let x_474 : vec2<f32> = vec2<f32>(x_473.z, x_473.w);
      let x_476 : f32 = u_xlat2.z;
      txVec3 = vec3<f32>(x_474.x, x_474.y, x_476);
      let x_483 : vec3<f32> = txVec3;
      let x_485 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_483.xy, x_483.z);
      u_xlat9.w = x_485;
      let x_487 : vec4<f32> = u_xlat9;
      u_xlat79 = dot(x_487, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_494 : f32 = x_371.x_MainLightShadowParams.y;
      u_xlatb80 = (x_494 == 2.0f);
      let x_496 : bool = u_xlatb80;
      if (x_496) {
        let x_499 : vec3<f32> = u_xlat2;
        let x_503 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_508 : vec2<f32> = ((vec2<f32>(x_499.x, x_499.y) * vec2<f32>(x_503.z, x_503.w)) + vec2<f32>(0.5f, 0.5f));
        let x_509 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_508.x, x_508.y, x_509.z, x_509.w);
        let x_511 : vec4<f32> = u_xlat3;
        let x_513 : vec2<f32> = floor(vec2<f32>(x_511.x, x_511.y));
        let x_514 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_513.x, x_513.y, x_514.z, x_514.w);
        let x_518 : vec3<f32> = u_xlat2;
        let x_521 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_524 : vec4<f32> = u_xlat3;
        u_xlat55 = ((vec2<f32>(x_518.x, x_518.y) * vec2<f32>(x_521.z, x_521.w)) + -(vec2<f32>(x_524.x, x_524.y)));
        let x_528 : vec2<f32> = u_xlat55;
        u_xlat9 = (vec4<f32>(x_528.x, x_528.x, x_528.y, x_528.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_533 : vec4<f32> = u_xlat9;
        let x_535 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_533.x, x_533.x, x_533.z, x_533.z) * vec4<f32>(x_535.x, x_535.x, x_535.z, x_535.z));
        let x_538 : vec4<f32> = u_xlat10;
        let x_542 : vec2<f32> = (vec2<f32>(x_538.y, x_538.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_543 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_542.x, x_543.y, x_542.y, x_543.w);
        let x_545 : vec4<f32> = u_xlat10;
        let x_548 : vec2<f32> = u_xlat55;
        let x_550 : vec2<f32> = ((vec2<f32>(x_545.x, x_545.z) * vec2<f32>(0.5f, 0.5f)) + -(x_548));
        let x_551 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_550.x, x_550.y, x_551.z, x_551.w);
        let x_554 : vec2<f32> = u_xlat55;
        u_xlat62 = (-(x_554) + vec2<f32>(1.0f, 1.0f));
        let x_559 : vec2<f32> = u_xlat55;
        let x_561 : vec2<f32> = min(x_559, vec2<f32>(0.0f, 0.0f));
        let x_562 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_561.x, x_561.y, x_562.z, x_562.w);
        let x_564 : vec4<f32> = u_xlat11;
        let x_567 : vec4<f32> = u_xlat11;
        let x_570 : vec2<f32> = u_xlat62;
        let x_571 : vec2<f32> = ((-(vec2<f32>(x_564.x, x_564.y)) * vec2<f32>(x_567.x, x_567.y)) + x_570);
        let x_572 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_571.x, x_571.y, x_572.z, x_572.w);
        let x_574 : vec2<f32> = u_xlat55;
        u_xlat55 = max(x_574, vec2<f32>(0.0f, 0.0f));
        let x_576 : vec2<f32> = u_xlat55;
        let x_578 : vec2<f32> = u_xlat55;
        let x_580 : vec4<f32> = u_xlat9;
        u_xlat55 = ((-(x_576) * x_578) + vec2<f32>(x_580.y, x_580.w));
        let x_583 : vec4<f32> = u_xlat11;
        let x_585 : vec2<f32> = (vec2<f32>(x_583.x, x_583.y) + vec2<f32>(1.0f, 1.0f));
        let x_586 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_585.x, x_585.y, x_586.z, x_586.w);
        let x_588 : vec2<f32> = u_xlat55;
        u_xlat55 = (x_588 + vec2<f32>(1.0f, 1.0f));
        let x_591 : vec4<f32> = u_xlat10;
        let x_595 : vec2<f32> = (vec2<f32>(x_591.x, x_591.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_596 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_595.x, x_595.y, x_596.z, x_596.w);
        let x_598 : vec2<f32> = u_xlat62;
        let x_599 : vec2<f32> = (x_598 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_600 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_599.x, x_599.y, x_600.z, x_600.w);
        let x_602 : vec4<f32> = u_xlat11;
        let x_604 : vec2<f32> = (vec2<f32>(x_602.x, x_602.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_605 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_604.x, x_604.y, x_605.z, x_605.w);
        let x_608 : vec2<f32> = u_xlat55;
        let x_609 : vec2<f32> = (x_608 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_610 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_609.x, x_609.y, x_610.z, x_610.w);
        let x_612 : vec4<f32> = u_xlat9;
        u_xlat55 = (vec2<f32>(x_612.y, x_612.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_616 : f32 = u_xlat11.x;
        u_xlat12.z = x_616;
        let x_619 : f32 = u_xlat55.x;
        u_xlat12.w = x_619;
        let x_622 : f32 = u_xlat13.x;
        u_xlat10.z = x_622;
        let x_625 : f32 = u_xlat9.x;
        u_xlat10.w = x_625;
        let x_628 : vec4<f32> = u_xlat10;
        let x_630 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_628.z, x_628.w, x_628.x, x_628.z) + vec4<f32>(x_630.z, x_630.w, x_630.x, x_630.z));
        let x_634 : f32 = u_xlat12.y;
        u_xlat11.z = x_634;
        let x_637 : f32 = u_xlat55.y;
        u_xlat11.w = x_637;
        let x_640 : f32 = u_xlat10.y;
        u_xlat13.z = x_640;
        let x_643 : f32 = u_xlat9.z;
        u_xlat13.w = x_643;
        let x_645 : vec4<f32> = u_xlat11;
        let x_647 : vec4<f32> = u_xlat13;
        let x_649 : vec3<f32> = (vec3<f32>(x_645.z, x_645.y, x_645.w) + vec3<f32>(x_647.z, x_647.y, x_647.w));
        let x_650 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_649.x, x_649.y, x_649.z, x_650.w);
        let x_652 : vec4<f32> = u_xlat10;
        let x_654 : vec4<f32> = u_xlat14;
        let x_656 : vec3<f32> = (vec3<f32>(x_652.x, x_652.z, x_652.w) / vec3<f32>(x_654.z, x_654.w, x_654.y));
        let x_657 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_656.x, x_656.y, x_656.z, x_657.w);
        let x_659 : vec4<f32> = u_xlat10;
        let x_665 : vec3<f32> = (vec3<f32>(x_659.x, x_659.y, x_659.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_666 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_665.x, x_665.y, x_665.z, x_666.w);
        let x_668 : vec4<f32> = u_xlat13;
        let x_670 : vec4<f32> = u_xlat9;
        let x_672 : vec3<f32> = (vec3<f32>(x_668.z, x_668.y, x_668.w) / vec3<f32>(x_670.x, x_670.y, x_670.z));
        let x_673 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_672.x, x_672.y, x_672.z, x_673.w);
        let x_675 : vec4<f32> = u_xlat11;
        let x_677 : vec3<f32> = (vec3<f32>(x_675.x, x_675.y, x_675.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_678 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_677.x, x_677.y, x_677.z, x_678.w);
        let x_680 : vec4<f32> = u_xlat10;
        let x_683 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_685 : vec3<f32> = (vec3<f32>(x_680.y, x_680.x, x_680.z) * vec3<f32>(x_683.x, x_683.x, x_683.x));
        let x_686 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_685.x, x_685.y, x_685.z, x_686.w);
        let x_688 : vec4<f32> = u_xlat11;
        let x_691 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_693 : vec3<f32> = (vec3<f32>(x_688.x, x_688.y, x_688.z) * vec3<f32>(x_691.y, x_691.y, x_691.y));
        let x_694 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_693.x, x_693.y, x_693.z, x_694.w);
        let x_697 : f32 = u_xlat11.x;
        u_xlat10.w = x_697;
        let x_699 : vec4<f32> = u_xlat3;
        let x_702 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_705 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_699.x, x_699.y, x_699.x, x_699.y) * vec4<f32>(x_702.x, x_702.y, x_702.x, x_702.y)) + vec4<f32>(x_705.y, x_705.w, x_705.x, x_705.w));
        let x_708 : vec4<f32> = u_xlat3;
        let x_711 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_714 : vec4<f32> = u_xlat10;
        u_xlat55 = ((vec2<f32>(x_708.x, x_708.y) * vec2<f32>(x_711.x, x_711.y)) + vec2<f32>(x_714.z, x_714.w));
        let x_718 : f32 = u_xlat10.y;
        u_xlat11.w = x_718;
        let x_720 : vec4<f32> = u_xlat11;
        let x_721 : vec2<f32> = vec2<f32>(x_720.y, x_720.z);
        let x_722 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_722.x, x_721.x, x_722.z, x_721.y);
        let x_724 : vec4<f32> = u_xlat3;
        let x_727 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_730 : vec4<f32> = u_xlat10;
        u_xlat13 = ((vec4<f32>(x_724.x, x_724.y, x_724.x, x_724.y) * vec4<f32>(x_727.x, x_727.y, x_727.x, x_727.y)) + vec4<f32>(x_730.x, x_730.y, x_730.z, x_730.y));
        let x_733 : vec4<f32> = u_xlat3;
        let x_736 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_739 : vec4<f32> = u_xlat11;
        u_xlat11 = ((vec4<f32>(x_733.x, x_733.y, x_733.x, x_733.y) * vec4<f32>(x_736.x, x_736.y, x_736.x, x_736.y)) + vec4<f32>(x_739.w, x_739.y, x_739.w, x_739.z));
        let x_742 : vec4<f32> = u_xlat3;
        let x_745 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_748 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_742.x, x_742.y, x_742.x, x_742.y) * vec4<f32>(x_745.x, x_745.y, x_745.x, x_745.y)) + vec4<f32>(x_748.x, x_748.w, x_748.z, x_748.w));
        let x_752 : vec4<f32> = u_xlat9;
        let x_754 : vec4<f32> = u_xlat14;
        u_xlat15 = (vec4<f32>(x_752.x, x_752.x, x_752.x, x_752.y) * vec4<f32>(x_754.z, x_754.w, x_754.y, x_754.z));
        let x_758 : vec4<f32> = u_xlat9;
        let x_760 : vec4<f32> = u_xlat14;
        u_xlat16 = (vec4<f32>(x_758.y, x_758.y, x_758.z, x_758.z) * x_760);
        let x_764 : f32 = u_xlat9.z;
        let x_766 : f32 = u_xlat14.y;
        u_xlat80 = (x_764 * x_766);
        let x_769 : vec4<f32> = u_xlat12;
        let x_770 : vec2<f32> = vec2<f32>(x_769.x, x_769.y);
        let x_772 : f32 = u_xlat2.z;
        txVec4 = vec3<f32>(x_770.x, x_770.y, x_772);
        let x_779 : vec3<f32> = txVec4;
        let x_781 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_779.xy, x_779.z);
        u_xlat3.x = x_781;
        let x_784 : vec4<f32> = u_xlat12;
        let x_785 : vec2<f32> = vec2<f32>(x_784.z, x_784.w);
        let x_787 : f32 = u_xlat2.z;
        txVec5 = vec3<f32>(x_785.x, x_785.y, x_787);
        let x_795 : vec3<f32> = txVec5;
        let x_797 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_795.xy, x_795.z);
        u_xlat29 = x_797;
        let x_798 : f32 = u_xlat29;
        let x_800 : f32 = u_xlat15.y;
        u_xlat29 = (x_798 * x_800);
        let x_803 : f32 = u_xlat15.x;
        let x_805 : f32 = u_xlat3.x;
        let x_807 : f32 = u_xlat29;
        u_xlat3.x = ((x_803 * x_805) + x_807);
        let x_811 : vec2<f32> = u_xlat55;
        let x_813 : f32 = u_xlat2.z;
        txVec6 = vec3<f32>(x_811.x, x_811.y, x_813);
        let x_820 : vec3<f32> = txVec6;
        let x_822 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_820.xy, x_820.z);
        u_xlat29 = x_822;
        let x_824 : f32 = u_xlat15.z;
        let x_825 : f32 = u_xlat29;
        let x_828 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_824 * x_825) + x_828);
        let x_832 : vec4<f32> = u_xlat11;
        let x_833 : vec2<f32> = vec2<f32>(x_832.x, x_832.y);
        let x_835 : f32 = u_xlat2.z;
        txVec7 = vec3<f32>(x_833.x, x_833.y, x_835);
        let x_842 : vec3<f32> = txVec7;
        let x_844 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_842.xy, x_842.z);
        u_xlat29 = x_844;
        let x_846 : f32 = u_xlat15.w;
        let x_847 : f32 = u_xlat29;
        let x_850 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_846 * x_847) + x_850);
        let x_854 : vec4<f32> = u_xlat13;
        let x_855 : vec2<f32> = vec2<f32>(x_854.x, x_854.y);
        let x_857 : f32 = u_xlat2.z;
        txVec8 = vec3<f32>(x_855.x, x_855.y, x_857);
        let x_864 : vec3<f32> = txVec8;
        let x_866 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_864.xy, x_864.z);
        u_xlat29 = x_866;
        let x_868 : f32 = u_xlat16.x;
        let x_869 : f32 = u_xlat29;
        let x_872 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_868 * x_869) + x_872);
        let x_876 : vec4<f32> = u_xlat13;
        let x_877 : vec2<f32> = vec2<f32>(x_876.z, x_876.w);
        let x_879 : f32 = u_xlat2.z;
        txVec9 = vec3<f32>(x_877.x, x_877.y, x_879);
        let x_886 : vec3<f32> = txVec9;
        let x_888 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_886.xy, x_886.z);
        u_xlat29 = x_888;
        let x_890 : f32 = u_xlat16.y;
        let x_891 : f32 = u_xlat29;
        let x_894 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_890 * x_891) + x_894);
        let x_898 : vec4<f32> = u_xlat11;
        let x_899 : vec2<f32> = vec2<f32>(x_898.z, x_898.w);
        let x_901 : f32 = u_xlat2.z;
        txVec10 = vec3<f32>(x_899.x, x_899.y, x_901);
        let x_908 : vec3<f32> = txVec10;
        let x_910 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_908.xy, x_908.z);
        u_xlat29 = x_910;
        let x_912 : f32 = u_xlat16.z;
        let x_913 : f32 = u_xlat29;
        let x_916 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_912 * x_913) + x_916);
        let x_920 : vec4<f32> = u_xlat10;
        let x_921 : vec2<f32> = vec2<f32>(x_920.x, x_920.y);
        let x_923 : f32 = u_xlat2.z;
        txVec11 = vec3<f32>(x_921.x, x_921.y, x_923);
        let x_930 : vec3<f32> = txVec11;
        let x_932 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_930.xy, x_930.z);
        u_xlat29 = x_932;
        let x_934 : f32 = u_xlat16.w;
        let x_935 : f32 = u_xlat29;
        let x_938 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_934 * x_935) + x_938);
        let x_942 : vec4<f32> = u_xlat10;
        let x_943 : vec2<f32> = vec2<f32>(x_942.z, x_942.w);
        let x_945 : f32 = u_xlat2.z;
        txVec12 = vec3<f32>(x_943.x, x_943.y, x_945);
        let x_952 : vec3<f32> = txVec12;
        let x_954 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_952.xy, x_952.z);
        u_xlat29 = x_954;
        let x_955 : f32 = u_xlat80;
        let x_956 : f32 = u_xlat29;
        let x_959 : f32 = u_xlat3.x;
        u_xlat79 = ((x_955 * x_956) + x_959);
      } else {
        let x_962 : vec3<f32> = u_xlat2;
        let x_965 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_968 : vec2<f32> = ((vec2<f32>(x_962.x, x_962.y) * vec2<f32>(x_965.z, x_965.w)) + vec2<f32>(0.5f, 0.5f));
        let x_969 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_968.x, x_968.y, x_969.z, x_969.w);
        let x_971 : vec4<f32> = u_xlat3;
        let x_973 : vec2<f32> = floor(vec2<f32>(x_971.x, x_971.y));
        let x_974 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_973.x, x_973.y, x_974.z, x_974.w);
        let x_976 : vec3<f32> = u_xlat2;
        let x_979 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_982 : vec4<f32> = u_xlat3;
        u_xlat55 = ((vec2<f32>(x_976.x, x_976.y) * vec2<f32>(x_979.z, x_979.w)) + -(vec2<f32>(x_982.x, x_982.y)));
        let x_986 : vec2<f32> = u_xlat55;
        u_xlat9 = (vec4<f32>(x_986.x, x_986.x, x_986.y, x_986.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_989 : vec4<f32> = u_xlat9;
        let x_991 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_989.x, x_989.x, x_989.z, x_989.z) * vec4<f32>(x_991.x, x_991.x, x_991.z, x_991.z));
        let x_994 : vec4<f32> = u_xlat10;
        let x_998 : vec2<f32> = (vec2<f32>(x_994.y, x_994.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_999 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_999.x, x_998.x, x_999.z, x_998.y);
        let x_1001 : vec4<f32> = u_xlat10;
        let x_1004 : vec2<f32> = u_xlat55;
        let x_1006 : vec2<f32> = ((vec2<f32>(x_1001.x, x_1001.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1004));
        let x_1007 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1006.x, x_1007.y, x_1006.y, x_1007.w);
        let x_1009 : vec2<f32> = u_xlat55;
        let x_1011 : vec2<f32> = (-(x_1009) + vec2<f32>(1.0f, 1.0f));
        let x_1012 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1011.x, x_1011.y, x_1012.z, x_1012.w);
        let x_1014 : vec2<f32> = u_xlat55;
        u_xlat62 = min(x_1014, vec2<f32>(0.0f, 0.0f));
        let x_1016 : vec2<f32> = u_xlat62;
        let x_1018 : vec2<f32> = u_xlat62;
        let x_1020 : vec4<f32> = u_xlat10;
        let x_1022 : vec2<f32> = ((-(x_1016) * x_1018) + vec2<f32>(x_1020.x, x_1020.y));
        let x_1023 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1022.x, x_1022.y, x_1023.z, x_1023.w);
        let x_1025 : vec2<f32> = u_xlat55;
        u_xlat62 = max(x_1025, vec2<f32>(0.0f, 0.0f));
        let x_1028 : vec2<f32> = u_xlat62;
        let x_1030 : vec2<f32> = u_xlat62;
        let x_1032 : vec4<f32> = u_xlat9;
        let x_1034 : vec2<f32> = ((-(x_1028) * x_1030) + vec2<f32>(x_1032.y, x_1032.w));
        let x_1035 : vec3<f32> = u_xlat35;
        u_xlat35 = vec3<f32>(x_1034.x, x_1035.y, x_1034.y);
        let x_1037 : vec4<f32> = u_xlat10;
        let x_1040 : vec2<f32> = (vec2<f32>(x_1037.x, x_1037.y) + vec2<f32>(2.0f, 2.0f));
        let x_1041 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1040.x, x_1040.y, x_1041.z, x_1041.w);
        let x_1043 : vec3<f32> = u_xlat35;
        let x_1045 : vec2<f32> = (vec2<f32>(x_1043.x, x_1043.z) + vec2<f32>(2.0f, 2.0f));
        let x_1046 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1046.x, x_1045.x, x_1046.z, x_1045.y);
        let x_1049 : f32 = u_xlat9.y;
        u_xlat12.z = (x_1049 * 0.08163200318813323975f);
        let x_1053 : vec4<f32> = u_xlat9;
        let x_1056 : vec3<f32> = (vec3<f32>(x_1053.z, x_1053.x, x_1053.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1057 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1056.x, x_1056.y, x_1056.z, x_1057.w);
        let x_1059 : vec4<f32> = u_xlat10;
        let x_1062 : vec2<f32> = (vec2<f32>(x_1059.x, x_1059.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1063 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1062.x, x_1062.y, x_1063.z, x_1063.w);
        let x_1066 : f32 = u_xlat13.y;
        u_xlat12.x = x_1066;
        let x_1068 : vec2<f32> = u_xlat55;
        let x_1075 : vec2<f32> = ((vec2<f32>(x_1068.x, x_1068.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1076 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1076.x, x_1075.x, x_1076.z, x_1075.y);
        let x_1078 : vec2<f32> = u_xlat55;
        let x_1082 : vec2<f32> = ((vec2<f32>(x_1078.x, x_1078.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1083 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1082.x, x_1083.y, x_1082.y, x_1083.w);
        let x_1086 : f32 = u_xlat9.x;
        u_xlat10.y = x_1086;
        let x_1089 : f32 = u_xlat11.y;
        u_xlat10.w = x_1089;
        let x_1091 : vec4<f32> = u_xlat10;
        let x_1092 : vec4<f32> = u_xlat12;
        u_xlat12 = (x_1091 + x_1092);
        let x_1094 : vec2<f32> = u_xlat55;
        let x_1097 : vec2<f32> = ((vec2<f32>(x_1094.y, x_1094.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1098 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1098.x, x_1097.x, x_1098.z, x_1097.y);
        let x_1100 : vec2<f32> = u_xlat55;
        let x_1103 : vec2<f32> = ((vec2<f32>(x_1100.y, x_1100.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1104 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1103.x, x_1104.y, x_1103.y, x_1104.w);
        let x_1107 : f32 = u_xlat9.y;
        u_xlat11.y = x_1107;
        let x_1109 : vec4<f32> = u_xlat11;
        let x_1110 : vec4<f32> = u_xlat13;
        u_xlat9 = (x_1109 + x_1110);
        let x_1112 : vec4<f32> = u_xlat10;
        let x_1113 : vec4<f32> = u_xlat12;
        u_xlat10 = (x_1112 / x_1113);
        let x_1115 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1115 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1121 : vec4<f32> = u_xlat11;
        let x_1122 : vec4<f32> = u_xlat9;
        u_xlat11 = (x_1121 / x_1122);
        let x_1124 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1124 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1126 : vec4<f32> = u_xlat10;
        let x_1129 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1126.w, x_1126.x, x_1126.y, x_1126.z) * vec4<f32>(x_1129.x, x_1129.x, x_1129.x, x_1129.x));
        let x_1132 : vec4<f32> = u_xlat11;
        let x_1135 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        u_xlat11 = (vec4<f32>(x_1132.x, x_1132.w, x_1132.y, x_1132.z) * vec4<f32>(x_1135.y, x_1135.y, x_1135.y, x_1135.y));
        let x_1138 : vec4<f32> = u_xlat10;
        let x_1139 : vec3<f32> = vec3<f32>(x_1138.y, x_1138.z, x_1138.w);
        let x_1140 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1139.x, x_1140.y, x_1139.y, x_1139.z);
        let x_1143 : f32 = u_xlat11.x;
        u_xlat13.y = x_1143;
        let x_1145 : vec4<f32> = u_xlat3;
        let x_1148 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_1151 : vec4<f32> = u_xlat13;
        u_xlat14 = ((vec4<f32>(x_1145.x, x_1145.y, x_1145.x, x_1145.y) * vec4<f32>(x_1148.x, x_1148.y, x_1148.x, x_1148.y)) + vec4<f32>(x_1151.x, x_1151.y, x_1151.z, x_1151.y));
        let x_1154 : vec4<f32> = u_xlat3;
        let x_1157 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_1160 : vec4<f32> = u_xlat13;
        u_xlat55 = ((vec2<f32>(x_1154.x, x_1154.y) * vec2<f32>(x_1157.x, x_1157.y)) + vec2<f32>(x_1160.w, x_1160.y));
        let x_1164 : f32 = u_xlat13.y;
        u_xlat10.y = x_1164;
        let x_1167 : f32 = u_xlat11.z;
        u_xlat13.y = x_1167;
        let x_1169 : vec4<f32> = u_xlat3;
        let x_1172 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_1175 : vec4<f32> = u_xlat13;
        u_xlat15 = ((vec4<f32>(x_1169.x, x_1169.y, x_1169.x, x_1169.y) * vec4<f32>(x_1172.x, x_1172.y, x_1172.x, x_1172.y)) + vec4<f32>(x_1175.x, x_1175.y, x_1175.z, x_1175.y));
        let x_1178 : vec4<f32> = u_xlat3;
        let x_1181 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_1184 : vec4<f32> = u_xlat13;
        let x_1186 : vec2<f32> = ((vec2<f32>(x_1178.x, x_1178.y) * vec2<f32>(x_1181.x, x_1181.y)) + vec2<f32>(x_1184.w, x_1184.y));
        let x_1187 : vec4<f32> = u_xlat16;
        u_xlat16 = vec4<f32>(x_1186.x, x_1186.y, x_1187.z, x_1187.w);
        let x_1190 : f32 = u_xlat13.y;
        u_xlat10.z = x_1190;
        let x_1193 : vec4<f32> = u_xlat3;
        let x_1196 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_1199 : vec4<f32> = u_xlat10;
        u_xlat17 = ((vec4<f32>(x_1193.x, x_1193.y, x_1193.x, x_1193.y) * vec4<f32>(x_1196.x, x_1196.y, x_1196.x, x_1196.y)) + vec4<f32>(x_1199.x, x_1199.y, x_1199.x, x_1199.z));
        let x_1203 : f32 = u_xlat11.w;
        u_xlat13.y = x_1203;
        let x_1206 : vec4<f32> = u_xlat3;
        let x_1209 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_1212 : vec4<f32> = u_xlat13;
        u_xlat18 = ((vec4<f32>(x_1206.x, x_1206.y, x_1206.x, x_1206.y) * vec4<f32>(x_1209.x, x_1209.y, x_1209.x, x_1209.y)) + vec4<f32>(x_1212.x, x_1212.y, x_1212.z, x_1212.y));
        let x_1216 : vec4<f32> = u_xlat3;
        let x_1219 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_1222 : vec4<f32> = u_xlat13;
        u_xlat36 = ((vec2<f32>(x_1216.x, x_1216.y) * vec2<f32>(x_1219.x, x_1219.y)) + vec2<f32>(x_1222.w, x_1222.y));
        let x_1226 : f32 = u_xlat13.y;
        u_xlat10.w = x_1226;
        let x_1229 : vec4<f32> = u_xlat3;
        let x_1232 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_1235 : vec4<f32> = u_xlat10;
        u_xlat68 = ((vec2<f32>(x_1229.x, x_1229.y) * vec2<f32>(x_1232.x, x_1232.y)) + vec2<f32>(x_1235.x, x_1235.w));
        let x_1238 : vec4<f32> = u_xlat13;
        let x_1239 : vec3<f32> = vec3<f32>(x_1238.x, x_1238.z, x_1238.w);
        let x_1240 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1239.x, x_1240.y, x_1239.y, x_1239.z);
        let x_1242 : vec4<f32> = u_xlat3;
        let x_1245 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_1248 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1242.x, x_1242.y, x_1242.x, x_1242.y) * vec4<f32>(x_1245.x, x_1245.y, x_1245.x, x_1245.y)) + vec4<f32>(x_1248.x, x_1248.y, x_1248.z, x_1248.y));
        let x_1252 : vec4<f32> = u_xlat3;
        let x_1255 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_1258 : vec4<f32> = u_xlat11;
        u_xlat63 = ((vec2<f32>(x_1252.x, x_1252.y) * vec2<f32>(x_1255.x, x_1255.y)) + vec2<f32>(x_1258.w, x_1258.y));
        let x_1262 : f32 = u_xlat10.x;
        u_xlat11.x = x_1262;
        let x_1264 : vec4<f32> = u_xlat3;
        let x_1267 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_1270 : vec4<f32> = u_xlat11;
        let x_1272 : vec2<f32> = ((vec2<f32>(x_1264.x, x_1264.y) * vec2<f32>(x_1267.x, x_1267.y)) + vec2<f32>(x_1270.x, x_1270.y));
        let x_1273 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_1272.x, x_1272.y, x_1273.z, x_1273.w);
        let x_1276 : vec4<f32> = u_xlat9;
        let x_1278 : vec4<f32> = u_xlat12;
        u_xlat19 = (vec4<f32>(x_1276.x, x_1276.x, x_1276.x, x_1276.x) * x_1278);
        let x_1281 : vec4<f32> = u_xlat9;
        let x_1283 : vec4<f32> = u_xlat12;
        u_xlat20 = (vec4<f32>(x_1281.y, x_1281.y, x_1281.y, x_1281.y) * x_1283);
        let x_1286 : vec4<f32> = u_xlat9;
        let x_1288 : vec4<f32> = u_xlat12;
        u_xlat21 = (vec4<f32>(x_1286.z, x_1286.z, x_1286.z, x_1286.z) * x_1288);
        let x_1290 : vec4<f32> = u_xlat9;
        let x_1292 : vec4<f32> = u_xlat12;
        u_xlat9 = (vec4<f32>(x_1290.w, x_1290.w, x_1290.w, x_1290.w) * x_1292);
        let x_1295 : vec4<f32> = u_xlat14;
        let x_1296 : vec2<f32> = vec2<f32>(x_1295.x, x_1295.y);
        let x_1298 : f32 = u_xlat2.z;
        txVec13 = vec3<f32>(x_1296.x, x_1296.y, x_1298);
        let x_1305 : vec3<f32> = txVec13;
        let x_1307 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1305.xy, x_1305.z);
        u_xlat80 = x_1307;
        let x_1309 : vec4<f32> = u_xlat14;
        let x_1310 : vec2<f32> = vec2<f32>(x_1309.z, x_1309.w);
        let x_1312 : f32 = u_xlat2.z;
        txVec14 = vec3<f32>(x_1310.x, x_1310.y, x_1312);
        let x_1320 : vec3<f32> = txVec14;
        let x_1322 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1320.xy, x_1320.z);
        u_xlat82 = x_1322;
        let x_1323 : f32 = u_xlat82;
        let x_1325 : f32 = u_xlat19.y;
        u_xlat82 = (x_1323 * x_1325);
        let x_1328 : f32 = u_xlat19.x;
        let x_1329 : f32 = u_xlat80;
        let x_1331 : f32 = u_xlat82;
        u_xlat80 = ((x_1328 * x_1329) + x_1331);
        let x_1334 : vec2<f32> = u_xlat55;
        let x_1336 : f32 = u_xlat2.z;
        txVec15 = vec3<f32>(x_1334.x, x_1334.y, x_1336);
        let x_1343 : vec3<f32> = txVec15;
        let x_1345 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1343.xy, x_1343.z);
        u_xlat55.x = x_1345;
        let x_1348 : f32 = u_xlat19.z;
        let x_1350 : f32 = u_xlat55.x;
        let x_1352 : f32 = u_xlat80;
        u_xlat80 = ((x_1348 * x_1350) + x_1352);
        let x_1355 : vec4<f32> = u_xlat17;
        let x_1356 : vec2<f32> = vec2<f32>(x_1355.x, x_1355.y);
        let x_1358 : f32 = u_xlat2.z;
        txVec16 = vec3<f32>(x_1356.x, x_1356.y, x_1358);
        let x_1365 : vec3<f32> = txVec16;
        let x_1367 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1365.xy, x_1365.z);
        u_xlat55.x = x_1367;
        let x_1370 : f32 = u_xlat19.w;
        let x_1372 : f32 = u_xlat55.x;
        let x_1374 : f32 = u_xlat80;
        u_xlat80 = ((x_1370 * x_1372) + x_1374);
        let x_1377 : vec4<f32> = u_xlat15;
        let x_1378 : vec2<f32> = vec2<f32>(x_1377.x, x_1377.y);
        let x_1380 : f32 = u_xlat2.z;
        txVec17 = vec3<f32>(x_1378.x, x_1378.y, x_1380);
        let x_1387 : vec3<f32> = txVec17;
        let x_1389 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1387.xy, x_1387.z);
        u_xlat55.x = x_1389;
        let x_1392 : f32 = u_xlat20.x;
        let x_1394 : f32 = u_xlat55.x;
        let x_1396 : f32 = u_xlat80;
        u_xlat80 = ((x_1392 * x_1394) + x_1396);
        let x_1399 : vec4<f32> = u_xlat15;
        let x_1400 : vec2<f32> = vec2<f32>(x_1399.z, x_1399.w);
        let x_1402 : f32 = u_xlat2.z;
        txVec18 = vec3<f32>(x_1400.x, x_1400.y, x_1402);
        let x_1409 : vec3<f32> = txVec18;
        let x_1411 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1409.xy, x_1409.z);
        u_xlat55.x = x_1411;
        let x_1414 : f32 = u_xlat20.y;
        let x_1416 : f32 = u_xlat55.x;
        let x_1418 : f32 = u_xlat80;
        u_xlat80 = ((x_1414 * x_1416) + x_1418);
        let x_1421 : vec4<f32> = u_xlat16;
        let x_1422 : vec2<f32> = vec2<f32>(x_1421.x, x_1421.y);
        let x_1424 : f32 = u_xlat2.z;
        txVec19 = vec3<f32>(x_1422.x, x_1422.y, x_1424);
        let x_1431 : vec3<f32> = txVec19;
        let x_1433 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1431.xy, x_1431.z);
        u_xlat55.x = x_1433;
        let x_1436 : f32 = u_xlat20.z;
        let x_1438 : f32 = u_xlat55.x;
        let x_1440 : f32 = u_xlat80;
        u_xlat80 = ((x_1436 * x_1438) + x_1440);
        let x_1443 : vec4<f32> = u_xlat17;
        let x_1444 : vec2<f32> = vec2<f32>(x_1443.z, x_1443.w);
        let x_1446 : f32 = u_xlat2.z;
        txVec20 = vec3<f32>(x_1444.x, x_1444.y, x_1446);
        let x_1453 : vec3<f32> = txVec20;
        let x_1455 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1453.xy, x_1453.z);
        u_xlat55.x = x_1455;
        let x_1458 : f32 = u_xlat20.w;
        let x_1460 : f32 = u_xlat55.x;
        let x_1462 : f32 = u_xlat80;
        u_xlat80 = ((x_1458 * x_1460) + x_1462);
        let x_1465 : vec4<f32> = u_xlat18;
        let x_1466 : vec2<f32> = vec2<f32>(x_1465.x, x_1465.y);
        let x_1468 : f32 = u_xlat2.z;
        txVec21 = vec3<f32>(x_1466.x, x_1466.y, x_1468);
        let x_1475 : vec3<f32> = txVec21;
        let x_1477 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1475.xy, x_1475.z);
        u_xlat55.x = x_1477;
        let x_1480 : f32 = u_xlat21.x;
        let x_1482 : f32 = u_xlat55.x;
        let x_1484 : f32 = u_xlat80;
        u_xlat80 = ((x_1480 * x_1482) + x_1484);
        let x_1487 : vec4<f32> = u_xlat18;
        let x_1488 : vec2<f32> = vec2<f32>(x_1487.z, x_1487.w);
        let x_1490 : f32 = u_xlat2.z;
        txVec22 = vec3<f32>(x_1488.x, x_1488.y, x_1490);
        let x_1497 : vec3<f32> = txVec22;
        let x_1499 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1497.xy, x_1497.z);
        u_xlat55.x = x_1499;
        let x_1502 : f32 = u_xlat21.y;
        let x_1504 : f32 = u_xlat55.x;
        let x_1506 : f32 = u_xlat80;
        u_xlat80 = ((x_1502 * x_1504) + x_1506);
        let x_1509 : vec2<f32> = u_xlat36;
        let x_1511 : f32 = u_xlat2.z;
        txVec23 = vec3<f32>(x_1509.x, x_1509.y, x_1511);
        let x_1518 : vec3<f32> = txVec23;
        let x_1520 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1518.xy, x_1518.z);
        u_xlat55.x = x_1520;
        let x_1523 : f32 = u_xlat21.z;
        let x_1525 : f32 = u_xlat55.x;
        let x_1527 : f32 = u_xlat80;
        u_xlat80 = ((x_1523 * x_1525) + x_1527);
        let x_1530 : vec2<f32> = u_xlat68;
        let x_1532 : f32 = u_xlat2.z;
        txVec24 = vec3<f32>(x_1530.x, x_1530.y, x_1532);
        let x_1539 : vec3<f32> = txVec24;
        let x_1541 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1539.xy, x_1539.z);
        u_xlat55.x = x_1541;
        let x_1544 : f32 = u_xlat21.w;
        let x_1546 : f32 = u_xlat55.x;
        let x_1548 : f32 = u_xlat80;
        u_xlat80 = ((x_1544 * x_1546) + x_1548);
        let x_1551 : vec4<f32> = u_xlat13;
        let x_1552 : vec2<f32> = vec2<f32>(x_1551.x, x_1551.y);
        let x_1554 : f32 = u_xlat2.z;
        txVec25 = vec3<f32>(x_1552.x, x_1552.y, x_1554);
        let x_1561 : vec3<f32> = txVec25;
        let x_1563 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1561.xy, x_1561.z);
        u_xlat55.x = x_1563;
        let x_1566 : f32 = u_xlat9.x;
        let x_1568 : f32 = u_xlat55.x;
        let x_1570 : f32 = u_xlat80;
        u_xlat80 = ((x_1566 * x_1568) + x_1570);
        let x_1573 : vec4<f32> = u_xlat13;
        let x_1574 : vec2<f32> = vec2<f32>(x_1573.z, x_1573.w);
        let x_1576 : f32 = u_xlat2.z;
        txVec26 = vec3<f32>(x_1574.x, x_1574.y, x_1576);
        let x_1583 : vec3<f32> = txVec26;
        let x_1585 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1583.xy, x_1583.z);
        u_xlat55.x = x_1585;
        let x_1588 : f32 = u_xlat9.y;
        let x_1590 : f32 = u_xlat55.x;
        let x_1592 : f32 = u_xlat80;
        u_xlat80 = ((x_1588 * x_1590) + x_1592);
        let x_1595 : vec2<f32> = u_xlat63;
        let x_1597 : f32 = u_xlat2.z;
        txVec27 = vec3<f32>(x_1595.x, x_1595.y, x_1597);
        let x_1604 : vec3<f32> = txVec27;
        let x_1606 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1604.xy, x_1604.z);
        u_xlat55.x = x_1606;
        let x_1609 : f32 = u_xlat9.z;
        let x_1611 : f32 = u_xlat55.x;
        let x_1613 : f32 = u_xlat80;
        u_xlat80 = ((x_1609 * x_1611) + x_1613);
        let x_1616 : vec4<f32> = u_xlat3;
        let x_1617 : vec2<f32> = vec2<f32>(x_1616.x, x_1616.y);
        let x_1619 : f32 = u_xlat2.z;
        txVec28 = vec3<f32>(x_1617.x, x_1617.y, x_1619);
        let x_1626 : vec3<f32> = txVec28;
        let x_1628 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1626.xy, x_1626.z);
        u_xlat3.x = x_1628;
        let x_1631 : f32 = u_xlat9.w;
        let x_1633 : f32 = u_xlat3.x;
        let x_1635 : f32 = u_xlat80;
        u_xlat79 = ((x_1631 * x_1633) + x_1635);
      }
    }
  } else {
    let x_1639 : vec3<f32> = u_xlat2;
    let x_1640 : vec2<f32> = vec2<f32>(x_1639.x, x_1639.y);
    let x_1642 : f32 = u_xlat2.z;
    txVec29 = vec3<f32>(x_1640.x, x_1640.y, x_1642);
    let x_1649 : vec3<f32> = txVec29;
    let x_1651 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1649.xy, x_1649.z);
    u_xlat79 = x_1651;
  }
  let x_1653 : f32 = x_371.x_MainLightShadowParams.x;
  u_xlat2.x = (-(x_1653) + 1.0f);
  let x_1657 : f32 = u_xlat79;
  let x_1659 : f32 = x_371.x_MainLightShadowParams.x;
  let x_1662 : f32 = u_xlat2.x;
  u_xlat79 = ((x_1657 * x_1659) + x_1662);
  let x_1666 : f32 = u_xlat2.z;
  u_xlatb28 = (0.0f >= x_1666);
  let x_1670 : f32 = u_xlat2.z;
  u_xlatb54 = (x_1670 >= 1.0f);
  let x_1672 : bool = u_xlatb54;
  let x_1673 : bool = u_xlatb28;
  u_xlatb28 = (x_1672 | x_1673);
  let x_1675 : bool = u_xlatb28;
  let x_1676 : f32 = u_xlat79;
  u_xlat79 = select(x_1676, 1.0f, x_1675);
  let x_1678 : vec3<f32> = u_xlat1;
  let x_1680 : vec4<f32> = x_147.x_MainLightPosition;
  u_xlat1.x = dot(x_1678, -(vec3<f32>(x_1680.x, x_1680.y, x_1680.z)));
  let x_1686 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1686, 0.0f, 1.0f);
  let x_1690 : f32 = u_xlat79;
  let x_1693 : vec4<f32> = x_147.x_MainLightColor;
  u_xlat27 = (vec3<f32>(x_1690, x_1690, x_1690) * vec3<f32>(x_1693.x, x_1693.y, x_1693.z));
  let x_1696 : vec3<f32> = u_xlat27;
  let x_1697 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_1696 * vec3<f32>(x_1697.x, x_1697.x, x_1697.x));
  let x_1700 : vec3<f32> = u_xlat1;
  let x_1701 : vec4<f32> = u_xlat6;
  u_xlat1 = (x_1700 * vec3<f32>(x_1701.x, x_1701.y, x_1701.z));
  let x_1705 : f32 = x_83.unity_LODFade.x;
  u_xlatb79 = (x_1705 < 0.0f);
  let x_1709 : f32 = x_83.unity_LODFade.x;
  u_xlat28 = (x_1709 + 1.0f);
  let x_1711 : bool = u_xlatb79;
  if (x_1711) {
    let x_1715 : f32 = u_xlat28;
    x_1712 = x_1715;
  } else {
    let x_1718 : f32 = x_83.unity_LODFade.x;
    x_1712 = x_1718;
  }
  let x_1719 : f32 = x_1712;
  u_xlat79 = x_1719;
  let x_1720 : f32 = u_xlat79;
  u_xlatb28 = (0.5f >= x_1720);
  let x_1722 : vec3<f32> = u_xlat4;
  let x_1725 : vec4<f32> = x_147.x_ScreenParams;
  let x_1727 : vec3<f32> = (abs(x_1722) * vec3<f32>(x_1725.x, x_1725.y, x_1725.x));
  let x_1728 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1727.x, x_1727.y, x_1727.z, x_1728.w);
  let x_1733 : vec4<f32> = u_xlat3;
  u_xlatu3 = vec3<u32>(vec3<f32>(x_1733.x, x_1733.y, x_1733.z));
  let x_1739 : u32 = u_xlatu3.z;
  u_xlatu54 = (x_1739 * 1025u);
  let x_1743 : u32 = u_xlatu54;
  u_xlatu80 = (x_1743 >> 6u);
  let x_1748 : u32 = u_xlatu80;
  let x_1749 : u32 = u_xlatu54;
  u_xlati54 = bitcast<i32>((x_1748 ^ x_1749));
  let x_1752 : i32 = u_xlati54;
  u_xlatu54 = (bitcast<u32>(x_1752) * 9u);
  let x_1756 : u32 = u_xlatu54;
  u_xlatu80 = (x_1756 >> 11u);
  let x_1759 : u32 = u_xlatu80;
  let x_1760 : u32 = u_xlatu54;
  u_xlati54 = bitcast<i32>((x_1759 ^ x_1760));
  let x_1763 : i32 = u_xlati54;
  u_xlati54 = (x_1763 * 32769i);
  let x_1766 : i32 = u_xlati54;
  let x_1769 : u32 = u_xlatu3.y;
  u_xlati54 = bitcast<i32>((bitcast<u32>(x_1766) ^ x_1769));
  let x_1772 : i32 = u_xlati54;
  u_xlatu54 = (bitcast<u32>(x_1772) * 1025u);
  let x_1775 : u32 = u_xlatu54;
  u_xlatu80 = (x_1775 >> 6u);
  let x_1777 : u32 = u_xlatu80;
  let x_1778 : u32 = u_xlatu54;
  u_xlati54 = bitcast<i32>((x_1777 ^ x_1778));
  let x_1781 : i32 = u_xlati54;
  u_xlatu54 = (bitcast<u32>(x_1781) * 9u);
  let x_1784 : u32 = u_xlatu54;
  u_xlatu80 = (x_1784 >> 11u);
  let x_1786 : u32 = u_xlatu80;
  let x_1787 : u32 = u_xlatu54;
  u_xlati54 = bitcast<i32>((x_1786 ^ x_1787));
  let x_1790 : i32 = u_xlati54;
  u_xlati54 = (x_1790 * 32769i);
  let x_1792 : i32 = u_xlati54;
  let x_1795 : u32 = u_xlatu3.x;
  u_xlati54 = bitcast<i32>((bitcast<u32>(x_1792) ^ x_1795));
  let x_1798 : i32 = u_xlati54;
  u_xlatu54 = (bitcast<u32>(x_1798) * 1025u);
  let x_1801 : u32 = u_xlatu54;
  u_xlatu80 = (x_1801 >> 6u);
  let x_1803 : u32 = u_xlatu80;
  let x_1804 : u32 = u_xlatu54;
  u_xlati54 = bitcast<i32>((x_1803 ^ x_1804));
  let x_1807 : i32 = u_xlati54;
  u_xlatu54 = (bitcast<u32>(x_1807) * 9u);
  let x_1810 : u32 = u_xlatu54;
  u_xlatu80 = (x_1810 >> 11u);
  let x_1812 : u32 = u_xlatu80;
  let x_1813 : u32 = u_xlatu54;
  u_xlati54 = bitcast<i32>((x_1812 ^ x_1813));
  let x_1816 : i32 = u_xlati54;
  u_xlati54 = (x_1816 * 32769i);
  param = 1065353216i;
  let x_1823 : i32 = u_xlati54;
  param_1 = x_1823;
  param_2 = 0i;
  param_3 = 23i;
  let x_1826 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlat54.x = bitcast<f32>(x_1826);
  let x_1830 : f32 = u_xlat54.x;
  u_xlat54.x = (x_1830 + -1.0f);
  let x_1834 : f32 = u_xlat54.x;
  u_xlat80 = (-(x_1834) + 1.0f);
  let x_1837 : bool = u_xlatb28;
  if (x_1837) {
    let x_1842 : f32 = u_xlat54.x;
    x_1838 = x_1842;
  } else {
    let x_1844 : f32 = u_xlat80;
    x_1838 = x_1844;
  }
  let x_1845 : f32 = x_1838;
  u_xlat28 = x_1845;
  let x_1846 : f32 = u_xlat79;
  let x_1848 : f32 = u_xlat28;
  u_xlat79 = ((x_1846 * 2.0f) + -(x_1848));
  let x_1851 : f32 = u_xlat79;
  let x_1853 : f32 = u_xlat6.w;
  u_xlat28 = (x_1851 * x_1853);
  let x_1855 : f32 = u_xlat28;
  u_xlatb54 = (x_1855 >= 0.40000000596046447754f);
  let x_1858 : bool = u_xlatb54;
  let x_1859 : f32 = u_xlat28;
  u_xlat54.x = select(0.0f, x_1859, x_1858);
  let x_1863 : f32 = u_xlat6.w;
  let x_1864 : f32 = u_xlat79;
  u_xlat79 = ((x_1863 * x_1864) + -0.40000000596046447754f);
  let x_1868 : f32 = u_xlat28;
  u_xlat80 = dpdxCoarse(x_1868);
  let x_1870 : f32 = u_xlat28;
  u_xlat28 = dpdyCoarse(x_1870);
  let x_1872 : f32 = u_xlat28;
  let x_1874 : f32 = u_xlat80;
  u_xlat28 = (abs(x_1872) + abs(x_1874));
  let x_1877 : f32 = u_xlat28;
  u_xlat28 = max(x_1877, 0.00009999999747378752f);
  let x_1880 : f32 = u_xlat79;
  let x_1881 : f32 = u_xlat28;
  u_xlat79 = (x_1880 / x_1881);
  let x_1883 : f32 = u_xlat79;
  u_xlat79 = (x_1883 + 0.5f);
  let x_1885 : f32 = u_xlat79;
  u_xlat79 = clamp(x_1885, 0.0f, 1.0f);
  let x_1888 : f32 = x_147.x_AlphaToMaskAvailable;
  u_xlatb28 = !((x_1888 == 0.0f));
  let x_1890 : bool = u_xlatb28;
  if (x_1890) {
    let x_1894 : f32 = u_xlat79;
    x_1891 = x_1894;
  } else {
    let x_1897 : f32 = u_xlat54.x;
    x_1891 = x_1897;
  }
  let x_1898 : f32 = x_1891;
  u_xlat79 = x_1898;
  let x_1899 : f32 = u_xlat79;
  u_xlat54.x = (x_1899 + -0.00009999999747378752f);
  let x_1904 : f32 = u_xlat54.x;
  u_xlatb54 = (x_1904 < 0.0f);
  let x_1906 : bool = u_xlatb54;
  if (((select(0i, 1i, x_1906) * -1i) != 0i)) {
    discard;
  }
  let x_1914 : vec3<f32> = u_xlat26;
  let x_1915 : vec3<f32> = u_xlat34;
  u_xlat26 = (x_1914 * vec3<f32>(x_1915.y, x_1915.y, x_1915.y));
  let x_1918 : vec3<f32> = u_xlat34;
  let x_1920 : vec4<f32> = vs_INTERP4;
  let x_1923 : vec3<f32> = u_xlat26;
  u_xlat26 = ((vec3<f32>(x_1918.x, x_1918.x, x_1918.x) * vec3<f32>(x_1920.x, x_1920.y, x_1920.z)) + x_1923);
  let x_1925 : vec3<f32> = u_xlat34;
  let x_1927 : vec3<f32> = vs_INTERP9;
  let x_1929 : vec3<f32> = u_xlat26;
  u_xlat26 = ((vec3<f32>(x_1925.z, x_1925.z, x_1925.z) * x_1927) + x_1929);
  let x_1931 : vec3<f32> = u_xlat26;
  let x_1932 : vec3<f32> = u_xlat26;
  u_xlat54.x = dot(x_1931, x_1932);
  let x_1936 : f32 = u_xlat54.x;
  u_xlat54.x = inverseSqrt(x_1936);
  let x_1939 : vec3<f32> = u_xlat26;
  let x_1940 : vec2<f32> = u_xlat54;
  u_xlat26 = (x_1939 * vec3<f32>(x_1940.x, x_1940.x, x_1940.x));
  let x_1950 : vec2<f32> = vs_INTERP0;
  let x_1952 : f32 = x_147.x_GlobalMipBias.x;
  let x_1953 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_1950, x_1952);
  u_xlat3 = x_1953;
  let x_1958 : vec2<f32> = vs_INTERP0;
  let x_1960 : f32 = x_147.x_GlobalMipBias.x;
  let x_1961 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_1958, x_1960);
  u_xlat4 = vec3<f32>(x_1961.x, x_1961.y, x_1961.z);
  let x_1963 : vec4<f32> = u_xlat3;
  let x_1966 : vec3<f32> = (vec3<f32>(x_1963.x, x_1963.y, x_1963.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_1967 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1966.x, x_1966.y, x_1966.z, x_1967.w);
  let x_1969 : vec3<f32> = u_xlat26;
  let x_1970 : vec4<f32> = u_xlat3;
  u_xlat54.x = dot(x_1969, vec3<f32>(x_1970.x, x_1970.y, x_1970.z));
  let x_1975 : f32 = u_xlat54.x;
  u_xlat54.x = (x_1975 + 0.5f);
  let x_1978 : vec2<f32> = u_xlat54;
  let x_1980 : vec3<f32> = u_xlat4;
  let x_1981 : vec3<f32> = (vec3<f32>(x_1978.x, x_1978.x, x_1978.x) * x_1980);
  let x_1982 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1981.x, x_1981.y, x_1981.z, x_1982.w);
  let x_1985 : f32 = u_xlat3.w;
  u_xlat54.x = max(x_1985, 0.00009999999747378752f);
  let x_1988 : vec4<f32> = u_xlat3;
  let x_1990 : vec2<f32> = u_xlat54;
  let x_1992 : vec3<f32> = (vec3<f32>(x_1988.x, x_1988.y, x_1988.z) / vec3<f32>(x_1990.x, x_1990.x, x_1990.x));
  let x_1993 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1992.x, x_1992.y, x_1992.z, x_1993.w);
  let x_1996 : f32 = u_xlat8.x;
  u_xlat8.x = x_1996;
  let x_1999 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_1999, 0.0f, 1.0f);
  let x_2002 : f32 = u_xlat79;
  u_xlat79 = x_2002;
  let x_2003 : f32 = u_xlat79;
  u_xlat79 = clamp(x_2003, 0.0f, 1.0f);
  let x_2005 : vec4<f32> = u_xlat7;
  u_xlat4 = (vec3<f32>(x_2005.x, x_2005.y, x_2005.z) * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_2011 : f32 = u_xlat8.x;
  u_xlat54.x = (-(x_2011) + 1.0f);
  let x_2016 : f32 = u_xlat54.x;
  let x_2018 : f32 = u_xlat54.x;
  u_xlat80 = (x_2016 * x_2018);
  let x_2020 : f32 = u_xlat80;
  u_xlat80 = max(x_2020, 0.0078125f);
  let x_2024 : f32 = u_xlat80;
  let x_2025 : f32 = u_xlat80;
  u_xlat81 = (x_2024 * x_2025);
  let x_2028 : f32 = u_xlat8.x;
  u_xlat82 = (x_2028 + 0.04000002145767211914f);
  let x_2031 : f32 = u_xlat82;
  u_xlat82 = min(x_2031, 1.0f);
  let x_2034 : f32 = u_xlat80;
  u_xlat83 = ((x_2034 * 4.0f) + 2.0f);
  let x_2039 : f32 = vs_INTERP6.w;
  u_xlat6.x = min(x_2039, 1.0f);
  let x_2042 : bool = u_xlatb0;
  if (x_2042) {
    let x_2046 : f32 = x_371.x_MainLightShadowParams.y;
    u_xlatb0 = (x_2046 == 1.0f);
    let x_2048 : bool = u_xlatb0;
    if (x_2048) {
      let x_2052 : vec4<f32> = vs_INTERP3;
      let x_2055 : vec4<f32> = x_371.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_2052.x, x_2052.y, x_2052.x, x_2052.y) + x_2055);
      let x_2058 : vec4<f32> = u_xlat7;
      let x_2059 : vec2<f32> = vec2<f32>(x_2058.x, x_2058.y);
      let x_2061 : f32 = vs_INTERP3.z;
      txVec30 = vec3<f32>(x_2059.x, x_2059.y, x_2061);
      let x_2068 : vec3<f32> = txVec30;
      let x_2070 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2068.xy, x_2068.z);
      u_xlat8.x = x_2070;
      let x_2073 : vec4<f32> = u_xlat7;
      let x_2074 : vec2<f32> = vec2<f32>(x_2073.z, x_2073.w);
      let x_2076 : f32 = vs_INTERP3.z;
      txVec31 = vec3<f32>(x_2074.x, x_2074.y, x_2076);
      let x_2083 : vec3<f32> = txVec31;
      let x_2085 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2083.xy, x_2083.z);
      u_xlat8.y = x_2085;
      let x_2087 : vec4<f32> = vs_INTERP3;
      let x_2090 : vec4<f32> = x_371.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_2087.x, x_2087.y, x_2087.x, x_2087.y) + x_2090);
      let x_2093 : vec4<f32> = u_xlat7;
      let x_2094 : vec2<f32> = vec2<f32>(x_2093.x, x_2093.y);
      let x_2096 : f32 = vs_INTERP3.z;
      txVec32 = vec3<f32>(x_2094.x, x_2094.y, x_2096);
      let x_2103 : vec3<f32> = txVec32;
      let x_2105 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2103.xy, x_2103.z);
      u_xlat8.z = x_2105;
      let x_2108 : vec4<f32> = u_xlat7;
      let x_2109 : vec2<f32> = vec2<f32>(x_2108.z, x_2108.w);
      let x_2111 : f32 = vs_INTERP3.z;
      txVec33 = vec3<f32>(x_2109.x, x_2109.y, x_2111);
      let x_2118 : vec3<f32> = txVec33;
      let x_2120 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2118.xy, x_2118.z);
      u_xlat8.w = x_2120;
      let x_2122 : vec4<f32> = u_xlat8;
      u_xlat0.x = dot(x_2122, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_2128 : f32 = x_371.x_MainLightShadowParams.y;
      u_xlatb32.x = (x_2128 == 2.0f);
      let x_2132 : bool = u_xlatb32.x;
      if (x_2132) {
        let x_2136 : vec4<f32> = vs_INTERP3;
        let x_2139 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2142 : vec2<f32> = ((vec2<f32>(x_2136.x, x_2136.y) * vec2<f32>(x_2139.z, x_2139.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2143 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_2142.x, x_2142.y, x_2143.z);
        let x_2145 : vec3<f32> = u_xlat32;
        let x_2147 : vec2<f32> = floor(vec2<f32>(x_2145.x, x_2145.y));
        let x_2148 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_2147.x, x_2147.y, x_2148.z);
        let x_2150 : vec4<f32> = vs_INTERP3;
        let x_2153 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2156 : vec3<f32> = u_xlat32;
        let x_2159 : vec2<f32> = ((vec2<f32>(x_2150.x, x_2150.y) * vec2<f32>(x_2153.z, x_2153.w)) + -(vec2<f32>(x_2156.x, x_2156.y)));
        let x_2160 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2159.x, x_2159.y, x_2160.z, x_2160.w);
        let x_2162 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_2162.x, x_2162.x, x_2162.y, x_2162.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2165 : vec4<f32> = u_xlat8;
        let x_2167 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2165.x, x_2165.x, x_2165.z, x_2165.z) * vec4<f32>(x_2167.x, x_2167.x, x_2167.z, x_2167.z));
        let x_2171 : vec4<f32> = u_xlat9;
        u_xlat59 = (vec2<f32>(x_2171.y, x_2171.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_2174 : vec4<f32> = u_xlat9;
        let x_2177 : vec4<f32> = u_xlat7;
        let x_2180 : vec2<f32> = ((vec2<f32>(x_2174.x, x_2174.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2177.x, x_2177.y)));
        let x_2181 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2180.x, x_2181.y, x_2180.y, x_2181.w);
        let x_2183 : vec4<f32> = u_xlat7;
        let x_2186 : vec2<f32> = (-(vec2<f32>(x_2183.x, x_2183.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2187 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2186.x, x_2186.y, x_2187.z, x_2187.w);
        let x_2190 : vec4<f32> = u_xlat7;
        u_xlat61 = min(vec2<f32>(x_2190.x, x_2190.y), vec2<f32>(0.0f, 0.0f));
        let x_2193 : vec2<f32> = u_xlat61;
        let x_2195 : vec2<f32> = u_xlat61;
        let x_2197 : vec4<f32> = u_xlat9;
        u_xlat61 = ((-(x_2193) * x_2195) + vec2<f32>(x_2197.x, x_2197.y));
        let x_2200 : vec4<f32> = u_xlat7;
        let x_2202 : vec2<f32> = max(vec2<f32>(x_2200.x, x_2200.y), vec2<f32>(0.0f, 0.0f));
        let x_2203 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2202.x, x_2202.y, x_2203.z, x_2203.w);
        let x_2205 : vec4<f32> = u_xlat7;
        let x_2208 : vec4<f32> = u_xlat7;
        let x_2211 : vec4<f32> = u_xlat8;
        let x_2213 : vec2<f32> = ((-(vec2<f32>(x_2205.x, x_2205.y)) * vec2<f32>(x_2208.x, x_2208.y)) + vec2<f32>(x_2211.y, x_2211.w));
        let x_2214 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2213.x, x_2213.y, x_2214.z, x_2214.w);
        let x_2216 : vec2<f32> = u_xlat61;
        u_xlat61 = (x_2216 + vec2<f32>(1.0f, 1.0f));
        let x_2218 : vec4<f32> = u_xlat7;
        let x_2220 : vec2<f32> = (vec2<f32>(x_2218.x, x_2218.y) + vec2<f32>(1.0f, 1.0f));
        let x_2221 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2220.x, x_2220.y, x_2221.z, x_2221.w);
        let x_2223 : vec4<f32> = u_xlat8;
        let x_2225 : vec2<f32> = (vec2<f32>(x_2223.x, x_2223.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2226 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2225.x, x_2225.y, x_2226.z, x_2226.w);
        let x_2228 : vec4<f32> = u_xlat9;
        let x_2230 : vec2<f32> = (vec2<f32>(x_2228.x, x_2228.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2231 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2230.x, x_2230.y, x_2231.z, x_2231.w);
        let x_2233 : vec2<f32> = u_xlat61;
        let x_2234 : vec2<f32> = (x_2233 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2235 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2234.x, x_2234.y, x_2235.z, x_2235.w);
        let x_2237 : vec4<f32> = u_xlat7;
        let x_2239 : vec2<f32> = (vec2<f32>(x_2237.x, x_2237.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2240 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2239.x, x_2239.y, x_2240.z, x_2240.w);
        let x_2242 : vec4<f32> = u_xlat8;
        let x_2244 : vec2<f32> = (vec2<f32>(x_2242.y, x_2242.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2245 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2244.x, x_2244.y, x_2245.z, x_2245.w);
        let x_2248 : f32 = u_xlat9.x;
        u_xlat10.z = x_2248;
        let x_2251 : f32 = u_xlat7.x;
        u_xlat10.w = x_2251;
        let x_2254 : f32 = u_xlat12.x;
        u_xlat11.z = x_2254;
        let x_2257 : f32 = u_xlat59.x;
        u_xlat11.w = x_2257;
        let x_2259 : vec4<f32> = u_xlat10;
        let x_2261 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_2259.z, x_2259.w, x_2259.x, x_2259.z) + vec4<f32>(x_2261.z, x_2261.w, x_2261.x, x_2261.z));
        let x_2265 : f32 = u_xlat10.y;
        u_xlat9.z = x_2265;
        let x_2268 : f32 = u_xlat7.y;
        u_xlat9.w = x_2268;
        let x_2271 : f32 = u_xlat11.y;
        u_xlat12.z = x_2271;
        let x_2274 : f32 = u_xlat59.y;
        u_xlat12.w = x_2274;
        let x_2276 : vec4<f32> = u_xlat9;
        let x_2278 : vec4<f32> = u_xlat12;
        let x_2280 : vec3<f32> = (vec3<f32>(x_2276.z, x_2276.y, x_2276.w) + vec3<f32>(x_2278.z, x_2278.y, x_2278.w));
        let x_2281 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2280.x, x_2280.y, x_2280.z, x_2281.w);
        let x_2283 : vec4<f32> = u_xlat11;
        let x_2285 : vec4<f32> = u_xlat8;
        let x_2287 : vec3<f32> = (vec3<f32>(x_2283.x, x_2283.z, x_2283.w) / vec3<f32>(x_2285.z, x_2285.w, x_2285.y));
        let x_2288 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2287.x, x_2287.y, x_2287.z, x_2288.w);
        let x_2290 : vec4<f32> = u_xlat9;
        let x_2292 : vec3<f32> = (vec3<f32>(x_2290.x, x_2290.y, x_2290.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2293 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2292.x, x_2292.y, x_2292.z, x_2293.w);
        let x_2295 : vec4<f32> = u_xlat12;
        let x_2297 : vec4<f32> = u_xlat7;
        let x_2299 : vec3<f32> = (vec3<f32>(x_2295.z, x_2295.y, x_2295.w) / vec3<f32>(x_2297.x, x_2297.y, x_2297.z));
        let x_2300 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2299.x, x_2299.y, x_2299.z, x_2300.w);
        let x_2302 : vec4<f32> = u_xlat10;
        let x_2304 : vec3<f32> = (vec3<f32>(x_2302.x, x_2302.y, x_2302.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2305 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2304.x, x_2304.y, x_2304.z, x_2305.w);
        let x_2307 : vec4<f32> = u_xlat9;
        let x_2310 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2312 : vec3<f32> = (vec3<f32>(x_2307.y, x_2307.x, x_2307.z) * vec3<f32>(x_2310.x, x_2310.x, x_2310.x));
        let x_2313 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2312.x, x_2312.y, x_2312.z, x_2313.w);
        let x_2315 : vec4<f32> = u_xlat10;
        let x_2318 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2320 : vec3<f32> = (vec3<f32>(x_2315.x, x_2315.y, x_2315.z) * vec3<f32>(x_2318.y, x_2318.y, x_2318.y));
        let x_2321 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2320.x, x_2320.y, x_2320.z, x_2321.w);
        let x_2324 : f32 = u_xlat10.x;
        u_xlat9.w = x_2324;
        let x_2326 : vec3<f32> = u_xlat32;
        let x_2329 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2332 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_2326.x, x_2326.y, x_2326.x, x_2326.y) * vec4<f32>(x_2329.x, x_2329.y, x_2329.x, x_2329.y)) + vec4<f32>(x_2332.y, x_2332.w, x_2332.x, x_2332.w));
        let x_2335 : vec3<f32> = u_xlat32;
        let x_2338 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2341 : vec4<f32> = u_xlat9;
        let x_2343 : vec2<f32> = ((vec2<f32>(x_2335.x, x_2335.y) * vec2<f32>(x_2338.x, x_2338.y)) + vec2<f32>(x_2341.z, x_2341.w));
        let x_2344 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2343.x, x_2343.y, x_2344.z, x_2344.w);
        let x_2347 : f32 = u_xlat9.y;
        u_xlat10.w = x_2347;
        let x_2349 : vec4<f32> = u_xlat10;
        let x_2350 : vec2<f32> = vec2<f32>(x_2349.y, x_2349.z);
        let x_2351 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2351.x, x_2350.x, x_2351.z, x_2350.y);
        let x_2353 : vec3<f32> = u_xlat32;
        let x_2356 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2359 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_2353.x, x_2353.y, x_2353.x, x_2353.y) * vec4<f32>(x_2356.x, x_2356.y, x_2356.x, x_2356.y)) + vec4<f32>(x_2359.x, x_2359.y, x_2359.z, x_2359.y));
        let x_2362 : vec3<f32> = u_xlat32;
        let x_2365 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2368 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_2362.x, x_2362.y, x_2362.x, x_2362.y) * vec4<f32>(x_2365.x, x_2365.y, x_2365.x, x_2365.y)) + vec4<f32>(x_2368.w, x_2368.y, x_2368.w, x_2368.z));
        let x_2371 : vec3<f32> = u_xlat32;
        let x_2374 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2377 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_2371.x, x_2371.y, x_2371.x, x_2371.y) * vec4<f32>(x_2374.x, x_2374.y, x_2374.x, x_2374.y)) + vec4<f32>(x_2377.x, x_2377.w, x_2377.z, x_2377.w));
        let x_2380 : vec4<f32> = u_xlat7;
        let x_2382 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_2380.x, x_2380.x, x_2380.x, x_2380.y) * vec4<f32>(x_2382.z, x_2382.w, x_2382.y, x_2382.z));
        let x_2385 : vec4<f32> = u_xlat7;
        let x_2387 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_2385.y, x_2385.y, x_2385.z, x_2385.z) * x_2387);
        let x_2390 : f32 = u_xlat7.z;
        let x_2392 : f32 = u_xlat8.y;
        u_xlat32.x = (x_2390 * x_2392);
        let x_2396 : vec4<f32> = u_xlat11;
        let x_2397 : vec2<f32> = vec2<f32>(x_2396.x, x_2396.y);
        let x_2399 : f32 = vs_INTERP3.z;
        txVec34 = vec3<f32>(x_2397.x, x_2397.y, x_2399);
        let x_2407 : vec3<f32> = txVec34;
        let x_2409 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2407.xy, x_2407.z);
        u_xlat58 = x_2409;
        let x_2411 : vec4<f32> = u_xlat11;
        let x_2412 : vec2<f32> = vec2<f32>(x_2411.z, x_2411.w);
        let x_2414 : f32 = vs_INTERP3.z;
        txVec35 = vec3<f32>(x_2412.x, x_2412.y, x_2414);
        let x_2422 : vec3<f32> = txVec35;
        let x_2424 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2422.xy, x_2422.z);
        u_xlat84 = x_2424;
        let x_2425 : f32 = u_xlat84;
        let x_2427 : f32 = u_xlat14.y;
        u_xlat84 = (x_2425 * x_2427);
        let x_2430 : f32 = u_xlat14.x;
        let x_2431 : f32 = u_xlat58;
        let x_2433 : f32 = u_xlat84;
        u_xlat58 = ((x_2430 * x_2431) + x_2433);
        let x_2436 : vec4<f32> = u_xlat12;
        let x_2437 : vec2<f32> = vec2<f32>(x_2436.x, x_2436.y);
        let x_2439 : f32 = vs_INTERP3.z;
        txVec36 = vec3<f32>(x_2437.x, x_2437.y, x_2439);
        let x_2446 : vec3<f32> = txVec36;
        let x_2448 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2446.xy, x_2446.z);
        u_xlat84 = x_2448;
        let x_2450 : f32 = u_xlat14.z;
        let x_2451 : f32 = u_xlat84;
        let x_2453 : f32 = u_xlat58;
        u_xlat58 = ((x_2450 * x_2451) + x_2453);
        let x_2456 : vec4<f32> = u_xlat10;
        let x_2457 : vec2<f32> = vec2<f32>(x_2456.x, x_2456.y);
        let x_2459 : f32 = vs_INTERP3.z;
        txVec37 = vec3<f32>(x_2457.x, x_2457.y, x_2459);
        let x_2466 : vec3<f32> = txVec37;
        let x_2468 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2466.xy, x_2466.z);
        u_xlat84 = x_2468;
        let x_2470 : f32 = u_xlat14.w;
        let x_2471 : f32 = u_xlat84;
        let x_2473 : f32 = u_xlat58;
        u_xlat58 = ((x_2470 * x_2471) + x_2473);
        let x_2476 : vec4<f32> = u_xlat13;
        let x_2477 : vec2<f32> = vec2<f32>(x_2476.x, x_2476.y);
        let x_2479 : f32 = vs_INTERP3.z;
        txVec38 = vec3<f32>(x_2477.x, x_2477.y, x_2479);
        let x_2486 : vec3<f32> = txVec38;
        let x_2488 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2486.xy, x_2486.z);
        u_xlat84 = x_2488;
        let x_2490 : f32 = u_xlat15.x;
        let x_2491 : f32 = u_xlat84;
        let x_2493 : f32 = u_xlat58;
        u_xlat58 = ((x_2490 * x_2491) + x_2493);
        let x_2496 : vec4<f32> = u_xlat13;
        let x_2497 : vec2<f32> = vec2<f32>(x_2496.z, x_2496.w);
        let x_2499 : f32 = vs_INTERP3.z;
        txVec39 = vec3<f32>(x_2497.x, x_2497.y, x_2499);
        let x_2506 : vec3<f32> = txVec39;
        let x_2508 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2506.xy, x_2506.z);
        u_xlat84 = x_2508;
        let x_2510 : f32 = u_xlat15.y;
        let x_2511 : f32 = u_xlat84;
        let x_2513 : f32 = u_xlat58;
        u_xlat58 = ((x_2510 * x_2511) + x_2513);
        let x_2516 : vec4<f32> = u_xlat10;
        let x_2517 : vec2<f32> = vec2<f32>(x_2516.z, x_2516.w);
        let x_2519 : f32 = vs_INTERP3.z;
        txVec40 = vec3<f32>(x_2517.x, x_2517.y, x_2519);
        let x_2526 : vec3<f32> = txVec40;
        let x_2528 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2526.xy, x_2526.z);
        u_xlat84 = x_2528;
        let x_2530 : f32 = u_xlat15.z;
        let x_2531 : f32 = u_xlat84;
        let x_2533 : f32 = u_xlat58;
        u_xlat58 = ((x_2530 * x_2531) + x_2533);
        let x_2536 : vec4<f32> = u_xlat9;
        let x_2537 : vec2<f32> = vec2<f32>(x_2536.x, x_2536.y);
        let x_2539 : f32 = vs_INTERP3.z;
        txVec41 = vec3<f32>(x_2537.x, x_2537.y, x_2539);
        let x_2546 : vec3<f32> = txVec41;
        let x_2548 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2546.xy, x_2546.z);
        u_xlat84 = x_2548;
        let x_2550 : f32 = u_xlat15.w;
        let x_2551 : f32 = u_xlat84;
        let x_2553 : f32 = u_xlat58;
        u_xlat58 = ((x_2550 * x_2551) + x_2553);
        let x_2556 : vec4<f32> = u_xlat9;
        let x_2557 : vec2<f32> = vec2<f32>(x_2556.z, x_2556.w);
        let x_2559 : f32 = vs_INTERP3.z;
        txVec42 = vec3<f32>(x_2557.x, x_2557.y, x_2559);
        let x_2566 : vec3<f32> = txVec42;
        let x_2568 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2566.xy, x_2566.z);
        u_xlat84 = x_2568;
        let x_2570 : f32 = u_xlat32.x;
        let x_2571 : f32 = u_xlat84;
        let x_2573 : f32 = u_xlat58;
        u_xlat0.x = ((x_2570 * x_2571) + x_2573);
      } else {
        let x_2577 : vec4<f32> = vs_INTERP3;
        let x_2580 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2583 : vec2<f32> = ((vec2<f32>(x_2577.x, x_2577.y) * vec2<f32>(x_2580.z, x_2580.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2584 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_2583.x, x_2583.y, x_2584.z);
        let x_2586 : vec3<f32> = u_xlat32;
        let x_2588 : vec2<f32> = floor(vec2<f32>(x_2586.x, x_2586.y));
        let x_2589 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_2588.x, x_2588.y, x_2589.z);
        let x_2591 : vec4<f32> = vs_INTERP3;
        let x_2594 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2597 : vec3<f32> = u_xlat32;
        let x_2600 : vec2<f32> = ((vec2<f32>(x_2591.x, x_2591.y) * vec2<f32>(x_2594.z, x_2594.w)) + -(vec2<f32>(x_2597.x, x_2597.y)));
        let x_2601 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2600.x, x_2600.y, x_2601.z, x_2601.w);
        let x_2603 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_2603.x, x_2603.x, x_2603.y, x_2603.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2606 : vec4<f32> = u_xlat8;
        let x_2608 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2606.x, x_2606.x, x_2606.z, x_2606.z) * vec4<f32>(x_2608.x, x_2608.x, x_2608.z, x_2608.z));
        let x_2611 : vec4<f32> = u_xlat9;
        let x_2613 : vec2<f32> = (vec2<f32>(x_2611.y, x_2611.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_2614 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2614.x, x_2613.x, x_2614.z, x_2613.y);
        let x_2616 : vec4<f32> = u_xlat9;
        let x_2619 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_2616.x, x_2616.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2619.x, x_2619.y)));
        let x_2623 : vec4<f32> = u_xlat7;
        let x_2626 : vec2<f32> = (-(vec2<f32>(x_2623.x, x_2623.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2627 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2626.x, x_2627.y, x_2626.y, x_2627.w);
        let x_2629 : vec4<f32> = u_xlat7;
        let x_2631 : vec2<f32> = min(vec2<f32>(x_2629.x, x_2629.y), vec2<f32>(0.0f, 0.0f));
        let x_2632 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2631.x, x_2631.y, x_2632.z, x_2632.w);
        let x_2634 : vec4<f32> = u_xlat9;
        let x_2637 : vec4<f32> = u_xlat9;
        let x_2640 : vec4<f32> = u_xlat8;
        let x_2642 : vec2<f32> = ((-(vec2<f32>(x_2634.x, x_2634.y)) * vec2<f32>(x_2637.x, x_2637.y)) + vec2<f32>(x_2640.x, x_2640.z));
        let x_2643 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2642.x, x_2643.y, x_2642.y, x_2643.w);
        let x_2645 : vec4<f32> = u_xlat7;
        let x_2647 : vec2<f32> = max(vec2<f32>(x_2645.x, x_2645.y), vec2<f32>(0.0f, 0.0f));
        let x_2648 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2647.x, x_2647.y, x_2648.z, x_2648.w);
        let x_2650 : vec4<f32> = u_xlat9;
        let x_2653 : vec4<f32> = u_xlat9;
        let x_2656 : vec4<f32> = u_xlat8;
        let x_2658 : vec2<f32> = ((-(vec2<f32>(x_2650.x, x_2650.y)) * vec2<f32>(x_2653.x, x_2653.y)) + vec2<f32>(x_2656.y, x_2656.w));
        let x_2659 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2659.x, x_2658.x, x_2659.z, x_2658.y);
        let x_2661 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_2661 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_2664 : f32 = u_xlat8.y;
        u_xlat9.z = (x_2664 * 0.08163200318813323975f);
        let x_2667 : vec2<f32> = u_xlat59;
        let x_2669 : vec2<f32> = (vec2<f32>(x_2667.y, x_2667.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2670 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2669.x, x_2669.y, x_2670.z, x_2670.w);
        let x_2672 : vec4<f32> = u_xlat8;
        u_xlat59 = (vec2<f32>(x_2672.x, x_2672.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2676 : f32 = u_xlat8.w;
        u_xlat11.z = (x_2676 * 0.08163200318813323975f);
        let x_2680 : f32 = u_xlat11.y;
        u_xlat9.x = x_2680;
        let x_2682 : vec4<f32> = u_xlat7;
        let x_2685 : vec2<f32> = ((vec2<f32>(x_2682.x, x_2682.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2686 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2686.x, x_2685.x, x_2686.z, x_2685.y);
        let x_2688 : vec4<f32> = u_xlat7;
        let x_2691 : vec2<f32> = ((vec2<f32>(x_2688.x, x_2688.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2692 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2691.x, x_2692.y, x_2691.y, x_2692.w);
        let x_2695 : f32 = u_xlat59.x;
        u_xlat8.y = x_2695;
        let x_2698 : f32 = u_xlat10.y;
        u_xlat8.w = x_2698;
        let x_2700 : vec4<f32> = u_xlat8;
        let x_2701 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_2700 + x_2701);
        let x_2703 : vec4<f32> = u_xlat7;
        let x_2706 : vec2<f32> = ((vec2<f32>(x_2703.y, x_2703.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2707 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2707.x, x_2706.x, x_2707.z, x_2706.y);
        let x_2709 : vec4<f32> = u_xlat7;
        let x_2712 : vec2<f32> = ((vec2<f32>(x_2709.y, x_2709.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2713 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2712.x, x_2713.y, x_2712.y, x_2713.w);
        let x_2716 : f32 = u_xlat59.y;
        u_xlat10.y = x_2716;
        let x_2718 : vec4<f32> = u_xlat10;
        let x_2719 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_2718 + x_2719);
        let x_2721 : vec4<f32> = u_xlat8;
        let x_2722 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_2721 / x_2722);
        let x_2724 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_2724 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2726 : vec4<f32> = u_xlat10;
        let x_2727 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_2726 / x_2727);
        let x_2729 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_2729 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2731 : vec4<f32> = u_xlat8;
        let x_2734 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_2731.w, x_2731.x, x_2731.y, x_2731.z) * vec4<f32>(x_2734.x, x_2734.x, x_2734.x, x_2734.x));
        let x_2737 : vec4<f32> = u_xlat10;
        let x_2740 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_2737.x, x_2737.w, x_2737.y, x_2737.z) * vec4<f32>(x_2740.y, x_2740.y, x_2740.y, x_2740.y));
        let x_2743 : vec4<f32> = u_xlat8;
        let x_2744 : vec3<f32> = vec3<f32>(x_2743.y, x_2743.z, x_2743.w);
        let x_2745 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2744.x, x_2745.y, x_2744.y, x_2744.z);
        let x_2748 : f32 = u_xlat10.x;
        u_xlat11.y = x_2748;
        let x_2750 : vec3<f32> = u_xlat32;
        let x_2753 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2756 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_2750.x, x_2750.y, x_2750.x, x_2750.y) * vec4<f32>(x_2753.x, x_2753.y, x_2753.x, x_2753.y)) + vec4<f32>(x_2756.x, x_2756.y, x_2756.z, x_2756.y));
        let x_2759 : vec3<f32> = u_xlat32;
        let x_2762 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2765 : vec4<f32> = u_xlat11;
        let x_2767 : vec2<f32> = ((vec2<f32>(x_2759.x, x_2759.y) * vec2<f32>(x_2762.x, x_2762.y)) + vec2<f32>(x_2765.w, x_2765.y));
        let x_2768 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_2767.x, x_2767.y, x_2768.z, x_2768.w);
        let x_2771 : f32 = u_xlat11.y;
        u_xlat8.y = x_2771;
        let x_2774 : f32 = u_xlat10.z;
        u_xlat11.y = x_2774;
        let x_2776 : vec3<f32> = u_xlat32;
        let x_2779 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2782 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_2776.x, x_2776.y, x_2776.x, x_2776.y) * vec4<f32>(x_2779.x, x_2779.y, x_2779.x, x_2779.y)) + vec4<f32>(x_2782.x, x_2782.y, x_2782.z, x_2782.y));
        let x_2786 : vec3<f32> = u_xlat32;
        let x_2789 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2792 : vec4<f32> = u_xlat11;
        u_xlat65 = ((vec2<f32>(x_2786.x, x_2786.y) * vec2<f32>(x_2789.x, x_2789.y)) + vec2<f32>(x_2792.w, x_2792.y));
        let x_2796 : f32 = u_xlat11.y;
        u_xlat8.z = x_2796;
        let x_2798 : vec3<f32> = u_xlat32;
        let x_2801 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2804 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_2798.x, x_2798.y, x_2798.x, x_2798.y) * vec4<f32>(x_2801.x, x_2801.y, x_2801.x, x_2801.y)) + vec4<f32>(x_2804.x, x_2804.y, x_2804.x, x_2804.z));
        let x_2808 : f32 = u_xlat10.w;
        u_xlat11.y = x_2808;
        let x_2810 : vec3<f32> = u_xlat32;
        let x_2813 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2816 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_2810.x, x_2810.y, x_2810.x, x_2810.y) * vec4<f32>(x_2813.x, x_2813.y, x_2813.x, x_2813.y)) + vec4<f32>(x_2816.x, x_2816.y, x_2816.z, x_2816.y));
        let x_2819 : vec3<f32> = u_xlat32;
        let x_2822 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2825 : vec4<f32> = u_xlat11;
        let x_2827 : vec2<f32> = ((vec2<f32>(x_2819.x, x_2819.y) * vec2<f32>(x_2822.x, x_2822.y)) + vec2<f32>(x_2825.w, x_2825.y));
        let x_2828 : vec3<f32> = u_xlat34;
        u_xlat34 = vec3<f32>(x_2827.x, x_2827.y, x_2828.z);
        let x_2831 : f32 = u_xlat11.y;
        u_xlat8.w = x_2831;
        let x_2833 : vec3<f32> = u_xlat32;
        let x_2836 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2839 : vec4<f32> = u_xlat8;
        let x_2841 : vec2<f32> = ((vec2<f32>(x_2833.x, x_2833.y) * vec2<f32>(x_2836.x, x_2836.y)) + vec2<f32>(x_2839.x, x_2839.w));
        let x_2842 : vec4<f32> = u_xlat17;
        u_xlat17 = vec4<f32>(x_2841.x, x_2841.y, x_2842.z, x_2842.w);
        let x_2844 : vec4<f32> = u_xlat11;
        let x_2845 : vec3<f32> = vec3<f32>(x_2844.x, x_2844.z, x_2844.w);
        let x_2846 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2845.x, x_2846.y, x_2845.y, x_2845.z);
        let x_2848 : vec3<f32> = u_xlat32;
        let x_2851 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2854 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_2848.x, x_2848.y, x_2848.x, x_2848.y) * vec4<f32>(x_2851.x, x_2851.y, x_2851.x, x_2851.y)) + vec4<f32>(x_2854.x, x_2854.y, x_2854.z, x_2854.y));
        let x_2857 : vec3<f32> = u_xlat32;
        let x_2860 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2863 : vec4<f32> = u_xlat10;
        u_xlat62 = ((vec2<f32>(x_2857.x, x_2857.y) * vec2<f32>(x_2860.x, x_2860.y)) + vec2<f32>(x_2863.w, x_2863.y));
        let x_2867 : f32 = u_xlat8.x;
        u_xlat10.x = x_2867;
        let x_2869 : vec3<f32> = u_xlat32;
        let x_2872 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2875 : vec4<f32> = u_xlat10;
        let x_2877 : vec2<f32> = ((vec2<f32>(x_2869.x, x_2869.y) * vec2<f32>(x_2872.x, x_2872.y)) + vec2<f32>(x_2875.x, x_2875.y));
        let x_2878 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_2877.x, x_2877.y, x_2878.z);
        let x_2880 : vec4<f32> = u_xlat7;
        let x_2882 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_2880.x, x_2880.x, x_2880.x, x_2880.x) * x_2882);
        let x_2884 : vec4<f32> = u_xlat7;
        let x_2886 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_2884.y, x_2884.y, x_2884.y, x_2884.y) * x_2886);
        let x_2888 : vec4<f32> = u_xlat7;
        let x_2890 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_2888.z, x_2888.z, x_2888.z, x_2888.z) * x_2890);
        let x_2892 : vec4<f32> = u_xlat7;
        let x_2894 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_2892.w, x_2892.w, x_2892.w, x_2892.w) * x_2894);
        let x_2897 : vec4<f32> = u_xlat12;
        let x_2898 : vec2<f32> = vec2<f32>(x_2897.x, x_2897.y);
        let x_2900 : f32 = vs_INTERP3.z;
        txVec43 = vec3<f32>(x_2898.x, x_2898.y, x_2900);
        let x_2907 : vec3<f32> = txVec43;
        let x_2909 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2907.xy, x_2907.z);
        u_xlat84 = x_2909;
        let x_2911 : vec4<f32> = u_xlat12;
        let x_2912 : vec2<f32> = vec2<f32>(x_2911.z, x_2911.w);
        let x_2914 : f32 = vs_INTERP3.z;
        txVec44 = vec3<f32>(x_2912.x, x_2912.y, x_2914);
        let x_2921 : vec3<f32> = txVec44;
        let x_2923 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2921.xy, x_2921.z);
        u_xlat8.x = x_2923;
        let x_2926 : f32 = u_xlat8.x;
        let x_2928 : f32 = u_xlat18.y;
        u_xlat8.x = (x_2926 * x_2928);
        let x_2932 : f32 = u_xlat18.x;
        let x_2933 : f32 = u_xlat84;
        let x_2936 : f32 = u_xlat8.x;
        u_xlat84 = ((x_2932 * x_2933) + x_2936);
        let x_2939 : vec4<f32> = u_xlat13;
        let x_2940 : vec2<f32> = vec2<f32>(x_2939.x, x_2939.y);
        let x_2942 : f32 = vs_INTERP3.z;
        txVec45 = vec3<f32>(x_2940.x, x_2940.y, x_2942);
        let x_2949 : vec3<f32> = txVec45;
        let x_2951 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2949.xy, x_2949.z);
        u_xlat8.x = x_2951;
        let x_2954 : f32 = u_xlat18.z;
        let x_2956 : f32 = u_xlat8.x;
        let x_2958 : f32 = u_xlat84;
        u_xlat84 = ((x_2954 * x_2956) + x_2958);
        let x_2961 : vec4<f32> = u_xlat15;
        let x_2962 : vec2<f32> = vec2<f32>(x_2961.x, x_2961.y);
        let x_2964 : f32 = vs_INTERP3.z;
        txVec46 = vec3<f32>(x_2962.x, x_2962.y, x_2964);
        let x_2971 : vec3<f32> = txVec46;
        let x_2973 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2971.xy, x_2971.z);
        u_xlat8.x = x_2973;
        let x_2976 : f32 = u_xlat18.w;
        let x_2978 : f32 = u_xlat8.x;
        let x_2980 : f32 = u_xlat84;
        u_xlat84 = ((x_2976 * x_2978) + x_2980);
        let x_2983 : vec4<f32> = u_xlat14;
        let x_2984 : vec2<f32> = vec2<f32>(x_2983.x, x_2983.y);
        let x_2986 : f32 = vs_INTERP3.z;
        txVec47 = vec3<f32>(x_2984.x, x_2984.y, x_2986);
        let x_2993 : vec3<f32> = txVec47;
        let x_2995 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2993.xy, x_2993.z);
        u_xlat8.x = x_2995;
        let x_2998 : f32 = u_xlat19.x;
        let x_3000 : f32 = u_xlat8.x;
        let x_3002 : f32 = u_xlat84;
        u_xlat84 = ((x_2998 * x_3000) + x_3002);
        let x_3005 : vec4<f32> = u_xlat14;
        let x_3006 : vec2<f32> = vec2<f32>(x_3005.z, x_3005.w);
        let x_3008 : f32 = vs_INTERP3.z;
        txVec48 = vec3<f32>(x_3006.x, x_3006.y, x_3008);
        let x_3015 : vec3<f32> = txVec48;
        let x_3017 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3015.xy, x_3015.z);
        u_xlat8.x = x_3017;
        let x_3020 : f32 = u_xlat19.y;
        let x_3022 : f32 = u_xlat8.x;
        let x_3024 : f32 = u_xlat84;
        u_xlat84 = ((x_3020 * x_3022) + x_3024);
        let x_3027 : vec2<f32> = u_xlat65;
        let x_3029 : f32 = vs_INTERP3.z;
        txVec49 = vec3<f32>(x_3027.x, x_3027.y, x_3029);
        let x_3036 : vec3<f32> = txVec49;
        let x_3038 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3036.xy, x_3036.z);
        u_xlat8.x = x_3038;
        let x_3041 : f32 = u_xlat19.z;
        let x_3043 : f32 = u_xlat8.x;
        let x_3045 : f32 = u_xlat84;
        u_xlat84 = ((x_3041 * x_3043) + x_3045);
        let x_3048 : vec4<f32> = u_xlat15;
        let x_3049 : vec2<f32> = vec2<f32>(x_3048.z, x_3048.w);
        let x_3051 : f32 = vs_INTERP3.z;
        txVec50 = vec3<f32>(x_3049.x, x_3049.y, x_3051);
        let x_3058 : vec3<f32> = txVec50;
        let x_3060 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3058.xy, x_3058.z);
        u_xlat8.x = x_3060;
        let x_3063 : f32 = u_xlat19.w;
        let x_3065 : f32 = u_xlat8.x;
        let x_3067 : f32 = u_xlat84;
        u_xlat84 = ((x_3063 * x_3065) + x_3067);
        let x_3070 : vec4<f32> = u_xlat16;
        let x_3071 : vec2<f32> = vec2<f32>(x_3070.x, x_3070.y);
        let x_3073 : f32 = vs_INTERP3.z;
        txVec51 = vec3<f32>(x_3071.x, x_3071.y, x_3073);
        let x_3080 : vec3<f32> = txVec51;
        let x_3082 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3080.xy, x_3080.z);
        u_xlat8.x = x_3082;
        let x_3085 : f32 = u_xlat20.x;
        let x_3087 : f32 = u_xlat8.x;
        let x_3089 : f32 = u_xlat84;
        u_xlat84 = ((x_3085 * x_3087) + x_3089);
        let x_3092 : vec4<f32> = u_xlat16;
        let x_3093 : vec2<f32> = vec2<f32>(x_3092.z, x_3092.w);
        let x_3095 : f32 = vs_INTERP3.z;
        txVec52 = vec3<f32>(x_3093.x, x_3093.y, x_3095);
        let x_3102 : vec3<f32> = txVec52;
        let x_3104 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3102.xy, x_3102.z);
        u_xlat8.x = x_3104;
        let x_3107 : f32 = u_xlat20.y;
        let x_3109 : f32 = u_xlat8.x;
        let x_3111 : f32 = u_xlat84;
        u_xlat84 = ((x_3107 * x_3109) + x_3111);
        let x_3114 : vec3<f32> = u_xlat34;
        let x_3115 : vec2<f32> = vec2<f32>(x_3114.x, x_3114.y);
        let x_3117 : f32 = vs_INTERP3.z;
        txVec53 = vec3<f32>(x_3115.x, x_3115.y, x_3117);
        let x_3124 : vec3<f32> = txVec53;
        let x_3126 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3124.xy, x_3124.z);
        u_xlat8.x = x_3126;
        let x_3129 : f32 = u_xlat20.z;
        let x_3131 : f32 = u_xlat8.x;
        let x_3133 : f32 = u_xlat84;
        u_xlat84 = ((x_3129 * x_3131) + x_3133);
        let x_3136 : vec4<f32> = u_xlat17;
        let x_3137 : vec2<f32> = vec2<f32>(x_3136.x, x_3136.y);
        let x_3139 : f32 = vs_INTERP3.z;
        txVec54 = vec3<f32>(x_3137.x, x_3137.y, x_3139);
        let x_3146 : vec3<f32> = txVec54;
        let x_3148 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3146.xy, x_3146.z);
        u_xlat8.x = x_3148;
        let x_3151 : f32 = u_xlat20.w;
        let x_3153 : f32 = u_xlat8.x;
        let x_3155 : f32 = u_xlat84;
        u_xlat84 = ((x_3151 * x_3153) + x_3155);
        let x_3158 : vec4<f32> = u_xlat11;
        let x_3159 : vec2<f32> = vec2<f32>(x_3158.x, x_3158.y);
        let x_3161 : f32 = vs_INTERP3.z;
        txVec55 = vec3<f32>(x_3159.x, x_3159.y, x_3161);
        let x_3168 : vec3<f32> = txVec55;
        let x_3170 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3168.xy, x_3168.z);
        u_xlat8.x = x_3170;
        let x_3173 : f32 = u_xlat7.x;
        let x_3175 : f32 = u_xlat8.x;
        let x_3177 : f32 = u_xlat84;
        u_xlat84 = ((x_3173 * x_3175) + x_3177);
        let x_3180 : vec4<f32> = u_xlat11;
        let x_3181 : vec2<f32> = vec2<f32>(x_3180.z, x_3180.w);
        let x_3183 : f32 = vs_INTERP3.z;
        txVec56 = vec3<f32>(x_3181.x, x_3181.y, x_3183);
        let x_3190 : vec3<f32> = txVec56;
        let x_3192 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3190.xy, x_3190.z);
        u_xlat7.x = x_3192;
        let x_3195 : f32 = u_xlat7.y;
        let x_3197 : f32 = u_xlat7.x;
        let x_3199 : f32 = u_xlat84;
        u_xlat84 = ((x_3195 * x_3197) + x_3199);
        let x_3202 : vec2<f32> = u_xlat62;
        let x_3204 : f32 = vs_INTERP3.z;
        txVec57 = vec3<f32>(x_3202.x, x_3202.y, x_3204);
        let x_3211 : vec3<f32> = txVec57;
        let x_3213 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3211.xy, x_3211.z);
        u_xlat7.x = x_3213;
        let x_3216 : f32 = u_xlat7.z;
        let x_3218 : f32 = u_xlat7.x;
        let x_3220 : f32 = u_xlat84;
        u_xlat84 = ((x_3216 * x_3218) + x_3220);
        let x_3223 : vec3<f32> = u_xlat32;
        let x_3224 : vec2<f32> = vec2<f32>(x_3223.x, x_3223.y);
        let x_3226 : f32 = vs_INTERP3.z;
        txVec58 = vec3<f32>(x_3224.x, x_3224.y, x_3226);
        let x_3233 : vec3<f32> = txVec58;
        let x_3235 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3233.xy, x_3233.z);
        u_xlat32.x = x_3235;
        let x_3238 : f32 = u_xlat7.w;
        let x_3240 : f32 = u_xlat32.x;
        let x_3242 : f32 = u_xlat84;
        u_xlat0.x = ((x_3238 * x_3240) + x_3242);
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
  let x_3264 : f32 = x_371.x_MainLightShadowParams.x;
  let x_3267 : f32 = u_xlat2.x;
  u_xlat0.x = ((x_3262 * x_3264) + x_3267);
  let x_3272 : f32 = vs_INTERP3.z;
  u_xlatb2 = (0.0f >= x_3272);
  let x_3275 : f32 = vs_INTERP3.z;
  u_xlatb32.x = (x_3275 >= 1.0f);
  let x_3278 : bool = u_xlatb2;
  let x_3280 : bool = u_xlatb32.x;
  u_xlatb2 = (x_3278 | x_3280);
  let x_3282 : bool = u_xlatb2;
  if (x_3282) {
    x_3283 = 1.0f;
  } else {
    let x_3288 : f32 = u_xlat0.x;
    x_3283 = x_3288;
  }
  let x_3289 : f32 = x_3283;
  u_xlat0.x = x_3289;
  let x_3291 : vec3<f32> = vs_INTERP8;
  let x_3293 : vec3<f32> = x_147.x_WorldSpaceCameraPos;
  u_xlat32 = (x_3291 + -(x_3293));
  let x_3296 : vec3<f32> = u_xlat32;
  let x_3297 : vec3<f32> = u_xlat32;
  u_xlat2.x = dot(x_3296, x_3297);
  let x_3301 : f32 = u_xlat2.x;
  let x_3303 : f32 = x_371.x_MainLightShadowParams.z;
  let x_3306 : f32 = x_371.x_MainLightShadowParams.w;
  u_xlat32.x = ((x_3301 * x_3303) + x_3306);
  let x_3310 : f32 = u_xlat32.x;
  u_xlat32.x = clamp(x_3310, 0.0f, 1.0f);
  let x_3314 : f32 = u_xlat0.x;
  u_xlat58 = (-(x_3314) + 1.0f);
  let x_3318 : f32 = u_xlat32.x;
  let x_3319 : f32 = u_xlat58;
  let x_3322 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_3318 * x_3319) + x_3322);
  let x_3332 : f32 = x_3330.x_MainLightCookieTextureFormat;
  u_xlatb32.x = !((x_3332 == -1.0f));
  let x_3336 : bool = u_xlatb32.x;
  if (x_3336) {
    let x_3339 : vec3<f32> = vs_INTERP8;
    let x_3342 : vec4<f32> = x_3330.x_MainLightWorldToLight[1i];
    let x_3344 : vec2<f32> = (vec2<f32>(x_3339.y, x_3339.y) * vec2<f32>(x_3342.x, x_3342.y));
    let x_3345 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_3344.x, x_3344.y, x_3345.z);
    let x_3348 : vec4<f32> = x_3330.x_MainLightWorldToLight[0i];
    let x_3350 : vec3<f32> = vs_INTERP8;
    let x_3353 : vec3<f32> = u_xlat32;
    let x_3355 : vec2<f32> = ((vec2<f32>(x_3348.x, x_3348.y) * vec2<f32>(x_3350.x, x_3350.x)) + vec2<f32>(x_3353.x, x_3353.y));
    let x_3356 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_3355.x, x_3355.y, x_3356.z);
    let x_3359 : vec4<f32> = x_3330.x_MainLightWorldToLight[2i];
    let x_3361 : vec3<f32> = vs_INTERP8;
    let x_3364 : vec3<f32> = u_xlat32;
    let x_3366 : vec2<f32> = ((vec2<f32>(x_3359.x, x_3359.y) * vec2<f32>(x_3361.z, x_3361.z)) + vec2<f32>(x_3364.x, x_3364.y));
    let x_3367 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_3366.x, x_3366.y, x_3367.z);
    let x_3369 : vec3<f32> = u_xlat32;
    let x_3372 : vec4<f32> = x_3330.x_MainLightWorldToLight[3i];
    let x_3374 : vec2<f32> = (vec2<f32>(x_3369.x, x_3369.y) + vec2<f32>(x_3372.x, x_3372.y));
    let x_3375 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_3374.x, x_3374.y, x_3375.z);
    let x_3377 : vec3<f32> = u_xlat32;
    let x_3380 : vec2<f32> = ((vec2<f32>(x_3377.x, x_3377.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_3381 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_3380.x, x_3380.y, x_3381.z);
    let x_3388 : vec3<f32> = u_xlat32;
    let x_3391 : f32 = x_147.x_GlobalMipBias.x;
    let x_3392 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_3388.x, x_3388.y), x_3391);
    u_xlat7 = x_3392;
    let x_3394 : f32 = x_3330.x_MainLightCookieTextureFormat;
    let x_3396 : f32 = x_3330.x_MainLightCookieTextureFormat;
    let x_3398 : f32 = x_3330.x_MainLightCookieTextureFormat;
    let x_3400 : f32 = x_3330.x_MainLightCookieTextureFormat;
    let x_3401 : vec4<f32> = vec4<f32>(x_3394, x_3396, x_3398, x_3400);
    let x_3409 : vec4<bool> = (vec4<f32>(x_3401.x, x_3401.y, x_3401.z, x_3401.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb32 = vec2<bool>(x_3409.x, x_3409.y);
    let x_3412 : bool = u_xlatb32.y;
    if (x_3412) {
      let x_3417 : f32 = u_xlat7.w;
      x_3413 = x_3417;
    } else {
      let x_3420 : f32 = u_xlat7.x;
      x_3413 = x_3420;
    }
    let x_3421 : f32 = x_3413;
    u_xlat58 = x_3421;
    let x_3423 : bool = u_xlatb32.x;
    if (x_3423) {
      let x_3427 : vec4<f32> = u_xlat7;
      x_3424 = vec3<f32>(x_3427.x, x_3427.y, x_3427.z);
    } else {
      let x_3430 : f32 = u_xlat58;
      x_3424 = vec3<f32>(x_3430, x_3430, x_3430);
    }
    let x_3432 : vec3<f32> = x_3424;
    u_xlat32 = x_3432;
  } else {
    u_xlat32.x = 1.0f;
    u_xlat32.y = 1.0f;
    u_xlat32.z = 1.0f;
  }
  let x_3437 : vec3<f32> = u_xlat32;
  let x_3439 : vec4<f32> = x_147.x_MainLightColor;
  u_xlat32 = (x_3437 * vec3<f32>(x_3439.x, x_3439.y, x_3439.z));
  let x_3442 : vec3<f32> = u_xlat5;
  let x_3444 : vec3<f32> = u_xlat26;
  u_xlat7.x = dot(-(x_3442), x_3444);
  let x_3448 : f32 = u_xlat7.x;
  let x_3450 : f32 = u_xlat7.x;
  u_xlat7.x = (x_3448 + x_3450);
  let x_3453 : vec3<f32> = u_xlat26;
  let x_3454 : vec4<f32> = u_xlat7;
  let x_3458 : vec3<f32> = u_xlat5;
  let x_3460 : vec3<f32> = ((x_3453 * -(vec3<f32>(x_3454.x, x_3454.x, x_3454.x))) + -(x_3458));
  let x_3461 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3460.x, x_3460.y, x_3460.z, x_3461.w);
  let x_3464 : vec3<f32> = u_xlat26;
  let x_3465 : vec3<f32> = u_xlat5;
  u_xlat85 = dot(x_3464, x_3465);
  let x_3467 : f32 = u_xlat85;
  u_xlat85 = clamp(x_3467, 0.0f, 1.0f);
  let x_3469 : f32 = u_xlat85;
  u_xlat85 = (-(x_3469) + 1.0f);
  let x_3472 : f32 = u_xlat85;
  let x_3473 : f32 = u_xlat85;
  u_xlat85 = (x_3472 * x_3473);
  let x_3475 : f32 = u_xlat85;
  let x_3476 : f32 = u_xlat85;
  u_xlat85 = (x_3475 * x_3476);
  let x_3479 : f32 = u_xlat54.x;
  u_xlat8.x = ((-(x_3479) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_3487 : f32 = u_xlat54.x;
  let x_3489 : f32 = u_xlat8.x;
  u_xlat54.x = (x_3487 * x_3489);
  let x_3493 : f32 = u_xlat54.x;
  u_xlat54.x = (x_3493 * 6.0f);
  let x_3505 : vec4<f32> = u_xlat7;
  let x_3508 : f32 = u_xlat54.x;
  let x_3509 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_3505.x, x_3505.y, x_3505.z), x_3508);
  u_xlat8 = x_3509;
  let x_3511 : f32 = u_xlat8.w;
  u_xlat54.x = (x_3511 + -1.0f);
  let x_3515 : f32 = x_83.unity_SpecCube0_HDR.w;
  let x_3517 : f32 = u_xlat54.x;
  u_xlat54.x = ((x_3515 * x_3517) + 1.0f);
  let x_3522 : f32 = u_xlat54.x;
  u_xlat54.x = max(x_3522, 0.0f);
  let x_3526 : f32 = u_xlat54.x;
  u_xlat54.x = log2(x_3526);
  let x_3530 : f32 = u_xlat54.x;
  let x_3532 : f32 = x_83.unity_SpecCube0_HDR.y;
  u_xlat54.x = (x_3530 * x_3532);
  let x_3536 : f32 = u_xlat54.x;
  u_xlat54.x = exp2(x_3536);
  let x_3540 : f32 = u_xlat54.x;
  let x_3542 : f32 = x_83.unity_SpecCube0_HDR.x;
  u_xlat54.x = (x_3540 * x_3542);
  let x_3545 : vec4<f32> = u_xlat8;
  let x_3547 : vec2<f32> = u_xlat54;
  let x_3549 : vec3<f32> = (vec3<f32>(x_3545.x, x_3545.y, x_3545.z) * vec3<f32>(x_3547.x, x_3547.x, x_3547.x));
  let x_3550 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3549.x, x_3549.y, x_3549.z, x_3550.w);
  let x_3552 : f32 = u_xlat80;
  let x_3554 : f32 = u_xlat80;
  u_xlat54 = ((vec2<f32>(x_3552, x_3552) * vec2<f32>(x_3554, x_3554)) + vec2<f32>(-1.0f, 1.0f));
  let x_3560 : f32 = u_xlat54.y;
  u_xlat80 = (1.0f / x_3560);
  let x_3562 : f32 = u_xlat82;
  u_xlat82 = (x_3562 + -0.03999999910593032837f);
  let x_3565 : f32 = u_xlat85;
  let x_3566 : f32 = u_xlat82;
  u_xlat82 = ((x_3565 * x_3566) + 0.03999999910593032837f);
  let x_3570 : f32 = u_xlat80;
  let x_3571 : f32 = u_xlat82;
  u_xlat80 = (x_3570 * x_3571);
  let x_3573 : f32 = u_xlat80;
  let x_3575 : vec4<f32> = u_xlat7;
  let x_3577 : vec3<f32> = (vec3<f32>(x_3573, x_3573, x_3573) * vec3<f32>(x_3575.x, x_3575.y, x_3575.z));
  let x_3578 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3577.x, x_3577.y, x_3577.z, x_3578.w);
  let x_3580 : vec4<f32> = u_xlat3;
  let x_3582 : vec3<f32> = u_xlat4;
  let x_3584 : vec4<f32> = u_xlat7;
  let x_3586 : vec3<f32> = ((vec3<f32>(x_3580.x, x_3580.y, x_3580.z) * x_3582) + vec3<f32>(x_3584.x, x_3584.y, x_3584.z));
  let x_3587 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_3586.x, x_3586.y, x_3586.z, x_3587.w);
  let x_3590 : f32 = u_xlat0.x;
  let x_3592 : f32 = x_83.unity_LightData.z;
  u_xlat0.x = (x_3590 * x_3592);
  let x_3595 : vec3<f32> = u_xlat26;
  let x_3597 : vec4<f32> = x_147.x_MainLightPosition;
  u_xlat80 = dot(x_3595, vec3<f32>(x_3597.x, x_3597.y, x_3597.z));
  let x_3600 : f32 = u_xlat80;
  u_xlat80 = clamp(x_3600, 0.0f, 1.0f);
  let x_3603 : f32 = u_xlat0.x;
  let x_3604 : f32 = u_xlat80;
  u_xlat0.x = (x_3603 * x_3604);
  let x_3607 : vec3<f32> = u_xlat0;
  let x_3609 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_3607.x, x_3607.x, x_3607.x) * x_3609);
  let x_3611 : vec3<f32> = u_xlat5;
  let x_3613 : vec4<f32> = x_147.x_MainLightPosition;
  let x_3615 : vec3<f32> = (x_3611 + vec3<f32>(x_3613.x, x_3613.y, x_3613.z));
  let x_3616 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3615.x, x_3615.y, x_3615.z, x_3616.w);
  let x_3618 : vec4<f32> = u_xlat7;
  let x_3620 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(vec3<f32>(x_3618.x, x_3618.y, x_3618.z), vec3<f32>(x_3620.x, x_3620.y, x_3620.z));
  let x_3625 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_3625, 1.17549435e-38f);
  let x_3629 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_3629);
  let x_3632 : vec3<f32> = u_xlat0;
  let x_3634 : vec4<f32> = u_xlat7;
  let x_3636 : vec3<f32> = (vec3<f32>(x_3632.x, x_3632.x, x_3632.x) * vec3<f32>(x_3634.x, x_3634.y, x_3634.z));
  let x_3637 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3636.x, x_3636.y, x_3636.z, x_3637.w);
  let x_3639 : vec3<f32> = u_xlat26;
  let x_3640 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_3639, vec3<f32>(x_3640.x, x_3640.y, x_3640.z));
  let x_3645 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_3645, 0.0f, 1.0f);
  let x_3649 : vec4<f32> = x_147.x_MainLightPosition;
  let x_3651 : vec4<f32> = u_xlat7;
  u_xlat80 = dot(vec3<f32>(x_3649.x, x_3649.y, x_3649.z), vec3<f32>(x_3651.x, x_3651.y, x_3651.z));
  let x_3654 : f32 = u_xlat80;
  u_xlat80 = clamp(x_3654, 0.0f, 1.0f);
  let x_3657 : f32 = u_xlat0.x;
  let x_3659 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3657 * x_3659);
  let x_3663 : f32 = u_xlat0.x;
  let x_3665 : f32 = u_xlat54.x;
  u_xlat0.x = ((x_3663 * x_3665) + 1.00001001358032226562f);
  let x_3670 : f32 = u_xlat80;
  let x_3671 : f32 = u_xlat80;
  u_xlat80 = (x_3670 * x_3671);
  let x_3674 : f32 = u_xlat0.x;
  let x_3676 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3674 * x_3676);
  let x_3679 : f32 = u_xlat80;
  u_xlat80 = max(x_3679, 0.10000000149011611938f);
  let x_3683 : f32 = u_xlat0.x;
  let x_3684 : f32 = u_xlat80;
  u_xlat0.x = (x_3683 * x_3684);
  let x_3687 : f32 = u_xlat83;
  let x_3689 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3687 * x_3689);
  let x_3692 : f32 = u_xlat81;
  let x_3694 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3692 / x_3694);
  let x_3697 : vec3<f32> = u_xlat0;
  let x_3701 : vec3<f32> = u_xlat4;
  let x_3702 : vec3<f32> = ((vec3<f32>(x_3697.x, x_3697.x, x_3697.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_3701);
  let x_3703 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3702.x, x_3702.y, x_3702.z, x_3703.w);
  let x_3705 : vec3<f32> = u_xlat32;
  let x_3706 : vec4<f32> = u_xlat7;
  u_xlat32 = (x_3705 * vec3<f32>(x_3706.x, x_3706.y, x_3706.z));
  let x_3711 : f32 = x_147.x_AdditionalLightsCount.x;
  let x_3713 : f32 = x_83.unity_LightData.y;
  u_xlat0.x = min(x_3711, x_3713);
  let x_3718 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_3718));
  let x_3722 : f32 = u_xlat2.x;
  let x_3725 : f32 = x_371.x_AdditionalShadowFadeParams.x;
  let x_3728 : f32 = x_371.x_AdditionalShadowFadeParams.y;
  u_xlat2.x = ((x_3722 * x_3725) + x_3728);
  let x_3732 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_3732, 0.0f, 1.0f);
  let x_3737 : f32 = x_3330.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3739 : f32 = x_3330.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3741 : f32 = x_3330.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3743 : f32 = x_3330.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3744 : vec4<f32> = vec4<f32>(x_3737, x_3739, x_3741, x_3743);
  let x_3750 : vec4<bool> = (vec4<f32>(x_3744.x, x_3744.y, x_3744.z, x_3744.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_3750.x, x_3750.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_3761 : u32 = u_xlatu_loop_1;
    let x_3762 : u32 = u_xlatu0;
    if ((x_3761 < x_3762)) {
    } else {
      break;
    }
    let x_3765 : u32 = u_xlatu_loop_1;
    u_xlatu82 = (x_3765 >> 2u);
    let x_3768 : u32 = u_xlatu_loop_1;
    u_xlati59 = bitcast<i32>((x_3768 & 3u));
    let x_3771 : u32 = u_xlatu82;
    let x_3774 : vec4<f32> = x_83.unity_LightIndices[bitcast<i32>(x_3771)];
    let x_3784 : i32 = u_xlati59;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_3789 : vec4<u32> = indexable[x_3784];
    u_xlat82 = dot(x_3774, bitcast<vec4<f32>>(x_3789));
    let x_3793 : f32 = u_xlat82;
    u_xlati82 = i32(x_3793);
    let x_3795 : vec3<f32> = vs_INTERP8;
    let x_3806 : i32 = u_xlati82;
    let x_3808 : vec4<f32> = x_3805.x_AdditionalLightsPosition[x_3806];
    let x_3811 : i32 = u_xlati82;
    let x_3813 : vec4<f32> = x_3805.x_AdditionalLightsPosition[x_3811];
    let x_3815 : vec3<f32> = ((-(x_3795) * vec3<f32>(x_3808.w, x_3808.w, x_3808.w)) + vec3<f32>(x_3813.x, x_3813.y, x_3813.z));
    let x_3816 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3815.x, x_3815.y, x_3815.z, x_3816.w);
    let x_3818 : vec4<f32> = u_xlat9;
    let x_3820 : vec4<f32> = u_xlat9;
    u_xlat59.x = dot(vec3<f32>(x_3818.x, x_3818.y, x_3818.z), vec3<f32>(x_3820.x, x_3820.y, x_3820.z));
    let x_3825 : f32 = u_xlat59.x;
    u_xlat59.x = max(x_3825, 0.00006103515625f);
    let x_3830 : f32 = u_xlat59.x;
    u_xlat85 = inverseSqrt(x_3830);
    let x_3832 : f32 = u_xlat85;
    let x_3834 : vec4<f32> = u_xlat9;
    let x_3836 : vec3<f32> = (vec3<f32>(x_3832, x_3832, x_3832) * vec3<f32>(x_3834.x, x_3834.y, x_3834.z));
    let x_3837 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3836.x, x_3836.y, x_3836.z, x_3837.w);
    let x_3841 : f32 = u_xlat59.x;
    u_xlat86 = (1.0f / x_3841);
    let x_3844 : f32 = u_xlat59.x;
    let x_3845 : i32 = u_xlati82;
    let x_3847 : f32 = x_3805.x_AdditionalLightsAttenuation[x_3845].x;
    u_xlat59.x = (x_3844 * x_3847);
    let x_3851 : f32 = u_xlat59.x;
    let x_3854 : f32 = u_xlat59.x;
    u_xlat59.x = ((-(x_3851) * x_3854) + 1.0f);
    let x_3859 : f32 = u_xlat59.x;
    u_xlat59.x = max(x_3859, 0.0f);
    let x_3863 : f32 = u_xlat59.x;
    let x_3865 : f32 = u_xlat59.x;
    u_xlat59.x = (x_3863 * x_3865);
    let x_3869 : f32 = u_xlat59.x;
    let x_3870 : f32 = u_xlat86;
    u_xlat59.x = (x_3869 * x_3870);
    let x_3873 : i32 = u_xlati82;
    let x_3875 : vec4<f32> = x_3805.x_AdditionalLightsSpotDir[x_3873];
    let x_3877 : vec4<f32> = u_xlat10;
    u_xlat86 = dot(vec3<f32>(x_3875.x, x_3875.y, x_3875.z), vec3<f32>(x_3877.x, x_3877.y, x_3877.z));
    let x_3880 : f32 = u_xlat86;
    let x_3881 : i32 = u_xlati82;
    let x_3883 : f32 = x_3805.x_AdditionalLightsAttenuation[x_3881].z;
    let x_3885 : i32 = u_xlati82;
    let x_3887 : f32 = x_3805.x_AdditionalLightsAttenuation[x_3885].w;
    u_xlat86 = ((x_3880 * x_3883) + x_3887);
    let x_3889 : f32 = u_xlat86;
    u_xlat86 = clamp(x_3889, 0.0f, 1.0f);
    let x_3891 : f32 = u_xlat86;
    let x_3892 : f32 = u_xlat86;
    u_xlat86 = (x_3891 * x_3892);
    let x_3895 : f32 = u_xlat59.x;
    let x_3896 : f32 = u_xlat86;
    u_xlat59.x = (x_3895 * x_3896);
    let x_3901 : i32 = u_xlati82;
    let x_3903 : f32 = x_371.x_AdditionalShadowParams[x_3901].w;
    u_xlati86 = i32(x_3903);
    let x_3906 : i32 = u_xlati86;
    u_xlatb87 = (x_3906 >= 0i);
    let x_3908 : bool = u_xlatb87;
    if (x_3908) {
      let x_3912 : i32 = u_xlati82;
      let x_3914 : f32 = x_371.x_AdditionalShadowParams[x_3912].z;
      u_xlatb87 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_3914, x_3914, x_3914, x_3914))));
      let x_3918 : bool = u_xlatb87;
      if (x_3918) {
        let x_3923 : vec4<f32> = u_xlat10;
        let x_3926 : vec4<f32> = u_xlat10;
        let x_3929 : vec4<bool> = (abs(vec4<f32>(x_3923.z, x_3923.z, x_3923.y, x_3923.z)) >= abs(vec4<f32>(x_3926.x, x_3926.y, x_3926.x, x_3926.x)));
        let x_3931 : vec3<bool> = vec3<bool>(x_3929.x, x_3929.y, x_3929.z);
        let x_3932 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3931.x, x_3931.y, x_3931.z, x_3932.w);
        let x_3935 : bool = u_xlatb11.y;
        let x_3937 : bool = u_xlatb11.x;
        u_xlatb87 = (x_3935 & x_3937);
        let x_3939 : vec4<f32> = u_xlat10;
        let x_3942 : vec4<bool> = (-(vec4<f32>(x_3939.z, x_3939.y, x_3939.z, x_3939.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_3943 : vec3<bool> = vec3<bool>(x_3942.x, x_3942.y, x_3942.w);
        let x_3944 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3943.x, x_3943.y, x_3944.z, x_3943.z);
        let x_3947 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_3947);
        let x_3952 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_3952);
        let x_3958 : bool = u_xlatb11.w;
        u_xlat88 = select(0.0f, 1.0f, x_3958);
        let x_3961 : bool = u_xlatb11.z;
        if (x_3961) {
          let x_3966 : f32 = u_xlat11.y;
          x_3962 = x_3966;
        } else {
          let x_3968 : f32 = u_xlat88;
          x_3962 = x_3968;
        }
        let x_3969 : f32 = x_3962;
        u_xlat88 = x_3969;
        let x_3971 : bool = u_xlatb87;
        if (x_3971) {
          let x_3976 : f32 = u_xlat11.x;
          x_3972 = x_3976;
        } else {
          let x_3978 : f32 = u_xlat88;
          x_3972 = x_3978;
        }
        let x_3979 : f32 = x_3972;
        u_xlat87 = x_3979;
        let x_3980 : i32 = u_xlati82;
        let x_3982 : f32 = x_371.x_AdditionalShadowParams[x_3980].w;
        u_xlat88 = trunc(x_3982);
        let x_3984 : f32 = u_xlat87;
        let x_3985 : f32 = u_xlat88;
        u_xlat87 = (x_3984 + x_3985);
        let x_3987 : f32 = u_xlat87;
        u_xlati86 = i32(x_3987);
      }
      let x_3989 : i32 = u_xlati86;
      u_xlati86 = (x_3989 << bitcast<u32>(2i));
      let x_3991 : vec3<f32> = vs_INTERP8;
      let x_3994 : i32 = u_xlati86;
      let x_3997 : i32 = u_xlati86;
      let x_4001 : vec4<f32> = x_371.x_AdditionalLightsWorldToShadow[((x_3994 + 1i) / 4i)][((x_3997 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_3991.y, x_3991.y, x_3991.y, x_3991.y) * x_4001);
      let x_4003 : i32 = u_xlati86;
      let x_4005 : i32 = u_xlati86;
      let x_4008 : vec4<f32> = x_371.x_AdditionalLightsWorldToShadow[(x_4003 / 4i)][(x_4005 % 4i)];
      let x_4009 : vec3<f32> = vs_INTERP8;
      let x_4012 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_4008 * vec4<f32>(x_4009.x, x_4009.x, x_4009.x, x_4009.x)) + x_4012);
      let x_4014 : i32 = u_xlati86;
      let x_4017 : i32 = u_xlati86;
      let x_4021 : vec4<f32> = x_371.x_AdditionalLightsWorldToShadow[((x_4014 + 2i) / 4i)][((x_4017 + 2i) % 4i)];
      let x_4022 : vec3<f32> = vs_INTERP8;
      let x_4025 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_4021 * vec4<f32>(x_4022.z, x_4022.z, x_4022.z, x_4022.z)) + x_4025);
      let x_4027 : vec4<f32> = u_xlat11;
      let x_4028 : i32 = u_xlati86;
      let x_4031 : i32 = u_xlati86;
      let x_4035 : vec4<f32> = x_371.x_AdditionalLightsWorldToShadow[((x_4028 + 3i) / 4i)][((x_4031 + 3i) % 4i)];
      u_xlat11 = (x_4027 + x_4035);
      let x_4037 : vec4<f32> = u_xlat11;
      let x_4039 : vec4<f32> = u_xlat11;
      let x_4041 : vec3<f32> = (vec3<f32>(x_4037.x, x_4037.y, x_4037.z) / vec3<f32>(x_4039.w, x_4039.w, x_4039.w));
      let x_4042 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4041.x, x_4041.y, x_4041.z, x_4042.w);
      let x_4045 : i32 = u_xlati82;
      let x_4047 : f32 = x_371.x_AdditionalShadowParams[x_4045].y;
      u_xlatb86 = (0.0f < x_4047);
      let x_4049 : bool = u_xlatb86;
      if (x_4049) {
        let x_4052 : i32 = u_xlati82;
        let x_4054 : f32 = x_371.x_AdditionalShadowParams[x_4052].y;
        u_xlatb86 = (1.0f == x_4054);
        let x_4056 : bool = u_xlatb86;
        if (x_4056) {
          let x_4059 : vec4<f32> = u_xlat11;
          let x_4063 : vec4<f32> = x_371.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_4059.x, x_4059.y, x_4059.x, x_4059.y) + x_4063);
          let x_4066 : vec4<f32> = u_xlat12;
          let x_4067 : vec2<f32> = vec2<f32>(x_4066.x, x_4066.y);
          let x_4069 : f32 = u_xlat11.z;
          txVec60 = vec3<f32>(x_4067.x, x_4067.y, x_4069);
          let x_4077 : vec3<f32> = txVec60;
          let x_4079 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4077.xy, x_4077.z);
          u_xlat13.x = x_4079;
          let x_4082 : vec4<f32> = u_xlat12;
          let x_4083 : vec2<f32> = vec2<f32>(x_4082.z, x_4082.w);
          let x_4085 : f32 = u_xlat11.z;
          txVec61 = vec3<f32>(x_4083.x, x_4083.y, x_4085);
          let x_4092 : vec3<f32> = txVec61;
          let x_4094 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4092.xy, x_4092.z);
          u_xlat13.y = x_4094;
          let x_4096 : vec4<f32> = u_xlat11;
          let x_4100 : vec4<f32> = x_371.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_4096.x, x_4096.y, x_4096.x, x_4096.y) + x_4100);
          let x_4103 : vec4<f32> = u_xlat12;
          let x_4104 : vec2<f32> = vec2<f32>(x_4103.x, x_4103.y);
          let x_4106 : f32 = u_xlat11.z;
          txVec62 = vec3<f32>(x_4104.x, x_4104.y, x_4106);
          let x_4113 : vec3<f32> = txVec62;
          let x_4115 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4113.xy, x_4113.z);
          u_xlat13.z = x_4115;
          let x_4118 : vec4<f32> = u_xlat12;
          let x_4119 : vec2<f32> = vec2<f32>(x_4118.z, x_4118.w);
          let x_4121 : f32 = u_xlat11.z;
          txVec63 = vec3<f32>(x_4119.x, x_4119.y, x_4121);
          let x_4128 : vec3<f32> = txVec63;
          let x_4130 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4128.xy, x_4128.z);
          u_xlat13.w = x_4130;
          let x_4132 : vec4<f32> = u_xlat13;
          u_xlat86 = dot(x_4132, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_4135 : i32 = u_xlati82;
          let x_4137 : f32 = x_371.x_AdditionalShadowParams[x_4135].y;
          u_xlatb87 = (2.0f == x_4137);
          let x_4139 : bool = u_xlatb87;
          if (x_4139) {
            let x_4142 : vec4<f32> = u_xlat11;
            let x_4146 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4149 : vec2<f32> = ((vec2<f32>(x_4142.x, x_4142.y) * vec2<f32>(x_4146.z, x_4146.w)) + vec2<f32>(0.5f, 0.5f));
            let x_4150 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4149.x, x_4149.y, x_4150.z, x_4150.w);
            let x_4152 : vec4<f32> = u_xlat12;
            let x_4154 : vec2<f32> = floor(vec2<f32>(x_4152.x, x_4152.y));
            let x_4155 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4154.x, x_4154.y, x_4155.z, x_4155.w);
            let x_4158 : vec4<f32> = u_xlat11;
            let x_4161 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4164 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_4158.x, x_4158.y) * vec2<f32>(x_4161.z, x_4161.w)) + -(vec2<f32>(x_4164.x, x_4164.y)));
            let x_4168 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_4168.x, x_4168.x, x_4168.y, x_4168.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4171 : vec4<f32> = u_xlat13;
            let x_4173 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_4171.x, x_4171.x, x_4171.z, x_4171.z) * vec4<f32>(x_4173.x, x_4173.x, x_4173.z, x_4173.z));
            let x_4176 : vec4<f32> = u_xlat14;
            let x_4178 : vec2<f32> = (vec2<f32>(x_4176.y, x_4176.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_4179 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4178.x, x_4179.y, x_4178.y, x_4179.w);
            let x_4181 : vec4<f32> = u_xlat14;
            let x_4184 : vec2<f32> = u_xlat64;
            let x_4186 : vec2<f32> = ((vec2<f32>(x_4181.x, x_4181.z) * vec2<f32>(0.5f, 0.5f)) + -(x_4184));
            let x_4187 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4186.x, x_4186.y, x_4187.z, x_4187.w);
            let x_4190 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_4190) + vec2<f32>(1.0f, 1.0f));
            let x_4193 : vec2<f32> = u_xlat64;
            let x_4194 : vec2<f32> = min(x_4193, vec2<f32>(0.0f, 0.0f));
            let x_4195 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4194.x, x_4194.y, x_4195.z, x_4195.w);
            let x_4197 : vec4<f32> = u_xlat15;
            let x_4200 : vec4<f32> = u_xlat15;
            let x_4203 : vec2<f32> = u_xlat66;
            let x_4204 : vec2<f32> = ((-(vec2<f32>(x_4197.x, x_4197.y)) * vec2<f32>(x_4200.x, x_4200.y)) + x_4203);
            let x_4205 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4204.x, x_4204.y, x_4205.z, x_4205.w);
            let x_4207 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_4207, vec2<f32>(0.0f, 0.0f));
            let x_4209 : vec2<f32> = u_xlat64;
            let x_4211 : vec2<f32> = u_xlat64;
            let x_4213 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_4209) * x_4211) + vec2<f32>(x_4213.y, x_4213.w));
            let x_4216 : vec4<f32> = u_xlat15;
            let x_4218 : vec2<f32> = (vec2<f32>(x_4216.x, x_4216.y) + vec2<f32>(1.0f, 1.0f));
            let x_4219 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4218.x, x_4218.y, x_4219.z, x_4219.w);
            let x_4221 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_4221 + vec2<f32>(1.0f, 1.0f));
            let x_4223 : vec4<f32> = u_xlat14;
            let x_4225 : vec2<f32> = (vec2<f32>(x_4223.x, x_4223.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4226 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4225.x, x_4225.y, x_4226.z, x_4226.w);
            let x_4228 : vec2<f32> = u_xlat66;
            let x_4229 : vec2<f32> = (x_4228 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4230 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4229.x, x_4229.y, x_4230.z, x_4230.w);
            let x_4232 : vec4<f32> = u_xlat15;
            let x_4234 : vec2<f32> = (vec2<f32>(x_4232.x, x_4232.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4235 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4234.x, x_4234.y, x_4235.z, x_4235.w);
            let x_4237 : vec2<f32> = u_xlat64;
            let x_4238 : vec2<f32> = (x_4237 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4239 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4238.x, x_4238.y, x_4239.z, x_4239.w);
            let x_4241 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_4241.y, x_4241.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4245 : f32 = u_xlat15.x;
            u_xlat16.z = x_4245;
            let x_4248 : f32 = u_xlat64.x;
            u_xlat16.w = x_4248;
            let x_4251 : f32 = u_xlat17.x;
            u_xlat14.z = x_4251;
            let x_4254 : f32 = u_xlat13.x;
            u_xlat14.w = x_4254;
            let x_4256 : vec4<f32> = u_xlat14;
            let x_4258 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_4256.z, x_4256.w, x_4256.x, x_4256.z) + vec4<f32>(x_4258.z, x_4258.w, x_4258.x, x_4258.z));
            let x_4262 : f32 = u_xlat16.y;
            u_xlat15.z = x_4262;
            let x_4265 : f32 = u_xlat64.y;
            u_xlat15.w = x_4265;
            let x_4268 : f32 = u_xlat14.y;
            u_xlat17.z = x_4268;
            let x_4271 : f32 = u_xlat13.z;
            u_xlat17.w = x_4271;
            let x_4273 : vec4<f32> = u_xlat15;
            let x_4275 : vec4<f32> = u_xlat17;
            let x_4277 : vec3<f32> = (vec3<f32>(x_4273.z, x_4273.y, x_4273.w) + vec3<f32>(x_4275.z, x_4275.y, x_4275.w));
            let x_4278 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4277.x, x_4277.y, x_4277.z, x_4278.w);
            let x_4280 : vec4<f32> = u_xlat14;
            let x_4282 : vec4<f32> = u_xlat18;
            let x_4284 : vec3<f32> = (vec3<f32>(x_4280.x, x_4280.z, x_4280.w) / vec3<f32>(x_4282.z, x_4282.w, x_4282.y));
            let x_4285 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4284.x, x_4284.y, x_4284.z, x_4285.w);
            let x_4287 : vec4<f32> = u_xlat14;
            let x_4289 : vec3<f32> = (vec3<f32>(x_4287.x, x_4287.y, x_4287.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4290 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4289.x, x_4289.y, x_4289.z, x_4290.w);
            let x_4292 : vec4<f32> = u_xlat17;
            let x_4294 : vec4<f32> = u_xlat13;
            let x_4296 : vec3<f32> = (vec3<f32>(x_4292.z, x_4292.y, x_4292.w) / vec3<f32>(x_4294.x, x_4294.y, x_4294.z));
            let x_4297 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4296.x, x_4296.y, x_4296.z, x_4297.w);
            let x_4299 : vec4<f32> = u_xlat15;
            let x_4301 : vec3<f32> = (vec3<f32>(x_4299.x, x_4299.y, x_4299.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4302 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4301.x, x_4301.y, x_4301.z, x_4302.w);
            let x_4304 : vec4<f32> = u_xlat14;
            let x_4307 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4309 : vec3<f32> = (vec3<f32>(x_4304.y, x_4304.x, x_4304.z) * vec3<f32>(x_4307.x, x_4307.x, x_4307.x));
            let x_4310 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4309.x, x_4309.y, x_4309.z, x_4310.w);
            let x_4312 : vec4<f32> = u_xlat15;
            let x_4315 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4317 : vec3<f32> = (vec3<f32>(x_4312.x, x_4312.y, x_4312.z) * vec3<f32>(x_4315.y, x_4315.y, x_4315.y));
            let x_4318 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4317.x, x_4317.y, x_4317.z, x_4318.w);
            let x_4321 : f32 = u_xlat15.x;
            u_xlat14.w = x_4321;
            let x_4323 : vec4<f32> = u_xlat12;
            let x_4326 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4329 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_4323.x, x_4323.y, x_4323.x, x_4323.y) * vec4<f32>(x_4326.x, x_4326.y, x_4326.x, x_4326.y)) + vec4<f32>(x_4329.y, x_4329.w, x_4329.x, x_4329.w));
            let x_4332 : vec4<f32> = u_xlat12;
            let x_4335 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4338 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_4332.x, x_4332.y) * vec2<f32>(x_4335.x, x_4335.y)) + vec2<f32>(x_4338.z, x_4338.w));
            let x_4342 : f32 = u_xlat14.y;
            u_xlat15.w = x_4342;
            let x_4344 : vec4<f32> = u_xlat15;
            let x_4345 : vec2<f32> = vec2<f32>(x_4344.y, x_4344.z);
            let x_4346 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4346.x, x_4345.x, x_4346.z, x_4345.y);
            let x_4348 : vec4<f32> = u_xlat12;
            let x_4351 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4354 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_4348.x, x_4348.y, x_4348.x, x_4348.y) * vec4<f32>(x_4351.x, x_4351.y, x_4351.x, x_4351.y)) + vec4<f32>(x_4354.x, x_4354.y, x_4354.z, x_4354.y));
            let x_4357 : vec4<f32> = u_xlat12;
            let x_4360 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4363 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_4357.x, x_4357.y, x_4357.x, x_4357.y) * vec4<f32>(x_4360.x, x_4360.y, x_4360.x, x_4360.y)) + vec4<f32>(x_4363.w, x_4363.y, x_4363.w, x_4363.z));
            let x_4366 : vec4<f32> = u_xlat12;
            let x_4369 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4372 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_4366.x, x_4366.y, x_4366.x, x_4366.y) * vec4<f32>(x_4369.x, x_4369.y, x_4369.x, x_4369.y)) + vec4<f32>(x_4372.x, x_4372.w, x_4372.z, x_4372.w));
            let x_4375 : vec4<f32> = u_xlat13;
            let x_4377 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_4375.x, x_4375.x, x_4375.x, x_4375.y) * vec4<f32>(x_4377.z, x_4377.w, x_4377.y, x_4377.z));
            let x_4380 : vec4<f32> = u_xlat13;
            let x_4382 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_4380.y, x_4380.y, x_4380.z, x_4380.z) * x_4382);
            let x_4385 : f32 = u_xlat13.z;
            let x_4387 : f32 = u_xlat18.y;
            u_xlat87 = (x_4385 * x_4387);
            let x_4390 : vec4<f32> = u_xlat16;
            let x_4391 : vec2<f32> = vec2<f32>(x_4390.x, x_4390.y);
            let x_4393 : f32 = u_xlat11.z;
            txVec64 = vec3<f32>(x_4391.x, x_4391.y, x_4393);
            let x_4400 : vec3<f32> = txVec64;
            let x_4402 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4400.xy, x_4400.z);
            u_xlat88 = x_4402;
            let x_4404 : vec4<f32> = u_xlat16;
            let x_4405 : vec2<f32> = vec2<f32>(x_4404.z, x_4404.w);
            let x_4407 : f32 = u_xlat11.z;
            txVec65 = vec3<f32>(x_4405.x, x_4405.y, x_4407);
            let x_4415 : vec3<f32> = txVec65;
            let x_4417 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4415.xy, x_4415.z);
            u_xlat89 = x_4417;
            let x_4418 : f32 = u_xlat89;
            let x_4420 : f32 = u_xlat19.y;
            u_xlat89 = (x_4418 * x_4420);
            let x_4423 : f32 = u_xlat19.x;
            let x_4424 : f32 = u_xlat88;
            let x_4426 : f32 = u_xlat89;
            u_xlat88 = ((x_4423 * x_4424) + x_4426);
            let x_4429 : vec2<f32> = u_xlat64;
            let x_4431 : f32 = u_xlat11.z;
            txVec66 = vec3<f32>(x_4429.x, x_4429.y, x_4431);
            let x_4438 : vec3<f32> = txVec66;
            let x_4440 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4438.xy, x_4438.z);
            u_xlat89 = x_4440;
            let x_4442 : f32 = u_xlat19.z;
            let x_4443 : f32 = u_xlat89;
            let x_4445 : f32 = u_xlat88;
            u_xlat88 = ((x_4442 * x_4443) + x_4445);
            let x_4448 : vec4<f32> = u_xlat15;
            let x_4449 : vec2<f32> = vec2<f32>(x_4448.x, x_4448.y);
            let x_4451 : f32 = u_xlat11.z;
            txVec67 = vec3<f32>(x_4449.x, x_4449.y, x_4451);
            let x_4458 : vec3<f32> = txVec67;
            let x_4460 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4458.xy, x_4458.z);
            u_xlat89 = x_4460;
            let x_4462 : f32 = u_xlat19.w;
            let x_4463 : f32 = u_xlat89;
            let x_4465 : f32 = u_xlat88;
            u_xlat88 = ((x_4462 * x_4463) + x_4465);
            let x_4468 : vec4<f32> = u_xlat17;
            let x_4469 : vec2<f32> = vec2<f32>(x_4468.x, x_4468.y);
            let x_4471 : f32 = u_xlat11.z;
            txVec68 = vec3<f32>(x_4469.x, x_4469.y, x_4471);
            let x_4478 : vec3<f32> = txVec68;
            let x_4480 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4478.xy, x_4478.z);
            u_xlat89 = x_4480;
            let x_4482 : f32 = u_xlat20.x;
            let x_4483 : f32 = u_xlat89;
            let x_4485 : f32 = u_xlat88;
            u_xlat88 = ((x_4482 * x_4483) + x_4485);
            let x_4488 : vec4<f32> = u_xlat17;
            let x_4489 : vec2<f32> = vec2<f32>(x_4488.z, x_4488.w);
            let x_4491 : f32 = u_xlat11.z;
            txVec69 = vec3<f32>(x_4489.x, x_4489.y, x_4491);
            let x_4498 : vec3<f32> = txVec69;
            let x_4500 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4498.xy, x_4498.z);
            u_xlat89 = x_4500;
            let x_4502 : f32 = u_xlat20.y;
            let x_4503 : f32 = u_xlat89;
            let x_4505 : f32 = u_xlat88;
            u_xlat88 = ((x_4502 * x_4503) + x_4505);
            let x_4508 : vec4<f32> = u_xlat15;
            let x_4509 : vec2<f32> = vec2<f32>(x_4508.z, x_4508.w);
            let x_4511 : f32 = u_xlat11.z;
            txVec70 = vec3<f32>(x_4509.x, x_4509.y, x_4511);
            let x_4518 : vec3<f32> = txVec70;
            let x_4520 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4518.xy, x_4518.z);
            u_xlat89 = x_4520;
            let x_4522 : f32 = u_xlat20.z;
            let x_4523 : f32 = u_xlat89;
            let x_4525 : f32 = u_xlat88;
            u_xlat88 = ((x_4522 * x_4523) + x_4525);
            let x_4528 : vec4<f32> = u_xlat14;
            let x_4529 : vec2<f32> = vec2<f32>(x_4528.x, x_4528.y);
            let x_4531 : f32 = u_xlat11.z;
            txVec71 = vec3<f32>(x_4529.x, x_4529.y, x_4531);
            let x_4538 : vec3<f32> = txVec71;
            let x_4540 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4538.xy, x_4538.z);
            u_xlat89 = x_4540;
            let x_4542 : f32 = u_xlat20.w;
            let x_4543 : f32 = u_xlat89;
            let x_4545 : f32 = u_xlat88;
            u_xlat88 = ((x_4542 * x_4543) + x_4545);
            let x_4548 : vec4<f32> = u_xlat14;
            let x_4549 : vec2<f32> = vec2<f32>(x_4548.z, x_4548.w);
            let x_4551 : f32 = u_xlat11.z;
            txVec72 = vec3<f32>(x_4549.x, x_4549.y, x_4551);
            let x_4558 : vec3<f32> = txVec72;
            let x_4560 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4558.xy, x_4558.z);
            u_xlat89 = x_4560;
            let x_4561 : f32 = u_xlat87;
            let x_4562 : f32 = u_xlat89;
            let x_4564 : f32 = u_xlat88;
            u_xlat86 = ((x_4561 * x_4562) + x_4564);
          } else {
            let x_4567 : vec4<f32> = u_xlat11;
            let x_4570 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4573 : vec2<f32> = ((vec2<f32>(x_4567.x, x_4567.y) * vec2<f32>(x_4570.z, x_4570.w)) + vec2<f32>(0.5f, 0.5f));
            let x_4574 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4573.x, x_4573.y, x_4574.z, x_4574.w);
            let x_4576 : vec4<f32> = u_xlat12;
            let x_4578 : vec2<f32> = floor(vec2<f32>(x_4576.x, x_4576.y));
            let x_4579 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4578.x, x_4578.y, x_4579.z, x_4579.w);
            let x_4581 : vec4<f32> = u_xlat11;
            let x_4584 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4587 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_4581.x, x_4581.y) * vec2<f32>(x_4584.z, x_4584.w)) + -(vec2<f32>(x_4587.x, x_4587.y)));
            let x_4591 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_4591.x, x_4591.x, x_4591.y, x_4591.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4594 : vec4<f32> = u_xlat13;
            let x_4596 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_4594.x, x_4594.x, x_4594.z, x_4594.z) * vec4<f32>(x_4596.x, x_4596.x, x_4596.z, x_4596.z));
            let x_4599 : vec4<f32> = u_xlat14;
            let x_4601 : vec2<f32> = (vec2<f32>(x_4599.y, x_4599.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_4602 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4602.x, x_4601.x, x_4602.z, x_4601.y);
            let x_4604 : vec4<f32> = u_xlat14;
            let x_4607 : vec2<f32> = u_xlat64;
            let x_4609 : vec2<f32> = ((vec2<f32>(x_4604.x, x_4604.z) * vec2<f32>(0.5f, 0.5f)) + -(x_4607));
            let x_4610 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4609.x, x_4610.y, x_4609.y, x_4610.w);
            let x_4612 : vec2<f32> = u_xlat64;
            let x_4614 : vec2<f32> = (-(x_4612) + vec2<f32>(1.0f, 1.0f));
            let x_4615 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4614.x, x_4614.y, x_4615.z, x_4615.w);
            let x_4617 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_4617, vec2<f32>(0.0f, 0.0f));
            let x_4619 : vec2<f32> = u_xlat66;
            let x_4621 : vec2<f32> = u_xlat66;
            let x_4623 : vec4<f32> = u_xlat14;
            let x_4625 : vec2<f32> = ((-(x_4619) * x_4621) + vec2<f32>(x_4623.x, x_4623.y));
            let x_4626 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4625.x, x_4625.y, x_4626.z, x_4626.w);
            let x_4628 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_4628, vec2<f32>(0.0f, 0.0f));
            let x_4631 : vec2<f32> = u_xlat66;
            let x_4633 : vec2<f32> = u_xlat66;
            let x_4635 : vec4<f32> = u_xlat13;
            let x_4637 : vec2<f32> = ((-(x_4631) * x_4633) + vec2<f32>(x_4635.y, x_4635.w));
            let x_4638 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_4637.x, x_4638.y, x_4637.y);
            let x_4640 : vec4<f32> = u_xlat14;
            let x_4642 : vec2<f32> = (vec2<f32>(x_4640.x, x_4640.y) + vec2<f32>(2.0f, 2.0f));
            let x_4643 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4642.x, x_4642.y, x_4643.z, x_4643.w);
            let x_4645 : vec3<f32> = u_xlat39;
            let x_4647 : vec2<f32> = (vec2<f32>(x_4645.x, x_4645.z) + vec2<f32>(2.0f, 2.0f));
            let x_4648 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4648.x, x_4647.x, x_4648.z, x_4647.y);
            let x_4651 : f32 = u_xlat13.y;
            u_xlat16.z = (x_4651 * 0.08163200318813323975f);
            let x_4654 : vec4<f32> = u_xlat13;
            let x_4656 : vec3<f32> = (vec3<f32>(x_4654.z, x_4654.x, x_4654.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_4657 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4656.x, x_4656.y, x_4656.z, x_4657.w);
            let x_4659 : vec4<f32> = u_xlat14;
            let x_4661 : vec2<f32> = (vec2<f32>(x_4659.x, x_4659.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_4662 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4661.x, x_4661.y, x_4662.z, x_4662.w);
            let x_4665 : f32 = u_xlat17.y;
            u_xlat16.x = x_4665;
            let x_4667 : vec2<f32> = u_xlat64;
            let x_4670 : vec2<f32> = ((vec2<f32>(x_4667.x, x_4667.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4671 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4671.x, x_4670.x, x_4671.z, x_4670.y);
            let x_4673 : vec2<f32> = u_xlat64;
            let x_4676 : vec2<f32> = ((vec2<f32>(x_4673.x, x_4673.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4677 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4676.x, x_4677.y, x_4676.y, x_4677.w);
            let x_4680 : f32 = u_xlat13.x;
            u_xlat14.y = x_4680;
            let x_4683 : f32 = u_xlat15.y;
            u_xlat14.w = x_4683;
            let x_4685 : vec4<f32> = u_xlat14;
            let x_4686 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_4685 + x_4686);
            let x_4688 : vec2<f32> = u_xlat64;
            let x_4691 : vec2<f32> = ((vec2<f32>(x_4688.y, x_4688.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4692 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4692.x, x_4691.x, x_4692.z, x_4691.y);
            let x_4694 : vec2<f32> = u_xlat64;
            let x_4697 : vec2<f32> = ((vec2<f32>(x_4694.y, x_4694.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4698 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4697.x, x_4698.y, x_4697.y, x_4698.w);
            let x_4701 : f32 = u_xlat13.y;
            u_xlat15.y = x_4701;
            let x_4703 : vec4<f32> = u_xlat15;
            let x_4704 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_4703 + x_4704);
            let x_4706 : vec4<f32> = u_xlat14;
            let x_4707 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_4706 / x_4707);
            let x_4709 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_4709 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4711 : vec4<f32> = u_xlat15;
            let x_4712 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_4711 / x_4712);
            let x_4714 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_4714 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4716 : vec4<f32> = u_xlat14;
            let x_4719 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_4716.w, x_4716.x, x_4716.y, x_4716.z) * vec4<f32>(x_4719.x, x_4719.x, x_4719.x, x_4719.x));
            let x_4722 : vec4<f32> = u_xlat15;
            let x_4725 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_4722.x, x_4722.w, x_4722.y, x_4722.z) * vec4<f32>(x_4725.y, x_4725.y, x_4725.y, x_4725.y));
            let x_4728 : vec4<f32> = u_xlat14;
            let x_4729 : vec3<f32> = vec3<f32>(x_4728.y, x_4728.z, x_4728.w);
            let x_4730 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4729.x, x_4730.y, x_4729.y, x_4729.z);
            let x_4733 : f32 = u_xlat15.x;
            u_xlat17.y = x_4733;
            let x_4735 : vec4<f32> = u_xlat12;
            let x_4738 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4741 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_4735.x, x_4735.y, x_4735.x, x_4735.y) * vec4<f32>(x_4738.x, x_4738.y, x_4738.x, x_4738.y)) + vec4<f32>(x_4741.x, x_4741.y, x_4741.z, x_4741.y));
            let x_4744 : vec4<f32> = u_xlat12;
            let x_4747 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4750 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_4744.x, x_4744.y) * vec2<f32>(x_4747.x, x_4747.y)) + vec2<f32>(x_4750.w, x_4750.y));
            let x_4754 : f32 = u_xlat17.y;
            u_xlat14.y = x_4754;
            let x_4757 : f32 = u_xlat15.z;
            u_xlat17.y = x_4757;
            let x_4759 : vec4<f32> = u_xlat12;
            let x_4762 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4765 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_4759.x, x_4759.y, x_4759.x, x_4759.y) * vec4<f32>(x_4762.x, x_4762.y, x_4762.x, x_4762.y)) + vec4<f32>(x_4765.x, x_4765.y, x_4765.z, x_4765.y));
            let x_4768 : vec4<f32> = u_xlat12;
            let x_4771 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4774 : vec4<f32> = u_xlat17;
            let x_4776 : vec2<f32> = ((vec2<f32>(x_4768.x, x_4768.y) * vec2<f32>(x_4771.x, x_4771.y)) + vec2<f32>(x_4774.w, x_4774.y));
            let x_4777 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_4776.x, x_4776.y, x_4777.z, x_4777.w);
            let x_4780 : f32 = u_xlat17.y;
            u_xlat14.z = x_4780;
            let x_4782 : vec4<f32> = u_xlat12;
            let x_4785 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4788 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_4782.x, x_4782.y, x_4782.x, x_4782.y) * vec4<f32>(x_4785.x, x_4785.y, x_4785.x, x_4785.y)) + vec4<f32>(x_4788.x, x_4788.y, x_4788.x, x_4788.z));
            let x_4792 : f32 = u_xlat15.w;
            u_xlat17.y = x_4792;
            let x_4795 : vec4<f32> = u_xlat12;
            let x_4798 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4801 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_4795.x, x_4795.y, x_4795.x, x_4795.y) * vec4<f32>(x_4798.x, x_4798.y, x_4798.x, x_4798.y)) + vec4<f32>(x_4801.x, x_4801.y, x_4801.z, x_4801.y));
            let x_4805 : vec4<f32> = u_xlat12;
            let x_4808 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4811 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_4805.x, x_4805.y) * vec2<f32>(x_4808.x, x_4808.y)) + vec2<f32>(x_4811.w, x_4811.y));
            let x_4815 : f32 = u_xlat17.y;
            u_xlat14.w = x_4815;
            let x_4818 : vec4<f32> = u_xlat12;
            let x_4821 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4824 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_4818.x, x_4818.y) * vec2<f32>(x_4821.x, x_4821.y)) + vec2<f32>(x_4824.x, x_4824.w));
            let x_4827 : vec4<f32> = u_xlat17;
            let x_4828 : vec3<f32> = vec3<f32>(x_4827.x, x_4827.z, x_4827.w);
            let x_4829 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4828.x, x_4829.y, x_4828.y, x_4828.z);
            let x_4831 : vec4<f32> = u_xlat12;
            let x_4834 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4837 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_4831.x, x_4831.y, x_4831.x, x_4831.y) * vec4<f32>(x_4834.x, x_4834.y, x_4834.x, x_4834.y)) + vec4<f32>(x_4837.x, x_4837.y, x_4837.z, x_4837.y));
            let x_4841 : vec4<f32> = u_xlat12;
            let x_4844 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4847 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_4841.x, x_4841.y) * vec2<f32>(x_4844.x, x_4844.y)) + vec2<f32>(x_4847.w, x_4847.y));
            let x_4851 : f32 = u_xlat14.x;
            u_xlat15.x = x_4851;
            let x_4853 : vec4<f32> = u_xlat12;
            let x_4856 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4859 : vec4<f32> = u_xlat15;
            let x_4861 : vec2<f32> = ((vec2<f32>(x_4853.x, x_4853.y) * vec2<f32>(x_4856.x, x_4856.y)) + vec2<f32>(x_4859.x, x_4859.y));
            let x_4862 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4861.x, x_4861.y, x_4862.z, x_4862.w);
            let x_4865 : vec4<f32> = u_xlat13;
            let x_4867 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_4865.x, x_4865.x, x_4865.x, x_4865.x) * x_4867);
            let x_4870 : vec4<f32> = u_xlat13;
            let x_4872 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_4870.y, x_4870.y, x_4870.y, x_4870.y) * x_4872);
            let x_4875 : vec4<f32> = u_xlat13;
            let x_4877 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_4875.z, x_4875.z, x_4875.z, x_4875.z) * x_4877);
            let x_4879 : vec4<f32> = u_xlat13;
            let x_4881 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_4879.w, x_4879.w, x_4879.w, x_4879.w) * x_4881);
            let x_4884 : vec4<f32> = u_xlat18;
            let x_4885 : vec2<f32> = vec2<f32>(x_4884.x, x_4884.y);
            let x_4887 : f32 = u_xlat11.z;
            txVec73 = vec3<f32>(x_4885.x, x_4885.y, x_4887);
            let x_4894 : vec3<f32> = txVec73;
            let x_4896 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4894.xy, x_4894.z);
            u_xlat87 = x_4896;
            let x_4898 : vec4<f32> = u_xlat18;
            let x_4899 : vec2<f32> = vec2<f32>(x_4898.z, x_4898.w);
            let x_4901 : f32 = u_xlat11.z;
            txVec74 = vec3<f32>(x_4899.x, x_4899.y, x_4901);
            let x_4908 : vec3<f32> = txVec74;
            let x_4910 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4908.xy, x_4908.z);
            u_xlat88 = x_4910;
            let x_4911 : f32 = u_xlat88;
            let x_4913 : f32 = u_xlat23.y;
            u_xlat88 = (x_4911 * x_4913);
            let x_4916 : f32 = u_xlat23.x;
            let x_4917 : f32 = u_xlat87;
            let x_4919 : f32 = u_xlat88;
            u_xlat87 = ((x_4916 * x_4917) + x_4919);
            let x_4922 : vec2<f32> = u_xlat64;
            let x_4924 : f32 = u_xlat11.z;
            txVec75 = vec3<f32>(x_4922.x, x_4922.y, x_4924);
            let x_4931 : vec3<f32> = txVec75;
            let x_4933 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4931.xy, x_4931.z);
            u_xlat88 = x_4933;
            let x_4935 : f32 = u_xlat23.z;
            let x_4936 : f32 = u_xlat88;
            let x_4938 : f32 = u_xlat87;
            u_xlat87 = ((x_4935 * x_4936) + x_4938);
            let x_4941 : vec4<f32> = u_xlat21;
            let x_4942 : vec2<f32> = vec2<f32>(x_4941.x, x_4941.y);
            let x_4944 : f32 = u_xlat11.z;
            txVec76 = vec3<f32>(x_4942.x, x_4942.y, x_4944);
            let x_4951 : vec3<f32> = txVec76;
            let x_4953 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4951.xy, x_4951.z);
            u_xlat88 = x_4953;
            let x_4955 : f32 = u_xlat23.w;
            let x_4956 : f32 = u_xlat88;
            let x_4958 : f32 = u_xlat87;
            u_xlat87 = ((x_4955 * x_4956) + x_4958);
            let x_4961 : vec4<f32> = u_xlat19;
            let x_4962 : vec2<f32> = vec2<f32>(x_4961.x, x_4961.y);
            let x_4964 : f32 = u_xlat11.z;
            txVec77 = vec3<f32>(x_4962.x, x_4962.y, x_4964);
            let x_4971 : vec3<f32> = txVec77;
            let x_4973 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4971.xy, x_4971.z);
            u_xlat88 = x_4973;
            let x_4975 : f32 = u_xlat24.x;
            let x_4976 : f32 = u_xlat88;
            let x_4978 : f32 = u_xlat87;
            u_xlat87 = ((x_4975 * x_4976) + x_4978);
            let x_4981 : vec4<f32> = u_xlat19;
            let x_4982 : vec2<f32> = vec2<f32>(x_4981.z, x_4981.w);
            let x_4984 : f32 = u_xlat11.z;
            txVec78 = vec3<f32>(x_4982.x, x_4982.y, x_4984);
            let x_4991 : vec3<f32> = txVec78;
            let x_4993 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4991.xy, x_4991.z);
            u_xlat88 = x_4993;
            let x_4995 : f32 = u_xlat24.y;
            let x_4996 : f32 = u_xlat88;
            let x_4998 : f32 = u_xlat87;
            u_xlat87 = ((x_4995 * x_4996) + x_4998);
            let x_5001 : vec4<f32> = u_xlat20;
            let x_5002 : vec2<f32> = vec2<f32>(x_5001.x, x_5001.y);
            let x_5004 : f32 = u_xlat11.z;
            txVec79 = vec3<f32>(x_5002.x, x_5002.y, x_5004);
            let x_5011 : vec3<f32> = txVec79;
            let x_5013 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5011.xy, x_5011.z);
            u_xlat88 = x_5013;
            let x_5015 : f32 = u_xlat24.z;
            let x_5016 : f32 = u_xlat88;
            let x_5018 : f32 = u_xlat87;
            u_xlat87 = ((x_5015 * x_5016) + x_5018);
            let x_5021 : vec4<f32> = u_xlat21;
            let x_5022 : vec2<f32> = vec2<f32>(x_5021.z, x_5021.w);
            let x_5024 : f32 = u_xlat11.z;
            txVec80 = vec3<f32>(x_5022.x, x_5022.y, x_5024);
            let x_5031 : vec3<f32> = txVec80;
            let x_5033 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5031.xy, x_5031.z);
            u_xlat88 = x_5033;
            let x_5035 : f32 = u_xlat24.w;
            let x_5036 : f32 = u_xlat88;
            let x_5038 : f32 = u_xlat87;
            u_xlat87 = ((x_5035 * x_5036) + x_5038);
            let x_5041 : vec4<f32> = u_xlat22;
            let x_5042 : vec2<f32> = vec2<f32>(x_5041.x, x_5041.y);
            let x_5044 : f32 = u_xlat11.z;
            txVec81 = vec3<f32>(x_5042.x, x_5042.y, x_5044);
            let x_5051 : vec3<f32> = txVec81;
            let x_5053 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5051.xy, x_5051.z);
            u_xlat88 = x_5053;
            let x_5055 : f32 = u_xlat25.x;
            let x_5056 : f32 = u_xlat88;
            let x_5058 : f32 = u_xlat87;
            u_xlat87 = ((x_5055 * x_5056) + x_5058);
            let x_5061 : vec4<f32> = u_xlat22;
            let x_5062 : vec2<f32> = vec2<f32>(x_5061.z, x_5061.w);
            let x_5064 : f32 = u_xlat11.z;
            txVec82 = vec3<f32>(x_5062.x, x_5062.y, x_5064);
            let x_5071 : vec3<f32> = txVec82;
            let x_5073 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5071.xy, x_5071.z);
            u_xlat88 = x_5073;
            let x_5075 : f32 = u_xlat25.y;
            let x_5076 : f32 = u_xlat88;
            let x_5078 : f32 = u_xlat87;
            u_xlat87 = ((x_5075 * x_5076) + x_5078);
            let x_5081 : vec2<f32> = u_xlat40;
            let x_5083 : f32 = u_xlat11.z;
            txVec83 = vec3<f32>(x_5081.x, x_5081.y, x_5083);
            let x_5090 : vec3<f32> = txVec83;
            let x_5092 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5090.xy, x_5090.z);
            u_xlat88 = x_5092;
            let x_5094 : f32 = u_xlat25.z;
            let x_5095 : f32 = u_xlat88;
            let x_5097 : f32 = u_xlat87;
            u_xlat87 = ((x_5094 * x_5095) + x_5097);
            let x_5100 : vec2<f32> = u_xlat72;
            let x_5102 : f32 = u_xlat11.z;
            txVec84 = vec3<f32>(x_5100.x, x_5100.y, x_5102);
            let x_5109 : vec3<f32> = txVec84;
            let x_5111 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5109.xy, x_5109.z);
            u_xlat88 = x_5111;
            let x_5113 : f32 = u_xlat25.w;
            let x_5114 : f32 = u_xlat88;
            let x_5116 : f32 = u_xlat87;
            u_xlat87 = ((x_5113 * x_5114) + x_5116);
            let x_5119 : vec4<f32> = u_xlat17;
            let x_5120 : vec2<f32> = vec2<f32>(x_5119.x, x_5119.y);
            let x_5122 : f32 = u_xlat11.z;
            txVec85 = vec3<f32>(x_5120.x, x_5120.y, x_5122);
            let x_5129 : vec3<f32> = txVec85;
            let x_5131 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5129.xy, x_5129.z);
            u_xlat88 = x_5131;
            let x_5133 : f32 = u_xlat13.x;
            let x_5134 : f32 = u_xlat88;
            let x_5136 : f32 = u_xlat87;
            u_xlat87 = ((x_5133 * x_5134) + x_5136);
            let x_5139 : vec4<f32> = u_xlat17;
            let x_5140 : vec2<f32> = vec2<f32>(x_5139.z, x_5139.w);
            let x_5142 : f32 = u_xlat11.z;
            txVec86 = vec3<f32>(x_5140.x, x_5140.y, x_5142);
            let x_5149 : vec3<f32> = txVec86;
            let x_5151 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5149.xy, x_5149.z);
            u_xlat88 = x_5151;
            let x_5153 : f32 = u_xlat13.y;
            let x_5154 : f32 = u_xlat88;
            let x_5156 : f32 = u_xlat87;
            u_xlat87 = ((x_5153 * x_5154) + x_5156);
            let x_5159 : vec2<f32> = u_xlat67;
            let x_5161 : f32 = u_xlat11.z;
            txVec87 = vec3<f32>(x_5159.x, x_5159.y, x_5161);
            let x_5168 : vec3<f32> = txVec87;
            let x_5170 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5168.xy, x_5168.z);
            u_xlat88 = x_5170;
            let x_5172 : f32 = u_xlat13.z;
            let x_5173 : f32 = u_xlat88;
            let x_5175 : f32 = u_xlat87;
            u_xlat87 = ((x_5172 * x_5173) + x_5175);
            let x_5178 : vec4<f32> = u_xlat12;
            let x_5179 : vec2<f32> = vec2<f32>(x_5178.x, x_5178.y);
            let x_5181 : f32 = u_xlat11.z;
            txVec88 = vec3<f32>(x_5179.x, x_5179.y, x_5181);
            let x_5188 : vec3<f32> = txVec88;
            let x_5190 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5188.xy, x_5188.z);
            u_xlat88 = x_5190;
            let x_5192 : f32 = u_xlat13.w;
            let x_5193 : f32 = u_xlat88;
            let x_5195 : f32 = u_xlat87;
            u_xlat86 = ((x_5192 * x_5193) + x_5195);
          }
        }
      } else {
        let x_5199 : vec4<f32> = u_xlat11;
        let x_5200 : vec2<f32> = vec2<f32>(x_5199.x, x_5199.y);
        let x_5202 : f32 = u_xlat11.z;
        txVec89 = vec3<f32>(x_5200.x, x_5200.y, x_5202);
        let x_5209 : vec3<f32> = txVec89;
        let x_5211 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5209.xy, x_5209.z);
        u_xlat86 = x_5211;
      }
      let x_5212 : i32 = u_xlati82;
      let x_5214 : f32 = x_371.x_AdditionalShadowParams[x_5212].x;
      u_xlat87 = (1.0f + -(x_5214));
      let x_5217 : f32 = u_xlat86;
      let x_5218 : i32 = u_xlati82;
      let x_5220 : f32 = x_371.x_AdditionalShadowParams[x_5218].x;
      let x_5222 : f32 = u_xlat87;
      u_xlat86 = ((x_5217 * x_5220) + x_5222);
      let x_5225 : f32 = u_xlat11.z;
      u_xlatb87 = (0.0f >= x_5225);
      let x_5229 : f32 = u_xlat11.z;
      u_xlatb88 = (x_5229 >= 1.0f);
      let x_5231 : bool = u_xlatb87;
      let x_5232 : bool = u_xlatb88;
      u_xlatb87 = (x_5231 | x_5232);
      let x_5234 : bool = u_xlatb87;
      let x_5235 : f32 = u_xlat86;
      u_xlat86 = select(x_5235, 1.0f, x_5234);
    } else {
      u_xlat86 = 1.0f;
    }
    let x_5238 : f32 = u_xlat86;
    u_xlat87 = (-(x_5238) + 1.0f);
    let x_5242 : f32 = u_xlat2.x;
    let x_5243 : f32 = u_xlat87;
    let x_5245 : f32 = u_xlat86;
    u_xlat86 = ((x_5242 * x_5243) + x_5245);
    let x_5248 : i32 = u_xlati82;
    u_xlati87 = (1i << bitcast<u32>((x_5248 & 31i)));
    let x_5252 : i32 = u_xlati87;
    let x_5255 : f32 = x_3330.x_AdditionalLightsCookieEnableBits;
    u_xlati87 = bitcast<i32>((bitcast<u32>(x_5252) & bitcast<u32>(x_5255)));
    let x_5259 : i32 = u_xlati87;
    if ((x_5259 != 0i)) {
      let x_5263 : i32 = u_xlati82;
      let x_5265 : f32 = x_3330.x_AdditionalLightsLightTypes[x_5263].el;
      u_xlati87 = i32(x_5265);
      let x_5268 : i32 = u_xlati87;
      u_xlati88 = select(1i, 0i, (x_5268 != 0i));
      let x_5272 : i32 = u_xlati82;
      u_xlati11 = (x_5272 << bitcast<u32>(2i));
      let x_5274 : i32 = u_xlati88;
      if ((x_5274 != 0i)) {
        let x_5279 : vec3<f32> = vs_INTERP8;
        let x_5281 : i32 = u_xlati11;
        let x_5284 : i32 = u_xlati11;
        let x_5288 : vec4<f32> = x_3330.x_AdditionalLightsWorldToLights[((x_5281 + 1i) / 4i)][((x_5284 + 1i) % 4i)];
        u_xlat37 = (vec3<f32>(x_5279.y, x_5279.y, x_5279.y) * vec3<f32>(x_5288.x, x_5288.y, x_5288.w));
        let x_5291 : i32 = u_xlati11;
        let x_5293 : i32 = u_xlati11;
        let x_5296 : vec4<f32> = x_3330.x_AdditionalLightsWorldToLights[(x_5291 / 4i)][(x_5293 % 4i)];
        let x_5298 : vec3<f32> = vs_INTERP8;
        let x_5301 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_5296.x, x_5296.y, x_5296.w) * vec3<f32>(x_5298.x, x_5298.x, x_5298.x)) + x_5301);
        let x_5303 : i32 = u_xlati11;
        let x_5306 : i32 = u_xlati11;
        let x_5310 : vec4<f32> = x_3330.x_AdditionalLightsWorldToLights[((x_5303 + 2i) / 4i)][((x_5306 + 2i) % 4i)];
        let x_5312 : vec3<f32> = vs_INTERP8;
        let x_5315 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_5310.x, x_5310.y, x_5310.w) * vec3<f32>(x_5312.z, x_5312.z, x_5312.z)) + x_5315);
        let x_5317 : vec3<f32> = u_xlat37;
        let x_5318 : i32 = u_xlati11;
        let x_5321 : i32 = u_xlati11;
        let x_5325 : vec4<f32> = x_3330.x_AdditionalLightsWorldToLights[((x_5318 + 3i) / 4i)][((x_5321 + 3i) % 4i)];
        u_xlat37 = (x_5317 + vec3<f32>(x_5325.x, x_5325.y, x_5325.w));
        let x_5328 : vec3<f32> = u_xlat37;
        let x_5330 : vec3<f32> = u_xlat37;
        let x_5332 : vec2<f32> = (vec2<f32>(x_5328.x, x_5328.y) / vec2<f32>(x_5330.z, x_5330.z));
        let x_5333 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_5332.x, x_5332.y, x_5333.z);
        let x_5335 : vec3<f32> = u_xlat37;
        let x_5338 : vec2<f32> = ((vec2<f32>(x_5335.x, x_5335.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_5339 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_5338.x, x_5338.y, x_5339.z);
        let x_5341 : vec3<f32> = u_xlat37;
        let x_5345 : vec2<f32> = clamp(vec2<f32>(x_5341.x, x_5341.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_5346 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_5345.x, x_5345.y, x_5346.z);
        let x_5348 : i32 = u_xlati82;
        let x_5350 : vec4<f32> = x_3330.x_AdditionalLightsCookieAtlasUVRects[x_5348];
        let x_5352 : vec3<f32> = u_xlat37;
        let x_5355 : i32 = u_xlati82;
        let x_5357 : vec4<f32> = x_3330.x_AdditionalLightsCookieAtlasUVRects[x_5355];
        let x_5359 : vec2<f32> = ((vec2<f32>(x_5350.x, x_5350.y) * vec2<f32>(x_5352.x, x_5352.y)) + vec2<f32>(x_5357.z, x_5357.w));
        let x_5360 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_5359.x, x_5359.y, x_5360.z);
      } else {
        let x_5363 : i32 = u_xlati87;
        u_xlatb87 = (x_5363 == 1i);
        let x_5365 : bool = u_xlatb87;
        u_xlati87 = select(0i, 1i, x_5365);
        let x_5367 : i32 = u_xlati87;
        if ((x_5367 != 0i)) {
          let x_5371 : vec3<f32> = vs_INTERP8;
          let x_5373 : i32 = u_xlati11;
          let x_5376 : i32 = u_xlati11;
          let x_5380 : vec4<f32> = x_3330.x_AdditionalLightsWorldToLights[((x_5373 + 1i) / 4i)][((x_5376 + 1i) % 4i)];
          let x_5382 : vec2<f32> = (vec2<f32>(x_5371.y, x_5371.y) * vec2<f32>(x_5380.x, x_5380.y));
          let x_5383 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5382.x, x_5382.y, x_5383.z, x_5383.w);
          let x_5385 : i32 = u_xlati11;
          let x_5387 : i32 = u_xlati11;
          let x_5390 : vec4<f32> = x_3330.x_AdditionalLightsWorldToLights[(x_5385 / 4i)][(x_5387 % 4i)];
          let x_5392 : vec3<f32> = vs_INTERP8;
          let x_5395 : vec4<f32> = u_xlat12;
          let x_5397 : vec2<f32> = ((vec2<f32>(x_5390.x, x_5390.y) * vec2<f32>(x_5392.x, x_5392.x)) + vec2<f32>(x_5395.x, x_5395.y));
          let x_5398 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5397.x, x_5397.y, x_5398.z, x_5398.w);
          let x_5400 : i32 = u_xlati11;
          let x_5403 : i32 = u_xlati11;
          let x_5407 : vec4<f32> = x_3330.x_AdditionalLightsWorldToLights[((x_5400 + 2i) / 4i)][((x_5403 + 2i) % 4i)];
          let x_5409 : vec3<f32> = vs_INTERP8;
          let x_5412 : vec4<f32> = u_xlat12;
          let x_5414 : vec2<f32> = ((vec2<f32>(x_5407.x, x_5407.y) * vec2<f32>(x_5409.z, x_5409.z)) + vec2<f32>(x_5412.x, x_5412.y));
          let x_5415 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5414.x, x_5414.y, x_5415.z, x_5415.w);
          let x_5417 : vec4<f32> = u_xlat12;
          let x_5419 : i32 = u_xlati11;
          let x_5422 : i32 = u_xlati11;
          let x_5426 : vec4<f32> = x_3330.x_AdditionalLightsWorldToLights[((x_5419 + 3i) / 4i)][((x_5422 + 3i) % 4i)];
          let x_5428 : vec2<f32> = (vec2<f32>(x_5417.x, x_5417.y) + vec2<f32>(x_5426.x, x_5426.y));
          let x_5429 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5428.x, x_5428.y, x_5429.z, x_5429.w);
          let x_5431 : vec4<f32> = u_xlat12;
          let x_5434 : vec2<f32> = ((vec2<f32>(x_5431.x, x_5431.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_5435 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5434.x, x_5434.y, x_5435.z, x_5435.w);
          let x_5437 : vec4<f32> = u_xlat12;
          let x_5439 : vec2<f32> = fract(vec2<f32>(x_5437.x, x_5437.y));
          let x_5440 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5439.x, x_5439.y, x_5440.z, x_5440.w);
          let x_5442 : i32 = u_xlati82;
          let x_5444 : vec4<f32> = x_3330.x_AdditionalLightsCookieAtlasUVRects[x_5442];
          let x_5446 : vec4<f32> = u_xlat12;
          let x_5449 : i32 = u_xlati82;
          let x_5451 : vec4<f32> = x_3330.x_AdditionalLightsCookieAtlasUVRects[x_5449];
          let x_5453 : vec2<f32> = ((vec2<f32>(x_5444.x, x_5444.y) * vec2<f32>(x_5446.x, x_5446.y)) + vec2<f32>(x_5451.z, x_5451.w));
          let x_5454 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_5453.x, x_5453.y, x_5454.z);
        } else {
          let x_5457 : vec3<f32> = vs_INTERP8;
          let x_5459 : i32 = u_xlati11;
          let x_5462 : i32 = u_xlati11;
          let x_5466 : vec4<f32> = x_3330.x_AdditionalLightsWorldToLights[((x_5459 + 1i) / 4i)][((x_5462 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_5457.y, x_5457.y, x_5457.y, x_5457.y) * x_5466);
          let x_5468 : i32 = u_xlati11;
          let x_5470 : i32 = u_xlati11;
          let x_5473 : vec4<f32> = x_3330.x_AdditionalLightsWorldToLights[(x_5468 / 4i)][(x_5470 % 4i)];
          let x_5474 : vec3<f32> = vs_INTERP8;
          let x_5477 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_5473 * vec4<f32>(x_5474.x, x_5474.x, x_5474.x, x_5474.x)) + x_5477);
          let x_5479 : i32 = u_xlati11;
          let x_5482 : i32 = u_xlati11;
          let x_5486 : vec4<f32> = x_3330.x_AdditionalLightsWorldToLights[((x_5479 + 2i) / 4i)][((x_5482 + 2i) % 4i)];
          let x_5487 : vec3<f32> = vs_INTERP8;
          let x_5490 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_5486 * vec4<f32>(x_5487.z, x_5487.z, x_5487.z, x_5487.z)) + x_5490);
          let x_5492 : vec4<f32> = u_xlat12;
          let x_5493 : i32 = u_xlati11;
          let x_5496 : i32 = u_xlati11;
          let x_5500 : vec4<f32> = x_3330.x_AdditionalLightsWorldToLights[((x_5493 + 3i) / 4i)][((x_5496 + 3i) % 4i)];
          u_xlat12 = (x_5492 + x_5500);
          let x_5502 : vec4<f32> = u_xlat12;
          let x_5504 : vec4<f32> = u_xlat12;
          let x_5506 : vec3<f32> = (vec3<f32>(x_5502.x, x_5502.y, x_5502.z) / vec3<f32>(x_5504.w, x_5504.w, x_5504.w));
          let x_5507 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5506.x, x_5506.y, x_5506.z, x_5507.w);
          let x_5509 : vec4<f32> = u_xlat12;
          let x_5511 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(vec3<f32>(x_5509.x, x_5509.y, x_5509.z), vec3<f32>(x_5511.x, x_5511.y, x_5511.z));
          let x_5514 : f32 = u_xlat87;
          u_xlat87 = inverseSqrt(x_5514);
          let x_5516 : f32 = u_xlat87;
          let x_5518 : vec4<f32> = u_xlat12;
          let x_5520 : vec3<f32> = (vec3<f32>(x_5516, x_5516, x_5516) * vec3<f32>(x_5518.x, x_5518.y, x_5518.z));
          let x_5521 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5520.x, x_5520.y, x_5520.z, x_5521.w);
          let x_5523 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(abs(vec3<f32>(x_5523.x, x_5523.y, x_5523.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_5528 : f32 = u_xlat87;
          u_xlat87 = max(x_5528, 0.00000099999999747524f);
          let x_5531 : f32 = u_xlat87;
          u_xlat87 = (1.0f / x_5531);
          let x_5533 : f32 = u_xlat87;
          let x_5535 : vec4<f32> = u_xlat12;
          let x_5537 : vec3<f32> = (vec3<f32>(x_5533, x_5533, x_5533) * vec3<f32>(x_5535.z, x_5535.x, x_5535.y));
          let x_5538 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_5537.x, x_5537.y, x_5537.z, x_5538.w);
          let x_5541 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_5541);
          let x_5545 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_5545, 0.0f, 1.0f);
          let x_5548 : vec4<f32> = u_xlat13;
          let x_5550 : vec4<bool> = (vec4<f32>(x_5548.y, x_5548.y, x_5548.y, x_5548.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_5551 : vec2<bool> = vec2<bool>(x_5550.x, x_5550.w);
          let x_5552 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_5551.x, x_5552.y, x_5552.z, x_5551.y);
          let x_5555 : bool = u_xlatb11.x;
          if (x_5555) {
            let x_5560 : f32 = u_xlat13.x;
            x_5556 = x_5560;
          } else {
            let x_5563 : f32 = u_xlat13.x;
            x_5556 = -(x_5563);
          }
          let x_5565 : f32 = x_5556;
          u_xlat11.x = x_5565;
          let x_5568 : bool = u_xlatb11.w;
          if (x_5568) {
            let x_5573 : f32 = u_xlat13.x;
            x_5569 = x_5573;
          } else {
            let x_5576 : f32 = u_xlat13.x;
            x_5569 = -(x_5576);
          }
          let x_5578 : f32 = x_5569;
          u_xlat11.w = x_5578;
          let x_5580 : vec4<f32> = u_xlat12;
          let x_5582 : f32 = u_xlat87;
          let x_5585 : vec4<f32> = u_xlat11;
          let x_5587 : vec2<f32> = ((vec2<f32>(x_5580.x, x_5580.y) * vec2<f32>(x_5582, x_5582)) + vec2<f32>(x_5585.x, x_5585.w));
          let x_5588 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_5587.x, x_5588.y, x_5588.z, x_5587.y);
          let x_5590 : vec4<f32> = u_xlat11;
          let x_5593 : vec2<f32> = ((vec2<f32>(x_5590.x, x_5590.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_5594 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_5593.x, x_5594.y, x_5594.z, x_5593.y);
          let x_5596 : vec4<f32> = u_xlat11;
          let x_5600 : vec2<f32> = clamp(vec2<f32>(x_5596.x, x_5596.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_5601 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_5600.x, x_5601.y, x_5601.z, x_5600.y);
          let x_5603 : i32 = u_xlati82;
          let x_5605 : vec4<f32> = x_3330.x_AdditionalLightsCookieAtlasUVRects[x_5603];
          let x_5607 : vec4<f32> = u_xlat11;
          let x_5610 : i32 = u_xlati82;
          let x_5612 : vec4<f32> = x_3330.x_AdditionalLightsCookieAtlasUVRects[x_5610];
          let x_5614 : vec2<f32> = ((vec2<f32>(x_5605.x, x_5605.y) * vec2<f32>(x_5607.x, x_5607.w)) + vec2<f32>(x_5612.z, x_5612.w));
          let x_5615 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_5614.x, x_5614.y, x_5615.z);
        }
      }
      let x_5622 : vec3<f32> = u_xlat37;
      let x_5624 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_5622.x, x_5622.y), 0.0f);
      u_xlat11 = x_5624;
      let x_5626 : bool = u_xlatb7.y;
      if (x_5626) {
        let x_5631 : f32 = u_xlat11.w;
        x_5627 = x_5631;
      } else {
        let x_5634 : f32 = u_xlat11.x;
        x_5627 = x_5634;
      }
      let x_5635 : f32 = x_5627;
      u_xlat87 = x_5635;
      let x_5637 : bool = u_xlatb7.x;
      if (x_5637) {
        let x_5641 : vec4<f32> = u_xlat11;
        x_5638 = vec3<f32>(x_5641.x, x_5641.y, x_5641.z);
      } else {
        let x_5644 : f32 = u_xlat87;
        x_5638 = vec3<f32>(x_5644, x_5644, x_5644);
      }
      let x_5646 : vec3<f32> = x_5638;
      let x_5647 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_5646.x, x_5646.y, x_5646.z, x_5647.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_5653 : vec4<f32> = u_xlat11;
    let x_5655 : i32 = u_xlati82;
    let x_5657 : vec4<f32> = x_3805.x_AdditionalLightsColor[x_5655];
    let x_5659 : vec3<f32> = (vec3<f32>(x_5653.x, x_5653.y, x_5653.z) * vec3<f32>(x_5657.x, x_5657.y, x_5657.z));
    let x_5660 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_5659.x, x_5659.y, x_5659.z, x_5660.w);
    let x_5663 : f32 = u_xlat59.x;
    let x_5664 : f32 = u_xlat86;
    u_xlat82 = (x_5663 * x_5664);
    let x_5666 : vec3<f32> = u_xlat26;
    let x_5667 : vec4<f32> = u_xlat10;
    u_xlat59.x = dot(x_5666, vec3<f32>(x_5667.x, x_5667.y, x_5667.z));
    let x_5672 : f32 = u_xlat59.x;
    u_xlat59.x = clamp(x_5672, 0.0f, 1.0f);
    let x_5675 : f32 = u_xlat82;
    let x_5677 : f32 = u_xlat59.x;
    u_xlat82 = (x_5675 * x_5677);
    let x_5679 : f32 = u_xlat82;
    let x_5681 : vec4<f32> = u_xlat11;
    let x_5683 : vec3<f32> = (vec3<f32>(x_5679, x_5679, x_5679) * vec3<f32>(x_5681.x, x_5681.y, x_5681.z));
    let x_5684 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_5683.x, x_5683.y, x_5683.z, x_5684.w);
    let x_5686 : vec4<f32> = u_xlat9;
    let x_5688 : f32 = u_xlat85;
    let x_5691 : vec3<f32> = u_xlat5;
    let x_5692 : vec3<f32> = ((vec3<f32>(x_5686.x, x_5686.y, x_5686.z) * vec3<f32>(x_5688, x_5688, x_5688)) + x_5691);
    let x_5693 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5692.x, x_5692.y, x_5692.z, x_5693.w);
    let x_5695 : vec4<f32> = u_xlat9;
    let x_5697 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_5695.x, x_5695.y, x_5695.z), vec3<f32>(x_5697.x, x_5697.y, x_5697.z));
    let x_5700 : f32 = u_xlat82;
    u_xlat82 = max(x_5700, 1.17549435e-38f);
    let x_5702 : f32 = u_xlat82;
    u_xlat82 = inverseSqrt(x_5702);
    let x_5704 : f32 = u_xlat82;
    let x_5706 : vec4<f32> = u_xlat9;
    let x_5708 : vec3<f32> = (vec3<f32>(x_5704, x_5704, x_5704) * vec3<f32>(x_5706.x, x_5706.y, x_5706.z));
    let x_5709 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5708.x, x_5708.y, x_5708.z, x_5709.w);
    let x_5711 : vec3<f32> = u_xlat26;
    let x_5712 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(x_5711, vec3<f32>(x_5712.x, x_5712.y, x_5712.z));
    let x_5715 : f32 = u_xlat82;
    u_xlat82 = clamp(x_5715, 0.0f, 1.0f);
    let x_5717 : vec4<f32> = u_xlat10;
    let x_5719 : vec4<f32> = u_xlat9;
    u_xlat59.x = dot(vec3<f32>(x_5717.x, x_5717.y, x_5717.z), vec3<f32>(x_5719.x, x_5719.y, x_5719.z));
    let x_5724 : f32 = u_xlat59.x;
    u_xlat59.x = clamp(x_5724, 0.0f, 1.0f);
    let x_5727 : f32 = u_xlat82;
    let x_5728 : f32 = u_xlat82;
    u_xlat82 = (x_5727 * x_5728);
    let x_5730 : f32 = u_xlat82;
    let x_5732 : f32 = u_xlat54.x;
    u_xlat82 = ((x_5730 * x_5732) + 1.00001001358032226562f);
    let x_5736 : f32 = u_xlat59.x;
    let x_5738 : f32 = u_xlat59.x;
    u_xlat59.x = (x_5736 * x_5738);
    let x_5741 : f32 = u_xlat82;
    let x_5742 : f32 = u_xlat82;
    u_xlat82 = (x_5741 * x_5742);
    let x_5745 : f32 = u_xlat59.x;
    u_xlat59.x = max(x_5745, 0.10000000149011611938f);
    let x_5748 : f32 = u_xlat82;
    let x_5750 : f32 = u_xlat59.x;
    u_xlat82 = (x_5748 * x_5750);
    let x_5752 : f32 = u_xlat83;
    let x_5753 : f32 = u_xlat82;
    u_xlat82 = (x_5752 * x_5753);
    let x_5755 : f32 = u_xlat81;
    let x_5756 : f32 = u_xlat82;
    u_xlat82 = (x_5755 / x_5756);
    let x_5758 : f32 = u_xlat82;
    let x_5761 : vec3<f32> = u_xlat4;
    let x_5762 : vec3<f32> = ((vec3<f32>(x_5758, x_5758, x_5758) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_5761);
    let x_5763 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5762.x, x_5762.y, x_5762.z, x_5763.w);
    let x_5765 : vec4<f32> = u_xlat9;
    let x_5767 : vec4<f32> = u_xlat11;
    let x_5770 : vec4<f32> = u_xlat8;
    let x_5772 : vec3<f32> = ((vec3<f32>(x_5765.x, x_5765.y, x_5765.z) * vec3<f32>(x_5767.x, x_5767.y, x_5767.z)) + vec3<f32>(x_5770.x, x_5770.y, x_5770.z));
    let x_5773 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_5772.x, x_5772.y, x_5772.z, x_5773.w);

    continuing {
      let x_5775 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_5775 + bitcast<u32>(1i));
    }
  }
  let x_5777 : vec4<f32> = u_xlat3;
  let x_5779 : vec4<f32> = u_xlat6;
  let x_5782 : vec3<f32> = u_xlat32;
  u_xlat0 = ((vec3<f32>(x_5777.x, x_5777.y, x_5777.z) * vec3<f32>(x_5779.x, x_5779.x, x_5779.x)) + x_5782);
  let x_5784 : vec4<f32> = u_xlat8;
  let x_5786 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_5784.x, x_5784.y, x_5784.z) + x_5786);
  let x_5790 : vec4<f32> = vs_INTERP6;
  let x_5792 : vec3<f32> = u_xlat1;
  let x_5794 : vec3<f32> = u_xlat0;
  let x_5795 : vec3<f32> = ((vec3<f32>(x_5790.w, x_5790.w, x_5790.w) * x_5792) + x_5794);
  let x_5796 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_5795.x, x_5795.y, x_5795.z, x_5796.w);
  let x_5798 : bool = u_xlatb28;
  let x_5799 : f32 = u_xlat79;
  SV_Target0.w = select(1.0f, x_5799, x_5798);
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


