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

@group(0) @binding(6) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

@group(0) @binding(5) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_185 : UnityPerDraw;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_401 : MainLightShadows;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_474 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(1) var<uniform> x_729 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_830 : AdditionalLightsCookies;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_73 : f32;
  var u_xlat11 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlat33 : f32;
  var u_xlatb22 : bool;
  var x_130 : f32;
  var u_xlatb11 : bool;
  var u_xlatb33 : bool;
  var x_190 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat35 : f32;
  var u_xlatb35 : bool;
  var u_xlatb36 : bool;
  var x_426 : f32;
  var u_xlat36 : f32;
  var u_xlatb5 : vec2<bool>;
  var x_560 : f32;
  var x_571 : vec3<f32>;
  var u_xlatu11 : u32;
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
  var x_1126 : f32;
  var x_1139 : f32;
  var x_1191 : f32;
  var x_1202 : vec3<f32>;
  var x_1284 : f32;
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
  u_xlat11.x = ((x_85 * x_87) + -(x_90));
  let x_96 : f32 = u_xlat1.x;
  u_xlat22 = dpdxCoarse(x_96);
  let x_100 : f32 = u_xlat1.x;
  u_xlat33 = dpdyCoarse(x_100);
  let x_102 : f32 = u_xlat33;
  let x_104 : f32 = u_xlat22;
  u_xlat22 = (abs(x_102) + abs(x_104));
  let x_107 : f32 = u_xlat22;
  u_xlat22 = max(x_107, 0.0001f);
  let x_111 : f32 = u_xlat11.x;
  let x_112 : f32 = u_xlat22;
  u_xlat11.x = (x_111 / x_112);
  let x_116 : f32 = u_xlat11.x;
  u_xlat11.x = (x_116 + 0.5f);
  let x_121 : f32 = u_xlat11.x;
  u_xlat11.x = clamp(x_121, 0.0f, 1.0f);
  let x_127 : f32 = x_43.x_AlphaToMaskAvailable;
  u_xlatb22 = !((x_127 == 0.0f));
  let x_129 : bool = u_xlatb22;
  if (x_129) {
    let x_134 : f32 = u_xlat11.x;
    x_130 = x_134;
  } else {
    let x_137 : f32 = u_xlat0.x;
    x_130 = x_137;
  }
  let x_138 : f32 = x_130;
  u_xlat0.x = x_138;
  let x_141 : f32 = u_xlat0.x;
  u_xlat11.x = (x_141 + -0.0001f);
  let x_147 : f32 = u_xlat11.x;
  u_xlatb11 = (x_147 < 0.0f);
  let x_149 : bool = u_xlatb11;
  if (((select(0i, 1i, x_149) * -1i) != 0i)) {
    discard;
  }
  let x_158 : vec4<f32> = hlslcc_FragCoord;
  let x_162 : f32 = x_43.x_DitheringTextureInvSize;
  let x_164 : vec2<f32> = (vec2<f32>(x_158.x, x_158.y) * vec2<f32>(x_162, x_162));
  let x_165 : vec3<f32> = u_xlat11;
  u_xlat11 = vec3<f32>(x_164.x, x_165.y, x_164.y);
  let x_172 : vec3<f32> = u_xlat11;
  let x_175 : f32 = x_43.x_GlobalMipBias.x;
  let x_176 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_172.x, x_172.z), x_175);
  u_xlat11.x = x_176.w;
  let x_187 : f32 = x_185.unity_LODFade.x;
  u_xlatb33 = (x_187 >= 0.0f);
  let x_189 : bool = u_xlatb33;
  if (x_189) {
    let x_194 : f32 = u_xlat11.x;
    x_190 = abs(x_194);
  } else {
    let x_198 : f32 = u_xlat11.x;
    x_190 = -(abs(x_198));
  }
  let x_201 : f32 = x_190;
  u_xlat11.x = x_201;
  let x_204 : f32 = u_xlat11.x;
  let x_207 : f32 = x_185.unity_LODFade.x;
  u_xlat11.x = (-(x_204) + x_207);
  let x_211 : f32 = u_xlat11.x;
  u_xlatb11 = (x_211 < 0.0f);
  let x_213 : bool = u_xlatb11;
  if (((select(0i, 1i, x_213) * -1i) != 0i)) {
    discard;
  }
  let x_222 : vec3<f32> = vs_TEXCOORD2;
  let x_223 : vec3<f32> = vs_TEXCOORD2;
  u_xlat11.x = dot(x_222, x_223);
  let x_227 : f32 = u_xlat11.x;
  u_xlat11.x = inverseSqrt(x_227);
  let x_231 : vec3<f32> = u_xlat11;
  let x_233 : vec3<f32> = vs_TEXCOORD2;
  let x_234 : vec3<f32> = (vec3<f32>(x_231.x, x_231.x, x_231.x) * x_233);
  let x_235 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_234.x, x_234.y, x_234.z, x_235.w);
  u_xlat2.w = 1.0f;
  let x_241 : vec4<f32> = x_185.unity_SHAr;
  let x_242 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_241, x_242);
  let x_247 : vec4<f32> = x_185.unity_SHAg;
  let x_248 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_247, x_248);
  let x_254 : vec4<f32> = x_185.unity_SHAb;
  let x_255 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_254, x_255);
  let x_259 : vec4<f32> = u_xlat2;
  let x_261 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_259.y, x_259.z, x_259.z, x_259.x) * vec4<f32>(x_261.x, x_261.y, x_261.z, x_261.z));
  let x_267 : vec4<f32> = x_185.unity_SHBr;
  let x_268 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_267, x_268);
  let x_273 : vec4<f32> = x_185.unity_SHBg;
  let x_274 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_273, x_274);
  let x_279 : vec4<f32> = x_185.unity_SHBb;
  let x_280 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_279, x_280);
  let x_284 : f32 = u_xlat2.y;
  let x_286 : f32 = u_xlat2.y;
  u_xlat11.x = (x_284 * x_286);
  let x_290 : f32 = u_xlat2.x;
  let x_292 : f32 = u_xlat2.x;
  let x_295 : f32 = u_xlat11.x;
  u_xlat11.x = ((x_290 * x_292) + -(x_295));
  let x_301 : vec4<f32> = x_185.unity_SHC;
  let x_303 : vec3<f32> = u_xlat11;
  let x_306 : vec3<f32> = u_xlat5;
  let x_307 : vec3<f32> = ((vec3<f32>(x_301.x, x_301.y, x_301.z) * vec3<f32>(x_303.x, x_303.x, x_303.x)) + x_306);
  let x_308 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_307.x, x_307.y, x_307.z, x_308.w);
  let x_310 : vec3<f32> = u_xlat3;
  let x_311 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_310 + vec3<f32>(x_311.x, x_311.y, x_311.z));
  let x_314 : vec3<f32> = u_xlat3;
  u_xlat3 = max(x_314, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_319 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_320 : vec2<f32> = vec2<f32>(x_319.x, x_319.y);
  let x_324 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_320.x, x_320.y));
  let x_325 : vec3<f32> = u_xlat11;
  u_xlat11 = vec3<f32>(x_324.x, x_325.y, x_324.y);
  let x_327 : vec3<f32> = u_xlat11;
  let x_329 : vec4<f32> = hlslcc_FragCoord;
  let x_331 : vec2<f32> = (vec2<f32>(x_327.x, x_327.z) * vec2<f32>(x_329.x, x_329.y));
  let x_332 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_331.x, x_331.y, x_332.z, x_332.w);
  let x_335 : f32 = u_xlat4.y;
  let x_338 : f32 = x_43.x_ScaleBiasRt.x;
  let x_341 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat11.x = ((x_335 * x_338) + x_341);
  let x_345 : f32 = u_xlat11.x;
  u_xlat4.z = (-(x_345) + 1.0f);
  let x_354 : vec4<f32> = u_xlat4;
  let x_357 : f32 = x_43.x_GlobalMipBias.x;
  let x_358 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_354.x, x_354.z), x_357);
  u_xlat11.x = x_358.x;
  let x_362 : f32 = u_xlat11.x;
  u_xlat33 = (x_362 + -1.0f);
  let x_367 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_368 : f32 = u_xlat33;
  u_xlat33 = ((x_367 * x_368) + 1.0f);
  let x_372 : f32 = u_xlat11.x;
  u_xlat11.x = min(x_372, 1.0f);
  let x_377 : vec4<f32> = vs_TEXCOORD6;
  let x_378 : vec2<f32> = vec2<f32>(x_377.x, x_377.y);
  let x_380 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_378.x, x_378.y, x_380);
  let x_392 : vec3<f32> = txVec0;
  let x_394 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_392.xy, x_392.z);
  u_xlat1.x = x_394;
  let x_403 : f32 = x_401.x_MainLightShadowParams.x;
  u_xlat35 = (-(x_403) + 1.0f);
  let x_407 : f32 = u_xlat1.x;
  let x_409 : f32 = x_401.x_MainLightShadowParams.x;
  let x_411 : f32 = u_xlat35;
  u_xlat1.x = ((x_407 * x_409) + x_411);
  let x_416 : f32 = vs_TEXCOORD6.z;
  u_xlatb35 = (0.0f >= x_416);
  let x_420 : f32 = vs_TEXCOORD6.z;
  u_xlatb36 = (x_420 >= 1.0f);
  let x_422 : bool = u_xlatb35;
  let x_423 : bool = u_xlatb36;
  u_xlatb35 = (x_422 | x_423);
  let x_425 : bool = u_xlatb35;
  if (x_425) {
    x_426 = 1.0f;
  } else {
    let x_431 : f32 = u_xlat1.x;
    x_426 = x_431;
  }
  let x_432 : f32 = x_426;
  u_xlat1.x = x_432;
  let x_435 : vec3<f32> = vs_TEXCOORD1;
  let x_439 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_441 : vec3<f32> = (x_435 + -(x_439));
  let x_442 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_441.x, x_441.y, x_441.z, x_442.w);
  let x_444 : vec4<f32> = u_xlat4;
  let x_446 : vec4<f32> = u_xlat4;
  u_xlat35 = dot(vec3<f32>(x_444.x, x_444.y, x_444.z), vec3<f32>(x_446.x, x_446.y, x_446.z));
  let x_449 : f32 = u_xlat35;
  let x_451 : f32 = x_401.x_MainLightShadowParams.z;
  let x_454 : f32 = x_401.x_MainLightShadowParams.w;
  u_xlat35 = ((x_449 * x_451) + x_454);
  let x_456 : f32 = u_xlat35;
  u_xlat35 = clamp(x_456, 0.0f, 1.0f);
  let x_460 : f32 = u_xlat1.x;
  u_xlat36 = (-(x_460) + 1.0f);
  let x_463 : f32 = u_xlat35;
  let x_464 : f32 = u_xlat36;
  let x_467 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_463 * x_464) + x_467);
  let x_476 : f32 = x_474.x_MainLightCookieTextureFormat;
  u_xlatb35 = !((x_476 == -1.0f));
  let x_478 : bool = u_xlatb35;
  if (x_478) {
    let x_481 : vec3<f32> = vs_TEXCOORD1;
    let x_484 : vec4<f32> = x_474.x_MainLightWorldToLight[1i];
    let x_486 : vec2<f32> = (vec2<f32>(x_481.y, x_481.y) * vec2<f32>(x_484.x, x_484.y));
    let x_487 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_486.x, x_486.y, x_487.z, x_487.w);
    let x_490 : vec4<f32> = x_474.x_MainLightWorldToLight[0i];
    let x_492 : vec3<f32> = vs_TEXCOORD1;
    let x_495 : vec4<f32> = u_xlat4;
    let x_497 : vec2<f32> = ((vec2<f32>(x_490.x, x_490.y) * vec2<f32>(x_492.x, x_492.x)) + vec2<f32>(x_495.x, x_495.y));
    let x_498 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_497.x, x_497.y, x_498.z, x_498.w);
    let x_501 : vec4<f32> = x_474.x_MainLightWorldToLight[2i];
    let x_503 : vec3<f32> = vs_TEXCOORD1;
    let x_506 : vec4<f32> = u_xlat4;
    let x_508 : vec2<f32> = ((vec2<f32>(x_501.x, x_501.y) * vec2<f32>(x_503.z, x_503.z)) + vec2<f32>(x_506.x, x_506.y));
    let x_509 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_508.x, x_508.y, x_509.z, x_509.w);
    let x_511 : vec4<f32> = u_xlat4;
    let x_515 : vec4<f32> = x_474.x_MainLightWorldToLight[3i];
    let x_517 : vec2<f32> = (vec2<f32>(x_511.x, x_511.y) + vec2<f32>(x_515.x, x_515.y));
    let x_518 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_517.x, x_517.y, x_518.z, x_518.w);
    let x_520 : vec4<f32> = u_xlat4;
    let x_524 : vec2<f32> = ((vec2<f32>(x_520.x, x_520.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_525 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_524.x, x_524.y, x_525.z, x_525.w);
    let x_532 : vec4<f32> = u_xlat4;
    let x_535 : f32 = x_43.x_GlobalMipBias.x;
    let x_536 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_532.x, x_532.y), x_535);
    u_xlat4 = x_536;
    let x_541 : f32 = x_474.x_MainLightCookieTextureFormat;
    let x_543 : f32 = x_474.x_MainLightCookieTextureFormat;
    let x_545 : f32 = x_474.x_MainLightCookieTextureFormat;
    let x_547 : f32 = x_474.x_MainLightCookieTextureFormat;
    let x_548 : vec4<f32> = vec4<f32>(x_541, x_543, x_545, x_547);
    let x_556 : vec4<bool> = (vec4<f32>(x_548.x, x_548.y, x_548.z, x_548.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_556.x, x_556.y);
    let x_559 : bool = u_xlatb5.y;
    if (x_559) {
      let x_564 : f32 = u_xlat4.w;
      x_560 = x_564;
    } else {
      let x_567 : f32 = u_xlat4.x;
      x_560 = x_567;
    }
    let x_568 : f32 = x_560;
    u_xlat35 = x_568;
    let x_570 : bool = u_xlatb5.x;
    if (x_570) {
      let x_574 : vec4<f32> = u_xlat4;
      x_571 = vec3<f32>(x_574.x, x_574.y, x_574.z);
    } else {
      let x_577 : f32 = u_xlat35;
      x_571 = vec3<f32>(x_577, x_577, x_577);
    }
    let x_579 : vec3<f32> = x_571;
    let x_580 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_579.x, x_579.y, x_579.z, x_580.w);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
  }
  let x_586 : vec4<f32> = u_xlat4;
  let x_589 : vec4<f32> = x_43.x_MainLightColor;
  let x_591 : vec3<f32> = (vec3<f32>(x_586.x, x_586.y, x_586.z) * vec3<f32>(x_589.x, x_589.y, x_589.z));
  let x_592 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_591.x, x_591.y, x_591.z, x_592.w);
  let x_594 : f32 = u_xlat33;
  let x_596 : vec4<f32> = u_xlat4;
  let x_598 : vec3<f32> = (vec3<f32>(x_594, x_594, x_594) * vec3<f32>(x_596.x, x_596.y, x_596.z));
  let x_599 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_598.x, x_598.y, x_598.z, x_599.w);
  let x_601 : vec3<f32> = u_xlat11;
  let x_603 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_601.x, x_601.x, x_601.x) * x_603);
  let x_606 : f32 = u_xlat1.x;
  let x_608 : f32 = x_185.unity_LightData.z;
  u_xlat11.x = (x_606 * x_608);
  let x_611 : vec3<f32> = u_xlat11;
  let x_613 : vec4<f32> = u_xlat4;
  let x_615 : vec3<f32> = (vec3<f32>(x_611.x, x_611.x, x_611.x) * vec3<f32>(x_613.x, x_613.y, x_613.z));
  let x_616 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_615.x, x_615.y, x_615.z, x_616.w);
  let x_618 : vec4<f32> = u_xlat2;
  let x_621 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat11.x = dot(vec3<f32>(x_618.x, x_618.y, x_618.z), vec3<f32>(x_621.x, x_621.y, x_621.z));
  let x_626 : f32 = u_xlat11.x;
  u_xlat11.x = clamp(x_626, 0.0f, 1.0f);
  let x_629 : vec3<f32> = u_xlat11;
  let x_631 : vec4<f32> = u_xlat4;
  let x_633 : vec3<f32> = (vec3<f32>(x_629.x, x_629.x, x_629.x) * vec3<f32>(x_631.x, x_631.y, x_631.z));
  let x_634 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_633.x, x_633.y, x_633.z, x_634.w);
  let x_636 : vec4<f32> = u_xlat1;
  let x_638 : vec4<f32> = u_xlat4;
  let x_640 : vec3<f32> = (vec3<f32>(x_636.y, x_636.z, x_636.w) * vec3<f32>(x_638.x, x_638.y, x_638.z));
  let x_641 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_640.x, x_640.y, x_640.z, x_641.w);
  let x_645 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_647 : f32 = x_185.unity_LightData.y;
  u_xlat11.x = min(x_645, x_647);
  let x_653 : f32 = u_xlat11.x;
  u_xlatu11 = bitcast<u32>(i32(x_653));
  let x_657 : f32 = x_474.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_659 : f32 = x_474.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_661 : f32 = x_474.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_663 : f32 = x_474.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_664 : vec4<f32> = vec4<f32>(x_657, x_659, x_661, x_663);
  let x_670 : vec4<bool> = (vec4<f32>(x_664.x, x_664.y, x_664.z, x_664.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_670.x, x_670.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_682 : u32 = u_xlatu_loop_1;
    let x_683 : u32 = u_xlatu11;
    if ((x_682 < x_683)) {
    } else {
      break;
    }
    let x_686 : u32 = u_xlatu_loop_1;
    u_xlatu35 = (x_686 >> 2u);
    let x_690 : u32 = u_xlatu_loop_1;
    u_xlati36 = bitcast<i32>((x_690 & 3u));
    let x_693 : u32 = u_xlatu35;
    let x_696 : vec4<f32> = x_185.unity_LightIndices[bitcast<i32>(x_693)];
    let x_706 : i32 = u_xlati36;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_711 : vec4<u32> = indexable[x_706];
    u_xlat35 = dot(x_696, bitcast<vec4<f32>>(x_711));
    let x_714 : f32 = u_xlat35;
    u_xlatu35 = bitcast<u32>(i32(x_714));
    let x_718 : vec3<f32> = vs_TEXCOORD1;
    let x_730 : u32 = u_xlatu35;
    let x_733 : vec4<f32> = x_729.x_AdditionalLightsPosition[bitcast<i32>(x_730)];
    let x_736 : u32 = u_xlatu35;
    let x_739 : vec4<f32> = x_729.x_AdditionalLightsPosition[bitcast<i32>(x_736)];
    u_xlat7 = ((-(x_718) * vec3<f32>(x_733.w, x_733.w, x_733.w)) + vec3<f32>(x_739.x, x_739.y, x_739.z));
    let x_742 : vec3<f32> = u_xlat7;
    let x_743 : vec3<f32> = u_xlat7;
    u_xlat36 = dot(x_742, x_743);
    let x_745 : f32 = u_xlat36;
    u_xlat36 = max(x_745, 6.10351562e-05f);
    let x_749 : f32 = u_xlat36;
    u_xlat37 = inverseSqrt(x_749);
    let x_751 : f32 = u_xlat37;
    let x_753 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_751, x_751, x_751) * x_753);
    let x_755 : f32 = u_xlat36;
    u_xlat37 = (1.0f / x_755);
    let x_757 : f32 = u_xlat36;
    let x_758 : u32 = u_xlatu35;
    let x_761 : f32 = x_729.x_AdditionalLightsAttenuation[bitcast<i32>(x_758)].x;
    u_xlat36 = (x_757 * x_761);
    let x_763 : f32 = u_xlat36;
    let x_765 : f32 = u_xlat36;
    u_xlat36 = ((-(x_763) * x_765) + 1.0f);
    let x_768 : f32 = u_xlat36;
    u_xlat36 = max(x_768, 0.0f);
    let x_770 : f32 = u_xlat36;
    let x_771 : f32 = u_xlat36;
    u_xlat36 = (x_770 * x_771);
    let x_773 : f32 = u_xlat36;
    let x_774 : f32 = u_xlat37;
    u_xlat36 = (x_773 * x_774);
    let x_776 : u32 = u_xlatu35;
    let x_779 : vec4<f32> = x_729.x_AdditionalLightsSpotDir[bitcast<i32>(x_776)];
    let x_781 : vec3<f32> = u_xlat7;
    u_xlat37 = dot(vec3<f32>(x_779.x, x_779.y, x_779.z), x_781);
    let x_783 : f32 = u_xlat37;
    let x_784 : u32 = u_xlatu35;
    let x_787 : f32 = x_729.x_AdditionalLightsAttenuation[bitcast<i32>(x_784)].z;
    let x_789 : u32 = u_xlatu35;
    let x_792 : f32 = x_729.x_AdditionalLightsAttenuation[bitcast<i32>(x_789)].w;
    u_xlat37 = ((x_783 * x_787) + x_792);
    let x_794 : f32 = u_xlat37;
    u_xlat37 = clamp(x_794, 0.0f, 1.0f);
    let x_796 : f32 = u_xlat37;
    let x_797 : f32 = u_xlat37;
    u_xlat37 = (x_796 * x_797);
    let x_799 : f32 = u_xlat36;
    let x_800 : f32 = u_xlat37;
    u_xlat36 = (x_799 * x_800);
    let x_803 : u32 = u_xlatu35;
    u_xlatu37 = (x_803 >> 5u);
    let x_806 : u32 = u_xlatu35;
    u_xlati27 = (1i << bitcast<u32>((bitcast<i32>(x_806) & 31i)));
    let x_812 : i32 = u_xlati27;
    let x_814 : u32 = u_xlatu37;
    let x_817 : f32 = x_474.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_814)].el;
    u_xlati37 = bitcast<i32>((bitcast<u32>(x_812) & bitcast<u32>(x_817)));
    let x_821 : i32 = u_xlati37;
    if ((x_821 != 0i)) {
      let x_831 : u32 = u_xlatu35;
      let x_834 : f32 = x_830.x_AdditionalLightsLightTypes[bitcast<i32>(x_831)].el;
      u_xlati37 = i32(x_834);
      let x_836 : i32 = u_xlati37;
      u_xlati27 = select(1i, 0i, (x_836 != 0i));
      let x_840 : u32 = u_xlatu35;
      u_xlati38 = (bitcast<i32>(x_840) << bitcast<u32>(2i));
      let x_843 : i32 = u_xlati27;
      if ((x_843 != 0i)) {
        let x_848 : vec3<f32> = vs_TEXCOORD1;
        let x_850 : i32 = u_xlati38;
        let x_853 : i32 = u_xlati38;
        let x_857 : vec4<f32> = x_830.x_AdditionalLightsWorldToLights[((x_850 + 1i) / 4i)][((x_853 + 1i) % 4i)];
        let x_859 : vec3<f32> = (vec3<f32>(x_848.y, x_848.y, x_848.y) * vec3<f32>(x_857.x, x_857.y, x_857.w));
        let x_860 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_859.x, x_859.y, x_859.z, x_860.w);
        let x_862 : i32 = u_xlati38;
        let x_864 : i32 = u_xlati38;
        let x_867 : vec4<f32> = x_830.x_AdditionalLightsWorldToLights[(x_862 / 4i)][(x_864 % 4i)];
        let x_869 : vec3<f32> = vs_TEXCOORD1;
        let x_872 : vec4<f32> = u_xlat8;
        let x_874 : vec3<f32> = ((vec3<f32>(x_867.x, x_867.y, x_867.w) * vec3<f32>(x_869.x, x_869.x, x_869.x)) + vec3<f32>(x_872.x, x_872.y, x_872.z));
        let x_875 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_874.x, x_874.y, x_874.z, x_875.w);
        let x_877 : i32 = u_xlati38;
        let x_880 : i32 = u_xlati38;
        let x_884 : vec4<f32> = x_830.x_AdditionalLightsWorldToLights[((x_877 + 2i) / 4i)][((x_880 + 2i) % 4i)];
        let x_886 : vec3<f32> = vs_TEXCOORD1;
        let x_889 : vec4<f32> = u_xlat8;
        let x_891 : vec3<f32> = ((vec3<f32>(x_884.x, x_884.y, x_884.w) * vec3<f32>(x_886.z, x_886.z, x_886.z)) + vec3<f32>(x_889.x, x_889.y, x_889.z));
        let x_892 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_891.x, x_891.y, x_891.z, x_892.w);
        let x_894 : vec4<f32> = u_xlat8;
        let x_896 : i32 = u_xlati38;
        let x_899 : i32 = u_xlati38;
        let x_903 : vec4<f32> = x_830.x_AdditionalLightsWorldToLights[((x_896 + 3i) / 4i)][((x_899 + 3i) % 4i)];
        let x_905 : vec3<f32> = (vec3<f32>(x_894.x, x_894.y, x_894.z) + vec3<f32>(x_903.x, x_903.y, x_903.w));
        let x_906 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_905.x, x_905.y, x_905.z, x_906.w);
        let x_908 : vec4<f32> = u_xlat8;
        let x_910 : vec4<f32> = u_xlat8;
        let x_912 : vec2<f32> = (vec2<f32>(x_908.x, x_908.y) / vec2<f32>(x_910.z, x_910.z));
        let x_913 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_912.x, x_912.y, x_913.z, x_913.w);
        let x_915 : vec4<f32> = u_xlat8;
        let x_918 : vec2<f32> = ((vec2<f32>(x_915.x, x_915.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_919 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_918.x, x_918.y, x_919.z, x_919.w);
        let x_921 : vec4<f32> = u_xlat8;
        let x_925 : vec2<f32> = clamp(vec2<f32>(x_921.x, x_921.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_926 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_925.x, x_925.y, x_926.z, x_926.w);
        let x_928 : u32 = u_xlatu35;
        let x_931 : vec4<f32> = x_830.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_928)];
        let x_933 : vec4<f32> = u_xlat8;
        let x_936 : u32 = u_xlatu35;
        let x_939 : vec4<f32> = x_830.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_936)];
        let x_941 : vec2<f32> = ((vec2<f32>(x_931.x, x_931.y) * vec2<f32>(x_933.x, x_933.y)) + vec2<f32>(x_939.z, x_939.w));
        let x_942 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_941.x, x_941.y, x_942.z, x_942.w);
      } else {
        let x_946 : i32 = u_xlati37;
        u_xlatb37 = (x_946 == 1i);
        let x_948 : bool = u_xlatb37;
        u_xlati37 = select(0i, 1i, x_948);
        let x_950 : i32 = u_xlati37;
        if ((x_950 != 0i)) {
          let x_956 : vec3<f32> = vs_TEXCOORD1;
          let x_958 : i32 = u_xlati38;
          let x_961 : i32 = u_xlati38;
          let x_965 : vec4<f32> = x_830.x_AdditionalLightsWorldToLights[((x_958 + 1i) / 4i)][((x_961 + 1i) % 4i)];
          u_xlat30 = (vec2<f32>(x_956.y, x_956.y) * vec2<f32>(x_965.x, x_965.y));
          let x_968 : i32 = u_xlati38;
          let x_970 : i32 = u_xlati38;
          let x_973 : vec4<f32> = x_830.x_AdditionalLightsWorldToLights[(x_968 / 4i)][(x_970 % 4i)];
          let x_975 : vec3<f32> = vs_TEXCOORD1;
          let x_978 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_973.x, x_973.y) * vec2<f32>(x_975.x, x_975.x)) + x_978);
          let x_980 : i32 = u_xlati38;
          let x_983 : i32 = u_xlati38;
          let x_987 : vec4<f32> = x_830.x_AdditionalLightsWorldToLights[((x_980 + 2i) / 4i)][((x_983 + 2i) % 4i)];
          let x_989 : vec3<f32> = vs_TEXCOORD1;
          let x_992 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_987.x, x_987.y) * vec2<f32>(x_989.z, x_989.z)) + x_992);
          let x_994 : vec2<f32> = u_xlat30;
          let x_995 : i32 = u_xlati38;
          let x_998 : i32 = u_xlati38;
          let x_1002 : vec4<f32> = x_830.x_AdditionalLightsWorldToLights[((x_995 + 3i) / 4i)][((x_998 + 3i) % 4i)];
          u_xlat30 = (x_994 + vec2<f32>(x_1002.x, x_1002.y));
          let x_1005 : vec2<f32> = u_xlat30;
          u_xlat30 = ((x_1005 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1008 : vec2<f32> = u_xlat30;
          u_xlat30 = fract(x_1008);
          let x_1010 : u32 = u_xlatu35;
          let x_1013 : vec4<f32> = x_830.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1010)];
          let x_1015 : vec2<f32> = u_xlat30;
          let x_1017 : u32 = u_xlatu35;
          let x_1020 : vec4<f32> = x_830.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1017)];
          let x_1022 : vec2<f32> = ((vec2<f32>(x_1013.x, x_1013.y) * x_1015) + vec2<f32>(x_1020.z, x_1020.w));
          let x_1023 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1022.x, x_1022.y, x_1023.z, x_1023.w);
        } else {
          let x_1027 : vec3<f32> = vs_TEXCOORD1;
          let x_1029 : i32 = u_xlati38;
          let x_1032 : i32 = u_xlati38;
          let x_1036 : vec4<f32> = x_830.x_AdditionalLightsWorldToLights[((x_1029 + 1i) / 4i)][((x_1032 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_1027.y, x_1027.y, x_1027.y, x_1027.y) * x_1036);
          let x_1038 : i32 = u_xlati38;
          let x_1040 : i32 = u_xlati38;
          let x_1043 : vec4<f32> = x_830.x_AdditionalLightsWorldToLights[(x_1038 / 4i)][(x_1040 % 4i)];
          let x_1044 : vec3<f32> = vs_TEXCOORD1;
          let x_1047 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1043 * vec4<f32>(x_1044.x, x_1044.x, x_1044.x, x_1044.x)) + x_1047);
          let x_1049 : i32 = u_xlati38;
          let x_1052 : i32 = u_xlati38;
          let x_1056 : vec4<f32> = x_830.x_AdditionalLightsWorldToLights[((x_1049 + 2i) / 4i)][((x_1052 + 2i) % 4i)];
          let x_1057 : vec3<f32> = vs_TEXCOORD1;
          let x_1060 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1056 * vec4<f32>(x_1057.z, x_1057.z, x_1057.z, x_1057.z)) + x_1060);
          let x_1062 : vec4<f32> = u_xlat9;
          let x_1063 : i32 = u_xlati38;
          let x_1066 : i32 = u_xlati38;
          let x_1070 : vec4<f32> = x_830.x_AdditionalLightsWorldToLights[((x_1063 + 3i) / 4i)][((x_1066 + 3i) % 4i)];
          u_xlat9 = (x_1062 + x_1070);
          let x_1072 : vec4<f32> = u_xlat9;
          let x_1074 : vec4<f32> = u_xlat9;
          let x_1076 : vec3<f32> = (vec3<f32>(x_1072.x, x_1072.y, x_1072.z) / vec3<f32>(x_1074.w, x_1074.w, x_1074.w));
          let x_1077 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1076.x, x_1076.y, x_1076.z, x_1077.w);
          let x_1079 : vec4<f32> = u_xlat9;
          let x_1081 : vec4<f32> = u_xlat9;
          u_xlat37 = dot(vec3<f32>(x_1079.x, x_1079.y, x_1079.z), vec3<f32>(x_1081.x, x_1081.y, x_1081.z));
          let x_1084 : f32 = u_xlat37;
          u_xlat37 = inverseSqrt(x_1084);
          let x_1086 : f32 = u_xlat37;
          let x_1088 : vec4<f32> = u_xlat9;
          let x_1090 : vec3<f32> = (vec3<f32>(x_1086, x_1086, x_1086) * vec3<f32>(x_1088.x, x_1088.y, x_1088.z));
          let x_1091 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1090.x, x_1090.y, x_1090.z, x_1091.w);
          let x_1093 : vec4<f32> = u_xlat9;
          u_xlat37 = dot(abs(vec3<f32>(x_1093.x, x_1093.y, x_1093.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1098 : f32 = u_xlat37;
          u_xlat37 = max(x_1098, 0.000001f);
          let x_1101 : f32 = u_xlat37;
          u_xlat37 = (1.0f / x_1101);
          let x_1104 : f32 = u_xlat37;
          let x_1106 : vec4<f32> = u_xlat9;
          u_xlat10 = (vec3<f32>(x_1104, x_1104, x_1104) * vec3<f32>(x_1106.z, x_1106.x, x_1106.y));
          let x_1110 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_1110);
          let x_1114 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_1114, 0.0f, 1.0f);
          let x_1118 : vec3<f32> = u_xlat10;
          let x_1121 : vec4<bool> = (vec4<f32>(x_1118.y, x_1118.z, x_1118.y, x_1118.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb27 = vec2<bool>(x_1121.x, x_1121.y);
          let x_1125 : bool = u_xlatb27.x;
          if (x_1125) {
            let x_1130 : f32 = u_xlat10.x;
            x_1126 = x_1130;
          } else {
            let x_1133 : f32 = u_xlat10.x;
            x_1126 = -(x_1133);
          }
          let x_1135 : f32 = x_1126;
          u_xlat27.x = x_1135;
          let x_1138 : bool = u_xlatb27.y;
          if (x_1138) {
            let x_1143 : f32 = u_xlat10.x;
            x_1139 = x_1143;
          } else {
            let x_1146 : f32 = u_xlat10.x;
            x_1139 = -(x_1146);
          }
          let x_1148 : f32 = x_1139;
          u_xlat27.y = x_1148;
          let x_1150 : vec4<f32> = u_xlat9;
          let x_1152 : f32 = u_xlat37;
          let x_1155 : vec2<f32> = u_xlat27;
          u_xlat27 = ((vec2<f32>(x_1150.x, x_1150.y) * vec2<f32>(x_1152, x_1152)) + x_1155);
          let x_1157 : vec2<f32> = u_xlat27;
          u_xlat27 = ((x_1157 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1160 : vec2<f32> = u_xlat27;
          u_xlat27 = clamp(x_1160, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1164 : u32 = u_xlatu35;
          let x_1167 : vec4<f32> = x_830.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1164)];
          let x_1169 : vec2<f32> = u_xlat27;
          let x_1171 : u32 = u_xlatu35;
          let x_1174 : vec4<f32> = x_830.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1171)];
          let x_1176 : vec2<f32> = ((vec2<f32>(x_1167.x, x_1167.y) * x_1169) + vec2<f32>(x_1174.z, x_1174.w));
          let x_1177 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1176.x, x_1176.y, x_1177.z, x_1177.w);
        }
      }
      let x_1184 : vec4<f32> = u_xlat8;
      let x_1187 : f32 = x_43.x_GlobalMipBias.x;
      let x_1188 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1184.x, x_1184.y), x_1187);
      u_xlat8 = x_1188;
      let x_1190 : bool = u_xlatb5.y;
      if (x_1190) {
        let x_1195 : f32 = u_xlat8.w;
        x_1191 = x_1195;
      } else {
        let x_1198 : f32 = u_xlat8.x;
        x_1191 = x_1198;
      }
      let x_1199 : f32 = x_1191;
      u_xlat37 = x_1199;
      let x_1201 : bool = u_xlatb5.x;
      if (x_1201) {
        let x_1205 : vec4<f32> = u_xlat8;
        x_1202 = vec3<f32>(x_1205.x, x_1205.y, x_1205.z);
      } else {
        let x_1208 : f32 = u_xlat37;
        x_1202 = vec3<f32>(x_1208, x_1208, x_1208);
      }
      let x_1210 : vec3<f32> = x_1202;
      let x_1211 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1210.x, x_1210.y, x_1210.z, x_1211.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_1217 : vec4<f32> = u_xlat8;
    let x_1219 : u32 = u_xlatu35;
    let x_1222 : vec4<f32> = x_729.x_AdditionalLightsColor[bitcast<i32>(x_1219)];
    let x_1224 : vec3<f32> = (vec3<f32>(x_1217.x, x_1217.y, x_1217.z) * vec3<f32>(x_1222.x, x_1222.y, x_1222.z));
    let x_1225 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1224.x, x_1224.y, x_1224.z, x_1225.w);
    let x_1227 : f32 = u_xlat33;
    let x_1229 : vec4<f32> = u_xlat8;
    let x_1231 : vec3<f32> = (vec3<f32>(x_1227, x_1227, x_1227) * vec3<f32>(x_1229.x, x_1229.y, x_1229.z));
    let x_1232 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1231.x, x_1231.y, x_1231.z, x_1232.w);
    let x_1234 : f32 = u_xlat36;
    let x_1236 : vec4<f32> = u_xlat8;
    let x_1238 : vec3<f32> = (vec3<f32>(x_1234, x_1234, x_1234) * vec3<f32>(x_1236.x, x_1236.y, x_1236.z));
    let x_1239 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1238.x, x_1238.y, x_1238.z, x_1239.w);
    let x_1241 : vec4<f32> = u_xlat2;
    let x_1243 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(vec3<f32>(x_1241.x, x_1241.y, x_1241.z), x_1243);
    let x_1245 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1245, 0.0f, 1.0f);
    let x_1247 : f32 = u_xlat35;
    let x_1249 : vec4<f32> = u_xlat8;
    u_xlat7 = (vec3<f32>(x_1247, x_1247, x_1247) * vec3<f32>(x_1249.x, x_1249.y, x_1249.z));
    let x_1252 : vec3<f32> = u_xlat7;
    let x_1253 : vec4<f32> = u_xlat1;
    let x_1256 : vec3<f32> = u_xlat6;
    u_xlat6 = ((x_1252 * vec3<f32>(x_1253.y, x_1253.z, x_1253.w)) + x_1256);

    continuing {
      let x_1258 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1258 + bitcast<u32>(1i));
    }
  }
  let x_1260 : vec3<f32> = u_xlat3;
  let x_1261 : vec4<f32> = u_xlat1;
  let x_1264 : vec4<f32> = u_xlat4;
  let x_1266 : vec3<f32> = ((x_1260 * vec3<f32>(x_1261.y, x_1261.z, x_1261.w)) + vec3<f32>(x_1264.x, x_1264.y, x_1264.z));
  let x_1267 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1266.x, x_1266.y, x_1266.z, x_1267.w);
  let x_1271 : vec3<f32> = u_xlat6;
  let x_1272 : vec4<f32> = u_xlat1;
  let x_1274 : vec3<f32> = (x_1271 + vec3<f32>(x_1272.x, x_1272.y, x_1272.z));
  let x_1275 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1274.x, x_1274.y, x_1274.z, x_1275.w);
  let x_1278 : f32 = x_56.x_Surface;
  u_xlatb11 = (x_1278 == 1.0f);
  let x_1280 : bool = u_xlatb11;
  let x_1281 : bool = u_xlatb22;
  u_xlatb11 = (x_1280 | x_1281);
  let x_1283 : bool = u_xlatb11;
  if (x_1283) {
    let x_1288 : f32 = u_xlat0.x;
    x_1284 = x_1288;
  } else {
    x_1284 = 1.0f;
  }
  let x_1290 : f32 = x_1284;
  SV_Target0.w = x_1290;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}

