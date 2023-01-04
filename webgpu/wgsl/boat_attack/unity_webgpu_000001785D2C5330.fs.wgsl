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

@group(0) @binding(3) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_210 : UnityPerDraw;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(4) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(5) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_366 : MainLightShadows;

@group(1) @binding(1) var<uniform> x_536 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_74 : f32;
  var u_xlat8 : f32;
  var u_xlat16 : f32;
  var u_xlat24 : f32;
  var u_xlatb16 : bool;
  var x_123 : f32;
  var u_xlatb8 : bool;
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
  var x_685 : f32;
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
  let x_85 : f32 = u_xlat0.w;
  let x_87 : f32 = x_57.x_BaseColor.w;
  let x_90 : f32 = x_57.x_Cutoff;
  u_xlat8 = ((x_85 * x_87) + -(x_90));
  let x_95 : f32 = u_xlat1.x;
  u_xlat16 = dpdxCoarse(x_95);
  let x_99 : f32 = u_xlat1.x;
  u_xlat24 = dpdyCoarse(x_99);
  let x_101 : f32 = u_xlat24;
  let x_103 : f32 = u_xlat16;
  u_xlat16 = (abs(x_101) + abs(x_103));
  let x_106 : f32 = u_xlat16;
  u_xlat16 = max(x_106, 0.0001f);
  let x_109 : f32 = u_xlat8;
  let x_110 : f32 = u_xlat16;
  u_xlat8 = (x_109 / x_110);
  let x_112 : f32 = u_xlat8;
  u_xlat8 = (x_112 + 0.5f);
  let x_115 : f32 = u_xlat8;
  u_xlat8 = clamp(x_115, 0.0f, 1.0f);
  let x_120 : f32 = x_44.x_AlphaToMaskAvailable;
  u_xlatb16 = !((x_120 == 0.0f));
  let x_122 : bool = u_xlatb16;
  if (x_122) {
    let x_126 : f32 = u_xlat8;
    x_123 = x_126;
  } else {
    let x_129 : f32 = u_xlat0.x;
    x_123 = x_129;
  }
  let x_130 : f32 = x_123;
  u_xlat0.x = x_130;
  let x_133 : f32 = u_xlat0.x;
  u_xlat8 = (x_133 + -0.0001f);
  let x_137 : f32 = u_xlat8;
  u_xlatb8 = (x_137 < 0.0f);
  let x_139 : bool = u_xlatb8;
  if (((select(0i, 1i, x_139) * -1i) != 0i)) {
    discard;
  }
  let x_150 : vec3<f32> = vs_TEXCOORD2;
  let x_151 : vec3<f32> = vs_TEXCOORD2;
  u_xlat8 = dot(x_150, x_151);
  let x_153 : f32 = u_xlat8;
  u_xlat8 = inverseSqrt(x_153);
  let x_156 : f32 = u_xlat8;
  let x_158 : vec3<f32> = vs_TEXCOORD2;
  let x_159 : vec3<f32> = (vec3<f32>(x_156, x_156, x_156) * x_158);
  let x_160 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_159.x, x_159.y, x_159.z, x_160.w);
  let x_165 : f32 = vs_TEXCOORD1.y;
  let x_169 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat8 = (x_165 * x_169);
  let x_172 : f32 = x_44.unity_MatrixV[0i].z;
  let x_174 : f32 = vs_TEXCOORD1.x;
  let x_176 : f32 = u_xlat8;
  u_xlat8 = ((x_172 * x_174) + x_176);
  let x_179 : f32 = x_44.unity_MatrixV[2i].z;
  let x_181 : f32 = vs_TEXCOORD1.z;
  let x_183 : f32 = u_xlat8;
  u_xlat8 = ((x_179 * x_181) + x_183);
  let x_185 : f32 = u_xlat8;
  let x_188 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat8 = (x_185 + x_188);
  let x_190 : f32 = u_xlat8;
  let x_194 : f32 = x_44.x_ProjectionParams.y;
  u_xlat8 = (-(x_190) + -(x_194));
  let x_197 : f32 = u_xlat8;
  u_xlat8 = max(x_197, 0.0f);
  let x_199 : f32 = u_xlat8;
  let x_202 : f32 = x_44.unity_FogParams.x;
  u_xlat8 = (x_199 * x_202);
  u_xlat2.w = 1.0f;
  let x_213 : vec4<f32> = x_210.unity_SHAr;
  let x_214 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_213, x_214);
  let x_219 : vec4<f32> = x_210.unity_SHAg;
  let x_220 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_219, x_220);
  let x_225 : vec4<f32> = x_210.unity_SHAb;
  let x_226 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_225, x_226);
  let x_230 : vec4<f32> = u_xlat2;
  let x_232 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_230.y, x_230.z, x_230.z, x_230.x) * vec4<f32>(x_232.x, x_232.y, x_232.z, x_232.z));
  let x_238 : vec4<f32> = x_210.unity_SHBr;
  let x_239 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_238, x_239);
  let x_244 : vec4<f32> = x_210.unity_SHBg;
  let x_245 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_244, x_245);
  let x_250 : vec4<f32> = x_210.unity_SHBb;
  let x_251 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_250, x_251);
  let x_255 : f32 = u_xlat2.y;
  let x_257 : f32 = u_xlat2.y;
  u_xlat24 = (x_255 * x_257);
  let x_260 : f32 = u_xlat2.x;
  let x_262 : f32 = u_xlat2.x;
  let x_264 : f32 = u_xlat24;
  u_xlat24 = ((x_260 * x_262) + -(x_264));
  let x_269 : vec4<f32> = x_210.unity_SHC;
  let x_271 : f32 = u_xlat24;
  let x_274 : vec3<f32> = u_xlat5;
  let x_275 : vec3<f32> = ((vec3<f32>(x_269.x, x_269.y, x_269.z) * vec3<f32>(x_271, x_271, x_271)) + x_274);
  let x_276 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_275.x, x_275.y, x_275.z, x_276.w);
  let x_278 : vec3<f32> = u_xlat3;
  let x_279 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_278 + vec3<f32>(x_279.x, x_279.y, x_279.z));
  let x_282 : vec3<f32> = u_xlat3;
  u_xlat3 = max(x_282, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_287 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_288 : vec2<f32> = vec2<f32>(x_287.x, x_287.y);
  let x_292 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_288.x, x_288.y));
  let x_293 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_292.x, x_292.y, x_293.z, x_293.w);
  let x_295 : vec4<f32> = u_xlat4;
  let x_297 : vec4<f32> = hlslcc_FragCoord;
  let x_299 : vec2<f32> = (vec2<f32>(x_295.x, x_295.y) * vec2<f32>(x_297.x, x_297.y));
  let x_300 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_299.x, x_299.y, x_300.z, x_300.w);
  let x_303 : f32 = u_xlat4.y;
  let x_306 : f32 = x_44.x_ScaleBiasRt.x;
  let x_309 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat24 = ((x_303 * x_306) + x_309);
  let x_311 : f32 = u_xlat24;
  u_xlat4.z = (-(x_311) + 1.0f);
  let x_320 : vec4<f32> = u_xlat4;
  let x_323 : f32 = x_44.x_GlobalMipBias.x;
  let x_324 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_320.x, x_320.z), x_323);
  u_xlat24 = x_324.x;
  let x_326 : f32 = u_xlat24;
  u_xlat1.x = (x_326 + -1.0f);
  let x_332 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_334 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_332 * x_334) + 1.0f);
  let x_338 : f32 = u_xlat24;
  u_xlat24 = min(x_338, 1.0f);
  let x_342 : vec4<f32> = vs_TEXCOORD6;
  let x_343 : vec2<f32> = vec2<f32>(x_342.x, x_342.y);
  let x_345 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_343.x, x_343.y, x_345);
  let x_358 : vec3<f32> = txVec0;
  let x_360 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_358.xy, x_358.z);
  u_xlat26 = x_360;
  let x_368 : f32 = x_366.x_MainLightShadowParams.x;
  u_xlat27 = (-(x_368) + 1.0f);
  let x_371 : f32 = u_xlat26;
  let x_373 : f32 = x_366.x_MainLightShadowParams.x;
  let x_375 : f32 = u_xlat27;
  u_xlat26 = ((x_371 * x_373) + x_375);
  let x_379 : f32 = vs_TEXCOORD6.z;
  u_xlatb27 = (0.0f >= x_379);
  let x_383 : f32 = vs_TEXCOORD6.z;
  u_xlatb4 = (x_383 >= 1.0f);
  let x_385 : bool = u_xlatb27;
  let x_386 : bool = u_xlatb4;
  u_xlatb27 = (x_385 | x_386);
  let x_388 : bool = u_xlatb27;
  let x_389 : f32 = u_xlat26;
  u_xlat26 = select(x_389, 1.0f, x_388);
  let x_391 : vec3<f32> = vs_TEXCOORD1;
  let x_395 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_397 : vec3<f32> = (x_391 + -(x_395));
  let x_398 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_397.x, x_397.y, x_397.z, x_398.w);
  let x_400 : vec4<f32> = u_xlat4;
  let x_402 : vec4<f32> = u_xlat4;
  u_xlat27 = dot(vec3<f32>(x_400.x, x_400.y, x_400.z), vec3<f32>(x_402.x, x_402.y, x_402.z));
  let x_405 : f32 = u_xlat27;
  let x_407 : f32 = x_366.x_MainLightShadowParams.z;
  let x_410 : f32 = x_366.x_MainLightShadowParams.w;
  u_xlat27 = ((x_405 * x_407) + x_410);
  let x_412 : f32 = u_xlat27;
  u_xlat27 = clamp(x_412, 0.0f, 1.0f);
  let x_414 : f32 = u_xlat26;
  u_xlat4.x = (-(x_414) + 1.0f);
  let x_418 : f32 = u_xlat27;
  let x_420 : f32 = u_xlat4.x;
  let x_422 : f32 = u_xlat26;
  u_xlat26 = ((x_418 * x_420) + x_422);
  let x_424 : vec4<f32> = u_xlat1;
  let x_427 : vec4<f32> = x_44.x_MainLightColor;
  let x_429 : vec3<f32> = (vec3<f32>(x_424.x, x_424.x, x_424.x) * vec3<f32>(x_427.x, x_427.y, x_427.z));
  let x_430 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_429.x, x_429.y, x_429.z, x_430.w);
  let x_432 : f32 = u_xlat24;
  let x_434 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_432, x_432, x_432) * x_434);
  let x_436 : f32 = u_xlat26;
  let x_438 : f32 = x_210.unity_LightData.z;
  u_xlat24 = (x_436 * x_438);
  let x_440 : f32 = u_xlat24;
  let x_442 : vec4<f32> = u_xlat4;
  let x_444 : vec3<f32> = (vec3<f32>(x_440, x_440, x_440) * vec3<f32>(x_442.x, x_442.y, x_442.z));
  let x_445 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_444.x, x_444.y, x_444.z, x_445.w);
  let x_447 : vec4<f32> = u_xlat2;
  let x_450 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat24 = dot(vec3<f32>(x_447.x, x_447.y, x_447.z), vec3<f32>(x_450.x, x_450.y, x_450.z));
  let x_453 : f32 = u_xlat24;
  u_xlat24 = clamp(x_453, 0.0f, 1.0f);
  let x_455 : f32 = u_xlat24;
  let x_457 : vec4<f32> = u_xlat4;
  let x_459 : vec3<f32> = (vec3<f32>(x_455, x_455, x_455) * vec3<f32>(x_457.x, x_457.y, x_457.z));
  let x_460 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_459.x, x_459.y, x_459.z, x_460.w);
  let x_462 : vec4<f32> = u_xlat1;
  let x_464 : vec4<f32> = u_xlat4;
  let x_466 : vec3<f32> = (vec3<f32>(x_462.y, x_462.z, x_462.w) * vec3<f32>(x_464.x, x_464.y, x_464.z));
  let x_467 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_466.x, x_466.y, x_466.z, x_467.w);
  let x_471 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_473 : f32 = x_210.unity_LightData.y;
  u_xlat24 = min(x_471, x_473);
  let x_477 : f32 = u_xlat24;
  u_xlatu24 = bitcast<u32>(i32(x_477));
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_489 : u32 = u_xlatu_loop_1;
    let x_490 : u32 = u_xlatu24;
    if ((x_489 < x_490)) {
    } else {
      break;
    }
    let x_493 : u32 = u_xlatu_loop_1;
    u_xlatu27 = (x_493 >> 2u);
    let x_497 : u32 = u_xlatu_loop_1;
    u_xlati28 = bitcast<i32>((x_497 & 3u));
    let x_500 : u32 = u_xlatu27;
    let x_503 : vec4<f32> = x_210.unity_LightIndices[bitcast<i32>(x_500)];
    let x_513 : i32 = u_xlati28;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_518 : vec4<u32> = indexable[x_513];
    u_xlat27 = dot(x_503, bitcast<vec4<f32>>(x_518));
    let x_522 : f32 = u_xlat27;
    u_xlati27 = i32(x_522);
    let x_525 : vec3<f32> = vs_TEXCOORD1;
    let x_537 : i32 = u_xlati27;
    let x_539 : vec4<f32> = x_536.x_AdditionalLightsPosition[x_537];
    let x_542 : i32 = u_xlati27;
    let x_544 : vec4<f32> = x_536.x_AdditionalLightsPosition[x_542];
    u_xlat6 = ((-(x_525) * vec3<f32>(x_539.w, x_539.w, x_539.w)) + vec3<f32>(x_544.x, x_544.y, x_544.z));
    let x_548 : vec3<f32> = u_xlat6;
    let x_549 : vec3<f32> = u_xlat6;
    u_xlat28 = dot(x_548, x_549);
    let x_551 : f32 = u_xlat28;
    u_xlat28 = max(x_551, 6.10351562e-05f);
    let x_555 : f32 = u_xlat28;
    u_xlat29 = inverseSqrt(x_555);
    let x_557 : f32 = u_xlat29;
    let x_559 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_557, x_557, x_557) * x_559);
    let x_561 : f32 = u_xlat28;
    u_xlat29 = (1.0f / x_561);
    let x_563 : f32 = u_xlat28;
    let x_564 : i32 = u_xlati27;
    let x_566 : f32 = x_536.x_AdditionalLightsAttenuation[x_564].x;
    u_xlat28 = (x_563 * x_566);
    let x_568 : f32 = u_xlat28;
    let x_570 : f32 = u_xlat28;
    u_xlat28 = ((-(x_568) * x_570) + 1.0f);
    let x_573 : f32 = u_xlat28;
    u_xlat28 = max(x_573, 0.0f);
    let x_575 : f32 = u_xlat28;
    let x_576 : f32 = u_xlat28;
    u_xlat28 = (x_575 * x_576);
    let x_578 : f32 = u_xlat28;
    let x_579 : f32 = u_xlat29;
    u_xlat28 = (x_578 * x_579);
    let x_581 : i32 = u_xlati27;
    let x_583 : vec4<f32> = x_536.x_AdditionalLightsSpotDir[x_581];
    let x_585 : vec3<f32> = u_xlat6;
    u_xlat29 = dot(vec3<f32>(x_583.x, x_583.y, x_583.z), x_585);
    let x_587 : f32 = u_xlat29;
    let x_588 : i32 = u_xlati27;
    let x_590 : f32 = x_536.x_AdditionalLightsAttenuation[x_588].z;
    let x_592 : i32 = u_xlati27;
    let x_594 : f32 = x_536.x_AdditionalLightsAttenuation[x_592].w;
    u_xlat29 = ((x_587 * x_590) + x_594);
    let x_596 : f32 = u_xlat29;
    u_xlat29 = clamp(x_596, 0.0f, 1.0f);
    let x_598 : f32 = u_xlat29;
    let x_599 : f32 = u_xlat29;
    u_xlat29 = (x_598 * x_599);
    let x_601 : f32 = u_xlat28;
    let x_602 : f32 = u_xlat29;
    u_xlat28 = (x_601 * x_602);
    let x_605 : vec4<f32> = u_xlat1;
    let x_607 : i32 = u_xlati27;
    let x_609 : vec4<f32> = x_536.x_AdditionalLightsColor[x_607];
    u_xlat7 = (vec3<f32>(x_605.x, x_605.x, x_605.x) * vec3<f32>(x_609.x, x_609.y, x_609.z));
    let x_612 : f32 = u_xlat28;
    let x_614 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_612, x_612, x_612) * x_614);
    let x_616 : vec4<f32> = u_xlat2;
    let x_618 : vec3<f32> = u_xlat6;
    u_xlat27 = dot(vec3<f32>(x_616.x, x_616.y, x_616.z), x_618);
    let x_620 : f32 = u_xlat27;
    u_xlat27 = clamp(x_620, 0.0f, 1.0f);
    let x_622 : f32 = u_xlat27;
    let x_624 : vec3<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_622, x_622, x_622) * x_624);
    let x_626 : vec3<f32> = u_xlat6;
    let x_627 : vec4<f32> = u_xlat1;
    let x_630 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_626 * vec3<f32>(x_627.y, x_627.z, x_627.w)) + x_630);

    continuing {
      let x_632 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_632 + bitcast<u32>(1i));
    }
  }
  let x_634 : vec3<f32> = u_xlat3;
  let x_635 : vec4<f32> = u_xlat1;
  let x_638 : vec4<f32> = u_xlat4;
  let x_640 : vec3<f32> = ((x_634 * vec3<f32>(x_635.y, x_635.z, x_635.w)) + vec3<f32>(x_638.x, x_638.y, x_638.z));
  let x_641 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_640.x, x_640.y, x_640.z, x_641.w);
  let x_643 : vec3<f32> = u_xlat5;
  let x_644 : vec4<f32> = u_xlat1;
  let x_646 : vec3<f32> = (x_643 + vec3<f32>(x_644.x, x_644.y, x_644.z));
  let x_647 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_646.x, x_646.y, x_646.z, x_647.w);
  let x_649 : f32 = u_xlat8;
  let x_650 : f32 = u_xlat8;
  u_xlat8 = (x_649 * -(x_650));
  let x_653 : f32 = u_xlat8;
  u_xlat8 = exp2(x_653);
  let x_655 : vec4<f32> = u_xlat1;
  let x_659 : vec4<f32> = x_44.unity_FogColor;
  let x_662 : vec3<f32> = (vec3<f32>(x_655.x, x_655.y, x_655.z) + -(vec3<f32>(x_659.x, x_659.y, x_659.z)));
  let x_663 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_662.x, x_662.y, x_662.z, x_663.w);
  let x_667 : f32 = u_xlat8;
  let x_669 : vec4<f32> = u_xlat1;
  let x_673 : vec4<f32> = x_44.unity_FogColor;
  let x_675 : vec3<f32> = ((vec3<f32>(x_667, x_667, x_667) * vec3<f32>(x_669.x, x_669.y, x_669.z)) + vec3<f32>(x_673.x, x_673.y, x_673.z));
  let x_676 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_675.x, x_675.y, x_675.z, x_676.w);
  let x_679 : f32 = x_57.x_Surface;
  u_xlatb8 = (x_679 == 1.0f);
  let x_681 : bool = u_xlatb8;
  let x_682 : bool = u_xlatb16;
  u_xlatb8 = (x_681 | x_682);
  let x_684 : bool = u_xlatb8;
  if (x_684) {
    let x_689 : f32 = u_xlat0.x;
    x_685 = x_689;
  } else {
    x_685 = 1.0f;
  }
  let x_691 : f32 = x_685;
  SV_Target0.w = x_691;
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

