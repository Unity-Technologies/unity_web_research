struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AmbientOcclusionParam : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_RenderingLayerMaxInt : u32,
  x_RenderingLayerRcpMaxInt : f32,
  @size(8)
  padding_1 : u32,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_2 : u32,
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

@group(0) @binding(5) var x_MainTex : texture_2d<f32>;

@group(0) @binding(12) var samplerSamplerState_Trilinear_Clamp : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(6) var x_MRLL : texture_2d<f32>;

@group(1) @binding(4) var<uniform> x_68 : UnityPerMaterial;

@group(0) @binding(7) var x_BumpMap : texture_2d<f32>;

var<private> vs_INTERP2 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_274 : UnityPerDraw;

var<private> vs_INTERP1 : vec3<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP4 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_INTERP8 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(3) var<uniform> x_619 : MainLightShadows;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_996 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

var<private> SV_Target1 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat23 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlatb4 : vec3<bool>;
  var u_xlat5 : vec3<f32>;
  var u_xlat11 : vec2<f32>;
  var u_xlatb12 : vec3<bool>;
  var u_xlat12 : vec3<f32>;
  var u_xlatb11 : bool;
  var u_xlat22 : f32;
  var x_378 : vec3<f32>;
  var u_xlat35 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat36 : f32;
  var u_xlat37 : f32;
  var u_xlat33 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat16 : vec3<f32>;
  var u_xlatb16 : bool;
  var u_xlatb27 : bool;
  var u_xlat27 : f32;
  var u_xlat39 : f32;
  var u_xlat7 : vec4<f32>;
  var u_xlat40 : f32;
  var u_xlat8 : vec3<f32>;
  var u_xlatu22 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu37 : u32;
  var u_xlati39 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati37 : i32;
  var u_xlat9 : vec3<f32>;
  var u_xlat41 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlatu0 : u32;
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
  u_xlat23 = (x_87 + x_90);
  let x_92 : f32 = u_xlat23;
  u_xlat23 = clamp(x_92, 0.0f, 1.0f);
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
  let x_179 : f32 = u_xlat23;
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
  u_xlat11 = ((vec2<f32>(x_225.x, x_225.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_233 : vec2<f32> = u_xlat11;
  let x_234 : vec2<f32> = u_xlat11;
  u_xlat23 = dot(x_233, x_234);
  let x_236 : f32 = u_xlat23;
  u_xlat23 = min(x_236, 1.0f);
  let x_238 : f32 = u_xlat23;
  u_xlat23 = (-(x_238) + 1.0f);
  let x_241 : f32 = u_xlat23;
  u_xlat23 = sqrt(x_241);
  let x_243 : f32 = u_xlat23;
  u_xlat23 = max(x_243, 1.00000002e-16f);
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
  u_xlatb12.x = (0.0f < x_268);
  let x_276 : f32 = x_274.unity_WorldTransformParams.w;
  u_xlatb12.z = (x_276 >= 0.0f);
  let x_281 : bool = u_xlatb12.x;
  u_xlat12.x = select(-1.0f, 1.0f, x_281);
  let x_285 : bool = u_xlatb12.z;
  u_xlat12.z = select(-1.0f, 1.0f, x_285);
  let x_289 : f32 = u_xlat12.z;
  let x_291 : f32 = u_xlat12.x;
  u_xlat12.x = (x_289 * x_291);
  let x_296 : vec3<f32> = vs_INTERP1;
  let x_298 : vec4<f32> = vs_INTERP2;
  u_xlat3 = (vec3<f32>(x_296.z, x_296.x, x_296.y) * vec3<f32>(x_298.y, x_298.z, x_298.x));
  let x_301 : vec3<f32> = vs_INTERP1;
  let x_303 : vec4<f32> = vs_INTERP2;
  let x_306 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_301.y, x_301.z, x_301.x) * vec3<f32>(x_303.z, x_303.x, x_303.y)) + -(x_306));
  let x_309 : vec3<f32> = u_xlat12;
  let x_311 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_309.x, x_309.x, x_309.x) * x_311);
  let x_313 : vec2<f32> = u_xlat11;
  let x_315 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_313.y, x_313.y, x_313.y) * x_315);
  let x_317 : vec2<f32> = u_xlat11;
  let x_319 : vec4<f32> = vs_INTERP2;
  let x_322 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_317.x, x_317.x, x_317.x) * vec3<f32>(x_319.x, x_319.y, x_319.z)) + x_322);
  let x_324 : f32 = u_xlat23;
  let x_326 : vec3<f32> = vs_INTERP1;
  let x_328 : vec3<f32> = u_xlat3;
  u_xlat12 = ((vec3<f32>(x_324, x_324, x_324) * x_326) + x_328);
  let x_330 : vec3<f32> = u_xlat12;
  let x_331 : vec3<f32> = u_xlat12;
  u_xlat11.x = dot(x_330, x_331);
  let x_335 : f32 = u_xlat11.x;
  u_xlat11.x = inverseSqrt(x_335);
  let x_338 : vec2<f32> = u_xlat11;
  let x_340 : vec3<f32> = u_xlat12;
  u_xlat12 = (vec3<f32>(x_338.x, x_338.x, x_338.x) * x_340);
  let x_345 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb11 = (x_345 == 0.0f);
  let x_348 : vec3<f32> = vs_INTERP0;
  let x_353 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat3 = (-(x_348) + x_353);
  let x_356 : vec3<f32> = u_xlat3;
  let x_357 : vec3<f32> = u_xlat3;
  u_xlat22 = dot(x_356, x_357);
  let x_359 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_359);
  let x_361 : f32 = u_xlat22;
  let x_363 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_361, x_361, x_361) * x_363);
  let x_368 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat4.x = x_368;
  let x_371 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat4.y = x_371;
  let x_375 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat4.z = x_375;
  let x_377 : bool = u_xlatb11;
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
  u_xlat11.x = (x_387 * x_389);
  let x_393 : f32 = x_44.unity_MatrixV[0i].z;
  let x_395 : f32 = vs_INTERP0.x;
  let x_398 : f32 = u_xlat11.x;
  u_xlat11.x = ((x_393 * x_395) + x_398);
  let x_402 : f32 = x_44.unity_MatrixV[2i].z;
  let x_404 : f32 = vs_INTERP0.z;
  let x_407 : f32 = u_xlat11.x;
  u_xlat11.x = ((x_402 * x_404) + x_407);
  let x_411 : f32 = u_xlat11.x;
  let x_413 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat11.x = (x_411 + x_413);
  let x_417 : f32 = u_xlat11.x;
  let x_421 : f32 = x_44.x_ProjectionParams.y;
  u_xlat11.x = (-(x_417) + -(x_421));
  let x_426 : f32 = u_xlat11.x;
  u_xlat11.x = max(x_426, 0.0f);
  let x_430 : f32 = u_xlat11.x;
  let x_433 : f32 = x_44.unity_FogParams.x;
  u_xlat11.x = (x_430 * x_433);
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
  let x_463 : vec3<f32> = u_xlat12;
  let x_464 : vec4<f32> = u_xlat4;
  u_xlat22 = dot(x_463, vec3<f32>(x_464.x, x_464.y, x_464.z));
  let x_467 : f32 = u_xlat22;
  u_xlat22 = (x_467 + 0.5f);
  let x_469 : f32 = u_xlat22;
  let x_471 : vec3<f32> = u_xlat5;
  let x_472 : vec3<f32> = (vec3<f32>(x_469, x_469, x_469) * x_471);
  let x_473 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_472.x, x_472.y, x_472.z, x_473.w);
  let x_476 : f32 = u_xlat4.w;
  u_xlat22 = max(x_476, 0.0001f);
  let x_479 : vec4<f32> = u_xlat4;
  let x_481 : f32 = u_xlat22;
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
  u_xlat22 = ((x_504 * x_507) + x_510);
  let x_512 : f32 = u_xlat22;
  u_xlat5.z = (-(x_512) + 1.0f);
  let x_517 : f32 = u_xlat0.x;
  u_xlat22 = ((-(x_517) * 0.959999979f) + 0.959999979f);
  let x_523 : f32 = u_xlat22;
  let x_526 : f32 = u_xlat1.x;
  u_xlat35 = (-(x_523) + x_526);
  let x_529 : f32 = u_xlat22;
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
  u_xlat22 = (x_550 * x_552);
  let x_554 : f32 = u_xlat22;
  let x_555 : f32 = u_xlat22;
  u_xlat1.x = (x_554 * x_555);
  let x_558 : f32 = u_xlat35;
  u_xlat35 = (x_558 + 1.0f);
  let x_560 : f32 = u_xlat35;
  u_xlat35 = min(x_560, 1.0f);
  let x_563 : f32 = u_xlat22;
  u_xlat36 = ((x_563 * 4.0f) + 2.0f);
  let x_573 : vec3<f32> = u_xlat5;
  let x_576 : f32 = x_44.x_GlobalMipBias.x;
  let x_577 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_573.x, x_573.z), x_576);
  u_xlat37 = x_577.x;
  let x_579 : f32 = u_xlat37;
  u_xlat5.x = (x_579 + -1.0f);
  let x_583 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_585 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_583 * x_585) + 1.0f);
  let x_591 : f32 = u_xlat0.w;
  let x_592 : f32 = u_xlat37;
  u_xlat33 = min(x_591, x_592);
  let x_596 : vec4<f32> = vs_INTERP8;
  let x_597 : vec2<f32> = vec2<f32>(x_596.x, x_596.y);
  let x_599 : f32 = vs_INTERP8.z;
  txVec0 = vec3<f32>(x_597.x, x_597.y, x_599);
  let x_611 : vec3<f32> = txVec0;
  let x_613 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_611.xy, x_611.z);
  u_xlat37 = x_613;
  let x_621 : f32 = x_619.x_MainLightShadowParams.x;
  u_xlat16.x = (-(x_621) + 1.0f);
  let x_625 : f32 = u_xlat37;
  let x_627 : f32 = x_619.x_MainLightShadowParams.x;
  let x_630 : f32 = u_xlat16.x;
  u_xlat37 = ((x_625 * x_627) + x_630);
  let x_634 : f32 = vs_INTERP8.z;
  u_xlatb16 = (0.0f >= x_634);
  let x_638 : f32 = vs_INTERP8.z;
  u_xlatb27 = (x_638 >= 1.0f);
  let x_640 : bool = u_xlatb27;
  let x_641 : bool = u_xlatb16;
  u_xlatb16 = (x_640 | x_641);
  let x_643 : bool = u_xlatb16;
  let x_644 : f32 = u_xlat37;
  u_xlat37 = select(x_644, 1.0f, x_643);
  let x_646 : vec3<f32> = vs_INTERP0;
  let x_648 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat16 = (x_646 + -(x_648));
  let x_651 : vec3<f32> = u_xlat16;
  let x_652 : vec3<f32> = u_xlat16;
  u_xlat16.x = dot(x_651, x_652);
  let x_656 : f32 = u_xlat16.x;
  let x_658 : f32 = x_619.x_MainLightShadowParams.z;
  let x_661 : f32 = x_619.x_MainLightShadowParams.w;
  u_xlat16.x = ((x_656 * x_658) + x_661);
  let x_665 : f32 = u_xlat16.x;
  u_xlat16.x = clamp(x_665, 0.0f, 1.0f);
  let x_669 : f32 = u_xlat37;
  u_xlat27 = (-(x_669) + 1.0f);
  let x_673 : f32 = u_xlat16.x;
  let x_674 : f32 = u_xlat27;
  let x_676 : f32 = u_xlat37;
  u_xlat37 = ((x_673 * x_674) + x_676);
  let x_678 : vec3<f32> = u_xlat5;
  let x_681 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat16 = (vec3<f32>(x_678.x, x_678.x, x_678.x) * vec3<f32>(x_681.x, x_681.y, x_681.z));
  let x_685 : vec3<f32> = u_xlat3;
  let x_687 : vec3<f32> = u_xlat12;
  u_xlat39 = dot(-(x_685), x_687);
  let x_689 : f32 = u_xlat39;
  let x_690 : f32 = u_xlat39;
  u_xlat39 = (x_689 + x_690);
  let x_693 : vec3<f32> = u_xlat12;
  let x_694 : f32 = u_xlat39;
  let x_698 : vec3<f32> = u_xlat3;
  let x_700 : vec3<f32> = ((x_693 * -(vec3<f32>(x_694, x_694, x_694))) + -(x_698));
  let x_701 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_700.x, x_700.y, x_700.z, x_701.w);
  let x_703 : vec3<f32> = u_xlat12;
  let x_704 : vec3<f32> = u_xlat3;
  u_xlat39 = dot(x_703, x_704);
  let x_706 : f32 = u_xlat39;
  u_xlat39 = clamp(x_706, 0.0f, 1.0f);
  let x_708 : f32 = u_xlat39;
  u_xlat39 = (-(x_708) + 1.0f);
  let x_711 : f32 = u_xlat39;
  let x_712 : f32 = u_xlat39;
  u_xlat39 = (x_711 * x_712);
  let x_714 : f32 = u_xlat39;
  let x_715 : f32 = u_xlat39;
  u_xlat39 = (x_714 * x_715);
  let x_719 : f32 = u_xlat0.x;
  u_xlat40 = ((-(x_719) * 0.699999988f) + 1.700000048f);
  let x_726 : f32 = u_xlat0.x;
  let x_727 : f32 = u_xlat40;
  u_xlat0.x = (x_726 * x_727);
  let x_731 : f32 = u_xlat0.x;
  u_xlat0.x = (x_731 * 6.0f);
  let x_743 : vec4<f32> = u_xlat7;
  let x_746 : f32 = u_xlat0.x;
  let x_747 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_743.x, x_743.y, x_743.z), x_746);
  u_xlat7 = x_747;
  let x_749 : f32 = u_xlat7.w;
  u_xlat0.x = (x_749 + -1.0f);
  let x_753 : f32 = x_274.unity_SpecCube0_HDR.w;
  let x_755 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_753 * x_755) + 1.0f);
  let x_760 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_760, 0.0f);
  let x_764 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_764);
  let x_768 : f32 = u_xlat0.x;
  let x_770 : f32 = x_274.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_768 * x_770);
  let x_774 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_774);
  let x_778 : f32 = u_xlat0.x;
  let x_780 : f32 = x_274.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_778 * x_780);
  let x_783 : vec4<f32> = u_xlat7;
  let x_785 : vec4<f32> = u_xlat0;
  let x_787 : vec3<f32> = (vec3<f32>(x_783.x, x_783.y, x_783.z) * vec3<f32>(x_785.x, x_785.x, x_785.x));
  let x_788 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_787.x, x_787.y, x_787.z, x_788.w);
  let x_790 : f32 = u_xlat22;
  let x_792 : f32 = u_xlat22;
  let x_796 : vec2<f32> = ((vec2<f32>(x_790, x_790) * vec2<f32>(x_792, x_792)) + vec2<f32>(-1.0f, 1.0f));
  let x_797 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_796.x, x_797.y, x_796.y, x_797.w);
  let x_800 : f32 = u_xlat0.z;
  u_xlat22 = (1.0f / x_800);
  let x_803 : vec3<f32> = u_xlat2;
  let x_805 : f32 = u_xlat35;
  u_xlat8 = (-(x_803) + vec3<f32>(x_805, x_805, x_805));
  let x_808 : f32 = u_xlat39;
  let x_810 : vec3<f32> = u_xlat8;
  let x_812 : vec3<f32> = u_xlat2;
  u_xlat8 = ((vec3<f32>(x_808, x_808, x_808) * x_810) + x_812);
  let x_814 : f32 = u_xlat22;
  let x_816 : vec3<f32> = u_xlat8;
  u_xlat8 = (vec3<f32>(x_814, x_814, x_814) * x_816);
  let x_818 : vec4<f32> = u_xlat7;
  let x_820 : vec3<f32> = u_xlat8;
  let x_821 : vec3<f32> = (vec3<f32>(x_818.x, x_818.y, x_818.z) * x_820);
  let x_822 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_821.x, x_821.y, x_821.z, x_822.w);
  let x_824 : vec4<f32> = u_xlat4;
  let x_826 : vec3<f32> = u_xlat6;
  let x_828 : vec4<f32> = u_xlat7;
  let x_830 : vec3<f32> = ((vec3<f32>(x_824.x, x_824.y, x_824.z) * x_826) + vec3<f32>(x_828.x, x_828.y, x_828.z));
  let x_831 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_830.x, x_830.y, x_830.z, x_831.w);
  let x_833 : f32 = u_xlat37;
  let x_836 : f32 = x_274.unity_LightData.z;
  u_xlat22 = (x_833 * x_836);
  let x_838 : vec3<f32> = u_xlat12;
  let x_840 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat35 = dot(x_838, vec3<f32>(x_840.x, x_840.y, x_840.z));
  let x_843 : f32 = u_xlat35;
  u_xlat35 = clamp(x_843, 0.0f, 1.0f);
  let x_845 : f32 = u_xlat22;
  let x_846 : f32 = u_xlat35;
  u_xlat22 = (x_845 * x_846);
  let x_848 : f32 = u_xlat22;
  let x_850 : vec3<f32> = u_xlat16;
  u_xlat16 = (vec3<f32>(x_848, x_848, x_848) * x_850);
  let x_852 : vec3<f32> = u_xlat3;
  let x_854 : vec4<f32> = x_44.x_MainLightPosition;
  let x_856 : vec3<f32> = (x_852 + vec3<f32>(x_854.x, x_854.y, x_854.z));
  let x_857 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_856.x, x_856.y, x_856.z, x_857.w);
  let x_859 : vec4<f32> = u_xlat7;
  let x_861 : vec4<f32> = u_xlat7;
  u_xlat22 = dot(vec3<f32>(x_859.x, x_859.y, x_859.z), vec3<f32>(x_861.x, x_861.y, x_861.z));
  let x_864 : f32 = u_xlat22;
  u_xlat22 = max(x_864, 1.17549435e-37f);
  let x_867 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_867);
  let x_869 : f32 = u_xlat22;
  let x_871 : vec4<f32> = u_xlat7;
  let x_873 : vec3<f32> = (vec3<f32>(x_869, x_869, x_869) * vec3<f32>(x_871.x, x_871.y, x_871.z));
  let x_874 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_873.x, x_873.y, x_873.z, x_874.w);
  let x_876 : vec3<f32> = u_xlat12;
  let x_877 : vec4<f32> = u_xlat7;
  u_xlat22 = dot(x_876, vec3<f32>(x_877.x, x_877.y, x_877.z));
  let x_880 : f32 = u_xlat22;
  u_xlat22 = clamp(x_880, 0.0f, 1.0f);
  let x_883 : vec4<f32> = x_44.x_MainLightPosition;
  let x_885 : vec4<f32> = u_xlat7;
  u_xlat35 = dot(vec3<f32>(x_883.x, x_883.y, x_883.z), vec3<f32>(x_885.x, x_885.y, x_885.z));
  let x_888 : f32 = u_xlat35;
  u_xlat35 = clamp(x_888, 0.0f, 1.0f);
  let x_890 : f32 = u_xlat22;
  let x_891 : f32 = u_xlat22;
  u_xlat22 = (x_890 * x_891);
  let x_893 : f32 = u_xlat22;
  let x_895 : f32 = u_xlat0.x;
  u_xlat22 = ((x_893 * x_895) + 1.000010014f);
  let x_899 : f32 = u_xlat35;
  let x_900 : f32 = u_xlat35;
  u_xlat35 = (x_899 * x_900);
  let x_902 : f32 = u_xlat22;
  let x_903 : f32 = u_xlat22;
  u_xlat22 = (x_902 * x_903);
  let x_905 : f32 = u_xlat35;
  u_xlat35 = max(x_905, 0.100000001f);
  let x_908 : f32 = u_xlat22;
  let x_909 : f32 = u_xlat35;
  u_xlat22 = (x_908 * x_909);
  let x_911 : f32 = u_xlat36;
  let x_912 : f32 = u_xlat22;
  u_xlat22 = (x_911 * x_912);
  let x_915 : f32 = u_xlat1.x;
  let x_916 : f32 = u_xlat22;
  u_xlat22 = (x_915 / x_916);
  let x_918 : vec3<f32> = u_xlat2;
  let x_919 : f32 = u_xlat22;
  let x_922 : vec3<f32> = u_xlat6;
  let x_923 : vec3<f32> = ((x_918 * vec3<f32>(x_919, x_919, x_919)) + x_922);
  let x_924 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_923.x, x_923.y, x_923.z, x_924.w);
  let x_926 : vec3<f32> = u_xlat16;
  let x_927 : vec4<f32> = u_xlat7;
  u_xlat16 = (x_926 * vec3<f32>(x_927.x, x_927.y, x_927.z));
  let x_931 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_933 : f32 = x_274.unity_LightData.y;
  u_xlat22 = min(x_931, x_933);
  let x_937 : f32 = u_xlat22;
  u_xlatu22 = bitcast<u32>(i32(x_937));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_949 : u32 = u_xlatu_loop_1;
    let x_950 : u32 = u_xlatu22;
    if ((x_949 < x_950)) {
    } else {
      break;
    }
    let x_953 : u32 = u_xlatu_loop_1;
    u_xlatu37 = (x_953 >> 2u);
    let x_957 : u32 = u_xlatu_loop_1;
    u_xlati39 = bitcast<i32>((x_957 & 3u));
    let x_961 : u32 = u_xlatu37;
    let x_964 : vec4<f32> = x_274.unity_LightIndices[bitcast<i32>(x_961)];
    let x_974 : i32 = u_xlati39;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_979 : vec4<u32> = indexable[x_974];
    u_xlat37 = dot(x_964, bitcast<vec4<f32>>(x_979));
    let x_983 : f32 = u_xlat37;
    u_xlati37 = i32(x_983);
    let x_985 : vec3<f32> = vs_INTERP0;
    let x_997 : i32 = u_xlati37;
    let x_999 : vec4<f32> = x_996.x_AdditionalLightsPosition[x_997];
    let x_1002 : i32 = u_xlati37;
    let x_1004 : vec4<f32> = x_996.x_AdditionalLightsPosition[x_1002];
    u_xlat8 = ((-(x_985) * vec3<f32>(x_999.w, x_999.w, x_999.w)) + vec3<f32>(x_1004.x, x_1004.y, x_1004.z));
    let x_1007 : vec3<f32> = u_xlat8;
    let x_1008 : vec3<f32> = u_xlat8;
    u_xlat39 = dot(x_1007, x_1008);
    let x_1010 : f32 = u_xlat39;
    u_xlat39 = max(x_1010, 6.10351562e-05f);
    let x_1013 : f32 = u_xlat39;
    u_xlat40 = inverseSqrt(x_1013);
    let x_1016 : f32 = u_xlat40;
    let x_1018 : vec3<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_1016, x_1016, x_1016) * x_1018);
    let x_1021 : f32 = u_xlat39;
    u_xlat41 = (1.0f / x_1021);
    let x_1023 : f32 = u_xlat39;
    let x_1024 : i32 = u_xlati37;
    let x_1026 : f32 = x_996.x_AdditionalLightsAttenuation[x_1024].x;
    u_xlat39 = (x_1023 * x_1026);
    let x_1028 : f32 = u_xlat39;
    let x_1030 : f32 = u_xlat39;
    u_xlat39 = ((-(x_1028) * x_1030) + 1.0f);
    let x_1033 : f32 = u_xlat39;
    u_xlat39 = max(x_1033, 0.0f);
    let x_1035 : f32 = u_xlat39;
    let x_1036 : f32 = u_xlat39;
    u_xlat39 = (x_1035 * x_1036);
    let x_1038 : f32 = u_xlat39;
    let x_1039 : f32 = u_xlat41;
    u_xlat39 = (x_1038 * x_1039);
    let x_1041 : i32 = u_xlati37;
    let x_1043 : vec4<f32> = x_996.x_AdditionalLightsSpotDir[x_1041];
    let x_1045 : vec3<f32> = u_xlat9;
    u_xlat41 = dot(vec3<f32>(x_1043.x, x_1043.y, x_1043.z), x_1045);
    let x_1047 : f32 = u_xlat41;
    let x_1048 : i32 = u_xlati37;
    let x_1050 : f32 = x_996.x_AdditionalLightsAttenuation[x_1048].z;
    let x_1052 : i32 = u_xlati37;
    let x_1054 : f32 = x_996.x_AdditionalLightsAttenuation[x_1052].w;
    u_xlat41 = ((x_1047 * x_1050) + x_1054);
    let x_1056 : f32 = u_xlat41;
    u_xlat41 = clamp(x_1056, 0.0f, 1.0f);
    let x_1058 : f32 = u_xlat41;
    let x_1059 : f32 = u_xlat41;
    u_xlat41 = (x_1058 * x_1059);
    let x_1061 : f32 = u_xlat39;
    let x_1062 : f32 = u_xlat41;
    u_xlat39 = (x_1061 * x_1062);
    let x_1065 : vec3<f32> = u_xlat5;
    let x_1067 : i32 = u_xlati37;
    let x_1069 : vec4<f32> = x_996.x_AdditionalLightsColor[x_1067];
    u_xlat10 = (vec3<f32>(x_1065.x, x_1065.x, x_1065.x) * vec3<f32>(x_1069.x, x_1069.y, x_1069.z));
    let x_1072 : vec3<f32> = u_xlat12;
    let x_1073 : vec3<f32> = u_xlat9;
    u_xlat37 = dot(x_1072, x_1073);
    let x_1075 : f32 = u_xlat37;
    u_xlat37 = clamp(x_1075, 0.0f, 1.0f);
    let x_1077 : f32 = u_xlat37;
    let x_1078 : f32 = u_xlat39;
    u_xlat37 = (x_1077 * x_1078);
    let x_1080 : f32 = u_xlat37;
    let x_1082 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1080, x_1080, x_1080) * x_1082);
    let x_1084 : vec3<f32> = u_xlat8;
    let x_1085 : f32 = u_xlat40;
    let x_1088 : vec3<f32> = u_xlat3;
    u_xlat8 = ((x_1084 * vec3<f32>(x_1085, x_1085, x_1085)) + x_1088);
    let x_1090 : vec3<f32> = u_xlat8;
    let x_1091 : vec3<f32> = u_xlat8;
    u_xlat37 = dot(x_1090, x_1091);
    let x_1093 : f32 = u_xlat37;
    u_xlat37 = max(x_1093, 1.17549435e-37f);
    let x_1095 : f32 = u_xlat37;
    u_xlat37 = inverseSqrt(x_1095);
    let x_1097 : f32 = u_xlat37;
    let x_1099 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_1097, x_1097, x_1097) * x_1099);
    let x_1101 : vec3<f32> = u_xlat12;
    let x_1102 : vec3<f32> = u_xlat8;
    u_xlat37 = dot(x_1101, x_1102);
    let x_1104 : f32 = u_xlat37;
    u_xlat37 = clamp(x_1104, 0.0f, 1.0f);
    let x_1106 : vec3<f32> = u_xlat9;
    let x_1107 : vec3<f32> = u_xlat8;
    u_xlat39 = dot(x_1106, x_1107);
    let x_1109 : f32 = u_xlat39;
    u_xlat39 = clamp(x_1109, 0.0f, 1.0f);
    let x_1111 : f32 = u_xlat37;
    let x_1112 : f32 = u_xlat37;
    u_xlat37 = (x_1111 * x_1112);
    let x_1114 : f32 = u_xlat37;
    let x_1116 : f32 = u_xlat0.x;
    u_xlat37 = ((x_1114 * x_1116) + 1.000010014f);
    let x_1119 : f32 = u_xlat39;
    let x_1120 : f32 = u_xlat39;
    u_xlat39 = (x_1119 * x_1120);
    let x_1122 : f32 = u_xlat37;
    let x_1123 : f32 = u_xlat37;
    u_xlat37 = (x_1122 * x_1123);
    let x_1125 : f32 = u_xlat39;
    u_xlat39 = max(x_1125, 0.100000001f);
    let x_1127 : f32 = u_xlat37;
    let x_1128 : f32 = u_xlat39;
    u_xlat37 = (x_1127 * x_1128);
    let x_1130 : f32 = u_xlat36;
    let x_1131 : f32 = u_xlat37;
    u_xlat37 = (x_1130 * x_1131);
    let x_1134 : f32 = u_xlat1.x;
    let x_1135 : f32 = u_xlat37;
    u_xlat37 = (x_1134 / x_1135);
    let x_1137 : vec3<f32> = u_xlat2;
    let x_1138 : f32 = u_xlat37;
    let x_1141 : vec3<f32> = u_xlat6;
    u_xlat8 = ((x_1137 * vec3<f32>(x_1138, x_1138, x_1138)) + x_1141);
    let x_1143 : vec3<f32> = u_xlat8;
    let x_1144 : vec3<f32> = u_xlat10;
    let x_1146 : vec4<f32> = u_xlat7;
    let x_1148 : vec3<f32> = ((x_1143 * x_1144) + vec3<f32>(x_1146.x, x_1146.y, x_1146.z));
    let x_1149 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1148.x, x_1148.y, x_1148.z, x_1149.w);

    continuing {
      let x_1151 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1151 + bitcast<u32>(1i));
    }
  }
  let x_1153 : vec4<f32> = u_xlat4;
  let x_1155 : f32 = u_xlat33;
  let x_1158 : vec3<f32> = u_xlat16;
  let x_1159 : vec3<f32> = ((vec3<f32>(x_1153.x, x_1153.y, x_1153.z) * vec3<f32>(x_1155, x_1155, x_1155)) + x_1158);
  let x_1160 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1159.x, x_1160.y, x_1159.y, x_1159.z);
  let x_1162 : vec4<f32> = u_xlat7;
  let x_1164 : vec4<f32> = u_xlat0;
  let x_1166 : vec3<f32> = (vec3<f32>(x_1162.x, x_1162.y, x_1162.z) + vec3<f32>(x_1164.x, x_1164.z, x_1164.w));
  let x_1167 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1166.x, x_1167.y, x_1166.y, x_1166.z);
  let x_1170 : f32 = u_xlat11.x;
  let x_1172 : f32 = u_xlat11.x;
  u_xlat11.x = (x_1170 * -(x_1172));
  let x_1177 : f32 = u_xlat11.x;
  u_xlat11.x = exp2(x_1177);
  let x_1180 : vec4<f32> = u_xlat0;
  let x_1184 : vec4<f32> = x_44.unity_FogColor;
  let x_1187 : vec3<f32> = (vec3<f32>(x_1180.x, x_1180.z, x_1180.w) + -(vec3<f32>(x_1184.x, x_1184.y, x_1184.z)));
  let x_1188 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1187.x, x_1188.y, x_1187.y, x_1187.z);
  let x_1192 : vec2<f32> = u_xlat11;
  let x_1194 : vec4<f32> = u_xlat0;
  let x_1198 : vec4<f32> = x_44.unity_FogColor;
  let x_1200 : vec3<f32> = ((vec3<f32>(x_1192.x, x_1192.x, x_1192.x) * vec3<f32>(x_1194.x, x_1194.z, x_1194.w)) + vec3<f32>(x_1198.x, x_1198.y, x_1198.z));
  let x_1201 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1200.x, x_1200.y, x_1200.z, x_1201.w);
  let x_1206 : u32 = x_44.x_RenderingLayerMaxInt;
  let x_1208 : f32 = x_274.unity_RenderingLayer.x;
  u_xlatu0 = (x_1206 & bitcast<u32>(x_1208));
  let x_1211 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_1211);
  let x_1216 : f32 = u_xlat0.x;
  let x_1219 : f32 = x_44.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_1216 * x_1219);
  let x_1224 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_1224, 0.0f, 1.0f);
  SV_Target0.w = 1.0f;
  let x_1229 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_1229.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
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
  return main_out(SV_Target0, SV_Target1);
}

