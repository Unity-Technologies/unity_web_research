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

@group(0) @binding(5) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(11) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP5 : vec4<f32>;

var<private> u_xlat4 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_188 : UnityPerMaterial;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(6) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(12) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat19 : vec3<f32>;

var<private> vs_INTERP6 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_249 : LightShadows;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

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

var<private> u_xlat30 : vec2<f32>;

var<private> u_xlatb2 : bool;

var<private> vs_INTERP4 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat45 : f32;

var<private> u_xlat46 : f32;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlat20 : vec3<f32>;

var<private> u_xlatb20 : vec2<bool>;

var<private> u_xlatb34 : vec2<bool>;

var<private> u_xlat34 : vec2<f32>;

var<private> u_xlat48 : f32;

@group(1) @binding(4) var<uniform> x_938 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu43 : u32;

var<private> u_xlatu48 : u32;

var<private> u_xlati49 : i32;

var<private> u_xlati48 : i32;

var<private> u_xlat9 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_1393 : AdditionalLights;

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
  var x_120 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var x_365 : f32;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var x_500 : f32;
  var x_531 : f32;
  var x_581 : f32;
  var txVec1 : vec3<f32>;
  var x_1007 : f32;
  var x_1018 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1528 : f32;
  var x_1539 : f32;
  var txVec2 : vec3<f32>;
  var x_1985 : f32;
  var x_1998 : f32;
  var x_2056 : f32;
  var x_2067 : vec3<f32>;
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
  u_xlat4 = (vec3<f32>(x_184.x, x_184.y, x_184.z) * vec3<f32>(x_190.x, x_190.y, x_190.z));
  let x_199 : vec4<f32> = vs_INTERP5;
  let x_202 : f32 = x_75.x_GlobalMipBias.x;
  let x_203 : vec4<f32> = textureSampleBias(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1, vec2<f32>(x_199.x, x_199.y), x_202);
  u_xlat5 = vec4<f32>(x_203.w, x_203.x, x_203.y, x_203.z);
  let x_206 : vec4<f32> = u_xlat5;
  u_xlat6 = ((vec4<f32>(x_206.y, x_206.z, x_206.w, x_206.x) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_214 : vec4<f32> = u_xlat6;
  let x_215 : vec4<f32> = u_xlat6;
  u_xlat42 = dot(x_214, x_215);
  let x_217 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_217);
  let x_220 : f32 = u_xlat42;
  let x_222 : vec4<f32> = u_xlat6;
  u_xlat19 = (vec3<f32>(x_220, x_220, x_220) * vec3<f32>(x_222.x, x_222.y, x_222.z));
  let x_228 : f32 = vs_INTERP6.y;
  u_xlat42 = (x_228 * 200.0f);
  let x_231 : f32 = u_xlat42;
  u_xlat42 = min(x_231, 1.0f);
  let x_233 : f32 = u_xlat42;
  let x_235 : vec4<f32> = u_xlat3;
  let x_237 : vec3<f32> = (vec3<f32>(x_233, x_233, x_233) * vec3<f32>(x_235.x, x_235.y, x_235.z));
  let x_238 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_237.x, x_237.y, x_237.z, x_238.w);
  let x_240 : vec3<f32> = vs_INTERP8;
  let x_251 : vec4<f32> = x_249.x_MainLightWorldToShadow[0i][1i];
  let x_253 : vec3<f32> = (vec3<f32>(x_240.y, x_240.y, x_240.y) * vec3<f32>(x_251.x, x_251.y, x_251.z));
  let x_254 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_253.x, x_253.y, x_253.z, x_254.w);
  let x_257 : vec4<f32> = x_249.x_MainLightWorldToShadow[0i][0i];
  let x_259 : vec3<f32> = vs_INTERP8;
  let x_262 : vec4<f32> = u_xlat6;
  let x_264 : vec3<f32> = ((vec3<f32>(x_257.x, x_257.y, x_257.z) * vec3<f32>(x_259.x, x_259.x, x_259.x)) + vec3<f32>(x_262.x, x_262.y, x_262.z));
  let x_265 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_264.x, x_264.y, x_264.z, x_265.w);
  let x_268 : vec4<f32> = x_249.x_MainLightWorldToShadow[0i][2i];
  let x_270 : vec3<f32> = vs_INTERP8;
  let x_273 : vec4<f32> = u_xlat6;
  let x_275 : vec3<f32> = ((vec3<f32>(x_268.x, x_268.y, x_268.z) * vec3<f32>(x_270.z, x_270.z, x_270.z)) + vec3<f32>(x_273.x, x_273.y, x_273.z));
  let x_276 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_275.x, x_275.y, x_275.z, x_276.w);
  let x_278 : vec4<f32> = u_xlat6;
  let x_282 : vec4<f32> = x_249.x_MainLightWorldToShadow[0i][3i];
  let x_284 : vec3<f32> = (vec3<f32>(x_278.x, x_278.y, x_278.z) + vec3<f32>(x_282.x, x_282.y, x_282.z));
  let x_285 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_284.x, x_284.y, x_284.z, x_285.w);
  let x_288 : vec4<f32> = u_xlat6;
  let x_289 : vec2<f32> = vec2<f32>(x_288.x, x_288.y);
  let x_291 : f32 = u_xlat6.z;
  txVec0 = vec3<f32>(x_289.x, x_289.y, x_291);
  let x_303 : vec3<f32> = txVec0;
  let x_305 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_303.xy, x_303.z);
  u_xlat42 = x_305;
  let x_307 : f32 = x_249.x_MainLightShadowParams.x;
  u_xlat43 = (-(x_307) + 1.0f);
  let x_310 : f32 = u_xlat42;
  let x_312 : f32 = x_249.x_MainLightShadowParams.x;
  let x_314 : f32 = u_xlat43;
  u_xlat42 = ((x_310 * x_312) + x_314);
  let x_318 : f32 = u_xlat6.z;
  u_xlatb44 = (0.0f >= x_318);
  let x_322 : f32 = u_xlat6.z;
  u_xlatb46 = (x_322 >= 1.0f);
  let x_324 : bool = u_xlatb44;
  let x_325 : bool = u_xlatb46;
  u_xlatb44 = (x_324 | x_325);
  let x_327 : bool = u_xlatb44;
  let x_328 : f32 = u_xlat42;
  u_xlat42 = select(x_328, 1.0f, x_327);
  let x_330 : vec3<f32> = u_xlat0;
  let x_332 : vec4<f32> = x_75.x_MainLightPosition;
  u_xlat0.x = dot(x_330, -(vec3<f32>(x_332.x, x_332.y, x_332.z)));
  let x_338 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_338, 0.0f, 1.0f);
  let x_342 : f32 = u_xlat42;
  let x_345 : vec4<f32> = x_75.x_MainLightColor;
  u_xlat14 = (vec3<f32>(x_342, x_342, x_342) * vec3<f32>(x_345.x, x_345.y, x_345.z));
  let x_348 : vec3<f32> = u_xlat14;
  let x_349 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_348 * vec3<f32>(x_349.x, x_349.x, x_349.x));
  let x_352 : vec3<f32> = u_xlat0;
  let x_353 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_352 * vec3<f32>(x_353.x, x_353.y, x_353.z));
  let x_357 : f32 = x_132.unity_LODFade.x;
  u_xlatb42 = (x_357 < 0.0f);
  let x_361 : f32 = x_132.unity_LODFade.x;
  u_xlat44 = (x_361 + 1.0f);
  let x_363 : bool = u_xlatb42;
  if (x_363) {
    let x_368 : f32 = u_xlat44;
    x_365 = x_368;
  } else {
    let x_371 : f32 = x_132.unity_LODFade.x;
    x_365 = x_371;
  }
  let x_372 : f32 = x_365;
  u_xlat42 = x_372;
  let x_374 : f32 = u_xlat42;
  u_xlatb44 = (0.5f >= x_374);
  let x_376 : vec3<f32> = u_xlat2;
  let x_380 : vec4<f32> = x_75.x_ScreenParams;
  u_xlat2 = (abs(x_376) * vec3<f32>(x_380.x, x_380.y, x_380.x));
  let x_386 : vec3<f32> = u_xlat2;
  u_xlatu2 = vec3<u32>(x_386);
  let x_391 : u32 = u_xlatu2.z;
  u_xlatu30 = (x_391 * 1025u);
  let x_395 : u32 = u_xlatu30;
  u_xlatu3 = (x_395 >> 6u);
  let x_400 : u32 = u_xlatu30;
  let x_401 : u32 = u_xlatu3;
  u_xlati30 = bitcast<i32>((x_400 ^ x_401));
  let x_404 : i32 = u_xlati30;
  u_xlatu30 = (bitcast<u32>(x_404) * 9u);
  let x_408 : u32 = u_xlatu30;
  u_xlatu3 = (x_408 >> 11u);
  let x_411 : u32 = u_xlatu30;
  let x_412 : u32 = u_xlatu3;
  u_xlati30 = bitcast<i32>((x_411 ^ x_412));
  let x_415 : i32 = u_xlati30;
  u_xlati30 = (x_415 * 32769i);
  let x_419 : i32 = u_xlati30;
  let x_422 : u32 = u_xlatu2.y;
  u_xlati16 = bitcast<i32>((bitcast<u32>(x_419) ^ x_422));
  let x_426 : i32 = u_xlati16;
  u_xlatu16 = (bitcast<u32>(x_426) * 1025u);
  let x_429 : u32 = u_xlatu16;
  u_xlatu30 = (x_429 >> 6u);
  let x_431 : u32 = u_xlatu30;
  let x_432 : u32 = u_xlatu16;
  u_xlati16 = bitcast<i32>((x_431 ^ x_432));
  let x_435 : i32 = u_xlati16;
  u_xlatu16 = (bitcast<u32>(x_435) * 9u);
  let x_438 : u32 = u_xlatu16;
  u_xlatu30 = (x_438 >> 11u);
  let x_440 : u32 = u_xlatu30;
  let x_441 : u32 = u_xlatu16;
  u_xlati16 = bitcast<i32>((x_440 ^ x_441));
  let x_444 : i32 = u_xlati16;
  u_xlati16 = (x_444 * 32769i);
  let x_447 : i32 = u_xlati16;
  let x_450 : u32 = u_xlatu2.x;
  u_xlati2 = bitcast<i32>((bitcast<u32>(x_447) ^ x_450));
  let x_453 : i32 = u_xlati2;
  u_xlatu2.x = (bitcast<u32>(x_453) * 1025u);
  let x_458 : u32 = u_xlatu2.x;
  u_xlatu16 = (x_458 >> 6u);
  let x_460 : u32 = u_xlatu16;
  let x_462 : u32 = u_xlatu2.x;
  u_xlati2 = bitcast<i32>((x_460 ^ x_462));
  let x_465 : i32 = u_xlati2;
  u_xlatu2.x = (bitcast<u32>(x_465) * 9u);
  let x_470 : u32 = u_xlatu2.x;
  u_xlatu16 = (x_470 >> 11u);
  let x_472 : u32 = u_xlatu16;
  let x_474 : u32 = u_xlatu2.x;
  u_xlati2 = bitcast<i32>((x_472 ^ x_474));
  let x_477 : i32 = u_xlati2;
  u_xlati2 = (x_477 * 32769i);
  param = 1065353216i;
  let x_483 : i32 = u_xlati2;
  param_1 = x_483;
  param_2 = 0i;
  param_3 = 23i;
  let x_486 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlat2.x = bitcast<f32>(x_486);
  let x_490 : f32 = u_xlat2.x;
  u_xlat2.x = (x_490 + -1.0f);
  let x_495 : f32 = u_xlat2.x;
  u_xlat16.x = (-(x_495) + 1.0f);
  let x_499 : bool = u_xlatb44;
  if (x_499) {
    let x_504 : f32 = u_xlat2.x;
    x_500 = x_504;
  } else {
    let x_507 : f32 = u_xlat16.x;
    x_500 = x_507;
  }
  let x_508 : f32 = x_500;
  u_xlat2.x = x_508;
  let x_510 : f32 = u_xlat42;
  let x_513 : f32 = u_xlat2.x;
  u_xlat42 = ((x_510 * 2.0f) + -(x_513));
  let x_516 : f32 = u_xlat42;
  let x_518 : f32 = u_xlat3.w;
  u_xlat2.x = (x_516 * x_518);
  let x_525 : f32 = u_xlat2.x;
  u_xlatb16.x = (x_525 >= 0.40000000596046447754f);
  let x_530 : bool = u_xlatb16.x;
  if (x_530) {
    let x_535 : f32 = u_xlat2.x;
    x_531 = x_535;
  } else {
    x_531 = 0.0f;
  }
  let x_537 : f32 = x_531;
  u_xlat16.x = x_537;
  let x_540 : f32 = u_xlat3.w;
  let x_541 : f32 = u_xlat42;
  u_xlat42 = ((x_540 * x_541) + -0.40000000596046447754f);
  let x_548 : f32 = u_xlat2.x;
  u_xlat30.x = dpdxCoarse(x_548);
  let x_552 : f32 = u_xlat2.x;
  u_xlat2.x = dpdyCoarse(x_552);
  let x_556 : f32 = u_xlat2.x;
  let x_559 : f32 = u_xlat30.x;
  u_xlat2.x = (abs(x_556) + abs(x_559));
  let x_564 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_564, 0.00009999999747378752f);
  let x_568 : f32 = u_xlat42;
  let x_570 : f32 = u_xlat2.x;
  u_xlat42 = (x_568 / x_570);
  let x_572 : f32 = u_xlat42;
  u_xlat42 = (x_572 + 0.5f);
  let x_574 : f32 = u_xlat42;
  u_xlat42 = clamp(x_574, 0.0f, 1.0f);
  let x_578 : f32 = x_75.x_AlphaToMaskAvailable;
  u_xlatb2 = !((x_578 == 0.0f));
  let x_580 : bool = u_xlatb2;
  if (x_580) {
    let x_584 : f32 = u_xlat42;
    x_581 = x_584;
  } else {
    let x_587 : f32 = u_xlat16.x;
    x_581 = x_587;
  }
  let x_588 : f32 = x_581;
  u_xlat42 = x_588;
  let x_589 : f32 = u_xlat42;
  u_xlat16.x = (x_589 + -0.00009999999747378752f);
  let x_594 : f32 = u_xlat16.x;
  u_xlatb16.x = (x_594 < 0.0f);
  let x_598 : bool = u_xlatb16.x;
  if (((select(0i, 1i, x_598) * -1i) != 0i)) {
    discard;
  }
  let x_608 : f32 = vs_INTERP4.w;
  u_xlatb16.x = (0.0f < x_608);
  let x_612 : f32 = x_132.unity_WorldTransformParams.w;
  u_xlatb16.y = (x_612 >= 0.0f);
  let x_616 : bool = u_xlatb16.x;
  u_xlat16.x = select(-1.0f, 1.0f, x_616);
  let x_620 : bool = u_xlatb16.y;
  u_xlat16.y = select(-1.0f, 1.0f, x_620);
  let x_624 : f32 = u_xlat16.y;
  let x_626 : f32 = u_xlat16.x;
  u_xlat16.x = (x_624 * x_626);
  let x_629 : vec4<f32> = vs_INTERP4;
  let x_631 : vec3<f32> = vs_INTERP9;
  let x_633 : vec3<f32> = (vec3<f32>(x_629.y, x_629.z, x_629.x) * vec3<f32>(x_631.z, x_631.x, x_631.y));
  let x_634 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_633.x, x_633.y, x_633.z, x_634.w);
  let x_636 : vec3<f32> = vs_INTERP9;
  let x_638 : vec4<f32> = vs_INTERP4;
  let x_641 : vec4<f32> = u_xlat3;
  let x_644 : vec3<f32> = ((vec3<f32>(x_636.y, x_636.z, x_636.x) * vec3<f32>(x_638.z, x_638.x, x_638.y)) + -(vec3<f32>(x_641.x, x_641.y, x_641.z)));
  let x_645 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_644.x, x_644.y, x_644.z, x_645.w);
  let x_647 : vec3<f32> = u_xlat16;
  let x_649 : vec4<f32> = u_xlat3;
  u_xlat16 = (vec3<f32>(x_647.x, x_647.x, x_647.x) * vec3<f32>(x_649.x, x_649.y, x_649.z));
  let x_652 : vec3<f32> = u_xlat16;
  let x_653 : vec3<f32> = u_xlat19;
  u_xlat16 = (x_652 * vec3<f32>(x_653.y, x_653.y, x_653.y));
  let x_656 : vec3<f32> = u_xlat19;
  let x_658 : vec4<f32> = vs_INTERP4;
  let x_661 : vec3<f32> = u_xlat16;
  u_xlat16 = ((vec3<f32>(x_656.x, x_656.x, x_656.x) * vec3<f32>(x_658.x, x_658.y, x_658.z)) + x_661);
  let x_663 : vec3<f32> = u_xlat19;
  let x_665 : vec3<f32> = vs_INTERP9;
  let x_667 : vec3<f32> = u_xlat16;
  u_xlat16 = ((vec3<f32>(x_663.z, x_663.z, x_663.z) * x_665) + x_667);
  let x_669 : vec3<f32> = u_xlat16;
  let x_670 : vec3<f32> = u_xlat16;
  u_xlat3.x = dot(x_669, x_670);
  let x_674 : f32 = u_xlat3.x;
  u_xlat3.x = inverseSqrt(x_674);
  let x_677 : vec3<f32> = u_xlat16;
  let x_678 : vec4<f32> = u_xlat3;
  let x_680 : vec3<f32> = (x_677 * vec3<f32>(x_678.x, x_678.x, x_678.x));
  let x_681 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_680.x, x_680.y, x_680.z, x_681.w);
  let x_684 : f32 = vs_INTERP8.y;
  let x_686 : f32 = x_75.unity_MatrixV[1i].z;
  u_xlat16.x = (x_684 * x_686);
  let x_690 : f32 = x_75.unity_MatrixV[0i].z;
  let x_692 : f32 = vs_INTERP8.x;
  let x_695 : f32 = u_xlat16.x;
  u_xlat16.x = ((x_690 * x_692) + x_695);
  let x_699 : f32 = x_75.unity_MatrixV[2i].z;
  let x_701 : f32 = vs_INTERP8.z;
  let x_704 : f32 = u_xlat16.x;
  u_xlat16.x = ((x_699 * x_701) + x_704);
  let x_708 : f32 = u_xlat16.x;
  let x_710 : f32 = x_75.unity_MatrixV[3i].z;
  u_xlat16.x = (x_708 + x_710);
  let x_714 : f32 = u_xlat16.x;
  let x_718 : f32 = x_75.x_ProjectionParams.y;
  u_xlat16.x = (-(x_714) + -(x_718));
  let x_723 : f32 = u_xlat16.x;
  u_xlat16.x = max(x_723, 0.0f);
  let x_727 : f32 = u_xlat16.x;
  let x_730 : f32 = x_75.unity_FogParams.x;
  u_xlat16.x = (x_727 * x_730);
  u_xlat3.w = 1.0f;
  let x_736 : vec4<f32> = x_132.unity_SHAr;
  let x_737 : vec4<f32> = u_xlat3;
  u_xlat6.x = dot(x_736, x_737);
  let x_742 : vec4<f32> = x_132.unity_SHAg;
  let x_743 : vec4<f32> = u_xlat3;
  u_xlat6.y = dot(x_742, x_743);
  let x_748 : vec4<f32> = x_132.unity_SHAb;
  let x_749 : vec4<f32> = u_xlat3;
  u_xlat6.z = dot(x_748, x_749);
  let x_753 : vec4<f32> = u_xlat3;
  let x_755 : vec4<f32> = u_xlat3;
  u_xlat7 = (vec4<f32>(x_753.y, x_753.z, x_753.z, x_753.x) * vec4<f32>(x_755.x, x_755.y, x_755.z, x_755.z));
  let x_761 : vec4<f32> = x_132.unity_SHBr;
  let x_762 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_761, x_762);
  let x_767 : vec4<f32> = x_132.unity_SHBg;
  let x_768 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_767, x_768);
  let x_772 : vec4<f32> = x_132.unity_SHBb;
  let x_773 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_772, x_773);
  let x_777 : f32 = u_xlat3.y;
  let x_779 : f32 = u_xlat3.y;
  u_xlat30.x = (x_777 * x_779);
  let x_783 : f32 = u_xlat3.x;
  let x_785 : f32 = u_xlat3.x;
  let x_788 : f32 = u_xlat30.x;
  u_xlat30.x = ((x_783 * x_785) + -(x_788));
  let x_794 : vec4<f32> = x_132.unity_SHC;
  let x_796 : vec2<f32> = u_xlat30;
  let x_799 : vec4<f32> = u_xlat8;
  u_xlat19 = ((vec3<f32>(x_794.x, x_794.y, x_794.z) * vec3<f32>(x_796.x, x_796.x, x_796.x)) + vec3<f32>(x_799.x, x_799.y, x_799.z));
  let x_802 : vec3<f32> = u_xlat19;
  let x_803 : vec4<f32> = u_xlat6;
  u_xlat19 = (x_802 + vec3<f32>(x_803.x, x_803.y, x_803.z));
  let x_806 : vec3<f32> = u_xlat19;
  u_xlat19 = max(x_806, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_810 : f32 = u_xlat5.x;
  u_xlat5.x = x_810;
  let x_813 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_813, 0.0f, 1.0f);
  let x_816 : f32 = u_xlat42;
  u_xlat42 = x_816;
  let x_817 : f32 = u_xlat42;
  u_xlat42 = clamp(x_817, 0.0f, 1.0f);
  let x_819 : vec3<f32> = u_xlat4;
  u_xlat4 = (x_819 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_824 : f32 = u_xlat5.x;
  u_xlat30.x = (-(x_824) + 1.0f);
  let x_829 : f32 = u_xlat30.x;
  let x_831 : f32 = u_xlat30.x;
  u_xlat44 = (x_829 * x_831);
  let x_833 : f32 = u_xlat44;
  u_xlat44 = max(x_833, 0.0078125f);
  let x_837 : f32 = u_xlat44;
  let x_838 : f32 = u_xlat44;
  u_xlat45 = (x_837 * x_838);
  let x_842 : f32 = u_xlat5.x;
  u_xlat46 = (x_842 + 0.04000002145767211914f);
  let x_845 : f32 = u_xlat46;
  u_xlat46 = min(x_845, 1.0f);
  let x_847 : f32 = u_xlat44;
  u_xlat5.x = ((x_847 * 4.0f) + 2.0f);
  let x_853 : f32 = vs_INTERP6.w;
  u_xlat6.x = min(x_853, 1.0f);
  let x_858 : vec4<f32> = vs_INTERP3;
  let x_859 : vec2<f32> = vec2<f32>(x_858.x, x_858.y);
  let x_861 : f32 = vs_INTERP3.z;
  txVec1 = vec3<f32>(x_859.x, x_859.y, x_861);
  let x_869 : vec3<f32> = txVec1;
  let x_871 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_869.xy, x_869.z);
  u_xlat20.x = x_871;
  let x_874 : f32 = u_xlat20.x;
  let x_876 : f32 = x_249.x_MainLightShadowParams.x;
  let x_878 : f32 = u_xlat43;
  u_xlat43 = ((x_874 * x_876) + x_878);
  let x_882 : f32 = vs_INTERP3.z;
  u_xlatb20.x = (0.0f >= x_882);
  let x_887 : f32 = vs_INTERP3.z;
  u_xlatb34.x = (x_887 >= 1.0f);
  let x_891 : bool = u_xlatb34.x;
  let x_893 : bool = u_xlatb20.x;
  u_xlatb20.x = (x_891 | x_893);
  let x_897 : bool = u_xlatb20.x;
  let x_898 : f32 = u_xlat43;
  u_xlat43 = select(x_898, 1.0f, x_897);
  let x_900 : vec3<f32> = vs_INTERP8;
  let x_902 : vec3<f32> = x_75.x_WorldSpaceCameraPos;
  u_xlat20 = (x_900 + -(x_902));
  let x_905 : vec3<f32> = u_xlat20;
  let x_906 : vec3<f32> = u_xlat20;
  u_xlat20.x = dot(x_905, x_906);
  let x_911 : f32 = u_xlat20.x;
  let x_913 : f32 = x_249.x_MainLightShadowParams.z;
  let x_916 : f32 = x_249.x_MainLightShadowParams.w;
  u_xlat34.x = ((x_911 * x_913) + x_916);
  let x_920 : f32 = u_xlat34.x;
  u_xlat34.x = clamp(x_920, 0.0f, 1.0f);
  let x_924 : f32 = u_xlat43;
  u_xlat48 = (-(x_924) + 1.0f);
  let x_928 : f32 = u_xlat34.x;
  let x_929 : f32 = u_xlat48;
  let x_931 : f32 = u_xlat43;
  u_xlat43 = ((x_928 * x_929) + x_931);
  let x_940 : f32 = x_938.x_MainLightCookieTextureFormat;
  u_xlatb34.x = !((x_940 == -1.0f));
  let x_944 : bool = u_xlatb34.x;
  if (x_944) {
    let x_947 : vec3<f32> = vs_INTERP8;
    let x_950 : vec4<f32> = x_938.x_MainLightWorldToLight[1i];
    u_xlat34 = (vec2<f32>(x_947.y, x_947.y) * vec2<f32>(x_950.x, x_950.y));
    let x_954 : vec4<f32> = x_938.x_MainLightWorldToLight[0i];
    let x_956 : vec3<f32> = vs_INTERP8;
    let x_959 : vec2<f32> = u_xlat34;
    u_xlat34 = ((vec2<f32>(x_954.x, x_954.y) * vec2<f32>(x_956.x, x_956.x)) + x_959);
    let x_962 : vec4<f32> = x_938.x_MainLightWorldToLight[2i];
    let x_964 : vec3<f32> = vs_INTERP8;
    let x_967 : vec2<f32> = u_xlat34;
    u_xlat34 = ((vec2<f32>(x_962.x, x_962.y) * vec2<f32>(x_964.z, x_964.z)) + x_967);
    let x_969 : vec2<f32> = u_xlat34;
    let x_971 : vec4<f32> = x_938.x_MainLightWorldToLight[3i];
    u_xlat34 = (x_969 + vec2<f32>(x_971.x, x_971.y));
    let x_974 : vec2<f32> = u_xlat34;
    u_xlat34 = ((x_974 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_983 : vec2<f32> = u_xlat34;
    let x_985 : f32 = x_75.x_GlobalMipBias.x;
    let x_986 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_983, x_985);
    u_xlat7 = x_986;
    let x_988 : f32 = x_938.x_MainLightCookieTextureFormat;
    let x_990 : f32 = x_938.x_MainLightCookieTextureFormat;
    let x_992 : f32 = x_938.x_MainLightCookieTextureFormat;
    let x_994 : f32 = x_938.x_MainLightCookieTextureFormat;
    let x_995 : vec4<f32> = vec4<f32>(x_988, x_990, x_992, x_994);
    let x_1003 : vec4<bool> = (vec4<f32>(x_995.x, x_995.y, x_995.z, x_995.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb34 = vec2<bool>(x_1003.x, x_1003.y);
    let x_1006 : bool = u_xlatb34.y;
    if (x_1006) {
      let x_1011 : f32 = u_xlat7.w;
      x_1007 = x_1011;
    } else {
      let x_1014 : f32 = u_xlat7.x;
      x_1007 = x_1014;
    }
    let x_1015 : f32 = x_1007;
    u_xlat48 = x_1015;
    let x_1017 : bool = u_xlatb34.x;
    if (x_1017) {
      let x_1021 : vec4<f32> = u_xlat7;
      x_1018 = vec3<f32>(x_1021.x, x_1021.y, x_1021.z);
    } else {
      let x_1024 : f32 = u_xlat48;
      x_1018 = vec3<f32>(x_1024, x_1024, x_1024);
    }
    let x_1026 : vec3<f32> = x_1018;
    let x_1027 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1026.x, x_1026.y, x_1026.z, x_1027.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_1033 : vec4<f32> = u_xlat7;
  let x_1036 : vec4<f32> = x_75.x_MainLightColor;
  let x_1038 : vec3<f32> = (vec3<f32>(x_1033.x, x_1033.y, x_1033.z) * vec3<f32>(x_1036.x, x_1036.y, x_1036.z));
  let x_1039 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1038.x, x_1038.y, x_1038.z, x_1039.w);
  let x_1041 : vec3<f32> = u_xlat1;
  let x_1043 : vec4<f32> = u_xlat3;
  u_xlat34.x = dot(-(x_1041), vec3<f32>(x_1043.x, x_1043.y, x_1043.z));
  let x_1048 : f32 = u_xlat34.x;
  let x_1050 : f32 = u_xlat34.x;
  u_xlat34.x = (x_1048 + x_1050);
  let x_1053 : vec4<f32> = u_xlat3;
  let x_1055 : vec2<f32> = u_xlat34;
  let x_1059 : vec3<f32> = u_xlat1;
  let x_1061 : vec3<f32> = ((vec3<f32>(x_1053.x, x_1053.y, x_1053.z) * -(vec3<f32>(x_1055.x, x_1055.x, x_1055.x))) + -(x_1059));
  let x_1062 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1061.x, x_1061.y, x_1061.z, x_1062.w);
  let x_1064 : vec4<f32> = u_xlat3;
  let x_1066 : vec3<f32> = u_xlat1;
  u_xlat34.x = dot(vec3<f32>(x_1064.x, x_1064.y, x_1064.z), x_1066);
  let x_1070 : f32 = u_xlat34.x;
  u_xlat34.x = clamp(x_1070, 0.0f, 1.0f);
  let x_1074 : f32 = u_xlat34.x;
  u_xlat34.x = (-(x_1074) + 1.0f);
  let x_1079 : f32 = u_xlat34.x;
  let x_1081 : f32 = u_xlat34.x;
  u_xlat34.x = (x_1079 * x_1081);
  let x_1085 : f32 = u_xlat34.x;
  let x_1087 : f32 = u_xlat34.x;
  u_xlat34.x = (x_1085 * x_1087);
  let x_1091 : f32 = u_xlat30.x;
  u_xlat48 = ((-(x_1091) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1098 : f32 = u_xlat30.x;
  let x_1099 : f32 = u_xlat48;
  u_xlat30.x = (x_1098 * x_1099);
  let x_1103 : f32 = u_xlat30.x;
  u_xlat30.x = (x_1103 * 6.0f);
  let x_1115 : vec4<f32> = u_xlat8;
  let x_1118 : f32 = u_xlat30.x;
  let x_1119 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1115.x, x_1115.y, x_1115.z), x_1118);
  u_xlat8 = x_1119;
  let x_1121 : f32 = u_xlat8.w;
  u_xlat30.x = (x_1121 + -1.0f);
  let x_1125 : f32 = x_132.unity_SpecCube0_HDR.w;
  let x_1127 : f32 = u_xlat30.x;
  u_xlat30.x = ((x_1125 * x_1127) + 1.0f);
  let x_1132 : f32 = u_xlat30.x;
  u_xlat30.x = max(x_1132, 0.0f);
  let x_1136 : f32 = u_xlat30.x;
  u_xlat30.x = log2(x_1136);
  let x_1140 : f32 = u_xlat30.x;
  let x_1142 : f32 = x_132.unity_SpecCube0_HDR.y;
  u_xlat30.x = (x_1140 * x_1142);
  let x_1146 : f32 = u_xlat30.x;
  u_xlat30.x = exp2(x_1146);
  let x_1150 : f32 = u_xlat30.x;
  let x_1152 : f32 = x_132.unity_SpecCube0_HDR.x;
  u_xlat30.x = (x_1150 * x_1152);
  let x_1155 : vec4<f32> = u_xlat8;
  let x_1157 : vec2<f32> = u_xlat30;
  let x_1159 : vec3<f32> = (vec3<f32>(x_1155.x, x_1155.y, x_1155.z) * vec3<f32>(x_1157.x, x_1157.x, x_1157.x));
  let x_1160 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1159.x, x_1159.y, x_1159.z, x_1160.w);
  let x_1162 : f32 = u_xlat44;
  let x_1164 : f32 = u_xlat44;
  u_xlat30 = ((vec2<f32>(x_1162, x_1162) * vec2<f32>(x_1164, x_1164)) + vec2<f32>(-1.0f, 1.0f));
  let x_1170 : f32 = u_xlat30.y;
  u_xlat44 = (1.0f / x_1170);
  let x_1172 : f32 = u_xlat46;
  u_xlat46 = (x_1172 + -0.03999999910593032837f);
  let x_1176 : f32 = u_xlat34.x;
  let x_1177 : f32 = u_xlat46;
  u_xlat46 = ((x_1176 * x_1177) + 0.03999999910593032837f);
  let x_1181 : f32 = u_xlat44;
  let x_1182 : f32 = u_xlat46;
  u_xlat44 = (x_1181 * x_1182);
  let x_1184 : f32 = u_xlat44;
  let x_1186 : vec4<f32> = u_xlat8;
  let x_1188 : vec3<f32> = (vec3<f32>(x_1184, x_1184, x_1184) * vec3<f32>(x_1186.x, x_1186.y, x_1186.z));
  let x_1189 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1188.x, x_1188.y, x_1188.z, x_1189.w);
  let x_1191 : vec3<f32> = u_xlat19;
  let x_1192 : vec3<f32> = u_xlat4;
  let x_1194 : vec4<f32> = u_xlat8;
  u_xlat19 = ((x_1191 * x_1192) + vec3<f32>(x_1194.x, x_1194.y, x_1194.z));
  let x_1197 : f32 = u_xlat43;
  let x_1199 : f32 = x_132.unity_LightData.z;
  u_xlat43 = (x_1197 * x_1199);
  let x_1201 : vec4<f32> = u_xlat3;
  let x_1204 : vec4<f32> = x_75.x_MainLightPosition;
  u_xlat44 = dot(vec3<f32>(x_1201.x, x_1201.y, x_1201.z), vec3<f32>(x_1204.x, x_1204.y, x_1204.z));
  let x_1207 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1207, 0.0f, 1.0f);
  let x_1209 : f32 = u_xlat43;
  let x_1210 : f32 = u_xlat44;
  u_xlat43 = (x_1209 * x_1210);
  let x_1212 : f32 = u_xlat43;
  let x_1214 : vec4<f32> = u_xlat7;
  let x_1216 : vec3<f32> = (vec3<f32>(x_1212, x_1212, x_1212) * vec3<f32>(x_1214.x, x_1214.y, x_1214.z));
  let x_1217 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1216.x, x_1216.y, x_1216.z, x_1217.w);
  let x_1219 : vec3<f32> = u_xlat1;
  let x_1221 : vec4<f32> = x_75.x_MainLightPosition;
  let x_1223 : vec3<f32> = (x_1219 + vec3<f32>(x_1221.x, x_1221.y, x_1221.z));
  let x_1224 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1223.x, x_1223.y, x_1223.z, x_1224.w);
  let x_1226 : vec4<f32> = u_xlat8;
  let x_1228 : vec4<f32> = u_xlat8;
  u_xlat43 = dot(vec3<f32>(x_1226.x, x_1226.y, x_1226.z), vec3<f32>(x_1228.x, x_1228.y, x_1228.z));
  let x_1231 : f32 = u_xlat43;
  u_xlat43 = max(x_1231, 1.17549435e-38f);
  let x_1234 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_1234);
  let x_1236 : f32 = u_xlat43;
  let x_1238 : vec4<f32> = u_xlat8;
  let x_1240 : vec3<f32> = (vec3<f32>(x_1236, x_1236, x_1236) * vec3<f32>(x_1238.x, x_1238.y, x_1238.z));
  let x_1241 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1240.x, x_1240.y, x_1240.z, x_1241.w);
  let x_1243 : vec4<f32> = u_xlat3;
  let x_1245 : vec4<f32> = u_xlat8;
  u_xlat43 = dot(vec3<f32>(x_1243.x, x_1243.y, x_1243.z), vec3<f32>(x_1245.x, x_1245.y, x_1245.z));
  let x_1248 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1248, 0.0f, 1.0f);
  let x_1251 : vec4<f32> = x_75.x_MainLightPosition;
  let x_1253 : vec4<f32> = u_xlat8;
  u_xlat44 = dot(vec3<f32>(x_1251.x, x_1251.y, x_1251.z), vec3<f32>(x_1253.x, x_1253.y, x_1253.z));
  let x_1256 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1256, 0.0f, 1.0f);
  let x_1258 : f32 = u_xlat43;
  let x_1259 : f32 = u_xlat43;
  u_xlat43 = (x_1258 * x_1259);
  let x_1261 : f32 = u_xlat43;
  let x_1263 : f32 = u_xlat30.x;
  u_xlat43 = ((x_1261 * x_1263) + 1.00001001358032226562f);
  let x_1267 : f32 = u_xlat44;
  let x_1268 : f32 = u_xlat44;
  u_xlat44 = (x_1267 * x_1268);
  let x_1270 : f32 = u_xlat43;
  let x_1271 : f32 = u_xlat43;
  u_xlat43 = (x_1270 * x_1271);
  let x_1273 : f32 = u_xlat44;
  u_xlat44 = max(x_1273, 0.10000000149011611938f);
  let x_1276 : f32 = u_xlat43;
  let x_1277 : f32 = u_xlat44;
  u_xlat43 = (x_1276 * x_1277);
  let x_1280 : f32 = u_xlat5.x;
  let x_1281 : f32 = u_xlat43;
  u_xlat43 = (x_1280 * x_1281);
  let x_1283 : f32 = u_xlat45;
  let x_1284 : f32 = u_xlat43;
  u_xlat43 = (x_1283 / x_1284);
  let x_1286 : f32 = u_xlat43;
  let x_1290 : vec3<f32> = u_xlat4;
  let x_1291 : vec3<f32> = ((vec3<f32>(x_1286, x_1286, x_1286) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_1290);
  let x_1292 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1291.x, x_1291.y, x_1291.z, x_1292.w);
  let x_1294 : vec4<f32> = u_xlat7;
  let x_1296 : vec4<f32> = u_xlat8;
  let x_1298 : vec3<f32> = (vec3<f32>(x_1294.x, x_1294.y, x_1294.z) * vec3<f32>(x_1296.x, x_1296.y, x_1296.z));
  let x_1299 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1298.x, x_1298.y, x_1298.z, x_1299.w);
  let x_1303 : f32 = x_75.x_AdditionalLightsCount.x;
  let x_1305 : f32 = x_132.unity_LightData.y;
  u_xlat43 = min(x_1303, x_1305);
  let x_1308 : f32 = u_xlat43;
  u_xlatu43 = bitcast<u32>(i32(x_1308));
  let x_1312 : f32 = u_xlat20.x;
  let x_1315 : f32 = x_249.x_AdditionalShadowFadeParams.x;
  let x_1318 : f32 = x_249.x_AdditionalShadowFadeParams.y;
  u_xlat44 = ((x_1312 * x_1315) + x_1318);
  let x_1320 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1320, 0.0f, 1.0f);
  let x_1323 : f32 = x_938.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1325 : f32 = x_938.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1327 : f32 = x_938.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1329 : f32 = x_938.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1330 : vec4<f32> = vec4<f32>(x_1323, x_1325, x_1327, x_1329);
  let x_1337 : vec4<bool> = (vec4<f32>(x_1330.x, x_1330.y, x_1330.z, x_1330.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb20 = vec2<bool>(x_1337.x, x_1337.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1348 : u32 = u_xlatu_loop_1;
    let x_1349 : u32 = u_xlatu43;
    if ((x_1348 < x_1349)) {
    } else {
      break;
    }
    let x_1352 : u32 = u_xlatu_loop_1;
    u_xlatu48 = (x_1352 >> 2u);
    let x_1355 : u32 = u_xlatu_loop_1;
    u_xlati49 = bitcast<i32>((x_1355 & 3u));
    let x_1358 : u32 = u_xlatu48;
    let x_1361 : vec4<f32> = x_132.unity_LightIndices[bitcast<i32>(x_1358)];
    let x_1371 : i32 = u_xlati49;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1376 : vec4<u32> = indexable[x_1371];
    u_xlat48 = dot(x_1361, bitcast<vec4<f32>>(x_1376));
    let x_1380 : f32 = u_xlat48;
    u_xlati48 = i32(x_1380);
    let x_1383 : vec3<f32> = vs_INTERP8;
    let x_1394 : i32 = u_xlati48;
    let x_1396 : vec4<f32> = x_1393.x_AdditionalLightsPosition[x_1394];
    let x_1399 : i32 = u_xlati48;
    let x_1401 : vec4<f32> = x_1393.x_AdditionalLightsPosition[x_1399];
    u_xlat9 = ((-(x_1383) * vec3<f32>(x_1396.w, x_1396.w, x_1396.w)) + vec3<f32>(x_1401.x, x_1401.y, x_1401.z));
    let x_1405 : vec3<f32> = u_xlat9;
    let x_1406 : vec3<f32> = u_xlat9;
    u_xlat49 = dot(x_1405, x_1406);
    let x_1408 : f32 = u_xlat49;
    u_xlat49 = max(x_1408, 0.00006103515625f);
    let x_1412 : f32 = u_xlat49;
    u_xlat50 = inverseSqrt(x_1412);
    let x_1415 : f32 = u_xlat50;
    let x_1417 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1415, x_1415, x_1415) * x_1417);
    let x_1420 : f32 = u_xlat49;
    u_xlat51 = (1.0f / x_1420);
    let x_1422 : f32 = u_xlat49;
    let x_1423 : i32 = u_xlati48;
    let x_1425 : f32 = x_1393.x_AdditionalLightsAttenuation[x_1423].x;
    u_xlat49 = (x_1422 * x_1425);
    let x_1427 : f32 = u_xlat49;
    let x_1429 : f32 = u_xlat49;
    u_xlat49 = ((-(x_1427) * x_1429) + 1.0f);
    let x_1432 : f32 = u_xlat49;
    u_xlat49 = max(x_1432, 0.0f);
    let x_1434 : f32 = u_xlat49;
    let x_1435 : f32 = u_xlat49;
    u_xlat49 = (x_1434 * x_1435);
    let x_1437 : f32 = u_xlat49;
    let x_1438 : f32 = u_xlat51;
    u_xlat49 = (x_1437 * x_1438);
    let x_1440 : i32 = u_xlati48;
    let x_1442 : vec4<f32> = x_1393.x_AdditionalLightsSpotDir[x_1440];
    let x_1444 : vec3<f32> = u_xlat10;
    u_xlat51 = dot(vec3<f32>(x_1442.x, x_1442.y, x_1442.z), x_1444);
    let x_1446 : f32 = u_xlat51;
    let x_1447 : i32 = u_xlati48;
    let x_1449 : f32 = x_1393.x_AdditionalLightsAttenuation[x_1447].z;
    let x_1451 : i32 = u_xlati48;
    let x_1453 : f32 = x_1393.x_AdditionalLightsAttenuation[x_1451].w;
    u_xlat51 = ((x_1446 * x_1449) + x_1453);
    let x_1455 : f32 = u_xlat51;
    u_xlat51 = clamp(x_1455, 0.0f, 1.0f);
    let x_1457 : f32 = u_xlat51;
    let x_1458 : f32 = u_xlat51;
    u_xlat51 = (x_1457 * x_1458);
    let x_1460 : f32 = u_xlat49;
    let x_1461 : f32 = u_xlat51;
    u_xlat49 = (x_1460 * x_1461);
    let x_1465 : i32 = u_xlati48;
    let x_1467 : f32 = x_249.x_AdditionalShadowParams[x_1465].w;
    u_xlati51 = i32(x_1467);
    let x_1470 : i32 = u_xlati51;
    u_xlatb52 = (x_1470 >= 0i);
    let x_1472 : bool = u_xlatb52;
    if (x_1472) {
      let x_1476 : i32 = u_xlati48;
      let x_1478 : f32 = x_249.x_AdditionalShadowParams[x_1476].z;
      u_xlatb52 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1478, x_1478, x_1478, x_1478))));
      let x_1482 : bool = u_xlatb52;
      if (x_1482) {
        let x_1487 : vec3<f32> = u_xlat10;
        let x_1490 : vec3<f32> = u_xlat10;
        let x_1493 : vec4<bool> = (abs(vec4<f32>(x_1487.z, x_1487.z, x_1487.y, x_1487.z)) >= abs(vec4<f32>(x_1490.x, x_1490.y, x_1490.x, x_1490.x)));
        let x_1495 : vec3<bool> = vec3<bool>(x_1493.x, x_1493.y, x_1493.z);
        let x_1496 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1495.x, x_1495.y, x_1495.z, x_1496.w);
        let x_1499 : bool = u_xlatb11.y;
        let x_1501 : bool = u_xlatb11.x;
        u_xlatb52 = (x_1499 & x_1501);
        let x_1503 : vec3<f32> = u_xlat10;
        let x_1506 : vec4<bool> = (-(vec4<f32>(x_1503.z, x_1503.y, x_1503.z, x_1503.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1507 : vec3<bool> = vec3<bool>(x_1506.x, x_1506.y, x_1506.w);
        let x_1508 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1507.x, x_1507.y, x_1508.z, x_1507.z);
        let x_1512 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1512);
        let x_1517 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1517);
        let x_1523 : bool = u_xlatb11.w;
        u_xlat53 = select(0.0f, 1.0f, x_1523);
        let x_1527 : bool = u_xlatb11.z;
        if (x_1527) {
          let x_1532 : f32 = u_xlat11.y;
          x_1528 = x_1532;
        } else {
          let x_1534 : f32 = u_xlat53;
          x_1528 = x_1534;
        }
        let x_1535 : f32 = x_1528;
        u_xlat25.x = x_1535;
        let x_1538 : bool = u_xlatb52;
        if (x_1538) {
          let x_1543 : f32 = u_xlat11.x;
          x_1539 = x_1543;
        } else {
          let x_1546 : f32 = u_xlat25.x;
          x_1539 = x_1546;
        }
        let x_1547 : f32 = x_1539;
        u_xlat52 = x_1547;
        let x_1548 : i32 = u_xlati48;
        let x_1550 : f32 = x_249.x_AdditionalShadowParams[x_1548].w;
        u_xlat11.x = trunc(x_1550);
        let x_1553 : f32 = u_xlat52;
        let x_1555 : f32 = u_xlat11.x;
        u_xlat52 = (x_1553 + x_1555);
        let x_1557 : f32 = u_xlat52;
        u_xlati51 = i32(x_1557);
      }
      let x_1559 : i32 = u_xlati51;
      u_xlati51 = (x_1559 << bitcast<u32>(2i));
      let x_1561 : vec3<f32> = vs_INTERP8;
      let x_1564 : i32 = u_xlati51;
      let x_1567 : i32 = u_xlati51;
      let x_1571 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[((x_1564 + 1i) / 4i)][((x_1567 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1561.y, x_1561.y, x_1561.y, x_1561.y) * x_1571);
      let x_1573 : i32 = u_xlati51;
      let x_1575 : i32 = u_xlati51;
      let x_1578 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[(x_1573 / 4i)][(x_1575 % 4i)];
      let x_1579 : vec3<f32> = vs_INTERP8;
      let x_1582 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1578 * vec4<f32>(x_1579.x, x_1579.x, x_1579.x, x_1579.x)) + x_1582);
      let x_1584 : i32 = u_xlati51;
      let x_1587 : i32 = u_xlati51;
      let x_1591 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[((x_1584 + 2i) / 4i)][((x_1587 + 2i) % 4i)];
      let x_1592 : vec3<f32> = vs_INTERP8;
      let x_1595 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1591 * vec4<f32>(x_1592.z, x_1592.z, x_1592.z, x_1592.z)) + x_1595);
      let x_1597 : vec4<f32> = u_xlat11;
      let x_1598 : i32 = u_xlati51;
      let x_1601 : i32 = u_xlati51;
      let x_1605 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[((x_1598 + 3i) / 4i)][((x_1601 + 3i) % 4i)];
      u_xlat11 = (x_1597 + x_1605);
      let x_1607 : vec4<f32> = u_xlat11;
      let x_1609 : vec4<f32> = u_xlat11;
      let x_1611 : vec3<f32> = (vec3<f32>(x_1607.x, x_1607.y, x_1607.z) / vec3<f32>(x_1609.w, x_1609.w, x_1609.w));
      let x_1612 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1611.x, x_1611.y, x_1611.z, x_1612.w);
      let x_1615 : vec4<f32> = u_xlat11;
      let x_1616 : vec2<f32> = vec2<f32>(x_1615.x, x_1615.y);
      let x_1618 : f32 = u_xlat11.z;
      txVec2 = vec3<f32>(x_1616.x, x_1616.y, x_1618);
      let x_1626 : vec3<f32> = txVec2;
      let x_1628 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1626.xy, x_1626.z);
      u_xlat51 = x_1628;
      let x_1629 : i32 = u_xlati48;
      let x_1631 : f32 = x_249.x_AdditionalShadowParams[x_1629].x;
      u_xlat52 = (1.0f + -(x_1631));
      let x_1634 : f32 = u_xlat51;
      let x_1635 : i32 = u_xlati48;
      let x_1637 : f32 = x_249.x_AdditionalShadowParams[x_1635].x;
      let x_1639 : f32 = u_xlat52;
      u_xlat51 = ((x_1634 * x_1637) + x_1639);
      let x_1642 : f32 = u_xlat11.z;
      u_xlatb52 = (0.0f >= x_1642);
      let x_1645 : f32 = u_xlat11.z;
      u_xlatb11.x = (x_1645 >= 1.0f);
      let x_1648 : bool = u_xlatb52;
      let x_1650 : bool = u_xlatb11.x;
      u_xlatb52 = (x_1648 | x_1650);
      let x_1652 : bool = u_xlatb52;
      let x_1653 : f32 = u_xlat51;
      u_xlat51 = select(x_1653, 1.0f, x_1652);
    } else {
      u_xlat51 = 1.0f;
    }
    let x_1656 : f32 = u_xlat51;
    u_xlat52 = (-(x_1656) + 1.0f);
    let x_1659 : f32 = u_xlat44;
    let x_1660 : f32 = u_xlat52;
    let x_1662 : f32 = u_xlat51;
    u_xlat51 = ((x_1659 * x_1660) + x_1662);
    let x_1665 : i32 = u_xlati48;
    u_xlati52 = (1i << bitcast<u32>((x_1665 & 31i)));
    let x_1669 : i32 = u_xlati52;
    let x_1672 : f32 = x_938.x_AdditionalLightsCookieEnableBits;
    u_xlati52 = bitcast<i32>((bitcast<u32>(x_1669) & bitcast<u32>(x_1672)));
    let x_1676 : i32 = u_xlati52;
    if ((x_1676 != 0i)) {
      let x_1680 : i32 = u_xlati48;
      let x_1682 : f32 = x_938.x_AdditionalLightsLightTypes[x_1680].el;
      u_xlati52 = i32(x_1682);
      let x_1685 : i32 = u_xlati52;
      u_xlati11 = select(1i, 0i, (x_1685 != 0i));
      let x_1689 : i32 = u_xlati48;
      u_xlati25 = (x_1689 << bitcast<u32>(2i));
      let x_1691 : i32 = u_xlati11;
      if ((x_1691 != 0i)) {
        let x_1695 : vec3<f32> = vs_INTERP8;
        let x_1697 : i32 = u_xlati25;
        let x_1700 : i32 = u_xlati25;
        let x_1704 : vec4<f32> = x_938.x_AdditionalLightsWorldToLights[((x_1697 + 1i) / 4i)][((x_1700 + 1i) % 4i)];
        let x_1706 : vec3<f32> = (vec3<f32>(x_1695.y, x_1695.y, x_1695.y) * vec3<f32>(x_1704.x, x_1704.y, x_1704.w));
        let x_1707 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1706.x, x_1707.y, x_1706.y, x_1706.z);
        let x_1709 : i32 = u_xlati25;
        let x_1711 : i32 = u_xlati25;
        let x_1714 : vec4<f32> = x_938.x_AdditionalLightsWorldToLights[(x_1709 / 4i)][(x_1711 % 4i)];
        let x_1716 : vec3<f32> = vs_INTERP8;
        let x_1719 : vec4<f32> = u_xlat11;
        let x_1721 : vec3<f32> = ((vec3<f32>(x_1714.x, x_1714.y, x_1714.w) * vec3<f32>(x_1716.x, x_1716.x, x_1716.x)) + vec3<f32>(x_1719.x, x_1719.z, x_1719.w));
        let x_1722 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1721.x, x_1722.y, x_1721.y, x_1721.z);
        let x_1724 : i32 = u_xlati25;
        let x_1727 : i32 = u_xlati25;
        let x_1731 : vec4<f32> = x_938.x_AdditionalLightsWorldToLights[((x_1724 + 2i) / 4i)][((x_1727 + 2i) % 4i)];
        let x_1733 : vec3<f32> = vs_INTERP8;
        let x_1736 : vec4<f32> = u_xlat11;
        let x_1738 : vec3<f32> = ((vec3<f32>(x_1731.x, x_1731.y, x_1731.w) * vec3<f32>(x_1733.z, x_1733.z, x_1733.z)) + vec3<f32>(x_1736.x, x_1736.z, x_1736.w));
        let x_1739 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1738.x, x_1739.y, x_1738.y, x_1738.z);
        let x_1741 : vec4<f32> = u_xlat11;
        let x_1743 : i32 = u_xlati25;
        let x_1746 : i32 = u_xlati25;
        let x_1750 : vec4<f32> = x_938.x_AdditionalLightsWorldToLights[((x_1743 + 3i) / 4i)][((x_1746 + 3i) % 4i)];
        let x_1752 : vec3<f32> = (vec3<f32>(x_1741.x, x_1741.z, x_1741.w) + vec3<f32>(x_1750.x, x_1750.y, x_1750.w));
        let x_1753 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1752.x, x_1753.y, x_1752.y, x_1752.z);
        let x_1755 : vec4<f32> = u_xlat11;
        let x_1757 : vec4<f32> = u_xlat11;
        let x_1759 : vec2<f32> = (vec2<f32>(x_1755.x, x_1755.z) / vec2<f32>(x_1757.w, x_1757.w));
        let x_1760 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1759.x, x_1760.y, x_1759.y, x_1760.w);
        let x_1762 : vec4<f32> = u_xlat11;
        let x_1765 : vec2<f32> = ((vec2<f32>(x_1762.x, x_1762.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1766 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1765.x, x_1766.y, x_1765.y, x_1766.w);
        let x_1768 : vec4<f32> = u_xlat11;
        let x_1772 : vec2<f32> = clamp(vec2<f32>(x_1768.x, x_1768.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1773 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1772.x, x_1773.y, x_1772.y, x_1773.w);
        let x_1775 : i32 = u_xlati48;
        let x_1777 : vec4<f32> = x_938.x_AdditionalLightsCookieAtlasUVRects[x_1775];
        let x_1779 : vec4<f32> = u_xlat11;
        let x_1782 : i32 = u_xlati48;
        let x_1784 : vec4<f32> = x_938.x_AdditionalLightsCookieAtlasUVRects[x_1782];
        let x_1786 : vec2<f32> = ((vec2<f32>(x_1777.x, x_1777.y) * vec2<f32>(x_1779.x, x_1779.z)) + vec2<f32>(x_1784.z, x_1784.w));
        let x_1787 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1786.x, x_1787.y, x_1786.y, x_1787.w);
      } else {
        let x_1790 : i32 = u_xlati52;
        u_xlatb52 = (x_1790 == 1i);
        let x_1792 : bool = u_xlatb52;
        u_xlati52 = select(0i, 1i, x_1792);
        let x_1794 : i32 = u_xlati52;
        if ((x_1794 != 0i)) {
          let x_1799 : vec3<f32> = vs_INTERP8;
          let x_1801 : i32 = u_xlati25;
          let x_1804 : i32 = u_xlati25;
          let x_1808 : vec4<f32> = x_938.x_AdditionalLightsWorldToLights[((x_1801 + 1i) / 4i)][((x_1804 + 1i) % 4i)];
          let x_1810 : vec2<f32> = (vec2<f32>(x_1799.y, x_1799.y) * vec2<f32>(x_1808.x, x_1808.y));
          let x_1811 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1810.x, x_1810.y, x_1811.z, x_1811.w);
          let x_1813 : i32 = u_xlati25;
          let x_1815 : i32 = u_xlati25;
          let x_1818 : vec4<f32> = x_938.x_AdditionalLightsWorldToLights[(x_1813 / 4i)][(x_1815 % 4i)];
          let x_1820 : vec3<f32> = vs_INTERP8;
          let x_1823 : vec4<f32> = u_xlat12;
          let x_1825 : vec2<f32> = ((vec2<f32>(x_1818.x, x_1818.y) * vec2<f32>(x_1820.x, x_1820.x)) + vec2<f32>(x_1823.x, x_1823.y));
          let x_1826 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1825.x, x_1825.y, x_1826.z, x_1826.w);
          let x_1828 : i32 = u_xlati25;
          let x_1831 : i32 = u_xlati25;
          let x_1835 : vec4<f32> = x_938.x_AdditionalLightsWorldToLights[((x_1828 + 2i) / 4i)][((x_1831 + 2i) % 4i)];
          let x_1837 : vec3<f32> = vs_INTERP8;
          let x_1840 : vec4<f32> = u_xlat12;
          let x_1842 : vec2<f32> = ((vec2<f32>(x_1835.x, x_1835.y) * vec2<f32>(x_1837.z, x_1837.z)) + vec2<f32>(x_1840.x, x_1840.y));
          let x_1843 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1842.x, x_1842.y, x_1843.z, x_1843.w);
          let x_1845 : vec4<f32> = u_xlat12;
          let x_1847 : i32 = u_xlati25;
          let x_1850 : i32 = u_xlati25;
          let x_1854 : vec4<f32> = x_938.x_AdditionalLightsWorldToLights[((x_1847 + 3i) / 4i)][((x_1850 + 3i) % 4i)];
          let x_1856 : vec2<f32> = (vec2<f32>(x_1845.x, x_1845.y) + vec2<f32>(x_1854.x, x_1854.y));
          let x_1857 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1856.x, x_1856.y, x_1857.z, x_1857.w);
          let x_1859 : vec4<f32> = u_xlat12;
          let x_1862 : vec2<f32> = ((vec2<f32>(x_1859.x, x_1859.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1863 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1862.x, x_1862.y, x_1863.z, x_1863.w);
          let x_1865 : vec4<f32> = u_xlat12;
          let x_1867 : vec2<f32> = fract(vec2<f32>(x_1865.x, x_1865.y));
          let x_1868 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1867.x, x_1867.y, x_1868.z, x_1868.w);
          let x_1870 : i32 = u_xlati48;
          let x_1872 : vec4<f32> = x_938.x_AdditionalLightsCookieAtlasUVRects[x_1870];
          let x_1874 : vec4<f32> = u_xlat12;
          let x_1877 : i32 = u_xlati48;
          let x_1879 : vec4<f32> = x_938.x_AdditionalLightsCookieAtlasUVRects[x_1877];
          let x_1881 : vec2<f32> = ((vec2<f32>(x_1872.x, x_1872.y) * vec2<f32>(x_1874.x, x_1874.y)) + vec2<f32>(x_1879.z, x_1879.w));
          let x_1882 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1881.x, x_1882.y, x_1881.y, x_1882.w);
        } else {
          let x_1885 : vec3<f32> = vs_INTERP8;
          let x_1887 : i32 = u_xlati25;
          let x_1890 : i32 = u_xlati25;
          let x_1894 : vec4<f32> = x_938.x_AdditionalLightsWorldToLights[((x_1887 + 1i) / 4i)][((x_1890 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1885.y, x_1885.y, x_1885.y, x_1885.y) * x_1894);
          let x_1896 : i32 = u_xlati25;
          let x_1898 : i32 = u_xlati25;
          let x_1901 : vec4<f32> = x_938.x_AdditionalLightsWorldToLights[(x_1896 / 4i)][(x_1898 % 4i)];
          let x_1902 : vec3<f32> = vs_INTERP8;
          let x_1905 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1901 * vec4<f32>(x_1902.x, x_1902.x, x_1902.x, x_1902.x)) + x_1905);
          let x_1907 : i32 = u_xlati25;
          let x_1910 : i32 = u_xlati25;
          let x_1914 : vec4<f32> = x_938.x_AdditionalLightsWorldToLights[((x_1907 + 2i) / 4i)][((x_1910 + 2i) % 4i)];
          let x_1915 : vec3<f32> = vs_INTERP8;
          let x_1918 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1914 * vec4<f32>(x_1915.z, x_1915.z, x_1915.z, x_1915.z)) + x_1918);
          let x_1920 : vec4<f32> = u_xlat12;
          let x_1921 : i32 = u_xlati25;
          let x_1924 : i32 = u_xlati25;
          let x_1928 : vec4<f32> = x_938.x_AdditionalLightsWorldToLights[((x_1921 + 3i) / 4i)][((x_1924 + 3i) % 4i)];
          u_xlat12 = (x_1920 + x_1928);
          let x_1930 : vec4<f32> = u_xlat12;
          let x_1932 : vec4<f32> = u_xlat12;
          let x_1934 : vec3<f32> = (vec3<f32>(x_1930.x, x_1930.y, x_1930.z) / vec3<f32>(x_1932.w, x_1932.w, x_1932.w));
          let x_1935 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1934.x, x_1934.y, x_1934.z, x_1935.w);
          let x_1937 : vec4<f32> = u_xlat12;
          let x_1939 : vec4<f32> = u_xlat12;
          u_xlat52 = dot(vec3<f32>(x_1937.x, x_1937.y, x_1937.z), vec3<f32>(x_1939.x, x_1939.y, x_1939.z));
          let x_1942 : f32 = u_xlat52;
          u_xlat52 = inverseSqrt(x_1942);
          let x_1944 : f32 = u_xlat52;
          let x_1946 : vec4<f32> = u_xlat12;
          let x_1948 : vec3<f32> = (vec3<f32>(x_1944, x_1944, x_1944) * vec3<f32>(x_1946.x, x_1946.y, x_1946.z));
          let x_1949 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1948.x, x_1948.y, x_1948.z, x_1949.w);
          let x_1951 : vec4<f32> = u_xlat12;
          u_xlat52 = dot(abs(vec3<f32>(x_1951.x, x_1951.y, x_1951.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1956 : f32 = u_xlat52;
          u_xlat52 = max(x_1956, 0.00000099999999747524f);
          let x_1959 : f32 = u_xlat52;
          u_xlat52 = (1.0f / x_1959);
          let x_1962 : f32 = u_xlat52;
          let x_1964 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1962, x_1962, x_1962) * vec3<f32>(x_1964.z, x_1964.x, x_1964.y));
          let x_1968 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1968);
          let x_1972 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1972, 0.0f, 1.0f);
          let x_1977 : vec3<f32> = u_xlat13;
          let x_1979 : vec4<bool> = (vec4<f32>(x_1977.y, x_1977.y, x_1977.z, x_1977.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1980 : vec2<bool> = vec2<bool>(x_1979.x, x_1979.z);
          let x_1981 : vec3<bool> = u_xlatb25;
          u_xlatb25 = vec3<bool>(x_1980.x, x_1981.y, x_1980.y);
          let x_1984 : bool = u_xlatb25.x;
          if (x_1984) {
            let x_1989 : f32 = u_xlat13.x;
            x_1985 = x_1989;
          } else {
            let x_1992 : f32 = u_xlat13.x;
            x_1985 = -(x_1992);
          }
          let x_1994 : f32 = x_1985;
          u_xlat25.x = x_1994;
          let x_1997 : bool = u_xlatb25.z;
          if (x_1997) {
            let x_2002 : f32 = u_xlat13.x;
            x_1998 = x_2002;
          } else {
            let x_2005 : f32 = u_xlat13.x;
            x_1998 = -(x_2005);
          }
          let x_2007 : f32 = x_1998;
          u_xlat25.z = x_2007;
          let x_2009 : vec4<f32> = u_xlat12;
          let x_2011 : f32 = u_xlat52;
          let x_2014 : vec3<f32> = u_xlat25;
          let x_2016 : vec2<f32> = ((vec2<f32>(x_2009.x, x_2009.y) * vec2<f32>(x_2011, x_2011)) + vec2<f32>(x_2014.x, x_2014.z));
          let x_2017 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_2016.x, x_2017.y, x_2016.y);
          let x_2019 : vec3<f32> = u_xlat25;
          let x_2022 : vec2<f32> = ((vec2<f32>(x_2019.x, x_2019.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2023 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_2022.x, x_2023.y, x_2022.y);
          let x_2025 : vec3<f32> = u_xlat25;
          let x_2029 : vec2<f32> = clamp(vec2<f32>(x_2025.x, x_2025.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2030 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_2029.x, x_2030.y, x_2029.y);
          let x_2032 : i32 = u_xlati48;
          let x_2034 : vec4<f32> = x_938.x_AdditionalLightsCookieAtlasUVRects[x_2032];
          let x_2036 : vec3<f32> = u_xlat25;
          let x_2039 : i32 = u_xlati48;
          let x_2041 : vec4<f32> = x_938.x_AdditionalLightsCookieAtlasUVRects[x_2039];
          let x_2043 : vec2<f32> = ((vec2<f32>(x_2034.x, x_2034.y) * vec2<f32>(x_2036.x, x_2036.z)) + vec2<f32>(x_2041.z, x_2041.w));
          let x_2044 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2043.x, x_2044.y, x_2043.y, x_2044.w);
        }
      }
      let x_2051 : vec4<f32> = u_xlat11;
      let x_2053 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_2051.x, x_2051.z), 0.0f);
      u_xlat11 = x_2053;
      let x_2055 : bool = u_xlatb20.y;
      if (x_2055) {
        let x_2060 : f32 = u_xlat11.w;
        x_2056 = x_2060;
      } else {
        let x_2063 : f32 = u_xlat11.x;
        x_2056 = x_2063;
      }
      let x_2064 : f32 = x_2056;
      u_xlat52 = x_2064;
      let x_2066 : bool = u_xlatb20.x;
      if (x_2066) {
        let x_2070 : vec4<f32> = u_xlat11;
        x_2067 = vec3<f32>(x_2070.x, x_2070.y, x_2070.z);
      } else {
        let x_2073 : f32 = u_xlat52;
        x_2067 = vec3<f32>(x_2073, x_2073, x_2073);
      }
      let x_2075 : vec3<f32> = x_2067;
      let x_2076 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2075.x, x_2075.y, x_2075.z, x_2076.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2082 : vec4<f32> = u_xlat11;
    let x_2084 : i32 = u_xlati48;
    let x_2086 : vec4<f32> = x_1393.x_AdditionalLightsColor[x_2084];
    let x_2088 : vec3<f32> = (vec3<f32>(x_2082.x, x_2082.y, x_2082.z) * vec3<f32>(x_2086.x, x_2086.y, x_2086.z));
    let x_2089 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2088.x, x_2088.y, x_2088.z, x_2089.w);
    let x_2091 : f32 = u_xlat49;
    let x_2092 : f32 = u_xlat51;
    u_xlat48 = (x_2091 * x_2092);
    let x_2094 : vec4<f32> = u_xlat3;
    let x_2096 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_2094.x, x_2094.y, x_2094.z), x_2096);
    let x_2098 : f32 = u_xlat49;
    u_xlat49 = clamp(x_2098, 0.0f, 1.0f);
    let x_2100 : f32 = u_xlat48;
    let x_2101 : f32 = u_xlat49;
    u_xlat48 = (x_2100 * x_2101);
    let x_2103 : f32 = u_xlat48;
    let x_2105 : vec4<f32> = u_xlat11;
    let x_2107 : vec3<f32> = (vec3<f32>(x_2103, x_2103, x_2103) * vec3<f32>(x_2105.x, x_2105.y, x_2105.z));
    let x_2108 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2107.x, x_2107.y, x_2107.z, x_2108.w);
    let x_2110 : vec3<f32> = u_xlat9;
    let x_2111 : f32 = u_xlat50;
    let x_2114 : vec3<f32> = u_xlat1;
    u_xlat9 = ((x_2110 * vec3<f32>(x_2111, x_2111, x_2111)) + x_2114);
    let x_2116 : vec3<f32> = u_xlat9;
    let x_2117 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_2116, x_2117);
    let x_2119 : f32 = u_xlat48;
    u_xlat48 = max(x_2119, 1.17549435e-38f);
    let x_2121 : f32 = u_xlat48;
    u_xlat48 = inverseSqrt(x_2121);
    let x_2123 : f32 = u_xlat48;
    let x_2125 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_2123, x_2123, x_2123) * x_2125);
    let x_2127 : vec4<f32> = u_xlat3;
    let x_2129 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_2127.x, x_2127.y, x_2127.z), x_2129);
    let x_2131 : f32 = u_xlat48;
    u_xlat48 = clamp(x_2131, 0.0f, 1.0f);
    let x_2133 : vec3<f32> = u_xlat10;
    let x_2134 : vec3<f32> = u_xlat9;
    u_xlat49 = dot(x_2133, x_2134);
    let x_2136 : f32 = u_xlat49;
    u_xlat49 = clamp(x_2136, 0.0f, 1.0f);
    let x_2138 : f32 = u_xlat48;
    let x_2139 : f32 = u_xlat48;
    u_xlat48 = (x_2138 * x_2139);
    let x_2141 : f32 = u_xlat48;
    let x_2143 : f32 = u_xlat30.x;
    u_xlat48 = ((x_2141 * x_2143) + 1.00001001358032226562f);
    let x_2146 : f32 = u_xlat49;
    let x_2147 : f32 = u_xlat49;
    u_xlat49 = (x_2146 * x_2147);
    let x_2149 : f32 = u_xlat48;
    let x_2150 : f32 = u_xlat48;
    u_xlat48 = (x_2149 * x_2150);
    let x_2152 : f32 = u_xlat49;
    u_xlat49 = max(x_2152, 0.10000000149011611938f);
    let x_2154 : f32 = u_xlat48;
    let x_2155 : f32 = u_xlat49;
    u_xlat48 = (x_2154 * x_2155);
    let x_2158 : f32 = u_xlat5.x;
    let x_2159 : f32 = u_xlat48;
    u_xlat48 = (x_2158 * x_2159);
    let x_2161 : f32 = u_xlat45;
    let x_2162 : f32 = u_xlat48;
    u_xlat48 = (x_2161 / x_2162);
    let x_2164 : f32 = u_xlat48;
    let x_2167 : vec3<f32> = u_xlat4;
    u_xlat9 = ((vec3<f32>(x_2164, x_2164, x_2164) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_2167);
    let x_2169 : vec3<f32> = u_xlat9;
    let x_2170 : vec4<f32> = u_xlat11;
    let x_2173 : vec4<f32> = u_xlat8;
    let x_2175 : vec3<f32> = ((x_2169 * vec3<f32>(x_2170.x, x_2170.y, x_2170.z)) + vec3<f32>(x_2173.x, x_2173.y, x_2173.z));
    let x_2176 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2175.x, x_2175.y, x_2175.z, x_2176.w);

    continuing {
      let x_2178 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2178 + bitcast<u32>(1i));
    }
  }
  let x_2180 : vec3<f32> = u_xlat19;
  let x_2181 : vec4<f32> = u_xlat6;
  let x_2184 : vec4<f32> = u_xlat7;
  u_xlat1 = ((x_2180 * vec3<f32>(x_2181.x, x_2181.x, x_2181.x)) + vec3<f32>(x_2184.x, x_2184.y, x_2184.z));
  let x_2187 : vec4<f32> = u_xlat8;
  let x_2189 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_2187.x, x_2187.y, x_2187.z) + x_2189);
  let x_2191 : vec4<f32> = vs_INTERP6;
  let x_2193 : vec3<f32> = u_xlat0;
  let x_2195 : vec3<f32> = u_xlat1;
  u_xlat0 = ((vec3<f32>(x_2191.w, x_2191.w, x_2191.w) * x_2193) + x_2195);
  let x_2198 : f32 = u_xlat16.x;
  let x_2200 : f32 = u_xlat16.x;
  u_xlat1.x = (x_2198 * -(x_2200));
  let x_2205 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_2205);
  let x_2208 : vec3<f32> = u_xlat0;
  let x_2211 : vec4<f32> = x_75.unity_FogColor;
  u_xlat0 = (x_2208 + -(vec3<f32>(x_2211.x, x_2211.y, x_2211.z)));
  let x_2217 : vec3<f32> = u_xlat1;
  let x_2219 : vec3<f32> = u_xlat0;
  let x_2222 : vec4<f32> = x_75.unity_FogColor;
  let x_2224 : vec3<f32> = ((vec3<f32>(x_2217.x, x_2217.x, x_2217.x) * x_2219) + vec3<f32>(x_2222.x, x_2222.y, x_2222.z));
  let x_2225 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2224.x, x_2224.y, x_2224.z, x_2225.w);
  let x_2227 : bool = u_xlatb2;
  let x_2228 : f32 = u_xlat42;
  SV_Target0.w = select(1.0f, x_2228, x_2227);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(5) vs_INTERP9_param : vec3<f32>, @location(4) vs_INTERP8_param : vec3<f32>, @location(2) vs_INTERP5_param : vec4<f32>, @location(3) vs_INTERP6_param : vec4<f32>, @location(1) vs_INTERP4_param : vec4<f32>, @location(0) vs_INTERP3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP9 = vs_INTERP9_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP6 = vs_INTERP6_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP3 = vs_INTERP3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


