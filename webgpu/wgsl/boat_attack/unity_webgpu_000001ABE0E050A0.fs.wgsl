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

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(1) @binding(3) var<uniform> x_55 : UnityPerMaterial;

@group(0) @binding(5) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_92 : UnityPerDraw;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_307 : MainLightShadows;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_390 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(1) var<uniform> x_632 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_734 : AdditionalLightsCookies;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb11 : bool;
  var x_99 : f32;
  var u_xlatb1 : bool;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat31 : f32;
  var u_xlat32 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb13 : vec2<bool>;
  var u_xlatb23 : bool;
  var x_340 : f32;
  var u_xlat23 : f32;
  var x_476 : f32;
  var x_487 : vec3<f32>;
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
  var x_1038 : f32;
  var x_1051 : f32;
  var x_1113 : f32;
  var x_1124 : vec3<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlatb10 : bool;
  var x_1202 : f32;
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
  let x_62 : vec4<f32> = hlslcc_FragCoord;
  let x_66 : f32 = x_43.x_DitheringTextureInvSize;
  let x_68 : vec2<f32> = (vec2<f32>(x_62.x, x_62.y) * vec2<f32>(x_66, x_66));
  let x_69 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_68.x, x_68.y, x_69.z, x_69.w);
  let x_76 : vec4<f32> = u_xlat1;
  let x_79 : f32 = x_43.x_GlobalMipBias.x;
  let x_80 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_76.x, x_76.y), x_79);
  u_xlat1.x = x_80.w;
  let x_95 : f32 = x_92.unity_LODFade.x;
  u_xlatb11 = (x_95 >= 0.0f);
  let x_98 : bool = u_xlatb11;
  if (x_98) {
    let x_103 : f32 = u_xlat1.x;
    x_99 = abs(x_103);
  } else {
    let x_107 : f32 = u_xlat1.x;
    x_99 = -(abs(x_107));
  }
  let x_110 : f32 = x_99;
  u_xlat1.x = x_110;
  let x_113 : f32 = u_xlat1.x;
  let x_116 : f32 = x_92.unity_LODFade.x;
  u_xlat1.x = (-(x_113) + x_116);
  let x_121 : f32 = u_xlat1.x;
  u_xlatb1 = (x_121 < 0.0f);
  let x_123 : bool = u_xlatb1;
  if (((select(0i, 1i, x_123) * -1i) != 0i)) {
    discard;
  }
  let x_134 : vec3<f32> = vs_TEXCOORD2;
  let x_135 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_134, x_135);
  let x_139 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_139);
  let x_142 : vec4<f32> = u_xlat1;
  let x_144 : vec3<f32> = vs_TEXCOORD2;
  let x_145 : vec3<f32> = (vec3<f32>(x_142.x, x_142.x, x_142.x) * x_144);
  let x_146 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_145.x, x_145.y, x_145.z, x_146.w);
  u_xlat1.w = 1.0f;
  let x_153 : vec4<f32> = x_92.unity_SHAr;
  let x_154 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_153, x_154);
  let x_159 : vec4<f32> = x_92.unity_SHAg;
  let x_160 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_159, x_160);
  let x_166 : vec4<f32> = x_92.unity_SHAb;
  let x_167 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_166, x_167);
  let x_171 : vec4<f32> = u_xlat1;
  let x_173 : vec4<f32> = u_xlat1;
  u_xlat3 = (vec4<f32>(x_171.y, x_171.z, x_171.z, x_171.x) * vec4<f32>(x_173.x, x_173.y, x_173.z, x_173.z));
  let x_179 : vec4<f32> = x_92.unity_SHBr;
  let x_180 : vec4<f32> = u_xlat3;
  u_xlat4.x = dot(x_179, x_180);
  let x_185 : vec4<f32> = x_92.unity_SHBg;
  let x_186 : vec4<f32> = u_xlat3;
  u_xlat4.y = dot(x_185, x_186);
  let x_191 : vec4<f32> = x_92.unity_SHBb;
  let x_192 : vec4<f32> = u_xlat3;
  u_xlat4.z = dot(x_191, x_192);
  let x_197 : f32 = u_xlat1.y;
  let x_199 : f32 = u_xlat1.y;
  u_xlat31 = (x_197 * x_199);
  let x_202 : f32 = u_xlat1.x;
  let x_204 : f32 = u_xlat1.x;
  let x_206 : f32 = u_xlat31;
  u_xlat31 = ((x_202 * x_204) + -(x_206));
  let x_211 : vec4<f32> = x_92.unity_SHC;
  let x_213 : f32 = u_xlat31;
  let x_216 : vec4<f32> = u_xlat4;
  let x_218 : vec3<f32> = ((vec3<f32>(x_211.x, x_211.y, x_211.z) * vec3<f32>(x_213, x_213, x_213)) + vec3<f32>(x_216.x, x_216.y, x_216.z));
  let x_219 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_218.x, x_218.y, x_218.z, x_219.w);
  let x_221 : vec3<f32> = u_xlat2;
  let x_222 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_221 + vec3<f32>(x_222.x, x_222.y, x_222.z));
  let x_225 : vec3<f32> = u_xlat2;
  u_xlat2 = max(x_225, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_230 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_231 : vec2<f32> = vec2<f32>(x_230.x, x_230.y);
  let x_235 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_231.x, x_231.y));
  let x_236 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_235.x, x_235.y, x_236.z, x_236.w);
  let x_238 : vec4<f32> = u_xlat3;
  let x_240 : vec4<f32> = hlslcc_FragCoord;
  let x_242 : vec2<f32> = (vec2<f32>(x_238.x, x_238.y) * vec2<f32>(x_240.x, x_240.y));
  let x_243 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_242.x, x_242.y, x_243.z, x_243.w);
  let x_246 : f32 = u_xlat3.y;
  let x_249 : f32 = x_43.x_ScaleBiasRt.x;
  let x_252 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat31 = ((x_246 * x_249) + x_252);
  let x_254 : f32 = u_xlat31;
  u_xlat3.z = (-(x_254) + 1.0f);
  let x_263 : vec4<f32> = u_xlat3;
  let x_266 : f32 = x_43.x_GlobalMipBias.x;
  let x_267 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_263.x, x_263.z), x_266);
  u_xlat31 = x_267.x;
  let x_270 : f32 = u_xlat31;
  u_xlat32 = (x_270 + -1.0f);
  let x_275 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_276 : f32 = u_xlat32;
  u_xlat32 = ((x_275 * x_276) + 1.0f);
  let x_279 : f32 = u_xlat31;
  u_xlat31 = min(x_279, 1.0f);
  let x_283 : vec4<f32> = vs_TEXCOORD6;
  let x_284 : vec2<f32> = vec2<f32>(x_283.x, x_283.y);
  let x_286 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_284.x, x_284.y, x_286);
  let x_298 : vec3<f32> = txVec0;
  let x_300 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_298.xy, x_298.z);
  u_xlat3.x = x_300;
  let x_309 : f32 = x_307.x_MainLightShadowParams.x;
  u_xlat13.x = (-(x_309) + 1.0f);
  let x_314 : f32 = u_xlat3.x;
  let x_316 : f32 = x_307.x_MainLightShadowParams.x;
  let x_319 : f32 = u_xlat13.x;
  u_xlat3.x = ((x_314 * x_316) + x_319);
  let x_326 : f32 = vs_TEXCOORD6.z;
  u_xlatb13.x = (0.0f >= x_326);
  let x_331 : f32 = vs_TEXCOORD6.z;
  u_xlatb23 = (x_331 >= 1.0f);
  let x_333 : bool = u_xlatb23;
  let x_335 : bool = u_xlatb13.x;
  u_xlatb13.x = (x_333 | x_335);
  let x_339 : bool = u_xlatb13.x;
  if (x_339) {
    x_340 = 1.0f;
  } else {
    let x_345 : f32 = u_xlat3.x;
    x_340 = x_345;
  }
  let x_346 : f32 = x_340;
  u_xlat3.x = x_346;
  let x_349 : vec3<f32> = vs_TEXCOORD1;
  let x_353 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  u_xlat13 = (x_349 + -(x_353));
  let x_356 : vec3<f32> = u_xlat13;
  let x_357 : vec3<f32> = u_xlat13;
  u_xlat13.x = dot(x_356, x_357);
  let x_361 : f32 = u_xlat13.x;
  let x_363 : f32 = x_307.x_MainLightShadowParams.z;
  let x_366 : f32 = x_307.x_MainLightShadowParams.w;
  u_xlat13.x = ((x_361 * x_363) + x_366);
  let x_370 : f32 = u_xlat13.x;
  u_xlat13.x = clamp(x_370, 0.0f, 1.0f);
  let x_375 : f32 = u_xlat3.x;
  u_xlat23 = (-(x_375) + 1.0f);
  let x_379 : f32 = u_xlat13.x;
  let x_380 : f32 = u_xlat23;
  let x_383 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_379 * x_380) + x_383);
  let x_392 : f32 = x_390.x_MainLightCookieTextureFormat;
  u_xlatb13.x = !((x_392 == -1.0f));
  let x_396 : bool = u_xlatb13.x;
  if (x_396) {
    let x_399 : vec3<f32> = vs_TEXCOORD1;
    let x_402 : vec4<f32> = x_390.x_MainLightWorldToLight[1i];
    let x_404 : vec2<f32> = (vec2<f32>(x_399.y, x_399.y) * vec2<f32>(x_402.x, x_402.y));
    let x_405 : vec3<f32> = u_xlat13;
    u_xlat13 = vec3<f32>(x_404.x, x_404.y, x_405.z);
    let x_408 : vec4<f32> = x_390.x_MainLightWorldToLight[0i];
    let x_410 : vec3<f32> = vs_TEXCOORD1;
    let x_413 : vec3<f32> = u_xlat13;
    let x_415 : vec2<f32> = ((vec2<f32>(x_408.x, x_408.y) * vec2<f32>(x_410.x, x_410.x)) + vec2<f32>(x_413.x, x_413.y));
    let x_416 : vec3<f32> = u_xlat13;
    u_xlat13 = vec3<f32>(x_415.x, x_415.y, x_416.z);
    let x_419 : vec4<f32> = x_390.x_MainLightWorldToLight[2i];
    let x_421 : vec3<f32> = vs_TEXCOORD1;
    let x_424 : vec3<f32> = u_xlat13;
    let x_426 : vec2<f32> = ((vec2<f32>(x_419.x, x_419.y) * vec2<f32>(x_421.z, x_421.z)) + vec2<f32>(x_424.x, x_424.y));
    let x_427 : vec3<f32> = u_xlat13;
    u_xlat13 = vec3<f32>(x_426.x, x_426.y, x_427.z);
    let x_429 : vec3<f32> = u_xlat13;
    let x_433 : vec4<f32> = x_390.x_MainLightWorldToLight[3i];
    let x_435 : vec2<f32> = (vec2<f32>(x_429.x, x_429.y) + vec2<f32>(x_433.x, x_433.y));
    let x_436 : vec3<f32> = u_xlat13;
    u_xlat13 = vec3<f32>(x_435.x, x_435.y, x_436.z);
    let x_438 : vec3<f32> = u_xlat13;
    let x_443 : vec2<f32> = ((vec2<f32>(x_438.x, x_438.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_444 : vec3<f32> = u_xlat13;
    u_xlat13 = vec3<f32>(x_443.x, x_443.y, x_444.z);
    let x_451 : vec3<f32> = u_xlat13;
    let x_454 : f32 = x_43.x_GlobalMipBias.x;
    let x_455 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_451.x, x_451.y), x_454);
    u_xlat4 = x_455;
    let x_457 : f32 = x_390.x_MainLightCookieTextureFormat;
    let x_459 : f32 = x_390.x_MainLightCookieTextureFormat;
    let x_461 : f32 = x_390.x_MainLightCookieTextureFormat;
    let x_463 : f32 = x_390.x_MainLightCookieTextureFormat;
    let x_464 : vec4<f32> = vec4<f32>(x_457, x_459, x_461, x_463);
    let x_472 : vec4<bool> = (vec4<f32>(x_464.x, x_464.y, x_464.z, x_464.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb13 = vec2<bool>(x_472.x, x_472.y);
    let x_475 : bool = u_xlatb13.y;
    if (x_475) {
      let x_480 : f32 = u_xlat4.w;
      x_476 = x_480;
    } else {
      let x_483 : f32 = u_xlat4.x;
      x_476 = x_483;
    }
    let x_484 : f32 = x_476;
    u_xlat23 = x_484;
    let x_486 : bool = u_xlatb13.x;
    if (x_486) {
      let x_490 : vec4<f32> = u_xlat4;
      x_487 = vec3<f32>(x_490.x, x_490.y, x_490.z);
    } else {
      let x_493 : f32 = u_xlat23;
      x_487 = vec3<f32>(x_493, x_493, x_493);
    }
    let x_495 : vec3<f32> = x_487;
    u_xlat13 = x_495;
  } else {
    u_xlat13.x = 1.0f;
    u_xlat13.y = 1.0f;
    u_xlat13.z = 1.0f;
  }
  let x_500 : vec3<f32> = u_xlat13;
  let x_502 : vec4<f32> = x_43.x_MainLightColor;
  u_xlat13 = (x_500 * vec3<f32>(x_502.x, x_502.y, x_502.z));
  let x_505 : f32 = u_xlat32;
  let x_507 : vec3<f32> = u_xlat13;
  u_xlat13 = (vec3<f32>(x_505, x_505, x_505) * x_507);
  let x_509 : f32 = u_xlat31;
  let x_511 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_509, x_509, x_509) * x_511);
  let x_514 : f32 = u_xlat3.x;
  let x_517 : f32 = x_92.unity_LightData.z;
  u_xlat31 = (x_514 * x_517);
  let x_519 : f32 = u_xlat31;
  let x_521 : vec3<f32> = u_xlat13;
  let x_522 : vec3<f32> = (vec3<f32>(x_519, x_519, x_519) * x_521);
  let x_523 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_522.x, x_522.y, x_522.z, x_523.w);
  let x_525 : vec4<f32> = u_xlat1;
  let x_528 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat31 = dot(vec3<f32>(x_525.x, x_525.y, x_525.z), vec3<f32>(x_528.x, x_528.y, x_528.z));
  let x_531 : f32 = u_xlat31;
  u_xlat31 = clamp(x_531, 0.0f, 1.0f);
  let x_533 : f32 = u_xlat31;
  let x_535 : vec4<f32> = u_xlat3;
  let x_537 : vec3<f32> = (vec3<f32>(x_533, x_533, x_533) * vec3<f32>(x_535.x, x_535.y, x_535.z));
  let x_538 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_537.x, x_537.y, x_537.z, x_538.w);
  let x_540 : vec4<f32> = u_xlat0;
  let x_542 : vec4<f32> = u_xlat3;
  let x_544 : vec3<f32> = (vec3<f32>(x_540.y, x_540.z, x_540.w) * vec3<f32>(x_542.x, x_542.y, x_542.z));
  let x_545 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_544.x, x_544.y, x_544.z, x_545.w);
  let x_548 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_550 : f32 = x_92.unity_LightData.y;
  u_xlat31 = min(x_548, x_550);
  let x_554 : f32 = u_xlat31;
  u_xlatu31 = bitcast<u32>(i32(x_554));
  let x_559 : f32 = x_390.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_561 : f32 = x_390.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_563 : f32 = x_390.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_565 : f32 = x_390.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_566 : vec4<f32> = vec4<f32>(x_559, x_561, x_563, x_565);
  let x_572 : vec4<bool> = (vec4<f32>(x_566.x, x_566.y, x_566.z, x_566.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb4 = vec2<bool>(x_572.x, x_572.y);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_584 : u32 = u_xlatu_loop_1;
    let x_585 : u32 = u_xlatu31;
    if ((x_584 < x_585)) {
    } else {
      break;
    }
    let x_588 : u32 = u_xlatu_loop_1;
    u_xlatu24 = (x_588 >> 2u);
    let x_592 : u32 = u_xlatu_loop_1;
    u_xlati34 = bitcast<i32>((x_592 & 3u));
    let x_596 : u32 = u_xlatu24;
    let x_599 : vec4<f32> = x_92.unity_LightIndices[bitcast<i32>(x_596)];
    let x_609 : i32 = u_xlati34;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_614 : vec4<u32> = indexable[x_609];
    u_xlat24 = dot(x_599, bitcast<vec4<f32>>(x_614));
    let x_617 : f32 = u_xlat24;
    u_xlatu24 = bitcast<u32>(i32(x_617));
    let x_621 : vec3<f32> = vs_TEXCOORD1;
    let x_633 : u32 = u_xlatu24;
    let x_636 : vec4<f32> = x_632.x_AdditionalLightsPosition[bitcast<i32>(x_633)];
    let x_639 : u32 = u_xlatu24;
    let x_642 : vec4<f32> = x_632.x_AdditionalLightsPosition[bitcast<i32>(x_639)];
    u_xlat6 = ((-(x_621) * vec3<f32>(x_636.w, x_636.w, x_636.w)) + vec3<f32>(x_642.x, x_642.y, x_642.z));
    let x_646 : vec3<f32> = u_xlat6;
    let x_647 : vec3<f32> = u_xlat6;
    u_xlat34 = dot(x_646, x_647);
    let x_649 : f32 = u_xlat34;
    u_xlat34 = max(x_649, 6.10351562e-05f);
    let x_653 : f32 = u_xlat34;
    u_xlat35 = inverseSqrt(x_653);
    let x_655 : f32 = u_xlat35;
    let x_657 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_655, x_655, x_655) * x_657);
    let x_659 : f32 = u_xlat34;
    u_xlat35 = (1.0f / x_659);
    let x_661 : f32 = u_xlat34;
    let x_662 : u32 = u_xlatu24;
    let x_665 : f32 = x_632.x_AdditionalLightsAttenuation[bitcast<i32>(x_662)].x;
    u_xlat34 = (x_661 * x_665);
    let x_667 : f32 = u_xlat34;
    let x_669 : f32 = u_xlat34;
    u_xlat34 = ((-(x_667) * x_669) + 1.0f);
    let x_672 : f32 = u_xlat34;
    u_xlat34 = max(x_672, 0.0f);
    let x_674 : f32 = u_xlat34;
    let x_675 : f32 = u_xlat34;
    u_xlat34 = (x_674 * x_675);
    let x_677 : f32 = u_xlat34;
    let x_678 : f32 = u_xlat35;
    u_xlat34 = (x_677 * x_678);
    let x_680 : u32 = u_xlatu24;
    let x_683 : vec4<f32> = x_632.x_AdditionalLightsSpotDir[bitcast<i32>(x_680)];
    let x_685 : vec3<f32> = u_xlat6;
    u_xlat35 = dot(vec3<f32>(x_683.x, x_683.y, x_683.z), x_685);
    let x_687 : f32 = u_xlat35;
    let x_688 : u32 = u_xlatu24;
    let x_691 : f32 = x_632.x_AdditionalLightsAttenuation[bitcast<i32>(x_688)].z;
    let x_693 : u32 = u_xlatu24;
    let x_696 : f32 = x_632.x_AdditionalLightsAttenuation[bitcast<i32>(x_693)].w;
    u_xlat35 = ((x_687 * x_691) + x_696);
    let x_698 : f32 = u_xlat35;
    u_xlat35 = clamp(x_698, 0.0f, 1.0f);
    let x_700 : f32 = u_xlat35;
    let x_701 : f32 = u_xlat35;
    u_xlat35 = (x_700 * x_701);
    let x_703 : f32 = u_xlat34;
    let x_704 : f32 = u_xlat35;
    u_xlat34 = (x_703 * x_704);
    let x_707 : u32 = u_xlatu24;
    u_xlatu35 = (x_707 >> 5u);
    let x_710 : u32 = u_xlatu24;
    u_xlati36 = (1i << bitcast<u32>((bitcast<i32>(x_710) & 31i)));
    let x_716 : i32 = u_xlati36;
    let x_718 : u32 = u_xlatu35;
    let x_721 : f32 = x_390.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_718)].el;
    u_xlati35 = bitcast<i32>((bitcast<u32>(x_716) & bitcast<u32>(x_721)));
    let x_725 : i32 = u_xlati35;
    if ((x_725 != 0i)) {
      let x_735 : u32 = u_xlatu24;
      let x_738 : f32 = x_734.x_AdditionalLightsLightTypes[bitcast<i32>(x_735)].el;
      u_xlati35 = i32(x_738);
      let x_740 : i32 = u_xlati35;
      u_xlati36 = select(1i, 0i, (x_740 != 0i));
      let x_744 : u32 = u_xlatu24;
      u_xlati7 = (bitcast<i32>(x_744) << bitcast<u32>(2i));
      let x_747 : i32 = u_xlati36;
      if ((x_747 != 0i)) {
        let x_752 : vec3<f32> = vs_TEXCOORD1;
        let x_754 : i32 = u_xlati7;
        let x_757 : i32 = u_xlati7;
        let x_761 : vec4<f32> = x_734.x_AdditionalLightsWorldToLights[((x_754 + 1i) / 4i)][((x_757 + 1i) % 4i)];
        u_xlat17 = (vec3<f32>(x_752.y, x_752.y, x_752.y) * vec3<f32>(x_761.x, x_761.y, x_761.w));
        let x_764 : i32 = u_xlati7;
        let x_766 : i32 = u_xlati7;
        let x_769 : vec4<f32> = x_734.x_AdditionalLightsWorldToLights[(x_764 / 4i)][(x_766 % 4i)];
        let x_771 : vec3<f32> = vs_TEXCOORD1;
        let x_774 : vec3<f32> = u_xlat17;
        u_xlat17 = ((vec3<f32>(x_769.x, x_769.y, x_769.w) * vec3<f32>(x_771.x, x_771.x, x_771.x)) + x_774);
        let x_776 : i32 = u_xlati7;
        let x_779 : i32 = u_xlati7;
        let x_783 : vec4<f32> = x_734.x_AdditionalLightsWorldToLights[((x_776 + 2i) / 4i)][((x_779 + 2i) % 4i)];
        let x_785 : vec3<f32> = vs_TEXCOORD1;
        let x_788 : vec3<f32> = u_xlat17;
        u_xlat17 = ((vec3<f32>(x_783.x, x_783.y, x_783.w) * vec3<f32>(x_785.z, x_785.z, x_785.z)) + x_788);
        let x_790 : vec3<f32> = u_xlat17;
        let x_791 : i32 = u_xlati7;
        let x_794 : i32 = u_xlati7;
        let x_798 : vec4<f32> = x_734.x_AdditionalLightsWorldToLights[((x_791 + 3i) / 4i)][((x_794 + 3i) % 4i)];
        u_xlat17 = (x_790 + vec3<f32>(x_798.x, x_798.y, x_798.w));
        let x_801 : vec3<f32> = u_xlat17;
        let x_803 : vec3<f32> = u_xlat17;
        let x_805 : vec2<f32> = (vec2<f32>(x_801.x, x_801.y) / vec2<f32>(x_803.z, x_803.z));
        let x_806 : vec3<f32> = u_xlat17;
        u_xlat17 = vec3<f32>(x_805.x, x_805.y, x_806.z);
        let x_808 : vec3<f32> = u_xlat17;
        let x_811 : vec2<f32> = ((vec2<f32>(x_808.x, x_808.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_812 : vec3<f32> = u_xlat17;
        u_xlat17 = vec3<f32>(x_811.x, x_811.y, x_812.z);
        let x_814 : vec3<f32> = u_xlat17;
        let x_818 : vec2<f32> = clamp(vec2<f32>(x_814.x, x_814.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_819 : vec3<f32> = u_xlat17;
        u_xlat17 = vec3<f32>(x_818.x, x_818.y, x_819.z);
        let x_821 : u32 = u_xlatu24;
        let x_824 : vec4<f32> = x_734.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_821)];
        let x_826 : vec3<f32> = u_xlat17;
        let x_829 : u32 = u_xlatu24;
        let x_832 : vec4<f32> = x_734.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_829)];
        let x_834 : vec2<f32> = ((vec2<f32>(x_824.x, x_824.y) * vec2<f32>(x_826.x, x_826.y)) + vec2<f32>(x_832.z, x_832.w));
        let x_835 : vec3<f32> = u_xlat17;
        u_xlat17 = vec3<f32>(x_834.x, x_834.y, x_835.z);
      } else {
        let x_839 : i32 = u_xlati35;
        u_xlatb35 = (x_839 == 1i);
        let x_841 : bool = u_xlatb35;
        u_xlati35 = select(0i, 1i, x_841);
        let x_843 : i32 = u_xlati35;
        if ((x_843 != 0i)) {
          let x_848 : vec3<f32> = vs_TEXCOORD1;
          let x_850 : i32 = u_xlati7;
          let x_853 : i32 = u_xlati7;
          let x_857 : vec4<f32> = x_734.x_AdditionalLightsWorldToLights[((x_850 + 1i) / 4i)][((x_853 + 1i) % 4i)];
          let x_859 : vec2<f32> = (vec2<f32>(x_848.y, x_848.y) * vec2<f32>(x_857.x, x_857.y));
          let x_860 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_859.x, x_859.y, x_860.z, x_860.w);
          let x_862 : i32 = u_xlati7;
          let x_864 : i32 = u_xlati7;
          let x_867 : vec4<f32> = x_734.x_AdditionalLightsWorldToLights[(x_862 / 4i)][(x_864 % 4i)];
          let x_869 : vec3<f32> = vs_TEXCOORD1;
          let x_872 : vec4<f32> = u_xlat8;
          let x_874 : vec2<f32> = ((vec2<f32>(x_867.x, x_867.y) * vec2<f32>(x_869.x, x_869.x)) + vec2<f32>(x_872.x, x_872.y));
          let x_875 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_874.x, x_874.y, x_875.z, x_875.w);
          let x_877 : i32 = u_xlati7;
          let x_880 : i32 = u_xlati7;
          let x_884 : vec4<f32> = x_734.x_AdditionalLightsWorldToLights[((x_877 + 2i) / 4i)][((x_880 + 2i) % 4i)];
          let x_886 : vec3<f32> = vs_TEXCOORD1;
          let x_889 : vec4<f32> = u_xlat8;
          let x_891 : vec2<f32> = ((vec2<f32>(x_884.x, x_884.y) * vec2<f32>(x_886.z, x_886.z)) + vec2<f32>(x_889.x, x_889.y));
          let x_892 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_891.x, x_891.y, x_892.z, x_892.w);
          let x_894 : vec4<f32> = u_xlat8;
          let x_896 : i32 = u_xlati7;
          let x_899 : i32 = u_xlati7;
          let x_903 : vec4<f32> = x_734.x_AdditionalLightsWorldToLights[((x_896 + 3i) / 4i)][((x_899 + 3i) % 4i)];
          let x_905 : vec2<f32> = (vec2<f32>(x_894.x, x_894.y) + vec2<f32>(x_903.x, x_903.y));
          let x_906 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_905.x, x_905.y, x_906.z, x_906.w);
          let x_908 : vec4<f32> = u_xlat8;
          let x_911 : vec2<f32> = ((vec2<f32>(x_908.x, x_908.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_912 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_911.x, x_911.y, x_912.z, x_912.w);
          let x_914 : vec4<f32> = u_xlat8;
          let x_916 : vec2<f32> = fract(vec2<f32>(x_914.x, x_914.y));
          let x_917 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_916.x, x_916.y, x_917.z, x_917.w);
          let x_919 : u32 = u_xlatu24;
          let x_922 : vec4<f32> = x_734.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_919)];
          let x_924 : vec4<f32> = u_xlat8;
          let x_927 : u32 = u_xlatu24;
          let x_930 : vec4<f32> = x_734.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_927)];
          let x_932 : vec2<f32> = ((vec2<f32>(x_922.x, x_922.y) * vec2<f32>(x_924.x, x_924.y)) + vec2<f32>(x_930.z, x_930.w));
          let x_933 : vec3<f32> = u_xlat17;
          u_xlat17 = vec3<f32>(x_932.x, x_932.y, x_933.z);
        } else {
          let x_936 : vec3<f32> = vs_TEXCOORD1;
          let x_938 : i32 = u_xlati7;
          let x_941 : i32 = u_xlati7;
          let x_945 : vec4<f32> = x_734.x_AdditionalLightsWorldToLights[((x_938 + 1i) / 4i)][((x_941 + 1i) % 4i)];
          u_xlat8 = (vec4<f32>(x_936.y, x_936.y, x_936.y, x_936.y) * x_945);
          let x_947 : i32 = u_xlati7;
          let x_949 : i32 = u_xlati7;
          let x_952 : vec4<f32> = x_734.x_AdditionalLightsWorldToLights[(x_947 / 4i)][(x_949 % 4i)];
          let x_953 : vec3<f32> = vs_TEXCOORD1;
          let x_956 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_952 * vec4<f32>(x_953.x, x_953.x, x_953.x, x_953.x)) + x_956);
          let x_958 : i32 = u_xlati7;
          let x_961 : i32 = u_xlati7;
          let x_965 : vec4<f32> = x_734.x_AdditionalLightsWorldToLights[((x_958 + 2i) / 4i)][((x_961 + 2i) % 4i)];
          let x_966 : vec3<f32> = vs_TEXCOORD1;
          let x_969 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_965 * vec4<f32>(x_966.z, x_966.z, x_966.z, x_966.z)) + x_969);
          let x_971 : vec4<f32> = u_xlat8;
          let x_972 : i32 = u_xlati7;
          let x_975 : i32 = u_xlati7;
          let x_979 : vec4<f32> = x_734.x_AdditionalLightsWorldToLights[((x_972 + 3i) / 4i)][((x_975 + 3i) % 4i)];
          u_xlat8 = (x_971 + x_979);
          let x_981 : vec4<f32> = u_xlat8;
          let x_983 : vec4<f32> = u_xlat8;
          let x_985 : vec3<f32> = (vec3<f32>(x_981.x, x_981.y, x_981.z) / vec3<f32>(x_983.w, x_983.w, x_983.w));
          let x_986 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_985.x, x_985.y, x_985.z, x_986.w);
          let x_988 : vec4<f32> = u_xlat8;
          let x_990 : vec4<f32> = u_xlat8;
          u_xlat35 = dot(vec3<f32>(x_988.x, x_988.y, x_988.z), vec3<f32>(x_990.x, x_990.y, x_990.z));
          let x_993 : f32 = u_xlat35;
          u_xlat35 = inverseSqrt(x_993);
          let x_995 : f32 = u_xlat35;
          let x_997 : vec4<f32> = u_xlat8;
          let x_999 : vec3<f32> = (vec3<f32>(x_995, x_995, x_995) * vec3<f32>(x_997.x, x_997.y, x_997.z));
          let x_1000 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_999.x, x_999.y, x_999.z, x_1000.w);
          let x_1002 : vec4<f32> = u_xlat8;
          u_xlat35 = dot(abs(vec3<f32>(x_1002.x, x_1002.y, x_1002.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1007 : f32 = u_xlat35;
          u_xlat35 = max(x_1007, 0.000001f);
          let x_1010 : f32 = u_xlat35;
          u_xlat35 = (1.0f / x_1010);
          let x_1013 : f32 = u_xlat35;
          let x_1015 : vec4<f32> = u_xlat8;
          u_xlat9 = (vec3<f32>(x_1013, x_1013, x_1013) * vec3<f32>(x_1015.z, x_1015.x, x_1015.y));
          let x_1019 : f32 = u_xlat9.x;
          u_xlat9.x = -(x_1019);
          let x_1023 : f32 = u_xlat9.x;
          u_xlat9.x = clamp(x_1023, 0.0f, 1.0f);
          let x_1028 : vec3<f32> = u_xlat9;
          let x_1031 : vec4<bool> = (vec4<f32>(x_1028.y, x_1028.y, x_1028.y, x_1028.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1032 : vec2<bool> = vec2<bool>(x_1031.x, x_1031.w);
          let x_1033 : vec4<bool> = u_xlatb7;
          u_xlatb7 = vec4<bool>(x_1032.x, x_1033.y, x_1033.z, x_1032.y);
          let x_1037 : bool = u_xlatb7.x;
          if (x_1037) {
            let x_1042 : f32 = u_xlat9.x;
            x_1038 = x_1042;
          } else {
            let x_1045 : f32 = u_xlat9.x;
            x_1038 = -(x_1045);
          }
          let x_1047 : f32 = x_1038;
          u_xlat7.x = x_1047;
          let x_1050 : bool = u_xlatb7.w;
          if (x_1050) {
            let x_1055 : f32 = u_xlat9.x;
            x_1051 = x_1055;
          } else {
            let x_1058 : f32 = u_xlat9.x;
            x_1051 = -(x_1058);
          }
          let x_1060 : f32 = x_1051;
          u_xlat7.w = x_1060;
          let x_1062 : vec4<f32> = u_xlat8;
          let x_1064 : f32 = u_xlat35;
          let x_1067 : vec4<f32> = u_xlat7;
          let x_1069 : vec2<f32> = ((vec2<f32>(x_1062.x, x_1062.y) * vec2<f32>(x_1064, x_1064)) + vec2<f32>(x_1067.x, x_1067.w));
          let x_1070 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_1069.x, x_1070.y, x_1070.z, x_1069.y);
          let x_1072 : vec4<f32> = u_xlat7;
          let x_1075 : vec2<f32> = ((vec2<f32>(x_1072.x, x_1072.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1076 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_1075.x, x_1076.y, x_1076.z, x_1075.y);
          let x_1078 : vec4<f32> = u_xlat7;
          let x_1082 : vec2<f32> = clamp(vec2<f32>(x_1078.x, x_1078.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1083 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_1082.x, x_1083.y, x_1083.z, x_1082.y);
          let x_1085 : u32 = u_xlatu24;
          let x_1088 : vec4<f32> = x_734.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1085)];
          let x_1090 : vec4<f32> = u_xlat7;
          let x_1093 : u32 = u_xlatu24;
          let x_1096 : vec4<f32> = x_734.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1093)];
          let x_1098 : vec2<f32> = ((vec2<f32>(x_1088.x, x_1088.y) * vec2<f32>(x_1090.x, x_1090.w)) + vec2<f32>(x_1096.z, x_1096.w));
          let x_1099 : vec3<f32> = u_xlat17;
          u_xlat17 = vec3<f32>(x_1098.x, x_1098.y, x_1099.z);
        }
      }
      let x_1106 : vec3<f32> = u_xlat17;
      let x_1109 : f32 = x_43.x_GlobalMipBias.x;
      let x_1110 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1106.x, x_1106.y), x_1109);
      u_xlat7 = x_1110;
      let x_1112 : bool = u_xlatb4.y;
      if (x_1112) {
        let x_1117 : f32 = u_xlat7.w;
        x_1113 = x_1117;
      } else {
        let x_1120 : f32 = u_xlat7.x;
        x_1113 = x_1120;
      }
      let x_1121 : f32 = x_1113;
      u_xlat35 = x_1121;
      let x_1123 : bool = u_xlatb4.x;
      if (x_1123) {
        let x_1127 : vec4<f32> = u_xlat7;
        x_1124 = vec3<f32>(x_1127.x, x_1127.y, x_1127.z);
      } else {
        let x_1130 : f32 = u_xlat35;
        x_1124 = vec3<f32>(x_1130, x_1130, x_1130);
      }
      let x_1132 : vec3<f32> = x_1124;
      let x_1133 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_1132.x, x_1132.y, x_1132.z, x_1133.w);
    } else {
      u_xlat7.x = 1.0f;
      u_xlat7.y = 1.0f;
      u_xlat7.z = 1.0f;
    }
    let x_1139 : vec4<f32> = u_xlat7;
    let x_1141 : u32 = u_xlatu24;
    let x_1144 : vec4<f32> = x_632.x_AdditionalLightsColor[bitcast<i32>(x_1141)];
    let x_1146 : vec3<f32> = (vec3<f32>(x_1139.x, x_1139.y, x_1139.z) * vec3<f32>(x_1144.x, x_1144.y, x_1144.z));
    let x_1147 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1146.x, x_1146.y, x_1146.z, x_1147.w);
    let x_1149 : f32 = u_xlat32;
    let x_1151 : vec4<f32> = u_xlat7;
    let x_1153 : vec3<f32> = (vec3<f32>(x_1149, x_1149, x_1149) * vec3<f32>(x_1151.x, x_1151.y, x_1151.z));
    let x_1154 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1153.x, x_1153.y, x_1153.z, x_1154.w);
    let x_1156 : f32 = u_xlat34;
    let x_1158 : vec4<f32> = u_xlat7;
    let x_1160 : vec3<f32> = (vec3<f32>(x_1156, x_1156, x_1156) * vec3<f32>(x_1158.x, x_1158.y, x_1158.z));
    let x_1161 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1160.x, x_1160.y, x_1160.z, x_1161.w);
    let x_1163 : vec4<f32> = u_xlat1;
    let x_1165 : vec3<f32> = u_xlat6;
    u_xlat24 = dot(vec3<f32>(x_1163.x, x_1163.y, x_1163.z), x_1165);
    let x_1167 : f32 = u_xlat24;
    u_xlat24 = clamp(x_1167, 0.0f, 1.0f);
    let x_1169 : f32 = u_xlat24;
    let x_1171 : vec4<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_1169, x_1169, x_1169) * vec3<f32>(x_1171.x, x_1171.y, x_1171.z));
    let x_1174 : vec3<f32> = u_xlat6;
    let x_1175 : vec4<f32> = u_xlat0;
    let x_1178 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_1174 * vec3<f32>(x_1175.y, x_1175.z, x_1175.w)) + x_1178);

    continuing {
      let x_1180 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1180 + bitcast<u32>(1i));
    }
  }
  let x_1183 : vec3<f32> = u_xlat2;
  let x_1184 : vec4<f32> = u_xlat0;
  let x_1187 : vec4<f32> = u_xlat3;
  u_xlat10 = ((x_1183 * vec3<f32>(x_1184.y, x_1184.z, x_1184.w)) + vec3<f32>(x_1187.x, x_1187.y, x_1187.z));
  let x_1192 : vec3<f32> = u_xlat5;
  let x_1193 : vec3<f32> = u_xlat10;
  let x_1194 : vec3<f32> = (x_1192 + x_1193);
  let x_1195 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1194.x, x_1194.y, x_1194.z, x_1195.w);
  let x_1199 : f32 = x_55.x_Surface;
  u_xlatb10 = (x_1199 == 1.0f);
  let x_1201 : bool = u_xlatb10;
  if (x_1201) {
    let x_1206 : f32 = u_xlat0.x;
    x_1202 = x_1206;
  } else {
    x_1202 = 1.0f;
  }
  let x_1208 : f32 = x_1202;
  SV_Target0.w = x_1208;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}

