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
  x_ScaleBiasRt : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
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

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(2) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MetallicTex : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_94 : MainLightShadows;

@group(1) @binding(2) var<uniform> x_329 : UnityPerDraw;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_946 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat12 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlatb3 : vec4<bool>;
  var u_xlatu12 : u32;
  var u_xlati12 : i32;
  var u_xlat35 : f32;
  var u_xlat14 : vec3<f32>;
  var u_xlat15 : f32;
  var u_xlat37 : f32;
  var u_xlat33 : f32;
  var u_xlat26 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat23 : f32;
  var u_xlatb23 : bool;
  var u_xlatb34 : bool;
  var x_563 : f32;
  var u_xlat34 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlatu33 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu38 : u32;
  var u_xlati39 : i32;
  var u_xlat38 : f32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati38 : i32;
  var u_xlat39 : f32;
  var u_xlat40 : f32;
  var u_xlat41 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_39 : vec4<f32> = vs_TEXCOORD0;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_39.x, x_39.y), x_50);
  u_xlat0 = x_51;
  let x_58 : vec4<f32> = vs_TEXCOORD0;
  let x_61 : f32 = x_44.x_GlobalMipBias.x;
  let x_62 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_58.x, x_58.y), x_61);
  u_xlat1.x = x_62.x;
  let x_69 : vec4<f32> = vs_TEXCOORD3;
  let x_71 : vec4<f32> = vs_TEXCOORD3;
  u_xlat12.x = dot(vec3<f32>(x_69.x, x_69.y, x_69.z), vec3<f32>(x_71.x, x_71.y, x_71.z));
  let x_76 : f32 = u_xlat12.x;
  u_xlat12.x = inverseSqrt(x_76);
  let x_80 : vec3<f32> = u_xlat12;
  let x_82 : vec4<f32> = vs_TEXCOORD3;
  let x_84 : vec3<f32> = (vec3<f32>(x_80.x, x_80.x, x_80.x) * vec3<f32>(x_82.x, x_82.y, x_82.z));
  let x_85 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_84.x, x_84.y, x_84.z, x_85.w);
  let x_89 : vec3<f32> = vs_TEXCOORD7;
  let x_97 : vec4<f32> = x_94.x_CascadeShadowSplitSpheres0;
  u_xlat12 = (x_89 + -(vec3<f32>(x_97.x, x_97.y, x_97.z)));
  let x_102 : vec3<f32> = vs_TEXCOORD7;
  let x_105 : vec4<f32> = x_94.x_CascadeShadowSplitSpheres1;
  u_xlat3 = (x_102 + -(vec3<f32>(x_105.x, x_105.y, x_105.z)));
  let x_110 : vec3<f32> = vs_TEXCOORD7;
  let x_113 : vec4<f32> = x_94.x_CascadeShadowSplitSpheres2;
  let x_116 : vec3<f32> = (x_110 + -(vec3<f32>(x_113.x, x_113.y, x_113.z)));
  let x_117 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_116.x, x_116.y, x_116.z, x_117.w);
  let x_120 : vec3<f32> = vs_TEXCOORD7;
  let x_123 : vec4<f32> = x_94.x_CascadeShadowSplitSpheres3;
  let x_126 : vec3<f32> = (x_120 + -(vec3<f32>(x_123.x, x_123.y, x_123.z)));
  let x_127 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_126.x, x_126.y, x_126.z, x_127.w);
  let x_130 : vec3<f32> = u_xlat12;
  let x_131 : vec3<f32> = u_xlat12;
  u_xlat6.x = dot(x_130, x_131);
  let x_134 : vec3<f32> = u_xlat3;
  let x_135 : vec3<f32> = u_xlat3;
  u_xlat6.y = dot(x_134, x_135);
  let x_139 : vec4<f32> = u_xlat4;
  let x_141 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(vec3<f32>(x_139.x, x_139.y, x_139.z), vec3<f32>(x_141.x, x_141.y, x_141.z));
  let x_146 : vec4<f32> = u_xlat5;
  let x_148 : vec4<f32> = u_xlat5;
  u_xlat6.w = dot(vec3<f32>(x_146.x, x_146.y, x_146.z), vec3<f32>(x_148.x, x_148.y, x_148.z));
  let x_156 : vec4<f32> = u_xlat6;
  let x_159 : vec4<f32> = x_94.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_156 < x_159);
  let x_163 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_163);
  let x_168 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_168);
  let x_172 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_172);
  let x_176 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_176);
  let x_180 : bool = u_xlatb3.x;
  u_xlat12.x = select(-0.0f, -1.0f, x_180);
  let x_186 : bool = u_xlatb3.y;
  u_xlat12.y = select(-0.0f, -1.0f, x_186);
  let x_190 : bool = u_xlatb3.z;
  u_xlat12.z = select(-0.0f, -1.0f, x_190);
  let x_193 : vec3<f32> = u_xlat12;
  let x_194 : vec4<f32> = u_xlat4;
  u_xlat12 = (x_193 + vec3<f32>(x_194.y, x_194.z, x_194.w));
  let x_197 : vec3<f32> = u_xlat12;
  let x_199 : vec3<f32> = max(x_197, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_200 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_200.x, x_199.x, x_199.y, x_199.z);
  let x_202 : vec4<f32> = u_xlat4;
  u_xlat12.x = dot(x_202, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_210 : f32 = u_xlat12.x;
  u_xlat12.x = (-(x_210) + 4.0f);
  let x_217 : f32 = u_xlat12.x;
  u_xlatu12 = u32(x_217);
  let x_221 : u32 = u_xlatu12;
  u_xlati12 = (bitcast<i32>(x_221) << bitcast<u32>(2i));
  let x_224 : vec3<f32> = vs_TEXCOORD7;
  let x_227 : i32 = u_xlati12;
  let x_230 : i32 = u_xlati12;
  let x_234 : vec4<f32> = x_94.x_MainLightWorldToShadow[((x_227 + 1i) / 4i)][((x_230 + 1i) % 4i)];
  u_xlat3 = (vec3<f32>(x_224.y, x_224.y, x_224.y) * vec3<f32>(x_234.x, x_234.y, x_234.z));
  let x_237 : i32 = u_xlati12;
  let x_239 : i32 = u_xlati12;
  let x_242 : vec4<f32> = x_94.x_MainLightWorldToShadow[(x_237 / 4i)][(x_239 % 4i)];
  let x_244 : vec3<f32> = vs_TEXCOORD7;
  let x_247 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_242.x, x_242.y, x_242.z) * vec3<f32>(x_244.x, x_244.x, x_244.x)) + x_247);
  let x_249 : i32 = u_xlati12;
  let x_252 : i32 = u_xlati12;
  let x_256 : vec4<f32> = x_94.x_MainLightWorldToShadow[((x_249 + 2i) / 4i)][((x_252 + 2i) % 4i)];
  let x_258 : vec3<f32> = vs_TEXCOORD7;
  let x_261 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_256.x, x_256.y, x_256.z) * vec3<f32>(x_258.z, x_258.z, x_258.z)) + x_261);
  let x_263 : vec3<f32> = u_xlat3;
  let x_264 : i32 = u_xlati12;
  let x_267 : i32 = u_xlati12;
  let x_271 : vec4<f32> = x_94.x_MainLightWorldToShadow[((x_264 + 3i) / 4i)][((x_267 + 3i) % 4i)];
  u_xlat12 = (x_263 + vec3<f32>(x_271.x, x_271.y, x_271.z));
  let x_275 : f32 = vs_TEXCOORD7.y;
  let x_278 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat3.x = (x_275 * x_278);
  let x_282 : f32 = x_44.unity_MatrixV[0i].z;
  let x_284 : f32 = vs_TEXCOORD7.x;
  let x_287 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_282 * x_284) + x_287);
  let x_291 : f32 = x_44.unity_MatrixV[2i].z;
  let x_293 : f32 = vs_TEXCOORD7.z;
  let x_296 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_291 * x_293) + x_296);
  let x_300 : f32 = u_xlat3.x;
  let x_302 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat3.x = (x_300 + x_302);
  let x_306 : f32 = u_xlat3.x;
  let x_310 : f32 = x_44.x_ProjectionParams.y;
  u_xlat3.x = (-(x_306) + -(x_310));
  let x_315 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_315, 0.0f);
  let x_319 : f32 = u_xlat3.x;
  let x_322 : f32 = x_44.unity_FogParams.x;
  u_xlat3.x = (x_319 * x_322);
  u_xlat2.w = 1.0f;
  let x_332 : vec4<f32> = x_329.unity_SHAr;
  let x_333 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_332, x_333);
  let x_338 : vec4<f32> = x_329.unity_SHAg;
  let x_339 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_338, x_339);
  let x_344 : vec4<f32> = x_329.unity_SHAb;
  let x_345 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_344, x_345);
  let x_348 : vec4<f32> = u_xlat2;
  let x_350 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_348.y, x_348.z, x_348.z, x_348.x) * vec4<f32>(x_350.x, x_350.y, x_350.z, x_350.z));
  let x_355 : vec4<f32> = x_329.unity_SHBr;
  let x_356 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_355, x_356);
  let x_361 : vec4<f32> = x_329.unity_SHBg;
  let x_362 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_361, x_362);
  let x_367 : vec4<f32> = x_329.unity_SHBb;
  let x_368 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_367, x_368);
  let x_373 : f32 = u_xlat2.y;
  let x_375 : f32 = u_xlat2.y;
  u_xlat35 = (x_373 * x_375);
  let x_378 : f32 = u_xlat2.x;
  let x_380 : f32 = u_xlat2.x;
  let x_382 : f32 = u_xlat35;
  u_xlat35 = ((x_378 * x_380) + -(x_382));
  let x_388 : vec4<f32> = x_329.unity_SHC;
  let x_390 : f32 = u_xlat35;
  let x_393 : vec4<f32> = u_xlat6;
  u_xlat14 = ((vec3<f32>(x_388.x, x_388.y, x_388.z) * vec3<f32>(x_390, x_390, x_390)) + vec3<f32>(x_393.x, x_393.y, x_393.z));
  let x_396 : vec3<f32> = u_xlat14;
  let x_397 : vec4<f32> = u_xlat4;
  u_xlat14 = (x_396 + vec3<f32>(x_397.x, x_397.y, x_397.z));
  let x_400 : vec3<f32> = u_xlat14;
  u_xlat14 = max(x_400, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_404 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_405 : vec2<f32> = vec2<f32>(x_404.x, x_404.y);
  let x_409 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_405.x, x_405.y));
  let x_410 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_409.x, x_409.y, x_410.z, x_410.w);
  let x_412 : vec4<f32> = u_xlat4;
  let x_414 : vec4<f32> = hlslcc_FragCoord;
  let x_416 : vec2<f32> = (vec2<f32>(x_412.x, x_412.y) * vec2<f32>(x_414.x, x_414.y));
  let x_417 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_416.x, x_416.y, x_417.z, x_417.w);
  let x_420 : f32 = u_xlat4.y;
  let x_423 : f32 = x_44.x_ScaleBiasRt.x;
  let x_426 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat35 = ((x_420 * x_423) + x_426);
  let x_428 : f32 = u_xlat35;
  u_xlat4.z = (-(x_428) + 1.0f);
  let x_433 : f32 = u_xlat1.x;
  u_xlat35 = ((-(x_433) * 0.959999979f) + 0.959999979f);
  let x_439 : f32 = u_xlat35;
  u_xlat15 = (-(x_439) + 1.0f);
  let x_442 : vec4<f32> = u_xlat0;
  let x_444 : f32 = u_xlat35;
  let x_446 : vec3<f32> = (vec3<f32>(x_442.x, x_442.y, x_442.z) * vec3<f32>(x_444, x_444, x_444));
  let x_447 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_446.x, x_446.y, x_446.z, x_447.w);
  let x_449 : vec4<f32> = u_xlat0;
  let x_453 : vec3<f32> = (vec3<f32>(x_449.x, x_449.y, x_449.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_454 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_453.x, x_453.y, x_453.z, x_454.w);
  let x_456 : vec4<f32> = u_xlat1;
  let x_458 : vec4<f32> = u_xlat0;
  let x_463 : vec3<f32> = ((vec3<f32>(x_456.x, x_456.x, x_456.x) * vec3<f32>(x_458.x, x_458.y, x_458.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_464 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_463.x, x_463.y, x_463.z, x_464.w);
  let x_467 : f32 = u_xlat0.w;
  u_xlat1.x = (-(x_467) + 1.0f);
  let x_472 : f32 = u_xlat1.x;
  let x_474 : f32 = u_xlat1.x;
  u_xlat35 = (x_472 * x_474);
  let x_476 : f32 = u_xlat35;
  u_xlat35 = max(x_476, 0.0078125f);
  let x_480 : f32 = u_xlat35;
  let x_481 : f32 = u_xlat35;
  u_xlat37 = (x_480 * x_481);
  let x_485 : f32 = u_xlat0.w;
  let x_486 : f32 = u_xlat15;
  u_xlat33 = (x_485 + x_486);
  let x_488 : f32 = u_xlat33;
  u_xlat33 = clamp(x_488, 0.0f, 1.0f);
  let x_490 : f32 = u_xlat35;
  u_xlat15 = ((x_490 * 4.0f) + 2.0f);
  let x_498 : vec4<f32> = u_xlat4;
  let x_501 : f32 = x_44.x_GlobalMipBias.x;
  let x_502 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_498.x, x_498.z), x_501);
  u_xlat4.x = x_502.x;
  let x_507 : f32 = u_xlat4.x;
  u_xlat26 = (x_507 + -1.0f);
  let x_510 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_511 : f32 = u_xlat26;
  u_xlat26 = ((x_510 * x_511) + 1.0f);
  let x_515 : f32 = u_xlat4.x;
  u_xlat4.x = min(x_515, 1.0f);
  let x_519 : vec3<f32> = u_xlat12;
  let x_520 : vec2<f32> = vec2<f32>(x_519.x, x_519.y);
  let x_522 : f32 = u_xlat12.z;
  txVec0 = vec3<f32>(x_520.x, x_520.y, x_522);
  let x_534 : vec3<f32> = txVec0;
  let x_536 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_534.xy, x_534.z);
  u_xlat12.x = x_536;
  let x_540 : f32 = x_94.x_MainLightShadowParams.x;
  u_xlat23 = (-(x_540) + 1.0f);
  let x_544 : f32 = u_xlat12.x;
  let x_546 : f32 = x_94.x_MainLightShadowParams.x;
  let x_548 : f32 = u_xlat23;
  u_xlat12.x = ((x_544 * x_546) + x_548);
  let x_553 : f32 = u_xlat12.z;
  u_xlatb23 = (0.0f >= x_553);
  let x_557 : f32 = u_xlat12.z;
  u_xlatb34 = (x_557 >= 1.0f);
  let x_559 : bool = u_xlatb34;
  let x_560 : bool = u_xlatb23;
  u_xlatb23 = (x_559 | x_560);
  let x_562 : bool = u_xlatb23;
  if (x_562) {
    x_563 = 1.0f;
  } else {
    let x_568 : f32 = u_xlat12.x;
    x_563 = x_568;
  }
  let x_569 : f32 = x_563;
  u_xlat12.x = x_569;
  let x_571 : vec3<f32> = vs_TEXCOORD7;
  let x_575 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_577 : vec3<f32> = (x_571 + -(x_575));
  let x_578 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_577.x, x_577.y, x_577.z, x_578.w);
  let x_580 : vec4<f32> = u_xlat6;
  let x_582 : vec4<f32> = u_xlat6;
  u_xlat23 = dot(vec3<f32>(x_580.x, x_580.y, x_580.z), vec3<f32>(x_582.x, x_582.y, x_582.z));
  let x_585 : f32 = u_xlat23;
  let x_587 : f32 = x_94.x_MainLightShadowParams.z;
  let x_590 : f32 = x_94.x_MainLightShadowParams.w;
  u_xlat23 = ((x_585 * x_587) + x_590);
  let x_592 : f32 = u_xlat23;
  u_xlat23 = clamp(x_592, 0.0f, 1.0f);
  let x_596 : f32 = u_xlat12.x;
  u_xlat34 = (-(x_596) + 1.0f);
  let x_599 : f32 = u_xlat23;
  let x_600 : f32 = u_xlat34;
  let x_603 : f32 = u_xlat12.x;
  u_xlat12.x = ((x_599 * x_600) + x_603);
  let x_606 : f32 = u_xlat26;
  let x_609 : vec4<f32> = x_44.x_MainLightColor;
  let x_611 : vec3<f32> = (vec3<f32>(x_606, x_606, x_606) * vec3<f32>(x_609.x, x_609.y, x_609.z));
  let x_612 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_611.x, x_611.y, x_611.z, x_612.w);
  let x_616 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_616;
  let x_620 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_620;
  let x_624 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_624;
  let x_626 : vec3<f32> = u_xlat7;
  let x_628 : vec4<f32> = u_xlat2;
  u_xlat23 = dot(-(x_626), vec3<f32>(x_628.x, x_628.y, x_628.z));
  let x_631 : f32 = u_xlat23;
  let x_632 : f32 = u_xlat23;
  u_xlat23 = (x_631 + x_632);
  let x_635 : vec4<f32> = u_xlat2;
  let x_637 : f32 = u_xlat23;
  let x_641 : vec3<f32> = u_xlat7;
  let x_643 : vec3<f32> = ((vec3<f32>(x_635.x, x_635.y, x_635.z) * -(vec3<f32>(x_637, x_637, x_637))) + -(x_641));
  let x_644 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_643.x, x_643.y, x_643.z, x_644.w);
  let x_646 : vec4<f32> = u_xlat2;
  let x_648 : vec3<f32> = u_xlat7;
  u_xlat23 = dot(vec3<f32>(x_646.x, x_646.y, x_646.z), x_648);
  let x_650 : f32 = u_xlat23;
  u_xlat23 = clamp(x_650, 0.0f, 1.0f);
  let x_652 : f32 = u_xlat23;
  u_xlat23 = (-(x_652) + 1.0f);
  let x_655 : f32 = u_xlat23;
  let x_656 : f32 = u_xlat23;
  u_xlat1.z = (x_655 * x_656);
  let x_660 : f32 = u_xlat1.x;
  u_xlat1.w = ((-(x_660) * 0.699999988f) + 1.700000048f);
  let x_667 : vec4<f32> = u_xlat1;
  let x_669 : vec4<f32> = u_xlat1;
  let x_671 : vec2<f32> = (vec2<f32>(x_667.w, x_667.z) * vec2<f32>(x_669.x, x_669.z));
  let x_672 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_671.x, x_672.y, x_671.y, x_672.w);
  let x_675 : f32 = u_xlat1.x;
  u_xlat1.x = (x_675 * 6.0f);
  let x_687 : vec4<f32> = u_xlat8;
  let x_690 : f32 = u_xlat1.x;
  let x_691 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_687.x, x_687.y, x_687.z), x_690);
  u_xlat8 = x_691;
  let x_693 : f32 = u_xlat8.w;
  u_xlat1.x = (x_693 + -1.0f);
  let x_697 : f32 = x_329.unity_SpecCube0_HDR.w;
  let x_699 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_697 * x_699) + 1.0f);
  let x_704 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_704, 0.0f);
  let x_708 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_708);
  let x_712 : f32 = u_xlat1.x;
  let x_714 : f32 = x_329.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_712 * x_714);
  let x_718 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_718);
  let x_722 : f32 = u_xlat1.x;
  let x_724 : f32 = x_329.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_722 * x_724);
  let x_727 : vec4<f32> = u_xlat8;
  let x_729 : vec4<f32> = u_xlat1;
  let x_731 : vec3<f32> = (vec3<f32>(x_727.x, x_727.y, x_727.z) * vec3<f32>(x_729.x, x_729.x, x_729.x));
  let x_732 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_731.x, x_731.y, x_731.z, x_732.w);
  let x_734 : f32 = u_xlat35;
  let x_736 : f32 = u_xlat35;
  let x_740 : vec2<f32> = ((vec2<f32>(x_734, x_734) * vec2<f32>(x_736, x_736)) + vec2<f32>(-1.0f, 1.0f));
  let x_741 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_740.x, x_741.y, x_741.z, x_740.y);
  let x_744 : f32 = u_xlat1.w;
  u_xlat34 = (1.0f / x_744);
  let x_747 : vec4<f32> = u_xlat0;
  let x_750 : f32 = u_xlat33;
  u_xlat9 = (-(vec3<f32>(x_747.x, x_747.y, x_747.z)) + vec3<f32>(x_750, x_750, x_750));
  let x_753 : vec4<f32> = u_xlat1;
  let x_755 : vec3<f32> = u_xlat9;
  let x_757 : vec4<f32> = u_xlat0;
  u_xlat9 = ((vec3<f32>(x_753.z, x_753.z, x_753.z) * x_755) + vec3<f32>(x_757.x, x_757.y, x_757.z));
  let x_760 : f32 = u_xlat34;
  let x_762 : vec3<f32> = u_xlat9;
  u_xlat9 = (vec3<f32>(x_760, x_760, x_760) * x_762);
  let x_764 : vec4<f32> = u_xlat8;
  let x_766 : vec3<f32> = u_xlat9;
  let x_767 : vec3<f32> = (vec3<f32>(x_764.x, x_764.y, x_764.z) * x_766);
  let x_768 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_767.x, x_767.y, x_767.z, x_768.w);
  let x_770 : vec3<f32> = u_xlat14;
  let x_771 : vec4<f32> = u_xlat5;
  let x_774 : vec4<f32> = u_xlat8;
  u_xlat14 = ((x_770 * vec3<f32>(x_771.x, x_771.y, x_771.z)) + vec3<f32>(x_774.x, x_774.y, x_774.z));
  let x_778 : f32 = u_xlat12.x;
  let x_780 : f32 = x_329.unity_LightData.z;
  u_xlat33 = (x_778 * x_780);
  let x_782 : vec4<f32> = u_xlat2;
  let x_785 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat12.x = dot(vec3<f32>(x_782.x, x_782.y, x_782.z), vec3<f32>(x_785.x, x_785.y, x_785.z));
  let x_790 : f32 = u_xlat12.x;
  u_xlat12.x = clamp(x_790, 0.0f, 1.0f);
  let x_793 : f32 = u_xlat33;
  let x_795 : f32 = u_xlat12.x;
  u_xlat33 = (x_793 * x_795);
  let x_797 : f32 = u_xlat33;
  let x_799 : vec4<f32> = u_xlat6;
  u_xlat12 = (vec3<f32>(x_797, x_797, x_797) * vec3<f32>(x_799.x, x_799.y, x_799.z));
  let x_802 : vec3<f32> = u_xlat7;
  let x_804 : vec4<f32> = x_44.x_MainLightPosition;
  let x_806 : vec3<f32> = (x_802 + vec3<f32>(x_804.x, x_804.y, x_804.z));
  let x_807 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_806.x, x_806.y, x_806.z, x_807.w);
  let x_809 : vec4<f32> = u_xlat6;
  let x_811 : vec4<f32> = u_xlat6;
  u_xlat33 = dot(vec3<f32>(x_809.x, x_809.y, x_809.z), vec3<f32>(x_811.x, x_811.y, x_811.z));
  let x_814 : f32 = u_xlat33;
  u_xlat33 = max(x_814, 1.17549435e-37f);
  let x_817 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_817);
  let x_819 : f32 = u_xlat33;
  let x_821 : vec4<f32> = u_xlat6;
  let x_823 : vec3<f32> = (vec3<f32>(x_819, x_819, x_819) * vec3<f32>(x_821.x, x_821.y, x_821.z));
  let x_824 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_823.x, x_823.y, x_823.z, x_824.w);
  let x_826 : vec4<f32> = u_xlat2;
  let x_828 : vec4<f32> = u_xlat6;
  u_xlat33 = dot(vec3<f32>(x_826.x, x_826.y, x_826.z), vec3<f32>(x_828.x, x_828.y, x_828.z));
  let x_831 : f32 = u_xlat33;
  u_xlat33 = clamp(x_831, 0.0f, 1.0f);
  let x_834 : vec4<f32> = x_44.x_MainLightPosition;
  let x_836 : vec4<f32> = u_xlat6;
  u_xlat35 = dot(vec3<f32>(x_834.x, x_834.y, x_834.z), vec3<f32>(x_836.x, x_836.y, x_836.z));
  let x_839 : f32 = u_xlat35;
  u_xlat35 = clamp(x_839, 0.0f, 1.0f);
  let x_841 : f32 = u_xlat33;
  let x_842 : f32 = u_xlat33;
  u_xlat33 = (x_841 * x_842);
  let x_844 : f32 = u_xlat33;
  let x_846 : f32 = u_xlat1.x;
  u_xlat33 = ((x_844 * x_846) + 1.000010014f);
  let x_850 : f32 = u_xlat35;
  let x_851 : f32 = u_xlat35;
  u_xlat35 = (x_850 * x_851);
  let x_853 : f32 = u_xlat33;
  let x_854 : f32 = u_xlat33;
  u_xlat33 = (x_853 * x_854);
  let x_856 : f32 = u_xlat35;
  u_xlat35 = max(x_856, 0.100000001f);
  let x_859 : f32 = u_xlat33;
  let x_860 : f32 = u_xlat35;
  u_xlat33 = (x_859 * x_860);
  let x_862 : f32 = u_xlat15;
  let x_863 : f32 = u_xlat33;
  u_xlat33 = (x_862 * x_863);
  let x_865 : f32 = u_xlat37;
  let x_866 : f32 = u_xlat33;
  u_xlat33 = (x_865 / x_866);
  let x_868 : vec4<f32> = u_xlat0;
  let x_870 : f32 = u_xlat33;
  let x_873 : vec4<f32> = u_xlat5;
  let x_875 : vec3<f32> = ((vec3<f32>(x_868.x, x_868.y, x_868.z) * vec3<f32>(x_870, x_870, x_870)) + vec3<f32>(x_873.x, x_873.y, x_873.z));
  let x_876 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_875.x, x_875.y, x_875.z, x_876.w);
  let x_878 : vec3<f32> = u_xlat12;
  let x_879 : vec4<f32> = u_xlat6;
  u_xlat12 = (x_878 * vec3<f32>(x_879.x, x_879.y, x_879.z));
  let x_883 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_885 : f32 = x_329.unity_LightData.y;
  u_xlat33 = min(x_883, x_885);
  let x_888 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_888));
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_900 : u32 = u_xlatu_loop_1;
    let x_901 : u32 = u_xlatu33;
    if ((x_900 < x_901)) {
    } else {
      break;
    }
    let x_904 : u32 = u_xlatu_loop_1;
    u_xlatu38 = (x_904 >> 2u);
    let x_907 : u32 = u_xlatu_loop_1;
    u_xlati39 = bitcast<i32>((x_907 & 3u));
    let x_911 : u32 = u_xlatu38;
    let x_914 : vec4<f32> = x_329.unity_LightIndices[bitcast<i32>(x_911)];
    let x_924 : i32 = u_xlati39;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_929 : vec4<u32> = indexable[x_924];
    u_xlat38 = dot(x_914, bitcast<vec4<f32>>(x_929));
    let x_933 : f32 = u_xlat38;
    u_xlati38 = i32(x_933);
    let x_935 : vec3<f32> = vs_TEXCOORD7;
    let x_947 : i32 = u_xlati38;
    let x_949 : vec4<f32> = x_946.x_AdditionalLightsPosition[x_947];
    let x_952 : i32 = u_xlati38;
    let x_954 : vec4<f32> = x_946.x_AdditionalLightsPosition[x_952];
    let x_956 : vec3<f32> = ((-(x_935) * vec3<f32>(x_949.w, x_949.w, x_949.w)) + vec3<f32>(x_954.x, x_954.y, x_954.z));
    let x_957 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_956.x, x_956.y, x_956.z, x_957.w);
    let x_960 : vec4<f32> = u_xlat8;
    let x_962 : vec4<f32> = u_xlat8;
    u_xlat39 = dot(vec3<f32>(x_960.x, x_960.y, x_960.z), vec3<f32>(x_962.x, x_962.y, x_962.z));
    let x_965 : f32 = u_xlat39;
    u_xlat39 = max(x_965, 6.10351562e-05f);
    let x_969 : f32 = u_xlat39;
    u_xlat40 = inverseSqrt(x_969);
    let x_971 : f32 = u_xlat40;
    let x_973 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_971, x_971, x_971) * vec3<f32>(x_973.x, x_973.y, x_973.z));
    let x_977 : f32 = u_xlat39;
    u_xlat41 = (1.0f / x_977);
    let x_979 : f32 = u_xlat39;
    let x_980 : i32 = u_xlati38;
    let x_982 : f32 = x_946.x_AdditionalLightsAttenuation[x_980].x;
    u_xlat39 = (x_979 * x_982);
    let x_984 : f32 = u_xlat39;
    let x_986 : f32 = u_xlat39;
    u_xlat39 = ((-(x_984) * x_986) + 1.0f);
    let x_989 : f32 = u_xlat39;
    u_xlat39 = max(x_989, 0.0f);
    let x_991 : f32 = u_xlat39;
    let x_992 : f32 = u_xlat39;
    u_xlat39 = (x_991 * x_992);
    let x_994 : f32 = u_xlat39;
    let x_995 : f32 = u_xlat41;
    u_xlat39 = (x_994 * x_995);
    let x_997 : i32 = u_xlati38;
    let x_999 : vec4<f32> = x_946.x_AdditionalLightsSpotDir[x_997];
    let x_1001 : vec3<f32> = u_xlat9;
    u_xlat41 = dot(vec3<f32>(x_999.x, x_999.y, x_999.z), x_1001);
    let x_1003 : f32 = u_xlat41;
    let x_1004 : i32 = u_xlati38;
    let x_1006 : f32 = x_946.x_AdditionalLightsAttenuation[x_1004].z;
    let x_1008 : i32 = u_xlati38;
    let x_1010 : f32 = x_946.x_AdditionalLightsAttenuation[x_1008].w;
    u_xlat41 = ((x_1003 * x_1006) + x_1010);
    let x_1012 : f32 = u_xlat41;
    u_xlat41 = clamp(x_1012, 0.0f, 1.0f);
    let x_1014 : f32 = u_xlat41;
    let x_1015 : f32 = u_xlat41;
    u_xlat41 = (x_1014 * x_1015);
    let x_1017 : f32 = u_xlat39;
    let x_1018 : f32 = u_xlat41;
    u_xlat39 = (x_1017 * x_1018);
    let x_1021 : f32 = u_xlat26;
    let x_1023 : i32 = u_xlati38;
    let x_1025 : vec4<f32> = x_946.x_AdditionalLightsColor[x_1023];
    u_xlat10 = (vec3<f32>(x_1021, x_1021, x_1021) * vec3<f32>(x_1025.x, x_1025.y, x_1025.z));
    let x_1028 : vec4<f32> = u_xlat2;
    let x_1030 : vec3<f32> = u_xlat9;
    u_xlat38 = dot(vec3<f32>(x_1028.x, x_1028.y, x_1028.z), x_1030);
    let x_1032 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1032, 0.0f, 1.0f);
    let x_1034 : f32 = u_xlat38;
    let x_1035 : f32 = u_xlat39;
    u_xlat38 = (x_1034 * x_1035);
    let x_1037 : f32 = u_xlat38;
    let x_1039 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1037, x_1037, x_1037) * x_1039);
    let x_1041 : vec4<f32> = u_xlat8;
    let x_1043 : f32 = u_xlat40;
    let x_1046 : vec3<f32> = u_xlat7;
    let x_1047 : vec3<f32> = ((vec3<f32>(x_1041.x, x_1041.y, x_1041.z) * vec3<f32>(x_1043, x_1043, x_1043)) + x_1046);
    let x_1048 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1047.x, x_1047.y, x_1047.z, x_1048.w);
    let x_1050 : vec4<f32> = u_xlat8;
    let x_1052 : vec4<f32> = u_xlat8;
    u_xlat38 = dot(vec3<f32>(x_1050.x, x_1050.y, x_1050.z), vec3<f32>(x_1052.x, x_1052.y, x_1052.z));
    let x_1055 : f32 = u_xlat38;
    u_xlat38 = max(x_1055, 1.17549435e-37f);
    let x_1057 : f32 = u_xlat38;
    u_xlat38 = inverseSqrt(x_1057);
    let x_1059 : f32 = u_xlat38;
    let x_1061 : vec4<f32> = u_xlat8;
    let x_1063 : vec3<f32> = (vec3<f32>(x_1059, x_1059, x_1059) * vec3<f32>(x_1061.x, x_1061.y, x_1061.z));
    let x_1064 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1063.x, x_1063.y, x_1063.z, x_1064.w);
    let x_1066 : vec4<f32> = u_xlat2;
    let x_1068 : vec4<f32> = u_xlat8;
    u_xlat38 = dot(vec3<f32>(x_1066.x, x_1066.y, x_1066.z), vec3<f32>(x_1068.x, x_1068.y, x_1068.z));
    let x_1071 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1071, 0.0f, 1.0f);
    let x_1073 : vec3<f32> = u_xlat9;
    let x_1074 : vec4<f32> = u_xlat8;
    u_xlat39 = dot(x_1073, vec3<f32>(x_1074.x, x_1074.y, x_1074.z));
    let x_1077 : f32 = u_xlat39;
    u_xlat39 = clamp(x_1077, 0.0f, 1.0f);
    let x_1079 : f32 = u_xlat38;
    let x_1080 : f32 = u_xlat38;
    u_xlat38 = (x_1079 * x_1080);
    let x_1082 : f32 = u_xlat38;
    let x_1084 : f32 = u_xlat1.x;
    u_xlat38 = ((x_1082 * x_1084) + 1.000010014f);
    let x_1087 : f32 = u_xlat39;
    let x_1088 : f32 = u_xlat39;
    u_xlat39 = (x_1087 * x_1088);
    let x_1090 : f32 = u_xlat38;
    let x_1091 : f32 = u_xlat38;
    u_xlat38 = (x_1090 * x_1091);
    let x_1093 : f32 = u_xlat39;
    u_xlat39 = max(x_1093, 0.100000001f);
    let x_1095 : f32 = u_xlat38;
    let x_1096 : f32 = u_xlat39;
    u_xlat38 = (x_1095 * x_1096);
    let x_1098 : f32 = u_xlat15;
    let x_1099 : f32 = u_xlat38;
    u_xlat38 = (x_1098 * x_1099);
    let x_1101 : f32 = u_xlat37;
    let x_1102 : f32 = u_xlat38;
    u_xlat38 = (x_1101 / x_1102);
    let x_1104 : vec4<f32> = u_xlat0;
    let x_1106 : f32 = u_xlat38;
    let x_1109 : vec4<f32> = u_xlat5;
    let x_1111 : vec3<f32> = ((vec3<f32>(x_1104.x, x_1104.y, x_1104.z) * vec3<f32>(x_1106, x_1106, x_1106)) + vec3<f32>(x_1109.x, x_1109.y, x_1109.z));
    let x_1112 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1111.x, x_1111.y, x_1111.z, x_1112.w);
    let x_1114 : vec4<f32> = u_xlat8;
    let x_1116 : vec3<f32> = u_xlat10;
    let x_1118 : vec4<f32> = u_xlat6;
    let x_1120 : vec3<f32> = ((vec3<f32>(x_1114.x, x_1114.y, x_1114.z) * x_1116) + vec3<f32>(x_1118.x, x_1118.y, x_1118.z));
    let x_1121 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1120.x, x_1120.y, x_1120.z, x_1121.w);

    continuing {
      let x_1123 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1123 + bitcast<u32>(1i));
    }
  }
  let x_1125 : vec3<f32> = u_xlat14;
  let x_1126 : vec4<f32> = u_xlat4;
  let x_1129 : vec3<f32> = u_xlat12;
  let x_1130 : vec3<f32> = ((x_1125 * vec3<f32>(x_1126.x, x_1126.x, x_1126.x)) + x_1129);
  let x_1131 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1130.x, x_1130.y, x_1130.z, x_1131.w);
  let x_1133 : vec4<f32> = u_xlat6;
  let x_1135 : vec4<f32> = u_xlat0;
  let x_1137 : vec3<f32> = (vec3<f32>(x_1133.x, x_1133.y, x_1133.z) + vec3<f32>(x_1135.x, x_1135.y, x_1135.z));
  let x_1138 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1137.x, x_1137.y, x_1137.z, x_1138.w);
  let x_1141 : f32 = u_xlat3.x;
  let x_1143 : f32 = u_xlat3.x;
  u_xlat33 = (x_1141 * -(x_1143));
  let x_1146 : f32 = u_xlat33;
  u_xlat33 = exp2(x_1146);
  let x_1148 : vec4<f32> = u_xlat0;
  let x_1152 : vec4<f32> = x_44.unity_FogColor;
  let x_1155 : vec3<f32> = (vec3<f32>(x_1148.x, x_1148.y, x_1148.z) + -(vec3<f32>(x_1152.x, x_1152.y, x_1152.z)));
  let x_1156 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1155.x, x_1155.y, x_1155.z, x_1156.w);
  let x_1160 : f32 = u_xlat33;
  let x_1162 : vec4<f32> = u_xlat0;
  let x_1166 : vec4<f32> = x_44.unity_FogColor;
  let x_1168 : vec3<f32> = ((vec3<f32>(x_1160, x_1160, x_1160) * vec3<f32>(x_1162.x, x_1162.y, x_1162.z)) + vec3<f32>(x_1166.x, x_1166.y, x_1166.z));
  let x_1169 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1168.x, x_1168.y, x_1168.z, x_1169.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD3_param : vec4<f32>, @location(4) vs_TEXCOORD7_param : vec3<f32>, @location(2) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD5_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  main_1();
  return main_out(SV_Target0);
}

