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

@group(0) @binding(3) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(4) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_374 : MainLightShadows;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_517 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_734 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb33 : bool;
  var u_xlat2 : vec3<f32>;
  var u_xlat35 : f32;
  var u_xlat3 : vec3<f32>;
  var x_109 : vec3<f32>;
  var u_xlat33 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat36 : f32;
  var u_xlat12 : vec3<f32>;
  var u_xlat37 : f32;
  var u_xlat16 : f32;
  var u_xlat38 : f32;
  var u_xlat27 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat17 : vec3<f32>;
  var u_xlatb17 : bool;
  var u_xlatb28 : bool;
  var x_401 : f32;
  var u_xlat28 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlat40 : f32;
  var u_xlat8 : vec4<f32>;
  var u_xlat19 : vec3<f32>;
  var u_xlatu35 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu37 : u32;
  var u_xlati39 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati37 : i32;
  var u_xlat39 : f32;
  var u_xlat9 : vec3<f32>;
  var u_xlat42 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_939 : f32;
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
  let x_99 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat3.x = x_99;
  let x_102 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat3.y = x_102;
  let x_106 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat3.z = x_106;
  let x_108 : bool = u_xlatb33;
  if (x_108) {
    let x_112 : vec3<f32> = u_xlat2;
    x_109 = x_112;
  } else {
    let x_114 : vec3<f32> = u_xlat3;
    x_109 = x_114;
  }
  let x_115 : vec3<f32> = x_109;
  u_xlat2 = x_115;
  let x_118 : vec3<f32> = vs_TEXCOORD2;
  let x_119 : vec3<f32> = vs_TEXCOORD2;
  u_xlat33 = dot(x_118, x_119);
  let x_121 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_121);
  let x_123 : f32 = u_xlat33;
  let x_125 : vec3<f32> = vs_TEXCOORD2;
  u_xlat3 = (vec3<f32>(x_123, x_123, x_123) * x_125);
  let x_128 : f32 = vs_TEXCOORD1.y;
  let x_130 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat33 = (x_128 * x_130);
  let x_133 : f32 = x_44.unity_MatrixV[0i].z;
  let x_135 : f32 = vs_TEXCOORD1.x;
  let x_137 : f32 = u_xlat33;
  u_xlat33 = ((x_133 * x_135) + x_137);
  let x_140 : f32 = x_44.unity_MatrixV[2i].z;
  let x_142 : f32 = vs_TEXCOORD1.z;
  let x_144 : f32 = u_xlat33;
  u_xlat33 = ((x_140 * x_142) + x_144);
  let x_146 : f32 = u_xlat33;
  let x_149 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat33 = (x_146 + x_149);
  let x_151 : f32 = u_xlat33;
  let x_155 : f32 = x_44.x_ProjectionParams.y;
  u_xlat33 = (-(x_151) + -(x_155));
  let x_158 : f32 = u_xlat33;
  u_xlat33 = max(x_158, 0.0f);
  let x_160 : f32 = u_xlat33;
  let x_163 : f32 = x_44.unity_FogParams.x;
  u_xlat33 = (x_160 * x_163);
  let x_172 : vec2<f32> = vs_TEXCOORD8;
  let x_174 : f32 = x_44.x_GlobalMipBias.x;
  let x_175 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_172, x_174);
  u_xlat4 = x_175;
  let x_181 : vec2<f32> = vs_TEXCOORD8;
  let x_183 : f32 = x_44.x_GlobalMipBias.x;
  let x_184 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_181, x_183);
  u_xlat5 = vec3<f32>(x_184.x, x_184.y, x_184.z);
  let x_186 : vec4<f32> = u_xlat4;
  let x_190 : vec3<f32> = (vec3<f32>(x_186.x, x_186.y, x_186.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_191 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_190.x, x_190.y, x_190.z, x_191.w);
  let x_193 : vec3<f32> = u_xlat3;
  let x_194 : vec4<f32> = u_xlat4;
  u_xlat35 = dot(x_193, vec3<f32>(x_194.x, x_194.y, x_194.z));
  let x_197 : f32 = u_xlat35;
  u_xlat35 = (x_197 + 0.5f);
  let x_200 : f32 = u_xlat35;
  let x_202 : vec3<f32> = u_xlat5;
  let x_203 : vec3<f32> = (vec3<f32>(x_200, x_200, x_200) * x_202);
  let x_204 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_203.x, x_203.y, x_203.z, x_204.w);
  let x_207 : f32 = u_xlat4.w;
  u_xlat35 = max(x_207, 0.0001f);
  let x_210 : vec4<f32> = u_xlat4;
  let x_212 : f32 = u_xlat35;
  let x_214 : vec3<f32> = (vec3<f32>(x_210.x, x_210.y, x_210.z) / vec3<f32>(x_212, x_212, x_212));
  let x_215 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_214.x, x_214.y, x_214.z, x_215.w);
  let x_219 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_220 : vec2<f32> = vec2<f32>(x_219.x, x_219.y);
  let x_224 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_220.x, x_220.y));
  let x_225 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_224.x, x_224.y, x_225.z);
  let x_227 : vec3<f32> = u_xlat5;
  let x_229 : vec4<f32> = hlslcc_FragCoord;
  let x_231 : vec2<f32> = (vec2<f32>(x_227.x, x_227.y) * vec2<f32>(x_229.x, x_229.y));
  let x_232 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_231.x, x_231.y, x_232.z);
  let x_235 : f32 = u_xlat5.y;
  let x_238 : f32 = x_44.x_ScaleBiasRt.x;
  let x_241 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat35 = ((x_235 * x_238) + x_241);
  let x_243 : f32 = u_xlat35;
  u_xlat5.z = (-(x_243) + 1.0f);
  let x_248 : f32 = x_57.x_Metallic;
  u_xlat35 = ((-(x_248) * 0.959999979f) + 0.959999979f);
  let x_254 : f32 = u_xlat35;
  let x_257 : f32 = x_57.x_Smoothness;
  u_xlat36 = (-(x_254) + x_257);
  let x_260 : vec4<f32> = u_xlat1;
  let x_262 : f32 = u_xlat35;
  u_xlat12 = (vec3<f32>(x_260.y, x_260.z, x_260.w) * vec3<f32>(x_262, x_262, x_262));
  let x_265 : vec4<f32> = u_xlat0;
  let x_268 : vec4<f32> = x_57.x_BaseColor;
  let x_273 : vec3<f32> = ((vec3<f32>(x_265.x, x_265.y, x_265.z) * vec3<f32>(x_268.x, x_268.y, x_268.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_274 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_273.x, x_273.y, x_273.z, x_274.w);
  let x_277 : f32 = x_57.x_Metallic;
  let x_279 : f32 = x_57.x_Metallic;
  let x_281 : f32 = x_57.x_Metallic;
  let x_282 : vec3<f32> = vec3<f32>(x_277, x_279, x_281);
  let x_287 : vec4<f32> = u_xlat0;
  let x_292 : vec3<f32> = ((vec3<f32>(x_282.x, x_282.y, x_282.z) * vec3<f32>(x_287.x, x_287.y, x_287.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_293 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_292.x, x_292.y, x_292.z, x_293.w);
  let x_296 : f32 = x_57.x_Smoothness;
  u_xlat35 = (-(x_296) + 1.0f);
  let x_300 : f32 = u_xlat35;
  let x_301 : f32 = u_xlat35;
  u_xlat37 = (x_300 * x_301);
  let x_303 : f32 = u_xlat37;
  u_xlat37 = max(x_303, 0.0078125f);
  let x_307 : f32 = u_xlat37;
  let x_308 : f32 = u_xlat37;
  u_xlat16 = (x_307 * x_308);
  let x_310 : f32 = u_xlat36;
  u_xlat36 = (x_310 + 1.0f);
  let x_312 : f32 = u_xlat36;
  u_xlat36 = clamp(x_312, 0.0f, 1.0f);
  let x_315 : f32 = u_xlat37;
  u_xlat38 = ((x_315 * 4.0f) + 2.0f);
  let x_325 : vec3<f32> = u_xlat5;
  let x_328 : f32 = x_44.x_GlobalMipBias.x;
  let x_329 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_325.x, x_325.z), x_328);
  u_xlat5.x = x_329.x;
  let x_334 : f32 = u_xlat5.x;
  u_xlat27 = (x_334 + -1.0f);
  let x_339 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_340 : f32 = u_xlat27;
  u_xlat27 = ((x_339 * x_340) + 1.0f);
  let x_344 : f32 = u_xlat5.x;
  u_xlat5.x = min(x_344, 1.0f);
  let x_349 : vec4<f32> = vs_TEXCOORD6;
  let x_350 : vec2<f32> = vec2<f32>(x_349.x, x_349.y);
  let x_352 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_350.x, x_350.y, x_352);
  let x_365 : vec3<f32> = txVec0;
  let x_367 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_365.xy, x_365.z);
  u_xlat6.x = x_367;
  let x_376 : f32 = x_374.x_MainLightShadowParams.x;
  u_xlat17.x = (-(x_376) + 1.0f);
  let x_381 : f32 = u_xlat6.x;
  let x_383 : f32 = x_374.x_MainLightShadowParams.x;
  let x_386 : f32 = u_xlat17.x;
  u_xlat6.x = ((x_381 * x_383) + x_386);
  let x_391 : f32 = vs_TEXCOORD6.z;
  u_xlatb17 = (0.0f >= x_391);
  let x_395 : f32 = vs_TEXCOORD6.z;
  u_xlatb28 = (x_395 >= 1.0f);
  let x_397 : bool = u_xlatb28;
  let x_398 : bool = u_xlatb17;
  u_xlatb17 = (x_397 | x_398);
  let x_400 : bool = u_xlatb17;
  if (x_400) {
    x_401 = 1.0f;
  } else {
    let x_406 : f32 = u_xlat6.x;
    x_401 = x_406;
  }
  let x_407 : f32 = x_401;
  u_xlat6.x = x_407;
  let x_409 : vec3<f32> = vs_TEXCOORD1;
  let x_411 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat17 = (x_409 + -(x_411));
  let x_414 : vec3<f32> = u_xlat17;
  let x_415 : vec3<f32> = u_xlat17;
  u_xlat17.x = dot(x_414, x_415);
  let x_419 : f32 = u_xlat17.x;
  let x_421 : f32 = x_374.x_MainLightShadowParams.z;
  let x_424 : f32 = x_374.x_MainLightShadowParams.w;
  u_xlat17.x = ((x_419 * x_421) + x_424);
  let x_428 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_428, 0.0f, 1.0f);
  let x_433 : f32 = u_xlat6.x;
  u_xlat28 = (-(x_433) + 1.0f);
  let x_437 : f32 = u_xlat17.x;
  let x_438 : f32 = u_xlat28;
  let x_441 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_437 * x_438) + x_441);
  let x_444 : f32 = u_xlat27;
  let x_447 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat17 = (vec3<f32>(x_444, x_444, x_444) * vec3<f32>(x_447.x, x_447.y, x_447.z));
  let x_451 : vec3<f32> = u_xlat2;
  let x_453 : vec3<f32> = u_xlat3;
  u_xlat7.x = dot(-(x_451), x_453);
  let x_457 : f32 = u_xlat7.x;
  let x_459 : f32 = u_xlat7.x;
  u_xlat7.x = (x_457 + x_459);
  let x_462 : vec3<f32> = u_xlat3;
  let x_463 : vec3<f32> = u_xlat7;
  let x_467 : vec3<f32> = u_xlat2;
  u_xlat7 = ((x_462 * -(vec3<f32>(x_463.x, x_463.x, x_463.x))) + -(x_467));
  let x_471 : vec3<f32> = u_xlat3;
  let x_472 : vec3<f32> = u_xlat2;
  u_xlat40 = dot(x_471, x_472);
  let x_474 : f32 = u_xlat40;
  u_xlat40 = clamp(x_474, 0.0f, 1.0f);
  let x_476 : f32 = u_xlat40;
  u_xlat40 = (-(x_476) + 1.0f);
  let x_479 : f32 = u_xlat40;
  let x_480 : f32 = u_xlat40;
  u_xlat40 = (x_479 * x_480);
  let x_482 : f32 = u_xlat40;
  let x_483 : f32 = u_xlat40;
  u_xlat40 = (x_482 * x_483);
  let x_486 : f32 = u_xlat35;
  u_xlat8.x = ((-(x_486) * 0.699999988f) + 1.700000048f);
  let x_493 : f32 = u_xlat35;
  let x_495 : f32 = u_xlat8.x;
  u_xlat35 = (x_493 * x_495);
  let x_497 : f32 = u_xlat35;
  u_xlat35 = (x_497 * 6.0f);
  let x_508 : vec3<f32> = u_xlat7;
  let x_509 : f32 = u_xlat35;
  let x_510 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_508, x_509);
  u_xlat8 = x_510;
  let x_512 : f32 = u_xlat8.w;
  u_xlat35 = (x_512 + -1.0f);
  let x_519 : f32 = x_517.unity_SpecCube0_HDR.w;
  let x_520 : f32 = u_xlat35;
  u_xlat35 = ((x_519 * x_520) + 1.0f);
  let x_523 : f32 = u_xlat35;
  u_xlat35 = max(x_523, 0.0f);
  let x_525 : f32 = u_xlat35;
  u_xlat35 = log2(x_525);
  let x_527 : f32 = u_xlat35;
  let x_529 : f32 = x_517.unity_SpecCube0_HDR.y;
  u_xlat35 = (x_527 * x_529);
  let x_531 : f32 = u_xlat35;
  u_xlat35 = exp2(x_531);
  let x_533 : f32 = u_xlat35;
  let x_535 : f32 = x_517.unity_SpecCube0_HDR.x;
  u_xlat35 = (x_533 * x_535);
  let x_537 : vec4<f32> = u_xlat8;
  let x_539 : f32 = u_xlat35;
  u_xlat7 = (vec3<f32>(x_537.x, x_537.y, x_537.z) * vec3<f32>(x_539, x_539, x_539));
  let x_542 : f32 = u_xlat37;
  let x_544 : f32 = u_xlat37;
  let x_548 : vec2<f32> = ((vec2<f32>(x_542, x_542) * vec2<f32>(x_544, x_544)) + vec2<f32>(-1.0f, 1.0f));
  let x_549 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_548.x, x_548.y, x_549.z, x_549.w);
  let x_552 : f32 = u_xlat8.y;
  u_xlat35 = (1.0f / x_552);
  let x_555 : vec4<f32> = u_xlat0;
  let x_558 : f32 = u_xlat36;
  u_xlat19 = (-(vec3<f32>(x_555.x, x_555.y, x_555.z)) + vec3<f32>(x_558, x_558, x_558));
  let x_561 : f32 = u_xlat40;
  let x_563 : vec3<f32> = u_xlat19;
  let x_565 : vec4<f32> = u_xlat0;
  u_xlat19 = ((vec3<f32>(x_561, x_561, x_561) * x_563) + vec3<f32>(x_565.x, x_565.y, x_565.z));
  let x_568 : f32 = u_xlat35;
  let x_570 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_568, x_568, x_568) * x_570);
  let x_572 : vec3<f32> = u_xlat7;
  let x_573 : vec3<f32> = u_xlat19;
  u_xlat7 = (x_572 * x_573);
  let x_575 : vec4<f32> = u_xlat4;
  let x_577 : vec3<f32> = u_xlat12;
  let x_579 : vec3<f32> = u_xlat7;
  let x_580 : vec3<f32> = ((vec3<f32>(x_575.x, x_575.y, x_575.z) * x_577) + x_579);
  let x_581 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_580.x, x_580.y, x_580.z, x_581.w);
  let x_584 : f32 = u_xlat6.x;
  let x_587 : f32 = x_517.unity_LightData.z;
  u_xlat35 = (x_584 * x_587);
  let x_589 : vec3<f32> = u_xlat3;
  let x_591 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat36 = dot(x_589, vec3<f32>(x_591.x, x_591.y, x_591.z));
  let x_594 : f32 = u_xlat36;
  u_xlat36 = clamp(x_594, 0.0f, 1.0f);
  let x_596 : f32 = u_xlat35;
  let x_597 : f32 = u_xlat36;
  u_xlat35 = (x_596 * x_597);
  let x_599 : f32 = u_xlat35;
  let x_601 : vec3<f32> = u_xlat17;
  u_xlat6 = (vec3<f32>(x_599, x_599, x_599) * x_601);
  let x_603 : vec3<f32> = u_xlat2;
  let x_605 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat7 = (x_603 + vec3<f32>(x_605.x, x_605.y, x_605.z));
  let x_608 : vec3<f32> = u_xlat7;
  let x_609 : vec3<f32> = u_xlat7;
  u_xlat35 = dot(x_608, x_609);
  let x_611 : f32 = u_xlat35;
  u_xlat35 = max(x_611, 1.17549435e-37f);
  let x_614 : f32 = u_xlat35;
  u_xlat35 = inverseSqrt(x_614);
  let x_616 : f32 = u_xlat35;
  let x_618 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_616, x_616, x_616) * x_618);
  let x_620 : vec3<f32> = u_xlat3;
  let x_621 : vec3<f32> = u_xlat7;
  u_xlat35 = dot(x_620, x_621);
  let x_623 : f32 = u_xlat35;
  u_xlat35 = clamp(x_623, 0.0f, 1.0f);
  let x_626 : vec4<f32> = x_44.x_MainLightPosition;
  let x_628 : vec3<f32> = u_xlat7;
  u_xlat36 = dot(vec3<f32>(x_626.x, x_626.y, x_626.z), x_628);
  let x_630 : f32 = u_xlat36;
  u_xlat36 = clamp(x_630, 0.0f, 1.0f);
  let x_632 : f32 = u_xlat35;
  let x_633 : f32 = u_xlat35;
  u_xlat35 = (x_632 * x_633);
  let x_635 : f32 = u_xlat35;
  let x_637 : f32 = u_xlat8.x;
  u_xlat35 = ((x_635 * x_637) + 1.000010014f);
  let x_641 : f32 = u_xlat36;
  let x_642 : f32 = u_xlat36;
  u_xlat36 = (x_641 * x_642);
  let x_644 : f32 = u_xlat35;
  let x_645 : f32 = u_xlat35;
  u_xlat35 = (x_644 * x_645);
  let x_647 : f32 = u_xlat36;
  u_xlat36 = max(x_647, 0.100000001f);
  let x_650 : f32 = u_xlat35;
  let x_651 : f32 = u_xlat36;
  u_xlat35 = (x_650 * x_651);
  let x_653 : f32 = u_xlat38;
  let x_654 : f32 = u_xlat35;
  u_xlat35 = (x_653 * x_654);
  let x_656 : f32 = u_xlat16;
  let x_657 : f32 = u_xlat35;
  u_xlat35 = (x_656 / x_657);
  let x_659 : vec4<f32> = u_xlat0;
  let x_661 : f32 = u_xlat35;
  let x_664 : vec3<f32> = u_xlat12;
  u_xlat7 = ((vec3<f32>(x_659.x, x_659.y, x_659.z) * vec3<f32>(x_661, x_661, x_661)) + x_664);
  let x_666 : vec3<f32> = u_xlat6;
  let x_667 : vec3<f32> = u_xlat7;
  u_xlat6 = (x_666 * x_667);
  let x_670 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_672 : f32 = x_517.unity_LightData.y;
  u_xlat35 = min(x_670, x_672);
  let x_676 : f32 = u_xlat35;
  u_xlatu35 = bitcast<u32>(i32(x_676));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_688 : u32 = u_xlatu_loop_1;
    let x_689 : u32 = u_xlatu35;
    if ((x_688 < x_689)) {
    } else {
      break;
    }
    let x_692 : u32 = u_xlatu_loop_1;
    u_xlatu37 = (x_692 >> 2u);
    let x_696 : u32 = u_xlatu_loop_1;
    u_xlati39 = bitcast<i32>((x_696 & 3u));
    let x_699 : u32 = u_xlatu37;
    let x_702 : vec4<f32> = x_517.unity_LightIndices[bitcast<i32>(x_699)];
    let x_712 : i32 = u_xlati39;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_717 : vec4<u32> = indexable[x_712];
    u_xlat37 = dot(x_702, bitcast<vec4<f32>>(x_717));
    let x_721 : f32 = u_xlat37;
    u_xlati37 = i32(x_721);
    let x_723 : vec3<f32> = vs_TEXCOORD1;
    let x_735 : i32 = u_xlati37;
    let x_737 : vec4<f32> = x_734.x_AdditionalLightsPosition[x_735];
    let x_740 : i32 = u_xlati37;
    let x_742 : vec4<f32> = x_734.x_AdditionalLightsPosition[x_740];
    u_xlat19 = ((-(x_723) * vec3<f32>(x_737.w, x_737.w, x_737.w)) + vec3<f32>(x_742.x, x_742.y, x_742.z));
    let x_746 : vec3<f32> = u_xlat19;
    let x_747 : vec3<f32> = u_xlat19;
    u_xlat39 = dot(x_746, x_747);
    let x_749 : f32 = u_xlat39;
    u_xlat39 = max(x_749, 6.10351562e-05f);
    let x_752 : f32 = u_xlat39;
    u_xlat40 = inverseSqrt(x_752);
    let x_755 : f32 = u_xlat40;
    let x_757 : vec3<f32> = u_xlat19;
    u_xlat9 = (vec3<f32>(x_755, x_755, x_755) * x_757);
    let x_760 : f32 = u_xlat39;
    u_xlat42 = (1.0f / x_760);
    let x_762 : f32 = u_xlat39;
    let x_763 : i32 = u_xlati37;
    let x_765 : f32 = x_734.x_AdditionalLightsAttenuation[x_763].x;
    u_xlat39 = (x_762 * x_765);
    let x_767 : f32 = u_xlat39;
    let x_769 : f32 = u_xlat39;
    u_xlat39 = ((-(x_767) * x_769) + 1.0f);
    let x_772 : f32 = u_xlat39;
    u_xlat39 = max(x_772, 0.0f);
    let x_774 : f32 = u_xlat39;
    let x_775 : f32 = u_xlat39;
    u_xlat39 = (x_774 * x_775);
    let x_777 : f32 = u_xlat39;
    let x_778 : f32 = u_xlat42;
    u_xlat39 = (x_777 * x_778);
    let x_780 : i32 = u_xlati37;
    let x_782 : vec4<f32> = x_734.x_AdditionalLightsSpotDir[x_780];
    let x_784 : vec3<f32> = u_xlat9;
    u_xlat42 = dot(vec3<f32>(x_782.x, x_782.y, x_782.z), x_784);
    let x_786 : f32 = u_xlat42;
    let x_787 : i32 = u_xlati37;
    let x_789 : f32 = x_734.x_AdditionalLightsAttenuation[x_787].z;
    let x_791 : i32 = u_xlati37;
    let x_793 : f32 = x_734.x_AdditionalLightsAttenuation[x_791].w;
    u_xlat42 = ((x_786 * x_789) + x_793);
    let x_795 : f32 = u_xlat42;
    u_xlat42 = clamp(x_795, 0.0f, 1.0f);
    let x_797 : f32 = u_xlat42;
    let x_798 : f32 = u_xlat42;
    u_xlat42 = (x_797 * x_798);
    let x_800 : f32 = u_xlat39;
    let x_801 : f32 = u_xlat42;
    u_xlat39 = (x_800 * x_801);
    let x_804 : f32 = u_xlat27;
    let x_806 : i32 = u_xlati37;
    let x_808 : vec4<f32> = x_734.x_AdditionalLightsColor[x_806];
    u_xlat10 = (vec3<f32>(x_804, x_804, x_804) * vec3<f32>(x_808.x, x_808.y, x_808.z));
    let x_811 : vec3<f32> = u_xlat3;
    let x_812 : vec3<f32> = u_xlat9;
    u_xlat37 = dot(x_811, x_812);
    let x_814 : f32 = u_xlat37;
    u_xlat37 = clamp(x_814, 0.0f, 1.0f);
    let x_816 : f32 = u_xlat37;
    let x_817 : f32 = u_xlat39;
    u_xlat37 = (x_816 * x_817);
    let x_819 : f32 = u_xlat37;
    let x_821 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_819, x_819, x_819) * x_821);
    let x_823 : vec3<f32> = u_xlat19;
    let x_824 : f32 = u_xlat40;
    let x_827 : vec3<f32> = u_xlat2;
    u_xlat19 = ((x_823 * vec3<f32>(x_824, x_824, x_824)) + x_827);
    let x_829 : vec3<f32> = u_xlat19;
    let x_830 : vec3<f32> = u_xlat19;
    u_xlat37 = dot(x_829, x_830);
    let x_832 : f32 = u_xlat37;
    u_xlat37 = max(x_832, 1.17549435e-37f);
    let x_834 : f32 = u_xlat37;
    u_xlat37 = inverseSqrt(x_834);
    let x_836 : f32 = u_xlat37;
    let x_838 : vec3<f32> = u_xlat19;
    u_xlat19 = (vec3<f32>(x_836, x_836, x_836) * x_838);
    let x_840 : vec3<f32> = u_xlat3;
    let x_841 : vec3<f32> = u_xlat19;
    u_xlat37 = dot(x_840, x_841);
    let x_843 : f32 = u_xlat37;
    u_xlat37 = clamp(x_843, 0.0f, 1.0f);
    let x_845 : vec3<f32> = u_xlat9;
    let x_846 : vec3<f32> = u_xlat19;
    u_xlat39 = dot(x_845, x_846);
    let x_848 : f32 = u_xlat39;
    u_xlat39 = clamp(x_848, 0.0f, 1.0f);
    let x_850 : f32 = u_xlat37;
    let x_851 : f32 = u_xlat37;
    u_xlat37 = (x_850 * x_851);
    let x_853 : f32 = u_xlat37;
    let x_855 : f32 = u_xlat8.x;
    u_xlat37 = ((x_853 * x_855) + 1.000010014f);
    let x_858 : f32 = u_xlat39;
    let x_859 : f32 = u_xlat39;
    u_xlat39 = (x_858 * x_859);
    let x_861 : f32 = u_xlat37;
    let x_862 : f32 = u_xlat37;
    u_xlat37 = (x_861 * x_862);
    let x_864 : f32 = u_xlat39;
    u_xlat39 = max(x_864, 0.100000001f);
    let x_866 : f32 = u_xlat37;
    let x_867 : f32 = u_xlat39;
    u_xlat37 = (x_866 * x_867);
    let x_869 : f32 = u_xlat38;
    let x_870 : f32 = u_xlat37;
    u_xlat37 = (x_869 * x_870);
    let x_872 : f32 = u_xlat16;
    let x_873 : f32 = u_xlat37;
    u_xlat37 = (x_872 / x_873);
    let x_875 : vec4<f32> = u_xlat0;
    let x_877 : f32 = u_xlat37;
    let x_880 : vec3<f32> = u_xlat12;
    u_xlat19 = ((vec3<f32>(x_875.x, x_875.y, x_875.z) * vec3<f32>(x_877, x_877, x_877)) + x_880);
    let x_882 : vec3<f32> = u_xlat19;
    let x_883 : vec3<f32> = u_xlat10;
    let x_885 : vec3<f32> = u_xlat7;
    u_xlat7 = ((x_882 * x_883) + x_885);

    continuing {
      let x_887 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_887 + bitcast<u32>(1i));
    }
  }
  let x_889 : vec4<f32> = u_xlat4;
  let x_891 : vec3<f32> = u_xlat5;
  let x_894 : vec3<f32> = u_xlat6;
  let x_895 : vec3<f32> = ((vec3<f32>(x_889.x, x_889.y, x_889.z) * vec3<f32>(x_891.x, x_891.x, x_891.x)) + x_894);
  let x_896 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_895.x, x_895.y, x_895.z, x_896.w);
  let x_898 : vec3<f32> = u_xlat7;
  let x_899 : vec4<f32> = u_xlat0;
  let x_901 : vec3<f32> = (x_898 + vec3<f32>(x_899.x, x_899.y, x_899.z));
  let x_902 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_901.x, x_901.y, x_901.z, x_902.w);
  let x_904 : f32 = u_xlat33;
  let x_905 : f32 = u_xlat33;
  u_xlat33 = (x_904 * -(x_905));
  let x_908 : f32 = u_xlat33;
  u_xlat33 = exp2(x_908);
  let x_910 : vec4<f32> = u_xlat0;
  let x_914 : vec4<f32> = x_44.unity_FogColor;
  let x_917 : vec3<f32> = (vec3<f32>(x_910.x, x_910.y, x_910.z) + -(vec3<f32>(x_914.x, x_914.y, x_914.z)));
  let x_918 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_917.x, x_917.y, x_917.z, x_918.w);
  let x_922 : f32 = u_xlat33;
  let x_924 : vec4<f32> = u_xlat0;
  let x_928 : vec4<f32> = x_44.unity_FogColor;
  let x_930 : vec3<f32> = ((vec3<f32>(x_922, x_922, x_922) * vec3<f32>(x_924.x, x_924.y, x_924.z)) + vec3<f32>(x_928.x, x_928.y, x_928.z));
  let x_931 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_930.x, x_930.y, x_930.z, x_931.w);
  let x_936 : f32 = x_57.x_Surface;
  u_xlatb0 = (x_936 == 1.0f);
  let x_938 : bool = u_xlatb0;
  if (x_938) {
    let x_943 : f32 = u_xlat1.x;
    x_939 = x_943;
  } else {
    x_939 = 1.0f;
  }
  let x_945 : f32 = x_939;
  SV_Target0.w = x_945;
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

