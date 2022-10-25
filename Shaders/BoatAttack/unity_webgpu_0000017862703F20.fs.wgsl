struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  @size(8)
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

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(2) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MetallicTex : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_135 : UnityPerDraw;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(3) var<uniform> x_367 : MainLightShadows;

@group(1) @binding(4) var<uniform> x_456 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainLightCookieTexture : sampler;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_942 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1046 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat15 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat29 : vec2<f32>;
  var u_xlat43 : f32;
  var u_xlat44 : f32;
  var u_xlat42 : f32;
  var u_xlat45 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat18 : vec3<f32>;
  var u_xlat32 : vec2<f32>;
  var u_xlatb32 : vec2<bool>;
  var u_xlatb46 : bool;
  var x_402 : f32;
  var u_xlat6 : vec4<f32>;
  var u_xlat46 : f32;
  var x_526 : f32;
  var x_537 : vec3<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlatu42 : u32;
  var u_xlatb6 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu47 : u32;
  var u_xlati34 : i32;
  var u_xlat47 : f32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat34 : f32;
  var u_xlat48 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlat49 : f32;
  var u_xlatu49 : u32;
  var u_xlati50 : i32;
  var u_xlati49 : i32;
  var u_xlati51 : i32;
  var u_xlat11 : vec4<f32>;
  var u_xlatb49 : bool;
  var u_xlat39 : vec2<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb39 : vec2<bool>;
  var x_1340 : f32;
  var x_1353 : f32;
  var x_1405 : f32;
  var x_1416 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_39 : vec4<f32> = vs_TEXCOORD0;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_39.x, x_39.y), x_50);
  u_xlat0 = x_51;
  let x_59 : vec4<f32> = vs_TEXCOORD0;
  let x_62 : f32 = x_44.x_GlobalMipBias.x;
  let x_63 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_59.x, x_59.y), x_62);
  u_xlat1.x = x_63.x;
  let x_69 : vec4<f32> = vs_TEXCOORD3;
  let x_71 : vec4<f32> = vs_TEXCOORD3;
  u_xlat15 = dot(vec3<f32>(x_69.x, x_69.y, x_69.z), vec3<f32>(x_71.x, x_71.y, x_71.z));
  let x_74 : f32 = u_xlat15;
  u_xlat15 = inverseSqrt(x_74);
  let x_77 : f32 = u_xlat15;
  let x_79 : vec4<f32> = vs_TEXCOORD3;
  let x_81 : vec3<f32> = (vec3<f32>(x_77, x_77, x_77) * vec3<f32>(x_79.x, x_79.y, x_79.z));
  let x_82 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_81.x, x_81.y, x_81.z, x_82.w);
  let x_88 : f32 = vs_TEXCOORD7.y;
  let x_92 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat15 = (x_88 * x_92);
  let x_96 : f32 = x_44.unity_MatrixV[0i].z;
  let x_98 : f32 = vs_TEXCOORD7.x;
  let x_100 : f32 = u_xlat15;
  u_xlat15 = ((x_96 * x_98) + x_100);
  let x_104 : f32 = x_44.unity_MatrixV[2i].z;
  let x_106 : f32 = vs_TEXCOORD7.z;
  let x_108 : f32 = u_xlat15;
  u_xlat15 = ((x_104 * x_106) + x_108);
  let x_110 : f32 = u_xlat15;
  let x_113 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat15 = (x_110 + x_113);
  let x_115 : f32 = u_xlat15;
  let x_119 : f32 = x_44.x_ProjectionParams.y;
  u_xlat15 = (-(x_115) + -(x_119));
  let x_122 : f32 = u_xlat15;
  u_xlat15 = max(x_122, 0.0f);
  let x_125 : f32 = u_xlat15;
  let x_128 : f32 = x_44.unity_FogParams.x;
  u_xlat15 = (x_125 * x_128);
  u_xlat2.w = 1.0f;
  let x_139 : vec4<f32> = x_135.unity_SHAr;
  let x_140 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_139, x_140);
  let x_145 : vec4<f32> = x_135.unity_SHAg;
  let x_146 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_145, x_146);
  let x_151 : vec4<f32> = x_135.unity_SHAb;
  let x_152 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_151, x_152);
  let x_156 : vec4<f32> = u_xlat2;
  let x_158 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_156.y, x_156.z, x_156.z, x_156.x) * vec4<f32>(x_158.x, x_158.y, x_158.z, x_158.z));
  let x_164 : vec4<f32> = x_135.unity_SHBr;
  let x_165 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_164, x_165);
  let x_170 : vec4<f32> = x_135.unity_SHBg;
  let x_171 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_170, x_171);
  let x_176 : vec4<f32> = x_135.unity_SHBb;
  let x_177 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_176, x_177);
  let x_183 : f32 = u_xlat2.y;
  let x_185 : f32 = u_xlat2.y;
  u_xlat29.x = (x_183 * x_185);
  let x_189 : f32 = u_xlat2.x;
  let x_191 : f32 = u_xlat2.x;
  let x_194 : f32 = u_xlat29.x;
  u_xlat29.x = ((x_189 * x_191) + -(x_194));
  let x_200 : vec4<f32> = x_135.unity_SHC;
  let x_202 : vec2<f32> = u_xlat29;
  let x_205 : vec3<f32> = u_xlat5;
  let x_206 : vec3<f32> = ((vec3<f32>(x_200.x, x_200.y, x_200.z) * vec3<f32>(x_202.x, x_202.x, x_202.x)) + x_205);
  let x_207 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_206.x, x_206.y, x_206.z, x_207.w);
  let x_209 : vec3<f32> = u_xlat3;
  let x_210 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_209 + vec3<f32>(x_210.x, x_210.y, x_210.z));
  let x_213 : vec3<f32> = u_xlat3;
  u_xlat3 = max(x_213, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_218 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_219 : vec2<f32> = vec2<f32>(x_218.x, x_218.y);
  u_xlat29 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_219.x, x_219.y));
  let x_224 : vec2<f32> = u_xlat29;
  let x_225 : vec4<f32> = hlslcc_FragCoord;
  let x_227 : vec2<f32> = (x_224 * vec2<f32>(x_225.x, x_225.y));
  let x_228 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_227.x, x_227.y, x_228.z, x_228.w);
  let x_231 : f32 = u_xlat4.y;
  let x_234 : f32 = x_44.x_ScaleBiasRt.x;
  let x_237 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat29.x = ((x_231 * x_234) + x_237);
  let x_241 : f32 = u_xlat29.x;
  u_xlat4.z = (-(x_241) + 1.0f);
  let x_246 : f32 = u_xlat1.x;
  u_xlat29.x = ((-(x_246) * 0.959999979f) + 0.959999979f);
  let x_254 : f32 = u_xlat29.x;
  u_xlat43 = (-(x_254) + 1.0f);
  let x_257 : vec4<f32> = u_xlat0;
  let x_259 : vec2<f32> = u_xlat29;
  u_xlat5 = (vec3<f32>(x_257.x, x_257.y, x_257.z) * vec3<f32>(x_259.x, x_259.x, x_259.x));
  let x_262 : vec4<f32> = u_xlat0;
  let x_266 : vec3<f32> = (vec3<f32>(x_262.x, x_262.y, x_262.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_267 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_266.x, x_266.y, x_266.z, x_267.w);
  let x_269 : vec3<f32> = u_xlat1;
  let x_271 : vec4<f32> = u_xlat0;
  let x_276 : vec3<f32> = ((vec3<f32>(x_269.x, x_269.x, x_269.x) * vec3<f32>(x_271.x, x_271.y, x_271.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_277 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_276.x, x_276.y, x_276.z, x_277.w);
  let x_280 : f32 = u_xlat0.w;
  u_xlat1.x = (-(x_280) + 1.0f);
  let x_285 : f32 = u_xlat1.x;
  let x_287 : f32 = u_xlat1.x;
  u_xlat29.x = (x_285 * x_287);
  let x_291 : f32 = u_xlat29.x;
  u_xlat29.x = max(x_291, 0.0078125f);
  let x_297 : f32 = u_xlat29.x;
  let x_299 : f32 = u_xlat29.x;
  u_xlat44 = (x_297 * x_299);
  let x_303 : f32 = u_xlat0.w;
  let x_304 : f32 = u_xlat43;
  u_xlat42 = (x_303 + x_304);
  let x_306 : f32 = u_xlat42;
  u_xlat42 = clamp(x_306, 0.0f, 1.0f);
  let x_309 : f32 = u_xlat29.x;
  u_xlat43 = ((x_309 * 4.0f) + 2.0f);
  let x_320 : vec4<f32> = u_xlat4;
  let x_323 : f32 = x_44.x_GlobalMipBias.x;
  let x_324 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_320.x, x_320.z), x_323);
  u_xlat45 = x_324.x;
  let x_326 : f32 = u_xlat45;
  u_xlat4.x = (x_326 + -1.0f);
  let x_332 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_334 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_332 * x_334) + 1.0f);
  let x_338 : f32 = u_xlat45;
  u_xlat45 = min(x_338, 1.0f);
  let x_342 : vec4<f32> = vs_TEXCOORD8;
  let x_343 : vec2<f32> = vec2<f32>(x_342.x, x_342.y);
  let x_345 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_343.x, x_343.y, x_345);
  let x_358 : vec3<f32> = txVec0;
  let x_360 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_358.xy, x_358.z);
  u_xlat18.x = x_360;
  let x_369 : f32 = x_367.x_MainLightShadowParams.x;
  u_xlat32.x = (-(x_369) + 1.0f);
  let x_374 : f32 = u_xlat18.x;
  let x_376 : f32 = x_367.x_MainLightShadowParams.x;
  let x_379 : f32 = u_xlat32.x;
  u_xlat18.x = ((x_374 * x_376) + x_379);
  let x_387 : f32 = vs_TEXCOORD8.z;
  u_xlatb32.x = (0.0f >= x_387);
  let x_393 : f32 = vs_TEXCOORD8.z;
  u_xlatb46 = (x_393 >= 1.0f);
  let x_395 : bool = u_xlatb46;
  let x_397 : bool = u_xlatb32.x;
  u_xlatb32.x = (x_395 | x_397);
  let x_401 : bool = u_xlatb32.x;
  if (x_401) {
    x_402 = 1.0f;
  } else {
    let x_407 : f32 = u_xlat18.x;
    x_402 = x_407;
  }
  let x_408 : f32 = x_402;
  u_xlat18.x = x_408;
  let x_411 : vec3<f32> = vs_TEXCOORD7;
  let x_415 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_417 : vec3<f32> = (x_411 + -(x_415));
  let x_418 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_417.x, x_417.y, x_417.z, x_418.w);
  let x_420 : vec4<f32> = u_xlat6;
  let x_422 : vec4<f32> = u_xlat6;
  u_xlat32.x = dot(vec3<f32>(x_420.x, x_420.y, x_420.z), vec3<f32>(x_422.x, x_422.y, x_422.z));
  let x_427 : f32 = u_xlat32.x;
  let x_429 : f32 = x_367.x_MainLightShadowParams.z;
  let x_432 : f32 = x_367.x_MainLightShadowParams.w;
  u_xlat32.x = ((x_427 * x_429) + x_432);
  let x_436 : f32 = u_xlat32.x;
  u_xlat32.x = clamp(x_436, 0.0f, 1.0f);
  let x_441 : f32 = u_xlat18.x;
  u_xlat46 = (-(x_441) + 1.0f);
  let x_445 : f32 = u_xlat32.x;
  let x_446 : f32 = u_xlat46;
  let x_449 : f32 = u_xlat18.x;
  u_xlat18.x = ((x_445 * x_446) + x_449);
  let x_458 : f32 = x_456.x_MainLightCookieTextureFormat;
  u_xlatb32.x = !((x_458 == -1.0f));
  let x_462 : bool = u_xlatb32.x;
  if (x_462) {
    let x_465 : vec3<f32> = vs_TEXCOORD7;
    let x_468 : vec4<f32> = x_456.x_MainLightWorldToLight[1i];
    u_xlat32 = (vec2<f32>(x_465.y, x_465.y) * vec2<f32>(x_468.x, x_468.y));
    let x_472 : vec4<f32> = x_456.x_MainLightWorldToLight[0i];
    let x_474 : vec3<f32> = vs_TEXCOORD7;
    let x_477 : vec2<f32> = u_xlat32;
    u_xlat32 = ((vec2<f32>(x_472.x, x_472.y) * vec2<f32>(x_474.x, x_474.x)) + x_477);
    let x_480 : vec4<f32> = x_456.x_MainLightWorldToLight[2i];
    let x_482 : vec3<f32> = vs_TEXCOORD7;
    let x_485 : vec2<f32> = u_xlat32;
    u_xlat32 = ((vec2<f32>(x_480.x, x_480.y) * vec2<f32>(x_482.z, x_482.z)) + x_485);
    let x_487 : vec2<f32> = u_xlat32;
    let x_489 : vec4<f32> = x_456.x_MainLightWorldToLight[3i];
    u_xlat32 = (x_487 + vec2<f32>(x_489.x, x_489.y));
    let x_492 : vec2<f32> = u_xlat32;
    u_xlat32 = ((x_492 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_502 : vec2<f32> = u_xlat32;
    let x_504 : f32 = x_44.x_GlobalMipBias.x;
    let x_505 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_502, x_504);
    u_xlat6 = x_505;
    let x_507 : f32 = x_456.x_MainLightCookieTextureFormat;
    let x_509 : f32 = x_456.x_MainLightCookieTextureFormat;
    let x_511 : f32 = x_456.x_MainLightCookieTextureFormat;
    let x_513 : f32 = x_456.x_MainLightCookieTextureFormat;
    let x_514 : vec4<f32> = vec4<f32>(x_507, x_509, x_511, x_513);
    let x_522 : vec4<bool> = (vec4<f32>(x_514.x, x_514.y, x_514.z, x_514.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb32 = vec2<bool>(x_522.x, x_522.y);
    let x_525 : bool = u_xlatb32.y;
    if (x_525) {
      let x_530 : f32 = u_xlat6.w;
      x_526 = x_530;
    } else {
      let x_533 : f32 = u_xlat6.x;
      x_526 = x_533;
    }
    let x_534 : f32 = x_526;
    u_xlat46 = x_534;
    let x_536 : bool = u_xlatb32.x;
    if (x_536) {
      let x_540 : vec4<f32> = u_xlat6;
      x_537 = vec3<f32>(x_540.x, x_540.y, x_540.z);
    } else {
      let x_543 : f32 = u_xlat46;
      x_537 = vec3<f32>(x_543, x_543, x_543);
    }
    let x_545 : vec3<f32> = x_537;
    let x_546 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_545.x, x_545.y, x_545.z, x_546.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_552 : vec4<f32> = u_xlat6;
  let x_555 : vec4<f32> = x_44.x_MainLightColor;
  let x_557 : vec3<f32> = (vec3<f32>(x_552.x, x_552.y, x_552.z) * vec3<f32>(x_555.x, x_555.y, x_555.z));
  let x_558 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_557.x, x_557.y, x_557.z, x_558.w);
  let x_560 : vec4<f32> = u_xlat4;
  let x_562 : vec4<f32> = u_xlat6;
  let x_564 : vec3<f32> = (vec3<f32>(x_560.x, x_560.x, x_560.x) * vec3<f32>(x_562.x, x_562.y, x_562.z));
  let x_565 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_564.x, x_564.y, x_564.z, x_565.w);
  let x_569 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_569;
  let x_573 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_573;
  let x_577 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_577;
  let x_579 : vec3<f32> = u_xlat7;
  let x_581 : vec4<f32> = u_xlat2;
  u_xlat32.x = dot(-(x_579), vec3<f32>(x_581.x, x_581.y, x_581.z));
  let x_586 : f32 = u_xlat32.x;
  let x_588 : f32 = u_xlat32.x;
  u_xlat32.x = (x_586 + x_588);
  let x_592 : vec4<f32> = u_xlat2;
  let x_594 : vec2<f32> = u_xlat32;
  let x_598 : vec3<f32> = u_xlat7;
  let x_600 : vec3<f32> = ((vec3<f32>(x_592.x, x_592.y, x_592.z) * -(vec3<f32>(x_594.x, x_594.x, x_594.x))) + -(x_598));
  let x_601 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_600.x, x_600.y, x_600.z, x_601.w);
  let x_603 : vec4<f32> = u_xlat2;
  let x_605 : vec3<f32> = u_xlat7;
  u_xlat32.x = dot(vec3<f32>(x_603.x, x_603.y, x_603.z), x_605);
  let x_609 : f32 = u_xlat32.x;
  u_xlat32.x = clamp(x_609, 0.0f, 1.0f);
  let x_613 : f32 = u_xlat32.x;
  u_xlat32.x = (-(x_613) + 1.0f);
  let x_618 : f32 = u_xlat32.x;
  let x_620 : f32 = u_xlat32.x;
  u_xlat32.x = (x_618 * x_620);
  let x_624 : f32 = u_xlat32.x;
  let x_626 : f32 = u_xlat32.x;
  u_xlat32.x = (x_624 * x_626);
  let x_630 : f32 = u_xlat1.x;
  u_xlat46 = ((-(x_630) * 0.699999988f) + 1.700000048f);
  let x_637 : f32 = u_xlat1.x;
  let x_638 : f32 = u_xlat46;
  u_xlat1.x = (x_637 * x_638);
  let x_642 : f32 = u_xlat1.x;
  u_xlat1.x = (x_642 * 6.0f);
  let x_654 : vec4<f32> = u_xlat8;
  let x_657 : f32 = u_xlat1.x;
  let x_658 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_654.x, x_654.y, x_654.z), x_657);
  u_xlat8 = x_658;
  let x_660 : f32 = u_xlat8.w;
  u_xlat1.x = (x_660 + -1.0f);
  let x_664 : f32 = x_135.unity_SpecCube0_HDR.w;
  let x_666 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_664 * x_666) + 1.0f);
  let x_671 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_671, 0.0f);
  let x_675 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_675);
  let x_679 : f32 = u_xlat1.x;
  let x_681 : f32 = x_135.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_679 * x_681);
  let x_685 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_685);
  let x_689 : f32 = u_xlat1.x;
  let x_691 : f32 = x_135.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_689 * x_691);
  let x_694 : vec4<f32> = u_xlat8;
  let x_696 : vec3<f32> = u_xlat1;
  let x_698 : vec3<f32> = (vec3<f32>(x_694.x, x_694.y, x_694.z) * vec3<f32>(x_696.x, x_696.x, x_696.x));
  let x_699 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_698.x, x_698.y, x_698.z, x_699.w);
  let x_701 : vec2<f32> = u_xlat29;
  let x_703 : vec2<f32> = u_xlat29;
  let x_707 : vec2<f32> = ((vec2<f32>(x_701.x, x_701.x) * vec2<f32>(x_703.x, x_703.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_708 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_707.x, x_708.y, x_707.y);
  let x_711 : f32 = u_xlat1.z;
  u_xlat29.x = (1.0f / x_711);
  let x_715 : vec4<f32> = u_xlat0;
  let x_718 : f32 = u_xlat42;
  u_xlat9 = (-(vec3<f32>(x_715.x, x_715.y, x_715.z)) + vec3<f32>(x_718, x_718, x_718));
  let x_721 : vec2<f32> = u_xlat32;
  let x_723 : vec3<f32> = u_xlat9;
  let x_725 : vec4<f32> = u_xlat0;
  u_xlat9 = ((vec3<f32>(x_721.x, x_721.x, x_721.x) * x_723) + vec3<f32>(x_725.x, x_725.y, x_725.z));
  let x_728 : vec2<f32> = u_xlat29;
  let x_730 : vec3<f32> = u_xlat9;
  u_xlat9 = (vec3<f32>(x_728.x, x_728.x, x_728.x) * x_730);
  let x_732 : vec4<f32> = u_xlat8;
  let x_734 : vec3<f32> = u_xlat9;
  let x_735 : vec3<f32> = (vec3<f32>(x_732.x, x_732.y, x_732.z) * x_734);
  let x_736 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_735.x, x_735.y, x_735.z, x_736.w);
  let x_738 : vec3<f32> = u_xlat3;
  let x_739 : vec3<f32> = u_xlat5;
  let x_741 : vec4<f32> = u_xlat8;
  u_xlat3 = ((x_738 * x_739) + vec3<f32>(x_741.x, x_741.y, x_741.z));
  let x_745 : f32 = u_xlat18.x;
  let x_748 : f32 = x_135.unity_LightData.z;
  u_xlat42 = (x_745 * x_748);
  let x_750 : vec4<f32> = u_xlat2;
  let x_753 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat29.x = dot(vec3<f32>(x_750.x, x_750.y, x_750.z), vec3<f32>(x_753.x, x_753.y, x_753.z));
  let x_758 : f32 = u_xlat29.x;
  u_xlat29.x = clamp(x_758, 0.0f, 1.0f);
  let x_761 : f32 = u_xlat42;
  let x_763 : f32 = u_xlat29.x;
  u_xlat42 = (x_761 * x_763);
  let x_765 : f32 = u_xlat42;
  let x_767 : vec4<f32> = u_xlat6;
  u_xlat18 = (vec3<f32>(x_765, x_765, x_765) * vec3<f32>(x_767.x, x_767.y, x_767.z));
  let x_770 : vec3<f32> = u_xlat7;
  let x_772 : vec4<f32> = x_44.x_MainLightPosition;
  let x_774 : vec3<f32> = (x_770 + vec3<f32>(x_772.x, x_772.y, x_772.z));
  let x_775 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_774.x, x_774.y, x_774.z, x_775.w);
  let x_777 : vec4<f32> = u_xlat6;
  let x_779 : vec4<f32> = u_xlat6;
  u_xlat42 = dot(vec3<f32>(x_777.x, x_777.y, x_777.z), vec3<f32>(x_779.x, x_779.y, x_779.z));
  let x_782 : f32 = u_xlat42;
  u_xlat42 = max(x_782, 1.17549435e-37f);
  let x_785 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_785);
  let x_787 : f32 = u_xlat42;
  let x_789 : vec4<f32> = u_xlat6;
  let x_791 : vec3<f32> = (vec3<f32>(x_787, x_787, x_787) * vec3<f32>(x_789.x, x_789.y, x_789.z));
  let x_792 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_791.x, x_791.y, x_791.z, x_792.w);
  let x_794 : vec4<f32> = u_xlat2;
  let x_796 : vec4<f32> = u_xlat6;
  u_xlat42 = dot(vec3<f32>(x_794.x, x_794.y, x_794.z), vec3<f32>(x_796.x, x_796.y, x_796.z));
  let x_799 : f32 = u_xlat42;
  u_xlat42 = clamp(x_799, 0.0f, 1.0f);
  let x_802 : vec4<f32> = x_44.x_MainLightPosition;
  let x_804 : vec4<f32> = u_xlat6;
  u_xlat29.x = dot(vec3<f32>(x_802.x, x_802.y, x_802.z), vec3<f32>(x_804.x, x_804.y, x_804.z));
  let x_809 : f32 = u_xlat29.x;
  u_xlat29.x = clamp(x_809, 0.0f, 1.0f);
  let x_812 : f32 = u_xlat42;
  let x_813 : f32 = u_xlat42;
  u_xlat42 = (x_812 * x_813);
  let x_815 : f32 = u_xlat42;
  let x_817 : f32 = u_xlat1.x;
  u_xlat42 = ((x_815 * x_817) + 1.000010014f);
  let x_822 : f32 = u_xlat29.x;
  let x_824 : f32 = u_xlat29.x;
  u_xlat29.x = (x_822 * x_824);
  let x_827 : f32 = u_xlat42;
  let x_828 : f32 = u_xlat42;
  u_xlat42 = (x_827 * x_828);
  let x_831 : f32 = u_xlat29.x;
  u_xlat29.x = max(x_831, 0.100000001f);
  let x_835 : f32 = u_xlat42;
  let x_837 : f32 = u_xlat29.x;
  u_xlat42 = (x_835 * x_837);
  let x_839 : f32 = u_xlat43;
  let x_840 : f32 = u_xlat42;
  u_xlat42 = (x_839 * x_840);
  let x_842 : f32 = u_xlat44;
  let x_843 : f32 = u_xlat42;
  u_xlat42 = (x_842 / x_843);
  let x_845 : vec4<f32> = u_xlat0;
  let x_847 : f32 = u_xlat42;
  let x_850 : vec3<f32> = u_xlat5;
  let x_851 : vec3<f32> = ((vec3<f32>(x_845.x, x_845.y, x_845.z) * vec3<f32>(x_847, x_847, x_847)) + x_850);
  let x_852 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_851.x, x_851.y, x_851.z, x_852.w);
  let x_854 : vec3<f32> = u_xlat18;
  let x_855 : vec4<f32> = u_xlat6;
  u_xlat18 = (x_854 * vec3<f32>(x_855.x, x_855.y, x_855.z));
  let x_859 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_861 : f32 = x_135.unity_LightData.y;
  u_xlat42 = min(x_859, x_861);
  let x_865 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_865));
  let x_870 : f32 = x_456.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_872 : f32 = x_456.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_874 : f32 = x_456.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_876 : f32 = x_456.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_877 : vec4<f32> = vec4<f32>(x_870, x_872, x_874, x_876);
  let x_884 : vec4<bool> = (vec4<f32>(x_877.x, x_877.y, x_877.z, x_877.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_884.x, x_884.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_895 : u32 = u_xlatu_loop_1;
    let x_896 : u32 = u_xlatu42;
    if ((x_895 < x_896)) {
    } else {
      break;
    }
    let x_899 : u32 = u_xlatu_loop_1;
    u_xlatu47 = (x_899 >> 2u);
    let x_903 : u32 = u_xlatu_loop_1;
    u_xlati34 = bitcast<i32>((x_903 & 3u));
    let x_907 : u32 = u_xlatu47;
    let x_910 : vec4<f32> = x_135.unity_LightIndices[bitcast<i32>(x_907)];
    let x_920 : i32 = u_xlati34;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_925 : vec4<u32> = indexable[x_920];
    u_xlat47 = dot(x_910, bitcast<vec4<f32>>(x_925));
    let x_928 : f32 = u_xlat47;
    u_xlatu47 = bitcast<u32>(i32(x_928));
    let x_931 : vec3<f32> = vs_TEXCOORD7;
    let x_943 : u32 = u_xlatu47;
    let x_946 : vec4<f32> = x_942.x_AdditionalLightsPosition[bitcast<i32>(x_943)];
    let x_949 : u32 = u_xlatu47;
    let x_952 : vec4<f32> = x_942.x_AdditionalLightsPosition[bitcast<i32>(x_949)];
    u_xlat9 = ((-(x_931) * vec3<f32>(x_946.w, x_946.w, x_946.w)) + vec3<f32>(x_952.x, x_952.y, x_952.z));
    let x_956 : vec3<f32> = u_xlat9;
    let x_957 : vec3<f32> = u_xlat9;
    u_xlat34 = dot(x_956, x_957);
    let x_959 : f32 = u_xlat34;
    u_xlat34 = max(x_959, 6.10351562e-05f);
    let x_963 : f32 = u_xlat34;
    u_xlat48 = inverseSqrt(x_963);
    let x_966 : f32 = u_xlat48;
    let x_968 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_966, x_966, x_966) * x_968);
    let x_971 : f32 = u_xlat34;
    u_xlat49 = (1.0f / x_971);
    let x_973 : f32 = u_xlat34;
    let x_974 : u32 = u_xlatu47;
    let x_977 : f32 = x_942.x_AdditionalLightsAttenuation[bitcast<i32>(x_974)].x;
    u_xlat34 = (x_973 * x_977);
    let x_979 : f32 = u_xlat34;
    let x_981 : f32 = u_xlat34;
    u_xlat34 = ((-(x_979) * x_981) + 1.0f);
    let x_984 : f32 = u_xlat34;
    u_xlat34 = max(x_984, 0.0f);
    let x_986 : f32 = u_xlat34;
    let x_987 : f32 = u_xlat34;
    u_xlat34 = (x_986 * x_987);
    let x_989 : f32 = u_xlat34;
    let x_990 : f32 = u_xlat49;
    u_xlat34 = (x_989 * x_990);
    let x_992 : u32 = u_xlatu47;
    let x_995 : vec4<f32> = x_942.x_AdditionalLightsSpotDir[bitcast<i32>(x_992)];
    let x_997 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_995.x, x_995.y, x_995.z), x_997);
    let x_999 : f32 = u_xlat49;
    let x_1000 : u32 = u_xlatu47;
    let x_1003 : f32 = x_942.x_AdditionalLightsAttenuation[bitcast<i32>(x_1000)].z;
    let x_1005 : u32 = u_xlatu47;
    let x_1008 : f32 = x_942.x_AdditionalLightsAttenuation[bitcast<i32>(x_1005)].w;
    u_xlat49 = ((x_999 * x_1003) + x_1008);
    let x_1010 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1010, 0.0f, 1.0f);
    let x_1012 : f32 = u_xlat49;
    let x_1013 : f32 = u_xlat49;
    u_xlat49 = (x_1012 * x_1013);
    let x_1015 : f32 = u_xlat34;
    let x_1016 : f32 = u_xlat49;
    u_xlat34 = (x_1015 * x_1016);
    let x_1019 : u32 = u_xlatu47;
    u_xlatu49 = (x_1019 >> 5u);
    let x_1022 : u32 = u_xlatu47;
    u_xlati50 = (1i << bitcast<u32>((bitcast<i32>(x_1022) & 31i)));
    let x_1028 : i32 = u_xlati50;
    let x_1030 : u32 = u_xlatu49;
    let x_1033 : f32 = x_456.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1030)].el;
    u_xlati49 = bitcast<i32>((bitcast<u32>(x_1028) & bitcast<u32>(x_1033)));
    let x_1037 : i32 = u_xlati49;
    if ((x_1037 != 0i)) {
      let x_1047 : u32 = u_xlatu47;
      let x_1050 : f32 = x_1046.x_AdditionalLightsLightTypes[bitcast<i32>(x_1047)].el;
      u_xlati49 = i32(x_1050);
      let x_1052 : i32 = u_xlati49;
      u_xlati50 = select(1i, 0i, (x_1052 != 0i));
      let x_1056 : u32 = u_xlatu47;
      u_xlati51 = (bitcast<i32>(x_1056) << bitcast<u32>(2i));
      let x_1059 : i32 = u_xlati50;
      if ((x_1059 != 0i)) {
        let x_1064 : vec3<f32> = vs_TEXCOORD7;
        let x_1066 : i32 = u_xlati51;
        let x_1069 : i32 = u_xlati51;
        let x_1073 : vec4<f32> = x_1046.x_AdditionalLightsWorldToLights[((x_1066 + 1i) / 4i)][((x_1069 + 1i) % 4i)];
        let x_1075 : vec3<f32> = (vec3<f32>(x_1064.y, x_1064.y, x_1064.y) * vec3<f32>(x_1073.x, x_1073.y, x_1073.w));
        let x_1076 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1075.x, x_1075.y, x_1075.z, x_1076.w);
        let x_1078 : i32 = u_xlati51;
        let x_1080 : i32 = u_xlati51;
        let x_1083 : vec4<f32> = x_1046.x_AdditionalLightsWorldToLights[(x_1078 / 4i)][(x_1080 % 4i)];
        let x_1085 : vec3<f32> = vs_TEXCOORD7;
        let x_1088 : vec4<f32> = u_xlat11;
        let x_1090 : vec3<f32> = ((vec3<f32>(x_1083.x, x_1083.y, x_1083.w) * vec3<f32>(x_1085.x, x_1085.x, x_1085.x)) + vec3<f32>(x_1088.x, x_1088.y, x_1088.z));
        let x_1091 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1090.x, x_1090.y, x_1090.z, x_1091.w);
        let x_1093 : i32 = u_xlati51;
        let x_1096 : i32 = u_xlati51;
        let x_1100 : vec4<f32> = x_1046.x_AdditionalLightsWorldToLights[((x_1093 + 2i) / 4i)][((x_1096 + 2i) % 4i)];
        let x_1102 : vec3<f32> = vs_TEXCOORD7;
        let x_1105 : vec4<f32> = u_xlat11;
        let x_1107 : vec3<f32> = ((vec3<f32>(x_1100.x, x_1100.y, x_1100.w) * vec3<f32>(x_1102.z, x_1102.z, x_1102.z)) + vec3<f32>(x_1105.x, x_1105.y, x_1105.z));
        let x_1108 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1107.x, x_1107.y, x_1107.z, x_1108.w);
        let x_1110 : vec4<f32> = u_xlat11;
        let x_1112 : i32 = u_xlati51;
        let x_1115 : i32 = u_xlati51;
        let x_1119 : vec4<f32> = x_1046.x_AdditionalLightsWorldToLights[((x_1112 + 3i) / 4i)][((x_1115 + 3i) % 4i)];
        let x_1121 : vec3<f32> = (vec3<f32>(x_1110.x, x_1110.y, x_1110.z) + vec3<f32>(x_1119.x, x_1119.y, x_1119.w));
        let x_1122 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1121.x, x_1121.y, x_1121.z, x_1122.w);
        let x_1124 : vec4<f32> = u_xlat11;
        let x_1126 : vec4<f32> = u_xlat11;
        let x_1128 : vec2<f32> = (vec2<f32>(x_1124.x, x_1124.y) / vec2<f32>(x_1126.z, x_1126.z));
        let x_1129 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1128.x, x_1128.y, x_1129.z, x_1129.w);
        let x_1131 : vec4<f32> = u_xlat11;
        let x_1134 : vec2<f32> = ((vec2<f32>(x_1131.x, x_1131.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1135 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1134.x, x_1134.y, x_1135.z, x_1135.w);
        let x_1137 : vec4<f32> = u_xlat11;
        let x_1141 : vec2<f32> = clamp(vec2<f32>(x_1137.x, x_1137.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1142 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1141.x, x_1141.y, x_1142.z, x_1142.w);
        let x_1144 : u32 = u_xlatu47;
        let x_1147 : vec4<f32> = x_1046.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1144)];
        let x_1149 : vec4<f32> = u_xlat11;
        let x_1152 : u32 = u_xlatu47;
        let x_1155 : vec4<f32> = x_1046.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1152)];
        let x_1157 : vec2<f32> = ((vec2<f32>(x_1147.x, x_1147.y) * vec2<f32>(x_1149.x, x_1149.y)) + vec2<f32>(x_1155.z, x_1155.w));
        let x_1158 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1157.x, x_1157.y, x_1158.z, x_1158.w);
      } else {
        let x_1162 : i32 = u_xlati49;
        u_xlatb49 = (x_1162 == 1i);
        let x_1164 : bool = u_xlatb49;
        u_xlati49 = select(0i, 1i, x_1164);
        let x_1166 : i32 = u_xlati49;
        if ((x_1166 != 0i)) {
          let x_1171 : vec3<f32> = vs_TEXCOORD7;
          let x_1173 : i32 = u_xlati51;
          let x_1176 : i32 = u_xlati51;
          let x_1180 : vec4<f32> = x_1046.x_AdditionalLightsWorldToLights[((x_1173 + 1i) / 4i)][((x_1176 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1171.y, x_1171.y) * vec2<f32>(x_1180.x, x_1180.y));
          let x_1183 : i32 = u_xlati51;
          let x_1185 : i32 = u_xlati51;
          let x_1188 : vec4<f32> = x_1046.x_AdditionalLightsWorldToLights[(x_1183 / 4i)][(x_1185 % 4i)];
          let x_1190 : vec3<f32> = vs_TEXCOORD7;
          let x_1193 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1188.x, x_1188.y) * vec2<f32>(x_1190.x, x_1190.x)) + x_1193);
          let x_1195 : i32 = u_xlati51;
          let x_1198 : i32 = u_xlati51;
          let x_1202 : vec4<f32> = x_1046.x_AdditionalLightsWorldToLights[((x_1195 + 2i) / 4i)][((x_1198 + 2i) % 4i)];
          let x_1204 : vec3<f32> = vs_TEXCOORD7;
          let x_1207 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1202.x, x_1202.y) * vec2<f32>(x_1204.z, x_1204.z)) + x_1207);
          let x_1209 : vec2<f32> = u_xlat39;
          let x_1210 : i32 = u_xlati51;
          let x_1213 : i32 = u_xlati51;
          let x_1217 : vec4<f32> = x_1046.x_AdditionalLightsWorldToLights[((x_1210 + 3i) / 4i)][((x_1213 + 3i) % 4i)];
          u_xlat39 = (x_1209 + vec2<f32>(x_1217.x, x_1217.y));
          let x_1220 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1220 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1223 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1223);
          let x_1225 : u32 = u_xlatu47;
          let x_1228 : vec4<f32> = x_1046.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1225)];
          let x_1230 : vec2<f32> = u_xlat39;
          let x_1232 : u32 = u_xlatu47;
          let x_1235 : vec4<f32> = x_1046.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1232)];
          let x_1237 : vec2<f32> = ((vec2<f32>(x_1228.x, x_1228.y) * x_1230) + vec2<f32>(x_1235.z, x_1235.w));
          let x_1238 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1237.x, x_1237.y, x_1238.z, x_1238.w);
        } else {
          let x_1242 : vec3<f32> = vs_TEXCOORD7;
          let x_1244 : i32 = u_xlati51;
          let x_1247 : i32 = u_xlati51;
          let x_1251 : vec4<f32> = x_1046.x_AdditionalLightsWorldToLights[((x_1244 + 1i) / 4i)][((x_1247 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1242.y, x_1242.y, x_1242.y, x_1242.y) * x_1251);
          let x_1253 : i32 = u_xlati51;
          let x_1255 : i32 = u_xlati51;
          let x_1258 : vec4<f32> = x_1046.x_AdditionalLightsWorldToLights[(x_1253 / 4i)][(x_1255 % 4i)];
          let x_1259 : vec3<f32> = vs_TEXCOORD7;
          let x_1262 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1258 * vec4<f32>(x_1259.x, x_1259.x, x_1259.x, x_1259.x)) + x_1262);
          let x_1264 : i32 = u_xlati51;
          let x_1267 : i32 = u_xlati51;
          let x_1271 : vec4<f32> = x_1046.x_AdditionalLightsWorldToLights[((x_1264 + 2i) / 4i)][((x_1267 + 2i) % 4i)];
          let x_1272 : vec3<f32> = vs_TEXCOORD7;
          let x_1275 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1271 * vec4<f32>(x_1272.z, x_1272.z, x_1272.z, x_1272.z)) + x_1275);
          let x_1277 : vec4<f32> = u_xlat12;
          let x_1278 : i32 = u_xlati51;
          let x_1281 : i32 = u_xlati51;
          let x_1285 : vec4<f32> = x_1046.x_AdditionalLightsWorldToLights[((x_1278 + 3i) / 4i)][((x_1281 + 3i) % 4i)];
          u_xlat12 = (x_1277 + x_1285);
          let x_1287 : vec4<f32> = u_xlat12;
          let x_1289 : vec4<f32> = u_xlat12;
          let x_1291 : vec3<f32> = (vec3<f32>(x_1287.x, x_1287.y, x_1287.z) / vec3<f32>(x_1289.w, x_1289.w, x_1289.w));
          let x_1292 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1291.x, x_1291.y, x_1291.z, x_1292.w);
          let x_1294 : vec4<f32> = u_xlat12;
          let x_1296 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(vec3<f32>(x_1294.x, x_1294.y, x_1294.z), vec3<f32>(x_1296.x, x_1296.y, x_1296.z));
          let x_1299 : f32 = u_xlat49;
          u_xlat49 = inverseSqrt(x_1299);
          let x_1301 : f32 = u_xlat49;
          let x_1303 : vec4<f32> = u_xlat12;
          let x_1305 : vec3<f32> = (vec3<f32>(x_1301, x_1301, x_1301) * vec3<f32>(x_1303.x, x_1303.y, x_1303.z));
          let x_1306 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1305.x, x_1305.y, x_1305.z, x_1306.w);
          let x_1308 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(abs(vec3<f32>(x_1308.x, x_1308.y, x_1308.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1313 : f32 = u_xlat49;
          u_xlat49 = max(x_1313, 0.000001f);
          let x_1316 : f32 = u_xlat49;
          u_xlat49 = (1.0f / x_1316);
          let x_1319 : f32 = u_xlat49;
          let x_1321 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1319, x_1319, x_1319) * vec3<f32>(x_1321.z, x_1321.x, x_1321.y));
          let x_1325 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1325);
          let x_1329 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1329, 0.0f, 1.0f);
          let x_1333 : vec3<f32> = u_xlat13;
          let x_1336 : vec4<bool> = (vec4<f32>(x_1333.y, x_1333.z, x_1333.y, x_1333.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1336.x, x_1336.y);
          let x_1339 : bool = u_xlatb39.x;
          if (x_1339) {
            let x_1344 : f32 = u_xlat13.x;
            x_1340 = x_1344;
          } else {
            let x_1347 : f32 = u_xlat13.x;
            x_1340 = -(x_1347);
          }
          let x_1349 : f32 = x_1340;
          u_xlat39.x = x_1349;
          let x_1352 : bool = u_xlatb39.y;
          if (x_1352) {
            let x_1357 : f32 = u_xlat13.x;
            x_1353 = x_1357;
          } else {
            let x_1360 : f32 = u_xlat13.x;
            x_1353 = -(x_1360);
          }
          let x_1362 : f32 = x_1353;
          u_xlat39.y = x_1362;
          let x_1364 : vec4<f32> = u_xlat12;
          let x_1366 : f32 = u_xlat49;
          let x_1369 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1364.x, x_1364.y) * vec2<f32>(x_1366, x_1366)) + x_1369);
          let x_1371 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1371 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1374 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_1374, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1378 : u32 = u_xlatu47;
          let x_1381 : vec4<f32> = x_1046.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1378)];
          let x_1383 : vec2<f32> = u_xlat39;
          let x_1385 : u32 = u_xlatu47;
          let x_1388 : vec4<f32> = x_1046.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1385)];
          let x_1390 : vec2<f32> = ((vec2<f32>(x_1381.x, x_1381.y) * x_1383) + vec2<f32>(x_1388.z, x_1388.w));
          let x_1391 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1390.x, x_1390.y, x_1391.z, x_1391.w);
        }
      }
      let x_1398 : vec4<f32> = u_xlat11;
      let x_1401 : f32 = x_44.x_GlobalMipBias.x;
      let x_1402 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1398.x, x_1398.y), x_1401);
      u_xlat11 = x_1402;
      let x_1404 : bool = u_xlatb6.y;
      if (x_1404) {
        let x_1409 : f32 = u_xlat11.w;
        x_1405 = x_1409;
      } else {
        let x_1412 : f32 = u_xlat11.x;
        x_1405 = x_1412;
      }
      let x_1413 : f32 = x_1405;
      u_xlat49 = x_1413;
      let x_1415 : bool = u_xlatb6.x;
      if (x_1415) {
        let x_1419 : vec4<f32> = u_xlat11;
        x_1416 = vec3<f32>(x_1419.x, x_1419.y, x_1419.z);
      } else {
        let x_1422 : f32 = u_xlat49;
        x_1416 = vec3<f32>(x_1422, x_1422, x_1422);
      }
      let x_1424 : vec3<f32> = x_1416;
      let x_1425 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1424.x, x_1424.y, x_1424.z, x_1425.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1431 : vec4<f32> = u_xlat11;
    let x_1433 : u32 = u_xlatu47;
    let x_1436 : vec4<f32> = x_942.x_AdditionalLightsColor[bitcast<i32>(x_1433)];
    let x_1438 : vec3<f32> = (vec3<f32>(x_1431.x, x_1431.y, x_1431.z) * vec3<f32>(x_1436.x, x_1436.y, x_1436.z));
    let x_1439 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1438.x, x_1438.y, x_1438.z, x_1439.w);
    let x_1441 : vec4<f32> = u_xlat4;
    let x_1443 : vec4<f32> = u_xlat11;
    let x_1445 : vec3<f32> = (vec3<f32>(x_1441.x, x_1441.x, x_1441.x) * vec3<f32>(x_1443.x, x_1443.y, x_1443.z));
    let x_1446 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1445.x, x_1445.y, x_1445.z, x_1446.w);
    let x_1448 : vec4<f32> = u_xlat2;
    let x_1450 : vec3<f32> = u_xlat10;
    u_xlat47 = dot(vec3<f32>(x_1448.x, x_1448.y, x_1448.z), x_1450);
    let x_1452 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1452, 0.0f, 1.0f);
    let x_1454 : f32 = u_xlat47;
    let x_1455 : f32 = u_xlat34;
    u_xlat47 = (x_1454 * x_1455);
    let x_1457 : f32 = u_xlat47;
    let x_1459 : vec4<f32> = u_xlat11;
    let x_1461 : vec3<f32> = (vec3<f32>(x_1457, x_1457, x_1457) * vec3<f32>(x_1459.x, x_1459.y, x_1459.z));
    let x_1462 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1461.x, x_1461.y, x_1461.z, x_1462.w);
    let x_1464 : vec3<f32> = u_xlat9;
    let x_1465 : f32 = u_xlat48;
    let x_1468 : vec3<f32> = u_xlat7;
    u_xlat9 = ((x_1464 * vec3<f32>(x_1465, x_1465, x_1465)) + x_1468);
    let x_1470 : vec3<f32> = u_xlat9;
    let x_1471 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1470, x_1471);
    let x_1473 : f32 = u_xlat47;
    u_xlat47 = max(x_1473, 1.17549435e-37f);
    let x_1475 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_1475);
    let x_1477 : f32 = u_xlat47;
    let x_1479 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1477, x_1477, x_1477) * x_1479);
    let x_1481 : vec4<f32> = u_xlat2;
    let x_1483 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_1481.x, x_1481.y, x_1481.z), x_1483);
    let x_1485 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1485, 0.0f, 1.0f);
    let x_1487 : vec3<f32> = u_xlat10;
    let x_1488 : vec3<f32> = u_xlat9;
    u_xlat34 = dot(x_1487, x_1488);
    let x_1490 : f32 = u_xlat34;
    u_xlat34 = clamp(x_1490, 0.0f, 1.0f);
    let x_1492 : f32 = u_xlat47;
    let x_1493 : f32 = u_xlat47;
    u_xlat47 = (x_1492 * x_1493);
    let x_1495 : f32 = u_xlat47;
    let x_1497 : f32 = u_xlat1.x;
    u_xlat47 = ((x_1495 * x_1497) + 1.000010014f);
    let x_1500 : f32 = u_xlat34;
    let x_1501 : f32 = u_xlat34;
    u_xlat34 = (x_1500 * x_1501);
    let x_1503 : f32 = u_xlat47;
    let x_1504 : f32 = u_xlat47;
    u_xlat47 = (x_1503 * x_1504);
    let x_1506 : f32 = u_xlat34;
    u_xlat34 = max(x_1506, 0.100000001f);
    let x_1508 : f32 = u_xlat47;
    let x_1509 : f32 = u_xlat34;
    u_xlat47 = (x_1508 * x_1509);
    let x_1511 : f32 = u_xlat43;
    let x_1512 : f32 = u_xlat47;
    u_xlat47 = (x_1511 * x_1512);
    let x_1514 : f32 = u_xlat44;
    let x_1515 : f32 = u_xlat47;
    u_xlat47 = (x_1514 / x_1515);
    let x_1517 : vec4<f32> = u_xlat0;
    let x_1519 : f32 = u_xlat47;
    let x_1522 : vec3<f32> = u_xlat5;
    u_xlat9 = ((vec3<f32>(x_1517.x, x_1517.y, x_1517.z) * vec3<f32>(x_1519, x_1519, x_1519)) + x_1522);
    let x_1524 : vec3<f32> = u_xlat9;
    let x_1525 : vec4<f32> = u_xlat11;
    let x_1528 : vec4<f32> = u_xlat8;
    let x_1530 : vec3<f32> = ((x_1524 * vec3<f32>(x_1525.x, x_1525.y, x_1525.z)) + vec3<f32>(x_1528.x, x_1528.y, x_1528.z));
    let x_1531 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1530.x, x_1530.y, x_1530.z, x_1531.w);

    continuing {
      let x_1533 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1533 + bitcast<u32>(1i));
    }
  }
  let x_1535 : vec3<f32> = u_xlat3;
  let x_1536 : f32 = u_xlat45;
  let x_1539 : vec3<f32> = u_xlat18;
  let x_1540 : vec3<f32> = ((x_1535 * vec3<f32>(x_1536, x_1536, x_1536)) + x_1539);
  let x_1541 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1540.x, x_1540.y, x_1540.z, x_1541.w);
  let x_1543 : vec4<f32> = u_xlat8;
  let x_1545 : vec4<f32> = u_xlat0;
  let x_1547 : vec3<f32> = (vec3<f32>(x_1543.x, x_1543.y, x_1543.z) + vec3<f32>(x_1545.x, x_1545.y, x_1545.z));
  let x_1548 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1547.x, x_1547.y, x_1547.z, x_1548.w);
  let x_1550 : f32 = u_xlat15;
  let x_1551 : f32 = u_xlat15;
  u_xlat42 = (x_1550 * -(x_1551));
  let x_1554 : f32 = u_xlat42;
  u_xlat42 = exp2(x_1554);
  let x_1556 : vec4<f32> = u_xlat0;
  let x_1560 : vec4<f32> = x_44.unity_FogColor;
  let x_1563 : vec3<f32> = (vec3<f32>(x_1556.x, x_1556.y, x_1556.z) + -(vec3<f32>(x_1560.x, x_1560.y, x_1560.z)));
  let x_1564 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1563.x, x_1563.y, x_1563.z, x_1564.w);
  let x_1568 : f32 = u_xlat42;
  let x_1570 : vec4<f32> = u_xlat0;
  let x_1574 : vec4<f32> = x_44.unity_FogColor;
  let x_1576 : vec3<f32> = ((vec3<f32>(x_1568, x_1568, x_1568) * vec3<f32>(x_1570.x, x_1570.y, x_1570.z)) + vec3<f32>(x_1574.x, x_1574.y, x_1574.z));
  let x_1577 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1576.x, x_1576.y, x_1576.z, x_1577.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD3_param : vec4<f32>, @location(4) vs_TEXCOORD7_param : vec3<f32>, @location(5) vs_TEXCOORD8_param : vec4<f32>, @location(2) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD5_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  main_1();
  return main_out(SV_Target0);
}

