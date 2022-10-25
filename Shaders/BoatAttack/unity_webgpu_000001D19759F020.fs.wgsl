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

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

@group(0) @binding(2) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_BumpMap : sampler;

@group(0) @binding(5) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_236 : UnityPerDraw;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(6) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_423 : MainLightShadows;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_629 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_73 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlat20 : f32;
  var u_xlat30 : f32;
  var u_xlatb20 : bool;
  var x_130 : f32;
  var u_xlatb10 : bool;
  var u_xlat2 : vec3<f32>;
  var u_xlatb12 : bool;
  var x_241 : f32;
  var u_xlatb2 : bool;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat32 : f32;
  var u_xlat33 : f32;
  var u_xlatb33 : bool;
  var u_xlatb34 : bool;
  var u_xlat34 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlatu32 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu34 : u32;
  var u_xlati35 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati34 : i32;
  var u_xlat35 : f32;
  var u_xlat36 : f32;
  var u_xlat8 : vec3<f32>;
  var u_xlat9 : vec3<f32>;
  var x_791 : f32;
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
  u_xlat10.x = ((x_85 * x_87) + -(x_90));
  let x_96 : f32 = u_xlat1.x;
  u_xlat20 = dpdxCoarse(x_96);
  let x_100 : f32 = u_xlat1.x;
  u_xlat30 = dpdyCoarse(x_100);
  let x_102 : f32 = u_xlat30;
  let x_104 : f32 = u_xlat20;
  u_xlat20 = (abs(x_102) + abs(x_104));
  let x_107 : f32 = u_xlat20;
  u_xlat20 = max(x_107, 0.0001f);
  let x_111 : f32 = u_xlat10.x;
  let x_112 : f32 = u_xlat20;
  u_xlat10.x = (x_111 / x_112);
  let x_116 : f32 = u_xlat10.x;
  u_xlat10.x = (x_116 + 0.5f);
  let x_121 : f32 = u_xlat10.x;
  u_xlat10.x = clamp(x_121, 0.0f, 1.0f);
  let x_127 : f32 = x_43.x_AlphaToMaskAvailable;
  u_xlatb20 = !((x_127 == 0.0f));
  let x_129 : bool = u_xlatb20;
  if (x_129) {
    let x_134 : f32 = u_xlat10.x;
    x_130 = x_134;
  } else {
    let x_137 : f32 = u_xlat0.x;
    x_130 = x_137;
  }
  let x_138 : f32 = x_130;
  u_xlat0.x = x_138;
  let x_141 : f32 = u_xlat0.x;
  u_xlat10.x = (x_141 + -0.0001f);
  let x_147 : f32 = u_xlat10.x;
  u_xlatb10 = (x_147 < 0.0f);
  let x_149 : bool = u_xlatb10;
  if (((select(0i, 1i, x_149) * -1i) != 0i)) {
    discard;
  }
  let x_164 : vec2<f32> = vs_TEXCOORD0;
  let x_166 : f32 = x_43.x_GlobalMipBias.x;
  let x_167 : vec4<f32> = textureSampleBias(x_BumpMap, sampler_BumpMap, x_164, x_166);
  u_xlat2 = vec3<f32>(x_167.x, x_167.y, x_167.w);
  let x_170 : f32 = u_xlat2.x;
  let x_173 : f32 = u_xlat2.z;
  u_xlat2.x = (x_170 * x_173);
  let x_176 : vec3<f32> = u_xlat2;
  let x_183 : vec2<f32> = ((vec2<f32>(x_176.x, x_176.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_184 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_183.x, x_184.y, x_183.y);
  let x_186 : vec3<f32> = u_xlat10;
  let x_188 : vec3<f32> = u_xlat10;
  u_xlat1.x = dot(vec2<f32>(x_186.x, x_186.z), vec2<f32>(x_188.x, x_188.z));
  let x_193 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_193, 1.0f);
  let x_197 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_197) + 1.0f);
  let x_202 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_202);
  let x_206 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_206, 1.00000002e-16f);
  let x_210 : vec4<f32> = hlslcc_FragCoord;
  let x_214 : f32 = x_43.x_DitheringTextureInvSize;
  let x_216 : vec2<f32> = (vec2<f32>(x_210.x, x_210.y) * vec2<f32>(x_214, x_214));
  let x_217 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_216.x, x_216.y, x_217.z);
  let x_224 : vec3<f32> = u_xlat2;
  let x_227 : f32 = x_43.x_GlobalMipBias.x;
  let x_228 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_224.x, x_224.y), x_227);
  u_xlat2.x = x_228.w;
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
  let x_337 : vec2<f32> = vs_TEXCOORD7;
  let x_339 : f32 = x_43.x_GlobalMipBias.x;
  let x_340 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_337, x_339);
  u_xlat4 = vec3<f32>(x_340.x, x_340.y, x_340.z);
  let x_345 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_346 : vec2<f32> = vec2<f32>(x_345.x, x_345.y);
  let x_350 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_346.x, x_346.y));
  let x_351 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_350.x, x_350.y, x_351.z);
  let x_353 : vec3<f32> = u_xlat5;
  let x_355 : vec4<f32> = hlslcc_FragCoord;
  let x_357 : vec2<f32> = (vec2<f32>(x_353.x, x_353.y) * vec2<f32>(x_355.x, x_355.y));
  let x_358 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_357.x, x_357.y, x_358.z);
  let x_361 : f32 = u_xlat5.y;
  let x_364 : f32 = x_43.x_ScaleBiasRt.x;
  let x_367 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat30 = ((x_361 * x_364) + x_367);
  let x_369 : f32 = u_xlat30;
  u_xlat5.z = (-(x_369) + 1.0f);
  let x_378 : vec3<f32> = u_xlat5;
  let x_381 : f32 = x_43.x_GlobalMipBias.x;
  let x_382 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_378.x, x_378.z), x_381);
  u_xlat30 = x_382.x;
  let x_384 : f32 = u_xlat30;
  u_xlat1.x = (x_384 + -1.0f);
  let x_389 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_391 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_389 * x_391) + 1.0f);
  let x_395 : f32 = u_xlat30;
  u_xlat30 = min(x_395, 1.0f);
  let x_399 : vec4<f32> = vs_TEXCOORD6;
  let x_400 : vec2<f32> = vec2<f32>(x_399.x, x_399.y);
  let x_402 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_400.x, x_400.y, x_402);
  let x_415 : vec3<f32> = txVec0;
  let x_417 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_415.xy, x_415.z);
  u_xlat32 = x_417;
  let x_425 : f32 = x_423.x_MainLightShadowParams.x;
  u_xlat33 = (-(x_425) + 1.0f);
  let x_428 : f32 = u_xlat32;
  let x_430 : f32 = x_423.x_MainLightShadowParams.x;
  let x_432 : f32 = u_xlat33;
  u_xlat32 = ((x_428 * x_430) + x_432);
  let x_436 : f32 = vs_TEXCOORD6.z;
  u_xlatb33 = (0.0f >= x_436);
  let x_440 : f32 = vs_TEXCOORD6.z;
  u_xlatb34 = (x_440 >= 1.0f);
  let x_442 : bool = u_xlatb33;
  let x_443 : bool = u_xlatb34;
  u_xlatb33 = (x_442 | x_443);
  let x_445 : bool = u_xlatb33;
  let x_446 : f32 = u_xlat32;
  u_xlat32 = select(x_446, 1.0f, x_445);
  let x_450 : vec3<f32> = vs_TEXCOORD1;
  let x_454 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  u_xlat5 = (x_450 + -(x_454));
  let x_457 : vec3<f32> = u_xlat5;
  let x_458 : vec3<f32> = u_xlat5;
  u_xlat33 = dot(x_457, x_458);
  let x_460 : f32 = u_xlat33;
  let x_462 : f32 = x_423.x_MainLightShadowParams.z;
  let x_465 : f32 = x_423.x_MainLightShadowParams.w;
  u_xlat33 = ((x_460 * x_462) + x_465);
  let x_467 : f32 = u_xlat33;
  u_xlat33 = clamp(x_467, 0.0f, 1.0f);
  let x_470 : f32 = u_xlat32;
  u_xlat34 = (-(x_470) + 1.0f);
  let x_473 : f32 = u_xlat33;
  let x_474 : f32 = u_xlat34;
  let x_476 : f32 = u_xlat32;
  u_xlat32 = ((x_473 * x_474) + x_476);
  let x_478 : vec4<f32> = u_xlat1;
  let x_481 : vec4<f32> = x_43.x_MainLightColor;
  u_xlat5 = (vec3<f32>(x_478.x, x_478.x, x_478.x) * vec3<f32>(x_481.x, x_481.y, x_481.z));
  let x_484 : f32 = u_xlat30;
  let x_486 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_484, x_484, x_484) * x_486);
  let x_488 : f32 = u_xlat32;
  let x_490 : f32 = x_236.unity_LightData.z;
  u_xlat30 = (x_488 * x_490);
  let x_492 : f32 = u_xlat30;
  let x_494 : vec3<f32> = u_xlat5;
  u_xlat5 = (vec3<f32>(x_492, x_492, x_492) * x_494);
  let x_496 : vec3<f32> = u_xlat2;
  let x_499 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat30 = dot(x_496, vec3<f32>(x_499.x, x_499.y, x_499.z));
  let x_502 : f32 = u_xlat30;
  u_xlat30 = clamp(x_502, 0.0f, 1.0f);
  let x_505 : f32 = u_xlat30;
  let x_507 : vec3<f32> = u_xlat5;
  u_xlat6 = (vec3<f32>(x_505, x_505, x_505) * x_507);
  let x_510 : f32 = x_56.x_SpecColor.w;
  u_xlat30 = ((x_510 * 10.0f) + 1.0f);
  let x_514 : f32 = u_xlat30;
  u_xlat30 = exp2(x_514);
  let x_517 : vec3<f32> = u_xlat3;
  let x_518 : vec3<f32> = u_xlat10;
  let x_522 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat7 = ((x_517 * vec3<f32>(x_518.x, x_518.x, x_518.x)) + vec3<f32>(x_522.x, x_522.y, x_522.z));
  let x_525 : vec3<f32> = u_xlat7;
  let x_526 : vec3<f32> = u_xlat7;
  u_xlat32 = dot(x_525, x_526);
  let x_528 : f32 = u_xlat32;
  u_xlat32 = max(x_528, 1.17549435e-37f);
  let x_530 : f32 = u_xlat32;
  u_xlat32 = inverseSqrt(x_530);
  let x_532 : f32 = u_xlat32;
  let x_534 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_532, x_532, x_532) * x_534);
  let x_536 : vec3<f32> = u_xlat2;
  let x_537 : vec3<f32> = u_xlat7;
  u_xlat32 = dot(x_536, x_537);
  let x_539 : f32 = u_xlat32;
  u_xlat32 = clamp(x_539, 0.0f, 1.0f);
  let x_541 : f32 = u_xlat32;
  u_xlat32 = log2(x_541);
  let x_543 : f32 = u_xlat30;
  let x_544 : f32 = u_xlat32;
  u_xlat32 = (x_543 * x_544);
  let x_546 : f32 = u_xlat32;
  u_xlat32 = exp2(x_546);
  let x_548 : f32 = u_xlat32;
  let x_551 : vec4<f32> = x_56.x_SpecColor;
  u_xlat7 = (vec3<f32>(x_548, x_548, x_548) * vec3<f32>(x_551.x, x_551.y, x_551.z));
  let x_554 : vec3<f32> = u_xlat5;
  let x_555 : vec3<f32> = u_xlat7;
  u_xlat5 = (x_554 * x_555);
  let x_557 : vec3<f32> = u_xlat6;
  let x_558 : vec4<f32> = u_xlat1;
  let x_561 : vec3<f32> = u_xlat5;
  u_xlat5 = ((x_557 * vec3<f32>(x_558.y, x_558.z, x_558.w)) + x_561);
  let x_565 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_567 : f32 = x_236.unity_LightData.y;
  u_xlat32 = min(x_565, x_567);
  let x_571 : f32 = u_xlat32;
  u_xlatu32 = bitcast<u32>(i32(x_571));
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_583 : u32 = u_xlatu_loop_1;
    let x_584 : u32 = u_xlatu32;
    if ((x_583 < x_584)) {
    } else {
      break;
    }
    let x_587 : u32 = u_xlatu_loop_1;
    u_xlatu34 = (x_587 >> 2u);
    let x_591 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_591 & 3u));
    let x_594 : u32 = u_xlatu34;
    let x_597 : vec4<f32> = x_236.unity_LightIndices[bitcast<i32>(x_594)];
    let x_607 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_612 : vec4<u32> = indexable[x_607];
    u_xlat34 = dot(x_597, bitcast<vec4<f32>>(x_612));
    let x_616 : f32 = u_xlat34;
    u_xlati34 = i32(x_616);
    let x_618 : vec3<f32> = vs_TEXCOORD1;
    let x_630 : i32 = u_xlati34;
    let x_632 : vec4<f32> = x_629.x_AdditionalLightsPosition[x_630];
    let x_635 : i32 = u_xlati34;
    let x_637 : vec4<f32> = x_629.x_AdditionalLightsPosition[x_635];
    u_xlat7 = ((-(x_618) * vec3<f32>(x_632.w, x_632.w, x_632.w)) + vec3<f32>(x_637.x, x_637.y, x_637.z));
    let x_641 : vec3<f32> = u_xlat7;
    let x_642 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(x_641, x_642);
    let x_644 : f32 = u_xlat35;
    u_xlat35 = max(x_644, 6.10351562e-05f);
    let x_648 : f32 = u_xlat35;
    u_xlat36 = inverseSqrt(x_648);
    let x_650 : f32 = u_xlat36;
    let x_652 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_650, x_650, x_650) * x_652);
    let x_654 : f32 = u_xlat35;
    u_xlat36 = (1.0f / x_654);
    let x_656 : f32 = u_xlat35;
    let x_657 : i32 = u_xlati34;
    let x_659 : f32 = x_629.x_AdditionalLightsAttenuation[x_657].x;
    u_xlat35 = (x_656 * x_659);
    let x_661 : f32 = u_xlat35;
    let x_663 : f32 = u_xlat35;
    u_xlat35 = ((-(x_661) * x_663) + 1.0f);
    let x_666 : f32 = u_xlat35;
    u_xlat35 = max(x_666, 0.0f);
    let x_668 : f32 = u_xlat35;
    let x_669 : f32 = u_xlat35;
    u_xlat35 = (x_668 * x_669);
    let x_671 : f32 = u_xlat35;
    let x_672 : f32 = u_xlat36;
    u_xlat35 = (x_671 * x_672);
    let x_674 : i32 = u_xlati34;
    let x_676 : vec4<f32> = x_629.x_AdditionalLightsSpotDir[x_674];
    let x_678 : vec3<f32> = u_xlat7;
    u_xlat36 = dot(vec3<f32>(x_676.x, x_676.y, x_676.z), x_678);
    let x_680 : f32 = u_xlat36;
    let x_681 : i32 = u_xlati34;
    let x_683 : f32 = x_629.x_AdditionalLightsAttenuation[x_681].z;
    let x_685 : i32 = u_xlati34;
    let x_687 : f32 = x_629.x_AdditionalLightsAttenuation[x_685].w;
    u_xlat36 = ((x_680 * x_683) + x_687);
    let x_689 : f32 = u_xlat36;
    u_xlat36 = clamp(x_689, 0.0f, 1.0f);
    let x_691 : f32 = u_xlat36;
    let x_692 : f32 = u_xlat36;
    u_xlat36 = (x_691 * x_692);
    let x_694 : f32 = u_xlat35;
    let x_695 : f32 = u_xlat36;
    u_xlat35 = (x_694 * x_695);
    let x_698 : vec4<f32> = u_xlat1;
    let x_700 : i32 = u_xlati34;
    let x_702 : vec4<f32> = x_629.x_AdditionalLightsColor[x_700];
    u_xlat8 = (vec3<f32>(x_698.x, x_698.x, x_698.x) * vec3<f32>(x_702.x, x_702.y, x_702.z));
    let x_705 : f32 = u_xlat35;
    let x_707 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_705, x_705, x_705) * x_707);
    let x_709 : vec3<f32> = u_xlat2;
    let x_710 : vec3<f32> = u_xlat7;
    u_xlat34 = dot(x_709, x_710);
    let x_712 : f32 = u_xlat34;
    u_xlat34 = clamp(x_712, 0.0f, 1.0f);
    let x_715 : f32 = u_xlat34;
    let x_717 : vec3<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_715, x_715, x_715) * x_717);
    let x_719 : vec3<f32> = u_xlat3;
    let x_720 : vec3<f32> = u_xlat10;
    let x_723 : vec3<f32> = u_xlat7;
    u_xlat7 = ((x_719 * vec3<f32>(x_720.x, x_720.x, x_720.x)) + x_723);
    let x_725 : vec3<f32> = u_xlat7;
    let x_726 : vec3<f32> = u_xlat7;
    u_xlat34 = dot(x_725, x_726);
    let x_728 : f32 = u_xlat34;
    u_xlat34 = max(x_728, 1.17549435e-37f);
    let x_730 : f32 = u_xlat34;
    u_xlat34 = inverseSqrt(x_730);
    let x_732 : f32 = u_xlat34;
    let x_734 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_732, x_732, x_732) * x_734);
    let x_736 : vec3<f32> = u_xlat2;
    let x_737 : vec3<f32> = u_xlat7;
    u_xlat34 = dot(x_736, x_737);
    let x_739 : f32 = u_xlat34;
    u_xlat34 = clamp(x_739, 0.0f, 1.0f);
    let x_741 : f32 = u_xlat34;
    u_xlat34 = log2(x_741);
    let x_743 : f32 = u_xlat30;
    let x_744 : f32 = u_xlat34;
    u_xlat34 = (x_743 * x_744);
    let x_746 : f32 = u_xlat34;
    u_xlat34 = exp2(x_746);
    let x_748 : f32 = u_xlat34;
    let x_751 : vec4<f32> = x_56.x_SpecColor;
    u_xlat7 = (vec3<f32>(x_748, x_748, x_748) * vec3<f32>(x_751.x, x_751.y, x_751.z));
    let x_754 : vec3<f32> = u_xlat7;
    let x_755 : vec3<f32> = u_xlat8;
    u_xlat7 = (x_754 * x_755);
    let x_757 : vec3<f32> = u_xlat9;
    let x_758 : vec4<f32> = u_xlat1;
    let x_761 : vec3<f32> = u_xlat7;
    u_xlat7 = ((x_757 * vec3<f32>(x_758.y, x_758.z, x_758.w)) + x_761);
    let x_763 : vec3<f32> = u_xlat6;
    let x_764 : vec3<f32> = u_xlat7;
    u_xlat6 = (x_763 + x_764);

    continuing {
      let x_766 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_766 + bitcast<u32>(1i));
    }
  }
  let x_768 : vec3<f32> = u_xlat4;
  let x_769 : vec4<f32> = u_xlat1;
  let x_772 : vec3<f32> = u_xlat5;
  let x_773 : vec3<f32> = ((x_768 * vec3<f32>(x_769.y, x_769.z, x_769.w)) + x_772);
  let x_774 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_773.x, x_773.y, x_773.z, x_774.w);
  let x_778 : vec3<f32> = u_xlat6;
  let x_779 : vec4<f32> = u_xlat1;
  let x_781 : vec3<f32> = (x_778 + vec3<f32>(x_779.x, x_779.y, x_779.z));
  let x_782 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_781.x, x_781.y, x_781.z, x_782.w);
  let x_785 : f32 = x_56.x_Surface;
  u_xlatb10 = (x_785 == 1.0f);
  let x_787 : bool = u_xlatb10;
  let x_788 : bool = u_xlatb20;
  u_xlatb10 = (x_787 | x_788);
  let x_790 : bool = u_xlatb10;
  if (x_790) {
    let x_795 : f32 = u_xlat0.x;
    x_791 = x_795;
  } else {
    x_791 = 1.0f;
  }
  let x_797 : f32 = x_791;
  SV_Target0.w = x_797;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(6) vs_TEXCOORD7_param : vec2<f32>, @location(5) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}

