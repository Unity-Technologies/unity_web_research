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

@group(0) @binding(11) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

@group(0) @binding(4) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(12) var sampler_EmissionMap : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(5) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_384 : MainLightShadows;

@group(1) @binding(5) var<uniform> x_451 : LightCookies;

@group(0) @binding(7) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_641 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_898 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_1011 : AdditionalLightsCookies;

@group(0) @binding(8) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlatb45 : bool;
  var u_xlat3 : vec3<f32>;
  var u_xlat47 : f32;
  var u_xlat4 : vec3<f32>;
  var x_120 : vec3<f32>;
  var u_xlat45 : f32;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat48 : f32;
  var u_xlat16 : vec3<f32>;
  var u_xlat49 : f32;
  var u_xlat50 : f32;
  var u_xlat21 : f32;
  var u_xlat36 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat51 : f32;
  var u_xlat7 : vec4<f32>;
  var u_xlatb7 : bool;
  var u_xlatb22 : bool;
  var u_xlat22 : f32;
  var u_xlatb8 : vec2<bool>;
  var u_xlat52 : f32;
  var x_537 : f32;
  var x_548 : vec3<f32>;
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
  var x_1313 : f32;
  var x_1326 : f32;
  var x_1378 : f32;
  var x_1390 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_1565 : f32;
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
  u_xlatb45 = (x_81 == 0.0f);
  let x_87 : vec3<f32> = vs_TEXCOORD1;
  let x_92 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat3 = (-(x_87) + x_92);
  let x_96 : vec3<f32> = u_xlat3;
  let x_97 : vec3<f32> = u_xlat3;
  u_xlat47 = dot(x_96, x_97);
  let x_99 : f32 = u_xlat47;
  u_xlat47 = inverseSqrt(x_99);
  let x_101 : f32 = u_xlat47;
  let x_103 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_101, x_101, x_101) * x_103);
  let x_110 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat4.x = x_110;
  let x_113 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat4.y = x_113;
  let x_117 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat4.z = x_117;
  let x_119 : bool = u_xlatb45;
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
  u_xlat45 = dot(x_129, x_130);
  let x_132 : f32 = u_xlat45;
  u_xlat45 = inverseSqrt(x_132);
  let x_134 : f32 = u_xlat45;
  let x_136 : vec3<f32> = vs_TEXCOORD2;
  u_xlat4 = (vec3<f32>(x_134, x_134, x_134) * x_136);
  let x_139 : f32 = vs_TEXCOORD1.y;
  let x_141 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat45 = (x_139 * x_141);
  let x_144 : f32 = x_44.unity_MatrixV[0i].z;
  let x_146 : f32 = vs_TEXCOORD1.x;
  let x_148 : f32 = u_xlat45;
  u_xlat45 = ((x_144 * x_146) + x_148);
  let x_151 : f32 = x_44.unity_MatrixV[2i].z;
  let x_153 : f32 = vs_TEXCOORD1.z;
  let x_155 : f32 = u_xlat45;
  u_xlat45 = ((x_151 * x_153) + x_155);
  let x_157 : f32 = u_xlat45;
  let x_160 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat45 = (x_157 + x_160);
  let x_162 : f32 = u_xlat45;
  let x_166 : f32 = x_44.x_ProjectionParams.y;
  u_xlat45 = (-(x_162) + -(x_166));
  let x_169 : f32 = u_xlat45;
  u_xlat45 = max(x_169, 0.0f);
  let x_171 : f32 = u_xlat45;
  let x_174 : f32 = x_44.unity_FogParams.x;
  u_xlat45 = (x_171 * x_174);
  let x_183 : vec2<f32> = vs_TEXCOORD8;
  let x_185 : f32 = x_44.x_GlobalMipBias.x;
  let x_186 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_183, x_185);
  u_xlat5 = x_186;
  let x_192 : vec2<f32> = vs_TEXCOORD8;
  let x_194 : f32 = x_44.x_GlobalMipBias.x;
  let x_195 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_192, x_194);
  u_xlat6 = vec3<f32>(x_195.x, x_195.y, x_195.z);
  let x_197 : vec4<f32> = u_xlat5;
  let x_201 : vec3<f32> = (vec3<f32>(x_197.x, x_197.y, x_197.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_202 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_201.x, x_201.y, x_201.z, x_202.w);
  let x_204 : vec3<f32> = u_xlat4;
  let x_205 : vec4<f32> = u_xlat5;
  u_xlat47 = dot(x_204, vec3<f32>(x_205.x, x_205.y, x_205.z));
  let x_208 : f32 = u_xlat47;
  u_xlat47 = (x_208 + 0.5f);
  let x_211 : f32 = u_xlat47;
  let x_213 : vec3<f32> = u_xlat6;
  let x_214 : vec3<f32> = (vec3<f32>(x_211, x_211, x_211) * x_213);
  let x_215 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_214.x, x_214.y, x_214.z, x_215.w);
  let x_218 : f32 = u_xlat5.w;
  u_xlat47 = max(x_218, 0.0001f);
  let x_221 : vec4<f32> = u_xlat5;
  let x_223 : f32 = u_xlat47;
  let x_225 : vec3<f32> = (vec3<f32>(x_221.x, x_221.y, x_221.z) / vec3<f32>(x_223, x_223, x_223));
  let x_226 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_225.x, x_225.y, x_225.z, x_226.w);
  let x_230 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_231 : vec2<f32> = vec2<f32>(x_230.x, x_230.y);
  let x_235 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_231.x, x_231.y));
  let x_236 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_235.x, x_235.y, x_236.z);
  let x_238 : vec3<f32> = u_xlat6;
  let x_240 : vec4<f32> = hlslcc_FragCoord;
  let x_242 : vec2<f32> = (vec2<f32>(x_238.x, x_238.y) * vec2<f32>(x_240.x, x_240.y));
  let x_243 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_242.x, x_242.y, x_243.z);
  let x_246 : f32 = u_xlat6.y;
  let x_249 : f32 = x_44.x_ScaleBiasRt.x;
  let x_252 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat47 = ((x_246 * x_249) + x_252);
  let x_254 : f32 = u_xlat47;
  u_xlat6.z = (-(x_254) + 1.0f);
  let x_259 : f32 = x_57.x_Metallic;
  u_xlat47 = ((-(x_259) * 0.959999979f) + 0.959999979f);
  let x_265 : f32 = u_xlat47;
  let x_268 : f32 = x_57.x_Smoothness;
  u_xlat48 = (-(x_265) + x_268);
  let x_271 : vec4<f32> = u_xlat1;
  let x_273 : f32 = u_xlat47;
  u_xlat16 = (vec3<f32>(x_271.y, x_271.z, x_271.w) * vec3<f32>(x_273, x_273, x_273));
  let x_276 : vec4<f32> = u_xlat0;
  let x_279 : vec4<f32> = x_57.x_BaseColor;
  let x_284 : vec3<f32> = ((vec3<f32>(x_276.x, x_276.y, x_276.z) * vec3<f32>(x_279.x, x_279.y, x_279.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_285 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_284.x, x_284.y, x_284.z, x_285.w);
  let x_288 : f32 = x_57.x_Metallic;
  let x_290 : f32 = x_57.x_Metallic;
  let x_292 : f32 = x_57.x_Metallic;
  let x_293 : vec3<f32> = vec3<f32>(x_288, x_290, x_292);
  let x_298 : vec4<f32> = u_xlat0;
  let x_303 : vec3<f32> = ((vec3<f32>(x_293.x, x_293.y, x_293.z) * vec3<f32>(x_298.x, x_298.y, x_298.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_304 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_303.x, x_303.y, x_303.z, x_304.w);
  let x_307 : f32 = x_57.x_Smoothness;
  u_xlat47 = (-(x_307) + 1.0f);
  let x_311 : f32 = u_xlat47;
  let x_312 : f32 = u_xlat47;
  u_xlat49 = (x_311 * x_312);
  let x_314 : f32 = u_xlat49;
  u_xlat49 = max(x_314, 0.0078125f);
  let x_318 : f32 = u_xlat49;
  let x_319 : f32 = u_xlat49;
  u_xlat50 = (x_318 * x_319);
  let x_321 : f32 = u_xlat48;
  u_xlat48 = (x_321 + 1.0f);
  let x_323 : f32 = u_xlat48;
  u_xlat48 = clamp(x_323, 0.0f, 1.0f);
  let x_326 : f32 = u_xlat49;
  u_xlat21 = ((x_326 * 4.0f) + 2.0f);
  let x_336 : vec3<f32> = u_xlat6;
  let x_339 : f32 = x_44.x_GlobalMipBias.x;
  let x_340 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_336.x, x_336.z), x_339);
  u_xlat6.x = x_340.x;
  let x_345 : f32 = u_xlat6.x;
  u_xlat36 = (x_345 + -1.0f);
  let x_350 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_351 : f32 = u_xlat36;
  u_xlat36 = ((x_350 * x_351) + 1.0f);
  let x_355 : f32 = u_xlat6.x;
  u_xlat6.x = min(x_355, 1.0f);
  let x_360 : vec4<f32> = vs_TEXCOORD6;
  let x_361 : vec2<f32> = vec2<f32>(x_360.x, x_360.y);
  let x_363 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_361.x, x_361.y, x_363);
  let x_376 : vec3<f32> = txVec0;
  let x_378 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_376.xy, x_376.z);
  u_xlat51 = x_378;
  let x_386 : f32 = x_384.x_MainLightShadowParams.x;
  u_xlat7.x = (-(x_386) + 1.0f);
  let x_390 : f32 = u_xlat51;
  let x_392 : f32 = x_384.x_MainLightShadowParams.x;
  let x_395 : f32 = u_xlat7.x;
  u_xlat51 = ((x_390 * x_392) + x_395);
  let x_399 : f32 = vs_TEXCOORD6.z;
  u_xlatb7 = (0.0f >= x_399);
  let x_403 : f32 = vs_TEXCOORD6.z;
  u_xlatb22 = (x_403 >= 1.0f);
  let x_405 : bool = u_xlatb22;
  let x_406 : bool = u_xlatb7;
  u_xlatb7 = (x_405 | x_406);
  let x_408 : bool = u_xlatb7;
  let x_409 : f32 = u_xlat51;
  u_xlat51 = select(x_409, 1.0f, x_408);
  let x_411 : vec3<f32> = vs_TEXCOORD1;
  let x_413 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_415 : vec3<f32> = (x_411 + -(x_413));
  let x_416 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_415.x, x_415.y, x_415.z, x_416.w);
  let x_418 : vec4<f32> = u_xlat7;
  let x_420 : vec4<f32> = u_xlat7;
  u_xlat7.x = dot(vec3<f32>(x_418.x, x_418.y, x_418.z), vec3<f32>(x_420.x, x_420.y, x_420.z));
  let x_425 : f32 = u_xlat7.x;
  let x_427 : f32 = x_384.x_MainLightShadowParams.z;
  let x_430 : f32 = x_384.x_MainLightShadowParams.w;
  u_xlat7.x = ((x_425 * x_427) + x_430);
  let x_434 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_434, 0.0f, 1.0f);
  let x_438 : f32 = u_xlat51;
  u_xlat22 = (-(x_438) + 1.0f);
  let x_442 : f32 = u_xlat7.x;
  let x_443 : f32 = u_xlat22;
  let x_445 : f32 = u_xlat51;
  u_xlat51 = ((x_442 * x_443) + x_445);
  let x_453 : f32 = x_451.x_MainLightCookieTextureFormat;
  u_xlatb7 = !((x_453 == -1.0f));
  let x_455 : bool = u_xlatb7;
  if (x_455) {
    let x_458 : vec3<f32> = vs_TEXCOORD1;
    let x_461 : vec4<f32> = x_451.x_MainLightWorldToLight[1i];
    let x_463 : vec2<f32> = (vec2<f32>(x_458.y, x_458.y) * vec2<f32>(x_461.x, x_461.y));
    let x_464 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_463.x, x_463.y, x_464.z, x_464.w);
    let x_467 : vec4<f32> = x_451.x_MainLightWorldToLight[0i];
    let x_469 : vec3<f32> = vs_TEXCOORD1;
    let x_472 : vec4<f32> = u_xlat7;
    let x_474 : vec2<f32> = ((vec2<f32>(x_467.x, x_467.y) * vec2<f32>(x_469.x, x_469.x)) + vec2<f32>(x_472.x, x_472.y));
    let x_475 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_474.x, x_474.y, x_475.z, x_475.w);
    let x_478 : vec4<f32> = x_451.x_MainLightWorldToLight[2i];
    let x_480 : vec3<f32> = vs_TEXCOORD1;
    let x_483 : vec4<f32> = u_xlat7;
    let x_485 : vec2<f32> = ((vec2<f32>(x_478.x, x_478.y) * vec2<f32>(x_480.z, x_480.z)) + vec2<f32>(x_483.x, x_483.y));
    let x_486 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_485.x, x_485.y, x_486.z, x_486.w);
    let x_488 : vec4<f32> = u_xlat7;
    let x_491 : vec4<f32> = x_451.x_MainLightWorldToLight[3i];
    let x_493 : vec2<f32> = (vec2<f32>(x_488.x, x_488.y) + vec2<f32>(x_491.x, x_491.y));
    let x_494 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_493.x, x_493.y, x_494.z, x_494.w);
    let x_496 : vec4<f32> = u_xlat7;
    let x_500 : vec2<f32> = ((vec2<f32>(x_496.x, x_496.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_501 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_500.x, x_500.y, x_501.z, x_501.w);
    let x_508 : vec4<f32> = u_xlat7;
    let x_511 : f32 = x_44.x_GlobalMipBias.x;
    let x_512 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_508.x, x_508.y), x_511);
    u_xlat7 = x_512;
    let x_517 : f32 = x_451.x_MainLightCookieTextureFormat;
    let x_519 : f32 = x_451.x_MainLightCookieTextureFormat;
    let x_521 : f32 = x_451.x_MainLightCookieTextureFormat;
    let x_523 : f32 = x_451.x_MainLightCookieTextureFormat;
    let x_524 : vec4<f32> = vec4<f32>(x_517, x_519, x_521, x_523);
    let x_532 : vec4<bool> = (vec4<f32>(x_524.x, x_524.y, x_524.z, x_524.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb8 = vec2<bool>(x_532.x, x_532.y);
    let x_536 : bool = u_xlatb8.y;
    if (x_536) {
      let x_541 : f32 = u_xlat7.w;
      x_537 = x_541;
    } else {
      let x_544 : f32 = u_xlat7.x;
      x_537 = x_544;
    }
    let x_545 : f32 = x_537;
    u_xlat52 = x_545;
    let x_547 : bool = u_xlatb8.x;
    if (x_547) {
      let x_551 : vec4<f32> = u_xlat7;
      x_548 = vec3<f32>(x_551.x, x_551.y, x_551.z);
    } else {
      let x_554 : f32 = u_xlat52;
      x_548 = vec3<f32>(x_554, x_554, x_554);
    }
    let x_556 : vec3<f32> = x_548;
    let x_557 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_556.x, x_556.y, x_556.z, x_557.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_563 : vec4<f32> = u_xlat7;
  let x_566 : vec4<f32> = x_44.x_MainLightColor;
  let x_568 : vec3<f32> = (vec3<f32>(x_563.x, x_563.y, x_563.z) * vec3<f32>(x_566.x, x_566.y, x_566.z));
  let x_569 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_568.x, x_568.y, x_568.z, x_569.w);
  let x_571 : f32 = u_xlat36;
  let x_573 : vec4<f32> = u_xlat7;
  let x_575 : vec3<f32> = (vec3<f32>(x_571, x_571, x_571) * vec3<f32>(x_573.x, x_573.y, x_573.z));
  let x_576 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_575.x, x_575.y, x_575.z, x_576.w);
  let x_578 : vec3<f32> = u_xlat3;
  let x_580 : vec3<f32> = u_xlat4;
  u_xlat52 = dot(-(x_578), x_580);
  let x_582 : f32 = u_xlat52;
  let x_583 : f32 = u_xlat52;
  u_xlat52 = (x_582 + x_583);
  let x_586 : vec3<f32> = u_xlat4;
  let x_587 : f32 = u_xlat52;
  let x_591 : vec3<f32> = u_xlat3;
  let x_593 : vec3<f32> = ((x_586 * -(vec3<f32>(x_587, x_587, x_587))) + -(x_591));
  let x_594 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_593.x, x_593.y, x_593.z, x_594.w);
  let x_596 : vec3<f32> = u_xlat4;
  let x_597 : vec3<f32> = u_xlat3;
  u_xlat52 = dot(x_596, x_597);
  let x_599 : f32 = u_xlat52;
  u_xlat52 = clamp(x_599, 0.0f, 1.0f);
  let x_601 : f32 = u_xlat52;
  u_xlat52 = (-(x_601) + 1.0f);
  let x_604 : f32 = u_xlat52;
  let x_605 : f32 = u_xlat52;
  u_xlat52 = (x_604 * x_605);
  let x_607 : f32 = u_xlat52;
  let x_608 : f32 = u_xlat52;
  u_xlat52 = (x_607 * x_608);
  let x_611 : f32 = u_xlat47;
  u_xlat53 = ((-(x_611) * 0.699999988f) + 1.700000048f);
  let x_617 : f32 = u_xlat47;
  let x_618 : f32 = u_xlat53;
  u_xlat47 = (x_617 * x_618);
  let x_620 : f32 = u_xlat47;
  u_xlat47 = (x_620 * 6.0f);
  let x_631 : vec4<f32> = u_xlat8;
  let x_633 : f32 = u_xlat47;
  let x_634 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_631.x, x_631.y, x_631.z), x_633);
  u_xlat8 = x_634;
  let x_636 : f32 = u_xlat8.w;
  u_xlat47 = (x_636 + -1.0f);
  let x_643 : f32 = x_641.unity_SpecCube0_HDR.w;
  let x_644 : f32 = u_xlat47;
  u_xlat47 = ((x_643 * x_644) + 1.0f);
  let x_647 : f32 = u_xlat47;
  u_xlat47 = max(x_647, 0.0f);
  let x_649 : f32 = u_xlat47;
  u_xlat47 = log2(x_649);
  let x_651 : f32 = u_xlat47;
  let x_653 : f32 = x_641.unity_SpecCube0_HDR.y;
  u_xlat47 = (x_651 * x_653);
  let x_655 : f32 = u_xlat47;
  u_xlat47 = exp2(x_655);
  let x_657 : f32 = u_xlat47;
  let x_659 : f32 = x_641.unity_SpecCube0_HDR.x;
  u_xlat47 = (x_657 * x_659);
  let x_661 : vec4<f32> = u_xlat8;
  let x_663 : f32 = u_xlat47;
  let x_665 : vec3<f32> = (vec3<f32>(x_661.x, x_661.y, x_661.z) * vec3<f32>(x_663, x_663, x_663));
  let x_666 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_665.x, x_665.y, x_665.z, x_666.w);
  let x_670 : f32 = u_xlat49;
  let x_672 : f32 = u_xlat49;
  u_xlat9 = ((vec2<f32>(x_670, x_670) * vec2<f32>(x_672, x_672)) + vec2<f32>(-1.0f, 1.0f));
  let x_678 : f32 = u_xlat9.y;
  u_xlat47 = (1.0f / x_678);
  let x_681 : vec4<f32> = u_xlat0;
  let x_684 : f32 = u_xlat48;
  u_xlat24 = (-(vec3<f32>(x_681.x, x_681.y, x_681.z)) + vec3<f32>(x_684, x_684, x_684));
  let x_687 : f32 = u_xlat52;
  let x_689 : vec3<f32> = u_xlat24;
  let x_691 : vec4<f32> = u_xlat0;
  u_xlat24 = ((vec3<f32>(x_687, x_687, x_687) * x_689) + vec3<f32>(x_691.x, x_691.y, x_691.z));
  let x_694 : f32 = u_xlat47;
  let x_696 : vec3<f32> = u_xlat24;
  u_xlat24 = (vec3<f32>(x_694, x_694, x_694) * x_696);
  let x_698 : vec4<f32> = u_xlat8;
  let x_700 : vec3<f32> = u_xlat24;
  let x_701 : vec3<f32> = (vec3<f32>(x_698.x, x_698.y, x_698.z) * x_700);
  let x_702 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_701.x, x_701.y, x_701.z, x_702.w);
  let x_704 : vec4<f32> = u_xlat5;
  let x_706 : vec3<f32> = u_xlat16;
  let x_708 : vec4<f32> = u_xlat8;
  let x_710 : vec3<f32> = ((vec3<f32>(x_704.x, x_704.y, x_704.z) * x_706) + vec3<f32>(x_708.x, x_708.y, x_708.z));
  let x_711 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_710.x, x_710.y, x_710.z, x_711.w);
  let x_713 : f32 = u_xlat51;
  let x_716 : f32 = x_641.unity_LightData.z;
  u_xlat47 = (x_713 * x_716);
  let x_718 : vec3<f32> = u_xlat4;
  let x_720 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat48 = dot(x_718, vec3<f32>(x_720.x, x_720.y, x_720.z));
  let x_723 : f32 = u_xlat48;
  u_xlat48 = clamp(x_723, 0.0f, 1.0f);
  let x_725 : f32 = u_xlat47;
  let x_726 : f32 = u_xlat48;
  u_xlat47 = (x_725 * x_726);
  let x_728 : f32 = u_xlat47;
  let x_730 : vec4<f32> = u_xlat7;
  let x_732 : vec3<f32> = (vec3<f32>(x_728, x_728, x_728) * vec3<f32>(x_730.x, x_730.y, x_730.z));
  let x_733 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_732.x, x_732.y, x_732.z, x_733.w);
  let x_735 : vec3<f32> = u_xlat3;
  let x_737 : vec4<f32> = x_44.x_MainLightPosition;
  let x_739 : vec3<f32> = (x_735 + vec3<f32>(x_737.x, x_737.y, x_737.z));
  let x_740 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_739.x, x_739.y, x_739.z, x_740.w);
  let x_742 : vec4<f32> = u_xlat8;
  let x_744 : vec4<f32> = u_xlat8;
  u_xlat47 = dot(vec3<f32>(x_742.x, x_742.y, x_742.z), vec3<f32>(x_744.x, x_744.y, x_744.z));
  let x_747 : f32 = u_xlat47;
  u_xlat47 = max(x_747, 1.17549435e-37f);
  let x_750 : f32 = u_xlat47;
  u_xlat47 = inverseSqrt(x_750);
  let x_752 : f32 = u_xlat47;
  let x_754 : vec4<f32> = u_xlat8;
  let x_756 : vec3<f32> = (vec3<f32>(x_752, x_752, x_752) * vec3<f32>(x_754.x, x_754.y, x_754.z));
  let x_757 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_756.x, x_756.y, x_756.z, x_757.w);
  let x_759 : vec3<f32> = u_xlat4;
  let x_760 : vec4<f32> = u_xlat8;
  u_xlat47 = dot(x_759, vec3<f32>(x_760.x, x_760.y, x_760.z));
  let x_763 : f32 = u_xlat47;
  u_xlat47 = clamp(x_763, 0.0f, 1.0f);
  let x_766 : vec4<f32> = x_44.x_MainLightPosition;
  let x_768 : vec4<f32> = u_xlat8;
  u_xlat48 = dot(vec3<f32>(x_766.x, x_766.y, x_766.z), vec3<f32>(x_768.x, x_768.y, x_768.z));
  let x_771 : f32 = u_xlat48;
  u_xlat48 = clamp(x_771, 0.0f, 1.0f);
  let x_773 : f32 = u_xlat47;
  let x_774 : f32 = u_xlat47;
  u_xlat47 = (x_773 * x_774);
  let x_776 : f32 = u_xlat47;
  let x_778 : f32 = u_xlat9.x;
  u_xlat47 = ((x_776 * x_778) + 1.000010014f);
  let x_782 : f32 = u_xlat48;
  let x_783 : f32 = u_xlat48;
  u_xlat48 = (x_782 * x_783);
  let x_785 : f32 = u_xlat47;
  let x_786 : f32 = u_xlat47;
  u_xlat47 = (x_785 * x_786);
  let x_788 : f32 = u_xlat48;
  u_xlat48 = max(x_788, 0.100000001f);
  let x_791 : f32 = u_xlat47;
  let x_792 : f32 = u_xlat48;
  u_xlat47 = (x_791 * x_792);
  let x_794 : f32 = u_xlat21;
  let x_795 : f32 = u_xlat47;
  u_xlat47 = (x_794 * x_795);
  let x_797 : f32 = u_xlat50;
  let x_798 : f32 = u_xlat47;
  u_xlat47 = (x_797 / x_798);
  let x_800 : vec4<f32> = u_xlat0;
  let x_802 : f32 = u_xlat47;
  let x_805 : vec3<f32> = u_xlat16;
  let x_806 : vec3<f32> = ((vec3<f32>(x_800.x, x_800.y, x_800.z) * vec3<f32>(x_802, x_802, x_802)) + x_805);
  let x_807 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_806.x, x_806.y, x_806.z, x_807.w);
  let x_809 : vec4<f32> = u_xlat7;
  let x_811 : vec4<f32> = u_xlat8;
  let x_813 : vec3<f32> = (vec3<f32>(x_809.x, x_809.y, x_809.z) * vec3<f32>(x_811.x, x_811.y, x_811.z));
  let x_814 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_813.x, x_813.y, x_813.z, x_814.w);
  let x_817 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_819 : f32 = x_641.unity_LightData.y;
  u_xlat47 = min(x_817, x_819);
  let x_823 : f32 = u_xlat47;
  u_xlatu47 = bitcast<u32>(i32(x_823));
  let x_827 : f32 = x_451.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_829 : f32 = x_451.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_831 : f32 = x_451.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_833 : f32 = x_451.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_834 : vec4<f32> = vec4<f32>(x_827, x_829, x_831, x_833);
  let x_840 : vec4<bool> = (vec4<f32>(x_834.x, x_834.y, x_834.z, x_834.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb8 = vec2<bool>(x_840.x, x_840.y);
  u_xlat24.x = 0.0f;
  u_xlat24.y = 0.0f;
  u_xlat24.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_851 : u32 = u_xlatu_loop_1;
    let x_852 : u32 = u_xlatu47;
    if ((x_851 < x_852)) {
    } else {
      break;
    }
    let x_855 : u32 = u_xlatu_loop_1;
    u_xlatu49 = (x_855 >> 2u);
    let x_859 : u32 = u_xlatu_loop_1;
    u_xlati51 = bitcast<i32>((x_859 & 3u));
    let x_862 : u32 = u_xlatu49;
    let x_865 : vec4<f32> = x_641.unity_LightIndices[bitcast<i32>(x_862)];
    let x_875 : i32 = u_xlati51;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_880 : vec4<u32> = indexable[x_875];
    u_xlat49 = dot(x_865, bitcast<vec4<f32>>(x_880));
    let x_883 : f32 = u_xlat49;
    u_xlatu49 = bitcast<u32>(i32(x_883));
    let x_887 : vec3<f32> = vs_TEXCOORD1;
    let x_899 : u32 = u_xlatu49;
    let x_902 : vec4<f32> = x_898.x_AdditionalLightsPosition[bitcast<i32>(x_899)];
    let x_905 : u32 = u_xlatu49;
    let x_908 : vec4<f32> = x_898.x_AdditionalLightsPosition[bitcast<i32>(x_905)];
    u_xlat10 = ((-(x_887) * vec3<f32>(x_902.w, x_902.w, x_902.w)) + vec3<f32>(x_908.x, x_908.y, x_908.z));
    let x_911 : vec3<f32> = u_xlat10;
    let x_912 : vec3<f32> = u_xlat10;
    u_xlat51 = dot(x_911, x_912);
    let x_914 : f32 = u_xlat51;
    u_xlat51 = max(x_914, 6.10351562e-05f);
    let x_917 : f32 = u_xlat51;
    u_xlat52 = inverseSqrt(x_917);
    let x_920 : f32 = u_xlat52;
    let x_922 : vec3<f32> = u_xlat10;
    u_xlat11 = (vec3<f32>(x_920, x_920, x_920) * x_922);
    let x_925 : f32 = u_xlat51;
    u_xlat38.x = (1.0f / x_925);
    let x_928 : f32 = u_xlat51;
    let x_929 : u32 = u_xlatu49;
    let x_932 : f32 = x_898.x_AdditionalLightsAttenuation[bitcast<i32>(x_929)].x;
    u_xlat51 = (x_928 * x_932);
    let x_934 : f32 = u_xlat51;
    let x_936 : f32 = u_xlat51;
    u_xlat51 = ((-(x_934) * x_936) + 1.0f);
    let x_939 : f32 = u_xlat51;
    u_xlat51 = max(x_939, 0.0f);
    let x_941 : f32 = u_xlat51;
    let x_942 : f32 = u_xlat51;
    u_xlat51 = (x_941 * x_942);
    let x_944 : f32 = u_xlat51;
    let x_946 : f32 = u_xlat38.x;
    u_xlat51 = (x_944 * x_946);
    let x_948 : u32 = u_xlatu49;
    let x_951 : vec4<f32> = x_898.x_AdditionalLightsSpotDir[bitcast<i32>(x_948)];
    let x_953 : vec3<f32> = u_xlat11;
    u_xlat38.x = dot(vec3<f32>(x_951.x, x_951.y, x_951.z), x_953);
    let x_957 : f32 = u_xlat38.x;
    let x_958 : u32 = u_xlatu49;
    let x_961 : f32 = x_898.x_AdditionalLightsAttenuation[bitcast<i32>(x_958)].z;
    let x_963 : u32 = u_xlatu49;
    let x_966 : f32 = x_898.x_AdditionalLightsAttenuation[bitcast<i32>(x_963)].w;
    u_xlat38.x = ((x_957 * x_961) + x_966);
    let x_970 : f32 = u_xlat38.x;
    u_xlat38.x = clamp(x_970, 0.0f, 1.0f);
    let x_974 : f32 = u_xlat38.x;
    let x_976 : f32 = u_xlat38.x;
    u_xlat38.x = (x_974 * x_976);
    let x_979 : f32 = u_xlat51;
    let x_981 : f32 = u_xlat38.x;
    u_xlat51 = (x_979 * x_981);
    let x_984 : u32 = u_xlatu49;
    u_xlatu38 = (x_984 >> 5u);
    let x_987 : u32 = u_xlatu49;
    u_xlati53 = (1i << bitcast<u32>((bitcast<i32>(x_987) & 31i)));
    let x_993 : i32 = u_xlati53;
    let x_995 : u32 = u_xlatu38;
    let x_998 : f32 = x_451.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_995)].el;
    u_xlati38 = bitcast<i32>((bitcast<u32>(x_993) & bitcast<u32>(x_998)));
    let x_1002 : i32 = u_xlati38;
    if ((x_1002 != 0i)) {
      let x_1012 : u32 = u_xlatu49;
      let x_1015 : f32 = x_1011.x_AdditionalLightsLightTypes[bitcast<i32>(x_1012)].el;
      u_xlati38 = i32(x_1015);
      let x_1017 : i32 = u_xlati38;
      u_xlati53 = select(1i, 0i, (x_1017 != 0i));
      let x_1021 : u32 = u_xlatu49;
      u_xlati55 = (bitcast<i32>(x_1021) << bitcast<u32>(2i));
      let x_1024 : i32 = u_xlati53;
      if ((x_1024 != 0i)) {
        let x_1029 : vec3<f32> = vs_TEXCOORD1;
        let x_1031 : i32 = u_xlati55;
        let x_1034 : i32 = u_xlati55;
        let x_1038 : vec4<f32> = x_1011.x_AdditionalLightsWorldToLights[((x_1031 + 1i) / 4i)][((x_1034 + 1i) % 4i)];
        let x_1040 : vec3<f32> = (vec3<f32>(x_1029.y, x_1029.y, x_1029.y) * vec3<f32>(x_1038.x, x_1038.y, x_1038.w));
        let x_1041 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1040.x, x_1040.y, x_1040.z, x_1041.w);
        let x_1043 : i32 = u_xlati55;
        let x_1045 : i32 = u_xlati55;
        let x_1048 : vec4<f32> = x_1011.x_AdditionalLightsWorldToLights[(x_1043 / 4i)][(x_1045 % 4i)];
        let x_1050 : vec3<f32> = vs_TEXCOORD1;
        let x_1053 : vec4<f32> = u_xlat12;
        let x_1055 : vec3<f32> = ((vec3<f32>(x_1048.x, x_1048.y, x_1048.w) * vec3<f32>(x_1050.x, x_1050.x, x_1050.x)) + vec3<f32>(x_1053.x, x_1053.y, x_1053.z));
        let x_1056 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1055.x, x_1055.y, x_1055.z, x_1056.w);
        let x_1058 : i32 = u_xlati55;
        let x_1061 : i32 = u_xlati55;
        let x_1065 : vec4<f32> = x_1011.x_AdditionalLightsWorldToLights[((x_1058 + 2i) / 4i)][((x_1061 + 2i) % 4i)];
        let x_1067 : vec3<f32> = vs_TEXCOORD1;
        let x_1070 : vec4<f32> = u_xlat12;
        let x_1072 : vec3<f32> = ((vec3<f32>(x_1065.x, x_1065.y, x_1065.w) * vec3<f32>(x_1067.z, x_1067.z, x_1067.z)) + vec3<f32>(x_1070.x, x_1070.y, x_1070.z));
        let x_1073 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1072.x, x_1072.y, x_1072.z, x_1073.w);
        let x_1075 : vec4<f32> = u_xlat12;
        let x_1077 : i32 = u_xlati55;
        let x_1080 : i32 = u_xlati55;
        let x_1084 : vec4<f32> = x_1011.x_AdditionalLightsWorldToLights[((x_1077 + 3i) / 4i)][((x_1080 + 3i) % 4i)];
        let x_1086 : vec3<f32> = (vec3<f32>(x_1075.x, x_1075.y, x_1075.z) + vec3<f32>(x_1084.x, x_1084.y, x_1084.w));
        let x_1087 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1086.x, x_1086.y, x_1086.z, x_1087.w);
        let x_1089 : vec4<f32> = u_xlat12;
        let x_1091 : vec4<f32> = u_xlat12;
        let x_1093 : vec2<f32> = (vec2<f32>(x_1089.x, x_1089.y) / vec2<f32>(x_1091.z, x_1091.z));
        let x_1094 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1093.x, x_1093.y, x_1094.z, x_1094.w);
        let x_1096 : vec4<f32> = u_xlat12;
        let x_1099 : vec2<f32> = ((vec2<f32>(x_1096.x, x_1096.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1100 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1099.x, x_1099.y, x_1100.z, x_1100.w);
        let x_1102 : vec4<f32> = u_xlat12;
        let x_1106 : vec2<f32> = clamp(vec2<f32>(x_1102.x, x_1102.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1107 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1106.x, x_1106.y, x_1107.z, x_1107.w);
        let x_1109 : u32 = u_xlatu49;
        let x_1112 : vec4<f32> = x_1011.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1109)];
        let x_1114 : vec4<f32> = u_xlat12;
        let x_1117 : u32 = u_xlatu49;
        let x_1120 : vec4<f32> = x_1011.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1117)];
        let x_1122 : vec2<f32> = ((vec2<f32>(x_1112.x, x_1112.y) * vec2<f32>(x_1114.x, x_1114.y)) + vec2<f32>(x_1120.z, x_1120.w));
        let x_1123 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1122.x, x_1122.y, x_1123.z, x_1123.w);
      } else {
        let x_1127 : i32 = u_xlati38;
        u_xlatb38 = (x_1127 == 1i);
        let x_1129 : bool = u_xlatb38;
        u_xlati38 = select(0i, 1i, x_1129);
        let x_1131 : i32 = u_xlati38;
        if ((x_1131 != 0i)) {
          let x_1135 : vec3<f32> = vs_TEXCOORD1;
          let x_1137 : i32 = u_xlati55;
          let x_1140 : i32 = u_xlati55;
          let x_1144 : vec4<f32> = x_1011.x_AdditionalLightsWorldToLights[((x_1137 + 1i) / 4i)][((x_1140 + 1i) % 4i)];
          u_xlat38 = (vec2<f32>(x_1135.y, x_1135.y) * vec2<f32>(x_1144.x, x_1144.y));
          let x_1147 : i32 = u_xlati55;
          let x_1149 : i32 = u_xlati55;
          let x_1152 : vec4<f32> = x_1011.x_AdditionalLightsWorldToLights[(x_1147 / 4i)][(x_1149 % 4i)];
          let x_1154 : vec3<f32> = vs_TEXCOORD1;
          let x_1157 : vec2<f32> = u_xlat38;
          u_xlat38 = ((vec2<f32>(x_1152.x, x_1152.y) * vec2<f32>(x_1154.x, x_1154.x)) + x_1157);
          let x_1159 : i32 = u_xlati55;
          let x_1162 : i32 = u_xlati55;
          let x_1166 : vec4<f32> = x_1011.x_AdditionalLightsWorldToLights[((x_1159 + 2i) / 4i)][((x_1162 + 2i) % 4i)];
          let x_1168 : vec3<f32> = vs_TEXCOORD1;
          let x_1171 : vec2<f32> = u_xlat38;
          u_xlat38 = ((vec2<f32>(x_1166.x, x_1166.y) * vec2<f32>(x_1168.z, x_1168.z)) + x_1171);
          let x_1173 : vec2<f32> = u_xlat38;
          let x_1174 : i32 = u_xlati55;
          let x_1177 : i32 = u_xlati55;
          let x_1181 : vec4<f32> = x_1011.x_AdditionalLightsWorldToLights[((x_1174 + 3i) / 4i)][((x_1177 + 3i) % 4i)];
          u_xlat38 = (x_1173 + vec2<f32>(x_1181.x, x_1181.y));
          let x_1184 : vec2<f32> = u_xlat38;
          u_xlat38 = ((x_1184 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1187 : vec2<f32> = u_xlat38;
          u_xlat38 = fract(x_1187);
          let x_1189 : u32 = u_xlatu49;
          let x_1192 : vec4<f32> = x_1011.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1189)];
          let x_1194 : vec2<f32> = u_xlat38;
          let x_1196 : u32 = u_xlatu49;
          let x_1199 : vec4<f32> = x_1011.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1196)];
          let x_1201 : vec2<f32> = ((vec2<f32>(x_1192.x, x_1192.y) * x_1194) + vec2<f32>(x_1199.z, x_1199.w));
          let x_1202 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1201.x, x_1201.y, x_1202.z, x_1202.w);
        } else {
          let x_1206 : vec3<f32> = vs_TEXCOORD1;
          let x_1208 : i32 = u_xlati55;
          let x_1211 : i32 = u_xlati55;
          let x_1215 : vec4<f32> = x_1011.x_AdditionalLightsWorldToLights[((x_1208 + 1i) / 4i)][((x_1211 + 1i) % 4i)];
          u_xlat13 = (vec4<f32>(x_1206.y, x_1206.y, x_1206.y, x_1206.y) * x_1215);
          let x_1217 : i32 = u_xlati55;
          let x_1219 : i32 = u_xlati55;
          let x_1222 : vec4<f32> = x_1011.x_AdditionalLightsWorldToLights[(x_1217 / 4i)][(x_1219 % 4i)];
          let x_1223 : vec3<f32> = vs_TEXCOORD1;
          let x_1226 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_1222 * vec4<f32>(x_1223.x, x_1223.x, x_1223.x, x_1223.x)) + x_1226);
          let x_1228 : i32 = u_xlati55;
          let x_1231 : i32 = u_xlati55;
          let x_1235 : vec4<f32> = x_1011.x_AdditionalLightsWorldToLights[((x_1228 + 2i) / 4i)][((x_1231 + 2i) % 4i)];
          let x_1236 : vec3<f32> = vs_TEXCOORD1;
          let x_1239 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_1235 * vec4<f32>(x_1236.z, x_1236.z, x_1236.z, x_1236.z)) + x_1239);
          let x_1241 : vec4<f32> = u_xlat13;
          let x_1242 : i32 = u_xlati55;
          let x_1245 : i32 = u_xlati55;
          let x_1249 : vec4<f32> = x_1011.x_AdditionalLightsWorldToLights[((x_1242 + 3i) / 4i)][((x_1245 + 3i) % 4i)];
          u_xlat13 = (x_1241 + x_1249);
          let x_1251 : vec4<f32> = u_xlat13;
          let x_1253 : vec4<f32> = u_xlat13;
          let x_1255 : vec3<f32> = (vec3<f32>(x_1251.x, x_1251.y, x_1251.z) / vec3<f32>(x_1253.w, x_1253.w, x_1253.w));
          let x_1256 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_1255.x, x_1255.y, x_1255.z, x_1256.w);
          let x_1258 : vec4<f32> = u_xlat13;
          let x_1260 : vec4<f32> = u_xlat13;
          u_xlat38.x = dot(vec3<f32>(x_1258.x, x_1258.y, x_1258.z), vec3<f32>(x_1260.x, x_1260.y, x_1260.z));
          let x_1265 : f32 = u_xlat38.x;
          u_xlat38.x = inverseSqrt(x_1265);
          let x_1268 : vec2<f32> = u_xlat38;
          let x_1270 : vec4<f32> = u_xlat13;
          let x_1272 : vec3<f32> = (vec3<f32>(x_1268.x, x_1268.x, x_1268.x) * vec3<f32>(x_1270.x, x_1270.y, x_1270.z));
          let x_1273 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_1272.x, x_1272.y, x_1272.z, x_1273.w);
          let x_1275 : vec4<f32> = u_xlat13;
          u_xlat38.x = dot(abs(vec3<f32>(x_1275.x, x_1275.y, x_1275.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1282 : f32 = u_xlat38.x;
          u_xlat38.x = max(x_1282, 0.000001f);
          let x_1287 : f32 = u_xlat38.x;
          u_xlat38.x = (1.0f / x_1287);
          let x_1291 : vec2<f32> = u_xlat38;
          let x_1293 : vec4<f32> = u_xlat13;
          u_xlat14 = (vec3<f32>(x_1291.x, x_1291.x, x_1291.x) * vec3<f32>(x_1293.z, x_1293.x, x_1293.y));
          let x_1297 : f32 = u_xlat14.x;
          u_xlat14.x = -(x_1297);
          let x_1301 : f32 = u_xlat14.x;
          u_xlat14.x = clamp(x_1301, 0.0f, 1.0f);
          let x_1305 : vec3<f32> = u_xlat14;
          let x_1308 : vec4<bool> = (vec4<f32>(x_1305.y, x_1305.z, x_1305.y, x_1305.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb42 = vec2<bool>(x_1308.x, x_1308.y);
          let x_1312 : bool = u_xlatb42.x;
          if (x_1312) {
            let x_1317 : f32 = u_xlat14.x;
            x_1313 = x_1317;
          } else {
            let x_1320 : f32 = u_xlat14.x;
            x_1313 = -(x_1320);
          }
          let x_1322 : f32 = x_1313;
          u_xlat42.x = x_1322;
          let x_1325 : bool = u_xlatb42.y;
          if (x_1325) {
            let x_1330 : f32 = u_xlat14.x;
            x_1326 = x_1330;
          } else {
            let x_1333 : f32 = u_xlat14.x;
            x_1326 = -(x_1333);
          }
          let x_1335 : f32 = x_1326;
          u_xlat42.y = x_1335;
          let x_1337 : vec4<f32> = u_xlat13;
          let x_1339 : vec2<f32> = u_xlat38;
          let x_1342 : vec2<f32> = u_xlat42;
          u_xlat38 = ((vec2<f32>(x_1337.x, x_1337.y) * vec2<f32>(x_1339.x, x_1339.x)) + x_1342);
          let x_1344 : vec2<f32> = u_xlat38;
          u_xlat38 = ((x_1344 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1347 : vec2<f32> = u_xlat38;
          u_xlat38 = clamp(x_1347, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1351 : u32 = u_xlatu49;
          let x_1354 : vec4<f32> = x_1011.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1351)];
          let x_1356 : vec2<f32> = u_xlat38;
          let x_1358 : u32 = u_xlatu49;
          let x_1361 : vec4<f32> = x_1011.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1358)];
          let x_1363 : vec2<f32> = ((vec2<f32>(x_1354.x, x_1354.y) * x_1356) + vec2<f32>(x_1361.z, x_1361.w));
          let x_1364 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1363.x, x_1363.y, x_1364.z, x_1364.w);
        }
      }
      let x_1371 : vec4<f32> = u_xlat12;
      let x_1374 : f32 = x_44.x_GlobalMipBias.x;
      let x_1375 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1371.x, x_1371.y), x_1374);
      u_xlat12 = x_1375;
      let x_1377 : bool = u_xlatb8.y;
      if (x_1377) {
        let x_1382 : f32 = u_xlat12.w;
        x_1378 = x_1382;
      } else {
        let x_1385 : f32 = u_xlat12.x;
        x_1378 = x_1385;
      }
      let x_1386 : f32 = x_1378;
      u_xlat38.x = x_1386;
      let x_1389 : bool = u_xlatb8.x;
      if (x_1389) {
        let x_1393 : vec4<f32> = u_xlat12;
        x_1390 = vec3<f32>(x_1393.x, x_1393.y, x_1393.z);
      } else {
        let x_1396 : vec2<f32> = u_xlat38;
        x_1390 = vec3<f32>(x_1396.x, x_1396.x, x_1396.x);
      }
      let x_1398 : vec3<f32> = x_1390;
      let x_1399 : vec4<f32> = u_xlat12;
      u_xlat12 = vec4<f32>(x_1398.x, x_1398.y, x_1398.z, x_1399.w);
    } else {
      u_xlat12.x = 1.0f;
      u_xlat12.y = 1.0f;
      u_xlat12.z = 1.0f;
    }
    let x_1405 : vec4<f32> = u_xlat12;
    let x_1407 : u32 = u_xlatu49;
    let x_1410 : vec4<f32> = x_898.x_AdditionalLightsColor[bitcast<i32>(x_1407)];
    let x_1412 : vec3<f32> = (vec3<f32>(x_1405.x, x_1405.y, x_1405.z) * vec3<f32>(x_1410.x, x_1410.y, x_1410.z));
    let x_1413 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_1412.x, x_1412.y, x_1412.z, x_1413.w);
    let x_1415 : f32 = u_xlat36;
    let x_1417 : vec4<f32> = u_xlat12;
    let x_1419 : vec3<f32> = (vec3<f32>(x_1415, x_1415, x_1415) * vec3<f32>(x_1417.x, x_1417.y, x_1417.z));
    let x_1420 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_1419.x, x_1419.y, x_1419.z, x_1420.w);
    let x_1422 : vec3<f32> = u_xlat4;
    let x_1423 : vec3<f32> = u_xlat11;
    u_xlat49 = dot(x_1422, x_1423);
    let x_1425 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1425, 0.0f, 1.0f);
    let x_1427 : f32 = u_xlat49;
    let x_1428 : f32 = u_xlat51;
    u_xlat49 = (x_1427 * x_1428);
    let x_1430 : f32 = u_xlat49;
    let x_1432 : vec4<f32> = u_xlat12;
    let x_1434 : vec3<f32> = (vec3<f32>(x_1430, x_1430, x_1430) * vec3<f32>(x_1432.x, x_1432.y, x_1432.z));
    let x_1435 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_1434.x, x_1434.y, x_1434.z, x_1435.w);
    let x_1437 : vec3<f32> = u_xlat10;
    let x_1438 : f32 = u_xlat52;
    let x_1441 : vec3<f32> = u_xlat3;
    u_xlat10 = ((x_1437 * vec3<f32>(x_1438, x_1438, x_1438)) + x_1441);
    let x_1443 : vec3<f32> = u_xlat10;
    let x_1444 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(x_1443, x_1444);
    let x_1446 : f32 = u_xlat49;
    u_xlat49 = max(x_1446, 1.17549435e-37f);
    let x_1448 : f32 = u_xlat49;
    u_xlat49 = inverseSqrt(x_1448);
    let x_1450 : f32 = u_xlat49;
    let x_1452 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1450, x_1450, x_1450) * x_1452);
    let x_1454 : vec3<f32> = u_xlat4;
    let x_1455 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(x_1454, x_1455);
    let x_1457 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1457, 0.0f, 1.0f);
    let x_1459 : vec3<f32> = u_xlat11;
    let x_1460 : vec3<f32> = u_xlat10;
    u_xlat51 = dot(x_1459, x_1460);
    let x_1462 : f32 = u_xlat51;
    u_xlat51 = clamp(x_1462, 0.0f, 1.0f);
    let x_1464 : f32 = u_xlat49;
    let x_1465 : f32 = u_xlat49;
    u_xlat49 = (x_1464 * x_1465);
    let x_1467 : f32 = u_xlat49;
    let x_1469 : f32 = u_xlat9.x;
    u_xlat49 = ((x_1467 * x_1469) + 1.000010014f);
    let x_1472 : f32 = u_xlat51;
    let x_1473 : f32 = u_xlat51;
    u_xlat51 = (x_1472 * x_1473);
    let x_1475 : f32 = u_xlat49;
    let x_1476 : f32 = u_xlat49;
    u_xlat49 = (x_1475 * x_1476);
    let x_1478 : f32 = u_xlat51;
    u_xlat51 = max(x_1478, 0.100000001f);
    let x_1480 : f32 = u_xlat49;
    let x_1481 : f32 = u_xlat51;
    u_xlat49 = (x_1480 * x_1481);
    let x_1483 : f32 = u_xlat21;
    let x_1484 : f32 = u_xlat49;
    u_xlat49 = (x_1483 * x_1484);
    let x_1486 : f32 = u_xlat50;
    let x_1487 : f32 = u_xlat49;
    u_xlat49 = (x_1486 / x_1487);
    let x_1489 : vec4<f32> = u_xlat0;
    let x_1491 : f32 = u_xlat49;
    let x_1494 : vec3<f32> = u_xlat16;
    u_xlat10 = ((vec3<f32>(x_1489.x, x_1489.y, x_1489.z) * vec3<f32>(x_1491, x_1491, x_1491)) + x_1494);
    let x_1496 : vec3<f32> = u_xlat10;
    let x_1497 : vec4<f32> = u_xlat12;
    let x_1500 : vec3<f32> = u_xlat24;
    u_xlat24 = ((x_1496 * vec3<f32>(x_1497.x, x_1497.y, x_1497.z)) + x_1500);

    continuing {
      let x_1502 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1502 + bitcast<u32>(1i));
    }
  }
  let x_1504 : vec4<f32> = u_xlat5;
  let x_1506 : vec3<f32> = u_xlat6;
  let x_1509 : vec4<f32> = u_xlat7;
  let x_1511 : vec3<f32> = ((vec3<f32>(x_1504.x, x_1504.y, x_1504.z) * vec3<f32>(x_1506.x, x_1506.x, x_1506.x)) + vec3<f32>(x_1509.x, x_1509.y, x_1509.z));
  let x_1512 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1511.x, x_1511.y, x_1511.z, x_1512.w);
  let x_1514 : vec3<f32> = u_xlat24;
  let x_1515 : vec4<f32> = u_xlat0;
  let x_1517 : vec3<f32> = (x_1514 + vec3<f32>(x_1515.x, x_1515.y, x_1515.z));
  let x_1518 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1517.x, x_1517.y, x_1517.z, x_1518.w);
  let x_1520 : vec3<f32> = u_xlat2;
  let x_1522 : vec4<f32> = x_57.x_EmissionColor;
  let x_1525 : vec4<f32> = u_xlat0;
  let x_1527 : vec3<f32> = ((x_1520 * vec3<f32>(x_1522.x, x_1522.y, x_1522.z)) + vec3<f32>(x_1525.x, x_1525.y, x_1525.z));
  let x_1528 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1527.x, x_1527.y, x_1527.z, x_1528.w);
  let x_1530 : f32 = u_xlat45;
  let x_1531 : f32 = u_xlat45;
  u_xlat45 = (x_1530 * -(x_1531));
  let x_1534 : f32 = u_xlat45;
  u_xlat45 = exp2(x_1534);
  let x_1536 : vec4<f32> = u_xlat0;
  let x_1540 : vec4<f32> = x_44.unity_FogColor;
  let x_1543 : vec3<f32> = (vec3<f32>(x_1536.x, x_1536.y, x_1536.z) + -(vec3<f32>(x_1540.x, x_1540.y, x_1540.z)));
  let x_1544 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1543.x, x_1543.y, x_1543.z, x_1544.w);
  let x_1548 : f32 = u_xlat45;
  let x_1550 : vec4<f32> = u_xlat0;
  let x_1554 : vec4<f32> = x_44.unity_FogColor;
  let x_1556 : vec3<f32> = ((vec3<f32>(x_1548, x_1548, x_1548) * vec3<f32>(x_1550.x, x_1550.y, x_1550.z)) + vec3<f32>(x_1554.x, x_1554.y, x_1554.z));
  let x_1557 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1556.x, x_1556.y, x_1556.z, x_1557.w);
  let x_1562 : f32 = x_57.x_Surface;
  u_xlatb0 = (x_1562 == 1.0f);
  let x_1564 : bool = u_xlatb0;
  if (x_1564) {
    let x_1569 : f32 = u_xlat1.x;
    x_1565 = x_1569;
  } else {
    x_1565 = 1.0f;
  }
  let x_1571 : f32 = x_1565;
  SV_Target0.w = x_1571;
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

