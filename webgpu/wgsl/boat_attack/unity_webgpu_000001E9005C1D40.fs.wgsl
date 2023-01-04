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
}

struct UnityPerMaterial {
  x_MainTex_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Shininess : f32,
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

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_64 : UnityPerMaterial;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_170 : UnityPerDraw;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_334 : MainLightShadows;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(1) @binding(5) var<uniform> x_397 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(1) var<uniform> x_652 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_753 : AdditionalLightsCookies;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_70 : f32;
  var u_xlat11 : f32;
  var u_xlat22 : f32;
  var u_xlat33 : f32;
  var u_xlatb22 : bool;
  var x_119 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat34 : f32;
  var u_xlat35 : f32;
  var u_xlatb35 : bool;
  var u_xlatb36 : bool;
  var u_xlat36 : f32;
  var u_xlatb5 : vec2<bool>;
  var x_483 : f32;
  var x_494 : vec3<f32>;
  var u_xlatu0 : u32;
  var u_xlat6 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu35 : u32;
  var u_xlati36 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat7 : vec3<f32>;
  var u_xlat37 : f32;
  var u_xlatu37 : u32;
  var u_xlati27 : i32;
  var u_xlati37 : i32;
  var u_xlati38 : i32;
  var u_xlat8 : vec4<f32>;
  var u_xlatb37 : bool;
  var u_xlat30 : vec2<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlatb27 : vec2<bool>;
  var u_xlat27 : vec2<f32>;
  var x_1049 : f32;
  var x_1062 : f32;
  var x_1114 : f32;
  var x_1125 : vec3<f32>;
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
  u_xlat11 = ((x_81 * x_83) + -(x_86));
  let x_91 : f32 = u_xlat1.w;
  u_xlat22 = dpdxCoarse(x_91);
  let x_95 : f32 = u_xlat1.w;
  u_xlat33 = dpdyCoarse(x_95);
  let x_97 : f32 = u_xlat33;
  let x_99 : f32 = u_xlat22;
  u_xlat22 = (abs(x_97) + abs(x_99));
  let x_102 : f32 = u_xlat22;
  u_xlat22 = max(x_102, 0.0001f);
  let x_105 : f32 = u_xlat11;
  let x_106 : f32 = u_xlat22;
  u_xlat11 = (x_105 / x_106);
  let x_108 : f32 = u_xlat11;
  u_xlat11 = (x_108 + 0.5f);
  let x_111 : f32 = u_xlat11;
  u_xlat11 = clamp(x_111, 0.0f, 1.0f);
  let x_116 : f32 = x_43.x_AlphaToMaskAvailable;
  u_xlatb22 = !((x_116 == 0.0f));
  let x_118 : bool = u_xlatb22;
  if (x_118) {
    let x_122 : f32 = u_xlat11;
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
  let x_156 : vec4<f32> = u_xlat0;
  let x_158 : vec3<f32> = vs_TEXCOORD3;
  let x_159 : vec3<f32> = (vec3<f32>(x_156.x, x_156.x, x_156.x) * x_158);
  let x_160 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_159.x, x_159.y, x_159.z, x_160.w);
  u_xlat2.w = 1.0f;
  let x_174 : vec4<f32> = x_170.unity_SHAr;
  let x_175 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_174, x_175);
  let x_180 : vec4<f32> = x_170.unity_SHAg;
  let x_181 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_180, x_181);
  let x_187 : vec4<f32> = x_170.unity_SHAb;
  let x_188 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_187, x_188);
  let x_192 : vec4<f32> = u_xlat2;
  let x_194 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_192.y, x_192.z, x_192.z, x_192.x) * vec4<f32>(x_194.x, x_194.y, x_194.z, x_194.z));
  let x_200 : vec4<f32> = x_170.unity_SHBr;
  let x_201 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_200, x_201);
  let x_206 : vec4<f32> = x_170.unity_SHBg;
  let x_207 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_206, x_207);
  let x_212 : vec4<f32> = x_170.unity_SHBb;
  let x_213 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_212, x_213);
  let x_217 : f32 = u_xlat2.y;
  let x_219 : f32 = u_xlat2.y;
  u_xlat0.x = (x_217 * x_219);
  let x_223 : f32 = u_xlat2.x;
  let x_225 : f32 = u_xlat2.x;
  let x_228 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_223 * x_225) + -(x_228));
  let x_234 : vec4<f32> = x_170.unity_SHC;
  let x_236 : vec4<f32> = u_xlat0;
  let x_239 : vec3<f32> = u_xlat5;
  let x_240 : vec3<f32> = ((vec3<f32>(x_234.x, x_234.y, x_234.z) * vec3<f32>(x_236.x, x_236.x, x_236.x)) + x_239);
  let x_241 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_240.x, x_240.y, x_240.z, x_241.w);
  let x_243 : vec3<f32> = u_xlat3;
  let x_244 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_243 + vec3<f32>(x_244.x, x_244.y, x_244.z));
  let x_247 : vec3<f32> = u_xlat3;
  u_xlat3 = max(x_247, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_252 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_253 : vec2<f32> = vec2<f32>(x_252.x, x_252.y);
  let x_257 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_253.x, x_253.y));
  let x_258 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_257.x, x_258.y, x_258.z, x_257.y);
  let x_260 : vec4<f32> = u_xlat0;
  let x_262 : vec4<f32> = hlslcc_FragCoord;
  let x_264 : vec2<f32> = (vec2<f32>(x_260.x, x_260.w) * vec2<f32>(x_262.x, x_262.y));
  let x_265 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_264.x, x_264.y, x_265.z, x_265.w);
  let x_268 : f32 = u_xlat4.y;
  let x_271 : f32 = x_43.x_ScaleBiasRt.x;
  let x_274 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat0.x = ((x_268 * x_271) + x_274);
  let x_278 : f32 = u_xlat0.x;
  u_xlat4.z = (-(x_278) + 1.0f);
  let x_287 : vec4<f32> = u_xlat4;
  let x_290 : f32 = x_43.x_GlobalMipBias.x;
  let x_291 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_287.x, x_287.z), x_290);
  u_xlat0.x = x_291.x;
  let x_295 : f32 = u_xlat0.x;
  u_xlat33 = (x_295 + -1.0f);
  let x_300 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_301 : f32 = u_xlat33;
  u_xlat33 = ((x_300 * x_301) + 1.0f);
  let x_305 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_305, 1.0f);
  let x_310 : vec4<f32> = vs_TEXCOORD6;
  let x_311 : vec2<f32> = vec2<f32>(x_310.x, x_310.y);
  let x_313 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_311.x, x_311.y, x_313);
  let x_326 : vec3<f32> = txVec0;
  let x_328 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_326.xy, x_326.z);
  u_xlat34 = x_328;
  let x_336 : f32 = x_334.x_MainLightShadowParams.x;
  u_xlat35 = (-(x_336) + 1.0f);
  let x_339 : f32 = u_xlat34;
  let x_341 : f32 = x_334.x_MainLightShadowParams.x;
  let x_343 : f32 = u_xlat35;
  u_xlat34 = ((x_339 * x_341) + x_343);
  let x_347 : f32 = vs_TEXCOORD6.z;
  u_xlatb35 = (0.0f >= x_347);
  let x_351 : f32 = vs_TEXCOORD6.z;
  u_xlatb36 = (x_351 >= 1.0f);
  let x_353 : bool = u_xlatb35;
  let x_354 : bool = u_xlatb36;
  u_xlatb35 = (x_353 | x_354);
  let x_356 : bool = u_xlatb35;
  let x_357 : f32 = u_xlat34;
  u_xlat34 = select(x_357, 1.0f, x_356);
  let x_360 : vec4<f32> = vs_TEXCOORD2;
  let x_365 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_367 : vec3<f32> = (vec3<f32>(x_360.x, x_360.y, x_360.z) + -(x_365));
  let x_368 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_367.x, x_367.y, x_367.z, x_368.w);
  let x_370 : vec4<f32> = u_xlat4;
  let x_372 : vec4<f32> = u_xlat4;
  u_xlat35 = dot(vec3<f32>(x_370.x, x_370.y, x_370.z), vec3<f32>(x_372.x, x_372.y, x_372.z));
  let x_375 : f32 = u_xlat35;
  let x_377 : f32 = x_334.x_MainLightShadowParams.z;
  let x_380 : f32 = x_334.x_MainLightShadowParams.w;
  u_xlat35 = ((x_375 * x_377) + x_380);
  let x_382 : f32 = u_xlat35;
  u_xlat35 = clamp(x_382, 0.0f, 1.0f);
  let x_385 : f32 = u_xlat34;
  u_xlat36 = (-(x_385) + 1.0f);
  let x_388 : f32 = u_xlat35;
  let x_389 : f32 = u_xlat36;
  let x_391 : f32 = u_xlat34;
  u_xlat34 = ((x_388 * x_389) + x_391);
  let x_399 : f32 = x_397.x_MainLightCookieTextureFormat;
  u_xlatb35 = !((x_399 == -1.0f));
  let x_401 : bool = u_xlatb35;
  if (x_401) {
    let x_404 : vec4<f32> = vs_TEXCOORD2;
    let x_407 : vec4<f32> = x_397.x_MainLightWorldToLight[1i];
    let x_409 : vec2<f32> = (vec2<f32>(x_404.y, x_404.y) * vec2<f32>(x_407.x, x_407.y));
    let x_410 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_409.x, x_409.y, x_410.z, x_410.w);
    let x_413 : vec4<f32> = x_397.x_MainLightWorldToLight[0i];
    let x_415 : vec4<f32> = vs_TEXCOORD2;
    let x_418 : vec4<f32> = u_xlat4;
    let x_420 : vec2<f32> = ((vec2<f32>(x_413.x, x_413.y) * vec2<f32>(x_415.x, x_415.x)) + vec2<f32>(x_418.x, x_418.y));
    let x_421 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_420.x, x_420.y, x_421.z, x_421.w);
    let x_424 : vec4<f32> = x_397.x_MainLightWorldToLight[2i];
    let x_426 : vec4<f32> = vs_TEXCOORD2;
    let x_429 : vec4<f32> = u_xlat4;
    let x_431 : vec2<f32> = ((vec2<f32>(x_424.x, x_424.y) * vec2<f32>(x_426.z, x_426.z)) + vec2<f32>(x_429.x, x_429.y));
    let x_432 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_431.x, x_431.y, x_432.z, x_432.w);
    let x_434 : vec4<f32> = u_xlat4;
    let x_438 : vec4<f32> = x_397.x_MainLightWorldToLight[3i];
    let x_440 : vec2<f32> = (vec2<f32>(x_434.x, x_434.y) + vec2<f32>(x_438.x, x_438.y));
    let x_441 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_440.x, x_440.y, x_441.z, x_441.w);
    let x_443 : vec4<f32> = u_xlat4;
    let x_447 : vec2<f32> = ((vec2<f32>(x_443.x, x_443.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_448 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_447.x, x_447.y, x_448.z, x_448.w);
    let x_455 : vec4<f32> = u_xlat4;
    let x_458 : f32 = x_43.x_GlobalMipBias.x;
    let x_459 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_455.x, x_455.y), x_458);
    u_xlat4 = x_459;
    let x_464 : f32 = x_397.x_MainLightCookieTextureFormat;
    let x_466 : f32 = x_397.x_MainLightCookieTextureFormat;
    let x_468 : f32 = x_397.x_MainLightCookieTextureFormat;
    let x_470 : f32 = x_397.x_MainLightCookieTextureFormat;
    let x_471 : vec4<f32> = vec4<f32>(x_464, x_466, x_468, x_470);
    let x_479 : vec4<bool> = (vec4<f32>(x_471.x, x_471.y, x_471.z, x_471.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_479.x, x_479.y);
    let x_482 : bool = u_xlatb5.y;
    if (x_482) {
      let x_487 : f32 = u_xlat4.w;
      x_483 = x_487;
    } else {
      let x_490 : f32 = u_xlat4.x;
      x_483 = x_490;
    }
    let x_491 : f32 = x_483;
    u_xlat35 = x_491;
    let x_493 : bool = u_xlatb5.x;
    if (x_493) {
      let x_497 : vec4<f32> = u_xlat4;
      x_494 = vec3<f32>(x_497.x, x_497.y, x_497.z);
    } else {
      let x_500 : f32 = u_xlat35;
      x_494 = vec3<f32>(x_500, x_500, x_500);
    }
    let x_502 : vec3<f32> = x_494;
    let x_503 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_502.x, x_502.y, x_502.z, x_503.w);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
  }
  let x_509 : vec4<f32> = u_xlat4;
  let x_512 : vec4<f32> = x_43.x_MainLightColor;
  let x_514 : vec3<f32> = (vec3<f32>(x_509.x, x_509.y, x_509.z) * vec3<f32>(x_512.x, x_512.y, x_512.z));
  let x_515 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_514.x, x_514.y, x_514.z, x_515.w);
  let x_517 : f32 = u_xlat33;
  let x_519 : vec4<f32> = u_xlat4;
  let x_521 : vec3<f32> = (vec3<f32>(x_517, x_517, x_517) * vec3<f32>(x_519.x, x_519.y, x_519.z));
  let x_522 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_521.x, x_521.y, x_521.z, x_522.w);
  let x_524 : vec4<f32> = u_xlat0;
  let x_526 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_524.x, x_524.x, x_524.x) * x_526);
  let x_528 : f32 = u_xlat34;
  let x_530 : f32 = x_170.unity_LightData.z;
  u_xlat0.x = (x_528 * x_530);
  let x_533 : vec4<f32> = u_xlat0;
  let x_535 : vec4<f32> = u_xlat4;
  let x_537 : vec3<f32> = (vec3<f32>(x_533.x, x_533.x, x_533.x) * vec3<f32>(x_535.x, x_535.y, x_535.z));
  let x_538 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_537.x, x_537.y, x_537.z, x_538.w);
  let x_540 : vec4<f32> = u_xlat2;
  let x_543 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat0.x = dot(vec3<f32>(x_540.x, x_540.y, x_540.z), vec3<f32>(x_543.x, x_543.y, x_543.z));
  let x_548 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_548, 0.0f, 1.0f);
  let x_551 : vec4<f32> = u_xlat0;
  let x_553 : vec4<f32> = u_xlat4;
  let x_555 : vec3<f32> = (vec3<f32>(x_551.x, x_551.x, x_551.x) * vec3<f32>(x_553.x, x_553.y, x_553.z));
  let x_556 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_555.x, x_555.y, x_555.z, x_556.w);
  let x_558 : vec4<f32> = u_xlat1;
  let x_560 : vec4<f32> = u_xlat4;
  let x_562 : vec3<f32> = (vec3<f32>(x_558.x, x_558.y, x_558.z) * vec3<f32>(x_560.x, x_560.y, x_560.z));
  let x_563 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_562.x, x_562.y, x_562.z, x_563.w);
  let x_567 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_569 : f32 = x_170.unity_LightData.y;
  u_xlat0.x = min(x_567, x_569);
  let x_575 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_575));
  let x_579 : f32 = x_397.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_581 : f32 = x_397.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_583 : f32 = x_397.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_585 : f32 = x_397.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_586 : vec4<f32> = vec4<f32>(x_579, x_581, x_583, x_585);
  let x_592 : vec4<bool> = (vec4<f32>(x_586.x, x_586.y, x_586.z, x_586.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_592.x, x_592.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_604 : u32 = u_xlatu_loop_1;
    let x_605 : u32 = u_xlatu0;
    if ((x_604 < x_605)) {
    } else {
      break;
    }
    let x_608 : u32 = u_xlatu_loop_1;
    u_xlatu35 = (x_608 >> 2u);
    let x_612 : u32 = u_xlatu_loop_1;
    u_xlati36 = bitcast<i32>((x_612 & 3u));
    let x_615 : u32 = u_xlatu35;
    let x_618 : vec4<f32> = x_170.unity_LightIndices[bitcast<i32>(x_615)];
    let x_628 : i32 = u_xlati36;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_633 : vec4<u32> = indexable[x_628];
    u_xlat35 = dot(x_618, bitcast<vec4<f32>>(x_633));
    let x_636 : f32 = u_xlat35;
    u_xlatu35 = bitcast<u32>(i32(x_636));
    let x_640 : vec4<f32> = vs_TEXCOORD2;
    let x_653 : u32 = u_xlatu35;
    let x_656 : vec4<f32> = x_652.x_AdditionalLightsPosition[bitcast<i32>(x_653)];
    let x_659 : u32 = u_xlatu35;
    let x_662 : vec4<f32> = x_652.x_AdditionalLightsPosition[bitcast<i32>(x_659)];
    u_xlat7 = ((-(vec3<f32>(x_640.x, x_640.y, x_640.z)) * vec3<f32>(x_656.w, x_656.w, x_656.w)) + vec3<f32>(x_662.x, x_662.y, x_662.z));
    let x_665 : vec3<f32> = u_xlat7;
    let x_666 : vec3<f32> = u_xlat7;
    u_xlat36 = dot(x_665, x_666);
    let x_668 : f32 = u_xlat36;
    u_xlat36 = max(x_668, 6.10351562e-05f);
    let x_672 : f32 = u_xlat36;
    u_xlat37 = inverseSqrt(x_672);
    let x_674 : f32 = u_xlat37;
    let x_676 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_674, x_674, x_674) * x_676);
    let x_678 : f32 = u_xlat36;
    u_xlat37 = (1.0f / x_678);
    let x_680 : f32 = u_xlat36;
    let x_681 : u32 = u_xlatu35;
    let x_684 : f32 = x_652.x_AdditionalLightsAttenuation[bitcast<i32>(x_681)].x;
    u_xlat36 = (x_680 * x_684);
    let x_686 : f32 = u_xlat36;
    let x_688 : f32 = u_xlat36;
    u_xlat36 = ((-(x_686) * x_688) + 1.0f);
    let x_691 : f32 = u_xlat36;
    u_xlat36 = max(x_691, 0.0f);
    let x_693 : f32 = u_xlat36;
    let x_694 : f32 = u_xlat36;
    u_xlat36 = (x_693 * x_694);
    let x_696 : f32 = u_xlat36;
    let x_697 : f32 = u_xlat37;
    u_xlat36 = (x_696 * x_697);
    let x_699 : u32 = u_xlatu35;
    let x_702 : vec4<f32> = x_652.x_AdditionalLightsSpotDir[bitcast<i32>(x_699)];
    let x_704 : vec3<f32> = u_xlat7;
    u_xlat37 = dot(vec3<f32>(x_702.x, x_702.y, x_702.z), x_704);
    let x_706 : f32 = u_xlat37;
    let x_707 : u32 = u_xlatu35;
    let x_710 : f32 = x_652.x_AdditionalLightsAttenuation[bitcast<i32>(x_707)].z;
    let x_712 : u32 = u_xlatu35;
    let x_715 : f32 = x_652.x_AdditionalLightsAttenuation[bitcast<i32>(x_712)].w;
    u_xlat37 = ((x_706 * x_710) + x_715);
    let x_717 : f32 = u_xlat37;
    u_xlat37 = clamp(x_717, 0.0f, 1.0f);
    let x_719 : f32 = u_xlat37;
    let x_720 : f32 = u_xlat37;
    u_xlat37 = (x_719 * x_720);
    let x_722 : f32 = u_xlat36;
    let x_723 : f32 = u_xlat37;
    u_xlat36 = (x_722 * x_723);
    let x_726 : u32 = u_xlatu35;
    u_xlatu37 = (x_726 >> 5u);
    let x_729 : u32 = u_xlatu35;
    u_xlati27 = (1i << bitcast<u32>((bitcast<i32>(x_729) & 31i)));
    let x_735 : i32 = u_xlati27;
    let x_737 : u32 = u_xlatu37;
    let x_740 : f32 = x_397.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_737)].el;
    u_xlati37 = bitcast<i32>((bitcast<u32>(x_735) & bitcast<u32>(x_740)));
    let x_744 : i32 = u_xlati37;
    if ((x_744 != 0i)) {
      let x_754 : u32 = u_xlatu35;
      let x_757 : f32 = x_753.x_AdditionalLightsLightTypes[bitcast<i32>(x_754)].el;
      u_xlati37 = i32(x_757);
      let x_759 : i32 = u_xlati37;
      u_xlati27 = select(1i, 0i, (x_759 != 0i));
      let x_763 : u32 = u_xlatu35;
      u_xlati38 = (bitcast<i32>(x_763) << bitcast<u32>(2i));
      let x_766 : i32 = u_xlati27;
      if ((x_766 != 0i)) {
        let x_771 : vec4<f32> = vs_TEXCOORD2;
        let x_773 : i32 = u_xlati38;
        let x_776 : i32 = u_xlati38;
        let x_780 : vec4<f32> = x_753.x_AdditionalLightsWorldToLights[((x_773 + 1i) / 4i)][((x_776 + 1i) % 4i)];
        let x_782 : vec3<f32> = (vec3<f32>(x_771.y, x_771.y, x_771.y) * vec3<f32>(x_780.x, x_780.y, x_780.w));
        let x_783 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_782.x, x_782.y, x_782.z, x_783.w);
        let x_785 : i32 = u_xlati38;
        let x_787 : i32 = u_xlati38;
        let x_790 : vec4<f32> = x_753.x_AdditionalLightsWorldToLights[(x_785 / 4i)][(x_787 % 4i)];
        let x_792 : vec4<f32> = vs_TEXCOORD2;
        let x_795 : vec4<f32> = u_xlat8;
        let x_797 : vec3<f32> = ((vec3<f32>(x_790.x, x_790.y, x_790.w) * vec3<f32>(x_792.x, x_792.x, x_792.x)) + vec3<f32>(x_795.x, x_795.y, x_795.z));
        let x_798 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_797.x, x_797.y, x_797.z, x_798.w);
        let x_800 : i32 = u_xlati38;
        let x_803 : i32 = u_xlati38;
        let x_807 : vec4<f32> = x_753.x_AdditionalLightsWorldToLights[((x_800 + 2i) / 4i)][((x_803 + 2i) % 4i)];
        let x_809 : vec4<f32> = vs_TEXCOORD2;
        let x_812 : vec4<f32> = u_xlat8;
        let x_814 : vec3<f32> = ((vec3<f32>(x_807.x, x_807.y, x_807.w) * vec3<f32>(x_809.z, x_809.z, x_809.z)) + vec3<f32>(x_812.x, x_812.y, x_812.z));
        let x_815 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_814.x, x_814.y, x_814.z, x_815.w);
        let x_817 : vec4<f32> = u_xlat8;
        let x_819 : i32 = u_xlati38;
        let x_822 : i32 = u_xlati38;
        let x_826 : vec4<f32> = x_753.x_AdditionalLightsWorldToLights[((x_819 + 3i) / 4i)][((x_822 + 3i) % 4i)];
        let x_828 : vec3<f32> = (vec3<f32>(x_817.x, x_817.y, x_817.z) + vec3<f32>(x_826.x, x_826.y, x_826.w));
        let x_829 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_828.x, x_828.y, x_828.z, x_829.w);
        let x_831 : vec4<f32> = u_xlat8;
        let x_833 : vec4<f32> = u_xlat8;
        let x_835 : vec2<f32> = (vec2<f32>(x_831.x, x_831.y) / vec2<f32>(x_833.z, x_833.z));
        let x_836 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_835.x, x_835.y, x_836.z, x_836.w);
        let x_838 : vec4<f32> = u_xlat8;
        let x_841 : vec2<f32> = ((vec2<f32>(x_838.x, x_838.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_842 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_841.x, x_841.y, x_842.z, x_842.w);
        let x_844 : vec4<f32> = u_xlat8;
        let x_848 : vec2<f32> = clamp(vec2<f32>(x_844.x, x_844.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_849 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_848.x, x_848.y, x_849.z, x_849.w);
        let x_851 : u32 = u_xlatu35;
        let x_854 : vec4<f32> = x_753.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_851)];
        let x_856 : vec4<f32> = u_xlat8;
        let x_859 : u32 = u_xlatu35;
        let x_862 : vec4<f32> = x_753.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_859)];
        let x_864 : vec2<f32> = ((vec2<f32>(x_854.x, x_854.y) * vec2<f32>(x_856.x, x_856.y)) + vec2<f32>(x_862.z, x_862.w));
        let x_865 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_864.x, x_864.y, x_865.z, x_865.w);
      } else {
        let x_869 : i32 = u_xlati37;
        u_xlatb37 = (x_869 == 1i);
        let x_871 : bool = u_xlatb37;
        u_xlati37 = select(0i, 1i, x_871);
        let x_873 : i32 = u_xlati37;
        if ((x_873 != 0i)) {
          let x_879 : vec4<f32> = vs_TEXCOORD2;
          let x_881 : i32 = u_xlati38;
          let x_884 : i32 = u_xlati38;
          let x_888 : vec4<f32> = x_753.x_AdditionalLightsWorldToLights[((x_881 + 1i) / 4i)][((x_884 + 1i) % 4i)];
          u_xlat30 = (vec2<f32>(x_879.y, x_879.y) * vec2<f32>(x_888.x, x_888.y));
          let x_891 : i32 = u_xlati38;
          let x_893 : i32 = u_xlati38;
          let x_896 : vec4<f32> = x_753.x_AdditionalLightsWorldToLights[(x_891 / 4i)][(x_893 % 4i)];
          let x_898 : vec4<f32> = vs_TEXCOORD2;
          let x_901 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_896.x, x_896.y) * vec2<f32>(x_898.x, x_898.x)) + x_901);
          let x_903 : i32 = u_xlati38;
          let x_906 : i32 = u_xlati38;
          let x_910 : vec4<f32> = x_753.x_AdditionalLightsWorldToLights[((x_903 + 2i) / 4i)][((x_906 + 2i) % 4i)];
          let x_912 : vec4<f32> = vs_TEXCOORD2;
          let x_915 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_910.x, x_910.y) * vec2<f32>(x_912.z, x_912.z)) + x_915);
          let x_917 : vec2<f32> = u_xlat30;
          let x_918 : i32 = u_xlati38;
          let x_921 : i32 = u_xlati38;
          let x_925 : vec4<f32> = x_753.x_AdditionalLightsWorldToLights[((x_918 + 3i) / 4i)][((x_921 + 3i) % 4i)];
          u_xlat30 = (x_917 + vec2<f32>(x_925.x, x_925.y));
          let x_928 : vec2<f32> = u_xlat30;
          u_xlat30 = ((x_928 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_931 : vec2<f32> = u_xlat30;
          u_xlat30 = fract(x_931);
          let x_933 : u32 = u_xlatu35;
          let x_936 : vec4<f32> = x_753.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_933)];
          let x_938 : vec2<f32> = u_xlat30;
          let x_940 : u32 = u_xlatu35;
          let x_943 : vec4<f32> = x_753.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_940)];
          let x_945 : vec2<f32> = ((vec2<f32>(x_936.x, x_936.y) * x_938) + vec2<f32>(x_943.z, x_943.w));
          let x_946 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_945.x, x_945.y, x_946.z, x_946.w);
        } else {
          let x_950 : vec4<f32> = vs_TEXCOORD2;
          let x_952 : i32 = u_xlati38;
          let x_955 : i32 = u_xlati38;
          let x_959 : vec4<f32> = x_753.x_AdditionalLightsWorldToLights[((x_952 + 1i) / 4i)][((x_955 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_950.y, x_950.y, x_950.y, x_950.y) * x_959);
          let x_961 : i32 = u_xlati38;
          let x_963 : i32 = u_xlati38;
          let x_966 : vec4<f32> = x_753.x_AdditionalLightsWorldToLights[(x_961 / 4i)][(x_963 % 4i)];
          let x_967 : vec4<f32> = vs_TEXCOORD2;
          let x_970 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_966 * vec4<f32>(x_967.x, x_967.x, x_967.x, x_967.x)) + x_970);
          let x_972 : i32 = u_xlati38;
          let x_975 : i32 = u_xlati38;
          let x_979 : vec4<f32> = x_753.x_AdditionalLightsWorldToLights[((x_972 + 2i) / 4i)][((x_975 + 2i) % 4i)];
          let x_980 : vec4<f32> = vs_TEXCOORD2;
          let x_983 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_979 * vec4<f32>(x_980.z, x_980.z, x_980.z, x_980.z)) + x_983);
          let x_985 : vec4<f32> = u_xlat9;
          let x_986 : i32 = u_xlati38;
          let x_989 : i32 = u_xlati38;
          let x_993 : vec4<f32> = x_753.x_AdditionalLightsWorldToLights[((x_986 + 3i) / 4i)][((x_989 + 3i) % 4i)];
          u_xlat9 = (x_985 + x_993);
          let x_995 : vec4<f32> = u_xlat9;
          let x_997 : vec4<f32> = u_xlat9;
          let x_999 : vec3<f32> = (vec3<f32>(x_995.x, x_995.y, x_995.z) / vec3<f32>(x_997.w, x_997.w, x_997.w));
          let x_1000 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_999.x, x_999.y, x_999.z, x_1000.w);
          let x_1002 : vec4<f32> = u_xlat9;
          let x_1004 : vec4<f32> = u_xlat9;
          u_xlat37 = dot(vec3<f32>(x_1002.x, x_1002.y, x_1002.z), vec3<f32>(x_1004.x, x_1004.y, x_1004.z));
          let x_1007 : f32 = u_xlat37;
          u_xlat37 = inverseSqrt(x_1007);
          let x_1009 : f32 = u_xlat37;
          let x_1011 : vec4<f32> = u_xlat9;
          let x_1013 : vec3<f32> = (vec3<f32>(x_1009, x_1009, x_1009) * vec3<f32>(x_1011.x, x_1011.y, x_1011.z));
          let x_1014 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1013.x, x_1013.y, x_1013.z, x_1014.w);
          let x_1016 : vec4<f32> = u_xlat9;
          u_xlat37 = dot(abs(vec3<f32>(x_1016.x, x_1016.y, x_1016.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1021 : f32 = u_xlat37;
          u_xlat37 = max(x_1021, 0.000001f);
          let x_1024 : f32 = u_xlat37;
          u_xlat37 = (1.0f / x_1024);
          let x_1027 : f32 = u_xlat37;
          let x_1029 : vec4<f32> = u_xlat9;
          u_xlat10 = (vec3<f32>(x_1027, x_1027, x_1027) * vec3<f32>(x_1029.z, x_1029.x, x_1029.y));
          let x_1033 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_1033);
          let x_1037 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_1037, 0.0f, 1.0f);
          let x_1041 : vec3<f32> = u_xlat10;
          let x_1044 : vec4<bool> = (vec4<f32>(x_1041.y, x_1041.z, x_1041.y, x_1041.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb27 = vec2<bool>(x_1044.x, x_1044.y);
          let x_1048 : bool = u_xlatb27.x;
          if (x_1048) {
            let x_1053 : f32 = u_xlat10.x;
            x_1049 = x_1053;
          } else {
            let x_1056 : f32 = u_xlat10.x;
            x_1049 = -(x_1056);
          }
          let x_1058 : f32 = x_1049;
          u_xlat27.x = x_1058;
          let x_1061 : bool = u_xlatb27.y;
          if (x_1061) {
            let x_1066 : f32 = u_xlat10.x;
            x_1062 = x_1066;
          } else {
            let x_1069 : f32 = u_xlat10.x;
            x_1062 = -(x_1069);
          }
          let x_1071 : f32 = x_1062;
          u_xlat27.y = x_1071;
          let x_1073 : vec4<f32> = u_xlat9;
          let x_1075 : f32 = u_xlat37;
          let x_1078 : vec2<f32> = u_xlat27;
          u_xlat27 = ((vec2<f32>(x_1073.x, x_1073.y) * vec2<f32>(x_1075, x_1075)) + x_1078);
          let x_1080 : vec2<f32> = u_xlat27;
          u_xlat27 = ((x_1080 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1083 : vec2<f32> = u_xlat27;
          u_xlat27 = clamp(x_1083, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1087 : u32 = u_xlatu35;
          let x_1090 : vec4<f32> = x_753.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1087)];
          let x_1092 : vec2<f32> = u_xlat27;
          let x_1094 : u32 = u_xlatu35;
          let x_1097 : vec4<f32> = x_753.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1094)];
          let x_1099 : vec2<f32> = ((vec2<f32>(x_1090.x, x_1090.y) * x_1092) + vec2<f32>(x_1097.z, x_1097.w));
          let x_1100 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1099.x, x_1099.y, x_1100.z, x_1100.w);
        }
      }
      let x_1107 : vec4<f32> = u_xlat8;
      let x_1110 : f32 = x_43.x_GlobalMipBias.x;
      let x_1111 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1107.x, x_1107.y), x_1110);
      u_xlat8 = x_1111;
      let x_1113 : bool = u_xlatb5.y;
      if (x_1113) {
        let x_1118 : f32 = u_xlat8.w;
        x_1114 = x_1118;
      } else {
        let x_1121 : f32 = u_xlat8.x;
        x_1114 = x_1121;
      }
      let x_1122 : f32 = x_1114;
      u_xlat37 = x_1122;
      let x_1124 : bool = u_xlatb5.x;
      if (x_1124) {
        let x_1128 : vec4<f32> = u_xlat8;
        x_1125 = vec3<f32>(x_1128.x, x_1128.y, x_1128.z);
      } else {
        let x_1131 : f32 = u_xlat37;
        x_1125 = vec3<f32>(x_1131, x_1131, x_1131);
      }
      let x_1133 : vec3<f32> = x_1125;
      let x_1134 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1133.x, x_1133.y, x_1133.z, x_1134.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_1140 : vec4<f32> = u_xlat8;
    let x_1142 : u32 = u_xlatu35;
    let x_1145 : vec4<f32> = x_652.x_AdditionalLightsColor[bitcast<i32>(x_1142)];
    let x_1147 : vec3<f32> = (vec3<f32>(x_1140.x, x_1140.y, x_1140.z) * vec3<f32>(x_1145.x, x_1145.y, x_1145.z));
    let x_1148 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1147.x, x_1147.y, x_1147.z, x_1148.w);
    let x_1150 : f32 = u_xlat33;
    let x_1152 : vec4<f32> = u_xlat8;
    let x_1154 : vec3<f32> = (vec3<f32>(x_1150, x_1150, x_1150) * vec3<f32>(x_1152.x, x_1152.y, x_1152.z));
    let x_1155 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1154.x, x_1154.y, x_1154.z, x_1155.w);
    let x_1157 : f32 = u_xlat36;
    let x_1159 : vec4<f32> = u_xlat8;
    let x_1161 : vec3<f32> = (vec3<f32>(x_1157, x_1157, x_1157) * vec3<f32>(x_1159.x, x_1159.y, x_1159.z));
    let x_1162 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1161.x, x_1161.y, x_1161.z, x_1162.w);
    let x_1164 : vec4<f32> = u_xlat2;
    let x_1166 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(vec3<f32>(x_1164.x, x_1164.y, x_1164.z), x_1166);
    let x_1168 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1168, 0.0f, 1.0f);
    let x_1170 : f32 = u_xlat35;
    let x_1172 : vec4<f32> = u_xlat8;
    u_xlat7 = (vec3<f32>(x_1170, x_1170, x_1170) * vec3<f32>(x_1172.x, x_1172.y, x_1172.z));
    let x_1175 : vec3<f32> = u_xlat7;
    let x_1176 : vec4<f32> = u_xlat1;
    let x_1179 : vec3<f32> = u_xlat6;
    u_xlat6 = ((x_1175 * vec3<f32>(x_1176.x, x_1176.y, x_1176.z)) + x_1179);

    continuing {
      let x_1181 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1181 + bitcast<u32>(1i));
    }
  }
  let x_1183 : vec3<f32> = u_xlat3;
  let x_1184 : vec4<f32> = u_xlat1;
  let x_1187 : vec4<f32> = u_xlat4;
  let x_1189 : vec3<f32> = ((x_1183 * vec3<f32>(x_1184.x, x_1184.y, x_1184.z)) + vec3<f32>(x_1187.x, x_1187.y, x_1187.z));
  let x_1190 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1189.x, x_1189.y, x_1189.z, x_1190.w);
  let x_1194 : vec3<f32> = u_xlat6;
  let x_1195 : vec4<f32> = u_xlat1;
  let x_1197 : vec3<f32> = (x_1194 + vec3<f32>(x_1195.x, x_1195.y, x_1195.z));
  let x_1198 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1197.x, x_1197.y, x_1197.z, x_1198.w);
  let x_1200 : bool = u_xlatb22;
  let x_1201 : f32 = u_xlat11;
  SV_Target0.w = select(1.0f, x_1201, x_1200);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(4) vs_TEXCOORD7_param : vec4<f32>, @location(2) vs_TEXCOORD3_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD2_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  main_1();
  return main_out(SV_Target0);
}

