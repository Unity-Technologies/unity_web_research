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

@group(0) @binding(6) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

@group(0) @binding(2) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(7) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(5) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_407 : MainLightShadows;

@group(1) @binding(2) var<uniform> x_475 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_624 : AdditionalLights;

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
  var x_817 : f32;
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
  let x_211 : vec3<f32> = u_xlat10;
  let x_214 : vec4<f32> = vs_TEXCOORD4;
  u_xlat2 = (vec3<f32>(x_211.z, x_211.z, x_211.z) * vec3<f32>(x_214.x, x_214.y, x_214.z));
  let x_217 : vec3<f32> = u_xlat10;
  let x_220 : vec4<f32> = vs_TEXCOORD3;
  let x_223 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_217.x, x_217.x, x_217.x) * vec3<f32>(x_220.x, x_220.y, x_220.z)) + x_223);
  let x_225 : vec4<f32> = u_xlat1;
  let x_228 : vec4<f32> = vs_TEXCOORD2;
  let x_231 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_225.x, x_225.x, x_225.x) * vec3<f32>(x_228.x, x_228.y, x_228.z)) + x_231);
  let x_233 : vec3<f32> = u_xlat2;
  let x_234 : vec3<f32> = u_xlat2;
  u_xlat10.x = dot(x_233, x_234);
  let x_238 : f32 = u_xlat10.x;
  u_xlat10.x = inverseSqrt(x_238);
  let x_241 : vec3<f32> = u_xlat10;
  let x_243 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_241.x, x_241.x, x_241.x) * x_243);
  let x_247 : f32 = vs_TEXCOORD2.w;
  u_xlat3.x = x_247;
  let x_250 : f32 = vs_TEXCOORD3.w;
  u_xlat3.y = x_250;
  let x_254 : f32 = vs_TEXCOORD4.w;
  u_xlat3.z = x_254;
  let x_256 : vec3<f32> = u_xlat3;
  let x_257 : vec3<f32> = u_xlat3;
  u_xlat10.x = dot(x_256, x_257);
  let x_261 : f32 = u_xlat10.x;
  u_xlat10.x = max(x_261, 1.17549435e-37f);
  let x_266 : f32 = u_xlat10.x;
  u_xlat10.x = inverseSqrt(x_266);
  let x_272 : f32 = vs_TEXCOORD1.y;
  let x_275 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat30 = (x_272 * x_275);
  let x_278 : f32 = x_44.unity_MatrixV[0i].z;
  let x_280 : f32 = vs_TEXCOORD1.x;
  let x_282 : f32 = u_xlat30;
  u_xlat30 = ((x_278 * x_280) + x_282);
  let x_285 : f32 = x_44.unity_MatrixV[2i].z;
  let x_287 : f32 = vs_TEXCOORD1.z;
  let x_289 : f32 = u_xlat30;
  u_xlat30 = ((x_285 * x_287) + x_289);
  let x_291 : f32 = u_xlat30;
  let x_294 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat30 = (x_291 + x_294);
  let x_296 : f32 = u_xlat30;
  let x_300 : f32 = x_44.x_ProjectionParams.y;
  u_xlat30 = (-(x_296) + -(x_300));
  let x_303 : f32 = u_xlat30;
  u_xlat30 = max(x_303, 0.0f);
  let x_305 : f32 = u_xlat30;
  let x_308 : f32 = x_44.unity_FogParams.x;
  u_xlat30 = (x_305 * x_308);
  let x_317 : vec2<f32> = vs_TEXCOORD7;
  let x_319 : f32 = x_44.x_GlobalMipBias.x;
  let x_320 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_317, x_319);
  u_xlat4 = vec3<f32>(x_320.x, x_320.y, x_320.z);
  let x_325 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_326 : vec2<f32> = vec2<f32>(x_325.x, x_325.y);
  let x_330 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_326.x, x_326.y));
  let x_331 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_330.x, x_330.y, x_331.z);
  let x_333 : vec3<f32> = u_xlat5;
  let x_335 : vec4<f32> = hlslcc_FragCoord;
  let x_337 : vec2<f32> = (vec2<f32>(x_333.x, x_333.y) * vec2<f32>(x_335.x, x_335.y));
  let x_338 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_337.x, x_337.y, x_338.z);
  let x_341 : f32 = u_xlat5.y;
  let x_344 : f32 = x_44.x_ScaleBiasRt.x;
  let x_347 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat1.x = ((x_341 * x_344) + x_347);
  let x_351 : f32 = u_xlat1.x;
  u_xlat5.z = (-(x_351) + 1.0f);
  let x_360 : vec3<f32> = u_xlat5;
  let x_363 : f32 = x_44.x_GlobalMipBias.x;
  let x_364 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_360.x, x_360.z), x_363);
  u_xlat1.x = x_364.x;
  let x_369 : f32 = u_xlat1.x;
  u_xlat32 = (x_369 + -1.0f);
  let x_373 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_374 : f32 = u_xlat32;
  u_xlat32 = ((x_373 * x_374) + 1.0f);
  let x_378 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_378, 1.0f);
  let x_383 : vec4<f32> = vs_TEXCOORD6;
  let x_384 : vec2<f32> = vec2<f32>(x_383.x, x_383.y);
  let x_386 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_384.x, x_384.y, x_386);
  let x_399 : vec3<f32> = txVec0;
  let x_401 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_399.xy, x_399.z);
  u_xlat33 = x_401;
  let x_409 : f32 = x_407.x_MainLightShadowParams.x;
  u_xlat34 = (-(x_409) + 1.0f);
  let x_412 : f32 = u_xlat33;
  let x_414 : f32 = x_407.x_MainLightShadowParams.x;
  let x_416 : f32 = u_xlat34;
  u_xlat33 = ((x_412 * x_414) + x_416);
  let x_420 : f32 = vs_TEXCOORD6.z;
  u_xlatb34 = (0.0f >= x_420);
  let x_424 : f32 = vs_TEXCOORD6.z;
  u_xlatb5 = (x_424 >= 1.0f);
  let x_426 : bool = u_xlatb34;
  let x_427 : bool = u_xlatb5;
  u_xlatb34 = (x_426 | x_427);
  let x_429 : bool = u_xlatb34;
  let x_430 : f32 = u_xlat33;
  u_xlat33 = select(x_430, 1.0f, x_429);
  let x_432 : vec3<f32> = vs_TEXCOORD1;
  let x_436 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat5 = (x_432 + -(x_436));
  let x_439 : vec3<f32> = u_xlat5;
  let x_440 : vec3<f32> = u_xlat5;
  u_xlat34 = dot(x_439, x_440);
  let x_442 : f32 = u_xlat34;
  let x_444 : f32 = x_407.x_MainLightShadowParams.z;
  let x_447 : f32 = x_407.x_MainLightShadowParams.w;
  u_xlat34 = ((x_442 * x_444) + x_447);
  let x_449 : f32 = u_xlat34;
  u_xlat34 = clamp(x_449, 0.0f, 1.0f);
  let x_451 : f32 = u_xlat33;
  u_xlat5.x = (-(x_451) + 1.0f);
  let x_455 : f32 = u_xlat34;
  let x_457 : f32 = u_xlat5.x;
  let x_459 : f32 = u_xlat33;
  u_xlat33 = ((x_455 * x_457) + x_459);
  let x_461 : f32 = u_xlat32;
  let x_464 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat5 = (vec3<f32>(x_461, x_461, x_461) * vec3<f32>(x_464.x, x_464.y, x_464.z));
  let x_467 : vec4<f32> = u_xlat1;
  let x_469 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_467.x, x_467.x, x_467.x) * x_469);
  let x_471 : f32 = u_xlat33;
  let x_477 : f32 = x_475.unity_LightData.z;
  u_xlat1.x = (x_471 * x_477);
  let x_480 : vec4<f32> = u_xlat1;
  let x_482 : vec3<f32> = u_xlat5;
  u_xlat5 = (vec3<f32>(x_480.x, x_480.x, x_480.x) * x_482);
  let x_484 : vec3<f32> = u_xlat2;
  let x_486 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat1.x = dot(x_484, vec3<f32>(x_486.x, x_486.y, x_486.z));
  let x_491 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_491, 0.0f, 1.0f);
  let x_495 : vec4<f32> = u_xlat1;
  let x_497 : vec3<f32> = u_xlat5;
  u_xlat6 = (vec3<f32>(x_495.x, x_495.x, x_495.x) * x_497);
  let x_500 : f32 = x_57.x_SpecColor.w;
  u_xlat1.x = ((x_500 * 10.0f) + 1.0f);
  let x_506 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_506);
  let x_510 : vec3<f32> = u_xlat3;
  let x_511 : vec3<f32> = u_xlat10;
  let x_515 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat7 = ((x_510 * vec3<f32>(x_511.x, x_511.x, x_511.x)) + vec3<f32>(x_515.x, x_515.y, x_515.z));
  let x_518 : vec3<f32> = u_xlat7;
  let x_519 : vec3<f32> = u_xlat7;
  u_xlat33 = dot(x_518, x_519);
  let x_521 : f32 = u_xlat33;
  u_xlat33 = max(x_521, 1.17549435e-37f);
  let x_523 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_523);
  let x_525 : f32 = u_xlat33;
  let x_527 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_525, x_525, x_525) * x_527);
  let x_529 : vec3<f32> = u_xlat2;
  let x_530 : vec3<f32> = u_xlat7;
  u_xlat33 = dot(x_529, x_530);
  let x_532 : f32 = u_xlat33;
  u_xlat33 = clamp(x_532, 0.0f, 1.0f);
  let x_534 : f32 = u_xlat33;
  u_xlat33 = log2(x_534);
  let x_537 : f32 = u_xlat1.x;
  let x_538 : f32 = u_xlat33;
  u_xlat33 = (x_537 * x_538);
  let x_540 : f32 = u_xlat33;
  u_xlat33 = exp2(x_540);
  let x_542 : f32 = u_xlat33;
  let x_545 : vec4<f32> = x_57.x_SpecColor;
  u_xlat7 = (vec3<f32>(x_542, x_542, x_542) * vec3<f32>(x_545.x, x_545.y, x_545.z));
  let x_548 : vec3<f32> = u_xlat5;
  let x_549 : vec3<f32> = u_xlat7;
  u_xlat5 = (x_548 * x_549);
  let x_551 : vec3<f32> = u_xlat6;
  let x_552 : vec4<f32> = u_xlat1;
  let x_555 : vec3<f32> = u_xlat5;
  u_xlat5 = ((x_551 * vec3<f32>(x_552.y, x_552.z, x_552.w)) + x_555);
  let x_559 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_561 : f32 = x_475.unity_LightData.y;
  u_xlat33 = min(x_559, x_561);
  let x_565 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_565));
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_577 : u32 = u_xlatu_loop_1;
    let x_578 : u32 = u_xlatu33;
    if ((x_577 < x_578)) {
    } else {
      break;
    }
    let x_581 : u32 = u_xlatu_loop_1;
    u_xlatu35 = (x_581 >> 2u);
    let x_585 : u32 = u_xlatu_loop_1;
    u_xlati36 = bitcast<i32>((x_585 & 3u));
    let x_589 : u32 = u_xlatu35;
    let x_592 : vec4<f32> = x_475.unity_LightIndices[bitcast<i32>(x_589)];
    let x_602 : i32 = u_xlati36;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_607 : vec4<u32> = indexable[x_602];
    u_xlat35 = dot(x_592, bitcast<vec4<f32>>(x_607));
    let x_611 : f32 = u_xlat35;
    u_xlati35 = i32(x_611);
    let x_613 : vec3<f32> = vs_TEXCOORD1;
    let x_625 : i32 = u_xlati35;
    let x_627 : vec4<f32> = x_624.x_AdditionalLightsPosition[x_625];
    let x_630 : i32 = u_xlati35;
    let x_632 : vec4<f32> = x_624.x_AdditionalLightsPosition[x_630];
    u_xlat7 = ((-(x_613) * vec3<f32>(x_627.w, x_627.w, x_627.w)) + vec3<f32>(x_632.x, x_632.y, x_632.z));
    let x_636 : vec3<f32> = u_xlat7;
    let x_637 : vec3<f32> = u_xlat7;
    u_xlat36 = dot(x_636, x_637);
    let x_639 : f32 = u_xlat36;
    u_xlat36 = max(x_639, 6.10351562e-05f);
    let x_643 : f32 = u_xlat36;
    u_xlat37 = inverseSqrt(x_643);
    let x_645 : f32 = u_xlat37;
    let x_647 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_645, x_645, x_645) * x_647);
    let x_649 : f32 = u_xlat36;
    u_xlat37 = (1.0f / x_649);
    let x_651 : f32 = u_xlat36;
    let x_652 : i32 = u_xlati35;
    let x_654 : f32 = x_624.x_AdditionalLightsAttenuation[x_652].x;
    u_xlat36 = (x_651 * x_654);
    let x_656 : f32 = u_xlat36;
    let x_658 : f32 = u_xlat36;
    u_xlat36 = ((-(x_656) * x_658) + 1.0f);
    let x_661 : f32 = u_xlat36;
    u_xlat36 = max(x_661, 0.0f);
    let x_663 : f32 = u_xlat36;
    let x_664 : f32 = u_xlat36;
    u_xlat36 = (x_663 * x_664);
    let x_666 : f32 = u_xlat36;
    let x_667 : f32 = u_xlat37;
    u_xlat36 = (x_666 * x_667);
    let x_669 : i32 = u_xlati35;
    let x_671 : vec4<f32> = x_624.x_AdditionalLightsSpotDir[x_669];
    let x_673 : vec3<f32> = u_xlat7;
    u_xlat37 = dot(vec3<f32>(x_671.x, x_671.y, x_671.z), x_673);
    let x_675 : f32 = u_xlat37;
    let x_676 : i32 = u_xlati35;
    let x_678 : f32 = x_624.x_AdditionalLightsAttenuation[x_676].z;
    let x_680 : i32 = u_xlati35;
    let x_682 : f32 = x_624.x_AdditionalLightsAttenuation[x_680].w;
    u_xlat37 = ((x_675 * x_678) + x_682);
    let x_684 : f32 = u_xlat37;
    u_xlat37 = clamp(x_684, 0.0f, 1.0f);
    let x_686 : f32 = u_xlat37;
    let x_687 : f32 = u_xlat37;
    u_xlat37 = (x_686 * x_687);
    let x_689 : f32 = u_xlat36;
    let x_690 : f32 = u_xlat37;
    u_xlat36 = (x_689 * x_690);
    let x_693 : f32 = u_xlat32;
    let x_695 : i32 = u_xlati35;
    let x_697 : vec4<f32> = x_624.x_AdditionalLightsColor[x_695];
    u_xlat8 = (vec3<f32>(x_693, x_693, x_693) * vec3<f32>(x_697.x, x_697.y, x_697.z));
    let x_700 : f32 = u_xlat36;
    let x_702 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_700, x_700, x_700) * x_702);
    let x_704 : vec3<f32> = u_xlat2;
    let x_705 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(x_704, x_705);
    let x_707 : f32 = u_xlat35;
    u_xlat35 = clamp(x_707, 0.0f, 1.0f);
    let x_710 : f32 = u_xlat35;
    let x_712 : vec3<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_710, x_710, x_710) * x_712);
    let x_714 : vec3<f32> = u_xlat3;
    let x_715 : vec3<f32> = u_xlat10;
    let x_718 : vec3<f32> = u_xlat7;
    u_xlat7 = ((x_714 * vec3<f32>(x_715.x, x_715.x, x_715.x)) + x_718);
    let x_720 : vec3<f32> = u_xlat7;
    let x_721 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(x_720, x_721);
    let x_723 : f32 = u_xlat35;
    u_xlat35 = max(x_723, 1.17549435e-37f);
    let x_725 : f32 = u_xlat35;
    u_xlat35 = inverseSqrt(x_725);
    let x_727 : f32 = u_xlat35;
    let x_729 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_727, x_727, x_727) * x_729);
    let x_731 : vec3<f32> = u_xlat2;
    let x_732 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(x_731, x_732);
    let x_734 : f32 = u_xlat35;
    u_xlat35 = clamp(x_734, 0.0f, 1.0f);
    let x_736 : f32 = u_xlat35;
    u_xlat35 = log2(x_736);
    let x_739 : f32 = u_xlat1.x;
    let x_740 : f32 = u_xlat35;
    u_xlat35 = (x_739 * x_740);
    let x_742 : f32 = u_xlat35;
    u_xlat35 = exp2(x_742);
    let x_744 : f32 = u_xlat35;
    let x_747 : vec4<f32> = x_57.x_SpecColor;
    u_xlat7 = (vec3<f32>(x_744, x_744, x_744) * vec3<f32>(x_747.x, x_747.y, x_747.z));
    let x_750 : vec3<f32> = u_xlat7;
    let x_751 : vec3<f32> = u_xlat8;
    u_xlat7 = (x_750 * x_751);
    let x_753 : vec3<f32> = u_xlat9;
    let x_754 : vec4<f32> = u_xlat1;
    let x_757 : vec3<f32> = u_xlat7;
    u_xlat7 = ((x_753 * vec3<f32>(x_754.y, x_754.z, x_754.w)) + x_757);
    let x_759 : vec3<f32> = u_xlat6;
    let x_760 : vec3<f32> = u_xlat7;
    u_xlat6 = (x_759 + x_760);

    continuing {
      let x_762 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_762 + bitcast<u32>(1i));
    }
  }
  let x_764 : vec3<f32> = u_xlat4;
  let x_765 : vec4<f32> = u_xlat1;
  let x_768 : vec3<f32> = u_xlat5;
  let x_769 : vec3<f32> = ((x_764 * vec3<f32>(x_765.y, x_765.z, x_765.w)) + x_768);
  let x_770 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_769.x, x_769.y, x_769.z, x_770.w);
  let x_772 : vec3<f32> = u_xlat6;
  let x_773 : vec4<f32> = u_xlat1;
  let x_775 : vec3<f32> = (x_772 + vec3<f32>(x_773.x, x_773.y, x_773.z));
  let x_776 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_775.x, x_775.y, x_775.z, x_776.w);
  let x_778 : f32 = u_xlat30;
  let x_779 : f32 = u_xlat30;
  u_xlat10.x = (x_778 * -(x_779));
  let x_784 : f32 = u_xlat10.x;
  u_xlat10.x = exp2(x_784);
  let x_787 : vec4<f32> = u_xlat1;
  let x_791 : vec4<f32> = x_44.unity_FogColor;
  let x_794 : vec3<f32> = (vec3<f32>(x_787.x, x_787.y, x_787.z) + -(vec3<f32>(x_791.x, x_791.y, x_791.z)));
  let x_795 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_794.x, x_794.y, x_794.z, x_795.w);
  let x_799 : vec3<f32> = u_xlat10;
  let x_801 : vec4<f32> = u_xlat1;
  let x_805 : vec4<f32> = x_44.unity_FogColor;
  let x_807 : vec3<f32> = ((vec3<f32>(x_799.x, x_799.x, x_799.x) * vec3<f32>(x_801.x, x_801.y, x_801.z)) + vec3<f32>(x_805.x, x_805.y, x_805.z));
  let x_808 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_807.x, x_807.y, x_807.z, x_808.w);
  let x_811 : f32 = x_57.x_Surface;
  u_xlatb10 = (x_811 == 1.0f);
  let x_813 : bool = u_xlatb10;
  let x_814 : bool = u_xlatb20;
  u_xlatb10 = (x_813 | x_814);
  let x_816 : bool = u_xlatb10;
  if (x_816) {
    let x_821 : f32 = u_xlat0.x;
    x_817 = x_821;
  } else {
    x_817 = 1.0f;
  }
  let x_823 : f32 = x_817;
  SV_Target0.w = x_823;
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

