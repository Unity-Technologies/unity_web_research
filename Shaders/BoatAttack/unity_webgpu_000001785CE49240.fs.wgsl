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

@group(0) @binding(7) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(6) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_311 : MainLightShadows;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_441 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_672 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb33 : bool;
  var u_xlat2 : vec3<f32>;
  var u_xlat35 : f32;
  var u_xlat3 : vec3<f32>;
  var x_96 : f32;
  var x_110 : f32;
  var x_122 : f32;
  var u_xlat33 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat12 : vec3<f32>;
  var u_xlat36 : f32;
  var u_xlat37 : f32;
  var u_xlat16 : f32;
  var u_xlat27 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat38 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlatb6 : bool;
  var u_xlatb17 : bool;
  var u_xlat17 : f32;
  var u_xlat39 : f32;
  var u_xlat7 : vec4<f32>;
  var u_xlat40 : f32;
  var u_xlat8 : vec2<f32>;
  var u_xlat19 : vec3<f32>;
  var u_xlatu33 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu36 : u32;
  var u_xlati38 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati36 : i32;
  var u_xlat9 : vec3<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_851 : f32;
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
  u_xlatb33 = (x_69 == 0.0f);
  let x_76 : vec3<f32> = vs_TEXCOORD1;
  let x_81 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_76) + x_81);
  let x_85 : vec3<f32> = u_xlat2;
  let x_86 : vec3<f32> = u_xlat2;
  u_xlat35 = dot(x_85, x_86);
  let x_88 : f32 = u_xlat35;
  u_xlat35 = inverseSqrt(x_88);
  let x_90 : f32 = u_xlat35;
  let x_92 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_90, x_90, x_90) * x_92);
  let x_95 : bool = u_xlatb33;
  if (x_95) {
    let x_100 : f32 = u_xlat2.x;
    x_96 = x_100;
  } else {
    let x_106 : f32 = x_44.unity_MatrixV[0i].z;
    x_96 = x_106;
  }
  let x_107 : f32 = x_96;
  u_xlat3.x = x_107;
  let x_109 : bool = u_xlatb33;
  if (x_109) {
    let x_115 : f32 = u_xlat2.y;
    x_110 = x_115;
  } else {
    let x_118 : f32 = x_44.unity_MatrixV[1i].z;
    x_110 = x_118;
  }
  let x_119 : f32 = x_110;
  u_xlat3.y = x_119;
  let x_121 : bool = u_xlatb33;
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
  u_xlat33 = dot(x_134, x_135);
  let x_137 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_137);
  let x_139 : f32 = u_xlat33;
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
  u_xlat33 = ((x_174 * x_177) + x_180);
  let x_182 : f32 = u_xlat33;
  u_xlat5.z = (-(x_182) + 1.0f);
  let x_187 : f32 = x_57.x_Metallic;
  u_xlat33 = ((-(x_187) * 0.959999979f) + 0.959999979f);
  let x_192 : f32 = u_xlat33;
  let x_195 : f32 = x_57.x_Smoothness;
  u_xlat35 = (-(x_192) + x_195);
  let x_198 : f32 = u_xlat33;
  let x_200 : vec4<f32> = u_xlat1;
  u_xlat12 = (vec3<f32>(x_198, x_198, x_198) * vec3<f32>(x_200.y, x_200.z, x_200.w));
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
  u_xlat33 = (-(x_234) + 1.0f);
  let x_238 : f32 = u_xlat33;
  let x_239 : f32 = u_xlat33;
  u_xlat36 = (x_238 * x_239);
  let x_241 : f32 = u_xlat36;
  u_xlat36 = max(x_241, 0.0078125f);
  let x_245 : f32 = u_xlat36;
  let x_246 : f32 = u_xlat36;
  u_xlat37 = (x_245 * x_246);
  let x_248 : f32 = u_xlat35;
  u_xlat35 = (x_248 + 1.0f);
  let x_250 : f32 = u_xlat35;
  u_xlat35 = clamp(x_250, 0.0f, 1.0f);
  let x_253 : f32 = u_xlat36;
  u_xlat16 = ((x_253 * 4.0f) + 2.0f);
  let x_263 : vec3<f32> = u_xlat5;
  let x_266 : f32 = x_44.x_GlobalMipBias.x;
  let x_267 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_263.x, x_263.z), x_266);
  u_xlat5.x = x_267.x;
  let x_272 : f32 = u_xlat5.x;
  u_xlat27 = (x_272 + -1.0f);
  let x_277 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_278 : f32 = u_xlat27;
  u_xlat27 = ((x_277 * x_278) + 1.0f);
  let x_282 : f32 = u_xlat5.x;
  u_xlat5.x = min(x_282, 1.0f);
  let x_287 : vec4<f32> = vs_TEXCOORD6;
  let x_288 : vec2<f32> = vec2<f32>(x_287.x, x_287.y);
  let x_290 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_288.x, x_288.y, x_290);
  let x_303 : vec3<f32> = txVec0;
  let x_305 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_303.xy, x_303.z);
  u_xlat38 = x_305;
  let x_313 : f32 = x_311.x_MainLightShadowParams.x;
  u_xlat6.x = (-(x_313) + 1.0f);
  let x_317 : f32 = u_xlat38;
  let x_319 : f32 = x_311.x_MainLightShadowParams.x;
  let x_322 : f32 = u_xlat6.x;
  u_xlat38 = ((x_317 * x_319) + x_322);
  let x_326 : f32 = vs_TEXCOORD6.z;
  u_xlatb6 = (0.0f >= x_326);
  let x_330 : f32 = vs_TEXCOORD6.z;
  u_xlatb17 = (x_330 >= 1.0f);
  let x_332 : bool = u_xlatb17;
  let x_333 : bool = u_xlatb6;
  u_xlatb6 = (x_332 | x_333);
  let x_335 : bool = u_xlatb6;
  let x_336 : f32 = u_xlat38;
  u_xlat38 = select(x_336, 1.0f, x_335);
  let x_338 : vec3<f32> = vs_TEXCOORD1;
  let x_340 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat6 = (x_338 + -(x_340));
  let x_343 : vec3<f32> = u_xlat6;
  let x_344 : vec3<f32> = u_xlat6;
  u_xlat6.x = dot(x_343, x_344);
  let x_348 : f32 = u_xlat6.x;
  let x_350 : f32 = x_311.x_MainLightShadowParams.z;
  let x_353 : f32 = x_311.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_348 * x_350) + x_353);
  let x_357 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_357, 0.0f, 1.0f);
  let x_361 : f32 = u_xlat38;
  u_xlat17 = (-(x_361) + 1.0f);
  let x_365 : f32 = u_xlat6.x;
  let x_366 : f32 = u_xlat17;
  let x_368 : f32 = u_xlat38;
  u_xlat38 = ((x_365 * x_366) + x_368);
  let x_370 : f32 = u_xlat27;
  let x_374 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat6 = (vec3<f32>(x_370, x_370, x_370) * vec3<f32>(x_374.x, x_374.y, x_374.z));
  let x_378 : vec3<f32> = u_xlat3;
  let x_380 : vec3<f32> = u_xlat2;
  u_xlat39 = dot(-(x_378), x_380);
  let x_382 : f32 = u_xlat39;
  let x_383 : f32 = u_xlat39;
  u_xlat39 = (x_382 + x_383);
  let x_386 : vec3<f32> = u_xlat2;
  let x_387 : f32 = u_xlat39;
  let x_391 : vec3<f32> = u_xlat3;
  let x_393 : vec3<f32> = ((x_386 * -(vec3<f32>(x_387, x_387, x_387))) + -(x_391));
  let x_394 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_393.x, x_393.y, x_393.z, x_394.w);
  let x_396 : vec3<f32> = u_xlat2;
  let x_397 : vec3<f32> = u_xlat3;
  u_xlat39 = dot(x_396, x_397);
  let x_399 : f32 = u_xlat39;
  u_xlat39 = clamp(x_399, 0.0f, 1.0f);
  let x_401 : f32 = u_xlat39;
  u_xlat39 = (-(x_401) + 1.0f);
  let x_404 : f32 = u_xlat39;
  let x_405 : f32 = u_xlat39;
  u_xlat39 = (x_404 * x_405);
  let x_407 : f32 = u_xlat39;
  let x_408 : f32 = u_xlat39;
  u_xlat39 = (x_407 * x_408);
  let x_411 : f32 = u_xlat33;
  u_xlat40 = ((-(x_411) * 0.699999988f) + 1.700000048f);
  let x_417 : f32 = u_xlat33;
  let x_418 : f32 = u_xlat40;
  u_xlat33 = (x_417 * x_418);
  let x_420 : f32 = u_xlat33;
  u_xlat33 = (x_420 * 6.0f);
  let x_431 : vec4<f32> = u_xlat7;
  let x_433 : f32 = u_xlat33;
  let x_434 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_431.x, x_431.y, x_431.z), x_433);
  u_xlat7 = x_434;
  let x_436 : f32 = u_xlat7.w;
  u_xlat33 = (x_436 + -1.0f);
  let x_443 : f32 = x_441.unity_SpecCube0_HDR.w;
  let x_444 : f32 = u_xlat33;
  u_xlat33 = ((x_443 * x_444) + 1.0f);
  let x_447 : f32 = u_xlat33;
  u_xlat33 = max(x_447, 0.0f);
  let x_449 : f32 = u_xlat33;
  u_xlat33 = log2(x_449);
  let x_451 : f32 = u_xlat33;
  let x_453 : f32 = x_441.unity_SpecCube0_HDR.y;
  u_xlat33 = (x_451 * x_453);
  let x_455 : f32 = u_xlat33;
  u_xlat33 = exp2(x_455);
  let x_457 : f32 = u_xlat33;
  let x_459 : f32 = x_441.unity_SpecCube0_HDR.x;
  u_xlat33 = (x_457 * x_459);
  let x_461 : vec4<f32> = u_xlat7;
  let x_463 : f32 = u_xlat33;
  let x_465 : vec3<f32> = (vec3<f32>(x_461.x, x_461.y, x_461.z) * vec3<f32>(x_463, x_463, x_463));
  let x_466 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_465.x, x_465.y, x_465.z, x_466.w);
  let x_470 : f32 = u_xlat36;
  let x_472 : f32 = u_xlat36;
  u_xlat8 = ((vec2<f32>(x_470, x_470) * vec2<f32>(x_472, x_472)) + vec2<f32>(-1.0f, 1.0f));
  let x_478 : f32 = u_xlat8.y;
  u_xlat33 = (1.0f / x_478);
  let x_481 : vec4<f32> = u_xlat0;
  let x_484 : f32 = u_xlat35;
  u_xlat19 = (-(vec3<f32>(x_481.x, x_481.y, x_481.z)) + vec3<f32>(x_484, x_484, x_484));
  let x_487 : f32 = u_xlat39;
  let x_489 : vec3<f32> = u_xlat19;
  let x_491 : vec4<f32> = u_xlat0;
  u_xlat19 = ((vec3<f32>(x_487, x_487, x_487) * x_489) + vec3<f32>(x_491.x, x_491.y, x_491.z));
  let x_494 : f32 = u_xlat33;
  let x_496 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_494, x_494, x_494) * x_496);
  let x_498 : vec4<f32> = u_xlat7;
  let x_500 : vec3<f32> = u_xlat19;
  let x_501 : vec3<f32> = (vec3<f32>(x_498.x, x_498.y, x_498.z) * x_500);
  let x_502 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_501.x, x_501.y, x_501.z, x_502.w);
  let x_504 : vec3<f32> = u_xlat4;
  let x_505 : vec3<f32> = u_xlat12;
  let x_507 : vec4<f32> = u_xlat7;
  u_xlat4 = ((x_504 * x_505) + vec3<f32>(x_507.x, x_507.y, x_507.z));
  let x_510 : f32 = u_xlat38;
  let x_513 : f32 = x_441.unity_LightData.z;
  u_xlat33 = (x_510 * x_513);
  let x_515 : vec3<f32> = u_xlat2;
  let x_517 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat35 = dot(x_515, vec3<f32>(x_517.x, x_517.y, x_517.z));
  let x_520 : f32 = u_xlat35;
  u_xlat35 = clamp(x_520, 0.0f, 1.0f);
  let x_522 : f32 = u_xlat33;
  let x_523 : f32 = u_xlat35;
  u_xlat33 = (x_522 * x_523);
  let x_525 : f32 = u_xlat33;
  let x_527 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_525, x_525, x_525) * x_527);
  let x_529 : vec3<f32> = u_xlat3;
  let x_531 : vec4<f32> = x_44.x_MainLightPosition;
  let x_533 : vec3<f32> = (x_529 + vec3<f32>(x_531.x, x_531.y, x_531.z));
  let x_534 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_533.x, x_533.y, x_533.z, x_534.w);
  let x_536 : vec4<f32> = u_xlat7;
  let x_538 : vec4<f32> = u_xlat7;
  u_xlat33 = dot(vec3<f32>(x_536.x, x_536.y, x_536.z), vec3<f32>(x_538.x, x_538.y, x_538.z));
  let x_541 : f32 = u_xlat33;
  u_xlat33 = max(x_541, 1.17549435e-37f);
  let x_544 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_544);
  let x_546 : f32 = u_xlat33;
  let x_548 : vec4<f32> = u_xlat7;
  let x_550 : vec3<f32> = (vec3<f32>(x_546, x_546, x_546) * vec3<f32>(x_548.x, x_548.y, x_548.z));
  let x_551 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_550.x, x_550.y, x_550.z, x_551.w);
  let x_553 : vec3<f32> = u_xlat2;
  let x_554 : vec4<f32> = u_xlat7;
  u_xlat33 = dot(x_553, vec3<f32>(x_554.x, x_554.y, x_554.z));
  let x_557 : f32 = u_xlat33;
  u_xlat33 = clamp(x_557, 0.0f, 1.0f);
  let x_560 : vec4<f32> = x_44.x_MainLightPosition;
  let x_562 : vec4<f32> = u_xlat7;
  u_xlat35 = dot(vec3<f32>(x_560.x, x_560.y, x_560.z), vec3<f32>(x_562.x, x_562.y, x_562.z));
  let x_565 : f32 = u_xlat35;
  u_xlat35 = clamp(x_565, 0.0f, 1.0f);
  let x_567 : f32 = u_xlat33;
  let x_568 : f32 = u_xlat33;
  u_xlat33 = (x_567 * x_568);
  let x_570 : f32 = u_xlat33;
  let x_572 : f32 = u_xlat8.x;
  u_xlat33 = ((x_570 * x_572) + 1.000010014f);
  let x_576 : f32 = u_xlat35;
  let x_577 : f32 = u_xlat35;
  u_xlat35 = (x_576 * x_577);
  let x_579 : f32 = u_xlat33;
  let x_580 : f32 = u_xlat33;
  u_xlat33 = (x_579 * x_580);
  let x_582 : f32 = u_xlat35;
  u_xlat35 = max(x_582, 0.100000001f);
  let x_585 : f32 = u_xlat33;
  let x_586 : f32 = u_xlat35;
  u_xlat33 = (x_585 * x_586);
  let x_588 : f32 = u_xlat16;
  let x_589 : f32 = u_xlat33;
  u_xlat33 = (x_588 * x_589);
  let x_591 : f32 = u_xlat37;
  let x_592 : f32 = u_xlat33;
  u_xlat33 = (x_591 / x_592);
  let x_594 : vec4<f32> = u_xlat0;
  let x_596 : f32 = u_xlat33;
  let x_599 : vec3<f32> = u_xlat12;
  let x_600 : vec3<f32> = ((vec3<f32>(x_594.x, x_594.y, x_594.z) * vec3<f32>(x_596, x_596, x_596)) + x_599);
  let x_601 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_600.x, x_600.y, x_600.z, x_601.w);
  let x_603 : vec3<f32> = u_xlat6;
  let x_604 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_603 * vec3<f32>(x_604.x, x_604.y, x_604.z));
  let x_608 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_610 : f32 = x_441.unity_LightData.y;
  u_xlat33 = min(x_608, x_610);
  let x_614 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_614));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_626 : u32 = u_xlatu_loop_1;
    let x_627 : u32 = u_xlatu33;
    if ((x_626 < x_627)) {
    } else {
      break;
    }
    let x_630 : u32 = u_xlatu_loop_1;
    u_xlatu36 = (x_630 >> 2u);
    let x_634 : u32 = u_xlatu_loop_1;
    u_xlati38 = bitcast<i32>((x_634 & 3u));
    let x_637 : u32 = u_xlatu36;
    let x_640 : vec4<f32> = x_441.unity_LightIndices[bitcast<i32>(x_637)];
    let x_650 : i32 = u_xlati38;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_655 : vec4<u32> = indexable[x_650];
    u_xlat36 = dot(x_640, bitcast<vec4<f32>>(x_655));
    let x_659 : f32 = u_xlat36;
    u_xlati36 = i32(x_659);
    let x_661 : vec3<f32> = vs_TEXCOORD1;
    let x_673 : i32 = u_xlati36;
    let x_675 : vec4<f32> = x_672.x_AdditionalLightsPosition[x_673];
    let x_678 : i32 = u_xlati36;
    let x_680 : vec4<f32> = x_672.x_AdditionalLightsPosition[x_678];
    u_xlat19 = ((-(x_661) * vec3<f32>(x_675.w, x_675.w, x_675.w)) + vec3<f32>(x_680.x, x_680.y, x_680.z));
    let x_683 : vec3<f32> = u_xlat19;
    let x_684 : vec3<f32> = u_xlat19;
    u_xlat38 = dot(x_683, x_684);
    let x_686 : f32 = u_xlat38;
    u_xlat38 = max(x_686, 6.10351562e-05f);
    let x_689 : f32 = u_xlat38;
    u_xlat39 = inverseSqrt(x_689);
    let x_692 : f32 = u_xlat39;
    let x_694 : vec3<f32> = u_xlat19;
    u_xlat9 = (vec3<f32>(x_692, x_692, x_692) * x_694);
    let x_696 : f32 = u_xlat38;
    u_xlat40 = (1.0f / x_696);
    let x_698 : f32 = u_xlat38;
    let x_699 : i32 = u_xlati36;
    let x_701 : f32 = x_672.x_AdditionalLightsAttenuation[x_699].x;
    u_xlat38 = (x_698 * x_701);
    let x_703 : f32 = u_xlat38;
    let x_705 : f32 = u_xlat38;
    u_xlat38 = ((-(x_703) * x_705) + 1.0f);
    let x_708 : f32 = u_xlat38;
    u_xlat38 = max(x_708, 0.0f);
    let x_710 : f32 = u_xlat38;
    let x_711 : f32 = u_xlat38;
    u_xlat38 = (x_710 * x_711);
    let x_713 : f32 = u_xlat38;
    let x_714 : f32 = u_xlat40;
    u_xlat38 = (x_713 * x_714);
    let x_716 : i32 = u_xlati36;
    let x_718 : vec4<f32> = x_672.x_AdditionalLightsSpotDir[x_716];
    let x_720 : vec3<f32> = u_xlat9;
    u_xlat40 = dot(vec3<f32>(x_718.x, x_718.y, x_718.z), x_720);
    let x_722 : f32 = u_xlat40;
    let x_723 : i32 = u_xlati36;
    let x_725 : f32 = x_672.x_AdditionalLightsAttenuation[x_723].z;
    let x_727 : i32 = u_xlati36;
    let x_729 : f32 = x_672.x_AdditionalLightsAttenuation[x_727].w;
    u_xlat40 = ((x_722 * x_725) + x_729);
    let x_731 : f32 = u_xlat40;
    u_xlat40 = clamp(x_731, 0.0f, 1.0f);
    let x_733 : f32 = u_xlat40;
    let x_734 : f32 = u_xlat40;
    u_xlat40 = (x_733 * x_734);
    let x_736 : f32 = u_xlat38;
    let x_737 : f32 = u_xlat40;
    u_xlat38 = (x_736 * x_737);
    let x_740 : f32 = u_xlat27;
    let x_742 : i32 = u_xlati36;
    let x_744 : vec4<f32> = x_672.x_AdditionalLightsColor[x_742];
    u_xlat10 = (vec3<f32>(x_740, x_740, x_740) * vec3<f32>(x_744.x, x_744.y, x_744.z));
    let x_747 : vec3<f32> = u_xlat2;
    let x_748 : vec3<f32> = u_xlat9;
    u_xlat36 = dot(x_747, x_748);
    let x_750 : f32 = u_xlat36;
    u_xlat36 = clamp(x_750, 0.0f, 1.0f);
    let x_752 : f32 = u_xlat36;
    let x_753 : f32 = u_xlat38;
    u_xlat36 = (x_752 * x_753);
    let x_755 : f32 = u_xlat36;
    let x_757 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_755, x_755, x_755) * x_757);
    let x_759 : vec3<f32> = u_xlat19;
    let x_760 : f32 = u_xlat39;
    let x_763 : vec3<f32> = u_xlat3;
    u_xlat19 = ((x_759 * vec3<f32>(x_760, x_760, x_760)) + x_763);
    let x_765 : vec3<f32> = u_xlat19;
    let x_766 : vec3<f32> = u_xlat19;
    u_xlat36 = dot(x_765, x_766);
    let x_768 : f32 = u_xlat36;
    u_xlat36 = max(x_768, 1.17549435e-37f);
    let x_770 : f32 = u_xlat36;
    u_xlat36 = inverseSqrt(x_770);
    let x_772 : f32 = u_xlat36;
    let x_774 : vec3<f32> = u_xlat19;
    u_xlat19 = (vec3<f32>(x_772, x_772, x_772) * x_774);
    let x_776 : vec3<f32> = u_xlat2;
    let x_777 : vec3<f32> = u_xlat19;
    u_xlat36 = dot(x_776, x_777);
    let x_779 : f32 = u_xlat36;
    u_xlat36 = clamp(x_779, 0.0f, 1.0f);
    let x_781 : vec3<f32> = u_xlat9;
    let x_782 : vec3<f32> = u_xlat19;
    u_xlat38 = dot(x_781, x_782);
    let x_784 : f32 = u_xlat38;
    u_xlat38 = clamp(x_784, 0.0f, 1.0f);
    let x_786 : f32 = u_xlat36;
    let x_787 : f32 = u_xlat36;
    u_xlat36 = (x_786 * x_787);
    let x_789 : f32 = u_xlat36;
    let x_791 : f32 = u_xlat8.x;
    u_xlat36 = ((x_789 * x_791) + 1.000010014f);
    let x_794 : f32 = u_xlat38;
    let x_795 : f32 = u_xlat38;
    u_xlat38 = (x_794 * x_795);
    let x_797 : f32 = u_xlat36;
    let x_798 : f32 = u_xlat36;
    u_xlat36 = (x_797 * x_798);
    let x_800 : f32 = u_xlat38;
    u_xlat38 = max(x_800, 0.100000001f);
    let x_802 : f32 = u_xlat36;
    let x_803 : f32 = u_xlat38;
    u_xlat36 = (x_802 * x_803);
    let x_805 : f32 = u_xlat16;
    let x_806 : f32 = u_xlat36;
    u_xlat36 = (x_805 * x_806);
    let x_808 : f32 = u_xlat37;
    let x_809 : f32 = u_xlat36;
    u_xlat36 = (x_808 / x_809);
    let x_811 : vec4<f32> = u_xlat0;
    let x_813 : f32 = u_xlat36;
    let x_816 : vec3<f32> = u_xlat12;
    u_xlat19 = ((vec3<f32>(x_811.x, x_811.y, x_811.z) * vec3<f32>(x_813, x_813, x_813)) + x_816);
    let x_818 : vec3<f32> = u_xlat19;
    let x_819 : vec3<f32> = u_xlat10;
    let x_821 : vec4<f32> = u_xlat7;
    let x_823 : vec3<f32> = ((x_818 * x_819) + vec3<f32>(x_821.x, x_821.y, x_821.z));
    let x_824 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_823.x, x_823.y, x_823.z, x_824.w);

    continuing {
      let x_826 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_826 + bitcast<u32>(1i));
    }
  }
  let x_828 : vec3<f32> = u_xlat4;
  let x_829 : vec3<f32> = u_xlat5;
  let x_832 : vec3<f32> = u_xlat6;
  let x_833 : vec3<f32> = ((x_828 * vec3<f32>(x_829.x, x_829.x, x_829.x)) + x_832);
  let x_834 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_833.x, x_833.y, x_833.z, x_834.w);
  let x_838 : vec4<f32> = u_xlat7;
  let x_840 : vec4<f32> = u_xlat0;
  let x_842 : vec3<f32> = (vec3<f32>(x_838.x, x_838.y, x_838.z) + vec3<f32>(x_840.x, x_840.y, x_840.z));
  let x_843 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_842.x, x_842.y, x_842.z, x_843.w);
  let x_848 : f32 = x_57.x_Surface;
  u_xlatb0 = (x_848 == 1.0f);
  let x_850 : bool = u_xlatb0;
  if (x_850) {
    let x_855 : f32 = u_xlat1.x;
    x_851 = x_855;
  } else {
    x_851 = 1.0f;
  }
  let x_857 : f32 = x_851;
  SV_Target0.w = x_857;
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

