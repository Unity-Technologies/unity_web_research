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
  x_ScaleBiasRt : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
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

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(7) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(6) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_222 : MainLightShadows;

@group(1) @binding(5) var<uniform> x_311 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(2) var<uniform> x_431 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_542 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_644 : AdditionalLightsCookies;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat31 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat32 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlat23 : vec2<f32>;
  var u_xlatb23 : vec2<bool>;
  var u_xlatb33 : bool;
  var x_257 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlat33 : f32;
  var x_381 : f32;
  var x_392 : vec3<f32>;
  var u_xlatu32 : u32;
  var u_xlatb4 : vec2<bool>;
  var u_xlat5 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu34 : u32;
  var u_xlati35 : i32;
  var u_xlat34 : f32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat6 : vec3<f32>;
  var u_xlat35 : f32;
  var u_xlat36 : f32;
  var u_xlatu36 : u32;
  var u_xlati7 : i32;
  var u_xlati36 : i32;
  var u_xlati17 : i32;
  var u_xlat7 : vec4<f32>;
  var u_xlatb36 : bool;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlatb17 : vec3<bool>;
  var u_xlat17 : vec3<f32>;
  var x_960 : f32;
  var x_973 : f32;
  var x_1035 : f32;
  var x_1046 : vec3<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlatb10 : bool;
  var x_1146 : f32;
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
  let x_66 : vec3<f32> = vs_TEXCOORD2;
  let x_67 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_66, x_67);
  let x_72 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_72);
  let x_75 : vec3<f32> = u_xlat1;
  let x_77 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1 = (vec3<f32>(x_75.x, x_75.x, x_75.x) * x_77);
  let x_83 : f32 = vs_TEXCOORD1.y;
  let x_87 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat31 = (x_83 * x_87);
  let x_91 : f32 = x_44.unity_MatrixV[0i].z;
  let x_93 : f32 = vs_TEXCOORD1.x;
  let x_95 : f32 = u_xlat31;
  u_xlat31 = ((x_91 * x_93) + x_95);
  let x_99 : f32 = x_44.unity_MatrixV[2i].z;
  let x_101 : f32 = vs_TEXCOORD1.z;
  let x_103 : f32 = u_xlat31;
  u_xlat31 = ((x_99 * x_101) + x_103);
  let x_105 : f32 = u_xlat31;
  let x_108 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat31 = (x_105 + x_108);
  let x_110 : f32 = u_xlat31;
  let x_114 : f32 = x_44.x_ProjectionParams.y;
  u_xlat31 = (-(x_110) + -(x_114));
  let x_117 : f32 = u_xlat31;
  u_xlat31 = max(x_117, 0.0f);
  let x_120 : f32 = u_xlat31;
  let x_123 : f32 = x_44.unity_FogParams.x;
  u_xlat31 = (x_120 * x_123);
  let x_132 : vec2<f32> = vs_TEXCOORD7;
  let x_134 : f32 = x_44.x_GlobalMipBias.x;
  let x_135 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_132, x_134);
  u_xlat2 = vec3<f32>(x_135.x, x_135.y, x_135.z);
  let x_140 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_141 : vec2<f32> = vec2<f32>(x_140.x, x_140.y);
  let x_145 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_141.x, x_141.y));
  let x_146 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_145.x, x_145.y, x_146.z);
  let x_148 : vec3<f32> = u_xlat3;
  let x_150 : vec4<f32> = hlslcc_FragCoord;
  let x_152 : vec2<f32> = (vec2<f32>(x_148.x, x_148.y) * vec2<f32>(x_150.x, x_150.y));
  let x_153 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_152.x, x_152.y, x_153.z);
  let x_157 : f32 = u_xlat3.y;
  let x_160 : f32 = x_44.x_ScaleBiasRt.x;
  let x_163 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat32 = ((x_157 * x_160) + x_163);
  let x_165 : f32 = u_xlat32;
  u_xlat3.z = (-(x_165) + 1.0f);
  let x_174 : vec3<f32> = u_xlat3;
  let x_177 : f32 = x_44.x_GlobalMipBias.x;
  let x_178 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_174.x, x_174.z), x_177);
  u_xlat32 = x_178.x;
  let x_180 : f32 = u_xlat32;
  u_xlat3.x = (x_180 + -1.0f);
  let x_186 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_188 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_186 * x_188) + 1.0f);
  let x_192 : f32 = u_xlat32;
  u_xlat32 = min(x_192, 1.0f);
  let x_196 : vec4<f32> = vs_TEXCOORD6;
  let x_197 : vec2<f32> = vec2<f32>(x_196.x, x_196.y);
  let x_199 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_197.x, x_197.y, x_199);
  let x_212 : vec3<f32> = txVec0;
  let x_214 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_212.xy, x_212.z);
  u_xlat13.x = x_214;
  let x_224 : f32 = x_222.x_MainLightShadowParams.x;
  u_xlat23.x = (-(x_224) + 1.0f);
  let x_229 : f32 = u_xlat13.x;
  let x_231 : f32 = x_222.x_MainLightShadowParams.x;
  let x_234 : f32 = u_xlat23.x;
  u_xlat13.x = ((x_229 * x_231) + x_234);
  let x_242 : f32 = vs_TEXCOORD6.z;
  u_xlatb23.x = (0.0f >= x_242);
  let x_248 : f32 = vs_TEXCOORD6.z;
  u_xlatb33 = (x_248 >= 1.0f);
  let x_250 : bool = u_xlatb33;
  let x_252 : bool = u_xlatb23.x;
  u_xlatb23.x = (x_250 | x_252);
  let x_256 : bool = u_xlatb23.x;
  if (x_256) {
    x_257 = 1.0f;
  } else {
    let x_262 : f32 = u_xlat13.x;
    x_257 = x_262;
  }
  let x_263 : f32 = x_257;
  u_xlat13.x = x_263;
  let x_266 : vec3<f32> = vs_TEXCOORD1;
  let x_270 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_272 : vec3<f32> = (x_266 + -(x_270));
  let x_273 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_272.x, x_272.y, x_272.z, x_273.w);
  let x_275 : vec4<f32> = u_xlat4;
  let x_277 : vec4<f32> = u_xlat4;
  u_xlat23.x = dot(vec3<f32>(x_275.x, x_275.y, x_275.z), vec3<f32>(x_277.x, x_277.y, x_277.z));
  let x_282 : f32 = u_xlat23.x;
  let x_284 : f32 = x_222.x_MainLightShadowParams.z;
  let x_287 : f32 = x_222.x_MainLightShadowParams.w;
  u_xlat23.x = ((x_282 * x_284) + x_287);
  let x_291 : f32 = u_xlat23.x;
  u_xlat23.x = clamp(x_291, 0.0f, 1.0f);
  let x_296 : f32 = u_xlat13.x;
  u_xlat33 = (-(x_296) + 1.0f);
  let x_300 : f32 = u_xlat23.x;
  let x_301 : f32 = u_xlat33;
  let x_304 : f32 = u_xlat13.x;
  u_xlat13.x = ((x_300 * x_301) + x_304);
  let x_313 : f32 = x_311.x_MainLightCookieTextureFormat;
  u_xlatb23.x = !((x_313 == -1.0f));
  let x_317 : bool = u_xlatb23.x;
  if (x_317) {
    let x_320 : vec3<f32> = vs_TEXCOORD1;
    let x_323 : vec4<f32> = x_311.x_MainLightWorldToLight[1i];
    u_xlat23 = (vec2<f32>(x_320.y, x_320.y) * vec2<f32>(x_323.x, x_323.y));
    let x_327 : vec4<f32> = x_311.x_MainLightWorldToLight[0i];
    let x_329 : vec3<f32> = vs_TEXCOORD1;
    let x_332 : vec2<f32> = u_xlat23;
    u_xlat23 = ((vec2<f32>(x_327.x, x_327.y) * vec2<f32>(x_329.x, x_329.x)) + x_332);
    let x_335 : vec4<f32> = x_311.x_MainLightWorldToLight[2i];
    let x_337 : vec3<f32> = vs_TEXCOORD1;
    let x_340 : vec2<f32> = u_xlat23;
    u_xlat23 = ((vec2<f32>(x_335.x, x_335.y) * vec2<f32>(x_337.z, x_337.z)) + x_340);
    let x_342 : vec2<f32> = u_xlat23;
    let x_344 : vec4<f32> = x_311.x_MainLightWorldToLight[3i];
    u_xlat23 = (x_342 + vec2<f32>(x_344.x, x_344.y));
    let x_347 : vec2<f32> = u_xlat23;
    u_xlat23 = ((x_347 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_357 : vec2<f32> = u_xlat23;
    let x_359 : f32 = x_44.x_GlobalMipBias.x;
    let x_360 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_357, x_359);
    u_xlat4 = x_360;
    let x_362 : f32 = x_311.x_MainLightCookieTextureFormat;
    let x_364 : f32 = x_311.x_MainLightCookieTextureFormat;
    let x_366 : f32 = x_311.x_MainLightCookieTextureFormat;
    let x_368 : f32 = x_311.x_MainLightCookieTextureFormat;
    let x_369 : vec4<f32> = vec4<f32>(x_362, x_364, x_366, x_368);
    let x_377 : vec4<bool> = (vec4<f32>(x_369.x, x_369.y, x_369.z, x_369.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb23 = vec2<bool>(x_377.x, x_377.y);
    let x_380 : bool = u_xlatb23.y;
    if (x_380) {
      let x_385 : f32 = u_xlat4.w;
      x_381 = x_385;
    } else {
      let x_388 : f32 = u_xlat4.x;
      x_381 = x_388;
    }
    let x_389 : f32 = x_381;
    u_xlat33 = x_389;
    let x_391 : bool = u_xlatb23.x;
    if (x_391) {
      let x_395 : vec4<f32> = u_xlat4;
      x_392 = vec3<f32>(x_395.x, x_395.y, x_395.z);
    } else {
      let x_398 : f32 = u_xlat33;
      x_392 = vec3<f32>(x_398, x_398, x_398);
    }
    let x_400 : vec3<f32> = x_392;
    let x_401 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_400.x, x_400.y, x_400.z, x_401.w);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
  }
  let x_407 : vec4<f32> = u_xlat4;
  let x_410 : vec4<f32> = x_44.x_MainLightColor;
  let x_412 : vec3<f32> = (vec3<f32>(x_407.x, x_407.y, x_407.z) * vec3<f32>(x_410.x, x_410.y, x_410.z));
  let x_413 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_412.x, x_412.y, x_412.z, x_413.w);
  let x_415 : vec3<f32> = u_xlat3;
  let x_417 : vec4<f32> = u_xlat4;
  let x_419 : vec3<f32> = (vec3<f32>(x_415.x, x_415.x, x_415.x) * vec3<f32>(x_417.x, x_417.y, x_417.z));
  let x_420 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_419.x, x_419.y, x_419.z, x_420.w);
  let x_422 : f32 = u_xlat32;
  let x_424 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_422, x_422, x_422) * x_424);
  let x_427 : f32 = u_xlat13.x;
  let x_434 : f32 = x_431.unity_LightData.z;
  u_xlat32 = (x_427 * x_434);
  let x_436 : f32 = u_xlat32;
  let x_438 : vec4<f32> = u_xlat4;
  u_xlat13 = (vec3<f32>(x_436, x_436, x_436) * vec3<f32>(x_438.x, x_438.y, x_438.z));
  let x_441 : vec3<f32> = u_xlat1;
  let x_443 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat32 = dot(x_441, vec3<f32>(x_443.x, x_443.y, x_443.z));
  let x_446 : f32 = u_xlat32;
  u_xlat32 = clamp(x_446, 0.0f, 1.0f);
  let x_448 : f32 = u_xlat32;
  let x_450 : vec3<f32> = u_xlat13;
  u_xlat13 = (vec3<f32>(x_448, x_448, x_448) * x_450);
  let x_452 : vec4<f32> = u_xlat0;
  let x_454 : vec3<f32> = u_xlat13;
  u_xlat13 = (vec3<f32>(x_452.y, x_452.z, x_452.w) * x_454);
  let x_457 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_459 : f32 = x_431.unity_LightData.y;
  u_xlat32 = min(x_457, x_459);
  let x_463 : f32 = u_xlat32;
  u_xlatu32 = bitcast<u32>(i32(x_463));
  let x_468 : f32 = x_311.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_470 : f32 = x_311.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_472 : f32 = x_311.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_474 : f32 = x_311.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_475 : vec4<f32> = vec4<f32>(x_468, x_470, x_472, x_474);
  let x_482 : vec4<bool> = (vec4<f32>(x_475.x, x_475.y, x_475.z, x_475.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb4 = vec2<bool>(x_482.x, x_482.y);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_494 : u32 = u_xlatu_loop_1;
    let x_495 : u32 = u_xlatu32;
    if ((x_494 < x_495)) {
    } else {
      break;
    }
    let x_498 : u32 = u_xlatu_loop_1;
    u_xlatu34 = (x_498 >> 2u);
    let x_502 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_502 & 3u));
    let x_506 : u32 = u_xlatu34;
    let x_509 : vec4<f32> = x_431.unity_LightIndices[bitcast<i32>(x_506)];
    let x_519 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_524 : vec4<u32> = indexable[x_519];
    u_xlat34 = dot(x_509, bitcast<vec4<f32>>(x_524));
    let x_527 : f32 = u_xlat34;
    u_xlatu34 = bitcast<u32>(i32(x_527));
    let x_531 : vec3<f32> = vs_TEXCOORD1;
    let x_543 : u32 = u_xlatu34;
    let x_546 : vec4<f32> = x_542.x_AdditionalLightsPosition[bitcast<i32>(x_543)];
    let x_549 : u32 = u_xlatu34;
    let x_552 : vec4<f32> = x_542.x_AdditionalLightsPosition[bitcast<i32>(x_549)];
    u_xlat6 = ((-(x_531) * vec3<f32>(x_546.w, x_546.w, x_546.w)) + vec3<f32>(x_552.x, x_552.y, x_552.z));
    let x_556 : vec3<f32> = u_xlat6;
    let x_557 : vec3<f32> = u_xlat6;
    u_xlat35 = dot(x_556, x_557);
    let x_559 : f32 = u_xlat35;
    u_xlat35 = max(x_559, 6.10351562e-05f);
    let x_563 : f32 = u_xlat35;
    u_xlat36 = inverseSqrt(x_563);
    let x_565 : f32 = u_xlat36;
    let x_567 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_565, x_565, x_565) * x_567);
    let x_569 : f32 = u_xlat35;
    u_xlat36 = (1.0f / x_569);
    let x_571 : f32 = u_xlat35;
    let x_572 : u32 = u_xlatu34;
    let x_575 : f32 = x_542.x_AdditionalLightsAttenuation[bitcast<i32>(x_572)].x;
    u_xlat35 = (x_571 * x_575);
    let x_577 : f32 = u_xlat35;
    let x_579 : f32 = u_xlat35;
    u_xlat35 = ((-(x_577) * x_579) + 1.0f);
    let x_582 : f32 = u_xlat35;
    u_xlat35 = max(x_582, 0.0f);
    let x_584 : f32 = u_xlat35;
    let x_585 : f32 = u_xlat35;
    u_xlat35 = (x_584 * x_585);
    let x_587 : f32 = u_xlat35;
    let x_588 : f32 = u_xlat36;
    u_xlat35 = (x_587 * x_588);
    let x_590 : u32 = u_xlatu34;
    let x_593 : vec4<f32> = x_542.x_AdditionalLightsSpotDir[bitcast<i32>(x_590)];
    let x_595 : vec3<f32> = u_xlat6;
    u_xlat36 = dot(vec3<f32>(x_593.x, x_593.y, x_593.z), x_595);
    let x_597 : f32 = u_xlat36;
    let x_598 : u32 = u_xlatu34;
    let x_601 : f32 = x_542.x_AdditionalLightsAttenuation[bitcast<i32>(x_598)].z;
    let x_603 : u32 = u_xlatu34;
    let x_606 : f32 = x_542.x_AdditionalLightsAttenuation[bitcast<i32>(x_603)].w;
    u_xlat36 = ((x_597 * x_601) + x_606);
    let x_608 : f32 = u_xlat36;
    u_xlat36 = clamp(x_608, 0.0f, 1.0f);
    let x_610 : f32 = u_xlat36;
    let x_611 : f32 = u_xlat36;
    u_xlat36 = (x_610 * x_611);
    let x_613 : f32 = u_xlat35;
    let x_614 : f32 = u_xlat36;
    u_xlat35 = (x_613 * x_614);
    let x_617 : u32 = u_xlatu34;
    u_xlatu36 = (x_617 >> 5u);
    let x_620 : u32 = u_xlatu34;
    u_xlati7 = (1i << bitcast<u32>((bitcast<i32>(x_620) & 31i)));
    let x_626 : i32 = u_xlati7;
    let x_628 : u32 = u_xlatu36;
    let x_631 : f32 = x_311.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_628)].el;
    u_xlati36 = bitcast<i32>((bitcast<u32>(x_626) & bitcast<u32>(x_631)));
    let x_635 : i32 = u_xlati36;
    if ((x_635 != 0i)) {
      let x_645 : u32 = u_xlatu34;
      let x_648 : f32 = x_644.x_AdditionalLightsLightTypes[bitcast<i32>(x_645)].el;
      u_xlati36 = i32(x_648);
      let x_650 : i32 = u_xlati36;
      u_xlati7 = select(1i, 0i, (x_650 != 0i));
      let x_654 : u32 = u_xlatu34;
      u_xlati17 = (bitcast<i32>(x_654) << bitcast<u32>(2i));
      let x_657 : i32 = u_xlati7;
      if ((x_657 != 0i)) {
        let x_662 : vec3<f32> = vs_TEXCOORD1;
        let x_664 : i32 = u_xlati17;
        let x_667 : i32 = u_xlati17;
        let x_671 : vec4<f32> = x_644.x_AdditionalLightsWorldToLights[((x_664 + 1i) / 4i)][((x_667 + 1i) % 4i)];
        let x_673 : vec3<f32> = (vec3<f32>(x_662.y, x_662.y, x_662.y) * vec3<f32>(x_671.x, x_671.y, x_671.w));
        let x_674 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_673.x, x_674.y, x_673.y, x_673.z);
        let x_676 : i32 = u_xlati17;
        let x_678 : i32 = u_xlati17;
        let x_681 : vec4<f32> = x_644.x_AdditionalLightsWorldToLights[(x_676 / 4i)][(x_678 % 4i)];
        let x_683 : vec3<f32> = vs_TEXCOORD1;
        let x_686 : vec4<f32> = u_xlat7;
        let x_688 : vec3<f32> = ((vec3<f32>(x_681.x, x_681.y, x_681.w) * vec3<f32>(x_683.x, x_683.x, x_683.x)) + vec3<f32>(x_686.x, x_686.z, x_686.w));
        let x_689 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_688.x, x_689.y, x_688.y, x_688.z);
        let x_691 : i32 = u_xlati17;
        let x_694 : i32 = u_xlati17;
        let x_698 : vec4<f32> = x_644.x_AdditionalLightsWorldToLights[((x_691 + 2i) / 4i)][((x_694 + 2i) % 4i)];
        let x_700 : vec3<f32> = vs_TEXCOORD1;
        let x_703 : vec4<f32> = u_xlat7;
        let x_705 : vec3<f32> = ((vec3<f32>(x_698.x, x_698.y, x_698.w) * vec3<f32>(x_700.z, x_700.z, x_700.z)) + vec3<f32>(x_703.x, x_703.z, x_703.w));
        let x_706 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_705.x, x_706.y, x_705.y, x_705.z);
        let x_708 : vec4<f32> = u_xlat7;
        let x_710 : i32 = u_xlati17;
        let x_713 : i32 = u_xlati17;
        let x_717 : vec4<f32> = x_644.x_AdditionalLightsWorldToLights[((x_710 + 3i) / 4i)][((x_713 + 3i) % 4i)];
        let x_719 : vec3<f32> = (vec3<f32>(x_708.x, x_708.z, x_708.w) + vec3<f32>(x_717.x, x_717.y, x_717.w));
        let x_720 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_719.x, x_720.y, x_719.y, x_719.z);
        let x_722 : vec4<f32> = u_xlat7;
        let x_724 : vec4<f32> = u_xlat7;
        let x_726 : vec2<f32> = (vec2<f32>(x_722.x, x_722.z) / vec2<f32>(x_724.w, x_724.w));
        let x_727 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_726.x, x_727.y, x_726.y, x_727.w);
        let x_729 : vec4<f32> = u_xlat7;
        let x_732 : vec2<f32> = ((vec2<f32>(x_729.x, x_729.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_733 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_732.x, x_733.y, x_732.y, x_733.w);
        let x_735 : vec4<f32> = u_xlat7;
        let x_739 : vec2<f32> = clamp(vec2<f32>(x_735.x, x_735.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_740 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_739.x, x_740.y, x_739.y, x_740.w);
        let x_742 : u32 = u_xlatu34;
        let x_745 : vec4<f32> = x_644.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_742)];
        let x_747 : vec4<f32> = u_xlat7;
        let x_750 : u32 = u_xlatu34;
        let x_753 : vec4<f32> = x_644.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_750)];
        let x_755 : vec2<f32> = ((vec2<f32>(x_745.x, x_745.y) * vec2<f32>(x_747.x, x_747.z)) + vec2<f32>(x_753.z, x_753.w));
        let x_756 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_755.x, x_756.y, x_755.y, x_756.w);
      } else {
        let x_760 : i32 = u_xlati36;
        u_xlatb36 = (x_760 == 1i);
        let x_762 : bool = u_xlatb36;
        u_xlati36 = select(0i, 1i, x_762);
        let x_764 : i32 = u_xlati36;
        if ((x_764 != 0i)) {
          let x_769 : vec3<f32> = vs_TEXCOORD1;
          let x_771 : i32 = u_xlati17;
          let x_774 : i32 = u_xlati17;
          let x_778 : vec4<f32> = x_644.x_AdditionalLightsWorldToLights[((x_771 + 1i) / 4i)][((x_774 + 1i) % 4i)];
          let x_780 : vec2<f32> = (vec2<f32>(x_769.y, x_769.y) * vec2<f32>(x_778.x, x_778.y));
          let x_781 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_780.x, x_780.y, x_781.z, x_781.w);
          let x_783 : i32 = u_xlati17;
          let x_785 : i32 = u_xlati17;
          let x_788 : vec4<f32> = x_644.x_AdditionalLightsWorldToLights[(x_783 / 4i)][(x_785 % 4i)];
          let x_790 : vec3<f32> = vs_TEXCOORD1;
          let x_793 : vec4<f32> = u_xlat8;
          let x_795 : vec2<f32> = ((vec2<f32>(x_788.x, x_788.y) * vec2<f32>(x_790.x, x_790.x)) + vec2<f32>(x_793.x, x_793.y));
          let x_796 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_795.x, x_795.y, x_796.z, x_796.w);
          let x_798 : i32 = u_xlati17;
          let x_801 : i32 = u_xlati17;
          let x_805 : vec4<f32> = x_644.x_AdditionalLightsWorldToLights[((x_798 + 2i) / 4i)][((x_801 + 2i) % 4i)];
          let x_807 : vec3<f32> = vs_TEXCOORD1;
          let x_810 : vec4<f32> = u_xlat8;
          let x_812 : vec2<f32> = ((vec2<f32>(x_805.x, x_805.y) * vec2<f32>(x_807.z, x_807.z)) + vec2<f32>(x_810.x, x_810.y));
          let x_813 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_812.x, x_812.y, x_813.z, x_813.w);
          let x_815 : vec4<f32> = u_xlat8;
          let x_817 : i32 = u_xlati17;
          let x_820 : i32 = u_xlati17;
          let x_824 : vec4<f32> = x_644.x_AdditionalLightsWorldToLights[((x_817 + 3i) / 4i)][((x_820 + 3i) % 4i)];
          let x_826 : vec2<f32> = (vec2<f32>(x_815.x, x_815.y) + vec2<f32>(x_824.x, x_824.y));
          let x_827 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_826.x, x_826.y, x_827.z, x_827.w);
          let x_829 : vec4<f32> = u_xlat8;
          let x_832 : vec2<f32> = ((vec2<f32>(x_829.x, x_829.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_833 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_832.x, x_832.y, x_833.z, x_833.w);
          let x_835 : vec4<f32> = u_xlat8;
          let x_837 : vec2<f32> = fract(vec2<f32>(x_835.x, x_835.y));
          let x_838 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_837.x, x_837.y, x_838.z, x_838.w);
          let x_840 : u32 = u_xlatu34;
          let x_843 : vec4<f32> = x_644.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_840)];
          let x_845 : vec4<f32> = u_xlat8;
          let x_848 : u32 = u_xlatu34;
          let x_851 : vec4<f32> = x_644.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_848)];
          let x_853 : vec2<f32> = ((vec2<f32>(x_843.x, x_843.y) * vec2<f32>(x_845.x, x_845.y)) + vec2<f32>(x_851.z, x_851.w));
          let x_854 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_853.x, x_854.y, x_853.y, x_854.w);
        } else {
          let x_857 : vec3<f32> = vs_TEXCOORD1;
          let x_859 : i32 = u_xlati17;
          let x_862 : i32 = u_xlati17;
          let x_866 : vec4<f32> = x_644.x_AdditionalLightsWorldToLights[((x_859 + 1i) / 4i)][((x_862 + 1i) % 4i)];
          u_xlat8 = (vec4<f32>(x_857.y, x_857.y, x_857.y, x_857.y) * x_866);
          let x_868 : i32 = u_xlati17;
          let x_870 : i32 = u_xlati17;
          let x_873 : vec4<f32> = x_644.x_AdditionalLightsWorldToLights[(x_868 / 4i)][(x_870 % 4i)];
          let x_874 : vec3<f32> = vs_TEXCOORD1;
          let x_877 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_873 * vec4<f32>(x_874.x, x_874.x, x_874.x, x_874.x)) + x_877);
          let x_879 : i32 = u_xlati17;
          let x_882 : i32 = u_xlati17;
          let x_886 : vec4<f32> = x_644.x_AdditionalLightsWorldToLights[((x_879 + 2i) / 4i)][((x_882 + 2i) % 4i)];
          let x_887 : vec3<f32> = vs_TEXCOORD1;
          let x_890 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_886 * vec4<f32>(x_887.z, x_887.z, x_887.z, x_887.z)) + x_890);
          let x_892 : vec4<f32> = u_xlat8;
          let x_893 : i32 = u_xlati17;
          let x_896 : i32 = u_xlati17;
          let x_900 : vec4<f32> = x_644.x_AdditionalLightsWorldToLights[((x_893 + 3i) / 4i)][((x_896 + 3i) % 4i)];
          u_xlat8 = (x_892 + x_900);
          let x_902 : vec4<f32> = u_xlat8;
          let x_904 : vec4<f32> = u_xlat8;
          let x_906 : vec3<f32> = (vec3<f32>(x_902.x, x_902.y, x_902.z) / vec3<f32>(x_904.w, x_904.w, x_904.w));
          let x_907 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_906.x, x_906.y, x_906.z, x_907.w);
          let x_909 : vec4<f32> = u_xlat8;
          let x_911 : vec4<f32> = u_xlat8;
          u_xlat36 = dot(vec3<f32>(x_909.x, x_909.y, x_909.z), vec3<f32>(x_911.x, x_911.y, x_911.z));
          let x_914 : f32 = u_xlat36;
          u_xlat36 = inverseSqrt(x_914);
          let x_916 : f32 = u_xlat36;
          let x_918 : vec4<f32> = u_xlat8;
          let x_920 : vec3<f32> = (vec3<f32>(x_916, x_916, x_916) * vec3<f32>(x_918.x, x_918.y, x_918.z));
          let x_921 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_920.x, x_920.y, x_920.z, x_921.w);
          let x_923 : vec4<f32> = u_xlat8;
          u_xlat36 = dot(abs(vec3<f32>(x_923.x, x_923.y, x_923.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_928 : f32 = u_xlat36;
          u_xlat36 = max(x_928, 0.000001f);
          let x_931 : f32 = u_xlat36;
          u_xlat36 = (1.0f / x_931);
          let x_934 : f32 = u_xlat36;
          let x_936 : vec4<f32> = u_xlat8;
          u_xlat9 = (vec3<f32>(x_934, x_934, x_934) * vec3<f32>(x_936.z, x_936.x, x_936.y));
          let x_940 : f32 = u_xlat9.x;
          u_xlat9.x = -(x_940);
          let x_944 : f32 = u_xlat9.x;
          u_xlat9.x = clamp(x_944, 0.0f, 1.0f);
          let x_950 : vec3<f32> = u_xlat9;
          let x_953 : vec4<bool> = (vec4<f32>(x_950.y, x_950.y, x_950.z, x_950.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_954 : vec2<bool> = vec2<bool>(x_953.x, x_953.z);
          let x_955 : vec3<bool> = u_xlatb17;
          u_xlatb17 = vec3<bool>(x_954.x, x_955.y, x_954.y);
          let x_959 : bool = u_xlatb17.x;
          if (x_959) {
            let x_964 : f32 = u_xlat9.x;
            x_960 = x_964;
          } else {
            let x_967 : f32 = u_xlat9.x;
            x_960 = -(x_967);
          }
          let x_969 : f32 = x_960;
          u_xlat17.x = x_969;
          let x_972 : bool = u_xlatb17.z;
          if (x_972) {
            let x_977 : f32 = u_xlat9.x;
            x_973 = x_977;
          } else {
            let x_980 : f32 = u_xlat9.x;
            x_973 = -(x_980);
          }
          let x_982 : f32 = x_973;
          u_xlat17.z = x_982;
          let x_984 : vec4<f32> = u_xlat8;
          let x_986 : f32 = u_xlat36;
          let x_989 : vec3<f32> = u_xlat17;
          let x_991 : vec2<f32> = ((vec2<f32>(x_984.x, x_984.y) * vec2<f32>(x_986, x_986)) + vec2<f32>(x_989.x, x_989.z));
          let x_992 : vec3<f32> = u_xlat17;
          u_xlat17 = vec3<f32>(x_991.x, x_992.y, x_991.y);
          let x_994 : vec3<f32> = u_xlat17;
          let x_997 : vec2<f32> = ((vec2<f32>(x_994.x, x_994.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_998 : vec3<f32> = u_xlat17;
          u_xlat17 = vec3<f32>(x_997.x, x_998.y, x_997.y);
          let x_1000 : vec3<f32> = u_xlat17;
          let x_1004 : vec2<f32> = clamp(vec2<f32>(x_1000.x, x_1000.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1005 : vec3<f32> = u_xlat17;
          u_xlat17 = vec3<f32>(x_1004.x, x_1005.y, x_1004.y);
          let x_1007 : u32 = u_xlatu34;
          let x_1010 : vec4<f32> = x_644.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1007)];
          let x_1012 : vec3<f32> = u_xlat17;
          let x_1015 : u32 = u_xlatu34;
          let x_1018 : vec4<f32> = x_644.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1015)];
          let x_1020 : vec2<f32> = ((vec2<f32>(x_1010.x, x_1010.y) * vec2<f32>(x_1012.x, x_1012.z)) + vec2<f32>(x_1018.z, x_1018.w));
          let x_1021 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_1020.x, x_1021.y, x_1020.y, x_1021.w);
        }
      }
      let x_1028 : vec4<f32> = u_xlat7;
      let x_1031 : f32 = x_44.x_GlobalMipBias.x;
      let x_1032 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1028.x, x_1028.z), x_1031);
      u_xlat7 = x_1032;
      let x_1034 : bool = u_xlatb4.y;
      if (x_1034) {
        let x_1039 : f32 = u_xlat7.w;
        x_1035 = x_1039;
      } else {
        let x_1042 : f32 = u_xlat7.x;
        x_1035 = x_1042;
      }
      let x_1043 : f32 = x_1035;
      u_xlat36 = x_1043;
      let x_1045 : bool = u_xlatb4.x;
      if (x_1045) {
        let x_1049 : vec4<f32> = u_xlat7;
        x_1046 = vec3<f32>(x_1049.x, x_1049.y, x_1049.z);
      } else {
        let x_1052 : f32 = u_xlat36;
        x_1046 = vec3<f32>(x_1052, x_1052, x_1052);
      }
      let x_1054 : vec3<f32> = x_1046;
      let x_1055 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_1054.x, x_1054.y, x_1054.z, x_1055.w);
    } else {
      u_xlat7.x = 1.0f;
      u_xlat7.y = 1.0f;
      u_xlat7.z = 1.0f;
    }
    let x_1061 : vec4<f32> = u_xlat7;
    let x_1063 : u32 = u_xlatu34;
    let x_1066 : vec4<f32> = x_542.x_AdditionalLightsColor[bitcast<i32>(x_1063)];
    let x_1068 : vec3<f32> = (vec3<f32>(x_1061.x, x_1061.y, x_1061.z) * vec3<f32>(x_1066.x, x_1066.y, x_1066.z));
    let x_1069 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1068.x, x_1068.y, x_1068.z, x_1069.w);
    let x_1071 : vec3<f32> = u_xlat3;
    let x_1073 : vec4<f32> = u_xlat7;
    let x_1075 : vec3<f32> = (vec3<f32>(x_1071.x, x_1071.x, x_1071.x) * vec3<f32>(x_1073.x, x_1073.y, x_1073.z));
    let x_1076 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1075.x, x_1075.y, x_1075.z, x_1076.w);
    let x_1078 : f32 = u_xlat35;
    let x_1080 : vec4<f32> = u_xlat7;
    let x_1082 : vec3<f32> = (vec3<f32>(x_1078, x_1078, x_1078) * vec3<f32>(x_1080.x, x_1080.y, x_1080.z));
    let x_1083 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1082.x, x_1082.y, x_1082.z, x_1083.w);
    let x_1085 : vec3<f32> = u_xlat1;
    let x_1086 : vec3<f32> = u_xlat6;
    u_xlat34 = dot(x_1085, x_1086);
    let x_1088 : f32 = u_xlat34;
    u_xlat34 = clamp(x_1088, 0.0f, 1.0f);
    let x_1090 : f32 = u_xlat34;
    let x_1092 : vec4<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_1090, x_1090, x_1090) * vec3<f32>(x_1092.x, x_1092.y, x_1092.z));
    let x_1095 : vec3<f32> = u_xlat6;
    let x_1096 : vec4<f32> = u_xlat0;
    let x_1099 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_1095 * vec3<f32>(x_1096.y, x_1096.z, x_1096.w)) + x_1099);

    continuing {
      let x_1101 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1101 + bitcast<u32>(1i));
    }
  }
  let x_1104 : vec3<f32> = u_xlat2;
  let x_1105 : vec4<f32> = u_xlat0;
  let x_1108 : vec3<f32> = u_xlat13;
  u_xlat10 = ((x_1104 * vec3<f32>(x_1105.y, x_1105.z, x_1105.w)) + x_1108);
  let x_1110 : vec3<f32> = u_xlat5;
  let x_1111 : vec3<f32> = u_xlat10;
  u_xlat10 = (x_1110 + x_1111);
  let x_1113 : f32 = u_xlat31;
  let x_1114 : f32 = u_xlat31;
  u_xlat1.x = (x_1113 * -(x_1114));
  let x_1119 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1119);
  let x_1122 : vec3<f32> = u_xlat10;
  let x_1125 : vec4<f32> = x_44.unity_FogColor;
  u_xlat10 = (x_1122 + -(vec3<f32>(x_1125.x, x_1125.y, x_1125.z)));
  let x_1131 : vec3<f32> = u_xlat1;
  let x_1133 : vec3<f32> = u_xlat10;
  let x_1136 : vec4<f32> = x_44.unity_FogColor;
  let x_1138 : vec3<f32> = ((vec3<f32>(x_1131.x, x_1131.x, x_1131.x) * x_1133) + vec3<f32>(x_1136.x, x_1136.y, x_1136.z));
  let x_1139 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1138.x, x_1138.y, x_1138.z, x_1139.w);
  let x_1143 : f32 = x_56.x_Surface;
  u_xlatb10 = (x_1143 == 1.0f);
  let x_1145 : bool = u_xlatb10;
  if (x_1145) {
    let x_1150 : f32 = u_xlat0.x;
    x_1146 = x_1150;
  } else {
    x_1146 = 1.0f;
  }
  let x_1152 : f32 = x_1146;
  SV_Target0.w = x_1152;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(4) vs_TEXCOORD7_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}

