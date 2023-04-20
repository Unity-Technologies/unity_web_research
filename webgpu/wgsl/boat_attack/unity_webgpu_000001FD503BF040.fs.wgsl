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

var<private> u_xlat0 : f32;

var<private> vs_INTERP9 : vec3<f32>;

var<private> u_xlatb14 : vec2<bool>;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_77 : UnityPerDraw;

var<private> u_xlat14 : vec3<f32>;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlatb0 : bool;

@group(1) @binding(0) var<uniform> x_142 : PGlobals;

var<private> u_xlat4 : vec3<f32>;

var<private> vs_INTERP8 : vec3<f32>;

var<private> u_xlat43 : f32;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(5) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(11) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP5 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

@group(1) @binding(5) var<uniform> x_243 : UnityPerMaterial;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(6) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(12) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat22 : vec3<f32>;

var<private> vs_INTERP6 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_336 : LightShadows;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb2 : bool;

var<private> u_xlatb16 : bool;

var<private> u_xlat16 : vec3<f32>;

var<private> u_xlatu16 : vec3<u32>;

var<private> u_xlatu44 : u32;

var<private> u_xlatu3 : u32;

var<private> u_xlati44 : i32;

var<private> u_xlati30 : i32;

var<private> u_xlatu30 : u32;

var<private> u_xlati16 : i32;

var<private> u_xlat30 : f32;

var<private> u_xlat28 : vec2<f32>;

var<private> u_xlat42 : f32;

var<private> u_xlat45 : f32;

var<private> u_xlat46 : f32;

var<private> u_xlat47 : f32;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlat20 : vec3<f32>;

var<private> u_xlatb20 : vec2<bool>;

var<private> u_xlatb34 : vec2<bool>;

var<private> u_xlat34 : vec2<f32>;

var<private> u_xlat48 : f32;

@group(1) @binding(4) var<uniform> x_955 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu42 : u32;

var<private> u_xlatu48 : u32;

var<private> u_xlati49 : i32;

var<private> u_xlati48 : i32;

@group(1) @binding(1) var<uniform> x_1407 : AdditionalLights;

var<private> u_xlat49 : f32;

var<private> u_xlat50 : f32;

var<private> u_xlat10 : vec3<f32>;

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
  var x_182 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var x_439 : f32;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var x_575 : f32;
  var x_600 : f32;
  var x_645 : f32;
  var txVec1 : vec3<f32>;
  var x_1024 : f32;
  var x_1035 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1547 : f32;
  var x_1558 : f32;
  var txVec2 : vec3<f32>;
  var x_2004 : f32;
  var x_2017 : f32;
  var x_2075 : f32;
  var x_2086 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_48 : vec3<f32> = vs_INTERP9;
  let x_49 : vec3<f32> = vs_INTERP9;
  u_xlat0 = dot(x_48, x_49);
  let x_51 : f32 = u_xlat0;
  u_xlat0 = sqrt(x_51);
  let x_54 : f32 = u_xlat0;
  u_xlat0 = (1.0f / x_54);
  let x_67 : f32 = vs_INTERP4.w;
  u_xlatb14.x = (0.0f < x_67);
  let x_81 : f32 = x_77.unity_WorldTransformParams.w;
  u_xlatb14.y = (x_81 >= 0.0f);
  let x_88 : bool = u_xlatb14.x;
  u_xlat14.x = select(-1.0f, 1.0f, x_88);
  let x_93 : bool = u_xlatb14.y;
  u_xlat14.y = select(-1.0f, 1.0f, x_93);
  let x_97 : f32 = u_xlat14.y;
  let x_99 : f32 = u_xlat14.x;
  u_xlat14.x = (x_97 * x_99);
  let x_103 : vec4<f32> = vs_INTERP4;
  let x_105 : vec3<f32> = vs_INTERP9;
  u_xlat1 = (vec3<f32>(x_103.y, x_103.z, x_103.x) * vec3<f32>(x_105.z, x_105.x, x_105.y));
  let x_108 : vec3<f32> = vs_INTERP9;
  let x_110 : vec4<f32> = vs_INTERP4;
  let x_113 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_108.y, x_108.z, x_108.x) * vec3<f32>(x_110.z, x_110.x, x_110.y)) + -(x_113));
  let x_116 : vec3<f32> = u_xlat14;
  let x_118 : vec3<f32> = u_xlat1;
  u_xlat14 = (vec3<f32>(x_116.x, x_116.x, x_116.x) * x_118);
  let x_120 : f32 = u_xlat0;
  let x_122 : vec3<f32> = vs_INTERP9;
  u_xlat1 = (vec3<f32>(x_120, x_120, x_120) * x_122);
  let x_125 : f32 = u_xlat0;
  let x_127 : vec4<f32> = vs_INTERP4;
  u_xlat2 = (vec3<f32>(x_125, x_125, x_125) * vec3<f32>(x_127.x, x_127.y, x_127.z));
  let x_132 : vec3<f32> = u_xlat14;
  let x_133 : f32 = u_xlat0;
  let x_135 : vec3<f32> = (x_132 * vec3<f32>(x_133, x_133, x_133));
  let x_136 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_135.x, x_135.y, x_135.z, x_136.w);
  let x_145 : f32 = x_142.unity_OrthoParams.w;
  u_xlatb0 = (x_145 == 0.0f);
  let x_149 : vec3<f32> = vs_INTERP8;
  let x_154 : vec3<f32> = x_142.x_WorldSpaceCameraPos;
  u_xlat4 = (-(x_149) + x_154);
  let x_157 : vec3<f32> = u_xlat4;
  let x_158 : vec3<f32> = u_xlat4;
  u_xlat43 = dot(x_157, x_158);
  let x_160 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_160);
  let x_162 : f32 = u_xlat43;
  let x_164 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_162, x_162, x_162) * x_164);
  let x_170 : f32 = x_142.unity_MatrixV[0i].z;
  u_xlat5.x = x_170;
  let x_174 : f32 = x_142.unity_MatrixV[1i].z;
  u_xlat5.y = x_174;
  let x_178 : f32 = x_142.unity_MatrixV[2i].z;
  u_xlat5.z = x_178;
  let x_180 : bool = u_xlatb0;
  if (x_180) {
    let x_185 : vec3<f32> = u_xlat4;
    x_182 = x_185;
  } else {
    let x_187 : vec3<f32> = u_xlat5;
    x_182 = x_187;
  }
  let x_188 : vec3<f32> = x_182;
  u_xlat4 = x_188;
  let x_189 : vec3<f32> = u_xlat4;
  let x_193 : vec4<f32> = x_77.unity_WorldToObject[1i];
  u_xlat5 = (vec3<f32>(x_189.y, x_189.y, x_189.y) * vec3<f32>(x_193.x, x_193.y, x_193.z));
  let x_197 : vec4<f32> = x_77.unity_WorldToObject[0i];
  let x_199 : vec3<f32> = u_xlat4;
  let x_202 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_197.x, x_197.y, x_197.z) * vec3<f32>(x_199.x, x_199.x, x_199.x)) + x_202);
  let x_205 : vec4<f32> = x_77.unity_WorldToObject[2i];
  let x_207 : vec3<f32> = u_xlat4;
  let x_210 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_205.x, x_205.y, x_205.z) * vec3<f32>(x_207.z, x_207.z, x_207.z)) + x_210);
  let x_212 : vec3<f32> = u_xlat5;
  let x_213 : vec3<f32> = u_xlat5;
  u_xlat0 = dot(x_212, x_213);
  let x_215 : f32 = u_xlat0;
  u_xlat0 = inverseSqrt(x_215);
  let x_217 : f32 = u_xlat0;
  let x_219 : vec3<f32> = u_xlat5;
  u_xlat5 = (vec3<f32>(x_217, x_217, x_217) * x_219);
  let x_233 : vec4<f32> = vs_INTERP5;
  let x_236 : f32 = x_142.x_GlobalMipBias.x;
  let x_237 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_233.x, x_233.y), x_236);
  u_xlat6 = x_237;
  let x_239 : vec4<f32> = u_xlat6;
  let x_245 : vec4<f32> = x_243.Color_C30C7CA3;
  let x_247 : vec3<f32> = (vec3<f32>(x_239.x, x_239.y, x_239.z) * vec3<f32>(x_245.x, x_245.y, x_245.z));
  let x_248 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_247.x, x_247.y, x_247.z, x_248.w);
  let x_256 : vec4<f32> = vs_INTERP5;
  let x_259 : f32 = x_142.x_GlobalMipBias.x;
  let x_260 : vec4<f32> = textureSampleBias(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1, vec2<f32>(x_256.x, x_256.y), x_259);
  u_xlat8 = vec4<f32>(x_260.w, x_260.x, x_260.y, x_260.z);
  let x_263 : vec4<f32> = u_xlat8;
  u_xlat9 = ((vec4<f32>(x_263.y, x_263.z, x_263.w, x_263.x) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_270 : vec4<f32> = u_xlat9;
  let x_271 : vec4<f32> = u_xlat9;
  u_xlat0 = dot(x_270, x_271);
  let x_273 : f32 = u_xlat0;
  u_xlat0 = inverseSqrt(x_273);
  let x_276 : f32 = u_xlat0;
  let x_278 : vec4<f32> = u_xlat9;
  u_xlat22 = (vec3<f32>(x_276, x_276, x_276) * vec3<f32>(x_278.x, x_278.y, x_278.z));
  let x_283 : f32 = vs_INTERP6.y;
  u_xlat0 = (x_283 * 200.0f);
  let x_286 : f32 = u_xlat0;
  u_xlat0 = min(x_286, 1.0f);
  let x_288 : f32 = u_xlat0;
  let x_290 : vec4<f32> = u_xlat6;
  let x_292 : vec3<f32> = (vec3<f32>(x_288, x_288, x_288) * vec3<f32>(x_290.x, x_290.y, x_290.z));
  let x_293 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_292.x, x_292.y, x_292.z, x_293.w);
  let x_295 : vec4<f32> = u_xlat3;
  let x_297 : vec3<f32> = u_xlat22;
  let x_299 : vec3<f32> = (vec3<f32>(x_295.x, x_295.y, x_295.z) * vec3<f32>(x_297.y, x_297.y, x_297.y));
  let x_300 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_299.x, x_299.y, x_299.z, x_300.w);
  let x_302 : vec3<f32> = u_xlat22;
  let x_304 : vec3<f32> = u_xlat2;
  let x_306 : vec4<f32> = u_xlat3;
  u_xlat2 = ((vec3<f32>(x_302.x, x_302.x, x_302.x) * x_304) + vec3<f32>(x_306.x, x_306.y, x_306.z));
  let x_309 : vec3<f32> = u_xlat22;
  let x_311 : vec3<f32> = u_xlat1;
  let x_313 : vec3<f32> = u_xlat2;
  u_xlat1 = ((vec3<f32>(x_309.z, x_309.z, x_309.z) * x_311) + x_313);
  let x_315 : vec3<f32> = u_xlat1;
  let x_316 : vec3<f32> = u_xlat1;
  u_xlat0 = dot(x_315, x_316);
  let x_318 : f32 = u_xlat0;
  u_xlat0 = max(x_318, 1.17549435e-38f);
  let x_321 : f32 = u_xlat0;
  u_xlat0 = inverseSqrt(x_321);
  let x_323 : f32 = u_xlat0;
  let x_325 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_323, x_323, x_323) * x_325);
  let x_327 : vec3<f32> = vs_INTERP8;
  let x_338 : vec4<f32> = x_336.x_MainLightWorldToShadow[0i][1i];
  u_xlat2 = (vec3<f32>(x_327.y, x_327.y, x_327.y) * vec3<f32>(x_338.x, x_338.y, x_338.z));
  let x_342 : vec4<f32> = x_336.x_MainLightWorldToShadow[0i][0i];
  let x_344 : vec3<f32> = vs_INTERP8;
  let x_347 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_342.x, x_342.y, x_342.z) * vec3<f32>(x_344.x, x_344.x, x_344.x)) + x_347);
  let x_350 : vec4<f32> = x_336.x_MainLightWorldToShadow[0i][2i];
  let x_352 : vec3<f32> = vs_INTERP8;
  let x_355 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_350.x, x_350.y, x_350.z) * vec3<f32>(x_352.z, x_352.z, x_352.z)) + x_355);
  let x_357 : vec3<f32> = u_xlat2;
  let x_359 : vec4<f32> = x_336.x_MainLightWorldToShadow[0i][3i];
  u_xlat2 = (x_357 + vec3<f32>(x_359.x, x_359.y, x_359.z));
  let x_363 : vec3<f32> = u_xlat2;
  let x_364 : vec2<f32> = vec2<f32>(x_363.x, x_363.y);
  let x_366 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_364.x, x_364.y, x_366);
  let x_378 : vec3<f32> = txVec0;
  let x_380 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_378.xy, x_378.z);
  u_xlat0 = x_380;
  let x_382 : f32 = x_336.x_MainLightShadowParams.x;
  u_xlat43 = (-(x_382) + 1.0f);
  let x_385 : f32 = u_xlat0;
  let x_387 : f32 = x_336.x_MainLightShadowParams.x;
  let x_389 : f32 = u_xlat43;
  u_xlat0 = ((x_385 * x_387) + x_389);
  let x_393 : f32 = u_xlat2.z;
  u_xlatb2 = (0.0f >= x_393);
  let x_397 : f32 = u_xlat2.z;
  u_xlatb16 = (x_397 >= 1.0f);
  let x_399 : bool = u_xlatb16;
  let x_400 : bool = u_xlatb2;
  u_xlatb2 = (x_399 | x_400);
  let x_402 : bool = u_xlatb2;
  let x_403 : f32 = u_xlat0;
  u_xlat0 = select(x_403, 1.0f, x_402);
  let x_405 : vec3<f32> = u_xlat1;
  let x_407 : vec4<f32> = x_142.x_MainLightPosition;
  u_xlat1.x = dot(x_405, -(vec3<f32>(x_407.x, x_407.y, x_407.z)));
  let x_413 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_413, 0.0f, 1.0f);
  let x_416 : f32 = u_xlat0;
  let x_419 : vec4<f32> = x_142.x_MainLightColor;
  u_xlat2 = (vec3<f32>(x_416, x_416, x_416) * vec3<f32>(x_419.x, x_419.y, x_419.z));
  let x_422 : vec3<f32> = u_xlat1;
  let x_424 : vec3<f32> = u_xlat2;
  u_xlat1 = (vec3<f32>(x_422.x, x_422.x, x_422.x) * x_424);
  let x_426 : vec3<f32> = u_xlat1;
  let x_427 : vec4<f32> = u_xlat6;
  u_xlat1 = (x_426 * vec3<f32>(x_427.x, x_427.y, x_427.z));
  let x_431 : f32 = x_77.unity_LODFade.x;
  u_xlatb0 = (x_431 < 0.0f);
  let x_434 : f32 = x_77.unity_LODFade.x;
  u_xlat2.x = (x_434 + 1.0f);
  let x_437 : bool = u_xlatb0;
  if (x_437) {
    let x_443 : f32 = u_xlat2.x;
    x_439 = x_443;
  } else {
    let x_446 : f32 = x_77.unity_LODFade.x;
    x_439 = x_446;
  }
  let x_447 : f32 = x_439;
  u_xlat0 = x_447;
  let x_449 : f32 = u_xlat0;
  u_xlatb2 = (0.5f >= x_449);
  let x_452 : vec3<f32> = u_xlat5;
  let x_456 : vec4<f32> = x_142.x_ScreenParams;
  u_xlat16 = (abs(x_452) * vec3<f32>(x_456.x, x_456.y, x_456.x));
  let x_462 : vec3<f32> = u_xlat16;
  u_xlatu16 = vec3<u32>(x_462);
  let x_467 : u32 = u_xlatu16.z;
  u_xlatu44 = (x_467 * 1025u);
  let x_471 : u32 = u_xlatu44;
  u_xlatu3 = (x_471 >> 6u);
  let x_476 : u32 = u_xlatu44;
  let x_477 : u32 = u_xlatu3;
  u_xlati44 = bitcast<i32>((x_476 ^ x_477));
  let x_480 : i32 = u_xlati44;
  u_xlatu44 = (bitcast<u32>(x_480) * 9u);
  let x_484 : u32 = u_xlatu44;
  u_xlatu3 = (x_484 >> 11u);
  let x_487 : u32 = u_xlatu44;
  let x_488 : u32 = u_xlatu3;
  u_xlati44 = bitcast<i32>((x_487 ^ x_488));
  let x_491 : i32 = u_xlati44;
  u_xlati44 = (x_491 * 32769i);
  let x_495 : i32 = u_xlati44;
  let x_498 : u32 = u_xlatu16.y;
  u_xlati30 = bitcast<i32>((bitcast<u32>(x_495) ^ x_498));
  let x_502 : i32 = u_xlati30;
  u_xlatu30 = (bitcast<u32>(x_502) * 1025u);
  let x_505 : u32 = u_xlatu30;
  u_xlatu44 = (x_505 >> 6u);
  let x_507 : u32 = u_xlatu44;
  let x_508 : u32 = u_xlatu30;
  u_xlati30 = bitcast<i32>((x_507 ^ x_508));
  let x_511 : i32 = u_xlati30;
  u_xlatu30 = (bitcast<u32>(x_511) * 9u);
  let x_514 : u32 = u_xlatu30;
  u_xlatu44 = (x_514 >> 11u);
  let x_516 : u32 = u_xlatu44;
  let x_517 : u32 = u_xlatu30;
  u_xlati30 = bitcast<i32>((x_516 ^ x_517));
  let x_520 : i32 = u_xlati30;
  u_xlati30 = (x_520 * 32769i);
  let x_523 : i32 = u_xlati30;
  let x_526 : u32 = u_xlatu16.x;
  u_xlati16 = bitcast<i32>((bitcast<u32>(x_523) ^ x_526));
  let x_529 : i32 = u_xlati16;
  u_xlatu16.x = (bitcast<u32>(x_529) * 1025u);
  let x_534 : u32 = u_xlatu16.x;
  u_xlatu30 = (x_534 >> 6u);
  let x_536 : u32 = u_xlatu30;
  let x_538 : u32 = u_xlatu16.x;
  u_xlati16 = bitcast<i32>((x_536 ^ x_538));
  let x_541 : i32 = u_xlati16;
  u_xlatu16.x = (bitcast<u32>(x_541) * 9u);
  let x_546 : u32 = u_xlatu16.x;
  u_xlatu30 = (x_546 >> 11u);
  let x_548 : u32 = u_xlatu30;
  let x_550 : u32 = u_xlatu16.x;
  u_xlati16 = bitcast<i32>((x_548 ^ x_550));
  let x_553 : i32 = u_xlati16;
  u_xlati16 = (x_553 * 32769i);
  param = 1065353216i;
  let x_559 : i32 = u_xlati16;
  param_1 = x_559;
  param_2 = 0i;
  param_3 = 23i;
  let x_562 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlat16.x = bitcast<f32>(x_562);
  let x_566 : f32 = u_xlat16.x;
  u_xlat16.x = (x_566 + -1.0f);
  let x_571 : f32 = u_xlat16.x;
  u_xlat30 = (-(x_571) + 1.0f);
  let x_574 : bool = u_xlatb2;
  if (x_574) {
    let x_579 : f32 = u_xlat16.x;
    x_575 = x_579;
  } else {
    let x_581 : f32 = u_xlat30;
    x_575 = x_581;
  }
  let x_582 : f32 = x_575;
  u_xlat2.x = x_582;
  let x_584 : f32 = u_xlat0;
  let x_587 : f32 = u_xlat2.x;
  u_xlat0 = ((x_584 * 2.0f) + -(x_587));
  let x_590 : f32 = u_xlat0;
  let x_592 : f32 = u_xlat6.w;
  u_xlat2.x = (x_590 * x_592);
  let x_596 : f32 = u_xlat2.x;
  u_xlatb16 = (x_596 >= 0.40000000596046447754f);
  let x_599 : bool = u_xlatb16;
  if (x_599) {
    let x_604 : f32 = u_xlat2.x;
    x_600 = x_604;
  } else {
    x_600 = 0.0f;
  }
  let x_606 : f32 = x_600;
  u_xlat16.x = x_606;
  let x_609 : f32 = u_xlat6.w;
  let x_610 : f32 = u_xlat0;
  u_xlat0 = ((x_609 * x_610) + -0.40000000596046447754f);
  let x_615 : f32 = u_xlat2.x;
  u_xlat30 = dpdxCoarse(x_615);
  let x_618 : f32 = u_xlat2.x;
  u_xlat2.x = dpdyCoarse(x_618);
  let x_622 : f32 = u_xlat2.x;
  let x_624 : f32 = u_xlat30;
  u_xlat2.x = (abs(x_622) + abs(x_624));
  let x_629 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_629, 0.00009999999747378752f);
  let x_633 : f32 = u_xlat0;
  let x_635 : f32 = u_xlat2.x;
  u_xlat0 = (x_633 / x_635);
  let x_637 : f32 = u_xlat0;
  u_xlat0 = (x_637 + 0.5f);
  let x_639 : f32 = u_xlat0;
  u_xlat0 = clamp(x_639, 0.0f, 1.0f);
  let x_642 : f32 = x_142.x_AlphaToMaskAvailable;
  u_xlatb2 = !((x_642 == 0.0f));
  let x_644 : bool = u_xlatb2;
  if (x_644) {
    let x_648 : f32 = u_xlat0;
    x_645 = x_648;
  } else {
    let x_651 : f32 = u_xlat16.x;
    x_645 = x_651;
  }
  let x_652 : f32 = x_645;
  u_xlat0 = x_652;
  let x_653 : f32 = u_xlat0;
  u_xlat16.x = (x_653 + -0.00009999999747378752f);
  let x_658 : f32 = u_xlat16.x;
  u_xlatb16 = (x_658 < 0.0f);
  let x_660 : bool = u_xlatb16;
  if (((select(0i, 1i, x_660) * -1i) != 0i)) {
    discard;
  }
  let x_668 : vec3<f32> = u_xlat14;
  let x_669 : vec3<f32> = u_xlat22;
  u_xlat14 = (x_668 * vec3<f32>(x_669.y, x_669.y, x_669.y));
  let x_672 : vec3<f32> = u_xlat22;
  let x_674 : vec4<f32> = vs_INTERP4;
  let x_677 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_672.x, x_672.x, x_672.x) * vec3<f32>(x_674.x, x_674.y, x_674.z)) + x_677);
  let x_679 : vec3<f32> = u_xlat22;
  let x_681 : vec3<f32> = vs_INTERP9;
  let x_683 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_679.z, x_679.z, x_679.z) * x_681) + x_683);
  let x_685 : vec3<f32> = u_xlat14;
  let x_686 : vec3<f32> = u_xlat14;
  u_xlat16.x = dot(x_685, x_686);
  let x_690 : f32 = u_xlat16.x;
  u_xlat16.x = inverseSqrt(x_690);
  let x_693 : vec3<f32> = u_xlat14;
  let x_694 : vec3<f32> = u_xlat16;
  let x_696 : vec3<f32> = (x_693 * vec3<f32>(x_694.x, x_694.x, x_694.x));
  let x_697 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_696.x, x_696.y, x_696.z, x_697.w);
  let x_700 : f32 = vs_INTERP8.y;
  let x_702 : f32 = x_142.unity_MatrixV[1i].z;
  u_xlat14.x = (x_700 * x_702);
  let x_706 : f32 = x_142.unity_MatrixV[0i].z;
  let x_708 : f32 = vs_INTERP8.x;
  let x_711 : f32 = u_xlat14.x;
  u_xlat14.x = ((x_706 * x_708) + x_711);
  let x_715 : f32 = x_142.unity_MatrixV[2i].z;
  let x_717 : f32 = vs_INTERP8.z;
  let x_720 : f32 = u_xlat14.x;
  u_xlat14.x = ((x_715 * x_717) + x_720);
  let x_724 : f32 = u_xlat14.x;
  let x_726 : f32 = x_142.unity_MatrixV[3i].z;
  u_xlat14.x = (x_724 + x_726);
  let x_730 : f32 = u_xlat14.x;
  let x_734 : f32 = x_142.x_ProjectionParams.y;
  u_xlat14.x = (-(x_730) + -(x_734));
  let x_739 : f32 = u_xlat14.x;
  u_xlat14.x = max(x_739, 0.0f);
  let x_743 : f32 = u_xlat14.x;
  let x_746 : f32 = x_142.unity_FogParams.x;
  u_xlat14.x = (x_743 * x_746);
  u_xlat3.w = 1.0f;
  let x_752 : vec4<f32> = x_77.unity_SHAr;
  let x_753 : vec4<f32> = u_xlat3;
  u_xlat5.x = dot(x_752, x_753);
  let x_758 : vec4<f32> = x_77.unity_SHAg;
  let x_759 : vec4<f32> = u_xlat3;
  u_xlat5.y = dot(x_758, x_759);
  let x_764 : vec4<f32> = x_77.unity_SHAb;
  let x_765 : vec4<f32> = u_xlat3;
  u_xlat5.z = dot(x_764, x_765);
  let x_768 : vec4<f32> = u_xlat3;
  let x_770 : vec4<f32> = u_xlat3;
  u_xlat6 = (vec4<f32>(x_768.y, x_768.z, x_768.z, x_768.x) * vec4<f32>(x_770.x, x_770.y, x_770.z, x_770.z));
  let x_775 : vec4<f32> = x_77.unity_SHBr;
  let x_776 : vec4<f32> = u_xlat6;
  u_xlat9.x = dot(x_775, x_776);
  let x_781 : vec4<f32> = x_77.unity_SHBg;
  let x_782 : vec4<f32> = u_xlat6;
  u_xlat9.y = dot(x_781, x_782);
  let x_786 : vec4<f32> = x_77.unity_SHBb;
  let x_787 : vec4<f32> = u_xlat6;
  u_xlat9.z = dot(x_786, x_787);
  let x_793 : f32 = u_xlat3.y;
  let x_795 : f32 = u_xlat3.y;
  u_xlat28.x = (x_793 * x_795);
  let x_799 : f32 = u_xlat3.x;
  let x_801 : f32 = u_xlat3.x;
  let x_804 : f32 = u_xlat28.x;
  u_xlat28.x = ((x_799 * x_801) + -(x_804));
  let x_810 : vec4<f32> = x_77.unity_SHC;
  let x_812 : vec2<f32> = u_xlat28;
  let x_815 : vec4<f32> = u_xlat9;
  u_xlat16 = ((vec3<f32>(x_810.x, x_810.y, x_810.z) * vec3<f32>(x_812.x, x_812.x, x_812.x)) + vec3<f32>(x_815.x, x_815.y, x_815.z));
  let x_818 : vec3<f32> = u_xlat16;
  let x_819 : vec3<f32> = u_xlat5;
  u_xlat16 = (x_818 + x_819);
  let x_821 : vec3<f32> = u_xlat16;
  u_xlat16 = max(x_821, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_825 : f32 = u_xlat8.x;
  u_xlat8.x = x_825;
  let x_828 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_828, 0.0f, 1.0f);
  let x_831 : f32 = u_xlat0;
  u_xlat0 = x_831;
  let x_832 : f32 = u_xlat0;
  u_xlat0 = clamp(x_832, 0.0f, 1.0f);
  let x_834 : vec4<f32> = u_xlat7;
  u_xlat5 = (vec3<f32>(x_834.x, x_834.y, x_834.z) * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_840 : f32 = u_xlat8.x;
  u_xlat28.x = (-(x_840) + 1.0f);
  let x_846 : f32 = u_xlat28.x;
  let x_848 : f32 = u_xlat28.x;
  u_xlat42 = (x_846 * x_848);
  let x_850 : f32 = u_xlat42;
  u_xlat42 = max(x_850, 0.0078125f);
  let x_854 : f32 = u_xlat42;
  let x_855 : f32 = u_xlat42;
  u_xlat45 = (x_854 * x_855);
  let x_859 : f32 = u_xlat8.x;
  u_xlat46 = (x_859 + 0.04000002145767211914f);
  let x_862 : f32 = u_xlat46;
  u_xlat46 = min(x_862, 1.0f);
  let x_865 : f32 = u_xlat42;
  u_xlat47 = ((x_865 * 4.0f) + 2.0f);
  let x_870 : f32 = vs_INTERP6.w;
  u_xlat6.x = min(x_870, 1.0f);
  let x_875 : vec4<f32> = vs_INTERP3;
  let x_876 : vec2<f32> = vec2<f32>(x_875.x, x_875.y);
  let x_878 : f32 = vs_INTERP3.z;
  txVec1 = vec3<f32>(x_876.x, x_876.y, x_878);
  let x_886 : vec3<f32> = txVec1;
  let x_888 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_886.xy, x_886.z);
  u_xlat20.x = x_888;
  let x_891 : f32 = u_xlat20.x;
  let x_893 : f32 = x_336.x_MainLightShadowParams.x;
  let x_895 : f32 = u_xlat43;
  u_xlat43 = ((x_891 * x_893) + x_895);
  let x_899 : f32 = vs_INTERP3.z;
  u_xlatb20.x = (0.0f >= x_899);
  let x_904 : f32 = vs_INTERP3.z;
  u_xlatb34.x = (x_904 >= 1.0f);
  let x_908 : bool = u_xlatb34.x;
  let x_910 : bool = u_xlatb20.x;
  u_xlatb20.x = (x_908 | x_910);
  let x_914 : bool = u_xlatb20.x;
  let x_915 : f32 = u_xlat43;
  u_xlat43 = select(x_915, 1.0f, x_914);
  let x_917 : vec3<f32> = vs_INTERP8;
  let x_919 : vec3<f32> = x_142.x_WorldSpaceCameraPos;
  u_xlat20 = (x_917 + -(x_919));
  let x_922 : vec3<f32> = u_xlat20;
  let x_923 : vec3<f32> = u_xlat20;
  u_xlat20.x = dot(x_922, x_923);
  let x_928 : f32 = u_xlat20.x;
  let x_930 : f32 = x_336.x_MainLightShadowParams.z;
  let x_933 : f32 = x_336.x_MainLightShadowParams.w;
  u_xlat34.x = ((x_928 * x_930) + x_933);
  let x_937 : f32 = u_xlat34.x;
  u_xlat34.x = clamp(x_937, 0.0f, 1.0f);
  let x_941 : f32 = u_xlat43;
  u_xlat48 = (-(x_941) + 1.0f);
  let x_945 : f32 = u_xlat34.x;
  let x_946 : f32 = u_xlat48;
  let x_948 : f32 = u_xlat43;
  u_xlat43 = ((x_945 * x_946) + x_948);
  let x_957 : f32 = x_955.x_MainLightCookieTextureFormat;
  u_xlatb34.x = !((x_957 == -1.0f));
  let x_961 : bool = u_xlatb34.x;
  if (x_961) {
    let x_964 : vec3<f32> = vs_INTERP8;
    let x_967 : vec4<f32> = x_955.x_MainLightWorldToLight[1i];
    u_xlat34 = (vec2<f32>(x_964.y, x_964.y) * vec2<f32>(x_967.x, x_967.y));
    let x_971 : vec4<f32> = x_955.x_MainLightWorldToLight[0i];
    let x_973 : vec3<f32> = vs_INTERP8;
    let x_976 : vec2<f32> = u_xlat34;
    u_xlat34 = ((vec2<f32>(x_971.x, x_971.y) * vec2<f32>(x_973.x, x_973.x)) + x_976);
    let x_979 : vec4<f32> = x_955.x_MainLightWorldToLight[2i];
    let x_981 : vec3<f32> = vs_INTERP8;
    let x_984 : vec2<f32> = u_xlat34;
    u_xlat34 = ((vec2<f32>(x_979.x, x_979.y) * vec2<f32>(x_981.z, x_981.z)) + x_984);
    let x_986 : vec2<f32> = u_xlat34;
    let x_988 : vec4<f32> = x_955.x_MainLightWorldToLight[3i];
    u_xlat34 = (x_986 + vec2<f32>(x_988.x, x_988.y));
    let x_991 : vec2<f32> = u_xlat34;
    u_xlat34 = ((x_991 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1000 : vec2<f32> = u_xlat34;
    let x_1002 : f32 = x_142.x_GlobalMipBias.x;
    let x_1003 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_1000, x_1002);
    u_xlat7 = x_1003;
    let x_1005 : f32 = x_955.x_MainLightCookieTextureFormat;
    let x_1007 : f32 = x_955.x_MainLightCookieTextureFormat;
    let x_1009 : f32 = x_955.x_MainLightCookieTextureFormat;
    let x_1011 : f32 = x_955.x_MainLightCookieTextureFormat;
    let x_1012 : vec4<f32> = vec4<f32>(x_1005, x_1007, x_1009, x_1011);
    let x_1020 : vec4<bool> = (vec4<f32>(x_1012.x, x_1012.y, x_1012.z, x_1012.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb34 = vec2<bool>(x_1020.x, x_1020.y);
    let x_1023 : bool = u_xlatb34.y;
    if (x_1023) {
      let x_1028 : f32 = u_xlat7.w;
      x_1024 = x_1028;
    } else {
      let x_1031 : f32 = u_xlat7.x;
      x_1024 = x_1031;
    }
    let x_1032 : f32 = x_1024;
    u_xlat48 = x_1032;
    let x_1034 : bool = u_xlatb34.x;
    if (x_1034) {
      let x_1038 : vec4<f32> = u_xlat7;
      x_1035 = vec3<f32>(x_1038.x, x_1038.y, x_1038.z);
    } else {
      let x_1041 : f32 = u_xlat48;
      x_1035 = vec3<f32>(x_1041, x_1041, x_1041);
    }
    let x_1043 : vec3<f32> = x_1035;
    let x_1044 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1043.x, x_1043.y, x_1043.z, x_1044.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_1050 : vec4<f32> = u_xlat7;
  let x_1053 : vec4<f32> = x_142.x_MainLightColor;
  let x_1055 : vec3<f32> = (vec3<f32>(x_1050.x, x_1050.y, x_1050.z) * vec3<f32>(x_1053.x, x_1053.y, x_1053.z));
  let x_1056 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1055.x, x_1055.y, x_1055.z, x_1056.w);
  let x_1058 : vec3<f32> = u_xlat4;
  let x_1060 : vec4<f32> = u_xlat3;
  u_xlat34.x = dot(-(x_1058), vec3<f32>(x_1060.x, x_1060.y, x_1060.z));
  let x_1065 : f32 = u_xlat34.x;
  let x_1067 : f32 = u_xlat34.x;
  u_xlat34.x = (x_1065 + x_1067);
  let x_1070 : vec4<f32> = u_xlat3;
  let x_1072 : vec2<f32> = u_xlat34;
  let x_1076 : vec3<f32> = u_xlat4;
  let x_1078 : vec3<f32> = ((vec3<f32>(x_1070.x, x_1070.y, x_1070.z) * -(vec3<f32>(x_1072.x, x_1072.x, x_1072.x))) + -(x_1076));
  let x_1079 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1078.x, x_1078.y, x_1078.z, x_1079.w);
  let x_1081 : vec4<f32> = u_xlat3;
  let x_1083 : vec3<f32> = u_xlat4;
  u_xlat34.x = dot(vec3<f32>(x_1081.x, x_1081.y, x_1081.z), x_1083);
  let x_1087 : f32 = u_xlat34.x;
  u_xlat34.x = clamp(x_1087, 0.0f, 1.0f);
  let x_1091 : f32 = u_xlat34.x;
  u_xlat34.x = (-(x_1091) + 1.0f);
  let x_1096 : f32 = u_xlat34.x;
  let x_1098 : f32 = u_xlat34.x;
  u_xlat34.x = (x_1096 * x_1098);
  let x_1102 : f32 = u_xlat34.x;
  let x_1104 : f32 = u_xlat34.x;
  u_xlat34.x = (x_1102 * x_1104);
  let x_1108 : f32 = u_xlat28.x;
  u_xlat48 = ((-(x_1108) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1115 : f32 = u_xlat28.x;
  let x_1116 : f32 = u_xlat48;
  u_xlat28.x = (x_1115 * x_1116);
  let x_1120 : f32 = u_xlat28.x;
  u_xlat28.x = (x_1120 * 6.0f);
  let x_1132 : vec4<f32> = u_xlat8;
  let x_1135 : f32 = u_xlat28.x;
  let x_1136 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1132.x, x_1132.y, x_1132.z), x_1135);
  u_xlat8 = x_1136;
  let x_1138 : f32 = u_xlat8.w;
  u_xlat28.x = (x_1138 + -1.0f);
  let x_1142 : f32 = x_77.unity_SpecCube0_HDR.w;
  let x_1144 : f32 = u_xlat28.x;
  u_xlat28.x = ((x_1142 * x_1144) + 1.0f);
  let x_1149 : f32 = u_xlat28.x;
  u_xlat28.x = max(x_1149, 0.0f);
  let x_1153 : f32 = u_xlat28.x;
  u_xlat28.x = log2(x_1153);
  let x_1157 : f32 = u_xlat28.x;
  let x_1159 : f32 = x_77.unity_SpecCube0_HDR.y;
  u_xlat28.x = (x_1157 * x_1159);
  let x_1163 : f32 = u_xlat28.x;
  u_xlat28.x = exp2(x_1163);
  let x_1167 : f32 = u_xlat28.x;
  let x_1169 : f32 = x_77.unity_SpecCube0_HDR.x;
  u_xlat28.x = (x_1167 * x_1169);
  let x_1172 : vec4<f32> = u_xlat8;
  let x_1174 : vec2<f32> = u_xlat28;
  let x_1176 : vec3<f32> = (vec3<f32>(x_1172.x, x_1172.y, x_1172.z) * vec3<f32>(x_1174.x, x_1174.x, x_1174.x));
  let x_1177 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1176.x, x_1176.y, x_1176.z, x_1177.w);
  let x_1179 : f32 = u_xlat42;
  let x_1181 : f32 = u_xlat42;
  u_xlat28 = ((vec2<f32>(x_1179, x_1179) * vec2<f32>(x_1181, x_1181)) + vec2<f32>(-1.0f, 1.0f));
  let x_1187 : f32 = u_xlat28.y;
  u_xlat42 = (1.0f / x_1187);
  let x_1189 : f32 = u_xlat46;
  u_xlat46 = (x_1189 + -0.03999999910593032837f);
  let x_1193 : f32 = u_xlat34.x;
  let x_1194 : f32 = u_xlat46;
  u_xlat46 = ((x_1193 * x_1194) + 0.03999999910593032837f);
  let x_1198 : f32 = u_xlat42;
  let x_1199 : f32 = u_xlat46;
  u_xlat42 = (x_1198 * x_1199);
  let x_1201 : f32 = u_xlat42;
  let x_1203 : vec4<f32> = u_xlat8;
  let x_1205 : vec3<f32> = (vec3<f32>(x_1201, x_1201, x_1201) * vec3<f32>(x_1203.x, x_1203.y, x_1203.z));
  let x_1206 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1205.x, x_1205.y, x_1205.z, x_1206.w);
  let x_1208 : vec3<f32> = u_xlat16;
  let x_1209 : vec3<f32> = u_xlat5;
  let x_1211 : vec4<f32> = u_xlat8;
  u_xlat16 = ((x_1208 * x_1209) + vec3<f32>(x_1211.x, x_1211.y, x_1211.z));
  let x_1214 : f32 = u_xlat43;
  let x_1216 : f32 = x_77.unity_LightData.z;
  u_xlat42 = (x_1214 * x_1216);
  let x_1218 : vec4<f32> = u_xlat3;
  let x_1221 : vec4<f32> = x_142.x_MainLightPosition;
  u_xlat43 = dot(vec3<f32>(x_1218.x, x_1218.y, x_1218.z), vec3<f32>(x_1221.x, x_1221.y, x_1221.z));
  let x_1224 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1224, 0.0f, 1.0f);
  let x_1226 : f32 = u_xlat42;
  let x_1227 : f32 = u_xlat43;
  u_xlat42 = (x_1226 * x_1227);
  let x_1229 : f32 = u_xlat42;
  let x_1231 : vec4<f32> = u_xlat7;
  let x_1233 : vec3<f32> = (vec3<f32>(x_1229, x_1229, x_1229) * vec3<f32>(x_1231.x, x_1231.y, x_1231.z));
  let x_1234 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1233.x, x_1233.y, x_1233.z, x_1234.w);
  let x_1236 : vec3<f32> = u_xlat4;
  let x_1238 : vec4<f32> = x_142.x_MainLightPosition;
  let x_1240 : vec3<f32> = (x_1236 + vec3<f32>(x_1238.x, x_1238.y, x_1238.z));
  let x_1241 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1240.x, x_1240.y, x_1240.z, x_1241.w);
  let x_1243 : vec4<f32> = u_xlat8;
  let x_1245 : vec4<f32> = u_xlat8;
  u_xlat42 = dot(vec3<f32>(x_1243.x, x_1243.y, x_1243.z), vec3<f32>(x_1245.x, x_1245.y, x_1245.z));
  let x_1248 : f32 = u_xlat42;
  u_xlat42 = max(x_1248, 1.17549435e-38f);
  let x_1250 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_1250);
  let x_1252 : f32 = u_xlat42;
  let x_1254 : vec4<f32> = u_xlat8;
  let x_1256 : vec3<f32> = (vec3<f32>(x_1252, x_1252, x_1252) * vec3<f32>(x_1254.x, x_1254.y, x_1254.z));
  let x_1257 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1256.x, x_1256.y, x_1256.z, x_1257.w);
  let x_1259 : vec4<f32> = u_xlat3;
  let x_1261 : vec4<f32> = u_xlat8;
  u_xlat42 = dot(vec3<f32>(x_1259.x, x_1259.y, x_1259.z), vec3<f32>(x_1261.x, x_1261.y, x_1261.z));
  let x_1264 : f32 = u_xlat42;
  u_xlat42 = clamp(x_1264, 0.0f, 1.0f);
  let x_1267 : vec4<f32> = x_142.x_MainLightPosition;
  let x_1269 : vec4<f32> = u_xlat8;
  u_xlat43 = dot(vec3<f32>(x_1267.x, x_1267.y, x_1267.z), vec3<f32>(x_1269.x, x_1269.y, x_1269.z));
  let x_1272 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1272, 0.0f, 1.0f);
  let x_1274 : f32 = u_xlat42;
  let x_1275 : f32 = u_xlat42;
  u_xlat42 = (x_1274 * x_1275);
  let x_1277 : f32 = u_xlat42;
  let x_1279 : f32 = u_xlat28.x;
  u_xlat42 = ((x_1277 * x_1279) + 1.00001001358032226562f);
  let x_1283 : f32 = u_xlat43;
  let x_1284 : f32 = u_xlat43;
  u_xlat43 = (x_1283 * x_1284);
  let x_1286 : f32 = u_xlat42;
  let x_1287 : f32 = u_xlat42;
  u_xlat42 = (x_1286 * x_1287);
  let x_1289 : f32 = u_xlat43;
  u_xlat43 = max(x_1289, 0.10000000149011611938f);
  let x_1292 : f32 = u_xlat42;
  let x_1293 : f32 = u_xlat43;
  u_xlat42 = (x_1292 * x_1293);
  let x_1295 : f32 = u_xlat47;
  let x_1296 : f32 = u_xlat42;
  u_xlat42 = (x_1295 * x_1296);
  let x_1298 : f32 = u_xlat45;
  let x_1299 : f32 = u_xlat42;
  u_xlat42 = (x_1298 / x_1299);
  let x_1301 : f32 = u_xlat42;
  let x_1305 : vec3<f32> = u_xlat5;
  let x_1306 : vec3<f32> = ((vec3<f32>(x_1301, x_1301, x_1301) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_1305);
  let x_1307 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1306.x, x_1306.y, x_1306.z, x_1307.w);
  let x_1309 : vec4<f32> = u_xlat7;
  let x_1311 : vec4<f32> = u_xlat8;
  let x_1313 : vec3<f32> = (vec3<f32>(x_1309.x, x_1309.y, x_1309.z) * vec3<f32>(x_1311.x, x_1311.y, x_1311.z));
  let x_1314 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1313.x, x_1313.y, x_1313.z, x_1314.w);
  let x_1318 : f32 = x_142.x_AdditionalLightsCount.x;
  let x_1320 : f32 = x_77.unity_LightData.y;
  u_xlat42 = min(x_1318, x_1320);
  let x_1323 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_1323));
  let x_1327 : f32 = u_xlat20.x;
  let x_1330 : f32 = x_336.x_AdditionalShadowFadeParams.x;
  let x_1333 : f32 = x_336.x_AdditionalShadowFadeParams.y;
  u_xlat43 = ((x_1327 * x_1330) + x_1333);
  let x_1335 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1335, 0.0f, 1.0f);
  let x_1338 : f32 = x_955.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1340 : f32 = x_955.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1342 : f32 = x_955.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1344 : f32 = x_955.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1345 : vec4<f32> = vec4<f32>(x_1338, x_1340, x_1342, x_1344);
  let x_1352 : vec4<bool> = (vec4<f32>(x_1345.x, x_1345.y, x_1345.z, x_1345.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb20 = vec2<bool>(x_1352.x, x_1352.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1363 : u32 = u_xlatu_loop_1;
    let x_1364 : u32 = u_xlatu42;
    if ((x_1363 < x_1364)) {
    } else {
      break;
    }
    let x_1367 : u32 = u_xlatu_loop_1;
    u_xlatu48 = (x_1367 >> 2u);
    let x_1370 : u32 = u_xlatu_loop_1;
    u_xlati49 = bitcast<i32>((x_1370 & 3u));
    let x_1373 : u32 = u_xlatu48;
    let x_1376 : vec4<f32> = x_77.unity_LightIndices[bitcast<i32>(x_1373)];
    let x_1386 : i32 = u_xlati49;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1391 : vec4<u32> = indexable[x_1386];
    u_xlat48 = dot(x_1376, bitcast<vec4<f32>>(x_1391));
    let x_1395 : f32 = u_xlat48;
    u_xlati48 = i32(x_1395);
    let x_1397 : vec3<f32> = vs_INTERP8;
    let x_1408 : i32 = u_xlati48;
    let x_1410 : vec4<f32> = x_1407.x_AdditionalLightsPosition[x_1408];
    let x_1413 : i32 = u_xlati48;
    let x_1415 : vec4<f32> = x_1407.x_AdditionalLightsPosition[x_1413];
    let x_1417 : vec3<f32> = ((-(x_1397) * vec3<f32>(x_1410.w, x_1410.w, x_1410.w)) + vec3<f32>(x_1415.x, x_1415.y, x_1415.z));
    let x_1418 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1417.x, x_1417.y, x_1417.z, x_1418.w);
    let x_1421 : vec4<f32> = u_xlat9;
    let x_1423 : vec4<f32> = u_xlat9;
    u_xlat49 = dot(vec3<f32>(x_1421.x, x_1421.y, x_1421.z), vec3<f32>(x_1423.x, x_1423.y, x_1423.z));
    let x_1426 : f32 = u_xlat49;
    u_xlat49 = max(x_1426, 0.00006103515625f);
    let x_1430 : f32 = u_xlat49;
    u_xlat50 = inverseSqrt(x_1430);
    let x_1433 : f32 = u_xlat50;
    let x_1435 : vec4<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1433, x_1433, x_1433) * vec3<f32>(x_1435.x, x_1435.y, x_1435.z));
    let x_1439 : f32 = u_xlat49;
    u_xlat51 = (1.0f / x_1439);
    let x_1441 : f32 = u_xlat49;
    let x_1442 : i32 = u_xlati48;
    let x_1444 : f32 = x_1407.x_AdditionalLightsAttenuation[x_1442].x;
    u_xlat49 = (x_1441 * x_1444);
    let x_1446 : f32 = u_xlat49;
    let x_1448 : f32 = u_xlat49;
    u_xlat49 = ((-(x_1446) * x_1448) + 1.0f);
    let x_1451 : f32 = u_xlat49;
    u_xlat49 = max(x_1451, 0.0f);
    let x_1453 : f32 = u_xlat49;
    let x_1454 : f32 = u_xlat49;
    u_xlat49 = (x_1453 * x_1454);
    let x_1456 : f32 = u_xlat49;
    let x_1457 : f32 = u_xlat51;
    u_xlat49 = (x_1456 * x_1457);
    let x_1459 : i32 = u_xlati48;
    let x_1461 : vec4<f32> = x_1407.x_AdditionalLightsSpotDir[x_1459];
    let x_1463 : vec3<f32> = u_xlat10;
    u_xlat51 = dot(vec3<f32>(x_1461.x, x_1461.y, x_1461.z), x_1463);
    let x_1465 : f32 = u_xlat51;
    let x_1466 : i32 = u_xlati48;
    let x_1468 : f32 = x_1407.x_AdditionalLightsAttenuation[x_1466].z;
    let x_1470 : i32 = u_xlati48;
    let x_1472 : f32 = x_1407.x_AdditionalLightsAttenuation[x_1470].w;
    u_xlat51 = ((x_1465 * x_1468) + x_1472);
    let x_1474 : f32 = u_xlat51;
    u_xlat51 = clamp(x_1474, 0.0f, 1.0f);
    let x_1476 : f32 = u_xlat51;
    let x_1477 : f32 = u_xlat51;
    u_xlat51 = (x_1476 * x_1477);
    let x_1479 : f32 = u_xlat49;
    let x_1480 : f32 = u_xlat51;
    u_xlat49 = (x_1479 * x_1480);
    let x_1484 : i32 = u_xlati48;
    let x_1486 : f32 = x_336.x_AdditionalShadowParams[x_1484].w;
    u_xlati51 = i32(x_1486);
    let x_1489 : i32 = u_xlati51;
    u_xlatb52 = (x_1489 >= 0i);
    let x_1491 : bool = u_xlatb52;
    if (x_1491) {
      let x_1495 : i32 = u_xlati48;
      let x_1497 : f32 = x_336.x_AdditionalShadowParams[x_1495].z;
      u_xlatb52 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1497, x_1497, x_1497, x_1497))));
      let x_1501 : bool = u_xlatb52;
      if (x_1501) {
        let x_1506 : vec3<f32> = u_xlat10;
        let x_1509 : vec3<f32> = u_xlat10;
        let x_1512 : vec4<bool> = (abs(vec4<f32>(x_1506.z, x_1506.z, x_1506.y, x_1506.z)) >= abs(vec4<f32>(x_1509.x, x_1509.y, x_1509.x, x_1509.x)));
        let x_1514 : vec3<bool> = vec3<bool>(x_1512.x, x_1512.y, x_1512.z);
        let x_1515 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1514.x, x_1514.y, x_1514.z, x_1515.w);
        let x_1518 : bool = u_xlatb11.y;
        let x_1520 : bool = u_xlatb11.x;
        u_xlatb52 = (x_1518 & x_1520);
        let x_1522 : vec3<f32> = u_xlat10;
        let x_1525 : vec4<bool> = (-(vec4<f32>(x_1522.z, x_1522.y, x_1522.z, x_1522.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1526 : vec3<bool> = vec3<bool>(x_1525.x, x_1525.y, x_1525.w);
        let x_1527 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1526.x, x_1526.y, x_1527.z, x_1526.z);
        let x_1531 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1531);
        let x_1536 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1536);
        let x_1542 : bool = u_xlatb11.w;
        u_xlat53 = select(0.0f, 1.0f, x_1542);
        let x_1546 : bool = u_xlatb11.z;
        if (x_1546) {
          let x_1551 : f32 = u_xlat11.y;
          x_1547 = x_1551;
        } else {
          let x_1553 : f32 = u_xlat53;
          x_1547 = x_1553;
        }
        let x_1554 : f32 = x_1547;
        u_xlat25.x = x_1554;
        let x_1557 : bool = u_xlatb52;
        if (x_1557) {
          let x_1562 : f32 = u_xlat11.x;
          x_1558 = x_1562;
        } else {
          let x_1565 : f32 = u_xlat25.x;
          x_1558 = x_1565;
        }
        let x_1566 : f32 = x_1558;
        u_xlat52 = x_1566;
        let x_1567 : i32 = u_xlati48;
        let x_1569 : f32 = x_336.x_AdditionalShadowParams[x_1567].w;
        u_xlat11.x = trunc(x_1569);
        let x_1572 : f32 = u_xlat52;
        let x_1574 : f32 = u_xlat11.x;
        u_xlat52 = (x_1572 + x_1574);
        let x_1576 : f32 = u_xlat52;
        u_xlati51 = i32(x_1576);
      }
      let x_1578 : i32 = u_xlati51;
      u_xlati51 = (x_1578 << bitcast<u32>(2i));
      let x_1580 : vec3<f32> = vs_INTERP8;
      let x_1583 : i32 = u_xlati51;
      let x_1586 : i32 = u_xlati51;
      let x_1590 : vec4<f32> = x_336.x_AdditionalLightsWorldToShadow[((x_1583 + 1i) / 4i)][((x_1586 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1580.y, x_1580.y, x_1580.y, x_1580.y) * x_1590);
      let x_1592 : i32 = u_xlati51;
      let x_1594 : i32 = u_xlati51;
      let x_1597 : vec4<f32> = x_336.x_AdditionalLightsWorldToShadow[(x_1592 / 4i)][(x_1594 % 4i)];
      let x_1598 : vec3<f32> = vs_INTERP8;
      let x_1601 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1597 * vec4<f32>(x_1598.x, x_1598.x, x_1598.x, x_1598.x)) + x_1601);
      let x_1603 : i32 = u_xlati51;
      let x_1606 : i32 = u_xlati51;
      let x_1610 : vec4<f32> = x_336.x_AdditionalLightsWorldToShadow[((x_1603 + 2i) / 4i)][((x_1606 + 2i) % 4i)];
      let x_1611 : vec3<f32> = vs_INTERP8;
      let x_1614 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1610 * vec4<f32>(x_1611.z, x_1611.z, x_1611.z, x_1611.z)) + x_1614);
      let x_1616 : vec4<f32> = u_xlat11;
      let x_1617 : i32 = u_xlati51;
      let x_1620 : i32 = u_xlati51;
      let x_1624 : vec4<f32> = x_336.x_AdditionalLightsWorldToShadow[((x_1617 + 3i) / 4i)][((x_1620 + 3i) % 4i)];
      u_xlat11 = (x_1616 + x_1624);
      let x_1626 : vec4<f32> = u_xlat11;
      let x_1628 : vec4<f32> = u_xlat11;
      let x_1630 : vec3<f32> = (vec3<f32>(x_1626.x, x_1626.y, x_1626.z) / vec3<f32>(x_1628.w, x_1628.w, x_1628.w));
      let x_1631 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1630.x, x_1630.y, x_1630.z, x_1631.w);
      let x_1634 : vec4<f32> = u_xlat11;
      let x_1635 : vec2<f32> = vec2<f32>(x_1634.x, x_1634.y);
      let x_1637 : f32 = u_xlat11.z;
      txVec2 = vec3<f32>(x_1635.x, x_1635.y, x_1637);
      let x_1645 : vec3<f32> = txVec2;
      let x_1647 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1645.xy, x_1645.z);
      u_xlat51 = x_1647;
      let x_1648 : i32 = u_xlati48;
      let x_1650 : f32 = x_336.x_AdditionalShadowParams[x_1648].x;
      u_xlat52 = (1.0f + -(x_1650));
      let x_1653 : f32 = u_xlat51;
      let x_1654 : i32 = u_xlati48;
      let x_1656 : f32 = x_336.x_AdditionalShadowParams[x_1654].x;
      let x_1658 : f32 = u_xlat52;
      u_xlat51 = ((x_1653 * x_1656) + x_1658);
      let x_1661 : f32 = u_xlat11.z;
      u_xlatb52 = (0.0f >= x_1661);
      let x_1664 : f32 = u_xlat11.z;
      u_xlatb11.x = (x_1664 >= 1.0f);
      let x_1667 : bool = u_xlatb52;
      let x_1669 : bool = u_xlatb11.x;
      u_xlatb52 = (x_1667 | x_1669);
      let x_1671 : bool = u_xlatb52;
      let x_1672 : f32 = u_xlat51;
      u_xlat51 = select(x_1672, 1.0f, x_1671);
    } else {
      u_xlat51 = 1.0f;
    }
    let x_1675 : f32 = u_xlat51;
    u_xlat52 = (-(x_1675) + 1.0f);
    let x_1678 : f32 = u_xlat43;
    let x_1679 : f32 = u_xlat52;
    let x_1681 : f32 = u_xlat51;
    u_xlat51 = ((x_1678 * x_1679) + x_1681);
    let x_1684 : i32 = u_xlati48;
    u_xlati52 = (1i << bitcast<u32>((x_1684 & 31i)));
    let x_1688 : i32 = u_xlati52;
    let x_1691 : f32 = x_955.x_AdditionalLightsCookieEnableBits;
    u_xlati52 = bitcast<i32>((bitcast<u32>(x_1688) & bitcast<u32>(x_1691)));
    let x_1695 : i32 = u_xlati52;
    if ((x_1695 != 0i)) {
      let x_1699 : i32 = u_xlati48;
      let x_1701 : f32 = x_955.x_AdditionalLightsLightTypes[x_1699].el;
      u_xlati52 = i32(x_1701);
      let x_1704 : i32 = u_xlati52;
      u_xlati11 = select(1i, 0i, (x_1704 != 0i));
      let x_1708 : i32 = u_xlati48;
      u_xlati25 = (x_1708 << bitcast<u32>(2i));
      let x_1710 : i32 = u_xlati11;
      if ((x_1710 != 0i)) {
        let x_1714 : vec3<f32> = vs_INTERP8;
        let x_1716 : i32 = u_xlati25;
        let x_1719 : i32 = u_xlati25;
        let x_1723 : vec4<f32> = x_955.x_AdditionalLightsWorldToLights[((x_1716 + 1i) / 4i)][((x_1719 + 1i) % 4i)];
        let x_1725 : vec3<f32> = (vec3<f32>(x_1714.y, x_1714.y, x_1714.y) * vec3<f32>(x_1723.x, x_1723.y, x_1723.w));
        let x_1726 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1725.x, x_1726.y, x_1725.y, x_1725.z);
        let x_1728 : i32 = u_xlati25;
        let x_1730 : i32 = u_xlati25;
        let x_1733 : vec4<f32> = x_955.x_AdditionalLightsWorldToLights[(x_1728 / 4i)][(x_1730 % 4i)];
        let x_1735 : vec3<f32> = vs_INTERP8;
        let x_1738 : vec4<f32> = u_xlat11;
        let x_1740 : vec3<f32> = ((vec3<f32>(x_1733.x, x_1733.y, x_1733.w) * vec3<f32>(x_1735.x, x_1735.x, x_1735.x)) + vec3<f32>(x_1738.x, x_1738.z, x_1738.w));
        let x_1741 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1740.x, x_1741.y, x_1740.y, x_1740.z);
        let x_1743 : i32 = u_xlati25;
        let x_1746 : i32 = u_xlati25;
        let x_1750 : vec4<f32> = x_955.x_AdditionalLightsWorldToLights[((x_1743 + 2i) / 4i)][((x_1746 + 2i) % 4i)];
        let x_1752 : vec3<f32> = vs_INTERP8;
        let x_1755 : vec4<f32> = u_xlat11;
        let x_1757 : vec3<f32> = ((vec3<f32>(x_1750.x, x_1750.y, x_1750.w) * vec3<f32>(x_1752.z, x_1752.z, x_1752.z)) + vec3<f32>(x_1755.x, x_1755.z, x_1755.w));
        let x_1758 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1757.x, x_1758.y, x_1757.y, x_1757.z);
        let x_1760 : vec4<f32> = u_xlat11;
        let x_1762 : i32 = u_xlati25;
        let x_1765 : i32 = u_xlati25;
        let x_1769 : vec4<f32> = x_955.x_AdditionalLightsWorldToLights[((x_1762 + 3i) / 4i)][((x_1765 + 3i) % 4i)];
        let x_1771 : vec3<f32> = (vec3<f32>(x_1760.x, x_1760.z, x_1760.w) + vec3<f32>(x_1769.x, x_1769.y, x_1769.w));
        let x_1772 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1771.x, x_1772.y, x_1771.y, x_1771.z);
        let x_1774 : vec4<f32> = u_xlat11;
        let x_1776 : vec4<f32> = u_xlat11;
        let x_1778 : vec2<f32> = (vec2<f32>(x_1774.x, x_1774.z) / vec2<f32>(x_1776.w, x_1776.w));
        let x_1779 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1778.x, x_1779.y, x_1778.y, x_1779.w);
        let x_1781 : vec4<f32> = u_xlat11;
        let x_1784 : vec2<f32> = ((vec2<f32>(x_1781.x, x_1781.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1785 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1784.x, x_1785.y, x_1784.y, x_1785.w);
        let x_1787 : vec4<f32> = u_xlat11;
        let x_1791 : vec2<f32> = clamp(vec2<f32>(x_1787.x, x_1787.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1792 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1791.x, x_1792.y, x_1791.y, x_1792.w);
        let x_1794 : i32 = u_xlati48;
        let x_1796 : vec4<f32> = x_955.x_AdditionalLightsCookieAtlasUVRects[x_1794];
        let x_1798 : vec4<f32> = u_xlat11;
        let x_1801 : i32 = u_xlati48;
        let x_1803 : vec4<f32> = x_955.x_AdditionalLightsCookieAtlasUVRects[x_1801];
        let x_1805 : vec2<f32> = ((vec2<f32>(x_1796.x, x_1796.y) * vec2<f32>(x_1798.x, x_1798.z)) + vec2<f32>(x_1803.z, x_1803.w));
        let x_1806 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1805.x, x_1806.y, x_1805.y, x_1806.w);
      } else {
        let x_1809 : i32 = u_xlati52;
        u_xlatb52 = (x_1809 == 1i);
        let x_1811 : bool = u_xlatb52;
        u_xlati52 = select(0i, 1i, x_1811);
        let x_1813 : i32 = u_xlati52;
        if ((x_1813 != 0i)) {
          let x_1818 : vec3<f32> = vs_INTERP8;
          let x_1820 : i32 = u_xlati25;
          let x_1823 : i32 = u_xlati25;
          let x_1827 : vec4<f32> = x_955.x_AdditionalLightsWorldToLights[((x_1820 + 1i) / 4i)][((x_1823 + 1i) % 4i)];
          let x_1829 : vec2<f32> = (vec2<f32>(x_1818.y, x_1818.y) * vec2<f32>(x_1827.x, x_1827.y));
          let x_1830 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1829.x, x_1829.y, x_1830.z, x_1830.w);
          let x_1832 : i32 = u_xlati25;
          let x_1834 : i32 = u_xlati25;
          let x_1837 : vec4<f32> = x_955.x_AdditionalLightsWorldToLights[(x_1832 / 4i)][(x_1834 % 4i)];
          let x_1839 : vec3<f32> = vs_INTERP8;
          let x_1842 : vec4<f32> = u_xlat12;
          let x_1844 : vec2<f32> = ((vec2<f32>(x_1837.x, x_1837.y) * vec2<f32>(x_1839.x, x_1839.x)) + vec2<f32>(x_1842.x, x_1842.y));
          let x_1845 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1844.x, x_1844.y, x_1845.z, x_1845.w);
          let x_1847 : i32 = u_xlati25;
          let x_1850 : i32 = u_xlati25;
          let x_1854 : vec4<f32> = x_955.x_AdditionalLightsWorldToLights[((x_1847 + 2i) / 4i)][((x_1850 + 2i) % 4i)];
          let x_1856 : vec3<f32> = vs_INTERP8;
          let x_1859 : vec4<f32> = u_xlat12;
          let x_1861 : vec2<f32> = ((vec2<f32>(x_1854.x, x_1854.y) * vec2<f32>(x_1856.z, x_1856.z)) + vec2<f32>(x_1859.x, x_1859.y));
          let x_1862 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1861.x, x_1861.y, x_1862.z, x_1862.w);
          let x_1864 : vec4<f32> = u_xlat12;
          let x_1866 : i32 = u_xlati25;
          let x_1869 : i32 = u_xlati25;
          let x_1873 : vec4<f32> = x_955.x_AdditionalLightsWorldToLights[((x_1866 + 3i) / 4i)][((x_1869 + 3i) % 4i)];
          let x_1875 : vec2<f32> = (vec2<f32>(x_1864.x, x_1864.y) + vec2<f32>(x_1873.x, x_1873.y));
          let x_1876 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1875.x, x_1875.y, x_1876.z, x_1876.w);
          let x_1878 : vec4<f32> = u_xlat12;
          let x_1881 : vec2<f32> = ((vec2<f32>(x_1878.x, x_1878.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1882 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1881.x, x_1881.y, x_1882.z, x_1882.w);
          let x_1884 : vec4<f32> = u_xlat12;
          let x_1886 : vec2<f32> = fract(vec2<f32>(x_1884.x, x_1884.y));
          let x_1887 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1886.x, x_1886.y, x_1887.z, x_1887.w);
          let x_1889 : i32 = u_xlati48;
          let x_1891 : vec4<f32> = x_955.x_AdditionalLightsCookieAtlasUVRects[x_1889];
          let x_1893 : vec4<f32> = u_xlat12;
          let x_1896 : i32 = u_xlati48;
          let x_1898 : vec4<f32> = x_955.x_AdditionalLightsCookieAtlasUVRects[x_1896];
          let x_1900 : vec2<f32> = ((vec2<f32>(x_1891.x, x_1891.y) * vec2<f32>(x_1893.x, x_1893.y)) + vec2<f32>(x_1898.z, x_1898.w));
          let x_1901 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1900.x, x_1901.y, x_1900.y, x_1901.w);
        } else {
          let x_1904 : vec3<f32> = vs_INTERP8;
          let x_1906 : i32 = u_xlati25;
          let x_1909 : i32 = u_xlati25;
          let x_1913 : vec4<f32> = x_955.x_AdditionalLightsWorldToLights[((x_1906 + 1i) / 4i)][((x_1909 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1904.y, x_1904.y, x_1904.y, x_1904.y) * x_1913);
          let x_1915 : i32 = u_xlati25;
          let x_1917 : i32 = u_xlati25;
          let x_1920 : vec4<f32> = x_955.x_AdditionalLightsWorldToLights[(x_1915 / 4i)][(x_1917 % 4i)];
          let x_1921 : vec3<f32> = vs_INTERP8;
          let x_1924 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1920 * vec4<f32>(x_1921.x, x_1921.x, x_1921.x, x_1921.x)) + x_1924);
          let x_1926 : i32 = u_xlati25;
          let x_1929 : i32 = u_xlati25;
          let x_1933 : vec4<f32> = x_955.x_AdditionalLightsWorldToLights[((x_1926 + 2i) / 4i)][((x_1929 + 2i) % 4i)];
          let x_1934 : vec3<f32> = vs_INTERP8;
          let x_1937 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1933 * vec4<f32>(x_1934.z, x_1934.z, x_1934.z, x_1934.z)) + x_1937);
          let x_1939 : vec4<f32> = u_xlat12;
          let x_1940 : i32 = u_xlati25;
          let x_1943 : i32 = u_xlati25;
          let x_1947 : vec4<f32> = x_955.x_AdditionalLightsWorldToLights[((x_1940 + 3i) / 4i)][((x_1943 + 3i) % 4i)];
          u_xlat12 = (x_1939 + x_1947);
          let x_1949 : vec4<f32> = u_xlat12;
          let x_1951 : vec4<f32> = u_xlat12;
          let x_1953 : vec3<f32> = (vec3<f32>(x_1949.x, x_1949.y, x_1949.z) / vec3<f32>(x_1951.w, x_1951.w, x_1951.w));
          let x_1954 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1953.x, x_1953.y, x_1953.z, x_1954.w);
          let x_1956 : vec4<f32> = u_xlat12;
          let x_1958 : vec4<f32> = u_xlat12;
          u_xlat52 = dot(vec3<f32>(x_1956.x, x_1956.y, x_1956.z), vec3<f32>(x_1958.x, x_1958.y, x_1958.z));
          let x_1961 : f32 = u_xlat52;
          u_xlat52 = inverseSqrt(x_1961);
          let x_1963 : f32 = u_xlat52;
          let x_1965 : vec4<f32> = u_xlat12;
          let x_1967 : vec3<f32> = (vec3<f32>(x_1963, x_1963, x_1963) * vec3<f32>(x_1965.x, x_1965.y, x_1965.z));
          let x_1968 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1967.x, x_1967.y, x_1967.z, x_1968.w);
          let x_1970 : vec4<f32> = u_xlat12;
          u_xlat52 = dot(abs(vec3<f32>(x_1970.x, x_1970.y, x_1970.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1975 : f32 = u_xlat52;
          u_xlat52 = max(x_1975, 0.00000099999999747524f);
          let x_1978 : f32 = u_xlat52;
          u_xlat52 = (1.0f / x_1978);
          let x_1981 : f32 = u_xlat52;
          let x_1983 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1981, x_1981, x_1981) * vec3<f32>(x_1983.z, x_1983.x, x_1983.y));
          let x_1987 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1987);
          let x_1991 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1991, 0.0f, 1.0f);
          let x_1996 : vec3<f32> = u_xlat13;
          let x_1998 : vec4<bool> = (vec4<f32>(x_1996.y, x_1996.y, x_1996.z, x_1996.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1999 : vec2<bool> = vec2<bool>(x_1998.x, x_1998.z);
          let x_2000 : vec3<bool> = u_xlatb25;
          u_xlatb25 = vec3<bool>(x_1999.x, x_2000.y, x_1999.y);
          let x_2003 : bool = u_xlatb25.x;
          if (x_2003) {
            let x_2008 : f32 = u_xlat13.x;
            x_2004 = x_2008;
          } else {
            let x_2011 : f32 = u_xlat13.x;
            x_2004 = -(x_2011);
          }
          let x_2013 : f32 = x_2004;
          u_xlat25.x = x_2013;
          let x_2016 : bool = u_xlatb25.z;
          if (x_2016) {
            let x_2021 : f32 = u_xlat13.x;
            x_2017 = x_2021;
          } else {
            let x_2024 : f32 = u_xlat13.x;
            x_2017 = -(x_2024);
          }
          let x_2026 : f32 = x_2017;
          u_xlat25.z = x_2026;
          let x_2028 : vec4<f32> = u_xlat12;
          let x_2030 : f32 = u_xlat52;
          let x_2033 : vec3<f32> = u_xlat25;
          let x_2035 : vec2<f32> = ((vec2<f32>(x_2028.x, x_2028.y) * vec2<f32>(x_2030, x_2030)) + vec2<f32>(x_2033.x, x_2033.z));
          let x_2036 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_2035.x, x_2036.y, x_2035.y);
          let x_2038 : vec3<f32> = u_xlat25;
          let x_2041 : vec2<f32> = ((vec2<f32>(x_2038.x, x_2038.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2042 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_2041.x, x_2042.y, x_2041.y);
          let x_2044 : vec3<f32> = u_xlat25;
          let x_2048 : vec2<f32> = clamp(vec2<f32>(x_2044.x, x_2044.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2049 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_2048.x, x_2049.y, x_2048.y);
          let x_2051 : i32 = u_xlati48;
          let x_2053 : vec4<f32> = x_955.x_AdditionalLightsCookieAtlasUVRects[x_2051];
          let x_2055 : vec3<f32> = u_xlat25;
          let x_2058 : i32 = u_xlati48;
          let x_2060 : vec4<f32> = x_955.x_AdditionalLightsCookieAtlasUVRects[x_2058];
          let x_2062 : vec2<f32> = ((vec2<f32>(x_2053.x, x_2053.y) * vec2<f32>(x_2055.x, x_2055.z)) + vec2<f32>(x_2060.z, x_2060.w));
          let x_2063 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2062.x, x_2063.y, x_2062.y, x_2063.w);
        }
      }
      let x_2070 : vec4<f32> = u_xlat11;
      let x_2072 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_2070.x, x_2070.z), 0.0f);
      u_xlat11 = x_2072;
      let x_2074 : bool = u_xlatb20.y;
      if (x_2074) {
        let x_2079 : f32 = u_xlat11.w;
        x_2075 = x_2079;
      } else {
        let x_2082 : f32 = u_xlat11.x;
        x_2075 = x_2082;
      }
      let x_2083 : f32 = x_2075;
      u_xlat52 = x_2083;
      let x_2085 : bool = u_xlatb20.x;
      if (x_2085) {
        let x_2089 : vec4<f32> = u_xlat11;
        x_2086 = vec3<f32>(x_2089.x, x_2089.y, x_2089.z);
      } else {
        let x_2092 : f32 = u_xlat52;
        x_2086 = vec3<f32>(x_2092, x_2092, x_2092);
      }
      let x_2094 : vec3<f32> = x_2086;
      let x_2095 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2094.x, x_2094.y, x_2094.z, x_2095.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2101 : vec4<f32> = u_xlat11;
    let x_2103 : i32 = u_xlati48;
    let x_2105 : vec4<f32> = x_1407.x_AdditionalLightsColor[x_2103];
    let x_2107 : vec3<f32> = (vec3<f32>(x_2101.x, x_2101.y, x_2101.z) * vec3<f32>(x_2105.x, x_2105.y, x_2105.z));
    let x_2108 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2107.x, x_2107.y, x_2107.z, x_2108.w);
    let x_2110 : f32 = u_xlat49;
    let x_2111 : f32 = u_xlat51;
    u_xlat48 = (x_2110 * x_2111);
    let x_2113 : vec4<f32> = u_xlat3;
    let x_2115 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_2113.x, x_2113.y, x_2113.z), x_2115);
    let x_2117 : f32 = u_xlat49;
    u_xlat49 = clamp(x_2117, 0.0f, 1.0f);
    let x_2119 : f32 = u_xlat48;
    let x_2120 : f32 = u_xlat49;
    u_xlat48 = (x_2119 * x_2120);
    let x_2122 : f32 = u_xlat48;
    let x_2124 : vec4<f32> = u_xlat11;
    let x_2126 : vec3<f32> = (vec3<f32>(x_2122, x_2122, x_2122) * vec3<f32>(x_2124.x, x_2124.y, x_2124.z));
    let x_2127 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2126.x, x_2126.y, x_2126.z, x_2127.w);
    let x_2129 : vec4<f32> = u_xlat9;
    let x_2131 : f32 = u_xlat50;
    let x_2134 : vec3<f32> = u_xlat4;
    let x_2135 : vec3<f32> = ((vec3<f32>(x_2129.x, x_2129.y, x_2129.z) * vec3<f32>(x_2131, x_2131, x_2131)) + x_2134);
    let x_2136 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2135.x, x_2135.y, x_2135.z, x_2136.w);
    let x_2138 : vec4<f32> = u_xlat9;
    let x_2140 : vec4<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_2138.x, x_2138.y, x_2138.z), vec3<f32>(x_2140.x, x_2140.y, x_2140.z));
    let x_2143 : f32 = u_xlat48;
    u_xlat48 = max(x_2143, 1.17549435e-38f);
    let x_2145 : f32 = u_xlat48;
    u_xlat48 = inverseSqrt(x_2145);
    let x_2147 : f32 = u_xlat48;
    let x_2149 : vec4<f32> = u_xlat9;
    let x_2151 : vec3<f32> = (vec3<f32>(x_2147, x_2147, x_2147) * vec3<f32>(x_2149.x, x_2149.y, x_2149.z));
    let x_2152 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2151.x, x_2151.y, x_2151.z, x_2152.w);
    let x_2154 : vec4<f32> = u_xlat3;
    let x_2156 : vec4<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_2154.x, x_2154.y, x_2154.z), vec3<f32>(x_2156.x, x_2156.y, x_2156.z));
    let x_2159 : f32 = u_xlat48;
    u_xlat48 = clamp(x_2159, 0.0f, 1.0f);
    let x_2161 : vec3<f32> = u_xlat10;
    let x_2162 : vec4<f32> = u_xlat9;
    u_xlat49 = dot(x_2161, vec3<f32>(x_2162.x, x_2162.y, x_2162.z));
    let x_2165 : f32 = u_xlat49;
    u_xlat49 = clamp(x_2165, 0.0f, 1.0f);
    let x_2167 : f32 = u_xlat48;
    let x_2168 : f32 = u_xlat48;
    u_xlat48 = (x_2167 * x_2168);
    let x_2170 : f32 = u_xlat48;
    let x_2172 : f32 = u_xlat28.x;
    u_xlat48 = ((x_2170 * x_2172) + 1.00001001358032226562f);
    let x_2175 : f32 = u_xlat49;
    let x_2176 : f32 = u_xlat49;
    u_xlat49 = (x_2175 * x_2176);
    let x_2178 : f32 = u_xlat48;
    let x_2179 : f32 = u_xlat48;
    u_xlat48 = (x_2178 * x_2179);
    let x_2181 : f32 = u_xlat49;
    u_xlat49 = max(x_2181, 0.10000000149011611938f);
    let x_2183 : f32 = u_xlat48;
    let x_2184 : f32 = u_xlat49;
    u_xlat48 = (x_2183 * x_2184);
    let x_2186 : f32 = u_xlat47;
    let x_2187 : f32 = u_xlat48;
    u_xlat48 = (x_2186 * x_2187);
    let x_2189 : f32 = u_xlat45;
    let x_2190 : f32 = u_xlat48;
    u_xlat48 = (x_2189 / x_2190);
    let x_2192 : f32 = u_xlat48;
    let x_2195 : vec3<f32> = u_xlat5;
    let x_2196 : vec3<f32> = ((vec3<f32>(x_2192, x_2192, x_2192) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_2195);
    let x_2197 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2196.x, x_2196.y, x_2196.z, x_2197.w);
    let x_2199 : vec4<f32> = u_xlat9;
    let x_2201 : vec4<f32> = u_xlat11;
    let x_2204 : vec4<f32> = u_xlat8;
    let x_2206 : vec3<f32> = ((vec3<f32>(x_2199.x, x_2199.y, x_2199.z) * vec3<f32>(x_2201.x, x_2201.y, x_2201.z)) + vec3<f32>(x_2204.x, x_2204.y, x_2204.z));
    let x_2207 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2206.x, x_2206.y, x_2206.z, x_2207.w);

    continuing {
      let x_2209 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2209 + bitcast<u32>(1i));
    }
  }
  let x_2211 : vec3<f32> = u_xlat16;
  let x_2212 : vec4<f32> = u_xlat6;
  let x_2215 : vec4<f32> = u_xlat7;
  u_xlat16 = ((x_2211 * vec3<f32>(x_2212.x, x_2212.x, x_2212.x)) + vec3<f32>(x_2215.x, x_2215.y, x_2215.z));
  let x_2218 : vec4<f32> = u_xlat8;
  let x_2220 : vec3<f32> = u_xlat16;
  u_xlat16 = (vec3<f32>(x_2218.x, x_2218.y, x_2218.z) + x_2220);
  let x_2222 : vec4<f32> = vs_INTERP6;
  let x_2224 : vec3<f32> = u_xlat1;
  let x_2226 : vec3<f32> = u_xlat16;
  u_xlat1 = ((vec3<f32>(x_2222.w, x_2222.w, x_2222.w) * x_2224) + x_2226);
  let x_2229 : f32 = u_xlat14.x;
  let x_2231 : f32 = u_xlat14.x;
  u_xlat14.x = (x_2229 * -(x_2231));
  let x_2236 : f32 = u_xlat14.x;
  u_xlat14.x = exp2(x_2236);
  let x_2239 : vec3<f32> = u_xlat1;
  let x_2242 : vec4<f32> = x_142.unity_FogColor;
  u_xlat1 = (x_2239 + -(vec3<f32>(x_2242.x, x_2242.y, x_2242.z)));
  let x_2248 : vec3<f32> = u_xlat14;
  let x_2250 : vec3<f32> = u_xlat1;
  let x_2253 : vec4<f32> = x_142.unity_FogColor;
  let x_2255 : vec3<f32> = ((vec3<f32>(x_2248.x, x_2248.x, x_2248.x) * x_2250) + vec3<f32>(x_2253.x, x_2253.y, x_2253.z));
  let x_2256 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2255.x, x_2255.y, x_2255.z, x_2256.w);
  let x_2258 : bool = u_xlatb2;
  let x_2259 : f32 = u_xlat0;
  SV_Target0.w = select(1.0f, x_2259, x_2258);
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


