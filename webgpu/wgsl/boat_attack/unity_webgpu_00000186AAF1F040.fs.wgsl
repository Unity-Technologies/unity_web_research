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

@group(1) @binding(4) var<uniform> x_288 : MainLightShadows;

@group(1) @binding(2) var<uniform> x_377 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_521 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlatb1 : bool;
  var u_xlat10 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var x_96 : f32;
  var x_110 : f32;
  var x_122 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlat28 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat29 : f32;
  var u_xlat30 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb13 : bool;
  var u_xlatb22 : bool;
  var x_315 : f32;
  var u_xlat22 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat31 : f32;
  var u_xlatu31 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu6 : u32;
  var u_xlati15 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati6 : i32;
  var u_xlat15 : vec3<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat16 : vec3<f32>;
  var u_xlat8 : vec3<f32>;
  var u_xlat33 : f32;
  var u_xlat9 : vec3<f32>;
  var u_xlatb9 : bool;
  var x_723 : f32;
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
  let x_95 : bool = u_xlatb1;
  if (x_95) {
    let x_100 : f32 = u_xlat10.x;
    x_96 = x_100;
  } else {
    let x_106 : f32 = x_44.unity_MatrixV[0i].z;
    x_96 = x_106;
  }
  let x_107 : f32 = x_96;
  u_xlat2.x = x_107;
  let x_109 : bool = u_xlatb1;
  if (x_109) {
    let x_115 : f32 = u_xlat10.y;
    x_110 = x_115;
  } else {
    let x_118 : f32 = x_44.unity_MatrixV[1i].z;
    x_110 = x_118;
  }
  let x_119 : f32 = x_110;
  u_xlat2.y = x_119;
  let x_121 : bool = u_xlatb1;
  if (x_121) {
    let x_126 : f32 = u_xlat10.z;
    x_122 = x_126;
  } else {
    let x_130 : f32 = x_44.unity_MatrixV[2i].z;
    x_122 = x_130;
  }
  let x_131 : f32 = x_122;
  u_xlat2.z = x_131;
  let x_135 : vec3<f32> = vs_TEXCOORD2;
  let x_136 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_135, x_136);
  let x_140 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_140);
  let x_143 : vec3<f32> = u_xlat1;
  let x_145 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1 = (vec3<f32>(x_143.x, x_143.x, x_143.x) * x_145);
  let x_148 : vec3<f32> = u_xlat2;
  let x_149 : vec3<f32> = u_xlat2;
  u_xlat28 = dot(x_148, x_149);
  let x_151 : f32 = u_xlat28;
  u_xlat28 = max(x_151, 1.17549435e-37f);
  let x_154 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_154);
  let x_163 : vec2<f32> = vs_TEXCOORD7;
  let x_165 : f32 = x_44.x_GlobalMipBias.x;
  let x_166 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_163, x_165);
  u_xlat3 = x_166;
  let x_172 : vec2<f32> = vs_TEXCOORD7;
  let x_174 : f32 = x_44.x_GlobalMipBias.x;
  let x_175 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_172, x_174);
  u_xlat4 = vec3<f32>(x_175.x, x_175.y, x_175.z);
  let x_177 : vec4<f32> = u_xlat3;
  let x_181 : vec3<f32> = (vec3<f32>(x_177.x, x_177.y, x_177.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_182 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_181.x, x_181.y, x_181.z, x_182.w);
  let x_185 : vec3<f32> = u_xlat1;
  let x_186 : vec4<f32> = u_xlat3;
  u_xlat29 = dot(x_185, vec3<f32>(x_186.x, x_186.y, x_186.z));
  let x_189 : f32 = u_xlat29;
  u_xlat29 = (x_189 + 0.5f);
  let x_192 : f32 = u_xlat29;
  let x_194 : vec3<f32> = u_xlat4;
  let x_195 : vec3<f32> = (vec3<f32>(x_192, x_192, x_192) * x_194);
  let x_196 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_195.x, x_195.y, x_195.z, x_196.w);
  let x_199 : f32 = u_xlat3.w;
  u_xlat29 = max(x_199, 0.0001f);
  let x_202 : vec4<f32> = u_xlat3;
  let x_204 : f32 = u_xlat29;
  let x_206 : vec3<f32> = (vec3<f32>(x_202.x, x_202.y, x_202.z) / vec3<f32>(x_204, x_204, x_204));
  let x_207 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_206.x, x_206.y, x_206.z, x_207.w);
  let x_211 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_212 : vec2<f32> = vec2<f32>(x_211.x, x_211.y);
  let x_216 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_212.x, x_212.y));
  let x_217 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_216.x, x_216.y, x_217.z);
  let x_219 : vec3<f32> = u_xlat4;
  let x_221 : vec4<f32> = hlslcc_FragCoord;
  let x_223 : vec2<f32> = (vec2<f32>(x_219.x, x_219.y) * vec2<f32>(x_221.x, x_221.y));
  let x_224 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_223.x, x_223.y, x_224.z);
  let x_227 : f32 = u_xlat4.y;
  let x_230 : f32 = x_44.x_ScaleBiasRt.x;
  let x_233 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat29 = ((x_227 * x_230) + x_233);
  let x_235 : f32 = u_xlat29;
  u_xlat4.z = (-(x_235) + 1.0f);
  let x_244 : vec3<f32> = u_xlat4;
  let x_247 : f32 = x_44.x_GlobalMipBias.x;
  let x_248 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_244.x, x_244.z), x_247);
  u_xlat29 = x_248.x;
  let x_251 : f32 = u_xlat29;
  u_xlat30 = (x_251 + -1.0f);
  let x_256 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_257 : f32 = u_xlat30;
  u_xlat30 = ((x_256 * x_257) + 1.0f);
  let x_260 : f32 = u_xlat29;
  u_xlat29 = min(x_260, 1.0f);
  let x_264 : vec4<f32> = vs_TEXCOORD6;
  let x_265 : vec2<f32> = vec2<f32>(x_264.x, x_264.y);
  let x_267 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_265.x, x_265.y, x_267);
  let x_279 : vec3<f32> = txVec0;
  let x_281 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_279.xy, x_279.z);
  u_xlat4.x = x_281;
  let x_290 : f32 = x_288.x_MainLightShadowParams.x;
  u_xlat13.x = (-(x_290) + 1.0f);
  let x_295 : f32 = u_xlat4.x;
  let x_297 : f32 = x_288.x_MainLightShadowParams.x;
  let x_300 : f32 = u_xlat13.x;
  u_xlat4.x = ((x_295 * x_297) + x_300);
  let x_305 : f32 = vs_TEXCOORD6.z;
  u_xlatb13 = (0.0f >= x_305);
  let x_309 : f32 = vs_TEXCOORD6.z;
  u_xlatb22 = (x_309 >= 1.0f);
  let x_311 : bool = u_xlatb22;
  let x_312 : bool = u_xlatb13;
  u_xlatb13 = (x_311 | x_312);
  let x_314 : bool = u_xlatb13;
  if (x_314) {
    x_315 = 1.0f;
  } else {
    let x_320 : f32 = u_xlat4.x;
    x_315 = x_320;
  }
  let x_321 : f32 = x_315;
  u_xlat4.x = x_321;
  let x_323 : vec3<f32> = vs_TEXCOORD1;
  let x_325 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat13 = (x_323 + -(x_325));
  let x_328 : vec3<f32> = u_xlat13;
  let x_329 : vec3<f32> = u_xlat13;
  u_xlat13.x = dot(x_328, x_329);
  let x_333 : f32 = u_xlat13.x;
  let x_335 : f32 = x_288.x_MainLightShadowParams.z;
  let x_338 : f32 = x_288.x_MainLightShadowParams.w;
  u_xlat13.x = ((x_333 * x_335) + x_338);
  let x_342 : f32 = u_xlat13.x;
  u_xlat13.x = clamp(x_342, 0.0f, 1.0f);
  let x_347 : f32 = u_xlat4.x;
  u_xlat22 = (-(x_347) + 1.0f);
  let x_351 : f32 = u_xlat13.x;
  let x_352 : f32 = u_xlat22;
  let x_355 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_351 * x_352) + x_355);
  let x_358 : f32 = u_xlat30;
  let x_362 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat13 = (vec3<f32>(x_358, x_358, x_358) * vec3<f32>(x_362.x, x_362.y, x_362.z));
  let x_365 : f32 = u_xlat29;
  let x_367 : vec4<f32> = u_xlat3;
  let x_369 : vec3<f32> = (vec3<f32>(x_365, x_365, x_365) * vec3<f32>(x_367.x, x_367.y, x_367.z));
  let x_370 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_369.x, x_369.y, x_369.z, x_370.w);
  let x_373 : f32 = u_xlat4.x;
  let x_380 : f32 = x_377.unity_LightData.z;
  u_xlat29 = (x_373 * x_380);
  let x_382 : f32 = u_xlat29;
  let x_384 : vec3<f32> = u_xlat13;
  u_xlat4 = (vec3<f32>(x_382, x_382, x_382) * x_384);
  let x_386 : vec3<f32> = u_xlat1;
  let x_388 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat29 = dot(x_386, vec3<f32>(x_388.x, x_388.y, x_388.z));
  let x_391 : f32 = u_xlat29;
  u_xlat29 = clamp(x_391, 0.0f, 1.0f);
  let x_394 : f32 = u_xlat29;
  let x_396 : vec3<f32> = u_xlat4;
  u_xlat5 = (vec3<f32>(x_394, x_394, x_394) * x_396);
  let x_399 : f32 = u_xlat0.x;
  u_xlat29 = ((x_399 * 10.0f) + 1.0f);
  let x_403 : f32 = u_xlat29;
  u_xlat29 = exp2(x_403);
  let x_406 : vec3<f32> = u_xlat2;
  let x_407 : f32 = u_xlat28;
  let x_411 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat6 = ((x_406 * vec3<f32>(x_407, x_407, x_407)) + vec3<f32>(x_411.x, x_411.y, x_411.z));
  let x_415 : vec3<f32> = u_xlat6;
  let x_416 : vec3<f32> = u_xlat6;
  u_xlat31 = dot(x_415, x_416);
  let x_418 : f32 = u_xlat31;
  u_xlat31 = max(x_418, 1.17549435e-37f);
  let x_420 : f32 = u_xlat31;
  u_xlat31 = inverseSqrt(x_420);
  let x_422 : f32 = u_xlat31;
  let x_424 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_422, x_422, x_422) * x_424);
  let x_426 : vec3<f32> = u_xlat1;
  let x_427 : vec3<f32> = u_xlat6;
  u_xlat31 = dot(x_426, x_427);
  let x_429 : f32 = u_xlat31;
  u_xlat31 = clamp(x_429, 0.0f, 1.0f);
  let x_431 : f32 = u_xlat31;
  u_xlat31 = log2(x_431);
  let x_433 : f32 = u_xlat29;
  let x_434 : f32 = u_xlat31;
  u_xlat31 = (x_433 * x_434);
  let x_436 : f32 = u_xlat31;
  u_xlat31 = exp2(x_436);
  let x_438 : f32 = u_xlat31;
  let x_441 : vec4<f32> = x_56.x_SpecColor;
  u_xlat6 = (vec3<f32>(x_438, x_438, x_438) * vec3<f32>(x_441.x, x_441.y, x_441.z));
  let x_444 : vec3<f32> = u_xlat4;
  let x_445 : vec3<f32> = u_xlat6;
  u_xlat4 = (x_444 * x_445);
  let x_447 : vec3<f32> = u_xlat5;
  let x_448 : vec4<f32> = u_xlat0;
  let x_451 : vec3<f32> = u_xlat4;
  u_xlat4 = ((x_447 * vec3<f32>(x_448.y, x_448.z, x_448.w)) + x_451);
  let x_454 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_456 : f32 = x_377.unity_LightData.y;
  u_xlat31 = min(x_454, x_456);
  let x_460 : f32 = u_xlat31;
  u_xlatu31 = bitcast<u32>(i32(x_460));
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_472 : u32 = u_xlatu_loop_1;
    let x_473 : u32 = u_xlatu31;
    if ((x_472 < x_473)) {
    } else {
      break;
    }
    let x_476 : u32 = u_xlatu_loop_1;
    u_xlatu6 = (x_476 >> 2u);
    let x_480 : u32 = u_xlatu_loop_1;
    u_xlati15 = bitcast<i32>((x_480 & 3u));
    let x_483 : u32 = u_xlatu6;
    let x_486 : vec4<f32> = x_377.unity_LightIndices[bitcast<i32>(x_483)];
    let x_496 : i32 = u_xlati15;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_501 : vec4<u32> = indexable[x_496];
    u_xlat6.x = dot(x_486, bitcast<vec4<f32>>(x_501));
    let x_507 : f32 = u_xlat6.x;
    u_xlati6 = i32(x_507);
    let x_510 : vec3<f32> = vs_TEXCOORD1;
    let x_522 : i32 = u_xlati6;
    let x_524 : vec4<f32> = x_521.x_AdditionalLightsPosition[x_522];
    let x_527 : i32 = u_xlati6;
    let x_529 : vec4<f32> = x_521.x_AdditionalLightsPosition[x_527];
    u_xlat15 = ((-(x_510) * vec3<f32>(x_524.w, x_524.w, x_524.w)) + vec3<f32>(x_529.x, x_529.y, x_529.z));
    let x_533 : vec3<f32> = u_xlat15;
    let x_534 : vec3<f32> = u_xlat15;
    u_xlat7.x = dot(x_533, x_534);
    let x_538 : f32 = u_xlat7.x;
    u_xlat7.x = max(x_538, 6.10351562e-05f);
    let x_544 : f32 = u_xlat7.x;
    u_xlat16.x = inverseSqrt(x_544);
    let x_547 : vec3<f32> = u_xlat15;
    let x_548 : vec3<f32> = u_xlat16;
    u_xlat15 = (x_547 * vec3<f32>(x_548.x, x_548.x, x_548.x));
    let x_552 : f32 = u_xlat7.x;
    u_xlat16.x = (1.0f / x_552);
    let x_556 : f32 = u_xlat7.x;
    let x_557 : i32 = u_xlati6;
    let x_559 : f32 = x_521.x_AdditionalLightsAttenuation[x_557].x;
    u_xlat7.x = (x_556 * x_559);
    let x_563 : f32 = u_xlat7.x;
    let x_566 : f32 = u_xlat7.x;
    u_xlat7.x = ((-(x_563) * x_566) + 1.0f);
    let x_571 : f32 = u_xlat7.x;
    u_xlat7.x = max(x_571, 0.0f);
    let x_575 : f32 = u_xlat7.x;
    let x_577 : f32 = u_xlat7.x;
    u_xlat7.x = (x_575 * x_577);
    let x_581 : f32 = u_xlat7.x;
    let x_583 : f32 = u_xlat16.x;
    u_xlat7.x = (x_581 * x_583);
    let x_586 : i32 = u_xlati6;
    let x_588 : vec4<f32> = x_521.x_AdditionalLightsSpotDir[x_586];
    let x_590 : vec3<f32> = u_xlat15;
    u_xlat16.x = dot(vec3<f32>(x_588.x, x_588.y, x_588.z), x_590);
    let x_594 : f32 = u_xlat16.x;
    let x_595 : i32 = u_xlati6;
    let x_597 : f32 = x_521.x_AdditionalLightsAttenuation[x_595].z;
    let x_599 : i32 = u_xlati6;
    let x_601 : f32 = x_521.x_AdditionalLightsAttenuation[x_599].w;
    u_xlat16.x = ((x_594 * x_597) + x_601);
    let x_605 : f32 = u_xlat16.x;
    u_xlat16.x = clamp(x_605, 0.0f, 1.0f);
    let x_609 : f32 = u_xlat16.x;
    let x_611 : f32 = u_xlat16.x;
    u_xlat16.x = (x_609 * x_611);
    let x_615 : f32 = u_xlat16.x;
    let x_617 : f32 = u_xlat7.x;
    u_xlat7.x = (x_615 * x_617);
    let x_620 : f32 = u_xlat30;
    let x_622 : i32 = u_xlati6;
    let x_624 : vec4<f32> = x_521.x_AdditionalLightsColor[x_622];
    u_xlat16 = (vec3<f32>(x_620, x_620, x_620) * vec3<f32>(x_624.x, x_624.y, x_624.z));
    let x_627 : vec3<f32> = u_xlat7;
    let x_629 : vec3<f32> = u_xlat16;
    u_xlat7 = (vec3<f32>(x_627.x, x_627.x, x_627.x) * x_629);
    let x_631 : vec3<f32> = u_xlat1;
    let x_632 : vec3<f32> = u_xlat15;
    u_xlat6.x = dot(x_631, x_632);
    let x_636 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_636, 0.0f, 1.0f);
    let x_640 : vec3<f32> = u_xlat6;
    let x_642 : vec3<f32> = u_xlat7;
    u_xlat8 = (vec3<f32>(x_640.x, x_640.x, x_640.x) * x_642);
    let x_644 : vec3<f32> = u_xlat2;
    let x_645 : f32 = u_xlat28;
    let x_648 : vec3<f32> = u_xlat15;
    u_xlat6 = ((x_644 * vec3<f32>(x_645, x_645, x_645)) + x_648);
    let x_651 : vec3<f32> = u_xlat6;
    let x_652 : vec3<f32> = u_xlat6;
    u_xlat33 = dot(x_651, x_652);
    let x_654 : f32 = u_xlat33;
    u_xlat33 = max(x_654, 1.17549435e-37f);
    let x_656 : f32 = u_xlat33;
    u_xlat33 = inverseSqrt(x_656);
    let x_658 : f32 = u_xlat33;
    let x_660 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_658, x_658, x_658) * x_660);
    let x_662 : vec3<f32> = u_xlat1;
    let x_663 : vec3<f32> = u_xlat6;
    u_xlat6.x = dot(x_662, x_663);
    let x_667 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_667, 0.0f, 1.0f);
    let x_671 : f32 = u_xlat6.x;
    u_xlat6.x = log2(x_671);
    let x_674 : f32 = u_xlat29;
    let x_676 : f32 = u_xlat6.x;
    u_xlat6.x = (x_674 * x_676);
    let x_680 : f32 = u_xlat6.x;
    u_xlat6.x = exp2(x_680);
    let x_683 : vec3<f32> = u_xlat6;
    let x_686 : vec4<f32> = x_56.x_SpecColor;
    u_xlat6 = (vec3<f32>(x_683.x, x_683.x, x_683.x) * vec3<f32>(x_686.x, x_686.y, x_686.z));
    let x_689 : vec3<f32> = u_xlat6;
    let x_690 : vec3<f32> = u_xlat7;
    u_xlat6 = (x_689 * x_690);
    let x_692 : vec3<f32> = u_xlat8;
    let x_693 : vec4<f32> = u_xlat0;
    let x_696 : vec3<f32> = u_xlat6;
    u_xlat6 = ((x_692 * vec3<f32>(x_693.y, x_693.z, x_693.w)) + x_696);
    let x_698 : vec3<f32> = u_xlat5;
    let x_699 : vec3<f32> = u_xlat6;
    u_xlat5 = (x_698 + x_699);

    continuing {
      let x_701 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_701 + bitcast<u32>(1i));
    }
  }
  let x_704 : vec4<f32> = u_xlat3;
  let x_706 : vec4<f32> = u_xlat0;
  let x_709 : vec3<f32> = u_xlat4;
  u_xlat9 = ((vec3<f32>(x_704.x, x_704.y, x_704.z) * vec3<f32>(x_706.y, x_706.z, x_706.w)) + x_709);
  let x_713 : vec3<f32> = u_xlat5;
  let x_714 : vec3<f32> = u_xlat9;
  let x_715 : vec3<f32> = (x_713 + x_714);
  let x_716 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_715.x, x_715.y, x_715.z, x_716.w);
  let x_720 : f32 = x_56.x_Surface;
  u_xlatb9 = (x_720 == 1.0f);
  let x_722 : bool = u_xlatb9;
  if (x_722) {
    let x_727 : f32 = u_xlat0.x;
    x_723 = x_727;
  } else {
    x_723 = 1.0f;
  }
  let x_729 : f32 = x_723;
  SV_Target0.w = x_729;
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

