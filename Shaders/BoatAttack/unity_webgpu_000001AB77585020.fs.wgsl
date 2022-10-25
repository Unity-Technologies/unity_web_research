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

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_2 = array<strided_arr, 8u>;

struct LightCookies {
  x_MainLightWorldToLight : mat4x4<f32>,
  x_AdditionalLightsCookieEnableBits : Arr_2,
  x_MainLightCookieTextureFormat : f32,
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
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

@group(0) @binding(14) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(6) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(17) var sampler_MetallicGlossMap : sampler;

@group(1) @binding(3) var<uniform> x_69 : UnityPerMaterial;

@group(0) @binding(4) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(15) var sampler_BumpMap : sampler;

@group(0) @binding(5) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(16) var sampler_OcclusionMap : sampler;

@group(0) @binding(11) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(22) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_184 : UnityPerDraw;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(13) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(7) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(18) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(8) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(19) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_542 : MainLightShadows;

@group(1) @binding(5) var<uniform> x_609 : LightCookies;

@group(0) @binding(9) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(20) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(12) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1070 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_1184 : AdditionalLightsCookies;

@group(0) @binding(10) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(21) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec2<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat27 : vec2<f32>;
  var u_xlat39 : f32;
  var u_xlat16 : vec3<f32>;
  var u_xlatb29 : bool;
  var x_190 : f32;
  var u_xlatb16 : bool;
  var u_xlat4 : vec4<f32>;
  var u_xlat29 : f32;
  var u_xlat5 : vec3<f32>;
  var x_256 : f32;
  var x_268 : f32;
  var x_279 : f32;
  var u_xlat6 : vec4<f32>;
  var u_xlat15 : vec3<f32>;
  var u_xlat14 : f32;
  var u_xlat40 : f32;
  var u_xlat43 : f32;
  var u_xlat44 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatb6 : bool;
  var u_xlatb19 : bool;
  var u_xlat19 : f32;
  var u_xlatb7 : vec2<bool>;
  var u_xlat45 : f32;
  var x_696 : f32;
  var x_707 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat46 : f32;
  var u_xlat8 : vec2<f32>;
  var u_xlat21 : vec3<f32>;
  var u_xlatu39 : u32;
  var u_xlatb1 : vec3<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu45 : u32;
  var u_xlati46 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat9 : f32;
  var u_xlat22 : vec3<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlatu10 : u32;
  var u_xlati23 : i32;
  var u_xlati10 : i32;
  var u_xlati36 : i32;
  var u_xlat11 : vec4<f32>;
  var u_xlat23 : vec3<f32>;
  var u_xlatb10 : bool;
  var u_xlat12 : vec3<f32>;
  var u_xlatb37 : vec2<bool>;
  var u_xlat37 : vec2<f32>;
  var x_1504 : f32;
  var x_1517 : f32;
  var u_xlat49 : f32;
  var x_1579 : f32;
  var x_1590 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_1732 : f32;
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
  let x_59 : vec2<f32> = vs_TEXCOORD0;
  let x_61 : f32 = x_44.x_GlobalMipBias.x;
  let x_62 : vec4<f32> = textureSampleBias(x_MetallicGlossMap, sampler_MetallicGlossMap, x_59, x_61);
  u_xlat1 = vec2<f32>(x_62.x, x_62.w);
  let x_65 : vec4<f32> = u_xlat0;
  let x_73 : vec4<f32> = x_69.x_BaseColor;
  u_xlat2 = (vec4<f32>(x_65.w, x_65.x, x_65.y, x_65.z) * vec4<f32>(x_73.w, x_73.x, x_73.y, x_73.z));
  let x_83 : vec2<f32> = vs_TEXCOORD0;
  let x_85 : f32 = x_44.x_GlobalMipBias.x;
  let x_86 : vec4<f32> = textureSampleBias(x_BumpMap, sampler_BumpMap, x_83, x_85);
  u_xlat3 = vec3<f32>(x_86.x, x_86.y, x_86.w);
  let x_90 : f32 = u_xlat3.x;
  let x_93 : f32 = u_xlat3.z;
  u_xlat3.x = (x_90 * x_93);
  let x_97 : vec3<f32> = u_xlat3;
  u_xlat27 = ((vec2<f32>(x_97.x, x_97.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_106 : vec2<f32> = u_xlat27;
  let x_107 : vec2<f32> = u_xlat27;
  u_xlat39 = dot(x_106, x_107);
  let x_109 : f32 = u_xlat39;
  u_xlat39 = min(x_109, 1.0f);
  let x_111 : f32 = u_xlat39;
  u_xlat39 = (-(x_111) + 1.0f);
  let x_114 : f32 = u_xlat39;
  u_xlat39 = sqrt(x_114);
  let x_116 : f32 = u_xlat39;
  u_xlat39 = max(x_116, 1.00000002e-16f);
  let x_119 : vec2<f32> = u_xlat27;
  let x_122 : f32 = x_69.x_BumpScale;
  let x_124 : f32 = x_69.x_BumpScale;
  let x_125 : vec2<f32> = vec2<f32>(x_122, x_124);
  u_xlat27 = (x_119 * vec2<f32>(x_125.x, x_125.y));
  let x_135 : vec2<f32> = vs_TEXCOORD0;
  let x_137 : f32 = x_44.x_GlobalMipBias.x;
  let x_138 : vec4<f32> = textureSampleBias(x_OcclusionMap, sampler_OcclusionMap, x_135, x_137);
  u_xlat3.x = x_138.y;
  let x_145 : f32 = x_69.x_OcclusionStrength;
  u_xlat16.x = (-(x_145) + 1.0f);
  let x_150 : f32 = u_xlat3.x;
  let x_152 : f32 = x_69.x_OcclusionStrength;
  let x_155 : f32 = u_xlat16.x;
  u_xlat3.x = ((x_150 * x_152) + x_155);
  let x_158 : vec4<f32> = hlslcc_FragCoord;
  let x_161 : f32 = x_44.x_DitheringTextureInvSize;
  let x_163 : vec2<f32> = (vec2<f32>(x_158.x, x_158.y) * vec2<f32>(x_161, x_161));
  let x_164 : vec3<f32> = u_xlat16;
  u_xlat16 = vec3<f32>(x_163.x, x_163.y, x_164.z);
  let x_171 : vec3<f32> = u_xlat16;
  let x_174 : f32 = x_44.x_GlobalMipBias.x;
  let x_175 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_171.x, x_171.y), x_174);
  u_xlat16.x = x_175.w;
  let x_186 : f32 = x_184.unity_LODFade.x;
  u_xlatb29 = (x_186 >= 0.0f);
  let x_189 : bool = u_xlatb29;
  if (x_189) {
    let x_194 : f32 = u_xlat16.x;
    x_190 = abs(x_194);
  } else {
    let x_198 : f32 = u_xlat16.x;
    x_190 = -(abs(x_198));
  }
  let x_201 : f32 = x_190;
  u_xlat16.x = x_201;
  let x_204 : f32 = u_xlat16.x;
  let x_207 : f32 = x_184.unity_LODFade.x;
  u_xlat16.x = (-(x_204) + x_207);
  let x_212 : f32 = u_xlat16.x;
  u_xlatb16 = (x_212 < 0.0f);
  let x_214 : bool = u_xlatb16;
  if (((select(0i, 1i, x_214) * -1i) != 0i)) {
    discard;
  }
  let x_225 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb16 = (x_225 == 0.0f);
  let x_230 : vec3<f32> = vs_TEXCOORD1;
  let x_235 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_236 : vec3<f32> = (-(x_230) + x_235);
  let x_237 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_236.x, x_236.y, x_236.z, x_237.w);
  let x_240 : vec4<f32> = u_xlat4;
  let x_242 : vec4<f32> = u_xlat4;
  u_xlat29 = dot(vec3<f32>(x_240.x, x_240.y, x_240.z), vec3<f32>(x_242.x, x_242.y, x_242.z));
  let x_245 : f32 = u_xlat29;
  u_xlat29 = inverseSqrt(x_245);
  let x_247 : f32 = u_xlat29;
  let x_249 : vec4<f32> = u_xlat4;
  let x_251 : vec3<f32> = (vec3<f32>(x_247, x_247, x_247) * vec3<f32>(x_249.x, x_249.y, x_249.z));
  let x_252 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_251.x, x_251.y, x_251.z, x_252.w);
  let x_255 : bool = u_xlatb16;
  if (x_255) {
    let x_260 : f32 = u_xlat4.x;
    x_256 = x_260;
  } else {
    let x_264 : f32 = x_44.unity_MatrixV[0i].z;
    x_256 = x_264;
  }
  let x_265 : f32 = x_256;
  u_xlat5.x = x_265;
  let x_267 : bool = u_xlatb16;
  if (x_267) {
    let x_272 : f32 = u_xlat4.y;
    x_268 = x_272;
  } else {
    let x_275 : f32 = x_44.unity_MatrixV[1i].z;
    x_268 = x_275;
  }
  let x_276 : f32 = x_268;
  u_xlat5.y = x_276;
  let x_278 : bool = u_xlatb16;
  if (x_278) {
    let x_283 : f32 = u_xlat4.z;
    x_279 = x_283;
  } else {
    let x_286 : f32 = x_44.unity_MatrixV[2i].z;
    x_279 = x_286;
  }
  let x_287 : f32 = x_279;
  u_xlat5.z = x_287;
  let x_290 : vec3<f32> = vs_TEXCOORD2;
  let x_293 : vec4<f32> = vs_TEXCOORD3;
  u_xlat16 = (vec3<f32>(x_290.z, x_290.x, x_290.y) * vec3<f32>(x_293.y, x_293.z, x_293.x));
  let x_296 : vec3<f32> = vs_TEXCOORD2;
  let x_298 : vec4<f32> = vs_TEXCOORD3;
  let x_301 : vec3<f32> = u_xlat16;
  u_xlat16 = ((vec3<f32>(x_296.y, x_296.z, x_296.x) * vec3<f32>(x_298.z, x_298.x, x_298.y)) + -(x_301));
  let x_304 : vec3<f32> = u_xlat16;
  let x_305 : vec4<f32> = vs_TEXCOORD3;
  u_xlat16 = (x_304 * vec3<f32>(x_305.w, x_305.w, x_305.w));
  let x_308 : vec2<f32> = u_xlat27;
  let x_310 : vec3<f32> = u_xlat16;
  u_xlat16 = (vec3<f32>(x_308.y, x_308.y, x_308.y) * x_310);
  let x_312 : vec2<f32> = u_xlat27;
  let x_314 : vec4<f32> = vs_TEXCOORD3;
  let x_317 : vec3<f32> = u_xlat16;
  u_xlat16 = ((vec3<f32>(x_312.x, x_312.x, x_312.x) * vec3<f32>(x_314.x, x_314.y, x_314.z)) + x_317);
  let x_319 : f32 = u_xlat39;
  let x_321 : vec3<f32> = vs_TEXCOORD2;
  let x_323 : vec3<f32> = u_xlat16;
  u_xlat16 = ((vec3<f32>(x_319, x_319, x_319) * x_321) + x_323);
  let x_325 : vec3<f32> = u_xlat16;
  let x_326 : vec3<f32> = u_xlat16;
  u_xlat39 = dot(x_325, x_326);
  let x_328 : f32 = u_xlat39;
  u_xlat39 = inverseSqrt(x_328);
  let x_330 : f32 = u_xlat39;
  let x_332 : vec3<f32> = u_xlat16;
  u_xlat16 = (vec3<f32>(x_330, x_330, x_330) * x_332);
  let x_340 : vec2<f32> = vs_TEXCOORD8;
  let x_342 : f32 = x_44.x_GlobalMipBias.x;
  let x_343 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_340, x_342);
  u_xlat4 = x_343;
  let x_349 : vec2<f32> = vs_TEXCOORD8;
  let x_351 : f32 = x_44.x_GlobalMipBias.x;
  let x_352 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_349, x_351);
  let x_353 : vec3<f32> = vec3<f32>(x_352.x, x_352.y, x_352.z);
  let x_354 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_353.x, x_353.y, x_353.z, x_354.w);
  let x_356 : vec4<f32> = u_xlat4;
  let x_360 : vec3<f32> = (vec3<f32>(x_356.x, x_356.y, x_356.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_361 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_360.x, x_360.y, x_360.z, x_361.w);
  let x_363 : vec3<f32> = u_xlat16;
  let x_364 : vec4<f32> = u_xlat4;
  u_xlat39 = dot(x_363, vec3<f32>(x_364.x, x_364.y, x_364.z));
  let x_367 : f32 = u_xlat39;
  u_xlat39 = (x_367 + 0.5f);
  let x_370 : f32 = u_xlat39;
  let x_372 : vec4<f32> = u_xlat6;
  let x_374 : vec3<f32> = (vec3<f32>(x_370, x_370, x_370) * vec3<f32>(x_372.x, x_372.y, x_372.z));
  let x_375 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_374.x, x_374.y, x_374.z, x_375.w);
  let x_378 : f32 = u_xlat4.w;
  u_xlat39 = max(x_378, 0.0001f);
  let x_381 : vec4<f32> = u_xlat4;
  let x_383 : f32 = u_xlat39;
  let x_385 : vec3<f32> = (vec3<f32>(x_381.x, x_381.y, x_381.z) / vec3<f32>(x_383, x_383, x_383));
  let x_386 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_385.x, x_385.y, x_385.z, x_386.w);
  let x_390 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_391 : vec2<f32> = vec2<f32>(x_390.x, x_390.y);
  u_xlat27 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_391.x, x_391.y));
  let x_396 : vec2<f32> = u_xlat27;
  let x_397 : vec4<f32> = hlslcc_FragCoord;
  let x_399 : vec2<f32> = (x_396 * vec2<f32>(x_397.x, x_397.y));
  let x_400 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_399.x, x_399.y, x_400.z, x_400.w);
  let x_403 : f32 = u_xlat6.y;
  let x_405 : f32 = x_44.x_ScaleBiasRt.x;
  let x_408 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat39 = ((x_403 * x_405) + x_408);
  let x_410 : f32 = u_xlat39;
  u_xlat6.z = (-(x_410) + 1.0f);
  let x_415 : f32 = u_xlat1.x;
  u_xlat39 = ((-(x_415) * 0.959999979f) + 0.959999979f);
  let x_421 : f32 = u_xlat1.y;
  let x_423 : f32 = x_69.x_Smoothness;
  let x_425 : f32 = u_xlat39;
  u_xlat27.x = ((x_421 * x_423) + -(x_425));
  let x_430 : f32 = u_xlat39;
  let x_432 : vec4<f32> = u_xlat2;
  u_xlat15 = (vec3<f32>(x_430, x_430, x_430) * vec3<f32>(x_432.y, x_432.z, x_432.w));
  let x_435 : vec4<f32> = u_xlat0;
  let x_438 : vec4<f32> = x_69.x_BaseColor;
  let x_443 : vec3<f32> = ((vec3<f32>(x_435.x, x_435.y, x_435.z) * vec3<f32>(x_438.x, x_438.y, x_438.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_444 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_443.x, x_443.y, x_443.z, x_444.w);
  let x_446 : vec2<f32> = u_xlat1;
  let x_448 : vec4<f32> = u_xlat0;
  let x_453 : vec3<f32> = ((vec3<f32>(x_446.x, x_446.x, x_446.x) * vec3<f32>(x_448.x, x_448.y, x_448.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_454 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_453.x, x_453.y, x_453.z, x_454.w);
  let x_457 : f32 = u_xlat1.y;
  let x_460 : f32 = x_69.x_Smoothness;
  u_xlat39 = ((-(x_457) * x_460) + 1.0f);
  let x_463 : f32 = u_xlat39;
  let x_464 : f32 = u_xlat39;
  u_xlat1.x = (x_463 * x_464);
  let x_468 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_468, 0.0078125f);
  let x_474 : f32 = u_xlat1.x;
  let x_476 : f32 = u_xlat1.x;
  u_xlat14 = (x_474 * x_476);
  let x_479 : f32 = u_xlat27.x;
  u_xlat27.x = (x_479 + 1.0f);
  let x_483 : f32 = u_xlat27.x;
  u_xlat27.x = clamp(x_483, 0.0f, 1.0f);
  let x_488 : f32 = u_xlat1.x;
  u_xlat40 = ((x_488 * 4.0f) + 2.0f);
  let x_498 : vec4<f32> = u_xlat6;
  let x_501 : f32 = x_44.x_GlobalMipBias.x;
  let x_502 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_498.x, x_498.z), x_501);
  u_xlat43 = x_502.x;
  let x_505 : f32 = u_xlat43;
  u_xlat44 = (x_505 + -1.0f);
  let x_509 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_510 : f32 = u_xlat44;
  u_xlat44 = ((x_509 * x_510) + 1.0f);
  let x_514 : f32 = u_xlat3.x;
  let x_515 : f32 = u_xlat43;
  u_xlat3.x = min(x_514, x_515);
  let x_520 : vec4<f32> = vs_TEXCOORD6;
  let x_521 : vec2<f32> = vec2<f32>(x_520.x, x_520.y);
  let x_523 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_521.x, x_521.y, x_523);
  let x_535 : vec3<f32> = txVec0;
  let x_537 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_535.xy, x_535.z);
  u_xlat43 = x_537;
  let x_544 : f32 = x_542.x_MainLightShadowParams.x;
  u_xlat6.x = (-(x_544) + 1.0f);
  let x_548 : f32 = u_xlat43;
  let x_550 : f32 = x_542.x_MainLightShadowParams.x;
  let x_553 : f32 = u_xlat6.x;
  u_xlat43 = ((x_548 * x_550) + x_553);
  let x_557 : f32 = vs_TEXCOORD6.z;
  u_xlatb6 = (0.0f >= x_557);
  let x_561 : f32 = vs_TEXCOORD6.z;
  u_xlatb19 = (x_561 >= 1.0f);
  let x_563 : bool = u_xlatb19;
  let x_564 : bool = u_xlatb6;
  u_xlatb6 = (x_563 | x_564);
  let x_566 : bool = u_xlatb6;
  let x_567 : f32 = u_xlat43;
  u_xlat43 = select(x_567, 1.0f, x_566);
  let x_569 : vec3<f32> = vs_TEXCOORD1;
  let x_571 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_573 : vec3<f32> = (x_569 + -(x_571));
  let x_574 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_573.x, x_573.y, x_573.z, x_574.w);
  let x_576 : vec4<f32> = u_xlat6;
  let x_578 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_576.x, x_576.y, x_576.z), vec3<f32>(x_578.x, x_578.y, x_578.z));
  let x_583 : f32 = u_xlat6.x;
  let x_585 : f32 = x_542.x_MainLightShadowParams.z;
  let x_588 : f32 = x_542.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_583 * x_585) + x_588);
  let x_592 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_592, 0.0f, 1.0f);
  let x_596 : f32 = u_xlat43;
  u_xlat19 = (-(x_596) + 1.0f);
  let x_600 : f32 = u_xlat6.x;
  let x_601 : f32 = u_xlat19;
  let x_603 : f32 = u_xlat43;
  u_xlat43 = ((x_600 * x_601) + x_603);
  let x_611 : f32 = x_609.x_MainLightCookieTextureFormat;
  u_xlatb6 = !((x_611 == -1.0f));
  let x_613 : bool = u_xlatb6;
  if (x_613) {
    let x_616 : vec3<f32> = vs_TEXCOORD1;
    let x_619 : vec4<f32> = x_609.x_MainLightWorldToLight[1i];
    let x_621 : vec2<f32> = (vec2<f32>(x_616.y, x_616.y) * vec2<f32>(x_619.x, x_619.y));
    let x_622 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_621.x, x_621.y, x_622.z, x_622.w);
    let x_625 : vec4<f32> = x_609.x_MainLightWorldToLight[0i];
    let x_627 : vec3<f32> = vs_TEXCOORD1;
    let x_630 : vec4<f32> = u_xlat6;
    let x_632 : vec2<f32> = ((vec2<f32>(x_625.x, x_625.y) * vec2<f32>(x_627.x, x_627.x)) + vec2<f32>(x_630.x, x_630.y));
    let x_633 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_632.x, x_632.y, x_633.z, x_633.w);
    let x_636 : vec4<f32> = x_609.x_MainLightWorldToLight[2i];
    let x_638 : vec3<f32> = vs_TEXCOORD1;
    let x_641 : vec4<f32> = u_xlat6;
    let x_643 : vec2<f32> = ((vec2<f32>(x_636.x, x_636.y) * vec2<f32>(x_638.z, x_638.z)) + vec2<f32>(x_641.x, x_641.y));
    let x_644 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_643.x, x_643.y, x_644.z, x_644.w);
    let x_646 : vec4<f32> = u_xlat6;
    let x_650 : vec4<f32> = x_609.x_MainLightWorldToLight[3i];
    let x_652 : vec2<f32> = (vec2<f32>(x_646.x, x_646.y) + vec2<f32>(x_650.x, x_650.y));
    let x_653 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_652.x, x_652.y, x_653.z, x_653.w);
    let x_655 : vec4<f32> = u_xlat6;
    let x_659 : vec2<f32> = ((vec2<f32>(x_655.x, x_655.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_660 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_659.x, x_659.y, x_660.z, x_660.w);
    let x_667 : vec4<f32> = u_xlat6;
    let x_670 : f32 = x_44.x_GlobalMipBias.x;
    let x_671 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_667.x, x_667.y), x_670);
    u_xlat6 = x_671;
    let x_676 : f32 = x_609.x_MainLightCookieTextureFormat;
    let x_678 : f32 = x_609.x_MainLightCookieTextureFormat;
    let x_680 : f32 = x_609.x_MainLightCookieTextureFormat;
    let x_682 : f32 = x_609.x_MainLightCookieTextureFormat;
    let x_683 : vec4<f32> = vec4<f32>(x_676, x_678, x_680, x_682);
    let x_691 : vec4<bool> = (vec4<f32>(x_683.x, x_683.y, x_683.z, x_683.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_691.x, x_691.y);
    let x_695 : bool = u_xlatb7.y;
    if (x_695) {
      let x_700 : f32 = u_xlat6.w;
      x_696 = x_700;
    } else {
      let x_703 : f32 = u_xlat6.x;
      x_696 = x_703;
    }
    let x_704 : f32 = x_696;
    u_xlat45 = x_704;
    let x_706 : bool = u_xlatb7.x;
    if (x_706) {
      let x_710 : vec4<f32> = u_xlat6;
      x_707 = vec3<f32>(x_710.x, x_710.y, x_710.z);
    } else {
      let x_713 : f32 = u_xlat45;
      x_707 = vec3<f32>(x_713, x_713, x_713);
    }
    let x_715 : vec3<f32> = x_707;
    let x_716 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_715.x, x_715.y, x_715.z, x_716.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_722 : vec4<f32> = u_xlat6;
  let x_725 : vec4<f32> = x_44.x_MainLightColor;
  let x_727 : vec3<f32> = (vec3<f32>(x_722.x, x_722.y, x_722.z) * vec3<f32>(x_725.x, x_725.y, x_725.z));
  let x_728 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_727.x, x_727.y, x_727.z, x_728.w);
  let x_730 : f32 = u_xlat44;
  let x_732 : vec4<f32> = u_xlat6;
  let x_734 : vec3<f32> = (vec3<f32>(x_730, x_730, x_730) * vec3<f32>(x_732.x, x_732.y, x_732.z));
  let x_735 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_734.x, x_734.y, x_734.z, x_735.w);
  let x_737 : vec3<f32> = u_xlat5;
  let x_739 : vec3<f32> = u_xlat16;
  u_xlat45 = dot(-(x_737), x_739);
  let x_741 : f32 = u_xlat45;
  let x_742 : f32 = u_xlat45;
  u_xlat45 = (x_741 + x_742);
  let x_745 : vec3<f32> = u_xlat16;
  let x_746 : f32 = u_xlat45;
  let x_750 : vec3<f32> = u_xlat5;
  let x_752 : vec3<f32> = ((x_745 * -(vec3<f32>(x_746, x_746, x_746))) + -(x_750));
  let x_753 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_752.x, x_752.y, x_752.z, x_753.w);
  let x_755 : vec3<f32> = u_xlat16;
  let x_756 : vec3<f32> = u_xlat5;
  u_xlat45 = dot(x_755, x_756);
  let x_758 : f32 = u_xlat45;
  u_xlat45 = clamp(x_758, 0.0f, 1.0f);
  let x_760 : f32 = u_xlat45;
  u_xlat45 = (-(x_760) + 1.0f);
  let x_763 : f32 = u_xlat45;
  let x_764 : f32 = u_xlat45;
  u_xlat45 = (x_763 * x_764);
  let x_766 : f32 = u_xlat45;
  let x_767 : f32 = u_xlat45;
  u_xlat45 = (x_766 * x_767);
  let x_770 : f32 = u_xlat39;
  u_xlat46 = ((-(x_770) * 0.699999988f) + 1.700000048f);
  let x_776 : f32 = u_xlat39;
  let x_777 : f32 = u_xlat46;
  u_xlat39 = (x_776 * x_777);
  let x_779 : f32 = u_xlat39;
  u_xlat39 = (x_779 * 6.0f);
  let x_790 : vec4<f32> = u_xlat7;
  let x_792 : f32 = u_xlat39;
  let x_793 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_790.x, x_790.y, x_790.z), x_792);
  u_xlat7 = x_793;
  let x_795 : f32 = u_xlat7.w;
  u_xlat39 = (x_795 + -1.0f);
  let x_798 : f32 = x_184.unity_SpecCube0_HDR.w;
  let x_799 : f32 = u_xlat39;
  u_xlat39 = ((x_798 * x_799) + 1.0f);
  let x_802 : f32 = u_xlat39;
  u_xlat39 = max(x_802, 0.0f);
  let x_804 : f32 = u_xlat39;
  u_xlat39 = log2(x_804);
  let x_806 : f32 = u_xlat39;
  let x_808 : f32 = x_184.unity_SpecCube0_HDR.y;
  u_xlat39 = (x_806 * x_808);
  let x_810 : f32 = u_xlat39;
  u_xlat39 = exp2(x_810);
  let x_812 : f32 = u_xlat39;
  let x_814 : f32 = x_184.unity_SpecCube0_HDR.x;
  u_xlat39 = (x_812 * x_814);
  let x_816 : vec4<f32> = u_xlat7;
  let x_818 : f32 = u_xlat39;
  let x_820 : vec3<f32> = (vec3<f32>(x_816.x, x_816.y, x_816.z) * vec3<f32>(x_818, x_818, x_818));
  let x_821 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_820.x, x_820.y, x_820.z, x_821.w);
  let x_824 : vec2<f32> = u_xlat1;
  let x_826 : vec2<f32> = u_xlat1;
  u_xlat8 = ((vec2<f32>(x_824.x, x_824.x) * vec2<f32>(x_826.x, x_826.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_832 : f32 = u_xlat8.y;
  u_xlat39 = (1.0f / x_832);
  let x_835 : vec4<f32> = u_xlat0;
  let x_838 : vec2<f32> = u_xlat27;
  u_xlat21 = (-(vec3<f32>(x_835.x, x_835.y, x_835.z)) + vec3<f32>(x_838.x, x_838.x, x_838.x));
  let x_841 : f32 = u_xlat45;
  let x_843 : vec3<f32> = u_xlat21;
  let x_845 : vec4<f32> = u_xlat0;
  u_xlat21 = ((vec3<f32>(x_841, x_841, x_841) * x_843) + vec3<f32>(x_845.x, x_845.y, x_845.z));
  let x_848 : f32 = u_xlat39;
  let x_850 : vec3<f32> = u_xlat21;
  u_xlat21 = (vec3<f32>(x_848, x_848, x_848) * x_850);
  let x_852 : vec4<f32> = u_xlat7;
  let x_854 : vec3<f32> = u_xlat21;
  let x_855 : vec3<f32> = (vec3<f32>(x_852.x, x_852.y, x_852.z) * x_854);
  let x_856 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_855.x, x_855.y, x_855.z, x_856.w);
  let x_858 : vec4<f32> = u_xlat4;
  let x_860 : vec3<f32> = u_xlat15;
  let x_862 : vec4<f32> = u_xlat7;
  let x_864 : vec3<f32> = ((vec3<f32>(x_858.x, x_858.y, x_858.z) * x_860) + vec3<f32>(x_862.x, x_862.y, x_862.z));
  let x_865 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_864.x, x_864.y, x_864.z, x_865.w);
  let x_867 : f32 = u_xlat43;
  let x_870 : f32 = x_184.unity_LightData.z;
  u_xlat39 = (x_867 * x_870);
  let x_872 : vec3<f32> = u_xlat16;
  let x_874 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat1.x = dot(x_872, vec3<f32>(x_874.x, x_874.y, x_874.z));
  let x_879 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_879, 0.0f, 1.0f);
  let x_882 : f32 = u_xlat39;
  let x_884 : f32 = u_xlat1.x;
  u_xlat39 = (x_882 * x_884);
  let x_886 : f32 = u_xlat39;
  let x_888 : vec4<f32> = u_xlat6;
  let x_890 : vec3<f32> = (vec3<f32>(x_886, x_886, x_886) * vec3<f32>(x_888.x, x_888.y, x_888.z));
  let x_891 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_890.x, x_890.y, x_890.z, x_891.w);
  let x_893 : vec3<f32> = u_xlat5;
  let x_895 : vec4<f32> = x_44.x_MainLightPosition;
  let x_897 : vec3<f32> = (x_893 + vec3<f32>(x_895.x, x_895.y, x_895.z));
  let x_898 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_897.x, x_897.y, x_897.z, x_898.w);
  let x_900 : vec4<f32> = u_xlat7;
  let x_902 : vec4<f32> = u_xlat7;
  u_xlat39 = dot(vec3<f32>(x_900.x, x_900.y, x_900.z), vec3<f32>(x_902.x, x_902.y, x_902.z));
  let x_905 : f32 = u_xlat39;
  u_xlat39 = max(x_905, 1.17549435e-37f);
  let x_908 : f32 = u_xlat39;
  u_xlat39 = inverseSqrt(x_908);
  let x_910 : f32 = u_xlat39;
  let x_912 : vec4<f32> = u_xlat7;
  let x_914 : vec3<f32> = (vec3<f32>(x_910, x_910, x_910) * vec3<f32>(x_912.x, x_912.y, x_912.z));
  let x_915 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_914.x, x_914.y, x_914.z, x_915.w);
  let x_917 : vec3<f32> = u_xlat16;
  let x_918 : vec4<f32> = u_xlat7;
  u_xlat39 = dot(x_917, vec3<f32>(x_918.x, x_918.y, x_918.z));
  let x_921 : f32 = u_xlat39;
  u_xlat39 = clamp(x_921, 0.0f, 1.0f);
  let x_924 : vec4<f32> = x_44.x_MainLightPosition;
  let x_926 : vec4<f32> = u_xlat7;
  u_xlat1.x = dot(vec3<f32>(x_924.x, x_924.y, x_924.z), vec3<f32>(x_926.x, x_926.y, x_926.z));
  let x_931 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_931, 0.0f, 1.0f);
  let x_934 : f32 = u_xlat39;
  let x_935 : f32 = u_xlat39;
  u_xlat39 = (x_934 * x_935);
  let x_937 : f32 = u_xlat39;
  let x_939 : f32 = u_xlat8.x;
  u_xlat39 = ((x_937 * x_939) + 1.000010014f);
  let x_944 : f32 = u_xlat1.x;
  let x_946 : f32 = u_xlat1.x;
  u_xlat1.x = (x_944 * x_946);
  let x_949 : f32 = u_xlat39;
  let x_950 : f32 = u_xlat39;
  u_xlat39 = (x_949 * x_950);
  let x_953 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_953, 0.100000001f);
  let x_957 : f32 = u_xlat39;
  let x_959 : f32 = u_xlat1.x;
  u_xlat39 = (x_957 * x_959);
  let x_961 : f32 = u_xlat40;
  let x_962 : f32 = u_xlat39;
  u_xlat39 = (x_961 * x_962);
  let x_964 : f32 = u_xlat14;
  let x_965 : f32 = u_xlat39;
  u_xlat39 = (x_964 / x_965);
  let x_967 : vec4<f32> = u_xlat0;
  let x_969 : f32 = u_xlat39;
  let x_972 : vec3<f32> = u_xlat15;
  let x_973 : vec3<f32> = ((vec3<f32>(x_967.x, x_967.y, x_967.z) * vec3<f32>(x_969, x_969, x_969)) + x_972);
  let x_974 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_973.x, x_973.y, x_973.z, x_974.w);
  let x_976 : vec4<f32> = u_xlat6;
  let x_978 : vec4<f32> = u_xlat7;
  let x_980 : vec3<f32> = (vec3<f32>(x_976.x, x_976.y, x_976.z) * vec3<f32>(x_978.x, x_978.y, x_978.z));
  let x_981 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_980.x, x_980.y, x_980.z, x_981.w);
  let x_984 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_986 : f32 = x_184.unity_LightData.y;
  u_xlat39 = min(x_984, x_986);
  let x_990 : f32 = u_xlat39;
  u_xlatu39 = bitcast<u32>(i32(x_990));
  let x_997 : f32 = x_609.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_999 : f32 = x_609.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1001 : f32 = x_609.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1003 : f32 = x_609.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1004 : vec4<f32> = vec4<f32>(x_997, x_999, x_1001, x_1003);
  let x_1011 : vec4<bool> = (vec4<f32>(x_1004.x, x_1004.y, x_1004.z, x_1004.w) == vec4<f32>(0.0f, 0.0f, 1.0f, 0.0f));
  let x_1012 : vec2<bool> = vec2<bool>(x_1011.x, x_1011.z);
  let x_1013 : vec3<bool> = u_xlatb1;
  u_xlatb1 = vec3<bool>(x_1012.x, x_1013.y, x_1012.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1024 : u32 = u_xlatu_loop_1;
    let x_1025 : u32 = u_xlatu39;
    if ((x_1024 < x_1025)) {
    } else {
      break;
    }
    let x_1028 : u32 = u_xlatu_loop_1;
    u_xlatu45 = (x_1028 >> 2u);
    let x_1032 : u32 = u_xlatu_loop_1;
    u_xlati46 = bitcast<i32>((x_1032 & 3u));
    let x_1035 : u32 = u_xlatu45;
    let x_1038 : vec4<f32> = x_184.unity_LightIndices[bitcast<i32>(x_1035)];
    let x_1048 : i32 = u_xlati46;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1053 : vec4<u32> = indexable[x_1048];
    u_xlat45 = dot(x_1038, bitcast<vec4<f32>>(x_1053));
    let x_1056 : f32 = u_xlat45;
    u_xlatu45 = bitcast<u32>(i32(x_1056));
    let x_1059 : vec3<f32> = vs_TEXCOORD1;
    let x_1071 : u32 = u_xlatu45;
    let x_1074 : vec4<f32> = x_1070.x_AdditionalLightsPosition[bitcast<i32>(x_1071)];
    let x_1077 : u32 = u_xlatu45;
    let x_1080 : vec4<f32> = x_1070.x_AdditionalLightsPosition[bitcast<i32>(x_1077)];
    u_xlat21 = ((-(x_1059) * vec3<f32>(x_1074.w, x_1074.w, x_1074.w)) + vec3<f32>(x_1080.x, x_1080.y, x_1080.z));
    let x_1083 : vec3<f32> = u_xlat21;
    let x_1084 : vec3<f32> = u_xlat21;
    u_xlat46 = dot(x_1083, x_1084);
    let x_1086 : f32 = u_xlat46;
    u_xlat46 = max(x_1086, 6.10351562e-05f);
    let x_1090 : f32 = u_xlat46;
    u_xlat9 = inverseSqrt(x_1090);
    let x_1093 : vec3<f32> = u_xlat21;
    let x_1094 : f32 = u_xlat9;
    u_xlat22 = (x_1093 * vec3<f32>(x_1094, x_1094, x_1094));
    let x_1098 : f32 = u_xlat46;
    u_xlat10.x = (1.0f / x_1098);
    let x_1101 : f32 = u_xlat46;
    let x_1102 : u32 = u_xlatu45;
    let x_1105 : f32 = x_1070.x_AdditionalLightsAttenuation[bitcast<i32>(x_1102)].x;
    u_xlat46 = (x_1101 * x_1105);
    let x_1107 : f32 = u_xlat46;
    let x_1109 : f32 = u_xlat46;
    u_xlat46 = ((-(x_1107) * x_1109) + 1.0f);
    let x_1112 : f32 = u_xlat46;
    u_xlat46 = max(x_1112, 0.0f);
    let x_1114 : f32 = u_xlat46;
    let x_1115 : f32 = u_xlat46;
    u_xlat46 = (x_1114 * x_1115);
    let x_1117 : f32 = u_xlat46;
    let x_1119 : f32 = u_xlat10.x;
    u_xlat46 = (x_1117 * x_1119);
    let x_1121 : u32 = u_xlatu45;
    let x_1124 : vec4<f32> = x_1070.x_AdditionalLightsSpotDir[bitcast<i32>(x_1121)];
    let x_1126 : vec3<f32> = u_xlat22;
    u_xlat10.x = dot(vec3<f32>(x_1124.x, x_1124.y, x_1124.z), x_1126);
    let x_1130 : f32 = u_xlat10.x;
    let x_1131 : u32 = u_xlatu45;
    let x_1134 : f32 = x_1070.x_AdditionalLightsAttenuation[bitcast<i32>(x_1131)].z;
    let x_1136 : u32 = u_xlatu45;
    let x_1139 : f32 = x_1070.x_AdditionalLightsAttenuation[bitcast<i32>(x_1136)].w;
    u_xlat10.x = ((x_1130 * x_1134) + x_1139);
    let x_1143 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_1143, 0.0f, 1.0f);
    let x_1147 : f32 = u_xlat10.x;
    let x_1149 : f32 = u_xlat10.x;
    u_xlat10.x = (x_1147 * x_1149);
    let x_1152 : f32 = u_xlat46;
    let x_1154 : f32 = u_xlat10.x;
    u_xlat46 = (x_1152 * x_1154);
    let x_1157 : u32 = u_xlatu45;
    u_xlatu10 = (x_1157 >> 5u);
    let x_1160 : u32 = u_xlatu45;
    u_xlati23 = (1i << bitcast<u32>((bitcast<i32>(x_1160) & 31i)));
    let x_1166 : i32 = u_xlati23;
    let x_1168 : u32 = u_xlatu10;
    let x_1171 : f32 = x_609.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1168)].el;
    u_xlati10 = bitcast<i32>((bitcast<u32>(x_1166) & bitcast<u32>(x_1171)));
    let x_1175 : i32 = u_xlati10;
    if ((x_1175 != 0i)) {
      let x_1185 : u32 = u_xlatu45;
      let x_1188 : f32 = x_1184.x_AdditionalLightsLightTypes[bitcast<i32>(x_1185)].el;
      u_xlati10 = i32(x_1188);
      let x_1190 : i32 = u_xlati10;
      u_xlati23 = select(1i, 0i, (x_1190 != 0i));
      let x_1194 : u32 = u_xlatu45;
      u_xlati36 = (bitcast<i32>(x_1194) << bitcast<u32>(2i));
      let x_1197 : i32 = u_xlati23;
      if ((x_1197 != 0i)) {
        let x_1202 : vec3<f32> = vs_TEXCOORD1;
        let x_1204 : i32 = u_xlati36;
        let x_1207 : i32 = u_xlati36;
        let x_1211 : vec4<f32> = x_1184.x_AdditionalLightsWorldToLights[((x_1204 + 1i) / 4i)][((x_1207 + 1i) % 4i)];
        let x_1213 : vec3<f32> = (vec3<f32>(x_1202.y, x_1202.y, x_1202.y) * vec3<f32>(x_1211.x, x_1211.y, x_1211.w));
        let x_1214 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1213.x, x_1213.y, x_1213.z, x_1214.w);
        let x_1216 : i32 = u_xlati36;
        let x_1218 : i32 = u_xlati36;
        let x_1221 : vec4<f32> = x_1184.x_AdditionalLightsWorldToLights[(x_1216 / 4i)][(x_1218 % 4i)];
        let x_1223 : vec3<f32> = vs_TEXCOORD1;
        let x_1226 : vec4<f32> = u_xlat11;
        let x_1228 : vec3<f32> = ((vec3<f32>(x_1221.x, x_1221.y, x_1221.w) * vec3<f32>(x_1223.x, x_1223.x, x_1223.x)) + vec3<f32>(x_1226.x, x_1226.y, x_1226.z));
        let x_1229 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1228.x, x_1228.y, x_1228.z, x_1229.w);
        let x_1231 : i32 = u_xlati36;
        let x_1234 : i32 = u_xlati36;
        let x_1238 : vec4<f32> = x_1184.x_AdditionalLightsWorldToLights[((x_1231 + 2i) / 4i)][((x_1234 + 2i) % 4i)];
        let x_1240 : vec3<f32> = vs_TEXCOORD1;
        let x_1243 : vec4<f32> = u_xlat11;
        let x_1245 : vec3<f32> = ((vec3<f32>(x_1238.x, x_1238.y, x_1238.w) * vec3<f32>(x_1240.z, x_1240.z, x_1240.z)) + vec3<f32>(x_1243.x, x_1243.y, x_1243.z));
        let x_1246 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1245.x, x_1245.y, x_1245.z, x_1246.w);
        let x_1248 : vec4<f32> = u_xlat11;
        let x_1250 : i32 = u_xlati36;
        let x_1253 : i32 = u_xlati36;
        let x_1257 : vec4<f32> = x_1184.x_AdditionalLightsWorldToLights[((x_1250 + 3i) / 4i)][((x_1253 + 3i) % 4i)];
        let x_1259 : vec3<f32> = (vec3<f32>(x_1248.x, x_1248.y, x_1248.z) + vec3<f32>(x_1257.x, x_1257.y, x_1257.w));
        let x_1260 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1259.x, x_1259.y, x_1259.z, x_1260.w);
        let x_1263 : vec4<f32> = u_xlat11;
        let x_1265 : vec4<f32> = u_xlat11;
        let x_1267 : vec2<f32> = (vec2<f32>(x_1263.x, x_1263.y) / vec2<f32>(x_1265.z, x_1265.z));
        let x_1268 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_1267.x, x_1268.y, x_1267.y);
        let x_1270 : vec3<f32> = u_xlat23;
        let x_1273 : vec2<f32> = ((vec2<f32>(x_1270.x, x_1270.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1274 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_1273.x, x_1274.y, x_1273.y);
        let x_1276 : vec3<f32> = u_xlat23;
        let x_1280 : vec2<f32> = clamp(vec2<f32>(x_1276.x, x_1276.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1281 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_1280.x, x_1281.y, x_1280.y);
        let x_1283 : u32 = u_xlatu45;
        let x_1286 : vec4<f32> = x_1184.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1283)];
        let x_1288 : vec3<f32> = u_xlat23;
        let x_1291 : u32 = u_xlatu45;
        let x_1294 : vec4<f32> = x_1184.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1291)];
        let x_1296 : vec2<f32> = ((vec2<f32>(x_1286.x, x_1286.y) * vec2<f32>(x_1288.x, x_1288.z)) + vec2<f32>(x_1294.z, x_1294.w));
        let x_1297 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_1296.x, x_1297.y, x_1296.y);
      } else {
        let x_1301 : i32 = u_xlati10;
        u_xlatb10 = (x_1301 == 1i);
        let x_1303 : bool = u_xlatb10;
        u_xlati10 = select(0i, 1i, x_1303);
        let x_1305 : i32 = u_xlati10;
        if ((x_1305 != 0i)) {
          let x_1309 : vec3<f32> = vs_TEXCOORD1;
          let x_1311 : i32 = u_xlati36;
          let x_1314 : i32 = u_xlati36;
          let x_1318 : vec4<f32> = x_1184.x_AdditionalLightsWorldToLights[((x_1311 + 1i) / 4i)][((x_1314 + 1i) % 4i)];
          let x_1320 : vec2<f32> = (vec2<f32>(x_1309.y, x_1309.y) * vec2<f32>(x_1318.x, x_1318.y));
          let x_1321 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1320.x, x_1320.y, x_1321.z, x_1321.w);
          let x_1323 : i32 = u_xlati36;
          let x_1325 : i32 = u_xlati36;
          let x_1328 : vec4<f32> = x_1184.x_AdditionalLightsWorldToLights[(x_1323 / 4i)][(x_1325 % 4i)];
          let x_1330 : vec3<f32> = vs_TEXCOORD1;
          let x_1333 : vec4<f32> = u_xlat11;
          let x_1335 : vec2<f32> = ((vec2<f32>(x_1328.x, x_1328.y) * vec2<f32>(x_1330.x, x_1330.x)) + vec2<f32>(x_1333.x, x_1333.y));
          let x_1336 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1335.x, x_1335.y, x_1336.z, x_1336.w);
          let x_1338 : i32 = u_xlati36;
          let x_1341 : i32 = u_xlati36;
          let x_1345 : vec4<f32> = x_1184.x_AdditionalLightsWorldToLights[((x_1338 + 2i) / 4i)][((x_1341 + 2i) % 4i)];
          let x_1347 : vec3<f32> = vs_TEXCOORD1;
          let x_1350 : vec4<f32> = u_xlat11;
          let x_1352 : vec2<f32> = ((vec2<f32>(x_1345.x, x_1345.y) * vec2<f32>(x_1347.z, x_1347.z)) + vec2<f32>(x_1350.x, x_1350.y));
          let x_1353 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1352.x, x_1352.y, x_1353.z, x_1353.w);
          let x_1355 : vec4<f32> = u_xlat11;
          let x_1357 : i32 = u_xlati36;
          let x_1360 : i32 = u_xlati36;
          let x_1364 : vec4<f32> = x_1184.x_AdditionalLightsWorldToLights[((x_1357 + 3i) / 4i)][((x_1360 + 3i) % 4i)];
          let x_1366 : vec2<f32> = (vec2<f32>(x_1355.x, x_1355.y) + vec2<f32>(x_1364.x, x_1364.y));
          let x_1367 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1366.x, x_1366.y, x_1367.z, x_1367.w);
          let x_1369 : vec4<f32> = u_xlat11;
          let x_1372 : vec2<f32> = ((vec2<f32>(x_1369.x, x_1369.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1373 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1372.x, x_1372.y, x_1373.z, x_1373.w);
          let x_1375 : vec4<f32> = u_xlat11;
          let x_1377 : vec2<f32> = fract(vec2<f32>(x_1375.x, x_1375.y));
          let x_1378 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1377.x, x_1377.y, x_1378.z, x_1378.w);
          let x_1380 : u32 = u_xlatu45;
          let x_1383 : vec4<f32> = x_1184.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1380)];
          let x_1385 : vec4<f32> = u_xlat11;
          let x_1388 : u32 = u_xlatu45;
          let x_1391 : vec4<f32> = x_1184.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1388)];
          let x_1393 : vec2<f32> = ((vec2<f32>(x_1383.x, x_1383.y) * vec2<f32>(x_1385.x, x_1385.y)) + vec2<f32>(x_1391.z, x_1391.w));
          let x_1394 : vec3<f32> = u_xlat23;
          u_xlat23 = vec3<f32>(x_1393.x, x_1394.y, x_1393.y);
        } else {
          let x_1397 : vec3<f32> = vs_TEXCOORD1;
          let x_1399 : i32 = u_xlati36;
          let x_1402 : i32 = u_xlati36;
          let x_1406 : vec4<f32> = x_1184.x_AdditionalLightsWorldToLights[((x_1399 + 1i) / 4i)][((x_1402 + 1i) % 4i)];
          u_xlat11 = (vec4<f32>(x_1397.y, x_1397.y, x_1397.y, x_1397.y) * x_1406);
          let x_1408 : i32 = u_xlati36;
          let x_1410 : i32 = u_xlati36;
          let x_1413 : vec4<f32> = x_1184.x_AdditionalLightsWorldToLights[(x_1408 / 4i)][(x_1410 % 4i)];
          let x_1414 : vec3<f32> = vs_TEXCOORD1;
          let x_1417 : vec4<f32> = u_xlat11;
          u_xlat11 = ((x_1413 * vec4<f32>(x_1414.x, x_1414.x, x_1414.x, x_1414.x)) + x_1417);
          let x_1419 : i32 = u_xlati36;
          let x_1422 : i32 = u_xlati36;
          let x_1426 : vec4<f32> = x_1184.x_AdditionalLightsWorldToLights[((x_1419 + 2i) / 4i)][((x_1422 + 2i) % 4i)];
          let x_1427 : vec3<f32> = vs_TEXCOORD1;
          let x_1430 : vec4<f32> = u_xlat11;
          u_xlat11 = ((x_1426 * vec4<f32>(x_1427.z, x_1427.z, x_1427.z, x_1427.z)) + x_1430);
          let x_1432 : vec4<f32> = u_xlat11;
          let x_1433 : i32 = u_xlati36;
          let x_1436 : i32 = u_xlati36;
          let x_1440 : vec4<f32> = x_1184.x_AdditionalLightsWorldToLights[((x_1433 + 3i) / 4i)][((x_1436 + 3i) % 4i)];
          u_xlat11 = (x_1432 + x_1440);
          let x_1442 : vec4<f32> = u_xlat11;
          let x_1444 : vec4<f32> = u_xlat11;
          let x_1446 : vec3<f32> = (vec3<f32>(x_1442.x, x_1442.y, x_1442.z) / vec3<f32>(x_1444.w, x_1444.w, x_1444.w));
          let x_1447 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1446.x, x_1446.y, x_1446.z, x_1447.w);
          let x_1449 : vec4<f32> = u_xlat11;
          let x_1451 : vec4<f32> = u_xlat11;
          u_xlat10.x = dot(vec3<f32>(x_1449.x, x_1449.y, x_1449.z), vec3<f32>(x_1451.x, x_1451.y, x_1451.z));
          let x_1456 : f32 = u_xlat10.x;
          u_xlat10.x = inverseSqrt(x_1456);
          let x_1459 : vec4<f32> = u_xlat10;
          let x_1461 : vec4<f32> = u_xlat11;
          let x_1463 : vec3<f32> = (vec3<f32>(x_1459.x, x_1459.x, x_1459.x) * vec3<f32>(x_1461.x, x_1461.y, x_1461.z));
          let x_1464 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1463.x, x_1463.y, x_1463.z, x_1464.w);
          let x_1466 : vec4<f32> = u_xlat11;
          u_xlat10.x = dot(abs(vec3<f32>(x_1466.x, x_1466.y, x_1466.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1473 : f32 = u_xlat10.x;
          u_xlat10.x = max(x_1473, 0.000001f);
          let x_1478 : f32 = u_xlat10.x;
          u_xlat10.x = (1.0f / x_1478);
          let x_1482 : vec4<f32> = u_xlat10;
          let x_1484 : vec4<f32> = u_xlat11;
          u_xlat12 = (vec3<f32>(x_1482.x, x_1482.x, x_1482.x) * vec3<f32>(x_1484.z, x_1484.x, x_1484.y));
          let x_1488 : f32 = u_xlat12.x;
          u_xlat12.x = -(x_1488);
          let x_1492 : f32 = u_xlat12.x;
          u_xlat12.x = clamp(x_1492, 0.0f, 1.0f);
          let x_1496 : vec3<f32> = u_xlat12;
          let x_1499 : vec4<bool> = (vec4<f32>(x_1496.y, x_1496.z, x_1496.y, x_1496.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb37 = vec2<bool>(x_1499.x, x_1499.y);
          let x_1503 : bool = u_xlatb37.x;
          if (x_1503) {
            let x_1508 : f32 = u_xlat12.x;
            x_1504 = x_1508;
          } else {
            let x_1511 : f32 = u_xlat12.x;
            x_1504 = -(x_1511);
          }
          let x_1513 : f32 = x_1504;
          u_xlat37.x = x_1513;
          let x_1516 : bool = u_xlatb37.y;
          if (x_1516) {
            let x_1521 : f32 = u_xlat12.x;
            x_1517 = x_1521;
          } else {
            let x_1524 : f32 = u_xlat12.x;
            x_1517 = -(x_1524);
          }
          let x_1526 : f32 = x_1517;
          u_xlat37.y = x_1526;
          let x_1528 : vec4<f32> = u_xlat11;
          let x_1530 : vec4<f32> = u_xlat10;
          let x_1533 : vec2<f32> = u_xlat37;
          let x_1534 : vec2<f32> = ((vec2<f32>(x_1528.x, x_1528.y) * vec2<f32>(x_1530.x, x_1530.x)) + x_1533);
          let x_1535 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_1534.x, x_1535.y, x_1534.y, x_1535.w);
          let x_1537 : vec4<f32> = u_xlat10;
          let x_1540 : vec2<f32> = ((vec2<f32>(x_1537.x, x_1537.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1541 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_1540.x, x_1541.y, x_1540.y, x_1541.w);
          let x_1543 : vec4<f32> = u_xlat10;
          let x_1547 : vec2<f32> = clamp(vec2<f32>(x_1543.x, x_1543.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1548 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_1547.x, x_1548.y, x_1547.y, x_1548.w);
          let x_1550 : u32 = u_xlatu45;
          let x_1553 : vec4<f32> = x_1184.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1550)];
          let x_1555 : vec4<f32> = u_xlat10;
          let x_1558 : u32 = u_xlatu45;
          let x_1561 : vec4<f32> = x_1184.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1558)];
          let x_1563 : vec2<f32> = ((vec2<f32>(x_1553.x, x_1553.y) * vec2<f32>(x_1555.x, x_1555.z)) + vec2<f32>(x_1561.z, x_1561.w));
          let x_1564 : vec3<f32> = u_xlat23;
          u_xlat23 = vec3<f32>(x_1563.x, x_1564.y, x_1563.y);
        }
      }
      let x_1571 : vec3<f32> = u_xlat23;
      let x_1574 : f32 = x_44.x_GlobalMipBias.x;
      let x_1575 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1571.x, x_1571.z), x_1574);
      u_xlat10 = x_1575;
      let x_1578 : bool = u_xlatb1.z;
      if (x_1578) {
        let x_1583 : f32 = u_xlat10.w;
        x_1579 = x_1583;
      } else {
        let x_1586 : f32 = u_xlat10.x;
        x_1579 = x_1586;
      }
      let x_1587 : f32 = x_1579;
      u_xlat49 = x_1587;
      let x_1589 : bool = u_xlatb1.x;
      if (x_1589) {
        let x_1593 : vec4<f32> = u_xlat10;
        x_1590 = vec3<f32>(x_1593.x, x_1593.y, x_1593.z);
      } else {
        let x_1596 : f32 = u_xlat49;
        x_1590 = vec3<f32>(x_1596, x_1596, x_1596);
      }
      let x_1598 : vec3<f32> = x_1590;
      let x_1599 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1598.x, x_1598.y, x_1598.z, x_1599.w);
    } else {
      u_xlat10.x = 1.0f;
      u_xlat10.y = 1.0f;
      u_xlat10.z = 1.0f;
    }
    let x_1605 : vec4<f32> = u_xlat10;
    let x_1607 : u32 = u_xlatu45;
    let x_1610 : vec4<f32> = x_1070.x_AdditionalLightsColor[bitcast<i32>(x_1607)];
    let x_1612 : vec3<f32> = (vec3<f32>(x_1605.x, x_1605.y, x_1605.z) * vec3<f32>(x_1610.x, x_1610.y, x_1610.z));
    let x_1613 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1612.x, x_1612.y, x_1612.z, x_1613.w);
    let x_1615 : f32 = u_xlat44;
    let x_1617 : vec4<f32> = u_xlat10;
    let x_1619 : vec3<f32> = (vec3<f32>(x_1615, x_1615, x_1615) * vec3<f32>(x_1617.x, x_1617.y, x_1617.z));
    let x_1620 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1619.x, x_1619.y, x_1619.z, x_1620.w);
    let x_1622 : vec3<f32> = u_xlat16;
    let x_1623 : vec3<f32> = u_xlat22;
    u_xlat45 = dot(x_1622, x_1623);
    let x_1625 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1625, 0.0f, 1.0f);
    let x_1627 : f32 = u_xlat45;
    let x_1628 : f32 = u_xlat46;
    u_xlat45 = (x_1627 * x_1628);
    let x_1630 : f32 = u_xlat45;
    let x_1632 : vec4<f32> = u_xlat10;
    let x_1634 : vec3<f32> = (vec3<f32>(x_1630, x_1630, x_1630) * vec3<f32>(x_1632.x, x_1632.y, x_1632.z));
    let x_1635 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1634.x, x_1634.y, x_1634.z, x_1635.w);
    let x_1637 : vec3<f32> = u_xlat21;
    let x_1638 : f32 = u_xlat9;
    let x_1641 : vec3<f32> = u_xlat5;
    u_xlat21 = ((x_1637 * vec3<f32>(x_1638, x_1638, x_1638)) + x_1641);
    let x_1643 : vec3<f32> = u_xlat21;
    let x_1644 : vec3<f32> = u_xlat21;
    u_xlat45 = dot(x_1643, x_1644);
    let x_1646 : f32 = u_xlat45;
    u_xlat45 = max(x_1646, 1.17549435e-37f);
    let x_1648 : f32 = u_xlat45;
    u_xlat45 = inverseSqrt(x_1648);
    let x_1650 : f32 = u_xlat45;
    let x_1652 : vec3<f32> = u_xlat21;
    u_xlat21 = (vec3<f32>(x_1650, x_1650, x_1650) * x_1652);
    let x_1654 : vec3<f32> = u_xlat16;
    let x_1655 : vec3<f32> = u_xlat21;
    u_xlat45 = dot(x_1654, x_1655);
    let x_1657 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1657, 0.0f, 1.0f);
    let x_1659 : vec3<f32> = u_xlat22;
    let x_1660 : vec3<f32> = u_xlat21;
    u_xlat46 = dot(x_1659, x_1660);
    let x_1662 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1662, 0.0f, 1.0f);
    let x_1664 : f32 = u_xlat45;
    let x_1665 : f32 = u_xlat45;
    u_xlat45 = (x_1664 * x_1665);
    let x_1667 : f32 = u_xlat45;
    let x_1669 : f32 = u_xlat8.x;
    u_xlat45 = ((x_1667 * x_1669) + 1.000010014f);
    let x_1672 : f32 = u_xlat46;
    let x_1673 : f32 = u_xlat46;
    u_xlat46 = (x_1672 * x_1673);
    let x_1675 : f32 = u_xlat45;
    let x_1676 : f32 = u_xlat45;
    u_xlat45 = (x_1675 * x_1676);
    let x_1678 : f32 = u_xlat46;
    u_xlat46 = max(x_1678, 0.100000001f);
    let x_1680 : f32 = u_xlat45;
    let x_1681 : f32 = u_xlat46;
    u_xlat45 = (x_1680 * x_1681);
    let x_1683 : f32 = u_xlat40;
    let x_1684 : f32 = u_xlat45;
    u_xlat45 = (x_1683 * x_1684);
    let x_1686 : f32 = u_xlat14;
    let x_1687 : f32 = u_xlat45;
    u_xlat45 = (x_1686 / x_1687);
    let x_1689 : vec4<f32> = u_xlat0;
    let x_1691 : f32 = u_xlat45;
    let x_1694 : vec3<f32> = u_xlat15;
    u_xlat21 = ((vec3<f32>(x_1689.x, x_1689.y, x_1689.z) * vec3<f32>(x_1691, x_1691, x_1691)) + x_1694);
    let x_1696 : vec3<f32> = u_xlat21;
    let x_1697 : vec4<f32> = u_xlat10;
    let x_1700 : vec4<f32> = u_xlat7;
    let x_1702 : vec3<f32> = ((x_1696 * vec3<f32>(x_1697.x, x_1697.y, x_1697.z)) + vec3<f32>(x_1700.x, x_1700.y, x_1700.z));
    let x_1703 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1702.x, x_1702.y, x_1702.z, x_1703.w);

    continuing {
      let x_1705 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1705 + bitcast<u32>(1i));
    }
  }
  let x_1707 : vec4<f32> = u_xlat4;
  let x_1709 : vec3<f32> = u_xlat3;
  let x_1712 : vec4<f32> = u_xlat6;
  let x_1714 : vec3<f32> = ((vec3<f32>(x_1707.x, x_1707.y, x_1707.z) * vec3<f32>(x_1709.x, x_1709.x, x_1709.x)) + vec3<f32>(x_1712.x, x_1712.y, x_1712.z));
  let x_1715 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1714.x, x_1714.y, x_1714.z, x_1715.w);
  let x_1719 : vec4<f32> = u_xlat7;
  let x_1721 : vec4<f32> = u_xlat0;
  let x_1723 : vec3<f32> = (vec3<f32>(x_1719.x, x_1719.y, x_1719.z) + vec3<f32>(x_1721.x, x_1721.y, x_1721.z));
  let x_1724 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1723.x, x_1723.y, x_1723.z, x_1724.w);
  let x_1729 : f32 = x_69.x_Surface;
  u_xlatb0 = (x_1729 == 1.0f);
  let x_1731 : bool = u_xlatb0;
  if (x_1731) {
    let x_1736 : f32 = u_xlat2.x;
    x_1732 = x_1736;
  } else {
    x_1732 = 1.0f;
  }
  let x_1738 : f32 = x_1732;
  SV_Target0.w = x_1738;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(5) vs_TEXCOORD8_param : vec2<f32>, @location(4) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}

