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
  x_ScaleBiasRt : vec4<f32>,
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

type Arr_1 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr_1,
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

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(0) @binding(2) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MetallicTex : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_94 : MainLightShadows;

@group(1) @binding(2) var<uniform> x_274 : UnityPerDraw;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_569 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainLightCookieTexture : sampler;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1038 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1142 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat15 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlatb3 : vec4<bool>;
  var u_xlatu15 : u32;
  var u_xlati15 : i32;
  var u_xlat44 : f32;
  var u_xlat45 : f32;
  var u_xlat18 : f32;
  var u_xlat42 : f32;
  var u_xlat32 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat29 : vec2<f32>;
  var u_xlatb29 : vec2<bool>;
  var u_xlatb43 : bool;
  var x_516 : f32;
  var u_xlat43 : f32;
  var x_638 : f32;
  var x_649 : vec3<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlatu42 : u32;
  var u_xlatb6 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu46 : u32;
  var u_xlati47 : i32;
  var u_xlat46 : f32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat47 : f32;
  var u_xlat34 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlat48 : f32;
  var u_xlatu48 : u32;
  var u_xlati49 : i32;
  var u_xlati48 : i32;
  var u_xlati50 : i32;
  var u_xlat11 : vec4<f32>;
  var u_xlatb48 : bool;
  var u_xlat39 : vec2<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb39 : vec2<bool>;
  var x_1436 : f32;
  var x_1449 : f32;
  var x_1501 : f32;
  var x_1512 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_39 : vec4<f32> = vs_TEXCOORD0;
  let x_49 : f32 = x_43.x_GlobalMipBias.x;
  let x_50 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_39.x, x_39.y), x_49);
  u_xlat0 = x_50;
  let x_57 : vec4<f32> = vs_TEXCOORD0;
  let x_60 : f32 = x_43.x_GlobalMipBias.x;
  let x_61 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_57.x, x_57.y), x_60);
  u_xlat1.x = x_61.x;
  let x_68 : vec4<f32> = vs_TEXCOORD3;
  let x_70 : vec4<f32> = vs_TEXCOORD3;
  u_xlat15.x = dot(vec3<f32>(x_68.x, x_68.y, x_68.z), vec3<f32>(x_70.x, x_70.y, x_70.z));
  let x_75 : f32 = u_xlat15.x;
  u_xlat15.x = inverseSqrt(x_75);
  let x_79 : vec3<f32> = u_xlat15;
  let x_81 : vec4<f32> = vs_TEXCOORD3;
  let x_83 : vec3<f32> = (vec3<f32>(x_79.x, x_79.x, x_79.x) * vec3<f32>(x_81.x, x_81.y, x_81.z));
  let x_84 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_83.x, x_83.y, x_83.z, x_84.w);
  let x_88 : vec3<f32> = vs_TEXCOORD7;
  let x_97 : vec4<f32> = x_94.x_CascadeShadowSplitSpheres0;
  u_xlat15 = (x_88 + -(vec3<f32>(x_97.x, x_97.y, x_97.z)));
  let x_102 : vec3<f32> = vs_TEXCOORD7;
  let x_105 : vec4<f32> = x_94.x_CascadeShadowSplitSpheres1;
  u_xlat3 = (x_102 + -(vec3<f32>(x_105.x, x_105.y, x_105.z)));
  let x_110 : vec3<f32> = vs_TEXCOORD7;
  let x_113 : vec4<f32> = x_94.x_CascadeShadowSplitSpheres2;
  let x_116 : vec3<f32> = (x_110 + -(vec3<f32>(x_113.x, x_113.y, x_113.z)));
  let x_117 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_116.x, x_116.y, x_116.z, x_117.w);
  let x_120 : vec3<f32> = vs_TEXCOORD7;
  let x_123 : vec4<f32> = x_94.x_CascadeShadowSplitSpheres3;
  u_xlat5 = (x_120 + -(vec3<f32>(x_123.x, x_123.y, x_123.z)));
  let x_128 : vec3<f32> = u_xlat15;
  let x_129 : vec3<f32> = u_xlat15;
  u_xlat6.x = dot(x_128, x_129);
  let x_132 : vec3<f32> = u_xlat3;
  let x_133 : vec3<f32> = u_xlat3;
  u_xlat6.y = dot(x_132, x_133);
  let x_137 : vec4<f32> = u_xlat4;
  let x_139 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(vec3<f32>(x_137.x, x_137.y, x_137.z), vec3<f32>(x_139.x, x_139.y, x_139.z));
  let x_144 : vec3<f32> = u_xlat5;
  let x_145 : vec3<f32> = u_xlat5;
  u_xlat6.w = dot(x_144, x_145);
  let x_152 : vec4<f32> = u_xlat6;
  let x_155 : vec4<f32> = x_94.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_152 < x_155);
  let x_159 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_159);
  let x_164 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_164);
  let x_168 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_168);
  let x_172 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_172);
  let x_176 : bool = u_xlatb3.x;
  u_xlat15.x = select(-0.0f, -1.0f, x_176);
  let x_182 : bool = u_xlatb3.y;
  u_xlat15.y = select(-0.0f, -1.0f, x_182);
  let x_186 : bool = u_xlatb3.z;
  u_xlat15.z = select(-0.0f, -1.0f, x_186);
  let x_189 : vec3<f32> = u_xlat15;
  let x_190 : vec4<f32> = u_xlat4;
  u_xlat15 = (x_189 + vec3<f32>(x_190.y, x_190.z, x_190.w));
  let x_193 : vec3<f32> = u_xlat15;
  let x_195 : vec3<f32> = max(x_193, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_196 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_196.x, x_195.x, x_195.y, x_195.z);
  let x_198 : vec4<f32> = u_xlat4;
  u_xlat15.x = dot(x_198, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_206 : f32 = u_xlat15.x;
  u_xlat15.x = (-(x_206) + 4.0f);
  let x_213 : f32 = u_xlat15.x;
  u_xlatu15 = u32(x_213);
  let x_217 : u32 = u_xlatu15;
  u_xlati15 = (bitcast<i32>(x_217) << bitcast<u32>(2i));
  let x_220 : vec3<f32> = vs_TEXCOORD7;
  let x_223 : i32 = u_xlati15;
  let x_226 : i32 = u_xlati15;
  let x_230 : vec4<f32> = x_94.x_MainLightWorldToShadow[((x_223 + 1i) / 4i)][((x_226 + 1i) % 4i)];
  u_xlat3 = (vec3<f32>(x_220.y, x_220.y, x_220.y) * vec3<f32>(x_230.x, x_230.y, x_230.z));
  let x_233 : i32 = u_xlati15;
  let x_235 : i32 = u_xlati15;
  let x_238 : vec4<f32> = x_94.x_MainLightWorldToShadow[(x_233 / 4i)][(x_235 % 4i)];
  let x_240 : vec3<f32> = vs_TEXCOORD7;
  let x_243 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_238.x, x_238.y, x_238.z) * vec3<f32>(x_240.x, x_240.x, x_240.x)) + x_243);
  let x_245 : i32 = u_xlati15;
  let x_248 : i32 = u_xlati15;
  let x_252 : vec4<f32> = x_94.x_MainLightWorldToShadow[((x_245 + 2i) / 4i)][((x_248 + 2i) % 4i)];
  let x_254 : vec3<f32> = vs_TEXCOORD7;
  let x_257 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_252.x, x_252.y, x_252.z) * vec3<f32>(x_254.z, x_254.z, x_254.z)) + x_257);
  let x_259 : vec3<f32> = u_xlat3;
  let x_260 : i32 = u_xlati15;
  let x_263 : i32 = u_xlati15;
  let x_267 : vec4<f32> = x_94.x_MainLightWorldToShadow[((x_260 + 3i) / 4i)][((x_263 + 3i) % 4i)];
  u_xlat15 = (x_259 + vec3<f32>(x_267.x, x_267.y, x_267.z));
  u_xlat2.w = 1.0f;
  let x_277 : vec4<f32> = x_274.unity_SHAr;
  let x_278 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_277, x_278);
  let x_283 : vec4<f32> = x_274.unity_SHAg;
  let x_284 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_283, x_284);
  let x_289 : vec4<f32> = x_274.unity_SHAb;
  let x_290 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_289, x_290);
  let x_293 : vec4<f32> = u_xlat2;
  let x_295 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_293.y, x_293.z, x_293.z, x_293.x) * vec4<f32>(x_295.x, x_295.y, x_295.z, x_295.z));
  let x_300 : vec4<f32> = x_274.unity_SHBr;
  let x_301 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_300, x_301);
  let x_306 : vec4<f32> = x_274.unity_SHBg;
  let x_307 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_306, x_307);
  let x_312 : vec4<f32> = x_274.unity_SHBb;
  let x_313 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_312, x_313);
  let x_318 : f32 = u_xlat2.y;
  let x_320 : f32 = u_xlat2.y;
  u_xlat44 = (x_318 * x_320);
  let x_323 : f32 = u_xlat2.x;
  let x_325 : f32 = u_xlat2.x;
  let x_327 : f32 = u_xlat44;
  u_xlat44 = ((x_323 * x_325) + -(x_327));
  let x_332 : vec4<f32> = x_274.unity_SHC;
  let x_334 : f32 = u_xlat44;
  let x_337 : vec3<f32> = u_xlat5;
  let x_338 : vec3<f32> = ((vec3<f32>(x_332.x, x_332.y, x_332.z) * vec3<f32>(x_334, x_334, x_334)) + x_337);
  let x_339 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_338.x, x_338.y, x_338.z, x_339.w);
  let x_341 : vec3<f32> = u_xlat3;
  let x_342 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_341 + vec3<f32>(x_342.x, x_342.y, x_342.z));
  let x_345 : vec3<f32> = u_xlat3;
  u_xlat3 = max(x_345, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_349 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_350 : vec2<f32> = vec2<f32>(x_349.x, x_349.y);
  let x_354 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_350.x, x_350.y));
  let x_355 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_354.x, x_354.y, x_355.z, x_355.w);
  let x_357 : vec4<f32> = u_xlat4;
  let x_359 : vec4<f32> = hlslcc_FragCoord;
  let x_361 : vec2<f32> = (vec2<f32>(x_357.x, x_357.y) * vec2<f32>(x_359.x, x_359.y));
  let x_362 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_361.x, x_361.y, x_362.z, x_362.w);
  let x_365 : f32 = u_xlat4.y;
  let x_368 : f32 = x_43.x_ScaleBiasRt.x;
  let x_371 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat44 = ((x_365 * x_368) + x_371);
  let x_373 : f32 = u_xlat44;
  u_xlat4.z = (-(x_373) + 1.0f);
  let x_378 : f32 = u_xlat1.x;
  u_xlat44 = ((-(x_378) * 0.959999979f) + 0.959999979f);
  let x_384 : f32 = u_xlat44;
  u_xlat45 = (-(x_384) + 1.0f);
  let x_387 : vec4<f32> = u_xlat0;
  let x_389 : f32 = u_xlat44;
  u_xlat5 = (vec3<f32>(x_387.x, x_387.y, x_387.z) * vec3<f32>(x_389, x_389, x_389));
  let x_392 : vec4<f32> = u_xlat0;
  let x_396 : vec3<f32> = (vec3<f32>(x_392.x, x_392.y, x_392.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_397 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_396.x, x_396.y, x_396.z, x_397.w);
  let x_399 : vec4<f32> = u_xlat1;
  let x_401 : vec4<f32> = u_xlat0;
  let x_406 : vec3<f32> = ((vec3<f32>(x_399.x, x_399.x, x_399.x) * vec3<f32>(x_401.x, x_401.y, x_401.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_407 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_406.x, x_406.y, x_406.z, x_407.w);
  let x_410 : f32 = u_xlat0.w;
  u_xlat1.x = (-(x_410) + 1.0f);
  let x_415 : f32 = u_xlat1.x;
  let x_417 : f32 = u_xlat1.x;
  u_xlat44 = (x_415 * x_417);
  let x_419 : f32 = u_xlat44;
  u_xlat44 = max(x_419, 0.0078125f);
  let x_423 : f32 = u_xlat44;
  let x_424 : f32 = u_xlat44;
  u_xlat18 = (x_423 * x_424);
  let x_428 : f32 = u_xlat0.w;
  let x_429 : f32 = u_xlat45;
  u_xlat42 = (x_428 + x_429);
  let x_431 : f32 = u_xlat42;
  u_xlat42 = clamp(x_431, 0.0f, 1.0f);
  let x_433 : f32 = u_xlat44;
  u_xlat45 = ((x_433 * 4.0f) + 2.0f);
  let x_441 : vec4<f32> = u_xlat4;
  let x_444 : f32 = x_43.x_GlobalMipBias.x;
  let x_445 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_441.x, x_441.z), x_444);
  u_xlat4.x = x_445.x;
  let x_450 : f32 = u_xlat4.x;
  u_xlat32 = (x_450 + -1.0f);
  let x_453 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_454 : f32 = u_xlat32;
  u_xlat32 = ((x_453 * x_454) + 1.0f);
  let x_458 : f32 = u_xlat4.x;
  u_xlat4.x = min(x_458, 1.0f);
  let x_462 : vec3<f32> = u_xlat15;
  let x_463 : vec2<f32> = vec2<f32>(x_462.x, x_462.y);
  let x_465 : f32 = u_xlat15.z;
  txVec0 = vec3<f32>(x_463.x, x_463.y, x_465);
  let x_477 : vec3<f32> = txVec0;
  let x_479 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_477.xy, x_477.z);
  u_xlat15.x = x_479;
  let x_485 : f32 = x_94.x_MainLightShadowParams.x;
  u_xlat29.x = (-(x_485) + 1.0f);
  let x_490 : f32 = u_xlat15.x;
  let x_492 : f32 = x_94.x_MainLightShadowParams.x;
  let x_495 : f32 = u_xlat29.x;
  u_xlat15.x = ((x_490 * x_492) + x_495);
  let x_502 : f32 = u_xlat15.z;
  u_xlatb29.x = (0.0f >= x_502);
  let x_507 : f32 = u_xlat15.z;
  u_xlatb43 = (x_507 >= 1.0f);
  let x_509 : bool = u_xlatb43;
  let x_511 : bool = u_xlatb29.x;
  u_xlatb29.x = (x_509 | x_511);
  let x_515 : bool = u_xlatb29.x;
  if (x_515) {
    x_516 = 1.0f;
  } else {
    let x_521 : f32 = u_xlat15.x;
    x_516 = x_521;
  }
  let x_522 : f32 = x_516;
  u_xlat15.x = x_522;
  let x_524 : vec3<f32> = vs_TEXCOORD7;
  let x_528 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_530 : vec3<f32> = (x_524 + -(x_528));
  let x_531 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_530.x, x_530.y, x_530.z, x_531.w);
  let x_533 : vec4<f32> = u_xlat6;
  let x_535 : vec4<f32> = u_xlat6;
  u_xlat29.x = dot(vec3<f32>(x_533.x, x_533.y, x_533.z), vec3<f32>(x_535.x, x_535.y, x_535.z));
  let x_540 : f32 = u_xlat29.x;
  let x_542 : f32 = x_94.x_MainLightShadowParams.z;
  let x_545 : f32 = x_94.x_MainLightShadowParams.w;
  u_xlat29.x = ((x_540 * x_542) + x_545);
  let x_549 : f32 = u_xlat29.x;
  u_xlat29.x = clamp(x_549, 0.0f, 1.0f);
  let x_554 : f32 = u_xlat15.x;
  u_xlat43 = (-(x_554) + 1.0f);
  let x_558 : f32 = u_xlat29.x;
  let x_559 : f32 = u_xlat43;
  let x_562 : f32 = u_xlat15.x;
  u_xlat15.x = ((x_558 * x_559) + x_562);
  let x_571 : f32 = x_569.x_MainLightCookieTextureFormat;
  u_xlatb29.x = !((x_571 == -1.0f));
  let x_575 : bool = u_xlatb29.x;
  if (x_575) {
    let x_578 : vec3<f32> = vs_TEXCOORD7;
    let x_581 : vec4<f32> = x_569.x_MainLightWorldToLight[1i];
    u_xlat29 = (vec2<f32>(x_578.y, x_578.y) * vec2<f32>(x_581.x, x_581.y));
    let x_585 : vec4<f32> = x_569.x_MainLightWorldToLight[0i];
    let x_587 : vec3<f32> = vs_TEXCOORD7;
    let x_590 : vec2<f32> = u_xlat29;
    u_xlat29 = ((vec2<f32>(x_585.x, x_585.y) * vec2<f32>(x_587.x, x_587.x)) + x_590);
    let x_593 : vec4<f32> = x_569.x_MainLightWorldToLight[2i];
    let x_595 : vec3<f32> = vs_TEXCOORD7;
    let x_598 : vec2<f32> = u_xlat29;
    u_xlat29 = ((vec2<f32>(x_593.x, x_593.y) * vec2<f32>(x_595.z, x_595.z)) + x_598);
    let x_600 : vec2<f32> = u_xlat29;
    let x_602 : vec4<f32> = x_569.x_MainLightWorldToLight[3i];
    u_xlat29 = (x_600 + vec2<f32>(x_602.x, x_602.y));
    let x_605 : vec2<f32> = u_xlat29;
    u_xlat29 = ((x_605 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_615 : vec2<f32> = u_xlat29;
    let x_617 : f32 = x_43.x_GlobalMipBias.x;
    let x_618 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_615, x_617);
    u_xlat6 = x_618;
    let x_620 : f32 = x_569.x_MainLightCookieTextureFormat;
    let x_622 : f32 = x_569.x_MainLightCookieTextureFormat;
    let x_624 : f32 = x_569.x_MainLightCookieTextureFormat;
    let x_626 : f32 = x_569.x_MainLightCookieTextureFormat;
    let x_627 : vec4<f32> = vec4<f32>(x_620, x_622, x_624, x_626);
    let x_634 : vec4<bool> = (vec4<f32>(x_627.x, x_627.y, x_627.z, x_627.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb29 = vec2<bool>(x_634.x, x_634.y);
    let x_637 : bool = u_xlatb29.y;
    if (x_637) {
      let x_642 : f32 = u_xlat6.w;
      x_638 = x_642;
    } else {
      let x_645 : f32 = u_xlat6.x;
      x_638 = x_645;
    }
    let x_646 : f32 = x_638;
    u_xlat43 = x_646;
    let x_648 : bool = u_xlatb29.x;
    if (x_648) {
      let x_652 : vec4<f32> = u_xlat6;
      x_649 = vec3<f32>(x_652.x, x_652.y, x_652.z);
    } else {
      let x_655 : f32 = u_xlat43;
      x_649 = vec3<f32>(x_655, x_655, x_655);
    }
    let x_657 : vec3<f32> = x_649;
    let x_658 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_657.x, x_657.y, x_657.z, x_658.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_664 : vec4<f32> = u_xlat6;
  let x_667 : vec4<f32> = x_43.x_MainLightColor;
  let x_669 : vec3<f32> = (vec3<f32>(x_664.x, x_664.y, x_664.z) * vec3<f32>(x_667.x, x_667.y, x_667.z));
  let x_670 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_669.x, x_669.y, x_669.z, x_670.w);
  let x_672 : f32 = u_xlat32;
  let x_674 : vec4<f32> = u_xlat6;
  let x_676 : vec3<f32> = (vec3<f32>(x_672, x_672, x_672) * vec3<f32>(x_674.x, x_674.y, x_674.z));
  let x_677 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_676.x, x_676.y, x_676.z, x_677.w);
  let x_681 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_681;
  let x_685 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_685;
  let x_689 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_689;
  let x_691 : vec3<f32> = u_xlat7;
  let x_693 : vec4<f32> = u_xlat2;
  u_xlat29.x = dot(-(x_691), vec3<f32>(x_693.x, x_693.y, x_693.z));
  let x_698 : f32 = u_xlat29.x;
  let x_700 : f32 = u_xlat29.x;
  u_xlat29.x = (x_698 + x_700);
  let x_704 : vec4<f32> = u_xlat2;
  let x_706 : vec2<f32> = u_xlat29;
  let x_710 : vec3<f32> = u_xlat7;
  let x_712 : vec3<f32> = ((vec3<f32>(x_704.x, x_704.y, x_704.z) * -(vec3<f32>(x_706.x, x_706.x, x_706.x))) + -(x_710));
  let x_713 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_712.x, x_712.y, x_712.z, x_713.w);
  let x_715 : vec4<f32> = u_xlat2;
  let x_717 : vec3<f32> = u_xlat7;
  u_xlat29.x = dot(vec3<f32>(x_715.x, x_715.y, x_715.z), x_717);
  let x_721 : f32 = u_xlat29.x;
  u_xlat29.x = clamp(x_721, 0.0f, 1.0f);
  let x_725 : f32 = u_xlat29.x;
  u_xlat29.x = (-(x_725) + 1.0f);
  let x_730 : f32 = u_xlat29.x;
  let x_732 : f32 = u_xlat29.x;
  u_xlat1.z = (x_730 * x_732);
  let x_736 : f32 = u_xlat1.x;
  u_xlat1.w = ((-(x_736) * 0.699999988f) + 1.700000048f);
  let x_743 : vec4<f32> = u_xlat1;
  let x_745 : vec4<f32> = u_xlat1;
  let x_747 : vec2<f32> = (vec2<f32>(x_743.w, x_743.z) * vec2<f32>(x_745.x, x_745.z));
  let x_748 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_747.x, x_748.y, x_747.y, x_748.w);
  let x_751 : f32 = u_xlat1.x;
  u_xlat1.x = (x_751 * 6.0f);
  let x_763 : vec4<f32> = u_xlat8;
  let x_766 : f32 = u_xlat1.x;
  let x_767 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_763.x, x_763.y, x_763.z), x_766);
  u_xlat8 = x_767;
  let x_769 : f32 = u_xlat8.w;
  u_xlat1.x = (x_769 + -1.0f);
  let x_773 : f32 = x_274.unity_SpecCube0_HDR.w;
  let x_775 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_773 * x_775) + 1.0f);
  let x_780 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_780, 0.0f);
  let x_784 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_784);
  let x_788 : f32 = u_xlat1.x;
  let x_790 : f32 = x_274.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_788 * x_790);
  let x_794 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_794);
  let x_798 : f32 = u_xlat1.x;
  let x_800 : f32 = x_274.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_798 * x_800);
  let x_803 : vec4<f32> = u_xlat8;
  let x_805 : vec4<f32> = u_xlat1;
  let x_807 : vec3<f32> = (vec3<f32>(x_803.x, x_803.y, x_803.z) * vec3<f32>(x_805.x, x_805.x, x_805.x));
  let x_808 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_807.x, x_807.y, x_807.z, x_808.w);
  let x_810 : f32 = u_xlat44;
  let x_812 : f32 = u_xlat44;
  let x_816 : vec2<f32> = ((vec2<f32>(x_810, x_810) * vec2<f32>(x_812, x_812)) + vec2<f32>(-1.0f, 1.0f));
  let x_817 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_816.x, x_817.y, x_817.z, x_816.y);
  let x_820 : f32 = u_xlat1.w;
  u_xlat43 = (1.0f / x_820);
  let x_823 : vec4<f32> = u_xlat0;
  let x_826 : f32 = u_xlat42;
  u_xlat9 = (-(vec3<f32>(x_823.x, x_823.y, x_823.z)) + vec3<f32>(x_826, x_826, x_826));
  let x_829 : vec4<f32> = u_xlat1;
  let x_831 : vec3<f32> = u_xlat9;
  let x_833 : vec4<f32> = u_xlat0;
  u_xlat9 = ((vec3<f32>(x_829.z, x_829.z, x_829.z) * x_831) + vec3<f32>(x_833.x, x_833.y, x_833.z));
  let x_836 : f32 = u_xlat43;
  let x_838 : vec3<f32> = u_xlat9;
  u_xlat9 = (vec3<f32>(x_836, x_836, x_836) * x_838);
  let x_840 : vec4<f32> = u_xlat8;
  let x_842 : vec3<f32> = u_xlat9;
  let x_843 : vec3<f32> = (vec3<f32>(x_840.x, x_840.y, x_840.z) * x_842);
  let x_844 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_843.x, x_843.y, x_843.z, x_844.w);
  let x_846 : vec3<f32> = u_xlat3;
  let x_847 : vec3<f32> = u_xlat5;
  let x_849 : vec4<f32> = u_xlat8;
  u_xlat3 = ((x_846 * x_847) + vec3<f32>(x_849.x, x_849.y, x_849.z));
  let x_853 : f32 = u_xlat15.x;
  let x_855 : f32 = x_274.unity_LightData.z;
  u_xlat42 = (x_853 * x_855);
  let x_857 : vec4<f32> = u_xlat2;
  let x_860 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat15.x = dot(vec3<f32>(x_857.x, x_857.y, x_857.z), vec3<f32>(x_860.x, x_860.y, x_860.z));
  let x_865 : f32 = u_xlat15.x;
  u_xlat15.x = clamp(x_865, 0.0f, 1.0f);
  let x_868 : f32 = u_xlat42;
  let x_870 : f32 = u_xlat15.x;
  u_xlat42 = (x_868 * x_870);
  let x_872 : f32 = u_xlat42;
  let x_874 : vec4<f32> = u_xlat6;
  u_xlat15 = (vec3<f32>(x_872, x_872, x_872) * vec3<f32>(x_874.x, x_874.y, x_874.z));
  let x_877 : vec3<f32> = u_xlat7;
  let x_879 : vec4<f32> = x_43.x_MainLightPosition;
  let x_881 : vec3<f32> = (x_877 + vec3<f32>(x_879.x, x_879.y, x_879.z));
  let x_882 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_881.x, x_881.y, x_881.z, x_882.w);
  let x_884 : vec4<f32> = u_xlat6;
  let x_886 : vec4<f32> = u_xlat6;
  u_xlat42 = dot(vec3<f32>(x_884.x, x_884.y, x_884.z), vec3<f32>(x_886.x, x_886.y, x_886.z));
  let x_889 : f32 = u_xlat42;
  u_xlat42 = max(x_889, 1.17549435e-37f);
  let x_892 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_892);
  let x_894 : f32 = u_xlat42;
  let x_896 : vec4<f32> = u_xlat6;
  let x_898 : vec3<f32> = (vec3<f32>(x_894, x_894, x_894) * vec3<f32>(x_896.x, x_896.y, x_896.z));
  let x_899 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_898.x, x_898.y, x_898.z, x_899.w);
  let x_901 : vec4<f32> = u_xlat2;
  let x_903 : vec4<f32> = u_xlat6;
  u_xlat42 = dot(vec3<f32>(x_901.x, x_901.y, x_901.z), vec3<f32>(x_903.x, x_903.y, x_903.z));
  let x_906 : f32 = u_xlat42;
  u_xlat42 = clamp(x_906, 0.0f, 1.0f);
  let x_909 : vec4<f32> = x_43.x_MainLightPosition;
  let x_911 : vec4<f32> = u_xlat6;
  u_xlat44 = dot(vec3<f32>(x_909.x, x_909.y, x_909.z), vec3<f32>(x_911.x, x_911.y, x_911.z));
  let x_914 : f32 = u_xlat44;
  u_xlat44 = clamp(x_914, 0.0f, 1.0f);
  let x_916 : f32 = u_xlat42;
  let x_917 : f32 = u_xlat42;
  u_xlat42 = (x_916 * x_917);
  let x_919 : f32 = u_xlat42;
  let x_921 : f32 = u_xlat1.x;
  u_xlat42 = ((x_919 * x_921) + 1.000010014f);
  let x_925 : f32 = u_xlat44;
  let x_926 : f32 = u_xlat44;
  u_xlat44 = (x_925 * x_926);
  let x_928 : f32 = u_xlat42;
  let x_929 : f32 = u_xlat42;
  u_xlat42 = (x_928 * x_929);
  let x_931 : f32 = u_xlat44;
  u_xlat44 = max(x_931, 0.100000001f);
  let x_934 : f32 = u_xlat42;
  let x_935 : f32 = u_xlat44;
  u_xlat42 = (x_934 * x_935);
  let x_937 : f32 = u_xlat45;
  let x_938 : f32 = u_xlat42;
  u_xlat42 = (x_937 * x_938);
  let x_940 : f32 = u_xlat18;
  let x_941 : f32 = u_xlat42;
  u_xlat42 = (x_940 / x_941);
  let x_943 : vec4<f32> = u_xlat0;
  let x_945 : f32 = u_xlat42;
  let x_948 : vec3<f32> = u_xlat5;
  let x_949 : vec3<f32> = ((vec3<f32>(x_943.x, x_943.y, x_943.z) * vec3<f32>(x_945, x_945, x_945)) + x_948);
  let x_950 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_949.x, x_949.y, x_949.z, x_950.w);
  let x_952 : vec3<f32> = u_xlat15;
  let x_953 : vec4<f32> = u_xlat6;
  u_xlat15 = (x_952 * vec3<f32>(x_953.x, x_953.y, x_953.z));
  let x_957 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_959 : f32 = x_274.unity_LightData.y;
  u_xlat42 = min(x_957, x_959);
  let x_962 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_962));
  let x_967 : f32 = x_569.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_969 : f32 = x_569.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_971 : f32 = x_569.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_973 : f32 = x_569.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_974 : vec4<f32> = vec4<f32>(x_967, x_969, x_971, x_973);
  let x_981 : vec4<bool> = (vec4<f32>(x_974.x, x_974.y, x_974.z, x_974.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_981.x, x_981.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_992 : u32 = u_xlatu_loop_1;
    let x_993 : u32 = u_xlatu42;
    if ((x_992 < x_993)) {
    } else {
      break;
    }
    let x_996 : u32 = u_xlatu_loop_1;
    u_xlatu46 = (x_996 >> 2u);
    let x_999 : u32 = u_xlatu_loop_1;
    u_xlati47 = bitcast<i32>((x_999 & 3u));
    let x_1003 : u32 = u_xlatu46;
    let x_1006 : vec4<f32> = x_274.unity_LightIndices[bitcast<i32>(x_1003)];
    let x_1016 : i32 = u_xlati47;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1021 : vec4<u32> = indexable[x_1016];
    u_xlat46 = dot(x_1006, bitcast<vec4<f32>>(x_1021));
    let x_1024 : f32 = u_xlat46;
    u_xlatu46 = bitcast<u32>(i32(x_1024));
    let x_1027 : vec3<f32> = vs_TEXCOORD7;
    let x_1039 : u32 = u_xlatu46;
    let x_1042 : vec4<f32> = x_1038.x_AdditionalLightsPosition[bitcast<i32>(x_1039)];
    let x_1045 : u32 = u_xlatu46;
    let x_1048 : vec4<f32> = x_1038.x_AdditionalLightsPosition[bitcast<i32>(x_1045)];
    u_xlat9 = ((-(x_1027) * vec3<f32>(x_1042.w, x_1042.w, x_1042.w)) + vec3<f32>(x_1048.x, x_1048.y, x_1048.z));
    let x_1052 : vec3<f32> = u_xlat9;
    let x_1053 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1052, x_1053);
    let x_1055 : f32 = u_xlat47;
    u_xlat47 = max(x_1055, 6.10351562e-05f);
    let x_1059 : f32 = u_xlat47;
    u_xlat34 = inverseSqrt(x_1059);
    let x_1062 : f32 = u_xlat34;
    let x_1064 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1062, x_1062, x_1062) * x_1064);
    let x_1067 : f32 = u_xlat47;
    u_xlat48 = (1.0f / x_1067);
    let x_1069 : f32 = u_xlat47;
    let x_1070 : u32 = u_xlatu46;
    let x_1073 : f32 = x_1038.x_AdditionalLightsAttenuation[bitcast<i32>(x_1070)].x;
    u_xlat47 = (x_1069 * x_1073);
    let x_1075 : f32 = u_xlat47;
    let x_1077 : f32 = u_xlat47;
    u_xlat47 = ((-(x_1075) * x_1077) + 1.0f);
    let x_1080 : f32 = u_xlat47;
    u_xlat47 = max(x_1080, 0.0f);
    let x_1082 : f32 = u_xlat47;
    let x_1083 : f32 = u_xlat47;
    u_xlat47 = (x_1082 * x_1083);
    let x_1085 : f32 = u_xlat47;
    let x_1086 : f32 = u_xlat48;
    u_xlat47 = (x_1085 * x_1086);
    let x_1088 : u32 = u_xlatu46;
    let x_1091 : vec4<f32> = x_1038.x_AdditionalLightsSpotDir[bitcast<i32>(x_1088)];
    let x_1093 : vec3<f32> = u_xlat10;
    u_xlat48 = dot(vec3<f32>(x_1091.x, x_1091.y, x_1091.z), x_1093);
    let x_1095 : f32 = u_xlat48;
    let x_1096 : u32 = u_xlatu46;
    let x_1099 : f32 = x_1038.x_AdditionalLightsAttenuation[bitcast<i32>(x_1096)].z;
    let x_1101 : u32 = u_xlatu46;
    let x_1104 : f32 = x_1038.x_AdditionalLightsAttenuation[bitcast<i32>(x_1101)].w;
    u_xlat48 = ((x_1095 * x_1099) + x_1104);
    let x_1106 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1106, 0.0f, 1.0f);
    let x_1108 : f32 = u_xlat48;
    let x_1109 : f32 = u_xlat48;
    u_xlat48 = (x_1108 * x_1109);
    let x_1111 : f32 = u_xlat47;
    let x_1112 : f32 = u_xlat48;
    u_xlat47 = (x_1111 * x_1112);
    let x_1115 : u32 = u_xlatu46;
    u_xlatu48 = (x_1115 >> 5u);
    let x_1118 : u32 = u_xlatu46;
    u_xlati49 = (1i << bitcast<u32>((bitcast<i32>(x_1118) & 31i)));
    let x_1124 : i32 = u_xlati49;
    let x_1126 : u32 = u_xlatu48;
    let x_1129 : f32 = x_569.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1126)].el;
    u_xlati48 = bitcast<i32>((bitcast<u32>(x_1124) & bitcast<u32>(x_1129)));
    let x_1133 : i32 = u_xlati48;
    if ((x_1133 != 0i)) {
      let x_1143 : u32 = u_xlatu46;
      let x_1146 : f32 = x_1142.x_AdditionalLightsLightTypes[bitcast<i32>(x_1143)].el;
      u_xlati48 = i32(x_1146);
      let x_1148 : i32 = u_xlati48;
      u_xlati49 = select(1i, 0i, (x_1148 != 0i));
      let x_1152 : u32 = u_xlatu46;
      u_xlati50 = (bitcast<i32>(x_1152) << bitcast<u32>(2i));
      let x_1155 : i32 = u_xlati49;
      if ((x_1155 != 0i)) {
        let x_1160 : vec3<f32> = vs_TEXCOORD7;
        let x_1162 : i32 = u_xlati50;
        let x_1165 : i32 = u_xlati50;
        let x_1169 : vec4<f32> = x_1142.x_AdditionalLightsWorldToLights[((x_1162 + 1i) / 4i)][((x_1165 + 1i) % 4i)];
        let x_1171 : vec3<f32> = (vec3<f32>(x_1160.y, x_1160.y, x_1160.y) * vec3<f32>(x_1169.x, x_1169.y, x_1169.w));
        let x_1172 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1171.x, x_1171.y, x_1171.z, x_1172.w);
        let x_1174 : i32 = u_xlati50;
        let x_1176 : i32 = u_xlati50;
        let x_1179 : vec4<f32> = x_1142.x_AdditionalLightsWorldToLights[(x_1174 / 4i)][(x_1176 % 4i)];
        let x_1181 : vec3<f32> = vs_TEXCOORD7;
        let x_1184 : vec4<f32> = u_xlat11;
        let x_1186 : vec3<f32> = ((vec3<f32>(x_1179.x, x_1179.y, x_1179.w) * vec3<f32>(x_1181.x, x_1181.x, x_1181.x)) + vec3<f32>(x_1184.x, x_1184.y, x_1184.z));
        let x_1187 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1186.x, x_1186.y, x_1186.z, x_1187.w);
        let x_1189 : i32 = u_xlati50;
        let x_1192 : i32 = u_xlati50;
        let x_1196 : vec4<f32> = x_1142.x_AdditionalLightsWorldToLights[((x_1189 + 2i) / 4i)][((x_1192 + 2i) % 4i)];
        let x_1198 : vec3<f32> = vs_TEXCOORD7;
        let x_1201 : vec4<f32> = u_xlat11;
        let x_1203 : vec3<f32> = ((vec3<f32>(x_1196.x, x_1196.y, x_1196.w) * vec3<f32>(x_1198.z, x_1198.z, x_1198.z)) + vec3<f32>(x_1201.x, x_1201.y, x_1201.z));
        let x_1204 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1203.x, x_1203.y, x_1203.z, x_1204.w);
        let x_1206 : vec4<f32> = u_xlat11;
        let x_1208 : i32 = u_xlati50;
        let x_1211 : i32 = u_xlati50;
        let x_1215 : vec4<f32> = x_1142.x_AdditionalLightsWorldToLights[((x_1208 + 3i) / 4i)][((x_1211 + 3i) % 4i)];
        let x_1217 : vec3<f32> = (vec3<f32>(x_1206.x, x_1206.y, x_1206.z) + vec3<f32>(x_1215.x, x_1215.y, x_1215.w));
        let x_1218 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1217.x, x_1217.y, x_1217.z, x_1218.w);
        let x_1220 : vec4<f32> = u_xlat11;
        let x_1222 : vec4<f32> = u_xlat11;
        let x_1224 : vec2<f32> = (vec2<f32>(x_1220.x, x_1220.y) / vec2<f32>(x_1222.z, x_1222.z));
        let x_1225 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1224.x, x_1224.y, x_1225.z, x_1225.w);
        let x_1227 : vec4<f32> = u_xlat11;
        let x_1230 : vec2<f32> = ((vec2<f32>(x_1227.x, x_1227.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1231 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1230.x, x_1230.y, x_1231.z, x_1231.w);
        let x_1233 : vec4<f32> = u_xlat11;
        let x_1237 : vec2<f32> = clamp(vec2<f32>(x_1233.x, x_1233.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1238 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1237.x, x_1237.y, x_1238.z, x_1238.w);
        let x_1240 : u32 = u_xlatu46;
        let x_1243 : vec4<f32> = x_1142.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1240)];
        let x_1245 : vec4<f32> = u_xlat11;
        let x_1248 : u32 = u_xlatu46;
        let x_1251 : vec4<f32> = x_1142.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1248)];
        let x_1253 : vec2<f32> = ((vec2<f32>(x_1243.x, x_1243.y) * vec2<f32>(x_1245.x, x_1245.y)) + vec2<f32>(x_1251.z, x_1251.w));
        let x_1254 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1253.x, x_1253.y, x_1254.z, x_1254.w);
      } else {
        let x_1258 : i32 = u_xlati48;
        u_xlatb48 = (x_1258 == 1i);
        let x_1260 : bool = u_xlatb48;
        u_xlati48 = select(0i, 1i, x_1260);
        let x_1262 : i32 = u_xlati48;
        if ((x_1262 != 0i)) {
          let x_1267 : vec3<f32> = vs_TEXCOORD7;
          let x_1269 : i32 = u_xlati50;
          let x_1272 : i32 = u_xlati50;
          let x_1276 : vec4<f32> = x_1142.x_AdditionalLightsWorldToLights[((x_1269 + 1i) / 4i)][((x_1272 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1267.y, x_1267.y) * vec2<f32>(x_1276.x, x_1276.y));
          let x_1279 : i32 = u_xlati50;
          let x_1281 : i32 = u_xlati50;
          let x_1284 : vec4<f32> = x_1142.x_AdditionalLightsWorldToLights[(x_1279 / 4i)][(x_1281 % 4i)];
          let x_1286 : vec3<f32> = vs_TEXCOORD7;
          let x_1289 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1284.x, x_1284.y) * vec2<f32>(x_1286.x, x_1286.x)) + x_1289);
          let x_1291 : i32 = u_xlati50;
          let x_1294 : i32 = u_xlati50;
          let x_1298 : vec4<f32> = x_1142.x_AdditionalLightsWorldToLights[((x_1291 + 2i) / 4i)][((x_1294 + 2i) % 4i)];
          let x_1300 : vec3<f32> = vs_TEXCOORD7;
          let x_1303 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1298.x, x_1298.y) * vec2<f32>(x_1300.z, x_1300.z)) + x_1303);
          let x_1305 : vec2<f32> = u_xlat39;
          let x_1306 : i32 = u_xlati50;
          let x_1309 : i32 = u_xlati50;
          let x_1313 : vec4<f32> = x_1142.x_AdditionalLightsWorldToLights[((x_1306 + 3i) / 4i)][((x_1309 + 3i) % 4i)];
          u_xlat39 = (x_1305 + vec2<f32>(x_1313.x, x_1313.y));
          let x_1316 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1316 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1319 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1319);
          let x_1321 : u32 = u_xlatu46;
          let x_1324 : vec4<f32> = x_1142.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1321)];
          let x_1326 : vec2<f32> = u_xlat39;
          let x_1328 : u32 = u_xlatu46;
          let x_1331 : vec4<f32> = x_1142.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1328)];
          let x_1333 : vec2<f32> = ((vec2<f32>(x_1324.x, x_1324.y) * x_1326) + vec2<f32>(x_1331.z, x_1331.w));
          let x_1334 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1333.x, x_1333.y, x_1334.z, x_1334.w);
        } else {
          let x_1338 : vec3<f32> = vs_TEXCOORD7;
          let x_1340 : i32 = u_xlati50;
          let x_1343 : i32 = u_xlati50;
          let x_1347 : vec4<f32> = x_1142.x_AdditionalLightsWorldToLights[((x_1340 + 1i) / 4i)][((x_1343 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1338.y, x_1338.y, x_1338.y, x_1338.y) * x_1347);
          let x_1349 : i32 = u_xlati50;
          let x_1351 : i32 = u_xlati50;
          let x_1354 : vec4<f32> = x_1142.x_AdditionalLightsWorldToLights[(x_1349 / 4i)][(x_1351 % 4i)];
          let x_1355 : vec3<f32> = vs_TEXCOORD7;
          let x_1358 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1354 * vec4<f32>(x_1355.x, x_1355.x, x_1355.x, x_1355.x)) + x_1358);
          let x_1360 : i32 = u_xlati50;
          let x_1363 : i32 = u_xlati50;
          let x_1367 : vec4<f32> = x_1142.x_AdditionalLightsWorldToLights[((x_1360 + 2i) / 4i)][((x_1363 + 2i) % 4i)];
          let x_1368 : vec3<f32> = vs_TEXCOORD7;
          let x_1371 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1367 * vec4<f32>(x_1368.z, x_1368.z, x_1368.z, x_1368.z)) + x_1371);
          let x_1373 : vec4<f32> = u_xlat12;
          let x_1374 : i32 = u_xlati50;
          let x_1377 : i32 = u_xlati50;
          let x_1381 : vec4<f32> = x_1142.x_AdditionalLightsWorldToLights[((x_1374 + 3i) / 4i)][((x_1377 + 3i) % 4i)];
          u_xlat12 = (x_1373 + x_1381);
          let x_1383 : vec4<f32> = u_xlat12;
          let x_1385 : vec4<f32> = u_xlat12;
          let x_1387 : vec3<f32> = (vec3<f32>(x_1383.x, x_1383.y, x_1383.z) / vec3<f32>(x_1385.w, x_1385.w, x_1385.w));
          let x_1388 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1387.x, x_1387.y, x_1387.z, x_1388.w);
          let x_1390 : vec4<f32> = u_xlat12;
          let x_1392 : vec4<f32> = u_xlat12;
          u_xlat48 = dot(vec3<f32>(x_1390.x, x_1390.y, x_1390.z), vec3<f32>(x_1392.x, x_1392.y, x_1392.z));
          let x_1395 : f32 = u_xlat48;
          u_xlat48 = inverseSqrt(x_1395);
          let x_1397 : f32 = u_xlat48;
          let x_1399 : vec4<f32> = u_xlat12;
          let x_1401 : vec3<f32> = (vec3<f32>(x_1397, x_1397, x_1397) * vec3<f32>(x_1399.x, x_1399.y, x_1399.z));
          let x_1402 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1401.x, x_1401.y, x_1401.z, x_1402.w);
          let x_1404 : vec4<f32> = u_xlat12;
          u_xlat48 = dot(abs(vec3<f32>(x_1404.x, x_1404.y, x_1404.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1409 : f32 = u_xlat48;
          u_xlat48 = max(x_1409, 0.000001f);
          let x_1412 : f32 = u_xlat48;
          u_xlat48 = (1.0f / x_1412);
          let x_1415 : f32 = u_xlat48;
          let x_1417 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1415, x_1415, x_1415) * vec3<f32>(x_1417.z, x_1417.x, x_1417.y));
          let x_1421 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1421);
          let x_1425 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1425, 0.0f, 1.0f);
          let x_1429 : vec3<f32> = u_xlat13;
          let x_1432 : vec4<bool> = (vec4<f32>(x_1429.y, x_1429.z, x_1429.y, x_1429.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1432.x, x_1432.y);
          let x_1435 : bool = u_xlatb39.x;
          if (x_1435) {
            let x_1440 : f32 = u_xlat13.x;
            x_1436 = x_1440;
          } else {
            let x_1443 : f32 = u_xlat13.x;
            x_1436 = -(x_1443);
          }
          let x_1445 : f32 = x_1436;
          u_xlat39.x = x_1445;
          let x_1448 : bool = u_xlatb39.y;
          if (x_1448) {
            let x_1453 : f32 = u_xlat13.x;
            x_1449 = x_1453;
          } else {
            let x_1456 : f32 = u_xlat13.x;
            x_1449 = -(x_1456);
          }
          let x_1458 : f32 = x_1449;
          u_xlat39.y = x_1458;
          let x_1460 : vec4<f32> = u_xlat12;
          let x_1462 : f32 = u_xlat48;
          let x_1465 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1460.x, x_1460.y) * vec2<f32>(x_1462, x_1462)) + x_1465);
          let x_1467 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1467 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1470 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_1470, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1474 : u32 = u_xlatu46;
          let x_1477 : vec4<f32> = x_1142.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1474)];
          let x_1479 : vec2<f32> = u_xlat39;
          let x_1481 : u32 = u_xlatu46;
          let x_1484 : vec4<f32> = x_1142.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1481)];
          let x_1486 : vec2<f32> = ((vec2<f32>(x_1477.x, x_1477.y) * x_1479) + vec2<f32>(x_1484.z, x_1484.w));
          let x_1487 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1486.x, x_1486.y, x_1487.z, x_1487.w);
        }
      }
      let x_1494 : vec4<f32> = u_xlat11;
      let x_1497 : f32 = x_43.x_GlobalMipBias.x;
      let x_1498 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1494.x, x_1494.y), x_1497);
      u_xlat11 = x_1498;
      let x_1500 : bool = u_xlatb6.y;
      if (x_1500) {
        let x_1505 : f32 = u_xlat11.w;
        x_1501 = x_1505;
      } else {
        let x_1508 : f32 = u_xlat11.x;
        x_1501 = x_1508;
      }
      let x_1509 : f32 = x_1501;
      u_xlat48 = x_1509;
      let x_1511 : bool = u_xlatb6.x;
      if (x_1511) {
        let x_1515 : vec4<f32> = u_xlat11;
        x_1512 = vec3<f32>(x_1515.x, x_1515.y, x_1515.z);
      } else {
        let x_1518 : f32 = u_xlat48;
        x_1512 = vec3<f32>(x_1518, x_1518, x_1518);
      }
      let x_1520 : vec3<f32> = x_1512;
      let x_1521 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1520.x, x_1520.y, x_1520.z, x_1521.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1527 : vec4<f32> = u_xlat11;
    let x_1529 : u32 = u_xlatu46;
    let x_1532 : vec4<f32> = x_1038.x_AdditionalLightsColor[bitcast<i32>(x_1529)];
    let x_1534 : vec3<f32> = (vec3<f32>(x_1527.x, x_1527.y, x_1527.z) * vec3<f32>(x_1532.x, x_1532.y, x_1532.z));
    let x_1535 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1534.x, x_1534.y, x_1534.z, x_1535.w);
    let x_1537 : f32 = u_xlat32;
    let x_1539 : vec4<f32> = u_xlat11;
    let x_1541 : vec3<f32> = (vec3<f32>(x_1537, x_1537, x_1537) * vec3<f32>(x_1539.x, x_1539.y, x_1539.z));
    let x_1542 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1541.x, x_1541.y, x_1541.z, x_1542.w);
    let x_1544 : vec4<f32> = u_xlat2;
    let x_1546 : vec3<f32> = u_xlat10;
    u_xlat46 = dot(vec3<f32>(x_1544.x, x_1544.y, x_1544.z), x_1546);
    let x_1548 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1548, 0.0f, 1.0f);
    let x_1550 : f32 = u_xlat46;
    let x_1551 : f32 = u_xlat47;
    u_xlat46 = (x_1550 * x_1551);
    let x_1553 : f32 = u_xlat46;
    let x_1555 : vec4<f32> = u_xlat11;
    let x_1557 : vec3<f32> = (vec3<f32>(x_1553, x_1553, x_1553) * vec3<f32>(x_1555.x, x_1555.y, x_1555.z));
    let x_1558 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1557.x, x_1557.y, x_1557.z, x_1558.w);
    let x_1560 : vec3<f32> = u_xlat9;
    let x_1561 : f32 = u_xlat34;
    let x_1564 : vec3<f32> = u_xlat7;
    u_xlat9 = ((x_1560 * vec3<f32>(x_1561, x_1561, x_1561)) + x_1564);
    let x_1566 : vec3<f32> = u_xlat9;
    let x_1567 : vec3<f32> = u_xlat9;
    u_xlat46 = dot(x_1566, x_1567);
    let x_1569 : f32 = u_xlat46;
    u_xlat46 = max(x_1569, 1.17549435e-37f);
    let x_1571 : f32 = u_xlat46;
    u_xlat46 = inverseSqrt(x_1571);
    let x_1573 : f32 = u_xlat46;
    let x_1575 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1573, x_1573, x_1573) * x_1575);
    let x_1577 : vec4<f32> = u_xlat2;
    let x_1579 : vec3<f32> = u_xlat9;
    u_xlat46 = dot(vec3<f32>(x_1577.x, x_1577.y, x_1577.z), x_1579);
    let x_1581 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1581, 0.0f, 1.0f);
    let x_1583 : vec3<f32> = u_xlat10;
    let x_1584 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1583, x_1584);
    let x_1586 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1586, 0.0f, 1.0f);
    let x_1588 : f32 = u_xlat46;
    let x_1589 : f32 = u_xlat46;
    u_xlat46 = (x_1588 * x_1589);
    let x_1591 : f32 = u_xlat46;
    let x_1593 : f32 = u_xlat1.x;
    u_xlat46 = ((x_1591 * x_1593) + 1.000010014f);
    let x_1596 : f32 = u_xlat47;
    let x_1597 : f32 = u_xlat47;
    u_xlat47 = (x_1596 * x_1597);
    let x_1599 : f32 = u_xlat46;
    let x_1600 : f32 = u_xlat46;
    u_xlat46 = (x_1599 * x_1600);
    let x_1602 : f32 = u_xlat47;
    u_xlat47 = max(x_1602, 0.100000001f);
    let x_1604 : f32 = u_xlat46;
    let x_1605 : f32 = u_xlat47;
    u_xlat46 = (x_1604 * x_1605);
    let x_1607 : f32 = u_xlat45;
    let x_1608 : f32 = u_xlat46;
    u_xlat46 = (x_1607 * x_1608);
    let x_1610 : f32 = u_xlat18;
    let x_1611 : f32 = u_xlat46;
    u_xlat46 = (x_1610 / x_1611);
    let x_1613 : vec4<f32> = u_xlat0;
    let x_1615 : f32 = u_xlat46;
    let x_1618 : vec3<f32> = u_xlat5;
    u_xlat9 = ((vec3<f32>(x_1613.x, x_1613.y, x_1613.z) * vec3<f32>(x_1615, x_1615, x_1615)) + x_1618);
    let x_1620 : vec3<f32> = u_xlat9;
    let x_1621 : vec4<f32> = u_xlat11;
    let x_1624 : vec4<f32> = u_xlat8;
    let x_1626 : vec3<f32> = ((x_1620 * vec3<f32>(x_1621.x, x_1621.y, x_1621.z)) + vec3<f32>(x_1624.x, x_1624.y, x_1624.z));
    let x_1627 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1626.x, x_1626.y, x_1626.z, x_1627.w);

    continuing {
      let x_1629 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1629 + bitcast<u32>(1i));
    }
  }
  let x_1631 : vec3<f32> = u_xlat3;
  let x_1632 : vec4<f32> = u_xlat4;
  let x_1635 : vec3<f32> = u_xlat15;
  let x_1636 : vec3<f32> = ((x_1631 * vec3<f32>(x_1632.x, x_1632.x, x_1632.x)) + x_1635);
  let x_1637 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1636.x, x_1636.y, x_1636.z, x_1637.w);
  let x_1641 : vec4<f32> = u_xlat8;
  let x_1643 : vec4<f32> = u_xlat0;
  let x_1645 : vec3<f32> = (vec3<f32>(x_1641.x, x_1641.y, x_1641.z) + vec3<f32>(x_1643.x, x_1643.y, x_1643.z));
  let x_1646 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1645.x, x_1645.y, x_1645.z, x_1646.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD3_param : vec4<f32>, @location(4) vs_TEXCOORD7_param : vec3<f32>, @location(2) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD5_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  main_1();
  return main_out(SV_Target0);
}

