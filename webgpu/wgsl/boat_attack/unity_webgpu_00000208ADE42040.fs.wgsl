struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AmbientOcclusionParam : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_ProjectionParams : vec4<f32>,
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  x_DitheringTextureInvSize : f32,
}

struct UnityPerMaterial {
  x_BaseMap_ST : vec4<f32>,
  x_DetailAlbedoMap_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Smoothness : f32,
  x_Metallic : f32,
  x_BumpScale : f32,
  x_Parallax : f32,
  x_OcclusionStrength : f32,
  x_ClearCoatMask : f32,
  x_ClearCoatSmoothness : f32,
  x_DetailAlbedoMapScale : f32,
  x_DetailNormalMapScale : f32,
  x_Surface : f32,
}

type Arr = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr,
  unity_ProbesOcclusion : vec4<f32>,
  unity_SpecCube0_HDR : vec4<f32>,
  unity_SpecCube1_HDR : vec4<f32>,
  unity_SpecCube0_BoxMax : vec4<f32>,
  unity_SpecCube0_BoxMin : vec4<f32>,
  unity_SpecCube0_ProbePosition : vec4<f32>,
  unity_SpecCube1_BoxMax : vec4<f32>,
  unity_SpecCube1_BoxMin : vec4<f32>,
  unity_SpecCube1_ProbePosition : vec4<f32>,
  unity_LightmapST : vec4<f32>,
  unity_DynamicLightmapST : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_RendererBounds_Min : vec4<f32>,
  unity_RendererBounds_Max : vec4<f32>,
  unity_MatrixPreviousM : mat4x4<f32>,
  unity_MatrixPreviousMI : mat4x4<f32>,
  unity_MotionVectorsParams : vec4<f32>,
  unity_SpriteColor : vec4<f32>,
  unity_SpriteProps : vec4<f32>,
}

type Arr_1 = array<mat4x4<f32>, 5u>;

struct MainLightShadows {
  x_MainLightWorldToShadow : Arr_1,
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  x_MainLightShadowOffset0 : vec4<f32>,
  x_MainLightShadowOffset1 : vec4<f32>,
  x_MainLightShadowParams : vec4<f32>,
  x_MainLightShadowmapSize : vec4<f32>,
}

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_2 = array<strided_arr, 8u>;

struct LightCookies {
  x_MainLightWorldToLight : mat4x4<f32>,
  x_AdditionalLightsCookieEnableBits : Arr_2,
  x_MainLightCookieTextureFormat : f32,
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
}

type Arr_3 = array<vec4<f32>, 256u>;

type Arr_4 = array<vec4<f32>, 256u>;

type Arr_5 = array<vec4<f32>, 256u>;

type Arr_6 = array<vec4<f32>, 256u>;

type Arr_7 = array<vec4<f32>, 256u>;

struct strided_arr_1 {
  @size(16)
  el : f32,
}

type Arr_8 = array<strided_arr_1, 256u>;

type Arr_9 = array<vec4<f32>, 256u>;

type Arr_10 = array<strided_arr_1, 256u>;

struct AdditionalLights {
  x_AdditionalLightsPosition : Arr_9,
  x_AdditionalLightsColor : Arr_9,
  x_AdditionalLightsAttenuation : Arr_9,
  x_AdditionalLightsSpotDir : Arr_9,
  x_AdditionalLightsOcclusionProbes : Arr_9,
  x_AdditionalLightsLayerMasks : Arr_10,
}

type Arr_11 = array<mat4x4<f32>, 256u>;

struct AdditionalLightsCookies {
  x_AdditionalLightsWorldToLights : Arr_11,
  x_AdditionalLightsCookieAtlasUVRects : Arr_9,
  x_AdditionalLightsLightTypes : Arr_10,
}

var<private> gl_FragCoord : vec4<f32>;

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

@group(0) @binding(2) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_EmissionMap : sampler;

@group(0) @binding(7) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_106 : UnityPerDraw;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_465 : MainLightShadows;

@group(1) @binding(5) var<uniform> x_532 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_978 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_1091 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat45 : f32;
  var u_xlatb47 : bool;
  var x_112 : f32;
  var u_xlatb45 : bool;
  var u_xlat47 : f32;
  var u_xlat4 : vec4<f32>;
  var x_175 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat48 : f32;
  var u_xlat16 : vec3<f32>;
  var u_xlat49 : f32;
  var u_xlat50 : f32;
  var u_xlat21 : f32;
  var u_xlat36 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat51 : f32;
  var u_xlatb7 : bool;
  var u_xlatb22 : bool;
  var u_xlat22 : f32;
  var u_xlatb8 : vec2<bool>;
  var u_xlat52 : f32;
  var x_619 : f32;
  var x_630 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat53 : f32;
  var u_xlat9 : vec2<f32>;
  var u_xlat24 : vec3<f32>;
  var u_xlatu47 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu49 : u32;
  var u_xlati51 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat10 : vec3<f32>;
  var u_xlat11 : vec3<f32>;
  var u_xlat38 : vec2<f32>;
  var u_xlatu38 : u32;
  var u_xlati53 : i32;
  var u_xlati38 : i32;
  var u_xlati55 : i32;
  var u_xlat12 : vec4<f32>;
  var u_xlatb38 : bool;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec3<f32>;
  var u_xlatb42 : vec2<bool>;
  var u_xlat42 : vec2<f32>;
  var x_1393 : f32;
  var x_1406 : f32;
  var x_1458 : f32;
  var x_1470 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_1646 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_40 : vec2<f32> = vs_TEXCOORD0;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_40, x_50);
  u_xlat0 = x_51;
  let x_53 : vec4<f32> = u_xlat0;
  let x_61 : vec4<f32> = x_57.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_53.w, x_53.x, x_53.y, x_53.z) * vec4<f32>(x_61.w, x_61.x, x_61.y, x_61.z));
  let x_71 : vec2<f32> = vs_TEXCOORD0;
  let x_73 : f32 = x_44.x_GlobalMipBias.x;
  let x_74 : vec4<f32> = textureSampleBias(x_EmissionMap, sampler_EmissionMap, x_71, x_73);
  u_xlat2 = vec3<f32>(x_74.x, x_74.y, x_74.z);
  let x_77 : vec4<f32> = hlslcc_FragCoord;
  let x_81 : f32 = x_44.x_DitheringTextureInvSize;
  let x_83 : vec2<f32> = (vec2<f32>(x_77.x, x_77.y) * vec2<f32>(x_81, x_81));
  let x_84 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_83.x, x_83.y, x_84.z);
  let x_93 : vec3<f32> = u_xlat3;
  let x_96 : f32 = x_44.x_GlobalMipBias.x;
  let x_97 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_93.x, x_93.y), x_96);
  u_xlat45 = x_97.w;
  let x_108 : f32 = x_106.unity_LODFade.x;
  u_xlatb47 = (x_108 >= 0.0f);
  let x_111 : bool = u_xlatb47;
  if (x_111) {
    let x_115 : f32 = u_xlat45;
    x_112 = abs(x_115);
  } else {
    let x_118 : f32 = u_xlat45;
    x_112 = -(abs(x_118));
  }
  let x_121 : f32 = x_112;
  u_xlat45 = x_121;
  let x_122 : f32 = u_xlat45;
  let x_125 : f32 = x_106.unity_LODFade.x;
  u_xlat45 = (-(x_122) + x_125);
  let x_128 : f32 = u_xlat45;
  u_xlatb45 = (x_128 < 0.0f);
  let x_130 : bool = u_xlatb45;
  if (((select(0i, 1i, x_130) * -1i) != 0i)) {
    discard;
  }
  let x_141 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb45 = (x_141 == 0.0f);
  let x_145 : vec3<f32> = vs_TEXCOORD1;
  let x_150 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat3 = (-(x_145) + x_150);
  let x_153 : vec3<f32> = u_xlat3;
  let x_154 : vec3<f32> = u_xlat3;
  u_xlat47 = dot(x_153, x_154);
  let x_156 : f32 = u_xlat47;
  u_xlat47 = inverseSqrt(x_156);
  let x_158 : f32 = u_xlat47;
  let x_160 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_158, x_158, x_158) * x_160);
  let x_165 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat4.x = x_165;
  let x_168 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat4.y = x_168;
  let x_172 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat4.z = x_172;
  let x_174 : bool = u_xlatb45;
  if (x_174) {
    let x_178 : vec3<f32> = u_xlat3;
    x_175 = x_178;
  } else {
    let x_180 : vec4<f32> = u_xlat4;
    x_175 = vec3<f32>(x_180.x, x_180.y, x_180.z);
  }
  let x_182 : vec3<f32> = x_175;
  u_xlat3 = x_182;
  let x_184 : vec3<f32> = vs_TEXCOORD2;
  let x_185 : vec3<f32> = vs_TEXCOORD2;
  u_xlat45 = dot(x_184, x_185);
  let x_187 : f32 = u_xlat45;
  u_xlat45 = inverseSqrt(x_187);
  let x_189 : f32 = u_xlat45;
  let x_191 : vec3<f32> = vs_TEXCOORD2;
  let x_192 : vec3<f32> = (vec3<f32>(x_189, x_189, x_189) * x_191);
  let x_193 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_192.x, x_192.y, x_192.z, x_193.w);
  let x_196 : f32 = vs_TEXCOORD1.y;
  let x_198 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat45 = (x_196 * x_198);
  let x_201 : f32 = x_44.unity_MatrixV[0i].z;
  let x_203 : f32 = vs_TEXCOORD1.x;
  let x_205 : f32 = u_xlat45;
  u_xlat45 = ((x_201 * x_203) + x_205);
  let x_208 : f32 = x_44.unity_MatrixV[2i].z;
  let x_210 : f32 = vs_TEXCOORD1.z;
  let x_212 : f32 = u_xlat45;
  u_xlat45 = ((x_208 * x_210) + x_212);
  let x_214 : f32 = u_xlat45;
  let x_217 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat45 = (x_214 + x_217);
  let x_219 : f32 = u_xlat45;
  let x_223 : f32 = x_44.x_ProjectionParams.y;
  u_xlat45 = (-(x_219) + -(x_223));
  let x_226 : f32 = u_xlat45;
  u_xlat45 = max(x_226, 0.0f);
  let x_228 : f32 = u_xlat45;
  let x_231 : f32 = x_44.unity_FogParams.x;
  u_xlat45 = (x_228 * x_231);
  u_xlat4.w = 1.0f;
  let x_237 : vec4<f32> = x_106.unity_SHAr;
  let x_238 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_237, x_238);
  let x_243 : vec4<f32> = x_106.unity_SHAg;
  let x_244 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_243, x_244);
  let x_249 : vec4<f32> = x_106.unity_SHAb;
  let x_250 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_249, x_250);
  let x_254 : vec4<f32> = u_xlat4;
  let x_256 : vec4<f32> = u_xlat4;
  u_xlat6 = (vec4<f32>(x_254.y, x_254.z, x_254.z, x_254.x) * vec4<f32>(x_256.x, x_256.y, x_256.z, x_256.z));
  let x_262 : vec4<f32> = x_106.unity_SHBr;
  let x_263 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_262, x_263);
  let x_268 : vec4<f32> = x_106.unity_SHBg;
  let x_269 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_268, x_269);
  let x_274 : vec4<f32> = x_106.unity_SHBb;
  let x_275 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_274, x_275);
  let x_279 : f32 = u_xlat4.y;
  let x_281 : f32 = u_xlat4.y;
  u_xlat47 = (x_279 * x_281);
  let x_284 : f32 = u_xlat4.x;
  let x_286 : f32 = u_xlat4.x;
  let x_288 : f32 = u_xlat47;
  u_xlat47 = ((x_284 * x_286) + -(x_288));
  let x_293 : vec4<f32> = x_106.unity_SHC;
  let x_295 : f32 = u_xlat47;
  let x_298 : vec4<f32> = u_xlat7;
  let x_300 : vec3<f32> = ((vec3<f32>(x_293.x, x_293.y, x_293.z) * vec3<f32>(x_295, x_295, x_295)) + vec3<f32>(x_298.x, x_298.y, x_298.z));
  let x_301 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_300.x, x_300.y, x_300.z, x_301.w);
  let x_303 : vec3<f32> = u_xlat5;
  let x_304 : vec4<f32> = u_xlat6;
  u_xlat5 = (x_303 + vec3<f32>(x_304.x, x_304.y, x_304.z));
  let x_307 : vec3<f32> = u_xlat5;
  u_xlat5 = max(x_307, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_312 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_313 : vec2<f32> = vec2<f32>(x_312.x, x_312.y);
  let x_317 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_313.x, x_313.y));
  let x_318 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_317.x, x_317.y, x_318.z, x_318.w);
  let x_320 : vec4<f32> = u_xlat6;
  let x_322 : vec4<f32> = hlslcc_FragCoord;
  let x_324 : vec2<f32> = (vec2<f32>(x_320.x, x_320.y) * vec2<f32>(x_322.x, x_322.y));
  let x_325 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_324.x, x_324.y, x_325.z, x_325.w);
  let x_328 : f32 = u_xlat6.y;
  let x_331 : f32 = x_44.x_ScaleBiasRt.x;
  let x_334 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat47 = ((x_328 * x_331) + x_334);
  let x_336 : f32 = u_xlat47;
  u_xlat6.z = (-(x_336) + 1.0f);
  let x_341 : f32 = x_57.x_Metallic;
  u_xlat47 = ((-(x_341) * 0.959999979f) + 0.959999979f);
  let x_347 : f32 = u_xlat47;
  let x_350 : f32 = x_57.x_Smoothness;
  u_xlat48 = (-(x_347) + x_350);
  let x_353 : vec4<f32> = u_xlat1;
  let x_355 : f32 = u_xlat47;
  u_xlat16 = (vec3<f32>(x_353.y, x_353.z, x_353.w) * vec3<f32>(x_355, x_355, x_355));
  let x_358 : vec4<f32> = u_xlat0;
  let x_361 : vec4<f32> = x_57.x_BaseColor;
  let x_366 : vec3<f32> = ((vec3<f32>(x_358.x, x_358.y, x_358.z) * vec3<f32>(x_361.x, x_361.y, x_361.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_367 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_366.x, x_366.y, x_366.z, x_367.w);
  let x_370 : f32 = x_57.x_Metallic;
  let x_372 : f32 = x_57.x_Metallic;
  let x_374 : f32 = x_57.x_Metallic;
  let x_375 : vec3<f32> = vec3<f32>(x_370, x_372, x_374);
  let x_380 : vec4<f32> = u_xlat0;
  let x_385 : vec3<f32> = ((vec3<f32>(x_375.x, x_375.y, x_375.z) * vec3<f32>(x_380.x, x_380.y, x_380.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_386 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_385.x, x_385.y, x_385.z, x_386.w);
  let x_389 : f32 = x_57.x_Smoothness;
  u_xlat47 = (-(x_389) + 1.0f);
  let x_393 : f32 = u_xlat47;
  let x_394 : f32 = u_xlat47;
  u_xlat49 = (x_393 * x_394);
  let x_396 : f32 = u_xlat49;
  u_xlat49 = max(x_396, 0.0078125f);
  let x_400 : f32 = u_xlat49;
  let x_401 : f32 = u_xlat49;
  u_xlat50 = (x_400 * x_401);
  let x_403 : f32 = u_xlat48;
  u_xlat48 = (x_403 + 1.0f);
  let x_405 : f32 = u_xlat48;
  u_xlat48 = clamp(x_405, 0.0f, 1.0f);
  let x_408 : f32 = u_xlat49;
  u_xlat21 = ((x_408 * 4.0f) + 2.0f);
  let x_418 : vec4<f32> = u_xlat6;
  let x_421 : f32 = x_44.x_GlobalMipBias.x;
  let x_422 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_418.x, x_418.z), x_421);
  u_xlat6.x = x_422.x;
  let x_427 : f32 = u_xlat6.x;
  u_xlat36 = (x_427 + -1.0f);
  let x_432 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_433 : f32 = u_xlat36;
  u_xlat36 = ((x_432 * x_433) + 1.0f);
  let x_437 : f32 = u_xlat6.x;
  u_xlat6.x = min(x_437, 1.0f);
  let x_442 : vec4<f32> = vs_TEXCOORD6;
  let x_443 : vec2<f32> = vec2<f32>(x_442.x, x_442.y);
  let x_445 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_443.x, x_443.y, x_445);
  let x_458 : vec3<f32> = txVec0;
  let x_460 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_458.xy, x_458.z);
  u_xlat51 = x_460;
  let x_467 : f32 = x_465.x_MainLightShadowParams.x;
  u_xlat7.x = (-(x_467) + 1.0f);
  let x_471 : f32 = u_xlat51;
  let x_473 : f32 = x_465.x_MainLightShadowParams.x;
  let x_476 : f32 = u_xlat7.x;
  u_xlat51 = ((x_471 * x_473) + x_476);
  let x_480 : f32 = vs_TEXCOORD6.z;
  u_xlatb7 = (0.0f >= x_480);
  let x_484 : f32 = vs_TEXCOORD6.z;
  u_xlatb22 = (x_484 >= 1.0f);
  let x_486 : bool = u_xlatb22;
  let x_487 : bool = u_xlatb7;
  u_xlatb7 = (x_486 | x_487);
  let x_489 : bool = u_xlatb7;
  let x_490 : f32 = u_xlat51;
  u_xlat51 = select(x_490, 1.0f, x_489);
  let x_492 : vec3<f32> = vs_TEXCOORD1;
  let x_494 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_496 : vec3<f32> = (x_492 + -(x_494));
  let x_497 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_496.x, x_496.y, x_496.z, x_497.w);
  let x_499 : vec4<f32> = u_xlat7;
  let x_501 : vec4<f32> = u_xlat7;
  u_xlat7.x = dot(vec3<f32>(x_499.x, x_499.y, x_499.z), vec3<f32>(x_501.x, x_501.y, x_501.z));
  let x_506 : f32 = u_xlat7.x;
  let x_508 : f32 = x_465.x_MainLightShadowParams.z;
  let x_511 : f32 = x_465.x_MainLightShadowParams.w;
  u_xlat7.x = ((x_506 * x_508) + x_511);
  let x_515 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_515, 0.0f, 1.0f);
  let x_519 : f32 = u_xlat51;
  u_xlat22 = (-(x_519) + 1.0f);
  let x_523 : f32 = u_xlat7.x;
  let x_524 : f32 = u_xlat22;
  let x_526 : f32 = u_xlat51;
  u_xlat51 = ((x_523 * x_524) + x_526);
  let x_534 : f32 = x_532.x_MainLightCookieTextureFormat;
  u_xlatb7 = !((x_534 == -1.0f));
  let x_536 : bool = u_xlatb7;
  if (x_536) {
    let x_539 : vec3<f32> = vs_TEXCOORD1;
    let x_542 : vec4<f32> = x_532.x_MainLightWorldToLight[1i];
    let x_544 : vec2<f32> = (vec2<f32>(x_539.y, x_539.y) * vec2<f32>(x_542.x, x_542.y));
    let x_545 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_544.x, x_544.y, x_545.z, x_545.w);
    let x_548 : vec4<f32> = x_532.x_MainLightWorldToLight[0i];
    let x_550 : vec3<f32> = vs_TEXCOORD1;
    let x_553 : vec4<f32> = u_xlat7;
    let x_555 : vec2<f32> = ((vec2<f32>(x_548.x, x_548.y) * vec2<f32>(x_550.x, x_550.x)) + vec2<f32>(x_553.x, x_553.y));
    let x_556 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_555.x, x_555.y, x_556.z, x_556.w);
    let x_559 : vec4<f32> = x_532.x_MainLightWorldToLight[2i];
    let x_561 : vec3<f32> = vs_TEXCOORD1;
    let x_564 : vec4<f32> = u_xlat7;
    let x_566 : vec2<f32> = ((vec2<f32>(x_559.x, x_559.y) * vec2<f32>(x_561.z, x_561.z)) + vec2<f32>(x_564.x, x_564.y));
    let x_567 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_566.x, x_566.y, x_567.z, x_567.w);
    let x_569 : vec4<f32> = u_xlat7;
    let x_572 : vec4<f32> = x_532.x_MainLightWorldToLight[3i];
    let x_574 : vec2<f32> = (vec2<f32>(x_569.x, x_569.y) + vec2<f32>(x_572.x, x_572.y));
    let x_575 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_574.x, x_574.y, x_575.z, x_575.w);
    let x_577 : vec4<f32> = u_xlat7;
    let x_582 : vec2<f32> = ((vec2<f32>(x_577.x, x_577.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_583 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_582.x, x_582.y, x_583.z, x_583.w);
    let x_590 : vec4<f32> = u_xlat7;
    let x_593 : f32 = x_44.x_GlobalMipBias.x;
    let x_594 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_590.x, x_590.y), x_593);
    u_xlat7 = x_594;
    let x_599 : f32 = x_532.x_MainLightCookieTextureFormat;
    let x_601 : f32 = x_532.x_MainLightCookieTextureFormat;
    let x_603 : f32 = x_532.x_MainLightCookieTextureFormat;
    let x_605 : f32 = x_532.x_MainLightCookieTextureFormat;
    let x_606 : vec4<f32> = vec4<f32>(x_599, x_601, x_603, x_605);
    let x_614 : vec4<bool> = (vec4<f32>(x_606.x, x_606.y, x_606.z, x_606.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb8 = vec2<bool>(x_614.x, x_614.y);
    let x_618 : bool = u_xlatb8.y;
    if (x_618) {
      let x_623 : f32 = u_xlat7.w;
      x_619 = x_623;
    } else {
      let x_626 : f32 = u_xlat7.x;
      x_619 = x_626;
    }
    let x_627 : f32 = x_619;
    u_xlat52 = x_627;
    let x_629 : bool = u_xlatb8.x;
    if (x_629) {
      let x_633 : vec4<f32> = u_xlat7;
      x_630 = vec3<f32>(x_633.x, x_633.y, x_633.z);
    } else {
      let x_636 : f32 = u_xlat52;
      x_630 = vec3<f32>(x_636, x_636, x_636);
    }
    let x_638 : vec3<f32> = x_630;
    let x_639 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_638.x, x_638.y, x_638.z, x_639.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_645 : vec4<f32> = u_xlat7;
  let x_648 : vec4<f32> = x_44.x_MainLightColor;
  let x_650 : vec3<f32> = (vec3<f32>(x_645.x, x_645.y, x_645.z) * vec3<f32>(x_648.x, x_648.y, x_648.z));
  let x_651 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_650.x, x_650.y, x_650.z, x_651.w);
  let x_653 : f32 = u_xlat36;
  let x_655 : vec4<f32> = u_xlat7;
  let x_657 : vec3<f32> = (vec3<f32>(x_653, x_653, x_653) * vec3<f32>(x_655.x, x_655.y, x_655.z));
  let x_658 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_657.x, x_657.y, x_657.z, x_658.w);
  let x_660 : vec3<f32> = u_xlat3;
  let x_662 : vec4<f32> = u_xlat4;
  u_xlat52 = dot(-(x_660), vec3<f32>(x_662.x, x_662.y, x_662.z));
  let x_665 : f32 = u_xlat52;
  let x_666 : f32 = u_xlat52;
  u_xlat52 = (x_665 + x_666);
  let x_669 : vec4<f32> = u_xlat4;
  let x_671 : f32 = u_xlat52;
  let x_675 : vec3<f32> = u_xlat3;
  let x_677 : vec3<f32> = ((vec3<f32>(x_669.x, x_669.y, x_669.z) * -(vec3<f32>(x_671, x_671, x_671))) + -(x_675));
  let x_678 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_677.x, x_677.y, x_677.z, x_678.w);
  let x_680 : vec4<f32> = u_xlat4;
  let x_682 : vec3<f32> = u_xlat3;
  u_xlat52 = dot(vec3<f32>(x_680.x, x_680.y, x_680.z), x_682);
  let x_684 : f32 = u_xlat52;
  u_xlat52 = clamp(x_684, 0.0f, 1.0f);
  let x_686 : f32 = u_xlat52;
  u_xlat52 = (-(x_686) + 1.0f);
  let x_689 : f32 = u_xlat52;
  let x_690 : f32 = u_xlat52;
  u_xlat52 = (x_689 * x_690);
  let x_692 : f32 = u_xlat52;
  let x_693 : f32 = u_xlat52;
  u_xlat52 = (x_692 * x_693);
  let x_696 : f32 = u_xlat47;
  u_xlat53 = ((-(x_696) * 0.699999988f) + 1.700000048f);
  let x_702 : f32 = u_xlat47;
  let x_703 : f32 = u_xlat53;
  u_xlat47 = (x_702 * x_703);
  let x_705 : f32 = u_xlat47;
  u_xlat47 = (x_705 * 6.0f);
  let x_716 : vec4<f32> = u_xlat8;
  let x_718 : f32 = u_xlat47;
  let x_719 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_716.x, x_716.y, x_716.z), x_718);
  u_xlat8 = x_719;
  let x_721 : f32 = u_xlat8.w;
  u_xlat47 = (x_721 + -1.0f);
  let x_724 : f32 = x_106.unity_SpecCube0_HDR.w;
  let x_725 : f32 = u_xlat47;
  u_xlat47 = ((x_724 * x_725) + 1.0f);
  let x_728 : f32 = u_xlat47;
  u_xlat47 = max(x_728, 0.0f);
  let x_730 : f32 = u_xlat47;
  u_xlat47 = log2(x_730);
  let x_732 : f32 = u_xlat47;
  let x_734 : f32 = x_106.unity_SpecCube0_HDR.y;
  u_xlat47 = (x_732 * x_734);
  let x_736 : f32 = u_xlat47;
  u_xlat47 = exp2(x_736);
  let x_738 : f32 = u_xlat47;
  let x_740 : f32 = x_106.unity_SpecCube0_HDR.x;
  u_xlat47 = (x_738 * x_740);
  let x_742 : vec4<f32> = u_xlat8;
  let x_744 : f32 = u_xlat47;
  let x_746 : vec3<f32> = (vec3<f32>(x_742.x, x_742.y, x_742.z) * vec3<f32>(x_744, x_744, x_744));
  let x_747 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_746.x, x_746.y, x_746.z, x_747.w);
  let x_751 : f32 = u_xlat49;
  let x_753 : f32 = u_xlat49;
  u_xlat9 = ((vec2<f32>(x_751, x_751) * vec2<f32>(x_753, x_753)) + vec2<f32>(-1.0f, 1.0f));
  let x_759 : f32 = u_xlat9.y;
  u_xlat47 = (1.0f / x_759);
  let x_762 : vec4<f32> = u_xlat0;
  let x_765 : f32 = u_xlat48;
  u_xlat24 = (-(vec3<f32>(x_762.x, x_762.y, x_762.z)) + vec3<f32>(x_765, x_765, x_765));
  let x_768 : f32 = u_xlat52;
  let x_770 : vec3<f32> = u_xlat24;
  let x_772 : vec4<f32> = u_xlat0;
  u_xlat24 = ((vec3<f32>(x_768, x_768, x_768) * x_770) + vec3<f32>(x_772.x, x_772.y, x_772.z));
  let x_775 : f32 = u_xlat47;
  let x_777 : vec3<f32> = u_xlat24;
  u_xlat24 = (vec3<f32>(x_775, x_775, x_775) * x_777);
  let x_779 : vec4<f32> = u_xlat8;
  let x_781 : vec3<f32> = u_xlat24;
  let x_782 : vec3<f32> = (vec3<f32>(x_779.x, x_779.y, x_779.z) * x_781);
  let x_783 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_782.x, x_782.y, x_782.z, x_783.w);
  let x_785 : vec3<f32> = u_xlat5;
  let x_786 : vec3<f32> = u_xlat16;
  let x_788 : vec4<f32> = u_xlat8;
  u_xlat5 = ((x_785 * x_786) + vec3<f32>(x_788.x, x_788.y, x_788.z));
  let x_791 : f32 = u_xlat51;
  let x_794 : f32 = x_106.unity_LightData.z;
  u_xlat47 = (x_791 * x_794);
  let x_796 : vec4<f32> = u_xlat4;
  let x_799 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat48 = dot(vec3<f32>(x_796.x, x_796.y, x_796.z), vec3<f32>(x_799.x, x_799.y, x_799.z));
  let x_802 : f32 = u_xlat48;
  u_xlat48 = clamp(x_802, 0.0f, 1.0f);
  let x_804 : f32 = u_xlat47;
  let x_805 : f32 = u_xlat48;
  u_xlat47 = (x_804 * x_805);
  let x_807 : f32 = u_xlat47;
  let x_809 : vec4<f32> = u_xlat7;
  let x_811 : vec3<f32> = (vec3<f32>(x_807, x_807, x_807) * vec3<f32>(x_809.x, x_809.y, x_809.z));
  let x_812 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_811.x, x_811.y, x_811.z, x_812.w);
  let x_814 : vec3<f32> = u_xlat3;
  let x_816 : vec4<f32> = x_44.x_MainLightPosition;
  let x_818 : vec3<f32> = (x_814 + vec3<f32>(x_816.x, x_816.y, x_816.z));
  let x_819 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_818.x, x_818.y, x_818.z, x_819.w);
  let x_821 : vec4<f32> = u_xlat8;
  let x_823 : vec4<f32> = u_xlat8;
  u_xlat47 = dot(vec3<f32>(x_821.x, x_821.y, x_821.z), vec3<f32>(x_823.x, x_823.y, x_823.z));
  let x_826 : f32 = u_xlat47;
  u_xlat47 = max(x_826, 1.17549435e-37f);
  let x_829 : f32 = u_xlat47;
  u_xlat47 = inverseSqrt(x_829);
  let x_831 : f32 = u_xlat47;
  let x_833 : vec4<f32> = u_xlat8;
  let x_835 : vec3<f32> = (vec3<f32>(x_831, x_831, x_831) * vec3<f32>(x_833.x, x_833.y, x_833.z));
  let x_836 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_835.x, x_835.y, x_835.z, x_836.w);
  let x_838 : vec4<f32> = u_xlat4;
  let x_840 : vec4<f32> = u_xlat8;
  u_xlat47 = dot(vec3<f32>(x_838.x, x_838.y, x_838.z), vec3<f32>(x_840.x, x_840.y, x_840.z));
  let x_843 : f32 = u_xlat47;
  u_xlat47 = clamp(x_843, 0.0f, 1.0f);
  let x_846 : vec4<f32> = x_44.x_MainLightPosition;
  let x_848 : vec4<f32> = u_xlat8;
  u_xlat48 = dot(vec3<f32>(x_846.x, x_846.y, x_846.z), vec3<f32>(x_848.x, x_848.y, x_848.z));
  let x_851 : f32 = u_xlat48;
  u_xlat48 = clamp(x_851, 0.0f, 1.0f);
  let x_853 : f32 = u_xlat47;
  let x_854 : f32 = u_xlat47;
  u_xlat47 = (x_853 * x_854);
  let x_856 : f32 = u_xlat47;
  let x_858 : f32 = u_xlat9.x;
  u_xlat47 = ((x_856 * x_858) + 1.000010014f);
  let x_862 : f32 = u_xlat48;
  let x_863 : f32 = u_xlat48;
  u_xlat48 = (x_862 * x_863);
  let x_865 : f32 = u_xlat47;
  let x_866 : f32 = u_xlat47;
  u_xlat47 = (x_865 * x_866);
  let x_868 : f32 = u_xlat48;
  u_xlat48 = max(x_868, 0.100000001f);
  let x_871 : f32 = u_xlat47;
  let x_872 : f32 = u_xlat48;
  u_xlat47 = (x_871 * x_872);
  let x_874 : f32 = u_xlat21;
  let x_875 : f32 = u_xlat47;
  u_xlat47 = (x_874 * x_875);
  let x_877 : f32 = u_xlat50;
  let x_878 : f32 = u_xlat47;
  u_xlat47 = (x_877 / x_878);
  let x_880 : vec4<f32> = u_xlat0;
  let x_882 : f32 = u_xlat47;
  let x_885 : vec3<f32> = u_xlat16;
  let x_886 : vec3<f32> = ((vec3<f32>(x_880.x, x_880.y, x_880.z) * vec3<f32>(x_882, x_882, x_882)) + x_885);
  let x_887 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_886.x, x_886.y, x_886.z, x_887.w);
  let x_889 : vec4<f32> = u_xlat7;
  let x_891 : vec4<f32> = u_xlat8;
  let x_893 : vec3<f32> = (vec3<f32>(x_889.x, x_889.y, x_889.z) * vec3<f32>(x_891.x, x_891.y, x_891.z));
  let x_894 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_893.x, x_893.y, x_893.z, x_894.w);
  let x_897 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_899 : f32 = x_106.unity_LightData.y;
  u_xlat47 = min(x_897, x_899);
  let x_903 : f32 = u_xlat47;
  u_xlatu47 = bitcast<u32>(i32(x_903));
  let x_907 : f32 = x_532.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_909 : f32 = x_532.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_911 : f32 = x_532.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_913 : f32 = x_532.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_914 : vec4<f32> = vec4<f32>(x_907, x_909, x_911, x_913);
  let x_920 : vec4<bool> = (vec4<f32>(x_914.x, x_914.y, x_914.z, x_914.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb8 = vec2<bool>(x_920.x, x_920.y);
  u_xlat24.x = 0.0f;
  u_xlat24.y = 0.0f;
  u_xlat24.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_931 : u32 = u_xlatu_loop_1;
    let x_932 : u32 = u_xlatu47;
    if ((x_931 < x_932)) {
    } else {
      break;
    }
    let x_935 : u32 = u_xlatu_loop_1;
    u_xlatu49 = (x_935 >> 2u);
    let x_939 : u32 = u_xlatu_loop_1;
    u_xlati51 = bitcast<i32>((x_939 & 3u));
    let x_942 : u32 = u_xlatu49;
    let x_945 : vec4<f32> = x_106.unity_LightIndices[bitcast<i32>(x_942)];
    let x_955 : i32 = u_xlati51;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_960 : vec4<u32> = indexable[x_955];
    u_xlat49 = dot(x_945, bitcast<vec4<f32>>(x_960));
    let x_963 : f32 = u_xlat49;
    u_xlatu49 = bitcast<u32>(i32(x_963));
    let x_967 : vec3<f32> = vs_TEXCOORD1;
    let x_979 : u32 = u_xlatu49;
    let x_982 : vec4<f32> = x_978.x_AdditionalLightsPosition[bitcast<i32>(x_979)];
    let x_985 : u32 = u_xlatu49;
    let x_988 : vec4<f32> = x_978.x_AdditionalLightsPosition[bitcast<i32>(x_985)];
    u_xlat10 = ((-(x_967) * vec3<f32>(x_982.w, x_982.w, x_982.w)) + vec3<f32>(x_988.x, x_988.y, x_988.z));
    let x_991 : vec3<f32> = u_xlat10;
    let x_992 : vec3<f32> = u_xlat10;
    u_xlat51 = dot(x_991, x_992);
    let x_994 : f32 = u_xlat51;
    u_xlat51 = max(x_994, 6.10351562e-05f);
    let x_997 : f32 = u_xlat51;
    u_xlat52 = inverseSqrt(x_997);
    let x_1000 : f32 = u_xlat52;
    let x_1002 : vec3<f32> = u_xlat10;
    u_xlat11 = (vec3<f32>(x_1000, x_1000, x_1000) * x_1002);
    let x_1005 : f32 = u_xlat51;
    u_xlat38.x = (1.0f / x_1005);
    let x_1008 : f32 = u_xlat51;
    let x_1009 : u32 = u_xlatu49;
    let x_1012 : f32 = x_978.x_AdditionalLightsAttenuation[bitcast<i32>(x_1009)].x;
    u_xlat51 = (x_1008 * x_1012);
    let x_1014 : f32 = u_xlat51;
    let x_1016 : f32 = u_xlat51;
    u_xlat51 = ((-(x_1014) * x_1016) + 1.0f);
    let x_1019 : f32 = u_xlat51;
    u_xlat51 = max(x_1019, 0.0f);
    let x_1021 : f32 = u_xlat51;
    let x_1022 : f32 = u_xlat51;
    u_xlat51 = (x_1021 * x_1022);
    let x_1024 : f32 = u_xlat51;
    let x_1026 : f32 = u_xlat38.x;
    u_xlat51 = (x_1024 * x_1026);
    let x_1028 : u32 = u_xlatu49;
    let x_1031 : vec4<f32> = x_978.x_AdditionalLightsSpotDir[bitcast<i32>(x_1028)];
    let x_1033 : vec3<f32> = u_xlat11;
    u_xlat38.x = dot(vec3<f32>(x_1031.x, x_1031.y, x_1031.z), x_1033);
    let x_1037 : f32 = u_xlat38.x;
    let x_1038 : u32 = u_xlatu49;
    let x_1041 : f32 = x_978.x_AdditionalLightsAttenuation[bitcast<i32>(x_1038)].z;
    let x_1043 : u32 = u_xlatu49;
    let x_1046 : f32 = x_978.x_AdditionalLightsAttenuation[bitcast<i32>(x_1043)].w;
    u_xlat38.x = ((x_1037 * x_1041) + x_1046);
    let x_1050 : f32 = u_xlat38.x;
    u_xlat38.x = clamp(x_1050, 0.0f, 1.0f);
    let x_1054 : f32 = u_xlat38.x;
    let x_1056 : f32 = u_xlat38.x;
    u_xlat38.x = (x_1054 * x_1056);
    let x_1059 : f32 = u_xlat51;
    let x_1061 : f32 = u_xlat38.x;
    u_xlat51 = (x_1059 * x_1061);
    let x_1064 : u32 = u_xlatu49;
    u_xlatu38 = (x_1064 >> 5u);
    let x_1067 : u32 = u_xlatu49;
    u_xlati53 = (1i << bitcast<u32>((bitcast<i32>(x_1067) & 31i)));
    let x_1073 : i32 = u_xlati53;
    let x_1075 : u32 = u_xlatu38;
    let x_1078 : f32 = x_532.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1075)].el;
    u_xlati38 = bitcast<i32>((bitcast<u32>(x_1073) & bitcast<u32>(x_1078)));
    let x_1082 : i32 = u_xlati38;
    if ((x_1082 != 0i)) {
      let x_1092 : u32 = u_xlatu49;
      let x_1095 : f32 = x_1091.x_AdditionalLightsLightTypes[bitcast<i32>(x_1092)].el;
      u_xlati38 = i32(x_1095);
      let x_1097 : i32 = u_xlati38;
      u_xlati53 = select(1i, 0i, (x_1097 != 0i));
      let x_1101 : u32 = u_xlatu49;
      u_xlati55 = (bitcast<i32>(x_1101) << bitcast<u32>(2i));
      let x_1104 : i32 = u_xlati53;
      if ((x_1104 != 0i)) {
        let x_1109 : vec3<f32> = vs_TEXCOORD1;
        let x_1111 : i32 = u_xlati55;
        let x_1114 : i32 = u_xlati55;
        let x_1118 : vec4<f32> = x_1091.x_AdditionalLightsWorldToLights[((x_1111 + 1i) / 4i)][((x_1114 + 1i) % 4i)];
        let x_1120 : vec3<f32> = (vec3<f32>(x_1109.y, x_1109.y, x_1109.y) * vec3<f32>(x_1118.x, x_1118.y, x_1118.w));
        let x_1121 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1120.x, x_1120.y, x_1120.z, x_1121.w);
        let x_1123 : i32 = u_xlati55;
        let x_1125 : i32 = u_xlati55;
        let x_1128 : vec4<f32> = x_1091.x_AdditionalLightsWorldToLights[(x_1123 / 4i)][(x_1125 % 4i)];
        let x_1130 : vec3<f32> = vs_TEXCOORD1;
        let x_1133 : vec4<f32> = u_xlat12;
        let x_1135 : vec3<f32> = ((vec3<f32>(x_1128.x, x_1128.y, x_1128.w) * vec3<f32>(x_1130.x, x_1130.x, x_1130.x)) + vec3<f32>(x_1133.x, x_1133.y, x_1133.z));
        let x_1136 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1135.x, x_1135.y, x_1135.z, x_1136.w);
        let x_1138 : i32 = u_xlati55;
        let x_1141 : i32 = u_xlati55;
        let x_1145 : vec4<f32> = x_1091.x_AdditionalLightsWorldToLights[((x_1138 + 2i) / 4i)][((x_1141 + 2i) % 4i)];
        let x_1147 : vec3<f32> = vs_TEXCOORD1;
        let x_1150 : vec4<f32> = u_xlat12;
        let x_1152 : vec3<f32> = ((vec3<f32>(x_1145.x, x_1145.y, x_1145.w) * vec3<f32>(x_1147.z, x_1147.z, x_1147.z)) + vec3<f32>(x_1150.x, x_1150.y, x_1150.z));
        let x_1153 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1152.x, x_1152.y, x_1152.z, x_1153.w);
        let x_1155 : vec4<f32> = u_xlat12;
        let x_1157 : i32 = u_xlati55;
        let x_1160 : i32 = u_xlati55;
        let x_1164 : vec4<f32> = x_1091.x_AdditionalLightsWorldToLights[((x_1157 + 3i) / 4i)][((x_1160 + 3i) % 4i)];
        let x_1166 : vec3<f32> = (vec3<f32>(x_1155.x, x_1155.y, x_1155.z) + vec3<f32>(x_1164.x, x_1164.y, x_1164.w));
        let x_1167 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1166.x, x_1166.y, x_1166.z, x_1167.w);
        let x_1169 : vec4<f32> = u_xlat12;
        let x_1171 : vec4<f32> = u_xlat12;
        let x_1173 : vec2<f32> = (vec2<f32>(x_1169.x, x_1169.y) / vec2<f32>(x_1171.z, x_1171.z));
        let x_1174 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1173.x, x_1173.y, x_1174.z, x_1174.w);
        let x_1176 : vec4<f32> = u_xlat12;
        let x_1179 : vec2<f32> = ((vec2<f32>(x_1176.x, x_1176.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1180 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1179.x, x_1179.y, x_1180.z, x_1180.w);
        let x_1182 : vec4<f32> = u_xlat12;
        let x_1186 : vec2<f32> = clamp(vec2<f32>(x_1182.x, x_1182.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1187 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1186.x, x_1186.y, x_1187.z, x_1187.w);
        let x_1189 : u32 = u_xlatu49;
        let x_1192 : vec4<f32> = x_1091.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1189)];
        let x_1194 : vec4<f32> = u_xlat12;
        let x_1197 : u32 = u_xlatu49;
        let x_1200 : vec4<f32> = x_1091.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1197)];
        let x_1202 : vec2<f32> = ((vec2<f32>(x_1192.x, x_1192.y) * vec2<f32>(x_1194.x, x_1194.y)) + vec2<f32>(x_1200.z, x_1200.w));
        let x_1203 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1202.x, x_1202.y, x_1203.z, x_1203.w);
      } else {
        let x_1207 : i32 = u_xlati38;
        u_xlatb38 = (x_1207 == 1i);
        let x_1209 : bool = u_xlatb38;
        u_xlati38 = select(0i, 1i, x_1209);
        let x_1211 : i32 = u_xlati38;
        if ((x_1211 != 0i)) {
          let x_1215 : vec3<f32> = vs_TEXCOORD1;
          let x_1217 : i32 = u_xlati55;
          let x_1220 : i32 = u_xlati55;
          let x_1224 : vec4<f32> = x_1091.x_AdditionalLightsWorldToLights[((x_1217 + 1i) / 4i)][((x_1220 + 1i) % 4i)];
          u_xlat38 = (vec2<f32>(x_1215.y, x_1215.y) * vec2<f32>(x_1224.x, x_1224.y));
          let x_1227 : i32 = u_xlati55;
          let x_1229 : i32 = u_xlati55;
          let x_1232 : vec4<f32> = x_1091.x_AdditionalLightsWorldToLights[(x_1227 / 4i)][(x_1229 % 4i)];
          let x_1234 : vec3<f32> = vs_TEXCOORD1;
          let x_1237 : vec2<f32> = u_xlat38;
          u_xlat38 = ((vec2<f32>(x_1232.x, x_1232.y) * vec2<f32>(x_1234.x, x_1234.x)) + x_1237);
          let x_1239 : i32 = u_xlati55;
          let x_1242 : i32 = u_xlati55;
          let x_1246 : vec4<f32> = x_1091.x_AdditionalLightsWorldToLights[((x_1239 + 2i) / 4i)][((x_1242 + 2i) % 4i)];
          let x_1248 : vec3<f32> = vs_TEXCOORD1;
          let x_1251 : vec2<f32> = u_xlat38;
          u_xlat38 = ((vec2<f32>(x_1246.x, x_1246.y) * vec2<f32>(x_1248.z, x_1248.z)) + x_1251);
          let x_1253 : vec2<f32> = u_xlat38;
          let x_1254 : i32 = u_xlati55;
          let x_1257 : i32 = u_xlati55;
          let x_1261 : vec4<f32> = x_1091.x_AdditionalLightsWorldToLights[((x_1254 + 3i) / 4i)][((x_1257 + 3i) % 4i)];
          u_xlat38 = (x_1253 + vec2<f32>(x_1261.x, x_1261.y));
          let x_1264 : vec2<f32> = u_xlat38;
          u_xlat38 = ((x_1264 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1267 : vec2<f32> = u_xlat38;
          u_xlat38 = fract(x_1267);
          let x_1269 : u32 = u_xlatu49;
          let x_1272 : vec4<f32> = x_1091.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1269)];
          let x_1274 : vec2<f32> = u_xlat38;
          let x_1276 : u32 = u_xlatu49;
          let x_1279 : vec4<f32> = x_1091.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1276)];
          let x_1281 : vec2<f32> = ((vec2<f32>(x_1272.x, x_1272.y) * x_1274) + vec2<f32>(x_1279.z, x_1279.w));
          let x_1282 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1281.x, x_1281.y, x_1282.z, x_1282.w);
        } else {
          let x_1286 : vec3<f32> = vs_TEXCOORD1;
          let x_1288 : i32 = u_xlati55;
          let x_1291 : i32 = u_xlati55;
          let x_1295 : vec4<f32> = x_1091.x_AdditionalLightsWorldToLights[((x_1288 + 1i) / 4i)][((x_1291 + 1i) % 4i)];
          u_xlat13 = (vec4<f32>(x_1286.y, x_1286.y, x_1286.y, x_1286.y) * x_1295);
          let x_1297 : i32 = u_xlati55;
          let x_1299 : i32 = u_xlati55;
          let x_1302 : vec4<f32> = x_1091.x_AdditionalLightsWorldToLights[(x_1297 / 4i)][(x_1299 % 4i)];
          let x_1303 : vec3<f32> = vs_TEXCOORD1;
          let x_1306 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_1302 * vec4<f32>(x_1303.x, x_1303.x, x_1303.x, x_1303.x)) + x_1306);
          let x_1308 : i32 = u_xlati55;
          let x_1311 : i32 = u_xlati55;
          let x_1315 : vec4<f32> = x_1091.x_AdditionalLightsWorldToLights[((x_1308 + 2i) / 4i)][((x_1311 + 2i) % 4i)];
          let x_1316 : vec3<f32> = vs_TEXCOORD1;
          let x_1319 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_1315 * vec4<f32>(x_1316.z, x_1316.z, x_1316.z, x_1316.z)) + x_1319);
          let x_1321 : vec4<f32> = u_xlat13;
          let x_1322 : i32 = u_xlati55;
          let x_1325 : i32 = u_xlati55;
          let x_1329 : vec4<f32> = x_1091.x_AdditionalLightsWorldToLights[((x_1322 + 3i) / 4i)][((x_1325 + 3i) % 4i)];
          u_xlat13 = (x_1321 + x_1329);
          let x_1331 : vec4<f32> = u_xlat13;
          let x_1333 : vec4<f32> = u_xlat13;
          let x_1335 : vec3<f32> = (vec3<f32>(x_1331.x, x_1331.y, x_1331.z) / vec3<f32>(x_1333.w, x_1333.w, x_1333.w));
          let x_1336 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_1335.x, x_1335.y, x_1335.z, x_1336.w);
          let x_1338 : vec4<f32> = u_xlat13;
          let x_1340 : vec4<f32> = u_xlat13;
          u_xlat38.x = dot(vec3<f32>(x_1338.x, x_1338.y, x_1338.z), vec3<f32>(x_1340.x, x_1340.y, x_1340.z));
          let x_1345 : f32 = u_xlat38.x;
          u_xlat38.x = inverseSqrt(x_1345);
          let x_1348 : vec2<f32> = u_xlat38;
          let x_1350 : vec4<f32> = u_xlat13;
          let x_1352 : vec3<f32> = (vec3<f32>(x_1348.x, x_1348.x, x_1348.x) * vec3<f32>(x_1350.x, x_1350.y, x_1350.z));
          let x_1353 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_1352.x, x_1352.y, x_1352.z, x_1353.w);
          let x_1355 : vec4<f32> = u_xlat13;
          u_xlat38.x = dot(abs(vec3<f32>(x_1355.x, x_1355.y, x_1355.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1362 : f32 = u_xlat38.x;
          u_xlat38.x = max(x_1362, 0.000001f);
          let x_1367 : f32 = u_xlat38.x;
          u_xlat38.x = (1.0f / x_1367);
          let x_1371 : vec2<f32> = u_xlat38;
          let x_1373 : vec4<f32> = u_xlat13;
          u_xlat14 = (vec3<f32>(x_1371.x, x_1371.x, x_1371.x) * vec3<f32>(x_1373.z, x_1373.x, x_1373.y));
          let x_1377 : f32 = u_xlat14.x;
          u_xlat14.x = -(x_1377);
          let x_1381 : f32 = u_xlat14.x;
          u_xlat14.x = clamp(x_1381, 0.0f, 1.0f);
          let x_1385 : vec3<f32> = u_xlat14;
          let x_1388 : vec4<bool> = (vec4<f32>(x_1385.y, x_1385.z, x_1385.y, x_1385.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb42 = vec2<bool>(x_1388.x, x_1388.y);
          let x_1392 : bool = u_xlatb42.x;
          if (x_1392) {
            let x_1397 : f32 = u_xlat14.x;
            x_1393 = x_1397;
          } else {
            let x_1400 : f32 = u_xlat14.x;
            x_1393 = -(x_1400);
          }
          let x_1402 : f32 = x_1393;
          u_xlat42.x = x_1402;
          let x_1405 : bool = u_xlatb42.y;
          if (x_1405) {
            let x_1410 : f32 = u_xlat14.x;
            x_1406 = x_1410;
          } else {
            let x_1413 : f32 = u_xlat14.x;
            x_1406 = -(x_1413);
          }
          let x_1415 : f32 = x_1406;
          u_xlat42.y = x_1415;
          let x_1417 : vec4<f32> = u_xlat13;
          let x_1419 : vec2<f32> = u_xlat38;
          let x_1422 : vec2<f32> = u_xlat42;
          u_xlat38 = ((vec2<f32>(x_1417.x, x_1417.y) * vec2<f32>(x_1419.x, x_1419.x)) + x_1422);
          let x_1424 : vec2<f32> = u_xlat38;
          u_xlat38 = ((x_1424 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1427 : vec2<f32> = u_xlat38;
          u_xlat38 = clamp(x_1427, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1431 : u32 = u_xlatu49;
          let x_1434 : vec4<f32> = x_1091.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1431)];
          let x_1436 : vec2<f32> = u_xlat38;
          let x_1438 : u32 = u_xlatu49;
          let x_1441 : vec4<f32> = x_1091.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1438)];
          let x_1443 : vec2<f32> = ((vec2<f32>(x_1434.x, x_1434.y) * x_1436) + vec2<f32>(x_1441.z, x_1441.w));
          let x_1444 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1443.x, x_1443.y, x_1444.z, x_1444.w);
        }
      }
      let x_1451 : vec4<f32> = u_xlat12;
      let x_1454 : f32 = x_44.x_GlobalMipBias.x;
      let x_1455 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1451.x, x_1451.y), x_1454);
      u_xlat12 = x_1455;
      let x_1457 : bool = u_xlatb8.y;
      if (x_1457) {
        let x_1462 : f32 = u_xlat12.w;
        x_1458 = x_1462;
      } else {
        let x_1465 : f32 = u_xlat12.x;
        x_1458 = x_1465;
      }
      let x_1466 : f32 = x_1458;
      u_xlat38.x = x_1466;
      let x_1469 : bool = u_xlatb8.x;
      if (x_1469) {
        let x_1473 : vec4<f32> = u_xlat12;
        x_1470 = vec3<f32>(x_1473.x, x_1473.y, x_1473.z);
      } else {
        let x_1476 : vec2<f32> = u_xlat38;
        x_1470 = vec3<f32>(x_1476.x, x_1476.x, x_1476.x);
      }
      let x_1478 : vec3<f32> = x_1470;
      let x_1479 : vec4<f32> = u_xlat12;
      u_xlat12 = vec4<f32>(x_1478.x, x_1478.y, x_1478.z, x_1479.w);
    } else {
      u_xlat12.x = 1.0f;
      u_xlat12.y = 1.0f;
      u_xlat12.z = 1.0f;
    }
    let x_1485 : vec4<f32> = u_xlat12;
    let x_1487 : u32 = u_xlatu49;
    let x_1490 : vec4<f32> = x_978.x_AdditionalLightsColor[bitcast<i32>(x_1487)];
    let x_1492 : vec3<f32> = (vec3<f32>(x_1485.x, x_1485.y, x_1485.z) * vec3<f32>(x_1490.x, x_1490.y, x_1490.z));
    let x_1493 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_1492.x, x_1492.y, x_1492.z, x_1493.w);
    let x_1495 : f32 = u_xlat36;
    let x_1497 : vec4<f32> = u_xlat12;
    let x_1499 : vec3<f32> = (vec3<f32>(x_1495, x_1495, x_1495) * vec3<f32>(x_1497.x, x_1497.y, x_1497.z));
    let x_1500 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_1499.x, x_1499.y, x_1499.z, x_1500.w);
    let x_1502 : vec4<f32> = u_xlat4;
    let x_1504 : vec3<f32> = u_xlat11;
    u_xlat49 = dot(vec3<f32>(x_1502.x, x_1502.y, x_1502.z), x_1504);
    let x_1506 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1506, 0.0f, 1.0f);
    let x_1508 : f32 = u_xlat49;
    let x_1509 : f32 = u_xlat51;
    u_xlat49 = (x_1508 * x_1509);
    let x_1511 : f32 = u_xlat49;
    let x_1513 : vec4<f32> = u_xlat12;
    let x_1515 : vec3<f32> = (vec3<f32>(x_1511, x_1511, x_1511) * vec3<f32>(x_1513.x, x_1513.y, x_1513.z));
    let x_1516 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_1515.x, x_1515.y, x_1515.z, x_1516.w);
    let x_1518 : vec3<f32> = u_xlat10;
    let x_1519 : f32 = u_xlat52;
    let x_1522 : vec3<f32> = u_xlat3;
    u_xlat10 = ((x_1518 * vec3<f32>(x_1519, x_1519, x_1519)) + x_1522);
    let x_1524 : vec3<f32> = u_xlat10;
    let x_1525 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(x_1524, x_1525);
    let x_1527 : f32 = u_xlat49;
    u_xlat49 = max(x_1527, 1.17549435e-37f);
    let x_1529 : f32 = u_xlat49;
    u_xlat49 = inverseSqrt(x_1529);
    let x_1531 : f32 = u_xlat49;
    let x_1533 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1531, x_1531, x_1531) * x_1533);
    let x_1535 : vec4<f32> = u_xlat4;
    let x_1537 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_1535.x, x_1535.y, x_1535.z), x_1537);
    let x_1539 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1539, 0.0f, 1.0f);
    let x_1541 : vec3<f32> = u_xlat11;
    let x_1542 : vec3<f32> = u_xlat10;
    u_xlat51 = dot(x_1541, x_1542);
    let x_1544 : f32 = u_xlat51;
    u_xlat51 = clamp(x_1544, 0.0f, 1.0f);
    let x_1546 : f32 = u_xlat49;
    let x_1547 : f32 = u_xlat49;
    u_xlat49 = (x_1546 * x_1547);
    let x_1549 : f32 = u_xlat49;
    let x_1551 : f32 = u_xlat9.x;
    u_xlat49 = ((x_1549 * x_1551) + 1.000010014f);
    let x_1554 : f32 = u_xlat51;
    let x_1555 : f32 = u_xlat51;
    u_xlat51 = (x_1554 * x_1555);
    let x_1557 : f32 = u_xlat49;
    let x_1558 : f32 = u_xlat49;
    u_xlat49 = (x_1557 * x_1558);
    let x_1560 : f32 = u_xlat51;
    u_xlat51 = max(x_1560, 0.100000001f);
    let x_1562 : f32 = u_xlat49;
    let x_1563 : f32 = u_xlat51;
    u_xlat49 = (x_1562 * x_1563);
    let x_1565 : f32 = u_xlat21;
    let x_1566 : f32 = u_xlat49;
    u_xlat49 = (x_1565 * x_1566);
    let x_1568 : f32 = u_xlat50;
    let x_1569 : f32 = u_xlat49;
    u_xlat49 = (x_1568 / x_1569);
    let x_1571 : vec4<f32> = u_xlat0;
    let x_1573 : f32 = u_xlat49;
    let x_1576 : vec3<f32> = u_xlat16;
    u_xlat10 = ((vec3<f32>(x_1571.x, x_1571.y, x_1571.z) * vec3<f32>(x_1573, x_1573, x_1573)) + x_1576);
    let x_1578 : vec3<f32> = u_xlat10;
    let x_1579 : vec4<f32> = u_xlat12;
    let x_1582 : vec3<f32> = u_xlat24;
    u_xlat24 = ((x_1578 * vec3<f32>(x_1579.x, x_1579.y, x_1579.z)) + x_1582);

    continuing {
      let x_1584 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1584 + bitcast<u32>(1i));
    }
  }
  let x_1586 : vec3<f32> = u_xlat5;
  let x_1587 : vec4<f32> = u_xlat6;
  let x_1590 : vec4<f32> = u_xlat7;
  let x_1592 : vec3<f32> = ((x_1586 * vec3<f32>(x_1587.x, x_1587.x, x_1587.x)) + vec3<f32>(x_1590.x, x_1590.y, x_1590.z));
  let x_1593 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1592.x, x_1592.y, x_1592.z, x_1593.w);
  let x_1595 : vec3<f32> = u_xlat24;
  let x_1596 : vec4<f32> = u_xlat0;
  let x_1598 : vec3<f32> = (x_1595 + vec3<f32>(x_1596.x, x_1596.y, x_1596.z));
  let x_1599 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1598.x, x_1598.y, x_1598.z, x_1599.w);
  let x_1601 : vec3<f32> = u_xlat2;
  let x_1603 : vec4<f32> = x_57.x_EmissionColor;
  let x_1606 : vec4<f32> = u_xlat0;
  let x_1608 : vec3<f32> = ((x_1601 * vec3<f32>(x_1603.x, x_1603.y, x_1603.z)) + vec3<f32>(x_1606.x, x_1606.y, x_1606.z));
  let x_1609 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1608.x, x_1608.y, x_1608.z, x_1609.w);
  let x_1611 : f32 = u_xlat45;
  let x_1612 : f32 = u_xlat45;
  u_xlat45 = (x_1611 * -(x_1612));
  let x_1615 : f32 = u_xlat45;
  u_xlat45 = exp2(x_1615);
  let x_1617 : vec4<f32> = u_xlat0;
  let x_1621 : vec4<f32> = x_44.unity_FogColor;
  let x_1624 : vec3<f32> = (vec3<f32>(x_1617.x, x_1617.y, x_1617.z) + -(vec3<f32>(x_1621.x, x_1621.y, x_1621.z)));
  let x_1625 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1624.x, x_1624.y, x_1624.z, x_1625.w);
  let x_1629 : f32 = u_xlat45;
  let x_1631 : vec4<f32> = u_xlat0;
  let x_1635 : vec4<f32> = x_44.unity_FogColor;
  let x_1637 : vec3<f32> = ((vec3<f32>(x_1629, x_1629, x_1629) * vec3<f32>(x_1631.x, x_1631.y, x_1631.z)) + vec3<f32>(x_1635.x, x_1635.y, x_1635.z));
  let x_1638 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1637.x, x_1637.y, x_1637.z, x_1638.w);
  let x_1643 : f32 = x_57.x_Surface;
  u_xlatb0 = (x_1643 == 1.0f);
  let x_1645 : bool = u_xlatb0;
  if (x_1645) {
    let x_1650 : f32 = u_xlat1.x;
    x_1646 = x_1650;
  } else {
    x_1646 = 1.0f;
  }
  let x_1652 : f32 = x_1646;
  SV_Target0.w = x_1652;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}

