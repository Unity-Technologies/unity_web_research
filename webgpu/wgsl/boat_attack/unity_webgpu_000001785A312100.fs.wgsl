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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

@group(0) @binding(3) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_EmissionMap : sampler;

@group(0) @binding(6) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_106 : UnityPerDraw;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

@group(0) @binding(4) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_376 : MainLightShadows;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_726 : AdditionalLights;

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
  var u_xlat4 : vec3<f32>;
  var x_164 : f32;
  var x_176 : f32;
  var x_188 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
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
  var u_xlat7 : vec3<f32>;
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
  var x_915 : f32;
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
  let x_163 : bool = u_xlatb36;
  if (x_163) {
    let x_168 : f32 = u_xlat3.x;
    x_164 = x_168;
  } else {
    let x_172 : f32 = x_44.unity_MatrixV[0i].z;
    x_164 = x_172;
  }
  let x_173 : f32 = x_164;
  u_xlat4.x = x_173;
  let x_175 : bool = u_xlatb36;
  if (x_175) {
    let x_181 : f32 = u_xlat3.y;
    x_176 = x_181;
  } else {
    let x_184 : f32 = x_44.unity_MatrixV[1i].z;
    x_176 = x_184;
  }
  let x_185 : f32 = x_176;
  u_xlat4.y = x_185;
  let x_187 : bool = u_xlatb36;
  if (x_187) {
    let x_192 : f32 = u_xlat3.z;
    x_188 = x_192;
  } else {
    let x_195 : f32 = x_44.unity_MatrixV[2i].z;
    x_188 = x_195;
  }
  let x_196 : f32 = x_188;
  u_xlat4.z = x_196;
  let x_199 : vec3<f32> = vs_TEXCOORD2;
  let x_200 : vec3<f32> = vs_TEXCOORD2;
  u_xlat36 = dot(x_199, x_200);
  let x_202 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_202);
  let x_204 : f32 = u_xlat36;
  let x_206 : vec3<f32> = vs_TEXCOORD2;
  u_xlat3 = (vec3<f32>(x_204, x_204, x_204) * x_206);
  let x_215 : vec2<f32> = vs_TEXCOORD8;
  let x_217 : f32 = x_44.x_GlobalMipBias.x;
  let x_218 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_215, x_217);
  u_xlat5 = vec3<f32>(x_218.x, x_218.y, x_218.z);
  let x_223 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_224 : vec2<f32> = vec2<f32>(x_223.x, x_223.y);
  let x_228 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_224.x, x_224.y));
  let x_229 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_228.x, x_228.y, x_229.z);
  let x_231 : vec3<f32> = u_xlat6;
  let x_233 : vec4<f32> = hlslcc_FragCoord;
  let x_235 : vec2<f32> = (vec2<f32>(x_231.x, x_231.y) * vec2<f32>(x_233.x, x_233.y));
  let x_236 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_235.x, x_235.y, x_236.z);
  let x_239 : f32 = u_xlat6.y;
  let x_242 : f32 = x_44.x_ScaleBiasRt.x;
  let x_245 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat36 = ((x_239 * x_242) + x_245);
  let x_247 : f32 = u_xlat36;
  u_xlat6.z = (-(x_247) + 1.0f);
  let x_252 : f32 = x_57.x_Metallic;
  u_xlat36 = ((-(x_252) * 0.959999979f) + 0.959999979f);
  let x_257 : f32 = u_xlat36;
  let x_260 : f32 = x_57.x_Smoothness;
  u_xlat38 = (-(x_257) + x_260);
  let x_263 : f32 = u_xlat36;
  let x_265 : vec4<f32> = u_xlat1;
  u_xlat13 = (vec3<f32>(x_263, x_263, x_263) * vec3<f32>(x_265.y, x_265.z, x_265.w));
  let x_268 : vec4<f32> = u_xlat0;
  let x_271 : vec4<f32> = x_57.x_BaseColor;
  let x_276 : vec3<f32> = ((vec3<f32>(x_268.x, x_268.y, x_268.z) * vec3<f32>(x_271.x, x_271.y, x_271.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_277 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_276.x, x_276.y, x_276.z, x_277.w);
  let x_280 : f32 = x_57.x_Metallic;
  let x_282 : f32 = x_57.x_Metallic;
  let x_284 : f32 = x_57.x_Metallic;
  let x_285 : vec3<f32> = vec3<f32>(x_280, x_282, x_284);
  let x_290 : vec4<f32> = u_xlat0;
  let x_295 : vec3<f32> = ((vec3<f32>(x_285.x, x_285.y, x_285.z) * vec3<f32>(x_290.x, x_290.y, x_290.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_296 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_295.x, x_295.y, x_295.z, x_296.w);
  let x_299 : f32 = x_57.x_Smoothness;
  u_xlat36 = (-(x_299) + 1.0f);
  let x_303 : f32 = u_xlat36;
  let x_304 : f32 = u_xlat36;
  u_xlat39 = (x_303 * x_304);
  let x_306 : f32 = u_xlat39;
  u_xlat39 = max(x_306, 0.0078125f);
  let x_310 : f32 = u_xlat39;
  let x_311 : f32 = u_xlat39;
  u_xlat40 = (x_310 * x_311);
  let x_313 : f32 = u_xlat38;
  u_xlat38 = (x_313 + 1.0f);
  let x_315 : f32 = u_xlat38;
  u_xlat38 = clamp(x_315, 0.0f, 1.0f);
  let x_318 : f32 = u_xlat39;
  u_xlat41 = ((x_318 * 4.0f) + 2.0f);
  let x_328 : vec3<f32> = u_xlat6;
  let x_331 : f32 = x_44.x_GlobalMipBias.x;
  let x_332 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_328.x, x_328.z), x_331);
  u_xlat6.x = x_332.x;
  let x_337 : f32 = u_xlat6.x;
  u_xlat18 = (x_337 + -1.0f);
  let x_342 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_343 : f32 = u_xlat18;
  u_xlat18 = ((x_342 * x_343) + 1.0f);
  let x_347 : f32 = u_xlat6.x;
  u_xlat6.x = min(x_347, 1.0f);
  let x_352 : vec4<f32> = vs_TEXCOORD6;
  let x_353 : vec2<f32> = vec2<f32>(x_352.x, x_352.y);
  let x_355 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_353.x, x_353.y, x_355);
  let x_368 : vec3<f32> = txVec0;
  let x_370 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_368.xy, x_368.z);
  u_xlat30 = x_370;
  let x_378 : f32 = x_376.x_MainLightShadowParams.x;
  u_xlat42 = (-(x_378) + 1.0f);
  let x_381 : f32 = u_xlat30;
  let x_383 : f32 = x_376.x_MainLightShadowParams.x;
  let x_385 : f32 = u_xlat42;
  u_xlat30 = ((x_381 * x_383) + x_385);
  let x_389 : f32 = vs_TEXCOORD6.z;
  u_xlatb42 = (0.0f >= x_389);
  let x_393 : f32 = vs_TEXCOORD6.z;
  u_xlatb7 = (x_393 >= 1.0f);
  let x_395 : bool = u_xlatb42;
  let x_396 : bool = u_xlatb7;
  u_xlatb42 = (x_395 | x_396);
  let x_398 : bool = u_xlatb42;
  let x_399 : f32 = u_xlat30;
  u_xlat30 = select(x_399, 1.0f, x_398);
  let x_402 : vec3<f32> = vs_TEXCOORD1;
  let x_404 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat7 = (x_402 + -(x_404));
  let x_407 : vec3<f32> = u_xlat7;
  let x_408 : vec3<f32> = u_xlat7;
  u_xlat42 = dot(x_407, x_408);
  let x_410 : f32 = u_xlat42;
  let x_412 : f32 = x_376.x_MainLightShadowParams.z;
  let x_415 : f32 = x_376.x_MainLightShadowParams.w;
  u_xlat42 = ((x_410 * x_412) + x_415);
  let x_417 : f32 = u_xlat42;
  u_xlat42 = clamp(x_417, 0.0f, 1.0f);
  let x_419 : f32 = u_xlat30;
  u_xlat7.x = (-(x_419) + 1.0f);
  let x_423 : f32 = u_xlat42;
  let x_425 : f32 = u_xlat7.x;
  let x_427 : f32 = u_xlat30;
  u_xlat30 = ((x_423 * x_425) + x_427);
  let x_429 : f32 = u_xlat18;
  let x_433 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat7 = (vec3<f32>(x_429, x_429, x_429) * vec3<f32>(x_433.x, x_433.y, x_433.z));
  let x_436 : vec3<f32> = u_xlat4;
  let x_438 : vec3<f32> = u_xlat3;
  u_xlat42 = dot(-(x_436), x_438);
  let x_440 : f32 = u_xlat42;
  let x_441 : f32 = u_xlat42;
  u_xlat42 = (x_440 + x_441);
  let x_444 : vec3<f32> = u_xlat3;
  let x_445 : f32 = u_xlat42;
  let x_449 : vec3<f32> = u_xlat4;
  let x_451 : vec3<f32> = ((x_444 * -(vec3<f32>(x_445, x_445, x_445))) + -(x_449));
  let x_452 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_451.x, x_451.y, x_451.z, x_452.w);
  let x_454 : vec3<f32> = u_xlat3;
  let x_455 : vec3<f32> = u_xlat4;
  u_xlat42 = dot(x_454, x_455);
  let x_457 : f32 = u_xlat42;
  u_xlat42 = clamp(x_457, 0.0f, 1.0f);
  let x_459 : f32 = u_xlat42;
  u_xlat42 = (-(x_459) + 1.0f);
  let x_462 : f32 = u_xlat42;
  let x_463 : f32 = u_xlat42;
  u_xlat42 = (x_462 * x_463);
  let x_465 : f32 = u_xlat42;
  let x_466 : f32 = u_xlat42;
  u_xlat42 = (x_465 * x_466);
  let x_469 : f32 = u_xlat36;
  u_xlat43 = ((-(x_469) * 0.699999988f) + 1.700000048f);
  let x_475 : f32 = u_xlat36;
  let x_476 : f32 = u_xlat43;
  u_xlat36 = (x_475 * x_476);
  let x_478 : f32 = u_xlat36;
  u_xlat36 = (x_478 * 6.0f);
  let x_489 : vec4<f32> = u_xlat8;
  let x_491 : f32 = u_xlat36;
  let x_492 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_489.x, x_489.y, x_489.z), x_491);
  u_xlat8 = x_492;
  let x_494 : f32 = u_xlat8.w;
  u_xlat36 = (x_494 + -1.0f);
  let x_497 : f32 = x_106.unity_SpecCube0_HDR.w;
  let x_498 : f32 = u_xlat36;
  u_xlat36 = ((x_497 * x_498) + 1.0f);
  let x_501 : f32 = u_xlat36;
  u_xlat36 = max(x_501, 0.0f);
  let x_503 : f32 = u_xlat36;
  u_xlat36 = log2(x_503);
  let x_505 : f32 = u_xlat36;
  let x_507 : f32 = x_106.unity_SpecCube0_HDR.y;
  u_xlat36 = (x_505 * x_507);
  let x_509 : f32 = u_xlat36;
  u_xlat36 = exp2(x_509);
  let x_511 : f32 = u_xlat36;
  let x_513 : f32 = x_106.unity_SpecCube0_HDR.x;
  u_xlat36 = (x_511 * x_513);
  let x_515 : vec4<f32> = u_xlat8;
  let x_517 : f32 = u_xlat36;
  let x_519 : vec3<f32> = (vec3<f32>(x_515.x, x_515.y, x_515.z) * vec3<f32>(x_517, x_517, x_517));
  let x_520 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_519.x, x_519.y, x_519.z, x_520.w);
  let x_524 : f32 = u_xlat39;
  let x_526 : f32 = u_xlat39;
  u_xlat9 = ((vec2<f32>(x_524, x_524) * vec2<f32>(x_526, x_526)) + vec2<f32>(-1.0f, 1.0f));
  let x_532 : f32 = u_xlat9.y;
  u_xlat36 = (1.0f / x_532);
  let x_535 : vec4<f32> = u_xlat0;
  let x_538 : f32 = u_xlat38;
  u_xlat21 = (-(vec3<f32>(x_535.x, x_535.y, x_535.z)) + vec3<f32>(x_538, x_538, x_538));
  let x_541 : f32 = u_xlat42;
  let x_543 : vec3<f32> = u_xlat21;
  let x_545 : vec4<f32> = u_xlat0;
  u_xlat21 = ((vec3<f32>(x_541, x_541, x_541) * x_543) + vec3<f32>(x_545.x, x_545.y, x_545.z));
  let x_548 : f32 = u_xlat36;
  let x_550 : vec3<f32> = u_xlat21;
  u_xlat21 = (vec3<f32>(x_548, x_548, x_548) * x_550);
  let x_552 : vec4<f32> = u_xlat8;
  let x_554 : vec3<f32> = u_xlat21;
  let x_555 : vec3<f32> = (vec3<f32>(x_552.x, x_552.y, x_552.z) * x_554);
  let x_556 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_555.x, x_555.y, x_555.z, x_556.w);
  let x_558 : vec3<f32> = u_xlat5;
  let x_559 : vec3<f32> = u_xlat13;
  let x_561 : vec4<f32> = u_xlat8;
  u_xlat5 = ((x_558 * x_559) + vec3<f32>(x_561.x, x_561.y, x_561.z));
  let x_564 : f32 = u_xlat30;
  let x_567 : f32 = x_106.unity_LightData.z;
  u_xlat36 = (x_564 * x_567);
  let x_569 : vec3<f32> = u_xlat3;
  let x_571 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat38 = dot(x_569, vec3<f32>(x_571.x, x_571.y, x_571.z));
  let x_574 : f32 = u_xlat38;
  u_xlat38 = clamp(x_574, 0.0f, 1.0f);
  let x_576 : f32 = u_xlat36;
  let x_577 : f32 = u_xlat38;
  u_xlat36 = (x_576 * x_577);
  let x_579 : f32 = u_xlat36;
  let x_581 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_579, x_579, x_579) * x_581);
  let x_583 : vec3<f32> = u_xlat4;
  let x_585 : vec4<f32> = x_44.x_MainLightPosition;
  let x_587 : vec3<f32> = (x_583 + vec3<f32>(x_585.x, x_585.y, x_585.z));
  let x_588 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_587.x, x_587.y, x_587.z, x_588.w);
  let x_590 : vec4<f32> = u_xlat8;
  let x_592 : vec4<f32> = u_xlat8;
  u_xlat36 = dot(vec3<f32>(x_590.x, x_590.y, x_590.z), vec3<f32>(x_592.x, x_592.y, x_592.z));
  let x_595 : f32 = u_xlat36;
  u_xlat36 = max(x_595, 1.17549435e-37f);
  let x_598 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_598);
  let x_600 : f32 = u_xlat36;
  let x_602 : vec4<f32> = u_xlat8;
  let x_604 : vec3<f32> = (vec3<f32>(x_600, x_600, x_600) * vec3<f32>(x_602.x, x_602.y, x_602.z));
  let x_605 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_604.x, x_604.y, x_604.z, x_605.w);
  let x_607 : vec3<f32> = u_xlat3;
  let x_608 : vec4<f32> = u_xlat8;
  u_xlat36 = dot(x_607, vec3<f32>(x_608.x, x_608.y, x_608.z));
  let x_611 : f32 = u_xlat36;
  u_xlat36 = clamp(x_611, 0.0f, 1.0f);
  let x_614 : vec4<f32> = x_44.x_MainLightPosition;
  let x_616 : vec4<f32> = u_xlat8;
  u_xlat38 = dot(vec3<f32>(x_614.x, x_614.y, x_614.z), vec3<f32>(x_616.x, x_616.y, x_616.z));
  let x_619 : f32 = u_xlat38;
  u_xlat38 = clamp(x_619, 0.0f, 1.0f);
  let x_621 : f32 = u_xlat36;
  let x_622 : f32 = u_xlat36;
  u_xlat36 = (x_621 * x_622);
  let x_624 : f32 = u_xlat36;
  let x_626 : f32 = u_xlat9.x;
  u_xlat36 = ((x_624 * x_626) + 1.000010014f);
  let x_630 : f32 = u_xlat38;
  let x_631 : f32 = u_xlat38;
  u_xlat38 = (x_630 * x_631);
  let x_633 : f32 = u_xlat36;
  let x_634 : f32 = u_xlat36;
  u_xlat36 = (x_633 * x_634);
  let x_636 : f32 = u_xlat38;
  u_xlat38 = max(x_636, 0.100000001f);
  let x_639 : f32 = u_xlat36;
  let x_640 : f32 = u_xlat38;
  u_xlat36 = (x_639 * x_640);
  let x_642 : f32 = u_xlat41;
  let x_643 : f32 = u_xlat36;
  u_xlat36 = (x_642 * x_643);
  let x_645 : f32 = u_xlat40;
  let x_646 : f32 = u_xlat36;
  u_xlat36 = (x_645 / x_646);
  let x_648 : vec4<f32> = u_xlat0;
  let x_650 : f32 = u_xlat36;
  let x_653 : vec3<f32> = u_xlat13;
  let x_654 : vec3<f32> = ((vec3<f32>(x_648.x, x_648.y, x_648.z) * vec3<f32>(x_650, x_650, x_650)) + x_653);
  let x_655 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_654.x, x_654.y, x_654.z, x_655.w);
  let x_657 : vec3<f32> = u_xlat7;
  let x_658 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_657 * vec3<f32>(x_658.x, x_658.y, x_658.z));
  let x_662 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_664 : f32 = x_106.unity_LightData.y;
  u_xlat36 = min(x_662, x_664);
  let x_668 : f32 = u_xlat36;
  u_xlatu36 = bitcast<u32>(i32(x_668));
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_680 : u32 = u_xlatu_loop_1;
    let x_681 : u32 = u_xlatu36;
    if ((x_680 < x_681)) {
    } else {
      break;
    }
    let x_684 : u32 = u_xlatu_loop_1;
    u_xlatu39 = (x_684 >> 2u);
    let x_688 : u32 = u_xlatu_loop_1;
    u_xlati30 = bitcast<i32>((x_688 & 3u));
    let x_691 : u32 = u_xlatu39;
    let x_694 : vec4<f32> = x_106.unity_LightIndices[bitcast<i32>(x_691)];
    let x_704 : i32 = u_xlati30;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_709 : vec4<u32> = indexable[x_704];
    u_xlat39 = dot(x_694, bitcast<vec4<f32>>(x_709));
    let x_713 : f32 = u_xlat39;
    u_xlati39 = i32(x_713);
    let x_715 : vec3<f32> = vs_TEXCOORD1;
    let x_727 : i32 = u_xlati39;
    let x_729 : vec4<f32> = x_726.x_AdditionalLightsPosition[x_727];
    let x_732 : i32 = u_xlati39;
    let x_734 : vec4<f32> = x_726.x_AdditionalLightsPosition[x_732];
    u_xlat21 = ((-(x_715) * vec3<f32>(x_729.w, x_729.w, x_729.w)) + vec3<f32>(x_734.x, x_734.y, x_734.z));
    let x_737 : vec3<f32> = u_xlat21;
    let x_738 : vec3<f32> = u_xlat21;
    u_xlat30 = dot(x_737, x_738);
    let x_740 : f32 = u_xlat30;
    u_xlat30 = max(x_740, 6.10351562e-05f);
    let x_743 : f32 = u_xlat30;
    u_xlat42 = inverseSqrt(x_743);
    let x_746 : f32 = u_xlat42;
    let x_748 : vec3<f32> = u_xlat21;
    u_xlat10 = (vec3<f32>(x_746, x_746, x_746) * x_748);
    let x_750 : f32 = u_xlat30;
    u_xlat43 = (1.0f / x_750);
    let x_752 : f32 = u_xlat30;
    let x_753 : i32 = u_xlati39;
    let x_755 : f32 = x_726.x_AdditionalLightsAttenuation[x_753].x;
    u_xlat30 = (x_752 * x_755);
    let x_757 : f32 = u_xlat30;
    let x_759 : f32 = u_xlat30;
    u_xlat30 = ((-(x_757) * x_759) + 1.0f);
    let x_762 : f32 = u_xlat30;
    u_xlat30 = max(x_762, 0.0f);
    let x_764 : f32 = u_xlat30;
    let x_765 : f32 = u_xlat30;
    u_xlat30 = (x_764 * x_765);
    let x_767 : f32 = u_xlat30;
    let x_768 : f32 = u_xlat43;
    u_xlat30 = (x_767 * x_768);
    let x_770 : i32 = u_xlati39;
    let x_772 : vec4<f32> = x_726.x_AdditionalLightsSpotDir[x_770];
    let x_774 : vec3<f32> = u_xlat10;
    u_xlat43 = dot(vec3<f32>(x_772.x, x_772.y, x_772.z), x_774);
    let x_776 : f32 = u_xlat43;
    let x_777 : i32 = u_xlati39;
    let x_779 : f32 = x_726.x_AdditionalLightsAttenuation[x_777].z;
    let x_781 : i32 = u_xlati39;
    let x_783 : f32 = x_726.x_AdditionalLightsAttenuation[x_781].w;
    u_xlat43 = ((x_776 * x_779) + x_783);
    let x_785 : f32 = u_xlat43;
    u_xlat43 = clamp(x_785, 0.0f, 1.0f);
    let x_787 : f32 = u_xlat43;
    let x_788 : f32 = u_xlat43;
    u_xlat43 = (x_787 * x_788);
    let x_790 : f32 = u_xlat30;
    let x_791 : f32 = u_xlat43;
    u_xlat30 = (x_790 * x_791);
    let x_794 : f32 = u_xlat18;
    let x_796 : i32 = u_xlati39;
    let x_798 : vec4<f32> = x_726.x_AdditionalLightsColor[x_796];
    u_xlat11 = (vec3<f32>(x_794, x_794, x_794) * vec3<f32>(x_798.x, x_798.y, x_798.z));
    let x_801 : vec3<f32> = u_xlat3;
    let x_802 : vec3<f32> = u_xlat10;
    u_xlat39 = dot(x_801, x_802);
    let x_804 : f32 = u_xlat39;
    u_xlat39 = clamp(x_804, 0.0f, 1.0f);
    let x_806 : f32 = u_xlat39;
    let x_807 : f32 = u_xlat30;
    u_xlat39 = (x_806 * x_807);
    let x_809 : f32 = u_xlat39;
    let x_811 : vec3<f32> = u_xlat11;
    u_xlat11 = (vec3<f32>(x_809, x_809, x_809) * x_811);
    let x_813 : vec3<f32> = u_xlat21;
    let x_814 : f32 = u_xlat42;
    let x_817 : vec3<f32> = u_xlat4;
    u_xlat21 = ((x_813 * vec3<f32>(x_814, x_814, x_814)) + x_817);
    let x_819 : vec3<f32> = u_xlat21;
    let x_820 : vec3<f32> = u_xlat21;
    u_xlat39 = dot(x_819, x_820);
    let x_822 : f32 = u_xlat39;
    u_xlat39 = max(x_822, 1.17549435e-37f);
    let x_824 : f32 = u_xlat39;
    u_xlat39 = inverseSqrt(x_824);
    let x_826 : f32 = u_xlat39;
    let x_828 : vec3<f32> = u_xlat21;
    u_xlat21 = (vec3<f32>(x_826, x_826, x_826) * x_828);
    let x_830 : vec3<f32> = u_xlat3;
    let x_831 : vec3<f32> = u_xlat21;
    u_xlat39 = dot(x_830, x_831);
    let x_833 : f32 = u_xlat39;
    u_xlat39 = clamp(x_833, 0.0f, 1.0f);
    let x_835 : vec3<f32> = u_xlat10;
    let x_836 : vec3<f32> = u_xlat21;
    u_xlat30 = dot(x_835, x_836);
    let x_838 : f32 = u_xlat30;
    u_xlat30 = clamp(x_838, 0.0f, 1.0f);
    let x_840 : f32 = u_xlat39;
    let x_841 : f32 = u_xlat39;
    u_xlat39 = (x_840 * x_841);
    let x_843 : f32 = u_xlat39;
    let x_845 : f32 = u_xlat9.x;
    u_xlat39 = ((x_843 * x_845) + 1.000010014f);
    let x_848 : f32 = u_xlat30;
    let x_849 : f32 = u_xlat30;
    u_xlat30 = (x_848 * x_849);
    let x_851 : f32 = u_xlat39;
    let x_852 : f32 = u_xlat39;
    u_xlat39 = (x_851 * x_852);
    let x_854 : f32 = u_xlat30;
    u_xlat30 = max(x_854, 0.100000001f);
    let x_856 : f32 = u_xlat39;
    let x_857 : f32 = u_xlat30;
    u_xlat39 = (x_856 * x_857);
    let x_859 : f32 = u_xlat41;
    let x_860 : f32 = u_xlat39;
    u_xlat39 = (x_859 * x_860);
    let x_862 : f32 = u_xlat40;
    let x_863 : f32 = u_xlat39;
    u_xlat39 = (x_862 / x_863);
    let x_865 : vec4<f32> = u_xlat0;
    let x_867 : f32 = u_xlat39;
    let x_870 : vec3<f32> = u_xlat13;
    u_xlat21 = ((vec3<f32>(x_865.x, x_865.y, x_865.z) * vec3<f32>(x_867, x_867, x_867)) + x_870);
    let x_872 : vec3<f32> = u_xlat21;
    let x_873 : vec3<f32> = u_xlat11;
    let x_875 : vec4<f32> = u_xlat8;
    let x_877 : vec3<f32> = ((x_872 * x_873) + vec3<f32>(x_875.x, x_875.y, x_875.z));
    let x_878 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_877.x, x_877.y, x_877.z, x_878.w);

    continuing {
      let x_880 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_880 + bitcast<u32>(1i));
    }
  }
  let x_882 : vec3<f32> = u_xlat5;
  let x_883 : vec3<f32> = u_xlat6;
  let x_886 : vec3<f32> = u_xlat7;
  let x_887 : vec3<f32> = ((x_882 * vec3<f32>(x_883.x, x_883.x, x_883.x)) + x_886);
  let x_888 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_887.x, x_887.y, x_887.z, x_888.w);
  let x_890 : vec4<f32> = u_xlat8;
  let x_892 : vec4<f32> = u_xlat0;
  let x_894 : vec3<f32> = (vec3<f32>(x_890.x, x_890.y, x_890.z) + vec3<f32>(x_892.x, x_892.y, x_892.z));
  let x_895 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_894.x, x_894.y, x_894.z, x_895.w);
  let x_899 : vec3<f32> = u_xlat2;
  let x_901 : vec4<f32> = x_57.x_EmissionColor;
  let x_904 : vec4<f32> = u_xlat0;
  let x_906 : vec3<f32> = ((x_899 * vec3<f32>(x_901.x, x_901.y, x_901.z)) + vec3<f32>(x_904.x, x_904.y, x_904.z));
  let x_907 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_906.x, x_906.y, x_906.z, x_907.w);
  let x_912 : f32 = x_57.x_Surface;
  u_xlatb0 = (x_912 == 1.0f);
  let x_914 : bool = u_xlatb0;
  if (x_914) {
    let x_919 : f32 = u_xlat1.x;
    x_915 = x_919;
  } else {
    x_915 = 1.0f;
  }
  let x_921 : f32 = x_915;
  SV_Target0.w = x_921;
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

