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

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(2) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MetallicTex : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_135 : UnityPerDraw;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(3) var<uniform> x_367 : MainLightShadows;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_769 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat12 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat23 : vec2<f32>;
  var u_xlat34 : f32;
  var u_xlat35 : f32;
  var u_xlat33 : f32;
  var u_xlat36 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat15 : vec3<f32>;
  var u_xlat26 : f32;
  var u_xlatb26 : bool;
  var u_xlatb37 : bool;
  var x_394 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat37 : f32;
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
  let x_59 : vec4<f32> = vs_TEXCOORD0;
  let x_62 : f32 = x_44.x_GlobalMipBias.x;
  let x_63 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_59.x, x_59.y), x_62);
  u_xlat1.x = x_63.x;
  let x_69 : vec4<f32> = vs_TEXCOORD3;
  let x_71 : vec4<f32> = vs_TEXCOORD3;
  u_xlat12 = dot(vec3<f32>(x_69.x, x_69.y, x_69.z), vec3<f32>(x_71.x, x_71.y, x_71.z));
  let x_74 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_74);
  let x_77 : f32 = u_xlat12;
  let x_79 : vec4<f32> = vs_TEXCOORD3;
  let x_81 : vec3<f32> = (vec3<f32>(x_77, x_77, x_77) * vec3<f32>(x_79.x, x_79.y, x_79.z));
  let x_82 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_81.x, x_81.y, x_81.z, x_82.w);
  let x_88 : f32 = vs_TEXCOORD7.y;
  let x_92 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat12 = (x_88 * x_92);
  let x_96 : f32 = x_44.unity_MatrixV[0i].z;
  let x_98 : f32 = vs_TEXCOORD7.x;
  let x_100 : f32 = u_xlat12;
  u_xlat12 = ((x_96 * x_98) + x_100);
  let x_104 : f32 = x_44.unity_MatrixV[2i].z;
  let x_106 : f32 = vs_TEXCOORD7.z;
  let x_108 : f32 = u_xlat12;
  u_xlat12 = ((x_104 * x_106) + x_108);
  let x_110 : f32 = u_xlat12;
  let x_113 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat12 = (x_110 + x_113);
  let x_115 : f32 = u_xlat12;
  let x_119 : f32 = x_44.x_ProjectionParams.y;
  u_xlat12 = (-(x_115) + -(x_119));
  let x_122 : f32 = u_xlat12;
  u_xlat12 = max(x_122, 0.0f);
  let x_125 : f32 = u_xlat12;
  let x_128 : f32 = x_44.unity_FogParams.x;
  u_xlat12 = (x_125 * x_128);
  u_xlat2.w = 1.0f;
  let x_139 : vec4<f32> = x_135.unity_SHAr;
  let x_140 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_139, x_140);
  let x_145 : vec4<f32> = x_135.unity_SHAg;
  let x_146 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_145, x_146);
  let x_151 : vec4<f32> = x_135.unity_SHAb;
  let x_152 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_151, x_152);
  let x_156 : vec4<f32> = u_xlat2;
  let x_158 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_156.y, x_156.z, x_156.z, x_156.x) * vec4<f32>(x_158.x, x_158.y, x_158.z, x_158.z));
  let x_164 : vec4<f32> = x_135.unity_SHBr;
  let x_165 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_164, x_165);
  let x_170 : vec4<f32> = x_135.unity_SHBg;
  let x_171 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_170, x_171);
  let x_176 : vec4<f32> = x_135.unity_SHBb;
  let x_177 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_176, x_177);
  let x_183 : f32 = u_xlat2.y;
  let x_185 : f32 = u_xlat2.y;
  u_xlat23.x = (x_183 * x_185);
  let x_189 : f32 = u_xlat2.x;
  let x_191 : f32 = u_xlat2.x;
  let x_194 : f32 = u_xlat23.x;
  u_xlat23.x = ((x_189 * x_191) + -(x_194));
  let x_200 : vec4<f32> = x_135.unity_SHC;
  let x_202 : vec2<f32> = u_xlat23;
  let x_205 : vec3<f32> = u_xlat5;
  let x_206 : vec3<f32> = ((vec3<f32>(x_200.x, x_200.y, x_200.z) * vec3<f32>(x_202.x, x_202.x, x_202.x)) + x_205);
  let x_207 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_206.x, x_206.y, x_206.z, x_207.w);
  let x_209 : vec3<f32> = u_xlat3;
  let x_210 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_209 + vec3<f32>(x_210.x, x_210.y, x_210.z));
  let x_213 : vec3<f32> = u_xlat3;
  u_xlat3 = max(x_213, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_218 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_219 : vec2<f32> = vec2<f32>(x_218.x, x_218.y);
  u_xlat23 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_219.x, x_219.y));
  let x_224 : vec2<f32> = u_xlat23;
  let x_225 : vec4<f32> = hlslcc_FragCoord;
  let x_227 : vec2<f32> = (x_224 * vec2<f32>(x_225.x, x_225.y));
  let x_228 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_227.x, x_227.y, x_228.z, x_228.w);
  let x_231 : f32 = u_xlat4.y;
  let x_234 : f32 = x_44.x_ScaleBiasRt.x;
  let x_237 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat23.x = ((x_231 * x_234) + x_237);
  let x_241 : f32 = u_xlat23.x;
  u_xlat4.z = (-(x_241) + 1.0f);
  let x_246 : f32 = u_xlat1.x;
  u_xlat23.x = ((-(x_246) * 0.959999979f) + 0.959999979f);
  let x_254 : f32 = u_xlat23.x;
  u_xlat34 = (-(x_254) + 1.0f);
  let x_257 : vec4<f32> = u_xlat0;
  let x_259 : vec2<f32> = u_xlat23;
  u_xlat5 = (vec3<f32>(x_257.x, x_257.y, x_257.z) * vec3<f32>(x_259.x, x_259.x, x_259.x));
  let x_262 : vec4<f32> = u_xlat0;
  let x_266 : vec3<f32> = (vec3<f32>(x_262.x, x_262.y, x_262.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_267 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_266.x, x_266.y, x_266.z, x_267.w);
  let x_269 : vec3<f32> = u_xlat1;
  let x_271 : vec4<f32> = u_xlat0;
  let x_276 : vec3<f32> = ((vec3<f32>(x_269.x, x_269.x, x_269.x) * vec3<f32>(x_271.x, x_271.y, x_271.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_277 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_276.x, x_276.y, x_276.z, x_277.w);
  let x_280 : f32 = u_xlat0.w;
  u_xlat1.x = (-(x_280) + 1.0f);
  let x_285 : f32 = u_xlat1.x;
  let x_287 : f32 = u_xlat1.x;
  u_xlat23.x = (x_285 * x_287);
  let x_291 : f32 = u_xlat23.x;
  u_xlat23.x = max(x_291, 0.0078125f);
  let x_297 : f32 = u_xlat23.x;
  let x_299 : f32 = u_xlat23.x;
  u_xlat35 = (x_297 * x_299);
  let x_303 : f32 = u_xlat0.w;
  let x_304 : f32 = u_xlat34;
  u_xlat33 = (x_303 + x_304);
  let x_306 : f32 = u_xlat33;
  u_xlat33 = clamp(x_306, 0.0f, 1.0f);
  let x_309 : f32 = u_xlat23.x;
  u_xlat34 = ((x_309 * 4.0f) + 2.0f);
  let x_320 : vec4<f32> = u_xlat4;
  let x_323 : f32 = x_44.x_GlobalMipBias.x;
  let x_324 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_320.x, x_320.z), x_323);
  u_xlat36 = x_324.x;
  let x_326 : f32 = u_xlat36;
  u_xlat4.x = (x_326 + -1.0f);
  let x_332 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_334 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_332 * x_334) + 1.0f);
  let x_338 : f32 = u_xlat36;
  u_xlat36 = min(x_338, 1.0f);
  let x_342 : vec4<f32> = vs_TEXCOORD8;
  let x_343 : vec2<f32> = vec2<f32>(x_342.x, x_342.y);
  let x_345 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_343.x, x_343.y, x_345);
  let x_358 : vec3<f32> = txVec0;
  let x_360 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_358.xy, x_358.z);
  u_xlat15.x = x_360;
  let x_369 : f32 = x_367.x_MainLightShadowParams.x;
  u_xlat26 = (-(x_369) + 1.0f);
  let x_373 : f32 = u_xlat15.x;
  let x_375 : f32 = x_367.x_MainLightShadowParams.x;
  let x_377 : f32 = u_xlat26;
  u_xlat15.x = ((x_373 * x_375) + x_377);
  let x_384 : f32 = vs_TEXCOORD8.z;
  u_xlatb26 = (0.0f >= x_384);
  let x_388 : f32 = vs_TEXCOORD8.z;
  u_xlatb37 = (x_388 >= 1.0f);
  let x_390 : bool = u_xlatb37;
  let x_391 : bool = u_xlatb26;
  u_xlatb26 = (x_390 | x_391);
  let x_393 : bool = u_xlatb26;
  if (x_393) {
    x_394 = 1.0f;
  } else {
    let x_399 : f32 = u_xlat15.x;
    x_394 = x_399;
  }
  let x_400 : f32 = x_394;
  u_xlat15.x = x_400;
  let x_403 : vec3<f32> = vs_TEXCOORD7;
  let x_407 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat6 = (x_403 + -(x_407));
  let x_410 : vec3<f32> = u_xlat6;
  let x_411 : vec3<f32> = u_xlat6;
  u_xlat26 = dot(x_410, x_411);
  let x_413 : f32 = u_xlat26;
  let x_415 : f32 = x_367.x_MainLightShadowParams.z;
  let x_418 : f32 = x_367.x_MainLightShadowParams.w;
  u_xlat26 = ((x_413 * x_415) + x_418);
  let x_420 : f32 = u_xlat26;
  u_xlat26 = clamp(x_420, 0.0f, 1.0f);
  let x_424 : f32 = u_xlat15.x;
  u_xlat37 = (-(x_424) + 1.0f);
  let x_427 : f32 = u_xlat26;
  let x_428 : f32 = u_xlat37;
  let x_431 : f32 = u_xlat15.x;
  u_xlat15.x = ((x_427 * x_428) + x_431);
  let x_434 : vec4<f32> = u_xlat4;
  let x_437 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat6 = (vec3<f32>(x_434.x, x_434.x, x_434.x) * vec3<f32>(x_437.x, x_437.y, x_437.z));
  let x_442 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_442;
  let x_446 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_446;
  let x_450 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_450;
  let x_452 : vec3<f32> = u_xlat7;
  let x_454 : vec4<f32> = u_xlat2;
  u_xlat26 = dot(-(x_452), vec3<f32>(x_454.x, x_454.y, x_454.z));
  let x_457 : f32 = u_xlat26;
  let x_458 : f32 = u_xlat26;
  u_xlat26 = (x_457 + x_458);
  let x_461 : vec4<f32> = u_xlat2;
  let x_463 : f32 = u_xlat26;
  let x_467 : vec3<f32> = u_xlat7;
  let x_469 : vec3<f32> = ((vec3<f32>(x_461.x, x_461.y, x_461.z) * -(vec3<f32>(x_463, x_463, x_463))) + -(x_467));
  let x_470 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_469.x, x_469.y, x_469.z, x_470.w);
  let x_472 : vec4<f32> = u_xlat2;
  let x_474 : vec3<f32> = u_xlat7;
  u_xlat26 = dot(vec3<f32>(x_472.x, x_472.y, x_472.z), x_474);
  let x_476 : f32 = u_xlat26;
  u_xlat26 = clamp(x_476, 0.0f, 1.0f);
  let x_478 : f32 = u_xlat26;
  u_xlat26 = (-(x_478) + 1.0f);
  let x_481 : f32 = u_xlat26;
  let x_482 : f32 = u_xlat26;
  u_xlat26 = (x_481 * x_482);
  let x_484 : f32 = u_xlat26;
  let x_485 : f32 = u_xlat26;
  u_xlat26 = (x_484 * x_485);
  let x_488 : f32 = u_xlat1.x;
  u_xlat37 = ((-(x_488) * 0.699999988f) + 1.700000048f);
  let x_495 : f32 = u_xlat1.x;
  let x_496 : f32 = u_xlat37;
  u_xlat1.x = (x_495 * x_496);
  let x_500 : f32 = u_xlat1.x;
  u_xlat1.x = (x_500 * 6.0f);
  let x_512 : vec4<f32> = u_xlat8;
  let x_515 : f32 = u_xlat1.x;
  let x_516 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_512.x, x_512.y, x_512.z), x_515);
  u_xlat8 = x_516;
  let x_518 : f32 = u_xlat8.w;
  u_xlat1.x = (x_518 + -1.0f);
  let x_522 : f32 = x_135.unity_SpecCube0_HDR.w;
  let x_524 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_522 * x_524) + 1.0f);
  let x_529 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_529, 0.0f);
  let x_533 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_533);
  let x_537 : f32 = u_xlat1.x;
  let x_539 : f32 = x_135.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_537 * x_539);
  let x_543 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_543);
  let x_547 : f32 = u_xlat1.x;
  let x_549 : f32 = x_135.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_547 * x_549);
  let x_552 : vec4<f32> = u_xlat8;
  let x_554 : vec3<f32> = u_xlat1;
  let x_556 : vec3<f32> = (vec3<f32>(x_552.x, x_552.y, x_552.z) * vec3<f32>(x_554.x, x_554.x, x_554.x));
  let x_557 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_556.x, x_556.y, x_556.z, x_557.w);
  let x_559 : vec2<f32> = u_xlat23;
  let x_561 : vec2<f32> = u_xlat23;
  let x_565 : vec2<f32> = ((vec2<f32>(x_559.x, x_559.x) * vec2<f32>(x_561.x, x_561.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_566 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_565.x, x_566.y, x_565.y);
  let x_569 : f32 = u_xlat1.z;
  u_xlat23.x = (1.0f / x_569);
  let x_573 : vec4<f32> = u_xlat0;
  let x_576 : f32 = u_xlat33;
  u_xlat9 = (-(vec3<f32>(x_573.x, x_573.y, x_573.z)) + vec3<f32>(x_576, x_576, x_576));
  let x_579 : f32 = u_xlat26;
  let x_581 : vec3<f32> = u_xlat9;
  let x_583 : vec4<f32> = u_xlat0;
  u_xlat9 = ((vec3<f32>(x_579, x_579, x_579) * x_581) + vec3<f32>(x_583.x, x_583.y, x_583.z));
  let x_586 : vec2<f32> = u_xlat23;
  let x_588 : vec3<f32> = u_xlat9;
  u_xlat9 = (vec3<f32>(x_586.x, x_586.x, x_586.x) * x_588);
  let x_590 : vec4<f32> = u_xlat8;
  let x_592 : vec3<f32> = u_xlat9;
  let x_593 : vec3<f32> = (vec3<f32>(x_590.x, x_590.y, x_590.z) * x_592);
  let x_594 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_593.x, x_593.y, x_593.z, x_594.w);
  let x_596 : vec3<f32> = u_xlat3;
  let x_597 : vec3<f32> = u_xlat5;
  let x_599 : vec4<f32> = u_xlat8;
  u_xlat3 = ((x_596 * x_597) + vec3<f32>(x_599.x, x_599.y, x_599.z));
  let x_603 : f32 = u_xlat15.x;
  let x_606 : f32 = x_135.unity_LightData.z;
  u_xlat33 = (x_603 * x_606);
  let x_608 : vec4<f32> = u_xlat2;
  let x_611 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat23.x = dot(vec3<f32>(x_608.x, x_608.y, x_608.z), vec3<f32>(x_611.x, x_611.y, x_611.z));
  let x_616 : f32 = u_xlat23.x;
  u_xlat23.x = clamp(x_616, 0.0f, 1.0f);
  let x_619 : f32 = u_xlat33;
  let x_621 : f32 = u_xlat23.x;
  u_xlat33 = (x_619 * x_621);
  let x_623 : f32 = u_xlat33;
  let x_625 : vec3<f32> = u_xlat6;
  u_xlat15 = (vec3<f32>(x_623, x_623, x_623) * x_625);
  let x_627 : vec3<f32> = u_xlat7;
  let x_629 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat6 = (x_627 + vec3<f32>(x_629.x, x_629.y, x_629.z));
  let x_632 : vec3<f32> = u_xlat6;
  let x_633 : vec3<f32> = u_xlat6;
  u_xlat33 = dot(x_632, x_633);
  let x_635 : f32 = u_xlat33;
  u_xlat33 = max(x_635, 1.17549435e-37f);
  let x_638 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_638);
  let x_640 : f32 = u_xlat33;
  let x_642 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_640, x_640, x_640) * x_642);
  let x_644 : vec4<f32> = u_xlat2;
  let x_646 : vec3<f32> = u_xlat6;
  u_xlat33 = dot(vec3<f32>(x_644.x, x_644.y, x_644.z), x_646);
  let x_648 : f32 = u_xlat33;
  u_xlat33 = clamp(x_648, 0.0f, 1.0f);
  let x_651 : vec4<f32> = x_44.x_MainLightPosition;
  let x_653 : vec3<f32> = u_xlat6;
  u_xlat23.x = dot(vec3<f32>(x_651.x, x_651.y, x_651.z), x_653);
  let x_657 : f32 = u_xlat23.x;
  u_xlat23.x = clamp(x_657, 0.0f, 1.0f);
  let x_660 : f32 = u_xlat33;
  let x_661 : f32 = u_xlat33;
  u_xlat33 = (x_660 * x_661);
  let x_663 : f32 = u_xlat33;
  let x_665 : f32 = u_xlat1.x;
  u_xlat33 = ((x_663 * x_665) + 1.000010014f);
  let x_670 : f32 = u_xlat23.x;
  let x_672 : f32 = u_xlat23.x;
  u_xlat23.x = (x_670 * x_672);
  let x_675 : f32 = u_xlat33;
  let x_676 : f32 = u_xlat33;
  u_xlat33 = (x_675 * x_676);
  let x_679 : f32 = u_xlat23.x;
  u_xlat23.x = max(x_679, 0.100000001f);
  let x_683 : f32 = u_xlat33;
  let x_685 : f32 = u_xlat23.x;
  u_xlat33 = (x_683 * x_685);
  let x_687 : f32 = u_xlat34;
  let x_688 : f32 = u_xlat33;
  u_xlat33 = (x_687 * x_688);
  let x_690 : f32 = u_xlat35;
  let x_691 : f32 = u_xlat33;
  u_xlat33 = (x_690 / x_691);
  let x_693 : vec4<f32> = u_xlat0;
  let x_695 : f32 = u_xlat33;
  let x_698 : vec3<f32> = u_xlat5;
  u_xlat6 = ((vec3<f32>(x_693.x, x_693.y, x_693.z) * vec3<f32>(x_695, x_695, x_695)) + x_698);
  let x_700 : vec3<f32> = u_xlat15;
  let x_701 : vec3<f32> = u_xlat6;
  u_xlat15 = (x_700 * x_701);
  let x_704 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_706 : f32 = x_135.unity_LightData.y;
  u_xlat33 = min(x_704, x_706);
  let x_710 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_710));
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_722 : u32 = u_xlatu_loop_1;
    let x_723 : u32 = u_xlatu33;
    if ((x_722 < x_723)) {
    } else {
      break;
    }
    let x_726 : u32 = u_xlatu_loop_1;
    u_xlatu38 = (x_726 >> 2u);
    let x_730 : u32 = u_xlatu_loop_1;
    u_xlati39 = bitcast<i32>((x_730 & 3u));
    let x_734 : u32 = u_xlatu38;
    let x_737 : vec4<f32> = x_135.unity_LightIndices[bitcast<i32>(x_734)];
    let x_747 : i32 = u_xlati39;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_752 : vec4<u32> = indexable[x_747];
    u_xlat38 = dot(x_737, bitcast<vec4<f32>>(x_752));
    let x_756 : f32 = u_xlat38;
    u_xlati38 = i32(x_756);
    let x_758 : vec3<f32> = vs_TEXCOORD7;
    let x_770 : i32 = u_xlati38;
    let x_772 : vec4<f32> = x_769.x_AdditionalLightsPosition[x_770];
    let x_775 : i32 = u_xlati38;
    let x_777 : vec4<f32> = x_769.x_AdditionalLightsPosition[x_775];
    let x_779 : vec3<f32> = ((-(x_758) * vec3<f32>(x_772.w, x_772.w, x_772.w)) + vec3<f32>(x_777.x, x_777.y, x_777.z));
    let x_780 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_779.x, x_779.y, x_779.z, x_780.w);
    let x_783 : vec4<f32> = u_xlat8;
    let x_785 : vec4<f32> = u_xlat8;
    u_xlat39 = dot(vec3<f32>(x_783.x, x_783.y, x_783.z), vec3<f32>(x_785.x, x_785.y, x_785.z));
    let x_788 : f32 = u_xlat39;
    u_xlat39 = max(x_788, 6.10351562e-05f);
    let x_792 : f32 = u_xlat39;
    u_xlat40 = inverseSqrt(x_792);
    let x_794 : f32 = u_xlat40;
    let x_796 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_794, x_794, x_794) * vec3<f32>(x_796.x, x_796.y, x_796.z));
    let x_800 : f32 = u_xlat39;
    u_xlat41 = (1.0f / x_800);
    let x_802 : f32 = u_xlat39;
    let x_803 : i32 = u_xlati38;
    let x_805 : f32 = x_769.x_AdditionalLightsAttenuation[x_803].x;
    u_xlat39 = (x_802 * x_805);
    let x_807 : f32 = u_xlat39;
    let x_809 : f32 = u_xlat39;
    u_xlat39 = ((-(x_807) * x_809) + 1.0f);
    let x_812 : f32 = u_xlat39;
    u_xlat39 = max(x_812, 0.0f);
    let x_814 : f32 = u_xlat39;
    let x_815 : f32 = u_xlat39;
    u_xlat39 = (x_814 * x_815);
    let x_817 : f32 = u_xlat39;
    let x_818 : f32 = u_xlat41;
    u_xlat39 = (x_817 * x_818);
    let x_820 : i32 = u_xlati38;
    let x_822 : vec4<f32> = x_769.x_AdditionalLightsSpotDir[x_820];
    let x_824 : vec3<f32> = u_xlat9;
    u_xlat41 = dot(vec3<f32>(x_822.x, x_822.y, x_822.z), x_824);
    let x_826 : f32 = u_xlat41;
    let x_827 : i32 = u_xlati38;
    let x_829 : f32 = x_769.x_AdditionalLightsAttenuation[x_827].z;
    let x_831 : i32 = u_xlati38;
    let x_833 : f32 = x_769.x_AdditionalLightsAttenuation[x_831].w;
    u_xlat41 = ((x_826 * x_829) + x_833);
    let x_835 : f32 = u_xlat41;
    u_xlat41 = clamp(x_835, 0.0f, 1.0f);
    let x_837 : f32 = u_xlat41;
    let x_838 : f32 = u_xlat41;
    u_xlat41 = (x_837 * x_838);
    let x_840 : f32 = u_xlat39;
    let x_841 : f32 = u_xlat41;
    u_xlat39 = (x_840 * x_841);
    let x_844 : vec4<f32> = u_xlat4;
    let x_846 : i32 = u_xlati38;
    let x_848 : vec4<f32> = x_769.x_AdditionalLightsColor[x_846];
    u_xlat10 = (vec3<f32>(x_844.x, x_844.x, x_844.x) * vec3<f32>(x_848.x, x_848.y, x_848.z));
    let x_851 : vec4<f32> = u_xlat2;
    let x_853 : vec3<f32> = u_xlat9;
    u_xlat38 = dot(vec3<f32>(x_851.x, x_851.y, x_851.z), x_853);
    let x_855 : f32 = u_xlat38;
    u_xlat38 = clamp(x_855, 0.0f, 1.0f);
    let x_857 : f32 = u_xlat38;
    let x_858 : f32 = u_xlat39;
    u_xlat38 = (x_857 * x_858);
    let x_860 : f32 = u_xlat38;
    let x_862 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_860, x_860, x_860) * x_862);
    let x_864 : vec4<f32> = u_xlat8;
    let x_866 : f32 = u_xlat40;
    let x_869 : vec3<f32> = u_xlat7;
    let x_870 : vec3<f32> = ((vec3<f32>(x_864.x, x_864.y, x_864.z) * vec3<f32>(x_866, x_866, x_866)) + x_869);
    let x_871 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_870.x, x_870.y, x_870.z, x_871.w);
    let x_873 : vec4<f32> = u_xlat8;
    let x_875 : vec4<f32> = u_xlat8;
    u_xlat38 = dot(vec3<f32>(x_873.x, x_873.y, x_873.z), vec3<f32>(x_875.x, x_875.y, x_875.z));
    let x_878 : f32 = u_xlat38;
    u_xlat38 = max(x_878, 1.17549435e-37f);
    let x_880 : f32 = u_xlat38;
    u_xlat38 = inverseSqrt(x_880);
    let x_882 : f32 = u_xlat38;
    let x_884 : vec4<f32> = u_xlat8;
    let x_886 : vec3<f32> = (vec3<f32>(x_882, x_882, x_882) * vec3<f32>(x_884.x, x_884.y, x_884.z));
    let x_887 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_886.x, x_886.y, x_886.z, x_887.w);
    let x_889 : vec4<f32> = u_xlat2;
    let x_891 : vec4<f32> = u_xlat8;
    u_xlat38 = dot(vec3<f32>(x_889.x, x_889.y, x_889.z), vec3<f32>(x_891.x, x_891.y, x_891.z));
    let x_894 : f32 = u_xlat38;
    u_xlat38 = clamp(x_894, 0.0f, 1.0f);
    let x_896 : vec3<f32> = u_xlat9;
    let x_897 : vec4<f32> = u_xlat8;
    u_xlat39 = dot(x_896, vec3<f32>(x_897.x, x_897.y, x_897.z));
    let x_900 : f32 = u_xlat39;
    u_xlat39 = clamp(x_900, 0.0f, 1.0f);
    let x_902 : f32 = u_xlat38;
    let x_903 : f32 = u_xlat38;
    u_xlat38 = (x_902 * x_903);
    let x_905 : f32 = u_xlat38;
    let x_907 : f32 = u_xlat1.x;
    u_xlat38 = ((x_905 * x_907) + 1.000010014f);
    let x_910 : f32 = u_xlat39;
    let x_911 : f32 = u_xlat39;
    u_xlat39 = (x_910 * x_911);
    let x_913 : f32 = u_xlat38;
    let x_914 : f32 = u_xlat38;
    u_xlat38 = (x_913 * x_914);
    let x_916 : f32 = u_xlat39;
    u_xlat39 = max(x_916, 0.100000001f);
    let x_918 : f32 = u_xlat38;
    let x_919 : f32 = u_xlat39;
    u_xlat38 = (x_918 * x_919);
    let x_921 : f32 = u_xlat34;
    let x_922 : f32 = u_xlat38;
    u_xlat38 = (x_921 * x_922);
    let x_924 : f32 = u_xlat35;
    let x_925 : f32 = u_xlat38;
    u_xlat38 = (x_924 / x_925);
    let x_927 : vec4<f32> = u_xlat0;
    let x_929 : f32 = u_xlat38;
    let x_932 : vec3<f32> = u_xlat5;
    let x_933 : vec3<f32> = ((vec3<f32>(x_927.x, x_927.y, x_927.z) * vec3<f32>(x_929, x_929, x_929)) + x_932);
    let x_934 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_933.x, x_933.y, x_933.z, x_934.w);
    let x_936 : vec4<f32> = u_xlat8;
    let x_938 : vec3<f32> = u_xlat10;
    let x_940 : vec3<f32> = u_xlat6;
    u_xlat6 = ((vec3<f32>(x_936.x, x_936.y, x_936.z) * x_938) + x_940);

    continuing {
      let x_942 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_942 + bitcast<u32>(1i));
    }
  }
  let x_944 : vec3<f32> = u_xlat3;
  let x_945 : f32 = u_xlat36;
  let x_948 : vec3<f32> = u_xlat15;
  let x_949 : vec3<f32> = ((x_944 * vec3<f32>(x_945, x_945, x_945)) + x_948);
  let x_950 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_949.x, x_949.y, x_949.z, x_950.w);
  let x_952 : vec3<f32> = u_xlat6;
  let x_953 : vec4<f32> = u_xlat0;
  let x_955 : vec3<f32> = (x_952 + vec3<f32>(x_953.x, x_953.y, x_953.z));
  let x_956 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_955.x, x_955.y, x_955.z, x_956.w);
  let x_958 : f32 = u_xlat12;
  let x_959 : f32 = u_xlat12;
  u_xlat33 = (x_958 * -(x_959));
  let x_962 : f32 = u_xlat33;
  u_xlat33 = exp2(x_962);
  let x_964 : vec4<f32> = u_xlat0;
  let x_968 : vec4<f32> = x_44.unity_FogColor;
  let x_971 : vec3<f32> = (vec3<f32>(x_964.x, x_964.y, x_964.z) + -(vec3<f32>(x_968.x, x_968.y, x_968.z)));
  let x_972 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_971.x, x_971.y, x_971.z, x_972.w);
  let x_976 : f32 = u_xlat33;
  let x_978 : vec4<f32> = u_xlat0;
  let x_982 : vec4<f32> = x_44.unity_FogColor;
  let x_984 : vec3<f32> = ((vec3<f32>(x_976, x_976, x_976) * vec3<f32>(x_978.x, x_978.y, x_978.z)) + vec3<f32>(x_982.x, x_982.y, x_982.z));
  let x_985 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_984.x, x_984.y, x_984.z, x_985.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD3_param : vec4<f32>, @location(4) vs_TEXCOORD7_param : vec3<f32>, @location(5) vs_TEXCOORD8_param : vec4<f32>, @location(2) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD5_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  main_1();
  return main_out(SV_Target0);
}

