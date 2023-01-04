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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(7) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

@group(0) @binding(5) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_93 : UnityPerDraw;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(6) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_349 : MainLightShadows;

@group(1) @binding(1) var<uniform> x_578 : AdditionalLights;

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
  var x_161 : f32;
  var x_173 : f32;
  var x_185 : f32;
  var u_xlat28 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat29 : f32;
  var u_xlat30 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb13 : bool;
  var u_xlatb22 : bool;
  var x_376 : f32;
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
  var x_780 : f32;
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
  let x_160 : bool = u_xlatb1;
  if (x_160) {
    let x_165 : f32 = u_xlat10.x;
    x_161 = x_165;
  } else {
    let x_169 : f32 = x_44.unity_MatrixV[0i].z;
    x_161 = x_169;
  }
  let x_170 : f32 = x_161;
  u_xlat2.x = x_170;
  let x_172 : bool = u_xlatb1;
  if (x_172) {
    let x_178 : f32 = u_xlat10.y;
    x_173 = x_178;
  } else {
    let x_181 : f32 = x_44.unity_MatrixV[1i].z;
    x_173 = x_181;
  }
  let x_182 : f32 = x_173;
  u_xlat2.y = x_182;
  let x_184 : bool = u_xlatb1;
  if (x_184) {
    let x_189 : f32 = u_xlat10.z;
    x_185 = x_189;
  } else {
    let x_192 : f32 = x_44.unity_MatrixV[2i].z;
    x_185 = x_192;
  }
  let x_193 : f32 = x_185;
  u_xlat2.z = x_193;
  let x_196 : vec3<f32> = vs_TEXCOORD2;
  let x_197 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_196, x_197);
  let x_201 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_201);
  let x_204 : vec3<f32> = u_xlat1;
  let x_206 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1 = (vec3<f32>(x_204.x, x_204.x, x_204.x) * x_206);
  let x_209 : vec3<f32> = u_xlat2;
  let x_210 : vec3<f32> = u_xlat2;
  u_xlat28 = dot(x_209, x_210);
  let x_212 : f32 = u_xlat28;
  u_xlat28 = max(x_212, 1.17549435e-37f);
  let x_215 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_215);
  let x_224 : vec2<f32> = vs_TEXCOORD7;
  let x_226 : f32 = x_44.x_GlobalMipBias.x;
  let x_227 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_224, x_226);
  u_xlat3 = x_227;
  let x_233 : vec2<f32> = vs_TEXCOORD7;
  let x_235 : f32 = x_44.x_GlobalMipBias.x;
  let x_236 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_233, x_235);
  u_xlat4 = vec3<f32>(x_236.x, x_236.y, x_236.z);
  let x_238 : vec4<f32> = u_xlat3;
  let x_242 : vec3<f32> = (vec3<f32>(x_238.x, x_238.y, x_238.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_243 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_242.x, x_242.y, x_242.z, x_243.w);
  let x_246 : vec3<f32> = u_xlat1;
  let x_247 : vec4<f32> = u_xlat3;
  u_xlat29 = dot(x_246, vec3<f32>(x_247.x, x_247.y, x_247.z));
  let x_250 : f32 = u_xlat29;
  u_xlat29 = (x_250 + 0.5f);
  let x_253 : f32 = u_xlat29;
  let x_255 : vec3<f32> = u_xlat4;
  let x_256 : vec3<f32> = (vec3<f32>(x_253, x_253, x_253) * x_255);
  let x_257 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_256.x, x_256.y, x_256.z, x_257.w);
  let x_260 : f32 = u_xlat3.w;
  u_xlat29 = max(x_260, 0.0001f);
  let x_263 : vec4<f32> = u_xlat3;
  let x_265 : f32 = u_xlat29;
  let x_267 : vec3<f32> = (vec3<f32>(x_263.x, x_263.y, x_263.z) / vec3<f32>(x_265, x_265, x_265));
  let x_268 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_267.x, x_267.y, x_267.z, x_268.w);
  let x_272 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_273 : vec2<f32> = vec2<f32>(x_272.x, x_272.y);
  let x_277 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_273.x, x_273.y));
  let x_278 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_277.x, x_277.y, x_278.z);
  let x_280 : vec3<f32> = u_xlat4;
  let x_282 : vec4<f32> = hlslcc_FragCoord;
  let x_284 : vec2<f32> = (vec2<f32>(x_280.x, x_280.y) * vec2<f32>(x_282.x, x_282.y));
  let x_285 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_284.x, x_284.y, x_285.z);
  let x_288 : f32 = u_xlat4.y;
  let x_291 : f32 = x_44.x_ScaleBiasRt.x;
  let x_294 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat29 = ((x_288 * x_291) + x_294);
  let x_296 : f32 = u_xlat29;
  u_xlat4.z = (-(x_296) + 1.0f);
  let x_305 : vec3<f32> = u_xlat4;
  let x_308 : f32 = x_44.x_GlobalMipBias.x;
  let x_309 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_305.x, x_305.z), x_308);
  u_xlat29 = x_309.x;
  let x_312 : f32 = u_xlat29;
  u_xlat30 = (x_312 + -1.0f);
  let x_317 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_318 : f32 = u_xlat30;
  u_xlat30 = ((x_317 * x_318) + 1.0f);
  let x_321 : f32 = u_xlat29;
  u_xlat29 = min(x_321, 1.0f);
  let x_325 : vec4<f32> = vs_TEXCOORD6;
  let x_326 : vec2<f32> = vec2<f32>(x_325.x, x_325.y);
  let x_328 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_326.x, x_326.y, x_328);
  let x_340 : vec3<f32> = txVec0;
  let x_342 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_340.xy, x_340.z);
  u_xlat4.x = x_342;
  let x_351 : f32 = x_349.x_MainLightShadowParams.x;
  u_xlat13.x = (-(x_351) + 1.0f);
  let x_356 : f32 = u_xlat4.x;
  let x_358 : f32 = x_349.x_MainLightShadowParams.x;
  let x_361 : f32 = u_xlat13.x;
  u_xlat4.x = ((x_356 * x_358) + x_361);
  let x_366 : f32 = vs_TEXCOORD6.z;
  u_xlatb13 = (0.0f >= x_366);
  let x_370 : f32 = vs_TEXCOORD6.z;
  u_xlatb22 = (x_370 >= 1.0f);
  let x_372 : bool = u_xlatb22;
  let x_373 : bool = u_xlatb13;
  u_xlatb13 = (x_372 | x_373);
  let x_375 : bool = u_xlatb13;
  if (x_375) {
    x_376 = 1.0f;
  } else {
    let x_381 : f32 = u_xlat4.x;
    x_376 = x_381;
  }
  let x_382 : f32 = x_376;
  u_xlat4.x = x_382;
  let x_384 : vec3<f32> = vs_TEXCOORD1;
  let x_386 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat13 = (x_384 + -(x_386));
  let x_389 : vec3<f32> = u_xlat13;
  let x_390 : vec3<f32> = u_xlat13;
  u_xlat13.x = dot(x_389, x_390);
  let x_394 : f32 = u_xlat13.x;
  let x_396 : f32 = x_349.x_MainLightShadowParams.z;
  let x_399 : f32 = x_349.x_MainLightShadowParams.w;
  u_xlat13.x = ((x_394 * x_396) + x_399);
  let x_403 : f32 = u_xlat13.x;
  u_xlat13.x = clamp(x_403, 0.0f, 1.0f);
  let x_408 : f32 = u_xlat4.x;
  u_xlat22 = (-(x_408) + 1.0f);
  let x_412 : f32 = u_xlat13.x;
  let x_413 : f32 = u_xlat22;
  let x_416 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_412 * x_413) + x_416);
  let x_419 : f32 = u_xlat30;
  let x_423 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat13 = (vec3<f32>(x_419, x_419, x_419) * vec3<f32>(x_423.x, x_423.y, x_423.z));
  let x_426 : f32 = u_xlat29;
  let x_428 : vec4<f32> = u_xlat3;
  let x_430 : vec3<f32> = (vec3<f32>(x_426, x_426, x_426) * vec3<f32>(x_428.x, x_428.y, x_428.z));
  let x_431 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_430.x, x_430.y, x_430.z, x_431.w);
  let x_434 : f32 = u_xlat4.x;
  let x_437 : f32 = x_93.unity_LightData.z;
  u_xlat29 = (x_434 * x_437);
  let x_439 : f32 = u_xlat29;
  let x_441 : vec3<f32> = u_xlat13;
  u_xlat4 = (vec3<f32>(x_439, x_439, x_439) * x_441);
  let x_443 : vec3<f32> = u_xlat1;
  let x_445 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat29 = dot(x_443, vec3<f32>(x_445.x, x_445.y, x_445.z));
  let x_448 : f32 = u_xlat29;
  u_xlat29 = clamp(x_448, 0.0f, 1.0f);
  let x_451 : f32 = u_xlat29;
  let x_453 : vec3<f32> = u_xlat4;
  u_xlat5 = (vec3<f32>(x_451, x_451, x_451) * x_453);
  let x_456 : f32 = u_xlat0.x;
  u_xlat29 = ((x_456 * 10.0f) + 1.0f);
  let x_460 : f32 = u_xlat29;
  u_xlat29 = exp2(x_460);
  let x_463 : vec3<f32> = u_xlat2;
  let x_464 : f32 = u_xlat28;
  let x_468 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat6 = ((x_463 * vec3<f32>(x_464, x_464, x_464)) + vec3<f32>(x_468.x, x_468.y, x_468.z));
  let x_472 : vec3<f32> = u_xlat6;
  let x_473 : vec3<f32> = u_xlat6;
  u_xlat31 = dot(x_472, x_473);
  let x_475 : f32 = u_xlat31;
  u_xlat31 = max(x_475, 1.17549435e-37f);
  let x_477 : f32 = u_xlat31;
  u_xlat31 = inverseSqrt(x_477);
  let x_479 : f32 = u_xlat31;
  let x_481 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_479, x_479, x_479) * x_481);
  let x_483 : vec3<f32> = u_xlat1;
  let x_484 : vec3<f32> = u_xlat6;
  u_xlat31 = dot(x_483, x_484);
  let x_486 : f32 = u_xlat31;
  u_xlat31 = clamp(x_486, 0.0f, 1.0f);
  let x_488 : f32 = u_xlat31;
  u_xlat31 = log2(x_488);
  let x_490 : f32 = u_xlat29;
  let x_491 : f32 = u_xlat31;
  u_xlat31 = (x_490 * x_491);
  let x_493 : f32 = u_xlat31;
  u_xlat31 = exp2(x_493);
  let x_495 : f32 = u_xlat31;
  let x_498 : vec4<f32> = x_56.x_SpecColor;
  u_xlat6 = (vec3<f32>(x_495, x_495, x_495) * vec3<f32>(x_498.x, x_498.y, x_498.z));
  let x_501 : vec3<f32> = u_xlat4;
  let x_502 : vec3<f32> = u_xlat6;
  u_xlat4 = (x_501 * x_502);
  let x_504 : vec3<f32> = u_xlat5;
  let x_505 : vec4<f32> = u_xlat0;
  let x_508 : vec3<f32> = u_xlat4;
  u_xlat4 = ((x_504 * vec3<f32>(x_505.y, x_505.z, x_505.w)) + x_508);
  let x_511 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_513 : f32 = x_93.unity_LightData.y;
  u_xlat31 = min(x_511, x_513);
  let x_517 : f32 = u_xlat31;
  u_xlatu31 = bitcast<u32>(i32(x_517));
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_529 : u32 = u_xlatu_loop_1;
    let x_530 : u32 = u_xlatu31;
    if ((x_529 < x_530)) {
    } else {
      break;
    }
    let x_533 : u32 = u_xlatu_loop_1;
    u_xlatu6 = (x_533 >> 2u);
    let x_537 : u32 = u_xlatu_loop_1;
    u_xlati15 = bitcast<i32>((x_537 & 3u));
    let x_540 : u32 = u_xlatu6;
    let x_543 : vec4<f32> = x_93.unity_LightIndices[bitcast<i32>(x_540)];
    let x_553 : i32 = u_xlati15;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_558 : vec4<u32> = indexable[x_553];
    u_xlat6.x = dot(x_543, bitcast<vec4<f32>>(x_558));
    let x_564 : f32 = u_xlat6.x;
    u_xlati6 = i32(x_564);
    let x_567 : vec3<f32> = vs_TEXCOORD1;
    let x_579 : i32 = u_xlati6;
    let x_581 : vec4<f32> = x_578.x_AdditionalLightsPosition[x_579];
    let x_584 : i32 = u_xlati6;
    let x_586 : vec4<f32> = x_578.x_AdditionalLightsPosition[x_584];
    u_xlat15 = ((-(x_567) * vec3<f32>(x_581.w, x_581.w, x_581.w)) + vec3<f32>(x_586.x, x_586.y, x_586.z));
    let x_590 : vec3<f32> = u_xlat15;
    let x_591 : vec3<f32> = u_xlat15;
    u_xlat7.x = dot(x_590, x_591);
    let x_595 : f32 = u_xlat7.x;
    u_xlat7.x = max(x_595, 6.10351562e-05f);
    let x_601 : f32 = u_xlat7.x;
    u_xlat16.x = inverseSqrt(x_601);
    let x_604 : vec3<f32> = u_xlat15;
    let x_605 : vec3<f32> = u_xlat16;
    u_xlat15 = (x_604 * vec3<f32>(x_605.x, x_605.x, x_605.x));
    let x_609 : f32 = u_xlat7.x;
    u_xlat16.x = (1.0f / x_609);
    let x_613 : f32 = u_xlat7.x;
    let x_614 : i32 = u_xlati6;
    let x_616 : f32 = x_578.x_AdditionalLightsAttenuation[x_614].x;
    u_xlat7.x = (x_613 * x_616);
    let x_620 : f32 = u_xlat7.x;
    let x_623 : f32 = u_xlat7.x;
    u_xlat7.x = ((-(x_620) * x_623) + 1.0f);
    let x_628 : f32 = u_xlat7.x;
    u_xlat7.x = max(x_628, 0.0f);
    let x_632 : f32 = u_xlat7.x;
    let x_634 : f32 = u_xlat7.x;
    u_xlat7.x = (x_632 * x_634);
    let x_638 : f32 = u_xlat7.x;
    let x_640 : f32 = u_xlat16.x;
    u_xlat7.x = (x_638 * x_640);
    let x_643 : i32 = u_xlati6;
    let x_645 : vec4<f32> = x_578.x_AdditionalLightsSpotDir[x_643];
    let x_647 : vec3<f32> = u_xlat15;
    u_xlat16.x = dot(vec3<f32>(x_645.x, x_645.y, x_645.z), x_647);
    let x_651 : f32 = u_xlat16.x;
    let x_652 : i32 = u_xlati6;
    let x_654 : f32 = x_578.x_AdditionalLightsAttenuation[x_652].z;
    let x_656 : i32 = u_xlati6;
    let x_658 : f32 = x_578.x_AdditionalLightsAttenuation[x_656].w;
    u_xlat16.x = ((x_651 * x_654) + x_658);
    let x_662 : f32 = u_xlat16.x;
    u_xlat16.x = clamp(x_662, 0.0f, 1.0f);
    let x_666 : f32 = u_xlat16.x;
    let x_668 : f32 = u_xlat16.x;
    u_xlat16.x = (x_666 * x_668);
    let x_672 : f32 = u_xlat16.x;
    let x_674 : f32 = u_xlat7.x;
    u_xlat7.x = (x_672 * x_674);
    let x_677 : f32 = u_xlat30;
    let x_679 : i32 = u_xlati6;
    let x_681 : vec4<f32> = x_578.x_AdditionalLightsColor[x_679];
    u_xlat16 = (vec3<f32>(x_677, x_677, x_677) * vec3<f32>(x_681.x, x_681.y, x_681.z));
    let x_684 : vec3<f32> = u_xlat7;
    let x_686 : vec3<f32> = u_xlat16;
    u_xlat7 = (vec3<f32>(x_684.x, x_684.x, x_684.x) * x_686);
    let x_688 : vec3<f32> = u_xlat1;
    let x_689 : vec3<f32> = u_xlat15;
    u_xlat6.x = dot(x_688, x_689);
    let x_693 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_693, 0.0f, 1.0f);
    let x_697 : vec3<f32> = u_xlat6;
    let x_699 : vec3<f32> = u_xlat7;
    u_xlat8 = (vec3<f32>(x_697.x, x_697.x, x_697.x) * x_699);
    let x_701 : vec3<f32> = u_xlat2;
    let x_702 : f32 = u_xlat28;
    let x_705 : vec3<f32> = u_xlat15;
    u_xlat6 = ((x_701 * vec3<f32>(x_702, x_702, x_702)) + x_705);
    let x_708 : vec3<f32> = u_xlat6;
    let x_709 : vec3<f32> = u_xlat6;
    u_xlat33 = dot(x_708, x_709);
    let x_711 : f32 = u_xlat33;
    u_xlat33 = max(x_711, 1.17549435e-37f);
    let x_713 : f32 = u_xlat33;
    u_xlat33 = inverseSqrt(x_713);
    let x_715 : f32 = u_xlat33;
    let x_717 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_715, x_715, x_715) * x_717);
    let x_719 : vec3<f32> = u_xlat1;
    let x_720 : vec3<f32> = u_xlat6;
    u_xlat6.x = dot(x_719, x_720);
    let x_724 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_724, 0.0f, 1.0f);
    let x_728 : f32 = u_xlat6.x;
    u_xlat6.x = log2(x_728);
    let x_731 : f32 = u_xlat29;
    let x_733 : f32 = u_xlat6.x;
    u_xlat6.x = (x_731 * x_733);
    let x_737 : f32 = u_xlat6.x;
    u_xlat6.x = exp2(x_737);
    let x_740 : vec3<f32> = u_xlat6;
    let x_743 : vec4<f32> = x_56.x_SpecColor;
    u_xlat6 = (vec3<f32>(x_740.x, x_740.x, x_740.x) * vec3<f32>(x_743.x, x_743.y, x_743.z));
    let x_746 : vec3<f32> = u_xlat6;
    let x_747 : vec3<f32> = u_xlat7;
    u_xlat6 = (x_746 * x_747);
    let x_749 : vec3<f32> = u_xlat8;
    let x_750 : vec4<f32> = u_xlat0;
    let x_753 : vec3<f32> = u_xlat6;
    u_xlat6 = ((x_749 * vec3<f32>(x_750.y, x_750.z, x_750.w)) + x_753);
    let x_755 : vec3<f32> = u_xlat5;
    let x_756 : vec3<f32> = u_xlat6;
    u_xlat5 = (x_755 + x_756);

    continuing {
      let x_758 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_758 + bitcast<u32>(1i));
    }
  }
  let x_761 : vec4<f32> = u_xlat3;
  let x_763 : vec4<f32> = u_xlat0;
  let x_766 : vec3<f32> = u_xlat4;
  u_xlat9 = ((vec3<f32>(x_761.x, x_761.y, x_761.z) * vec3<f32>(x_763.y, x_763.z, x_763.w)) + x_766);
  let x_770 : vec3<f32> = u_xlat5;
  let x_771 : vec3<f32> = u_xlat9;
  let x_772 : vec3<f32> = (x_770 + x_771);
  let x_773 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_772.x, x_772.y, x_772.z, x_773.w);
  let x_777 : f32 = x_56.x_Surface;
  u_xlatb9 = (x_777 == 1.0f);
  let x_779 : bool = u_xlatb9;
  if (x_779) {
    let x_784 : f32 = u_xlat0.x;
    x_780 = x_784;
  } else {
    x_780 = 1.0f;
  }
  let x_786 : f32 = x_780;
  SV_Target0.w = x_786;
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

