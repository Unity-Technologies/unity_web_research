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

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_210 : UnityPerDraw;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_366 : MainLightShadows;

@group(1) @binding(5) var<uniform> x_428 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(1) var<uniform> x_675 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_790 : AdditionalLightsCookies;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_74 : f32;
  var u_xlat11 : f32;
  var u_xlat22 : f32;
  var u_xlat33 : f32;
  var u_xlatb22 : bool;
  var x_123 : f32;
  var u_xlatb11 : bool;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat35 : f32;
  var u_xlat36 : f32;
  var u_xlatb36 : bool;
  var u_xlatb4 : bool;
  var u_xlatb5 : vec2<bool>;
  var x_513 : f32;
  var x_524 : vec3<f32>;
  var u_xlatu33 : u32;
  var u_xlat6 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu36 : u32;
  var u_xlati37 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat7 : vec3<f32>;
  var u_xlat37 : f32;
  var u_xlat27 : vec2<f32>;
  var u_xlatu27 : u32;
  var u_xlati38 : i32;
  var u_xlati27 : i32;
  var u_xlati39 : i32;
  var u_xlat8 : vec4<f32>;
  var u_xlatb27 : bool;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlatb30 : vec2<bool>;
  var u_xlat30 : vec2<f32>;
  var x_1092 : f32;
  var x_1105 : f32;
  var x_1157 : f32;
  var x_1169 : vec3<f32>;
  var x_1278 : f32;
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
  let x_85 : f32 = u_xlat0.w;
  let x_87 : f32 = x_57.x_BaseColor.w;
  let x_90 : f32 = x_57.x_Cutoff;
  u_xlat11 = ((x_85 * x_87) + -(x_90));
  let x_95 : f32 = u_xlat1.x;
  u_xlat22 = dpdxCoarse(x_95);
  let x_99 : f32 = u_xlat1.x;
  u_xlat33 = dpdyCoarse(x_99);
  let x_101 : f32 = u_xlat33;
  let x_103 : f32 = u_xlat22;
  u_xlat22 = (abs(x_101) + abs(x_103));
  let x_106 : f32 = u_xlat22;
  u_xlat22 = max(x_106, 0.0001f);
  let x_109 : f32 = u_xlat11;
  let x_110 : f32 = u_xlat22;
  u_xlat11 = (x_109 / x_110);
  let x_112 : f32 = u_xlat11;
  u_xlat11 = (x_112 + 0.5f);
  let x_115 : f32 = u_xlat11;
  u_xlat11 = clamp(x_115, 0.0f, 1.0f);
  let x_120 : f32 = x_44.x_AlphaToMaskAvailable;
  u_xlatb22 = !((x_120 == 0.0f));
  let x_122 : bool = u_xlatb22;
  if (x_122) {
    let x_126 : f32 = u_xlat11;
    x_123 = x_126;
  } else {
    let x_129 : f32 = u_xlat0.x;
    x_123 = x_129;
  }
  let x_130 : f32 = x_123;
  u_xlat0.x = x_130;
  let x_133 : f32 = u_xlat0.x;
  u_xlat11 = (x_133 + -0.0001f);
  let x_137 : f32 = u_xlat11;
  u_xlatb11 = (x_137 < 0.0f);
  let x_139 : bool = u_xlatb11;
  if (((select(0i, 1i, x_139) * -1i) != 0i)) {
    discard;
  }
  let x_150 : vec3<f32> = vs_TEXCOORD2;
  let x_151 : vec3<f32> = vs_TEXCOORD2;
  u_xlat11 = dot(x_150, x_151);
  let x_153 : f32 = u_xlat11;
  u_xlat11 = inverseSqrt(x_153);
  let x_156 : f32 = u_xlat11;
  let x_158 : vec3<f32> = vs_TEXCOORD2;
  let x_159 : vec3<f32> = (vec3<f32>(x_156, x_156, x_156) * x_158);
  let x_160 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_159.x, x_159.y, x_159.z, x_160.w);
  let x_165 : f32 = vs_TEXCOORD1.y;
  let x_169 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat11 = (x_165 * x_169);
  let x_172 : f32 = x_44.unity_MatrixV[0i].z;
  let x_174 : f32 = vs_TEXCOORD1.x;
  let x_176 : f32 = u_xlat11;
  u_xlat11 = ((x_172 * x_174) + x_176);
  let x_179 : f32 = x_44.unity_MatrixV[2i].z;
  let x_181 : f32 = vs_TEXCOORD1.z;
  let x_183 : f32 = u_xlat11;
  u_xlat11 = ((x_179 * x_181) + x_183);
  let x_185 : f32 = u_xlat11;
  let x_188 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat11 = (x_185 + x_188);
  let x_190 : f32 = u_xlat11;
  let x_194 : f32 = x_44.x_ProjectionParams.y;
  u_xlat11 = (-(x_190) + -(x_194));
  let x_197 : f32 = u_xlat11;
  u_xlat11 = max(x_197, 0.0f);
  let x_199 : f32 = u_xlat11;
  let x_202 : f32 = x_44.unity_FogParams.x;
  u_xlat11 = (x_199 * x_202);
  u_xlat2.w = 1.0f;
  let x_213 : vec4<f32> = x_210.unity_SHAr;
  let x_214 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_213, x_214);
  let x_219 : vec4<f32> = x_210.unity_SHAg;
  let x_220 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_219, x_220);
  let x_225 : vec4<f32> = x_210.unity_SHAb;
  let x_226 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_225, x_226);
  let x_230 : vec4<f32> = u_xlat2;
  let x_232 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_230.y, x_230.z, x_230.z, x_230.x) * vec4<f32>(x_232.x, x_232.y, x_232.z, x_232.z));
  let x_238 : vec4<f32> = x_210.unity_SHBr;
  let x_239 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_238, x_239);
  let x_244 : vec4<f32> = x_210.unity_SHBg;
  let x_245 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_244, x_245);
  let x_250 : vec4<f32> = x_210.unity_SHBb;
  let x_251 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_250, x_251);
  let x_255 : f32 = u_xlat2.y;
  let x_257 : f32 = u_xlat2.y;
  u_xlat33 = (x_255 * x_257);
  let x_260 : f32 = u_xlat2.x;
  let x_262 : f32 = u_xlat2.x;
  let x_264 : f32 = u_xlat33;
  u_xlat33 = ((x_260 * x_262) + -(x_264));
  let x_269 : vec4<f32> = x_210.unity_SHC;
  let x_271 : f32 = u_xlat33;
  let x_274 : vec3<f32> = u_xlat5;
  let x_275 : vec3<f32> = ((vec3<f32>(x_269.x, x_269.y, x_269.z) * vec3<f32>(x_271, x_271, x_271)) + x_274);
  let x_276 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_275.x, x_275.y, x_275.z, x_276.w);
  let x_278 : vec3<f32> = u_xlat3;
  let x_279 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_278 + vec3<f32>(x_279.x, x_279.y, x_279.z));
  let x_282 : vec3<f32> = u_xlat3;
  u_xlat3 = max(x_282, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_287 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_288 : vec2<f32> = vec2<f32>(x_287.x, x_287.y);
  let x_292 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_288.x, x_288.y));
  let x_293 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_292.x, x_292.y, x_293.z, x_293.w);
  let x_295 : vec4<f32> = u_xlat4;
  let x_297 : vec4<f32> = hlslcc_FragCoord;
  let x_299 : vec2<f32> = (vec2<f32>(x_295.x, x_295.y) * vec2<f32>(x_297.x, x_297.y));
  let x_300 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_299.x, x_299.y, x_300.z, x_300.w);
  let x_303 : f32 = u_xlat4.y;
  let x_306 : f32 = x_44.x_ScaleBiasRt.x;
  let x_309 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat33 = ((x_303 * x_306) + x_309);
  let x_311 : f32 = u_xlat33;
  u_xlat4.z = (-(x_311) + 1.0f);
  let x_320 : vec4<f32> = u_xlat4;
  let x_323 : f32 = x_44.x_GlobalMipBias.x;
  let x_324 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_320.x, x_320.z), x_323);
  u_xlat33 = x_324.x;
  let x_326 : f32 = u_xlat33;
  u_xlat1.x = (x_326 + -1.0f);
  let x_332 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_334 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_332 * x_334) + 1.0f);
  let x_338 : f32 = u_xlat33;
  u_xlat33 = min(x_338, 1.0f);
  let x_342 : vec4<f32> = vs_TEXCOORD6;
  let x_343 : vec2<f32> = vec2<f32>(x_342.x, x_342.y);
  let x_345 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_343.x, x_343.y, x_345);
  let x_358 : vec3<f32> = txVec0;
  let x_360 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_358.xy, x_358.z);
  u_xlat35 = x_360;
  let x_368 : f32 = x_366.x_MainLightShadowParams.x;
  u_xlat36 = (-(x_368) + 1.0f);
  let x_371 : f32 = u_xlat35;
  let x_373 : f32 = x_366.x_MainLightShadowParams.x;
  let x_375 : f32 = u_xlat36;
  u_xlat35 = ((x_371 * x_373) + x_375);
  let x_379 : f32 = vs_TEXCOORD6.z;
  u_xlatb36 = (0.0f >= x_379);
  let x_383 : f32 = vs_TEXCOORD6.z;
  u_xlatb4 = (x_383 >= 1.0f);
  let x_385 : bool = u_xlatb36;
  let x_386 : bool = u_xlatb4;
  u_xlatb36 = (x_385 | x_386);
  let x_388 : bool = u_xlatb36;
  let x_389 : f32 = u_xlat35;
  u_xlat35 = select(x_389, 1.0f, x_388);
  let x_391 : vec3<f32> = vs_TEXCOORD1;
  let x_395 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_397 : vec3<f32> = (x_391 + -(x_395));
  let x_398 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_397.x, x_397.y, x_397.z, x_398.w);
  let x_400 : vec4<f32> = u_xlat4;
  let x_402 : vec4<f32> = u_xlat4;
  u_xlat36 = dot(vec3<f32>(x_400.x, x_400.y, x_400.z), vec3<f32>(x_402.x, x_402.y, x_402.z));
  let x_405 : f32 = u_xlat36;
  let x_407 : f32 = x_366.x_MainLightShadowParams.z;
  let x_410 : f32 = x_366.x_MainLightShadowParams.w;
  u_xlat36 = ((x_405 * x_407) + x_410);
  let x_412 : f32 = u_xlat36;
  u_xlat36 = clamp(x_412, 0.0f, 1.0f);
  let x_414 : f32 = u_xlat35;
  u_xlat4.x = (-(x_414) + 1.0f);
  let x_418 : f32 = u_xlat36;
  let x_420 : f32 = u_xlat4.x;
  let x_422 : f32 = u_xlat35;
  u_xlat35 = ((x_418 * x_420) + x_422);
  let x_430 : f32 = x_428.x_MainLightCookieTextureFormat;
  u_xlatb36 = !((x_430 == -1.0f));
  let x_432 : bool = u_xlatb36;
  if (x_432) {
    let x_435 : vec3<f32> = vs_TEXCOORD1;
    let x_438 : vec4<f32> = x_428.x_MainLightWorldToLight[1i];
    let x_440 : vec2<f32> = (vec2<f32>(x_435.y, x_435.y) * vec2<f32>(x_438.x, x_438.y));
    let x_441 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_440.x, x_440.y, x_441.z, x_441.w);
    let x_444 : vec4<f32> = x_428.x_MainLightWorldToLight[0i];
    let x_446 : vec3<f32> = vs_TEXCOORD1;
    let x_449 : vec4<f32> = u_xlat4;
    let x_451 : vec2<f32> = ((vec2<f32>(x_444.x, x_444.y) * vec2<f32>(x_446.x, x_446.x)) + vec2<f32>(x_449.x, x_449.y));
    let x_452 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_451.x, x_451.y, x_452.z, x_452.w);
    let x_455 : vec4<f32> = x_428.x_MainLightWorldToLight[2i];
    let x_457 : vec3<f32> = vs_TEXCOORD1;
    let x_460 : vec4<f32> = u_xlat4;
    let x_462 : vec2<f32> = ((vec2<f32>(x_455.x, x_455.y) * vec2<f32>(x_457.z, x_457.z)) + vec2<f32>(x_460.x, x_460.y));
    let x_463 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_462.x, x_462.y, x_463.z, x_463.w);
    let x_465 : vec4<f32> = u_xlat4;
    let x_468 : vec4<f32> = x_428.x_MainLightWorldToLight[3i];
    let x_470 : vec2<f32> = (vec2<f32>(x_465.x, x_465.y) + vec2<f32>(x_468.x, x_468.y));
    let x_471 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_470.x, x_470.y, x_471.z, x_471.w);
    let x_473 : vec4<f32> = u_xlat4;
    let x_477 : vec2<f32> = ((vec2<f32>(x_473.x, x_473.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_478 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_477.x, x_477.y, x_478.z, x_478.w);
    let x_485 : vec4<f32> = u_xlat4;
    let x_488 : f32 = x_44.x_GlobalMipBias.x;
    let x_489 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_485.x, x_485.y), x_488);
    u_xlat4 = x_489;
    let x_494 : f32 = x_428.x_MainLightCookieTextureFormat;
    let x_496 : f32 = x_428.x_MainLightCookieTextureFormat;
    let x_498 : f32 = x_428.x_MainLightCookieTextureFormat;
    let x_500 : f32 = x_428.x_MainLightCookieTextureFormat;
    let x_501 : vec4<f32> = vec4<f32>(x_494, x_496, x_498, x_500);
    let x_509 : vec4<bool> = (vec4<f32>(x_501.x, x_501.y, x_501.z, x_501.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_509.x, x_509.y);
    let x_512 : bool = u_xlatb5.y;
    if (x_512) {
      let x_517 : f32 = u_xlat4.w;
      x_513 = x_517;
    } else {
      let x_520 : f32 = u_xlat4.x;
      x_513 = x_520;
    }
    let x_521 : f32 = x_513;
    u_xlat36 = x_521;
    let x_523 : bool = u_xlatb5.x;
    if (x_523) {
      let x_527 : vec4<f32> = u_xlat4;
      x_524 = vec3<f32>(x_527.x, x_527.y, x_527.z);
    } else {
      let x_530 : f32 = u_xlat36;
      x_524 = vec3<f32>(x_530, x_530, x_530);
    }
    let x_532 : vec3<f32> = x_524;
    let x_533 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_532.x, x_532.y, x_532.z, x_533.w);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
  }
  let x_539 : vec4<f32> = u_xlat4;
  let x_542 : vec4<f32> = x_44.x_MainLightColor;
  let x_544 : vec3<f32> = (vec3<f32>(x_539.x, x_539.y, x_539.z) * vec3<f32>(x_542.x, x_542.y, x_542.z));
  let x_545 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_544.x, x_544.y, x_544.z, x_545.w);
  let x_547 : vec4<f32> = u_xlat1;
  let x_549 : vec4<f32> = u_xlat4;
  let x_551 : vec3<f32> = (vec3<f32>(x_547.x, x_547.x, x_547.x) * vec3<f32>(x_549.x, x_549.y, x_549.z));
  let x_552 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_551.x, x_551.y, x_551.z, x_552.w);
  let x_554 : f32 = u_xlat33;
  let x_556 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_554, x_554, x_554) * x_556);
  let x_558 : f32 = u_xlat35;
  let x_560 : f32 = x_210.unity_LightData.z;
  u_xlat33 = (x_558 * x_560);
  let x_562 : f32 = u_xlat33;
  let x_564 : vec4<f32> = u_xlat4;
  let x_566 : vec3<f32> = (vec3<f32>(x_562, x_562, x_562) * vec3<f32>(x_564.x, x_564.y, x_564.z));
  let x_567 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_566.x, x_566.y, x_566.z, x_567.w);
  let x_569 : vec4<f32> = u_xlat2;
  let x_572 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat33 = dot(vec3<f32>(x_569.x, x_569.y, x_569.z), vec3<f32>(x_572.x, x_572.y, x_572.z));
  let x_575 : f32 = u_xlat33;
  u_xlat33 = clamp(x_575, 0.0f, 1.0f);
  let x_577 : f32 = u_xlat33;
  let x_579 : vec4<f32> = u_xlat4;
  let x_581 : vec3<f32> = (vec3<f32>(x_577, x_577, x_577) * vec3<f32>(x_579.x, x_579.y, x_579.z));
  let x_582 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_581.x, x_581.y, x_581.z, x_582.w);
  let x_584 : vec4<f32> = u_xlat1;
  let x_586 : vec4<f32> = u_xlat4;
  let x_588 : vec3<f32> = (vec3<f32>(x_584.y, x_584.z, x_584.w) * vec3<f32>(x_586.x, x_586.y, x_586.z));
  let x_589 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_588.x, x_588.y, x_588.z, x_589.w);
  let x_593 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_595 : f32 = x_210.unity_LightData.y;
  u_xlat33 = min(x_593, x_595);
  let x_599 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_599));
  let x_603 : f32 = x_428.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_605 : f32 = x_428.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_607 : f32 = x_428.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_609 : f32 = x_428.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_610 : vec4<f32> = vec4<f32>(x_603, x_605, x_607, x_609);
  let x_616 : vec4<bool> = (vec4<f32>(x_610.x, x_610.y, x_610.z, x_610.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_616.x, x_616.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_628 : u32 = u_xlatu_loop_1;
    let x_629 : u32 = u_xlatu33;
    if ((x_628 < x_629)) {
    } else {
      break;
    }
    let x_632 : u32 = u_xlatu_loop_1;
    u_xlatu36 = (x_632 >> 2u);
    let x_636 : u32 = u_xlatu_loop_1;
    u_xlati37 = bitcast<i32>((x_636 & 3u));
    let x_639 : u32 = u_xlatu36;
    let x_642 : vec4<f32> = x_210.unity_LightIndices[bitcast<i32>(x_639)];
    let x_652 : i32 = u_xlati37;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_657 : vec4<u32> = indexable[x_652];
    u_xlat36 = dot(x_642, bitcast<vec4<f32>>(x_657));
    let x_660 : f32 = u_xlat36;
    u_xlatu36 = bitcast<u32>(i32(x_660));
    let x_664 : vec3<f32> = vs_TEXCOORD1;
    let x_676 : u32 = u_xlatu36;
    let x_679 : vec4<f32> = x_675.x_AdditionalLightsPosition[bitcast<i32>(x_676)];
    let x_682 : u32 = u_xlatu36;
    let x_685 : vec4<f32> = x_675.x_AdditionalLightsPosition[bitcast<i32>(x_682)];
    u_xlat7 = ((-(x_664) * vec3<f32>(x_679.w, x_679.w, x_679.w)) + vec3<f32>(x_685.x, x_685.y, x_685.z));
    let x_689 : vec3<f32> = u_xlat7;
    let x_690 : vec3<f32> = u_xlat7;
    u_xlat37 = dot(x_689, x_690);
    let x_692 : f32 = u_xlat37;
    u_xlat37 = max(x_692, 6.10351562e-05f);
    let x_697 : f32 = u_xlat37;
    u_xlat27.x = inverseSqrt(x_697);
    let x_700 : vec2<f32> = u_xlat27;
    let x_702 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_700.x, x_700.x, x_700.x) * x_702);
    let x_704 : f32 = u_xlat37;
    u_xlat27.x = (1.0f / x_704);
    let x_707 : f32 = u_xlat37;
    let x_708 : u32 = u_xlatu36;
    let x_711 : f32 = x_675.x_AdditionalLightsAttenuation[bitcast<i32>(x_708)].x;
    u_xlat37 = (x_707 * x_711);
    let x_713 : f32 = u_xlat37;
    let x_715 : f32 = u_xlat37;
    u_xlat37 = ((-(x_713) * x_715) + 1.0f);
    let x_718 : f32 = u_xlat37;
    u_xlat37 = max(x_718, 0.0f);
    let x_720 : f32 = u_xlat37;
    let x_721 : f32 = u_xlat37;
    u_xlat37 = (x_720 * x_721);
    let x_723 : f32 = u_xlat37;
    let x_725 : f32 = u_xlat27.x;
    u_xlat37 = (x_723 * x_725);
    let x_727 : u32 = u_xlatu36;
    let x_730 : vec4<f32> = x_675.x_AdditionalLightsSpotDir[bitcast<i32>(x_727)];
    let x_732 : vec3<f32> = u_xlat7;
    u_xlat27.x = dot(vec3<f32>(x_730.x, x_730.y, x_730.z), x_732);
    let x_736 : f32 = u_xlat27.x;
    let x_737 : u32 = u_xlatu36;
    let x_740 : f32 = x_675.x_AdditionalLightsAttenuation[bitcast<i32>(x_737)].z;
    let x_742 : u32 = u_xlatu36;
    let x_745 : f32 = x_675.x_AdditionalLightsAttenuation[bitcast<i32>(x_742)].w;
    u_xlat27.x = ((x_736 * x_740) + x_745);
    let x_749 : f32 = u_xlat27.x;
    u_xlat27.x = clamp(x_749, 0.0f, 1.0f);
    let x_753 : f32 = u_xlat27.x;
    let x_755 : f32 = u_xlat27.x;
    u_xlat27.x = (x_753 * x_755);
    let x_758 : f32 = u_xlat37;
    let x_760 : f32 = u_xlat27.x;
    u_xlat37 = (x_758 * x_760);
    let x_763 : u32 = u_xlatu36;
    u_xlatu27 = (x_763 >> 5u);
    let x_766 : u32 = u_xlatu36;
    u_xlati38 = (1i << bitcast<u32>((bitcast<i32>(x_766) & 31i)));
    let x_772 : i32 = u_xlati38;
    let x_774 : u32 = u_xlatu27;
    let x_777 : f32 = x_428.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_774)].el;
    u_xlati27 = bitcast<i32>((bitcast<u32>(x_772) & bitcast<u32>(x_777)));
    let x_781 : i32 = u_xlati27;
    if ((x_781 != 0i)) {
      let x_791 : u32 = u_xlatu36;
      let x_794 : f32 = x_790.x_AdditionalLightsLightTypes[bitcast<i32>(x_791)].el;
      u_xlati27 = i32(x_794);
      let x_796 : i32 = u_xlati27;
      u_xlati38 = select(1i, 0i, (x_796 != 0i));
      let x_800 : u32 = u_xlatu36;
      u_xlati39 = (bitcast<i32>(x_800) << bitcast<u32>(2i));
      let x_803 : i32 = u_xlati38;
      if ((x_803 != 0i)) {
        let x_808 : vec3<f32> = vs_TEXCOORD1;
        let x_810 : i32 = u_xlati39;
        let x_813 : i32 = u_xlati39;
        let x_817 : vec4<f32> = x_790.x_AdditionalLightsWorldToLights[((x_810 + 1i) / 4i)][((x_813 + 1i) % 4i)];
        let x_819 : vec3<f32> = (vec3<f32>(x_808.y, x_808.y, x_808.y) * vec3<f32>(x_817.x, x_817.y, x_817.w));
        let x_820 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_819.x, x_819.y, x_819.z, x_820.w);
        let x_822 : i32 = u_xlati39;
        let x_824 : i32 = u_xlati39;
        let x_827 : vec4<f32> = x_790.x_AdditionalLightsWorldToLights[(x_822 / 4i)][(x_824 % 4i)];
        let x_829 : vec3<f32> = vs_TEXCOORD1;
        let x_832 : vec4<f32> = u_xlat8;
        let x_834 : vec3<f32> = ((vec3<f32>(x_827.x, x_827.y, x_827.w) * vec3<f32>(x_829.x, x_829.x, x_829.x)) + vec3<f32>(x_832.x, x_832.y, x_832.z));
        let x_835 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_834.x, x_834.y, x_834.z, x_835.w);
        let x_837 : i32 = u_xlati39;
        let x_840 : i32 = u_xlati39;
        let x_844 : vec4<f32> = x_790.x_AdditionalLightsWorldToLights[((x_837 + 2i) / 4i)][((x_840 + 2i) % 4i)];
        let x_846 : vec3<f32> = vs_TEXCOORD1;
        let x_849 : vec4<f32> = u_xlat8;
        let x_851 : vec3<f32> = ((vec3<f32>(x_844.x, x_844.y, x_844.w) * vec3<f32>(x_846.z, x_846.z, x_846.z)) + vec3<f32>(x_849.x, x_849.y, x_849.z));
        let x_852 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_851.x, x_851.y, x_851.z, x_852.w);
        let x_854 : vec4<f32> = u_xlat8;
        let x_856 : i32 = u_xlati39;
        let x_859 : i32 = u_xlati39;
        let x_863 : vec4<f32> = x_790.x_AdditionalLightsWorldToLights[((x_856 + 3i) / 4i)][((x_859 + 3i) % 4i)];
        let x_865 : vec3<f32> = (vec3<f32>(x_854.x, x_854.y, x_854.z) + vec3<f32>(x_863.x, x_863.y, x_863.w));
        let x_866 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_865.x, x_865.y, x_865.z, x_866.w);
        let x_868 : vec4<f32> = u_xlat8;
        let x_870 : vec4<f32> = u_xlat8;
        let x_872 : vec2<f32> = (vec2<f32>(x_868.x, x_868.y) / vec2<f32>(x_870.z, x_870.z));
        let x_873 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_872.x, x_872.y, x_873.z, x_873.w);
        let x_875 : vec4<f32> = u_xlat8;
        let x_878 : vec2<f32> = ((vec2<f32>(x_875.x, x_875.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_879 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_878.x, x_878.y, x_879.z, x_879.w);
        let x_881 : vec4<f32> = u_xlat8;
        let x_885 : vec2<f32> = clamp(vec2<f32>(x_881.x, x_881.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_886 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_885.x, x_885.y, x_886.z, x_886.w);
        let x_888 : u32 = u_xlatu36;
        let x_891 : vec4<f32> = x_790.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_888)];
        let x_893 : vec4<f32> = u_xlat8;
        let x_896 : u32 = u_xlatu36;
        let x_899 : vec4<f32> = x_790.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_896)];
        let x_901 : vec2<f32> = ((vec2<f32>(x_891.x, x_891.y) * vec2<f32>(x_893.x, x_893.y)) + vec2<f32>(x_899.z, x_899.w));
        let x_902 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_901.x, x_901.y, x_902.z, x_902.w);
      } else {
        let x_906 : i32 = u_xlati27;
        u_xlatb27 = (x_906 == 1i);
        let x_908 : bool = u_xlatb27;
        u_xlati27 = select(0i, 1i, x_908);
        let x_910 : i32 = u_xlati27;
        if ((x_910 != 0i)) {
          let x_914 : vec3<f32> = vs_TEXCOORD1;
          let x_916 : i32 = u_xlati39;
          let x_919 : i32 = u_xlati39;
          let x_923 : vec4<f32> = x_790.x_AdditionalLightsWorldToLights[((x_916 + 1i) / 4i)][((x_919 + 1i) % 4i)];
          u_xlat27 = (vec2<f32>(x_914.y, x_914.y) * vec2<f32>(x_923.x, x_923.y));
          let x_926 : i32 = u_xlati39;
          let x_928 : i32 = u_xlati39;
          let x_931 : vec4<f32> = x_790.x_AdditionalLightsWorldToLights[(x_926 / 4i)][(x_928 % 4i)];
          let x_933 : vec3<f32> = vs_TEXCOORD1;
          let x_936 : vec2<f32> = u_xlat27;
          u_xlat27 = ((vec2<f32>(x_931.x, x_931.y) * vec2<f32>(x_933.x, x_933.x)) + x_936);
          let x_938 : i32 = u_xlati39;
          let x_941 : i32 = u_xlati39;
          let x_945 : vec4<f32> = x_790.x_AdditionalLightsWorldToLights[((x_938 + 2i) / 4i)][((x_941 + 2i) % 4i)];
          let x_947 : vec3<f32> = vs_TEXCOORD1;
          let x_950 : vec2<f32> = u_xlat27;
          u_xlat27 = ((vec2<f32>(x_945.x, x_945.y) * vec2<f32>(x_947.z, x_947.z)) + x_950);
          let x_952 : vec2<f32> = u_xlat27;
          let x_953 : i32 = u_xlati39;
          let x_956 : i32 = u_xlati39;
          let x_960 : vec4<f32> = x_790.x_AdditionalLightsWorldToLights[((x_953 + 3i) / 4i)][((x_956 + 3i) % 4i)];
          u_xlat27 = (x_952 + vec2<f32>(x_960.x, x_960.y));
          let x_963 : vec2<f32> = u_xlat27;
          u_xlat27 = ((x_963 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_966 : vec2<f32> = u_xlat27;
          u_xlat27 = fract(x_966);
          let x_968 : u32 = u_xlatu36;
          let x_971 : vec4<f32> = x_790.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_968)];
          let x_973 : vec2<f32> = u_xlat27;
          let x_975 : u32 = u_xlatu36;
          let x_978 : vec4<f32> = x_790.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_975)];
          let x_980 : vec2<f32> = ((vec2<f32>(x_971.x, x_971.y) * x_973) + vec2<f32>(x_978.z, x_978.w));
          let x_981 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_980.x, x_980.y, x_981.z, x_981.w);
        } else {
          let x_985 : vec3<f32> = vs_TEXCOORD1;
          let x_987 : i32 = u_xlati39;
          let x_990 : i32 = u_xlati39;
          let x_994 : vec4<f32> = x_790.x_AdditionalLightsWorldToLights[((x_987 + 1i) / 4i)][((x_990 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_985.y, x_985.y, x_985.y, x_985.y) * x_994);
          let x_996 : i32 = u_xlati39;
          let x_998 : i32 = u_xlati39;
          let x_1001 : vec4<f32> = x_790.x_AdditionalLightsWorldToLights[(x_996 / 4i)][(x_998 % 4i)];
          let x_1002 : vec3<f32> = vs_TEXCOORD1;
          let x_1005 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1001 * vec4<f32>(x_1002.x, x_1002.x, x_1002.x, x_1002.x)) + x_1005);
          let x_1007 : i32 = u_xlati39;
          let x_1010 : i32 = u_xlati39;
          let x_1014 : vec4<f32> = x_790.x_AdditionalLightsWorldToLights[((x_1007 + 2i) / 4i)][((x_1010 + 2i) % 4i)];
          let x_1015 : vec3<f32> = vs_TEXCOORD1;
          let x_1018 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1014 * vec4<f32>(x_1015.z, x_1015.z, x_1015.z, x_1015.z)) + x_1018);
          let x_1020 : vec4<f32> = u_xlat9;
          let x_1021 : i32 = u_xlati39;
          let x_1024 : i32 = u_xlati39;
          let x_1028 : vec4<f32> = x_790.x_AdditionalLightsWorldToLights[((x_1021 + 3i) / 4i)][((x_1024 + 3i) % 4i)];
          u_xlat9 = (x_1020 + x_1028);
          let x_1030 : vec4<f32> = u_xlat9;
          let x_1032 : vec4<f32> = u_xlat9;
          let x_1034 : vec3<f32> = (vec3<f32>(x_1030.x, x_1030.y, x_1030.z) / vec3<f32>(x_1032.w, x_1032.w, x_1032.w));
          let x_1035 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1034.x, x_1034.y, x_1034.z, x_1035.w);
          let x_1037 : vec4<f32> = u_xlat9;
          let x_1039 : vec4<f32> = u_xlat9;
          u_xlat27.x = dot(vec3<f32>(x_1037.x, x_1037.y, x_1037.z), vec3<f32>(x_1039.x, x_1039.y, x_1039.z));
          let x_1044 : f32 = u_xlat27.x;
          u_xlat27.x = inverseSqrt(x_1044);
          let x_1047 : vec2<f32> = u_xlat27;
          let x_1049 : vec4<f32> = u_xlat9;
          let x_1051 : vec3<f32> = (vec3<f32>(x_1047.x, x_1047.x, x_1047.x) * vec3<f32>(x_1049.x, x_1049.y, x_1049.z));
          let x_1052 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1051.x, x_1051.y, x_1051.z, x_1052.w);
          let x_1054 : vec4<f32> = u_xlat9;
          u_xlat27.x = dot(abs(vec3<f32>(x_1054.x, x_1054.y, x_1054.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1061 : f32 = u_xlat27.x;
          u_xlat27.x = max(x_1061, 0.000001f);
          let x_1066 : f32 = u_xlat27.x;
          u_xlat27.x = (1.0f / x_1066);
          let x_1070 : vec2<f32> = u_xlat27;
          let x_1072 : vec4<f32> = u_xlat9;
          u_xlat10 = (vec3<f32>(x_1070.x, x_1070.x, x_1070.x) * vec3<f32>(x_1072.z, x_1072.x, x_1072.y));
          let x_1076 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_1076);
          let x_1080 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_1080, 0.0f, 1.0f);
          let x_1084 : vec3<f32> = u_xlat10;
          let x_1087 : vec4<bool> = (vec4<f32>(x_1084.y, x_1084.z, x_1084.y, x_1084.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb30 = vec2<bool>(x_1087.x, x_1087.y);
          let x_1091 : bool = u_xlatb30.x;
          if (x_1091) {
            let x_1096 : f32 = u_xlat10.x;
            x_1092 = x_1096;
          } else {
            let x_1099 : f32 = u_xlat10.x;
            x_1092 = -(x_1099);
          }
          let x_1101 : f32 = x_1092;
          u_xlat30.x = x_1101;
          let x_1104 : bool = u_xlatb30.y;
          if (x_1104) {
            let x_1109 : f32 = u_xlat10.x;
            x_1105 = x_1109;
          } else {
            let x_1112 : f32 = u_xlat10.x;
            x_1105 = -(x_1112);
          }
          let x_1114 : f32 = x_1105;
          u_xlat30.y = x_1114;
          let x_1116 : vec4<f32> = u_xlat9;
          let x_1118 : vec2<f32> = u_xlat27;
          let x_1121 : vec2<f32> = u_xlat30;
          u_xlat27 = ((vec2<f32>(x_1116.x, x_1116.y) * vec2<f32>(x_1118.x, x_1118.x)) + x_1121);
          let x_1123 : vec2<f32> = u_xlat27;
          u_xlat27 = ((x_1123 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1126 : vec2<f32> = u_xlat27;
          u_xlat27 = clamp(x_1126, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1130 : u32 = u_xlatu36;
          let x_1133 : vec4<f32> = x_790.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1130)];
          let x_1135 : vec2<f32> = u_xlat27;
          let x_1137 : u32 = u_xlatu36;
          let x_1140 : vec4<f32> = x_790.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1137)];
          let x_1142 : vec2<f32> = ((vec2<f32>(x_1133.x, x_1133.y) * x_1135) + vec2<f32>(x_1140.z, x_1140.w));
          let x_1143 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1142.x, x_1142.y, x_1143.z, x_1143.w);
        }
      }
      let x_1150 : vec4<f32> = u_xlat8;
      let x_1153 : f32 = x_44.x_GlobalMipBias.x;
      let x_1154 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1150.x, x_1150.y), x_1153);
      u_xlat8 = x_1154;
      let x_1156 : bool = u_xlatb5.y;
      if (x_1156) {
        let x_1161 : f32 = u_xlat8.w;
        x_1157 = x_1161;
      } else {
        let x_1164 : f32 = u_xlat8.x;
        x_1157 = x_1164;
      }
      let x_1165 : f32 = x_1157;
      u_xlat27.x = x_1165;
      let x_1168 : bool = u_xlatb5.x;
      if (x_1168) {
        let x_1172 : vec4<f32> = u_xlat8;
        x_1169 = vec3<f32>(x_1172.x, x_1172.y, x_1172.z);
      } else {
        let x_1175 : vec2<f32> = u_xlat27;
        x_1169 = vec3<f32>(x_1175.x, x_1175.x, x_1175.x);
      }
      let x_1177 : vec3<f32> = x_1169;
      let x_1178 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1177.x, x_1177.y, x_1177.z, x_1178.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_1184 : vec4<f32> = u_xlat8;
    let x_1186 : u32 = u_xlatu36;
    let x_1189 : vec4<f32> = x_675.x_AdditionalLightsColor[bitcast<i32>(x_1186)];
    let x_1191 : vec3<f32> = (vec3<f32>(x_1184.x, x_1184.y, x_1184.z) * vec3<f32>(x_1189.x, x_1189.y, x_1189.z));
    let x_1192 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1191.x, x_1191.y, x_1191.z, x_1192.w);
    let x_1194 : vec4<f32> = u_xlat1;
    let x_1196 : vec4<f32> = u_xlat8;
    let x_1198 : vec3<f32> = (vec3<f32>(x_1194.x, x_1194.x, x_1194.x) * vec3<f32>(x_1196.x, x_1196.y, x_1196.z));
    let x_1199 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1198.x, x_1198.y, x_1198.z, x_1199.w);
    let x_1201 : f32 = u_xlat37;
    let x_1203 : vec4<f32> = u_xlat8;
    let x_1205 : vec3<f32> = (vec3<f32>(x_1201, x_1201, x_1201) * vec3<f32>(x_1203.x, x_1203.y, x_1203.z));
    let x_1206 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1205.x, x_1205.y, x_1205.z, x_1206.w);
    let x_1208 : vec4<f32> = u_xlat2;
    let x_1210 : vec3<f32> = u_xlat7;
    u_xlat36 = dot(vec3<f32>(x_1208.x, x_1208.y, x_1208.z), x_1210);
    let x_1212 : f32 = u_xlat36;
    u_xlat36 = clamp(x_1212, 0.0f, 1.0f);
    let x_1214 : f32 = u_xlat36;
    let x_1216 : vec4<f32> = u_xlat8;
    u_xlat7 = (vec3<f32>(x_1214, x_1214, x_1214) * vec3<f32>(x_1216.x, x_1216.y, x_1216.z));
    let x_1219 : vec3<f32> = u_xlat7;
    let x_1220 : vec4<f32> = u_xlat1;
    let x_1223 : vec3<f32> = u_xlat6;
    u_xlat6 = ((x_1219 * vec3<f32>(x_1220.y, x_1220.z, x_1220.w)) + x_1223);

    continuing {
      let x_1225 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1225 + bitcast<u32>(1i));
    }
  }
  let x_1227 : vec3<f32> = u_xlat3;
  let x_1228 : vec4<f32> = u_xlat1;
  let x_1231 : vec4<f32> = u_xlat4;
  let x_1233 : vec3<f32> = ((x_1227 * vec3<f32>(x_1228.y, x_1228.z, x_1228.w)) + vec3<f32>(x_1231.x, x_1231.y, x_1231.z));
  let x_1234 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1233.x, x_1233.y, x_1233.z, x_1234.w);
  let x_1236 : vec3<f32> = u_xlat6;
  let x_1237 : vec4<f32> = u_xlat1;
  let x_1239 : vec3<f32> = (x_1236 + vec3<f32>(x_1237.x, x_1237.y, x_1237.z));
  let x_1240 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1239.x, x_1239.y, x_1239.z, x_1240.w);
  let x_1242 : f32 = u_xlat11;
  let x_1243 : f32 = u_xlat11;
  u_xlat11 = (x_1242 * -(x_1243));
  let x_1246 : f32 = u_xlat11;
  u_xlat11 = exp2(x_1246);
  let x_1248 : vec4<f32> = u_xlat1;
  let x_1252 : vec4<f32> = x_44.unity_FogColor;
  let x_1255 : vec3<f32> = (vec3<f32>(x_1248.x, x_1248.y, x_1248.z) + -(vec3<f32>(x_1252.x, x_1252.y, x_1252.z)));
  let x_1256 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1255.x, x_1255.y, x_1255.z, x_1256.w);
  let x_1260 : f32 = u_xlat11;
  let x_1262 : vec4<f32> = u_xlat1;
  let x_1266 : vec4<f32> = x_44.unity_FogColor;
  let x_1268 : vec3<f32> = ((vec3<f32>(x_1260, x_1260, x_1260) * vec3<f32>(x_1262.x, x_1262.y, x_1262.z)) + vec3<f32>(x_1266.x, x_1266.y, x_1266.z));
  let x_1269 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1268.x, x_1268.y, x_1268.z, x_1269.w);
  let x_1272 : f32 = x_57.x_Surface;
  u_xlatb11 = (x_1272 == 1.0f);
  let x_1274 : bool = u_xlatb11;
  let x_1275 : bool = u_xlatb22;
  u_xlatb11 = (x_1274 | x_1275);
  let x_1277 : bool = u_xlatb11;
  if (x_1277) {
    let x_1282 : f32 = u_xlat0.x;
    x_1278 = x_1282;
  } else {
    x_1278 = 1.0f;
  }
  let x_1284 : f32 = x_1278;
  SV_Target0.w = x_1284;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}

