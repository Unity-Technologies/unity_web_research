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

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_2 = array<strided_arr, 8u>;

struct LightCookies {
  x_MainLightWorldToLight : mat4x4<f32>,
  x_AdditionalLightsCookieEnableBits : Arr_2,
  x_MainLightCookieTextureFormat : f32,
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
}

type Arr_3 = array<vec4<f32>, 256u>;

type Arr_4 = array<vec4<f32>, 256u>;

type Arr_5 = array<vec4<f32>, 256u>;

type Arr_6 = array<vec4<f32>, 256u>;

type Arr_7 = array<vec4<f32>, 256u>;

struct strided_arr_1 {
  @size(16)
  el : f32,
}

type Arr_8 = array<strided_arr_1, 256u>;

type Arr_9 = array<vec4<f32>, 256u>;

type Arr_10 = array<strided_arr_1, 256u>;

struct AdditionalLights {
  x_AdditionalLightsPosition : Arr_9,
  x_AdditionalLightsColor : Arr_9,
  x_AdditionalLightsAttenuation : Arr_9,
  x_AdditionalLightsSpotDir : Arr_9,
  x_AdditionalLightsOcclusionProbes : Arr_9,
  x_AdditionalLightsLayerMasks : Arr_10,
}

type Arr_11 = array<mat4x4<f32>, 256u>;

struct AdditionalLightsCookies {
  x_AdditionalLightsWorldToLights : Arr_11,
  x_AdditionalLightsCookieAtlasUVRects : Arr_9,
  x_AdditionalLightsLightTypes : Arr_10,
}

var<private> gl_FragCoord : vec4<f32>;

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(7) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

@group(0) @binding(1) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_BumpMap : sampler;

@group(0) @binding(6) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_238 : UnityPerDraw;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_353 : MainLightShadows;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_803 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(1) var<uniform> x_1115 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_1217 : AdditionalLightsCookies;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_74 : f32;
  var u_xlat12 : vec3<f32>;
  var u_xlat24 : f32;
  var u_xlat36 : f32;
  var u_xlatb24 : bool;
  var x_131 : f32;
  var u_xlatb12 : bool;
  var u_xlat2 : vec4<f32>;
  var u_xlatb14 : bool;
  var x_243 : f32;
  var u_xlatb2 : bool;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlatb4 : vec4<bool>;
  var u_xlatu36 : u32;
  var u_xlati36 : i32;
  var u_xlat38 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat39 : f32;
  var u_xlatb16 : bool;
  var u_xlat16 : f32;
  var u_xlatb6 : vec2<bool>;
  var u_xlat40 : f32;
  var x_890 : f32;
  var x_901 : vec3<f32>;
  var u_xlatu39 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu41 : u32;
  var u_xlati30 : i32;
  var u_xlat41 : f32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat8 : vec3<f32>;
  var u_xlat30 : f32;
  var u_xlat42 : f32;
  var u_xlatu42 : u32;
  var u_xlati43 : i32;
  var u_xlati42 : i32;
  var u_xlati44 : i32;
  var u_xlat9 : vec4<f32>;
  var u_xlatb42 : bool;
  var u_xlat33 : vec2<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec3<f32>;
  var u_xlatb33 : vec2<bool>;
  var x_1512 : f32;
  var x_1525 : f32;
  var x_1577 : f32;
  var x_1588 : vec3<f32>;
  var x_1748 : f32;
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
  u_xlat12.x = ((x_86 * x_88) + -(x_91));
  let x_97 : f32 = u_xlat1.x;
  u_xlat24 = dpdxCoarse(x_97);
  let x_101 : f32 = u_xlat1.x;
  u_xlat36 = dpdyCoarse(x_101);
  let x_103 : f32 = u_xlat36;
  let x_105 : f32 = u_xlat24;
  u_xlat24 = (abs(x_103) + abs(x_105));
  let x_108 : f32 = u_xlat24;
  u_xlat24 = max(x_108, 0.0001f);
  let x_112 : f32 = u_xlat12.x;
  let x_113 : f32 = u_xlat24;
  u_xlat12.x = (x_112 / x_113);
  let x_117 : f32 = u_xlat12.x;
  u_xlat12.x = (x_117 + 0.5f);
  let x_122 : f32 = u_xlat12.x;
  u_xlat12.x = clamp(x_122, 0.0f, 1.0f);
  let x_128 : f32 = x_44.x_AlphaToMaskAvailable;
  u_xlatb24 = !((x_128 == 0.0f));
  let x_130 : bool = u_xlatb24;
  if (x_130) {
    let x_135 : f32 = u_xlat12.x;
    x_131 = x_135;
  } else {
    let x_138 : f32 = u_xlat0.x;
    x_131 = x_138;
  }
  let x_139 : f32 = x_131;
  u_xlat0.x = x_139;
  let x_142 : f32 = u_xlat0.x;
  u_xlat12.x = (x_142 + -0.0001f);
  let x_148 : f32 = u_xlat12.x;
  u_xlatb12 = (x_148 < 0.0f);
  let x_150 : bool = u_xlatb12;
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
  let x_187 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_186.x, x_187.y, x_186.y);
  let x_189 : vec3<f32> = u_xlat12;
  let x_191 : vec3<f32> = u_xlat12;
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
  u_xlatb14 = (x_240 >= 0.0f);
  let x_242 : bool = u_xlatb14;
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
  let x_274 : vec3<f32> = u_xlat12;
  let x_277 : vec4<f32> = vs_TEXCOORD4;
  let x_279 : vec3<f32> = (vec3<f32>(x_274.z, x_274.z, x_274.z) * vec3<f32>(x_277.x, x_277.y, x_277.z));
  let x_280 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_279.x, x_279.y, x_279.z, x_280.w);
  let x_282 : vec3<f32> = u_xlat12;
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
  u_xlat12.x = dot(vec3<f32>(x_304.x, x_304.y, x_304.z), vec3<f32>(x_306.x, x_306.y, x_306.z));
  let x_311 : f32 = u_xlat12.x;
  u_xlat12.x = inverseSqrt(x_311);
  let x_314 : vec3<f32> = u_xlat12;
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
  u_xlat12.x = dot(x_332, x_333);
  let x_337 : f32 = u_xlat12.x;
  u_xlat12.x = max(x_337, 1.17549435e-37f);
  let x_342 : f32 = u_xlat12.x;
  u_xlat12.x = inverseSqrt(x_342);
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
  u_xlat36 = dot(x_459, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_464 : f32 = u_xlat36;
  u_xlat36 = (-(x_464) + 4.0f);
  let x_469 : f32 = u_xlat36;
  u_xlatu36 = u32(x_469);
  let x_473 : u32 = u_xlatu36;
  u_xlati36 = (bitcast<i32>(x_473) << bitcast<u32>(2i));
  let x_476 : vec3<f32> = vs_TEXCOORD1;
  let x_478 : i32 = u_xlati36;
  let x_481 : i32 = u_xlati36;
  let x_485 : vec4<f32> = x_353.x_MainLightWorldToShadow[((x_478 + 1i) / 4i)][((x_481 + 1i) % 4i)];
  let x_487 : vec3<f32> = (vec3<f32>(x_476.y, x_476.y, x_476.y) * vec3<f32>(x_485.x, x_485.y, x_485.z));
  let x_488 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_487.x, x_487.y, x_487.z, x_488.w);
  let x_490 : i32 = u_xlati36;
  let x_492 : i32 = u_xlati36;
  let x_495 : vec4<f32> = x_353.x_MainLightWorldToShadow[(x_490 / 4i)][(x_492 % 4i)];
  let x_497 : vec3<f32> = vs_TEXCOORD1;
  let x_500 : vec4<f32> = u_xlat4;
  let x_502 : vec3<f32> = ((vec3<f32>(x_495.x, x_495.y, x_495.z) * vec3<f32>(x_497.x, x_497.x, x_497.x)) + vec3<f32>(x_500.x, x_500.y, x_500.z));
  let x_503 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_502.x, x_502.y, x_502.z, x_503.w);
  let x_505 : i32 = u_xlati36;
  let x_508 : i32 = u_xlati36;
  let x_512 : vec4<f32> = x_353.x_MainLightWorldToShadow[((x_505 + 2i) / 4i)][((x_508 + 2i) % 4i)];
  let x_514 : vec3<f32> = vs_TEXCOORD1;
  let x_517 : vec4<f32> = u_xlat4;
  let x_519 : vec3<f32> = ((vec3<f32>(x_512.x, x_512.y, x_512.z) * vec3<f32>(x_514.z, x_514.z, x_514.z)) + vec3<f32>(x_517.x, x_517.y, x_517.z));
  let x_520 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_519.x, x_519.y, x_519.z, x_520.w);
  let x_522 : vec4<f32> = u_xlat4;
  let x_524 : i32 = u_xlati36;
  let x_527 : i32 = u_xlati36;
  let x_531 : vec4<f32> = x_353.x_MainLightWorldToShadow[((x_524 + 3i) / 4i)][((x_527 + 3i) % 4i)];
  let x_533 : vec3<f32> = (vec3<f32>(x_522.x, x_522.y, x_522.z) + vec3<f32>(x_531.x, x_531.y, x_531.z));
  let x_534 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_533.x, x_533.y, x_533.z, x_534.w);
  let x_537 : f32 = vs_TEXCOORD1.y;
  let x_540 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat36 = (x_537 * x_540);
  let x_543 : f32 = x_44.unity_MatrixV[0i].z;
  let x_545 : f32 = vs_TEXCOORD1.x;
  let x_547 : f32 = u_xlat36;
  u_xlat36 = ((x_543 * x_545) + x_547);
  let x_550 : f32 = x_44.unity_MatrixV[2i].z;
  let x_552 : f32 = vs_TEXCOORD1.z;
  let x_554 : f32 = u_xlat36;
  u_xlat36 = ((x_550 * x_552) + x_554);
  let x_556 : f32 = u_xlat36;
  let x_558 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat36 = (x_556 + x_558);
  let x_560 : f32 = u_xlat36;
  let x_564 : f32 = x_44.x_ProjectionParams.y;
  u_xlat36 = (-(x_560) + -(x_564));
  let x_567 : f32 = u_xlat36;
  u_xlat36 = max(x_567, 0.0f);
  let x_569 : f32 = u_xlat36;
  let x_572 : f32 = x_44.unity_FogParams.x;
  u_xlat36 = (x_569 * x_572);
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
  u_xlat38 = (x_701 + -1.0f);
  let x_704 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_705 : f32 = u_xlat38;
  u_xlat38 = ((x_704 * x_705) + 1.0f);
  let x_709 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_709, 1.0f);
  let x_713 : vec4<f32> = u_xlat4;
  let x_714 : vec2<f32> = vec2<f32>(x_713.x, x_713.y);
  let x_716 : f32 = u_xlat4.z;
  txVec0 = vec3<f32>(x_714.x, x_714.y, x_716);
  let x_729 : vec3<f32> = txVec0;
  let x_731 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_729.xy, x_729.z);
  u_xlat39 = x_731;
  let x_733 : f32 = x_353.x_MainLightShadowParams.x;
  u_xlat4.x = (-(x_733) + 1.0f);
  let x_737 : f32 = u_xlat39;
  let x_739 : f32 = x_353.x_MainLightShadowParams.x;
  let x_742 : f32 = u_xlat4.x;
  u_xlat39 = ((x_737 * x_739) + x_742);
  let x_745 : f32 = u_xlat4.z;
  u_xlatb4.x = (0.0f >= x_745);
  let x_750 : f32 = u_xlat4.z;
  u_xlatb16 = (x_750 >= 1.0f);
  let x_752 : bool = u_xlatb16;
  let x_754 : bool = u_xlatb4.x;
  u_xlatb4.x = (x_752 | x_754);
  let x_758 : bool = u_xlatb4.x;
  let x_759 : f32 = u_xlat39;
  u_xlat39 = select(x_759, 1.0f, x_758);
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
  let x_790 : f32 = u_xlat39;
  u_xlat16 = (-(x_790) + 1.0f);
  let x_794 : f32 = u_xlat4.x;
  let x_795 : f32 = u_xlat16;
  let x_797 : f32 = u_xlat39;
  u_xlat39 = ((x_794 * x_795) + x_797);
  let x_805 : f32 = x_803.x_MainLightCookieTextureFormat;
  u_xlatb4.x = !((x_805 == -1.0f));
  let x_809 : bool = u_xlatb4.x;
  if (x_809) {
    let x_812 : vec3<f32> = vs_TEXCOORD1;
    let x_815 : vec4<f32> = x_803.x_MainLightWorldToLight[1i];
    let x_817 : vec2<f32> = (vec2<f32>(x_812.y, x_812.y) * vec2<f32>(x_815.x, x_815.y));
    let x_818 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_817.x, x_817.y, x_818.z, x_818.w);
    let x_821 : vec4<f32> = x_803.x_MainLightWorldToLight[0i];
    let x_823 : vec3<f32> = vs_TEXCOORD1;
    let x_826 : vec4<f32> = u_xlat4;
    let x_828 : vec2<f32> = ((vec2<f32>(x_821.x, x_821.y) * vec2<f32>(x_823.x, x_823.x)) + vec2<f32>(x_826.x, x_826.y));
    let x_829 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_828.x, x_828.y, x_829.z, x_829.w);
    let x_832 : vec4<f32> = x_803.x_MainLightWorldToLight[2i];
    let x_834 : vec3<f32> = vs_TEXCOORD1;
    let x_837 : vec4<f32> = u_xlat4;
    let x_839 : vec2<f32> = ((vec2<f32>(x_832.x, x_832.y) * vec2<f32>(x_834.z, x_834.z)) + vec2<f32>(x_837.x, x_837.y));
    let x_840 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_839.x, x_839.y, x_840.z, x_840.w);
    let x_842 : vec4<f32> = u_xlat4;
    let x_845 : vec4<f32> = x_803.x_MainLightWorldToLight[3i];
    let x_847 : vec2<f32> = (vec2<f32>(x_842.x, x_842.y) + vec2<f32>(x_845.x, x_845.y));
    let x_848 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_847.x, x_847.y, x_848.z, x_848.w);
    let x_850 : vec4<f32> = u_xlat4;
    let x_854 : vec2<f32> = ((vec2<f32>(x_850.x, x_850.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_855 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_854.x, x_854.y, x_855.z, x_855.w);
    let x_862 : vec4<f32> = u_xlat4;
    let x_865 : f32 = x_44.x_GlobalMipBias.x;
    let x_866 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_862.x, x_862.y), x_865);
    u_xlat4 = x_866;
    let x_871 : f32 = x_803.x_MainLightCookieTextureFormat;
    let x_873 : f32 = x_803.x_MainLightCookieTextureFormat;
    let x_875 : f32 = x_803.x_MainLightCookieTextureFormat;
    let x_877 : f32 = x_803.x_MainLightCookieTextureFormat;
    let x_878 : vec4<f32> = vec4<f32>(x_871, x_873, x_875, x_877);
    let x_885 : vec4<bool> = (vec4<f32>(x_878.x, x_878.y, x_878.z, x_878.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb6 = vec2<bool>(x_885.x, x_885.y);
    let x_889 : bool = u_xlatb6.y;
    if (x_889) {
      let x_894 : f32 = u_xlat4.w;
      x_890 = x_894;
    } else {
      let x_897 : f32 = u_xlat4.x;
      x_890 = x_897;
    }
    let x_898 : f32 = x_890;
    u_xlat40 = x_898;
    let x_900 : bool = u_xlatb6.x;
    if (x_900) {
      let x_904 : vec4<f32> = u_xlat4;
      x_901 = vec3<f32>(x_904.x, x_904.y, x_904.z);
    } else {
      let x_907 : f32 = u_xlat40;
      x_901 = vec3<f32>(x_907, x_907, x_907);
    }
    let x_909 : vec3<f32> = x_901;
    let x_910 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_909.x, x_909.y, x_909.z, x_910.w);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
  }
  let x_916 : vec4<f32> = u_xlat4;
  let x_919 : vec4<f32> = x_44.x_MainLightColor;
  let x_921 : vec3<f32> = (vec3<f32>(x_916.x, x_916.y, x_916.z) * vec3<f32>(x_919.x, x_919.y, x_919.z));
  let x_922 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_921.x, x_921.y, x_921.z, x_922.w);
  let x_924 : f32 = u_xlat38;
  let x_926 : vec4<f32> = u_xlat4;
  let x_928 : vec3<f32> = (vec3<f32>(x_924, x_924, x_924) * vec3<f32>(x_926.x, x_926.y, x_926.z));
  let x_929 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_928.x, x_928.y, x_928.z, x_929.w);
  let x_931 : vec4<f32> = u_xlat1;
  let x_933 : vec4<f32> = u_xlat5;
  let x_935 : vec3<f32> = (vec3<f32>(x_931.x, x_931.x, x_931.x) * vec3<f32>(x_933.x, x_933.y, x_933.z));
  let x_936 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_935.x, x_935.y, x_935.z, x_936.w);
  let x_938 : f32 = u_xlat39;
  let x_940 : f32 = x_238.unity_LightData.z;
  u_xlat1.x = (x_938 * x_940);
  let x_943 : vec4<f32> = u_xlat1;
  let x_945 : vec4<f32> = u_xlat4;
  let x_947 : vec3<f32> = (vec3<f32>(x_943.x, x_943.x, x_943.x) * vec3<f32>(x_945.x, x_945.y, x_945.z));
  let x_948 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_947.x, x_947.y, x_947.z, x_948.w);
  let x_950 : vec4<f32> = u_xlat2;
  let x_953 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat1.x = dot(vec3<f32>(x_950.x, x_950.y, x_950.z), vec3<f32>(x_953.x, x_953.y, x_953.z));
  let x_958 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_958, 0.0f, 1.0f);
  let x_961 : vec4<f32> = u_xlat1;
  let x_963 : vec4<f32> = u_xlat4;
  let x_965 : vec3<f32> = (vec3<f32>(x_961.x, x_961.x, x_961.x) * vec3<f32>(x_963.x, x_963.y, x_963.z));
  let x_966 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_965.x, x_965.y, x_965.z, x_966.w);
  let x_969 : f32 = x_57.x_SpecColor.w;
  u_xlat1.x = ((x_969 * 10.0f) + 1.0f);
  let x_975 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_975);
  let x_978 : vec3<f32> = u_xlat3;
  let x_979 : vec3<f32> = u_xlat12;
  let x_983 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat7 = ((x_978 * vec3<f32>(x_979.x, x_979.x, x_979.x)) + vec3<f32>(x_983.x, x_983.y, x_983.z));
  let x_986 : vec3<f32> = u_xlat7;
  let x_987 : vec3<f32> = u_xlat7;
  u_xlat39 = dot(x_986, x_987);
  let x_989 : f32 = u_xlat39;
  u_xlat39 = max(x_989, 1.17549435e-37f);
  let x_991 : f32 = u_xlat39;
  u_xlat39 = inverseSqrt(x_991);
  let x_993 : f32 = u_xlat39;
  let x_995 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_993, x_993, x_993) * x_995);
  let x_997 : vec4<f32> = u_xlat2;
  let x_999 : vec3<f32> = u_xlat7;
  u_xlat39 = dot(vec3<f32>(x_997.x, x_997.y, x_997.z), x_999);
  let x_1001 : f32 = u_xlat39;
  u_xlat39 = clamp(x_1001, 0.0f, 1.0f);
  let x_1003 : f32 = u_xlat39;
  u_xlat39 = log2(x_1003);
  let x_1006 : f32 = u_xlat1.x;
  let x_1007 : f32 = u_xlat39;
  u_xlat39 = (x_1006 * x_1007);
  let x_1009 : f32 = u_xlat39;
  u_xlat39 = exp2(x_1009);
  let x_1011 : f32 = u_xlat39;
  let x_1014 : vec4<f32> = x_57.x_SpecColor;
  u_xlat7 = (vec3<f32>(x_1011, x_1011, x_1011) * vec3<f32>(x_1014.x, x_1014.y, x_1014.z));
  let x_1017 : vec4<f32> = u_xlat4;
  let x_1019 : vec3<f32> = u_xlat7;
  let x_1020 : vec3<f32> = (vec3<f32>(x_1017.x, x_1017.y, x_1017.z) * x_1019);
  let x_1021 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1020.x, x_1020.y, x_1020.z, x_1021.w);
  let x_1023 : vec4<f32> = u_xlat6;
  let x_1025 : vec4<f32> = u_xlat1;
  let x_1028 : vec4<f32> = u_xlat4;
  let x_1030 : vec3<f32> = ((vec3<f32>(x_1023.x, x_1023.y, x_1023.z) * vec3<f32>(x_1025.y, x_1025.z, x_1025.w)) + vec3<f32>(x_1028.x, x_1028.y, x_1028.z));
  let x_1031 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1030.x, x_1030.y, x_1030.z, x_1031.w);
  let x_1035 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1037 : f32 = x_238.unity_LightData.y;
  u_xlat39 = min(x_1035, x_1037);
  let x_1040 : f32 = u_xlat39;
  u_xlatu39 = bitcast<u32>(i32(x_1040));
  let x_1044 : f32 = x_803.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1046 : f32 = x_803.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1048 : f32 = x_803.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1050 : f32 = x_803.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1051 : vec4<f32> = vec4<f32>(x_1044, x_1046, x_1048, x_1050);
  let x_1057 : vec4<bool> = (vec4<f32>(x_1051.x, x_1051.y, x_1051.z, x_1051.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_1057.x, x_1057.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1068 : u32 = u_xlatu_loop_1;
    let x_1069 : u32 = u_xlatu39;
    if ((x_1068 < x_1069)) {
    } else {
      break;
    }
    let x_1072 : u32 = u_xlatu_loop_1;
    u_xlatu41 = (x_1072 >> 2u);
    let x_1075 : u32 = u_xlatu_loop_1;
    u_xlati30 = bitcast<i32>((x_1075 & 3u));
    let x_1079 : u32 = u_xlatu41;
    let x_1082 : vec4<f32> = x_238.unity_LightIndices[bitcast<i32>(x_1079)];
    let x_1092 : i32 = u_xlati30;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1097 : vec4<u32> = indexable[x_1092];
    u_xlat41 = dot(x_1082, bitcast<vec4<f32>>(x_1097));
    let x_1100 : f32 = u_xlat41;
    u_xlatu41 = bitcast<u32>(i32(x_1100));
    let x_1104 : vec3<f32> = vs_TEXCOORD1;
    let x_1116 : u32 = u_xlatu41;
    let x_1119 : vec4<f32> = x_1115.x_AdditionalLightsPosition[bitcast<i32>(x_1116)];
    let x_1122 : u32 = u_xlatu41;
    let x_1125 : vec4<f32> = x_1115.x_AdditionalLightsPosition[bitcast<i32>(x_1122)];
    u_xlat8 = ((-(x_1104) * vec3<f32>(x_1119.w, x_1119.w, x_1119.w)) + vec3<f32>(x_1125.x, x_1125.y, x_1125.z));
    let x_1129 : vec3<f32> = u_xlat8;
    let x_1130 : vec3<f32> = u_xlat8;
    u_xlat30 = dot(x_1129, x_1130);
    let x_1132 : f32 = u_xlat30;
    u_xlat30 = max(x_1132, 6.10351562e-05f);
    let x_1136 : f32 = u_xlat30;
    u_xlat42 = inverseSqrt(x_1136);
    let x_1138 : f32 = u_xlat42;
    let x_1140 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_1138, x_1138, x_1138) * x_1140);
    let x_1142 : f32 = u_xlat30;
    u_xlat42 = (1.0f / x_1142);
    let x_1144 : f32 = u_xlat30;
    let x_1145 : u32 = u_xlatu41;
    let x_1148 : f32 = x_1115.x_AdditionalLightsAttenuation[bitcast<i32>(x_1145)].x;
    u_xlat30 = (x_1144 * x_1148);
    let x_1150 : f32 = u_xlat30;
    let x_1152 : f32 = u_xlat30;
    u_xlat30 = ((-(x_1150) * x_1152) + 1.0f);
    let x_1155 : f32 = u_xlat30;
    u_xlat30 = max(x_1155, 0.0f);
    let x_1157 : f32 = u_xlat30;
    let x_1158 : f32 = u_xlat30;
    u_xlat30 = (x_1157 * x_1158);
    let x_1160 : f32 = u_xlat30;
    let x_1161 : f32 = u_xlat42;
    u_xlat30 = (x_1160 * x_1161);
    let x_1163 : u32 = u_xlatu41;
    let x_1166 : vec4<f32> = x_1115.x_AdditionalLightsSpotDir[bitcast<i32>(x_1163)];
    let x_1168 : vec3<f32> = u_xlat8;
    u_xlat42 = dot(vec3<f32>(x_1166.x, x_1166.y, x_1166.z), x_1168);
    let x_1170 : f32 = u_xlat42;
    let x_1171 : u32 = u_xlatu41;
    let x_1174 : f32 = x_1115.x_AdditionalLightsAttenuation[bitcast<i32>(x_1171)].z;
    let x_1176 : u32 = u_xlatu41;
    let x_1179 : f32 = x_1115.x_AdditionalLightsAttenuation[bitcast<i32>(x_1176)].w;
    u_xlat42 = ((x_1170 * x_1174) + x_1179);
    let x_1181 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1181, 0.0f, 1.0f);
    let x_1183 : f32 = u_xlat42;
    let x_1184 : f32 = u_xlat42;
    u_xlat42 = (x_1183 * x_1184);
    let x_1186 : f32 = u_xlat42;
    let x_1187 : f32 = u_xlat30;
    u_xlat30 = (x_1186 * x_1187);
    let x_1190 : u32 = u_xlatu41;
    u_xlatu42 = (x_1190 >> 5u);
    let x_1193 : u32 = u_xlatu41;
    u_xlati43 = (1i << bitcast<u32>((bitcast<i32>(x_1193) & 31i)));
    let x_1199 : i32 = u_xlati43;
    let x_1201 : u32 = u_xlatu42;
    let x_1204 : f32 = x_803.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1201)].el;
    u_xlati42 = bitcast<i32>((bitcast<u32>(x_1199) & bitcast<u32>(x_1204)));
    let x_1208 : i32 = u_xlati42;
    if ((x_1208 != 0i)) {
      let x_1218 : u32 = u_xlatu41;
      let x_1221 : f32 = x_1217.x_AdditionalLightsLightTypes[bitcast<i32>(x_1218)].el;
      u_xlati42 = i32(x_1221);
      let x_1223 : i32 = u_xlati42;
      u_xlati43 = select(1i, 0i, (x_1223 != 0i));
      let x_1227 : u32 = u_xlatu41;
      u_xlati44 = (bitcast<i32>(x_1227) << bitcast<u32>(2i));
      let x_1230 : i32 = u_xlati43;
      if ((x_1230 != 0i)) {
        let x_1235 : vec3<f32> = vs_TEXCOORD1;
        let x_1237 : i32 = u_xlati44;
        let x_1240 : i32 = u_xlati44;
        let x_1244 : vec4<f32> = x_1217.x_AdditionalLightsWorldToLights[((x_1237 + 1i) / 4i)][((x_1240 + 1i) % 4i)];
        let x_1246 : vec3<f32> = (vec3<f32>(x_1235.y, x_1235.y, x_1235.y) * vec3<f32>(x_1244.x, x_1244.y, x_1244.w));
        let x_1247 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1246.x, x_1246.y, x_1246.z, x_1247.w);
        let x_1249 : i32 = u_xlati44;
        let x_1251 : i32 = u_xlati44;
        let x_1254 : vec4<f32> = x_1217.x_AdditionalLightsWorldToLights[(x_1249 / 4i)][(x_1251 % 4i)];
        let x_1256 : vec3<f32> = vs_TEXCOORD1;
        let x_1259 : vec4<f32> = u_xlat9;
        let x_1261 : vec3<f32> = ((vec3<f32>(x_1254.x, x_1254.y, x_1254.w) * vec3<f32>(x_1256.x, x_1256.x, x_1256.x)) + vec3<f32>(x_1259.x, x_1259.y, x_1259.z));
        let x_1262 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1261.x, x_1261.y, x_1261.z, x_1262.w);
        let x_1264 : i32 = u_xlati44;
        let x_1267 : i32 = u_xlati44;
        let x_1271 : vec4<f32> = x_1217.x_AdditionalLightsWorldToLights[((x_1264 + 2i) / 4i)][((x_1267 + 2i) % 4i)];
        let x_1273 : vec3<f32> = vs_TEXCOORD1;
        let x_1276 : vec4<f32> = u_xlat9;
        let x_1278 : vec3<f32> = ((vec3<f32>(x_1271.x, x_1271.y, x_1271.w) * vec3<f32>(x_1273.z, x_1273.z, x_1273.z)) + vec3<f32>(x_1276.x, x_1276.y, x_1276.z));
        let x_1279 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1278.x, x_1278.y, x_1278.z, x_1279.w);
        let x_1281 : vec4<f32> = u_xlat9;
        let x_1283 : i32 = u_xlati44;
        let x_1286 : i32 = u_xlati44;
        let x_1290 : vec4<f32> = x_1217.x_AdditionalLightsWorldToLights[((x_1283 + 3i) / 4i)][((x_1286 + 3i) % 4i)];
        let x_1292 : vec3<f32> = (vec3<f32>(x_1281.x, x_1281.y, x_1281.z) + vec3<f32>(x_1290.x, x_1290.y, x_1290.w));
        let x_1293 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1292.x, x_1292.y, x_1292.z, x_1293.w);
        let x_1295 : vec4<f32> = u_xlat9;
        let x_1297 : vec4<f32> = u_xlat9;
        let x_1299 : vec2<f32> = (vec2<f32>(x_1295.x, x_1295.y) / vec2<f32>(x_1297.z, x_1297.z));
        let x_1300 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1299.x, x_1299.y, x_1300.z, x_1300.w);
        let x_1302 : vec4<f32> = u_xlat9;
        let x_1305 : vec2<f32> = ((vec2<f32>(x_1302.x, x_1302.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1306 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1305.x, x_1305.y, x_1306.z, x_1306.w);
        let x_1308 : vec4<f32> = u_xlat9;
        let x_1312 : vec2<f32> = clamp(vec2<f32>(x_1308.x, x_1308.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1313 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1312.x, x_1312.y, x_1313.z, x_1313.w);
        let x_1315 : u32 = u_xlatu41;
        let x_1318 : vec4<f32> = x_1217.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1315)];
        let x_1320 : vec4<f32> = u_xlat9;
        let x_1323 : u32 = u_xlatu41;
        let x_1326 : vec4<f32> = x_1217.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1323)];
        let x_1328 : vec2<f32> = ((vec2<f32>(x_1318.x, x_1318.y) * vec2<f32>(x_1320.x, x_1320.y)) + vec2<f32>(x_1326.z, x_1326.w));
        let x_1329 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1328.x, x_1328.y, x_1329.z, x_1329.w);
      } else {
        let x_1333 : i32 = u_xlati42;
        u_xlatb42 = (x_1333 == 1i);
        let x_1335 : bool = u_xlatb42;
        u_xlati42 = select(0i, 1i, x_1335);
        let x_1337 : i32 = u_xlati42;
        if ((x_1337 != 0i)) {
          let x_1343 : vec3<f32> = vs_TEXCOORD1;
          let x_1345 : i32 = u_xlati44;
          let x_1348 : i32 = u_xlati44;
          let x_1352 : vec4<f32> = x_1217.x_AdditionalLightsWorldToLights[((x_1345 + 1i) / 4i)][((x_1348 + 1i) % 4i)];
          u_xlat33 = (vec2<f32>(x_1343.y, x_1343.y) * vec2<f32>(x_1352.x, x_1352.y));
          let x_1355 : i32 = u_xlati44;
          let x_1357 : i32 = u_xlati44;
          let x_1360 : vec4<f32> = x_1217.x_AdditionalLightsWorldToLights[(x_1355 / 4i)][(x_1357 % 4i)];
          let x_1362 : vec3<f32> = vs_TEXCOORD1;
          let x_1365 : vec2<f32> = u_xlat33;
          u_xlat33 = ((vec2<f32>(x_1360.x, x_1360.y) * vec2<f32>(x_1362.x, x_1362.x)) + x_1365);
          let x_1367 : i32 = u_xlati44;
          let x_1370 : i32 = u_xlati44;
          let x_1374 : vec4<f32> = x_1217.x_AdditionalLightsWorldToLights[((x_1367 + 2i) / 4i)][((x_1370 + 2i) % 4i)];
          let x_1376 : vec3<f32> = vs_TEXCOORD1;
          let x_1379 : vec2<f32> = u_xlat33;
          u_xlat33 = ((vec2<f32>(x_1374.x, x_1374.y) * vec2<f32>(x_1376.z, x_1376.z)) + x_1379);
          let x_1381 : vec2<f32> = u_xlat33;
          let x_1382 : i32 = u_xlati44;
          let x_1385 : i32 = u_xlati44;
          let x_1389 : vec4<f32> = x_1217.x_AdditionalLightsWorldToLights[((x_1382 + 3i) / 4i)][((x_1385 + 3i) % 4i)];
          u_xlat33 = (x_1381 + vec2<f32>(x_1389.x, x_1389.y));
          let x_1392 : vec2<f32> = u_xlat33;
          u_xlat33 = ((x_1392 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1395 : vec2<f32> = u_xlat33;
          u_xlat33 = fract(x_1395);
          let x_1397 : u32 = u_xlatu41;
          let x_1400 : vec4<f32> = x_1217.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1397)];
          let x_1402 : vec2<f32> = u_xlat33;
          let x_1404 : u32 = u_xlatu41;
          let x_1407 : vec4<f32> = x_1217.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1404)];
          let x_1409 : vec2<f32> = ((vec2<f32>(x_1400.x, x_1400.y) * x_1402) + vec2<f32>(x_1407.z, x_1407.w));
          let x_1410 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1409.x, x_1409.y, x_1410.z, x_1410.w);
        } else {
          let x_1414 : vec3<f32> = vs_TEXCOORD1;
          let x_1416 : i32 = u_xlati44;
          let x_1419 : i32 = u_xlati44;
          let x_1423 : vec4<f32> = x_1217.x_AdditionalLightsWorldToLights[((x_1416 + 1i) / 4i)][((x_1419 + 1i) % 4i)];
          u_xlat10 = (vec4<f32>(x_1414.y, x_1414.y, x_1414.y, x_1414.y) * x_1423);
          let x_1425 : i32 = u_xlati44;
          let x_1427 : i32 = u_xlati44;
          let x_1430 : vec4<f32> = x_1217.x_AdditionalLightsWorldToLights[(x_1425 / 4i)][(x_1427 % 4i)];
          let x_1431 : vec3<f32> = vs_TEXCOORD1;
          let x_1434 : vec4<f32> = u_xlat10;
          u_xlat10 = ((x_1430 * vec4<f32>(x_1431.x, x_1431.x, x_1431.x, x_1431.x)) + x_1434);
          let x_1436 : i32 = u_xlati44;
          let x_1439 : i32 = u_xlati44;
          let x_1443 : vec4<f32> = x_1217.x_AdditionalLightsWorldToLights[((x_1436 + 2i) / 4i)][((x_1439 + 2i) % 4i)];
          let x_1444 : vec3<f32> = vs_TEXCOORD1;
          let x_1447 : vec4<f32> = u_xlat10;
          u_xlat10 = ((x_1443 * vec4<f32>(x_1444.z, x_1444.z, x_1444.z, x_1444.z)) + x_1447);
          let x_1449 : vec4<f32> = u_xlat10;
          let x_1450 : i32 = u_xlati44;
          let x_1453 : i32 = u_xlati44;
          let x_1457 : vec4<f32> = x_1217.x_AdditionalLightsWorldToLights[((x_1450 + 3i) / 4i)][((x_1453 + 3i) % 4i)];
          u_xlat10 = (x_1449 + x_1457);
          let x_1459 : vec4<f32> = u_xlat10;
          let x_1461 : vec4<f32> = u_xlat10;
          let x_1463 : vec3<f32> = (vec3<f32>(x_1459.x, x_1459.y, x_1459.z) / vec3<f32>(x_1461.w, x_1461.w, x_1461.w));
          let x_1464 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_1463.x, x_1463.y, x_1463.z, x_1464.w);
          let x_1466 : vec4<f32> = u_xlat10;
          let x_1468 : vec4<f32> = u_xlat10;
          u_xlat42 = dot(vec3<f32>(x_1466.x, x_1466.y, x_1466.z), vec3<f32>(x_1468.x, x_1468.y, x_1468.z));
          let x_1471 : f32 = u_xlat42;
          u_xlat42 = inverseSqrt(x_1471);
          let x_1473 : f32 = u_xlat42;
          let x_1475 : vec4<f32> = u_xlat10;
          let x_1477 : vec3<f32> = (vec3<f32>(x_1473, x_1473, x_1473) * vec3<f32>(x_1475.x, x_1475.y, x_1475.z));
          let x_1478 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_1477.x, x_1477.y, x_1477.z, x_1478.w);
          let x_1480 : vec4<f32> = u_xlat10;
          u_xlat42 = dot(abs(vec3<f32>(x_1480.x, x_1480.y, x_1480.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1485 : f32 = u_xlat42;
          u_xlat42 = max(x_1485, 0.000001f);
          let x_1488 : f32 = u_xlat42;
          u_xlat42 = (1.0f / x_1488);
          let x_1491 : f32 = u_xlat42;
          let x_1493 : vec4<f32> = u_xlat10;
          u_xlat11 = (vec3<f32>(x_1491, x_1491, x_1491) * vec3<f32>(x_1493.z, x_1493.x, x_1493.y));
          let x_1497 : f32 = u_xlat11.x;
          u_xlat11.x = -(x_1497);
          let x_1501 : f32 = u_xlat11.x;
          u_xlat11.x = clamp(x_1501, 0.0f, 1.0f);
          let x_1505 : vec3<f32> = u_xlat11;
          let x_1508 : vec4<bool> = (vec4<f32>(x_1505.y, x_1505.z, x_1505.y, x_1505.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb33 = vec2<bool>(x_1508.x, x_1508.y);
          let x_1511 : bool = u_xlatb33.x;
          if (x_1511) {
            let x_1516 : f32 = u_xlat11.x;
            x_1512 = x_1516;
          } else {
            let x_1519 : f32 = u_xlat11.x;
            x_1512 = -(x_1519);
          }
          let x_1521 : f32 = x_1512;
          u_xlat33.x = x_1521;
          let x_1524 : bool = u_xlatb33.y;
          if (x_1524) {
            let x_1529 : f32 = u_xlat11.x;
            x_1525 = x_1529;
          } else {
            let x_1532 : f32 = u_xlat11.x;
            x_1525 = -(x_1532);
          }
          let x_1534 : f32 = x_1525;
          u_xlat33.y = x_1534;
          let x_1536 : vec4<f32> = u_xlat10;
          let x_1538 : f32 = u_xlat42;
          let x_1541 : vec2<f32> = u_xlat33;
          u_xlat33 = ((vec2<f32>(x_1536.x, x_1536.y) * vec2<f32>(x_1538, x_1538)) + x_1541);
          let x_1543 : vec2<f32> = u_xlat33;
          u_xlat33 = ((x_1543 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1546 : vec2<f32> = u_xlat33;
          u_xlat33 = clamp(x_1546, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1550 : u32 = u_xlatu41;
          let x_1553 : vec4<f32> = x_1217.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1550)];
          let x_1555 : vec2<f32> = u_xlat33;
          let x_1557 : u32 = u_xlatu41;
          let x_1560 : vec4<f32> = x_1217.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1557)];
          let x_1562 : vec2<f32> = ((vec2<f32>(x_1553.x, x_1553.y) * x_1555) + vec2<f32>(x_1560.z, x_1560.w));
          let x_1563 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1562.x, x_1562.y, x_1563.z, x_1563.w);
        }
      }
      let x_1570 : vec4<f32> = u_xlat9;
      let x_1573 : f32 = x_44.x_GlobalMipBias.x;
      let x_1574 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1570.x, x_1570.y), x_1573);
      u_xlat9 = x_1574;
      let x_1576 : bool = u_xlatb6.y;
      if (x_1576) {
        let x_1581 : f32 = u_xlat9.w;
        x_1577 = x_1581;
      } else {
        let x_1584 : f32 = u_xlat9.x;
        x_1577 = x_1584;
      }
      let x_1585 : f32 = x_1577;
      u_xlat42 = x_1585;
      let x_1587 : bool = u_xlatb6.x;
      if (x_1587) {
        let x_1591 : vec4<f32> = u_xlat9;
        x_1588 = vec3<f32>(x_1591.x, x_1591.y, x_1591.z);
      } else {
        let x_1594 : f32 = u_xlat42;
        x_1588 = vec3<f32>(x_1594, x_1594, x_1594);
      }
      let x_1596 : vec3<f32> = x_1588;
      let x_1597 : vec4<f32> = u_xlat9;
      u_xlat9 = vec4<f32>(x_1596.x, x_1596.y, x_1596.z, x_1597.w);
    } else {
      u_xlat9.x = 1.0f;
      u_xlat9.y = 1.0f;
      u_xlat9.z = 1.0f;
    }
    let x_1603 : vec4<f32> = u_xlat9;
    let x_1605 : u32 = u_xlatu41;
    let x_1608 : vec4<f32> = x_1115.x_AdditionalLightsColor[bitcast<i32>(x_1605)];
    let x_1610 : vec3<f32> = (vec3<f32>(x_1603.x, x_1603.y, x_1603.z) * vec3<f32>(x_1608.x, x_1608.y, x_1608.z));
    let x_1611 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1610.x, x_1610.y, x_1610.z, x_1611.w);
    let x_1613 : f32 = u_xlat38;
    let x_1615 : vec4<f32> = u_xlat9;
    let x_1617 : vec3<f32> = (vec3<f32>(x_1613, x_1613, x_1613) * vec3<f32>(x_1615.x, x_1615.y, x_1615.z));
    let x_1618 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1617.x, x_1617.y, x_1617.z, x_1618.w);
    let x_1620 : f32 = u_xlat30;
    let x_1622 : vec4<f32> = u_xlat9;
    let x_1624 : vec3<f32> = (vec3<f32>(x_1620, x_1620, x_1620) * vec3<f32>(x_1622.x, x_1622.y, x_1622.z));
    let x_1625 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1624.x, x_1624.y, x_1624.z, x_1625.w);
    let x_1627 : vec4<f32> = u_xlat2;
    let x_1629 : vec3<f32> = u_xlat8;
    u_xlat41 = dot(vec3<f32>(x_1627.x, x_1627.y, x_1627.z), x_1629);
    let x_1631 : f32 = u_xlat41;
    u_xlat41 = clamp(x_1631, 0.0f, 1.0f);
    let x_1633 : f32 = u_xlat41;
    let x_1635 : vec4<f32> = u_xlat9;
    let x_1637 : vec3<f32> = (vec3<f32>(x_1633, x_1633, x_1633) * vec3<f32>(x_1635.x, x_1635.y, x_1635.z));
    let x_1638 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1637.x, x_1637.y, x_1637.z, x_1638.w);
    let x_1640 : vec3<f32> = u_xlat3;
    let x_1641 : vec3<f32> = u_xlat12;
    let x_1644 : vec3<f32> = u_xlat8;
    u_xlat8 = ((x_1640 * vec3<f32>(x_1641.x, x_1641.x, x_1641.x)) + x_1644);
    let x_1646 : vec3<f32> = u_xlat8;
    let x_1647 : vec3<f32> = u_xlat8;
    u_xlat41 = dot(x_1646, x_1647);
    let x_1649 : f32 = u_xlat41;
    u_xlat41 = max(x_1649, 1.17549435e-37f);
    let x_1651 : f32 = u_xlat41;
    u_xlat41 = inverseSqrt(x_1651);
    let x_1653 : f32 = u_xlat41;
    let x_1655 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_1653, x_1653, x_1653) * x_1655);
    let x_1657 : vec4<f32> = u_xlat2;
    let x_1659 : vec3<f32> = u_xlat8;
    u_xlat41 = dot(vec3<f32>(x_1657.x, x_1657.y, x_1657.z), x_1659);
    let x_1661 : f32 = u_xlat41;
    u_xlat41 = clamp(x_1661, 0.0f, 1.0f);
    let x_1663 : f32 = u_xlat41;
    u_xlat41 = log2(x_1663);
    let x_1666 : f32 = u_xlat1.x;
    let x_1667 : f32 = u_xlat41;
    u_xlat41 = (x_1666 * x_1667);
    let x_1669 : f32 = u_xlat41;
    u_xlat41 = exp2(x_1669);
    let x_1671 : f32 = u_xlat41;
    let x_1674 : vec4<f32> = x_57.x_SpecColor;
    u_xlat8 = (vec3<f32>(x_1671, x_1671, x_1671) * vec3<f32>(x_1674.x, x_1674.y, x_1674.z));
    let x_1677 : vec3<f32> = u_xlat8;
    let x_1678 : vec4<f32> = u_xlat9;
    u_xlat8 = (x_1677 * vec3<f32>(x_1678.x, x_1678.y, x_1678.z));
    let x_1681 : vec4<f32> = u_xlat10;
    let x_1683 : vec4<f32> = u_xlat1;
    let x_1686 : vec3<f32> = u_xlat8;
    u_xlat8 = ((vec3<f32>(x_1681.x, x_1681.y, x_1681.z) * vec3<f32>(x_1683.y, x_1683.z, x_1683.w)) + x_1686);
    let x_1688 : vec3<f32> = u_xlat7;
    let x_1689 : vec3<f32> = u_xlat8;
    u_xlat7 = (x_1688 + x_1689);

    continuing {
      let x_1691 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1691 + bitcast<u32>(1i));
    }
  }
  let x_1693 : vec4<f32> = u_xlat5;
  let x_1695 : vec4<f32> = u_xlat1;
  let x_1698 : vec4<f32> = u_xlat4;
  let x_1700 : vec3<f32> = ((vec3<f32>(x_1693.x, x_1693.y, x_1693.z) * vec3<f32>(x_1695.y, x_1695.z, x_1695.w)) + vec3<f32>(x_1698.x, x_1698.y, x_1698.z));
  let x_1701 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1700.x, x_1700.y, x_1700.z, x_1701.w);
  let x_1703 : vec3<f32> = u_xlat7;
  let x_1704 : vec4<f32> = u_xlat1;
  let x_1706 : vec3<f32> = (x_1703 + vec3<f32>(x_1704.x, x_1704.y, x_1704.z));
  let x_1707 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1706.x, x_1706.y, x_1706.z, x_1707.w);
  let x_1709 : f32 = u_xlat36;
  let x_1710 : f32 = u_xlat36;
  u_xlat12.x = (x_1709 * -(x_1710));
  let x_1715 : f32 = u_xlat12.x;
  u_xlat12.x = exp2(x_1715);
  let x_1718 : vec4<f32> = u_xlat1;
  let x_1722 : vec4<f32> = x_44.unity_FogColor;
  let x_1725 : vec3<f32> = (vec3<f32>(x_1718.x, x_1718.y, x_1718.z) + -(vec3<f32>(x_1722.x, x_1722.y, x_1722.z)));
  let x_1726 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1725.x, x_1725.y, x_1725.z, x_1726.w);
  let x_1730 : vec3<f32> = u_xlat12;
  let x_1732 : vec4<f32> = u_xlat1;
  let x_1736 : vec4<f32> = x_44.unity_FogColor;
  let x_1738 : vec3<f32> = ((vec3<f32>(x_1730.x, x_1730.x, x_1730.x) * vec3<f32>(x_1732.x, x_1732.y, x_1732.z)) + vec3<f32>(x_1736.x, x_1736.y, x_1736.z));
  let x_1739 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1738.x, x_1738.y, x_1738.z, x_1739.w);
  let x_1742 : f32 = x_57.x_Surface;
  u_xlatb12 = (x_1742 == 1.0f);
  let x_1744 : bool = u_xlatb12;
  let x_1745 : bool = u_xlatb24;
  u_xlatb12 = (x_1744 | x_1745);
  let x_1747 : bool = u_xlatb12;
  if (x_1747) {
    let x_1752 : f32 = u_xlat0.x;
    x_1748 = x_1752;
  } else {
    x_1748 = 1.0f;
  }
  let x_1754 : f32 = x_1748;
  SV_Target0.w = x_1754;
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

