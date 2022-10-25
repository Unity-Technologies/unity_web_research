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

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(5) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(4) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_272 : MainLightShadows;

@group(1) @binding(2) var<uniform> x_350 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_497 : AdditionalLights;

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
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat30 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlatb22 : bool;
  var u_xlatb31 : bool;
  var x_297 : f32;
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
  var x_688 : f32;
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
  let x_186 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_183, x_185);
  u_xlat3 = vec3<f32>(x_186.x, x_186.y, x_186.z);
  let x_191 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_192 : vec2<f32> = vec2<f32>(x_191.x, x_191.y);
  let x_196 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_192.x, x_192.y));
  let x_197 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_196.x, x_196.y, x_197.z);
  let x_199 : vec3<f32> = u_xlat4;
  let x_201 : vec4<f32> = hlslcc_FragCoord;
  let x_203 : vec2<f32> = (vec2<f32>(x_199.x, x_199.y) * vec2<f32>(x_201.x, x_201.y));
  let x_204 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_203.x, x_203.y, x_204.z);
  let x_208 : f32 = u_xlat4.y;
  let x_211 : f32 = x_44.x_ScaleBiasRt.x;
  let x_214 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat30 = ((x_208 * x_211) + x_214);
  let x_216 : f32 = u_xlat30;
  u_xlat4.z = (-(x_216) + 1.0f);
  let x_225 : vec3<f32> = u_xlat4;
  let x_228 : f32 = x_44.x_GlobalMipBias.x;
  let x_229 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_225.x, x_225.z), x_228);
  u_xlat30 = x_229.x;
  let x_231 : f32 = u_xlat30;
  u_xlat4.x = (x_231 + -1.0f);
  let x_237 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_239 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_237 * x_239) + 1.0f);
  let x_243 : f32 = u_xlat30;
  u_xlat30 = min(x_243, 1.0f);
  let x_247 : vec4<f32> = vs_TEXCOORD6;
  let x_248 : vec2<f32> = vec2<f32>(x_247.x, x_247.y);
  let x_250 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_248.x, x_248.y, x_250);
  let x_263 : vec3<f32> = txVec0;
  let x_265 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_263.xy, x_263.z);
  u_xlat13.x = x_265;
  let x_274 : f32 = x_272.x_MainLightShadowParams.x;
  u_xlat22 = (-(x_274) + 1.0f);
  let x_278 : f32 = u_xlat13.x;
  let x_280 : f32 = x_272.x_MainLightShadowParams.x;
  let x_282 : f32 = u_xlat22;
  u_xlat13.x = ((x_278 * x_280) + x_282);
  let x_287 : f32 = vs_TEXCOORD6.z;
  u_xlatb22 = (0.0f >= x_287);
  let x_291 : f32 = vs_TEXCOORD6.z;
  u_xlatb31 = (x_291 >= 1.0f);
  let x_293 : bool = u_xlatb31;
  let x_294 : bool = u_xlatb22;
  u_xlatb22 = (x_293 | x_294);
  let x_296 : bool = u_xlatb22;
  if (x_296) {
    x_297 = 1.0f;
  } else {
    let x_302 : f32 = u_xlat13.x;
    x_297 = x_302;
  }
  let x_303 : f32 = x_297;
  u_xlat13.x = x_303;
  let x_306 : vec3<f32> = vs_TEXCOORD1;
  let x_308 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat5 = (x_306 + -(x_308));
  let x_311 : vec3<f32> = u_xlat5;
  let x_312 : vec3<f32> = u_xlat5;
  u_xlat22 = dot(x_311, x_312);
  let x_314 : f32 = u_xlat22;
  let x_316 : f32 = x_272.x_MainLightShadowParams.z;
  let x_319 : f32 = x_272.x_MainLightShadowParams.w;
  u_xlat22 = ((x_314 * x_316) + x_319);
  let x_321 : f32 = u_xlat22;
  u_xlat22 = clamp(x_321, 0.0f, 1.0f);
  let x_325 : f32 = u_xlat13.x;
  u_xlat31 = (-(x_325) + 1.0f);
  let x_328 : f32 = u_xlat22;
  let x_329 : f32 = u_xlat31;
  let x_332 : f32 = u_xlat13.x;
  u_xlat13.x = ((x_328 * x_329) + x_332);
  let x_335 : vec3<f32> = u_xlat4;
  let x_338 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat5 = (vec3<f32>(x_335.x, x_335.x, x_335.x) * vec3<f32>(x_338.x, x_338.y, x_338.z));
  let x_341 : f32 = u_xlat30;
  let x_343 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_341, x_341, x_341) * x_343);
  let x_346 : f32 = u_xlat13.x;
  let x_353 : f32 = x_350.unity_LightData.z;
  u_xlat30 = (x_346 * x_353);
  let x_355 : f32 = u_xlat30;
  let x_357 : vec3<f32> = u_xlat5;
  u_xlat13 = (vec3<f32>(x_355, x_355, x_355) * x_357);
  let x_359 : vec3<f32> = u_xlat2;
  let x_361 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat30 = dot(x_359, vec3<f32>(x_361.x, x_361.y, x_361.z));
  let x_364 : f32 = u_xlat30;
  u_xlat30 = clamp(x_364, 0.0f, 1.0f);
  let x_366 : f32 = u_xlat30;
  let x_368 : vec3<f32> = u_xlat13;
  u_xlat5 = (vec3<f32>(x_366, x_366, x_366) * x_368);
  let x_371 : f32 = u_xlat0.x;
  u_xlat30 = ((x_371 * 10.0f) + 1.0f);
  let x_375 : f32 = u_xlat30;
  u_xlat30 = exp2(x_375);
  let x_378 : vec3<f32> = u_xlat1;
  let x_379 : f32 = u_xlat28;
  let x_383 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat6 = ((x_378 * vec3<f32>(x_379, x_379, x_379)) + vec3<f32>(x_383.x, x_383.y, x_383.z));
  let x_387 : vec3<f32> = u_xlat6;
  let x_388 : vec3<f32> = u_xlat6;
  u_xlat32 = dot(x_387, x_388);
  let x_390 : f32 = u_xlat32;
  u_xlat32 = max(x_390, 1.17549435e-37f);
  let x_392 : f32 = u_xlat32;
  u_xlat32 = inverseSqrt(x_392);
  let x_394 : f32 = u_xlat32;
  let x_396 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_394, x_394, x_394) * x_396);
  let x_398 : vec3<f32> = u_xlat2;
  let x_399 : vec3<f32> = u_xlat6;
  u_xlat32 = dot(x_398, x_399);
  let x_401 : f32 = u_xlat32;
  u_xlat32 = clamp(x_401, 0.0f, 1.0f);
  let x_403 : f32 = u_xlat32;
  u_xlat32 = log2(x_403);
  let x_405 : f32 = u_xlat30;
  let x_406 : f32 = u_xlat32;
  u_xlat32 = (x_405 * x_406);
  let x_408 : f32 = u_xlat32;
  u_xlat32 = exp2(x_408);
  let x_410 : f32 = u_xlat32;
  let x_413 : vec4<f32> = x_56.x_SpecColor;
  u_xlat6 = (vec3<f32>(x_410, x_410, x_410) * vec3<f32>(x_413.x, x_413.y, x_413.z));
  let x_416 : vec3<f32> = u_xlat13;
  let x_417 : vec3<f32> = u_xlat6;
  u_xlat13 = (x_416 * x_417);
  let x_419 : vec3<f32> = u_xlat5;
  let x_420 : vec4<f32> = u_xlat0;
  let x_423 : vec3<f32> = u_xlat13;
  u_xlat13 = ((x_419 * vec3<f32>(x_420.y, x_420.z, x_420.w)) + x_423);
  let x_426 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_428 : f32 = x_350.unity_LightData.y;
  u_xlat5.x = min(x_426, x_428);
  let x_434 : f32 = u_xlat5.x;
  u_xlatu5 = bitcast<u32>(i32(x_434));
  u_xlat14.x = 0.0f;
  u_xlat14.y = 0.0f;
  u_xlat14.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_447 : u32 = u_xlatu_loop_1;
    let x_448 : u32 = u_xlatu5;
    if ((x_447 < x_448)) {
    } else {
      break;
    }
    let x_451 : u32 = u_xlatu_loop_1;
    u_xlatu15 = (x_451 >> 2u);
    let x_455 : u32 = u_xlatu_loop_1;
    u_xlati24 = bitcast<i32>((x_455 & 3u));
    let x_459 : u32 = u_xlatu15;
    let x_462 : vec4<f32> = x_350.unity_LightIndices[bitcast<i32>(x_459)];
    let x_472 : i32 = u_xlati24;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_477 : vec4<u32> = indexable[x_472];
    u_xlat15.x = dot(x_462, bitcast<vec4<f32>>(x_477));
    let x_483 : f32 = u_xlat15.x;
    u_xlati15 = i32(x_483);
    let x_486 : vec3<f32> = vs_TEXCOORD1;
    let x_498 : i32 = u_xlati15;
    let x_500 : vec4<f32> = x_497.x_AdditionalLightsPosition[x_498];
    let x_503 : i32 = u_xlati15;
    let x_505 : vec4<f32> = x_497.x_AdditionalLightsPosition[x_503];
    u_xlat7 = ((-(x_486) * vec3<f32>(x_500.w, x_500.w, x_500.w)) + vec3<f32>(x_505.x, x_505.y, x_505.z));
    let x_509 : vec3<f32> = u_xlat7;
    let x_510 : vec3<f32> = u_xlat7;
    u_xlat24 = dot(x_509, x_510);
    let x_512 : f32 = u_xlat24;
    u_xlat24 = max(x_512, 6.10351562e-05f);
    let x_516 : f32 = u_xlat24;
    u_xlat33 = inverseSqrt(x_516);
    let x_518 : f32 = u_xlat33;
    let x_520 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_518, x_518, x_518) * x_520);
    let x_522 : f32 = u_xlat24;
    u_xlat33 = (1.0f / x_522);
    let x_524 : f32 = u_xlat24;
    let x_525 : i32 = u_xlati15;
    let x_527 : f32 = x_497.x_AdditionalLightsAttenuation[x_525].x;
    u_xlat24 = (x_524 * x_527);
    let x_529 : f32 = u_xlat24;
    let x_531 : f32 = u_xlat24;
    u_xlat24 = ((-(x_529) * x_531) + 1.0f);
    let x_534 : f32 = u_xlat24;
    u_xlat24 = max(x_534, 0.0f);
    let x_536 : f32 = u_xlat24;
    let x_537 : f32 = u_xlat24;
    u_xlat24 = (x_536 * x_537);
    let x_539 : f32 = u_xlat24;
    let x_540 : f32 = u_xlat33;
    u_xlat24 = (x_539 * x_540);
    let x_542 : i32 = u_xlati15;
    let x_544 : vec4<f32> = x_497.x_AdditionalLightsSpotDir[x_542];
    let x_546 : vec3<f32> = u_xlat7;
    u_xlat33 = dot(vec3<f32>(x_544.x, x_544.y, x_544.z), x_546);
    let x_548 : f32 = u_xlat33;
    let x_549 : i32 = u_xlati15;
    let x_551 : f32 = x_497.x_AdditionalLightsAttenuation[x_549].z;
    let x_553 : i32 = u_xlati15;
    let x_555 : f32 = x_497.x_AdditionalLightsAttenuation[x_553].w;
    u_xlat33 = ((x_548 * x_551) + x_555);
    let x_557 : f32 = u_xlat33;
    u_xlat33 = clamp(x_557, 0.0f, 1.0f);
    let x_559 : f32 = u_xlat33;
    let x_560 : f32 = u_xlat33;
    u_xlat33 = (x_559 * x_560);
    let x_562 : f32 = u_xlat33;
    let x_563 : f32 = u_xlat24;
    u_xlat24 = (x_562 * x_563);
    let x_566 : vec3<f32> = u_xlat4;
    let x_568 : i32 = u_xlati15;
    let x_570 : vec4<f32> = x_497.x_AdditionalLightsColor[x_568];
    u_xlat8 = (vec3<f32>(x_566.x, x_566.x, x_566.x) * vec3<f32>(x_570.x, x_570.y, x_570.z));
    let x_573 : f32 = u_xlat24;
    let x_575 : vec3<f32> = u_xlat8;
    u_xlat15 = (vec3<f32>(x_573, x_573, x_573) * x_575);
    let x_578 : vec3<f32> = u_xlat2;
    let x_579 : vec3<f32> = u_xlat7;
    u_xlat34 = dot(x_578, x_579);
    let x_581 : f32 = u_xlat34;
    u_xlat34 = clamp(x_581, 0.0f, 1.0f);
    let x_583 : vec3<f32> = u_xlat15;
    let x_584 : f32 = u_xlat34;
    u_xlat8 = (x_583 * vec3<f32>(x_584, x_584, x_584));
    let x_587 : vec3<f32> = u_xlat1;
    let x_588 : f32 = u_xlat28;
    let x_591 : vec3<f32> = u_xlat7;
    u_xlat7 = ((x_587 * vec3<f32>(x_588, x_588, x_588)) + x_591);
    let x_593 : vec3<f32> = u_xlat7;
    let x_594 : vec3<f32> = u_xlat7;
    u_xlat34 = dot(x_593, x_594);
    let x_596 : f32 = u_xlat34;
    u_xlat34 = max(x_596, 1.17549435e-37f);
    let x_598 : f32 = u_xlat34;
    u_xlat34 = inverseSqrt(x_598);
    let x_600 : f32 = u_xlat34;
    let x_602 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_600, x_600, x_600) * x_602);
    let x_604 : vec3<f32> = u_xlat2;
    let x_605 : vec3<f32> = u_xlat7;
    u_xlat7.x = dot(x_604, x_605);
    let x_609 : f32 = u_xlat7.x;
    u_xlat7.x = clamp(x_609, 0.0f, 1.0f);
    let x_613 : f32 = u_xlat7.x;
    u_xlat7.x = log2(x_613);
    let x_616 : f32 = u_xlat30;
    let x_618 : f32 = u_xlat7.x;
    u_xlat7.x = (x_616 * x_618);
    let x_622 : f32 = u_xlat7.x;
    u_xlat7.x = exp2(x_622);
    let x_625 : vec3<f32> = u_xlat7;
    let x_628 : vec4<f32> = x_56.x_SpecColor;
    u_xlat7 = (vec3<f32>(x_625.x, x_625.x, x_625.x) * vec3<f32>(x_628.x, x_628.y, x_628.z));
    let x_631 : vec3<f32> = u_xlat15;
    let x_632 : vec3<f32> = u_xlat7;
    u_xlat15 = (x_631 * x_632);
    let x_634 : vec3<f32> = u_xlat8;
    let x_635 : vec4<f32> = u_xlat0;
    let x_638 : vec3<f32> = u_xlat15;
    u_xlat15 = ((x_634 * vec3<f32>(x_635.y, x_635.z, x_635.w)) + x_638);
    let x_640 : vec3<f32> = u_xlat14;
    let x_641 : vec3<f32> = u_xlat15;
    u_xlat14 = (x_640 + x_641);

    continuing {
      let x_643 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_643 + bitcast<u32>(1i));
    }
  }
  let x_646 : vec3<f32> = u_xlat3;
  let x_647 : vec4<f32> = u_xlat0;
  let x_650 : vec3<f32> = u_xlat13;
  u_xlat9 = ((x_646 * vec3<f32>(x_647.y, x_647.z, x_647.w)) + x_650);
  let x_652 : vec3<f32> = u_xlat14;
  let x_653 : vec3<f32> = u_xlat9;
  u_xlat9 = (x_652 + x_653);
  let x_655 : f32 = u_xlat29;
  let x_656 : f32 = u_xlat29;
  u_xlat1.x = (x_655 * -(x_656));
  let x_661 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_661);
  let x_664 : vec3<f32> = u_xlat9;
  let x_667 : vec4<f32> = x_44.unity_FogColor;
  u_xlat9 = (x_664 + -(vec3<f32>(x_667.x, x_667.y, x_667.z)));
  let x_673 : vec3<f32> = u_xlat1;
  let x_675 : vec3<f32> = u_xlat9;
  let x_678 : vec4<f32> = x_44.unity_FogColor;
  let x_680 : vec3<f32> = ((vec3<f32>(x_673.x, x_673.x, x_673.x) * x_675) + vec3<f32>(x_678.x, x_678.y, x_678.z));
  let x_681 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_680.x, x_680.y, x_680.z, x_681.w);
  let x_685 : f32 = x_56.x_Surface;
  u_xlatb9 = (x_685 == 1.0f);
  let x_687 : bool = u_xlatb9;
  if (x_687) {
    let x_692 : f32 = u_xlat0.x;
    x_688 = x_692;
  } else {
    x_688 = 1.0f;
  }
  let x_694 : f32 = x_688;
  SV_Target0.w = x_694;
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

