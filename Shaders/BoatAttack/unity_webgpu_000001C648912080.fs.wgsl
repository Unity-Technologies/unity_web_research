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

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(5) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

@group(0) @binding(1) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BumpMap : sampler;

@group(0) @binding(4) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_238 : UnityPerDraw;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_501 : MainLightShadows;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_724 : AdditionalLights;

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
  var u_xlat2 : vec4<f32>;
  var u_xlatb12 : bool;
  var x_243 : f32;
  var u_xlatb2 : bool;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat32 : f32;
  var u_xlat33 : f32;
  var u_xlatb33 : bool;
  var u_xlatb34 : bool;
  var u_xlat34 : f32;
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
  var x_889 : f32;
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
  let x_168 : vec3<f32> = vec3<f32>(x_167.x, x_167.y, x_167.w);
  let x_169 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_168.x, x_168.y, x_168.z, x_169.w);
  let x_172 : f32 = u_xlat2.x;
  let x_175 : f32 = u_xlat2.z;
  u_xlat2.x = (x_172 * x_175);
  let x_178 : vec4<f32> = u_xlat2;
  let x_185 : vec2<f32> = ((vec2<f32>(x_178.x, x_178.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_186 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_185.x, x_186.y, x_185.y);
  let x_188 : vec3<f32> = u_xlat10;
  let x_190 : vec3<f32> = u_xlat10;
  u_xlat1.x = dot(vec2<f32>(x_188.x, x_188.z), vec2<f32>(x_190.x, x_190.z));
  let x_195 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_195, 1.0f);
  let x_199 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_199) + 1.0f);
  let x_204 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_204);
  let x_208 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_208, 1.00000002e-16f);
  let x_212 : vec4<f32> = hlslcc_FragCoord;
  let x_216 : f32 = x_43.x_DitheringTextureInvSize;
  let x_218 : vec2<f32> = (vec2<f32>(x_212.x, x_212.y) * vec2<f32>(x_216, x_216));
  let x_219 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_218.x, x_218.y, x_219.z, x_219.w);
  let x_226 : vec4<f32> = u_xlat2;
  let x_229 : f32 = x_43.x_GlobalMipBias.x;
  let x_230 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_226.x, x_226.y), x_229);
  u_xlat2.x = x_230.w;
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
  u_xlat2.w = 1.0f;
  let x_349 : vec4<f32> = x_238.unity_SHAr;
  let x_350 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_349, x_350);
  let x_355 : vec4<f32> = x_238.unity_SHAg;
  let x_356 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_355, x_356);
  let x_361 : vec4<f32> = x_238.unity_SHAb;
  let x_362 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_361, x_362);
  let x_366 : vec4<f32> = u_xlat2;
  let x_368 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_366.y, x_366.z, x_366.z, x_366.x) * vec4<f32>(x_368.x, x_368.y, x_368.z, x_368.z));
  let x_374 : vec4<f32> = x_238.unity_SHBr;
  let x_375 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_374, x_375);
  let x_380 : vec4<f32> = x_238.unity_SHBg;
  let x_381 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_380, x_381);
  let x_386 : vec4<f32> = x_238.unity_SHBb;
  let x_387 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_386, x_387);
  let x_391 : f32 = u_xlat2.y;
  let x_393 : f32 = u_xlat2.y;
  u_xlat30 = (x_391 * x_393);
  let x_396 : f32 = u_xlat2.x;
  let x_398 : f32 = u_xlat2.x;
  let x_400 : f32 = u_xlat30;
  u_xlat30 = ((x_396 * x_398) + -(x_400));
  let x_405 : vec4<f32> = x_238.unity_SHC;
  let x_407 : f32 = u_xlat30;
  let x_410 : vec3<f32> = u_xlat6;
  let x_411 : vec3<f32> = ((vec3<f32>(x_405.x, x_405.y, x_405.z) * vec3<f32>(x_407, x_407, x_407)) + x_410);
  let x_412 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_411.x, x_411.y, x_411.z, x_412.w);
  let x_414 : vec3<f32> = u_xlat4;
  let x_415 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_414 + vec3<f32>(x_415.x, x_415.y, x_415.z));
  let x_418 : vec3<f32> = u_xlat4;
  u_xlat4 = max(x_418, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_423 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_424 : vec2<f32> = vec2<f32>(x_423.x, x_423.y);
  let x_428 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_424.x, x_424.y));
  let x_429 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_428.x, x_428.y, x_429.z, x_429.w);
  let x_431 : vec4<f32> = u_xlat5;
  let x_433 : vec4<f32> = hlslcc_FragCoord;
  let x_435 : vec2<f32> = (vec2<f32>(x_431.x, x_431.y) * vec2<f32>(x_433.x, x_433.y));
  let x_436 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_435.x, x_435.y, x_436.z, x_436.w);
  let x_439 : f32 = u_xlat5.y;
  let x_442 : f32 = x_43.x_ScaleBiasRt.x;
  let x_445 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat30 = ((x_439 * x_442) + x_445);
  let x_447 : f32 = u_xlat30;
  u_xlat5.z = (-(x_447) + 1.0f);
  let x_456 : vec4<f32> = u_xlat5;
  let x_459 : f32 = x_43.x_GlobalMipBias.x;
  let x_460 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_456.x, x_456.z), x_459);
  u_xlat30 = x_460.x;
  let x_462 : f32 = u_xlat30;
  u_xlat1.x = (x_462 + -1.0f);
  let x_467 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_469 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_467 * x_469) + 1.0f);
  let x_473 : f32 = u_xlat30;
  u_xlat30 = min(x_473, 1.0f);
  let x_477 : vec4<f32> = vs_TEXCOORD6;
  let x_478 : vec2<f32> = vec2<f32>(x_477.x, x_477.y);
  let x_480 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_478.x, x_478.y, x_480);
  let x_493 : vec3<f32> = txVec0;
  let x_495 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_493.xy, x_493.z);
  u_xlat32 = x_495;
  let x_503 : f32 = x_501.x_MainLightShadowParams.x;
  u_xlat33 = (-(x_503) + 1.0f);
  let x_506 : f32 = u_xlat32;
  let x_508 : f32 = x_501.x_MainLightShadowParams.x;
  let x_510 : f32 = u_xlat33;
  u_xlat32 = ((x_506 * x_508) + x_510);
  let x_514 : f32 = vs_TEXCOORD6.z;
  u_xlatb33 = (0.0f >= x_514);
  let x_518 : f32 = vs_TEXCOORD6.z;
  u_xlatb34 = (x_518 >= 1.0f);
  let x_520 : bool = u_xlatb33;
  let x_521 : bool = u_xlatb34;
  u_xlatb33 = (x_520 | x_521);
  let x_523 : bool = u_xlatb33;
  let x_524 : f32 = u_xlat32;
  u_xlat32 = select(x_524, 1.0f, x_523);
  let x_528 : vec3<f32> = vs_TEXCOORD1;
  let x_532 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_534 : vec3<f32> = (x_528 + -(x_532));
  let x_535 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_534.x, x_534.y, x_534.z, x_535.w);
  let x_537 : vec4<f32> = u_xlat5;
  let x_539 : vec4<f32> = u_xlat5;
  u_xlat33 = dot(vec3<f32>(x_537.x, x_537.y, x_537.z), vec3<f32>(x_539.x, x_539.y, x_539.z));
  let x_542 : f32 = u_xlat33;
  let x_544 : f32 = x_501.x_MainLightShadowParams.z;
  let x_547 : f32 = x_501.x_MainLightShadowParams.w;
  u_xlat33 = ((x_542 * x_544) + x_547);
  let x_549 : f32 = u_xlat33;
  u_xlat33 = clamp(x_549, 0.0f, 1.0f);
  let x_552 : f32 = u_xlat32;
  u_xlat34 = (-(x_552) + 1.0f);
  let x_555 : f32 = u_xlat33;
  let x_556 : f32 = u_xlat34;
  let x_558 : f32 = u_xlat32;
  u_xlat32 = ((x_555 * x_556) + x_558);
  let x_560 : vec4<f32> = u_xlat1;
  let x_563 : vec4<f32> = x_43.x_MainLightColor;
  let x_565 : vec3<f32> = (vec3<f32>(x_560.x, x_560.x, x_560.x) * vec3<f32>(x_563.x, x_563.y, x_563.z));
  let x_566 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_565.x, x_565.y, x_565.z, x_566.w);
  let x_568 : f32 = u_xlat30;
  let x_570 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_568, x_568, x_568) * x_570);
  let x_572 : f32 = u_xlat32;
  let x_574 : f32 = x_238.unity_LightData.z;
  u_xlat30 = (x_572 * x_574);
  let x_576 : f32 = u_xlat30;
  let x_578 : vec4<f32> = u_xlat5;
  let x_580 : vec3<f32> = (vec3<f32>(x_576, x_576, x_576) * vec3<f32>(x_578.x, x_578.y, x_578.z));
  let x_581 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_580.x, x_580.y, x_580.z, x_581.w);
  let x_583 : vec4<f32> = u_xlat2;
  let x_587 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat30 = dot(vec3<f32>(x_583.x, x_583.y, x_583.z), vec3<f32>(x_587.x, x_587.y, x_587.z));
  let x_590 : f32 = u_xlat30;
  u_xlat30 = clamp(x_590, 0.0f, 1.0f);
  let x_592 : f32 = u_xlat30;
  let x_594 : vec4<f32> = u_xlat5;
  u_xlat6 = (vec3<f32>(x_592, x_592, x_592) * vec3<f32>(x_594.x, x_594.y, x_594.z));
  let x_598 : f32 = x_56.x_SpecColor.w;
  u_xlat30 = ((x_598 * 10.0f) + 1.0f);
  let x_602 : f32 = u_xlat30;
  u_xlat30 = exp2(x_602);
  let x_605 : vec3<f32> = u_xlat3;
  let x_606 : vec3<f32> = u_xlat10;
  let x_610 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat7 = ((x_605 * vec3<f32>(x_606.x, x_606.x, x_606.x)) + vec3<f32>(x_610.x, x_610.y, x_610.z));
  let x_613 : vec3<f32> = u_xlat7;
  let x_614 : vec3<f32> = u_xlat7;
  u_xlat32 = dot(x_613, x_614);
  let x_616 : f32 = u_xlat32;
  u_xlat32 = max(x_616, 1.17549435e-37f);
  let x_618 : f32 = u_xlat32;
  u_xlat32 = inverseSqrt(x_618);
  let x_620 : f32 = u_xlat32;
  let x_622 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_620, x_620, x_620) * x_622);
  let x_624 : vec4<f32> = u_xlat2;
  let x_626 : vec3<f32> = u_xlat7;
  u_xlat32 = dot(vec3<f32>(x_624.x, x_624.y, x_624.z), x_626);
  let x_628 : f32 = u_xlat32;
  u_xlat32 = clamp(x_628, 0.0f, 1.0f);
  let x_630 : f32 = u_xlat32;
  u_xlat32 = log2(x_630);
  let x_632 : f32 = u_xlat30;
  let x_633 : f32 = u_xlat32;
  u_xlat32 = (x_632 * x_633);
  let x_635 : f32 = u_xlat32;
  u_xlat32 = exp2(x_635);
  let x_637 : f32 = u_xlat32;
  let x_640 : vec4<f32> = x_56.x_SpecColor;
  u_xlat7 = (vec3<f32>(x_637, x_637, x_637) * vec3<f32>(x_640.x, x_640.y, x_640.z));
  let x_643 : vec4<f32> = u_xlat5;
  let x_645 : vec3<f32> = u_xlat7;
  let x_646 : vec3<f32> = (vec3<f32>(x_643.x, x_643.y, x_643.z) * x_645);
  let x_647 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_646.x, x_646.y, x_646.z, x_647.w);
  let x_649 : vec3<f32> = u_xlat6;
  let x_650 : vec4<f32> = u_xlat1;
  let x_653 : vec4<f32> = u_xlat5;
  let x_655 : vec3<f32> = ((x_649 * vec3<f32>(x_650.y, x_650.z, x_650.w)) + vec3<f32>(x_653.x, x_653.y, x_653.z));
  let x_656 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_655.x, x_655.y, x_655.z, x_656.w);
  let x_660 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_662 : f32 = x_238.unity_LightData.y;
  u_xlat32 = min(x_660, x_662);
  let x_666 : f32 = u_xlat32;
  u_xlatu32 = bitcast<u32>(i32(x_666));
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_678 : u32 = u_xlatu_loop_1;
    let x_679 : u32 = u_xlatu32;
    if ((x_678 < x_679)) {
    } else {
      break;
    }
    let x_682 : u32 = u_xlatu_loop_1;
    u_xlatu34 = (x_682 >> 2u);
    let x_686 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_686 & 3u));
    let x_689 : u32 = u_xlatu34;
    let x_692 : vec4<f32> = x_238.unity_LightIndices[bitcast<i32>(x_689)];
    let x_702 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_707 : vec4<u32> = indexable[x_702];
    u_xlat34 = dot(x_692, bitcast<vec4<f32>>(x_707));
    let x_711 : f32 = u_xlat34;
    u_xlati34 = i32(x_711);
    let x_713 : vec3<f32> = vs_TEXCOORD1;
    let x_725 : i32 = u_xlati34;
    let x_727 : vec4<f32> = x_724.x_AdditionalLightsPosition[x_725];
    let x_730 : i32 = u_xlati34;
    let x_732 : vec4<f32> = x_724.x_AdditionalLightsPosition[x_730];
    u_xlat7 = ((-(x_713) * vec3<f32>(x_727.w, x_727.w, x_727.w)) + vec3<f32>(x_732.x, x_732.y, x_732.z));
    let x_736 : vec3<f32> = u_xlat7;
    let x_737 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(x_736, x_737);
    let x_739 : f32 = u_xlat35;
    u_xlat35 = max(x_739, 6.10351562e-05f);
    let x_743 : f32 = u_xlat35;
    u_xlat36 = inverseSqrt(x_743);
    let x_745 : f32 = u_xlat36;
    let x_747 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_745, x_745, x_745) * x_747);
    let x_749 : f32 = u_xlat35;
    u_xlat36 = (1.0f / x_749);
    let x_751 : f32 = u_xlat35;
    let x_752 : i32 = u_xlati34;
    let x_754 : f32 = x_724.x_AdditionalLightsAttenuation[x_752].x;
    u_xlat35 = (x_751 * x_754);
    let x_756 : f32 = u_xlat35;
    let x_758 : f32 = u_xlat35;
    u_xlat35 = ((-(x_756) * x_758) + 1.0f);
    let x_761 : f32 = u_xlat35;
    u_xlat35 = max(x_761, 0.0f);
    let x_763 : f32 = u_xlat35;
    let x_764 : f32 = u_xlat35;
    u_xlat35 = (x_763 * x_764);
    let x_766 : f32 = u_xlat35;
    let x_767 : f32 = u_xlat36;
    u_xlat35 = (x_766 * x_767);
    let x_769 : i32 = u_xlati34;
    let x_771 : vec4<f32> = x_724.x_AdditionalLightsSpotDir[x_769];
    let x_773 : vec3<f32> = u_xlat7;
    u_xlat36 = dot(vec3<f32>(x_771.x, x_771.y, x_771.z), x_773);
    let x_775 : f32 = u_xlat36;
    let x_776 : i32 = u_xlati34;
    let x_778 : f32 = x_724.x_AdditionalLightsAttenuation[x_776].z;
    let x_780 : i32 = u_xlati34;
    let x_782 : f32 = x_724.x_AdditionalLightsAttenuation[x_780].w;
    u_xlat36 = ((x_775 * x_778) + x_782);
    let x_784 : f32 = u_xlat36;
    u_xlat36 = clamp(x_784, 0.0f, 1.0f);
    let x_786 : f32 = u_xlat36;
    let x_787 : f32 = u_xlat36;
    u_xlat36 = (x_786 * x_787);
    let x_789 : f32 = u_xlat35;
    let x_790 : f32 = u_xlat36;
    u_xlat35 = (x_789 * x_790);
    let x_793 : vec4<f32> = u_xlat1;
    let x_795 : i32 = u_xlati34;
    let x_797 : vec4<f32> = x_724.x_AdditionalLightsColor[x_795];
    u_xlat8 = (vec3<f32>(x_793.x, x_793.x, x_793.x) * vec3<f32>(x_797.x, x_797.y, x_797.z));
    let x_800 : f32 = u_xlat35;
    let x_802 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_800, x_800, x_800) * x_802);
    let x_804 : vec4<f32> = u_xlat2;
    let x_806 : vec3<f32> = u_xlat7;
    u_xlat34 = dot(vec3<f32>(x_804.x, x_804.y, x_804.z), x_806);
    let x_808 : f32 = u_xlat34;
    u_xlat34 = clamp(x_808, 0.0f, 1.0f);
    let x_811 : f32 = u_xlat34;
    let x_813 : vec3<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_811, x_811, x_811) * x_813);
    let x_815 : vec3<f32> = u_xlat3;
    let x_816 : vec3<f32> = u_xlat10;
    let x_819 : vec3<f32> = u_xlat7;
    u_xlat7 = ((x_815 * vec3<f32>(x_816.x, x_816.x, x_816.x)) + x_819);
    let x_821 : vec3<f32> = u_xlat7;
    let x_822 : vec3<f32> = u_xlat7;
    u_xlat34 = dot(x_821, x_822);
    let x_824 : f32 = u_xlat34;
    u_xlat34 = max(x_824, 1.17549435e-37f);
    let x_826 : f32 = u_xlat34;
    u_xlat34 = inverseSqrt(x_826);
    let x_828 : f32 = u_xlat34;
    let x_830 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_828, x_828, x_828) * x_830);
    let x_832 : vec4<f32> = u_xlat2;
    let x_834 : vec3<f32> = u_xlat7;
    u_xlat34 = dot(vec3<f32>(x_832.x, x_832.y, x_832.z), x_834);
    let x_836 : f32 = u_xlat34;
    u_xlat34 = clamp(x_836, 0.0f, 1.0f);
    let x_838 : f32 = u_xlat34;
    u_xlat34 = log2(x_838);
    let x_840 : f32 = u_xlat30;
    let x_841 : f32 = u_xlat34;
    u_xlat34 = (x_840 * x_841);
    let x_843 : f32 = u_xlat34;
    u_xlat34 = exp2(x_843);
    let x_845 : f32 = u_xlat34;
    let x_848 : vec4<f32> = x_56.x_SpecColor;
    u_xlat7 = (vec3<f32>(x_845, x_845, x_845) * vec3<f32>(x_848.x, x_848.y, x_848.z));
    let x_851 : vec3<f32> = u_xlat7;
    let x_852 : vec3<f32> = u_xlat8;
    u_xlat7 = (x_851 * x_852);
    let x_854 : vec3<f32> = u_xlat9;
    let x_855 : vec4<f32> = u_xlat1;
    let x_858 : vec3<f32> = u_xlat7;
    u_xlat7 = ((x_854 * vec3<f32>(x_855.y, x_855.z, x_855.w)) + x_858);
    let x_860 : vec3<f32> = u_xlat6;
    let x_861 : vec3<f32> = u_xlat7;
    u_xlat6 = (x_860 + x_861);

    continuing {
      let x_863 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_863 + bitcast<u32>(1i));
    }
  }
  let x_865 : vec3<f32> = u_xlat4;
  let x_866 : vec4<f32> = u_xlat1;
  let x_869 : vec4<f32> = u_xlat5;
  let x_871 : vec3<f32> = ((x_865 * vec3<f32>(x_866.y, x_866.z, x_866.w)) + vec3<f32>(x_869.x, x_869.y, x_869.z));
  let x_872 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_871.x, x_871.y, x_871.z, x_872.w);
  let x_876 : vec3<f32> = u_xlat6;
  let x_877 : vec4<f32> = u_xlat1;
  let x_879 : vec3<f32> = (x_876 + vec3<f32>(x_877.x, x_877.y, x_877.z));
  let x_880 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_879.x, x_879.y, x_879.z, x_880.w);
  let x_883 : f32 = x_56.x_Surface;
  u_xlatb10 = (x_883 == 1.0f);
  let x_885 : bool = u_xlatb10;
  let x_886 : bool = u_xlatb20;
  u_xlatb10 = (x_885 | x_886);
  let x_888 : bool = u_xlatb10;
  if (x_888) {
    let x_893 : f32 = u_xlat0.x;
    x_889 = x_893;
  } else {
    x_889 = 1.0f;
  }
  let x_895 : f32 = x_889;
  SV_Target0.w = x_895;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(5) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}

