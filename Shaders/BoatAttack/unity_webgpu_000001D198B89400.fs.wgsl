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
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
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

type Arr_1 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr_1,
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

@group(0) @binding(5) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(4) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_249 : MainLightShadows;

@group(1) @binding(2) var<uniform> x_335 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_479 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlatb1 : bool;
  var u_xlat10 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var x_96 : f32;
  var x_110 : f32;
  var x_122 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlat28 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat29 : f32;
  var u_xlat30 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb13 : bool;
  var u_xlatb22 : bool;
  var x_276 : f32;
  var u_xlat22 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat31 : f32;
  var u_xlatu31 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu6 : u32;
  var u_xlati15 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati6 : i32;
  var u_xlat15 : vec3<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat16 : vec3<f32>;
  var u_xlat8 : vec3<f32>;
  var u_xlat33 : f32;
  var u_xlat9 : vec3<f32>;
  var u_xlatb9 : bool;
  var x_680 : f32;
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
  let x_67 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb1 = (x_67 == 0.0f);
  let x_74 : vec3<f32> = vs_TEXCOORD1;
  let x_79 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat10 = (-(x_74) + x_79);
  let x_82 : vec3<f32> = u_xlat10;
  let x_83 : vec3<f32> = u_xlat10;
  u_xlat2.x = dot(x_82, x_83);
  let x_88 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_88);
  let x_91 : vec3<f32> = u_xlat10;
  let x_92 : vec3<f32> = u_xlat2;
  u_xlat10 = (x_91 * vec3<f32>(x_92.x, x_92.x, x_92.x));
  let x_95 : bool = u_xlatb1;
  if (x_95) {
    let x_100 : f32 = u_xlat10.x;
    x_96 = x_100;
  } else {
    let x_106 : f32 = x_44.unity_MatrixV[0i].z;
    x_96 = x_106;
  }
  let x_107 : f32 = x_96;
  u_xlat2.x = x_107;
  let x_109 : bool = u_xlatb1;
  if (x_109) {
    let x_115 : f32 = u_xlat10.y;
    x_110 = x_115;
  } else {
    let x_118 : f32 = x_44.unity_MatrixV[1i].z;
    x_110 = x_118;
  }
  let x_119 : f32 = x_110;
  u_xlat2.y = x_119;
  let x_121 : bool = u_xlatb1;
  if (x_121) {
    let x_126 : f32 = u_xlat10.z;
    x_122 = x_126;
  } else {
    let x_130 : f32 = x_44.unity_MatrixV[2i].z;
    x_122 = x_130;
  }
  let x_131 : f32 = x_122;
  u_xlat2.z = x_131;
  let x_135 : vec3<f32> = vs_TEXCOORD2;
  let x_136 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_135, x_136);
  let x_140 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_140);
  let x_143 : vec3<f32> = u_xlat1;
  let x_145 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1 = (vec3<f32>(x_143.x, x_143.x, x_143.x) * x_145);
  let x_148 : vec3<f32> = u_xlat2;
  let x_149 : vec3<f32> = u_xlat2;
  u_xlat28 = dot(x_148, x_149);
  let x_151 : f32 = u_xlat28;
  u_xlat28 = max(x_151, 1.17549435e-37f);
  let x_154 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_154);
  let x_163 : vec2<f32> = vs_TEXCOORD7;
  let x_165 : f32 = x_44.x_GlobalMipBias.x;
  let x_166 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_163, x_165);
  u_xlat3 = vec3<f32>(x_166.x, x_166.y, x_166.z);
  let x_171 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_172 : vec2<f32> = vec2<f32>(x_171.x, x_171.y);
  let x_176 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_172.x, x_172.y));
  let x_177 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_176.x, x_176.y, x_177.z);
  let x_179 : vec3<f32> = u_xlat4;
  let x_181 : vec4<f32> = hlslcc_FragCoord;
  let x_183 : vec2<f32> = (vec2<f32>(x_179.x, x_179.y) * vec2<f32>(x_181.x, x_181.y));
  let x_184 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_183.x, x_183.y, x_184.z);
  let x_188 : f32 = u_xlat4.y;
  let x_191 : f32 = x_44.x_ScaleBiasRt.x;
  let x_194 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat29 = ((x_188 * x_191) + x_194);
  let x_196 : f32 = u_xlat29;
  u_xlat4.z = (-(x_196) + 1.0f);
  let x_205 : vec3<f32> = u_xlat4;
  let x_208 : f32 = x_44.x_GlobalMipBias.x;
  let x_209 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_205.x, x_205.z), x_208);
  u_xlat29 = x_209.x;
  let x_212 : f32 = u_xlat29;
  u_xlat30 = (x_212 + -1.0f);
  let x_217 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_218 : f32 = u_xlat30;
  u_xlat30 = ((x_217 * x_218) + 1.0f);
  let x_221 : f32 = u_xlat29;
  u_xlat29 = min(x_221, 1.0f);
  let x_225 : vec4<f32> = vs_TEXCOORD6;
  let x_226 : vec2<f32> = vec2<f32>(x_225.x, x_225.y);
  let x_228 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_226.x, x_226.y, x_228);
  let x_240 : vec3<f32> = txVec0;
  let x_242 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_240.xy, x_240.z);
  u_xlat4.x = x_242;
  let x_251 : f32 = x_249.x_MainLightShadowParams.x;
  u_xlat13.x = (-(x_251) + 1.0f);
  let x_256 : f32 = u_xlat4.x;
  let x_258 : f32 = x_249.x_MainLightShadowParams.x;
  let x_261 : f32 = u_xlat13.x;
  u_xlat4.x = ((x_256 * x_258) + x_261);
  let x_266 : f32 = vs_TEXCOORD6.z;
  u_xlatb13 = (0.0f >= x_266);
  let x_270 : f32 = vs_TEXCOORD6.z;
  u_xlatb22 = (x_270 >= 1.0f);
  let x_272 : bool = u_xlatb22;
  let x_273 : bool = u_xlatb13;
  u_xlatb13 = (x_272 | x_273);
  let x_275 : bool = u_xlatb13;
  if (x_275) {
    x_276 = 1.0f;
  } else {
    let x_281 : f32 = u_xlat4.x;
    x_276 = x_281;
  }
  let x_282 : f32 = x_276;
  u_xlat4.x = x_282;
  let x_284 : vec3<f32> = vs_TEXCOORD1;
  let x_286 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat13 = (x_284 + -(x_286));
  let x_289 : vec3<f32> = u_xlat13;
  let x_290 : vec3<f32> = u_xlat13;
  u_xlat13.x = dot(x_289, x_290);
  let x_294 : f32 = u_xlat13.x;
  let x_296 : f32 = x_249.x_MainLightShadowParams.z;
  let x_299 : f32 = x_249.x_MainLightShadowParams.w;
  u_xlat13.x = ((x_294 * x_296) + x_299);
  let x_303 : f32 = u_xlat13.x;
  u_xlat13.x = clamp(x_303, 0.0f, 1.0f);
  let x_308 : f32 = u_xlat4.x;
  u_xlat22 = (-(x_308) + 1.0f);
  let x_312 : f32 = u_xlat13.x;
  let x_313 : f32 = u_xlat22;
  let x_316 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_312 * x_313) + x_316);
  let x_319 : f32 = u_xlat30;
  let x_323 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat13 = (vec3<f32>(x_319, x_319, x_319) * vec3<f32>(x_323.x, x_323.y, x_323.z));
  let x_326 : f32 = u_xlat29;
  let x_328 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_326, x_326, x_326) * x_328);
  let x_331 : f32 = u_xlat4.x;
  let x_338 : f32 = x_335.unity_LightData.z;
  u_xlat29 = (x_331 * x_338);
  let x_340 : f32 = u_xlat29;
  let x_342 : vec3<f32> = u_xlat13;
  u_xlat4 = (vec3<f32>(x_340, x_340, x_340) * x_342);
  let x_344 : vec3<f32> = u_xlat1;
  let x_346 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat29 = dot(x_344, vec3<f32>(x_346.x, x_346.y, x_346.z));
  let x_349 : f32 = u_xlat29;
  u_xlat29 = clamp(x_349, 0.0f, 1.0f);
  let x_352 : f32 = u_xlat29;
  let x_354 : vec3<f32> = u_xlat4;
  u_xlat5 = (vec3<f32>(x_352, x_352, x_352) * x_354);
  let x_357 : f32 = u_xlat0.x;
  u_xlat29 = ((x_357 * 10.0f) + 1.0f);
  let x_361 : f32 = u_xlat29;
  u_xlat29 = exp2(x_361);
  let x_364 : vec3<f32> = u_xlat2;
  let x_365 : f32 = u_xlat28;
  let x_369 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat6 = ((x_364 * vec3<f32>(x_365, x_365, x_365)) + vec3<f32>(x_369.x, x_369.y, x_369.z));
  let x_373 : vec3<f32> = u_xlat6;
  let x_374 : vec3<f32> = u_xlat6;
  u_xlat31 = dot(x_373, x_374);
  let x_376 : f32 = u_xlat31;
  u_xlat31 = max(x_376, 1.17549435e-37f);
  let x_378 : f32 = u_xlat31;
  u_xlat31 = inverseSqrt(x_378);
  let x_380 : f32 = u_xlat31;
  let x_382 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_380, x_380, x_380) * x_382);
  let x_384 : vec3<f32> = u_xlat1;
  let x_385 : vec3<f32> = u_xlat6;
  u_xlat31 = dot(x_384, x_385);
  let x_387 : f32 = u_xlat31;
  u_xlat31 = clamp(x_387, 0.0f, 1.0f);
  let x_389 : f32 = u_xlat31;
  u_xlat31 = log2(x_389);
  let x_391 : f32 = u_xlat29;
  let x_392 : f32 = u_xlat31;
  u_xlat31 = (x_391 * x_392);
  let x_394 : f32 = u_xlat31;
  u_xlat31 = exp2(x_394);
  let x_396 : f32 = u_xlat31;
  let x_399 : vec4<f32> = x_56.x_SpecColor;
  u_xlat6 = (vec3<f32>(x_396, x_396, x_396) * vec3<f32>(x_399.x, x_399.y, x_399.z));
  let x_402 : vec3<f32> = u_xlat4;
  let x_403 : vec3<f32> = u_xlat6;
  u_xlat4 = (x_402 * x_403);
  let x_405 : vec3<f32> = u_xlat5;
  let x_406 : vec4<f32> = u_xlat0;
  let x_409 : vec3<f32> = u_xlat4;
  u_xlat4 = ((x_405 * vec3<f32>(x_406.y, x_406.z, x_406.w)) + x_409);
  let x_412 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_414 : f32 = x_335.unity_LightData.y;
  u_xlat31 = min(x_412, x_414);
  let x_418 : f32 = u_xlat31;
  u_xlatu31 = bitcast<u32>(i32(x_418));
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_430 : u32 = u_xlatu_loop_1;
    let x_431 : u32 = u_xlatu31;
    if ((x_430 < x_431)) {
    } else {
      break;
    }
    let x_434 : u32 = u_xlatu_loop_1;
    u_xlatu6 = (x_434 >> 2u);
    let x_438 : u32 = u_xlatu_loop_1;
    u_xlati15 = bitcast<i32>((x_438 & 3u));
    let x_441 : u32 = u_xlatu6;
    let x_444 : vec4<f32> = x_335.unity_LightIndices[bitcast<i32>(x_441)];
    let x_454 : i32 = u_xlati15;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_459 : vec4<u32> = indexable[x_454];
    u_xlat6.x = dot(x_444, bitcast<vec4<f32>>(x_459));
    let x_465 : f32 = u_xlat6.x;
    u_xlati6 = i32(x_465);
    let x_468 : vec3<f32> = vs_TEXCOORD1;
    let x_480 : i32 = u_xlati6;
    let x_482 : vec4<f32> = x_479.x_AdditionalLightsPosition[x_480];
    let x_485 : i32 = u_xlati6;
    let x_487 : vec4<f32> = x_479.x_AdditionalLightsPosition[x_485];
    u_xlat15 = ((-(x_468) * vec3<f32>(x_482.w, x_482.w, x_482.w)) + vec3<f32>(x_487.x, x_487.y, x_487.z));
    let x_491 : vec3<f32> = u_xlat15;
    let x_492 : vec3<f32> = u_xlat15;
    u_xlat7.x = dot(x_491, x_492);
    let x_496 : f32 = u_xlat7.x;
    u_xlat7.x = max(x_496, 6.10351562e-05f);
    let x_502 : f32 = u_xlat7.x;
    u_xlat16.x = inverseSqrt(x_502);
    let x_505 : vec3<f32> = u_xlat15;
    let x_506 : vec3<f32> = u_xlat16;
    u_xlat15 = (x_505 * vec3<f32>(x_506.x, x_506.x, x_506.x));
    let x_510 : f32 = u_xlat7.x;
    u_xlat16.x = (1.0f / x_510);
    let x_514 : f32 = u_xlat7.x;
    let x_515 : i32 = u_xlati6;
    let x_517 : f32 = x_479.x_AdditionalLightsAttenuation[x_515].x;
    u_xlat7.x = (x_514 * x_517);
    let x_521 : f32 = u_xlat7.x;
    let x_524 : f32 = u_xlat7.x;
    u_xlat7.x = ((-(x_521) * x_524) + 1.0f);
    let x_529 : f32 = u_xlat7.x;
    u_xlat7.x = max(x_529, 0.0f);
    let x_533 : f32 = u_xlat7.x;
    let x_535 : f32 = u_xlat7.x;
    u_xlat7.x = (x_533 * x_535);
    let x_539 : f32 = u_xlat7.x;
    let x_541 : f32 = u_xlat16.x;
    u_xlat7.x = (x_539 * x_541);
    let x_544 : i32 = u_xlati6;
    let x_546 : vec4<f32> = x_479.x_AdditionalLightsSpotDir[x_544];
    let x_548 : vec3<f32> = u_xlat15;
    u_xlat16.x = dot(vec3<f32>(x_546.x, x_546.y, x_546.z), x_548);
    let x_552 : f32 = u_xlat16.x;
    let x_553 : i32 = u_xlati6;
    let x_555 : f32 = x_479.x_AdditionalLightsAttenuation[x_553].z;
    let x_557 : i32 = u_xlati6;
    let x_559 : f32 = x_479.x_AdditionalLightsAttenuation[x_557].w;
    u_xlat16.x = ((x_552 * x_555) + x_559);
    let x_563 : f32 = u_xlat16.x;
    u_xlat16.x = clamp(x_563, 0.0f, 1.0f);
    let x_567 : f32 = u_xlat16.x;
    let x_569 : f32 = u_xlat16.x;
    u_xlat16.x = (x_567 * x_569);
    let x_573 : f32 = u_xlat16.x;
    let x_575 : f32 = u_xlat7.x;
    u_xlat7.x = (x_573 * x_575);
    let x_578 : f32 = u_xlat30;
    let x_580 : i32 = u_xlati6;
    let x_582 : vec4<f32> = x_479.x_AdditionalLightsColor[x_580];
    u_xlat16 = (vec3<f32>(x_578, x_578, x_578) * vec3<f32>(x_582.x, x_582.y, x_582.z));
    let x_585 : vec3<f32> = u_xlat7;
    let x_587 : vec3<f32> = u_xlat16;
    u_xlat7 = (vec3<f32>(x_585.x, x_585.x, x_585.x) * x_587);
    let x_589 : vec3<f32> = u_xlat1;
    let x_590 : vec3<f32> = u_xlat15;
    u_xlat6.x = dot(x_589, x_590);
    let x_594 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_594, 0.0f, 1.0f);
    let x_598 : vec3<f32> = u_xlat6;
    let x_600 : vec3<f32> = u_xlat7;
    u_xlat8 = (vec3<f32>(x_598.x, x_598.x, x_598.x) * x_600);
    let x_602 : vec3<f32> = u_xlat2;
    let x_603 : f32 = u_xlat28;
    let x_606 : vec3<f32> = u_xlat15;
    u_xlat6 = ((x_602 * vec3<f32>(x_603, x_603, x_603)) + x_606);
    let x_609 : vec3<f32> = u_xlat6;
    let x_610 : vec3<f32> = u_xlat6;
    u_xlat33 = dot(x_609, x_610);
    let x_612 : f32 = u_xlat33;
    u_xlat33 = max(x_612, 1.17549435e-37f);
    let x_614 : f32 = u_xlat33;
    u_xlat33 = inverseSqrt(x_614);
    let x_616 : f32 = u_xlat33;
    let x_618 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_616, x_616, x_616) * x_618);
    let x_620 : vec3<f32> = u_xlat1;
    let x_621 : vec3<f32> = u_xlat6;
    u_xlat6.x = dot(x_620, x_621);
    let x_625 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_625, 0.0f, 1.0f);
    let x_629 : f32 = u_xlat6.x;
    u_xlat6.x = log2(x_629);
    let x_632 : f32 = u_xlat29;
    let x_634 : f32 = u_xlat6.x;
    u_xlat6.x = (x_632 * x_634);
    let x_638 : f32 = u_xlat6.x;
    u_xlat6.x = exp2(x_638);
    let x_641 : vec3<f32> = u_xlat6;
    let x_644 : vec4<f32> = x_56.x_SpecColor;
    u_xlat6 = (vec3<f32>(x_641.x, x_641.x, x_641.x) * vec3<f32>(x_644.x, x_644.y, x_644.z));
    let x_647 : vec3<f32> = u_xlat6;
    let x_648 : vec3<f32> = u_xlat7;
    u_xlat6 = (x_647 * x_648);
    let x_650 : vec3<f32> = u_xlat8;
    let x_651 : vec4<f32> = u_xlat0;
    let x_654 : vec3<f32> = u_xlat6;
    u_xlat6 = ((x_650 * vec3<f32>(x_651.y, x_651.z, x_651.w)) + x_654);
    let x_656 : vec3<f32> = u_xlat5;
    let x_657 : vec3<f32> = u_xlat6;
    u_xlat5 = (x_656 + x_657);

    continuing {
      let x_659 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_659 + bitcast<u32>(1i));
    }
  }
  let x_662 : vec3<f32> = u_xlat3;
  let x_663 : vec4<f32> = u_xlat0;
  let x_666 : vec3<f32> = u_xlat4;
  u_xlat9 = ((x_662 * vec3<f32>(x_663.y, x_663.z, x_663.w)) + x_666);
  let x_670 : vec3<f32> = u_xlat5;
  let x_671 : vec3<f32> = u_xlat9;
  let x_672 : vec3<f32> = (x_670 + x_671);
  let x_673 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_672.x, x_672.y, x_672.z, x_673.w);
  let x_677 : f32 = x_56.x_Surface;
  u_xlatb9 = (x_677 == 1.0f);
  let x_679 : bool = u_xlatb9;
  if (x_679) {
    let x_684 : f32 = u_xlat0.x;
    x_680 = x_684;
  } else {
    x_680 = 1.0f;
  }
  let x_686 : f32 = x_680;
  SV_Target0.w = x_686;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD7_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}

