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
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
}

struct UnityPerMaterial {
  x_MainTex_TexelSize : vec4<f32>,
  x_MRLL_TexelSize : vec4<f32>,
  x_BumpMap_TexelSize : vec4<f32>,
  x_Color1 : vec4<f32>,
  x_Color2 : vec4<f32>,
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

@group(0) @binding(6) var x_MainTex : texture_2d<f32>;

@group(0) @binding(15) var samplerSamplerState_Trilinear_Clamp : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(7) var x_MRLL : texture_2d<f32>;

@group(1) @binding(6) var<uniform> x_68 : UnityPerMaterial;

@group(0) @binding(8) var x_BumpMap : texture_2d<f32>;

var<private> vs_INTERP2 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_268 : UnityPerDraw;

var<private> vs_INTERP1 : vec3<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP4 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_INTERP8 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(3) var<uniform> x_541 : MainLightShadows;

@group(1) @binding(4) var<uniform> x_608 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1090 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1203 : AdditionalLightsCookies;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat29 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlatb4 : vec3<bool>;
  var u_xlat5 : vec4<f32>;
  var u_xlat14 : vec2<f32>;
  var u_xlatb15 : vec3<bool>;
  var u_xlat15 : vec3<f32>;
  var u_xlatb14 : bool;
  var u_xlat28 : f32;
  var x_360 : f32;
  var x_373 : f32;
  var x_384 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat44 : f32;
  var u_xlat45 : f32;
  var u_xlat46 : f32;
  var u_xlat42 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatb5 : bool;
  var u_xlatb19 : bool;
  var u_xlat19 : f32;
  var u_xlatb7 : vec2<bool>;
  var u_xlat47 : f32;
  var x_693 : f32;
  var x_704 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat48 : f32;
  var u_xlat8 : vec3<f32>;
  var u_xlatu14 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu45 : u32;
  var u_xlati47 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat9 : vec3<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlat35 : vec2<f32>;
  var u_xlatu35 : u32;
  var u_xlati49 : i32;
  var u_xlati35 : i32;
  var u_xlati50 : i32;
  var u_xlat11 : vec4<f32>;
  var u_xlatb35 : bool;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb39 : vec2<bool>;
  var u_xlat39 : vec2<f32>;
  var x_1504 : f32;
  var x_1517 : f32;
  var x_1569 : f32;
  var x_1581 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_39 : vec4<f32> = vs_INTERP3;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_MainTex, samplerSamplerState_Trilinear_Clamp, vec2<f32>(x_39.x, x_39.y), x_50);
  u_xlat0 = x_51;
  let x_57 : vec4<f32> = vs_INTERP3;
  let x_60 : f32 = x_44.x_GlobalMipBias.x;
  let x_61 : vec4<f32> = textureSampleBias(x_MRLL, samplerSamplerState_Trilinear_Clamp, vec2<f32>(x_57.x, x_57.y), x_60);
  u_xlat1 = x_61;
  let x_64 : vec4<f32> = u_xlat1;
  let x_72 : vec4<f32> = x_68.x_Color2;
  u_xlat2 = (vec3<f32>(x_64.w, x_64.w, x_64.w) * vec3<f32>(x_72.x, x_72.y, x_72.z));
  let x_77 : vec4<f32> = x_68.x_Color1;
  let x_79 : vec4<f32> = u_xlat1;
  let x_82 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_77.x, x_77.y, x_77.z) * vec3<f32>(x_79.z, x_79.z, x_79.z)) + x_82);
  let x_87 : f32 = u_xlat1.w;
  let x_90 : f32 = u_xlat1.z;
  u_xlat29 = (x_87 + x_90);
  let x_92 : f32 = u_xlat29;
  u_xlat29 = clamp(x_92, 0.0f, 1.0f);
  let x_96 : vec4<f32> = u_xlat0;
  u_xlat3 = (-(vec3<f32>(x_96.x, x_96.y, x_96.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_101 : vec3<f32> = u_xlat3;
  let x_102 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_101 + x_102);
  let x_105 : vec3<f32> = u_xlat2;
  u_xlat4 = (-(x_105) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_108 : vec3<f32> = u_xlat3;
  let x_110 : vec3<f32> = u_xlat4;
  u_xlat3 = ((-(x_108) * x_110) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_113 : vec4<f32> = u_xlat0;
  let x_115 : vec4<f32> = u_xlat0;
  u_xlat4 = (vec3<f32>(x_113.x, x_113.y, x_113.z) + vec3<f32>(x_115.x, x_115.y, x_115.z));
  let x_118 : vec3<f32> = u_xlat2;
  let x_119 : vec3<f32> = u_xlat4;
  u_xlat2 = (x_118 * x_119);
  let x_127 : vec4<f32> = u_xlat0;
  let x_130 : vec4<bool> = (vec4<f32>(0.5f, 0.5f, 0.5f, 0.0f) >= vec4<f32>(x_127.x, x_127.y, x_127.z, x_127.x));
  u_xlatb4 = vec3<bool>(x_130.x, x_130.y, x_130.z);
  let x_135 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_135);
  let x_140 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_140);
  let x_144 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_144);
  let x_148 : bool = u_xlatb4.x;
  u_xlat4.x = select(1.0f, 0.0f, x_148);
  let x_152 : bool = u_xlatb4.y;
  u_xlat4.y = select(1.0f, 0.0f, x_152);
  let x_156 : bool = u_xlatb4.z;
  u_xlat4.z = select(1.0f, 0.0f, x_156);
  let x_159 : vec3<f32> = u_xlat3;
  let x_160 : vec3<f32> = u_xlat4;
  u_xlat3 = (x_159 * x_160);
  let x_162 : vec3<f32> = u_xlat2;
  let x_163 : vec4<f32> = u_xlat5;
  let x_166 : vec3<f32> = u_xlat3;
  u_xlat2 = ((x_162 * vec3<f32>(x_163.x, x_163.y, x_163.z)) + x_166);
  let x_168 : vec4<f32> = u_xlat0;
  let x_171 : vec3<f32> = u_xlat2;
  u_xlat2 = (-(vec3<f32>(x_168.x, x_168.y, x_168.z)) + x_171);
  let x_173 : f32 = u_xlat29;
  let x_175 : vec3<f32> = u_xlat2;
  let x_177 : vec4<f32> = u_xlat0;
  u_xlat2 = ((vec3<f32>(x_173, x_173, x_173) * x_175) + vec3<f32>(x_177.x, x_177.y, x_177.z));
  let x_181 : f32 = u_xlat0.x;
  u_xlat0.x = (x_181 + -0.150000006f);
  let x_186 : f32 = u_xlat0.x;
  u_xlat0.x = ceil(x_186);
  let x_190 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_190) + 1.0f);
  let x_194 : vec4<f32> = u_xlat0;
  let x_199 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_194.x, x_194.x, x_194.x) * vec3<f32>(0.400000006f, 0.400000006f, 0.400000006f)) + x_199);
  let x_205 : vec4<f32> = vs_INTERP3;
  let x_208 : f32 = x_44.x_GlobalMipBias.x;
  let x_209 : vec4<f32> = textureSampleBias(x_BumpMap, samplerSamplerState_Trilinear_Clamp, vec2<f32>(x_205.x, x_205.y), x_208);
  u_xlat3 = vec3<f32>(x_209.x, x_209.y, x_209.w);
  let x_212 : f32 = u_xlat3.x;
  let x_214 : f32 = u_xlat3.z;
  u_xlat3.x = (x_212 * x_214);
  let x_219 : vec3<f32> = u_xlat3;
  u_xlat14 = ((vec2<f32>(x_219.x, x_219.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_227 : vec2<f32> = u_xlat14;
  let x_228 : vec2<f32> = u_xlat14;
  u_xlat29 = dot(x_227, x_228);
  let x_230 : f32 = u_xlat29;
  u_xlat29 = min(x_230, 1.0f);
  let x_232 : f32 = u_xlat29;
  u_xlat29 = (-(x_232) + 1.0f);
  let x_235 : f32 = u_xlat29;
  u_xlat29 = sqrt(x_235);
  let x_237 : f32 = u_xlat29;
  u_xlat29 = max(x_237, 1.00000002e-16f);
  let x_241 : f32 = u_xlat1.x;
  let x_243 : f32 = u_xlat0.x;
  u_xlat0.x = (x_241 + x_243);
  let x_247 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_247, 0.0f, 1.0f);
  let x_251 : f32 = u_xlat1.y;
  u_xlat1.x = max(x_251, 0.0f);
  let x_255 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_255, 0.850000024f);
  let x_262 : f32 = vs_INTERP2.w;
  u_xlatb15.x = (0.0f < x_262);
  let x_270 : f32 = x_268.unity_WorldTransformParams.w;
  u_xlatb15.z = (x_270 >= 0.0f);
  let x_275 : bool = u_xlatb15.x;
  u_xlat15.x = select(-1.0f, 1.0f, x_275);
  let x_279 : bool = u_xlatb15.z;
  u_xlat15.z = select(-1.0f, 1.0f, x_279);
  let x_283 : f32 = u_xlat15.z;
  let x_285 : f32 = u_xlat15.x;
  u_xlat15.x = (x_283 * x_285);
  let x_290 : vec3<f32> = vs_INTERP1;
  let x_292 : vec4<f32> = vs_INTERP2;
  u_xlat3 = (vec3<f32>(x_290.z, x_290.x, x_290.y) * vec3<f32>(x_292.y, x_292.z, x_292.x));
  let x_295 : vec3<f32> = vs_INTERP1;
  let x_297 : vec4<f32> = vs_INTERP2;
  let x_300 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_295.y, x_295.z, x_295.x) * vec3<f32>(x_297.z, x_297.x, x_297.y)) + -(x_300));
  let x_303 : vec3<f32> = u_xlat15;
  let x_305 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_303.x, x_303.x, x_303.x) * x_305);
  let x_307 : vec2<f32> = u_xlat14;
  let x_309 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_307.y, x_307.y, x_307.y) * x_309);
  let x_311 : vec2<f32> = u_xlat14;
  let x_313 : vec4<f32> = vs_INTERP2;
  let x_316 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_311.x, x_311.x, x_311.x) * vec3<f32>(x_313.x, x_313.y, x_313.z)) + x_316);
  let x_318 : f32 = u_xlat29;
  let x_320 : vec3<f32> = vs_INTERP1;
  let x_322 : vec3<f32> = u_xlat3;
  u_xlat15 = ((vec3<f32>(x_318, x_318, x_318) * x_320) + x_322);
  let x_324 : vec3<f32> = u_xlat15;
  let x_325 : vec3<f32> = u_xlat15;
  u_xlat14.x = dot(x_324, x_325);
  let x_329 : f32 = u_xlat14.x;
  u_xlat14.x = inverseSqrt(x_329);
  let x_332 : vec2<f32> = u_xlat14;
  let x_334 : vec3<f32> = u_xlat15;
  u_xlat15 = (vec3<f32>(x_332.x, x_332.x, x_332.x) * x_334);
  let x_339 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb14 = (x_339 == 0.0f);
  let x_342 : vec3<f32> = vs_INTERP0;
  let x_347 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat3 = (-(x_342) + x_347);
  let x_350 : vec3<f32> = u_xlat3;
  let x_351 : vec3<f32> = u_xlat3;
  u_xlat28 = dot(x_350, x_351);
  let x_353 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_353);
  let x_355 : f32 = u_xlat28;
  let x_357 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_355, x_355, x_355) * x_357);
  let x_359 : bool = u_xlatb14;
  if (x_359) {
    let x_364 : f32 = u_xlat3.x;
    x_360 = x_364;
  } else {
    let x_369 : f32 = x_44.unity_MatrixV[0i].z;
    x_360 = x_369;
  }
  let x_370 : f32 = x_360;
  u_xlat4.x = x_370;
  let x_372 : bool = u_xlatb14;
  if (x_372) {
    let x_377 : f32 = u_xlat3.y;
    x_373 = x_377;
  } else {
    let x_380 : f32 = x_44.unity_MatrixV[1i].z;
    x_373 = x_380;
  }
  let x_381 : f32 = x_373;
  u_xlat4.y = x_381;
  let x_383 : bool = u_xlatb14;
  if (x_383) {
    let x_388 : f32 = u_xlat3.z;
    x_384 = x_388;
  } else {
    let x_392 : f32 = x_44.unity_MatrixV[2i].z;
    x_384 = x_392;
  }
  let x_393 : f32 = x_384;
  u_xlat4.z = x_393;
  let x_402 : vec2<f32> = vs_INTERP4;
  let x_404 : f32 = x_44.x_GlobalMipBias.x;
  let x_405 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_402, x_404);
  u_xlat3 = vec3<f32>(x_405.x, x_405.y, x_405.z);
  let x_409 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_410 : vec2<f32> = vec2<f32>(x_409.x, x_409.y);
  u_xlat14 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_410.x, x_410.y));
  let x_415 : vec2<f32> = u_xlat14;
  let x_416 : vec4<f32> = hlslcc_FragCoord;
  let x_418 : vec2<f32> = (x_415 * vec2<f32>(x_416.x, x_416.y));
  let x_419 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_418.x, x_418.y, x_419.z, x_419.w);
  let x_422 : f32 = u_xlat5.y;
  let x_425 : f32 = x_44.x_ScaleBiasRt.x;
  let x_428 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat14.x = ((x_422 * x_425) + x_428);
  let x_432 : f32 = u_xlat14.x;
  u_xlat5.z = (-(x_432) + 1.0f);
  let x_437 : f32 = u_xlat0.x;
  u_xlat14.x = ((-(x_437) * 0.959999979f) + 0.959999979f);
  let x_444 : f32 = u_xlat14.x;
  let x_447 : f32 = u_xlat1.x;
  u_xlat28 = (-(x_444) + x_447);
  let x_450 : vec2<f32> = u_xlat14;
  let x_452 : vec3<f32> = u_xlat2;
  u_xlat6 = (vec3<f32>(x_450.x, x_450.x, x_450.x) * x_452);
  let x_454 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_454 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_458 : vec4<f32> = u_xlat0;
  let x_460 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_458.x, x_458.x, x_458.x) * x_460) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_466 : f32 = u_xlat1.x;
  u_xlat0.x = (-(x_466) + 1.0f);
  let x_471 : f32 = u_xlat0.x;
  let x_473 : f32 = u_xlat0.x;
  u_xlat14.x = (x_471 * x_473);
  let x_477 : f32 = u_xlat14.x;
  let x_479 : f32 = u_xlat14.x;
  u_xlat1.x = (x_477 * x_479);
  let x_482 : f32 = u_xlat28;
  u_xlat28 = (x_482 + 1.0f);
  let x_484 : f32 = u_xlat28;
  u_xlat28 = min(x_484, 1.0f);
  let x_488 : f32 = u_xlat14.x;
  u_xlat44 = ((x_488 * 4.0f) + 2.0f);
  let x_498 : vec4<f32> = u_xlat5;
  let x_501 : f32 = x_44.x_GlobalMipBias.x;
  let x_502 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_498.x, x_498.z), x_501);
  u_xlat45 = x_502.x;
  let x_505 : f32 = u_xlat45;
  u_xlat46 = (x_505 + -1.0f);
  let x_508 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_509 : f32 = u_xlat46;
  u_xlat46 = ((x_508 * x_509) + 1.0f);
  let x_514 : f32 = u_xlat0.w;
  let x_515 : f32 = u_xlat45;
  u_xlat42 = min(x_514, x_515);
  let x_519 : vec4<f32> = vs_INTERP8;
  let x_520 : vec2<f32> = vec2<f32>(x_519.x, x_519.y);
  let x_522 : f32 = vs_INTERP8.z;
  txVec0 = vec3<f32>(x_520.x, x_520.y, x_522);
  let x_534 : vec3<f32> = txVec0;
  let x_536 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_534.xy, x_534.z);
  u_xlat45 = x_536;
  let x_543 : f32 = x_541.x_MainLightShadowParams.x;
  u_xlat5.x = (-(x_543) + 1.0f);
  let x_547 : f32 = u_xlat45;
  let x_549 : f32 = x_541.x_MainLightShadowParams.x;
  let x_552 : f32 = u_xlat5.x;
  u_xlat45 = ((x_547 * x_549) + x_552);
  let x_556 : f32 = vs_INTERP8.z;
  u_xlatb5 = (0.0f >= x_556);
  let x_560 : f32 = vs_INTERP8.z;
  u_xlatb19 = (x_560 >= 1.0f);
  let x_562 : bool = u_xlatb19;
  let x_563 : bool = u_xlatb5;
  u_xlatb5 = (x_562 | x_563);
  let x_565 : bool = u_xlatb5;
  let x_566 : f32 = u_xlat45;
  u_xlat45 = select(x_566, 1.0f, x_565);
  let x_568 : vec3<f32> = vs_INTERP0;
  let x_570 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_572 : vec3<f32> = (x_568 + -(x_570));
  let x_573 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_572.x, x_572.y, x_572.z, x_573.w);
  let x_575 : vec4<f32> = u_xlat5;
  let x_577 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_575.x, x_575.y, x_575.z), vec3<f32>(x_577.x, x_577.y, x_577.z));
  let x_582 : f32 = u_xlat5.x;
  let x_584 : f32 = x_541.x_MainLightShadowParams.z;
  let x_587 : f32 = x_541.x_MainLightShadowParams.w;
  u_xlat5.x = ((x_582 * x_584) + x_587);
  let x_591 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_591, 0.0f, 1.0f);
  let x_595 : f32 = u_xlat45;
  u_xlat19 = (-(x_595) + 1.0f);
  let x_599 : f32 = u_xlat5.x;
  let x_600 : f32 = u_xlat19;
  let x_602 : f32 = u_xlat45;
  u_xlat45 = ((x_599 * x_600) + x_602);
  let x_610 : f32 = x_608.x_MainLightCookieTextureFormat;
  u_xlatb5 = !((x_610 == -1.0f));
  let x_612 : bool = u_xlatb5;
  if (x_612) {
    let x_615 : vec3<f32> = vs_INTERP0;
    let x_618 : vec4<f32> = x_608.x_MainLightWorldToLight[1i];
    let x_620 : vec2<f32> = (vec2<f32>(x_615.y, x_615.y) * vec2<f32>(x_618.x, x_618.y));
    let x_621 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_620.x, x_620.y, x_621.z, x_621.w);
    let x_624 : vec4<f32> = x_608.x_MainLightWorldToLight[0i];
    let x_626 : vec3<f32> = vs_INTERP0;
    let x_629 : vec4<f32> = u_xlat5;
    let x_631 : vec2<f32> = ((vec2<f32>(x_624.x, x_624.y) * vec2<f32>(x_626.x, x_626.x)) + vec2<f32>(x_629.x, x_629.y));
    let x_632 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_631.x, x_631.y, x_632.z, x_632.w);
    let x_635 : vec4<f32> = x_608.x_MainLightWorldToLight[2i];
    let x_637 : vec3<f32> = vs_INTERP0;
    let x_640 : vec4<f32> = u_xlat5;
    let x_642 : vec2<f32> = ((vec2<f32>(x_635.x, x_635.y) * vec2<f32>(x_637.z, x_637.z)) + vec2<f32>(x_640.x, x_640.y));
    let x_643 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_642.x, x_642.y, x_643.z, x_643.w);
    let x_645 : vec4<f32> = u_xlat5;
    let x_648 : vec4<f32> = x_608.x_MainLightWorldToLight[3i];
    let x_650 : vec2<f32> = (vec2<f32>(x_645.x, x_645.y) + vec2<f32>(x_648.x, x_648.y));
    let x_651 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_650.x, x_650.y, x_651.z, x_651.w);
    let x_653 : vec4<f32> = u_xlat5;
    let x_657 : vec2<f32> = ((vec2<f32>(x_653.x, x_653.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_658 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_657.x, x_657.y, x_658.z, x_658.w);
    let x_665 : vec4<f32> = u_xlat5;
    let x_668 : f32 = x_44.x_GlobalMipBias.x;
    let x_669 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_665.x, x_665.y), x_668);
    u_xlat5 = x_669;
    let x_674 : f32 = x_608.x_MainLightCookieTextureFormat;
    let x_676 : f32 = x_608.x_MainLightCookieTextureFormat;
    let x_678 : f32 = x_608.x_MainLightCookieTextureFormat;
    let x_680 : f32 = x_608.x_MainLightCookieTextureFormat;
    let x_681 : vec4<f32> = vec4<f32>(x_674, x_676, x_678, x_680);
    let x_688 : vec4<bool> = (vec4<f32>(x_681.x, x_681.y, x_681.z, x_681.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_688.x, x_688.y);
    let x_692 : bool = u_xlatb7.y;
    if (x_692) {
      let x_697 : f32 = u_xlat5.w;
      x_693 = x_697;
    } else {
      let x_700 : f32 = u_xlat5.x;
      x_693 = x_700;
    }
    let x_701 : f32 = x_693;
    u_xlat47 = x_701;
    let x_703 : bool = u_xlatb7.x;
    if (x_703) {
      let x_707 : vec4<f32> = u_xlat5;
      x_704 = vec3<f32>(x_707.x, x_707.y, x_707.z);
    } else {
      let x_710 : f32 = u_xlat47;
      x_704 = vec3<f32>(x_710, x_710, x_710);
    }
    let x_712 : vec3<f32> = x_704;
    let x_713 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_712.x, x_712.y, x_712.z, x_713.w);
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
  }
  let x_719 : vec4<f32> = u_xlat5;
  let x_722 : vec4<f32> = x_44.x_MainLightColor;
  let x_724 : vec3<f32> = (vec3<f32>(x_719.x, x_719.y, x_719.z) * vec3<f32>(x_722.x, x_722.y, x_722.z));
  let x_725 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_724.x, x_724.y, x_724.z, x_725.w);
  let x_727 : f32 = u_xlat46;
  let x_729 : vec4<f32> = u_xlat5;
  let x_731 : vec3<f32> = (vec3<f32>(x_727, x_727, x_727) * vec3<f32>(x_729.x, x_729.y, x_729.z));
  let x_732 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_731.x, x_731.y, x_731.z, x_732.w);
  let x_734 : vec3<f32> = u_xlat4;
  let x_736 : vec3<f32> = u_xlat15;
  u_xlat47 = dot(-(x_734), x_736);
  let x_738 : f32 = u_xlat47;
  let x_739 : f32 = u_xlat47;
  u_xlat47 = (x_738 + x_739);
  let x_742 : vec3<f32> = u_xlat15;
  let x_743 : f32 = u_xlat47;
  let x_747 : vec3<f32> = u_xlat4;
  let x_749 : vec3<f32> = ((x_742 * -(vec3<f32>(x_743, x_743, x_743))) + -(x_747));
  let x_750 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_749.x, x_749.y, x_749.z, x_750.w);
  let x_752 : vec3<f32> = u_xlat15;
  let x_753 : vec3<f32> = u_xlat4;
  u_xlat47 = dot(x_752, x_753);
  let x_755 : f32 = u_xlat47;
  u_xlat47 = clamp(x_755, 0.0f, 1.0f);
  let x_757 : f32 = u_xlat47;
  u_xlat47 = (-(x_757) + 1.0f);
  let x_760 : f32 = u_xlat47;
  let x_761 : f32 = u_xlat47;
  u_xlat47 = (x_760 * x_761);
  let x_763 : f32 = u_xlat47;
  let x_764 : f32 = u_xlat47;
  u_xlat47 = (x_763 * x_764);
  let x_768 : f32 = u_xlat0.x;
  u_xlat48 = ((-(x_768) * 0.699999988f) + 1.700000048f);
  let x_775 : f32 = u_xlat0.x;
  let x_776 : f32 = u_xlat48;
  u_xlat0.x = (x_775 * x_776);
  let x_780 : f32 = u_xlat0.x;
  u_xlat0.x = (x_780 * 6.0f);
  let x_792 : vec4<f32> = u_xlat7;
  let x_795 : f32 = u_xlat0.x;
  let x_796 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_792.x, x_792.y, x_792.z), x_795);
  u_xlat7 = x_796;
  let x_798 : f32 = u_xlat7.w;
  u_xlat0.x = (x_798 + -1.0f);
  let x_802 : f32 = x_268.unity_SpecCube0_HDR.w;
  let x_804 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_802 * x_804) + 1.0f);
  let x_809 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_809, 0.0f);
  let x_813 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_813);
  let x_817 : f32 = u_xlat0.x;
  let x_819 : f32 = x_268.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_817 * x_819);
  let x_823 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_823);
  let x_827 : f32 = u_xlat0.x;
  let x_829 : f32 = x_268.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_827 * x_829);
  let x_832 : vec4<f32> = u_xlat7;
  let x_834 : vec4<f32> = u_xlat0;
  let x_836 : vec3<f32> = (vec3<f32>(x_832.x, x_832.y, x_832.z) * vec3<f32>(x_834.x, x_834.x, x_834.x));
  let x_837 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_836.x, x_836.y, x_836.z, x_837.w);
  let x_839 : vec2<f32> = u_xlat14;
  let x_841 : vec2<f32> = u_xlat14;
  let x_845 : vec2<f32> = ((vec2<f32>(x_839.x, x_839.x) * vec2<f32>(x_841.x, x_841.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_846 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_845.x, x_845.y, x_846.z, x_846.w);
  let x_849 : f32 = u_xlat0.y;
  u_xlat14.x = (1.0f / x_849);
  let x_853 : vec3<f32> = u_xlat2;
  let x_855 : f32 = u_xlat28;
  u_xlat8 = (-(x_853) + vec3<f32>(x_855, x_855, x_855));
  let x_858 : f32 = u_xlat47;
  let x_860 : vec3<f32> = u_xlat8;
  let x_862 : vec3<f32> = u_xlat2;
  u_xlat8 = ((vec3<f32>(x_858, x_858, x_858) * x_860) + x_862);
  let x_864 : vec2<f32> = u_xlat14;
  let x_866 : vec3<f32> = u_xlat8;
  u_xlat8 = (vec3<f32>(x_864.x, x_864.x, x_864.x) * x_866);
  let x_868 : vec4<f32> = u_xlat7;
  let x_870 : vec3<f32> = u_xlat8;
  let x_871 : vec3<f32> = (vec3<f32>(x_868.x, x_868.y, x_868.z) * x_870);
  let x_872 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_871.x, x_871.y, x_871.z, x_872.w);
  let x_874 : vec3<f32> = u_xlat3;
  let x_875 : vec3<f32> = u_xlat6;
  let x_877 : vec4<f32> = u_xlat7;
  u_xlat3 = ((x_874 * x_875) + vec3<f32>(x_877.x, x_877.y, x_877.z));
  let x_880 : f32 = u_xlat45;
  let x_883 : f32 = x_268.unity_LightData.z;
  u_xlat14.x = (x_880 * x_883);
  let x_886 : vec3<f32> = u_xlat15;
  let x_888 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat28 = dot(x_886, vec3<f32>(x_888.x, x_888.y, x_888.z));
  let x_891 : f32 = u_xlat28;
  u_xlat28 = clamp(x_891, 0.0f, 1.0f);
  let x_893 : f32 = u_xlat28;
  let x_895 : f32 = u_xlat14.x;
  u_xlat14.x = (x_893 * x_895);
  let x_898 : vec2<f32> = u_xlat14;
  let x_900 : vec4<f32> = u_xlat5;
  let x_902 : vec3<f32> = (vec3<f32>(x_898.x, x_898.x, x_898.x) * vec3<f32>(x_900.x, x_900.y, x_900.z));
  let x_903 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_902.x, x_902.y, x_902.z, x_903.w);
  let x_905 : vec3<f32> = u_xlat4;
  let x_907 : vec4<f32> = x_44.x_MainLightPosition;
  let x_909 : vec3<f32> = (x_905 + vec3<f32>(x_907.x, x_907.y, x_907.z));
  let x_910 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_909.x, x_909.y, x_909.z, x_910.w);
  let x_912 : vec4<f32> = u_xlat7;
  let x_914 : vec4<f32> = u_xlat7;
  u_xlat14.x = dot(vec3<f32>(x_912.x, x_912.y, x_912.z), vec3<f32>(x_914.x, x_914.y, x_914.z));
  let x_919 : f32 = u_xlat14.x;
  u_xlat14.x = max(x_919, 1.17549435e-37f);
  let x_924 : f32 = u_xlat14.x;
  u_xlat14.x = inverseSqrt(x_924);
  let x_927 : vec2<f32> = u_xlat14;
  let x_929 : vec4<f32> = u_xlat7;
  let x_931 : vec3<f32> = (vec3<f32>(x_927.x, x_927.x, x_927.x) * vec3<f32>(x_929.x, x_929.y, x_929.z));
  let x_932 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_931.x, x_931.y, x_931.z, x_932.w);
  let x_934 : vec3<f32> = u_xlat15;
  let x_935 : vec4<f32> = u_xlat7;
  u_xlat14.x = dot(x_934, vec3<f32>(x_935.x, x_935.y, x_935.z));
  let x_940 : f32 = u_xlat14.x;
  u_xlat14.x = clamp(x_940, 0.0f, 1.0f);
  let x_944 : vec4<f32> = x_44.x_MainLightPosition;
  let x_946 : vec4<f32> = u_xlat7;
  u_xlat14.y = dot(vec3<f32>(x_944.x, x_944.y, x_944.z), vec3<f32>(x_946.x, x_946.y, x_946.z));
  let x_951 : f32 = u_xlat14.y;
  u_xlat14.y = clamp(x_951, 0.0f, 1.0f);
  let x_954 : vec2<f32> = u_xlat14;
  let x_955 : vec2<f32> = u_xlat14;
  u_xlat14 = (x_954 * x_955);
  let x_958 : f32 = u_xlat14.x;
  let x_960 : f32 = u_xlat0.x;
  u_xlat14.x = ((x_958 * x_960) + 1.000010014f);
  let x_966 : f32 = u_xlat14.x;
  let x_968 : f32 = u_xlat14.x;
  u_xlat14.x = (x_966 * x_968);
  let x_972 : f32 = u_xlat14.y;
  u_xlat28 = max(x_972, 0.100000001f);
  let x_975 : f32 = u_xlat28;
  let x_977 : f32 = u_xlat14.x;
  u_xlat14.x = (x_975 * x_977);
  let x_980 : f32 = u_xlat44;
  let x_982 : f32 = u_xlat14.x;
  u_xlat14.x = (x_980 * x_982);
  let x_986 : f32 = u_xlat1.x;
  let x_988 : f32 = u_xlat14.x;
  u_xlat14.x = (x_986 / x_988);
  let x_991 : vec3<f32> = u_xlat2;
  let x_992 : vec2<f32> = u_xlat14;
  let x_995 : vec3<f32> = u_xlat6;
  let x_996 : vec3<f32> = ((x_991 * vec3<f32>(x_992.x, x_992.x, x_992.x)) + x_995);
  let x_997 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_996.x, x_996.y, x_996.z, x_997.w);
  let x_999 : vec4<f32> = u_xlat5;
  let x_1001 : vec4<f32> = u_xlat7;
  let x_1003 : vec3<f32> = (vec3<f32>(x_999.x, x_999.y, x_999.z) * vec3<f32>(x_1001.x, x_1001.y, x_1001.z));
  let x_1004 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1003.x, x_1003.y, x_1003.z, x_1004.w);
  let x_1007 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1009 : f32 = x_268.unity_LightData.y;
  u_xlat14.x = min(x_1007, x_1009);
  let x_1015 : f32 = u_xlat14.x;
  u_xlatu14 = bitcast<u32>(i32(x_1015));
  let x_1019 : f32 = x_608.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1021 : f32 = x_608.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1023 : f32 = x_608.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1025 : f32 = x_608.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1026 : vec4<f32> = vec4<f32>(x_1019, x_1021, x_1023, x_1025);
  let x_1032 : vec4<bool> = (vec4<f32>(x_1026.x, x_1026.y, x_1026.z, x_1026.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1032.x, x_1032.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1043 : u32 = u_xlatu_loop_1;
    let x_1044 : u32 = u_xlatu14;
    if ((x_1043 < x_1044)) {
    } else {
      break;
    }
    let x_1047 : u32 = u_xlatu_loop_1;
    u_xlatu45 = (x_1047 >> 2u);
    let x_1051 : u32 = u_xlatu_loop_1;
    u_xlati47 = bitcast<i32>((x_1051 & 3u));
    let x_1054 : u32 = u_xlatu45;
    let x_1057 : vec4<f32> = x_268.unity_LightIndices[bitcast<i32>(x_1054)];
    let x_1067 : i32 = u_xlati47;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1072 : vec4<u32> = indexable[x_1067];
    u_xlat45 = dot(x_1057, bitcast<vec4<f32>>(x_1072));
    let x_1075 : f32 = u_xlat45;
    u_xlatu45 = bitcast<u32>(i32(x_1075));
    let x_1079 : vec3<f32> = vs_INTERP0;
    let x_1091 : u32 = u_xlatu45;
    let x_1094 : vec4<f32> = x_1090.x_AdditionalLightsPosition[bitcast<i32>(x_1091)];
    let x_1097 : u32 = u_xlatu45;
    let x_1100 : vec4<f32> = x_1090.x_AdditionalLightsPosition[bitcast<i32>(x_1097)];
    u_xlat9 = ((-(x_1079) * vec3<f32>(x_1094.w, x_1094.w, x_1094.w)) + vec3<f32>(x_1100.x, x_1100.y, x_1100.z));
    let x_1103 : vec3<f32> = u_xlat9;
    let x_1104 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1103, x_1104);
    let x_1106 : f32 = u_xlat47;
    u_xlat47 = max(x_1106, 6.10351562e-05f);
    let x_1109 : f32 = u_xlat47;
    u_xlat48 = inverseSqrt(x_1109);
    let x_1112 : f32 = u_xlat48;
    let x_1114 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1112, x_1112, x_1112) * x_1114);
    let x_1117 : f32 = u_xlat47;
    u_xlat35.x = (1.0f / x_1117);
    let x_1120 : f32 = u_xlat47;
    let x_1121 : u32 = u_xlatu45;
    let x_1124 : f32 = x_1090.x_AdditionalLightsAttenuation[bitcast<i32>(x_1121)].x;
    u_xlat47 = (x_1120 * x_1124);
    let x_1126 : f32 = u_xlat47;
    let x_1128 : f32 = u_xlat47;
    u_xlat47 = ((-(x_1126) * x_1128) + 1.0f);
    let x_1131 : f32 = u_xlat47;
    u_xlat47 = max(x_1131, 0.0f);
    let x_1133 : f32 = u_xlat47;
    let x_1134 : f32 = u_xlat47;
    u_xlat47 = (x_1133 * x_1134);
    let x_1136 : f32 = u_xlat47;
    let x_1138 : f32 = u_xlat35.x;
    u_xlat47 = (x_1136 * x_1138);
    let x_1140 : u32 = u_xlatu45;
    let x_1143 : vec4<f32> = x_1090.x_AdditionalLightsSpotDir[bitcast<i32>(x_1140)];
    let x_1145 : vec3<f32> = u_xlat10;
    u_xlat35.x = dot(vec3<f32>(x_1143.x, x_1143.y, x_1143.z), x_1145);
    let x_1149 : f32 = u_xlat35.x;
    let x_1150 : u32 = u_xlatu45;
    let x_1153 : f32 = x_1090.x_AdditionalLightsAttenuation[bitcast<i32>(x_1150)].z;
    let x_1155 : u32 = u_xlatu45;
    let x_1158 : f32 = x_1090.x_AdditionalLightsAttenuation[bitcast<i32>(x_1155)].w;
    u_xlat35.x = ((x_1149 * x_1153) + x_1158);
    let x_1162 : f32 = u_xlat35.x;
    u_xlat35.x = clamp(x_1162, 0.0f, 1.0f);
    let x_1166 : f32 = u_xlat35.x;
    let x_1168 : f32 = u_xlat35.x;
    u_xlat35.x = (x_1166 * x_1168);
    let x_1171 : f32 = u_xlat47;
    let x_1173 : f32 = u_xlat35.x;
    u_xlat47 = (x_1171 * x_1173);
    let x_1176 : u32 = u_xlatu45;
    u_xlatu35 = (x_1176 >> 5u);
    let x_1179 : u32 = u_xlatu45;
    u_xlati49 = (1i << bitcast<u32>((bitcast<i32>(x_1179) & 31i)));
    let x_1185 : i32 = u_xlati49;
    let x_1187 : u32 = u_xlatu35;
    let x_1190 : f32 = x_608.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1187)].el;
    u_xlati35 = bitcast<i32>((bitcast<u32>(x_1185) & bitcast<u32>(x_1190)));
    let x_1194 : i32 = u_xlati35;
    if ((x_1194 != 0i)) {
      let x_1204 : u32 = u_xlatu45;
      let x_1207 : f32 = x_1203.x_AdditionalLightsLightTypes[bitcast<i32>(x_1204)].el;
      u_xlati35 = i32(x_1207);
      let x_1209 : i32 = u_xlati35;
      u_xlati49 = select(1i, 0i, (x_1209 != 0i));
      let x_1213 : u32 = u_xlatu45;
      u_xlati50 = (bitcast<i32>(x_1213) << bitcast<u32>(2i));
      let x_1216 : i32 = u_xlati49;
      if ((x_1216 != 0i)) {
        let x_1221 : vec3<f32> = vs_INTERP0;
        let x_1223 : i32 = u_xlati50;
        let x_1226 : i32 = u_xlati50;
        let x_1230 : vec4<f32> = x_1203.x_AdditionalLightsWorldToLights[((x_1223 + 1i) / 4i)][((x_1226 + 1i) % 4i)];
        let x_1232 : vec3<f32> = (vec3<f32>(x_1221.y, x_1221.y, x_1221.y) * vec3<f32>(x_1230.x, x_1230.y, x_1230.w));
        let x_1233 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1232.x, x_1232.y, x_1232.z, x_1233.w);
        let x_1235 : i32 = u_xlati50;
        let x_1237 : i32 = u_xlati50;
        let x_1240 : vec4<f32> = x_1203.x_AdditionalLightsWorldToLights[(x_1235 / 4i)][(x_1237 % 4i)];
        let x_1242 : vec3<f32> = vs_INTERP0;
        let x_1245 : vec4<f32> = u_xlat11;
        let x_1247 : vec3<f32> = ((vec3<f32>(x_1240.x, x_1240.y, x_1240.w) * vec3<f32>(x_1242.x, x_1242.x, x_1242.x)) + vec3<f32>(x_1245.x, x_1245.y, x_1245.z));
        let x_1248 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1247.x, x_1247.y, x_1247.z, x_1248.w);
        let x_1250 : i32 = u_xlati50;
        let x_1253 : i32 = u_xlati50;
        let x_1257 : vec4<f32> = x_1203.x_AdditionalLightsWorldToLights[((x_1250 + 2i) / 4i)][((x_1253 + 2i) % 4i)];
        let x_1259 : vec3<f32> = vs_INTERP0;
        let x_1262 : vec4<f32> = u_xlat11;
        let x_1264 : vec3<f32> = ((vec3<f32>(x_1257.x, x_1257.y, x_1257.w) * vec3<f32>(x_1259.z, x_1259.z, x_1259.z)) + vec3<f32>(x_1262.x, x_1262.y, x_1262.z));
        let x_1265 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1264.x, x_1264.y, x_1264.z, x_1265.w);
        let x_1267 : vec4<f32> = u_xlat11;
        let x_1269 : i32 = u_xlati50;
        let x_1272 : i32 = u_xlati50;
        let x_1276 : vec4<f32> = x_1203.x_AdditionalLightsWorldToLights[((x_1269 + 3i) / 4i)][((x_1272 + 3i) % 4i)];
        let x_1278 : vec3<f32> = (vec3<f32>(x_1267.x, x_1267.y, x_1267.z) + vec3<f32>(x_1276.x, x_1276.y, x_1276.w));
        let x_1279 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1278.x, x_1278.y, x_1278.z, x_1279.w);
        let x_1281 : vec4<f32> = u_xlat11;
        let x_1283 : vec4<f32> = u_xlat11;
        let x_1285 : vec2<f32> = (vec2<f32>(x_1281.x, x_1281.y) / vec2<f32>(x_1283.z, x_1283.z));
        let x_1286 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1285.x, x_1285.y, x_1286.z, x_1286.w);
        let x_1288 : vec4<f32> = u_xlat11;
        let x_1291 : vec2<f32> = ((vec2<f32>(x_1288.x, x_1288.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1292 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1291.x, x_1291.y, x_1292.z, x_1292.w);
        let x_1294 : vec4<f32> = u_xlat11;
        let x_1298 : vec2<f32> = clamp(vec2<f32>(x_1294.x, x_1294.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1299 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1298.x, x_1298.y, x_1299.z, x_1299.w);
        let x_1301 : u32 = u_xlatu45;
        let x_1304 : vec4<f32> = x_1203.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1301)];
        let x_1306 : vec4<f32> = u_xlat11;
        let x_1309 : u32 = u_xlatu45;
        let x_1312 : vec4<f32> = x_1203.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1309)];
        let x_1314 : vec2<f32> = ((vec2<f32>(x_1304.x, x_1304.y) * vec2<f32>(x_1306.x, x_1306.y)) + vec2<f32>(x_1312.z, x_1312.w));
        let x_1315 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1314.x, x_1314.y, x_1315.z, x_1315.w);
      } else {
        let x_1319 : i32 = u_xlati35;
        u_xlatb35 = (x_1319 == 1i);
        let x_1321 : bool = u_xlatb35;
        u_xlati35 = select(0i, 1i, x_1321);
        let x_1323 : i32 = u_xlati35;
        if ((x_1323 != 0i)) {
          let x_1327 : vec3<f32> = vs_INTERP0;
          let x_1329 : i32 = u_xlati50;
          let x_1332 : i32 = u_xlati50;
          let x_1336 : vec4<f32> = x_1203.x_AdditionalLightsWorldToLights[((x_1329 + 1i) / 4i)][((x_1332 + 1i) % 4i)];
          u_xlat35 = (vec2<f32>(x_1327.y, x_1327.y) * vec2<f32>(x_1336.x, x_1336.y));
          let x_1339 : i32 = u_xlati50;
          let x_1341 : i32 = u_xlati50;
          let x_1344 : vec4<f32> = x_1203.x_AdditionalLightsWorldToLights[(x_1339 / 4i)][(x_1341 % 4i)];
          let x_1346 : vec3<f32> = vs_INTERP0;
          let x_1349 : vec2<f32> = u_xlat35;
          u_xlat35 = ((vec2<f32>(x_1344.x, x_1344.y) * vec2<f32>(x_1346.x, x_1346.x)) + x_1349);
          let x_1351 : i32 = u_xlati50;
          let x_1354 : i32 = u_xlati50;
          let x_1358 : vec4<f32> = x_1203.x_AdditionalLightsWorldToLights[((x_1351 + 2i) / 4i)][((x_1354 + 2i) % 4i)];
          let x_1360 : vec3<f32> = vs_INTERP0;
          let x_1363 : vec2<f32> = u_xlat35;
          u_xlat35 = ((vec2<f32>(x_1358.x, x_1358.y) * vec2<f32>(x_1360.z, x_1360.z)) + x_1363);
          let x_1365 : vec2<f32> = u_xlat35;
          let x_1366 : i32 = u_xlati50;
          let x_1369 : i32 = u_xlati50;
          let x_1373 : vec4<f32> = x_1203.x_AdditionalLightsWorldToLights[((x_1366 + 3i) / 4i)][((x_1369 + 3i) % 4i)];
          u_xlat35 = (x_1365 + vec2<f32>(x_1373.x, x_1373.y));
          let x_1376 : vec2<f32> = u_xlat35;
          u_xlat35 = ((x_1376 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1379 : vec2<f32> = u_xlat35;
          u_xlat35 = fract(x_1379);
          let x_1381 : u32 = u_xlatu45;
          let x_1384 : vec4<f32> = x_1203.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1381)];
          let x_1386 : vec2<f32> = u_xlat35;
          let x_1388 : u32 = u_xlatu45;
          let x_1391 : vec4<f32> = x_1203.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1388)];
          let x_1393 : vec2<f32> = ((vec2<f32>(x_1384.x, x_1384.y) * x_1386) + vec2<f32>(x_1391.z, x_1391.w));
          let x_1394 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1393.x, x_1393.y, x_1394.z, x_1394.w);
        } else {
          let x_1398 : vec3<f32> = vs_INTERP0;
          let x_1400 : i32 = u_xlati50;
          let x_1403 : i32 = u_xlati50;
          let x_1407 : vec4<f32> = x_1203.x_AdditionalLightsWorldToLights[((x_1400 + 1i) / 4i)][((x_1403 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1398.y, x_1398.y, x_1398.y, x_1398.y) * x_1407);
          let x_1409 : i32 = u_xlati50;
          let x_1411 : i32 = u_xlati50;
          let x_1414 : vec4<f32> = x_1203.x_AdditionalLightsWorldToLights[(x_1409 / 4i)][(x_1411 % 4i)];
          let x_1415 : vec3<f32> = vs_INTERP0;
          let x_1418 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1414 * vec4<f32>(x_1415.x, x_1415.x, x_1415.x, x_1415.x)) + x_1418);
          let x_1420 : i32 = u_xlati50;
          let x_1423 : i32 = u_xlati50;
          let x_1427 : vec4<f32> = x_1203.x_AdditionalLightsWorldToLights[((x_1420 + 2i) / 4i)][((x_1423 + 2i) % 4i)];
          let x_1428 : vec3<f32> = vs_INTERP0;
          let x_1431 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1427 * vec4<f32>(x_1428.z, x_1428.z, x_1428.z, x_1428.z)) + x_1431);
          let x_1433 : vec4<f32> = u_xlat12;
          let x_1434 : i32 = u_xlati50;
          let x_1437 : i32 = u_xlati50;
          let x_1441 : vec4<f32> = x_1203.x_AdditionalLightsWorldToLights[((x_1434 + 3i) / 4i)][((x_1437 + 3i) % 4i)];
          u_xlat12 = (x_1433 + x_1441);
          let x_1443 : vec4<f32> = u_xlat12;
          let x_1445 : vec4<f32> = u_xlat12;
          let x_1447 : vec3<f32> = (vec3<f32>(x_1443.x, x_1443.y, x_1443.z) / vec3<f32>(x_1445.w, x_1445.w, x_1445.w));
          let x_1448 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1447.x, x_1447.y, x_1447.z, x_1448.w);
          let x_1450 : vec4<f32> = u_xlat12;
          let x_1452 : vec4<f32> = u_xlat12;
          u_xlat35.x = dot(vec3<f32>(x_1450.x, x_1450.y, x_1450.z), vec3<f32>(x_1452.x, x_1452.y, x_1452.z));
          let x_1457 : f32 = u_xlat35.x;
          u_xlat35.x = inverseSqrt(x_1457);
          let x_1460 : vec2<f32> = u_xlat35;
          let x_1462 : vec4<f32> = u_xlat12;
          let x_1464 : vec3<f32> = (vec3<f32>(x_1460.x, x_1460.x, x_1460.x) * vec3<f32>(x_1462.x, x_1462.y, x_1462.z));
          let x_1465 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1464.x, x_1464.y, x_1464.z, x_1465.w);
          let x_1467 : vec4<f32> = u_xlat12;
          u_xlat35.x = dot(abs(vec3<f32>(x_1467.x, x_1467.y, x_1467.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1473 : f32 = u_xlat35.x;
          u_xlat35.x = max(x_1473, 0.000001f);
          let x_1478 : f32 = u_xlat35.x;
          u_xlat35.x = (1.0f / x_1478);
          let x_1482 : vec2<f32> = u_xlat35;
          let x_1484 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1482.x, x_1482.x, x_1482.x) * vec3<f32>(x_1484.z, x_1484.x, x_1484.y));
          let x_1488 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1488);
          let x_1492 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1492, 0.0f, 1.0f);
          let x_1496 : vec3<f32> = u_xlat13;
          let x_1499 : vec4<bool> = (vec4<f32>(x_1496.y, x_1496.z, x_1496.y, x_1496.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1499.x, x_1499.y);
          let x_1503 : bool = u_xlatb39.x;
          if (x_1503) {
            let x_1508 : f32 = u_xlat13.x;
            x_1504 = x_1508;
          } else {
            let x_1511 : f32 = u_xlat13.x;
            x_1504 = -(x_1511);
          }
          let x_1513 : f32 = x_1504;
          u_xlat39.x = x_1513;
          let x_1516 : bool = u_xlatb39.y;
          if (x_1516) {
            let x_1521 : f32 = u_xlat13.x;
            x_1517 = x_1521;
          } else {
            let x_1524 : f32 = u_xlat13.x;
            x_1517 = -(x_1524);
          }
          let x_1526 : f32 = x_1517;
          u_xlat39.y = x_1526;
          let x_1528 : vec4<f32> = u_xlat12;
          let x_1530 : vec2<f32> = u_xlat35;
          let x_1533 : vec2<f32> = u_xlat39;
          u_xlat35 = ((vec2<f32>(x_1528.x, x_1528.y) * vec2<f32>(x_1530.x, x_1530.x)) + x_1533);
          let x_1535 : vec2<f32> = u_xlat35;
          u_xlat35 = ((x_1535 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1538 : vec2<f32> = u_xlat35;
          u_xlat35 = clamp(x_1538, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1542 : u32 = u_xlatu45;
          let x_1545 : vec4<f32> = x_1203.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1542)];
          let x_1547 : vec2<f32> = u_xlat35;
          let x_1549 : u32 = u_xlatu45;
          let x_1552 : vec4<f32> = x_1203.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1549)];
          let x_1554 : vec2<f32> = ((vec2<f32>(x_1545.x, x_1545.y) * x_1547) + vec2<f32>(x_1552.z, x_1552.w));
          let x_1555 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1554.x, x_1554.y, x_1555.z, x_1555.w);
        }
      }
      let x_1562 : vec4<f32> = u_xlat11;
      let x_1565 : f32 = x_44.x_GlobalMipBias.x;
      let x_1566 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1562.x, x_1562.y), x_1565);
      u_xlat11 = x_1566;
      let x_1568 : bool = u_xlatb7.y;
      if (x_1568) {
        let x_1573 : f32 = u_xlat11.w;
        x_1569 = x_1573;
      } else {
        let x_1576 : f32 = u_xlat11.x;
        x_1569 = x_1576;
      }
      let x_1577 : f32 = x_1569;
      u_xlat35.x = x_1577;
      let x_1580 : bool = u_xlatb7.x;
      if (x_1580) {
        let x_1584 : vec4<f32> = u_xlat11;
        x_1581 = vec3<f32>(x_1584.x, x_1584.y, x_1584.z);
      } else {
        let x_1587 : vec2<f32> = u_xlat35;
        x_1581 = vec3<f32>(x_1587.x, x_1587.x, x_1587.x);
      }
      let x_1589 : vec3<f32> = x_1581;
      let x_1590 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1589.x, x_1589.y, x_1589.z, x_1590.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1596 : vec4<f32> = u_xlat11;
    let x_1598 : u32 = u_xlatu45;
    let x_1601 : vec4<f32> = x_1090.x_AdditionalLightsColor[bitcast<i32>(x_1598)];
    let x_1603 : vec3<f32> = (vec3<f32>(x_1596.x, x_1596.y, x_1596.z) * vec3<f32>(x_1601.x, x_1601.y, x_1601.z));
    let x_1604 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1603.x, x_1603.y, x_1603.z, x_1604.w);
    let x_1606 : f32 = u_xlat46;
    let x_1608 : vec4<f32> = u_xlat11;
    let x_1610 : vec3<f32> = (vec3<f32>(x_1606, x_1606, x_1606) * vec3<f32>(x_1608.x, x_1608.y, x_1608.z));
    let x_1611 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1610.x, x_1610.y, x_1610.z, x_1611.w);
    let x_1613 : vec3<f32> = u_xlat15;
    let x_1614 : vec3<f32> = u_xlat10;
    u_xlat45 = dot(x_1613, x_1614);
    let x_1616 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1616, 0.0f, 1.0f);
    let x_1618 : f32 = u_xlat45;
    let x_1619 : f32 = u_xlat47;
    u_xlat45 = (x_1618 * x_1619);
    let x_1621 : f32 = u_xlat45;
    let x_1623 : vec4<f32> = u_xlat11;
    let x_1625 : vec3<f32> = (vec3<f32>(x_1621, x_1621, x_1621) * vec3<f32>(x_1623.x, x_1623.y, x_1623.z));
    let x_1626 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1625.x, x_1625.y, x_1625.z, x_1626.w);
    let x_1628 : vec3<f32> = u_xlat9;
    let x_1629 : f32 = u_xlat48;
    let x_1632 : vec3<f32> = u_xlat4;
    u_xlat9 = ((x_1628 * vec3<f32>(x_1629, x_1629, x_1629)) + x_1632);
    let x_1634 : vec3<f32> = u_xlat9;
    let x_1635 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(x_1634, x_1635);
    let x_1637 : f32 = u_xlat45;
    u_xlat45 = max(x_1637, 1.17549435e-37f);
    let x_1639 : f32 = u_xlat45;
    u_xlat45 = inverseSqrt(x_1639);
    let x_1641 : f32 = u_xlat45;
    let x_1643 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1641, x_1641, x_1641) * x_1643);
    let x_1645 : vec3<f32> = u_xlat15;
    let x_1646 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(x_1645, x_1646);
    let x_1648 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1648, 0.0f, 1.0f);
    let x_1650 : vec3<f32> = u_xlat10;
    let x_1651 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1650, x_1651);
    let x_1653 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1653, 0.0f, 1.0f);
    let x_1655 : f32 = u_xlat45;
    let x_1656 : f32 = u_xlat45;
    u_xlat45 = (x_1655 * x_1656);
    let x_1658 : f32 = u_xlat45;
    let x_1660 : f32 = u_xlat0.x;
    u_xlat45 = ((x_1658 * x_1660) + 1.000010014f);
    let x_1663 : f32 = u_xlat47;
    let x_1664 : f32 = u_xlat47;
    u_xlat47 = (x_1663 * x_1664);
    let x_1666 : f32 = u_xlat45;
    let x_1667 : f32 = u_xlat45;
    u_xlat45 = (x_1666 * x_1667);
    let x_1669 : f32 = u_xlat47;
    u_xlat47 = max(x_1669, 0.100000001f);
    let x_1671 : f32 = u_xlat45;
    let x_1672 : f32 = u_xlat47;
    u_xlat45 = (x_1671 * x_1672);
    let x_1674 : f32 = u_xlat44;
    let x_1675 : f32 = u_xlat45;
    u_xlat45 = (x_1674 * x_1675);
    let x_1678 : f32 = u_xlat1.x;
    let x_1679 : f32 = u_xlat45;
    u_xlat45 = (x_1678 / x_1679);
    let x_1681 : vec3<f32> = u_xlat2;
    let x_1682 : f32 = u_xlat45;
    let x_1685 : vec3<f32> = u_xlat6;
    u_xlat9 = ((x_1681 * vec3<f32>(x_1682, x_1682, x_1682)) + x_1685);
    let x_1687 : vec3<f32> = u_xlat9;
    let x_1688 : vec4<f32> = u_xlat11;
    let x_1691 : vec3<f32> = u_xlat8;
    u_xlat8 = ((x_1687 * vec3<f32>(x_1688.x, x_1688.y, x_1688.z)) + x_1691);

    continuing {
      let x_1693 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1693 + bitcast<u32>(1i));
    }
  }
  let x_1695 : vec3<f32> = u_xlat3;
  let x_1696 : f32 = u_xlat42;
  let x_1699 : vec4<f32> = u_xlat5;
  let x_1701 : vec3<f32> = ((x_1695 * vec3<f32>(x_1696, x_1696, x_1696)) + vec3<f32>(x_1699.x, x_1699.y, x_1699.z));
  let x_1702 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1701.x, x_1701.y, x_1701.z, x_1702.w);
  let x_1706 : vec3<f32> = u_xlat8;
  let x_1707 : vec4<f32> = u_xlat0;
  let x_1709 : vec3<f32> = (x_1706 + vec3<f32>(x_1707.x, x_1707.y, x_1707.z));
  let x_1710 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1709.x, x_1709.y, x_1709.z, x_1710.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(4) vs_INTERP4_param : vec2<f32>, @location(5) vs_INTERP8_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP8 = vs_INTERP8_param;
  main_1();
  return main_out(SV_Target0);
}
