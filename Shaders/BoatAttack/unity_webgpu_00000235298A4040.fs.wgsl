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
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_288 : MainLightShadows;

@group(1) @binding(5) var<uniform> x_368 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(2) var<uniform> x_499 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_661 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_763 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlatb1 : bool;
  var u_xlat12 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var x_96 : f32;
  var x_110 : f32;
  var x_122 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlat34 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat35 : f32;
  var u_xlat36 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat15 : vec3<f32>;
  var u_xlatb15 : vec2<bool>;
  var u_xlatb26 : bool;
  var x_321 : f32;
  var u_xlat26 : f32;
  var u_xlat5 : vec4<f32>;
  var x_454 : f32;
  var x_465 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat37 : f32;
  var u_xlatu37 : u32;
  var u_xlatb5 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu38 : u32;
  var u_xlati39 : i32;
  var u_xlat38 : f32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat7 : vec3<f32>;
  var u_xlat39 : f32;
  var u_xlat40 : f32;
  var u_xlatu40 : u32;
  var u_xlati8 : i32;
  var u_xlati40 : i32;
  var u_xlati19 : i32;
  var u_xlat8 : vec4<f32>;
  var u_xlatb40 : bool;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlatb19 : vec3<bool>;
  var u_xlat19 : vec3<f32>;
  var x_1079 : f32;
  var x_1092 : f32;
  var x_1154 : f32;
  var x_1165 : vec3<f32>;
  var u_xlat11 : vec3<f32>;
  var u_xlatb11 : bool;
  var x_1287 : f32;
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
  let x_52 : vec4<f32> = u_xlat0;
  let x_59 : vec4<f32> = x_56.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_52.w, x_52.x, x_52.y, x_52.z) * vec4<f32>(x_59.w, x_59.x, x_59.y, x_59.z));
  let x_67 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb1 = (x_67 == 0.0f);
  let x_74 : vec3<f32> = vs_TEXCOORD1;
  let x_79 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat12 = (-(x_74) + x_79);
  let x_82 : vec3<f32> = u_xlat12;
  let x_83 : vec3<f32> = u_xlat12;
  u_xlat2.x = dot(x_82, x_83);
  let x_88 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_88);
  let x_91 : vec3<f32> = u_xlat12;
  let x_92 : vec3<f32> = u_xlat2;
  u_xlat12 = (x_91 * vec3<f32>(x_92.x, x_92.x, x_92.x));
  let x_95 : bool = u_xlatb1;
  if (x_95) {
    let x_100 : f32 = u_xlat12.x;
    x_96 = x_100;
  } else {
    let x_106 : f32 = x_44.unity_MatrixV[0i].z;
    x_96 = x_106;
  }
  let x_107 : f32 = x_96;
  u_xlat2.x = x_107;
  let x_109 : bool = u_xlatb1;
  if (x_109) {
    let x_115 : f32 = u_xlat12.y;
    x_110 = x_115;
  } else {
    let x_118 : f32 = x_44.unity_MatrixV[1i].z;
    x_110 = x_118;
  }
  let x_119 : f32 = x_110;
  u_xlat2.y = x_119;
  let x_121 : bool = u_xlatb1;
  if (x_121) {
    let x_126 : f32 = u_xlat12.z;
    x_122 = x_126;
  } else {
    let x_130 : f32 = x_44.unity_MatrixV[2i].z;
    x_122 = x_130;
  }
  let x_131 : f32 = x_122;
  u_xlat2.z = x_131;
  let x_135 : vec3<f32> = vs_TEXCOORD2;
  let x_136 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_135, x_136);
  let x_140 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_140);
  let x_143 : vec3<f32> = u_xlat1;
  let x_145 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1 = (vec3<f32>(x_143.x, x_143.x, x_143.x) * x_145);
  let x_148 : vec3<f32> = u_xlat2;
  let x_149 : vec3<f32> = u_xlat2;
  u_xlat34 = dot(x_148, x_149);
  let x_151 : f32 = u_xlat34;
  u_xlat34 = max(x_151, 1.17549435e-37f);
  let x_154 : f32 = u_xlat34;
  u_xlat34 = inverseSqrt(x_154);
  let x_163 : vec2<f32> = vs_TEXCOORD7;
  let x_165 : f32 = x_44.x_GlobalMipBias.x;
  let x_166 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_163, x_165);
  u_xlat3 = x_166;
  let x_172 : vec2<f32> = vs_TEXCOORD7;
  let x_174 : f32 = x_44.x_GlobalMipBias.x;
  let x_175 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_172, x_174);
  u_xlat4 = vec3<f32>(x_175.x, x_175.y, x_175.z);
  let x_177 : vec4<f32> = u_xlat3;
  let x_181 : vec3<f32> = (vec3<f32>(x_177.x, x_177.y, x_177.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_182 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_181.x, x_181.y, x_181.z, x_182.w);
  let x_185 : vec3<f32> = u_xlat1;
  let x_186 : vec4<f32> = u_xlat3;
  u_xlat35 = dot(x_185, vec3<f32>(x_186.x, x_186.y, x_186.z));
  let x_189 : f32 = u_xlat35;
  u_xlat35 = (x_189 + 0.5f);
  let x_192 : f32 = u_xlat35;
  let x_194 : vec3<f32> = u_xlat4;
  let x_195 : vec3<f32> = (vec3<f32>(x_192, x_192, x_192) * x_194);
  let x_196 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_195.x, x_195.y, x_195.z, x_196.w);
  let x_199 : f32 = u_xlat3.w;
  u_xlat35 = max(x_199, 0.0001f);
  let x_202 : vec4<f32> = u_xlat3;
  let x_204 : f32 = u_xlat35;
  let x_206 : vec3<f32> = (vec3<f32>(x_202.x, x_202.y, x_202.z) / vec3<f32>(x_204, x_204, x_204));
  let x_207 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_206.x, x_206.y, x_206.z, x_207.w);
  let x_211 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_212 : vec2<f32> = vec2<f32>(x_211.x, x_211.y);
  let x_216 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_212.x, x_212.y));
  let x_217 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_216.x, x_216.y, x_217.z);
  let x_219 : vec3<f32> = u_xlat4;
  let x_221 : vec4<f32> = hlslcc_FragCoord;
  let x_223 : vec2<f32> = (vec2<f32>(x_219.x, x_219.y) * vec2<f32>(x_221.x, x_221.y));
  let x_224 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_223.x, x_223.y, x_224.z);
  let x_227 : f32 = u_xlat4.y;
  let x_230 : f32 = x_44.x_ScaleBiasRt.x;
  let x_233 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat35 = ((x_227 * x_230) + x_233);
  let x_235 : f32 = u_xlat35;
  u_xlat4.z = (-(x_235) + 1.0f);
  let x_244 : vec3<f32> = u_xlat4;
  let x_247 : f32 = x_44.x_GlobalMipBias.x;
  let x_248 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_244.x, x_244.z), x_247);
  u_xlat35 = x_248.x;
  let x_251 : f32 = u_xlat35;
  u_xlat36 = (x_251 + -1.0f);
  let x_256 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_257 : f32 = u_xlat36;
  u_xlat36 = ((x_256 * x_257) + 1.0f);
  let x_260 : f32 = u_xlat35;
  u_xlat35 = min(x_260, 1.0f);
  let x_264 : vec4<f32> = vs_TEXCOORD6;
  let x_265 : vec2<f32> = vec2<f32>(x_264.x, x_264.y);
  let x_267 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_265.x, x_265.y, x_267);
  let x_279 : vec3<f32> = txVec0;
  let x_281 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_279.xy, x_279.z);
  u_xlat4.x = x_281;
  let x_290 : f32 = x_288.x_MainLightShadowParams.x;
  u_xlat15.x = (-(x_290) + 1.0f);
  let x_295 : f32 = u_xlat4.x;
  let x_297 : f32 = x_288.x_MainLightShadowParams.x;
  let x_300 : f32 = u_xlat15.x;
  u_xlat4.x = ((x_295 * x_297) + x_300);
  let x_307 : f32 = vs_TEXCOORD6.z;
  u_xlatb15.x = (0.0f >= x_307);
  let x_312 : f32 = vs_TEXCOORD6.z;
  u_xlatb26 = (x_312 >= 1.0f);
  let x_314 : bool = u_xlatb26;
  let x_316 : bool = u_xlatb15.x;
  u_xlatb15.x = (x_314 | x_316);
  let x_320 : bool = u_xlatb15.x;
  if (x_320) {
    x_321 = 1.0f;
  } else {
    let x_326 : f32 = u_xlat4.x;
    x_321 = x_326;
  }
  let x_327 : f32 = x_321;
  u_xlat4.x = x_327;
  let x_329 : vec3<f32> = vs_TEXCOORD1;
  let x_331 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat15 = (x_329 + -(x_331));
  let x_334 : vec3<f32> = u_xlat15;
  let x_335 : vec3<f32> = u_xlat15;
  u_xlat15.x = dot(x_334, x_335);
  let x_339 : f32 = u_xlat15.x;
  let x_341 : f32 = x_288.x_MainLightShadowParams.z;
  let x_344 : f32 = x_288.x_MainLightShadowParams.w;
  u_xlat15.x = ((x_339 * x_341) + x_344);
  let x_348 : f32 = u_xlat15.x;
  u_xlat15.x = clamp(x_348, 0.0f, 1.0f);
  let x_353 : f32 = u_xlat4.x;
  u_xlat26 = (-(x_353) + 1.0f);
  let x_357 : f32 = u_xlat15.x;
  let x_358 : f32 = u_xlat26;
  let x_361 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_357 * x_358) + x_361);
  let x_370 : f32 = x_368.x_MainLightCookieTextureFormat;
  u_xlatb15.x = !((x_370 == -1.0f));
  let x_374 : bool = u_xlatb15.x;
  if (x_374) {
    let x_377 : vec3<f32> = vs_TEXCOORD1;
    let x_380 : vec4<f32> = x_368.x_MainLightWorldToLight[1i];
    let x_382 : vec2<f32> = (vec2<f32>(x_377.y, x_377.y) * vec2<f32>(x_380.x, x_380.y));
    let x_383 : vec3<f32> = u_xlat15;
    u_xlat15 = vec3<f32>(x_382.x, x_382.y, x_383.z);
    let x_386 : vec4<f32> = x_368.x_MainLightWorldToLight[0i];
    let x_388 : vec3<f32> = vs_TEXCOORD1;
    let x_391 : vec3<f32> = u_xlat15;
    let x_393 : vec2<f32> = ((vec2<f32>(x_386.x, x_386.y) * vec2<f32>(x_388.x, x_388.x)) + vec2<f32>(x_391.x, x_391.y));
    let x_394 : vec3<f32> = u_xlat15;
    u_xlat15 = vec3<f32>(x_393.x, x_393.y, x_394.z);
    let x_397 : vec4<f32> = x_368.x_MainLightWorldToLight[2i];
    let x_399 : vec3<f32> = vs_TEXCOORD1;
    let x_402 : vec3<f32> = u_xlat15;
    let x_404 : vec2<f32> = ((vec2<f32>(x_397.x, x_397.y) * vec2<f32>(x_399.z, x_399.z)) + vec2<f32>(x_402.x, x_402.y));
    let x_405 : vec3<f32> = u_xlat15;
    u_xlat15 = vec3<f32>(x_404.x, x_404.y, x_405.z);
    let x_407 : vec3<f32> = u_xlat15;
    let x_411 : vec4<f32> = x_368.x_MainLightWorldToLight[3i];
    let x_413 : vec2<f32> = (vec2<f32>(x_407.x, x_407.y) + vec2<f32>(x_411.x, x_411.y));
    let x_414 : vec3<f32> = u_xlat15;
    u_xlat15 = vec3<f32>(x_413.x, x_413.y, x_414.z);
    let x_416 : vec3<f32> = u_xlat15;
    let x_420 : vec2<f32> = ((vec2<f32>(x_416.x, x_416.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_421 : vec3<f32> = u_xlat15;
    u_xlat15 = vec3<f32>(x_420.x, x_420.y, x_421.z);
    let x_429 : vec3<f32> = u_xlat15;
    let x_432 : f32 = x_44.x_GlobalMipBias.x;
    let x_433 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_429.x, x_429.y), x_432);
    u_xlat5 = x_433;
    let x_435 : f32 = x_368.x_MainLightCookieTextureFormat;
    let x_437 : f32 = x_368.x_MainLightCookieTextureFormat;
    let x_439 : f32 = x_368.x_MainLightCookieTextureFormat;
    let x_441 : f32 = x_368.x_MainLightCookieTextureFormat;
    let x_442 : vec4<f32> = vec4<f32>(x_435, x_437, x_439, x_441);
    let x_450 : vec4<bool> = (vec4<f32>(x_442.x, x_442.y, x_442.z, x_442.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb15 = vec2<bool>(x_450.x, x_450.y);
    let x_453 : bool = u_xlatb15.y;
    if (x_453) {
      let x_458 : f32 = u_xlat5.w;
      x_454 = x_458;
    } else {
      let x_461 : f32 = u_xlat5.x;
      x_454 = x_461;
    }
    let x_462 : f32 = x_454;
    u_xlat26 = x_462;
    let x_464 : bool = u_xlatb15.x;
    if (x_464) {
      let x_468 : vec4<f32> = u_xlat5;
      x_465 = vec3<f32>(x_468.x, x_468.y, x_468.z);
    } else {
      let x_471 : f32 = u_xlat26;
      x_465 = vec3<f32>(x_471, x_471, x_471);
    }
    let x_473 : vec3<f32> = x_465;
    u_xlat15 = x_473;
  } else {
    u_xlat15.x = 1.0f;
    u_xlat15.y = 1.0f;
    u_xlat15.z = 1.0f;
  }
  let x_478 : vec3<f32> = u_xlat15;
  let x_480 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat15 = (x_478 * vec3<f32>(x_480.x, x_480.y, x_480.z));
  let x_483 : f32 = u_xlat36;
  let x_485 : vec3<f32> = u_xlat15;
  u_xlat15 = (vec3<f32>(x_483, x_483, x_483) * x_485);
  let x_487 : f32 = u_xlat35;
  let x_489 : vec4<f32> = u_xlat3;
  let x_491 : vec3<f32> = (vec3<f32>(x_487, x_487, x_487) * vec3<f32>(x_489.x, x_489.y, x_489.z));
  let x_492 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_491.x, x_491.y, x_491.z, x_492.w);
  let x_495 : f32 = u_xlat4.x;
  let x_502 : f32 = x_499.unity_LightData.z;
  u_xlat35 = (x_495 * x_502);
  let x_504 : f32 = u_xlat35;
  let x_506 : vec3<f32> = u_xlat15;
  u_xlat4 = (vec3<f32>(x_504, x_504, x_504) * x_506);
  let x_508 : vec3<f32> = u_xlat1;
  let x_510 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat35 = dot(x_508, vec3<f32>(x_510.x, x_510.y, x_510.z));
  let x_513 : f32 = u_xlat35;
  u_xlat35 = clamp(x_513, 0.0f, 1.0f);
  let x_515 : f32 = u_xlat35;
  let x_517 : vec3<f32> = u_xlat4;
  let x_518 : vec3<f32> = (vec3<f32>(x_515, x_515, x_515) * x_517);
  let x_519 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_518.x, x_518.y, x_518.z, x_519.w);
  let x_522 : f32 = u_xlat0.x;
  u_xlat35 = ((x_522 * 10.0f) + 1.0f);
  let x_526 : f32 = u_xlat35;
  u_xlat35 = exp2(x_526);
  let x_529 : vec3<f32> = u_xlat2;
  let x_530 : f32 = u_xlat34;
  let x_534 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat6 = ((x_529 * vec3<f32>(x_530, x_530, x_530)) + vec3<f32>(x_534.x, x_534.y, x_534.z));
  let x_538 : vec3<f32> = u_xlat6;
  let x_539 : vec3<f32> = u_xlat6;
  u_xlat37 = dot(x_538, x_539);
  let x_541 : f32 = u_xlat37;
  u_xlat37 = max(x_541, 1.17549435e-37f);
  let x_543 : f32 = u_xlat37;
  u_xlat37 = inverseSqrt(x_543);
  let x_545 : f32 = u_xlat37;
  let x_547 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_545, x_545, x_545) * x_547);
  let x_549 : vec3<f32> = u_xlat1;
  let x_550 : vec3<f32> = u_xlat6;
  u_xlat37 = dot(x_549, x_550);
  let x_552 : f32 = u_xlat37;
  u_xlat37 = clamp(x_552, 0.0f, 1.0f);
  let x_554 : f32 = u_xlat37;
  u_xlat37 = log2(x_554);
  let x_556 : f32 = u_xlat35;
  let x_557 : f32 = u_xlat37;
  u_xlat37 = (x_556 * x_557);
  let x_559 : f32 = u_xlat37;
  u_xlat37 = exp2(x_559);
  let x_561 : f32 = u_xlat37;
  let x_564 : vec4<f32> = x_56.x_SpecColor;
  u_xlat6 = (vec3<f32>(x_561, x_561, x_561) * vec3<f32>(x_564.x, x_564.y, x_564.z));
  let x_567 : vec3<f32> = u_xlat4;
  let x_568 : vec3<f32> = u_xlat6;
  u_xlat4 = (x_567 * x_568);
  let x_570 : vec4<f32> = u_xlat5;
  let x_572 : vec4<f32> = u_xlat0;
  let x_575 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_570.x, x_570.y, x_570.z) * vec3<f32>(x_572.y, x_572.z, x_572.w)) + x_575);
  let x_578 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_580 : f32 = x_499.unity_LightData.y;
  u_xlat37 = min(x_578, x_580);
  let x_584 : f32 = u_xlat37;
  u_xlatu37 = bitcast<u32>(i32(x_584));
  let x_589 : f32 = x_368.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_591 : f32 = x_368.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_593 : f32 = x_368.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_595 : f32 = x_368.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_596 : vec4<f32> = vec4<f32>(x_589, x_591, x_593, x_595);
  let x_602 : vec4<bool> = (vec4<f32>(x_596.x, x_596.y, x_596.z, x_596.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_602.x, x_602.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_613 : u32 = u_xlatu_loop_1;
    let x_614 : u32 = u_xlatu37;
    if ((x_613 < x_614)) {
    } else {
      break;
    }
    let x_617 : u32 = u_xlatu_loop_1;
    u_xlatu38 = (x_617 >> 2u);
    let x_621 : u32 = u_xlatu_loop_1;
    u_xlati39 = bitcast<i32>((x_621 & 3u));
    let x_625 : u32 = u_xlatu38;
    let x_628 : vec4<f32> = x_499.unity_LightIndices[bitcast<i32>(x_625)];
    let x_638 : i32 = u_xlati39;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_643 : vec4<u32> = indexable[x_638];
    u_xlat38 = dot(x_628, bitcast<vec4<f32>>(x_643));
    let x_646 : f32 = u_xlat38;
    u_xlatu38 = bitcast<u32>(i32(x_646));
    let x_650 : vec3<f32> = vs_TEXCOORD1;
    let x_662 : u32 = u_xlatu38;
    let x_665 : vec4<f32> = x_661.x_AdditionalLightsPosition[bitcast<i32>(x_662)];
    let x_668 : u32 = u_xlatu38;
    let x_671 : vec4<f32> = x_661.x_AdditionalLightsPosition[bitcast<i32>(x_668)];
    u_xlat7 = ((-(x_650) * vec3<f32>(x_665.w, x_665.w, x_665.w)) + vec3<f32>(x_671.x, x_671.y, x_671.z));
    let x_675 : vec3<f32> = u_xlat7;
    let x_676 : vec3<f32> = u_xlat7;
    u_xlat39 = dot(x_675, x_676);
    let x_678 : f32 = u_xlat39;
    u_xlat39 = max(x_678, 6.10351562e-05f);
    let x_682 : f32 = u_xlat39;
    u_xlat40 = inverseSqrt(x_682);
    let x_684 : f32 = u_xlat40;
    let x_686 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_684, x_684, x_684) * x_686);
    let x_688 : f32 = u_xlat39;
    u_xlat40 = (1.0f / x_688);
    let x_690 : f32 = u_xlat39;
    let x_691 : u32 = u_xlatu38;
    let x_694 : f32 = x_661.x_AdditionalLightsAttenuation[bitcast<i32>(x_691)].x;
    u_xlat39 = (x_690 * x_694);
    let x_696 : f32 = u_xlat39;
    let x_698 : f32 = u_xlat39;
    u_xlat39 = ((-(x_696) * x_698) + 1.0f);
    let x_701 : f32 = u_xlat39;
    u_xlat39 = max(x_701, 0.0f);
    let x_703 : f32 = u_xlat39;
    let x_704 : f32 = u_xlat39;
    u_xlat39 = (x_703 * x_704);
    let x_706 : f32 = u_xlat39;
    let x_707 : f32 = u_xlat40;
    u_xlat39 = (x_706 * x_707);
    let x_709 : u32 = u_xlatu38;
    let x_712 : vec4<f32> = x_661.x_AdditionalLightsSpotDir[bitcast<i32>(x_709)];
    let x_714 : vec3<f32> = u_xlat7;
    u_xlat40 = dot(vec3<f32>(x_712.x, x_712.y, x_712.z), x_714);
    let x_716 : f32 = u_xlat40;
    let x_717 : u32 = u_xlatu38;
    let x_720 : f32 = x_661.x_AdditionalLightsAttenuation[bitcast<i32>(x_717)].z;
    let x_722 : u32 = u_xlatu38;
    let x_725 : f32 = x_661.x_AdditionalLightsAttenuation[bitcast<i32>(x_722)].w;
    u_xlat40 = ((x_716 * x_720) + x_725);
    let x_727 : f32 = u_xlat40;
    u_xlat40 = clamp(x_727, 0.0f, 1.0f);
    let x_729 : f32 = u_xlat40;
    let x_730 : f32 = u_xlat40;
    u_xlat40 = (x_729 * x_730);
    let x_732 : f32 = u_xlat39;
    let x_733 : f32 = u_xlat40;
    u_xlat39 = (x_732 * x_733);
    let x_736 : u32 = u_xlatu38;
    u_xlatu40 = (x_736 >> 5u);
    let x_739 : u32 = u_xlatu38;
    u_xlati8 = (1i << bitcast<u32>((bitcast<i32>(x_739) & 31i)));
    let x_745 : i32 = u_xlati8;
    let x_747 : u32 = u_xlatu40;
    let x_750 : f32 = x_368.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_747)].el;
    u_xlati40 = bitcast<i32>((bitcast<u32>(x_745) & bitcast<u32>(x_750)));
    let x_754 : i32 = u_xlati40;
    if ((x_754 != 0i)) {
      let x_764 : u32 = u_xlatu38;
      let x_767 : f32 = x_763.x_AdditionalLightsLightTypes[bitcast<i32>(x_764)].el;
      u_xlati40 = i32(x_767);
      let x_769 : i32 = u_xlati40;
      u_xlati8 = select(1i, 0i, (x_769 != 0i));
      let x_773 : u32 = u_xlatu38;
      u_xlati19 = (bitcast<i32>(x_773) << bitcast<u32>(2i));
      let x_776 : i32 = u_xlati8;
      if ((x_776 != 0i)) {
        let x_781 : vec3<f32> = vs_TEXCOORD1;
        let x_783 : i32 = u_xlati19;
        let x_786 : i32 = u_xlati19;
        let x_790 : vec4<f32> = x_763.x_AdditionalLightsWorldToLights[((x_783 + 1i) / 4i)][((x_786 + 1i) % 4i)];
        let x_792 : vec3<f32> = (vec3<f32>(x_781.y, x_781.y, x_781.y) * vec3<f32>(x_790.x, x_790.y, x_790.w));
        let x_793 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_792.x, x_793.y, x_792.y, x_792.z);
        let x_795 : i32 = u_xlati19;
        let x_797 : i32 = u_xlati19;
        let x_800 : vec4<f32> = x_763.x_AdditionalLightsWorldToLights[(x_795 / 4i)][(x_797 % 4i)];
        let x_802 : vec3<f32> = vs_TEXCOORD1;
        let x_805 : vec4<f32> = u_xlat8;
        let x_807 : vec3<f32> = ((vec3<f32>(x_800.x, x_800.y, x_800.w) * vec3<f32>(x_802.x, x_802.x, x_802.x)) + vec3<f32>(x_805.x, x_805.z, x_805.w));
        let x_808 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_807.x, x_808.y, x_807.y, x_807.z);
        let x_810 : i32 = u_xlati19;
        let x_813 : i32 = u_xlati19;
        let x_817 : vec4<f32> = x_763.x_AdditionalLightsWorldToLights[((x_810 + 2i) / 4i)][((x_813 + 2i) % 4i)];
        let x_819 : vec3<f32> = vs_TEXCOORD1;
        let x_822 : vec4<f32> = u_xlat8;
        let x_824 : vec3<f32> = ((vec3<f32>(x_817.x, x_817.y, x_817.w) * vec3<f32>(x_819.z, x_819.z, x_819.z)) + vec3<f32>(x_822.x, x_822.z, x_822.w));
        let x_825 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_824.x, x_825.y, x_824.y, x_824.z);
        let x_827 : vec4<f32> = u_xlat8;
        let x_829 : i32 = u_xlati19;
        let x_832 : i32 = u_xlati19;
        let x_836 : vec4<f32> = x_763.x_AdditionalLightsWorldToLights[((x_829 + 3i) / 4i)][((x_832 + 3i) % 4i)];
        let x_838 : vec3<f32> = (vec3<f32>(x_827.x, x_827.z, x_827.w) + vec3<f32>(x_836.x, x_836.y, x_836.w));
        let x_839 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_838.x, x_839.y, x_838.y, x_838.z);
        let x_841 : vec4<f32> = u_xlat8;
        let x_843 : vec4<f32> = u_xlat8;
        let x_845 : vec2<f32> = (vec2<f32>(x_841.x, x_841.z) / vec2<f32>(x_843.w, x_843.w));
        let x_846 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_845.x, x_846.y, x_845.y, x_846.w);
        let x_848 : vec4<f32> = u_xlat8;
        let x_851 : vec2<f32> = ((vec2<f32>(x_848.x, x_848.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_852 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_851.x, x_852.y, x_851.y, x_852.w);
        let x_854 : vec4<f32> = u_xlat8;
        let x_858 : vec2<f32> = clamp(vec2<f32>(x_854.x, x_854.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_859 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_858.x, x_859.y, x_858.y, x_859.w);
        let x_861 : u32 = u_xlatu38;
        let x_864 : vec4<f32> = x_763.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_861)];
        let x_866 : vec4<f32> = u_xlat8;
        let x_869 : u32 = u_xlatu38;
        let x_872 : vec4<f32> = x_763.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_869)];
        let x_874 : vec2<f32> = ((vec2<f32>(x_864.x, x_864.y) * vec2<f32>(x_866.x, x_866.z)) + vec2<f32>(x_872.z, x_872.w));
        let x_875 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_874.x, x_875.y, x_874.y, x_875.w);
      } else {
        let x_879 : i32 = u_xlati40;
        u_xlatb40 = (x_879 == 1i);
        let x_881 : bool = u_xlatb40;
        u_xlati40 = select(0i, 1i, x_881);
        let x_883 : i32 = u_xlati40;
        if ((x_883 != 0i)) {
          let x_888 : vec3<f32> = vs_TEXCOORD1;
          let x_890 : i32 = u_xlati19;
          let x_893 : i32 = u_xlati19;
          let x_897 : vec4<f32> = x_763.x_AdditionalLightsWorldToLights[((x_890 + 1i) / 4i)][((x_893 + 1i) % 4i)];
          let x_899 : vec2<f32> = (vec2<f32>(x_888.y, x_888.y) * vec2<f32>(x_897.x, x_897.y));
          let x_900 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_899.x, x_899.y, x_900.z, x_900.w);
          let x_902 : i32 = u_xlati19;
          let x_904 : i32 = u_xlati19;
          let x_907 : vec4<f32> = x_763.x_AdditionalLightsWorldToLights[(x_902 / 4i)][(x_904 % 4i)];
          let x_909 : vec3<f32> = vs_TEXCOORD1;
          let x_912 : vec4<f32> = u_xlat9;
          let x_914 : vec2<f32> = ((vec2<f32>(x_907.x, x_907.y) * vec2<f32>(x_909.x, x_909.x)) + vec2<f32>(x_912.x, x_912.y));
          let x_915 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_914.x, x_914.y, x_915.z, x_915.w);
          let x_917 : i32 = u_xlati19;
          let x_920 : i32 = u_xlati19;
          let x_924 : vec4<f32> = x_763.x_AdditionalLightsWorldToLights[((x_917 + 2i) / 4i)][((x_920 + 2i) % 4i)];
          let x_926 : vec3<f32> = vs_TEXCOORD1;
          let x_929 : vec4<f32> = u_xlat9;
          let x_931 : vec2<f32> = ((vec2<f32>(x_924.x, x_924.y) * vec2<f32>(x_926.z, x_926.z)) + vec2<f32>(x_929.x, x_929.y));
          let x_932 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_931.x, x_931.y, x_932.z, x_932.w);
          let x_934 : vec4<f32> = u_xlat9;
          let x_936 : i32 = u_xlati19;
          let x_939 : i32 = u_xlati19;
          let x_943 : vec4<f32> = x_763.x_AdditionalLightsWorldToLights[((x_936 + 3i) / 4i)][((x_939 + 3i) % 4i)];
          let x_945 : vec2<f32> = (vec2<f32>(x_934.x, x_934.y) + vec2<f32>(x_943.x, x_943.y));
          let x_946 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_945.x, x_945.y, x_946.z, x_946.w);
          let x_948 : vec4<f32> = u_xlat9;
          let x_951 : vec2<f32> = ((vec2<f32>(x_948.x, x_948.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_952 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_951.x, x_951.y, x_952.z, x_952.w);
          let x_954 : vec4<f32> = u_xlat9;
          let x_956 : vec2<f32> = fract(vec2<f32>(x_954.x, x_954.y));
          let x_957 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_956.x, x_956.y, x_957.z, x_957.w);
          let x_959 : u32 = u_xlatu38;
          let x_962 : vec4<f32> = x_763.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_959)];
          let x_964 : vec4<f32> = u_xlat9;
          let x_967 : u32 = u_xlatu38;
          let x_970 : vec4<f32> = x_763.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_967)];
          let x_972 : vec2<f32> = ((vec2<f32>(x_962.x, x_962.y) * vec2<f32>(x_964.x, x_964.y)) + vec2<f32>(x_970.z, x_970.w));
          let x_973 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_972.x, x_973.y, x_972.y, x_973.w);
        } else {
          let x_976 : vec3<f32> = vs_TEXCOORD1;
          let x_978 : i32 = u_xlati19;
          let x_981 : i32 = u_xlati19;
          let x_985 : vec4<f32> = x_763.x_AdditionalLightsWorldToLights[((x_978 + 1i) / 4i)][((x_981 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_976.y, x_976.y, x_976.y, x_976.y) * x_985);
          let x_987 : i32 = u_xlati19;
          let x_989 : i32 = u_xlati19;
          let x_992 : vec4<f32> = x_763.x_AdditionalLightsWorldToLights[(x_987 / 4i)][(x_989 % 4i)];
          let x_993 : vec3<f32> = vs_TEXCOORD1;
          let x_996 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_992 * vec4<f32>(x_993.x, x_993.x, x_993.x, x_993.x)) + x_996);
          let x_998 : i32 = u_xlati19;
          let x_1001 : i32 = u_xlati19;
          let x_1005 : vec4<f32> = x_763.x_AdditionalLightsWorldToLights[((x_998 + 2i) / 4i)][((x_1001 + 2i) % 4i)];
          let x_1006 : vec3<f32> = vs_TEXCOORD1;
          let x_1009 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1005 * vec4<f32>(x_1006.z, x_1006.z, x_1006.z, x_1006.z)) + x_1009);
          let x_1011 : vec4<f32> = u_xlat9;
          let x_1012 : i32 = u_xlati19;
          let x_1015 : i32 = u_xlati19;
          let x_1019 : vec4<f32> = x_763.x_AdditionalLightsWorldToLights[((x_1012 + 3i) / 4i)][((x_1015 + 3i) % 4i)];
          u_xlat9 = (x_1011 + x_1019);
          let x_1021 : vec4<f32> = u_xlat9;
          let x_1023 : vec4<f32> = u_xlat9;
          let x_1025 : vec3<f32> = (vec3<f32>(x_1021.x, x_1021.y, x_1021.z) / vec3<f32>(x_1023.w, x_1023.w, x_1023.w));
          let x_1026 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1025.x, x_1025.y, x_1025.z, x_1026.w);
          let x_1028 : vec4<f32> = u_xlat9;
          let x_1030 : vec4<f32> = u_xlat9;
          u_xlat40 = dot(vec3<f32>(x_1028.x, x_1028.y, x_1028.z), vec3<f32>(x_1030.x, x_1030.y, x_1030.z));
          let x_1033 : f32 = u_xlat40;
          u_xlat40 = inverseSqrt(x_1033);
          let x_1035 : f32 = u_xlat40;
          let x_1037 : vec4<f32> = u_xlat9;
          let x_1039 : vec3<f32> = (vec3<f32>(x_1035, x_1035, x_1035) * vec3<f32>(x_1037.x, x_1037.y, x_1037.z));
          let x_1040 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1039.x, x_1039.y, x_1039.z, x_1040.w);
          let x_1042 : vec4<f32> = u_xlat9;
          u_xlat40 = dot(abs(vec3<f32>(x_1042.x, x_1042.y, x_1042.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1047 : f32 = u_xlat40;
          u_xlat40 = max(x_1047, 0.000001f);
          let x_1050 : f32 = u_xlat40;
          u_xlat40 = (1.0f / x_1050);
          let x_1053 : f32 = u_xlat40;
          let x_1055 : vec4<f32> = u_xlat9;
          u_xlat10 = (vec3<f32>(x_1053, x_1053, x_1053) * vec3<f32>(x_1055.z, x_1055.x, x_1055.y));
          let x_1059 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_1059);
          let x_1063 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_1063, 0.0f, 1.0f);
          let x_1069 : vec3<f32> = u_xlat10;
          let x_1072 : vec4<bool> = (vec4<f32>(x_1069.y, x_1069.y, x_1069.z, x_1069.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1073 : vec2<bool> = vec2<bool>(x_1072.x, x_1072.z);
          let x_1074 : vec3<bool> = u_xlatb19;
          u_xlatb19 = vec3<bool>(x_1073.x, x_1074.y, x_1073.y);
          let x_1078 : bool = u_xlatb19.x;
          if (x_1078) {
            let x_1083 : f32 = u_xlat10.x;
            x_1079 = x_1083;
          } else {
            let x_1086 : f32 = u_xlat10.x;
            x_1079 = -(x_1086);
          }
          let x_1088 : f32 = x_1079;
          u_xlat19.x = x_1088;
          let x_1091 : bool = u_xlatb19.z;
          if (x_1091) {
            let x_1096 : f32 = u_xlat10.x;
            x_1092 = x_1096;
          } else {
            let x_1099 : f32 = u_xlat10.x;
            x_1092 = -(x_1099);
          }
          let x_1101 : f32 = x_1092;
          u_xlat19.z = x_1101;
          let x_1103 : vec4<f32> = u_xlat9;
          let x_1105 : f32 = u_xlat40;
          let x_1108 : vec3<f32> = u_xlat19;
          let x_1110 : vec2<f32> = ((vec2<f32>(x_1103.x, x_1103.y) * vec2<f32>(x_1105, x_1105)) + vec2<f32>(x_1108.x, x_1108.z));
          let x_1111 : vec3<f32> = u_xlat19;
          u_xlat19 = vec3<f32>(x_1110.x, x_1111.y, x_1110.y);
          let x_1113 : vec3<f32> = u_xlat19;
          let x_1116 : vec2<f32> = ((vec2<f32>(x_1113.x, x_1113.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1117 : vec3<f32> = u_xlat19;
          u_xlat19 = vec3<f32>(x_1116.x, x_1117.y, x_1116.y);
          let x_1119 : vec3<f32> = u_xlat19;
          let x_1123 : vec2<f32> = clamp(vec2<f32>(x_1119.x, x_1119.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1124 : vec3<f32> = u_xlat19;
          u_xlat19 = vec3<f32>(x_1123.x, x_1124.y, x_1123.y);
          let x_1126 : u32 = u_xlatu38;
          let x_1129 : vec4<f32> = x_763.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1126)];
          let x_1131 : vec3<f32> = u_xlat19;
          let x_1134 : u32 = u_xlatu38;
          let x_1137 : vec4<f32> = x_763.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1134)];
          let x_1139 : vec2<f32> = ((vec2<f32>(x_1129.x, x_1129.y) * vec2<f32>(x_1131.x, x_1131.z)) + vec2<f32>(x_1137.z, x_1137.w));
          let x_1140 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1139.x, x_1140.y, x_1139.y, x_1140.w);
        }
      }
      let x_1147 : vec4<f32> = u_xlat8;
      let x_1150 : f32 = x_44.x_GlobalMipBias.x;
      let x_1151 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1147.x, x_1147.z), x_1150);
      u_xlat8 = x_1151;
      let x_1153 : bool = u_xlatb5.y;
      if (x_1153) {
        let x_1158 : f32 = u_xlat8.w;
        x_1154 = x_1158;
      } else {
        let x_1161 : f32 = u_xlat8.x;
        x_1154 = x_1161;
      }
      let x_1162 : f32 = x_1154;
      u_xlat40 = x_1162;
      let x_1164 : bool = u_xlatb5.x;
      if (x_1164) {
        let x_1168 : vec4<f32> = u_xlat8;
        x_1165 = vec3<f32>(x_1168.x, x_1168.y, x_1168.z);
      } else {
        let x_1171 : f32 = u_xlat40;
        x_1165 = vec3<f32>(x_1171, x_1171, x_1171);
      }
      let x_1173 : vec3<f32> = x_1165;
      let x_1174 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1173.x, x_1173.y, x_1173.z, x_1174.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_1180 : vec4<f32> = u_xlat8;
    let x_1182 : u32 = u_xlatu38;
    let x_1185 : vec4<f32> = x_661.x_AdditionalLightsColor[bitcast<i32>(x_1182)];
    let x_1187 : vec3<f32> = (vec3<f32>(x_1180.x, x_1180.y, x_1180.z) * vec3<f32>(x_1185.x, x_1185.y, x_1185.z));
    let x_1188 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1187.x, x_1187.y, x_1187.z, x_1188.w);
    let x_1190 : f32 = u_xlat36;
    let x_1192 : vec4<f32> = u_xlat8;
    let x_1194 : vec3<f32> = (vec3<f32>(x_1190, x_1190, x_1190) * vec3<f32>(x_1192.x, x_1192.y, x_1192.z));
    let x_1195 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1194.x, x_1194.y, x_1194.z, x_1195.w);
    let x_1197 : f32 = u_xlat39;
    let x_1199 : vec4<f32> = u_xlat8;
    let x_1201 : vec3<f32> = (vec3<f32>(x_1197, x_1197, x_1197) * vec3<f32>(x_1199.x, x_1199.y, x_1199.z));
    let x_1202 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1201.x, x_1201.y, x_1201.z, x_1202.w);
    let x_1204 : vec3<f32> = u_xlat1;
    let x_1205 : vec3<f32> = u_xlat7;
    u_xlat38 = dot(x_1204, x_1205);
    let x_1207 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1207, 0.0f, 1.0f);
    let x_1209 : f32 = u_xlat38;
    let x_1211 : vec4<f32> = u_xlat8;
    let x_1213 : vec3<f32> = (vec3<f32>(x_1209, x_1209, x_1209) * vec3<f32>(x_1211.x, x_1211.y, x_1211.z));
    let x_1214 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1213.x, x_1213.y, x_1213.z, x_1214.w);
    let x_1216 : vec3<f32> = u_xlat2;
    let x_1217 : f32 = u_xlat34;
    let x_1220 : vec3<f32> = u_xlat7;
    u_xlat7 = ((x_1216 * vec3<f32>(x_1217, x_1217, x_1217)) + x_1220);
    let x_1222 : vec3<f32> = u_xlat7;
    let x_1223 : vec3<f32> = u_xlat7;
    u_xlat38 = dot(x_1222, x_1223);
    let x_1225 : f32 = u_xlat38;
    u_xlat38 = max(x_1225, 1.17549435e-37f);
    let x_1227 : f32 = u_xlat38;
    u_xlat38 = inverseSqrt(x_1227);
    let x_1229 : f32 = u_xlat38;
    let x_1231 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_1229, x_1229, x_1229) * x_1231);
    let x_1233 : vec3<f32> = u_xlat1;
    let x_1234 : vec3<f32> = u_xlat7;
    u_xlat38 = dot(x_1233, x_1234);
    let x_1236 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1236, 0.0f, 1.0f);
    let x_1238 : f32 = u_xlat38;
    u_xlat38 = log2(x_1238);
    let x_1240 : f32 = u_xlat35;
    let x_1241 : f32 = u_xlat38;
    u_xlat38 = (x_1240 * x_1241);
    let x_1243 : f32 = u_xlat38;
    u_xlat38 = exp2(x_1243);
    let x_1245 : f32 = u_xlat38;
    let x_1248 : vec4<f32> = x_56.x_SpecColor;
    u_xlat7 = (vec3<f32>(x_1245, x_1245, x_1245) * vec3<f32>(x_1248.x, x_1248.y, x_1248.z));
    let x_1251 : vec3<f32> = u_xlat7;
    let x_1252 : vec4<f32> = u_xlat8;
    u_xlat7 = (x_1251 * vec3<f32>(x_1252.x, x_1252.y, x_1252.z));
    let x_1255 : vec4<f32> = u_xlat9;
    let x_1257 : vec4<f32> = u_xlat0;
    let x_1260 : vec3<f32> = u_xlat7;
    u_xlat7 = ((vec3<f32>(x_1255.x, x_1255.y, x_1255.z) * vec3<f32>(x_1257.y, x_1257.z, x_1257.w)) + x_1260);
    let x_1262 : vec3<f32> = u_xlat6;
    let x_1263 : vec3<f32> = u_xlat7;
    u_xlat6 = (x_1262 + x_1263);

    continuing {
      let x_1265 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1265 + bitcast<u32>(1i));
    }
  }
  let x_1268 : vec4<f32> = u_xlat3;
  let x_1270 : vec4<f32> = u_xlat0;
  let x_1273 : vec3<f32> = u_xlat4;
  u_xlat11 = ((vec3<f32>(x_1268.x, x_1268.y, x_1268.z) * vec3<f32>(x_1270.y, x_1270.z, x_1270.w)) + x_1273);
  let x_1277 : vec3<f32> = u_xlat6;
  let x_1278 : vec3<f32> = u_xlat11;
  let x_1279 : vec3<f32> = (x_1277 + x_1278);
  let x_1280 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1279.x, x_1279.y, x_1279.z, x_1280.w);
  let x_1284 : f32 = x_56.x_Surface;
  u_xlatb11 = (x_1284 == 1.0f);
  let x_1286 : bool = u_xlatb11;
  if (x_1286) {
    let x_1291 : f32 = u_xlat0.x;
    x_1287 = x_1291;
  } else {
    x_1287 = 1.0f;
  }
  let x_1293 : f32 = x_1287;
  SV_Target0.w = x_1293;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD7_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}

