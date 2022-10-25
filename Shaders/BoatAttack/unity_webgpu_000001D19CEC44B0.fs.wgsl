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

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(7) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(1) @binding(3) var<uniform> x_55 : UnityPerMaterial;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(6) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_176 : MainLightShadows;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_262 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(2) var<uniform> x_392 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_501 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_603 : AdditionalLightsCookies;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat31 : f32;
  var u_xlat32 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb13 : vec2<bool>;
  var u_xlatb23 : bool;
  var x_212 : f32;
  var u_xlat23 : f32;
  var u_xlat4 : vec4<f32>;
  var x_350 : f32;
  var x_361 : vec3<f32>;
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
  var x_907 : f32;
  var x_920 : f32;
  var x_982 : f32;
  var x_993 : vec3<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlatb10 : bool;
  var x_1069 : f32;
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
  let x_65 : vec3<f32> = vs_TEXCOORD2;
  let x_66 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_65, x_66);
  let x_71 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_71);
  let x_74 : vec3<f32> = u_xlat1;
  let x_76 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1 = (vec3<f32>(x_74.x, x_74.x, x_74.x) * x_76);
  let x_85 : vec2<f32> = vs_TEXCOORD7;
  let x_87 : f32 = x_43.x_GlobalMipBias.x;
  let x_88 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_85, x_87);
  u_xlat2 = vec3<f32>(x_88.x, x_88.y, x_88.z);
  let x_94 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_95 : vec2<f32> = vec2<f32>(x_94.x, x_94.y);
  let x_99 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_95.x, x_95.y));
  let x_100 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_99.x, x_99.y, x_100.z);
  let x_102 : vec3<f32> = u_xlat3;
  let x_104 : vec4<f32> = hlslcc_FragCoord;
  let x_106 : vec2<f32> = (vec2<f32>(x_102.x, x_102.y) * vec2<f32>(x_104.x, x_104.y));
  let x_107 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_106.x, x_106.y, x_107.z);
  let x_112 : f32 = u_xlat3.y;
  let x_115 : f32 = x_43.x_ScaleBiasRt.x;
  let x_118 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat31 = ((x_112 * x_115) + x_118);
  let x_120 : f32 = u_xlat31;
  u_xlat3.z = (-(x_120) + 1.0f);
  let x_130 : vec3<f32> = u_xlat3;
  let x_133 : f32 = x_43.x_GlobalMipBias.x;
  let x_134 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_130.x, x_130.z), x_133);
  u_xlat31 = x_134.x;
  let x_137 : f32 = u_xlat31;
  u_xlat32 = (x_137 + -1.0f);
  let x_142 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_143 : f32 = u_xlat32;
  u_xlat32 = ((x_142 * x_143) + 1.0f);
  let x_146 : f32 = u_xlat31;
  u_xlat31 = min(x_146, 1.0f);
  let x_150 : vec4<f32> = vs_TEXCOORD6;
  let x_151 : vec2<f32> = vec2<f32>(x_150.x, x_150.y);
  let x_153 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_151.x, x_151.y, x_153);
  let x_165 : vec3<f32> = txVec0;
  let x_168 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_165.xy, x_165.z);
  u_xlat3.x = x_168;
  let x_179 : f32 = x_176.x_MainLightShadowParams.x;
  u_xlat13.x = (-(x_179) + 1.0f);
  let x_184 : f32 = u_xlat3.x;
  let x_186 : f32 = x_176.x_MainLightShadowParams.x;
  let x_189 : f32 = u_xlat13.x;
  u_xlat3.x = ((x_184 * x_186) + x_189);
  let x_197 : f32 = vs_TEXCOORD6.z;
  u_xlatb13.x = (0.0f >= x_197);
  let x_203 : f32 = vs_TEXCOORD6.z;
  u_xlatb23 = (x_203 >= 1.0f);
  let x_205 : bool = u_xlatb23;
  let x_207 : bool = u_xlatb13.x;
  u_xlatb13.x = (x_205 | x_207);
  let x_211 : bool = u_xlatb13.x;
  if (x_211) {
    x_212 = 1.0f;
  } else {
    let x_217 : f32 = u_xlat3.x;
    x_212 = x_217;
  }
  let x_218 : f32 = x_212;
  u_xlat3.x = x_218;
  let x_221 : vec3<f32> = vs_TEXCOORD1;
  let x_225 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  u_xlat13 = (x_221 + -(x_225));
  let x_228 : vec3<f32> = u_xlat13;
  let x_229 : vec3<f32> = u_xlat13;
  u_xlat13.x = dot(x_228, x_229);
  let x_233 : f32 = u_xlat13.x;
  let x_235 : f32 = x_176.x_MainLightShadowParams.z;
  let x_238 : f32 = x_176.x_MainLightShadowParams.w;
  u_xlat13.x = ((x_233 * x_235) + x_238);
  let x_242 : f32 = u_xlat13.x;
  u_xlat13.x = clamp(x_242, 0.0f, 1.0f);
  let x_247 : f32 = u_xlat3.x;
  u_xlat23 = (-(x_247) + 1.0f);
  let x_251 : f32 = u_xlat13.x;
  let x_252 : f32 = u_xlat23;
  let x_255 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_251 * x_252) + x_255);
  let x_265 : f32 = x_262.x_MainLightCookieTextureFormat;
  u_xlatb13.x = !((x_265 == -1.0f));
  let x_269 : bool = u_xlatb13.x;
  if (x_269) {
    let x_272 : vec3<f32> = vs_TEXCOORD1;
    let x_275 : vec4<f32> = x_262.x_MainLightWorldToLight[1i];
    let x_277 : vec2<f32> = (vec2<f32>(x_272.y, x_272.y) * vec2<f32>(x_275.x, x_275.y));
    let x_278 : vec3<f32> = u_xlat13;
    u_xlat13 = vec3<f32>(x_277.x, x_277.y, x_278.z);
    let x_281 : vec4<f32> = x_262.x_MainLightWorldToLight[0i];
    let x_283 : vec3<f32> = vs_TEXCOORD1;
    let x_286 : vec3<f32> = u_xlat13;
    let x_288 : vec2<f32> = ((vec2<f32>(x_281.x, x_281.y) * vec2<f32>(x_283.x, x_283.x)) + vec2<f32>(x_286.x, x_286.y));
    let x_289 : vec3<f32> = u_xlat13;
    u_xlat13 = vec3<f32>(x_288.x, x_288.y, x_289.z);
    let x_292 : vec4<f32> = x_262.x_MainLightWorldToLight[2i];
    let x_294 : vec3<f32> = vs_TEXCOORD1;
    let x_297 : vec3<f32> = u_xlat13;
    let x_299 : vec2<f32> = ((vec2<f32>(x_292.x, x_292.y) * vec2<f32>(x_294.z, x_294.z)) + vec2<f32>(x_297.x, x_297.y));
    let x_300 : vec3<f32> = u_xlat13;
    u_xlat13 = vec3<f32>(x_299.x, x_299.y, x_300.z);
    let x_302 : vec3<f32> = u_xlat13;
    let x_306 : vec4<f32> = x_262.x_MainLightWorldToLight[3i];
    let x_308 : vec2<f32> = (vec2<f32>(x_302.x, x_302.y) + vec2<f32>(x_306.x, x_306.y));
    let x_309 : vec3<f32> = u_xlat13;
    u_xlat13 = vec3<f32>(x_308.x, x_308.y, x_309.z);
    let x_311 : vec3<f32> = u_xlat13;
    let x_316 : vec2<f32> = ((vec2<f32>(x_311.x, x_311.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_317 : vec3<f32> = u_xlat13;
    u_xlat13 = vec3<f32>(x_316.x, x_316.y, x_317.z);
    let x_325 : vec3<f32> = u_xlat13;
    let x_328 : f32 = x_43.x_GlobalMipBias.x;
    let x_329 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_325.x, x_325.y), x_328);
    u_xlat4 = x_329;
    let x_331 : f32 = x_262.x_MainLightCookieTextureFormat;
    let x_333 : f32 = x_262.x_MainLightCookieTextureFormat;
    let x_335 : f32 = x_262.x_MainLightCookieTextureFormat;
    let x_337 : f32 = x_262.x_MainLightCookieTextureFormat;
    let x_338 : vec4<f32> = vec4<f32>(x_331, x_333, x_335, x_337);
    let x_346 : vec4<bool> = (vec4<f32>(x_338.x, x_338.y, x_338.z, x_338.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb13 = vec2<bool>(x_346.x, x_346.y);
    let x_349 : bool = u_xlatb13.y;
    if (x_349) {
      let x_354 : f32 = u_xlat4.w;
      x_350 = x_354;
    } else {
      let x_357 : f32 = u_xlat4.x;
      x_350 = x_357;
    }
    let x_358 : f32 = x_350;
    u_xlat23 = x_358;
    let x_360 : bool = u_xlatb13.x;
    if (x_360) {
      let x_364 : vec4<f32> = u_xlat4;
      x_361 = vec3<f32>(x_364.x, x_364.y, x_364.z);
    } else {
      let x_367 : f32 = u_xlat23;
      x_361 = vec3<f32>(x_367, x_367, x_367);
    }
    let x_369 : vec3<f32> = x_361;
    u_xlat13 = x_369;
  } else {
    u_xlat13.x = 1.0f;
    u_xlat13.y = 1.0f;
    u_xlat13.z = 1.0f;
  }
  let x_374 : vec3<f32> = u_xlat13;
  let x_376 : vec4<f32> = x_43.x_MainLightColor;
  u_xlat13 = (x_374 * vec3<f32>(x_376.x, x_376.y, x_376.z));
  let x_379 : f32 = u_xlat32;
  let x_381 : vec3<f32> = u_xlat13;
  u_xlat13 = (vec3<f32>(x_379, x_379, x_379) * x_381);
  let x_383 : f32 = u_xlat31;
  let x_385 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_383, x_383, x_383) * x_385);
  let x_388 : f32 = u_xlat3.x;
  let x_395 : f32 = x_392.unity_LightData.z;
  u_xlat31 = (x_388 * x_395);
  let x_397 : f32 = u_xlat31;
  let x_399 : vec3<f32> = u_xlat13;
  u_xlat3 = (vec3<f32>(x_397, x_397, x_397) * x_399);
  let x_401 : vec3<f32> = u_xlat1;
  let x_403 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat31 = dot(x_401, vec3<f32>(x_403.x, x_403.y, x_403.z));
  let x_406 : f32 = u_xlat31;
  u_xlat31 = clamp(x_406, 0.0f, 1.0f);
  let x_408 : f32 = u_xlat31;
  let x_410 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_408, x_408, x_408) * x_410);
  let x_412 : vec4<f32> = u_xlat0;
  let x_414 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_412.y, x_412.z, x_412.w) * x_414);
  let x_417 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_419 : f32 = x_392.unity_LightData.y;
  u_xlat31 = min(x_417, x_419);
  let x_423 : f32 = u_xlat31;
  u_xlatu31 = bitcast<u32>(i32(x_423));
  let x_428 : f32 = x_262.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_430 : f32 = x_262.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_432 : f32 = x_262.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_434 : f32 = x_262.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_435 : vec4<f32> = vec4<f32>(x_428, x_430, x_432, x_434);
  let x_441 : vec4<bool> = (vec4<f32>(x_435.x, x_435.y, x_435.z, x_435.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb4 = vec2<bool>(x_441.x, x_441.y);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_453 : u32 = u_xlatu_loop_1;
    let x_454 : u32 = u_xlatu31;
    if ((x_453 < x_454)) {
    } else {
      break;
    }
    let x_457 : u32 = u_xlatu_loop_1;
    u_xlatu24 = (x_457 >> 2u);
    let x_461 : u32 = u_xlatu_loop_1;
    u_xlati34 = bitcast<i32>((x_461 & 3u));
    let x_465 : u32 = u_xlatu24;
    let x_468 : vec4<f32> = x_392.unity_LightIndices[bitcast<i32>(x_465)];
    let x_478 : i32 = u_xlati34;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_483 : vec4<u32> = indexable[x_478];
    u_xlat24 = dot(x_468, bitcast<vec4<f32>>(x_483));
    let x_486 : f32 = u_xlat24;
    u_xlatu24 = bitcast<u32>(i32(x_486));
    let x_490 : vec3<f32> = vs_TEXCOORD1;
    let x_502 : u32 = u_xlatu24;
    let x_505 : vec4<f32> = x_501.x_AdditionalLightsPosition[bitcast<i32>(x_502)];
    let x_508 : u32 = u_xlatu24;
    let x_511 : vec4<f32> = x_501.x_AdditionalLightsPosition[bitcast<i32>(x_508)];
    u_xlat6 = ((-(x_490) * vec3<f32>(x_505.w, x_505.w, x_505.w)) + vec3<f32>(x_511.x, x_511.y, x_511.z));
    let x_515 : vec3<f32> = u_xlat6;
    let x_516 : vec3<f32> = u_xlat6;
    u_xlat34 = dot(x_515, x_516);
    let x_518 : f32 = u_xlat34;
    u_xlat34 = max(x_518, 6.10351562e-05f);
    let x_522 : f32 = u_xlat34;
    u_xlat35 = inverseSqrt(x_522);
    let x_524 : f32 = u_xlat35;
    let x_526 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_524, x_524, x_524) * x_526);
    let x_528 : f32 = u_xlat34;
    u_xlat35 = (1.0f / x_528);
    let x_530 : f32 = u_xlat34;
    let x_531 : u32 = u_xlatu24;
    let x_534 : f32 = x_501.x_AdditionalLightsAttenuation[bitcast<i32>(x_531)].x;
    u_xlat34 = (x_530 * x_534);
    let x_536 : f32 = u_xlat34;
    let x_538 : f32 = u_xlat34;
    u_xlat34 = ((-(x_536) * x_538) + 1.0f);
    let x_541 : f32 = u_xlat34;
    u_xlat34 = max(x_541, 0.0f);
    let x_543 : f32 = u_xlat34;
    let x_544 : f32 = u_xlat34;
    u_xlat34 = (x_543 * x_544);
    let x_546 : f32 = u_xlat34;
    let x_547 : f32 = u_xlat35;
    u_xlat34 = (x_546 * x_547);
    let x_549 : u32 = u_xlatu24;
    let x_552 : vec4<f32> = x_501.x_AdditionalLightsSpotDir[bitcast<i32>(x_549)];
    let x_554 : vec3<f32> = u_xlat6;
    u_xlat35 = dot(vec3<f32>(x_552.x, x_552.y, x_552.z), x_554);
    let x_556 : f32 = u_xlat35;
    let x_557 : u32 = u_xlatu24;
    let x_560 : f32 = x_501.x_AdditionalLightsAttenuation[bitcast<i32>(x_557)].z;
    let x_562 : u32 = u_xlatu24;
    let x_565 : f32 = x_501.x_AdditionalLightsAttenuation[bitcast<i32>(x_562)].w;
    u_xlat35 = ((x_556 * x_560) + x_565);
    let x_567 : f32 = u_xlat35;
    u_xlat35 = clamp(x_567, 0.0f, 1.0f);
    let x_569 : f32 = u_xlat35;
    let x_570 : f32 = u_xlat35;
    u_xlat35 = (x_569 * x_570);
    let x_572 : f32 = u_xlat34;
    let x_573 : f32 = u_xlat35;
    u_xlat34 = (x_572 * x_573);
    let x_576 : u32 = u_xlatu24;
    u_xlatu35 = (x_576 >> 5u);
    let x_579 : u32 = u_xlatu24;
    u_xlati36 = (1i << bitcast<u32>((bitcast<i32>(x_579) & 31i)));
    let x_585 : i32 = u_xlati36;
    let x_587 : u32 = u_xlatu35;
    let x_590 : f32 = x_262.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_587)].el;
    u_xlati35 = bitcast<i32>((bitcast<u32>(x_585) & bitcast<u32>(x_590)));
    let x_594 : i32 = u_xlati35;
    if ((x_594 != 0i)) {
      let x_604 : u32 = u_xlatu24;
      let x_607 : f32 = x_603.x_AdditionalLightsLightTypes[bitcast<i32>(x_604)].el;
      u_xlati35 = i32(x_607);
      let x_609 : i32 = u_xlati35;
      u_xlati36 = select(1i, 0i, (x_609 != 0i));
      let x_613 : u32 = u_xlatu24;
      u_xlati7 = (bitcast<i32>(x_613) << bitcast<u32>(2i));
      let x_616 : i32 = u_xlati36;
      if ((x_616 != 0i)) {
        let x_621 : vec3<f32> = vs_TEXCOORD1;
        let x_623 : i32 = u_xlati7;
        let x_626 : i32 = u_xlati7;
        let x_630 : vec4<f32> = x_603.x_AdditionalLightsWorldToLights[((x_623 + 1i) / 4i)][((x_626 + 1i) % 4i)];
        u_xlat17 = (vec3<f32>(x_621.y, x_621.y, x_621.y) * vec3<f32>(x_630.x, x_630.y, x_630.w));
        let x_633 : i32 = u_xlati7;
        let x_635 : i32 = u_xlati7;
        let x_638 : vec4<f32> = x_603.x_AdditionalLightsWorldToLights[(x_633 / 4i)][(x_635 % 4i)];
        let x_640 : vec3<f32> = vs_TEXCOORD1;
        let x_643 : vec3<f32> = u_xlat17;
        u_xlat17 = ((vec3<f32>(x_638.x, x_638.y, x_638.w) * vec3<f32>(x_640.x, x_640.x, x_640.x)) + x_643);
        let x_645 : i32 = u_xlati7;
        let x_648 : i32 = u_xlati7;
        let x_652 : vec4<f32> = x_603.x_AdditionalLightsWorldToLights[((x_645 + 2i) / 4i)][((x_648 + 2i) % 4i)];
        let x_654 : vec3<f32> = vs_TEXCOORD1;
        let x_657 : vec3<f32> = u_xlat17;
        u_xlat17 = ((vec3<f32>(x_652.x, x_652.y, x_652.w) * vec3<f32>(x_654.z, x_654.z, x_654.z)) + x_657);
        let x_659 : vec3<f32> = u_xlat17;
        let x_660 : i32 = u_xlati7;
        let x_663 : i32 = u_xlati7;
        let x_667 : vec4<f32> = x_603.x_AdditionalLightsWorldToLights[((x_660 + 3i) / 4i)][((x_663 + 3i) % 4i)];
        u_xlat17 = (x_659 + vec3<f32>(x_667.x, x_667.y, x_667.w));
        let x_670 : vec3<f32> = u_xlat17;
        let x_672 : vec3<f32> = u_xlat17;
        let x_674 : vec2<f32> = (vec2<f32>(x_670.x, x_670.y) / vec2<f32>(x_672.z, x_672.z));
        let x_675 : vec3<f32> = u_xlat17;
        u_xlat17 = vec3<f32>(x_674.x, x_674.y, x_675.z);
        let x_677 : vec3<f32> = u_xlat17;
        let x_680 : vec2<f32> = ((vec2<f32>(x_677.x, x_677.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_681 : vec3<f32> = u_xlat17;
        u_xlat17 = vec3<f32>(x_680.x, x_680.y, x_681.z);
        let x_683 : vec3<f32> = u_xlat17;
        let x_687 : vec2<f32> = clamp(vec2<f32>(x_683.x, x_683.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_688 : vec3<f32> = u_xlat17;
        u_xlat17 = vec3<f32>(x_687.x, x_687.y, x_688.z);
        let x_690 : u32 = u_xlatu24;
        let x_693 : vec4<f32> = x_603.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_690)];
        let x_695 : vec3<f32> = u_xlat17;
        let x_698 : u32 = u_xlatu24;
        let x_701 : vec4<f32> = x_603.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_698)];
        let x_703 : vec2<f32> = ((vec2<f32>(x_693.x, x_693.y) * vec2<f32>(x_695.x, x_695.y)) + vec2<f32>(x_701.z, x_701.w));
        let x_704 : vec3<f32> = u_xlat17;
        u_xlat17 = vec3<f32>(x_703.x, x_703.y, x_704.z);
      } else {
        let x_708 : i32 = u_xlati35;
        u_xlatb35 = (x_708 == 1i);
        let x_710 : bool = u_xlatb35;
        u_xlati35 = select(0i, 1i, x_710);
        let x_712 : i32 = u_xlati35;
        if ((x_712 != 0i)) {
          let x_717 : vec3<f32> = vs_TEXCOORD1;
          let x_719 : i32 = u_xlati7;
          let x_722 : i32 = u_xlati7;
          let x_726 : vec4<f32> = x_603.x_AdditionalLightsWorldToLights[((x_719 + 1i) / 4i)][((x_722 + 1i) % 4i)];
          let x_728 : vec2<f32> = (vec2<f32>(x_717.y, x_717.y) * vec2<f32>(x_726.x, x_726.y));
          let x_729 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_728.x, x_728.y, x_729.z, x_729.w);
          let x_731 : i32 = u_xlati7;
          let x_733 : i32 = u_xlati7;
          let x_736 : vec4<f32> = x_603.x_AdditionalLightsWorldToLights[(x_731 / 4i)][(x_733 % 4i)];
          let x_738 : vec3<f32> = vs_TEXCOORD1;
          let x_741 : vec4<f32> = u_xlat8;
          let x_743 : vec2<f32> = ((vec2<f32>(x_736.x, x_736.y) * vec2<f32>(x_738.x, x_738.x)) + vec2<f32>(x_741.x, x_741.y));
          let x_744 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_743.x, x_743.y, x_744.z, x_744.w);
          let x_746 : i32 = u_xlati7;
          let x_749 : i32 = u_xlati7;
          let x_753 : vec4<f32> = x_603.x_AdditionalLightsWorldToLights[((x_746 + 2i) / 4i)][((x_749 + 2i) % 4i)];
          let x_755 : vec3<f32> = vs_TEXCOORD1;
          let x_758 : vec4<f32> = u_xlat8;
          let x_760 : vec2<f32> = ((vec2<f32>(x_753.x, x_753.y) * vec2<f32>(x_755.z, x_755.z)) + vec2<f32>(x_758.x, x_758.y));
          let x_761 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_760.x, x_760.y, x_761.z, x_761.w);
          let x_763 : vec4<f32> = u_xlat8;
          let x_765 : i32 = u_xlati7;
          let x_768 : i32 = u_xlati7;
          let x_772 : vec4<f32> = x_603.x_AdditionalLightsWorldToLights[((x_765 + 3i) / 4i)][((x_768 + 3i) % 4i)];
          let x_774 : vec2<f32> = (vec2<f32>(x_763.x, x_763.y) + vec2<f32>(x_772.x, x_772.y));
          let x_775 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_774.x, x_774.y, x_775.z, x_775.w);
          let x_777 : vec4<f32> = u_xlat8;
          let x_780 : vec2<f32> = ((vec2<f32>(x_777.x, x_777.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_781 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_780.x, x_780.y, x_781.z, x_781.w);
          let x_783 : vec4<f32> = u_xlat8;
          let x_785 : vec2<f32> = fract(vec2<f32>(x_783.x, x_783.y));
          let x_786 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_785.x, x_785.y, x_786.z, x_786.w);
          let x_788 : u32 = u_xlatu24;
          let x_791 : vec4<f32> = x_603.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_788)];
          let x_793 : vec4<f32> = u_xlat8;
          let x_796 : u32 = u_xlatu24;
          let x_799 : vec4<f32> = x_603.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_796)];
          let x_801 : vec2<f32> = ((vec2<f32>(x_791.x, x_791.y) * vec2<f32>(x_793.x, x_793.y)) + vec2<f32>(x_799.z, x_799.w));
          let x_802 : vec3<f32> = u_xlat17;
          u_xlat17 = vec3<f32>(x_801.x, x_801.y, x_802.z);
        } else {
          let x_805 : vec3<f32> = vs_TEXCOORD1;
          let x_807 : i32 = u_xlati7;
          let x_810 : i32 = u_xlati7;
          let x_814 : vec4<f32> = x_603.x_AdditionalLightsWorldToLights[((x_807 + 1i) / 4i)][((x_810 + 1i) % 4i)];
          u_xlat8 = (vec4<f32>(x_805.y, x_805.y, x_805.y, x_805.y) * x_814);
          let x_816 : i32 = u_xlati7;
          let x_818 : i32 = u_xlati7;
          let x_821 : vec4<f32> = x_603.x_AdditionalLightsWorldToLights[(x_816 / 4i)][(x_818 % 4i)];
          let x_822 : vec3<f32> = vs_TEXCOORD1;
          let x_825 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_821 * vec4<f32>(x_822.x, x_822.x, x_822.x, x_822.x)) + x_825);
          let x_827 : i32 = u_xlati7;
          let x_830 : i32 = u_xlati7;
          let x_834 : vec4<f32> = x_603.x_AdditionalLightsWorldToLights[((x_827 + 2i) / 4i)][((x_830 + 2i) % 4i)];
          let x_835 : vec3<f32> = vs_TEXCOORD1;
          let x_838 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_834 * vec4<f32>(x_835.z, x_835.z, x_835.z, x_835.z)) + x_838);
          let x_840 : vec4<f32> = u_xlat8;
          let x_841 : i32 = u_xlati7;
          let x_844 : i32 = u_xlati7;
          let x_848 : vec4<f32> = x_603.x_AdditionalLightsWorldToLights[((x_841 + 3i) / 4i)][((x_844 + 3i) % 4i)];
          u_xlat8 = (x_840 + x_848);
          let x_850 : vec4<f32> = u_xlat8;
          let x_852 : vec4<f32> = u_xlat8;
          let x_854 : vec3<f32> = (vec3<f32>(x_850.x, x_850.y, x_850.z) / vec3<f32>(x_852.w, x_852.w, x_852.w));
          let x_855 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_854.x, x_854.y, x_854.z, x_855.w);
          let x_857 : vec4<f32> = u_xlat8;
          let x_859 : vec4<f32> = u_xlat8;
          u_xlat35 = dot(vec3<f32>(x_857.x, x_857.y, x_857.z), vec3<f32>(x_859.x, x_859.y, x_859.z));
          let x_862 : f32 = u_xlat35;
          u_xlat35 = inverseSqrt(x_862);
          let x_864 : f32 = u_xlat35;
          let x_866 : vec4<f32> = u_xlat8;
          let x_868 : vec3<f32> = (vec3<f32>(x_864, x_864, x_864) * vec3<f32>(x_866.x, x_866.y, x_866.z));
          let x_869 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_868.x, x_868.y, x_868.z, x_869.w);
          let x_871 : vec4<f32> = u_xlat8;
          u_xlat35 = dot(abs(vec3<f32>(x_871.x, x_871.y, x_871.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_876 : f32 = u_xlat35;
          u_xlat35 = max(x_876, 0.000001f);
          let x_879 : f32 = u_xlat35;
          u_xlat35 = (1.0f / x_879);
          let x_882 : f32 = u_xlat35;
          let x_884 : vec4<f32> = u_xlat8;
          u_xlat9 = (vec3<f32>(x_882, x_882, x_882) * vec3<f32>(x_884.z, x_884.x, x_884.y));
          let x_888 : f32 = u_xlat9.x;
          u_xlat9.x = -(x_888);
          let x_892 : f32 = u_xlat9.x;
          u_xlat9.x = clamp(x_892, 0.0f, 1.0f);
          let x_897 : vec3<f32> = u_xlat9;
          let x_900 : vec4<bool> = (vec4<f32>(x_897.y, x_897.y, x_897.y, x_897.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_901 : vec2<bool> = vec2<bool>(x_900.x, x_900.w);
          let x_902 : vec4<bool> = u_xlatb7;
          u_xlatb7 = vec4<bool>(x_901.x, x_902.y, x_902.z, x_901.y);
          let x_906 : bool = u_xlatb7.x;
          if (x_906) {
            let x_911 : f32 = u_xlat9.x;
            x_907 = x_911;
          } else {
            let x_914 : f32 = u_xlat9.x;
            x_907 = -(x_914);
          }
          let x_916 : f32 = x_907;
          u_xlat7.x = x_916;
          let x_919 : bool = u_xlatb7.w;
          if (x_919) {
            let x_924 : f32 = u_xlat9.x;
            x_920 = x_924;
          } else {
            let x_927 : f32 = u_xlat9.x;
            x_920 = -(x_927);
          }
          let x_929 : f32 = x_920;
          u_xlat7.w = x_929;
          let x_931 : vec4<f32> = u_xlat8;
          let x_933 : f32 = u_xlat35;
          let x_936 : vec4<f32> = u_xlat7;
          let x_938 : vec2<f32> = ((vec2<f32>(x_931.x, x_931.y) * vec2<f32>(x_933, x_933)) + vec2<f32>(x_936.x, x_936.w));
          let x_939 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_938.x, x_939.y, x_939.z, x_938.y);
          let x_941 : vec4<f32> = u_xlat7;
          let x_944 : vec2<f32> = ((vec2<f32>(x_941.x, x_941.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_945 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_944.x, x_945.y, x_945.z, x_944.y);
          let x_947 : vec4<f32> = u_xlat7;
          let x_951 : vec2<f32> = clamp(vec2<f32>(x_947.x, x_947.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_952 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_951.x, x_952.y, x_952.z, x_951.y);
          let x_954 : u32 = u_xlatu24;
          let x_957 : vec4<f32> = x_603.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_954)];
          let x_959 : vec4<f32> = u_xlat7;
          let x_962 : u32 = u_xlatu24;
          let x_965 : vec4<f32> = x_603.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_962)];
          let x_967 : vec2<f32> = ((vec2<f32>(x_957.x, x_957.y) * vec2<f32>(x_959.x, x_959.w)) + vec2<f32>(x_965.z, x_965.w));
          let x_968 : vec3<f32> = u_xlat17;
          u_xlat17 = vec3<f32>(x_967.x, x_967.y, x_968.z);
        }
      }
      let x_975 : vec3<f32> = u_xlat17;
      let x_978 : f32 = x_43.x_GlobalMipBias.x;
      let x_979 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_975.x, x_975.y), x_978);
      u_xlat7 = x_979;
      let x_981 : bool = u_xlatb4.y;
      if (x_981) {
        let x_986 : f32 = u_xlat7.w;
        x_982 = x_986;
      } else {
        let x_989 : f32 = u_xlat7.x;
        x_982 = x_989;
      }
      let x_990 : f32 = x_982;
      u_xlat35 = x_990;
      let x_992 : bool = u_xlatb4.x;
      if (x_992) {
        let x_996 : vec4<f32> = u_xlat7;
        x_993 = vec3<f32>(x_996.x, x_996.y, x_996.z);
      } else {
        let x_999 : f32 = u_xlat35;
        x_993 = vec3<f32>(x_999, x_999, x_999);
      }
      let x_1001 : vec3<f32> = x_993;
      let x_1002 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_1001.x, x_1001.y, x_1001.z, x_1002.w);
    } else {
      u_xlat7.x = 1.0f;
      u_xlat7.y = 1.0f;
      u_xlat7.z = 1.0f;
    }
    let x_1008 : vec4<f32> = u_xlat7;
    let x_1010 : u32 = u_xlatu24;
    let x_1013 : vec4<f32> = x_501.x_AdditionalLightsColor[bitcast<i32>(x_1010)];
    let x_1015 : vec3<f32> = (vec3<f32>(x_1008.x, x_1008.y, x_1008.z) * vec3<f32>(x_1013.x, x_1013.y, x_1013.z));
    let x_1016 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1015.x, x_1015.y, x_1015.z, x_1016.w);
    let x_1018 : f32 = u_xlat32;
    let x_1020 : vec4<f32> = u_xlat7;
    let x_1022 : vec3<f32> = (vec3<f32>(x_1018, x_1018, x_1018) * vec3<f32>(x_1020.x, x_1020.y, x_1020.z));
    let x_1023 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1022.x, x_1022.y, x_1022.z, x_1023.w);
    let x_1025 : f32 = u_xlat34;
    let x_1027 : vec4<f32> = u_xlat7;
    let x_1029 : vec3<f32> = (vec3<f32>(x_1025, x_1025, x_1025) * vec3<f32>(x_1027.x, x_1027.y, x_1027.z));
    let x_1030 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1029.x, x_1029.y, x_1029.z, x_1030.w);
    let x_1032 : vec3<f32> = u_xlat1;
    let x_1033 : vec3<f32> = u_xlat6;
    u_xlat24 = dot(x_1032, x_1033);
    let x_1035 : f32 = u_xlat24;
    u_xlat24 = clamp(x_1035, 0.0f, 1.0f);
    let x_1037 : f32 = u_xlat24;
    let x_1039 : vec4<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_1037, x_1037, x_1037) * vec3<f32>(x_1039.x, x_1039.y, x_1039.z));
    let x_1042 : vec3<f32> = u_xlat6;
    let x_1043 : vec4<f32> = u_xlat0;
    let x_1046 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_1042 * vec3<f32>(x_1043.y, x_1043.z, x_1043.w)) + x_1046);

    continuing {
      let x_1048 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1048 + bitcast<u32>(1i));
    }
  }
  let x_1051 : vec3<f32> = u_xlat2;
  let x_1052 : vec4<f32> = u_xlat0;
  let x_1055 : vec3<f32> = u_xlat3;
  u_xlat10 = ((x_1051 * vec3<f32>(x_1052.y, x_1052.z, x_1052.w)) + x_1055);
  let x_1059 : vec3<f32> = u_xlat5;
  let x_1060 : vec3<f32> = u_xlat10;
  let x_1061 : vec3<f32> = (x_1059 + x_1060);
  let x_1062 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1061.x, x_1061.y, x_1061.z, x_1062.w);
  let x_1066 : f32 = x_55.x_Surface;
  u_xlatb10 = (x_1066 == 1.0f);
  let x_1068 : bool = u_xlatb10;
  if (x_1068) {
    let x_1073 : f32 = u_xlat0.x;
    x_1069 = x_1073;
  } else {
    x_1069 = 1.0f;
  }
  let x_1075 : f32 = x_1069;
  SV_Target0.w = x_1075;
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

