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

@group(0) @binding(7) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(14) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP5 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

@group(1) @binding(5) var<uniform> x_243 : UnityPerMaterial;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(8) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(15) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat22 : vec3<f32>;

var<private> vs_INTERP6 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_336 : LightShadows;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_LinearClampCompare : sampler_comparison;

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

var<private> u_xlat30 : vec2<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat44 : f32;

var<private> u_xlat45 : f32;

var<private> u_xlat46 : f32;

var<private> u_xlat47 : f32;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlat20 : vec3<f32>;

var<private> u_xlatb20 : vec2<bool>;

var<private> u_xlatb34 : vec2<bool>;

var<private> u_xlat34 : vec2<f32>;

var<private> u_xlat48 : f32;

@group(1) @binding(4) var<uniform> x_936 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu43 : u32;

var<private> u_xlatu48 : u32;

var<private> u_xlati49 : i32;

var<private> u_xlati48 : i32;

@group(1) @binding(1) var<uniform> x_1386 : AdditionalLights;

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

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlati52 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlati25 : i32;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlatb25 : vec3<bool>;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_LinearClamp : sampler;

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
  var x_577 : f32;
  var x_603 : f32;
  var x_650 : f32;
  var txVec1 : vec3<f32>;
  var x_1005 : f32;
  var x_1016 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1526 : f32;
  var x_1537 : f32;
  var txVec2 : vec3<f32>;
  var x_1983 : f32;
  var x_1996 : f32;
  var x_2054 : f32;
  var x_2065 : vec3<f32>;
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
  let x_572 : f32 = u_xlat16.x;
  u_xlat30.x = (-(x_572) + 1.0f);
  let x_576 : bool = u_xlatb2;
  if (x_576) {
    let x_581 : f32 = u_xlat16.x;
    x_577 = x_581;
  } else {
    let x_584 : f32 = u_xlat30.x;
    x_577 = x_584;
  }
  let x_585 : f32 = x_577;
  u_xlat2.x = x_585;
  let x_587 : f32 = u_xlat0;
  let x_590 : f32 = u_xlat2.x;
  u_xlat0 = ((x_587 * 2.0f) + -(x_590));
  let x_593 : f32 = u_xlat0;
  let x_595 : f32 = u_xlat6.w;
  u_xlat2.x = (x_593 * x_595);
  let x_599 : f32 = u_xlat2.x;
  u_xlatb16 = (x_599 >= 0.40000000596046447754f);
  let x_602 : bool = u_xlatb16;
  if (x_602) {
    let x_607 : f32 = u_xlat2.x;
    x_603 = x_607;
  } else {
    x_603 = 0.0f;
  }
  let x_609 : f32 = x_603;
  u_xlat16.x = x_609;
  let x_612 : f32 = u_xlat6.w;
  let x_613 : f32 = u_xlat0;
  u_xlat0 = ((x_612 * x_613) + -0.40000000596046447754f);
  let x_618 : f32 = u_xlat2.x;
  u_xlat30.x = dpdxCoarse(x_618);
  let x_622 : f32 = u_xlat2.x;
  u_xlat2.x = dpdyCoarse(x_622);
  let x_626 : f32 = u_xlat2.x;
  let x_629 : f32 = u_xlat30.x;
  u_xlat2.x = (abs(x_626) + abs(x_629));
  let x_634 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_634, 0.00009999999747378752f);
  let x_638 : f32 = u_xlat0;
  let x_640 : f32 = u_xlat2.x;
  u_xlat0 = (x_638 / x_640);
  let x_642 : f32 = u_xlat0;
  u_xlat0 = (x_642 + 0.5f);
  let x_644 : f32 = u_xlat0;
  u_xlat0 = clamp(x_644, 0.0f, 1.0f);
  let x_647 : f32 = x_142.x_AlphaToMaskAvailable;
  u_xlatb2 = !((x_647 == 0.0f));
  let x_649 : bool = u_xlatb2;
  if (x_649) {
    let x_653 : f32 = u_xlat0;
    x_650 = x_653;
  } else {
    let x_656 : f32 = u_xlat16.x;
    x_650 = x_656;
  }
  let x_657 : f32 = x_650;
  u_xlat0 = x_657;
  let x_658 : f32 = u_xlat0;
  u_xlat16.x = (x_658 + -0.00009999999747378752f);
  let x_663 : f32 = u_xlat16.x;
  u_xlatb16 = (x_663 < 0.0f);
  let x_665 : bool = u_xlatb16;
  if (((select(0i, 1i, x_665) * -1i) != 0i)) {
    discard;
  }
  let x_673 : vec3<f32> = u_xlat14;
  let x_674 : vec3<f32> = u_xlat22;
  u_xlat14 = (x_673 * vec3<f32>(x_674.y, x_674.y, x_674.y));
  let x_677 : vec3<f32> = u_xlat22;
  let x_679 : vec4<f32> = vs_INTERP4;
  let x_682 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_677.x, x_677.x, x_677.x) * vec3<f32>(x_679.x, x_679.y, x_679.z)) + x_682);
  let x_684 : vec3<f32> = u_xlat22;
  let x_686 : vec3<f32> = vs_INTERP9;
  let x_688 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_684.z, x_684.z, x_684.z) * x_686) + x_688);
  let x_690 : vec3<f32> = u_xlat14;
  let x_691 : vec3<f32> = u_xlat14;
  u_xlat16.x = dot(x_690, x_691);
  let x_695 : f32 = u_xlat16.x;
  u_xlat16.x = inverseSqrt(x_695);
  let x_698 : vec3<f32> = u_xlat14;
  let x_699 : vec3<f32> = u_xlat16;
  u_xlat14 = (x_698 * vec3<f32>(x_699.x, x_699.x, x_699.x));
  let x_703 : f32 = vs_INTERP8.y;
  let x_705 : f32 = x_142.unity_MatrixV[1i].z;
  u_xlat16.x = (x_703 * x_705);
  let x_709 : f32 = x_142.unity_MatrixV[0i].z;
  let x_711 : f32 = vs_INTERP8.x;
  let x_714 : f32 = u_xlat16.x;
  u_xlat16.x = ((x_709 * x_711) + x_714);
  let x_718 : f32 = x_142.unity_MatrixV[2i].z;
  let x_720 : f32 = vs_INTERP8.z;
  let x_723 : f32 = u_xlat16.x;
  u_xlat16.x = ((x_718 * x_720) + x_723);
  let x_727 : f32 = u_xlat16.x;
  let x_729 : f32 = x_142.unity_MatrixV[3i].z;
  u_xlat16.x = (x_727 + x_729);
  let x_733 : f32 = u_xlat16.x;
  let x_737 : f32 = x_142.x_ProjectionParams.y;
  u_xlat16.x = (-(x_733) + -(x_737));
  let x_742 : f32 = u_xlat16.x;
  u_xlat16.x = max(x_742, 0.0f);
  let x_746 : f32 = u_xlat16.x;
  let x_749 : f32 = x_142.unity_FogParams.x;
  u_xlat16.x = (x_746 * x_749);
  let x_759 : vec2<f32> = vs_INTERP0;
  let x_761 : f32 = x_142.x_GlobalMipBias.x;
  let x_762 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_759, x_761);
  u_xlat3 = x_762;
  let x_767 : vec2<f32> = vs_INTERP0;
  let x_769 : f32 = x_142.x_GlobalMipBias.x;
  let x_770 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_767, x_769);
  u_xlat5 = vec3<f32>(x_770.x, x_770.y, x_770.z);
  let x_772 : vec4<f32> = u_xlat3;
  let x_776 : vec3<f32> = (vec3<f32>(x_772.x, x_772.y, x_772.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_777 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_776.x, x_776.y, x_776.z, x_777.w);
  let x_779 : vec3<f32> = u_xlat14;
  let x_780 : vec4<f32> = u_xlat3;
  u_xlat30.x = dot(x_779, vec3<f32>(x_780.x, x_780.y, x_780.z));
  let x_785 : f32 = u_xlat30.x;
  u_xlat30.x = (x_785 + 0.5f);
  let x_788 : vec2<f32> = u_xlat30;
  let x_790 : vec3<f32> = u_xlat5;
  let x_791 : vec3<f32> = (vec3<f32>(x_788.x, x_788.x, x_788.x) * x_790);
  let x_792 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_791.x, x_791.y, x_791.z, x_792.w);
  let x_795 : f32 = u_xlat3.w;
  u_xlat30.x = max(x_795, 0.00009999999747378752f);
  let x_798 : vec4<f32> = u_xlat3;
  let x_800 : vec2<f32> = u_xlat30;
  let x_802 : vec3<f32> = (vec3<f32>(x_798.x, x_798.y, x_798.z) / vec3<f32>(x_800.x, x_800.x, x_800.x));
  let x_803 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_802.x, x_802.y, x_802.z, x_803.w);
  let x_806 : f32 = u_xlat8.x;
  u_xlat8.x = x_806;
  let x_809 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_809, 0.0f, 1.0f);
  let x_812 : f32 = u_xlat0;
  u_xlat0 = x_812;
  let x_813 : f32 = u_xlat0;
  u_xlat0 = clamp(x_813, 0.0f, 1.0f);
  let x_815 : vec4<f32> = u_xlat7;
  u_xlat5 = (vec3<f32>(x_815.x, x_815.y, x_815.z) * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_821 : f32 = u_xlat8.x;
  u_xlat30.x = (-(x_821) + 1.0f);
  let x_827 : f32 = u_xlat30.x;
  let x_829 : f32 = u_xlat30.x;
  u_xlat44 = (x_827 * x_829);
  let x_831 : f32 = u_xlat44;
  u_xlat44 = max(x_831, 0.0078125f);
  let x_835 : f32 = u_xlat44;
  let x_836 : f32 = u_xlat44;
  u_xlat45 = (x_835 * x_836);
  let x_840 : f32 = u_xlat8.x;
  u_xlat46 = (x_840 + 0.04000002145767211914f);
  let x_843 : f32 = u_xlat46;
  u_xlat46 = min(x_843, 1.0f);
  let x_846 : f32 = u_xlat44;
  u_xlat47 = ((x_846 * 4.0f) + 2.0f);
  let x_851 : f32 = vs_INTERP6.w;
  u_xlat6.x = min(x_851, 1.0f);
  let x_856 : vec4<f32> = vs_INTERP3;
  let x_857 : vec2<f32> = vec2<f32>(x_856.x, x_856.y);
  let x_859 : f32 = vs_INTERP3.z;
  txVec1 = vec3<f32>(x_857.x, x_857.y, x_859);
  let x_867 : vec3<f32> = txVec1;
  let x_869 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_867.xy, x_867.z);
  u_xlat20.x = x_869;
  let x_872 : f32 = u_xlat20.x;
  let x_874 : f32 = x_336.x_MainLightShadowParams.x;
  let x_876 : f32 = u_xlat43;
  u_xlat43 = ((x_872 * x_874) + x_876);
  let x_880 : f32 = vs_INTERP3.z;
  u_xlatb20.x = (0.0f >= x_880);
  let x_885 : f32 = vs_INTERP3.z;
  u_xlatb34.x = (x_885 >= 1.0f);
  let x_889 : bool = u_xlatb34.x;
  let x_891 : bool = u_xlatb20.x;
  u_xlatb20.x = (x_889 | x_891);
  let x_895 : bool = u_xlatb20.x;
  let x_896 : f32 = u_xlat43;
  u_xlat43 = select(x_896, 1.0f, x_895);
  let x_898 : vec3<f32> = vs_INTERP8;
  let x_900 : vec3<f32> = x_142.x_WorldSpaceCameraPos;
  u_xlat20 = (x_898 + -(x_900));
  let x_903 : vec3<f32> = u_xlat20;
  let x_904 : vec3<f32> = u_xlat20;
  u_xlat20.x = dot(x_903, x_904);
  let x_909 : f32 = u_xlat20.x;
  let x_911 : f32 = x_336.x_MainLightShadowParams.z;
  let x_914 : f32 = x_336.x_MainLightShadowParams.w;
  u_xlat34.x = ((x_909 * x_911) + x_914);
  let x_918 : f32 = u_xlat34.x;
  u_xlat34.x = clamp(x_918, 0.0f, 1.0f);
  let x_922 : f32 = u_xlat43;
  u_xlat48 = (-(x_922) + 1.0f);
  let x_926 : f32 = u_xlat34.x;
  let x_927 : f32 = u_xlat48;
  let x_929 : f32 = u_xlat43;
  u_xlat43 = ((x_926 * x_927) + x_929);
  let x_938 : f32 = x_936.x_MainLightCookieTextureFormat;
  u_xlatb34.x = !((x_938 == -1.0f));
  let x_942 : bool = u_xlatb34.x;
  if (x_942) {
    let x_945 : vec3<f32> = vs_INTERP8;
    let x_948 : vec4<f32> = x_936.x_MainLightWorldToLight[1i];
    u_xlat34 = (vec2<f32>(x_945.y, x_945.y) * vec2<f32>(x_948.x, x_948.y));
    let x_952 : vec4<f32> = x_936.x_MainLightWorldToLight[0i];
    let x_954 : vec3<f32> = vs_INTERP8;
    let x_957 : vec2<f32> = u_xlat34;
    u_xlat34 = ((vec2<f32>(x_952.x, x_952.y) * vec2<f32>(x_954.x, x_954.x)) + x_957);
    let x_960 : vec4<f32> = x_936.x_MainLightWorldToLight[2i];
    let x_962 : vec3<f32> = vs_INTERP8;
    let x_965 : vec2<f32> = u_xlat34;
    u_xlat34 = ((vec2<f32>(x_960.x, x_960.y) * vec2<f32>(x_962.z, x_962.z)) + x_965);
    let x_967 : vec2<f32> = u_xlat34;
    let x_969 : vec4<f32> = x_936.x_MainLightWorldToLight[3i];
    u_xlat34 = (x_967 + vec2<f32>(x_969.x, x_969.y));
    let x_972 : vec2<f32> = u_xlat34;
    u_xlat34 = ((x_972 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_981 : vec2<f32> = u_xlat34;
    let x_983 : f32 = x_142.x_GlobalMipBias.x;
    let x_984 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_981, x_983);
    u_xlat7 = x_984;
    let x_986 : f32 = x_936.x_MainLightCookieTextureFormat;
    let x_988 : f32 = x_936.x_MainLightCookieTextureFormat;
    let x_990 : f32 = x_936.x_MainLightCookieTextureFormat;
    let x_992 : f32 = x_936.x_MainLightCookieTextureFormat;
    let x_993 : vec4<f32> = vec4<f32>(x_986, x_988, x_990, x_992);
    let x_1001 : vec4<bool> = (vec4<f32>(x_993.x, x_993.y, x_993.z, x_993.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb34 = vec2<bool>(x_1001.x, x_1001.y);
    let x_1004 : bool = u_xlatb34.y;
    if (x_1004) {
      let x_1009 : f32 = u_xlat7.w;
      x_1005 = x_1009;
    } else {
      let x_1012 : f32 = u_xlat7.x;
      x_1005 = x_1012;
    }
    let x_1013 : f32 = x_1005;
    u_xlat48 = x_1013;
    let x_1015 : bool = u_xlatb34.x;
    if (x_1015) {
      let x_1019 : vec4<f32> = u_xlat7;
      x_1016 = vec3<f32>(x_1019.x, x_1019.y, x_1019.z);
    } else {
      let x_1022 : f32 = u_xlat48;
      x_1016 = vec3<f32>(x_1022, x_1022, x_1022);
    }
    let x_1024 : vec3<f32> = x_1016;
    let x_1025 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1024.x, x_1024.y, x_1024.z, x_1025.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_1031 : vec4<f32> = u_xlat7;
  let x_1034 : vec4<f32> = x_142.x_MainLightColor;
  let x_1036 : vec3<f32> = (vec3<f32>(x_1031.x, x_1031.y, x_1031.z) * vec3<f32>(x_1034.x, x_1034.y, x_1034.z));
  let x_1037 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1036.x, x_1036.y, x_1036.z, x_1037.w);
  let x_1039 : vec3<f32> = u_xlat4;
  let x_1041 : vec3<f32> = u_xlat14;
  u_xlat34.x = dot(-(x_1039), x_1041);
  let x_1045 : f32 = u_xlat34.x;
  let x_1047 : f32 = u_xlat34.x;
  u_xlat34.x = (x_1045 + x_1047);
  let x_1050 : vec3<f32> = u_xlat14;
  let x_1051 : vec2<f32> = u_xlat34;
  let x_1055 : vec3<f32> = u_xlat4;
  let x_1057 : vec3<f32> = ((x_1050 * -(vec3<f32>(x_1051.x, x_1051.x, x_1051.x))) + -(x_1055));
  let x_1058 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1057.x, x_1057.y, x_1057.z, x_1058.w);
  let x_1060 : vec3<f32> = u_xlat14;
  let x_1061 : vec3<f32> = u_xlat4;
  u_xlat34.x = dot(x_1060, x_1061);
  let x_1065 : f32 = u_xlat34.x;
  u_xlat34.x = clamp(x_1065, 0.0f, 1.0f);
  let x_1069 : f32 = u_xlat34.x;
  u_xlat34.x = (-(x_1069) + 1.0f);
  let x_1074 : f32 = u_xlat34.x;
  let x_1076 : f32 = u_xlat34.x;
  u_xlat34.x = (x_1074 * x_1076);
  let x_1080 : f32 = u_xlat34.x;
  let x_1082 : f32 = u_xlat34.x;
  u_xlat34.x = (x_1080 * x_1082);
  let x_1086 : f32 = u_xlat30.x;
  u_xlat48 = ((-(x_1086) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1093 : f32 = u_xlat30.x;
  let x_1094 : f32 = u_xlat48;
  u_xlat30.x = (x_1093 * x_1094);
  let x_1098 : f32 = u_xlat30.x;
  u_xlat30.x = (x_1098 * 6.0f);
  let x_1110 : vec4<f32> = u_xlat8;
  let x_1113 : f32 = u_xlat30.x;
  let x_1114 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1110.x, x_1110.y, x_1110.z), x_1113);
  u_xlat8 = x_1114;
  let x_1116 : f32 = u_xlat8.w;
  u_xlat30.x = (x_1116 + -1.0f);
  let x_1120 : f32 = x_77.unity_SpecCube0_HDR.w;
  let x_1122 : f32 = u_xlat30.x;
  u_xlat30.x = ((x_1120 * x_1122) + 1.0f);
  let x_1127 : f32 = u_xlat30.x;
  u_xlat30.x = max(x_1127, 0.0f);
  let x_1131 : f32 = u_xlat30.x;
  u_xlat30.x = log2(x_1131);
  let x_1135 : f32 = u_xlat30.x;
  let x_1137 : f32 = x_77.unity_SpecCube0_HDR.y;
  u_xlat30.x = (x_1135 * x_1137);
  let x_1141 : f32 = u_xlat30.x;
  u_xlat30.x = exp2(x_1141);
  let x_1145 : f32 = u_xlat30.x;
  let x_1147 : f32 = x_77.unity_SpecCube0_HDR.x;
  u_xlat30.x = (x_1145 * x_1147);
  let x_1150 : vec4<f32> = u_xlat8;
  let x_1152 : vec2<f32> = u_xlat30;
  let x_1154 : vec3<f32> = (vec3<f32>(x_1150.x, x_1150.y, x_1150.z) * vec3<f32>(x_1152.x, x_1152.x, x_1152.x));
  let x_1155 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1154.x, x_1154.y, x_1154.z, x_1155.w);
  let x_1157 : f32 = u_xlat44;
  let x_1159 : f32 = u_xlat44;
  u_xlat30 = ((vec2<f32>(x_1157, x_1157) * vec2<f32>(x_1159, x_1159)) + vec2<f32>(-1.0f, 1.0f));
  let x_1165 : f32 = u_xlat30.y;
  u_xlat44 = (1.0f / x_1165);
  let x_1167 : f32 = u_xlat46;
  u_xlat46 = (x_1167 + -0.03999999910593032837f);
  let x_1171 : f32 = u_xlat34.x;
  let x_1172 : f32 = u_xlat46;
  u_xlat46 = ((x_1171 * x_1172) + 0.03999999910593032837f);
  let x_1176 : f32 = u_xlat44;
  let x_1177 : f32 = u_xlat46;
  u_xlat44 = (x_1176 * x_1177);
  let x_1179 : f32 = u_xlat44;
  let x_1181 : vec4<f32> = u_xlat8;
  let x_1183 : vec3<f32> = (vec3<f32>(x_1179, x_1179, x_1179) * vec3<f32>(x_1181.x, x_1181.y, x_1181.z));
  let x_1184 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1183.x, x_1183.y, x_1183.z, x_1184.w);
  let x_1186 : vec4<f32> = u_xlat3;
  let x_1188 : vec3<f32> = u_xlat5;
  let x_1190 : vec4<f32> = u_xlat8;
  let x_1192 : vec3<f32> = ((vec3<f32>(x_1186.x, x_1186.y, x_1186.z) * x_1188) + vec3<f32>(x_1190.x, x_1190.y, x_1190.z));
  let x_1193 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1192.x, x_1192.y, x_1192.z, x_1193.w);
  let x_1195 : f32 = u_xlat43;
  let x_1197 : f32 = x_77.unity_LightData.z;
  u_xlat43 = (x_1195 * x_1197);
  let x_1199 : vec3<f32> = u_xlat14;
  let x_1201 : vec4<f32> = x_142.x_MainLightPosition;
  u_xlat44 = dot(x_1199, vec3<f32>(x_1201.x, x_1201.y, x_1201.z));
  let x_1204 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1204, 0.0f, 1.0f);
  let x_1206 : f32 = u_xlat43;
  let x_1207 : f32 = u_xlat44;
  u_xlat43 = (x_1206 * x_1207);
  let x_1209 : f32 = u_xlat43;
  let x_1211 : vec4<f32> = u_xlat7;
  let x_1213 : vec3<f32> = (vec3<f32>(x_1209, x_1209, x_1209) * vec3<f32>(x_1211.x, x_1211.y, x_1211.z));
  let x_1214 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1213.x, x_1213.y, x_1213.z, x_1214.w);
  let x_1216 : vec3<f32> = u_xlat4;
  let x_1218 : vec4<f32> = x_142.x_MainLightPosition;
  let x_1220 : vec3<f32> = (x_1216 + vec3<f32>(x_1218.x, x_1218.y, x_1218.z));
  let x_1221 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1220.x, x_1220.y, x_1220.z, x_1221.w);
  let x_1223 : vec4<f32> = u_xlat8;
  let x_1225 : vec4<f32> = u_xlat8;
  u_xlat43 = dot(vec3<f32>(x_1223.x, x_1223.y, x_1223.z), vec3<f32>(x_1225.x, x_1225.y, x_1225.z));
  let x_1228 : f32 = u_xlat43;
  u_xlat43 = max(x_1228, 1.17549435e-38f);
  let x_1230 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_1230);
  let x_1232 : f32 = u_xlat43;
  let x_1234 : vec4<f32> = u_xlat8;
  let x_1236 : vec3<f32> = (vec3<f32>(x_1232, x_1232, x_1232) * vec3<f32>(x_1234.x, x_1234.y, x_1234.z));
  let x_1237 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1236.x, x_1236.y, x_1236.z, x_1237.w);
  let x_1239 : vec3<f32> = u_xlat14;
  let x_1240 : vec4<f32> = u_xlat8;
  u_xlat43 = dot(x_1239, vec3<f32>(x_1240.x, x_1240.y, x_1240.z));
  let x_1243 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1243, 0.0f, 1.0f);
  let x_1246 : vec4<f32> = x_142.x_MainLightPosition;
  let x_1248 : vec4<f32> = u_xlat8;
  u_xlat44 = dot(vec3<f32>(x_1246.x, x_1246.y, x_1246.z), vec3<f32>(x_1248.x, x_1248.y, x_1248.z));
  let x_1251 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1251, 0.0f, 1.0f);
  let x_1253 : f32 = u_xlat43;
  let x_1254 : f32 = u_xlat43;
  u_xlat43 = (x_1253 * x_1254);
  let x_1256 : f32 = u_xlat43;
  let x_1258 : f32 = u_xlat30.x;
  u_xlat43 = ((x_1256 * x_1258) + 1.00001001358032226562f);
  let x_1262 : f32 = u_xlat44;
  let x_1263 : f32 = u_xlat44;
  u_xlat44 = (x_1262 * x_1263);
  let x_1265 : f32 = u_xlat43;
  let x_1266 : f32 = u_xlat43;
  u_xlat43 = (x_1265 * x_1266);
  let x_1268 : f32 = u_xlat44;
  u_xlat44 = max(x_1268, 0.10000000149011611938f);
  let x_1271 : f32 = u_xlat43;
  let x_1272 : f32 = u_xlat44;
  u_xlat43 = (x_1271 * x_1272);
  let x_1274 : f32 = u_xlat47;
  let x_1275 : f32 = u_xlat43;
  u_xlat43 = (x_1274 * x_1275);
  let x_1277 : f32 = u_xlat45;
  let x_1278 : f32 = u_xlat43;
  u_xlat43 = (x_1277 / x_1278);
  let x_1280 : f32 = u_xlat43;
  let x_1284 : vec3<f32> = u_xlat5;
  let x_1285 : vec3<f32> = ((vec3<f32>(x_1280, x_1280, x_1280) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_1284);
  let x_1286 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1285.x, x_1285.y, x_1285.z, x_1286.w);
  let x_1288 : vec4<f32> = u_xlat7;
  let x_1290 : vec4<f32> = u_xlat8;
  let x_1292 : vec3<f32> = (vec3<f32>(x_1288.x, x_1288.y, x_1288.z) * vec3<f32>(x_1290.x, x_1290.y, x_1290.z));
  let x_1293 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1292.x, x_1292.y, x_1292.z, x_1293.w);
  let x_1297 : f32 = x_142.x_AdditionalLightsCount.x;
  let x_1299 : f32 = x_77.unity_LightData.y;
  u_xlat43 = min(x_1297, x_1299);
  let x_1302 : f32 = u_xlat43;
  u_xlatu43 = bitcast<u32>(i32(x_1302));
  let x_1306 : f32 = u_xlat20.x;
  let x_1309 : f32 = x_336.x_AdditionalShadowFadeParams.x;
  let x_1312 : f32 = x_336.x_AdditionalShadowFadeParams.y;
  u_xlat44 = ((x_1306 * x_1309) + x_1312);
  let x_1314 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1314, 0.0f, 1.0f);
  let x_1317 : f32 = x_936.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1319 : f32 = x_936.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1321 : f32 = x_936.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1323 : f32 = x_936.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1324 : vec4<f32> = vec4<f32>(x_1317, x_1319, x_1321, x_1323);
  let x_1331 : vec4<bool> = (vec4<f32>(x_1324.x, x_1324.y, x_1324.z, x_1324.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb20 = vec2<bool>(x_1331.x, x_1331.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1342 : u32 = u_xlatu_loop_1;
    let x_1343 : u32 = u_xlatu43;
    if ((x_1342 < x_1343)) {
    } else {
      break;
    }
    let x_1346 : u32 = u_xlatu_loop_1;
    u_xlatu48 = (x_1346 >> 2u);
    let x_1349 : u32 = u_xlatu_loop_1;
    u_xlati49 = bitcast<i32>((x_1349 & 3u));
    let x_1352 : u32 = u_xlatu48;
    let x_1355 : vec4<f32> = x_77.unity_LightIndices[bitcast<i32>(x_1352)];
    let x_1365 : i32 = u_xlati49;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1370 : vec4<u32> = indexable[x_1365];
    u_xlat48 = dot(x_1355, bitcast<vec4<f32>>(x_1370));
    let x_1374 : f32 = u_xlat48;
    u_xlati48 = i32(x_1374);
    let x_1376 : vec3<f32> = vs_INTERP8;
    let x_1387 : i32 = u_xlati48;
    let x_1389 : vec4<f32> = x_1386.x_AdditionalLightsPosition[x_1387];
    let x_1392 : i32 = u_xlati48;
    let x_1394 : vec4<f32> = x_1386.x_AdditionalLightsPosition[x_1392];
    let x_1396 : vec3<f32> = ((-(x_1376) * vec3<f32>(x_1389.w, x_1389.w, x_1389.w)) + vec3<f32>(x_1394.x, x_1394.y, x_1394.z));
    let x_1397 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1396.x, x_1396.y, x_1396.z, x_1397.w);
    let x_1400 : vec4<f32> = u_xlat9;
    let x_1402 : vec4<f32> = u_xlat9;
    u_xlat49 = dot(vec3<f32>(x_1400.x, x_1400.y, x_1400.z), vec3<f32>(x_1402.x, x_1402.y, x_1402.z));
    let x_1405 : f32 = u_xlat49;
    u_xlat49 = max(x_1405, 0.00006103515625f);
    let x_1409 : f32 = u_xlat49;
    u_xlat50 = inverseSqrt(x_1409);
    let x_1412 : f32 = u_xlat50;
    let x_1414 : vec4<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1412, x_1412, x_1412) * vec3<f32>(x_1414.x, x_1414.y, x_1414.z));
    let x_1418 : f32 = u_xlat49;
    u_xlat51 = (1.0f / x_1418);
    let x_1420 : f32 = u_xlat49;
    let x_1421 : i32 = u_xlati48;
    let x_1423 : f32 = x_1386.x_AdditionalLightsAttenuation[x_1421].x;
    u_xlat49 = (x_1420 * x_1423);
    let x_1425 : f32 = u_xlat49;
    let x_1427 : f32 = u_xlat49;
    u_xlat49 = ((-(x_1425) * x_1427) + 1.0f);
    let x_1430 : f32 = u_xlat49;
    u_xlat49 = max(x_1430, 0.0f);
    let x_1432 : f32 = u_xlat49;
    let x_1433 : f32 = u_xlat49;
    u_xlat49 = (x_1432 * x_1433);
    let x_1435 : f32 = u_xlat49;
    let x_1436 : f32 = u_xlat51;
    u_xlat49 = (x_1435 * x_1436);
    let x_1438 : i32 = u_xlati48;
    let x_1440 : vec4<f32> = x_1386.x_AdditionalLightsSpotDir[x_1438];
    let x_1442 : vec3<f32> = u_xlat10;
    u_xlat51 = dot(vec3<f32>(x_1440.x, x_1440.y, x_1440.z), x_1442);
    let x_1444 : f32 = u_xlat51;
    let x_1445 : i32 = u_xlati48;
    let x_1447 : f32 = x_1386.x_AdditionalLightsAttenuation[x_1445].z;
    let x_1449 : i32 = u_xlati48;
    let x_1451 : f32 = x_1386.x_AdditionalLightsAttenuation[x_1449].w;
    u_xlat51 = ((x_1444 * x_1447) + x_1451);
    let x_1453 : f32 = u_xlat51;
    u_xlat51 = clamp(x_1453, 0.0f, 1.0f);
    let x_1455 : f32 = u_xlat51;
    let x_1456 : f32 = u_xlat51;
    u_xlat51 = (x_1455 * x_1456);
    let x_1458 : f32 = u_xlat49;
    let x_1459 : f32 = u_xlat51;
    u_xlat49 = (x_1458 * x_1459);
    let x_1463 : i32 = u_xlati48;
    let x_1465 : f32 = x_336.x_AdditionalShadowParams[x_1463].w;
    u_xlati51 = i32(x_1465);
    let x_1468 : i32 = u_xlati51;
    u_xlatb52 = (x_1468 >= 0i);
    let x_1470 : bool = u_xlatb52;
    if (x_1470) {
      let x_1474 : i32 = u_xlati48;
      let x_1476 : f32 = x_336.x_AdditionalShadowParams[x_1474].z;
      u_xlatb52 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1476, x_1476, x_1476, x_1476))));
      let x_1480 : bool = u_xlatb52;
      if (x_1480) {
        let x_1485 : vec3<f32> = u_xlat10;
        let x_1488 : vec3<f32> = u_xlat10;
        let x_1491 : vec4<bool> = (abs(vec4<f32>(x_1485.z, x_1485.z, x_1485.y, x_1485.z)) >= abs(vec4<f32>(x_1488.x, x_1488.y, x_1488.x, x_1488.x)));
        let x_1493 : vec3<bool> = vec3<bool>(x_1491.x, x_1491.y, x_1491.z);
        let x_1494 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1493.x, x_1493.y, x_1493.z, x_1494.w);
        let x_1497 : bool = u_xlatb11.y;
        let x_1499 : bool = u_xlatb11.x;
        u_xlatb52 = (x_1497 & x_1499);
        let x_1501 : vec3<f32> = u_xlat10;
        let x_1504 : vec4<bool> = (-(vec4<f32>(x_1501.z, x_1501.y, x_1501.z, x_1501.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1505 : vec3<bool> = vec3<bool>(x_1504.x, x_1504.y, x_1504.w);
        let x_1506 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1505.x, x_1505.y, x_1506.z, x_1505.z);
        let x_1510 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1510);
        let x_1515 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1515);
        let x_1521 : bool = u_xlatb11.w;
        u_xlat53 = select(0.0f, 1.0f, x_1521);
        let x_1525 : bool = u_xlatb11.z;
        if (x_1525) {
          let x_1530 : f32 = u_xlat11.y;
          x_1526 = x_1530;
        } else {
          let x_1532 : f32 = u_xlat53;
          x_1526 = x_1532;
        }
        let x_1533 : f32 = x_1526;
        u_xlat25.x = x_1533;
        let x_1536 : bool = u_xlatb52;
        if (x_1536) {
          let x_1541 : f32 = u_xlat11.x;
          x_1537 = x_1541;
        } else {
          let x_1544 : f32 = u_xlat25.x;
          x_1537 = x_1544;
        }
        let x_1545 : f32 = x_1537;
        u_xlat52 = x_1545;
        let x_1546 : i32 = u_xlati48;
        let x_1548 : f32 = x_336.x_AdditionalShadowParams[x_1546].w;
        u_xlat11.x = trunc(x_1548);
        let x_1551 : f32 = u_xlat52;
        let x_1553 : f32 = u_xlat11.x;
        u_xlat52 = (x_1551 + x_1553);
        let x_1555 : f32 = u_xlat52;
        u_xlati51 = i32(x_1555);
      }
      let x_1557 : i32 = u_xlati51;
      u_xlati51 = (x_1557 << bitcast<u32>(2i));
      let x_1559 : vec3<f32> = vs_INTERP8;
      let x_1562 : i32 = u_xlati51;
      let x_1565 : i32 = u_xlati51;
      let x_1569 : vec4<f32> = x_336.x_AdditionalLightsWorldToShadow[((x_1562 + 1i) / 4i)][((x_1565 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1559.y, x_1559.y, x_1559.y, x_1559.y) * x_1569);
      let x_1571 : i32 = u_xlati51;
      let x_1573 : i32 = u_xlati51;
      let x_1576 : vec4<f32> = x_336.x_AdditionalLightsWorldToShadow[(x_1571 / 4i)][(x_1573 % 4i)];
      let x_1577 : vec3<f32> = vs_INTERP8;
      let x_1580 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1576 * vec4<f32>(x_1577.x, x_1577.x, x_1577.x, x_1577.x)) + x_1580);
      let x_1582 : i32 = u_xlati51;
      let x_1585 : i32 = u_xlati51;
      let x_1589 : vec4<f32> = x_336.x_AdditionalLightsWorldToShadow[((x_1582 + 2i) / 4i)][((x_1585 + 2i) % 4i)];
      let x_1590 : vec3<f32> = vs_INTERP8;
      let x_1593 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1589 * vec4<f32>(x_1590.z, x_1590.z, x_1590.z, x_1590.z)) + x_1593);
      let x_1595 : vec4<f32> = u_xlat11;
      let x_1596 : i32 = u_xlati51;
      let x_1599 : i32 = u_xlati51;
      let x_1603 : vec4<f32> = x_336.x_AdditionalLightsWorldToShadow[((x_1596 + 3i) / 4i)][((x_1599 + 3i) % 4i)];
      u_xlat11 = (x_1595 + x_1603);
      let x_1605 : vec4<f32> = u_xlat11;
      let x_1607 : vec4<f32> = u_xlat11;
      let x_1609 : vec3<f32> = (vec3<f32>(x_1605.x, x_1605.y, x_1605.z) / vec3<f32>(x_1607.w, x_1607.w, x_1607.w));
      let x_1610 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1609.x, x_1609.y, x_1609.z, x_1610.w);
      let x_1613 : vec4<f32> = u_xlat11;
      let x_1614 : vec2<f32> = vec2<f32>(x_1613.x, x_1613.y);
      let x_1616 : f32 = u_xlat11.z;
      txVec2 = vec3<f32>(x_1614.x, x_1614.y, x_1616);
      let x_1624 : vec3<f32> = txVec2;
      let x_1626 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1624.xy, x_1624.z);
      u_xlat51 = x_1626;
      let x_1627 : i32 = u_xlati48;
      let x_1629 : f32 = x_336.x_AdditionalShadowParams[x_1627].x;
      u_xlat52 = (1.0f + -(x_1629));
      let x_1632 : f32 = u_xlat51;
      let x_1633 : i32 = u_xlati48;
      let x_1635 : f32 = x_336.x_AdditionalShadowParams[x_1633].x;
      let x_1637 : f32 = u_xlat52;
      u_xlat51 = ((x_1632 * x_1635) + x_1637);
      let x_1640 : f32 = u_xlat11.z;
      u_xlatb52 = (0.0f >= x_1640);
      let x_1643 : f32 = u_xlat11.z;
      u_xlatb11.x = (x_1643 >= 1.0f);
      let x_1646 : bool = u_xlatb52;
      let x_1648 : bool = u_xlatb11.x;
      u_xlatb52 = (x_1646 | x_1648);
      let x_1650 : bool = u_xlatb52;
      let x_1651 : f32 = u_xlat51;
      u_xlat51 = select(x_1651, 1.0f, x_1650);
    } else {
      u_xlat51 = 1.0f;
    }
    let x_1654 : f32 = u_xlat51;
    u_xlat52 = (-(x_1654) + 1.0f);
    let x_1657 : f32 = u_xlat44;
    let x_1658 : f32 = u_xlat52;
    let x_1660 : f32 = u_xlat51;
    u_xlat51 = ((x_1657 * x_1658) + x_1660);
    let x_1663 : i32 = u_xlati48;
    u_xlati52 = (1i << bitcast<u32>((x_1663 & 31i)));
    let x_1667 : i32 = u_xlati52;
    let x_1670 : f32 = x_936.x_AdditionalLightsCookieEnableBits;
    u_xlati52 = bitcast<i32>((bitcast<u32>(x_1667) & bitcast<u32>(x_1670)));
    let x_1674 : i32 = u_xlati52;
    if ((x_1674 != 0i)) {
      let x_1678 : i32 = u_xlati48;
      let x_1680 : f32 = x_936.x_AdditionalLightsLightTypes[x_1678].el;
      u_xlati52 = i32(x_1680);
      let x_1683 : i32 = u_xlati52;
      u_xlati11 = select(1i, 0i, (x_1683 != 0i));
      let x_1687 : i32 = u_xlati48;
      u_xlati25 = (x_1687 << bitcast<u32>(2i));
      let x_1689 : i32 = u_xlati11;
      if ((x_1689 != 0i)) {
        let x_1693 : vec3<f32> = vs_INTERP8;
        let x_1695 : i32 = u_xlati25;
        let x_1698 : i32 = u_xlati25;
        let x_1702 : vec4<f32> = x_936.x_AdditionalLightsWorldToLights[((x_1695 + 1i) / 4i)][((x_1698 + 1i) % 4i)];
        let x_1704 : vec3<f32> = (vec3<f32>(x_1693.y, x_1693.y, x_1693.y) * vec3<f32>(x_1702.x, x_1702.y, x_1702.w));
        let x_1705 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1704.x, x_1705.y, x_1704.y, x_1704.z);
        let x_1707 : i32 = u_xlati25;
        let x_1709 : i32 = u_xlati25;
        let x_1712 : vec4<f32> = x_936.x_AdditionalLightsWorldToLights[(x_1707 / 4i)][(x_1709 % 4i)];
        let x_1714 : vec3<f32> = vs_INTERP8;
        let x_1717 : vec4<f32> = u_xlat11;
        let x_1719 : vec3<f32> = ((vec3<f32>(x_1712.x, x_1712.y, x_1712.w) * vec3<f32>(x_1714.x, x_1714.x, x_1714.x)) + vec3<f32>(x_1717.x, x_1717.z, x_1717.w));
        let x_1720 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1719.x, x_1720.y, x_1719.y, x_1719.z);
        let x_1722 : i32 = u_xlati25;
        let x_1725 : i32 = u_xlati25;
        let x_1729 : vec4<f32> = x_936.x_AdditionalLightsWorldToLights[((x_1722 + 2i) / 4i)][((x_1725 + 2i) % 4i)];
        let x_1731 : vec3<f32> = vs_INTERP8;
        let x_1734 : vec4<f32> = u_xlat11;
        let x_1736 : vec3<f32> = ((vec3<f32>(x_1729.x, x_1729.y, x_1729.w) * vec3<f32>(x_1731.z, x_1731.z, x_1731.z)) + vec3<f32>(x_1734.x, x_1734.z, x_1734.w));
        let x_1737 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1736.x, x_1737.y, x_1736.y, x_1736.z);
        let x_1739 : vec4<f32> = u_xlat11;
        let x_1741 : i32 = u_xlati25;
        let x_1744 : i32 = u_xlati25;
        let x_1748 : vec4<f32> = x_936.x_AdditionalLightsWorldToLights[((x_1741 + 3i) / 4i)][((x_1744 + 3i) % 4i)];
        let x_1750 : vec3<f32> = (vec3<f32>(x_1739.x, x_1739.z, x_1739.w) + vec3<f32>(x_1748.x, x_1748.y, x_1748.w));
        let x_1751 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1750.x, x_1751.y, x_1750.y, x_1750.z);
        let x_1753 : vec4<f32> = u_xlat11;
        let x_1755 : vec4<f32> = u_xlat11;
        let x_1757 : vec2<f32> = (vec2<f32>(x_1753.x, x_1753.z) / vec2<f32>(x_1755.w, x_1755.w));
        let x_1758 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1757.x, x_1758.y, x_1757.y, x_1758.w);
        let x_1760 : vec4<f32> = u_xlat11;
        let x_1763 : vec2<f32> = ((vec2<f32>(x_1760.x, x_1760.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1764 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1763.x, x_1764.y, x_1763.y, x_1764.w);
        let x_1766 : vec4<f32> = u_xlat11;
        let x_1770 : vec2<f32> = clamp(vec2<f32>(x_1766.x, x_1766.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1771 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1770.x, x_1771.y, x_1770.y, x_1771.w);
        let x_1773 : i32 = u_xlati48;
        let x_1775 : vec4<f32> = x_936.x_AdditionalLightsCookieAtlasUVRects[x_1773];
        let x_1777 : vec4<f32> = u_xlat11;
        let x_1780 : i32 = u_xlati48;
        let x_1782 : vec4<f32> = x_936.x_AdditionalLightsCookieAtlasUVRects[x_1780];
        let x_1784 : vec2<f32> = ((vec2<f32>(x_1775.x, x_1775.y) * vec2<f32>(x_1777.x, x_1777.z)) + vec2<f32>(x_1782.z, x_1782.w));
        let x_1785 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1784.x, x_1785.y, x_1784.y, x_1785.w);
      } else {
        let x_1788 : i32 = u_xlati52;
        u_xlatb52 = (x_1788 == 1i);
        let x_1790 : bool = u_xlatb52;
        u_xlati52 = select(0i, 1i, x_1790);
        let x_1792 : i32 = u_xlati52;
        if ((x_1792 != 0i)) {
          let x_1797 : vec3<f32> = vs_INTERP8;
          let x_1799 : i32 = u_xlati25;
          let x_1802 : i32 = u_xlati25;
          let x_1806 : vec4<f32> = x_936.x_AdditionalLightsWorldToLights[((x_1799 + 1i) / 4i)][((x_1802 + 1i) % 4i)];
          let x_1808 : vec2<f32> = (vec2<f32>(x_1797.y, x_1797.y) * vec2<f32>(x_1806.x, x_1806.y));
          let x_1809 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1808.x, x_1808.y, x_1809.z, x_1809.w);
          let x_1811 : i32 = u_xlati25;
          let x_1813 : i32 = u_xlati25;
          let x_1816 : vec4<f32> = x_936.x_AdditionalLightsWorldToLights[(x_1811 / 4i)][(x_1813 % 4i)];
          let x_1818 : vec3<f32> = vs_INTERP8;
          let x_1821 : vec4<f32> = u_xlat12;
          let x_1823 : vec2<f32> = ((vec2<f32>(x_1816.x, x_1816.y) * vec2<f32>(x_1818.x, x_1818.x)) + vec2<f32>(x_1821.x, x_1821.y));
          let x_1824 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1823.x, x_1823.y, x_1824.z, x_1824.w);
          let x_1826 : i32 = u_xlati25;
          let x_1829 : i32 = u_xlati25;
          let x_1833 : vec4<f32> = x_936.x_AdditionalLightsWorldToLights[((x_1826 + 2i) / 4i)][((x_1829 + 2i) % 4i)];
          let x_1835 : vec3<f32> = vs_INTERP8;
          let x_1838 : vec4<f32> = u_xlat12;
          let x_1840 : vec2<f32> = ((vec2<f32>(x_1833.x, x_1833.y) * vec2<f32>(x_1835.z, x_1835.z)) + vec2<f32>(x_1838.x, x_1838.y));
          let x_1841 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1840.x, x_1840.y, x_1841.z, x_1841.w);
          let x_1843 : vec4<f32> = u_xlat12;
          let x_1845 : i32 = u_xlati25;
          let x_1848 : i32 = u_xlati25;
          let x_1852 : vec4<f32> = x_936.x_AdditionalLightsWorldToLights[((x_1845 + 3i) / 4i)][((x_1848 + 3i) % 4i)];
          let x_1854 : vec2<f32> = (vec2<f32>(x_1843.x, x_1843.y) + vec2<f32>(x_1852.x, x_1852.y));
          let x_1855 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1854.x, x_1854.y, x_1855.z, x_1855.w);
          let x_1857 : vec4<f32> = u_xlat12;
          let x_1860 : vec2<f32> = ((vec2<f32>(x_1857.x, x_1857.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1861 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1860.x, x_1860.y, x_1861.z, x_1861.w);
          let x_1863 : vec4<f32> = u_xlat12;
          let x_1865 : vec2<f32> = fract(vec2<f32>(x_1863.x, x_1863.y));
          let x_1866 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1865.x, x_1865.y, x_1866.z, x_1866.w);
          let x_1868 : i32 = u_xlati48;
          let x_1870 : vec4<f32> = x_936.x_AdditionalLightsCookieAtlasUVRects[x_1868];
          let x_1872 : vec4<f32> = u_xlat12;
          let x_1875 : i32 = u_xlati48;
          let x_1877 : vec4<f32> = x_936.x_AdditionalLightsCookieAtlasUVRects[x_1875];
          let x_1879 : vec2<f32> = ((vec2<f32>(x_1870.x, x_1870.y) * vec2<f32>(x_1872.x, x_1872.y)) + vec2<f32>(x_1877.z, x_1877.w));
          let x_1880 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1879.x, x_1880.y, x_1879.y, x_1880.w);
        } else {
          let x_1883 : vec3<f32> = vs_INTERP8;
          let x_1885 : i32 = u_xlati25;
          let x_1888 : i32 = u_xlati25;
          let x_1892 : vec4<f32> = x_936.x_AdditionalLightsWorldToLights[((x_1885 + 1i) / 4i)][((x_1888 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1883.y, x_1883.y, x_1883.y, x_1883.y) * x_1892);
          let x_1894 : i32 = u_xlati25;
          let x_1896 : i32 = u_xlati25;
          let x_1899 : vec4<f32> = x_936.x_AdditionalLightsWorldToLights[(x_1894 / 4i)][(x_1896 % 4i)];
          let x_1900 : vec3<f32> = vs_INTERP8;
          let x_1903 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1899 * vec4<f32>(x_1900.x, x_1900.x, x_1900.x, x_1900.x)) + x_1903);
          let x_1905 : i32 = u_xlati25;
          let x_1908 : i32 = u_xlati25;
          let x_1912 : vec4<f32> = x_936.x_AdditionalLightsWorldToLights[((x_1905 + 2i) / 4i)][((x_1908 + 2i) % 4i)];
          let x_1913 : vec3<f32> = vs_INTERP8;
          let x_1916 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1912 * vec4<f32>(x_1913.z, x_1913.z, x_1913.z, x_1913.z)) + x_1916);
          let x_1918 : vec4<f32> = u_xlat12;
          let x_1919 : i32 = u_xlati25;
          let x_1922 : i32 = u_xlati25;
          let x_1926 : vec4<f32> = x_936.x_AdditionalLightsWorldToLights[((x_1919 + 3i) / 4i)][((x_1922 + 3i) % 4i)];
          u_xlat12 = (x_1918 + x_1926);
          let x_1928 : vec4<f32> = u_xlat12;
          let x_1930 : vec4<f32> = u_xlat12;
          let x_1932 : vec3<f32> = (vec3<f32>(x_1928.x, x_1928.y, x_1928.z) / vec3<f32>(x_1930.w, x_1930.w, x_1930.w));
          let x_1933 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1932.x, x_1932.y, x_1932.z, x_1933.w);
          let x_1935 : vec4<f32> = u_xlat12;
          let x_1937 : vec4<f32> = u_xlat12;
          u_xlat52 = dot(vec3<f32>(x_1935.x, x_1935.y, x_1935.z), vec3<f32>(x_1937.x, x_1937.y, x_1937.z));
          let x_1940 : f32 = u_xlat52;
          u_xlat52 = inverseSqrt(x_1940);
          let x_1942 : f32 = u_xlat52;
          let x_1944 : vec4<f32> = u_xlat12;
          let x_1946 : vec3<f32> = (vec3<f32>(x_1942, x_1942, x_1942) * vec3<f32>(x_1944.x, x_1944.y, x_1944.z));
          let x_1947 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1946.x, x_1946.y, x_1946.z, x_1947.w);
          let x_1949 : vec4<f32> = u_xlat12;
          u_xlat52 = dot(abs(vec3<f32>(x_1949.x, x_1949.y, x_1949.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1954 : f32 = u_xlat52;
          u_xlat52 = max(x_1954, 0.00000099999999747524f);
          let x_1957 : f32 = u_xlat52;
          u_xlat52 = (1.0f / x_1957);
          let x_1960 : f32 = u_xlat52;
          let x_1962 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1960, x_1960, x_1960) * vec3<f32>(x_1962.z, x_1962.x, x_1962.y));
          let x_1966 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1966);
          let x_1970 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1970, 0.0f, 1.0f);
          let x_1975 : vec3<f32> = u_xlat13;
          let x_1977 : vec4<bool> = (vec4<f32>(x_1975.y, x_1975.y, x_1975.z, x_1975.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1978 : vec2<bool> = vec2<bool>(x_1977.x, x_1977.z);
          let x_1979 : vec3<bool> = u_xlatb25;
          u_xlatb25 = vec3<bool>(x_1978.x, x_1979.y, x_1978.y);
          let x_1982 : bool = u_xlatb25.x;
          if (x_1982) {
            let x_1987 : f32 = u_xlat13.x;
            x_1983 = x_1987;
          } else {
            let x_1990 : f32 = u_xlat13.x;
            x_1983 = -(x_1990);
          }
          let x_1992 : f32 = x_1983;
          u_xlat25.x = x_1992;
          let x_1995 : bool = u_xlatb25.z;
          if (x_1995) {
            let x_2000 : f32 = u_xlat13.x;
            x_1996 = x_2000;
          } else {
            let x_2003 : f32 = u_xlat13.x;
            x_1996 = -(x_2003);
          }
          let x_2005 : f32 = x_1996;
          u_xlat25.z = x_2005;
          let x_2007 : vec4<f32> = u_xlat12;
          let x_2009 : f32 = u_xlat52;
          let x_2012 : vec3<f32> = u_xlat25;
          let x_2014 : vec2<f32> = ((vec2<f32>(x_2007.x, x_2007.y) * vec2<f32>(x_2009, x_2009)) + vec2<f32>(x_2012.x, x_2012.z));
          let x_2015 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_2014.x, x_2015.y, x_2014.y);
          let x_2017 : vec3<f32> = u_xlat25;
          let x_2020 : vec2<f32> = ((vec2<f32>(x_2017.x, x_2017.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2021 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_2020.x, x_2021.y, x_2020.y);
          let x_2023 : vec3<f32> = u_xlat25;
          let x_2027 : vec2<f32> = clamp(vec2<f32>(x_2023.x, x_2023.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2028 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_2027.x, x_2028.y, x_2027.y);
          let x_2030 : i32 = u_xlati48;
          let x_2032 : vec4<f32> = x_936.x_AdditionalLightsCookieAtlasUVRects[x_2030];
          let x_2034 : vec3<f32> = u_xlat25;
          let x_2037 : i32 = u_xlati48;
          let x_2039 : vec4<f32> = x_936.x_AdditionalLightsCookieAtlasUVRects[x_2037];
          let x_2041 : vec2<f32> = ((vec2<f32>(x_2032.x, x_2032.y) * vec2<f32>(x_2034.x, x_2034.z)) + vec2<f32>(x_2039.z, x_2039.w));
          let x_2042 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2041.x, x_2042.y, x_2041.y, x_2042.w);
        }
      }
      let x_2049 : vec4<f32> = u_xlat11;
      let x_2051 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_2049.x, x_2049.z), 0.0f);
      u_xlat11 = x_2051;
      let x_2053 : bool = u_xlatb20.y;
      if (x_2053) {
        let x_2058 : f32 = u_xlat11.w;
        x_2054 = x_2058;
      } else {
        let x_2061 : f32 = u_xlat11.x;
        x_2054 = x_2061;
      }
      let x_2062 : f32 = x_2054;
      u_xlat52 = x_2062;
      let x_2064 : bool = u_xlatb20.x;
      if (x_2064) {
        let x_2068 : vec4<f32> = u_xlat11;
        x_2065 = vec3<f32>(x_2068.x, x_2068.y, x_2068.z);
      } else {
        let x_2071 : f32 = u_xlat52;
        x_2065 = vec3<f32>(x_2071, x_2071, x_2071);
      }
      let x_2073 : vec3<f32> = x_2065;
      let x_2074 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2073.x, x_2073.y, x_2073.z, x_2074.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2080 : vec4<f32> = u_xlat11;
    let x_2082 : i32 = u_xlati48;
    let x_2084 : vec4<f32> = x_1386.x_AdditionalLightsColor[x_2082];
    let x_2086 : vec3<f32> = (vec3<f32>(x_2080.x, x_2080.y, x_2080.z) * vec3<f32>(x_2084.x, x_2084.y, x_2084.z));
    let x_2087 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2086.x, x_2086.y, x_2086.z, x_2087.w);
    let x_2089 : f32 = u_xlat49;
    let x_2090 : f32 = u_xlat51;
    u_xlat48 = (x_2089 * x_2090);
    let x_2092 : vec3<f32> = u_xlat14;
    let x_2093 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(x_2092, x_2093);
    let x_2095 : f32 = u_xlat49;
    u_xlat49 = clamp(x_2095, 0.0f, 1.0f);
    let x_2097 : f32 = u_xlat48;
    let x_2098 : f32 = u_xlat49;
    u_xlat48 = (x_2097 * x_2098);
    let x_2100 : f32 = u_xlat48;
    let x_2102 : vec4<f32> = u_xlat11;
    let x_2104 : vec3<f32> = (vec3<f32>(x_2100, x_2100, x_2100) * vec3<f32>(x_2102.x, x_2102.y, x_2102.z));
    let x_2105 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2104.x, x_2104.y, x_2104.z, x_2105.w);
    let x_2107 : vec4<f32> = u_xlat9;
    let x_2109 : f32 = u_xlat50;
    let x_2112 : vec3<f32> = u_xlat4;
    let x_2113 : vec3<f32> = ((vec3<f32>(x_2107.x, x_2107.y, x_2107.z) * vec3<f32>(x_2109, x_2109, x_2109)) + x_2112);
    let x_2114 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2113.x, x_2113.y, x_2113.z, x_2114.w);
    let x_2116 : vec4<f32> = u_xlat9;
    let x_2118 : vec4<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_2116.x, x_2116.y, x_2116.z), vec3<f32>(x_2118.x, x_2118.y, x_2118.z));
    let x_2121 : f32 = u_xlat48;
    u_xlat48 = max(x_2121, 1.17549435e-38f);
    let x_2123 : f32 = u_xlat48;
    u_xlat48 = inverseSqrt(x_2123);
    let x_2125 : f32 = u_xlat48;
    let x_2127 : vec4<f32> = u_xlat9;
    let x_2129 : vec3<f32> = (vec3<f32>(x_2125, x_2125, x_2125) * vec3<f32>(x_2127.x, x_2127.y, x_2127.z));
    let x_2130 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2129.x, x_2129.y, x_2129.z, x_2130.w);
    let x_2132 : vec3<f32> = u_xlat14;
    let x_2133 : vec4<f32> = u_xlat9;
    u_xlat48 = dot(x_2132, vec3<f32>(x_2133.x, x_2133.y, x_2133.z));
    let x_2136 : f32 = u_xlat48;
    u_xlat48 = clamp(x_2136, 0.0f, 1.0f);
    let x_2138 : vec3<f32> = u_xlat10;
    let x_2139 : vec4<f32> = u_xlat9;
    u_xlat49 = dot(x_2138, vec3<f32>(x_2139.x, x_2139.y, x_2139.z));
    let x_2142 : f32 = u_xlat49;
    u_xlat49 = clamp(x_2142, 0.0f, 1.0f);
    let x_2144 : f32 = u_xlat48;
    let x_2145 : f32 = u_xlat48;
    u_xlat48 = (x_2144 * x_2145);
    let x_2147 : f32 = u_xlat48;
    let x_2149 : f32 = u_xlat30.x;
    u_xlat48 = ((x_2147 * x_2149) + 1.00001001358032226562f);
    let x_2152 : f32 = u_xlat49;
    let x_2153 : f32 = u_xlat49;
    u_xlat49 = (x_2152 * x_2153);
    let x_2155 : f32 = u_xlat48;
    let x_2156 : f32 = u_xlat48;
    u_xlat48 = (x_2155 * x_2156);
    let x_2158 : f32 = u_xlat49;
    u_xlat49 = max(x_2158, 0.10000000149011611938f);
    let x_2160 : f32 = u_xlat48;
    let x_2161 : f32 = u_xlat49;
    u_xlat48 = (x_2160 * x_2161);
    let x_2163 : f32 = u_xlat47;
    let x_2164 : f32 = u_xlat48;
    u_xlat48 = (x_2163 * x_2164);
    let x_2166 : f32 = u_xlat45;
    let x_2167 : f32 = u_xlat48;
    u_xlat48 = (x_2166 / x_2167);
    let x_2169 : f32 = u_xlat48;
    let x_2172 : vec3<f32> = u_xlat5;
    let x_2173 : vec3<f32> = ((vec3<f32>(x_2169, x_2169, x_2169) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_2172);
    let x_2174 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2173.x, x_2173.y, x_2173.z, x_2174.w);
    let x_2176 : vec4<f32> = u_xlat9;
    let x_2178 : vec4<f32> = u_xlat11;
    let x_2181 : vec4<f32> = u_xlat8;
    let x_2183 : vec3<f32> = ((vec3<f32>(x_2176.x, x_2176.y, x_2176.z) * vec3<f32>(x_2178.x, x_2178.y, x_2178.z)) + vec3<f32>(x_2181.x, x_2181.y, x_2181.z));
    let x_2184 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2183.x, x_2183.y, x_2183.z, x_2184.w);

    continuing {
      let x_2186 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2186 + bitcast<u32>(1i));
    }
  }
  let x_2188 : vec4<f32> = u_xlat3;
  let x_2190 : vec4<f32> = u_xlat6;
  let x_2193 : vec4<f32> = u_xlat7;
  u_xlat14 = ((vec3<f32>(x_2188.x, x_2188.y, x_2188.z) * vec3<f32>(x_2190.x, x_2190.x, x_2190.x)) + vec3<f32>(x_2193.x, x_2193.y, x_2193.z));
  let x_2196 : vec4<f32> = u_xlat8;
  let x_2198 : vec3<f32> = u_xlat14;
  u_xlat14 = (vec3<f32>(x_2196.x, x_2196.y, x_2196.z) + x_2198);
  let x_2200 : vec4<f32> = vs_INTERP6;
  let x_2202 : vec3<f32> = u_xlat1;
  let x_2204 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_2200.w, x_2200.w, x_2200.w) * x_2202) + x_2204);
  let x_2207 : f32 = u_xlat16.x;
  let x_2209 : f32 = u_xlat16.x;
  u_xlat1.x = (x_2207 * -(x_2209));
  let x_2214 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_2214);
  let x_2217 : vec3<f32> = u_xlat14;
  let x_2220 : vec4<f32> = x_142.unity_FogColor;
  u_xlat14 = (x_2217 + -(vec3<f32>(x_2220.x, x_2220.y, x_2220.z)));
  let x_2226 : vec3<f32> = u_xlat1;
  let x_2228 : vec3<f32> = u_xlat14;
  let x_2231 : vec4<f32> = x_142.unity_FogColor;
  let x_2233 : vec3<f32> = ((vec3<f32>(x_2226.x, x_2226.x, x_2226.x) * x_2228) + vec3<f32>(x_2231.x, x_2231.y, x_2231.z));
  let x_2234 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2233.x, x_2233.y, x_2233.z, x_2234.w);
  let x_2236 : bool = u_xlatb2;
  let x_2237 : f32 = u_xlat0;
  SV_Target0.w = select(1.0f, x_2237, x_2236);
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


