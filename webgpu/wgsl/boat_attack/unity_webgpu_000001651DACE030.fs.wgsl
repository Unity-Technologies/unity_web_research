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

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

@group(0) @binding(5) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_185 : UnityPerDraw;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_448 : MainLightShadows;

@group(1) @binding(5) var<uniform> x_510 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(1) var<uniform> x_757 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_872 : AdditionalLightsCookies;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_74 : f32;
  var u_xlat11 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlat33 : f32;
  var u_xlatb22 : bool;
  var x_131 : f32;
  var u_xlatb11 : bool;
  var u_xlatb33 : bool;
  var x_190 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat35 : f32;
  var u_xlat36 : f32;
  var u_xlatb36 : bool;
  var u_xlatb4 : bool;
  var u_xlatb5 : vec2<bool>;
  var x_595 : f32;
  var x_606 : vec3<f32>;
  var u_xlatu33 : u32;
  var u_xlat6 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu36 : u32;
  var u_xlati37 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat7 : vec3<f32>;
  var u_xlat37 : f32;
  var u_xlat27 : vec2<f32>;
  var u_xlatu27 : u32;
  var u_xlati38 : i32;
  var u_xlati27 : i32;
  var u_xlati39 : i32;
  var u_xlat8 : vec4<f32>;
  var u_xlatb27 : bool;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlatb30 : vec2<bool>;
  var u_xlat30 : vec2<f32>;
  var x_1174 : f32;
  var x_1187 : f32;
  var x_1239 : f32;
  var x_1251 : vec3<f32>;
  var x_1365 : f32;
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
  u_xlat11.x = ((x_86 * x_88) + -(x_91));
  let x_97 : f32 = u_xlat1.x;
  u_xlat22 = dpdxCoarse(x_97);
  let x_101 : f32 = u_xlat1.x;
  u_xlat33 = dpdyCoarse(x_101);
  let x_103 : f32 = u_xlat33;
  let x_105 : f32 = u_xlat22;
  u_xlat22 = (abs(x_103) + abs(x_105));
  let x_108 : f32 = u_xlat22;
  u_xlat22 = max(x_108, 0.0001f);
  let x_112 : f32 = u_xlat11.x;
  let x_113 : f32 = u_xlat22;
  u_xlat11.x = (x_112 / x_113);
  let x_117 : f32 = u_xlat11.x;
  u_xlat11.x = (x_117 + 0.5f);
  let x_122 : f32 = u_xlat11.x;
  u_xlat11.x = clamp(x_122, 0.0f, 1.0f);
  let x_128 : f32 = x_44.x_AlphaToMaskAvailable;
  u_xlatb22 = !((x_128 == 0.0f));
  let x_130 : bool = u_xlatb22;
  if (x_130) {
    let x_135 : f32 = u_xlat11.x;
    x_131 = x_135;
  } else {
    let x_138 : f32 = u_xlat0.x;
    x_131 = x_138;
  }
  let x_139 : f32 = x_131;
  u_xlat0.x = x_139;
  let x_142 : f32 = u_xlat0.x;
  u_xlat11.x = (x_142 + -0.0001f);
  let x_148 : f32 = u_xlat11.x;
  u_xlatb11 = (x_148 < 0.0f);
  let x_150 : bool = u_xlatb11;
  if (((select(0i, 1i, x_150) * -1i) != 0i)) {
    discard;
  }
  let x_159 : vec4<f32> = hlslcc_FragCoord;
  let x_163 : f32 = x_44.x_DitheringTextureInvSize;
  let x_165 : vec2<f32> = (vec2<f32>(x_159.x, x_159.y) * vec2<f32>(x_163, x_163));
  let x_166 : vec3<f32> = u_xlat11;
  u_xlat11 = vec3<f32>(x_165.x, x_166.y, x_165.y);
  let x_173 : vec3<f32> = u_xlat11;
  let x_176 : f32 = x_44.x_GlobalMipBias.x;
  let x_177 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_173.x, x_173.z), x_176);
  u_xlat11.x = x_177.w;
  let x_187 : f32 = x_185.unity_LODFade.x;
  u_xlatb33 = (x_187 >= 0.0f);
  let x_189 : bool = u_xlatb33;
  if (x_189) {
    let x_194 : f32 = u_xlat11.x;
    x_190 = abs(x_194);
  } else {
    let x_198 : f32 = u_xlat11.x;
    x_190 = -(abs(x_198));
  }
  let x_201 : f32 = x_190;
  u_xlat11.x = x_201;
  let x_204 : f32 = u_xlat11.x;
  let x_207 : f32 = x_185.unity_LODFade.x;
  u_xlat11.x = (-(x_204) + x_207);
  let x_211 : f32 = u_xlat11.x;
  u_xlatb11 = (x_211 < 0.0f);
  let x_213 : bool = u_xlatb11;
  if (((select(0i, 1i, x_213) * -1i) != 0i)) {
    discard;
  }
  let x_222 : vec3<f32> = vs_TEXCOORD2;
  let x_223 : vec3<f32> = vs_TEXCOORD2;
  u_xlat11.x = dot(x_222, x_223);
  let x_227 : f32 = u_xlat11.x;
  u_xlat11.x = inverseSqrt(x_227);
  let x_231 : vec3<f32> = u_xlat11;
  let x_233 : vec3<f32> = vs_TEXCOORD2;
  let x_234 : vec3<f32> = (vec3<f32>(x_231.x, x_231.x, x_231.x) * x_233);
  let x_235 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_234.x, x_234.y, x_234.z, x_235.w);
  let x_240 : f32 = vs_TEXCOORD1.y;
  let x_243 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat11.x = (x_240 * x_243);
  let x_247 : f32 = x_44.unity_MatrixV[0i].z;
  let x_249 : f32 = vs_TEXCOORD1.x;
  let x_252 : f32 = u_xlat11.x;
  u_xlat11.x = ((x_247 * x_249) + x_252);
  let x_256 : f32 = x_44.unity_MatrixV[2i].z;
  let x_258 : f32 = vs_TEXCOORD1.z;
  let x_261 : f32 = u_xlat11.x;
  u_xlat11.x = ((x_256 * x_258) + x_261);
  let x_265 : f32 = u_xlat11.x;
  let x_268 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat11.x = (x_265 + x_268);
  let x_272 : f32 = u_xlat11.x;
  let x_276 : f32 = x_44.x_ProjectionParams.y;
  u_xlat11.x = (-(x_272) + -(x_276));
  let x_281 : f32 = u_xlat11.x;
  u_xlat11.x = max(x_281, 0.0f);
  let x_285 : f32 = u_xlat11.x;
  let x_288 : f32 = x_44.unity_FogParams.x;
  u_xlat11.x = (x_285 * x_288);
  u_xlat2.w = 1.0f;
  let x_295 : vec4<f32> = x_185.unity_SHAr;
  let x_296 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_295, x_296);
  let x_301 : vec4<f32> = x_185.unity_SHAg;
  let x_302 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_301, x_302);
  let x_307 : vec4<f32> = x_185.unity_SHAb;
  let x_308 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_307, x_308);
  let x_312 : vec4<f32> = u_xlat2;
  let x_314 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_312.y, x_312.z, x_312.z, x_312.x) * vec4<f32>(x_314.x, x_314.y, x_314.z, x_314.z));
  let x_320 : vec4<f32> = x_185.unity_SHBr;
  let x_321 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_320, x_321);
  let x_326 : vec4<f32> = x_185.unity_SHBg;
  let x_327 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_326, x_327);
  let x_332 : vec4<f32> = x_185.unity_SHBb;
  let x_333 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_332, x_333);
  let x_337 : f32 = u_xlat2.y;
  let x_339 : f32 = u_xlat2.y;
  u_xlat33 = (x_337 * x_339);
  let x_342 : f32 = u_xlat2.x;
  let x_344 : f32 = u_xlat2.x;
  let x_346 : f32 = u_xlat33;
  u_xlat33 = ((x_342 * x_344) + -(x_346));
  let x_351 : vec4<f32> = x_185.unity_SHC;
  let x_353 : f32 = u_xlat33;
  let x_356 : vec3<f32> = u_xlat5;
  let x_357 : vec3<f32> = ((vec3<f32>(x_351.x, x_351.y, x_351.z) * vec3<f32>(x_353, x_353, x_353)) + x_356);
  let x_358 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_357.x, x_357.y, x_357.z, x_358.w);
  let x_360 : vec3<f32> = u_xlat3;
  let x_361 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_360 + vec3<f32>(x_361.x, x_361.y, x_361.z));
  let x_364 : vec3<f32> = u_xlat3;
  u_xlat3 = max(x_364, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_369 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_370 : vec2<f32> = vec2<f32>(x_369.x, x_369.y);
  let x_374 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_370.x, x_370.y));
  let x_375 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_374.x, x_374.y, x_375.z, x_375.w);
  let x_377 : vec4<f32> = u_xlat4;
  let x_379 : vec4<f32> = hlslcc_FragCoord;
  let x_381 : vec2<f32> = (vec2<f32>(x_377.x, x_377.y) * vec2<f32>(x_379.x, x_379.y));
  let x_382 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_381.x, x_381.y, x_382.z, x_382.w);
  let x_385 : f32 = u_xlat4.y;
  let x_388 : f32 = x_44.x_ScaleBiasRt.x;
  let x_391 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat33 = ((x_385 * x_388) + x_391);
  let x_393 : f32 = u_xlat33;
  u_xlat4.z = (-(x_393) + 1.0f);
  let x_402 : vec4<f32> = u_xlat4;
  let x_405 : f32 = x_44.x_GlobalMipBias.x;
  let x_406 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_402.x, x_402.z), x_405);
  u_xlat33 = x_406.x;
  let x_408 : f32 = u_xlat33;
  u_xlat1.x = (x_408 + -1.0f);
  let x_414 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_416 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_414 * x_416) + 1.0f);
  let x_420 : f32 = u_xlat33;
  u_xlat33 = min(x_420, 1.0f);
  let x_424 : vec4<f32> = vs_TEXCOORD6;
  let x_425 : vec2<f32> = vec2<f32>(x_424.x, x_424.y);
  let x_427 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_425.x, x_425.y, x_427);
  let x_440 : vec3<f32> = txVec0;
  let x_442 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_440.xy, x_440.z);
  u_xlat35 = x_442;
  let x_450 : f32 = x_448.x_MainLightShadowParams.x;
  u_xlat36 = (-(x_450) + 1.0f);
  let x_453 : f32 = u_xlat35;
  let x_455 : f32 = x_448.x_MainLightShadowParams.x;
  let x_457 : f32 = u_xlat36;
  u_xlat35 = ((x_453 * x_455) + x_457);
  let x_461 : f32 = vs_TEXCOORD6.z;
  u_xlatb36 = (0.0f >= x_461);
  let x_465 : f32 = vs_TEXCOORD6.z;
  u_xlatb4 = (x_465 >= 1.0f);
  let x_467 : bool = u_xlatb36;
  let x_468 : bool = u_xlatb4;
  u_xlatb36 = (x_467 | x_468);
  let x_470 : bool = u_xlatb36;
  let x_471 : f32 = u_xlat35;
  u_xlat35 = select(x_471, 1.0f, x_470);
  let x_473 : vec3<f32> = vs_TEXCOORD1;
  let x_477 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_479 : vec3<f32> = (x_473 + -(x_477));
  let x_480 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_479.x, x_479.y, x_479.z, x_480.w);
  let x_482 : vec4<f32> = u_xlat4;
  let x_484 : vec4<f32> = u_xlat4;
  u_xlat36 = dot(vec3<f32>(x_482.x, x_482.y, x_482.z), vec3<f32>(x_484.x, x_484.y, x_484.z));
  let x_487 : f32 = u_xlat36;
  let x_489 : f32 = x_448.x_MainLightShadowParams.z;
  let x_492 : f32 = x_448.x_MainLightShadowParams.w;
  u_xlat36 = ((x_487 * x_489) + x_492);
  let x_494 : f32 = u_xlat36;
  u_xlat36 = clamp(x_494, 0.0f, 1.0f);
  let x_496 : f32 = u_xlat35;
  u_xlat4.x = (-(x_496) + 1.0f);
  let x_500 : f32 = u_xlat36;
  let x_502 : f32 = u_xlat4.x;
  let x_504 : f32 = u_xlat35;
  u_xlat35 = ((x_500 * x_502) + x_504);
  let x_512 : f32 = x_510.x_MainLightCookieTextureFormat;
  u_xlatb36 = !((x_512 == -1.0f));
  let x_514 : bool = u_xlatb36;
  if (x_514) {
    let x_517 : vec3<f32> = vs_TEXCOORD1;
    let x_520 : vec4<f32> = x_510.x_MainLightWorldToLight[1i];
    let x_522 : vec2<f32> = (vec2<f32>(x_517.y, x_517.y) * vec2<f32>(x_520.x, x_520.y));
    let x_523 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_522.x, x_522.y, x_523.z, x_523.w);
    let x_526 : vec4<f32> = x_510.x_MainLightWorldToLight[0i];
    let x_528 : vec3<f32> = vs_TEXCOORD1;
    let x_531 : vec4<f32> = u_xlat4;
    let x_533 : vec2<f32> = ((vec2<f32>(x_526.x, x_526.y) * vec2<f32>(x_528.x, x_528.x)) + vec2<f32>(x_531.x, x_531.y));
    let x_534 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_533.x, x_533.y, x_534.z, x_534.w);
    let x_537 : vec4<f32> = x_510.x_MainLightWorldToLight[2i];
    let x_539 : vec3<f32> = vs_TEXCOORD1;
    let x_542 : vec4<f32> = u_xlat4;
    let x_544 : vec2<f32> = ((vec2<f32>(x_537.x, x_537.y) * vec2<f32>(x_539.z, x_539.z)) + vec2<f32>(x_542.x, x_542.y));
    let x_545 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_544.x, x_544.y, x_545.z, x_545.w);
    let x_547 : vec4<f32> = u_xlat4;
    let x_550 : vec4<f32> = x_510.x_MainLightWorldToLight[3i];
    let x_552 : vec2<f32> = (vec2<f32>(x_547.x, x_547.y) + vec2<f32>(x_550.x, x_550.y));
    let x_553 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_552.x, x_552.y, x_553.z, x_553.w);
    let x_555 : vec4<f32> = u_xlat4;
    let x_559 : vec2<f32> = ((vec2<f32>(x_555.x, x_555.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_560 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_559.x, x_559.y, x_560.z, x_560.w);
    let x_567 : vec4<f32> = u_xlat4;
    let x_570 : f32 = x_44.x_GlobalMipBias.x;
    let x_571 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_567.x, x_567.y), x_570);
    u_xlat4 = x_571;
    let x_576 : f32 = x_510.x_MainLightCookieTextureFormat;
    let x_578 : f32 = x_510.x_MainLightCookieTextureFormat;
    let x_580 : f32 = x_510.x_MainLightCookieTextureFormat;
    let x_582 : f32 = x_510.x_MainLightCookieTextureFormat;
    let x_583 : vec4<f32> = vec4<f32>(x_576, x_578, x_580, x_582);
    let x_591 : vec4<bool> = (vec4<f32>(x_583.x, x_583.y, x_583.z, x_583.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_591.x, x_591.y);
    let x_594 : bool = u_xlatb5.y;
    if (x_594) {
      let x_599 : f32 = u_xlat4.w;
      x_595 = x_599;
    } else {
      let x_602 : f32 = u_xlat4.x;
      x_595 = x_602;
    }
    let x_603 : f32 = x_595;
    u_xlat36 = x_603;
    let x_605 : bool = u_xlatb5.x;
    if (x_605) {
      let x_609 : vec4<f32> = u_xlat4;
      x_606 = vec3<f32>(x_609.x, x_609.y, x_609.z);
    } else {
      let x_612 : f32 = u_xlat36;
      x_606 = vec3<f32>(x_612, x_612, x_612);
    }
    let x_614 : vec3<f32> = x_606;
    let x_615 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_614.x, x_614.y, x_614.z, x_615.w);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
  }
  let x_621 : vec4<f32> = u_xlat4;
  let x_624 : vec4<f32> = x_44.x_MainLightColor;
  let x_626 : vec3<f32> = (vec3<f32>(x_621.x, x_621.y, x_621.z) * vec3<f32>(x_624.x, x_624.y, x_624.z));
  let x_627 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_626.x, x_626.y, x_626.z, x_627.w);
  let x_629 : vec4<f32> = u_xlat1;
  let x_631 : vec4<f32> = u_xlat4;
  let x_633 : vec3<f32> = (vec3<f32>(x_629.x, x_629.x, x_629.x) * vec3<f32>(x_631.x, x_631.y, x_631.z));
  let x_634 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_633.x, x_633.y, x_633.z, x_634.w);
  let x_636 : f32 = u_xlat33;
  let x_638 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_636, x_636, x_636) * x_638);
  let x_640 : f32 = u_xlat35;
  let x_642 : f32 = x_185.unity_LightData.z;
  u_xlat33 = (x_640 * x_642);
  let x_644 : f32 = u_xlat33;
  let x_646 : vec4<f32> = u_xlat4;
  let x_648 : vec3<f32> = (vec3<f32>(x_644, x_644, x_644) * vec3<f32>(x_646.x, x_646.y, x_646.z));
  let x_649 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_648.x, x_648.y, x_648.z, x_649.w);
  let x_651 : vec4<f32> = u_xlat2;
  let x_654 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat33 = dot(vec3<f32>(x_651.x, x_651.y, x_651.z), vec3<f32>(x_654.x, x_654.y, x_654.z));
  let x_657 : f32 = u_xlat33;
  u_xlat33 = clamp(x_657, 0.0f, 1.0f);
  let x_659 : f32 = u_xlat33;
  let x_661 : vec4<f32> = u_xlat4;
  let x_663 : vec3<f32> = (vec3<f32>(x_659, x_659, x_659) * vec3<f32>(x_661.x, x_661.y, x_661.z));
  let x_664 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_663.x, x_663.y, x_663.z, x_664.w);
  let x_666 : vec4<f32> = u_xlat1;
  let x_668 : vec4<f32> = u_xlat4;
  let x_670 : vec3<f32> = (vec3<f32>(x_666.y, x_666.z, x_666.w) * vec3<f32>(x_668.x, x_668.y, x_668.z));
  let x_671 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_670.x, x_670.y, x_670.z, x_671.w);
  let x_675 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_677 : f32 = x_185.unity_LightData.y;
  u_xlat33 = min(x_675, x_677);
  let x_681 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_681));
  let x_685 : f32 = x_510.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_687 : f32 = x_510.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_689 : f32 = x_510.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_691 : f32 = x_510.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_692 : vec4<f32> = vec4<f32>(x_685, x_687, x_689, x_691);
  let x_698 : vec4<bool> = (vec4<f32>(x_692.x, x_692.y, x_692.z, x_692.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_698.x, x_698.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_710 : u32 = u_xlatu_loop_1;
    let x_711 : u32 = u_xlatu33;
    if ((x_710 < x_711)) {
    } else {
      break;
    }
    let x_714 : u32 = u_xlatu_loop_1;
    u_xlatu36 = (x_714 >> 2u);
    let x_718 : u32 = u_xlatu_loop_1;
    u_xlati37 = bitcast<i32>((x_718 & 3u));
    let x_721 : u32 = u_xlatu36;
    let x_724 : vec4<f32> = x_185.unity_LightIndices[bitcast<i32>(x_721)];
    let x_734 : i32 = u_xlati37;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_739 : vec4<u32> = indexable[x_734];
    u_xlat36 = dot(x_724, bitcast<vec4<f32>>(x_739));
    let x_742 : f32 = u_xlat36;
    u_xlatu36 = bitcast<u32>(i32(x_742));
    let x_746 : vec3<f32> = vs_TEXCOORD1;
    let x_758 : u32 = u_xlatu36;
    let x_761 : vec4<f32> = x_757.x_AdditionalLightsPosition[bitcast<i32>(x_758)];
    let x_764 : u32 = u_xlatu36;
    let x_767 : vec4<f32> = x_757.x_AdditionalLightsPosition[bitcast<i32>(x_764)];
    u_xlat7 = ((-(x_746) * vec3<f32>(x_761.w, x_761.w, x_761.w)) + vec3<f32>(x_767.x, x_767.y, x_767.z));
    let x_771 : vec3<f32> = u_xlat7;
    let x_772 : vec3<f32> = u_xlat7;
    u_xlat37 = dot(x_771, x_772);
    let x_774 : f32 = u_xlat37;
    u_xlat37 = max(x_774, 6.10351562e-05f);
    let x_779 : f32 = u_xlat37;
    u_xlat27.x = inverseSqrt(x_779);
    let x_782 : vec2<f32> = u_xlat27;
    let x_784 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_782.x, x_782.x, x_782.x) * x_784);
    let x_786 : f32 = u_xlat37;
    u_xlat27.x = (1.0f / x_786);
    let x_789 : f32 = u_xlat37;
    let x_790 : u32 = u_xlatu36;
    let x_793 : f32 = x_757.x_AdditionalLightsAttenuation[bitcast<i32>(x_790)].x;
    u_xlat37 = (x_789 * x_793);
    let x_795 : f32 = u_xlat37;
    let x_797 : f32 = u_xlat37;
    u_xlat37 = ((-(x_795) * x_797) + 1.0f);
    let x_800 : f32 = u_xlat37;
    u_xlat37 = max(x_800, 0.0f);
    let x_802 : f32 = u_xlat37;
    let x_803 : f32 = u_xlat37;
    u_xlat37 = (x_802 * x_803);
    let x_805 : f32 = u_xlat37;
    let x_807 : f32 = u_xlat27.x;
    u_xlat37 = (x_805 * x_807);
    let x_809 : u32 = u_xlatu36;
    let x_812 : vec4<f32> = x_757.x_AdditionalLightsSpotDir[bitcast<i32>(x_809)];
    let x_814 : vec3<f32> = u_xlat7;
    u_xlat27.x = dot(vec3<f32>(x_812.x, x_812.y, x_812.z), x_814);
    let x_818 : f32 = u_xlat27.x;
    let x_819 : u32 = u_xlatu36;
    let x_822 : f32 = x_757.x_AdditionalLightsAttenuation[bitcast<i32>(x_819)].z;
    let x_824 : u32 = u_xlatu36;
    let x_827 : f32 = x_757.x_AdditionalLightsAttenuation[bitcast<i32>(x_824)].w;
    u_xlat27.x = ((x_818 * x_822) + x_827);
    let x_831 : f32 = u_xlat27.x;
    u_xlat27.x = clamp(x_831, 0.0f, 1.0f);
    let x_835 : f32 = u_xlat27.x;
    let x_837 : f32 = u_xlat27.x;
    u_xlat27.x = (x_835 * x_837);
    let x_840 : f32 = u_xlat37;
    let x_842 : f32 = u_xlat27.x;
    u_xlat37 = (x_840 * x_842);
    let x_845 : u32 = u_xlatu36;
    u_xlatu27 = (x_845 >> 5u);
    let x_848 : u32 = u_xlatu36;
    u_xlati38 = (1i << bitcast<u32>((bitcast<i32>(x_848) & 31i)));
    let x_854 : i32 = u_xlati38;
    let x_856 : u32 = u_xlatu27;
    let x_859 : f32 = x_510.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_856)].el;
    u_xlati27 = bitcast<i32>((bitcast<u32>(x_854) & bitcast<u32>(x_859)));
    let x_863 : i32 = u_xlati27;
    if ((x_863 != 0i)) {
      let x_873 : u32 = u_xlatu36;
      let x_876 : f32 = x_872.x_AdditionalLightsLightTypes[bitcast<i32>(x_873)].el;
      u_xlati27 = i32(x_876);
      let x_878 : i32 = u_xlati27;
      u_xlati38 = select(1i, 0i, (x_878 != 0i));
      let x_882 : u32 = u_xlatu36;
      u_xlati39 = (bitcast<i32>(x_882) << bitcast<u32>(2i));
      let x_885 : i32 = u_xlati38;
      if ((x_885 != 0i)) {
        let x_890 : vec3<f32> = vs_TEXCOORD1;
        let x_892 : i32 = u_xlati39;
        let x_895 : i32 = u_xlati39;
        let x_899 : vec4<f32> = x_872.x_AdditionalLightsWorldToLights[((x_892 + 1i) / 4i)][((x_895 + 1i) % 4i)];
        let x_901 : vec3<f32> = (vec3<f32>(x_890.y, x_890.y, x_890.y) * vec3<f32>(x_899.x, x_899.y, x_899.w));
        let x_902 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_901.x, x_901.y, x_901.z, x_902.w);
        let x_904 : i32 = u_xlati39;
        let x_906 : i32 = u_xlati39;
        let x_909 : vec4<f32> = x_872.x_AdditionalLightsWorldToLights[(x_904 / 4i)][(x_906 % 4i)];
        let x_911 : vec3<f32> = vs_TEXCOORD1;
        let x_914 : vec4<f32> = u_xlat8;
        let x_916 : vec3<f32> = ((vec3<f32>(x_909.x, x_909.y, x_909.w) * vec3<f32>(x_911.x, x_911.x, x_911.x)) + vec3<f32>(x_914.x, x_914.y, x_914.z));
        let x_917 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_916.x, x_916.y, x_916.z, x_917.w);
        let x_919 : i32 = u_xlati39;
        let x_922 : i32 = u_xlati39;
        let x_926 : vec4<f32> = x_872.x_AdditionalLightsWorldToLights[((x_919 + 2i) / 4i)][((x_922 + 2i) % 4i)];
        let x_928 : vec3<f32> = vs_TEXCOORD1;
        let x_931 : vec4<f32> = u_xlat8;
        let x_933 : vec3<f32> = ((vec3<f32>(x_926.x, x_926.y, x_926.w) * vec3<f32>(x_928.z, x_928.z, x_928.z)) + vec3<f32>(x_931.x, x_931.y, x_931.z));
        let x_934 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_933.x, x_933.y, x_933.z, x_934.w);
        let x_936 : vec4<f32> = u_xlat8;
        let x_938 : i32 = u_xlati39;
        let x_941 : i32 = u_xlati39;
        let x_945 : vec4<f32> = x_872.x_AdditionalLightsWorldToLights[((x_938 + 3i) / 4i)][((x_941 + 3i) % 4i)];
        let x_947 : vec3<f32> = (vec3<f32>(x_936.x, x_936.y, x_936.z) + vec3<f32>(x_945.x, x_945.y, x_945.w));
        let x_948 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_947.x, x_947.y, x_947.z, x_948.w);
        let x_950 : vec4<f32> = u_xlat8;
        let x_952 : vec4<f32> = u_xlat8;
        let x_954 : vec2<f32> = (vec2<f32>(x_950.x, x_950.y) / vec2<f32>(x_952.z, x_952.z));
        let x_955 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_954.x, x_954.y, x_955.z, x_955.w);
        let x_957 : vec4<f32> = u_xlat8;
        let x_960 : vec2<f32> = ((vec2<f32>(x_957.x, x_957.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_961 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_960.x, x_960.y, x_961.z, x_961.w);
        let x_963 : vec4<f32> = u_xlat8;
        let x_967 : vec2<f32> = clamp(vec2<f32>(x_963.x, x_963.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_968 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_967.x, x_967.y, x_968.z, x_968.w);
        let x_970 : u32 = u_xlatu36;
        let x_973 : vec4<f32> = x_872.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_970)];
        let x_975 : vec4<f32> = u_xlat8;
        let x_978 : u32 = u_xlatu36;
        let x_981 : vec4<f32> = x_872.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_978)];
        let x_983 : vec2<f32> = ((vec2<f32>(x_973.x, x_973.y) * vec2<f32>(x_975.x, x_975.y)) + vec2<f32>(x_981.z, x_981.w));
        let x_984 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_983.x, x_983.y, x_984.z, x_984.w);
      } else {
        let x_988 : i32 = u_xlati27;
        u_xlatb27 = (x_988 == 1i);
        let x_990 : bool = u_xlatb27;
        u_xlati27 = select(0i, 1i, x_990);
        let x_992 : i32 = u_xlati27;
        if ((x_992 != 0i)) {
          let x_996 : vec3<f32> = vs_TEXCOORD1;
          let x_998 : i32 = u_xlati39;
          let x_1001 : i32 = u_xlati39;
          let x_1005 : vec4<f32> = x_872.x_AdditionalLightsWorldToLights[((x_998 + 1i) / 4i)][((x_1001 + 1i) % 4i)];
          u_xlat27 = (vec2<f32>(x_996.y, x_996.y) * vec2<f32>(x_1005.x, x_1005.y));
          let x_1008 : i32 = u_xlati39;
          let x_1010 : i32 = u_xlati39;
          let x_1013 : vec4<f32> = x_872.x_AdditionalLightsWorldToLights[(x_1008 / 4i)][(x_1010 % 4i)];
          let x_1015 : vec3<f32> = vs_TEXCOORD1;
          let x_1018 : vec2<f32> = u_xlat27;
          u_xlat27 = ((vec2<f32>(x_1013.x, x_1013.y) * vec2<f32>(x_1015.x, x_1015.x)) + x_1018);
          let x_1020 : i32 = u_xlati39;
          let x_1023 : i32 = u_xlati39;
          let x_1027 : vec4<f32> = x_872.x_AdditionalLightsWorldToLights[((x_1020 + 2i) / 4i)][((x_1023 + 2i) % 4i)];
          let x_1029 : vec3<f32> = vs_TEXCOORD1;
          let x_1032 : vec2<f32> = u_xlat27;
          u_xlat27 = ((vec2<f32>(x_1027.x, x_1027.y) * vec2<f32>(x_1029.z, x_1029.z)) + x_1032);
          let x_1034 : vec2<f32> = u_xlat27;
          let x_1035 : i32 = u_xlati39;
          let x_1038 : i32 = u_xlati39;
          let x_1042 : vec4<f32> = x_872.x_AdditionalLightsWorldToLights[((x_1035 + 3i) / 4i)][((x_1038 + 3i) % 4i)];
          u_xlat27 = (x_1034 + vec2<f32>(x_1042.x, x_1042.y));
          let x_1045 : vec2<f32> = u_xlat27;
          u_xlat27 = ((x_1045 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1048 : vec2<f32> = u_xlat27;
          u_xlat27 = fract(x_1048);
          let x_1050 : u32 = u_xlatu36;
          let x_1053 : vec4<f32> = x_872.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1050)];
          let x_1055 : vec2<f32> = u_xlat27;
          let x_1057 : u32 = u_xlatu36;
          let x_1060 : vec4<f32> = x_872.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1057)];
          let x_1062 : vec2<f32> = ((vec2<f32>(x_1053.x, x_1053.y) * x_1055) + vec2<f32>(x_1060.z, x_1060.w));
          let x_1063 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1062.x, x_1062.y, x_1063.z, x_1063.w);
        } else {
          let x_1067 : vec3<f32> = vs_TEXCOORD1;
          let x_1069 : i32 = u_xlati39;
          let x_1072 : i32 = u_xlati39;
          let x_1076 : vec4<f32> = x_872.x_AdditionalLightsWorldToLights[((x_1069 + 1i) / 4i)][((x_1072 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_1067.y, x_1067.y, x_1067.y, x_1067.y) * x_1076);
          let x_1078 : i32 = u_xlati39;
          let x_1080 : i32 = u_xlati39;
          let x_1083 : vec4<f32> = x_872.x_AdditionalLightsWorldToLights[(x_1078 / 4i)][(x_1080 % 4i)];
          let x_1084 : vec3<f32> = vs_TEXCOORD1;
          let x_1087 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1083 * vec4<f32>(x_1084.x, x_1084.x, x_1084.x, x_1084.x)) + x_1087);
          let x_1089 : i32 = u_xlati39;
          let x_1092 : i32 = u_xlati39;
          let x_1096 : vec4<f32> = x_872.x_AdditionalLightsWorldToLights[((x_1089 + 2i) / 4i)][((x_1092 + 2i) % 4i)];
          let x_1097 : vec3<f32> = vs_TEXCOORD1;
          let x_1100 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1096 * vec4<f32>(x_1097.z, x_1097.z, x_1097.z, x_1097.z)) + x_1100);
          let x_1102 : vec4<f32> = u_xlat9;
          let x_1103 : i32 = u_xlati39;
          let x_1106 : i32 = u_xlati39;
          let x_1110 : vec4<f32> = x_872.x_AdditionalLightsWorldToLights[((x_1103 + 3i) / 4i)][((x_1106 + 3i) % 4i)];
          u_xlat9 = (x_1102 + x_1110);
          let x_1112 : vec4<f32> = u_xlat9;
          let x_1114 : vec4<f32> = u_xlat9;
          let x_1116 : vec3<f32> = (vec3<f32>(x_1112.x, x_1112.y, x_1112.z) / vec3<f32>(x_1114.w, x_1114.w, x_1114.w));
          let x_1117 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1116.x, x_1116.y, x_1116.z, x_1117.w);
          let x_1119 : vec4<f32> = u_xlat9;
          let x_1121 : vec4<f32> = u_xlat9;
          u_xlat27.x = dot(vec3<f32>(x_1119.x, x_1119.y, x_1119.z), vec3<f32>(x_1121.x, x_1121.y, x_1121.z));
          let x_1126 : f32 = u_xlat27.x;
          u_xlat27.x = inverseSqrt(x_1126);
          let x_1129 : vec2<f32> = u_xlat27;
          let x_1131 : vec4<f32> = u_xlat9;
          let x_1133 : vec3<f32> = (vec3<f32>(x_1129.x, x_1129.x, x_1129.x) * vec3<f32>(x_1131.x, x_1131.y, x_1131.z));
          let x_1134 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1133.x, x_1133.y, x_1133.z, x_1134.w);
          let x_1136 : vec4<f32> = u_xlat9;
          u_xlat27.x = dot(abs(vec3<f32>(x_1136.x, x_1136.y, x_1136.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1143 : f32 = u_xlat27.x;
          u_xlat27.x = max(x_1143, 0.000001f);
          let x_1148 : f32 = u_xlat27.x;
          u_xlat27.x = (1.0f / x_1148);
          let x_1152 : vec2<f32> = u_xlat27;
          let x_1154 : vec4<f32> = u_xlat9;
          u_xlat10 = (vec3<f32>(x_1152.x, x_1152.x, x_1152.x) * vec3<f32>(x_1154.z, x_1154.x, x_1154.y));
          let x_1158 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_1158);
          let x_1162 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_1162, 0.0f, 1.0f);
          let x_1166 : vec3<f32> = u_xlat10;
          let x_1169 : vec4<bool> = (vec4<f32>(x_1166.y, x_1166.z, x_1166.y, x_1166.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb30 = vec2<bool>(x_1169.x, x_1169.y);
          let x_1173 : bool = u_xlatb30.x;
          if (x_1173) {
            let x_1178 : f32 = u_xlat10.x;
            x_1174 = x_1178;
          } else {
            let x_1181 : f32 = u_xlat10.x;
            x_1174 = -(x_1181);
          }
          let x_1183 : f32 = x_1174;
          u_xlat30.x = x_1183;
          let x_1186 : bool = u_xlatb30.y;
          if (x_1186) {
            let x_1191 : f32 = u_xlat10.x;
            x_1187 = x_1191;
          } else {
            let x_1194 : f32 = u_xlat10.x;
            x_1187 = -(x_1194);
          }
          let x_1196 : f32 = x_1187;
          u_xlat30.y = x_1196;
          let x_1198 : vec4<f32> = u_xlat9;
          let x_1200 : vec2<f32> = u_xlat27;
          let x_1203 : vec2<f32> = u_xlat30;
          u_xlat27 = ((vec2<f32>(x_1198.x, x_1198.y) * vec2<f32>(x_1200.x, x_1200.x)) + x_1203);
          let x_1205 : vec2<f32> = u_xlat27;
          u_xlat27 = ((x_1205 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1208 : vec2<f32> = u_xlat27;
          u_xlat27 = clamp(x_1208, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1212 : u32 = u_xlatu36;
          let x_1215 : vec4<f32> = x_872.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1212)];
          let x_1217 : vec2<f32> = u_xlat27;
          let x_1219 : u32 = u_xlatu36;
          let x_1222 : vec4<f32> = x_872.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1219)];
          let x_1224 : vec2<f32> = ((vec2<f32>(x_1215.x, x_1215.y) * x_1217) + vec2<f32>(x_1222.z, x_1222.w));
          let x_1225 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1224.x, x_1224.y, x_1225.z, x_1225.w);
        }
      }
      let x_1232 : vec4<f32> = u_xlat8;
      let x_1235 : f32 = x_44.x_GlobalMipBias.x;
      let x_1236 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1232.x, x_1232.y), x_1235);
      u_xlat8 = x_1236;
      let x_1238 : bool = u_xlatb5.y;
      if (x_1238) {
        let x_1243 : f32 = u_xlat8.w;
        x_1239 = x_1243;
      } else {
        let x_1246 : f32 = u_xlat8.x;
        x_1239 = x_1246;
      }
      let x_1247 : f32 = x_1239;
      u_xlat27.x = x_1247;
      let x_1250 : bool = u_xlatb5.x;
      if (x_1250) {
        let x_1254 : vec4<f32> = u_xlat8;
        x_1251 = vec3<f32>(x_1254.x, x_1254.y, x_1254.z);
      } else {
        let x_1257 : vec2<f32> = u_xlat27;
        x_1251 = vec3<f32>(x_1257.x, x_1257.x, x_1257.x);
      }
      let x_1259 : vec3<f32> = x_1251;
      let x_1260 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1259.x, x_1259.y, x_1259.z, x_1260.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_1266 : vec4<f32> = u_xlat8;
    let x_1268 : u32 = u_xlatu36;
    let x_1271 : vec4<f32> = x_757.x_AdditionalLightsColor[bitcast<i32>(x_1268)];
    let x_1273 : vec3<f32> = (vec3<f32>(x_1266.x, x_1266.y, x_1266.z) * vec3<f32>(x_1271.x, x_1271.y, x_1271.z));
    let x_1274 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1273.x, x_1273.y, x_1273.z, x_1274.w);
    let x_1276 : vec4<f32> = u_xlat1;
    let x_1278 : vec4<f32> = u_xlat8;
    let x_1280 : vec3<f32> = (vec3<f32>(x_1276.x, x_1276.x, x_1276.x) * vec3<f32>(x_1278.x, x_1278.y, x_1278.z));
    let x_1281 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1280.x, x_1280.y, x_1280.z, x_1281.w);
    let x_1283 : f32 = u_xlat37;
    let x_1285 : vec4<f32> = u_xlat8;
    let x_1287 : vec3<f32> = (vec3<f32>(x_1283, x_1283, x_1283) * vec3<f32>(x_1285.x, x_1285.y, x_1285.z));
    let x_1288 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1287.x, x_1287.y, x_1287.z, x_1288.w);
    let x_1290 : vec4<f32> = u_xlat2;
    let x_1292 : vec3<f32> = u_xlat7;
    u_xlat36 = dot(vec3<f32>(x_1290.x, x_1290.y, x_1290.z), x_1292);
    let x_1294 : f32 = u_xlat36;
    u_xlat36 = clamp(x_1294, 0.0f, 1.0f);
    let x_1296 : f32 = u_xlat36;
    let x_1298 : vec4<f32> = u_xlat8;
    u_xlat7 = (vec3<f32>(x_1296, x_1296, x_1296) * vec3<f32>(x_1298.x, x_1298.y, x_1298.z));
    let x_1301 : vec3<f32> = u_xlat7;
    let x_1302 : vec4<f32> = u_xlat1;
    let x_1305 : vec3<f32> = u_xlat6;
    u_xlat6 = ((x_1301 * vec3<f32>(x_1302.y, x_1302.z, x_1302.w)) + x_1305);

    continuing {
      let x_1307 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1307 + bitcast<u32>(1i));
    }
  }
  let x_1309 : vec3<f32> = u_xlat3;
  let x_1310 : vec4<f32> = u_xlat1;
  let x_1313 : vec4<f32> = u_xlat4;
  let x_1315 : vec3<f32> = ((x_1309 * vec3<f32>(x_1310.y, x_1310.z, x_1310.w)) + vec3<f32>(x_1313.x, x_1313.y, x_1313.z));
  let x_1316 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1315.x, x_1315.y, x_1315.z, x_1316.w);
  let x_1318 : vec3<f32> = u_xlat6;
  let x_1319 : vec4<f32> = u_xlat1;
  let x_1321 : vec3<f32> = (x_1318 + vec3<f32>(x_1319.x, x_1319.y, x_1319.z));
  let x_1322 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1321.x, x_1321.y, x_1321.z, x_1322.w);
  let x_1325 : f32 = u_xlat11.x;
  let x_1327 : f32 = u_xlat11.x;
  u_xlat11.x = (x_1325 * -(x_1327));
  let x_1332 : f32 = u_xlat11.x;
  u_xlat11.x = exp2(x_1332);
  let x_1335 : vec4<f32> = u_xlat1;
  let x_1339 : vec4<f32> = x_44.unity_FogColor;
  let x_1342 : vec3<f32> = (vec3<f32>(x_1335.x, x_1335.y, x_1335.z) + -(vec3<f32>(x_1339.x, x_1339.y, x_1339.z)));
  let x_1343 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1342.x, x_1342.y, x_1342.z, x_1343.w);
  let x_1347 : vec3<f32> = u_xlat11;
  let x_1349 : vec4<f32> = u_xlat1;
  let x_1353 : vec4<f32> = x_44.unity_FogColor;
  let x_1355 : vec3<f32> = ((vec3<f32>(x_1347.x, x_1347.x, x_1347.x) * vec3<f32>(x_1349.x, x_1349.y, x_1349.z)) + vec3<f32>(x_1353.x, x_1353.y, x_1353.z));
  let x_1356 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1355.x, x_1355.y, x_1355.z, x_1356.w);
  let x_1359 : f32 = x_57.x_Surface;
  u_xlatb11 = (x_1359 == 1.0f);
  let x_1361 : bool = u_xlatb11;
  let x_1362 : bool = u_xlatb22;
  u_xlatb11 = (x_1361 | x_1362);
  let x_1364 : bool = u_xlatb11;
  if (x_1364) {
    let x_1369 : f32 = u_xlat0.x;
    x_1365 = x_1369;
  } else {
    x_1365 = 1.0f;
  }
  let x_1371 : f32 = x_1365;
  SV_Target0.w = x_1371;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}

