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
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
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

@group(0) @binding(7) var x_MainTex : texture_2d<f32>;

@group(0) @binding(16) var samplerSamplerState_Trilinear_Clamp : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(8) var x_MRLL : texture_2d<f32>;

@group(1) @binding(6) var<uniform> x_68 : UnityPerMaterial;

@group(0) @binding(9) var x_BumpMap : texture_2d<f32>;

var<private> vs_INTERP2 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_274 : UnityPerDraw;

var<private> vs_INTERP1 : vec3<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(11) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP4 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_INTERP8 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(3) var<uniform> x_619 : MainLightShadows;

@group(1) @binding(4) var<uniform> x_688 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1133 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1235 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat29 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlatb4 : vec3<bool>;
  var u_xlat5 : vec3<f32>;
  var u_xlat14 : vec2<f32>;
  var u_xlatb15 : vec3<bool>;
  var u_xlat15 : vec3<f32>;
  var u_xlatb14 : bool;
  var u_xlat28 : f32;
  var x_378 : vec3<f32>;
  var u_xlat44 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat45 : f32;
  var u_xlat46 : f32;
  var u_xlat42 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat19 : vec3<f32>;
  var u_xlatb19 : vec2<bool>;
  var u_xlatb33 : bool;
  var u_xlat33 : f32;
  var u_xlat7 : vec4<f32>;
  var x_772 : f32;
  var x_783 : vec3<f32>;
  var u_xlat48 : f32;
  var u_xlat49 : f32;
  var u_xlat8 : vec3<f32>;
  var u_xlatu28 : u32;
  var u_xlatb7 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu46 : u32;
  var u_xlati48 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat9 : vec3<f32>;
  var u_xlat35 : f32;
  var u_xlat10 : vec3<f32>;
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
  var x_1528 : f32;
  var x_1541 : f32;
  var x_1593 : f32;
  var x_1604 : vec3<f32>;
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
  let x_107 : vec3<f32> = (-(x_105) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_108 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_107.x, x_107.y, x_107.z, x_108.w);
  let x_110 : vec3<f32> = u_xlat3;
  let x_112 : vec4<f32> = u_xlat4;
  u_xlat3 = ((-(x_110) * vec3<f32>(x_112.x, x_112.y, x_112.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_116 : vec4<f32> = u_xlat0;
  let x_118 : vec4<f32> = u_xlat0;
  let x_120 : vec3<f32> = (vec3<f32>(x_116.x, x_116.y, x_116.z) + vec3<f32>(x_118.x, x_118.y, x_118.z));
  let x_121 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_120.x, x_120.y, x_120.z, x_121.w);
  let x_123 : vec3<f32> = u_xlat2;
  let x_124 : vec4<f32> = u_xlat4;
  u_xlat2 = (x_123 * vec3<f32>(x_124.x, x_124.y, x_124.z));
  let x_133 : vec4<f32> = u_xlat0;
  let x_136 : vec4<bool> = (vec4<f32>(0.5f, 0.5f, 0.5f, 0.0f) >= vec4<f32>(x_133.x, x_133.y, x_133.z, x_133.x));
  u_xlatb4 = vec3<bool>(x_136.x, x_136.y, x_136.z);
  let x_141 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_141);
  let x_146 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_146);
  let x_150 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_150);
  let x_154 : bool = u_xlatb4.x;
  u_xlat4.x = select(1.0f, 0.0f, x_154);
  let x_158 : bool = u_xlatb4.y;
  u_xlat4.y = select(1.0f, 0.0f, x_158);
  let x_162 : bool = u_xlatb4.z;
  u_xlat4.z = select(1.0f, 0.0f, x_162);
  let x_165 : vec3<f32> = u_xlat3;
  let x_166 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_165 * vec3<f32>(x_166.x, x_166.y, x_166.z));
  let x_169 : vec3<f32> = u_xlat2;
  let x_170 : vec3<f32> = u_xlat5;
  let x_172 : vec3<f32> = u_xlat3;
  u_xlat2 = ((x_169 * x_170) + x_172);
  let x_174 : vec4<f32> = u_xlat0;
  let x_177 : vec3<f32> = u_xlat2;
  u_xlat2 = (-(vec3<f32>(x_174.x, x_174.y, x_174.z)) + x_177);
  let x_179 : f32 = u_xlat29;
  let x_181 : vec3<f32> = u_xlat2;
  let x_183 : vec4<f32> = u_xlat0;
  u_xlat2 = ((vec3<f32>(x_179, x_179, x_179) * x_181) + vec3<f32>(x_183.x, x_183.y, x_183.z));
  let x_187 : f32 = u_xlat0.x;
  u_xlat0.x = (x_187 + -0.150000006f);
  let x_192 : f32 = u_xlat0.x;
  u_xlat0.x = ceil(x_192);
  let x_196 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_196) + 1.0f);
  let x_200 : vec4<f32> = u_xlat0;
  let x_205 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_200.x, x_200.x, x_200.x) * vec3<f32>(0.400000006f, 0.400000006f, 0.400000006f)) + x_205);
  let x_211 : vec4<f32> = vs_INTERP3;
  let x_214 : f32 = x_44.x_GlobalMipBias.x;
  let x_215 : vec4<f32> = textureSampleBias(x_BumpMap, samplerSamplerState_Trilinear_Clamp, vec2<f32>(x_211.x, x_211.y), x_214);
  u_xlat3 = vec3<f32>(x_215.x, x_215.y, x_215.w);
  let x_218 : f32 = u_xlat3.x;
  let x_220 : f32 = u_xlat3.z;
  u_xlat3.x = (x_218 * x_220);
  let x_225 : vec3<f32> = u_xlat3;
  u_xlat14 = ((vec2<f32>(x_225.x, x_225.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_233 : vec2<f32> = u_xlat14;
  let x_234 : vec2<f32> = u_xlat14;
  u_xlat29 = dot(x_233, x_234);
  let x_236 : f32 = u_xlat29;
  u_xlat29 = min(x_236, 1.0f);
  let x_238 : f32 = u_xlat29;
  u_xlat29 = (-(x_238) + 1.0f);
  let x_241 : f32 = u_xlat29;
  u_xlat29 = sqrt(x_241);
  let x_243 : f32 = u_xlat29;
  u_xlat29 = max(x_243, 1.00000002e-16f);
  let x_247 : f32 = u_xlat1.x;
  let x_249 : f32 = u_xlat0.x;
  u_xlat0.x = (x_247 + x_249);
  let x_253 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_253, 0.0f, 1.0f);
  let x_257 : f32 = u_xlat1.y;
  u_xlat1.x = max(x_257, 0.0f);
  let x_261 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_261, 0.850000024f);
  let x_268 : f32 = vs_INTERP2.w;
  u_xlatb15.x = (0.0f < x_268);
  let x_276 : f32 = x_274.unity_WorldTransformParams.w;
  u_xlatb15.z = (x_276 >= 0.0f);
  let x_281 : bool = u_xlatb15.x;
  u_xlat15.x = select(-1.0f, 1.0f, x_281);
  let x_285 : bool = u_xlatb15.z;
  u_xlat15.z = select(-1.0f, 1.0f, x_285);
  let x_289 : f32 = u_xlat15.z;
  let x_291 : f32 = u_xlat15.x;
  u_xlat15.x = (x_289 * x_291);
  let x_296 : vec3<f32> = vs_INTERP1;
  let x_298 : vec4<f32> = vs_INTERP2;
  u_xlat3 = (vec3<f32>(x_296.z, x_296.x, x_296.y) * vec3<f32>(x_298.y, x_298.z, x_298.x));
  let x_301 : vec3<f32> = vs_INTERP1;
  let x_303 : vec4<f32> = vs_INTERP2;
  let x_306 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_301.y, x_301.z, x_301.x) * vec3<f32>(x_303.z, x_303.x, x_303.y)) + -(x_306));
  let x_309 : vec3<f32> = u_xlat15;
  let x_311 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_309.x, x_309.x, x_309.x) * x_311);
  let x_313 : vec2<f32> = u_xlat14;
  let x_315 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_313.y, x_313.y, x_313.y) * x_315);
  let x_317 : vec2<f32> = u_xlat14;
  let x_319 : vec4<f32> = vs_INTERP2;
  let x_322 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_317.x, x_317.x, x_317.x) * vec3<f32>(x_319.x, x_319.y, x_319.z)) + x_322);
  let x_324 : f32 = u_xlat29;
  let x_326 : vec3<f32> = vs_INTERP1;
  let x_328 : vec3<f32> = u_xlat3;
  u_xlat15 = ((vec3<f32>(x_324, x_324, x_324) * x_326) + x_328);
  let x_330 : vec3<f32> = u_xlat15;
  let x_331 : vec3<f32> = u_xlat15;
  u_xlat14.x = dot(x_330, x_331);
  let x_335 : f32 = u_xlat14.x;
  u_xlat14.x = inverseSqrt(x_335);
  let x_338 : vec2<f32> = u_xlat14;
  let x_340 : vec3<f32> = u_xlat15;
  u_xlat15 = (vec3<f32>(x_338.x, x_338.x, x_338.x) * x_340);
  let x_345 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb14 = (x_345 == 0.0f);
  let x_348 : vec3<f32> = vs_INTERP0;
  let x_353 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat3 = (-(x_348) + x_353);
  let x_356 : vec3<f32> = u_xlat3;
  let x_357 : vec3<f32> = u_xlat3;
  u_xlat28 = dot(x_356, x_357);
  let x_359 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_359);
  let x_361 : f32 = u_xlat28;
  let x_363 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_361, x_361, x_361) * x_363);
  let x_368 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat4.x = x_368;
  let x_371 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat4.y = x_371;
  let x_375 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat4.z = x_375;
  let x_377 : bool = u_xlatb14;
  if (x_377) {
    let x_381 : vec3<f32> = u_xlat3;
    x_378 = x_381;
  } else {
    let x_383 : vec4<f32> = u_xlat4;
    x_378 = vec3<f32>(x_383.x, x_383.y, x_383.z);
  }
  let x_385 : vec3<f32> = x_378;
  u_xlat3 = x_385;
  let x_387 : f32 = vs_INTERP0.y;
  let x_389 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat14.x = (x_387 * x_389);
  let x_393 : f32 = x_44.unity_MatrixV[0i].z;
  let x_395 : f32 = vs_INTERP0.x;
  let x_398 : f32 = u_xlat14.x;
  u_xlat14.x = ((x_393 * x_395) + x_398);
  let x_402 : f32 = x_44.unity_MatrixV[2i].z;
  let x_404 : f32 = vs_INTERP0.z;
  let x_407 : f32 = u_xlat14.x;
  u_xlat14.x = ((x_402 * x_404) + x_407);
  let x_411 : f32 = u_xlat14.x;
  let x_413 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat14.x = (x_411 + x_413);
  let x_417 : f32 = u_xlat14.x;
  let x_421 : f32 = x_44.x_ProjectionParams.y;
  u_xlat14.x = (-(x_417) + -(x_421));
  let x_426 : f32 = u_xlat14.x;
  u_xlat14.x = max(x_426, 0.0f);
  let x_430 : f32 = u_xlat14.x;
  let x_433 : f32 = x_44.unity_FogParams.x;
  u_xlat14.x = (x_430 * x_433);
  let x_443 : vec2<f32> = vs_INTERP4;
  let x_445 : f32 = x_44.x_GlobalMipBias.x;
  let x_446 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_443, x_445);
  u_xlat4 = x_446;
  let x_451 : vec2<f32> = vs_INTERP4;
  let x_453 : f32 = x_44.x_GlobalMipBias.x;
  let x_454 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_451, x_453);
  u_xlat5 = vec3<f32>(x_454.x, x_454.y, x_454.z);
  let x_456 : vec4<f32> = u_xlat4;
  let x_460 : vec3<f32> = (vec3<f32>(x_456.x, x_456.y, x_456.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_461 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_460.x, x_460.y, x_460.z, x_461.w);
  let x_463 : vec3<f32> = u_xlat15;
  let x_464 : vec4<f32> = u_xlat4;
  u_xlat28 = dot(x_463, vec3<f32>(x_464.x, x_464.y, x_464.z));
  let x_467 : f32 = u_xlat28;
  u_xlat28 = (x_467 + 0.5f);
  let x_469 : f32 = u_xlat28;
  let x_471 : vec3<f32> = u_xlat5;
  let x_472 : vec3<f32> = (vec3<f32>(x_469, x_469, x_469) * x_471);
  let x_473 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_472.x, x_472.y, x_472.z, x_473.w);
  let x_476 : f32 = u_xlat4.w;
  u_xlat28 = max(x_476, 0.0001f);
  let x_479 : vec4<f32> = u_xlat4;
  let x_481 : f32 = u_xlat28;
  let x_483 : vec3<f32> = (vec3<f32>(x_479.x, x_479.y, x_479.z) / vec3<f32>(x_481, x_481, x_481));
  let x_484 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_483.x, x_483.y, x_483.z, x_484.w);
  let x_488 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_489 : vec2<f32> = vec2<f32>(x_488.x, x_488.y);
  let x_493 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_489.x, x_489.y));
  let x_494 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_493.x, x_493.y, x_494.z);
  let x_496 : vec3<f32> = u_xlat5;
  let x_498 : vec4<f32> = hlslcc_FragCoord;
  let x_500 : vec2<f32> = (vec2<f32>(x_496.x, x_496.y) * vec2<f32>(x_498.x, x_498.y));
  let x_501 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_500.x, x_500.y, x_501.z);
  let x_504 : f32 = u_xlat5.y;
  let x_507 : f32 = x_44.x_ScaleBiasRt.x;
  let x_510 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat28 = ((x_504 * x_507) + x_510);
  let x_512 : f32 = u_xlat28;
  u_xlat5.z = (-(x_512) + 1.0f);
  let x_517 : f32 = u_xlat0.x;
  u_xlat28 = ((-(x_517) * 0.959999979f) + 0.959999979f);
  let x_523 : f32 = u_xlat28;
  let x_526 : f32 = u_xlat1.x;
  u_xlat44 = (-(x_523) + x_526);
  let x_529 : f32 = u_xlat28;
  let x_531 : vec3<f32> = u_xlat2;
  u_xlat6 = (vec3<f32>(x_529, x_529, x_529) * x_531);
  let x_533 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_533 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_537 : vec4<f32> = u_xlat0;
  let x_539 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_537.x, x_537.x, x_537.x) * x_539) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_545 : f32 = u_xlat1.x;
  u_xlat0.x = (-(x_545) + 1.0f);
  let x_550 : f32 = u_xlat0.x;
  let x_552 : f32 = u_xlat0.x;
  u_xlat28 = (x_550 * x_552);
  let x_554 : f32 = u_xlat28;
  let x_555 : f32 = u_xlat28;
  u_xlat1.x = (x_554 * x_555);
  let x_558 : f32 = u_xlat44;
  u_xlat44 = (x_558 + 1.0f);
  let x_560 : f32 = u_xlat44;
  u_xlat44 = min(x_560, 1.0f);
  let x_563 : f32 = u_xlat28;
  u_xlat45 = ((x_563 * 4.0f) + 2.0f);
  let x_573 : vec3<f32> = u_xlat5;
  let x_576 : f32 = x_44.x_GlobalMipBias.x;
  let x_577 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_573.x, x_573.z), x_576);
  u_xlat46 = x_577.x;
  let x_579 : f32 = u_xlat46;
  u_xlat5.x = (x_579 + -1.0f);
  let x_583 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_585 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_583 * x_585) + 1.0f);
  let x_591 : f32 = u_xlat0.w;
  let x_592 : f32 = u_xlat46;
  u_xlat42 = min(x_591, x_592);
  let x_596 : vec4<f32> = vs_INTERP8;
  let x_597 : vec2<f32> = vec2<f32>(x_596.x, x_596.y);
  let x_599 : f32 = vs_INTERP8.z;
  txVec0 = vec3<f32>(x_597.x, x_597.y, x_599);
  let x_611 : vec3<f32> = txVec0;
  let x_613 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_611.xy, x_611.z);
  u_xlat46 = x_613;
  let x_621 : f32 = x_619.x_MainLightShadowParams.x;
  u_xlat19.x = (-(x_621) + 1.0f);
  let x_625 : f32 = u_xlat46;
  let x_627 : f32 = x_619.x_MainLightShadowParams.x;
  let x_630 : f32 = u_xlat19.x;
  u_xlat46 = ((x_625 * x_627) + x_630);
  let x_636 : f32 = vs_INTERP8.z;
  u_xlatb19.x = (0.0f >= x_636);
  let x_641 : f32 = vs_INTERP8.z;
  u_xlatb33 = (x_641 >= 1.0f);
  let x_643 : bool = u_xlatb33;
  let x_645 : bool = u_xlatb19.x;
  u_xlatb19.x = (x_643 | x_645);
  let x_649 : bool = u_xlatb19.x;
  let x_650 : f32 = u_xlat46;
  u_xlat46 = select(x_650, 1.0f, x_649);
  let x_652 : vec3<f32> = vs_INTERP0;
  let x_654 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat19 = (x_652 + -(x_654));
  let x_657 : vec3<f32> = u_xlat19;
  let x_658 : vec3<f32> = u_xlat19;
  u_xlat19.x = dot(x_657, x_658);
  let x_662 : f32 = u_xlat19.x;
  let x_664 : f32 = x_619.x_MainLightShadowParams.z;
  let x_667 : f32 = x_619.x_MainLightShadowParams.w;
  u_xlat19.x = ((x_662 * x_664) + x_667);
  let x_671 : f32 = u_xlat19.x;
  u_xlat19.x = clamp(x_671, 0.0f, 1.0f);
  let x_675 : f32 = u_xlat46;
  u_xlat33 = (-(x_675) + 1.0f);
  let x_679 : f32 = u_xlat19.x;
  let x_680 : f32 = u_xlat33;
  let x_682 : f32 = u_xlat46;
  u_xlat46 = ((x_679 * x_680) + x_682);
  let x_690 : f32 = x_688.x_MainLightCookieTextureFormat;
  u_xlatb19.x = !((x_690 == -1.0f));
  let x_694 : bool = u_xlatb19.x;
  if (x_694) {
    let x_697 : vec3<f32> = vs_INTERP0;
    let x_700 : vec4<f32> = x_688.x_MainLightWorldToLight[1i];
    let x_702 : vec2<f32> = (vec2<f32>(x_697.y, x_697.y) * vec2<f32>(x_700.x, x_700.y));
    let x_703 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_702.x, x_702.y, x_703.z);
    let x_706 : vec4<f32> = x_688.x_MainLightWorldToLight[0i];
    let x_708 : vec3<f32> = vs_INTERP0;
    let x_711 : vec3<f32> = u_xlat19;
    let x_713 : vec2<f32> = ((vec2<f32>(x_706.x, x_706.y) * vec2<f32>(x_708.x, x_708.x)) + vec2<f32>(x_711.x, x_711.y));
    let x_714 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_713.x, x_713.y, x_714.z);
    let x_717 : vec4<f32> = x_688.x_MainLightWorldToLight[2i];
    let x_719 : vec3<f32> = vs_INTERP0;
    let x_722 : vec3<f32> = u_xlat19;
    let x_724 : vec2<f32> = ((vec2<f32>(x_717.x, x_717.y) * vec2<f32>(x_719.z, x_719.z)) + vec2<f32>(x_722.x, x_722.y));
    let x_725 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_724.x, x_724.y, x_725.z);
    let x_727 : vec3<f32> = u_xlat19;
    let x_730 : vec4<f32> = x_688.x_MainLightWorldToLight[3i];
    let x_732 : vec2<f32> = (vec2<f32>(x_727.x, x_727.y) + vec2<f32>(x_730.x, x_730.y));
    let x_733 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_732.x, x_732.y, x_733.z);
    let x_735 : vec3<f32> = u_xlat19;
    let x_739 : vec2<f32> = ((vec2<f32>(x_735.x, x_735.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_740 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_739.x, x_739.y, x_740.z);
    let x_748 : vec3<f32> = u_xlat19;
    let x_751 : f32 = x_44.x_GlobalMipBias.x;
    let x_752 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_748.x, x_748.y), x_751);
    u_xlat7 = x_752;
    let x_754 : f32 = x_688.x_MainLightCookieTextureFormat;
    let x_756 : f32 = x_688.x_MainLightCookieTextureFormat;
    let x_758 : f32 = x_688.x_MainLightCookieTextureFormat;
    let x_760 : f32 = x_688.x_MainLightCookieTextureFormat;
    let x_761 : vec4<f32> = vec4<f32>(x_754, x_756, x_758, x_760);
    let x_768 : vec4<bool> = (vec4<f32>(x_761.x, x_761.y, x_761.z, x_761.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb19 = vec2<bool>(x_768.x, x_768.y);
    let x_771 : bool = u_xlatb19.y;
    if (x_771) {
      let x_776 : f32 = u_xlat7.w;
      x_772 = x_776;
    } else {
      let x_779 : f32 = u_xlat7.x;
      x_772 = x_779;
    }
    let x_780 : f32 = x_772;
    u_xlat33 = x_780;
    let x_782 : bool = u_xlatb19.x;
    if (x_782) {
      let x_786 : vec4<f32> = u_xlat7;
      x_783 = vec3<f32>(x_786.x, x_786.y, x_786.z);
    } else {
      let x_789 : f32 = u_xlat33;
      x_783 = vec3<f32>(x_789, x_789, x_789);
    }
    let x_791 : vec3<f32> = x_783;
    u_xlat19 = x_791;
  } else {
    u_xlat19.x = 1.0f;
    u_xlat19.y = 1.0f;
    u_xlat19.z = 1.0f;
  }
  let x_796 : vec3<f32> = u_xlat19;
  let x_798 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat19 = (x_796 * vec3<f32>(x_798.x, x_798.y, x_798.z));
  let x_801 : vec3<f32> = u_xlat5;
  let x_803 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_801.x, x_801.x, x_801.x) * x_803);
  let x_806 : vec3<f32> = u_xlat3;
  let x_808 : vec3<f32> = u_xlat15;
  u_xlat48 = dot(-(x_806), x_808);
  let x_810 : f32 = u_xlat48;
  let x_811 : f32 = u_xlat48;
  u_xlat48 = (x_810 + x_811);
  let x_813 : vec3<f32> = u_xlat15;
  let x_814 : f32 = u_xlat48;
  let x_818 : vec3<f32> = u_xlat3;
  let x_820 : vec3<f32> = ((x_813 * -(vec3<f32>(x_814, x_814, x_814))) + -(x_818));
  let x_821 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_820.x, x_820.y, x_820.z, x_821.w);
  let x_823 : vec3<f32> = u_xlat15;
  let x_824 : vec3<f32> = u_xlat3;
  u_xlat48 = dot(x_823, x_824);
  let x_826 : f32 = u_xlat48;
  u_xlat48 = clamp(x_826, 0.0f, 1.0f);
  let x_828 : f32 = u_xlat48;
  u_xlat48 = (-(x_828) + 1.0f);
  let x_831 : f32 = u_xlat48;
  let x_832 : f32 = u_xlat48;
  u_xlat48 = (x_831 * x_832);
  let x_834 : f32 = u_xlat48;
  let x_835 : f32 = u_xlat48;
  u_xlat48 = (x_834 * x_835);
  let x_839 : f32 = u_xlat0.x;
  u_xlat49 = ((-(x_839) * 0.699999988f) + 1.700000048f);
  let x_846 : f32 = u_xlat0.x;
  let x_847 : f32 = u_xlat49;
  u_xlat0.x = (x_846 * x_847);
  let x_851 : f32 = u_xlat0.x;
  u_xlat0.x = (x_851 * 6.0f);
  let x_863 : vec4<f32> = u_xlat7;
  let x_866 : f32 = u_xlat0.x;
  let x_867 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_863.x, x_863.y, x_863.z), x_866);
  u_xlat7 = x_867;
  let x_869 : f32 = u_xlat7.w;
  u_xlat0.x = (x_869 + -1.0f);
  let x_873 : f32 = x_274.unity_SpecCube0_HDR.w;
  let x_875 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_873 * x_875) + 1.0f);
  let x_880 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_880, 0.0f);
  let x_884 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_884);
  let x_888 : f32 = u_xlat0.x;
  let x_890 : f32 = x_274.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_888 * x_890);
  let x_894 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_894);
  let x_898 : f32 = u_xlat0.x;
  let x_900 : f32 = x_274.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_898 * x_900);
  let x_903 : vec4<f32> = u_xlat7;
  let x_905 : vec4<f32> = u_xlat0;
  let x_907 : vec3<f32> = (vec3<f32>(x_903.x, x_903.y, x_903.z) * vec3<f32>(x_905.x, x_905.x, x_905.x));
  let x_908 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_907.x, x_907.y, x_907.z, x_908.w);
  let x_910 : f32 = u_xlat28;
  let x_912 : f32 = u_xlat28;
  let x_916 : vec2<f32> = ((vec2<f32>(x_910, x_910) * vec2<f32>(x_912, x_912)) + vec2<f32>(-1.0f, 1.0f));
  let x_917 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_916.x, x_917.y, x_916.y, x_917.w);
  let x_920 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_920);
  let x_923 : vec3<f32> = u_xlat2;
  let x_925 : f32 = u_xlat44;
  u_xlat8 = (-(x_923) + vec3<f32>(x_925, x_925, x_925));
  let x_928 : f32 = u_xlat48;
  let x_930 : vec3<f32> = u_xlat8;
  let x_932 : vec3<f32> = u_xlat2;
  u_xlat8 = ((vec3<f32>(x_928, x_928, x_928) * x_930) + x_932);
  let x_934 : f32 = u_xlat28;
  let x_936 : vec3<f32> = u_xlat8;
  u_xlat8 = (vec3<f32>(x_934, x_934, x_934) * x_936);
  let x_938 : vec4<f32> = u_xlat7;
  let x_940 : vec3<f32> = u_xlat8;
  let x_941 : vec3<f32> = (vec3<f32>(x_938.x, x_938.y, x_938.z) * x_940);
  let x_942 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_941.x, x_941.y, x_941.z, x_942.w);
  let x_944 : vec4<f32> = u_xlat4;
  let x_946 : vec3<f32> = u_xlat6;
  let x_948 : vec4<f32> = u_xlat7;
  let x_950 : vec3<f32> = ((vec3<f32>(x_944.x, x_944.y, x_944.z) * x_946) + vec3<f32>(x_948.x, x_948.y, x_948.z));
  let x_951 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_950.x, x_950.y, x_950.z, x_951.w);
  let x_953 : f32 = u_xlat46;
  let x_956 : f32 = x_274.unity_LightData.z;
  u_xlat28 = (x_953 * x_956);
  let x_958 : vec3<f32> = u_xlat15;
  let x_960 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat44 = dot(x_958, vec3<f32>(x_960.x, x_960.y, x_960.z));
  let x_963 : f32 = u_xlat44;
  u_xlat44 = clamp(x_963, 0.0f, 1.0f);
  let x_965 : f32 = u_xlat28;
  let x_966 : f32 = u_xlat44;
  u_xlat28 = (x_965 * x_966);
  let x_968 : f32 = u_xlat28;
  let x_970 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_968, x_968, x_968) * x_970);
  let x_972 : vec3<f32> = u_xlat3;
  let x_974 : vec4<f32> = x_44.x_MainLightPosition;
  let x_976 : vec3<f32> = (x_972 + vec3<f32>(x_974.x, x_974.y, x_974.z));
  let x_977 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_976.x, x_976.y, x_976.z, x_977.w);
  let x_979 : vec4<f32> = u_xlat7;
  let x_981 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_979.x, x_979.y, x_979.z), vec3<f32>(x_981.x, x_981.y, x_981.z));
  let x_984 : f32 = u_xlat28;
  u_xlat28 = max(x_984, 1.17549435e-37f);
  let x_987 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_987);
  let x_989 : f32 = u_xlat28;
  let x_991 : vec4<f32> = u_xlat7;
  let x_993 : vec3<f32> = (vec3<f32>(x_989, x_989, x_989) * vec3<f32>(x_991.x, x_991.y, x_991.z));
  let x_994 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_993.x, x_993.y, x_993.z, x_994.w);
  let x_996 : vec3<f32> = u_xlat15;
  let x_997 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(x_996, vec3<f32>(x_997.x, x_997.y, x_997.z));
  let x_1000 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1000, 0.0f, 1.0f);
  let x_1003 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1005 : vec4<f32> = u_xlat7;
  u_xlat44 = dot(vec3<f32>(x_1003.x, x_1003.y, x_1003.z), vec3<f32>(x_1005.x, x_1005.y, x_1005.z));
  let x_1008 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1008, 0.0f, 1.0f);
  let x_1010 : f32 = u_xlat28;
  let x_1011 : f32 = u_xlat28;
  u_xlat28 = (x_1010 * x_1011);
  let x_1013 : f32 = u_xlat28;
  let x_1015 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1013 * x_1015) + 1.000010014f);
  let x_1019 : f32 = u_xlat44;
  let x_1020 : f32 = u_xlat44;
  u_xlat44 = (x_1019 * x_1020);
  let x_1022 : f32 = u_xlat28;
  let x_1023 : f32 = u_xlat28;
  u_xlat28 = (x_1022 * x_1023);
  let x_1025 : f32 = u_xlat44;
  u_xlat44 = max(x_1025, 0.100000001f);
  let x_1028 : f32 = u_xlat28;
  let x_1029 : f32 = u_xlat44;
  u_xlat28 = (x_1028 * x_1029);
  let x_1031 : f32 = u_xlat45;
  let x_1032 : f32 = u_xlat28;
  u_xlat28 = (x_1031 * x_1032);
  let x_1035 : f32 = u_xlat1.x;
  let x_1036 : f32 = u_xlat28;
  u_xlat28 = (x_1035 / x_1036);
  let x_1038 : vec3<f32> = u_xlat2;
  let x_1039 : f32 = u_xlat28;
  let x_1042 : vec3<f32> = u_xlat6;
  let x_1043 : vec3<f32> = ((x_1038 * vec3<f32>(x_1039, x_1039, x_1039)) + x_1042);
  let x_1044 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1043.x, x_1043.y, x_1043.z, x_1044.w);
  let x_1046 : vec3<f32> = u_xlat19;
  let x_1047 : vec4<f32> = u_xlat7;
  u_xlat19 = (x_1046 * vec3<f32>(x_1047.x, x_1047.y, x_1047.z));
  let x_1051 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1053 : f32 = x_274.unity_LightData.y;
  u_xlat28 = min(x_1051, x_1053);
  let x_1057 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1057));
  let x_1062 : f32 = x_688.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1064 : f32 = x_688.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1066 : f32 = x_688.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1068 : f32 = x_688.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1069 : vec4<f32> = vec4<f32>(x_1062, x_1064, x_1066, x_1068);
  let x_1075 : vec4<bool> = (vec4<f32>(x_1069.x, x_1069.y, x_1069.z, x_1069.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1075.x, x_1075.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1086 : u32 = u_xlatu_loop_1;
    let x_1087 : u32 = u_xlatu28;
    if ((x_1086 < x_1087)) {
    } else {
      break;
    }
    let x_1090 : u32 = u_xlatu_loop_1;
    u_xlatu46 = (x_1090 >> 2u);
    let x_1094 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_1094 & 3u));
    let x_1097 : u32 = u_xlatu46;
    let x_1100 : vec4<f32> = x_274.unity_LightIndices[bitcast<i32>(x_1097)];
    let x_1110 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1115 : vec4<u32> = indexable[x_1110];
    u_xlat46 = dot(x_1100, bitcast<vec4<f32>>(x_1115));
    let x_1118 : f32 = u_xlat46;
    u_xlatu46 = bitcast<u32>(i32(x_1118));
    let x_1122 : vec3<f32> = vs_INTERP0;
    let x_1134 : u32 = u_xlatu46;
    let x_1137 : vec4<f32> = x_1133.x_AdditionalLightsPosition[bitcast<i32>(x_1134)];
    let x_1140 : u32 = u_xlatu46;
    let x_1143 : vec4<f32> = x_1133.x_AdditionalLightsPosition[bitcast<i32>(x_1140)];
    u_xlat9 = ((-(x_1122) * vec3<f32>(x_1137.w, x_1137.w, x_1137.w)) + vec3<f32>(x_1143.x, x_1143.y, x_1143.z));
    let x_1146 : vec3<f32> = u_xlat9;
    let x_1147 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_1146, x_1147);
    let x_1149 : f32 = u_xlat48;
    u_xlat48 = max(x_1149, 6.10351562e-05f);
    let x_1153 : f32 = u_xlat48;
    u_xlat35 = inverseSqrt(x_1153);
    let x_1156 : f32 = u_xlat35;
    let x_1158 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1156, x_1156, x_1156) * x_1158);
    let x_1160 : f32 = u_xlat48;
    u_xlat49 = (1.0f / x_1160);
    let x_1162 : f32 = u_xlat48;
    let x_1163 : u32 = u_xlatu46;
    let x_1166 : f32 = x_1133.x_AdditionalLightsAttenuation[bitcast<i32>(x_1163)].x;
    u_xlat48 = (x_1162 * x_1166);
    let x_1168 : f32 = u_xlat48;
    let x_1170 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1168) * x_1170) + 1.0f);
    let x_1173 : f32 = u_xlat48;
    u_xlat48 = max(x_1173, 0.0f);
    let x_1175 : f32 = u_xlat48;
    let x_1176 : f32 = u_xlat48;
    u_xlat48 = (x_1175 * x_1176);
    let x_1178 : f32 = u_xlat48;
    let x_1179 : f32 = u_xlat49;
    u_xlat48 = (x_1178 * x_1179);
    let x_1181 : u32 = u_xlatu46;
    let x_1184 : vec4<f32> = x_1133.x_AdditionalLightsSpotDir[bitcast<i32>(x_1181)];
    let x_1186 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_1184.x, x_1184.y, x_1184.z), x_1186);
    let x_1188 : f32 = u_xlat49;
    let x_1189 : u32 = u_xlatu46;
    let x_1192 : f32 = x_1133.x_AdditionalLightsAttenuation[bitcast<i32>(x_1189)].z;
    let x_1194 : u32 = u_xlatu46;
    let x_1197 : f32 = x_1133.x_AdditionalLightsAttenuation[bitcast<i32>(x_1194)].w;
    u_xlat49 = ((x_1188 * x_1192) + x_1197);
    let x_1199 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1199, 0.0f, 1.0f);
    let x_1201 : f32 = u_xlat49;
    let x_1202 : f32 = u_xlat49;
    u_xlat49 = (x_1201 * x_1202);
    let x_1204 : f32 = u_xlat48;
    let x_1205 : f32 = u_xlat49;
    u_xlat48 = (x_1204 * x_1205);
    let x_1208 : u32 = u_xlatu46;
    u_xlatu49 = (x_1208 >> 5u);
    let x_1211 : u32 = u_xlatu46;
    u_xlati50 = (1i << bitcast<u32>((bitcast<i32>(x_1211) & 31i)));
    let x_1217 : i32 = u_xlati50;
    let x_1219 : u32 = u_xlatu49;
    let x_1222 : f32 = x_688.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1219)].el;
    u_xlati49 = bitcast<i32>((bitcast<u32>(x_1217) & bitcast<u32>(x_1222)));
    let x_1226 : i32 = u_xlati49;
    if ((x_1226 != 0i)) {
      let x_1236 : u32 = u_xlatu46;
      let x_1239 : f32 = x_1235.x_AdditionalLightsLightTypes[bitcast<i32>(x_1236)].el;
      u_xlati49 = i32(x_1239);
      let x_1241 : i32 = u_xlati49;
      u_xlati50 = select(1i, 0i, (x_1241 != 0i));
      let x_1245 : u32 = u_xlatu46;
      u_xlati51 = (bitcast<i32>(x_1245) << bitcast<u32>(2i));
      let x_1248 : i32 = u_xlati50;
      if ((x_1248 != 0i)) {
        let x_1253 : vec3<f32> = vs_INTERP0;
        let x_1255 : i32 = u_xlati51;
        let x_1258 : i32 = u_xlati51;
        let x_1262 : vec4<f32> = x_1235.x_AdditionalLightsWorldToLights[((x_1255 + 1i) / 4i)][((x_1258 + 1i) % 4i)];
        let x_1264 : vec3<f32> = (vec3<f32>(x_1253.y, x_1253.y, x_1253.y) * vec3<f32>(x_1262.x, x_1262.y, x_1262.w));
        let x_1265 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1264.x, x_1264.y, x_1264.z, x_1265.w);
        let x_1267 : i32 = u_xlati51;
        let x_1269 : i32 = u_xlati51;
        let x_1272 : vec4<f32> = x_1235.x_AdditionalLightsWorldToLights[(x_1267 / 4i)][(x_1269 % 4i)];
        let x_1274 : vec3<f32> = vs_INTERP0;
        let x_1277 : vec4<f32> = u_xlat11;
        let x_1279 : vec3<f32> = ((vec3<f32>(x_1272.x, x_1272.y, x_1272.w) * vec3<f32>(x_1274.x, x_1274.x, x_1274.x)) + vec3<f32>(x_1277.x, x_1277.y, x_1277.z));
        let x_1280 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1279.x, x_1279.y, x_1279.z, x_1280.w);
        let x_1282 : i32 = u_xlati51;
        let x_1285 : i32 = u_xlati51;
        let x_1289 : vec4<f32> = x_1235.x_AdditionalLightsWorldToLights[((x_1282 + 2i) / 4i)][((x_1285 + 2i) % 4i)];
        let x_1291 : vec3<f32> = vs_INTERP0;
        let x_1294 : vec4<f32> = u_xlat11;
        let x_1296 : vec3<f32> = ((vec3<f32>(x_1289.x, x_1289.y, x_1289.w) * vec3<f32>(x_1291.z, x_1291.z, x_1291.z)) + vec3<f32>(x_1294.x, x_1294.y, x_1294.z));
        let x_1297 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1296.x, x_1296.y, x_1296.z, x_1297.w);
        let x_1299 : vec4<f32> = u_xlat11;
        let x_1301 : i32 = u_xlati51;
        let x_1304 : i32 = u_xlati51;
        let x_1308 : vec4<f32> = x_1235.x_AdditionalLightsWorldToLights[((x_1301 + 3i) / 4i)][((x_1304 + 3i) % 4i)];
        let x_1310 : vec3<f32> = (vec3<f32>(x_1299.x, x_1299.y, x_1299.z) + vec3<f32>(x_1308.x, x_1308.y, x_1308.w));
        let x_1311 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1310.x, x_1310.y, x_1310.z, x_1311.w);
        let x_1313 : vec4<f32> = u_xlat11;
        let x_1315 : vec4<f32> = u_xlat11;
        let x_1317 : vec2<f32> = (vec2<f32>(x_1313.x, x_1313.y) / vec2<f32>(x_1315.z, x_1315.z));
        let x_1318 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1317.x, x_1317.y, x_1318.z, x_1318.w);
        let x_1320 : vec4<f32> = u_xlat11;
        let x_1323 : vec2<f32> = ((vec2<f32>(x_1320.x, x_1320.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1324 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1323.x, x_1323.y, x_1324.z, x_1324.w);
        let x_1326 : vec4<f32> = u_xlat11;
        let x_1330 : vec2<f32> = clamp(vec2<f32>(x_1326.x, x_1326.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1331 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1330.x, x_1330.y, x_1331.z, x_1331.w);
        let x_1333 : u32 = u_xlatu46;
        let x_1336 : vec4<f32> = x_1235.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1333)];
        let x_1338 : vec4<f32> = u_xlat11;
        let x_1341 : u32 = u_xlatu46;
        let x_1344 : vec4<f32> = x_1235.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1341)];
        let x_1346 : vec2<f32> = ((vec2<f32>(x_1336.x, x_1336.y) * vec2<f32>(x_1338.x, x_1338.y)) + vec2<f32>(x_1344.z, x_1344.w));
        let x_1347 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1346.x, x_1346.y, x_1347.z, x_1347.w);
      } else {
        let x_1351 : i32 = u_xlati49;
        u_xlatb49 = (x_1351 == 1i);
        let x_1353 : bool = u_xlatb49;
        u_xlati49 = select(0i, 1i, x_1353);
        let x_1355 : i32 = u_xlati49;
        if ((x_1355 != 0i)) {
          let x_1360 : vec3<f32> = vs_INTERP0;
          let x_1362 : i32 = u_xlati51;
          let x_1365 : i32 = u_xlati51;
          let x_1369 : vec4<f32> = x_1235.x_AdditionalLightsWorldToLights[((x_1362 + 1i) / 4i)][((x_1365 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1360.y, x_1360.y) * vec2<f32>(x_1369.x, x_1369.y));
          let x_1372 : i32 = u_xlati51;
          let x_1374 : i32 = u_xlati51;
          let x_1377 : vec4<f32> = x_1235.x_AdditionalLightsWorldToLights[(x_1372 / 4i)][(x_1374 % 4i)];
          let x_1379 : vec3<f32> = vs_INTERP0;
          let x_1382 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1377.x, x_1377.y) * vec2<f32>(x_1379.x, x_1379.x)) + x_1382);
          let x_1384 : i32 = u_xlati51;
          let x_1387 : i32 = u_xlati51;
          let x_1391 : vec4<f32> = x_1235.x_AdditionalLightsWorldToLights[((x_1384 + 2i) / 4i)][((x_1387 + 2i) % 4i)];
          let x_1393 : vec3<f32> = vs_INTERP0;
          let x_1396 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1391.x, x_1391.y) * vec2<f32>(x_1393.z, x_1393.z)) + x_1396);
          let x_1398 : vec2<f32> = u_xlat39;
          let x_1399 : i32 = u_xlati51;
          let x_1402 : i32 = u_xlati51;
          let x_1406 : vec4<f32> = x_1235.x_AdditionalLightsWorldToLights[((x_1399 + 3i) / 4i)][((x_1402 + 3i) % 4i)];
          u_xlat39 = (x_1398 + vec2<f32>(x_1406.x, x_1406.y));
          let x_1409 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1409 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1412 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1412);
          let x_1414 : u32 = u_xlatu46;
          let x_1417 : vec4<f32> = x_1235.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1414)];
          let x_1419 : vec2<f32> = u_xlat39;
          let x_1421 : u32 = u_xlatu46;
          let x_1424 : vec4<f32> = x_1235.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1421)];
          let x_1426 : vec2<f32> = ((vec2<f32>(x_1417.x, x_1417.y) * x_1419) + vec2<f32>(x_1424.z, x_1424.w));
          let x_1427 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1426.x, x_1426.y, x_1427.z, x_1427.w);
        } else {
          let x_1431 : vec3<f32> = vs_INTERP0;
          let x_1433 : i32 = u_xlati51;
          let x_1436 : i32 = u_xlati51;
          let x_1440 : vec4<f32> = x_1235.x_AdditionalLightsWorldToLights[((x_1433 + 1i) / 4i)][((x_1436 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1431.y, x_1431.y, x_1431.y, x_1431.y) * x_1440);
          let x_1442 : i32 = u_xlati51;
          let x_1444 : i32 = u_xlati51;
          let x_1447 : vec4<f32> = x_1235.x_AdditionalLightsWorldToLights[(x_1442 / 4i)][(x_1444 % 4i)];
          let x_1448 : vec3<f32> = vs_INTERP0;
          let x_1451 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1447 * vec4<f32>(x_1448.x, x_1448.x, x_1448.x, x_1448.x)) + x_1451);
          let x_1453 : i32 = u_xlati51;
          let x_1456 : i32 = u_xlati51;
          let x_1460 : vec4<f32> = x_1235.x_AdditionalLightsWorldToLights[((x_1453 + 2i) / 4i)][((x_1456 + 2i) % 4i)];
          let x_1461 : vec3<f32> = vs_INTERP0;
          let x_1464 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1460 * vec4<f32>(x_1461.z, x_1461.z, x_1461.z, x_1461.z)) + x_1464);
          let x_1466 : vec4<f32> = u_xlat12;
          let x_1467 : i32 = u_xlati51;
          let x_1470 : i32 = u_xlati51;
          let x_1474 : vec4<f32> = x_1235.x_AdditionalLightsWorldToLights[((x_1467 + 3i) / 4i)][((x_1470 + 3i) % 4i)];
          u_xlat12 = (x_1466 + x_1474);
          let x_1476 : vec4<f32> = u_xlat12;
          let x_1478 : vec4<f32> = u_xlat12;
          let x_1480 : vec3<f32> = (vec3<f32>(x_1476.x, x_1476.y, x_1476.z) / vec3<f32>(x_1478.w, x_1478.w, x_1478.w));
          let x_1481 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1480.x, x_1480.y, x_1480.z, x_1481.w);
          let x_1483 : vec4<f32> = u_xlat12;
          let x_1485 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(vec3<f32>(x_1483.x, x_1483.y, x_1483.z), vec3<f32>(x_1485.x, x_1485.y, x_1485.z));
          let x_1488 : f32 = u_xlat49;
          u_xlat49 = inverseSqrt(x_1488);
          let x_1490 : f32 = u_xlat49;
          let x_1492 : vec4<f32> = u_xlat12;
          let x_1494 : vec3<f32> = (vec3<f32>(x_1490, x_1490, x_1490) * vec3<f32>(x_1492.x, x_1492.y, x_1492.z));
          let x_1495 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1494.x, x_1494.y, x_1494.z, x_1495.w);
          let x_1497 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(abs(vec3<f32>(x_1497.x, x_1497.y, x_1497.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1501 : f32 = u_xlat49;
          u_xlat49 = max(x_1501, 0.000001f);
          let x_1504 : f32 = u_xlat49;
          u_xlat49 = (1.0f / x_1504);
          let x_1507 : f32 = u_xlat49;
          let x_1509 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1507, x_1507, x_1507) * vec3<f32>(x_1509.z, x_1509.x, x_1509.y));
          let x_1513 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1513);
          let x_1517 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1517, 0.0f, 1.0f);
          let x_1521 : vec3<f32> = u_xlat13;
          let x_1524 : vec4<bool> = (vec4<f32>(x_1521.y, x_1521.z, x_1521.y, x_1521.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1524.x, x_1524.y);
          let x_1527 : bool = u_xlatb39.x;
          if (x_1527) {
            let x_1532 : f32 = u_xlat13.x;
            x_1528 = x_1532;
          } else {
            let x_1535 : f32 = u_xlat13.x;
            x_1528 = -(x_1535);
          }
          let x_1537 : f32 = x_1528;
          u_xlat39.x = x_1537;
          let x_1540 : bool = u_xlatb39.y;
          if (x_1540) {
            let x_1545 : f32 = u_xlat13.x;
            x_1541 = x_1545;
          } else {
            let x_1548 : f32 = u_xlat13.x;
            x_1541 = -(x_1548);
          }
          let x_1550 : f32 = x_1541;
          u_xlat39.y = x_1550;
          let x_1552 : vec4<f32> = u_xlat12;
          let x_1554 : f32 = u_xlat49;
          let x_1557 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1552.x, x_1552.y) * vec2<f32>(x_1554, x_1554)) + x_1557);
          let x_1559 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1559 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1562 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_1562, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1566 : u32 = u_xlatu46;
          let x_1569 : vec4<f32> = x_1235.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1566)];
          let x_1571 : vec2<f32> = u_xlat39;
          let x_1573 : u32 = u_xlatu46;
          let x_1576 : vec4<f32> = x_1235.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1573)];
          let x_1578 : vec2<f32> = ((vec2<f32>(x_1569.x, x_1569.y) * x_1571) + vec2<f32>(x_1576.z, x_1576.w));
          let x_1579 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1578.x, x_1578.y, x_1579.z, x_1579.w);
        }
      }
      let x_1586 : vec4<f32> = u_xlat11;
      let x_1589 : f32 = x_44.x_GlobalMipBias.x;
      let x_1590 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1586.x, x_1586.y), x_1589);
      u_xlat11 = x_1590;
      let x_1592 : bool = u_xlatb7.y;
      if (x_1592) {
        let x_1597 : f32 = u_xlat11.w;
        x_1593 = x_1597;
      } else {
        let x_1600 : f32 = u_xlat11.x;
        x_1593 = x_1600;
      }
      let x_1601 : f32 = x_1593;
      u_xlat49 = x_1601;
      let x_1603 : bool = u_xlatb7.x;
      if (x_1603) {
        let x_1607 : vec4<f32> = u_xlat11;
        x_1604 = vec3<f32>(x_1607.x, x_1607.y, x_1607.z);
      } else {
        let x_1610 : f32 = u_xlat49;
        x_1604 = vec3<f32>(x_1610, x_1610, x_1610);
      }
      let x_1612 : vec3<f32> = x_1604;
      let x_1613 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1612.x, x_1612.y, x_1612.z, x_1613.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1619 : vec4<f32> = u_xlat11;
    let x_1621 : u32 = u_xlatu46;
    let x_1624 : vec4<f32> = x_1133.x_AdditionalLightsColor[bitcast<i32>(x_1621)];
    let x_1626 : vec3<f32> = (vec3<f32>(x_1619.x, x_1619.y, x_1619.z) * vec3<f32>(x_1624.x, x_1624.y, x_1624.z));
    let x_1627 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1626.x, x_1626.y, x_1626.z, x_1627.w);
    let x_1629 : vec3<f32> = u_xlat5;
    let x_1631 : vec4<f32> = u_xlat11;
    let x_1633 : vec3<f32> = (vec3<f32>(x_1629.x, x_1629.x, x_1629.x) * vec3<f32>(x_1631.x, x_1631.y, x_1631.z));
    let x_1634 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1633.x, x_1633.y, x_1633.z, x_1634.w);
    let x_1636 : vec3<f32> = u_xlat15;
    let x_1637 : vec3<f32> = u_xlat10;
    u_xlat46 = dot(x_1636, x_1637);
    let x_1639 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1639, 0.0f, 1.0f);
    let x_1641 : f32 = u_xlat46;
    let x_1642 : f32 = u_xlat48;
    u_xlat46 = (x_1641 * x_1642);
    let x_1644 : f32 = u_xlat46;
    let x_1646 : vec4<f32> = u_xlat11;
    let x_1648 : vec3<f32> = (vec3<f32>(x_1644, x_1644, x_1644) * vec3<f32>(x_1646.x, x_1646.y, x_1646.z));
    let x_1649 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1648.x, x_1648.y, x_1648.z, x_1649.w);
    let x_1651 : vec3<f32> = u_xlat9;
    let x_1652 : f32 = u_xlat35;
    let x_1655 : vec3<f32> = u_xlat3;
    u_xlat9 = ((x_1651 * vec3<f32>(x_1652, x_1652, x_1652)) + x_1655);
    let x_1657 : vec3<f32> = u_xlat9;
    let x_1658 : vec3<f32> = u_xlat9;
    u_xlat46 = dot(x_1657, x_1658);
    let x_1660 : f32 = u_xlat46;
    u_xlat46 = max(x_1660, 1.17549435e-37f);
    let x_1662 : f32 = u_xlat46;
    u_xlat46 = inverseSqrt(x_1662);
    let x_1664 : f32 = u_xlat46;
    let x_1666 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1664, x_1664, x_1664) * x_1666);
    let x_1668 : vec3<f32> = u_xlat15;
    let x_1669 : vec3<f32> = u_xlat9;
    u_xlat46 = dot(x_1668, x_1669);
    let x_1671 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1671, 0.0f, 1.0f);
    let x_1673 : vec3<f32> = u_xlat10;
    let x_1674 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_1673, x_1674);
    let x_1676 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1676, 0.0f, 1.0f);
    let x_1678 : f32 = u_xlat46;
    let x_1679 : f32 = u_xlat46;
    u_xlat46 = (x_1678 * x_1679);
    let x_1681 : f32 = u_xlat46;
    let x_1683 : f32 = u_xlat0.x;
    u_xlat46 = ((x_1681 * x_1683) + 1.000010014f);
    let x_1686 : f32 = u_xlat48;
    let x_1687 : f32 = u_xlat48;
    u_xlat48 = (x_1686 * x_1687);
    let x_1689 : f32 = u_xlat46;
    let x_1690 : f32 = u_xlat46;
    u_xlat46 = (x_1689 * x_1690);
    let x_1692 : f32 = u_xlat48;
    u_xlat48 = max(x_1692, 0.100000001f);
    let x_1694 : f32 = u_xlat46;
    let x_1695 : f32 = u_xlat48;
    u_xlat46 = (x_1694 * x_1695);
    let x_1697 : f32 = u_xlat45;
    let x_1698 : f32 = u_xlat46;
    u_xlat46 = (x_1697 * x_1698);
    let x_1701 : f32 = u_xlat1.x;
    let x_1702 : f32 = u_xlat46;
    u_xlat46 = (x_1701 / x_1702);
    let x_1704 : vec3<f32> = u_xlat2;
    let x_1705 : f32 = u_xlat46;
    let x_1708 : vec3<f32> = u_xlat6;
    u_xlat9 = ((x_1704 * vec3<f32>(x_1705, x_1705, x_1705)) + x_1708);
    let x_1710 : vec3<f32> = u_xlat9;
    let x_1711 : vec4<f32> = u_xlat11;
    let x_1714 : vec3<f32> = u_xlat8;
    u_xlat8 = ((x_1710 * vec3<f32>(x_1711.x, x_1711.y, x_1711.z)) + x_1714);

    continuing {
      let x_1716 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1716 + bitcast<u32>(1i));
    }
  }
  let x_1718 : vec4<f32> = u_xlat4;
  let x_1720 : f32 = u_xlat42;
  let x_1723 : vec3<f32> = u_xlat19;
  let x_1724 : vec3<f32> = ((vec3<f32>(x_1718.x, x_1718.y, x_1718.z) * vec3<f32>(x_1720, x_1720, x_1720)) + x_1723);
  let x_1725 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1724.x, x_1725.y, x_1724.y, x_1724.z);
  let x_1727 : vec3<f32> = u_xlat8;
  let x_1728 : vec4<f32> = u_xlat0;
  let x_1730 : vec3<f32> = (x_1727 + vec3<f32>(x_1728.x, x_1728.z, x_1728.w));
  let x_1731 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1730.x, x_1731.y, x_1730.y, x_1730.z);
  let x_1734 : f32 = u_xlat14.x;
  let x_1736 : f32 = u_xlat14.x;
  u_xlat14.x = (x_1734 * -(x_1736));
  let x_1741 : f32 = u_xlat14.x;
  u_xlat14.x = exp2(x_1741);
  let x_1744 : vec4<f32> = u_xlat0;
  let x_1748 : vec4<f32> = x_44.unity_FogColor;
  let x_1751 : vec3<f32> = (vec3<f32>(x_1744.x, x_1744.z, x_1744.w) + -(vec3<f32>(x_1748.x, x_1748.y, x_1748.z)));
  let x_1752 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1751.x, x_1752.y, x_1751.y, x_1751.z);
  let x_1756 : vec2<f32> = u_xlat14;
  let x_1758 : vec4<f32> = u_xlat0;
  let x_1762 : vec4<f32> = x_44.unity_FogColor;
  let x_1764 : vec3<f32> = ((vec3<f32>(x_1756.x, x_1756.x, x_1756.x) * vec3<f32>(x_1758.x, x_1758.z, x_1758.w)) + vec3<f32>(x_1762.x, x_1762.y, x_1762.z));
  let x_1765 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1764.x, x_1764.y, x_1764.z, x_1765.w);
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

