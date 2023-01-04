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

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_1 = array<strided_arr, 8u>;

struct LightCookies {
  x_MainLightWorldToLight : mat4x4<f32>,
  x_AdditionalLightsCookieEnableBits : Arr_1,
  x_MainLightCookieTextureFormat : f32,
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
}

type Arr_2 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr_2,
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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

@group(0) @binding(3) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(4) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_451 : MainLightShadows;

@group(1) @binding(5) var<uniform> x_513 : LightCookies;

@group(0) @binding(6) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(2) var<uniform> x_650 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_826 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_928 : AdditionalLightsCookies;

@group(0) @binding(7) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat38 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat39 : f32;
  var u_xlat40 : f32;
  var u_xlatb40 : bool;
  var u_xlatb5 : bool;
  var u_xlatb6 : vec2<bool>;
  var x_598 : f32;
  var x_609 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec3<f32>;
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
  var x_1223 : f32;
  var x_1236 : f32;
  var x_1288 : f32;
  var x_1299 : vec3<f32>;
  var x_1457 : f32;
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
  u_xlat2 = vec3<f32>(x_168.x, x_168.y, x_168.w);
  let x_171 : f32 = u_xlat2.x;
  let x_174 : f32 = u_xlat2.z;
  u_xlat2.x = (x_171 * x_174);
  let x_177 : vec3<f32> = u_xlat2;
  let x_184 : vec2<f32> = ((vec2<f32>(x_177.x, x_177.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_185 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_184.x, x_185.y, x_184.y);
  let x_187 : vec3<f32> = u_xlat12;
  let x_189 : vec3<f32> = u_xlat12;
  u_xlat1.x = dot(vec2<f32>(x_187.x, x_187.z), vec2<f32>(x_189.x, x_189.z));
  let x_194 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_194, 1.0f);
  let x_198 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_198) + 1.0f);
  let x_203 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_203);
  let x_207 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_207, 1.00000002e-16f);
  let x_211 : vec3<f32> = u_xlat12;
  let x_214 : vec4<f32> = vs_TEXCOORD4;
  u_xlat2 = (vec3<f32>(x_211.z, x_211.z, x_211.z) * vec3<f32>(x_214.x, x_214.y, x_214.z));
  let x_217 : vec3<f32> = u_xlat12;
  let x_220 : vec4<f32> = vs_TEXCOORD3;
  let x_223 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_217.x, x_217.x, x_217.x) * vec3<f32>(x_220.x, x_220.y, x_220.z)) + x_223);
  let x_225 : vec4<f32> = u_xlat1;
  let x_228 : vec4<f32> = vs_TEXCOORD2;
  let x_231 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_225.x, x_225.x, x_225.x) * vec3<f32>(x_228.x, x_228.y, x_228.z)) + x_231);
  let x_233 : vec3<f32> = u_xlat2;
  let x_234 : vec3<f32> = u_xlat2;
  u_xlat12.x = dot(x_233, x_234);
  let x_238 : f32 = u_xlat12.x;
  u_xlat12.x = inverseSqrt(x_238);
  let x_241 : vec3<f32> = u_xlat12;
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
  u_xlat12.x = dot(x_256, x_257);
  let x_261 : f32 = u_xlat12.x;
  u_xlat12.x = max(x_261, 1.17549435e-37f);
  let x_266 : f32 = u_xlat12.x;
  u_xlat12.x = inverseSqrt(x_266);
  let x_272 : f32 = vs_TEXCOORD1.y;
  let x_275 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat36 = (x_272 * x_275);
  let x_278 : f32 = x_44.unity_MatrixV[0i].z;
  let x_280 : f32 = vs_TEXCOORD1.x;
  let x_282 : f32 = u_xlat36;
  u_xlat36 = ((x_278 * x_280) + x_282);
  let x_285 : f32 = x_44.unity_MatrixV[2i].z;
  let x_287 : f32 = vs_TEXCOORD1.z;
  let x_289 : f32 = u_xlat36;
  u_xlat36 = ((x_285 * x_287) + x_289);
  let x_291 : f32 = u_xlat36;
  let x_294 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat36 = (x_291 + x_294);
  let x_296 : f32 = u_xlat36;
  let x_300 : f32 = x_44.x_ProjectionParams.y;
  u_xlat36 = (-(x_296) + -(x_300));
  let x_303 : f32 = u_xlat36;
  u_xlat36 = max(x_303, 0.0f);
  let x_305 : f32 = u_xlat36;
  let x_308 : f32 = x_44.unity_FogParams.x;
  u_xlat36 = (x_305 * x_308);
  let x_317 : vec2<f32> = vs_TEXCOORD7;
  let x_319 : f32 = x_44.x_GlobalMipBias.x;
  let x_320 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_317, x_319);
  u_xlat4 = x_320;
  let x_326 : vec2<f32> = vs_TEXCOORD7;
  let x_328 : f32 = x_44.x_GlobalMipBias.x;
  let x_329 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_326, x_328);
  let x_330 : vec3<f32> = vec3<f32>(x_329.x, x_329.y, x_329.z);
  let x_331 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_330.x, x_330.y, x_330.z, x_331.w);
  let x_333 : vec4<f32> = u_xlat4;
  let x_337 : vec3<f32> = (vec3<f32>(x_333.x, x_333.y, x_333.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_338 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_337.x, x_337.y, x_337.z, x_338.w);
  let x_340 : vec3<f32> = u_xlat2;
  let x_341 : vec4<f32> = u_xlat4;
  u_xlat1.x = dot(x_340, vec3<f32>(x_341.x, x_341.y, x_341.z));
  let x_346 : f32 = u_xlat1.x;
  u_xlat1.x = (x_346 + 0.5f);
  let x_349 : vec4<f32> = u_xlat1;
  let x_351 : vec4<f32> = u_xlat5;
  let x_353 : vec3<f32> = (vec3<f32>(x_349.x, x_349.x, x_349.x) * vec3<f32>(x_351.x, x_351.y, x_351.z));
  let x_354 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_353.x, x_353.y, x_353.z, x_354.w);
  let x_357 : f32 = u_xlat4.w;
  u_xlat1.x = max(x_357, 0.0001f);
  let x_360 : vec4<f32> = u_xlat4;
  let x_362 : vec4<f32> = u_xlat1;
  let x_364 : vec3<f32> = (vec3<f32>(x_360.x, x_360.y, x_360.z) / vec3<f32>(x_362.x, x_362.x, x_362.x));
  let x_365 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_364.x, x_364.y, x_364.z, x_365.w);
  let x_369 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_370 : vec2<f32> = vec2<f32>(x_369.x, x_369.y);
  let x_374 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_370.x, x_370.y));
  let x_375 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_374.x, x_374.y, x_375.z, x_375.w);
  let x_377 : vec4<f32> = u_xlat5;
  let x_379 : vec4<f32> = hlslcc_FragCoord;
  let x_381 : vec2<f32> = (vec2<f32>(x_377.x, x_377.y) * vec2<f32>(x_379.x, x_379.y));
  let x_382 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_381.x, x_381.y, x_382.z, x_382.w);
  let x_385 : f32 = u_xlat5.y;
  let x_388 : f32 = x_44.x_ScaleBiasRt.x;
  let x_391 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat1.x = ((x_385 * x_388) + x_391);
  let x_395 : f32 = u_xlat1.x;
  u_xlat5.z = (-(x_395) + 1.0f);
  let x_404 : vec4<f32> = u_xlat5;
  let x_407 : f32 = x_44.x_GlobalMipBias.x;
  let x_408 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_404.x, x_404.z), x_407);
  u_xlat1.x = x_408.x;
  let x_413 : f32 = u_xlat1.x;
  u_xlat38 = (x_413 + -1.0f);
  let x_417 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_418 : f32 = u_xlat38;
  u_xlat38 = ((x_417 * x_418) + 1.0f);
  let x_422 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_422, 1.0f);
  let x_427 : vec4<f32> = vs_TEXCOORD6;
  let x_428 : vec2<f32> = vec2<f32>(x_427.x, x_427.y);
  let x_430 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_428.x, x_428.y, x_430);
  let x_443 : vec3<f32> = txVec0;
  let x_445 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_443.xy, x_443.z);
  u_xlat39 = x_445;
  let x_453 : f32 = x_451.x_MainLightShadowParams.x;
  u_xlat40 = (-(x_453) + 1.0f);
  let x_456 : f32 = u_xlat39;
  let x_458 : f32 = x_451.x_MainLightShadowParams.x;
  let x_460 : f32 = u_xlat40;
  u_xlat39 = ((x_456 * x_458) + x_460);
  let x_464 : f32 = vs_TEXCOORD6.z;
  u_xlatb40 = (0.0f >= x_464);
  let x_468 : f32 = vs_TEXCOORD6.z;
  u_xlatb5 = (x_468 >= 1.0f);
  let x_470 : bool = u_xlatb40;
  let x_471 : bool = u_xlatb5;
  u_xlatb40 = (x_470 | x_471);
  let x_473 : bool = u_xlatb40;
  let x_474 : f32 = u_xlat39;
  u_xlat39 = select(x_474, 1.0f, x_473);
  let x_476 : vec3<f32> = vs_TEXCOORD1;
  let x_480 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_482 : vec3<f32> = (x_476 + -(x_480));
  let x_483 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_482.x, x_482.y, x_482.z, x_483.w);
  let x_485 : vec4<f32> = u_xlat5;
  let x_487 : vec4<f32> = u_xlat5;
  u_xlat40 = dot(vec3<f32>(x_485.x, x_485.y, x_485.z), vec3<f32>(x_487.x, x_487.y, x_487.z));
  let x_490 : f32 = u_xlat40;
  let x_492 : f32 = x_451.x_MainLightShadowParams.z;
  let x_495 : f32 = x_451.x_MainLightShadowParams.w;
  u_xlat40 = ((x_490 * x_492) + x_495);
  let x_497 : f32 = u_xlat40;
  u_xlat40 = clamp(x_497, 0.0f, 1.0f);
  let x_499 : f32 = u_xlat39;
  u_xlat5.x = (-(x_499) + 1.0f);
  let x_503 : f32 = u_xlat40;
  let x_505 : f32 = u_xlat5.x;
  let x_507 : f32 = u_xlat39;
  u_xlat39 = ((x_503 * x_505) + x_507);
  let x_515 : f32 = x_513.x_MainLightCookieTextureFormat;
  u_xlatb40 = !((x_515 == -1.0f));
  let x_517 : bool = u_xlatb40;
  if (x_517) {
    let x_520 : vec3<f32> = vs_TEXCOORD1;
    let x_523 : vec4<f32> = x_513.x_MainLightWorldToLight[1i];
    let x_525 : vec2<f32> = (vec2<f32>(x_520.y, x_520.y) * vec2<f32>(x_523.x, x_523.y));
    let x_526 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_525.x, x_525.y, x_526.z, x_526.w);
    let x_529 : vec4<f32> = x_513.x_MainLightWorldToLight[0i];
    let x_531 : vec3<f32> = vs_TEXCOORD1;
    let x_534 : vec4<f32> = u_xlat5;
    let x_536 : vec2<f32> = ((vec2<f32>(x_529.x, x_529.y) * vec2<f32>(x_531.x, x_531.x)) + vec2<f32>(x_534.x, x_534.y));
    let x_537 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_536.x, x_536.y, x_537.z, x_537.w);
    let x_540 : vec4<f32> = x_513.x_MainLightWorldToLight[2i];
    let x_542 : vec3<f32> = vs_TEXCOORD1;
    let x_545 : vec4<f32> = u_xlat5;
    let x_547 : vec2<f32> = ((vec2<f32>(x_540.x, x_540.y) * vec2<f32>(x_542.z, x_542.z)) + vec2<f32>(x_545.x, x_545.y));
    let x_548 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_547.x, x_547.y, x_548.z, x_548.w);
    let x_550 : vec4<f32> = u_xlat5;
    let x_553 : vec4<f32> = x_513.x_MainLightWorldToLight[3i];
    let x_555 : vec2<f32> = (vec2<f32>(x_550.x, x_550.y) + vec2<f32>(x_553.x, x_553.y));
    let x_556 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_555.x, x_555.y, x_556.z, x_556.w);
    let x_558 : vec4<f32> = u_xlat5;
    let x_562 : vec2<f32> = ((vec2<f32>(x_558.x, x_558.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_563 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_562.x, x_562.y, x_563.z, x_563.w);
    let x_570 : vec4<f32> = u_xlat5;
    let x_573 : f32 = x_44.x_GlobalMipBias.x;
    let x_574 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_570.x, x_570.y), x_573);
    u_xlat5 = x_574;
    let x_579 : f32 = x_513.x_MainLightCookieTextureFormat;
    let x_581 : f32 = x_513.x_MainLightCookieTextureFormat;
    let x_583 : f32 = x_513.x_MainLightCookieTextureFormat;
    let x_585 : f32 = x_513.x_MainLightCookieTextureFormat;
    let x_586 : vec4<f32> = vec4<f32>(x_579, x_581, x_583, x_585);
    let x_594 : vec4<bool> = (vec4<f32>(x_586.x, x_586.y, x_586.z, x_586.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb6 = vec2<bool>(x_594.x, x_594.y);
    let x_597 : bool = u_xlatb6.y;
    if (x_597) {
      let x_602 : f32 = u_xlat5.w;
      x_598 = x_602;
    } else {
      let x_605 : f32 = u_xlat5.x;
      x_598 = x_605;
    }
    let x_606 : f32 = x_598;
    u_xlat40 = x_606;
    let x_608 : bool = u_xlatb6.x;
    if (x_608) {
      let x_612 : vec4<f32> = u_xlat5;
      x_609 = vec3<f32>(x_612.x, x_612.y, x_612.z);
    } else {
      let x_615 : f32 = u_xlat40;
      x_609 = vec3<f32>(x_615, x_615, x_615);
    }
    let x_617 : vec3<f32> = x_609;
    let x_618 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_617.x, x_617.y, x_617.z, x_618.w);
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
  }
  let x_624 : vec4<f32> = u_xlat5;
  let x_627 : vec4<f32> = x_44.x_MainLightColor;
  let x_629 : vec3<f32> = (vec3<f32>(x_624.x, x_624.y, x_624.z) * vec3<f32>(x_627.x, x_627.y, x_627.z));
  let x_630 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_629.x, x_629.y, x_629.z, x_630.w);
  let x_632 : f32 = u_xlat38;
  let x_634 : vec4<f32> = u_xlat5;
  let x_636 : vec3<f32> = (vec3<f32>(x_632, x_632, x_632) * vec3<f32>(x_634.x, x_634.y, x_634.z));
  let x_637 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_636.x, x_636.y, x_636.z, x_637.w);
  let x_639 : vec4<f32> = u_xlat1;
  let x_641 : vec4<f32> = u_xlat4;
  let x_643 : vec3<f32> = (vec3<f32>(x_639.x, x_639.x, x_639.x) * vec3<f32>(x_641.x, x_641.y, x_641.z));
  let x_644 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_643.x, x_643.y, x_643.z, x_644.w);
  let x_646 : f32 = u_xlat39;
  let x_652 : f32 = x_650.unity_LightData.z;
  u_xlat1.x = (x_646 * x_652);
  let x_655 : vec4<f32> = u_xlat1;
  let x_657 : vec4<f32> = u_xlat5;
  let x_659 : vec3<f32> = (vec3<f32>(x_655.x, x_655.x, x_655.x) * vec3<f32>(x_657.x, x_657.y, x_657.z));
  let x_660 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_659.x, x_659.y, x_659.z, x_660.w);
  let x_662 : vec3<f32> = u_xlat2;
  let x_664 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat1.x = dot(x_662, vec3<f32>(x_664.x, x_664.y, x_664.z));
  let x_669 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_669, 0.0f, 1.0f);
  let x_673 : vec4<f32> = u_xlat1;
  let x_675 : vec4<f32> = u_xlat5;
  u_xlat6 = (vec3<f32>(x_673.x, x_673.x, x_673.x) * vec3<f32>(x_675.x, x_675.y, x_675.z));
  let x_679 : f32 = x_57.x_SpecColor.w;
  u_xlat1.x = ((x_679 * 10.0f) + 1.0f);
  let x_685 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_685);
  let x_689 : vec3<f32> = u_xlat3;
  let x_690 : vec3<f32> = u_xlat12;
  let x_694 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat7 = ((x_689 * vec3<f32>(x_690.x, x_690.x, x_690.x)) + vec3<f32>(x_694.x, x_694.y, x_694.z));
  let x_697 : vec3<f32> = u_xlat7;
  let x_698 : vec3<f32> = u_xlat7;
  u_xlat39 = dot(x_697, x_698);
  let x_700 : f32 = u_xlat39;
  u_xlat39 = max(x_700, 1.17549435e-37f);
  let x_702 : f32 = u_xlat39;
  u_xlat39 = inverseSqrt(x_702);
  let x_704 : f32 = u_xlat39;
  let x_706 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_704, x_704, x_704) * x_706);
  let x_708 : vec3<f32> = u_xlat2;
  let x_709 : vec3<f32> = u_xlat7;
  u_xlat39 = dot(x_708, x_709);
  let x_711 : f32 = u_xlat39;
  u_xlat39 = clamp(x_711, 0.0f, 1.0f);
  let x_713 : f32 = u_xlat39;
  u_xlat39 = log2(x_713);
  let x_716 : f32 = u_xlat1.x;
  let x_717 : f32 = u_xlat39;
  u_xlat39 = (x_716 * x_717);
  let x_719 : f32 = u_xlat39;
  u_xlat39 = exp2(x_719);
  let x_721 : f32 = u_xlat39;
  let x_724 : vec4<f32> = x_57.x_SpecColor;
  u_xlat7 = (vec3<f32>(x_721, x_721, x_721) * vec3<f32>(x_724.x, x_724.y, x_724.z));
  let x_727 : vec4<f32> = u_xlat5;
  let x_729 : vec3<f32> = u_xlat7;
  let x_730 : vec3<f32> = (vec3<f32>(x_727.x, x_727.y, x_727.z) * x_729);
  let x_731 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_730.x, x_730.y, x_730.z, x_731.w);
  let x_733 : vec3<f32> = u_xlat6;
  let x_734 : vec4<f32> = u_xlat1;
  let x_737 : vec4<f32> = u_xlat5;
  let x_739 : vec3<f32> = ((x_733 * vec3<f32>(x_734.y, x_734.z, x_734.w)) + vec3<f32>(x_737.x, x_737.y, x_737.z));
  let x_740 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_739.x, x_739.y, x_739.z, x_740.w);
  let x_744 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_746 : f32 = x_650.unity_LightData.y;
  u_xlat39 = min(x_744, x_746);
  let x_750 : f32 = u_xlat39;
  u_xlatu39 = bitcast<u32>(i32(x_750));
  let x_754 : f32 = x_513.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_756 : f32 = x_513.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_758 : f32 = x_513.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_760 : f32 = x_513.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_761 : vec4<f32> = vec4<f32>(x_754, x_756, x_758, x_760);
  let x_767 : vec4<bool> = (vec4<f32>(x_761.x, x_761.y, x_761.z, x_761.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_767.x, x_767.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_778 : u32 = u_xlatu_loop_1;
    let x_779 : u32 = u_xlatu39;
    if ((x_778 < x_779)) {
    } else {
      break;
    }
    let x_782 : u32 = u_xlatu_loop_1;
    u_xlatu41 = (x_782 >> 2u);
    let x_786 : u32 = u_xlatu_loop_1;
    u_xlati30 = bitcast<i32>((x_786 & 3u));
    let x_790 : u32 = u_xlatu41;
    let x_793 : vec4<f32> = x_650.unity_LightIndices[bitcast<i32>(x_790)];
    let x_803 : i32 = u_xlati30;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_808 : vec4<u32> = indexable[x_803];
    u_xlat41 = dot(x_793, bitcast<vec4<f32>>(x_808));
    let x_811 : f32 = u_xlat41;
    u_xlatu41 = bitcast<u32>(i32(x_811));
    let x_815 : vec3<f32> = vs_TEXCOORD1;
    let x_827 : u32 = u_xlatu41;
    let x_830 : vec4<f32> = x_826.x_AdditionalLightsPosition[bitcast<i32>(x_827)];
    let x_833 : u32 = u_xlatu41;
    let x_836 : vec4<f32> = x_826.x_AdditionalLightsPosition[bitcast<i32>(x_833)];
    u_xlat8 = ((-(x_815) * vec3<f32>(x_830.w, x_830.w, x_830.w)) + vec3<f32>(x_836.x, x_836.y, x_836.z));
    let x_840 : vec3<f32> = u_xlat8;
    let x_841 : vec3<f32> = u_xlat8;
    u_xlat30 = dot(x_840, x_841);
    let x_843 : f32 = u_xlat30;
    u_xlat30 = max(x_843, 6.10351562e-05f);
    let x_847 : f32 = u_xlat30;
    u_xlat42 = inverseSqrt(x_847);
    let x_849 : f32 = u_xlat42;
    let x_851 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_849, x_849, x_849) * x_851);
    let x_853 : f32 = u_xlat30;
    u_xlat42 = (1.0f / x_853);
    let x_855 : f32 = u_xlat30;
    let x_856 : u32 = u_xlatu41;
    let x_859 : f32 = x_826.x_AdditionalLightsAttenuation[bitcast<i32>(x_856)].x;
    u_xlat30 = (x_855 * x_859);
    let x_861 : f32 = u_xlat30;
    let x_863 : f32 = u_xlat30;
    u_xlat30 = ((-(x_861) * x_863) + 1.0f);
    let x_866 : f32 = u_xlat30;
    u_xlat30 = max(x_866, 0.0f);
    let x_868 : f32 = u_xlat30;
    let x_869 : f32 = u_xlat30;
    u_xlat30 = (x_868 * x_869);
    let x_871 : f32 = u_xlat30;
    let x_872 : f32 = u_xlat42;
    u_xlat30 = (x_871 * x_872);
    let x_874 : u32 = u_xlatu41;
    let x_877 : vec4<f32> = x_826.x_AdditionalLightsSpotDir[bitcast<i32>(x_874)];
    let x_879 : vec3<f32> = u_xlat8;
    u_xlat42 = dot(vec3<f32>(x_877.x, x_877.y, x_877.z), x_879);
    let x_881 : f32 = u_xlat42;
    let x_882 : u32 = u_xlatu41;
    let x_885 : f32 = x_826.x_AdditionalLightsAttenuation[bitcast<i32>(x_882)].z;
    let x_887 : u32 = u_xlatu41;
    let x_890 : f32 = x_826.x_AdditionalLightsAttenuation[bitcast<i32>(x_887)].w;
    u_xlat42 = ((x_881 * x_885) + x_890);
    let x_892 : f32 = u_xlat42;
    u_xlat42 = clamp(x_892, 0.0f, 1.0f);
    let x_894 : f32 = u_xlat42;
    let x_895 : f32 = u_xlat42;
    u_xlat42 = (x_894 * x_895);
    let x_897 : f32 = u_xlat42;
    let x_898 : f32 = u_xlat30;
    u_xlat30 = (x_897 * x_898);
    let x_901 : u32 = u_xlatu41;
    u_xlatu42 = (x_901 >> 5u);
    let x_904 : u32 = u_xlatu41;
    u_xlati43 = (1i << bitcast<u32>((bitcast<i32>(x_904) & 31i)));
    let x_910 : i32 = u_xlati43;
    let x_912 : u32 = u_xlatu42;
    let x_915 : f32 = x_513.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_912)].el;
    u_xlati42 = bitcast<i32>((bitcast<u32>(x_910) & bitcast<u32>(x_915)));
    let x_919 : i32 = u_xlati42;
    if ((x_919 != 0i)) {
      let x_929 : u32 = u_xlatu41;
      let x_932 : f32 = x_928.x_AdditionalLightsLightTypes[bitcast<i32>(x_929)].el;
      u_xlati42 = i32(x_932);
      let x_934 : i32 = u_xlati42;
      u_xlati43 = select(1i, 0i, (x_934 != 0i));
      let x_938 : u32 = u_xlatu41;
      u_xlati44 = (bitcast<i32>(x_938) << bitcast<u32>(2i));
      let x_941 : i32 = u_xlati43;
      if ((x_941 != 0i)) {
        let x_946 : vec3<f32> = vs_TEXCOORD1;
        let x_948 : i32 = u_xlati44;
        let x_951 : i32 = u_xlati44;
        let x_955 : vec4<f32> = x_928.x_AdditionalLightsWorldToLights[((x_948 + 1i) / 4i)][((x_951 + 1i) % 4i)];
        let x_957 : vec3<f32> = (vec3<f32>(x_946.y, x_946.y, x_946.y) * vec3<f32>(x_955.x, x_955.y, x_955.w));
        let x_958 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_957.x, x_957.y, x_957.z, x_958.w);
        let x_960 : i32 = u_xlati44;
        let x_962 : i32 = u_xlati44;
        let x_965 : vec4<f32> = x_928.x_AdditionalLightsWorldToLights[(x_960 / 4i)][(x_962 % 4i)];
        let x_967 : vec3<f32> = vs_TEXCOORD1;
        let x_970 : vec4<f32> = u_xlat9;
        let x_972 : vec3<f32> = ((vec3<f32>(x_965.x, x_965.y, x_965.w) * vec3<f32>(x_967.x, x_967.x, x_967.x)) + vec3<f32>(x_970.x, x_970.y, x_970.z));
        let x_973 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_972.x, x_972.y, x_972.z, x_973.w);
        let x_975 : i32 = u_xlati44;
        let x_978 : i32 = u_xlati44;
        let x_982 : vec4<f32> = x_928.x_AdditionalLightsWorldToLights[((x_975 + 2i) / 4i)][((x_978 + 2i) % 4i)];
        let x_984 : vec3<f32> = vs_TEXCOORD1;
        let x_987 : vec4<f32> = u_xlat9;
        let x_989 : vec3<f32> = ((vec3<f32>(x_982.x, x_982.y, x_982.w) * vec3<f32>(x_984.z, x_984.z, x_984.z)) + vec3<f32>(x_987.x, x_987.y, x_987.z));
        let x_990 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_989.x, x_989.y, x_989.z, x_990.w);
        let x_992 : vec4<f32> = u_xlat9;
        let x_994 : i32 = u_xlati44;
        let x_997 : i32 = u_xlati44;
        let x_1001 : vec4<f32> = x_928.x_AdditionalLightsWorldToLights[((x_994 + 3i) / 4i)][((x_997 + 3i) % 4i)];
        let x_1003 : vec3<f32> = (vec3<f32>(x_992.x, x_992.y, x_992.z) + vec3<f32>(x_1001.x, x_1001.y, x_1001.w));
        let x_1004 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1003.x, x_1003.y, x_1003.z, x_1004.w);
        let x_1006 : vec4<f32> = u_xlat9;
        let x_1008 : vec4<f32> = u_xlat9;
        let x_1010 : vec2<f32> = (vec2<f32>(x_1006.x, x_1006.y) / vec2<f32>(x_1008.z, x_1008.z));
        let x_1011 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1010.x, x_1010.y, x_1011.z, x_1011.w);
        let x_1013 : vec4<f32> = u_xlat9;
        let x_1016 : vec2<f32> = ((vec2<f32>(x_1013.x, x_1013.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1017 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1016.x, x_1016.y, x_1017.z, x_1017.w);
        let x_1019 : vec4<f32> = u_xlat9;
        let x_1023 : vec2<f32> = clamp(vec2<f32>(x_1019.x, x_1019.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1024 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1023.x, x_1023.y, x_1024.z, x_1024.w);
        let x_1026 : u32 = u_xlatu41;
        let x_1029 : vec4<f32> = x_928.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1026)];
        let x_1031 : vec4<f32> = u_xlat9;
        let x_1034 : u32 = u_xlatu41;
        let x_1037 : vec4<f32> = x_928.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1034)];
        let x_1039 : vec2<f32> = ((vec2<f32>(x_1029.x, x_1029.y) * vec2<f32>(x_1031.x, x_1031.y)) + vec2<f32>(x_1037.z, x_1037.w));
        let x_1040 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1039.x, x_1039.y, x_1040.z, x_1040.w);
      } else {
        let x_1044 : i32 = u_xlati42;
        u_xlatb42 = (x_1044 == 1i);
        let x_1046 : bool = u_xlatb42;
        u_xlati42 = select(0i, 1i, x_1046);
        let x_1048 : i32 = u_xlati42;
        if ((x_1048 != 0i)) {
          let x_1054 : vec3<f32> = vs_TEXCOORD1;
          let x_1056 : i32 = u_xlati44;
          let x_1059 : i32 = u_xlati44;
          let x_1063 : vec4<f32> = x_928.x_AdditionalLightsWorldToLights[((x_1056 + 1i) / 4i)][((x_1059 + 1i) % 4i)];
          u_xlat33 = (vec2<f32>(x_1054.y, x_1054.y) * vec2<f32>(x_1063.x, x_1063.y));
          let x_1066 : i32 = u_xlati44;
          let x_1068 : i32 = u_xlati44;
          let x_1071 : vec4<f32> = x_928.x_AdditionalLightsWorldToLights[(x_1066 / 4i)][(x_1068 % 4i)];
          let x_1073 : vec3<f32> = vs_TEXCOORD1;
          let x_1076 : vec2<f32> = u_xlat33;
          u_xlat33 = ((vec2<f32>(x_1071.x, x_1071.y) * vec2<f32>(x_1073.x, x_1073.x)) + x_1076);
          let x_1078 : i32 = u_xlati44;
          let x_1081 : i32 = u_xlati44;
          let x_1085 : vec4<f32> = x_928.x_AdditionalLightsWorldToLights[((x_1078 + 2i) / 4i)][((x_1081 + 2i) % 4i)];
          let x_1087 : vec3<f32> = vs_TEXCOORD1;
          let x_1090 : vec2<f32> = u_xlat33;
          u_xlat33 = ((vec2<f32>(x_1085.x, x_1085.y) * vec2<f32>(x_1087.z, x_1087.z)) + x_1090);
          let x_1092 : vec2<f32> = u_xlat33;
          let x_1093 : i32 = u_xlati44;
          let x_1096 : i32 = u_xlati44;
          let x_1100 : vec4<f32> = x_928.x_AdditionalLightsWorldToLights[((x_1093 + 3i) / 4i)][((x_1096 + 3i) % 4i)];
          u_xlat33 = (x_1092 + vec2<f32>(x_1100.x, x_1100.y));
          let x_1103 : vec2<f32> = u_xlat33;
          u_xlat33 = ((x_1103 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1106 : vec2<f32> = u_xlat33;
          u_xlat33 = fract(x_1106);
          let x_1108 : u32 = u_xlatu41;
          let x_1111 : vec4<f32> = x_928.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1108)];
          let x_1113 : vec2<f32> = u_xlat33;
          let x_1115 : u32 = u_xlatu41;
          let x_1118 : vec4<f32> = x_928.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1115)];
          let x_1120 : vec2<f32> = ((vec2<f32>(x_1111.x, x_1111.y) * x_1113) + vec2<f32>(x_1118.z, x_1118.w));
          let x_1121 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1120.x, x_1120.y, x_1121.z, x_1121.w);
        } else {
          let x_1125 : vec3<f32> = vs_TEXCOORD1;
          let x_1127 : i32 = u_xlati44;
          let x_1130 : i32 = u_xlati44;
          let x_1134 : vec4<f32> = x_928.x_AdditionalLightsWorldToLights[((x_1127 + 1i) / 4i)][((x_1130 + 1i) % 4i)];
          u_xlat10 = (vec4<f32>(x_1125.y, x_1125.y, x_1125.y, x_1125.y) * x_1134);
          let x_1136 : i32 = u_xlati44;
          let x_1138 : i32 = u_xlati44;
          let x_1141 : vec4<f32> = x_928.x_AdditionalLightsWorldToLights[(x_1136 / 4i)][(x_1138 % 4i)];
          let x_1142 : vec3<f32> = vs_TEXCOORD1;
          let x_1145 : vec4<f32> = u_xlat10;
          u_xlat10 = ((x_1141 * vec4<f32>(x_1142.x, x_1142.x, x_1142.x, x_1142.x)) + x_1145);
          let x_1147 : i32 = u_xlati44;
          let x_1150 : i32 = u_xlati44;
          let x_1154 : vec4<f32> = x_928.x_AdditionalLightsWorldToLights[((x_1147 + 2i) / 4i)][((x_1150 + 2i) % 4i)];
          let x_1155 : vec3<f32> = vs_TEXCOORD1;
          let x_1158 : vec4<f32> = u_xlat10;
          u_xlat10 = ((x_1154 * vec4<f32>(x_1155.z, x_1155.z, x_1155.z, x_1155.z)) + x_1158);
          let x_1160 : vec4<f32> = u_xlat10;
          let x_1161 : i32 = u_xlati44;
          let x_1164 : i32 = u_xlati44;
          let x_1168 : vec4<f32> = x_928.x_AdditionalLightsWorldToLights[((x_1161 + 3i) / 4i)][((x_1164 + 3i) % 4i)];
          u_xlat10 = (x_1160 + x_1168);
          let x_1170 : vec4<f32> = u_xlat10;
          let x_1172 : vec4<f32> = u_xlat10;
          let x_1174 : vec3<f32> = (vec3<f32>(x_1170.x, x_1170.y, x_1170.z) / vec3<f32>(x_1172.w, x_1172.w, x_1172.w));
          let x_1175 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_1174.x, x_1174.y, x_1174.z, x_1175.w);
          let x_1177 : vec4<f32> = u_xlat10;
          let x_1179 : vec4<f32> = u_xlat10;
          u_xlat42 = dot(vec3<f32>(x_1177.x, x_1177.y, x_1177.z), vec3<f32>(x_1179.x, x_1179.y, x_1179.z));
          let x_1182 : f32 = u_xlat42;
          u_xlat42 = inverseSqrt(x_1182);
          let x_1184 : f32 = u_xlat42;
          let x_1186 : vec4<f32> = u_xlat10;
          let x_1188 : vec3<f32> = (vec3<f32>(x_1184, x_1184, x_1184) * vec3<f32>(x_1186.x, x_1186.y, x_1186.z));
          let x_1189 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_1188.x, x_1188.y, x_1188.z, x_1189.w);
          let x_1191 : vec4<f32> = u_xlat10;
          u_xlat42 = dot(abs(vec3<f32>(x_1191.x, x_1191.y, x_1191.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1196 : f32 = u_xlat42;
          u_xlat42 = max(x_1196, 0.000001f);
          let x_1199 : f32 = u_xlat42;
          u_xlat42 = (1.0f / x_1199);
          let x_1202 : f32 = u_xlat42;
          let x_1204 : vec4<f32> = u_xlat10;
          u_xlat11 = (vec3<f32>(x_1202, x_1202, x_1202) * vec3<f32>(x_1204.z, x_1204.x, x_1204.y));
          let x_1208 : f32 = u_xlat11.x;
          u_xlat11.x = -(x_1208);
          let x_1212 : f32 = u_xlat11.x;
          u_xlat11.x = clamp(x_1212, 0.0f, 1.0f);
          let x_1216 : vec3<f32> = u_xlat11;
          let x_1219 : vec4<bool> = (vec4<f32>(x_1216.y, x_1216.z, x_1216.y, x_1216.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb33 = vec2<bool>(x_1219.x, x_1219.y);
          let x_1222 : bool = u_xlatb33.x;
          if (x_1222) {
            let x_1227 : f32 = u_xlat11.x;
            x_1223 = x_1227;
          } else {
            let x_1230 : f32 = u_xlat11.x;
            x_1223 = -(x_1230);
          }
          let x_1232 : f32 = x_1223;
          u_xlat33.x = x_1232;
          let x_1235 : bool = u_xlatb33.y;
          if (x_1235) {
            let x_1240 : f32 = u_xlat11.x;
            x_1236 = x_1240;
          } else {
            let x_1243 : f32 = u_xlat11.x;
            x_1236 = -(x_1243);
          }
          let x_1245 : f32 = x_1236;
          u_xlat33.y = x_1245;
          let x_1247 : vec4<f32> = u_xlat10;
          let x_1249 : f32 = u_xlat42;
          let x_1252 : vec2<f32> = u_xlat33;
          u_xlat33 = ((vec2<f32>(x_1247.x, x_1247.y) * vec2<f32>(x_1249, x_1249)) + x_1252);
          let x_1254 : vec2<f32> = u_xlat33;
          u_xlat33 = ((x_1254 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1257 : vec2<f32> = u_xlat33;
          u_xlat33 = clamp(x_1257, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1261 : u32 = u_xlatu41;
          let x_1264 : vec4<f32> = x_928.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1261)];
          let x_1266 : vec2<f32> = u_xlat33;
          let x_1268 : u32 = u_xlatu41;
          let x_1271 : vec4<f32> = x_928.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1268)];
          let x_1273 : vec2<f32> = ((vec2<f32>(x_1264.x, x_1264.y) * x_1266) + vec2<f32>(x_1271.z, x_1271.w));
          let x_1274 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1273.x, x_1273.y, x_1274.z, x_1274.w);
        }
      }
      let x_1281 : vec4<f32> = u_xlat9;
      let x_1284 : f32 = x_44.x_GlobalMipBias.x;
      let x_1285 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1281.x, x_1281.y), x_1284);
      u_xlat9 = x_1285;
      let x_1287 : bool = u_xlatb6.y;
      if (x_1287) {
        let x_1292 : f32 = u_xlat9.w;
        x_1288 = x_1292;
      } else {
        let x_1295 : f32 = u_xlat9.x;
        x_1288 = x_1295;
      }
      let x_1296 : f32 = x_1288;
      u_xlat42 = x_1296;
      let x_1298 : bool = u_xlatb6.x;
      if (x_1298) {
        let x_1302 : vec4<f32> = u_xlat9;
        x_1299 = vec3<f32>(x_1302.x, x_1302.y, x_1302.z);
      } else {
        let x_1305 : f32 = u_xlat42;
        x_1299 = vec3<f32>(x_1305, x_1305, x_1305);
      }
      let x_1307 : vec3<f32> = x_1299;
      let x_1308 : vec4<f32> = u_xlat9;
      u_xlat9 = vec4<f32>(x_1307.x, x_1307.y, x_1307.z, x_1308.w);
    } else {
      u_xlat9.x = 1.0f;
      u_xlat9.y = 1.0f;
      u_xlat9.z = 1.0f;
    }
    let x_1314 : vec4<f32> = u_xlat9;
    let x_1316 : u32 = u_xlatu41;
    let x_1319 : vec4<f32> = x_826.x_AdditionalLightsColor[bitcast<i32>(x_1316)];
    let x_1321 : vec3<f32> = (vec3<f32>(x_1314.x, x_1314.y, x_1314.z) * vec3<f32>(x_1319.x, x_1319.y, x_1319.z));
    let x_1322 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1321.x, x_1321.y, x_1321.z, x_1322.w);
    let x_1324 : f32 = u_xlat38;
    let x_1326 : vec4<f32> = u_xlat9;
    let x_1328 : vec3<f32> = (vec3<f32>(x_1324, x_1324, x_1324) * vec3<f32>(x_1326.x, x_1326.y, x_1326.z));
    let x_1329 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1328.x, x_1328.y, x_1328.z, x_1329.w);
    let x_1331 : f32 = u_xlat30;
    let x_1333 : vec4<f32> = u_xlat9;
    let x_1335 : vec3<f32> = (vec3<f32>(x_1331, x_1331, x_1331) * vec3<f32>(x_1333.x, x_1333.y, x_1333.z));
    let x_1336 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1335.x, x_1335.y, x_1335.z, x_1336.w);
    let x_1338 : vec3<f32> = u_xlat2;
    let x_1339 : vec3<f32> = u_xlat8;
    u_xlat41 = dot(x_1338, x_1339);
    let x_1341 : f32 = u_xlat41;
    u_xlat41 = clamp(x_1341, 0.0f, 1.0f);
    let x_1343 : f32 = u_xlat41;
    let x_1345 : vec4<f32> = u_xlat9;
    let x_1347 : vec3<f32> = (vec3<f32>(x_1343, x_1343, x_1343) * vec3<f32>(x_1345.x, x_1345.y, x_1345.z));
    let x_1348 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1347.x, x_1347.y, x_1347.z, x_1348.w);
    let x_1350 : vec3<f32> = u_xlat3;
    let x_1351 : vec3<f32> = u_xlat12;
    let x_1354 : vec3<f32> = u_xlat8;
    u_xlat8 = ((x_1350 * vec3<f32>(x_1351.x, x_1351.x, x_1351.x)) + x_1354);
    let x_1356 : vec3<f32> = u_xlat8;
    let x_1357 : vec3<f32> = u_xlat8;
    u_xlat41 = dot(x_1356, x_1357);
    let x_1359 : f32 = u_xlat41;
    u_xlat41 = max(x_1359, 1.17549435e-37f);
    let x_1361 : f32 = u_xlat41;
    u_xlat41 = inverseSqrt(x_1361);
    let x_1363 : f32 = u_xlat41;
    let x_1365 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_1363, x_1363, x_1363) * x_1365);
    let x_1367 : vec3<f32> = u_xlat2;
    let x_1368 : vec3<f32> = u_xlat8;
    u_xlat41 = dot(x_1367, x_1368);
    let x_1370 : f32 = u_xlat41;
    u_xlat41 = clamp(x_1370, 0.0f, 1.0f);
    let x_1372 : f32 = u_xlat41;
    u_xlat41 = log2(x_1372);
    let x_1375 : f32 = u_xlat1.x;
    let x_1376 : f32 = u_xlat41;
    u_xlat41 = (x_1375 * x_1376);
    let x_1378 : f32 = u_xlat41;
    u_xlat41 = exp2(x_1378);
    let x_1380 : f32 = u_xlat41;
    let x_1383 : vec4<f32> = x_57.x_SpecColor;
    u_xlat8 = (vec3<f32>(x_1380, x_1380, x_1380) * vec3<f32>(x_1383.x, x_1383.y, x_1383.z));
    let x_1386 : vec3<f32> = u_xlat8;
    let x_1387 : vec4<f32> = u_xlat9;
    u_xlat8 = (x_1386 * vec3<f32>(x_1387.x, x_1387.y, x_1387.z));
    let x_1390 : vec4<f32> = u_xlat10;
    let x_1392 : vec4<f32> = u_xlat1;
    let x_1395 : vec3<f32> = u_xlat8;
    u_xlat8 = ((vec3<f32>(x_1390.x, x_1390.y, x_1390.z) * vec3<f32>(x_1392.y, x_1392.z, x_1392.w)) + x_1395);
    let x_1397 : vec3<f32> = u_xlat7;
    let x_1398 : vec3<f32> = u_xlat8;
    u_xlat7 = (x_1397 + x_1398);

    continuing {
      let x_1400 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1400 + bitcast<u32>(1i));
    }
  }
  let x_1402 : vec4<f32> = u_xlat4;
  let x_1404 : vec4<f32> = u_xlat1;
  let x_1407 : vec4<f32> = u_xlat5;
  let x_1409 : vec3<f32> = ((vec3<f32>(x_1402.x, x_1402.y, x_1402.z) * vec3<f32>(x_1404.y, x_1404.z, x_1404.w)) + vec3<f32>(x_1407.x, x_1407.y, x_1407.z));
  let x_1410 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1409.x, x_1409.y, x_1409.z, x_1410.w);
  let x_1412 : vec3<f32> = u_xlat7;
  let x_1413 : vec4<f32> = u_xlat1;
  let x_1415 : vec3<f32> = (x_1412 + vec3<f32>(x_1413.x, x_1413.y, x_1413.z));
  let x_1416 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1415.x, x_1415.y, x_1415.z, x_1416.w);
  let x_1418 : f32 = u_xlat36;
  let x_1419 : f32 = u_xlat36;
  u_xlat12.x = (x_1418 * -(x_1419));
  let x_1424 : f32 = u_xlat12.x;
  u_xlat12.x = exp2(x_1424);
  let x_1427 : vec4<f32> = u_xlat1;
  let x_1431 : vec4<f32> = x_44.unity_FogColor;
  let x_1434 : vec3<f32> = (vec3<f32>(x_1427.x, x_1427.y, x_1427.z) + -(vec3<f32>(x_1431.x, x_1431.y, x_1431.z)));
  let x_1435 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1434.x, x_1434.y, x_1434.z, x_1435.w);
  let x_1439 : vec3<f32> = u_xlat12;
  let x_1441 : vec4<f32> = u_xlat1;
  let x_1445 : vec4<f32> = x_44.unity_FogColor;
  let x_1447 : vec3<f32> = ((vec3<f32>(x_1439.x, x_1439.x, x_1439.x) * vec3<f32>(x_1441.x, x_1441.y, x_1441.z)) + vec3<f32>(x_1445.x, x_1445.y, x_1445.z));
  let x_1448 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1447.x, x_1447.y, x_1447.z, x_1448.w);
  let x_1451 : f32 = x_57.x_Surface;
  u_xlatb12 = (x_1451 == 1.0f);
  let x_1453 : bool = u_xlatb12;
  let x_1454 : bool = u_xlatb24;
  u_xlatb12 = (x_1453 | x_1454);
  let x_1456 : bool = u_xlatb12;
  if (x_1456) {
    let x_1461 : f32 = u_xlat0.x;
    x_1457 = x_1461;
  } else {
    x_1457 = 1.0f;
  }
  let x_1463 : f32 = x_1457;
  SV_Target0.w = x_1463;
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

