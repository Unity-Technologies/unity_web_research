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
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
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

type Arr = array<mat4x4<f32>, 5u>;

struct MainLightShadows {
  x_MainLightWorldToShadow : Arr,
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

type Arr_1 = array<strided_arr, 8u>;

struct LightCookies {
  x_MainLightWorldToLight : mat4x4<f32>,
  x_AdditionalLightsCookieEnableBits : Arr_1,
  x_MainLightCookieTextureFormat : f32,
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
}

type Arr_2 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr_2,
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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_311 : MainLightShadows;

@group(1) @binding(5) var<uniform> x_378 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_570 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_824 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_937 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb42 : bool;
  var u_xlat2 : vec3<f32>;
  var u_xlat44 : f32;
  var u_xlat3 : vec3<f32>;
  var x_96 : f32;
  var x_110 : f32;
  var x_122 : f32;
  var u_xlat42 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat15 : vec3<f32>;
  var u_xlat45 : f32;
  var u_xlat46 : f32;
  var u_xlat19 : f32;
  var u_xlat33 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat47 : f32;
  var u_xlat6 : vec4<f32>;
  var u_xlatb6 : bool;
  var u_xlatb20 : bool;
  var u_xlat20 : f32;
  var u_xlatb7 : vec2<bool>;
  var u_xlat48 : f32;
  var x_466 : f32;
  var x_477 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat49 : f32;
  var u_xlat8 : vec2<f32>;
  var u_xlat22 : vec3<f32>;
  var u_xlatu42 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu45 : u32;
  var u_xlati47 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat9 : vec3<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlat35 : vec2<f32>;
  var u_xlatu35 : u32;
  var u_xlati49 : i32;
  var u_xlati35 : i32;
  var u_xlati51 : i32;
  var u_xlat11 : vec4<f32>;
  var u_xlatb35 : bool;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb39 : vec2<bool>;
  var u_xlat39 : vec2<f32>;
  var x_1239 : f32;
  var x_1252 : f32;
  var x_1304 : f32;
  var x_1316 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_1453 : f32;
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
  let x_69 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb42 = (x_69 == 0.0f);
  let x_76 : vec3<f32> = vs_TEXCOORD1;
  let x_81 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_76) + x_81);
  let x_85 : vec3<f32> = u_xlat2;
  let x_86 : vec3<f32> = u_xlat2;
  u_xlat44 = dot(x_85, x_86);
  let x_88 : f32 = u_xlat44;
  u_xlat44 = inverseSqrt(x_88);
  let x_90 : f32 = u_xlat44;
  let x_92 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_90, x_90, x_90) * x_92);
  let x_95 : bool = u_xlatb42;
  if (x_95) {
    let x_100 : f32 = u_xlat2.x;
    x_96 = x_100;
  } else {
    let x_106 : f32 = x_44.unity_MatrixV[0i].z;
    x_96 = x_106;
  }
  let x_107 : f32 = x_96;
  u_xlat3.x = x_107;
  let x_109 : bool = u_xlatb42;
  if (x_109) {
    let x_115 : f32 = u_xlat2.y;
    x_110 = x_115;
  } else {
    let x_118 : f32 = x_44.unity_MatrixV[1i].z;
    x_110 = x_118;
  }
  let x_119 : f32 = x_110;
  u_xlat3.y = x_119;
  let x_121 : bool = u_xlatb42;
  if (x_121) {
    let x_126 : f32 = u_xlat2.z;
    x_122 = x_126;
  } else {
    let x_129 : f32 = x_44.unity_MatrixV[2i].z;
    x_122 = x_129;
  }
  let x_130 : f32 = x_122;
  u_xlat3.z = x_130;
  let x_134 : vec3<f32> = vs_TEXCOORD2;
  let x_135 : vec3<f32> = vs_TEXCOORD2;
  u_xlat42 = dot(x_134, x_135);
  let x_137 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_137);
  let x_139 : f32 = u_xlat42;
  let x_141 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_139, x_139, x_139) * x_141);
  let x_150 : vec2<f32> = vs_TEXCOORD8;
  let x_152 : f32 = x_44.x_GlobalMipBias.x;
  let x_153 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_150, x_152);
  u_xlat4 = vec3<f32>(x_153.x, x_153.y, x_153.z);
  let x_158 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_159 : vec2<f32> = vec2<f32>(x_158.x, x_158.y);
  let x_163 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_159.x, x_159.y));
  let x_164 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_163.x, x_163.y, x_164.z);
  let x_166 : vec3<f32> = u_xlat5;
  let x_168 : vec4<f32> = hlslcc_FragCoord;
  let x_170 : vec2<f32> = (vec2<f32>(x_166.x, x_166.y) * vec2<f32>(x_168.x, x_168.y));
  let x_171 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_170.x, x_170.y, x_171.z);
  let x_174 : f32 = u_xlat5.y;
  let x_177 : f32 = x_44.x_ScaleBiasRt.x;
  let x_180 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat42 = ((x_174 * x_177) + x_180);
  let x_182 : f32 = u_xlat42;
  u_xlat5.z = (-(x_182) + 1.0f);
  let x_187 : f32 = x_57.x_Metallic;
  u_xlat42 = ((-(x_187) * 0.959999979f) + 0.959999979f);
  let x_192 : f32 = u_xlat42;
  let x_195 : f32 = x_57.x_Smoothness;
  u_xlat44 = (-(x_192) + x_195);
  let x_198 : f32 = u_xlat42;
  let x_200 : vec4<f32> = u_xlat1;
  u_xlat15 = (vec3<f32>(x_198, x_198, x_198) * vec3<f32>(x_200.y, x_200.z, x_200.w));
  let x_203 : vec4<f32> = u_xlat0;
  let x_206 : vec4<f32> = x_57.x_BaseColor;
  let x_211 : vec3<f32> = ((vec3<f32>(x_203.x, x_203.y, x_203.z) * vec3<f32>(x_206.x, x_206.y, x_206.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_212 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_211.x, x_211.y, x_211.z, x_212.w);
  let x_215 : f32 = x_57.x_Metallic;
  let x_217 : f32 = x_57.x_Metallic;
  let x_219 : f32 = x_57.x_Metallic;
  let x_220 : vec3<f32> = vec3<f32>(x_215, x_217, x_219);
  let x_225 : vec4<f32> = u_xlat0;
  let x_230 : vec3<f32> = ((vec3<f32>(x_220.x, x_220.y, x_220.z) * vec3<f32>(x_225.x, x_225.y, x_225.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_231 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_230.x, x_230.y, x_230.z, x_231.w);
  let x_234 : f32 = x_57.x_Smoothness;
  u_xlat42 = (-(x_234) + 1.0f);
  let x_238 : f32 = u_xlat42;
  let x_239 : f32 = u_xlat42;
  u_xlat45 = (x_238 * x_239);
  let x_241 : f32 = u_xlat45;
  u_xlat45 = max(x_241, 0.0078125f);
  let x_245 : f32 = u_xlat45;
  let x_246 : f32 = u_xlat45;
  u_xlat46 = (x_245 * x_246);
  let x_248 : f32 = u_xlat44;
  u_xlat44 = (x_248 + 1.0f);
  let x_250 : f32 = u_xlat44;
  u_xlat44 = clamp(x_250, 0.0f, 1.0f);
  let x_253 : f32 = u_xlat45;
  u_xlat19 = ((x_253 * 4.0f) + 2.0f);
  let x_263 : vec3<f32> = u_xlat5;
  let x_266 : f32 = x_44.x_GlobalMipBias.x;
  let x_267 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_263.x, x_263.z), x_266);
  u_xlat5.x = x_267.x;
  let x_272 : f32 = u_xlat5.x;
  u_xlat33 = (x_272 + -1.0f);
  let x_277 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_278 : f32 = u_xlat33;
  u_xlat33 = ((x_277 * x_278) + 1.0f);
  let x_282 : f32 = u_xlat5.x;
  u_xlat5.x = min(x_282, 1.0f);
  let x_287 : vec4<f32> = vs_TEXCOORD6;
  let x_288 : vec2<f32> = vec2<f32>(x_287.x, x_287.y);
  let x_290 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_288.x, x_288.y, x_290);
  let x_303 : vec3<f32> = txVec0;
  let x_305 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_303.xy, x_303.z);
  u_xlat47 = x_305;
  let x_313 : f32 = x_311.x_MainLightShadowParams.x;
  u_xlat6.x = (-(x_313) + 1.0f);
  let x_317 : f32 = u_xlat47;
  let x_319 : f32 = x_311.x_MainLightShadowParams.x;
  let x_322 : f32 = u_xlat6.x;
  u_xlat47 = ((x_317 * x_319) + x_322);
  let x_326 : f32 = vs_TEXCOORD6.z;
  u_xlatb6 = (0.0f >= x_326);
  let x_330 : f32 = vs_TEXCOORD6.z;
  u_xlatb20 = (x_330 >= 1.0f);
  let x_332 : bool = u_xlatb20;
  let x_333 : bool = u_xlatb6;
  u_xlatb6 = (x_332 | x_333);
  let x_335 : bool = u_xlatb6;
  let x_336 : f32 = u_xlat47;
  u_xlat47 = select(x_336, 1.0f, x_335);
  let x_338 : vec3<f32> = vs_TEXCOORD1;
  let x_340 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_342 : vec3<f32> = (x_338 + -(x_340));
  let x_343 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_342.x, x_342.y, x_342.z, x_343.w);
  let x_345 : vec4<f32> = u_xlat6;
  let x_347 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_345.x, x_345.y, x_345.z), vec3<f32>(x_347.x, x_347.y, x_347.z));
  let x_352 : f32 = u_xlat6.x;
  let x_354 : f32 = x_311.x_MainLightShadowParams.z;
  let x_357 : f32 = x_311.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_352 * x_354) + x_357);
  let x_361 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_361, 0.0f, 1.0f);
  let x_365 : f32 = u_xlat47;
  u_xlat20 = (-(x_365) + 1.0f);
  let x_369 : f32 = u_xlat6.x;
  let x_370 : f32 = u_xlat20;
  let x_372 : f32 = u_xlat47;
  u_xlat47 = ((x_369 * x_370) + x_372);
  let x_380 : f32 = x_378.x_MainLightCookieTextureFormat;
  u_xlatb6 = !((x_380 == -1.0f));
  let x_382 : bool = u_xlatb6;
  if (x_382) {
    let x_385 : vec3<f32> = vs_TEXCOORD1;
    let x_388 : vec4<f32> = x_378.x_MainLightWorldToLight[1i];
    let x_390 : vec2<f32> = (vec2<f32>(x_385.y, x_385.y) * vec2<f32>(x_388.x, x_388.y));
    let x_391 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_390.x, x_390.y, x_391.z, x_391.w);
    let x_394 : vec4<f32> = x_378.x_MainLightWorldToLight[0i];
    let x_396 : vec3<f32> = vs_TEXCOORD1;
    let x_399 : vec4<f32> = u_xlat6;
    let x_401 : vec2<f32> = ((vec2<f32>(x_394.x, x_394.y) * vec2<f32>(x_396.x, x_396.x)) + vec2<f32>(x_399.x, x_399.y));
    let x_402 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_401.x, x_401.y, x_402.z, x_402.w);
    let x_405 : vec4<f32> = x_378.x_MainLightWorldToLight[2i];
    let x_407 : vec3<f32> = vs_TEXCOORD1;
    let x_410 : vec4<f32> = u_xlat6;
    let x_412 : vec2<f32> = ((vec2<f32>(x_405.x, x_405.y) * vec2<f32>(x_407.z, x_407.z)) + vec2<f32>(x_410.x, x_410.y));
    let x_413 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_412.x, x_412.y, x_413.z, x_413.w);
    let x_415 : vec4<f32> = u_xlat6;
    let x_419 : vec4<f32> = x_378.x_MainLightWorldToLight[3i];
    let x_421 : vec2<f32> = (vec2<f32>(x_415.x, x_415.y) + vec2<f32>(x_419.x, x_419.y));
    let x_422 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_421.x, x_421.y, x_422.z, x_422.w);
    let x_424 : vec4<f32> = u_xlat6;
    let x_429 : vec2<f32> = ((vec2<f32>(x_424.x, x_424.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_430 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_429.x, x_429.y, x_430.z, x_430.w);
    let x_437 : vec4<f32> = u_xlat6;
    let x_440 : f32 = x_44.x_GlobalMipBias.x;
    let x_441 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_437.x, x_437.y), x_440);
    u_xlat6 = x_441;
    let x_446 : f32 = x_378.x_MainLightCookieTextureFormat;
    let x_448 : f32 = x_378.x_MainLightCookieTextureFormat;
    let x_450 : f32 = x_378.x_MainLightCookieTextureFormat;
    let x_452 : f32 = x_378.x_MainLightCookieTextureFormat;
    let x_453 : vec4<f32> = vec4<f32>(x_446, x_448, x_450, x_452);
    let x_461 : vec4<bool> = (vec4<f32>(x_453.x, x_453.y, x_453.z, x_453.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_461.x, x_461.y);
    let x_465 : bool = u_xlatb7.y;
    if (x_465) {
      let x_470 : f32 = u_xlat6.w;
      x_466 = x_470;
    } else {
      let x_473 : f32 = u_xlat6.x;
      x_466 = x_473;
    }
    let x_474 : f32 = x_466;
    u_xlat48 = x_474;
    let x_476 : bool = u_xlatb7.x;
    if (x_476) {
      let x_480 : vec4<f32> = u_xlat6;
      x_477 = vec3<f32>(x_480.x, x_480.y, x_480.z);
    } else {
      let x_483 : f32 = u_xlat48;
      x_477 = vec3<f32>(x_483, x_483, x_483);
    }
    let x_485 : vec3<f32> = x_477;
    let x_486 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_485.x, x_485.y, x_485.z, x_486.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_492 : vec4<f32> = u_xlat6;
  let x_495 : vec4<f32> = x_44.x_MainLightColor;
  let x_497 : vec3<f32> = (vec3<f32>(x_492.x, x_492.y, x_492.z) * vec3<f32>(x_495.x, x_495.y, x_495.z));
  let x_498 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_497.x, x_497.y, x_497.z, x_498.w);
  let x_500 : f32 = u_xlat33;
  let x_502 : vec4<f32> = u_xlat6;
  let x_504 : vec3<f32> = (vec3<f32>(x_500, x_500, x_500) * vec3<f32>(x_502.x, x_502.y, x_502.z));
  let x_505 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_504.x, x_504.y, x_504.z, x_505.w);
  let x_507 : vec3<f32> = u_xlat3;
  let x_509 : vec3<f32> = u_xlat2;
  u_xlat48 = dot(-(x_507), x_509);
  let x_511 : f32 = u_xlat48;
  let x_512 : f32 = u_xlat48;
  u_xlat48 = (x_511 + x_512);
  let x_515 : vec3<f32> = u_xlat2;
  let x_516 : f32 = u_xlat48;
  let x_520 : vec3<f32> = u_xlat3;
  let x_522 : vec3<f32> = ((x_515 * -(vec3<f32>(x_516, x_516, x_516))) + -(x_520));
  let x_523 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_522.x, x_522.y, x_522.z, x_523.w);
  let x_525 : vec3<f32> = u_xlat2;
  let x_526 : vec3<f32> = u_xlat3;
  u_xlat48 = dot(x_525, x_526);
  let x_528 : f32 = u_xlat48;
  u_xlat48 = clamp(x_528, 0.0f, 1.0f);
  let x_530 : f32 = u_xlat48;
  u_xlat48 = (-(x_530) + 1.0f);
  let x_533 : f32 = u_xlat48;
  let x_534 : f32 = u_xlat48;
  u_xlat48 = (x_533 * x_534);
  let x_536 : f32 = u_xlat48;
  let x_537 : f32 = u_xlat48;
  u_xlat48 = (x_536 * x_537);
  let x_540 : f32 = u_xlat42;
  u_xlat49 = ((-(x_540) * 0.699999988f) + 1.700000048f);
  let x_546 : f32 = u_xlat42;
  let x_547 : f32 = u_xlat49;
  u_xlat42 = (x_546 * x_547);
  let x_549 : f32 = u_xlat42;
  u_xlat42 = (x_549 * 6.0f);
  let x_560 : vec4<f32> = u_xlat7;
  let x_562 : f32 = u_xlat42;
  let x_563 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_560.x, x_560.y, x_560.z), x_562);
  u_xlat7 = x_563;
  let x_565 : f32 = u_xlat7.w;
  u_xlat42 = (x_565 + -1.0f);
  let x_572 : f32 = x_570.unity_SpecCube0_HDR.w;
  let x_573 : f32 = u_xlat42;
  u_xlat42 = ((x_572 * x_573) + 1.0f);
  let x_576 : f32 = u_xlat42;
  u_xlat42 = max(x_576, 0.0f);
  let x_578 : f32 = u_xlat42;
  u_xlat42 = log2(x_578);
  let x_580 : f32 = u_xlat42;
  let x_582 : f32 = x_570.unity_SpecCube0_HDR.y;
  u_xlat42 = (x_580 * x_582);
  let x_584 : f32 = u_xlat42;
  u_xlat42 = exp2(x_584);
  let x_586 : f32 = u_xlat42;
  let x_588 : f32 = x_570.unity_SpecCube0_HDR.x;
  u_xlat42 = (x_586 * x_588);
  let x_590 : vec4<f32> = u_xlat7;
  let x_592 : f32 = u_xlat42;
  let x_594 : vec3<f32> = (vec3<f32>(x_590.x, x_590.y, x_590.z) * vec3<f32>(x_592, x_592, x_592));
  let x_595 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_594.x, x_594.y, x_594.z, x_595.w);
  let x_599 : f32 = u_xlat45;
  let x_601 : f32 = u_xlat45;
  u_xlat8 = ((vec2<f32>(x_599, x_599) * vec2<f32>(x_601, x_601)) + vec2<f32>(-1.0f, 1.0f));
  let x_607 : f32 = u_xlat8.y;
  u_xlat42 = (1.0f / x_607);
  let x_610 : vec4<f32> = u_xlat0;
  let x_613 : f32 = u_xlat44;
  u_xlat22 = (-(vec3<f32>(x_610.x, x_610.y, x_610.z)) + vec3<f32>(x_613, x_613, x_613));
  let x_616 : f32 = u_xlat48;
  let x_618 : vec3<f32> = u_xlat22;
  let x_620 : vec4<f32> = u_xlat0;
  u_xlat22 = ((vec3<f32>(x_616, x_616, x_616) * x_618) + vec3<f32>(x_620.x, x_620.y, x_620.z));
  let x_623 : f32 = u_xlat42;
  let x_625 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_623, x_623, x_623) * x_625);
  let x_627 : vec4<f32> = u_xlat7;
  let x_629 : vec3<f32> = u_xlat22;
  let x_630 : vec3<f32> = (vec3<f32>(x_627.x, x_627.y, x_627.z) * x_629);
  let x_631 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_630.x, x_630.y, x_630.z, x_631.w);
  let x_633 : vec3<f32> = u_xlat4;
  let x_634 : vec3<f32> = u_xlat15;
  let x_636 : vec4<f32> = u_xlat7;
  u_xlat4 = ((x_633 * x_634) + vec3<f32>(x_636.x, x_636.y, x_636.z));
  let x_639 : f32 = u_xlat47;
  let x_642 : f32 = x_570.unity_LightData.z;
  u_xlat42 = (x_639 * x_642);
  let x_644 : vec3<f32> = u_xlat2;
  let x_646 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat44 = dot(x_644, vec3<f32>(x_646.x, x_646.y, x_646.z));
  let x_649 : f32 = u_xlat44;
  u_xlat44 = clamp(x_649, 0.0f, 1.0f);
  let x_651 : f32 = u_xlat42;
  let x_652 : f32 = u_xlat44;
  u_xlat42 = (x_651 * x_652);
  let x_654 : f32 = u_xlat42;
  let x_656 : vec4<f32> = u_xlat6;
  let x_658 : vec3<f32> = (vec3<f32>(x_654, x_654, x_654) * vec3<f32>(x_656.x, x_656.y, x_656.z));
  let x_659 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_658.x, x_658.y, x_658.z, x_659.w);
  let x_661 : vec3<f32> = u_xlat3;
  let x_663 : vec4<f32> = x_44.x_MainLightPosition;
  let x_665 : vec3<f32> = (x_661 + vec3<f32>(x_663.x, x_663.y, x_663.z));
  let x_666 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_665.x, x_665.y, x_665.z, x_666.w);
  let x_668 : vec4<f32> = u_xlat7;
  let x_670 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_668.x, x_668.y, x_668.z), vec3<f32>(x_670.x, x_670.y, x_670.z));
  let x_673 : f32 = u_xlat42;
  u_xlat42 = max(x_673, 1.17549435e-37f);
  let x_676 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_676);
  let x_678 : f32 = u_xlat42;
  let x_680 : vec4<f32> = u_xlat7;
  let x_682 : vec3<f32> = (vec3<f32>(x_678, x_678, x_678) * vec3<f32>(x_680.x, x_680.y, x_680.z));
  let x_683 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_682.x, x_682.y, x_682.z, x_683.w);
  let x_685 : vec3<f32> = u_xlat2;
  let x_686 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(x_685, vec3<f32>(x_686.x, x_686.y, x_686.z));
  let x_689 : f32 = u_xlat42;
  u_xlat42 = clamp(x_689, 0.0f, 1.0f);
  let x_692 : vec4<f32> = x_44.x_MainLightPosition;
  let x_694 : vec4<f32> = u_xlat7;
  u_xlat44 = dot(vec3<f32>(x_692.x, x_692.y, x_692.z), vec3<f32>(x_694.x, x_694.y, x_694.z));
  let x_697 : f32 = u_xlat44;
  u_xlat44 = clamp(x_697, 0.0f, 1.0f);
  let x_699 : f32 = u_xlat42;
  let x_700 : f32 = u_xlat42;
  u_xlat42 = (x_699 * x_700);
  let x_702 : f32 = u_xlat42;
  let x_704 : f32 = u_xlat8.x;
  u_xlat42 = ((x_702 * x_704) + 1.000010014f);
  let x_708 : f32 = u_xlat44;
  let x_709 : f32 = u_xlat44;
  u_xlat44 = (x_708 * x_709);
  let x_711 : f32 = u_xlat42;
  let x_712 : f32 = u_xlat42;
  u_xlat42 = (x_711 * x_712);
  let x_714 : f32 = u_xlat44;
  u_xlat44 = max(x_714, 0.100000001f);
  let x_717 : f32 = u_xlat42;
  let x_718 : f32 = u_xlat44;
  u_xlat42 = (x_717 * x_718);
  let x_720 : f32 = u_xlat19;
  let x_721 : f32 = u_xlat42;
  u_xlat42 = (x_720 * x_721);
  let x_723 : f32 = u_xlat46;
  let x_724 : f32 = u_xlat42;
  u_xlat42 = (x_723 / x_724);
  let x_726 : vec4<f32> = u_xlat0;
  let x_728 : f32 = u_xlat42;
  let x_731 : vec3<f32> = u_xlat15;
  let x_732 : vec3<f32> = ((vec3<f32>(x_726.x, x_726.y, x_726.z) * vec3<f32>(x_728, x_728, x_728)) + x_731);
  let x_733 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_732.x, x_732.y, x_732.z, x_733.w);
  let x_735 : vec4<f32> = u_xlat6;
  let x_737 : vec4<f32> = u_xlat7;
  let x_739 : vec3<f32> = (vec3<f32>(x_735.x, x_735.y, x_735.z) * vec3<f32>(x_737.x, x_737.y, x_737.z));
  let x_740 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_739.x, x_739.y, x_739.z, x_740.w);
  let x_743 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_745 : f32 = x_570.unity_LightData.y;
  u_xlat42 = min(x_743, x_745);
  let x_749 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_749));
  let x_753 : f32 = x_378.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_755 : f32 = x_378.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_757 : f32 = x_378.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_759 : f32 = x_378.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_760 : vec4<f32> = vec4<f32>(x_753, x_755, x_757, x_759);
  let x_766 : vec4<bool> = (vec4<f32>(x_760.x, x_760.y, x_760.z, x_760.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_766.x, x_766.y);
  u_xlat22.x = 0.0f;
  u_xlat22.y = 0.0f;
  u_xlat22.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_777 : u32 = u_xlatu_loop_1;
    let x_778 : u32 = u_xlatu42;
    if ((x_777 < x_778)) {
    } else {
      break;
    }
    let x_781 : u32 = u_xlatu_loop_1;
    u_xlatu45 = (x_781 >> 2u);
    let x_785 : u32 = u_xlatu_loop_1;
    u_xlati47 = bitcast<i32>((x_785 & 3u));
    let x_788 : u32 = u_xlatu45;
    let x_791 : vec4<f32> = x_570.unity_LightIndices[bitcast<i32>(x_788)];
    let x_801 : i32 = u_xlati47;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_806 : vec4<u32> = indexable[x_801];
    u_xlat45 = dot(x_791, bitcast<vec4<f32>>(x_806));
    let x_809 : f32 = u_xlat45;
    u_xlatu45 = bitcast<u32>(i32(x_809));
    let x_813 : vec3<f32> = vs_TEXCOORD1;
    let x_825 : u32 = u_xlatu45;
    let x_828 : vec4<f32> = x_824.x_AdditionalLightsPosition[bitcast<i32>(x_825)];
    let x_831 : u32 = u_xlatu45;
    let x_834 : vec4<f32> = x_824.x_AdditionalLightsPosition[bitcast<i32>(x_831)];
    u_xlat9 = ((-(x_813) * vec3<f32>(x_828.w, x_828.w, x_828.w)) + vec3<f32>(x_834.x, x_834.y, x_834.z));
    let x_837 : vec3<f32> = u_xlat9;
    let x_838 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_837, x_838);
    let x_840 : f32 = u_xlat47;
    u_xlat47 = max(x_840, 6.10351562e-05f);
    let x_843 : f32 = u_xlat47;
    u_xlat48 = inverseSqrt(x_843);
    let x_846 : f32 = u_xlat48;
    let x_848 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_846, x_846, x_846) * x_848);
    let x_851 : f32 = u_xlat47;
    u_xlat35.x = (1.0f / x_851);
    let x_854 : f32 = u_xlat47;
    let x_855 : u32 = u_xlatu45;
    let x_858 : f32 = x_824.x_AdditionalLightsAttenuation[bitcast<i32>(x_855)].x;
    u_xlat47 = (x_854 * x_858);
    let x_860 : f32 = u_xlat47;
    let x_862 : f32 = u_xlat47;
    u_xlat47 = ((-(x_860) * x_862) + 1.0f);
    let x_865 : f32 = u_xlat47;
    u_xlat47 = max(x_865, 0.0f);
    let x_867 : f32 = u_xlat47;
    let x_868 : f32 = u_xlat47;
    u_xlat47 = (x_867 * x_868);
    let x_870 : f32 = u_xlat47;
    let x_872 : f32 = u_xlat35.x;
    u_xlat47 = (x_870 * x_872);
    let x_874 : u32 = u_xlatu45;
    let x_877 : vec4<f32> = x_824.x_AdditionalLightsSpotDir[bitcast<i32>(x_874)];
    let x_879 : vec3<f32> = u_xlat10;
    u_xlat35.x = dot(vec3<f32>(x_877.x, x_877.y, x_877.z), x_879);
    let x_883 : f32 = u_xlat35.x;
    let x_884 : u32 = u_xlatu45;
    let x_887 : f32 = x_824.x_AdditionalLightsAttenuation[bitcast<i32>(x_884)].z;
    let x_889 : u32 = u_xlatu45;
    let x_892 : f32 = x_824.x_AdditionalLightsAttenuation[bitcast<i32>(x_889)].w;
    u_xlat35.x = ((x_883 * x_887) + x_892);
    let x_896 : f32 = u_xlat35.x;
    u_xlat35.x = clamp(x_896, 0.0f, 1.0f);
    let x_900 : f32 = u_xlat35.x;
    let x_902 : f32 = u_xlat35.x;
    u_xlat35.x = (x_900 * x_902);
    let x_905 : f32 = u_xlat47;
    let x_907 : f32 = u_xlat35.x;
    u_xlat47 = (x_905 * x_907);
    let x_910 : u32 = u_xlatu45;
    u_xlatu35 = (x_910 >> 5u);
    let x_913 : u32 = u_xlatu45;
    u_xlati49 = (1i << bitcast<u32>((bitcast<i32>(x_913) & 31i)));
    let x_919 : i32 = u_xlati49;
    let x_921 : u32 = u_xlatu35;
    let x_924 : f32 = x_378.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_921)].el;
    u_xlati35 = bitcast<i32>((bitcast<u32>(x_919) & bitcast<u32>(x_924)));
    let x_928 : i32 = u_xlati35;
    if ((x_928 != 0i)) {
      let x_938 : u32 = u_xlatu45;
      let x_941 : f32 = x_937.x_AdditionalLightsLightTypes[bitcast<i32>(x_938)].el;
      u_xlati35 = i32(x_941);
      let x_943 : i32 = u_xlati35;
      u_xlati49 = select(1i, 0i, (x_943 != 0i));
      let x_947 : u32 = u_xlatu45;
      u_xlati51 = (bitcast<i32>(x_947) << bitcast<u32>(2i));
      let x_950 : i32 = u_xlati49;
      if ((x_950 != 0i)) {
        let x_955 : vec3<f32> = vs_TEXCOORD1;
        let x_957 : i32 = u_xlati51;
        let x_960 : i32 = u_xlati51;
        let x_964 : vec4<f32> = x_937.x_AdditionalLightsWorldToLights[((x_957 + 1i) / 4i)][((x_960 + 1i) % 4i)];
        let x_966 : vec3<f32> = (vec3<f32>(x_955.y, x_955.y, x_955.y) * vec3<f32>(x_964.x, x_964.y, x_964.w));
        let x_967 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_966.x, x_966.y, x_966.z, x_967.w);
        let x_969 : i32 = u_xlati51;
        let x_971 : i32 = u_xlati51;
        let x_974 : vec4<f32> = x_937.x_AdditionalLightsWorldToLights[(x_969 / 4i)][(x_971 % 4i)];
        let x_976 : vec3<f32> = vs_TEXCOORD1;
        let x_979 : vec4<f32> = u_xlat11;
        let x_981 : vec3<f32> = ((vec3<f32>(x_974.x, x_974.y, x_974.w) * vec3<f32>(x_976.x, x_976.x, x_976.x)) + vec3<f32>(x_979.x, x_979.y, x_979.z));
        let x_982 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_981.x, x_981.y, x_981.z, x_982.w);
        let x_984 : i32 = u_xlati51;
        let x_987 : i32 = u_xlati51;
        let x_991 : vec4<f32> = x_937.x_AdditionalLightsWorldToLights[((x_984 + 2i) / 4i)][((x_987 + 2i) % 4i)];
        let x_993 : vec3<f32> = vs_TEXCOORD1;
        let x_996 : vec4<f32> = u_xlat11;
        let x_998 : vec3<f32> = ((vec3<f32>(x_991.x, x_991.y, x_991.w) * vec3<f32>(x_993.z, x_993.z, x_993.z)) + vec3<f32>(x_996.x, x_996.y, x_996.z));
        let x_999 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_998.x, x_998.y, x_998.z, x_999.w);
        let x_1001 : vec4<f32> = u_xlat11;
        let x_1003 : i32 = u_xlati51;
        let x_1006 : i32 = u_xlati51;
        let x_1010 : vec4<f32> = x_937.x_AdditionalLightsWorldToLights[((x_1003 + 3i) / 4i)][((x_1006 + 3i) % 4i)];
        let x_1012 : vec3<f32> = (vec3<f32>(x_1001.x, x_1001.y, x_1001.z) + vec3<f32>(x_1010.x, x_1010.y, x_1010.w));
        let x_1013 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1012.x, x_1012.y, x_1012.z, x_1013.w);
        let x_1015 : vec4<f32> = u_xlat11;
        let x_1017 : vec4<f32> = u_xlat11;
        let x_1019 : vec2<f32> = (vec2<f32>(x_1015.x, x_1015.y) / vec2<f32>(x_1017.z, x_1017.z));
        let x_1020 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1019.x, x_1019.y, x_1020.z, x_1020.w);
        let x_1022 : vec4<f32> = u_xlat11;
        let x_1025 : vec2<f32> = ((vec2<f32>(x_1022.x, x_1022.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1026 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1025.x, x_1025.y, x_1026.z, x_1026.w);
        let x_1028 : vec4<f32> = u_xlat11;
        let x_1032 : vec2<f32> = clamp(vec2<f32>(x_1028.x, x_1028.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1033 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1032.x, x_1032.y, x_1033.z, x_1033.w);
        let x_1035 : u32 = u_xlatu45;
        let x_1038 : vec4<f32> = x_937.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1035)];
        let x_1040 : vec4<f32> = u_xlat11;
        let x_1043 : u32 = u_xlatu45;
        let x_1046 : vec4<f32> = x_937.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1043)];
        let x_1048 : vec2<f32> = ((vec2<f32>(x_1038.x, x_1038.y) * vec2<f32>(x_1040.x, x_1040.y)) + vec2<f32>(x_1046.z, x_1046.w));
        let x_1049 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1048.x, x_1048.y, x_1049.z, x_1049.w);
      } else {
        let x_1053 : i32 = u_xlati35;
        u_xlatb35 = (x_1053 == 1i);
        let x_1055 : bool = u_xlatb35;
        u_xlati35 = select(0i, 1i, x_1055);
        let x_1057 : i32 = u_xlati35;
        if ((x_1057 != 0i)) {
          let x_1061 : vec3<f32> = vs_TEXCOORD1;
          let x_1063 : i32 = u_xlati51;
          let x_1066 : i32 = u_xlati51;
          let x_1070 : vec4<f32> = x_937.x_AdditionalLightsWorldToLights[((x_1063 + 1i) / 4i)][((x_1066 + 1i) % 4i)];
          u_xlat35 = (vec2<f32>(x_1061.y, x_1061.y) * vec2<f32>(x_1070.x, x_1070.y));
          let x_1073 : i32 = u_xlati51;
          let x_1075 : i32 = u_xlati51;
          let x_1078 : vec4<f32> = x_937.x_AdditionalLightsWorldToLights[(x_1073 / 4i)][(x_1075 % 4i)];
          let x_1080 : vec3<f32> = vs_TEXCOORD1;
          let x_1083 : vec2<f32> = u_xlat35;
          u_xlat35 = ((vec2<f32>(x_1078.x, x_1078.y) * vec2<f32>(x_1080.x, x_1080.x)) + x_1083);
          let x_1085 : i32 = u_xlati51;
          let x_1088 : i32 = u_xlati51;
          let x_1092 : vec4<f32> = x_937.x_AdditionalLightsWorldToLights[((x_1085 + 2i) / 4i)][((x_1088 + 2i) % 4i)];
          let x_1094 : vec3<f32> = vs_TEXCOORD1;
          let x_1097 : vec2<f32> = u_xlat35;
          u_xlat35 = ((vec2<f32>(x_1092.x, x_1092.y) * vec2<f32>(x_1094.z, x_1094.z)) + x_1097);
          let x_1099 : vec2<f32> = u_xlat35;
          let x_1100 : i32 = u_xlati51;
          let x_1103 : i32 = u_xlati51;
          let x_1107 : vec4<f32> = x_937.x_AdditionalLightsWorldToLights[((x_1100 + 3i) / 4i)][((x_1103 + 3i) % 4i)];
          u_xlat35 = (x_1099 + vec2<f32>(x_1107.x, x_1107.y));
          let x_1110 : vec2<f32> = u_xlat35;
          u_xlat35 = ((x_1110 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1113 : vec2<f32> = u_xlat35;
          u_xlat35 = fract(x_1113);
          let x_1115 : u32 = u_xlatu45;
          let x_1118 : vec4<f32> = x_937.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1115)];
          let x_1120 : vec2<f32> = u_xlat35;
          let x_1122 : u32 = u_xlatu45;
          let x_1125 : vec4<f32> = x_937.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1122)];
          let x_1127 : vec2<f32> = ((vec2<f32>(x_1118.x, x_1118.y) * x_1120) + vec2<f32>(x_1125.z, x_1125.w));
          let x_1128 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1127.x, x_1127.y, x_1128.z, x_1128.w);
        } else {
          let x_1132 : vec3<f32> = vs_TEXCOORD1;
          let x_1134 : i32 = u_xlati51;
          let x_1137 : i32 = u_xlati51;
          let x_1141 : vec4<f32> = x_937.x_AdditionalLightsWorldToLights[((x_1134 + 1i) / 4i)][((x_1137 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1132.y, x_1132.y, x_1132.y, x_1132.y) * x_1141);
          let x_1143 : i32 = u_xlati51;
          let x_1145 : i32 = u_xlati51;
          let x_1148 : vec4<f32> = x_937.x_AdditionalLightsWorldToLights[(x_1143 / 4i)][(x_1145 % 4i)];
          let x_1149 : vec3<f32> = vs_TEXCOORD1;
          let x_1152 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1148 * vec4<f32>(x_1149.x, x_1149.x, x_1149.x, x_1149.x)) + x_1152);
          let x_1154 : i32 = u_xlati51;
          let x_1157 : i32 = u_xlati51;
          let x_1161 : vec4<f32> = x_937.x_AdditionalLightsWorldToLights[((x_1154 + 2i) / 4i)][((x_1157 + 2i) % 4i)];
          let x_1162 : vec3<f32> = vs_TEXCOORD1;
          let x_1165 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1161 * vec4<f32>(x_1162.z, x_1162.z, x_1162.z, x_1162.z)) + x_1165);
          let x_1167 : vec4<f32> = u_xlat12;
          let x_1168 : i32 = u_xlati51;
          let x_1171 : i32 = u_xlati51;
          let x_1175 : vec4<f32> = x_937.x_AdditionalLightsWorldToLights[((x_1168 + 3i) / 4i)][((x_1171 + 3i) % 4i)];
          u_xlat12 = (x_1167 + x_1175);
          let x_1177 : vec4<f32> = u_xlat12;
          let x_1179 : vec4<f32> = u_xlat12;
          let x_1181 : vec3<f32> = (vec3<f32>(x_1177.x, x_1177.y, x_1177.z) / vec3<f32>(x_1179.w, x_1179.w, x_1179.w));
          let x_1182 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1181.x, x_1181.y, x_1181.z, x_1182.w);
          let x_1184 : vec4<f32> = u_xlat12;
          let x_1186 : vec4<f32> = u_xlat12;
          u_xlat35.x = dot(vec3<f32>(x_1184.x, x_1184.y, x_1184.z), vec3<f32>(x_1186.x, x_1186.y, x_1186.z));
          let x_1191 : f32 = u_xlat35.x;
          u_xlat35.x = inverseSqrt(x_1191);
          let x_1194 : vec2<f32> = u_xlat35;
          let x_1196 : vec4<f32> = u_xlat12;
          let x_1198 : vec3<f32> = (vec3<f32>(x_1194.x, x_1194.x, x_1194.x) * vec3<f32>(x_1196.x, x_1196.y, x_1196.z));
          let x_1199 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1198.x, x_1198.y, x_1198.z, x_1199.w);
          let x_1201 : vec4<f32> = u_xlat12;
          u_xlat35.x = dot(abs(vec3<f32>(x_1201.x, x_1201.y, x_1201.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1208 : f32 = u_xlat35.x;
          u_xlat35.x = max(x_1208, 0.000001f);
          let x_1213 : f32 = u_xlat35.x;
          u_xlat35.x = (1.0f / x_1213);
          let x_1217 : vec2<f32> = u_xlat35;
          let x_1219 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1217.x, x_1217.x, x_1217.x) * vec3<f32>(x_1219.z, x_1219.x, x_1219.y));
          let x_1223 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1223);
          let x_1227 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1227, 0.0f, 1.0f);
          let x_1231 : vec3<f32> = u_xlat13;
          let x_1234 : vec4<bool> = (vec4<f32>(x_1231.y, x_1231.z, x_1231.y, x_1231.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1234.x, x_1234.y);
          let x_1238 : bool = u_xlatb39.x;
          if (x_1238) {
            let x_1243 : f32 = u_xlat13.x;
            x_1239 = x_1243;
          } else {
            let x_1246 : f32 = u_xlat13.x;
            x_1239 = -(x_1246);
          }
          let x_1248 : f32 = x_1239;
          u_xlat39.x = x_1248;
          let x_1251 : bool = u_xlatb39.y;
          if (x_1251) {
            let x_1256 : f32 = u_xlat13.x;
            x_1252 = x_1256;
          } else {
            let x_1259 : f32 = u_xlat13.x;
            x_1252 = -(x_1259);
          }
          let x_1261 : f32 = x_1252;
          u_xlat39.y = x_1261;
          let x_1263 : vec4<f32> = u_xlat12;
          let x_1265 : vec2<f32> = u_xlat35;
          let x_1268 : vec2<f32> = u_xlat39;
          u_xlat35 = ((vec2<f32>(x_1263.x, x_1263.y) * vec2<f32>(x_1265.x, x_1265.x)) + x_1268);
          let x_1270 : vec2<f32> = u_xlat35;
          u_xlat35 = ((x_1270 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1273 : vec2<f32> = u_xlat35;
          u_xlat35 = clamp(x_1273, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1277 : u32 = u_xlatu45;
          let x_1280 : vec4<f32> = x_937.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1277)];
          let x_1282 : vec2<f32> = u_xlat35;
          let x_1284 : u32 = u_xlatu45;
          let x_1287 : vec4<f32> = x_937.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1284)];
          let x_1289 : vec2<f32> = ((vec2<f32>(x_1280.x, x_1280.y) * x_1282) + vec2<f32>(x_1287.z, x_1287.w));
          let x_1290 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1289.x, x_1289.y, x_1290.z, x_1290.w);
        }
      }
      let x_1297 : vec4<f32> = u_xlat11;
      let x_1300 : f32 = x_44.x_GlobalMipBias.x;
      let x_1301 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1297.x, x_1297.y), x_1300);
      u_xlat11 = x_1301;
      let x_1303 : bool = u_xlatb7.y;
      if (x_1303) {
        let x_1308 : f32 = u_xlat11.w;
        x_1304 = x_1308;
      } else {
        let x_1311 : f32 = u_xlat11.x;
        x_1304 = x_1311;
      }
      let x_1312 : f32 = x_1304;
      u_xlat35.x = x_1312;
      let x_1315 : bool = u_xlatb7.x;
      if (x_1315) {
        let x_1319 : vec4<f32> = u_xlat11;
        x_1316 = vec3<f32>(x_1319.x, x_1319.y, x_1319.z);
      } else {
        let x_1322 : vec2<f32> = u_xlat35;
        x_1316 = vec3<f32>(x_1322.x, x_1322.x, x_1322.x);
      }
      let x_1324 : vec3<f32> = x_1316;
      let x_1325 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1324.x, x_1324.y, x_1324.z, x_1325.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1331 : vec4<f32> = u_xlat11;
    let x_1333 : u32 = u_xlatu45;
    let x_1336 : vec4<f32> = x_824.x_AdditionalLightsColor[bitcast<i32>(x_1333)];
    let x_1338 : vec3<f32> = (vec3<f32>(x_1331.x, x_1331.y, x_1331.z) * vec3<f32>(x_1336.x, x_1336.y, x_1336.z));
    let x_1339 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1338.x, x_1338.y, x_1338.z, x_1339.w);
    let x_1341 : f32 = u_xlat33;
    let x_1343 : vec4<f32> = u_xlat11;
    let x_1345 : vec3<f32> = (vec3<f32>(x_1341, x_1341, x_1341) * vec3<f32>(x_1343.x, x_1343.y, x_1343.z));
    let x_1346 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1345.x, x_1345.y, x_1345.z, x_1346.w);
    let x_1348 : vec3<f32> = u_xlat2;
    let x_1349 : vec3<f32> = u_xlat10;
    u_xlat45 = dot(x_1348, x_1349);
    let x_1351 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1351, 0.0f, 1.0f);
    let x_1353 : f32 = u_xlat45;
    let x_1354 : f32 = u_xlat47;
    u_xlat45 = (x_1353 * x_1354);
    let x_1356 : f32 = u_xlat45;
    let x_1358 : vec4<f32> = u_xlat11;
    let x_1360 : vec3<f32> = (vec3<f32>(x_1356, x_1356, x_1356) * vec3<f32>(x_1358.x, x_1358.y, x_1358.z));
    let x_1361 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1360.x, x_1360.y, x_1360.z, x_1361.w);
    let x_1363 : vec3<f32> = u_xlat9;
    let x_1364 : f32 = u_xlat48;
    let x_1367 : vec3<f32> = u_xlat3;
    u_xlat9 = ((x_1363 * vec3<f32>(x_1364, x_1364, x_1364)) + x_1367);
    let x_1369 : vec3<f32> = u_xlat9;
    let x_1370 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(x_1369, x_1370);
    let x_1372 : f32 = u_xlat45;
    u_xlat45 = max(x_1372, 1.17549435e-37f);
    let x_1374 : f32 = u_xlat45;
    u_xlat45 = inverseSqrt(x_1374);
    let x_1376 : f32 = u_xlat45;
    let x_1378 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1376, x_1376, x_1376) * x_1378);
    let x_1380 : vec3<f32> = u_xlat2;
    let x_1381 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(x_1380, x_1381);
    let x_1383 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1383, 0.0f, 1.0f);
    let x_1385 : vec3<f32> = u_xlat10;
    let x_1386 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1385, x_1386);
    let x_1388 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1388, 0.0f, 1.0f);
    let x_1390 : f32 = u_xlat45;
    let x_1391 : f32 = u_xlat45;
    u_xlat45 = (x_1390 * x_1391);
    let x_1393 : f32 = u_xlat45;
    let x_1395 : f32 = u_xlat8.x;
    u_xlat45 = ((x_1393 * x_1395) + 1.000010014f);
    let x_1398 : f32 = u_xlat47;
    let x_1399 : f32 = u_xlat47;
    u_xlat47 = (x_1398 * x_1399);
    let x_1401 : f32 = u_xlat45;
    let x_1402 : f32 = u_xlat45;
    u_xlat45 = (x_1401 * x_1402);
    let x_1404 : f32 = u_xlat47;
    u_xlat47 = max(x_1404, 0.100000001f);
    let x_1406 : f32 = u_xlat45;
    let x_1407 : f32 = u_xlat47;
    u_xlat45 = (x_1406 * x_1407);
    let x_1409 : f32 = u_xlat19;
    let x_1410 : f32 = u_xlat45;
    u_xlat45 = (x_1409 * x_1410);
    let x_1412 : f32 = u_xlat46;
    let x_1413 : f32 = u_xlat45;
    u_xlat45 = (x_1412 / x_1413);
    let x_1415 : vec4<f32> = u_xlat0;
    let x_1417 : f32 = u_xlat45;
    let x_1420 : vec3<f32> = u_xlat15;
    u_xlat9 = ((vec3<f32>(x_1415.x, x_1415.y, x_1415.z) * vec3<f32>(x_1417, x_1417, x_1417)) + x_1420);
    let x_1422 : vec3<f32> = u_xlat9;
    let x_1423 : vec4<f32> = u_xlat11;
    let x_1426 : vec3<f32> = u_xlat22;
    u_xlat22 = ((x_1422 * vec3<f32>(x_1423.x, x_1423.y, x_1423.z)) + x_1426);

    continuing {
      let x_1428 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1428 + bitcast<u32>(1i));
    }
  }
  let x_1430 : vec3<f32> = u_xlat4;
  let x_1431 : vec3<f32> = u_xlat5;
  let x_1434 : vec4<f32> = u_xlat6;
  let x_1436 : vec3<f32> = ((x_1430 * vec3<f32>(x_1431.x, x_1431.x, x_1431.x)) + vec3<f32>(x_1434.x, x_1434.y, x_1434.z));
  let x_1437 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1436.x, x_1436.y, x_1436.z, x_1437.w);
  let x_1441 : vec3<f32> = u_xlat22;
  let x_1442 : vec4<f32> = u_xlat0;
  let x_1444 : vec3<f32> = (x_1441 + vec3<f32>(x_1442.x, x_1442.y, x_1442.z));
  let x_1445 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1444.x, x_1444.y, x_1444.z, x_1445.w);
  let x_1450 : f32 = x_57.x_Surface;
  u_xlatb0 = (x_1450 == 1.0f);
  let x_1452 : bool = u_xlatb0;
  if (x_1452) {
    let x_1457 : f32 = u_xlat1.x;
    x_1453 = x_1457;
  } else {
    x_1453 = 1.0f;
  }
  let x_1459 : f32 = x_1453;
  SV_Target0.w = x_1459;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD8_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}

