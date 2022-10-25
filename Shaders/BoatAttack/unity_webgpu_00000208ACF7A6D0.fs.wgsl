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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(7) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

@group(0) @binding(3) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(6) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(4) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_448 : MainLightShadows;

@group(1) @binding(2) var<uniform> x_519 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_668 : AdditionalLights;

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
  var u_xlat4 : vec4<f32>;
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
  var x_862 : f32;
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
  let x_320 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_317, x_319);
  u_xlat4 = x_320;
  let x_326 : vec2<f32> = vs_TEXCOORD7;
  let x_328 : f32 = x_44.x_GlobalMipBias.x;
  let x_329 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_326, x_328);
  u_xlat5 = vec3<f32>(x_329.x, x_329.y, x_329.z);
  let x_331 : vec4<f32> = u_xlat4;
  let x_335 : vec3<f32> = (vec3<f32>(x_331.x, x_331.y, x_331.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_336 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_335.x, x_335.y, x_335.z, x_336.w);
  let x_338 : vec3<f32> = u_xlat2;
  let x_339 : vec4<f32> = u_xlat4;
  u_xlat1.x = dot(x_338, vec3<f32>(x_339.x, x_339.y, x_339.z));
  let x_344 : f32 = u_xlat1.x;
  u_xlat1.x = (x_344 + 0.5f);
  let x_347 : vec4<f32> = u_xlat1;
  let x_349 : vec3<f32> = u_xlat5;
  let x_350 : vec3<f32> = (vec3<f32>(x_347.x, x_347.x, x_347.x) * x_349);
  let x_351 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_350.x, x_350.y, x_350.z, x_351.w);
  let x_354 : f32 = u_xlat4.w;
  u_xlat1.x = max(x_354, 0.0001f);
  let x_357 : vec4<f32> = u_xlat4;
  let x_359 : vec4<f32> = u_xlat1;
  let x_361 : vec3<f32> = (vec3<f32>(x_357.x, x_357.y, x_357.z) / vec3<f32>(x_359.x, x_359.x, x_359.x));
  let x_362 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_361.x, x_361.y, x_361.z, x_362.w);
  let x_366 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_367 : vec2<f32> = vec2<f32>(x_366.x, x_366.y);
  let x_371 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_367.x, x_367.y));
  let x_372 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_371.x, x_371.y, x_372.z);
  let x_374 : vec3<f32> = u_xlat5;
  let x_376 : vec4<f32> = hlslcc_FragCoord;
  let x_378 : vec2<f32> = (vec2<f32>(x_374.x, x_374.y) * vec2<f32>(x_376.x, x_376.y));
  let x_379 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_378.x, x_378.y, x_379.z);
  let x_382 : f32 = u_xlat5.y;
  let x_385 : f32 = x_44.x_ScaleBiasRt.x;
  let x_388 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat1.x = ((x_382 * x_385) + x_388);
  let x_392 : f32 = u_xlat1.x;
  u_xlat5.z = (-(x_392) + 1.0f);
  let x_401 : vec3<f32> = u_xlat5;
  let x_404 : f32 = x_44.x_GlobalMipBias.x;
  let x_405 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_401.x, x_401.z), x_404);
  u_xlat1.x = x_405.x;
  let x_410 : f32 = u_xlat1.x;
  u_xlat32 = (x_410 + -1.0f);
  let x_414 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_415 : f32 = u_xlat32;
  u_xlat32 = ((x_414 * x_415) + 1.0f);
  let x_419 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_419, 1.0f);
  let x_424 : vec4<f32> = vs_TEXCOORD6;
  let x_425 : vec2<f32> = vec2<f32>(x_424.x, x_424.y);
  let x_427 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_425.x, x_425.y, x_427);
  let x_440 : vec3<f32> = txVec0;
  let x_442 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_440.xy, x_440.z);
  u_xlat33 = x_442;
  let x_450 : f32 = x_448.x_MainLightShadowParams.x;
  u_xlat34 = (-(x_450) + 1.0f);
  let x_453 : f32 = u_xlat33;
  let x_455 : f32 = x_448.x_MainLightShadowParams.x;
  let x_457 : f32 = u_xlat34;
  u_xlat33 = ((x_453 * x_455) + x_457);
  let x_461 : f32 = vs_TEXCOORD6.z;
  u_xlatb34 = (0.0f >= x_461);
  let x_465 : f32 = vs_TEXCOORD6.z;
  u_xlatb5 = (x_465 >= 1.0f);
  let x_467 : bool = u_xlatb34;
  let x_468 : bool = u_xlatb5;
  u_xlatb34 = (x_467 | x_468);
  let x_470 : bool = u_xlatb34;
  let x_471 : f32 = u_xlat33;
  u_xlat33 = select(x_471, 1.0f, x_470);
  let x_473 : vec3<f32> = vs_TEXCOORD1;
  let x_477 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat5 = (x_473 + -(x_477));
  let x_480 : vec3<f32> = u_xlat5;
  let x_481 : vec3<f32> = u_xlat5;
  u_xlat34 = dot(x_480, x_481);
  let x_483 : f32 = u_xlat34;
  let x_485 : f32 = x_448.x_MainLightShadowParams.z;
  let x_488 : f32 = x_448.x_MainLightShadowParams.w;
  u_xlat34 = ((x_483 * x_485) + x_488);
  let x_490 : f32 = u_xlat34;
  u_xlat34 = clamp(x_490, 0.0f, 1.0f);
  let x_492 : f32 = u_xlat33;
  u_xlat5.x = (-(x_492) + 1.0f);
  let x_496 : f32 = u_xlat34;
  let x_498 : f32 = u_xlat5.x;
  let x_500 : f32 = u_xlat33;
  u_xlat33 = ((x_496 * x_498) + x_500);
  let x_502 : f32 = u_xlat32;
  let x_505 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat5 = (vec3<f32>(x_502, x_502, x_502) * vec3<f32>(x_505.x, x_505.y, x_505.z));
  let x_508 : vec4<f32> = u_xlat1;
  let x_510 : vec4<f32> = u_xlat4;
  let x_512 : vec3<f32> = (vec3<f32>(x_508.x, x_508.x, x_508.x) * vec3<f32>(x_510.x, x_510.y, x_510.z));
  let x_513 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_512.x, x_512.y, x_512.z, x_513.w);
  let x_515 : f32 = u_xlat33;
  let x_521 : f32 = x_519.unity_LightData.z;
  u_xlat1.x = (x_515 * x_521);
  let x_524 : vec4<f32> = u_xlat1;
  let x_526 : vec3<f32> = u_xlat5;
  u_xlat5 = (vec3<f32>(x_524.x, x_524.x, x_524.x) * x_526);
  let x_528 : vec3<f32> = u_xlat2;
  let x_530 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat1.x = dot(x_528, vec3<f32>(x_530.x, x_530.y, x_530.z));
  let x_535 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_535, 0.0f, 1.0f);
  let x_539 : vec4<f32> = u_xlat1;
  let x_541 : vec3<f32> = u_xlat5;
  u_xlat6 = (vec3<f32>(x_539.x, x_539.x, x_539.x) * x_541);
  let x_544 : f32 = x_57.x_SpecColor.w;
  u_xlat1.x = ((x_544 * 10.0f) + 1.0f);
  let x_550 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_550);
  let x_554 : vec3<f32> = u_xlat3;
  let x_555 : vec3<f32> = u_xlat10;
  let x_559 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat7 = ((x_554 * vec3<f32>(x_555.x, x_555.x, x_555.x)) + vec3<f32>(x_559.x, x_559.y, x_559.z));
  let x_562 : vec3<f32> = u_xlat7;
  let x_563 : vec3<f32> = u_xlat7;
  u_xlat33 = dot(x_562, x_563);
  let x_565 : f32 = u_xlat33;
  u_xlat33 = max(x_565, 1.17549435e-37f);
  let x_567 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_567);
  let x_569 : f32 = u_xlat33;
  let x_571 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_569, x_569, x_569) * x_571);
  let x_573 : vec3<f32> = u_xlat2;
  let x_574 : vec3<f32> = u_xlat7;
  u_xlat33 = dot(x_573, x_574);
  let x_576 : f32 = u_xlat33;
  u_xlat33 = clamp(x_576, 0.0f, 1.0f);
  let x_578 : f32 = u_xlat33;
  u_xlat33 = log2(x_578);
  let x_581 : f32 = u_xlat1.x;
  let x_582 : f32 = u_xlat33;
  u_xlat33 = (x_581 * x_582);
  let x_584 : f32 = u_xlat33;
  u_xlat33 = exp2(x_584);
  let x_586 : f32 = u_xlat33;
  let x_589 : vec4<f32> = x_57.x_SpecColor;
  u_xlat7 = (vec3<f32>(x_586, x_586, x_586) * vec3<f32>(x_589.x, x_589.y, x_589.z));
  let x_592 : vec3<f32> = u_xlat5;
  let x_593 : vec3<f32> = u_xlat7;
  u_xlat5 = (x_592 * x_593);
  let x_595 : vec3<f32> = u_xlat6;
  let x_596 : vec4<f32> = u_xlat1;
  let x_599 : vec3<f32> = u_xlat5;
  u_xlat5 = ((x_595 * vec3<f32>(x_596.y, x_596.z, x_596.w)) + x_599);
  let x_603 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_605 : f32 = x_519.unity_LightData.y;
  u_xlat33 = min(x_603, x_605);
  let x_609 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_609));
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_621 : u32 = u_xlatu_loop_1;
    let x_622 : u32 = u_xlatu33;
    if ((x_621 < x_622)) {
    } else {
      break;
    }
    let x_625 : u32 = u_xlatu_loop_1;
    u_xlatu35 = (x_625 >> 2u);
    let x_629 : u32 = u_xlatu_loop_1;
    u_xlati36 = bitcast<i32>((x_629 & 3u));
    let x_633 : u32 = u_xlatu35;
    let x_636 : vec4<f32> = x_519.unity_LightIndices[bitcast<i32>(x_633)];
    let x_646 : i32 = u_xlati36;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_651 : vec4<u32> = indexable[x_646];
    u_xlat35 = dot(x_636, bitcast<vec4<f32>>(x_651));
    let x_655 : f32 = u_xlat35;
    u_xlati35 = i32(x_655);
    let x_657 : vec3<f32> = vs_TEXCOORD1;
    let x_669 : i32 = u_xlati35;
    let x_671 : vec4<f32> = x_668.x_AdditionalLightsPosition[x_669];
    let x_674 : i32 = u_xlati35;
    let x_676 : vec4<f32> = x_668.x_AdditionalLightsPosition[x_674];
    u_xlat7 = ((-(x_657) * vec3<f32>(x_671.w, x_671.w, x_671.w)) + vec3<f32>(x_676.x, x_676.y, x_676.z));
    let x_680 : vec3<f32> = u_xlat7;
    let x_681 : vec3<f32> = u_xlat7;
    u_xlat36 = dot(x_680, x_681);
    let x_683 : f32 = u_xlat36;
    u_xlat36 = max(x_683, 6.10351562e-05f);
    let x_687 : f32 = u_xlat36;
    u_xlat37 = inverseSqrt(x_687);
    let x_689 : f32 = u_xlat37;
    let x_691 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_689, x_689, x_689) * x_691);
    let x_693 : f32 = u_xlat36;
    u_xlat37 = (1.0f / x_693);
    let x_695 : f32 = u_xlat36;
    let x_696 : i32 = u_xlati35;
    let x_698 : f32 = x_668.x_AdditionalLightsAttenuation[x_696].x;
    u_xlat36 = (x_695 * x_698);
    let x_700 : f32 = u_xlat36;
    let x_702 : f32 = u_xlat36;
    u_xlat36 = ((-(x_700) * x_702) + 1.0f);
    let x_705 : f32 = u_xlat36;
    u_xlat36 = max(x_705, 0.0f);
    let x_707 : f32 = u_xlat36;
    let x_708 : f32 = u_xlat36;
    u_xlat36 = (x_707 * x_708);
    let x_710 : f32 = u_xlat36;
    let x_711 : f32 = u_xlat37;
    u_xlat36 = (x_710 * x_711);
    let x_713 : i32 = u_xlati35;
    let x_715 : vec4<f32> = x_668.x_AdditionalLightsSpotDir[x_713];
    let x_717 : vec3<f32> = u_xlat7;
    u_xlat37 = dot(vec3<f32>(x_715.x, x_715.y, x_715.z), x_717);
    let x_719 : f32 = u_xlat37;
    let x_720 : i32 = u_xlati35;
    let x_722 : f32 = x_668.x_AdditionalLightsAttenuation[x_720].z;
    let x_724 : i32 = u_xlati35;
    let x_726 : f32 = x_668.x_AdditionalLightsAttenuation[x_724].w;
    u_xlat37 = ((x_719 * x_722) + x_726);
    let x_728 : f32 = u_xlat37;
    u_xlat37 = clamp(x_728, 0.0f, 1.0f);
    let x_730 : f32 = u_xlat37;
    let x_731 : f32 = u_xlat37;
    u_xlat37 = (x_730 * x_731);
    let x_733 : f32 = u_xlat36;
    let x_734 : f32 = u_xlat37;
    u_xlat36 = (x_733 * x_734);
    let x_737 : f32 = u_xlat32;
    let x_739 : i32 = u_xlati35;
    let x_741 : vec4<f32> = x_668.x_AdditionalLightsColor[x_739];
    u_xlat8 = (vec3<f32>(x_737, x_737, x_737) * vec3<f32>(x_741.x, x_741.y, x_741.z));
    let x_744 : f32 = u_xlat36;
    let x_746 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_744, x_744, x_744) * x_746);
    let x_748 : vec3<f32> = u_xlat2;
    let x_749 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(x_748, x_749);
    let x_751 : f32 = u_xlat35;
    u_xlat35 = clamp(x_751, 0.0f, 1.0f);
    let x_754 : f32 = u_xlat35;
    let x_756 : vec3<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_754, x_754, x_754) * x_756);
    let x_758 : vec3<f32> = u_xlat3;
    let x_759 : vec3<f32> = u_xlat10;
    let x_762 : vec3<f32> = u_xlat7;
    u_xlat7 = ((x_758 * vec3<f32>(x_759.x, x_759.x, x_759.x)) + x_762);
    let x_764 : vec3<f32> = u_xlat7;
    let x_765 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(x_764, x_765);
    let x_767 : f32 = u_xlat35;
    u_xlat35 = max(x_767, 1.17549435e-37f);
    let x_769 : f32 = u_xlat35;
    u_xlat35 = inverseSqrt(x_769);
    let x_771 : f32 = u_xlat35;
    let x_773 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_771, x_771, x_771) * x_773);
    let x_775 : vec3<f32> = u_xlat2;
    let x_776 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(x_775, x_776);
    let x_778 : f32 = u_xlat35;
    u_xlat35 = clamp(x_778, 0.0f, 1.0f);
    let x_780 : f32 = u_xlat35;
    u_xlat35 = log2(x_780);
    let x_783 : f32 = u_xlat1.x;
    let x_784 : f32 = u_xlat35;
    u_xlat35 = (x_783 * x_784);
    let x_786 : f32 = u_xlat35;
    u_xlat35 = exp2(x_786);
    let x_788 : f32 = u_xlat35;
    let x_791 : vec4<f32> = x_57.x_SpecColor;
    u_xlat7 = (vec3<f32>(x_788, x_788, x_788) * vec3<f32>(x_791.x, x_791.y, x_791.z));
    let x_794 : vec3<f32> = u_xlat7;
    let x_795 : vec3<f32> = u_xlat8;
    u_xlat7 = (x_794 * x_795);
    let x_797 : vec3<f32> = u_xlat9;
    let x_798 : vec4<f32> = u_xlat1;
    let x_801 : vec3<f32> = u_xlat7;
    u_xlat7 = ((x_797 * vec3<f32>(x_798.y, x_798.z, x_798.w)) + x_801);
    let x_803 : vec3<f32> = u_xlat6;
    let x_804 : vec3<f32> = u_xlat7;
    u_xlat6 = (x_803 + x_804);

    continuing {
      let x_806 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_806 + bitcast<u32>(1i));
    }
  }
  let x_808 : vec4<f32> = u_xlat4;
  let x_810 : vec4<f32> = u_xlat1;
  let x_813 : vec3<f32> = u_xlat5;
  let x_814 : vec3<f32> = ((vec3<f32>(x_808.x, x_808.y, x_808.z) * vec3<f32>(x_810.y, x_810.z, x_810.w)) + x_813);
  let x_815 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_814.x, x_814.y, x_814.z, x_815.w);
  let x_817 : vec3<f32> = u_xlat6;
  let x_818 : vec4<f32> = u_xlat1;
  let x_820 : vec3<f32> = (x_817 + vec3<f32>(x_818.x, x_818.y, x_818.z));
  let x_821 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_820.x, x_820.y, x_820.z, x_821.w);
  let x_823 : f32 = u_xlat30;
  let x_824 : f32 = u_xlat30;
  u_xlat10.x = (x_823 * -(x_824));
  let x_829 : f32 = u_xlat10.x;
  u_xlat10.x = exp2(x_829);
  let x_832 : vec4<f32> = u_xlat1;
  let x_836 : vec4<f32> = x_44.unity_FogColor;
  let x_839 : vec3<f32> = (vec3<f32>(x_832.x, x_832.y, x_832.z) + -(vec3<f32>(x_836.x, x_836.y, x_836.z)));
  let x_840 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_839.x, x_839.y, x_839.z, x_840.w);
  let x_844 : vec3<f32> = u_xlat10;
  let x_846 : vec4<f32> = u_xlat1;
  let x_850 : vec4<f32> = x_44.unity_FogColor;
  let x_852 : vec3<f32> = ((vec3<f32>(x_844.x, x_844.x, x_844.x) * vec3<f32>(x_846.x, x_846.y, x_846.z)) + vec3<f32>(x_850.x, x_850.y, x_850.z));
  let x_853 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_852.x, x_852.y, x_852.z, x_853.w);
  let x_856 : f32 = x_57.x_Surface;
  u_xlatb10 = (x_856 == 1.0f);
  let x_858 : bool = u_xlatb10;
  let x_859 : bool = u_xlatb20;
  u_xlatb10 = (x_858 | x_859);
  let x_861 : bool = u_xlatb10;
  if (x_861) {
    let x_866 : f32 = u_xlat0.x;
    x_862 = x_866;
  } else {
    x_862 = 1.0f;
  }
  let x_868 : f32 = x_862;
  SV_Target0.w = x_868;
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

