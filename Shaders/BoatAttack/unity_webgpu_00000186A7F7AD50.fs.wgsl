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

@group(0) @binding(6) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

@group(0) @binding(2) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(7) var sampler_EmissionMap : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_168 : UnityPerDraw;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_398 : MainLightShadows;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_752 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlatb36 : bool;
  var u_xlat3 : vec4<f32>;
  var u_xlat38 : f32;
  var u_xlat4 : vec3<f32>;
  var x_114 : f32;
  var x_128 : f32;
  var x_140 : f32;
  var u_xlat36 : f32;
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
  var x_943 : f32;
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
  let x_93 : vec3<f32> = (-(x_87) + x_92);
  let x_94 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_93.x, x_93.y, x_93.z, x_94.w);
  let x_98 : vec4<f32> = u_xlat3;
  let x_100 : vec4<f32> = u_xlat3;
  u_xlat38 = dot(vec3<f32>(x_98.x, x_98.y, x_98.z), vec3<f32>(x_100.x, x_100.y, x_100.z));
  let x_103 : f32 = u_xlat38;
  u_xlat38 = inverseSqrt(x_103);
  let x_105 : f32 = u_xlat38;
  let x_107 : vec4<f32> = u_xlat3;
  let x_109 : vec3<f32> = (vec3<f32>(x_105, x_105, x_105) * vec3<f32>(x_107.x, x_107.y, x_107.z));
  let x_110 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_109.x, x_109.y, x_109.z, x_110.w);
  let x_113 : bool = u_xlatb36;
  if (x_113) {
    let x_118 : f32 = u_xlat3.x;
    x_114 = x_118;
  } else {
    let x_124 : f32 = x_44.unity_MatrixV[0i].z;
    x_114 = x_124;
  }
  let x_125 : f32 = x_114;
  u_xlat4.x = x_125;
  let x_127 : bool = u_xlatb36;
  if (x_127) {
    let x_133 : f32 = u_xlat3.y;
    x_128 = x_133;
  } else {
    let x_136 : f32 = x_44.unity_MatrixV[1i].z;
    x_128 = x_136;
  }
  let x_137 : f32 = x_128;
  u_xlat4.y = x_137;
  let x_139 : bool = u_xlatb36;
  if (x_139) {
    let x_144 : f32 = u_xlat3.z;
    x_140 = x_144;
  } else {
    let x_147 : f32 = x_44.unity_MatrixV[2i].z;
    x_140 = x_147;
  }
  let x_148 : f32 = x_140;
  u_xlat4.z = x_148;
  let x_152 : vec3<f32> = vs_TEXCOORD2;
  let x_153 : vec3<f32> = vs_TEXCOORD2;
  u_xlat36 = dot(x_152, x_153);
  let x_155 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_155);
  let x_157 : f32 = u_xlat36;
  let x_159 : vec3<f32> = vs_TEXCOORD2;
  let x_160 : vec3<f32> = (vec3<f32>(x_157, x_157, x_157) * x_159);
  let x_161 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_160.x, x_160.y, x_160.z, x_161.w);
  u_xlat3.w = 1.0f;
  let x_171 : vec4<f32> = x_168.unity_SHAr;
  let x_172 : vec4<f32> = u_xlat3;
  u_xlat5.x = dot(x_171, x_172);
  let x_177 : vec4<f32> = x_168.unity_SHAg;
  let x_178 : vec4<f32> = u_xlat3;
  u_xlat5.y = dot(x_177, x_178);
  let x_183 : vec4<f32> = x_168.unity_SHAb;
  let x_184 : vec4<f32> = u_xlat3;
  u_xlat5.z = dot(x_183, x_184);
  let x_188 : vec4<f32> = u_xlat3;
  let x_190 : vec4<f32> = u_xlat3;
  u_xlat6 = (vec4<f32>(x_188.y, x_188.z, x_188.z, x_188.x) * vec4<f32>(x_190.x, x_190.y, x_190.z, x_190.z));
  let x_196 : vec4<f32> = x_168.unity_SHBr;
  let x_197 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_196, x_197);
  let x_202 : vec4<f32> = x_168.unity_SHBg;
  let x_203 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_202, x_203);
  let x_208 : vec4<f32> = x_168.unity_SHBb;
  let x_209 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_208, x_209);
  let x_213 : f32 = u_xlat3.y;
  let x_215 : f32 = u_xlat3.y;
  u_xlat36 = (x_213 * x_215);
  let x_218 : f32 = u_xlat3.x;
  let x_220 : f32 = u_xlat3.x;
  let x_222 : f32 = u_xlat36;
  u_xlat36 = ((x_218 * x_220) + -(x_222));
  let x_227 : vec4<f32> = x_168.unity_SHC;
  let x_229 : f32 = u_xlat36;
  let x_232 : vec3<f32> = u_xlat7;
  let x_233 : vec3<f32> = ((vec3<f32>(x_227.x, x_227.y, x_227.z) * vec3<f32>(x_229, x_229, x_229)) + x_232);
  let x_234 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_233.x, x_233.y, x_233.z, x_234.w);
  let x_236 : vec3<f32> = u_xlat5;
  let x_237 : vec4<f32> = u_xlat6;
  u_xlat5 = (x_236 + vec3<f32>(x_237.x, x_237.y, x_237.z));
  let x_240 : vec3<f32> = u_xlat5;
  u_xlat5 = max(x_240, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_245 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_246 : vec2<f32> = vec2<f32>(x_245.x, x_245.y);
  let x_250 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_246.x, x_246.y));
  let x_251 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_250.x, x_250.y, x_251.z, x_251.w);
  let x_253 : vec4<f32> = u_xlat6;
  let x_255 : vec4<f32> = hlslcc_FragCoord;
  let x_257 : vec2<f32> = (vec2<f32>(x_253.x, x_253.y) * vec2<f32>(x_255.x, x_255.y));
  let x_258 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_257.x, x_257.y, x_258.z, x_258.w);
  let x_261 : f32 = u_xlat6.y;
  let x_264 : f32 = x_44.x_ScaleBiasRt.x;
  let x_267 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat36 = ((x_261 * x_264) + x_267);
  let x_269 : f32 = u_xlat36;
  u_xlat6.z = (-(x_269) + 1.0f);
  let x_274 : f32 = x_57.x_Metallic;
  u_xlat36 = ((-(x_274) * 0.959999979f) + 0.959999979f);
  let x_279 : f32 = u_xlat36;
  let x_282 : f32 = x_57.x_Smoothness;
  u_xlat38 = (-(x_279) + x_282);
  let x_285 : f32 = u_xlat36;
  let x_287 : vec4<f32> = u_xlat1;
  u_xlat13 = (vec3<f32>(x_285, x_285, x_285) * vec3<f32>(x_287.y, x_287.z, x_287.w));
  let x_290 : vec4<f32> = u_xlat0;
  let x_293 : vec4<f32> = x_57.x_BaseColor;
  let x_298 : vec3<f32> = ((vec3<f32>(x_290.x, x_290.y, x_290.z) * vec3<f32>(x_293.x, x_293.y, x_293.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_299 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_298.x, x_298.y, x_298.z, x_299.w);
  let x_302 : f32 = x_57.x_Metallic;
  let x_304 : f32 = x_57.x_Metallic;
  let x_306 : f32 = x_57.x_Metallic;
  let x_307 : vec3<f32> = vec3<f32>(x_302, x_304, x_306);
  let x_312 : vec4<f32> = u_xlat0;
  let x_317 : vec3<f32> = ((vec3<f32>(x_307.x, x_307.y, x_307.z) * vec3<f32>(x_312.x, x_312.y, x_312.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_318 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_317.x, x_317.y, x_317.z, x_318.w);
  let x_321 : f32 = x_57.x_Smoothness;
  u_xlat36 = (-(x_321) + 1.0f);
  let x_325 : f32 = u_xlat36;
  let x_326 : f32 = u_xlat36;
  u_xlat39 = (x_325 * x_326);
  let x_328 : f32 = u_xlat39;
  u_xlat39 = max(x_328, 0.0078125f);
  let x_332 : f32 = u_xlat39;
  let x_333 : f32 = u_xlat39;
  u_xlat40 = (x_332 * x_333);
  let x_335 : f32 = u_xlat38;
  u_xlat38 = (x_335 + 1.0f);
  let x_337 : f32 = u_xlat38;
  u_xlat38 = clamp(x_337, 0.0f, 1.0f);
  let x_340 : f32 = u_xlat39;
  u_xlat41 = ((x_340 * 4.0f) + 2.0f);
  let x_350 : vec4<f32> = u_xlat6;
  let x_353 : f32 = x_44.x_GlobalMipBias.x;
  let x_354 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_350.x, x_350.z), x_353);
  u_xlat6.x = x_354.x;
  let x_359 : f32 = u_xlat6.x;
  u_xlat18 = (x_359 + -1.0f);
  let x_364 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_365 : f32 = u_xlat18;
  u_xlat18 = ((x_364 * x_365) + 1.0f);
  let x_369 : f32 = u_xlat6.x;
  u_xlat6.x = min(x_369, 1.0f);
  let x_374 : vec4<f32> = vs_TEXCOORD6;
  let x_375 : vec2<f32> = vec2<f32>(x_374.x, x_374.y);
  let x_377 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_375.x, x_375.y, x_377);
  let x_390 : vec3<f32> = txVec0;
  let x_392 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_390.xy, x_390.z);
  u_xlat30 = x_392;
  let x_400 : f32 = x_398.x_MainLightShadowParams.x;
  u_xlat42 = (-(x_400) + 1.0f);
  let x_403 : f32 = u_xlat30;
  let x_405 : f32 = x_398.x_MainLightShadowParams.x;
  let x_407 : f32 = u_xlat42;
  u_xlat30 = ((x_403 * x_405) + x_407);
  let x_411 : f32 = vs_TEXCOORD6.z;
  u_xlatb42 = (0.0f >= x_411);
  let x_415 : f32 = vs_TEXCOORD6.z;
  u_xlatb7 = (x_415 >= 1.0f);
  let x_417 : bool = u_xlatb42;
  let x_418 : bool = u_xlatb7;
  u_xlatb42 = (x_417 | x_418);
  let x_420 : bool = u_xlatb42;
  let x_421 : f32 = u_xlat30;
  u_xlat30 = select(x_421, 1.0f, x_420);
  let x_423 : vec3<f32> = vs_TEXCOORD1;
  let x_425 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat7 = (x_423 + -(x_425));
  let x_428 : vec3<f32> = u_xlat7;
  let x_429 : vec3<f32> = u_xlat7;
  u_xlat42 = dot(x_428, x_429);
  let x_431 : f32 = u_xlat42;
  let x_433 : f32 = x_398.x_MainLightShadowParams.z;
  let x_436 : f32 = x_398.x_MainLightShadowParams.w;
  u_xlat42 = ((x_431 * x_433) + x_436);
  let x_438 : f32 = u_xlat42;
  u_xlat42 = clamp(x_438, 0.0f, 1.0f);
  let x_440 : f32 = u_xlat30;
  u_xlat7.x = (-(x_440) + 1.0f);
  let x_444 : f32 = u_xlat42;
  let x_446 : f32 = u_xlat7.x;
  let x_448 : f32 = u_xlat30;
  u_xlat30 = ((x_444 * x_446) + x_448);
  let x_450 : f32 = u_xlat18;
  let x_454 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat7 = (vec3<f32>(x_450, x_450, x_450) * vec3<f32>(x_454.x, x_454.y, x_454.z));
  let x_457 : vec3<f32> = u_xlat4;
  let x_459 : vec4<f32> = u_xlat3;
  u_xlat42 = dot(-(x_457), vec3<f32>(x_459.x, x_459.y, x_459.z));
  let x_462 : f32 = u_xlat42;
  let x_463 : f32 = u_xlat42;
  u_xlat42 = (x_462 + x_463);
  let x_466 : vec4<f32> = u_xlat3;
  let x_468 : f32 = u_xlat42;
  let x_472 : vec3<f32> = u_xlat4;
  let x_474 : vec3<f32> = ((vec3<f32>(x_466.x, x_466.y, x_466.z) * -(vec3<f32>(x_468, x_468, x_468))) + -(x_472));
  let x_475 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_474.x, x_474.y, x_474.z, x_475.w);
  let x_477 : vec4<f32> = u_xlat3;
  let x_479 : vec3<f32> = u_xlat4;
  u_xlat42 = dot(vec3<f32>(x_477.x, x_477.y, x_477.z), x_479);
  let x_481 : f32 = u_xlat42;
  u_xlat42 = clamp(x_481, 0.0f, 1.0f);
  let x_483 : f32 = u_xlat42;
  u_xlat42 = (-(x_483) + 1.0f);
  let x_486 : f32 = u_xlat42;
  let x_487 : f32 = u_xlat42;
  u_xlat42 = (x_486 * x_487);
  let x_489 : f32 = u_xlat42;
  let x_490 : f32 = u_xlat42;
  u_xlat42 = (x_489 * x_490);
  let x_493 : f32 = u_xlat36;
  u_xlat43 = ((-(x_493) * 0.699999988f) + 1.700000048f);
  let x_499 : f32 = u_xlat36;
  let x_500 : f32 = u_xlat43;
  u_xlat36 = (x_499 * x_500);
  let x_502 : f32 = u_xlat36;
  u_xlat36 = (x_502 * 6.0f);
  let x_513 : vec4<f32> = u_xlat8;
  let x_515 : f32 = u_xlat36;
  let x_516 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_513.x, x_513.y, x_513.z), x_515);
  u_xlat8 = x_516;
  let x_518 : f32 = u_xlat8.w;
  u_xlat36 = (x_518 + -1.0f);
  let x_521 : f32 = x_168.unity_SpecCube0_HDR.w;
  let x_522 : f32 = u_xlat36;
  u_xlat36 = ((x_521 * x_522) + 1.0f);
  let x_525 : f32 = u_xlat36;
  u_xlat36 = max(x_525, 0.0f);
  let x_527 : f32 = u_xlat36;
  u_xlat36 = log2(x_527);
  let x_529 : f32 = u_xlat36;
  let x_531 : f32 = x_168.unity_SpecCube0_HDR.y;
  u_xlat36 = (x_529 * x_531);
  let x_533 : f32 = u_xlat36;
  u_xlat36 = exp2(x_533);
  let x_535 : f32 = u_xlat36;
  let x_537 : f32 = x_168.unity_SpecCube0_HDR.x;
  u_xlat36 = (x_535 * x_537);
  let x_539 : vec4<f32> = u_xlat8;
  let x_541 : f32 = u_xlat36;
  let x_543 : vec3<f32> = (vec3<f32>(x_539.x, x_539.y, x_539.z) * vec3<f32>(x_541, x_541, x_541));
  let x_544 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_543.x, x_543.y, x_543.z, x_544.w);
  let x_548 : f32 = u_xlat39;
  let x_550 : f32 = u_xlat39;
  u_xlat9 = ((vec2<f32>(x_548, x_548) * vec2<f32>(x_550, x_550)) + vec2<f32>(-1.0f, 1.0f));
  let x_556 : f32 = u_xlat9.y;
  u_xlat36 = (1.0f / x_556);
  let x_559 : vec4<f32> = u_xlat0;
  let x_562 : f32 = u_xlat38;
  u_xlat21 = (-(vec3<f32>(x_559.x, x_559.y, x_559.z)) + vec3<f32>(x_562, x_562, x_562));
  let x_565 : f32 = u_xlat42;
  let x_567 : vec3<f32> = u_xlat21;
  let x_569 : vec4<f32> = u_xlat0;
  u_xlat21 = ((vec3<f32>(x_565, x_565, x_565) * x_567) + vec3<f32>(x_569.x, x_569.y, x_569.z));
  let x_572 : f32 = u_xlat36;
  let x_574 : vec3<f32> = u_xlat21;
  u_xlat21 = (vec3<f32>(x_572, x_572, x_572) * x_574);
  let x_576 : vec4<f32> = u_xlat8;
  let x_578 : vec3<f32> = u_xlat21;
  let x_579 : vec3<f32> = (vec3<f32>(x_576.x, x_576.y, x_576.z) * x_578);
  let x_580 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_579.x, x_579.y, x_579.z, x_580.w);
  let x_582 : vec3<f32> = u_xlat5;
  let x_583 : vec3<f32> = u_xlat13;
  let x_585 : vec4<f32> = u_xlat8;
  u_xlat5 = ((x_582 * x_583) + vec3<f32>(x_585.x, x_585.y, x_585.z));
  let x_588 : f32 = u_xlat30;
  let x_591 : f32 = x_168.unity_LightData.z;
  u_xlat36 = (x_588 * x_591);
  let x_593 : vec4<f32> = u_xlat3;
  let x_596 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat38 = dot(vec3<f32>(x_593.x, x_593.y, x_593.z), vec3<f32>(x_596.x, x_596.y, x_596.z));
  let x_599 : f32 = u_xlat38;
  u_xlat38 = clamp(x_599, 0.0f, 1.0f);
  let x_601 : f32 = u_xlat36;
  let x_602 : f32 = u_xlat38;
  u_xlat36 = (x_601 * x_602);
  let x_604 : f32 = u_xlat36;
  let x_606 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_604, x_604, x_604) * x_606);
  let x_608 : vec3<f32> = u_xlat4;
  let x_610 : vec4<f32> = x_44.x_MainLightPosition;
  let x_612 : vec3<f32> = (x_608 + vec3<f32>(x_610.x, x_610.y, x_610.z));
  let x_613 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_612.x, x_612.y, x_612.z, x_613.w);
  let x_615 : vec4<f32> = u_xlat8;
  let x_617 : vec4<f32> = u_xlat8;
  u_xlat36 = dot(vec3<f32>(x_615.x, x_615.y, x_615.z), vec3<f32>(x_617.x, x_617.y, x_617.z));
  let x_620 : f32 = u_xlat36;
  u_xlat36 = max(x_620, 1.17549435e-37f);
  let x_623 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_623);
  let x_625 : f32 = u_xlat36;
  let x_627 : vec4<f32> = u_xlat8;
  let x_629 : vec3<f32> = (vec3<f32>(x_625, x_625, x_625) * vec3<f32>(x_627.x, x_627.y, x_627.z));
  let x_630 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_629.x, x_629.y, x_629.z, x_630.w);
  let x_632 : vec4<f32> = u_xlat3;
  let x_634 : vec4<f32> = u_xlat8;
  u_xlat36 = dot(vec3<f32>(x_632.x, x_632.y, x_632.z), vec3<f32>(x_634.x, x_634.y, x_634.z));
  let x_637 : f32 = u_xlat36;
  u_xlat36 = clamp(x_637, 0.0f, 1.0f);
  let x_640 : vec4<f32> = x_44.x_MainLightPosition;
  let x_642 : vec4<f32> = u_xlat8;
  u_xlat38 = dot(vec3<f32>(x_640.x, x_640.y, x_640.z), vec3<f32>(x_642.x, x_642.y, x_642.z));
  let x_645 : f32 = u_xlat38;
  u_xlat38 = clamp(x_645, 0.0f, 1.0f);
  let x_647 : f32 = u_xlat36;
  let x_648 : f32 = u_xlat36;
  u_xlat36 = (x_647 * x_648);
  let x_650 : f32 = u_xlat36;
  let x_652 : f32 = u_xlat9.x;
  u_xlat36 = ((x_650 * x_652) + 1.000010014f);
  let x_656 : f32 = u_xlat38;
  let x_657 : f32 = u_xlat38;
  u_xlat38 = (x_656 * x_657);
  let x_659 : f32 = u_xlat36;
  let x_660 : f32 = u_xlat36;
  u_xlat36 = (x_659 * x_660);
  let x_662 : f32 = u_xlat38;
  u_xlat38 = max(x_662, 0.100000001f);
  let x_665 : f32 = u_xlat36;
  let x_666 : f32 = u_xlat38;
  u_xlat36 = (x_665 * x_666);
  let x_668 : f32 = u_xlat41;
  let x_669 : f32 = u_xlat36;
  u_xlat36 = (x_668 * x_669);
  let x_671 : f32 = u_xlat40;
  let x_672 : f32 = u_xlat36;
  u_xlat36 = (x_671 / x_672);
  let x_674 : vec4<f32> = u_xlat0;
  let x_676 : f32 = u_xlat36;
  let x_679 : vec3<f32> = u_xlat13;
  let x_680 : vec3<f32> = ((vec3<f32>(x_674.x, x_674.y, x_674.z) * vec3<f32>(x_676, x_676, x_676)) + x_679);
  let x_681 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_680.x, x_680.y, x_680.z, x_681.w);
  let x_683 : vec3<f32> = u_xlat7;
  let x_684 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_683 * vec3<f32>(x_684.x, x_684.y, x_684.z));
  let x_688 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_690 : f32 = x_168.unity_LightData.y;
  u_xlat36 = min(x_688, x_690);
  let x_694 : f32 = u_xlat36;
  u_xlatu36 = bitcast<u32>(i32(x_694));
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_706 : u32 = u_xlatu_loop_1;
    let x_707 : u32 = u_xlatu36;
    if ((x_706 < x_707)) {
    } else {
      break;
    }
    let x_710 : u32 = u_xlatu_loop_1;
    u_xlatu39 = (x_710 >> 2u);
    let x_714 : u32 = u_xlatu_loop_1;
    u_xlati30 = bitcast<i32>((x_714 & 3u));
    let x_717 : u32 = u_xlatu39;
    let x_720 : vec4<f32> = x_168.unity_LightIndices[bitcast<i32>(x_717)];
    let x_730 : i32 = u_xlati30;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_735 : vec4<u32> = indexable[x_730];
    u_xlat39 = dot(x_720, bitcast<vec4<f32>>(x_735));
    let x_739 : f32 = u_xlat39;
    u_xlati39 = i32(x_739);
    let x_741 : vec3<f32> = vs_TEXCOORD1;
    let x_753 : i32 = u_xlati39;
    let x_755 : vec4<f32> = x_752.x_AdditionalLightsPosition[x_753];
    let x_758 : i32 = u_xlati39;
    let x_760 : vec4<f32> = x_752.x_AdditionalLightsPosition[x_758];
    u_xlat21 = ((-(x_741) * vec3<f32>(x_755.w, x_755.w, x_755.w)) + vec3<f32>(x_760.x, x_760.y, x_760.z));
    let x_763 : vec3<f32> = u_xlat21;
    let x_764 : vec3<f32> = u_xlat21;
    u_xlat30 = dot(x_763, x_764);
    let x_766 : f32 = u_xlat30;
    u_xlat30 = max(x_766, 6.10351562e-05f);
    let x_769 : f32 = u_xlat30;
    u_xlat42 = inverseSqrt(x_769);
    let x_772 : f32 = u_xlat42;
    let x_774 : vec3<f32> = u_xlat21;
    u_xlat10 = (vec3<f32>(x_772, x_772, x_772) * x_774);
    let x_776 : f32 = u_xlat30;
    u_xlat43 = (1.0f / x_776);
    let x_778 : f32 = u_xlat30;
    let x_779 : i32 = u_xlati39;
    let x_781 : f32 = x_752.x_AdditionalLightsAttenuation[x_779].x;
    u_xlat30 = (x_778 * x_781);
    let x_783 : f32 = u_xlat30;
    let x_785 : f32 = u_xlat30;
    u_xlat30 = ((-(x_783) * x_785) + 1.0f);
    let x_788 : f32 = u_xlat30;
    u_xlat30 = max(x_788, 0.0f);
    let x_790 : f32 = u_xlat30;
    let x_791 : f32 = u_xlat30;
    u_xlat30 = (x_790 * x_791);
    let x_793 : f32 = u_xlat30;
    let x_794 : f32 = u_xlat43;
    u_xlat30 = (x_793 * x_794);
    let x_796 : i32 = u_xlati39;
    let x_798 : vec4<f32> = x_752.x_AdditionalLightsSpotDir[x_796];
    let x_800 : vec3<f32> = u_xlat10;
    u_xlat43 = dot(vec3<f32>(x_798.x, x_798.y, x_798.z), x_800);
    let x_802 : f32 = u_xlat43;
    let x_803 : i32 = u_xlati39;
    let x_805 : f32 = x_752.x_AdditionalLightsAttenuation[x_803].z;
    let x_807 : i32 = u_xlati39;
    let x_809 : f32 = x_752.x_AdditionalLightsAttenuation[x_807].w;
    u_xlat43 = ((x_802 * x_805) + x_809);
    let x_811 : f32 = u_xlat43;
    u_xlat43 = clamp(x_811, 0.0f, 1.0f);
    let x_813 : f32 = u_xlat43;
    let x_814 : f32 = u_xlat43;
    u_xlat43 = (x_813 * x_814);
    let x_816 : f32 = u_xlat30;
    let x_817 : f32 = u_xlat43;
    u_xlat30 = (x_816 * x_817);
    let x_820 : f32 = u_xlat18;
    let x_822 : i32 = u_xlati39;
    let x_824 : vec4<f32> = x_752.x_AdditionalLightsColor[x_822];
    u_xlat11 = (vec3<f32>(x_820, x_820, x_820) * vec3<f32>(x_824.x, x_824.y, x_824.z));
    let x_827 : vec4<f32> = u_xlat3;
    let x_829 : vec3<f32> = u_xlat10;
    u_xlat39 = dot(vec3<f32>(x_827.x, x_827.y, x_827.z), x_829);
    let x_831 : f32 = u_xlat39;
    u_xlat39 = clamp(x_831, 0.0f, 1.0f);
    let x_833 : f32 = u_xlat39;
    let x_834 : f32 = u_xlat30;
    u_xlat39 = (x_833 * x_834);
    let x_836 : f32 = u_xlat39;
    let x_838 : vec3<f32> = u_xlat11;
    u_xlat11 = (vec3<f32>(x_836, x_836, x_836) * x_838);
    let x_840 : vec3<f32> = u_xlat21;
    let x_841 : f32 = u_xlat42;
    let x_844 : vec3<f32> = u_xlat4;
    u_xlat21 = ((x_840 * vec3<f32>(x_841, x_841, x_841)) + x_844);
    let x_846 : vec3<f32> = u_xlat21;
    let x_847 : vec3<f32> = u_xlat21;
    u_xlat39 = dot(x_846, x_847);
    let x_849 : f32 = u_xlat39;
    u_xlat39 = max(x_849, 1.17549435e-37f);
    let x_851 : f32 = u_xlat39;
    u_xlat39 = inverseSqrt(x_851);
    let x_853 : f32 = u_xlat39;
    let x_855 : vec3<f32> = u_xlat21;
    u_xlat21 = (vec3<f32>(x_853, x_853, x_853) * x_855);
    let x_857 : vec4<f32> = u_xlat3;
    let x_859 : vec3<f32> = u_xlat21;
    u_xlat39 = dot(vec3<f32>(x_857.x, x_857.y, x_857.z), x_859);
    let x_861 : f32 = u_xlat39;
    u_xlat39 = clamp(x_861, 0.0f, 1.0f);
    let x_863 : vec3<f32> = u_xlat10;
    let x_864 : vec3<f32> = u_xlat21;
    u_xlat30 = dot(x_863, x_864);
    let x_866 : f32 = u_xlat30;
    u_xlat30 = clamp(x_866, 0.0f, 1.0f);
    let x_868 : f32 = u_xlat39;
    let x_869 : f32 = u_xlat39;
    u_xlat39 = (x_868 * x_869);
    let x_871 : f32 = u_xlat39;
    let x_873 : f32 = u_xlat9.x;
    u_xlat39 = ((x_871 * x_873) + 1.000010014f);
    let x_876 : f32 = u_xlat30;
    let x_877 : f32 = u_xlat30;
    u_xlat30 = (x_876 * x_877);
    let x_879 : f32 = u_xlat39;
    let x_880 : f32 = u_xlat39;
    u_xlat39 = (x_879 * x_880);
    let x_882 : f32 = u_xlat30;
    u_xlat30 = max(x_882, 0.100000001f);
    let x_884 : f32 = u_xlat39;
    let x_885 : f32 = u_xlat30;
    u_xlat39 = (x_884 * x_885);
    let x_887 : f32 = u_xlat41;
    let x_888 : f32 = u_xlat39;
    u_xlat39 = (x_887 * x_888);
    let x_890 : f32 = u_xlat40;
    let x_891 : f32 = u_xlat39;
    u_xlat39 = (x_890 / x_891);
    let x_893 : vec4<f32> = u_xlat0;
    let x_895 : f32 = u_xlat39;
    let x_898 : vec3<f32> = u_xlat13;
    u_xlat21 = ((vec3<f32>(x_893.x, x_893.y, x_893.z) * vec3<f32>(x_895, x_895, x_895)) + x_898);
    let x_900 : vec3<f32> = u_xlat21;
    let x_901 : vec3<f32> = u_xlat11;
    let x_903 : vec4<f32> = u_xlat8;
    let x_905 : vec3<f32> = ((x_900 * x_901) + vec3<f32>(x_903.x, x_903.y, x_903.z));
    let x_906 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_905.x, x_905.y, x_905.z, x_906.w);

    continuing {
      let x_908 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_908 + bitcast<u32>(1i));
    }
  }
  let x_910 : vec3<f32> = u_xlat5;
  let x_911 : vec4<f32> = u_xlat6;
  let x_914 : vec3<f32> = u_xlat7;
  let x_915 : vec3<f32> = ((x_910 * vec3<f32>(x_911.x, x_911.x, x_911.x)) + x_914);
  let x_916 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_915.x, x_915.y, x_915.z, x_916.w);
  let x_918 : vec4<f32> = u_xlat8;
  let x_920 : vec4<f32> = u_xlat0;
  let x_922 : vec3<f32> = (vec3<f32>(x_918.x, x_918.y, x_918.z) + vec3<f32>(x_920.x, x_920.y, x_920.z));
  let x_923 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_922.x, x_922.y, x_922.z, x_923.w);
  let x_927 : vec3<f32> = u_xlat2;
  let x_929 : vec4<f32> = x_57.x_EmissionColor;
  let x_932 : vec4<f32> = u_xlat0;
  let x_934 : vec3<f32> = ((x_927 * vec3<f32>(x_929.x, x_929.y, x_929.z)) + vec3<f32>(x_932.x, x_932.y, x_932.z));
  let x_935 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_934.x, x_934.y, x_934.z, x_935.w);
  let x_940 : f32 = x_57.x_Surface;
  u_xlatb0 = (x_940 == 1.0f);
  let x_942 : bool = u_xlatb0;
  if (x_942) {
    let x_947 : f32 = u_xlat1.x;
    x_943 = x_947;
  } else {
    x_943 = 1.0f;
  }
  let x_949 : f32 = x_943;
  SV_Target0.w = x_949;
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

