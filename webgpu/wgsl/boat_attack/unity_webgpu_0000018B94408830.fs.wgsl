diagnostic(off, derivative_uniformity);

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

var<private> u_xlatb42 : bool;

@group(1) @binding(0) var<uniform> x_75 : PGlobals;

var<private> u_xlat1 : vec3<f32>;

var<private> vs_INTERP8 : vec3<f32>;

var<private> u_xlat43 : f32;

var<private> u_xlat2 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_132 : UnityPerDraw;

var<private> u_xlat42 : f32;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(7) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(14) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP5 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(1) @binding(5) var<uniform> x_188 : UnityPerMaterial;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(8) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(15) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat19 : vec3<f32>;

var<private> vs_INTERP6 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_250 : LightShadows;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlatb6 : vec4<bool>;

var<private> u_xlatu42 : u32;

var<private> u_xlati42 : i32;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb43 : bool;

var<private> u_xlatb44 : bool;

var<private> u_xlat44 : f32;

var<private> u_xlatu2 : vec3<u32>;

var<private> u_xlatu30 : u32;

var<private> u_xlatu3 : u32;

var<private> u_xlati30 : i32;

var<private> u_xlati16 : i32;

var<private> u_xlatu16 : u32;

var<private> u_xlati2 : i32;

var<private> u_xlat16 : vec3<f32>;

var<private> u_xlatb16 : vec2<bool>;

var<private> u_xlat30 : f32;

var<private> u_xlatb2 : bool;

var<private> vs_INTERP4 : vec4<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

var<private> u_xlat17 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat46 : f32;

var<private> u_xlat33 : f32;

var<private> u_xlat47 : f32;

var<private> u_xlat20 : vec3<f32>;

var<private> u_xlat34 : vec2<f32>;

var<private> u_xlat48 : f32;

var<private> u_xlatb34 : vec2<bool>;

@group(1) @binding(4) var<uniform> x_1005 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatb5 : vec2<bool>;

var<private> u_xlatu8 : u32;

var<private> u_xlati22 : i32;

var<private> u_xlati8 : i32;

var<private> u_xlat22 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_1448 : AdditionalLights;

var<private> u_xlat23 : f32;

var<private> u_xlat37 : f32;

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

var<private> u_xlat50 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb8 : bool;

var<private> u_xlatu49 : u32;

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
  var x_120 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var x_513 : f32;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var x_646 : f32;
  var x_677 : f32;
  var x_724 : f32;
  var x_1073 : f32;
  var x_1084 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1581 : f32;
  var x_1592 : f32;
  var txVec1 : vec3<f32>;
  var x_2038 : f32;
  var x_2051 : f32;
  var x_2109 : f32;
  var x_2120 : vec3<f32>;
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
  let x_63 : vec3<f32> = u_xlat0;
  let x_65 : vec3<f32> = vs_INTERP9;
  u_xlat0 = (vec3<f32>(x_63.x, x_63.x, x_63.x) * x_65);
  let x_80 : f32 = x_75.unity_OrthoParams.w;
  u_xlatb42 = (x_80 == 0.0f);
  let x_85 : vec3<f32> = vs_INTERP8;
  let x_90 : vec3<f32> = x_75.x_WorldSpaceCameraPos;
  u_xlat1 = (-(x_85) + x_90);
  let x_93 : vec3<f32> = u_xlat1;
  let x_94 : vec3<f32> = u_xlat1;
  u_xlat43 = dot(x_93, x_94);
  let x_96 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_96);
  let x_98 : f32 = u_xlat43;
  let x_100 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_98, x_98, x_98) * x_100);
  let x_107 : f32 = x_75.unity_MatrixV[0i].z;
  u_xlat2.x = x_107;
  let x_111 : f32 = x_75.unity_MatrixV[1i].z;
  u_xlat2.y = x_111;
  let x_116 : f32 = x_75.unity_MatrixV[2i].z;
  u_xlat2.z = x_116;
  let x_118 : bool = u_xlatb42;
  if (x_118) {
    let x_123 : vec3<f32> = u_xlat1;
    x_120 = x_123;
  } else {
    let x_125 : vec3<f32> = u_xlat2;
    x_120 = x_125;
  }
  let x_126 : vec3<f32> = x_120;
  u_xlat1 = x_126;
  let x_127 : vec3<f32> = u_xlat1;
  let x_135 : vec4<f32> = x_132.unity_WorldToObject[1i];
  u_xlat2 = (vec3<f32>(x_127.y, x_127.y, x_127.y) * vec3<f32>(x_135.x, x_135.y, x_135.z));
  let x_139 : vec4<f32> = x_132.unity_WorldToObject[0i];
  let x_141 : vec3<f32> = u_xlat1;
  let x_144 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_139.x, x_139.y, x_139.z) * vec3<f32>(x_141.x, x_141.x, x_141.x)) + x_144);
  let x_147 : vec4<f32> = x_132.unity_WorldToObject[2i];
  let x_149 : vec3<f32> = u_xlat1;
  let x_152 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_147.x, x_147.y, x_147.z) * vec3<f32>(x_149.z, x_149.z, x_149.z)) + x_152);
  let x_155 : vec3<f32> = u_xlat2;
  let x_156 : vec3<f32> = u_xlat2;
  u_xlat42 = dot(x_155, x_156);
  let x_158 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_158);
  let x_160 : f32 = u_xlat42;
  let x_162 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_160, x_160, x_160) * x_162);
  let x_178 : vec4<f32> = vs_INTERP5;
  let x_181 : f32 = x_75.x_GlobalMipBias.x;
  let x_182 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_178.x, x_178.y), x_181);
  u_xlat3 = x_182;
  let x_184 : vec4<f32> = u_xlat3;
  let x_190 : vec4<f32> = x_188.Color_C30C7CA3;
  let x_192 : vec3<f32> = (vec3<f32>(x_184.x, x_184.y, x_184.z) * vec3<f32>(x_190.x, x_190.y, x_190.z));
  let x_193 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_192.x, x_192.y, x_192.z, x_193.w);
  let x_201 : vec4<f32> = vs_INTERP5;
  let x_204 : f32 = x_75.x_GlobalMipBias.x;
  let x_205 : vec4<f32> = textureSampleBias(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1, vec2<f32>(x_201.x, x_201.y), x_204);
  u_xlat5 = vec4<f32>(x_205.w, x_205.x, x_205.y, x_205.z);
  let x_208 : vec4<f32> = u_xlat5;
  u_xlat6 = ((vec4<f32>(x_208.y, x_208.z, x_208.w, x_208.x) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_216 : vec4<f32> = u_xlat6;
  let x_217 : vec4<f32> = u_xlat6;
  u_xlat42 = dot(x_216, x_217);
  let x_219 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_219);
  let x_222 : f32 = u_xlat42;
  let x_224 : vec4<f32> = u_xlat6;
  u_xlat19 = (vec3<f32>(x_222, x_222, x_222) * vec3<f32>(x_224.x, x_224.y, x_224.z));
  let x_230 : f32 = vs_INTERP6.y;
  u_xlat42 = (x_230 * 200.0f);
  let x_233 : f32 = u_xlat42;
  u_xlat42 = min(x_233, 1.0f);
  let x_235 : f32 = u_xlat42;
  let x_237 : vec4<f32> = u_xlat3;
  let x_239 : vec3<f32> = (vec3<f32>(x_235, x_235, x_235) * vec3<f32>(x_237.x, x_237.y, x_237.z));
  let x_240 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_239.x, x_239.y, x_239.z, x_240.w);
  let x_242 : vec3<f32> = vs_INTERP8;
  let x_252 : vec4<f32> = x_250.x_CascadeShadowSplitSpheres0;
  let x_255 : vec3<f32> = (x_242 + -(vec3<f32>(x_252.x, x_252.y, x_252.z)));
  let x_256 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_255.x, x_255.y, x_255.z, x_256.w);
  let x_259 : vec3<f32> = vs_INTERP8;
  let x_261 : vec4<f32> = x_250.x_CascadeShadowSplitSpheres1;
  let x_264 : vec3<f32> = (x_259 + -(vec3<f32>(x_261.x, x_261.y, x_261.z)));
  let x_265 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_264.x, x_264.y, x_264.z, x_265.w);
  let x_268 : vec3<f32> = vs_INTERP8;
  let x_271 : vec4<f32> = x_250.x_CascadeShadowSplitSpheres2;
  let x_274 : vec3<f32> = (x_268 + -(vec3<f32>(x_271.x, x_271.y, x_271.z)));
  let x_275 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_274.x, x_274.y, x_274.z, x_275.w);
  let x_278 : vec3<f32> = vs_INTERP8;
  let x_281 : vec4<f32> = x_250.x_CascadeShadowSplitSpheres3;
  u_xlat9 = (x_278 + -(vec3<f32>(x_281.x, x_281.y, x_281.z)));
  let x_285 : vec4<f32> = u_xlat6;
  let x_287 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_285.x, x_285.y, x_285.z), vec3<f32>(x_287.x, x_287.y, x_287.z));
  let x_291 : vec4<f32> = u_xlat7;
  let x_293 : vec4<f32> = u_xlat7;
  u_xlat6.y = dot(vec3<f32>(x_291.x, x_291.y, x_291.z), vec3<f32>(x_293.x, x_293.y, x_293.z));
  let x_297 : vec4<f32> = u_xlat8;
  let x_299 : vec4<f32> = u_xlat8;
  u_xlat6.z = dot(vec3<f32>(x_297.x, x_297.y, x_297.z), vec3<f32>(x_299.x, x_299.y, x_299.z));
  let x_303 : vec3<f32> = u_xlat9;
  let x_304 : vec3<f32> = u_xlat9;
  u_xlat6.w = dot(x_303, x_304);
  let x_310 : vec4<f32> = u_xlat6;
  let x_312 : vec4<f32> = x_250.x_CascadeShadowSplitSphereRadii;
  u_xlatb6 = (x_310 < x_312);
  let x_315 : bool = u_xlatb6.x;
  u_xlat7.x = select(0.0f, 1.0f, x_315);
  let x_319 : bool = u_xlatb6.y;
  u_xlat7.y = select(0.0f, 1.0f, x_319);
  let x_323 : bool = u_xlatb6.z;
  u_xlat7.z = select(0.0f, 1.0f, x_323);
  let x_327 : bool = u_xlatb6.w;
  u_xlat7.w = select(0.0f, 1.0f, x_327);
  let x_331 : bool = u_xlatb6.x;
  u_xlat6.x = select(-0.0f, -1.0f, x_331);
  let x_336 : bool = u_xlatb6.y;
  u_xlat6.y = select(-0.0f, -1.0f, x_336);
  let x_340 : bool = u_xlatb6.z;
  u_xlat6.z = select(-0.0f, -1.0f, x_340);
  let x_343 : vec4<f32> = u_xlat6;
  let x_345 : vec4<f32> = u_xlat7;
  let x_347 : vec3<f32> = (vec3<f32>(x_343.x, x_343.y, x_343.z) + vec3<f32>(x_345.y, x_345.z, x_345.w));
  let x_348 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_347.x, x_347.y, x_347.z, x_348.w);
  let x_350 : vec4<f32> = u_xlat6;
  let x_353 : vec3<f32> = max(vec3<f32>(x_350.x, x_350.y, x_350.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_354 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_354.x, x_353.x, x_353.y, x_353.z);
  let x_356 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(x_356, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_361 : f32 = u_xlat42;
  u_xlat42 = (-(x_361) + 4.0f);
  let x_366 : f32 = u_xlat42;
  u_xlatu42 = u32(x_366);
  let x_370 : u32 = u_xlatu42;
  u_xlati42 = (bitcast<i32>(x_370) << bitcast<u32>(2i));
  let x_373 : vec3<f32> = vs_INTERP8;
  let x_375 : i32 = u_xlati42;
  let x_378 : i32 = u_xlati42;
  let x_382 : vec4<f32> = x_250.x_MainLightWorldToShadow[((x_375 + 1i) / 4i)][((x_378 + 1i) % 4i)];
  let x_384 : vec3<f32> = (vec3<f32>(x_373.y, x_373.y, x_373.y) * vec3<f32>(x_382.x, x_382.y, x_382.z));
  let x_385 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_384.x, x_384.y, x_384.z, x_385.w);
  let x_387 : i32 = u_xlati42;
  let x_389 : i32 = u_xlati42;
  let x_392 : vec4<f32> = x_250.x_MainLightWorldToShadow[(x_387 / 4i)][(x_389 % 4i)];
  let x_394 : vec3<f32> = vs_INTERP8;
  let x_397 : vec4<f32> = u_xlat6;
  let x_399 : vec3<f32> = ((vec3<f32>(x_392.x, x_392.y, x_392.z) * vec3<f32>(x_394.x, x_394.x, x_394.x)) + vec3<f32>(x_397.x, x_397.y, x_397.z));
  let x_400 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_399.x, x_399.y, x_399.z, x_400.w);
  let x_402 : i32 = u_xlati42;
  let x_405 : i32 = u_xlati42;
  let x_409 : vec4<f32> = x_250.x_MainLightWorldToShadow[((x_402 + 2i) / 4i)][((x_405 + 2i) % 4i)];
  let x_411 : vec3<f32> = vs_INTERP8;
  let x_414 : vec4<f32> = u_xlat6;
  let x_416 : vec3<f32> = ((vec3<f32>(x_409.x, x_409.y, x_409.z) * vec3<f32>(x_411.z, x_411.z, x_411.z)) + vec3<f32>(x_414.x, x_414.y, x_414.z));
  let x_417 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_416.x, x_416.y, x_416.z, x_417.w);
  let x_419 : vec4<f32> = u_xlat6;
  let x_421 : i32 = u_xlati42;
  let x_424 : i32 = u_xlati42;
  let x_428 : vec4<f32> = x_250.x_MainLightWorldToShadow[((x_421 + 3i) / 4i)][((x_424 + 3i) % 4i)];
  let x_430 : vec3<f32> = (vec3<f32>(x_419.x, x_419.y, x_419.z) + vec3<f32>(x_428.x, x_428.y, x_428.z));
  let x_431 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_430.x, x_430.y, x_430.z, x_431.w);
  let x_434 : vec4<f32> = u_xlat6;
  let x_435 : vec2<f32> = vec2<f32>(x_434.x, x_434.y);
  let x_437 : f32 = u_xlat6.z;
  txVec0 = vec3<f32>(x_435.x, x_435.y, x_437);
  let x_449 : vec3<f32> = txVec0;
  let x_451 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_449.xy, x_449.z);
  u_xlat42 = x_451;
  let x_453 : f32 = x_250.x_MainLightShadowParams.x;
  u_xlat43 = (-(x_453) + 1.0f);
  let x_456 : f32 = u_xlat42;
  let x_458 : f32 = x_250.x_MainLightShadowParams.x;
  let x_460 : f32 = u_xlat43;
  u_xlat42 = ((x_456 * x_458) + x_460);
  let x_464 : f32 = u_xlat6.z;
  u_xlatb43 = (0.0f >= x_464);
  let x_468 : f32 = u_xlat6.z;
  u_xlatb44 = (x_468 >= 1.0f);
  let x_470 : bool = u_xlatb43;
  let x_471 : bool = u_xlatb44;
  u_xlatb43 = (x_470 | x_471);
  let x_473 : bool = u_xlatb43;
  let x_474 : f32 = u_xlat42;
  u_xlat42 = select(x_474, 1.0f, x_473);
  let x_476 : vec3<f32> = u_xlat0;
  let x_478 : vec4<f32> = x_75.x_MainLightPosition;
  u_xlat0.x = dot(x_476, -(vec3<f32>(x_478.x, x_478.y, x_478.z)));
  let x_484 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_484, 0.0f, 1.0f);
  let x_487 : f32 = u_xlat42;
  let x_490 : vec4<f32> = x_75.x_MainLightColor;
  let x_492 : vec3<f32> = (vec3<f32>(x_487, x_487, x_487) * vec3<f32>(x_490.x, x_490.y, x_490.z));
  let x_493 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_492.x, x_492.y, x_492.z, x_493.w);
  let x_495 : vec3<f32> = u_xlat0;
  let x_497 : vec4<f32> = u_xlat6;
  u_xlat0 = (vec3<f32>(x_495.x, x_495.x, x_495.x) * vec3<f32>(x_497.x, x_497.y, x_497.z));
  let x_500 : vec3<f32> = u_xlat0;
  let x_501 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_500 * vec3<f32>(x_501.x, x_501.y, x_501.z));
  let x_505 : f32 = x_132.unity_LODFade.x;
  u_xlatb43 = (x_505 < 0.0f);
  let x_509 : f32 = x_132.unity_LODFade.x;
  u_xlat44 = (x_509 + 1.0f);
  let x_511 : bool = u_xlatb43;
  if (x_511) {
    let x_516 : f32 = u_xlat44;
    x_513 = x_516;
  } else {
    let x_519 : f32 = x_132.unity_LODFade.x;
    x_513 = x_519;
  }
  let x_520 : f32 = x_513;
  u_xlat43 = x_520;
  let x_522 : f32 = u_xlat43;
  u_xlatb44 = (0.5f >= x_522);
  let x_524 : vec3<f32> = u_xlat2;
  let x_528 : vec4<f32> = x_75.x_ScreenParams;
  u_xlat2 = (abs(x_524) * vec3<f32>(x_528.x, x_528.y, x_528.x));
  let x_534 : vec3<f32> = u_xlat2;
  u_xlatu2 = vec3<u32>(x_534);
  let x_538 : u32 = u_xlatu2.z;
  u_xlatu30 = (x_538 * 1025u);
  let x_542 : u32 = u_xlatu30;
  u_xlatu3 = (x_542 >> 6u);
  let x_546 : u32 = u_xlatu30;
  let x_547 : u32 = u_xlatu3;
  u_xlati30 = bitcast<i32>((x_546 ^ x_547));
  let x_550 : i32 = u_xlati30;
  u_xlatu30 = (bitcast<u32>(x_550) * 9u);
  let x_554 : u32 = u_xlatu30;
  u_xlatu3 = (x_554 >> 11u);
  let x_557 : u32 = u_xlatu30;
  let x_558 : u32 = u_xlatu3;
  u_xlati30 = bitcast<i32>((x_557 ^ x_558));
  let x_561 : i32 = u_xlati30;
  u_xlati30 = (x_561 * 32769i);
  let x_565 : i32 = u_xlati30;
  let x_568 : u32 = u_xlatu2.y;
  u_xlati16 = bitcast<i32>((bitcast<u32>(x_565) ^ x_568));
  let x_572 : i32 = u_xlati16;
  u_xlatu16 = (bitcast<u32>(x_572) * 1025u);
  let x_575 : u32 = u_xlatu16;
  u_xlatu30 = (x_575 >> 6u);
  let x_577 : u32 = u_xlatu30;
  let x_578 : u32 = u_xlatu16;
  u_xlati16 = bitcast<i32>((x_577 ^ x_578));
  let x_581 : i32 = u_xlati16;
  u_xlatu16 = (bitcast<u32>(x_581) * 9u);
  let x_584 : u32 = u_xlatu16;
  u_xlatu30 = (x_584 >> 11u);
  let x_586 : u32 = u_xlatu30;
  let x_587 : u32 = u_xlatu16;
  u_xlati16 = bitcast<i32>((x_586 ^ x_587));
  let x_590 : i32 = u_xlati16;
  u_xlati16 = (x_590 * 32769i);
  let x_593 : i32 = u_xlati16;
  let x_596 : u32 = u_xlatu2.x;
  u_xlati2 = bitcast<i32>((bitcast<u32>(x_593) ^ x_596));
  let x_599 : i32 = u_xlati2;
  u_xlatu2.x = (bitcast<u32>(x_599) * 1025u);
  let x_604 : u32 = u_xlatu2.x;
  u_xlatu16 = (x_604 >> 6u);
  let x_606 : u32 = u_xlatu16;
  let x_608 : u32 = u_xlatu2.x;
  u_xlati2 = bitcast<i32>((x_606 ^ x_608));
  let x_611 : i32 = u_xlati2;
  u_xlatu2.x = (bitcast<u32>(x_611) * 9u);
  let x_616 : u32 = u_xlatu2.x;
  u_xlatu16 = (x_616 >> 11u);
  let x_618 : u32 = u_xlatu16;
  let x_620 : u32 = u_xlatu2.x;
  u_xlati2 = bitcast<i32>((x_618 ^ x_620));
  let x_623 : i32 = u_xlati2;
  u_xlati2 = (x_623 * 32769i);
  param = 1065353216i;
  let x_629 : i32 = u_xlati2;
  param_1 = x_629;
  param_2 = 0i;
  param_3 = 23i;
  let x_632 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlat2.x = bitcast<f32>(x_632);
  let x_636 : f32 = u_xlat2.x;
  u_xlat2.x = (x_636 + -1.0f);
  let x_641 : f32 = u_xlat2.x;
  u_xlat16.x = (-(x_641) + 1.0f);
  let x_645 : bool = u_xlatb44;
  if (x_645) {
    let x_650 : f32 = u_xlat2.x;
    x_646 = x_650;
  } else {
    let x_653 : f32 = u_xlat16.x;
    x_646 = x_653;
  }
  let x_654 : f32 = x_646;
  u_xlat2.x = x_654;
  let x_656 : f32 = u_xlat43;
  let x_659 : f32 = u_xlat2.x;
  u_xlat43 = ((x_656 * 2.0f) + -(x_659));
  let x_662 : f32 = u_xlat43;
  let x_664 : f32 = u_xlat3.w;
  u_xlat2.x = (x_662 * x_664);
  let x_671 : f32 = u_xlat2.x;
  u_xlatb16.x = (x_671 >= 0.40000000596046447754f);
  let x_676 : bool = u_xlatb16.x;
  if (x_676) {
    let x_681 : f32 = u_xlat2.x;
    x_677 = x_681;
  } else {
    x_677 = 0.0f;
  }
  let x_683 : f32 = x_677;
  u_xlat16.x = x_683;
  let x_686 : f32 = u_xlat3.w;
  let x_687 : f32 = u_xlat43;
  u_xlat43 = ((x_686 * x_687) + -0.40000000596046447754f);
  let x_693 : f32 = u_xlat2.x;
  u_xlat30 = dpdxCoarse(x_693);
  let x_696 : f32 = u_xlat2.x;
  u_xlat2.x = dpdyCoarse(x_696);
  let x_700 : f32 = u_xlat2.x;
  let x_702 : f32 = u_xlat30;
  u_xlat2.x = (abs(x_700) + abs(x_702));
  let x_707 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_707, 0.00009999999747378752f);
  let x_711 : f32 = u_xlat43;
  let x_713 : f32 = u_xlat2.x;
  u_xlat43 = (x_711 / x_713);
  let x_715 : f32 = u_xlat43;
  u_xlat43 = (x_715 + 0.5f);
  let x_717 : f32 = u_xlat43;
  u_xlat43 = clamp(x_717, 0.0f, 1.0f);
  let x_721 : f32 = x_75.x_AlphaToMaskAvailable;
  u_xlatb2 = !((x_721 == 0.0f));
  let x_723 : bool = u_xlatb2;
  if (x_723) {
    let x_727 : f32 = u_xlat43;
    x_724 = x_727;
  } else {
    let x_730 : f32 = u_xlat16.x;
    x_724 = x_730;
  }
  let x_731 : f32 = x_724;
  u_xlat43 = x_731;
  let x_732 : f32 = u_xlat43;
  u_xlat16.x = (x_732 + -0.00009999999747378752f);
  let x_737 : f32 = u_xlat16.x;
  u_xlatb16.x = (x_737 < 0.0f);
  let x_741 : bool = u_xlatb16.x;
  if (((select(0i, 1i, x_741) * -1i) != 0i)) {
    discard;
  }
  let x_751 : f32 = vs_INTERP4.w;
  u_xlatb16.x = (0.0f < x_751);
  let x_755 : f32 = x_132.unity_WorldTransformParams.w;
  u_xlatb16.y = (x_755 >= 0.0f);
  let x_759 : bool = u_xlatb16.x;
  u_xlat16.x = select(-1.0f, 1.0f, x_759);
  let x_763 : bool = u_xlatb16.y;
  u_xlat16.y = select(-1.0f, 1.0f, x_763);
  let x_767 : f32 = u_xlat16.y;
  let x_769 : f32 = u_xlat16.x;
  u_xlat16.x = (x_767 * x_769);
  let x_772 : vec4<f32> = vs_INTERP4;
  let x_774 : vec3<f32> = vs_INTERP9;
  let x_776 : vec3<f32> = (vec3<f32>(x_772.y, x_772.z, x_772.x) * vec3<f32>(x_774.z, x_774.x, x_774.y));
  let x_777 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_776.x, x_776.y, x_776.z, x_777.w);
  let x_779 : vec3<f32> = vs_INTERP9;
  let x_781 : vec4<f32> = vs_INTERP4;
  let x_784 : vec4<f32> = u_xlat3;
  let x_787 : vec3<f32> = ((vec3<f32>(x_779.y, x_779.z, x_779.x) * vec3<f32>(x_781.z, x_781.x, x_781.y)) + -(vec3<f32>(x_784.x, x_784.y, x_784.z)));
  let x_788 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_787.x, x_787.y, x_787.z, x_788.w);
  let x_790 : vec3<f32> = u_xlat16;
  let x_792 : vec4<f32> = u_xlat3;
  u_xlat16 = (vec3<f32>(x_790.x, x_790.x, x_790.x) * vec3<f32>(x_792.x, x_792.y, x_792.z));
  let x_795 : vec3<f32> = u_xlat16;
  let x_796 : vec3<f32> = u_xlat19;
  u_xlat16 = (x_795 * vec3<f32>(x_796.y, x_796.y, x_796.y));
  let x_799 : vec3<f32> = u_xlat19;
  let x_801 : vec4<f32> = vs_INTERP4;
  let x_804 : vec3<f32> = u_xlat16;
  u_xlat16 = ((vec3<f32>(x_799.x, x_799.x, x_799.x) * vec3<f32>(x_801.x, x_801.y, x_801.z)) + x_804);
  let x_806 : vec3<f32> = u_xlat19;
  let x_808 : vec3<f32> = vs_INTERP9;
  let x_810 : vec3<f32> = u_xlat16;
  u_xlat16 = ((vec3<f32>(x_806.z, x_806.z, x_806.z) * x_808) + x_810);
  let x_812 : vec3<f32> = u_xlat16;
  let x_813 : vec3<f32> = u_xlat16;
  u_xlat3.x = dot(x_812, x_813);
  let x_817 : f32 = u_xlat3.x;
  u_xlat3.x = inverseSqrt(x_817);
  let x_820 : vec3<f32> = u_xlat16;
  let x_821 : vec4<f32> = u_xlat3;
  u_xlat16 = (x_820 * vec3<f32>(x_821.x, x_821.x, x_821.x));
  let x_825 : f32 = vs_INTERP8.y;
  let x_827 : f32 = x_75.unity_MatrixV[1i].z;
  u_xlat3.x = (x_825 * x_827);
  let x_831 : f32 = x_75.unity_MatrixV[0i].z;
  let x_833 : f32 = vs_INTERP8.x;
  let x_836 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_831 * x_833) + x_836);
  let x_840 : f32 = x_75.unity_MatrixV[2i].z;
  let x_842 : f32 = vs_INTERP8.z;
  let x_845 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_840 * x_842) + x_845);
  let x_849 : f32 = u_xlat3.x;
  let x_851 : f32 = x_75.unity_MatrixV[3i].z;
  u_xlat3.x = (x_849 + x_851);
  let x_855 : f32 = u_xlat3.x;
  let x_859 : f32 = x_75.x_ProjectionParams.y;
  u_xlat3.x = (-(x_855) + -(x_859));
  let x_864 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_864, 0.0f);
  let x_868 : f32 = u_xlat3.x;
  let x_871 : f32 = x_75.unity_FogParams.x;
  u_xlat3.x = (x_868 * x_871);
  let x_881 : vec2<f32> = vs_INTERP0;
  let x_883 : f32 = x_75.x_GlobalMipBias.x;
  let x_884 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_881, x_883);
  u_xlat6 = x_884;
  let x_890 : vec2<f32> = vs_INTERP0;
  let x_892 : f32 = x_75.x_GlobalMipBias.x;
  let x_893 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_890, x_892);
  u_xlat17 = vec3<f32>(x_893.x, x_893.y, x_893.z);
  let x_895 : vec4<f32> = u_xlat6;
  u_xlat19 = (vec3<f32>(x_895.x, x_895.y, x_895.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_901 : vec3<f32> = u_xlat16;
  let x_902 : vec3<f32> = u_xlat19;
  u_xlat46 = dot(x_901, x_902);
  let x_904 : f32 = u_xlat46;
  u_xlat46 = (x_904 + 0.5f);
  let x_906 : vec3<f32> = u_xlat17;
  let x_907 : f32 = u_xlat46;
  u_xlat17 = (x_906 * vec3<f32>(x_907, x_907, x_907));
  let x_911 : f32 = u_xlat6.w;
  u_xlat46 = max(x_911, 0.00009999999747378752f);
  let x_913 : vec3<f32> = u_xlat17;
  let x_914 : f32 = u_xlat46;
  u_xlat17 = (x_913 / vec3<f32>(x_914, x_914, x_914));
  let x_918 : f32 = u_xlat5.x;
  u_xlat5.x = x_918;
  let x_921 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_921, 0.0f, 1.0f);
  let x_924 : f32 = u_xlat43;
  u_xlat43 = x_924;
  let x_925 : f32 = u_xlat43;
  u_xlat43 = clamp(x_925, 0.0f, 1.0f);
  let x_928 : f32 = u_xlat5.x;
  u_xlat46 = (-(x_928) + 1.0f);
  let x_931 : f32 = u_xlat46;
  let x_932 : f32 = u_xlat46;
  u_xlat19.x = (x_931 * x_932);
  let x_936 : f32 = u_xlat19.x;
  u_xlat19.x = max(x_936, 0.0078125f);
  let x_942 : f32 = u_xlat19.x;
  let x_944 : f32 = u_xlat19.x;
  u_xlat33 = (x_942 * x_944);
  let x_947 : f32 = u_xlat5.x;
  u_xlat5.x = (x_947 + 0.04000002145767211914f);
  let x_952 : f32 = u_xlat5.x;
  u_xlat5.x = min(x_952, 1.0f);
  let x_957 : f32 = u_xlat19.x;
  u_xlat47 = ((x_957 * 4.0f) + 2.0f);
  let x_961 : f32 = vs_INTERP6.w;
  u_xlat6.x = min(x_961, 1.0f);
  let x_965 : vec3<f32> = vs_INTERP8;
  let x_967 : vec3<f32> = x_75.x_WorldSpaceCameraPos;
  u_xlat20 = (x_965 + -(x_967));
  let x_970 : vec3<f32> = u_xlat20;
  let x_971 : vec3<f32> = u_xlat20;
  u_xlat20.x = dot(x_970, x_971);
  let x_977 : f32 = u_xlat20.x;
  let x_979 : f32 = x_250.x_MainLightShadowParams.z;
  let x_982 : f32 = x_250.x_MainLightShadowParams.w;
  u_xlat34.x = ((x_977 * x_979) + x_982);
  let x_986 : f32 = u_xlat34.x;
  u_xlat34.x = clamp(x_986, 0.0f, 1.0f);
  let x_990 : f32 = u_xlat42;
  u_xlat48 = (-(x_990) + 1.0f);
  let x_994 : f32 = u_xlat34.x;
  let x_995 : f32 = u_xlat48;
  let x_997 : f32 = u_xlat42;
  u_xlat42 = ((x_994 * x_995) + x_997);
  let x_1007 : f32 = x_1005.x_MainLightCookieTextureFormat;
  u_xlatb34.x = !((x_1007 == -1.0f));
  let x_1011 : bool = u_xlatb34.x;
  if (x_1011) {
    let x_1014 : vec3<f32> = vs_INTERP8;
    let x_1017 : vec4<f32> = x_1005.x_MainLightWorldToLight[1i];
    u_xlat34 = (vec2<f32>(x_1014.y, x_1014.y) * vec2<f32>(x_1017.x, x_1017.y));
    let x_1021 : vec4<f32> = x_1005.x_MainLightWorldToLight[0i];
    let x_1023 : vec3<f32> = vs_INTERP8;
    let x_1026 : vec2<f32> = u_xlat34;
    u_xlat34 = ((vec2<f32>(x_1021.x, x_1021.y) * vec2<f32>(x_1023.x, x_1023.x)) + x_1026);
    let x_1029 : vec4<f32> = x_1005.x_MainLightWorldToLight[2i];
    let x_1031 : vec3<f32> = vs_INTERP8;
    let x_1034 : vec2<f32> = u_xlat34;
    u_xlat34 = ((vec2<f32>(x_1029.x, x_1029.y) * vec2<f32>(x_1031.z, x_1031.z)) + x_1034);
    let x_1036 : vec2<f32> = u_xlat34;
    let x_1038 : vec4<f32> = x_1005.x_MainLightWorldToLight[3i];
    u_xlat34 = (x_1036 + vec2<f32>(x_1038.x, x_1038.y));
    let x_1041 : vec2<f32> = u_xlat34;
    u_xlat34 = ((x_1041 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1050 : vec2<f32> = u_xlat34;
    let x_1052 : f32 = x_75.x_GlobalMipBias.x;
    let x_1053 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_1050, x_1052);
    u_xlat7 = x_1053;
    let x_1055 : f32 = x_1005.x_MainLightCookieTextureFormat;
    let x_1057 : f32 = x_1005.x_MainLightCookieTextureFormat;
    let x_1059 : f32 = x_1005.x_MainLightCookieTextureFormat;
    let x_1061 : f32 = x_1005.x_MainLightCookieTextureFormat;
    let x_1062 : vec4<f32> = vec4<f32>(x_1055, x_1057, x_1059, x_1061);
    let x_1069 : vec4<bool> = (vec4<f32>(x_1062.x, x_1062.y, x_1062.z, x_1062.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb34 = vec2<bool>(x_1069.x, x_1069.y);
    let x_1072 : bool = u_xlatb34.y;
    if (x_1072) {
      let x_1077 : f32 = u_xlat7.w;
      x_1073 = x_1077;
    } else {
      let x_1080 : f32 = u_xlat7.x;
      x_1073 = x_1080;
    }
    let x_1081 : f32 = x_1073;
    u_xlat48 = x_1081;
    let x_1083 : bool = u_xlatb34.x;
    if (x_1083) {
      let x_1087 : vec4<f32> = u_xlat7;
      x_1084 = vec3<f32>(x_1087.x, x_1087.y, x_1087.z);
    } else {
      let x_1090 : f32 = u_xlat48;
      x_1084 = vec3<f32>(x_1090, x_1090, x_1090);
    }
    let x_1092 : vec3<f32> = x_1084;
    let x_1093 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1092.x, x_1092.y, x_1092.z, x_1093.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_1099 : vec4<f32> = u_xlat7;
  let x_1102 : vec4<f32> = x_75.x_MainLightColor;
  let x_1104 : vec3<f32> = (vec3<f32>(x_1099.x, x_1099.y, x_1099.z) * vec3<f32>(x_1102.x, x_1102.y, x_1102.z));
  let x_1105 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1104.x, x_1104.y, x_1104.z, x_1105.w);
  let x_1107 : vec3<f32> = u_xlat1;
  let x_1109 : vec3<f32> = u_xlat16;
  u_xlat34.x = dot(-(x_1107), x_1109);
  let x_1113 : f32 = u_xlat34.x;
  let x_1115 : f32 = u_xlat34.x;
  u_xlat34.x = (x_1113 + x_1115);
  let x_1118 : vec3<f32> = u_xlat16;
  let x_1119 : vec2<f32> = u_xlat34;
  let x_1123 : vec3<f32> = u_xlat1;
  let x_1125 : vec3<f32> = ((x_1118 * -(vec3<f32>(x_1119.x, x_1119.x, x_1119.x))) + -(x_1123));
  let x_1126 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1125.x, x_1125.y, x_1125.z, x_1126.w);
  let x_1128 : vec3<f32> = u_xlat16;
  let x_1129 : vec3<f32> = u_xlat1;
  u_xlat34.x = dot(x_1128, x_1129);
  let x_1133 : f32 = u_xlat34.x;
  u_xlat34.x = clamp(x_1133, 0.0f, 1.0f);
  let x_1137 : f32 = u_xlat34.x;
  u_xlat34.x = (-(x_1137) + 1.0f);
  let x_1142 : f32 = u_xlat34.x;
  let x_1144 : f32 = u_xlat34.x;
  u_xlat34.x = (x_1142 * x_1144);
  let x_1148 : f32 = u_xlat34.x;
  let x_1150 : f32 = u_xlat34.x;
  u_xlat34.x = (x_1148 * x_1150);
  let x_1153 : f32 = u_xlat46;
  u_xlat48 = ((-(x_1153) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1159 : f32 = u_xlat46;
  let x_1160 : f32 = u_xlat48;
  u_xlat4.w = (x_1159 * x_1160);
  let x_1163 : vec4<f32> = u_xlat4;
  u_xlat4 = (x_1163 * vec4<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f, 6.0f));
  let x_1176 : vec4<f32> = u_xlat8;
  let x_1179 : f32 = u_xlat4.w;
  let x_1180 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1176.x, x_1176.y, x_1176.z), x_1179);
  u_xlat8 = x_1180;
  let x_1182 : f32 = u_xlat8.w;
  u_xlat46 = (x_1182 + -1.0f);
  let x_1185 : f32 = x_132.unity_SpecCube0_HDR.w;
  let x_1186 : f32 = u_xlat46;
  u_xlat46 = ((x_1185 * x_1186) + 1.0f);
  let x_1189 : f32 = u_xlat46;
  u_xlat46 = max(x_1189, 0.0f);
  let x_1191 : f32 = u_xlat46;
  u_xlat46 = log2(x_1191);
  let x_1193 : f32 = u_xlat46;
  let x_1195 : f32 = x_132.unity_SpecCube0_HDR.y;
  u_xlat46 = (x_1193 * x_1195);
  let x_1197 : f32 = u_xlat46;
  u_xlat46 = exp2(x_1197);
  let x_1199 : f32 = u_xlat46;
  let x_1201 : f32 = x_132.unity_SpecCube0_HDR.x;
  u_xlat46 = (x_1199 * x_1201);
  let x_1203 : vec4<f32> = u_xlat8;
  let x_1205 : f32 = u_xlat46;
  let x_1207 : vec3<f32> = (vec3<f32>(x_1203.x, x_1203.y, x_1203.z) * vec3<f32>(x_1205, x_1205, x_1205));
  let x_1208 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1207.x, x_1207.y, x_1207.z, x_1208.w);
  let x_1210 : vec3<f32> = u_xlat19;
  let x_1212 : vec3<f32> = u_xlat19;
  let x_1216 : vec2<f32> = ((vec2<f32>(x_1210.x, x_1210.x) * vec2<f32>(x_1212.x, x_1212.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1217 : vec3<f32> = u_xlat9;
  u_xlat9 = vec3<f32>(x_1216.x, x_1216.y, x_1217.z);
  let x_1220 : f32 = u_xlat9.y;
  u_xlat46 = (1.0f / x_1220);
  let x_1223 : f32 = u_xlat5.x;
  u_xlat5.x = (x_1223 + -0.03999999910593032837f);
  let x_1228 : f32 = u_xlat34.x;
  let x_1230 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_1228 * x_1230) + 0.03999999910593032837f);
  let x_1235 : f32 = u_xlat46;
  let x_1237 : f32 = u_xlat5.x;
  u_xlat46 = (x_1235 * x_1237);
  let x_1239 : f32 = u_xlat46;
  let x_1241 : vec4<f32> = u_xlat8;
  let x_1243 : vec3<f32> = (vec3<f32>(x_1239, x_1239, x_1239) * vec3<f32>(x_1241.x, x_1241.y, x_1241.z));
  let x_1244 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1243.x, x_1243.y, x_1243.z, x_1244.w);
  let x_1246 : vec3<f32> = u_xlat17;
  let x_1247 : vec4<f32> = u_xlat4;
  let x_1250 : vec4<f32> = u_xlat8;
  u_xlat17 = ((x_1246 * vec3<f32>(x_1247.x, x_1247.y, x_1247.z)) + vec3<f32>(x_1250.x, x_1250.y, x_1250.z));
  let x_1253 : f32 = u_xlat42;
  let x_1255 : f32 = x_132.unity_LightData.z;
  u_xlat42 = (x_1253 * x_1255);
  let x_1257 : vec3<f32> = u_xlat16;
  let x_1259 : vec4<f32> = x_75.x_MainLightPosition;
  u_xlat46 = dot(x_1257, vec3<f32>(x_1259.x, x_1259.y, x_1259.z));
  let x_1262 : f32 = u_xlat46;
  u_xlat46 = clamp(x_1262, 0.0f, 1.0f);
  let x_1264 : f32 = u_xlat42;
  let x_1265 : f32 = u_xlat46;
  u_xlat42 = (x_1264 * x_1265);
  let x_1267 : f32 = u_xlat42;
  let x_1269 : vec4<f32> = u_xlat7;
  let x_1271 : vec3<f32> = (vec3<f32>(x_1267, x_1267, x_1267) * vec3<f32>(x_1269.x, x_1269.y, x_1269.z));
  let x_1272 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1271.x, x_1271.y, x_1271.z, x_1272.w);
  let x_1274 : vec3<f32> = u_xlat1;
  let x_1276 : vec4<f32> = x_75.x_MainLightPosition;
  let x_1278 : vec3<f32> = (x_1274 + vec3<f32>(x_1276.x, x_1276.y, x_1276.z));
  let x_1279 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1278.x, x_1278.y, x_1278.z, x_1279.w);
  let x_1281 : vec4<f32> = u_xlat8;
  let x_1283 : vec4<f32> = u_xlat8;
  u_xlat42 = dot(vec3<f32>(x_1281.x, x_1281.y, x_1281.z), vec3<f32>(x_1283.x, x_1283.y, x_1283.z));
  let x_1286 : f32 = u_xlat42;
  u_xlat42 = max(x_1286, 1.17549435e-38f);
  let x_1289 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_1289);
  let x_1291 : f32 = u_xlat42;
  let x_1293 : vec4<f32> = u_xlat8;
  let x_1295 : vec3<f32> = (vec3<f32>(x_1291, x_1291, x_1291) * vec3<f32>(x_1293.x, x_1293.y, x_1293.z));
  let x_1296 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1295.x, x_1295.y, x_1295.z, x_1296.w);
  let x_1298 : vec3<f32> = u_xlat16;
  let x_1299 : vec4<f32> = u_xlat8;
  u_xlat42 = dot(x_1298, vec3<f32>(x_1299.x, x_1299.y, x_1299.z));
  let x_1302 : f32 = u_xlat42;
  u_xlat42 = clamp(x_1302, 0.0f, 1.0f);
  let x_1305 : vec4<f32> = x_75.x_MainLightPosition;
  let x_1307 : vec4<f32> = u_xlat8;
  u_xlat46 = dot(vec3<f32>(x_1305.x, x_1305.y, x_1305.z), vec3<f32>(x_1307.x, x_1307.y, x_1307.z));
  let x_1310 : f32 = u_xlat46;
  u_xlat46 = clamp(x_1310, 0.0f, 1.0f);
  let x_1312 : f32 = u_xlat42;
  let x_1313 : f32 = u_xlat42;
  u_xlat42 = (x_1312 * x_1313);
  let x_1315 : f32 = u_xlat42;
  let x_1317 : f32 = u_xlat9.x;
  u_xlat42 = ((x_1315 * x_1317) + 1.00001001358032226562f);
  let x_1321 : f32 = u_xlat46;
  let x_1322 : f32 = u_xlat46;
  u_xlat46 = (x_1321 * x_1322);
  let x_1324 : f32 = u_xlat42;
  let x_1325 : f32 = u_xlat42;
  u_xlat42 = (x_1324 * x_1325);
  let x_1327 : f32 = u_xlat46;
  u_xlat46 = max(x_1327, 0.10000000149011611938f);
  let x_1330 : f32 = u_xlat42;
  let x_1331 : f32 = u_xlat46;
  u_xlat42 = (x_1330 * x_1331);
  let x_1333 : f32 = u_xlat47;
  let x_1334 : f32 = u_xlat42;
  u_xlat42 = (x_1333 * x_1334);
  let x_1336 : f32 = u_xlat33;
  let x_1337 : f32 = u_xlat42;
  u_xlat42 = (x_1336 / x_1337);
  let x_1339 : f32 = u_xlat42;
  let x_1343 : vec4<f32> = u_xlat4;
  let x_1345 : vec3<f32> = ((vec3<f32>(x_1339, x_1339, x_1339) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + vec3<f32>(x_1343.x, x_1343.y, x_1343.z));
  let x_1346 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1345.x, x_1345.y, x_1345.z, x_1346.w);
  let x_1348 : vec4<f32> = u_xlat7;
  let x_1350 : vec4<f32> = u_xlat8;
  let x_1352 : vec3<f32> = (vec3<f32>(x_1348.x, x_1348.y, x_1348.z) * vec3<f32>(x_1350.x, x_1350.y, x_1350.z));
  let x_1353 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1352.x, x_1352.y, x_1352.z, x_1353.w);
  let x_1356 : f32 = x_75.x_AdditionalLightsCount.x;
  let x_1358 : f32 = x_132.unity_LightData.y;
  u_xlat42 = min(x_1356, x_1358);
  let x_1360 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_1360));
  let x_1364 : f32 = u_xlat20.x;
  let x_1367 : f32 = x_250.x_AdditionalShadowFadeParams.x;
  let x_1370 : f32 = x_250.x_AdditionalShadowFadeParams.y;
  u_xlat46 = ((x_1364 * x_1367) + x_1370);
  let x_1372 : f32 = u_xlat46;
  u_xlat46 = clamp(x_1372, 0.0f, 1.0f);
  let x_1376 : f32 = x_1005.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1378 : f32 = x_1005.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1380 : f32 = x_1005.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1382 : f32 = x_1005.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1383 : vec4<f32> = vec4<f32>(x_1376, x_1378, x_1380, x_1382);
  let x_1390 : vec4<bool> = (vec4<f32>(x_1383.x, x_1383.y, x_1383.z, x_1383.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_1390.x, x_1390.y);
  u_xlat20.x = 0.0f;
  u_xlat20.y = 0.0f;
  u_xlat20.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1401 : u32 = u_xlatu_loop_1;
    let x_1402 : u32 = u_xlatu42;
    if ((x_1401 < x_1402)) {
    } else {
      break;
    }
    let x_1405 : u32 = u_xlatu_loop_1;
    u_xlatu8 = (x_1405 >> 2u);
    let x_1408 : u32 = u_xlatu_loop_1;
    u_xlati22 = bitcast<i32>((x_1408 & 3u));
    let x_1411 : u32 = u_xlatu8;
    let x_1414 : vec4<f32> = x_132.unity_LightIndices[bitcast<i32>(x_1411)];
    let x_1424 : i32 = u_xlati22;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1429 : vec4<u32> = indexable[x_1424];
    u_xlat8.x = dot(x_1414, bitcast<vec4<f32>>(x_1429));
    let x_1435 : f32 = u_xlat8.x;
    u_xlati8 = i32(x_1435);
    let x_1438 : vec3<f32> = vs_INTERP8;
    let x_1449 : i32 = u_xlati8;
    let x_1451 : vec4<f32> = x_1448.x_AdditionalLightsPosition[x_1449];
    let x_1454 : i32 = u_xlati8;
    let x_1456 : vec4<f32> = x_1448.x_AdditionalLightsPosition[x_1454];
    u_xlat22 = ((-(x_1438) * vec3<f32>(x_1451.w, x_1451.w, x_1451.w)) + vec3<f32>(x_1456.x, x_1456.y, x_1456.z));
    let x_1460 : vec3<f32> = u_xlat22;
    let x_1461 : vec3<f32> = u_xlat22;
    u_xlat23 = dot(x_1460, x_1461);
    let x_1463 : f32 = u_xlat23;
    u_xlat23 = max(x_1463, 0.00006103515625f);
    let x_1467 : f32 = u_xlat23;
    u_xlat37 = inverseSqrt(x_1467);
    let x_1470 : vec3<f32> = u_xlat22;
    let x_1471 : f32 = u_xlat37;
    u_xlat10 = (x_1470 * vec3<f32>(x_1471, x_1471, x_1471));
    let x_1475 : f32 = u_xlat23;
    u_xlat51 = (1.0f / x_1475);
    let x_1477 : f32 = u_xlat23;
    let x_1478 : i32 = u_xlati8;
    let x_1480 : f32 = x_1448.x_AdditionalLightsAttenuation[x_1478].x;
    u_xlat23 = (x_1477 * x_1480);
    let x_1482 : f32 = u_xlat23;
    let x_1484 : f32 = u_xlat23;
    u_xlat23 = ((-(x_1482) * x_1484) + 1.0f);
    let x_1487 : f32 = u_xlat23;
    u_xlat23 = max(x_1487, 0.0f);
    let x_1489 : f32 = u_xlat23;
    let x_1490 : f32 = u_xlat23;
    u_xlat23 = (x_1489 * x_1490);
    let x_1492 : f32 = u_xlat23;
    let x_1493 : f32 = u_xlat51;
    u_xlat23 = (x_1492 * x_1493);
    let x_1495 : i32 = u_xlati8;
    let x_1497 : vec4<f32> = x_1448.x_AdditionalLightsSpotDir[x_1495];
    let x_1499 : vec3<f32> = u_xlat10;
    u_xlat51 = dot(vec3<f32>(x_1497.x, x_1497.y, x_1497.z), x_1499);
    let x_1501 : f32 = u_xlat51;
    let x_1502 : i32 = u_xlati8;
    let x_1504 : f32 = x_1448.x_AdditionalLightsAttenuation[x_1502].z;
    let x_1506 : i32 = u_xlati8;
    let x_1508 : f32 = x_1448.x_AdditionalLightsAttenuation[x_1506].w;
    u_xlat51 = ((x_1501 * x_1504) + x_1508);
    let x_1510 : f32 = u_xlat51;
    u_xlat51 = clamp(x_1510, 0.0f, 1.0f);
    let x_1512 : f32 = u_xlat51;
    let x_1513 : f32 = u_xlat51;
    u_xlat51 = (x_1512 * x_1513);
    let x_1515 : f32 = u_xlat51;
    let x_1516 : f32 = u_xlat23;
    u_xlat23 = (x_1515 * x_1516);
    let x_1520 : i32 = u_xlati8;
    let x_1522 : f32 = x_250.x_AdditionalShadowParams[x_1520].w;
    u_xlati51 = i32(x_1522);
    let x_1525 : i32 = u_xlati51;
    u_xlatb52 = (x_1525 >= 0i);
    let x_1527 : bool = u_xlatb52;
    if (x_1527) {
      let x_1531 : i32 = u_xlati8;
      let x_1533 : f32 = x_250.x_AdditionalShadowParams[x_1531].z;
      u_xlatb52 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1533, x_1533, x_1533, x_1533))));
      let x_1537 : bool = u_xlatb52;
      if (x_1537) {
        let x_1541 : vec3<f32> = u_xlat10;
        let x_1544 : vec3<f32> = u_xlat10;
        let x_1547 : vec4<bool> = (abs(vec4<f32>(x_1541.z, x_1541.z, x_1541.y, x_1541.z)) >= abs(vec4<f32>(x_1544.x, x_1544.y, x_1544.x, x_1544.x)));
        let x_1549 : vec3<bool> = vec3<bool>(x_1547.x, x_1547.y, x_1547.z);
        let x_1550 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1549.x, x_1549.y, x_1549.z, x_1550.w);
        let x_1553 : bool = u_xlatb11.y;
        let x_1555 : bool = u_xlatb11.x;
        u_xlatb52 = (x_1553 & x_1555);
        let x_1557 : vec3<f32> = u_xlat10;
        let x_1560 : vec4<bool> = (-(vec4<f32>(x_1557.z, x_1557.y, x_1557.z, x_1557.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1561 : vec3<bool> = vec3<bool>(x_1560.x, x_1560.y, x_1560.w);
        let x_1562 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1561.x, x_1561.y, x_1562.z, x_1561.z);
        let x_1566 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1566);
        let x_1571 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1571);
        let x_1576 : bool = u_xlatb11.w;
        u_xlat53 = select(0.0f, 1.0f, x_1576);
        let x_1580 : bool = u_xlatb11.z;
        if (x_1580) {
          let x_1585 : f32 = u_xlat11.y;
          x_1581 = x_1585;
        } else {
          let x_1587 : f32 = u_xlat53;
          x_1581 = x_1587;
        }
        let x_1588 : f32 = x_1581;
        u_xlat25.x = x_1588;
        let x_1591 : bool = u_xlatb52;
        if (x_1591) {
          let x_1596 : f32 = u_xlat11.x;
          x_1592 = x_1596;
        } else {
          let x_1599 : f32 = u_xlat25.x;
          x_1592 = x_1599;
        }
        let x_1600 : f32 = x_1592;
        u_xlat52 = x_1600;
        let x_1601 : i32 = u_xlati8;
        let x_1603 : f32 = x_250.x_AdditionalShadowParams[x_1601].w;
        u_xlat11.x = trunc(x_1603);
        let x_1606 : f32 = u_xlat52;
        let x_1608 : f32 = u_xlat11.x;
        u_xlat52 = (x_1606 + x_1608);
        let x_1610 : f32 = u_xlat52;
        u_xlati51 = i32(x_1610);
      }
      let x_1612 : i32 = u_xlati51;
      u_xlati51 = (x_1612 << bitcast<u32>(2i));
      let x_1614 : vec3<f32> = vs_INTERP8;
      let x_1617 : i32 = u_xlati51;
      let x_1620 : i32 = u_xlati51;
      let x_1624 : vec4<f32> = x_250.x_AdditionalLightsWorldToShadow[((x_1617 + 1i) / 4i)][((x_1620 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1614.y, x_1614.y, x_1614.y, x_1614.y) * x_1624);
      let x_1626 : i32 = u_xlati51;
      let x_1628 : i32 = u_xlati51;
      let x_1631 : vec4<f32> = x_250.x_AdditionalLightsWorldToShadow[(x_1626 / 4i)][(x_1628 % 4i)];
      let x_1632 : vec3<f32> = vs_INTERP8;
      let x_1635 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1631 * vec4<f32>(x_1632.x, x_1632.x, x_1632.x, x_1632.x)) + x_1635);
      let x_1637 : i32 = u_xlati51;
      let x_1640 : i32 = u_xlati51;
      let x_1644 : vec4<f32> = x_250.x_AdditionalLightsWorldToShadow[((x_1637 + 2i) / 4i)][((x_1640 + 2i) % 4i)];
      let x_1645 : vec3<f32> = vs_INTERP8;
      let x_1648 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1644 * vec4<f32>(x_1645.z, x_1645.z, x_1645.z, x_1645.z)) + x_1648);
      let x_1650 : vec4<f32> = u_xlat11;
      let x_1651 : i32 = u_xlati51;
      let x_1654 : i32 = u_xlati51;
      let x_1658 : vec4<f32> = x_250.x_AdditionalLightsWorldToShadow[((x_1651 + 3i) / 4i)][((x_1654 + 3i) % 4i)];
      u_xlat11 = (x_1650 + x_1658);
      let x_1660 : vec4<f32> = u_xlat11;
      let x_1662 : vec4<f32> = u_xlat11;
      let x_1664 : vec3<f32> = (vec3<f32>(x_1660.x, x_1660.y, x_1660.z) / vec3<f32>(x_1662.w, x_1662.w, x_1662.w));
      let x_1665 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1664.x, x_1664.y, x_1664.z, x_1665.w);
      let x_1668 : vec4<f32> = u_xlat11;
      let x_1669 : vec2<f32> = vec2<f32>(x_1668.x, x_1668.y);
      let x_1671 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1669.x, x_1669.y, x_1671);
      let x_1679 : vec3<f32> = txVec1;
      let x_1681 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1679.xy, x_1679.z);
      u_xlat51 = x_1681;
      let x_1682 : i32 = u_xlati8;
      let x_1684 : f32 = x_250.x_AdditionalShadowParams[x_1682].x;
      u_xlat52 = (1.0f + -(x_1684));
      let x_1687 : f32 = u_xlat51;
      let x_1688 : i32 = u_xlati8;
      let x_1690 : f32 = x_250.x_AdditionalShadowParams[x_1688].x;
      let x_1692 : f32 = u_xlat52;
      u_xlat51 = ((x_1687 * x_1690) + x_1692);
      let x_1695 : f32 = u_xlat11.z;
      u_xlatb52 = (0.0f >= x_1695);
      let x_1698 : f32 = u_xlat11.z;
      u_xlatb11.x = (x_1698 >= 1.0f);
      let x_1701 : bool = u_xlatb52;
      let x_1703 : bool = u_xlatb11.x;
      u_xlatb52 = (x_1701 | x_1703);
      let x_1705 : bool = u_xlatb52;
      let x_1706 : f32 = u_xlat51;
      u_xlat51 = select(x_1706, 1.0f, x_1705);
    } else {
      u_xlat51 = 1.0f;
    }
    let x_1709 : f32 = u_xlat51;
    u_xlat52 = (-(x_1709) + 1.0f);
    let x_1712 : f32 = u_xlat46;
    let x_1713 : f32 = u_xlat52;
    let x_1715 : f32 = u_xlat51;
    u_xlat51 = ((x_1712 * x_1713) + x_1715);
    let x_1718 : i32 = u_xlati8;
    u_xlati52 = (1i << bitcast<u32>((x_1718 & 31i)));
    let x_1722 : i32 = u_xlati52;
    let x_1725 : f32 = x_1005.x_AdditionalLightsCookieEnableBits;
    u_xlati52 = bitcast<i32>((bitcast<u32>(x_1722) & bitcast<u32>(x_1725)));
    let x_1729 : i32 = u_xlati52;
    if ((x_1729 != 0i)) {
      let x_1733 : i32 = u_xlati8;
      let x_1735 : f32 = x_1005.x_AdditionalLightsLightTypes[x_1733].el;
      u_xlati52 = i32(x_1735);
      let x_1738 : i32 = u_xlati52;
      u_xlati11 = select(1i, 0i, (x_1738 != 0i));
      let x_1742 : i32 = u_xlati8;
      u_xlati25 = (x_1742 << bitcast<u32>(2i));
      let x_1744 : i32 = u_xlati11;
      if ((x_1744 != 0i)) {
        let x_1748 : vec3<f32> = vs_INTERP8;
        let x_1750 : i32 = u_xlati25;
        let x_1753 : i32 = u_xlati25;
        let x_1757 : vec4<f32> = x_1005.x_AdditionalLightsWorldToLights[((x_1750 + 1i) / 4i)][((x_1753 + 1i) % 4i)];
        let x_1759 : vec3<f32> = (vec3<f32>(x_1748.y, x_1748.y, x_1748.y) * vec3<f32>(x_1757.x, x_1757.y, x_1757.w));
        let x_1760 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1759.x, x_1760.y, x_1759.y, x_1759.z);
        let x_1762 : i32 = u_xlati25;
        let x_1764 : i32 = u_xlati25;
        let x_1767 : vec4<f32> = x_1005.x_AdditionalLightsWorldToLights[(x_1762 / 4i)][(x_1764 % 4i)];
        let x_1769 : vec3<f32> = vs_INTERP8;
        let x_1772 : vec4<f32> = u_xlat11;
        let x_1774 : vec3<f32> = ((vec3<f32>(x_1767.x, x_1767.y, x_1767.w) * vec3<f32>(x_1769.x, x_1769.x, x_1769.x)) + vec3<f32>(x_1772.x, x_1772.z, x_1772.w));
        let x_1775 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1774.x, x_1775.y, x_1774.y, x_1774.z);
        let x_1777 : i32 = u_xlati25;
        let x_1780 : i32 = u_xlati25;
        let x_1784 : vec4<f32> = x_1005.x_AdditionalLightsWorldToLights[((x_1777 + 2i) / 4i)][((x_1780 + 2i) % 4i)];
        let x_1786 : vec3<f32> = vs_INTERP8;
        let x_1789 : vec4<f32> = u_xlat11;
        let x_1791 : vec3<f32> = ((vec3<f32>(x_1784.x, x_1784.y, x_1784.w) * vec3<f32>(x_1786.z, x_1786.z, x_1786.z)) + vec3<f32>(x_1789.x, x_1789.z, x_1789.w));
        let x_1792 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1791.x, x_1792.y, x_1791.y, x_1791.z);
        let x_1794 : vec4<f32> = u_xlat11;
        let x_1796 : i32 = u_xlati25;
        let x_1799 : i32 = u_xlati25;
        let x_1803 : vec4<f32> = x_1005.x_AdditionalLightsWorldToLights[((x_1796 + 3i) / 4i)][((x_1799 + 3i) % 4i)];
        let x_1805 : vec3<f32> = (vec3<f32>(x_1794.x, x_1794.z, x_1794.w) + vec3<f32>(x_1803.x, x_1803.y, x_1803.w));
        let x_1806 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1805.x, x_1806.y, x_1805.y, x_1805.z);
        let x_1808 : vec4<f32> = u_xlat11;
        let x_1810 : vec4<f32> = u_xlat11;
        let x_1812 : vec2<f32> = (vec2<f32>(x_1808.x, x_1808.z) / vec2<f32>(x_1810.w, x_1810.w));
        let x_1813 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1812.x, x_1813.y, x_1812.y, x_1813.w);
        let x_1815 : vec4<f32> = u_xlat11;
        let x_1818 : vec2<f32> = ((vec2<f32>(x_1815.x, x_1815.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1819 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1818.x, x_1819.y, x_1818.y, x_1819.w);
        let x_1821 : vec4<f32> = u_xlat11;
        let x_1825 : vec2<f32> = clamp(vec2<f32>(x_1821.x, x_1821.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1826 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1825.x, x_1826.y, x_1825.y, x_1826.w);
        let x_1828 : i32 = u_xlati8;
        let x_1830 : vec4<f32> = x_1005.x_AdditionalLightsCookieAtlasUVRects[x_1828];
        let x_1832 : vec4<f32> = u_xlat11;
        let x_1835 : i32 = u_xlati8;
        let x_1837 : vec4<f32> = x_1005.x_AdditionalLightsCookieAtlasUVRects[x_1835];
        let x_1839 : vec2<f32> = ((vec2<f32>(x_1830.x, x_1830.y) * vec2<f32>(x_1832.x, x_1832.z)) + vec2<f32>(x_1837.z, x_1837.w));
        let x_1840 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1839.x, x_1840.y, x_1839.y, x_1840.w);
      } else {
        let x_1843 : i32 = u_xlati52;
        u_xlatb52 = (x_1843 == 1i);
        let x_1845 : bool = u_xlatb52;
        u_xlati52 = select(0i, 1i, x_1845);
        let x_1847 : i32 = u_xlati52;
        if ((x_1847 != 0i)) {
          let x_1852 : vec3<f32> = vs_INTERP8;
          let x_1854 : i32 = u_xlati25;
          let x_1857 : i32 = u_xlati25;
          let x_1861 : vec4<f32> = x_1005.x_AdditionalLightsWorldToLights[((x_1854 + 1i) / 4i)][((x_1857 + 1i) % 4i)];
          let x_1863 : vec2<f32> = (vec2<f32>(x_1852.y, x_1852.y) * vec2<f32>(x_1861.x, x_1861.y));
          let x_1864 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1863.x, x_1863.y, x_1864.z, x_1864.w);
          let x_1866 : i32 = u_xlati25;
          let x_1868 : i32 = u_xlati25;
          let x_1871 : vec4<f32> = x_1005.x_AdditionalLightsWorldToLights[(x_1866 / 4i)][(x_1868 % 4i)];
          let x_1873 : vec3<f32> = vs_INTERP8;
          let x_1876 : vec4<f32> = u_xlat12;
          let x_1878 : vec2<f32> = ((vec2<f32>(x_1871.x, x_1871.y) * vec2<f32>(x_1873.x, x_1873.x)) + vec2<f32>(x_1876.x, x_1876.y));
          let x_1879 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1878.x, x_1878.y, x_1879.z, x_1879.w);
          let x_1881 : i32 = u_xlati25;
          let x_1884 : i32 = u_xlati25;
          let x_1888 : vec4<f32> = x_1005.x_AdditionalLightsWorldToLights[((x_1881 + 2i) / 4i)][((x_1884 + 2i) % 4i)];
          let x_1890 : vec3<f32> = vs_INTERP8;
          let x_1893 : vec4<f32> = u_xlat12;
          let x_1895 : vec2<f32> = ((vec2<f32>(x_1888.x, x_1888.y) * vec2<f32>(x_1890.z, x_1890.z)) + vec2<f32>(x_1893.x, x_1893.y));
          let x_1896 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1895.x, x_1895.y, x_1896.z, x_1896.w);
          let x_1898 : vec4<f32> = u_xlat12;
          let x_1900 : i32 = u_xlati25;
          let x_1903 : i32 = u_xlati25;
          let x_1907 : vec4<f32> = x_1005.x_AdditionalLightsWorldToLights[((x_1900 + 3i) / 4i)][((x_1903 + 3i) % 4i)];
          let x_1909 : vec2<f32> = (vec2<f32>(x_1898.x, x_1898.y) + vec2<f32>(x_1907.x, x_1907.y));
          let x_1910 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1909.x, x_1909.y, x_1910.z, x_1910.w);
          let x_1912 : vec4<f32> = u_xlat12;
          let x_1915 : vec2<f32> = ((vec2<f32>(x_1912.x, x_1912.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1916 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1915.x, x_1915.y, x_1916.z, x_1916.w);
          let x_1918 : vec4<f32> = u_xlat12;
          let x_1920 : vec2<f32> = fract(vec2<f32>(x_1918.x, x_1918.y));
          let x_1921 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1920.x, x_1920.y, x_1921.z, x_1921.w);
          let x_1923 : i32 = u_xlati8;
          let x_1925 : vec4<f32> = x_1005.x_AdditionalLightsCookieAtlasUVRects[x_1923];
          let x_1927 : vec4<f32> = u_xlat12;
          let x_1930 : i32 = u_xlati8;
          let x_1932 : vec4<f32> = x_1005.x_AdditionalLightsCookieAtlasUVRects[x_1930];
          let x_1934 : vec2<f32> = ((vec2<f32>(x_1925.x, x_1925.y) * vec2<f32>(x_1927.x, x_1927.y)) + vec2<f32>(x_1932.z, x_1932.w));
          let x_1935 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1934.x, x_1935.y, x_1934.y, x_1935.w);
        } else {
          let x_1938 : vec3<f32> = vs_INTERP8;
          let x_1940 : i32 = u_xlati25;
          let x_1943 : i32 = u_xlati25;
          let x_1947 : vec4<f32> = x_1005.x_AdditionalLightsWorldToLights[((x_1940 + 1i) / 4i)][((x_1943 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1938.y, x_1938.y, x_1938.y, x_1938.y) * x_1947);
          let x_1949 : i32 = u_xlati25;
          let x_1951 : i32 = u_xlati25;
          let x_1954 : vec4<f32> = x_1005.x_AdditionalLightsWorldToLights[(x_1949 / 4i)][(x_1951 % 4i)];
          let x_1955 : vec3<f32> = vs_INTERP8;
          let x_1958 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1954 * vec4<f32>(x_1955.x, x_1955.x, x_1955.x, x_1955.x)) + x_1958);
          let x_1960 : i32 = u_xlati25;
          let x_1963 : i32 = u_xlati25;
          let x_1967 : vec4<f32> = x_1005.x_AdditionalLightsWorldToLights[((x_1960 + 2i) / 4i)][((x_1963 + 2i) % 4i)];
          let x_1968 : vec3<f32> = vs_INTERP8;
          let x_1971 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1967 * vec4<f32>(x_1968.z, x_1968.z, x_1968.z, x_1968.z)) + x_1971);
          let x_1973 : vec4<f32> = u_xlat12;
          let x_1974 : i32 = u_xlati25;
          let x_1977 : i32 = u_xlati25;
          let x_1981 : vec4<f32> = x_1005.x_AdditionalLightsWorldToLights[((x_1974 + 3i) / 4i)][((x_1977 + 3i) % 4i)];
          u_xlat12 = (x_1973 + x_1981);
          let x_1983 : vec4<f32> = u_xlat12;
          let x_1985 : vec4<f32> = u_xlat12;
          let x_1987 : vec3<f32> = (vec3<f32>(x_1983.x, x_1983.y, x_1983.z) / vec3<f32>(x_1985.w, x_1985.w, x_1985.w));
          let x_1988 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1987.x, x_1987.y, x_1987.z, x_1988.w);
          let x_1990 : vec4<f32> = u_xlat12;
          let x_1992 : vec4<f32> = u_xlat12;
          u_xlat52 = dot(vec3<f32>(x_1990.x, x_1990.y, x_1990.z), vec3<f32>(x_1992.x, x_1992.y, x_1992.z));
          let x_1995 : f32 = u_xlat52;
          u_xlat52 = inverseSqrt(x_1995);
          let x_1997 : f32 = u_xlat52;
          let x_1999 : vec4<f32> = u_xlat12;
          let x_2001 : vec3<f32> = (vec3<f32>(x_1997, x_1997, x_1997) * vec3<f32>(x_1999.x, x_1999.y, x_1999.z));
          let x_2002 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2001.x, x_2001.y, x_2001.z, x_2002.w);
          let x_2004 : vec4<f32> = u_xlat12;
          u_xlat52 = dot(abs(vec3<f32>(x_2004.x, x_2004.y, x_2004.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2009 : f32 = u_xlat52;
          u_xlat52 = max(x_2009, 0.00000099999999747524f);
          let x_2012 : f32 = u_xlat52;
          u_xlat52 = (1.0f / x_2012);
          let x_2015 : f32 = u_xlat52;
          let x_2017 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_2015, x_2015, x_2015) * vec3<f32>(x_2017.z, x_2017.x, x_2017.y));
          let x_2021 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2021);
          let x_2025 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2025, 0.0f, 1.0f);
          let x_2030 : vec3<f32> = u_xlat13;
          let x_2032 : vec4<bool> = (vec4<f32>(x_2030.y, x_2030.y, x_2030.z, x_2030.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_2033 : vec2<bool> = vec2<bool>(x_2032.x, x_2032.z);
          let x_2034 : vec3<bool> = u_xlatb25;
          u_xlatb25 = vec3<bool>(x_2033.x, x_2034.y, x_2033.y);
          let x_2037 : bool = u_xlatb25.x;
          if (x_2037) {
            let x_2042 : f32 = u_xlat13.x;
            x_2038 = x_2042;
          } else {
            let x_2045 : f32 = u_xlat13.x;
            x_2038 = -(x_2045);
          }
          let x_2047 : f32 = x_2038;
          u_xlat25.x = x_2047;
          let x_2050 : bool = u_xlatb25.z;
          if (x_2050) {
            let x_2055 : f32 = u_xlat13.x;
            x_2051 = x_2055;
          } else {
            let x_2058 : f32 = u_xlat13.x;
            x_2051 = -(x_2058);
          }
          let x_2060 : f32 = x_2051;
          u_xlat25.z = x_2060;
          let x_2062 : vec4<f32> = u_xlat12;
          let x_2064 : f32 = u_xlat52;
          let x_2067 : vec3<f32> = u_xlat25;
          let x_2069 : vec2<f32> = ((vec2<f32>(x_2062.x, x_2062.y) * vec2<f32>(x_2064, x_2064)) + vec2<f32>(x_2067.x, x_2067.z));
          let x_2070 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_2069.x, x_2070.y, x_2069.y);
          let x_2072 : vec3<f32> = u_xlat25;
          let x_2075 : vec2<f32> = ((vec2<f32>(x_2072.x, x_2072.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2076 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_2075.x, x_2076.y, x_2075.y);
          let x_2078 : vec3<f32> = u_xlat25;
          let x_2082 : vec2<f32> = clamp(vec2<f32>(x_2078.x, x_2078.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2083 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_2082.x, x_2083.y, x_2082.y);
          let x_2085 : i32 = u_xlati8;
          let x_2087 : vec4<f32> = x_1005.x_AdditionalLightsCookieAtlasUVRects[x_2085];
          let x_2089 : vec3<f32> = u_xlat25;
          let x_2092 : i32 = u_xlati8;
          let x_2094 : vec4<f32> = x_1005.x_AdditionalLightsCookieAtlasUVRects[x_2092];
          let x_2096 : vec2<f32> = ((vec2<f32>(x_2087.x, x_2087.y) * vec2<f32>(x_2089.x, x_2089.z)) + vec2<f32>(x_2094.z, x_2094.w));
          let x_2097 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2096.x, x_2097.y, x_2096.y, x_2097.w);
        }
      }
      let x_2104 : vec4<f32> = u_xlat11;
      let x_2106 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_2104.x, x_2104.z), 0.0f);
      u_xlat11 = x_2106;
      let x_2108 : bool = u_xlatb5.y;
      if (x_2108) {
        let x_2113 : f32 = u_xlat11.w;
        x_2109 = x_2113;
      } else {
        let x_2116 : f32 = u_xlat11.x;
        x_2109 = x_2116;
      }
      let x_2117 : f32 = x_2109;
      u_xlat52 = x_2117;
      let x_2119 : bool = u_xlatb5.x;
      if (x_2119) {
        let x_2123 : vec4<f32> = u_xlat11;
        x_2120 = vec3<f32>(x_2123.x, x_2123.y, x_2123.z);
      } else {
        let x_2126 : f32 = u_xlat52;
        x_2120 = vec3<f32>(x_2126, x_2126, x_2126);
      }
      let x_2128 : vec3<f32> = x_2120;
      let x_2129 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2128.x, x_2128.y, x_2128.z, x_2129.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2135 : vec4<f32> = u_xlat11;
    let x_2137 : i32 = u_xlati8;
    let x_2139 : vec4<f32> = x_1448.x_AdditionalLightsColor[x_2137];
    let x_2141 : vec3<f32> = (vec3<f32>(x_2135.x, x_2135.y, x_2135.z) * vec3<f32>(x_2139.x, x_2139.y, x_2139.z));
    let x_2142 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2141.x, x_2141.y, x_2141.z, x_2142.w);
    let x_2144 : f32 = u_xlat51;
    let x_2145 : f32 = u_xlat23;
    u_xlat8.x = (x_2144 * x_2145);
    let x_2148 : vec3<f32> = u_xlat16;
    let x_2149 : vec3<f32> = u_xlat10;
    u_xlat23 = dot(x_2148, x_2149);
    let x_2151 : f32 = u_xlat23;
    u_xlat23 = clamp(x_2151, 0.0f, 1.0f);
    let x_2154 : f32 = u_xlat8.x;
    let x_2155 : f32 = u_xlat23;
    u_xlat8.x = (x_2154 * x_2155);
    let x_2158 : vec4<f32> = u_xlat8;
    let x_2160 : vec4<f32> = u_xlat11;
    let x_2162 : vec3<f32> = (vec3<f32>(x_2158.x, x_2158.x, x_2158.x) * vec3<f32>(x_2160.x, x_2160.y, x_2160.z));
    let x_2163 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2162.x, x_2162.y, x_2162.z, x_2163.w);
    let x_2165 : vec3<f32> = u_xlat22;
    let x_2166 : f32 = u_xlat37;
    let x_2169 : vec3<f32> = u_xlat1;
    let x_2170 : vec3<f32> = ((x_2165 * vec3<f32>(x_2166, x_2166, x_2166)) + x_2169);
    let x_2171 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2170.x, x_2170.y, x_2170.z, x_2171.w);
    let x_2174 : vec4<f32> = u_xlat8;
    let x_2176 : vec4<f32> = u_xlat8;
    u_xlat50 = dot(vec3<f32>(x_2174.x, x_2174.y, x_2174.z), vec3<f32>(x_2176.x, x_2176.y, x_2176.z));
    let x_2179 : f32 = u_xlat50;
    u_xlat50 = max(x_2179, 1.17549435e-38f);
    let x_2181 : f32 = u_xlat50;
    u_xlat50 = inverseSqrt(x_2181);
    let x_2183 : f32 = u_xlat50;
    let x_2185 : vec4<f32> = u_xlat8;
    let x_2187 : vec3<f32> = (vec3<f32>(x_2183, x_2183, x_2183) * vec3<f32>(x_2185.x, x_2185.y, x_2185.z));
    let x_2188 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2187.x, x_2187.y, x_2187.z, x_2188.w);
    let x_2190 : vec3<f32> = u_xlat16;
    let x_2191 : vec4<f32> = u_xlat8;
    u_xlat8.w = dot(x_2190, vec3<f32>(x_2191.x, x_2191.y, x_2191.z));
    let x_2196 : f32 = u_xlat8.w;
    u_xlat8.w = clamp(x_2196, 0.0f, 1.0f);
    let x_2199 : vec3<f32> = u_xlat10;
    let x_2200 : vec4<f32> = u_xlat8;
    u_xlat8.x = dot(x_2199, vec3<f32>(x_2200.x, x_2200.y, x_2200.z));
    let x_2205 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_2205, 0.0f, 1.0f);
    let x_2208 : vec4<f32> = u_xlat8;
    let x_2210 : vec4<f32> = u_xlat8;
    let x_2212 : vec2<f32> = (vec2<f32>(x_2208.x, x_2208.w) * vec2<f32>(x_2210.x, x_2210.w));
    let x_2213 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2212.x, x_2212.y, x_2213.z, x_2213.w);
    let x_2216 : f32 = u_xlat8.y;
    let x_2218 : f32 = u_xlat9.x;
    u_xlat22.x = ((x_2216 * x_2218) + 1.00001001358032226562f);
    let x_2223 : f32 = u_xlat22.x;
    let x_2225 : f32 = u_xlat22.x;
    u_xlat22.x = (x_2223 * x_2225);
    let x_2229 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_2229, 0.10000000149011611938f);
    let x_2233 : f32 = u_xlat8.x;
    let x_2235 : f32 = u_xlat22.x;
    u_xlat8.x = (x_2233 * x_2235);
    let x_2238 : f32 = u_xlat47;
    let x_2240 : f32 = u_xlat8.x;
    u_xlat8.x = (x_2238 * x_2240);
    let x_2243 : f32 = u_xlat33;
    let x_2245 : f32 = u_xlat8.x;
    u_xlat8.x = (x_2243 / x_2245);
    let x_2248 : vec4<f32> = u_xlat8;
    let x_2251 : vec4<f32> = u_xlat4;
    let x_2253 : vec3<f32> = ((vec3<f32>(x_2248.x, x_2248.x, x_2248.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + vec3<f32>(x_2251.x, x_2251.y, x_2251.z));
    let x_2254 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2253.x, x_2253.y, x_2253.z, x_2254.w);
    let x_2256 : vec4<f32> = u_xlat8;
    let x_2258 : vec4<f32> = u_xlat11;
    let x_2261 : vec3<f32> = u_xlat20;
    u_xlat20 = ((vec3<f32>(x_2256.x, x_2256.y, x_2256.z) * vec3<f32>(x_2258.x, x_2258.y, x_2258.z)) + x_2261);

    continuing {
      let x_2263 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2263 + bitcast<u32>(1i));
    }
  }
  let x_2265 : vec3<f32> = u_xlat17;
  let x_2266 : vec4<f32> = u_xlat6;
  let x_2269 : vec4<f32> = u_xlat7;
  u_xlat1 = ((x_2265 * vec3<f32>(x_2266.x, x_2266.x, x_2266.x)) + vec3<f32>(x_2269.x, x_2269.y, x_2269.z));
  let x_2272 : vec3<f32> = u_xlat20;
  let x_2273 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_2272 + x_2273);
  let x_2275 : vec4<f32> = vs_INTERP6;
  let x_2277 : vec3<f32> = u_xlat0;
  let x_2279 : vec3<f32> = u_xlat1;
  u_xlat0 = ((vec3<f32>(x_2275.w, x_2275.w, x_2275.w) * x_2277) + x_2279);
  let x_2282 : f32 = u_xlat3.x;
  let x_2284 : f32 = u_xlat3.x;
  u_xlat42 = (x_2282 * -(x_2284));
  let x_2287 : f32 = u_xlat42;
  u_xlat42 = exp2(x_2287);
  let x_2289 : vec3<f32> = u_xlat0;
  let x_2292 : vec4<f32> = x_75.unity_FogColor;
  u_xlat0 = (x_2289 + -(vec3<f32>(x_2292.x, x_2292.y, x_2292.z)));
  let x_2298 : f32 = u_xlat42;
  let x_2300 : vec3<f32> = u_xlat0;
  let x_2303 : vec4<f32> = x_75.unity_FogColor;
  let x_2305 : vec3<f32> = ((vec3<f32>(x_2298, x_2298, x_2298) * x_2300) + vec3<f32>(x_2303.x, x_2303.y, x_2303.z));
  let x_2306 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2305.x, x_2305.y, x_2305.z, x_2306.w);
  let x_2308 : bool = u_xlatb2;
  let x_2309 : f32 = u_xlat43;
  SV_Target0.w = select(1.0f, x_2309, x_2308);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(5) vs_INTERP9_param : vec3<f32>, @location(4) vs_INTERP8_param : vec3<f32>, @location(2) vs_INTERP5_param : vec4<f32>, @location(3) vs_INTERP6_param : vec4<f32>, @location(1) vs_INTERP4_param : vec4<f32>, @location(0) vs_INTERP0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP9 = vs_INTERP9_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP6 = vs_INTERP6_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP0 = vs_INTERP0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


