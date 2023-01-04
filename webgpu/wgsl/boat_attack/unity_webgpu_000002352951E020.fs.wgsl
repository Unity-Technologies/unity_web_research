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
  x_ScaleBiasRt : vec4<f32>,
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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(1) @binding(3) var<uniform> x_55 : UnityPerMaterial;

@group(0) @binding(7) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_93 : UnityPerDraw;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_280 : MainLightShadows;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_363 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(1) var<uniform> x_599 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_701 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlatb11 : bool;
  var x_100 : f32;
  var u_xlatb1 : bool;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat31 : f32;
  var u_xlat32 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb13 : vec2<bool>;
  var u_xlatb23 : bool;
  var x_313 : f32;
  var u_xlat23 : f32;
  var u_xlat4 : vec4<f32>;
  var x_449 : f32;
  var x_460 : vec3<f32>;
  var u_xlatu31 : u32;
  var u_xlatb4 : vec2<bool>;
  var u_xlat5 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu24 : u32;
  var u_xlati34 : i32;
  var u_xlat24 : f32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat6 : vec3<f32>;
  var u_xlat34 : f32;
  var u_xlat35 : f32;
  var u_xlatu35 : u32;
  var u_xlati36 : i32;
  var u_xlati35 : i32;
  var u_xlati7 : i32;
  var u_xlat17 : vec3<f32>;
  var u_xlatb35 : bool;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlatb7 : vec4<bool>;
  var u_xlat7 : vec4<f32>;
  var x_1005 : f32;
  var x_1018 : f32;
  var x_1080 : f32;
  var x_1091 : vec3<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlatb10 : bool;
  var x_1168 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_40 : vec2<f32> = vs_TEXCOORD0;
  let x_49 : f32 = x_43.x_GlobalMipBias.x;
  let x_50 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_40, x_49);
  u_xlat0 = x_50;
  let x_51 : vec4<f32> = u_xlat0;
  let x_58 : vec4<f32> = x_55.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_51.w, x_51.x, x_51.y, x_51.z) * vec4<f32>(x_58.w, x_58.x, x_58.y, x_58.z));
  let x_63 : vec4<f32> = hlslcc_FragCoord;
  let x_67 : f32 = x_43.x_DitheringTextureInvSize;
  let x_69 : vec2<f32> = (vec2<f32>(x_63.x, x_63.y) * vec2<f32>(x_67, x_67));
  let x_70 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_69.x, x_69.y, x_70.z);
  let x_77 : vec3<f32> = u_xlat1;
  let x_80 : f32 = x_43.x_GlobalMipBias.x;
  let x_81 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_77.x, x_77.y), x_80);
  u_xlat1.x = x_81.w;
  let x_96 : f32 = x_93.unity_LODFade.x;
  u_xlatb11 = (x_96 >= 0.0f);
  let x_99 : bool = u_xlatb11;
  if (x_99) {
    let x_104 : f32 = u_xlat1.x;
    x_100 = abs(x_104);
  } else {
    let x_108 : f32 = u_xlat1.x;
    x_100 = -(abs(x_108));
  }
  let x_111 : f32 = x_100;
  u_xlat1.x = x_111;
  let x_114 : f32 = u_xlat1.x;
  let x_117 : f32 = x_93.unity_LODFade.x;
  u_xlat1.x = (-(x_114) + x_117);
  let x_122 : f32 = u_xlat1.x;
  u_xlatb1 = (x_122 < 0.0f);
  let x_124 : bool = u_xlatb1;
  if (((select(0i, 1i, x_124) * -1i) != 0i)) {
    discard;
  }
  let x_135 : vec3<f32> = vs_TEXCOORD2;
  let x_136 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_135, x_136);
  let x_140 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_140);
  let x_143 : vec3<f32> = u_xlat1;
  let x_145 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1 = (vec3<f32>(x_143.x, x_143.x, x_143.x) * x_145);
  let x_154 : vec2<f32> = vs_TEXCOORD7;
  let x_156 : f32 = x_43.x_GlobalMipBias.x;
  let x_157 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_154, x_156);
  u_xlat2 = x_157;
  let x_163 : vec2<f32> = vs_TEXCOORD7;
  let x_165 : f32 = x_43.x_GlobalMipBias.x;
  let x_166 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_163, x_165);
  u_xlat3 = vec3<f32>(x_166.x, x_166.y, x_166.z);
  let x_168 : vec4<f32> = u_xlat2;
  let x_172 : vec3<f32> = (vec3<f32>(x_168.x, x_168.y, x_168.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_173 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_172.x, x_172.y, x_172.z, x_173.w);
  let x_176 : vec3<f32> = u_xlat1;
  let x_177 : vec4<f32> = u_xlat2;
  u_xlat31 = dot(x_176, vec3<f32>(x_177.x, x_177.y, x_177.z));
  let x_180 : f32 = u_xlat31;
  u_xlat31 = (x_180 + 0.5f);
  let x_183 : f32 = u_xlat31;
  let x_185 : vec3<f32> = u_xlat3;
  let x_186 : vec3<f32> = (vec3<f32>(x_183, x_183, x_183) * x_185);
  let x_187 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_186.x, x_186.y, x_186.z, x_187.w);
  let x_190 : f32 = u_xlat2.w;
  u_xlat31 = max(x_190, 0.0001f);
  let x_193 : vec4<f32> = u_xlat2;
  let x_195 : f32 = u_xlat31;
  let x_197 : vec3<f32> = (vec3<f32>(x_193.x, x_193.y, x_193.z) / vec3<f32>(x_195, x_195, x_195));
  let x_198 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_197.x, x_197.y, x_197.z, x_198.w);
  let x_202 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_203 : vec2<f32> = vec2<f32>(x_202.x, x_202.y);
  let x_207 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_203.x, x_203.y));
  let x_208 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_207.x, x_207.y, x_208.z);
  let x_210 : vec3<f32> = u_xlat3;
  let x_212 : vec4<f32> = hlslcc_FragCoord;
  let x_214 : vec2<f32> = (vec2<f32>(x_210.x, x_210.y) * vec2<f32>(x_212.x, x_212.y));
  let x_215 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_214.x, x_214.y, x_215.z);
  let x_219 : f32 = u_xlat3.y;
  let x_222 : f32 = x_43.x_ScaleBiasRt.x;
  let x_225 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat31 = ((x_219 * x_222) + x_225);
  let x_227 : f32 = u_xlat31;
  u_xlat3.z = (-(x_227) + 1.0f);
  let x_236 : vec3<f32> = u_xlat3;
  let x_239 : f32 = x_43.x_GlobalMipBias.x;
  let x_240 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_236.x, x_236.z), x_239);
  u_xlat31 = x_240.x;
  let x_243 : f32 = u_xlat31;
  u_xlat32 = (x_243 + -1.0f);
  let x_248 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_249 : f32 = u_xlat32;
  u_xlat32 = ((x_248 * x_249) + 1.0f);
  let x_252 : f32 = u_xlat31;
  u_xlat31 = min(x_252, 1.0f);
  let x_256 : vec4<f32> = vs_TEXCOORD6;
  let x_257 : vec2<f32> = vec2<f32>(x_256.x, x_256.y);
  let x_259 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_257.x, x_257.y, x_259);
  let x_271 : vec3<f32> = txVec0;
  let x_273 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_271.xy, x_271.z);
  u_xlat3.x = x_273;
  let x_282 : f32 = x_280.x_MainLightShadowParams.x;
  u_xlat13.x = (-(x_282) + 1.0f);
  let x_287 : f32 = u_xlat3.x;
  let x_289 : f32 = x_280.x_MainLightShadowParams.x;
  let x_292 : f32 = u_xlat13.x;
  u_xlat3.x = ((x_287 * x_289) + x_292);
  let x_299 : f32 = vs_TEXCOORD6.z;
  u_xlatb13.x = (0.0f >= x_299);
  let x_304 : f32 = vs_TEXCOORD6.z;
  u_xlatb23 = (x_304 >= 1.0f);
  let x_306 : bool = u_xlatb23;
  let x_308 : bool = u_xlatb13.x;
  u_xlatb13.x = (x_306 | x_308);
  let x_312 : bool = u_xlatb13.x;
  if (x_312) {
    x_313 = 1.0f;
  } else {
    let x_318 : f32 = u_xlat3.x;
    x_313 = x_318;
  }
  let x_319 : f32 = x_313;
  u_xlat3.x = x_319;
  let x_322 : vec3<f32> = vs_TEXCOORD1;
  let x_326 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  u_xlat13 = (x_322 + -(x_326));
  let x_329 : vec3<f32> = u_xlat13;
  let x_330 : vec3<f32> = u_xlat13;
  u_xlat13.x = dot(x_329, x_330);
  let x_334 : f32 = u_xlat13.x;
  let x_336 : f32 = x_280.x_MainLightShadowParams.z;
  let x_339 : f32 = x_280.x_MainLightShadowParams.w;
  u_xlat13.x = ((x_334 * x_336) + x_339);
  let x_343 : f32 = u_xlat13.x;
  u_xlat13.x = clamp(x_343, 0.0f, 1.0f);
  let x_348 : f32 = u_xlat3.x;
  u_xlat23 = (-(x_348) + 1.0f);
  let x_352 : f32 = u_xlat13.x;
  let x_353 : f32 = u_xlat23;
  let x_356 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_352 * x_353) + x_356);
  let x_365 : f32 = x_363.x_MainLightCookieTextureFormat;
  u_xlatb13.x = !((x_365 == -1.0f));
  let x_369 : bool = u_xlatb13.x;
  if (x_369) {
    let x_372 : vec3<f32> = vs_TEXCOORD1;
    let x_375 : vec4<f32> = x_363.x_MainLightWorldToLight[1i];
    let x_377 : vec2<f32> = (vec2<f32>(x_372.y, x_372.y) * vec2<f32>(x_375.x, x_375.y));
    let x_378 : vec3<f32> = u_xlat13;
    u_xlat13 = vec3<f32>(x_377.x, x_377.y, x_378.z);
    let x_381 : vec4<f32> = x_363.x_MainLightWorldToLight[0i];
    let x_383 : vec3<f32> = vs_TEXCOORD1;
    let x_386 : vec3<f32> = u_xlat13;
    let x_388 : vec2<f32> = ((vec2<f32>(x_381.x, x_381.y) * vec2<f32>(x_383.x, x_383.x)) + vec2<f32>(x_386.x, x_386.y));
    let x_389 : vec3<f32> = u_xlat13;
    u_xlat13 = vec3<f32>(x_388.x, x_388.y, x_389.z);
    let x_392 : vec4<f32> = x_363.x_MainLightWorldToLight[2i];
    let x_394 : vec3<f32> = vs_TEXCOORD1;
    let x_397 : vec3<f32> = u_xlat13;
    let x_399 : vec2<f32> = ((vec2<f32>(x_392.x, x_392.y) * vec2<f32>(x_394.z, x_394.z)) + vec2<f32>(x_397.x, x_397.y));
    let x_400 : vec3<f32> = u_xlat13;
    u_xlat13 = vec3<f32>(x_399.x, x_399.y, x_400.z);
    let x_402 : vec3<f32> = u_xlat13;
    let x_406 : vec4<f32> = x_363.x_MainLightWorldToLight[3i];
    let x_408 : vec2<f32> = (vec2<f32>(x_402.x, x_402.y) + vec2<f32>(x_406.x, x_406.y));
    let x_409 : vec3<f32> = u_xlat13;
    u_xlat13 = vec3<f32>(x_408.x, x_408.y, x_409.z);
    let x_411 : vec3<f32> = u_xlat13;
    let x_415 : vec2<f32> = ((vec2<f32>(x_411.x, x_411.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_416 : vec3<f32> = u_xlat13;
    u_xlat13 = vec3<f32>(x_415.x, x_415.y, x_416.z);
    let x_424 : vec3<f32> = u_xlat13;
    let x_427 : f32 = x_43.x_GlobalMipBias.x;
    let x_428 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_424.x, x_424.y), x_427);
    u_xlat4 = x_428;
    let x_430 : f32 = x_363.x_MainLightCookieTextureFormat;
    let x_432 : f32 = x_363.x_MainLightCookieTextureFormat;
    let x_434 : f32 = x_363.x_MainLightCookieTextureFormat;
    let x_436 : f32 = x_363.x_MainLightCookieTextureFormat;
    let x_437 : vec4<f32> = vec4<f32>(x_430, x_432, x_434, x_436);
    let x_445 : vec4<bool> = (vec4<f32>(x_437.x, x_437.y, x_437.z, x_437.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb13 = vec2<bool>(x_445.x, x_445.y);
    let x_448 : bool = u_xlatb13.y;
    if (x_448) {
      let x_453 : f32 = u_xlat4.w;
      x_449 = x_453;
    } else {
      let x_456 : f32 = u_xlat4.x;
      x_449 = x_456;
    }
    let x_457 : f32 = x_449;
    u_xlat23 = x_457;
    let x_459 : bool = u_xlatb13.x;
    if (x_459) {
      let x_463 : vec4<f32> = u_xlat4;
      x_460 = vec3<f32>(x_463.x, x_463.y, x_463.z);
    } else {
      let x_466 : f32 = u_xlat23;
      x_460 = vec3<f32>(x_466, x_466, x_466);
    }
    let x_468 : vec3<f32> = x_460;
    u_xlat13 = x_468;
  } else {
    u_xlat13.x = 1.0f;
    u_xlat13.y = 1.0f;
    u_xlat13.z = 1.0f;
  }
  let x_473 : vec3<f32> = u_xlat13;
  let x_475 : vec4<f32> = x_43.x_MainLightColor;
  u_xlat13 = (x_473 * vec3<f32>(x_475.x, x_475.y, x_475.z));
  let x_478 : f32 = u_xlat32;
  let x_480 : vec3<f32> = u_xlat13;
  u_xlat13 = (vec3<f32>(x_478, x_478, x_478) * x_480);
  let x_482 : f32 = u_xlat31;
  let x_484 : vec4<f32> = u_xlat2;
  let x_486 : vec3<f32> = (vec3<f32>(x_482, x_482, x_482) * vec3<f32>(x_484.x, x_484.y, x_484.z));
  let x_487 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_486.x, x_486.y, x_486.z, x_487.w);
  let x_490 : f32 = u_xlat3.x;
  let x_493 : f32 = x_93.unity_LightData.z;
  u_xlat31 = (x_490 * x_493);
  let x_495 : f32 = u_xlat31;
  let x_497 : vec3<f32> = u_xlat13;
  u_xlat3 = (vec3<f32>(x_495, x_495, x_495) * x_497);
  let x_499 : vec3<f32> = u_xlat1;
  let x_501 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat31 = dot(x_499, vec3<f32>(x_501.x, x_501.y, x_501.z));
  let x_504 : f32 = u_xlat31;
  u_xlat31 = clamp(x_504, 0.0f, 1.0f);
  let x_506 : f32 = u_xlat31;
  let x_508 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_506, x_506, x_506) * x_508);
  let x_510 : vec4<f32> = u_xlat0;
  let x_512 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_510.y, x_510.z, x_510.w) * x_512);
  let x_515 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_517 : f32 = x_93.unity_LightData.y;
  u_xlat31 = min(x_515, x_517);
  let x_521 : f32 = u_xlat31;
  u_xlatu31 = bitcast<u32>(i32(x_521));
  let x_526 : f32 = x_363.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_528 : f32 = x_363.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_530 : f32 = x_363.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_532 : f32 = x_363.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_533 : vec4<f32> = vec4<f32>(x_526, x_528, x_530, x_532);
  let x_539 : vec4<bool> = (vec4<f32>(x_533.x, x_533.y, x_533.z, x_533.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb4 = vec2<bool>(x_539.x, x_539.y);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_551 : u32 = u_xlatu_loop_1;
    let x_552 : u32 = u_xlatu31;
    if ((x_551 < x_552)) {
    } else {
      break;
    }
    let x_555 : u32 = u_xlatu_loop_1;
    u_xlatu24 = (x_555 >> 2u);
    let x_559 : u32 = u_xlatu_loop_1;
    u_xlati34 = bitcast<i32>((x_559 & 3u));
    let x_563 : u32 = u_xlatu24;
    let x_566 : vec4<f32> = x_93.unity_LightIndices[bitcast<i32>(x_563)];
    let x_576 : i32 = u_xlati34;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_581 : vec4<u32> = indexable[x_576];
    u_xlat24 = dot(x_566, bitcast<vec4<f32>>(x_581));
    let x_584 : f32 = u_xlat24;
    u_xlatu24 = bitcast<u32>(i32(x_584));
    let x_588 : vec3<f32> = vs_TEXCOORD1;
    let x_600 : u32 = u_xlatu24;
    let x_603 : vec4<f32> = x_599.x_AdditionalLightsPosition[bitcast<i32>(x_600)];
    let x_606 : u32 = u_xlatu24;
    let x_609 : vec4<f32> = x_599.x_AdditionalLightsPosition[bitcast<i32>(x_606)];
    u_xlat6 = ((-(x_588) * vec3<f32>(x_603.w, x_603.w, x_603.w)) + vec3<f32>(x_609.x, x_609.y, x_609.z));
    let x_613 : vec3<f32> = u_xlat6;
    let x_614 : vec3<f32> = u_xlat6;
    u_xlat34 = dot(x_613, x_614);
    let x_616 : f32 = u_xlat34;
    u_xlat34 = max(x_616, 6.10351562e-05f);
    let x_620 : f32 = u_xlat34;
    u_xlat35 = inverseSqrt(x_620);
    let x_622 : f32 = u_xlat35;
    let x_624 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_622, x_622, x_622) * x_624);
    let x_626 : f32 = u_xlat34;
    u_xlat35 = (1.0f / x_626);
    let x_628 : f32 = u_xlat34;
    let x_629 : u32 = u_xlatu24;
    let x_632 : f32 = x_599.x_AdditionalLightsAttenuation[bitcast<i32>(x_629)].x;
    u_xlat34 = (x_628 * x_632);
    let x_634 : f32 = u_xlat34;
    let x_636 : f32 = u_xlat34;
    u_xlat34 = ((-(x_634) * x_636) + 1.0f);
    let x_639 : f32 = u_xlat34;
    u_xlat34 = max(x_639, 0.0f);
    let x_641 : f32 = u_xlat34;
    let x_642 : f32 = u_xlat34;
    u_xlat34 = (x_641 * x_642);
    let x_644 : f32 = u_xlat34;
    let x_645 : f32 = u_xlat35;
    u_xlat34 = (x_644 * x_645);
    let x_647 : u32 = u_xlatu24;
    let x_650 : vec4<f32> = x_599.x_AdditionalLightsSpotDir[bitcast<i32>(x_647)];
    let x_652 : vec3<f32> = u_xlat6;
    u_xlat35 = dot(vec3<f32>(x_650.x, x_650.y, x_650.z), x_652);
    let x_654 : f32 = u_xlat35;
    let x_655 : u32 = u_xlatu24;
    let x_658 : f32 = x_599.x_AdditionalLightsAttenuation[bitcast<i32>(x_655)].z;
    let x_660 : u32 = u_xlatu24;
    let x_663 : f32 = x_599.x_AdditionalLightsAttenuation[bitcast<i32>(x_660)].w;
    u_xlat35 = ((x_654 * x_658) + x_663);
    let x_665 : f32 = u_xlat35;
    u_xlat35 = clamp(x_665, 0.0f, 1.0f);
    let x_667 : f32 = u_xlat35;
    let x_668 : f32 = u_xlat35;
    u_xlat35 = (x_667 * x_668);
    let x_670 : f32 = u_xlat34;
    let x_671 : f32 = u_xlat35;
    u_xlat34 = (x_670 * x_671);
    let x_674 : u32 = u_xlatu24;
    u_xlatu35 = (x_674 >> 5u);
    let x_677 : u32 = u_xlatu24;
    u_xlati36 = (1i << bitcast<u32>((bitcast<i32>(x_677) & 31i)));
    let x_683 : i32 = u_xlati36;
    let x_685 : u32 = u_xlatu35;
    let x_688 : f32 = x_363.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_685)].el;
    u_xlati35 = bitcast<i32>((bitcast<u32>(x_683) & bitcast<u32>(x_688)));
    let x_692 : i32 = u_xlati35;
    if ((x_692 != 0i)) {
      let x_702 : u32 = u_xlatu24;
      let x_705 : f32 = x_701.x_AdditionalLightsLightTypes[bitcast<i32>(x_702)].el;
      u_xlati35 = i32(x_705);
      let x_707 : i32 = u_xlati35;
      u_xlati36 = select(1i, 0i, (x_707 != 0i));
      let x_711 : u32 = u_xlatu24;
      u_xlati7 = (bitcast<i32>(x_711) << bitcast<u32>(2i));
      let x_714 : i32 = u_xlati36;
      if ((x_714 != 0i)) {
        let x_719 : vec3<f32> = vs_TEXCOORD1;
        let x_721 : i32 = u_xlati7;
        let x_724 : i32 = u_xlati7;
        let x_728 : vec4<f32> = x_701.x_AdditionalLightsWorldToLights[((x_721 + 1i) / 4i)][((x_724 + 1i) % 4i)];
        u_xlat17 = (vec3<f32>(x_719.y, x_719.y, x_719.y) * vec3<f32>(x_728.x, x_728.y, x_728.w));
        let x_731 : i32 = u_xlati7;
        let x_733 : i32 = u_xlati7;
        let x_736 : vec4<f32> = x_701.x_AdditionalLightsWorldToLights[(x_731 / 4i)][(x_733 % 4i)];
        let x_738 : vec3<f32> = vs_TEXCOORD1;
        let x_741 : vec3<f32> = u_xlat17;
        u_xlat17 = ((vec3<f32>(x_736.x, x_736.y, x_736.w) * vec3<f32>(x_738.x, x_738.x, x_738.x)) + x_741);
        let x_743 : i32 = u_xlati7;
        let x_746 : i32 = u_xlati7;
        let x_750 : vec4<f32> = x_701.x_AdditionalLightsWorldToLights[((x_743 + 2i) / 4i)][((x_746 + 2i) % 4i)];
        let x_752 : vec3<f32> = vs_TEXCOORD1;
        let x_755 : vec3<f32> = u_xlat17;
        u_xlat17 = ((vec3<f32>(x_750.x, x_750.y, x_750.w) * vec3<f32>(x_752.z, x_752.z, x_752.z)) + x_755);
        let x_757 : vec3<f32> = u_xlat17;
        let x_758 : i32 = u_xlati7;
        let x_761 : i32 = u_xlati7;
        let x_765 : vec4<f32> = x_701.x_AdditionalLightsWorldToLights[((x_758 + 3i) / 4i)][((x_761 + 3i) % 4i)];
        u_xlat17 = (x_757 + vec3<f32>(x_765.x, x_765.y, x_765.w));
        let x_768 : vec3<f32> = u_xlat17;
        let x_770 : vec3<f32> = u_xlat17;
        let x_772 : vec2<f32> = (vec2<f32>(x_768.x, x_768.y) / vec2<f32>(x_770.z, x_770.z));
        let x_773 : vec3<f32> = u_xlat17;
        u_xlat17 = vec3<f32>(x_772.x, x_772.y, x_773.z);
        let x_775 : vec3<f32> = u_xlat17;
        let x_778 : vec2<f32> = ((vec2<f32>(x_775.x, x_775.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_779 : vec3<f32> = u_xlat17;
        u_xlat17 = vec3<f32>(x_778.x, x_778.y, x_779.z);
        let x_781 : vec3<f32> = u_xlat17;
        let x_785 : vec2<f32> = clamp(vec2<f32>(x_781.x, x_781.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_786 : vec3<f32> = u_xlat17;
        u_xlat17 = vec3<f32>(x_785.x, x_785.y, x_786.z);
        let x_788 : u32 = u_xlatu24;
        let x_791 : vec4<f32> = x_701.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_788)];
        let x_793 : vec3<f32> = u_xlat17;
        let x_796 : u32 = u_xlatu24;
        let x_799 : vec4<f32> = x_701.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_796)];
        let x_801 : vec2<f32> = ((vec2<f32>(x_791.x, x_791.y) * vec2<f32>(x_793.x, x_793.y)) + vec2<f32>(x_799.z, x_799.w));
        let x_802 : vec3<f32> = u_xlat17;
        u_xlat17 = vec3<f32>(x_801.x, x_801.y, x_802.z);
      } else {
        let x_806 : i32 = u_xlati35;
        u_xlatb35 = (x_806 == 1i);
        let x_808 : bool = u_xlatb35;
        u_xlati35 = select(0i, 1i, x_808);
        let x_810 : i32 = u_xlati35;
        if ((x_810 != 0i)) {
          let x_815 : vec3<f32> = vs_TEXCOORD1;
          let x_817 : i32 = u_xlati7;
          let x_820 : i32 = u_xlati7;
          let x_824 : vec4<f32> = x_701.x_AdditionalLightsWorldToLights[((x_817 + 1i) / 4i)][((x_820 + 1i) % 4i)];
          let x_826 : vec2<f32> = (vec2<f32>(x_815.y, x_815.y) * vec2<f32>(x_824.x, x_824.y));
          let x_827 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_826.x, x_826.y, x_827.z, x_827.w);
          let x_829 : i32 = u_xlati7;
          let x_831 : i32 = u_xlati7;
          let x_834 : vec4<f32> = x_701.x_AdditionalLightsWorldToLights[(x_829 / 4i)][(x_831 % 4i)];
          let x_836 : vec3<f32> = vs_TEXCOORD1;
          let x_839 : vec4<f32> = u_xlat8;
          let x_841 : vec2<f32> = ((vec2<f32>(x_834.x, x_834.y) * vec2<f32>(x_836.x, x_836.x)) + vec2<f32>(x_839.x, x_839.y));
          let x_842 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_841.x, x_841.y, x_842.z, x_842.w);
          let x_844 : i32 = u_xlati7;
          let x_847 : i32 = u_xlati7;
          let x_851 : vec4<f32> = x_701.x_AdditionalLightsWorldToLights[((x_844 + 2i) / 4i)][((x_847 + 2i) % 4i)];
          let x_853 : vec3<f32> = vs_TEXCOORD1;
          let x_856 : vec4<f32> = u_xlat8;
          let x_858 : vec2<f32> = ((vec2<f32>(x_851.x, x_851.y) * vec2<f32>(x_853.z, x_853.z)) + vec2<f32>(x_856.x, x_856.y));
          let x_859 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_858.x, x_858.y, x_859.z, x_859.w);
          let x_861 : vec4<f32> = u_xlat8;
          let x_863 : i32 = u_xlati7;
          let x_866 : i32 = u_xlati7;
          let x_870 : vec4<f32> = x_701.x_AdditionalLightsWorldToLights[((x_863 + 3i) / 4i)][((x_866 + 3i) % 4i)];
          let x_872 : vec2<f32> = (vec2<f32>(x_861.x, x_861.y) + vec2<f32>(x_870.x, x_870.y));
          let x_873 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_872.x, x_872.y, x_873.z, x_873.w);
          let x_875 : vec4<f32> = u_xlat8;
          let x_878 : vec2<f32> = ((vec2<f32>(x_875.x, x_875.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_879 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_878.x, x_878.y, x_879.z, x_879.w);
          let x_881 : vec4<f32> = u_xlat8;
          let x_883 : vec2<f32> = fract(vec2<f32>(x_881.x, x_881.y));
          let x_884 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_883.x, x_883.y, x_884.z, x_884.w);
          let x_886 : u32 = u_xlatu24;
          let x_889 : vec4<f32> = x_701.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_886)];
          let x_891 : vec4<f32> = u_xlat8;
          let x_894 : u32 = u_xlatu24;
          let x_897 : vec4<f32> = x_701.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_894)];
          let x_899 : vec2<f32> = ((vec2<f32>(x_889.x, x_889.y) * vec2<f32>(x_891.x, x_891.y)) + vec2<f32>(x_897.z, x_897.w));
          let x_900 : vec3<f32> = u_xlat17;
          u_xlat17 = vec3<f32>(x_899.x, x_899.y, x_900.z);
        } else {
          let x_903 : vec3<f32> = vs_TEXCOORD1;
          let x_905 : i32 = u_xlati7;
          let x_908 : i32 = u_xlati7;
          let x_912 : vec4<f32> = x_701.x_AdditionalLightsWorldToLights[((x_905 + 1i) / 4i)][((x_908 + 1i) % 4i)];
          u_xlat8 = (vec4<f32>(x_903.y, x_903.y, x_903.y, x_903.y) * x_912);
          let x_914 : i32 = u_xlati7;
          let x_916 : i32 = u_xlati7;
          let x_919 : vec4<f32> = x_701.x_AdditionalLightsWorldToLights[(x_914 / 4i)][(x_916 % 4i)];
          let x_920 : vec3<f32> = vs_TEXCOORD1;
          let x_923 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_919 * vec4<f32>(x_920.x, x_920.x, x_920.x, x_920.x)) + x_923);
          let x_925 : i32 = u_xlati7;
          let x_928 : i32 = u_xlati7;
          let x_932 : vec4<f32> = x_701.x_AdditionalLightsWorldToLights[((x_925 + 2i) / 4i)][((x_928 + 2i) % 4i)];
          let x_933 : vec3<f32> = vs_TEXCOORD1;
          let x_936 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_932 * vec4<f32>(x_933.z, x_933.z, x_933.z, x_933.z)) + x_936);
          let x_938 : vec4<f32> = u_xlat8;
          let x_939 : i32 = u_xlati7;
          let x_942 : i32 = u_xlati7;
          let x_946 : vec4<f32> = x_701.x_AdditionalLightsWorldToLights[((x_939 + 3i) / 4i)][((x_942 + 3i) % 4i)];
          u_xlat8 = (x_938 + x_946);
          let x_948 : vec4<f32> = u_xlat8;
          let x_950 : vec4<f32> = u_xlat8;
          let x_952 : vec3<f32> = (vec3<f32>(x_948.x, x_948.y, x_948.z) / vec3<f32>(x_950.w, x_950.w, x_950.w));
          let x_953 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_952.x, x_952.y, x_952.z, x_953.w);
          let x_955 : vec4<f32> = u_xlat8;
          let x_957 : vec4<f32> = u_xlat8;
          u_xlat35 = dot(vec3<f32>(x_955.x, x_955.y, x_955.z), vec3<f32>(x_957.x, x_957.y, x_957.z));
          let x_960 : f32 = u_xlat35;
          u_xlat35 = inverseSqrt(x_960);
          let x_962 : f32 = u_xlat35;
          let x_964 : vec4<f32> = u_xlat8;
          let x_966 : vec3<f32> = (vec3<f32>(x_962, x_962, x_962) * vec3<f32>(x_964.x, x_964.y, x_964.z));
          let x_967 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_966.x, x_966.y, x_966.z, x_967.w);
          let x_969 : vec4<f32> = u_xlat8;
          u_xlat35 = dot(abs(vec3<f32>(x_969.x, x_969.y, x_969.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_974 : f32 = u_xlat35;
          u_xlat35 = max(x_974, 0.000001f);
          let x_977 : f32 = u_xlat35;
          u_xlat35 = (1.0f / x_977);
          let x_980 : f32 = u_xlat35;
          let x_982 : vec4<f32> = u_xlat8;
          u_xlat9 = (vec3<f32>(x_980, x_980, x_980) * vec3<f32>(x_982.z, x_982.x, x_982.y));
          let x_986 : f32 = u_xlat9.x;
          u_xlat9.x = -(x_986);
          let x_990 : f32 = u_xlat9.x;
          u_xlat9.x = clamp(x_990, 0.0f, 1.0f);
          let x_995 : vec3<f32> = u_xlat9;
          let x_998 : vec4<bool> = (vec4<f32>(x_995.y, x_995.y, x_995.y, x_995.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_999 : vec2<bool> = vec2<bool>(x_998.x, x_998.w);
          let x_1000 : vec4<bool> = u_xlatb7;
          u_xlatb7 = vec4<bool>(x_999.x, x_1000.y, x_1000.z, x_999.y);
          let x_1004 : bool = u_xlatb7.x;
          if (x_1004) {
            let x_1009 : f32 = u_xlat9.x;
            x_1005 = x_1009;
          } else {
            let x_1012 : f32 = u_xlat9.x;
            x_1005 = -(x_1012);
          }
          let x_1014 : f32 = x_1005;
          u_xlat7.x = x_1014;
          let x_1017 : bool = u_xlatb7.w;
          if (x_1017) {
            let x_1022 : f32 = u_xlat9.x;
            x_1018 = x_1022;
          } else {
            let x_1025 : f32 = u_xlat9.x;
            x_1018 = -(x_1025);
          }
          let x_1027 : f32 = x_1018;
          u_xlat7.w = x_1027;
          let x_1029 : vec4<f32> = u_xlat8;
          let x_1031 : f32 = u_xlat35;
          let x_1034 : vec4<f32> = u_xlat7;
          let x_1036 : vec2<f32> = ((vec2<f32>(x_1029.x, x_1029.y) * vec2<f32>(x_1031, x_1031)) + vec2<f32>(x_1034.x, x_1034.w));
          let x_1037 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_1036.x, x_1037.y, x_1037.z, x_1036.y);
          let x_1039 : vec4<f32> = u_xlat7;
          let x_1042 : vec2<f32> = ((vec2<f32>(x_1039.x, x_1039.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1043 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_1042.x, x_1043.y, x_1043.z, x_1042.y);
          let x_1045 : vec4<f32> = u_xlat7;
          let x_1049 : vec2<f32> = clamp(vec2<f32>(x_1045.x, x_1045.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1050 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_1049.x, x_1050.y, x_1050.z, x_1049.y);
          let x_1052 : u32 = u_xlatu24;
          let x_1055 : vec4<f32> = x_701.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1052)];
          let x_1057 : vec4<f32> = u_xlat7;
          let x_1060 : u32 = u_xlatu24;
          let x_1063 : vec4<f32> = x_701.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1060)];
          let x_1065 : vec2<f32> = ((vec2<f32>(x_1055.x, x_1055.y) * vec2<f32>(x_1057.x, x_1057.w)) + vec2<f32>(x_1063.z, x_1063.w));
          let x_1066 : vec3<f32> = u_xlat17;
          u_xlat17 = vec3<f32>(x_1065.x, x_1065.y, x_1066.z);
        }
      }
      let x_1073 : vec3<f32> = u_xlat17;
      let x_1076 : f32 = x_43.x_GlobalMipBias.x;
      let x_1077 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1073.x, x_1073.y), x_1076);
      u_xlat7 = x_1077;
      let x_1079 : bool = u_xlatb4.y;
      if (x_1079) {
        let x_1084 : f32 = u_xlat7.w;
        x_1080 = x_1084;
      } else {
        let x_1087 : f32 = u_xlat7.x;
        x_1080 = x_1087;
      }
      let x_1088 : f32 = x_1080;
      u_xlat35 = x_1088;
      let x_1090 : bool = u_xlatb4.x;
      if (x_1090) {
        let x_1094 : vec4<f32> = u_xlat7;
        x_1091 = vec3<f32>(x_1094.x, x_1094.y, x_1094.z);
      } else {
        let x_1097 : f32 = u_xlat35;
        x_1091 = vec3<f32>(x_1097, x_1097, x_1097);
      }
      let x_1099 : vec3<f32> = x_1091;
      let x_1100 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_1099.x, x_1099.y, x_1099.z, x_1100.w);
    } else {
      u_xlat7.x = 1.0f;
      u_xlat7.y = 1.0f;
      u_xlat7.z = 1.0f;
    }
    let x_1106 : vec4<f32> = u_xlat7;
    let x_1108 : u32 = u_xlatu24;
    let x_1111 : vec4<f32> = x_599.x_AdditionalLightsColor[bitcast<i32>(x_1108)];
    let x_1113 : vec3<f32> = (vec3<f32>(x_1106.x, x_1106.y, x_1106.z) * vec3<f32>(x_1111.x, x_1111.y, x_1111.z));
    let x_1114 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1113.x, x_1113.y, x_1113.z, x_1114.w);
    let x_1116 : f32 = u_xlat32;
    let x_1118 : vec4<f32> = u_xlat7;
    let x_1120 : vec3<f32> = (vec3<f32>(x_1116, x_1116, x_1116) * vec3<f32>(x_1118.x, x_1118.y, x_1118.z));
    let x_1121 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1120.x, x_1120.y, x_1120.z, x_1121.w);
    let x_1123 : f32 = u_xlat34;
    let x_1125 : vec4<f32> = u_xlat7;
    let x_1127 : vec3<f32> = (vec3<f32>(x_1123, x_1123, x_1123) * vec3<f32>(x_1125.x, x_1125.y, x_1125.z));
    let x_1128 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1127.x, x_1127.y, x_1127.z, x_1128.w);
    let x_1130 : vec3<f32> = u_xlat1;
    let x_1131 : vec3<f32> = u_xlat6;
    u_xlat24 = dot(x_1130, x_1131);
    let x_1133 : f32 = u_xlat24;
    u_xlat24 = clamp(x_1133, 0.0f, 1.0f);
    let x_1135 : f32 = u_xlat24;
    let x_1137 : vec4<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_1135, x_1135, x_1135) * vec3<f32>(x_1137.x, x_1137.y, x_1137.z));
    let x_1140 : vec3<f32> = u_xlat6;
    let x_1141 : vec4<f32> = u_xlat0;
    let x_1144 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_1140 * vec3<f32>(x_1141.y, x_1141.z, x_1141.w)) + x_1144);

    continuing {
      let x_1146 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1146 + bitcast<u32>(1i));
    }
  }
  let x_1149 : vec4<f32> = u_xlat2;
  let x_1151 : vec4<f32> = u_xlat0;
  let x_1154 : vec3<f32> = u_xlat3;
  u_xlat10 = ((vec3<f32>(x_1149.x, x_1149.y, x_1149.z) * vec3<f32>(x_1151.y, x_1151.z, x_1151.w)) + x_1154);
  let x_1158 : vec3<f32> = u_xlat5;
  let x_1159 : vec3<f32> = u_xlat10;
  let x_1160 : vec3<f32> = (x_1158 + x_1159);
  let x_1161 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1160.x, x_1160.y, x_1160.z, x_1161.w);
  let x_1165 : f32 = x_55.x_Surface;
  u_xlatb10 = (x_1165 == 1.0f);
  let x_1167 : bool = u_xlatb10;
  if (x_1167) {
    let x_1172 : f32 = u_xlat0.x;
    x_1168 = x_1172;
  } else {
    x_1168 = 1.0f;
  }
  let x_1174 : f32 = x_1168;
  SV_Target0.w = x_1174;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD7_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}

