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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

@group(0) @binding(3) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_BumpMap : sampler;

@group(0) @binding(8) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_236 : UnityPerDraw;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(4) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_512 : MainLightShadows;

@group(1) @binding(5) var<uniform> x_574 : LightCookies;

@group(0) @binding(6) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(1) var<uniform> x_883 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_985 : AdditionalLightsCookies;

@group(0) @binding(7) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat38 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat39 : f32;
  var u_xlat40 : f32;
  var u_xlatb40 : bool;
  var u_xlatb5 : bool;
  var u_xlatb6 : vec2<bool>;
  var x_659 : f32;
  var x_670 : vec3<f32>;
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
  var x_1280 : f32;
  var x_1293 : f32;
  var x_1345 : f32;
  var x_1356 : vec3<f32>;
  var x_1514 : f32;
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
  let x_381 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_378, x_380);
  u_xlat4 = x_381;
  let x_387 : vec2<f32> = vs_TEXCOORD7;
  let x_389 : f32 = x_44.x_GlobalMipBias.x;
  let x_390 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_387, x_389);
  let x_391 : vec3<f32> = vec3<f32>(x_390.x, x_390.y, x_390.z);
  let x_392 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_391.x, x_391.y, x_391.z, x_392.w);
  let x_394 : vec4<f32> = u_xlat4;
  let x_398 : vec3<f32> = (vec3<f32>(x_394.x, x_394.y, x_394.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_399 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_398.x, x_398.y, x_398.z, x_399.w);
  let x_401 : vec3<f32> = u_xlat2;
  let x_402 : vec4<f32> = u_xlat4;
  u_xlat1.x = dot(x_401, vec3<f32>(x_402.x, x_402.y, x_402.z));
  let x_407 : f32 = u_xlat1.x;
  u_xlat1.x = (x_407 + 0.5f);
  let x_410 : vec4<f32> = u_xlat1;
  let x_412 : vec4<f32> = u_xlat5;
  let x_414 : vec3<f32> = (vec3<f32>(x_410.x, x_410.x, x_410.x) * vec3<f32>(x_412.x, x_412.y, x_412.z));
  let x_415 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_414.x, x_414.y, x_414.z, x_415.w);
  let x_418 : f32 = u_xlat4.w;
  u_xlat1.x = max(x_418, 0.0001f);
  let x_421 : vec4<f32> = u_xlat4;
  let x_423 : vec4<f32> = u_xlat1;
  let x_425 : vec3<f32> = (vec3<f32>(x_421.x, x_421.y, x_421.z) / vec3<f32>(x_423.x, x_423.x, x_423.x));
  let x_426 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_425.x, x_425.y, x_425.z, x_426.w);
  let x_430 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_431 : vec2<f32> = vec2<f32>(x_430.x, x_430.y);
  let x_435 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_431.x, x_431.y));
  let x_436 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_435.x, x_435.y, x_436.z, x_436.w);
  let x_438 : vec4<f32> = u_xlat5;
  let x_440 : vec4<f32> = hlslcc_FragCoord;
  let x_442 : vec2<f32> = (vec2<f32>(x_438.x, x_438.y) * vec2<f32>(x_440.x, x_440.y));
  let x_443 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_442.x, x_442.y, x_443.z, x_443.w);
  let x_446 : f32 = u_xlat5.y;
  let x_449 : f32 = x_44.x_ScaleBiasRt.x;
  let x_452 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat1.x = ((x_446 * x_449) + x_452);
  let x_456 : f32 = u_xlat1.x;
  u_xlat5.z = (-(x_456) + 1.0f);
  let x_465 : vec4<f32> = u_xlat5;
  let x_468 : f32 = x_44.x_GlobalMipBias.x;
  let x_469 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_465.x, x_465.z), x_468);
  u_xlat1.x = x_469.x;
  let x_474 : f32 = u_xlat1.x;
  u_xlat38 = (x_474 + -1.0f);
  let x_478 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_479 : f32 = u_xlat38;
  u_xlat38 = ((x_478 * x_479) + 1.0f);
  let x_483 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_483, 1.0f);
  let x_488 : vec4<f32> = vs_TEXCOORD6;
  let x_489 : vec2<f32> = vec2<f32>(x_488.x, x_488.y);
  let x_491 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_489.x, x_489.y, x_491);
  let x_504 : vec3<f32> = txVec0;
  let x_506 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_504.xy, x_504.z);
  u_xlat39 = x_506;
  let x_514 : f32 = x_512.x_MainLightShadowParams.x;
  u_xlat40 = (-(x_514) + 1.0f);
  let x_517 : f32 = u_xlat39;
  let x_519 : f32 = x_512.x_MainLightShadowParams.x;
  let x_521 : f32 = u_xlat40;
  u_xlat39 = ((x_517 * x_519) + x_521);
  let x_525 : f32 = vs_TEXCOORD6.z;
  u_xlatb40 = (0.0f >= x_525);
  let x_529 : f32 = vs_TEXCOORD6.z;
  u_xlatb5 = (x_529 >= 1.0f);
  let x_531 : bool = u_xlatb40;
  let x_532 : bool = u_xlatb5;
  u_xlatb40 = (x_531 | x_532);
  let x_534 : bool = u_xlatb40;
  let x_535 : f32 = u_xlat39;
  u_xlat39 = select(x_535, 1.0f, x_534);
  let x_537 : vec3<f32> = vs_TEXCOORD1;
  let x_541 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_543 : vec3<f32> = (x_537 + -(x_541));
  let x_544 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_543.x, x_543.y, x_543.z, x_544.w);
  let x_546 : vec4<f32> = u_xlat5;
  let x_548 : vec4<f32> = u_xlat5;
  u_xlat40 = dot(vec3<f32>(x_546.x, x_546.y, x_546.z), vec3<f32>(x_548.x, x_548.y, x_548.z));
  let x_551 : f32 = u_xlat40;
  let x_553 : f32 = x_512.x_MainLightShadowParams.z;
  let x_556 : f32 = x_512.x_MainLightShadowParams.w;
  u_xlat40 = ((x_551 * x_553) + x_556);
  let x_558 : f32 = u_xlat40;
  u_xlat40 = clamp(x_558, 0.0f, 1.0f);
  let x_560 : f32 = u_xlat39;
  u_xlat5.x = (-(x_560) + 1.0f);
  let x_564 : f32 = u_xlat40;
  let x_566 : f32 = u_xlat5.x;
  let x_568 : f32 = u_xlat39;
  u_xlat39 = ((x_564 * x_566) + x_568);
  let x_576 : f32 = x_574.x_MainLightCookieTextureFormat;
  u_xlatb40 = !((x_576 == -1.0f));
  let x_578 : bool = u_xlatb40;
  if (x_578) {
    let x_581 : vec3<f32> = vs_TEXCOORD1;
    let x_584 : vec4<f32> = x_574.x_MainLightWorldToLight[1i];
    let x_586 : vec2<f32> = (vec2<f32>(x_581.y, x_581.y) * vec2<f32>(x_584.x, x_584.y));
    let x_587 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_586.x, x_586.y, x_587.z, x_587.w);
    let x_590 : vec4<f32> = x_574.x_MainLightWorldToLight[0i];
    let x_592 : vec3<f32> = vs_TEXCOORD1;
    let x_595 : vec4<f32> = u_xlat5;
    let x_597 : vec2<f32> = ((vec2<f32>(x_590.x, x_590.y) * vec2<f32>(x_592.x, x_592.x)) + vec2<f32>(x_595.x, x_595.y));
    let x_598 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_597.x, x_597.y, x_598.z, x_598.w);
    let x_601 : vec4<f32> = x_574.x_MainLightWorldToLight[2i];
    let x_603 : vec3<f32> = vs_TEXCOORD1;
    let x_606 : vec4<f32> = u_xlat5;
    let x_608 : vec2<f32> = ((vec2<f32>(x_601.x, x_601.y) * vec2<f32>(x_603.z, x_603.z)) + vec2<f32>(x_606.x, x_606.y));
    let x_609 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_608.x, x_608.y, x_609.z, x_609.w);
    let x_611 : vec4<f32> = u_xlat5;
    let x_614 : vec4<f32> = x_574.x_MainLightWorldToLight[3i];
    let x_616 : vec2<f32> = (vec2<f32>(x_611.x, x_611.y) + vec2<f32>(x_614.x, x_614.y));
    let x_617 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_616.x, x_616.y, x_617.z, x_617.w);
    let x_619 : vec4<f32> = u_xlat5;
    let x_623 : vec2<f32> = ((vec2<f32>(x_619.x, x_619.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_624 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_623.x, x_623.y, x_624.z, x_624.w);
    let x_631 : vec4<f32> = u_xlat5;
    let x_634 : f32 = x_44.x_GlobalMipBias.x;
    let x_635 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_631.x, x_631.y), x_634);
    u_xlat5 = x_635;
    let x_640 : f32 = x_574.x_MainLightCookieTextureFormat;
    let x_642 : f32 = x_574.x_MainLightCookieTextureFormat;
    let x_644 : f32 = x_574.x_MainLightCookieTextureFormat;
    let x_646 : f32 = x_574.x_MainLightCookieTextureFormat;
    let x_647 : vec4<f32> = vec4<f32>(x_640, x_642, x_644, x_646);
    let x_655 : vec4<bool> = (vec4<f32>(x_647.x, x_647.y, x_647.z, x_647.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb6 = vec2<bool>(x_655.x, x_655.y);
    let x_658 : bool = u_xlatb6.y;
    if (x_658) {
      let x_663 : f32 = u_xlat5.w;
      x_659 = x_663;
    } else {
      let x_666 : f32 = u_xlat5.x;
      x_659 = x_666;
    }
    let x_667 : f32 = x_659;
    u_xlat40 = x_667;
    let x_669 : bool = u_xlatb6.x;
    if (x_669) {
      let x_673 : vec4<f32> = u_xlat5;
      x_670 = vec3<f32>(x_673.x, x_673.y, x_673.z);
    } else {
      let x_676 : f32 = u_xlat40;
      x_670 = vec3<f32>(x_676, x_676, x_676);
    }
    let x_678 : vec3<f32> = x_670;
    let x_679 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_678.x, x_678.y, x_678.z, x_679.w);
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
  }
  let x_685 : vec4<f32> = u_xlat5;
  let x_688 : vec4<f32> = x_44.x_MainLightColor;
  let x_690 : vec3<f32> = (vec3<f32>(x_685.x, x_685.y, x_685.z) * vec3<f32>(x_688.x, x_688.y, x_688.z));
  let x_691 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_690.x, x_690.y, x_690.z, x_691.w);
  let x_693 : f32 = u_xlat38;
  let x_695 : vec4<f32> = u_xlat5;
  let x_697 : vec3<f32> = (vec3<f32>(x_693, x_693, x_693) * vec3<f32>(x_695.x, x_695.y, x_695.z));
  let x_698 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_697.x, x_697.y, x_697.z, x_698.w);
  let x_700 : vec4<f32> = u_xlat1;
  let x_702 : vec4<f32> = u_xlat4;
  let x_704 : vec3<f32> = (vec3<f32>(x_700.x, x_700.x, x_700.x) * vec3<f32>(x_702.x, x_702.y, x_702.z));
  let x_705 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_704.x, x_704.y, x_704.z, x_705.w);
  let x_707 : f32 = u_xlat39;
  let x_709 : f32 = x_236.unity_LightData.z;
  u_xlat1.x = (x_707 * x_709);
  let x_712 : vec4<f32> = u_xlat1;
  let x_714 : vec4<f32> = u_xlat5;
  let x_716 : vec3<f32> = (vec3<f32>(x_712.x, x_712.x, x_712.x) * vec3<f32>(x_714.x, x_714.y, x_714.z));
  let x_717 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_716.x, x_716.y, x_716.z, x_717.w);
  let x_719 : vec3<f32> = u_xlat2;
  let x_721 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat1.x = dot(x_719, vec3<f32>(x_721.x, x_721.y, x_721.z));
  let x_726 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_726, 0.0f, 1.0f);
  let x_730 : vec4<f32> = u_xlat1;
  let x_732 : vec4<f32> = u_xlat5;
  u_xlat6 = (vec3<f32>(x_730.x, x_730.x, x_730.x) * vec3<f32>(x_732.x, x_732.y, x_732.z));
  let x_736 : f32 = x_57.x_SpecColor.w;
  u_xlat1.x = ((x_736 * 10.0f) + 1.0f);
  let x_742 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_742);
  let x_746 : vec3<f32> = u_xlat3;
  let x_747 : vec3<f32> = u_xlat12;
  let x_751 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat7 = ((x_746 * vec3<f32>(x_747.x, x_747.x, x_747.x)) + vec3<f32>(x_751.x, x_751.y, x_751.z));
  let x_754 : vec3<f32> = u_xlat7;
  let x_755 : vec3<f32> = u_xlat7;
  u_xlat39 = dot(x_754, x_755);
  let x_757 : f32 = u_xlat39;
  u_xlat39 = max(x_757, 1.17549435e-37f);
  let x_759 : f32 = u_xlat39;
  u_xlat39 = inverseSqrt(x_759);
  let x_761 : f32 = u_xlat39;
  let x_763 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_761, x_761, x_761) * x_763);
  let x_765 : vec3<f32> = u_xlat2;
  let x_766 : vec3<f32> = u_xlat7;
  u_xlat39 = dot(x_765, x_766);
  let x_768 : f32 = u_xlat39;
  u_xlat39 = clamp(x_768, 0.0f, 1.0f);
  let x_770 : f32 = u_xlat39;
  u_xlat39 = log2(x_770);
  let x_773 : f32 = u_xlat1.x;
  let x_774 : f32 = u_xlat39;
  u_xlat39 = (x_773 * x_774);
  let x_776 : f32 = u_xlat39;
  u_xlat39 = exp2(x_776);
  let x_778 : f32 = u_xlat39;
  let x_781 : vec4<f32> = x_57.x_SpecColor;
  u_xlat7 = (vec3<f32>(x_778, x_778, x_778) * vec3<f32>(x_781.x, x_781.y, x_781.z));
  let x_784 : vec4<f32> = u_xlat5;
  let x_786 : vec3<f32> = u_xlat7;
  let x_787 : vec3<f32> = (vec3<f32>(x_784.x, x_784.y, x_784.z) * x_786);
  let x_788 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_787.x, x_787.y, x_787.z, x_788.w);
  let x_790 : vec3<f32> = u_xlat6;
  let x_791 : vec4<f32> = u_xlat1;
  let x_794 : vec4<f32> = u_xlat5;
  let x_796 : vec3<f32> = ((x_790 * vec3<f32>(x_791.y, x_791.z, x_791.w)) + vec3<f32>(x_794.x, x_794.y, x_794.z));
  let x_797 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_796.x, x_796.y, x_796.z, x_797.w);
  let x_801 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_803 : f32 = x_236.unity_LightData.y;
  u_xlat39 = min(x_801, x_803);
  let x_807 : f32 = u_xlat39;
  u_xlatu39 = bitcast<u32>(i32(x_807));
  let x_811 : f32 = x_574.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_813 : f32 = x_574.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_815 : f32 = x_574.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_817 : f32 = x_574.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_818 : vec4<f32> = vec4<f32>(x_811, x_813, x_815, x_817);
  let x_824 : vec4<bool> = (vec4<f32>(x_818.x, x_818.y, x_818.z, x_818.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_824.x, x_824.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_835 : u32 = u_xlatu_loop_1;
    let x_836 : u32 = u_xlatu39;
    if ((x_835 < x_836)) {
    } else {
      break;
    }
    let x_839 : u32 = u_xlatu_loop_1;
    u_xlatu41 = (x_839 >> 2u);
    let x_843 : u32 = u_xlatu_loop_1;
    u_xlati30 = bitcast<i32>((x_843 & 3u));
    let x_847 : u32 = u_xlatu41;
    let x_850 : vec4<f32> = x_236.unity_LightIndices[bitcast<i32>(x_847)];
    let x_860 : i32 = u_xlati30;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_865 : vec4<u32> = indexable[x_860];
    u_xlat41 = dot(x_850, bitcast<vec4<f32>>(x_865));
    let x_868 : f32 = u_xlat41;
    u_xlatu41 = bitcast<u32>(i32(x_868));
    let x_872 : vec3<f32> = vs_TEXCOORD1;
    let x_884 : u32 = u_xlatu41;
    let x_887 : vec4<f32> = x_883.x_AdditionalLightsPosition[bitcast<i32>(x_884)];
    let x_890 : u32 = u_xlatu41;
    let x_893 : vec4<f32> = x_883.x_AdditionalLightsPosition[bitcast<i32>(x_890)];
    u_xlat8 = ((-(x_872) * vec3<f32>(x_887.w, x_887.w, x_887.w)) + vec3<f32>(x_893.x, x_893.y, x_893.z));
    let x_897 : vec3<f32> = u_xlat8;
    let x_898 : vec3<f32> = u_xlat8;
    u_xlat30 = dot(x_897, x_898);
    let x_900 : f32 = u_xlat30;
    u_xlat30 = max(x_900, 6.10351562e-05f);
    let x_904 : f32 = u_xlat30;
    u_xlat42 = inverseSqrt(x_904);
    let x_906 : f32 = u_xlat42;
    let x_908 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_906, x_906, x_906) * x_908);
    let x_910 : f32 = u_xlat30;
    u_xlat42 = (1.0f / x_910);
    let x_912 : f32 = u_xlat30;
    let x_913 : u32 = u_xlatu41;
    let x_916 : f32 = x_883.x_AdditionalLightsAttenuation[bitcast<i32>(x_913)].x;
    u_xlat30 = (x_912 * x_916);
    let x_918 : f32 = u_xlat30;
    let x_920 : f32 = u_xlat30;
    u_xlat30 = ((-(x_918) * x_920) + 1.0f);
    let x_923 : f32 = u_xlat30;
    u_xlat30 = max(x_923, 0.0f);
    let x_925 : f32 = u_xlat30;
    let x_926 : f32 = u_xlat30;
    u_xlat30 = (x_925 * x_926);
    let x_928 : f32 = u_xlat30;
    let x_929 : f32 = u_xlat42;
    u_xlat30 = (x_928 * x_929);
    let x_931 : u32 = u_xlatu41;
    let x_934 : vec4<f32> = x_883.x_AdditionalLightsSpotDir[bitcast<i32>(x_931)];
    let x_936 : vec3<f32> = u_xlat8;
    u_xlat42 = dot(vec3<f32>(x_934.x, x_934.y, x_934.z), x_936);
    let x_938 : f32 = u_xlat42;
    let x_939 : u32 = u_xlatu41;
    let x_942 : f32 = x_883.x_AdditionalLightsAttenuation[bitcast<i32>(x_939)].z;
    let x_944 : u32 = u_xlatu41;
    let x_947 : f32 = x_883.x_AdditionalLightsAttenuation[bitcast<i32>(x_944)].w;
    u_xlat42 = ((x_938 * x_942) + x_947);
    let x_949 : f32 = u_xlat42;
    u_xlat42 = clamp(x_949, 0.0f, 1.0f);
    let x_951 : f32 = u_xlat42;
    let x_952 : f32 = u_xlat42;
    u_xlat42 = (x_951 * x_952);
    let x_954 : f32 = u_xlat42;
    let x_955 : f32 = u_xlat30;
    u_xlat30 = (x_954 * x_955);
    let x_958 : u32 = u_xlatu41;
    u_xlatu42 = (x_958 >> 5u);
    let x_961 : u32 = u_xlatu41;
    u_xlati43 = (1i << bitcast<u32>((bitcast<i32>(x_961) & 31i)));
    let x_967 : i32 = u_xlati43;
    let x_969 : u32 = u_xlatu42;
    let x_972 : f32 = x_574.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_969)].el;
    u_xlati42 = bitcast<i32>((bitcast<u32>(x_967) & bitcast<u32>(x_972)));
    let x_976 : i32 = u_xlati42;
    if ((x_976 != 0i)) {
      let x_986 : u32 = u_xlatu41;
      let x_989 : f32 = x_985.x_AdditionalLightsLightTypes[bitcast<i32>(x_986)].el;
      u_xlati42 = i32(x_989);
      let x_991 : i32 = u_xlati42;
      u_xlati43 = select(1i, 0i, (x_991 != 0i));
      let x_995 : u32 = u_xlatu41;
      u_xlati44 = (bitcast<i32>(x_995) << bitcast<u32>(2i));
      let x_998 : i32 = u_xlati43;
      if ((x_998 != 0i)) {
        let x_1003 : vec3<f32> = vs_TEXCOORD1;
        let x_1005 : i32 = u_xlati44;
        let x_1008 : i32 = u_xlati44;
        let x_1012 : vec4<f32> = x_985.x_AdditionalLightsWorldToLights[((x_1005 + 1i) / 4i)][((x_1008 + 1i) % 4i)];
        let x_1014 : vec3<f32> = (vec3<f32>(x_1003.y, x_1003.y, x_1003.y) * vec3<f32>(x_1012.x, x_1012.y, x_1012.w));
        let x_1015 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1014.x, x_1014.y, x_1014.z, x_1015.w);
        let x_1017 : i32 = u_xlati44;
        let x_1019 : i32 = u_xlati44;
        let x_1022 : vec4<f32> = x_985.x_AdditionalLightsWorldToLights[(x_1017 / 4i)][(x_1019 % 4i)];
        let x_1024 : vec3<f32> = vs_TEXCOORD1;
        let x_1027 : vec4<f32> = u_xlat9;
        let x_1029 : vec3<f32> = ((vec3<f32>(x_1022.x, x_1022.y, x_1022.w) * vec3<f32>(x_1024.x, x_1024.x, x_1024.x)) + vec3<f32>(x_1027.x, x_1027.y, x_1027.z));
        let x_1030 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1029.x, x_1029.y, x_1029.z, x_1030.w);
        let x_1032 : i32 = u_xlati44;
        let x_1035 : i32 = u_xlati44;
        let x_1039 : vec4<f32> = x_985.x_AdditionalLightsWorldToLights[((x_1032 + 2i) / 4i)][((x_1035 + 2i) % 4i)];
        let x_1041 : vec3<f32> = vs_TEXCOORD1;
        let x_1044 : vec4<f32> = u_xlat9;
        let x_1046 : vec3<f32> = ((vec3<f32>(x_1039.x, x_1039.y, x_1039.w) * vec3<f32>(x_1041.z, x_1041.z, x_1041.z)) + vec3<f32>(x_1044.x, x_1044.y, x_1044.z));
        let x_1047 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1046.x, x_1046.y, x_1046.z, x_1047.w);
        let x_1049 : vec4<f32> = u_xlat9;
        let x_1051 : i32 = u_xlati44;
        let x_1054 : i32 = u_xlati44;
        let x_1058 : vec4<f32> = x_985.x_AdditionalLightsWorldToLights[((x_1051 + 3i) / 4i)][((x_1054 + 3i) % 4i)];
        let x_1060 : vec3<f32> = (vec3<f32>(x_1049.x, x_1049.y, x_1049.z) + vec3<f32>(x_1058.x, x_1058.y, x_1058.w));
        let x_1061 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1060.x, x_1060.y, x_1060.z, x_1061.w);
        let x_1063 : vec4<f32> = u_xlat9;
        let x_1065 : vec4<f32> = u_xlat9;
        let x_1067 : vec2<f32> = (vec2<f32>(x_1063.x, x_1063.y) / vec2<f32>(x_1065.z, x_1065.z));
        let x_1068 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1067.x, x_1067.y, x_1068.z, x_1068.w);
        let x_1070 : vec4<f32> = u_xlat9;
        let x_1073 : vec2<f32> = ((vec2<f32>(x_1070.x, x_1070.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1074 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1073.x, x_1073.y, x_1074.z, x_1074.w);
        let x_1076 : vec4<f32> = u_xlat9;
        let x_1080 : vec2<f32> = clamp(vec2<f32>(x_1076.x, x_1076.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1081 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1080.x, x_1080.y, x_1081.z, x_1081.w);
        let x_1083 : u32 = u_xlatu41;
        let x_1086 : vec4<f32> = x_985.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1083)];
        let x_1088 : vec4<f32> = u_xlat9;
        let x_1091 : u32 = u_xlatu41;
        let x_1094 : vec4<f32> = x_985.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1091)];
        let x_1096 : vec2<f32> = ((vec2<f32>(x_1086.x, x_1086.y) * vec2<f32>(x_1088.x, x_1088.y)) + vec2<f32>(x_1094.z, x_1094.w));
        let x_1097 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1096.x, x_1096.y, x_1097.z, x_1097.w);
      } else {
        let x_1101 : i32 = u_xlati42;
        u_xlatb42 = (x_1101 == 1i);
        let x_1103 : bool = u_xlatb42;
        u_xlati42 = select(0i, 1i, x_1103);
        let x_1105 : i32 = u_xlati42;
        if ((x_1105 != 0i)) {
          let x_1111 : vec3<f32> = vs_TEXCOORD1;
          let x_1113 : i32 = u_xlati44;
          let x_1116 : i32 = u_xlati44;
          let x_1120 : vec4<f32> = x_985.x_AdditionalLightsWorldToLights[((x_1113 + 1i) / 4i)][((x_1116 + 1i) % 4i)];
          u_xlat33 = (vec2<f32>(x_1111.y, x_1111.y) * vec2<f32>(x_1120.x, x_1120.y));
          let x_1123 : i32 = u_xlati44;
          let x_1125 : i32 = u_xlati44;
          let x_1128 : vec4<f32> = x_985.x_AdditionalLightsWorldToLights[(x_1123 / 4i)][(x_1125 % 4i)];
          let x_1130 : vec3<f32> = vs_TEXCOORD1;
          let x_1133 : vec2<f32> = u_xlat33;
          u_xlat33 = ((vec2<f32>(x_1128.x, x_1128.y) * vec2<f32>(x_1130.x, x_1130.x)) + x_1133);
          let x_1135 : i32 = u_xlati44;
          let x_1138 : i32 = u_xlati44;
          let x_1142 : vec4<f32> = x_985.x_AdditionalLightsWorldToLights[((x_1135 + 2i) / 4i)][((x_1138 + 2i) % 4i)];
          let x_1144 : vec3<f32> = vs_TEXCOORD1;
          let x_1147 : vec2<f32> = u_xlat33;
          u_xlat33 = ((vec2<f32>(x_1142.x, x_1142.y) * vec2<f32>(x_1144.z, x_1144.z)) + x_1147);
          let x_1149 : vec2<f32> = u_xlat33;
          let x_1150 : i32 = u_xlati44;
          let x_1153 : i32 = u_xlati44;
          let x_1157 : vec4<f32> = x_985.x_AdditionalLightsWorldToLights[((x_1150 + 3i) / 4i)][((x_1153 + 3i) % 4i)];
          u_xlat33 = (x_1149 + vec2<f32>(x_1157.x, x_1157.y));
          let x_1160 : vec2<f32> = u_xlat33;
          u_xlat33 = ((x_1160 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1163 : vec2<f32> = u_xlat33;
          u_xlat33 = fract(x_1163);
          let x_1165 : u32 = u_xlatu41;
          let x_1168 : vec4<f32> = x_985.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1165)];
          let x_1170 : vec2<f32> = u_xlat33;
          let x_1172 : u32 = u_xlatu41;
          let x_1175 : vec4<f32> = x_985.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1172)];
          let x_1177 : vec2<f32> = ((vec2<f32>(x_1168.x, x_1168.y) * x_1170) + vec2<f32>(x_1175.z, x_1175.w));
          let x_1178 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1177.x, x_1177.y, x_1178.z, x_1178.w);
        } else {
          let x_1182 : vec3<f32> = vs_TEXCOORD1;
          let x_1184 : i32 = u_xlati44;
          let x_1187 : i32 = u_xlati44;
          let x_1191 : vec4<f32> = x_985.x_AdditionalLightsWorldToLights[((x_1184 + 1i) / 4i)][((x_1187 + 1i) % 4i)];
          u_xlat10 = (vec4<f32>(x_1182.y, x_1182.y, x_1182.y, x_1182.y) * x_1191);
          let x_1193 : i32 = u_xlati44;
          let x_1195 : i32 = u_xlati44;
          let x_1198 : vec4<f32> = x_985.x_AdditionalLightsWorldToLights[(x_1193 / 4i)][(x_1195 % 4i)];
          let x_1199 : vec3<f32> = vs_TEXCOORD1;
          let x_1202 : vec4<f32> = u_xlat10;
          u_xlat10 = ((x_1198 * vec4<f32>(x_1199.x, x_1199.x, x_1199.x, x_1199.x)) + x_1202);
          let x_1204 : i32 = u_xlati44;
          let x_1207 : i32 = u_xlati44;
          let x_1211 : vec4<f32> = x_985.x_AdditionalLightsWorldToLights[((x_1204 + 2i) / 4i)][((x_1207 + 2i) % 4i)];
          let x_1212 : vec3<f32> = vs_TEXCOORD1;
          let x_1215 : vec4<f32> = u_xlat10;
          u_xlat10 = ((x_1211 * vec4<f32>(x_1212.z, x_1212.z, x_1212.z, x_1212.z)) + x_1215);
          let x_1217 : vec4<f32> = u_xlat10;
          let x_1218 : i32 = u_xlati44;
          let x_1221 : i32 = u_xlati44;
          let x_1225 : vec4<f32> = x_985.x_AdditionalLightsWorldToLights[((x_1218 + 3i) / 4i)][((x_1221 + 3i) % 4i)];
          u_xlat10 = (x_1217 + x_1225);
          let x_1227 : vec4<f32> = u_xlat10;
          let x_1229 : vec4<f32> = u_xlat10;
          let x_1231 : vec3<f32> = (vec3<f32>(x_1227.x, x_1227.y, x_1227.z) / vec3<f32>(x_1229.w, x_1229.w, x_1229.w));
          let x_1232 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_1231.x, x_1231.y, x_1231.z, x_1232.w);
          let x_1234 : vec4<f32> = u_xlat10;
          let x_1236 : vec4<f32> = u_xlat10;
          u_xlat42 = dot(vec3<f32>(x_1234.x, x_1234.y, x_1234.z), vec3<f32>(x_1236.x, x_1236.y, x_1236.z));
          let x_1239 : f32 = u_xlat42;
          u_xlat42 = inverseSqrt(x_1239);
          let x_1241 : f32 = u_xlat42;
          let x_1243 : vec4<f32> = u_xlat10;
          let x_1245 : vec3<f32> = (vec3<f32>(x_1241, x_1241, x_1241) * vec3<f32>(x_1243.x, x_1243.y, x_1243.z));
          let x_1246 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_1245.x, x_1245.y, x_1245.z, x_1246.w);
          let x_1248 : vec4<f32> = u_xlat10;
          u_xlat42 = dot(abs(vec3<f32>(x_1248.x, x_1248.y, x_1248.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1253 : f32 = u_xlat42;
          u_xlat42 = max(x_1253, 0.000001f);
          let x_1256 : f32 = u_xlat42;
          u_xlat42 = (1.0f / x_1256);
          let x_1259 : f32 = u_xlat42;
          let x_1261 : vec4<f32> = u_xlat10;
          u_xlat11 = (vec3<f32>(x_1259, x_1259, x_1259) * vec3<f32>(x_1261.z, x_1261.x, x_1261.y));
          let x_1265 : f32 = u_xlat11.x;
          u_xlat11.x = -(x_1265);
          let x_1269 : f32 = u_xlat11.x;
          u_xlat11.x = clamp(x_1269, 0.0f, 1.0f);
          let x_1273 : vec3<f32> = u_xlat11;
          let x_1276 : vec4<bool> = (vec4<f32>(x_1273.y, x_1273.z, x_1273.y, x_1273.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb33 = vec2<bool>(x_1276.x, x_1276.y);
          let x_1279 : bool = u_xlatb33.x;
          if (x_1279) {
            let x_1284 : f32 = u_xlat11.x;
            x_1280 = x_1284;
          } else {
            let x_1287 : f32 = u_xlat11.x;
            x_1280 = -(x_1287);
          }
          let x_1289 : f32 = x_1280;
          u_xlat33.x = x_1289;
          let x_1292 : bool = u_xlatb33.y;
          if (x_1292) {
            let x_1297 : f32 = u_xlat11.x;
            x_1293 = x_1297;
          } else {
            let x_1300 : f32 = u_xlat11.x;
            x_1293 = -(x_1300);
          }
          let x_1302 : f32 = x_1293;
          u_xlat33.y = x_1302;
          let x_1304 : vec4<f32> = u_xlat10;
          let x_1306 : f32 = u_xlat42;
          let x_1309 : vec2<f32> = u_xlat33;
          u_xlat33 = ((vec2<f32>(x_1304.x, x_1304.y) * vec2<f32>(x_1306, x_1306)) + x_1309);
          let x_1311 : vec2<f32> = u_xlat33;
          u_xlat33 = ((x_1311 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1314 : vec2<f32> = u_xlat33;
          u_xlat33 = clamp(x_1314, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1318 : u32 = u_xlatu41;
          let x_1321 : vec4<f32> = x_985.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1318)];
          let x_1323 : vec2<f32> = u_xlat33;
          let x_1325 : u32 = u_xlatu41;
          let x_1328 : vec4<f32> = x_985.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1325)];
          let x_1330 : vec2<f32> = ((vec2<f32>(x_1321.x, x_1321.y) * x_1323) + vec2<f32>(x_1328.z, x_1328.w));
          let x_1331 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1330.x, x_1330.y, x_1331.z, x_1331.w);
        }
      }
      let x_1338 : vec4<f32> = u_xlat9;
      let x_1341 : f32 = x_44.x_GlobalMipBias.x;
      let x_1342 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1338.x, x_1338.y), x_1341);
      u_xlat9 = x_1342;
      let x_1344 : bool = u_xlatb6.y;
      if (x_1344) {
        let x_1349 : f32 = u_xlat9.w;
        x_1345 = x_1349;
      } else {
        let x_1352 : f32 = u_xlat9.x;
        x_1345 = x_1352;
      }
      let x_1353 : f32 = x_1345;
      u_xlat42 = x_1353;
      let x_1355 : bool = u_xlatb6.x;
      if (x_1355) {
        let x_1359 : vec4<f32> = u_xlat9;
        x_1356 = vec3<f32>(x_1359.x, x_1359.y, x_1359.z);
      } else {
        let x_1362 : f32 = u_xlat42;
        x_1356 = vec3<f32>(x_1362, x_1362, x_1362);
      }
      let x_1364 : vec3<f32> = x_1356;
      let x_1365 : vec4<f32> = u_xlat9;
      u_xlat9 = vec4<f32>(x_1364.x, x_1364.y, x_1364.z, x_1365.w);
    } else {
      u_xlat9.x = 1.0f;
      u_xlat9.y = 1.0f;
      u_xlat9.z = 1.0f;
    }
    let x_1371 : vec4<f32> = u_xlat9;
    let x_1373 : u32 = u_xlatu41;
    let x_1376 : vec4<f32> = x_883.x_AdditionalLightsColor[bitcast<i32>(x_1373)];
    let x_1378 : vec3<f32> = (vec3<f32>(x_1371.x, x_1371.y, x_1371.z) * vec3<f32>(x_1376.x, x_1376.y, x_1376.z));
    let x_1379 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1378.x, x_1378.y, x_1378.z, x_1379.w);
    let x_1381 : f32 = u_xlat38;
    let x_1383 : vec4<f32> = u_xlat9;
    let x_1385 : vec3<f32> = (vec3<f32>(x_1381, x_1381, x_1381) * vec3<f32>(x_1383.x, x_1383.y, x_1383.z));
    let x_1386 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1385.x, x_1385.y, x_1385.z, x_1386.w);
    let x_1388 : f32 = u_xlat30;
    let x_1390 : vec4<f32> = u_xlat9;
    let x_1392 : vec3<f32> = (vec3<f32>(x_1388, x_1388, x_1388) * vec3<f32>(x_1390.x, x_1390.y, x_1390.z));
    let x_1393 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1392.x, x_1392.y, x_1392.z, x_1393.w);
    let x_1395 : vec3<f32> = u_xlat2;
    let x_1396 : vec3<f32> = u_xlat8;
    u_xlat41 = dot(x_1395, x_1396);
    let x_1398 : f32 = u_xlat41;
    u_xlat41 = clamp(x_1398, 0.0f, 1.0f);
    let x_1400 : f32 = u_xlat41;
    let x_1402 : vec4<f32> = u_xlat9;
    let x_1404 : vec3<f32> = (vec3<f32>(x_1400, x_1400, x_1400) * vec3<f32>(x_1402.x, x_1402.y, x_1402.z));
    let x_1405 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1404.x, x_1404.y, x_1404.z, x_1405.w);
    let x_1407 : vec3<f32> = u_xlat3;
    let x_1408 : vec3<f32> = u_xlat12;
    let x_1411 : vec3<f32> = u_xlat8;
    u_xlat8 = ((x_1407 * vec3<f32>(x_1408.x, x_1408.x, x_1408.x)) + x_1411);
    let x_1413 : vec3<f32> = u_xlat8;
    let x_1414 : vec3<f32> = u_xlat8;
    u_xlat41 = dot(x_1413, x_1414);
    let x_1416 : f32 = u_xlat41;
    u_xlat41 = max(x_1416, 1.17549435e-37f);
    let x_1418 : f32 = u_xlat41;
    u_xlat41 = inverseSqrt(x_1418);
    let x_1420 : f32 = u_xlat41;
    let x_1422 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_1420, x_1420, x_1420) * x_1422);
    let x_1424 : vec3<f32> = u_xlat2;
    let x_1425 : vec3<f32> = u_xlat8;
    u_xlat41 = dot(x_1424, x_1425);
    let x_1427 : f32 = u_xlat41;
    u_xlat41 = clamp(x_1427, 0.0f, 1.0f);
    let x_1429 : f32 = u_xlat41;
    u_xlat41 = log2(x_1429);
    let x_1432 : f32 = u_xlat1.x;
    let x_1433 : f32 = u_xlat41;
    u_xlat41 = (x_1432 * x_1433);
    let x_1435 : f32 = u_xlat41;
    u_xlat41 = exp2(x_1435);
    let x_1437 : f32 = u_xlat41;
    let x_1440 : vec4<f32> = x_57.x_SpecColor;
    u_xlat8 = (vec3<f32>(x_1437, x_1437, x_1437) * vec3<f32>(x_1440.x, x_1440.y, x_1440.z));
    let x_1443 : vec3<f32> = u_xlat8;
    let x_1444 : vec4<f32> = u_xlat9;
    u_xlat8 = (x_1443 * vec3<f32>(x_1444.x, x_1444.y, x_1444.z));
    let x_1447 : vec4<f32> = u_xlat10;
    let x_1449 : vec4<f32> = u_xlat1;
    let x_1452 : vec3<f32> = u_xlat8;
    u_xlat8 = ((vec3<f32>(x_1447.x, x_1447.y, x_1447.z) * vec3<f32>(x_1449.y, x_1449.z, x_1449.w)) + x_1452);
    let x_1454 : vec3<f32> = u_xlat7;
    let x_1455 : vec3<f32> = u_xlat8;
    u_xlat7 = (x_1454 + x_1455);

    continuing {
      let x_1457 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1457 + bitcast<u32>(1i));
    }
  }
  let x_1459 : vec4<f32> = u_xlat4;
  let x_1461 : vec4<f32> = u_xlat1;
  let x_1464 : vec4<f32> = u_xlat5;
  let x_1466 : vec3<f32> = ((vec3<f32>(x_1459.x, x_1459.y, x_1459.z) * vec3<f32>(x_1461.y, x_1461.z, x_1461.w)) + vec3<f32>(x_1464.x, x_1464.y, x_1464.z));
  let x_1467 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1466.x, x_1466.y, x_1466.z, x_1467.w);
  let x_1469 : vec3<f32> = u_xlat7;
  let x_1470 : vec4<f32> = u_xlat1;
  let x_1472 : vec3<f32> = (x_1469 + vec3<f32>(x_1470.x, x_1470.y, x_1470.z));
  let x_1473 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1472.x, x_1472.y, x_1472.z, x_1473.w);
  let x_1475 : f32 = u_xlat36;
  let x_1476 : f32 = u_xlat36;
  u_xlat12.x = (x_1475 * -(x_1476));
  let x_1481 : f32 = u_xlat12.x;
  u_xlat12.x = exp2(x_1481);
  let x_1484 : vec4<f32> = u_xlat1;
  let x_1488 : vec4<f32> = x_44.unity_FogColor;
  let x_1491 : vec3<f32> = (vec3<f32>(x_1484.x, x_1484.y, x_1484.z) + -(vec3<f32>(x_1488.x, x_1488.y, x_1488.z)));
  let x_1492 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1491.x, x_1491.y, x_1491.z, x_1492.w);
  let x_1496 : vec3<f32> = u_xlat12;
  let x_1498 : vec4<f32> = u_xlat1;
  let x_1502 : vec4<f32> = x_44.unity_FogColor;
  let x_1504 : vec3<f32> = ((vec3<f32>(x_1496.x, x_1496.x, x_1496.x) * vec3<f32>(x_1498.x, x_1498.y, x_1498.z)) + vec3<f32>(x_1502.x, x_1502.y, x_1502.z));
  let x_1505 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1504.x, x_1504.y, x_1504.z, x_1505.w);
  let x_1508 : f32 = x_57.x_Surface;
  u_xlatb12 = (x_1508 == 1.0f);
  let x_1510 : bool = u_xlatb12;
  let x_1511 : bool = u_xlatb24;
  u_xlatb12 = (x_1510 | x_1511);
  let x_1513 : bool = u_xlatb12;
  if (x_1513) {
    let x_1518 : f32 = u_xlat0.x;
    x_1514 = x_1518;
  } else {
    x_1514 = 1.0f;
  }
  let x_1520 : f32 = x_1514;
  SV_Target0.w = x_1520;
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

