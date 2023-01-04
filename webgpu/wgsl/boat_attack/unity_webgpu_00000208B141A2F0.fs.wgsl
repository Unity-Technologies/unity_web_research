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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(5) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_314 : MainLightShadows;

@group(1) @binding(2) var<uniform> x_395 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_542 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlatb1 : bool;
  var u_xlat10 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var x_111 : vec3<f32>;
  var u_xlat28 : f32;
  var u_xlat29 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat30 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlatb22 : bool;
  var u_xlatb31 : bool;
  var x_339 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlat31 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat32 : f32;
  var u_xlatu5 : u32;
  var u_xlat14 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu15 : u32;
  var u_xlati24 : i32;
  var u_xlat15 : vec3<f32>;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati15 : i32;
  var u_xlat7 : vec3<f32>;
  var u_xlat24 : f32;
  var u_xlat33 : f32;
  var u_xlat8 : vec3<f32>;
  var u_xlat34 : f32;
  var u_xlat9 : vec3<f32>;
  var u_xlatb9 : bool;
  var x_734 : f32;
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
  let x_52 : vec4<f32> = u_xlat0;
  let x_59 : vec4<f32> = x_56.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_52.w, x_52.x, x_52.y, x_52.z) * vec4<f32>(x_59.w, x_59.x, x_59.y, x_59.z));
  let x_67 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb1 = (x_67 == 0.0f);
  let x_74 : vec3<f32> = vs_TEXCOORD1;
  let x_79 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat10 = (-(x_74) + x_79);
  let x_82 : vec3<f32> = u_xlat10;
  let x_83 : vec3<f32> = u_xlat10;
  u_xlat2.x = dot(x_82, x_83);
  let x_88 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_88);
  let x_91 : vec3<f32> = u_xlat10;
  let x_92 : vec3<f32> = u_xlat2;
  u_xlat10 = (x_91 * vec3<f32>(x_92.x, x_92.x, x_92.x));
  let x_99 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat2.x = x_99;
  let x_102 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat2.y = x_102;
  let x_107 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat2.z = x_107;
  let x_110 : bool = u_xlatb1;
  if (x_110) {
    let x_114 : vec3<f32> = u_xlat10;
    x_111 = x_114;
  } else {
    let x_116 : vec3<f32> = u_xlat2;
    x_111 = x_116;
  }
  let x_117 : vec3<f32> = x_111;
  u_xlat1 = x_117;
  let x_120 : vec3<f32> = vs_TEXCOORD2;
  let x_121 : vec3<f32> = vs_TEXCOORD2;
  u_xlat28 = dot(x_120, x_121);
  let x_123 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_123);
  let x_125 : f32 = u_xlat28;
  let x_127 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_125, x_125, x_125) * x_127);
  let x_129 : vec3<f32> = u_xlat1;
  let x_130 : vec3<f32> = u_xlat1;
  u_xlat28 = dot(x_129, x_130);
  let x_132 : f32 = u_xlat28;
  u_xlat28 = max(x_132, 1.17549435e-37f);
  let x_135 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_135);
  let x_139 : f32 = vs_TEXCOORD1.y;
  let x_141 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat29 = (x_139 * x_141);
  let x_144 : f32 = x_44.unity_MatrixV[0i].z;
  let x_146 : f32 = vs_TEXCOORD1.x;
  let x_148 : f32 = u_xlat29;
  u_xlat29 = ((x_144 * x_146) + x_148);
  let x_151 : f32 = x_44.unity_MatrixV[2i].z;
  let x_153 : f32 = vs_TEXCOORD1.z;
  let x_155 : f32 = u_xlat29;
  u_xlat29 = ((x_151 * x_153) + x_155);
  let x_157 : f32 = u_xlat29;
  let x_160 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat29 = (x_157 + x_160);
  let x_162 : f32 = u_xlat29;
  let x_166 : f32 = x_44.x_ProjectionParams.y;
  u_xlat29 = (-(x_162) + -(x_166));
  let x_169 : f32 = u_xlat29;
  u_xlat29 = max(x_169, 0.0f);
  let x_171 : f32 = u_xlat29;
  let x_174 : f32 = x_44.unity_FogParams.x;
  u_xlat29 = (x_171 * x_174);
  let x_183 : vec2<f32> = vs_TEXCOORD7;
  let x_185 : f32 = x_44.x_GlobalMipBias.x;
  let x_186 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_183, x_185);
  u_xlat3 = x_186;
  let x_192 : vec2<f32> = vs_TEXCOORD7;
  let x_194 : f32 = x_44.x_GlobalMipBias.x;
  let x_195 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_192, x_194);
  u_xlat4 = vec3<f32>(x_195.x, x_195.y, x_195.z);
  let x_197 : vec4<f32> = u_xlat3;
  let x_201 : vec3<f32> = (vec3<f32>(x_197.x, x_197.y, x_197.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_202 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_201.x, x_201.y, x_201.z, x_202.w);
  let x_204 : vec3<f32> = u_xlat2;
  let x_205 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(x_204, vec3<f32>(x_205.x, x_205.y, x_205.z));
  let x_210 : f32 = u_xlat3.x;
  u_xlat3.x = (x_210 + 0.5f);
  let x_214 : vec4<f32> = u_xlat3;
  let x_216 : vec3<f32> = u_xlat4;
  let x_217 : vec3<f32> = (vec3<f32>(x_214.x, x_214.x, x_214.x) * x_216);
  let x_218 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_217.x, x_217.y, x_217.z, x_218.w);
  let x_222 : f32 = u_xlat3.w;
  u_xlat30 = max(x_222, 0.0001f);
  let x_225 : vec4<f32> = u_xlat3;
  let x_227 : f32 = u_xlat30;
  let x_229 : vec3<f32> = (vec3<f32>(x_225.x, x_225.y, x_225.z) / vec3<f32>(x_227, x_227, x_227));
  let x_230 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_229.x, x_229.y, x_229.z, x_230.w);
  let x_234 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_235 : vec2<f32> = vec2<f32>(x_234.x, x_234.y);
  let x_239 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_235.x, x_235.y));
  let x_240 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_239.x, x_239.y, x_240.z);
  let x_242 : vec3<f32> = u_xlat4;
  let x_244 : vec4<f32> = hlslcc_FragCoord;
  let x_246 : vec2<f32> = (vec2<f32>(x_242.x, x_242.y) * vec2<f32>(x_244.x, x_244.y));
  let x_247 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_246.x, x_246.y, x_247.z);
  let x_250 : f32 = u_xlat4.y;
  let x_253 : f32 = x_44.x_ScaleBiasRt.x;
  let x_256 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat30 = ((x_250 * x_253) + x_256);
  let x_258 : f32 = u_xlat30;
  u_xlat4.z = (-(x_258) + 1.0f);
  let x_267 : vec3<f32> = u_xlat4;
  let x_270 : f32 = x_44.x_GlobalMipBias.x;
  let x_271 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_267.x, x_267.z), x_270);
  u_xlat30 = x_271.x;
  let x_273 : f32 = u_xlat30;
  u_xlat4.x = (x_273 + -1.0f);
  let x_279 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_281 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_279 * x_281) + 1.0f);
  let x_285 : f32 = u_xlat30;
  u_xlat30 = min(x_285, 1.0f);
  let x_289 : vec4<f32> = vs_TEXCOORD6;
  let x_290 : vec2<f32> = vec2<f32>(x_289.x, x_289.y);
  let x_292 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_290.x, x_290.y, x_292);
  let x_305 : vec3<f32> = txVec0;
  let x_307 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_305.xy, x_305.z);
  u_xlat13.x = x_307;
  let x_316 : f32 = x_314.x_MainLightShadowParams.x;
  u_xlat22 = (-(x_316) + 1.0f);
  let x_320 : f32 = u_xlat13.x;
  let x_322 : f32 = x_314.x_MainLightShadowParams.x;
  let x_324 : f32 = u_xlat22;
  u_xlat13.x = ((x_320 * x_322) + x_324);
  let x_329 : f32 = vs_TEXCOORD6.z;
  u_xlatb22 = (0.0f >= x_329);
  let x_333 : f32 = vs_TEXCOORD6.z;
  u_xlatb31 = (x_333 >= 1.0f);
  let x_335 : bool = u_xlatb31;
  let x_336 : bool = u_xlatb22;
  u_xlatb22 = (x_335 | x_336);
  let x_338 : bool = u_xlatb22;
  if (x_338) {
    x_339 = 1.0f;
  } else {
    let x_344 : f32 = u_xlat13.x;
    x_339 = x_344;
  }
  let x_345 : f32 = x_339;
  u_xlat13.x = x_345;
  let x_348 : vec3<f32> = vs_TEXCOORD1;
  let x_350 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat5 = (x_348 + -(x_350));
  let x_353 : vec3<f32> = u_xlat5;
  let x_354 : vec3<f32> = u_xlat5;
  u_xlat22 = dot(x_353, x_354);
  let x_356 : f32 = u_xlat22;
  let x_358 : f32 = x_314.x_MainLightShadowParams.z;
  let x_361 : f32 = x_314.x_MainLightShadowParams.w;
  u_xlat22 = ((x_356 * x_358) + x_361);
  let x_363 : f32 = u_xlat22;
  u_xlat22 = clamp(x_363, 0.0f, 1.0f);
  let x_367 : f32 = u_xlat13.x;
  u_xlat31 = (-(x_367) + 1.0f);
  let x_370 : f32 = u_xlat22;
  let x_371 : f32 = u_xlat31;
  let x_374 : f32 = u_xlat13.x;
  u_xlat13.x = ((x_370 * x_371) + x_374);
  let x_377 : vec3<f32> = u_xlat4;
  let x_380 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat5 = (vec3<f32>(x_377.x, x_377.x, x_377.x) * vec3<f32>(x_380.x, x_380.y, x_380.z));
  let x_383 : f32 = u_xlat30;
  let x_385 : vec4<f32> = u_xlat3;
  let x_387 : vec3<f32> = (vec3<f32>(x_383, x_383, x_383) * vec3<f32>(x_385.x, x_385.y, x_385.z));
  let x_388 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_387.x, x_387.y, x_387.z, x_388.w);
  let x_391 : f32 = u_xlat13.x;
  let x_398 : f32 = x_395.unity_LightData.z;
  u_xlat30 = (x_391 * x_398);
  let x_400 : f32 = u_xlat30;
  let x_402 : vec3<f32> = u_xlat5;
  u_xlat13 = (vec3<f32>(x_400, x_400, x_400) * x_402);
  let x_404 : vec3<f32> = u_xlat2;
  let x_406 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat30 = dot(x_404, vec3<f32>(x_406.x, x_406.y, x_406.z));
  let x_409 : f32 = u_xlat30;
  u_xlat30 = clamp(x_409, 0.0f, 1.0f);
  let x_411 : f32 = u_xlat30;
  let x_413 : vec3<f32> = u_xlat13;
  u_xlat5 = (vec3<f32>(x_411, x_411, x_411) * x_413);
  let x_416 : f32 = u_xlat0.x;
  u_xlat30 = ((x_416 * 10.0f) + 1.0f);
  let x_420 : f32 = u_xlat30;
  u_xlat30 = exp2(x_420);
  let x_423 : vec3<f32> = u_xlat1;
  let x_424 : f32 = u_xlat28;
  let x_428 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat6 = ((x_423 * vec3<f32>(x_424, x_424, x_424)) + vec3<f32>(x_428.x, x_428.y, x_428.z));
  let x_432 : vec3<f32> = u_xlat6;
  let x_433 : vec3<f32> = u_xlat6;
  u_xlat32 = dot(x_432, x_433);
  let x_435 : f32 = u_xlat32;
  u_xlat32 = max(x_435, 1.17549435e-37f);
  let x_437 : f32 = u_xlat32;
  u_xlat32 = inverseSqrt(x_437);
  let x_439 : f32 = u_xlat32;
  let x_441 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_439, x_439, x_439) * x_441);
  let x_443 : vec3<f32> = u_xlat2;
  let x_444 : vec3<f32> = u_xlat6;
  u_xlat32 = dot(x_443, x_444);
  let x_446 : f32 = u_xlat32;
  u_xlat32 = clamp(x_446, 0.0f, 1.0f);
  let x_448 : f32 = u_xlat32;
  u_xlat32 = log2(x_448);
  let x_450 : f32 = u_xlat30;
  let x_451 : f32 = u_xlat32;
  u_xlat32 = (x_450 * x_451);
  let x_453 : f32 = u_xlat32;
  u_xlat32 = exp2(x_453);
  let x_455 : f32 = u_xlat32;
  let x_458 : vec4<f32> = x_56.x_SpecColor;
  u_xlat6 = (vec3<f32>(x_455, x_455, x_455) * vec3<f32>(x_458.x, x_458.y, x_458.z));
  let x_461 : vec3<f32> = u_xlat13;
  let x_462 : vec3<f32> = u_xlat6;
  u_xlat13 = (x_461 * x_462);
  let x_464 : vec3<f32> = u_xlat5;
  let x_465 : vec4<f32> = u_xlat0;
  let x_468 : vec3<f32> = u_xlat13;
  u_xlat13 = ((x_464 * vec3<f32>(x_465.y, x_465.z, x_465.w)) + x_468);
  let x_471 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_473 : f32 = x_395.unity_LightData.y;
  u_xlat5.x = min(x_471, x_473);
  let x_479 : f32 = u_xlat5.x;
  u_xlatu5 = bitcast<u32>(i32(x_479));
  u_xlat14.x = 0.0f;
  u_xlat14.y = 0.0f;
  u_xlat14.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_492 : u32 = u_xlatu_loop_1;
    let x_493 : u32 = u_xlatu5;
    if ((x_492 < x_493)) {
    } else {
      break;
    }
    let x_496 : u32 = u_xlatu_loop_1;
    u_xlatu15 = (x_496 >> 2u);
    let x_500 : u32 = u_xlatu_loop_1;
    u_xlati24 = bitcast<i32>((x_500 & 3u));
    let x_504 : u32 = u_xlatu15;
    let x_507 : vec4<f32> = x_395.unity_LightIndices[bitcast<i32>(x_504)];
    let x_517 : i32 = u_xlati24;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_522 : vec4<u32> = indexable[x_517];
    u_xlat15.x = dot(x_507, bitcast<vec4<f32>>(x_522));
    let x_528 : f32 = u_xlat15.x;
    u_xlati15 = i32(x_528);
    let x_531 : vec3<f32> = vs_TEXCOORD1;
    let x_543 : i32 = u_xlati15;
    let x_545 : vec4<f32> = x_542.x_AdditionalLightsPosition[x_543];
    let x_548 : i32 = u_xlati15;
    let x_550 : vec4<f32> = x_542.x_AdditionalLightsPosition[x_548];
    u_xlat7 = ((-(x_531) * vec3<f32>(x_545.w, x_545.w, x_545.w)) + vec3<f32>(x_550.x, x_550.y, x_550.z));
    let x_554 : vec3<f32> = u_xlat7;
    let x_555 : vec3<f32> = u_xlat7;
    u_xlat24 = dot(x_554, x_555);
    let x_557 : f32 = u_xlat24;
    u_xlat24 = max(x_557, 6.10351562e-05f);
    let x_561 : f32 = u_xlat24;
    u_xlat33 = inverseSqrt(x_561);
    let x_563 : f32 = u_xlat33;
    let x_565 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_563, x_563, x_563) * x_565);
    let x_567 : f32 = u_xlat24;
    u_xlat33 = (1.0f / x_567);
    let x_569 : f32 = u_xlat24;
    let x_570 : i32 = u_xlati15;
    let x_572 : f32 = x_542.x_AdditionalLightsAttenuation[x_570].x;
    u_xlat24 = (x_569 * x_572);
    let x_574 : f32 = u_xlat24;
    let x_576 : f32 = u_xlat24;
    u_xlat24 = ((-(x_574) * x_576) + 1.0f);
    let x_579 : f32 = u_xlat24;
    u_xlat24 = max(x_579, 0.0f);
    let x_581 : f32 = u_xlat24;
    let x_582 : f32 = u_xlat24;
    u_xlat24 = (x_581 * x_582);
    let x_584 : f32 = u_xlat24;
    let x_585 : f32 = u_xlat33;
    u_xlat24 = (x_584 * x_585);
    let x_587 : i32 = u_xlati15;
    let x_589 : vec4<f32> = x_542.x_AdditionalLightsSpotDir[x_587];
    let x_591 : vec3<f32> = u_xlat7;
    u_xlat33 = dot(vec3<f32>(x_589.x, x_589.y, x_589.z), x_591);
    let x_593 : f32 = u_xlat33;
    let x_594 : i32 = u_xlati15;
    let x_596 : f32 = x_542.x_AdditionalLightsAttenuation[x_594].z;
    let x_598 : i32 = u_xlati15;
    let x_600 : f32 = x_542.x_AdditionalLightsAttenuation[x_598].w;
    u_xlat33 = ((x_593 * x_596) + x_600);
    let x_602 : f32 = u_xlat33;
    u_xlat33 = clamp(x_602, 0.0f, 1.0f);
    let x_604 : f32 = u_xlat33;
    let x_605 : f32 = u_xlat33;
    u_xlat33 = (x_604 * x_605);
    let x_607 : f32 = u_xlat33;
    let x_608 : f32 = u_xlat24;
    u_xlat24 = (x_607 * x_608);
    let x_611 : vec3<f32> = u_xlat4;
    let x_613 : i32 = u_xlati15;
    let x_615 : vec4<f32> = x_542.x_AdditionalLightsColor[x_613];
    u_xlat8 = (vec3<f32>(x_611.x, x_611.x, x_611.x) * vec3<f32>(x_615.x, x_615.y, x_615.z));
    let x_618 : f32 = u_xlat24;
    let x_620 : vec3<f32> = u_xlat8;
    u_xlat15 = (vec3<f32>(x_618, x_618, x_618) * x_620);
    let x_623 : vec3<f32> = u_xlat2;
    let x_624 : vec3<f32> = u_xlat7;
    u_xlat34 = dot(x_623, x_624);
    let x_626 : f32 = u_xlat34;
    u_xlat34 = clamp(x_626, 0.0f, 1.0f);
    let x_628 : vec3<f32> = u_xlat15;
    let x_629 : f32 = u_xlat34;
    u_xlat8 = (x_628 * vec3<f32>(x_629, x_629, x_629));
    let x_632 : vec3<f32> = u_xlat1;
    let x_633 : f32 = u_xlat28;
    let x_636 : vec3<f32> = u_xlat7;
    u_xlat7 = ((x_632 * vec3<f32>(x_633, x_633, x_633)) + x_636);
    let x_638 : vec3<f32> = u_xlat7;
    let x_639 : vec3<f32> = u_xlat7;
    u_xlat34 = dot(x_638, x_639);
    let x_641 : f32 = u_xlat34;
    u_xlat34 = max(x_641, 1.17549435e-37f);
    let x_643 : f32 = u_xlat34;
    u_xlat34 = inverseSqrt(x_643);
    let x_645 : f32 = u_xlat34;
    let x_647 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_645, x_645, x_645) * x_647);
    let x_649 : vec3<f32> = u_xlat2;
    let x_650 : vec3<f32> = u_xlat7;
    u_xlat7.x = dot(x_649, x_650);
    let x_654 : f32 = u_xlat7.x;
    u_xlat7.x = clamp(x_654, 0.0f, 1.0f);
    let x_658 : f32 = u_xlat7.x;
    u_xlat7.x = log2(x_658);
    let x_661 : f32 = u_xlat30;
    let x_663 : f32 = u_xlat7.x;
    u_xlat7.x = (x_661 * x_663);
    let x_667 : f32 = u_xlat7.x;
    u_xlat7.x = exp2(x_667);
    let x_670 : vec3<f32> = u_xlat7;
    let x_673 : vec4<f32> = x_56.x_SpecColor;
    u_xlat7 = (vec3<f32>(x_670.x, x_670.x, x_670.x) * vec3<f32>(x_673.x, x_673.y, x_673.z));
    let x_676 : vec3<f32> = u_xlat15;
    let x_677 : vec3<f32> = u_xlat7;
    u_xlat15 = (x_676 * x_677);
    let x_679 : vec3<f32> = u_xlat8;
    let x_680 : vec4<f32> = u_xlat0;
    let x_683 : vec3<f32> = u_xlat15;
    u_xlat15 = ((x_679 * vec3<f32>(x_680.y, x_680.z, x_680.w)) + x_683);
    let x_685 : vec3<f32> = u_xlat14;
    let x_686 : vec3<f32> = u_xlat15;
    u_xlat14 = (x_685 + x_686);

    continuing {
      let x_688 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_688 + bitcast<u32>(1i));
    }
  }
  let x_691 : vec4<f32> = u_xlat3;
  let x_693 : vec4<f32> = u_xlat0;
  let x_696 : vec3<f32> = u_xlat13;
  u_xlat9 = ((vec3<f32>(x_691.x, x_691.y, x_691.z) * vec3<f32>(x_693.y, x_693.z, x_693.w)) + x_696);
  let x_698 : vec3<f32> = u_xlat14;
  let x_699 : vec3<f32> = u_xlat9;
  u_xlat9 = (x_698 + x_699);
  let x_701 : f32 = u_xlat29;
  let x_702 : f32 = u_xlat29;
  u_xlat1.x = (x_701 * -(x_702));
  let x_707 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_707);
  let x_710 : vec3<f32> = u_xlat9;
  let x_713 : vec4<f32> = x_44.unity_FogColor;
  u_xlat9 = (x_710 + -(vec3<f32>(x_713.x, x_713.y, x_713.z)));
  let x_719 : vec3<f32> = u_xlat1;
  let x_721 : vec3<f32> = u_xlat9;
  let x_724 : vec4<f32> = x_44.unity_FogColor;
  let x_726 : vec3<f32> = ((vec3<f32>(x_719.x, x_719.x, x_719.x) * x_721) + vec3<f32>(x_724.x, x_724.y, x_724.z));
  let x_727 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_726.x, x_726.y, x_726.z, x_727.w);
  let x_731 : f32 = x_56.x_Surface;
  u_xlatb9 = (x_731 == 1.0f);
  let x_733 : bool = u_xlatb9;
  if (x_733) {
    let x_738 : f32 = u_xlat0.x;
    x_734 = x_738;
  } else {
    x_734 = 1.0f;
  }
  let x_740 : f32 = x_734;
  SV_Target0.w = x_740;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD7_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}

