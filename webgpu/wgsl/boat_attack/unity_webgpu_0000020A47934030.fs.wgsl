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

@group(1) @binding(3) var<uniform> x_251 : LightShadows;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb44 : bool;

var<private> u_xlatb46 : bool;

var<private> u_xlat14 : vec3<f32>;

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

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlat20 : vec3<f32>;

var<private> u_xlatb20 : bool;

var<private> u_xlatb34 : vec2<bool>;

var<private> u_xlat34 : vec2<f32>;

var<private> u_xlat48 : f32;

@group(1) @binding(4) var<uniform> x_900 : LightCookies;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat9 : vec2<f32>;

var<private> u_xlatu43 : u32;

var<private> u_xlatb5 : vec2<bool>;

var<private> u_xlatu8 : u32;

var<private> u_xlati22 : i32;

var<private> u_xlati8 : i32;

var<private> u_xlat22 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_1347 : AdditionalLights;

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
  var x_367 : f32;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var x_502 : f32;
  var x_533 : f32;
  var x_580 : f32;
  var txVec1 : vec3<f32>;
  var x_970 : f32;
  var x_981 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1482 : f32;
  var x_1493 : f32;
  var txVec2 : vec3<f32>;
  var x_1939 : f32;
  var x_1952 : f32;
  var x_2010 : f32;
  var x_2021 : vec3<f32>;
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
  let x_253 : vec4<f32> = x_251.x_MainLightWorldToShadow[0i][1i];
  let x_255 : vec3<f32> = (vec3<f32>(x_242.y, x_242.y, x_242.y) * vec3<f32>(x_253.x, x_253.y, x_253.z));
  let x_256 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_255.x, x_255.y, x_255.z, x_256.w);
  let x_259 : vec4<f32> = x_251.x_MainLightWorldToShadow[0i][0i];
  let x_261 : vec3<f32> = vs_INTERP8;
  let x_264 : vec4<f32> = u_xlat6;
  let x_266 : vec3<f32> = ((vec3<f32>(x_259.x, x_259.y, x_259.z) * vec3<f32>(x_261.x, x_261.x, x_261.x)) + vec3<f32>(x_264.x, x_264.y, x_264.z));
  let x_267 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_266.x, x_266.y, x_266.z, x_267.w);
  let x_270 : vec4<f32> = x_251.x_MainLightWorldToShadow[0i][2i];
  let x_272 : vec3<f32> = vs_INTERP8;
  let x_275 : vec4<f32> = u_xlat6;
  let x_277 : vec3<f32> = ((vec3<f32>(x_270.x, x_270.y, x_270.z) * vec3<f32>(x_272.z, x_272.z, x_272.z)) + vec3<f32>(x_275.x, x_275.y, x_275.z));
  let x_278 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_277.x, x_277.y, x_277.z, x_278.w);
  let x_280 : vec4<f32> = u_xlat6;
  let x_284 : vec4<f32> = x_251.x_MainLightWorldToShadow[0i][3i];
  let x_286 : vec3<f32> = (vec3<f32>(x_280.x, x_280.y, x_280.z) + vec3<f32>(x_284.x, x_284.y, x_284.z));
  let x_287 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_286.x, x_286.y, x_286.z, x_287.w);
  let x_290 : vec4<f32> = u_xlat6;
  let x_291 : vec2<f32> = vec2<f32>(x_290.x, x_290.y);
  let x_293 : f32 = u_xlat6.z;
  txVec0 = vec3<f32>(x_291.x, x_291.y, x_293);
  let x_305 : vec3<f32> = txVec0;
  let x_307 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_305.xy, x_305.z);
  u_xlat42 = x_307;
  let x_309 : f32 = x_251.x_MainLightShadowParams.x;
  u_xlat43 = (-(x_309) + 1.0f);
  let x_312 : f32 = u_xlat42;
  let x_314 : f32 = x_251.x_MainLightShadowParams.x;
  let x_316 : f32 = u_xlat43;
  u_xlat42 = ((x_312 * x_314) + x_316);
  let x_320 : f32 = u_xlat6.z;
  u_xlatb44 = (0.0f >= x_320);
  let x_324 : f32 = u_xlat6.z;
  u_xlatb46 = (x_324 >= 1.0f);
  let x_326 : bool = u_xlatb44;
  let x_327 : bool = u_xlatb46;
  u_xlatb44 = (x_326 | x_327);
  let x_329 : bool = u_xlatb44;
  let x_330 : f32 = u_xlat42;
  u_xlat42 = select(x_330, 1.0f, x_329);
  let x_332 : vec3<f32> = u_xlat0;
  let x_334 : vec4<f32> = x_75.x_MainLightPosition;
  u_xlat0.x = dot(x_332, -(vec3<f32>(x_334.x, x_334.y, x_334.z)));
  let x_340 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_340, 0.0f, 1.0f);
  let x_344 : f32 = u_xlat42;
  let x_347 : vec4<f32> = x_75.x_MainLightColor;
  u_xlat14 = (vec3<f32>(x_344, x_344, x_344) * vec3<f32>(x_347.x, x_347.y, x_347.z));
  let x_350 : vec3<f32> = u_xlat14;
  let x_351 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_350 * vec3<f32>(x_351.x, x_351.x, x_351.x));
  let x_354 : vec3<f32> = u_xlat0;
  let x_355 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_354 * vec3<f32>(x_355.x, x_355.y, x_355.z));
  let x_359 : f32 = x_132.unity_LODFade.x;
  u_xlatb42 = (x_359 < 0.0f);
  let x_363 : f32 = x_132.unity_LODFade.x;
  u_xlat44 = (x_363 + 1.0f);
  let x_365 : bool = u_xlatb42;
  if (x_365) {
    let x_370 : f32 = u_xlat44;
    x_367 = x_370;
  } else {
    let x_373 : f32 = x_132.unity_LODFade.x;
    x_367 = x_373;
  }
  let x_374 : f32 = x_367;
  u_xlat42 = x_374;
  let x_376 : f32 = u_xlat42;
  u_xlatb44 = (0.5f >= x_376);
  let x_378 : vec3<f32> = u_xlat2;
  let x_382 : vec4<f32> = x_75.x_ScreenParams;
  u_xlat2 = (abs(x_378) * vec3<f32>(x_382.x, x_382.y, x_382.x));
  let x_388 : vec3<f32> = u_xlat2;
  u_xlatu2 = vec3<u32>(x_388);
  let x_393 : u32 = u_xlatu2.z;
  u_xlatu30 = (x_393 * 1025u);
  let x_397 : u32 = u_xlatu30;
  u_xlatu3 = (x_397 >> 6u);
  let x_402 : u32 = u_xlatu30;
  let x_403 : u32 = u_xlatu3;
  u_xlati30 = bitcast<i32>((x_402 ^ x_403));
  let x_406 : i32 = u_xlati30;
  u_xlatu30 = (bitcast<u32>(x_406) * 9u);
  let x_410 : u32 = u_xlatu30;
  u_xlatu3 = (x_410 >> 11u);
  let x_413 : u32 = u_xlatu30;
  let x_414 : u32 = u_xlatu3;
  u_xlati30 = bitcast<i32>((x_413 ^ x_414));
  let x_417 : i32 = u_xlati30;
  u_xlati30 = (x_417 * 32769i);
  let x_421 : i32 = u_xlati30;
  let x_424 : u32 = u_xlatu2.y;
  u_xlati16 = bitcast<i32>((bitcast<u32>(x_421) ^ x_424));
  let x_428 : i32 = u_xlati16;
  u_xlatu16 = (bitcast<u32>(x_428) * 1025u);
  let x_431 : u32 = u_xlatu16;
  u_xlatu30 = (x_431 >> 6u);
  let x_433 : u32 = u_xlatu30;
  let x_434 : u32 = u_xlatu16;
  u_xlati16 = bitcast<i32>((x_433 ^ x_434));
  let x_437 : i32 = u_xlati16;
  u_xlatu16 = (bitcast<u32>(x_437) * 9u);
  let x_440 : u32 = u_xlatu16;
  u_xlatu30 = (x_440 >> 11u);
  let x_442 : u32 = u_xlatu30;
  let x_443 : u32 = u_xlatu16;
  u_xlati16 = bitcast<i32>((x_442 ^ x_443));
  let x_446 : i32 = u_xlati16;
  u_xlati16 = (x_446 * 32769i);
  let x_449 : i32 = u_xlati16;
  let x_452 : u32 = u_xlatu2.x;
  u_xlati2 = bitcast<i32>((bitcast<u32>(x_449) ^ x_452));
  let x_455 : i32 = u_xlati2;
  u_xlatu2.x = (bitcast<u32>(x_455) * 1025u);
  let x_460 : u32 = u_xlatu2.x;
  u_xlatu16 = (x_460 >> 6u);
  let x_462 : u32 = u_xlatu16;
  let x_464 : u32 = u_xlatu2.x;
  u_xlati2 = bitcast<i32>((x_462 ^ x_464));
  let x_467 : i32 = u_xlati2;
  u_xlatu2.x = (bitcast<u32>(x_467) * 9u);
  let x_472 : u32 = u_xlatu2.x;
  u_xlatu16 = (x_472 >> 11u);
  let x_474 : u32 = u_xlatu16;
  let x_476 : u32 = u_xlatu2.x;
  u_xlati2 = bitcast<i32>((x_474 ^ x_476));
  let x_479 : i32 = u_xlati2;
  u_xlati2 = (x_479 * 32769i);
  param = 1065353216i;
  let x_485 : i32 = u_xlati2;
  param_1 = x_485;
  param_2 = 0i;
  param_3 = 23i;
  let x_488 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlat2.x = bitcast<f32>(x_488);
  let x_492 : f32 = u_xlat2.x;
  u_xlat2.x = (x_492 + -1.0f);
  let x_497 : f32 = u_xlat2.x;
  u_xlat16.x = (-(x_497) + 1.0f);
  let x_501 : bool = u_xlatb44;
  if (x_501) {
    let x_506 : f32 = u_xlat2.x;
    x_502 = x_506;
  } else {
    let x_509 : f32 = u_xlat16.x;
    x_502 = x_509;
  }
  let x_510 : f32 = x_502;
  u_xlat2.x = x_510;
  let x_512 : f32 = u_xlat42;
  let x_515 : f32 = u_xlat2.x;
  u_xlat42 = ((x_512 * 2.0f) + -(x_515));
  let x_518 : f32 = u_xlat42;
  let x_520 : f32 = u_xlat3.w;
  u_xlat2.x = (x_518 * x_520);
  let x_527 : f32 = u_xlat2.x;
  u_xlatb16.x = (x_527 >= 0.40000000596046447754f);
  let x_532 : bool = u_xlatb16.x;
  if (x_532) {
    let x_537 : f32 = u_xlat2.x;
    x_533 = x_537;
  } else {
    x_533 = 0.0f;
  }
  let x_539 : f32 = x_533;
  u_xlat16.x = x_539;
  let x_542 : f32 = u_xlat3.w;
  let x_543 : f32 = u_xlat42;
  u_xlat42 = ((x_542 * x_543) + -0.40000000596046447754f);
  let x_549 : f32 = u_xlat2.x;
  u_xlat30 = dpdxCoarse(x_549);
  let x_552 : f32 = u_xlat2.x;
  u_xlat2.x = dpdyCoarse(x_552);
  let x_556 : f32 = u_xlat2.x;
  let x_558 : f32 = u_xlat30;
  u_xlat2.x = (abs(x_556) + abs(x_558));
  let x_563 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_563, 0.00009999999747378752f);
  let x_567 : f32 = u_xlat42;
  let x_569 : f32 = u_xlat2.x;
  u_xlat42 = (x_567 / x_569);
  let x_571 : f32 = u_xlat42;
  u_xlat42 = (x_571 + 0.5f);
  let x_573 : f32 = u_xlat42;
  u_xlat42 = clamp(x_573, 0.0f, 1.0f);
  let x_577 : f32 = x_75.x_AlphaToMaskAvailable;
  u_xlatb2 = !((x_577 == 0.0f));
  let x_579 : bool = u_xlatb2;
  if (x_579) {
    let x_583 : f32 = u_xlat42;
    x_580 = x_583;
  } else {
    let x_586 : f32 = u_xlat16.x;
    x_580 = x_586;
  }
  let x_587 : f32 = x_580;
  u_xlat42 = x_587;
  let x_588 : f32 = u_xlat42;
  u_xlat16.x = (x_588 + -0.00009999999747378752f);
  let x_593 : f32 = u_xlat16.x;
  u_xlatb16.x = (x_593 < 0.0f);
  let x_597 : bool = u_xlatb16.x;
  if (((select(0i, 1i, x_597) * -1i) != 0i)) {
    discard;
  }
  let x_607 : f32 = vs_INTERP4.w;
  u_xlatb16.x = (0.0f < x_607);
  let x_611 : f32 = x_132.unity_WorldTransformParams.w;
  u_xlatb16.y = (x_611 >= 0.0f);
  let x_615 : bool = u_xlatb16.x;
  u_xlat16.x = select(-1.0f, 1.0f, x_615);
  let x_619 : bool = u_xlatb16.y;
  u_xlat16.y = select(-1.0f, 1.0f, x_619);
  let x_623 : f32 = u_xlat16.y;
  let x_625 : f32 = u_xlat16.x;
  u_xlat16.x = (x_623 * x_625);
  let x_628 : vec4<f32> = vs_INTERP4;
  let x_630 : vec3<f32> = vs_INTERP9;
  let x_632 : vec3<f32> = (vec3<f32>(x_628.y, x_628.z, x_628.x) * vec3<f32>(x_630.z, x_630.x, x_630.y));
  let x_633 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_632.x, x_632.y, x_632.z, x_633.w);
  let x_635 : vec3<f32> = vs_INTERP9;
  let x_637 : vec4<f32> = vs_INTERP4;
  let x_640 : vec4<f32> = u_xlat3;
  let x_643 : vec3<f32> = ((vec3<f32>(x_635.y, x_635.z, x_635.x) * vec3<f32>(x_637.z, x_637.x, x_637.y)) + -(vec3<f32>(x_640.x, x_640.y, x_640.z)));
  let x_644 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_643.x, x_643.y, x_643.z, x_644.w);
  let x_646 : vec3<f32> = u_xlat16;
  let x_648 : vec4<f32> = u_xlat3;
  u_xlat16 = (vec3<f32>(x_646.x, x_646.x, x_646.x) * vec3<f32>(x_648.x, x_648.y, x_648.z));
  let x_651 : vec3<f32> = u_xlat16;
  let x_652 : vec3<f32> = u_xlat19;
  u_xlat16 = (x_651 * vec3<f32>(x_652.y, x_652.y, x_652.y));
  let x_655 : vec3<f32> = u_xlat19;
  let x_657 : vec4<f32> = vs_INTERP4;
  let x_660 : vec3<f32> = u_xlat16;
  u_xlat16 = ((vec3<f32>(x_655.x, x_655.x, x_655.x) * vec3<f32>(x_657.x, x_657.y, x_657.z)) + x_660);
  let x_662 : vec3<f32> = u_xlat19;
  let x_664 : vec3<f32> = vs_INTERP9;
  let x_666 : vec3<f32> = u_xlat16;
  u_xlat16 = ((vec3<f32>(x_662.z, x_662.z, x_662.z) * x_664) + x_666);
  let x_668 : vec3<f32> = u_xlat16;
  let x_669 : vec3<f32> = u_xlat16;
  u_xlat3.x = dot(x_668, x_669);
  let x_673 : f32 = u_xlat3.x;
  u_xlat3.x = inverseSqrt(x_673);
  let x_676 : vec3<f32> = u_xlat16;
  let x_677 : vec4<f32> = u_xlat3;
  u_xlat16 = (x_676 * vec3<f32>(x_677.x, x_677.x, x_677.x));
  let x_681 : f32 = vs_INTERP8.y;
  let x_683 : f32 = x_75.unity_MatrixV[1i].z;
  u_xlat3.x = (x_681 * x_683);
  let x_687 : f32 = x_75.unity_MatrixV[0i].z;
  let x_689 : f32 = vs_INTERP8.x;
  let x_692 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_687 * x_689) + x_692);
  let x_696 : f32 = x_75.unity_MatrixV[2i].z;
  let x_698 : f32 = vs_INTERP8.z;
  let x_701 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_696 * x_698) + x_701);
  let x_705 : f32 = u_xlat3.x;
  let x_707 : f32 = x_75.unity_MatrixV[3i].z;
  u_xlat3.x = (x_705 + x_707);
  let x_711 : f32 = u_xlat3.x;
  let x_715 : f32 = x_75.x_ProjectionParams.y;
  u_xlat3.x = (-(x_711) + -(x_715));
  let x_720 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_720, 0.0f);
  let x_724 : f32 = u_xlat3.x;
  let x_727 : f32 = x_75.unity_FogParams.x;
  u_xlat3.x = (x_724 * x_727);
  let x_737 : vec2<f32> = vs_INTERP0;
  let x_739 : f32 = x_75.x_GlobalMipBias.x;
  let x_740 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_737, x_739);
  u_xlat6 = x_740;
  let x_746 : vec2<f32> = vs_INTERP0;
  let x_748 : f32 = x_75.x_GlobalMipBias.x;
  let x_749 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_746, x_748);
  u_xlat17 = vec3<f32>(x_749.x, x_749.y, x_749.z);
  let x_751 : vec4<f32> = u_xlat6;
  u_xlat19 = (vec3<f32>(x_751.x, x_751.y, x_751.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_757 : vec3<f32> = u_xlat16;
  let x_758 : vec3<f32> = u_xlat19;
  u_xlat46 = dot(x_757, x_758);
  let x_760 : f32 = u_xlat46;
  u_xlat46 = (x_760 + 0.5f);
  let x_762 : vec3<f32> = u_xlat17;
  let x_763 : f32 = u_xlat46;
  u_xlat17 = (x_762 * vec3<f32>(x_763, x_763, x_763));
  let x_767 : f32 = u_xlat6.w;
  u_xlat46 = max(x_767, 0.00009999999747378752f);
  let x_769 : vec3<f32> = u_xlat17;
  let x_770 : f32 = u_xlat46;
  u_xlat17 = (x_769 / vec3<f32>(x_770, x_770, x_770));
  let x_774 : f32 = u_xlat5.x;
  u_xlat5.x = x_774;
  let x_777 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_777, 0.0f, 1.0f);
  let x_780 : f32 = u_xlat42;
  u_xlat42 = x_780;
  let x_781 : f32 = u_xlat42;
  u_xlat42 = clamp(x_781, 0.0f, 1.0f);
  let x_784 : f32 = u_xlat5.x;
  u_xlat46 = (-(x_784) + 1.0f);
  let x_787 : f32 = u_xlat46;
  let x_788 : f32 = u_xlat46;
  u_xlat19.x = (x_787 * x_788);
  let x_792 : f32 = u_xlat19.x;
  u_xlat19.x = max(x_792, 0.0078125f);
  let x_798 : f32 = u_xlat19.x;
  let x_800 : f32 = u_xlat19.x;
  u_xlat33 = (x_798 * x_800);
  let x_803 : f32 = u_xlat5.x;
  u_xlat5.x = (x_803 + 0.04000002145767211914f);
  let x_808 : f32 = u_xlat5.x;
  u_xlat5.x = min(x_808, 1.0f);
  let x_813 : f32 = u_xlat19.x;
  u_xlat47 = ((x_813 * 4.0f) + 2.0f);
  let x_818 : f32 = vs_INTERP6.w;
  u_xlat6.x = min(x_818, 1.0f);
  let x_823 : vec4<f32> = vs_INTERP3;
  let x_824 : vec2<f32> = vec2<f32>(x_823.x, x_823.y);
  let x_826 : f32 = vs_INTERP3.z;
  txVec1 = vec3<f32>(x_824.x, x_824.y, x_826);
  let x_834 : vec3<f32> = txVec1;
  let x_836 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_834.xy, x_834.z);
  u_xlat20.x = x_836;
  let x_839 : f32 = u_xlat20.x;
  let x_841 : f32 = x_251.x_MainLightShadowParams.x;
  let x_843 : f32 = u_xlat43;
  u_xlat43 = ((x_839 * x_841) + x_843);
  let x_847 : f32 = vs_INTERP3.z;
  u_xlatb20 = (0.0f >= x_847);
  let x_851 : f32 = vs_INTERP3.z;
  u_xlatb34.x = (x_851 >= 1.0f);
  let x_855 : bool = u_xlatb34.x;
  let x_856 : bool = u_xlatb20;
  u_xlatb20 = (x_855 | x_856);
  let x_858 : bool = u_xlatb20;
  let x_859 : f32 = u_xlat43;
  u_xlat43 = select(x_859, 1.0f, x_858);
  let x_861 : vec3<f32> = vs_INTERP8;
  let x_863 : vec3<f32> = x_75.x_WorldSpaceCameraPos;
  u_xlat20 = (x_861 + -(x_863));
  let x_866 : vec3<f32> = u_xlat20;
  let x_867 : vec3<f32> = u_xlat20;
  u_xlat20.x = dot(x_866, x_867);
  let x_873 : f32 = u_xlat20.x;
  let x_875 : f32 = x_251.x_MainLightShadowParams.z;
  let x_878 : f32 = x_251.x_MainLightShadowParams.w;
  u_xlat34.x = ((x_873 * x_875) + x_878);
  let x_882 : f32 = u_xlat34.x;
  u_xlat34.x = clamp(x_882, 0.0f, 1.0f);
  let x_886 : f32 = u_xlat43;
  u_xlat48 = (-(x_886) + 1.0f);
  let x_890 : f32 = u_xlat34.x;
  let x_891 : f32 = u_xlat48;
  let x_893 : f32 = u_xlat43;
  u_xlat43 = ((x_890 * x_891) + x_893);
  let x_902 : f32 = x_900.x_MainLightCookieTextureFormat;
  u_xlatb34.x = !((x_902 == -1.0f));
  let x_906 : bool = u_xlatb34.x;
  if (x_906) {
    let x_909 : vec3<f32> = vs_INTERP8;
    let x_912 : vec4<f32> = x_900.x_MainLightWorldToLight[1i];
    u_xlat34 = (vec2<f32>(x_909.y, x_909.y) * vec2<f32>(x_912.x, x_912.y));
    let x_916 : vec4<f32> = x_900.x_MainLightWorldToLight[0i];
    let x_918 : vec3<f32> = vs_INTERP8;
    let x_921 : vec2<f32> = u_xlat34;
    u_xlat34 = ((vec2<f32>(x_916.x, x_916.y) * vec2<f32>(x_918.x, x_918.x)) + x_921);
    let x_924 : vec4<f32> = x_900.x_MainLightWorldToLight[2i];
    let x_926 : vec3<f32> = vs_INTERP8;
    let x_929 : vec2<f32> = u_xlat34;
    u_xlat34 = ((vec2<f32>(x_924.x, x_924.y) * vec2<f32>(x_926.z, x_926.z)) + x_929);
    let x_931 : vec2<f32> = u_xlat34;
    let x_933 : vec4<f32> = x_900.x_MainLightWorldToLight[3i];
    u_xlat34 = (x_931 + vec2<f32>(x_933.x, x_933.y));
    let x_936 : vec2<f32> = u_xlat34;
    u_xlat34 = ((x_936 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_946 : vec2<f32> = u_xlat34;
    let x_948 : f32 = x_75.x_GlobalMipBias.x;
    let x_949 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_946, x_948);
    u_xlat7 = x_949;
    let x_951 : f32 = x_900.x_MainLightCookieTextureFormat;
    let x_953 : f32 = x_900.x_MainLightCookieTextureFormat;
    let x_955 : f32 = x_900.x_MainLightCookieTextureFormat;
    let x_957 : f32 = x_900.x_MainLightCookieTextureFormat;
    let x_958 : vec4<f32> = vec4<f32>(x_951, x_953, x_955, x_957);
    let x_966 : vec4<bool> = (vec4<f32>(x_958.x, x_958.y, x_958.z, x_958.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb34 = vec2<bool>(x_966.x, x_966.y);
    let x_969 : bool = u_xlatb34.y;
    if (x_969) {
      let x_974 : f32 = u_xlat7.w;
      x_970 = x_974;
    } else {
      let x_977 : f32 = u_xlat7.x;
      x_970 = x_977;
    }
    let x_978 : f32 = x_970;
    u_xlat48 = x_978;
    let x_980 : bool = u_xlatb34.x;
    if (x_980) {
      let x_984 : vec4<f32> = u_xlat7;
      x_981 = vec3<f32>(x_984.x, x_984.y, x_984.z);
    } else {
      let x_987 : f32 = u_xlat48;
      x_981 = vec3<f32>(x_987, x_987, x_987);
    }
    let x_989 : vec3<f32> = x_981;
    let x_990 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_989.x, x_989.y, x_989.z, x_990.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_996 : vec4<f32> = u_xlat7;
  let x_999 : vec4<f32> = x_75.x_MainLightColor;
  let x_1001 : vec3<f32> = (vec3<f32>(x_996.x, x_996.y, x_996.z) * vec3<f32>(x_999.x, x_999.y, x_999.z));
  let x_1002 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1001.x, x_1001.y, x_1001.z, x_1002.w);
  let x_1004 : vec3<f32> = u_xlat1;
  let x_1006 : vec3<f32> = u_xlat16;
  u_xlat34.x = dot(-(x_1004), x_1006);
  let x_1010 : f32 = u_xlat34.x;
  let x_1012 : f32 = u_xlat34.x;
  u_xlat34.x = (x_1010 + x_1012);
  let x_1016 : vec3<f32> = u_xlat16;
  let x_1017 : vec2<f32> = u_xlat34;
  let x_1021 : vec3<f32> = u_xlat1;
  let x_1023 : vec3<f32> = ((x_1016 * -(vec3<f32>(x_1017.x, x_1017.x, x_1017.x))) + -(x_1021));
  let x_1024 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1023.x, x_1023.y, x_1023.z, x_1024.w);
  let x_1026 : vec3<f32> = u_xlat16;
  let x_1027 : vec3<f32> = u_xlat1;
  u_xlat34.x = dot(x_1026, x_1027);
  let x_1031 : f32 = u_xlat34.x;
  u_xlat34.x = clamp(x_1031, 0.0f, 1.0f);
  let x_1035 : f32 = u_xlat34.x;
  u_xlat34.x = (-(x_1035) + 1.0f);
  let x_1040 : f32 = u_xlat34.x;
  let x_1042 : f32 = u_xlat34.x;
  u_xlat34.x = (x_1040 * x_1042);
  let x_1046 : f32 = u_xlat34.x;
  let x_1048 : f32 = u_xlat34.x;
  u_xlat34.x = (x_1046 * x_1048);
  let x_1051 : f32 = u_xlat46;
  u_xlat48 = ((-(x_1051) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1057 : f32 = u_xlat46;
  let x_1058 : f32 = u_xlat48;
  u_xlat4.w = (x_1057 * x_1058);
  let x_1061 : vec4<f32> = u_xlat4;
  u_xlat4 = (x_1061 * vec4<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f, 6.0f));
  let x_1074 : vec4<f32> = u_xlat8;
  let x_1077 : f32 = u_xlat4.w;
  let x_1078 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1074.x, x_1074.y, x_1074.z), x_1077);
  u_xlat8 = x_1078;
  let x_1080 : f32 = u_xlat8.w;
  u_xlat46 = (x_1080 + -1.0f);
  let x_1083 : f32 = x_132.unity_SpecCube0_HDR.w;
  let x_1084 : f32 = u_xlat46;
  u_xlat46 = ((x_1083 * x_1084) + 1.0f);
  let x_1087 : f32 = u_xlat46;
  u_xlat46 = max(x_1087, 0.0f);
  let x_1089 : f32 = u_xlat46;
  u_xlat46 = log2(x_1089);
  let x_1091 : f32 = u_xlat46;
  let x_1093 : f32 = x_132.unity_SpecCube0_HDR.y;
  u_xlat46 = (x_1091 * x_1093);
  let x_1095 : f32 = u_xlat46;
  u_xlat46 = exp2(x_1095);
  let x_1097 : f32 = u_xlat46;
  let x_1099 : f32 = x_132.unity_SpecCube0_HDR.x;
  u_xlat46 = (x_1097 * x_1099);
  let x_1101 : vec4<f32> = u_xlat8;
  let x_1103 : f32 = u_xlat46;
  let x_1105 : vec3<f32> = (vec3<f32>(x_1101.x, x_1101.y, x_1101.z) * vec3<f32>(x_1103, x_1103, x_1103));
  let x_1106 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1105.x, x_1105.y, x_1105.z, x_1106.w);
  let x_1109 : vec3<f32> = u_xlat19;
  let x_1111 : vec3<f32> = u_xlat19;
  u_xlat9 = ((vec2<f32>(x_1109.x, x_1109.x) * vec2<f32>(x_1111.x, x_1111.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1117 : f32 = u_xlat9.y;
  u_xlat46 = (1.0f / x_1117);
  let x_1120 : f32 = u_xlat5.x;
  u_xlat5.x = (x_1120 + -0.03999999910593032837f);
  let x_1125 : f32 = u_xlat34.x;
  let x_1127 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_1125 * x_1127) + 0.03999999910593032837f);
  let x_1132 : f32 = u_xlat46;
  let x_1134 : f32 = u_xlat5.x;
  u_xlat46 = (x_1132 * x_1134);
  let x_1136 : f32 = u_xlat46;
  let x_1138 : vec4<f32> = u_xlat8;
  let x_1140 : vec3<f32> = (vec3<f32>(x_1136, x_1136, x_1136) * vec3<f32>(x_1138.x, x_1138.y, x_1138.z));
  let x_1141 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1140.x, x_1140.y, x_1140.z, x_1141.w);
  let x_1143 : vec3<f32> = u_xlat17;
  let x_1144 : vec4<f32> = u_xlat4;
  let x_1147 : vec4<f32> = u_xlat8;
  u_xlat17 = ((x_1143 * vec3<f32>(x_1144.x, x_1144.y, x_1144.z)) + vec3<f32>(x_1147.x, x_1147.y, x_1147.z));
  let x_1150 : f32 = u_xlat43;
  let x_1152 : f32 = x_132.unity_LightData.z;
  u_xlat43 = (x_1150 * x_1152);
  let x_1154 : vec3<f32> = u_xlat16;
  let x_1156 : vec4<f32> = x_75.x_MainLightPosition;
  u_xlat46 = dot(x_1154, vec3<f32>(x_1156.x, x_1156.y, x_1156.z));
  let x_1159 : f32 = u_xlat46;
  u_xlat46 = clamp(x_1159, 0.0f, 1.0f);
  let x_1161 : f32 = u_xlat43;
  let x_1162 : f32 = u_xlat46;
  u_xlat43 = (x_1161 * x_1162);
  let x_1164 : f32 = u_xlat43;
  let x_1166 : vec4<f32> = u_xlat7;
  let x_1168 : vec3<f32> = (vec3<f32>(x_1164, x_1164, x_1164) * vec3<f32>(x_1166.x, x_1166.y, x_1166.z));
  let x_1169 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1168.x, x_1168.y, x_1168.z, x_1169.w);
  let x_1171 : vec3<f32> = u_xlat1;
  let x_1173 : vec4<f32> = x_75.x_MainLightPosition;
  let x_1175 : vec3<f32> = (x_1171 + vec3<f32>(x_1173.x, x_1173.y, x_1173.z));
  let x_1176 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1175.x, x_1175.y, x_1175.z, x_1176.w);
  let x_1178 : vec4<f32> = u_xlat8;
  let x_1180 : vec4<f32> = u_xlat8;
  u_xlat43 = dot(vec3<f32>(x_1178.x, x_1178.y, x_1178.z), vec3<f32>(x_1180.x, x_1180.y, x_1180.z));
  let x_1183 : f32 = u_xlat43;
  u_xlat43 = max(x_1183, 1.17549435e-38f);
  let x_1186 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_1186);
  let x_1188 : f32 = u_xlat43;
  let x_1190 : vec4<f32> = u_xlat8;
  let x_1192 : vec3<f32> = (vec3<f32>(x_1188, x_1188, x_1188) * vec3<f32>(x_1190.x, x_1190.y, x_1190.z));
  let x_1193 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1192.x, x_1192.y, x_1192.z, x_1193.w);
  let x_1195 : vec3<f32> = u_xlat16;
  let x_1196 : vec4<f32> = u_xlat8;
  u_xlat43 = dot(x_1195, vec3<f32>(x_1196.x, x_1196.y, x_1196.z));
  let x_1199 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1199, 0.0f, 1.0f);
  let x_1202 : vec4<f32> = x_75.x_MainLightPosition;
  let x_1204 : vec4<f32> = u_xlat8;
  u_xlat46 = dot(vec3<f32>(x_1202.x, x_1202.y, x_1202.z), vec3<f32>(x_1204.x, x_1204.y, x_1204.z));
  let x_1207 : f32 = u_xlat46;
  u_xlat46 = clamp(x_1207, 0.0f, 1.0f);
  let x_1209 : f32 = u_xlat43;
  let x_1210 : f32 = u_xlat43;
  u_xlat43 = (x_1209 * x_1210);
  let x_1212 : f32 = u_xlat43;
  let x_1214 : f32 = u_xlat9.x;
  u_xlat43 = ((x_1212 * x_1214) + 1.00001001358032226562f);
  let x_1218 : f32 = u_xlat46;
  let x_1219 : f32 = u_xlat46;
  u_xlat46 = (x_1218 * x_1219);
  let x_1221 : f32 = u_xlat43;
  let x_1222 : f32 = u_xlat43;
  u_xlat43 = (x_1221 * x_1222);
  let x_1224 : f32 = u_xlat46;
  u_xlat46 = max(x_1224, 0.10000000149011611938f);
  let x_1227 : f32 = u_xlat43;
  let x_1228 : f32 = u_xlat46;
  u_xlat43 = (x_1227 * x_1228);
  let x_1230 : f32 = u_xlat47;
  let x_1231 : f32 = u_xlat43;
  u_xlat43 = (x_1230 * x_1231);
  let x_1233 : f32 = u_xlat33;
  let x_1234 : f32 = u_xlat43;
  u_xlat43 = (x_1233 / x_1234);
  let x_1236 : f32 = u_xlat43;
  let x_1240 : vec4<f32> = u_xlat4;
  let x_1242 : vec3<f32> = ((vec3<f32>(x_1236, x_1236, x_1236) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + vec3<f32>(x_1240.x, x_1240.y, x_1240.z));
  let x_1243 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1242.x, x_1242.y, x_1242.z, x_1243.w);
  let x_1245 : vec4<f32> = u_xlat7;
  let x_1247 : vec4<f32> = u_xlat8;
  let x_1249 : vec3<f32> = (vec3<f32>(x_1245.x, x_1245.y, x_1245.z) * vec3<f32>(x_1247.x, x_1247.y, x_1247.z));
  let x_1250 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1249.x, x_1249.y, x_1249.z, x_1250.w);
  let x_1254 : f32 = x_75.x_AdditionalLightsCount.x;
  let x_1256 : f32 = x_132.unity_LightData.y;
  u_xlat43 = min(x_1254, x_1256);
  let x_1259 : f32 = u_xlat43;
  u_xlatu43 = bitcast<u32>(i32(x_1259));
  let x_1263 : f32 = u_xlat20.x;
  let x_1266 : f32 = x_251.x_AdditionalShadowFadeParams.x;
  let x_1269 : f32 = x_251.x_AdditionalShadowFadeParams.y;
  u_xlat46 = ((x_1263 * x_1266) + x_1269);
  let x_1271 : f32 = u_xlat46;
  u_xlat46 = clamp(x_1271, 0.0f, 1.0f);
  let x_1275 : f32 = x_900.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1277 : f32 = x_900.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1279 : f32 = x_900.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1281 : f32 = x_900.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1282 : vec4<f32> = vec4<f32>(x_1275, x_1277, x_1279, x_1281);
  let x_1289 : vec4<bool> = (vec4<f32>(x_1282.x, x_1282.y, x_1282.z, x_1282.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_1289.x, x_1289.y);
  u_xlat20.x = 0.0f;
  u_xlat20.y = 0.0f;
  u_xlat20.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1300 : u32 = u_xlatu_loop_1;
    let x_1301 : u32 = u_xlatu43;
    if ((x_1300 < x_1301)) {
    } else {
      break;
    }
    let x_1304 : u32 = u_xlatu_loop_1;
    u_xlatu8 = (x_1304 >> 2u);
    let x_1307 : u32 = u_xlatu_loop_1;
    u_xlati22 = bitcast<i32>((x_1307 & 3u));
    let x_1310 : u32 = u_xlatu8;
    let x_1313 : vec4<f32> = x_132.unity_LightIndices[bitcast<i32>(x_1310)];
    let x_1323 : i32 = u_xlati22;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1328 : vec4<u32> = indexable[x_1323];
    u_xlat8.x = dot(x_1313, bitcast<vec4<f32>>(x_1328));
    let x_1334 : f32 = u_xlat8.x;
    u_xlati8 = i32(x_1334);
    let x_1337 : vec3<f32> = vs_INTERP8;
    let x_1348 : i32 = u_xlati8;
    let x_1350 : vec4<f32> = x_1347.x_AdditionalLightsPosition[x_1348];
    let x_1353 : i32 = u_xlati8;
    let x_1355 : vec4<f32> = x_1347.x_AdditionalLightsPosition[x_1353];
    u_xlat22 = ((-(x_1337) * vec3<f32>(x_1350.w, x_1350.w, x_1350.w)) + vec3<f32>(x_1355.x, x_1355.y, x_1355.z));
    let x_1359 : vec3<f32> = u_xlat22;
    let x_1360 : vec3<f32> = u_xlat22;
    u_xlat23 = dot(x_1359, x_1360);
    let x_1362 : f32 = u_xlat23;
    u_xlat23 = max(x_1362, 0.00006103515625f);
    let x_1366 : f32 = u_xlat23;
    u_xlat37 = inverseSqrt(x_1366);
    let x_1369 : vec3<f32> = u_xlat22;
    let x_1370 : f32 = u_xlat37;
    u_xlat10 = (x_1369 * vec3<f32>(x_1370, x_1370, x_1370));
    let x_1374 : f32 = u_xlat23;
    u_xlat51 = (1.0f / x_1374);
    let x_1376 : f32 = u_xlat23;
    let x_1377 : i32 = u_xlati8;
    let x_1379 : f32 = x_1347.x_AdditionalLightsAttenuation[x_1377].x;
    u_xlat23 = (x_1376 * x_1379);
    let x_1381 : f32 = u_xlat23;
    let x_1383 : f32 = u_xlat23;
    u_xlat23 = ((-(x_1381) * x_1383) + 1.0f);
    let x_1386 : f32 = u_xlat23;
    u_xlat23 = max(x_1386, 0.0f);
    let x_1388 : f32 = u_xlat23;
    let x_1389 : f32 = u_xlat23;
    u_xlat23 = (x_1388 * x_1389);
    let x_1391 : f32 = u_xlat23;
    let x_1392 : f32 = u_xlat51;
    u_xlat23 = (x_1391 * x_1392);
    let x_1394 : i32 = u_xlati8;
    let x_1396 : vec4<f32> = x_1347.x_AdditionalLightsSpotDir[x_1394];
    let x_1398 : vec3<f32> = u_xlat10;
    u_xlat51 = dot(vec3<f32>(x_1396.x, x_1396.y, x_1396.z), x_1398);
    let x_1400 : f32 = u_xlat51;
    let x_1401 : i32 = u_xlati8;
    let x_1403 : f32 = x_1347.x_AdditionalLightsAttenuation[x_1401].z;
    let x_1405 : i32 = u_xlati8;
    let x_1407 : f32 = x_1347.x_AdditionalLightsAttenuation[x_1405].w;
    u_xlat51 = ((x_1400 * x_1403) + x_1407);
    let x_1409 : f32 = u_xlat51;
    u_xlat51 = clamp(x_1409, 0.0f, 1.0f);
    let x_1411 : f32 = u_xlat51;
    let x_1412 : f32 = u_xlat51;
    u_xlat51 = (x_1411 * x_1412);
    let x_1414 : f32 = u_xlat51;
    let x_1415 : f32 = u_xlat23;
    u_xlat23 = (x_1414 * x_1415);
    let x_1419 : i32 = u_xlati8;
    let x_1421 : f32 = x_251.x_AdditionalShadowParams[x_1419].w;
    u_xlati51 = i32(x_1421);
    let x_1424 : i32 = u_xlati51;
    u_xlatb52 = (x_1424 >= 0i);
    let x_1426 : bool = u_xlatb52;
    if (x_1426) {
      let x_1430 : i32 = u_xlati8;
      let x_1432 : f32 = x_251.x_AdditionalShadowParams[x_1430].z;
      u_xlatb52 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1432, x_1432, x_1432, x_1432))));
      let x_1436 : bool = u_xlatb52;
      if (x_1436) {
        let x_1441 : vec3<f32> = u_xlat10;
        let x_1444 : vec3<f32> = u_xlat10;
        let x_1447 : vec4<bool> = (abs(vec4<f32>(x_1441.z, x_1441.z, x_1441.y, x_1441.z)) >= abs(vec4<f32>(x_1444.x, x_1444.y, x_1444.x, x_1444.x)));
        let x_1449 : vec3<bool> = vec3<bool>(x_1447.x, x_1447.y, x_1447.z);
        let x_1450 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1449.x, x_1449.y, x_1449.z, x_1450.w);
        let x_1453 : bool = u_xlatb11.y;
        let x_1455 : bool = u_xlatb11.x;
        u_xlatb52 = (x_1453 & x_1455);
        let x_1457 : vec3<f32> = u_xlat10;
        let x_1460 : vec4<bool> = (-(vec4<f32>(x_1457.z, x_1457.y, x_1457.z, x_1457.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1461 : vec3<bool> = vec3<bool>(x_1460.x, x_1460.y, x_1460.w);
        let x_1462 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1461.x, x_1461.y, x_1462.z, x_1461.z);
        let x_1466 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1466);
        let x_1471 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1471);
        let x_1477 : bool = u_xlatb11.w;
        u_xlat53 = select(0.0f, 1.0f, x_1477);
        let x_1481 : bool = u_xlatb11.z;
        if (x_1481) {
          let x_1486 : f32 = u_xlat11.y;
          x_1482 = x_1486;
        } else {
          let x_1488 : f32 = u_xlat53;
          x_1482 = x_1488;
        }
        let x_1489 : f32 = x_1482;
        u_xlat25.x = x_1489;
        let x_1492 : bool = u_xlatb52;
        if (x_1492) {
          let x_1497 : f32 = u_xlat11.x;
          x_1493 = x_1497;
        } else {
          let x_1500 : f32 = u_xlat25.x;
          x_1493 = x_1500;
        }
        let x_1501 : f32 = x_1493;
        u_xlat52 = x_1501;
        let x_1502 : i32 = u_xlati8;
        let x_1504 : f32 = x_251.x_AdditionalShadowParams[x_1502].w;
        u_xlat11.x = trunc(x_1504);
        let x_1507 : f32 = u_xlat52;
        let x_1509 : f32 = u_xlat11.x;
        u_xlat52 = (x_1507 + x_1509);
        let x_1511 : f32 = u_xlat52;
        u_xlati51 = i32(x_1511);
      }
      let x_1513 : i32 = u_xlati51;
      u_xlati51 = (x_1513 << bitcast<u32>(2i));
      let x_1515 : vec3<f32> = vs_INTERP8;
      let x_1518 : i32 = u_xlati51;
      let x_1521 : i32 = u_xlati51;
      let x_1525 : vec4<f32> = x_251.x_AdditionalLightsWorldToShadow[((x_1518 + 1i) / 4i)][((x_1521 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1515.y, x_1515.y, x_1515.y, x_1515.y) * x_1525);
      let x_1527 : i32 = u_xlati51;
      let x_1529 : i32 = u_xlati51;
      let x_1532 : vec4<f32> = x_251.x_AdditionalLightsWorldToShadow[(x_1527 / 4i)][(x_1529 % 4i)];
      let x_1533 : vec3<f32> = vs_INTERP8;
      let x_1536 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1532 * vec4<f32>(x_1533.x, x_1533.x, x_1533.x, x_1533.x)) + x_1536);
      let x_1538 : i32 = u_xlati51;
      let x_1541 : i32 = u_xlati51;
      let x_1545 : vec4<f32> = x_251.x_AdditionalLightsWorldToShadow[((x_1538 + 2i) / 4i)][((x_1541 + 2i) % 4i)];
      let x_1546 : vec3<f32> = vs_INTERP8;
      let x_1549 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1545 * vec4<f32>(x_1546.z, x_1546.z, x_1546.z, x_1546.z)) + x_1549);
      let x_1551 : vec4<f32> = u_xlat11;
      let x_1552 : i32 = u_xlati51;
      let x_1555 : i32 = u_xlati51;
      let x_1559 : vec4<f32> = x_251.x_AdditionalLightsWorldToShadow[((x_1552 + 3i) / 4i)][((x_1555 + 3i) % 4i)];
      u_xlat11 = (x_1551 + x_1559);
      let x_1561 : vec4<f32> = u_xlat11;
      let x_1563 : vec4<f32> = u_xlat11;
      let x_1565 : vec3<f32> = (vec3<f32>(x_1561.x, x_1561.y, x_1561.z) / vec3<f32>(x_1563.w, x_1563.w, x_1563.w));
      let x_1566 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1565.x, x_1565.y, x_1565.z, x_1566.w);
      let x_1569 : vec4<f32> = u_xlat11;
      let x_1570 : vec2<f32> = vec2<f32>(x_1569.x, x_1569.y);
      let x_1572 : f32 = u_xlat11.z;
      txVec2 = vec3<f32>(x_1570.x, x_1570.y, x_1572);
      let x_1580 : vec3<f32> = txVec2;
      let x_1582 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1580.xy, x_1580.z);
      u_xlat51 = x_1582;
      let x_1583 : i32 = u_xlati8;
      let x_1585 : f32 = x_251.x_AdditionalShadowParams[x_1583].x;
      u_xlat52 = (1.0f + -(x_1585));
      let x_1588 : f32 = u_xlat51;
      let x_1589 : i32 = u_xlati8;
      let x_1591 : f32 = x_251.x_AdditionalShadowParams[x_1589].x;
      let x_1593 : f32 = u_xlat52;
      u_xlat51 = ((x_1588 * x_1591) + x_1593);
      let x_1596 : f32 = u_xlat11.z;
      u_xlatb52 = (0.0f >= x_1596);
      let x_1599 : f32 = u_xlat11.z;
      u_xlatb11.x = (x_1599 >= 1.0f);
      let x_1602 : bool = u_xlatb52;
      let x_1604 : bool = u_xlatb11.x;
      u_xlatb52 = (x_1602 | x_1604);
      let x_1606 : bool = u_xlatb52;
      let x_1607 : f32 = u_xlat51;
      u_xlat51 = select(x_1607, 1.0f, x_1606);
    } else {
      u_xlat51 = 1.0f;
    }
    let x_1610 : f32 = u_xlat51;
    u_xlat52 = (-(x_1610) + 1.0f);
    let x_1613 : f32 = u_xlat46;
    let x_1614 : f32 = u_xlat52;
    let x_1616 : f32 = u_xlat51;
    u_xlat51 = ((x_1613 * x_1614) + x_1616);
    let x_1619 : i32 = u_xlati8;
    u_xlati52 = (1i << bitcast<u32>((x_1619 & 31i)));
    let x_1623 : i32 = u_xlati52;
    let x_1626 : f32 = x_900.x_AdditionalLightsCookieEnableBits;
    u_xlati52 = bitcast<i32>((bitcast<u32>(x_1623) & bitcast<u32>(x_1626)));
    let x_1630 : i32 = u_xlati52;
    if ((x_1630 != 0i)) {
      let x_1634 : i32 = u_xlati8;
      let x_1636 : f32 = x_900.x_AdditionalLightsLightTypes[x_1634].el;
      u_xlati52 = i32(x_1636);
      let x_1639 : i32 = u_xlati52;
      u_xlati11 = select(1i, 0i, (x_1639 != 0i));
      let x_1643 : i32 = u_xlati8;
      u_xlati25 = (x_1643 << bitcast<u32>(2i));
      let x_1645 : i32 = u_xlati11;
      if ((x_1645 != 0i)) {
        let x_1649 : vec3<f32> = vs_INTERP8;
        let x_1651 : i32 = u_xlati25;
        let x_1654 : i32 = u_xlati25;
        let x_1658 : vec4<f32> = x_900.x_AdditionalLightsWorldToLights[((x_1651 + 1i) / 4i)][((x_1654 + 1i) % 4i)];
        let x_1660 : vec3<f32> = (vec3<f32>(x_1649.y, x_1649.y, x_1649.y) * vec3<f32>(x_1658.x, x_1658.y, x_1658.w));
        let x_1661 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1660.x, x_1661.y, x_1660.y, x_1660.z);
        let x_1663 : i32 = u_xlati25;
        let x_1665 : i32 = u_xlati25;
        let x_1668 : vec4<f32> = x_900.x_AdditionalLightsWorldToLights[(x_1663 / 4i)][(x_1665 % 4i)];
        let x_1670 : vec3<f32> = vs_INTERP8;
        let x_1673 : vec4<f32> = u_xlat11;
        let x_1675 : vec3<f32> = ((vec3<f32>(x_1668.x, x_1668.y, x_1668.w) * vec3<f32>(x_1670.x, x_1670.x, x_1670.x)) + vec3<f32>(x_1673.x, x_1673.z, x_1673.w));
        let x_1676 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1675.x, x_1676.y, x_1675.y, x_1675.z);
        let x_1678 : i32 = u_xlati25;
        let x_1681 : i32 = u_xlati25;
        let x_1685 : vec4<f32> = x_900.x_AdditionalLightsWorldToLights[((x_1678 + 2i) / 4i)][((x_1681 + 2i) % 4i)];
        let x_1687 : vec3<f32> = vs_INTERP8;
        let x_1690 : vec4<f32> = u_xlat11;
        let x_1692 : vec3<f32> = ((vec3<f32>(x_1685.x, x_1685.y, x_1685.w) * vec3<f32>(x_1687.z, x_1687.z, x_1687.z)) + vec3<f32>(x_1690.x, x_1690.z, x_1690.w));
        let x_1693 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1692.x, x_1693.y, x_1692.y, x_1692.z);
        let x_1695 : vec4<f32> = u_xlat11;
        let x_1697 : i32 = u_xlati25;
        let x_1700 : i32 = u_xlati25;
        let x_1704 : vec4<f32> = x_900.x_AdditionalLightsWorldToLights[((x_1697 + 3i) / 4i)][((x_1700 + 3i) % 4i)];
        let x_1706 : vec3<f32> = (vec3<f32>(x_1695.x, x_1695.z, x_1695.w) + vec3<f32>(x_1704.x, x_1704.y, x_1704.w));
        let x_1707 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1706.x, x_1707.y, x_1706.y, x_1706.z);
        let x_1709 : vec4<f32> = u_xlat11;
        let x_1711 : vec4<f32> = u_xlat11;
        let x_1713 : vec2<f32> = (vec2<f32>(x_1709.x, x_1709.z) / vec2<f32>(x_1711.w, x_1711.w));
        let x_1714 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1713.x, x_1714.y, x_1713.y, x_1714.w);
        let x_1716 : vec4<f32> = u_xlat11;
        let x_1719 : vec2<f32> = ((vec2<f32>(x_1716.x, x_1716.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1720 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1719.x, x_1720.y, x_1719.y, x_1720.w);
        let x_1722 : vec4<f32> = u_xlat11;
        let x_1726 : vec2<f32> = clamp(vec2<f32>(x_1722.x, x_1722.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1727 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1726.x, x_1727.y, x_1726.y, x_1727.w);
        let x_1729 : i32 = u_xlati8;
        let x_1731 : vec4<f32> = x_900.x_AdditionalLightsCookieAtlasUVRects[x_1729];
        let x_1733 : vec4<f32> = u_xlat11;
        let x_1736 : i32 = u_xlati8;
        let x_1738 : vec4<f32> = x_900.x_AdditionalLightsCookieAtlasUVRects[x_1736];
        let x_1740 : vec2<f32> = ((vec2<f32>(x_1731.x, x_1731.y) * vec2<f32>(x_1733.x, x_1733.z)) + vec2<f32>(x_1738.z, x_1738.w));
        let x_1741 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1740.x, x_1741.y, x_1740.y, x_1741.w);
      } else {
        let x_1744 : i32 = u_xlati52;
        u_xlatb52 = (x_1744 == 1i);
        let x_1746 : bool = u_xlatb52;
        u_xlati52 = select(0i, 1i, x_1746);
        let x_1748 : i32 = u_xlati52;
        if ((x_1748 != 0i)) {
          let x_1753 : vec3<f32> = vs_INTERP8;
          let x_1755 : i32 = u_xlati25;
          let x_1758 : i32 = u_xlati25;
          let x_1762 : vec4<f32> = x_900.x_AdditionalLightsWorldToLights[((x_1755 + 1i) / 4i)][((x_1758 + 1i) % 4i)];
          let x_1764 : vec2<f32> = (vec2<f32>(x_1753.y, x_1753.y) * vec2<f32>(x_1762.x, x_1762.y));
          let x_1765 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1764.x, x_1764.y, x_1765.z, x_1765.w);
          let x_1767 : i32 = u_xlati25;
          let x_1769 : i32 = u_xlati25;
          let x_1772 : vec4<f32> = x_900.x_AdditionalLightsWorldToLights[(x_1767 / 4i)][(x_1769 % 4i)];
          let x_1774 : vec3<f32> = vs_INTERP8;
          let x_1777 : vec4<f32> = u_xlat12;
          let x_1779 : vec2<f32> = ((vec2<f32>(x_1772.x, x_1772.y) * vec2<f32>(x_1774.x, x_1774.x)) + vec2<f32>(x_1777.x, x_1777.y));
          let x_1780 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1779.x, x_1779.y, x_1780.z, x_1780.w);
          let x_1782 : i32 = u_xlati25;
          let x_1785 : i32 = u_xlati25;
          let x_1789 : vec4<f32> = x_900.x_AdditionalLightsWorldToLights[((x_1782 + 2i) / 4i)][((x_1785 + 2i) % 4i)];
          let x_1791 : vec3<f32> = vs_INTERP8;
          let x_1794 : vec4<f32> = u_xlat12;
          let x_1796 : vec2<f32> = ((vec2<f32>(x_1789.x, x_1789.y) * vec2<f32>(x_1791.z, x_1791.z)) + vec2<f32>(x_1794.x, x_1794.y));
          let x_1797 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1796.x, x_1796.y, x_1797.z, x_1797.w);
          let x_1799 : vec4<f32> = u_xlat12;
          let x_1801 : i32 = u_xlati25;
          let x_1804 : i32 = u_xlati25;
          let x_1808 : vec4<f32> = x_900.x_AdditionalLightsWorldToLights[((x_1801 + 3i) / 4i)][((x_1804 + 3i) % 4i)];
          let x_1810 : vec2<f32> = (vec2<f32>(x_1799.x, x_1799.y) + vec2<f32>(x_1808.x, x_1808.y));
          let x_1811 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1810.x, x_1810.y, x_1811.z, x_1811.w);
          let x_1813 : vec4<f32> = u_xlat12;
          let x_1816 : vec2<f32> = ((vec2<f32>(x_1813.x, x_1813.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1817 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1816.x, x_1816.y, x_1817.z, x_1817.w);
          let x_1819 : vec4<f32> = u_xlat12;
          let x_1821 : vec2<f32> = fract(vec2<f32>(x_1819.x, x_1819.y));
          let x_1822 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1821.x, x_1821.y, x_1822.z, x_1822.w);
          let x_1824 : i32 = u_xlati8;
          let x_1826 : vec4<f32> = x_900.x_AdditionalLightsCookieAtlasUVRects[x_1824];
          let x_1828 : vec4<f32> = u_xlat12;
          let x_1831 : i32 = u_xlati8;
          let x_1833 : vec4<f32> = x_900.x_AdditionalLightsCookieAtlasUVRects[x_1831];
          let x_1835 : vec2<f32> = ((vec2<f32>(x_1826.x, x_1826.y) * vec2<f32>(x_1828.x, x_1828.y)) + vec2<f32>(x_1833.z, x_1833.w));
          let x_1836 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1835.x, x_1836.y, x_1835.y, x_1836.w);
        } else {
          let x_1839 : vec3<f32> = vs_INTERP8;
          let x_1841 : i32 = u_xlati25;
          let x_1844 : i32 = u_xlati25;
          let x_1848 : vec4<f32> = x_900.x_AdditionalLightsWorldToLights[((x_1841 + 1i) / 4i)][((x_1844 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1839.y, x_1839.y, x_1839.y, x_1839.y) * x_1848);
          let x_1850 : i32 = u_xlati25;
          let x_1852 : i32 = u_xlati25;
          let x_1855 : vec4<f32> = x_900.x_AdditionalLightsWorldToLights[(x_1850 / 4i)][(x_1852 % 4i)];
          let x_1856 : vec3<f32> = vs_INTERP8;
          let x_1859 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1855 * vec4<f32>(x_1856.x, x_1856.x, x_1856.x, x_1856.x)) + x_1859);
          let x_1861 : i32 = u_xlati25;
          let x_1864 : i32 = u_xlati25;
          let x_1868 : vec4<f32> = x_900.x_AdditionalLightsWorldToLights[((x_1861 + 2i) / 4i)][((x_1864 + 2i) % 4i)];
          let x_1869 : vec3<f32> = vs_INTERP8;
          let x_1872 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1868 * vec4<f32>(x_1869.z, x_1869.z, x_1869.z, x_1869.z)) + x_1872);
          let x_1874 : vec4<f32> = u_xlat12;
          let x_1875 : i32 = u_xlati25;
          let x_1878 : i32 = u_xlati25;
          let x_1882 : vec4<f32> = x_900.x_AdditionalLightsWorldToLights[((x_1875 + 3i) / 4i)][((x_1878 + 3i) % 4i)];
          u_xlat12 = (x_1874 + x_1882);
          let x_1884 : vec4<f32> = u_xlat12;
          let x_1886 : vec4<f32> = u_xlat12;
          let x_1888 : vec3<f32> = (vec3<f32>(x_1884.x, x_1884.y, x_1884.z) / vec3<f32>(x_1886.w, x_1886.w, x_1886.w));
          let x_1889 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1888.x, x_1888.y, x_1888.z, x_1889.w);
          let x_1891 : vec4<f32> = u_xlat12;
          let x_1893 : vec4<f32> = u_xlat12;
          u_xlat52 = dot(vec3<f32>(x_1891.x, x_1891.y, x_1891.z), vec3<f32>(x_1893.x, x_1893.y, x_1893.z));
          let x_1896 : f32 = u_xlat52;
          u_xlat52 = inverseSqrt(x_1896);
          let x_1898 : f32 = u_xlat52;
          let x_1900 : vec4<f32> = u_xlat12;
          let x_1902 : vec3<f32> = (vec3<f32>(x_1898, x_1898, x_1898) * vec3<f32>(x_1900.x, x_1900.y, x_1900.z));
          let x_1903 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1902.x, x_1902.y, x_1902.z, x_1903.w);
          let x_1905 : vec4<f32> = u_xlat12;
          u_xlat52 = dot(abs(vec3<f32>(x_1905.x, x_1905.y, x_1905.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1910 : f32 = u_xlat52;
          u_xlat52 = max(x_1910, 0.00000099999999747524f);
          let x_1913 : f32 = u_xlat52;
          u_xlat52 = (1.0f / x_1913);
          let x_1916 : f32 = u_xlat52;
          let x_1918 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1916, x_1916, x_1916) * vec3<f32>(x_1918.z, x_1918.x, x_1918.y));
          let x_1922 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1922);
          let x_1926 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1926, 0.0f, 1.0f);
          let x_1931 : vec3<f32> = u_xlat13;
          let x_1933 : vec4<bool> = (vec4<f32>(x_1931.y, x_1931.y, x_1931.z, x_1931.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1934 : vec2<bool> = vec2<bool>(x_1933.x, x_1933.z);
          let x_1935 : vec3<bool> = u_xlatb25;
          u_xlatb25 = vec3<bool>(x_1934.x, x_1935.y, x_1934.y);
          let x_1938 : bool = u_xlatb25.x;
          if (x_1938) {
            let x_1943 : f32 = u_xlat13.x;
            x_1939 = x_1943;
          } else {
            let x_1946 : f32 = u_xlat13.x;
            x_1939 = -(x_1946);
          }
          let x_1948 : f32 = x_1939;
          u_xlat25.x = x_1948;
          let x_1951 : bool = u_xlatb25.z;
          if (x_1951) {
            let x_1956 : f32 = u_xlat13.x;
            x_1952 = x_1956;
          } else {
            let x_1959 : f32 = u_xlat13.x;
            x_1952 = -(x_1959);
          }
          let x_1961 : f32 = x_1952;
          u_xlat25.z = x_1961;
          let x_1963 : vec4<f32> = u_xlat12;
          let x_1965 : f32 = u_xlat52;
          let x_1968 : vec3<f32> = u_xlat25;
          let x_1970 : vec2<f32> = ((vec2<f32>(x_1963.x, x_1963.y) * vec2<f32>(x_1965, x_1965)) + vec2<f32>(x_1968.x, x_1968.z));
          let x_1971 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1970.x, x_1971.y, x_1970.y);
          let x_1973 : vec3<f32> = u_xlat25;
          let x_1976 : vec2<f32> = ((vec2<f32>(x_1973.x, x_1973.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1977 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1976.x, x_1977.y, x_1976.y);
          let x_1979 : vec3<f32> = u_xlat25;
          let x_1983 : vec2<f32> = clamp(vec2<f32>(x_1979.x, x_1979.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1984 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1983.x, x_1984.y, x_1983.y);
          let x_1986 : i32 = u_xlati8;
          let x_1988 : vec4<f32> = x_900.x_AdditionalLightsCookieAtlasUVRects[x_1986];
          let x_1990 : vec3<f32> = u_xlat25;
          let x_1993 : i32 = u_xlati8;
          let x_1995 : vec4<f32> = x_900.x_AdditionalLightsCookieAtlasUVRects[x_1993];
          let x_1997 : vec2<f32> = ((vec2<f32>(x_1988.x, x_1988.y) * vec2<f32>(x_1990.x, x_1990.z)) + vec2<f32>(x_1995.z, x_1995.w));
          let x_1998 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1997.x, x_1998.y, x_1997.y, x_1998.w);
        }
      }
      let x_2005 : vec4<f32> = u_xlat11;
      let x_2007 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_2005.x, x_2005.z), 0.0f);
      u_xlat11 = x_2007;
      let x_2009 : bool = u_xlatb5.y;
      if (x_2009) {
        let x_2014 : f32 = u_xlat11.w;
        x_2010 = x_2014;
      } else {
        let x_2017 : f32 = u_xlat11.x;
        x_2010 = x_2017;
      }
      let x_2018 : f32 = x_2010;
      u_xlat52 = x_2018;
      let x_2020 : bool = u_xlatb5.x;
      if (x_2020) {
        let x_2024 : vec4<f32> = u_xlat11;
        x_2021 = vec3<f32>(x_2024.x, x_2024.y, x_2024.z);
      } else {
        let x_2027 : f32 = u_xlat52;
        x_2021 = vec3<f32>(x_2027, x_2027, x_2027);
      }
      let x_2029 : vec3<f32> = x_2021;
      let x_2030 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2029.x, x_2029.y, x_2029.z, x_2030.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2036 : vec4<f32> = u_xlat11;
    let x_2038 : i32 = u_xlati8;
    let x_2040 : vec4<f32> = x_1347.x_AdditionalLightsColor[x_2038];
    let x_2042 : vec3<f32> = (vec3<f32>(x_2036.x, x_2036.y, x_2036.z) * vec3<f32>(x_2040.x, x_2040.y, x_2040.z));
    let x_2043 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2042.x, x_2042.y, x_2042.z, x_2043.w);
    let x_2045 : f32 = u_xlat51;
    let x_2046 : f32 = u_xlat23;
    u_xlat8.x = (x_2045 * x_2046);
    let x_2049 : vec3<f32> = u_xlat16;
    let x_2050 : vec3<f32> = u_xlat10;
    u_xlat23 = dot(x_2049, x_2050);
    let x_2052 : f32 = u_xlat23;
    u_xlat23 = clamp(x_2052, 0.0f, 1.0f);
    let x_2055 : f32 = u_xlat8.x;
    let x_2056 : f32 = u_xlat23;
    u_xlat8.x = (x_2055 * x_2056);
    let x_2059 : vec4<f32> = u_xlat8;
    let x_2061 : vec4<f32> = u_xlat11;
    let x_2063 : vec3<f32> = (vec3<f32>(x_2059.x, x_2059.x, x_2059.x) * vec3<f32>(x_2061.x, x_2061.y, x_2061.z));
    let x_2064 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2063.x, x_2063.y, x_2063.z, x_2064.w);
    let x_2066 : vec3<f32> = u_xlat22;
    let x_2067 : f32 = u_xlat37;
    let x_2070 : vec3<f32> = u_xlat1;
    let x_2071 : vec3<f32> = ((x_2066 * vec3<f32>(x_2067, x_2067, x_2067)) + x_2070);
    let x_2072 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2071.x, x_2071.y, x_2071.z, x_2072.w);
    let x_2075 : vec4<f32> = u_xlat8;
    let x_2077 : vec4<f32> = u_xlat8;
    u_xlat50 = dot(vec3<f32>(x_2075.x, x_2075.y, x_2075.z), vec3<f32>(x_2077.x, x_2077.y, x_2077.z));
    let x_2080 : f32 = u_xlat50;
    u_xlat50 = max(x_2080, 1.17549435e-38f);
    let x_2082 : f32 = u_xlat50;
    u_xlat50 = inverseSqrt(x_2082);
    let x_2084 : f32 = u_xlat50;
    let x_2086 : vec4<f32> = u_xlat8;
    let x_2088 : vec3<f32> = (vec3<f32>(x_2084, x_2084, x_2084) * vec3<f32>(x_2086.x, x_2086.y, x_2086.z));
    let x_2089 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2088.x, x_2088.y, x_2088.z, x_2089.w);
    let x_2091 : vec3<f32> = u_xlat16;
    let x_2092 : vec4<f32> = u_xlat8;
    u_xlat8.w = dot(x_2091, vec3<f32>(x_2092.x, x_2092.y, x_2092.z));
    let x_2097 : f32 = u_xlat8.w;
    u_xlat8.w = clamp(x_2097, 0.0f, 1.0f);
    let x_2100 : vec3<f32> = u_xlat10;
    let x_2101 : vec4<f32> = u_xlat8;
    u_xlat8.x = dot(x_2100, vec3<f32>(x_2101.x, x_2101.y, x_2101.z));
    let x_2106 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_2106, 0.0f, 1.0f);
    let x_2109 : vec4<f32> = u_xlat8;
    let x_2111 : vec4<f32> = u_xlat8;
    let x_2113 : vec2<f32> = (vec2<f32>(x_2109.x, x_2109.w) * vec2<f32>(x_2111.x, x_2111.w));
    let x_2114 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2113.x, x_2113.y, x_2114.z, x_2114.w);
    let x_2117 : f32 = u_xlat8.y;
    let x_2119 : f32 = u_xlat9.x;
    u_xlat22.x = ((x_2117 * x_2119) + 1.00001001358032226562f);
    let x_2124 : f32 = u_xlat22.x;
    let x_2126 : f32 = u_xlat22.x;
    u_xlat22.x = (x_2124 * x_2126);
    let x_2130 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_2130, 0.10000000149011611938f);
    let x_2134 : f32 = u_xlat8.x;
    let x_2136 : f32 = u_xlat22.x;
    u_xlat8.x = (x_2134 * x_2136);
    let x_2139 : f32 = u_xlat47;
    let x_2141 : f32 = u_xlat8.x;
    u_xlat8.x = (x_2139 * x_2141);
    let x_2144 : f32 = u_xlat33;
    let x_2146 : f32 = u_xlat8.x;
    u_xlat8.x = (x_2144 / x_2146);
    let x_2149 : vec4<f32> = u_xlat8;
    let x_2152 : vec4<f32> = u_xlat4;
    let x_2154 : vec3<f32> = ((vec3<f32>(x_2149.x, x_2149.x, x_2149.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + vec3<f32>(x_2152.x, x_2152.y, x_2152.z));
    let x_2155 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2154.x, x_2154.y, x_2154.z, x_2155.w);
    let x_2157 : vec4<f32> = u_xlat8;
    let x_2159 : vec4<f32> = u_xlat11;
    let x_2162 : vec3<f32> = u_xlat20;
    u_xlat20 = ((vec3<f32>(x_2157.x, x_2157.y, x_2157.z) * vec3<f32>(x_2159.x, x_2159.y, x_2159.z)) + x_2162);

    continuing {
      let x_2164 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2164 + bitcast<u32>(1i));
    }
  }
  let x_2166 : vec3<f32> = u_xlat17;
  let x_2167 : vec4<f32> = u_xlat6;
  let x_2170 : vec4<f32> = u_xlat7;
  u_xlat1 = ((x_2166 * vec3<f32>(x_2167.x, x_2167.x, x_2167.x)) + vec3<f32>(x_2170.x, x_2170.y, x_2170.z));
  let x_2173 : vec3<f32> = u_xlat20;
  let x_2174 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_2173 + x_2174);
  let x_2176 : vec4<f32> = vs_INTERP6;
  let x_2178 : vec3<f32> = u_xlat0;
  let x_2180 : vec3<f32> = u_xlat1;
  u_xlat0 = ((vec3<f32>(x_2176.w, x_2176.w, x_2176.w) * x_2178) + x_2180);
  let x_2183 : f32 = u_xlat3.x;
  let x_2185 : f32 = u_xlat3.x;
  u_xlat1.x = (x_2183 * -(x_2185));
  let x_2190 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_2190);
  let x_2193 : vec3<f32> = u_xlat0;
  let x_2196 : vec4<f32> = x_75.unity_FogColor;
  u_xlat0 = (x_2193 + -(vec3<f32>(x_2196.x, x_2196.y, x_2196.z)));
  let x_2202 : vec3<f32> = u_xlat1;
  let x_2204 : vec3<f32> = u_xlat0;
  let x_2207 : vec4<f32> = x_75.unity_FogColor;
  let x_2209 : vec3<f32> = ((vec3<f32>(x_2202.x, x_2202.x, x_2202.x) * x_2204) + vec3<f32>(x_2207.x, x_2207.y, x_2207.z));
  let x_2210 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2209.x, x_2209.y, x_2209.z, x_2210.w);
  let x_2212 : bool = u_xlatb2;
  let x_2213 : f32 = u_xlat42;
  SV_Target0.w = select(1.0f, x_2213, x_2212);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(6) vs_INTERP9_param : vec3<f32>, @location(5) vs_INTERP8_param : vec3<f32>, @location(3) vs_INTERP5_param : vec4<f32>, @location(4) vs_INTERP6_param : vec4<f32>, @location(2) vs_INTERP4_param : vec4<f32>, @location(0) vs_INTERP0_param : vec2<f32>, @location(1) vs_INTERP3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP9 = vs_INTERP9_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP6 = vs_INTERP6_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP3 = vs_INTERP3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


