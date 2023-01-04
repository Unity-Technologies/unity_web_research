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

@group(1) @binding(4) var<uniform> x_464 : MainLightShadows;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_825 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat36 : f32;
  var u_xlatb38 : bool;
  var x_112 : f32;
  var u_xlatb36 : bool;
  var u_xlat38 : f32;
  var u_xlat4 : vec4<f32>;
  var x_175 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat39 : f32;
  var u_xlat13 : vec3<f32>;
  var u_xlat40 : f32;
  var u_xlat41 : f32;
  var u_xlat18 : f32;
  var u_xlat30 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat42 : f32;
  var u_xlatb7 : bool;
  var u_xlatb19 : bool;
  var u_xlat19 : f32;
  var u_xlat43 : f32;
  var u_xlat8 : vec4<f32>;
  var u_xlat44 : f32;
  var u_xlat9 : vec2<f32>;
  var u_xlat21 : vec3<f32>;
  var u_xlatu38 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu40 : u32;
  var u_xlati42 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati40 : i32;
  var u_xlat10 : vec3<f32>;
  var u_xlat11 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_1043 : f32;
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
  u_xlat3 = (-(x_145) + x_150);
  let x_153 : vec3<f32> = u_xlat3;
  let x_154 : vec3<f32> = u_xlat3;
  u_xlat38 = dot(x_153, x_154);
  let x_156 : f32 = u_xlat38;
  u_xlat38 = inverseSqrt(x_156);
  let x_158 : f32 = u_xlat38;
  let x_160 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_158, x_158, x_158) * x_160);
  let x_165 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat4.x = x_165;
  let x_168 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat4.y = x_168;
  let x_172 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat4.z = x_172;
  let x_174 : bool = u_xlatb36;
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
  u_xlat36 = dot(x_184, x_185);
  let x_187 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_187);
  let x_189 : f32 = u_xlat36;
  let x_191 : vec3<f32> = vs_TEXCOORD2;
  let x_192 : vec3<f32> = (vec3<f32>(x_189, x_189, x_189) * x_191);
  let x_193 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_192.x, x_192.y, x_192.z, x_193.w);
  let x_196 : f32 = vs_TEXCOORD1.y;
  let x_198 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat36 = (x_196 * x_198);
  let x_201 : f32 = x_44.unity_MatrixV[0i].z;
  let x_203 : f32 = vs_TEXCOORD1.x;
  let x_205 : f32 = u_xlat36;
  u_xlat36 = ((x_201 * x_203) + x_205);
  let x_208 : f32 = x_44.unity_MatrixV[2i].z;
  let x_210 : f32 = vs_TEXCOORD1.z;
  let x_212 : f32 = u_xlat36;
  u_xlat36 = ((x_208 * x_210) + x_212);
  let x_214 : f32 = u_xlat36;
  let x_217 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat36 = (x_214 + x_217);
  let x_219 : f32 = u_xlat36;
  let x_223 : f32 = x_44.x_ProjectionParams.y;
  u_xlat36 = (-(x_219) + -(x_223));
  let x_226 : f32 = u_xlat36;
  u_xlat36 = max(x_226, 0.0f);
  let x_228 : f32 = u_xlat36;
  let x_231 : f32 = x_44.unity_FogParams.x;
  u_xlat36 = (x_228 * x_231);
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
  u_xlat38 = (x_279 * x_281);
  let x_284 : f32 = u_xlat4.x;
  let x_286 : f32 = u_xlat4.x;
  let x_288 : f32 = u_xlat38;
  u_xlat38 = ((x_284 * x_286) + -(x_288));
  let x_293 : vec4<f32> = x_106.unity_SHC;
  let x_295 : f32 = u_xlat38;
  let x_298 : vec3<f32> = u_xlat7;
  let x_299 : vec3<f32> = ((vec3<f32>(x_293.x, x_293.y, x_293.z) * vec3<f32>(x_295, x_295, x_295)) + x_298);
  let x_300 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_299.x, x_299.y, x_299.z, x_300.w);
  let x_302 : vec3<f32> = u_xlat5;
  let x_303 : vec4<f32> = u_xlat6;
  u_xlat5 = (x_302 + vec3<f32>(x_303.x, x_303.y, x_303.z));
  let x_306 : vec3<f32> = u_xlat5;
  u_xlat5 = max(x_306, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_311 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_312 : vec2<f32> = vec2<f32>(x_311.x, x_311.y);
  let x_316 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_312.x, x_312.y));
  let x_317 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_316.x, x_316.y, x_317.z, x_317.w);
  let x_319 : vec4<f32> = u_xlat6;
  let x_321 : vec4<f32> = hlslcc_FragCoord;
  let x_323 : vec2<f32> = (vec2<f32>(x_319.x, x_319.y) * vec2<f32>(x_321.x, x_321.y));
  let x_324 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_323.x, x_323.y, x_324.z, x_324.w);
  let x_327 : f32 = u_xlat6.y;
  let x_330 : f32 = x_44.x_ScaleBiasRt.x;
  let x_333 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat38 = ((x_327 * x_330) + x_333);
  let x_335 : f32 = u_xlat38;
  u_xlat6.z = (-(x_335) + 1.0f);
  let x_340 : f32 = x_57.x_Metallic;
  u_xlat38 = ((-(x_340) * 0.959999979f) + 0.959999979f);
  let x_346 : f32 = u_xlat38;
  let x_349 : f32 = x_57.x_Smoothness;
  u_xlat39 = (-(x_346) + x_349);
  let x_352 : vec4<f32> = u_xlat1;
  let x_354 : f32 = u_xlat38;
  u_xlat13 = (vec3<f32>(x_352.y, x_352.z, x_352.w) * vec3<f32>(x_354, x_354, x_354));
  let x_357 : vec4<f32> = u_xlat0;
  let x_360 : vec4<f32> = x_57.x_BaseColor;
  let x_365 : vec3<f32> = ((vec3<f32>(x_357.x, x_357.y, x_357.z) * vec3<f32>(x_360.x, x_360.y, x_360.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_366 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_365.x, x_365.y, x_365.z, x_366.w);
  let x_369 : f32 = x_57.x_Metallic;
  let x_371 : f32 = x_57.x_Metallic;
  let x_373 : f32 = x_57.x_Metallic;
  let x_374 : vec3<f32> = vec3<f32>(x_369, x_371, x_373);
  let x_379 : vec4<f32> = u_xlat0;
  let x_384 : vec3<f32> = ((vec3<f32>(x_374.x, x_374.y, x_374.z) * vec3<f32>(x_379.x, x_379.y, x_379.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_385 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_384.x, x_384.y, x_384.z, x_385.w);
  let x_388 : f32 = x_57.x_Smoothness;
  u_xlat38 = (-(x_388) + 1.0f);
  let x_392 : f32 = u_xlat38;
  let x_393 : f32 = u_xlat38;
  u_xlat40 = (x_392 * x_393);
  let x_395 : f32 = u_xlat40;
  u_xlat40 = max(x_395, 0.0078125f);
  let x_399 : f32 = u_xlat40;
  let x_400 : f32 = u_xlat40;
  u_xlat41 = (x_399 * x_400);
  let x_402 : f32 = u_xlat39;
  u_xlat39 = (x_402 + 1.0f);
  let x_404 : f32 = u_xlat39;
  u_xlat39 = clamp(x_404, 0.0f, 1.0f);
  let x_407 : f32 = u_xlat40;
  u_xlat18 = ((x_407 * 4.0f) + 2.0f);
  let x_417 : vec4<f32> = u_xlat6;
  let x_420 : f32 = x_44.x_GlobalMipBias.x;
  let x_421 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_417.x, x_417.z), x_420);
  u_xlat6.x = x_421.x;
  let x_426 : f32 = u_xlat6.x;
  u_xlat30 = (x_426 + -1.0f);
  let x_431 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_432 : f32 = u_xlat30;
  u_xlat30 = ((x_431 * x_432) + 1.0f);
  let x_436 : f32 = u_xlat6.x;
  u_xlat6.x = min(x_436, 1.0f);
  let x_441 : vec4<f32> = vs_TEXCOORD6;
  let x_442 : vec2<f32> = vec2<f32>(x_441.x, x_441.y);
  let x_444 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_442.x, x_442.y, x_444);
  let x_457 : vec3<f32> = txVec0;
  let x_459 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_457.xy, x_457.z);
  u_xlat42 = x_459;
  let x_466 : f32 = x_464.x_MainLightShadowParams.x;
  u_xlat7.x = (-(x_466) + 1.0f);
  let x_470 : f32 = u_xlat42;
  let x_472 : f32 = x_464.x_MainLightShadowParams.x;
  let x_475 : f32 = u_xlat7.x;
  u_xlat42 = ((x_470 * x_472) + x_475);
  let x_479 : f32 = vs_TEXCOORD6.z;
  u_xlatb7 = (0.0f >= x_479);
  let x_483 : f32 = vs_TEXCOORD6.z;
  u_xlatb19 = (x_483 >= 1.0f);
  let x_485 : bool = u_xlatb19;
  let x_486 : bool = u_xlatb7;
  u_xlatb7 = (x_485 | x_486);
  let x_488 : bool = u_xlatb7;
  let x_489 : f32 = u_xlat42;
  u_xlat42 = select(x_489, 1.0f, x_488);
  let x_491 : vec3<f32> = vs_TEXCOORD1;
  let x_493 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat7 = (x_491 + -(x_493));
  let x_496 : vec3<f32> = u_xlat7;
  let x_497 : vec3<f32> = u_xlat7;
  u_xlat7.x = dot(x_496, x_497);
  let x_501 : f32 = u_xlat7.x;
  let x_503 : f32 = x_464.x_MainLightShadowParams.z;
  let x_506 : f32 = x_464.x_MainLightShadowParams.w;
  u_xlat7.x = ((x_501 * x_503) + x_506);
  let x_510 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_510, 0.0f, 1.0f);
  let x_514 : f32 = u_xlat42;
  u_xlat19 = (-(x_514) + 1.0f);
  let x_518 : f32 = u_xlat7.x;
  let x_519 : f32 = u_xlat19;
  let x_521 : f32 = u_xlat42;
  u_xlat42 = ((x_518 * x_519) + x_521);
  let x_523 : f32 = u_xlat30;
  let x_526 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat7 = (vec3<f32>(x_523, x_523, x_523) * vec3<f32>(x_526.x, x_526.y, x_526.z));
  let x_530 : vec3<f32> = u_xlat3;
  let x_532 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(-(x_530), vec3<f32>(x_532.x, x_532.y, x_532.z));
  let x_535 : f32 = u_xlat43;
  let x_536 : f32 = u_xlat43;
  u_xlat43 = (x_535 + x_536);
  let x_539 : vec4<f32> = u_xlat4;
  let x_541 : f32 = u_xlat43;
  let x_545 : vec3<f32> = u_xlat3;
  let x_547 : vec3<f32> = ((vec3<f32>(x_539.x, x_539.y, x_539.z) * -(vec3<f32>(x_541, x_541, x_541))) + -(x_545));
  let x_548 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_547.x, x_547.y, x_547.z, x_548.w);
  let x_550 : vec4<f32> = u_xlat4;
  let x_552 : vec3<f32> = u_xlat3;
  u_xlat43 = dot(vec3<f32>(x_550.x, x_550.y, x_550.z), x_552);
  let x_554 : f32 = u_xlat43;
  u_xlat43 = clamp(x_554, 0.0f, 1.0f);
  let x_556 : f32 = u_xlat43;
  u_xlat43 = (-(x_556) + 1.0f);
  let x_559 : f32 = u_xlat43;
  let x_560 : f32 = u_xlat43;
  u_xlat43 = (x_559 * x_560);
  let x_562 : f32 = u_xlat43;
  let x_563 : f32 = u_xlat43;
  u_xlat43 = (x_562 * x_563);
  let x_566 : f32 = u_xlat38;
  u_xlat44 = ((-(x_566) * 0.699999988f) + 1.700000048f);
  let x_572 : f32 = u_xlat38;
  let x_573 : f32 = u_xlat44;
  u_xlat38 = (x_572 * x_573);
  let x_575 : f32 = u_xlat38;
  u_xlat38 = (x_575 * 6.0f);
  let x_586 : vec4<f32> = u_xlat8;
  let x_588 : f32 = u_xlat38;
  let x_589 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_586.x, x_586.y, x_586.z), x_588);
  u_xlat8 = x_589;
  let x_591 : f32 = u_xlat8.w;
  u_xlat38 = (x_591 + -1.0f);
  let x_594 : f32 = x_106.unity_SpecCube0_HDR.w;
  let x_595 : f32 = u_xlat38;
  u_xlat38 = ((x_594 * x_595) + 1.0f);
  let x_598 : f32 = u_xlat38;
  u_xlat38 = max(x_598, 0.0f);
  let x_600 : f32 = u_xlat38;
  u_xlat38 = log2(x_600);
  let x_602 : f32 = u_xlat38;
  let x_604 : f32 = x_106.unity_SpecCube0_HDR.y;
  u_xlat38 = (x_602 * x_604);
  let x_606 : f32 = u_xlat38;
  u_xlat38 = exp2(x_606);
  let x_608 : f32 = u_xlat38;
  let x_610 : f32 = x_106.unity_SpecCube0_HDR.x;
  u_xlat38 = (x_608 * x_610);
  let x_612 : vec4<f32> = u_xlat8;
  let x_614 : f32 = u_xlat38;
  let x_616 : vec3<f32> = (vec3<f32>(x_612.x, x_612.y, x_612.z) * vec3<f32>(x_614, x_614, x_614));
  let x_617 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_616.x, x_616.y, x_616.z, x_617.w);
  let x_621 : f32 = u_xlat40;
  let x_623 : f32 = u_xlat40;
  u_xlat9 = ((vec2<f32>(x_621, x_621) * vec2<f32>(x_623, x_623)) + vec2<f32>(-1.0f, 1.0f));
  let x_629 : f32 = u_xlat9.y;
  u_xlat38 = (1.0f / x_629);
  let x_632 : vec4<f32> = u_xlat0;
  let x_635 : f32 = u_xlat39;
  u_xlat21 = (-(vec3<f32>(x_632.x, x_632.y, x_632.z)) + vec3<f32>(x_635, x_635, x_635));
  let x_638 : f32 = u_xlat43;
  let x_640 : vec3<f32> = u_xlat21;
  let x_642 : vec4<f32> = u_xlat0;
  u_xlat21 = ((vec3<f32>(x_638, x_638, x_638) * x_640) + vec3<f32>(x_642.x, x_642.y, x_642.z));
  let x_645 : f32 = u_xlat38;
  let x_647 : vec3<f32> = u_xlat21;
  u_xlat21 = (vec3<f32>(x_645, x_645, x_645) * x_647);
  let x_649 : vec4<f32> = u_xlat8;
  let x_651 : vec3<f32> = u_xlat21;
  let x_652 : vec3<f32> = (vec3<f32>(x_649.x, x_649.y, x_649.z) * x_651);
  let x_653 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_652.x, x_652.y, x_652.z, x_653.w);
  let x_655 : vec3<f32> = u_xlat5;
  let x_656 : vec3<f32> = u_xlat13;
  let x_658 : vec4<f32> = u_xlat8;
  u_xlat5 = ((x_655 * x_656) + vec3<f32>(x_658.x, x_658.y, x_658.z));
  let x_661 : f32 = u_xlat42;
  let x_664 : f32 = x_106.unity_LightData.z;
  u_xlat38 = (x_661 * x_664);
  let x_666 : vec4<f32> = u_xlat4;
  let x_669 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat39 = dot(vec3<f32>(x_666.x, x_666.y, x_666.z), vec3<f32>(x_669.x, x_669.y, x_669.z));
  let x_672 : f32 = u_xlat39;
  u_xlat39 = clamp(x_672, 0.0f, 1.0f);
  let x_674 : f32 = u_xlat38;
  let x_675 : f32 = u_xlat39;
  u_xlat38 = (x_674 * x_675);
  let x_677 : f32 = u_xlat38;
  let x_679 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_677, x_677, x_677) * x_679);
  let x_681 : vec3<f32> = u_xlat3;
  let x_683 : vec4<f32> = x_44.x_MainLightPosition;
  let x_685 : vec3<f32> = (x_681 + vec3<f32>(x_683.x, x_683.y, x_683.z));
  let x_686 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_685.x, x_685.y, x_685.z, x_686.w);
  let x_688 : vec4<f32> = u_xlat8;
  let x_690 : vec4<f32> = u_xlat8;
  u_xlat38 = dot(vec3<f32>(x_688.x, x_688.y, x_688.z), vec3<f32>(x_690.x, x_690.y, x_690.z));
  let x_693 : f32 = u_xlat38;
  u_xlat38 = max(x_693, 1.17549435e-37f);
  let x_696 : f32 = u_xlat38;
  u_xlat38 = inverseSqrt(x_696);
  let x_698 : f32 = u_xlat38;
  let x_700 : vec4<f32> = u_xlat8;
  let x_702 : vec3<f32> = (vec3<f32>(x_698, x_698, x_698) * vec3<f32>(x_700.x, x_700.y, x_700.z));
  let x_703 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_702.x, x_702.y, x_702.z, x_703.w);
  let x_705 : vec4<f32> = u_xlat4;
  let x_707 : vec4<f32> = u_xlat8;
  u_xlat38 = dot(vec3<f32>(x_705.x, x_705.y, x_705.z), vec3<f32>(x_707.x, x_707.y, x_707.z));
  let x_710 : f32 = u_xlat38;
  u_xlat38 = clamp(x_710, 0.0f, 1.0f);
  let x_713 : vec4<f32> = x_44.x_MainLightPosition;
  let x_715 : vec4<f32> = u_xlat8;
  u_xlat39 = dot(vec3<f32>(x_713.x, x_713.y, x_713.z), vec3<f32>(x_715.x, x_715.y, x_715.z));
  let x_718 : f32 = u_xlat39;
  u_xlat39 = clamp(x_718, 0.0f, 1.0f);
  let x_720 : f32 = u_xlat38;
  let x_721 : f32 = u_xlat38;
  u_xlat38 = (x_720 * x_721);
  let x_723 : f32 = u_xlat38;
  let x_725 : f32 = u_xlat9.x;
  u_xlat38 = ((x_723 * x_725) + 1.000010014f);
  let x_729 : f32 = u_xlat39;
  let x_730 : f32 = u_xlat39;
  u_xlat39 = (x_729 * x_730);
  let x_732 : f32 = u_xlat38;
  let x_733 : f32 = u_xlat38;
  u_xlat38 = (x_732 * x_733);
  let x_735 : f32 = u_xlat39;
  u_xlat39 = max(x_735, 0.100000001f);
  let x_738 : f32 = u_xlat38;
  let x_739 : f32 = u_xlat39;
  u_xlat38 = (x_738 * x_739);
  let x_741 : f32 = u_xlat18;
  let x_742 : f32 = u_xlat38;
  u_xlat38 = (x_741 * x_742);
  let x_744 : f32 = u_xlat41;
  let x_745 : f32 = u_xlat38;
  u_xlat38 = (x_744 / x_745);
  let x_747 : vec4<f32> = u_xlat0;
  let x_749 : f32 = u_xlat38;
  let x_752 : vec3<f32> = u_xlat13;
  let x_753 : vec3<f32> = ((vec3<f32>(x_747.x, x_747.y, x_747.z) * vec3<f32>(x_749, x_749, x_749)) + x_752);
  let x_754 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_753.x, x_753.y, x_753.z, x_754.w);
  let x_756 : vec3<f32> = u_xlat7;
  let x_757 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_756 * vec3<f32>(x_757.x, x_757.y, x_757.z));
  let x_761 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_763 : f32 = x_106.unity_LightData.y;
  u_xlat38 = min(x_761, x_763);
  let x_767 : f32 = u_xlat38;
  u_xlatu38 = bitcast<u32>(i32(x_767));
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_779 : u32 = u_xlatu_loop_1;
    let x_780 : u32 = u_xlatu38;
    if ((x_779 < x_780)) {
    } else {
      break;
    }
    let x_783 : u32 = u_xlatu_loop_1;
    u_xlatu40 = (x_783 >> 2u);
    let x_787 : u32 = u_xlatu_loop_1;
    u_xlati42 = bitcast<i32>((x_787 & 3u));
    let x_790 : u32 = u_xlatu40;
    let x_793 : vec4<f32> = x_106.unity_LightIndices[bitcast<i32>(x_790)];
    let x_803 : i32 = u_xlati42;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_808 : vec4<u32> = indexable[x_803];
    u_xlat40 = dot(x_793, bitcast<vec4<f32>>(x_808));
    let x_812 : f32 = u_xlat40;
    u_xlati40 = i32(x_812);
    let x_814 : vec3<f32> = vs_TEXCOORD1;
    let x_826 : i32 = u_xlati40;
    let x_828 : vec4<f32> = x_825.x_AdditionalLightsPosition[x_826];
    let x_831 : i32 = u_xlati40;
    let x_833 : vec4<f32> = x_825.x_AdditionalLightsPosition[x_831];
    u_xlat21 = ((-(x_814) * vec3<f32>(x_828.w, x_828.w, x_828.w)) + vec3<f32>(x_833.x, x_833.y, x_833.z));
    let x_836 : vec3<f32> = u_xlat21;
    let x_837 : vec3<f32> = u_xlat21;
    u_xlat42 = dot(x_836, x_837);
    let x_839 : f32 = u_xlat42;
    u_xlat42 = max(x_839, 6.10351562e-05f);
    let x_842 : f32 = u_xlat42;
    u_xlat43 = inverseSqrt(x_842);
    let x_845 : f32 = u_xlat43;
    let x_847 : vec3<f32> = u_xlat21;
    u_xlat10 = (vec3<f32>(x_845, x_845, x_845) * x_847);
    let x_849 : f32 = u_xlat42;
    u_xlat44 = (1.0f / x_849);
    let x_851 : f32 = u_xlat42;
    let x_852 : i32 = u_xlati40;
    let x_854 : f32 = x_825.x_AdditionalLightsAttenuation[x_852].x;
    u_xlat42 = (x_851 * x_854);
    let x_856 : f32 = u_xlat42;
    let x_858 : f32 = u_xlat42;
    u_xlat42 = ((-(x_856) * x_858) + 1.0f);
    let x_861 : f32 = u_xlat42;
    u_xlat42 = max(x_861, 0.0f);
    let x_863 : f32 = u_xlat42;
    let x_864 : f32 = u_xlat42;
    u_xlat42 = (x_863 * x_864);
    let x_866 : f32 = u_xlat42;
    let x_867 : f32 = u_xlat44;
    u_xlat42 = (x_866 * x_867);
    let x_869 : i32 = u_xlati40;
    let x_871 : vec4<f32> = x_825.x_AdditionalLightsSpotDir[x_869];
    let x_873 : vec3<f32> = u_xlat10;
    u_xlat44 = dot(vec3<f32>(x_871.x, x_871.y, x_871.z), x_873);
    let x_875 : f32 = u_xlat44;
    let x_876 : i32 = u_xlati40;
    let x_878 : f32 = x_825.x_AdditionalLightsAttenuation[x_876].z;
    let x_880 : i32 = u_xlati40;
    let x_882 : f32 = x_825.x_AdditionalLightsAttenuation[x_880].w;
    u_xlat44 = ((x_875 * x_878) + x_882);
    let x_884 : f32 = u_xlat44;
    u_xlat44 = clamp(x_884, 0.0f, 1.0f);
    let x_886 : f32 = u_xlat44;
    let x_887 : f32 = u_xlat44;
    u_xlat44 = (x_886 * x_887);
    let x_889 : f32 = u_xlat42;
    let x_890 : f32 = u_xlat44;
    u_xlat42 = (x_889 * x_890);
    let x_893 : f32 = u_xlat30;
    let x_895 : i32 = u_xlati40;
    let x_897 : vec4<f32> = x_825.x_AdditionalLightsColor[x_895];
    u_xlat11 = (vec3<f32>(x_893, x_893, x_893) * vec3<f32>(x_897.x, x_897.y, x_897.z));
    let x_900 : vec4<f32> = u_xlat4;
    let x_902 : vec3<f32> = u_xlat10;
    u_xlat40 = dot(vec3<f32>(x_900.x, x_900.y, x_900.z), x_902);
    let x_904 : f32 = u_xlat40;
    u_xlat40 = clamp(x_904, 0.0f, 1.0f);
    let x_906 : f32 = u_xlat40;
    let x_907 : f32 = u_xlat42;
    u_xlat40 = (x_906 * x_907);
    let x_909 : f32 = u_xlat40;
    let x_911 : vec3<f32> = u_xlat11;
    u_xlat11 = (vec3<f32>(x_909, x_909, x_909) * x_911);
    let x_913 : vec3<f32> = u_xlat21;
    let x_914 : f32 = u_xlat43;
    let x_917 : vec3<f32> = u_xlat3;
    u_xlat21 = ((x_913 * vec3<f32>(x_914, x_914, x_914)) + x_917);
    let x_919 : vec3<f32> = u_xlat21;
    let x_920 : vec3<f32> = u_xlat21;
    u_xlat40 = dot(x_919, x_920);
    let x_922 : f32 = u_xlat40;
    u_xlat40 = max(x_922, 1.17549435e-37f);
    let x_924 : f32 = u_xlat40;
    u_xlat40 = inverseSqrt(x_924);
    let x_926 : f32 = u_xlat40;
    let x_928 : vec3<f32> = u_xlat21;
    u_xlat21 = (vec3<f32>(x_926, x_926, x_926) * x_928);
    let x_930 : vec4<f32> = u_xlat4;
    let x_932 : vec3<f32> = u_xlat21;
    u_xlat40 = dot(vec3<f32>(x_930.x, x_930.y, x_930.z), x_932);
    let x_934 : f32 = u_xlat40;
    u_xlat40 = clamp(x_934, 0.0f, 1.0f);
    let x_936 : vec3<f32> = u_xlat10;
    let x_937 : vec3<f32> = u_xlat21;
    u_xlat42 = dot(x_936, x_937);
    let x_939 : f32 = u_xlat42;
    u_xlat42 = clamp(x_939, 0.0f, 1.0f);
    let x_941 : f32 = u_xlat40;
    let x_942 : f32 = u_xlat40;
    u_xlat40 = (x_941 * x_942);
    let x_944 : f32 = u_xlat40;
    let x_946 : f32 = u_xlat9.x;
    u_xlat40 = ((x_944 * x_946) + 1.000010014f);
    let x_949 : f32 = u_xlat42;
    let x_950 : f32 = u_xlat42;
    u_xlat42 = (x_949 * x_950);
    let x_952 : f32 = u_xlat40;
    let x_953 : f32 = u_xlat40;
    u_xlat40 = (x_952 * x_953);
    let x_955 : f32 = u_xlat42;
    u_xlat42 = max(x_955, 0.100000001f);
    let x_957 : f32 = u_xlat40;
    let x_958 : f32 = u_xlat42;
    u_xlat40 = (x_957 * x_958);
    let x_960 : f32 = u_xlat18;
    let x_961 : f32 = u_xlat40;
    u_xlat40 = (x_960 * x_961);
    let x_963 : f32 = u_xlat41;
    let x_964 : f32 = u_xlat40;
    u_xlat40 = (x_963 / x_964);
    let x_966 : vec4<f32> = u_xlat0;
    let x_968 : f32 = u_xlat40;
    let x_971 : vec3<f32> = u_xlat13;
    u_xlat21 = ((vec3<f32>(x_966.x, x_966.y, x_966.z) * vec3<f32>(x_968, x_968, x_968)) + x_971);
    let x_973 : vec3<f32> = u_xlat21;
    let x_974 : vec3<f32> = u_xlat11;
    let x_976 : vec4<f32> = u_xlat8;
    let x_978 : vec3<f32> = ((x_973 * x_974) + vec3<f32>(x_976.x, x_976.y, x_976.z));
    let x_979 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_978.x, x_978.y, x_978.z, x_979.w);

    continuing {
      let x_981 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_981 + bitcast<u32>(1i));
    }
  }
  let x_983 : vec3<f32> = u_xlat5;
  let x_984 : vec4<f32> = u_xlat6;
  let x_987 : vec3<f32> = u_xlat7;
  let x_988 : vec3<f32> = ((x_983 * vec3<f32>(x_984.x, x_984.x, x_984.x)) + x_987);
  let x_989 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_988.x, x_988.y, x_988.z, x_989.w);
  let x_991 : vec4<f32> = u_xlat8;
  let x_993 : vec4<f32> = u_xlat0;
  let x_995 : vec3<f32> = (vec3<f32>(x_991.x, x_991.y, x_991.z) + vec3<f32>(x_993.x, x_993.y, x_993.z));
  let x_996 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_995.x, x_995.y, x_995.z, x_996.w);
  let x_998 : vec3<f32> = u_xlat2;
  let x_1000 : vec4<f32> = x_57.x_EmissionColor;
  let x_1003 : vec4<f32> = u_xlat0;
  let x_1005 : vec3<f32> = ((x_998 * vec3<f32>(x_1000.x, x_1000.y, x_1000.z)) + vec3<f32>(x_1003.x, x_1003.y, x_1003.z));
  let x_1006 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1005.x, x_1005.y, x_1005.z, x_1006.w);
  let x_1008 : f32 = u_xlat36;
  let x_1009 : f32 = u_xlat36;
  u_xlat36 = (x_1008 * -(x_1009));
  let x_1012 : f32 = u_xlat36;
  u_xlat36 = exp2(x_1012);
  let x_1014 : vec4<f32> = u_xlat0;
  let x_1018 : vec4<f32> = x_44.unity_FogColor;
  let x_1021 : vec3<f32> = (vec3<f32>(x_1014.x, x_1014.y, x_1014.z) + -(vec3<f32>(x_1018.x, x_1018.y, x_1018.z)));
  let x_1022 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1021.x, x_1021.y, x_1021.z, x_1022.w);
  let x_1026 : f32 = u_xlat36;
  let x_1028 : vec4<f32> = u_xlat0;
  let x_1032 : vec4<f32> = x_44.unity_FogColor;
  let x_1034 : vec3<f32> = ((vec3<f32>(x_1026, x_1026, x_1026) * vec3<f32>(x_1028.x, x_1028.y, x_1028.z)) + vec3<f32>(x_1032.x, x_1032.y, x_1032.z));
  let x_1035 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1034.x, x_1034.y, x_1034.z, x_1035.w);
  let x_1040 : f32 = x_57.x_Surface;
  u_xlatb0 = (x_1040 == 1.0f);
  let x_1042 : bool = u_xlatb0;
  if (x_1042) {
    let x_1047 : f32 = u_xlat1.x;
    x_1043 = x_1047;
  } else {
    x_1043 = 1.0f;
  }
  let x_1049 : f32 = x_1043;
  SV_Target0.w = x_1049;
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

