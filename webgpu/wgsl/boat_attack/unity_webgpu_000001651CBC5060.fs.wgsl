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

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(4) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

@group(0) @binding(3) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_92 : UnityPerDraw;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_225 : MainLightShadows;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(1) var<uniform> x_800 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb10 : bool;
  var x_99 : f32;
  var u_xlatb1 : bool;
  var u_xlat10 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var x_161 : f32;
  var x_173 : f32;
  var x_185 : f32;
  var u_xlat29 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlatb3 : vec4<bool>;
  var u_xlatu3 : u32;
  var u_xlati3 : i32;
  var u_xlat12 : vec3<f32>;
  var u_xlat28 : f32;
  var u_xlat30 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatb12 : bool;
  var u_xlatb21 : bool;
  var x_583 : f32;
  var u_xlat21 : f32;
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
  var x_1009 : f32;
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
  let x_63 : vec4<f32> = hlslcc_FragCoord;
  let x_67 : f32 = x_44.x_DitheringTextureInvSize;
  let x_69 : vec2<f32> = (vec2<f32>(x_63.x, x_63.y) * vec2<f32>(x_67, x_67));
  let x_70 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_69.x, x_69.y, x_70.z, x_70.w);
  let x_77 : vec4<f32> = u_xlat1;
  let x_80 : f32 = x_44.x_GlobalMipBias.x;
  let x_81 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_77.x, x_77.y), x_80);
  u_xlat1.x = x_81.w;
  let x_95 : f32 = x_92.unity_LODFade.x;
  u_xlatb10 = (x_95 >= 0.0f);
  let x_98 : bool = u_xlatb10;
  if (x_98) {
    let x_103 : f32 = u_xlat1.x;
    x_99 = abs(x_103);
  } else {
    let x_107 : f32 = u_xlat1.x;
    x_99 = -(abs(x_107));
  }
  let x_110 : f32 = x_99;
  u_xlat1.x = x_110;
  let x_113 : f32 = u_xlat1.x;
  let x_116 : f32 = x_92.unity_LODFade.x;
  u_xlat1.x = (-(x_113) + x_116);
  let x_121 : f32 = u_xlat1.x;
  u_xlatb1 = (x_121 < 0.0f);
  let x_123 : bool = u_xlatb1;
  if (((select(0i, 1i, x_123) * -1i) != 0i)) {
    discard;
  }
  let x_134 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb1 = (x_134 == 0.0f);
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
  let x_204 : vec4<f32> = u_xlat1;
  let x_206 : vec3<f32> = vs_TEXCOORD2;
  let x_207 : vec3<f32> = (vec3<f32>(x_204.x, x_204.x, x_204.x) * x_206);
  let x_208 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_207.x, x_207.y, x_207.z, x_208.w);
  let x_211 : vec3<f32> = u_xlat2;
  let x_212 : vec3<f32> = u_xlat2;
  u_xlat29 = dot(x_211, x_212);
  let x_214 : f32 = u_xlat29;
  u_xlat29 = max(x_214, 1.17549435e-37f);
  let x_217 : f32 = u_xlat29;
  u_xlat29 = inverseSqrt(x_217);
  let x_220 : vec3<f32> = vs_TEXCOORD1;
  let x_227 : vec4<f32> = x_225.x_CascadeShadowSplitSpheres0;
  let x_230 : vec3<f32> = (x_220 + -(vec3<f32>(x_227.x, x_227.y, x_227.z)));
  let x_231 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_230.x, x_230.y, x_230.z, x_231.w);
  let x_234 : vec3<f32> = vs_TEXCOORD1;
  let x_236 : vec4<f32> = x_225.x_CascadeShadowSplitSpheres1;
  let x_239 : vec3<f32> = (x_234 + -(vec3<f32>(x_236.x, x_236.y, x_236.z)));
  let x_240 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_239.x, x_239.y, x_239.z, x_240.w);
  let x_243 : vec3<f32> = vs_TEXCOORD1;
  let x_246 : vec4<f32> = x_225.x_CascadeShadowSplitSpheres2;
  let x_249 : vec3<f32> = (x_243 + -(vec3<f32>(x_246.x, x_246.y, x_246.z)));
  let x_250 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_249.x, x_249.y, x_249.z, x_250.w);
  let x_253 : vec3<f32> = vs_TEXCOORD1;
  let x_256 : vec4<f32> = x_225.x_CascadeShadowSplitSpheres3;
  u_xlat6 = (x_253 + -(vec3<f32>(x_256.x, x_256.y, x_256.z)));
  let x_260 : vec4<f32> = u_xlat3;
  let x_262 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_260.x, x_260.y, x_260.z), vec3<f32>(x_262.x, x_262.y, x_262.z));
  let x_266 : vec4<f32> = u_xlat4;
  let x_268 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_266.x, x_266.y, x_266.z), vec3<f32>(x_268.x, x_268.y, x_268.z));
  let x_272 : vec4<f32> = u_xlat5;
  let x_274 : vec4<f32> = u_xlat5;
  u_xlat3.z = dot(vec3<f32>(x_272.x, x_272.y, x_272.z), vec3<f32>(x_274.x, x_274.y, x_274.z));
  let x_278 : vec3<f32> = u_xlat6;
  let x_279 : vec3<f32> = u_xlat6;
  u_xlat3.w = dot(x_278, x_279);
  let x_285 : vec4<f32> = u_xlat3;
  let x_288 : vec4<f32> = x_225.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_285 < x_288);
  let x_291 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_291);
  let x_295 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_295);
  let x_299 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_299);
  let x_303 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_303);
  let x_307 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_307);
  let x_313 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_313);
  let x_317 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_317);
  let x_320 : vec4<f32> = u_xlat3;
  let x_322 : vec4<f32> = u_xlat4;
  let x_324 : vec3<f32> = (vec3<f32>(x_320.x, x_320.y, x_320.z) + vec3<f32>(x_322.y, x_322.z, x_322.w));
  let x_325 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_324.x, x_324.y, x_324.z, x_325.w);
  let x_327 : vec4<f32> = u_xlat3;
  let x_330 : vec3<f32> = max(vec3<f32>(x_327.x, x_327.y, x_327.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_331 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_331.x, x_330.x, x_330.y, x_330.z);
  let x_333 : vec4<f32> = u_xlat4;
  u_xlat3.x = dot(x_333, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_341 : f32 = u_xlat3.x;
  u_xlat3.x = (-(x_341) + 4.0f);
  let x_348 : f32 = u_xlat3.x;
  u_xlatu3 = u32(x_348);
  let x_352 : u32 = u_xlatu3;
  u_xlati3 = (bitcast<i32>(x_352) << bitcast<u32>(2i));
  let x_356 : vec3<f32> = vs_TEXCOORD1;
  let x_358 : i32 = u_xlati3;
  let x_361 : i32 = u_xlati3;
  let x_365 : vec4<f32> = x_225.x_MainLightWorldToShadow[((x_358 + 1i) / 4i)][((x_361 + 1i) % 4i)];
  u_xlat12 = (vec3<f32>(x_356.y, x_356.y, x_356.y) * vec3<f32>(x_365.x, x_365.y, x_365.z));
  let x_368 : i32 = u_xlati3;
  let x_370 : i32 = u_xlati3;
  let x_373 : vec4<f32> = x_225.x_MainLightWorldToShadow[(x_368 / 4i)][(x_370 % 4i)];
  let x_375 : vec3<f32> = vs_TEXCOORD1;
  let x_378 : vec3<f32> = u_xlat12;
  u_xlat12 = ((vec3<f32>(x_373.x, x_373.y, x_373.z) * vec3<f32>(x_375.x, x_375.x, x_375.x)) + x_378);
  let x_380 : i32 = u_xlati3;
  let x_383 : i32 = u_xlati3;
  let x_387 : vec4<f32> = x_225.x_MainLightWorldToShadow[((x_380 + 2i) / 4i)][((x_383 + 2i) % 4i)];
  let x_389 : vec3<f32> = vs_TEXCOORD1;
  let x_392 : vec3<f32> = u_xlat12;
  u_xlat12 = ((vec3<f32>(x_387.x, x_387.y, x_387.z) * vec3<f32>(x_389.z, x_389.z, x_389.z)) + x_392);
  let x_394 : vec3<f32> = u_xlat12;
  let x_395 : i32 = u_xlati3;
  let x_398 : i32 = u_xlati3;
  let x_402 : vec4<f32> = x_225.x_MainLightWorldToShadow[((x_395 + 3i) / 4i)][((x_398 + 3i) % 4i)];
  let x_404 : vec3<f32> = (x_394 + vec3<f32>(x_402.x, x_402.y, x_402.z));
  let x_405 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_404.x, x_404.y, x_404.z, x_405.w);
  u_xlat1.w = 1.0f;
  let x_410 : vec4<f32> = x_92.unity_SHAr;
  let x_411 : vec4<f32> = u_xlat1;
  u_xlat4.x = dot(x_410, x_411);
  let x_416 : vec4<f32> = x_92.unity_SHAg;
  let x_417 : vec4<f32> = u_xlat1;
  u_xlat4.y = dot(x_416, x_417);
  let x_422 : vec4<f32> = x_92.unity_SHAb;
  let x_423 : vec4<f32> = u_xlat1;
  u_xlat4.z = dot(x_422, x_423);
  let x_426 : vec4<f32> = u_xlat1;
  let x_428 : vec4<f32> = u_xlat1;
  u_xlat5 = (vec4<f32>(x_426.y, x_426.z, x_426.z, x_426.x) * vec4<f32>(x_428.x, x_428.y, x_428.z, x_428.z));
  let x_433 : vec4<f32> = x_92.unity_SHBr;
  let x_434 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_433, x_434);
  let x_439 : vec4<f32> = x_92.unity_SHBg;
  let x_440 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_439, x_440);
  let x_445 : vec4<f32> = x_92.unity_SHBb;
  let x_446 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_445, x_446);
  let x_451 : f32 = u_xlat1.y;
  let x_453 : f32 = u_xlat1.y;
  u_xlat28 = (x_451 * x_453);
  let x_456 : f32 = u_xlat1.x;
  let x_458 : f32 = u_xlat1.x;
  let x_460 : f32 = u_xlat28;
  u_xlat28 = ((x_456 * x_458) + -(x_460));
  let x_465 : vec4<f32> = x_92.unity_SHC;
  let x_467 : f32 = u_xlat28;
  let x_470 : vec3<f32> = u_xlat6;
  let x_471 : vec3<f32> = ((vec3<f32>(x_465.x, x_465.y, x_465.z) * vec3<f32>(x_467, x_467, x_467)) + x_470);
  let x_472 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_471.x, x_471.y, x_471.z, x_472.w);
  let x_474 : vec4<f32> = u_xlat4;
  let x_476 : vec4<f32> = u_xlat5;
  let x_478 : vec3<f32> = (vec3<f32>(x_474.x, x_474.y, x_474.z) + vec3<f32>(x_476.x, x_476.y, x_476.z));
  let x_479 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_478.x, x_478.y, x_478.z, x_479.w);
  let x_481 : vec4<f32> = u_xlat4;
  let x_483 : vec3<f32> = max(vec3<f32>(x_481.x, x_481.y, x_481.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_484 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_483.x, x_483.y, x_483.z, x_484.w);
  let x_488 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_489 : vec2<f32> = vec2<f32>(x_488.x, x_488.y);
  let x_493 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_489.x, x_489.y));
  let x_494 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_493.x, x_493.y, x_494.z, x_494.w);
  let x_496 : vec4<f32> = u_xlat5;
  let x_498 : vec4<f32> = hlslcc_FragCoord;
  let x_500 : vec2<f32> = (vec2<f32>(x_496.x, x_496.y) * vec2<f32>(x_498.x, x_498.y));
  let x_501 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_500.x, x_500.y, x_501.z, x_501.w);
  let x_504 : f32 = u_xlat5.y;
  let x_507 : f32 = x_44.x_ScaleBiasRt.x;
  let x_510 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat28 = ((x_504 * x_507) + x_510);
  let x_512 : f32 = u_xlat28;
  u_xlat5.z = (-(x_512) + 1.0f);
  let x_521 : vec4<f32> = u_xlat5;
  let x_524 : f32 = x_44.x_GlobalMipBias.x;
  let x_525 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_521.x, x_521.z), x_524);
  u_xlat28 = x_525.x;
  let x_528 : f32 = u_xlat28;
  u_xlat30 = (x_528 + -1.0f);
  let x_531 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_532 : f32 = u_xlat30;
  u_xlat30 = ((x_531 * x_532) + 1.0f);
  let x_535 : f32 = u_xlat28;
  u_xlat28 = min(x_535, 1.0f);
  let x_538 : vec4<f32> = u_xlat3;
  let x_539 : vec2<f32> = vec2<f32>(x_538.x, x_538.y);
  let x_541 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_539.x, x_539.y, x_541);
  let x_553 : vec3<f32> = txVec0;
  let x_555 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_553.xy, x_553.z);
  u_xlat3.x = x_555;
  let x_558 : f32 = x_225.x_MainLightShadowParams.x;
  u_xlat12.x = (-(x_558) + 1.0f);
  let x_563 : f32 = u_xlat3.x;
  let x_565 : f32 = x_225.x_MainLightShadowParams.x;
  let x_568 : f32 = u_xlat12.x;
  u_xlat3.x = ((x_563 * x_565) + x_568);
  let x_573 : f32 = u_xlat3.z;
  u_xlatb12 = (0.0f >= x_573);
  let x_577 : f32 = u_xlat3.z;
  u_xlatb21 = (x_577 >= 1.0f);
  let x_579 : bool = u_xlatb21;
  let x_580 : bool = u_xlatb12;
  u_xlatb12 = (x_579 | x_580);
  let x_582 : bool = u_xlatb12;
  if (x_582) {
    x_583 = 1.0f;
  } else {
    let x_588 : f32 = u_xlat3.x;
    x_583 = x_588;
  }
  let x_589 : f32 = x_583;
  u_xlat3.x = x_589;
  let x_591 : vec3<f32> = vs_TEXCOORD1;
  let x_593 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_595 : vec3<f32> = (x_591 + -(x_593));
  let x_596 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_595.x, x_595.y, x_595.z, x_596.w);
  let x_598 : vec4<f32> = u_xlat5;
  let x_600 : vec4<f32> = u_xlat5;
  u_xlat12.x = dot(vec3<f32>(x_598.x, x_598.y, x_598.z), vec3<f32>(x_600.x, x_600.y, x_600.z));
  let x_605 : f32 = u_xlat12.x;
  let x_607 : f32 = x_225.x_MainLightShadowParams.z;
  let x_610 : f32 = x_225.x_MainLightShadowParams.w;
  u_xlat12.x = ((x_605 * x_607) + x_610);
  let x_614 : f32 = u_xlat12.x;
  u_xlat12.x = clamp(x_614, 0.0f, 1.0f);
  let x_619 : f32 = u_xlat3.x;
  u_xlat21 = (-(x_619) + 1.0f);
  let x_623 : f32 = u_xlat12.x;
  let x_624 : f32 = u_xlat21;
  let x_627 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_623 * x_624) + x_627);
  let x_630 : f32 = u_xlat30;
  let x_633 : vec4<f32> = x_44.x_MainLightColor;
  let x_635 : vec3<f32> = (vec3<f32>(x_630, x_630, x_630) * vec3<f32>(x_633.x, x_633.y, x_633.z));
  let x_636 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_635.x, x_635.y, x_635.z, x_636.w);
  let x_638 : f32 = u_xlat28;
  let x_640 : vec4<f32> = u_xlat4;
  let x_642 : vec3<f32> = (vec3<f32>(x_638, x_638, x_638) * vec3<f32>(x_640.x, x_640.y, x_640.z));
  let x_643 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_642.x, x_642.y, x_642.z, x_643.w);
  let x_646 : f32 = u_xlat3.x;
  let x_648 : f32 = x_92.unity_LightData.z;
  u_xlat28 = (x_646 * x_648);
  let x_650 : f32 = u_xlat28;
  let x_652 : vec4<f32> = u_xlat5;
  let x_654 : vec3<f32> = (vec3<f32>(x_650, x_650, x_650) * vec3<f32>(x_652.x, x_652.y, x_652.z));
  let x_655 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_654.x, x_654.y, x_654.z, x_655.w);
  let x_657 : vec4<f32> = u_xlat1;
  let x_660 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat28 = dot(vec3<f32>(x_657.x, x_657.y, x_657.z), vec3<f32>(x_660.x, x_660.y, x_660.z));
  let x_663 : f32 = u_xlat28;
  u_xlat28 = clamp(x_663, 0.0f, 1.0f);
  let x_665 : f32 = u_xlat28;
  let x_667 : vec4<f32> = u_xlat3;
  let x_669 : vec3<f32> = (vec3<f32>(x_665, x_665, x_665) * vec3<f32>(x_667.x, x_667.y, x_667.z));
  let x_670 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_669.x, x_669.y, x_669.z, x_670.w);
  let x_673 : f32 = u_xlat0.x;
  u_xlat28 = ((x_673 * 10.0f) + 1.0f);
  let x_677 : f32 = u_xlat28;
  u_xlat28 = exp2(x_677);
  let x_679 : vec3<f32> = u_xlat2;
  let x_680 : f32 = u_xlat29;
  let x_684 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat6 = ((x_679 * vec3<f32>(x_680, x_680, x_680)) + vec3<f32>(x_684.x, x_684.y, x_684.z));
  let x_688 : vec3<f32> = u_xlat6;
  let x_689 : vec3<f32> = u_xlat6;
  u_xlat31 = dot(x_688, x_689);
  let x_691 : f32 = u_xlat31;
  u_xlat31 = max(x_691, 1.17549435e-37f);
  let x_693 : f32 = u_xlat31;
  u_xlat31 = inverseSqrt(x_693);
  let x_695 : f32 = u_xlat31;
  let x_697 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_695, x_695, x_695) * x_697);
  let x_699 : vec4<f32> = u_xlat1;
  let x_701 : vec3<f32> = u_xlat6;
  u_xlat31 = dot(vec3<f32>(x_699.x, x_699.y, x_699.z), x_701);
  let x_703 : f32 = u_xlat31;
  u_xlat31 = clamp(x_703, 0.0f, 1.0f);
  let x_705 : f32 = u_xlat31;
  u_xlat31 = log2(x_705);
  let x_707 : f32 = u_xlat28;
  let x_708 : f32 = u_xlat31;
  u_xlat31 = (x_707 * x_708);
  let x_710 : f32 = u_xlat31;
  u_xlat31 = exp2(x_710);
  let x_712 : f32 = u_xlat31;
  let x_715 : vec4<f32> = x_56.x_SpecColor;
  u_xlat6 = (vec3<f32>(x_712, x_712, x_712) * vec3<f32>(x_715.x, x_715.y, x_715.z));
  let x_718 : vec4<f32> = u_xlat3;
  let x_720 : vec3<f32> = u_xlat6;
  let x_721 : vec3<f32> = (vec3<f32>(x_718.x, x_718.y, x_718.z) * x_720);
  let x_722 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_721.x, x_721.y, x_721.z, x_722.w);
  let x_724 : vec4<f32> = u_xlat5;
  let x_726 : vec4<f32> = u_xlat0;
  let x_729 : vec4<f32> = u_xlat3;
  let x_731 : vec3<f32> = ((vec3<f32>(x_724.x, x_724.y, x_724.z) * vec3<f32>(x_726.y, x_726.z, x_726.w)) + vec3<f32>(x_729.x, x_729.y, x_729.z));
  let x_732 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_731.x, x_731.y, x_731.z, x_732.w);
  let x_735 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_737 : f32 = x_92.unity_LightData.y;
  u_xlat31 = min(x_735, x_737);
  let x_740 : f32 = u_xlat31;
  u_xlatu31 = bitcast<u32>(i32(x_740));
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_752 : u32 = u_xlatu_loop_1;
    let x_753 : u32 = u_xlatu31;
    if ((x_752 < x_753)) {
    } else {
      break;
    }
    let x_756 : u32 = u_xlatu_loop_1;
    u_xlatu6 = (x_756 >> 2u);
    let x_759 : u32 = u_xlatu_loop_1;
    u_xlati15 = bitcast<i32>((x_759 & 3u));
    let x_762 : u32 = u_xlatu6;
    let x_765 : vec4<f32> = x_92.unity_LightIndices[bitcast<i32>(x_762)];
    let x_775 : i32 = u_xlati15;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_780 : vec4<u32> = indexable[x_775];
    u_xlat6.x = dot(x_765, bitcast<vec4<f32>>(x_780));
    let x_786 : f32 = u_xlat6.x;
    u_xlati6 = i32(x_786);
    let x_789 : vec3<f32> = vs_TEXCOORD1;
    let x_801 : i32 = u_xlati6;
    let x_803 : vec4<f32> = x_800.x_AdditionalLightsPosition[x_801];
    let x_806 : i32 = u_xlati6;
    let x_808 : vec4<f32> = x_800.x_AdditionalLightsPosition[x_806];
    u_xlat15 = ((-(x_789) * vec3<f32>(x_803.w, x_803.w, x_803.w)) + vec3<f32>(x_808.x, x_808.y, x_808.z));
    let x_812 : vec3<f32> = u_xlat15;
    let x_813 : vec3<f32> = u_xlat15;
    u_xlat7.x = dot(x_812, x_813);
    let x_817 : f32 = u_xlat7.x;
    u_xlat7.x = max(x_817, 6.10351562e-05f);
    let x_823 : f32 = u_xlat7.x;
    u_xlat16.x = inverseSqrt(x_823);
    let x_826 : vec3<f32> = u_xlat15;
    let x_827 : vec3<f32> = u_xlat16;
    u_xlat15 = (x_826 * vec3<f32>(x_827.x, x_827.x, x_827.x));
    let x_831 : f32 = u_xlat7.x;
    u_xlat16.x = (1.0f / x_831);
    let x_835 : f32 = u_xlat7.x;
    let x_836 : i32 = u_xlati6;
    let x_838 : f32 = x_800.x_AdditionalLightsAttenuation[x_836].x;
    u_xlat7.x = (x_835 * x_838);
    let x_842 : f32 = u_xlat7.x;
    let x_845 : f32 = u_xlat7.x;
    u_xlat7.x = ((-(x_842) * x_845) + 1.0f);
    let x_850 : f32 = u_xlat7.x;
    u_xlat7.x = max(x_850, 0.0f);
    let x_854 : f32 = u_xlat7.x;
    let x_856 : f32 = u_xlat7.x;
    u_xlat7.x = (x_854 * x_856);
    let x_860 : f32 = u_xlat7.x;
    let x_862 : f32 = u_xlat16.x;
    u_xlat7.x = (x_860 * x_862);
    let x_865 : i32 = u_xlati6;
    let x_867 : vec4<f32> = x_800.x_AdditionalLightsSpotDir[x_865];
    let x_869 : vec3<f32> = u_xlat15;
    u_xlat16.x = dot(vec3<f32>(x_867.x, x_867.y, x_867.z), x_869);
    let x_873 : f32 = u_xlat16.x;
    let x_874 : i32 = u_xlati6;
    let x_876 : f32 = x_800.x_AdditionalLightsAttenuation[x_874].z;
    let x_878 : i32 = u_xlati6;
    let x_880 : f32 = x_800.x_AdditionalLightsAttenuation[x_878].w;
    u_xlat16.x = ((x_873 * x_876) + x_880);
    let x_884 : f32 = u_xlat16.x;
    u_xlat16.x = clamp(x_884, 0.0f, 1.0f);
    let x_888 : f32 = u_xlat16.x;
    let x_890 : f32 = u_xlat16.x;
    u_xlat16.x = (x_888 * x_890);
    let x_894 : f32 = u_xlat16.x;
    let x_896 : f32 = u_xlat7.x;
    u_xlat7.x = (x_894 * x_896);
    let x_899 : f32 = u_xlat30;
    let x_901 : i32 = u_xlati6;
    let x_903 : vec4<f32> = x_800.x_AdditionalLightsColor[x_901];
    u_xlat16 = (vec3<f32>(x_899, x_899, x_899) * vec3<f32>(x_903.x, x_903.y, x_903.z));
    let x_906 : vec3<f32> = u_xlat7;
    let x_908 : vec3<f32> = u_xlat16;
    u_xlat7 = (vec3<f32>(x_906.x, x_906.x, x_906.x) * x_908);
    let x_910 : vec4<f32> = u_xlat1;
    let x_912 : vec3<f32> = u_xlat15;
    u_xlat6.x = dot(vec3<f32>(x_910.x, x_910.y, x_910.z), x_912);
    let x_916 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_916, 0.0f, 1.0f);
    let x_920 : vec3<f32> = u_xlat6;
    let x_922 : vec3<f32> = u_xlat7;
    u_xlat8 = (vec3<f32>(x_920.x, x_920.x, x_920.x) * x_922);
    let x_924 : vec3<f32> = u_xlat2;
    let x_925 : f32 = u_xlat29;
    let x_928 : vec3<f32> = u_xlat15;
    u_xlat6 = ((x_924 * vec3<f32>(x_925, x_925, x_925)) + x_928);
    let x_931 : vec3<f32> = u_xlat6;
    let x_932 : vec3<f32> = u_xlat6;
    u_xlat33 = dot(x_931, x_932);
    let x_934 : f32 = u_xlat33;
    u_xlat33 = max(x_934, 1.17549435e-37f);
    let x_936 : f32 = u_xlat33;
    u_xlat33 = inverseSqrt(x_936);
    let x_938 : f32 = u_xlat33;
    let x_940 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_938, x_938, x_938) * x_940);
    let x_942 : vec4<f32> = u_xlat1;
    let x_944 : vec3<f32> = u_xlat6;
    u_xlat6.x = dot(vec3<f32>(x_942.x, x_942.y, x_942.z), x_944);
    let x_948 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_948, 0.0f, 1.0f);
    let x_952 : f32 = u_xlat6.x;
    u_xlat6.x = log2(x_952);
    let x_955 : f32 = u_xlat28;
    let x_957 : f32 = u_xlat6.x;
    u_xlat6.x = (x_955 * x_957);
    let x_961 : f32 = u_xlat6.x;
    u_xlat6.x = exp2(x_961);
    let x_964 : vec3<f32> = u_xlat6;
    let x_967 : vec4<f32> = x_56.x_SpecColor;
    u_xlat6 = (vec3<f32>(x_964.x, x_964.x, x_964.x) * vec3<f32>(x_967.x, x_967.y, x_967.z));
    let x_970 : vec3<f32> = u_xlat6;
    let x_971 : vec3<f32> = u_xlat7;
    u_xlat6 = (x_970 * x_971);
    let x_973 : vec3<f32> = u_xlat8;
    let x_974 : vec4<f32> = u_xlat0;
    let x_977 : vec3<f32> = u_xlat6;
    u_xlat6 = ((x_973 * vec3<f32>(x_974.y, x_974.z, x_974.w)) + x_977);
    let x_979 : vec4<f32> = u_xlat5;
    let x_981 : vec3<f32> = u_xlat6;
    let x_982 : vec3<f32> = (vec3<f32>(x_979.x, x_979.y, x_979.z) + x_981);
    let x_983 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_982.x, x_982.y, x_982.z, x_983.w);

    continuing {
      let x_985 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_985 + bitcast<u32>(1i));
    }
  }
  let x_988 : vec4<f32> = u_xlat4;
  let x_990 : vec4<f32> = u_xlat0;
  let x_993 : vec4<f32> = u_xlat3;
  u_xlat9 = ((vec3<f32>(x_988.x, x_988.y, x_988.z) * vec3<f32>(x_990.y, x_990.z, x_990.w)) + vec3<f32>(x_993.x, x_993.y, x_993.z));
  let x_998 : vec4<f32> = u_xlat5;
  let x_1000 : vec3<f32> = u_xlat9;
  let x_1001 : vec3<f32> = (vec3<f32>(x_998.x, x_998.y, x_998.z) + x_1000);
  let x_1002 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1001.x, x_1001.y, x_1001.z, x_1002.w);
  let x_1006 : f32 = x_56.x_Surface;
  u_xlatb9 = (x_1006 == 1.0f);
  let x_1008 : bool = u_xlatb9;
  if (x_1008) {
    let x_1013 : f32 = u_xlat0.x;
    x_1009 = x_1013;
  } else {
    x_1009 = 1.0f;
  }
  let x_1015 : f32 = x_1009;
  SV_Target0.w = x_1015;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  main_1();
  return main_out(SV_Target0);
}

