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

@group(0) @binding(12) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

@group(0) @binding(4) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(13) var sampler_EmissionMap : sampler;

@group(0) @binding(9) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(18) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_106 : UnityPerDraw;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(11) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(5) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(15) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_415 : MainLightShadows;

@group(1) @binding(5) var<uniform> x_476 : LightCookies;

@group(0) @binding(7) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_920 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_1023 : AdditionalLightsCookies;

@group(0) @binding(8) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(17) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat42 : f32;
  var u_xlatb44 : bool;
  var x_112 : f32;
  var u_xlatb42 : bool;
  var u_xlat44 : f32;
  var u_xlat4 : vec3<f32>;
  var x_164 : f32;
  var x_176 : f32;
  var x_188 : f32;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat15 : vec3<f32>;
  var u_xlat45 : f32;
  var u_xlat46 : f32;
  var u_xlat47 : f32;
  var u_xlat20 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat34 : f32;
  var u_xlat48 : f32;
  var u_xlatb48 : bool;
  var u_xlatb7 : bool;
  var u_xlat7 : vec4<f32>;
  var u_xlatb8 : vec2<bool>;
  var x_562 : f32;
  var x_573 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat49 : f32;
  var u_xlat9 : vec2<f32>;
  var u_xlat23 : vec3<f32>;
  var u_xlatu42 : u32;
  var u_xlatb34 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu45 : u32;
  var u_xlati49 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat50 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlat52 : f32;
  var u_xlatu52 : u32;
  var u_xlati11 : i32;
  var u_xlati52 : i32;
  var u_xlati25 : i32;
  var u_xlat11 : vec4<f32>;
  var u_xlatb52 : bool;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb25 : vec3<bool>;
  var u_xlat25 : vec3<f32>;
  var x_1339 : f32;
  var x_1352 : f32;
  var x_1414 : f32;
  var x_1425 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_1577 : f32;
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
  u_xlat42 = x_97.w;
  let x_108 : f32 = x_106.unity_LODFade.x;
  u_xlatb44 = (x_108 >= 0.0f);
  let x_111 : bool = u_xlatb44;
  if (x_111) {
    let x_115 : f32 = u_xlat42;
    x_112 = abs(x_115);
  } else {
    let x_118 : f32 = u_xlat42;
    x_112 = -(abs(x_118));
  }
  let x_121 : f32 = x_112;
  u_xlat42 = x_121;
  let x_122 : f32 = u_xlat42;
  let x_125 : f32 = x_106.unity_LODFade.x;
  u_xlat42 = (-(x_122) + x_125);
  let x_128 : f32 = u_xlat42;
  u_xlatb42 = (x_128 < 0.0f);
  let x_130 : bool = u_xlatb42;
  if (((select(0i, 1i, x_130) * -1i) != 0i)) {
    discard;
  }
  let x_141 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb42 = (x_141 == 0.0f);
  let x_145 : vec3<f32> = vs_TEXCOORD1;
  let x_150 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat3 = (-(x_145) + x_150);
  let x_153 : vec3<f32> = u_xlat3;
  let x_154 : vec3<f32> = u_xlat3;
  u_xlat44 = dot(x_153, x_154);
  let x_156 : f32 = u_xlat44;
  u_xlat44 = inverseSqrt(x_156);
  let x_158 : f32 = u_xlat44;
  let x_160 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_158, x_158, x_158) * x_160);
  let x_163 : bool = u_xlatb42;
  if (x_163) {
    let x_168 : f32 = u_xlat3.x;
    x_164 = x_168;
  } else {
    let x_172 : f32 = x_44.unity_MatrixV[0i].z;
    x_164 = x_172;
  }
  let x_173 : f32 = x_164;
  u_xlat4.x = x_173;
  let x_175 : bool = u_xlatb42;
  if (x_175) {
    let x_181 : f32 = u_xlat3.y;
    x_176 = x_181;
  } else {
    let x_184 : f32 = x_44.unity_MatrixV[1i].z;
    x_176 = x_184;
  }
  let x_185 : f32 = x_176;
  u_xlat4.y = x_185;
  let x_187 : bool = u_xlatb42;
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
  u_xlat42 = dot(x_199, x_200);
  let x_202 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_202);
  let x_204 : f32 = u_xlat42;
  let x_206 : vec3<f32> = vs_TEXCOORD2;
  u_xlat3 = (vec3<f32>(x_204, x_204, x_204) * x_206);
  let x_215 : vec2<f32> = vs_TEXCOORD8;
  let x_217 : f32 = x_44.x_GlobalMipBias.x;
  let x_218 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_215, x_217);
  u_xlat5 = x_218;
  let x_224 : vec2<f32> = vs_TEXCOORD8;
  let x_226 : f32 = x_44.x_GlobalMipBias.x;
  let x_227 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_224, x_226);
  u_xlat6 = vec3<f32>(x_227.x, x_227.y, x_227.z);
  let x_229 : vec4<f32> = u_xlat5;
  let x_233 : vec3<f32> = (vec3<f32>(x_229.x, x_229.y, x_229.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_234 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_233.x, x_233.y, x_233.z, x_234.w);
  let x_236 : vec3<f32> = u_xlat3;
  let x_237 : vec4<f32> = u_xlat5;
  u_xlat42 = dot(x_236, vec3<f32>(x_237.x, x_237.y, x_237.z));
  let x_240 : f32 = u_xlat42;
  u_xlat42 = (x_240 + 0.5f);
  let x_243 : f32 = u_xlat42;
  let x_245 : vec3<f32> = u_xlat6;
  let x_246 : vec3<f32> = (vec3<f32>(x_243, x_243, x_243) * x_245);
  let x_247 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_246.x, x_246.y, x_246.z, x_247.w);
  let x_250 : f32 = u_xlat5.w;
  u_xlat42 = max(x_250, 0.0001f);
  let x_253 : vec4<f32> = u_xlat5;
  let x_255 : f32 = u_xlat42;
  let x_257 : vec3<f32> = (vec3<f32>(x_253.x, x_253.y, x_253.z) / vec3<f32>(x_255, x_255, x_255));
  let x_258 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_257.x, x_257.y, x_257.z, x_258.w);
  let x_262 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_263 : vec2<f32> = vec2<f32>(x_262.x, x_262.y);
  let x_267 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_263.x, x_263.y));
  let x_268 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_267.x, x_267.y, x_268.z);
  let x_270 : vec3<f32> = u_xlat6;
  let x_272 : vec4<f32> = hlslcc_FragCoord;
  let x_274 : vec2<f32> = (vec2<f32>(x_270.x, x_270.y) * vec2<f32>(x_272.x, x_272.y));
  let x_275 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_274.x, x_274.y, x_275.z);
  let x_278 : f32 = u_xlat6.y;
  let x_281 : f32 = x_44.x_ScaleBiasRt.x;
  let x_284 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat42 = ((x_278 * x_281) + x_284);
  let x_286 : f32 = u_xlat42;
  u_xlat6.z = (-(x_286) + 1.0f);
  let x_291 : f32 = x_57.x_Metallic;
  u_xlat42 = ((-(x_291) * 0.959999979f) + 0.959999979f);
  let x_296 : f32 = u_xlat42;
  let x_299 : f32 = x_57.x_Smoothness;
  u_xlat44 = (-(x_296) + x_299);
  let x_302 : f32 = u_xlat42;
  let x_304 : vec4<f32> = u_xlat1;
  u_xlat15 = (vec3<f32>(x_302, x_302, x_302) * vec3<f32>(x_304.y, x_304.z, x_304.w));
  let x_307 : vec4<f32> = u_xlat0;
  let x_310 : vec4<f32> = x_57.x_BaseColor;
  let x_315 : vec3<f32> = ((vec3<f32>(x_307.x, x_307.y, x_307.z) * vec3<f32>(x_310.x, x_310.y, x_310.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_316 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_315.x, x_315.y, x_315.z, x_316.w);
  let x_319 : f32 = x_57.x_Metallic;
  let x_321 : f32 = x_57.x_Metallic;
  let x_323 : f32 = x_57.x_Metallic;
  let x_324 : vec3<f32> = vec3<f32>(x_319, x_321, x_323);
  let x_329 : vec4<f32> = u_xlat0;
  let x_334 : vec3<f32> = ((vec3<f32>(x_324.x, x_324.y, x_324.z) * vec3<f32>(x_329.x, x_329.y, x_329.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_335 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_338 : f32 = x_57.x_Smoothness;
  u_xlat42 = (-(x_338) + 1.0f);
  let x_342 : f32 = u_xlat42;
  let x_343 : f32 = u_xlat42;
  u_xlat45 = (x_342 * x_343);
  let x_345 : f32 = u_xlat45;
  u_xlat45 = max(x_345, 0.0078125f);
  let x_349 : f32 = u_xlat45;
  let x_350 : f32 = u_xlat45;
  u_xlat46 = (x_349 * x_350);
  let x_352 : f32 = u_xlat44;
  u_xlat44 = (x_352 + 1.0f);
  let x_354 : f32 = u_xlat44;
  u_xlat44 = clamp(x_354, 0.0f, 1.0f);
  let x_357 : f32 = u_xlat45;
  u_xlat47 = ((x_357 * 4.0f) + 2.0f);
  let x_367 : vec3<f32> = u_xlat6;
  let x_370 : f32 = x_44.x_GlobalMipBias.x;
  let x_371 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_367.x, x_367.z), x_370);
  u_xlat6.x = x_371.x;
  let x_376 : f32 = u_xlat6.x;
  u_xlat20 = (x_376 + -1.0f);
  let x_381 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_382 : f32 = u_xlat20;
  u_xlat20 = ((x_381 * x_382) + 1.0f);
  let x_386 : f32 = u_xlat6.x;
  u_xlat6.x = min(x_386, 1.0f);
  let x_391 : vec4<f32> = vs_TEXCOORD6;
  let x_392 : vec2<f32> = vec2<f32>(x_391.x, x_391.y);
  let x_394 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_392.x, x_392.y, x_394);
  let x_407 : vec3<f32> = txVec0;
  let x_409 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_407.xy, x_407.z);
  u_xlat34 = x_409;
  let x_417 : f32 = x_415.x_MainLightShadowParams.x;
  u_xlat48 = (-(x_417) + 1.0f);
  let x_420 : f32 = u_xlat34;
  let x_422 : f32 = x_415.x_MainLightShadowParams.x;
  let x_424 : f32 = u_xlat48;
  u_xlat34 = ((x_420 * x_422) + x_424);
  let x_428 : f32 = vs_TEXCOORD6.z;
  u_xlatb48 = (0.0f >= x_428);
  let x_432 : f32 = vs_TEXCOORD6.z;
  u_xlatb7 = (x_432 >= 1.0f);
  let x_434 : bool = u_xlatb48;
  let x_435 : bool = u_xlatb7;
  u_xlatb48 = (x_434 | x_435);
  let x_437 : bool = u_xlatb48;
  let x_438 : f32 = u_xlat34;
  u_xlat34 = select(x_438, 1.0f, x_437);
  let x_441 : vec3<f32> = vs_TEXCOORD1;
  let x_443 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_445 : vec3<f32> = (x_441 + -(x_443));
  let x_446 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_445.x, x_445.y, x_445.z, x_446.w);
  let x_448 : vec4<f32> = u_xlat7;
  let x_450 : vec4<f32> = u_xlat7;
  u_xlat48 = dot(vec3<f32>(x_448.x, x_448.y, x_448.z), vec3<f32>(x_450.x, x_450.y, x_450.z));
  let x_453 : f32 = u_xlat48;
  let x_455 : f32 = x_415.x_MainLightShadowParams.z;
  let x_458 : f32 = x_415.x_MainLightShadowParams.w;
  u_xlat48 = ((x_453 * x_455) + x_458);
  let x_460 : f32 = u_xlat48;
  u_xlat48 = clamp(x_460, 0.0f, 1.0f);
  let x_462 : f32 = u_xlat34;
  u_xlat7.x = (-(x_462) + 1.0f);
  let x_466 : f32 = u_xlat48;
  let x_468 : f32 = u_xlat7.x;
  let x_470 : f32 = u_xlat34;
  u_xlat34 = ((x_466 * x_468) + x_470);
  let x_478 : f32 = x_476.x_MainLightCookieTextureFormat;
  u_xlatb48 = !((x_478 == -1.0f));
  let x_480 : bool = u_xlatb48;
  if (x_480) {
    let x_483 : vec3<f32> = vs_TEXCOORD1;
    let x_486 : vec4<f32> = x_476.x_MainLightWorldToLight[1i];
    let x_488 : vec2<f32> = (vec2<f32>(x_483.y, x_483.y) * vec2<f32>(x_486.x, x_486.y));
    let x_489 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_488.x, x_488.y, x_489.z, x_489.w);
    let x_492 : vec4<f32> = x_476.x_MainLightWorldToLight[0i];
    let x_494 : vec3<f32> = vs_TEXCOORD1;
    let x_497 : vec4<f32> = u_xlat7;
    let x_499 : vec2<f32> = ((vec2<f32>(x_492.x, x_492.y) * vec2<f32>(x_494.x, x_494.x)) + vec2<f32>(x_497.x, x_497.y));
    let x_500 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_499.x, x_499.y, x_500.z, x_500.w);
    let x_503 : vec4<f32> = x_476.x_MainLightWorldToLight[2i];
    let x_505 : vec3<f32> = vs_TEXCOORD1;
    let x_508 : vec4<f32> = u_xlat7;
    let x_510 : vec2<f32> = ((vec2<f32>(x_503.x, x_503.y) * vec2<f32>(x_505.z, x_505.z)) + vec2<f32>(x_508.x, x_508.y));
    let x_511 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_510.x, x_510.y, x_511.z, x_511.w);
    let x_513 : vec4<f32> = u_xlat7;
    let x_517 : vec4<f32> = x_476.x_MainLightWorldToLight[3i];
    let x_519 : vec2<f32> = (vec2<f32>(x_513.x, x_513.y) + vec2<f32>(x_517.x, x_517.y));
    let x_520 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_519.x, x_519.y, x_520.z, x_520.w);
    let x_522 : vec4<f32> = u_xlat7;
    let x_526 : vec2<f32> = ((vec2<f32>(x_522.x, x_522.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_527 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_526.x, x_526.y, x_527.z, x_527.w);
    let x_534 : vec4<f32> = u_xlat7;
    let x_537 : f32 = x_44.x_GlobalMipBias.x;
    let x_538 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_534.x, x_534.y), x_537);
    u_xlat7 = x_538;
    let x_543 : f32 = x_476.x_MainLightCookieTextureFormat;
    let x_545 : f32 = x_476.x_MainLightCookieTextureFormat;
    let x_547 : f32 = x_476.x_MainLightCookieTextureFormat;
    let x_549 : f32 = x_476.x_MainLightCookieTextureFormat;
    let x_550 : vec4<f32> = vec4<f32>(x_543, x_545, x_547, x_549);
    let x_558 : vec4<bool> = (vec4<f32>(x_550.x, x_550.y, x_550.z, x_550.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb8 = vec2<bool>(x_558.x, x_558.y);
    let x_561 : bool = u_xlatb8.y;
    if (x_561) {
      let x_566 : f32 = u_xlat7.w;
      x_562 = x_566;
    } else {
      let x_569 : f32 = u_xlat7.x;
      x_562 = x_569;
    }
    let x_570 : f32 = x_562;
    u_xlat48 = x_570;
    let x_572 : bool = u_xlatb8.x;
    if (x_572) {
      let x_576 : vec4<f32> = u_xlat7;
      x_573 = vec3<f32>(x_576.x, x_576.y, x_576.z);
    } else {
      let x_579 : f32 = u_xlat48;
      x_573 = vec3<f32>(x_579, x_579, x_579);
    }
    let x_581 : vec3<f32> = x_573;
    let x_582 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_581.x, x_581.y, x_581.z, x_582.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_588 : vec4<f32> = u_xlat7;
  let x_591 : vec4<f32> = x_44.x_MainLightColor;
  let x_593 : vec3<f32> = (vec3<f32>(x_588.x, x_588.y, x_588.z) * vec3<f32>(x_591.x, x_591.y, x_591.z));
  let x_594 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_593.x, x_593.y, x_593.z, x_594.w);
  let x_596 : f32 = u_xlat20;
  let x_598 : vec4<f32> = u_xlat7;
  let x_600 : vec3<f32> = (vec3<f32>(x_596, x_596, x_596) * vec3<f32>(x_598.x, x_598.y, x_598.z));
  let x_601 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_600.x, x_600.y, x_600.z, x_601.w);
  let x_603 : vec3<f32> = u_xlat4;
  let x_605 : vec3<f32> = u_xlat3;
  u_xlat48 = dot(-(x_603), x_605);
  let x_607 : f32 = u_xlat48;
  let x_608 : f32 = u_xlat48;
  u_xlat48 = (x_607 + x_608);
  let x_611 : vec3<f32> = u_xlat3;
  let x_612 : f32 = u_xlat48;
  let x_616 : vec3<f32> = u_xlat4;
  let x_618 : vec3<f32> = ((x_611 * -(vec3<f32>(x_612, x_612, x_612))) + -(x_616));
  let x_619 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_618.x, x_618.y, x_618.z, x_619.w);
  let x_621 : vec3<f32> = u_xlat3;
  let x_622 : vec3<f32> = u_xlat4;
  u_xlat48 = dot(x_621, x_622);
  let x_624 : f32 = u_xlat48;
  u_xlat48 = clamp(x_624, 0.0f, 1.0f);
  let x_626 : f32 = u_xlat48;
  u_xlat48 = (-(x_626) + 1.0f);
  let x_629 : f32 = u_xlat48;
  let x_630 : f32 = u_xlat48;
  u_xlat48 = (x_629 * x_630);
  let x_632 : f32 = u_xlat48;
  let x_633 : f32 = u_xlat48;
  u_xlat48 = (x_632 * x_633);
  let x_636 : f32 = u_xlat42;
  u_xlat49 = ((-(x_636) * 0.699999988f) + 1.700000048f);
  let x_642 : f32 = u_xlat42;
  let x_643 : f32 = u_xlat49;
  u_xlat42 = (x_642 * x_643);
  let x_645 : f32 = u_xlat42;
  u_xlat42 = (x_645 * 6.0f);
  let x_656 : vec4<f32> = u_xlat8;
  let x_658 : f32 = u_xlat42;
  let x_659 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_656.x, x_656.y, x_656.z), x_658);
  u_xlat8 = x_659;
  let x_661 : f32 = u_xlat8.w;
  u_xlat42 = (x_661 + -1.0f);
  let x_664 : f32 = x_106.unity_SpecCube0_HDR.w;
  let x_665 : f32 = u_xlat42;
  u_xlat42 = ((x_664 * x_665) + 1.0f);
  let x_668 : f32 = u_xlat42;
  u_xlat42 = max(x_668, 0.0f);
  let x_670 : f32 = u_xlat42;
  u_xlat42 = log2(x_670);
  let x_672 : f32 = u_xlat42;
  let x_674 : f32 = x_106.unity_SpecCube0_HDR.y;
  u_xlat42 = (x_672 * x_674);
  let x_676 : f32 = u_xlat42;
  u_xlat42 = exp2(x_676);
  let x_678 : f32 = u_xlat42;
  let x_680 : f32 = x_106.unity_SpecCube0_HDR.x;
  u_xlat42 = (x_678 * x_680);
  let x_682 : vec4<f32> = u_xlat8;
  let x_684 : f32 = u_xlat42;
  let x_686 : vec3<f32> = (vec3<f32>(x_682.x, x_682.y, x_682.z) * vec3<f32>(x_684, x_684, x_684));
  let x_687 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_686.x, x_686.y, x_686.z, x_687.w);
  let x_691 : f32 = u_xlat45;
  let x_693 : f32 = u_xlat45;
  u_xlat9 = ((vec2<f32>(x_691, x_691) * vec2<f32>(x_693, x_693)) + vec2<f32>(-1.0f, 1.0f));
  let x_699 : f32 = u_xlat9.y;
  u_xlat42 = (1.0f / x_699);
  let x_702 : vec4<f32> = u_xlat0;
  let x_705 : f32 = u_xlat44;
  u_xlat23 = (-(vec3<f32>(x_702.x, x_702.y, x_702.z)) + vec3<f32>(x_705, x_705, x_705));
  let x_708 : f32 = u_xlat48;
  let x_710 : vec3<f32> = u_xlat23;
  let x_712 : vec4<f32> = u_xlat0;
  u_xlat23 = ((vec3<f32>(x_708, x_708, x_708) * x_710) + vec3<f32>(x_712.x, x_712.y, x_712.z));
  let x_715 : f32 = u_xlat42;
  let x_717 : vec3<f32> = u_xlat23;
  u_xlat23 = (vec3<f32>(x_715, x_715, x_715) * x_717);
  let x_719 : vec4<f32> = u_xlat8;
  let x_721 : vec3<f32> = u_xlat23;
  let x_722 : vec3<f32> = (vec3<f32>(x_719.x, x_719.y, x_719.z) * x_721);
  let x_723 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_722.x, x_722.y, x_722.z, x_723.w);
  let x_725 : vec4<f32> = u_xlat5;
  let x_727 : vec3<f32> = u_xlat15;
  let x_729 : vec4<f32> = u_xlat8;
  let x_731 : vec3<f32> = ((vec3<f32>(x_725.x, x_725.y, x_725.z) * x_727) + vec3<f32>(x_729.x, x_729.y, x_729.z));
  let x_732 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_731.x, x_731.y, x_731.z, x_732.w);
  let x_734 : f32 = u_xlat34;
  let x_737 : f32 = x_106.unity_LightData.z;
  u_xlat42 = (x_734 * x_737);
  let x_739 : vec3<f32> = u_xlat3;
  let x_741 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat44 = dot(x_739, vec3<f32>(x_741.x, x_741.y, x_741.z));
  let x_744 : f32 = u_xlat44;
  u_xlat44 = clamp(x_744, 0.0f, 1.0f);
  let x_746 : f32 = u_xlat42;
  let x_747 : f32 = u_xlat44;
  u_xlat42 = (x_746 * x_747);
  let x_749 : f32 = u_xlat42;
  let x_751 : vec4<f32> = u_xlat7;
  let x_753 : vec3<f32> = (vec3<f32>(x_749, x_749, x_749) * vec3<f32>(x_751.x, x_751.y, x_751.z));
  let x_754 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_753.x, x_753.y, x_753.z, x_754.w);
  let x_756 : vec3<f32> = u_xlat4;
  let x_758 : vec4<f32> = x_44.x_MainLightPosition;
  let x_760 : vec3<f32> = (x_756 + vec3<f32>(x_758.x, x_758.y, x_758.z));
  let x_761 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_760.x, x_760.y, x_760.z, x_761.w);
  let x_763 : vec4<f32> = u_xlat8;
  let x_765 : vec4<f32> = u_xlat8;
  u_xlat42 = dot(vec3<f32>(x_763.x, x_763.y, x_763.z), vec3<f32>(x_765.x, x_765.y, x_765.z));
  let x_768 : f32 = u_xlat42;
  u_xlat42 = max(x_768, 1.17549435e-37f);
  let x_771 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_771);
  let x_773 : f32 = u_xlat42;
  let x_775 : vec4<f32> = u_xlat8;
  let x_777 : vec3<f32> = (vec3<f32>(x_773, x_773, x_773) * vec3<f32>(x_775.x, x_775.y, x_775.z));
  let x_778 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_777.x, x_777.y, x_777.z, x_778.w);
  let x_780 : vec3<f32> = u_xlat3;
  let x_781 : vec4<f32> = u_xlat8;
  u_xlat42 = dot(x_780, vec3<f32>(x_781.x, x_781.y, x_781.z));
  let x_784 : f32 = u_xlat42;
  u_xlat42 = clamp(x_784, 0.0f, 1.0f);
  let x_787 : vec4<f32> = x_44.x_MainLightPosition;
  let x_789 : vec4<f32> = u_xlat8;
  u_xlat44 = dot(vec3<f32>(x_787.x, x_787.y, x_787.z), vec3<f32>(x_789.x, x_789.y, x_789.z));
  let x_792 : f32 = u_xlat44;
  u_xlat44 = clamp(x_792, 0.0f, 1.0f);
  let x_794 : f32 = u_xlat42;
  let x_795 : f32 = u_xlat42;
  u_xlat42 = (x_794 * x_795);
  let x_797 : f32 = u_xlat42;
  let x_799 : f32 = u_xlat9.x;
  u_xlat42 = ((x_797 * x_799) + 1.000010014f);
  let x_803 : f32 = u_xlat44;
  let x_804 : f32 = u_xlat44;
  u_xlat44 = (x_803 * x_804);
  let x_806 : f32 = u_xlat42;
  let x_807 : f32 = u_xlat42;
  u_xlat42 = (x_806 * x_807);
  let x_809 : f32 = u_xlat44;
  u_xlat44 = max(x_809, 0.100000001f);
  let x_812 : f32 = u_xlat42;
  let x_813 : f32 = u_xlat44;
  u_xlat42 = (x_812 * x_813);
  let x_815 : f32 = u_xlat47;
  let x_816 : f32 = u_xlat42;
  u_xlat42 = (x_815 * x_816);
  let x_818 : f32 = u_xlat46;
  let x_819 : f32 = u_xlat42;
  u_xlat42 = (x_818 / x_819);
  let x_821 : vec4<f32> = u_xlat0;
  let x_823 : f32 = u_xlat42;
  let x_826 : vec3<f32> = u_xlat15;
  let x_827 : vec3<f32> = ((vec3<f32>(x_821.x, x_821.y, x_821.z) * vec3<f32>(x_823, x_823, x_823)) + x_826);
  let x_828 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_827.x, x_827.y, x_827.z, x_828.w);
  let x_830 : vec4<f32> = u_xlat7;
  let x_832 : vec4<f32> = u_xlat8;
  let x_834 : vec3<f32> = (vec3<f32>(x_830.x, x_830.y, x_830.z) * vec3<f32>(x_832.x, x_832.y, x_832.z));
  let x_835 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_834.x, x_834.y, x_834.z, x_835.w);
  let x_838 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_840 : f32 = x_106.unity_LightData.y;
  u_xlat42 = min(x_838, x_840);
  let x_844 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_844));
  let x_849 : f32 = x_476.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_851 : f32 = x_476.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_853 : f32 = x_476.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_855 : f32 = x_476.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_856 : vec4<f32> = vec4<f32>(x_849, x_851, x_853, x_855);
  let x_863 : vec4<bool> = (vec4<f32>(x_856.x, x_856.y, x_856.z, x_856.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
  u_xlatb34 = vec2<bool>(x_863.x, x_863.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_874 : u32 = u_xlatu_loop_1;
    let x_875 : u32 = u_xlatu42;
    if ((x_874 < x_875)) {
    } else {
      break;
    }
    let x_878 : u32 = u_xlatu_loop_1;
    u_xlatu45 = (x_878 >> 2u);
    let x_882 : u32 = u_xlatu_loop_1;
    u_xlati49 = bitcast<i32>((x_882 & 3u));
    let x_885 : u32 = u_xlatu45;
    let x_888 : vec4<f32> = x_106.unity_LightIndices[bitcast<i32>(x_885)];
    let x_898 : i32 = u_xlati49;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_903 : vec4<u32> = indexable[x_898];
    u_xlat45 = dot(x_888, bitcast<vec4<f32>>(x_903));
    let x_906 : f32 = u_xlat45;
    u_xlatu45 = bitcast<u32>(i32(x_906));
    let x_909 : vec3<f32> = vs_TEXCOORD1;
    let x_921 : u32 = u_xlatu45;
    let x_924 : vec4<f32> = x_920.x_AdditionalLightsPosition[bitcast<i32>(x_921)];
    let x_927 : u32 = u_xlatu45;
    let x_930 : vec4<f32> = x_920.x_AdditionalLightsPosition[bitcast<i32>(x_927)];
    u_xlat23 = ((-(x_909) * vec3<f32>(x_924.w, x_924.w, x_924.w)) + vec3<f32>(x_930.x, x_930.y, x_930.z));
    let x_933 : vec3<f32> = u_xlat23;
    let x_934 : vec3<f32> = u_xlat23;
    u_xlat49 = dot(x_933, x_934);
    let x_936 : f32 = u_xlat49;
    u_xlat49 = max(x_936, 6.10351562e-05f);
    let x_940 : f32 = u_xlat49;
    u_xlat50 = inverseSqrt(x_940);
    let x_943 : f32 = u_xlat50;
    let x_945 : vec3<f32> = u_xlat23;
    u_xlat10 = (vec3<f32>(x_943, x_943, x_943) * x_945);
    let x_948 : f32 = u_xlat49;
    u_xlat52 = (1.0f / x_948);
    let x_950 : f32 = u_xlat49;
    let x_951 : u32 = u_xlatu45;
    let x_954 : f32 = x_920.x_AdditionalLightsAttenuation[bitcast<i32>(x_951)].x;
    u_xlat49 = (x_950 * x_954);
    let x_956 : f32 = u_xlat49;
    let x_958 : f32 = u_xlat49;
    u_xlat49 = ((-(x_956) * x_958) + 1.0f);
    let x_961 : f32 = u_xlat49;
    u_xlat49 = max(x_961, 0.0f);
    let x_963 : f32 = u_xlat49;
    let x_964 : f32 = u_xlat49;
    u_xlat49 = (x_963 * x_964);
    let x_966 : f32 = u_xlat49;
    let x_967 : f32 = u_xlat52;
    u_xlat49 = (x_966 * x_967);
    let x_969 : u32 = u_xlatu45;
    let x_972 : vec4<f32> = x_920.x_AdditionalLightsSpotDir[bitcast<i32>(x_969)];
    let x_974 : vec3<f32> = u_xlat10;
    u_xlat52 = dot(vec3<f32>(x_972.x, x_972.y, x_972.z), x_974);
    let x_976 : f32 = u_xlat52;
    let x_977 : u32 = u_xlatu45;
    let x_980 : f32 = x_920.x_AdditionalLightsAttenuation[bitcast<i32>(x_977)].z;
    let x_982 : u32 = u_xlatu45;
    let x_985 : f32 = x_920.x_AdditionalLightsAttenuation[bitcast<i32>(x_982)].w;
    u_xlat52 = ((x_976 * x_980) + x_985);
    let x_987 : f32 = u_xlat52;
    u_xlat52 = clamp(x_987, 0.0f, 1.0f);
    let x_989 : f32 = u_xlat52;
    let x_990 : f32 = u_xlat52;
    u_xlat52 = (x_989 * x_990);
    let x_992 : f32 = u_xlat49;
    let x_993 : f32 = u_xlat52;
    u_xlat49 = (x_992 * x_993);
    let x_996 : u32 = u_xlatu45;
    u_xlatu52 = (x_996 >> 5u);
    let x_999 : u32 = u_xlatu45;
    u_xlati11 = (1i << bitcast<u32>((bitcast<i32>(x_999) & 31i)));
    let x_1005 : i32 = u_xlati11;
    let x_1007 : u32 = u_xlatu52;
    let x_1010 : f32 = x_476.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1007)].el;
    u_xlati52 = bitcast<i32>((bitcast<u32>(x_1005) & bitcast<u32>(x_1010)));
    let x_1014 : i32 = u_xlati52;
    if ((x_1014 != 0i)) {
      let x_1024 : u32 = u_xlatu45;
      let x_1027 : f32 = x_1023.x_AdditionalLightsLightTypes[bitcast<i32>(x_1024)].el;
      u_xlati52 = i32(x_1027);
      let x_1029 : i32 = u_xlati52;
      u_xlati11 = select(1i, 0i, (x_1029 != 0i));
      let x_1033 : u32 = u_xlatu45;
      u_xlati25 = (bitcast<i32>(x_1033) << bitcast<u32>(2i));
      let x_1036 : i32 = u_xlati11;
      if ((x_1036 != 0i)) {
        let x_1041 : vec3<f32> = vs_TEXCOORD1;
        let x_1043 : i32 = u_xlati25;
        let x_1046 : i32 = u_xlati25;
        let x_1050 : vec4<f32> = x_1023.x_AdditionalLightsWorldToLights[((x_1043 + 1i) / 4i)][((x_1046 + 1i) % 4i)];
        let x_1052 : vec3<f32> = (vec3<f32>(x_1041.y, x_1041.y, x_1041.y) * vec3<f32>(x_1050.x, x_1050.y, x_1050.w));
        let x_1053 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1052.x, x_1053.y, x_1052.y, x_1052.z);
        let x_1055 : i32 = u_xlati25;
        let x_1057 : i32 = u_xlati25;
        let x_1060 : vec4<f32> = x_1023.x_AdditionalLightsWorldToLights[(x_1055 / 4i)][(x_1057 % 4i)];
        let x_1062 : vec3<f32> = vs_TEXCOORD1;
        let x_1065 : vec4<f32> = u_xlat11;
        let x_1067 : vec3<f32> = ((vec3<f32>(x_1060.x, x_1060.y, x_1060.w) * vec3<f32>(x_1062.x, x_1062.x, x_1062.x)) + vec3<f32>(x_1065.x, x_1065.z, x_1065.w));
        let x_1068 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1067.x, x_1068.y, x_1067.y, x_1067.z);
        let x_1070 : i32 = u_xlati25;
        let x_1073 : i32 = u_xlati25;
        let x_1077 : vec4<f32> = x_1023.x_AdditionalLightsWorldToLights[((x_1070 + 2i) / 4i)][((x_1073 + 2i) % 4i)];
        let x_1079 : vec3<f32> = vs_TEXCOORD1;
        let x_1082 : vec4<f32> = u_xlat11;
        let x_1084 : vec3<f32> = ((vec3<f32>(x_1077.x, x_1077.y, x_1077.w) * vec3<f32>(x_1079.z, x_1079.z, x_1079.z)) + vec3<f32>(x_1082.x, x_1082.z, x_1082.w));
        let x_1085 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1084.x, x_1085.y, x_1084.y, x_1084.z);
        let x_1087 : vec4<f32> = u_xlat11;
        let x_1089 : i32 = u_xlati25;
        let x_1092 : i32 = u_xlati25;
        let x_1096 : vec4<f32> = x_1023.x_AdditionalLightsWorldToLights[((x_1089 + 3i) / 4i)][((x_1092 + 3i) % 4i)];
        let x_1098 : vec3<f32> = (vec3<f32>(x_1087.x, x_1087.z, x_1087.w) + vec3<f32>(x_1096.x, x_1096.y, x_1096.w));
        let x_1099 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1098.x, x_1099.y, x_1098.y, x_1098.z);
        let x_1101 : vec4<f32> = u_xlat11;
        let x_1103 : vec4<f32> = u_xlat11;
        let x_1105 : vec2<f32> = (vec2<f32>(x_1101.x, x_1101.z) / vec2<f32>(x_1103.w, x_1103.w));
        let x_1106 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1105.x, x_1106.y, x_1105.y, x_1106.w);
        let x_1108 : vec4<f32> = u_xlat11;
        let x_1111 : vec2<f32> = ((vec2<f32>(x_1108.x, x_1108.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1112 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1111.x, x_1112.y, x_1111.y, x_1112.w);
        let x_1114 : vec4<f32> = u_xlat11;
        let x_1118 : vec2<f32> = clamp(vec2<f32>(x_1114.x, x_1114.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1119 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1118.x, x_1119.y, x_1118.y, x_1119.w);
        let x_1121 : u32 = u_xlatu45;
        let x_1124 : vec4<f32> = x_1023.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1121)];
        let x_1126 : vec4<f32> = u_xlat11;
        let x_1129 : u32 = u_xlatu45;
        let x_1132 : vec4<f32> = x_1023.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1129)];
        let x_1134 : vec2<f32> = ((vec2<f32>(x_1124.x, x_1124.y) * vec2<f32>(x_1126.x, x_1126.z)) + vec2<f32>(x_1132.z, x_1132.w));
        let x_1135 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1134.x, x_1135.y, x_1134.y, x_1135.w);
      } else {
        let x_1139 : i32 = u_xlati52;
        u_xlatb52 = (x_1139 == 1i);
        let x_1141 : bool = u_xlatb52;
        u_xlati52 = select(0i, 1i, x_1141);
        let x_1143 : i32 = u_xlati52;
        if ((x_1143 != 0i)) {
          let x_1148 : vec3<f32> = vs_TEXCOORD1;
          let x_1150 : i32 = u_xlati25;
          let x_1153 : i32 = u_xlati25;
          let x_1157 : vec4<f32> = x_1023.x_AdditionalLightsWorldToLights[((x_1150 + 1i) / 4i)][((x_1153 + 1i) % 4i)];
          let x_1159 : vec2<f32> = (vec2<f32>(x_1148.y, x_1148.y) * vec2<f32>(x_1157.x, x_1157.y));
          let x_1160 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1159.x, x_1159.y, x_1160.z, x_1160.w);
          let x_1162 : i32 = u_xlati25;
          let x_1164 : i32 = u_xlati25;
          let x_1167 : vec4<f32> = x_1023.x_AdditionalLightsWorldToLights[(x_1162 / 4i)][(x_1164 % 4i)];
          let x_1169 : vec3<f32> = vs_TEXCOORD1;
          let x_1172 : vec4<f32> = u_xlat12;
          let x_1174 : vec2<f32> = ((vec2<f32>(x_1167.x, x_1167.y) * vec2<f32>(x_1169.x, x_1169.x)) + vec2<f32>(x_1172.x, x_1172.y));
          let x_1175 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1174.x, x_1174.y, x_1175.z, x_1175.w);
          let x_1177 : i32 = u_xlati25;
          let x_1180 : i32 = u_xlati25;
          let x_1184 : vec4<f32> = x_1023.x_AdditionalLightsWorldToLights[((x_1177 + 2i) / 4i)][((x_1180 + 2i) % 4i)];
          let x_1186 : vec3<f32> = vs_TEXCOORD1;
          let x_1189 : vec4<f32> = u_xlat12;
          let x_1191 : vec2<f32> = ((vec2<f32>(x_1184.x, x_1184.y) * vec2<f32>(x_1186.z, x_1186.z)) + vec2<f32>(x_1189.x, x_1189.y));
          let x_1192 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1191.x, x_1191.y, x_1192.z, x_1192.w);
          let x_1194 : vec4<f32> = u_xlat12;
          let x_1196 : i32 = u_xlati25;
          let x_1199 : i32 = u_xlati25;
          let x_1203 : vec4<f32> = x_1023.x_AdditionalLightsWorldToLights[((x_1196 + 3i) / 4i)][((x_1199 + 3i) % 4i)];
          let x_1205 : vec2<f32> = (vec2<f32>(x_1194.x, x_1194.y) + vec2<f32>(x_1203.x, x_1203.y));
          let x_1206 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1205.x, x_1205.y, x_1206.z, x_1206.w);
          let x_1208 : vec4<f32> = u_xlat12;
          let x_1211 : vec2<f32> = ((vec2<f32>(x_1208.x, x_1208.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1212 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1211.x, x_1211.y, x_1212.z, x_1212.w);
          let x_1214 : vec4<f32> = u_xlat12;
          let x_1216 : vec2<f32> = fract(vec2<f32>(x_1214.x, x_1214.y));
          let x_1217 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1216.x, x_1216.y, x_1217.z, x_1217.w);
          let x_1219 : u32 = u_xlatu45;
          let x_1222 : vec4<f32> = x_1023.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1219)];
          let x_1224 : vec4<f32> = u_xlat12;
          let x_1227 : u32 = u_xlatu45;
          let x_1230 : vec4<f32> = x_1023.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1227)];
          let x_1232 : vec2<f32> = ((vec2<f32>(x_1222.x, x_1222.y) * vec2<f32>(x_1224.x, x_1224.y)) + vec2<f32>(x_1230.z, x_1230.w));
          let x_1233 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1232.x, x_1233.y, x_1232.y, x_1233.w);
        } else {
          let x_1236 : vec3<f32> = vs_TEXCOORD1;
          let x_1238 : i32 = u_xlati25;
          let x_1241 : i32 = u_xlati25;
          let x_1245 : vec4<f32> = x_1023.x_AdditionalLightsWorldToLights[((x_1238 + 1i) / 4i)][((x_1241 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1236.y, x_1236.y, x_1236.y, x_1236.y) * x_1245);
          let x_1247 : i32 = u_xlati25;
          let x_1249 : i32 = u_xlati25;
          let x_1252 : vec4<f32> = x_1023.x_AdditionalLightsWorldToLights[(x_1247 / 4i)][(x_1249 % 4i)];
          let x_1253 : vec3<f32> = vs_TEXCOORD1;
          let x_1256 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1252 * vec4<f32>(x_1253.x, x_1253.x, x_1253.x, x_1253.x)) + x_1256);
          let x_1258 : i32 = u_xlati25;
          let x_1261 : i32 = u_xlati25;
          let x_1265 : vec4<f32> = x_1023.x_AdditionalLightsWorldToLights[((x_1258 + 2i) / 4i)][((x_1261 + 2i) % 4i)];
          let x_1266 : vec3<f32> = vs_TEXCOORD1;
          let x_1269 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1265 * vec4<f32>(x_1266.z, x_1266.z, x_1266.z, x_1266.z)) + x_1269);
          let x_1271 : vec4<f32> = u_xlat12;
          let x_1272 : i32 = u_xlati25;
          let x_1275 : i32 = u_xlati25;
          let x_1279 : vec4<f32> = x_1023.x_AdditionalLightsWorldToLights[((x_1272 + 3i) / 4i)][((x_1275 + 3i) % 4i)];
          u_xlat12 = (x_1271 + x_1279);
          let x_1281 : vec4<f32> = u_xlat12;
          let x_1283 : vec4<f32> = u_xlat12;
          let x_1285 : vec3<f32> = (vec3<f32>(x_1281.x, x_1281.y, x_1281.z) / vec3<f32>(x_1283.w, x_1283.w, x_1283.w));
          let x_1286 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1285.x, x_1285.y, x_1285.z, x_1286.w);
          let x_1288 : vec4<f32> = u_xlat12;
          let x_1290 : vec4<f32> = u_xlat12;
          u_xlat52 = dot(vec3<f32>(x_1288.x, x_1288.y, x_1288.z), vec3<f32>(x_1290.x, x_1290.y, x_1290.z));
          let x_1293 : f32 = u_xlat52;
          u_xlat52 = inverseSqrt(x_1293);
          let x_1295 : f32 = u_xlat52;
          let x_1297 : vec4<f32> = u_xlat12;
          let x_1299 : vec3<f32> = (vec3<f32>(x_1295, x_1295, x_1295) * vec3<f32>(x_1297.x, x_1297.y, x_1297.z));
          let x_1300 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1299.x, x_1299.y, x_1299.z, x_1300.w);
          let x_1302 : vec4<f32> = u_xlat12;
          u_xlat52 = dot(abs(vec3<f32>(x_1302.x, x_1302.y, x_1302.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1307 : f32 = u_xlat52;
          u_xlat52 = max(x_1307, 0.000001f);
          let x_1310 : f32 = u_xlat52;
          u_xlat52 = (1.0f / x_1310);
          let x_1313 : f32 = u_xlat52;
          let x_1315 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1313, x_1313, x_1313) * vec3<f32>(x_1315.z, x_1315.x, x_1315.y));
          let x_1319 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1319);
          let x_1323 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1323, 0.0f, 1.0f);
          let x_1329 : vec3<f32> = u_xlat13;
          let x_1332 : vec4<bool> = (vec4<f32>(x_1329.y, x_1329.y, x_1329.z, x_1329.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1333 : vec2<bool> = vec2<bool>(x_1332.x, x_1332.z);
          let x_1334 : vec3<bool> = u_xlatb25;
          u_xlatb25 = vec3<bool>(x_1333.x, x_1334.y, x_1333.y);
          let x_1338 : bool = u_xlatb25.x;
          if (x_1338) {
            let x_1343 : f32 = u_xlat13.x;
            x_1339 = x_1343;
          } else {
            let x_1346 : f32 = u_xlat13.x;
            x_1339 = -(x_1346);
          }
          let x_1348 : f32 = x_1339;
          u_xlat25.x = x_1348;
          let x_1351 : bool = u_xlatb25.z;
          if (x_1351) {
            let x_1356 : f32 = u_xlat13.x;
            x_1352 = x_1356;
          } else {
            let x_1359 : f32 = u_xlat13.x;
            x_1352 = -(x_1359);
          }
          let x_1361 : f32 = x_1352;
          u_xlat25.z = x_1361;
          let x_1363 : vec4<f32> = u_xlat12;
          let x_1365 : f32 = u_xlat52;
          let x_1368 : vec3<f32> = u_xlat25;
          let x_1370 : vec2<f32> = ((vec2<f32>(x_1363.x, x_1363.y) * vec2<f32>(x_1365, x_1365)) + vec2<f32>(x_1368.x, x_1368.z));
          let x_1371 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1370.x, x_1371.y, x_1370.y);
          let x_1373 : vec3<f32> = u_xlat25;
          let x_1376 : vec2<f32> = ((vec2<f32>(x_1373.x, x_1373.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1377 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1376.x, x_1377.y, x_1376.y);
          let x_1379 : vec3<f32> = u_xlat25;
          let x_1383 : vec2<f32> = clamp(vec2<f32>(x_1379.x, x_1379.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1384 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1383.x, x_1384.y, x_1383.y);
          let x_1386 : u32 = u_xlatu45;
          let x_1389 : vec4<f32> = x_1023.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1386)];
          let x_1391 : vec3<f32> = u_xlat25;
          let x_1394 : u32 = u_xlatu45;
          let x_1397 : vec4<f32> = x_1023.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1394)];
          let x_1399 : vec2<f32> = ((vec2<f32>(x_1389.x, x_1389.y) * vec2<f32>(x_1391.x, x_1391.z)) + vec2<f32>(x_1397.z, x_1397.w));
          let x_1400 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1399.x, x_1400.y, x_1399.y, x_1400.w);
        }
      }
      let x_1407 : vec4<f32> = u_xlat11;
      let x_1410 : f32 = x_44.x_GlobalMipBias.x;
      let x_1411 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1407.x, x_1407.z), x_1410);
      u_xlat11 = x_1411;
      let x_1413 : bool = u_xlatb34.y;
      if (x_1413) {
        let x_1418 : f32 = u_xlat11.w;
        x_1414 = x_1418;
      } else {
        let x_1421 : f32 = u_xlat11.x;
        x_1414 = x_1421;
      }
      let x_1422 : f32 = x_1414;
      u_xlat52 = x_1422;
      let x_1424 : bool = u_xlatb34.x;
      if (x_1424) {
        let x_1428 : vec4<f32> = u_xlat11;
        x_1425 = vec3<f32>(x_1428.x, x_1428.y, x_1428.z);
      } else {
        let x_1431 : f32 = u_xlat52;
        x_1425 = vec3<f32>(x_1431, x_1431, x_1431);
      }
      let x_1433 : vec3<f32> = x_1425;
      let x_1434 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1433.x, x_1433.y, x_1433.z, x_1434.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1440 : vec4<f32> = u_xlat11;
    let x_1442 : u32 = u_xlatu45;
    let x_1445 : vec4<f32> = x_920.x_AdditionalLightsColor[bitcast<i32>(x_1442)];
    let x_1447 : vec3<f32> = (vec3<f32>(x_1440.x, x_1440.y, x_1440.z) * vec3<f32>(x_1445.x, x_1445.y, x_1445.z));
    let x_1448 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1447.x, x_1447.y, x_1447.z, x_1448.w);
    let x_1450 : f32 = u_xlat20;
    let x_1452 : vec4<f32> = u_xlat11;
    let x_1454 : vec3<f32> = (vec3<f32>(x_1450, x_1450, x_1450) * vec3<f32>(x_1452.x, x_1452.y, x_1452.z));
    let x_1455 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1454.x, x_1454.y, x_1454.z, x_1455.w);
    let x_1457 : vec3<f32> = u_xlat3;
    let x_1458 : vec3<f32> = u_xlat10;
    u_xlat45 = dot(x_1457, x_1458);
    let x_1460 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1460, 0.0f, 1.0f);
    let x_1462 : f32 = u_xlat45;
    let x_1463 : f32 = u_xlat49;
    u_xlat45 = (x_1462 * x_1463);
    let x_1465 : f32 = u_xlat45;
    let x_1467 : vec4<f32> = u_xlat11;
    let x_1469 : vec3<f32> = (vec3<f32>(x_1465, x_1465, x_1465) * vec3<f32>(x_1467.x, x_1467.y, x_1467.z));
    let x_1470 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1469.x, x_1469.y, x_1469.z, x_1470.w);
    let x_1472 : vec3<f32> = u_xlat23;
    let x_1473 : f32 = u_xlat50;
    let x_1476 : vec3<f32> = u_xlat4;
    u_xlat23 = ((x_1472 * vec3<f32>(x_1473, x_1473, x_1473)) + x_1476);
    let x_1478 : vec3<f32> = u_xlat23;
    let x_1479 : vec3<f32> = u_xlat23;
    u_xlat45 = dot(x_1478, x_1479);
    let x_1481 : f32 = u_xlat45;
    u_xlat45 = max(x_1481, 1.17549435e-37f);
    let x_1483 : f32 = u_xlat45;
    u_xlat45 = inverseSqrt(x_1483);
    let x_1485 : f32 = u_xlat45;
    let x_1487 : vec3<f32> = u_xlat23;
    u_xlat23 = (vec3<f32>(x_1485, x_1485, x_1485) * x_1487);
    let x_1489 : vec3<f32> = u_xlat3;
    let x_1490 : vec3<f32> = u_xlat23;
    u_xlat45 = dot(x_1489, x_1490);
    let x_1492 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1492, 0.0f, 1.0f);
    let x_1494 : vec3<f32> = u_xlat10;
    let x_1495 : vec3<f32> = u_xlat23;
    u_xlat49 = dot(x_1494, x_1495);
    let x_1497 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1497, 0.0f, 1.0f);
    let x_1499 : f32 = u_xlat45;
    let x_1500 : f32 = u_xlat45;
    u_xlat45 = (x_1499 * x_1500);
    let x_1502 : f32 = u_xlat45;
    let x_1504 : f32 = u_xlat9.x;
    u_xlat45 = ((x_1502 * x_1504) + 1.000010014f);
    let x_1507 : f32 = u_xlat49;
    let x_1508 : f32 = u_xlat49;
    u_xlat49 = (x_1507 * x_1508);
    let x_1510 : f32 = u_xlat45;
    let x_1511 : f32 = u_xlat45;
    u_xlat45 = (x_1510 * x_1511);
    let x_1513 : f32 = u_xlat49;
    u_xlat49 = max(x_1513, 0.100000001f);
    let x_1515 : f32 = u_xlat45;
    let x_1516 : f32 = u_xlat49;
    u_xlat45 = (x_1515 * x_1516);
    let x_1518 : f32 = u_xlat47;
    let x_1519 : f32 = u_xlat45;
    u_xlat45 = (x_1518 * x_1519);
    let x_1521 : f32 = u_xlat46;
    let x_1522 : f32 = u_xlat45;
    u_xlat45 = (x_1521 / x_1522);
    let x_1524 : vec4<f32> = u_xlat0;
    let x_1526 : f32 = u_xlat45;
    let x_1529 : vec3<f32> = u_xlat15;
    u_xlat23 = ((vec3<f32>(x_1524.x, x_1524.y, x_1524.z) * vec3<f32>(x_1526, x_1526, x_1526)) + x_1529);
    let x_1531 : vec3<f32> = u_xlat23;
    let x_1532 : vec4<f32> = u_xlat11;
    let x_1535 : vec4<f32> = u_xlat8;
    let x_1537 : vec3<f32> = ((x_1531 * vec3<f32>(x_1532.x, x_1532.y, x_1532.z)) + vec3<f32>(x_1535.x, x_1535.y, x_1535.z));
    let x_1538 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1537.x, x_1537.y, x_1537.z, x_1538.w);

    continuing {
      let x_1540 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1540 + bitcast<u32>(1i));
    }
  }
  let x_1542 : vec4<f32> = u_xlat5;
  let x_1544 : vec3<f32> = u_xlat6;
  let x_1547 : vec4<f32> = u_xlat7;
  let x_1549 : vec3<f32> = ((vec3<f32>(x_1542.x, x_1542.y, x_1542.z) * vec3<f32>(x_1544.x, x_1544.x, x_1544.x)) + vec3<f32>(x_1547.x, x_1547.y, x_1547.z));
  let x_1550 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1549.x, x_1549.y, x_1549.z, x_1550.w);
  let x_1552 : vec4<f32> = u_xlat8;
  let x_1554 : vec4<f32> = u_xlat0;
  let x_1556 : vec3<f32> = (vec3<f32>(x_1552.x, x_1552.y, x_1552.z) + vec3<f32>(x_1554.x, x_1554.y, x_1554.z));
  let x_1557 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1556.x, x_1556.y, x_1556.z, x_1557.w);
  let x_1561 : vec3<f32> = u_xlat2;
  let x_1563 : vec4<f32> = x_57.x_EmissionColor;
  let x_1566 : vec4<f32> = u_xlat0;
  let x_1568 : vec3<f32> = ((x_1561 * vec3<f32>(x_1563.x, x_1563.y, x_1563.z)) + vec3<f32>(x_1566.x, x_1566.y, x_1566.z));
  let x_1569 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1568.x, x_1568.y, x_1568.z, x_1569.w);
  let x_1574 : f32 = x_57.x_Surface;
  u_xlatb0 = (x_1574 == 1.0f);
  let x_1576 : bool = u_xlatb0;
  if (x_1576) {
    let x_1581 : f32 = u_xlat1.x;
    x_1577 = x_1581;
  } else {
    x_1577 = 1.0f;
  }
  let x_1583 : f32 = x_1577;
  SV_Target0.w = x_1583;
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

