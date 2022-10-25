struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  x_AlphaToMaskAvailable : f32,
  @size(4)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_ProjectionParams : vec4<f32>,
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

@group(0) @binding(5) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

@group(0) @binding(4) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_184 : UnityPerDraw;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_391 : MainLightShadows;

@group(1) @binding(5) var<uniform> x_461 : LightCookies;

@group(0) @binding(2) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(1) var<uniform> x_705 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_807 : AdditionalLightsCookies;

@group(0) @binding(3) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_75 : f32;
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
  var u_xlatb1 : bool;
  var u_xlatb35 : bool;
  var u_xlat35 : f32;
  var u_xlatb5 : vec2<bool>;
  var x_547 : f32;
  var x_559 : vec3<f32>;
  var u_xlatu33 : u32;
  var u_xlat6 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu35 : u32;
  var u_xlati36 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat7 : vec3<f32>;
  var u_xlat36 : f32;
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
  var x_1103 : f32;
  var x_1116 : f32;
  var x_1168 : f32;
  var x_1179 : vec3<f32>;
  var x_1289 : f32;
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
  let x_69 : f32 = u_xlat1.x;
  let x_72 : f32 = x_57.x_Cutoff;
  u_xlatb0 = (x_69 >= x_72);
  let x_74 : bool = u_xlatb0;
  if (x_74) {
    let x_79 : f32 = u_xlat1.x;
    x_75 = x_79;
  } else {
    x_75 = 0.0f;
  }
  let x_82 : f32 = x_75;
  u_xlat0.x = x_82;
  let x_87 : f32 = u_xlat0.w;
  let x_89 : f32 = x_57.x_BaseColor.w;
  let x_92 : f32 = x_57.x_Cutoff;
  u_xlat11.x = ((x_87 * x_89) + -(x_92));
  let x_98 : f32 = u_xlat1.x;
  u_xlat22 = dpdxCoarse(x_98);
  let x_102 : f32 = u_xlat1.x;
  u_xlat33 = dpdyCoarse(x_102);
  let x_104 : f32 = u_xlat33;
  let x_106 : f32 = u_xlat22;
  u_xlat22 = (abs(x_104) + abs(x_106));
  let x_109 : f32 = u_xlat22;
  u_xlat22 = max(x_109, 0.0001f);
  let x_113 : f32 = u_xlat11.x;
  let x_114 : f32 = u_xlat22;
  u_xlat11.x = (x_113 / x_114);
  let x_118 : f32 = u_xlat11.x;
  u_xlat11.x = (x_118 + 0.5f);
  let x_123 : f32 = u_xlat11.x;
  u_xlat11.x = clamp(x_123, 0.0f, 1.0f);
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
  let x_158 : vec4<f32> = hlslcc_FragCoord;
  let x_162 : f32 = x_44.x_DitheringTextureInvSize;
  let x_164 : vec2<f32> = (vec2<f32>(x_158.x, x_158.y) * vec2<f32>(x_162, x_162));
  let x_165 : vec3<f32> = u_xlat11;
  u_xlat11 = vec3<f32>(x_164.x, x_165.y, x_164.y);
  let x_172 : vec3<f32> = u_xlat11;
  let x_175 : f32 = x_44.x_GlobalMipBias.x;
  let x_176 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_172.x, x_172.z), x_175);
  u_xlat11.x = x_176.w;
  let x_187 : f32 = x_184.unity_LODFade.x;
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
  let x_207 : f32 = x_184.unity_LODFade.x;
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
  let x_295 : vec4<f32> = x_184.unity_SHAr;
  let x_296 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_295, x_296);
  let x_301 : vec4<f32> = x_184.unity_SHAg;
  let x_302 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_301, x_302);
  let x_307 : vec4<f32> = x_184.unity_SHAb;
  let x_308 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_307, x_308);
  let x_312 : vec4<f32> = u_xlat2;
  let x_314 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_312.y, x_312.z, x_312.z, x_312.x) * vec4<f32>(x_314.x, x_314.y, x_314.z, x_314.z));
  let x_320 : vec4<f32> = x_184.unity_SHBr;
  let x_321 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_320, x_321);
  let x_326 : vec4<f32> = x_184.unity_SHBg;
  let x_327 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_326, x_327);
  let x_332 : vec4<f32> = x_184.unity_SHBb;
  let x_333 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_332, x_333);
  let x_337 : f32 = u_xlat2.y;
  let x_339 : f32 = u_xlat2.y;
  u_xlat33 = (x_337 * x_339);
  let x_342 : f32 = u_xlat2.x;
  let x_344 : f32 = u_xlat2.x;
  let x_346 : f32 = u_xlat33;
  u_xlat33 = ((x_342 * x_344) + -(x_346));
  let x_351 : vec4<f32> = x_184.unity_SHC;
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
  let x_369 : vec4<f32> = vs_TEXCOORD6;
  let x_370 : vec2<f32> = vec2<f32>(x_369.x, x_369.y);
  let x_372 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_370.x, x_370.y, x_372);
  let x_384 : vec3<f32> = txVec0;
  let x_386 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_384.xy, x_384.z);
  u_xlat33 = x_386;
  let x_394 : f32 = x_391.x_MainLightShadowParams.x;
  u_xlat1.x = (-(x_394) + 1.0f);
  let x_398 : f32 = u_xlat33;
  let x_400 : f32 = x_391.x_MainLightShadowParams.x;
  let x_403 : f32 = u_xlat1.x;
  u_xlat33 = ((x_398 * x_400) + x_403);
  let x_407 : f32 = vs_TEXCOORD6.z;
  u_xlatb1 = (0.0f >= x_407);
  let x_411 : f32 = vs_TEXCOORD6.z;
  u_xlatb35 = (x_411 >= 1.0f);
  let x_413 : bool = u_xlatb1;
  let x_414 : bool = u_xlatb35;
  u_xlatb1 = (x_413 | x_414);
  let x_416 : bool = u_xlatb1;
  let x_417 : f32 = u_xlat33;
  u_xlat33 = select(x_417, 1.0f, x_416);
  let x_419 : vec3<f32> = vs_TEXCOORD1;
  let x_423 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_425 : vec3<f32> = (x_419 + -(x_423));
  let x_426 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_425.x, x_425.y, x_425.z, x_426.w);
  let x_428 : vec4<f32> = u_xlat4;
  let x_430 : vec4<f32> = u_xlat4;
  u_xlat1.x = dot(vec3<f32>(x_428.x, x_428.y, x_428.z), vec3<f32>(x_430.x, x_430.y, x_430.z));
  let x_435 : f32 = u_xlat1.x;
  let x_437 : f32 = x_391.x_MainLightShadowParams.z;
  let x_440 : f32 = x_391.x_MainLightShadowParams.w;
  u_xlat1.x = ((x_435 * x_437) + x_440);
  let x_444 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_444, 0.0f, 1.0f);
  let x_448 : f32 = u_xlat33;
  u_xlat35 = (-(x_448) + 1.0f);
  let x_452 : f32 = u_xlat1.x;
  let x_453 : f32 = u_xlat35;
  let x_455 : f32 = u_xlat33;
  u_xlat33 = ((x_452 * x_453) + x_455);
  let x_463 : f32 = x_461.x_MainLightCookieTextureFormat;
  u_xlatb1 = !((x_463 == -1.0f));
  let x_466 : bool = u_xlatb1;
  if (x_466) {
    let x_469 : vec3<f32> = vs_TEXCOORD1;
    let x_472 : vec4<f32> = x_461.x_MainLightWorldToLight[1i];
    let x_474 : vec2<f32> = (vec2<f32>(x_469.y, x_469.y) * vec2<f32>(x_472.x, x_472.y));
    let x_475 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_474.x, x_474.y, x_475.z, x_475.w);
    let x_478 : vec4<f32> = x_461.x_MainLightWorldToLight[0i];
    let x_480 : vec3<f32> = vs_TEXCOORD1;
    let x_483 : vec4<f32> = u_xlat4;
    let x_485 : vec2<f32> = ((vec2<f32>(x_478.x, x_478.y) * vec2<f32>(x_480.x, x_480.x)) + vec2<f32>(x_483.x, x_483.y));
    let x_486 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_485.x, x_485.y, x_486.z, x_486.w);
    let x_489 : vec4<f32> = x_461.x_MainLightWorldToLight[2i];
    let x_491 : vec3<f32> = vs_TEXCOORD1;
    let x_494 : vec4<f32> = u_xlat4;
    let x_496 : vec2<f32> = ((vec2<f32>(x_489.x, x_489.y) * vec2<f32>(x_491.z, x_491.z)) + vec2<f32>(x_494.x, x_494.y));
    let x_497 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_496.x, x_496.y, x_497.z, x_497.w);
    let x_499 : vec4<f32> = u_xlat4;
    let x_502 : vec4<f32> = x_461.x_MainLightWorldToLight[3i];
    let x_504 : vec2<f32> = (vec2<f32>(x_499.x, x_499.y) + vec2<f32>(x_502.x, x_502.y));
    let x_505 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_504.x, x_504.y, x_505.z, x_505.w);
    let x_507 : vec4<f32> = u_xlat4;
    let x_511 : vec2<f32> = ((vec2<f32>(x_507.x, x_507.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_512 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_511.x, x_511.y, x_512.z, x_512.w);
    let x_519 : vec4<f32> = u_xlat4;
    let x_522 : f32 = x_44.x_GlobalMipBias.x;
    let x_523 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_519.x, x_519.y), x_522);
    u_xlat4 = x_523;
    let x_528 : f32 = x_461.x_MainLightCookieTextureFormat;
    let x_530 : f32 = x_461.x_MainLightCookieTextureFormat;
    let x_532 : f32 = x_461.x_MainLightCookieTextureFormat;
    let x_534 : f32 = x_461.x_MainLightCookieTextureFormat;
    let x_535 : vec4<f32> = vec4<f32>(x_528, x_530, x_532, x_534);
    let x_543 : vec4<bool> = (vec4<f32>(x_535.x, x_535.y, x_535.z, x_535.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_543.x, x_543.y);
    let x_546 : bool = u_xlatb5.y;
    if (x_546) {
      let x_551 : f32 = u_xlat4.w;
      x_547 = x_551;
    } else {
      let x_554 : f32 = u_xlat4.x;
      x_547 = x_554;
    }
    let x_555 : f32 = x_547;
    u_xlat1.x = x_555;
    let x_558 : bool = u_xlatb5.x;
    if (x_558) {
      let x_562 : vec4<f32> = u_xlat4;
      x_559 = vec3<f32>(x_562.x, x_562.y, x_562.z);
    } else {
      let x_565 : vec4<f32> = u_xlat1;
      x_559 = vec3<f32>(x_565.x, x_565.x, x_565.x);
    }
    let x_567 : vec3<f32> = x_559;
    let x_568 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_567.x, x_567.y, x_567.z, x_568.w);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
  }
  let x_574 : vec4<f32> = u_xlat4;
  let x_577 : vec4<f32> = x_44.x_MainLightColor;
  let x_579 : vec3<f32> = (vec3<f32>(x_574.x, x_574.y, x_574.z) * vec3<f32>(x_577.x, x_577.y, x_577.z));
  let x_580 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_579.x, x_579.y, x_579.z, x_580.w);
  let x_582 : f32 = u_xlat33;
  let x_584 : f32 = x_184.unity_LightData.z;
  u_xlat33 = (x_582 * x_584);
  let x_586 : f32 = u_xlat33;
  let x_588 : vec4<f32> = u_xlat4;
  let x_590 : vec3<f32> = (vec3<f32>(x_586, x_586, x_586) * vec3<f32>(x_588.x, x_588.y, x_588.z));
  let x_591 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_590.x, x_590.y, x_590.z, x_591.w);
  let x_593 : vec4<f32> = u_xlat2;
  let x_596 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat33 = dot(vec3<f32>(x_593.x, x_593.y, x_593.z), vec3<f32>(x_596.x, x_596.y, x_596.z));
  let x_599 : f32 = u_xlat33;
  u_xlat33 = clamp(x_599, 0.0f, 1.0f);
  let x_601 : f32 = u_xlat33;
  let x_603 : vec4<f32> = u_xlat4;
  let x_605 : vec3<f32> = (vec3<f32>(x_601, x_601, x_601) * vec3<f32>(x_603.x, x_603.y, x_603.z));
  let x_606 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_605.x, x_605.y, x_605.z, x_606.w);
  let x_608 : vec4<f32> = u_xlat1;
  let x_610 : vec4<f32> = u_xlat4;
  let x_612 : vec3<f32> = (vec3<f32>(x_608.y, x_608.z, x_608.w) * vec3<f32>(x_610.x, x_610.y, x_610.z));
  let x_613 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_612.x, x_612.y, x_612.z, x_613.w);
  let x_615 : vec4<f32> = u_xlat0;
  let x_617 : vec4<f32> = u_xlat4;
  let x_619 : vec3<f32> = (vec3<f32>(x_615.x, x_615.x, x_615.x) * vec3<f32>(x_617.x, x_617.y, x_617.z));
  let x_620 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_619.x, x_619.y, x_619.z, x_620.w);
  let x_623 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_625 : f32 = x_184.unity_LightData.y;
  u_xlat33 = min(x_623, x_625);
  let x_629 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_629));
  let x_633 : f32 = x_461.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_635 : f32 = x_461.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_637 : f32 = x_461.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_639 : f32 = x_461.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_640 : vec4<f32> = vec4<f32>(x_633, x_635, x_637, x_639);
  let x_646 : vec4<bool> = (vec4<f32>(x_640.x, x_640.y, x_640.z, x_640.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_646.x, x_646.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_658 : u32 = u_xlatu_loop_1;
    let x_659 : u32 = u_xlatu33;
    if ((x_658 < x_659)) {
    } else {
      break;
    }
    let x_662 : u32 = u_xlatu_loop_1;
    u_xlatu35 = (x_662 >> 2u);
    let x_666 : u32 = u_xlatu_loop_1;
    u_xlati36 = bitcast<i32>((x_666 & 3u));
    let x_669 : u32 = u_xlatu35;
    let x_672 : vec4<f32> = x_184.unity_LightIndices[bitcast<i32>(x_669)];
    let x_682 : i32 = u_xlati36;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_687 : vec4<u32> = indexable[x_682];
    u_xlat35 = dot(x_672, bitcast<vec4<f32>>(x_687));
    let x_690 : f32 = u_xlat35;
    u_xlatu35 = bitcast<u32>(i32(x_690));
    let x_694 : vec3<f32> = vs_TEXCOORD1;
    let x_706 : u32 = u_xlatu35;
    let x_709 : vec4<f32> = x_705.x_AdditionalLightsPosition[bitcast<i32>(x_706)];
    let x_712 : u32 = u_xlatu35;
    let x_715 : vec4<f32> = x_705.x_AdditionalLightsPosition[bitcast<i32>(x_712)];
    u_xlat7 = ((-(x_694) * vec3<f32>(x_709.w, x_709.w, x_709.w)) + vec3<f32>(x_715.x, x_715.y, x_715.z));
    let x_719 : vec3<f32> = u_xlat7;
    let x_720 : vec3<f32> = u_xlat7;
    u_xlat36 = dot(x_719, x_720);
    let x_722 : f32 = u_xlat36;
    u_xlat36 = max(x_722, 6.10351562e-05f);
    let x_726 : f32 = u_xlat36;
    u_xlat37 = inverseSqrt(x_726);
    let x_728 : f32 = u_xlat37;
    let x_730 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_728, x_728, x_728) * x_730);
    let x_732 : f32 = u_xlat36;
    u_xlat37 = (1.0f / x_732);
    let x_734 : f32 = u_xlat36;
    let x_735 : u32 = u_xlatu35;
    let x_738 : f32 = x_705.x_AdditionalLightsAttenuation[bitcast<i32>(x_735)].x;
    u_xlat36 = (x_734 * x_738);
    let x_740 : f32 = u_xlat36;
    let x_742 : f32 = u_xlat36;
    u_xlat36 = ((-(x_740) * x_742) + 1.0f);
    let x_745 : f32 = u_xlat36;
    u_xlat36 = max(x_745, 0.0f);
    let x_747 : f32 = u_xlat36;
    let x_748 : f32 = u_xlat36;
    u_xlat36 = (x_747 * x_748);
    let x_750 : f32 = u_xlat36;
    let x_751 : f32 = u_xlat37;
    u_xlat36 = (x_750 * x_751);
    let x_753 : u32 = u_xlatu35;
    let x_756 : vec4<f32> = x_705.x_AdditionalLightsSpotDir[bitcast<i32>(x_753)];
    let x_758 : vec3<f32> = u_xlat7;
    u_xlat37 = dot(vec3<f32>(x_756.x, x_756.y, x_756.z), x_758);
    let x_760 : f32 = u_xlat37;
    let x_761 : u32 = u_xlatu35;
    let x_764 : f32 = x_705.x_AdditionalLightsAttenuation[bitcast<i32>(x_761)].z;
    let x_766 : u32 = u_xlatu35;
    let x_769 : f32 = x_705.x_AdditionalLightsAttenuation[bitcast<i32>(x_766)].w;
    u_xlat37 = ((x_760 * x_764) + x_769);
    let x_771 : f32 = u_xlat37;
    u_xlat37 = clamp(x_771, 0.0f, 1.0f);
    let x_773 : f32 = u_xlat37;
    let x_774 : f32 = u_xlat37;
    u_xlat37 = (x_773 * x_774);
    let x_776 : f32 = u_xlat36;
    let x_777 : f32 = u_xlat37;
    u_xlat36 = (x_776 * x_777);
    let x_780 : u32 = u_xlatu35;
    u_xlatu37 = (x_780 >> 5u);
    let x_783 : u32 = u_xlatu35;
    u_xlati27 = (1i << bitcast<u32>((bitcast<i32>(x_783) & 31i)));
    let x_789 : i32 = u_xlati27;
    let x_791 : u32 = u_xlatu37;
    let x_794 : f32 = x_461.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_791)].el;
    u_xlati37 = bitcast<i32>((bitcast<u32>(x_789) & bitcast<u32>(x_794)));
    let x_798 : i32 = u_xlati37;
    if ((x_798 != 0i)) {
      let x_808 : u32 = u_xlatu35;
      let x_811 : f32 = x_807.x_AdditionalLightsLightTypes[bitcast<i32>(x_808)].el;
      u_xlati37 = i32(x_811);
      let x_813 : i32 = u_xlati37;
      u_xlati27 = select(1i, 0i, (x_813 != 0i));
      let x_817 : u32 = u_xlatu35;
      u_xlati38 = (bitcast<i32>(x_817) << bitcast<u32>(2i));
      let x_820 : i32 = u_xlati27;
      if ((x_820 != 0i)) {
        let x_825 : vec3<f32> = vs_TEXCOORD1;
        let x_827 : i32 = u_xlati38;
        let x_830 : i32 = u_xlati38;
        let x_834 : vec4<f32> = x_807.x_AdditionalLightsWorldToLights[((x_827 + 1i) / 4i)][((x_830 + 1i) % 4i)];
        let x_836 : vec3<f32> = (vec3<f32>(x_825.y, x_825.y, x_825.y) * vec3<f32>(x_834.x, x_834.y, x_834.w));
        let x_837 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_836.x, x_836.y, x_836.z, x_837.w);
        let x_839 : i32 = u_xlati38;
        let x_841 : i32 = u_xlati38;
        let x_844 : vec4<f32> = x_807.x_AdditionalLightsWorldToLights[(x_839 / 4i)][(x_841 % 4i)];
        let x_846 : vec3<f32> = vs_TEXCOORD1;
        let x_849 : vec4<f32> = u_xlat8;
        let x_851 : vec3<f32> = ((vec3<f32>(x_844.x, x_844.y, x_844.w) * vec3<f32>(x_846.x, x_846.x, x_846.x)) + vec3<f32>(x_849.x, x_849.y, x_849.z));
        let x_852 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_851.x, x_851.y, x_851.z, x_852.w);
        let x_854 : i32 = u_xlati38;
        let x_857 : i32 = u_xlati38;
        let x_861 : vec4<f32> = x_807.x_AdditionalLightsWorldToLights[((x_854 + 2i) / 4i)][((x_857 + 2i) % 4i)];
        let x_863 : vec3<f32> = vs_TEXCOORD1;
        let x_866 : vec4<f32> = u_xlat8;
        let x_868 : vec3<f32> = ((vec3<f32>(x_861.x, x_861.y, x_861.w) * vec3<f32>(x_863.z, x_863.z, x_863.z)) + vec3<f32>(x_866.x, x_866.y, x_866.z));
        let x_869 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_868.x, x_868.y, x_868.z, x_869.w);
        let x_871 : vec4<f32> = u_xlat8;
        let x_873 : i32 = u_xlati38;
        let x_876 : i32 = u_xlati38;
        let x_880 : vec4<f32> = x_807.x_AdditionalLightsWorldToLights[((x_873 + 3i) / 4i)][((x_876 + 3i) % 4i)];
        let x_882 : vec3<f32> = (vec3<f32>(x_871.x, x_871.y, x_871.z) + vec3<f32>(x_880.x, x_880.y, x_880.w));
        let x_883 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_882.x, x_882.y, x_882.z, x_883.w);
        let x_885 : vec4<f32> = u_xlat8;
        let x_887 : vec4<f32> = u_xlat8;
        let x_889 : vec2<f32> = (vec2<f32>(x_885.x, x_885.y) / vec2<f32>(x_887.z, x_887.z));
        let x_890 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_889.x, x_889.y, x_890.z, x_890.w);
        let x_892 : vec4<f32> = u_xlat8;
        let x_895 : vec2<f32> = ((vec2<f32>(x_892.x, x_892.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_896 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_895.x, x_895.y, x_896.z, x_896.w);
        let x_898 : vec4<f32> = u_xlat8;
        let x_902 : vec2<f32> = clamp(vec2<f32>(x_898.x, x_898.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_903 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_902.x, x_902.y, x_903.z, x_903.w);
        let x_905 : u32 = u_xlatu35;
        let x_908 : vec4<f32> = x_807.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_905)];
        let x_910 : vec4<f32> = u_xlat8;
        let x_913 : u32 = u_xlatu35;
        let x_916 : vec4<f32> = x_807.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_913)];
        let x_918 : vec2<f32> = ((vec2<f32>(x_908.x, x_908.y) * vec2<f32>(x_910.x, x_910.y)) + vec2<f32>(x_916.z, x_916.w));
        let x_919 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_918.x, x_918.y, x_919.z, x_919.w);
      } else {
        let x_923 : i32 = u_xlati37;
        u_xlatb37 = (x_923 == 1i);
        let x_925 : bool = u_xlatb37;
        u_xlati37 = select(0i, 1i, x_925);
        let x_927 : i32 = u_xlati37;
        if ((x_927 != 0i)) {
          let x_933 : vec3<f32> = vs_TEXCOORD1;
          let x_935 : i32 = u_xlati38;
          let x_938 : i32 = u_xlati38;
          let x_942 : vec4<f32> = x_807.x_AdditionalLightsWorldToLights[((x_935 + 1i) / 4i)][((x_938 + 1i) % 4i)];
          u_xlat30 = (vec2<f32>(x_933.y, x_933.y) * vec2<f32>(x_942.x, x_942.y));
          let x_945 : i32 = u_xlati38;
          let x_947 : i32 = u_xlati38;
          let x_950 : vec4<f32> = x_807.x_AdditionalLightsWorldToLights[(x_945 / 4i)][(x_947 % 4i)];
          let x_952 : vec3<f32> = vs_TEXCOORD1;
          let x_955 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_950.x, x_950.y) * vec2<f32>(x_952.x, x_952.x)) + x_955);
          let x_957 : i32 = u_xlati38;
          let x_960 : i32 = u_xlati38;
          let x_964 : vec4<f32> = x_807.x_AdditionalLightsWorldToLights[((x_957 + 2i) / 4i)][((x_960 + 2i) % 4i)];
          let x_966 : vec3<f32> = vs_TEXCOORD1;
          let x_969 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_964.x, x_964.y) * vec2<f32>(x_966.z, x_966.z)) + x_969);
          let x_971 : vec2<f32> = u_xlat30;
          let x_972 : i32 = u_xlati38;
          let x_975 : i32 = u_xlati38;
          let x_979 : vec4<f32> = x_807.x_AdditionalLightsWorldToLights[((x_972 + 3i) / 4i)][((x_975 + 3i) % 4i)];
          u_xlat30 = (x_971 + vec2<f32>(x_979.x, x_979.y));
          let x_982 : vec2<f32> = u_xlat30;
          u_xlat30 = ((x_982 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_985 : vec2<f32> = u_xlat30;
          u_xlat30 = fract(x_985);
          let x_987 : u32 = u_xlatu35;
          let x_990 : vec4<f32> = x_807.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_987)];
          let x_992 : vec2<f32> = u_xlat30;
          let x_994 : u32 = u_xlatu35;
          let x_997 : vec4<f32> = x_807.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_994)];
          let x_999 : vec2<f32> = ((vec2<f32>(x_990.x, x_990.y) * x_992) + vec2<f32>(x_997.z, x_997.w));
          let x_1000 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_999.x, x_999.y, x_1000.z, x_1000.w);
        } else {
          let x_1004 : vec3<f32> = vs_TEXCOORD1;
          let x_1006 : i32 = u_xlati38;
          let x_1009 : i32 = u_xlati38;
          let x_1013 : vec4<f32> = x_807.x_AdditionalLightsWorldToLights[((x_1006 + 1i) / 4i)][((x_1009 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_1004.y, x_1004.y, x_1004.y, x_1004.y) * x_1013);
          let x_1015 : i32 = u_xlati38;
          let x_1017 : i32 = u_xlati38;
          let x_1020 : vec4<f32> = x_807.x_AdditionalLightsWorldToLights[(x_1015 / 4i)][(x_1017 % 4i)];
          let x_1021 : vec3<f32> = vs_TEXCOORD1;
          let x_1024 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1020 * vec4<f32>(x_1021.x, x_1021.x, x_1021.x, x_1021.x)) + x_1024);
          let x_1026 : i32 = u_xlati38;
          let x_1029 : i32 = u_xlati38;
          let x_1033 : vec4<f32> = x_807.x_AdditionalLightsWorldToLights[((x_1026 + 2i) / 4i)][((x_1029 + 2i) % 4i)];
          let x_1034 : vec3<f32> = vs_TEXCOORD1;
          let x_1037 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1033 * vec4<f32>(x_1034.z, x_1034.z, x_1034.z, x_1034.z)) + x_1037);
          let x_1039 : vec4<f32> = u_xlat9;
          let x_1040 : i32 = u_xlati38;
          let x_1043 : i32 = u_xlati38;
          let x_1047 : vec4<f32> = x_807.x_AdditionalLightsWorldToLights[((x_1040 + 3i) / 4i)][((x_1043 + 3i) % 4i)];
          u_xlat9 = (x_1039 + x_1047);
          let x_1049 : vec4<f32> = u_xlat9;
          let x_1051 : vec4<f32> = u_xlat9;
          let x_1053 : vec3<f32> = (vec3<f32>(x_1049.x, x_1049.y, x_1049.z) / vec3<f32>(x_1051.w, x_1051.w, x_1051.w));
          let x_1054 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1053.x, x_1053.y, x_1053.z, x_1054.w);
          let x_1056 : vec4<f32> = u_xlat9;
          let x_1058 : vec4<f32> = u_xlat9;
          u_xlat37 = dot(vec3<f32>(x_1056.x, x_1056.y, x_1056.z), vec3<f32>(x_1058.x, x_1058.y, x_1058.z));
          let x_1061 : f32 = u_xlat37;
          u_xlat37 = inverseSqrt(x_1061);
          let x_1063 : f32 = u_xlat37;
          let x_1065 : vec4<f32> = u_xlat9;
          let x_1067 : vec3<f32> = (vec3<f32>(x_1063, x_1063, x_1063) * vec3<f32>(x_1065.x, x_1065.y, x_1065.z));
          let x_1068 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1067.x, x_1067.y, x_1067.z, x_1068.w);
          let x_1070 : vec4<f32> = u_xlat9;
          u_xlat37 = dot(abs(vec3<f32>(x_1070.x, x_1070.y, x_1070.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1075 : f32 = u_xlat37;
          u_xlat37 = max(x_1075, 0.000001f);
          let x_1078 : f32 = u_xlat37;
          u_xlat37 = (1.0f / x_1078);
          let x_1081 : f32 = u_xlat37;
          let x_1083 : vec4<f32> = u_xlat9;
          u_xlat10 = (vec3<f32>(x_1081, x_1081, x_1081) * vec3<f32>(x_1083.z, x_1083.x, x_1083.y));
          let x_1087 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_1087);
          let x_1091 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_1091, 0.0f, 1.0f);
          let x_1095 : vec3<f32> = u_xlat10;
          let x_1098 : vec4<bool> = (vec4<f32>(x_1095.y, x_1095.z, x_1095.y, x_1095.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb27 = vec2<bool>(x_1098.x, x_1098.y);
          let x_1102 : bool = u_xlatb27.x;
          if (x_1102) {
            let x_1107 : f32 = u_xlat10.x;
            x_1103 = x_1107;
          } else {
            let x_1110 : f32 = u_xlat10.x;
            x_1103 = -(x_1110);
          }
          let x_1112 : f32 = x_1103;
          u_xlat27.x = x_1112;
          let x_1115 : bool = u_xlatb27.y;
          if (x_1115) {
            let x_1120 : f32 = u_xlat10.x;
            x_1116 = x_1120;
          } else {
            let x_1123 : f32 = u_xlat10.x;
            x_1116 = -(x_1123);
          }
          let x_1125 : f32 = x_1116;
          u_xlat27.y = x_1125;
          let x_1127 : vec4<f32> = u_xlat9;
          let x_1129 : f32 = u_xlat37;
          let x_1132 : vec2<f32> = u_xlat27;
          u_xlat27 = ((vec2<f32>(x_1127.x, x_1127.y) * vec2<f32>(x_1129, x_1129)) + x_1132);
          let x_1134 : vec2<f32> = u_xlat27;
          u_xlat27 = ((x_1134 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1137 : vec2<f32> = u_xlat27;
          u_xlat27 = clamp(x_1137, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1141 : u32 = u_xlatu35;
          let x_1144 : vec4<f32> = x_807.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1141)];
          let x_1146 : vec2<f32> = u_xlat27;
          let x_1148 : u32 = u_xlatu35;
          let x_1151 : vec4<f32> = x_807.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1148)];
          let x_1153 : vec2<f32> = ((vec2<f32>(x_1144.x, x_1144.y) * x_1146) + vec2<f32>(x_1151.z, x_1151.w));
          let x_1154 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1153.x, x_1153.y, x_1154.z, x_1154.w);
        }
      }
      let x_1161 : vec4<f32> = u_xlat8;
      let x_1164 : f32 = x_44.x_GlobalMipBias.x;
      let x_1165 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1161.x, x_1161.y), x_1164);
      u_xlat8 = x_1165;
      let x_1167 : bool = u_xlatb5.y;
      if (x_1167) {
        let x_1172 : f32 = u_xlat8.w;
        x_1168 = x_1172;
      } else {
        let x_1175 : f32 = u_xlat8.x;
        x_1168 = x_1175;
      }
      let x_1176 : f32 = x_1168;
      u_xlat37 = x_1176;
      let x_1178 : bool = u_xlatb5.x;
      if (x_1178) {
        let x_1182 : vec4<f32> = u_xlat8;
        x_1179 = vec3<f32>(x_1182.x, x_1182.y, x_1182.z);
      } else {
        let x_1185 : f32 = u_xlat37;
        x_1179 = vec3<f32>(x_1185, x_1185, x_1185);
      }
      let x_1187 : vec3<f32> = x_1179;
      let x_1188 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1187.x, x_1187.y, x_1187.z, x_1188.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_1194 : vec4<f32> = u_xlat8;
    let x_1196 : u32 = u_xlatu35;
    let x_1199 : vec4<f32> = x_705.x_AdditionalLightsColor[bitcast<i32>(x_1196)];
    let x_1201 : vec3<f32> = (vec3<f32>(x_1194.x, x_1194.y, x_1194.z) * vec3<f32>(x_1199.x, x_1199.y, x_1199.z));
    let x_1202 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1201.x, x_1201.y, x_1201.z, x_1202.w);
    let x_1204 : f32 = u_xlat36;
    let x_1206 : vec4<f32> = u_xlat8;
    let x_1208 : vec3<f32> = (vec3<f32>(x_1204, x_1204, x_1204) * vec3<f32>(x_1206.x, x_1206.y, x_1206.z));
    let x_1209 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1208.x, x_1208.y, x_1208.z, x_1209.w);
    let x_1211 : vec4<f32> = u_xlat2;
    let x_1213 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(vec3<f32>(x_1211.x, x_1211.y, x_1211.z), x_1213);
    let x_1215 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1215, 0.0f, 1.0f);
    let x_1217 : f32 = u_xlat35;
    let x_1219 : vec4<f32> = u_xlat8;
    u_xlat7 = (vec3<f32>(x_1217, x_1217, x_1217) * vec3<f32>(x_1219.x, x_1219.y, x_1219.z));
    let x_1222 : vec4<f32> = u_xlat1;
    let x_1224 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_1222.y, x_1222.z, x_1222.w) * x_1224);
    let x_1226 : vec3<f32> = u_xlat7;
    let x_1227 : vec4<f32> = u_xlat0;
    let x_1230 : vec3<f32> = u_xlat6;
    u_xlat6 = ((x_1226 * vec3<f32>(x_1227.x, x_1227.x, x_1227.x)) + x_1230);

    continuing {
      let x_1232 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1232 + bitcast<u32>(1i));
    }
  }
  let x_1234 : vec3<f32> = u_xlat3;
  let x_1235 : vec4<f32> = u_xlat1;
  let x_1238 : vec4<f32> = u_xlat4;
  let x_1240 : vec3<f32> = ((x_1234 * vec3<f32>(x_1235.y, x_1235.z, x_1235.w)) + vec3<f32>(x_1238.x, x_1238.y, x_1238.z));
  let x_1241 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1240.x, x_1240.y, x_1240.z, x_1241.w);
  let x_1243 : vec3<f32> = u_xlat6;
  let x_1244 : vec4<f32> = u_xlat1;
  let x_1246 : vec3<f32> = (x_1243 + vec3<f32>(x_1244.x, x_1244.y, x_1244.z));
  let x_1247 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1246.x, x_1246.y, x_1246.z, x_1247.w);
  let x_1250 : f32 = u_xlat11.x;
  let x_1252 : f32 = u_xlat11.x;
  u_xlat11.x = (x_1250 * -(x_1252));
  let x_1257 : f32 = u_xlat11.x;
  u_xlat11.x = exp2(x_1257);
  let x_1260 : vec4<f32> = u_xlat1;
  let x_1263 : vec4<f32> = x_44.unity_FogColor;
  let x_1266 : vec3<f32> = (vec3<f32>(x_1260.x, x_1260.y, x_1260.z) + -(vec3<f32>(x_1263.x, x_1263.y, x_1263.z)));
  let x_1267 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1266.x, x_1266.y, x_1266.z, x_1267.w);
  let x_1271 : vec3<f32> = u_xlat11;
  let x_1273 : vec4<f32> = u_xlat1;
  let x_1277 : vec4<f32> = x_44.unity_FogColor;
  let x_1279 : vec3<f32> = ((vec3<f32>(x_1271.x, x_1271.x, x_1271.x) * vec3<f32>(x_1273.x, x_1273.y, x_1273.z)) + vec3<f32>(x_1277.x, x_1277.y, x_1277.z));
  let x_1280 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1279.x, x_1279.y, x_1279.z, x_1280.w);
  let x_1283 : f32 = x_57.x_Surface;
  u_xlatb11 = (x_1283 == 1.0f);
  let x_1285 : bool = u_xlatb11;
  let x_1286 : bool = u_xlatb22;
  u_xlatb11 = (x_1285 | x_1286);
  let x_1288 : bool = u_xlatb11;
  if (x_1288) {
    let x_1293 : f32 = u_xlat0.x;
    x_1289 = x_1293;
  } else {
    x_1289 = 1.0f;
  }
  let x_1295 : f32 = x_1289;
  SV_Target0.w = x_1295;
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

