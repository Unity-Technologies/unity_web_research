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

@group(0) @binding(5) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_182 : UnityPerDraw;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_345 : MainLightShadows;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_418 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(1) var<uniform> x_673 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_774 : AdditionalLightsCookies;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat35 : f32;
  var u_xlatb35 : bool;
  var u_xlatb36 : bool;
  var x_370 : f32;
  var u_xlat36 : f32;
  var u_xlatb5 : vec2<bool>;
  var x_504 : f32;
  var x_515 : vec3<f32>;
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
  var x_1070 : f32;
  var x_1083 : f32;
  var x_1135 : f32;
  var x_1146 : vec3<f32>;
  var x_1228 : f32;
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
  let x_160 : vec3<f32> = vs_TEXCOORD2;
  let x_161 : vec3<f32> = vs_TEXCOORD2;
  u_xlat11.x = dot(x_160, x_161);
  let x_165 : f32 = u_xlat11.x;
  u_xlat11.x = inverseSqrt(x_165);
  let x_169 : vec3<f32> = u_xlat11;
  let x_171 : vec3<f32> = vs_TEXCOORD2;
  let x_172 : vec3<f32> = (vec3<f32>(x_169.x, x_169.x, x_169.x) * x_171);
  let x_173 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_172.x, x_172.y, x_172.z, x_173.w);
  u_xlat2.w = 1.0f;
  let x_185 : vec4<f32> = x_182.unity_SHAr;
  let x_186 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_185, x_186);
  let x_191 : vec4<f32> = x_182.unity_SHAg;
  let x_192 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_191, x_192);
  let x_198 : vec4<f32> = x_182.unity_SHAb;
  let x_199 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_198, x_199);
  let x_203 : vec4<f32> = u_xlat2;
  let x_205 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_203.y, x_203.z, x_203.z, x_203.x) * vec4<f32>(x_205.x, x_205.y, x_205.z, x_205.z));
  let x_211 : vec4<f32> = x_182.unity_SHBr;
  let x_212 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_211, x_212);
  let x_217 : vec4<f32> = x_182.unity_SHBg;
  let x_218 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_217, x_218);
  let x_223 : vec4<f32> = x_182.unity_SHBb;
  let x_224 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_223, x_224);
  let x_228 : f32 = u_xlat2.y;
  let x_230 : f32 = u_xlat2.y;
  u_xlat11.x = (x_228 * x_230);
  let x_234 : f32 = u_xlat2.x;
  let x_236 : f32 = u_xlat2.x;
  let x_239 : f32 = u_xlat11.x;
  u_xlat11.x = ((x_234 * x_236) + -(x_239));
  let x_245 : vec4<f32> = x_182.unity_SHC;
  let x_247 : vec3<f32> = u_xlat11;
  let x_250 : vec3<f32> = u_xlat5;
  let x_251 : vec3<f32> = ((vec3<f32>(x_245.x, x_245.y, x_245.z) * vec3<f32>(x_247.x, x_247.x, x_247.x)) + x_250);
  let x_252 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_251.x, x_251.y, x_251.z, x_252.w);
  let x_254 : vec3<f32> = u_xlat3;
  let x_255 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_254 + vec3<f32>(x_255.x, x_255.y, x_255.z));
  let x_258 : vec3<f32> = u_xlat3;
  u_xlat3 = max(x_258, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_263 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_264 : vec2<f32> = vec2<f32>(x_263.x, x_263.y);
  let x_268 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_264.x, x_264.y));
  let x_269 : vec3<f32> = u_xlat11;
  u_xlat11 = vec3<f32>(x_268.x, x_269.y, x_268.y);
  let x_271 : vec3<f32> = u_xlat11;
  let x_273 : vec4<f32> = hlslcc_FragCoord;
  let x_275 : vec2<f32> = (vec2<f32>(x_271.x, x_271.z) * vec2<f32>(x_273.x, x_273.y));
  let x_276 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_275.x, x_275.y, x_276.z, x_276.w);
  let x_279 : f32 = u_xlat4.y;
  let x_282 : f32 = x_43.x_ScaleBiasRt.x;
  let x_285 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat11.x = ((x_279 * x_282) + x_285);
  let x_289 : f32 = u_xlat11.x;
  u_xlat4.z = (-(x_289) + 1.0f);
  let x_298 : vec4<f32> = u_xlat4;
  let x_301 : f32 = x_43.x_GlobalMipBias.x;
  let x_302 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_298.x, x_298.z), x_301);
  u_xlat11.x = x_302.x;
  let x_306 : f32 = u_xlat11.x;
  u_xlat33 = (x_306 + -1.0f);
  let x_311 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_312 : f32 = u_xlat33;
  u_xlat33 = ((x_311 * x_312) + 1.0f);
  let x_316 : f32 = u_xlat11.x;
  u_xlat11.x = min(x_316, 1.0f);
  let x_321 : vec4<f32> = vs_TEXCOORD6;
  let x_322 : vec2<f32> = vec2<f32>(x_321.x, x_321.y);
  let x_324 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_322.x, x_322.y, x_324);
  let x_336 : vec3<f32> = txVec0;
  let x_338 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_336.xy, x_336.z);
  u_xlat1.x = x_338;
  let x_347 : f32 = x_345.x_MainLightShadowParams.x;
  u_xlat35 = (-(x_347) + 1.0f);
  let x_351 : f32 = u_xlat1.x;
  let x_353 : f32 = x_345.x_MainLightShadowParams.x;
  let x_355 : f32 = u_xlat35;
  u_xlat1.x = ((x_351 * x_353) + x_355);
  let x_360 : f32 = vs_TEXCOORD6.z;
  u_xlatb35 = (0.0f >= x_360);
  let x_364 : f32 = vs_TEXCOORD6.z;
  u_xlatb36 = (x_364 >= 1.0f);
  let x_366 : bool = u_xlatb35;
  let x_367 : bool = u_xlatb36;
  u_xlatb35 = (x_366 | x_367);
  let x_369 : bool = u_xlatb35;
  if (x_369) {
    x_370 = 1.0f;
  } else {
    let x_375 : f32 = u_xlat1.x;
    x_370 = x_375;
  }
  let x_376 : f32 = x_370;
  u_xlat1.x = x_376;
  let x_379 : vec3<f32> = vs_TEXCOORD1;
  let x_383 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_385 : vec3<f32> = (x_379 + -(x_383));
  let x_386 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_385.x, x_385.y, x_385.z, x_386.w);
  let x_388 : vec4<f32> = u_xlat4;
  let x_390 : vec4<f32> = u_xlat4;
  u_xlat35 = dot(vec3<f32>(x_388.x, x_388.y, x_388.z), vec3<f32>(x_390.x, x_390.y, x_390.z));
  let x_393 : f32 = u_xlat35;
  let x_395 : f32 = x_345.x_MainLightShadowParams.z;
  let x_398 : f32 = x_345.x_MainLightShadowParams.w;
  u_xlat35 = ((x_393 * x_395) + x_398);
  let x_400 : f32 = u_xlat35;
  u_xlat35 = clamp(x_400, 0.0f, 1.0f);
  let x_404 : f32 = u_xlat1.x;
  u_xlat36 = (-(x_404) + 1.0f);
  let x_407 : f32 = u_xlat35;
  let x_408 : f32 = u_xlat36;
  let x_411 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_407 * x_408) + x_411);
  let x_420 : f32 = x_418.x_MainLightCookieTextureFormat;
  u_xlatb35 = !((x_420 == -1.0f));
  let x_422 : bool = u_xlatb35;
  if (x_422) {
    let x_425 : vec3<f32> = vs_TEXCOORD1;
    let x_428 : vec4<f32> = x_418.x_MainLightWorldToLight[1i];
    let x_430 : vec2<f32> = (vec2<f32>(x_425.y, x_425.y) * vec2<f32>(x_428.x, x_428.y));
    let x_431 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_430.x, x_430.y, x_431.z, x_431.w);
    let x_434 : vec4<f32> = x_418.x_MainLightWorldToLight[0i];
    let x_436 : vec3<f32> = vs_TEXCOORD1;
    let x_439 : vec4<f32> = u_xlat4;
    let x_441 : vec2<f32> = ((vec2<f32>(x_434.x, x_434.y) * vec2<f32>(x_436.x, x_436.x)) + vec2<f32>(x_439.x, x_439.y));
    let x_442 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_441.x, x_441.y, x_442.z, x_442.w);
    let x_445 : vec4<f32> = x_418.x_MainLightWorldToLight[2i];
    let x_447 : vec3<f32> = vs_TEXCOORD1;
    let x_450 : vec4<f32> = u_xlat4;
    let x_452 : vec2<f32> = ((vec2<f32>(x_445.x, x_445.y) * vec2<f32>(x_447.z, x_447.z)) + vec2<f32>(x_450.x, x_450.y));
    let x_453 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_452.x, x_452.y, x_453.z, x_453.w);
    let x_455 : vec4<f32> = u_xlat4;
    let x_459 : vec4<f32> = x_418.x_MainLightWorldToLight[3i];
    let x_461 : vec2<f32> = (vec2<f32>(x_455.x, x_455.y) + vec2<f32>(x_459.x, x_459.y));
    let x_462 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_461.x, x_461.y, x_462.z, x_462.w);
    let x_464 : vec4<f32> = u_xlat4;
    let x_468 : vec2<f32> = ((vec2<f32>(x_464.x, x_464.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_469 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_468.x, x_468.y, x_469.z, x_469.w);
    let x_476 : vec4<f32> = u_xlat4;
    let x_479 : f32 = x_43.x_GlobalMipBias.x;
    let x_480 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_476.x, x_476.y), x_479);
    u_xlat4 = x_480;
    let x_485 : f32 = x_418.x_MainLightCookieTextureFormat;
    let x_487 : f32 = x_418.x_MainLightCookieTextureFormat;
    let x_489 : f32 = x_418.x_MainLightCookieTextureFormat;
    let x_491 : f32 = x_418.x_MainLightCookieTextureFormat;
    let x_492 : vec4<f32> = vec4<f32>(x_485, x_487, x_489, x_491);
    let x_500 : vec4<bool> = (vec4<f32>(x_492.x, x_492.y, x_492.z, x_492.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_500.x, x_500.y);
    let x_503 : bool = u_xlatb5.y;
    if (x_503) {
      let x_508 : f32 = u_xlat4.w;
      x_504 = x_508;
    } else {
      let x_511 : f32 = u_xlat4.x;
      x_504 = x_511;
    }
    let x_512 : f32 = x_504;
    u_xlat35 = x_512;
    let x_514 : bool = u_xlatb5.x;
    if (x_514) {
      let x_518 : vec4<f32> = u_xlat4;
      x_515 = vec3<f32>(x_518.x, x_518.y, x_518.z);
    } else {
      let x_521 : f32 = u_xlat35;
      x_515 = vec3<f32>(x_521, x_521, x_521);
    }
    let x_523 : vec3<f32> = x_515;
    let x_524 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_523.x, x_523.y, x_523.z, x_524.w);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
  }
  let x_530 : vec4<f32> = u_xlat4;
  let x_533 : vec4<f32> = x_43.x_MainLightColor;
  let x_535 : vec3<f32> = (vec3<f32>(x_530.x, x_530.y, x_530.z) * vec3<f32>(x_533.x, x_533.y, x_533.z));
  let x_536 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_535.x, x_535.y, x_535.z, x_536.w);
  let x_538 : f32 = u_xlat33;
  let x_540 : vec4<f32> = u_xlat4;
  let x_542 : vec3<f32> = (vec3<f32>(x_538, x_538, x_538) * vec3<f32>(x_540.x, x_540.y, x_540.z));
  let x_543 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_542.x, x_542.y, x_542.z, x_543.w);
  let x_545 : vec3<f32> = u_xlat11;
  let x_547 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_545.x, x_545.x, x_545.x) * x_547);
  let x_550 : f32 = u_xlat1.x;
  let x_552 : f32 = x_182.unity_LightData.z;
  u_xlat11.x = (x_550 * x_552);
  let x_555 : vec3<f32> = u_xlat11;
  let x_557 : vec4<f32> = u_xlat4;
  let x_559 : vec3<f32> = (vec3<f32>(x_555.x, x_555.x, x_555.x) * vec3<f32>(x_557.x, x_557.y, x_557.z));
  let x_560 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_559.x, x_559.y, x_559.z, x_560.w);
  let x_562 : vec4<f32> = u_xlat2;
  let x_565 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat11.x = dot(vec3<f32>(x_562.x, x_562.y, x_562.z), vec3<f32>(x_565.x, x_565.y, x_565.z));
  let x_570 : f32 = u_xlat11.x;
  u_xlat11.x = clamp(x_570, 0.0f, 1.0f);
  let x_573 : vec3<f32> = u_xlat11;
  let x_575 : vec4<f32> = u_xlat4;
  let x_577 : vec3<f32> = (vec3<f32>(x_573.x, x_573.x, x_573.x) * vec3<f32>(x_575.x, x_575.y, x_575.z));
  let x_578 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_577.x, x_577.y, x_577.z, x_578.w);
  let x_580 : vec4<f32> = u_xlat1;
  let x_582 : vec4<f32> = u_xlat4;
  let x_584 : vec3<f32> = (vec3<f32>(x_580.y, x_580.z, x_580.w) * vec3<f32>(x_582.x, x_582.y, x_582.z));
  let x_585 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_584.x, x_584.y, x_584.z, x_585.w);
  let x_589 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_591 : f32 = x_182.unity_LightData.y;
  u_xlat11.x = min(x_589, x_591);
  let x_597 : f32 = u_xlat11.x;
  u_xlatu11 = bitcast<u32>(i32(x_597));
  let x_601 : f32 = x_418.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_603 : f32 = x_418.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_605 : f32 = x_418.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_607 : f32 = x_418.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_608 : vec4<f32> = vec4<f32>(x_601, x_603, x_605, x_607);
  let x_614 : vec4<bool> = (vec4<f32>(x_608.x, x_608.y, x_608.z, x_608.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_614.x, x_614.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_626 : u32 = u_xlatu_loop_1;
    let x_627 : u32 = u_xlatu11;
    if ((x_626 < x_627)) {
    } else {
      break;
    }
    let x_630 : u32 = u_xlatu_loop_1;
    u_xlatu35 = (x_630 >> 2u);
    let x_634 : u32 = u_xlatu_loop_1;
    u_xlati36 = bitcast<i32>((x_634 & 3u));
    let x_637 : u32 = u_xlatu35;
    let x_640 : vec4<f32> = x_182.unity_LightIndices[bitcast<i32>(x_637)];
    let x_650 : i32 = u_xlati36;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_655 : vec4<u32> = indexable[x_650];
    u_xlat35 = dot(x_640, bitcast<vec4<f32>>(x_655));
    let x_658 : f32 = u_xlat35;
    u_xlatu35 = bitcast<u32>(i32(x_658));
    let x_662 : vec3<f32> = vs_TEXCOORD1;
    let x_674 : u32 = u_xlatu35;
    let x_677 : vec4<f32> = x_673.x_AdditionalLightsPosition[bitcast<i32>(x_674)];
    let x_680 : u32 = u_xlatu35;
    let x_683 : vec4<f32> = x_673.x_AdditionalLightsPosition[bitcast<i32>(x_680)];
    u_xlat7 = ((-(x_662) * vec3<f32>(x_677.w, x_677.w, x_677.w)) + vec3<f32>(x_683.x, x_683.y, x_683.z));
    let x_686 : vec3<f32> = u_xlat7;
    let x_687 : vec3<f32> = u_xlat7;
    u_xlat36 = dot(x_686, x_687);
    let x_689 : f32 = u_xlat36;
    u_xlat36 = max(x_689, 6.10351562e-05f);
    let x_693 : f32 = u_xlat36;
    u_xlat37 = inverseSqrt(x_693);
    let x_695 : f32 = u_xlat37;
    let x_697 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_695, x_695, x_695) * x_697);
    let x_699 : f32 = u_xlat36;
    u_xlat37 = (1.0f / x_699);
    let x_701 : f32 = u_xlat36;
    let x_702 : u32 = u_xlatu35;
    let x_705 : f32 = x_673.x_AdditionalLightsAttenuation[bitcast<i32>(x_702)].x;
    u_xlat36 = (x_701 * x_705);
    let x_707 : f32 = u_xlat36;
    let x_709 : f32 = u_xlat36;
    u_xlat36 = ((-(x_707) * x_709) + 1.0f);
    let x_712 : f32 = u_xlat36;
    u_xlat36 = max(x_712, 0.0f);
    let x_714 : f32 = u_xlat36;
    let x_715 : f32 = u_xlat36;
    u_xlat36 = (x_714 * x_715);
    let x_717 : f32 = u_xlat36;
    let x_718 : f32 = u_xlat37;
    u_xlat36 = (x_717 * x_718);
    let x_720 : u32 = u_xlatu35;
    let x_723 : vec4<f32> = x_673.x_AdditionalLightsSpotDir[bitcast<i32>(x_720)];
    let x_725 : vec3<f32> = u_xlat7;
    u_xlat37 = dot(vec3<f32>(x_723.x, x_723.y, x_723.z), x_725);
    let x_727 : f32 = u_xlat37;
    let x_728 : u32 = u_xlatu35;
    let x_731 : f32 = x_673.x_AdditionalLightsAttenuation[bitcast<i32>(x_728)].z;
    let x_733 : u32 = u_xlatu35;
    let x_736 : f32 = x_673.x_AdditionalLightsAttenuation[bitcast<i32>(x_733)].w;
    u_xlat37 = ((x_727 * x_731) + x_736);
    let x_738 : f32 = u_xlat37;
    u_xlat37 = clamp(x_738, 0.0f, 1.0f);
    let x_740 : f32 = u_xlat37;
    let x_741 : f32 = u_xlat37;
    u_xlat37 = (x_740 * x_741);
    let x_743 : f32 = u_xlat36;
    let x_744 : f32 = u_xlat37;
    u_xlat36 = (x_743 * x_744);
    let x_747 : u32 = u_xlatu35;
    u_xlatu37 = (x_747 >> 5u);
    let x_750 : u32 = u_xlatu35;
    u_xlati27 = (1i << bitcast<u32>((bitcast<i32>(x_750) & 31i)));
    let x_756 : i32 = u_xlati27;
    let x_758 : u32 = u_xlatu37;
    let x_761 : f32 = x_418.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_758)].el;
    u_xlati37 = bitcast<i32>((bitcast<u32>(x_756) & bitcast<u32>(x_761)));
    let x_765 : i32 = u_xlati37;
    if ((x_765 != 0i)) {
      let x_775 : u32 = u_xlatu35;
      let x_778 : f32 = x_774.x_AdditionalLightsLightTypes[bitcast<i32>(x_775)].el;
      u_xlati37 = i32(x_778);
      let x_780 : i32 = u_xlati37;
      u_xlati27 = select(1i, 0i, (x_780 != 0i));
      let x_784 : u32 = u_xlatu35;
      u_xlati38 = (bitcast<i32>(x_784) << bitcast<u32>(2i));
      let x_787 : i32 = u_xlati27;
      if ((x_787 != 0i)) {
        let x_792 : vec3<f32> = vs_TEXCOORD1;
        let x_794 : i32 = u_xlati38;
        let x_797 : i32 = u_xlati38;
        let x_801 : vec4<f32> = x_774.x_AdditionalLightsWorldToLights[((x_794 + 1i) / 4i)][((x_797 + 1i) % 4i)];
        let x_803 : vec3<f32> = (vec3<f32>(x_792.y, x_792.y, x_792.y) * vec3<f32>(x_801.x, x_801.y, x_801.w));
        let x_804 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_803.x, x_803.y, x_803.z, x_804.w);
        let x_806 : i32 = u_xlati38;
        let x_808 : i32 = u_xlati38;
        let x_811 : vec4<f32> = x_774.x_AdditionalLightsWorldToLights[(x_806 / 4i)][(x_808 % 4i)];
        let x_813 : vec3<f32> = vs_TEXCOORD1;
        let x_816 : vec4<f32> = u_xlat8;
        let x_818 : vec3<f32> = ((vec3<f32>(x_811.x, x_811.y, x_811.w) * vec3<f32>(x_813.x, x_813.x, x_813.x)) + vec3<f32>(x_816.x, x_816.y, x_816.z));
        let x_819 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_818.x, x_818.y, x_818.z, x_819.w);
        let x_821 : i32 = u_xlati38;
        let x_824 : i32 = u_xlati38;
        let x_828 : vec4<f32> = x_774.x_AdditionalLightsWorldToLights[((x_821 + 2i) / 4i)][((x_824 + 2i) % 4i)];
        let x_830 : vec3<f32> = vs_TEXCOORD1;
        let x_833 : vec4<f32> = u_xlat8;
        let x_835 : vec3<f32> = ((vec3<f32>(x_828.x, x_828.y, x_828.w) * vec3<f32>(x_830.z, x_830.z, x_830.z)) + vec3<f32>(x_833.x, x_833.y, x_833.z));
        let x_836 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_835.x, x_835.y, x_835.z, x_836.w);
        let x_838 : vec4<f32> = u_xlat8;
        let x_840 : i32 = u_xlati38;
        let x_843 : i32 = u_xlati38;
        let x_847 : vec4<f32> = x_774.x_AdditionalLightsWorldToLights[((x_840 + 3i) / 4i)][((x_843 + 3i) % 4i)];
        let x_849 : vec3<f32> = (vec3<f32>(x_838.x, x_838.y, x_838.z) + vec3<f32>(x_847.x, x_847.y, x_847.w));
        let x_850 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_849.x, x_849.y, x_849.z, x_850.w);
        let x_852 : vec4<f32> = u_xlat8;
        let x_854 : vec4<f32> = u_xlat8;
        let x_856 : vec2<f32> = (vec2<f32>(x_852.x, x_852.y) / vec2<f32>(x_854.z, x_854.z));
        let x_857 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_856.x, x_856.y, x_857.z, x_857.w);
        let x_859 : vec4<f32> = u_xlat8;
        let x_862 : vec2<f32> = ((vec2<f32>(x_859.x, x_859.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_863 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_862.x, x_862.y, x_863.z, x_863.w);
        let x_865 : vec4<f32> = u_xlat8;
        let x_869 : vec2<f32> = clamp(vec2<f32>(x_865.x, x_865.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_870 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_869.x, x_869.y, x_870.z, x_870.w);
        let x_872 : u32 = u_xlatu35;
        let x_875 : vec4<f32> = x_774.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_872)];
        let x_877 : vec4<f32> = u_xlat8;
        let x_880 : u32 = u_xlatu35;
        let x_883 : vec4<f32> = x_774.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_880)];
        let x_885 : vec2<f32> = ((vec2<f32>(x_875.x, x_875.y) * vec2<f32>(x_877.x, x_877.y)) + vec2<f32>(x_883.z, x_883.w));
        let x_886 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_885.x, x_885.y, x_886.z, x_886.w);
      } else {
        let x_890 : i32 = u_xlati37;
        u_xlatb37 = (x_890 == 1i);
        let x_892 : bool = u_xlatb37;
        u_xlati37 = select(0i, 1i, x_892);
        let x_894 : i32 = u_xlati37;
        if ((x_894 != 0i)) {
          let x_900 : vec3<f32> = vs_TEXCOORD1;
          let x_902 : i32 = u_xlati38;
          let x_905 : i32 = u_xlati38;
          let x_909 : vec4<f32> = x_774.x_AdditionalLightsWorldToLights[((x_902 + 1i) / 4i)][((x_905 + 1i) % 4i)];
          u_xlat30 = (vec2<f32>(x_900.y, x_900.y) * vec2<f32>(x_909.x, x_909.y));
          let x_912 : i32 = u_xlati38;
          let x_914 : i32 = u_xlati38;
          let x_917 : vec4<f32> = x_774.x_AdditionalLightsWorldToLights[(x_912 / 4i)][(x_914 % 4i)];
          let x_919 : vec3<f32> = vs_TEXCOORD1;
          let x_922 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_917.x, x_917.y) * vec2<f32>(x_919.x, x_919.x)) + x_922);
          let x_924 : i32 = u_xlati38;
          let x_927 : i32 = u_xlati38;
          let x_931 : vec4<f32> = x_774.x_AdditionalLightsWorldToLights[((x_924 + 2i) / 4i)][((x_927 + 2i) % 4i)];
          let x_933 : vec3<f32> = vs_TEXCOORD1;
          let x_936 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_931.x, x_931.y) * vec2<f32>(x_933.z, x_933.z)) + x_936);
          let x_938 : vec2<f32> = u_xlat30;
          let x_939 : i32 = u_xlati38;
          let x_942 : i32 = u_xlati38;
          let x_946 : vec4<f32> = x_774.x_AdditionalLightsWorldToLights[((x_939 + 3i) / 4i)][((x_942 + 3i) % 4i)];
          u_xlat30 = (x_938 + vec2<f32>(x_946.x, x_946.y));
          let x_949 : vec2<f32> = u_xlat30;
          u_xlat30 = ((x_949 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_952 : vec2<f32> = u_xlat30;
          u_xlat30 = fract(x_952);
          let x_954 : u32 = u_xlatu35;
          let x_957 : vec4<f32> = x_774.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_954)];
          let x_959 : vec2<f32> = u_xlat30;
          let x_961 : u32 = u_xlatu35;
          let x_964 : vec4<f32> = x_774.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_961)];
          let x_966 : vec2<f32> = ((vec2<f32>(x_957.x, x_957.y) * x_959) + vec2<f32>(x_964.z, x_964.w));
          let x_967 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_966.x, x_966.y, x_967.z, x_967.w);
        } else {
          let x_971 : vec3<f32> = vs_TEXCOORD1;
          let x_973 : i32 = u_xlati38;
          let x_976 : i32 = u_xlati38;
          let x_980 : vec4<f32> = x_774.x_AdditionalLightsWorldToLights[((x_973 + 1i) / 4i)][((x_976 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_971.y, x_971.y, x_971.y, x_971.y) * x_980);
          let x_982 : i32 = u_xlati38;
          let x_984 : i32 = u_xlati38;
          let x_987 : vec4<f32> = x_774.x_AdditionalLightsWorldToLights[(x_982 / 4i)][(x_984 % 4i)];
          let x_988 : vec3<f32> = vs_TEXCOORD1;
          let x_991 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_987 * vec4<f32>(x_988.x, x_988.x, x_988.x, x_988.x)) + x_991);
          let x_993 : i32 = u_xlati38;
          let x_996 : i32 = u_xlati38;
          let x_1000 : vec4<f32> = x_774.x_AdditionalLightsWorldToLights[((x_993 + 2i) / 4i)][((x_996 + 2i) % 4i)];
          let x_1001 : vec3<f32> = vs_TEXCOORD1;
          let x_1004 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1000 * vec4<f32>(x_1001.z, x_1001.z, x_1001.z, x_1001.z)) + x_1004);
          let x_1006 : vec4<f32> = u_xlat9;
          let x_1007 : i32 = u_xlati38;
          let x_1010 : i32 = u_xlati38;
          let x_1014 : vec4<f32> = x_774.x_AdditionalLightsWorldToLights[((x_1007 + 3i) / 4i)][((x_1010 + 3i) % 4i)];
          u_xlat9 = (x_1006 + x_1014);
          let x_1016 : vec4<f32> = u_xlat9;
          let x_1018 : vec4<f32> = u_xlat9;
          let x_1020 : vec3<f32> = (vec3<f32>(x_1016.x, x_1016.y, x_1016.z) / vec3<f32>(x_1018.w, x_1018.w, x_1018.w));
          let x_1021 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1020.x, x_1020.y, x_1020.z, x_1021.w);
          let x_1023 : vec4<f32> = u_xlat9;
          let x_1025 : vec4<f32> = u_xlat9;
          u_xlat37 = dot(vec3<f32>(x_1023.x, x_1023.y, x_1023.z), vec3<f32>(x_1025.x, x_1025.y, x_1025.z));
          let x_1028 : f32 = u_xlat37;
          u_xlat37 = inverseSqrt(x_1028);
          let x_1030 : f32 = u_xlat37;
          let x_1032 : vec4<f32> = u_xlat9;
          let x_1034 : vec3<f32> = (vec3<f32>(x_1030, x_1030, x_1030) * vec3<f32>(x_1032.x, x_1032.y, x_1032.z));
          let x_1035 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1034.x, x_1034.y, x_1034.z, x_1035.w);
          let x_1037 : vec4<f32> = u_xlat9;
          u_xlat37 = dot(abs(vec3<f32>(x_1037.x, x_1037.y, x_1037.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1042 : f32 = u_xlat37;
          u_xlat37 = max(x_1042, 0.000001f);
          let x_1045 : f32 = u_xlat37;
          u_xlat37 = (1.0f / x_1045);
          let x_1048 : f32 = u_xlat37;
          let x_1050 : vec4<f32> = u_xlat9;
          u_xlat10 = (vec3<f32>(x_1048, x_1048, x_1048) * vec3<f32>(x_1050.z, x_1050.x, x_1050.y));
          let x_1054 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_1054);
          let x_1058 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_1058, 0.0f, 1.0f);
          let x_1062 : vec3<f32> = u_xlat10;
          let x_1065 : vec4<bool> = (vec4<f32>(x_1062.y, x_1062.z, x_1062.y, x_1062.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb27 = vec2<bool>(x_1065.x, x_1065.y);
          let x_1069 : bool = u_xlatb27.x;
          if (x_1069) {
            let x_1074 : f32 = u_xlat10.x;
            x_1070 = x_1074;
          } else {
            let x_1077 : f32 = u_xlat10.x;
            x_1070 = -(x_1077);
          }
          let x_1079 : f32 = x_1070;
          u_xlat27.x = x_1079;
          let x_1082 : bool = u_xlatb27.y;
          if (x_1082) {
            let x_1087 : f32 = u_xlat10.x;
            x_1083 = x_1087;
          } else {
            let x_1090 : f32 = u_xlat10.x;
            x_1083 = -(x_1090);
          }
          let x_1092 : f32 = x_1083;
          u_xlat27.y = x_1092;
          let x_1094 : vec4<f32> = u_xlat9;
          let x_1096 : f32 = u_xlat37;
          let x_1099 : vec2<f32> = u_xlat27;
          u_xlat27 = ((vec2<f32>(x_1094.x, x_1094.y) * vec2<f32>(x_1096, x_1096)) + x_1099);
          let x_1101 : vec2<f32> = u_xlat27;
          u_xlat27 = ((x_1101 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1104 : vec2<f32> = u_xlat27;
          u_xlat27 = clamp(x_1104, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1108 : u32 = u_xlatu35;
          let x_1111 : vec4<f32> = x_774.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1108)];
          let x_1113 : vec2<f32> = u_xlat27;
          let x_1115 : u32 = u_xlatu35;
          let x_1118 : vec4<f32> = x_774.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1115)];
          let x_1120 : vec2<f32> = ((vec2<f32>(x_1111.x, x_1111.y) * x_1113) + vec2<f32>(x_1118.z, x_1118.w));
          let x_1121 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1120.x, x_1120.y, x_1121.z, x_1121.w);
        }
      }
      let x_1128 : vec4<f32> = u_xlat8;
      let x_1131 : f32 = x_43.x_GlobalMipBias.x;
      let x_1132 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1128.x, x_1128.y), x_1131);
      u_xlat8 = x_1132;
      let x_1134 : bool = u_xlatb5.y;
      if (x_1134) {
        let x_1139 : f32 = u_xlat8.w;
        x_1135 = x_1139;
      } else {
        let x_1142 : f32 = u_xlat8.x;
        x_1135 = x_1142;
      }
      let x_1143 : f32 = x_1135;
      u_xlat37 = x_1143;
      let x_1145 : bool = u_xlatb5.x;
      if (x_1145) {
        let x_1149 : vec4<f32> = u_xlat8;
        x_1146 = vec3<f32>(x_1149.x, x_1149.y, x_1149.z);
      } else {
        let x_1152 : f32 = u_xlat37;
        x_1146 = vec3<f32>(x_1152, x_1152, x_1152);
      }
      let x_1154 : vec3<f32> = x_1146;
      let x_1155 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1154.x, x_1154.y, x_1154.z, x_1155.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_1161 : vec4<f32> = u_xlat8;
    let x_1163 : u32 = u_xlatu35;
    let x_1166 : vec4<f32> = x_673.x_AdditionalLightsColor[bitcast<i32>(x_1163)];
    let x_1168 : vec3<f32> = (vec3<f32>(x_1161.x, x_1161.y, x_1161.z) * vec3<f32>(x_1166.x, x_1166.y, x_1166.z));
    let x_1169 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1168.x, x_1168.y, x_1168.z, x_1169.w);
    let x_1171 : f32 = u_xlat33;
    let x_1173 : vec4<f32> = u_xlat8;
    let x_1175 : vec3<f32> = (vec3<f32>(x_1171, x_1171, x_1171) * vec3<f32>(x_1173.x, x_1173.y, x_1173.z));
    let x_1176 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1175.x, x_1175.y, x_1175.z, x_1176.w);
    let x_1178 : f32 = u_xlat36;
    let x_1180 : vec4<f32> = u_xlat8;
    let x_1182 : vec3<f32> = (vec3<f32>(x_1178, x_1178, x_1178) * vec3<f32>(x_1180.x, x_1180.y, x_1180.z));
    let x_1183 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1182.x, x_1182.y, x_1182.z, x_1183.w);
    let x_1185 : vec4<f32> = u_xlat2;
    let x_1187 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(vec3<f32>(x_1185.x, x_1185.y, x_1185.z), x_1187);
    let x_1189 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1189, 0.0f, 1.0f);
    let x_1191 : f32 = u_xlat35;
    let x_1193 : vec4<f32> = u_xlat8;
    u_xlat7 = (vec3<f32>(x_1191, x_1191, x_1191) * vec3<f32>(x_1193.x, x_1193.y, x_1193.z));
    let x_1196 : vec3<f32> = u_xlat7;
    let x_1197 : vec4<f32> = u_xlat1;
    let x_1200 : vec3<f32> = u_xlat6;
    u_xlat6 = ((x_1196 * vec3<f32>(x_1197.y, x_1197.z, x_1197.w)) + x_1200);

    continuing {
      let x_1202 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1202 + bitcast<u32>(1i));
    }
  }
  let x_1204 : vec3<f32> = u_xlat3;
  let x_1205 : vec4<f32> = u_xlat1;
  let x_1208 : vec4<f32> = u_xlat4;
  let x_1210 : vec3<f32> = ((x_1204 * vec3<f32>(x_1205.y, x_1205.z, x_1205.w)) + vec3<f32>(x_1208.x, x_1208.y, x_1208.z));
  let x_1211 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1210.x, x_1210.y, x_1210.z, x_1211.w);
  let x_1215 : vec3<f32> = u_xlat6;
  let x_1216 : vec4<f32> = u_xlat1;
  let x_1218 : vec3<f32> = (x_1215 + vec3<f32>(x_1216.x, x_1216.y, x_1216.z));
  let x_1219 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1218.x, x_1218.y, x_1218.z, x_1219.w);
  let x_1222 : f32 = x_56.x_Surface;
  u_xlatb11 = (x_1222 == 1.0f);
  let x_1224 : bool = u_xlatb11;
  let x_1225 : bool = u_xlatb22;
  u_xlatb11 = (x_1224 | x_1225);
  let x_1227 : bool = u_xlatb11;
  if (x_1227) {
    let x_1232 : f32 = u_xlat0.x;
    x_1228 = x_1232;
  } else {
    x_1228 = 1.0f;
  }
  let x_1234 : f32 = x_1228;
  SV_Target0.w = x_1234;
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

