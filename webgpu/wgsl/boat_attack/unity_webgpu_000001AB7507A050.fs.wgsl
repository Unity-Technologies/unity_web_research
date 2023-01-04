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
  x_ScaleBiasRt : vec4<f32>,
}

struct UnityPerMaterial {
  x_MainTex_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Shininess : f32,
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

@group(0) @binding(5) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_64 : UnityPerMaterial;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_170 : MainLightShadows;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(4) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(2) var<uniform> x_529 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_631 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_70 : f32;
  var u_xlat8 : f32;
  var u_xlat16 : f32;
  var u_xlat24 : f32;
  var u_xlatb16 : bool;
  var x_119 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlatb3 : vec4<bool>;
  var u_xlatu0 : u32;
  var u_xlati0 : i32;
  var txVec0 : vec3<f32>;
  var u_xlat25 : f32;
  var u_xlat26 : f32;
  var u_xlatb26 : bool;
  var u_xlatu_loop_1 : u32;
  var u_xlatu26 : u32;
  var u_xlati27 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati26 : i32;
  var u_xlat27 : f32;
  var u_xlat28 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_40 : vec2<f32> = vs_TEXCOORD0;
  let x_49 : f32 = x_43.x_GlobalMipBias.x;
  let x_50 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, x_40, x_49);
  u_xlat0 = x_50;
  let x_52 : vec4<f32> = u_xlat0;
  let x_54 : vec4<f32> = vs_TEXCOORD7;
  u_xlat1 = (x_52 * x_54);
  let x_61 : f32 = u_xlat1.w;
  let x_67 : f32 = x_64.x_Cutoff;
  u_xlatb0 = (x_61 >= x_67);
  let x_69 : bool = u_xlatb0;
  if (x_69) {
    let x_74 : f32 = u_xlat1.w;
    x_70 = x_74;
  } else {
    x_70 = 0.0f;
  }
  let x_77 : f32 = x_70;
  u_xlat0.x = x_77;
  let x_81 : f32 = u_xlat0.w;
  let x_83 : f32 = vs_TEXCOORD7.w;
  let x_86 : f32 = x_64.x_Cutoff;
  u_xlat8 = ((x_81 * x_83) + -(x_86));
  let x_91 : f32 = u_xlat1.w;
  u_xlat16 = dpdxCoarse(x_91);
  let x_95 : f32 = u_xlat1.w;
  u_xlat24 = dpdyCoarse(x_95);
  let x_97 : f32 = u_xlat24;
  let x_99 : f32 = u_xlat16;
  u_xlat16 = (abs(x_97) + abs(x_99));
  let x_102 : f32 = u_xlat16;
  u_xlat16 = max(x_102, 0.0001f);
  let x_105 : f32 = u_xlat8;
  let x_106 : f32 = u_xlat16;
  u_xlat8 = (x_105 / x_106);
  let x_108 : f32 = u_xlat8;
  u_xlat8 = (x_108 + 0.5f);
  let x_111 : f32 = u_xlat8;
  u_xlat8 = clamp(x_111, 0.0f, 1.0f);
  let x_116 : f32 = x_43.x_AlphaToMaskAvailable;
  u_xlatb16 = !((x_116 == 0.0f));
  let x_118 : bool = u_xlatb16;
  if (x_118) {
    let x_122 : f32 = u_xlat8;
    x_119 = x_122;
  } else {
    let x_125 : f32 = u_xlat0.x;
    x_119 = x_125;
  }
  let x_126 : f32 = x_119;
  u_xlat0.x = x_126;
  let x_129 : f32 = u_xlat0.x;
  u_xlat0.x = (x_129 + -0.0001f);
  let x_134 : f32 = u_xlat0.x;
  u_xlatb0 = (x_134 < 0.0f);
  let x_136 : bool = u_xlatb0;
  if (((select(0i, 1i, x_136) * -1i) != 0i)) {
    discard;
  }
  let x_147 : vec3<f32> = vs_TEXCOORD3;
  let x_148 : vec3<f32> = vs_TEXCOORD3;
  u_xlat0.x = dot(x_147, x_148);
  let x_152 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_152);
  let x_157 : vec4<f32> = u_xlat0;
  let x_159 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2 = (vec3<f32>(x_157.x, x_157.x, x_157.x) * x_159);
  let x_163 : vec4<f32> = vs_TEXCOORD2;
  let x_173 : vec4<f32> = x_170.x_CascadeShadowSplitSpheres0;
  let x_176 : vec3<f32> = (vec3<f32>(x_163.x, x_163.y, x_163.z) + -(vec3<f32>(x_173.x, x_173.y, x_173.z)));
  let x_177 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_176.x, x_176.y, x_176.z, x_177.w);
  let x_180 : vec4<f32> = vs_TEXCOORD2;
  let x_183 : vec4<f32> = x_170.x_CascadeShadowSplitSpheres1;
  let x_186 : vec3<f32> = (vec3<f32>(x_180.x, x_180.y, x_180.z) + -(vec3<f32>(x_183.x, x_183.y, x_183.z)));
  let x_187 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_186.x, x_186.y, x_186.z, x_187.w);
  let x_190 : vec4<f32> = vs_TEXCOORD2;
  let x_194 : vec4<f32> = x_170.x_CascadeShadowSplitSpheres2;
  u_xlat5 = (vec3<f32>(x_190.x, x_190.y, x_190.z) + -(vec3<f32>(x_194.x, x_194.y, x_194.z)));
  let x_199 : vec4<f32> = vs_TEXCOORD2;
  let x_202 : vec4<f32> = x_170.x_CascadeShadowSplitSpheres3;
  u_xlat6 = (vec3<f32>(x_199.x, x_199.y, x_199.z) + -(vec3<f32>(x_202.x, x_202.y, x_202.z)));
  let x_206 : vec4<f32> = u_xlat3;
  let x_208 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_206.x, x_206.y, x_206.z), vec3<f32>(x_208.x, x_208.y, x_208.z));
  let x_212 : vec4<f32> = u_xlat4;
  let x_214 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_212.x, x_212.y, x_212.z), vec3<f32>(x_214.x, x_214.y, x_214.z));
  let x_219 : vec3<f32> = u_xlat5;
  let x_220 : vec3<f32> = u_xlat5;
  u_xlat3.z = dot(x_219, x_220);
  let x_224 : vec3<f32> = u_xlat6;
  let x_225 : vec3<f32> = u_xlat6;
  u_xlat3.w = dot(x_224, x_225);
  let x_231 : vec4<f32> = u_xlat3;
  let x_234 : vec4<f32> = x_170.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_231 < x_234);
  let x_237 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_237);
  let x_241 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_241);
  let x_245 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_245);
  let x_249 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_249);
  let x_253 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_253);
  let x_259 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_259);
  let x_263 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_263);
  let x_266 : vec4<f32> = u_xlat3;
  let x_268 : vec4<f32> = u_xlat4;
  let x_270 : vec3<f32> = (vec3<f32>(x_266.x, x_266.y, x_266.z) + vec3<f32>(x_268.y, x_268.z, x_268.w));
  let x_271 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_270.x, x_270.y, x_270.z, x_271.w);
  let x_273 : vec4<f32> = u_xlat3;
  let x_276 : vec3<f32> = max(vec3<f32>(x_273.x, x_273.y, x_273.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_277 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_277.x, x_276.x, x_276.y, x_276.z);
  let x_279 : vec4<f32> = u_xlat4;
  u_xlat0.x = dot(x_279, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_287 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_287) + 4.0f);
  let x_294 : f32 = u_xlat0.x;
  u_xlatu0 = u32(x_294);
  let x_298 : u32 = u_xlatu0;
  u_xlati0 = (bitcast<i32>(x_298) << bitcast<u32>(2i));
  let x_301 : vec4<f32> = vs_TEXCOORD2;
  let x_303 : i32 = u_xlati0;
  let x_306 : i32 = u_xlati0;
  let x_310 : vec4<f32> = x_170.x_MainLightWorldToShadow[((x_303 + 1i) / 4i)][((x_306 + 1i) % 4i)];
  let x_312 : vec3<f32> = (vec3<f32>(x_301.y, x_301.y, x_301.y) * vec3<f32>(x_310.x, x_310.y, x_310.z));
  let x_313 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_312.x, x_312.y, x_312.z, x_313.w);
  let x_315 : i32 = u_xlati0;
  let x_317 : i32 = u_xlati0;
  let x_320 : vec4<f32> = x_170.x_MainLightWorldToShadow[(x_315 / 4i)][(x_317 % 4i)];
  let x_322 : vec4<f32> = vs_TEXCOORD2;
  let x_325 : vec4<f32> = u_xlat3;
  let x_327 : vec3<f32> = ((vec3<f32>(x_320.x, x_320.y, x_320.z) * vec3<f32>(x_322.x, x_322.x, x_322.x)) + vec3<f32>(x_325.x, x_325.y, x_325.z));
  let x_328 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_327.x, x_327.y, x_327.z, x_328.w);
  let x_330 : i32 = u_xlati0;
  let x_333 : i32 = u_xlati0;
  let x_337 : vec4<f32> = x_170.x_MainLightWorldToShadow[((x_330 + 2i) / 4i)][((x_333 + 2i) % 4i)];
  let x_339 : vec4<f32> = vs_TEXCOORD2;
  let x_342 : vec4<f32> = u_xlat3;
  let x_344 : vec3<f32> = ((vec3<f32>(x_337.x, x_337.y, x_337.z) * vec3<f32>(x_339.z, x_339.z, x_339.z)) + vec3<f32>(x_342.x, x_342.y, x_342.z));
  let x_345 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_344.x, x_344.y, x_344.z, x_345.w);
  let x_347 : vec4<f32> = u_xlat3;
  let x_349 : i32 = u_xlati0;
  let x_352 : i32 = u_xlati0;
  let x_356 : vec4<f32> = x_170.x_MainLightWorldToShadow[((x_349 + 3i) / 4i)][((x_352 + 3i) % 4i)];
  let x_358 : vec3<f32> = (vec3<f32>(x_347.x, x_347.y, x_347.z) + vec3<f32>(x_356.x, x_356.y, x_356.z));
  let x_359 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_358.x, x_358.y, x_358.z, x_359.w);
  let x_367 : vec2<f32> = vs_TEXCOORD1;
  let x_369 : f32 = x_43.x_GlobalMipBias.x;
  let x_370 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_367, x_369);
  let x_371 : vec3<f32> = vec3<f32>(x_370.x, x_370.y, x_370.z);
  let x_372 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_371.x, x_371.y, x_371.z, x_372.w);
  let x_376 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_377 : vec2<f32> = vec2<f32>(x_376.x, x_376.y);
  let x_381 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_377.x, x_377.y));
  let x_382 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_381.x, x_382.y, x_382.z, x_381.y);
  let x_384 : vec4<f32> = u_xlat0;
  let x_386 : vec4<f32> = hlslcc_FragCoord;
  let x_388 : vec2<f32> = (vec2<f32>(x_384.x, x_384.w) * vec2<f32>(x_386.x, x_386.y));
  let x_389 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_388.x, x_388.y, x_389.z);
  let x_392 : f32 = u_xlat5.y;
  let x_395 : f32 = x_43.x_ScaleBiasRt.x;
  let x_398 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat0.x = ((x_392 * x_395) + x_398);
  let x_402 : f32 = u_xlat0.x;
  u_xlat5.z = (-(x_402) + 1.0f);
  let x_411 : vec3<f32> = u_xlat5;
  let x_414 : f32 = x_43.x_GlobalMipBias.x;
  let x_415 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_411.x, x_411.z), x_414);
  u_xlat0.x = x_415.x;
  let x_419 : f32 = u_xlat0.x;
  u_xlat24 = (x_419 + -1.0f);
  let x_422 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_423 : f32 = u_xlat24;
  u_xlat24 = ((x_422 * x_423) + 1.0f);
  let x_427 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_427, 1.0f);
  let x_431 : vec4<f32> = u_xlat3;
  let x_432 : vec2<f32> = vec2<f32>(x_431.x, x_431.y);
  let x_434 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_432.x, x_432.y, x_434);
  let x_447 : vec3<f32> = txVec0;
  let x_449 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_447.xy, x_447.z);
  u_xlat25 = x_449;
  let x_452 : f32 = x_170.x_MainLightShadowParams.x;
  u_xlat26 = (-(x_452) + 1.0f);
  let x_455 : f32 = u_xlat25;
  let x_457 : f32 = x_170.x_MainLightShadowParams.x;
  let x_459 : f32 = u_xlat26;
  u_xlat25 = ((x_455 * x_457) + x_459);
  let x_463 : f32 = u_xlat3.z;
  u_xlatb26 = (0.0f >= x_463);
  let x_466 : f32 = u_xlat3.z;
  u_xlatb3.x = (x_466 >= 1.0f);
  let x_469 : bool = u_xlatb26;
  let x_471 : bool = u_xlatb3.x;
  u_xlatb26 = (x_469 | x_471);
  let x_473 : bool = u_xlatb26;
  let x_474 : f32 = u_xlat25;
  u_xlat25 = select(x_474, 1.0f, x_473);
  let x_476 : vec4<f32> = vs_TEXCOORD2;
  let x_481 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_483 : vec3<f32> = (vec3<f32>(x_476.x, x_476.y, x_476.z) + -(x_481));
  let x_484 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_483.x, x_483.y, x_483.z, x_484.w);
  let x_486 : vec4<f32> = u_xlat3;
  let x_488 : vec4<f32> = u_xlat3;
  u_xlat26 = dot(vec3<f32>(x_486.x, x_486.y, x_486.z), vec3<f32>(x_488.x, x_488.y, x_488.z));
  let x_491 : f32 = u_xlat26;
  let x_493 : f32 = x_170.x_MainLightShadowParams.z;
  let x_496 : f32 = x_170.x_MainLightShadowParams.w;
  u_xlat26 = ((x_491 * x_493) + x_496);
  let x_498 : f32 = u_xlat26;
  u_xlat26 = clamp(x_498, 0.0f, 1.0f);
  let x_500 : f32 = u_xlat25;
  u_xlat3.x = (-(x_500) + 1.0f);
  let x_504 : f32 = u_xlat26;
  let x_506 : f32 = u_xlat3.x;
  let x_508 : f32 = u_xlat25;
  u_xlat25 = ((x_504 * x_506) + x_508);
  let x_510 : f32 = u_xlat24;
  let x_513 : vec4<f32> = x_43.x_MainLightColor;
  let x_515 : vec3<f32> = (vec3<f32>(x_510, x_510, x_510) * vec3<f32>(x_513.x, x_513.y, x_513.z));
  let x_516 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_515.x, x_515.y, x_515.z, x_516.w);
  let x_518 : vec4<f32> = u_xlat0;
  let x_520 : vec4<f32> = u_xlat4;
  let x_522 : vec3<f32> = (vec3<f32>(x_518.x, x_518.x, x_518.x) * vec3<f32>(x_520.x, x_520.y, x_520.z));
  let x_523 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_522.x, x_522.y, x_522.z, x_523.w);
  let x_525 : f32 = u_xlat25;
  let x_531 : f32 = x_529.unity_LightData.z;
  u_xlat0.x = (x_525 * x_531);
  let x_534 : vec4<f32> = u_xlat0;
  let x_536 : vec4<f32> = u_xlat3;
  let x_538 : vec3<f32> = (vec3<f32>(x_534.x, x_534.x, x_534.x) * vec3<f32>(x_536.x, x_536.y, x_536.z));
  let x_539 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_538.x, x_538.y, x_538.z, x_539.w);
  let x_541 : vec3<f32> = u_xlat2;
  let x_543 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat0.x = dot(x_541, vec3<f32>(x_543.x, x_543.y, x_543.z));
  let x_548 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_548, 0.0f, 1.0f);
  let x_551 : vec4<f32> = u_xlat0;
  let x_553 : vec4<f32> = u_xlat3;
  let x_555 : vec3<f32> = (vec3<f32>(x_551.x, x_551.x, x_551.x) * vec3<f32>(x_553.x, x_553.y, x_553.z));
  let x_556 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_555.x, x_555.y, x_555.z, x_556.w);
  let x_558 : vec4<f32> = u_xlat1;
  let x_560 : vec4<f32> = u_xlat3;
  let x_562 : vec3<f32> = (vec3<f32>(x_558.x, x_558.y, x_558.z) * vec3<f32>(x_560.x, x_560.y, x_560.z));
  let x_563 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_562.x, x_562.y, x_562.z, x_563.w);
  let x_567 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_569 : f32 = x_529.unity_LightData.y;
  u_xlat0.x = min(x_567, x_569);
  let x_573 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_573));
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_585 : u32 = u_xlatu_loop_1;
    let x_586 : u32 = u_xlatu0;
    if ((x_585 < x_586)) {
    } else {
      break;
    }
    let x_589 : u32 = u_xlatu_loop_1;
    u_xlatu26 = (x_589 >> 2u);
    let x_592 : u32 = u_xlatu_loop_1;
    u_xlati27 = bitcast<i32>((x_592 & 3u));
    let x_595 : u32 = u_xlatu26;
    let x_598 : vec4<f32> = x_529.unity_LightIndices[bitcast<i32>(x_595)];
    let x_608 : i32 = u_xlati27;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_613 : vec4<u32> = indexable[x_608];
    u_xlat26 = dot(x_598, bitcast<vec4<f32>>(x_613));
    let x_617 : f32 = u_xlat26;
    u_xlati26 = i32(x_617);
    let x_619 : vec4<f32> = vs_TEXCOORD2;
    let x_632 : i32 = u_xlati26;
    let x_634 : vec4<f32> = x_631.x_AdditionalLightsPosition[x_632];
    let x_637 : i32 = u_xlati26;
    let x_639 : vec4<f32> = x_631.x_AdditionalLightsPosition[x_637];
    u_xlat6 = ((-(vec3<f32>(x_619.x, x_619.y, x_619.z)) * vec3<f32>(x_634.w, x_634.w, x_634.w)) + vec3<f32>(x_639.x, x_639.y, x_639.z));
    let x_643 : vec3<f32> = u_xlat6;
    let x_644 : vec3<f32> = u_xlat6;
    u_xlat27 = dot(x_643, x_644);
    let x_646 : f32 = u_xlat27;
    u_xlat27 = max(x_646, 6.10351562e-05f);
    let x_650 : f32 = u_xlat27;
    u_xlat28 = inverseSqrt(x_650);
    let x_652 : f32 = u_xlat28;
    let x_654 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_652, x_652, x_652) * x_654);
    let x_656 : f32 = u_xlat27;
    u_xlat28 = (1.0f / x_656);
    let x_658 : f32 = u_xlat27;
    let x_659 : i32 = u_xlati26;
    let x_661 : f32 = x_631.x_AdditionalLightsAttenuation[x_659].x;
    u_xlat27 = (x_658 * x_661);
    let x_663 : f32 = u_xlat27;
    let x_665 : f32 = u_xlat27;
    u_xlat27 = ((-(x_663) * x_665) + 1.0f);
    let x_668 : f32 = u_xlat27;
    u_xlat27 = max(x_668, 0.0f);
    let x_670 : f32 = u_xlat27;
    let x_671 : f32 = u_xlat27;
    u_xlat27 = (x_670 * x_671);
    let x_673 : f32 = u_xlat27;
    let x_674 : f32 = u_xlat28;
    u_xlat27 = (x_673 * x_674);
    let x_676 : i32 = u_xlati26;
    let x_678 : vec4<f32> = x_631.x_AdditionalLightsSpotDir[x_676];
    let x_680 : vec3<f32> = u_xlat6;
    u_xlat28 = dot(vec3<f32>(x_678.x, x_678.y, x_678.z), x_680);
    let x_682 : f32 = u_xlat28;
    let x_683 : i32 = u_xlati26;
    let x_685 : f32 = x_631.x_AdditionalLightsAttenuation[x_683].z;
    let x_687 : i32 = u_xlati26;
    let x_689 : f32 = x_631.x_AdditionalLightsAttenuation[x_687].w;
    u_xlat28 = ((x_682 * x_685) + x_689);
    let x_691 : f32 = u_xlat28;
    u_xlat28 = clamp(x_691, 0.0f, 1.0f);
    let x_693 : f32 = u_xlat28;
    let x_694 : f32 = u_xlat28;
    u_xlat28 = (x_693 * x_694);
    let x_696 : f32 = u_xlat27;
    let x_697 : f32 = u_xlat28;
    u_xlat27 = (x_696 * x_697);
    let x_700 : f32 = u_xlat24;
    let x_702 : i32 = u_xlati26;
    let x_704 : vec4<f32> = x_631.x_AdditionalLightsColor[x_702];
    u_xlat7 = (vec3<f32>(x_700, x_700, x_700) * vec3<f32>(x_704.x, x_704.y, x_704.z));
    let x_707 : f32 = u_xlat27;
    let x_709 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_707, x_707, x_707) * x_709);
    let x_711 : vec3<f32> = u_xlat2;
    let x_712 : vec3<f32> = u_xlat6;
    u_xlat26 = dot(x_711, x_712);
    let x_714 : f32 = u_xlat26;
    u_xlat26 = clamp(x_714, 0.0f, 1.0f);
    let x_716 : f32 = u_xlat26;
    let x_718 : vec3<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_716, x_716, x_716) * x_718);
    let x_720 : vec3<f32> = u_xlat6;
    let x_721 : vec4<f32> = u_xlat1;
    let x_724 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_720 * vec3<f32>(x_721.x, x_721.y, x_721.z)) + x_724);

    continuing {
      let x_726 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_726 + bitcast<u32>(1i));
    }
  }
  let x_728 : vec4<f32> = u_xlat4;
  let x_730 : vec4<f32> = u_xlat1;
  let x_733 : vec4<f32> = u_xlat3;
  let x_735 : vec3<f32> = ((vec3<f32>(x_728.x, x_728.y, x_728.z) * vec3<f32>(x_730.x, x_730.y, x_730.z)) + vec3<f32>(x_733.x, x_733.y, x_733.z));
  let x_736 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_735.x, x_735.y, x_735.z, x_736.w);
  let x_740 : vec3<f32> = u_xlat5;
  let x_741 : vec4<f32> = u_xlat1;
  let x_743 : vec3<f32> = (x_740 + vec3<f32>(x_741.x, x_741.y, x_741.z));
  let x_744 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_743.x, x_743.y, x_743.z, x_744.w);
  let x_746 : bool = u_xlatb16;
  let x_747 : f32 = u_xlat8;
  SV_Target0.w = select(1.0f, x_747, x_746);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(4) vs_TEXCOORD7_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}

