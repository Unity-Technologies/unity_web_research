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

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(7) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

@group(0) @binding(2) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_BumpMap : sampler;

@group(0) @binding(5) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_236 : UnityPerDraw;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(6) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_468 : MainLightShadows;

@group(1) @binding(1) var<uniform> x_681 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_74 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlat20 : f32;
  var u_xlat30 : f32;
  var u_xlatb20 : bool;
  var x_131 : f32;
  var u_xlatb10 : bool;
  var u_xlat2 : vec3<f32>;
  var u_xlatb12 : bool;
  var x_241 : f32;
  var u_xlatb2 : bool;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat32 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat33 : f32;
  var u_xlat34 : f32;
  var u_xlatb34 : bool;
  var u_xlatb5 : bool;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlatu33 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu35 : u32;
  var u_xlati36 : i32;
  var u_xlat35 : f32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati35 : i32;
  var u_xlat36 : f32;
  var u_xlat37 : f32;
  var u_xlat8 : vec3<f32>;
  var u_xlat9 : vec3<f32>;
  var x_874 : f32;
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
  u_xlat10.x = ((x_86 * x_88) + -(x_91));
  let x_97 : f32 = u_xlat1.x;
  u_xlat20 = dpdxCoarse(x_97);
  let x_101 : f32 = u_xlat1.x;
  u_xlat30 = dpdyCoarse(x_101);
  let x_103 : f32 = u_xlat30;
  let x_105 : f32 = u_xlat20;
  u_xlat20 = (abs(x_103) + abs(x_105));
  let x_108 : f32 = u_xlat20;
  u_xlat20 = max(x_108, 0.0001f);
  let x_112 : f32 = u_xlat10.x;
  let x_113 : f32 = u_xlat20;
  u_xlat10.x = (x_112 / x_113);
  let x_117 : f32 = u_xlat10.x;
  u_xlat10.x = (x_117 + 0.5f);
  let x_122 : f32 = u_xlat10.x;
  u_xlat10.x = clamp(x_122, 0.0f, 1.0f);
  let x_128 : f32 = x_44.x_AlphaToMaskAvailable;
  u_xlatb20 = !((x_128 == 0.0f));
  let x_130 : bool = u_xlatb20;
  if (x_130) {
    let x_135 : f32 = u_xlat10.x;
    x_131 = x_135;
  } else {
    let x_138 : f32 = u_xlat0.x;
    x_131 = x_138;
  }
  let x_139 : f32 = x_131;
  u_xlat0.x = x_139;
  let x_142 : f32 = u_xlat0.x;
  u_xlat10.x = (x_142 + -0.0001f);
  let x_148 : f32 = u_xlat10.x;
  u_xlatb10 = (x_148 < 0.0f);
  let x_150 : bool = u_xlatb10;
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
  let x_185 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_184.x, x_185.y, x_184.y);
  let x_187 : vec3<f32> = u_xlat10;
  let x_189 : vec3<f32> = u_xlat10;
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
  u_xlatb12 = (x_238 >= 0.0f);
  let x_240 : bool = u_xlatb12;
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
  let x_272 : vec3<f32> = u_xlat10;
  let x_275 : vec4<f32> = vs_TEXCOORD4;
  u_xlat2 = (vec3<f32>(x_272.z, x_272.z, x_272.z) * vec3<f32>(x_275.x, x_275.y, x_275.z));
  let x_278 : vec3<f32> = u_xlat10;
  let x_281 : vec4<f32> = vs_TEXCOORD3;
  let x_284 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_278.x, x_278.x, x_278.x) * vec3<f32>(x_281.x, x_281.y, x_281.z)) + x_284);
  let x_286 : vec4<f32> = u_xlat1;
  let x_289 : vec4<f32> = vs_TEXCOORD2;
  let x_292 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_286.x, x_286.x, x_286.x) * vec3<f32>(x_289.x, x_289.y, x_289.z)) + x_292);
  let x_294 : vec3<f32> = u_xlat2;
  let x_295 : vec3<f32> = u_xlat2;
  u_xlat10.x = dot(x_294, x_295);
  let x_299 : f32 = u_xlat10.x;
  u_xlat10.x = inverseSqrt(x_299);
  let x_302 : vec3<f32> = u_xlat10;
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
  u_xlat10.x = dot(x_317, x_318);
  let x_322 : f32 = u_xlat10.x;
  u_xlat10.x = max(x_322, 1.17549435e-37f);
  let x_327 : f32 = u_xlat10.x;
  u_xlat10.x = inverseSqrt(x_327);
  let x_333 : f32 = vs_TEXCOORD1.y;
  let x_336 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat30 = (x_333 * x_336);
  let x_339 : f32 = x_44.unity_MatrixV[0i].z;
  let x_341 : f32 = vs_TEXCOORD1.x;
  let x_343 : f32 = u_xlat30;
  u_xlat30 = ((x_339 * x_341) + x_343);
  let x_346 : f32 = x_44.unity_MatrixV[2i].z;
  let x_348 : f32 = vs_TEXCOORD1.z;
  let x_350 : f32 = u_xlat30;
  u_xlat30 = ((x_346 * x_348) + x_350);
  let x_352 : f32 = u_xlat30;
  let x_355 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat30 = (x_352 + x_355);
  let x_357 : f32 = u_xlat30;
  let x_361 : f32 = x_44.x_ProjectionParams.y;
  u_xlat30 = (-(x_357) + -(x_361));
  let x_364 : f32 = u_xlat30;
  u_xlat30 = max(x_364, 0.0f);
  let x_366 : f32 = u_xlat30;
  let x_369 : f32 = x_44.unity_FogParams.x;
  u_xlat30 = (x_366 * x_369);
  let x_378 : vec2<f32> = vs_TEXCOORD7;
  let x_380 : f32 = x_44.x_GlobalMipBias.x;
  let x_381 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_378, x_380);
  u_xlat4 = vec3<f32>(x_381.x, x_381.y, x_381.z);
  let x_386 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_387 : vec2<f32> = vec2<f32>(x_386.x, x_386.y);
  let x_391 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_387.x, x_387.y));
  let x_392 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_391.x, x_391.y, x_392.z);
  let x_394 : vec3<f32> = u_xlat5;
  let x_396 : vec4<f32> = hlslcc_FragCoord;
  let x_398 : vec2<f32> = (vec2<f32>(x_394.x, x_394.y) * vec2<f32>(x_396.x, x_396.y));
  let x_399 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_398.x, x_398.y, x_399.z);
  let x_402 : f32 = u_xlat5.y;
  let x_405 : f32 = x_44.x_ScaleBiasRt.x;
  let x_408 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat1.x = ((x_402 * x_405) + x_408);
  let x_412 : f32 = u_xlat1.x;
  u_xlat5.z = (-(x_412) + 1.0f);
  let x_421 : vec3<f32> = u_xlat5;
  let x_424 : f32 = x_44.x_GlobalMipBias.x;
  let x_425 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_421.x, x_421.z), x_424);
  u_xlat1.x = x_425.x;
  let x_430 : f32 = u_xlat1.x;
  u_xlat32 = (x_430 + -1.0f);
  let x_434 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_435 : f32 = u_xlat32;
  u_xlat32 = ((x_434 * x_435) + 1.0f);
  let x_439 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_439, 1.0f);
  let x_444 : vec4<f32> = vs_TEXCOORD6;
  let x_445 : vec2<f32> = vec2<f32>(x_444.x, x_444.y);
  let x_447 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_445.x, x_445.y, x_447);
  let x_460 : vec3<f32> = txVec0;
  let x_462 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_460.xy, x_460.z);
  u_xlat33 = x_462;
  let x_470 : f32 = x_468.x_MainLightShadowParams.x;
  u_xlat34 = (-(x_470) + 1.0f);
  let x_473 : f32 = u_xlat33;
  let x_475 : f32 = x_468.x_MainLightShadowParams.x;
  let x_477 : f32 = u_xlat34;
  u_xlat33 = ((x_473 * x_475) + x_477);
  let x_481 : f32 = vs_TEXCOORD6.z;
  u_xlatb34 = (0.0f >= x_481);
  let x_485 : f32 = vs_TEXCOORD6.z;
  u_xlatb5 = (x_485 >= 1.0f);
  let x_487 : bool = u_xlatb34;
  let x_488 : bool = u_xlatb5;
  u_xlatb34 = (x_487 | x_488);
  let x_490 : bool = u_xlatb34;
  let x_491 : f32 = u_xlat33;
  u_xlat33 = select(x_491, 1.0f, x_490);
  let x_493 : vec3<f32> = vs_TEXCOORD1;
  let x_497 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat5 = (x_493 + -(x_497));
  let x_500 : vec3<f32> = u_xlat5;
  let x_501 : vec3<f32> = u_xlat5;
  u_xlat34 = dot(x_500, x_501);
  let x_503 : f32 = u_xlat34;
  let x_505 : f32 = x_468.x_MainLightShadowParams.z;
  let x_508 : f32 = x_468.x_MainLightShadowParams.w;
  u_xlat34 = ((x_503 * x_505) + x_508);
  let x_510 : f32 = u_xlat34;
  u_xlat34 = clamp(x_510, 0.0f, 1.0f);
  let x_512 : f32 = u_xlat33;
  u_xlat5.x = (-(x_512) + 1.0f);
  let x_516 : f32 = u_xlat34;
  let x_518 : f32 = u_xlat5.x;
  let x_520 : f32 = u_xlat33;
  u_xlat33 = ((x_516 * x_518) + x_520);
  let x_522 : f32 = u_xlat32;
  let x_525 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat5 = (vec3<f32>(x_522, x_522, x_522) * vec3<f32>(x_525.x, x_525.y, x_525.z));
  let x_528 : vec4<f32> = u_xlat1;
  let x_530 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_528.x, x_528.x, x_528.x) * x_530);
  let x_532 : f32 = u_xlat33;
  let x_534 : f32 = x_236.unity_LightData.z;
  u_xlat1.x = (x_532 * x_534);
  let x_537 : vec4<f32> = u_xlat1;
  let x_539 : vec3<f32> = u_xlat5;
  u_xlat5 = (vec3<f32>(x_537.x, x_537.x, x_537.x) * x_539);
  let x_541 : vec3<f32> = u_xlat2;
  let x_543 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat1.x = dot(x_541, vec3<f32>(x_543.x, x_543.y, x_543.z));
  let x_548 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_548, 0.0f, 1.0f);
  let x_552 : vec4<f32> = u_xlat1;
  let x_554 : vec3<f32> = u_xlat5;
  u_xlat6 = (vec3<f32>(x_552.x, x_552.x, x_552.x) * x_554);
  let x_557 : f32 = x_57.x_SpecColor.w;
  u_xlat1.x = ((x_557 * 10.0f) + 1.0f);
  let x_563 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_563);
  let x_567 : vec3<f32> = u_xlat3;
  let x_568 : vec3<f32> = u_xlat10;
  let x_572 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat7 = ((x_567 * vec3<f32>(x_568.x, x_568.x, x_568.x)) + vec3<f32>(x_572.x, x_572.y, x_572.z));
  let x_575 : vec3<f32> = u_xlat7;
  let x_576 : vec3<f32> = u_xlat7;
  u_xlat33 = dot(x_575, x_576);
  let x_578 : f32 = u_xlat33;
  u_xlat33 = max(x_578, 1.17549435e-37f);
  let x_580 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_580);
  let x_582 : f32 = u_xlat33;
  let x_584 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_582, x_582, x_582) * x_584);
  let x_586 : vec3<f32> = u_xlat2;
  let x_587 : vec3<f32> = u_xlat7;
  u_xlat33 = dot(x_586, x_587);
  let x_589 : f32 = u_xlat33;
  u_xlat33 = clamp(x_589, 0.0f, 1.0f);
  let x_591 : f32 = u_xlat33;
  u_xlat33 = log2(x_591);
  let x_594 : f32 = u_xlat1.x;
  let x_595 : f32 = u_xlat33;
  u_xlat33 = (x_594 * x_595);
  let x_597 : f32 = u_xlat33;
  u_xlat33 = exp2(x_597);
  let x_599 : f32 = u_xlat33;
  let x_602 : vec4<f32> = x_57.x_SpecColor;
  u_xlat7 = (vec3<f32>(x_599, x_599, x_599) * vec3<f32>(x_602.x, x_602.y, x_602.z));
  let x_605 : vec3<f32> = u_xlat5;
  let x_606 : vec3<f32> = u_xlat7;
  u_xlat5 = (x_605 * x_606);
  let x_608 : vec3<f32> = u_xlat6;
  let x_609 : vec4<f32> = u_xlat1;
  let x_612 : vec3<f32> = u_xlat5;
  u_xlat5 = ((x_608 * vec3<f32>(x_609.y, x_609.z, x_609.w)) + x_612);
  let x_616 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_618 : f32 = x_236.unity_LightData.y;
  u_xlat33 = min(x_616, x_618);
  let x_622 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_622));
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_634 : u32 = u_xlatu_loop_1;
    let x_635 : u32 = u_xlatu33;
    if ((x_634 < x_635)) {
    } else {
      break;
    }
    let x_638 : u32 = u_xlatu_loop_1;
    u_xlatu35 = (x_638 >> 2u);
    let x_642 : u32 = u_xlatu_loop_1;
    u_xlati36 = bitcast<i32>((x_642 & 3u));
    let x_646 : u32 = u_xlatu35;
    let x_649 : vec4<f32> = x_236.unity_LightIndices[bitcast<i32>(x_646)];
    let x_659 : i32 = u_xlati36;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_664 : vec4<u32> = indexable[x_659];
    u_xlat35 = dot(x_649, bitcast<vec4<f32>>(x_664));
    let x_668 : f32 = u_xlat35;
    u_xlati35 = i32(x_668);
    let x_670 : vec3<f32> = vs_TEXCOORD1;
    let x_682 : i32 = u_xlati35;
    let x_684 : vec4<f32> = x_681.x_AdditionalLightsPosition[x_682];
    let x_687 : i32 = u_xlati35;
    let x_689 : vec4<f32> = x_681.x_AdditionalLightsPosition[x_687];
    u_xlat7 = ((-(x_670) * vec3<f32>(x_684.w, x_684.w, x_684.w)) + vec3<f32>(x_689.x, x_689.y, x_689.z));
    let x_693 : vec3<f32> = u_xlat7;
    let x_694 : vec3<f32> = u_xlat7;
    u_xlat36 = dot(x_693, x_694);
    let x_696 : f32 = u_xlat36;
    u_xlat36 = max(x_696, 6.10351562e-05f);
    let x_700 : f32 = u_xlat36;
    u_xlat37 = inverseSqrt(x_700);
    let x_702 : f32 = u_xlat37;
    let x_704 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_702, x_702, x_702) * x_704);
    let x_706 : f32 = u_xlat36;
    u_xlat37 = (1.0f / x_706);
    let x_708 : f32 = u_xlat36;
    let x_709 : i32 = u_xlati35;
    let x_711 : f32 = x_681.x_AdditionalLightsAttenuation[x_709].x;
    u_xlat36 = (x_708 * x_711);
    let x_713 : f32 = u_xlat36;
    let x_715 : f32 = u_xlat36;
    u_xlat36 = ((-(x_713) * x_715) + 1.0f);
    let x_718 : f32 = u_xlat36;
    u_xlat36 = max(x_718, 0.0f);
    let x_720 : f32 = u_xlat36;
    let x_721 : f32 = u_xlat36;
    u_xlat36 = (x_720 * x_721);
    let x_723 : f32 = u_xlat36;
    let x_724 : f32 = u_xlat37;
    u_xlat36 = (x_723 * x_724);
    let x_726 : i32 = u_xlati35;
    let x_728 : vec4<f32> = x_681.x_AdditionalLightsSpotDir[x_726];
    let x_730 : vec3<f32> = u_xlat7;
    u_xlat37 = dot(vec3<f32>(x_728.x, x_728.y, x_728.z), x_730);
    let x_732 : f32 = u_xlat37;
    let x_733 : i32 = u_xlati35;
    let x_735 : f32 = x_681.x_AdditionalLightsAttenuation[x_733].z;
    let x_737 : i32 = u_xlati35;
    let x_739 : f32 = x_681.x_AdditionalLightsAttenuation[x_737].w;
    u_xlat37 = ((x_732 * x_735) + x_739);
    let x_741 : f32 = u_xlat37;
    u_xlat37 = clamp(x_741, 0.0f, 1.0f);
    let x_743 : f32 = u_xlat37;
    let x_744 : f32 = u_xlat37;
    u_xlat37 = (x_743 * x_744);
    let x_746 : f32 = u_xlat36;
    let x_747 : f32 = u_xlat37;
    u_xlat36 = (x_746 * x_747);
    let x_750 : f32 = u_xlat32;
    let x_752 : i32 = u_xlati35;
    let x_754 : vec4<f32> = x_681.x_AdditionalLightsColor[x_752];
    u_xlat8 = (vec3<f32>(x_750, x_750, x_750) * vec3<f32>(x_754.x, x_754.y, x_754.z));
    let x_757 : f32 = u_xlat36;
    let x_759 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_757, x_757, x_757) * x_759);
    let x_761 : vec3<f32> = u_xlat2;
    let x_762 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(x_761, x_762);
    let x_764 : f32 = u_xlat35;
    u_xlat35 = clamp(x_764, 0.0f, 1.0f);
    let x_767 : f32 = u_xlat35;
    let x_769 : vec3<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_767, x_767, x_767) * x_769);
    let x_771 : vec3<f32> = u_xlat3;
    let x_772 : vec3<f32> = u_xlat10;
    let x_775 : vec3<f32> = u_xlat7;
    u_xlat7 = ((x_771 * vec3<f32>(x_772.x, x_772.x, x_772.x)) + x_775);
    let x_777 : vec3<f32> = u_xlat7;
    let x_778 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(x_777, x_778);
    let x_780 : f32 = u_xlat35;
    u_xlat35 = max(x_780, 1.17549435e-37f);
    let x_782 : f32 = u_xlat35;
    u_xlat35 = inverseSqrt(x_782);
    let x_784 : f32 = u_xlat35;
    let x_786 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_784, x_784, x_784) * x_786);
    let x_788 : vec3<f32> = u_xlat2;
    let x_789 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(x_788, x_789);
    let x_791 : f32 = u_xlat35;
    u_xlat35 = clamp(x_791, 0.0f, 1.0f);
    let x_793 : f32 = u_xlat35;
    u_xlat35 = log2(x_793);
    let x_796 : f32 = u_xlat1.x;
    let x_797 : f32 = u_xlat35;
    u_xlat35 = (x_796 * x_797);
    let x_799 : f32 = u_xlat35;
    u_xlat35 = exp2(x_799);
    let x_801 : f32 = u_xlat35;
    let x_804 : vec4<f32> = x_57.x_SpecColor;
    u_xlat7 = (vec3<f32>(x_801, x_801, x_801) * vec3<f32>(x_804.x, x_804.y, x_804.z));
    let x_807 : vec3<f32> = u_xlat7;
    let x_808 : vec3<f32> = u_xlat8;
    u_xlat7 = (x_807 * x_808);
    let x_810 : vec3<f32> = u_xlat9;
    let x_811 : vec4<f32> = u_xlat1;
    let x_814 : vec3<f32> = u_xlat7;
    u_xlat7 = ((x_810 * vec3<f32>(x_811.y, x_811.z, x_811.w)) + x_814);
    let x_816 : vec3<f32> = u_xlat6;
    let x_817 : vec3<f32> = u_xlat7;
    u_xlat6 = (x_816 + x_817);

    continuing {
      let x_819 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_819 + bitcast<u32>(1i));
    }
  }
  let x_821 : vec3<f32> = u_xlat4;
  let x_822 : vec4<f32> = u_xlat1;
  let x_825 : vec3<f32> = u_xlat5;
  let x_826 : vec3<f32> = ((x_821 * vec3<f32>(x_822.y, x_822.z, x_822.w)) + x_825);
  let x_827 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_826.x, x_826.y, x_826.z, x_827.w);
  let x_829 : vec3<f32> = u_xlat6;
  let x_830 : vec4<f32> = u_xlat1;
  let x_832 : vec3<f32> = (x_829 + vec3<f32>(x_830.x, x_830.y, x_830.z));
  let x_833 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_832.x, x_832.y, x_832.z, x_833.w);
  let x_835 : f32 = u_xlat30;
  let x_836 : f32 = u_xlat30;
  u_xlat10.x = (x_835 * -(x_836));
  let x_841 : f32 = u_xlat10.x;
  u_xlat10.x = exp2(x_841);
  let x_844 : vec4<f32> = u_xlat1;
  let x_848 : vec4<f32> = x_44.unity_FogColor;
  let x_851 : vec3<f32> = (vec3<f32>(x_844.x, x_844.y, x_844.z) + -(vec3<f32>(x_848.x, x_848.y, x_848.z)));
  let x_852 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_851.x, x_851.y, x_851.z, x_852.w);
  let x_856 : vec3<f32> = u_xlat10;
  let x_858 : vec4<f32> = u_xlat1;
  let x_862 : vec4<f32> = x_44.unity_FogColor;
  let x_864 : vec3<f32> = ((vec3<f32>(x_856.x, x_856.x, x_856.x) * vec3<f32>(x_858.x, x_858.y, x_858.z)) + vec3<f32>(x_862.x, x_862.y, x_862.z));
  let x_865 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_864.x, x_864.y, x_864.z, x_865.w);
  let x_868 : f32 = x_57.x_Surface;
  u_xlatb10 = (x_868 == 1.0f);
  let x_870 : bool = u_xlatb10;
  let x_871 : bool = u_xlatb20;
  u_xlatb10 = (x_870 | x_871);
  let x_873 : bool = u_xlatb10;
  if (x_873) {
    let x_878 : f32 = u_xlat0.x;
    x_874 = x_878;
  } else {
    x_874 = 1.0f;
  }
  let x_880 : f32 = x_874;
  SV_Target0.w = x_880;
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

