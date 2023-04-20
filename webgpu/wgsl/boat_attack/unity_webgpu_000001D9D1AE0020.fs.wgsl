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

@group(0) @binding(5) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(11) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP5 : vec4<f32>;

var<private> u_xlat7 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_289 : UnityPerMaterial;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(6) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(12) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat34 : vec3<f32>;

var<private> vs_INTERP6 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_394 : LightShadows;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlatu0 : u32;

var<private> u_xlati0 : i32;

var<private> u_xlatb79 : bool;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

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

@group(1) @binding(4) var<uniform> x_3529 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu8 : u32;

var<private> u_xlati34 : i32;

var<private> u_xlati8 : i32;

@group(1) @binding(1) var<uniform> x_4015 : AdditionalLights;

var<private> u_xlat61 : f32;

var<private> u_xlati61 : i32;

var<private> u_xlatb87 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat88 : f32;

var<private> u_xlat87 : f32;

var<private> u_xlatb61 : bool;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_LinearClamp : sampler;

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
  var x_3475 : f32;
  var x_3611 : f32;
  var x_3622 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_4166 : f32;
  var x_4176 : f32;
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
  var x_5759 : f32;
  var x_5772 : f32;
  var x_5830 : f32;
  var x_5841 : vec3<f32>;
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
  let x_2127 : vec3<f32> = (x_2124 * vec3<f32>(x_2125.x, x_2125.x, x_2125.x));
  let x_2128 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2127.x, x_2127.y, x_2127.z, x_2128.w);
  u_xlat4.w = 1.0f;
  let x_2133 : vec4<f32> = x_83.unity_SHAr;
  let x_2134 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_2133, x_2134);
  let x_2139 : vec4<f32> = x_83.unity_SHAg;
  let x_2140 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_2139, x_2140);
  let x_2145 : vec4<f32> = x_83.unity_SHAb;
  let x_2146 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_2145, x_2146);
  let x_2149 : vec4<f32> = u_xlat4;
  let x_2151 : vec4<f32> = u_xlat4;
  u_xlat9 = (vec4<f32>(x_2149.y, x_2149.z, x_2149.z, x_2149.x) * vec4<f32>(x_2151.x, x_2151.y, x_2151.z, x_2151.z));
  let x_2156 : vec4<f32> = x_83.unity_SHBr;
  let x_2157 : vec4<f32> = u_xlat9;
  u_xlat10.x = dot(x_2156, x_2157);
  let x_2162 : vec4<f32> = x_83.unity_SHBg;
  let x_2163 : vec4<f32> = u_xlat9;
  u_xlat10.y = dot(x_2162, x_2163);
  let x_2167 : vec4<f32> = x_83.unity_SHBb;
  let x_2168 : vec4<f32> = u_xlat9;
  u_xlat10.z = dot(x_2167, x_2168);
  let x_2172 : f32 = u_xlat4.y;
  let x_2174 : f32 = u_xlat4.y;
  u_xlat26.x = (x_2172 * x_2174);
  let x_2178 : f32 = u_xlat4.x;
  let x_2180 : f32 = u_xlat4.x;
  let x_2183 : f32 = u_xlat26.x;
  u_xlat26.x = ((x_2178 * x_2180) + -(x_2183));
  let x_2189 : vec4<f32> = x_83.unity_SHC;
  let x_2191 : vec3<f32> = u_xlat26;
  let x_2194 : vec4<f32> = u_xlat10;
  u_xlat26 = ((vec3<f32>(x_2189.x, x_2189.y, x_2189.z) * vec3<f32>(x_2191.x, x_2191.x, x_2191.x)) + vec3<f32>(x_2194.x, x_2194.y, x_2194.z));
  let x_2197 : vec3<f32> = u_xlat26;
  let x_2198 : vec4<f32> = u_xlat6;
  u_xlat26 = (x_2197 + vec3<f32>(x_2198.x, x_2198.y, x_2198.z));
  let x_2201 : vec3<f32> = u_xlat26;
  u_xlat26 = max(x_2201, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_2204 : f32 = u_xlat8.x;
  u_xlat8.x = x_2204;
  let x_2207 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_2207, 0.0f, 1.0f);
  let x_2210 : f32 = u_xlat79;
  u_xlat79 = x_2210;
  let x_2211 : f32 = u_xlat79;
  u_xlat79 = clamp(x_2211, 0.0f, 1.0f);
  let x_2213 : vec3<f32> = u_xlat7;
  let x_2216 : vec3<f32> = (x_2213 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_2217 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2216.x, x_2216.y, x_2216.z, x_2217.w);
  let x_2220 : f32 = u_xlat8.x;
  u_xlat55.x = (-(x_2220) + 1.0f);
  let x_2225 : f32 = u_xlat55.x;
  let x_2227 : f32 = u_xlat55.x;
  u_xlat81 = (x_2225 * x_2227);
  let x_2229 : f32 = u_xlat81;
  u_xlat81 = max(x_2229, 0.0078125f);
  let x_2232 : f32 = u_xlat81;
  let x_2233 : f32 = u_xlat81;
  u_xlat82 = (x_2232 * x_2233);
  let x_2237 : f32 = u_xlat8.x;
  u_xlat83 = (x_2237 + 0.04000002145767211914f);
  let x_2240 : f32 = u_xlat83;
  u_xlat83 = min(x_2240, 1.0f);
  let x_2243 : f32 = u_xlat81;
  u_xlat84 = ((x_2243 * 4.0f) + 2.0f);
  let x_2247 : f32 = vs_INTERP6.w;
  u_xlat7.x = min(x_2247, 1.0f);
  let x_2250 : bool = u_xlatb0;
  if (x_2250) {
    let x_2254 : f32 = x_394.x_MainLightShadowParams.y;
    u_xlatb0 = (x_2254 == 1.0f);
    let x_2256 : bool = u_xlatb0;
    if (x_2256) {
      let x_2259 : vec4<f32> = u_xlat2;
      let x_2262 : vec4<f32> = x_394.x_MainLightShadowOffset0;
      u_xlat8 = (vec4<f32>(x_2259.x, x_2259.y, x_2259.x, x_2259.y) + x_2262);
      let x_2265 : vec4<f32> = u_xlat8;
      let x_2266 : vec2<f32> = vec2<f32>(x_2265.x, x_2265.y);
      let x_2268 : f32 = u_xlat2.z;
      txVec30 = vec3<f32>(x_2266.x, x_2266.y, x_2268);
      let x_2275 : vec3<f32> = txVec30;
      let x_2277 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2275.xy, x_2275.z);
      u_xlat9.x = x_2277;
      let x_2280 : vec4<f32> = u_xlat8;
      let x_2281 : vec2<f32> = vec2<f32>(x_2280.z, x_2280.w);
      let x_2283 : f32 = u_xlat2.z;
      txVec31 = vec3<f32>(x_2281.x, x_2281.y, x_2283);
      let x_2290 : vec3<f32> = txVec31;
      let x_2292 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2290.xy, x_2290.z);
      u_xlat9.y = x_2292;
      let x_2294 : vec4<f32> = u_xlat2;
      let x_2297 : vec4<f32> = x_394.x_MainLightShadowOffset1;
      u_xlat8 = (vec4<f32>(x_2294.x, x_2294.y, x_2294.x, x_2294.y) + x_2297);
      let x_2300 : vec4<f32> = u_xlat8;
      let x_2301 : vec2<f32> = vec2<f32>(x_2300.x, x_2300.y);
      let x_2303 : f32 = u_xlat2.z;
      txVec32 = vec3<f32>(x_2301.x, x_2301.y, x_2303);
      let x_2310 : vec3<f32> = txVec32;
      let x_2312 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2310.xy, x_2310.z);
      u_xlat9.z = x_2312;
      let x_2315 : vec4<f32> = u_xlat8;
      let x_2316 : vec2<f32> = vec2<f32>(x_2315.z, x_2315.w);
      let x_2318 : f32 = u_xlat2.z;
      txVec33 = vec3<f32>(x_2316.x, x_2316.y, x_2318);
      let x_2325 : vec3<f32> = txVec33;
      let x_2327 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2325.xy, x_2325.z);
      u_xlat9.w = x_2327;
      let x_2329 : vec4<f32> = u_xlat9;
      u_xlat0.x = dot(x_2329, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_2335 : f32 = x_394.x_MainLightShadowParams.y;
      u_xlatb33 = (x_2335 == 2.0f);
      let x_2337 : bool = u_xlatb33;
      if (x_2337) {
        let x_2341 : vec4<f32> = u_xlat2;
        let x_2344 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_2347 : vec2<f32> = ((vec2<f32>(x_2341.x, x_2341.y) * vec2<f32>(x_2344.z, x_2344.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2348 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_2347.x, x_2347.y, x_2348.z);
        let x_2350 : vec3<f32> = u_xlat33;
        let x_2352 : vec2<f32> = floor(vec2<f32>(x_2350.x, x_2350.y));
        let x_2353 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_2352.x, x_2352.y, x_2353.z);
        let x_2355 : vec4<f32> = u_xlat2;
        let x_2358 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_2361 : vec3<f32> = u_xlat33;
        let x_2364 : vec2<f32> = ((vec2<f32>(x_2355.x, x_2355.y) * vec2<f32>(x_2358.z, x_2358.w)) + -(vec2<f32>(x_2361.x, x_2361.y)));
        let x_2365 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2364.x, x_2364.y, x_2365.z, x_2365.w);
        let x_2367 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2367.x, x_2367.x, x_2367.y, x_2367.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2370 : vec4<f32> = u_xlat9;
        let x_2372 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_2370.x, x_2370.x, x_2370.z, x_2370.z) * vec4<f32>(x_2372.x, x_2372.x, x_2372.z, x_2372.z));
        let x_2376 : vec4<f32> = u_xlat10;
        u_xlat60 = (vec2<f32>(x_2376.y, x_2376.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_2379 : vec4<f32> = u_xlat10;
        let x_2382 : vec4<f32> = u_xlat8;
        let x_2385 : vec2<f32> = ((vec2<f32>(x_2379.x, x_2379.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2382.x, x_2382.y)));
        let x_2386 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2385.x, x_2386.y, x_2385.y, x_2386.w);
        let x_2388 : vec4<f32> = u_xlat8;
        let x_2391 : vec2<f32> = (-(vec2<f32>(x_2388.x, x_2388.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2392 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2391.x, x_2391.y, x_2392.z, x_2392.w);
        let x_2394 : vec4<f32> = u_xlat8;
        u_xlat62 = min(vec2<f32>(x_2394.x, x_2394.y), vec2<f32>(0.0f, 0.0f));
        let x_2397 : vec2<f32> = u_xlat62;
        let x_2399 : vec2<f32> = u_xlat62;
        let x_2401 : vec4<f32> = u_xlat10;
        u_xlat62 = ((-(x_2397) * x_2399) + vec2<f32>(x_2401.x, x_2401.y));
        let x_2404 : vec4<f32> = u_xlat8;
        let x_2406 : vec2<f32> = max(vec2<f32>(x_2404.x, x_2404.y), vec2<f32>(0.0f, 0.0f));
        let x_2407 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2406.x, x_2406.y, x_2407.z, x_2407.w);
        let x_2409 : vec4<f32> = u_xlat8;
        let x_2412 : vec4<f32> = u_xlat8;
        let x_2415 : vec4<f32> = u_xlat9;
        let x_2417 : vec2<f32> = ((-(vec2<f32>(x_2409.x, x_2409.y)) * vec2<f32>(x_2412.x, x_2412.y)) + vec2<f32>(x_2415.y, x_2415.w));
        let x_2418 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2417.x, x_2417.y, x_2418.z, x_2418.w);
        let x_2420 : vec2<f32> = u_xlat62;
        u_xlat62 = (x_2420 + vec2<f32>(1.0f, 1.0f));
        let x_2422 : vec4<f32> = u_xlat8;
        let x_2424 : vec2<f32> = (vec2<f32>(x_2422.x, x_2422.y) + vec2<f32>(1.0f, 1.0f));
        let x_2425 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2424.x, x_2424.y, x_2425.z, x_2425.w);
        let x_2427 : vec4<f32> = u_xlat9;
        let x_2429 : vec2<f32> = (vec2<f32>(x_2427.x, x_2427.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2430 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2429.x, x_2429.y, x_2430.z, x_2430.w);
        let x_2432 : vec4<f32> = u_xlat10;
        let x_2434 : vec2<f32> = (vec2<f32>(x_2432.x, x_2432.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2435 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2434.x, x_2434.y, x_2435.z, x_2435.w);
        let x_2437 : vec2<f32> = u_xlat62;
        let x_2438 : vec2<f32> = (x_2437 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2439 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2438.x, x_2438.y, x_2439.z, x_2439.w);
        let x_2441 : vec4<f32> = u_xlat8;
        let x_2443 : vec2<f32> = (vec2<f32>(x_2441.x, x_2441.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2444 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_2443.x, x_2443.y, x_2444.z, x_2444.w);
        let x_2446 : vec4<f32> = u_xlat9;
        let x_2448 : vec2<f32> = (vec2<f32>(x_2446.y, x_2446.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2449 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2448.x, x_2448.y, x_2449.z, x_2449.w);
        let x_2452 : f32 = u_xlat10.x;
        u_xlat11.z = x_2452;
        let x_2455 : f32 = u_xlat8.x;
        u_xlat11.w = x_2455;
        let x_2458 : f32 = u_xlat13.x;
        u_xlat12.z = x_2458;
        let x_2461 : f32 = u_xlat60.x;
        u_xlat12.w = x_2461;
        let x_2463 : vec4<f32> = u_xlat11;
        let x_2465 : vec4<f32> = u_xlat12;
        u_xlat9 = (vec4<f32>(x_2463.z, x_2463.w, x_2463.x, x_2463.z) + vec4<f32>(x_2465.z, x_2465.w, x_2465.x, x_2465.z));
        let x_2469 : f32 = u_xlat11.y;
        u_xlat10.z = x_2469;
        let x_2472 : f32 = u_xlat8.y;
        u_xlat10.w = x_2472;
        let x_2475 : f32 = u_xlat12.y;
        u_xlat13.z = x_2475;
        let x_2478 : f32 = u_xlat60.y;
        u_xlat13.w = x_2478;
        let x_2480 : vec4<f32> = u_xlat10;
        let x_2482 : vec4<f32> = u_xlat13;
        let x_2484 : vec3<f32> = (vec3<f32>(x_2480.z, x_2480.y, x_2480.w) + vec3<f32>(x_2482.z, x_2482.y, x_2482.w));
        let x_2485 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2484.x, x_2484.y, x_2484.z, x_2485.w);
        let x_2487 : vec4<f32> = u_xlat12;
        let x_2489 : vec4<f32> = u_xlat9;
        let x_2491 : vec3<f32> = (vec3<f32>(x_2487.x, x_2487.z, x_2487.w) / vec3<f32>(x_2489.z, x_2489.w, x_2489.y));
        let x_2492 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2491.x, x_2491.y, x_2491.z, x_2492.w);
        let x_2494 : vec4<f32> = u_xlat10;
        let x_2496 : vec3<f32> = (vec3<f32>(x_2494.x, x_2494.y, x_2494.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2497 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2496.x, x_2496.y, x_2496.z, x_2497.w);
        let x_2499 : vec4<f32> = u_xlat13;
        let x_2501 : vec4<f32> = u_xlat8;
        let x_2503 : vec3<f32> = (vec3<f32>(x_2499.z, x_2499.y, x_2499.w) / vec3<f32>(x_2501.x, x_2501.y, x_2501.z));
        let x_2504 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2503.x, x_2503.y, x_2503.z, x_2504.w);
        let x_2506 : vec4<f32> = u_xlat11;
        let x_2508 : vec3<f32> = (vec3<f32>(x_2506.x, x_2506.y, x_2506.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2509 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2508.x, x_2508.y, x_2508.z, x_2509.w);
        let x_2511 : vec4<f32> = u_xlat10;
        let x_2514 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_2516 : vec3<f32> = (vec3<f32>(x_2511.y, x_2511.x, x_2511.z) * vec3<f32>(x_2514.x, x_2514.x, x_2514.x));
        let x_2517 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2516.x, x_2516.y, x_2516.z, x_2517.w);
        let x_2519 : vec4<f32> = u_xlat11;
        let x_2522 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_2524 : vec3<f32> = (vec3<f32>(x_2519.x, x_2519.y, x_2519.z) * vec3<f32>(x_2522.y, x_2522.y, x_2522.y));
        let x_2525 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2524.x, x_2524.y, x_2524.z, x_2525.w);
        let x_2528 : f32 = u_xlat11.x;
        u_xlat10.w = x_2528;
        let x_2530 : vec3<f32> = u_xlat33;
        let x_2533 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_2536 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_2530.x, x_2530.y, x_2530.x, x_2530.y) * vec4<f32>(x_2533.x, x_2533.y, x_2533.x, x_2533.y)) + vec4<f32>(x_2536.y, x_2536.w, x_2536.x, x_2536.w));
        let x_2539 : vec3<f32> = u_xlat33;
        let x_2542 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_2545 : vec4<f32> = u_xlat10;
        let x_2547 : vec2<f32> = ((vec2<f32>(x_2539.x, x_2539.y) * vec2<f32>(x_2542.x, x_2542.y)) + vec2<f32>(x_2545.z, x_2545.w));
        let x_2548 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_2547.x, x_2547.y, x_2548.z, x_2548.w);
        let x_2551 : f32 = u_xlat10.y;
        u_xlat11.w = x_2551;
        let x_2553 : vec4<f32> = u_xlat11;
        let x_2554 : vec2<f32> = vec2<f32>(x_2553.y, x_2553.z);
        let x_2555 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2555.x, x_2554.x, x_2555.z, x_2554.y);
        let x_2557 : vec3<f32> = u_xlat33;
        let x_2560 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_2563 : vec4<f32> = u_xlat10;
        u_xlat14 = ((vec4<f32>(x_2557.x, x_2557.y, x_2557.x, x_2557.y) * vec4<f32>(x_2560.x, x_2560.y, x_2560.x, x_2560.y)) + vec4<f32>(x_2563.x, x_2563.y, x_2563.z, x_2563.y));
        let x_2566 : vec3<f32> = u_xlat33;
        let x_2569 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_2572 : vec4<f32> = u_xlat11;
        u_xlat11 = ((vec4<f32>(x_2566.x, x_2566.y, x_2566.x, x_2566.y) * vec4<f32>(x_2569.x, x_2569.y, x_2569.x, x_2569.y)) + vec4<f32>(x_2572.w, x_2572.y, x_2572.w, x_2572.z));
        let x_2575 : vec3<f32> = u_xlat33;
        let x_2578 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_2581 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_2575.x, x_2575.y, x_2575.x, x_2575.y) * vec4<f32>(x_2578.x, x_2578.y, x_2578.x, x_2578.y)) + vec4<f32>(x_2581.x, x_2581.w, x_2581.z, x_2581.w));
        let x_2584 : vec4<f32> = u_xlat8;
        let x_2586 : vec4<f32> = u_xlat9;
        u_xlat15 = (vec4<f32>(x_2584.x, x_2584.x, x_2584.x, x_2584.y) * vec4<f32>(x_2586.z, x_2586.w, x_2586.y, x_2586.z));
        let x_2589 : vec4<f32> = u_xlat8;
        let x_2591 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_2589.y, x_2589.y, x_2589.z, x_2589.z) * x_2591);
        let x_2594 : f32 = u_xlat8.z;
        let x_2596 : f32 = u_xlat9.y;
        u_xlat33.x = (x_2594 * x_2596);
        let x_2600 : vec4<f32> = u_xlat12;
        let x_2601 : vec2<f32> = vec2<f32>(x_2600.x, x_2600.y);
        let x_2603 : f32 = u_xlat2.z;
        txVec34 = vec3<f32>(x_2601.x, x_2601.y, x_2603);
        let x_2611 : vec3<f32> = txVec34;
        let x_2613 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2611.xy, x_2611.z);
        u_xlat59 = x_2613;
        let x_2615 : vec4<f32> = u_xlat12;
        let x_2616 : vec2<f32> = vec2<f32>(x_2615.z, x_2615.w);
        let x_2618 : f32 = u_xlat2.z;
        txVec35 = vec3<f32>(x_2616.x, x_2616.y, x_2618);
        let x_2626 : vec3<f32> = txVec35;
        let x_2628 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2626.xy, x_2626.z);
        u_xlat85 = x_2628;
        let x_2629 : f32 = u_xlat85;
        let x_2631 : f32 = u_xlat15.y;
        u_xlat85 = (x_2629 * x_2631);
        let x_2634 : f32 = u_xlat15.x;
        let x_2635 : f32 = u_xlat59;
        let x_2637 : f32 = u_xlat85;
        u_xlat59 = ((x_2634 * x_2635) + x_2637);
        let x_2640 : vec4<f32> = u_xlat13;
        let x_2641 : vec2<f32> = vec2<f32>(x_2640.x, x_2640.y);
        let x_2643 : f32 = u_xlat2.z;
        txVec36 = vec3<f32>(x_2641.x, x_2641.y, x_2643);
        let x_2650 : vec3<f32> = txVec36;
        let x_2652 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2650.xy, x_2650.z);
        u_xlat85 = x_2652;
        let x_2654 : f32 = u_xlat15.z;
        let x_2655 : f32 = u_xlat85;
        let x_2657 : f32 = u_xlat59;
        u_xlat59 = ((x_2654 * x_2655) + x_2657);
        let x_2660 : vec4<f32> = u_xlat11;
        let x_2661 : vec2<f32> = vec2<f32>(x_2660.x, x_2660.y);
        let x_2663 : f32 = u_xlat2.z;
        txVec37 = vec3<f32>(x_2661.x, x_2661.y, x_2663);
        let x_2670 : vec3<f32> = txVec37;
        let x_2672 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2670.xy, x_2670.z);
        u_xlat85 = x_2672;
        let x_2674 : f32 = u_xlat15.w;
        let x_2675 : f32 = u_xlat85;
        let x_2677 : f32 = u_xlat59;
        u_xlat59 = ((x_2674 * x_2675) + x_2677);
        let x_2680 : vec4<f32> = u_xlat14;
        let x_2681 : vec2<f32> = vec2<f32>(x_2680.x, x_2680.y);
        let x_2683 : f32 = u_xlat2.z;
        txVec38 = vec3<f32>(x_2681.x, x_2681.y, x_2683);
        let x_2690 : vec3<f32> = txVec38;
        let x_2692 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2690.xy, x_2690.z);
        u_xlat85 = x_2692;
        let x_2694 : f32 = u_xlat16.x;
        let x_2695 : f32 = u_xlat85;
        let x_2697 : f32 = u_xlat59;
        u_xlat59 = ((x_2694 * x_2695) + x_2697);
        let x_2700 : vec4<f32> = u_xlat14;
        let x_2701 : vec2<f32> = vec2<f32>(x_2700.z, x_2700.w);
        let x_2703 : f32 = u_xlat2.z;
        txVec39 = vec3<f32>(x_2701.x, x_2701.y, x_2703);
        let x_2710 : vec3<f32> = txVec39;
        let x_2712 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2710.xy, x_2710.z);
        u_xlat85 = x_2712;
        let x_2714 : f32 = u_xlat16.y;
        let x_2715 : f32 = u_xlat85;
        let x_2717 : f32 = u_xlat59;
        u_xlat59 = ((x_2714 * x_2715) + x_2717);
        let x_2720 : vec4<f32> = u_xlat11;
        let x_2721 : vec2<f32> = vec2<f32>(x_2720.z, x_2720.w);
        let x_2723 : f32 = u_xlat2.z;
        txVec40 = vec3<f32>(x_2721.x, x_2721.y, x_2723);
        let x_2730 : vec3<f32> = txVec40;
        let x_2732 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2730.xy, x_2730.z);
        u_xlat85 = x_2732;
        let x_2734 : f32 = u_xlat16.z;
        let x_2735 : f32 = u_xlat85;
        let x_2737 : f32 = u_xlat59;
        u_xlat59 = ((x_2734 * x_2735) + x_2737);
        let x_2740 : vec4<f32> = u_xlat10;
        let x_2741 : vec2<f32> = vec2<f32>(x_2740.x, x_2740.y);
        let x_2743 : f32 = u_xlat2.z;
        txVec41 = vec3<f32>(x_2741.x, x_2741.y, x_2743);
        let x_2750 : vec3<f32> = txVec41;
        let x_2752 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2750.xy, x_2750.z);
        u_xlat85 = x_2752;
        let x_2754 : f32 = u_xlat16.w;
        let x_2755 : f32 = u_xlat85;
        let x_2757 : f32 = u_xlat59;
        u_xlat59 = ((x_2754 * x_2755) + x_2757);
        let x_2760 : vec4<f32> = u_xlat10;
        let x_2761 : vec2<f32> = vec2<f32>(x_2760.z, x_2760.w);
        let x_2763 : f32 = u_xlat2.z;
        txVec42 = vec3<f32>(x_2761.x, x_2761.y, x_2763);
        let x_2770 : vec3<f32> = txVec42;
        let x_2772 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2770.xy, x_2770.z);
        u_xlat85 = x_2772;
        let x_2774 : f32 = u_xlat33.x;
        let x_2775 : f32 = u_xlat85;
        let x_2777 : f32 = u_xlat59;
        u_xlat0.x = ((x_2774 * x_2775) + x_2777);
      } else {
        let x_2781 : vec4<f32> = u_xlat2;
        let x_2784 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_2787 : vec2<f32> = ((vec2<f32>(x_2781.x, x_2781.y) * vec2<f32>(x_2784.z, x_2784.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2788 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_2787.x, x_2787.y, x_2788.z);
        let x_2790 : vec3<f32> = u_xlat33;
        let x_2792 : vec2<f32> = floor(vec2<f32>(x_2790.x, x_2790.y));
        let x_2793 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_2792.x, x_2792.y, x_2793.z);
        let x_2795 : vec4<f32> = u_xlat2;
        let x_2798 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_2801 : vec3<f32> = u_xlat33;
        let x_2804 : vec2<f32> = ((vec2<f32>(x_2795.x, x_2795.y) * vec2<f32>(x_2798.z, x_2798.w)) + -(vec2<f32>(x_2801.x, x_2801.y)));
        let x_2805 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2804.x, x_2804.y, x_2805.z, x_2805.w);
        let x_2807 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2807.x, x_2807.x, x_2807.y, x_2807.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2810 : vec4<f32> = u_xlat9;
        let x_2812 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_2810.x, x_2810.x, x_2810.z, x_2810.z) * vec4<f32>(x_2812.x, x_2812.x, x_2812.z, x_2812.z));
        let x_2815 : vec4<f32> = u_xlat10;
        let x_2817 : vec2<f32> = (vec2<f32>(x_2815.y, x_2815.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_2818 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2818.x, x_2817.x, x_2818.z, x_2817.y);
        let x_2820 : vec4<f32> = u_xlat10;
        let x_2823 : vec4<f32> = u_xlat8;
        u_xlat60 = ((vec2<f32>(x_2820.x, x_2820.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2823.x, x_2823.y)));
        let x_2827 : vec4<f32> = u_xlat8;
        let x_2830 : vec2<f32> = (-(vec2<f32>(x_2827.x, x_2827.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2831 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2830.x, x_2831.y, x_2830.y, x_2831.w);
        let x_2833 : vec4<f32> = u_xlat8;
        let x_2835 : vec2<f32> = min(vec2<f32>(x_2833.x, x_2833.y), vec2<f32>(0.0f, 0.0f));
        let x_2836 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2835.x, x_2835.y, x_2836.z, x_2836.w);
        let x_2838 : vec4<f32> = u_xlat10;
        let x_2841 : vec4<f32> = u_xlat10;
        let x_2844 : vec4<f32> = u_xlat9;
        let x_2846 : vec2<f32> = ((-(vec2<f32>(x_2838.x, x_2838.y)) * vec2<f32>(x_2841.x, x_2841.y)) + vec2<f32>(x_2844.x, x_2844.z));
        let x_2847 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2846.x, x_2847.y, x_2846.y, x_2847.w);
        let x_2849 : vec4<f32> = u_xlat8;
        let x_2851 : vec2<f32> = max(vec2<f32>(x_2849.x, x_2849.y), vec2<f32>(0.0f, 0.0f));
        let x_2852 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2851.x, x_2851.y, x_2852.z, x_2852.w);
        let x_2854 : vec4<f32> = u_xlat10;
        let x_2857 : vec4<f32> = u_xlat10;
        let x_2860 : vec4<f32> = u_xlat9;
        let x_2862 : vec2<f32> = ((-(vec2<f32>(x_2854.x, x_2854.y)) * vec2<f32>(x_2857.x, x_2857.y)) + vec2<f32>(x_2860.y, x_2860.w));
        let x_2863 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2863.x, x_2862.x, x_2863.z, x_2862.y);
        let x_2865 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_2865 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_2868 : f32 = u_xlat9.y;
        u_xlat10.z = (x_2868 * 0.08163200318813323975f);
        let x_2871 : vec2<f32> = u_xlat60;
        let x_2873 : vec2<f32> = (vec2<f32>(x_2871.y, x_2871.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2874 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2873.x, x_2873.y, x_2874.z, x_2874.w);
        let x_2876 : vec4<f32> = u_xlat9;
        u_xlat60 = (vec2<f32>(x_2876.x, x_2876.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2880 : f32 = u_xlat9.w;
        u_xlat12.z = (x_2880 * 0.08163200318813323975f);
        let x_2884 : f32 = u_xlat12.y;
        u_xlat10.x = x_2884;
        let x_2886 : vec4<f32> = u_xlat8;
        let x_2889 : vec2<f32> = ((vec2<f32>(x_2886.x, x_2886.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2890 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2890.x, x_2889.x, x_2890.z, x_2889.y);
        let x_2892 : vec4<f32> = u_xlat8;
        let x_2895 : vec2<f32> = ((vec2<f32>(x_2892.x, x_2892.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2896 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2895.x, x_2896.y, x_2895.y, x_2896.w);
        let x_2899 : f32 = u_xlat60.x;
        u_xlat9.y = x_2899;
        let x_2902 : f32 = u_xlat11.y;
        u_xlat9.w = x_2902;
        let x_2904 : vec4<f32> = u_xlat9;
        let x_2905 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_2904 + x_2905);
        let x_2907 : vec4<f32> = u_xlat8;
        let x_2910 : vec2<f32> = ((vec2<f32>(x_2907.y, x_2907.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2911 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2911.x, x_2910.x, x_2911.z, x_2910.y);
        let x_2913 : vec4<f32> = u_xlat8;
        let x_2916 : vec2<f32> = ((vec2<f32>(x_2913.y, x_2913.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2917 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2916.x, x_2917.y, x_2916.y, x_2917.w);
        let x_2920 : f32 = u_xlat60.y;
        u_xlat11.y = x_2920;
        let x_2922 : vec4<f32> = u_xlat11;
        let x_2923 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_2922 + x_2923);
        let x_2925 : vec4<f32> = u_xlat9;
        let x_2926 : vec4<f32> = u_xlat10;
        u_xlat9 = (x_2925 / x_2926);
        let x_2928 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_2928 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2930 : vec4<f32> = u_xlat11;
        let x_2931 : vec4<f32> = u_xlat8;
        u_xlat11 = (x_2930 / x_2931);
        let x_2933 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_2933 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2935 : vec4<f32> = u_xlat9;
        let x_2938 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_2935.w, x_2935.x, x_2935.y, x_2935.z) * vec4<f32>(x_2938.x, x_2938.x, x_2938.x, x_2938.x));
        let x_2941 : vec4<f32> = u_xlat11;
        let x_2944 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        u_xlat11 = (vec4<f32>(x_2941.x, x_2941.w, x_2941.y, x_2941.z) * vec4<f32>(x_2944.y, x_2944.y, x_2944.y, x_2944.y));
        let x_2947 : vec4<f32> = u_xlat9;
        let x_2948 : vec3<f32> = vec3<f32>(x_2947.y, x_2947.z, x_2947.w);
        let x_2949 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2948.x, x_2949.y, x_2948.y, x_2948.z);
        let x_2952 : f32 = u_xlat11.x;
        u_xlat12.y = x_2952;
        let x_2954 : vec3<f32> = u_xlat33;
        let x_2957 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_2960 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_2954.x, x_2954.y, x_2954.x, x_2954.y) * vec4<f32>(x_2957.x, x_2957.y, x_2957.x, x_2957.y)) + vec4<f32>(x_2960.x, x_2960.y, x_2960.z, x_2960.y));
        let x_2963 : vec3<f32> = u_xlat33;
        let x_2966 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_2969 : vec4<f32> = u_xlat12;
        let x_2971 : vec2<f32> = ((vec2<f32>(x_2963.x, x_2963.y) * vec2<f32>(x_2966.x, x_2966.y)) + vec2<f32>(x_2969.w, x_2969.y));
        let x_2972 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_2971.x, x_2971.y, x_2972.z, x_2972.w);
        let x_2975 : f32 = u_xlat12.y;
        u_xlat9.y = x_2975;
        let x_2978 : f32 = u_xlat11.z;
        u_xlat12.y = x_2978;
        let x_2980 : vec3<f32> = u_xlat33;
        let x_2983 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_2986 : vec4<f32> = u_xlat12;
        u_xlat15 = ((vec4<f32>(x_2980.x, x_2980.y, x_2980.x, x_2980.y) * vec4<f32>(x_2983.x, x_2983.y, x_2983.x, x_2983.y)) + vec4<f32>(x_2986.x, x_2986.y, x_2986.z, x_2986.y));
        let x_2990 : vec3<f32> = u_xlat33;
        let x_2993 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_2996 : vec4<f32> = u_xlat12;
        u_xlat66 = ((vec2<f32>(x_2990.x, x_2990.y) * vec2<f32>(x_2993.x, x_2993.y)) + vec2<f32>(x_2996.w, x_2996.y));
        let x_3000 : f32 = u_xlat12.y;
        u_xlat9.z = x_3000;
        let x_3002 : vec3<f32> = u_xlat33;
        let x_3005 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_3008 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_3002.x, x_3002.y, x_3002.x, x_3002.y) * vec4<f32>(x_3005.x, x_3005.y, x_3005.x, x_3005.y)) + vec4<f32>(x_3008.x, x_3008.y, x_3008.x, x_3008.z));
        let x_3012 : f32 = u_xlat11.w;
        u_xlat12.y = x_3012;
        let x_3014 : vec3<f32> = u_xlat33;
        let x_3017 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_3020 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_3014.x, x_3014.y, x_3014.x, x_3014.y) * vec4<f32>(x_3017.x, x_3017.y, x_3017.x, x_3017.y)) + vec4<f32>(x_3020.x, x_3020.y, x_3020.z, x_3020.y));
        let x_3023 : vec3<f32> = u_xlat33;
        let x_3026 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_3029 : vec4<f32> = u_xlat12;
        let x_3031 : vec2<f32> = ((vec2<f32>(x_3023.x, x_3023.y) * vec2<f32>(x_3026.x, x_3026.y)) + vec2<f32>(x_3029.w, x_3029.y));
        let x_3032 : vec3<f32> = u_xlat35;
        u_xlat35 = vec3<f32>(x_3031.x, x_3031.y, x_3032.z);
        let x_3035 : f32 = u_xlat12.y;
        u_xlat9.w = x_3035;
        let x_3037 : vec3<f32> = u_xlat33;
        let x_3040 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_3043 : vec4<f32> = u_xlat9;
        let x_3045 : vec2<f32> = ((vec2<f32>(x_3037.x, x_3037.y) * vec2<f32>(x_3040.x, x_3040.y)) + vec2<f32>(x_3043.x, x_3043.w));
        let x_3046 : vec4<f32> = u_xlat18;
        u_xlat18 = vec4<f32>(x_3045.x, x_3045.y, x_3046.z, x_3046.w);
        let x_3048 : vec4<f32> = u_xlat12;
        let x_3049 : vec3<f32> = vec3<f32>(x_3048.x, x_3048.z, x_3048.w);
        let x_3050 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3049.x, x_3050.y, x_3049.y, x_3049.z);
        let x_3052 : vec3<f32> = u_xlat33;
        let x_3055 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_3058 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_3052.x, x_3052.y, x_3052.x, x_3052.y) * vec4<f32>(x_3055.x, x_3055.y, x_3055.x, x_3055.y)) + vec4<f32>(x_3058.x, x_3058.y, x_3058.z, x_3058.y));
        let x_3061 : vec3<f32> = u_xlat33;
        let x_3064 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_3067 : vec4<f32> = u_xlat11;
        u_xlat63 = ((vec2<f32>(x_3061.x, x_3061.y) * vec2<f32>(x_3064.x, x_3064.y)) + vec2<f32>(x_3067.w, x_3067.y));
        let x_3071 : f32 = u_xlat9.x;
        u_xlat11.x = x_3071;
        let x_3073 : vec3<f32> = u_xlat33;
        let x_3076 : vec4<f32> = x_394.x_MainLightShadowmapSize;
        let x_3079 : vec4<f32> = u_xlat11;
        let x_3081 : vec2<f32> = ((vec2<f32>(x_3073.x, x_3073.y) * vec2<f32>(x_3076.x, x_3076.y)) + vec2<f32>(x_3079.x, x_3079.y));
        let x_3082 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_3081.x, x_3081.y, x_3082.z);
        let x_3084 : vec4<f32> = u_xlat8;
        let x_3086 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_3084.x, x_3084.x, x_3084.x, x_3084.x) * x_3086);
        let x_3088 : vec4<f32> = u_xlat8;
        let x_3090 : vec4<f32> = u_xlat10;
        u_xlat20 = (vec4<f32>(x_3088.y, x_3088.y, x_3088.y, x_3088.y) * x_3090);
        let x_3092 : vec4<f32> = u_xlat8;
        let x_3094 : vec4<f32> = u_xlat10;
        u_xlat21 = (vec4<f32>(x_3092.z, x_3092.z, x_3092.z, x_3092.z) * x_3094);
        let x_3096 : vec4<f32> = u_xlat8;
        let x_3098 : vec4<f32> = u_xlat10;
        u_xlat8 = (vec4<f32>(x_3096.w, x_3096.w, x_3096.w, x_3096.w) * x_3098);
        let x_3101 : vec4<f32> = u_xlat13;
        let x_3102 : vec2<f32> = vec2<f32>(x_3101.x, x_3101.y);
        let x_3104 : f32 = u_xlat2.z;
        txVec43 = vec3<f32>(x_3102.x, x_3102.y, x_3104);
        let x_3111 : vec3<f32> = txVec43;
        let x_3113 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3111.xy, x_3111.z);
        u_xlat85 = x_3113;
        let x_3115 : vec4<f32> = u_xlat13;
        let x_3116 : vec2<f32> = vec2<f32>(x_3115.z, x_3115.w);
        let x_3118 : f32 = u_xlat2.z;
        txVec44 = vec3<f32>(x_3116.x, x_3116.y, x_3118);
        let x_3125 : vec3<f32> = txVec44;
        let x_3127 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3125.xy, x_3125.z);
        u_xlat9.x = x_3127;
        let x_3130 : f32 = u_xlat9.x;
        let x_3132 : f32 = u_xlat19.y;
        u_xlat9.x = (x_3130 * x_3132);
        let x_3136 : f32 = u_xlat19.x;
        let x_3137 : f32 = u_xlat85;
        let x_3140 : f32 = u_xlat9.x;
        u_xlat85 = ((x_3136 * x_3137) + x_3140);
        let x_3143 : vec4<f32> = u_xlat14;
        let x_3144 : vec2<f32> = vec2<f32>(x_3143.x, x_3143.y);
        let x_3146 : f32 = u_xlat2.z;
        txVec45 = vec3<f32>(x_3144.x, x_3144.y, x_3146);
        let x_3153 : vec3<f32> = txVec45;
        let x_3155 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3153.xy, x_3153.z);
        u_xlat9.x = x_3155;
        let x_3158 : f32 = u_xlat19.z;
        let x_3160 : f32 = u_xlat9.x;
        let x_3162 : f32 = u_xlat85;
        u_xlat85 = ((x_3158 * x_3160) + x_3162);
        let x_3165 : vec4<f32> = u_xlat16;
        let x_3166 : vec2<f32> = vec2<f32>(x_3165.x, x_3165.y);
        let x_3168 : f32 = u_xlat2.z;
        txVec46 = vec3<f32>(x_3166.x, x_3166.y, x_3168);
        let x_3175 : vec3<f32> = txVec46;
        let x_3177 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3175.xy, x_3175.z);
        u_xlat9.x = x_3177;
        let x_3180 : f32 = u_xlat19.w;
        let x_3182 : f32 = u_xlat9.x;
        let x_3184 : f32 = u_xlat85;
        u_xlat85 = ((x_3180 * x_3182) + x_3184);
        let x_3187 : vec4<f32> = u_xlat15;
        let x_3188 : vec2<f32> = vec2<f32>(x_3187.x, x_3187.y);
        let x_3190 : f32 = u_xlat2.z;
        txVec47 = vec3<f32>(x_3188.x, x_3188.y, x_3190);
        let x_3197 : vec3<f32> = txVec47;
        let x_3199 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3197.xy, x_3197.z);
        u_xlat9.x = x_3199;
        let x_3202 : f32 = u_xlat20.x;
        let x_3204 : f32 = u_xlat9.x;
        let x_3206 : f32 = u_xlat85;
        u_xlat85 = ((x_3202 * x_3204) + x_3206);
        let x_3209 : vec4<f32> = u_xlat15;
        let x_3210 : vec2<f32> = vec2<f32>(x_3209.z, x_3209.w);
        let x_3212 : f32 = u_xlat2.z;
        txVec48 = vec3<f32>(x_3210.x, x_3210.y, x_3212);
        let x_3219 : vec3<f32> = txVec48;
        let x_3221 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3219.xy, x_3219.z);
        u_xlat9.x = x_3221;
        let x_3224 : f32 = u_xlat20.y;
        let x_3226 : f32 = u_xlat9.x;
        let x_3228 : f32 = u_xlat85;
        u_xlat85 = ((x_3224 * x_3226) + x_3228);
        let x_3231 : vec2<f32> = u_xlat66;
        let x_3233 : f32 = u_xlat2.z;
        txVec49 = vec3<f32>(x_3231.x, x_3231.y, x_3233);
        let x_3240 : vec3<f32> = txVec49;
        let x_3242 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3240.xy, x_3240.z);
        u_xlat9.x = x_3242;
        let x_3245 : f32 = u_xlat20.z;
        let x_3247 : f32 = u_xlat9.x;
        let x_3249 : f32 = u_xlat85;
        u_xlat85 = ((x_3245 * x_3247) + x_3249);
        let x_3252 : vec4<f32> = u_xlat16;
        let x_3253 : vec2<f32> = vec2<f32>(x_3252.z, x_3252.w);
        let x_3255 : f32 = u_xlat2.z;
        txVec50 = vec3<f32>(x_3253.x, x_3253.y, x_3255);
        let x_3262 : vec3<f32> = txVec50;
        let x_3264 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3262.xy, x_3262.z);
        u_xlat9.x = x_3264;
        let x_3267 : f32 = u_xlat20.w;
        let x_3269 : f32 = u_xlat9.x;
        let x_3271 : f32 = u_xlat85;
        u_xlat85 = ((x_3267 * x_3269) + x_3271);
        let x_3274 : vec4<f32> = u_xlat17;
        let x_3275 : vec2<f32> = vec2<f32>(x_3274.x, x_3274.y);
        let x_3277 : f32 = u_xlat2.z;
        txVec51 = vec3<f32>(x_3275.x, x_3275.y, x_3277);
        let x_3284 : vec3<f32> = txVec51;
        let x_3286 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3284.xy, x_3284.z);
        u_xlat9.x = x_3286;
        let x_3289 : f32 = u_xlat21.x;
        let x_3291 : f32 = u_xlat9.x;
        let x_3293 : f32 = u_xlat85;
        u_xlat85 = ((x_3289 * x_3291) + x_3293);
        let x_3296 : vec4<f32> = u_xlat17;
        let x_3297 : vec2<f32> = vec2<f32>(x_3296.z, x_3296.w);
        let x_3299 : f32 = u_xlat2.z;
        txVec52 = vec3<f32>(x_3297.x, x_3297.y, x_3299);
        let x_3306 : vec3<f32> = txVec52;
        let x_3308 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3306.xy, x_3306.z);
        u_xlat9.x = x_3308;
        let x_3311 : f32 = u_xlat21.y;
        let x_3313 : f32 = u_xlat9.x;
        let x_3315 : f32 = u_xlat85;
        u_xlat85 = ((x_3311 * x_3313) + x_3315);
        let x_3318 : vec3<f32> = u_xlat35;
        let x_3319 : vec2<f32> = vec2<f32>(x_3318.x, x_3318.y);
        let x_3321 : f32 = u_xlat2.z;
        txVec53 = vec3<f32>(x_3319.x, x_3319.y, x_3321);
        let x_3328 : vec3<f32> = txVec53;
        let x_3330 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3328.xy, x_3328.z);
        u_xlat9.x = x_3330;
        let x_3333 : f32 = u_xlat21.z;
        let x_3335 : f32 = u_xlat9.x;
        let x_3337 : f32 = u_xlat85;
        u_xlat85 = ((x_3333 * x_3335) + x_3337);
        let x_3340 : vec4<f32> = u_xlat18;
        let x_3341 : vec2<f32> = vec2<f32>(x_3340.x, x_3340.y);
        let x_3343 : f32 = u_xlat2.z;
        txVec54 = vec3<f32>(x_3341.x, x_3341.y, x_3343);
        let x_3350 : vec3<f32> = txVec54;
        let x_3352 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3350.xy, x_3350.z);
        u_xlat9.x = x_3352;
        let x_3355 : f32 = u_xlat21.w;
        let x_3357 : f32 = u_xlat9.x;
        let x_3359 : f32 = u_xlat85;
        u_xlat85 = ((x_3355 * x_3357) + x_3359);
        let x_3362 : vec4<f32> = u_xlat12;
        let x_3363 : vec2<f32> = vec2<f32>(x_3362.x, x_3362.y);
        let x_3365 : f32 = u_xlat2.z;
        txVec55 = vec3<f32>(x_3363.x, x_3363.y, x_3365);
        let x_3372 : vec3<f32> = txVec55;
        let x_3374 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3372.xy, x_3372.z);
        u_xlat9.x = x_3374;
        let x_3377 : f32 = u_xlat8.x;
        let x_3379 : f32 = u_xlat9.x;
        let x_3381 : f32 = u_xlat85;
        u_xlat85 = ((x_3377 * x_3379) + x_3381);
        let x_3384 : vec4<f32> = u_xlat12;
        let x_3385 : vec2<f32> = vec2<f32>(x_3384.z, x_3384.w);
        let x_3387 : f32 = u_xlat2.z;
        txVec56 = vec3<f32>(x_3385.x, x_3385.y, x_3387);
        let x_3394 : vec3<f32> = txVec56;
        let x_3396 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3394.xy, x_3394.z);
        u_xlat8.x = x_3396;
        let x_3399 : f32 = u_xlat8.y;
        let x_3401 : f32 = u_xlat8.x;
        let x_3403 : f32 = u_xlat85;
        u_xlat85 = ((x_3399 * x_3401) + x_3403);
        let x_3406 : vec2<f32> = u_xlat63;
        let x_3408 : f32 = u_xlat2.z;
        txVec57 = vec3<f32>(x_3406.x, x_3406.y, x_3408);
        let x_3415 : vec3<f32> = txVec57;
        let x_3417 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3415.xy, x_3415.z);
        u_xlat8.x = x_3417;
        let x_3420 : f32 = u_xlat8.z;
        let x_3422 : f32 = u_xlat8.x;
        let x_3424 : f32 = u_xlat85;
        u_xlat85 = ((x_3420 * x_3422) + x_3424);
        let x_3427 : vec3<f32> = u_xlat33;
        let x_3428 : vec2<f32> = vec2<f32>(x_3427.x, x_3427.y);
        let x_3430 : f32 = u_xlat2.z;
        txVec58 = vec3<f32>(x_3428.x, x_3428.y, x_3430);
        let x_3437 : vec3<f32> = txVec58;
        let x_3439 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3437.xy, x_3437.z);
        u_xlat33.x = x_3439;
        let x_3442 : f32 = u_xlat8.w;
        let x_3444 : f32 = u_xlat33.x;
        let x_3446 : f32 = u_xlat85;
        u_xlat0.x = ((x_3442 * x_3444) + x_3446);
      }
    }
  } else {
    let x_3451 : vec4<f32> = u_xlat2;
    let x_3452 : vec2<f32> = vec2<f32>(x_3451.x, x_3451.y);
    let x_3454 : f32 = u_xlat2.z;
    txVec59 = vec3<f32>(x_3452.x, x_3452.y, x_3454);
    let x_3461 : vec3<f32> = txVec59;
    let x_3463 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3461.xy, x_3461.z);
    u_xlat0.x = x_3463;
  }
  let x_3466 : f32 = u_xlat0.x;
  let x_3468 : f32 = x_394.x_MainLightShadowParams.x;
  let x_3470 : f32 = u_xlat80;
  u_xlat0.x = ((x_3466 * x_3468) + x_3470);
  let x_3474 : bool = u_xlatb3.x;
  if (x_3474) {
    x_3475 = 1.0f;
  } else {
    let x_3480 : f32 = u_xlat0.x;
    x_3475 = x_3480;
  }
  let x_3481 : f32 = x_3475;
  u_xlat0.x = x_3481;
  let x_3483 : vec3<f32> = vs_INTERP8;
  let x_3485 : vec3<f32> = x_149.x_WorldSpaceCameraPos;
  let x_3487 : vec3<f32> = (x_3483 + -(x_3485));
  let x_3488 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_3487.x, x_3487.y, x_3487.z, x_3488.w);
  let x_3490 : vec4<f32> = u_xlat2;
  let x_3492 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_3490.x, x_3490.y, x_3490.z), vec3<f32>(x_3492.x, x_3492.y, x_3492.z));
  let x_3498 : f32 = u_xlat2.x;
  let x_3500 : f32 = x_394.x_MainLightShadowParams.z;
  let x_3503 : f32 = x_394.x_MainLightShadowParams.w;
  u_xlat28.x = ((x_3498 * x_3500) + x_3503);
  let x_3507 : f32 = u_xlat28.x;
  u_xlat28.x = clamp(x_3507, 0.0f, 1.0f);
  let x_3512 : f32 = u_xlat0.x;
  u_xlat54 = (-(x_3512) + 1.0f);
  let x_3516 : f32 = u_xlat28.x;
  let x_3517 : f32 = u_xlat54;
  let x_3520 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_3516 * x_3517) + x_3520);
  let x_3531 : f32 = x_3529.x_MainLightCookieTextureFormat;
  u_xlatb28.x = !((x_3531 == -1.0f));
  let x_3535 : bool = u_xlatb28.x;
  if (x_3535) {
    let x_3538 : vec3<f32> = vs_INTERP8;
    let x_3541 : vec4<f32> = x_3529.x_MainLightWorldToLight[1i];
    let x_3543 : vec2<f32> = (vec2<f32>(x_3538.y, x_3538.y) * vec2<f32>(x_3541.x, x_3541.y));
    let x_3544 : vec3<f32> = u_xlat28;
    u_xlat28 = vec3<f32>(x_3543.x, x_3543.y, x_3544.z);
    let x_3547 : vec4<f32> = x_3529.x_MainLightWorldToLight[0i];
    let x_3549 : vec3<f32> = vs_INTERP8;
    let x_3552 : vec3<f32> = u_xlat28;
    let x_3554 : vec2<f32> = ((vec2<f32>(x_3547.x, x_3547.y) * vec2<f32>(x_3549.x, x_3549.x)) + vec2<f32>(x_3552.x, x_3552.y));
    let x_3555 : vec3<f32> = u_xlat28;
    u_xlat28 = vec3<f32>(x_3554.x, x_3554.y, x_3555.z);
    let x_3558 : vec4<f32> = x_3529.x_MainLightWorldToLight[2i];
    let x_3560 : vec3<f32> = vs_INTERP8;
    let x_3563 : vec3<f32> = u_xlat28;
    let x_3565 : vec2<f32> = ((vec2<f32>(x_3558.x, x_3558.y) * vec2<f32>(x_3560.z, x_3560.z)) + vec2<f32>(x_3563.x, x_3563.y));
    let x_3566 : vec3<f32> = u_xlat28;
    u_xlat28 = vec3<f32>(x_3565.x, x_3565.y, x_3566.z);
    let x_3568 : vec3<f32> = u_xlat28;
    let x_3571 : vec4<f32> = x_3529.x_MainLightWorldToLight[3i];
    let x_3573 : vec2<f32> = (vec2<f32>(x_3568.x, x_3568.y) + vec2<f32>(x_3571.x, x_3571.y));
    let x_3574 : vec3<f32> = u_xlat28;
    u_xlat28 = vec3<f32>(x_3573.x, x_3573.y, x_3574.z);
    let x_3576 : vec3<f32> = u_xlat28;
    let x_3579 : vec2<f32> = ((vec2<f32>(x_3576.x, x_3576.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_3580 : vec3<f32> = u_xlat28;
    u_xlat28 = vec3<f32>(x_3579.x, x_3579.y, x_3580.z);
    let x_3587 : vec3<f32> = u_xlat28;
    let x_3590 : f32 = x_149.x_GlobalMipBias.x;
    let x_3591 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_3587.x, x_3587.y), x_3590);
    u_xlat8 = x_3591;
    let x_3593 : f32 = x_3529.x_MainLightCookieTextureFormat;
    let x_3595 : f32 = x_3529.x_MainLightCookieTextureFormat;
    let x_3597 : f32 = x_3529.x_MainLightCookieTextureFormat;
    let x_3599 : f32 = x_3529.x_MainLightCookieTextureFormat;
    let x_3600 : vec4<f32> = vec4<f32>(x_3593, x_3595, x_3597, x_3599);
    let x_3607 : vec4<bool> = (vec4<f32>(x_3600.x, x_3600.y, x_3600.z, x_3600.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb28 = vec2<bool>(x_3607.x, x_3607.y);
    let x_3610 : bool = u_xlatb28.y;
    if (x_3610) {
      let x_3615 : f32 = u_xlat8.w;
      x_3611 = x_3615;
    } else {
      let x_3618 : f32 = u_xlat8.x;
      x_3611 = x_3618;
    }
    let x_3619 : f32 = x_3611;
    u_xlat54 = x_3619;
    let x_3621 : bool = u_xlatb28.x;
    if (x_3621) {
      let x_3625 : vec4<f32> = u_xlat8;
      x_3622 = vec3<f32>(x_3625.x, x_3625.y, x_3625.z);
    } else {
      let x_3628 : f32 = u_xlat54;
      x_3622 = vec3<f32>(x_3628, x_3628, x_3628);
    }
    let x_3630 : vec3<f32> = x_3622;
    u_xlat28 = x_3630;
  } else {
    u_xlat28.x = 1.0f;
    u_xlat28.y = 1.0f;
    u_xlat28.z = 1.0f;
  }
  let x_3635 : vec3<f32> = u_xlat28;
  let x_3637 : vec4<f32> = x_149.x_MainLightColor;
  u_xlat28 = (x_3635 * vec3<f32>(x_3637.x, x_3637.y, x_3637.z));
  let x_3640 : vec3<f32> = u_xlat5;
  let x_3642 : vec4<f32> = u_xlat4;
  u_xlat3.x = dot(-(x_3640), vec3<f32>(x_3642.x, x_3642.y, x_3642.z));
  let x_3647 : f32 = u_xlat3.x;
  let x_3649 : f32 = u_xlat3.x;
  u_xlat3.x = (x_3647 + x_3649);
  let x_3652 : vec4<f32> = u_xlat4;
  let x_3654 : vec4<f32> = u_xlat3;
  let x_3658 : vec3<f32> = u_xlat5;
  u_xlat33 = ((vec3<f32>(x_3652.x, x_3652.y, x_3652.z) * -(vec3<f32>(x_3654.x, x_3654.x, x_3654.x))) + -(x_3658));
  let x_3661 : vec4<f32> = u_xlat4;
  let x_3663 : vec3<f32> = u_xlat5;
  u_xlat3.x = dot(vec3<f32>(x_3661.x, x_3661.y, x_3661.z), x_3663);
  let x_3667 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_3667, 0.0f, 1.0f);
  let x_3671 : f32 = u_xlat3.x;
  u_xlat3.x = (-(x_3671) + 1.0f);
  let x_3676 : f32 = u_xlat3.x;
  let x_3678 : f32 = u_xlat3.x;
  u_xlat3.x = (x_3676 * x_3678);
  let x_3682 : f32 = u_xlat3.x;
  let x_3684 : f32 = u_xlat3.x;
  u_xlat3.x = (x_3682 * x_3684);
  let x_3688 : f32 = u_xlat55.x;
  u_xlat8.x = ((-(x_3688) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_3696 : f32 = u_xlat55.x;
  let x_3698 : f32 = u_xlat8.x;
  u_xlat55.x = (x_3696 * x_3698);
  let x_3702 : f32 = u_xlat55.x;
  u_xlat55.x = (x_3702 * 6.0f);
  let x_3714 : vec3<f32> = u_xlat33;
  let x_3716 : f32 = u_xlat55.x;
  let x_3717 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_3714, x_3716);
  u_xlat8 = x_3717;
  let x_3719 : f32 = u_xlat8.w;
  u_xlat55.x = (x_3719 + -1.0f);
  let x_3723 : f32 = x_83.unity_SpecCube0_HDR.w;
  let x_3725 : f32 = u_xlat55.x;
  u_xlat55.x = ((x_3723 * x_3725) + 1.0f);
  let x_3730 : f32 = u_xlat55.x;
  u_xlat55.x = max(x_3730, 0.0f);
  let x_3734 : f32 = u_xlat55.x;
  u_xlat55.x = log2(x_3734);
  let x_3738 : f32 = u_xlat55.x;
  let x_3740 : f32 = x_83.unity_SpecCube0_HDR.y;
  u_xlat55.x = (x_3738 * x_3740);
  let x_3744 : f32 = u_xlat55.x;
  u_xlat55.x = exp2(x_3744);
  let x_3748 : f32 = u_xlat55.x;
  let x_3750 : f32 = x_83.unity_SpecCube0_HDR.x;
  u_xlat55.x = (x_3748 * x_3750);
  let x_3753 : vec4<f32> = u_xlat8;
  let x_3755 : vec2<f32> = u_xlat55;
  u_xlat33 = (vec3<f32>(x_3753.x, x_3753.y, x_3753.z) * vec3<f32>(x_3755.x, x_3755.x, x_3755.x));
  let x_3758 : f32 = u_xlat81;
  let x_3760 : f32 = u_xlat81;
  u_xlat55 = ((vec2<f32>(x_3758, x_3758) * vec2<f32>(x_3760, x_3760)) + vec2<f32>(-1.0f, 1.0f));
  let x_3766 : f32 = u_xlat55.y;
  u_xlat81 = (1.0f / x_3766);
  let x_3768 : f32 = u_xlat83;
  u_xlat83 = (x_3768 + -0.03999999910593032837f);
  let x_3772 : f32 = u_xlat3.x;
  let x_3773 : f32 = u_xlat83;
  u_xlat3.x = ((x_3772 * x_3773) + 0.03999999910593032837f);
  let x_3779 : f32 = u_xlat3.x;
  let x_3780 : f32 = u_xlat81;
  u_xlat3.x = (x_3779 * x_3780);
  let x_3783 : vec4<f32> = u_xlat3;
  let x_3785 : vec3<f32> = u_xlat33;
  u_xlat33 = (vec3<f32>(x_3783.x, x_3783.x, x_3783.x) * x_3785);
  let x_3787 : vec3<f32> = u_xlat26;
  let x_3788 : vec4<f32> = u_xlat6;
  let x_3791 : vec3<f32> = u_xlat33;
  u_xlat26 = ((x_3787 * vec3<f32>(x_3788.x, x_3788.y, x_3788.z)) + x_3791);
  let x_3794 : f32 = u_xlat0.x;
  let x_3796 : f32 = x_83.unity_LightData.z;
  u_xlat0.x = (x_3794 * x_3796);
  let x_3799 : vec4<f32> = u_xlat4;
  let x_3802 : vec4<f32> = x_149.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_3799.x, x_3799.y, x_3799.z), vec3<f32>(x_3802.x, x_3802.y, x_3802.z));
  let x_3807 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_3807, 0.0f, 1.0f);
  let x_3811 : f32 = u_xlat0.x;
  let x_3813 : f32 = u_xlat3.x;
  u_xlat0.x = (x_3811 * x_3813);
  let x_3816 : vec3<f32> = u_xlat0;
  let x_3818 : vec3<f32> = u_xlat28;
  u_xlat28 = (vec3<f32>(x_3816.x, x_3816.x, x_3816.x) * x_3818);
  let x_3820 : vec3<f32> = u_xlat5;
  let x_3822 : vec4<f32> = x_149.x_MainLightPosition;
  u_xlat33 = (x_3820 + vec3<f32>(x_3822.x, x_3822.y, x_3822.z));
  let x_3825 : vec3<f32> = u_xlat33;
  let x_3826 : vec3<f32> = u_xlat33;
  u_xlat0.x = dot(x_3825, x_3826);
  let x_3830 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_3830, 1.17549435e-38f);
  let x_3834 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_3834);
  let x_3837 : vec3<f32> = u_xlat0;
  let x_3839 : vec3<f32> = u_xlat33;
  u_xlat33 = (vec3<f32>(x_3837.x, x_3837.x, x_3837.x) * x_3839);
  let x_3841 : vec4<f32> = u_xlat4;
  let x_3843 : vec3<f32> = u_xlat33;
  u_xlat0.x = dot(vec3<f32>(x_3841.x, x_3841.y, x_3841.z), x_3843);
  let x_3847 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_3847, 0.0f, 1.0f);
  let x_3851 : vec4<f32> = x_149.x_MainLightPosition;
  let x_3853 : vec3<f32> = u_xlat33;
  u_xlat3.x = dot(vec3<f32>(x_3851.x, x_3851.y, x_3851.z), x_3853);
  let x_3857 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_3857, 0.0f, 1.0f);
  let x_3861 : f32 = u_xlat0.x;
  let x_3863 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3861 * x_3863);
  let x_3867 : f32 = u_xlat0.x;
  let x_3869 : f32 = u_xlat55.x;
  u_xlat0.x = ((x_3867 * x_3869) + 1.00001001358032226562f);
  let x_3875 : f32 = u_xlat3.x;
  let x_3877 : f32 = u_xlat3.x;
  u_xlat3.x = (x_3875 * x_3877);
  let x_3881 : f32 = u_xlat0.x;
  let x_3883 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3881 * x_3883);
  let x_3887 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_3887, 0.10000000149011611938f);
  let x_3892 : f32 = u_xlat0.x;
  let x_3894 : f32 = u_xlat3.x;
  u_xlat0.x = (x_3892 * x_3894);
  let x_3897 : f32 = u_xlat84;
  let x_3899 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3897 * x_3899);
  let x_3902 : f32 = u_xlat82;
  let x_3904 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3902 / x_3904);
  let x_3907 : vec3<f32> = u_xlat0;
  let x_3911 : vec4<f32> = u_xlat6;
  u_xlat33 = ((vec3<f32>(x_3907.x, x_3907.x, x_3907.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + vec3<f32>(x_3911.x, x_3911.y, x_3911.z));
  let x_3914 : vec3<f32> = u_xlat28;
  let x_3915 : vec3<f32> = u_xlat33;
  u_xlat28 = (x_3914 * x_3915);
  let x_3918 : f32 = x_149.x_AdditionalLightsCount.x;
  let x_3920 : f32 = x_83.unity_LightData.y;
  u_xlat0.x = min(x_3918, x_3920);
  let x_3924 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_3924));
  let x_3928 : f32 = u_xlat2.x;
  let x_3931 : f32 = x_394.x_AdditionalShadowFadeParams.x;
  let x_3934 : f32 = x_394.x_AdditionalShadowFadeParams.y;
  u_xlat2.x = ((x_3928 * x_3931) + x_3934);
  let x_3938 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_3938, 0.0f, 1.0f);
  let x_3942 : f32 = x_3529.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3944 : f32 = x_3529.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3946 : f32 = x_3529.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3948 : f32 = x_3529.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3949 : vec4<f32> = vec4<f32>(x_3942, x_3944, x_3946, x_3948);
  let x_3956 : vec4<bool> = (vec4<f32>(x_3949.x, x_3949.y, x_3949.z, x_3949.w) == vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));
  let x_3957 : vec2<bool> = vec2<bool>(x_3956.x, x_3956.w);
  let x_3958 : vec4<bool> = u_xlatb3;
  u_xlatb3 = vec4<bool>(x_3957.x, x_3958.y, x_3958.z, x_3957.y);
  u_xlat33.x = 0.0f;
  u_xlat33.y = 0.0f;
  u_xlat33.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_3969 : u32 = u_xlatu_loop_1;
    let x_3970 : u32 = u_xlatu0;
    if ((x_3969 < x_3970)) {
    } else {
      break;
    }
    let x_3973 : u32 = u_xlatu_loop_1;
    u_xlatu8 = (x_3973 >> 2u);
    let x_3976 : u32 = u_xlatu_loop_1;
    u_xlati34 = bitcast<i32>((x_3976 & 3u));
    let x_3979 : u32 = u_xlatu8;
    let x_3982 : vec4<f32> = x_83.unity_LightIndices[bitcast<i32>(x_3979)];
    let x_3992 : i32 = u_xlati34;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_3997 : vec4<u32> = indexable[x_3992];
    u_xlat8.x = dot(x_3982, bitcast<vec4<f32>>(x_3997));
    let x_4003 : f32 = u_xlat8.x;
    u_xlati8 = i32(x_4003);
    let x_4005 : vec3<f32> = vs_INTERP8;
    let x_4016 : i32 = u_xlati8;
    let x_4018 : vec4<f32> = x_4015.x_AdditionalLightsPosition[x_4016];
    let x_4021 : i32 = u_xlati8;
    let x_4023 : vec4<f32> = x_4015.x_AdditionalLightsPosition[x_4021];
    u_xlat34 = ((-(x_4005) * vec3<f32>(x_4018.w, x_4018.w, x_4018.w)) + vec3<f32>(x_4023.x, x_4023.y, x_4023.z));
    let x_4026 : vec3<f32> = u_xlat34;
    let x_4027 : vec3<f32> = u_xlat34;
    u_xlat9.x = dot(x_4026, x_4027);
    let x_4031 : f32 = u_xlat9.x;
    u_xlat9.x = max(x_4031, 0.00006103515625f);
    let x_4036 : f32 = u_xlat9.x;
    u_xlat35.x = inverseSqrt(x_4036);
    let x_4039 : vec3<f32> = u_xlat34;
    let x_4040 : vec3<f32> = u_xlat35;
    let x_4042 : vec3<f32> = (x_4039 * vec3<f32>(x_4040.x, x_4040.x, x_4040.x));
    let x_4043 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_4042.x, x_4042.y, x_4042.z, x_4043.w);
    let x_4047 : f32 = u_xlat9.x;
    u_xlat61 = (1.0f / x_4047);
    let x_4050 : f32 = u_xlat9.x;
    let x_4051 : i32 = u_xlati8;
    let x_4053 : f32 = x_4015.x_AdditionalLightsAttenuation[x_4051].x;
    u_xlat9.x = (x_4050 * x_4053);
    let x_4057 : f32 = u_xlat9.x;
    let x_4060 : f32 = u_xlat9.x;
    u_xlat9.x = ((-(x_4057) * x_4060) + 1.0f);
    let x_4065 : f32 = u_xlat9.x;
    u_xlat9.x = max(x_4065, 0.0f);
    let x_4069 : f32 = u_xlat9.x;
    let x_4071 : f32 = u_xlat9.x;
    u_xlat9.x = (x_4069 * x_4071);
    let x_4075 : f32 = u_xlat9.x;
    let x_4076 : f32 = u_xlat61;
    u_xlat9.x = (x_4075 * x_4076);
    let x_4079 : i32 = u_xlati8;
    let x_4081 : vec4<f32> = x_4015.x_AdditionalLightsSpotDir[x_4079];
    let x_4083 : vec4<f32> = u_xlat10;
    u_xlat61 = dot(vec3<f32>(x_4081.x, x_4081.y, x_4081.z), vec3<f32>(x_4083.x, x_4083.y, x_4083.z));
    let x_4086 : f32 = u_xlat61;
    let x_4087 : i32 = u_xlati8;
    let x_4089 : f32 = x_4015.x_AdditionalLightsAttenuation[x_4087].z;
    let x_4091 : i32 = u_xlati8;
    let x_4093 : f32 = x_4015.x_AdditionalLightsAttenuation[x_4091].w;
    u_xlat61 = ((x_4086 * x_4089) + x_4093);
    let x_4095 : f32 = u_xlat61;
    u_xlat61 = clamp(x_4095, 0.0f, 1.0f);
    let x_4097 : f32 = u_xlat61;
    let x_4098 : f32 = u_xlat61;
    u_xlat61 = (x_4097 * x_4098);
    let x_4100 : f32 = u_xlat61;
    let x_4102 : f32 = u_xlat9.x;
    u_xlat9.x = (x_4100 * x_4102);
    let x_4107 : i32 = u_xlati8;
    let x_4109 : f32 = x_394.x_AdditionalShadowParams[x_4107].w;
    u_xlati61 = i32(x_4109);
    let x_4112 : i32 = u_xlati61;
    u_xlatb87 = (x_4112 >= 0i);
    let x_4114 : bool = u_xlatb87;
    if (x_4114) {
      let x_4118 : i32 = u_xlati8;
      let x_4120 : f32 = x_394.x_AdditionalShadowParams[x_4118].z;
      u_xlatb87 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_4120, x_4120, x_4120, x_4120))));
      let x_4124 : bool = u_xlatb87;
      if (x_4124) {
        let x_4128 : vec4<f32> = u_xlat10;
        let x_4131 : vec4<f32> = u_xlat10;
        let x_4134 : vec4<bool> = (abs(vec4<f32>(x_4128.z, x_4128.z, x_4128.y, x_4128.z)) >= abs(vec4<f32>(x_4131.x, x_4131.y, x_4131.x, x_4131.x)));
        let x_4136 : vec3<bool> = vec3<bool>(x_4134.x, x_4134.y, x_4134.z);
        let x_4137 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_4136.x, x_4136.y, x_4136.z, x_4137.w);
        let x_4140 : bool = u_xlatb11.y;
        let x_4142 : bool = u_xlatb11.x;
        u_xlatb87 = (x_4140 & x_4142);
        let x_4144 : vec4<f32> = u_xlat10;
        let x_4147 : vec4<bool> = (-(vec4<f32>(x_4144.z, x_4144.y, x_4144.z, x_4144.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_4148 : vec3<bool> = vec3<bool>(x_4147.x, x_4147.y, x_4147.w);
        let x_4149 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_4148.x, x_4148.y, x_4149.z, x_4148.z);
        let x_4152 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_4152);
        let x_4157 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_4157);
        let x_4162 : bool = u_xlatb11.w;
        u_xlat88 = select(0.0f, 1.0f, x_4162);
        let x_4165 : bool = u_xlatb11.z;
        if (x_4165) {
          let x_4170 : f32 = u_xlat11.y;
          x_4166 = x_4170;
        } else {
          let x_4172 : f32 = u_xlat88;
          x_4166 = x_4172;
        }
        let x_4173 : f32 = x_4166;
        u_xlat88 = x_4173;
        let x_4175 : bool = u_xlatb87;
        if (x_4175) {
          let x_4180 : f32 = u_xlat11.x;
          x_4176 = x_4180;
        } else {
          let x_4182 : f32 = u_xlat88;
          x_4176 = x_4182;
        }
        let x_4183 : f32 = x_4176;
        u_xlat87 = x_4183;
        let x_4184 : i32 = u_xlati8;
        let x_4186 : f32 = x_394.x_AdditionalShadowParams[x_4184].w;
        u_xlat88 = trunc(x_4186);
        let x_4188 : f32 = u_xlat87;
        let x_4189 : f32 = u_xlat88;
        u_xlat87 = (x_4188 + x_4189);
        let x_4191 : f32 = u_xlat87;
        u_xlati61 = i32(x_4191);
      }
      let x_4193 : i32 = u_xlati61;
      u_xlati61 = (x_4193 << bitcast<u32>(2i));
      let x_4195 : vec3<f32> = vs_INTERP8;
      let x_4198 : i32 = u_xlati61;
      let x_4201 : i32 = u_xlati61;
      let x_4205 : vec4<f32> = x_394.x_AdditionalLightsWorldToShadow[((x_4198 + 1i) / 4i)][((x_4201 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_4195.y, x_4195.y, x_4195.y, x_4195.y) * x_4205);
      let x_4207 : i32 = u_xlati61;
      let x_4209 : i32 = u_xlati61;
      let x_4212 : vec4<f32> = x_394.x_AdditionalLightsWorldToShadow[(x_4207 / 4i)][(x_4209 % 4i)];
      let x_4213 : vec3<f32> = vs_INTERP8;
      let x_4216 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_4212 * vec4<f32>(x_4213.x, x_4213.x, x_4213.x, x_4213.x)) + x_4216);
      let x_4218 : i32 = u_xlati61;
      let x_4221 : i32 = u_xlati61;
      let x_4225 : vec4<f32> = x_394.x_AdditionalLightsWorldToShadow[((x_4218 + 2i) / 4i)][((x_4221 + 2i) % 4i)];
      let x_4226 : vec3<f32> = vs_INTERP8;
      let x_4229 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_4225 * vec4<f32>(x_4226.z, x_4226.z, x_4226.z, x_4226.z)) + x_4229);
      let x_4231 : vec4<f32> = u_xlat11;
      let x_4232 : i32 = u_xlati61;
      let x_4235 : i32 = u_xlati61;
      let x_4239 : vec4<f32> = x_394.x_AdditionalLightsWorldToShadow[((x_4232 + 3i) / 4i)][((x_4235 + 3i) % 4i)];
      u_xlat11 = (x_4231 + x_4239);
      let x_4241 : vec4<f32> = u_xlat11;
      let x_4243 : vec4<f32> = u_xlat11;
      let x_4245 : vec3<f32> = (vec3<f32>(x_4241.x, x_4241.y, x_4241.z) / vec3<f32>(x_4243.w, x_4243.w, x_4243.w));
      let x_4246 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4245.x, x_4245.y, x_4245.z, x_4246.w);
      let x_4249 : i32 = u_xlati8;
      let x_4251 : f32 = x_394.x_AdditionalShadowParams[x_4249].y;
      u_xlatb61 = (0.0f < x_4251);
      let x_4253 : bool = u_xlatb61;
      if (x_4253) {
        let x_4256 : i32 = u_xlati8;
        let x_4258 : f32 = x_394.x_AdditionalShadowParams[x_4256].y;
        u_xlatb61 = (1.0f == x_4258);
        let x_4260 : bool = u_xlatb61;
        if (x_4260) {
          let x_4263 : vec4<f32> = u_xlat11;
          let x_4267 : vec4<f32> = x_394.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_4263.x, x_4263.y, x_4263.x, x_4263.y) + x_4267);
          let x_4270 : vec4<f32> = u_xlat12;
          let x_4271 : vec2<f32> = vec2<f32>(x_4270.x, x_4270.y);
          let x_4273 : f32 = u_xlat11.z;
          txVec60 = vec3<f32>(x_4271.x, x_4271.y, x_4273);
          let x_4281 : vec3<f32> = txVec60;
          let x_4283 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4281.xy, x_4281.z);
          u_xlat13.x = x_4283;
          let x_4286 : vec4<f32> = u_xlat12;
          let x_4287 : vec2<f32> = vec2<f32>(x_4286.z, x_4286.w);
          let x_4289 : f32 = u_xlat11.z;
          txVec61 = vec3<f32>(x_4287.x, x_4287.y, x_4289);
          let x_4296 : vec3<f32> = txVec61;
          let x_4298 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4296.xy, x_4296.z);
          u_xlat13.y = x_4298;
          let x_4300 : vec4<f32> = u_xlat11;
          let x_4304 : vec4<f32> = x_394.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_4300.x, x_4300.y, x_4300.x, x_4300.y) + x_4304);
          let x_4307 : vec4<f32> = u_xlat12;
          let x_4308 : vec2<f32> = vec2<f32>(x_4307.x, x_4307.y);
          let x_4310 : f32 = u_xlat11.z;
          txVec62 = vec3<f32>(x_4308.x, x_4308.y, x_4310);
          let x_4317 : vec3<f32> = txVec62;
          let x_4319 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4317.xy, x_4317.z);
          u_xlat13.z = x_4319;
          let x_4322 : vec4<f32> = u_xlat12;
          let x_4323 : vec2<f32> = vec2<f32>(x_4322.z, x_4322.w);
          let x_4325 : f32 = u_xlat11.z;
          txVec63 = vec3<f32>(x_4323.x, x_4323.y, x_4325);
          let x_4332 : vec3<f32> = txVec63;
          let x_4334 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4332.xy, x_4332.z);
          u_xlat13.w = x_4334;
          let x_4336 : vec4<f32> = u_xlat13;
          u_xlat61 = dot(x_4336, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_4339 : i32 = u_xlati8;
          let x_4341 : f32 = x_394.x_AdditionalShadowParams[x_4339].y;
          u_xlatb87 = (2.0f == x_4341);
          let x_4343 : bool = u_xlatb87;
          if (x_4343) {
            let x_4346 : vec4<f32> = u_xlat11;
            let x_4350 : vec4<f32> = x_394.x_AdditionalShadowmapSize;
            let x_4353 : vec2<f32> = ((vec2<f32>(x_4346.x, x_4346.y) * vec2<f32>(x_4350.z, x_4350.w)) + vec2<f32>(0.5f, 0.5f));
            let x_4354 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4353.x, x_4353.y, x_4354.z, x_4354.w);
            let x_4356 : vec4<f32> = u_xlat12;
            let x_4358 : vec2<f32> = floor(vec2<f32>(x_4356.x, x_4356.y));
            let x_4359 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4358.x, x_4358.y, x_4359.z, x_4359.w);
            let x_4362 : vec4<f32> = u_xlat11;
            let x_4365 : vec4<f32> = x_394.x_AdditionalShadowmapSize;
            let x_4368 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_4362.x, x_4362.y) * vec2<f32>(x_4365.z, x_4365.w)) + -(vec2<f32>(x_4368.x, x_4368.y)));
            let x_4372 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_4372.x, x_4372.x, x_4372.y, x_4372.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4375 : vec4<f32> = u_xlat13;
            let x_4377 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_4375.x, x_4375.x, x_4375.z, x_4375.z) * vec4<f32>(x_4377.x, x_4377.x, x_4377.z, x_4377.z));
            let x_4380 : vec4<f32> = u_xlat14;
            let x_4382 : vec2<f32> = (vec2<f32>(x_4380.y, x_4380.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_4383 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4382.x, x_4383.y, x_4382.y, x_4383.w);
            let x_4385 : vec4<f32> = u_xlat14;
            let x_4388 : vec2<f32> = u_xlat64;
            let x_4390 : vec2<f32> = ((vec2<f32>(x_4385.x, x_4385.z) * vec2<f32>(0.5f, 0.5f)) + -(x_4388));
            let x_4391 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4390.x, x_4390.y, x_4391.z, x_4391.w);
            let x_4393 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_4393) + vec2<f32>(1.0f, 1.0f));
            let x_4396 : vec2<f32> = u_xlat64;
            let x_4397 : vec2<f32> = min(x_4396, vec2<f32>(0.0f, 0.0f));
            let x_4398 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4397.x, x_4397.y, x_4398.z, x_4398.w);
            let x_4400 : vec4<f32> = u_xlat15;
            let x_4403 : vec4<f32> = u_xlat15;
            let x_4406 : vec2<f32> = u_xlat66;
            let x_4407 : vec2<f32> = ((-(vec2<f32>(x_4400.x, x_4400.y)) * vec2<f32>(x_4403.x, x_4403.y)) + x_4406);
            let x_4408 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4407.x, x_4407.y, x_4408.z, x_4408.w);
            let x_4410 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_4410, vec2<f32>(0.0f, 0.0f));
            let x_4412 : vec2<f32> = u_xlat64;
            let x_4414 : vec2<f32> = u_xlat64;
            let x_4416 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_4412) * x_4414) + vec2<f32>(x_4416.y, x_4416.w));
            let x_4419 : vec4<f32> = u_xlat15;
            let x_4421 : vec2<f32> = (vec2<f32>(x_4419.x, x_4419.y) + vec2<f32>(1.0f, 1.0f));
            let x_4422 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4421.x, x_4421.y, x_4422.z, x_4422.w);
            let x_4424 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_4424 + vec2<f32>(1.0f, 1.0f));
            let x_4426 : vec4<f32> = u_xlat14;
            let x_4428 : vec2<f32> = (vec2<f32>(x_4426.x, x_4426.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4429 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4428.x, x_4428.y, x_4429.z, x_4429.w);
            let x_4431 : vec2<f32> = u_xlat66;
            let x_4432 : vec2<f32> = (x_4431 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4433 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4432.x, x_4432.y, x_4433.z, x_4433.w);
            let x_4435 : vec4<f32> = u_xlat15;
            let x_4437 : vec2<f32> = (vec2<f32>(x_4435.x, x_4435.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4438 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4437.x, x_4437.y, x_4438.z, x_4438.w);
            let x_4440 : vec2<f32> = u_xlat64;
            let x_4441 : vec2<f32> = (x_4440 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4442 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4441.x, x_4441.y, x_4442.z, x_4442.w);
            let x_4444 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_4444.y, x_4444.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4448 : f32 = u_xlat15.x;
            u_xlat16.z = x_4448;
            let x_4451 : f32 = u_xlat64.x;
            u_xlat16.w = x_4451;
            let x_4454 : f32 = u_xlat17.x;
            u_xlat14.z = x_4454;
            let x_4457 : f32 = u_xlat13.x;
            u_xlat14.w = x_4457;
            let x_4459 : vec4<f32> = u_xlat14;
            let x_4461 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_4459.z, x_4459.w, x_4459.x, x_4459.z) + vec4<f32>(x_4461.z, x_4461.w, x_4461.x, x_4461.z));
            let x_4465 : f32 = u_xlat16.y;
            u_xlat15.z = x_4465;
            let x_4468 : f32 = u_xlat64.y;
            u_xlat15.w = x_4468;
            let x_4471 : f32 = u_xlat14.y;
            u_xlat17.z = x_4471;
            let x_4474 : f32 = u_xlat13.z;
            u_xlat17.w = x_4474;
            let x_4476 : vec4<f32> = u_xlat15;
            let x_4478 : vec4<f32> = u_xlat17;
            let x_4480 : vec3<f32> = (vec3<f32>(x_4476.z, x_4476.y, x_4476.w) + vec3<f32>(x_4478.z, x_4478.y, x_4478.w));
            let x_4481 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4480.x, x_4480.y, x_4480.z, x_4481.w);
            let x_4483 : vec4<f32> = u_xlat14;
            let x_4485 : vec4<f32> = u_xlat18;
            let x_4487 : vec3<f32> = (vec3<f32>(x_4483.x, x_4483.z, x_4483.w) / vec3<f32>(x_4485.z, x_4485.w, x_4485.y));
            let x_4488 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4487.x, x_4487.y, x_4487.z, x_4488.w);
            let x_4490 : vec4<f32> = u_xlat14;
            let x_4492 : vec3<f32> = (vec3<f32>(x_4490.x, x_4490.y, x_4490.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4493 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4492.x, x_4492.y, x_4492.z, x_4493.w);
            let x_4495 : vec4<f32> = u_xlat17;
            let x_4497 : vec4<f32> = u_xlat13;
            let x_4499 : vec3<f32> = (vec3<f32>(x_4495.z, x_4495.y, x_4495.w) / vec3<f32>(x_4497.x, x_4497.y, x_4497.z));
            let x_4500 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4499.x, x_4499.y, x_4499.z, x_4500.w);
            let x_4502 : vec4<f32> = u_xlat15;
            let x_4504 : vec3<f32> = (vec3<f32>(x_4502.x, x_4502.y, x_4502.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4505 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4504.x, x_4504.y, x_4504.z, x_4505.w);
            let x_4507 : vec4<f32> = u_xlat14;
            let x_4510 : vec4<f32> = x_394.x_AdditionalShadowmapSize;
            let x_4512 : vec3<f32> = (vec3<f32>(x_4507.y, x_4507.x, x_4507.z) * vec3<f32>(x_4510.x, x_4510.x, x_4510.x));
            let x_4513 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4512.x, x_4512.y, x_4512.z, x_4513.w);
            let x_4515 : vec4<f32> = u_xlat15;
            let x_4518 : vec4<f32> = x_394.x_AdditionalShadowmapSize;
            let x_4520 : vec3<f32> = (vec3<f32>(x_4515.x, x_4515.y, x_4515.z) * vec3<f32>(x_4518.y, x_4518.y, x_4518.y));
            let x_4521 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4520.x, x_4520.y, x_4520.z, x_4521.w);
            let x_4524 : f32 = u_xlat15.x;
            u_xlat14.w = x_4524;
            let x_4526 : vec4<f32> = u_xlat12;
            let x_4529 : vec4<f32> = x_394.x_AdditionalShadowmapSize;
            let x_4532 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_4526.x, x_4526.y, x_4526.x, x_4526.y) * vec4<f32>(x_4529.x, x_4529.y, x_4529.x, x_4529.y)) + vec4<f32>(x_4532.y, x_4532.w, x_4532.x, x_4532.w));
            let x_4535 : vec4<f32> = u_xlat12;
            let x_4538 : vec4<f32> = x_394.x_AdditionalShadowmapSize;
            let x_4541 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_4535.x, x_4535.y) * vec2<f32>(x_4538.x, x_4538.y)) + vec2<f32>(x_4541.z, x_4541.w));
            let x_4545 : f32 = u_xlat14.y;
            u_xlat15.w = x_4545;
            let x_4547 : vec4<f32> = u_xlat15;
            let x_4548 : vec2<f32> = vec2<f32>(x_4547.y, x_4547.z);
            let x_4549 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4549.x, x_4548.x, x_4549.z, x_4548.y);
            let x_4551 : vec4<f32> = u_xlat12;
            let x_4554 : vec4<f32> = x_394.x_AdditionalShadowmapSize;
            let x_4557 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_4551.x, x_4551.y, x_4551.x, x_4551.y) * vec4<f32>(x_4554.x, x_4554.y, x_4554.x, x_4554.y)) + vec4<f32>(x_4557.x, x_4557.y, x_4557.z, x_4557.y));
            let x_4560 : vec4<f32> = u_xlat12;
            let x_4563 : vec4<f32> = x_394.x_AdditionalShadowmapSize;
            let x_4566 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_4560.x, x_4560.y, x_4560.x, x_4560.y) * vec4<f32>(x_4563.x, x_4563.y, x_4563.x, x_4563.y)) + vec4<f32>(x_4566.w, x_4566.y, x_4566.w, x_4566.z));
            let x_4569 : vec4<f32> = u_xlat12;
            let x_4572 : vec4<f32> = x_394.x_AdditionalShadowmapSize;
            let x_4575 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_4569.x, x_4569.y, x_4569.x, x_4569.y) * vec4<f32>(x_4572.x, x_4572.y, x_4572.x, x_4572.y)) + vec4<f32>(x_4575.x, x_4575.w, x_4575.z, x_4575.w));
            let x_4578 : vec4<f32> = u_xlat13;
            let x_4580 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_4578.x, x_4578.x, x_4578.x, x_4578.y) * vec4<f32>(x_4580.z, x_4580.w, x_4580.y, x_4580.z));
            let x_4583 : vec4<f32> = u_xlat13;
            let x_4585 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_4583.y, x_4583.y, x_4583.z, x_4583.z) * x_4585);
            let x_4588 : f32 = u_xlat13.z;
            let x_4590 : f32 = u_xlat18.y;
            u_xlat87 = (x_4588 * x_4590);
            let x_4593 : vec4<f32> = u_xlat16;
            let x_4594 : vec2<f32> = vec2<f32>(x_4593.x, x_4593.y);
            let x_4596 : f32 = u_xlat11.z;
            txVec64 = vec3<f32>(x_4594.x, x_4594.y, x_4596);
            let x_4603 : vec3<f32> = txVec64;
            let x_4605 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4603.xy, x_4603.z);
            u_xlat88 = x_4605;
            let x_4607 : vec4<f32> = u_xlat16;
            let x_4608 : vec2<f32> = vec2<f32>(x_4607.z, x_4607.w);
            let x_4610 : f32 = u_xlat11.z;
            txVec65 = vec3<f32>(x_4608.x, x_4608.y, x_4610);
            let x_4618 : vec3<f32> = txVec65;
            let x_4620 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4618.xy, x_4618.z);
            u_xlat89 = x_4620;
            let x_4621 : f32 = u_xlat89;
            let x_4623 : f32 = u_xlat19.y;
            u_xlat89 = (x_4621 * x_4623);
            let x_4626 : f32 = u_xlat19.x;
            let x_4627 : f32 = u_xlat88;
            let x_4629 : f32 = u_xlat89;
            u_xlat88 = ((x_4626 * x_4627) + x_4629);
            let x_4632 : vec2<f32> = u_xlat64;
            let x_4634 : f32 = u_xlat11.z;
            txVec66 = vec3<f32>(x_4632.x, x_4632.y, x_4634);
            let x_4641 : vec3<f32> = txVec66;
            let x_4643 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4641.xy, x_4641.z);
            u_xlat89 = x_4643;
            let x_4645 : f32 = u_xlat19.z;
            let x_4646 : f32 = u_xlat89;
            let x_4648 : f32 = u_xlat88;
            u_xlat88 = ((x_4645 * x_4646) + x_4648);
            let x_4651 : vec4<f32> = u_xlat15;
            let x_4652 : vec2<f32> = vec2<f32>(x_4651.x, x_4651.y);
            let x_4654 : f32 = u_xlat11.z;
            txVec67 = vec3<f32>(x_4652.x, x_4652.y, x_4654);
            let x_4661 : vec3<f32> = txVec67;
            let x_4663 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4661.xy, x_4661.z);
            u_xlat89 = x_4663;
            let x_4665 : f32 = u_xlat19.w;
            let x_4666 : f32 = u_xlat89;
            let x_4668 : f32 = u_xlat88;
            u_xlat88 = ((x_4665 * x_4666) + x_4668);
            let x_4671 : vec4<f32> = u_xlat17;
            let x_4672 : vec2<f32> = vec2<f32>(x_4671.x, x_4671.y);
            let x_4674 : f32 = u_xlat11.z;
            txVec68 = vec3<f32>(x_4672.x, x_4672.y, x_4674);
            let x_4681 : vec3<f32> = txVec68;
            let x_4683 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4681.xy, x_4681.z);
            u_xlat89 = x_4683;
            let x_4685 : f32 = u_xlat20.x;
            let x_4686 : f32 = u_xlat89;
            let x_4688 : f32 = u_xlat88;
            u_xlat88 = ((x_4685 * x_4686) + x_4688);
            let x_4691 : vec4<f32> = u_xlat17;
            let x_4692 : vec2<f32> = vec2<f32>(x_4691.z, x_4691.w);
            let x_4694 : f32 = u_xlat11.z;
            txVec69 = vec3<f32>(x_4692.x, x_4692.y, x_4694);
            let x_4701 : vec3<f32> = txVec69;
            let x_4703 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4701.xy, x_4701.z);
            u_xlat89 = x_4703;
            let x_4705 : f32 = u_xlat20.y;
            let x_4706 : f32 = u_xlat89;
            let x_4708 : f32 = u_xlat88;
            u_xlat88 = ((x_4705 * x_4706) + x_4708);
            let x_4711 : vec4<f32> = u_xlat15;
            let x_4712 : vec2<f32> = vec2<f32>(x_4711.z, x_4711.w);
            let x_4714 : f32 = u_xlat11.z;
            txVec70 = vec3<f32>(x_4712.x, x_4712.y, x_4714);
            let x_4721 : vec3<f32> = txVec70;
            let x_4723 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4721.xy, x_4721.z);
            u_xlat89 = x_4723;
            let x_4725 : f32 = u_xlat20.z;
            let x_4726 : f32 = u_xlat89;
            let x_4728 : f32 = u_xlat88;
            u_xlat88 = ((x_4725 * x_4726) + x_4728);
            let x_4731 : vec4<f32> = u_xlat14;
            let x_4732 : vec2<f32> = vec2<f32>(x_4731.x, x_4731.y);
            let x_4734 : f32 = u_xlat11.z;
            txVec71 = vec3<f32>(x_4732.x, x_4732.y, x_4734);
            let x_4741 : vec3<f32> = txVec71;
            let x_4743 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4741.xy, x_4741.z);
            u_xlat89 = x_4743;
            let x_4745 : f32 = u_xlat20.w;
            let x_4746 : f32 = u_xlat89;
            let x_4748 : f32 = u_xlat88;
            u_xlat88 = ((x_4745 * x_4746) + x_4748);
            let x_4751 : vec4<f32> = u_xlat14;
            let x_4752 : vec2<f32> = vec2<f32>(x_4751.z, x_4751.w);
            let x_4754 : f32 = u_xlat11.z;
            txVec72 = vec3<f32>(x_4752.x, x_4752.y, x_4754);
            let x_4761 : vec3<f32> = txVec72;
            let x_4763 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4761.xy, x_4761.z);
            u_xlat89 = x_4763;
            let x_4764 : f32 = u_xlat87;
            let x_4765 : f32 = u_xlat89;
            let x_4767 : f32 = u_xlat88;
            u_xlat61 = ((x_4764 * x_4765) + x_4767);
          } else {
            let x_4770 : vec4<f32> = u_xlat11;
            let x_4773 : vec4<f32> = x_394.x_AdditionalShadowmapSize;
            let x_4776 : vec2<f32> = ((vec2<f32>(x_4770.x, x_4770.y) * vec2<f32>(x_4773.z, x_4773.w)) + vec2<f32>(0.5f, 0.5f));
            let x_4777 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4776.x, x_4776.y, x_4777.z, x_4777.w);
            let x_4779 : vec4<f32> = u_xlat12;
            let x_4781 : vec2<f32> = floor(vec2<f32>(x_4779.x, x_4779.y));
            let x_4782 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4781.x, x_4781.y, x_4782.z, x_4782.w);
            let x_4784 : vec4<f32> = u_xlat11;
            let x_4787 : vec4<f32> = x_394.x_AdditionalShadowmapSize;
            let x_4790 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_4784.x, x_4784.y) * vec2<f32>(x_4787.z, x_4787.w)) + -(vec2<f32>(x_4790.x, x_4790.y)));
            let x_4794 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_4794.x, x_4794.x, x_4794.y, x_4794.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4797 : vec4<f32> = u_xlat13;
            let x_4799 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_4797.x, x_4797.x, x_4797.z, x_4797.z) * vec4<f32>(x_4799.x, x_4799.x, x_4799.z, x_4799.z));
            let x_4802 : vec4<f32> = u_xlat14;
            let x_4804 : vec2<f32> = (vec2<f32>(x_4802.y, x_4802.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_4805 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4805.x, x_4804.x, x_4805.z, x_4804.y);
            let x_4807 : vec4<f32> = u_xlat14;
            let x_4810 : vec2<f32> = u_xlat64;
            let x_4812 : vec2<f32> = ((vec2<f32>(x_4807.x, x_4807.z) * vec2<f32>(0.5f, 0.5f)) + -(x_4810));
            let x_4813 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4812.x, x_4813.y, x_4812.y, x_4813.w);
            let x_4815 : vec2<f32> = u_xlat64;
            let x_4817 : vec2<f32> = (-(x_4815) + vec2<f32>(1.0f, 1.0f));
            let x_4818 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4817.x, x_4817.y, x_4818.z, x_4818.w);
            let x_4820 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_4820, vec2<f32>(0.0f, 0.0f));
            let x_4822 : vec2<f32> = u_xlat66;
            let x_4824 : vec2<f32> = u_xlat66;
            let x_4826 : vec4<f32> = u_xlat14;
            let x_4828 : vec2<f32> = ((-(x_4822) * x_4824) + vec2<f32>(x_4826.x, x_4826.y));
            let x_4829 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4828.x, x_4828.y, x_4829.z, x_4829.w);
            let x_4831 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_4831, vec2<f32>(0.0f, 0.0f));
            let x_4834 : vec2<f32> = u_xlat66;
            let x_4836 : vec2<f32> = u_xlat66;
            let x_4838 : vec4<f32> = u_xlat13;
            let x_4840 : vec2<f32> = ((-(x_4834) * x_4836) + vec2<f32>(x_4838.y, x_4838.w));
            let x_4841 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_4840.x, x_4841.y, x_4840.y);
            let x_4843 : vec4<f32> = u_xlat14;
            let x_4845 : vec2<f32> = (vec2<f32>(x_4843.x, x_4843.y) + vec2<f32>(2.0f, 2.0f));
            let x_4846 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4845.x, x_4845.y, x_4846.z, x_4846.w);
            let x_4848 : vec3<f32> = u_xlat39;
            let x_4850 : vec2<f32> = (vec2<f32>(x_4848.x, x_4848.z) + vec2<f32>(2.0f, 2.0f));
            let x_4851 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4851.x, x_4850.x, x_4851.z, x_4850.y);
            let x_4854 : f32 = u_xlat13.y;
            u_xlat16.z = (x_4854 * 0.08163200318813323975f);
            let x_4857 : vec4<f32> = u_xlat13;
            let x_4859 : vec3<f32> = (vec3<f32>(x_4857.z, x_4857.x, x_4857.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_4860 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4859.x, x_4859.y, x_4859.z, x_4860.w);
            let x_4862 : vec4<f32> = u_xlat14;
            let x_4864 : vec2<f32> = (vec2<f32>(x_4862.x, x_4862.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_4865 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4864.x, x_4864.y, x_4865.z, x_4865.w);
            let x_4868 : f32 = u_xlat17.y;
            u_xlat16.x = x_4868;
            let x_4870 : vec2<f32> = u_xlat64;
            let x_4873 : vec2<f32> = ((vec2<f32>(x_4870.x, x_4870.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4874 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4874.x, x_4873.x, x_4874.z, x_4873.y);
            let x_4876 : vec2<f32> = u_xlat64;
            let x_4879 : vec2<f32> = ((vec2<f32>(x_4876.x, x_4876.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4880 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4879.x, x_4880.y, x_4879.y, x_4880.w);
            let x_4883 : f32 = u_xlat13.x;
            u_xlat14.y = x_4883;
            let x_4886 : f32 = u_xlat15.y;
            u_xlat14.w = x_4886;
            let x_4888 : vec4<f32> = u_xlat14;
            let x_4889 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_4888 + x_4889);
            let x_4891 : vec2<f32> = u_xlat64;
            let x_4894 : vec2<f32> = ((vec2<f32>(x_4891.y, x_4891.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4895 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4895.x, x_4894.x, x_4895.z, x_4894.y);
            let x_4897 : vec2<f32> = u_xlat64;
            let x_4900 : vec2<f32> = ((vec2<f32>(x_4897.y, x_4897.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4901 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4900.x, x_4901.y, x_4900.y, x_4901.w);
            let x_4904 : f32 = u_xlat13.y;
            u_xlat15.y = x_4904;
            let x_4906 : vec4<f32> = u_xlat15;
            let x_4907 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_4906 + x_4907);
            let x_4909 : vec4<f32> = u_xlat14;
            let x_4910 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_4909 / x_4910);
            let x_4912 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_4912 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4914 : vec4<f32> = u_xlat15;
            let x_4915 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_4914 / x_4915);
            let x_4917 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_4917 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4919 : vec4<f32> = u_xlat14;
            let x_4922 : vec4<f32> = x_394.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_4919.w, x_4919.x, x_4919.y, x_4919.z) * vec4<f32>(x_4922.x, x_4922.x, x_4922.x, x_4922.x));
            let x_4925 : vec4<f32> = u_xlat15;
            let x_4928 : vec4<f32> = x_394.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_4925.x, x_4925.w, x_4925.y, x_4925.z) * vec4<f32>(x_4928.y, x_4928.y, x_4928.y, x_4928.y));
            let x_4931 : vec4<f32> = u_xlat14;
            let x_4932 : vec3<f32> = vec3<f32>(x_4931.y, x_4931.z, x_4931.w);
            let x_4933 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4932.x, x_4933.y, x_4932.y, x_4932.z);
            let x_4936 : f32 = u_xlat15.x;
            u_xlat17.y = x_4936;
            let x_4938 : vec4<f32> = u_xlat12;
            let x_4941 : vec4<f32> = x_394.x_AdditionalShadowmapSize;
            let x_4944 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_4938.x, x_4938.y, x_4938.x, x_4938.y) * vec4<f32>(x_4941.x, x_4941.y, x_4941.x, x_4941.y)) + vec4<f32>(x_4944.x, x_4944.y, x_4944.z, x_4944.y));
            let x_4947 : vec4<f32> = u_xlat12;
            let x_4950 : vec4<f32> = x_394.x_AdditionalShadowmapSize;
            let x_4953 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_4947.x, x_4947.y) * vec2<f32>(x_4950.x, x_4950.y)) + vec2<f32>(x_4953.w, x_4953.y));
            let x_4957 : f32 = u_xlat17.y;
            u_xlat14.y = x_4957;
            let x_4960 : f32 = u_xlat15.z;
            u_xlat17.y = x_4960;
            let x_4962 : vec4<f32> = u_xlat12;
            let x_4965 : vec4<f32> = x_394.x_AdditionalShadowmapSize;
            let x_4968 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_4962.x, x_4962.y, x_4962.x, x_4962.y) * vec4<f32>(x_4965.x, x_4965.y, x_4965.x, x_4965.y)) + vec4<f32>(x_4968.x, x_4968.y, x_4968.z, x_4968.y));
            let x_4971 : vec4<f32> = u_xlat12;
            let x_4974 : vec4<f32> = x_394.x_AdditionalShadowmapSize;
            let x_4977 : vec4<f32> = u_xlat17;
            let x_4979 : vec2<f32> = ((vec2<f32>(x_4971.x, x_4971.y) * vec2<f32>(x_4974.x, x_4974.y)) + vec2<f32>(x_4977.w, x_4977.y));
            let x_4980 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_4979.x, x_4979.y, x_4980.z, x_4980.w);
            let x_4983 : f32 = u_xlat17.y;
            u_xlat14.z = x_4983;
            let x_4985 : vec4<f32> = u_xlat12;
            let x_4988 : vec4<f32> = x_394.x_AdditionalShadowmapSize;
            let x_4991 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_4985.x, x_4985.y, x_4985.x, x_4985.y) * vec4<f32>(x_4988.x, x_4988.y, x_4988.x, x_4988.y)) + vec4<f32>(x_4991.x, x_4991.y, x_4991.x, x_4991.z));
            let x_4995 : f32 = u_xlat15.w;
            u_xlat17.y = x_4995;
            let x_4998 : vec4<f32> = u_xlat12;
            let x_5001 : vec4<f32> = x_394.x_AdditionalShadowmapSize;
            let x_5004 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_4998.x, x_4998.y, x_4998.x, x_4998.y) * vec4<f32>(x_5001.x, x_5001.y, x_5001.x, x_5001.y)) + vec4<f32>(x_5004.x, x_5004.y, x_5004.z, x_5004.y));
            let x_5008 : vec4<f32> = u_xlat12;
            let x_5011 : vec4<f32> = x_394.x_AdditionalShadowmapSize;
            let x_5014 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_5008.x, x_5008.y) * vec2<f32>(x_5011.x, x_5011.y)) + vec2<f32>(x_5014.w, x_5014.y));
            let x_5018 : f32 = u_xlat17.y;
            u_xlat14.w = x_5018;
            let x_5021 : vec4<f32> = u_xlat12;
            let x_5024 : vec4<f32> = x_394.x_AdditionalShadowmapSize;
            let x_5027 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_5021.x, x_5021.y) * vec2<f32>(x_5024.x, x_5024.y)) + vec2<f32>(x_5027.x, x_5027.w));
            let x_5030 : vec4<f32> = u_xlat17;
            let x_5031 : vec3<f32> = vec3<f32>(x_5030.x, x_5030.z, x_5030.w);
            let x_5032 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_5031.x, x_5032.y, x_5031.y, x_5031.z);
            let x_5034 : vec4<f32> = u_xlat12;
            let x_5037 : vec4<f32> = x_394.x_AdditionalShadowmapSize;
            let x_5040 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_5034.x, x_5034.y, x_5034.x, x_5034.y) * vec4<f32>(x_5037.x, x_5037.y, x_5037.x, x_5037.y)) + vec4<f32>(x_5040.x, x_5040.y, x_5040.z, x_5040.y));
            let x_5044 : vec4<f32> = u_xlat12;
            let x_5047 : vec4<f32> = x_394.x_AdditionalShadowmapSize;
            let x_5050 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_5044.x, x_5044.y) * vec2<f32>(x_5047.x, x_5047.y)) + vec2<f32>(x_5050.w, x_5050.y));
            let x_5054 : f32 = u_xlat14.x;
            u_xlat15.x = x_5054;
            let x_5056 : vec4<f32> = u_xlat12;
            let x_5059 : vec4<f32> = x_394.x_AdditionalShadowmapSize;
            let x_5062 : vec4<f32> = u_xlat15;
            let x_5064 : vec2<f32> = ((vec2<f32>(x_5056.x, x_5056.y) * vec2<f32>(x_5059.x, x_5059.y)) + vec2<f32>(x_5062.x, x_5062.y));
            let x_5065 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_5064.x, x_5064.y, x_5065.z, x_5065.w);
            let x_5068 : vec4<f32> = u_xlat13;
            let x_5070 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_5068.x, x_5068.x, x_5068.x, x_5068.x) * x_5070);
            let x_5073 : vec4<f32> = u_xlat13;
            let x_5075 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_5073.y, x_5073.y, x_5073.y, x_5073.y) * x_5075);
            let x_5078 : vec4<f32> = u_xlat13;
            let x_5080 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_5078.z, x_5078.z, x_5078.z, x_5078.z) * x_5080);
            let x_5082 : vec4<f32> = u_xlat13;
            let x_5084 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_5082.w, x_5082.w, x_5082.w, x_5082.w) * x_5084);
            let x_5087 : vec4<f32> = u_xlat18;
            let x_5088 : vec2<f32> = vec2<f32>(x_5087.x, x_5087.y);
            let x_5090 : f32 = u_xlat11.z;
            txVec73 = vec3<f32>(x_5088.x, x_5088.y, x_5090);
            let x_5097 : vec3<f32> = txVec73;
            let x_5099 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5097.xy, x_5097.z);
            u_xlat87 = x_5099;
            let x_5101 : vec4<f32> = u_xlat18;
            let x_5102 : vec2<f32> = vec2<f32>(x_5101.z, x_5101.w);
            let x_5104 : f32 = u_xlat11.z;
            txVec74 = vec3<f32>(x_5102.x, x_5102.y, x_5104);
            let x_5111 : vec3<f32> = txVec74;
            let x_5113 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5111.xy, x_5111.z);
            u_xlat88 = x_5113;
            let x_5114 : f32 = u_xlat88;
            let x_5116 : f32 = u_xlat23.y;
            u_xlat88 = (x_5114 * x_5116);
            let x_5119 : f32 = u_xlat23.x;
            let x_5120 : f32 = u_xlat87;
            let x_5122 : f32 = u_xlat88;
            u_xlat87 = ((x_5119 * x_5120) + x_5122);
            let x_5125 : vec2<f32> = u_xlat64;
            let x_5127 : f32 = u_xlat11.z;
            txVec75 = vec3<f32>(x_5125.x, x_5125.y, x_5127);
            let x_5134 : vec3<f32> = txVec75;
            let x_5136 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5134.xy, x_5134.z);
            u_xlat88 = x_5136;
            let x_5138 : f32 = u_xlat23.z;
            let x_5139 : f32 = u_xlat88;
            let x_5141 : f32 = u_xlat87;
            u_xlat87 = ((x_5138 * x_5139) + x_5141);
            let x_5144 : vec4<f32> = u_xlat21;
            let x_5145 : vec2<f32> = vec2<f32>(x_5144.x, x_5144.y);
            let x_5147 : f32 = u_xlat11.z;
            txVec76 = vec3<f32>(x_5145.x, x_5145.y, x_5147);
            let x_5154 : vec3<f32> = txVec76;
            let x_5156 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5154.xy, x_5154.z);
            u_xlat88 = x_5156;
            let x_5158 : f32 = u_xlat23.w;
            let x_5159 : f32 = u_xlat88;
            let x_5161 : f32 = u_xlat87;
            u_xlat87 = ((x_5158 * x_5159) + x_5161);
            let x_5164 : vec4<f32> = u_xlat19;
            let x_5165 : vec2<f32> = vec2<f32>(x_5164.x, x_5164.y);
            let x_5167 : f32 = u_xlat11.z;
            txVec77 = vec3<f32>(x_5165.x, x_5165.y, x_5167);
            let x_5174 : vec3<f32> = txVec77;
            let x_5176 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5174.xy, x_5174.z);
            u_xlat88 = x_5176;
            let x_5178 : f32 = u_xlat24.x;
            let x_5179 : f32 = u_xlat88;
            let x_5181 : f32 = u_xlat87;
            u_xlat87 = ((x_5178 * x_5179) + x_5181);
            let x_5184 : vec4<f32> = u_xlat19;
            let x_5185 : vec2<f32> = vec2<f32>(x_5184.z, x_5184.w);
            let x_5187 : f32 = u_xlat11.z;
            txVec78 = vec3<f32>(x_5185.x, x_5185.y, x_5187);
            let x_5194 : vec3<f32> = txVec78;
            let x_5196 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5194.xy, x_5194.z);
            u_xlat88 = x_5196;
            let x_5198 : f32 = u_xlat24.y;
            let x_5199 : f32 = u_xlat88;
            let x_5201 : f32 = u_xlat87;
            u_xlat87 = ((x_5198 * x_5199) + x_5201);
            let x_5204 : vec4<f32> = u_xlat20;
            let x_5205 : vec2<f32> = vec2<f32>(x_5204.x, x_5204.y);
            let x_5207 : f32 = u_xlat11.z;
            txVec79 = vec3<f32>(x_5205.x, x_5205.y, x_5207);
            let x_5214 : vec3<f32> = txVec79;
            let x_5216 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5214.xy, x_5214.z);
            u_xlat88 = x_5216;
            let x_5218 : f32 = u_xlat24.z;
            let x_5219 : f32 = u_xlat88;
            let x_5221 : f32 = u_xlat87;
            u_xlat87 = ((x_5218 * x_5219) + x_5221);
            let x_5224 : vec4<f32> = u_xlat21;
            let x_5225 : vec2<f32> = vec2<f32>(x_5224.z, x_5224.w);
            let x_5227 : f32 = u_xlat11.z;
            txVec80 = vec3<f32>(x_5225.x, x_5225.y, x_5227);
            let x_5234 : vec3<f32> = txVec80;
            let x_5236 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5234.xy, x_5234.z);
            u_xlat88 = x_5236;
            let x_5238 : f32 = u_xlat24.w;
            let x_5239 : f32 = u_xlat88;
            let x_5241 : f32 = u_xlat87;
            u_xlat87 = ((x_5238 * x_5239) + x_5241);
            let x_5244 : vec4<f32> = u_xlat22;
            let x_5245 : vec2<f32> = vec2<f32>(x_5244.x, x_5244.y);
            let x_5247 : f32 = u_xlat11.z;
            txVec81 = vec3<f32>(x_5245.x, x_5245.y, x_5247);
            let x_5254 : vec3<f32> = txVec81;
            let x_5256 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5254.xy, x_5254.z);
            u_xlat88 = x_5256;
            let x_5258 : f32 = u_xlat25.x;
            let x_5259 : f32 = u_xlat88;
            let x_5261 : f32 = u_xlat87;
            u_xlat87 = ((x_5258 * x_5259) + x_5261);
            let x_5264 : vec4<f32> = u_xlat22;
            let x_5265 : vec2<f32> = vec2<f32>(x_5264.z, x_5264.w);
            let x_5267 : f32 = u_xlat11.z;
            txVec82 = vec3<f32>(x_5265.x, x_5265.y, x_5267);
            let x_5274 : vec3<f32> = txVec82;
            let x_5276 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5274.xy, x_5274.z);
            u_xlat88 = x_5276;
            let x_5278 : f32 = u_xlat25.y;
            let x_5279 : f32 = u_xlat88;
            let x_5281 : f32 = u_xlat87;
            u_xlat87 = ((x_5278 * x_5279) + x_5281);
            let x_5284 : vec2<f32> = u_xlat40;
            let x_5286 : f32 = u_xlat11.z;
            txVec83 = vec3<f32>(x_5284.x, x_5284.y, x_5286);
            let x_5293 : vec3<f32> = txVec83;
            let x_5295 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5293.xy, x_5293.z);
            u_xlat88 = x_5295;
            let x_5297 : f32 = u_xlat25.z;
            let x_5298 : f32 = u_xlat88;
            let x_5300 : f32 = u_xlat87;
            u_xlat87 = ((x_5297 * x_5298) + x_5300);
            let x_5303 : vec2<f32> = u_xlat72;
            let x_5305 : f32 = u_xlat11.z;
            txVec84 = vec3<f32>(x_5303.x, x_5303.y, x_5305);
            let x_5312 : vec3<f32> = txVec84;
            let x_5314 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5312.xy, x_5312.z);
            u_xlat88 = x_5314;
            let x_5316 : f32 = u_xlat25.w;
            let x_5317 : f32 = u_xlat88;
            let x_5319 : f32 = u_xlat87;
            u_xlat87 = ((x_5316 * x_5317) + x_5319);
            let x_5322 : vec4<f32> = u_xlat17;
            let x_5323 : vec2<f32> = vec2<f32>(x_5322.x, x_5322.y);
            let x_5325 : f32 = u_xlat11.z;
            txVec85 = vec3<f32>(x_5323.x, x_5323.y, x_5325);
            let x_5332 : vec3<f32> = txVec85;
            let x_5334 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5332.xy, x_5332.z);
            u_xlat88 = x_5334;
            let x_5336 : f32 = u_xlat13.x;
            let x_5337 : f32 = u_xlat88;
            let x_5339 : f32 = u_xlat87;
            u_xlat87 = ((x_5336 * x_5337) + x_5339);
            let x_5342 : vec4<f32> = u_xlat17;
            let x_5343 : vec2<f32> = vec2<f32>(x_5342.z, x_5342.w);
            let x_5345 : f32 = u_xlat11.z;
            txVec86 = vec3<f32>(x_5343.x, x_5343.y, x_5345);
            let x_5352 : vec3<f32> = txVec86;
            let x_5354 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5352.xy, x_5352.z);
            u_xlat88 = x_5354;
            let x_5356 : f32 = u_xlat13.y;
            let x_5357 : f32 = u_xlat88;
            let x_5359 : f32 = u_xlat87;
            u_xlat87 = ((x_5356 * x_5357) + x_5359);
            let x_5362 : vec2<f32> = u_xlat67;
            let x_5364 : f32 = u_xlat11.z;
            txVec87 = vec3<f32>(x_5362.x, x_5362.y, x_5364);
            let x_5371 : vec3<f32> = txVec87;
            let x_5373 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5371.xy, x_5371.z);
            u_xlat88 = x_5373;
            let x_5375 : f32 = u_xlat13.z;
            let x_5376 : f32 = u_xlat88;
            let x_5378 : f32 = u_xlat87;
            u_xlat87 = ((x_5375 * x_5376) + x_5378);
            let x_5381 : vec4<f32> = u_xlat12;
            let x_5382 : vec2<f32> = vec2<f32>(x_5381.x, x_5381.y);
            let x_5384 : f32 = u_xlat11.z;
            txVec88 = vec3<f32>(x_5382.x, x_5382.y, x_5384);
            let x_5391 : vec3<f32> = txVec88;
            let x_5393 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5391.xy, x_5391.z);
            u_xlat88 = x_5393;
            let x_5395 : f32 = u_xlat13.w;
            let x_5396 : f32 = u_xlat88;
            let x_5398 : f32 = u_xlat87;
            u_xlat61 = ((x_5395 * x_5396) + x_5398);
          }
        }
      } else {
        let x_5402 : vec4<f32> = u_xlat11;
        let x_5403 : vec2<f32> = vec2<f32>(x_5402.x, x_5402.y);
        let x_5405 : f32 = u_xlat11.z;
        txVec89 = vec3<f32>(x_5403.x, x_5403.y, x_5405);
        let x_5412 : vec3<f32> = txVec89;
        let x_5414 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5412.xy, x_5412.z);
        u_xlat61 = x_5414;
      }
      let x_5415 : i32 = u_xlati8;
      let x_5417 : f32 = x_394.x_AdditionalShadowParams[x_5415].x;
      u_xlat87 = (1.0f + -(x_5417));
      let x_5420 : f32 = u_xlat61;
      let x_5421 : i32 = u_xlati8;
      let x_5423 : f32 = x_394.x_AdditionalShadowParams[x_5421].x;
      let x_5425 : f32 = u_xlat87;
      u_xlat61 = ((x_5420 * x_5423) + x_5425);
      let x_5428 : f32 = u_xlat11.z;
      u_xlatb87 = (0.0f >= x_5428);
      let x_5432 : f32 = u_xlat11.z;
      u_xlatb88 = (x_5432 >= 1.0f);
      let x_5434 : bool = u_xlatb87;
      let x_5435 : bool = u_xlatb88;
      u_xlatb87 = (x_5434 | x_5435);
      let x_5437 : bool = u_xlatb87;
      let x_5438 : f32 = u_xlat61;
      u_xlat61 = select(x_5438, 1.0f, x_5437);
    } else {
      u_xlat61 = 1.0f;
    }
    let x_5441 : f32 = u_xlat61;
    u_xlat87 = (-(x_5441) + 1.0f);
    let x_5445 : f32 = u_xlat2.x;
    let x_5446 : f32 = u_xlat87;
    let x_5448 : f32 = u_xlat61;
    u_xlat61 = ((x_5445 * x_5446) + x_5448);
    let x_5451 : i32 = u_xlati8;
    u_xlati87 = (1i << bitcast<u32>((x_5451 & 31i)));
    let x_5455 : i32 = u_xlati87;
    let x_5458 : f32 = x_3529.x_AdditionalLightsCookieEnableBits;
    u_xlati87 = bitcast<i32>((bitcast<u32>(x_5455) & bitcast<u32>(x_5458)));
    let x_5462 : i32 = u_xlati87;
    if ((x_5462 != 0i)) {
      let x_5466 : i32 = u_xlati8;
      let x_5468 : f32 = x_3529.x_AdditionalLightsLightTypes[x_5466].el;
      u_xlati87 = i32(x_5468);
      let x_5471 : i32 = u_xlati87;
      u_xlati88 = select(1i, 0i, (x_5471 != 0i));
      let x_5475 : i32 = u_xlati8;
      u_xlati11 = (x_5475 << bitcast<u32>(2i));
      let x_5477 : i32 = u_xlati88;
      if ((x_5477 != 0i)) {
        let x_5482 : vec3<f32> = vs_INTERP8;
        let x_5484 : i32 = u_xlati11;
        let x_5487 : i32 = u_xlati11;
        let x_5491 : vec4<f32> = x_3529.x_AdditionalLightsWorldToLights[((x_5484 + 1i) / 4i)][((x_5487 + 1i) % 4i)];
        u_xlat37 = (vec3<f32>(x_5482.y, x_5482.y, x_5482.y) * vec3<f32>(x_5491.x, x_5491.y, x_5491.w));
        let x_5494 : i32 = u_xlati11;
        let x_5496 : i32 = u_xlati11;
        let x_5499 : vec4<f32> = x_3529.x_AdditionalLightsWorldToLights[(x_5494 / 4i)][(x_5496 % 4i)];
        let x_5501 : vec3<f32> = vs_INTERP8;
        let x_5504 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_5499.x, x_5499.y, x_5499.w) * vec3<f32>(x_5501.x, x_5501.x, x_5501.x)) + x_5504);
        let x_5506 : i32 = u_xlati11;
        let x_5509 : i32 = u_xlati11;
        let x_5513 : vec4<f32> = x_3529.x_AdditionalLightsWorldToLights[((x_5506 + 2i) / 4i)][((x_5509 + 2i) % 4i)];
        let x_5515 : vec3<f32> = vs_INTERP8;
        let x_5518 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_5513.x, x_5513.y, x_5513.w) * vec3<f32>(x_5515.z, x_5515.z, x_5515.z)) + x_5518);
        let x_5520 : vec3<f32> = u_xlat37;
        let x_5521 : i32 = u_xlati11;
        let x_5524 : i32 = u_xlati11;
        let x_5528 : vec4<f32> = x_3529.x_AdditionalLightsWorldToLights[((x_5521 + 3i) / 4i)][((x_5524 + 3i) % 4i)];
        u_xlat37 = (x_5520 + vec3<f32>(x_5528.x, x_5528.y, x_5528.w));
        let x_5531 : vec3<f32> = u_xlat37;
        let x_5533 : vec3<f32> = u_xlat37;
        let x_5535 : vec2<f32> = (vec2<f32>(x_5531.x, x_5531.y) / vec2<f32>(x_5533.z, x_5533.z));
        let x_5536 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_5535.x, x_5535.y, x_5536.z);
        let x_5538 : vec3<f32> = u_xlat37;
        let x_5541 : vec2<f32> = ((vec2<f32>(x_5538.x, x_5538.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_5542 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_5541.x, x_5541.y, x_5542.z);
        let x_5544 : vec3<f32> = u_xlat37;
        let x_5548 : vec2<f32> = clamp(vec2<f32>(x_5544.x, x_5544.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_5549 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_5548.x, x_5548.y, x_5549.z);
        let x_5551 : i32 = u_xlati8;
        let x_5553 : vec4<f32> = x_3529.x_AdditionalLightsCookieAtlasUVRects[x_5551];
        let x_5555 : vec3<f32> = u_xlat37;
        let x_5558 : i32 = u_xlati8;
        let x_5560 : vec4<f32> = x_3529.x_AdditionalLightsCookieAtlasUVRects[x_5558];
        let x_5562 : vec2<f32> = ((vec2<f32>(x_5553.x, x_5553.y) * vec2<f32>(x_5555.x, x_5555.y)) + vec2<f32>(x_5560.z, x_5560.w));
        let x_5563 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_5562.x, x_5562.y, x_5563.z);
      } else {
        let x_5566 : i32 = u_xlati87;
        u_xlatb87 = (x_5566 == 1i);
        let x_5568 : bool = u_xlatb87;
        u_xlati87 = select(0i, 1i, x_5568);
        let x_5570 : i32 = u_xlati87;
        if ((x_5570 != 0i)) {
          let x_5574 : vec3<f32> = vs_INTERP8;
          let x_5576 : i32 = u_xlati11;
          let x_5579 : i32 = u_xlati11;
          let x_5583 : vec4<f32> = x_3529.x_AdditionalLightsWorldToLights[((x_5576 + 1i) / 4i)][((x_5579 + 1i) % 4i)];
          let x_5585 : vec2<f32> = (vec2<f32>(x_5574.y, x_5574.y) * vec2<f32>(x_5583.x, x_5583.y));
          let x_5586 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5585.x, x_5585.y, x_5586.z, x_5586.w);
          let x_5588 : i32 = u_xlati11;
          let x_5590 : i32 = u_xlati11;
          let x_5593 : vec4<f32> = x_3529.x_AdditionalLightsWorldToLights[(x_5588 / 4i)][(x_5590 % 4i)];
          let x_5595 : vec3<f32> = vs_INTERP8;
          let x_5598 : vec4<f32> = u_xlat12;
          let x_5600 : vec2<f32> = ((vec2<f32>(x_5593.x, x_5593.y) * vec2<f32>(x_5595.x, x_5595.x)) + vec2<f32>(x_5598.x, x_5598.y));
          let x_5601 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5600.x, x_5600.y, x_5601.z, x_5601.w);
          let x_5603 : i32 = u_xlati11;
          let x_5606 : i32 = u_xlati11;
          let x_5610 : vec4<f32> = x_3529.x_AdditionalLightsWorldToLights[((x_5603 + 2i) / 4i)][((x_5606 + 2i) % 4i)];
          let x_5612 : vec3<f32> = vs_INTERP8;
          let x_5615 : vec4<f32> = u_xlat12;
          let x_5617 : vec2<f32> = ((vec2<f32>(x_5610.x, x_5610.y) * vec2<f32>(x_5612.z, x_5612.z)) + vec2<f32>(x_5615.x, x_5615.y));
          let x_5618 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5617.x, x_5617.y, x_5618.z, x_5618.w);
          let x_5620 : vec4<f32> = u_xlat12;
          let x_5622 : i32 = u_xlati11;
          let x_5625 : i32 = u_xlati11;
          let x_5629 : vec4<f32> = x_3529.x_AdditionalLightsWorldToLights[((x_5622 + 3i) / 4i)][((x_5625 + 3i) % 4i)];
          let x_5631 : vec2<f32> = (vec2<f32>(x_5620.x, x_5620.y) + vec2<f32>(x_5629.x, x_5629.y));
          let x_5632 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5631.x, x_5631.y, x_5632.z, x_5632.w);
          let x_5634 : vec4<f32> = u_xlat12;
          let x_5637 : vec2<f32> = ((vec2<f32>(x_5634.x, x_5634.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_5638 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5637.x, x_5637.y, x_5638.z, x_5638.w);
          let x_5640 : vec4<f32> = u_xlat12;
          let x_5642 : vec2<f32> = fract(vec2<f32>(x_5640.x, x_5640.y));
          let x_5643 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5642.x, x_5642.y, x_5643.z, x_5643.w);
          let x_5645 : i32 = u_xlati8;
          let x_5647 : vec4<f32> = x_3529.x_AdditionalLightsCookieAtlasUVRects[x_5645];
          let x_5649 : vec4<f32> = u_xlat12;
          let x_5652 : i32 = u_xlati8;
          let x_5654 : vec4<f32> = x_3529.x_AdditionalLightsCookieAtlasUVRects[x_5652];
          let x_5656 : vec2<f32> = ((vec2<f32>(x_5647.x, x_5647.y) * vec2<f32>(x_5649.x, x_5649.y)) + vec2<f32>(x_5654.z, x_5654.w));
          let x_5657 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_5656.x, x_5656.y, x_5657.z);
        } else {
          let x_5660 : vec3<f32> = vs_INTERP8;
          let x_5662 : i32 = u_xlati11;
          let x_5665 : i32 = u_xlati11;
          let x_5669 : vec4<f32> = x_3529.x_AdditionalLightsWorldToLights[((x_5662 + 1i) / 4i)][((x_5665 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_5660.y, x_5660.y, x_5660.y, x_5660.y) * x_5669);
          let x_5671 : i32 = u_xlati11;
          let x_5673 : i32 = u_xlati11;
          let x_5676 : vec4<f32> = x_3529.x_AdditionalLightsWorldToLights[(x_5671 / 4i)][(x_5673 % 4i)];
          let x_5677 : vec3<f32> = vs_INTERP8;
          let x_5680 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_5676 * vec4<f32>(x_5677.x, x_5677.x, x_5677.x, x_5677.x)) + x_5680);
          let x_5682 : i32 = u_xlati11;
          let x_5685 : i32 = u_xlati11;
          let x_5689 : vec4<f32> = x_3529.x_AdditionalLightsWorldToLights[((x_5682 + 2i) / 4i)][((x_5685 + 2i) % 4i)];
          let x_5690 : vec3<f32> = vs_INTERP8;
          let x_5693 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_5689 * vec4<f32>(x_5690.z, x_5690.z, x_5690.z, x_5690.z)) + x_5693);
          let x_5695 : vec4<f32> = u_xlat12;
          let x_5696 : i32 = u_xlati11;
          let x_5699 : i32 = u_xlati11;
          let x_5703 : vec4<f32> = x_3529.x_AdditionalLightsWorldToLights[((x_5696 + 3i) / 4i)][((x_5699 + 3i) % 4i)];
          u_xlat12 = (x_5695 + x_5703);
          let x_5705 : vec4<f32> = u_xlat12;
          let x_5707 : vec4<f32> = u_xlat12;
          let x_5709 : vec3<f32> = (vec3<f32>(x_5705.x, x_5705.y, x_5705.z) / vec3<f32>(x_5707.w, x_5707.w, x_5707.w));
          let x_5710 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5709.x, x_5709.y, x_5709.z, x_5710.w);
          let x_5712 : vec4<f32> = u_xlat12;
          let x_5714 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(vec3<f32>(x_5712.x, x_5712.y, x_5712.z), vec3<f32>(x_5714.x, x_5714.y, x_5714.z));
          let x_5717 : f32 = u_xlat87;
          u_xlat87 = inverseSqrt(x_5717);
          let x_5719 : f32 = u_xlat87;
          let x_5721 : vec4<f32> = u_xlat12;
          let x_5723 : vec3<f32> = (vec3<f32>(x_5719, x_5719, x_5719) * vec3<f32>(x_5721.x, x_5721.y, x_5721.z));
          let x_5724 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5723.x, x_5723.y, x_5723.z, x_5724.w);
          let x_5726 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(abs(vec3<f32>(x_5726.x, x_5726.y, x_5726.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_5731 : f32 = u_xlat87;
          u_xlat87 = max(x_5731, 0.00000099999999747524f);
          let x_5734 : f32 = u_xlat87;
          u_xlat87 = (1.0f / x_5734);
          let x_5736 : f32 = u_xlat87;
          let x_5738 : vec4<f32> = u_xlat12;
          let x_5740 : vec3<f32> = (vec3<f32>(x_5736, x_5736, x_5736) * vec3<f32>(x_5738.z, x_5738.x, x_5738.y));
          let x_5741 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_5740.x, x_5740.y, x_5740.z, x_5741.w);
          let x_5744 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_5744);
          let x_5748 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_5748, 0.0f, 1.0f);
          let x_5751 : vec4<f32> = u_xlat13;
          let x_5753 : vec4<bool> = (vec4<f32>(x_5751.y, x_5751.y, x_5751.y, x_5751.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_5754 : vec2<bool> = vec2<bool>(x_5753.x, x_5753.w);
          let x_5755 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_5754.x, x_5755.y, x_5755.z, x_5754.y);
          let x_5758 : bool = u_xlatb11.x;
          if (x_5758) {
            let x_5763 : f32 = u_xlat13.x;
            x_5759 = x_5763;
          } else {
            let x_5766 : f32 = u_xlat13.x;
            x_5759 = -(x_5766);
          }
          let x_5768 : f32 = x_5759;
          u_xlat11.x = x_5768;
          let x_5771 : bool = u_xlatb11.w;
          if (x_5771) {
            let x_5776 : f32 = u_xlat13.x;
            x_5772 = x_5776;
          } else {
            let x_5779 : f32 = u_xlat13.x;
            x_5772 = -(x_5779);
          }
          let x_5781 : f32 = x_5772;
          u_xlat11.w = x_5781;
          let x_5783 : vec4<f32> = u_xlat12;
          let x_5785 : f32 = u_xlat87;
          let x_5788 : vec4<f32> = u_xlat11;
          let x_5790 : vec2<f32> = ((vec2<f32>(x_5783.x, x_5783.y) * vec2<f32>(x_5785, x_5785)) + vec2<f32>(x_5788.x, x_5788.w));
          let x_5791 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_5790.x, x_5791.y, x_5791.z, x_5790.y);
          let x_5793 : vec4<f32> = u_xlat11;
          let x_5796 : vec2<f32> = ((vec2<f32>(x_5793.x, x_5793.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_5797 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_5796.x, x_5797.y, x_5797.z, x_5796.y);
          let x_5799 : vec4<f32> = u_xlat11;
          let x_5803 : vec2<f32> = clamp(vec2<f32>(x_5799.x, x_5799.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_5804 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_5803.x, x_5804.y, x_5804.z, x_5803.y);
          let x_5806 : i32 = u_xlati8;
          let x_5808 : vec4<f32> = x_3529.x_AdditionalLightsCookieAtlasUVRects[x_5806];
          let x_5810 : vec4<f32> = u_xlat11;
          let x_5813 : i32 = u_xlati8;
          let x_5815 : vec4<f32> = x_3529.x_AdditionalLightsCookieAtlasUVRects[x_5813];
          let x_5817 : vec2<f32> = ((vec2<f32>(x_5808.x, x_5808.y) * vec2<f32>(x_5810.x, x_5810.w)) + vec2<f32>(x_5815.z, x_5815.w));
          let x_5818 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_5817.x, x_5817.y, x_5818.z);
        }
      }
      let x_5825 : vec3<f32> = u_xlat37;
      let x_5827 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_5825.x, x_5825.y), 0.0f);
      u_xlat11 = x_5827;
      let x_5829 : bool = u_xlatb3.w;
      if (x_5829) {
        let x_5834 : f32 = u_xlat11.w;
        x_5830 = x_5834;
      } else {
        let x_5837 : f32 = u_xlat11.x;
        x_5830 = x_5837;
      }
      let x_5838 : f32 = x_5830;
      u_xlat87 = x_5838;
      let x_5840 : bool = u_xlatb3.x;
      if (x_5840) {
        let x_5844 : vec4<f32> = u_xlat11;
        x_5841 = vec3<f32>(x_5844.x, x_5844.y, x_5844.z);
      } else {
        let x_5847 : f32 = u_xlat87;
        x_5841 = vec3<f32>(x_5847, x_5847, x_5847);
      }
      let x_5849 : vec3<f32> = x_5841;
      let x_5850 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_5849.x, x_5849.y, x_5849.z, x_5850.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_5856 : vec4<f32> = u_xlat11;
    let x_5858 : i32 = u_xlati8;
    let x_5860 : vec4<f32> = x_4015.x_AdditionalLightsColor[x_5858];
    let x_5862 : vec3<f32> = (vec3<f32>(x_5856.x, x_5856.y, x_5856.z) * vec3<f32>(x_5860.x, x_5860.y, x_5860.z));
    let x_5863 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_5862.x, x_5862.y, x_5862.z, x_5863.w);
    let x_5865 : f32 = u_xlat61;
    let x_5867 : f32 = u_xlat9.x;
    u_xlat8.x = (x_5865 * x_5867);
    let x_5870 : vec4<f32> = u_xlat4;
    let x_5872 : vec4<f32> = u_xlat10;
    u_xlat9.x = dot(vec3<f32>(x_5870.x, x_5870.y, x_5870.z), vec3<f32>(x_5872.x, x_5872.y, x_5872.z));
    let x_5877 : f32 = u_xlat9.x;
    u_xlat9.x = clamp(x_5877, 0.0f, 1.0f);
    let x_5881 : f32 = u_xlat8.x;
    let x_5883 : f32 = u_xlat9.x;
    u_xlat8.x = (x_5881 * x_5883);
    let x_5886 : vec4<f32> = u_xlat8;
    let x_5888 : vec4<f32> = u_xlat11;
    let x_5890 : vec3<f32> = (vec3<f32>(x_5886.x, x_5886.x, x_5886.x) * vec3<f32>(x_5888.x, x_5888.y, x_5888.z));
    let x_5891 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5890.x, x_5891.y, x_5890.y, x_5890.z);
    let x_5893 : vec3<f32> = u_xlat34;
    let x_5894 : vec3<f32> = u_xlat35;
    let x_5897 : vec3<f32> = u_xlat5;
    let x_5898 : vec3<f32> = ((x_5893 * vec3<f32>(x_5894.x, x_5894.x, x_5894.x)) + x_5897);
    let x_5899 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_5898.x, x_5898.y, x_5898.z, x_5899.w);
    let x_5902 : vec4<f32> = u_xlat8;
    let x_5904 : vec4<f32> = u_xlat8;
    u_xlat86 = dot(vec3<f32>(x_5902.x, x_5902.y, x_5902.z), vec3<f32>(x_5904.x, x_5904.y, x_5904.z));
    let x_5907 : f32 = u_xlat86;
    u_xlat86 = max(x_5907, 1.17549435e-38f);
    let x_5909 : f32 = u_xlat86;
    u_xlat86 = inverseSqrt(x_5909);
    let x_5911 : f32 = u_xlat86;
    let x_5913 : vec4<f32> = u_xlat8;
    let x_5915 : vec3<f32> = (vec3<f32>(x_5911, x_5911, x_5911) * vec3<f32>(x_5913.x, x_5913.y, x_5913.z));
    let x_5916 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_5915.x, x_5915.y, x_5915.z, x_5916.w);
    let x_5918 : vec4<f32> = u_xlat4;
    let x_5920 : vec4<f32> = u_xlat8;
    u_xlat8.w = dot(vec3<f32>(x_5918.x, x_5918.y, x_5918.z), vec3<f32>(x_5920.x, x_5920.y, x_5920.z));
    let x_5925 : f32 = u_xlat8.w;
    u_xlat8.w = clamp(x_5925, 0.0f, 1.0f);
    let x_5928 : vec4<f32> = u_xlat10;
    let x_5930 : vec4<f32> = u_xlat8;
    u_xlat8.x = dot(vec3<f32>(x_5928.x, x_5928.y, x_5928.z), vec3<f32>(x_5930.x, x_5930.y, x_5930.z));
    let x_5935 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_5935, 0.0f, 1.0f);
    let x_5938 : vec4<f32> = u_xlat8;
    let x_5940 : vec4<f32> = u_xlat8;
    let x_5942 : vec2<f32> = (vec2<f32>(x_5938.x, x_5938.w) * vec2<f32>(x_5940.x, x_5940.w));
    let x_5943 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_5942.x, x_5942.y, x_5943.z, x_5943.w);
    let x_5946 : f32 = u_xlat8.y;
    let x_5948 : f32 = u_xlat55.x;
    u_xlat34.x = ((x_5946 * x_5948) + 1.00001001358032226562f);
    let x_5953 : f32 = u_xlat34.x;
    let x_5955 : f32 = u_xlat34.x;
    u_xlat34.x = (x_5953 * x_5955);
    let x_5959 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_5959, 0.10000000149011611938f);
    let x_5963 : f32 = u_xlat8.x;
    let x_5965 : f32 = u_xlat34.x;
    u_xlat8.x = (x_5963 * x_5965);
    let x_5968 : f32 = u_xlat84;
    let x_5970 : f32 = u_xlat8.x;
    u_xlat8.x = (x_5968 * x_5970);
    let x_5973 : f32 = u_xlat82;
    let x_5975 : f32 = u_xlat8.x;
    u_xlat8.x = (x_5973 / x_5975);
    let x_5978 : vec4<f32> = u_xlat8;
    let x_5981 : vec4<f32> = u_xlat6;
    let x_5983 : vec3<f32> = ((vec3<f32>(x_5978.x, x_5978.x, x_5978.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + vec3<f32>(x_5981.x, x_5981.y, x_5981.z));
    let x_5984 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_5983.x, x_5983.y, x_5983.z, x_5984.w);
    let x_5986 : vec4<f32> = u_xlat8;
    let x_5988 : vec4<f32> = u_xlat9;
    let x_5991 : vec3<f32> = u_xlat33;
    u_xlat33 = ((vec3<f32>(x_5986.x, x_5986.y, x_5986.z) * vec3<f32>(x_5988.x, x_5988.z, x_5988.w)) + x_5991);

    continuing {
      let x_5993 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_5993 + bitcast<u32>(1i));
    }
  }
  let x_5995 : vec3<f32> = u_xlat26;
  let x_5996 : vec3<f32> = u_xlat7;
  let x_5999 : vec3<f32> = u_xlat28;
  u_xlat0 = ((x_5995 * vec3<f32>(x_5996.x, x_5996.x, x_5996.x)) + x_5999);
  let x_6001 : vec3<f32> = u_xlat33;
  let x_6002 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_6001 + x_6002);
  let x_6006 : vec4<f32> = vs_INTERP6;
  let x_6008 : vec3<f32> = u_xlat1;
  let x_6010 : vec3<f32> = u_xlat0;
  let x_6011 : vec3<f32> = ((vec3<f32>(x_6006.w, x_6006.w, x_6006.w) * x_6008) + x_6010);
  let x_6012 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_6011.x, x_6011.y, x_6011.z, x_6012.w);
  let x_6014 : bool = u_xlatb29;
  let x_6015 : f32 = u_xlat79;
  SV_Target0.w = select(1.0f, x_6015, x_6014);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(4) vs_INTERP9_param : vec3<f32>, @location(0) vs_INTERP4_param : vec4<f32>, @location(3) vs_INTERP8_param : vec3<f32>, @location(1) vs_INTERP5_param : vec4<f32>, @location(2) vs_INTERP6_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP9 = vs_INTERP9_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP6 = vs_INTERP6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


