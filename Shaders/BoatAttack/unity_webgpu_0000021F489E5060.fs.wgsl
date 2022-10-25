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

type Arr_1 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr_1,
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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

@group(0) @binding(3) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_EmissionMap : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

@group(0) @binding(4) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_345 : MainLightShadows;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_474 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_705 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlatb36 : bool;
  var u_xlat3 : vec3<f32>;
  var u_xlat38 : f32;
  var u_xlat4 : vec3<f32>;
  var x_120 : vec3<f32>;
  var u_xlat36 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat39 : f32;
  var u_xlat13 : vec3<f32>;
  var u_xlat40 : f32;
  var u_xlat41 : f32;
  var u_xlat18 : f32;
  var u_xlat30 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat42 : f32;
  var u_xlat7 : vec3<f32>;
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
  var x_921 : f32;
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
  let x_81 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb36 = (x_81 == 0.0f);
  let x_87 : vec3<f32> = vs_TEXCOORD1;
  let x_92 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat3 = (-(x_87) + x_92);
  let x_96 : vec3<f32> = u_xlat3;
  let x_97 : vec3<f32> = u_xlat3;
  u_xlat38 = dot(x_96, x_97);
  let x_99 : f32 = u_xlat38;
  u_xlat38 = inverseSqrt(x_99);
  let x_101 : f32 = u_xlat38;
  let x_103 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_101, x_101, x_101) * x_103);
  let x_110 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat4.x = x_110;
  let x_113 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat4.y = x_113;
  let x_117 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat4.z = x_117;
  let x_119 : bool = u_xlatb36;
  if (x_119) {
    let x_123 : vec3<f32> = u_xlat3;
    x_120 = x_123;
  } else {
    let x_125 : vec3<f32> = u_xlat4;
    x_120 = x_125;
  }
  let x_126 : vec3<f32> = x_120;
  u_xlat3 = x_126;
  let x_129 : vec3<f32> = vs_TEXCOORD2;
  let x_130 : vec3<f32> = vs_TEXCOORD2;
  u_xlat36 = dot(x_129, x_130);
  let x_132 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_132);
  let x_134 : f32 = u_xlat36;
  let x_136 : vec3<f32> = vs_TEXCOORD2;
  u_xlat4 = (vec3<f32>(x_134, x_134, x_134) * x_136);
  let x_139 : f32 = vs_TEXCOORD1.y;
  let x_141 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat36 = (x_139 * x_141);
  let x_144 : f32 = x_44.unity_MatrixV[0i].z;
  let x_146 : f32 = vs_TEXCOORD1.x;
  let x_148 : f32 = u_xlat36;
  u_xlat36 = ((x_144 * x_146) + x_148);
  let x_151 : f32 = x_44.unity_MatrixV[2i].z;
  let x_153 : f32 = vs_TEXCOORD1.z;
  let x_155 : f32 = u_xlat36;
  u_xlat36 = ((x_151 * x_153) + x_155);
  let x_157 : f32 = u_xlat36;
  let x_160 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat36 = (x_157 + x_160);
  let x_162 : f32 = u_xlat36;
  let x_166 : f32 = x_44.x_ProjectionParams.y;
  u_xlat36 = (-(x_162) + -(x_166));
  let x_169 : f32 = u_xlat36;
  u_xlat36 = max(x_169, 0.0f);
  let x_171 : f32 = u_xlat36;
  let x_174 : f32 = x_44.unity_FogParams.x;
  u_xlat36 = (x_171 * x_174);
  let x_183 : vec2<f32> = vs_TEXCOORD8;
  let x_185 : f32 = x_44.x_GlobalMipBias.x;
  let x_186 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_183, x_185);
  u_xlat5 = vec3<f32>(x_186.x, x_186.y, x_186.z);
  let x_191 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_192 : vec2<f32> = vec2<f32>(x_191.x, x_191.y);
  let x_196 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_192.x, x_192.y));
  let x_197 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_196.x, x_196.y, x_197.z);
  let x_199 : vec3<f32> = u_xlat6;
  let x_201 : vec4<f32> = hlslcc_FragCoord;
  let x_203 : vec2<f32> = (vec2<f32>(x_199.x, x_199.y) * vec2<f32>(x_201.x, x_201.y));
  let x_204 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_203.x, x_203.y, x_204.z);
  let x_207 : f32 = u_xlat6.y;
  let x_210 : f32 = x_44.x_ScaleBiasRt.x;
  let x_213 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat38 = ((x_207 * x_210) + x_213);
  let x_215 : f32 = u_xlat38;
  u_xlat6.z = (-(x_215) + 1.0f);
  let x_220 : f32 = x_57.x_Metallic;
  u_xlat38 = ((-(x_220) * 0.959999979f) + 0.959999979f);
  let x_226 : f32 = u_xlat38;
  let x_229 : f32 = x_57.x_Smoothness;
  u_xlat39 = (-(x_226) + x_229);
  let x_232 : vec4<f32> = u_xlat1;
  let x_234 : f32 = u_xlat38;
  u_xlat13 = (vec3<f32>(x_232.y, x_232.z, x_232.w) * vec3<f32>(x_234, x_234, x_234));
  let x_237 : vec4<f32> = u_xlat0;
  let x_240 : vec4<f32> = x_57.x_BaseColor;
  let x_245 : vec3<f32> = ((vec3<f32>(x_237.x, x_237.y, x_237.z) * vec3<f32>(x_240.x, x_240.y, x_240.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_246 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_245.x, x_245.y, x_245.z, x_246.w);
  let x_249 : f32 = x_57.x_Metallic;
  let x_251 : f32 = x_57.x_Metallic;
  let x_253 : f32 = x_57.x_Metallic;
  let x_254 : vec3<f32> = vec3<f32>(x_249, x_251, x_253);
  let x_259 : vec4<f32> = u_xlat0;
  let x_264 : vec3<f32> = ((vec3<f32>(x_254.x, x_254.y, x_254.z) * vec3<f32>(x_259.x, x_259.y, x_259.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_265 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_264.x, x_264.y, x_264.z, x_265.w);
  let x_268 : f32 = x_57.x_Smoothness;
  u_xlat38 = (-(x_268) + 1.0f);
  let x_272 : f32 = u_xlat38;
  let x_273 : f32 = u_xlat38;
  u_xlat40 = (x_272 * x_273);
  let x_275 : f32 = u_xlat40;
  u_xlat40 = max(x_275, 0.0078125f);
  let x_279 : f32 = u_xlat40;
  let x_280 : f32 = u_xlat40;
  u_xlat41 = (x_279 * x_280);
  let x_282 : f32 = u_xlat39;
  u_xlat39 = (x_282 + 1.0f);
  let x_284 : f32 = u_xlat39;
  u_xlat39 = clamp(x_284, 0.0f, 1.0f);
  let x_287 : f32 = u_xlat40;
  u_xlat18 = ((x_287 * 4.0f) + 2.0f);
  let x_297 : vec3<f32> = u_xlat6;
  let x_300 : f32 = x_44.x_GlobalMipBias.x;
  let x_301 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_297.x, x_297.z), x_300);
  u_xlat6.x = x_301.x;
  let x_306 : f32 = u_xlat6.x;
  u_xlat30 = (x_306 + -1.0f);
  let x_311 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_312 : f32 = u_xlat30;
  u_xlat30 = ((x_311 * x_312) + 1.0f);
  let x_316 : f32 = u_xlat6.x;
  u_xlat6.x = min(x_316, 1.0f);
  let x_321 : vec4<f32> = vs_TEXCOORD6;
  let x_322 : vec2<f32> = vec2<f32>(x_321.x, x_321.y);
  let x_324 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_322.x, x_322.y, x_324);
  let x_337 : vec3<f32> = txVec0;
  let x_339 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_337.xy, x_337.z);
  u_xlat42 = x_339;
  let x_347 : f32 = x_345.x_MainLightShadowParams.x;
  u_xlat7.x = (-(x_347) + 1.0f);
  let x_351 : f32 = u_xlat42;
  let x_353 : f32 = x_345.x_MainLightShadowParams.x;
  let x_356 : f32 = u_xlat7.x;
  u_xlat42 = ((x_351 * x_353) + x_356);
  let x_360 : f32 = vs_TEXCOORD6.z;
  u_xlatb7 = (0.0f >= x_360);
  let x_364 : f32 = vs_TEXCOORD6.z;
  u_xlatb19 = (x_364 >= 1.0f);
  let x_366 : bool = u_xlatb19;
  let x_367 : bool = u_xlatb7;
  u_xlatb7 = (x_366 | x_367);
  let x_369 : bool = u_xlatb7;
  let x_370 : f32 = u_xlat42;
  u_xlat42 = select(x_370, 1.0f, x_369);
  let x_372 : vec3<f32> = vs_TEXCOORD1;
  let x_374 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat7 = (x_372 + -(x_374));
  let x_377 : vec3<f32> = u_xlat7;
  let x_378 : vec3<f32> = u_xlat7;
  u_xlat7.x = dot(x_377, x_378);
  let x_382 : f32 = u_xlat7.x;
  let x_384 : f32 = x_345.x_MainLightShadowParams.z;
  let x_387 : f32 = x_345.x_MainLightShadowParams.w;
  u_xlat7.x = ((x_382 * x_384) + x_387);
  let x_391 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_391, 0.0f, 1.0f);
  let x_395 : f32 = u_xlat42;
  u_xlat19 = (-(x_395) + 1.0f);
  let x_399 : f32 = u_xlat7.x;
  let x_400 : f32 = u_xlat19;
  let x_402 : f32 = u_xlat42;
  u_xlat42 = ((x_399 * x_400) + x_402);
  let x_404 : f32 = u_xlat30;
  let x_407 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat7 = (vec3<f32>(x_404, x_404, x_404) * vec3<f32>(x_407.x, x_407.y, x_407.z));
  let x_411 : vec3<f32> = u_xlat3;
  let x_413 : vec3<f32> = u_xlat4;
  u_xlat43 = dot(-(x_411), x_413);
  let x_415 : f32 = u_xlat43;
  let x_416 : f32 = u_xlat43;
  u_xlat43 = (x_415 + x_416);
  let x_419 : vec3<f32> = u_xlat4;
  let x_420 : f32 = u_xlat43;
  let x_424 : vec3<f32> = u_xlat3;
  let x_426 : vec3<f32> = ((x_419 * -(vec3<f32>(x_420, x_420, x_420))) + -(x_424));
  let x_427 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_426.x, x_426.y, x_426.z, x_427.w);
  let x_429 : vec3<f32> = u_xlat4;
  let x_430 : vec3<f32> = u_xlat3;
  u_xlat43 = dot(x_429, x_430);
  let x_432 : f32 = u_xlat43;
  u_xlat43 = clamp(x_432, 0.0f, 1.0f);
  let x_434 : f32 = u_xlat43;
  u_xlat43 = (-(x_434) + 1.0f);
  let x_437 : f32 = u_xlat43;
  let x_438 : f32 = u_xlat43;
  u_xlat43 = (x_437 * x_438);
  let x_440 : f32 = u_xlat43;
  let x_441 : f32 = u_xlat43;
  u_xlat43 = (x_440 * x_441);
  let x_444 : f32 = u_xlat38;
  u_xlat44 = ((-(x_444) * 0.699999988f) + 1.700000048f);
  let x_450 : f32 = u_xlat38;
  let x_451 : f32 = u_xlat44;
  u_xlat38 = (x_450 * x_451);
  let x_453 : f32 = u_xlat38;
  u_xlat38 = (x_453 * 6.0f);
  let x_464 : vec4<f32> = u_xlat8;
  let x_466 : f32 = u_xlat38;
  let x_467 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_464.x, x_464.y, x_464.z), x_466);
  u_xlat8 = x_467;
  let x_469 : f32 = u_xlat8.w;
  u_xlat38 = (x_469 + -1.0f);
  let x_476 : f32 = x_474.unity_SpecCube0_HDR.w;
  let x_477 : f32 = u_xlat38;
  u_xlat38 = ((x_476 * x_477) + 1.0f);
  let x_480 : f32 = u_xlat38;
  u_xlat38 = max(x_480, 0.0f);
  let x_482 : f32 = u_xlat38;
  u_xlat38 = log2(x_482);
  let x_484 : f32 = u_xlat38;
  let x_486 : f32 = x_474.unity_SpecCube0_HDR.y;
  u_xlat38 = (x_484 * x_486);
  let x_488 : f32 = u_xlat38;
  u_xlat38 = exp2(x_488);
  let x_490 : f32 = u_xlat38;
  let x_492 : f32 = x_474.unity_SpecCube0_HDR.x;
  u_xlat38 = (x_490 * x_492);
  let x_494 : vec4<f32> = u_xlat8;
  let x_496 : f32 = u_xlat38;
  let x_498 : vec3<f32> = (vec3<f32>(x_494.x, x_494.y, x_494.z) * vec3<f32>(x_496, x_496, x_496));
  let x_499 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_498.x, x_498.y, x_498.z, x_499.w);
  let x_503 : f32 = u_xlat40;
  let x_505 : f32 = u_xlat40;
  u_xlat9 = ((vec2<f32>(x_503, x_503) * vec2<f32>(x_505, x_505)) + vec2<f32>(-1.0f, 1.0f));
  let x_511 : f32 = u_xlat9.y;
  u_xlat38 = (1.0f / x_511);
  let x_514 : vec4<f32> = u_xlat0;
  let x_517 : f32 = u_xlat39;
  u_xlat21 = (-(vec3<f32>(x_514.x, x_514.y, x_514.z)) + vec3<f32>(x_517, x_517, x_517));
  let x_520 : f32 = u_xlat43;
  let x_522 : vec3<f32> = u_xlat21;
  let x_524 : vec4<f32> = u_xlat0;
  u_xlat21 = ((vec3<f32>(x_520, x_520, x_520) * x_522) + vec3<f32>(x_524.x, x_524.y, x_524.z));
  let x_527 : f32 = u_xlat38;
  let x_529 : vec3<f32> = u_xlat21;
  u_xlat21 = (vec3<f32>(x_527, x_527, x_527) * x_529);
  let x_531 : vec4<f32> = u_xlat8;
  let x_533 : vec3<f32> = u_xlat21;
  let x_534 : vec3<f32> = (vec3<f32>(x_531.x, x_531.y, x_531.z) * x_533);
  let x_535 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_534.x, x_534.y, x_534.z, x_535.w);
  let x_537 : vec3<f32> = u_xlat5;
  let x_538 : vec3<f32> = u_xlat13;
  let x_540 : vec4<f32> = u_xlat8;
  u_xlat5 = ((x_537 * x_538) + vec3<f32>(x_540.x, x_540.y, x_540.z));
  let x_543 : f32 = u_xlat42;
  let x_546 : f32 = x_474.unity_LightData.z;
  u_xlat38 = (x_543 * x_546);
  let x_548 : vec3<f32> = u_xlat4;
  let x_550 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat39 = dot(x_548, vec3<f32>(x_550.x, x_550.y, x_550.z));
  let x_553 : f32 = u_xlat39;
  u_xlat39 = clamp(x_553, 0.0f, 1.0f);
  let x_555 : f32 = u_xlat38;
  let x_556 : f32 = u_xlat39;
  u_xlat38 = (x_555 * x_556);
  let x_558 : f32 = u_xlat38;
  let x_560 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_558, x_558, x_558) * x_560);
  let x_562 : vec3<f32> = u_xlat3;
  let x_564 : vec4<f32> = x_44.x_MainLightPosition;
  let x_566 : vec3<f32> = (x_562 + vec3<f32>(x_564.x, x_564.y, x_564.z));
  let x_567 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_566.x, x_566.y, x_566.z, x_567.w);
  let x_569 : vec4<f32> = u_xlat8;
  let x_571 : vec4<f32> = u_xlat8;
  u_xlat38 = dot(vec3<f32>(x_569.x, x_569.y, x_569.z), vec3<f32>(x_571.x, x_571.y, x_571.z));
  let x_574 : f32 = u_xlat38;
  u_xlat38 = max(x_574, 1.17549435e-37f);
  let x_577 : f32 = u_xlat38;
  u_xlat38 = inverseSqrt(x_577);
  let x_579 : f32 = u_xlat38;
  let x_581 : vec4<f32> = u_xlat8;
  let x_583 : vec3<f32> = (vec3<f32>(x_579, x_579, x_579) * vec3<f32>(x_581.x, x_581.y, x_581.z));
  let x_584 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_583.x, x_583.y, x_583.z, x_584.w);
  let x_586 : vec3<f32> = u_xlat4;
  let x_587 : vec4<f32> = u_xlat8;
  u_xlat38 = dot(x_586, vec3<f32>(x_587.x, x_587.y, x_587.z));
  let x_590 : f32 = u_xlat38;
  u_xlat38 = clamp(x_590, 0.0f, 1.0f);
  let x_593 : vec4<f32> = x_44.x_MainLightPosition;
  let x_595 : vec4<f32> = u_xlat8;
  u_xlat39 = dot(vec3<f32>(x_593.x, x_593.y, x_593.z), vec3<f32>(x_595.x, x_595.y, x_595.z));
  let x_598 : f32 = u_xlat39;
  u_xlat39 = clamp(x_598, 0.0f, 1.0f);
  let x_600 : f32 = u_xlat38;
  let x_601 : f32 = u_xlat38;
  u_xlat38 = (x_600 * x_601);
  let x_603 : f32 = u_xlat38;
  let x_605 : f32 = u_xlat9.x;
  u_xlat38 = ((x_603 * x_605) + 1.000010014f);
  let x_609 : f32 = u_xlat39;
  let x_610 : f32 = u_xlat39;
  u_xlat39 = (x_609 * x_610);
  let x_612 : f32 = u_xlat38;
  let x_613 : f32 = u_xlat38;
  u_xlat38 = (x_612 * x_613);
  let x_615 : f32 = u_xlat39;
  u_xlat39 = max(x_615, 0.100000001f);
  let x_618 : f32 = u_xlat38;
  let x_619 : f32 = u_xlat39;
  u_xlat38 = (x_618 * x_619);
  let x_621 : f32 = u_xlat18;
  let x_622 : f32 = u_xlat38;
  u_xlat38 = (x_621 * x_622);
  let x_624 : f32 = u_xlat41;
  let x_625 : f32 = u_xlat38;
  u_xlat38 = (x_624 / x_625);
  let x_627 : vec4<f32> = u_xlat0;
  let x_629 : f32 = u_xlat38;
  let x_632 : vec3<f32> = u_xlat13;
  let x_633 : vec3<f32> = ((vec3<f32>(x_627.x, x_627.y, x_627.z) * vec3<f32>(x_629, x_629, x_629)) + x_632);
  let x_634 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_633.x, x_633.y, x_633.z, x_634.w);
  let x_636 : vec3<f32> = u_xlat7;
  let x_637 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_636 * vec3<f32>(x_637.x, x_637.y, x_637.z));
  let x_641 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_643 : f32 = x_474.unity_LightData.y;
  u_xlat38 = min(x_641, x_643);
  let x_647 : f32 = u_xlat38;
  u_xlatu38 = bitcast<u32>(i32(x_647));
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_659 : u32 = u_xlatu_loop_1;
    let x_660 : u32 = u_xlatu38;
    if ((x_659 < x_660)) {
    } else {
      break;
    }
    let x_663 : u32 = u_xlatu_loop_1;
    u_xlatu40 = (x_663 >> 2u);
    let x_667 : u32 = u_xlatu_loop_1;
    u_xlati42 = bitcast<i32>((x_667 & 3u));
    let x_670 : u32 = u_xlatu40;
    let x_673 : vec4<f32> = x_474.unity_LightIndices[bitcast<i32>(x_670)];
    let x_683 : i32 = u_xlati42;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_688 : vec4<u32> = indexable[x_683];
    u_xlat40 = dot(x_673, bitcast<vec4<f32>>(x_688));
    let x_692 : f32 = u_xlat40;
    u_xlati40 = i32(x_692);
    let x_694 : vec3<f32> = vs_TEXCOORD1;
    let x_706 : i32 = u_xlati40;
    let x_708 : vec4<f32> = x_705.x_AdditionalLightsPosition[x_706];
    let x_711 : i32 = u_xlati40;
    let x_713 : vec4<f32> = x_705.x_AdditionalLightsPosition[x_711];
    u_xlat21 = ((-(x_694) * vec3<f32>(x_708.w, x_708.w, x_708.w)) + vec3<f32>(x_713.x, x_713.y, x_713.z));
    let x_716 : vec3<f32> = u_xlat21;
    let x_717 : vec3<f32> = u_xlat21;
    u_xlat42 = dot(x_716, x_717);
    let x_719 : f32 = u_xlat42;
    u_xlat42 = max(x_719, 6.10351562e-05f);
    let x_722 : f32 = u_xlat42;
    u_xlat43 = inverseSqrt(x_722);
    let x_725 : f32 = u_xlat43;
    let x_727 : vec3<f32> = u_xlat21;
    u_xlat10 = (vec3<f32>(x_725, x_725, x_725) * x_727);
    let x_729 : f32 = u_xlat42;
    u_xlat44 = (1.0f / x_729);
    let x_731 : f32 = u_xlat42;
    let x_732 : i32 = u_xlati40;
    let x_734 : f32 = x_705.x_AdditionalLightsAttenuation[x_732].x;
    u_xlat42 = (x_731 * x_734);
    let x_736 : f32 = u_xlat42;
    let x_738 : f32 = u_xlat42;
    u_xlat42 = ((-(x_736) * x_738) + 1.0f);
    let x_741 : f32 = u_xlat42;
    u_xlat42 = max(x_741, 0.0f);
    let x_743 : f32 = u_xlat42;
    let x_744 : f32 = u_xlat42;
    u_xlat42 = (x_743 * x_744);
    let x_746 : f32 = u_xlat42;
    let x_747 : f32 = u_xlat44;
    u_xlat42 = (x_746 * x_747);
    let x_749 : i32 = u_xlati40;
    let x_751 : vec4<f32> = x_705.x_AdditionalLightsSpotDir[x_749];
    let x_753 : vec3<f32> = u_xlat10;
    u_xlat44 = dot(vec3<f32>(x_751.x, x_751.y, x_751.z), x_753);
    let x_755 : f32 = u_xlat44;
    let x_756 : i32 = u_xlati40;
    let x_758 : f32 = x_705.x_AdditionalLightsAttenuation[x_756].z;
    let x_760 : i32 = u_xlati40;
    let x_762 : f32 = x_705.x_AdditionalLightsAttenuation[x_760].w;
    u_xlat44 = ((x_755 * x_758) + x_762);
    let x_764 : f32 = u_xlat44;
    u_xlat44 = clamp(x_764, 0.0f, 1.0f);
    let x_766 : f32 = u_xlat44;
    let x_767 : f32 = u_xlat44;
    u_xlat44 = (x_766 * x_767);
    let x_769 : f32 = u_xlat42;
    let x_770 : f32 = u_xlat44;
    u_xlat42 = (x_769 * x_770);
    let x_773 : f32 = u_xlat30;
    let x_775 : i32 = u_xlati40;
    let x_777 : vec4<f32> = x_705.x_AdditionalLightsColor[x_775];
    u_xlat11 = (vec3<f32>(x_773, x_773, x_773) * vec3<f32>(x_777.x, x_777.y, x_777.z));
    let x_780 : vec3<f32> = u_xlat4;
    let x_781 : vec3<f32> = u_xlat10;
    u_xlat40 = dot(x_780, x_781);
    let x_783 : f32 = u_xlat40;
    u_xlat40 = clamp(x_783, 0.0f, 1.0f);
    let x_785 : f32 = u_xlat40;
    let x_786 : f32 = u_xlat42;
    u_xlat40 = (x_785 * x_786);
    let x_788 : f32 = u_xlat40;
    let x_790 : vec3<f32> = u_xlat11;
    u_xlat11 = (vec3<f32>(x_788, x_788, x_788) * x_790);
    let x_792 : vec3<f32> = u_xlat21;
    let x_793 : f32 = u_xlat43;
    let x_796 : vec3<f32> = u_xlat3;
    u_xlat21 = ((x_792 * vec3<f32>(x_793, x_793, x_793)) + x_796);
    let x_798 : vec3<f32> = u_xlat21;
    let x_799 : vec3<f32> = u_xlat21;
    u_xlat40 = dot(x_798, x_799);
    let x_801 : f32 = u_xlat40;
    u_xlat40 = max(x_801, 1.17549435e-37f);
    let x_803 : f32 = u_xlat40;
    u_xlat40 = inverseSqrt(x_803);
    let x_805 : f32 = u_xlat40;
    let x_807 : vec3<f32> = u_xlat21;
    u_xlat21 = (vec3<f32>(x_805, x_805, x_805) * x_807);
    let x_809 : vec3<f32> = u_xlat4;
    let x_810 : vec3<f32> = u_xlat21;
    u_xlat40 = dot(x_809, x_810);
    let x_812 : f32 = u_xlat40;
    u_xlat40 = clamp(x_812, 0.0f, 1.0f);
    let x_814 : vec3<f32> = u_xlat10;
    let x_815 : vec3<f32> = u_xlat21;
    u_xlat42 = dot(x_814, x_815);
    let x_817 : f32 = u_xlat42;
    u_xlat42 = clamp(x_817, 0.0f, 1.0f);
    let x_819 : f32 = u_xlat40;
    let x_820 : f32 = u_xlat40;
    u_xlat40 = (x_819 * x_820);
    let x_822 : f32 = u_xlat40;
    let x_824 : f32 = u_xlat9.x;
    u_xlat40 = ((x_822 * x_824) + 1.000010014f);
    let x_827 : f32 = u_xlat42;
    let x_828 : f32 = u_xlat42;
    u_xlat42 = (x_827 * x_828);
    let x_830 : f32 = u_xlat40;
    let x_831 : f32 = u_xlat40;
    u_xlat40 = (x_830 * x_831);
    let x_833 : f32 = u_xlat42;
    u_xlat42 = max(x_833, 0.100000001f);
    let x_835 : f32 = u_xlat40;
    let x_836 : f32 = u_xlat42;
    u_xlat40 = (x_835 * x_836);
    let x_838 : f32 = u_xlat18;
    let x_839 : f32 = u_xlat40;
    u_xlat40 = (x_838 * x_839);
    let x_841 : f32 = u_xlat41;
    let x_842 : f32 = u_xlat40;
    u_xlat40 = (x_841 / x_842);
    let x_844 : vec4<f32> = u_xlat0;
    let x_846 : f32 = u_xlat40;
    let x_849 : vec3<f32> = u_xlat13;
    u_xlat21 = ((vec3<f32>(x_844.x, x_844.y, x_844.z) * vec3<f32>(x_846, x_846, x_846)) + x_849);
    let x_851 : vec3<f32> = u_xlat21;
    let x_852 : vec3<f32> = u_xlat11;
    let x_854 : vec4<f32> = u_xlat8;
    let x_856 : vec3<f32> = ((x_851 * x_852) + vec3<f32>(x_854.x, x_854.y, x_854.z));
    let x_857 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_856.x, x_856.y, x_856.z, x_857.w);

    continuing {
      let x_859 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_859 + bitcast<u32>(1i));
    }
  }
  let x_861 : vec3<f32> = u_xlat5;
  let x_862 : vec3<f32> = u_xlat6;
  let x_865 : vec3<f32> = u_xlat7;
  let x_866 : vec3<f32> = ((x_861 * vec3<f32>(x_862.x, x_862.x, x_862.x)) + x_865);
  let x_867 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_866.x, x_866.y, x_866.z, x_867.w);
  let x_869 : vec4<f32> = u_xlat8;
  let x_871 : vec4<f32> = u_xlat0;
  let x_873 : vec3<f32> = (vec3<f32>(x_869.x, x_869.y, x_869.z) + vec3<f32>(x_871.x, x_871.y, x_871.z));
  let x_874 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_873.x, x_873.y, x_873.z, x_874.w);
  let x_876 : vec3<f32> = u_xlat2;
  let x_878 : vec4<f32> = x_57.x_EmissionColor;
  let x_881 : vec4<f32> = u_xlat0;
  let x_883 : vec3<f32> = ((x_876 * vec3<f32>(x_878.x, x_878.y, x_878.z)) + vec3<f32>(x_881.x, x_881.y, x_881.z));
  let x_884 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_883.x, x_883.y, x_883.z, x_884.w);
  let x_886 : f32 = u_xlat36;
  let x_887 : f32 = u_xlat36;
  u_xlat36 = (x_886 * -(x_887));
  let x_890 : f32 = u_xlat36;
  u_xlat36 = exp2(x_890);
  let x_892 : vec4<f32> = u_xlat0;
  let x_896 : vec4<f32> = x_44.unity_FogColor;
  let x_899 : vec3<f32> = (vec3<f32>(x_892.x, x_892.y, x_892.z) + -(vec3<f32>(x_896.x, x_896.y, x_896.z)));
  let x_900 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_899.x, x_899.y, x_899.z, x_900.w);
  let x_904 : f32 = u_xlat36;
  let x_906 : vec4<f32> = u_xlat0;
  let x_910 : vec4<f32> = x_44.unity_FogColor;
  let x_912 : vec3<f32> = ((vec3<f32>(x_904, x_904, x_904) * vec3<f32>(x_906.x, x_906.y, x_906.z)) + vec3<f32>(x_910.x, x_910.y, x_910.z));
  let x_913 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_912.x, x_912.y, x_912.z, x_913.w);
  let x_918 : f32 = x_57.x_Surface;
  u_xlatb0 = (x_918 == 1.0f);
  let x_920 : bool = u_xlatb0;
  if (x_920) {
    let x_925 : f32 = u_xlat1.x;
    x_921 = x_925;
  } else {
    x_921 = 1.0f;
  }
  let x_927 : f32 = x_921;
  SV_Target0.w = x_927;
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

