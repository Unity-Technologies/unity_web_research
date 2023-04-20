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

var<private> u_xlatb14 : vec2<bool>;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_83 : UnityPerDraw;

var<private> u_xlat14 : vec3<f32>;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlatb0 : bool;

@group(1) @binding(0) var<uniform> x_149 : PGlobals;

var<private> u_xlat4 : vec3<f32>;

var<private> vs_INTERP8 : vec3<f32>;

var<private> u_xlat43 : f32;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(7) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(14) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP5 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

@group(1) @binding(5) var<uniform> x_269 : UnityPerMaterial;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(8) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(15) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat22 : vec3<f32>;

var<private> vs_INTERP6 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_376 : LightShadows;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlatu0 : u32;

var<private> u_xlati0 : i32;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb43 : bool;

var<private> u_xlat15 : vec3<f32>;

var<private> u_xlat16 : vec3<f32>;

var<private> u_xlatu16 : vec3<u32>;

var<private> u_xlatu44 : u32;

var<private> u_xlatu3 : u32;

var<private> u_xlati44 : i32;

var<private> u_xlati30 : i32;

var<private> u_xlatu30 : u32;

var<private> u_xlati16 : i32;

var<private> u_xlat30 : f32;

var<private> u_xlatb16 : bool;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat45 : f32;

var<private> u_xlat18 : f32;

var<private> u_xlat32 : f32;

var<private> u_xlat46 : f32;

var<private> u_xlat47 : f32;

var<private> u_xlat20 : vec3<f32>;

var<private> u_xlat34 : f32;

var<private> u_xlatb20 : vec2<bool>;

@group(1) @binding(4) var<uniform> x_1056 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlat49 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatb4 : vec3<bool>;

var<private> u_xlatu49 : u32;

var<private> u_xlati22 : i32;

var<private> u_xlati49 : i32;

@group(1) @binding(1) var<uniform> x_1517 : AdditionalLights;

var<private> u_xlat23 : f32;

var<private> u_xlat37 : f32;

var<private> u_xlati37 : i32;

var<private> u_xlatb51 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat52 : f32;

var<private> u_xlat51 : f32;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb52 : bool;

var<private> u_xlati51 : i32;

var<private> u_xlati52 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlat25 : vec3<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec3<f32>;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu6 : u32;

var<private> u_xlatb49 : bool;

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
  var x_176 : f32;
  var x_189 : f32;
  var x_201 : f32;
  var txVec0 : vec3<f32>;
  var x_606 : f32;
  var x_648 : f32;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var x_784 : f32;
  var x_810 : f32;
  var x_857 : f32;
  var x_1139 : f32;
  var x_1150 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1665 : f32;
  var x_1675 : f32;
  var txVec1 : vec3<f32>;
  var x_2105 : f32;
  var x_2118 : f32;
  var x_2176 : f32;
  var x_2187 : vec3<f32>;
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
  u_xlatb14.x = (0.0f < x_74);
  let x_87 : f32 = x_83.unity_WorldTransformParams.w;
  u_xlatb14.y = (x_87 >= 0.0f);
  let x_93 : bool = u_xlatb14.x;
  u_xlat14.x = select(-1.0f, 1.0f, x_93);
  let x_98 : bool = u_xlatb14.y;
  u_xlat14.y = select(-1.0f, 1.0f, x_98);
  let x_102 : f32 = u_xlat14.y;
  let x_104 : f32 = u_xlat14.x;
  u_xlat14.x = (x_102 * x_104);
  let x_108 : vec4<f32> = vs_INTERP4;
  let x_110 : vec3<f32> = vs_INTERP9;
  u_xlat1 = (vec3<f32>(x_108.y, x_108.z, x_108.x) * vec3<f32>(x_110.z, x_110.x, x_110.y));
  let x_113 : vec3<f32> = vs_INTERP9;
  let x_115 : vec4<f32> = vs_INTERP4;
  let x_118 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_113.y, x_113.z, x_113.x) * vec3<f32>(x_115.z, x_115.x, x_115.y)) + -(x_118));
  let x_121 : vec3<f32> = u_xlat14;
  let x_123 : vec3<f32> = u_xlat1;
  u_xlat14 = (vec3<f32>(x_121.x, x_121.x, x_121.x) * x_123);
  let x_125 : vec3<f32> = u_xlat0;
  let x_127 : vec3<f32> = vs_INTERP9;
  u_xlat1 = (vec3<f32>(x_125.x, x_125.x, x_125.x) * x_127);
  let x_131 : vec3<f32> = u_xlat0;
  let x_133 : vec4<f32> = vs_INTERP4;
  let x_135 : vec3<f32> = (vec3<f32>(x_131.x, x_131.x, x_131.x) * vec3<f32>(x_133.x, x_133.y, x_133.z));
  let x_136 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_135.x, x_135.y, x_135.z, x_136.w);
  let x_139 : vec3<f32> = u_xlat14;
  let x_140 : vec3<f32> = u_xlat0;
  let x_142 : vec3<f32> = (x_139 * vec3<f32>(x_140.x, x_140.x, x_140.x));
  let x_143 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_142.x, x_142.y, x_142.z, x_143.w);
  let x_152 : f32 = x_149.unity_OrthoParams.w;
  u_xlatb0 = (x_152 == 0.0f);
  let x_156 : vec3<f32> = vs_INTERP8;
  let x_161 : vec3<f32> = x_149.x_WorldSpaceCameraPos;
  u_xlat4 = (-(x_156) + x_161);
  let x_164 : vec3<f32> = u_xlat4;
  let x_165 : vec3<f32> = u_xlat4;
  u_xlat43 = dot(x_164, x_165);
  let x_167 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_167);
  let x_169 : f32 = u_xlat43;
  let x_171 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_169, x_169, x_169) * x_171);
  let x_174 : bool = u_xlatb0;
  if (x_174) {
    let x_180 : f32 = u_xlat4.x;
    x_176 = x_180;
  } else {
    let x_185 : f32 = x_149.unity_MatrixV[0i].z;
    x_176 = x_185;
  }
  let x_186 : f32 = x_176;
  u_xlat5.x = x_186;
  let x_188 : bool = u_xlatb0;
  if (x_188) {
    let x_193 : f32 = u_xlat4.y;
    x_189 = x_193;
  } else {
    let x_197 : f32 = x_149.unity_MatrixV[1i].z;
    x_189 = x_197;
  }
  let x_198 : f32 = x_189;
  u_xlat5.y = x_198;
  let x_200 : bool = u_xlatb0;
  if (x_200) {
    let x_205 : f32 = u_xlat4.z;
    x_201 = x_205;
  } else {
    let x_209 : f32 = x_149.unity_MatrixV[2i].z;
    x_201 = x_209;
  }
  let x_210 : f32 = x_201;
  u_xlat5.z = x_210;
  let x_212 : vec3<f32> = u_xlat5;
  let x_216 : vec4<f32> = x_83.unity_WorldToObject[1i];
  u_xlat4 = (vec3<f32>(x_212.y, x_212.y, x_212.y) * vec3<f32>(x_216.x, x_216.y, x_216.z));
  let x_220 : vec4<f32> = x_83.unity_WorldToObject[0i];
  let x_222 : vec3<f32> = u_xlat5;
  let x_225 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_220.x, x_220.y, x_220.z) * vec3<f32>(x_222.x, x_222.x, x_222.x)) + x_225);
  let x_228 : vec4<f32> = x_83.unity_WorldToObject[2i];
  let x_230 : vec3<f32> = u_xlat5;
  let x_233 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_228.x, x_228.y, x_228.z) * vec3<f32>(x_230.z, x_230.z, x_230.z)) + x_233);
  let x_235 : vec3<f32> = u_xlat4;
  let x_236 : vec3<f32> = u_xlat4;
  u_xlat0.x = dot(x_235, x_236);
  let x_240 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_240);
  let x_243 : vec3<f32> = u_xlat0;
  let x_245 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_243.x, x_243.x, x_243.x) * x_245);
  let x_259 : vec4<f32> = vs_INTERP5;
  let x_262 : f32 = x_149.x_GlobalMipBias.x;
  let x_263 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_259.x, x_259.y), x_262);
  u_xlat6 = x_263;
  let x_265 : vec4<f32> = u_xlat6;
  let x_271 : vec4<f32> = x_269.Color_C30C7CA3;
  let x_273 : vec3<f32> = (vec3<f32>(x_265.x, x_265.y, x_265.z) * vec3<f32>(x_271.x, x_271.y, x_271.z));
  let x_274 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_273.x, x_273.y, x_273.z, x_274.w);
  let x_282 : vec4<f32> = vs_INTERP5;
  let x_285 : f32 = x_149.x_GlobalMipBias.x;
  let x_286 : vec4<f32> = textureSampleBias(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1, vec2<f32>(x_282.x, x_282.y), x_285);
  u_xlat8 = vec4<f32>(x_286.w, x_286.x, x_286.y, x_286.z);
  let x_289 : vec4<f32> = u_xlat8;
  u_xlat9 = ((vec4<f32>(x_289.y, x_289.z, x_289.w, x_289.x) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_296 : vec4<f32> = u_xlat9;
  let x_297 : vec4<f32> = u_xlat9;
  u_xlat0.x = dot(x_296, x_297);
  let x_301 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_301);
  let x_305 : vec3<f32> = u_xlat0;
  let x_307 : vec4<f32> = u_xlat9;
  u_xlat22 = (vec3<f32>(x_305.x, x_305.x, x_305.x) * vec3<f32>(x_307.x, x_307.y, x_307.z));
  let x_312 : f32 = vs_INTERP6.y;
  u_xlat0.x = (x_312 * 200.0f);
  let x_317 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_317, 1.0f);
  let x_320 : vec3<f32> = u_xlat0;
  let x_322 : vec4<f32> = u_xlat6;
  let x_324 : vec3<f32> = (vec3<f32>(x_320.x, x_320.x, x_320.x) * vec3<f32>(x_322.x, x_322.y, x_322.z));
  let x_325 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_324.x, x_324.y, x_324.z, x_325.w);
  let x_327 : vec4<f32> = u_xlat3;
  let x_329 : vec3<f32> = u_xlat22;
  let x_331 : vec3<f32> = (vec3<f32>(x_327.x, x_327.y, x_327.z) * vec3<f32>(x_329.y, x_329.y, x_329.y));
  let x_332 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_331.x, x_331.y, x_331.z, x_332.w);
  let x_334 : vec3<f32> = u_xlat22;
  let x_336 : vec4<f32> = u_xlat2;
  let x_339 : vec4<f32> = u_xlat3;
  let x_341 : vec3<f32> = ((vec3<f32>(x_334.x, x_334.x, x_334.x) * vec3<f32>(x_336.x, x_336.y, x_336.z)) + vec3<f32>(x_339.x, x_339.y, x_339.z));
  let x_342 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_341.x, x_341.y, x_341.z, x_342.w);
  let x_344 : vec3<f32> = u_xlat22;
  let x_346 : vec3<f32> = u_xlat1;
  let x_348 : vec4<f32> = u_xlat2;
  u_xlat1 = ((vec3<f32>(x_344.z, x_344.z, x_344.z) * x_346) + vec3<f32>(x_348.x, x_348.y, x_348.z));
  let x_351 : vec3<f32> = u_xlat1;
  let x_352 : vec3<f32> = u_xlat1;
  u_xlat0.x = dot(x_351, x_352);
  let x_356 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_356, 1.17549435e-38f);
  let x_361 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_361);
  let x_364 : vec3<f32> = u_xlat0;
  let x_366 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_364.x, x_364.x, x_364.x) * x_366);
  let x_368 : vec3<f32> = vs_INTERP8;
  let x_378 : vec4<f32> = x_376.x_CascadeShadowSplitSpheres0;
  let x_381 : vec3<f32> = (x_368 + -(vec3<f32>(x_378.x, x_378.y, x_378.z)));
  let x_382 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_381.x, x_381.y, x_381.z, x_382.w);
  let x_384 : vec3<f32> = vs_INTERP8;
  let x_386 : vec4<f32> = x_376.x_CascadeShadowSplitSpheres1;
  let x_389 : vec3<f32> = (x_384 + -(vec3<f32>(x_386.x, x_386.y, x_386.z)));
  let x_390 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_389.x, x_389.y, x_389.z, x_390.w);
  let x_392 : vec3<f32> = vs_INTERP8;
  let x_394 : vec4<f32> = x_376.x_CascadeShadowSplitSpheres2;
  let x_397 : vec3<f32> = (x_392 + -(vec3<f32>(x_394.x, x_394.y, x_394.z)));
  let x_398 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_397.x, x_397.y, x_397.z, x_398.w);
  let x_401 : vec3<f32> = vs_INTERP8;
  let x_404 : vec4<f32> = x_376.x_CascadeShadowSplitSpheres3;
  u_xlat10 = (x_401 + -(vec3<f32>(x_404.x, x_404.y, x_404.z)));
  let x_408 : vec4<f32> = u_xlat2;
  let x_410 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_408.x, x_408.y, x_408.z), vec3<f32>(x_410.x, x_410.y, x_410.z));
  let x_414 : vec4<f32> = u_xlat3;
  let x_416 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_414.x, x_414.y, x_414.z), vec3<f32>(x_416.x, x_416.y, x_416.z));
  let x_420 : vec4<f32> = u_xlat9;
  let x_422 : vec4<f32> = u_xlat9;
  u_xlat2.z = dot(vec3<f32>(x_420.x, x_420.y, x_420.z), vec3<f32>(x_422.x, x_422.y, x_422.z));
  let x_426 : vec3<f32> = u_xlat10;
  let x_427 : vec3<f32> = u_xlat10;
  u_xlat2.w = dot(x_426, x_427);
  let x_433 : vec4<f32> = u_xlat2;
  let x_435 : vec4<f32> = x_376.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_433 < x_435);
  let x_438 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_438);
  let x_442 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_442);
  let x_446 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_446);
  let x_450 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_450);
  let x_454 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_454);
  let x_459 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_459);
  let x_463 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_463);
  let x_466 : vec4<f32> = u_xlat2;
  let x_468 : vec4<f32> = u_xlat3;
  let x_470 : vec3<f32> = (vec3<f32>(x_466.x, x_466.y, x_466.z) + vec3<f32>(x_468.y, x_468.z, x_468.w));
  let x_471 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_470.x, x_470.y, x_470.z, x_471.w);
  let x_473 : vec4<f32> = u_xlat2;
  let x_476 : vec3<f32> = max(vec3<f32>(x_473.x, x_473.y, x_473.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_477 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_477.x, x_476.x, x_476.y, x_476.z);
  let x_479 : vec4<f32> = u_xlat3;
  u_xlat0.x = dot(x_479, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_486 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_486) + 4.0f);
  let x_493 : f32 = u_xlat0.x;
  u_xlatu0 = u32(x_493);
  let x_497 : u32 = u_xlatu0;
  u_xlati0 = (bitcast<i32>(x_497) << bitcast<u32>(2i));
  let x_500 : vec3<f32> = vs_INTERP8;
  let x_502 : i32 = u_xlati0;
  let x_505 : i32 = u_xlati0;
  let x_509 : vec4<f32> = x_376.x_MainLightWorldToShadow[((x_502 + 1i) / 4i)][((x_505 + 1i) % 4i)];
  let x_511 : vec3<f32> = (vec3<f32>(x_500.y, x_500.y, x_500.y) * vec3<f32>(x_509.x, x_509.y, x_509.z));
  let x_512 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_511.x, x_511.y, x_511.z, x_512.w);
  let x_514 : i32 = u_xlati0;
  let x_516 : i32 = u_xlati0;
  let x_519 : vec4<f32> = x_376.x_MainLightWorldToShadow[(x_514 / 4i)][(x_516 % 4i)];
  let x_521 : vec3<f32> = vs_INTERP8;
  let x_524 : vec4<f32> = u_xlat2;
  let x_526 : vec3<f32> = ((vec3<f32>(x_519.x, x_519.y, x_519.z) * vec3<f32>(x_521.x, x_521.x, x_521.x)) + vec3<f32>(x_524.x, x_524.y, x_524.z));
  let x_527 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_526.x, x_526.y, x_526.z, x_527.w);
  let x_529 : i32 = u_xlati0;
  let x_532 : i32 = u_xlati0;
  let x_536 : vec4<f32> = x_376.x_MainLightWorldToShadow[((x_529 + 2i) / 4i)][((x_532 + 2i) % 4i)];
  let x_538 : vec3<f32> = vs_INTERP8;
  let x_541 : vec4<f32> = u_xlat2;
  let x_543 : vec3<f32> = ((vec3<f32>(x_536.x, x_536.y, x_536.z) * vec3<f32>(x_538.z, x_538.z, x_538.z)) + vec3<f32>(x_541.x, x_541.y, x_541.z));
  let x_544 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_543.x, x_543.y, x_543.z, x_544.w);
  let x_546 : vec4<f32> = u_xlat2;
  let x_548 : i32 = u_xlati0;
  let x_551 : i32 = u_xlati0;
  let x_555 : vec4<f32> = x_376.x_MainLightWorldToShadow[((x_548 + 3i) / 4i)][((x_551 + 3i) % 4i)];
  let x_557 : vec3<f32> = (vec3<f32>(x_546.x, x_546.y, x_546.z) + vec3<f32>(x_555.x, x_555.y, x_555.z));
  let x_558 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_557.x, x_557.y, x_557.z, x_558.w);
  let x_562 : vec4<f32> = u_xlat2;
  let x_563 : vec2<f32> = vec2<f32>(x_562.x, x_562.y);
  let x_565 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_563.x, x_563.y, x_565);
  let x_577 : vec3<f32> = txVec0;
  let x_579 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_577.xy, x_577.z);
  u_xlat0.x = x_579;
  let x_582 : f32 = x_376.x_MainLightShadowParams.x;
  u_xlat43 = (-(x_582) + 1.0f);
  let x_586 : f32 = u_xlat0.x;
  let x_588 : f32 = x_376.x_MainLightShadowParams.x;
  let x_590 : f32 = u_xlat43;
  u_xlat0.x = ((x_586 * x_588) + x_590);
  let x_595 : f32 = u_xlat2.z;
  u_xlatb43 = (0.0f >= x_595);
  let x_598 : f32 = u_xlat2.z;
  u_xlatb2.x = (x_598 >= 1.0f);
  let x_601 : bool = u_xlatb43;
  let x_603 : bool = u_xlatb2.x;
  u_xlatb43 = (x_601 | x_603);
  let x_605 : bool = u_xlatb43;
  if (x_605) {
    x_606 = 1.0f;
  } else {
    let x_611 : f32 = u_xlat0.x;
    x_606 = x_611;
  }
  let x_612 : f32 = x_606;
  u_xlat0.x = x_612;
  let x_614 : vec3<f32> = u_xlat1;
  let x_616 : vec4<f32> = x_149.x_MainLightPosition;
  u_xlat1.x = dot(x_614, -(vec3<f32>(x_616.x, x_616.y, x_616.z)));
  let x_622 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_622, 0.0f, 1.0f);
  let x_626 : vec3<f32> = u_xlat0;
  let x_629 : vec4<f32> = x_149.x_MainLightColor;
  u_xlat15 = (vec3<f32>(x_626.x, x_626.x, x_626.x) * vec3<f32>(x_629.x, x_629.y, x_629.z));
  let x_632 : vec3<f32> = u_xlat15;
  let x_633 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_632 * vec3<f32>(x_633.x, x_633.x, x_633.x));
  let x_636 : vec3<f32> = u_xlat1;
  let x_637 : vec4<f32> = u_xlat6;
  u_xlat1 = (x_636 * vec3<f32>(x_637.x, x_637.y, x_637.z));
  let x_641 : f32 = x_83.unity_LODFade.x;
  u_xlatb43 = (x_641 < 0.0f);
  let x_644 : f32 = x_83.unity_LODFade.x;
  u_xlat2.x = (x_644 + 1.0f);
  let x_647 : bool = u_xlatb43;
  if (x_647) {
    let x_652 : f32 = u_xlat2.x;
    x_648 = x_652;
  } else {
    let x_655 : f32 = x_83.unity_LODFade.x;
    x_648 = x_655;
  }
  let x_656 : f32 = x_648;
  u_xlat43 = x_656;
  let x_658 : f32 = u_xlat43;
  u_xlatb2.x = (0.5f >= x_658);
  let x_662 : vec3<f32> = u_xlat4;
  let x_666 : vec4<f32> = x_149.x_ScreenParams;
  u_xlat16 = (abs(x_662) * vec3<f32>(x_666.x, x_666.y, x_666.x));
  let x_672 : vec3<f32> = u_xlat16;
  u_xlatu16 = vec3<u32>(x_672);
  let x_676 : u32 = u_xlatu16.z;
  u_xlatu44 = (x_676 * 1025u);
  let x_680 : u32 = u_xlatu44;
  u_xlatu3 = (x_680 >> 6u);
  let x_684 : u32 = u_xlatu44;
  let x_685 : u32 = u_xlatu3;
  u_xlati44 = bitcast<i32>((x_684 ^ x_685));
  let x_688 : i32 = u_xlati44;
  u_xlatu44 = (bitcast<u32>(x_688) * 9u);
  let x_692 : u32 = u_xlatu44;
  u_xlatu3 = (x_692 >> 11u);
  let x_695 : u32 = u_xlatu44;
  let x_696 : u32 = u_xlatu3;
  u_xlati44 = bitcast<i32>((x_695 ^ x_696));
  let x_699 : i32 = u_xlati44;
  u_xlati44 = (x_699 * 32769i);
  let x_703 : i32 = u_xlati44;
  let x_706 : u32 = u_xlatu16.y;
  u_xlati30 = bitcast<i32>((bitcast<u32>(x_703) ^ x_706));
  let x_710 : i32 = u_xlati30;
  u_xlatu30 = (bitcast<u32>(x_710) * 1025u);
  let x_713 : u32 = u_xlatu30;
  u_xlatu44 = (x_713 >> 6u);
  let x_715 : u32 = u_xlatu44;
  let x_716 : u32 = u_xlatu30;
  u_xlati30 = bitcast<i32>((x_715 ^ x_716));
  let x_719 : i32 = u_xlati30;
  u_xlatu30 = (bitcast<u32>(x_719) * 9u);
  let x_722 : u32 = u_xlatu30;
  u_xlatu44 = (x_722 >> 11u);
  let x_724 : u32 = u_xlatu44;
  let x_725 : u32 = u_xlatu30;
  u_xlati30 = bitcast<i32>((x_724 ^ x_725));
  let x_728 : i32 = u_xlati30;
  u_xlati30 = (x_728 * 32769i);
  let x_731 : i32 = u_xlati30;
  let x_734 : u32 = u_xlatu16.x;
  u_xlati16 = bitcast<i32>((bitcast<u32>(x_731) ^ x_734));
  let x_737 : i32 = u_xlati16;
  u_xlatu16.x = (bitcast<u32>(x_737) * 1025u);
  let x_742 : u32 = u_xlatu16.x;
  u_xlatu30 = (x_742 >> 6u);
  let x_744 : u32 = u_xlatu30;
  let x_746 : u32 = u_xlatu16.x;
  u_xlati16 = bitcast<i32>((x_744 ^ x_746));
  let x_749 : i32 = u_xlati16;
  u_xlatu16.x = (bitcast<u32>(x_749) * 9u);
  let x_754 : u32 = u_xlatu16.x;
  u_xlatu30 = (x_754 >> 11u);
  let x_756 : u32 = u_xlatu30;
  let x_758 : u32 = u_xlatu16.x;
  u_xlati16 = bitcast<i32>((x_756 ^ x_758));
  let x_761 : i32 = u_xlati16;
  u_xlati16 = (x_761 * 32769i);
  param = 1065353216i;
  let x_767 : i32 = u_xlati16;
  param_1 = x_767;
  param_2 = 0i;
  param_3 = 23i;
  let x_770 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlat16.x = bitcast<f32>(x_770);
  let x_774 : f32 = u_xlat16.x;
  u_xlat16.x = (x_774 + -1.0f);
  let x_779 : f32 = u_xlat16.x;
  u_xlat30 = (-(x_779) + 1.0f);
  let x_783 : bool = u_xlatb2.x;
  if (x_783) {
    let x_788 : f32 = u_xlat16.x;
    x_784 = x_788;
  } else {
    let x_790 : f32 = u_xlat30;
    x_784 = x_790;
  }
  let x_791 : f32 = x_784;
  u_xlat2.x = x_791;
  let x_793 : f32 = u_xlat43;
  let x_796 : f32 = u_xlat2.x;
  u_xlat43 = ((x_793 * 2.0f) + -(x_796));
  let x_799 : f32 = u_xlat43;
  let x_801 : f32 = u_xlat6.w;
  u_xlat2.x = (x_799 * x_801);
  let x_806 : f32 = u_xlat2.x;
  u_xlatb16 = (x_806 >= 0.40000000596046447754f);
  let x_809 : bool = u_xlatb16;
  if (x_809) {
    let x_814 : f32 = u_xlat2.x;
    x_810 = x_814;
  } else {
    x_810 = 0.0f;
  }
  let x_816 : f32 = x_810;
  u_xlat16.x = x_816;
  let x_819 : f32 = u_xlat6.w;
  let x_820 : f32 = u_xlat43;
  u_xlat43 = ((x_819 * x_820) + -0.40000000596046447754f);
  let x_825 : f32 = u_xlat2.x;
  u_xlat30 = dpdxCoarse(x_825);
  let x_828 : f32 = u_xlat2.x;
  u_xlat2.x = dpdyCoarse(x_828);
  let x_832 : f32 = u_xlat2.x;
  let x_834 : f32 = u_xlat30;
  u_xlat2.x = (abs(x_832) + abs(x_834));
  let x_839 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_839, 0.00009999999747378752f);
  let x_843 : f32 = u_xlat43;
  let x_845 : f32 = u_xlat2.x;
  u_xlat43 = (x_843 / x_845);
  let x_847 : f32 = u_xlat43;
  u_xlat43 = (x_847 + 0.5f);
  let x_849 : f32 = u_xlat43;
  u_xlat43 = clamp(x_849, 0.0f, 1.0f);
  let x_852 : f32 = x_149.x_AlphaToMaskAvailable;
  u_xlatb2.x = !((x_852 == 0.0f));
  let x_856 : bool = u_xlatb2.x;
  if (x_856) {
    let x_860 : f32 = u_xlat43;
    x_857 = x_860;
  } else {
    let x_863 : f32 = u_xlat16.x;
    x_857 = x_863;
  }
  let x_864 : f32 = x_857;
  u_xlat43 = x_864;
  let x_865 : f32 = u_xlat43;
  u_xlat16.x = (x_865 + -0.00009999999747378752f);
  let x_870 : f32 = u_xlat16.x;
  u_xlatb16 = (x_870 < 0.0f);
  let x_872 : bool = u_xlatb16;
  if (((select(0i, 1i, x_872) * -1i) != 0i)) {
    discard;
  }
  let x_880 : vec3<f32> = u_xlat14;
  let x_881 : vec3<f32> = u_xlat22;
  u_xlat14 = (x_880 * vec3<f32>(x_881.y, x_881.y, x_881.y));
  let x_884 : vec3<f32> = u_xlat22;
  let x_886 : vec4<f32> = vs_INTERP4;
  let x_889 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_884.x, x_884.x, x_884.x) * vec3<f32>(x_886.x, x_886.y, x_886.z)) + x_889);
  let x_891 : vec3<f32> = u_xlat22;
  let x_893 : vec3<f32> = vs_INTERP9;
  let x_895 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_891.z, x_891.z, x_891.z) * x_893) + x_895);
  let x_897 : vec3<f32> = u_xlat14;
  let x_898 : vec3<f32> = u_xlat14;
  u_xlat16.x = dot(x_897, x_898);
  let x_902 : f32 = u_xlat16.x;
  u_xlat16.x = inverseSqrt(x_902);
  let x_905 : vec3<f32> = u_xlat14;
  let x_906 : vec3<f32> = u_xlat16;
  u_xlat14 = (x_905 * vec3<f32>(x_906.x, x_906.x, x_906.x));
  let x_916 : vec2<f32> = vs_INTERP0;
  let x_918 : f32 = x_149.x_GlobalMipBias.x;
  let x_919 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_916, x_918);
  u_xlat3 = x_919;
  let x_924 : vec2<f32> = vs_INTERP0;
  let x_926 : f32 = x_149.x_GlobalMipBias.x;
  let x_927 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_924, x_926);
  u_xlat16 = vec3<f32>(x_927.x, x_927.y, x_927.z);
  let x_929 : vec4<f32> = u_xlat3;
  let x_933 : vec3<f32> = (vec3<f32>(x_929.x, x_929.y, x_929.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_934 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_933.x, x_933.y, x_933.z, x_934.w);
  let x_936 : vec3<f32> = u_xlat14;
  let x_937 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(x_936, vec3<f32>(x_937.x, x_937.y, x_937.z));
  let x_942 : f32 = u_xlat3.x;
  u_xlat3.x = (x_942 + 0.5f);
  let x_945 : vec3<f32> = u_xlat16;
  let x_946 : vec4<f32> = u_xlat3;
  u_xlat16 = (x_945 * vec3<f32>(x_946.x, x_946.x, x_946.x));
  let x_950 : f32 = u_xlat3.w;
  u_xlat3.x = max(x_950, 0.00009999999747378752f);
  let x_953 : vec3<f32> = u_xlat16;
  let x_954 : vec4<f32> = u_xlat3;
  u_xlat16 = (x_953 / vec3<f32>(x_954.x, x_954.x, x_954.x));
  let x_958 : f32 = u_xlat8.x;
  u_xlat8.x = x_958;
  let x_961 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_961, 0.0f, 1.0f);
  let x_964 : f32 = u_xlat43;
  u_xlat43 = x_964;
  let x_965 : f32 = u_xlat43;
  u_xlat43 = clamp(x_965, 0.0f, 1.0f);
  let x_967 : vec4<f32> = u_xlat7;
  let x_971 : vec3<f32> = (vec3<f32>(x_967.x, x_967.y, x_967.z) * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_972 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_971.x, x_971.y, x_971.z, x_972.w);
  let x_976 : f32 = u_xlat8.x;
  u_xlat45 = (-(x_976) + 1.0f);
  let x_979 : f32 = u_xlat45;
  let x_980 : f32 = u_xlat45;
  u_xlat4.x = (x_979 * x_980);
  let x_984 : f32 = u_xlat4.x;
  u_xlat4.x = max(x_984, 0.0078125f);
  let x_990 : f32 = u_xlat4.x;
  let x_992 : f32 = u_xlat4.x;
  u_xlat18 = (x_990 * x_992);
  let x_996 : f32 = u_xlat8.x;
  u_xlat32 = (x_996 + 0.04000002145767211914f);
  let x_999 : f32 = u_xlat32;
  u_xlat32 = min(x_999, 1.0f);
  let x_1003 : f32 = u_xlat4.x;
  u_xlat46 = ((x_1003 * 4.0f) + 2.0f);
  let x_1008 : f32 = vs_INTERP6.w;
  u_xlat47 = min(x_1008, 1.0f);
  let x_1010 : vec3<f32> = vs_INTERP8;
  let x_1012 : vec3<f32> = x_149.x_WorldSpaceCameraPos;
  let x_1014 : vec3<f32> = (x_1010 + -(x_1012));
  let x_1015 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1014.x, x_1014.y, x_1014.z, x_1015.w);
  let x_1017 : vec4<f32> = u_xlat6;
  let x_1019 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_1017.x, x_1017.y, x_1017.z), vec3<f32>(x_1019.x, x_1019.y, x_1019.z));
  let x_1025 : f32 = u_xlat6.x;
  let x_1027 : f32 = x_376.x_MainLightShadowParams.z;
  let x_1030 : f32 = x_376.x_MainLightShadowParams.w;
  u_xlat20.x = ((x_1025 * x_1027) + x_1030);
  let x_1034 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_1034, 0.0f, 1.0f);
  let x_1039 : f32 = u_xlat0.x;
  u_xlat34 = (-(x_1039) + 1.0f);
  let x_1043 : f32 = u_xlat20.x;
  let x_1044 : f32 = u_xlat34;
  let x_1047 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1043 * x_1044) + x_1047);
  let x_1058 : f32 = x_1056.x_MainLightCookieTextureFormat;
  u_xlatb20.x = !((x_1058 == -1.0f));
  let x_1062 : bool = u_xlatb20.x;
  if (x_1062) {
    let x_1065 : vec3<f32> = vs_INTERP8;
    let x_1068 : vec4<f32> = x_1056.x_MainLightWorldToLight[1i];
    let x_1070 : vec2<f32> = (vec2<f32>(x_1065.y, x_1065.y) * vec2<f32>(x_1068.x, x_1068.y));
    let x_1071 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_1070.x, x_1070.y, x_1071.z);
    let x_1074 : vec4<f32> = x_1056.x_MainLightWorldToLight[0i];
    let x_1076 : vec3<f32> = vs_INTERP8;
    let x_1079 : vec3<f32> = u_xlat20;
    let x_1081 : vec2<f32> = ((vec2<f32>(x_1074.x, x_1074.y) * vec2<f32>(x_1076.x, x_1076.x)) + vec2<f32>(x_1079.x, x_1079.y));
    let x_1082 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_1081.x, x_1081.y, x_1082.z);
    let x_1085 : vec4<f32> = x_1056.x_MainLightWorldToLight[2i];
    let x_1087 : vec3<f32> = vs_INTERP8;
    let x_1090 : vec3<f32> = u_xlat20;
    let x_1092 : vec2<f32> = ((vec2<f32>(x_1085.x, x_1085.y) * vec2<f32>(x_1087.z, x_1087.z)) + vec2<f32>(x_1090.x, x_1090.y));
    let x_1093 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_1092.x, x_1092.y, x_1093.z);
    let x_1095 : vec3<f32> = u_xlat20;
    let x_1098 : vec4<f32> = x_1056.x_MainLightWorldToLight[3i];
    let x_1100 : vec2<f32> = (vec2<f32>(x_1095.x, x_1095.y) + vec2<f32>(x_1098.x, x_1098.y));
    let x_1101 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_1100.x, x_1100.y, x_1101.z);
    let x_1103 : vec3<f32> = u_xlat20;
    let x_1107 : vec2<f32> = ((vec2<f32>(x_1103.x, x_1103.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1108 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_1107.x, x_1107.y, x_1108.z);
    let x_1115 : vec3<f32> = u_xlat20;
    let x_1118 : f32 = x_149.x_GlobalMipBias.x;
    let x_1119 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1115.x, x_1115.y), x_1118);
    u_xlat7 = x_1119;
    let x_1121 : f32 = x_1056.x_MainLightCookieTextureFormat;
    let x_1123 : f32 = x_1056.x_MainLightCookieTextureFormat;
    let x_1125 : f32 = x_1056.x_MainLightCookieTextureFormat;
    let x_1127 : f32 = x_1056.x_MainLightCookieTextureFormat;
    let x_1128 : vec4<f32> = vec4<f32>(x_1121, x_1123, x_1125, x_1127);
    let x_1135 : vec4<bool> = (vec4<f32>(x_1128.x, x_1128.y, x_1128.z, x_1128.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb20 = vec2<bool>(x_1135.x, x_1135.y);
    let x_1138 : bool = u_xlatb20.y;
    if (x_1138) {
      let x_1143 : f32 = u_xlat7.w;
      x_1139 = x_1143;
    } else {
      let x_1146 : f32 = u_xlat7.x;
      x_1139 = x_1146;
    }
    let x_1147 : f32 = x_1139;
    u_xlat34 = x_1147;
    let x_1149 : bool = u_xlatb20.x;
    if (x_1149) {
      let x_1153 : vec4<f32> = u_xlat7;
      x_1150 = vec3<f32>(x_1153.x, x_1153.y, x_1153.z);
    } else {
      let x_1156 : f32 = u_xlat34;
      x_1150 = vec3<f32>(x_1156, x_1156, x_1156);
    }
    let x_1158 : vec3<f32> = x_1150;
    u_xlat20 = x_1158;
  } else {
    u_xlat20.x = 1.0f;
    u_xlat20.y = 1.0f;
    u_xlat20.z = 1.0f;
  }
  let x_1163 : vec3<f32> = u_xlat20;
  let x_1165 : vec4<f32> = x_149.x_MainLightColor;
  u_xlat20 = (x_1163 * vec3<f32>(x_1165.x, x_1165.y, x_1165.z));
  let x_1168 : vec3<f32> = u_xlat5;
  let x_1170 : vec3<f32> = u_xlat14;
  u_xlat7.x = dot(-(x_1168), x_1170);
  let x_1174 : f32 = u_xlat7.x;
  let x_1176 : f32 = u_xlat7.x;
  u_xlat7.x = (x_1174 + x_1176);
  let x_1179 : vec3<f32> = u_xlat14;
  let x_1180 : vec4<f32> = u_xlat7;
  let x_1184 : vec3<f32> = u_xlat5;
  let x_1186 : vec3<f32> = ((x_1179 * -(vec3<f32>(x_1180.x, x_1180.x, x_1180.x))) + -(x_1184));
  let x_1187 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1186.x, x_1186.y, x_1186.z, x_1187.w);
  let x_1190 : vec3<f32> = u_xlat14;
  let x_1191 : vec3<f32> = u_xlat5;
  u_xlat49 = dot(x_1190, x_1191);
  let x_1193 : f32 = u_xlat49;
  u_xlat49 = clamp(x_1193, 0.0f, 1.0f);
  let x_1195 : f32 = u_xlat49;
  u_xlat49 = (-(x_1195) + 1.0f);
  let x_1198 : f32 = u_xlat49;
  let x_1199 : f32 = u_xlat49;
  u_xlat49 = (x_1198 * x_1199);
  let x_1201 : f32 = u_xlat49;
  let x_1202 : f32 = u_xlat49;
  u_xlat49 = (x_1201 * x_1202);
  let x_1204 : f32 = u_xlat45;
  u_xlat8.x = ((-(x_1204) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1211 : f32 = u_xlat45;
  let x_1213 : f32 = u_xlat8.x;
  u_xlat45 = (x_1211 * x_1213);
  let x_1215 : f32 = u_xlat45;
  u_xlat45 = (x_1215 * 6.0f);
  let x_1226 : vec4<f32> = u_xlat7;
  let x_1228 : f32 = u_xlat45;
  let x_1229 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1226.x, x_1226.y, x_1226.z), x_1228);
  u_xlat8 = x_1229;
  let x_1231 : f32 = u_xlat8.w;
  u_xlat45 = (x_1231 + -1.0f);
  let x_1234 : f32 = x_83.unity_SpecCube0_HDR.w;
  let x_1235 : f32 = u_xlat45;
  u_xlat45 = ((x_1234 * x_1235) + 1.0f);
  let x_1238 : f32 = u_xlat45;
  u_xlat45 = max(x_1238, 0.0f);
  let x_1240 : f32 = u_xlat45;
  u_xlat45 = log2(x_1240);
  let x_1242 : f32 = u_xlat45;
  let x_1244 : f32 = x_83.unity_SpecCube0_HDR.y;
  u_xlat45 = (x_1242 * x_1244);
  let x_1246 : f32 = u_xlat45;
  u_xlat45 = exp2(x_1246);
  let x_1248 : f32 = u_xlat45;
  let x_1250 : f32 = x_83.unity_SpecCube0_HDR.x;
  u_xlat45 = (x_1248 * x_1250);
  let x_1252 : vec4<f32> = u_xlat8;
  let x_1254 : f32 = u_xlat45;
  let x_1256 : vec3<f32> = (vec3<f32>(x_1252.x, x_1252.y, x_1252.z) * vec3<f32>(x_1254, x_1254, x_1254));
  let x_1257 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1256.x, x_1256.y, x_1256.z, x_1257.w);
  let x_1259 : vec3<f32> = u_xlat4;
  let x_1261 : vec3<f32> = u_xlat4;
  let x_1265 : vec2<f32> = ((vec2<f32>(x_1259.x, x_1259.x) * vec2<f32>(x_1261.x, x_1261.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1266 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1265.x, x_1265.y, x_1266.z, x_1266.w);
  let x_1269 : f32 = u_xlat8.y;
  u_xlat45 = (1.0f / x_1269);
  let x_1271 : f32 = u_xlat32;
  u_xlat4.x = (x_1271 + -0.03999999910593032837f);
  let x_1275 : f32 = u_xlat49;
  let x_1277 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_1275 * x_1277) + 0.03999999910593032837f);
  let x_1282 : f32 = u_xlat45;
  let x_1284 : f32 = u_xlat4.x;
  u_xlat45 = (x_1282 * x_1284);
  let x_1286 : f32 = u_xlat45;
  let x_1288 : vec4<f32> = u_xlat7;
  let x_1290 : vec3<f32> = (vec3<f32>(x_1286, x_1286, x_1286) * vec3<f32>(x_1288.x, x_1288.y, x_1288.z));
  let x_1291 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1290.x, x_1290.y, x_1290.z, x_1291.w);
  let x_1293 : vec3<f32> = u_xlat16;
  let x_1294 : vec4<f32> = u_xlat3;
  let x_1297 : vec4<f32> = u_xlat7;
  u_xlat16 = ((x_1293 * vec3<f32>(x_1294.x, x_1294.y, x_1294.z)) + vec3<f32>(x_1297.x, x_1297.y, x_1297.z));
  let x_1301 : f32 = u_xlat0.x;
  let x_1303 : f32 = x_83.unity_LightData.z;
  u_xlat0.x = (x_1301 * x_1303);
  let x_1306 : vec3<f32> = u_xlat14;
  let x_1308 : vec4<f32> = x_149.x_MainLightPosition;
  u_xlat45 = dot(x_1306, vec3<f32>(x_1308.x, x_1308.y, x_1308.z));
  let x_1311 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1311, 0.0f, 1.0f);
  let x_1314 : f32 = u_xlat0.x;
  let x_1315 : f32 = u_xlat45;
  u_xlat0.x = (x_1314 * x_1315);
  let x_1318 : vec3<f32> = u_xlat0;
  let x_1320 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_1318.x, x_1318.x, x_1318.x) * x_1320);
  let x_1322 : vec3<f32> = u_xlat5;
  let x_1324 : vec4<f32> = x_149.x_MainLightPosition;
  let x_1326 : vec3<f32> = (x_1322 + vec3<f32>(x_1324.x, x_1324.y, x_1324.z));
  let x_1327 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1326.x, x_1326.y, x_1326.z, x_1327.w);
  let x_1329 : vec4<f32> = u_xlat7;
  let x_1331 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(vec3<f32>(x_1329.x, x_1329.y, x_1329.z), vec3<f32>(x_1331.x, x_1331.y, x_1331.z));
  let x_1336 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1336, 1.17549435e-38f);
  let x_1340 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_1340);
  let x_1343 : vec3<f32> = u_xlat0;
  let x_1345 : vec4<f32> = u_xlat7;
  let x_1347 : vec3<f32> = (vec3<f32>(x_1343.x, x_1343.x, x_1343.x) * vec3<f32>(x_1345.x, x_1345.y, x_1345.z));
  let x_1348 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1347.x, x_1347.y, x_1347.z, x_1348.w);
  let x_1350 : vec3<f32> = u_xlat14;
  let x_1351 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_1350, vec3<f32>(x_1351.x, x_1351.y, x_1351.z));
  let x_1356 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1356, 0.0f, 1.0f);
  let x_1360 : vec4<f32> = x_149.x_MainLightPosition;
  let x_1362 : vec4<f32> = u_xlat7;
  u_xlat45 = dot(vec3<f32>(x_1360.x, x_1360.y, x_1360.z), vec3<f32>(x_1362.x, x_1362.y, x_1362.z));
  let x_1365 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1365, 0.0f, 1.0f);
  let x_1368 : f32 = u_xlat0.x;
  let x_1370 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1368 * x_1370);
  let x_1374 : f32 = u_xlat0.x;
  let x_1376 : f32 = u_xlat8.x;
  u_xlat0.x = ((x_1374 * x_1376) + 1.00001001358032226562f);
  let x_1381 : f32 = u_xlat45;
  let x_1382 : f32 = u_xlat45;
  u_xlat45 = (x_1381 * x_1382);
  let x_1385 : f32 = u_xlat0.x;
  let x_1387 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1385 * x_1387);
  let x_1390 : f32 = u_xlat45;
  u_xlat45 = max(x_1390, 0.10000000149011611938f);
  let x_1394 : f32 = u_xlat0.x;
  let x_1395 : f32 = u_xlat45;
  u_xlat0.x = (x_1394 * x_1395);
  let x_1398 : f32 = u_xlat46;
  let x_1400 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1398 * x_1400);
  let x_1403 : f32 = u_xlat18;
  let x_1405 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1403 / x_1405);
  let x_1408 : vec3<f32> = u_xlat0;
  let x_1412 : vec4<f32> = u_xlat3;
  let x_1414 : vec3<f32> = ((vec3<f32>(x_1408.x, x_1408.x, x_1408.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + vec3<f32>(x_1412.x, x_1412.y, x_1412.z));
  let x_1415 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1414.x, x_1414.y, x_1414.z, x_1415.w);
  let x_1417 : vec3<f32> = u_xlat20;
  let x_1418 : vec4<f32> = u_xlat7;
  u_xlat20 = (x_1417 * vec3<f32>(x_1418.x, x_1418.y, x_1418.z));
  let x_1422 : f32 = x_149.x_AdditionalLightsCount.x;
  let x_1424 : f32 = x_83.unity_LightData.y;
  u_xlat0.x = min(x_1422, x_1424);
  let x_1428 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1428));
  let x_1432 : f32 = u_xlat6.x;
  let x_1435 : f32 = x_376.x_AdditionalShadowFadeParams.x;
  let x_1438 : f32 = x_376.x_AdditionalShadowFadeParams.y;
  u_xlat45 = ((x_1432 * x_1435) + x_1438);
  let x_1440 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1440, 0.0f, 1.0f);
  let x_1446 : f32 = x_1056.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1448 : f32 = x_1056.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1450 : f32 = x_1056.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1452 : f32 = x_1056.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1453 : vec4<f32> = vec4<f32>(x_1446, x_1448, x_1450, x_1452);
  let x_1460 : vec4<bool> = (vec4<f32>(x_1453.x, x_1453.y, x_1453.z, x_1453.w) == vec4<f32>(0.0f, 0.0f, 1.0f, 0.0f));
  let x_1461 : vec2<bool> = vec2<bool>(x_1460.x, x_1460.z);
  let x_1462 : vec3<bool> = u_xlatb4;
  u_xlatb4 = vec3<bool>(x_1461.x, x_1462.y, x_1461.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1473 : u32 = u_xlatu_loop_1;
    let x_1474 : u32 = u_xlatu0;
    if ((x_1473 < x_1474)) {
    } else {
      break;
    }
    let x_1477 : u32 = u_xlatu_loop_1;
    u_xlatu49 = (x_1477 >> 2u);
    let x_1480 : u32 = u_xlatu_loop_1;
    u_xlati22 = bitcast<i32>((x_1480 & 3u));
    let x_1483 : u32 = u_xlatu49;
    let x_1486 : vec4<f32> = x_83.unity_LightIndices[bitcast<i32>(x_1483)];
    let x_1496 : i32 = u_xlati22;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1501 : vec4<u32> = indexable[x_1496];
    u_xlat49 = dot(x_1486, bitcast<vec4<f32>>(x_1501));
    let x_1505 : f32 = u_xlat49;
    u_xlati49 = i32(x_1505);
    let x_1507 : vec3<f32> = vs_INTERP8;
    let x_1518 : i32 = u_xlati49;
    let x_1520 : vec4<f32> = x_1517.x_AdditionalLightsPosition[x_1518];
    let x_1523 : i32 = u_xlati49;
    let x_1525 : vec4<f32> = x_1517.x_AdditionalLightsPosition[x_1523];
    u_xlat22 = ((-(x_1507) * vec3<f32>(x_1520.w, x_1520.w, x_1520.w)) + vec3<f32>(x_1525.x, x_1525.y, x_1525.z));
    let x_1528 : vec3<f32> = u_xlat22;
    let x_1529 : vec3<f32> = u_xlat22;
    u_xlat9.x = dot(x_1528, x_1529);
    let x_1533 : f32 = u_xlat9.x;
    u_xlat9.x = max(x_1533, 0.00006103515625f);
    let x_1539 : f32 = u_xlat9.x;
    u_xlat23 = inverseSqrt(x_1539);
    let x_1541 : vec3<f32> = u_xlat22;
    let x_1542 : f32 = u_xlat23;
    u_xlat10 = (x_1541 * vec3<f32>(x_1542, x_1542, x_1542));
    let x_1547 : f32 = u_xlat9.x;
    u_xlat37 = (1.0f / x_1547);
    let x_1550 : f32 = u_xlat9.x;
    let x_1551 : i32 = u_xlati49;
    let x_1553 : f32 = x_1517.x_AdditionalLightsAttenuation[x_1551].x;
    u_xlat9.x = (x_1550 * x_1553);
    let x_1557 : f32 = u_xlat9.x;
    let x_1560 : f32 = u_xlat9.x;
    u_xlat9.x = ((-(x_1557) * x_1560) + 1.0f);
    let x_1565 : f32 = u_xlat9.x;
    u_xlat9.x = max(x_1565, 0.0f);
    let x_1569 : f32 = u_xlat9.x;
    let x_1571 : f32 = u_xlat9.x;
    u_xlat9.x = (x_1569 * x_1571);
    let x_1575 : f32 = u_xlat9.x;
    let x_1576 : f32 = u_xlat37;
    u_xlat9.x = (x_1575 * x_1576);
    let x_1579 : i32 = u_xlati49;
    let x_1581 : vec4<f32> = x_1517.x_AdditionalLightsSpotDir[x_1579];
    let x_1583 : vec3<f32> = u_xlat10;
    u_xlat37 = dot(vec3<f32>(x_1581.x, x_1581.y, x_1581.z), x_1583);
    let x_1585 : f32 = u_xlat37;
    let x_1586 : i32 = u_xlati49;
    let x_1588 : f32 = x_1517.x_AdditionalLightsAttenuation[x_1586].z;
    let x_1590 : i32 = u_xlati49;
    let x_1592 : f32 = x_1517.x_AdditionalLightsAttenuation[x_1590].w;
    u_xlat37 = ((x_1585 * x_1588) + x_1592);
    let x_1594 : f32 = u_xlat37;
    u_xlat37 = clamp(x_1594, 0.0f, 1.0f);
    let x_1596 : f32 = u_xlat37;
    let x_1597 : f32 = u_xlat37;
    u_xlat37 = (x_1596 * x_1597);
    let x_1599 : f32 = u_xlat37;
    let x_1601 : f32 = u_xlat9.x;
    u_xlat9.x = (x_1599 * x_1601);
    let x_1606 : i32 = u_xlati49;
    let x_1608 : f32 = x_376.x_AdditionalShadowParams[x_1606].w;
    u_xlati37 = i32(x_1608);
    let x_1611 : i32 = u_xlati37;
    u_xlatb51 = (x_1611 >= 0i);
    let x_1613 : bool = u_xlatb51;
    if (x_1613) {
      let x_1617 : i32 = u_xlati49;
      let x_1619 : f32 = x_376.x_AdditionalShadowParams[x_1617].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1619, x_1619, x_1619, x_1619))));
      let x_1623 : bool = u_xlatb51;
      if (x_1623) {
        let x_1627 : vec3<f32> = u_xlat10;
        let x_1630 : vec3<f32> = u_xlat10;
        let x_1633 : vec4<bool> = (abs(vec4<f32>(x_1627.z, x_1627.z, x_1627.y, x_1627.z)) >= abs(vec4<f32>(x_1630.x, x_1630.y, x_1630.x, x_1630.x)));
        let x_1634 : vec3<bool> = vec3<bool>(x_1633.x, x_1633.y, x_1633.z);
        let x_1635 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1634.x, x_1634.y, x_1634.z, x_1635.w);
        let x_1638 : bool = u_xlatb11.y;
        let x_1640 : bool = u_xlatb11.x;
        u_xlatb51 = (x_1638 & x_1640);
        let x_1642 : vec3<f32> = u_xlat10;
        let x_1645 : vec4<bool> = (-(vec4<f32>(x_1642.z, x_1642.y, x_1642.z, x_1642.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1646 : vec3<bool> = vec3<bool>(x_1645.x, x_1645.y, x_1645.w);
        let x_1647 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1646.x, x_1646.y, x_1647.z, x_1646.z);
        let x_1651 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1651);
        let x_1656 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1656);
        let x_1661 : bool = u_xlatb11.w;
        u_xlat52 = select(0.0f, 1.0f, x_1661);
        let x_1664 : bool = u_xlatb11.z;
        if (x_1664) {
          let x_1669 : f32 = u_xlat11.y;
          x_1665 = x_1669;
        } else {
          let x_1671 : f32 = u_xlat52;
          x_1665 = x_1671;
        }
        let x_1672 : f32 = x_1665;
        u_xlat52 = x_1672;
        let x_1674 : bool = u_xlatb51;
        if (x_1674) {
          let x_1679 : f32 = u_xlat11.x;
          x_1675 = x_1679;
        } else {
          let x_1681 : f32 = u_xlat52;
          x_1675 = x_1681;
        }
        let x_1682 : f32 = x_1675;
        u_xlat51 = x_1682;
        let x_1683 : i32 = u_xlati49;
        let x_1685 : f32 = x_376.x_AdditionalShadowParams[x_1683].w;
        u_xlat52 = trunc(x_1685);
        let x_1687 : f32 = u_xlat51;
        let x_1688 : f32 = u_xlat52;
        u_xlat51 = (x_1687 + x_1688);
        let x_1690 : f32 = u_xlat51;
        u_xlati37 = i32(x_1690);
      }
      let x_1692 : i32 = u_xlati37;
      u_xlati37 = (x_1692 << bitcast<u32>(2i));
      let x_1694 : vec3<f32> = vs_INTERP8;
      let x_1697 : i32 = u_xlati37;
      let x_1700 : i32 = u_xlati37;
      let x_1704 : vec4<f32> = x_376.x_AdditionalLightsWorldToShadow[((x_1697 + 1i) / 4i)][((x_1700 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1694.y, x_1694.y, x_1694.y, x_1694.y) * x_1704);
      let x_1706 : i32 = u_xlati37;
      let x_1708 : i32 = u_xlati37;
      let x_1711 : vec4<f32> = x_376.x_AdditionalLightsWorldToShadow[(x_1706 / 4i)][(x_1708 % 4i)];
      let x_1712 : vec3<f32> = vs_INTERP8;
      let x_1715 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1711 * vec4<f32>(x_1712.x, x_1712.x, x_1712.x, x_1712.x)) + x_1715);
      let x_1717 : i32 = u_xlati37;
      let x_1720 : i32 = u_xlati37;
      let x_1724 : vec4<f32> = x_376.x_AdditionalLightsWorldToShadow[((x_1717 + 2i) / 4i)][((x_1720 + 2i) % 4i)];
      let x_1725 : vec3<f32> = vs_INTERP8;
      let x_1728 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1724 * vec4<f32>(x_1725.z, x_1725.z, x_1725.z, x_1725.z)) + x_1728);
      let x_1730 : vec4<f32> = u_xlat11;
      let x_1731 : i32 = u_xlati37;
      let x_1734 : i32 = u_xlati37;
      let x_1738 : vec4<f32> = x_376.x_AdditionalLightsWorldToShadow[((x_1731 + 3i) / 4i)][((x_1734 + 3i) % 4i)];
      u_xlat11 = (x_1730 + x_1738);
      let x_1740 : vec4<f32> = u_xlat11;
      let x_1742 : vec4<f32> = u_xlat11;
      let x_1744 : vec3<f32> = (vec3<f32>(x_1740.x, x_1740.y, x_1740.z) / vec3<f32>(x_1742.w, x_1742.w, x_1742.w));
      let x_1745 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1744.x, x_1744.y, x_1744.z, x_1745.w);
      let x_1748 : vec4<f32> = u_xlat11;
      let x_1749 : vec2<f32> = vec2<f32>(x_1748.x, x_1748.y);
      let x_1751 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1749.x, x_1749.y, x_1751);
      let x_1759 : vec3<f32> = txVec1;
      let x_1761 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1759.xy, x_1759.z);
      u_xlat37 = x_1761;
      let x_1762 : i32 = u_xlati49;
      let x_1764 : f32 = x_376.x_AdditionalShadowParams[x_1762].x;
      u_xlat51 = (1.0f + -(x_1764));
      let x_1767 : f32 = u_xlat37;
      let x_1768 : i32 = u_xlati49;
      let x_1770 : f32 = x_376.x_AdditionalShadowParams[x_1768].x;
      let x_1772 : f32 = u_xlat51;
      u_xlat37 = ((x_1767 * x_1770) + x_1772);
      let x_1775 : f32 = u_xlat11.z;
      u_xlatb51 = (0.0f >= x_1775);
      let x_1779 : f32 = u_xlat11.z;
      u_xlatb52 = (x_1779 >= 1.0f);
      let x_1781 : bool = u_xlatb51;
      let x_1782 : bool = u_xlatb52;
      u_xlatb51 = (x_1781 | x_1782);
      let x_1784 : bool = u_xlatb51;
      let x_1785 : f32 = u_xlat37;
      u_xlat37 = select(x_1785, 1.0f, x_1784);
    } else {
      u_xlat37 = 1.0f;
    }
    let x_1788 : f32 = u_xlat37;
    u_xlat51 = (-(x_1788) + 1.0f);
    let x_1791 : f32 = u_xlat45;
    let x_1792 : f32 = u_xlat51;
    let x_1794 : f32 = u_xlat37;
    u_xlat37 = ((x_1791 * x_1792) + x_1794);
    let x_1797 : i32 = u_xlati49;
    u_xlati51 = (1i << bitcast<u32>((x_1797 & 31i)));
    let x_1801 : i32 = u_xlati51;
    let x_1804 : f32 = x_1056.x_AdditionalLightsCookieEnableBits;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_1801) & bitcast<u32>(x_1804)));
    let x_1808 : i32 = u_xlati51;
    if ((x_1808 != 0i)) {
      let x_1812 : i32 = u_xlati49;
      let x_1814 : f32 = x_1056.x_AdditionalLightsLightTypes[x_1812].el;
      u_xlati51 = i32(x_1814);
      let x_1817 : i32 = u_xlati51;
      u_xlati52 = select(1i, 0i, (x_1817 != 0i));
      let x_1821 : i32 = u_xlati49;
      u_xlati11 = (x_1821 << bitcast<u32>(2i));
      let x_1823 : i32 = u_xlati52;
      if ((x_1823 != 0i)) {
        let x_1828 : vec3<f32> = vs_INTERP8;
        let x_1830 : i32 = u_xlati11;
        let x_1833 : i32 = u_xlati11;
        let x_1837 : vec4<f32> = x_1056.x_AdditionalLightsWorldToLights[((x_1830 + 1i) / 4i)][((x_1833 + 1i) % 4i)];
        u_xlat25 = (vec3<f32>(x_1828.y, x_1828.y, x_1828.y) * vec3<f32>(x_1837.x, x_1837.y, x_1837.w));
        let x_1840 : i32 = u_xlati11;
        let x_1842 : i32 = u_xlati11;
        let x_1845 : vec4<f32> = x_1056.x_AdditionalLightsWorldToLights[(x_1840 / 4i)][(x_1842 % 4i)];
        let x_1847 : vec3<f32> = vs_INTERP8;
        let x_1850 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1845.x, x_1845.y, x_1845.w) * vec3<f32>(x_1847.x, x_1847.x, x_1847.x)) + x_1850);
        let x_1852 : i32 = u_xlati11;
        let x_1855 : i32 = u_xlati11;
        let x_1859 : vec4<f32> = x_1056.x_AdditionalLightsWorldToLights[((x_1852 + 2i) / 4i)][((x_1855 + 2i) % 4i)];
        let x_1861 : vec3<f32> = vs_INTERP8;
        let x_1864 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1859.x, x_1859.y, x_1859.w) * vec3<f32>(x_1861.z, x_1861.z, x_1861.z)) + x_1864);
        let x_1866 : vec3<f32> = u_xlat25;
        let x_1867 : i32 = u_xlati11;
        let x_1870 : i32 = u_xlati11;
        let x_1874 : vec4<f32> = x_1056.x_AdditionalLightsWorldToLights[((x_1867 + 3i) / 4i)][((x_1870 + 3i) % 4i)];
        u_xlat25 = (x_1866 + vec3<f32>(x_1874.x, x_1874.y, x_1874.w));
        let x_1877 : vec3<f32> = u_xlat25;
        let x_1879 : vec3<f32> = u_xlat25;
        let x_1881 : vec2<f32> = (vec2<f32>(x_1877.x, x_1877.y) / vec2<f32>(x_1879.z, x_1879.z));
        let x_1882 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1881.x, x_1881.y, x_1882.z);
        let x_1884 : vec3<f32> = u_xlat25;
        let x_1887 : vec2<f32> = ((vec2<f32>(x_1884.x, x_1884.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1888 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1887.x, x_1887.y, x_1888.z);
        let x_1890 : vec3<f32> = u_xlat25;
        let x_1894 : vec2<f32> = clamp(vec2<f32>(x_1890.x, x_1890.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1895 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1894.x, x_1894.y, x_1895.z);
        let x_1897 : i32 = u_xlati49;
        let x_1899 : vec4<f32> = x_1056.x_AdditionalLightsCookieAtlasUVRects[x_1897];
        let x_1901 : vec3<f32> = u_xlat25;
        let x_1904 : i32 = u_xlati49;
        let x_1906 : vec4<f32> = x_1056.x_AdditionalLightsCookieAtlasUVRects[x_1904];
        let x_1908 : vec2<f32> = ((vec2<f32>(x_1899.x, x_1899.y) * vec2<f32>(x_1901.x, x_1901.y)) + vec2<f32>(x_1906.z, x_1906.w));
        let x_1909 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1908.x, x_1908.y, x_1909.z);
      } else {
        let x_1912 : i32 = u_xlati51;
        u_xlatb51 = (x_1912 == 1i);
        let x_1914 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_1914);
        let x_1916 : i32 = u_xlati51;
        if ((x_1916 != 0i)) {
          let x_1921 : vec3<f32> = vs_INTERP8;
          let x_1923 : i32 = u_xlati11;
          let x_1926 : i32 = u_xlati11;
          let x_1930 : vec4<f32> = x_1056.x_AdditionalLightsWorldToLights[((x_1923 + 1i) / 4i)][((x_1926 + 1i) % 4i)];
          let x_1932 : vec2<f32> = (vec2<f32>(x_1921.y, x_1921.y) * vec2<f32>(x_1930.x, x_1930.y));
          let x_1933 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1932.x, x_1932.y, x_1933.z, x_1933.w);
          let x_1935 : i32 = u_xlati11;
          let x_1937 : i32 = u_xlati11;
          let x_1940 : vec4<f32> = x_1056.x_AdditionalLightsWorldToLights[(x_1935 / 4i)][(x_1937 % 4i)];
          let x_1942 : vec3<f32> = vs_INTERP8;
          let x_1945 : vec4<f32> = u_xlat12;
          let x_1947 : vec2<f32> = ((vec2<f32>(x_1940.x, x_1940.y) * vec2<f32>(x_1942.x, x_1942.x)) + vec2<f32>(x_1945.x, x_1945.y));
          let x_1948 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1947.x, x_1947.y, x_1948.z, x_1948.w);
          let x_1950 : i32 = u_xlati11;
          let x_1953 : i32 = u_xlati11;
          let x_1957 : vec4<f32> = x_1056.x_AdditionalLightsWorldToLights[((x_1950 + 2i) / 4i)][((x_1953 + 2i) % 4i)];
          let x_1959 : vec3<f32> = vs_INTERP8;
          let x_1962 : vec4<f32> = u_xlat12;
          let x_1964 : vec2<f32> = ((vec2<f32>(x_1957.x, x_1957.y) * vec2<f32>(x_1959.z, x_1959.z)) + vec2<f32>(x_1962.x, x_1962.y));
          let x_1965 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1964.x, x_1964.y, x_1965.z, x_1965.w);
          let x_1967 : vec4<f32> = u_xlat12;
          let x_1969 : i32 = u_xlati11;
          let x_1972 : i32 = u_xlati11;
          let x_1976 : vec4<f32> = x_1056.x_AdditionalLightsWorldToLights[((x_1969 + 3i) / 4i)][((x_1972 + 3i) % 4i)];
          let x_1978 : vec2<f32> = (vec2<f32>(x_1967.x, x_1967.y) + vec2<f32>(x_1976.x, x_1976.y));
          let x_1979 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1978.x, x_1978.y, x_1979.z, x_1979.w);
          let x_1981 : vec4<f32> = u_xlat12;
          let x_1984 : vec2<f32> = ((vec2<f32>(x_1981.x, x_1981.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1985 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1984.x, x_1984.y, x_1985.z, x_1985.w);
          let x_1987 : vec4<f32> = u_xlat12;
          let x_1989 : vec2<f32> = fract(vec2<f32>(x_1987.x, x_1987.y));
          let x_1990 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1989.x, x_1989.y, x_1990.z, x_1990.w);
          let x_1992 : i32 = u_xlati49;
          let x_1994 : vec4<f32> = x_1056.x_AdditionalLightsCookieAtlasUVRects[x_1992];
          let x_1996 : vec4<f32> = u_xlat12;
          let x_1999 : i32 = u_xlati49;
          let x_2001 : vec4<f32> = x_1056.x_AdditionalLightsCookieAtlasUVRects[x_1999];
          let x_2003 : vec2<f32> = ((vec2<f32>(x_1994.x, x_1994.y) * vec2<f32>(x_1996.x, x_1996.y)) + vec2<f32>(x_2001.z, x_2001.w));
          let x_2004 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_2003.x, x_2003.y, x_2004.z);
        } else {
          let x_2007 : vec3<f32> = vs_INTERP8;
          let x_2009 : i32 = u_xlati11;
          let x_2012 : i32 = u_xlati11;
          let x_2016 : vec4<f32> = x_1056.x_AdditionalLightsWorldToLights[((x_2009 + 1i) / 4i)][((x_2012 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2007.y, x_2007.y, x_2007.y, x_2007.y) * x_2016);
          let x_2018 : i32 = u_xlati11;
          let x_2020 : i32 = u_xlati11;
          let x_2023 : vec4<f32> = x_1056.x_AdditionalLightsWorldToLights[(x_2018 / 4i)][(x_2020 % 4i)];
          let x_2024 : vec3<f32> = vs_INTERP8;
          let x_2027 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2023 * vec4<f32>(x_2024.x, x_2024.x, x_2024.x, x_2024.x)) + x_2027);
          let x_2029 : i32 = u_xlati11;
          let x_2032 : i32 = u_xlati11;
          let x_2036 : vec4<f32> = x_1056.x_AdditionalLightsWorldToLights[((x_2029 + 2i) / 4i)][((x_2032 + 2i) % 4i)];
          let x_2037 : vec3<f32> = vs_INTERP8;
          let x_2040 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2036 * vec4<f32>(x_2037.z, x_2037.z, x_2037.z, x_2037.z)) + x_2040);
          let x_2042 : vec4<f32> = u_xlat12;
          let x_2043 : i32 = u_xlati11;
          let x_2046 : i32 = u_xlati11;
          let x_2050 : vec4<f32> = x_1056.x_AdditionalLightsWorldToLights[((x_2043 + 3i) / 4i)][((x_2046 + 3i) % 4i)];
          u_xlat12 = (x_2042 + x_2050);
          let x_2052 : vec4<f32> = u_xlat12;
          let x_2054 : vec4<f32> = u_xlat12;
          let x_2056 : vec3<f32> = (vec3<f32>(x_2052.x, x_2052.y, x_2052.z) / vec3<f32>(x_2054.w, x_2054.w, x_2054.w));
          let x_2057 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2056.x, x_2056.y, x_2056.z, x_2057.w);
          let x_2059 : vec4<f32> = u_xlat12;
          let x_2061 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(vec3<f32>(x_2059.x, x_2059.y, x_2059.z), vec3<f32>(x_2061.x, x_2061.y, x_2061.z));
          let x_2064 : f32 = u_xlat51;
          u_xlat51 = inverseSqrt(x_2064);
          let x_2066 : f32 = u_xlat51;
          let x_2068 : vec4<f32> = u_xlat12;
          let x_2070 : vec3<f32> = (vec3<f32>(x_2066, x_2066, x_2066) * vec3<f32>(x_2068.x, x_2068.y, x_2068.z));
          let x_2071 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2070.x, x_2070.y, x_2070.z, x_2071.w);
          let x_2073 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(abs(vec3<f32>(x_2073.x, x_2073.y, x_2073.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2078 : f32 = u_xlat51;
          u_xlat51 = max(x_2078, 0.00000099999999747524f);
          let x_2081 : f32 = u_xlat51;
          u_xlat51 = (1.0f / x_2081);
          let x_2084 : f32 = u_xlat51;
          let x_2086 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_2084, x_2084, x_2084) * vec3<f32>(x_2086.z, x_2086.x, x_2086.y));
          let x_2090 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2090);
          let x_2094 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2094, 0.0f, 1.0f);
          let x_2097 : vec3<f32> = u_xlat13;
          let x_2099 : vec4<bool> = (vec4<f32>(x_2097.y, x_2097.y, x_2097.y, x_2097.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_2100 : vec2<bool> = vec2<bool>(x_2099.x, x_2099.w);
          let x_2101 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_2100.x, x_2101.y, x_2101.z, x_2100.y);
          let x_2104 : bool = u_xlatb11.x;
          if (x_2104) {
            let x_2109 : f32 = u_xlat13.x;
            x_2105 = x_2109;
          } else {
            let x_2112 : f32 = u_xlat13.x;
            x_2105 = -(x_2112);
          }
          let x_2114 : f32 = x_2105;
          u_xlat11.x = x_2114;
          let x_2117 : bool = u_xlatb11.w;
          if (x_2117) {
            let x_2122 : f32 = u_xlat13.x;
            x_2118 = x_2122;
          } else {
            let x_2125 : f32 = u_xlat13.x;
            x_2118 = -(x_2125);
          }
          let x_2127 : f32 = x_2118;
          u_xlat11.w = x_2127;
          let x_2129 : vec4<f32> = u_xlat12;
          let x_2131 : f32 = u_xlat51;
          let x_2134 : vec4<f32> = u_xlat11;
          let x_2136 : vec2<f32> = ((vec2<f32>(x_2129.x, x_2129.y) * vec2<f32>(x_2131, x_2131)) + vec2<f32>(x_2134.x, x_2134.w));
          let x_2137 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2136.x, x_2137.y, x_2137.z, x_2136.y);
          let x_2139 : vec4<f32> = u_xlat11;
          let x_2142 : vec2<f32> = ((vec2<f32>(x_2139.x, x_2139.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2143 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2142.x, x_2143.y, x_2143.z, x_2142.y);
          let x_2145 : vec4<f32> = u_xlat11;
          let x_2149 : vec2<f32> = clamp(vec2<f32>(x_2145.x, x_2145.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2150 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2149.x, x_2150.y, x_2150.z, x_2149.y);
          let x_2152 : i32 = u_xlati49;
          let x_2154 : vec4<f32> = x_1056.x_AdditionalLightsCookieAtlasUVRects[x_2152];
          let x_2156 : vec4<f32> = u_xlat11;
          let x_2159 : i32 = u_xlati49;
          let x_2161 : vec4<f32> = x_1056.x_AdditionalLightsCookieAtlasUVRects[x_2159];
          let x_2163 : vec2<f32> = ((vec2<f32>(x_2154.x, x_2154.y) * vec2<f32>(x_2156.x, x_2156.w)) + vec2<f32>(x_2161.z, x_2161.w));
          let x_2164 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_2163.x, x_2163.y, x_2164.z);
        }
      }
      let x_2171 : vec3<f32> = u_xlat25;
      let x_2173 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_2171.x, x_2171.y), 0.0f);
      u_xlat11 = x_2173;
      let x_2175 : bool = u_xlatb4.z;
      if (x_2175) {
        let x_2180 : f32 = u_xlat11.w;
        x_2176 = x_2180;
      } else {
        let x_2183 : f32 = u_xlat11.x;
        x_2176 = x_2183;
      }
      let x_2184 : f32 = x_2176;
      u_xlat51 = x_2184;
      let x_2186 : bool = u_xlatb4.x;
      if (x_2186) {
        let x_2190 : vec4<f32> = u_xlat11;
        x_2187 = vec3<f32>(x_2190.x, x_2190.y, x_2190.z);
      } else {
        let x_2193 : f32 = u_xlat51;
        x_2187 = vec3<f32>(x_2193, x_2193, x_2193);
      }
      let x_2195 : vec3<f32> = x_2187;
      let x_2196 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2195.x, x_2195.y, x_2195.z, x_2196.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2202 : vec4<f32> = u_xlat11;
    let x_2204 : i32 = u_xlati49;
    let x_2206 : vec4<f32> = x_1517.x_AdditionalLightsColor[x_2204];
    let x_2208 : vec3<f32> = (vec3<f32>(x_2202.x, x_2202.y, x_2202.z) * vec3<f32>(x_2206.x, x_2206.y, x_2206.z));
    let x_2209 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2208.x, x_2208.y, x_2208.z, x_2209.w);
    let x_2211 : f32 = u_xlat37;
    let x_2213 : f32 = u_xlat9.x;
    u_xlat49 = (x_2211 * x_2213);
    let x_2215 : vec3<f32> = u_xlat14;
    let x_2216 : vec3<f32> = u_xlat10;
    u_xlat9.x = dot(x_2215, x_2216);
    let x_2220 : f32 = u_xlat9.x;
    u_xlat9.x = clamp(x_2220, 0.0f, 1.0f);
    let x_2223 : f32 = u_xlat49;
    let x_2225 : f32 = u_xlat9.x;
    u_xlat49 = (x_2223 * x_2225);
    let x_2227 : f32 = u_xlat49;
    let x_2229 : vec4<f32> = u_xlat11;
    let x_2231 : vec3<f32> = (vec3<f32>(x_2227, x_2227, x_2227) * vec3<f32>(x_2229.x, x_2229.y, x_2229.z));
    let x_2232 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2231.x, x_2232.y, x_2231.y, x_2231.z);
    let x_2234 : vec3<f32> = u_xlat22;
    let x_2235 : f32 = u_xlat23;
    let x_2238 : vec3<f32> = u_xlat5;
    u_xlat22 = ((x_2234 * vec3<f32>(x_2235, x_2235, x_2235)) + x_2238);
    let x_2240 : vec3<f32> = u_xlat22;
    let x_2241 : vec3<f32> = u_xlat22;
    u_xlat49 = dot(x_2240, x_2241);
    let x_2243 : f32 = u_xlat49;
    u_xlat49 = max(x_2243, 1.17549435e-38f);
    let x_2245 : f32 = u_xlat49;
    u_xlat49 = inverseSqrt(x_2245);
    let x_2247 : f32 = u_xlat49;
    let x_2249 : vec3<f32> = u_xlat22;
    u_xlat22 = (vec3<f32>(x_2247, x_2247, x_2247) * x_2249);
    let x_2251 : vec3<f32> = u_xlat14;
    let x_2252 : vec3<f32> = u_xlat22;
    u_xlat49 = dot(x_2251, x_2252);
    let x_2254 : f32 = u_xlat49;
    u_xlat49 = clamp(x_2254, 0.0f, 1.0f);
    let x_2256 : vec3<f32> = u_xlat10;
    let x_2257 : vec3<f32> = u_xlat22;
    u_xlat22.x = dot(x_2256, x_2257);
    let x_2261 : f32 = u_xlat22.x;
    u_xlat22.x = clamp(x_2261, 0.0f, 1.0f);
    let x_2264 : f32 = u_xlat49;
    let x_2265 : f32 = u_xlat49;
    u_xlat49 = (x_2264 * x_2265);
    let x_2267 : f32 = u_xlat49;
    let x_2269 : f32 = u_xlat8.x;
    u_xlat49 = ((x_2267 * x_2269) + 1.00001001358032226562f);
    let x_2273 : f32 = u_xlat22.x;
    let x_2275 : f32 = u_xlat22.x;
    u_xlat22.x = (x_2273 * x_2275);
    let x_2278 : f32 = u_xlat49;
    let x_2279 : f32 = u_xlat49;
    u_xlat49 = (x_2278 * x_2279);
    let x_2282 : f32 = u_xlat22.x;
    u_xlat22.x = max(x_2282, 0.10000000149011611938f);
    let x_2285 : f32 = u_xlat49;
    let x_2287 : f32 = u_xlat22.x;
    u_xlat49 = (x_2285 * x_2287);
    let x_2289 : f32 = u_xlat46;
    let x_2290 : f32 = u_xlat49;
    u_xlat49 = (x_2289 * x_2290);
    let x_2292 : f32 = u_xlat18;
    let x_2293 : f32 = u_xlat49;
    u_xlat49 = (x_2292 / x_2293);
    let x_2295 : f32 = u_xlat49;
    let x_2298 : vec4<f32> = u_xlat3;
    u_xlat22 = ((vec3<f32>(x_2295, x_2295, x_2295) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + vec3<f32>(x_2298.x, x_2298.y, x_2298.z));
    let x_2301 : vec3<f32> = u_xlat22;
    let x_2302 : vec4<f32> = u_xlat9;
    let x_2305 : vec4<f32> = u_xlat7;
    let x_2307 : vec3<f32> = ((x_2301 * vec3<f32>(x_2302.x, x_2302.z, x_2302.w)) + vec3<f32>(x_2305.x, x_2305.y, x_2305.z));
    let x_2308 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2307.x, x_2307.y, x_2307.z, x_2308.w);

    continuing {
      let x_2310 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2310 + bitcast<u32>(1i));
    }
  }
  let x_2312 : vec3<f32> = u_xlat16;
  let x_2313 : f32 = u_xlat47;
  let x_2316 : vec3<f32> = u_xlat20;
  u_xlat0 = ((x_2312 * vec3<f32>(x_2313, x_2313, x_2313)) + x_2316);
  let x_2318 : vec4<f32> = u_xlat7;
  let x_2320 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2318.x, x_2318.y, x_2318.z) + x_2320);
  let x_2324 : vec4<f32> = vs_INTERP6;
  let x_2326 : vec3<f32> = u_xlat1;
  let x_2328 : vec3<f32> = u_xlat0;
  let x_2329 : vec3<f32> = ((vec3<f32>(x_2324.w, x_2324.w, x_2324.w) * x_2326) + x_2328);
  let x_2330 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2329.x, x_2329.y, x_2329.z, x_2330.w);
  let x_2333 : bool = u_xlatb2.x;
  let x_2334 : f32 = u_xlat43;
  SV_Target0.w = select(1.0f, x_2334, x_2333);
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


