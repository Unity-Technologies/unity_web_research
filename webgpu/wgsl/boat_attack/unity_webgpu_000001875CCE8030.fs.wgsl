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

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

@group(0) @binding(6) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_185 : UnityPerDraw;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_333 : MainLightShadows;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_406 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(1) var<uniform> x_660 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_761 : AdditionalLightsCookies;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_73 : f32;
  var u_xlat11 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlat33 : f32;
  var u_xlatb22 : bool;
  var x_130 : f32;
  var u_xlatb11 : bool;
  var u_xlatb33 : bool;
  var x_190 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat35 : f32;
  var u_xlatb35 : bool;
  var u_xlatb36 : bool;
  var x_358 : f32;
  var u_xlat36 : f32;
  var u_xlatb5 : vec2<bool>;
  var x_492 : f32;
  var x_503 : vec3<f32>;
  var u_xlatu11 : u32;
  var u_xlat6 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu35 : u32;
  var u_xlati36 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat7 : vec3<f32>;
  var u_xlat37 : f32;
  var u_xlatu37 : u32;
  var u_xlati27 : i32;
  var u_xlati37 : i32;
  var u_xlati38 : i32;
  var u_xlat8 : vec4<f32>;
  var u_xlatb37 : bool;
  var u_xlat30 : vec2<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlatb27 : vec2<bool>;
  var u_xlat27 : vec2<f32>;
  var x_1057 : f32;
  var x_1070 : f32;
  var x_1122 : f32;
  var x_1133 : vec3<f32>;
  var x_1214 : f32;
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
  let x_52 : vec4<f32> = u_xlat0;
  let x_59 : vec4<f32> = x_56.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_52.w, x_52.x, x_52.y, x_52.z) * vec4<f32>(x_59.w, x_59.x, x_59.y, x_59.z));
  let x_67 : f32 = u_xlat1.x;
  let x_70 : f32 = x_56.x_Cutoff;
  u_xlatb0 = (x_67 >= x_70);
  let x_72 : bool = u_xlatb0;
  if (x_72) {
    let x_77 : f32 = u_xlat1.x;
    x_73 = x_77;
  } else {
    x_73 = 0.0f;
  }
  let x_80 : f32 = x_73;
  u_xlat0.x = x_80;
  let x_85 : f32 = u_xlat0.w;
  let x_87 : f32 = x_56.x_BaseColor.w;
  let x_90 : f32 = x_56.x_Cutoff;
  u_xlat11.x = ((x_85 * x_87) + -(x_90));
  let x_96 : f32 = u_xlat1.x;
  u_xlat22 = dpdxCoarse(x_96);
  let x_100 : f32 = u_xlat1.x;
  u_xlat33 = dpdyCoarse(x_100);
  let x_102 : f32 = u_xlat33;
  let x_104 : f32 = u_xlat22;
  u_xlat22 = (abs(x_102) + abs(x_104));
  let x_107 : f32 = u_xlat22;
  u_xlat22 = max(x_107, 0.0001f);
  let x_111 : f32 = u_xlat11.x;
  let x_112 : f32 = u_xlat22;
  u_xlat11.x = (x_111 / x_112);
  let x_116 : f32 = u_xlat11.x;
  u_xlat11.x = (x_116 + 0.5f);
  let x_121 : f32 = u_xlat11.x;
  u_xlat11.x = clamp(x_121, 0.0f, 1.0f);
  let x_127 : f32 = x_43.x_AlphaToMaskAvailable;
  u_xlatb22 = !((x_127 == 0.0f));
  let x_129 : bool = u_xlatb22;
  if (x_129) {
    let x_134 : f32 = u_xlat11.x;
    x_130 = x_134;
  } else {
    let x_137 : f32 = u_xlat0.x;
    x_130 = x_137;
  }
  let x_138 : f32 = x_130;
  u_xlat0.x = x_138;
  let x_141 : f32 = u_xlat0.x;
  u_xlat11.x = (x_141 + -0.0001f);
  let x_147 : f32 = u_xlat11.x;
  u_xlatb11 = (x_147 < 0.0f);
  let x_149 : bool = u_xlatb11;
  if (((select(0i, 1i, x_149) * -1i) != 0i)) {
    discard;
  }
  let x_158 : vec4<f32> = hlslcc_FragCoord;
  let x_162 : f32 = x_43.x_DitheringTextureInvSize;
  let x_164 : vec2<f32> = (vec2<f32>(x_158.x, x_158.y) * vec2<f32>(x_162, x_162));
  let x_165 : vec3<f32> = u_xlat11;
  u_xlat11 = vec3<f32>(x_164.x, x_165.y, x_164.y);
  let x_172 : vec3<f32> = u_xlat11;
  let x_175 : f32 = x_43.x_GlobalMipBias.x;
  let x_176 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_172.x, x_172.z), x_175);
  u_xlat11.x = x_176.w;
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
  u_xlat2 = (vec3<f32>(x_231.x, x_231.x, x_231.x) * x_233);
  let x_242 : vec2<f32> = vs_TEXCOORD7;
  let x_244 : f32 = x_43.x_GlobalMipBias.x;
  let x_245 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_242, x_244);
  u_xlat3 = vec3<f32>(x_245.x, x_245.y, x_245.z);
  let x_249 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_250 : vec2<f32> = vec2<f32>(x_249.x, x_249.y);
  let x_254 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_250.x, x_250.y));
  let x_255 : vec3<f32> = u_xlat11;
  u_xlat11 = vec3<f32>(x_254.x, x_255.y, x_254.y);
  let x_258 : vec3<f32> = u_xlat11;
  let x_260 : vec4<f32> = hlslcc_FragCoord;
  let x_262 : vec2<f32> = (vec2<f32>(x_258.x, x_258.z) * vec2<f32>(x_260.x, x_260.y));
  let x_263 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_262.x, x_262.y, x_263.z, x_263.w);
  let x_267 : f32 = u_xlat4.y;
  let x_270 : f32 = x_43.x_ScaleBiasRt.x;
  let x_273 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat11.x = ((x_267 * x_270) + x_273);
  let x_277 : f32 = u_xlat11.x;
  u_xlat4.z = (-(x_277) + 1.0f);
  let x_286 : vec4<f32> = u_xlat4;
  let x_289 : f32 = x_43.x_GlobalMipBias.x;
  let x_290 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_286.x, x_286.z), x_289);
  u_xlat11.x = x_290.x;
  let x_294 : f32 = u_xlat11.x;
  u_xlat33 = (x_294 + -1.0f);
  let x_299 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_300 : f32 = u_xlat33;
  u_xlat33 = ((x_299 * x_300) + 1.0f);
  let x_304 : f32 = u_xlat11.x;
  u_xlat11.x = min(x_304, 1.0f);
  let x_309 : vec4<f32> = vs_TEXCOORD6;
  let x_310 : vec2<f32> = vec2<f32>(x_309.x, x_309.y);
  let x_312 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_310.x, x_310.y, x_312);
  let x_324 : vec3<f32> = txVec0;
  let x_326 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_324.xy, x_324.z);
  u_xlat1.x = x_326;
  let x_335 : f32 = x_333.x_MainLightShadowParams.x;
  u_xlat35 = (-(x_335) + 1.0f);
  let x_339 : f32 = u_xlat1.x;
  let x_341 : f32 = x_333.x_MainLightShadowParams.x;
  let x_343 : f32 = u_xlat35;
  u_xlat1.x = ((x_339 * x_341) + x_343);
  let x_348 : f32 = vs_TEXCOORD6.z;
  u_xlatb35 = (0.0f >= x_348);
  let x_352 : f32 = vs_TEXCOORD6.z;
  u_xlatb36 = (x_352 >= 1.0f);
  let x_354 : bool = u_xlatb35;
  let x_355 : bool = u_xlatb36;
  u_xlatb35 = (x_354 | x_355);
  let x_357 : bool = u_xlatb35;
  if (x_357) {
    x_358 = 1.0f;
  } else {
    let x_363 : f32 = u_xlat1.x;
    x_358 = x_363;
  }
  let x_364 : f32 = x_358;
  u_xlat1.x = x_364;
  let x_367 : vec3<f32> = vs_TEXCOORD1;
  let x_371 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_373 : vec3<f32> = (x_367 + -(x_371));
  let x_374 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_373.x, x_373.y, x_373.z, x_374.w);
  let x_376 : vec4<f32> = u_xlat4;
  let x_378 : vec4<f32> = u_xlat4;
  u_xlat35 = dot(vec3<f32>(x_376.x, x_376.y, x_376.z), vec3<f32>(x_378.x, x_378.y, x_378.z));
  let x_381 : f32 = u_xlat35;
  let x_383 : f32 = x_333.x_MainLightShadowParams.z;
  let x_386 : f32 = x_333.x_MainLightShadowParams.w;
  u_xlat35 = ((x_381 * x_383) + x_386);
  let x_388 : f32 = u_xlat35;
  u_xlat35 = clamp(x_388, 0.0f, 1.0f);
  let x_392 : f32 = u_xlat1.x;
  u_xlat36 = (-(x_392) + 1.0f);
  let x_395 : f32 = u_xlat35;
  let x_396 : f32 = u_xlat36;
  let x_399 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_395 * x_396) + x_399);
  let x_408 : f32 = x_406.x_MainLightCookieTextureFormat;
  u_xlatb35 = !((x_408 == -1.0f));
  let x_410 : bool = u_xlatb35;
  if (x_410) {
    let x_413 : vec3<f32> = vs_TEXCOORD1;
    let x_416 : vec4<f32> = x_406.x_MainLightWorldToLight[1i];
    let x_418 : vec2<f32> = (vec2<f32>(x_413.y, x_413.y) * vec2<f32>(x_416.x, x_416.y));
    let x_419 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_418.x, x_418.y, x_419.z, x_419.w);
    let x_422 : vec4<f32> = x_406.x_MainLightWorldToLight[0i];
    let x_424 : vec3<f32> = vs_TEXCOORD1;
    let x_427 : vec4<f32> = u_xlat4;
    let x_429 : vec2<f32> = ((vec2<f32>(x_422.x, x_422.y) * vec2<f32>(x_424.x, x_424.x)) + vec2<f32>(x_427.x, x_427.y));
    let x_430 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_429.x, x_429.y, x_430.z, x_430.w);
    let x_433 : vec4<f32> = x_406.x_MainLightWorldToLight[2i];
    let x_435 : vec3<f32> = vs_TEXCOORD1;
    let x_438 : vec4<f32> = u_xlat4;
    let x_440 : vec2<f32> = ((vec2<f32>(x_433.x, x_433.y) * vec2<f32>(x_435.z, x_435.z)) + vec2<f32>(x_438.x, x_438.y));
    let x_441 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_440.x, x_440.y, x_441.z, x_441.w);
    let x_443 : vec4<f32> = u_xlat4;
    let x_447 : vec4<f32> = x_406.x_MainLightWorldToLight[3i];
    let x_449 : vec2<f32> = (vec2<f32>(x_443.x, x_443.y) + vec2<f32>(x_447.x, x_447.y));
    let x_450 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_449.x, x_449.y, x_450.z, x_450.w);
    let x_452 : vec4<f32> = u_xlat4;
    let x_456 : vec2<f32> = ((vec2<f32>(x_452.x, x_452.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_457 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_456.x, x_456.y, x_457.z, x_457.w);
    let x_464 : vec4<f32> = u_xlat4;
    let x_467 : f32 = x_43.x_GlobalMipBias.x;
    let x_468 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_464.x, x_464.y), x_467);
    u_xlat4 = x_468;
    let x_473 : f32 = x_406.x_MainLightCookieTextureFormat;
    let x_475 : f32 = x_406.x_MainLightCookieTextureFormat;
    let x_477 : f32 = x_406.x_MainLightCookieTextureFormat;
    let x_479 : f32 = x_406.x_MainLightCookieTextureFormat;
    let x_480 : vec4<f32> = vec4<f32>(x_473, x_475, x_477, x_479);
    let x_488 : vec4<bool> = (vec4<f32>(x_480.x, x_480.y, x_480.z, x_480.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_488.x, x_488.y);
    let x_491 : bool = u_xlatb5.y;
    if (x_491) {
      let x_496 : f32 = u_xlat4.w;
      x_492 = x_496;
    } else {
      let x_499 : f32 = u_xlat4.x;
      x_492 = x_499;
    }
    let x_500 : f32 = x_492;
    u_xlat35 = x_500;
    let x_502 : bool = u_xlatb5.x;
    if (x_502) {
      let x_506 : vec4<f32> = u_xlat4;
      x_503 = vec3<f32>(x_506.x, x_506.y, x_506.z);
    } else {
      let x_509 : f32 = u_xlat35;
      x_503 = vec3<f32>(x_509, x_509, x_509);
    }
    let x_511 : vec3<f32> = x_503;
    let x_512 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_511.x, x_511.y, x_511.z, x_512.w);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
  }
  let x_518 : vec4<f32> = u_xlat4;
  let x_521 : vec4<f32> = x_43.x_MainLightColor;
  let x_523 : vec3<f32> = (vec3<f32>(x_518.x, x_518.y, x_518.z) * vec3<f32>(x_521.x, x_521.y, x_521.z));
  let x_524 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_523.x, x_523.y, x_523.z, x_524.w);
  let x_526 : f32 = u_xlat33;
  let x_528 : vec4<f32> = u_xlat4;
  let x_530 : vec3<f32> = (vec3<f32>(x_526, x_526, x_526) * vec3<f32>(x_528.x, x_528.y, x_528.z));
  let x_531 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_530.x, x_530.y, x_530.z, x_531.w);
  let x_533 : vec3<f32> = u_xlat11;
  let x_535 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_533.x, x_533.x, x_533.x) * x_535);
  let x_538 : f32 = u_xlat1.x;
  let x_540 : f32 = x_185.unity_LightData.z;
  u_xlat11.x = (x_538 * x_540);
  let x_543 : vec3<f32> = u_xlat11;
  let x_545 : vec4<f32> = u_xlat4;
  let x_547 : vec3<f32> = (vec3<f32>(x_543.x, x_543.x, x_543.x) * vec3<f32>(x_545.x, x_545.y, x_545.z));
  let x_548 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_547.x, x_547.y, x_547.z, x_548.w);
  let x_550 : vec3<f32> = u_xlat2;
  let x_552 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat11.x = dot(x_550, vec3<f32>(x_552.x, x_552.y, x_552.z));
  let x_557 : f32 = u_xlat11.x;
  u_xlat11.x = clamp(x_557, 0.0f, 1.0f);
  let x_560 : vec3<f32> = u_xlat11;
  let x_562 : vec4<f32> = u_xlat4;
  let x_564 : vec3<f32> = (vec3<f32>(x_560.x, x_560.x, x_560.x) * vec3<f32>(x_562.x, x_562.y, x_562.z));
  let x_565 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_564.x, x_564.y, x_564.z, x_565.w);
  let x_567 : vec4<f32> = u_xlat1;
  let x_569 : vec4<f32> = u_xlat4;
  let x_571 : vec3<f32> = (vec3<f32>(x_567.y, x_567.z, x_567.w) * vec3<f32>(x_569.x, x_569.y, x_569.z));
  let x_572 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_571.x, x_571.y, x_571.z, x_572.w);
  let x_576 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_578 : f32 = x_185.unity_LightData.y;
  u_xlat11.x = min(x_576, x_578);
  let x_584 : f32 = u_xlat11.x;
  u_xlatu11 = bitcast<u32>(i32(x_584));
  let x_588 : f32 = x_406.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_590 : f32 = x_406.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_592 : f32 = x_406.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_594 : f32 = x_406.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_595 : vec4<f32> = vec4<f32>(x_588, x_590, x_592, x_594);
  let x_601 : vec4<bool> = (vec4<f32>(x_595.x, x_595.y, x_595.z, x_595.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_601.x, x_601.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_613 : u32 = u_xlatu_loop_1;
    let x_614 : u32 = u_xlatu11;
    if ((x_613 < x_614)) {
    } else {
      break;
    }
    let x_617 : u32 = u_xlatu_loop_1;
    u_xlatu35 = (x_617 >> 2u);
    let x_621 : u32 = u_xlatu_loop_1;
    u_xlati36 = bitcast<i32>((x_621 & 3u));
    let x_624 : u32 = u_xlatu35;
    let x_627 : vec4<f32> = x_185.unity_LightIndices[bitcast<i32>(x_624)];
    let x_637 : i32 = u_xlati36;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_642 : vec4<u32> = indexable[x_637];
    u_xlat35 = dot(x_627, bitcast<vec4<f32>>(x_642));
    let x_645 : f32 = u_xlat35;
    u_xlatu35 = bitcast<u32>(i32(x_645));
    let x_649 : vec3<f32> = vs_TEXCOORD1;
    let x_661 : u32 = u_xlatu35;
    let x_664 : vec4<f32> = x_660.x_AdditionalLightsPosition[bitcast<i32>(x_661)];
    let x_667 : u32 = u_xlatu35;
    let x_670 : vec4<f32> = x_660.x_AdditionalLightsPosition[bitcast<i32>(x_667)];
    u_xlat7 = ((-(x_649) * vec3<f32>(x_664.w, x_664.w, x_664.w)) + vec3<f32>(x_670.x, x_670.y, x_670.z));
    let x_673 : vec3<f32> = u_xlat7;
    let x_674 : vec3<f32> = u_xlat7;
    u_xlat36 = dot(x_673, x_674);
    let x_676 : f32 = u_xlat36;
    u_xlat36 = max(x_676, 6.10351562e-05f);
    let x_680 : f32 = u_xlat36;
    u_xlat37 = inverseSqrt(x_680);
    let x_682 : f32 = u_xlat37;
    let x_684 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_682, x_682, x_682) * x_684);
    let x_686 : f32 = u_xlat36;
    u_xlat37 = (1.0f / x_686);
    let x_688 : f32 = u_xlat36;
    let x_689 : u32 = u_xlatu35;
    let x_692 : f32 = x_660.x_AdditionalLightsAttenuation[bitcast<i32>(x_689)].x;
    u_xlat36 = (x_688 * x_692);
    let x_694 : f32 = u_xlat36;
    let x_696 : f32 = u_xlat36;
    u_xlat36 = ((-(x_694) * x_696) + 1.0f);
    let x_699 : f32 = u_xlat36;
    u_xlat36 = max(x_699, 0.0f);
    let x_701 : f32 = u_xlat36;
    let x_702 : f32 = u_xlat36;
    u_xlat36 = (x_701 * x_702);
    let x_704 : f32 = u_xlat36;
    let x_705 : f32 = u_xlat37;
    u_xlat36 = (x_704 * x_705);
    let x_707 : u32 = u_xlatu35;
    let x_710 : vec4<f32> = x_660.x_AdditionalLightsSpotDir[bitcast<i32>(x_707)];
    let x_712 : vec3<f32> = u_xlat7;
    u_xlat37 = dot(vec3<f32>(x_710.x, x_710.y, x_710.z), x_712);
    let x_714 : f32 = u_xlat37;
    let x_715 : u32 = u_xlatu35;
    let x_718 : f32 = x_660.x_AdditionalLightsAttenuation[bitcast<i32>(x_715)].z;
    let x_720 : u32 = u_xlatu35;
    let x_723 : f32 = x_660.x_AdditionalLightsAttenuation[bitcast<i32>(x_720)].w;
    u_xlat37 = ((x_714 * x_718) + x_723);
    let x_725 : f32 = u_xlat37;
    u_xlat37 = clamp(x_725, 0.0f, 1.0f);
    let x_727 : f32 = u_xlat37;
    let x_728 : f32 = u_xlat37;
    u_xlat37 = (x_727 * x_728);
    let x_730 : f32 = u_xlat36;
    let x_731 : f32 = u_xlat37;
    u_xlat36 = (x_730 * x_731);
    let x_734 : u32 = u_xlatu35;
    u_xlatu37 = (x_734 >> 5u);
    let x_737 : u32 = u_xlatu35;
    u_xlati27 = (1i << bitcast<u32>((bitcast<i32>(x_737) & 31i)));
    let x_743 : i32 = u_xlati27;
    let x_745 : u32 = u_xlatu37;
    let x_748 : f32 = x_406.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_745)].el;
    u_xlati37 = bitcast<i32>((bitcast<u32>(x_743) & bitcast<u32>(x_748)));
    let x_752 : i32 = u_xlati37;
    if ((x_752 != 0i)) {
      let x_762 : u32 = u_xlatu35;
      let x_765 : f32 = x_761.x_AdditionalLightsLightTypes[bitcast<i32>(x_762)].el;
      u_xlati37 = i32(x_765);
      let x_767 : i32 = u_xlati37;
      u_xlati27 = select(1i, 0i, (x_767 != 0i));
      let x_771 : u32 = u_xlatu35;
      u_xlati38 = (bitcast<i32>(x_771) << bitcast<u32>(2i));
      let x_774 : i32 = u_xlati27;
      if ((x_774 != 0i)) {
        let x_779 : vec3<f32> = vs_TEXCOORD1;
        let x_781 : i32 = u_xlati38;
        let x_784 : i32 = u_xlati38;
        let x_788 : vec4<f32> = x_761.x_AdditionalLightsWorldToLights[((x_781 + 1i) / 4i)][((x_784 + 1i) % 4i)];
        let x_790 : vec3<f32> = (vec3<f32>(x_779.y, x_779.y, x_779.y) * vec3<f32>(x_788.x, x_788.y, x_788.w));
        let x_791 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_790.x, x_790.y, x_790.z, x_791.w);
        let x_793 : i32 = u_xlati38;
        let x_795 : i32 = u_xlati38;
        let x_798 : vec4<f32> = x_761.x_AdditionalLightsWorldToLights[(x_793 / 4i)][(x_795 % 4i)];
        let x_800 : vec3<f32> = vs_TEXCOORD1;
        let x_803 : vec4<f32> = u_xlat8;
        let x_805 : vec3<f32> = ((vec3<f32>(x_798.x, x_798.y, x_798.w) * vec3<f32>(x_800.x, x_800.x, x_800.x)) + vec3<f32>(x_803.x, x_803.y, x_803.z));
        let x_806 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_805.x, x_805.y, x_805.z, x_806.w);
        let x_808 : i32 = u_xlati38;
        let x_811 : i32 = u_xlati38;
        let x_815 : vec4<f32> = x_761.x_AdditionalLightsWorldToLights[((x_808 + 2i) / 4i)][((x_811 + 2i) % 4i)];
        let x_817 : vec3<f32> = vs_TEXCOORD1;
        let x_820 : vec4<f32> = u_xlat8;
        let x_822 : vec3<f32> = ((vec3<f32>(x_815.x, x_815.y, x_815.w) * vec3<f32>(x_817.z, x_817.z, x_817.z)) + vec3<f32>(x_820.x, x_820.y, x_820.z));
        let x_823 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_822.x, x_822.y, x_822.z, x_823.w);
        let x_825 : vec4<f32> = u_xlat8;
        let x_827 : i32 = u_xlati38;
        let x_830 : i32 = u_xlati38;
        let x_834 : vec4<f32> = x_761.x_AdditionalLightsWorldToLights[((x_827 + 3i) / 4i)][((x_830 + 3i) % 4i)];
        let x_836 : vec3<f32> = (vec3<f32>(x_825.x, x_825.y, x_825.z) + vec3<f32>(x_834.x, x_834.y, x_834.w));
        let x_837 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_836.x, x_836.y, x_836.z, x_837.w);
        let x_839 : vec4<f32> = u_xlat8;
        let x_841 : vec4<f32> = u_xlat8;
        let x_843 : vec2<f32> = (vec2<f32>(x_839.x, x_839.y) / vec2<f32>(x_841.z, x_841.z));
        let x_844 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_843.x, x_843.y, x_844.z, x_844.w);
        let x_846 : vec4<f32> = u_xlat8;
        let x_849 : vec2<f32> = ((vec2<f32>(x_846.x, x_846.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_850 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_849.x, x_849.y, x_850.z, x_850.w);
        let x_852 : vec4<f32> = u_xlat8;
        let x_856 : vec2<f32> = clamp(vec2<f32>(x_852.x, x_852.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_857 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_856.x, x_856.y, x_857.z, x_857.w);
        let x_859 : u32 = u_xlatu35;
        let x_862 : vec4<f32> = x_761.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_859)];
        let x_864 : vec4<f32> = u_xlat8;
        let x_867 : u32 = u_xlatu35;
        let x_870 : vec4<f32> = x_761.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_867)];
        let x_872 : vec2<f32> = ((vec2<f32>(x_862.x, x_862.y) * vec2<f32>(x_864.x, x_864.y)) + vec2<f32>(x_870.z, x_870.w));
        let x_873 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_872.x, x_872.y, x_873.z, x_873.w);
      } else {
        let x_877 : i32 = u_xlati37;
        u_xlatb37 = (x_877 == 1i);
        let x_879 : bool = u_xlatb37;
        u_xlati37 = select(0i, 1i, x_879);
        let x_881 : i32 = u_xlati37;
        if ((x_881 != 0i)) {
          let x_887 : vec3<f32> = vs_TEXCOORD1;
          let x_889 : i32 = u_xlati38;
          let x_892 : i32 = u_xlati38;
          let x_896 : vec4<f32> = x_761.x_AdditionalLightsWorldToLights[((x_889 + 1i) / 4i)][((x_892 + 1i) % 4i)];
          u_xlat30 = (vec2<f32>(x_887.y, x_887.y) * vec2<f32>(x_896.x, x_896.y));
          let x_899 : i32 = u_xlati38;
          let x_901 : i32 = u_xlati38;
          let x_904 : vec4<f32> = x_761.x_AdditionalLightsWorldToLights[(x_899 / 4i)][(x_901 % 4i)];
          let x_906 : vec3<f32> = vs_TEXCOORD1;
          let x_909 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_904.x, x_904.y) * vec2<f32>(x_906.x, x_906.x)) + x_909);
          let x_911 : i32 = u_xlati38;
          let x_914 : i32 = u_xlati38;
          let x_918 : vec4<f32> = x_761.x_AdditionalLightsWorldToLights[((x_911 + 2i) / 4i)][((x_914 + 2i) % 4i)];
          let x_920 : vec3<f32> = vs_TEXCOORD1;
          let x_923 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_918.x, x_918.y) * vec2<f32>(x_920.z, x_920.z)) + x_923);
          let x_925 : vec2<f32> = u_xlat30;
          let x_926 : i32 = u_xlati38;
          let x_929 : i32 = u_xlati38;
          let x_933 : vec4<f32> = x_761.x_AdditionalLightsWorldToLights[((x_926 + 3i) / 4i)][((x_929 + 3i) % 4i)];
          u_xlat30 = (x_925 + vec2<f32>(x_933.x, x_933.y));
          let x_936 : vec2<f32> = u_xlat30;
          u_xlat30 = ((x_936 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_939 : vec2<f32> = u_xlat30;
          u_xlat30 = fract(x_939);
          let x_941 : u32 = u_xlatu35;
          let x_944 : vec4<f32> = x_761.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_941)];
          let x_946 : vec2<f32> = u_xlat30;
          let x_948 : u32 = u_xlatu35;
          let x_951 : vec4<f32> = x_761.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_948)];
          let x_953 : vec2<f32> = ((vec2<f32>(x_944.x, x_944.y) * x_946) + vec2<f32>(x_951.z, x_951.w));
          let x_954 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_953.x, x_953.y, x_954.z, x_954.w);
        } else {
          let x_958 : vec3<f32> = vs_TEXCOORD1;
          let x_960 : i32 = u_xlati38;
          let x_963 : i32 = u_xlati38;
          let x_967 : vec4<f32> = x_761.x_AdditionalLightsWorldToLights[((x_960 + 1i) / 4i)][((x_963 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_958.y, x_958.y, x_958.y, x_958.y) * x_967);
          let x_969 : i32 = u_xlati38;
          let x_971 : i32 = u_xlati38;
          let x_974 : vec4<f32> = x_761.x_AdditionalLightsWorldToLights[(x_969 / 4i)][(x_971 % 4i)];
          let x_975 : vec3<f32> = vs_TEXCOORD1;
          let x_978 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_974 * vec4<f32>(x_975.x, x_975.x, x_975.x, x_975.x)) + x_978);
          let x_980 : i32 = u_xlati38;
          let x_983 : i32 = u_xlati38;
          let x_987 : vec4<f32> = x_761.x_AdditionalLightsWorldToLights[((x_980 + 2i) / 4i)][((x_983 + 2i) % 4i)];
          let x_988 : vec3<f32> = vs_TEXCOORD1;
          let x_991 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_987 * vec4<f32>(x_988.z, x_988.z, x_988.z, x_988.z)) + x_991);
          let x_993 : vec4<f32> = u_xlat9;
          let x_994 : i32 = u_xlati38;
          let x_997 : i32 = u_xlati38;
          let x_1001 : vec4<f32> = x_761.x_AdditionalLightsWorldToLights[((x_994 + 3i) / 4i)][((x_997 + 3i) % 4i)];
          u_xlat9 = (x_993 + x_1001);
          let x_1003 : vec4<f32> = u_xlat9;
          let x_1005 : vec4<f32> = u_xlat9;
          let x_1007 : vec3<f32> = (vec3<f32>(x_1003.x, x_1003.y, x_1003.z) / vec3<f32>(x_1005.w, x_1005.w, x_1005.w));
          let x_1008 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1007.x, x_1007.y, x_1007.z, x_1008.w);
          let x_1010 : vec4<f32> = u_xlat9;
          let x_1012 : vec4<f32> = u_xlat9;
          u_xlat37 = dot(vec3<f32>(x_1010.x, x_1010.y, x_1010.z), vec3<f32>(x_1012.x, x_1012.y, x_1012.z));
          let x_1015 : f32 = u_xlat37;
          u_xlat37 = inverseSqrt(x_1015);
          let x_1017 : f32 = u_xlat37;
          let x_1019 : vec4<f32> = u_xlat9;
          let x_1021 : vec3<f32> = (vec3<f32>(x_1017, x_1017, x_1017) * vec3<f32>(x_1019.x, x_1019.y, x_1019.z));
          let x_1022 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1021.x, x_1021.y, x_1021.z, x_1022.w);
          let x_1024 : vec4<f32> = u_xlat9;
          u_xlat37 = dot(abs(vec3<f32>(x_1024.x, x_1024.y, x_1024.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1029 : f32 = u_xlat37;
          u_xlat37 = max(x_1029, 0.000001f);
          let x_1032 : f32 = u_xlat37;
          u_xlat37 = (1.0f / x_1032);
          let x_1035 : f32 = u_xlat37;
          let x_1037 : vec4<f32> = u_xlat9;
          u_xlat10 = (vec3<f32>(x_1035, x_1035, x_1035) * vec3<f32>(x_1037.z, x_1037.x, x_1037.y));
          let x_1041 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_1041);
          let x_1045 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_1045, 0.0f, 1.0f);
          let x_1049 : vec3<f32> = u_xlat10;
          let x_1052 : vec4<bool> = (vec4<f32>(x_1049.y, x_1049.z, x_1049.y, x_1049.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb27 = vec2<bool>(x_1052.x, x_1052.y);
          let x_1056 : bool = u_xlatb27.x;
          if (x_1056) {
            let x_1061 : f32 = u_xlat10.x;
            x_1057 = x_1061;
          } else {
            let x_1064 : f32 = u_xlat10.x;
            x_1057 = -(x_1064);
          }
          let x_1066 : f32 = x_1057;
          u_xlat27.x = x_1066;
          let x_1069 : bool = u_xlatb27.y;
          if (x_1069) {
            let x_1074 : f32 = u_xlat10.x;
            x_1070 = x_1074;
          } else {
            let x_1077 : f32 = u_xlat10.x;
            x_1070 = -(x_1077);
          }
          let x_1079 : f32 = x_1070;
          u_xlat27.y = x_1079;
          let x_1081 : vec4<f32> = u_xlat9;
          let x_1083 : f32 = u_xlat37;
          let x_1086 : vec2<f32> = u_xlat27;
          u_xlat27 = ((vec2<f32>(x_1081.x, x_1081.y) * vec2<f32>(x_1083, x_1083)) + x_1086);
          let x_1088 : vec2<f32> = u_xlat27;
          u_xlat27 = ((x_1088 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1091 : vec2<f32> = u_xlat27;
          u_xlat27 = clamp(x_1091, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1095 : u32 = u_xlatu35;
          let x_1098 : vec4<f32> = x_761.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1095)];
          let x_1100 : vec2<f32> = u_xlat27;
          let x_1102 : u32 = u_xlatu35;
          let x_1105 : vec4<f32> = x_761.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1102)];
          let x_1107 : vec2<f32> = ((vec2<f32>(x_1098.x, x_1098.y) * x_1100) + vec2<f32>(x_1105.z, x_1105.w));
          let x_1108 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1107.x, x_1107.y, x_1108.z, x_1108.w);
        }
      }
      let x_1115 : vec4<f32> = u_xlat8;
      let x_1118 : f32 = x_43.x_GlobalMipBias.x;
      let x_1119 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1115.x, x_1115.y), x_1118);
      u_xlat8 = x_1119;
      let x_1121 : bool = u_xlatb5.y;
      if (x_1121) {
        let x_1126 : f32 = u_xlat8.w;
        x_1122 = x_1126;
      } else {
        let x_1129 : f32 = u_xlat8.x;
        x_1122 = x_1129;
      }
      let x_1130 : f32 = x_1122;
      u_xlat37 = x_1130;
      let x_1132 : bool = u_xlatb5.x;
      if (x_1132) {
        let x_1136 : vec4<f32> = u_xlat8;
        x_1133 = vec3<f32>(x_1136.x, x_1136.y, x_1136.z);
      } else {
        let x_1139 : f32 = u_xlat37;
        x_1133 = vec3<f32>(x_1139, x_1139, x_1139);
      }
      let x_1141 : vec3<f32> = x_1133;
      let x_1142 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1141.x, x_1141.y, x_1141.z, x_1142.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_1148 : vec4<f32> = u_xlat8;
    let x_1150 : u32 = u_xlatu35;
    let x_1153 : vec4<f32> = x_660.x_AdditionalLightsColor[bitcast<i32>(x_1150)];
    let x_1155 : vec3<f32> = (vec3<f32>(x_1148.x, x_1148.y, x_1148.z) * vec3<f32>(x_1153.x, x_1153.y, x_1153.z));
    let x_1156 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1155.x, x_1155.y, x_1155.z, x_1156.w);
    let x_1158 : f32 = u_xlat33;
    let x_1160 : vec4<f32> = u_xlat8;
    let x_1162 : vec3<f32> = (vec3<f32>(x_1158, x_1158, x_1158) * vec3<f32>(x_1160.x, x_1160.y, x_1160.z));
    let x_1163 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1162.x, x_1162.y, x_1162.z, x_1163.w);
    let x_1165 : f32 = u_xlat36;
    let x_1167 : vec4<f32> = u_xlat8;
    let x_1169 : vec3<f32> = (vec3<f32>(x_1165, x_1165, x_1165) * vec3<f32>(x_1167.x, x_1167.y, x_1167.z));
    let x_1170 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1169.x, x_1169.y, x_1169.z, x_1170.w);
    let x_1172 : vec3<f32> = u_xlat2;
    let x_1173 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(x_1172, x_1173);
    let x_1175 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1175, 0.0f, 1.0f);
    let x_1177 : f32 = u_xlat35;
    let x_1179 : vec4<f32> = u_xlat8;
    u_xlat7 = (vec3<f32>(x_1177, x_1177, x_1177) * vec3<f32>(x_1179.x, x_1179.y, x_1179.z));
    let x_1182 : vec3<f32> = u_xlat7;
    let x_1183 : vec4<f32> = u_xlat1;
    let x_1186 : vec3<f32> = u_xlat6;
    u_xlat6 = ((x_1182 * vec3<f32>(x_1183.y, x_1183.z, x_1183.w)) + x_1186);

    continuing {
      let x_1188 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1188 + bitcast<u32>(1i));
    }
  }
  let x_1190 : vec3<f32> = u_xlat3;
  let x_1191 : vec4<f32> = u_xlat1;
  let x_1194 : vec4<f32> = u_xlat4;
  let x_1196 : vec3<f32> = ((x_1190 * vec3<f32>(x_1191.y, x_1191.z, x_1191.w)) + vec3<f32>(x_1194.x, x_1194.y, x_1194.z));
  let x_1197 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1196.x, x_1196.y, x_1196.z, x_1197.w);
  let x_1201 : vec3<f32> = u_xlat6;
  let x_1202 : vec4<f32> = u_xlat1;
  let x_1204 : vec3<f32> = (x_1201 + vec3<f32>(x_1202.x, x_1202.y, x_1202.z));
  let x_1205 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1204.x, x_1204.y, x_1204.z, x_1205.w);
  let x_1208 : f32 = x_56.x_Surface;
  u_xlatb11 = (x_1208 == 1.0f);
  let x_1210 : bool = u_xlatb11;
  let x_1211 : bool = u_xlatb22;
  u_xlatb11 = (x_1210 | x_1211);
  let x_1213 : bool = u_xlatb11;
  if (x_1213) {
    let x_1218 : f32 = u_xlat0.x;
    x_1214 = x_1218;
  } else {
    x_1214 = 1.0f;
  }
  let x_1220 : f32 = x_1214;
  SV_Target0.w = x_1220;
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

