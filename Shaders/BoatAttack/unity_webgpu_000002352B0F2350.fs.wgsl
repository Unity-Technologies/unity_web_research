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

type Arr_2 = array<vec4<f32>, 256u>;

type Arr_3 = array<vec4<f32>, 256u>;

type Arr_4 = array<vec4<f32>, 256u>;

type Arr_5 = array<vec4<f32>, 256u>;

type Arr_6 = array<vec4<f32>, 256u>;

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_7 = array<strided_arr, 256u>;

struct AdditionalLights {
  x_AdditionalLightsPosition : Arr_6,
  x_AdditionalLightsColor : Arr_6,
  x_AdditionalLightsAttenuation : Arr_6,
  x_AdditionalLightsSpotDir : Arr_6,
  x_AdditionalLightsOcclusionProbes : Arr_6,
  x_AdditionalLightsLayerMasks : Arr_7,
}

var<private> gl_FragCoord : vec4<f32>;

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(4) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

@group(0) @binding(3) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_185 : UnityPerDraw;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_448 : MainLightShadows;

@group(1) @binding(1) var<uniform> x_618 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_74 : f32;
  var u_xlat8 : vec3<f32>;
  var u_xlat16 : f32;
  var u_xlat24 : f32;
  var u_xlatb16 : bool;
  var x_131 : f32;
  var u_xlatb8 : bool;
  var u_xlatb24 : bool;
  var x_190 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat26 : f32;
  var u_xlat27 : f32;
  var u_xlatb27 : bool;
  var u_xlatb4 : bool;
  var u_xlatu24 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu27 : u32;
  var u_xlati28 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati27 : i32;
  var u_xlat6 : vec3<f32>;
  var u_xlat28 : f32;
  var u_xlat29 : f32;
  var u_xlat7 : vec3<f32>;
  var x_772 : f32;
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
  u_xlat8.x = ((x_86 * x_88) + -(x_91));
  let x_97 : f32 = u_xlat1.x;
  u_xlat16 = dpdxCoarse(x_97);
  let x_101 : f32 = u_xlat1.x;
  u_xlat24 = dpdyCoarse(x_101);
  let x_103 : f32 = u_xlat24;
  let x_105 : f32 = u_xlat16;
  u_xlat16 = (abs(x_103) + abs(x_105));
  let x_108 : f32 = u_xlat16;
  u_xlat16 = max(x_108, 0.0001f);
  let x_112 : f32 = u_xlat8.x;
  let x_113 : f32 = u_xlat16;
  u_xlat8.x = (x_112 / x_113);
  let x_117 : f32 = u_xlat8.x;
  u_xlat8.x = (x_117 + 0.5f);
  let x_122 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_122, 0.0f, 1.0f);
  let x_128 : f32 = x_44.x_AlphaToMaskAvailable;
  u_xlatb16 = !((x_128 == 0.0f));
  let x_130 : bool = u_xlatb16;
  if (x_130) {
    let x_135 : f32 = u_xlat8.x;
    x_131 = x_135;
  } else {
    let x_138 : f32 = u_xlat0.x;
    x_131 = x_138;
  }
  let x_139 : f32 = x_131;
  u_xlat0.x = x_139;
  let x_142 : f32 = u_xlat0.x;
  u_xlat8.x = (x_142 + -0.0001f);
  let x_148 : f32 = u_xlat8.x;
  u_xlatb8 = (x_148 < 0.0f);
  let x_150 : bool = u_xlatb8;
  if (((select(0i, 1i, x_150) * -1i) != 0i)) {
    discard;
  }
  let x_159 : vec4<f32> = hlslcc_FragCoord;
  let x_163 : f32 = x_44.x_DitheringTextureInvSize;
  let x_165 : vec2<f32> = (vec2<f32>(x_159.x, x_159.y) * vec2<f32>(x_163, x_163));
  let x_166 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_165.x, x_166.y, x_165.y);
  let x_173 : vec3<f32> = u_xlat8;
  let x_176 : f32 = x_44.x_GlobalMipBias.x;
  let x_177 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_173.x, x_173.z), x_176);
  u_xlat8.x = x_177.w;
  let x_187 : f32 = x_185.unity_LODFade.x;
  u_xlatb24 = (x_187 >= 0.0f);
  let x_189 : bool = u_xlatb24;
  if (x_189) {
    let x_194 : f32 = u_xlat8.x;
    x_190 = abs(x_194);
  } else {
    let x_198 : f32 = u_xlat8.x;
    x_190 = -(abs(x_198));
  }
  let x_201 : f32 = x_190;
  u_xlat8.x = x_201;
  let x_204 : f32 = u_xlat8.x;
  let x_207 : f32 = x_185.unity_LODFade.x;
  u_xlat8.x = (-(x_204) + x_207);
  let x_211 : f32 = u_xlat8.x;
  u_xlatb8 = (x_211 < 0.0f);
  let x_213 : bool = u_xlatb8;
  if (((select(0i, 1i, x_213) * -1i) != 0i)) {
    discard;
  }
  let x_222 : vec3<f32> = vs_TEXCOORD2;
  let x_223 : vec3<f32> = vs_TEXCOORD2;
  u_xlat8.x = dot(x_222, x_223);
  let x_227 : f32 = u_xlat8.x;
  u_xlat8.x = inverseSqrt(x_227);
  let x_231 : vec3<f32> = u_xlat8;
  let x_233 : vec3<f32> = vs_TEXCOORD2;
  let x_234 : vec3<f32> = (vec3<f32>(x_231.x, x_231.x, x_231.x) * x_233);
  let x_235 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_234.x, x_234.y, x_234.z, x_235.w);
  let x_240 : f32 = vs_TEXCOORD1.y;
  let x_243 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat8.x = (x_240 * x_243);
  let x_247 : f32 = x_44.unity_MatrixV[0i].z;
  let x_249 : f32 = vs_TEXCOORD1.x;
  let x_252 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_247 * x_249) + x_252);
  let x_256 : f32 = x_44.unity_MatrixV[2i].z;
  let x_258 : f32 = vs_TEXCOORD1.z;
  let x_261 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_256 * x_258) + x_261);
  let x_265 : f32 = u_xlat8.x;
  let x_268 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat8.x = (x_265 + x_268);
  let x_272 : f32 = u_xlat8.x;
  let x_276 : f32 = x_44.x_ProjectionParams.y;
  u_xlat8.x = (-(x_272) + -(x_276));
  let x_281 : f32 = u_xlat8.x;
  u_xlat8.x = max(x_281, 0.0f);
  let x_285 : f32 = u_xlat8.x;
  let x_288 : f32 = x_44.unity_FogParams.x;
  u_xlat8.x = (x_285 * x_288);
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
  u_xlat24 = (x_337 * x_339);
  let x_342 : f32 = u_xlat2.x;
  let x_344 : f32 = u_xlat2.x;
  let x_346 : f32 = u_xlat24;
  u_xlat24 = ((x_342 * x_344) + -(x_346));
  let x_351 : vec4<f32> = x_185.unity_SHC;
  let x_353 : f32 = u_xlat24;
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
  u_xlat24 = ((x_385 * x_388) + x_391);
  let x_393 : f32 = u_xlat24;
  u_xlat4.z = (-(x_393) + 1.0f);
  let x_402 : vec4<f32> = u_xlat4;
  let x_405 : f32 = x_44.x_GlobalMipBias.x;
  let x_406 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_402.x, x_402.z), x_405);
  u_xlat24 = x_406.x;
  let x_408 : f32 = u_xlat24;
  u_xlat1.x = (x_408 + -1.0f);
  let x_414 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_416 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_414 * x_416) + 1.0f);
  let x_420 : f32 = u_xlat24;
  u_xlat24 = min(x_420, 1.0f);
  let x_424 : vec4<f32> = vs_TEXCOORD6;
  let x_425 : vec2<f32> = vec2<f32>(x_424.x, x_424.y);
  let x_427 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_425.x, x_425.y, x_427);
  let x_440 : vec3<f32> = txVec0;
  let x_442 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_440.xy, x_440.z);
  u_xlat26 = x_442;
  let x_450 : f32 = x_448.x_MainLightShadowParams.x;
  u_xlat27 = (-(x_450) + 1.0f);
  let x_453 : f32 = u_xlat26;
  let x_455 : f32 = x_448.x_MainLightShadowParams.x;
  let x_457 : f32 = u_xlat27;
  u_xlat26 = ((x_453 * x_455) + x_457);
  let x_461 : f32 = vs_TEXCOORD6.z;
  u_xlatb27 = (0.0f >= x_461);
  let x_465 : f32 = vs_TEXCOORD6.z;
  u_xlatb4 = (x_465 >= 1.0f);
  let x_467 : bool = u_xlatb27;
  let x_468 : bool = u_xlatb4;
  u_xlatb27 = (x_467 | x_468);
  let x_470 : bool = u_xlatb27;
  let x_471 : f32 = u_xlat26;
  u_xlat26 = select(x_471, 1.0f, x_470);
  let x_473 : vec3<f32> = vs_TEXCOORD1;
  let x_477 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_479 : vec3<f32> = (x_473 + -(x_477));
  let x_480 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_479.x, x_479.y, x_479.z, x_480.w);
  let x_482 : vec4<f32> = u_xlat4;
  let x_484 : vec4<f32> = u_xlat4;
  u_xlat27 = dot(vec3<f32>(x_482.x, x_482.y, x_482.z), vec3<f32>(x_484.x, x_484.y, x_484.z));
  let x_487 : f32 = u_xlat27;
  let x_489 : f32 = x_448.x_MainLightShadowParams.z;
  let x_492 : f32 = x_448.x_MainLightShadowParams.w;
  u_xlat27 = ((x_487 * x_489) + x_492);
  let x_494 : f32 = u_xlat27;
  u_xlat27 = clamp(x_494, 0.0f, 1.0f);
  let x_496 : f32 = u_xlat26;
  u_xlat4.x = (-(x_496) + 1.0f);
  let x_500 : f32 = u_xlat27;
  let x_502 : f32 = u_xlat4.x;
  let x_504 : f32 = u_xlat26;
  u_xlat26 = ((x_500 * x_502) + x_504);
  let x_506 : vec4<f32> = u_xlat1;
  let x_509 : vec4<f32> = x_44.x_MainLightColor;
  let x_511 : vec3<f32> = (vec3<f32>(x_506.x, x_506.x, x_506.x) * vec3<f32>(x_509.x, x_509.y, x_509.z));
  let x_512 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_511.x, x_511.y, x_511.z, x_512.w);
  let x_514 : f32 = u_xlat24;
  let x_516 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_514, x_514, x_514) * x_516);
  let x_518 : f32 = u_xlat26;
  let x_520 : f32 = x_185.unity_LightData.z;
  u_xlat24 = (x_518 * x_520);
  let x_522 : f32 = u_xlat24;
  let x_524 : vec4<f32> = u_xlat4;
  let x_526 : vec3<f32> = (vec3<f32>(x_522, x_522, x_522) * vec3<f32>(x_524.x, x_524.y, x_524.z));
  let x_527 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_526.x, x_526.y, x_526.z, x_527.w);
  let x_529 : vec4<f32> = u_xlat2;
  let x_532 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat24 = dot(vec3<f32>(x_529.x, x_529.y, x_529.z), vec3<f32>(x_532.x, x_532.y, x_532.z));
  let x_535 : f32 = u_xlat24;
  u_xlat24 = clamp(x_535, 0.0f, 1.0f);
  let x_537 : f32 = u_xlat24;
  let x_539 : vec4<f32> = u_xlat4;
  let x_541 : vec3<f32> = (vec3<f32>(x_537, x_537, x_537) * vec3<f32>(x_539.x, x_539.y, x_539.z));
  let x_542 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_541.x, x_541.y, x_541.z, x_542.w);
  let x_544 : vec4<f32> = u_xlat1;
  let x_546 : vec4<f32> = u_xlat4;
  let x_548 : vec3<f32> = (vec3<f32>(x_544.y, x_544.z, x_544.w) * vec3<f32>(x_546.x, x_546.y, x_546.z));
  let x_549 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_548.x, x_548.y, x_548.z, x_549.w);
  let x_553 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_555 : f32 = x_185.unity_LightData.y;
  u_xlat24 = min(x_553, x_555);
  let x_559 : f32 = u_xlat24;
  u_xlatu24 = bitcast<u32>(i32(x_559));
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_571 : u32 = u_xlatu_loop_1;
    let x_572 : u32 = u_xlatu24;
    if ((x_571 < x_572)) {
    } else {
      break;
    }
    let x_575 : u32 = u_xlatu_loop_1;
    u_xlatu27 = (x_575 >> 2u);
    let x_579 : u32 = u_xlatu_loop_1;
    u_xlati28 = bitcast<i32>((x_579 & 3u));
    let x_582 : u32 = u_xlatu27;
    let x_585 : vec4<f32> = x_185.unity_LightIndices[bitcast<i32>(x_582)];
    let x_595 : i32 = u_xlati28;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_600 : vec4<u32> = indexable[x_595];
    u_xlat27 = dot(x_585, bitcast<vec4<f32>>(x_600));
    let x_604 : f32 = u_xlat27;
    u_xlati27 = i32(x_604);
    let x_607 : vec3<f32> = vs_TEXCOORD1;
    let x_619 : i32 = u_xlati27;
    let x_621 : vec4<f32> = x_618.x_AdditionalLightsPosition[x_619];
    let x_624 : i32 = u_xlati27;
    let x_626 : vec4<f32> = x_618.x_AdditionalLightsPosition[x_624];
    u_xlat6 = ((-(x_607) * vec3<f32>(x_621.w, x_621.w, x_621.w)) + vec3<f32>(x_626.x, x_626.y, x_626.z));
    let x_630 : vec3<f32> = u_xlat6;
    let x_631 : vec3<f32> = u_xlat6;
    u_xlat28 = dot(x_630, x_631);
    let x_633 : f32 = u_xlat28;
    u_xlat28 = max(x_633, 6.10351562e-05f);
    let x_637 : f32 = u_xlat28;
    u_xlat29 = inverseSqrt(x_637);
    let x_639 : f32 = u_xlat29;
    let x_641 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_639, x_639, x_639) * x_641);
    let x_643 : f32 = u_xlat28;
    u_xlat29 = (1.0f / x_643);
    let x_645 : f32 = u_xlat28;
    let x_646 : i32 = u_xlati27;
    let x_648 : f32 = x_618.x_AdditionalLightsAttenuation[x_646].x;
    u_xlat28 = (x_645 * x_648);
    let x_650 : f32 = u_xlat28;
    let x_652 : f32 = u_xlat28;
    u_xlat28 = ((-(x_650) * x_652) + 1.0f);
    let x_655 : f32 = u_xlat28;
    u_xlat28 = max(x_655, 0.0f);
    let x_657 : f32 = u_xlat28;
    let x_658 : f32 = u_xlat28;
    u_xlat28 = (x_657 * x_658);
    let x_660 : f32 = u_xlat28;
    let x_661 : f32 = u_xlat29;
    u_xlat28 = (x_660 * x_661);
    let x_663 : i32 = u_xlati27;
    let x_665 : vec4<f32> = x_618.x_AdditionalLightsSpotDir[x_663];
    let x_667 : vec3<f32> = u_xlat6;
    u_xlat29 = dot(vec3<f32>(x_665.x, x_665.y, x_665.z), x_667);
    let x_669 : f32 = u_xlat29;
    let x_670 : i32 = u_xlati27;
    let x_672 : f32 = x_618.x_AdditionalLightsAttenuation[x_670].z;
    let x_674 : i32 = u_xlati27;
    let x_676 : f32 = x_618.x_AdditionalLightsAttenuation[x_674].w;
    u_xlat29 = ((x_669 * x_672) + x_676);
    let x_678 : f32 = u_xlat29;
    u_xlat29 = clamp(x_678, 0.0f, 1.0f);
    let x_680 : f32 = u_xlat29;
    let x_681 : f32 = u_xlat29;
    u_xlat29 = (x_680 * x_681);
    let x_683 : f32 = u_xlat28;
    let x_684 : f32 = u_xlat29;
    u_xlat28 = (x_683 * x_684);
    let x_687 : vec4<f32> = u_xlat1;
    let x_689 : i32 = u_xlati27;
    let x_691 : vec4<f32> = x_618.x_AdditionalLightsColor[x_689];
    u_xlat7 = (vec3<f32>(x_687.x, x_687.x, x_687.x) * vec3<f32>(x_691.x, x_691.y, x_691.z));
    let x_694 : f32 = u_xlat28;
    let x_696 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_694, x_694, x_694) * x_696);
    let x_698 : vec4<f32> = u_xlat2;
    let x_700 : vec3<f32> = u_xlat6;
    u_xlat27 = dot(vec3<f32>(x_698.x, x_698.y, x_698.z), x_700);
    let x_702 : f32 = u_xlat27;
    u_xlat27 = clamp(x_702, 0.0f, 1.0f);
    let x_704 : f32 = u_xlat27;
    let x_706 : vec3<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_704, x_704, x_704) * x_706);
    let x_708 : vec3<f32> = u_xlat6;
    let x_709 : vec4<f32> = u_xlat1;
    let x_712 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_708 * vec3<f32>(x_709.y, x_709.z, x_709.w)) + x_712);

    continuing {
      let x_714 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_714 + bitcast<u32>(1i));
    }
  }
  let x_716 : vec3<f32> = u_xlat3;
  let x_717 : vec4<f32> = u_xlat1;
  let x_720 : vec4<f32> = u_xlat4;
  let x_722 : vec3<f32> = ((x_716 * vec3<f32>(x_717.y, x_717.z, x_717.w)) + vec3<f32>(x_720.x, x_720.y, x_720.z));
  let x_723 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_722.x, x_722.y, x_722.z, x_723.w);
  let x_725 : vec3<f32> = u_xlat5;
  let x_726 : vec4<f32> = u_xlat1;
  let x_728 : vec3<f32> = (x_725 + vec3<f32>(x_726.x, x_726.y, x_726.z));
  let x_729 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_728.x, x_728.y, x_728.z, x_729.w);
  let x_732 : f32 = u_xlat8.x;
  let x_734 : f32 = u_xlat8.x;
  u_xlat8.x = (x_732 * -(x_734));
  let x_739 : f32 = u_xlat8.x;
  u_xlat8.x = exp2(x_739);
  let x_742 : vec4<f32> = u_xlat1;
  let x_746 : vec4<f32> = x_44.unity_FogColor;
  let x_749 : vec3<f32> = (vec3<f32>(x_742.x, x_742.y, x_742.z) + -(vec3<f32>(x_746.x, x_746.y, x_746.z)));
  let x_750 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_749.x, x_749.y, x_749.z, x_750.w);
  let x_754 : vec3<f32> = u_xlat8;
  let x_756 : vec4<f32> = u_xlat1;
  let x_760 : vec4<f32> = x_44.unity_FogColor;
  let x_762 : vec3<f32> = ((vec3<f32>(x_754.x, x_754.x, x_754.x) * vec3<f32>(x_756.x, x_756.y, x_756.z)) + vec3<f32>(x_760.x, x_760.y, x_760.z));
  let x_763 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_762.x, x_762.y, x_762.z, x_763.w);
  let x_766 : f32 = x_57.x_Surface;
  u_xlatb8 = (x_766 == 1.0f);
  let x_768 : bool = u_xlatb8;
  let x_769 : bool = u_xlatb16;
  u_xlatb8 = (x_768 | x_769);
  let x_771 : bool = u_xlatb8;
  if (x_771) {
    let x_776 : f32 = u_xlat0.x;
    x_772 = x_776;
  } else {
    x_772 = 1.0f;
  }
  let x_778 : f32 = x_772;
  SV_Target0.w = x_778;
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

