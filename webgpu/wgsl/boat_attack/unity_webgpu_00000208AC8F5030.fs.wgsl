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
}

struct UnityPerMaterial {
  x_MainTex_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Shininess : f32,
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

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_64 : UnityPerMaterial;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(4) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_292 : MainLightShadows;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_362 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_455 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_70 : f32;
  var u_xlat8 : f32;
  var u_xlat16 : f32;
  var u_xlat24 : f32;
  var u_xlatb16 : bool;
  var x_119 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat25 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat26 : f32;
  var u_xlat27 : f32;
  var u_xlatb27 : bool;
  var u_xlatb4 : bool;
  var u_xlatu24 : u32;
  var u_xlat5 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu27 : u32;
  var u_xlati28 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati27 : i32;
  var u_xlat6 : vec3<f32>;
  var u_xlat28 : f32;
  var u_xlat29 : f32;
  var u_xlat7 : vec3<f32>;
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
  let x_50 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, x_40, x_49);
  u_xlat0 = x_50;
  let x_52 : vec4<f32> = u_xlat0;
  let x_54 : vec4<f32> = vs_TEXCOORD7;
  u_xlat1 = (x_52 * x_54);
  let x_61 : f32 = u_xlat1.w;
  let x_67 : f32 = x_64.x_Cutoff;
  u_xlatb0 = (x_61 >= x_67);
  let x_69 : bool = u_xlatb0;
  if (x_69) {
    let x_74 : f32 = u_xlat1.w;
    x_70 = x_74;
  } else {
    x_70 = 0.0f;
  }
  let x_77 : f32 = x_70;
  u_xlat0.x = x_77;
  let x_81 : f32 = u_xlat0.w;
  let x_83 : f32 = vs_TEXCOORD7.w;
  let x_86 : f32 = x_64.x_Cutoff;
  u_xlat8 = ((x_81 * x_83) + -(x_86));
  let x_91 : f32 = u_xlat1.w;
  u_xlat16 = dpdxCoarse(x_91);
  let x_95 : f32 = u_xlat1.w;
  u_xlat24 = dpdyCoarse(x_95);
  let x_97 : f32 = u_xlat24;
  let x_99 : f32 = u_xlat16;
  u_xlat16 = (abs(x_97) + abs(x_99));
  let x_102 : f32 = u_xlat16;
  u_xlat16 = max(x_102, 0.0001f);
  let x_105 : f32 = u_xlat8;
  let x_106 : f32 = u_xlat16;
  u_xlat8 = (x_105 / x_106);
  let x_108 : f32 = u_xlat8;
  u_xlat8 = (x_108 + 0.5f);
  let x_111 : f32 = u_xlat8;
  u_xlat8 = clamp(x_111, 0.0f, 1.0f);
  let x_116 : f32 = x_43.x_AlphaToMaskAvailable;
  u_xlatb16 = !((x_116 == 0.0f));
  let x_118 : bool = u_xlatb16;
  if (x_118) {
    let x_122 : f32 = u_xlat8;
    x_119 = x_122;
  } else {
    let x_125 : f32 = u_xlat0.x;
    x_119 = x_125;
  }
  let x_126 : f32 = x_119;
  u_xlat0.x = x_126;
  let x_129 : f32 = u_xlat0.x;
  u_xlat0.x = (x_129 + -0.0001f);
  let x_134 : f32 = u_xlat0.x;
  u_xlatb0 = (x_134 < 0.0f);
  let x_136 : bool = u_xlatb0;
  if (((select(0i, 1i, x_136) * -1i) != 0i)) {
    discard;
  }
  let x_147 : vec3<f32> = vs_TEXCOORD3;
  let x_148 : vec3<f32> = vs_TEXCOORD3;
  u_xlat0.x = dot(x_147, x_148);
  let x_152 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_152);
  let x_157 : vec4<f32> = u_xlat0;
  let x_159 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2 = (vec3<f32>(x_157.x, x_157.x, x_157.x) * x_159);
  let x_162 : f32 = hlslcc_FragCoord.w;
  let x_165 : f32 = hlslcc_FragCoord.z;
  u_xlat0.x = (x_162 * x_165);
  let x_169 : f32 = u_xlat0.x;
  let x_173 : f32 = x_43.x_ProjectionParams.y;
  u_xlat0.x = (x_169 / x_173);
  let x_177 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_177) + 1.0f);
  let x_182 : f32 = u_xlat0.x;
  let x_184 : f32 = x_43.x_ProjectionParams.z;
  u_xlat0.x = (x_182 * x_184);
  let x_188 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_188, 0.0f);
  let x_192 : f32 = u_xlat0.x;
  let x_195 : f32 = x_43.unity_FogParams.x;
  u_xlat0.x = (x_192 * x_195);
  let x_205 : vec2<f32> = vs_TEXCOORD1;
  let x_207 : f32 = x_43.x_GlobalMipBias.x;
  let x_208 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_205, x_207);
  u_xlat3 = vec3<f32>(x_208.x, x_208.y, x_208.z);
  let x_214 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_215 : vec2<f32> = vec2<f32>(x_214.x, x_214.y);
  let x_219 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_215.x, x_215.y));
  let x_220 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_219.x, x_219.y, x_220.z);
  let x_222 : vec3<f32> = u_xlat4;
  let x_224 : vec4<f32> = hlslcc_FragCoord;
  let x_226 : vec2<f32> = (vec2<f32>(x_222.x, x_222.y) * vec2<f32>(x_224.x, x_224.y));
  let x_227 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_226.x, x_226.y, x_227.z);
  let x_230 : f32 = u_xlat4.y;
  let x_233 : f32 = x_43.x_ScaleBiasRt.x;
  let x_236 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat24 = ((x_230 * x_233) + x_236);
  let x_238 : f32 = u_xlat24;
  u_xlat4.z = (-(x_238) + 1.0f);
  let x_247 : vec3<f32> = u_xlat4;
  let x_250 : f32 = x_43.x_GlobalMipBias.x;
  let x_251 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_247.x, x_247.z), x_250);
  u_xlat24 = x_251.x;
  let x_254 : f32 = u_xlat24;
  u_xlat25 = (x_254 + -1.0f);
  let x_259 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_260 : f32 = u_xlat25;
  u_xlat25 = ((x_259 * x_260) + 1.0f);
  let x_263 : f32 = u_xlat24;
  u_xlat24 = min(x_263, 1.0f);
  let x_267 : vec4<f32> = vs_TEXCOORD6;
  let x_268 : vec2<f32> = vec2<f32>(x_267.x, x_267.y);
  let x_270 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_268.x, x_268.y, x_270);
  let x_283 : vec3<f32> = txVec0;
  let x_285 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_283.xy, x_283.z);
  u_xlat26 = x_285;
  let x_294 : f32 = x_292.x_MainLightShadowParams.x;
  u_xlat27 = (-(x_294) + 1.0f);
  let x_297 : f32 = u_xlat26;
  let x_299 : f32 = x_292.x_MainLightShadowParams.x;
  let x_301 : f32 = u_xlat27;
  u_xlat26 = ((x_297 * x_299) + x_301);
  let x_305 : f32 = vs_TEXCOORD6.z;
  u_xlatb27 = (0.0f >= x_305);
  let x_309 : f32 = vs_TEXCOORD6.z;
  u_xlatb4 = (x_309 >= 1.0f);
  let x_311 : bool = u_xlatb27;
  let x_312 : bool = u_xlatb4;
  u_xlatb27 = (x_311 | x_312);
  let x_314 : bool = u_xlatb27;
  let x_315 : f32 = u_xlat26;
  u_xlat26 = select(x_315, 1.0f, x_314);
  let x_318 : vec4<f32> = vs_TEXCOORD2;
  let x_323 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  u_xlat4 = (vec3<f32>(x_318.x, x_318.y, x_318.z) + -(x_323));
  let x_326 : vec3<f32> = u_xlat4;
  let x_327 : vec3<f32> = u_xlat4;
  u_xlat27 = dot(x_326, x_327);
  let x_329 : f32 = u_xlat27;
  let x_331 : f32 = x_292.x_MainLightShadowParams.z;
  let x_334 : f32 = x_292.x_MainLightShadowParams.w;
  u_xlat27 = ((x_329 * x_331) + x_334);
  let x_336 : f32 = u_xlat27;
  u_xlat27 = clamp(x_336, 0.0f, 1.0f);
  let x_338 : f32 = u_xlat26;
  u_xlat4.x = (-(x_338) + 1.0f);
  let x_342 : f32 = u_xlat27;
  let x_344 : f32 = u_xlat4.x;
  let x_346 : f32 = u_xlat26;
  u_xlat26 = ((x_342 * x_344) + x_346);
  let x_348 : f32 = u_xlat25;
  let x_351 : vec4<f32> = x_43.x_MainLightColor;
  u_xlat4 = (vec3<f32>(x_348, x_348, x_348) * vec3<f32>(x_351.x, x_351.y, x_351.z));
  let x_354 : f32 = u_xlat24;
  let x_356 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_354, x_354, x_354) * x_356);
  let x_358 : f32 = u_xlat26;
  let x_364 : f32 = x_362.unity_LightData.z;
  u_xlat24 = (x_358 * x_364);
  let x_366 : f32 = u_xlat24;
  let x_368 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_366, x_366, x_366) * x_368);
  let x_370 : vec3<f32> = u_xlat2;
  let x_373 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat24 = dot(x_370, vec3<f32>(x_373.x, x_373.y, x_373.z));
  let x_376 : f32 = u_xlat24;
  u_xlat24 = clamp(x_376, 0.0f, 1.0f);
  let x_378 : f32 = u_xlat24;
  let x_380 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_378, x_378, x_378) * x_380);
  let x_382 : vec4<f32> = u_xlat1;
  let x_384 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_382.x, x_382.y, x_382.z) * x_384);
  let x_388 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_390 : f32 = x_362.unity_LightData.y;
  u_xlat24 = min(x_388, x_390);
  let x_394 : f32 = u_xlat24;
  u_xlatu24 = bitcast<u32>(i32(x_394));
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_407 : u32 = u_xlatu_loop_1;
    let x_408 : u32 = u_xlatu24;
    if ((x_407 < x_408)) {
    } else {
      break;
    }
    let x_411 : u32 = u_xlatu_loop_1;
    u_xlatu27 = (x_411 >> 2u);
    let x_415 : u32 = u_xlatu_loop_1;
    u_xlati28 = bitcast<i32>((x_415 & 3u));
    let x_418 : u32 = u_xlatu27;
    let x_421 : vec4<f32> = x_362.unity_LightIndices[bitcast<i32>(x_418)];
    let x_431 : i32 = u_xlati28;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_436 : vec4<u32> = indexable[x_431];
    u_xlat27 = dot(x_421, bitcast<vec4<f32>>(x_436));
    let x_440 : f32 = u_xlat27;
    u_xlati27 = i32(x_440);
    let x_443 : vec4<f32> = vs_TEXCOORD2;
    let x_456 : i32 = u_xlati27;
    let x_458 : vec4<f32> = x_455.x_AdditionalLightsPosition[x_456];
    let x_461 : i32 = u_xlati27;
    let x_463 : vec4<f32> = x_455.x_AdditionalLightsPosition[x_461];
    u_xlat6 = ((-(vec3<f32>(x_443.x, x_443.y, x_443.z)) * vec3<f32>(x_458.w, x_458.w, x_458.w)) + vec3<f32>(x_463.x, x_463.y, x_463.z));
    let x_467 : vec3<f32> = u_xlat6;
    let x_468 : vec3<f32> = u_xlat6;
    u_xlat28 = dot(x_467, x_468);
    let x_470 : f32 = u_xlat28;
    u_xlat28 = max(x_470, 6.10351562e-05f);
    let x_474 : f32 = u_xlat28;
    u_xlat29 = inverseSqrt(x_474);
    let x_476 : f32 = u_xlat29;
    let x_478 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_476, x_476, x_476) * x_478);
    let x_480 : f32 = u_xlat28;
    u_xlat29 = (1.0f / x_480);
    let x_482 : f32 = u_xlat28;
    let x_483 : i32 = u_xlati27;
    let x_485 : f32 = x_455.x_AdditionalLightsAttenuation[x_483].x;
    u_xlat28 = (x_482 * x_485);
    let x_487 : f32 = u_xlat28;
    let x_489 : f32 = u_xlat28;
    u_xlat28 = ((-(x_487) * x_489) + 1.0f);
    let x_492 : f32 = u_xlat28;
    u_xlat28 = max(x_492, 0.0f);
    let x_494 : f32 = u_xlat28;
    let x_495 : f32 = u_xlat28;
    u_xlat28 = (x_494 * x_495);
    let x_497 : f32 = u_xlat28;
    let x_498 : f32 = u_xlat29;
    u_xlat28 = (x_497 * x_498);
    let x_500 : i32 = u_xlati27;
    let x_502 : vec4<f32> = x_455.x_AdditionalLightsSpotDir[x_500];
    let x_504 : vec3<f32> = u_xlat6;
    u_xlat29 = dot(vec3<f32>(x_502.x, x_502.y, x_502.z), x_504);
    let x_506 : f32 = u_xlat29;
    let x_507 : i32 = u_xlati27;
    let x_509 : f32 = x_455.x_AdditionalLightsAttenuation[x_507].z;
    let x_511 : i32 = u_xlati27;
    let x_513 : f32 = x_455.x_AdditionalLightsAttenuation[x_511].w;
    u_xlat29 = ((x_506 * x_509) + x_513);
    let x_515 : f32 = u_xlat29;
    u_xlat29 = clamp(x_515, 0.0f, 1.0f);
    let x_517 : f32 = u_xlat29;
    let x_518 : f32 = u_xlat29;
    u_xlat29 = (x_517 * x_518);
    let x_520 : f32 = u_xlat28;
    let x_521 : f32 = u_xlat29;
    u_xlat28 = (x_520 * x_521);
    let x_524 : f32 = u_xlat25;
    let x_526 : i32 = u_xlati27;
    let x_528 : vec4<f32> = x_455.x_AdditionalLightsColor[x_526];
    u_xlat7 = (vec3<f32>(x_524, x_524, x_524) * vec3<f32>(x_528.x, x_528.y, x_528.z));
    let x_531 : f32 = u_xlat28;
    let x_533 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_531, x_531, x_531) * x_533);
    let x_535 : vec3<f32> = u_xlat2;
    let x_536 : vec3<f32> = u_xlat6;
    u_xlat27 = dot(x_535, x_536);
    let x_538 : f32 = u_xlat27;
    u_xlat27 = clamp(x_538, 0.0f, 1.0f);
    let x_540 : f32 = u_xlat27;
    let x_542 : vec3<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_540, x_540, x_540) * x_542);
    let x_544 : vec3<f32> = u_xlat6;
    let x_545 : vec4<f32> = u_xlat1;
    let x_548 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_544 * vec3<f32>(x_545.x, x_545.y, x_545.z)) + x_548);

    continuing {
      let x_550 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_550 + bitcast<u32>(1i));
    }
  }
  let x_552 : vec3<f32> = u_xlat3;
  let x_553 : vec4<f32> = u_xlat1;
  let x_556 : vec3<f32> = u_xlat4;
  let x_557 : vec3<f32> = ((x_552 * vec3<f32>(x_553.x, x_553.y, x_553.z)) + x_556);
  let x_558 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_557.x, x_557.y, x_557.z, x_558.w);
  let x_560 : vec3<f32> = u_xlat5;
  let x_561 : vec4<f32> = u_xlat1;
  let x_563 : vec3<f32> = (x_560 + vec3<f32>(x_561.x, x_561.y, x_561.z));
  let x_564 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_563.x, x_563.y, x_563.z, x_564.w);
  let x_567 : f32 = u_xlat0.x;
  let x_569 : f32 = u_xlat0.x;
  u_xlat0.x = (x_567 * -(x_569));
  let x_574 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_574);
  let x_577 : vec4<f32> = u_xlat1;
  let x_581 : vec4<f32> = x_43.unity_FogColor;
  let x_584 : vec3<f32> = (vec3<f32>(x_577.x, x_577.y, x_577.z) + -(vec3<f32>(x_581.x, x_581.y, x_581.z)));
  let x_585 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_584.x, x_584.y, x_584.z, x_585.w);
  let x_589 : vec4<f32> = u_xlat0;
  let x_591 : vec4<f32> = u_xlat1;
  let x_595 : vec4<f32> = x_43.unity_FogColor;
  let x_597 : vec3<f32> = ((vec3<f32>(x_589.x, x_589.x, x_589.x) * vec3<f32>(x_591.x, x_591.y, x_591.z)) + vec3<f32>(x_595.x, x_595.y, x_595.z));
  let x_598 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_597.x, x_597.y, x_597.z, x_598.w);
  let x_600 : bool = u_xlatb16;
  let x_601 : f32 = u_xlat8;
  SV_Target0.w = select(1.0f, x_601, x_600);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(5) vs_TEXCOORD7_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec2<f32>, @location(4) vs_TEXCOORD6_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  main_1();
  return main_out(SV_Target0);
}

