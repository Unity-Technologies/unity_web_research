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

@group(0) @binding(5) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(11) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP5 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

@group(1) @binding(5) var<uniform> x_267 : UnityPerMaterial;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(6) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(12) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat34 : vec3<f32>;

var<private> vs_INTERP6 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_371 : LightShadows;

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

var<private> u_xlat54 : vec2<f32>;

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

@group(1) @binding(4) var<uniform> x_3353 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlat85 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu0 : u32;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu82 : u32;

var<private> u_xlati59 : i32;

var<private> u_xlati82 : i32;

@group(1) @binding(1) var<uniform> x_3830 : AdditionalLights;

var<private> u_xlat86 : f32;

var<private> u_xlati86 : i32;

var<private> u_xlatb87 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat88 : f32;

var<private> u_xlat87 : f32;

var<private> u_xlatb86 : bool;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_LinearClamp : sampler;

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
  var x_3306 : f32;
  var x_3436 : f32;
  var x_3447 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_3987 : f32;
  var x_3997 : f32;
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
  let x_1942 : vec3<f32> = (x_1939 * vec3<f32>(x_1940.x, x_1940.x, x_1940.x));
  let x_1943 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1942.x, x_1942.y, x_1942.z, x_1943.w);
  u_xlat3.w = 1.0f;
  let x_1948 : vec4<f32> = x_83.unity_SHAr;
  let x_1949 : vec4<f32> = u_xlat3;
  u_xlat4.x = dot(x_1948, x_1949);
  let x_1954 : vec4<f32> = x_83.unity_SHAg;
  let x_1955 : vec4<f32> = u_xlat3;
  u_xlat4.y = dot(x_1954, x_1955);
  let x_1960 : vec4<f32> = x_83.unity_SHAb;
  let x_1961 : vec4<f32> = u_xlat3;
  u_xlat4.z = dot(x_1960, x_1961);
  let x_1964 : vec4<f32> = u_xlat3;
  let x_1966 : vec4<f32> = u_xlat3;
  u_xlat6 = (vec4<f32>(x_1964.y, x_1964.z, x_1964.z, x_1964.x) * vec4<f32>(x_1966.x, x_1966.y, x_1966.z, x_1966.z));
  let x_1971 : vec4<f32> = x_83.unity_SHBr;
  let x_1972 : vec4<f32> = u_xlat6;
  u_xlat9.x = dot(x_1971, x_1972);
  let x_1977 : vec4<f32> = x_83.unity_SHBg;
  let x_1978 : vec4<f32> = u_xlat6;
  u_xlat9.y = dot(x_1977, x_1978);
  let x_1982 : vec4<f32> = x_83.unity_SHBb;
  let x_1983 : vec4<f32> = u_xlat6;
  u_xlat9.z = dot(x_1982, x_1983);
  let x_1987 : f32 = u_xlat3.y;
  let x_1989 : f32 = u_xlat3.y;
  u_xlat26.x = (x_1987 * x_1989);
  let x_1993 : f32 = u_xlat3.x;
  let x_1995 : f32 = u_xlat3.x;
  let x_1998 : f32 = u_xlat26.x;
  u_xlat26.x = ((x_1993 * x_1995) + -(x_1998));
  let x_2004 : vec4<f32> = x_83.unity_SHC;
  let x_2006 : vec3<f32> = u_xlat26;
  let x_2009 : vec4<f32> = u_xlat9;
  u_xlat26 = ((vec3<f32>(x_2004.x, x_2004.y, x_2004.z) * vec3<f32>(x_2006.x, x_2006.x, x_2006.x)) + vec3<f32>(x_2009.x, x_2009.y, x_2009.z));
  let x_2012 : vec3<f32> = u_xlat26;
  let x_2013 : vec3<f32> = u_xlat4;
  u_xlat26 = (x_2012 + x_2013);
  let x_2015 : vec3<f32> = u_xlat26;
  u_xlat26 = max(x_2015, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_2019 : f32 = u_xlat8.x;
  u_xlat8.x = x_2019;
  let x_2022 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_2022, 0.0f, 1.0f);
  let x_2025 : f32 = u_xlat79;
  u_xlat79 = x_2025;
  let x_2026 : f32 = u_xlat79;
  u_xlat79 = clamp(x_2026, 0.0f, 1.0f);
  let x_2028 : vec4<f32> = u_xlat7;
  u_xlat4 = (vec3<f32>(x_2028.x, x_2028.y, x_2028.z) * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_2034 : f32 = u_xlat8.x;
  u_xlat54.x = (-(x_2034) + 1.0f);
  let x_2039 : f32 = u_xlat54.x;
  let x_2041 : f32 = u_xlat54.x;
  u_xlat80 = (x_2039 * x_2041);
  let x_2043 : f32 = u_xlat80;
  u_xlat80 = max(x_2043, 0.0078125f);
  let x_2047 : f32 = u_xlat80;
  let x_2048 : f32 = u_xlat80;
  u_xlat81 = (x_2047 * x_2048);
  let x_2051 : f32 = u_xlat8.x;
  u_xlat82 = (x_2051 + 0.04000002145767211914f);
  let x_2054 : f32 = u_xlat82;
  u_xlat82 = min(x_2054, 1.0f);
  let x_2057 : f32 = u_xlat80;
  u_xlat83 = ((x_2057 * 4.0f) + 2.0f);
  let x_2062 : f32 = vs_INTERP6.w;
  u_xlat6.x = min(x_2062, 1.0f);
  let x_2065 : bool = u_xlatb0;
  if (x_2065) {
    let x_2069 : f32 = x_371.x_MainLightShadowParams.y;
    u_xlatb0 = (x_2069 == 1.0f);
    let x_2071 : bool = u_xlatb0;
    if (x_2071) {
      let x_2075 : vec4<f32> = vs_INTERP3;
      let x_2078 : vec4<f32> = x_371.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_2075.x, x_2075.y, x_2075.x, x_2075.y) + x_2078);
      let x_2081 : vec4<f32> = u_xlat7;
      let x_2082 : vec2<f32> = vec2<f32>(x_2081.x, x_2081.y);
      let x_2084 : f32 = vs_INTERP3.z;
      txVec30 = vec3<f32>(x_2082.x, x_2082.y, x_2084);
      let x_2091 : vec3<f32> = txVec30;
      let x_2093 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2091.xy, x_2091.z);
      u_xlat8.x = x_2093;
      let x_2096 : vec4<f32> = u_xlat7;
      let x_2097 : vec2<f32> = vec2<f32>(x_2096.z, x_2096.w);
      let x_2099 : f32 = vs_INTERP3.z;
      txVec31 = vec3<f32>(x_2097.x, x_2097.y, x_2099);
      let x_2106 : vec3<f32> = txVec31;
      let x_2108 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2106.xy, x_2106.z);
      u_xlat8.y = x_2108;
      let x_2110 : vec4<f32> = vs_INTERP3;
      let x_2113 : vec4<f32> = x_371.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_2110.x, x_2110.y, x_2110.x, x_2110.y) + x_2113);
      let x_2116 : vec4<f32> = u_xlat7;
      let x_2117 : vec2<f32> = vec2<f32>(x_2116.x, x_2116.y);
      let x_2119 : f32 = vs_INTERP3.z;
      txVec32 = vec3<f32>(x_2117.x, x_2117.y, x_2119);
      let x_2126 : vec3<f32> = txVec32;
      let x_2128 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2126.xy, x_2126.z);
      u_xlat8.z = x_2128;
      let x_2131 : vec4<f32> = u_xlat7;
      let x_2132 : vec2<f32> = vec2<f32>(x_2131.z, x_2131.w);
      let x_2134 : f32 = vs_INTERP3.z;
      txVec33 = vec3<f32>(x_2132.x, x_2132.y, x_2134);
      let x_2141 : vec3<f32> = txVec33;
      let x_2143 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2141.xy, x_2141.z);
      u_xlat8.w = x_2143;
      let x_2145 : vec4<f32> = u_xlat8;
      u_xlat0.x = dot(x_2145, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_2151 : f32 = x_371.x_MainLightShadowParams.y;
      u_xlatb32.x = (x_2151 == 2.0f);
      let x_2155 : bool = u_xlatb32.x;
      if (x_2155) {
        let x_2159 : vec4<f32> = vs_INTERP3;
        let x_2162 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2165 : vec2<f32> = ((vec2<f32>(x_2159.x, x_2159.y) * vec2<f32>(x_2162.z, x_2162.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2166 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_2165.x, x_2165.y, x_2166.z);
        let x_2168 : vec3<f32> = u_xlat32;
        let x_2170 : vec2<f32> = floor(vec2<f32>(x_2168.x, x_2168.y));
        let x_2171 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_2170.x, x_2170.y, x_2171.z);
        let x_2173 : vec4<f32> = vs_INTERP3;
        let x_2176 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2179 : vec3<f32> = u_xlat32;
        let x_2182 : vec2<f32> = ((vec2<f32>(x_2173.x, x_2173.y) * vec2<f32>(x_2176.z, x_2176.w)) + -(vec2<f32>(x_2179.x, x_2179.y)));
        let x_2183 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2182.x, x_2182.y, x_2183.z, x_2183.w);
        let x_2185 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_2185.x, x_2185.x, x_2185.y, x_2185.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2188 : vec4<f32> = u_xlat8;
        let x_2190 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2188.x, x_2188.x, x_2188.z, x_2188.z) * vec4<f32>(x_2190.x, x_2190.x, x_2190.z, x_2190.z));
        let x_2194 : vec4<f32> = u_xlat9;
        u_xlat59 = (vec2<f32>(x_2194.y, x_2194.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_2197 : vec4<f32> = u_xlat9;
        let x_2200 : vec4<f32> = u_xlat7;
        let x_2203 : vec2<f32> = ((vec2<f32>(x_2197.x, x_2197.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2200.x, x_2200.y)));
        let x_2204 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2203.x, x_2204.y, x_2203.y, x_2204.w);
        let x_2206 : vec4<f32> = u_xlat7;
        let x_2209 : vec2<f32> = (-(vec2<f32>(x_2206.x, x_2206.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2210 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2209.x, x_2209.y, x_2210.z, x_2210.w);
        let x_2213 : vec4<f32> = u_xlat7;
        u_xlat61 = min(vec2<f32>(x_2213.x, x_2213.y), vec2<f32>(0.0f, 0.0f));
        let x_2216 : vec2<f32> = u_xlat61;
        let x_2218 : vec2<f32> = u_xlat61;
        let x_2220 : vec4<f32> = u_xlat9;
        u_xlat61 = ((-(x_2216) * x_2218) + vec2<f32>(x_2220.x, x_2220.y));
        let x_2223 : vec4<f32> = u_xlat7;
        let x_2225 : vec2<f32> = max(vec2<f32>(x_2223.x, x_2223.y), vec2<f32>(0.0f, 0.0f));
        let x_2226 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2225.x, x_2225.y, x_2226.z, x_2226.w);
        let x_2228 : vec4<f32> = u_xlat7;
        let x_2231 : vec4<f32> = u_xlat7;
        let x_2234 : vec4<f32> = u_xlat8;
        let x_2236 : vec2<f32> = ((-(vec2<f32>(x_2228.x, x_2228.y)) * vec2<f32>(x_2231.x, x_2231.y)) + vec2<f32>(x_2234.y, x_2234.w));
        let x_2237 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2236.x, x_2236.y, x_2237.z, x_2237.w);
        let x_2239 : vec2<f32> = u_xlat61;
        u_xlat61 = (x_2239 + vec2<f32>(1.0f, 1.0f));
        let x_2241 : vec4<f32> = u_xlat7;
        let x_2243 : vec2<f32> = (vec2<f32>(x_2241.x, x_2241.y) + vec2<f32>(1.0f, 1.0f));
        let x_2244 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2243.x, x_2243.y, x_2244.z, x_2244.w);
        let x_2246 : vec4<f32> = u_xlat8;
        let x_2248 : vec2<f32> = (vec2<f32>(x_2246.x, x_2246.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2249 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2248.x, x_2248.y, x_2249.z, x_2249.w);
        let x_2251 : vec4<f32> = u_xlat9;
        let x_2253 : vec2<f32> = (vec2<f32>(x_2251.x, x_2251.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2254 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2253.x, x_2253.y, x_2254.z, x_2254.w);
        let x_2256 : vec2<f32> = u_xlat61;
        let x_2257 : vec2<f32> = (x_2256 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2258 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2257.x, x_2257.y, x_2258.z, x_2258.w);
        let x_2260 : vec4<f32> = u_xlat7;
        let x_2262 : vec2<f32> = (vec2<f32>(x_2260.x, x_2260.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2263 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2262.x, x_2262.y, x_2263.z, x_2263.w);
        let x_2265 : vec4<f32> = u_xlat8;
        let x_2267 : vec2<f32> = (vec2<f32>(x_2265.y, x_2265.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2268 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2267.x, x_2267.y, x_2268.z, x_2268.w);
        let x_2271 : f32 = u_xlat9.x;
        u_xlat10.z = x_2271;
        let x_2274 : f32 = u_xlat7.x;
        u_xlat10.w = x_2274;
        let x_2277 : f32 = u_xlat12.x;
        u_xlat11.z = x_2277;
        let x_2280 : f32 = u_xlat59.x;
        u_xlat11.w = x_2280;
        let x_2282 : vec4<f32> = u_xlat10;
        let x_2284 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_2282.z, x_2282.w, x_2282.x, x_2282.z) + vec4<f32>(x_2284.z, x_2284.w, x_2284.x, x_2284.z));
        let x_2288 : f32 = u_xlat10.y;
        u_xlat9.z = x_2288;
        let x_2291 : f32 = u_xlat7.y;
        u_xlat9.w = x_2291;
        let x_2294 : f32 = u_xlat11.y;
        u_xlat12.z = x_2294;
        let x_2297 : f32 = u_xlat59.y;
        u_xlat12.w = x_2297;
        let x_2299 : vec4<f32> = u_xlat9;
        let x_2301 : vec4<f32> = u_xlat12;
        let x_2303 : vec3<f32> = (vec3<f32>(x_2299.z, x_2299.y, x_2299.w) + vec3<f32>(x_2301.z, x_2301.y, x_2301.w));
        let x_2304 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2303.x, x_2303.y, x_2303.z, x_2304.w);
        let x_2306 : vec4<f32> = u_xlat11;
        let x_2308 : vec4<f32> = u_xlat8;
        let x_2310 : vec3<f32> = (vec3<f32>(x_2306.x, x_2306.z, x_2306.w) / vec3<f32>(x_2308.z, x_2308.w, x_2308.y));
        let x_2311 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2310.x, x_2310.y, x_2310.z, x_2311.w);
        let x_2313 : vec4<f32> = u_xlat9;
        let x_2315 : vec3<f32> = (vec3<f32>(x_2313.x, x_2313.y, x_2313.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2316 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2315.x, x_2315.y, x_2315.z, x_2316.w);
        let x_2318 : vec4<f32> = u_xlat12;
        let x_2320 : vec4<f32> = u_xlat7;
        let x_2322 : vec3<f32> = (vec3<f32>(x_2318.z, x_2318.y, x_2318.w) / vec3<f32>(x_2320.x, x_2320.y, x_2320.z));
        let x_2323 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2322.x, x_2322.y, x_2322.z, x_2323.w);
        let x_2325 : vec4<f32> = u_xlat10;
        let x_2327 : vec3<f32> = (vec3<f32>(x_2325.x, x_2325.y, x_2325.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2328 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2327.x, x_2327.y, x_2327.z, x_2328.w);
        let x_2330 : vec4<f32> = u_xlat9;
        let x_2333 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2335 : vec3<f32> = (vec3<f32>(x_2330.y, x_2330.x, x_2330.z) * vec3<f32>(x_2333.x, x_2333.x, x_2333.x));
        let x_2336 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2335.x, x_2335.y, x_2335.z, x_2336.w);
        let x_2338 : vec4<f32> = u_xlat10;
        let x_2341 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2343 : vec3<f32> = (vec3<f32>(x_2338.x, x_2338.y, x_2338.z) * vec3<f32>(x_2341.y, x_2341.y, x_2341.y));
        let x_2344 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2343.x, x_2343.y, x_2343.z, x_2344.w);
        let x_2347 : f32 = u_xlat10.x;
        u_xlat9.w = x_2347;
        let x_2349 : vec3<f32> = u_xlat32;
        let x_2352 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2355 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_2349.x, x_2349.y, x_2349.x, x_2349.y) * vec4<f32>(x_2352.x, x_2352.y, x_2352.x, x_2352.y)) + vec4<f32>(x_2355.y, x_2355.w, x_2355.x, x_2355.w));
        let x_2358 : vec3<f32> = u_xlat32;
        let x_2361 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2364 : vec4<f32> = u_xlat9;
        let x_2366 : vec2<f32> = ((vec2<f32>(x_2358.x, x_2358.y) * vec2<f32>(x_2361.x, x_2361.y)) + vec2<f32>(x_2364.z, x_2364.w));
        let x_2367 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2366.x, x_2366.y, x_2367.z, x_2367.w);
        let x_2370 : f32 = u_xlat9.y;
        u_xlat10.w = x_2370;
        let x_2372 : vec4<f32> = u_xlat10;
        let x_2373 : vec2<f32> = vec2<f32>(x_2372.y, x_2372.z);
        let x_2374 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2374.x, x_2373.x, x_2374.z, x_2373.y);
        let x_2376 : vec3<f32> = u_xlat32;
        let x_2379 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2382 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_2376.x, x_2376.y, x_2376.x, x_2376.y) * vec4<f32>(x_2379.x, x_2379.y, x_2379.x, x_2379.y)) + vec4<f32>(x_2382.x, x_2382.y, x_2382.z, x_2382.y));
        let x_2385 : vec3<f32> = u_xlat32;
        let x_2388 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2391 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_2385.x, x_2385.y, x_2385.x, x_2385.y) * vec4<f32>(x_2388.x, x_2388.y, x_2388.x, x_2388.y)) + vec4<f32>(x_2391.w, x_2391.y, x_2391.w, x_2391.z));
        let x_2394 : vec3<f32> = u_xlat32;
        let x_2397 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2400 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_2394.x, x_2394.y, x_2394.x, x_2394.y) * vec4<f32>(x_2397.x, x_2397.y, x_2397.x, x_2397.y)) + vec4<f32>(x_2400.x, x_2400.w, x_2400.z, x_2400.w));
        let x_2403 : vec4<f32> = u_xlat7;
        let x_2405 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_2403.x, x_2403.x, x_2403.x, x_2403.y) * vec4<f32>(x_2405.z, x_2405.w, x_2405.y, x_2405.z));
        let x_2408 : vec4<f32> = u_xlat7;
        let x_2410 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_2408.y, x_2408.y, x_2408.z, x_2408.z) * x_2410);
        let x_2413 : f32 = u_xlat7.z;
        let x_2415 : f32 = u_xlat8.y;
        u_xlat32.x = (x_2413 * x_2415);
        let x_2419 : vec4<f32> = u_xlat11;
        let x_2420 : vec2<f32> = vec2<f32>(x_2419.x, x_2419.y);
        let x_2422 : f32 = vs_INTERP3.z;
        txVec34 = vec3<f32>(x_2420.x, x_2420.y, x_2422);
        let x_2430 : vec3<f32> = txVec34;
        let x_2432 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2430.xy, x_2430.z);
        u_xlat58 = x_2432;
        let x_2434 : vec4<f32> = u_xlat11;
        let x_2435 : vec2<f32> = vec2<f32>(x_2434.z, x_2434.w);
        let x_2437 : f32 = vs_INTERP3.z;
        txVec35 = vec3<f32>(x_2435.x, x_2435.y, x_2437);
        let x_2445 : vec3<f32> = txVec35;
        let x_2447 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2445.xy, x_2445.z);
        u_xlat84 = x_2447;
        let x_2448 : f32 = u_xlat84;
        let x_2450 : f32 = u_xlat14.y;
        u_xlat84 = (x_2448 * x_2450);
        let x_2453 : f32 = u_xlat14.x;
        let x_2454 : f32 = u_xlat58;
        let x_2456 : f32 = u_xlat84;
        u_xlat58 = ((x_2453 * x_2454) + x_2456);
        let x_2459 : vec4<f32> = u_xlat12;
        let x_2460 : vec2<f32> = vec2<f32>(x_2459.x, x_2459.y);
        let x_2462 : f32 = vs_INTERP3.z;
        txVec36 = vec3<f32>(x_2460.x, x_2460.y, x_2462);
        let x_2469 : vec3<f32> = txVec36;
        let x_2471 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2469.xy, x_2469.z);
        u_xlat84 = x_2471;
        let x_2473 : f32 = u_xlat14.z;
        let x_2474 : f32 = u_xlat84;
        let x_2476 : f32 = u_xlat58;
        u_xlat58 = ((x_2473 * x_2474) + x_2476);
        let x_2479 : vec4<f32> = u_xlat10;
        let x_2480 : vec2<f32> = vec2<f32>(x_2479.x, x_2479.y);
        let x_2482 : f32 = vs_INTERP3.z;
        txVec37 = vec3<f32>(x_2480.x, x_2480.y, x_2482);
        let x_2489 : vec3<f32> = txVec37;
        let x_2491 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2489.xy, x_2489.z);
        u_xlat84 = x_2491;
        let x_2493 : f32 = u_xlat14.w;
        let x_2494 : f32 = u_xlat84;
        let x_2496 : f32 = u_xlat58;
        u_xlat58 = ((x_2493 * x_2494) + x_2496);
        let x_2499 : vec4<f32> = u_xlat13;
        let x_2500 : vec2<f32> = vec2<f32>(x_2499.x, x_2499.y);
        let x_2502 : f32 = vs_INTERP3.z;
        txVec38 = vec3<f32>(x_2500.x, x_2500.y, x_2502);
        let x_2509 : vec3<f32> = txVec38;
        let x_2511 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2509.xy, x_2509.z);
        u_xlat84 = x_2511;
        let x_2513 : f32 = u_xlat15.x;
        let x_2514 : f32 = u_xlat84;
        let x_2516 : f32 = u_xlat58;
        u_xlat58 = ((x_2513 * x_2514) + x_2516);
        let x_2519 : vec4<f32> = u_xlat13;
        let x_2520 : vec2<f32> = vec2<f32>(x_2519.z, x_2519.w);
        let x_2522 : f32 = vs_INTERP3.z;
        txVec39 = vec3<f32>(x_2520.x, x_2520.y, x_2522);
        let x_2529 : vec3<f32> = txVec39;
        let x_2531 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2529.xy, x_2529.z);
        u_xlat84 = x_2531;
        let x_2533 : f32 = u_xlat15.y;
        let x_2534 : f32 = u_xlat84;
        let x_2536 : f32 = u_xlat58;
        u_xlat58 = ((x_2533 * x_2534) + x_2536);
        let x_2539 : vec4<f32> = u_xlat10;
        let x_2540 : vec2<f32> = vec2<f32>(x_2539.z, x_2539.w);
        let x_2542 : f32 = vs_INTERP3.z;
        txVec40 = vec3<f32>(x_2540.x, x_2540.y, x_2542);
        let x_2549 : vec3<f32> = txVec40;
        let x_2551 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2549.xy, x_2549.z);
        u_xlat84 = x_2551;
        let x_2553 : f32 = u_xlat15.z;
        let x_2554 : f32 = u_xlat84;
        let x_2556 : f32 = u_xlat58;
        u_xlat58 = ((x_2553 * x_2554) + x_2556);
        let x_2559 : vec4<f32> = u_xlat9;
        let x_2560 : vec2<f32> = vec2<f32>(x_2559.x, x_2559.y);
        let x_2562 : f32 = vs_INTERP3.z;
        txVec41 = vec3<f32>(x_2560.x, x_2560.y, x_2562);
        let x_2569 : vec3<f32> = txVec41;
        let x_2571 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2569.xy, x_2569.z);
        u_xlat84 = x_2571;
        let x_2573 : f32 = u_xlat15.w;
        let x_2574 : f32 = u_xlat84;
        let x_2576 : f32 = u_xlat58;
        u_xlat58 = ((x_2573 * x_2574) + x_2576);
        let x_2579 : vec4<f32> = u_xlat9;
        let x_2580 : vec2<f32> = vec2<f32>(x_2579.z, x_2579.w);
        let x_2582 : f32 = vs_INTERP3.z;
        txVec42 = vec3<f32>(x_2580.x, x_2580.y, x_2582);
        let x_2589 : vec3<f32> = txVec42;
        let x_2591 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2589.xy, x_2589.z);
        u_xlat84 = x_2591;
        let x_2593 : f32 = u_xlat32.x;
        let x_2594 : f32 = u_xlat84;
        let x_2596 : f32 = u_xlat58;
        u_xlat0.x = ((x_2593 * x_2594) + x_2596);
      } else {
        let x_2600 : vec4<f32> = vs_INTERP3;
        let x_2603 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2606 : vec2<f32> = ((vec2<f32>(x_2600.x, x_2600.y) * vec2<f32>(x_2603.z, x_2603.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2607 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_2606.x, x_2606.y, x_2607.z);
        let x_2609 : vec3<f32> = u_xlat32;
        let x_2611 : vec2<f32> = floor(vec2<f32>(x_2609.x, x_2609.y));
        let x_2612 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_2611.x, x_2611.y, x_2612.z);
        let x_2614 : vec4<f32> = vs_INTERP3;
        let x_2617 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2620 : vec3<f32> = u_xlat32;
        let x_2623 : vec2<f32> = ((vec2<f32>(x_2614.x, x_2614.y) * vec2<f32>(x_2617.z, x_2617.w)) + -(vec2<f32>(x_2620.x, x_2620.y)));
        let x_2624 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2623.x, x_2623.y, x_2624.z, x_2624.w);
        let x_2626 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_2626.x, x_2626.x, x_2626.y, x_2626.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2629 : vec4<f32> = u_xlat8;
        let x_2631 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2629.x, x_2629.x, x_2629.z, x_2629.z) * vec4<f32>(x_2631.x, x_2631.x, x_2631.z, x_2631.z));
        let x_2634 : vec4<f32> = u_xlat9;
        let x_2636 : vec2<f32> = (vec2<f32>(x_2634.y, x_2634.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_2637 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2637.x, x_2636.x, x_2637.z, x_2636.y);
        let x_2639 : vec4<f32> = u_xlat9;
        let x_2642 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_2639.x, x_2639.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2642.x, x_2642.y)));
        let x_2646 : vec4<f32> = u_xlat7;
        let x_2649 : vec2<f32> = (-(vec2<f32>(x_2646.x, x_2646.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2650 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2649.x, x_2650.y, x_2649.y, x_2650.w);
        let x_2652 : vec4<f32> = u_xlat7;
        let x_2654 : vec2<f32> = min(vec2<f32>(x_2652.x, x_2652.y), vec2<f32>(0.0f, 0.0f));
        let x_2655 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2654.x, x_2654.y, x_2655.z, x_2655.w);
        let x_2657 : vec4<f32> = u_xlat9;
        let x_2660 : vec4<f32> = u_xlat9;
        let x_2663 : vec4<f32> = u_xlat8;
        let x_2665 : vec2<f32> = ((-(vec2<f32>(x_2657.x, x_2657.y)) * vec2<f32>(x_2660.x, x_2660.y)) + vec2<f32>(x_2663.x, x_2663.z));
        let x_2666 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2665.x, x_2666.y, x_2665.y, x_2666.w);
        let x_2668 : vec4<f32> = u_xlat7;
        let x_2670 : vec2<f32> = max(vec2<f32>(x_2668.x, x_2668.y), vec2<f32>(0.0f, 0.0f));
        let x_2671 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2670.x, x_2670.y, x_2671.z, x_2671.w);
        let x_2673 : vec4<f32> = u_xlat9;
        let x_2676 : vec4<f32> = u_xlat9;
        let x_2679 : vec4<f32> = u_xlat8;
        let x_2681 : vec2<f32> = ((-(vec2<f32>(x_2673.x, x_2673.y)) * vec2<f32>(x_2676.x, x_2676.y)) + vec2<f32>(x_2679.y, x_2679.w));
        let x_2682 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2682.x, x_2681.x, x_2682.z, x_2681.y);
        let x_2684 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_2684 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_2687 : f32 = u_xlat8.y;
        u_xlat9.z = (x_2687 * 0.08163200318813323975f);
        let x_2690 : vec2<f32> = u_xlat59;
        let x_2692 : vec2<f32> = (vec2<f32>(x_2690.y, x_2690.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2693 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2692.x, x_2692.y, x_2693.z, x_2693.w);
        let x_2695 : vec4<f32> = u_xlat8;
        u_xlat59 = (vec2<f32>(x_2695.x, x_2695.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2699 : f32 = u_xlat8.w;
        u_xlat11.z = (x_2699 * 0.08163200318813323975f);
        let x_2703 : f32 = u_xlat11.y;
        u_xlat9.x = x_2703;
        let x_2705 : vec4<f32> = u_xlat7;
        let x_2708 : vec2<f32> = ((vec2<f32>(x_2705.x, x_2705.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2709 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2709.x, x_2708.x, x_2709.z, x_2708.y);
        let x_2711 : vec4<f32> = u_xlat7;
        let x_2714 : vec2<f32> = ((vec2<f32>(x_2711.x, x_2711.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2715 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2714.x, x_2715.y, x_2714.y, x_2715.w);
        let x_2718 : f32 = u_xlat59.x;
        u_xlat8.y = x_2718;
        let x_2721 : f32 = u_xlat10.y;
        u_xlat8.w = x_2721;
        let x_2723 : vec4<f32> = u_xlat8;
        let x_2724 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_2723 + x_2724);
        let x_2726 : vec4<f32> = u_xlat7;
        let x_2729 : vec2<f32> = ((vec2<f32>(x_2726.y, x_2726.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2730 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2730.x, x_2729.x, x_2730.z, x_2729.y);
        let x_2732 : vec4<f32> = u_xlat7;
        let x_2735 : vec2<f32> = ((vec2<f32>(x_2732.y, x_2732.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2736 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2735.x, x_2736.y, x_2735.y, x_2736.w);
        let x_2739 : f32 = u_xlat59.y;
        u_xlat10.y = x_2739;
        let x_2741 : vec4<f32> = u_xlat10;
        let x_2742 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_2741 + x_2742);
        let x_2744 : vec4<f32> = u_xlat8;
        let x_2745 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_2744 / x_2745);
        let x_2747 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_2747 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2749 : vec4<f32> = u_xlat10;
        let x_2750 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_2749 / x_2750);
        let x_2752 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_2752 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2754 : vec4<f32> = u_xlat8;
        let x_2757 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_2754.w, x_2754.x, x_2754.y, x_2754.z) * vec4<f32>(x_2757.x, x_2757.x, x_2757.x, x_2757.x));
        let x_2760 : vec4<f32> = u_xlat10;
        let x_2763 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_2760.x, x_2760.w, x_2760.y, x_2760.z) * vec4<f32>(x_2763.y, x_2763.y, x_2763.y, x_2763.y));
        let x_2766 : vec4<f32> = u_xlat8;
        let x_2767 : vec3<f32> = vec3<f32>(x_2766.y, x_2766.z, x_2766.w);
        let x_2768 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2767.x, x_2768.y, x_2767.y, x_2767.z);
        let x_2771 : f32 = u_xlat10.x;
        u_xlat11.y = x_2771;
        let x_2773 : vec3<f32> = u_xlat32;
        let x_2776 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2779 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_2773.x, x_2773.y, x_2773.x, x_2773.y) * vec4<f32>(x_2776.x, x_2776.y, x_2776.x, x_2776.y)) + vec4<f32>(x_2779.x, x_2779.y, x_2779.z, x_2779.y));
        let x_2782 : vec3<f32> = u_xlat32;
        let x_2785 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2788 : vec4<f32> = u_xlat11;
        let x_2790 : vec2<f32> = ((vec2<f32>(x_2782.x, x_2782.y) * vec2<f32>(x_2785.x, x_2785.y)) + vec2<f32>(x_2788.w, x_2788.y));
        let x_2791 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_2790.x, x_2790.y, x_2791.z, x_2791.w);
        let x_2794 : f32 = u_xlat11.y;
        u_xlat8.y = x_2794;
        let x_2797 : f32 = u_xlat10.z;
        u_xlat11.y = x_2797;
        let x_2799 : vec3<f32> = u_xlat32;
        let x_2802 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2805 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_2799.x, x_2799.y, x_2799.x, x_2799.y) * vec4<f32>(x_2802.x, x_2802.y, x_2802.x, x_2802.y)) + vec4<f32>(x_2805.x, x_2805.y, x_2805.z, x_2805.y));
        let x_2809 : vec3<f32> = u_xlat32;
        let x_2812 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2815 : vec4<f32> = u_xlat11;
        u_xlat65 = ((vec2<f32>(x_2809.x, x_2809.y) * vec2<f32>(x_2812.x, x_2812.y)) + vec2<f32>(x_2815.w, x_2815.y));
        let x_2819 : f32 = u_xlat11.y;
        u_xlat8.z = x_2819;
        let x_2821 : vec3<f32> = u_xlat32;
        let x_2824 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2827 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_2821.x, x_2821.y, x_2821.x, x_2821.y) * vec4<f32>(x_2824.x, x_2824.y, x_2824.x, x_2824.y)) + vec4<f32>(x_2827.x, x_2827.y, x_2827.x, x_2827.z));
        let x_2831 : f32 = u_xlat10.w;
        u_xlat11.y = x_2831;
        let x_2833 : vec3<f32> = u_xlat32;
        let x_2836 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2839 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_2833.x, x_2833.y, x_2833.x, x_2833.y) * vec4<f32>(x_2836.x, x_2836.y, x_2836.x, x_2836.y)) + vec4<f32>(x_2839.x, x_2839.y, x_2839.z, x_2839.y));
        let x_2842 : vec3<f32> = u_xlat32;
        let x_2845 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2848 : vec4<f32> = u_xlat11;
        let x_2850 : vec2<f32> = ((vec2<f32>(x_2842.x, x_2842.y) * vec2<f32>(x_2845.x, x_2845.y)) + vec2<f32>(x_2848.w, x_2848.y));
        let x_2851 : vec3<f32> = u_xlat34;
        u_xlat34 = vec3<f32>(x_2850.x, x_2850.y, x_2851.z);
        let x_2854 : f32 = u_xlat11.y;
        u_xlat8.w = x_2854;
        let x_2856 : vec3<f32> = u_xlat32;
        let x_2859 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2862 : vec4<f32> = u_xlat8;
        let x_2864 : vec2<f32> = ((vec2<f32>(x_2856.x, x_2856.y) * vec2<f32>(x_2859.x, x_2859.y)) + vec2<f32>(x_2862.x, x_2862.w));
        let x_2865 : vec4<f32> = u_xlat17;
        u_xlat17 = vec4<f32>(x_2864.x, x_2864.y, x_2865.z, x_2865.w);
        let x_2867 : vec4<f32> = u_xlat11;
        let x_2868 : vec3<f32> = vec3<f32>(x_2867.x, x_2867.z, x_2867.w);
        let x_2869 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2868.x, x_2869.y, x_2868.y, x_2868.z);
        let x_2871 : vec3<f32> = u_xlat32;
        let x_2874 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2877 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_2871.x, x_2871.y, x_2871.x, x_2871.y) * vec4<f32>(x_2874.x, x_2874.y, x_2874.x, x_2874.y)) + vec4<f32>(x_2877.x, x_2877.y, x_2877.z, x_2877.y));
        let x_2880 : vec3<f32> = u_xlat32;
        let x_2883 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2886 : vec4<f32> = u_xlat10;
        u_xlat62 = ((vec2<f32>(x_2880.x, x_2880.y) * vec2<f32>(x_2883.x, x_2883.y)) + vec2<f32>(x_2886.w, x_2886.y));
        let x_2890 : f32 = u_xlat8.x;
        u_xlat10.x = x_2890;
        let x_2892 : vec3<f32> = u_xlat32;
        let x_2895 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2898 : vec4<f32> = u_xlat10;
        let x_2900 : vec2<f32> = ((vec2<f32>(x_2892.x, x_2892.y) * vec2<f32>(x_2895.x, x_2895.y)) + vec2<f32>(x_2898.x, x_2898.y));
        let x_2901 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_2900.x, x_2900.y, x_2901.z);
        let x_2903 : vec4<f32> = u_xlat7;
        let x_2905 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_2903.x, x_2903.x, x_2903.x, x_2903.x) * x_2905);
        let x_2907 : vec4<f32> = u_xlat7;
        let x_2909 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_2907.y, x_2907.y, x_2907.y, x_2907.y) * x_2909);
        let x_2911 : vec4<f32> = u_xlat7;
        let x_2913 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_2911.z, x_2911.z, x_2911.z, x_2911.z) * x_2913);
        let x_2915 : vec4<f32> = u_xlat7;
        let x_2917 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_2915.w, x_2915.w, x_2915.w, x_2915.w) * x_2917);
        let x_2920 : vec4<f32> = u_xlat12;
        let x_2921 : vec2<f32> = vec2<f32>(x_2920.x, x_2920.y);
        let x_2923 : f32 = vs_INTERP3.z;
        txVec43 = vec3<f32>(x_2921.x, x_2921.y, x_2923);
        let x_2930 : vec3<f32> = txVec43;
        let x_2932 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2930.xy, x_2930.z);
        u_xlat84 = x_2932;
        let x_2934 : vec4<f32> = u_xlat12;
        let x_2935 : vec2<f32> = vec2<f32>(x_2934.z, x_2934.w);
        let x_2937 : f32 = vs_INTERP3.z;
        txVec44 = vec3<f32>(x_2935.x, x_2935.y, x_2937);
        let x_2944 : vec3<f32> = txVec44;
        let x_2946 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2944.xy, x_2944.z);
        u_xlat8.x = x_2946;
        let x_2949 : f32 = u_xlat8.x;
        let x_2951 : f32 = u_xlat18.y;
        u_xlat8.x = (x_2949 * x_2951);
        let x_2955 : f32 = u_xlat18.x;
        let x_2956 : f32 = u_xlat84;
        let x_2959 : f32 = u_xlat8.x;
        u_xlat84 = ((x_2955 * x_2956) + x_2959);
        let x_2962 : vec4<f32> = u_xlat13;
        let x_2963 : vec2<f32> = vec2<f32>(x_2962.x, x_2962.y);
        let x_2965 : f32 = vs_INTERP3.z;
        txVec45 = vec3<f32>(x_2963.x, x_2963.y, x_2965);
        let x_2972 : vec3<f32> = txVec45;
        let x_2974 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2972.xy, x_2972.z);
        u_xlat8.x = x_2974;
        let x_2977 : f32 = u_xlat18.z;
        let x_2979 : f32 = u_xlat8.x;
        let x_2981 : f32 = u_xlat84;
        u_xlat84 = ((x_2977 * x_2979) + x_2981);
        let x_2984 : vec4<f32> = u_xlat15;
        let x_2985 : vec2<f32> = vec2<f32>(x_2984.x, x_2984.y);
        let x_2987 : f32 = vs_INTERP3.z;
        txVec46 = vec3<f32>(x_2985.x, x_2985.y, x_2987);
        let x_2994 : vec3<f32> = txVec46;
        let x_2996 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2994.xy, x_2994.z);
        u_xlat8.x = x_2996;
        let x_2999 : f32 = u_xlat18.w;
        let x_3001 : f32 = u_xlat8.x;
        let x_3003 : f32 = u_xlat84;
        u_xlat84 = ((x_2999 * x_3001) + x_3003);
        let x_3006 : vec4<f32> = u_xlat14;
        let x_3007 : vec2<f32> = vec2<f32>(x_3006.x, x_3006.y);
        let x_3009 : f32 = vs_INTERP3.z;
        txVec47 = vec3<f32>(x_3007.x, x_3007.y, x_3009);
        let x_3016 : vec3<f32> = txVec47;
        let x_3018 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3016.xy, x_3016.z);
        u_xlat8.x = x_3018;
        let x_3021 : f32 = u_xlat19.x;
        let x_3023 : f32 = u_xlat8.x;
        let x_3025 : f32 = u_xlat84;
        u_xlat84 = ((x_3021 * x_3023) + x_3025);
        let x_3028 : vec4<f32> = u_xlat14;
        let x_3029 : vec2<f32> = vec2<f32>(x_3028.z, x_3028.w);
        let x_3031 : f32 = vs_INTERP3.z;
        txVec48 = vec3<f32>(x_3029.x, x_3029.y, x_3031);
        let x_3038 : vec3<f32> = txVec48;
        let x_3040 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3038.xy, x_3038.z);
        u_xlat8.x = x_3040;
        let x_3043 : f32 = u_xlat19.y;
        let x_3045 : f32 = u_xlat8.x;
        let x_3047 : f32 = u_xlat84;
        u_xlat84 = ((x_3043 * x_3045) + x_3047);
        let x_3050 : vec2<f32> = u_xlat65;
        let x_3052 : f32 = vs_INTERP3.z;
        txVec49 = vec3<f32>(x_3050.x, x_3050.y, x_3052);
        let x_3059 : vec3<f32> = txVec49;
        let x_3061 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3059.xy, x_3059.z);
        u_xlat8.x = x_3061;
        let x_3064 : f32 = u_xlat19.z;
        let x_3066 : f32 = u_xlat8.x;
        let x_3068 : f32 = u_xlat84;
        u_xlat84 = ((x_3064 * x_3066) + x_3068);
        let x_3071 : vec4<f32> = u_xlat15;
        let x_3072 : vec2<f32> = vec2<f32>(x_3071.z, x_3071.w);
        let x_3074 : f32 = vs_INTERP3.z;
        txVec50 = vec3<f32>(x_3072.x, x_3072.y, x_3074);
        let x_3081 : vec3<f32> = txVec50;
        let x_3083 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3081.xy, x_3081.z);
        u_xlat8.x = x_3083;
        let x_3086 : f32 = u_xlat19.w;
        let x_3088 : f32 = u_xlat8.x;
        let x_3090 : f32 = u_xlat84;
        u_xlat84 = ((x_3086 * x_3088) + x_3090);
        let x_3093 : vec4<f32> = u_xlat16;
        let x_3094 : vec2<f32> = vec2<f32>(x_3093.x, x_3093.y);
        let x_3096 : f32 = vs_INTERP3.z;
        txVec51 = vec3<f32>(x_3094.x, x_3094.y, x_3096);
        let x_3103 : vec3<f32> = txVec51;
        let x_3105 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3103.xy, x_3103.z);
        u_xlat8.x = x_3105;
        let x_3108 : f32 = u_xlat20.x;
        let x_3110 : f32 = u_xlat8.x;
        let x_3112 : f32 = u_xlat84;
        u_xlat84 = ((x_3108 * x_3110) + x_3112);
        let x_3115 : vec4<f32> = u_xlat16;
        let x_3116 : vec2<f32> = vec2<f32>(x_3115.z, x_3115.w);
        let x_3118 : f32 = vs_INTERP3.z;
        txVec52 = vec3<f32>(x_3116.x, x_3116.y, x_3118);
        let x_3125 : vec3<f32> = txVec52;
        let x_3127 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3125.xy, x_3125.z);
        u_xlat8.x = x_3127;
        let x_3130 : f32 = u_xlat20.y;
        let x_3132 : f32 = u_xlat8.x;
        let x_3134 : f32 = u_xlat84;
        u_xlat84 = ((x_3130 * x_3132) + x_3134);
        let x_3137 : vec3<f32> = u_xlat34;
        let x_3138 : vec2<f32> = vec2<f32>(x_3137.x, x_3137.y);
        let x_3140 : f32 = vs_INTERP3.z;
        txVec53 = vec3<f32>(x_3138.x, x_3138.y, x_3140);
        let x_3147 : vec3<f32> = txVec53;
        let x_3149 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3147.xy, x_3147.z);
        u_xlat8.x = x_3149;
        let x_3152 : f32 = u_xlat20.z;
        let x_3154 : f32 = u_xlat8.x;
        let x_3156 : f32 = u_xlat84;
        u_xlat84 = ((x_3152 * x_3154) + x_3156);
        let x_3159 : vec4<f32> = u_xlat17;
        let x_3160 : vec2<f32> = vec2<f32>(x_3159.x, x_3159.y);
        let x_3162 : f32 = vs_INTERP3.z;
        txVec54 = vec3<f32>(x_3160.x, x_3160.y, x_3162);
        let x_3169 : vec3<f32> = txVec54;
        let x_3171 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3169.xy, x_3169.z);
        u_xlat8.x = x_3171;
        let x_3174 : f32 = u_xlat20.w;
        let x_3176 : f32 = u_xlat8.x;
        let x_3178 : f32 = u_xlat84;
        u_xlat84 = ((x_3174 * x_3176) + x_3178);
        let x_3181 : vec4<f32> = u_xlat11;
        let x_3182 : vec2<f32> = vec2<f32>(x_3181.x, x_3181.y);
        let x_3184 : f32 = vs_INTERP3.z;
        txVec55 = vec3<f32>(x_3182.x, x_3182.y, x_3184);
        let x_3191 : vec3<f32> = txVec55;
        let x_3193 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3191.xy, x_3191.z);
        u_xlat8.x = x_3193;
        let x_3196 : f32 = u_xlat7.x;
        let x_3198 : f32 = u_xlat8.x;
        let x_3200 : f32 = u_xlat84;
        u_xlat84 = ((x_3196 * x_3198) + x_3200);
        let x_3203 : vec4<f32> = u_xlat11;
        let x_3204 : vec2<f32> = vec2<f32>(x_3203.z, x_3203.w);
        let x_3206 : f32 = vs_INTERP3.z;
        txVec56 = vec3<f32>(x_3204.x, x_3204.y, x_3206);
        let x_3213 : vec3<f32> = txVec56;
        let x_3215 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3213.xy, x_3213.z);
        u_xlat7.x = x_3215;
        let x_3218 : f32 = u_xlat7.y;
        let x_3220 : f32 = u_xlat7.x;
        let x_3222 : f32 = u_xlat84;
        u_xlat84 = ((x_3218 * x_3220) + x_3222);
        let x_3225 : vec2<f32> = u_xlat62;
        let x_3227 : f32 = vs_INTERP3.z;
        txVec57 = vec3<f32>(x_3225.x, x_3225.y, x_3227);
        let x_3234 : vec3<f32> = txVec57;
        let x_3236 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3234.xy, x_3234.z);
        u_xlat7.x = x_3236;
        let x_3239 : f32 = u_xlat7.z;
        let x_3241 : f32 = u_xlat7.x;
        let x_3243 : f32 = u_xlat84;
        u_xlat84 = ((x_3239 * x_3241) + x_3243);
        let x_3246 : vec3<f32> = u_xlat32;
        let x_3247 : vec2<f32> = vec2<f32>(x_3246.x, x_3246.y);
        let x_3249 : f32 = vs_INTERP3.z;
        txVec58 = vec3<f32>(x_3247.x, x_3247.y, x_3249);
        let x_3256 : vec3<f32> = txVec58;
        let x_3258 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3256.xy, x_3256.z);
        u_xlat32.x = x_3258;
        let x_3261 : f32 = u_xlat7.w;
        let x_3263 : f32 = u_xlat32.x;
        let x_3265 : f32 = u_xlat84;
        u_xlat0.x = ((x_3261 * x_3263) + x_3265);
      }
    }
  } else {
    let x_3270 : vec4<f32> = vs_INTERP3;
    let x_3271 : vec2<f32> = vec2<f32>(x_3270.x, x_3270.y);
    let x_3273 : f32 = vs_INTERP3.z;
    txVec59 = vec3<f32>(x_3271.x, x_3271.y, x_3273);
    let x_3280 : vec3<f32> = txVec59;
    let x_3282 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3280.xy, x_3280.z);
    u_xlat0.x = x_3282;
  }
  let x_3285 : f32 = u_xlat0.x;
  let x_3287 : f32 = x_371.x_MainLightShadowParams.x;
  let x_3290 : f32 = u_xlat2.x;
  u_xlat0.x = ((x_3285 * x_3287) + x_3290);
  let x_3295 : f32 = vs_INTERP3.z;
  u_xlatb2 = (0.0f >= x_3295);
  let x_3298 : f32 = vs_INTERP3.z;
  u_xlatb32.x = (x_3298 >= 1.0f);
  let x_3301 : bool = u_xlatb2;
  let x_3303 : bool = u_xlatb32.x;
  u_xlatb2 = (x_3301 | x_3303);
  let x_3305 : bool = u_xlatb2;
  if (x_3305) {
    x_3306 = 1.0f;
  } else {
    let x_3311 : f32 = u_xlat0.x;
    x_3306 = x_3311;
  }
  let x_3312 : f32 = x_3306;
  u_xlat0.x = x_3312;
  let x_3314 : vec3<f32> = vs_INTERP8;
  let x_3316 : vec3<f32> = x_147.x_WorldSpaceCameraPos;
  u_xlat32 = (x_3314 + -(x_3316));
  let x_3319 : vec3<f32> = u_xlat32;
  let x_3320 : vec3<f32> = u_xlat32;
  u_xlat2.x = dot(x_3319, x_3320);
  let x_3324 : f32 = u_xlat2.x;
  let x_3326 : f32 = x_371.x_MainLightShadowParams.z;
  let x_3329 : f32 = x_371.x_MainLightShadowParams.w;
  u_xlat32.x = ((x_3324 * x_3326) + x_3329);
  let x_3333 : f32 = u_xlat32.x;
  u_xlat32.x = clamp(x_3333, 0.0f, 1.0f);
  let x_3337 : f32 = u_xlat0.x;
  u_xlat58 = (-(x_3337) + 1.0f);
  let x_3341 : f32 = u_xlat32.x;
  let x_3342 : f32 = u_xlat58;
  let x_3345 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_3341 * x_3342) + x_3345);
  let x_3355 : f32 = x_3353.x_MainLightCookieTextureFormat;
  u_xlatb32.x = !((x_3355 == -1.0f));
  let x_3359 : bool = u_xlatb32.x;
  if (x_3359) {
    let x_3362 : vec3<f32> = vs_INTERP8;
    let x_3365 : vec4<f32> = x_3353.x_MainLightWorldToLight[1i];
    let x_3367 : vec2<f32> = (vec2<f32>(x_3362.y, x_3362.y) * vec2<f32>(x_3365.x, x_3365.y));
    let x_3368 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_3367.x, x_3367.y, x_3368.z);
    let x_3371 : vec4<f32> = x_3353.x_MainLightWorldToLight[0i];
    let x_3373 : vec3<f32> = vs_INTERP8;
    let x_3376 : vec3<f32> = u_xlat32;
    let x_3378 : vec2<f32> = ((vec2<f32>(x_3371.x, x_3371.y) * vec2<f32>(x_3373.x, x_3373.x)) + vec2<f32>(x_3376.x, x_3376.y));
    let x_3379 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_3378.x, x_3378.y, x_3379.z);
    let x_3382 : vec4<f32> = x_3353.x_MainLightWorldToLight[2i];
    let x_3384 : vec3<f32> = vs_INTERP8;
    let x_3387 : vec3<f32> = u_xlat32;
    let x_3389 : vec2<f32> = ((vec2<f32>(x_3382.x, x_3382.y) * vec2<f32>(x_3384.z, x_3384.z)) + vec2<f32>(x_3387.x, x_3387.y));
    let x_3390 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_3389.x, x_3389.y, x_3390.z);
    let x_3392 : vec3<f32> = u_xlat32;
    let x_3395 : vec4<f32> = x_3353.x_MainLightWorldToLight[3i];
    let x_3397 : vec2<f32> = (vec2<f32>(x_3392.x, x_3392.y) + vec2<f32>(x_3395.x, x_3395.y));
    let x_3398 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_3397.x, x_3397.y, x_3398.z);
    let x_3400 : vec3<f32> = u_xlat32;
    let x_3403 : vec2<f32> = ((vec2<f32>(x_3400.x, x_3400.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_3404 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_3403.x, x_3403.y, x_3404.z);
    let x_3411 : vec3<f32> = u_xlat32;
    let x_3414 : f32 = x_147.x_GlobalMipBias.x;
    let x_3415 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_3411.x, x_3411.y), x_3414);
    u_xlat7 = x_3415;
    let x_3417 : f32 = x_3353.x_MainLightCookieTextureFormat;
    let x_3419 : f32 = x_3353.x_MainLightCookieTextureFormat;
    let x_3421 : f32 = x_3353.x_MainLightCookieTextureFormat;
    let x_3423 : f32 = x_3353.x_MainLightCookieTextureFormat;
    let x_3424 : vec4<f32> = vec4<f32>(x_3417, x_3419, x_3421, x_3423);
    let x_3432 : vec4<bool> = (vec4<f32>(x_3424.x, x_3424.y, x_3424.z, x_3424.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb32 = vec2<bool>(x_3432.x, x_3432.y);
    let x_3435 : bool = u_xlatb32.y;
    if (x_3435) {
      let x_3440 : f32 = u_xlat7.w;
      x_3436 = x_3440;
    } else {
      let x_3443 : f32 = u_xlat7.x;
      x_3436 = x_3443;
    }
    let x_3444 : f32 = x_3436;
    u_xlat58 = x_3444;
    let x_3446 : bool = u_xlatb32.x;
    if (x_3446) {
      let x_3450 : vec4<f32> = u_xlat7;
      x_3447 = vec3<f32>(x_3450.x, x_3450.y, x_3450.z);
    } else {
      let x_3453 : f32 = u_xlat58;
      x_3447 = vec3<f32>(x_3453, x_3453, x_3453);
    }
    let x_3455 : vec3<f32> = x_3447;
    u_xlat32 = x_3455;
  } else {
    u_xlat32.x = 1.0f;
    u_xlat32.y = 1.0f;
    u_xlat32.z = 1.0f;
  }
  let x_3460 : vec3<f32> = u_xlat32;
  let x_3462 : vec4<f32> = x_147.x_MainLightColor;
  u_xlat32 = (x_3460 * vec3<f32>(x_3462.x, x_3462.y, x_3462.z));
  let x_3465 : vec3<f32> = u_xlat5;
  let x_3467 : vec4<f32> = u_xlat3;
  u_xlat7.x = dot(-(x_3465), vec3<f32>(x_3467.x, x_3467.y, x_3467.z));
  let x_3472 : f32 = u_xlat7.x;
  let x_3474 : f32 = u_xlat7.x;
  u_xlat7.x = (x_3472 + x_3474);
  let x_3477 : vec4<f32> = u_xlat3;
  let x_3479 : vec4<f32> = u_xlat7;
  let x_3483 : vec3<f32> = u_xlat5;
  let x_3485 : vec3<f32> = ((vec3<f32>(x_3477.x, x_3477.y, x_3477.z) * -(vec3<f32>(x_3479.x, x_3479.x, x_3479.x))) + -(x_3483));
  let x_3486 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3485.x, x_3485.y, x_3485.z, x_3486.w);
  let x_3489 : vec4<f32> = u_xlat3;
  let x_3491 : vec3<f32> = u_xlat5;
  u_xlat85 = dot(vec3<f32>(x_3489.x, x_3489.y, x_3489.z), x_3491);
  let x_3493 : f32 = u_xlat85;
  u_xlat85 = clamp(x_3493, 0.0f, 1.0f);
  let x_3495 : f32 = u_xlat85;
  u_xlat85 = (-(x_3495) + 1.0f);
  let x_3498 : f32 = u_xlat85;
  let x_3499 : f32 = u_xlat85;
  u_xlat85 = (x_3498 * x_3499);
  let x_3501 : f32 = u_xlat85;
  let x_3502 : f32 = u_xlat85;
  u_xlat85 = (x_3501 * x_3502);
  let x_3505 : f32 = u_xlat54.x;
  u_xlat8.x = ((-(x_3505) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_3513 : f32 = u_xlat54.x;
  let x_3515 : f32 = u_xlat8.x;
  u_xlat54.x = (x_3513 * x_3515);
  let x_3519 : f32 = u_xlat54.x;
  u_xlat54.x = (x_3519 * 6.0f);
  let x_3531 : vec4<f32> = u_xlat7;
  let x_3534 : f32 = u_xlat54.x;
  let x_3535 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_3531.x, x_3531.y, x_3531.z), x_3534);
  u_xlat8 = x_3535;
  let x_3537 : f32 = u_xlat8.w;
  u_xlat54.x = (x_3537 + -1.0f);
  let x_3541 : f32 = x_83.unity_SpecCube0_HDR.w;
  let x_3543 : f32 = u_xlat54.x;
  u_xlat54.x = ((x_3541 * x_3543) + 1.0f);
  let x_3548 : f32 = u_xlat54.x;
  u_xlat54.x = max(x_3548, 0.0f);
  let x_3552 : f32 = u_xlat54.x;
  u_xlat54.x = log2(x_3552);
  let x_3556 : f32 = u_xlat54.x;
  let x_3558 : f32 = x_83.unity_SpecCube0_HDR.y;
  u_xlat54.x = (x_3556 * x_3558);
  let x_3562 : f32 = u_xlat54.x;
  u_xlat54.x = exp2(x_3562);
  let x_3566 : f32 = u_xlat54.x;
  let x_3568 : f32 = x_83.unity_SpecCube0_HDR.x;
  u_xlat54.x = (x_3566 * x_3568);
  let x_3571 : vec4<f32> = u_xlat8;
  let x_3573 : vec2<f32> = u_xlat54;
  let x_3575 : vec3<f32> = (vec3<f32>(x_3571.x, x_3571.y, x_3571.z) * vec3<f32>(x_3573.x, x_3573.x, x_3573.x));
  let x_3576 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3575.x, x_3575.y, x_3575.z, x_3576.w);
  let x_3578 : f32 = u_xlat80;
  let x_3580 : f32 = u_xlat80;
  u_xlat54 = ((vec2<f32>(x_3578, x_3578) * vec2<f32>(x_3580, x_3580)) + vec2<f32>(-1.0f, 1.0f));
  let x_3586 : f32 = u_xlat54.y;
  u_xlat80 = (1.0f / x_3586);
  let x_3588 : f32 = u_xlat82;
  u_xlat82 = (x_3588 + -0.03999999910593032837f);
  let x_3591 : f32 = u_xlat85;
  let x_3592 : f32 = u_xlat82;
  u_xlat82 = ((x_3591 * x_3592) + 0.03999999910593032837f);
  let x_3596 : f32 = u_xlat80;
  let x_3597 : f32 = u_xlat82;
  u_xlat80 = (x_3596 * x_3597);
  let x_3599 : f32 = u_xlat80;
  let x_3601 : vec4<f32> = u_xlat7;
  let x_3603 : vec3<f32> = (vec3<f32>(x_3599, x_3599, x_3599) * vec3<f32>(x_3601.x, x_3601.y, x_3601.z));
  let x_3604 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3603.x, x_3603.y, x_3603.z, x_3604.w);
  let x_3606 : vec3<f32> = u_xlat26;
  let x_3607 : vec3<f32> = u_xlat4;
  let x_3609 : vec4<f32> = u_xlat7;
  u_xlat26 = ((x_3606 * x_3607) + vec3<f32>(x_3609.x, x_3609.y, x_3609.z));
  let x_3613 : f32 = u_xlat0.x;
  let x_3615 : f32 = x_83.unity_LightData.z;
  u_xlat0.x = (x_3613 * x_3615);
  let x_3618 : vec4<f32> = u_xlat3;
  let x_3621 : vec4<f32> = x_147.x_MainLightPosition;
  u_xlat80 = dot(vec3<f32>(x_3618.x, x_3618.y, x_3618.z), vec3<f32>(x_3621.x, x_3621.y, x_3621.z));
  let x_3624 : f32 = u_xlat80;
  u_xlat80 = clamp(x_3624, 0.0f, 1.0f);
  let x_3627 : f32 = u_xlat0.x;
  let x_3628 : f32 = u_xlat80;
  u_xlat0.x = (x_3627 * x_3628);
  let x_3631 : vec3<f32> = u_xlat0;
  let x_3633 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_3631.x, x_3631.x, x_3631.x) * x_3633);
  let x_3635 : vec3<f32> = u_xlat5;
  let x_3637 : vec4<f32> = x_147.x_MainLightPosition;
  let x_3639 : vec3<f32> = (x_3635 + vec3<f32>(x_3637.x, x_3637.y, x_3637.z));
  let x_3640 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3639.x, x_3639.y, x_3639.z, x_3640.w);
  let x_3642 : vec4<f32> = u_xlat7;
  let x_3644 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(vec3<f32>(x_3642.x, x_3642.y, x_3642.z), vec3<f32>(x_3644.x, x_3644.y, x_3644.z));
  let x_3649 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_3649, 1.17549435e-38f);
  let x_3653 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_3653);
  let x_3656 : vec3<f32> = u_xlat0;
  let x_3658 : vec4<f32> = u_xlat7;
  let x_3660 : vec3<f32> = (vec3<f32>(x_3656.x, x_3656.x, x_3656.x) * vec3<f32>(x_3658.x, x_3658.y, x_3658.z));
  let x_3661 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3660.x, x_3660.y, x_3660.z, x_3661.w);
  let x_3663 : vec4<f32> = u_xlat3;
  let x_3665 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(vec3<f32>(x_3663.x, x_3663.y, x_3663.z), vec3<f32>(x_3665.x, x_3665.y, x_3665.z));
  let x_3670 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_3670, 0.0f, 1.0f);
  let x_3674 : vec4<f32> = x_147.x_MainLightPosition;
  let x_3676 : vec4<f32> = u_xlat7;
  u_xlat80 = dot(vec3<f32>(x_3674.x, x_3674.y, x_3674.z), vec3<f32>(x_3676.x, x_3676.y, x_3676.z));
  let x_3679 : f32 = u_xlat80;
  u_xlat80 = clamp(x_3679, 0.0f, 1.0f);
  let x_3682 : f32 = u_xlat0.x;
  let x_3684 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3682 * x_3684);
  let x_3688 : f32 = u_xlat0.x;
  let x_3690 : f32 = u_xlat54.x;
  u_xlat0.x = ((x_3688 * x_3690) + 1.00001001358032226562f);
  let x_3695 : f32 = u_xlat80;
  let x_3696 : f32 = u_xlat80;
  u_xlat80 = (x_3695 * x_3696);
  let x_3699 : f32 = u_xlat0.x;
  let x_3701 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3699 * x_3701);
  let x_3704 : f32 = u_xlat80;
  u_xlat80 = max(x_3704, 0.10000000149011611938f);
  let x_3708 : f32 = u_xlat0.x;
  let x_3709 : f32 = u_xlat80;
  u_xlat0.x = (x_3708 * x_3709);
  let x_3712 : f32 = u_xlat83;
  let x_3714 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3712 * x_3714);
  let x_3717 : f32 = u_xlat81;
  let x_3719 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3717 / x_3719);
  let x_3722 : vec3<f32> = u_xlat0;
  let x_3726 : vec3<f32> = u_xlat4;
  let x_3727 : vec3<f32> = ((vec3<f32>(x_3722.x, x_3722.x, x_3722.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_3726);
  let x_3728 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3727.x, x_3727.y, x_3727.z, x_3728.w);
  let x_3730 : vec3<f32> = u_xlat32;
  let x_3731 : vec4<f32> = u_xlat7;
  u_xlat32 = (x_3730 * vec3<f32>(x_3731.x, x_3731.y, x_3731.z));
  let x_3736 : f32 = x_147.x_AdditionalLightsCount.x;
  let x_3738 : f32 = x_83.unity_LightData.y;
  u_xlat0.x = min(x_3736, x_3738);
  let x_3743 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_3743));
  let x_3747 : f32 = u_xlat2.x;
  let x_3750 : f32 = x_371.x_AdditionalShadowFadeParams.x;
  let x_3753 : f32 = x_371.x_AdditionalShadowFadeParams.y;
  u_xlat2.x = ((x_3747 * x_3750) + x_3753);
  let x_3757 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_3757, 0.0f, 1.0f);
  let x_3762 : f32 = x_3353.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3764 : f32 = x_3353.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3766 : f32 = x_3353.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3768 : f32 = x_3353.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3769 : vec4<f32> = vec4<f32>(x_3762, x_3764, x_3766, x_3768);
  let x_3775 : vec4<bool> = (vec4<f32>(x_3769.x, x_3769.y, x_3769.z, x_3769.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_3775.x, x_3775.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_3786 : u32 = u_xlatu_loop_1;
    let x_3787 : u32 = u_xlatu0;
    if ((x_3786 < x_3787)) {
    } else {
      break;
    }
    let x_3790 : u32 = u_xlatu_loop_1;
    u_xlatu82 = (x_3790 >> 2u);
    let x_3793 : u32 = u_xlatu_loop_1;
    u_xlati59 = bitcast<i32>((x_3793 & 3u));
    let x_3796 : u32 = u_xlatu82;
    let x_3799 : vec4<f32> = x_83.unity_LightIndices[bitcast<i32>(x_3796)];
    let x_3809 : i32 = u_xlati59;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_3814 : vec4<u32> = indexable[x_3809];
    u_xlat82 = dot(x_3799, bitcast<vec4<f32>>(x_3814));
    let x_3818 : f32 = u_xlat82;
    u_xlati82 = i32(x_3818);
    let x_3820 : vec3<f32> = vs_INTERP8;
    let x_3831 : i32 = u_xlati82;
    let x_3833 : vec4<f32> = x_3830.x_AdditionalLightsPosition[x_3831];
    let x_3836 : i32 = u_xlati82;
    let x_3838 : vec4<f32> = x_3830.x_AdditionalLightsPosition[x_3836];
    let x_3840 : vec3<f32> = ((-(x_3820) * vec3<f32>(x_3833.w, x_3833.w, x_3833.w)) + vec3<f32>(x_3838.x, x_3838.y, x_3838.z));
    let x_3841 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3840.x, x_3840.y, x_3840.z, x_3841.w);
    let x_3843 : vec4<f32> = u_xlat9;
    let x_3845 : vec4<f32> = u_xlat9;
    u_xlat59.x = dot(vec3<f32>(x_3843.x, x_3843.y, x_3843.z), vec3<f32>(x_3845.x, x_3845.y, x_3845.z));
    let x_3850 : f32 = u_xlat59.x;
    u_xlat59.x = max(x_3850, 0.00006103515625f);
    let x_3855 : f32 = u_xlat59.x;
    u_xlat85 = inverseSqrt(x_3855);
    let x_3857 : f32 = u_xlat85;
    let x_3859 : vec4<f32> = u_xlat9;
    let x_3861 : vec3<f32> = (vec3<f32>(x_3857, x_3857, x_3857) * vec3<f32>(x_3859.x, x_3859.y, x_3859.z));
    let x_3862 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3861.x, x_3861.y, x_3861.z, x_3862.w);
    let x_3866 : f32 = u_xlat59.x;
    u_xlat86 = (1.0f / x_3866);
    let x_3869 : f32 = u_xlat59.x;
    let x_3870 : i32 = u_xlati82;
    let x_3872 : f32 = x_3830.x_AdditionalLightsAttenuation[x_3870].x;
    u_xlat59.x = (x_3869 * x_3872);
    let x_3876 : f32 = u_xlat59.x;
    let x_3879 : f32 = u_xlat59.x;
    u_xlat59.x = ((-(x_3876) * x_3879) + 1.0f);
    let x_3884 : f32 = u_xlat59.x;
    u_xlat59.x = max(x_3884, 0.0f);
    let x_3888 : f32 = u_xlat59.x;
    let x_3890 : f32 = u_xlat59.x;
    u_xlat59.x = (x_3888 * x_3890);
    let x_3894 : f32 = u_xlat59.x;
    let x_3895 : f32 = u_xlat86;
    u_xlat59.x = (x_3894 * x_3895);
    let x_3898 : i32 = u_xlati82;
    let x_3900 : vec4<f32> = x_3830.x_AdditionalLightsSpotDir[x_3898];
    let x_3902 : vec4<f32> = u_xlat10;
    u_xlat86 = dot(vec3<f32>(x_3900.x, x_3900.y, x_3900.z), vec3<f32>(x_3902.x, x_3902.y, x_3902.z));
    let x_3905 : f32 = u_xlat86;
    let x_3906 : i32 = u_xlati82;
    let x_3908 : f32 = x_3830.x_AdditionalLightsAttenuation[x_3906].z;
    let x_3910 : i32 = u_xlati82;
    let x_3912 : f32 = x_3830.x_AdditionalLightsAttenuation[x_3910].w;
    u_xlat86 = ((x_3905 * x_3908) + x_3912);
    let x_3914 : f32 = u_xlat86;
    u_xlat86 = clamp(x_3914, 0.0f, 1.0f);
    let x_3916 : f32 = u_xlat86;
    let x_3917 : f32 = u_xlat86;
    u_xlat86 = (x_3916 * x_3917);
    let x_3920 : f32 = u_xlat59.x;
    let x_3921 : f32 = u_xlat86;
    u_xlat59.x = (x_3920 * x_3921);
    let x_3926 : i32 = u_xlati82;
    let x_3928 : f32 = x_371.x_AdditionalShadowParams[x_3926].w;
    u_xlati86 = i32(x_3928);
    let x_3931 : i32 = u_xlati86;
    u_xlatb87 = (x_3931 >= 0i);
    let x_3933 : bool = u_xlatb87;
    if (x_3933) {
      let x_3937 : i32 = u_xlati82;
      let x_3939 : f32 = x_371.x_AdditionalShadowParams[x_3937].z;
      u_xlatb87 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_3939, x_3939, x_3939, x_3939))));
      let x_3943 : bool = u_xlatb87;
      if (x_3943) {
        let x_3948 : vec4<f32> = u_xlat10;
        let x_3951 : vec4<f32> = u_xlat10;
        let x_3954 : vec4<bool> = (abs(vec4<f32>(x_3948.z, x_3948.z, x_3948.y, x_3948.z)) >= abs(vec4<f32>(x_3951.x, x_3951.y, x_3951.x, x_3951.x)));
        let x_3956 : vec3<bool> = vec3<bool>(x_3954.x, x_3954.y, x_3954.z);
        let x_3957 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3956.x, x_3956.y, x_3956.z, x_3957.w);
        let x_3960 : bool = u_xlatb11.y;
        let x_3962 : bool = u_xlatb11.x;
        u_xlatb87 = (x_3960 & x_3962);
        let x_3964 : vec4<f32> = u_xlat10;
        let x_3967 : vec4<bool> = (-(vec4<f32>(x_3964.z, x_3964.y, x_3964.z, x_3964.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_3968 : vec3<bool> = vec3<bool>(x_3967.x, x_3967.y, x_3967.w);
        let x_3969 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3968.x, x_3968.y, x_3969.z, x_3968.z);
        let x_3972 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_3972);
        let x_3977 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_3977);
        let x_3983 : bool = u_xlatb11.w;
        u_xlat88 = select(0.0f, 1.0f, x_3983);
        let x_3986 : bool = u_xlatb11.z;
        if (x_3986) {
          let x_3991 : f32 = u_xlat11.y;
          x_3987 = x_3991;
        } else {
          let x_3993 : f32 = u_xlat88;
          x_3987 = x_3993;
        }
        let x_3994 : f32 = x_3987;
        u_xlat88 = x_3994;
        let x_3996 : bool = u_xlatb87;
        if (x_3996) {
          let x_4001 : f32 = u_xlat11.x;
          x_3997 = x_4001;
        } else {
          let x_4003 : f32 = u_xlat88;
          x_3997 = x_4003;
        }
        let x_4004 : f32 = x_3997;
        u_xlat87 = x_4004;
        let x_4005 : i32 = u_xlati82;
        let x_4007 : f32 = x_371.x_AdditionalShadowParams[x_4005].w;
        u_xlat88 = trunc(x_4007);
        let x_4009 : f32 = u_xlat87;
        let x_4010 : f32 = u_xlat88;
        u_xlat87 = (x_4009 + x_4010);
        let x_4012 : f32 = u_xlat87;
        u_xlati86 = i32(x_4012);
      }
      let x_4014 : i32 = u_xlati86;
      u_xlati86 = (x_4014 << bitcast<u32>(2i));
      let x_4016 : vec3<f32> = vs_INTERP8;
      let x_4019 : i32 = u_xlati86;
      let x_4022 : i32 = u_xlati86;
      let x_4026 : vec4<f32> = x_371.x_AdditionalLightsWorldToShadow[((x_4019 + 1i) / 4i)][((x_4022 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_4016.y, x_4016.y, x_4016.y, x_4016.y) * x_4026);
      let x_4028 : i32 = u_xlati86;
      let x_4030 : i32 = u_xlati86;
      let x_4033 : vec4<f32> = x_371.x_AdditionalLightsWorldToShadow[(x_4028 / 4i)][(x_4030 % 4i)];
      let x_4034 : vec3<f32> = vs_INTERP8;
      let x_4037 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_4033 * vec4<f32>(x_4034.x, x_4034.x, x_4034.x, x_4034.x)) + x_4037);
      let x_4039 : i32 = u_xlati86;
      let x_4042 : i32 = u_xlati86;
      let x_4046 : vec4<f32> = x_371.x_AdditionalLightsWorldToShadow[((x_4039 + 2i) / 4i)][((x_4042 + 2i) % 4i)];
      let x_4047 : vec3<f32> = vs_INTERP8;
      let x_4050 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_4046 * vec4<f32>(x_4047.z, x_4047.z, x_4047.z, x_4047.z)) + x_4050);
      let x_4052 : vec4<f32> = u_xlat11;
      let x_4053 : i32 = u_xlati86;
      let x_4056 : i32 = u_xlati86;
      let x_4060 : vec4<f32> = x_371.x_AdditionalLightsWorldToShadow[((x_4053 + 3i) / 4i)][((x_4056 + 3i) % 4i)];
      u_xlat11 = (x_4052 + x_4060);
      let x_4062 : vec4<f32> = u_xlat11;
      let x_4064 : vec4<f32> = u_xlat11;
      let x_4066 : vec3<f32> = (vec3<f32>(x_4062.x, x_4062.y, x_4062.z) / vec3<f32>(x_4064.w, x_4064.w, x_4064.w));
      let x_4067 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4066.x, x_4066.y, x_4066.z, x_4067.w);
      let x_4070 : i32 = u_xlati82;
      let x_4072 : f32 = x_371.x_AdditionalShadowParams[x_4070].y;
      u_xlatb86 = (0.0f < x_4072);
      let x_4074 : bool = u_xlatb86;
      if (x_4074) {
        let x_4077 : i32 = u_xlati82;
        let x_4079 : f32 = x_371.x_AdditionalShadowParams[x_4077].y;
        u_xlatb86 = (1.0f == x_4079);
        let x_4081 : bool = u_xlatb86;
        if (x_4081) {
          let x_4084 : vec4<f32> = u_xlat11;
          let x_4088 : vec4<f32> = x_371.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_4084.x, x_4084.y, x_4084.x, x_4084.y) + x_4088);
          let x_4091 : vec4<f32> = u_xlat12;
          let x_4092 : vec2<f32> = vec2<f32>(x_4091.x, x_4091.y);
          let x_4094 : f32 = u_xlat11.z;
          txVec60 = vec3<f32>(x_4092.x, x_4092.y, x_4094);
          let x_4102 : vec3<f32> = txVec60;
          let x_4104 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4102.xy, x_4102.z);
          u_xlat13.x = x_4104;
          let x_4107 : vec4<f32> = u_xlat12;
          let x_4108 : vec2<f32> = vec2<f32>(x_4107.z, x_4107.w);
          let x_4110 : f32 = u_xlat11.z;
          txVec61 = vec3<f32>(x_4108.x, x_4108.y, x_4110);
          let x_4117 : vec3<f32> = txVec61;
          let x_4119 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4117.xy, x_4117.z);
          u_xlat13.y = x_4119;
          let x_4121 : vec4<f32> = u_xlat11;
          let x_4125 : vec4<f32> = x_371.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_4121.x, x_4121.y, x_4121.x, x_4121.y) + x_4125);
          let x_4128 : vec4<f32> = u_xlat12;
          let x_4129 : vec2<f32> = vec2<f32>(x_4128.x, x_4128.y);
          let x_4131 : f32 = u_xlat11.z;
          txVec62 = vec3<f32>(x_4129.x, x_4129.y, x_4131);
          let x_4138 : vec3<f32> = txVec62;
          let x_4140 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4138.xy, x_4138.z);
          u_xlat13.z = x_4140;
          let x_4143 : vec4<f32> = u_xlat12;
          let x_4144 : vec2<f32> = vec2<f32>(x_4143.z, x_4143.w);
          let x_4146 : f32 = u_xlat11.z;
          txVec63 = vec3<f32>(x_4144.x, x_4144.y, x_4146);
          let x_4153 : vec3<f32> = txVec63;
          let x_4155 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4153.xy, x_4153.z);
          u_xlat13.w = x_4155;
          let x_4157 : vec4<f32> = u_xlat13;
          u_xlat86 = dot(x_4157, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_4160 : i32 = u_xlati82;
          let x_4162 : f32 = x_371.x_AdditionalShadowParams[x_4160].y;
          u_xlatb87 = (2.0f == x_4162);
          let x_4164 : bool = u_xlatb87;
          if (x_4164) {
            let x_4167 : vec4<f32> = u_xlat11;
            let x_4171 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4174 : vec2<f32> = ((vec2<f32>(x_4167.x, x_4167.y) * vec2<f32>(x_4171.z, x_4171.w)) + vec2<f32>(0.5f, 0.5f));
            let x_4175 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4174.x, x_4174.y, x_4175.z, x_4175.w);
            let x_4177 : vec4<f32> = u_xlat12;
            let x_4179 : vec2<f32> = floor(vec2<f32>(x_4177.x, x_4177.y));
            let x_4180 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4179.x, x_4179.y, x_4180.z, x_4180.w);
            let x_4183 : vec4<f32> = u_xlat11;
            let x_4186 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4189 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_4183.x, x_4183.y) * vec2<f32>(x_4186.z, x_4186.w)) + -(vec2<f32>(x_4189.x, x_4189.y)));
            let x_4193 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_4193.x, x_4193.x, x_4193.y, x_4193.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4196 : vec4<f32> = u_xlat13;
            let x_4198 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_4196.x, x_4196.x, x_4196.z, x_4196.z) * vec4<f32>(x_4198.x, x_4198.x, x_4198.z, x_4198.z));
            let x_4201 : vec4<f32> = u_xlat14;
            let x_4203 : vec2<f32> = (vec2<f32>(x_4201.y, x_4201.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_4204 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4203.x, x_4204.y, x_4203.y, x_4204.w);
            let x_4206 : vec4<f32> = u_xlat14;
            let x_4209 : vec2<f32> = u_xlat64;
            let x_4211 : vec2<f32> = ((vec2<f32>(x_4206.x, x_4206.z) * vec2<f32>(0.5f, 0.5f)) + -(x_4209));
            let x_4212 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4211.x, x_4211.y, x_4212.z, x_4212.w);
            let x_4215 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_4215) + vec2<f32>(1.0f, 1.0f));
            let x_4218 : vec2<f32> = u_xlat64;
            let x_4219 : vec2<f32> = min(x_4218, vec2<f32>(0.0f, 0.0f));
            let x_4220 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4219.x, x_4219.y, x_4220.z, x_4220.w);
            let x_4222 : vec4<f32> = u_xlat15;
            let x_4225 : vec4<f32> = u_xlat15;
            let x_4228 : vec2<f32> = u_xlat66;
            let x_4229 : vec2<f32> = ((-(vec2<f32>(x_4222.x, x_4222.y)) * vec2<f32>(x_4225.x, x_4225.y)) + x_4228);
            let x_4230 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4229.x, x_4229.y, x_4230.z, x_4230.w);
            let x_4232 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_4232, vec2<f32>(0.0f, 0.0f));
            let x_4234 : vec2<f32> = u_xlat64;
            let x_4236 : vec2<f32> = u_xlat64;
            let x_4238 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_4234) * x_4236) + vec2<f32>(x_4238.y, x_4238.w));
            let x_4241 : vec4<f32> = u_xlat15;
            let x_4243 : vec2<f32> = (vec2<f32>(x_4241.x, x_4241.y) + vec2<f32>(1.0f, 1.0f));
            let x_4244 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4243.x, x_4243.y, x_4244.z, x_4244.w);
            let x_4246 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_4246 + vec2<f32>(1.0f, 1.0f));
            let x_4248 : vec4<f32> = u_xlat14;
            let x_4250 : vec2<f32> = (vec2<f32>(x_4248.x, x_4248.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4251 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4250.x, x_4250.y, x_4251.z, x_4251.w);
            let x_4253 : vec2<f32> = u_xlat66;
            let x_4254 : vec2<f32> = (x_4253 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4255 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4254.x, x_4254.y, x_4255.z, x_4255.w);
            let x_4257 : vec4<f32> = u_xlat15;
            let x_4259 : vec2<f32> = (vec2<f32>(x_4257.x, x_4257.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4260 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4259.x, x_4259.y, x_4260.z, x_4260.w);
            let x_4262 : vec2<f32> = u_xlat64;
            let x_4263 : vec2<f32> = (x_4262 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4264 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4263.x, x_4263.y, x_4264.z, x_4264.w);
            let x_4266 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_4266.y, x_4266.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4270 : f32 = u_xlat15.x;
            u_xlat16.z = x_4270;
            let x_4273 : f32 = u_xlat64.x;
            u_xlat16.w = x_4273;
            let x_4276 : f32 = u_xlat17.x;
            u_xlat14.z = x_4276;
            let x_4279 : f32 = u_xlat13.x;
            u_xlat14.w = x_4279;
            let x_4281 : vec4<f32> = u_xlat14;
            let x_4283 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_4281.z, x_4281.w, x_4281.x, x_4281.z) + vec4<f32>(x_4283.z, x_4283.w, x_4283.x, x_4283.z));
            let x_4287 : f32 = u_xlat16.y;
            u_xlat15.z = x_4287;
            let x_4290 : f32 = u_xlat64.y;
            u_xlat15.w = x_4290;
            let x_4293 : f32 = u_xlat14.y;
            u_xlat17.z = x_4293;
            let x_4296 : f32 = u_xlat13.z;
            u_xlat17.w = x_4296;
            let x_4298 : vec4<f32> = u_xlat15;
            let x_4300 : vec4<f32> = u_xlat17;
            let x_4302 : vec3<f32> = (vec3<f32>(x_4298.z, x_4298.y, x_4298.w) + vec3<f32>(x_4300.z, x_4300.y, x_4300.w));
            let x_4303 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4302.x, x_4302.y, x_4302.z, x_4303.w);
            let x_4305 : vec4<f32> = u_xlat14;
            let x_4307 : vec4<f32> = u_xlat18;
            let x_4309 : vec3<f32> = (vec3<f32>(x_4305.x, x_4305.z, x_4305.w) / vec3<f32>(x_4307.z, x_4307.w, x_4307.y));
            let x_4310 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4309.x, x_4309.y, x_4309.z, x_4310.w);
            let x_4312 : vec4<f32> = u_xlat14;
            let x_4314 : vec3<f32> = (vec3<f32>(x_4312.x, x_4312.y, x_4312.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4315 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4314.x, x_4314.y, x_4314.z, x_4315.w);
            let x_4317 : vec4<f32> = u_xlat17;
            let x_4319 : vec4<f32> = u_xlat13;
            let x_4321 : vec3<f32> = (vec3<f32>(x_4317.z, x_4317.y, x_4317.w) / vec3<f32>(x_4319.x, x_4319.y, x_4319.z));
            let x_4322 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4321.x, x_4321.y, x_4321.z, x_4322.w);
            let x_4324 : vec4<f32> = u_xlat15;
            let x_4326 : vec3<f32> = (vec3<f32>(x_4324.x, x_4324.y, x_4324.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4327 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4326.x, x_4326.y, x_4326.z, x_4327.w);
            let x_4329 : vec4<f32> = u_xlat14;
            let x_4332 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4334 : vec3<f32> = (vec3<f32>(x_4329.y, x_4329.x, x_4329.z) * vec3<f32>(x_4332.x, x_4332.x, x_4332.x));
            let x_4335 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4334.x, x_4334.y, x_4334.z, x_4335.w);
            let x_4337 : vec4<f32> = u_xlat15;
            let x_4340 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4342 : vec3<f32> = (vec3<f32>(x_4337.x, x_4337.y, x_4337.z) * vec3<f32>(x_4340.y, x_4340.y, x_4340.y));
            let x_4343 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4342.x, x_4342.y, x_4342.z, x_4343.w);
            let x_4346 : f32 = u_xlat15.x;
            u_xlat14.w = x_4346;
            let x_4348 : vec4<f32> = u_xlat12;
            let x_4351 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4354 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_4348.x, x_4348.y, x_4348.x, x_4348.y) * vec4<f32>(x_4351.x, x_4351.y, x_4351.x, x_4351.y)) + vec4<f32>(x_4354.y, x_4354.w, x_4354.x, x_4354.w));
            let x_4357 : vec4<f32> = u_xlat12;
            let x_4360 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4363 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_4357.x, x_4357.y) * vec2<f32>(x_4360.x, x_4360.y)) + vec2<f32>(x_4363.z, x_4363.w));
            let x_4367 : f32 = u_xlat14.y;
            u_xlat15.w = x_4367;
            let x_4369 : vec4<f32> = u_xlat15;
            let x_4370 : vec2<f32> = vec2<f32>(x_4369.y, x_4369.z);
            let x_4371 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4371.x, x_4370.x, x_4371.z, x_4370.y);
            let x_4373 : vec4<f32> = u_xlat12;
            let x_4376 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4379 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_4373.x, x_4373.y, x_4373.x, x_4373.y) * vec4<f32>(x_4376.x, x_4376.y, x_4376.x, x_4376.y)) + vec4<f32>(x_4379.x, x_4379.y, x_4379.z, x_4379.y));
            let x_4382 : vec4<f32> = u_xlat12;
            let x_4385 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4388 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_4382.x, x_4382.y, x_4382.x, x_4382.y) * vec4<f32>(x_4385.x, x_4385.y, x_4385.x, x_4385.y)) + vec4<f32>(x_4388.w, x_4388.y, x_4388.w, x_4388.z));
            let x_4391 : vec4<f32> = u_xlat12;
            let x_4394 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4397 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_4391.x, x_4391.y, x_4391.x, x_4391.y) * vec4<f32>(x_4394.x, x_4394.y, x_4394.x, x_4394.y)) + vec4<f32>(x_4397.x, x_4397.w, x_4397.z, x_4397.w));
            let x_4400 : vec4<f32> = u_xlat13;
            let x_4402 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_4400.x, x_4400.x, x_4400.x, x_4400.y) * vec4<f32>(x_4402.z, x_4402.w, x_4402.y, x_4402.z));
            let x_4405 : vec4<f32> = u_xlat13;
            let x_4407 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_4405.y, x_4405.y, x_4405.z, x_4405.z) * x_4407);
            let x_4410 : f32 = u_xlat13.z;
            let x_4412 : f32 = u_xlat18.y;
            u_xlat87 = (x_4410 * x_4412);
            let x_4415 : vec4<f32> = u_xlat16;
            let x_4416 : vec2<f32> = vec2<f32>(x_4415.x, x_4415.y);
            let x_4418 : f32 = u_xlat11.z;
            txVec64 = vec3<f32>(x_4416.x, x_4416.y, x_4418);
            let x_4425 : vec3<f32> = txVec64;
            let x_4427 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4425.xy, x_4425.z);
            u_xlat88 = x_4427;
            let x_4429 : vec4<f32> = u_xlat16;
            let x_4430 : vec2<f32> = vec2<f32>(x_4429.z, x_4429.w);
            let x_4432 : f32 = u_xlat11.z;
            txVec65 = vec3<f32>(x_4430.x, x_4430.y, x_4432);
            let x_4440 : vec3<f32> = txVec65;
            let x_4442 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4440.xy, x_4440.z);
            u_xlat89 = x_4442;
            let x_4443 : f32 = u_xlat89;
            let x_4445 : f32 = u_xlat19.y;
            u_xlat89 = (x_4443 * x_4445);
            let x_4448 : f32 = u_xlat19.x;
            let x_4449 : f32 = u_xlat88;
            let x_4451 : f32 = u_xlat89;
            u_xlat88 = ((x_4448 * x_4449) + x_4451);
            let x_4454 : vec2<f32> = u_xlat64;
            let x_4456 : f32 = u_xlat11.z;
            txVec66 = vec3<f32>(x_4454.x, x_4454.y, x_4456);
            let x_4463 : vec3<f32> = txVec66;
            let x_4465 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4463.xy, x_4463.z);
            u_xlat89 = x_4465;
            let x_4467 : f32 = u_xlat19.z;
            let x_4468 : f32 = u_xlat89;
            let x_4470 : f32 = u_xlat88;
            u_xlat88 = ((x_4467 * x_4468) + x_4470);
            let x_4473 : vec4<f32> = u_xlat15;
            let x_4474 : vec2<f32> = vec2<f32>(x_4473.x, x_4473.y);
            let x_4476 : f32 = u_xlat11.z;
            txVec67 = vec3<f32>(x_4474.x, x_4474.y, x_4476);
            let x_4483 : vec3<f32> = txVec67;
            let x_4485 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4483.xy, x_4483.z);
            u_xlat89 = x_4485;
            let x_4487 : f32 = u_xlat19.w;
            let x_4488 : f32 = u_xlat89;
            let x_4490 : f32 = u_xlat88;
            u_xlat88 = ((x_4487 * x_4488) + x_4490);
            let x_4493 : vec4<f32> = u_xlat17;
            let x_4494 : vec2<f32> = vec2<f32>(x_4493.x, x_4493.y);
            let x_4496 : f32 = u_xlat11.z;
            txVec68 = vec3<f32>(x_4494.x, x_4494.y, x_4496);
            let x_4503 : vec3<f32> = txVec68;
            let x_4505 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4503.xy, x_4503.z);
            u_xlat89 = x_4505;
            let x_4507 : f32 = u_xlat20.x;
            let x_4508 : f32 = u_xlat89;
            let x_4510 : f32 = u_xlat88;
            u_xlat88 = ((x_4507 * x_4508) + x_4510);
            let x_4513 : vec4<f32> = u_xlat17;
            let x_4514 : vec2<f32> = vec2<f32>(x_4513.z, x_4513.w);
            let x_4516 : f32 = u_xlat11.z;
            txVec69 = vec3<f32>(x_4514.x, x_4514.y, x_4516);
            let x_4523 : vec3<f32> = txVec69;
            let x_4525 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4523.xy, x_4523.z);
            u_xlat89 = x_4525;
            let x_4527 : f32 = u_xlat20.y;
            let x_4528 : f32 = u_xlat89;
            let x_4530 : f32 = u_xlat88;
            u_xlat88 = ((x_4527 * x_4528) + x_4530);
            let x_4533 : vec4<f32> = u_xlat15;
            let x_4534 : vec2<f32> = vec2<f32>(x_4533.z, x_4533.w);
            let x_4536 : f32 = u_xlat11.z;
            txVec70 = vec3<f32>(x_4534.x, x_4534.y, x_4536);
            let x_4543 : vec3<f32> = txVec70;
            let x_4545 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4543.xy, x_4543.z);
            u_xlat89 = x_4545;
            let x_4547 : f32 = u_xlat20.z;
            let x_4548 : f32 = u_xlat89;
            let x_4550 : f32 = u_xlat88;
            u_xlat88 = ((x_4547 * x_4548) + x_4550);
            let x_4553 : vec4<f32> = u_xlat14;
            let x_4554 : vec2<f32> = vec2<f32>(x_4553.x, x_4553.y);
            let x_4556 : f32 = u_xlat11.z;
            txVec71 = vec3<f32>(x_4554.x, x_4554.y, x_4556);
            let x_4563 : vec3<f32> = txVec71;
            let x_4565 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4563.xy, x_4563.z);
            u_xlat89 = x_4565;
            let x_4567 : f32 = u_xlat20.w;
            let x_4568 : f32 = u_xlat89;
            let x_4570 : f32 = u_xlat88;
            u_xlat88 = ((x_4567 * x_4568) + x_4570);
            let x_4573 : vec4<f32> = u_xlat14;
            let x_4574 : vec2<f32> = vec2<f32>(x_4573.z, x_4573.w);
            let x_4576 : f32 = u_xlat11.z;
            txVec72 = vec3<f32>(x_4574.x, x_4574.y, x_4576);
            let x_4583 : vec3<f32> = txVec72;
            let x_4585 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4583.xy, x_4583.z);
            u_xlat89 = x_4585;
            let x_4586 : f32 = u_xlat87;
            let x_4587 : f32 = u_xlat89;
            let x_4589 : f32 = u_xlat88;
            u_xlat86 = ((x_4586 * x_4587) + x_4589);
          } else {
            let x_4592 : vec4<f32> = u_xlat11;
            let x_4595 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4598 : vec2<f32> = ((vec2<f32>(x_4592.x, x_4592.y) * vec2<f32>(x_4595.z, x_4595.w)) + vec2<f32>(0.5f, 0.5f));
            let x_4599 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4598.x, x_4598.y, x_4599.z, x_4599.w);
            let x_4601 : vec4<f32> = u_xlat12;
            let x_4603 : vec2<f32> = floor(vec2<f32>(x_4601.x, x_4601.y));
            let x_4604 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4603.x, x_4603.y, x_4604.z, x_4604.w);
            let x_4606 : vec4<f32> = u_xlat11;
            let x_4609 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4612 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_4606.x, x_4606.y) * vec2<f32>(x_4609.z, x_4609.w)) + -(vec2<f32>(x_4612.x, x_4612.y)));
            let x_4616 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_4616.x, x_4616.x, x_4616.y, x_4616.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4619 : vec4<f32> = u_xlat13;
            let x_4621 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_4619.x, x_4619.x, x_4619.z, x_4619.z) * vec4<f32>(x_4621.x, x_4621.x, x_4621.z, x_4621.z));
            let x_4624 : vec4<f32> = u_xlat14;
            let x_4626 : vec2<f32> = (vec2<f32>(x_4624.y, x_4624.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_4627 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4627.x, x_4626.x, x_4627.z, x_4626.y);
            let x_4629 : vec4<f32> = u_xlat14;
            let x_4632 : vec2<f32> = u_xlat64;
            let x_4634 : vec2<f32> = ((vec2<f32>(x_4629.x, x_4629.z) * vec2<f32>(0.5f, 0.5f)) + -(x_4632));
            let x_4635 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4634.x, x_4635.y, x_4634.y, x_4635.w);
            let x_4637 : vec2<f32> = u_xlat64;
            let x_4639 : vec2<f32> = (-(x_4637) + vec2<f32>(1.0f, 1.0f));
            let x_4640 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4639.x, x_4639.y, x_4640.z, x_4640.w);
            let x_4642 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_4642, vec2<f32>(0.0f, 0.0f));
            let x_4644 : vec2<f32> = u_xlat66;
            let x_4646 : vec2<f32> = u_xlat66;
            let x_4648 : vec4<f32> = u_xlat14;
            let x_4650 : vec2<f32> = ((-(x_4644) * x_4646) + vec2<f32>(x_4648.x, x_4648.y));
            let x_4651 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4650.x, x_4650.y, x_4651.z, x_4651.w);
            let x_4653 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_4653, vec2<f32>(0.0f, 0.0f));
            let x_4656 : vec2<f32> = u_xlat66;
            let x_4658 : vec2<f32> = u_xlat66;
            let x_4660 : vec4<f32> = u_xlat13;
            let x_4662 : vec2<f32> = ((-(x_4656) * x_4658) + vec2<f32>(x_4660.y, x_4660.w));
            let x_4663 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_4662.x, x_4663.y, x_4662.y);
            let x_4665 : vec4<f32> = u_xlat14;
            let x_4667 : vec2<f32> = (vec2<f32>(x_4665.x, x_4665.y) + vec2<f32>(2.0f, 2.0f));
            let x_4668 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4667.x, x_4667.y, x_4668.z, x_4668.w);
            let x_4670 : vec3<f32> = u_xlat39;
            let x_4672 : vec2<f32> = (vec2<f32>(x_4670.x, x_4670.z) + vec2<f32>(2.0f, 2.0f));
            let x_4673 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4673.x, x_4672.x, x_4673.z, x_4672.y);
            let x_4676 : f32 = u_xlat13.y;
            u_xlat16.z = (x_4676 * 0.08163200318813323975f);
            let x_4679 : vec4<f32> = u_xlat13;
            let x_4681 : vec3<f32> = (vec3<f32>(x_4679.z, x_4679.x, x_4679.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_4682 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4681.x, x_4681.y, x_4681.z, x_4682.w);
            let x_4684 : vec4<f32> = u_xlat14;
            let x_4686 : vec2<f32> = (vec2<f32>(x_4684.x, x_4684.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_4687 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4686.x, x_4686.y, x_4687.z, x_4687.w);
            let x_4690 : f32 = u_xlat17.y;
            u_xlat16.x = x_4690;
            let x_4692 : vec2<f32> = u_xlat64;
            let x_4695 : vec2<f32> = ((vec2<f32>(x_4692.x, x_4692.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4696 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4696.x, x_4695.x, x_4696.z, x_4695.y);
            let x_4698 : vec2<f32> = u_xlat64;
            let x_4701 : vec2<f32> = ((vec2<f32>(x_4698.x, x_4698.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4702 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4701.x, x_4702.y, x_4701.y, x_4702.w);
            let x_4705 : f32 = u_xlat13.x;
            u_xlat14.y = x_4705;
            let x_4708 : f32 = u_xlat15.y;
            u_xlat14.w = x_4708;
            let x_4710 : vec4<f32> = u_xlat14;
            let x_4711 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_4710 + x_4711);
            let x_4713 : vec2<f32> = u_xlat64;
            let x_4716 : vec2<f32> = ((vec2<f32>(x_4713.y, x_4713.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4717 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4717.x, x_4716.x, x_4717.z, x_4716.y);
            let x_4719 : vec2<f32> = u_xlat64;
            let x_4722 : vec2<f32> = ((vec2<f32>(x_4719.y, x_4719.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4723 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4722.x, x_4723.y, x_4722.y, x_4723.w);
            let x_4726 : f32 = u_xlat13.y;
            u_xlat15.y = x_4726;
            let x_4728 : vec4<f32> = u_xlat15;
            let x_4729 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_4728 + x_4729);
            let x_4731 : vec4<f32> = u_xlat14;
            let x_4732 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_4731 / x_4732);
            let x_4734 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_4734 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4736 : vec4<f32> = u_xlat15;
            let x_4737 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_4736 / x_4737);
            let x_4739 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_4739 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4741 : vec4<f32> = u_xlat14;
            let x_4744 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_4741.w, x_4741.x, x_4741.y, x_4741.z) * vec4<f32>(x_4744.x, x_4744.x, x_4744.x, x_4744.x));
            let x_4747 : vec4<f32> = u_xlat15;
            let x_4750 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_4747.x, x_4747.w, x_4747.y, x_4747.z) * vec4<f32>(x_4750.y, x_4750.y, x_4750.y, x_4750.y));
            let x_4753 : vec4<f32> = u_xlat14;
            let x_4754 : vec3<f32> = vec3<f32>(x_4753.y, x_4753.z, x_4753.w);
            let x_4755 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4754.x, x_4755.y, x_4754.y, x_4754.z);
            let x_4758 : f32 = u_xlat15.x;
            u_xlat17.y = x_4758;
            let x_4760 : vec4<f32> = u_xlat12;
            let x_4763 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4766 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_4760.x, x_4760.y, x_4760.x, x_4760.y) * vec4<f32>(x_4763.x, x_4763.y, x_4763.x, x_4763.y)) + vec4<f32>(x_4766.x, x_4766.y, x_4766.z, x_4766.y));
            let x_4769 : vec4<f32> = u_xlat12;
            let x_4772 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4775 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_4769.x, x_4769.y) * vec2<f32>(x_4772.x, x_4772.y)) + vec2<f32>(x_4775.w, x_4775.y));
            let x_4779 : f32 = u_xlat17.y;
            u_xlat14.y = x_4779;
            let x_4782 : f32 = u_xlat15.z;
            u_xlat17.y = x_4782;
            let x_4784 : vec4<f32> = u_xlat12;
            let x_4787 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4790 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_4784.x, x_4784.y, x_4784.x, x_4784.y) * vec4<f32>(x_4787.x, x_4787.y, x_4787.x, x_4787.y)) + vec4<f32>(x_4790.x, x_4790.y, x_4790.z, x_4790.y));
            let x_4793 : vec4<f32> = u_xlat12;
            let x_4796 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4799 : vec4<f32> = u_xlat17;
            let x_4801 : vec2<f32> = ((vec2<f32>(x_4793.x, x_4793.y) * vec2<f32>(x_4796.x, x_4796.y)) + vec2<f32>(x_4799.w, x_4799.y));
            let x_4802 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_4801.x, x_4801.y, x_4802.z, x_4802.w);
            let x_4805 : f32 = u_xlat17.y;
            u_xlat14.z = x_4805;
            let x_4807 : vec4<f32> = u_xlat12;
            let x_4810 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4813 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_4807.x, x_4807.y, x_4807.x, x_4807.y) * vec4<f32>(x_4810.x, x_4810.y, x_4810.x, x_4810.y)) + vec4<f32>(x_4813.x, x_4813.y, x_4813.x, x_4813.z));
            let x_4817 : f32 = u_xlat15.w;
            u_xlat17.y = x_4817;
            let x_4820 : vec4<f32> = u_xlat12;
            let x_4823 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4826 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_4820.x, x_4820.y, x_4820.x, x_4820.y) * vec4<f32>(x_4823.x, x_4823.y, x_4823.x, x_4823.y)) + vec4<f32>(x_4826.x, x_4826.y, x_4826.z, x_4826.y));
            let x_4830 : vec4<f32> = u_xlat12;
            let x_4833 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4836 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_4830.x, x_4830.y) * vec2<f32>(x_4833.x, x_4833.y)) + vec2<f32>(x_4836.w, x_4836.y));
            let x_4840 : f32 = u_xlat17.y;
            u_xlat14.w = x_4840;
            let x_4843 : vec4<f32> = u_xlat12;
            let x_4846 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4849 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_4843.x, x_4843.y) * vec2<f32>(x_4846.x, x_4846.y)) + vec2<f32>(x_4849.x, x_4849.w));
            let x_4852 : vec4<f32> = u_xlat17;
            let x_4853 : vec3<f32> = vec3<f32>(x_4852.x, x_4852.z, x_4852.w);
            let x_4854 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4853.x, x_4854.y, x_4853.y, x_4853.z);
            let x_4856 : vec4<f32> = u_xlat12;
            let x_4859 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4862 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_4856.x, x_4856.y, x_4856.x, x_4856.y) * vec4<f32>(x_4859.x, x_4859.y, x_4859.x, x_4859.y)) + vec4<f32>(x_4862.x, x_4862.y, x_4862.z, x_4862.y));
            let x_4866 : vec4<f32> = u_xlat12;
            let x_4869 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4872 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_4866.x, x_4866.y) * vec2<f32>(x_4869.x, x_4869.y)) + vec2<f32>(x_4872.w, x_4872.y));
            let x_4876 : f32 = u_xlat14.x;
            u_xlat15.x = x_4876;
            let x_4878 : vec4<f32> = u_xlat12;
            let x_4881 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4884 : vec4<f32> = u_xlat15;
            let x_4886 : vec2<f32> = ((vec2<f32>(x_4878.x, x_4878.y) * vec2<f32>(x_4881.x, x_4881.y)) + vec2<f32>(x_4884.x, x_4884.y));
            let x_4887 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4886.x, x_4886.y, x_4887.z, x_4887.w);
            let x_4890 : vec4<f32> = u_xlat13;
            let x_4892 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_4890.x, x_4890.x, x_4890.x, x_4890.x) * x_4892);
            let x_4895 : vec4<f32> = u_xlat13;
            let x_4897 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_4895.y, x_4895.y, x_4895.y, x_4895.y) * x_4897);
            let x_4900 : vec4<f32> = u_xlat13;
            let x_4902 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_4900.z, x_4900.z, x_4900.z, x_4900.z) * x_4902);
            let x_4904 : vec4<f32> = u_xlat13;
            let x_4906 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_4904.w, x_4904.w, x_4904.w, x_4904.w) * x_4906);
            let x_4909 : vec4<f32> = u_xlat18;
            let x_4910 : vec2<f32> = vec2<f32>(x_4909.x, x_4909.y);
            let x_4912 : f32 = u_xlat11.z;
            txVec73 = vec3<f32>(x_4910.x, x_4910.y, x_4912);
            let x_4919 : vec3<f32> = txVec73;
            let x_4921 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4919.xy, x_4919.z);
            u_xlat87 = x_4921;
            let x_4923 : vec4<f32> = u_xlat18;
            let x_4924 : vec2<f32> = vec2<f32>(x_4923.z, x_4923.w);
            let x_4926 : f32 = u_xlat11.z;
            txVec74 = vec3<f32>(x_4924.x, x_4924.y, x_4926);
            let x_4933 : vec3<f32> = txVec74;
            let x_4935 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4933.xy, x_4933.z);
            u_xlat88 = x_4935;
            let x_4936 : f32 = u_xlat88;
            let x_4938 : f32 = u_xlat23.y;
            u_xlat88 = (x_4936 * x_4938);
            let x_4941 : f32 = u_xlat23.x;
            let x_4942 : f32 = u_xlat87;
            let x_4944 : f32 = u_xlat88;
            u_xlat87 = ((x_4941 * x_4942) + x_4944);
            let x_4947 : vec2<f32> = u_xlat64;
            let x_4949 : f32 = u_xlat11.z;
            txVec75 = vec3<f32>(x_4947.x, x_4947.y, x_4949);
            let x_4956 : vec3<f32> = txVec75;
            let x_4958 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4956.xy, x_4956.z);
            u_xlat88 = x_4958;
            let x_4960 : f32 = u_xlat23.z;
            let x_4961 : f32 = u_xlat88;
            let x_4963 : f32 = u_xlat87;
            u_xlat87 = ((x_4960 * x_4961) + x_4963);
            let x_4966 : vec4<f32> = u_xlat21;
            let x_4967 : vec2<f32> = vec2<f32>(x_4966.x, x_4966.y);
            let x_4969 : f32 = u_xlat11.z;
            txVec76 = vec3<f32>(x_4967.x, x_4967.y, x_4969);
            let x_4976 : vec3<f32> = txVec76;
            let x_4978 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4976.xy, x_4976.z);
            u_xlat88 = x_4978;
            let x_4980 : f32 = u_xlat23.w;
            let x_4981 : f32 = u_xlat88;
            let x_4983 : f32 = u_xlat87;
            u_xlat87 = ((x_4980 * x_4981) + x_4983);
            let x_4986 : vec4<f32> = u_xlat19;
            let x_4987 : vec2<f32> = vec2<f32>(x_4986.x, x_4986.y);
            let x_4989 : f32 = u_xlat11.z;
            txVec77 = vec3<f32>(x_4987.x, x_4987.y, x_4989);
            let x_4996 : vec3<f32> = txVec77;
            let x_4998 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4996.xy, x_4996.z);
            u_xlat88 = x_4998;
            let x_5000 : f32 = u_xlat24.x;
            let x_5001 : f32 = u_xlat88;
            let x_5003 : f32 = u_xlat87;
            u_xlat87 = ((x_5000 * x_5001) + x_5003);
            let x_5006 : vec4<f32> = u_xlat19;
            let x_5007 : vec2<f32> = vec2<f32>(x_5006.z, x_5006.w);
            let x_5009 : f32 = u_xlat11.z;
            txVec78 = vec3<f32>(x_5007.x, x_5007.y, x_5009);
            let x_5016 : vec3<f32> = txVec78;
            let x_5018 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5016.xy, x_5016.z);
            u_xlat88 = x_5018;
            let x_5020 : f32 = u_xlat24.y;
            let x_5021 : f32 = u_xlat88;
            let x_5023 : f32 = u_xlat87;
            u_xlat87 = ((x_5020 * x_5021) + x_5023);
            let x_5026 : vec4<f32> = u_xlat20;
            let x_5027 : vec2<f32> = vec2<f32>(x_5026.x, x_5026.y);
            let x_5029 : f32 = u_xlat11.z;
            txVec79 = vec3<f32>(x_5027.x, x_5027.y, x_5029);
            let x_5036 : vec3<f32> = txVec79;
            let x_5038 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5036.xy, x_5036.z);
            u_xlat88 = x_5038;
            let x_5040 : f32 = u_xlat24.z;
            let x_5041 : f32 = u_xlat88;
            let x_5043 : f32 = u_xlat87;
            u_xlat87 = ((x_5040 * x_5041) + x_5043);
            let x_5046 : vec4<f32> = u_xlat21;
            let x_5047 : vec2<f32> = vec2<f32>(x_5046.z, x_5046.w);
            let x_5049 : f32 = u_xlat11.z;
            txVec80 = vec3<f32>(x_5047.x, x_5047.y, x_5049);
            let x_5056 : vec3<f32> = txVec80;
            let x_5058 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5056.xy, x_5056.z);
            u_xlat88 = x_5058;
            let x_5060 : f32 = u_xlat24.w;
            let x_5061 : f32 = u_xlat88;
            let x_5063 : f32 = u_xlat87;
            u_xlat87 = ((x_5060 * x_5061) + x_5063);
            let x_5066 : vec4<f32> = u_xlat22;
            let x_5067 : vec2<f32> = vec2<f32>(x_5066.x, x_5066.y);
            let x_5069 : f32 = u_xlat11.z;
            txVec81 = vec3<f32>(x_5067.x, x_5067.y, x_5069);
            let x_5076 : vec3<f32> = txVec81;
            let x_5078 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5076.xy, x_5076.z);
            u_xlat88 = x_5078;
            let x_5080 : f32 = u_xlat25.x;
            let x_5081 : f32 = u_xlat88;
            let x_5083 : f32 = u_xlat87;
            u_xlat87 = ((x_5080 * x_5081) + x_5083);
            let x_5086 : vec4<f32> = u_xlat22;
            let x_5087 : vec2<f32> = vec2<f32>(x_5086.z, x_5086.w);
            let x_5089 : f32 = u_xlat11.z;
            txVec82 = vec3<f32>(x_5087.x, x_5087.y, x_5089);
            let x_5096 : vec3<f32> = txVec82;
            let x_5098 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5096.xy, x_5096.z);
            u_xlat88 = x_5098;
            let x_5100 : f32 = u_xlat25.y;
            let x_5101 : f32 = u_xlat88;
            let x_5103 : f32 = u_xlat87;
            u_xlat87 = ((x_5100 * x_5101) + x_5103);
            let x_5106 : vec2<f32> = u_xlat40;
            let x_5108 : f32 = u_xlat11.z;
            txVec83 = vec3<f32>(x_5106.x, x_5106.y, x_5108);
            let x_5115 : vec3<f32> = txVec83;
            let x_5117 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5115.xy, x_5115.z);
            u_xlat88 = x_5117;
            let x_5119 : f32 = u_xlat25.z;
            let x_5120 : f32 = u_xlat88;
            let x_5122 : f32 = u_xlat87;
            u_xlat87 = ((x_5119 * x_5120) + x_5122);
            let x_5125 : vec2<f32> = u_xlat72;
            let x_5127 : f32 = u_xlat11.z;
            txVec84 = vec3<f32>(x_5125.x, x_5125.y, x_5127);
            let x_5134 : vec3<f32> = txVec84;
            let x_5136 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5134.xy, x_5134.z);
            u_xlat88 = x_5136;
            let x_5138 : f32 = u_xlat25.w;
            let x_5139 : f32 = u_xlat88;
            let x_5141 : f32 = u_xlat87;
            u_xlat87 = ((x_5138 * x_5139) + x_5141);
            let x_5144 : vec4<f32> = u_xlat17;
            let x_5145 : vec2<f32> = vec2<f32>(x_5144.x, x_5144.y);
            let x_5147 : f32 = u_xlat11.z;
            txVec85 = vec3<f32>(x_5145.x, x_5145.y, x_5147);
            let x_5154 : vec3<f32> = txVec85;
            let x_5156 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5154.xy, x_5154.z);
            u_xlat88 = x_5156;
            let x_5158 : f32 = u_xlat13.x;
            let x_5159 : f32 = u_xlat88;
            let x_5161 : f32 = u_xlat87;
            u_xlat87 = ((x_5158 * x_5159) + x_5161);
            let x_5164 : vec4<f32> = u_xlat17;
            let x_5165 : vec2<f32> = vec2<f32>(x_5164.z, x_5164.w);
            let x_5167 : f32 = u_xlat11.z;
            txVec86 = vec3<f32>(x_5165.x, x_5165.y, x_5167);
            let x_5174 : vec3<f32> = txVec86;
            let x_5176 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5174.xy, x_5174.z);
            u_xlat88 = x_5176;
            let x_5178 : f32 = u_xlat13.y;
            let x_5179 : f32 = u_xlat88;
            let x_5181 : f32 = u_xlat87;
            u_xlat87 = ((x_5178 * x_5179) + x_5181);
            let x_5184 : vec2<f32> = u_xlat67;
            let x_5186 : f32 = u_xlat11.z;
            txVec87 = vec3<f32>(x_5184.x, x_5184.y, x_5186);
            let x_5193 : vec3<f32> = txVec87;
            let x_5195 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5193.xy, x_5193.z);
            u_xlat88 = x_5195;
            let x_5197 : f32 = u_xlat13.z;
            let x_5198 : f32 = u_xlat88;
            let x_5200 : f32 = u_xlat87;
            u_xlat87 = ((x_5197 * x_5198) + x_5200);
            let x_5203 : vec4<f32> = u_xlat12;
            let x_5204 : vec2<f32> = vec2<f32>(x_5203.x, x_5203.y);
            let x_5206 : f32 = u_xlat11.z;
            txVec88 = vec3<f32>(x_5204.x, x_5204.y, x_5206);
            let x_5213 : vec3<f32> = txVec88;
            let x_5215 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5213.xy, x_5213.z);
            u_xlat88 = x_5215;
            let x_5217 : f32 = u_xlat13.w;
            let x_5218 : f32 = u_xlat88;
            let x_5220 : f32 = u_xlat87;
            u_xlat86 = ((x_5217 * x_5218) + x_5220);
          }
        }
      } else {
        let x_5224 : vec4<f32> = u_xlat11;
        let x_5225 : vec2<f32> = vec2<f32>(x_5224.x, x_5224.y);
        let x_5227 : f32 = u_xlat11.z;
        txVec89 = vec3<f32>(x_5225.x, x_5225.y, x_5227);
        let x_5234 : vec3<f32> = txVec89;
        let x_5236 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5234.xy, x_5234.z);
        u_xlat86 = x_5236;
      }
      let x_5237 : i32 = u_xlati82;
      let x_5239 : f32 = x_371.x_AdditionalShadowParams[x_5237].x;
      u_xlat87 = (1.0f + -(x_5239));
      let x_5242 : f32 = u_xlat86;
      let x_5243 : i32 = u_xlati82;
      let x_5245 : f32 = x_371.x_AdditionalShadowParams[x_5243].x;
      let x_5247 : f32 = u_xlat87;
      u_xlat86 = ((x_5242 * x_5245) + x_5247);
      let x_5250 : f32 = u_xlat11.z;
      u_xlatb87 = (0.0f >= x_5250);
      let x_5254 : f32 = u_xlat11.z;
      u_xlatb88 = (x_5254 >= 1.0f);
      let x_5256 : bool = u_xlatb87;
      let x_5257 : bool = u_xlatb88;
      u_xlatb87 = (x_5256 | x_5257);
      let x_5259 : bool = u_xlatb87;
      let x_5260 : f32 = u_xlat86;
      u_xlat86 = select(x_5260, 1.0f, x_5259);
    } else {
      u_xlat86 = 1.0f;
    }
    let x_5263 : f32 = u_xlat86;
    u_xlat87 = (-(x_5263) + 1.0f);
    let x_5267 : f32 = u_xlat2.x;
    let x_5268 : f32 = u_xlat87;
    let x_5270 : f32 = u_xlat86;
    u_xlat86 = ((x_5267 * x_5268) + x_5270);
    let x_5273 : i32 = u_xlati82;
    u_xlati87 = (1i << bitcast<u32>((x_5273 & 31i)));
    let x_5277 : i32 = u_xlati87;
    let x_5280 : f32 = x_3353.x_AdditionalLightsCookieEnableBits;
    u_xlati87 = bitcast<i32>((bitcast<u32>(x_5277) & bitcast<u32>(x_5280)));
    let x_5284 : i32 = u_xlati87;
    if ((x_5284 != 0i)) {
      let x_5288 : i32 = u_xlati82;
      let x_5290 : f32 = x_3353.x_AdditionalLightsLightTypes[x_5288].el;
      u_xlati87 = i32(x_5290);
      let x_5293 : i32 = u_xlati87;
      u_xlati88 = select(1i, 0i, (x_5293 != 0i));
      let x_5297 : i32 = u_xlati82;
      u_xlati11 = (x_5297 << bitcast<u32>(2i));
      let x_5299 : i32 = u_xlati88;
      if ((x_5299 != 0i)) {
        let x_5304 : vec3<f32> = vs_INTERP8;
        let x_5306 : i32 = u_xlati11;
        let x_5309 : i32 = u_xlati11;
        let x_5313 : vec4<f32> = x_3353.x_AdditionalLightsWorldToLights[((x_5306 + 1i) / 4i)][((x_5309 + 1i) % 4i)];
        u_xlat37 = (vec3<f32>(x_5304.y, x_5304.y, x_5304.y) * vec3<f32>(x_5313.x, x_5313.y, x_5313.w));
        let x_5316 : i32 = u_xlati11;
        let x_5318 : i32 = u_xlati11;
        let x_5321 : vec4<f32> = x_3353.x_AdditionalLightsWorldToLights[(x_5316 / 4i)][(x_5318 % 4i)];
        let x_5323 : vec3<f32> = vs_INTERP8;
        let x_5326 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_5321.x, x_5321.y, x_5321.w) * vec3<f32>(x_5323.x, x_5323.x, x_5323.x)) + x_5326);
        let x_5328 : i32 = u_xlati11;
        let x_5331 : i32 = u_xlati11;
        let x_5335 : vec4<f32> = x_3353.x_AdditionalLightsWorldToLights[((x_5328 + 2i) / 4i)][((x_5331 + 2i) % 4i)];
        let x_5337 : vec3<f32> = vs_INTERP8;
        let x_5340 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_5335.x, x_5335.y, x_5335.w) * vec3<f32>(x_5337.z, x_5337.z, x_5337.z)) + x_5340);
        let x_5342 : vec3<f32> = u_xlat37;
        let x_5343 : i32 = u_xlati11;
        let x_5346 : i32 = u_xlati11;
        let x_5350 : vec4<f32> = x_3353.x_AdditionalLightsWorldToLights[((x_5343 + 3i) / 4i)][((x_5346 + 3i) % 4i)];
        u_xlat37 = (x_5342 + vec3<f32>(x_5350.x, x_5350.y, x_5350.w));
        let x_5353 : vec3<f32> = u_xlat37;
        let x_5355 : vec3<f32> = u_xlat37;
        let x_5357 : vec2<f32> = (vec2<f32>(x_5353.x, x_5353.y) / vec2<f32>(x_5355.z, x_5355.z));
        let x_5358 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_5357.x, x_5357.y, x_5358.z);
        let x_5360 : vec3<f32> = u_xlat37;
        let x_5363 : vec2<f32> = ((vec2<f32>(x_5360.x, x_5360.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_5364 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_5363.x, x_5363.y, x_5364.z);
        let x_5366 : vec3<f32> = u_xlat37;
        let x_5370 : vec2<f32> = clamp(vec2<f32>(x_5366.x, x_5366.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_5371 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_5370.x, x_5370.y, x_5371.z);
        let x_5373 : i32 = u_xlati82;
        let x_5375 : vec4<f32> = x_3353.x_AdditionalLightsCookieAtlasUVRects[x_5373];
        let x_5377 : vec3<f32> = u_xlat37;
        let x_5380 : i32 = u_xlati82;
        let x_5382 : vec4<f32> = x_3353.x_AdditionalLightsCookieAtlasUVRects[x_5380];
        let x_5384 : vec2<f32> = ((vec2<f32>(x_5375.x, x_5375.y) * vec2<f32>(x_5377.x, x_5377.y)) + vec2<f32>(x_5382.z, x_5382.w));
        let x_5385 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_5384.x, x_5384.y, x_5385.z);
      } else {
        let x_5388 : i32 = u_xlati87;
        u_xlatb87 = (x_5388 == 1i);
        let x_5390 : bool = u_xlatb87;
        u_xlati87 = select(0i, 1i, x_5390);
        let x_5392 : i32 = u_xlati87;
        if ((x_5392 != 0i)) {
          let x_5396 : vec3<f32> = vs_INTERP8;
          let x_5398 : i32 = u_xlati11;
          let x_5401 : i32 = u_xlati11;
          let x_5405 : vec4<f32> = x_3353.x_AdditionalLightsWorldToLights[((x_5398 + 1i) / 4i)][((x_5401 + 1i) % 4i)];
          let x_5407 : vec2<f32> = (vec2<f32>(x_5396.y, x_5396.y) * vec2<f32>(x_5405.x, x_5405.y));
          let x_5408 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5407.x, x_5407.y, x_5408.z, x_5408.w);
          let x_5410 : i32 = u_xlati11;
          let x_5412 : i32 = u_xlati11;
          let x_5415 : vec4<f32> = x_3353.x_AdditionalLightsWorldToLights[(x_5410 / 4i)][(x_5412 % 4i)];
          let x_5417 : vec3<f32> = vs_INTERP8;
          let x_5420 : vec4<f32> = u_xlat12;
          let x_5422 : vec2<f32> = ((vec2<f32>(x_5415.x, x_5415.y) * vec2<f32>(x_5417.x, x_5417.x)) + vec2<f32>(x_5420.x, x_5420.y));
          let x_5423 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5422.x, x_5422.y, x_5423.z, x_5423.w);
          let x_5425 : i32 = u_xlati11;
          let x_5428 : i32 = u_xlati11;
          let x_5432 : vec4<f32> = x_3353.x_AdditionalLightsWorldToLights[((x_5425 + 2i) / 4i)][((x_5428 + 2i) % 4i)];
          let x_5434 : vec3<f32> = vs_INTERP8;
          let x_5437 : vec4<f32> = u_xlat12;
          let x_5439 : vec2<f32> = ((vec2<f32>(x_5432.x, x_5432.y) * vec2<f32>(x_5434.z, x_5434.z)) + vec2<f32>(x_5437.x, x_5437.y));
          let x_5440 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5439.x, x_5439.y, x_5440.z, x_5440.w);
          let x_5442 : vec4<f32> = u_xlat12;
          let x_5444 : i32 = u_xlati11;
          let x_5447 : i32 = u_xlati11;
          let x_5451 : vec4<f32> = x_3353.x_AdditionalLightsWorldToLights[((x_5444 + 3i) / 4i)][((x_5447 + 3i) % 4i)];
          let x_5453 : vec2<f32> = (vec2<f32>(x_5442.x, x_5442.y) + vec2<f32>(x_5451.x, x_5451.y));
          let x_5454 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5453.x, x_5453.y, x_5454.z, x_5454.w);
          let x_5456 : vec4<f32> = u_xlat12;
          let x_5459 : vec2<f32> = ((vec2<f32>(x_5456.x, x_5456.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_5460 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5459.x, x_5459.y, x_5460.z, x_5460.w);
          let x_5462 : vec4<f32> = u_xlat12;
          let x_5464 : vec2<f32> = fract(vec2<f32>(x_5462.x, x_5462.y));
          let x_5465 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5464.x, x_5464.y, x_5465.z, x_5465.w);
          let x_5467 : i32 = u_xlati82;
          let x_5469 : vec4<f32> = x_3353.x_AdditionalLightsCookieAtlasUVRects[x_5467];
          let x_5471 : vec4<f32> = u_xlat12;
          let x_5474 : i32 = u_xlati82;
          let x_5476 : vec4<f32> = x_3353.x_AdditionalLightsCookieAtlasUVRects[x_5474];
          let x_5478 : vec2<f32> = ((vec2<f32>(x_5469.x, x_5469.y) * vec2<f32>(x_5471.x, x_5471.y)) + vec2<f32>(x_5476.z, x_5476.w));
          let x_5479 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_5478.x, x_5478.y, x_5479.z);
        } else {
          let x_5482 : vec3<f32> = vs_INTERP8;
          let x_5484 : i32 = u_xlati11;
          let x_5487 : i32 = u_xlati11;
          let x_5491 : vec4<f32> = x_3353.x_AdditionalLightsWorldToLights[((x_5484 + 1i) / 4i)][((x_5487 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_5482.y, x_5482.y, x_5482.y, x_5482.y) * x_5491);
          let x_5493 : i32 = u_xlati11;
          let x_5495 : i32 = u_xlati11;
          let x_5498 : vec4<f32> = x_3353.x_AdditionalLightsWorldToLights[(x_5493 / 4i)][(x_5495 % 4i)];
          let x_5499 : vec3<f32> = vs_INTERP8;
          let x_5502 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_5498 * vec4<f32>(x_5499.x, x_5499.x, x_5499.x, x_5499.x)) + x_5502);
          let x_5504 : i32 = u_xlati11;
          let x_5507 : i32 = u_xlati11;
          let x_5511 : vec4<f32> = x_3353.x_AdditionalLightsWorldToLights[((x_5504 + 2i) / 4i)][((x_5507 + 2i) % 4i)];
          let x_5512 : vec3<f32> = vs_INTERP8;
          let x_5515 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_5511 * vec4<f32>(x_5512.z, x_5512.z, x_5512.z, x_5512.z)) + x_5515);
          let x_5517 : vec4<f32> = u_xlat12;
          let x_5518 : i32 = u_xlati11;
          let x_5521 : i32 = u_xlati11;
          let x_5525 : vec4<f32> = x_3353.x_AdditionalLightsWorldToLights[((x_5518 + 3i) / 4i)][((x_5521 + 3i) % 4i)];
          u_xlat12 = (x_5517 + x_5525);
          let x_5527 : vec4<f32> = u_xlat12;
          let x_5529 : vec4<f32> = u_xlat12;
          let x_5531 : vec3<f32> = (vec3<f32>(x_5527.x, x_5527.y, x_5527.z) / vec3<f32>(x_5529.w, x_5529.w, x_5529.w));
          let x_5532 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5531.x, x_5531.y, x_5531.z, x_5532.w);
          let x_5534 : vec4<f32> = u_xlat12;
          let x_5536 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(vec3<f32>(x_5534.x, x_5534.y, x_5534.z), vec3<f32>(x_5536.x, x_5536.y, x_5536.z));
          let x_5539 : f32 = u_xlat87;
          u_xlat87 = inverseSqrt(x_5539);
          let x_5541 : f32 = u_xlat87;
          let x_5543 : vec4<f32> = u_xlat12;
          let x_5545 : vec3<f32> = (vec3<f32>(x_5541, x_5541, x_5541) * vec3<f32>(x_5543.x, x_5543.y, x_5543.z));
          let x_5546 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5545.x, x_5545.y, x_5545.z, x_5546.w);
          let x_5548 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(abs(vec3<f32>(x_5548.x, x_5548.y, x_5548.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_5553 : f32 = u_xlat87;
          u_xlat87 = max(x_5553, 0.00000099999999747524f);
          let x_5556 : f32 = u_xlat87;
          u_xlat87 = (1.0f / x_5556);
          let x_5558 : f32 = u_xlat87;
          let x_5560 : vec4<f32> = u_xlat12;
          let x_5562 : vec3<f32> = (vec3<f32>(x_5558, x_5558, x_5558) * vec3<f32>(x_5560.z, x_5560.x, x_5560.y));
          let x_5563 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_5562.x, x_5562.y, x_5562.z, x_5563.w);
          let x_5566 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_5566);
          let x_5570 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_5570, 0.0f, 1.0f);
          let x_5573 : vec4<f32> = u_xlat13;
          let x_5575 : vec4<bool> = (vec4<f32>(x_5573.y, x_5573.y, x_5573.y, x_5573.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_5576 : vec2<bool> = vec2<bool>(x_5575.x, x_5575.w);
          let x_5577 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_5576.x, x_5577.y, x_5577.z, x_5576.y);
          let x_5580 : bool = u_xlatb11.x;
          if (x_5580) {
            let x_5585 : f32 = u_xlat13.x;
            x_5581 = x_5585;
          } else {
            let x_5588 : f32 = u_xlat13.x;
            x_5581 = -(x_5588);
          }
          let x_5590 : f32 = x_5581;
          u_xlat11.x = x_5590;
          let x_5593 : bool = u_xlatb11.w;
          if (x_5593) {
            let x_5598 : f32 = u_xlat13.x;
            x_5594 = x_5598;
          } else {
            let x_5601 : f32 = u_xlat13.x;
            x_5594 = -(x_5601);
          }
          let x_5603 : f32 = x_5594;
          u_xlat11.w = x_5603;
          let x_5605 : vec4<f32> = u_xlat12;
          let x_5607 : f32 = u_xlat87;
          let x_5610 : vec4<f32> = u_xlat11;
          let x_5612 : vec2<f32> = ((vec2<f32>(x_5605.x, x_5605.y) * vec2<f32>(x_5607, x_5607)) + vec2<f32>(x_5610.x, x_5610.w));
          let x_5613 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_5612.x, x_5613.y, x_5613.z, x_5612.y);
          let x_5615 : vec4<f32> = u_xlat11;
          let x_5618 : vec2<f32> = ((vec2<f32>(x_5615.x, x_5615.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_5619 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_5618.x, x_5619.y, x_5619.z, x_5618.y);
          let x_5621 : vec4<f32> = u_xlat11;
          let x_5625 : vec2<f32> = clamp(vec2<f32>(x_5621.x, x_5621.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_5626 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_5625.x, x_5626.y, x_5626.z, x_5625.y);
          let x_5628 : i32 = u_xlati82;
          let x_5630 : vec4<f32> = x_3353.x_AdditionalLightsCookieAtlasUVRects[x_5628];
          let x_5632 : vec4<f32> = u_xlat11;
          let x_5635 : i32 = u_xlati82;
          let x_5637 : vec4<f32> = x_3353.x_AdditionalLightsCookieAtlasUVRects[x_5635];
          let x_5639 : vec2<f32> = ((vec2<f32>(x_5630.x, x_5630.y) * vec2<f32>(x_5632.x, x_5632.w)) + vec2<f32>(x_5637.z, x_5637.w));
          let x_5640 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_5639.x, x_5639.y, x_5640.z);
        }
      }
      let x_5647 : vec3<f32> = u_xlat37;
      let x_5649 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_5647.x, x_5647.y), 0.0f);
      u_xlat11 = x_5649;
      let x_5651 : bool = u_xlatb7.y;
      if (x_5651) {
        let x_5656 : f32 = u_xlat11.w;
        x_5652 = x_5656;
      } else {
        let x_5659 : f32 = u_xlat11.x;
        x_5652 = x_5659;
      }
      let x_5660 : f32 = x_5652;
      u_xlat87 = x_5660;
      let x_5662 : bool = u_xlatb7.x;
      if (x_5662) {
        let x_5666 : vec4<f32> = u_xlat11;
        x_5663 = vec3<f32>(x_5666.x, x_5666.y, x_5666.z);
      } else {
        let x_5669 : f32 = u_xlat87;
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
    let x_5680 : i32 = u_xlati82;
    let x_5682 : vec4<f32> = x_3830.x_AdditionalLightsColor[x_5680];
    let x_5684 : vec3<f32> = (vec3<f32>(x_5678.x, x_5678.y, x_5678.z) * vec3<f32>(x_5682.x, x_5682.y, x_5682.z));
    let x_5685 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_5684.x, x_5684.y, x_5684.z, x_5685.w);
    let x_5688 : f32 = u_xlat59.x;
    let x_5689 : f32 = u_xlat86;
    u_xlat82 = (x_5688 * x_5689);
    let x_5691 : vec4<f32> = u_xlat3;
    let x_5693 : vec4<f32> = u_xlat10;
    u_xlat59.x = dot(vec3<f32>(x_5691.x, x_5691.y, x_5691.z), vec3<f32>(x_5693.x, x_5693.y, x_5693.z));
    let x_5698 : f32 = u_xlat59.x;
    u_xlat59.x = clamp(x_5698, 0.0f, 1.0f);
    let x_5701 : f32 = u_xlat82;
    let x_5703 : f32 = u_xlat59.x;
    u_xlat82 = (x_5701 * x_5703);
    let x_5705 : f32 = u_xlat82;
    let x_5707 : vec4<f32> = u_xlat11;
    let x_5709 : vec3<f32> = (vec3<f32>(x_5705, x_5705, x_5705) * vec3<f32>(x_5707.x, x_5707.y, x_5707.z));
    let x_5710 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_5709.x, x_5709.y, x_5709.z, x_5710.w);
    let x_5712 : vec4<f32> = u_xlat9;
    let x_5714 : f32 = u_xlat85;
    let x_5717 : vec3<f32> = u_xlat5;
    let x_5718 : vec3<f32> = ((vec3<f32>(x_5712.x, x_5712.y, x_5712.z) * vec3<f32>(x_5714, x_5714, x_5714)) + x_5717);
    let x_5719 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5718.x, x_5718.y, x_5718.z, x_5719.w);
    let x_5721 : vec4<f32> = u_xlat9;
    let x_5723 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_5721.x, x_5721.y, x_5721.z), vec3<f32>(x_5723.x, x_5723.y, x_5723.z));
    let x_5726 : f32 = u_xlat82;
    u_xlat82 = max(x_5726, 1.17549435e-38f);
    let x_5728 : f32 = u_xlat82;
    u_xlat82 = inverseSqrt(x_5728);
    let x_5730 : f32 = u_xlat82;
    let x_5732 : vec4<f32> = u_xlat9;
    let x_5734 : vec3<f32> = (vec3<f32>(x_5730, x_5730, x_5730) * vec3<f32>(x_5732.x, x_5732.y, x_5732.z));
    let x_5735 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5734.x, x_5734.y, x_5734.z, x_5735.w);
    let x_5737 : vec4<f32> = u_xlat3;
    let x_5739 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_5737.x, x_5737.y, x_5737.z), vec3<f32>(x_5739.x, x_5739.y, x_5739.z));
    let x_5742 : f32 = u_xlat82;
    u_xlat82 = clamp(x_5742, 0.0f, 1.0f);
    let x_5744 : vec4<f32> = u_xlat10;
    let x_5746 : vec4<f32> = u_xlat9;
    u_xlat59.x = dot(vec3<f32>(x_5744.x, x_5744.y, x_5744.z), vec3<f32>(x_5746.x, x_5746.y, x_5746.z));
    let x_5751 : f32 = u_xlat59.x;
    u_xlat59.x = clamp(x_5751, 0.0f, 1.0f);
    let x_5754 : f32 = u_xlat82;
    let x_5755 : f32 = u_xlat82;
    u_xlat82 = (x_5754 * x_5755);
    let x_5757 : f32 = u_xlat82;
    let x_5759 : f32 = u_xlat54.x;
    u_xlat82 = ((x_5757 * x_5759) + 1.00001001358032226562f);
    let x_5763 : f32 = u_xlat59.x;
    let x_5765 : f32 = u_xlat59.x;
    u_xlat59.x = (x_5763 * x_5765);
    let x_5768 : f32 = u_xlat82;
    let x_5769 : f32 = u_xlat82;
    u_xlat82 = (x_5768 * x_5769);
    let x_5772 : f32 = u_xlat59.x;
    u_xlat59.x = max(x_5772, 0.10000000149011611938f);
    let x_5775 : f32 = u_xlat82;
    let x_5777 : f32 = u_xlat59.x;
    u_xlat82 = (x_5775 * x_5777);
    let x_5779 : f32 = u_xlat83;
    let x_5780 : f32 = u_xlat82;
    u_xlat82 = (x_5779 * x_5780);
    let x_5782 : f32 = u_xlat81;
    let x_5783 : f32 = u_xlat82;
    u_xlat82 = (x_5782 / x_5783);
    let x_5785 : f32 = u_xlat82;
    let x_5788 : vec3<f32> = u_xlat4;
    let x_5789 : vec3<f32> = ((vec3<f32>(x_5785, x_5785, x_5785) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_5788);
    let x_5790 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5789.x, x_5789.y, x_5789.z, x_5790.w);
    let x_5792 : vec4<f32> = u_xlat9;
    let x_5794 : vec4<f32> = u_xlat11;
    let x_5797 : vec4<f32> = u_xlat8;
    let x_5799 : vec3<f32> = ((vec3<f32>(x_5792.x, x_5792.y, x_5792.z) * vec3<f32>(x_5794.x, x_5794.y, x_5794.z)) + vec3<f32>(x_5797.x, x_5797.y, x_5797.z));
    let x_5800 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_5799.x, x_5799.y, x_5799.z, x_5800.w);

    continuing {
      let x_5802 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_5802 + bitcast<u32>(1i));
    }
  }
  let x_5804 : vec3<f32> = u_xlat26;
  let x_5805 : vec4<f32> = u_xlat6;
  let x_5808 : vec3<f32> = u_xlat32;
  u_xlat0 = ((x_5804 * vec3<f32>(x_5805.x, x_5805.x, x_5805.x)) + x_5808);
  let x_5810 : vec4<f32> = u_xlat8;
  let x_5812 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_5810.x, x_5810.y, x_5810.z) + x_5812);
  let x_5816 : vec4<f32> = vs_INTERP6;
  let x_5818 : vec3<f32> = u_xlat1;
  let x_5820 : vec3<f32> = u_xlat0;
  let x_5821 : vec3<f32> = ((vec3<f32>(x_5816.w, x_5816.w, x_5816.w) * x_5818) + x_5820);
  let x_5822 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_5821.x, x_5821.y, x_5821.z, x_5822.w);
  let x_5824 : bool = u_xlatb28;
  let x_5825 : f32 = u_xlat79;
  SV_Target0.w = select(1.0f, x_5825, x_5824);
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


