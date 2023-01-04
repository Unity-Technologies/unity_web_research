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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(5) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_334 : MainLightShadows;

@group(1) @binding(2) var<uniform> x_405 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_496 : AdditionalLights;

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
  var u_xlat3 : vec4<f32>;
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
  var x_644 : f32;
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
  let x_213 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_210, x_212);
  u_xlat3 = x_213;
  let x_219 : vec2<f32> = vs_TEXCOORD7;
  let x_221 : f32 = x_44.x_GlobalMipBias.x;
  let x_222 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_219, x_221);
  u_xlat4 = vec3<f32>(x_222.x, x_222.y, x_222.z);
  let x_224 : vec4<f32> = u_xlat3;
  let x_228 : vec3<f32> = (vec3<f32>(x_224.x, x_224.y, x_224.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_229 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_228.x, x_228.y, x_228.z, x_229.w);
  let x_231 : vec3<f32> = u_xlat2;
  let x_232 : vec4<f32> = u_xlat3;
  u_xlat24 = dot(x_231, vec3<f32>(x_232.x, x_232.y, x_232.z));
  let x_235 : f32 = u_xlat24;
  u_xlat24 = (x_235 + 0.5f);
  let x_237 : f32 = u_xlat24;
  let x_239 : vec3<f32> = u_xlat4;
  let x_240 : vec3<f32> = (vec3<f32>(x_237, x_237, x_237) * x_239);
  let x_241 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_240.x, x_240.y, x_240.z, x_241.w);
  let x_244 : f32 = u_xlat3.w;
  u_xlat24 = max(x_244, 0.0001f);
  let x_246 : vec4<f32> = u_xlat3;
  let x_248 : f32 = u_xlat24;
  let x_250 : vec3<f32> = (vec3<f32>(x_246.x, x_246.y, x_246.z) / vec3<f32>(x_248, x_248, x_248));
  let x_251 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_250.x, x_250.y, x_250.z, x_251.w);
  let x_255 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_256 : vec2<f32> = vec2<f32>(x_255.x, x_255.y);
  let x_260 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_256.x, x_256.y));
  let x_261 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_260.x, x_260.y, x_261.z);
  let x_263 : vec3<f32> = u_xlat4;
  let x_265 : vec4<f32> = hlslcc_FragCoord;
  let x_267 : vec2<f32> = (vec2<f32>(x_263.x, x_263.y) * vec2<f32>(x_265.x, x_265.y));
  let x_268 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_267.x, x_267.y, x_268.z);
  let x_271 : f32 = u_xlat4.y;
  let x_274 : f32 = x_44.x_ScaleBiasRt.x;
  let x_277 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat24 = ((x_271 * x_274) + x_277);
  let x_279 : f32 = u_xlat24;
  u_xlat4.z = (-(x_279) + 1.0f);
  let x_288 : vec3<f32> = u_xlat4;
  let x_291 : f32 = x_44.x_GlobalMipBias.x;
  let x_292 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_288.x, x_288.z), x_291);
  u_xlat24 = x_292.x;
  let x_294 : f32 = u_xlat24;
  u_xlat1.x = (x_294 + -1.0f);
  let x_300 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_302 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_300 * x_302) + 1.0f);
  let x_306 : f32 = u_xlat24;
  u_xlat24 = min(x_306, 1.0f);
  let x_310 : vec4<f32> = vs_TEXCOORD6;
  let x_311 : vec2<f32> = vec2<f32>(x_310.x, x_310.y);
  let x_313 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_311.x, x_311.y, x_313);
  let x_326 : vec3<f32> = txVec0;
  let x_328 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_326.xy, x_326.z);
  u_xlat26 = x_328;
  let x_336 : f32 = x_334.x_MainLightShadowParams.x;
  u_xlat27 = (-(x_336) + 1.0f);
  let x_339 : f32 = u_xlat26;
  let x_341 : f32 = x_334.x_MainLightShadowParams.x;
  let x_343 : f32 = u_xlat27;
  u_xlat26 = ((x_339 * x_341) + x_343);
  let x_347 : f32 = vs_TEXCOORD6.z;
  u_xlatb27 = (0.0f >= x_347);
  let x_351 : f32 = vs_TEXCOORD6.z;
  u_xlatb4 = (x_351 >= 1.0f);
  let x_353 : bool = u_xlatb27;
  let x_354 : bool = u_xlatb4;
  u_xlatb27 = (x_353 | x_354);
  let x_356 : bool = u_xlatb27;
  let x_357 : f32 = u_xlat26;
  u_xlat26 = select(x_357, 1.0f, x_356);
  let x_359 : vec3<f32> = vs_TEXCOORD1;
  let x_363 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat4 = (x_359 + -(x_363));
  let x_366 : vec3<f32> = u_xlat4;
  let x_367 : vec3<f32> = u_xlat4;
  u_xlat27 = dot(x_366, x_367);
  let x_369 : f32 = u_xlat27;
  let x_371 : f32 = x_334.x_MainLightShadowParams.z;
  let x_374 : f32 = x_334.x_MainLightShadowParams.w;
  u_xlat27 = ((x_369 * x_371) + x_374);
  let x_376 : f32 = u_xlat27;
  u_xlat27 = clamp(x_376, 0.0f, 1.0f);
  let x_378 : f32 = u_xlat26;
  u_xlat4.x = (-(x_378) + 1.0f);
  let x_382 : f32 = u_xlat27;
  let x_384 : f32 = u_xlat4.x;
  let x_386 : f32 = u_xlat26;
  u_xlat26 = ((x_382 * x_384) + x_386);
  let x_388 : vec4<f32> = u_xlat1;
  let x_391 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat4 = (vec3<f32>(x_388.x, x_388.x, x_388.x) * vec3<f32>(x_391.x, x_391.y, x_391.z));
  let x_394 : f32 = u_xlat24;
  let x_396 : vec4<f32> = u_xlat3;
  let x_398 : vec3<f32> = (vec3<f32>(x_394, x_394, x_394) * vec3<f32>(x_396.x, x_396.y, x_396.z));
  let x_399 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_398.x, x_398.y, x_398.z, x_399.w);
  let x_401 : f32 = u_xlat26;
  let x_407 : f32 = x_405.unity_LightData.z;
  u_xlat24 = (x_401 * x_407);
  let x_409 : f32 = u_xlat24;
  let x_411 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_409, x_409, x_409) * x_411);
  let x_413 : vec3<f32> = u_xlat2;
  let x_415 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat24 = dot(x_413, vec3<f32>(x_415.x, x_415.y, x_415.z));
  let x_418 : f32 = u_xlat24;
  u_xlat24 = clamp(x_418, 0.0f, 1.0f);
  let x_420 : f32 = u_xlat24;
  let x_422 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_420, x_420, x_420) * x_422);
  let x_424 : vec4<f32> = u_xlat1;
  let x_426 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_424.y, x_424.z, x_424.w) * x_426);
  let x_430 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_432 : f32 = x_405.unity_LightData.y;
  u_xlat24 = min(x_430, x_432);
  let x_436 : f32 = u_xlat24;
  u_xlatu24 = bitcast<u32>(i32(x_436));
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_449 : u32 = u_xlatu_loop_1;
    let x_450 : u32 = u_xlatu24;
    if ((x_449 < x_450)) {
    } else {
      break;
    }
    let x_453 : u32 = u_xlatu_loop_1;
    u_xlatu27 = (x_453 >> 2u);
    let x_457 : u32 = u_xlatu_loop_1;
    u_xlati28 = bitcast<i32>((x_457 & 3u));
    let x_460 : u32 = u_xlatu27;
    let x_463 : vec4<f32> = x_405.unity_LightIndices[bitcast<i32>(x_460)];
    let x_473 : i32 = u_xlati28;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_478 : vec4<u32> = indexable[x_473];
    u_xlat27 = dot(x_463, bitcast<vec4<f32>>(x_478));
    let x_482 : f32 = u_xlat27;
    u_xlati27 = i32(x_482);
    let x_485 : vec3<f32> = vs_TEXCOORD1;
    let x_497 : i32 = u_xlati27;
    let x_499 : vec4<f32> = x_496.x_AdditionalLightsPosition[x_497];
    let x_502 : i32 = u_xlati27;
    let x_504 : vec4<f32> = x_496.x_AdditionalLightsPosition[x_502];
    u_xlat6 = ((-(x_485) * vec3<f32>(x_499.w, x_499.w, x_499.w)) + vec3<f32>(x_504.x, x_504.y, x_504.z));
    let x_508 : vec3<f32> = u_xlat6;
    let x_509 : vec3<f32> = u_xlat6;
    u_xlat28 = dot(x_508, x_509);
    let x_511 : f32 = u_xlat28;
    u_xlat28 = max(x_511, 6.10351562e-05f);
    let x_515 : f32 = u_xlat28;
    u_xlat29 = inverseSqrt(x_515);
    let x_517 : f32 = u_xlat29;
    let x_519 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_517, x_517, x_517) * x_519);
    let x_521 : f32 = u_xlat28;
    u_xlat29 = (1.0f / x_521);
    let x_523 : f32 = u_xlat28;
    let x_524 : i32 = u_xlati27;
    let x_526 : f32 = x_496.x_AdditionalLightsAttenuation[x_524].x;
    u_xlat28 = (x_523 * x_526);
    let x_528 : f32 = u_xlat28;
    let x_530 : f32 = u_xlat28;
    u_xlat28 = ((-(x_528) * x_530) + 1.0f);
    let x_533 : f32 = u_xlat28;
    u_xlat28 = max(x_533, 0.0f);
    let x_535 : f32 = u_xlat28;
    let x_536 : f32 = u_xlat28;
    u_xlat28 = (x_535 * x_536);
    let x_538 : f32 = u_xlat28;
    let x_539 : f32 = u_xlat29;
    u_xlat28 = (x_538 * x_539);
    let x_541 : i32 = u_xlati27;
    let x_543 : vec4<f32> = x_496.x_AdditionalLightsSpotDir[x_541];
    let x_545 : vec3<f32> = u_xlat6;
    u_xlat29 = dot(vec3<f32>(x_543.x, x_543.y, x_543.z), x_545);
    let x_547 : f32 = u_xlat29;
    let x_548 : i32 = u_xlati27;
    let x_550 : f32 = x_496.x_AdditionalLightsAttenuation[x_548].z;
    let x_552 : i32 = u_xlati27;
    let x_554 : f32 = x_496.x_AdditionalLightsAttenuation[x_552].w;
    u_xlat29 = ((x_547 * x_550) + x_554);
    let x_556 : f32 = u_xlat29;
    u_xlat29 = clamp(x_556, 0.0f, 1.0f);
    let x_558 : f32 = u_xlat29;
    let x_559 : f32 = u_xlat29;
    u_xlat29 = (x_558 * x_559);
    let x_561 : f32 = u_xlat28;
    let x_562 : f32 = u_xlat29;
    u_xlat28 = (x_561 * x_562);
    let x_565 : vec4<f32> = u_xlat1;
    let x_567 : i32 = u_xlati27;
    let x_569 : vec4<f32> = x_496.x_AdditionalLightsColor[x_567];
    u_xlat7 = (vec3<f32>(x_565.x, x_565.x, x_565.x) * vec3<f32>(x_569.x, x_569.y, x_569.z));
    let x_572 : f32 = u_xlat28;
    let x_574 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_572, x_572, x_572) * x_574);
    let x_576 : vec3<f32> = u_xlat2;
    let x_577 : vec3<f32> = u_xlat6;
    u_xlat27 = dot(x_576, x_577);
    let x_579 : f32 = u_xlat27;
    u_xlat27 = clamp(x_579, 0.0f, 1.0f);
    let x_581 : f32 = u_xlat27;
    let x_583 : vec3<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_581, x_581, x_581) * x_583);
    let x_585 : vec3<f32> = u_xlat6;
    let x_586 : vec4<f32> = u_xlat1;
    let x_589 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_585 * vec3<f32>(x_586.y, x_586.z, x_586.w)) + x_589);

    continuing {
      let x_591 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_591 + bitcast<u32>(1i));
    }
  }
  let x_593 : vec4<f32> = u_xlat3;
  let x_595 : vec4<f32> = u_xlat1;
  let x_598 : vec3<f32> = u_xlat4;
  let x_599 : vec3<f32> = ((vec3<f32>(x_593.x, x_593.y, x_593.z) * vec3<f32>(x_595.y, x_595.z, x_595.w)) + x_598);
  let x_600 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_599.x, x_599.y, x_599.z, x_600.w);
  let x_602 : vec3<f32> = u_xlat5;
  let x_603 : vec4<f32> = u_xlat1;
  let x_605 : vec3<f32> = (x_602 + vec3<f32>(x_603.x, x_603.y, x_603.z));
  let x_606 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_605.x, x_605.y, x_605.z, x_606.w);
  let x_608 : f32 = u_xlat8;
  let x_609 : f32 = u_xlat8;
  u_xlat8 = (x_608 * -(x_609));
  let x_612 : f32 = u_xlat8;
  u_xlat8 = exp2(x_612);
  let x_614 : vec4<f32> = u_xlat1;
  let x_618 : vec4<f32> = x_44.unity_FogColor;
  let x_621 : vec3<f32> = (vec3<f32>(x_614.x, x_614.y, x_614.z) + -(vec3<f32>(x_618.x, x_618.y, x_618.z)));
  let x_622 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_621.x, x_621.y, x_621.z, x_622.w);
  let x_626 : f32 = u_xlat8;
  let x_628 : vec4<f32> = u_xlat1;
  let x_632 : vec4<f32> = x_44.unity_FogColor;
  let x_634 : vec3<f32> = ((vec3<f32>(x_626, x_626, x_626) * vec3<f32>(x_628.x, x_628.y, x_628.z)) + vec3<f32>(x_632.x, x_632.y, x_632.z));
  let x_635 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_634.x, x_634.y, x_634.z, x_635.w);
  let x_638 : f32 = x_57.x_Surface;
  u_xlatb8 = (x_638 == 1.0f);
  let x_640 : bool = u_xlatb8;
  let x_641 : bool = u_xlatb16;
  u_xlatb8 = (x_640 | x_641);
  let x_643 : bool = u_xlatb8;
  if (x_643) {
    let x_648 : f32 = u_xlat0.x;
    x_644 = x_648;
  } else {
    x_644 = 1.0f;
  }
  let x_650 : f32 = x_644;
  SV_Target0.w = x_650;
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

