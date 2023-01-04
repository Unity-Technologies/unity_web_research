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

type Arr_2 = array<vec4<f32>, 256u>;

type Arr_3 = array<vec4<f32>, 256u>;

type Arr_4 = array<vec4<f32>, 256u>;

type Arr_5 = array<vec4<f32>, 256u>;

type Arr_6 = array<vec4<f32>, 256u>;

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_7 = array<strided_arr, 256u>;

struct AdditionalLights {
  x_AdditionalLightsPosition : Arr_6,
  x_AdditionalLightsColor : Arr_6,
  x_AdditionalLightsAttenuation : Arr_6,
  x_AdditionalLightsSpotDir : Arr_6,
  x_AdditionalLightsOcclusionProbes : Arr_6,
  x_AdditionalLightsLayerMasks : Arr_7,
}

var<private> gl_FragCoord : vec4<f32>;

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(7) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

@group(0) @binding(2) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_EmissionMap : sampler;

@group(0) @binding(5) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_106 : UnityPerDraw;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_448 : MainLightShadows;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_802 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat36 : f32;
  var u_xlatb38 : bool;
  var x_112 : f32;
  var u_xlatb36 : bool;
  var u_xlat38 : f32;
  var u_xlat4 : vec3<f32>;
  var x_171 : f32;
  var x_183 : f32;
  var x_195 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlat39 : f32;
  var u_xlat40 : f32;
  var u_xlat41 : f32;
  var u_xlat18 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat30 : f32;
  var u_xlat42 : f32;
  var u_xlatb42 : bool;
  var u_xlatb7 : bool;
  var u_xlat8 : vec4<f32>;
  var u_xlat43 : f32;
  var u_xlat9 : vec2<f32>;
  var u_xlat21 : vec3<f32>;
  var u_xlatu36 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu39 : u32;
  var u_xlati30 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati39 : i32;
  var u_xlat10 : vec3<f32>;
  var u_xlat11 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_993 : f32;
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
  let x_84 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_83.x, x_83.y, x_84.z, x_84.w);
  let x_93 : vec4<f32> = u_xlat3;
  let x_96 : f32 = x_44.x_GlobalMipBias.x;
  let x_97 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_93.x, x_93.y), x_96);
  u_xlat36 = x_97.w;
  let x_108 : f32 = x_106.unity_LODFade.x;
  u_xlatb38 = (x_108 >= 0.0f);
  let x_111 : bool = u_xlatb38;
  if (x_111) {
    let x_115 : f32 = u_xlat36;
    x_112 = abs(x_115);
  } else {
    let x_118 : f32 = u_xlat36;
    x_112 = -(abs(x_118));
  }
  let x_121 : f32 = x_112;
  u_xlat36 = x_121;
  let x_122 : f32 = u_xlat36;
  let x_125 : f32 = x_106.unity_LODFade.x;
  u_xlat36 = (-(x_122) + x_125);
  let x_128 : f32 = u_xlat36;
  u_xlatb36 = (x_128 < 0.0f);
  let x_130 : bool = u_xlatb36;
  if (((select(0i, 1i, x_130) * -1i) != 0i)) {
    discard;
  }
  let x_141 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb36 = (x_141 == 0.0f);
  let x_145 : vec3<f32> = vs_TEXCOORD1;
  let x_150 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_151 : vec3<f32> = (-(x_145) + x_150);
  let x_152 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_151.x, x_151.y, x_151.z, x_152.w);
  let x_155 : vec4<f32> = u_xlat3;
  let x_157 : vec4<f32> = u_xlat3;
  u_xlat38 = dot(vec3<f32>(x_155.x, x_155.y, x_155.z), vec3<f32>(x_157.x, x_157.y, x_157.z));
  let x_160 : f32 = u_xlat38;
  u_xlat38 = inverseSqrt(x_160);
  let x_162 : f32 = u_xlat38;
  let x_164 : vec4<f32> = u_xlat3;
  let x_166 : vec3<f32> = (vec3<f32>(x_162, x_162, x_162) * vec3<f32>(x_164.x, x_164.y, x_164.z));
  let x_167 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_166.x, x_166.y, x_166.z, x_167.w);
  let x_170 : bool = u_xlatb36;
  if (x_170) {
    let x_175 : f32 = u_xlat3.x;
    x_171 = x_175;
  } else {
    let x_179 : f32 = x_44.unity_MatrixV[0i].z;
    x_171 = x_179;
  }
  let x_180 : f32 = x_171;
  u_xlat4.x = x_180;
  let x_182 : bool = u_xlatb36;
  if (x_182) {
    let x_188 : f32 = u_xlat3.y;
    x_183 = x_188;
  } else {
    let x_191 : f32 = x_44.unity_MatrixV[1i].z;
    x_183 = x_191;
  }
  let x_192 : f32 = x_183;
  u_xlat4.y = x_192;
  let x_194 : bool = u_xlatb36;
  if (x_194) {
    let x_199 : f32 = u_xlat3.z;
    x_195 = x_199;
  } else {
    let x_202 : f32 = x_44.unity_MatrixV[2i].z;
    x_195 = x_202;
  }
  let x_203 : f32 = x_195;
  u_xlat4.z = x_203;
  let x_206 : vec3<f32> = vs_TEXCOORD2;
  let x_207 : vec3<f32> = vs_TEXCOORD2;
  u_xlat36 = dot(x_206, x_207);
  let x_209 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_209);
  let x_211 : f32 = u_xlat36;
  let x_213 : vec3<f32> = vs_TEXCOORD2;
  let x_214 : vec3<f32> = (vec3<f32>(x_211, x_211, x_211) * x_213);
  let x_215 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_214.x, x_214.y, x_214.z, x_215.w);
  u_xlat3.w = 1.0f;
  let x_221 : vec4<f32> = x_106.unity_SHAr;
  let x_222 : vec4<f32> = u_xlat3;
  u_xlat5.x = dot(x_221, x_222);
  let x_227 : vec4<f32> = x_106.unity_SHAg;
  let x_228 : vec4<f32> = u_xlat3;
  u_xlat5.y = dot(x_227, x_228);
  let x_233 : vec4<f32> = x_106.unity_SHAb;
  let x_234 : vec4<f32> = u_xlat3;
  u_xlat5.z = dot(x_233, x_234);
  let x_238 : vec4<f32> = u_xlat3;
  let x_240 : vec4<f32> = u_xlat3;
  u_xlat6 = (vec4<f32>(x_238.y, x_238.z, x_238.z, x_238.x) * vec4<f32>(x_240.x, x_240.y, x_240.z, x_240.z));
  let x_246 : vec4<f32> = x_106.unity_SHBr;
  let x_247 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_246, x_247);
  let x_252 : vec4<f32> = x_106.unity_SHBg;
  let x_253 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_252, x_253);
  let x_258 : vec4<f32> = x_106.unity_SHBb;
  let x_259 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_258, x_259);
  let x_263 : f32 = u_xlat3.y;
  let x_265 : f32 = u_xlat3.y;
  u_xlat36 = (x_263 * x_265);
  let x_268 : f32 = u_xlat3.x;
  let x_270 : f32 = u_xlat3.x;
  let x_272 : f32 = u_xlat36;
  u_xlat36 = ((x_268 * x_270) + -(x_272));
  let x_277 : vec4<f32> = x_106.unity_SHC;
  let x_279 : f32 = u_xlat36;
  let x_282 : vec3<f32> = u_xlat7;
  let x_283 : vec3<f32> = ((vec3<f32>(x_277.x, x_277.y, x_277.z) * vec3<f32>(x_279, x_279, x_279)) + x_282);
  let x_284 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_283.x, x_283.y, x_283.z, x_284.w);
  let x_286 : vec3<f32> = u_xlat5;
  let x_287 : vec4<f32> = u_xlat6;
  u_xlat5 = (x_286 + vec3<f32>(x_287.x, x_287.y, x_287.z));
  let x_290 : vec3<f32> = u_xlat5;
  u_xlat5 = max(x_290, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_295 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_296 : vec2<f32> = vec2<f32>(x_295.x, x_295.y);
  let x_300 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_296.x, x_296.y));
  let x_301 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_300.x, x_300.y, x_301.z, x_301.w);
  let x_303 : vec4<f32> = u_xlat6;
  let x_305 : vec4<f32> = hlslcc_FragCoord;
  let x_307 : vec2<f32> = (vec2<f32>(x_303.x, x_303.y) * vec2<f32>(x_305.x, x_305.y));
  let x_308 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_307.x, x_307.y, x_308.z, x_308.w);
  let x_311 : f32 = u_xlat6.y;
  let x_314 : f32 = x_44.x_ScaleBiasRt.x;
  let x_317 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat36 = ((x_311 * x_314) + x_317);
  let x_319 : f32 = u_xlat36;
  u_xlat6.z = (-(x_319) + 1.0f);
  let x_324 : f32 = x_57.x_Metallic;
  u_xlat36 = ((-(x_324) * 0.959999979f) + 0.959999979f);
  let x_329 : f32 = u_xlat36;
  let x_332 : f32 = x_57.x_Smoothness;
  u_xlat38 = (-(x_329) + x_332);
  let x_335 : f32 = u_xlat36;
  let x_337 : vec4<f32> = u_xlat1;
  u_xlat13 = (vec3<f32>(x_335, x_335, x_335) * vec3<f32>(x_337.y, x_337.z, x_337.w));
  let x_340 : vec4<f32> = u_xlat0;
  let x_343 : vec4<f32> = x_57.x_BaseColor;
  let x_348 : vec3<f32> = ((vec3<f32>(x_340.x, x_340.y, x_340.z) * vec3<f32>(x_343.x, x_343.y, x_343.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_349 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_348.x, x_348.y, x_348.z, x_349.w);
  let x_352 : f32 = x_57.x_Metallic;
  let x_354 : f32 = x_57.x_Metallic;
  let x_356 : f32 = x_57.x_Metallic;
  let x_357 : vec3<f32> = vec3<f32>(x_352, x_354, x_356);
  let x_362 : vec4<f32> = u_xlat0;
  let x_367 : vec3<f32> = ((vec3<f32>(x_357.x, x_357.y, x_357.z) * vec3<f32>(x_362.x, x_362.y, x_362.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_368 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_367.x, x_367.y, x_367.z, x_368.w);
  let x_371 : f32 = x_57.x_Smoothness;
  u_xlat36 = (-(x_371) + 1.0f);
  let x_375 : f32 = u_xlat36;
  let x_376 : f32 = u_xlat36;
  u_xlat39 = (x_375 * x_376);
  let x_378 : f32 = u_xlat39;
  u_xlat39 = max(x_378, 0.0078125f);
  let x_382 : f32 = u_xlat39;
  let x_383 : f32 = u_xlat39;
  u_xlat40 = (x_382 * x_383);
  let x_385 : f32 = u_xlat38;
  u_xlat38 = (x_385 + 1.0f);
  let x_387 : f32 = u_xlat38;
  u_xlat38 = clamp(x_387, 0.0f, 1.0f);
  let x_390 : f32 = u_xlat39;
  u_xlat41 = ((x_390 * 4.0f) + 2.0f);
  let x_400 : vec4<f32> = u_xlat6;
  let x_403 : f32 = x_44.x_GlobalMipBias.x;
  let x_404 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_400.x, x_400.z), x_403);
  u_xlat6.x = x_404.x;
  let x_409 : f32 = u_xlat6.x;
  u_xlat18 = (x_409 + -1.0f);
  let x_414 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_415 : f32 = u_xlat18;
  u_xlat18 = ((x_414 * x_415) + 1.0f);
  let x_419 : f32 = u_xlat6.x;
  u_xlat6.x = min(x_419, 1.0f);
  let x_424 : vec4<f32> = vs_TEXCOORD6;
  let x_425 : vec2<f32> = vec2<f32>(x_424.x, x_424.y);
  let x_427 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_425.x, x_425.y, x_427);
  let x_440 : vec3<f32> = txVec0;
  let x_442 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_440.xy, x_440.z);
  u_xlat30 = x_442;
  let x_450 : f32 = x_448.x_MainLightShadowParams.x;
  u_xlat42 = (-(x_450) + 1.0f);
  let x_453 : f32 = u_xlat30;
  let x_455 : f32 = x_448.x_MainLightShadowParams.x;
  let x_457 : f32 = u_xlat42;
  u_xlat30 = ((x_453 * x_455) + x_457);
  let x_461 : f32 = vs_TEXCOORD6.z;
  u_xlatb42 = (0.0f >= x_461);
  let x_465 : f32 = vs_TEXCOORD6.z;
  u_xlatb7 = (x_465 >= 1.0f);
  let x_467 : bool = u_xlatb42;
  let x_468 : bool = u_xlatb7;
  u_xlatb42 = (x_467 | x_468);
  let x_470 : bool = u_xlatb42;
  let x_471 : f32 = u_xlat30;
  u_xlat30 = select(x_471, 1.0f, x_470);
  let x_473 : vec3<f32> = vs_TEXCOORD1;
  let x_475 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat7 = (x_473 + -(x_475));
  let x_478 : vec3<f32> = u_xlat7;
  let x_479 : vec3<f32> = u_xlat7;
  u_xlat42 = dot(x_478, x_479);
  let x_481 : f32 = u_xlat42;
  let x_483 : f32 = x_448.x_MainLightShadowParams.z;
  let x_486 : f32 = x_448.x_MainLightShadowParams.w;
  u_xlat42 = ((x_481 * x_483) + x_486);
  let x_488 : f32 = u_xlat42;
  u_xlat42 = clamp(x_488, 0.0f, 1.0f);
  let x_490 : f32 = u_xlat30;
  u_xlat7.x = (-(x_490) + 1.0f);
  let x_494 : f32 = u_xlat42;
  let x_496 : f32 = u_xlat7.x;
  let x_498 : f32 = u_xlat30;
  u_xlat30 = ((x_494 * x_496) + x_498);
  let x_500 : f32 = u_xlat18;
  let x_504 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat7 = (vec3<f32>(x_500, x_500, x_500) * vec3<f32>(x_504.x, x_504.y, x_504.z));
  let x_507 : vec3<f32> = u_xlat4;
  let x_509 : vec4<f32> = u_xlat3;
  u_xlat42 = dot(-(x_507), vec3<f32>(x_509.x, x_509.y, x_509.z));
  let x_512 : f32 = u_xlat42;
  let x_513 : f32 = u_xlat42;
  u_xlat42 = (x_512 + x_513);
  let x_516 : vec4<f32> = u_xlat3;
  let x_518 : f32 = u_xlat42;
  let x_522 : vec3<f32> = u_xlat4;
  let x_524 : vec3<f32> = ((vec3<f32>(x_516.x, x_516.y, x_516.z) * -(vec3<f32>(x_518, x_518, x_518))) + -(x_522));
  let x_525 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_524.x, x_524.y, x_524.z, x_525.w);
  let x_527 : vec4<f32> = u_xlat3;
  let x_529 : vec3<f32> = u_xlat4;
  u_xlat42 = dot(vec3<f32>(x_527.x, x_527.y, x_527.z), x_529);
  let x_531 : f32 = u_xlat42;
  u_xlat42 = clamp(x_531, 0.0f, 1.0f);
  let x_533 : f32 = u_xlat42;
  u_xlat42 = (-(x_533) + 1.0f);
  let x_536 : f32 = u_xlat42;
  let x_537 : f32 = u_xlat42;
  u_xlat42 = (x_536 * x_537);
  let x_539 : f32 = u_xlat42;
  let x_540 : f32 = u_xlat42;
  u_xlat42 = (x_539 * x_540);
  let x_543 : f32 = u_xlat36;
  u_xlat43 = ((-(x_543) * 0.699999988f) + 1.700000048f);
  let x_549 : f32 = u_xlat36;
  let x_550 : f32 = u_xlat43;
  u_xlat36 = (x_549 * x_550);
  let x_552 : f32 = u_xlat36;
  u_xlat36 = (x_552 * 6.0f);
  let x_563 : vec4<f32> = u_xlat8;
  let x_565 : f32 = u_xlat36;
  let x_566 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_563.x, x_563.y, x_563.z), x_565);
  u_xlat8 = x_566;
  let x_568 : f32 = u_xlat8.w;
  u_xlat36 = (x_568 + -1.0f);
  let x_571 : f32 = x_106.unity_SpecCube0_HDR.w;
  let x_572 : f32 = u_xlat36;
  u_xlat36 = ((x_571 * x_572) + 1.0f);
  let x_575 : f32 = u_xlat36;
  u_xlat36 = max(x_575, 0.0f);
  let x_577 : f32 = u_xlat36;
  u_xlat36 = log2(x_577);
  let x_579 : f32 = u_xlat36;
  let x_581 : f32 = x_106.unity_SpecCube0_HDR.y;
  u_xlat36 = (x_579 * x_581);
  let x_583 : f32 = u_xlat36;
  u_xlat36 = exp2(x_583);
  let x_585 : f32 = u_xlat36;
  let x_587 : f32 = x_106.unity_SpecCube0_HDR.x;
  u_xlat36 = (x_585 * x_587);
  let x_589 : vec4<f32> = u_xlat8;
  let x_591 : f32 = u_xlat36;
  let x_593 : vec3<f32> = (vec3<f32>(x_589.x, x_589.y, x_589.z) * vec3<f32>(x_591, x_591, x_591));
  let x_594 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_593.x, x_593.y, x_593.z, x_594.w);
  let x_598 : f32 = u_xlat39;
  let x_600 : f32 = u_xlat39;
  u_xlat9 = ((vec2<f32>(x_598, x_598) * vec2<f32>(x_600, x_600)) + vec2<f32>(-1.0f, 1.0f));
  let x_606 : f32 = u_xlat9.y;
  u_xlat36 = (1.0f / x_606);
  let x_609 : vec4<f32> = u_xlat0;
  let x_612 : f32 = u_xlat38;
  u_xlat21 = (-(vec3<f32>(x_609.x, x_609.y, x_609.z)) + vec3<f32>(x_612, x_612, x_612));
  let x_615 : f32 = u_xlat42;
  let x_617 : vec3<f32> = u_xlat21;
  let x_619 : vec4<f32> = u_xlat0;
  u_xlat21 = ((vec3<f32>(x_615, x_615, x_615) * x_617) + vec3<f32>(x_619.x, x_619.y, x_619.z));
  let x_622 : f32 = u_xlat36;
  let x_624 : vec3<f32> = u_xlat21;
  u_xlat21 = (vec3<f32>(x_622, x_622, x_622) * x_624);
  let x_626 : vec4<f32> = u_xlat8;
  let x_628 : vec3<f32> = u_xlat21;
  let x_629 : vec3<f32> = (vec3<f32>(x_626.x, x_626.y, x_626.z) * x_628);
  let x_630 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_629.x, x_629.y, x_629.z, x_630.w);
  let x_632 : vec3<f32> = u_xlat5;
  let x_633 : vec3<f32> = u_xlat13;
  let x_635 : vec4<f32> = u_xlat8;
  u_xlat5 = ((x_632 * x_633) + vec3<f32>(x_635.x, x_635.y, x_635.z));
  let x_638 : f32 = u_xlat30;
  let x_641 : f32 = x_106.unity_LightData.z;
  u_xlat36 = (x_638 * x_641);
  let x_643 : vec4<f32> = u_xlat3;
  let x_646 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat38 = dot(vec3<f32>(x_643.x, x_643.y, x_643.z), vec3<f32>(x_646.x, x_646.y, x_646.z));
  let x_649 : f32 = u_xlat38;
  u_xlat38 = clamp(x_649, 0.0f, 1.0f);
  let x_651 : f32 = u_xlat36;
  let x_652 : f32 = u_xlat38;
  u_xlat36 = (x_651 * x_652);
  let x_654 : f32 = u_xlat36;
  let x_656 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_654, x_654, x_654) * x_656);
  let x_658 : vec3<f32> = u_xlat4;
  let x_660 : vec4<f32> = x_44.x_MainLightPosition;
  let x_662 : vec3<f32> = (x_658 + vec3<f32>(x_660.x, x_660.y, x_660.z));
  let x_663 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_662.x, x_662.y, x_662.z, x_663.w);
  let x_665 : vec4<f32> = u_xlat8;
  let x_667 : vec4<f32> = u_xlat8;
  u_xlat36 = dot(vec3<f32>(x_665.x, x_665.y, x_665.z), vec3<f32>(x_667.x, x_667.y, x_667.z));
  let x_670 : f32 = u_xlat36;
  u_xlat36 = max(x_670, 1.17549435e-37f);
  let x_673 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_673);
  let x_675 : f32 = u_xlat36;
  let x_677 : vec4<f32> = u_xlat8;
  let x_679 : vec3<f32> = (vec3<f32>(x_675, x_675, x_675) * vec3<f32>(x_677.x, x_677.y, x_677.z));
  let x_680 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_679.x, x_679.y, x_679.z, x_680.w);
  let x_682 : vec4<f32> = u_xlat3;
  let x_684 : vec4<f32> = u_xlat8;
  u_xlat36 = dot(vec3<f32>(x_682.x, x_682.y, x_682.z), vec3<f32>(x_684.x, x_684.y, x_684.z));
  let x_687 : f32 = u_xlat36;
  u_xlat36 = clamp(x_687, 0.0f, 1.0f);
  let x_690 : vec4<f32> = x_44.x_MainLightPosition;
  let x_692 : vec4<f32> = u_xlat8;
  u_xlat38 = dot(vec3<f32>(x_690.x, x_690.y, x_690.z), vec3<f32>(x_692.x, x_692.y, x_692.z));
  let x_695 : f32 = u_xlat38;
  u_xlat38 = clamp(x_695, 0.0f, 1.0f);
  let x_697 : f32 = u_xlat36;
  let x_698 : f32 = u_xlat36;
  u_xlat36 = (x_697 * x_698);
  let x_700 : f32 = u_xlat36;
  let x_702 : f32 = u_xlat9.x;
  u_xlat36 = ((x_700 * x_702) + 1.000010014f);
  let x_706 : f32 = u_xlat38;
  let x_707 : f32 = u_xlat38;
  u_xlat38 = (x_706 * x_707);
  let x_709 : f32 = u_xlat36;
  let x_710 : f32 = u_xlat36;
  u_xlat36 = (x_709 * x_710);
  let x_712 : f32 = u_xlat38;
  u_xlat38 = max(x_712, 0.100000001f);
  let x_715 : f32 = u_xlat36;
  let x_716 : f32 = u_xlat38;
  u_xlat36 = (x_715 * x_716);
  let x_718 : f32 = u_xlat41;
  let x_719 : f32 = u_xlat36;
  u_xlat36 = (x_718 * x_719);
  let x_721 : f32 = u_xlat40;
  let x_722 : f32 = u_xlat36;
  u_xlat36 = (x_721 / x_722);
  let x_724 : vec4<f32> = u_xlat0;
  let x_726 : f32 = u_xlat36;
  let x_729 : vec3<f32> = u_xlat13;
  let x_730 : vec3<f32> = ((vec3<f32>(x_724.x, x_724.y, x_724.z) * vec3<f32>(x_726, x_726, x_726)) + x_729);
  let x_731 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_730.x, x_730.y, x_730.z, x_731.w);
  let x_733 : vec3<f32> = u_xlat7;
  let x_734 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_733 * vec3<f32>(x_734.x, x_734.y, x_734.z));
  let x_738 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_740 : f32 = x_106.unity_LightData.y;
  u_xlat36 = min(x_738, x_740);
  let x_744 : f32 = u_xlat36;
  u_xlatu36 = bitcast<u32>(i32(x_744));
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_756 : u32 = u_xlatu_loop_1;
    let x_757 : u32 = u_xlatu36;
    if ((x_756 < x_757)) {
    } else {
      break;
    }
    let x_760 : u32 = u_xlatu_loop_1;
    u_xlatu39 = (x_760 >> 2u);
    let x_764 : u32 = u_xlatu_loop_1;
    u_xlati30 = bitcast<i32>((x_764 & 3u));
    let x_767 : u32 = u_xlatu39;
    let x_770 : vec4<f32> = x_106.unity_LightIndices[bitcast<i32>(x_767)];
    let x_780 : i32 = u_xlati30;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_785 : vec4<u32> = indexable[x_780];
    u_xlat39 = dot(x_770, bitcast<vec4<f32>>(x_785));
    let x_789 : f32 = u_xlat39;
    u_xlati39 = i32(x_789);
    let x_791 : vec3<f32> = vs_TEXCOORD1;
    let x_803 : i32 = u_xlati39;
    let x_805 : vec4<f32> = x_802.x_AdditionalLightsPosition[x_803];
    let x_808 : i32 = u_xlati39;
    let x_810 : vec4<f32> = x_802.x_AdditionalLightsPosition[x_808];
    u_xlat21 = ((-(x_791) * vec3<f32>(x_805.w, x_805.w, x_805.w)) + vec3<f32>(x_810.x, x_810.y, x_810.z));
    let x_813 : vec3<f32> = u_xlat21;
    let x_814 : vec3<f32> = u_xlat21;
    u_xlat30 = dot(x_813, x_814);
    let x_816 : f32 = u_xlat30;
    u_xlat30 = max(x_816, 6.10351562e-05f);
    let x_819 : f32 = u_xlat30;
    u_xlat42 = inverseSqrt(x_819);
    let x_822 : f32 = u_xlat42;
    let x_824 : vec3<f32> = u_xlat21;
    u_xlat10 = (vec3<f32>(x_822, x_822, x_822) * x_824);
    let x_826 : f32 = u_xlat30;
    u_xlat43 = (1.0f / x_826);
    let x_828 : f32 = u_xlat30;
    let x_829 : i32 = u_xlati39;
    let x_831 : f32 = x_802.x_AdditionalLightsAttenuation[x_829].x;
    u_xlat30 = (x_828 * x_831);
    let x_833 : f32 = u_xlat30;
    let x_835 : f32 = u_xlat30;
    u_xlat30 = ((-(x_833) * x_835) + 1.0f);
    let x_838 : f32 = u_xlat30;
    u_xlat30 = max(x_838, 0.0f);
    let x_840 : f32 = u_xlat30;
    let x_841 : f32 = u_xlat30;
    u_xlat30 = (x_840 * x_841);
    let x_843 : f32 = u_xlat30;
    let x_844 : f32 = u_xlat43;
    u_xlat30 = (x_843 * x_844);
    let x_846 : i32 = u_xlati39;
    let x_848 : vec4<f32> = x_802.x_AdditionalLightsSpotDir[x_846];
    let x_850 : vec3<f32> = u_xlat10;
    u_xlat43 = dot(vec3<f32>(x_848.x, x_848.y, x_848.z), x_850);
    let x_852 : f32 = u_xlat43;
    let x_853 : i32 = u_xlati39;
    let x_855 : f32 = x_802.x_AdditionalLightsAttenuation[x_853].z;
    let x_857 : i32 = u_xlati39;
    let x_859 : f32 = x_802.x_AdditionalLightsAttenuation[x_857].w;
    u_xlat43 = ((x_852 * x_855) + x_859);
    let x_861 : f32 = u_xlat43;
    u_xlat43 = clamp(x_861, 0.0f, 1.0f);
    let x_863 : f32 = u_xlat43;
    let x_864 : f32 = u_xlat43;
    u_xlat43 = (x_863 * x_864);
    let x_866 : f32 = u_xlat30;
    let x_867 : f32 = u_xlat43;
    u_xlat30 = (x_866 * x_867);
    let x_870 : f32 = u_xlat18;
    let x_872 : i32 = u_xlati39;
    let x_874 : vec4<f32> = x_802.x_AdditionalLightsColor[x_872];
    u_xlat11 = (vec3<f32>(x_870, x_870, x_870) * vec3<f32>(x_874.x, x_874.y, x_874.z));
    let x_877 : vec4<f32> = u_xlat3;
    let x_879 : vec3<f32> = u_xlat10;
    u_xlat39 = dot(vec3<f32>(x_877.x, x_877.y, x_877.z), x_879);
    let x_881 : f32 = u_xlat39;
    u_xlat39 = clamp(x_881, 0.0f, 1.0f);
    let x_883 : f32 = u_xlat39;
    let x_884 : f32 = u_xlat30;
    u_xlat39 = (x_883 * x_884);
    let x_886 : f32 = u_xlat39;
    let x_888 : vec3<f32> = u_xlat11;
    u_xlat11 = (vec3<f32>(x_886, x_886, x_886) * x_888);
    let x_890 : vec3<f32> = u_xlat21;
    let x_891 : f32 = u_xlat42;
    let x_894 : vec3<f32> = u_xlat4;
    u_xlat21 = ((x_890 * vec3<f32>(x_891, x_891, x_891)) + x_894);
    let x_896 : vec3<f32> = u_xlat21;
    let x_897 : vec3<f32> = u_xlat21;
    u_xlat39 = dot(x_896, x_897);
    let x_899 : f32 = u_xlat39;
    u_xlat39 = max(x_899, 1.17549435e-37f);
    let x_901 : f32 = u_xlat39;
    u_xlat39 = inverseSqrt(x_901);
    let x_903 : f32 = u_xlat39;
    let x_905 : vec3<f32> = u_xlat21;
    u_xlat21 = (vec3<f32>(x_903, x_903, x_903) * x_905);
    let x_907 : vec4<f32> = u_xlat3;
    let x_909 : vec3<f32> = u_xlat21;
    u_xlat39 = dot(vec3<f32>(x_907.x, x_907.y, x_907.z), x_909);
    let x_911 : f32 = u_xlat39;
    u_xlat39 = clamp(x_911, 0.0f, 1.0f);
    let x_913 : vec3<f32> = u_xlat10;
    let x_914 : vec3<f32> = u_xlat21;
    u_xlat30 = dot(x_913, x_914);
    let x_916 : f32 = u_xlat30;
    u_xlat30 = clamp(x_916, 0.0f, 1.0f);
    let x_918 : f32 = u_xlat39;
    let x_919 : f32 = u_xlat39;
    u_xlat39 = (x_918 * x_919);
    let x_921 : f32 = u_xlat39;
    let x_923 : f32 = u_xlat9.x;
    u_xlat39 = ((x_921 * x_923) + 1.000010014f);
    let x_926 : f32 = u_xlat30;
    let x_927 : f32 = u_xlat30;
    u_xlat30 = (x_926 * x_927);
    let x_929 : f32 = u_xlat39;
    let x_930 : f32 = u_xlat39;
    u_xlat39 = (x_929 * x_930);
    let x_932 : f32 = u_xlat30;
    u_xlat30 = max(x_932, 0.100000001f);
    let x_934 : f32 = u_xlat39;
    let x_935 : f32 = u_xlat30;
    u_xlat39 = (x_934 * x_935);
    let x_937 : f32 = u_xlat41;
    let x_938 : f32 = u_xlat39;
    u_xlat39 = (x_937 * x_938);
    let x_940 : f32 = u_xlat40;
    let x_941 : f32 = u_xlat39;
    u_xlat39 = (x_940 / x_941);
    let x_943 : vec4<f32> = u_xlat0;
    let x_945 : f32 = u_xlat39;
    let x_948 : vec3<f32> = u_xlat13;
    u_xlat21 = ((vec3<f32>(x_943.x, x_943.y, x_943.z) * vec3<f32>(x_945, x_945, x_945)) + x_948);
    let x_950 : vec3<f32> = u_xlat21;
    let x_951 : vec3<f32> = u_xlat11;
    let x_953 : vec4<f32> = u_xlat8;
    let x_955 : vec3<f32> = ((x_950 * x_951) + vec3<f32>(x_953.x, x_953.y, x_953.z));
    let x_956 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_955.x, x_955.y, x_955.z, x_956.w);

    continuing {
      let x_958 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_958 + bitcast<u32>(1i));
    }
  }
  let x_960 : vec3<f32> = u_xlat5;
  let x_961 : vec4<f32> = u_xlat6;
  let x_964 : vec3<f32> = u_xlat7;
  let x_965 : vec3<f32> = ((x_960 * vec3<f32>(x_961.x, x_961.x, x_961.x)) + x_964);
  let x_966 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_965.x, x_965.y, x_965.z, x_966.w);
  let x_968 : vec4<f32> = u_xlat8;
  let x_970 : vec4<f32> = u_xlat0;
  let x_972 : vec3<f32> = (vec3<f32>(x_968.x, x_968.y, x_968.z) + vec3<f32>(x_970.x, x_970.y, x_970.z));
  let x_973 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_972.x, x_972.y, x_972.z, x_973.w);
  let x_977 : vec3<f32> = u_xlat2;
  let x_979 : vec4<f32> = x_57.x_EmissionColor;
  let x_982 : vec4<f32> = u_xlat0;
  let x_984 : vec3<f32> = ((x_977 * vec3<f32>(x_979.x, x_979.y, x_979.z)) + vec3<f32>(x_982.x, x_982.y, x_982.z));
  let x_985 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_984.x, x_984.y, x_984.z, x_985.w);
  let x_990 : f32 = x_57.x_Surface;
  u_xlatb0 = (x_990 == 1.0f);
  let x_992 : bool = u_xlatb0;
  if (x_992) {
    let x_997 : f32 = u_xlat1.x;
    x_993 = x_997;
  } else {
    x_993 = 1.0f;
  }
  let x_999 : f32 = x_993;
  SV_Target0.w = x_999;
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

