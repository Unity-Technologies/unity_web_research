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

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(2) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MetallicTex : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_94 : MainLightShadows;

@group(1) @binding(2) var<uniform> x_329 : UnityPerDraw;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_625 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainLightCookieTexture : sampler;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1096 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1200 : AdditionalLightsCookies;

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
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlatb3 : vec4<bool>;
  var u_xlatu15 : u32;
  var u_xlati15 : i32;
  var u_xlat44 : f32;
  var u_xlat17 : vec3<f32>;
  var u_xlat18 : f32;
  var u_xlat46 : f32;
  var u_xlat42 : f32;
  var u_xlat32 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat29 : vec2<f32>;
  var u_xlatb29 : vec2<bool>;
  var u_xlatb43 : bool;
  var x_572 : f32;
  var u_xlat43 : f32;
  var x_694 : f32;
  var x_705 : vec3<f32>;
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
  var x_1494 : f32;
  var x_1507 : f32;
  var x_1559 : f32;
  var x_1570 : vec3<f32>;
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
  let x_58 : vec4<f32> = vs_TEXCOORD0;
  let x_61 : f32 = x_44.x_GlobalMipBias.x;
  let x_62 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_58.x, x_58.y), x_61);
  u_xlat1.x = x_62.x;
  let x_69 : vec4<f32> = vs_TEXCOORD3;
  let x_71 : vec4<f32> = vs_TEXCOORD3;
  u_xlat15.x = dot(vec3<f32>(x_69.x, x_69.y, x_69.z), vec3<f32>(x_71.x, x_71.y, x_71.z));
  let x_76 : f32 = u_xlat15.x;
  u_xlat15.x = inverseSqrt(x_76);
  let x_80 : vec3<f32> = u_xlat15;
  let x_82 : vec4<f32> = vs_TEXCOORD3;
  let x_84 : vec3<f32> = (vec3<f32>(x_80.x, x_80.x, x_80.x) * vec3<f32>(x_82.x, x_82.y, x_82.z));
  let x_85 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_84.x, x_84.y, x_84.z, x_85.w);
  let x_89 : vec3<f32> = vs_TEXCOORD7;
  let x_97 : vec4<f32> = x_94.x_CascadeShadowSplitSpheres0;
  u_xlat15 = (x_89 + -(vec3<f32>(x_97.x, x_97.y, x_97.z)));
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
  let x_126 : vec3<f32> = (x_120 + -(vec3<f32>(x_123.x, x_123.y, x_123.z)));
  let x_127 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_126.x, x_126.y, x_126.z, x_127.w);
  let x_130 : vec3<f32> = u_xlat15;
  let x_131 : vec3<f32> = u_xlat15;
  u_xlat6.x = dot(x_130, x_131);
  let x_134 : vec3<f32> = u_xlat3;
  let x_135 : vec3<f32> = u_xlat3;
  u_xlat6.y = dot(x_134, x_135);
  let x_139 : vec4<f32> = u_xlat4;
  let x_141 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(vec3<f32>(x_139.x, x_139.y, x_139.z), vec3<f32>(x_141.x, x_141.y, x_141.z));
  let x_146 : vec4<f32> = u_xlat5;
  let x_148 : vec4<f32> = u_xlat5;
  u_xlat6.w = dot(vec3<f32>(x_146.x, x_146.y, x_146.z), vec3<f32>(x_148.x, x_148.y, x_148.z));
  let x_156 : vec4<f32> = u_xlat6;
  let x_159 : vec4<f32> = x_94.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_156 < x_159);
  let x_163 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_163);
  let x_168 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_168);
  let x_172 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_172);
  let x_176 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_176);
  let x_180 : bool = u_xlatb3.x;
  u_xlat15.x = select(-0.0f, -1.0f, x_180);
  let x_186 : bool = u_xlatb3.y;
  u_xlat15.y = select(-0.0f, -1.0f, x_186);
  let x_190 : bool = u_xlatb3.z;
  u_xlat15.z = select(-0.0f, -1.0f, x_190);
  let x_193 : vec3<f32> = u_xlat15;
  let x_194 : vec4<f32> = u_xlat4;
  u_xlat15 = (x_193 + vec3<f32>(x_194.y, x_194.z, x_194.w));
  let x_197 : vec3<f32> = u_xlat15;
  let x_199 : vec3<f32> = max(x_197, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_200 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_200.x, x_199.x, x_199.y, x_199.z);
  let x_202 : vec4<f32> = u_xlat4;
  u_xlat15.x = dot(x_202, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_210 : f32 = u_xlat15.x;
  u_xlat15.x = (-(x_210) + 4.0f);
  let x_217 : f32 = u_xlat15.x;
  u_xlatu15 = u32(x_217);
  let x_221 : u32 = u_xlatu15;
  u_xlati15 = (bitcast<i32>(x_221) << bitcast<u32>(2i));
  let x_224 : vec3<f32> = vs_TEXCOORD7;
  let x_227 : i32 = u_xlati15;
  let x_230 : i32 = u_xlati15;
  let x_234 : vec4<f32> = x_94.x_MainLightWorldToShadow[((x_227 + 1i) / 4i)][((x_230 + 1i) % 4i)];
  u_xlat3 = (vec3<f32>(x_224.y, x_224.y, x_224.y) * vec3<f32>(x_234.x, x_234.y, x_234.z));
  let x_237 : i32 = u_xlati15;
  let x_239 : i32 = u_xlati15;
  let x_242 : vec4<f32> = x_94.x_MainLightWorldToShadow[(x_237 / 4i)][(x_239 % 4i)];
  let x_244 : vec3<f32> = vs_TEXCOORD7;
  let x_247 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_242.x, x_242.y, x_242.z) * vec3<f32>(x_244.x, x_244.x, x_244.x)) + x_247);
  let x_249 : i32 = u_xlati15;
  let x_252 : i32 = u_xlati15;
  let x_256 : vec4<f32> = x_94.x_MainLightWorldToShadow[((x_249 + 2i) / 4i)][((x_252 + 2i) % 4i)];
  let x_258 : vec3<f32> = vs_TEXCOORD7;
  let x_261 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_256.x, x_256.y, x_256.z) * vec3<f32>(x_258.z, x_258.z, x_258.z)) + x_261);
  let x_263 : vec3<f32> = u_xlat3;
  let x_264 : i32 = u_xlati15;
  let x_267 : i32 = u_xlati15;
  let x_271 : vec4<f32> = x_94.x_MainLightWorldToShadow[((x_264 + 3i) / 4i)][((x_267 + 3i) % 4i)];
  u_xlat15 = (x_263 + vec3<f32>(x_271.x, x_271.y, x_271.z));
  let x_275 : f32 = vs_TEXCOORD7.y;
  let x_278 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat3.x = (x_275 * x_278);
  let x_282 : f32 = x_44.unity_MatrixV[0i].z;
  let x_284 : f32 = vs_TEXCOORD7.x;
  let x_287 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_282 * x_284) + x_287);
  let x_291 : f32 = x_44.unity_MatrixV[2i].z;
  let x_293 : f32 = vs_TEXCOORD7.z;
  let x_296 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_291 * x_293) + x_296);
  let x_300 : f32 = u_xlat3.x;
  let x_302 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat3.x = (x_300 + x_302);
  let x_306 : f32 = u_xlat3.x;
  let x_310 : f32 = x_44.x_ProjectionParams.y;
  u_xlat3.x = (-(x_306) + -(x_310));
  let x_315 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_315, 0.0f);
  let x_319 : f32 = u_xlat3.x;
  let x_322 : f32 = x_44.unity_FogParams.x;
  u_xlat3.x = (x_319 * x_322);
  u_xlat2.w = 1.0f;
  let x_332 : vec4<f32> = x_329.unity_SHAr;
  let x_333 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_332, x_333);
  let x_338 : vec4<f32> = x_329.unity_SHAg;
  let x_339 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_338, x_339);
  let x_344 : vec4<f32> = x_329.unity_SHAb;
  let x_345 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_344, x_345);
  let x_348 : vec4<f32> = u_xlat2;
  let x_350 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_348.y, x_348.z, x_348.z, x_348.x) * vec4<f32>(x_350.x, x_350.y, x_350.z, x_350.z));
  let x_355 : vec4<f32> = x_329.unity_SHBr;
  let x_356 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_355, x_356);
  let x_361 : vec4<f32> = x_329.unity_SHBg;
  let x_362 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_361, x_362);
  let x_367 : vec4<f32> = x_329.unity_SHBb;
  let x_368 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_367, x_368);
  let x_373 : f32 = u_xlat2.y;
  let x_375 : f32 = u_xlat2.y;
  u_xlat44 = (x_373 * x_375);
  let x_378 : f32 = u_xlat2.x;
  let x_380 : f32 = u_xlat2.x;
  let x_382 : f32 = u_xlat44;
  u_xlat44 = ((x_378 * x_380) + -(x_382));
  let x_388 : vec4<f32> = x_329.unity_SHC;
  let x_390 : f32 = u_xlat44;
  let x_393 : vec4<f32> = u_xlat6;
  u_xlat17 = ((vec3<f32>(x_388.x, x_388.y, x_388.z) * vec3<f32>(x_390, x_390, x_390)) + vec3<f32>(x_393.x, x_393.y, x_393.z));
  let x_396 : vec3<f32> = u_xlat17;
  let x_397 : vec4<f32> = u_xlat4;
  u_xlat17 = (x_396 + vec3<f32>(x_397.x, x_397.y, x_397.z));
  let x_400 : vec3<f32> = u_xlat17;
  u_xlat17 = max(x_400, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_404 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_405 : vec2<f32> = vec2<f32>(x_404.x, x_404.y);
  let x_409 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_405.x, x_405.y));
  let x_410 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_409.x, x_409.y, x_410.z, x_410.w);
  let x_412 : vec4<f32> = u_xlat4;
  let x_414 : vec4<f32> = hlslcc_FragCoord;
  let x_416 : vec2<f32> = (vec2<f32>(x_412.x, x_412.y) * vec2<f32>(x_414.x, x_414.y));
  let x_417 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_416.x, x_416.y, x_417.z, x_417.w);
  let x_420 : f32 = u_xlat4.y;
  let x_423 : f32 = x_44.x_ScaleBiasRt.x;
  let x_426 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat44 = ((x_420 * x_423) + x_426);
  let x_428 : f32 = u_xlat44;
  u_xlat4.z = (-(x_428) + 1.0f);
  let x_433 : f32 = u_xlat1.x;
  u_xlat44 = ((-(x_433) * 0.959999979f) + 0.959999979f);
  let x_439 : f32 = u_xlat44;
  u_xlat18 = (-(x_439) + 1.0f);
  let x_442 : vec4<f32> = u_xlat0;
  let x_444 : f32 = u_xlat44;
  let x_446 : vec3<f32> = (vec3<f32>(x_442.x, x_442.y, x_442.z) * vec3<f32>(x_444, x_444, x_444));
  let x_447 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_446.x, x_446.y, x_446.z, x_447.w);
  let x_449 : vec4<f32> = u_xlat0;
  let x_453 : vec3<f32> = (vec3<f32>(x_449.x, x_449.y, x_449.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_454 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_453.x, x_453.y, x_453.z, x_454.w);
  let x_456 : vec4<f32> = u_xlat1;
  let x_458 : vec4<f32> = u_xlat0;
  let x_463 : vec3<f32> = ((vec3<f32>(x_456.x, x_456.x, x_456.x) * vec3<f32>(x_458.x, x_458.y, x_458.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_464 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_463.x, x_463.y, x_463.z, x_464.w);
  let x_467 : f32 = u_xlat0.w;
  u_xlat1.x = (-(x_467) + 1.0f);
  let x_472 : f32 = u_xlat1.x;
  let x_474 : f32 = u_xlat1.x;
  u_xlat44 = (x_472 * x_474);
  let x_476 : f32 = u_xlat44;
  u_xlat44 = max(x_476, 0.0078125f);
  let x_480 : f32 = u_xlat44;
  let x_481 : f32 = u_xlat44;
  u_xlat46 = (x_480 * x_481);
  let x_485 : f32 = u_xlat0.w;
  let x_486 : f32 = u_xlat18;
  u_xlat42 = (x_485 + x_486);
  let x_488 : f32 = u_xlat42;
  u_xlat42 = clamp(x_488, 0.0f, 1.0f);
  let x_490 : f32 = u_xlat44;
  u_xlat18 = ((x_490 * 4.0f) + 2.0f);
  let x_498 : vec4<f32> = u_xlat4;
  let x_501 : f32 = x_44.x_GlobalMipBias.x;
  let x_502 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_498.x, x_498.z), x_501);
  u_xlat4.x = x_502.x;
  let x_507 : f32 = u_xlat4.x;
  u_xlat32 = (x_507 + -1.0f);
  let x_510 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_511 : f32 = u_xlat32;
  u_xlat32 = ((x_510 * x_511) + 1.0f);
  let x_515 : f32 = u_xlat4.x;
  u_xlat4.x = min(x_515, 1.0f);
  let x_519 : vec3<f32> = u_xlat15;
  let x_520 : vec2<f32> = vec2<f32>(x_519.x, x_519.y);
  let x_522 : f32 = u_xlat15.z;
  txVec0 = vec3<f32>(x_520.x, x_520.y, x_522);
  let x_534 : vec3<f32> = txVec0;
  let x_536 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_534.xy, x_534.z);
  u_xlat15.x = x_536;
  let x_541 : f32 = x_94.x_MainLightShadowParams.x;
  u_xlat29.x = (-(x_541) + 1.0f);
  let x_546 : f32 = u_xlat15.x;
  let x_548 : f32 = x_94.x_MainLightShadowParams.x;
  let x_551 : f32 = u_xlat29.x;
  u_xlat15.x = ((x_546 * x_548) + x_551);
  let x_558 : f32 = u_xlat15.z;
  u_xlatb29.x = (0.0f >= x_558);
  let x_563 : f32 = u_xlat15.z;
  u_xlatb43 = (x_563 >= 1.0f);
  let x_565 : bool = u_xlatb43;
  let x_567 : bool = u_xlatb29.x;
  u_xlatb29.x = (x_565 | x_567);
  let x_571 : bool = u_xlatb29.x;
  if (x_571) {
    x_572 = 1.0f;
  } else {
    let x_577 : f32 = u_xlat15.x;
    x_572 = x_577;
  }
  let x_578 : f32 = x_572;
  u_xlat15.x = x_578;
  let x_580 : vec3<f32> = vs_TEXCOORD7;
  let x_584 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_586 : vec3<f32> = (x_580 + -(x_584));
  let x_587 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_586.x, x_586.y, x_586.z, x_587.w);
  let x_589 : vec4<f32> = u_xlat6;
  let x_591 : vec4<f32> = u_xlat6;
  u_xlat29.x = dot(vec3<f32>(x_589.x, x_589.y, x_589.z), vec3<f32>(x_591.x, x_591.y, x_591.z));
  let x_596 : f32 = u_xlat29.x;
  let x_598 : f32 = x_94.x_MainLightShadowParams.z;
  let x_601 : f32 = x_94.x_MainLightShadowParams.w;
  u_xlat29.x = ((x_596 * x_598) + x_601);
  let x_605 : f32 = u_xlat29.x;
  u_xlat29.x = clamp(x_605, 0.0f, 1.0f);
  let x_610 : f32 = u_xlat15.x;
  u_xlat43 = (-(x_610) + 1.0f);
  let x_614 : f32 = u_xlat29.x;
  let x_615 : f32 = u_xlat43;
  let x_618 : f32 = u_xlat15.x;
  u_xlat15.x = ((x_614 * x_615) + x_618);
  let x_627 : f32 = x_625.x_MainLightCookieTextureFormat;
  u_xlatb29.x = !((x_627 == -1.0f));
  let x_631 : bool = u_xlatb29.x;
  if (x_631) {
    let x_634 : vec3<f32> = vs_TEXCOORD7;
    let x_637 : vec4<f32> = x_625.x_MainLightWorldToLight[1i];
    u_xlat29 = (vec2<f32>(x_634.y, x_634.y) * vec2<f32>(x_637.x, x_637.y));
    let x_641 : vec4<f32> = x_625.x_MainLightWorldToLight[0i];
    let x_643 : vec3<f32> = vs_TEXCOORD7;
    let x_646 : vec2<f32> = u_xlat29;
    u_xlat29 = ((vec2<f32>(x_641.x, x_641.y) * vec2<f32>(x_643.x, x_643.x)) + x_646);
    let x_649 : vec4<f32> = x_625.x_MainLightWorldToLight[2i];
    let x_651 : vec3<f32> = vs_TEXCOORD7;
    let x_654 : vec2<f32> = u_xlat29;
    u_xlat29 = ((vec2<f32>(x_649.x, x_649.y) * vec2<f32>(x_651.z, x_651.z)) + x_654);
    let x_656 : vec2<f32> = u_xlat29;
    let x_658 : vec4<f32> = x_625.x_MainLightWorldToLight[3i];
    u_xlat29 = (x_656 + vec2<f32>(x_658.x, x_658.y));
    let x_661 : vec2<f32> = u_xlat29;
    u_xlat29 = ((x_661 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_671 : vec2<f32> = u_xlat29;
    let x_673 : f32 = x_44.x_GlobalMipBias.x;
    let x_674 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_671, x_673);
    u_xlat6 = x_674;
    let x_676 : f32 = x_625.x_MainLightCookieTextureFormat;
    let x_678 : f32 = x_625.x_MainLightCookieTextureFormat;
    let x_680 : f32 = x_625.x_MainLightCookieTextureFormat;
    let x_682 : f32 = x_625.x_MainLightCookieTextureFormat;
    let x_683 : vec4<f32> = vec4<f32>(x_676, x_678, x_680, x_682);
    let x_690 : vec4<bool> = (vec4<f32>(x_683.x, x_683.y, x_683.z, x_683.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb29 = vec2<bool>(x_690.x, x_690.y);
    let x_693 : bool = u_xlatb29.y;
    if (x_693) {
      let x_698 : f32 = u_xlat6.w;
      x_694 = x_698;
    } else {
      let x_701 : f32 = u_xlat6.x;
      x_694 = x_701;
    }
    let x_702 : f32 = x_694;
    u_xlat43 = x_702;
    let x_704 : bool = u_xlatb29.x;
    if (x_704) {
      let x_708 : vec4<f32> = u_xlat6;
      x_705 = vec3<f32>(x_708.x, x_708.y, x_708.z);
    } else {
      let x_711 : f32 = u_xlat43;
      x_705 = vec3<f32>(x_711, x_711, x_711);
    }
    let x_713 : vec3<f32> = x_705;
    let x_714 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_713.x, x_713.y, x_713.z, x_714.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_720 : vec4<f32> = u_xlat6;
  let x_723 : vec4<f32> = x_44.x_MainLightColor;
  let x_725 : vec3<f32> = (vec3<f32>(x_720.x, x_720.y, x_720.z) * vec3<f32>(x_723.x, x_723.y, x_723.z));
  let x_726 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_725.x, x_725.y, x_725.z, x_726.w);
  let x_728 : f32 = u_xlat32;
  let x_730 : vec4<f32> = u_xlat6;
  let x_732 : vec3<f32> = (vec3<f32>(x_728, x_728, x_728) * vec3<f32>(x_730.x, x_730.y, x_730.z));
  let x_733 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_732.x, x_732.y, x_732.z, x_733.w);
  let x_737 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_737;
  let x_741 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_741;
  let x_745 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_745;
  let x_747 : vec3<f32> = u_xlat7;
  let x_749 : vec4<f32> = u_xlat2;
  u_xlat29.x = dot(-(x_747), vec3<f32>(x_749.x, x_749.y, x_749.z));
  let x_754 : f32 = u_xlat29.x;
  let x_756 : f32 = u_xlat29.x;
  u_xlat29.x = (x_754 + x_756);
  let x_760 : vec4<f32> = u_xlat2;
  let x_762 : vec2<f32> = u_xlat29;
  let x_766 : vec3<f32> = u_xlat7;
  let x_768 : vec3<f32> = ((vec3<f32>(x_760.x, x_760.y, x_760.z) * -(vec3<f32>(x_762.x, x_762.x, x_762.x))) + -(x_766));
  let x_769 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_768.x, x_768.y, x_768.z, x_769.w);
  let x_771 : vec4<f32> = u_xlat2;
  let x_773 : vec3<f32> = u_xlat7;
  u_xlat29.x = dot(vec3<f32>(x_771.x, x_771.y, x_771.z), x_773);
  let x_777 : f32 = u_xlat29.x;
  u_xlat29.x = clamp(x_777, 0.0f, 1.0f);
  let x_781 : f32 = u_xlat29.x;
  u_xlat29.x = (-(x_781) + 1.0f);
  let x_786 : f32 = u_xlat29.x;
  let x_788 : f32 = u_xlat29.x;
  u_xlat1.z = (x_786 * x_788);
  let x_792 : f32 = u_xlat1.x;
  u_xlat1.w = ((-(x_792) * 0.699999988f) + 1.700000048f);
  let x_799 : vec4<f32> = u_xlat1;
  let x_801 : vec4<f32> = u_xlat1;
  let x_803 : vec2<f32> = (vec2<f32>(x_799.w, x_799.z) * vec2<f32>(x_801.x, x_801.z));
  let x_804 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_803.x, x_804.y, x_803.y, x_804.w);
  let x_807 : f32 = u_xlat1.x;
  u_xlat1.x = (x_807 * 6.0f);
  let x_819 : vec4<f32> = u_xlat8;
  let x_822 : f32 = u_xlat1.x;
  let x_823 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_819.x, x_819.y, x_819.z), x_822);
  u_xlat8 = x_823;
  let x_825 : f32 = u_xlat8.w;
  u_xlat1.x = (x_825 + -1.0f);
  let x_829 : f32 = x_329.unity_SpecCube0_HDR.w;
  let x_831 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_829 * x_831) + 1.0f);
  let x_836 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_836, 0.0f);
  let x_840 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_840);
  let x_844 : f32 = u_xlat1.x;
  let x_846 : f32 = x_329.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_844 * x_846);
  let x_850 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_850);
  let x_854 : f32 = u_xlat1.x;
  let x_856 : f32 = x_329.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_854 * x_856);
  let x_859 : vec4<f32> = u_xlat8;
  let x_861 : vec4<f32> = u_xlat1;
  let x_863 : vec3<f32> = (vec3<f32>(x_859.x, x_859.y, x_859.z) * vec3<f32>(x_861.x, x_861.x, x_861.x));
  let x_864 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_863.x, x_863.y, x_863.z, x_864.w);
  let x_866 : f32 = u_xlat44;
  let x_868 : f32 = u_xlat44;
  let x_872 : vec2<f32> = ((vec2<f32>(x_866, x_866) * vec2<f32>(x_868, x_868)) + vec2<f32>(-1.0f, 1.0f));
  let x_873 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_872.x, x_873.y, x_873.z, x_872.y);
  let x_876 : f32 = u_xlat1.w;
  u_xlat43 = (1.0f / x_876);
  let x_879 : vec4<f32> = u_xlat0;
  let x_882 : f32 = u_xlat42;
  u_xlat9 = (-(vec3<f32>(x_879.x, x_879.y, x_879.z)) + vec3<f32>(x_882, x_882, x_882));
  let x_885 : vec4<f32> = u_xlat1;
  let x_887 : vec3<f32> = u_xlat9;
  let x_889 : vec4<f32> = u_xlat0;
  u_xlat9 = ((vec3<f32>(x_885.z, x_885.z, x_885.z) * x_887) + vec3<f32>(x_889.x, x_889.y, x_889.z));
  let x_892 : f32 = u_xlat43;
  let x_894 : vec3<f32> = u_xlat9;
  u_xlat9 = (vec3<f32>(x_892, x_892, x_892) * x_894);
  let x_896 : vec4<f32> = u_xlat8;
  let x_898 : vec3<f32> = u_xlat9;
  let x_899 : vec3<f32> = (vec3<f32>(x_896.x, x_896.y, x_896.z) * x_898);
  let x_900 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_899.x, x_899.y, x_899.z, x_900.w);
  let x_902 : vec3<f32> = u_xlat17;
  let x_903 : vec4<f32> = u_xlat5;
  let x_906 : vec4<f32> = u_xlat8;
  u_xlat17 = ((x_902 * vec3<f32>(x_903.x, x_903.y, x_903.z)) + vec3<f32>(x_906.x, x_906.y, x_906.z));
  let x_910 : f32 = u_xlat15.x;
  let x_912 : f32 = x_329.unity_LightData.z;
  u_xlat42 = (x_910 * x_912);
  let x_914 : vec4<f32> = u_xlat2;
  let x_917 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat15.x = dot(vec3<f32>(x_914.x, x_914.y, x_914.z), vec3<f32>(x_917.x, x_917.y, x_917.z));
  let x_922 : f32 = u_xlat15.x;
  u_xlat15.x = clamp(x_922, 0.0f, 1.0f);
  let x_925 : f32 = u_xlat42;
  let x_927 : f32 = u_xlat15.x;
  u_xlat42 = (x_925 * x_927);
  let x_929 : f32 = u_xlat42;
  let x_931 : vec4<f32> = u_xlat6;
  u_xlat15 = (vec3<f32>(x_929, x_929, x_929) * vec3<f32>(x_931.x, x_931.y, x_931.z));
  let x_934 : vec3<f32> = u_xlat7;
  let x_936 : vec4<f32> = x_44.x_MainLightPosition;
  let x_938 : vec3<f32> = (x_934 + vec3<f32>(x_936.x, x_936.y, x_936.z));
  let x_939 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_938.x, x_938.y, x_938.z, x_939.w);
  let x_941 : vec4<f32> = u_xlat6;
  let x_943 : vec4<f32> = u_xlat6;
  u_xlat42 = dot(vec3<f32>(x_941.x, x_941.y, x_941.z), vec3<f32>(x_943.x, x_943.y, x_943.z));
  let x_946 : f32 = u_xlat42;
  u_xlat42 = max(x_946, 1.17549435e-37f);
  let x_949 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_949);
  let x_951 : f32 = u_xlat42;
  let x_953 : vec4<f32> = u_xlat6;
  let x_955 : vec3<f32> = (vec3<f32>(x_951, x_951, x_951) * vec3<f32>(x_953.x, x_953.y, x_953.z));
  let x_956 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_955.x, x_955.y, x_955.z, x_956.w);
  let x_958 : vec4<f32> = u_xlat2;
  let x_960 : vec4<f32> = u_xlat6;
  u_xlat42 = dot(vec3<f32>(x_958.x, x_958.y, x_958.z), vec3<f32>(x_960.x, x_960.y, x_960.z));
  let x_963 : f32 = u_xlat42;
  u_xlat42 = clamp(x_963, 0.0f, 1.0f);
  let x_966 : vec4<f32> = x_44.x_MainLightPosition;
  let x_968 : vec4<f32> = u_xlat6;
  u_xlat44 = dot(vec3<f32>(x_966.x, x_966.y, x_966.z), vec3<f32>(x_968.x, x_968.y, x_968.z));
  let x_971 : f32 = u_xlat44;
  u_xlat44 = clamp(x_971, 0.0f, 1.0f);
  let x_973 : f32 = u_xlat42;
  let x_974 : f32 = u_xlat42;
  u_xlat42 = (x_973 * x_974);
  let x_976 : f32 = u_xlat42;
  let x_978 : f32 = u_xlat1.x;
  u_xlat42 = ((x_976 * x_978) + 1.000010014f);
  let x_982 : f32 = u_xlat44;
  let x_983 : f32 = u_xlat44;
  u_xlat44 = (x_982 * x_983);
  let x_985 : f32 = u_xlat42;
  let x_986 : f32 = u_xlat42;
  u_xlat42 = (x_985 * x_986);
  let x_988 : f32 = u_xlat44;
  u_xlat44 = max(x_988, 0.100000001f);
  let x_991 : f32 = u_xlat42;
  let x_992 : f32 = u_xlat44;
  u_xlat42 = (x_991 * x_992);
  let x_994 : f32 = u_xlat18;
  let x_995 : f32 = u_xlat42;
  u_xlat42 = (x_994 * x_995);
  let x_997 : f32 = u_xlat46;
  let x_998 : f32 = u_xlat42;
  u_xlat42 = (x_997 / x_998);
  let x_1000 : vec4<f32> = u_xlat0;
  let x_1002 : f32 = u_xlat42;
  let x_1005 : vec4<f32> = u_xlat5;
  let x_1007 : vec3<f32> = ((vec3<f32>(x_1000.x, x_1000.y, x_1000.z) * vec3<f32>(x_1002, x_1002, x_1002)) + vec3<f32>(x_1005.x, x_1005.y, x_1005.z));
  let x_1008 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1007.x, x_1007.y, x_1007.z, x_1008.w);
  let x_1010 : vec3<f32> = u_xlat15;
  let x_1011 : vec4<f32> = u_xlat6;
  u_xlat15 = (x_1010 * vec3<f32>(x_1011.x, x_1011.y, x_1011.z));
  let x_1015 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1017 : f32 = x_329.unity_LightData.y;
  u_xlat42 = min(x_1015, x_1017);
  let x_1020 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_1020));
  let x_1025 : f32 = x_625.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1027 : f32 = x_625.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1029 : f32 = x_625.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1031 : f32 = x_625.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1032 : vec4<f32> = vec4<f32>(x_1025, x_1027, x_1029, x_1031);
  let x_1039 : vec4<bool> = (vec4<f32>(x_1032.x, x_1032.y, x_1032.z, x_1032.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_1039.x, x_1039.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1050 : u32 = u_xlatu_loop_1;
    let x_1051 : u32 = u_xlatu42;
    if ((x_1050 < x_1051)) {
    } else {
      break;
    }
    let x_1054 : u32 = u_xlatu_loop_1;
    u_xlatu47 = (x_1054 >> 2u);
    let x_1057 : u32 = u_xlatu_loop_1;
    u_xlati34 = bitcast<i32>((x_1057 & 3u));
    let x_1061 : u32 = u_xlatu47;
    let x_1064 : vec4<f32> = x_329.unity_LightIndices[bitcast<i32>(x_1061)];
    let x_1074 : i32 = u_xlati34;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1079 : vec4<u32> = indexable[x_1074];
    u_xlat47 = dot(x_1064, bitcast<vec4<f32>>(x_1079));
    let x_1082 : f32 = u_xlat47;
    u_xlatu47 = bitcast<u32>(i32(x_1082));
    let x_1085 : vec3<f32> = vs_TEXCOORD7;
    let x_1097 : u32 = u_xlatu47;
    let x_1100 : vec4<f32> = x_1096.x_AdditionalLightsPosition[bitcast<i32>(x_1097)];
    let x_1103 : u32 = u_xlatu47;
    let x_1106 : vec4<f32> = x_1096.x_AdditionalLightsPosition[bitcast<i32>(x_1103)];
    u_xlat9 = ((-(x_1085) * vec3<f32>(x_1100.w, x_1100.w, x_1100.w)) + vec3<f32>(x_1106.x, x_1106.y, x_1106.z));
    let x_1110 : vec3<f32> = u_xlat9;
    let x_1111 : vec3<f32> = u_xlat9;
    u_xlat34 = dot(x_1110, x_1111);
    let x_1113 : f32 = u_xlat34;
    u_xlat34 = max(x_1113, 6.10351562e-05f);
    let x_1117 : f32 = u_xlat34;
    u_xlat48 = inverseSqrt(x_1117);
    let x_1120 : f32 = u_xlat48;
    let x_1122 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1120, x_1120, x_1120) * x_1122);
    let x_1125 : f32 = u_xlat34;
    u_xlat49 = (1.0f / x_1125);
    let x_1127 : f32 = u_xlat34;
    let x_1128 : u32 = u_xlatu47;
    let x_1131 : f32 = x_1096.x_AdditionalLightsAttenuation[bitcast<i32>(x_1128)].x;
    u_xlat34 = (x_1127 * x_1131);
    let x_1133 : f32 = u_xlat34;
    let x_1135 : f32 = u_xlat34;
    u_xlat34 = ((-(x_1133) * x_1135) + 1.0f);
    let x_1138 : f32 = u_xlat34;
    u_xlat34 = max(x_1138, 0.0f);
    let x_1140 : f32 = u_xlat34;
    let x_1141 : f32 = u_xlat34;
    u_xlat34 = (x_1140 * x_1141);
    let x_1143 : f32 = u_xlat34;
    let x_1144 : f32 = u_xlat49;
    u_xlat34 = (x_1143 * x_1144);
    let x_1146 : u32 = u_xlatu47;
    let x_1149 : vec4<f32> = x_1096.x_AdditionalLightsSpotDir[bitcast<i32>(x_1146)];
    let x_1151 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_1149.x, x_1149.y, x_1149.z), x_1151);
    let x_1153 : f32 = u_xlat49;
    let x_1154 : u32 = u_xlatu47;
    let x_1157 : f32 = x_1096.x_AdditionalLightsAttenuation[bitcast<i32>(x_1154)].z;
    let x_1159 : u32 = u_xlatu47;
    let x_1162 : f32 = x_1096.x_AdditionalLightsAttenuation[bitcast<i32>(x_1159)].w;
    u_xlat49 = ((x_1153 * x_1157) + x_1162);
    let x_1164 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1164, 0.0f, 1.0f);
    let x_1166 : f32 = u_xlat49;
    let x_1167 : f32 = u_xlat49;
    u_xlat49 = (x_1166 * x_1167);
    let x_1169 : f32 = u_xlat34;
    let x_1170 : f32 = u_xlat49;
    u_xlat34 = (x_1169 * x_1170);
    let x_1173 : u32 = u_xlatu47;
    u_xlatu49 = (x_1173 >> 5u);
    let x_1176 : u32 = u_xlatu47;
    u_xlati50 = (1i << bitcast<u32>((bitcast<i32>(x_1176) & 31i)));
    let x_1182 : i32 = u_xlati50;
    let x_1184 : u32 = u_xlatu49;
    let x_1187 : f32 = x_625.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1184)].el;
    u_xlati49 = bitcast<i32>((bitcast<u32>(x_1182) & bitcast<u32>(x_1187)));
    let x_1191 : i32 = u_xlati49;
    if ((x_1191 != 0i)) {
      let x_1201 : u32 = u_xlatu47;
      let x_1204 : f32 = x_1200.x_AdditionalLightsLightTypes[bitcast<i32>(x_1201)].el;
      u_xlati49 = i32(x_1204);
      let x_1206 : i32 = u_xlati49;
      u_xlati50 = select(1i, 0i, (x_1206 != 0i));
      let x_1210 : u32 = u_xlatu47;
      u_xlati51 = (bitcast<i32>(x_1210) << bitcast<u32>(2i));
      let x_1213 : i32 = u_xlati50;
      if ((x_1213 != 0i)) {
        let x_1218 : vec3<f32> = vs_TEXCOORD7;
        let x_1220 : i32 = u_xlati51;
        let x_1223 : i32 = u_xlati51;
        let x_1227 : vec4<f32> = x_1200.x_AdditionalLightsWorldToLights[((x_1220 + 1i) / 4i)][((x_1223 + 1i) % 4i)];
        let x_1229 : vec3<f32> = (vec3<f32>(x_1218.y, x_1218.y, x_1218.y) * vec3<f32>(x_1227.x, x_1227.y, x_1227.w));
        let x_1230 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1229.x, x_1229.y, x_1229.z, x_1230.w);
        let x_1232 : i32 = u_xlati51;
        let x_1234 : i32 = u_xlati51;
        let x_1237 : vec4<f32> = x_1200.x_AdditionalLightsWorldToLights[(x_1232 / 4i)][(x_1234 % 4i)];
        let x_1239 : vec3<f32> = vs_TEXCOORD7;
        let x_1242 : vec4<f32> = u_xlat11;
        let x_1244 : vec3<f32> = ((vec3<f32>(x_1237.x, x_1237.y, x_1237.w) * vec3<f32>(x_1239.x, x_1239.x, x_1239.x)) + vec3<f32>(x_1242.x, x_1242.y, x_1242.z));
        let x_1245 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1244.x, x_1244.y, x_1244.z, x_1245.w);
        let x_1247 : i32 = u_xlati51;
        let x_1250 : i32 = u_xlati51;
        let x_1254 : vec4<f32> = x_1200.x_AdditionalLightsWorldToLights[((x_1247 + 2i) / 4i)][((x_1250 + 2i) % 4i)];
        let x_1256 : vec3<f32> = vs_TEXCOORD7;
        let x_1259 : vec4<f32> = u_xlat11;
        let x_1261 : vec3<f32> = ((vec3<f32>(x_1254.x, x_1254.y, x_1254.w) * vec3<f32>(x_1256.z, x_1256.z, x_1256.z)) + vec3<f32>(x_1259.x, x_1259.y, x_1259.z));
        let x_1262 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1261.x, x_1261.y, x_1261.z, x_1262.w);
        let x_1264 : vec4<f32> = u_xlat11;
        let x_1266 : i32 = u_xlati51;
        let x_1269 : i32 = u_xlati51;
        let x_1273 : vec4<f32> = x_1200.x_AdditionalLightsWorldToLights[((x_1266 + 3i) / 4i)][((x_1269 + 3i) % 4i)];
        let x_1275 : vec3<f32> = (vec3<f32>(x_1264.x, x_1264.y, x_1264.z) + vec3<f32>(x_1273.x, x_1273.y, x_1273.w));
        let x_1276 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1275.x, x_1275.y, x_1275.z, x_1276.w);
        let x_1278 : vec4<f32> = u_xlat11;
        let x_1280 : vec4<f32> = u_xlat11;
        let x_1282 : vec2<f32> = (vec2<f32>(x_1278.x, x_1278.y) / vec2<f32>(x_1280.z, x_1280.z));
        let x_1283 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1282.x, x_1282.y, x_1283.z, x_1283.w);
        let x_1285 : vec4<f32> = u_xlat11;
        let x_1288 : vec2<f32> = ((vec2<f32>(x_1285.x, x_1285.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1289 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1288.x, x_1288.y, x_1289.z, x_1289.w);
        let x_1291 : vec4<f32> = u_xlat11;
        let x_1295 : vec2<f32> = clamp(vec2<f32>(x_1291.x, x_1291.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1296 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1295.x, x_1295.y, x_1296.z, x_1296.w);
        let x_1298 : u32 = u_xlatu47;
        let x_1301 : vec4<f32> = x_1200.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1298)];
        let x_1303 : vec4<f32> = u_xlat11;
        let x_1306 : u32 = u_xlatu47;
        let x_1309 : vec4<f32> = x_1200.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1306)];
        let x_1311 : vec2<f32> = ((vec2<f32>(x_1301.x, x_1301.y) * vec2<f32>(x_1303.x, x_1303.y)) + vec2<f32>(x_1309.z, x_1309.w));
        let x_1312 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1311.x, x_1311.y, x_1312.z, x_1312.w);
      } else {
        let x_1316 : i32 = u_xlati49;
        u_xlatb49 = (x_1316 == 1i);
        let x_1318 : bool = u_xlatb49;
        u_xlati49 = select(0i, 1i, x_1318);
        let x_1320 : i32 = u_xlati49;
        if ((x_1320 != 0i)) {
          let x_1325 : vec3<f32> = vs_TEXCOORD7;
          let x_1327 : i32 = u_xlati51;
          let x_1330 : i32 = u_xlati51;
          let x_1334 : vec4<f32> = x_1200.x_AdditionalLightsWorldToLights[((x_1327 + 1i) / 4i)][((x_1330 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1325.y, x_1325.y) * vec2<f32>(x_1334.x, x_1334.y));
          let x_1337 : i32 = u_xlati51;
          let x_1339 : i32 = u_xlati51;
          let x_1342 : vec4<f32> = x_1200.x_AdditionalLightsWorldToLights[(x_1337 / 4i)][(x_1339 % 4i)];
          let x_1344 : vec3<f32> = vs_TEXCOORD7;
          let x_1347 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1342.x, x_1342.y) * vec2<f32>(x_1344.x, x_1344.x)) + x_1347);
          let x_1349 : i32 = u_xlati51;
          let x_1352 : i32 = u_xlati51;
          let x_1356 : vec4<f32> = x_1200.x_AdditionalLightsWorldToLights[((x_1349 + 2i) / 4i)][((x_1352 + 2i) % 4i)];
          let x_1358 : vec3<f32> = vs_TEXCOORD7;
          let x_1361 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1356.x, x_1356.y) * vec2<f32>(x_1358.z, x_1358.z)) + x_1361);
          let x_1363 : vec2<f32> = u_xlat39;
          let x_1364 : i32 = u_xlati51;
          let x_1367 : i32 = u_xlati51;
          let x_1371 : vec4<f32> = x_1200.x_AdditionalLightsWorldToLights[((x_1364 + 3i) / 4i)][((x_1367 + 3i) % 4i)];
          u_xlat39 = (x_1363 + vec2<f32>(x_1371.x, x_1371.y));
          let x_1374 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1374 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1377 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1377);
          let x_1379 : u32 = u_xlatu47;
          let x_1382 : vec4<f32> = x_1200.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1379)];
          let x_1384 : vec2<f32> = u_xlat39;
          let x_1386 : u32 = u_xlatu47;
          let x_1389 : vec4<f32> = x_1200.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1386)];
          let x_1391 : vec2<f32> = ((vec2<f32>(x_1382.x, x_1382.y) * x_1384) + vec2<f32>(x_1389.z, x_1389.w));
          let x_1392 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1391.x, x_1391.y, x_1392.z, x_1392.w);
        } else {
          let x_1396 : vec3<f32> = vs_TEXCOORD7;
          let x_1398 : i32 = u_xlati51;
          let x_1401 : i32 = u_xlati51;
          let x_1405 : vec4<f32> = x_1200.x_AdditionalLightsWorldToLights[((x_1398 + 1i) / 4i)][((x_1401 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1396.y, x_1396.y, x_1396.y, x_1396.y) * x_1405);
          let x_1407 : i32 = u_xlati51;
          let x_1409 : i32 = u_xlati51;
          let x_1412 : vec4<f32> = x_1200.x_AdditionalLightsWorldToLights[(x_1407 / 4i)][(x_1409 % 4i)];
          let x_1413 : vec3<f32> = vs_TEXCOORD7;
          let x_1416 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1412 * vec4<f32>(x_1413.x, x_1413.x, x_1413.x, x_1413.x)) + x_1416);
          let x_1418 : i32 = u_xlati51;
          let x_1421 : i32 = u_xlati51;
          let x_1425 : vec4<f32> = x_1200.x_AdditionalLightsWorldToLights[((x_1418 + 2i) / 4i)][((x_1421 + 2i) % 4i)];
          let x_1426 : vec3<f32> = vs_TEXCOORD7;
          let x_1429 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1425 * vec4<f32>(x_1426.z, x_1426.z, x_1426.z, x_1426.z)) + x_1429);
          let x_1431 : vec4<f32> = u_xlat12;
          let x_1432 : i32 = u_xlati51;
          let x_1435 : i32 = u_xlati51;
          let x_1439 : vec4<f32> = x_1200.x_AdditionalLightsWorldToLights[((x_1432 + 3i) / 4i)][((x_1435 + 3i) % 4i)];
          u_xlat12 = (x_1431 + x_1439);
          let x_1441 : vec4<f32> = u_xlat12;
          let x_1443 : vec4<f32> = u_xlat12;
          let x_1445 : vec3<f32> = (vec3<f32>(x_1441.x, x_1441.y, x_1441.z) / vec3<f32>(x_1443.w, x_1443.w, x_1443.w));
          let x_1446 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1445.x, x_1445.y, x_1445.z, x_1446.w);
          let x_1448 : vec4<f32> = u_xlat12;
          let x_1450 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(vec3<f32>(x_1448.x, x_1448.y, x_1448.z), vec3<f32>(x_1450.x, x_1450.y, x_1450.z));
          let x_1453 : f32 = u_xlat49;
          u_xlat49 = inverseSqrt(x_1453);
          let x_1455 : f32 = u_xlat49;
          let x_1457 : vec4<f32> = u_xlat12;
          let x_1459 : vec3<f32> = (vec3<f32>(x_1455, x_1455, x_1455) * vec3<f32>(x_1457.x, x_1457.y, x_1457.z));
          let x_1460 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1459.x, x_1459.y, x_1459.z, x_1460.w);
          let x_1462 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(abs(vec3<f32>(x_1462.x, x_1462.y, x_1462.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1467 : f32 = u_xlat49;
          u_xlat49 = max(x_1467, 0.000001f);
          let x_1470 : f32 = u_xlat49;
          u_xlat49 = (1.0f / x_1470);
          let x_1473 : f32 = u_xlat49;
          let x_1475 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1473, x_1473, x_1473) * vec3<f32>(x_1475.z, x_1475.x, x_1475.y));
          let x_1479 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1479);
          let x_1483 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1483, 0.0f, 1.0f);
          let x_1487 : vec3<f32> = u_xlat13;
          let x_1490 : vec4<bool> = (vec4<f32>(x_1487.y, x_1487.z, x_1487.y, x_1487.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1490.x, x_1490.y);
          let x_1493 : bool = u_xlatb39.x;
          if (x_1493) {
            let x_1498 : f32 = u_xlat13.x;
            x_1494 = x_1498;
          } else {
            let x_1501 : f32 = u_xlat13.x;
            x_1494 = -(x_1501);
          }
          let x_1503 : f32 = x_1494;
          u_xlat39.x = x_1503;
          let x_1506 : bool = u_xlatb39.y;
          if (x_1506) {
            let x_1511 : f32 = u_xlat13.x;
            x_1507 = x_1511;
          } else {
            let x_1514 : f32 = u_xlat13.x;
            x_1507 = -(x_1514);
          }
          let x_1516 : f32 = x_1507;
          u_xlat39.y = x_1516;
          let x_1518 : vec4<f32> = u_xlat12;
          let x_1520 : f32 = u_xlat49;
          let x_1523 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1518.x, x_1518.y) * vec2<f32>(x_1520, x_1520)) + x_1523);
          let x_1525 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1525 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1528 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_1528, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1532 : u32 = u_xlatu47;
          let x_1535 : vec4<f32> = x_1200.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1532)];
          let x_1537 : vec2<f32> = u_xlat39;
          let x_1539 : u32 = u_xlatu47;
          let x_1542 : vec4<f32> = x_1200.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1539)];
          let x_1544 : vec2<f32> = ((vec2<f32>(x_1535.x, x_1535.y) * x_1537) + vec2<f32>(x_1542.z, x_1542.w));
          let x_1545 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1544.x, x_1544.y, x_1545.z, x_1545.w);
        }
      }
      let x_1552 : vec4<f32> = u_xlat11;
      let x_1555 : f32 = x_44.x_GlobalMipBias.x;
      let x_1556 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1552.x, x_1552.y), x_1555);
      u_xlat11 = x_1556;
      let x_1558 : bool = u_xlatb6.y;
      if (x_1558) {
        let x_1563 : f32 = u_xlat11.w;
        x_1559 = x_1563;
      } else {
        let x_1566 : f32 = u_xlat11.x;
        x_1559 = x_1566;
      }
      let x_1567 : f32 = x_1559;
      u_xlat49 = x_1567;
      let x_1569 : bool = u_xlatb6.x;
      if (x_1569) {
        let x_1573 : vec4<f32> = u_xlat11;
        x_1570 = vec3<f32>(x_1573.x, x_1573.y, x_1573.z);
      } else {
        let x_1576 : f32 = u_xlat49;
        x_1570 = vec3<f32>(x_1576, x_1576, x_1576);
      }
      let x_1578 : vec3<f32> = x_1570;
      let x_1579 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1578.x, x_1578.y, x_1578.z, x_1579.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1585 : vec4<f32> = u_xlat11;
    let x_1587 : u32 = u_xlatu47;
    let x_1590 : vec4<f32> = x_1096.x_AdditionalLightsColor[bitcast<i32>(x_1587)];
    let x_1592 : vec3<f32> = (vec3<f32>(x_1585.x, x_1585.y, x_1585.z) * vec3<f32>(x_1590.x, x_1590.y, x_1590.z));
    let x_1593 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1592.x, x_1592.y, x_1592.z, x_1593.w);
    let x_1595 : f32 = u_xlat32;
    let x_1597 : vec4<f32> = u_xlat11;
    let x_1599 : vec3<f32> = (vec3<f32>(x_1595, x_1595, x_1595) * vec3<f32>(x_1597.x, x_1597.y, x_1597.z));
    let x_1600 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1599.x, x_1599.y, x_1599.z, x_1600.w);
    let x_1602 : vec4<f32> = u_xlat2;
    let x_1604 : vec3<f32> = u_xlat10;
    u_xlat47 = dot(vec3<f32>(x_1602.x, x_1602.y, x_1602.z), x_1604);
    let x_1606 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1606, 0.0f, 1.0f);
    let x_1608 : f32 = u_xlat47;
    let x_1609 : f32 = u_xlat34;
    u_xlat47 = (x_1608 * x_1609);
    let x_1611 : f32 = u_xlat47;
    let x_1613 : vec4<f32> = u_xlat11;
    let x_1615 : vec3<f32> = (vec3<f32>(x_1611, x_1611, x_1611) * vec3<f32>(x_1613.x, x_1613.y, x_1613.z));
    let x_1616 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1615.x, x_1615.y, x_1615.z, x_1616.w);
    let x_1618 : vec3<f32> = u_xlat9;
    let x_1619 : f32 = u_xlat48;
    let x_1622 : vec3<f32> = u_xlat7;
    u_xlat9 = ((x_1618 * vec3<f32>(x_1619, x_1619, x_1619)) + x_1622);
    let x_1624 : vec3<f32> = u_xlat9;
    let x_1625 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1624, x_1625);
    let x_1627 : f32 = u_xlat47;
    u_xlat47 = max(x_1627, 1.17549435e-37f);
    let x_1629 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_1629);
    let x_1631 : f32 = u_xlat47;
    let x_1633 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1631, x_1631, x_1631) * x_1633);
    let x_1635 : vec4<f32> = u_xlat2;
    let x_1637 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_1635.x, x_1635.y, x_1635.z), x_1637);
    let x_1639 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1639, 0.0f, 1.0f);
    let x_1641 : vec3<f32> = u_xlat10;
    let x_1642 : vec3<f32> = u_xlat9;
    u_xlat34 = dot(x_1641, x_1642);
    let x_1644 : f32 = u_xlat34;
    u_xlat34 = clamp(x_1644, 0.0f, 1.0f);
    let x_1646 : f32 = u_xlat47;
    let x_1647 : f32 = u_xlat47;
    u_xlat47 = (x_1646 * x_1647);
    let x_1649 : f32 = u_xlat47;
    let x_1651 : f32 = u_xlat1.x;
    u_xlat47 = ((x_1649 * x_1651) + 1.000010014f);
    let x_1654 : f32 = u_xlat34;
    let x_1655 : f32 = u_xlat34;
    u_xlat34 = (x_1654 * x_1655);
    let x_1657 : f32 = u_xlat47;
    let x_1658 : f32 = u_xlat47;
    u_xlat47 = (x_1657 * x_1658);
    let x_1660 : f32 = u_xlat34;
    u_xlat34 = max(x_1660, 0.100000001f);
    let x_1662 : f32 = u_xlat47;
    let x_1663 : f32 = u_xlat34;
    u_xlat47 = (x_1662 * x_1663);
    let x_1665 : f32 = u_xlat18;
    let x_1666 : f32 = u_xlat47;
    u_xlat47 = (x_1665 * x_1666);
    let x_1668 : f32 = u_xlat46;
    let x_1669 : f32 = u_xlat47;
    u_xlat47 = (x_1668 / x_1669);
    let x_1671 : vec4<f32> = u_xlat0;
    let x_1673 : f32 = u_xlat47;
    let x_1676 : vec4<f32> = u_xlat5;
    u_xlat9 = ((vec3<f32>(x_1671.x, x_1671.y, x_1671.z) * vec3<f32>(x_1673, x_1673, x_1673)) + vec3<f32>(x_1676.x, x_1676.y, x_1676.z));
    let x_1679 : vec3<f32> = u_xlat9;
    let x_1680 : vec4<f32> = u_xlat11;
    let x_1683 : vec4<f32> = u_xlat8;
    let x_1685 : vec3<f32> = ((x_1679 * vec3<f32>(x_1680.x, x_1680.y, x_1680.z)) + vec3<f32>(x_1683.x, x_1683.y, x_1683.z));
    let x_1686 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1685.x, x_1685.y, x_1685.z, x_1686.w);

    continuing {
      let x_1688 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1688 + bitcast<u32>(1i));
    }
  }
  let x_1690 : vec3<f32> = u_xlat17;
  let x_1691 : vec4<f32> = u_xlat4;
  let x_1694 : vec3<f32> = u_xlat15;
  let x_1695 : vec3<f32> = ((x_1690 * vec3<f32>(x_1691.x, x_1691.x, x_1691.x)) + x_1694);
  let x_1696 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1695.x, x_1695.y, x_1695.z, x_1696.w);
  let x_1698 : vec4<f32> = u_xlat8;
  let x_1700 : vec4<f32> = u_xlat0;
  let x_1702 : vec3<f32> = (vec3<f32>(x_1698.x, x_1698.y, x_1698.z) + vec3<f32>(x_1700.x, x_1700.y, x_1700.z));
  let x_1703 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1702.x, x_1702.y, x_1702.z, x_1703.w);
  let x_1706 : f32 = u_xlat3.x;
  let x_1708 : f32 = u_xlat3.x;
  u_xlat42 = (x_1706 * -(x_1708));
  let x_1711 : f32 = u_xlat42;
  u_xlat42 = exp2(x_1711);
  let x_1713 : vec4<f32> = u_xlat0;
  let x_1717 : vec4<f32> = x_44.unity_FogColor;
  let x_1720 : vec3<f32> = (vec3<f32>(x_1713.x, x_1713.y, x_1713.z) + -(vec3<f32>(x_1717.x, x_1717.y, x_1717.z)));
  let x_1721 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1720.x, x_1720.y, x_1720.z, x_1721.w);
  let x_1725 : f32 = u_xlat42;
  let x_1727 : vec4<f32> = u_xlat0;
  let x_1731 : vec4<f32> = x_44.unity_FogColor;
  let x_1733 : vec3<f32> = ((vec3<f32>(x_1725, x_1725, x_1725) * vec3<f32>(x_1727.x, x_1727.y, x_1727.z)) + vec3<f32>(x_1731.x, x_1731.y, x_1731.z));
  let x_1734 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1733.x, x_1733.y, x_1733.z, x_1734.w);
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

