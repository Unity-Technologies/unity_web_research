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

@group(0) @binding(5) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(11) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP5 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

@group(1) @binding(5) var<uniform> x_269 : UnityPerMaterial;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(6) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(12) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat22 : vec3<f32>;

var<private> vs_INTERP6 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_376 : LightShadows;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlatu0 : u32;

var<private> u_xlati0 : i32;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

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

var<private> u_xlat45 : f32;

var<private> u_xlat18 : f32;

var<private> u_xlat32 : f32;

var<private> u_xlat46 : f32;

var<private> u_xlat47 : f32;

var<private> u_xlat20 : vec3<f32>;

var<private> u_xlat34 : f32;

var<private> u_xlatb20 : vec2<bool>;

@group(1) @binding(4) var<uniform> x_1080 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlat49 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatb4 : vec3<bool>;

var<private> u_xlatu49 : u32;

var<private> u_xlati22 : i32;

var<private> u_xlati49 : i32;

@group(1) @binding(1) var<uniform> x_1544 : AdditionalLights;

var<private> u_xlat23 : f32;

var<private> u_xlat37 : f32;

var<private> u_xlati37 : i32;

var<private> u_xlatb51 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat52 : f32;

var<private> u_xlat51 : f32;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb52 : bool;

var<private> u_xlati51 : i32;

var<private> u_xlati52 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlat25 : vec3<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec3<f32>;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_LinearClamp : sampler;

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
  var x_1163 : f32;
  var x_1174 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1692 : f32;
  var x_1702 : f32;
  var txVec1 : vec3<f32>;
  var x_2132 : f32;
  var x_2145 : f32;
  var x_2203 : f32;
  var x_2214 : vec3<f32>;
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
  let x_908 : vec3<f32> = (x_905 * vec3<f32>(x_906.x, x_906.x, x_906.x));
  let x_909 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_908.x, x_908.y, x_908.z, x_909.w);
  u_xlat3.w = 1.0f;
  let x_914 : vec4<f32> = x_83.unity_SHAr;
  let x_915 : vec4<f32> = u_xlat3;
  u_xlat4.x = dot(x_914, x_915);
  let x_920 : vec4<f32> = x_83.unity_SHAg;
  let x_921 : vec4<f32> = u_xlat3;
  u_xlat4.y = dot(x_920, x_921);
  let x_926 : vec4<f32> = x_83.unity_SHAb;
  let x_927 : vec4<f32> = u_xlat3;
  u_xlat4.z = dot(x_926, x_927);
  let x_930 : vec4<f32> = u_xlat3;
  let x_932 : vec4<f32> = u_xlat3;
  u_xlat6 = (vec4<f32>(x_930.y, x_930.z, x_930.z, x_930.x) * vec4<f32>(x_932.x, x_932.y, x_932.z, x_932.z));
  let x_937 : vec4<f32> = x_83.unity_SHBr;
  let x_938 : vec4<f32> = u_xlat6;
  u_xlat9.x = dot(x_937, x_938);
  let x_943 : vec4<f32> = x_83.unity_SHBg;
  let x_944 : vec4<f32> = u_xlat6;
  u_xlat9.y = dot(x_943, x_944);
  let x_948 : vec4<f32> = x_83.unity_SHBb;
  let x_949 : vec4<f32> = u_xlat6;
  u_xlat9.z = dot(x_948, x_949);
  let x_953 : f32 = u_xlat3.y;
  let x_955 : f32 = u_xlat3.y;
  u_xlat14.x = (x_953 * x_955);
  let x_959 : f32 = u_xlat3.x;
  let x_961 : f32 = u_xlat3.x;
  let x_964 : f32 = u_xlat14.x;
  u_xlat14.x = ((x_959 * x_961) + -(x_964));
  let x_970 : vec4<f32> = x_83.unity_SHC;
  let x_972 : vec3<f32> = u_xlat14;
  let x_975 : vec4<f32> = u_xlat9;
  u_xlat14 = ((vec3<f32>(x_970.x, x_970.y, x_970.z) * vec3<f32>(x_972.x, x_972.x, x_972.x)) + vec3<f32>(x_975.x, x_975.y, x_975.z));
  let x_978 : vec3<f32> = u_xlat14;
  let x_979 : vec3<f32> = u_xlat4;
  u_xlat14 = (x_978 + x_979);
  let x_981 : vec3<f32> = u_xlat14;
  u_xlat14 = max(x_981, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_984 : f32 = u_xlat8.x;
  u_xlat8.x = x_984;
  let x_987 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_987, 0.0f, 1.0f);
  let x_990 : f32 = u_xlat43;
  u_xlat43 = x_990;
  let x_991 : f32 = u_xlat43;
  u_xlat43 = clamp(x_991, 0.0f, 1.0f);
  let x_993 : vec4<f32> = u_xlat7;
  u_xlat16 = (vec3<f32>(x_993.x, x_993.y, x_993.z) * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_1000 : f32 = u_xlat8.x;
  u_xlat45 = (-(x_1000) + 1.0f);
  let x_1003 : f32 = u_xlat45;
  let x_1004 : f32 = u_xlat45;
  u_xlat4.x = (x_1003 * x_1004);
  let x_1008 : f32 = u_xlat4.x;
  u_xlat4.x = max(x_1008, 0.0078125f);
  let x_1014 : f32 = u_xlat4.x;
  let x_1016 : f32 = u_xlat4.x;
  u_xlat18 = (x_1014 * x_1016);
  let x_1020 : f32 = u_xlat8.x;
  u_xlat32 = (x_1020 + 0.04000002145767211914f);
  let x_1023 : f32 = u_xlat32;
  u_xlat32 = min(x_1023, 1.0f);
  let x_1027 : f32 = u_xlat4.x;
  u_xlat46 = ((x_1027 * 4.0f) + 2.0f);
  let x_1032 : f32 = vs_INTERP6.w;
  u_xlat47 = min(x_1032, 1.0f);
  let x_1034 : vec3<f32> = vs_INTERP8;
  let x_1036 : vec3<f32> = x_149.x_WorldSpaceCameraPos;
  let x_1038 : vec3<f32> = (x_1034 + -(x_1036));
  let x_1039 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1038.x, x_1038.y, x_1038.z, x_1039.w);
  let x_1041 : vec4<f32> = u_xlat6;
  let x_1043 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_1041.x, x_1041.y, x_1041.z), vec3<f32>(x_1043.x, x_1043.y, x_1043.z));
  let x_1049 : f32 = u_xlat6.x;
  let x_1051 : f32 = x_376.x_MainLightShadowParams.z;
  let x_1054 : f32 = x_376.x_MainLightShadowParams.w;
  u_xlat20.x = ((x_1049 * x_1051) + x_1054);
  let x_1058 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_1058, 0.0f, 1.0f);
  let x_1063 : f32 = u_xlat0.x;
  u_xlat34 = (-(x_1063) + 1.0f);
  let x_1067 : f32 = u_xlat20.x;
  let x_1068 : f32 = u_xlat34;
  let x_1071 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1067 * x_1068) + x_1071);
  let x_1082 : f32 = x_1080.x_MainLightCookieTextureFormat;
  u_xlatb20.x = !((x_1082 == -1.0f));
  let x_1086 : bool = u_xlatb20.x;
  if (x_1086) {
    let x_1089 : vec3<f32> = vs_INTERP8;
    let x_1092 : vec4<f32> = x_1080.x_MainLightWorldToLight[1i];
    let x_1094 : vec2<f32> = (vec2<f32>(x_1089.y, x_1089.y) * vec2<f32>(x_1092.x, x_1092.y));
    let x_1095 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_1094.x, x_1094.y, x_1095.z);
    let x_1098 : vec4<f32> = x_1080.x_MainLightWorldToLight[0i];
    let x_1100 : vec3<f32> = vs_INTERP8;
    let x_1103 : vec3<f32> = u_xlat20;
    let x_1105 : vec2<f32> = ((vec2<f32>(x_1098.x, x_1098.y) * vec2<f32>(x_1100.x, x_1100.x)) + vec2<f32>(x_1103.x, x_1103.y));
    let x_1106 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_1105.x, x_1105.y, x_1106.z);
    let x_1109 : vec4<f32> = x_1080.x_MainLightWorldToLight[2i];
    let x_1111 : vec3<f32> = vs_INTERP8;
    let x_1114 : vec3<f32> = u_xlat20;
    let x_1116 : vec2<f32> = ((vec2<f32>(x_1109.x, x_1109.y) * vec2<f32>(x_1111.z, x_1111.z)) + vec2<f32>(x_1114.x, x_1114.y));
    let x_1117 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_1116.x, x_1116.y, x_1117.z);
    let x_1119 : vec3<f32> = u_xlat20;
    let x_1122 : vec4<f32> = x_1080.x_MainLightWorldToLight[3i];
    let x_1124 : vec2<f32> = (vec2<f32>(x_1119.x, x_1119.y) + vec2<f32>(x_1122.x, x_1122.y));
    let x_1125 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_1124.x, x_1124.y, x_1125.z);
    let x_1127 : vec3<f32> = u_xlat20;
    let x_1131 : vec2<f32> = ((vec2<f32>(x_1127.x, x_1127.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1132 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_1131.x, x_1131.y, x_1132.z);
    let x_1139 : vec3<f32> = u_xlat20;
    let x_1142 : f32 = x_149.x_GlobalMipBias.x;
    let x_1143 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1139.x, x_1139.y), x_1142);
    u_xlat7 = x_1143;
    let x_1145 : f32 = x_1080.x_MainLightCookieTextureFormat;
    let x_1147 : f32 = x_1080.x_MainLightCookieTextureFormat;
    let x_1149 : f32 = x_1080.x_MainLightCookieTextureFormat;
    let x_1151 : f32 = x_1080.x_MainLightCookieTextureFormat;
    let x_1152 : vec4<f32> = vec4<f32>(x_1145, x_1147, x_1149, x_1151);
    let x_1159 : vec4<bool> = (vec4<f32>(x_1152.x, x_1152.y, x_1152.z, x_1152.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb20 = vec2<bool>(x_1159.x, x_1159.y);
    let x_1162 : bool = u_xlatb20.y;
    if (x_1162) {
      let x_1167 : f32 = u_xlat7.w;
      x_1163 = x_1167;
    } else {
      let x_1170 : f32 = u_xlat7.x;
      x_1163 = x_1170;
    }
    let x_1171 : f32 = x_1163;
    u_xlat34 = x_1171;
    let x_1173 : bool = u_xlatb20.x;
    if (x_1173) {
      let x_1177 : vec4<f32> = u_xlat7;
      x_1174 = vec3<f32>(x_1177.x, x_1177.y, x_1177.z);
    } else {
      let x_1180 : f32 = u_xlat34;
      x_1174 = vec3<f32>(x_1180, x_1180, x_1180);
    }
    let x_1182 : vec3<f32> = x_1174;
    u_xlat20 = x_1182;
  } else {
    u_xlat20.x = 1.0f;
    u_xlat20.y = 1.0f;
    u_xlat20.z = 1.0f;
  }
  let x_1187 : vec3<f32> = u_xlat20;
  let x_1189 : vec4<f32> = x_149.x_MainLightColor;
  u_xlat20 = (x_1187 * vec3<f32>(x_1189.x, x_1189.y, x_1189.z));
  let x_1192 : vec3<f32> = u_xlat5;
  let x_1194 : vec4<f32> = u_xlat3;
  u_xlat7.x = dot(-(x_1192), vec3<f32>(x_1194.x, x_1194.y, x_1194.z));
  let x_1199 : f32 = u_xlat7.x;
  let x_1201 : f32 = u_xlat7.x;
  u_xlat7.x = (x_1199 + x_1201);
  let x_1204 : vec4<f32> = u_xlat3;
  let x_1206 : vec4<f32> = u_xlat7;
  let x_1210 : vec3<f32> = u_xlat5;
  let x_1212 : vec3<f32> = ((vec3<f32>(x_1204.x, x_1204.y, x_1204.z) * -(vec3<f32>(x_1206.x, x_1206.x, x_1206.x))) + -(x_1210));
  let x_1213 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1212.x, x_1212.y, x_1212.z, x_1213.w);
  let x_1216 : vec4<f32> = u_xlat3;
  let x_1218 : vec3<f32> = u_xlat5;
  u_xlat49 = dot(vec3<f32>(x_1216.x, x_1216.y, x_1216.z), x_1218);
  let x_1220 : f32 = u_xlat49;
  u_xlat49 = clamp(x_1220, 0.0f, 1.0f);
  let x_1222 : f32 = u_xlat49;
  u_xlat49 = (-(x_1222) + 1.0f);
  let x_1225 : f32 = u_xlat49;
  let x_1226 : f32 = u_xlat49;
  u_xlat49 = (x_1225 * x_1226);
  let x_1228 : f32 = u_xlat49;
  let x_1229 : f32 = u_xlat49;
  u_xlat49 = (x_1228 * x_1229);
  let x_1231 : f32 = u_xlat45;
  u_xlat8.x = ((-(x_1231) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1238 : f32 = u_xlat45;
  let x_1240 : f32 = u_xlat8.x;
  u_xlat45 = (x_1238 * x_1240);
  let x_1242 : f32 = u_xlat45;
  u_xlat45 = (x_1242 * 6.0f);
  let x_1253 : vec4<f32> = u_xlat7;
  let x_1255 : f32 = u_xlat45;
  let x_1256 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1253.x, x_1253.y, x_1253.z), x_1255);
  u_xlat8 = x_1256;
  let x_1258 : f32 = u_xlat8.w;
  u_xlat45 = (x_1258 + -1.0f);
  let x_1261 : f32 = x_83.unity_SpecCube0_HDR.w;
  let x_1262 : f32 = u_xlat45;
  u_xlat45 = ((x_1261 * x_1262) + 1.0f);
  let x_1265 : f32 = u_xlat45;
  u_xlat45 = max(x_1265, 0.0f);
  let x_1267 : f32 = u_xlat45;
  u_xlat45 = log2(x_1267);
  let x_1269 : f32 = u_xlat45;
  let x_1271 : f32 = x_83.unity_SpecCube0_HDR.y;
  u_xlat45 = (x_1269 * x_1271);
  let x_1273 : f32 = u_xlat45;
  u_xlat45 = exp2(x_1273);
  let x_1275 : f32 = u_xlat45;
  let x_1277 : f32 = x_83.unity_SpecCube0_HDR.x;
  u_xlat45 = (x_1275 * x_1277);
  let x_1279 : vec4<f32> = u_xlat8;
  let x_1281 : f32 = u_xlat45;
  let x_1283 : vec3<f32> = (vec3<f32>(x_1279.x, x_1279.y, x_1279.z) * vec3<f32>(x_1281, x_1281, x_1281));
  let x_1284 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1283.x, x_1283.y, x_1283.z, x_1284.w);
  let x_1286 : vec3<f32> = u_xlat4;
  let x_1288 : vec3<f32> = u_xlat4;
  let x_1292 : vec2<f32> = ((vec2<f32>(x_1286.x, x_1286.x) * vec2<f32>(x_1288.x, x_1288.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1293 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1292.x, x_1292.y, x_1293.z, x_1293.w);
  let x_1296 : f32 = u_xlat8.y;
  u_xlat45 = (1.0f / x_1296);
  let x_1298 : f32 = u_xlat32;
  u_xlat4.x = (x_1298 + -0.03999999910593032837f);
  let x_1302 : f32 = u_xlat49;
  let x_1304 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_1302 * x_1304) + 0.03999999910593032837f);
  let x_1309 : f32 = u_xlat45;
  let x_1311 : f32 = u_xlat4.x;
  u_xlat45 = (x_1309 * x_1311);
  let x_1313 : f32 = u_xlat45;
  let x_1315 : vec4<f32> = u_xlat7;
  let x_1317 : vec3<f32> = (vec3<f32>(x_1313, x_1313, x_1313) * vec3<f32>(x_1315.x, x_1315.y, x_1315.z));
  let x_1318 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1317.x, x_1317.y, x_1317.z, x_1318.w);
  let x_1320 : vec3<f32> = u_xlat14;
  let x_1321 : vec3<f32> = u_xlat16;
  let x_1323 : vec4<f32> = u_xlat7;
  u_xlat14 = ((x_1320 * x_1321) + vec3<f32>(x_1323.x, x_1323.y, x_1323.z));
  let x_1327 : f32 = u_xlat0.x;
  let x_1329 : f32 = x_83.unity_LightData.z;
  u_xlat0.x = (x_1327 * x_1329);
  let x_1332 : vec4<f32> = u_xlat3;
  let x_1335 : vec4<f32> = x_149.x_MainLightPosition;
  u_xlat45 = dot(vec3<f32>(x_1332.x, x_1332.y, x_1332.z), vec3<f32>(x_1335.x, x_1335.y, x_1335.z));
  let x_1338 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1338, 0.0f, 1.0f);
  let x_1341 : f32 = u_xlat0.x;
  let x_1342 : f32 = u_xlat45;
  u_xlat0.x = (x_1341 * x_1342);
  let x_1345 : vec3<f32> = u_xlat0;
  let x_1347 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_1345.x, x_1345.x, x_1345.x) * x_1347);
  let x_1349 : vec3<f32> = u_xlat5;
  let x_1351 : vec4<f32> = x_149.x_MainLightPosition;
  let x_1353 : vec3<f32> = (x_1349 + vec3<f32>(x_1351.x, x_1351.y, x_1351.z));
  let x_1354 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1353.x, x_1353.y, x_1353.z, x_1354.w);
  let x_1356 : vec4<f32> = u_xlat7;
  let x_1358 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(vec3<f32>(x_1356.x, x_1356.y, x_1356.z), vec3<f32>(x_1358.x, x_1358.y, x_1358.z));
  let x_1363 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1363, 1.17549435e-38f);
  let x_1367 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_1367);
  let x_1370 : vec3<f32> = u_xlat0;
  let x_1372 : vec4<f32> = u_xlat7;
  let x_1374 : vec3<f32> = (vec3<f32>(x_1370.x, x_1370.x, x_1370.x) * vec3<f32>(x_1372.x, x_1372.y, x_1372.z));
  let x_1375 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1374.x, x_1374.y, x_1374.z, x_1375.w);
  let x_1377 : vec4<f32> = u_xlat3;
  let x_1379 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(vec3<f32>(x_1377.x, x_1377.y, x_1377.z), vec3<f32>(x_1379.x, x_1379.y, x_1379.z));
  let x_1384 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1384, 0.0f, 1.0f);
  let x_1388 : vec4<f32> = x_149.x_MainLightPosition;
  let x_1390 : vec4<f32> = u_xlat7;
  u_xlat45 = dot(vec3<f32>(x_1388.x, x_1388.y, x_1388.z), vec3<f32>(x_1390.x, x_1390.y, x_1390.z));
  let x_1393 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1393, 0.0f, 1.0f);
  let x_1396 : f32 = u_xlat0.x;
  let x_1398 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1396 * x_1398);
  let x_1402 : f32 = u_xlat0.x;
  let x_1404 : f32 = u_xlat8.x;
  u_xlat0.x = ((x_1402 * x_1404) + 1.00001001358032226562f);
  let x_1409 : f32 = u_xlat45;
  let x_1410 : f32 = u_xlat45;
  u_xlat45 = (x_1409 * x_1410);
  let x_1413 : f32 = u_xlat0.x;
  let x_1415 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1413 * x_1415);
  let x_1418 : f32 = u_xlat45;
  u_xlat45 = max(x_1418, 0.10000000149011611938f);
  let x_1422 : f32 = u_xlat0.x;
  let x_1423 : f32 = u_xlat45;
  u_xlat0.x = (x_1422 * x_1423);
  let x_1426 : f32 = u_xlat46;
  let x_1428 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1426 * x_1428);
  let x_1431 : f32 = u_xlat18;
  let x_1433 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1431 / x_1433);
  let x_1436 : vec3<f32> = u_xlat0;
  let x_1440 : vec3<f32> = u_xlat16;
  let x_1441 : vec3<f32> = ((vec3<f32>(x_1436.x, x_1436.x, x_1436.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_1440);
  let x_1442 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1441.x, x_1441.y, x_1441.z, x_1442.w);
  let x_1444 : vec3<f32> = u_xlat20;
  let x_1445 : vec4<f32> = u_xlat7;
  u_xlat20 = (x_1444 * vec3<f32>(x_1445.x, x_1445.y, x_1445.z));
  let x_1449 : f32 = x_149.x_AdditionalLightsCount.x;
  let x_1451 : f32 = x_83.unity_LightData.y;
  u_xlat0.x = min(x_1449, x_1451);
  let x_1455 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1455));
  let x_1459 : f32 = u_xlat6.x;
  let x_1462 : f32 = x_376.x_AdditionalShadowFadeParams.x;
  let x_1465 : f32 = x_376.x_AdditionalShadowFadeParams.y;
  u_xlat45 = ((x_1459 * x_1462) + x_1465);
  let x_1467 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1467, 0.0f, 1.0f);
  let x_1473 : f32 = x_1080.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1475 : f32 = x_1080.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1477 : f32 = x_1080.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1479 : f32 = x_1080.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1480 : vec4<f32> = vec4<f32>(x_1473, x_1475, x_1477, x_1479);
  let x_1487 : vec4<bool> = (vec4<f32>(x_1480.x, x_1480.y, x_1480.z, x_1480.w) == vec4<f32>(0.0f, 0.0f, 1.0f, 0.0f));
  let x_1488 : vec2<bool> = vec2<bool>(x_1487.x, x_1487.z);
  let x_1489 : vec3<bool> = u_xlatb4;
  u_xlatb4 = vec3<bool>(x_1488.x, x_1489.y, x_1488.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1500 : u32 = u_xlatu_loop_1;
    let x_1501 : u32 = u_xlatu0;
    if ((x_1500 < x_1501)) {
    } else {
      break;
    }
    let x_1504 : u32 = u_xlatu_loop_1;
    u_xlatu49 = (x_1504 >> 2u);
    let x_1507 : u32 = u_xlatu_loop_1;
    u_xlati22 = bitcast<i32>((x_1507 & 3u));
    let x_1510 : u32 = u_xlatu49;
    let x_1513 : vec4<f32> = x_83.unity_LightIndices[bitcast<i32>(x_1510)];
    let x_1523 : i32 = u_xlati22;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1528 : vec4<u32> = indexable[x_1523];
    u_xlat49 = dot(x_1513, bitcast<vec4<f32>>(x_1528));
    let x_1532 : f32 = u_xlat49;
    u_xlati49 = i32(x_1532);
    let x_1534 : vec3<f32> = vs_INTERP8;
    let x_1545 : i32 = u_xlati49;
    let x_1547 : vec4<f32> = x_1544.x_AdditionalLightsPosition[x_1545];
    let x_1550 : i32 = u_xlati49;
    let x_1552 : vec4<f32> = x_1544.x_AdditionalLightsPosition[x_1550];
    u_xlat22 = ((-(x_1534) * vec3<f32>(x_1547.w, x_1547.w, x_1547.w)) + vec3<f32>(x_1552.x, x_1552.y, x_1552.z));
    let x_1555 : vec3<f32> = u_xlat22;
    let x_1556 : vec3<f32> = u_xlat22;
    u_xlat9.x = dot(x_1555, x_1556);
    let x_1560 : f32 = u_xlat9.x;
    u_xlat9.x = max(x_1560, 0.00006103515625f);
    let x_1566 : f32 = u_xlat9.x;
    u_xlat23 = inverseSqrt(x_1566);
    let x_1568 : vec3<f32> = u_xlat22;
    let x_1569 : f32 = u_xlat23;
    u_xlat10 = (x_1568 * vec3<f32>(x_1569, x_1569, x_1569));
    let x_1574 : f32 = u_xlat9.x;
    u_xlat37 = (1.0f / x_1574);
    let x_1577 : f32 = u_xlat9.x;
    let x_1578 : i32 = u_xlati49;
    let x_1580 : f32 = x_1544.x_AdditionalLightsAttenuation[x_1578].x;
    u_xlat9.x = (x_1577 * x_1580);
    let x_1584 : f32 = u_xlat9.x;
    let x_1587 : f32 = u_xlat9.x;
    u_xlat9.x = ((-(x_1584) * x_1587) + 1.0f);
    let x_1592 : f32 = u_xlat9.x;
    u_xlat9.x = max(x_1592, 0.0f);
    let x_1596 : f32 = u_xlat9.x;
    let x_1598 : f32 = u_xlat9.x;
    u_xlat9.x = (x_1596 * x_1598);
    let x_1602 : f32 = u_xlat9.x;
    let x_1603 : f32 = u_xlat37;
    u_xlat9.x = (x_1602 * x_1603);
    let x_1606 : i32 = u_xlati49;
    let x_1608 : vec4<f32> = x_1544.x_AdditionalLightsSpotDir[x_1606];
    let x_1610 : vec3<f32> = u_xlat10;
    u_xlat37 = dot(vec3<f32>(x_1608.x, x_1608.y, x_1608.z), x_1610);
    let x_1612 : f32 = u_xlat37;
    let x_1613 : i32 = u_xlati49;
    let x_1615 : f32 = x_1544.x_AdditionalLightsAttenuation[x_1613].z;
    let x_1617 : i32 = u_xlati49;
    let x_1619 : f32 = x_1544.x_AdditionalLightsAttenuation[x_1617].w;
    u_xlat37 = ((x_1612 * x_1615) + x_1619);
    let x_1621 : f32 = u_xlat37;
    u_xlat37 = clamp(x_1621, 0.0f, 1.0f);
    let x_1623 : f32 = u_xlat37;
    let x_1624 : f32 = u_xlat37;
    u_xlat37 = (x_1623 * x_1624);
    let x_1626 : f32 = u_xlat37;
    let x_1628 : f32 = u_xlat9.x;
    u_xlat9.x = (x_1626 * x_1628);
    let x_1633 : i32 = u_xlati49;
    let x_1635 : f32 = x_376.x_AdditionalShadowParams[x_1633].w;
    u_xlati37 = i32(x_1635);
    let x_1638 : i32 = u_xlati37;
    u_xlatb51 = (x_1638 >= 0i);
    let x_1640 : bool = u_xlatb51;
    if (x_1640) {
      let x_1644 : i32 = u_xlati49;
      let x_1646 : f32 = x_376.x_AdditionalShadowParams[x_1644].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1646, x_1646, x_1646, x_1646))));
      let x_1650 : bool = u_xlatb51;
      if (x_1650) {
        let x_1654 : vec3<f32> = u_xlat10;
        let x_1657 : vec3<f32> = u_xlat10;
        let x_1660 : vec4<bool> = (abs(vec4<f32>(x_1654.z, x_1654.z, x_1654.y, x_1654.z)) >= abs(vec4<f32>(x_1657.x, x_1657.y, x_1657.x, x_1657.x)));
        let x_1661 : vec3<bool> = vec3<bool>(x_1660.x, x_1660.y, x_1660.z);
        let x_1662 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1661.x, x_1661.y, x_1661.z, x_1662.w);
        let x_1665 : bool = u_xlatb11.y;
        let x_1667 : bool = u_xlatb11.x;
        u_xlatb51 = (x_1665 & x_1667);
        let x_1669 : vec3<f32> = u_xlat10;
        let x_1672 : vec4<bool> = (-(vec4<f32>(x_1669.z, x_1669.y, x_1669.z, x_1669.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1673 : vec3<bool> = vec3<bool>(x_1672.x, x_1672.y, x_1672.w);
        let x_1674 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1673.x, x_1673.y, x_1674.z, x_1673.z);
        let x_1678 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1678);
        let x_1683 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1683);
        let x_1688 : bool = u_xlatb11.w;
        u_xlat52 = select(0.0f, 1.0f, x_1688);
        let x_1691 : bool = u_xlatb11.z;
        if (x_1691) {
          let x_1696 : f32 = u_xlat11.y;
          x_1692 = x_1696;
        } else {
          let x_1698 : f32 = u_xlat52;
          x_1692 = x_1698;
        }
        let x_1699 : f32 = x_1692;
        u_xlat52 = x_1699;
        let x_1701 : bool = u_xlatb51;
        if (x_1701) {
          let x_1706 : f32 = u_xlat11.x;
          x_1702 = x_1706;
        } else {
          let x_1708 : f32 = u_xlat52;
          x_1702 = x_1708;
        }
        let x_1709 : f32 = x_1702;
        u_xlat51 = x_1709;
        let x_1710 : i32 = u_xlati49;
        let x_1712 : f32 = x_376.x_AdditionalShadowParams[x_1710].w;
        u_xlat52 = trunc(x_1712);
        let x_1714 : f32 = u_xlat51;
        let x_1715 : f32 = u_xlat52;
        u_xlat51 = (x_1714 + x_1715);
        let x_1717 : f32 = u_xlat51;
        u_xlati37 = i32(x_1717);
      }
      let x_1719 : i32 = u_xlati37;
      u_xlati37 = (x_1719 << bitcast<u32>(2i));
      let x_1721 : vec3<f32> = vs_INTERP8;
      let x_1724 : i32 = u_xlati37;
      let x_1727 : i32 = u_xlati37;
      let x_1731 : vec4<f32> = x_376.x_AdditionalLightsWorldToShadow[((x_1724 + 1i) / 4i)][((x_1727 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1721.y, x_1721.y, x_1721.y, x_1721.y) * x_1731);
      let x_1733 : i32 = u_xlati37;
      let x_1735 : i32 = u_xlati37;
      let x_1738 : vec4<f32> = x_376.x_AdditionalLightsWorldToShadow[(x_1733 / 4i)][(x_1735 % 4i)];
      let x_1739 : vec3<f32> = vs_INTERP8;
      let x_1742 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1738 * vec4<f32>(x_1739.x, x_1739.x, x_1739.x, x_1739.x)) + x_1742);
      let x_1744 : i32 = u_xlati37;
      let x_1747 : i32 = u_xlati37;
      let x_1751 : vec4<f32> = x_376.x_AdditionalLightsWorldToShadow[((x_1744 + 2i) / 4i)][((x_1747 + 2i) % 4i)];
      let x_1752 : vec3<f32> = vs_INTERP8;
      let x_1755 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1751 * vec4<f32>(x_1752.z, x_1752.z, x_1752.z, x_1752.z)) + x_1755);
      let x_1757 : vec4<f32> = u_xlat11;
      let x_1758 : i32 = u_xlati37;
      let x_1761 : i32 = u_xlati37;
      let x_1765 : vec4<f32> = x_376.x_AdditionalLightsWorldToShadow[((x_1758 + 3i) / 4i)][((x_1761 + 3i) % 4i)];
      u_xlat11 = (x_1757 + x_1765);
      let x_1767 : vec4<f32> = u_xlat11;
      let x_1769 : vec4<f32> = u_xlat11;
      let x_1771 : vec3<f32> = (vec3<f32>(x_1767.x, x_1767.y, x_1767.z) / vec3<f32>(x_1769.w, x_1769.w, x_1769.w));
      let x_1772 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1771.x, x_1771.y, x_1771.z, x_1772.w);
      let x_1775 : vec4<f32> = u_xlat11;
      let x_1776 : vec2<f32> = vec2<f32>(x_1775.x, x_1775.y);
      let x_1778 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1776.x, x_1776.y, x_1778);
      let x_1786 : vec3<f32> = txVec1;
      let x_1788 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1786.xy, x_1786.z);
      u_xlat37 = x_1788;
      let x_1789 : i32 = u_xlati49;
      let x_1791 : f32 = x_376.x_AdditionalShadowParams[x_1789].x;
      u_xlat51 = (1.0f + -(x_1791));
      let x_1794 : f32 = u_xlat37;
      let x_1795 : i32 = u_xlati49;
      let x_1797 : f32 = x_376.x_AdditionalShadowParams[x_1795].x;
      let x_1799 : f32 = u_xlat51;
      u_xlat37 = ((x_1794 * x_1797) + x_1799);
      let x_1802 : f32 = u_xlat11.z;
      u_xlatb51 = (0.0f >= x_1802);
      let x_1806 : f32 = u_xlat11.z;
      u_xlatb52 = (x_1806 >= 1.0f);
      let x_1808 : bool = u_xlatb51;
      let x_1809 : bool = u_xlatb52;
      u_xlatb51 = (x_1808 | x_1809);
      let x_1811 : bool = u_xlatb51;
      let x_1812 : f32 = u_xlat37;
      u_xlat37 = select(x_1812, 1.0f, x_1811);
    } else {
      u_xlat37 = 1.0f;
    }
    let x_1815 : f32 = u_xlat37;
    u_xlat51 = (-(x_1815) + 1.0f);
    let x_1818 : f32 = u_xlat45;
    let x_1819 : f32 = u_xlat51;
    let x_1821 : f32 = u_xlat37;
    u_xlat37 = ((x_1818 * x_1819) + x_1821);
    let x_1824 : i32 = u_xlati49;
    u_xlati51 = (1i << bitcast<u32>((x_1824 & 31i)));
    let x_1828 : i32 = u_xlati51;
    let x_1831 : f32 = x_1080.x_AdditionalLightsCookieEnableBits;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_1828) & bitcast<u32>(x_1831)));
    let x_1835 : i32 = u_xlati51;
    if ((x_1835 != 0i)) {
      let x_1839 : i32 = u_xlati49;
      let x_1841 : f32 = x_1080.x_AdditionalLightsLightTypes[x_1839].el;
      u_xlati51 = i32(x_1841);
      let x_1844 : i32 = u_xlati51;
      u_xlati52 = select(1i, 0i, (x_1844 != 0i));
      let x_1848 : i32 = u_xlati49;
      u_xlati11 = (x_1848 << bitcast<u32>(2i));
      let x_1850 : i32 = u_xlati52;
      if ((x_1850 != 0i)) {
        let x_1855 : vec3<f32> = vs_INTERP8;
        let x_1857 : i32 = u_xlati11;
        let x_1860 : i32 = u_xlati11;
        let x_1864 : vec4<f32> = x_1080.x_AdditionalLightsWorldToLights[((x_1857 + 1i) / 4i)][((x_1860 + 1i) % 4i)];
        u_xlat25 = (vec3<f32>(x_1855.y, x_1855.y, x_1855.y) * vec3<f32>(x_1864.x, x_1864.y, x_1864.w));
        let x_1867 : i32 = u_xlati11;
        let x_1869 : i32 = u_xlati11;
        let x_1872 : vec4<f32> = x_1080.x_AdditionalLightsWorldToLights[(x_1867 / 4i)][(x_1869 % 4i)];
        let x_1874 : vec3<f32> = vs_INTERP8;
        let x_1877 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1872.x, x_1872.y, x_1872.w) * vec3<f32>(x_1874.x, x_1874.x, x_1874.x)) + x_1877);
        let x_1879 : i32 = u_xlati11;
        let x_1882 : i32 = u_xlati11;
        let x_1886 : vec4<f32> = x_1080.x_AdditionalLightsWorldToLights[((x_1879 + 2i) / 4i)][((x_1882 + 2i) % 4i)];
        let x_1888 : vec3<f32> = vs_INTERP8;
        let x_1891 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1886.x, x_1886.y, x_1886.w) * vec3<f32>(x_1888.z, x_1888.z, x_1888.z)) + x_1891);
        let x_1893 : vec3<f32> = u_xlat25;
        let x_1894 : i32 = u_xlati11;
        let x_1897 : i32 = u_xlati11;
        let x_1901 : vec4<f32> = x_1080.x_AdditionalLightsWorldToLights[((x_1894 + 3i) / 4i)][((x_1897 + 3i) % 4i)];
        u_xlat25 = (x_1893 + vec3<f32>(x_1901.x, x_1901.y, x_1901.w));
        let x_1904 : vec3<f32> = u_xlat25;
        let x_1906 : vec3<f32> = u_xlat25;
        let x_1908 : vec2<f32> = (vec2<f32>(x_1904.x, x_1904.y) / vec2<f32>(x_1906.z, x_1906.z));
        let x_1909 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1908.x, x_1908.y, x_1909.z);
        let x_1911 : vec3<f32> = u_xlat25;
        let x_1914 : vec2<f32> = ((vec2<f32>(x_1911.x, x_1911.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1915 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1914.x, x_1914.y, x_1915.z);
        let x_1917 : vec3<f32> = u_xlat25;
        let x_1921 : vec2<f32> = clamp(vec2<f32>(x_1917.x, x_1917.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1922 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1921.x, x_1921.y, x_1922.z);
        let x_1924 : i32 = u_xlati49;
        let x_1926 : vec4<f32> = x_1080.x_AdditionalLightsCookieAtlasUVRects[x_1924];
        let x_1928 : vec3<f32> = u_xlat25;
        let x_1931 : i32 = u_xlati49;
        let x_1933 : vec4<f32> = x_1080.x_AdditionalLightsCookieAtlasUVRects[x_1931];
        let x_1935 : vec2<f32> = ((vec2<f32>(x_1926.x, x_1926.y) * vec2<f32>(x_1928.x, x_1928.y)) + vec2<f32>(x_1933.z, x_1933.w));
        let x_1936 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1935.x, x_1935.y, x_1936.z);
      } else {
        let x_1939 : i32 = u_xlati51;
        u_xlatb51 = (x_1939 == 1i);
        let x_1941 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_1941);
        let x_1943 : i32 = u_xlati51;
        if ((x_1943 != 0i)) {
          let x_1948 : vec3<f32> = vs_INTERP8;
          let x_1950 : i32 = u_xlati11;
          let x_1953 : i32 = u_xlati11;
          let x_1957 : vec4<f32> = x_1080.x_AdditionalLightsWorldToLights[((x_1950 + 1i) / 4i)][((x_1953 + 1i) % 4i)];
          let x_1959 : vec2<f32> = (vec2<f32>(x_1948.y, x_1948.y) * vec2<f32>(x_1957.x, x_1957.y));
          let x_1960 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1959.x, x_1959.y, x_1960.z, x_1960.w);
          let x_1962 : i32 = u_xlati11;
          let x_1964 : i32 = u_xlati11;
          let x_1967 : vec4<f32> = x_1080.x_AdditionalLightsWorldToLights[(x_1962 / 4i)][(x_1964 % 4i)];
          let x_1969 : vec3<f32> = vs_INTERP8;
          let x_1972 : vec4<f32> = u_xlat12;
          let x_1974 : vec2<f32> = ((vec2<f32>(x_1967.x, x_1967.y) * vec2<f32>(x_1969.x, x_1969.x)) + vec2<f32>(x_1972.x, x_1972.y));
          let x_1975 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1974.x, x_1974.y, x_1975.z, x_1975.w);
          let x_1977 : i32 = u_xlati11;
          let x_1980 : i32 = u_xlati11;
          let x_1984 : vec4<f32> = x_1080.x_AdditionalLightsWorldToLights[((x_1977 + 2i) / 4i)][((x_1980 + 2i) % 4i)];
          let x_1986 : vec3<f32> = vs_INTERP8;
          let x_1989 : vec4<f32> = u_xlat12;
          let x_1991 : vec2<f32> = ((vec2<f32>(x_1984.x, x_1984.y) * vec2<f32>(x_1986.z, x_1986.z)) + vec2<f32>(x_1989.x, x_1989.y));
          let x_1992 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1991.x, x_1991.y, x_1992.z, x_1992.w);
          let x_1994 : vec4<f32> = u_xlat12;
          let x_1996 : i32 = u_xlati11;
          let x_1999 : i32 = u_xlati11;
          let x_2003 : vec4<f32> = x_1080.x_AdditionalLightsWorldToLights[((x_1996 + 3i) / 4i)][((x_1999 + 3i) % 4i)];
          let x_2005 : vec2<f32> = (vec2<f32>(x_1994.x, x_1994.y) + vec2<f32>(x_2003.x, x_2003.y));
          let x_2006 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2005.x, x_2005.y, x_2006.z, x_2006.w);
          let x_2008 : vec4<f32> = u_xlat12;
          let x_2011 : vec2<f32> = ((vec2<f32>(x_2008.x, x_2008.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2012 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2011.x, x_2011.y, x_2012.z, x_2012.w);
          let x_2014 : vec4<f32> = u_xlat12;
          let x_2016 : vec2<f32> = fract(vec2<f32>(x_2014.x, x_2014.y));
          let x_2017 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2016.x, x_2016.y, x_2017.z, x_2017.w);
          let x_2019 : i32 = u_xlati49;
          let x_2021 : vec4<f32> = x_1080.x_AdditionalLightsCookieAtlasUVRects[x_2019];
          let x_2023 : vec4<f32> = u_xlat12;
          let x_2026 : i32 = u_xlati49;
          let x_2028 : vec4<f32> = x_1080.x_AdditionalLightsCookieAtlasUVRects[x_2026];
          let x_2030 : vec2<f32> = ((vec2<f32>(x_2021.x, x_2021.y) * vec2<f32>(x_2023.x, x_2023.y)) + vec2<f32>(x_2028.z, x_2028.w));
          let x_2031 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_2030.x, x_2030.y, x_2031.z);
        } else {
          let x_2034 : vec3<f32> = vs_INTERP8;
          let x_2036 : i32 = u_xlati11;
          let x_2039 : i32 = u_xlati11;
          let x_2043 : vec4<f32> = x_1080.x_AdditionalLightsWorldToLights[((x_2036 + 1i) / 4i)][((x_2039 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2034.y, x_2034.y, x_2034.y, x_2034.y) * x_2043);
          let x_2045 : i32 = u_xlati11;
          let x_2047 : i32 = u_xlati11;
          let x_2050 : vec4<f32> = x_1080.x_AdditionalLightsWorldToLights[(x_2045 / 4i)][(x_2047 % 4i)];
          let x_2051 : vec3<f32> = vs_INTERP8;
          let x_2054 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2050 * vec4<f32>(x_2051.x, x_2051.x, x_2051.x, x_2051.x)) + x_2054);
          let x_2056 : i32 = u_xlati11;
          let x_2059 : i32 = u_xlati11;
          let x_2063 : vec4<f32> = x_1080.x_AdditionalLightsWorldToLights[((x_2056 + 2i) / 4i)][((x_2059 + 2i) % 4i)];
          let x_2064 : vec3<f32> = vs_INTERP8;
          let x_2067 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2063 * vec4<f32>(x_2064.z, x_2064.z, x_2064.z, x_2064.z)) + x_2067);
          let x_2069 : vec4<f32> = u_xlat12;
          let x_2070 : i32 = u_xlati11;
          let x_2073 : i32 = u_xlati11;
          let x_2077 : vec4<f32> = x_1080.x_AdditionalLightsWorldToLights[((x_2070 + 3i) / 4i)][((x_2073 + 3i) % 4i)];
          u_xlat12 = (x_2069 + x_2077);
          let x_2079 : vec4<f32> = u_xlat12;
          let x_2081 : vec4<f32> = u_xlat12;
          let x_2083 : vec3<f32> = (vec3<f32>(x_2079.x, x_2079.y, x_2079.z) / vec3<f32>(x_2081.w, x_2081.w, x_2081.w));
          let x_2084 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2083.x, x_2083.y, x_2083.z, x_2084.w);
          let x_2086 : vec4<f32> = u_xlat12;
          let x_2088 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(vec3<f32>(x_2086.x, x_2086.y, x_2086.z), vec3<f32>(x_2088.x, x_2088.y, x_2088.z));
          let x_2091 : f32 = u_xlat51;
          u_xlat51 = inverseSqrt(x_2091);
          let x_2093 : f32 = u_xlat51;
          let x_2095 : vec4<f32> = u_xlat12;
          let x_2097 : vec3<f32> = (vec3<f32>(x_2093, x_2093, x_2093) * vec3<f32>(x_2095.x, x_2095.y, x_2095.z));
          let x_2098 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2097.x, x_2097.y, x_2097.z, x_2098.w);
          let x_2100 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(abs(vec3<f32>(x_2100.x, x_2100.y, x_2100.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2105 : f32 = u_xlat51;
          u_xlat51 = max(x_2105, 0.00000099999999747524f);
          let x_2108 : f32 = u_xlat51;
          u_xlat51 = (1.0f / x_2108);
          let x_2111 : f32 = u_xlat51;
          let x_2113 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_2111, x_2111, x_2111) * vec3<f32>(x_2113.z, x_2113.x, x_2113.y));
          let x_2117 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2117);
          let x_2121 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2121, 0.0f, 1.0f);
          let x_2124 : vec3<f32> = u_xlat13;
          let x_2126 : vec4<bool> = (vec4<f32>(x_2124.y, x_2124.y, x_2124.y, x_2124.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_2127 : vec2<bool> = vec2<bool>(x_2126.x, x_2126.w);
          let x_2128 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_2127.x, x_2128.y, x_2128.z, x_2127.y);
          let x_2131 : bool = u_xlatb11.x;
          if (x_2131) {
            let x_2136 : f32 = u_xlat13.x;
            x_2132 = x_2136;
          } else {
            let x_2139 : f32 = u_xlat13.x;
            x_2132 = -(x_2139);
          }
          let x_2141 : f32 = x_2132;
          u_xlat11.x = x_2141;
          let x_2144 : bool = u_xlatb11.w;
          if (x_2144) {
            let x_2149 : f32 = u_xlat13.x;
            x_2145 = x_2149;
          } else {
            let x_2152 : f32 = u_xlat13.x;
            x_2145 = -(x_2152);
          }
          let x_2154 : f32 = x_2145;
          u_xlat11.w = x_2154;
          let x_2156 : vec4<f32> = u_xlat12;
          let x_2158 : f32 = u_xlat51;
          let x_2161 : vec4<f32> = u_xlat11;
          let x_2163 : vec2<f32> = ((vec2<f32>(x_2156.x, x_2156.y) * vec2<f32>(x_2158, x_2158)) + vec2<f32>(x_2161.x, x_2161.w));
          let x_2164 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2163.x, x_2164.y, x_2164.z, x_2163.y);
          let x_2166 : vec4<f32> = u_xlat11;
          let x_2169 : vec2<f32> = ((vec2<f32>(x_2166.x, x_2166.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2170 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2169.x, x_2170.y, x_2170.z, x_2169.y);
          let x_2172 : vec4<f32> = u_xlat11;
          let x_2176 : vec2<f32> = clamp(vec2<f32>(x_2172.x, x_2172.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2177 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2176.x, x_2177.y, x_2177.z, x_2176.y);
          let x_2179 : i32 = u_xlati49;
          let x_2181 : vec4<f32> = x_1080.x_AdditionalLightsCookieAtlasUVRects[x_2179];
          let x_2183 : vec4<f32> = u_xlat11;
          let x_2186 : i32 = u_xlati49;
          let x_2188 : vec4<f32> = x_1080.x_AdditionalLightsCookieAtlasUVRects[x_2186];
          let x_2190 : vec2<f32> = ((vec2<f32>(x_2181.x, x_2181.y) * vec2<f32>(x_2183.x, x_2183.w)) + vec2<f32>(x_2188.z, x_2188.w));
          let x_2191 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_2190.x, x_2190.y, x_2191.z);
        }
      }
      let x_2198 : vec3<f32> = u_xlat25;
      let x_2200 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_2198.x, x_2198.y), 0.0f);
      u_xlat11 = x_2200;
      let x_2202 : bool = u_xlatb4.z;
      if (x_2202) {
        let x_2207 : f32 = u_xlat11.w;
        x_2203 = x_2207;
      } else {
        let x_2210 : f32 = u_xlat11.x;
        x_2203 = x_2210;
      }
      let x_2211 : f32 = x_2203;
      u_xlat51 = x_2211;
      let x_2213 : bool = u_xlatb4.x;
      if (x_2213) {
        let x_2217 : vec4<f32> = u_xlat11;
        x_2214 = vec3<f32>(x_2217.x, x_2217.y, x_2217.z);
      } else {
        let x_2220 : f32 = u_xlat51;
        x_2214 = vec3<f32>(x_2220, x_2220, x_2220);
      }
      let x_2222 : vec3<f32> = x_2214;
      let x_2223 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2222.x, x_2222.y, x_2222.z, x_2223.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2229 : vec4<f32> = u_xlat11;
    let x_2231 : i32 = u_xlati49;
    let x_2233 : vec4<f32> = x_1544.x_AdditionalLightsColor[x_2231];
    let x_2235 : vec3<f32> = (vec3<f32>(x_2229.x, x_2229.y, x_2229.z) * vec3<f32>(x_2233.x, x_2233.y, x_2233.z));
    let x_2236 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2235.x, x_2235.y, x_2235.z, x_2236.w);
    let x_2238 : f32 = u_xlat37;
    let x_2240 : f32 = u_xlat9.x;
    u_xlat49 = (x_2238 * x_2240);
    let x_2242 : vec4<f32> = u_xlat3;
    let x_2244 : vec3<f32> = u_xlat10;
    u_xlat9.x = dot(vec3<f32>(x_2242.x, x_2242.y, x_2242.z), x_2244);
    let x_2248 : f32 = u_xlat9.x;
    u_xlat9.x = clamp(x_2248, 0.0f, 1.0f);
    let x_2251 : f32 = u_xlat49;
    let x_2253 : f32 = u_xlat9.x;
    u_xlat49 = (x_2251 * x_2253);
    let x_2255 : f32 = u_xlat49;
    let x_2257 : vec4<f32> = u_xlat11;
    let x_2259 : vec3<f32> = (vec3<f32>(x_2255, x_2255, x_2255) * vec3<f32>(x_2257.x, x_2257.y, x_2257.z));
    let x_2260 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2259.x, x_2260.y, x_2259.y, x_2259.z);
    let x_2262 : vec3<f32> = u_xlat22;
    let x_2263 : f32 = u_xlat23;
    let x_2266 : vec3<f32> = u_xlat5;
    u_xlat22 = ((x_2262 * vec3<f32>(x_2263, x_2263, x_2263)) + x_2266);
    let x_2268 : vec3<f32> = u_xlat22;
    let x_2269 : vec3<f32> = u_xlat22;
    u_xlat49 = dot(x_2268, x_2269);
    let x_2271 : f32 = u_xlat49;
    u_xlat49 = max(x_2271, 1.17549435e-38f);
    let x_2273 : f32 = u_xlat49;
    u_xlat49 = inverseSqrt(x_2273);
    let x_2275 : f32 = u_xlat49;
    let x_2277 : vec3<f32> = u_xlat22;
    u_xlat22 = (vec3<f32>(x_2275, x_2275, x_2275) * x_2277);
    let x_2279 : vec4<f32> = u_xlat3;
    let x_2281 : vec3<f32> = u_xlat22;
    u_xlat49 = dot(vec3<f32>(x_2279.x, x_2279.y, x_2279.z), x_2281);
    let x_2283 : f32 = u_xlat49;
    u_xlat49 = clamp(x_2283, 0.0f, 1.0f);
    let x_2285 : vec3<f32> = u_xlat10;
    let x_2286 : vec3<f32> = u_xlat22;
    u_xlat22.x = dot(x_2285, x_2286);
    let x_2290 : f32 = u_xlat22.x;
    u_xlat22.x = clamp(x_2290, 0.0f, 1.0f);
    let x_2293 : f32 = u_xlat49;
    let x_2294 : f32 = u_xlat49;
    u_xlat49 = (x_2293 * x_2294);
    let x_2296 : f32 = u_xlat49;
    let x_2298 : f32 = u_xlat8.x;
    u_xlat49 = ((x_2296 * x_2298) + 1.00001001358032226562f);
    let x_2302 : f32 = u_xlat22.x;
    let x_2304 : f32 = u_xlat22.x;
    u_xlat22.x = (x_2302 * x_2304);
    let x_2307 : f32 = u_xlat49;
    let x_2308 : f32 = u_xlat49;
    u_xlat49 = (x_2307 * x_2308);
    let x_2311 : f32 = u_xlat22.x;
    u_xlat22.x = max(x_2311, 0.10000000149011611938f);
    let x_2314 : f32 = u_xlat49;
    let x_2316 : f32 = u_xlat22.x;
    u_xlat49 = (x_2314 * x_2316);
    let x_2318 : f32 = u_xlat46;
    let x_2319 : f32 = u_xlat49;
    u_xlat49 = (x_2318 * x_2319);
    let x_2321 : f32 = u_xlat18;
    let x_2322 : f32 = u_xlat49;
    u_xlat49 = (x_2321 / x_2322);
    let x_2324 : f32 = u_xlat49;
    let x_2327 : vec3<f32> = u_xlat16;
    u_xlat22 = ((vec3<f32>(x_2324, x_2324, x_2324) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_2327);
    let x_2329 : vec3<f32> = u_xlat22;
    let x_2330 : vec4<f32> = u_xlat9;
    let x_2333 : vec4<f32> = u_xlat7;
    let x_2335 : vec3<f32> = ((x_2329 * vec3<f32>(x_2330.x, x_2330.z, x_2330.w)) + vec3<f32>(x_2333.x, x_2333.y, x_2333.z));
    let x_2336 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2335.x, x_2335.y, x_2335.z, x_2336.w);

    continuing {
      let x_2338 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2338 + bitcast<u32>(1i));
    }
  }
  let x_2340 : vec3<f32> = u_xlat14;
  let x_2341 : f32 = u_xlat47;
  let x_2344 : vec3<f32> = u_xlat20;
  u_xlat0 = ((x_2340 * vec3<f32>(x_2341, x_2341, x_2341)) + x_2344);
  let x_2346 : vec4<f32> = u_xlat7;
  let x_2348 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2346.x, x_2346.y, x_2346.z) + x_2348);
  let x_2352 : vec4<f32> = vs_INTERP6;
  let x_2354 : vec3<f32> = u_xlat1;
  let x_2356 : vec3<f32> = u_xlat0;
  let x_2357 : vec3<f32> = ((vec3<f32>(x_2352.w, x_2352.w, x_2352.w) * x_2354) + x_2356);
  let x_2358 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2357.x, x_2357.y, x_2357.z, x_2358.w);
  let x_2361 : bool = u_xlatb2.x;
  let x_2362 : f32 = u_xlat43;
  SV_Target0.w = select(1.0f, x_2362, x_2361);
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


