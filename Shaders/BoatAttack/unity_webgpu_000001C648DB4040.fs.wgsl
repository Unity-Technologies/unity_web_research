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

@group(0) @binding(4) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

@group(0) @binding(3) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_185 : UnityPerDraw;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_401 : MainLightShadows;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_590 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_73 : f32;
  var u_xlat8 : vec3<f32>;
  var u_xlat16 : f32;
  var u_xlat24 : f32;
  var u_xlatb16 : bool;
  var x_130 : f32;
  var u_xlatb8 : bool;
  var u_xlatb24 : bool;
  var x_190 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat26 : f32;
  var u_xlatb26 : bool;
  var u_xlatb27 : bool;
  var x_426 : f32;
  var u_xlat27 : f32;
  var u_xlatu8 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu26 : u32;
  var u_xlati27 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati26 : i32;
  var u_xlat6 : vec3<f32>;
  var u_xlat28 : f32;
  var u_xlat7 : vec3<f32>;
  var x_711 : f32;
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
  u_xlat8.x = ((x_85 * x_87) + -(x_90));
  let x_96 : f32 = u_xlat1.x;
  u_xlat16 = dpdxCoarse(x_96);
  let x_100 : f32 = u_xlat1.x;
  u_xlat24 = dpdyCoarse(x_100);
  let x_102 : f32 = u_xlat24;
  let x_104 : f32 = u_xlat16;
  u_xlat16 = (abs(x_102) + abs(x_104));
  let x_107 : f32 = u_xlat16;
  u_xlat16 = max(x_107, 0.0001f);
  let x_111 : f32 = u_xlat8.x;
  let x_112 : f32 = u_xlat16;
  u_xlat8.x = (x_111 / x_112);
  let x_116 : f32 = u_xlat8.x;
  u_xlat8.x = (x_116 + 0.5f);
  let x_121 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_121, 0.0f, 1.0f);
  let x_127 : f32 = x_43.x_AlphaToMaskAvailable;
  u_xlatb16 = !((x_127 == 0.0f));
  let x_129 : bool = u_xlatb16;
  if (x_129) {
    let x_134 : f32 = u_xlat8.x;
    x_130 = x_134;
  } else {
    let x_137 : f32 = u_xlat0.x;
    x_130 = x_137;
  }
  let x_138 : f32 = x_130;
  u_xlat0.x = x_138;
  let x_141 : f32 = u_xlat0.x;
  u_xlat8.x = (x_141 + -0.0001f);
  let x_147 : f32 = u_xlat8.x;
  u_xlatb8 = (x_147 < 0.0f);
  let x_149 : bool = u_xlatb8;
  if (((select(0i, 1i, x_149) * -1i) != 0i)) {
    discard;
  }
  let x_158 : vec4<f32> = hlslcc_FragCoord;
  let x_162 : f32 = x_43.x_DitheringTextureInvSize;
  let x_164 : vec2<f32> = (vec2<f32>(x_158.x, x_158.y) * vec2<f32>(x_162, x_162));
  let x_165 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_164.x, x_165.y, x_164.y);
  let x_172 : vec3<f32> = u_xlat8;
  let x_175 : f32 = x_43.x_GlobalMipBias.x;
  let x_176 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_172.x, x_172.z), x_175);
  u_xlat8.x = x_176.w;
  let x_187 : f32 = x_185.unity_LODFade.x;
  u_xlatb24 = (x_187 >= 0.0f);
  let x_189 : bool = u_xlatb24;
  if (x_189) {
    let x_194 : f32 = u_xlat8.x;
    x_190 = abs(x_194);
  } else {
    let x_198 : f32 = u_xlat8.x;
    x_190 = -(abs(x_198));
  }
  let x_201 : f32 = x_190;
  u_xlat8.x = x_201;
  let x_204 : f32 = u_xlat8.x;
  let x_207 : f32 = x_185.unity_LODFade.x;
  u_xlat8.x = (-(x_204) + x_207);
  let x_211 : f32 = u_xlat8.x;
  u_xlatb8 = (x_211 < 0.0f);
  let x_213 : bool = u_xlatb8;
  if (((select(0i, 1i, x_213) * -1i) != 0i)) {
    discard;
  }
  let x_222 : vec3<f32> = vs_TEXCOORD2;
  let x_223 : vec3<f32> = vs_TEXCOORD2;
  u_xlat8.x = dot(x_222, x_223);
  let x_227 : f32 = u_xlat8.x;
  u_xlat8.x = inverseSqrt(x_227);
  let x_231 : vec3<f32> = u_xlat8;
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
  u_xlat8.x = (x_284 * x_286);
  let x_290 : f32 = u_xlat2.x;
  let x_292 : f32 = u_xlat2.x;
  let x_295 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_290 * x_292) + -(x_295));
  let x_301 : vec4<f32> = x_185.unity_SHC;
  let x_303 : vec3<f32> = u_xlat8;
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
  let x_325 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_324.x, x_325.y, x_324.y);
  let x_327 : vec3<f32> = u_xlat8;
  let x_329 : vec4<f32> = hlslcc_FragCoord;
  let x_331 : vec2<f32> = (vec2<f32>(x_327.x, x_327.z) * vec2<f32>(x_329.x, x_329.y));
  let x_332 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_331.x, x_331.y, x_332.z, x_332.w);
  let x_335 : f32 = u_xlat4.y;
  let x_338 : f32 = x_43.x_ScaleBiasRt.x;
  let x_341 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat8.x = ((x_335 * x_338) + x_341);
  let x_345 : f32 = u_xlat8.x;
  u_xlat4.z = (-(x_345) + 1.0f);
  let x_354 : vec4<f32> = u_xlat4;
  let x_357 : f32 = x_43.x_GlobalMipBias.x;
  let x_358 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_354.x, x_354.z), x_357);
  u_xlat8.x = x_358.x;
  let x_362 : f32 = u_xlat8.x;
  u_xlat24 = (x_362 + -1.0f);
  let x_367 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_368 : f32 = u_xlat24;
  u_xlat24 = ((x_367 * x_368) + 1.0f);
  let x_372 : f32 = u_xlat8.x;
  u_xlat8.x = min(x_372, 1.0f);
  let x_377 : vec4<f32> = vs_TEXCOORD6;
  let x_378 : vec2<f32> = vec2<f32>(x_377.x, x_377.y);
  let x_380 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_378.x, x_378.y, x_380);
  let x_392 : vec3<f32> = txVec0;
  let x_394 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_392.xy, x_392.z);
  u_xlat1.x = x_394;
  let x_403 : f32 = x_401.x_MainLightShadowParams.x;
  u_xlat26 = (-(x_403) + 1.0f);
  let x_407 : f32 = u_xlat1.x;
  let x_409 : f32 = x_401.x_MainLightShadowParams.x;
  let x_411 : f32 = u_xlat26;
  u_xlat1.x = ((x_407 * x_409) + x_411);
  let x_416 : f32 = vs_TEXCOORD6.z;
  u_xlatb26 = (0.0f >= x_416);
  let x_420 : f32 = vs_TEXCOORD6.z;
  u_xlatb27 = (x_420 >= 1.0f);
  let x_422 : bool = u_xlatb26;
  let x_423 : bool = u_xlatb27;
  u_xlatb26 = (x_422 | x_423);
  let x_425 : bool = u_xlatb26;
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
  u_xlat26 = dot(vec3<f32>(x_444.x, x_444.y, x_444.z), vec3<f32>(x_446.x, x_446.y, x_446.z));
  let x_449 : f32 = u_xlat26;
  let x_451 : f32 = x_401.x_MainLightShadowParams.z;
  let x_454 : f32 = x_401.x_MainLightShadowParams.w;
  u_xlat26 = ((x_449 * x_451) + x_454);
  let x_456 : f32 = u_xlat26;
  u_xlat26 = clamp(x_456, 0.0f, 1.0f);
  let x_460 : f32 = u_xlat1.x;
  u_xlat27 = (-(x_460) + 1.0f);
  let x_463 : f32 = u_xlat26;
  let x_464 : f32 = u_xlat27;
  let x_467 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_463 * x_464) + x_467);
  let x_470 : f32 = u_xlat24;
  let x_473 : vec4<f32> = x_43.x_MainLightColor;
  let x_475 : vec3<f32> = (vec3<f32>(x_470, x_470, x_470) * vec3<f32>(x_473.x, x_473.y, x_473.z));
  let x_476 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_475.x, x_475.y, x_475.z, x_476.w);
  let x_478 : vec3<f32> = u_xlat8;
  let x_480 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_478.x, x_478.x, x_478.x) * x_480);
  let x_483 : f32 = u_xlat1.x;
  let x_485 : f32 = x_185.unity_LightData.z;
  u_xlat8.x = (x_483 * x_485);
  let x_488 : vec3<f32> = u_xlat8;
  let x_490 : vec4<f32> = u_xlat4;
  let x_492 : vec3<f32> = (vec3<f32>(x_488.x, x_488.x, x_488.x) * vec3<f32>(x_490.x, x_490.y, x_490.z));
  let x_493 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_492.x, x_492.y, x_492.z, x_493.w);
  let x_495 : vec4<f32> = u_xlat2;
  let x_499 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat8.x = dot(vec3<f32>(x_495.x, x_495.y, x_495.z), vec3<f32>(x_499.x, x_499.y, x_499.z));
  let x_504 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_504, 0.0f, 1.0f);
  let x_507 : vec3<f32> = u_xlat8;
  let x_509 : vec4<f32> = u_xlat4;
  let x_511 : vec3<f32> = (vec3<f32>(x_507.x, x_507.x, x_507.x) * vec3<f32>(x_509.x, x_509.y, x_509.z));
  let x_512 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_511.x, x_511.y, x_511.z, x_512.w);
  let x_514 : vec4<f32> = u_xlat1;
  let x_516 : vec4<f32> = u_xlat4;
  let x_518 : vec3<f32> = (vec3<f32>(x_514.y, x_514.z, x_514.w) * vec3<f32>(x_516.x, x_516.y, x_516.z));
  let x_519 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_518.x, x_518.y, x_518.z, x_519.w);
  let x_523 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_525 : f32 = x_185.unity_LightData.y;
  u_xlat8.x = min(x_523, x_525);
  let x_531 : f32 = u_xlat8.x;
  u_xlatu8 = bitcast<u32>(i32(x_531));
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_543 : u32 = u_xlatu_loop_1;
    let x_544 : u32 = u_xlatu8;
    if ((x_543 < x_544)) {
    } else {
      break;
    }
    let x_547 : u32 = u_xlatu_loop_1;
    u_xlatu26 = (x_547 >> 2u);
    let x_551 : u32 = u_xlatu_loop_1;
    u_xlati27 = bitcast<i32>((x_551 & 3u));
    let x_554 : u32 = u_xlatu26;
    let x_557 : vec4<f32> = x_185.unity_LightIndices[bitcast<i32>(x_554)];
    let x_567 : i32 = u_xlati27;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_572 : vec4<u32> = indexable[x_567];
    u_xlat26 = dot(x_557, bitcast<vec4<f32>>(x_572));
    let x_576 : f32 = u_xlat26;
    u_xlati26 = i32(x_576);
    let x_579 : vec3<f32> = vs_TEXCOORD1;
    let x_591 : i32 = u_xlati26;
    let x_593 : vec4<f32> = x_590.x_AdditionalLightsPosition[x_591];
    let x_596 : i32 = u_xlati26;
    let x_598 : vec4<f32> = x_590.x_AdditionalLightsPosition[x_596];
    u_xlat6 = ((-(x_579) * vec3<f32>(x_593.w, x_593.w, x_593.w)) + vec3<f32>(x_598.x, x_598.y, x_598.z));
    let x_601 : vec3<f32> = u_xlat6;
    let x_602 : vec3<f32> = u_xlat6;
    u_xlat27 = dot(x_601, x_602);
    let x_604 : f32 = u_xlat27;
    u_xlat27 = max(x_604, 6.10351562e-05f);
    let x_608 : f32 = u_xlat27;
    u_xlat28 = inverseSqrt(x_608);
    let x_610 : f32 = u_xlat28;
    let x_612 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_610, x_610, x_610) * x_612);
    let x_614 : f32 = u_xlat27;
    u_xlat28 = (1.0f / x_614);
    let x_616 : f32 = u_xlat27;
    let x_617 : i32 = u_xlati26;
    let x_619 : f32 = x_590.x_AdditionalLightsAttenuation[x_617].x;
    u_xlat27 = (x_616 * x_619);
    let x_621 : f32 = u_xlat27;
    let x_623 : f32 = u_xlat27;
    u_xlat27 = ((-(x_621) * x_623) + 1.0f);
    let x_626 : f32 = u_xlat27;
    u_xlat27 = max(x_626, 0.0f);
    let x_628 : f32 = u_xlat27;
    let x_629 : f32 = u_xlat27;
    u_xlat27 = (x_628 * x_629);
    let x_631 : f32 = u_xlat27;
    let x_632 : f32 = u_xlat28;
    u_xlat27 = (x_631 * x_632);
    let x_634 : i32 = u_xlati26;
    let x_636 : vec4<f32> = x_590.x_AdditionalLightsSpotDir[x_634];
    let x_638 : vec3<f32> = u_xlat6;
    u_xlat28 = dot(vec3<f32>(x_636.x, x_636.y, x_636.z), x_638);
    let x_640 : f32 = u_xlat28;
    let x_641 : i32 = u_xlati26;
    let x_643 : f32 = x_590.x_AdditionalLightsAttenuation[x_641].z;
    let x_645 : i32 = u_xlati26;
    let x_647 : f32 = x_590.x_AdditionalLightsAttenuation[x_645].w;
    u_xlat28 = ((x_640 * x_643) + x_647);
    let x_649 : f32 = u_xlat28;
    u_xlat28 = clamp(x_649, 0.0f, 1.0f);
    let x_651 : f32 = u_xlat28;
    let x_652 : f32 = u_xlat28;
    u_xlat28 = (x_651 * x_652);
    let x_654 : f32 = u_xlat27;
    let x_655 : f32 = u_xlat28;
    u_xlat27 = (x_654 * x_655);
    let x_658 : f32 = u_xlat24;
    let x_660 : i32 = u_xlati26;
    let x_662 : vec4<f32> = x_590.x_AdditionalLightsColor[x_660];
    u_xlat7 = (vec3<f32>(x_658, x_658, x_658) * vec3<f32>(x_662.x, x_662.y, x_662.z));
    let x_665 : f32 = u_xlat27;
    let x_667 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_665, x_665, x_665) * x_667);
    let x_669 : vec4<f32> = u_xlat2;
    let x_671 : vec3<f32> = u_xlat6;
    u_xlat26 = dot(vec3<f32>(x_669.x, x_669.y, x_669.z), x_671);
    let x_673 : f32 = u_xlat26;
    u_xlat26 = clamp(x_673, 0.0f, 1.0f);
    let x_675 : f32 = u_xlat26;
    let x_677 : vec3<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_675, x_675, x_675) * x_677);
    let x_679 : vec3<f32> = u_xlat6;
    let x_680 : vec4<f32> = u_xlat1;
    let x_683 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_679 * vec3<f32>(x_680.y, x_680.z, x_680.w)) + x_683);

    continuing {
      let x_685 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_685 + bitcast<u32>(1i));
    }
  }
  let x_687 : vec3<f32> = u_xlat3;
  let x_688 : vec4<f32> = u_xlat1;
  let x_691 : vec4<f32> = u_xlat4;
  let x_693 : vec3<f32> = ((x_687 * vec3<f32>(x_688.y, x_688.z, x_688.w)) + vec3<f32>(x_691.x, x_691.y, x_691.z));
  let x_694 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_693.x, x_693.y, x_693.z, x_694.w);
  let x_698 : vec3<f32> = u_xlat5;
  let x_699 : vec4<f32> = u_xlat1;
  let x_701 : vec3<f32> = (x_698 + vec3<f32>(x_699.x, x_699.y, x_699.z));
  let x_702 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_701.x, x_701.y, x_701.z, x_702.w);
  let x_705 : f32 = x_56.x_Surface;
  u_xlatb8 = (x_705 == 1.0f);
  let x_707 : bool = u_xlatb8;
  let x_708 : bool = u_xlatb16;
  u_xlatb8 = (x_707 | x_708);
  let x_710 : bool = u_xlatb8;
  if (x_710) {
    let x_715 : f32 = u_xlat0.x;
    x_711 = x_715;
  } else {
    x_711 = 1.0f;
  }
  let x_717 : f32 = x_711;
  SV_Target0.w = x_717;
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

