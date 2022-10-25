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

@group(0) @binding(6) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

@group(0) @binding(1) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(7) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_330 : UnityPerDraw;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_492 : MainLightShadows;

@group(1) @binding(5) var<uniform> x_554 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(1) var<uniform> x_861 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_963 : AdditionalLightsCookies;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat38 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat39 : f32;
  var u_xlat40 : f32;
  var u_xlatb40 : bool;
  var u_xlatb5 : bool;
  var u_xlatb6 : vec2<bool>;
  var x_639 : f32;
  var x_650 : vec3<f32>;
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
  var x_1258 : f32;
  var x_1271 : f32;
  var x_1323 : f32;
  var x_1334 : vec3<f32>;
  var x_1493 : f32;
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
  let x_213 : vec3<f32> = u_xlat12;
  let x_216 : vec4<f32> = vs_TEXCOORD4;
  let x_218 : vec3<f32> = (vec3<f32>(x_213.z, x_213.z, x_213.z) * vec3<f32>(x_216.x, x_216.y, x_216.z));
  let x_219 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_218.x, x_218.y, x_218.z, x_219.w);
  let x_221 : vec3<f32> = u_xlat12;
  let x_224 : vec4<f32> = vs_TEXCOORD3;
  let x_227 : vec4<f32> = u_xlat2;
  let x_229 : vec3<f32> = ((vec3<f32>(x_221.x, x_221.x, x_221.x) * vec3<f32>(x_224.x, x_224.y, x_224.z)) + vec3<f32>(x_227.x, x_227.y, x_227.z));
  let x_230 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_229.x, x_229.y, x_229.z, x_230.w);
  let x_232 : vec4<f32> = u_xlat1;
  let x_235 : vec4<f32> = vs_TEXCOORD2;
  let x_238 : vec4<f32> = u_xlat2;
  let x_240 : vec3<f32> = ((vec3<f32>(x_232.x, x_232.x, x_232.x) * vec3<f32>(x_235.x, x_235.y, x_235.z)) + vec3<f32>(x_238.x, x_238.y, x_238.z));
  let x_241 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_240.x, x_240.y, x_240.z, x_241.w);
  let x_243 : vec4<f32> = u_xlat2;
  let x_245 : vec4<f32> = u_xlat2;
  u_xlat12.x = dot(vec3<f32>(x_243.x, x_243.y, x_243.z), vec3<f32>(x_245.x, x_245.y, x_245.z));
  let x_250 : f32 = u_xlat12.x;
  u_xlat12.x = inverseSqrt(x_250);
  let x_253 : vec3<f32> = u_xlat12;
  let x_255 : vec4<f32> = u_xlat2;
  let x_257 : vec3<f32> = (vec3<f32>(x_253.x, x_253.x, x_253.x) * vec3<f32>(x_255.x, x_255.y, x_255.z));
  let x_258 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_257.x, x_257.y, x_257.z, x_258.w);
  let x_262 : f32 = vs_TEXCOORD2.w;
  u_xlat3.x = x_262;
  let x_265 : f32 = vs_TEXCOORD3.w;
  u_xlat3.y = x_265;
  let x_269 : f32 = vs_TEXCOORD4.w;
  u_xlat3.z = x_269;
  let x_271 : vec3<f32> = u_xlat3;
  let x_272 : vec3<f32> = u_xlat3;
  u_xlat12.x = dot(x_271, x_272);
  let x_276 : f32 = u_xlat12.x;
  u_xlat12.x = max(x_276, 1.17549435e-37f);
  let x_281 : f32 = u_xlat12.x;
  u_xlat12.x = inverseSqrt(x_281);
  let x_287 : f32 = vs_TEXCOORD1.y;
  let x_290 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat36 = (x_287 * x_290);
  let x_293 : f32 = x_44.unity_MatrixV[0i].z;
  let x_295 : f32 = vs_TEXCOORD1.x;
  let x_297 : f32 = u_xlat36;
  u_xlat36 = ((x_293 * x_295) + x_297);
  let x_300 : f32 = x_44.unity_MatrixV[2i].z;
  let x_302 : f32 = vs_TEXCOORD1.z;
  let x_304 : f32 = u_xlat36;
  u_xlat36 = ((x_300 * x_302) + x_304);
  let x_306 : f32 = u_xlat36;
  let x_309 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat36 = (x_306 + x_309);
  let x_311 : f32 = u_xlat36;
  let x_315 : f32 = x_44.x_ProjectionParams.y;
  u_xlat36 = (-(x_311) + -(x_315));
  let x_318 : f32 = u_xlat36;
  u_xlat36 = max(x_318, 0.0f);
  let x_320 : f32 = u_xlat36;
  let x_323 : f32 = x_44.unity_FogParams.x;
  u_xlat36 = (x_320 * x_323);
  u_xlat2.w = 1.0f;
  let x_333 : vec4<f32> = x_330.unity_SHAr;
  let x_334 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_333, x_334);
  let x_339 : vec4<f32> = x_330.unity_SHAg;
  let x_340 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_339, x_340);
  let x_345 : vec4<f32> = x_330.unity_SHAb;
  let x_346 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_345, x_346);
  let x_350 : vec4<f32> = u_xlat2;
  let x_352 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_350.y, x_350.z, x_350.z, x_350.x) * vec4<f32>(x_352.x, x_352.y, x_352.z, x_352.z));
  let x_358 : vec4<f32> = x_330.unity_SHBr;
  let x_359 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_358, x_359);
  let x_364 : vec4<f32> = x_330.unity_SHBg;
  let x_365 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_364, x_365);
  let x_370 : vec4<f32> = x_330.unity_SHBb;
  let x_371 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_370, x_371);
  let x_375 : f32 = u_xlat2.y;
  let x_377 : f32 = u_xlat2.y;
  u_xlat1.x = (x_375 * x_377);
  let x_381 : f32 = u_xlat2.x;
  let x_383 : f32 = u_xlat2.x;
  let x_386 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_381 * x_383) + -(x_386));
  let x_392 : vec4<f32> = x_330.unity_SHC;
  let x_394 : vec4<f32> = u_xlat1;
  let x_397 : vec3<f32> = u_xlat6;
  let x_398 : vec3<f32> = ((vec3<f32>(x_392.x, x_392.y, x_392.z) * vec3<f32>(x_394.x, x_394.x, x_394.x)) + x_397);
  let x_399 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_398.x, x_398.y, x_398.z, x_399.w);
  let x_401 : vec3<f32> = u_xlat4;
  let x_402 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_401 + vec3<f32>(x_402.x, x_402.y, x_402.z));
  let x_405 : vec3<f32> = u_xlat4;
  u_xlat4 = max(x_405, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_410 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_411 : vec2<f32> = vec2<f32>(x_410.x, x_410.y);
  let x_415 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_411.x, x_411.y));
  let x_416 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_415.x, x_415.y, x_416.z, x_416.w);
  let x_418 : vec4<f32> = u_xlat5;
  let x_420 : vec4<f32> = hlslcc_FragCoord;
  let x_422 : vec2<f32> = (vec2<f32>(x_418.x, x_418.y) * vec2<f32>(x_420.x, x_420.y));
  let x_423 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_422.x, x_422.y, x_423.z, x_423.w);
  let x_426 : f32 = u_xlat5.y;
  let x_429 : f32 = x_44.x_ScaleBiasRt.x;
  let x_432 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat1.x = ((x_426 * x_429) + x_432);
  let x_436 : f32 = u_xlat1.x;
  u_xlat5.z = (-(x_436) + 1.0f);
  let x_445 : vec4<f32> = u_xlat5;
  let x_448 : f32 = x_44.x_GlobalMipBias.x;
  let x_449 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_445.x, x_445.z), x_448);
  u_xlat1.x = x_449.x;
  let x_454 : f32 = u_xlat1.x;
  u_xlat38 = (x_454 + -1.0f);
  let x_458 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_459 : f32 = u_xlat38;
  u_xlat38 = ((x_458 * x_459) + 1.0f);
  let x_463 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_463, 1.0f);
  let x_468 : vec4<f32> = vs_TEXCOORD6;
  let x_469 : vec2<f32> = vec2<f32>(x_468.x, x_468.y);
  let x_471 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_469.x, x_469.y, x_471);
  let x_484 : vec3<f32> = txVec0;
  let x_486 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_484.xy, x_484.z);
  u_xlat39 = x_486;
  let x_494 : f32 = x_492.x_MainLightShadowParams.x;
  u_xlat40 = (-(x_494) + 1.0f);
  let x_497 : f32 = u_xlat39;
  let x_499 : f32 = x_492.x_MainLightShadowParams.x;
  let x_501 : f32 = u_xlat40;
  u_xlat39 = ((x_497 * x_499) + x_501);
  let x_505 : f32 = vs_TEXCOORD6.z;
  u_xlatb40 = (0.0f >= x_505);
  let x_509 : f32 = vs_TEXCOORD6.z;
  u_xlatb5 = (x_509 >= 1.0f);
  let x_511 : bool = u_xlatb40;
  let x_512 : bool = u_xlatb5;
  u_xlatb40 = (x_511 | x_512);
  let x_514 : bool = u_xlatb40;
  let x_515 : f32 = u_xlat39;
  u_xlat39 = select(x_515, 1.0f, x_514);
  let x_517 : vec3<f32> = vs_TEXCOORD1;
  let x_521 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_523 : vec3<f32> = (x_517 + -(x_521));
  let x_524 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_523.x, x_523.y, x_523.z, x_524.w);
  let x_526 : vec4<f32> = u_xlat5;
  let x_528 : vec4<f32> = u_xlat5;
  u_xlat40 = dot(vec3<f32>(x_526.x, x_526.y, x_526.z), vec3<f32>(x_528.x, x_528.y, x_528.z));
  let x_531 : f32 = u_xlat40;
  let x_533 : f32 = x_492.x_MainLightShadowParams.z;
  let x_536 : f32 = x_492.x_MainLightShadowParams.w;
  u_xlat40 = ((x_531 * x_533) + x_536);
  let x_538 : f32 = u_xlat40;
  u_xlat40 = clamp(x_538, 0.0f, 1.0f);
  let x_540 : f32 = u_xlat39;
  u_xlat5.x = (-(x_540) + 1.0f);
  let x_544 : f32 = u_xlat40;
  let x_546 : f32 = u_xlat5.x;
  let x_548 : f32 = u_xlat39;
  u_xlat39 = ((x_544 * x_546) + x_548);
  let x_556 : f32 = x_554.x_MainLightCookieTextureFormat;
  u_xlatb40 = !((x_556 == -1.0f));
  let x_558 : bool = u_xlatb40;
  if (x_558) {
    let x_561 : vec3<f32> = vs_TEXCOORD1;
    let x_564 : vec4<f32> = x_554.x_MainLightWorldToLight[1i];
    let x_566 : vec2<f32> = (vec2<f32>(x_561.y, x_561.y) * vec2<f32>(x_564.x, x_564.y));
    let x_567 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_566.x, x_566.y, x_567.z, x_567.w);
    let x_570 : vec4<f32> = x_554.x_MainLightWorldToLight[0i];
    let x_572 : vec3<f32> = vs_TEXCOORD1;
    let x_575 : vec4<f32> = u_xlat5;
    let x_577 : vec2<f32> = ((vec2<f32>(x_570.x, x_570.y) * vec2<f32>(x_572.x, x_572.x)) + vec2<f32>(x_575.x, x_575.y));
    let x_578 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_577.x, x_577.y, x_578.z, x_578.w);
    let x_581 : vec4<f32> = x_554.x_MainLightWorldToLight[2i];
    let x_583 : vec3<f32> = vs_TEXCOORD1;
    let x_586 : vec4<f32> = u_xlat5;
    let x_588 : vec2<f32> = ((vec2<f32>(x_581.x, x_581.y) * vec2<f32>(x_583.z, x_583.z)) + vec2<f32>(x_586.x, x_586.y));
    let x_589 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_588.x, x_588.y, x_589.z, x_589.w);
    let x_591 : vec4<f32> = u_xlat5;
    let x_594 : vec4<f32> = x_554.x_MainLightWorldToLight[3i];
    let x_596 : vec2<f32> = (vec2<f32>(x_591.x, x_591.y) + vec2<f32>(x_594.x, x_594.y));
    let x_597 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_596.x, x_596.y, x_597.z, x_597.w);
    let x_599 : vec4<f32> = u_xlat5;
    let x_603 : vec2<f32> = ((vec2<f32>(x_599.x, x_599.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_604 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_603.x, x_603.y, x_604.z, x_604.w);
    let x_611 : vec4<f32> = u_xlat5;
    let x_614 : f32 = x_44.x_GlobalMipBias.x;
    let x_615 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_611.x, x_611.y), x_614);
    u_xlat5 = x_615;
    let x_620 : f32 = x_554.x_MainLightCookieTextureFormat;
    let x_622 : f32 = x_554.x_MainLightCookieTextureFormat;
    let x_624 : f32 = x_554.x_MainLightCookieTextureFormat;
    let x_626 : f32 = x_554.x_MainLightCookieTextureFormat;
    let x_627 : vec4<f32> = vec4<f32>(x_620, x_622, x_624, x_626);
    let x_635 : vec4<bool> = (vec4<f32>(x_627.x, x_627.y, x_627.z, x_627.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb6 = vec2<bool>(x_635.x, x_635.y);
    let x_638 : bool = u_xlatb6.y;
    if (x_638) {
      let x_643 : f32 = u_xlat5.w;
      x_639 = x_643;
    } else {
      let x_646 : f32 = u_xlat5.x;
      x_639 = x_646;
    }
    let x_647 : f32 = x_639;
    u_xlat40 = x_647;
    let x_649 : bool = u_xlatb6.x;
    if (x_649) {
      let x_653 : vec4<f32> = u_xlat5;
      x_650 = vec3<f32>(x_653.x, x_653.y, x_653.z);
    } else {
      let x_656 : f32 = u_xlat40;
      x_650 = vec3<f32>(x_656, x_656, x_656);
    }
    let x_658 : vec3<f32> = x_650;
    let x_659 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_658.x, x_658.y, x_658.z, x_659.w);
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
  }
  let x_665 : vec4<f32> = u_xlat5;
  let x_668 : vec4<f32> = x_44.x_MainLightColor;
  let x_670 : vec3<f32> = (vec3<f32>(x_665.x, x_665.y, x_665.z) * vec3<f32>(x_668.x, x_668.y, x_668.z));
  let x_671 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_670.x, x_670.y, x_670.z, x_671.w);
  let x_673 : f32 = u_xlat38;
  let x_675 : vec4<f32> = u_xlat5;
  let x_677 : vec3<f32> = (vec3<f32>(x_673, x_673, x_673) * vec3<f32>(x_675.x, x_675.y, x_675.z));
  let x_678 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_677.x, x_677.y, x_677.z, x_678.w);
  let x_680 : vec4<f32> = u_xlat1;
  let x_682 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_680.x, x_680.x, x_680.x) * x_682);
  let x_684 : f32 = u_xlat39;
  let x_686 : f32 = x_330.unity_LightData.z;
  u_xlat1.x = (x_684 * x_686);
  let x_689 : vec4<f32> = u_xlat1;
  let x_691 : vec4<f32> = u_xlat5;
  let x_693 : vec3<f32> = (vec3<f32>(x_689.x, x_689.x, x_689.x) * vec3<f32>(x_691.x, x_691.y, x_691.z));
  let x_694 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_693.x, x_693.y, x_693.z, x_694.w);
  let x_696 : vec4<f32> = u_xlat2;
  let x_699 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat1.x = dot(vec3<f32>(x_696.x, x_696.y, x_696.z), vec3<f32>(x_699.x, x_699.y, x_699.z));
  let x_704 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_704, 0.0f, 1.0f);
  let x_707 : vec4<f32> = u_xlat1;
  let x_709 : vec4<f32> = u_xlat5;
  u_xlat6 = (vec3<f32>(x_707.x, x_707.x, x_707.x) * vec3<f32>(x_709.x, x_709.y, x_709.z));
  let x_713 : f32 = x_57.x_SpecColor.w;
  u_xlat1.x = ((x_713 * 10.0f) + 1.0f);
  let x_719 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_719);
  let x_723 : vec3<f32> = u_xlat3;
  let x_724 : vec3<f32> = u_xlat12;
  let x_728 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat7 = ((x_723 * vec3<f32>(x_724.x, x_724.x, x_724.x)) + vec3<f32>(x_728.x, x_728.y, x_728.z));
  let x_731 : vec3<f32> = u_xlat7;
  let x_732 : vec3<f32> = u_xlat7;
  u_xlat39 = dot(x_731, x_732);
  let x_734 : f32 = u_xlat39;
  u_xlat39 = max(x_734, 1.17549435e-37f);
  let x_736 : f32 = u_xlat39;
  u_xlat39 = inverseSqrt(x_736);
  let x_738 : f32 = u_xlat39;
  let x_740 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_738, x_738, x_738) * x_740);
  let x_742 : vec4<f32> = u_xlat2;
  let x_744 : vec3<f32> = u_xlat7;
  u_xlat39 = dot(vec3<f32>(x_742.x, x_742.y, x_742.z), x_744);
  let x_746 : f32 = u_xlat39;
  u_xlat39 = clamp(x_746, 0.0f, 1.0f);
  let x_748 : f32 = u_xlat39;
  u_xlat39 = log2(x_748);
  let x_751 : f32 = u_xlat1.x;
  let x_752 : f32 = u_xlat39;
  u_xlat39 = (x_751 * x_752);
  let x_754 : f32 = u_xlat39;
  u_xlat39 = exp2(x_754);
  let x_756 : f32 = u_xlat39;
  let x_759 : vec4<f32> = x_57.x_SpecColor;
  u_xlat7 = (vec3<f32>(x_756, x_756, x_756) * vec3<f32>(x_759.x, x_759.y, x_759.z));
  let x_762 : vec4<f32> = u_xlat5;
  let x_764 : vec3<f32> = u_xlat7;
  let x_765 : vec3<f32> = (vec3<f32>(x_762.x, x_762.y, x_762.z) * x_764);
  let x_766 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_765.x, x_765.y, x_765.z, x_766.w);
  let x_768 : vec3<f32> = u_xlat6;
  let x_769 : vec4<f32> = u_xlat1;
  let x_772 : vec4<f32> = u_xlat5;
  let x_774 : vec3<f32> = ((x_768 * vec3<f32>(x_769.y, x_769.z, x_769.w)) + vec3<f32>(x_772.x, x_772.y, x_772.z));
  let x_775 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_774.x, x_774.y, x_774.z, x_775.w);
  let x_779 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_781 : f32 = x_330.unity_LightData.y;
  u_xlat39 = min(x_779, x_781);
  let x_785 : f32 = u_xlat39;
  u_xlatu39 = bitcast<u32>(i32(x_785));
  let x_789 : f32 = x_554.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_791 : f32 = x_554.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_793 : f32 = x_554.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_795 : f32 = x_554.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_796 : vec4<f32> = vec4<f32>(x_789, x_791, x_793, x_795);
  let x_802 : vec4<bool> = (vec4<f32>(x_796.x, x_796.y, x_796.z, x_796.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_802.x, x_802.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_813 : u32 = u_xlatu_loop_1;
    let x_814 : u32 = u_xlatu39;
    if ((x_813 < x_814)) {
    } else {
      break;
    }
    let x_817 : u32 = u_xlatu_loop_1;
    u_xlatu41 = (x_817 >> 2u);
    let x_821 : u32 = u_xlatu_loop_1;
    u_xlati30 = bitcast<i32>((x_821 & 3u));
    let x_825 : u32 = u_xlatu41;
    let x_828 : vec4<f32> = x_330.unity_LightIndices[bitcast<i32>(x_825)];
    let x_838 : i32 = u_xlati30;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_843 : vec4<u32> = indexable[x_838];
    u_xlat41 = dot(x_828, bitcast<vec4<f32>>(x_843));
    let x_846 : f32 = u_xlat41;
    u_xlatu41 = bitcast<u32>(i32(x_846));
    let x_850 : vec3<f32> = vs_TEXCOORD1;
    let x_862 : u32 = u_xlatu41;
    let x_865 : vec4<f32> = x_861.x_AdditionalLightsPosition[bitcast<i32>(x_862)];
    let x_868 : u32 = u_xlatu41;
    let x_871 : vec4<f32> = x_861.x_AdditionalLightsPosition[bitcast<i32>(x_868)];
    u_xlat8 = ((-(x_850) * vec3<f32>(x_865.w, x_865.w, x_865.w)) + vec3<f32>(x_871.x, x_871.y, x_871.z));
    let x_875 : vec3<f32> = u_xlat8;
    let x_876 : vec3<f32> = u_xlat8;
    u_xlat30 = dot(x_875, x_876);
    let x_878 : f32 = u_xlat30;
    u_xlat30 = max(x_878, 6.10351562e-05f);
    let x_882 : f32 = u_xlat30;
    u_xlat42 = inverseSqrt(x_882);
    let x_884 : f32 = u_xlat42;
    let x_886 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_884, x_884, x_884) * x_886);
    let x_888 : f32 = u_xlat30;
    u_xlat42 = (1.0f / x_888);
    let x_890 : f32 = u_xlat30;
    let x_891 : u32 = u_xlatu41;
    let x_894 : f32 = x_861.x_AdditionalLightsAttenuation[bitcast<i32>(x_891)].x;
    u_xlat30 = (x_890 * x_894);
    let x_896 : f32 = u_xlat30;
    let x_898 : f32 = u_xlat30;
    u_xlat30 = ((-(x_896) * x_898) + 1.0f);
    let x_901 : f32 = u_xlat30;
    u_xlat30 = max(x_901, 0.0f);
    let x_903 : f32 = u_xlat30;
    let x_904 : f32 = u_xlat30;
    u_xlat30 = (x_903 * x_904);
    let x_906 : f32 = u_xlat30;
    let x_907 : f32 = u_xlat42;
    u_xlat30 = (x_906 * x_907);
    let x_909 : u32 = u_xlatu41;
    let x_912 : vec4<f32> = x_861.x_AdditionalLightsSpotDir[bitcast<i32>(x_909)];
    let x_914 : vec3<f32> = u_xlat8;
    u_xlat42 = dot(vec3<f32>(x_912.x, x_912.y, x_912.z), x_914);
    let x_916 : f32 = u_xlat42;
    let x_917 : u32 = u_xlatu41;
    let x_920 : f32 = x_861.x_AdditionalLightsAttenuation[bitcast<i32>(x_917)].z;
    let x_922 : u32 = u_xlatu41;
    let x_925 : f32 = x_861.x_AdditionalLightsAttenuation[bitcast<i32>(x_922)].w;
    u_xlat42 = ((x_916 * x_920) + x_925);
    let x_927 : f32 = u_xlat42;
    u_xlat42 = clamp(x_927, 0.0f, 1.0f);
    let x_929 : f32 = u_xlat42;
    let x_930 : f32 = u_xlat42;
    u_xlat42 = (x_929 * x_930);
    let x_932 : f32 = u_xlat42;
    let x_933 : f32 = u_xlat30;
    u_xlat30 = (x_932 * x_933);
    let x_936 : u32 = u_xlatu41;
    u_xlatu42 = (x_936 >> 5u);
    let x_939 : u32 = u_xlatu41;
    u_xlati43 = (1i << bitcast<u32>((bitcast<i32>(x_939) & 31i)));
    let x_945 : i32 = u_xlati43;
    let x_947 : u32 = u_xlatu42;
    let x_950 : f32 = x_554.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_947)].el;
    u_xlati42 = bitcast<i32>((bitcast<u32>(x_945) & bitcast<u32>(x_950)));
    let x_954 : i32 = u_xlati42;
    if ((x_954 != 0i)) {
      let x_964 : u32 = u_xlatu41;
      let x_967 : f32 = x_963.x_AdditionalLightsLightTypes[bitcast<i32>(x_964)].el;
      u_xlati42 = i32(x_967);
      let x_969 : i32 = u_xlati42;
      u_xlati43 = select(1i, 0i, (x_969 != 0i));
      let x_973 : u32 = u_xlatu41;
      u_xlati44 = (bitcast<i32>(x_973) << bitcast<u32>(2i));
      let x_976 : i32 = u_xlati43;
      if ((x_976 != 0i)) {
        let x_981 : vec3<f32> = vs_TEXCOORD1;
        let x_983 : i32 = u_xlati44;
        let x_986 : i32 = u_xlati44;
        let x_990 : vec4<f32> = x_963.x_AdditionalLightsWorldToLights[((x_983 + 1i) / 4i)][((x_986 + 1i) % 4i)];
        let x_992 : vec3<f32> = (vec3<f32>(x_981.y, x_981.y, x_981.y) * vec3<f32>(x_990.x, x_990.y, x_990.w));
        let x_993 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_992.x, x_992.y, x_992.z, x_993.w);
        let x_995 : i32 = u_xlati44;
        let x_997 : i32 = u_xlati44;
        let x_1000 : vec4<f32> = x_963.x_AdditionalLightsWorldToLights[(x_995 / 4i)][(x_997 % 4i)];
        let x_1002 : vec3<f32> = vs_TEXCOORD1;
        let x_1005 : vec4<f32> = u_xlat9;
        let x_1007 : vec3<f32> = ((vec3<f32>(x_1000.x, x_1000.y, x_1000.w) * vec3<f32>(x_1002.x, x_1002.x, x_1002.x)) + vec3<f32>(x_1005.x, x_1005.y, x_1005.z));
        let x_1008 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1007.x, x_1007.y, x_1007.z, x_1008.w);
        let x_1010 : i32 = u_xlati44;
        let x_1013 : i32 = u_xlati44;
        let x_1017 : vec4<f32> = x_963.x_AdditionalLightsWorldToLights[((x_1010 + 2i) / 4i)][((x_1013 + 2i) % 4i)];
        let x_1019 : vec3<f32> = vs_TEXCOORD1;
        let x_1022 : vec4<f32> = u_xlat9;
        let x_1024 : vec3<f32> = ((vec3<f32>(x_1017.x, x_1017.y, x_1017.w) * vec3<f32>(x_1019.z, x_1019.z, x_1019.z)) + vec3<f32>(x_1022.x, x_1022.y, x_1022.z));
        let x_1025 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1024.x, x_1024.y, x_1024.z, x_1025.w);
        let x_1027 : vec4<f32> = u_xlat9;
        let x_1029 : i32 = u_xlati44;
        let x_1032 : i32 = u_xlati44;
        let x_1036 : vec4<f32> = x_963.x_AdditionalLightsWorldToLights[((x_1029 + 3i) / 4i)][((x_1032 + 3i) % 4i)];
        let x_1038 : vec3<f32> = (vec3<f32>(x_1027.x, x_1027.y, x_1027.z) + vec3<f32>(x_1036.x, x_1036.y, x_1036.w));
        let x_1039 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1038.x, x_1038.y, x_1038.z, x_1039.w);
        let x_1041 : vec4<f32> = u_xlat9;
        let x_1043 : vec4<f32> = u_xlat9;
        let x_1045 : vec2<f32> = (vec2<f32>(x_1041.x, x_1041.y) / vec2<f32>(x_1043.z, x_1043.z));
        let x_1046 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1045.x, x_1045.y, x_1046.z, x_1046.w);
        let x_1048 : vec4<f32> = u_xlat9;
        let x_1051 : vec2<f32> = ((vec2<f32>(x_1048.x, x_1048.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1052 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1051.x, x_1051.y, x_1052.z, x_1052.w);
        let x_1054 : vec4<f32> = u_xlat9;
        let x_1058 : vec2<f32> = clamp(vec2<f32>(x_1054.x, x_1054.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1059 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1058.x, x_1058.y, x_1059.z, x_1059.w);
        let x_1061 : u32 = u_xlatu41;
        let x_1064 : vec4<f32> = x_963.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1061)];
        let x_1066 : vec4<f32> = u_xlat9;
        let x_1069 : u32 = u_xlatu41;
        let x_1072 : vec4<f32> = x_963.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1069)];
        let x_1074 : vec2<f32> = ((vec2<f32>(x_1064.x, x_1064.y) * vec2<f32>(x_1066.x, x_1066.y)) + vec2<f32>(x_1072.z, x_1072.w));
        let x_1075 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1074.x, x_1074.y, x_1075.z, x_1075.w);
      } else {
        let x_1079 : i32 = u_xlati42;
        u_xlatb42 = (x_1079 == 1i);
        let x_1081 : bool = u_xlatb42;
        u_xlati42 = select(0i, 1i, x_1081);
        let x_1083 : i32 = u_xlati42;
        if ((x_1083 != 0i)) {
          let x_1089 : vec3<f32> = vs_TEXCOORD1;
          let x_1091 : i32 = u_xlati44;
          let x_1094 : i32 = u_xlati44;
          let x_1098 : vec4<f32> = x_963.x_AdditionalLightsWorldToLights[((x_1091 + 1i) / 4i)][((x_1094 + 1i) % 4i)];
          u_xlat33 = (vec2<f32>(x_1089.y, x_1089.y) * vec2<f32>(x_1098.x, x_1098.y));
          let x_1101 : i32 = u_xlati44;
          let x_1103 : i32 = u_xlati44;
          let x_1106 : vec4<f32> = x_963.x_AdditionalLightsWorldToLights[(x_1101 / 4i)][(x_1103 % 4i)];
          let x_1108 : vec3<f32> = vs_TEXCOORD1;
          let x_1111 : vec2<f32> = u_xlat33;
          u_xlat33 = ((vec2<f32>(x_1106.x, x_1106.y) * vec2<f32>(x_1108.x, x_1108.x)) + x_1111);
          let x_1113 : i32 = u_xlati44;
          let x_1116 : i32 = u_xlati44;
          let x_1120 : vec4<f32> = x_963.x_AdditionalLightsWorldToLights[((x_1113 + 2i) / 4i)][((x_1116 + 2i) % 4i)];
          let x_1122 : vec3<f32> = vs_TEXCOORD1;
          let x_1125 : vec2<f32> = u_xlat33;
          u_xlat33 = ((vec2<f32>(x_1120.x, x_1120.y) * vec2<f32>(x_1122.z, x_1122.z)) + x_1125);
          let x_1127 : vec2<f32> = u_xlat33;
          let x_1128 : i32 = u_xlati44;
          let x_1131 : i32 = u_xlati44;
          let x_1135 : vec4<f32> = x_963.x_AdditionalLightsWorldToLights[((x_1128 + 3i) / 4i)][((x_1131 + 3i) % 4i)];
          u_xlat33 = (x_1127 + vec2<f32>(x_1135.x, x_1135.y));
          let x_1138 : vec2<f32> = u_xlat33;
          u_xlat33 = ((x_1138 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1141 : vec2<f32> = u_xlat33;
          u_xlat33 = fract(x_1141);
          let x_1143 : u32 = u_xlatu41;
          let x_1146 : vec4<f32> = x_963.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1143)];
          let x_1148 : vec2<f32> = u_xlat33;
          let x_1150 : u32 = u_xlatu41;
          let x_1153 : vec4<f32> = x_963.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1150)];
          let x_1155 : vec2<f32> = ((vec2<f32>(x_1146.x, x_1146.y) * x_1148) + vec2<f32>(x_1153.z, x_1153.w));
          let x_1156 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1155.x, x_1155.y, x_1156.z, x_1156.w);
        } else {
          let x_1160 : vec3<f32> = vs_TEXCOORD1;
          let x_1162 : i32 = u_xlati44;
          let x_1165 : i32 = u_xlati44;
          let x_1169 : vec4<f32> = x_963.x_AdditionalLightsWorldToLights[((x_1162 + 1i) / 4i)][((x_1165 + 1i) % 4i)];
          u_xlat10 = (vec4<f32>(x_1160.y, x_1160.y, x_1160.y, x_1160.y) * x_1169);
          let x_1171 : i32 = u_xlati44;
          let x_1173 : i32 = u_xlati44;
          let x_1176 : vec4<f32> = x_963.x_AdditionalLightsWorldToLights[(x_1171 / 4i)][(x_1173 % 4i)];
          let x_1177 : vec3<f32> = vs_TEXCOORD1;
          let x_1180 : vec4<f32> = u_xlat10;
          u_xlat10 = ((x_1176 * vec4<f32>(x_1177.x, x_1177.x, x_1177.x, x_1177.x)) + x_1180);
          let x_1182 : i32 = u_xlati44;
          let x_1185 : i32 = u_xlati44;
          let x_1189 : vec4<f32> = x_963.x_AdditionalLightsWorldToLights[((x_1182 + 2i) / 4i)][((x_1185 + 2i) % 4i)];
          let x_1190 : vec3<f32> = vs_TEXCOORD1;
          let x_1193 : vec4<f32> = u_xlat10;
          u_xlat10 = ((x_1189 * vec4<f32>(x_1190.z, x_1190.z, x_1190.z, x_1190.z)) + x_1193);
          let x_1195 : vec4<f32> = u_xlat10;
          let x_1196 : i32 = u_xlati44;
          let x_1199 : i32 = u_xlati44;
          let x_1203 : vec4<f32> = x_963.x_AdditionalLightsWorldToLights[((x_1196 + 3i) / 4i)][((x_1199 + 3i) % 4i)];
          u_xlat10 = (x_1195 + x_1203);
          let x_1205 : vec4<f32> = u_xlat10;
          let x_1207 : vec4<f32> = u_xlat10;
          let x_1209 : vec3<f32> = (vec3<f32>(x_1205.x, x_1205.y, x_1205.z) / vec3<f32>(x_1207.w, x_1207.w, x_1207.w));
          let x_1210 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_1209.x, x_1209.y, x_1209.z, x_1210.w);
          let x_1212 : vec4<f32> = u_xlat10;
          let x_1214 : vec4<f32> = u_xlat10;
          u_xlat42 = dot(vec3<f32>(x_1212.x, x_1212.y, x_1212.z), vec3<f32>(x_1214.x, x_1214.y, x_1214.z));
          let x_1217 : f32 = u_xlat42;
          u_xlat42 = inverseSqrt(x_1217);
          let x_1219 : f32 = u_xlat42;
          let x_1221 : vec4<f32> = u_xlat10;
          let x_1223 : vec3<f32> = (vec3<f32>(x_1219, x_1219, x_1219) * vec3<f32>(x_1221.x, x_1221.y, x_1221.z));
          let x_1224 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_1223.x, x_1223.y, x_1223.z, x_1224.w);
          let x_1226 : vec4<f32> = u_xlat10;
          u_xlat42 = dot(abs(vec3<f32>(x_1226.x, x_1226.y, x_1226.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1231 : f32 = u_xlat42;
          u_xlat42 = max(x_1231, 0.000001f);
          let x_1234 : f32 = u_xlat42;
          u_xlat42 = (1.0f / x_1234);
          let x_1237 : f32 = u_xlat42;
          let x_1239 : vec4<f32> = u_xlat10;
          u_xlat11 = (vec3<f32>(x_1237, x_1237, x_1237) * vec3<f32>(x_1239.z, x_1239.x, x_1239.y));
          let x_1243 : f32 = u_xlat11.x;
          u_xlat11.x = -(x_1243);
          let x_1247 : f32 = u_xlat11.x;
          u_xlat11.x = clamp(x_1247, 0.0f, 1.0f);
          let x_1251 : vec3<f32> = u_xlat11;
          let x_1254 : vec4<bool> = (vec4<f32>(x_1251.y, x_1251.z, x_1251.y, x_1251.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb33 = vec2<bool>(x_1254.x, x_1254.y);
          let x_1257 : bool = u_xlatb33.x;
          if (x_1257) {
            let x_1262 : f32 = u_xlat11.x;
            x_1258 = x_1262;
          } else {
            let x_1265 : f32 = u_xlat11.x;
            x_1258 = -(x_1265);
          }
          let x_1267 : f32 = x_1258;
          u_xlat33.x = x_1267;
          let x_1270 : bool = u_xlatb33.y;
          if (x_1270) {
            let x_1275 : f32 = u_xlat11.x;
            x_1271 = x_1275;
          } else {
            let x_1278 : f32 = u_xlat11.x;
            x_1271 = -(x_1278);
          }
          let x_1280 : f32 = x_1271;
          u_xlat33.y = x_1280;
          let x_1282 : vec4<f32> = u_xlat10;
          let x_1284 : f32 = u_xlat42;
          let x_1287 : vec2<f32> = u_xlat33;
          u_xlat33 = ((vec2<f32>(x_1282.x, x_1282.y) * vec2<f32>(x_1284, x_1284)) + x_1287);
          let x_1289 : vec2<f32> = u_xlat33;
          u_xlat33 = ((x_1289 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1292 : vec2<f32> = u_xlat33;
          u_xlat33 = clamp(x_1292, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1296 : u32 = u_xlatu41;
          let x_1299 : vec4<f32> = x_963.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1296)];
          let x_1301 : vec2<f32> = u_xlat33;
          let x_1303 : u32 = u_xlatu41;
          let x_1306 : vec4<f32> = x_963.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1303)];
          let x_1308 : vec2<f32> = ((vec2<f32>(x_1299.x, x_1299.y) * x_1301) + vec2<f32>(x_1306.z, x_1306.w));
          let x_1309 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1308.x, x_1308.y, x_1309.z, x_1309.w);
        }
      }
      let x_1316 : vec4<f32> = u_xlat9;
      let x_1319 : f32 = x_44.x_GlobalMipBias.x;
      let x_1320 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1316.x, x_1316.y), x_1319);
      u_xlat9 = x_1320;
      let x_1322 : bool = u_xlatb6.y;
      if (x_1322) {
        let x_1327 : f32 = u_xlat9.w;
        x_1323 = x_1327;
      } else {
        let x_1330 : f32 = u_xlat9.x;
        x_1323 = x_1330;
      }
      let x_1331 : f32 = x_1323;
      u_xlat42 = x_1331;
      let x_1333 : bool = u_xlatb6.x;
      if (x_1333) {
        let x_1337 : vec4<f32> = u_xlat9;
        x_1334 = vec3<f32>(x_1337.x, x_1337.y, x_1337.z);
      } else {
        let x_1340 : f32 = u_xlat42;
        x_1334 = vec3<f32>(x_1340, x_1340, x_1340);
      }
      let x_1342 : vec3<f32> = x_1334;
      let x_1343 : vec4<f32> = u_xlat9;
      u_xlat9 = vec4<f32>(x_1342.x, x_1342.y, x_1342.z, x_1343.w);
    } else {
      u_xlat9.x = 1.0f;
      u_xlat9.y = 1.0f;
      u_xlat9.z = 1.0f;
    }
    let x_1349 : vec4<f32> = u_xlat9;
    let x_1351 : u32 = u_xlatu41;
    let x_1354 : vec4<f32> = x_861.x_AdditionalLightsColor[bitcast<i32>(x_1351)];
    let x_1356 : vec3<f32> = (vec3<f32>(x_1349.x, x_1349.y, x_1349.z) * vec3<f32>(x_1354.x, x_1354.y, x_1354.z));
    let x_1357 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1356.x, x_1356.y, x_1356.z, x_1357.w);
    let x_1359 : f32 = u_xlat38;
    let x_1361 : vec4<f32> = u_xlat9;
    let x_1363 : vec3<f32> = (vec3<f32>(x_1359, x_1359, x_1359) * vec3<f32>(x_1361.x, x_1361.y, x_1361.z));
    let x_1364 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1363.x, x_1363.y, x_1363.z, x_1364.w);
    let x_1366 : f32 = u_xlat30;
    let x_1368 : vec4<f32> = u_xlat9;
    let x_1370 : vec3<f32> = (vec3<f32>(x_1366, x_1366, x_1366) * vec3<f32>(x_1368.x, x_1368.y, x_1368.z));
    let x_1371 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1370.x, x_1370.y, x_1370.z, x_1371.w);
    let x_1373 : vec4<f32> = u_xlat2;
    let x_1375 : vec3<f32> = u_xlat8;
    u_xlat41 = dot(vec3<f32>(x_1373.x, x_1373.y, x_1373.z), x_1375);
    let x_1377 : f32 = u_xlat41;
    u_xlat41 = clamp(x_1377, 0.0f, 1.0f);
    let x_1379 : f32 = u_xlat41;
    let x_1381 : vec4<f32> = u_xlat9;
    let x_1383 : vec3<f32> = (vec3<f32>(x_1379, x_1379, x_1379) * vec3<f32>(x_1381.x, x_1381.y, x_1381.z));
    let x_1384 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1383.x, x_1383.y, x_1383.z, x_1384.w);
    let x_1386 : vec3<f32> = u_xlat3;
    let x_1387 : vec3<f32> = u_xlat12;
    let x_1390 : vec3<f32> = u_xlat8;
    u_xlat8 = ((x_1386 * vec3<f32>(x_1387.x, x_1387.x, x_1387.x)) + x_1390);
    let x_1392 : vec3<f32> = u_xlat8;
    let x_1393 : vec3<f32> = u_xlat8;
    u_xlat41 = dot(x_1392, x_1393);
    let x_1395 : f32 = u_xlat41;
    u_xlat41 = max(x_1395, 1.17549435e-37f);
    let x_1397 : f32 = u_xlat41;
    u_xlat41 = inverseSqrt(x_1397);
    let x_1399 : f32 = u_xlat41;
    let x_1401 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_1399, x_1399, x_1399) * x_1401);
    let x_1403 : vec4<f32> = u_xlat2;
    let x_1405 : vec3<f32> = u_xlat8;
    u_xlat41 = dot(vec3<f32>(x_1403.x, x_1403.y, x_1403.z), x_1405);
    let x_1407 : f32 = u_xlat41;
    u_xlat41 = clamp(x_1407, 0.0f, 1.0f);
    let x_1409 : f32 = u_xlat41;
    u_xlat41 = log2(x_1409);
    let x_1412 : f32 = u_xlat1.x;
    let x_1413 : f32 = u_xlat41;
    u_xlat41 = (x_1412 * x_1413);
    let x_1415 : f32 = u_xlat41;
    u_xlat41 = exp2(x_1415);
    let x_1417 : f32 = u_xlat41;
    let x_1420 : vec4<f32> = x_57.x_SpecColor;
    u_xlat8 = (vec3<f32>(x_1417, x_1417, x_1417) * vec3<f32>(x_1420.x, x_1420.y, x_1420.z));
    let x_1423 : vec3<f32> = u_xlat8;
    let x_1424 : vec4<f32> = u_xlat9;
    u_xlat8 = (x_1423 * vec3<f32>(x_1424.x, x_1424.y, x_1424.z));
    let x_1427 : vec4<f32> = u_xlat10;
    let x_1429 : vec4<f32> = u_xlat1;
    let x_1432 : vec3<f32> = u_xlat8;
    u_xlat8 = ((vec3<f32>(x_1427.x, x_1427.y, x_1427.z) * vec3<f32>(x_1429.y, x_1429.z, x_1429.w)) + x_1432);
    let x_1434 : vec3<f32> = u_xlat7;
    let x_1435 : vec3<f32> = u_xlat8;
    u_xlat7 = (x_1434 + x_1435);

    continuing {
      let x_1437 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1437 + bitcast<u32>(1i));
    }
  }
  let x_1439 : vec3<f32> = u_xlat4;
  let x_1440 : vec4<f32> = u_xlat1;
  let x_1443 : vec4<f32> = u_xlat5;
  let x_1445 : vec3<f32> = ((x_1439 * vec3<f32>(x_1440.y, x_1440.z, x_1440.w)) + vec3<f32>(x_1443.x, x_1443.y, x_1443.z));
  let x_1446 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1445.x, x_1445.y, x_1445.z, x_1446.w);
  let x_1448 : vec3<f32> = u_xlat7;
  let x_1449 : vec4<f32> = u_xlat1;
  let x_1451 : vec3<f32> = (x_1448 + vec3<f32>(x_1449.x, x_1449.y, x_1449.z));
  let x_1452 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1451.x, x_1451.y, x_1451.z, x_1452.w);
  let x_1454 : f32 = u_xlat36;
  let x_1455 : f32 = u_xlat36;
  u_xlat12.x = (x_1454 * -(x_1455));
  let x_1460 : f32 = u_xlat12.x;
  u_xlat12.x = exp2(x_1460);
  let x_1463 : vec4<f32> = u_xlat1;
  let x_1467 : vec4<f32> = x_44.unity_FogColor;
  let x_1470 : vec3<f32> = (vec3<f32>(x_1463.x, x_1463.y, x_1463.z) + -(vec3<f32>(x_1467.x, x_1467.y, x_1467.z)));
  let x_1471 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1470.x, x_1470.y, x_1470.z, x_1471.w);
  let x_1475 : vec3<f32> = u_xlat12;
  let x_1477 : vec4<f32> = u_xlat1;
  let x_1481 : vec4<f32> = x_44.unity_FogColor;
  let x_1483 : vec3<f32> = ((vec3<f32>(x_1475.x, x_1475.x, x_1475.x) * vec3<f32>(x_1477.x, x_1477.y, x_1477.z)) + vec3<f32>(x_1481.x, x_1481.y, x_1481.z));
  let x_1484 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1483.x, x_1483.y, x_1483.z, x_1484.w);
  let x_1487 : f32 = x_57.x_Surface;
  u_xlatb12 = (x_1487 == 1.0f);
  let x_1489 : bool = u_xlatb12;
  let x_1490 : bool = u_xlatb24;
  u_xlatb12 = (x_1489 | x_1490);
  let x_1492 : bool = u_xlatb12;
  if (x_1492) {
    let x_1497 : f32 = u_xlat0.x;
    x_1493 = x_1497;
  } else {
    x_1493 = 1.0f;
  }
  let x_1499 : f32 = x_1493;
  SV_Target0.w = x_1499;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(5) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}

