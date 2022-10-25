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

@group(0) @binding(5) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

@group(0) @binding(1) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BumpMap : sampler;

@group(0) @binding(4) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_238 : UnityPerDraw;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_353 : MainLightShadows;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(1) var<uniform> x_974 : AdditionalLights;

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
  var u_xlat2 : vec4<f32>;
  var u_xlatb12 : bool;
  var x_243 : f32;
  var u_xlatb2 : bool;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlatb4 : vec4<bool>;
  var u_xlatu30 : u32;
  var u_xlati30 : i32;
  var u_xlat32 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat33 : f32;
  var u_xlatb14 : bool;
  var u_xlat14 : f32;
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
  var x_1175 : f32;
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
  let x_169 : vec3<f32> = vec3<f32>(x_168.x, x_168.y, x_168.w);
  let x_170 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_169.x, x_169.y, x_169.z, x_170.w);
  let x_173 : f32 = u_xlat2.x;
  let x_176 : f32 = u_xlat2.z;
  u_xlat2.x = (x_173 * x_176);
  let x_179 : vec4<f32> = u_xlat2;
  let x_186 : vec2<f32> = ((vec2<f32>(x_179.x, x_179.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_187 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_186.x, x_187.y, x_186.y);
  let x_189 : vec3<f32> = u_xlat10;
  let x_191 : vec3<f32> = u_xlat10;
  u_xlat1.x = dot(vec2<f32>(x_189.x, x_189.z), vec2<f32>(x_191.x, x_191.z));
  let x_196 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_196, 1.0f);
  let x_200 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_200) + 1.0f);
  let x_205 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_205);
  let x_209 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_209, 1.00000002e-16f);
  let x_213 : vec4<f32> = hlslcc_FragCoord;
  let x_217 : f32 = x_44.x_DitheringTextureInvSize;
  let x_219 : vec2<f32> = (vec2<f32>(x_213.x, x_213.y) * vec2<f32>(x_217, x_217));
  let x_220 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_219.x, x_219.y, x_220.z, x_220.w);
  let x_227 : vec4<f32> = u_xlat2;
  let x_230 : f32 = x_44.x_GlobalMipBias.x;
  let x_231 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_227.x, x_227.y), x_230);
  u_xlat2.x = x_231.w;
  let x_240 : f32 = x_238.unity_LODFade.x;
  u_xlatb12 = (x_240 >= 0.0f);
  let x_242 : bool = u_xlatb12;
  if (x_242) {
    let x_247 : f32 = u_xlat2.x;
    x_243 = abs(x_247);
  } else {
    let x_251 : f32 = u_xlat2.x;
    x_243 = -(abs(x_251));
  }
  let x_254 : f32 = x_243;
  u_xlat2.x = x_254;
  let x_257 : f32 = u_xlat2.x;
  let x_260 : f32 = x_238.unity_LODFade.x;
  u_xlat2.x = (-(x_257) + x_260);
  let x_265 : f32 = u_xlat2.x;
  u_xlatb2 = (x_265 < 0.0f);
  let x_267 : bool = u_xlatb2;
  if (((select(0i, 1i, x_267) * -1i) != 0i)) {
    discard;
  }
  let x_274 : vec3<f32> = u_xlat10;
  let x_277 : vec4<f32> = vs_TEXCOORD4;
  let x_279 : vec3<f32> = (vec3<f32>(x_274.z, x_274.z, x_274.z) * vec3<f32>(x_277.x, x_277.y, x_277.z));
  let x_280 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_279.x, x_279.y, x_279.z, x_280.w);
  let x_282 : vec3<f32> = u_xlat10;
  let x_285 : vec4<f32> = vs_TEXCOORD3;
  let x_288 : vec4<f32> = u_xlat2;
  let x_290 : vec3<f32> = ((vec3<f32>(x_282.x, x_282.x, x_282.x) * vec3<f32>(x_285.x, x_285.y, x_285.z)) + vec3<f32>(x_288.x, x_288.y, x_288.z));
  let x_291 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_290.x, x_290.y, x_290.z, x_291.w);
  let x_293 : vec4<f32> = u_xlat1;
  let x_296 : vec4<f32> = vs_TEXCOORD2;
  let x_299 : vec4<f32> = u_xlat2;
  let x_301 : vec3<f32> = ((vec3<f32>(x_293.x, x_293.x, x_293.x) * vec3<f32>(x_296.x, x_296.y, x_296.z)) + vec3<f32>(x_299.x, x_299.y, x_299.z));
  let x_302 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_301.x, x_301.y, x_301.z, x_302.w);
  let x_304 : vec4<f32> = u_xlat2;
  let x_306 : vec4<f32> = u_xlat2;
  u_xlat10.x = dot(vec3<f32>(x_304.x, x_304.y, x_304.z), vec3<f32>(x_306.x, x_306.y, x_306.z));
  let x_311 : f32 = u_xlat10.x;
  u_xlat10.x = inverseSqrt(x_311);
  let x_314 : vec3<f32> = u_xlat10;
  let x_316 : vec4<f32> = u_xlat2;
  let x_318 : vec3<f32> = (vec3<f32>(x_314.x, x_314.x, x_314.x) * vec3<f32>(x_316.x, x_316.y, x_316.z));
  let x_319 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
  let x_323 : f32 = vs_TEXCOORD2.w;
  u_xlat3.x = x_323;
  let x_326 : f32 = vs_TEXCOORD3.w;
  u_xlat3.y = x_326;
  let x_330 : f32 = vs_TEXCOORD4.w;
  u_xlat3.z = x_330;
  let x_332 : vec3<f32> = u_xlat3;
  let x_333 : vec3<f32> = u_xlat3;
  u_xlat10.x = dot(x_332, x_333);
  let x_337 : f32 = u_xlat10.x;
  u_xlat10.x = max(x_337, 1.17549435e-37f);
  let x_342 : f32 = u_xlat10.x;
  u_xlat10.x = inverseSqrt(x_342);
  let x_348 : vec3<f32> = vs_TEXCOORD1;
  let x_355 : vec4<f32> = x_353.x_CascadeShadowSplitSpheres0;
  let x_358 : vec3<f32> = (x_348 + -(vec3<f32>(x_355.x, x_355.y, x_355.z)));
  let x_359 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_358.x, x_358.y, x_358.z, x_359.w);
  let x_362 : vec3<f32> = vs_TEXCOORD1;
  let x_364 : vec4<f32> = x_353.x_CascadeShadowSplitSpheres1;
  let x_367 : vec3<f32> = (x_362 + -(vec3<f32>(x_364.x, x_364.y, x_364.z)));
  let x_368 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_367.x, x_367.y, x_367.z, x_368.w);
  let x_371 : vec3<f32> = vs_TEXCOORD1;
  let x_374 : vec4<f32> = x_353.x_CascadeShadowSplitSpheres2;
  let x_377 : vec3<f32> = (x_371 + -(vec3<f32>(x_374.x, x_374.y, x_374.z)));
  let x_378 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_377.x, x_377.y, x_377.z, x_378.w);
  let x_381 : vec3<f32> = vs_TEXCOORD1;
  let x_383 : vec4<f32> = x_353.x_CascadeShadowSplitSpheres3;
  u_xlat7 = (x_381 + -(vec3<f32>(x_383.x, x_383.y, x_383.z)));
  let x_387 : vec4<f32> = u_xlat4;
  let x_389 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_387.x, x_387.y, x_387.z), vec3<f32>(x_389.x, x_389.y, x_389.z));
  let x_393 : vec4<f32> = u_xlat5;
  let x_395 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_393.x, x_393.y, x_393.z), vec3<f32>(x_395.x, x_395.y, x_395.z));
  let x_399 : vec4<f32> = u_xlat6;
  let x_401 : vec4<f32> = u_xlat6;
  u_xlat4.z = dot(vec3<f32>(x_399.x, x_399.y, x_399.z), vec3<f32>(x_401.x, x_401.y, x_401.z));
  let x_405 : vec3<f32> = u_xlat7;
  let x_406 : vec3<f32> = u_xlat7;
  u_xlat4.w = dot(x_405, x_406);
  let x_412 : vec4<f32> = u_xlat4;
  let x_415 : vec4<f32> = x_353.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_412 < x_415);
  let x_418 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_418);
  let x_422 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_422);
  let x_426 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_426);
  let x_430 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_430);
  let x_434 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_434);
  let x_439 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_439);
  let x_443 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_443);
  let x_446 : vec4<f32> = u_xlat4;
  let x_448 : vec4<f32> = u_xlat5;
  let x_450 : vec3<f32> = (vec3<f32>(x_446.x, x_446.y, x_446.z) + vec3<f32>(x_448.y, x_448.z, x_448.w));
  let x_451 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_450.x, x_450.y, x_450.z, x_451.w);
  let x_453 : vec4<f32> = u_xlat4;
  let x_456 : vec3<f32> = max(vec3<f32>(x_453.x, x_453.y, x_453.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_457 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_457.x, x_456.x, x_456.y, x_456.z);
  let x_459 : vec4<f32> = u_xlat5;
  u_xlat30 = dot(x_459, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_464 : f32 = u_xlat30;
  u_xlat30 = (-(x_464) + 4.0f);
  let x_469 : f32 = u_xlat30;
  u_xlatu30 = u32(x_469);
  let x_473 : u32 = u_xlatu30;
  u_xlati30 = (bitcast<i32>(x_473) << bitcast<u32>(2i));
  let x_476 : vec3<f32> = vs_TEXCOORD1;
  let x_478 : i32 = u_xlati30;
  let x_481 : i32 = u_xlati30;
  let x_485 : vec4<f32> = x_353.x_MainLightWorldToShadow[((x_478 + 1i) / 4i)][((x_481 + 1i) % 4i)];
  let x_487 : vec3<f32> = (vec3<f32>(x_476.y, x_476.y, x_476.y) * vec3<f32>(x_485.x, x_485.y, x_485.z));
  let x_488 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_487.x, x_487.y, x_487.z, x_488.w);
  let x_490 : i32 = u_xlati30;
  let x_492 : i32 = u_xlati30;
  let x_495 : vec4<f32> = x_353.x_MainLightWorldToShadow[(x_490 / 4i)][(x_492 % 4i)];
  let x_497 : vec3<f32> = vs_TEXCOORD1;
  let x_500 : vec4<f32> = u_xlat4;
  let x_502 : vec3<f32> = ((vec3<f32>(x_495.x, x_495.y, x_495.z) * vec3<f32>(x_497.x, x_497.x, x_497.x)) + vec3<f32>(x_500.x, x_500.y, x_500.z));
  let x_503 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_502.x, x_502.y, x_502.z, x_503.w);
  let x_505 : i32 = u_xlati30;
  let x_508 : i32 = u_xlati30;
  let x_512 : vec4<f32> = x_353.x_MainLightWorldToShadow[((x_505 + 2i) / 4i)][((x_508 + 2i) % 4i)];
  let x_514 : vec3<f32> = vs_TEXCOORD1;
  let x_517 : vec4<f32> = u_xlat4;
  let x_519 : vec3<f32> = ((vec3<f32>(x_512.x, x_512.y, x_512.z) * vec3<f32>(x_514.z, x_514.z, x_514.z)) + vec3<f32>(x_517.x, x_517.y, x_517.z));
  let x_520 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_519.x, x_519.y, x_519.z, x_520.w);
  let x_522 : vec4<f32> = u_xlat4;
  let x_524 : i32 = u_xlati30;
  let x_527 : i32 = u_xlati30;
  let x_531 : vec4<f32> = x_353.x_MainLightWorldToShadow[((x_524 + 3i) / 4i)][((x_527 + 3i) % 4i)];
  let x_533 : vec3<f32> = (vec3<f32>(x_522.x, x_522.y, x_522.z) + vec3<f32>(x_531.x, x_531.y, x_531.z));
  let x_534 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_533.x, x_533.y, x_533.z, x_534.w);
  let x_537 : f32 = vs_TEXCOORD1.y;
  let x_540 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat30 = (x_537 * x_540);
  let x_543 : f32 = x_44.unity_MatrixV[0i].z;
  let x_545 : f32 = vs_TEXCOORD1.x;
  let x_547 : f32 = u_xlat30;
  u_xlat30 = ((x_543 * x_545) + x_547);
  let x_550 : f32 = x_44.unity_MatrixV[2i].z;
  let x_552 : f32 = vs_TEXCOORD1.z;
  let x_554 : f32 = u_xlat30;
  u_xlat30 = ((x_550 * x_552) + x_554);
  let x_556 : f32 = u_xlat30;
  let x_558 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat30 = (x_556 + x_558);
  let x_560 : f32 = u_xlat30;
  let x_564 : f32 = x_44.x_ProjectionParams.y;
  u_xlat30 = (-(x_560) + -(x_564));
  let x_567 : f32 = u_xlat30;
  u_xlat30 = max(x_567, 0.0f);
  let x_569 : f32 = u_xlat30;
  let x_572 : f32 = x_44.unity_FogParams.x;
  u_xlat30 = (x_569 * x_572);
  u_xlat2.w = 1.0f;
  let x_577 : vec4<f32> = x_238.unity_SHAr;
  let x_578 : vec4<f32> = u_xlat2;
  u_xlat5.x = dot(x_577, x_578);
  let x_583 : vec4<f32> = x_238.unity_SHAg;
  let x_584 : vec4<f32> = u_xlat2;
  u_xlat5.y = dot(x_583, x_584);
  let x_589 : vec4<f32> = x_238.unity_SHAb;
  let x_590 : vec4<f32> = u_xlat2;
  u_xlat5.z = dot(x_589, x_590);
  let x_593 : vec4<f32> = u_xlat2;
  let x_595 : vec4<f32> = u_xlat2;
  u_xlat6 = (vec4<f32>(x_593.y, x_593.z, x_593.z, x_593.x) * vec4<f32>(x_595.x, x_595.y, x_595.z, x_595.z));
  let x_600 : vec4<f32> = x_238.unity_SHBr;
  let x_601 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_600, x_601);
  let x_606 : vec4<f32> = x_238.unity_SHBg;
  let x_607 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_606, x_607);
  let x_612 : vec4<f32> = x_238.unity_SHBb;
  let x_613 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_612, x_613);
  let x_617 : f32 = u_xlat2.y;
  let x_619 : f32 = u_xlat2.y;
  u_xlat1.x = (x_617 * x_619);
  let x_623 : f32 = u_xlat2.x;
  let x_625 : f32 = u_xlat2.x;
  let x_628 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_623 * x_625) + -(x_628));
  let x_634 : vec4<f32> = x_238.unity_SHC;
  let x_636 : vec4<f32> = u_xlat1;
  let x_639 : vec3<f32> = u_xlat7;
  let x_640 : vec3<f32> = ((vec3<f32>(x_634.x, x_634.y, x_634.z) * vec3<f32>(x_636.x, x_636.x, x_636.x)) + x_639);
  let x_641 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_640.x, x_640.y, x_640.z, x_641.w);
  let x_643 : vec4<f32> = u_xlat5;
  let x_645 : vec4<f32> = u_xlat6;
  let x_647 : vec3<f32> = (vec3<f32>(x_643.x, x_643.y, x_643.z) + vec3<f32>(x_645.x, x_645.y, x_645.z));
  let x_648 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_647.x, x_647.y, x_647.z, x_648.w);
  let x_650 : vec4<f32> = u_xlat5;
  let x_652 : vec3<f32> = max(vec3<f32>(x_650.x, x_650.y, x_650.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_653 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_652.x, x_652.y, x_652.z, x_653.w);
  let x_657 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_658 : vec2<f32> = vec2<f32>(x_657.x, x_657.y);
  let x_662 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_658.x, x_658.y));
  let x_663 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_662.x, x_662.y, x_663.z, x_663.w);
  let x_665 : vec4<f32> = u_xlat6;
  let x_667 : vec4<f32> = hlslcc_FragCoord;
  let x_669 : vec2<f32> = (vec2<f32>(x_665.x, x_665.y) * vec2<f32>(x_667.x, x_667.y));
  let x_670 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_669.x, x_669.y, x_670.z, x_670.w);
  let x_673 : f32 = u_xlat6.y;
  let x_676 : f32 = x_44.x_ScaleBiasRt.x;
  let x_679 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat1.x = ((x_673 * x_676) + x_679);
  let x_683 : f32 = u_xlat1.x;
  u_xlat6.z = (-(x_683) + 1.0f);
  let x_692 : vec4<f32> = u_xlat6;
  let x_695 : f32 = x_44.x_GlobalMipBias.x;
  let x_696 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_692.x, x_692.z), x_695);
  u_xlat1.x = x_696.x;
  let x_701 : f32 = u_xlat1.x;
  u_xlat32 = (x_701 + -1.0f);
  let x_704 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_705 : f32 = u_xlat32;
  u_xlat32 = ((x_704 * x_705) + 1.0f);
  let x_709 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_709, 1.0f);
  let x_713 : vec4<f32> = u_xlat4;
  let x_714 : vec2<f32> = vec2<f32>(x_713.x, x_713.y);
  let x_716 : f32 = u_xlat4.z;
  txVec0 = vec3<f32>(x_714.x, x_714.y, x_716);
  let x_729 : vec3<f32> = txVec0;
  let x_731 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_729.xy, x_729.z);
  u_xlat33 = x_731;
  let x_733 : f32 = x_353.x_MainLightShadowParams.x;
  u_xlat4.x = (-(x_733) + 1.0f);
  let x_737 : f32 = u_xlat33;
  let x_739 : f32 = x_353.x_MainLightShadowParams.x;
  let x_742 : f32 = u_xlat4.x;
  u_xlat33 = ((x_737 * x_739) + x_742);
  let x_745 : f32 = u_xlat4.z;
  u_xlatb4.x = (0.0f >= x_745);
  let x_750 : f32 = u_xlat4.z;
  u_xlatb14 = (x_750 >= 1.0f);
  let x_752 : bool = u_xlatb14;
  let x_754 : bool = u_xlatb4.x;
  u_xlatb4.x = (x_752 | x_754);
  let x_758 : bool = u_xlatb4.x;
  let x_759 : f32 = u_xlat33;
  u_xlat33 = select(x_759, 1.0f, x_758);
  let x_761 : vec3<f32> = vs_TEXCOORD1;
  let x_765 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_767 : vec3<f32> = (x_761 + -(x_765));
  let x_768 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_767.x, x_767.y, x_767.z, x_768.w);
  let x_770 : vec4<f32> = u_xlat4;
  let x_772 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_770.x, x_770.y, x_770.z), vec3<f32>(x_772.x, x_772.y, x_772.z));
  let x_777 : f32 = u_xlat4.x;
  let x_779 : f32 = x_353.x_MainLightShadowParams.z;
  let x_782 : f32 = x_353.x_MainLightShadowParams.w;
  u_xlat4.x = ((x_777 * x_779) + x_782);
  let x_786 : f32 = u_xlat4.x;
  u_xlat4.x = clamp(x_786, 0.0f, 1.0f);
  let x_790 : f32 = u_xlat33;
  u_xlat14 = (-(x_790) + 1.0f);
  let x_794 : f32 = u_xlat4.x;
  let x_795 : f32 = u_xlat14;
  let x_797 : f32 = u_xlat33;
  u_xlat33 = ((x_794 * x_795) + x_797);
  let x_799 : f32 = u_xlat32;
  let x_802 : vec4<f32> = x_44.x_MainLightColor;
  let x_804 : vec3<f32> = (vec3<f32>(x_799, x_799, x_799) * vec3<f32>(x_802.x, x_802.y, x_802.z));
  let x_805 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_804.x, x_804.y, x_804.z, x_805.w);
  let x_807 : vec4<f32> = u_xlat1;
  let x_809 : vec4<f32> = u_xlat5;
  let x_811 : vec3<f32> = (vec3<f32>(x_807.x, x_807.x, x_807.x) * vec3<f32>(x_809.x, x_809.y, x_809.z));
  let x_812 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_811.x, x_811.y, x_811.z, x_812.w);
  let x_814 : f32 = u_xlat33;
  let x_816 : f32 = x_238.unity_LightData.z;
  u_xlat1.x = (x_814 * x_816);
  let x_819 : vec4<f32> = u_xlat1;
  let x_821 : vec4<f32> = u_xlat4;
  let x_823 : vec3<f32> = (vec3<f32>(x_819.x, x_819.x, x_819.x) * vec3<f32>(x_821.x, x_821.y, x_821.z));
  let x_824 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_823.x, x_823.y, x_823.z, x_824.w);
  let x_826 : vec4<f32> = u_xlat2;
  let x_829 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat1.x = dot(vec3<f32>(x_826.x, x_826.y, x_826.z), vec3<f32>(x_829.x, x_829.y, x_829.z));
  let x_834 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_834, 0.0f, 1.0f);
  let x_837 : vec4<f32> = u_xlat1;
  let x_839 : vec4<f32> = u_xlat4;
  let x_841 : vec3<f32> = (vec3<f32>(x_837.x, x_837.x, x_837.x) * vec3<f32>(x_839.x, x_839.y, x_839.z));
  let x_842 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_841.x, x_841.y, x_841.z, x_842.w);
  let x_845 : f32 = x_57.x_SpecColor.w;
  u_xlat1.x = ((x_845 * 10.0f) + 1.0f);
  let x_851 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_851);
  let x_854 : vec3<f32> = u_xlat3;
  let x_855 : vec3<f32> = u_xlat10;
  let x_859 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat7 = ((x_854 * vec3<f32>(x_855.x, x_855.x, x_855.x)) + vec3<f32>(x_859.x, x_859.y, x_859.z));
  let x_862 : vec3<f32> = u_xlat7;
  let x_863 : vec3<f32> = u_xlat7;
  u_xlat33 = dot(x_862, x_863);
  let x_865 : f32 = u_xlat33;
  u_xlat33 = max(x_865, 1.17549435e-37f);
  let x_867 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_867);
  let x_869 : f32 = u_xlat33;
  let x_871 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_869, x_869, x_869) * x_871);
  let x_873 : vec4<f32> = u_xlat2;
  let x_875 : vec3<f32> = u_xlat7;
  u_xlat33 = dot(vec3<f32>(x_873.x, x_873.y, x_873.z), x_875);
  let x_877 : f32 = u_xlat33;
  u_xlat33 = clamp(x_877, 0.0f, 1.0f);
  let x_879 : f32 = u_xlat33;
  u_xlat33 = log2(x_879);
  let x_882 : f32 = u_xlat1.x;
  let x_883 : f32 = u_xlat33;
  u_xlat33 = (x_882 * x_883);
  let x_885 : f32 = u_xlat33;
  u_xlat33 = exp2(x_885);
  let x_887 : f32 = u_xlat33;
  let x_890 : vec4<f32> = x_57.x_SpecColor;
  u_xlat7 = (vec3<f32>(x_887, x_887, x_887) * vec3<f32>(x_890.x, x_890.y, x_890.z));
  let x_893 : vec4<f32> = u_xlat4;
  let x_895 : vec3<f32> = u_xlat7;
  let x_896 : vec3<f32> = (vec3<f32>(x_893.x, x_893.y, x_893.z) * x_895);
  let x_897 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_896.x, x_896.y, x_896.z, x_897.w);
  let x_899 : vec4<f32> = u_xlat6;
  let x_901 : vec4<f32> = u_xlat1;
  let x_904 : vec4<f32> = u_xlat4;
  let x_906 : vec3<f32> = ((vec3<f32>(x_899.x, x_899.y, x_899.z) * vec3<f32>(x_901.y, x_901.z, x_901.w)) + vec3<f32>(x_904.x, x_904.y, x_904.z));
  let x_907 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_906.x, x_906.y, x_906.z, x_907.w);
  let x_911 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_913 : f32 = x_238.unity_LightData.y;
  u_xlat33 = min(x_911, x_913);
  let x_916 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_916));
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_928 : u32 = u_xlatu_loop_1;
    let x_929 : u32 = u_xlatu33;
    if ((x_928 < x_929)) {
    } else {
      break;
    }
    let x_932 : u32 = u_xlatu_loop_1;
    u_xlatu35 = (x_932 >> 2u);
    let x_935 : u32 = u_xlatu_loop_1;
    u_xlati36 = bitcast<i32>((x_935 & 3u));
    let x_939 : u32 = u_xlatu35;
    let x_942 : vec4<f32> = x_238.unity_LightIndices[bitcast<i32>(x_939)];
    let x_952 : i32 = u_xlati36;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_957 : vec4<u32> = indexable[x_952];
    u_xlat35 = dot(x_942, bitcast<vec4<f32>>(x_957));
    let x_961 : f32 = u_xlat35;
    u_xlati35 = i32(x_961);
    let x_963 : vec3<f32> = vs_TEXCOORD1;
    let x_975 : i32 = u_xlati35;
    let x_977 : vec4<f32> = x_974.x_AdditionalLightsPosition[x_975];
    let x_980 : i32 = u_xlati35;
    let x_982 : vec4<f32> = x_974.x_AdditionalLightsPosition[x_980];
    u_xlat7 = ((-(x_963) * vec3<f32>(x_977.w, x_977.w, x_977.w)) + vec3<f32>(x_982.x, x_982.y, x_982.z));
    let x_986 : vec3<f32> = u_xlat7;
    let x_987 : vec3<f32> = u_xlat7;
    u_xlat36 = dot(x_986, x_987);
    let x_989 : f32 = u_xlat36;
    u_xlat36 = max(x_989, 6.10351562e-05f);
    let x_993 : f32 = u_xlat36;
    u_xlat37 = inverseSqrt(x_993);
    let x_995 : f32 = u_xlat37;
    let x_997 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_995, x_995, x_995) * x_997);
    let x_999 : f32 = u_xlat36;
    u_xlat37 = (1.0f / x_999);
    let x_1001 : f32 = u_xlat36;
    let x_1002 : i32 = u_xlati35;
    let x_1004 : f32 = x_974.x_AdditionalLightsAttenuation[x_1002].x;
    u_xlat36 = (x_1001 * x_1004);
    let x_1006 : f32 = u_xlat36;
    let x_1008 : f32 = u_xlat36;
    u_xlat36 = ((-(x_1006) * x_1008) + 1.0f);
    let x_1011 : f32 = u_xlat36;
    u_xlat36 = max(x_1011, 0.0f);
    let x_1013 : f32 = u_xlat36;
    let x_1014 : f32 = u_xlat36;
    u_xlat36 = (x_1013 * x_1014);
    let x_1016 : f32 = u_xlat36;
    let x_1017 : f32 = u_xlat37;
    u_xlat36 = (x_1016 * x_1017);
    let x_1019 : i32 = u_xlati35;
    let x_1021 : vec4<f32> = x_974.x_AdditionalLightsSpotDir[x_1019];
    let x_1023 : vec3<f32> = u_xlat7;
    u_xlat37 = dot(vec3<f32>(x_1021.x, x_1021.y, x_1021.z), x_1023);
    let x_1025 : f32 = u_xlat37;
    let x_1026 : i32 = u_xlati35;
    let x_1028 : f32 = x_974.x_AdditionalLightsAttenuation[x_1026].z;
    let x_1030 : i32 = u_xlati35;
    let x_1032 : f32 = x_974.x_AdditionalLightsAttenuation[x_1030].w;
    u_xlat37 = ((x_1025 * x_1028) + x_1032);
    let x_1034 : f32 = u_xlat37;
    u_xlat37 = clamp(x_1034, 0.0f, 1.0f);
    let x_1036 : f32 = u_xlat37;
    let x_1037 : f32 = u_xlat37;
    u_xlat37 = (x_1036 * x_1037);
    let x_1039 : f32 = u_xlat36;
    let x_1040 : f32 = u_xlat37;
    u_xlat36 = (x_1039 * x_1040);
    let x_1043 : f32 = u_xlat32;
    let x_1045 : i32 = u_xlati35;
    let x_1047 : vec4<f32> = x_974.x_AdditionalLightsColor[x_1045];
    u_xlat8 = (vec3<f32>(x_1043, x_1043, x_1043) * vec3<f32>(x_1047.x, x_1047.y, x_1047.z));
    let x_1050 : f32 = u_xlat36;
    let x_1052 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_1050, x_1050, x_1050) * x_1052);
    let x_1054 : vec4<f32> = u_xlat2;
    let x_1056 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(vec3<f32>(x_1054.x, x_1054.y, x_1054.z), x_1056);
    let x_1058 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1058, 0.0f, 1.0f);
    let x_1061 : f32 = u_xlat35;
    let x_1063 : vec3<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_1061, x_1061, x_1061) * x_1063);
    let x_1065 : vec3<f32> = u_xlat3;
    let x_1066 : vec3<f32> = u_xlat10;
    let x_1069 : vec3<f32> = u_xlat7;
    u_xlat7 = ((x_1065 * vec3<f32>(x_1066.x, x_1066.x, x_1066.x)) + x_1069);
    let x_1071 : vec3<f32> = u_xlat7;
    let x_1072 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(x_1071, x_1072);
    let x_1074 : f32 = u_xlat35;
    u_xlat35 = max(x_1074, 1.17549435e-37f);
    let x_1076 : f32 = u_xlat35;
    u_xlat35 = inverseSqrt(x_1076);
    let x_1078 : f32 = u_xlat35;
    let x_1080 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_1078, x_1078, x_1078) * x_1080);
    let x_1082 : vec4<f32> = u_xlat2;
    let x_1084 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(vec3<f32>(x_1082.x, x_1082.y, x_1082.z), x_1084);
    let x_1086 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1086, 0.0f, 1.0f);
    let x_1088 : f32 = u_xlat35;
    u_xlat35 = log2(x_1088);
    let x_1091 : f32 = u_xlat1.x;
    let x_1092 : f32 = u_xlat35;
    u_xlat35 = (x_1091 * x_1092);
    let x_1094 : f32 = u_xlat35;
    u_xlat35 = exp2(x_1094);
    let x_1096 : f32 = u_xlat35;
    let x_1099 : vec4<f32> = x_57.x_SpecColor;
    u_xlat7 = (vec3<f32>(x_1096, x_1096, x_1096) * vec3<f32>(x_1099.x, x_1099.y, x_1099.z));
    let x_1102 : vec3<f32> = u_xlat7;
    let x_1103 : vec3<f32> = u_xlat8;
    u_xlat7 = (x_1102 * x_1103);
    let x_1105 : vec3<f32> = u_xlat9;
    let x_1106 : vec4<f32> = u_xlat1;
    let x_1109 : vec3<f32> = u_xlat7;
    u_xlat7 = ((x_1105 * vec3<f32>(x_1106.y, x_1106.z, x_1106.w)) + x_1109);
    let x_1111 : vec4<f32> = u_xlat6;
    let x_1113 : vec3<f32> = u_xlat7;
    let x_1114 : vec3<f32> = (vec3<f32>(x_1111.x, x_1111.y, x_1111.z) + x_1113);
    let x_1115 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1114.x, x_1114.y, x_1114.z, x_1115.w);

    continuing {
      let x_1117 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1117 + bitcast<u32>(1i));
    }
  }
  let x_1119 : vec4<f32> = u_xlat5;
  let x_1121 : vec4<f32> = u_xlat1;
  let x_1124 : vec4<f32> = u_xlat4;
  let x_1126 : vec3<f32> = ((vec3<f32>(x_1119.x, x_1119.y, x_1119.z) * vec3<f32>(x_1121.y, x_1121.z, x_1121.w)) + vec3<f32>(x_1124.x, x_1124.y, x_1124.z));
  let x_1127 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1126.x, x_1126.y, x_1126.z, x_1127.w);
  let x_1129 : vec4<f32> = u_xlat6;
  let x_1131 : vec4<f32> = u_xlat1;
  let x_1133 : vec3<f32> = (vec3<f32>(x_1129.x, x_1129.y, x_1129.z) + vec3<f32>(x_1131.x, x_1131.y, x_1131.z));
  let x_1134 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1133.x, x_1133.y, x_1133.z, x_1134.w);
  let x_1136 : f32 = u_xlat30;
  let x_1137 : f32 = u_xlat30;
  u_xlat10.x = (x_1136 * -(x_1137));
  let x_1142 : f32 = u_xlat10.x;
  u_xlat10.x = exp2(x_1142);
  let x_1145 : vec4<f32> = u_xlat1;
  let x_1149 : vec4<f32> = x_44.unity_FogColor;
  let x_1152 : vec3<f32> = (vec3<f32>(x_1145.x, x_1145.y, x_1145.z) + -(vec3<f32>(x_1149.x, x_1149.y, x_1149.z)));
  let x_1153 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1152.x, x_1152.y, x_1152.z, x_1153.w);
  let x_1157 : vec3<f32> = u_xlat10;
  let x_1159 : vec4<f32> = u_xlat1;
  let x_1163 : vec4<f32> = x_44.unity_FogColor;
  let x_1165 : vec3<f32> = ((vec3<f32>(x_1157.x, x_1157.x, x_1157.x) * vec3<f32>(x_1159.x, x_1159.y, x_1159.z)) + vec3<f32>(x_1163.x, x_1163.y, x_1163.z));
  let x_1166 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1165.x, x_1165.y, x_1165.z, x_1166.w);
  let x_1169 : f32 = x_57.x_Surface;
  u_xlatb10 = (x_1169 == 1.0f);
  let x_1171 : bool = u_xlatb10;
  let x_1172 : bool = u_xlatb20;
  u_xlatb10 = (x_1171 | x_1172);
  let x_1174 : bool = u_xlatb10;
  if (x_1174) {
    let x_1179 : f32 = u_xlat0.x;
    x_1175 = x_1179;
  } else {
    x_1175 = 1.0f;
  }
  let x_1181 : f32 = x_1175;
  SV_Target0.w = x_1181;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}

