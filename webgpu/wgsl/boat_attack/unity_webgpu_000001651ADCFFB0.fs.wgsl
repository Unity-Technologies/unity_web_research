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

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(5) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(4) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_297 : MainLightShadows;

@group(1) @binding(2) var<uniform> x_365 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_456 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_74 : f32;
  var u_xlat8 : f32;
  var u_xlat16 : f32;
  var u_xlat24 : f32;
  var u_xlatb16 : bool;
  var x_123 : f32;
  var u_xlatb8 : bool;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat26 : f32;
  var u_xlat27 : f32;
  var u_xlatb27 : bool;
  var u_xlatb4 : bool;
  var u_xlatu24 : u32;
  var u_xlat5 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu27 : u32;
  var u_xlati28 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati27 : i32;
  var u_xlat6 : vec3<f32>;
  var u_xlat28 : f32;
  var u_xlat29 : f32;
  var u_xlat7 : vec3<f32>;
  var x_603 : f32;
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
  let x_85 : f32 = u_xlat0.w;
  let x_87 : f32 = x_57.x_BaseColor.w;
  let x_90 : f32 = x_57.x_Cutoff;
  u_xlat8 = ((x_85 * x_87) + -(x_90));
  let x_95 : f32 = u_xlat1.x;
  u_xlat16 = dpdxCoarse(x_95);
  let x_99 : f32 = u_xlat1.x;
  u_xlat24 = dpdyCoarse(x_99);
  let x_101 : f32 = u_xlat24;
  let x_103 : f32 = u_xlat16;
  u_xlat16 = (abs(x_101) + abs(x_103));
  let x_106 : f32 = u_xlat16;
  u_xlat16 = max(x_106, 0.0001f);
  let x_109 : f32 = u_xlat8;
  let x_110 : f32 = u_xlat16;
  u_xlat8 = (x_109 / x_110);
  let x_112 : f32 = u_xlat8;
  u_xlat8 = (x_112 + 0.5f);
  let x_115 : f32 = u_xlat8;
  u_xlat8 = clamp(x_115, 0.0f, 1.0f);
  let x_120 : f32 = x_44.x_AlphaToMaskAvailable;
  u_xlatb16 = !((x_120 == 0.0f));
  let x_122 : bool = u_xlatb16;
  if (x_122) {
    let x_126 : f32 = u_xlat8;
    x_123 = x_126;
  } else {
    let x_129 : f32 = u_xlat0.x;
    x_123 = x_129;
  }
  let x_130 : f32 = x_123;
  u_xlat0.x = x_130;
  let x_133 : f32 = u_xlat0.x;
  u_xlat8 = (x_133 + -0.0001f);
  let x_137 : f32 = u_xlat8;
  u_xlatb8 = (x_137 < 0.0f);
  let x_139 : bool = u_xlatb8;
  if (((select(0i, 1i, x_139) * -1i) != 0i)) {
    discard;
  }
  let x_150 : vec3<f32> = vs_TEXCOORD2;
  let x_151 : vec3<f32> = vs_TEXCOORD2;
  u_xlat8 = dot(x_150, x_151);
  let x_153 : f32 = u_xlat8;
  u_xlat8 = inverseSqrt(x_153);
  let x_157 : f32 = u_xlat8;
  let x_159 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_157, x_157, x_157) * x_159);
  let x_164 : f32 = vs_TEXCOORD1.y;
  let x_168 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat8 = (x_164 * x_168);
  let x_171 : f32 = x_44.unity_MatrixV[0i].z;
  let x_173 : f32 = vs_TEXCOORD1.x;
  let x_175 : f32 = u_xlat8;
  u_xlat8 = ((x_171 * x_173) + x_175);
  let x_178 : f32 = x_44.unity_MatrixV[2i].z;
  let x_180 : f32 = vs_TEXCOORD1.z;
  let x_182 : f32 = u_xlat8;
  u_xlat8 = ((x_178 * x_180) + x_182);
  let x_184 : f32 = u_xlat8;
  let x_187 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat8 = (x_184 + x_187);
  let x_189 : f32 = u_xlat8;
  let x_193 : f32 = x_44.x_ProjectionParams.y;
  u_xlat8 = (-(x_189) + -(x_193));
  let x_196 : f32 = u_xlat8;
  u_xlat8 = max(x_196, 0.0f);
  let x_198 : f32 = u_xlat8;
  let x_201 : f32 = x_44.unity_FogParams.x;
  u_xlat8 = (x_198 * x_201);
  let x_210 : vec2<f32> = vs_TEXCOORD7;
  let x_212 : f32 = x_44.x_GlobalMipBias.x;
  let x_213 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_210, x_212);
  u_xlat3 = vec3<f32>(x_213.x, x_213.y, x_213.z);
  let x_218 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_219 : vec2<f32> = vec2<f32>(x_218.x, x_218.y);
  let x_223 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_219.x, x_219.y));
  let x_224 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_223.x, x_223.y, x_224.z);
  let x_226 : vec3<f32> = u_xlat4;
  let x_228 : vec4<f32> = hlslcc_FragCoord;
  let x_230 : vec2<f32> = (vec2<f32>(x_226.x, x_226.y) * vec2<f32>(x_228.x, x_228.y));
  let x_231 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_230.x, x_230.y, x_231.z);
  let x_234 : f32 = u_xlat4.y;
  let x_237 : f32 = x_44.x_ScaleBiasRt.x;
  let x_240 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat24 = ((x_234 * x_237) + x_240);
  let x_242 : f32 = u_xlat24;
  u_xlat4.z = (-(x_242) + 1.0f);
  let x_251 : vec3<f32> = u_xlat4;
  let x_254 : f32 = x_44.x_GlobalMipBias.x;
  let x_255 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_251.x, x_251.z), x_254);
  u_xlat24 = x_255.x;
  let x_257 : f32 = u_xlat24;
  u_xlat1.x = (x_257 + -1.0f);
  let x_263 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_265 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_263 * x_265) + 1.0f);
  let x_269 : f32 = u_xlat24;
  u_xlat24 = min(x_269, 1.0f);
  let x_273 : vec4<f32> = vs_TEXCOORD6;
  let x_274 : vec2<f32> = vec2<f32>(x_273.x, x_273.y);
  let x_276 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_274.x, x_274.y, x_276);
  let x_289 : vec3<f32> = txVec0;
  let x_291 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_289.xy, x_289.z);
  u_xlat26 = x_291;
  let x_299 : f32 = x_297.x_MainLightShadowParams.x;
  u_xlat27 = (-(x_299) + 1.0f);
  let x_302 : f32 = u_xlat26;
  let x_304 : f32 = x_297.x_MainLightShadowParams.x;
  let x_306 : f32 = u_xlat27;
  u_xlat26 = ((x_302 * x_304) + x_306);
  let x_310 : f32 = vs_TEXCOORD6.z;
  u_xlatb27 = (0.0f >= x_310);
  let x_314 : f32 = vs_TEXCOORD6.z;
  u_xlatb4 = (x_314 >= 1.0f);
  let x_316 : bool = u_xlatb27;
  let x_317 : bool = u_xlatb4;
  u_xlatb27 = (x_316 | x_317);
  let x_319 : bool = u_xlatb27;
  let x_320 : f32 = u_xlat26;
  u_xlat26 = select(x_320, 1.0f, x_319);
  let x_322 : vec3<f32> = vs_TEXCOORD1;
  let x_326 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat4 = (x_322 + -(x_326));
  let x_329 : vec3<f32> = u_xlat4;
  let x_330 : vec3<f32> = u_xlat4;
  u_xlat27 = dot(x_329, x_330);
  let x_332 : f32 = u_xlat27;
  let x_334 : f32 = x_297.x_MainLightShadowParams.z;
  let x_337 : f32 = x_297.x_MainLightShadowParams.w;
  u_xlat27 = ((x_332 * x_334) + x_337);
  let x_339 : f32 = u_xlat27;
  u_xlat27 = clamp(x_339, 0.0f, 1.0f);
  let x_341 : f32 = u_xlat26;
  u_xlat4.x = (-(x_341) + 1.0f);
  let x_345 : f32 = u_xlat27;
  let x_347 : f32 = u_xlat4.x;
  let x_349 : f32 = u_xlat26;
  u_xlat26 = ((x_345 * x_347) + x_349);
  let x_351 : vec4<f32> = u_xlat1;
  let x_354 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat4 = (vec3<f32>(x_351.x, x_351.x, x_351.x) * vec3<f32>(x_354.x, x_354.y, x_354.z));
  let x_357 : f32 = u_xlat24;
  let x_359 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_357, x_357, x_357) * x_359);
  let x_361 : f32 = u_xlat26;
  let x_367 : f32 = x_365.unity_LightData.z;
  u_xlat24 = (x_361 * x_367);
  let x_369 : f32 = u_xlat24;
  let x_371 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_369, x_369, x_369) * x_371);
  let x_373 : vec3<f32> = u_xlat2;
  let x_375 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat24 = dot(x_373, vec3<f32>(x_375.x, x_375.y, x_375.z));
  let x_378 : f32 = u_xlat24;
  u_xlat24 = clamp(x_378, 0.0f, 1.0f);
  let x_380 : f32 = u_xlat24;
  let x_382 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_380, x_380, x_380) * x_382);
  let x_384 : vec4<f32> = u_xlat1;
  let x_386 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_384.y, x_384.z, x_384.w) * x_386);
  let x_390 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_392 : f32 = x_365.unity_LightData.y;
  u_xlat24 = min(x_390, x_392);
  let x_396 : f32 = u_xlat24;
  u_xlatu24 = bitcast<u32>(i32(x_396));
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_409 : u32 = u_xlatu_loop_1;
    let x_410 : u32 = u_xlatu24;
    if ((x_409 < x_410)) {
    } else {
      break;
    }
    let x_413 : u32 = u_xlatu_loop_1;
    u_xlatu27 = (x_413 >> 2u);
    let x_417 : u32 = u_xlatu_loop_1;
    u_xlati28 = bitcast<i32>((x_417 & 3u));
    let x_420 : u32 = u_xlatu27;
    let x_423 : vec4<f32> = x_365.unity_LightIndices[bitcast<i32>(x_420)];
    let x_433 : i32 = u_xlati28;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_438 : vec4<u32> = indexable[x_433];
    u_xlat27 = dot(x_423, bitcast<vec4<f32>>(x_438));
    let x_442 : f32 = u_xlat27;
    u_xlati27 = i32(x_442);
    let x_445 : vec3<f32> = vs_TEXCOORD1;
    let x_457 : i32 = u_xlati27;
    let x_459 : vec4<f32> = x_456.x_AdditionalLightsPosition[x_457];
    let x_462 : i32 = u_xlati27;
    let x_464 : vec4<f32> = x_456.x_AdditionalLightsPosition[x_462];
    u_xlat6 = ((-(x_445) * vec3<f32>(x_459.w, x_459.w, x_459.w)) + vec3<f32>(x_464.x, x_464.y, x_464.z));
    let x_468 : vec3<f32> = u_xlat6;
    let x_469 : vec3<f32> = u_xlat6;
    u_xlat28 = dot(x_468, x_469);
    let x_471 : f32 = u_xlat28;
    u_xlat28 = max(x_471, 6.10351562e-05f);
    let x_475 : f32 = u_xlat28;
    u_xlat29 = inverseSqrt(x_475);
    let x_477 : f32 = u_xlat29;
    let x_479 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_477, x_477, x_477) * x_479);
    let x_481 : f32 = u_xlat28;
    u_xlat29 = (1.0f / x_481);
    let x_483 : f32 = u_xlat28;
    let x_484 : i32 = u_xlati27;
    let x_486 : f32 = x_456.x_AdditionalLightsAttenuation[x_484].x;
    u_xlat28 = (x_483 * x_486);
    let x_488 : f32 = u_xlat28;
    let x_490 : f32 = u_xlat28;
    u_xlat28 = ((-(x_488) * x_490) + 1.0f);
    let x_493 : f32 = u_xlat28;
    u_xlat28 = max(x_493, 0.0f);
    let x_495 : f32 = u_xlat28;
    let x_496 : f32 = u_xlat28;
    u_xlat28 = (x_495 * x_496);
    let x_498 : f32 = u_xlat28;
    let x_499 : f32 = u_xlat29;
    u_xlat28 = (x_498 * x_499);
    let x_501 : i32 = u_xlati27;
    let x_503 : vec4<f32> = x_456.x_AdditionalLightsSpotDir[x_501];
    let x_505 : vec3<f32> = u_xlat6;
    u_xlat29 = dot(vec3<f32>(x_503.x, x_503.y, x_503.z), x_505);
    let x_507 : f32 = u_xlat29;
    let x_508 : i32 = u_xlati27;
    let x_510 : f32 = x_456.x_AdditionalLightsAttenuation[x_508].z;
    let x_512 : i32 = u_xlati27;
    let x_514 : f32 = x_456.x_AdditionalLightsAttenuation[x_512].w;
    u_xlat29 = ((x_507 * x_510) + x_514);
    let x_516 : f32 = u_xlat29;
    u_xlat29 = clamp(x_516, 0.0f, 1.0f);
    let x_518 : f32 = u_xlat29;
    let x_519 : f32 = u_xlat29;
    u_xlat29 = (x_518 * x_519);
    let x_521 : f32 = u_xlat28;
    let x_522 : f32 = u_xlat29;
    u_xlat28 = (x_521 * x_522);
    let x_525 : vec4<f32> = u_xlat1;
    let x_527 : i32 = u_xlati27;
    let x_529 : vec4<f32> = x_456.x_AdditionalLightsColor[x_527];
    u_xlat7 = (vec3<f32>(x_525.x, x_525.x, x_525.x) * vec3<f32>(x_529.x, x_529.y, x_529.z));
    let x_532 : f32 = u_xlat28;
    let x_534 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_532, x_532, x_532) * x_534);
    let x_536 : vec3<f32> = u_xlat2;
    let x_537 : vec3<f32> = u_xlat6;
    u_xlat27 = dot(x_536, x_537);
    let x_539 : f32 = u_xlat27;
    u_xlat27 = clamp(x_539, 0.0f, 1.0f);
    let x_541 : f32 = u_xlat27;
    let x_543 : vec3<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_541, x_541, x_541) * x_543);
    let x_545 : vec3<f32> = u_xlat6;
    let x_546 : vec4<f32> = u_xlat1;
    let x_549 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_545 * vec3<f32>(x_546.y, x_546.z, x_546.w)) + x_549);

    continuing {
      let x_551 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_551 + bitcast<u32>(1i));
    }
  }
  let x_553 : vec3<f32> = u_xlat3;
  let x_554 : vec4<f32> = u_xlat1;
  let x_557 : vec3<f32> = u_xlat4;
  let x_558 : vec3<f32> = ((x_553 * vec3<f32>(x_554.y, x_554.z, x_554.w)) + x_557);
  let x_559 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_558.x, x_558.y, x_558.z, x_559.w);
  let x_561 : vec3<f32> = u_xlat5;
  let x_562 : vec4<f32> = u_xlat1;
  let x_564 : vec3<f32> = (x_561 + vec3<f32>(x_562.x, x_562.y, x_562.z));
  let x_565 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_564.x, x_564.y, x_564.z, x_565.w);
  let x_567 : f32 = u_xlat8;
  let x_568 : f32 = u_xlat8;
  u_xlat8 = (x_567 * -(x_568));
  let x_571 : f32 = u_xlat8;
  u_xlat8 = exp2(x_571);
  let x_573 : vec4<f32> = u_xlat1;
  let x_577 : vec4<f32> = x_44.unity_FogColor;
  let x_580 : vec3<f32> = (vec3<f32>(x_573.x, x_573.y, x_573.z) + -(vec3<f32>(x_577.x, x_577.y, x_577.z)));
  let x_581 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_580.x, x_580.y, x_580.z, x_581.w);
  let x_585 : f32 = u_xlat8;
  let x_587 : vec4<f32> = u_xlat1;
  let x_591 : vec4<f32> = x_44.unity_FogColor;
  let x_593 : vec3<f32> = ((vec3<f32>(x_585, x_585, x_585) * vec3<f32>(x_587.x, x_587.y, x_587.z)) + vec3<f32>(x_591.x, x_591.y, x_591.z));
  let x_594 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_593.x, x_593.y, x_593.z, x_594.w);
  let x_597 : f32 = x_57.x_Surface;
  u_xlatb8 = (x_597 == 1.0f);
  let x_599 : bool = u_xlatb8;
  let x_600 : bool = u_xlatb16;
  u_xlatb8 = (x_599 | x_600);
  let x_602 : bool = u_xlatb8;
  if (x_602) {
    let x_607 : f32 = u_xlat0.x;
    x_603 = x_607;
  } else {
    x_603 = 1.0f;
  }
  let x_609 : f32 = x_603;
  SV_Target0.w = x_609;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(4) vs_TEXCOORD7_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}

