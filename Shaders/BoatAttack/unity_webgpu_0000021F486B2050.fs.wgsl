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
  x_DitheringTextureInvSize : f32,
}

struct UnityPerMaterial {
  x_BaseMap_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Surface : f32,
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

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

@group(0) @binding(4) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_93 : UnityPerDraw;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(5) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_333 : MainLightShadows;

@group(1) @binding(1) var<uniform> x_554 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlatb10 : bool;
  var x_100 : f32;
  var u_xlatb1 : bool;
  var u_xlat10 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var x_172 : vec3<f32>;
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
  var x_358 : f32;
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
  var x_745 : f32;
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
  let x_64 : vec4<f32> = hlslcc_FragCoord;
  let x_68 : f32 = x_44.x_DitheringTextureInvSize;
  let x_70 : vec2<f32> = (vec2<f32>(x_64.x, x_64.y) * vec2<f32>(x_68, x_68));
  let x_71 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_70.x, x_70.y, x_71.z);
  let x_78 : vec3<f32> = u_xlat1;
  let x_81 : f32 = x_44.x_GlobalMipBias.x;
  let x_82 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_78.x, x_78.y), x_81);
  u_xlat1.x = x_82.w;
  let x_96 : f32 = x_93.unity_LODFade.x;
  u_xlatb10 = (x_96 >= 0.0f);
  let x_99 : bool = u_xlatb10;
  if (x_99) {
    let x_104 : f32 = u_xlat1.x;
    x_100 = abs(x_104);
  } else {
    let x_108 : f32 = u_xlat1.x;
    x_100 = -(abs(x_108));
  }
  let x_111 : f32 = x_100;
  u_xlat1.x = x_111;
  let x_114 : f32 = u_xlat1.x;
  let x_117 : f32 = x_93.unity_LODFade.x;
  u_xlat1.x = (-(x_114) + x_117);
  let x_122 : f32 = u_xlat1.x;
  u_xlatb1 = (x_122 < 0.0f);
  let x_124 : bool = u_xlatb1;
  if (((select(0i, 1i, x_124) * -1i) != 0i)) {
    discard;
  }
  let x_135 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb1 = (x_135 == 0.0f);
  let x_140 : vec3<f32> = vs_TEXCOORD1;
  let x_145 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat10 = (-(x_140) + x_145);
  let x_148 : vec3<f32> = u_xlat10;
  let x_149 : vec3<f32> = u_xlat10;
  u_xlat2.x = dot(x_148, x_149);
  let x_153 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_153);
  let x_156 : vec3<f32> = u_xlat10;
  let x_157 : vec3<f32> = u_xlat2;
  u_xlat10 = (x_156 * vec3<f32>(x_157.x, x_157.x, x_157.x));
  let x_162 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat2.x = x_162;
  let x_165 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat2.y = x_165;
  let x_169 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat2.z = x_169;
  let x_171 : bool = u_xlatb1;
  if (x_171) {
    let x_175 : vec3<f32> = u_xlat10;
    x_172 = x_175;
  } else {
    let x_177 : vec3<f32> = u_xlat2;
    x_172 = x_177;
  }
  let x_178 : vec3<f32> = x_172;
  u_xlat1 = x_178;
  let x_181 : vec3<f32> = vs_TEXCOORD2;
  let x_182 : vec3<f32> = vs_TEXCOORD2;
  u_xlat28 = dot(x_181, x_182);
  let x_184 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_184);
  let x_186 : f32 = u_xlat28;
  let x_188 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_186, x_186, x_186) * x_188);
  let x_190 : vec3<f32> = u_xlat1;
  let x_191 : vec3<f32> = u_xlat1;
  u_xlat28 = dot(x_190, x_191);
  let x_193 : f32 = u_xlat28;
  u_xlat28 = max(x_193, 1.17549435e-37f);
  let x_196 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_196);
  let x_200 : f32 = vs_TEXCOORD1.y;
  let x_202 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat29 = (x_200 * x_202);
  let x_205 : f32 = x_44.unity_MatrixV[0i].z;
  let x_207 : f32 = vs_TEXCOORD1.x;
  let x_209 : f32 = u_xlat29;
  u_xlat29 = ((x_205 * x_207) + x_209);
  let x_212 : f32 = x_44.unity_MatrixV[2i].z;
  let x_214 : f32 = vs_TEXCOORD1.z;
  let x_216 : f32 = u_xlat29;
  u_xlat29 = ((x_212 * x_214) + x_216);
  let x_218 : f32 = u_xlat29;
  let x_221 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat29 = (x_218 + x_221);
  let x_223 : f32 = u_xlat29;
  let x_227 : f32 = x_44.x_ProjectionParams.y;
  u_xlat29 = (-(x_223) + -(x_227));
  let x_230 : f32 = u_xlat29;
  u_xlat29 = max(x_230, 0.0f);
  let x_232 : f32 = u_xlat29;
  let x_235 : f32 = x_44.unity_FogParams.x;
  u_xlat29 = (x_232 * x_235);
  let x_244 : vec2<f32> = vs_TEXCOORD7;
  let x_246 : f32 = x_44.x_GlobalMipBias.x;
  let x_247 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_244, x_246);
  u_xlat3 = vec3<f32>(x_247.x, x_247.y, x_247.z);
  let x_252 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_253 : vec2<f32> = vec2<f32>(x_252.x, x_252.y);
  let x_257 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_253.x, x_253.y));
  let x_258 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_257.x, x_257.y, x_258.z);
  let x_260 : vec3<f32> = u_xlat4;
  let x_262 : vec4<f32> = hlslcc_FragCoord;
  let x_264 : vec2<f32> = (vec2<f32>(x_260.x, x_260.y) * vec2<f32>(x_262.x, x_262.y));
  let x_265 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_264.x, x_264.y, x_265.z);
  let x_269 : f32 = u_xlat4.y;
  let x_272 : f32 = x_44.x_ScaleBiasRt.x;
  let x_275 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat30 = ((x_269 * x_272) + x_275);
  let x_277 : f32 = u_xlat30;
  u_xlat4.z = (-(x_277) + 1.0f);
  let x_286 : vec3<f32> = u_xlat4;
  let x_289 : f32 = x_44.x_GlobalMipBias.x;
  let x_290 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_286.x, x_286.z), x_289);
  u_xlat30 = x_290.x;
  let x_292 : f32 = u_xlat30;
  u_xlat4.x = (x_292 + -1.0f);
  let x_298 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_300 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_298 * x_300) + 1.0f);
  let x_304 : f32 = u_xlat30;
  u_xlat30 = min(x_304, 1.0f);
  let x_308 : vec4<f32> = vs_TEXCOORD6;
  let x_309 : vec2<f32> = vec2<f32>(x_308.x, x_308.y);
  let x_311 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_309.x, x_309.y, x_311);
  let x_324 : vec3<f32> = txVec0;
  let x_326 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_324.xy, x_324.z);
  u_xlat13.x = x_326;
  let x_335 : f32 = x_333.x_MainLightShadowParams.x;
  u_xlat22 = (-(x_335) + 1.0f);
  let x_339 : f32 = u_xlat13.x;
  let x_341 : f32 = x_333.x_MainLightShadowParams.x;
  let x_343 : f32 = u_xlat22;
  u_xlat13.x = ((x_339 * x_341) + x_343);
  let x_348 : f32 = vs_TEXCOORD6.z;
  u_xlatb22 = (0.0f >= x_348);
  let x_352 : f32 = vs_TEXCOORD6.z;
  u_xlatb31 = (x_352 >= 1.0f);
  let x_354 : bool = u_xlatb31;
  let x_355 : bool = u_xlatb22;
  u_xlatb22 = (x_354 | x_355);
  let x_357 : bool = u_xlatb22;
  if (x_357) {
    x_358 = 1.0f;
  } else {
    let x_363 : f32 = u_xlat13.x;
    x_358 = x_363;
  }
  let x_364 : f32 = x_358;
  u_xlat13.x = x_364;
  let x_367 : vec3<f32> = vs_TEXCOORD1;
  let x_369 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat5 = (x_367 + -(x_369));
  let x_372 : vec3<f32> = u_xlat5;
  let x_373 : vec3<f32> = u_xlat5;
  u_xlat22 = dot(x_372, x_373);
  let x_375 : f32 = u_xlat22;
  let x_377 : f32 = x_333.x_MainLightShadowParams.z;
  let x_380 : f32 = x_333.x_MainLightShadowParams.w;
  u_xlat22 = ((x_375 * x_377) + x_380);
  let x_382 : f32 = u_xlat22;
  u_xlat22 = clamp(x_382, 0.0f, 1.0f);
  let x_386 : f32 = u_xlat13.x;
  u_xlat31 = (-(x_386) + 1.0f);
  let x_389 : f32 = u_xlat22;
  let x_390 : f32 = u_xlat31;
  let x_393 : f32 = u_xlat13.x;
  u_xlat13.x = ((x_389 * x_390) + x_393);
  let x_396 : vec3<f32> = u_xlat4;
  let x_399 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat5 = (vec3<f32>(x_396.x, x_396.x, x_396.x) * vec3<f32>(x_399.x, x_399.y, x_399.z));
  let x_402 : f32 = u_xlat30;
  let x_404 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_402, x_402, x_402) * x_404);
  let x_407 : f32 = u_xlat13.x;
  let x_410 : f32 = x_93.unity_LightData.z;
  u_xlat30 = (x_407 * x_410);
  let x_412 : f32 = u_xlat30;
  let x_414 : vec3<f32> = u_xlat5;
  u_xlat13 = (vec3<f32>(x_412, x_412, x_412) * x_414);
  let x_416 : vec3<f32> = u_xlat2;
  let x_418 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat30 = dot(x_416, vec3<f32>(x_418.x, x_418.y, x_418.z));
  let x_421 : f32 = u_xlat30;
  u_xlat30 = clamp(x_421, 0.0f, 1.0f);
  let x_423 : f32 = u_xlat30;
  let x_425 : vec3<f32> = u_xlat13;
  u_xlat5 = (vec3<f32>(x_423, x_423, x_423) * x_425);
  let x_428 : f32 = u_xlat0.x;
  u_xlat30 = ((x_428 * 10.0f) + 1.0f);
  let x_432 : f32 = u_xlat30;
  u_xlat30 = exp2(x_432);
  let x_435 : vec3<f32> = u_xlat1;
  let x_436 : f32 = u_xlat28;
  let x_440 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat6 = ((x_435 * vec3<f32>(x_436, x_436, x_436)) + vec3<f32>(x_440.x, x_440.y, x_440.z));
  let x_444 : vec3<f32> = u_xlat6;
  let x_445 : vec3<f32> = u_xlat6;
  u_xlat32 = dot(x_444, x_445);
  let x_447 : f32 = u_xlat32;
  u_xlat32 = max(x_447, 1.17549435e-37f);
  let x_449 : f32 = u_xlat32;
  u_xlat32 = inverseSqrt(x_449);
  let x_451 : f32 = u_xlat32;
  let x_453 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_451, x_451, x_451) * x_453);
  let x_455 : vec3<f32> = u_xlat2;
  let x_456 : vec3<f32> = u_xlat6;
  u_xlat32 = dot(x_455, x_456);
  let x_458 : f32 = u_xlat32;
  u_xlat32 = clamp(x_458, 0.0f, 1.0f);
  let x_460 : f32 = u_xlat32;
  u_xlat32 = log2(x_460);
  let x_462 : f32 = u_xlat30;
  let x_463 : f32 = u_xlat32;
  u_xlat32 = (x_462 * x_463);
  let x_465 : f32 = u_xlat32;
  u_xlat32 = exp2(x_465);
  let x_467 : f32 = u_xlat32;
  let x_470 : vec4<f32> = x_56.x_SpecColor;
  u_xlat6 = (vec3<f32>(x_467, x_467, x_467) * vec3<f32>(x_470.x, x_470.y, x_470.z));
  let x_473 : vec3<f32> = u_xlat13;
  let x_474 : vec3<f32> = u_xlat6;
  u_xlat13 = (x_473 * x_474);
  let x_476 : vec3<f32> = u_xlat5;
  let x_477 : vec4<f32> = u_xlat0;
  let x_480 : vec3<f32> = u_xlat13;
  u_xlat13 = ((x_476 * vec3<f32>(x_477.y, x_477.z, x_477.w)) + x_480);
  let x_483 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_485 : f32 = x_93.unity_LightData.y;
  u_xlat5.x = min(x_483, x_485);
  let x_491 : f32 = u_xlat5.x;
  u_xlatu5 = bitcast<u32>(i32(x_491));
  u_xlat14.x = 0.0f;
  u_xlat14.y = 0.0f;
  u_xlat14.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_504 : u32 = u_xlatu_loop_1;
    let x_505 : u32 = u_xlatu5;
    if ((x_504 < x_505)) {
    } else {
      break;
    }
    let x_508 : u32 = u_xlatu_loop_1;
    u_xlatu15 = (x_508 >> 2u);
    let x_512 : u32 = u_xlatu_loop_1;
    u_xlati24 = bitcast<i32>((x_512 & 3u));
    let x_516 : u32 = u_xlatu15;
    let x_519 : vec4<f32> = x_93.unity_LightIndices[bitcast<i32>(x_516)];
    let x_529 : i32 = u_xlati24;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_534 : vec4<u32> = indexable[x_529];
    u_xlat15.x = dot(x_519, bitcast<vec4<f32>>(x_534));
    let x_540 : f32 = u_xlat15.x;
    u_xlati15 = i32(x_540);
    let x_543 : vec3<f32> = vs_TEXCOORD1;
    let x_555 : i32 = u_xlati15;
    let x_557 : vec4<f32> = x_554.x_AdditionalLightsPosition[x_555];
    let x_560 : i32 = u_xlati15;
    let x_562 : vec4<f32> = x_554.x_AdditionalLightsPosition[x_560];
    u_xlat7 = ((-(x_543) * vec3<f32>(x_557.w, x_557.w, x_557.w)) + vec3<f32>(x_562.x, x_562.y, x_562.z));
    let x_566 : vec3<f32> = u_xlat7;
    let x_567 : vec3<f32> = u_xlat7;
    u_xlat24 = dot(x_566, x_567);
    let x_569 : f32 = u_xlat24;
    u_xlat24 = max(x_569, 6.10351562e-05f);
    let x_573 : f32 = u_xlat24;
    u_xlat33 = inverseSqrt(x_573);
    let x_575 : f32 = u_xlat33;
    let x_577 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_575, x_575, x_575) * x_577);
    let x_579 : f32 = u_xlat24;
    u_xlat33 = (1.0f / x_579);
    let x_581 : f32 = u_xlat24;
    let x_582 : i32 = u_xlati15;
    let x_584 : f32 = x_554.x_AdditionalLightsAttenuation[x_582].x;
    u_xlat24 = (x_581 * x_584);
    let x_586 : f32 = u_xlat24;
    let x_588 : f32 = u_xlat24;
    u_xlat24 = ((-(x_586) * x_588) + 1.0f);
    let x_591 : f32 = u_xlat24;
    u_xlat24 = max(x_591, 0.0f);
    let x_593 : f32 = u_xlat24;
    let x_594 : f32 = u_xlat24;
    u_xlat24 = (x_593 * x_594);
    let x_596 : f32 = u_xlat24;
    let x_597 : f32 = u_xlat33;
    u_xlat24 = (x_596 * x_597);
    let x_599 : i32 = u_xlati15;
    let x_601 : vec4<f32> = x_554.x_AdditionalLightsSpotDir[x_599];
    let x_603 : vec3<f32> = u_xlat7;
    u_xlat33 = dot(vec3<f32>(x_601.x, x_601.y, x_601.z), x_603);
    let x_605 : f32 = u_xlat33;
    let x_606 : i32 = u_xlati15;
    let x_608 : f32 = x_554.x_AdditionalLightsAttenuation[x_606].z;
    let x_610 : i32 = u_xlati15;
    let x_612 : f32 = x_554.x_AdditionalLightsAttenuation[x_610].w;
    u_xlat33 = ((x_605 * x_608) + x_612);
    let x_614 : f32 = u_xlat33;
    u_xlat33 = clamp(x_614, 0.0f, 1.0f);
    let x_616 : f32 = u_xlat33;
    let x_617 : f32 = u_xlat33;
    u_xlat33 = (x_616 * x_617);
    let x_619 : f32 = u_xlat33;
    let x_620 : f32 = u_xlat24;
    u_xlat24 = (x_619 * x_620);
    let x_623 : vec3<f32> = u_xlat4;
    let x_625 : i32 = u_xlati15;
    let x_627 : vec4<f32> = x_554.x_AdditionalLightsColor[x_625];
    u_xlat8 = (vec3<f32>(x_623.x, x_623.x, x_623.x) * vec3<f32>(x_627.x, x_627.y, x_627.z));
    let x_630 : f32 = u_xlat24;
    let x_632 : vec3<f32> = u_xlat8;
    u_xlat15 = (vec3<f32>(x_630, x_630, x_630) * x_632);
    let x_635 : vec3<f32> = u_xlat2;
    let x_636 : vec3<f32> = u_xlat7;
    u_xlat34 = dot(x_635, x_636);
    let x_638 : f32 = u_xlat34;
    u_xlat34 = clamp(x_638, 0.0f, 1.0f);
    let x_640 : vec3<f32> = u_xlat15;
    let x_641 : f32 = u_xlat34;
    u_xlat8 = (x_640 * vec3<f32>(x_641, x_641, x_641));
    let x_644 : vec3<f32> = u_xlat1;
    let x_645 : f32 = u_xlat28;
    let x_648 : vec3<f32> = u_xlat7;
    u_xlat7 = ((x_644 * vec3<f32>(x_645, x_645, x_645)) + x_648);
    let x_650 : vec3<f32> = u_xlat7;
    let x_651 : vec3<f32> = u_xlat7;
    u_xlat34 = dot(x_650, x_651);
    let x_653 : f32 = u_xlat34;
    u_xlat34 = max(x_653, 1.17549435e-37f);
    let x_655 : f32 = u_xlat34;
    u_xlat34 = inverseSqrt(x_655);
    let x_657 : f32 = u_xlat34;
    let x_659 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_657, x_657, x_657) * x_659);
    let x_661 : vec3<f32> = u_xlat2;
    let x_662 : vec3<f32> = u_xlat7;
    u_xlat7.x = dot(x_661, x_662);
    let x_666 : f32 = u_xlat7.x;
    u_xlat7.x = clamp(x_666, 0.0f, 1.0f);
    let x_670 : f32 = u_xlat7.x;
    u_xlat7.x = log2(x_670);
    let x_673 : f32 = u_xlat30;
    let x_675 : f32 = u_xlat7.x;
    u_xlat7.x = (x_673 * x_675);
    let x_679 : f32 = u_xlat7.x;
    u_xlat7.x = exp2(x_679);
    let x_682 : vec3<f32> = u_xlat7;
    let x_685 : vec4<f32> = x_56.x_SpecColor;
    u_xlat7 = (vec3<f32>(x_682.x, x_682.x, x_682.x) * vec3<f32>(x_685.x, x_685.y, x_685.z));
    let x_688 : vec3<f32> = u_xlat15;
    let x_689 : vec3<f32> = u_xlat7;
    u_xlat15 = (x_688 * x_689);
    let x_691 : vec3<f32> = u_xlat8;
    let x_692 : vec4<f32> = u_xlat0;
    let x_695 : vec3<f32> = u_xlat15;
    u_xlat15 = ((x_691 * vec3<f32>(x_692.y, x_692.z, x_692.w)) + x_695);
    let x_697 : vec3<f32> = u_xlat14;
    let x_698 : vec3<f32> = u_xlat15;
    u_xlat14 = (x_697 + x_698);

    continuing {
      let x_700 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_700 + bitcast<u32>(1i));
    }
  }
  let x_703 : vec3<f32> = u_xlat3;
  let x_704 : vec4<f32> = u_xlat0;
  let x_707 : vec3<f32> = u_xlat13;
  u_xlat9 = ((x_703 * vec3<f32>(x_704.y, x_704.z, x_704.w)) + x_707);
  let x_709 : vec3<f32> = u_xlat14;
  let x_710 : vec3<f32> = u_xlat9;
  u_xlat9 = (x_709 + x_710);
  let x_712 : f32 = u_xlat29;
  let x_713 : f32 = u_xlat29;
  u_xlat1.x = (x_712 * -(x_713));
  let x_718 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_718);
  let x_721 : vec3<f32> = u_xlat9;
  let x_724 : vec4<f32> = x_44.unity_FogColor;
  u_xlat9 = (x_721 + -(vec3<f32>(x_724.x, x_724.y, x_724.z)));
  let x_730 : vec3<f32> = u_xlat1;
  let x_732 : vec3<f32> = u_xlat9;
  let x_735 : vec4<f32> = x_44.unity_FogColor;
  let x_737 : vec3<f32> = ((vec3<f32>(x_730.x, x_730.x, x_730.x) * x_732) + vec3<f32>(x_735.x, x_735.y, x_735.z));
  let x_738 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_737.x, x_737.y, x_737.z, x_738.w);
  let x_742 : f32 = x_56.x_Surface;
  u_xlatb9 = (x_742 == 1.0f);
  let x_744 : bool = u_xlatb9;
  if (x_744) {
    let x_749 : f32 = u_xlat0.x;
    x_745 = x_749;
  } else {
    x_745 = 1.0f;
  }
  let x_751 : f32 = x_745;
  SV_Target0.w = x_751;
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

