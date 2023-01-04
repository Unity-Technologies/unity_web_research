struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  x_AlphaToMaskAvailable : f32,
  @size(4)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AmbientOcclusionParam : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_ProjectionParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  x_DitheringTextureInvSize : f32,
}

struct UnityPerMaterial {
  x_BaseMap_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
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

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

@group(0) @binding(2) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_BumpMap : sampler;

@group(0) @binding(7) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_236 : UnityPerDraw;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_468 : MainLightShadows;

@group(1) @binding(5) var<uniform> x_530 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(1) var<uniform> x_836 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_938 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_74 : f32;
  var u_xlat12 : vec3<f32>;
  var u_xlat24 : f32;
  var u_xlat36 : f32;
  var u_xlatb24 : bool;
  var x_131 : f32;
  var u_xlatb12 : bool;
  var u_xlat2 : vec3<f32>;
  var u_xlatb14 : bool;
  var x_241 : f32;
  var u_xlatb2 : bool;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat38 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat39 : f32;
  var u_xlat40 : f32;
  var u_xlatb40 : bool;
  var u_xlatb5 : bool;
  var u_xlatb6 : vec2<bool>;
  var x_615 : f32;
  var x_626 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlatu39 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu41 : u32;
  var u_xlati30 : i32;
  var u_xlat41 : f32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat8 : vec3<f32>;
  var u_xlat30 : f32;
  var u_xlat42 : f32;
  var u_xlatu42 : u32;
  var u_xlati43 : i32;
  var u_xlati42 : i32;
  var u_xlati44 : i32;
  var u_xlat9 : vec4<f32>;
  var u_xlatb42 : bool;
  var u_xlat33 : vec2<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec3<f32>;
  var u_xlatb33 : vec2<bool>;
  var x_1233 : f32;
  var x_1246 : f32;
  var x_1298 : f32;
  var x_1309 : vec3<f32>;
  var x_1466 : f32;
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
  let x_60 : vec4<f32> = x_57.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_53.w, x_53.x, x_53.y, x_53.z) * vec4<f32>(x_60.w, x_60.x, x_60.y, x_60.z));
  let x_68 : f32 = u_xlat1.x;
  let x_71 : f32 = x_57.x_Cutoff;
  u_xlatb0 = (x_68 >= x_71);
  let x_73 : bool = u_xlatb0;
  if (x_73) {
    let x_78 : f32 = u_xlat1.x;
    x_74 = x_78;
  } else {
    x_74 = 0.0f;
  }
  let x_81 : f32 = x_74;
  u_xlat0.x = x_81;
  let x_86 : f32 = u_xlat0.w;
  let x_88 : f32 = x_57.x_BaseColor.w;
  let x_91 : f32 = x_57.x_Cutoff;
  u_xlat12.x = ((x_86 * x_88) + -(x_91));
  let x_97 : f32 = u_xlat1.x;
  u_xlat24 = dpdxCoarse(x_97);
  let x_101 : f32 = u_xlat1.x;
  u_xlat36 = dpdyCoarse(x_101);
  let x_103 : f32 = u_xlat36;
  let x_105 : f32 = u_xlat24;
  u_xlat24 = (abs(x_103) + abs(x_105));
  let x_108 : f32 = u_xlat24;
  u_xlat24 = max(x_108, 0.0001f);
  let x_112 : f32 = u_xlat12.x;
  let x_113 : f32 = u_xlat24;
  u_xlat12.x = (x_112 / x_113);
  let x_117 : f32 = u_xlat12.x;
  u_xlat12.x = (x_117 + 0.5f);
  let x_122 : f32 = u_xlat12.x;
  u_xlat12.x = clamp(x_122, 0.0f, 1.0f);
  let x_128 : f32 = x_44.x_AlphaToMaskAvailable;
  u_xlatb24 = !((x_128 == 0.0f));
  let x_130 : bool = u_xlatb24;
  if (x_130) {
    let x_135 : f32 = u_xlat12.x;
    x_131 = x_135;
  } else {
    let x_138 : f32 = u_xlat0.x;
    x_131 = x_138;
  }
  let x_139 : f32 = x_131;
  u_xlat0.x = x_139;
  let x_142 : f32 = u_xlat0.x;
  u_xlat12.x = (x_142 + -0.0001f);
  let x_148 : f32 = u_xlat12.x;
  u_xlatb12 = (x_148 < 0.0f);
  let x_150 : bool = u_xlatb12;
  if (((select(0i, 1i, x_150) * -1i) != 0i)) {
    discard;
  }
  let x_165 : vec2<f32> = vs_TEXCOORD0;
  let x_167 : f32 = x_44.x_GlobalMipBias.x;
  let x_168 : vec4<f32> = textureSampleBias(x_BumpMap, sampler_BumpMap, x_165, x_167);
  u_xlat2 = vec3<f32>(x_168.x, x_168.y, x_168.w);
  let x_171 : f32 = u_xlat2.x;
  let x_174 : f32 = u_xlat2.z;
  u_xlat2.x = (x_171 * x_174);
  let x_177 : vec3<f32> = u_xlat2;
  let x_184 : vec2<f32> = ((vec2<f32>(x_177.x, x_177.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_185 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_184.x, x_185.y, x_184.y);
  let x_187 : vec3<f32> = u_xlat12;
  let x_189 : vec3<f32> = u_xlat12;
  u_xlat1.x = dot(vec2<f32>(x_187.x, x_187.z), vec2<f32>(x_189.x, x_189.z));
  let x_194 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_194, 1.0f);
  let x_198 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_198) + 1.0f);
  let x_203 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_203);
  let x_207 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_207, 1.00000002e-16f);
  let x_211 : vec4<f32> = hlslcc_FragCoord;
  let x_215 : f32 = x_44.x_DitheringTextureInvSize;
  let x_217 : vec2<f32> = (vec2<f32>(x_211.x, x_211.y) * vec2<f32>(x_215, x_215));
  let x_218 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_217.x, x_217.y, x_218.z);
  let x_225 : vec3<f32> = u_xlat2;
  let x_228 : f32 = x_44.x_GlobalMipBias.x;
  let x_229 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_225.x, x_225.y), x_228);
  u_xlat2.x = x_229.w;
  let x_238 : f32 = x_236.unity_LODFade.x;
  u_xlatb14 = (x_238 >= 0.0f);
  let x_240 : bool = u_xlatb14;
  if (x_240) {
    let x_245 : f32 = u_xlat2.x;
    x_241 = abs(x_245);
  } else {
    let x_249 : f32 = u_xlat2.x;
    x_241 = -(abs(x_249));
  }
  let x_252 : f32 = x_241;
  u_xlat2.x = x_252;
  let x_255 : f32 = u_xlat2.x;
  let x_258 : f32 = x_236.unity_LODFade.x;
  u_xlat2.x = (-(x_255) + x_258);
  let x_263 : f32 = u_xlat2.x;
  u_xlatb2 = (x_263 < 0.0f);
  let x_265 : bool = u_xlatb2;
  if (((select(0i, 1i, x_265) * -1i) != 0i)) {
    discard;
  }
  let x_272 : vec3<f32> = u_xlat12;
  let x_275 : vec4<f32> = vs_TEXCOORD4;
  u_xlat2 = (vec3<f32>(x_272.z, x_272.z, x_272.z) * vec3<f32>(x_275.x, x_275.y, x_275.z));
  let x_278 : vec3<f32> = u_xlat12;
  let x_281 : vec4<f32> = vs_TEXCOORD3;
  let x_284 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_278.x, x_278.x, x_278.x) * vec3<f32>(x_281.x, x_281.y, x_281.z)) + x_284);
  let x_286 : vec4<f32> = u_xlat1;
  let x_289 : vec4<f32> = vs_TEXCOORD2;
  let x_292 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_286.x, x_286.x, x_286.x) * vec3<f32>(x_289.x, x_289.y, x_289.z)) + x_292);
  let x_294 : vec3<f32> = u_xlat2;
  let x_295 : vec3<f32> = u_xlat2;
  u_xlat12.x = dot(x_294, x_295);
  let x_299 : f32 = u_xlat12.x;
  u_xlat12.x = inverseSqrt(x_299);
  let x_302 : vec3<f32> = u_xlat12;
  let x_304 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_302.x, x_302.x, x_302.x) * x_304);
  let x_308 : f32 = vs_TEXCOORD2.w;
  u_xlat3.x = x_308;
  let x_311 : f32 = vs_TEXCOORD3.w;
  u_xlat3.y = x_311;
  let x_315 : f32 = vs_TEXCOORD4.w;
  u_xlat3.z = x_315;
  let x_317 : vec3<f32> = u_xlat3;
  let x_318 : vec3<f32> = u_xlat3;
  u_xlat12.x = dot(x_317, x_318);
  let x_322 : f32 = u_xlat12.x;
  u_xlat12.x = max(x_322, 1.17549435e-37f);
  let x_327 : f32 = u_xlat12.x;
  u_xlat12.x = inverseSqrt(x_327);
  let x_333 : f32 = vs_TEXCOORD1.y;
  let x_336 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat36 = (x_333 * x_336);
  let x_339 : f32 = x_44.unity_MatrixV[0i].z;
  let x_341 : f32 = vs_TEXCOORD1.x;
  let x_343 : f32 = u_xlat36;
  u_xlat36 = ((x_339 * x_341) + x_343);
  let x_346 : f32 = x_44.unity_MatrixV[2i].z;
  let x_348 : f32 = vs_TEXCOORD1.z;
  let x_350 : f32 = u_xlat36;
  u_xlat36 = ((x_346 * x_348) + x_350);
  let x_352 : f32 = u_xlat36;
  let x_355 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat36 = (x_352 + x_355);
  let x_357 : f32 = u_xlat36;
  let x_361 : f32 = x_44.x_ProjectionParams.y;
  u_xlat36 = (-(x_357) + -(x_361));
  let x_364 : f32 = u_xlat36;
  u_xlat36 = max(x_364, 0.0f);
  let x_366 : f32 = u_xlat36;
  let x_369 : f32 = x_44.unity_FogParams.x;
  u_xlat36 = (x_366 * x_369);
  let x_378 : vec2<f32> = vs_TEXCOORD7;
  let x_380 : f32 = x_44.x_GlobalMipBias.x;
  let x_381 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_378, x_380);
  u_xlat4 = vec3<f32>(x_381.x, x_381.y, x_381.z);
  let x_386 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_387 : vec2<f32> = vec2<f32>(x_386.x, x_386.y);
  let x_391 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_387.x, x_387.y));
  let x_392 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_391.x, x_391.y, x_392.z, x_392.w);
  let x_394 : vec4<f32> = u_xlat5;
  let x_396 : vec4<f32> = hlslcc_FragCoord;
  let x_398 : vec2<f32> = (vec2<f32>(x_394.x, x_394.y) * vec2<f32>(x_396.x, x_396.y));
  let x_399 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_398.x, x_398.y, x_399.z, x_399.w);
  let x_402 : f32 = u_xlat5.y;
  let x_405 : f32 = x_44.x_ScaleBiasRt.x;
  let x_408 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat1.x = ((x_402 * x_405) + x_408);
  let x_412 : f32 = u_xlat1.x;
  u_xlat5.z = (-(x_412) + 1.0f);
  let x_421 : vec4<f32> = u_xlat5;
  let x_424 : f32 = x_44.x_GlobalMipBias.x;
  let x_425 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_421.x, x_421.z), x_424);
  u_xlat1.x = x_425.x;
  let x_430 : f32 = u_xlat1.x;
  u_xlat38 = (x_430 + -1.0f);
  let x_434 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_435 : f32 = u_xlat38;
  u_xlat38 = ((x_434 * x_435) + 1.0f);
  let x_439 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_439, 1.0f);
  let x_444 : vec4<f32> = vs_TEXCOORD6;
  let x_445 : vec2<f32> = vec2<f32>(x_444.x, x_444.y);
  let x_447 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_445.x, x_445.y, x_447);
  let x_460 : vec3<f32> = txVec0;
  let x_462 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_460.xy, x_460.z);
  u_xlat39 = x_462;
  let x_470 : f32 = x_468.x_MainLightShadowParams.x;
  u_xlat40 = (-(x_470) + 1.0f);
  let x_473 : f32 = u_xlat39;
  let x_475 : f32 = x_468.x_MainLightShadowParams.x;
  let x_477 : f32 = u_xlat40;
  u_xlat39 = ((x_473 * x_475) + x_477);
  let x_481 : f32 = vs_TEXCOORD6.z;
  u_xlatb40 = (0.0f >= x_481);
  let x_485 : f32 = vs_TEXCOORD6.z;
  u_xlatb5 = (x_485 >= 1.0f);
  let x_487 : bool = u_xlatb40;
  let x_488 : bool = u_xlatb5;
  u_xlatb40 = (x_487 | x_488);
  let x_490 : bool = u_xlatb40;
  let x_491 : f32 = u_xlat39;
  u_xlat39 = select(x_491, 1.0f, x_490);
  let x_493 : vec3<f32> = vs_TEXCOORD1;
  let x_497 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_499 : vec3<f32> = (x_493 + -(x_497));
  let x_500 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_499.x, x_499.y, x_499.z, x_500.w);
  let x_502 : vec4<f32> = u_xlat5;
  let x_504 : vec4<f32> = u_xlat5;
  u_xlat40 = dot(vec3<f32>(x_502.x, x_502.y, x_502.z), vec3<f32>(x_504.x, x_504.y, x_504.z));
  let x_507 : f32 = u_xlat40;
  let x_509 : f32 = x_468.x_MainLightShadowParams.z;
  let x_512 : f32 = x_468.x_MainLightShadowParams.w;
  u_xlat40 = ((x_507 * x_509) + x_512);
  let x_514 : f32 = u_xlat40;
  u_xlat40 = clamp(x_514, 0.0f, 1.0f);
  let x_516 : f32 = u_xlat39;
  u_xlat5.x = (-(x_516) + 1.0f);
  let x_520 : f32 = u_xlat40;
  let x_522 : f32 = u_xlat5.x;
  let x_524 : f32 = u_xlat39;
  u_xlat39 = ((x_520 * x_522) + x_524);
  let x_532 : f32 = x_530.x_MainLightCookieTextureFormat;
  u_xlatb40 = !((x_532 == -1.0f));
  let x_534 : bool = u_xlatb40;
  if (x_534) {
    let x_537 : vec3<f32> = vs_TEXCOORD1;
    let x_540 : vec4<f32> = x_530.x_MainLightWorldToLight[1i];
    let x_542 : vec2<f32> = (vec2<f32>(x_537.y, x_537.y) * vec2<f32>(x_540.x, x_540.y));
    let x_543 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_542.x, x_542.y, x_543.z, x_543.w);
    let x_546 : vec4<f32> = x_530.x_MainLightWorldToLight[0i];
    let x_548 : vec3<f32> = vs_TEXCOORD1;
    let x_551 : vec4<f32> = u_xlat5;
    let x_553 : vec2<f32> = ((vec2<f32>(x_546.x, x_546.y) * vec2<f32>(x_548.x, x_548.x)) + vec2<f32>(x_551.x, x_551.y));
    let x_554 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_553.x, x_553.y, x_554.z, x_554.w);
    let x_557 : vec4<f32> = x_530.x_MainLightWorldToLight[2i];
    let x_559 : vec3<f32> = vs_TEXCOORD1;
    let x_562 : vec4<f32> = u_xlat5;
    let x_564 : vec2<f32> = ((vec2<f32>(x_557.x, x_557.y) * vec2<f32>(x_559.z, x_559.z)) + vec2<f32>(x_562.x, x_562.y));
    let x_565 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_564.x, x_564.y, x_565.z, x_565.w);
    let x_567 : vec4<f32> = u_xlat5;
    let x_570 : vec4<f32> = x_530.x_MainLightWorldToLight[3i];
    let x_572 : vec2<f32> = (vec2<f32>(x_567.x, x_567.y) + vec2<f32>(x_570.x, x_570.y));
    let x_573 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_572.x, x_572.y, x_573.z, x_573.w);
    let x_575 : vec4<f32> = u_xlat5;
    let x_579 : vec2<f32> = ((vec2<f32>(x_575.x, x_575.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_580 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_579.x, x_579.y, x_580.z, x_580.w);
    let x_587 : vec4<f32> = u_xlat5;
    let x_590 : f32 = x_44.x_GlobalMipBias.x;
    let x_591 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_587.x, x_587.y), x_590);
    u_xlat5 = x_591;
    let x_596 : f32 = x_530.x_MainLightCookieTextureFormat;
    let x_598 : f32 = x_530.x_MainLightCookieTextureFormat;
    let x_600 : f32 = x_530.x_MainLightCookieTextureFormat;
    let x_602 : f32 = x_530.x_MainLightCookieTextureFormat;
    let x_603 : vec4<f32> = vec4<f32>(x_596, x_598, x_600, x_602);
    let x_611 : vec4<bool> = (vec4<f32>(x_603.x, x_603.y, x_603.z, x_603.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb6 = vec2<bool>(x_611.x, x_611.y);
    let x_614 : bool = u_xlatb6.y;
    if (x_614) {
      let x_619 : f32 = u_xlat5.w;
      x_615 = x_619;
    } else {
      let x_622 : f32 = u_xlat5.x;
      x_615 = x_622;
    }
    let x_623 : f32 = x_615;
    u_xlat40 = x_623;
    let x_625 : bool = u_xlatb6.x;
    if (x_625) {
      let x_629 : vec4<f32> = u_xlat5;
      x_626 = vec3<f32>(x_629.x, x_629.y, x_629.z);
    } else {
      let x_632 : f32 = u_xlat40;
      x_626 = vec3<f32>(x_632, x_632, x_632);
    }
    let x_634 : vec3<f32> = x_626;
    let x_635 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_634.x, x_634.y, x_634.z, x_635.w);
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
  }
  let x_641 : vec4<f32> = u_xlat5;
  let x_644 : vec4<f32> = x_44.x_MainLightColor;
  let x_646 : vec3<f32> = (vec3<f32>(x_641.x, x_641.y, x_641.z) * vec3<f32>(x_644.x, x_644.y, x_644.z));
  let x_647 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_646.x, x_646.y, x_646.z, x_647.w);
  let x_649 : f32 = u_xlat38;
  let x_651 : vec4<f32> = u_xlat5;
  let x_653 : vec3<f32> = (vec3<f32>(x_649, x_649, x_649) * vec3<f32>(x_651.x, x_651.y, x_651.z));
  let x_654 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_653.x, x_653.y, x_653.z, x_654.w);
  let x_656 : vec4<f32> = u_xlat1;
  let x_658 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_656.x, x_656.x, x_656.x) * x_658);
  let x_660 : f32 = u_xlat39;
  let x_662 : f32 = x_236.unity_LightData.z;
  u_xlat1.x = (x_660 * x_662);
  let x_665 : vec4<f32> = u_xlat1;
  let x_667 : vec4<f32> = u_xlat5;
  let x_669 : vec3<f32> = (vec3<f32>(x_665.x, x_665.x, x_665.x) * vec3<f32>(x_667.x, x_667.y, x_667.z));
  let x_670 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_669.x, x_669.y, x_669.z, x_670.w);
  let x_672 : vec3<f32> = u_xlat2;
  let x_674 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat1.x = dot(x_672, vec3<f32>(x_674.x, x_674.y, x_674.z));
  let x_679 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_679, 0.0f, 1.0f);
  let x_683 : vec4<f32> = u_xlat1;
  let x_685 : vec4<f32> = u_xlat5;
  u_xlat6 = (vec3<f32>(x_683.x, x_683.x, x_683.x) * vec3<f32>(x_685.x, x_685.y, x_685.z));
  let x_689 : f32 = x_57.x_SpecColor.w;
  u_xlat1.x = ((x_689 * 10.0f) + 1.0f);
  let x_695 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_695);
  let x_699 : vec3<f32> = u_xlat3;
  let x_700 : vec3<f32> = u_xlat12;
  let x_704 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat7 = ((x_699 * vec3<f32>(x_700.x, x_700.x, x_700.x)) + vec3<f32>(x_704.x, x_704.y, x_704.z));
  let x_707 : vec3<f32> = u_xlat7;
  let x_708 : vec3<f32> = u_xlat7;
  u_xlat39 = dot(x_707, x_708);
  let x_710 : f32 = u_xlat39;
  u_xlat39 = max(x_710, 1.17549435e-37f);
  let x_712 : f32 = u_xlat39;
  u_xlat39 = inverseSqrt(x_712);
  let x_714 : f32 = u_xlat39;
  let x_716 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_714, x_714, x_714) * x_716);
  let x_718 : vec3<f32> = u_xlat2;
  let x_719 : vec3<f32> = u_xlat7;
  u_xlat39 = dot(x_718, x_719);
  let x_721 : f32 = u_xlat39;
  u_xlat39 = clamp(x_721, 0.0f, 1.0f);
  let x_723 : f32 = u_xlat39;
  u_xlat39 = log2(x_723);
  let x_726 : f32 = u_xlat1.x;
  let x_727 : f32 = u_xlat39;
  u_xlat39 = (x_726 * x_727);
  let x_729 : f32 = u_xlat39;
  u_xlat39 = exp2(x_729);
  let x_731 : f32 = u_xlat39;
  let x_734 : vec4<f32> = x_57.x_SpecColor;
  u_xlat7 = (vec3<f32>(x_731, x_731, x_731) * vec3<f32>(x_734.x, x_734.y, x_734.z));
  let x_737 : vec4<f32> = u_xlat5;
  let x_739 : vec3<f32> = u_xlat7;
  let x_740 : vec3<f32> = (vec3<f32>(x_737.x, x_737.y, x_737.z) * x_739);
  let x_741 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_740.x, x_740.y, x_740.z, x_741.w);
  let x_743 : vec3<f32> = u_xlat6;
  let x_744 : vec4<f32> = u_xlat1;
  let x_747 : vec4<f32> = u_xlat5;
  let x_749 : vec3<f32> = ((x_743 * vec3<f32>(x_744.y, x_744.z, x_744.w)) + vec3<f32>(x_747.x, x_747.y, x_747.z));
  let x_750 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_749.x, x_749.y, x_749.z, x_750.w);
  let x_754 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_756 : f32 = x_236.unity_LightData.y;
  u_xlat39 = min(x_754, x_756);
  let x_760 : f32 = u_xlat39;
  u_xlatu39 = bitcast<u32>(i32(x_760));
  let x_764 : f32 = x_530.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_766 : f32 = x_530.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_768 : f32 = x_530.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_770 : f32 = x_530.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_771 : vec4<f32> = vec4<f32>(x_764, x_766, x_768, x_770);
  let x_777 : vec4<bool> = (vec4<f32>(x_771.x, x_771.y, x_771.z, x_771.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_777.x, x_777.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_788 : u32 = u_xlatu_loop_1;
    let x_789 : u32 = u_xlatu39;
    if ((x_788 < x_789)) {
    } else {
      break;
    }
    let x_792 : u32 = u_xlatu_loop_1;
    u_xlatu41 = (x_792 >> 2u);
    let x_796 : u32 = u_xlatu_loop_1;
    u_xlati30 = bitcast<i32>((x_796 & 3u));
    let x_800 : u32 = u_xlatu41;
    let x_803 : vec4<f32> = x_236.unity_LightIndices[bitcast<i32>(x_800)];
    let x_813 : i32 = u_xlati30;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_818 : vec4<u32> = indexable[x_813];
    u_xlat41 = dot(x_803, bitcast<vec4<f32>>(x_818));
    let x_821 : f32 = u_xlat41;
    u_xlatu41 = bitcast<u32>(i32(x_821));
    let x_825 : vec3<f32> = vs_TEXCOORD1;
    let x_837 : u32 = u_xlatu41;
    let x_840 : vec4<f32> = x_836.x_AdditionalLightsPosition[bitcast<i32>(x_837)];
    let x_843 : u32 = u_xlatu41;
    let x_846 : vec4<f32> = x_836.x_AdditionalLightsPosition[bitcast<i32>(x_843)];
    u_xlat8 = ((-(x_825) * vec3<f32>(x_840.w, x_840.w, x_840.w)) + vec3<f32>(x_846.x, x_846.y, x_846.z));
    let x_850 : vec3<f32> = u_xlat8;
    let x_851 : vec3<f32> = u_xlat8;
    u_xlat30 = dot(x_850, x_851);
    let x_853 : f32 = u_xlat30;
    u_xlat30 = max(x_853, 6.10351562e-05f);
    let x_857 : f32 = u_xlat30;
    u_xlat42 = inverseSqrt(x_857);
    let x_859 : f32 = u_xlat42;
    let x_861 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_859, x_859, x_859) * x_861);
    let x_863 : f32 = u_xlat30;
    u_xlat42 = (1.0f / x_863);
    let x_865 : f32 = u_xlat30;
    let x_866 : u32 = u_xlatu41;
    let x_869 : f32 = x_836.x_AdditionalLightsAttenuation[bitcast<i32>(x_866)].x;
    u_xlat30 = (x_865 * x_869);
    let x_871 : f32 = u_xlat30;
    let x_873 : f32 = u_xlat30;
    u_xlat30 = ((-(x_871) * x_873) + 1.0f);
    let x_876 : f32 = u_xlat30;
    u_xlat30 = max(x_876, 0.0f);
    let x_878 : f32 = u_xlat30;
    let x_879 : f32 = u_xlat30;
    u_xlat30 = (x_878 * x_879);
    let x_881 : f32 = u_xlat30;
    let x_882 : f32 = u_xlat42;
    u_xlat30 = (x_881 * x_882);
    let x_884 : u32 = u_xlatu41;
    let x_887 : vec4<f32> = x_836.x_AdditionalLightsSpotDir[bitcast<i32>(x_884)];
    let x_889 : vec3<f32> = u_xlat8;
    u_xlat42 = dot(vec3<f32>(x_887.x, x_887.y, x_887.z), x_889);
    let x_891 : f32 = u_xlat42;
    let x_892 : u32 = u_xlatu41;
    let x_895 : f32 = x_836.x_AdditionalLightsAttenuation[bitcast<i32>(x_892)].z;
    let x_897 : u32 = u_xlatu41;
    let x_900 : f32 = x_836.x_AdditionalLightsAttenuation[bitcast<i32>(x_897)].w;
    u_xlat42 = ((x_891 * x_895) + x_900);
    let x_902 : f32 = u_xlat42;
    u_xlat42 = clamp(x_902, 0.0f, 1.0f);
    let x_904 : f32 = u_xlat42;
    let x_905 : f32 = u_xlat42;
    u_xlat42 = (x_904 * x_905);
    let x_907 : f32 = u_xlat42;
    let x_908 : f32 = u_xlat30;
    u_xlat30 = (x_907 * x_908);
    let x_911 : u32 = u_xlatu41;
    u_xlatu42 = (x_911 >> 5u);
    let x_914 : u32 = u_xlatu41;
    u_xlati43 = (1i << bitcast<u32>((bitcast<i32>(x_914) & 31i)));
    let x_920 : i32 = u_xlati43;
    let x_922 : u32 = u_xlatu42;
    let x_925 : f32 = x_530.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_922)].el;
    u_xlati42 = bitcast<i32>((bitcast<u32>(x_920) & bitcast<u32>(x_925)));
    let x_929 : i32 = u_xlati42;
    if ((x_929 != 0i)) {
      let x_939 : u32 = u_xlatu41;
      let x_942 : f32 = x_938.x_AdditionalLightsLightTypes[bitcast<i32>(x_939)].el;
      u_xlati42 = i32(x_942);
      let x_944 : i32 = u_xlati42;
      u_xlati43 = select(1i, 0i, (x_944 != 0i));
      let x_948 : u32 = u_xlatu41;
      u_xlati44 = (bitcast<i32>(x_948) << bitcast<u32>(2i));
      let x_951 : i32 = u_xlati43;
      if ((x_951 != 0i)) {
        let x_956 : vec3<f32> = vs_TEXCOORD1;
        let x_958 : i32 = u_xlati44;
        let x_961 : i32 = u_xlati44;
        let x_965 : vec4<f32> = x_938.x_AdditionalLightsWorldToLights[((x_958 + 1i) / 4i)][((x_961 + 1i) % 4i)];
        let x_967 : vec3<f32> = (vec3<f32>(x_956.y, x_956.y, x_956.y) * vec3<f32>(x_965.x, x_965.y, x_965.w));
        let x_968 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_967.x, x_967.y, x_967.z, x_968.w);
        let x_970 : i32 = u_xlati44;
        let x_972 : i32 = u_xlati44;
        let x_975 : vec4<f32> = x_938.x_AdditionalLightsWorldToLights[(x_970 / 4i)][(x_972 % 4i)];
        let x_977 : vec3<f32> = vs_TEXCOORD1;
        let x_980 : vec4<f32> = u_xlat9;
        let x_982 : vec3<f32> = ((vec3<f32>(x_975.x, x_975.y, x_975.w) * vec3<f32>(x_977.x, x_977.x, x_977.x)) + vec3<f32>(x_980.x, x_980.y, x_980.z));
        let x_983 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_982.x, x_982.y, x_982.z, x_983.w);
        let x_985 : i32 = u_xlati44;
        let x_988 : i32 = u_xlati44;
        let x_992 : vec4<f32> = x_938.x_AdditionalLightsWorldToLights[((x_985 + 2i) / 4i)][((x_988 + 2i) % 4i)];
        let x_994 : vec3<f32> = vs_TEXCOORD1;
        let x_997 : vec4<f32> = u_xlat9;
        let x_999 : vec3<f32> = ((vec3<f32>(x_992.x, x_992.y, x_992.w) * vec3<f32>(x_994.z, x_994.z, x_994.z)) + vec3<f32>(x_997.x, x_997.y, x_997.z));
        let x_1000 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_999.x, x_999.y, x_999.z, x_1000.w);
        let x_1002 : vec4<f32> = u_xlat9;
        let x_1004 : i32 = u_xlati44;
        let x_1007 : i32 = u_xlati44;
        let x_1011 : vec4<f32> = x_938.x_AdditionalLightsWorldToLights[((x_1004 + 3i) / 4i)][((x_1007 + 3i) % 4i)];
        let x_1013 : vec3<f32> = (vec3<f32>(x_1002.x, x_1002.y, x_1002.z) + vec3<f32>(x_1011.x, x_1011.y, x_1011.w));
        let x_1014 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1013.x, x_1013.y, x_1013.z, x_1014.w);
        let x_1016 : vec4<f32> = u_xlat9;
        let x_1018 : vec4<f32> = u_xlat9;
        let x_1020 : vec2<f32> = (vec2<f32>(x_1016.x, x_1016.y) / vec2<f32>(x_1018.z, x_1018.z));
        let x_1021 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1020.x, x_1020.y, x_1021.z, x_1021.w);
        let x_1023 : vec4<f32> = u_xlat9;
        let x_1026 : vec2<f32> = ((vec2<f32>(x_1023.x, x_1023.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1027 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1026.x, x_1026.y, x_1027.z, x_1027.w);
        let x_1029 : vec4<f32> = u_xlat9;
        let x_1033 : vec2<f32> = clamp(vec2<f32>(x_1029.x, x_1029.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1034 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1033.x, x_1033.y, x_1034.z, x_1034.w);
        let x_1036 : u32 = u_xlatu41;
        let x_1039 : vec4<f32> = x_938.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1036)];
        let x_1041 : vec4<f32> = u_xlat9;
        let x_1044 : u32 = u_xlatu41;
        let x_1047 : vec4<f32> = x_938.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1044)];
        let x_1049 : vec2<f32> = ((vec2<f32>(x_1039.x, x_1039.y) * vec2<f32>(x_1041.x, x_1041.y)) + vec2<f32>(x_1047.z, x_1047.w));
        let x_1050 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1049.x, x_1049.y, x_1050.z, x_1050.w);
      } else {
        let x_1054 : i32 = u_xlati42;
        u_xlatb42 = (x_1054 == 1i);
        let x_1056 : bool = u_xlatb42;
        u_xlati42 = select(0i, 1i, x_1056);
        let x_1058 : i32 = u_xlati42;
        if ((x_1058 != 0i)) {
          let x_1064 : vec3<f32> = vs_TEXCOORD1;
          let x_1066 : i32 = u_xlati44;
          let x_1069 : i32 = u_xlati44;
          let x_1073 : vec4<f32> = x_938.x_AdditionalLightsWorldToLights[((x_1066 + 1i) / 4i)][((x_1069 + 1i) % 4i)];
          u_xlat33 = (vec2<f32>(x_1064.y, x_1064.y) * vec2<f32>(x_1073.x, x_1073.y));
          let x_1076 : i32 = u_xlati44;
          let x_1078 : i32 = u_xlati44;
          let x_1081 : vec4<f32> = x_938.x_AdditionalLightsWorldToLights[(x_1076 / 4i)][(x_1078 % 4i)];
          let x_1083 : vec3<f32> = vs_TEXCOORD1;
          let x_1086 : vec2<f32> = u_xlat33;
          u_xlat33 = ((vec2<f32>(x_1081.x, x_1081.y) * vec2<f32>(x_1083.x, x_1083.x)) + x_1086);
          let x_1088 : i32 = u_xlati44;
          let x_1091 : i32 = u_xlati44;
          let x_1095 : vec4<f32> = x_938.x_AdditionalLightsWorldToLights[((x_1088 + 2i) / 4i)][((x_1091 + 2i) % 4i)];
          let x_1097 : vec3<f32> = vs_TEXCOORD1;
          let x_1100 : vec2<f32> = u_xlat33;
          u_xlat33 = ((vec2<f32>(x_1095.x, x_1095.y) * vec2<f32>(x_1097.z, x_1097.z)) + x_1100);
          let x_1102 : vec2<f32> = u_xlat33;
          let x_1103 : i32 = u_xlati44;
          let x_1106 : i32 = u_xlati44;
          let x_1110 : vec4<f32> = x_938.x_AdditionalLightsWorldToLights[((x_1103 + 3i) / 4i)][((x_1106 + 3i) % 4i)];
          u_xlat33 = (x_1102 + vec2<f32>(x_1110.x, x_1110.y));
          let x_1113 : vec2<f32> = u_xlat33;
          u_xlat33 = ((x_1113 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1116 : vec2<f32> = u_xlat33;
          u_xlat33 = fract(x_1116);
          let x_1118 : u32 = u_xlatu41;
          let x_1121 : vec4<f32> = x_938.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1118)];
          let x_1123 : vec2<f32> = u_xlat33;
          let x_1125 : u32 = u_xlatu41;
          let x_1128 : vec4<f32> = x_938.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1125)];
          let x_1130 : vec2<f32> = ((vec2<f32>(x_1121.x, x_1121.y) * x_1123) + vec2<f32>(x_1128.z, x_1128.w));
          let x_1131 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1130.x, x_1130.y, x_1131.z, x_1131.w);
        } else {
          let x_1135 : vec3<f32> = vs_TEXCOORD1;
          let x_1137 : i32 = u_xlati44;
          let x_1140 : i32 = u_xlati44;
          let x_1144 : vec4<f32> = x_938.x_AdditionalLightsWorldToLights[((x_1137 + 1i) / 4i)][((x_1140 + 1i) % 4i)];
          u_xlat10 = (vec4<f32>(x_1135.y, x_1135.y, x_1135.y, x_1135.y) * x_1144);
          let x_1146 : i32 = u_xlati44;
          let x_1148 : i32 = u_xlati44;
          let x_1151 : vec4<f32> = x_938.x_AdditionalLightsWorldToLights[(x_1146 / 4i)][(x_1148 % 4i)];
          let x_1152 : vec3<f32> = vs_TEXCOORD1;
          let x_1155 : vec4<f32> = u_xlat10;
          u_xlat10 = ((x_1151 * vec4<f32>(x_1152.x, x_1152.x, x_1152.x, x_1152.x)) + x_1155);
          let x_1157 : i32 = u_xlati44;
          let x_1160 : i32 = u_xlati44;
          let x_1164 : vec4<f32> = x_938.x_AdditionalLightsWorldToLights[((x_1157 + 2i) / 4i)][((x_1160 + 2i) % 4i)];
          let x_1165 : vec3<f32> = vs_TEXCOORD1;
          let x_1168 : vec4<f32> = u_xlat10;
          u_xlat10 = ((x_1164 * vec4<f32>(x_1165.z, x_1165.z, x_1165.z, x_1165.z)) + x_1168);
          let x_1170 : vec4<f32> = u_xlat10;
          let x_1171 : i32 = u_xlati44;
          let x_1174 : i32 = u_xlati44;
          let x_1178 : vec4<f32> = x_938.x_AdditionalLightsWorldToLights[((x_1171 + 3i) / 4i)][((x_1174 + 3i) % 4i)];
          u_xlat10 = (x_1170 + x_1178);
          let x_1180 : vec4<f32> = u_xlat10;
          let x_1182 : vec4<f32> = u_xlat10;
          let x_1184 : vec3<f32> = (vec3<f32>(x_1180.x, x_1180.y, x_1180.z) / vec3<f32>(x_1182.w, x_1182.w, x_1182.w));
          let x_1185 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_1184.x, x_1184.y, x_1184.z, x_1185.w);
          let x_1187 : vec4<f32> = u_xlat10;
          let x_1189 : vec4<f32> = u_xlat10;
          u_xlat42 = dot(vec3<f32>(x_1187.x, x_1187.y, x_1187.z), vec3<f32>(x_1189.x, x_1189.y, x_1189.z));
          let x_1192 : f32 = u_xlat42;
          u_xlat42 = inverseSqrt(x_1192);
          let x_1194 : f32 = u_xlat42;
          let x_1196 : vec4<f32> = u_xlat10;
          let x_1198 : vec3<f32> = (vec3<f32>(x_1194, x_1194, x_1194) * vec3<f32>(x_1196.x, x_1196.y, x_1196.z));
          let x_1199 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_1198.x, x_1198.y, x_1198.z, x_1199.w);
          let x_1201 : vec4<f32> = u_xlat10;
          u_xlat42 = dot(abs(vec3<f32>(x_1201.x, x_1201.y, x_1201.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1206 : f32 = u_xlat42;
          u_xlat42 = max(x_1206, 0.000001f);
          let x_1209 : f32 = u_xlat42;
          u_xlat42 = (1.0f / x_1209);
          let x_1212 : f32 = u_xlat42;
          let x_1214 : vec4<f32> = u_xlat10;
          u_xlat11 = (vec3<f32>(x_1212, x_1212, x_1212) * vec3<f32>(x_1214.z, x_1214.x, x_1214.y));
          let x_1218 : f32 = u_xlat11.x;
          u_xlat11.x = -(x_1218);
          let x_1222 : f32 = u_xlat11.x;
          u_xlat11.x = clamp(x_1222, 0.0f, 1.0f);
          let x_1226 : vec3<f32> = u_xlat11;
          let x_1229 : vec4<bool> = (vec4<f32>(x_1226.y, x_1226.z, x_1226.y, x_1226.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb33 = vec2<bool>(x_1229.x, x_1229.y);
          let x_1232 : bool = u_xlatb33.x;
          if (x_1232) {
            let x_1237 : f32 = u_xlat11.x;
            x_1233 = x_1237;
          } else {
            let x_1240 : f32 = u_xlat11.x;
            x_1233 = -(x_1240);
          }
          let x_1242 : f32 = x_1233;
          u_xlat33.x = x_1242;
          let x_1245 : bool = u_xlatb33.y;
          if (x_1245) {
            let x_1250 : f32 = u_xlat11.x;
            x_1246 = x_1250;
          } else {
            let x_1253 : f32 = u_xlat11.x;
            x_1246 = -(x_1253);
          }
          let x_1255 : f32 = x_1246;
          u_xlat33.y = x_1255;
          let x_1257 : vec4<f32> = u_xlat10;
          let x_1259 : f32 = u_xlat42;
          let x_1262 : vec2<f32> = u_xlat33;
          u_xlat33 = ((vec2<f32>(x_1257.x, x_1257.y) * vec2<f32>(x_1259, x_1259)) + x_1262);
          let x_1264 : vec2<f32> = u_xlat33;
          u_xlat33 = ((x_1264 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1267 : vec2<f32> = u_xlat33;
          u_xlat33 = clamp(x_1267, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1271 : u32 = u_xlatu41;
          let x_1274 : vec4<f32> = x_938.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1271)];
          let x_1276 : vec2<f32> = u_xlat33;
          let x_1278 : u32 = u_xlatu41;
          let x_1281 : vec4<f32> = x_938.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1278)];
          let x_1283 : vec2<f32> = ((vec2<f32>(x_1274.x, x_1274.y) * x_1276) + vec2<f32>(x_1281.z, x_1281.w));
          let x_1284 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1283.x, x_1283.y, x_1284.z, x_1284.w);
        }
      }
      let x_1291 : vec4<f32> = u_xlat9;
      let x_1294 : f32 = x_44.x_GlobalMipBias.x;
      let x_1295 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1291.x, x_1291.y), x_1294);
      u_xlat9 = x_1295;
      let x_1297 : bool = u_xlatb6.y;
      if (x_1297) {
        let x_1302 : f32 = u_xlat9.w;
        x_1298 = x_1302;
      } else {
        let x_1305 : f32 = u_xlat9.x;
        x_1298 = x_1305;
      }
      let x_1306 : f32 = x_1298;
      u_xlat42 = x_1306;
      let x_1308 : bool = u_xlatb6.x;
      if (x_1308) {
        let x_1312 : vec4<f32> = u_xlat9;
        x_1309 = vec3<f32>(x_1312.x, x_1312.y, x_1312.z);
      } else {
        let x_1315 : f32 = u_xlat42;
        x_1309 = vec3<f32>(x_1315, x_1315, x_1315);
      }
      let x_1317 : vec3<f32> = x_1309;
      let x_1318 : vec4<f32> = u_xlat9;
      u_xlat9 = vec4<f32>(x_1317.x, x_1317.y, x_1317.z, x_1318.w);
    } else {
      u_xlat9.x = 1.0f;
      u_xlat9.y = 1.0f;
      u_xlat9.z = 1.0f;
    }
    let x_1324 : vec4<f32> = u_xlat9;
    let x_1326 : u32 = u_xlatu41;
    let x_1329 : vec4<f32> = x_836.x_AdditionalLightsColor[bitcast<i32>(x_1326)];
    let x_1331 : vec3<f32> = (vec3<f32>(x_1324.x, x_1324.y, x_1324.z) * vec3<f32>(x_1329.x, x_1329.y, x_1329.z));
    let x_1332 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1331.x, x_1331.y, x_1331.z, x_1332.w);
    let x_1334 : f32 = u_xlat38;
    let x_1336 : vec4<f32> = u_xlat9;
    let x_1338 : vec3<f32> = (vec3<f32>(x_1334, x_1334, x_1334) * vec3<f32>(x_1336.x, x_1336.y, x_1336.z));
    let x_1339 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1338.x, x_1338.y, x_1338.z, x_1339.w);
    let x_1341 : f32 = u_xlat30;
    let x_1343 : vec4<f32> = u_xlat9;
    let x_1345 : vec3<f32> = (vec3<f32>(x_1341, x_1341, x_1341) * vec3<f32>(x_1343.x, x_1343.y, x_1343.z));
    let x_1346 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1345.x, x_1345.y, x_1345.z, x_1346.w);
    let x_1348 : vec3<f32> = u_xlat2;
    let x_1349 : vec3<f32> = u_xlat8;
    u_xlat41 = dot(x_1348, x_1349);
    let x_1351 : f32 = u_xlat41;
    u_xlat41 = clamp(x_1351, 0.0f, 1.0f);
    let x_1353 : f32 = u_xlat41;
    let x_1355 : vec4<f32> = u_xlat9;
    let x_1357 : vec3<f32> = (vec3<f32>(x_1353, x_1353, x_1353) * vec3<f32>(x_1355.x, x_1355.y, x_1355.z));
    let x_1358 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1357.x, x_1357.y, x_1357.z, x_1358.w);
    let x_1360 : vec3<f32> = u_xlat3;
    let x_1361 : vec3<f32> = u_xlat12;
    let x_1364 : vec3<f32> = u_xlat8;
    u_xlat8 = ((x_1360 * vec3<f32>(x_1361.x, x_1361.x, x_1361.x)) + x_1364);
    let x_1366 : vec3<f32> = u_xlat8;
    let x_1367 : vec3<f32> = u_xlat8;
    u_xlat41 = dot(x_1366, x_1367);
    let x_1369 : f32 = u_xlat41;
    u_xlat41 = max(x_1369, 1.17549435e-37f);
    let x_1371 : f32 = u_xlat41;
    u_xlat41 = inverseSqrt(x_1371);
    let x_1373 : f32 = u_xlat41;
    let x_1375 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_1373, x_1373, x_1373) * x_1375);
    let x_1377 : vec3<f32> = u_xlat2;
    let x_1378 : vec3<f32> = u_xlat8;
    u_xlat41 = dot(x_1377, x_1378);
    let x_1380 : f32 = u_xlat41;
    u_xlat41 = clamp(x_1380, 0.0f, 1.0f);
    let x_1382 : f32 = u_xlat41;
    u_xlat41 = log2(x_1382);
    let x_1385 : f32 = u_xlat1.x;
    let x_1386 : f32 = u_xlat41;
    u_xlat41 = (x_1385 * x_1386);
    let x_1388 : f32 = u_xlat41;
    u_xlat41 = exp2(x_1388);
    let x_1390 : f32 = u_xlat41;
    let x_1393 : vec4<f32> = x_57.x_SpecColor;
    u_xlat8 = (vec3<f32>(x_1390, x_1390, x_1390) * vec3<f32>(x_1393.x, x_1393.y, x_1393.z));
    let x_1396 : vec3<f32> = u_xlat8;
    let x_1397 : vec4<f32> = u_xlat9;
    u_xlat8 = (x_1396 * vec3<f32>(x_1397.x, x_1397.y, x_1397.z));
    let x_1400 : vec4<f32> = u_xlat10;
    let x_1402 : vec4<f32> = u_xlat1;
    let x_1405 : vec3<f32> = u_xlat8;
    u_xlat8 = ((vec3<f32>(x_1400.x, x_1400.y, x_1400.z) * vec3<f32>(x_1402.y, x_1402.z, x_1402.w)) + x_1405);
    let x_1407 : vec3<f32> = u_xlat7;
    let x_1408 : vec3<f32> = u_xlat8;
    u_xlat7 = (x_1407 + x_1408);

    continuing {
      let x_1410 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1410 + bitcast<u32>(1i));
    }
  }
  let x_1412 : vec3<f32> = u_xlat4;
  let x_1413 : vec4<f32> = u_xlat1;
  let x_1416 : vec4<f32> = u_xlat5;
  let x_1418 : vec3<f32> = ((x_1412 * vec3<f32>(x_1413.y, x_1413.z, x_1413.w)) + vec3<f32>(x_1416.x, x_1416.y, x_1416.z));
  let x_1419 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1418.x, x_1418.y, x_1418.z, x_1419.w);
  let x_1421 : vec3<f32> = u_xlat7;
  let x_1422 : vec4<f32> = u_xlat1;
  let x_1424 : vec3<f32> = (x_1421 + vec3<f32>(x_1422.x, x_1422.y, x_1422.z));
  let x_1425 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1424.x, x_1424.y, x_1424.z, x_1425.w);
  let x_1427 : f32 = u_xlat36;
  let x_1428 : f32 = u_xlat36;
  u_xlat12.x = (x_1427 * -(x_1428));
  let x_1433 : f32 = u_xlat12.x;
  u_xlat12.x = exp2(x_1433);
  let x_1436 : vec4<f32> = u_xlat1;
  let x_1440 : vec4<f32> = x_44.unity_FogColor;
  let x_1443 : vec3<f32> = (vec3<f32>(x_1436.x, x_1436.y, x_1436.z) + -(vec3<f32>(x_1440.x, x_1440.y, x_1440.z)));
  let x_1444 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1443.x, x_1443.y, x_1443.z, x_1444.w);
  let x_1448 : vec3<f32> = u_xlat12;
  let x_1450 : vec4<f32> = u_xlat1;
  let x_1454 : vec4<f32> = x_44.unity_FogColor;
  let x_1456 : vec3<f32> = ((vec3<f32>(x_1448.x, x_1448.x, x_1448.x) * vec3<f32>(x_1450.x, x_1450.y, x_1450.z)) + vec3<f32>(x_1454.x, x_1454.y, x_1454.z));
  let x_1457 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1456.x, x_1456.y, x_1456.z, x_1457.w);
  let x_1460 : f32 = x_57.x_Surface;
  u_xlatb12 = (x_1460 == 1.0f);
  let x_1462 : bool = u_xlatb12;
  let x_1463 : bool = u_xlatb24;
  u_xlatb12 = (x_1462 | x_1463);
  let x_1465 : bool = u_xlatb12;
  if (x_1465) {
    let x_1470 : f32 = u_xlat0.x;
    x_1466 = x_1470;
  } else {
    x_1466 = 1.0f;
  }
  let x_1472 : f32 = x_1466;
  SV_Target0.w = x_1472;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(6) vs_TEXCOORD7_param : vec2<f32>, @location(5) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}

