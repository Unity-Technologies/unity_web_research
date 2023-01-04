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

@group(1) @binding(2) var<uniform> x_567 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_665 : AdditionalLights;

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
  var u_xlat25 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat26 : f32;
  var u_xlatb11 : bool;
  var u_xlat11 : f32;
  var u_xlatu24 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu27 : u32;
  var u_xlati28 : i32;
  var u_xlat27 : f32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati27 : i32;
  var u_xlat28 : f32;
  var u_xlat29 : f32;
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
  let x_362 : f32 = hlslcc_FragCoord.w;
  let x_364 : f32 = hlslcc_FragCoord.z;
  u_xlat0.x = (x_362 * x_364);
  let x_368 : f32 = u_xlat0.x;
  let x_371 : f32 = x_43.x_ProjectionParams.y;
  u_xlat0.x = (x_368 / x_371);
  let x_375 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_375) + 1.0f);
  let x_380 : f32 = u_xlat0.x;
  let x_382 : f32 = x_43.x_ProjectionParams.z;
  u_xlat0.x = (x_380 * x_382);
  let x_386 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_386, 0.0f);
  let x_390 : f32 = u_xlat0.x;
  let x_393 : f32 = x_43.unity_FogParams.x;
  u_xlat0.x = (x_390 * x_393);
  let x_402 : vec2<f32> = vs_TEXCOORD1;
  let x_404 : f32 = x_43.x_GlobalMipBias.x;
  let x_405 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_402, x_404);
  let x_406 : vec3<f32> = vec3<f32>(x_405.x, x_405.y, x_405.z);
  let x_407 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_406.x, x_406.y, x_406.z, x_407.w);
  let x_411 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_412 : vec2<f32> = vec2<f32>(x_411.x, x_411.y);
  let x_416 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_412.x, x_412.y));
  let x_417 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_416.x, x_416.y, x_417.z);
  let x_419 : vec3<f32> = u_xlat5;
  let x_421 : vec4<f32> = hlslcc_FragCoord;
  let x_423 : vec2<f32> = (vec2<f32>(x_419.x, x_419.y) * vec2<f32>(x_421.x, x_421.y));
  let x_424 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_423.x, x_423.y, x_424.z);
  let x_427 : f32 = u_xlat5.y;
  let x_430 : f32 = x_43.x_ScaleBiasRt.x;
  let x_433 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat24 = ((x_427 * x_430) + x_433);
  let x_435 : f32 = u_xlat24;
  u_xlat5.z = (-(x_435) + 1.0f);
  let x_444 : vec3<f32> = u_xlat5;
  let x_447 : f32 = x_43.x_GlobalMipBias.x;
  let x_448 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_444.x, x_444.z), x_447);
  u_xlat24 = x_448.x;
  let x_451 : f32 = u_xlat24;
  u_xlat25 = (x_451 + -1.0f);
  let x_454 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_455 : f32 = u_xlat25;
  u_xlat25 = ((x_454 * x_455) + 1.0f);
  let x_458 : f32 = u_xlat24;
  u_xlat24 = min(x_458, 1.0f);
  let x_461 : vec4<f32> = u_xlat3;
  let x_462 : vec2<f32> = vec2<f32>(x_461.x, x_461.y);
  let x_464 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_462.x, x_462.y, x_464);
  let x_477 : vec3<f32> = txVec0;
  let x_479 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_477.xy, x_477.z);
  u_xlat26 = x_479;
  let x_481 : f32 = x_170.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_481) + 1.0f);
  let x_485 : f32 = u_xlat26;
  let x_487 : f32 = x_170.x_MainLightShadowParams.x;
  let x_490 : f32 = u_xlat3.x;
  u_xlat26 = ((x_485 * x_487) + x_490);
  let x_493 : f32 = u_xlat3.z;
  u_xlatb3.x = (0.0f >= x_493);
  let x_498 : f32 = u_xlat3.z;
  u_xlatb11 = (x_498 >= 1.0f);
  let x_500 : bool = u_xlatb11;
  let x_502 : bool = u_xlatb3.x;
  u_xlatb3.x = (x_500 | x_502);
  let x_506 : bool = u_xlatb3.x;
  let x_507 : f32 = u_xlat26;
  u_xlat26 = select(x_507, 1.0f, x_506);
  let x_509 : vec4<f32> = vs_TEXCOORD2;
  let x_514 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_516 : vec3<f32> = (vec3<f32>(x_509.x, x_509.y, x_509.z) + -(x_514));
  let x_517 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_516.x, x_516.y, x_516.z, x_517.w);
  let x_519 : vec4<f32> = u_xlat3;
  let x_521 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_519.x, x_519.y, x_519.z), vec3<f32>(x_521.x, x_521.y, x_521.z));
  let x_526 : f32 = u_xlat3.x;
  let x_528 : f32 = x_170.x_MainLightShadowParams.z;
  let x_531 : f32 = x_170.x_MainLightShadowParams.w;
  u_xlat3.x = ((x_526 * x_528) + x_531);
  let x_535 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_535, 0.0f, 1.0f);
  let x_539 : f32 = u_xlat26;
  u_xlat11 = (-(x_539) + 1.0f);
  let x_543 : f32 = u_xlat3.x;
  let x_544 : f32 = u_xlat11;
  let x_546 : f32 = u_xlat26;
  u_xlat26 = ((x_543 * x_544) + x_546);
  let x_548 : f32 = u_xlat25;
  let x_551 : vec4<f32> = x_43.x_MainLightColor;
  let x_553 : vec3<f32> = (vec3<f32>(x_548, x_548, x_548) * vec3<f32>(x_551.x, x_551.y, x_551.z));
  let x_554 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_553.x, x_553.y, x_553.z, x_554.w);
  let x_556 : f32 = u_xlat24;
  let x_558 : vec4<f32> = u_xlat4;
  let x_560 : vec3<f32> = (vec3<f32>(x_556, x_556, x_556) * vec3<f32>(x_558.x, x_558.y, x_558.z));
  let x_561 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_560.x, x_560.y, x_560.z, x_561.w);
  let x_563 : f32 = u_xlat26;
  let x_569 : f32 = x_567.unity_LightData.z;
  u_xlat24 = (x_563 * x_569);
  let x_571 : f32 = u_xlat24;
  let x_573 : vec4<f32> = u_xlat3;
  let x_575 : vec3<f32> = (vec3<f32>(x_571, x_571, x_571) * vec3<f32>(x_573.x, x_573.y, x_573.z));
  let x_576 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_575.x, x_575.y, x_575.z, x_576.w);
  let x_578 : vec3<f32> = u_xlat2;
  let x_580 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat24 = dot(x_578, vec3<f32>(x_580.x, x_580.y, x_580.z));
  let x_583 : f32 = u_xlat24;
  u_xlat24 = clamp(x_583, 0.0f, 1.0f);
  let x_585 : f32 = u_xlat24;
  let x_587 : vec4<f32> = u_xlat3;
  let x_589 : vec3<f32> = (vec3<f32>(x_585, x_585, x_585) * vec3<f32>(x_587.x, x_587.y, x_587.z));
  let x_590 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_589.x, x_589.y, x_589.z, x_590.w);
  let x_592 : vec4<f32> = u_xlat1;
  let x_594 : vec4<f32> = u_xlat3;
  let x_596 : vec3<f32> = (vec3<f32>(x_592.x, x_592.y, x_592.z) * vec3<f32>(x_594.x, x_594.y, x_594.z));
  let x_597 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_596.x, x_596.y, x_596.z, x_597.w);
  let x_601 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_603 : f32 = x_567.unity_LightData.y;
  u_xlat24 = min(x_601, x_603);
  let x_606 : f32 = u_xlat24;
  u_xlatu24 = bitcast<u32>(i32(x_606));
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_618 : u32 = u_xlatu_loop_1;
    let x_619 : u32 = u_xlatu24;
    if ((x_618 < x_619)) {
    } else {
      break;
    }
    let x_622 : u32 = u_xlatu_loop_1;
    u_xlatu27 = (x_622 >> 2u);
    let x_625 : u32 = u_xlatu_loop_1;
    u_xlati28 = bitcast<i32>((x_625 & 3u));
    let x_629 : u32 = u_xlatu27;
    let x_632 : vec4<f32> = x_567.unity_LightIndices[bitcast<i32>(x_629)];
    let x_642 : i32 = u_xlati28;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_647 : vec4<u32> = indexable[x_642];
    u_xlat27 = dot(x_632, bitcast<vec4<f32>>(x_647));
    let x_651 : f32 = u_xlat27;
    u_xlati27 = i32(x_651);
    let x_653 : vec4<f32> = vs_TEXCOORD2;
    let x_666 : i32 = u_xlati27;
    let x_668 : vec4<f32> = x_665.x_AdditionalLightsPosition[x_666];
    let x_671 : i32 = u_xlati27;
    let x_673 : vec4<f32> = x_665.x_AdditionalLightsPosition[x_671];
    u_xlat6 = ((-(vec3<f32>(x_653.x, x_653.y, x_653.z)) * vec3<f32>(x_668.w, x_668.w, x_668.w)) + vec3<f32>(x_673.x, x_673.y, x_673.z));
    let x_677 : vec3<f32> = u_xlat6;
    let x_678 : vec3<f32> = u_xlat6;
    u_xlat28 = dot(x_677, x_678);
    let x_680 : f32 = u_xlat28;
    u_xlat28 = max(x_680, 6.10351562e-05f);
    let x_684 : f32 = u_xlat28;
    u_xlat29 = inverseSqrt(x_684);
    let x_686 : f32 = u_xlat29;
    let x_688 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_686, x_686, x_686) * x_688);
    let x_690 : f32 = u_xlat28;
    u_xlat29 = (1.0f / x_690);
    let x_692 : f32 = u_xlat28;
    let x_693 : i32 = u_xlati27;
    let x_695 : f32 = x_665.x_AdditionalLightsAttenuation[x_693].x;
    u_xlat28 = (x_692 * x_695);
    let x_697 : f32 = u_xlat28;
    let x_699 : f32 = u_xlat28;
    u_xlat28 = ((-(x_697) * x_699) + 1.0f);
    let x_702 : f32 = u_xlat28;
    u_xlat28 = max(x_702, 0.0f);
    let x_704 : f32 = u_xlat28;
    let x_705 : f32 = u_xlat28;
    u_xlat28 = (x_704 * x_705);
    let x_707 : f32 = u_xlat28;
    let x_708 : f32 = u_xlat29;
    u_xlat28 = (x_707 * x_708);
    let x_710 : i32 = u_xlati27;
    let x_712 : vec4<f32> = x_665.x_AdditionalLightsSpotDir[x_710];
    let x_714 : vec3<f32> = u_xlat6;
    u_xlat29 = dot(vec3<f32>(x_712.x, x_712.y, x_712.z), x_714);
    let x_716 : f32 = u_xlat29;
    let x_717 : i32 = u_xlati27;
    let x_719 : f32 = x_665.x_AdditionalLightsAttenuation[x_717].z;
    let x_721 : i32 = u_xlati27;
    let x_723 : f32 = x_665.x_AdditionalLightsAttenuation[x_721].w;
    u_xlat29 = ((x_716 * x_719) + x_723);
    let x_725 : f32 = u_xlat29;
    u_xlat29 = clamp(x_725, 0.0f, 1.0f);
    let x_727 : f32 = u_xlat29;
    let x_728 : f32 = u_xlat29;
    u_xlat29 = (x_727 * x_728);
    let x_730 : f32 = u_xlat28;
    let x_731 : f32 = u_xlat29;
    u_xlat28 = (x_730 * x_731);
    let x_734 : f32 = u_xlat25;
    let x_736 : i32 = u_xlati27;
    let x_738 : vec4<f32> = x_665.x_AdditionalLightsColor[x_736];
    u_xlat7 = (vec3<f32>(x_734, x_734, x_734) * vec3<f32>(x_738.x, x_738.y, x_738.z));
    let x_741 : f32 = u_xlat28;
    let x_743 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_741, x_741, x_741) * x_743);
    let x_745 : vec3<f32> = u_xlat2;
    let x_746 : vec3<f32> = u_xlat6;
    u_xlat27 = dot(x_745, x_746);
    let x_748 : f32 = u_xlat27;
    u_xlat27 = clamp(x_748, 0.0f, 1.0f);
    let x_750 : f32 = u_xlat27;
    let x_752 : vec3<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_750, x_750, x_750) * x_752);
    let x_754 : vec3<f32> = u_xlat6;
    let x_755 : vec4<f32> = u_xlat1;
    let x_758 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_754 * vec3<f32>(x_755.x, x_755.y, x_755.z)) + x_758);

    continuing {
      let x_760 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_760 + bitcast<u32>(1i));
    }
  }
  let x_762 : vec4<f32> = u_xlat4;
  let x_764 : vec4<f32> = u_xlat1;
  let x_767 : vec4<f32> = u_xlat3;
  let x_769 : vec3<f32> = ((vec3<f32>(x_762.x, x_762.y, x_762.z) * vec3<f32>(x_764.x, x_764.y, x_764.z)) + vec3<f32>(x_767.x, x_767.y, x_767.z));
  let x_770 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_769.x, x_769.y, x_769.z, x_770.w);
  let x_772 : vec3<f32> = u_xlat5;
  let x_773 : vec4<f32> = u_xlat1;
  let x_775 : vec3<f32> = (x_772 + vec3<f32>(x_773.x, x_773.y, x_773.z));
  let x_776 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_775.x, x_775.y, x_775.z, x_776.w);
  let x_779 : f32 = u_xlat0.x;
  let x_781 : f32 = u_xlat0.x;
  u_xlat0.x = (x_779 * -(x_781));
  let x_786 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_786);
  let x_789 : vec4<f32> = u_xlat1;
  let x_793 : vec4<f32> = x_43.unity_FogColor;
  let x_796 : vec3<f32> = (vec3<f32>(x_789.x, x_789.y, x_789.z) + -(vec3<f32>(x_793.x, x_793.y, x_793.z)));
  let x_797 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_796.x, x_796.y, x_796.z, x_797.w);
  let x_801 : vec4<f32> = u_xlat0;
  let x_803 : vec4<f32> = u_xlat1;
  let x_807 : vec4<f32> = x_43.unity_FogColor;
  let x_809 : vec3<f32> = ((vec3<f32>(x_801.x, x_801.x, x_801.x) * vec3<f32>(x_803.x, x_803.y, x_803.z)) + vec3<f32>(x_807.x, x_807.y, x_807.z));
  let x_810 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_809.x, x_809.y, x_809.z, x_810.w);
  let x_812 : bool = u_xlatb16;
  let x_813 : f32 = u_xlat8;
  SV_Target0.w = select(1.0f, x_813, x_812);
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

