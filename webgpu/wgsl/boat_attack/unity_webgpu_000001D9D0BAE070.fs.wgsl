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

@group(1) @binding(5) var<uniform> x_253 : UnityPerMaterial;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(6) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(12) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat22 : vec3<f32>;

var<private> vs_INTERP6 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_360 : LightShadows;

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

var<private> u_xlat28 : vec2<f32>;

var<private> u_xlat42 : f32;

var<private> u_xlat45 : f32;

var<private> u_xlat46 : f32;

var<private> u_xlat47 : f32;

var<private> u_xlat20 : vec3<f32>;

var<private> u_xlat34 : vec2<f32>;

var<private> u_xlat48 : f32;

var<private> u_xlatb34 : vec2<bool>;

@group(1) @binding(4) var<uniform> x_1110 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatb20 : vec2<bool>;

var<private> u_xlatu48 : u32;

var<private> u_xlati49 : i32;

var<private> u_xlati48 : i32;

@group(1) @binding(1) var<uniform> x_1590 : AdditionalLights;

var<private> u_xlat49 : f32;

var<private> u_xlat50 : f32;

var<private> u_xlat51 : f32;

var<private> u_xlati51 : i32;

var<private> u_xlatb52 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat53 : f32;

var<private> u_xlat25 : vec3<f32>;

var<private> u_xlat52 : f32;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlati52 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlati25 : i32;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlatb25 : vec3<bool>;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu46 : u32;

var<private> u_xlatb48 : bool;

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
  var x_189 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var x_590 : f32;
  var x_632 : f32;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var x_768 : f32;
  var x_794 : f32;
  var x_841 : f32;
  var x_1178 : f32;
  var x_1189 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1727 : f32;
  var x_1738 : f32;
  var txVec1 : vec3<f32>;
  var x_2184 : f32;
  var x_2197 : f32;
  var x_2255 : f32;
  var x_2266 : vec3<f32>;
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
  u_xlatb14.x = (0.0f < x_74);
  let x_87 : f32 = x_83.unity_WorldTransformParams.w;
  u_xlatb14.y = (x_87 >= 0.0f);
  let x_94 : bool = u_xlatb14.x;
  u_xlat14.x = select(-1.0f, 1.0f, x_94);
  let x_99 : bool = u_xlatb14.y;
  u_xlat14.y = select(-1.0f, 1.0f, x_99);
  let x_103 : f32 = u_xlat14.y;
  let x_105 : f32 = u_xlat14.x;
  u_xlat14.x = (x_103 * x_105);
  let x_109 : vec4<f32> = vs_INTERP4;
  let x_111 : vec3<f32> = vs_INTERP9;
  u_xlat1 = (vec3<f32>(x_109.y, x_109.z, x_109.x) * vec3<f32>(x_111.z, x_111.x, x_111.y));
  let x_114 : vec3<f32> = vs_INTERP9;
  let x_116 : vec4<f32> = vs_INTERP4;
  let x_119 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_114.y, x_114.z, x_114.x) * vec3<f32>(x_116.z, x_116.x, x_116.y)) + -(x_119));
  let x_122 : vec3<f32> = u_xlat14;
  let x_124 : vec3<f32> = u_xlat1;
  u_xlat14 = (vec3<f32>(x_122.x, x_122.x, x_122.x) * x_124);
  let x_126 : vec4<f32> = u_xlat0;
  let x_128 : vec3<f32> = vs_INTERP9;
  u_xlat1 = (vec3<f32>(x_126.x, x_126.x, x_126.x) * x_128);
  let x_131 : vec4<f32> = u_xlat0;
  let x_133 : vec4<f32> = vs_INTERP4;
  let x_135 : vec3<f32> = (vec3<f32>(x_131.x, x_131.x, x_131.x) * vec3<f32>(x_133.x, x_133.y, x_133.z));
  let x_136 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_135.x, x_135.y, x_135.z, x_136.w);
  let x_139 : vec3<f32> = u_xlat14;
  let x_140 : vec4<f32> = u_xlat0;
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
  let x_177 : f32 = x_149.unity_MatrixV[0i].z;
  u_xlat5.x = x_177;
  let x_181 : f32 = x_149.unity_MatrixV[1i].z;
  u_xlat5.y = x_181;
  let x_185 : f32 = x_149.unity_MatrixV[2i].z;
  u_xlat5.z = x_185;
  let x_187 : bool = u_xlatb0;
  if (x_187) {
    let x_192 : vec3<f32> = u_xlat4;
    x_189 = x_192;
  } else {
    let x_194 : vec3<f32> = u_xlat5;
    x_189 = x_194;
  }
  let x_195 : vec3<f32> = x_189;
  u_xlat4 = x_195;
  let x_196 : vec3<f32> = u_xlat4;
  let x_200 : vec4<f32> = x_83.unity_WorldToObject[1i];
  u_xlat5 = (vec3<f32>(x_196.y, x_196.y, x_196.y) * vec3<f32>(x_200.x, x_200.y, x_200.z));
  let x_204 : vec4<f32> = x_83.unity_WorldToObject[0i];
  let x_206 : vec3<f32> = u_xlat4;
  let x_209 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_204.x, x_204.y, x_204.z) * vec3<f32>(x_206.x, x_206.x, x_206.x)) + x_209);
  let x_212 : vec4<f32> = x_83.unity_WorldToObject[2i];
  let x_214 : vec3<f32> = u_xlat4;
  let x_217 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_212.x, x_212.y, x_212.z) * vec3<f32>(x_214.z, x_214.z, x_214.z)) + x_217);
  let x_219 : vec3<f32> = u_xlat5;
  let x_220 : vec3<f32> = u_xlat5;
  u_xlat0.x = dot(x_219, x_220);
  let x_224 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_224);
  let x_227 : vec4<f32> = u_xlat0;
  let x_229 : vec3<f32> = u_xlat5;
  u_xlat5 = (vec3<f32>(x_227.x, x_227.x, x_227.x) * x_229);
  let x_243 : vec4<f32> = vs_INTERP5;
  let x_246 : f32 = x_149.x_GlobalMipBias.x;
  let x_247 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_243.x, x_243.y), x_246);
  u_xlat6 = x_247;
  let x_249 : vec4<f32> = u_xlat6;
  let x_255 : vec4<f32> = x_253.Color_C30C7CA3;
  let x_257 : vec3<f32> = (vec3<f32>(x_249.x, x_249.y, x_249.z) * vec3<f32>(x_255.x, x_255.y, x_255.z));
  let x_258 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_257.x, x_257.y, x_257.z, x_258.w);
  let x_266 : vec4<f32> = vs_INTERP5;
  let x_269 : f32 = x_149.x_GlobalMipBias.x;
  let x_270 : vec4<f32> = textureSampleBias(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1, vec2<f32>(x_266.x, x_266.y), x_269);
  u_xlat8 = vec4<f32>(x_270.w, x_270.x, x_270.y, x_270.z);
  let x_273 : vec4<f32> = u_xlat8;
  u_xlat9 = ((vec4<f32>(x_273.y, x_273.z, x_273.w, x_273.x) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_280 : vec4<f32> = u_xlat9;
  let x_281 : vec4<f32> = u_xlat9;
  u_xlat0.x = dot(x_280, x_281);
  let x_285 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_285);
  let x_289 : vec4<f32> = u_xlat0;
  let x_291 : vec4<f32> = u_xlat9;
  u_xlat22 = (vec3<f32>(x_289.x, x_289.x, x_289.x) * vec3<f32>(x_291.x, x_291.y, x_291.z));
  let x_296 : f32 = vs_INTERP6.y;
  u_xlat0.x = (x_296 * 200.0f);
  let x_301 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_301, 1.0f);
  let x_304 : vec4<f32> = u_xlat0;
  let x_306 : vec4<f32> = u_xlat6;
  let x_308 : vec3<f32> = (vec3<f32>(x_304.x, x_304.x, x_304.x) * vec3<f32>(x_306.x, x_306.y, x_306.z));
  let x_309 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_308.x, x_308.y, x_308.z, x_309.w);
  let x_311 : vec4<f32> = u_xlat3;
  let x_313 : vec3<f32> = u_xlat22;
  let x_315 : vec3<f32> = (vec3<f32>(x_311.x, x_311.y, x_311.z) * vec3<f32>(x_313.y, x_313.y, x_313.y));
  let x_316 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_315.x, x_315.y, x_315.z, x_316.w);
  let x_318 : vec3<f32> = u_xlat22;
  let x_320 : vec4<f32> = u_xlat2;
  let x_323 : vec4<f32> = u_xlat3;
  let x_325 : vec3<f32> = ((vec3<f32>(x_318.x, x_318.x, x_318.x) * vec3<f32>(x_320.x, x_320.y, x_320.z)) + vec3<f32>(x_323.x, x_323.y, x_323.z));
  let x_326 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_325.x, x_325.y, x_325.z, x_326.w);
  let x_328 : vec3<f32> = u_xlat22;
  let x_330 : vec3<f32> = u_xlat1;
  let x_332 : vec4<f32> = u_xlat2;
  u_xlat1 = ((vec3<f32>(x_328.z, x_328.z, x_328.z) * x_330) + vec3<f32>(x_332.x, x_332.y, x_332.z));
  let x_335 : vec3<f32> = u_xlat1;
  let x_336 : vec3<f32> = u_xlat1;
  u_xlat0.x = dot(x_335, x_336);
  let x_340 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_340, 1.17549435e-38f);
  let x_345 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_345);
  let x_348 : vec4<f32> = u_xlat0;
  let x_350 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_348.x, x_348.x, x_348.x) * x_350);
  let x_352 : vec3<f32> = vs_INTERP8;
  let x_362 : vec4<f32> = x_360.x_CascadeShadowSplitSpheres0;
  let x_365 : vec3<f32> = (x_352 + -(vec3<f32>(x_362.x, x_362.y, x_362.z)));
  let x_366 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_365.x, x_365.y, x_365.z, x_366.w);
  let x_368 : vec3<f32> = vs_INTERP8;
  let x_370 : vec4<f32> = x_360.x_CascadeShadowSplitSpheres1;
  let x_373 : vec3<f32> = (x_368 + -(vec3<f32>(x_370.x, x_370.y, x_370.z)));
  let x_374 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_373.x, x_373.y, x_373.z, x_374.w);
  let x_376 : vec3<f32> = vs_INTERP8;
  let x_378 : vec4<f32> = x_360.x_CascadeShadowSplitSpheres2;
  let x_381 : vec3<f32> = (x_376 + -(vec3<f32>(x_378.x, x_378.y, x_378.z)));
  let x_382 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_381.x, x_381.y, x_381.z, x_382.w);
  let x_385 : vec3<f32> = vs_INTERP8;
  let x_388 : vec4<f32> = x_360.x_CascadeShadowSplitSpheres3;
  u_xlat10 = (x_385 + -(vec3<f32>(x_388.x, x_388.y, x_388.z)));
  let x_392 : vec4<f32> = u_xlat2;
  let x_394 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_392.x, x_392.y, x_392.z), vec3<f32>(x_394.x, x_394.y, x_394.z));
  let x_398 : vec4<f32> = u_xlat3;
  let x_400 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_398.x, x_398.y, x_398.z), vec3<f32>(x_400.x, x_400.y, x_400.z));
  let x_404 : vec4<f32> = u_xlat9;
  let x_406 : vec4<f32> = u_xlat9;
  u_xlat2.z = dot(vec3<f32>(x_404.x, x_404.y, x_404.z), vec3<f32>(x_406.x, x_406.y, x_406.z));
  let x_410 : vec3<f32> = u_xlat10;
  let x_411 : vec3<f32> = u_xlat10;
  u_xlat2.w = dot(x_410, x_411);
  let x_417 : vec4<f32> = u_xlat2;
  let x_419 : vec4<f32> = x_360.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_417 < x_419);
  let x_422 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_422);
  let x_426 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_426);
  let x_430 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_430);
  let x_434 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_434);
  let x_438 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_438);
  let x_443 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_443);
  let x_447 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_447);
  let x_450 : vec4<f32> = u_xlat2;
  let x_452 : vec4<f32> = u_xlat3;
  let x_454 : vec3<f32> = (vec3<f32>(x_450.x, x_450.y, x_450.z) + vec3<f32>(x_452.y, x_452.z, x_452.w));
  let x_455 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_454.x, x_454.y, x_454.z, x_455.w);
  let x_457 : vec4<f32> = u_xlat2;
  let x_460 : vec3<f32> = max(vec3<f32>(x_457.x, x_457.y, x_457.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_461 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_461.x, x_460.x, x_460.y, x_460.z);
  let x_463 : vec4<f32> = u_xlat3;
  u_xlat0.x = dot(x_463, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_470 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_470) + 4.0f);
  let x_477 : f32 = u_xlat0.x;
  u_xlatu0 = u32(x_477);
  let x_481 : u32 = u_xlatu0;
  u_xlati0 = (bitcast<i32>(x_481) << bitcast<u32>(2i));
  let x_484 : vec3<f32> = vs_INTERP8;
  let x_486 : i32 = u_xlati0;
  let x_489 : i32 = u_xlati0;
  let x_493 : vec4<f32> = x_360.x_MainLightWorldToShadow[((x_486 + 1i) / 4i)][((x_489 + 1i) % 4i)];
  let x_495 : vec3<f32> = (vec3<f32>(x_484.y, x_484.y, x_484.y) * vec3<f32>(x_493.x, x_493.y, x_493.z));
  let x_496 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_495.x, x_495.y, x_495.z, x_496.w);
  let x_498 : i32 = u_xlati0;
  let x_500 : i32 = u_xlati0;
  let x_503 : vec4<f32> = x_360.x_MainLightWorldToShadow[(x_498 / 4i)][(x_500 % 4i)];
  let x_505 : vec3<f32> = vs_INTERP8;
  let x_508 : vec4<f32> = u_xlat2;
  let x_510 : vec3<f32> = ((vec3<f32>(x_503.x, x_503.y, x_503.z) * vec3<f32>(x_505.x, x_505.x, x_505.x)) + vec3<f32>(x_508.x, x_508.y, x_508.z));
  let x_511 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_510.x, x_510.y, x_510.z, x_511.w);
  let x_513 : i32 = u_xlati0;
  let x_516 : i32 = u_xlati0;
  let x_520 : vec4<f32> = x_360.x_MainLightWorldToShadow[((x_513 + 2i) / 4i)][((x_516 + 2i) % 4i)];
  let x_522 : vec3<f32> = vs_INTERP8;
  let x_525 : vec4<f32> = u_xlat2;
  let x_527 : vec3<f32> = ((vec3<f32>(x_520.x, x_520.y, x_520.z) * vec3<f32>(x_522.z, x_522.z, x_522.z)) + vec3<f32>(x_525.x, x_525.y, x_525.z));
  let x_528 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_527.x, x_527.y, x_527.z, x_528.w);
  let x_530 : vec4<f32> = u_xlat2;
  let x_532 : i32 = u_xlati0;
  let x_535 : i32 = u_xlati0;
  let x_539 : vec4<f32> = x_360.x_MainLightWorldToShadow[((x_532 + 3i) / 4i)][((x_535 + 3i) % 4i)];
  let x_541 : vec3<f32> = (vec3<f32>(x_530.x, x_530.y, x_530.z) + vec3<f32>(x_539.x, x_539.y, x_539.z));
  let x_542 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_541.x, x_541.y, x_541.z, x_542.w);
  let x_545 : vec4<f32> = u_xlat2;
  let x_546 : vec2<f32> = vec2<f32>(x_545.x, x_545.y);
  let x_548 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_546.x, x_546.y, x_548);
  let x_560 : vec3<f32> = txVec0;
  let x_562 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_560.xy, x_560.z);
  u_xlat0.x = x_562;
  let x_565 : f32 = x_360.x_MainLightShadowParams.x;
  u_xlat43 = (-(x_565) + 1.0f);
  let x_569 : f32 = u_xlat0.x;
  let x_571 : f32 = x_360.x_MainLightShadowParams.x;
  let x_573 : f32 = u_xlat43;
  u_xlat0.x = ((x_569 * x_571) + x_573);
  let x_578 : f32 = u_xlat2.z;
  u_xlatb43 = (0.0f >= x_578);
  let x_581 : f32 = u_xlat2.z;
  u_xlatb2.x = (x_581 >= 1.0f);
  let x_584 : bool = u_xlatb43;
  let x_586 : bool = u_xlatb2.x;
  u_xlatb43 = (x_584 | x_586);
  let x_588 : bool = u_xlatb43;
  if (x_588) {
    x_590 = 1.0f;
  } else {
    let x_595 : f32 = u_xlat0.x;
    x_590 = x_595;
  }
  let x_596 : f32 = x_590;
  u_xlat0.x = x_596;
  let x_598 : vec3<f32> = u_xlat1;
  let x_600 : vec4<f32> = x_149.x_MainLightPosition;
  u_xlat1.x = dot(x_598, -(vec3<f32>(x_600.x, x_600.y, x_600.z)));
  let x_606 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_606, 0.0f, 1.0f);
  let x_610 : vec4<f32> = u_xlat0;
  let x_613 : vec4<f32> = x_149.x_MainLightColor;
  u_xlat15 = (vec3<f32>(x_610.x, x_610.x, x_610.x) * vec3<f32>(x_613.x, x_613.y, x_613.z));
  let x_616 : vec3<f32> = u_xlat15;
  let x_617 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_616 * vec3<f32>(x_617.x, x_617.x, x_617.x));
  let x_620 : vec3<f32> = u_xlat1;
  let x_621 : vec4<f32> = u_xlat6;
  u_xlat1 = (x_620 * vec3<f32>(x_621.x, x_621.y, x_621.z));
  let x_625 : f32 = x_83.unity_LODFade.x;
  u_xlatb43 = (x_625 < 0.0f);
  let x_628 : f32 = x_83.unity_LODFade.x;
  u_xlat2.x = (x_628 + 1.0f);
  let x_631 : bool = u_xlatb43;
  if (x_631) {
    let x_636 : f32 = u_xlat2.x;
    x_632 = x_636;
  } else {
    let x_639 : f32 = x_83.unity_LODFade.x;
    x_632 = x_639;
  }
  let x_640 : f32 = x_632;
  u_xlat43 = x_640;
  let x_642 : f32 = u_xlat43;
  u_xlatb2.x = (0.5f >= x_642);
  let x_646 : vec3<f32> = u_xlat5;
  let x_650 : vec4<f32> = x_149.x_ScreenParams;
  u_xlat16 = (abs(x_646) * vec3<f32>(x_650.x, x_650.y, x_650.x));
  let x_656 : vec3<f32> = u_xlat16;
  u_xlatu16 = vec3<u32>(x_656);
  let x_660 : u32 = u_xlatu16.z;
  u_xlatu44 = (x_660 * 1025u);
  let x_664 : u32 = u_xlatu44;
  u_xlatu3 = (x_664 >> 6u);
  let x_668 : u32 = u_xlatu44;
  let x_669 : u32 = u_xlatu3;
  u_xlati44 = bitcast<i32>((x_668 ^ x_669));
  let x_672 : i32 = u_xlati44;
  u_xlatu44 = (bitcast<u32>(x_672) * 9u);
  let x_676 : u32 = u_xlatu44;
  u_xlatu3 = (x_676 >> 11u);
  let x_679 : u32 = u_xlatu44;
  let x_680 : u32 = u_xlatu3;
  u_xlati44 = bitcast<i32>((x_679 ^ x_680));
  let x_683 : i32 = u_xlati44;
  u_xlati44 = (x_683 * 32769i);
  let x_687 : i32 = u_xlati44;
  let x_690 : u32 = u_xlatu16.y;
  u_xlati30 = bitcast<i32>((bitcast<u32>(x_687) ^ x_690));
  let x_694 : i32 = u_xlati30;
  u_xlatu30 = (bitcast<u32>(x_694) * 1025u);
  let x_697 : u32 = u_xlatu30;
  u_xlatu44 = (x_697 >> 6u);
  let x_699 : u32 = u_xlatu44;
  let x_700 : u32 = u_xlatu30;
  u_xlati30 = bitcast<i32>((x_699 ^ x_700));
  let x_703 : i32 = u_xlati30;
  u_xlatu30 = (bitcast<u32>(x_703) * 9u);
  let x_706 : u32 = u_xlatu30;
  u_xlatu44 = (x_706 >> 11u);
  let x_708 : u32 = u_xlatu44;
  let x_709 : u32 = u_xlatu30;
  u_xlati30 = bitcast<i32>((x_708 ^ x_709));
  let x_712 : i32 = u_xlati30;
  u_xlati30 = (x_712 * 32769i);
  let x_715 : i32 = u_xlati30;
  let x_718 : u32 = u_xlatu16.x;
  u_xlati16 = bitcast<i32>((bitcast<u32>(x_715) ^ x_718));
  let x_721 : i32 = u_xlati16;
  u_xlatu16.x = (bitcast<u32>(x_721) * 1025u);
  let x_726 : u32 = u_xlatu16.x;
  u_xlatu30 = (x_726 >> 6u);
  let x_728 : u32 = u_xlatu30;
  let x_730 : u32 = u_xlatu16.x;
  u_xlati16 = bitcast<i32>((x_728 ^ x_730));
  let x_733 : i32 = u_xlati16;
  u_xlatu16.x = (bitcast<u32>(x_733) * 9u);
  let x_738 : u32 = u_xlatu16.x;
  u_xlatu30 = (x_738 >> 11u);
  let x_740 : u32 = u_xlatu30;
  let x_742 : u32 = u_xlatu16.x;
  u_xlati16 = bitcast<i32>((x_740 ^ x_742));
  let x_745 : i32 = u_xlati16;
  u_xlati16 = (x_745 * 32769i);
  param = 1065353216i;
  let x_751 : i32 = u_xlati16;
  param_1 = x_751;
  param_2 = 0i;
  param_3 = 23i;
  let x_754 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlat16.x = bitcast<f32>(x_754);
  let x_758 : f32 = u_xlat16.x;
  u_xlat16.x = (x_758 + -1.0f);
  let x_763 : f32 = u_xlat16.x;
  u_xlat30 = (-(x_763) + 1.0f);
  let x_767 : bool = u_xlatb2.x;
  if (x_767) {
    let x_772 : f32 = u_xlat16.x;
    x_768 = x_772;
  } else {
    let x_774 : f32 = u_xlat30;
    x_768 = x_774;
  }
  let x_775 : f32 = x_768;
  u_xlat2.x = x_775;
  let x_777 : f32 = u_xlat43;
  let x_780 : f32 = u_xlat2.x;
  u_xlat43 = ((x_777 * 2.0f) + -(x_780));
  let x_783 : f32 = u_xlat43;
  let x_785 : f32 = u_xlat6.w;
  u_xlat2.x = (x_783 * x_785);
  let x_790 : f32 = u_xlat2.x;
  u_xlatb16 = (x_790 >= 0.40000000596046447754f);
  let x_793 : bool = u_xlatb16;
  if (x_793) {
    let x_798 : f32 = u_xlat2.x;
    x_794 = x_798;
  } else {
    x_794 = 0.0f;
  }
  let x_800 : f32 = x_794;
  u_xlat16.x = x_800;
  let x_803 : f32 = u_xlat6.w;
  let x_804 : f32 = u_xlat43;
  u_xlat43 = ((x_803 * x_804) + -0.40000000596046447754f);
  let x_809 : f32 = u_xlat2.x;
  u_xlat30 = dpdxCoarse(x_809);
  let x_812 : f32 = u_xlat2.x;
  u_xlat2.x = dpdyCoarse(x_812);
  let x_816 : f32 = u_xlat2.x;
  let x_818 : f32 = u_xlat30;
  u_xlat2.x = (abs(x_816) + abs(x_818));
  let x_823 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_823, 0.00009999999747378752f);
  let x_827 : f32 = u_xlat43;
  let x_829 : f32 = u_xlat2.x;
  u_xlat43 = (x_827 / x_829);
  let x_831 : f32 = u_xlat43;
  u_xlat43 = (x_831 + 0.5f);
  let x_833 : f32 = u_xlat43;
  u_xlat43 = clamp(x_833, 0.0f, 1.0f);
  let x_836 : f32 = x_149.x_AlphaToMaskAvailable;
  u_xlatb2.x = !((x_836 == 0.0f));
  let x_840 : bool = u_xlatb2.x;
  if (x_840) {
    let x_844 : f32 = u_xlat43;
    x_841 = x_844;
  } else {
    let x_847 : f32 = u_xlat16.x;
    x_841 = x_847;
  }
  let x_848 : f32 = x_841;
  u_xlat43 = x_848;
  let x_849 : f32 = u_xlat43;
  u_xlat16.x = (x_849 + -0.00009999999747378752f);
  let x_854 : f32 = u_xlat16.x;
  u_xlatb16 = (x_854 < 0.0f);
  let x_856 : bool = u_xlatb16;
  if (((select(0i, 1i, x_856) * -1i) != 0i)) {
    discard;
  }
  let x_864 : vec3<f32> = u_xlat14;
  let x_865 : vec3<f32> = u_xlat22;
  u_xlat14 = (x_864 * vec3<f32>(x_865.y, x_865.y, x_865.y));
  let x_868 : vec3<f32> = u_xlat22;
  let x_870 : vec4<f32> = vs_INTERP4;
  let x_873 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_868.x, x_868.x, x_868.x) * vec3<f32>(x_870.x, x_870.y, x_870.z)) + x_873);
  let x_875 : vec3<f32> = u_xlat22;
  let x_877 : vec3<f32> = vs_INTERP9;
  let x_879 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_875.z, x_875.z, x_875.z) * x_877) + x_879);
  let x_881 : vec3<f32> = u_xlat14;
  let x_882 : vec3<f32> = u_xlat14;
  u_xlat16.x = dot(x_881, x_882);
  let x_886 : f32 = u_xlat16.x;
  u_xlat16.x = inverseSqrt(x_886);
  let x_889 : vec3<f32> = u_xlat14;
  let x_890 : vec3<f32> = u_xlat16;
  let x_892 : vec3<f32> = (x_889 * vec3<f32>(x_890.x, x_890.x, x_890.x));
  let x_893 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_892.x, x_892.y, x_892.z, x_893.w);
  let x_896 : f32 = vs_INTERP8.y;
  let x_898 : f32 = x_149.unity_MatrixV[1i].z;
  u_xlat14.x = (x_896 * x_898);
  let x_902 : f32 = x_149.unity_MatrixV[0i].z;
  let x_904 : f32 = vs_INTERP8.x;
  let x_907 : f32 = u_xlat14.x;
  u_xlat14.x = ((x_902 * x_904) + x_907);
  let x_911 : f32 = x_149.unity_MatrixV[2i].z;
  let x_913 : f32 = vs_INTERP8.z;
  let x_916 : f32 = u_xlat14.x;
  u_xlat14.x = ((x_911 * x_913) + x_916);
  let x_920 : f32 = u_xlat14.x;
  let x_922 : f32 = x_149.unity_MatrixV[3i].z;
  u_xlat14.x = (x_920 + x_922);
  let x_926 : f32 = u_xlat14.x;
  let x_930 : f32 = x_149.x_ProjectionParams.y;
  u_xlat14.x = (-(x_926) + -(x_930));
  let x_935 : f32 = u_xlat14.x;
  u_xlat14.x = max(x_935, 0.0f);
  let x_939 : f32 = u_xlat14.x;
  let x_942 : f32 = x_149.unity_FogParams.x;
  u_xlat14.x = (x_939 * x_942);
  u_xlat3.w = 1.0f;
  let x_948 : vec4<f32> = x_83.unity_SHAr;
  let x_949 : vec4<f32> = u_xlat3;
  u_xlat5.x = dot(x_948, x_949);
  let x_954 : vec4<f32> = x_83.unity_SHAg;
  let x_955 : vec4<f32> = u_xlat3;
  u_xlat5.y = dot(x_954, x_955);
  let x_960 : vec4<f32> = x_83.unity_SHAb;
  let x_961 : vec4<f32> = u_xlat3;
  u_xlat5.z = dot(x_960, x_961);
  let x_964 : vec4<f32> = u_xlat3;
  let x_966 : vec4<f32> = u_xlat3;
  u_xlat6 = (vec4<f32>(x_964.y, x_964.z, x_964.z, x_964.x) * vec4<f32>(x_966.x, x_966.y, x_966.z, x_966.z));
  let x_971 : vec4<f32> = x_83.unity_SHBr;
  let x_972 : vec4<f32> = u_xlat6;
  u_xlat9.x = dot(x_971, x_972);
  let x_977 : vec4<f32> = x_83.unity_SHBg;
  let x_978 : vec4<f32> = u_xlat6;
  u_xlat9.y = dot(x_977, x_978);
  let x_982 : vec4<f32> = x_83.unity_SHBb;
  let x_983 : vec4<f32> = u_xlat6;
  u_xlat9.z = dot(x_982, x_983);
  let x_989 : f32 = u_xlat3.y;
  let x_991 : f32 = u_xlat3.y;
  u_xlat28.x = (x_989 * x_991);
  let x_995 : f32 = u_xlat3.x;
  let x_997 : f32 = u_xlat3.x;
  let x_1000 : f32 = u_xlat28.x;
  u_xlat28.x = ((x_995 * x_997) + -(x_1000));
  let x_1006 : vec4<f32> = x_83.unity_SHC;
  let x_1008 : vec2<f32> = u_xlat28;
  let x_1011 : vec4<f32> = u_xlat9;
  u_xlat16 = ((vec3<f32>(x_1006.x, x_1006.y, x_1006.z) * vec3<f32>(x_1008.x, x_1008.x, x_1008.x)) + vec3<f32>(x_1011.x, x_1011.y, x_1011.z));
  let x_1014 : vec3<f32> = u_xlat16;
  let x_1015 : vec3<f32> = u_xlat5;
  u_xlat16 = (x_1014 + x_1015);
  let x_1017 : vec3<f32> = u_xlat16;
  u_xlat16 = max(x_1017, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1020 : f32 = u_xlat8.x;
  u_xlat8.x = x_1020;
  let x_1023 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_1023, 0.0f, 1.0f);
  let x_1026 : f32 = u_xlat43;
  u_xlat43 = x_1026;
  let x_1027 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1027, 0.0f, 1.0f);
  let x_1029 : vec4<f32> = u_xlat7;
  u_xlat5 = (vec3<f32>(x_1029.x, x_1029.y, x_1029.z) * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_1035 : f32 = u_xlat8.x;
  u_xlat28.x = (-(x_1035) + 1.0f);
  let x_1041 : f32 = u_xlat28.x;
  let x_1043 : f32 = u_xlat28.x;
  u_xlat42 = (x_1041 * x_1043);
  let x_1045 : f32 = u_xlat42;
  u_xlat42 = max(x_1045, 0.0078125f);
  let x_1049 : f32 = u_xlat42;
  let x_1050 : f32 = u_xlat42;
  u_xlat45 = (x_1049 * x_1050);
  let x_1054 : f32 = u_xlat8.x;
  u_xlat46 = (x_1054 + 0.04000002145767211914f);
  let x_1057 : f32 = u_xlat46;
  u_xlat46 = min(x_1057, 1.0f);
  let x_1060 : f32 = u_xlat42;
  u_xlat47 = ((x_1060 * 4.0f) + 2.0f);
  let x_1064 : f32 = vs_INTERP6.w;
  u_xlat6.x = min(x_1064, 1.0f);
  let x_1068 : vec3<f32> = vs_INTERP8;
  let x_1070 : vec3<f32> = x_149.x_WorldSpaceCameraPos;
  u_xlat20 = (x_1068 + -(x_1070));
  let x_1073 : vec3<f32> = u_xlat20;
  let x_1074 : vec3<f32> = u_xlat20;
  u_xlat20.x = dot(x_1073, x_1074);
  let x_1079 : f32 = u_xlat20.x;
  let x_1081 : f32 = x_360.x_MainLightShadowParams.z;
  let x_1084 : f32 = x_360.x_MainLightShadowParams.w;
  u_xlat34.x = ((x_1079 * x_1081) + x_1084);
  let x_1088 : f32 = u_xlat34.x;
  u_xlat34.x = clamp(x_1088, 0.0f, 1.0f);
  let x_1093 : f32 = u_xlat0.x;
  u_xlat48 = (-(x_1093) + 1.0f);
  let x_1097 : f32 = u_xlat34.x;
  let x_1098 : f32 = u_xlat48;
  let x_1101 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1097 * x_1098) + x_1101);
  let x_1112 : f32 = x_1110.x_MainLightCookieTextureFormat;
  u_xlatb34.x = !((x_1112 == -1.0f));
  let x_1116 : bool = u_xlatb34.x;
  if (x_1116) {
    let x_1119 : vec3<f32> = vs_INTERP8;
    let x_1122 : vec4<f32> = x_1110.x_MainLightWorldToLight[1i];
    u_xlat34 = (vec2<f32>(x_1119.y, x_1119.y) * vec2<f32>(x_1122.x, x_1122.y));
    let x_1126 : vec4<f32> = x_1110.x_MainLightWorldToLight[0i];
    let x_1128 : vec3<f32> = vs_INTERP8;
    let x_1131 : vec2<f32> = u_xlat34;
    u_xlat34 = ((vec2<f32>(x_1126.x, x_1126.y) * vec2<f32>(x_1128.x, x_1128.x)) + x_1131);
    let x_1134 : vec4<f32> = x_1110.x_MainLightWorldToLight[2i];
    let x_1136 : vec3<f32> = vs_INTERP8;
    let x_1139 : vec2<f32> = u_xlat34;
    u_xlat34 = ((vec2<f32>(x_1134.x, x_1134.y) * vec2<f32>(x_1136.z, x_1136.z)) + x_1139);
    let x_1141 : vec2<f32> = u_xlat34;
    let x_1143 : vec4<f32> = x_1110.x_MainLightWorldToLight[3i];
    u_xlat34 = (x_1141 + vec2<f32>(x_1143.x, x_1143.y));
    let x_1146 : vec2<f32> = u_xlat34;
    u_xlat34 = ((x_1146 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1155 : vec2<f32> = u_xlat34;
    let x_1157 : f32 = x_149.x_GlobalMipBias.x;
    let x_1158 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_1155, x_1157);
    u_xlat7 = x_1158;
    let x_1160 : f32 = x_1110.x_MainLightCookieTextureFormat;
    let x_1162 : f32 = x_1110.x_MainLightCookieTextureFormat;
    let x_1164 : f32 = x_1110.x_MainLightCookieTextureFormat;
    let x_1166 : f32 = x_1110.x_MainLightCookieTextureFormat;
    let x_1167 : vec4<f32> = vec4<f32>(x_1160, x_1162, x_1164, x_1166);
    let x_1174 : vec4<bool> = (vec4<f32>(x_1167.x, x_1167.y, x_1167.z, x_1167.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb34 = vec2<bool>(x_1174.x, x_1174.y);
    let x_1177 : bool = u_xlatb34.y;
    if (x_1177) {
      let x_1182 : f32 = u_xlat7.w;
      x_1178 = x_1182;
    } else {
      let x_1185 : f32 = u_xlat7.x;
      x_1178 = x_1185;
    }
    let x_1186 : f32 = x_1178;
    u_xlat48 = x_1186;
    let x_1188 : bool = u_xlatb34.x;
    if (x_1188) {
      let x_1192 : vec4<f32> = u_xlat7;
      x_1189 = vec3<f32>(x_1192.x, x_1192.y, x_1192.z);
    } else {
      let x_1195 : f32 = u_xlat48;
      x_1189 = vec3<f32>(x_1195, x_1195, x_1195);
    }
    let x_1197 : vec3<f32> = x_1189;
    let x_1198 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1197.x, x_1197.y, x_1197.z, x_1198.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_1204 : vec4<f32> = u_xlat7;
  let x_1207 : vec4<f32> = x_149.x_MainLightColor;
  let x_1209 : vec3<f32> = (vec3<f32>(x_1204.x, x_1204.y, x_1204.z) * vec3<f32>(x_1207.x, x_1207.y, x_1207.z));
  let x_1210 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1209.x, x_1209.y, x_1209.z, x_1210.w);
  let x_1212 : vec3<f32> = u_xlat4;
  let x_1214 : vec4<f32> = u_xlat3;
  u_xlat34.x = dot(-(x_1212), vec3<f32>(x_1214.x, x_1214.y, x_1214.z));
  let x_1219 : f32 = u_xlat34.x;
  let x_1221 : f32 = u_xlat34.x;
  u_xlat34.x = (x_1219 + x_1221);
  let x_1224 : vec4<f32> = u_xlat3;
  let x_1226 : vec2<f32> = u_xlat34;
  let x_1230 : vec3<f32> = u_xlat4;
  let x_1232 : vec3<f32> = ((vec3<f32>(x_1224.x, x_1224.y, x_1224.z) * -(vec3<f32>(x_1226.x, x_1226.x, x_1226.x))) + -(x_1230));
  let x_1233 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1232.x, x_1232.y, x_1232.z, x_1233.w);
  let x_1235 : vec4<f32> = u_xlat3;
  let x_1237 : vec3<f32> = u_xlat4;
  u_xlat34.x = dot(vec3<f32>(x_1235.x, x_1235.y, x_1235.z), x_1237);
  let x_1241 : f32 = u_xlat34.x;
  u_xlat34.x = clamp(x_1241, 0.0f, 1.0f);
  let x_1245 : f32 = u_xlat34.x;
  u_xlat34.x = (-(x_1245) + 1.0f);
  let x_1250 : f32 = u_xlat34.x;
  let x_1252 : f32 = u_xlat34.x;
  u_xlat34.x = (x_1250 * x_1252);
  let x_1256 : f32 = u_xlat34.x;
  let x_1258 : f32 = u_xlat34.x;
  u_xlat34.x = (x_1256 * x_1258);
  let x_1262 : f32 = u_xlat28.x;
  u_xlat48 = ((-(x_1262) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1269 : f32 = u_xlat28.x;
  let x_1270 : f32 = u_xlat48;
  u_xlat28.x = (x_1269 * x_1270);
  let x_1274 : f32 = u_xlat28.x;
  u_xlat28.x = (x_1274 * 6.0f);
  let x_1286 : vec4<f32> = u_xlat8;
  let x_1289 : f32 = u_xlat28.x;
  let x_1290 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1286.x, x_1286.y, x_1286.z), x_1289);
  u_xlat8 = x_1290;
  let x_1292 : f32 = u_xlat8.w;
  u_xlat28.x = (x_1292 + -1.0f);
  let x_1296 : f32 = x_83.unity_SpecCube0_HDR.w;
  let x_1298 : f32 = u_xlat28.x;
  u_xlat28.x = ((x_1296 * x_1298) + 1.0f);
  let x_1303 : f32 = u_xlat28.x;
  u_xlat28.x = max(x_1303, 0.0f);
  let x_1307 : f32 = u_xlat28.x;
  u_xlat28.x = log2(x_1307);
  let x_1311 : f32 = u_xlat28.x;
  let x_1313 : f32 = x_83.unity_SpecCube0_HDR.y;
  u_xlat28.x = (x_1311 * x_1313);
  let x_1317 : f32 = u_xlat28.x;
  u_xlat28.x = exp2(x_1317);
  let x_1321 : f32 = u_xlat28.x;
  let x_1323 : f32 = x_83.unity_SpecCube0_HDR.x;
  u_xlat28.x = (x_1321 * x_1323);
  let x_1326 : vec4<f32> = u_xlat8;
  let x_1328 : vec2<f32> = u_xlat28;
  let x_1330 : vec3<f32> = (vec3<f32>(x_1326.x, x_1326.y, x_1326.z) * vec3<f32>(x_1328.x, x_1328.x, x_1328.x));
  let x_1331 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1330.x, x_1330.y, x_1330.z, x_1331.w);
  let x_1333 : f32 = u_xlat42;
  let x_1335 : f32 = u_xlat42;
  u_xlat28 = ((vec2<f32>(x_1333, x_1333) * vec2<f32>(x_1335, x_1335)) + vec2<f32>(-1.0f, 1.0f));
  let x_1341 : f32 = u_xlat28.y;
  u_xlat42 = (1.0f / x_1341);
  let x_1343 : f32 = u_xlat46;
  u_xlat46 = (x_1343 + -0.03999999910593032837f);
  let x_1347 : f32 = u_xlat34.x;
  let x_1348 : f32 = u_xlat46;
  u_xlat46 = ((x_1347 * x_1348) + 0.03999999910593032837f);
  let x_1352 : f32 = u_xlat42;
  let x_1353 : f32 = u_xlat46;
  u_xlat42 = (x_1352 * x_1353);
  let x_1355 : f32 = u_xlat42;
  let x_1357 : vec4<f32> = u_xlat8;
  let x_1359 : vec3<f32> = (vec3<f32>(x_1355, x_1355, x_1355) * vec3<f32>(x_1357.x, x_1357.y, x_1357.z));
  let x_1360 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1359.x, x_1359.y, x_1359.z, x_1360.w);
  let x_1362 : vec3<f32> = u_xlat16;
  let x_1363 : vec3<f32> = u_xlat5;
  let x_1365 : vec4<f32> = u_xlat8;
  u_xlat16 = ((x_1362 * x_1363) + vec3<f32>(x_1365.x, x_1365.y, x_1365.z));
  let x_1369 : f32 = u_xlat0.x;
  let x_1371 : f32 = x_83.unity_LightData.z;
  u_xlat0.x = (x_1369 * x_1371);
  let x_1374 : vec4<f32> = u_xlat3;
  let x_1377 : vec4<f32> = x_149.x_MainLightPosition;
  u_xlat42 = dot(vec3<f32>(x_1374.x, x_1374.y, x_1374.z), vec3<f32>(x_1377.x, x_1377.y, x_1377.z));
  let x_1380 : f32 = u_xlat42;
  u_xlat42 = clamp(x_1380, 0.0f, 1.0f);
  let x_1382 : f32 = u_xlat42;
  let x_1384 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1382 * x_1384);
  let x_1387 : vec4<f32> = u_xlat0;
  let x_1389 : vec4<f32> = u_xlat7;
  let x_1391 : vec3<f32> = (vec3<f32>(x_1387.x, x_1387.x, x_1387.x) * vec3<f32>(x_1389.x, x_1389.y, x_1389.z));
  let x_1392 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1391.x, x_1391.y, x_1391.z, x_1392.w);
  let x_1394 : vec3<f32> = u_xlat4;
  let x_1396 : vec4<f32> = x_149.x_MainLightPosition;
  let x_1398 : vec3<f32> = (x_1394 + vec3<f32>(x_1396.x, x_1396.y, x_1396.z));
  let x_1399 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1398.x, x_1398.y, x_1398.z, x_1399.w);
  let x_1401 : vec4<f32> = u_xlat8;
  let x_1403 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(vec3<f32>(x_1401.x, x_1401.y, x_1401.z), vec3<f32>(x_1403.x, x_1403.y, x_1403.z));
  let x_1408 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1408, 1.17549435e-38f);
  let x_1412 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_1412);
  let x_1415 : vec4<f32> = u_xlat0;
  let x_1417 : vec4<f32> = u_xlat8;
  let x_1419 : vec3<f32> = (vec3<f32>(x_1415.x, x_1415.x, x_1415.x) * vec3<f32>(x_1417.x, x_1417.y, x_1417.z));
  let x_1420 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1419.x, x_1419.y, x_1419.z, x_1420.w);
  let x_1422 : vec4<f32> = u_xlat3;
  let x_1424 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(vec3<f32>(x_1422.x, x_1422.y, x_1422.z), vec3<f32>(x_1424.x, x_1424.y, x_1424.z));
  let x_1429 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1429, 0.0f, 1.0f);
  let x_1433 : vec4<f32> = x_149.x_MainLightPosition;
  let x_1435 : vec4<f32> = u_xlat8;
  u_xlat0.w = dot(vec3<f32>(x_1433.x, x_1433.y, x_1433.z), vec3<f32>(x_1435.x, x_1435.y, x_1435.z));
  let x_1440 : f32 = u_xlat0.w;
  u_xlat0.w = clamp(x_1440, 0.0f, 1.0f);
  let x_1443 : vec4<f32> = u_xlat0;
  let x_1445 : vec4<f32> = u_xlat0;
  let x_1447 : vec2<f32> = (vec2<f32>(x_1443.x, x_1443.w) * vec2<f32>(x_1445.x, x_1445.w));
  let x_1448 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1447.x, x_1448.y, x_1448.z, x_1447.y);
  let x_1451 : f32 = u_xlat0.x;
  let x_1453 : f32 = u_xlat28.x;
  u_xlat0.x = ((x_1451 * x_1453) + 1.00001001358032226562f);
  let x_1459 : f32 = u_xlat0.x;
  let x_1461 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1459 * x_1461);
  let x_1465 : f32 = u_xlat0.w;
  u_xlat42 = max(x_1465, 0.10000000149011611938f);
  let x_1468 : f32 = u_xlat42;
  let x_1470 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1468 * x_1470);
  let x_1473 : f32 = u_xlat47;
  let x_1475 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1473 * x_1475);
  let x_1478 : f32 = u_xlat45;
  let x_1480 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1478 / x_1480);
  let x_1483 : vec4<f32> = u_xlat0;
  let x_1487 : vec3<f32> = u_xlat5;
  let x_1488 : vec3<f32> = ((vec3<f32>(x_1483.x, x_1483.x, x_1483.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_1487);
  let x_1489 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1488.x, x_1488.y, x_1488.z, x_1489.w);
  let x_1491 : vec4<f32> = u_xlat7;
  let x_1493 : vec4<f32> = u_xlat8;
  let x_1495 : vec3<f32> = (vec3<f32>(x_1491.x, x_1491.y, x_1491.z) * vec3<f32>(x_1493.x, x_1493.y, x_1493.z));
  let x_1496 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1495.x, x_1495.y, x_1495.z, x_1496.w);
  let x_1499 : f32 = x_149.x_AdditionalLightsCount.x;
  let x_1501 : f32 = x_83.unity_LightData.y;
  u_xlat0.x = min(x_1499, x_1501);
  let x_1505 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1505));
  let x_1509 : f32 = u_xlat20.x;
  let x_1512 : f32 = x_360.x_AdditionalShadowFadeParams.x;
  let x_1515 : f32 = x_360.x_AdditionalShadowFadeParams.y;
  u_xlat42 = ((x_1509 * x_1512) + x_1515);
  let x_1517 : f32 = u_xlat42;
  u_xlat42 = clamp(x_1517, 0.0f, 1.0f);
  let x_1521 : f32 = x_1110.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1523 : f32 = x_1110.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1525 : f32 = x_1110.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1527 : f32 = x_1110.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1528 : vec4<f32> = vec4<f32>(x_1521, x_1523, x_1525, x_1527);
  let x_1535 : vec4<bool> = (vec4<f32>(x_1528.x, x_1528.y, x_1528.z, x_1528.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb20 = vec2<bool>(x_1535.x, x_1535.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1546 : u32 = u_xlatu_loop_1;
    let x_1547 : u32 = u_xlatu0;
    if ((x_1546 < x_1547)) {
    } else {
      break;
    }
    let x_1550 : u32 = u_xlatu_loop_1;
    u_xlatu48 = (x_1550 >> 2u);
    let x_1553 : u32 = u_xlatu_loop_1;
    u_xlati49 = bitcast<i32>((x_1553 & 3u));
    let x_1556 : u32 = u_xlatu48;
    let x_1559 : vec4<f32> = x_83.unity_LightIndices[bitcast<i32>(x_1556)];
    let x_1569 : i32 = u_xlati49;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1574 : vec4<u32> = indexable[x_1569];
    u_xlat48 = dot(x_1559, bitcast<vec4<f32>>(x_1574));
    let x_1578 : f32 = u_xlat48;
    u_xlati48 = i32(x_1578);
    let x_1580 : vec3<f32> = vs_INTERP8;
    let x_1591 : i32 = u_xlati48;
    let x_1593 : vec4<f32> = x_1590.x_AdditionalLightsPosition[x_1591];
    let x_1596 : i32 = u_xlati48;
    let x_1598 : vec4<f32> = x_1590.x_AdditionalLightsPosition[x_1596];
    let x_1600 : vec3<f32> = ((-(x_1580) * vec3<f32>(x_1593.w, x_1593.w, x_1593.w)) + vec3<f32>(x_1598.x, x_1598.y, x_1598.z));
    let x_1601 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1600.x, x_1600.y, x_1600.z, x_1601.w);
    let x_1604 : vec4<f32> = u_xlat9;
    let x_1606 : vec4<f32> = u_xlat9;
    u_xlat49 = dot(vec3<f32>(x_1604.x, x_1604.y, x_1604.z), vec3<f32>(x_1606.x, x_1606.y, x_1606.z));
    let x_1609 : f32 = u_xlat49;
    u_xlat49 = max(x_1609, 0.00006103515625f);
    let x_1613 : f32 = u_xlat49;
    u_xlat50 = inverseSqrt(x_1613);
    let x_1615 : f32 = u_xlat50;
    let x_1617 : vec4<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1615, x_1615, x_1615) * vec3<f32>(x_1617.x, x_1617.y, x_1617.z));
    let x_1621 : f32 = u_xlat49;
    u_xlat51 = (1.0f / x_1621);
    let x_1623 : f32 = u_xlat49;
    let x_1624 : i32 = u_xlati48;
    let x_1626 : f32 = x_1590.x_AdditionalLightsAttenuation[x_1624].x;
    u_xlat49 = (x_1623 * x_1626);
    let x_1628 : f32 = u_xlat49;
    let x_1630 : f32 = u_xlat49;
    u_xlat49 = ((-(x_1628) * x_1630) + 1.0f);
    let x_1633 : f32 = u_xlat49;
    u_xlat49 = max(x_1633, 0.0f);
    let x_1635 : f32 = u_xlat49;
    let x_1636 : f32 = u_xlat49;
    u_xlat49 = (x_1635 * x_1636);
    let x_1638 : f32 = u_xlat49;
    let x_1639 : f32 = u_xlat51;
    u_xlat49 = (x_1638 * x_1639);
    let x_1641 : i32 = u_xlati48;
    let x_1643 : vec4<f32> = x_1590.x_AdditionalLightsSpotDir[x_1641];
    let x_1645 : vec3<f32> = u_xlat10;
    u_xlat51 = dot(vec3<f32>(x_1643.x, x_1643.y, x_1643.z), x_1645);
    let x_1647 : f32 = u_xlat51;
    let x_1648 : i32 = u_xlati48;
    let x_1650 : f32 = x_1590.x_AdditionalLightsAttenuation[x_1648].z;
    let x_1652 : i32 = u_xlati48;
    let x_1654 : f32 = x_1590.x_AdditionalLightsAttenuation[x_1652].w;
    u_xlat51 = ((x_1647 * x_1650) + x_1654);
    let x_1656 : f32 = u_xlat51;
    u_xlat51 = clamp(x_1656, 0.0f, 1.0f);
    let x_1658 : f32 = u_xlat51;
    let x_1659 : f32 = u_xlat51;
    u_xlat51 = (x_1658 * x_1659);
    let x_1661 : f32 = u_xlat49;
    let x_1662 : f32 = u_xlat51;
    u_xlat49 = (x_1661 * x_1662);
    let x_1666 : i32 = u_xlati48;
    let x_1668 : f32 = x_360.x_AdditionalShadowParams[x_1666].w;
    u_xlati51 = i32(x_1668);
    let x_1671 : i32 = u_xlati51;
    u_xlatb52 = (x_1671 >= 0i);
    let x_1673 : bool = u_xlatb52;
    if (x_1673) {
      let x_1677 : i32 = u_xlati48;
      let x_1679 : f32 = x_360.x_AdditionalShadowParams[x_1677].z;
      u_xlatb52 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1679, x_1679, x_1679, x_1679))));
      let x_1683 : bool = u_xlatb52;
      if (x_1683) {
        let x_1687 : vec3<f32> = u_xlat10;
        let x_1690 : vec3<f32> = u_xlat10;
        let x_1693 : vec4<bool> = (abs(vec4<f32>(x_1687.z, x_1687.z, x_1687.y, x_1687.z)) >= abs(vec4<f32>(x_1690.x, x_1690.y, x_1690.x, x_1690.x)));
        let x_1695 : vec3<bool> = vec3<bool>(x_1693.x, x_1693.y, x_1693.z);
        let x_1696 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1695.x, x_1695.y, x_1695.z, x_1696.w);
        let x_1699 : bool = u_xlatb11.y;
        let x_1701 : bool = u_xlatb11.x;
        u_xlatb52 = (x_1699 & x_1701);
        let x_1703 : vec3<f32> = u_xlat10;
        let x_1706 : vec4<bool> = (-(vec4<f32>(x_1703.z, x_1703.y, x_1703.z, x_1703.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1707 : vec3<bool> = vec3<bool>(x_1706.x, x_1706.y, x_1706.w);
        let x_1708 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1707.x, x_1707.y, x_1708.z, x_1707.z);
        let x_1712 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1712);
        let x_1717 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1717);
        let x_1722 : bool = u_xlatb11.w;
        u_xlat53 = select(0.0f, 1.0f, x_1722);
        let x_1726 : bool = u_xlatb11.z;
        if (x_1726) {
          let x_1731 : f32 = u_xlat11.y;
          x_1727 = x_1731;
        } else {
          let x_1733 : f32 = u_xlat53;
          x_1727 = x_1733;
        }
        let x_1734 : f32 = x_1727;
        u_xlat25.x = x_1734;
        let x_1737 : bool = u_xlatb52;
        if (x_1737) {
          let x_1742 : f32 = u_xlat11.x;
          x_1738 = x_1742;
        } else {
          let x_1745 : f32 = u_xlat25.x;
          x_1738 = x_1745;
        }
        let x_1746 : f32 = x_1738;
        u_xlat52 = x_1746;
        let x_1747 : i32 = u_xlati48;
        let x_1749 : f32 = x_360.x_AdditionalShadowParams[x_1747].w;
        u_xlat11.x = trunc(x_1749);
        let x_1752 : f32 = u_xlat52;
        let x_1754 : f32 = u_xlat11.x;
        u_xlat52 = (x_1752 + x_1754);
        let x_1756 : f32 = u_xlat52;
        u_xlati51 = i32(x_1756);
      }
      let x_1758 : i32 = u_xlati51;
      u_xlati51 = (x_1758 << bitcast<u32>(2i));
      let x_1760 : vec3<f32> = vs_INTERP8;
      let x_1763 : i32 = u_xlati51;
      let x_1766 : i32 = u_xlati51;
      let x_1770 : vec4<f32> = x_360.x_AdditionalLightsWorldToShadow[((x_1763 + 1i) / 4i)][((x_1766 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1760.y, x_1760.y, x_1760.y, x_1760.y) * x_1770);
      let x_1772 : i32 = u_xlati51;
      let x_1774 : i32 = u_xlati51;
      let x_1777 : vec4<f32> = x_360.x_AdditionalLightsWorldToShadow[(x_1772 / 4i)][(x_1774 % 4i)];
      let x_1778 : vec3<f32> = vs_INTERP8;
      let x_1781 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1777 * vec4<f32>(x_1778.x, x_1778.x, x_1778.x, x_1778.x)) + x_1781);
      let x_1783 : i32 = u_xlati51;
      let x_1786 : i32 = u_xlati51;
      let x_1790 : vec4<f32> = x_360.x_AdditionalLightsWorldToShadow[((x_1783 + 2i) / 4i)][((x_1786 + 2i) % 4i)];
      let x_1791 : vec3<f32> = vs_INTERP8;
      let x_1794 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1790 * vec4<f32>(x_1791.z, x_1791.z, x_1791.z, x_1791.z)) + x_1794);
      let x_1796 : vec4<f32> = u_xlat11;
      let x_1797 : i32 = u_xlati51;
      let x_1800 : i32 = u_xlati51;
      let x_1804 : vec4<f32> = x_360.x_AdditionalLightsWorldToShadow[((x_1797 + 3i) / 4i)][((x_1800 + 3i) % 4i)];
      u_xlat11 = (x_1796 + x_1804);
      let x_1806 : vec4<f32> = u_xlat11;
      let x_1808 : vec4<f32> = u_xlat11;
      let x_1810 : vec3<f32> = (vec3<f32>(x_1806.x, x_1806.y, x_1806.z) / vec3<f32>(x_1808.w, x_1808.w, x_1808.w));
      let x_1811 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1810.x, x_1810.y, x_1810.z, x_1811.w);
      let x_1814 : vec4<f32> = u_xlat11;
      let x_1815 : vec2<f32> = vec2<f32>(x_1814.x, x_1814.y);
      let x_1817 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1815.x, x_1815.y, x_1817);
      let x_1825 : vec3<f32> = txVec1;
      let x_1827 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1825.xy, x_1825.z);
      u_xlat51 = x_1827;
      let x_1828 : i32 = u_xlati48;
      let x_1830 : f32 = x_360.x_AdditionalShadowParams[x_1828].x;
      u_xlat52 = (1.0f + -(x_1830));
      let x_1833 : f32 = u_xlat51;
      let x_1834 : i32 = u_xlati48;
      let x_1836 : f32 = x_360.x_AdditionalShadowParams[x_1834].x;
      let x_1838 : f32 = u_xlat52;
      u_xlat51 = ((x_1833 * x_1836) + x_1838);
      let x_1841 : f32 = u_xlat11.z;
      u_xlatb52 = (0.0f >= x_1841);
      let x_1844 : f32 = u_xlat11.z;
      u_xlatb11.x = (x_1844 >= 1.0f);
      let x_1847 : bool = u_xlatb52;
      let x_1849 : bool = u_xlatb11.x;
      u_xlatb52 = (x_1847 | x_1849);
      let x_1851 : bool = u_xlatb52;
      let x_1852 : f32 = u_xlat51;
      u_xlat51 = select(x_1852, 1.0f, x_1851);
    } else {
      u_xlat51 = 1.0f;
    }
    let x_1855 : f32 = u_xlat51;
    u_xlat52 = (-(x_1855) + 1.0f);
    let x_1858 : f32 = u_xlat42;
    let x_1859 : f32 = u_xlat52;
    let x_1861 : f32 = u_xlat51;
    u_xlat51 = ((x_1858 * x_1859) + x_1861);
    let x_1864 : i32 = u_xlati48;
    u_xlati52 = (1i << bitcast<u32>((x_1864 & 31i)));
    let x_1868 : i32 = u_xlati52;
    let x_1871 : f32 = x_1110.x_AdditionalLightsCookieEnableBits;
    u_xlati52 = bitcast<i32>((bitcast<u32>(x_1868) & bitcast<u32>(x_1871)));
    let x_1875 : i32 = u_xlati52;
    if ((x_1875 != 0i)) {
      let x_1879 : i32 = u_xlati48;
      let x_1881 : f32 = x_1110.x_AdditionalLightsLightTypes[x_1879].el;
      u_xlati52 = i32(x_1881);
      let x_1884 : i32 = u_xlati52;
      u_xlati11 = select(1i, 0i, (x_1884 != 0i));
      let x_1888 : i32 = u_xlati48;
      u_xlati25 = (x_1888 << bitcast<u32>(2i));
      let x_1890 : i32 = u_xlati11;
      if ((x_1890 != 0i)) {
        let x_1894 : vec3<f32> = vs_INTERP8;
        let x_1896 : i32 = u_xlati25;
        let x_1899 : i32 = u_xlati25;
        let x_1903 : vec4<f32> = x_1110.x_AdditionalLightsWorldToLights[((x_1896 + 1i) / 4i)][((x_1899 + 1i) % 4i)];
        let x_1905 : vec3<f32> = (vec3<f32>(x_1894.y, x_1894.y, x_1894.y) * vec3<f32>(x_1903.x, x_1903.y, x_1903.w));
        let x_1906 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1905.x, x_1906.y, x_1905.y, x_1905.z);
        let x_1908 : i32 = u_xlati25;
        let x_1910 : i32 = u_xlati25;
        let x_1913 : vec4<f32> = x_1110.x_AdditionalLightsWorldToLights[(x_1908 / 4i)][(x_1910 % 4i)];
        let x_1915 : vec3<f32> = vs_INTERP8;
        let x_1918 : vec4<f32> = u_xlat11;
        let x_1920 : vec3<f32> = ((vec3<f32>(x_1913.x, x_1913.y, x_1913.w) * vec3<f32>(x_1915.x, x_1915.x, x_1915.x)) + vec3<f32>(x_1918.x, x_1918.z, x_1918.w));
        let x_1921 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1920.x, x_1921.y, x_1920.y, x_1920.z);
        let x_1923 : i32 = u_xlati25;
        let x_1926 : i32 = u_xlati25;
        let x_1930 : vec4<f32> = x_1110.x_AdditionalLightsWorldToLights[((x_1923 + 2i) / 4i)][((x_1926 + 2i) % 4i)];
        let x_1932 : vec3<f32> = vs_INTERP8;
        let x_1935 : vec4<f32> = u_xlat11;
        let x_1937 : vec3<f32> = ((vec3<f32>(x_1930.x, x_1930.y, x_1930.w) * vec3<f32>(x_1932.z, x_1932.z, x_1932.z)) + vec3<f32>(x_1935.x, x_1935.z, x_1935.w));
        let x_1938 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1937.x, x_1938.y, x_1937.y, x_1937.z);
        let x_1940 : vec4<f32> = u_xlat11;
        let x_1942 : i32 = u_xlati25;
        let x_1945 : i32 = u_xlati25;
        let x_1949 : vec4<f32> = x_1110.x_AdditionalLightsWorldToLights[((x_1942 + 3i) / 4i)][((x_1945 + 3i) % 4i)];
        let x_1951 : vec3<f32> = (vec3<f32>(x_1940.x, x_1940.z, x_1940.w) + vec3<f32>(x_1949.x, x_1949.y, x_1949.w));
        let x_1952 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1951.x, x_1952.y, x_1951.y, x_1951.z);
        let x_1954 : vec4<f32> = u_xlat11;
        let x_1956 : vec4<f32> = u_xlat11;
        let x_1958 : vec2<f32> = (vec2<f32>(x_1954.x, x_1954.z) / vec2<f32>(x_1956.w, x_1956.w));
        let x_1959 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1958.x, x_1959.y, x_1958.y, x_1959.w);
        let x_1961 : vec4<f32> = u_xlat11;
        let x_1964 : vec2<f32> = ((vec2<f32>(x_1961.x, x_1961.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1965 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1964.x, x_1965.y, x_1964.y, x_1965.w);
        let x_1967 : vec4<f32> = u_xlat11;
        let x_1971 : vec2<f32> = clamp(vec2<f32>(x_1967.x, x_1967.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1972 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1971.x, x_1972.y, x_1971.y, x_1972.w);
        let x_1974 : i32 = u_xlati48;
        let x_1976 : vec4<f32> = x_1110.x_AdditionalLightsCookieAtlasUVRects[x_1974];
        let x_1978 : vec4<f32> = u_xlat11;
        let x_1981 : i32 = u_xlati48;
        let x_1983 : vec4<f32> = x_1110.x_AdditionalLightsCookieAtlasUVRects[x_1981];
        let x_1985 : vec2<f32> = ((vec2<f32>(x_1976.x, x_1976.y) * vec2<f32>(x_1978.x, x_1978.z)) + vec2<f32>(x_1983.z, x_1983.w));
        let x_1986 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1985.x, x_1986.y, x_1985.y, x_1986.w);
      } else {
        let x_1989 : i32 = u_xlati52;
        u_xlatb52 = (x_1989 == 1i);
        let x_1991 : bool = u_xlatb52;
        u_xlati52 = select(0i, 1i, x_1991);
        let x_1993 : i32 = u_xlati52;
        if ((x_1993 != 0i)) {
          let x_1998 : vec3<f32> = vs_INTERP8;
          let x_2000 : i32 = u_xlati25;
          let x_2003 : i32 = u_xlati25;
          let x_2007 : vec4<f32> = x_1110.x_AdditionalLightsWorldToLights[((x_2000 + 1i) / 4i)][((x_2003 + 1i) % 4i)];
          let x_2009 : vec2<f32> = (vec2<f32>(x_1998.y, x_1998.y) * vec2<f32>(x_2007.x, x_2007.y));
          let x_2010 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2009.x, x_2009.y, x_2010.z, x_2010.w);
          let x_2012 : i32 = u_xlati25;
          let x_2014 : i32 = u_xlati25;
          let x_2017 : vec4<f32> = x_1110.x_AdditionalLightsWorldToLights[(x_2012 / 4i)][(x_2014 % 4i)];
          let x_2019 : vec3<f32> = vs_INTERP8;
          let x_2022 : vec4<f32> = u_xlat12;
          let x_2024 : vec2<f32> = ((vec2<f32>(x_2017.x, x_2017.y) * vec2<f32>(x_2019.x, x_2019.x)) + vec2<f32>(x_2022.x, x_2022.y));
          let x_2025 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2024.x, x_2024.y, x_2025.z, x_2025.w);
          let x_2027 : i32 = u_xlati25;
          let x_2030 : i32 = u_xlati25;
          let x_2034 : vec4<f32> = x_1110.x_AdditionalLightsWorldToLights[((x_2027 + 2i) / 4i)][((x_2030 + 2i) % 4i)];
          let x_2036 : vec3<f32> = vs_INTERP8;
          let x_2039 : vec4<f32> = u_xlat12;
          let x_2041 : vec2<f32> = ((vec2<f32>(x_2034.x, x_2034.y) * vec2<f32>(x_2036.z, x_2036.z)) + vec2<f32>(x_2039.x, x_2039.y));
          let x_2042 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2041.x, x_2041.y, x_2042.z, x_2042.w);
          let x_2044 : vec4<f32> = u_xlat12;
          let x_2046 : i32 = u_xlati25;
          let x_2049 : i32 = u_xlati25;
          let x_2053 : vec4<f32> = x_1110.x_AdditionalLightsWorldToLights[((x_2046 + 3i) / 4i)][((x_2049 + 3i) % 4i)];
          let x_2055 : vec2<f32> = (vec2<f32>(x_2044.x, x_2044.y) + vec2<f32>(x_2053.x, x_2053.y));
          let x_2056 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2055.x, x_2055.y, x_2056.z, x_2056.w);
          let x_2058 : vec4<f32> = u_xlat12;
          let x_2061 : vec2<f32> = ((vec2<f32>(x_2058.x, x_2058.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2062 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2061.x, x_2061.y, x_2062.z, x_2062.w);
          let x_2064 : vec4<f32> = u_xlat12;
          let x_2066 : vec2<f32> = fract(vec2<f32>(x_2064.x, x_2064.y));
          let x_2067 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2066.x, x_2066.y, x_2067.z, x_2067.w);
          let x_2069 : i32 = u_xlati48;
          let x_2071 : vec4<f32> = x_1110.x_AdditionalLightsCookieAtlasUVRects[x_2069];
          let x_2073 : vec4<f32> = u_xlat12;
          let x_2076 : i32 = u_xlati48;
          let x_2078 : vec4<f32> = x_1110.x_AdditionalLightsCookieAtlasUVRects[x_2076];
          let x_2080 : vec2<f32> = ((vec2<f32>(x_2071.x, x_2071.y) * vec2<f32>(x_2073.x, x_2073.y)) + vec2<f32>(x_2078.z, x_2078.w));
          let x_2081 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2080.x, x_2081.y, x_2080.y, x_2081.w);
        } else {
          let x_2084 : vec3<f32> = vs_INTERP8;
          let x_2086 : i32 = u_xlati25;
          let x_2089 : i32 = u_xlati25;
          let x_2093 : vec4<f32> = x_1110.x_AdditionalLightsWorldToLights[((x_2086 + 1i) / 4i)][((x_2089 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2084.y, x_2084.y, x_2084.y, x_2084.y) * x_2093);
          let x_2095 : i32 = u_xlati25;
          let x_2097 : i32 = u_xlati25;
          let x_2100 : vec4<f32> = x_1110.x_AdditionalLightsWorldToLights[(x_2095 / 4i)][(x_2097 % 4i)];
          let x_2101 : vec3<f32> = vs_INTERP8;
          let x_2104 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2100 * vec4<f32>(x_2101.x, x_2101.x, x_2101.x, x_2101.x)) + x_2104);
          let x_2106 : i32 = u_xlati25;
          let x_2109 : i32 = u_xlati25;
          let x_2113 : vec4<f32> = x_1110.x_AdditionalLightsWorldToLights[((x_2106 + 2i) / 4i)][((x_2109 + 2i) % 4i)];
          let x_2114 : vec3<f32> = vs_INTERP8;
          let x_2117 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2113 * vec4<f32>(x_2114.z, x_2114.z, x_2114.z, x_2114.z)) + x_2117);
          let x_2119 : vec4<f32> = u_xlat12;
          let x_2120 : i32 = u_xlati25;
          let x_2123 : i32 = u_xlati25;
          let x_2127 : vec4<f32> = x_1110.x_AdditionalLightsWorldToLights[((x_2120 + 3i) / 4i)][((x_2123 + 3i) % 4i)];
          u_xlat12 = (x_2119 + x_2127);
          let x_2129 : vec4<f32> = u_xlat12;
          let x_2131 : vec4<f32> = u_xlat12;
          let x_2133 : vec3<f32> = (vec3<f32>(x_2129.x, x_2129.y, x_2129.z) / vec3<f32>(x_2131.w, x_2131.w, x_2131.w));
          let x_2134 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2133.x, x_2133.y, x_2133.z, x_2134.w);
          let x_2136 : vec4<f32> = u_xlat12;
          let x_2138 : vec4<f32> = u_xlat12;
          u_xlat52 = dot(vec3<f32>(x_2136.x, x_2136.y, x_2136.z), vec3<f32>(x_2138.x, x_2138.y, x_2138.z));
          let x_2141 : f32 = u_xlat52;
          u_xlat52 = inverseSqrt(x_2141);
          let x_2143 : f32 = u_xlat52;
          let x_2145 : vec4<f32> = u_xlat12;
          let x_2147 : vec3<f32> = (vec3<f32>(x_2143, x_2143, x_2143) * vec3<f32>(x_2145.x, x_2145.y, x_2145.z));
          let x_2148 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2147.x, x_2147.y, x_2147.z, x_2148.w);
          let x_2150 : vec4<f32> = u_xlat12;
          u_xlat52 = dot(abs(vec3<f32>(x_2150.x, x_2150.y, x_2150.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2155 : f32 = u_xlat52;
          u_xlat52 = max(x_2155, 0.00000099999999747524f);
          let x_2158 : f32 = u_xlat52;
          u_xlat52 = (1.0f / x_2158);
          let x_2161 : f32 = u_xlat52;
          let x_2163 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_2161, x_2161, x_2161) * vec3<f32>(x_2163.z, x_2163.x, x_2163.y));
          let x_2167 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2167);
          let x_2171 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2171, 0.0f, 1.0f);
          let x_2176 : vec3<f32> = u_xlat13;
          let x_2178 : vec4<bool> = (vec4<f32>(x_2176.y, x_2176.y, x_2176.z, x_2176.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_2179 : vec2<bool> = vec2<bool>(x_2178.x, x_2178.z);
          let x_2180 : vec3<bool> = u_xlatb25;
          u_xlatb25 = vec3<bool>(x_2179.x, x_2180.y, x_2179.y);
          let x_2183 : bool = u_xlatb25.x;
          if (x_2183) {
            let x_2188 : f32 = u_xlat13.x;
            x_2184 = x_2188;
          } else {
            let x_2191 : f32 = u_xlat13.x;
            x_2184 = -(x_2191);
          }
          let x_2193 : f32 = x_2184;
          u_xlat25.x = x_2193;
          let x_2196 : bool = u_xlatb25.z;
          if (x_2196) {
            let x_2201 : f32 = u_xlat13.x;
            x_2197 = x_2201;
          } else {
            let x_2204 : f32 = u_xlat13.x;
            x_2197 = -(x_2204);
          }
          let x_2206 : f32 = x_2197;
          u_xlat25.z = x_2206;
          let x_2208 : vec4<f32> = u_xlat12;
          let x_2210 : f32 = u_xlat52;
          let x_2213 : vec3<f32> = u_xlat25;
          let x_2215 : vec2<f32> = ((vec2<f32>(x_2208.x, x_2208.y) * vec2<f32>(x_2210, x_2210)) + vec2<f32>(x_2213.x, x_2213.z));
          let x_2216 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_2215.x, x_2216.y, x_2215.y);
          let x_2218 : vec3<f32> = u_xlat25;
          let x_2221 : vec2<f32> = ((vec2<f32>(x_2218.x, x_2218.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2222 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_2221.x, x_2222.y, x_2221.y);
          let x_2224 : vec3<f32> = u_xlat25;
          let x_2228 : vec2<f32> = clamp(vec2<f32>(x_2224.x, x_2224.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2229 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_2228.x, x_2229.y, x_2228.y);
          let x_2231 : i32 = u_xlati48;
          let x_2233 : vec4<f32> = x_1110.x_AdditionalLightsCookieAtlasUVRects[x_2231];
          let x_2235 : vec3<f32> = u_xlat25;
          let x_2238 : i32 = u_xlati48;
          let x_2240 : vec4<f32> = x_1110.x_AdditionalLightsCookieAtlasUVRects[x_2238];
          let x_2242 : vec2<f32> = ((vec2<f32>(x_2233.x, x_2233.y) * vec2<f32>(x_2235.x, x_2235.z)) + vec2<f32>(x_2240.z, x_2240.w));
          let x_2243 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2242.x, x_2243.y, x_2242.y, x_2243.w);
        }
      }
      let x_2250 : vec4<f32> = u_xlat11;
      let x_2252 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_2250.x, x_2250.z), 0.0f);
      u_xlat11 = x_2252;
      let x_2254 : bool = u_xlatb20.y;
      if (x_2254) {
        let x_2259 : f32 = u_xlat11.w;
        x_2255 = x_2259;
      } else {
        let x_2262 : f32 = u_xlat11.x;
        x_2255 = x_2262;
      }
      let x_2263 : f32 = x_2255;
      u_xlat52 = x_2263;
      let x_2265 : bool = u_xlatb20.x;
      if (x_2265) {
        let x_2269 : vec4<f32> = u_xlat11;
        x_2266 = vec3<f32>(x_2269.x, x_2269.y, x_2269.z);
      } else {
        let x_2272 : f32 = u_xlat52;
        x_2266 = vec3<f32>(x_2272, x_2272, x_2272);
      }
      let x_2274 : vec3<f32> = x_2266;
      let x_2275 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2274.x, x_2274.y, x_2274.z, x_2275.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2281 : vec4<f32> = u_xlat11;
    let x_2283 : i32 = u_xlati48;
    let x_2285 : vec4<f32> = x_1590.x_AdditionalLightsColor[x_2283];
    let x_2287 : vec3<f32> = (vec3<f32>(x_2281.x, x_2281.y, x_2281.z) * vec3<f32>(x_2285.x, x_2285.y, x_2285.z));
    let x_2288 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2287.x, x_2287.y, x_2287.z, x_2288.w);
    let x_2290 : f32 = u_xlat49;
    let x_2291 : f32 = u_xlat51;
    u_xlat48 = (x_2290 * x_2291);
    let x_2293 : vec4<f32> = u_xlat3;
    let x_2295 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_2293.x, x_2293.y, x_2293.z), x_2295);
    let x_2297 : f32 = u_xlat49;
    u_xlat49 = clamp(x_2297, 0.0f, 1.0f);
    let x_2299 : f32 = u_xlat48;
    let x_2300 : f32 = u_xlat49;
    u_xlat48 = (x_2299 * x_2300);
    let x_2302 : f32 = u_xlat48;
    let x_2304 : vec4<f32> = u_xlat11;
    let x_2306 : vec3<f32> = (vec3<f32>(x_2302, x_2302, x_2302) * vec3<f32>(x_2304.x, x_2304.y, x_2304.z));
    let x_2307 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2306.x, x_2306.y, x_2306.z, x_2307.w);
    let x_2309 : vec4<f32> = u_xlat9;
    let x_2311 : f32 = u_xlat50;
    let x_2314 : vec3<f32> = u_xlat4;
    let x_2315 : vec3<f32> = ((vec3<f32>(x_2309.x, x_2309.y, x_2309.z) * vec3<f32>(x_2311, x_2311, x_2311)) + x_2314);
    let x_2316 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2315.x, x_2315.y, x_2315.z, x_2316.w);
    let x_2318 : vec4<f32> = u_xlat9;
    let x_2320 : vec4<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_2318.x, x_2318.y, x_2318.z), vec3<f32>(x_2320.x, x_2320.y, x_2320.z));
    let x_2323 : f32 = u_xlat48;
    u_xlat48 = max(x_2323, 1.17549435e-38f);
    let x_2325 : f32 = u_xlat48;
    u_xlat48 = inverseSqrt(x_2325);
    let x_2327 : f32 = u_xlat48;
    let x_2329 : vec4<f32> = u_xlat9;
    let x_2331 : vec3<f32> = (vec3<f32>(x_2327, x_2327, x_2327) * vec3<f32>(x_2329.x, x_2329.y, x_2329.z));
    let x_2332 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2331.x, x_2331.y, x_2331.z, x_2332.w);
    let x_2334 : vec4<f32> = u_xlat3;
    let x_2336 : vec4<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_2334.x, x_2334.y, x_2334.z), vec3<f32>(x_2336.x, x_2336.y, x_2336.z));
    let x_2339 : f32 = u_xlat48;
    u_xlat48 = clamp(x_2339, 0.0f, 1.0f);
    let x_2341 : vec3<f32> = u_xlat10;
    let x_2342 : vec4<f32> = u_xlat9;
    u_xlat49 = dot(x_2341, vec3<f32>(x_2342.x, x_2342.y, x_2342.z));
    let x_2345 : f32 = u_xlat49;
    u_xlat49 = clamp(x_2345, 0.0f, 1.0f);
    let x_2347 : f32 = u_xlat48;
    let x_2348 : f32 = u_xlat48;
    u_xlat48 = (x_2347 * x_2348);
    let x_2350 : f32 = u_xlat48;
    let x_2352 : f32 = u_xlat28.x;
    u_xlat48 = ((x_2350 * x_2352) + 1.00001001358032226562f);
    let x_2355 : f32 = u_xlat49;
    let x_2356 : f32 = u_xlat49;
    u_xlat49 = (x_2355 * x_2356);
    let x_2358 : f32 = u_xlat48;
    let x_2359 : f32 = u_xlat48;
    u_xlat48 = (x_2358 * x_2359);
    let x_2361 : f32 = u_xlat49;
    u_xlat49 = max(x_2361, 0.10000000149011611938f);
    let x_2363 : f32 = u_xlat48;
    let x_2364 : f32 = u_xlat49;
    u_xlat48 = (x_2363 * x_2364);
    let x_2366 : f32 = u_xlat47;
    let x_2367 : f32 = u_xlat48;
    u_xlat48 = (x_2366 * x_2367);
    let x_2369 : f32 = u_xlat45;
    let x_2370 : f32 = u_xlat48;
    u_xlat48 = (x_2369 / x_2370);
    let x_2372 : f32 = u_xlat48;
    let x_2375 : vec3<f32> = u_xlat5;
    let x_2376 : vec3<f32> = ((vec3<f32>(x_2372, x_2372, x_2372) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_2375);
    let x_2377 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2376.x, x_2376.y, x_2376.z, x_2377.w);
    let x_2379 : vec4<f32> = u_xlat9;
    let x_2381 : vec4<f32> = u_xlat11;
    let x_2384 : vec4<f32> = u_xlat8;
    let x_2386 : vec3<f32> = ((vec3<f32>(x_2379.x, x_2379.y, x_2379.z) * vec3<f32>(x_2381.x, x_2381.y, x_2381.z)) + vec3<f32>(x_2384.x, x_2384.y, x_2384.z));
    let x_2387 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2386.x, x_2386.y, x_2386.z, x_2387.w);

    continuing {
      let x_2389 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2389 + bitcast<u32>(1i));
    }
  }
  let x_2391 : vec3<f32> = u_xlat16;
  let x_2392 : vec4<f32> = u_xlat6;
  let x_2395 : vec4<f32> = u_xlat7;
  let x_2397 : vec3<f32> = ((x_2391 * vec3<f32>(x_2392.x, x_2392.x, x_2392.x)) + vec3<f32>(x_2395.x, x_2395.y, x_2395.z));
  let x_2398 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2397.x, x_2398.y, x_2397.y, x_2397.z);
  let x_2400 : vec4<f32> = u_xlat8;
  let x_2402 : vec4<f32> = u_xlat0;
  let x_2404 : vec3<f32> = (vec3<f32>(x_2400.x, x_2400.y, x_2400.z) + vec3<f32>(x_2402.x, x_2402.z, x_2402.w));
  let x_2405 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2404.x, x_2405.y, x_2404.y, x_2404.z);
  let x_2407 : vec4<f32> = vs_INTERP6;
  let x_2409 : vec3<f32> = u_xlat1;
  let x_2411 : vec4<f32> = u_xlat0;
  let x_2413 : vec3<f32> = ((vec3<f32>(x_2407.w, x_2407.w, x_2407.w) * x_2409) + vec3<f32>(x_2411.x, x_2411.z, x_2411.w));
  let x_2414 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2413.x, x_2414.y, x_2413.y, x_2413.z);
  let x_2417 : f32 = u_xlat14.x;
  let x_2419 : f32 = u_xlat14.x;
  u_xlat14.x = (x_2417 * -(x_2419));
  let x_2424 : f32 = u_xlat14.x;
  u_xlat14.x = exp2(x_2424);
  let x_2427 : vec4<f32> = u_xlat0;
  let x_2431 : vec4<f32> = x_149.unity_FogColor;
  let x_2434 : vec3<f32> = (vec3<f32>(x_2427.x, x_2427.z, x_2427.w) + -(vec3<f32>(x_2431.x, x_2431.y, x_2431.z)));
  let x_2435 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2434.x, x_2435.y, x_2434.y, x_2434.z);
  let x_2439 : vec3<f32> = u_xlat14;
  let x_2441 : vec4<f32> = u_xlat0;
  let x_2445 : vec4<f32> = x_149.unity_FogColor;
  let x_2447 : vec3<f32> = ((vec3<f32>(x_2439.x, x_2439.x, x_2439.x) * vec3<f32>(x_2441.x, x_2441.z, x_2441.w)) + vec3<f32>(x_2445.x, x_2445.y, x_2445.z));
  let x_2448 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2447.x, x_2447.y, x_2447.z, x_2448.w);
  let x_2451 : bool = u_xlatb2.x;
  let x_2452 : f32 = u_xlat43;
  SV_Target0.w = select(1.0f, x_2452, x_2451);
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


