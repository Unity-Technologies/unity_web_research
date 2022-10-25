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

@group(0) @binding(3) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(4) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_374 : MainLightShadows;

@group(1) @binding(5) var<uniform> x_454 : LightCookies;

@group(0) @binding(6) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_641 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_894 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_997 : AdditionalLightsCookies;

@group(0) @binding(7) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb42 : bool;
  var u_xlat2 : vec3<f32>;
  var u_xlat44 : f32;
  var u_xlat3 : vec3<f32>;
  var x_109 : vec3<f32>;
  var u_xlat42 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat45 : f32;
  var u_xlat15 : vec3<f32>;
  var u_xlat46 : f32;
  var u_xlat19 : f32;
  var u_xlat47 : f32;
  var u_xlat33 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat20 : vec3<f32>;
  var u_xlatb20 : vec2<bool>;
  var u_xlatb34 : bool;
  var x_407 : f32;
  var u_xlat34 : f32;
  var u_xlat7 : vec4<f32>;
  var x_539 : f32;
  var x_550 : vec3<f32>;
  var u_xlat49 : f32;
  var u_xlat8 : vec4<f32>;
  var u_xlat22 : vec3<f32>;
  var u_xlatu44 : u32;
  var u_xlatb7 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu46 : u32;
  var u_xlati48 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat9 : vec3<f32>;
  var u_xlat48 : f32;
  var u_xlat35 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlatu49 : u32;
  var u_xlati51 : i32;
  var u_xlati49 : i32;
  var u_xlati52 : i32;
  var u_xlat11 : vec4<f32>;
  var u_xlatb49 : bool;
  var u_xlat39 : vec2<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb39 : vec2<bool>;
  var x_1292 : f32;
  var x_1305 : f32;
  var x_1357 : f32;
  var x_1368 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_1532 : f32;
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
  let x_99 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat3.x = x_99;
  let x_102 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat3.y = x_102;
  let x_106 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat3.z = x_106;
  let x_108 : bool = u_xlatb42;
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
  u_xlat42 = dot(x_118, x_119);
  let x_121 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_121);
  let x_123 : f32 = u_xlat42;
  let x_125 : vec3<f32> = vs_TEXCOORD2;
  u_xlat3 = (vec3<f32>(x_123, x_123, x_123) * x_125);
  let x_128 : f32 = vs_TEXCOORD1.y;
  let x_130 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat42 = (x_128 * x_130);
  let x_133 : f32 = x_44.unity_MatrixV[0i].z;
  let x_135 : f32 = vs_TEXCOORD1.x;
  let x_137 : f32 = u_xlat42;
  u_xlat42 = ((x_133 * x_135) + x_137);
  let x_140 : f32 = x_44.unity_MatrixV[2i].z;
  let x_142 : f32 = vs_TEXCOORD1.z;
  let x_144 : f32 = u_xlat42;
  u_xlat42 = ((x_140 * x_142) + x_144);
  let x_146 : f32 = u_xlat42;
  let x_149 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat42 = (x_146 + x_149);
  let x_151 : f32 = u_xlat42;
  let x_155 : f32 = x_44.x_ProjectionParams.y;
  u_xlat42 = (-(x_151) + -(x_155));
  let x_158 : f32 = u_xlat42;
  u_xlat42 = max(x_158, 0.0f);
  let x_160 : f32 = u_xlat42;
  let x_163 : f32 = x_44.unity_FogParams.x;
  u_xlat42 = (x_160 * x_163);
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
  u_xlat44 = dot(x_193, vec3<f32>(x_194.x, x_194.y, x_194.z));
  let x_197 : f32 = u_xlat44;
  u_xlat44 = (x_197 + 0.5f);
  let x_200 : f32 = u_xlat44;
  let x_202 : vec3<f32> = u_xlat5;
  let x_203 : vec3<f32> = (vec3<f32>(x_200, x_200, x_200) * x_202);
  let x_204 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_203.x, x_203.y, x_203.z, x_204.w);
  let x_207 : f32 = u_xlat4.w;
  u_xlat44 = max(x_207, 0.0001f);
  let x_210 : vec4<f32> = u_xlat4;
  let x_212 : f32 = u_xlat44;
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
  u_xlat44 = ((x_235 * x_238) + x_241);
  let x_243 : f32 = u_xlat44;
  u_xlat5.z = (-(x_243) + 1.0f);
  let x_248 : f32 = x_57.x_Metallic;
  u_xlat44 = ((-(x_248) * 0.959999979f) + 0.959999979f);
  let x_254 : f32 = u_xlat44;
  let x_257 : f32 = x_57.x_Smoothness;
  u_xlat45 = (-(x_254) + x_257);
  let x_260 : vec4<f32> = u_xlat1;
  let x_262 : f32 = u_xlat44;
  u_xlat15 = (vec3<f32>(x_260.y, x_260.z, x_260.w) * vec3<f32>(x_262, x_262, x_262));
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
  u_xlat44 = (-(x_296) + 1.0f);
  let x_300 : f32 = u_xlat44;
  let x_301 : f32 = u_xlat44;
  u_xlat46 = (x_300 * x_301);
  let x_303 : f32 = u_xlat46;
  u_xlat46 = max(x_303, 0.0078125f);
  let x_307 : f32 = u_xlat46;
  let x_308 : f32 = u_xlat46;
  u_xlat19 = (x_307 * x_308);
  let x_310 : f32 = u_xlat45;
  u_xlat45 = (x_310 + 1.0f);
  let x_312 : f32 = u_xlat45;
  u_xlat45 = clamp(x_312, 0.0f, 1.0f);
  let x_315 : f32 = u_xlat46;
  u_xlat47 = ((x_315 * 4.0f) + 2.0f);
  let x_325 : vec3<f32> = u_xlat5;
  let x_328 : f32 = x_44.x_GlobalMipBias.x;
  let x_329 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_325.x, x_325.z), x_328);
  u_xlat5.x = x_329.x;
  let x_334 : f32 = u_xlat5.x;
  u_xlat33 = (x_334 + -1.0f);
  let x_339 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_340 : f32 = u_xlat33;
  u_xlat33 = ((x_339 * x_340) + 1.0f);
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
  u_xlat20.x = (-(x_376) + 1.0f);
  let x_381 : f32 = u_xlat6.x;
  let x_383 : f32 = x_374.x_MainLightShadowParams.x;
  let x_386 : f32 = u_xlat20.x;
  u_xlat6.x = ((x_381 * x_383) + x_386);
  let x_393 : f32 = vs_TEXCOORD6.z;
  u_xlatb20.x = (0.0f >= x_393);
  let x_398 : f32 = vs_TEXCOORD6.z;
  u_xlatb34 = (x_398 >= 1.0f);
  let x_400 : bool = u_xlatb34;
  let x_402 : bool = u_xlatb20.x;
  u_xlatb20.x = (x_400 | x_402);
  let x_406 : bool = u_xlatb20.x;
  if (x_406) {
    x_407 = 1.0f;
  } else {
    let x_412 : f32 = u_xlat6.x;
    x_407 = x_412;
  }
  let x_413 : f32 = x_407;
  u_xlat6.x = x_413;
  let x_415 : vec3<f32> = vs_TEXCOORD1;
  let x_417 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat20 = (x_415 + -(x_417));
  let x_420 : vec3<f32> = u_xlat20;
  let x_421 : vec3<f32> = u_xlat20;
  u_xlat20.x = dot(x_420, x_421);
  let x_425 : f32 = u_xlat20.x;
  let x_427 : f32 = x_374.x_MainLightShadowParams.z;
  let x_430 : f32 = x_374.x_MainLightShadowParams.w;
  u_xlat20.x = ((x_425 * x_427) + x_430);
  let x_434 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_434, 0.0f, 1.0f);
  let x_439 : f32 = u_xlat6.x;
  u_xlat34 = (-(x_439) + 1.0f);
  let x_443 : f32 = u_xlat20.x;
  let x_444 : f32 = u_xlat34;
  let x_447 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_443 * x_444) + x_447);
  let x_456 : f32 = x_454.x_MainLightCookieTextureFormat;
  u_xlatb20.x = !((x_456 == -1.0f));
  let x_460 : bool = u_xlatb20.x;
  if (x_460) {
    let x_463 : vec3<f32> = vs_TEXCOORD1;
    let x_466 : vec4<f32> = x_454.x_MainLightWorldToLight[1i];
    let x_468 : vec2<f32> = (vec2<f32>(x_463.y, x_463.y) * vec2<f32>(x_466.x, x_466.y));
    let x_469 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_468.x, x_468.y, x_469.z);
    let x_472 : vec4<f32> = x_454.x_MainLightWorldToLight[0i];
    let x_474 : vec3<f32> = vs_TEXCOORD1;
    let x_477 : vec3<f32> = u_xlat20;
    let x_479 : vec2<f32> = ((vec2<f32>(x_472.x, x_472.y) * vec2<f32>(x_474.x, x_474.x)) + vec2<f32>(x_477.x, x_477.y));
    let x_480 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_479.x, x_479.y, x_480.z);
    let x_483 : vec4<f32> = x_454.x_MainLightWorldToLight[2i];
    let x_485 : vec3<f32> = vs_TEXCOORD1;
    let x_488 : vec3<f32> = u_xlat20;
    let x_490 : vec2<f32> = ((vec2<f32>(x_483.x, x_483.y) * vec2<f32>(x_485.z, x_485.z)) + vec2<f32>(x_488.x, x_488.y));
    let x_491 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_490.x, x_490.y, x_491.z);
    let x_493 : vec3<f32> = u_xlat20;
    let x_496 : vec4<f32> = x_454.x_MainLightWorldToLight[3i];
    let x_498 : vec2<f32> = (vec2<f32>(x_493.x, x_493.y) + vec2<f32>(x_496.x, x_496.y));
    let x_499 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_498.x, x_498.y, x_499.z);
    let x_501 : vec3<f32> = u_xlat20;
    let x_505 : vec2<f32> = ((vec2<f32>(x_501.x, x_501.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_506 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_505.x, x_505.y, x_506.z);
    let x_514 : vec3<f32> = u_xlat20;
    let x_517 : f32 = x_44.x_GlobalMipBias.x;
    let x_518 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_514.x, x_514.y), x_517);
    u_xlat7 = x_518;
    let x_520 : f32 = x_454.x_MainLightCookieTextureFormat;
    let x_522 : f32 = x_454.x_MainLightCookieTextureFormat;
    let x_524 : f32 = x_454.x_MainLightCookieTextureFormat;
    let x_526 : f32 = x_454.x_MainLightCookieTextureFormat;
    let x_527 : vec4<f32> = vec4<f32>(x_520, x_522, x_524, x_526);
    let x_535 : vec4<bool> = (vec4<f32>(x_527.x, x_527.y, x_527.z, x_527.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb20 = vec2<bool>(x_535.x, x_535.y);
    let x_538 : bool = u_xlatb20.y;
    if (x_538) {
      let x_543 : f32 = u_xlat7.w;
      x_539 = x_543;
    } else {
      let x_546 : f32 = u_xlat7.x;
      x_539 = x_546;
    }
    let x_547 : f32 = x_539;
    u_xlat34 = x_547;
    let x_549 : bool = u_xlatb20.x;
    if (x_549) {
      let x_553 : vec4<f32> = u_xlat7;
      x_550 = vec3<f32>(x_553.x, x_553.y, x_553.z);
    } else {
      let x_556 : f32 = u_xlat34;
      x_550 = vec3<f32>(x_556, x_556, x_556);
    }
    let x_558 : vec3<f32> = x_550;
    u_xlat20 = x_558;
  } else {
    u_xlat20.x = 1.0f;
    u_xlat20.y = 1.0f;
    u_xlat20.z = 1.0f;
  }
  let x_563 : vec3<f32> = u_xlat20;
  let x_565 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat20 = (x_563 * vec3<f32>(x_565.x, x_565.y, x_565.z));
  let x_568 : f32 = u_xlat33;
  let x_570 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_568, x_568, x_568) * x_570);
  let x_572 : vec3<f32> = u_xlat2;
  let x_574 : vec3<f32> = u_xlat3;
  u_xlat7.x = dot(-(x_572), x_574);
  let x_578 : f32 = u_xlat7.x;
  let x_580 : f32 = u_xlat7.x;
  u_xlat7.x = (x_578 + x_580);
  let x_583 : vec3<f32> = u_xlat3;
  let x_584 : vec4<f32> = u_xlat7;
  let x_588 : vec3<f32> = u_xlat2;
  let x_590 : vec3<f32> = ((x_583 * -(vec3<f32>(x_584.x, x_584.x, x_584.x))) + -(x_588));
  let x_591 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_590.x, x_590.y, x_590.z, x_591.w);
  let x_594 : vec3<f32> = u_xlat3;
  let x_595 : vec3<f32> = u_xlat2;
  u_xlat49 = dot(x_594, x_595);
  let x_597 : f32 = u_xlat49;
  u_xlat49 = clamp(x_597, 0.0f, 1.0f);
  let x_599 : f32 = u_xlat49;
  u_xlat49 = (-(x_599) + 1.0f);
  let x_602 : f32 = u_xlat49;
  let x_603 : f32 = u_xlat49;
  u_xlat49 = (x_602 * x_603);
  let x_605 : f32 = u_xlat49;
  let x_606 : f32 = u_xlat49;
  u_xlat49 = (x_605 * x_606);
  let x_609 : f32 = u_xlat44;
  u_xlat8.x = ((-(x_609) * 0.699999988f) + 1.700000048f);
  let x_616 : f32 = u_xlat44;
  let x_618 : f32 = u_xlat8.x;
  u_xlat44 = (x_616 * x_618);
  let x_620 : f32 = u_xlat44;
  u_xlat44 = (x_620 * 6.0f);
  let x_631 : vec4<f32> = u_xlat7;
  let x_633 : f32 = u_xlat44;
  let x_634 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_631.x, x_631.y, x_631.z), x_633);
  u_xlat8 = x_634;
  let x_636 : f32 = u_xlat8.w;
  u_xlat44 = (x_636 + -1.0f);
  let x_643 : f32 = x_641.unity_SpecCube0_HDR.w;
  let x_644 : f32 = u_xlat44;
  u_xlat44 = ((x_643 * x_644) + 1.0f);
  let x_647 : f32 = u_xlat44;
  u_xlat44 = max(x_647, 0.0f);
  let x_649 : f32 = u_xlat44;
  u_xlat44 = log2(x_649);
  let x_651 : f32 = u_xlat44;
  let x_653 : f32 = x_641.unity_SpecCube0_HDR.y;
  u_xlat44 = (x_651 * x_653);
  let x_655 : f32 = u_xlat44;
  u_xlat44 = exp2(x_655);
  let x_657 : f32 = u_xlat44;
  let x_659 : f32 = x_641.unity_SpecCube0_HDR.x;
  u_xlat44 = (x_657 * x_659);
  let x_661 : vec4<f32> = u_xlat8;
  let x_663 : f32 = u_xlat44;
  let x_665 : vec3<f32> = (vec3<f32>(x_661.x, x_661.y, x_661.z) * vec3<f32>(x_663, x_663, x_663));
  let x_666 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_665.x, x_665.y, x_665.z, x_666.w);
  let x_668 : f32 = u_xlat46;
  let x_670 : f32 = u_xlat46;
  let x_674 : vec2<f32> = ((vec2<f32>(x_668, x_668) * vec2<f32>(x_670, x_670)) + vec2<f32>(-1.0f, 1.0f));
  let x_675 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_674.x, x_674.y, x_675.z, x_675.w);
  let x_678 : f32 = u_xlat8.y;
  u_xlat44 = (1.0f / x_678);
  let x_681 : vec4<f32> = u_xlat0;
  let x_684 : f32 = u_xlat45;
  u_xlat22 = (-(vec3<f32>(x_681.x, x_681.y, x_681.z)) + vec3<f32>(x_684, x_684, x_684));
  let x_687 : f32 = u_xlat49;
  let x_689 : vec3<f32> = u_xlat22;
  let x_691 : vec4<f32> = u_xlat0;
  u_xlat22 = ((vec3<f32>(x_687, x_687, x_687) * x_689) + vec3<f32>(x_691.x, x_691.y, x_691.z));
  let x_694 : f32 = u_xlat44;
  let x_696 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_694, x_694, x_694) * x_696);
  let x_698 : vec4<f32> = u_xlat7;
  let x_700 : vec3<f32> = u_xlat22;
  let x_701 : vec3<f32> = (vec3<f32>(x_698.x, x_698.y, x_698.z) * x_700);
  let x_702 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_701.x, x_701.y, x_701.z, x_702.w);
  let x_704 : vec4<f32> = u_xlat4;
  let x_706 : vec3<f32> = u_xlat15;
  let x_708 : vec4<f32> = u_xlat7;
  let x_710 : vec3<f32> = ((vec3<f32>(x_704.x, x_704.y, x_704.z) * x_706) + vec3<f32>(x_708.x, x_708.y, x_708.z));
  let x_711 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_710.x, x_710.y, x_710.z, x_711.w);
  let x_714 : f32 = u_xlat6.x;
  let x_717 : f32 = x_641.unity_LightData.z;
  u_xlat44 = (x_714 * x_717);
  let x_719 : vec3<f32> = u_xlat3;
  let x_721 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat45 = dot(x_719, vec3<f32>(x_721.x, x_721.y, x_721.z));
  let x_724 : f32 = u_xlat45;
  u_xlat45 = clamp(x_724, 0.0f, 1.0f);
  let x_726 : f32 = u_xlat44;
  let x_727 : f32 = u_xlat45;
  u_xlat44 = (x_726 * x_727);
  let x_729 : f32 = u_xlat44;
  let x_731 : vec3<f32> = u_xlat20;
  u_xlat6 = (vec3<f32>(x_729, x_729, x_729) * x_731);
  let x_733 : vec3<f32> = u_xlat2;
  let x_735 : vec4<f32> = x_44.x_MainLightPosition;
  let x_737 : vec3<f32> = (x_733 + vec3<f32>(x_735.x, x_735.y, x_735.z));
  let x_738 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_737.x, x_737.y, x_737.z, x_738.w);
  let x_740 : vec4<f32> = u_xlat7;
  let x_742 : vec4<f32> = u_xlat7;
  u_xlat44 = dot(vec3<f32>(x_740.x, x_740.y, x_740.z), vec3<f32>(x_742.x, x_742.y, x_742.z));
  let x_745 : f32 = u_xlat44;
  u_xlat44 = max(x_745, 1.17549435e-37f);
  let x_748 : f32 = u_xlat44;
  u_xlat44 = inverseSqrt(x_748);
  let x_750 : f32 = u_xlat44;
  let x_752 : vec4<f32> = u_xlat7;
  let x_754 : vec3<f32> = (vec3<f32>(x_750, x_750, x_750) * vec3<f32>(x_752.x, x_752.y, x_752.z));
  let x_755 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_754.x, x_754.y, x_754.z, x_755.w);
  let x_757 : vec3<f32> = u_xlat3;
  let x_758 : vec4<f32> = u_xlat7;
  u_xlat44 = dot(x_757, vec3<f32>(x_758.x, x_758.y, x_758.z));
  let x_761 : f32 = u_xlat44;
  u_xlat44 = clamp(x_761, 0.0f, 1.0f);
  let x_764 : vec4<f32> = x_44.x_MainLightPosition;
  let x_766 : vec4<f32> = u_xlat7;
  u_xlat45 = dot(vec3<f32>(x_764.x, x_764.y, x_764.z), vec3<f32>(x_766.x, x_766.y, x_766.z));
  let x_769 : f32 = u_xlat45;
  u_xlat45 = clamp(x_769, 0.0f, 1.0f);
  let x_771 : f32 = u_xlat44;
  let x_772 : f32 = u_xlat44;
  u_xlat44 = (x_771 * x_772);
  let x_774 : f32 = u_xlat44;
  let x_776 : f32 = u_xlat8.x;
  u_xlat44 = ((x_774 * x_776) + 1.000010014f);
  let x_780 : f32 = u_xlat45;
  let x_781 : f32 = u_xlat45;
  u_xlat45 = (x_780 * x_781);
  let x_783 : f32 = u_xlat44;
  let x_784 : f32 = u_xlat44;
  u_xlat44 = (x_783 * x_784);
  let x_786 : f32 = u_xlat45;
  u_xlat45 = max(x_786, 0.100000001f);
  let x_789 : f32 = u_xlat44;
  let x_790 : f32 = u_xlat45;
  u_xlat44 = (x_789 * x_790);
  let x_792 : f32 = u_xlat47;
  let x_793 : f32 = u_xlat44;
  u_xlat44 = (x_792 * x_793);
  let x_795 : f32 = u_xlat19;
  let x_796 : f32 = u_xlat44;
  u_xlat44 = (x_795 / x_796);
  let x_798 : vec4<f32> = u_xlat0;
  let x_800 : f32 = u_xlat44;
  let x_803 : vec3<f32> = u_xlat15;
  let x_804 : vec3<f32> = ((vec3<f32>(x_798.x, x_798.y, x_798.z) * vec3<f32>(x_800, x_800, x_800)) + x_803);
  let x_805 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_804.x, x_804.y, x_804.z, x_805.w);
  let x_807 : vec3<f32> = u_xlat6;
  let x_808 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_807 * vec3<f32>(x_808.x, x_808.y, x_808.z));
  let x_812 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_814 : f32 = x_641.unity_LightData.y;
  u_xlat44 = min(x_812, x_814);
  let x_818 : f32 = u_xlat44;
  u_xlatu44 = bitcast<u32>(i32(x_818));
  let x_823 : f32 = x_454.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_825 : f32 = x_454.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_827 : f32 = x_454.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_829 : f32 = x_454.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_830 : vec4<f32> = vec4<f32>(x_823, x_825, x_827, x_829);
  let x_836 : vec4<bool> = (vec4<f32>(x_830.x, x_830.y, x_830.z, x_830.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_836.x, x_836.y);
  u_xlat22.x = 0.0f;
  u_xlat22.y = 0.0f;
  u_xlat22.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_847 : u32 = u_xlatu_loop_1;
    let x_848 : u32 = u_xlatu44;
    if ((x_847 < x_848)) {
    } else {
      break;
    }
    let x_851 : u32 = u_xlatu_loop_1;
    u_xlatu46 = (x_851 >> 2u);
    let x_855 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_855 & 3u));
    let x_858 : u32 = u_xlatu46;
    let x_861 : vec4<f32> = x_641.unity_LightIndices[bitcast<i32>(x_858)];
    let x_871 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_876 : vec4<u32> = indexable[x_871];
    u_xlat46 = dot(x_861, bitcast<vec4<f32>>(x_876));
    let x_879 : f32 = u_xlat46;
    u_xlatu46 = bitcast<u32>(i32(x_879));
    let x_883 : vec3<f32> = vs_TEXCOORD1;
    let x_895 : u32 = u_xlatu46;
    let x_898 : vec4<f32> = x_894.x_AdditionalLightsPosition[bitcast<i32>(x_895)];
    let x_901 : u32 = u_xlatu46;
    let x_904 : vec4<f32> = x_894.x_AdditionalLightsPosition[bitcast<i32>(x_901)];
    u_xlat9 = ((-(x_883) * vec3<f32>(x_898.w, x_898.w, x_898.w)) + vec3<f32>(x_904.x, x_904.y, x_904.z));
    let x_908 : vec3<f32> = u_xlat9;
    let x_909 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_908, x_909);
    let x_911 : f32 = u_xlat48;
    u_xlat48 = max(x_911, 6.10351562e-05f);
    let x_915 : f32 = u_xlat48;
    u_xlat35 = inverseSqrt(x_915);
    let x_918 : f32 = u_xlat35;
    let x_920 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_918, x_918, x_918) * x_920);
    let x_922 : f32 = u_xlat48;
    u_xlat49 = (1.0f / x_922);
    let x_924 : f32 = u_xlat48;
    let x_925 : u32 = u_xlatu46;
    let x_928 : f32 = x_894.x_AdditionalLightsAttenuation[bitcast<i32>(x_925)].x;
    u_xlat48 = (x_924 * x_928);
    let x_930 : f32 = u_xlat48;
    let x_932 : f32 = u_xlat48;
    u_xlat48 = ((-(x_930) * x_932) + 1.0f);
    let x_935 : f32 = u_xlat48;
    u_xlat48 = max(x_935, 0.0f);
    let x_937 : f32 = u_xlat48;
    let x_938 : f32 = u_xlat48;
    u_xlat48 = (x_937 * x_938);
    let x_940 : f32 = u_xlat48;
    let x_941 : f32 = u_xlat49;
    u_xlat48 = (x_940 * x_941);
    let x_943 : u32 = u_xlatu46;
    let x_946 : vec4<f32> = x_894.x_AdditionalLightsSpotDir[bitcast<i32>(x_943)];
    let x_948 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_946.x, x_946.y, x_946.z), x_948);
    let x_950 : f32 = u_xlat49;
    let x_951 : u32 = u_xlatu46;
    let x_954 : f32 = x_894.x_AdditionalLightsAttenuation[bitcast<i32>(x_951)].z;
    let x_956 : u32 = u_xlatu46;
    let x_959 : f32 = x_894.x_AdditionalLightsAttenuation[bitcast<i32>(x_956)].w;
    u_xlat49 = ((x_950 * x_954) + x_959);
    let x_961 : f32 = u_xlat49;
    u_xlat49 = clamp(x_961, 0.0f, 1.0f);
    let x_963 : f32 = u_xlat49;
    let x_964 : f32 = u_xlat49;
    u_xlat49 = (x_963 * x_964);
    let x_966 : f32 = u_xlat48;
    let x_967 : f32 = u_xlat49;
    u_xlat48 = (x_966 * x_967);
    let x_970 : u32 = u_xlatu46;
    u_xlatu49 = (x_970 >> 5u);
    let x_973 : u32 = u_xlatu46;
    u_xlati51 = (1i << bitcast<u32>((bitcast<i32>(x_973) & 31i)));
    let x_979 : i32 = u_xlati51;
    let x_981 : u32 = u_xlatu49;
    let x_984 : f32 = x_454.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_981)].el;
    u_xlati49 = bitcast<i32>((bitcast<u32>(x_979) & bitcast<u32>(x_984)));
    let x_988 : i32 = u_xlati49;
    if ((x_988 != 0i)) {
      let x_998 : u32 = u_xlatu46;
      let x_1001 : f32 = x_997.x_AdditionalLightsLightTypes[bitcast<i32>(x_998)].el;
      u_xlati49 = i32(x_1001);
      let x_1003 : i32 = u_xlati49;
      u_xlati51 = select(1i, 0i, (x_1003 != 0i));
      let x_1007 : u32 = u_xlatu46;
      u_xlati52 = (bitcast<i32>(x_1007) << bitcast<u32>(2i));
      let x_1010 : i32 = u_xlati51;
      if ((x_1010 != 0i)) {
        let x_1015 : vec3<f32> = vs_TEXCOORD1;
        let x_1017 : i32 = u_xlati52;
        let x_1020 : i32 = u_xlati52;
        let x_1024 : vec4<f32> = x_997.x_AdditionalLightsWorldToLights[((x_1017 + 1i) / 4i)][((x_1020 + 1i) % 4i)];
        let x_1026 : vec3<f32> = (vec3<f32>(x_1015.y, x_1015.y, x_1015.y) * vec3<f32>(x_1024.x, x_1024.y, x_1024.w));
        let x_1027 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1026.x, x_1026.y, x_1026.z, x_1027.w);
        let x_1029 : i32 = u_xlati52;
        let x_1031 : i32 = u_xlati52;
        let x_1034 : vec4<f32> = x_997.x_AdditionalLightsWorldToLights[(x_1029 / 4i)][(x_1031 % 4i)];
        let x_1036 : vec3<f32> = vs_TEXCOORD1;
        let x_1039 : vec4<f32> = u_xlat11;
        let x_1041 : vec3<f32> = ((vec3<f32>(x_1034.x, x_1034.y, x_1034.w) * vec3<f32>(x_1036.x, x_1036.x, x_1036.x)) + vec3<f32>(x_1039.x, x_1039.y, x_1039.z));
        let x_1042 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1041.x, x_1041.y, x_1041.z, x_1042.w);
        let x_1044 : i32 = u_xlati52;
        let x_1047 : i32 = u_xlati52;
        let x_1051 : vec4<f32> = x_997.x_AdditionalLightsWorldToLights[((x_1044 + 2i) / 4i)][((x_1047 + 2i) % 4i)];
        let x_1053 : vec3<f32> = vs_TEXCOORD1;
        let x_1056 : vec4<f32> = u_xlat11;
        let x_1058 : vec3<f32> = ((vec3<f32>(x_1051.x, x_1051.y, x_1051.w) * vec3<f32>(x_1053.z, x_1053.z, x_1053.z)) + vec3<f32>(x_1056.x, x_1056.y, x_1056.z));
        let x_1059 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1058.x, x_1058.y, x_1058.z, x_1059.w);
        let x_1061 : vec4<f32> = u_xlat11;
        let x_1063 : i32 = u_xlati52;
        let x_1066 : i32 = u_xlati52;
        let x_1070 : vec4<f32> = x_997.x_AdditionalLightsWorldToLights[((x_1063 + 3i) / 4i)][((x_1066 + 3i) % 4i)];
        let x_1072 : vec3<f32> = (vec3<f32>(x_1061.x, x_1061.y, x_1061.z) + vec3<f32>(x_1070.x, x_1070.y, x_1070.w));
        let x_1073 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1072.x, x_1072.y, x_1072.z, x_1073.w);
        let x_1075 : vec4<f32> = u_xlat11;
        let x_1077 : vec4<f32> = u_xlat11;
        let x_1079 : vec2<f32> = (vec2<f32>(x_1075.x, x_1075.y) / vec2<f32>(x_1077.z, x_1077.z));
        let x_1080 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1079.x, x_1079.y, x_1080.z, x_1080.w);
        let x_1082 : vec4<f32> = u_xlat11;
        let x_1085 : vec2<f32> = ((vec2<f32>(x_1082.x, x_1082.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1086 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1085.x, x_1085.y, x_1086.z, x_1086.w);
        let x_1088 : vec4<f32> = u_xlat11;
        let x_1092 : vec2<f32> = clamp(vec2<f32>(x_1088.x, x_1088.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1093 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1092.x, x_1092.y, x_1093.z, x_1093.w);
        let x_1095 : u32 = u_xlatu46;
        let x_1098 : vec4<f32> = x_997.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1095)];
        let x_1100 : vec4<f32> = u_xlat11;
        let x_1103 : u32 = u_xlatu46;
        let x_1106 : vec4<f32> = x_997.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1103)];
        let x_1108 : vec2<f32> = ((vec2<f32>(x_1098.x, x_1098.y) * vec2<f32>(x_1100.x, x_1100.y)) + vec2<f32>(x_1106.z, x_1106.w));
        let x_1109 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1108.x, x_1108.y, x_1109.z, x_1109.w);
      } else {
        let x_1113 : i32 = u_xlati49;
        u_xlatb49 = (x_1113 == 1i);
        let x_1115 : bool = u_xlatb49;
        u_xlati49 = select(0i, 1i, x_1115);
        let x_1117 : i32 = u_xlati49;
        if ((x_1117 != 0i)) {
          let x_1123 : vec3<f32> = vs_TEXCOORD1;
          let x_1125 : i32 = u_xlati52;
          let x_1128 : i32 = u_xlati52;
          let x_1132 : vec4<f32> = x_997.x_AdditionalLightsWorldToLights[((x_1125 + 1i) / 4i)][((x_1128 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1123.y, x_1123.y) * vec2<f32>(x_1132.x, x_1132.y));
          let x_1135 : i32 = u_xlati52;
          let x_1137 : i32 = u_xlati52;
          let x_1140 : vec4<f32> = x_997.x_AdditionalLightsWorldToLights[(x_1135 / 4i)][(x_1137 % 4i)];
          let x_1142 : vec3<f32> = vs_TEXCOORD1;
          let x_1145 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1140.x, x_1140.y) * vec2<f32>(x_1142.x, x_1142.x)) + x_1145);
          let x_1147 : i32 = u_xlati52;
          let x_1150 : i32 = u_xlati52;
          let x_1154 : vec4<f32> = x_997.x_AdditionalLightsWorldToLights[((x_1147 + 2i) / 4i)][((x_1150 + 2i) % 4i)];
          let x_1156 : vec3<f32> = vs_TEXCOORD1;
          let x_1159 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1154.x, x_1154.y) * vec2<f32>(x_1156.z, x_1156.z)) + x_1159);
          let x_1161 : vec2<f32> = u_xlat39;
          let x_1162 : i32 = u_xlati52;
          let x_1165 : i32 = u_xlati52;
          let x_1169 : vec4<f32> = x_997.x_AdditionalLightsWorldToLights[((x_1162 + 3i) / 4i)][((x_1165 + 3i) % 4i)];
          u_xlat39 = (x_1161 + vec2<f32>(x_1169.x, x_1169.y));
          let x_1172 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1172 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1175 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1175);
          let x_1177 : u32 = u_xlatu46;
          let x_1180 : vec4<f32> = x_997.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1177)];
          let x_1182 : vec2<f32> = u_xlat39;
          let x_1184 : u32 = u_xlatu46;
          let x_1187 : vec4<f32> = x_997.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1184)];
          let x_1189 : vec2<f32> = ((vec2<f32>(x_1180.x, x_1180.y) * x_1182) + vec2<f32>(x_1187.z, x_1187.w));
          let x_1190 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1189.x, x_1189.y, x_1190.z, x_1190.w);
        } else {
          let x_1194 : vec3<f32> = vs_TEXCOORD1;
          let x_1196 : i32 = u_xlati52;
          let x_1199 : i32 = u_xlati52;
          let x_1203 : vec4<f32> = x_997.x_AdditionalLightsWorldToLights[((x_1196 + 1i) / 4i)][((x_1199 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1194.y, x_1194.y, x_1194.y, x_1194.y) * x_1203);
          let x_1205 : i32 = u_xlati52;
          let x_1207 : i32 = u_xlati52;
          let x_1210 : vec4<f32> = x_997.x_AdditionalLightsWorldToLights[(x_1205 / 4i)][(x_1207 % 4i)];
          let x_1211 : vec3<f32> = vs_TEXCOORD1;
          let x_1214 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1210 * vec4<f32>(x_1211.x, x_1211.x, x_1211.x, x_1211.x)) + x_1214);
          let x_1216 : i32 = u_xlati52;
          let x_1219 : i32 = u_xlati52;
          let x_1223 : vec4<f32> = x_997.x_AdditionalLightsWorldToLights[((x_1216 + 2i) / 4i)][((x_1219 + 2i) % 4i)];
          let x_1224 : vec3<f32> = vs_TEXCOORD1;
          let x_1227 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1223 * vec4<f32>(x_1224.z, x_1224.z, x_1224.z, x_1224.z)) + x_1227);
          let x_1229 : vec4<f32> = u_xlat12;
          let x_1230 : i32 = u_xlati52;
          let x_1233 : i32 = u_xlati52;
          let x_1237 : vec4<f32> = x_997.x_AdditionalLightsWorldToLights[((x_1230 + 3i) / 4i)][((x_1233 + 3i) % 4i)];
          u_xlat12 = (x_1229 + x_1237);
          let x_1239 : vec4<f32> = u_xlat12;
          let x_1241 : vec4<f32> = u_xlat12;
          let x_1243 : vec3<f32> = (vec3<f32>(x_1239.x, x_1239.y, x_1239.z) / vec3<f32>(x_1241.w, x_1241.w, x_1241.w));
          let x_1244 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1243.x, x_1243.y, x_1243.z, x_1244.w);
          let x_1246 : vec4<f32> = u_xlat12;
          let x_1248 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(vec3<f32>(x_1246.x, x_1246.y, x_1246.z), vec3<f32>(x_1248.x, x_1248.y, x_1248.z));
          let x_1251 : f32 = u_xlat49;
          u_xlat49 = inverseSqrt(x_1251);
          let x_1253 : f32 = u_xlat49;
          let x_1255 : vec4<f32> = u_xlat12;
          let x_1257 : vec3<f32> = (vec3<f32>(x_1253, x_1253, x_1253) * vec3<f32>(x_1255.x, x_1255.y, x_1255.z));
          let x_1258 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1257.x, x_1257.y, x_1257.z, x_1258.w);
          let x_1260 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(abs(vec3<f32>(x_1260.x, x_1260.y, x_1260.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1265 : f32 = u_xlat49;
          u_xlat49 = max(x_1265, 0.000001f);
          let x_1268 : f32 = u_xlat49;
          u_xlat49 = (1.0f / x_1268);
          let x_1271 : f32 = u_xlat49;
          let x_1273 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1271, x_1271, x_1271) * vec3<f32>(x_1273.z, x_1273.x, x_1273.y));
          let x_1277 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1277);
          let x_1281 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1281, 0.0f, 1.0f);
          let x_1285 : vec3<f32> = u_xlat13;
          let x_1288 : vec4<bool> = (vec4<f32>(x_1285.y, x_1285.z, x_1285.y, x_1285.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1288.x, x_1288.y);
          let x_1291 : bool = u_xlatb39.x;
          if (x_1291) {
            let x_1296 : f32 = u_xlat13.x;
            x_1292 = x_1296;
          } else {
            let x_1299 : f32 = u_xlat13.x;
            x_1292 = -(x_1299);
          }
          let x_1301 : f32 = x_1292;
          u_xlat39.x = x_1301;
          let x_1304 : bool = u_xlatb39.y;
          if (x_1304) {
            let x_1309 : f32 = u_xlat13.x;
            x_1305 = x_1309;
          } else {
            let x_1312 : f32 = u_xlat13.x;
            x_1305 = -(x_1312);
          }
          let x_1314 : f32 = x_1305;
          u_xlat39.y = x_1314;
          let x_1316 : vec4<f32> = u_xlat12;
          let x_1318 : f32 = u_xlat49;
          let x_1321 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1316.x, x_1316.y) * vec2<f32>(x_1318, x_1318)) + x_1321);
          let x_1323 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1323 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1326 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_1326, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1330 : u32 = u_xlatu46;
          let x_1333 : vec4<f32> = x_997.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1330)];
          let x_1335 : vec2<f32> = u_xlat39;
          let x_1337 : u32 = u_xlatu46;
          let x_1340 : vec4<f32> = x_997.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1337)];
          let x_1342 : vec2<f32> = ((vec2<f32>(x_1333.x, x_1333.y) * x_1335) + vec2<f32>(x_1340.z, x_1340.w));
          let x_1343 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1342.x, x_1342.y, x_1343.z, x_1343.w);
        }
      }
      let x_1350 : vec4<f32> = u_xlat11;
      let x_1353 : f32 = x_44.x_GlobalMipBias.x;
      let x_1354 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1350.x, x_1350.y), x_1353);
      u_xlat11 = x_1354;
      let x_1356 : bool = u_xlatb7.y;
      if (x_1356) {
        let x_1361 : f32 = u_xlat11.w;
        x_1357 = x_1361;
      } else {
        let x_1364 : f32 = u_xlat11.x;
        x_1357 = x_1364;
      }
      let x_1365 : f32 = x_1357;
      u_xlat49 = x_1365;
      let x_1367 : bool = u_xlatb7.x;
      if (x_1367) {
        let x_1371 : vec4<f32> = u_xlat11;
        x_1368 = vec3<f32>(x_1371.x, x_1371.y, x_1371.z);
      } else {
        let x_1374 : f32 = u_xlat49;
        x_1368 = vec3<f32>(x_1374, x_1374, x_1374);
      }
      let x_1376 : vec3<f32> = x_1368;
      let x_1377 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1376.x, x_1376.y, x_1376.z, x_1377.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1383 : vec4<f32> = u_xlat11;
    let x_1385 : u32 = u_xlatu46;
    let x_1388 : vec4<f32> = x_894.x_AdditionalLightsColor[bitcast<i32>(x_1385)];
    let x_1390 : vec3<f32> = (vec3<f32>(x_1383.x, x_1383.y, x_1383.z) * vec3<f32>(x_1388.x, x_1388.y, x_1388.z));
    let x_1391 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1390.x, x_1390.y, x_1390.z, x_1391.w);
    let x_1393 : f32 = u_xlat33;
    let x_1395 : vec4<f32> = u_xlat11;
    let x_1397 : vec3<f32> = (vec3<f32>(x_1393, x_1393, x_1393) * vec3<f32>(x_1395.x, x_1395.y, x_1395.z));
    let x_1398 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1397.x, x_1397.y, x_1397.z, x_1398.w);
    let x_1400 : vec3<f32> = u_xlat3;
    let x_1401 : vec3<f32> = u_xlat10;
    u_xlat46 = dot(x_1400, x_1401);
    let x_1403 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1403, 0.0f, 1.0f);
    let x_1405 : f32 = u_xlat46;
    let x_1406 : f32 = u_xlat48;
    u_xlat46 = (x_1405 * x_1406);
    let x_1408 : f32 = u_xlat46;
    let x_1410 : vec4<f32> = u_xlat11;
    let x_1412 : vec3<f32> = (vec3<f32>(x_1408, x_1408, x_1408) * vec3<f32>(x_1410.x, x_1410.y, x_1410.z));
    let x_1413 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1412.x, x_1412.y, x_1412.z, x_1413.w);
    let x_1415 : vec3<f32> = u_xlat9;
    let x_1416 : f32 = u_xlat35;
    let x_1419 : vec3<f32> = u_xlat2;
    u_xlat9 = ((x_1415 * vec3<f32>(x_1416, x_1416, x_1416)) + x_1419);
    let x_1421 : vec3<f32> = u_xlat9;
    let x_1422 : vec3<f32> = u_xlat9;
    u_xlat46 = dot(x_1421, x_1422);
    let x_1424 : f32 = u_xlat46;
    u_xlat46 = max(x_1424, 1.17549435e-37f);
    let x_1426 : f32 = u_xlat46;
    u_xlat46 = inverseSqrt(x_1426);
    let x_1428 : f32 = u_xlat46;
    let x_1430 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1428, x_1428, x_1428) * x_1430);
    let x_1432 : vec3<f32> = u_xlat3;
    let x_1433 : vec3<f32> = u_xlat9;
    u_xlat46 = dot(x_1432, x_1433);
    let x_1435 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1435, 0.0f, 1.0f);
    let x_1437 : vec3<f32> = u_xlat10;
    let x_1438 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_1437, x_1438);
    let x_1440 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1440, 0.0f, 1.0f);
    let x_1442 : f32 = u_xlat46;
    let x_1443 : f32 = u_xlat46;
    u_xlat46 = (x_1442 * x_1443);
    let x_1445 : f32 = u_xlat46;
    let x_1447 : f32 = u_xlat8.x;
    u_xlat46 = ((x_1445 * x_1447) + 1.000010014f);
    let x_1450 : f32 = u_xlat48;
    let x_1451 : f32 = u_xlat48;
    u_xlat48 = (x_1450 * x_1451);
    let x_1453 : f32 = u_xlat46;
    let x_1454 : f32 = u_xlat46;
    u_xlat46 = (x_1453 * x_1454);
    let x_1456 : f32 = u_xlat48;
    u_xlat48 = max(x_1456, 0.100000001f);
    let x_1458 : f32 = u_xlat46;
    let x_1459 : f32 = u_xlat48;
    u_xlat46 = (x_1458 * x_1459);
    let x_1461 : f32 = u_xlat47;
    let x_1462 : f32 = u_xlat46;
    u_xlat46 = (x_1461 * x_1462);
    let x_1464 : f32 = u_xlat19;
    let x_1465 : f32 = u_xlat46;
    u_xlat46 = (x_1464 / x_1465);
    let x_1467 : vec4<f32> = u_xlat0;
    let x_1469 : f32 = u_xlat46;
    let x_1472 : vec3<f32> = u_xlat15;
    u_xlat9 = ((vec3<f32>(x_1467.x, x_1467.y, x_1467.z) * vec3<f32>(x_1469, x_1469, x_1469)) + x_1472);
    let x_1474 : vec3<f32> = u_xlat9;
    let x_1475 : vec4<f32> = u_xlat11;
    let x_1478 : vec3<f32> = u_xlat22;
    u_xlat22 = ((x_1474 * vec3<f32>(x_1475.x, x_1475.y, x_1475.z)) + x_1478);

    continuing {
      let x_1480 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1480 + bitcast<u32>(1i));
    }
  }
  let x_1482 : vec4<f32> = u_xlat4;
  let x_1484 : vec3<f32> = u_xlat5;
  let x_1487 : vec3<f32> = u_xlat6;
  let x_1488 : vec3<f32> = ((vec3<f32>(x_1482.x, x_1482.y, x_1482.z) * vec3<f32>(x_1484.x, x_1484.x, x_1484.x)) + x_1487);
  let x_1489 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1488.x, x_1488.y, x_1488.z, x_1489.w);
  let x_1491 : vec3<f32> = u_xlat22;
  let x_1492 : vec4<f32> = u_xlat0;
  let x_1494 : vec3<f32> = (x_1491 + vec3<f32>(x_1492.x, x_1492.y, x_1492.z));
  let x_1495 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1494.x, x_1494.y, x_1494.z, x_1495.w);
  let x_1497 : f32 = u_xlat42;
  let x_1498 : f32 = u_xlat42;
  u_xlat42 = (x_1497 * -(x_1498));
  let x_1501 : f32 = u_xlat42;
  u_xlat42 = exp2(x_1501);
  let x_1503 : vec4<f32> = u_xlat0;
  let x_1507 : vec4<f32> = x_44.unity_FogColor;
  let x_1510 : vec3<f32> = (vec3<f32>(x_1503.x, x_1503.y, x_1503.z) + -(vec3<f32>(x_1507.x, x_1507.y, x_1507.z)));
  let x_1511 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1510.x, x_1510.y, x_1510.z, x_1511.w);
  let x_1515 : f32 = u_xlat42;
  let x_1517 : vec4<f32> = u_xlat0;
  let x_1521 : vec4<f32> = x_44.unity_FogColor;
  let x_1523 : vec3<f32> = ((vec3<f32>(x_1515, x_1515, x_1515) * vec3<f32>(x_1517.x, x_1517.y, x_1517.z)) + vec3<f32>(x_1521.x, x_1521.y, x_1521.z));
  let x_1524 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1523.x, x_1523.y, x_1523.z, x_1524.w);
  let x_1529 : f32 = x_57.x_Surface;
  u_xlatb0 = (x_1529 == 1.0f);
  let x_1531 : bool = u_xlatb0;
  if (x_1531) {
    let x_1536 : f32 = u_xlat1.x;
    x_1532 = x_1536;
  } else {
    x_1532 = 1.0f;
  }
  let x_1538 : f32 = x_1532;
  SV_Target0.w = x_1538;
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

