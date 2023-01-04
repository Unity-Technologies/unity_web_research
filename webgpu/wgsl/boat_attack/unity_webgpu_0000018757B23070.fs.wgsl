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

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_64 : UnityPerMaterial;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_170 : MainLightShadows;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(5) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(2) var<uniform> x_568 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_670 : AdditionalLights;

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
  let x_370 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_367, x_369);
  u_xlat4 = x_370;
  let x_375 : vec2<f32> = vs_TEXCOORD1;
  let x_377 : f32 = x_43.x_GlobalMipBias.x;
  let x_378 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_375, x_377);
  u_xlat5 = vec3<f32>(x_378.x, x_378.y, x_378.z);
  let x_380 : vec4<f32> = u_xlat4;
  let x_384 : vec3<f32> = (vec3<f32>(x_380.x, x_380.y, x_380.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_385 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_384.x, x_384.y, x_384.z, x_385.w);
  let x_387 : vec3<f32> = u_xlat2;
  let x_388 : vec4<f32> = u_xlat4;
  u_xlat0.x = dot(x_387, vec3<f32>(x_388.x, x_388.y, x_388.z));
  let x_393 : f32 = u_xlat0.x;
  u_xlat0.x = (x_393 + 0.5f);
  let x_396 : vec4<f32> = u_xlat0;
  let x_398 : vec3<f32> = u_xlat5;
  let x_399 : vec3<f32> = (vec3<f32>(x_396.x, x_396.x, x_396.x) * x_398);
  let x_400 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_399.x, x_399.y, x_399.z, x_400.w);
  let x_403 : f32 = u_xlat4.w;
  u_xlat0.x = max(x_403, 0.0001f);
  let x_406 : vec4<f32> = u_xlat4;
  let x_408 : vec4<f32> = u_xlat0;
  let x_410 : vec3<f32> = (vec3<f32>(x_406.x, x_406.y, x_406.z) / vec3<f32>(x_408.x, x_408.x, x_408.x));
  let x_411 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_410.x, x_410.y, x_410.z, x_411.w);
  let x_415 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_416 : vec2<f32> = vec2<f32>(x_415.x, x_415.y);
  let x_420 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_416.x, x_416.y));
  let x_421 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_420.x, x_421.y, x_421.z, x_420.y);
  let x_423 : vec4<f32> = u_xlat0;
  let x_425 : vec4<f32> = hlslcc_FragCoord;
  let x_427 : vec2<f32> = (vec2<f32>(x_423.x, x_423.w) * vec2<f32>(x_425.x, x_425.y));
  let x_428 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_427.x, x_427.y, x_428.z);
  let x_431 : f32 = u_xlat5.y;
  let x_434 : f32 = x_43.x_ScaleBiasRt.x;
  let x_437 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat0.x = ((x_431 * x_434) + x_437);
  let x_441 : f32 = u_xlat0.x;
  u_xlat5.z = (-(x_441) + 1.0f);
  let x_450 : vec3<f32> = u_xlat5;
  let x_453 : f32 = x_43.x_GlobalMipBias.x;
  let x_454 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_450.x, x_450.z), x_453);
  u_xlat0.x = x_454.x;
  let x_458 : f32 = u_xlat0.x;
  u_xlat24 = (x_458 + -1.0f);
  let x_461 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_462 : f32 = u_xlat24;
  u_xlat24 = ((x_461 * x_462) + 1.0f);
  let x_466 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_466, 1.0f);
  let x_470 : vec4<f32> = u_xlat3;
  let x_471 : vec2<f32> = vec2<f32>(x_470.x, x_470.y);
  let x_473 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_471.x, x_471.y, x_473);
  let x_486 : vec3<f32> = txVec0;
  let x_488 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_486.xy, x_486.z);
  u_xlat25 = x_488;
  let x_491 : f32 = x_170.x_MainLightShadowParams.x;
  u_xlat26 = (-(x_491) + 1.0f);
  let x_494 : f32 = u_xlat25;
  let x_496 : f32 = x_170.x_MainLightShadowParams.x;
  let x_498 : f32 = u_xlat26;
  u_xlat25 = ((x_494 * x_496) + x_498);
  let x_502 : f32 = u_xlat3.z;
  u_xlatb26 = (0.0f >= x_502);
  let x_505 : f32 = u_xlat3.z;
  u_xlatb3.x = (x_505 >= 1.0f);
  let x_508 : bool = u_xlatb26;
  let x_510 : bool = u_xlatb3.x;
  u_xlatb26 = (x_508 | x_510);
  let x_512 : bool = u_xlatb26;
  let x_513 : f32 = u_xlat25;
  u_xlat25 = select(x_513, 1.0f, x_512);
  let x_515 : vec4<f32> = vs_TEXCOORD2;
  let x_520 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_522 : vec3<f32> = (vec3<f32>(x_515.x, x_515.y, x_515.z) + -(x_520));
  let x_523 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_522.x, x_522.y, x_522.z, x_523.w);
  let x_525 : vec4<f32> = u_xlat3;
  let x_527 : vec4<f32> = u_xlat3;
  u_xlat26 = dot(vec3<f32>(x_525.x, x_525.y, x_525.z), vec3<f32>(x_527.x, x_527.y, x_527.z));
  let x_530 : f32 = u_xlat26;
  let x_532 : f32 = x_170.x_MainLightShadowParams.z;
  let x_535 : f32 = x_170.x_MainLightShadowParams.w;
  u_xlat26 = ((x_530 * x_532) + x_535);
  let x_537 : f32 = u_xlat26;
  u_xlat26 = clamp(x_537, 0.0f, 1.0f);
  let x_539 : f32 = u_xlat25;
  u_xlat3.x = (-(x_539) + 1.0f);
  let x_543 : f32 = u_xlat26;
  let x_545 : f32 = u_xlat3.x;
  let x_547 : f32 = u_xlat25;
  u_xlat25 = ((x_543 * x_545) + x_547);
  let x_549 : f32 = u_xlat24;
  let x_552 : vec4<f32> = x_43.x_MainLightColor;
  let x_554 : vec3<f32> = (vec3<f32>(x_549, x_549, x_549) * vec3<f32>(x_552.x, x_552.y, x_552.z));
  let x_555 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_554.x, x_554.y, x_554.z, x_555.w);
  let x_557 : vec4<f32> = u_xlat0;
  let x_559 : vec4<f32> = u_xlat4;
  let x_561 : vec3<f32> = (vec3<f32>(x_557.x, x_557.x, x_557.x) * vec3<f32>(x_559.x, x_559.y, x_559.z));
  let x_562 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_561.x, x_561.y, x_561.z, x_562.w);
  let x_564 : f32 = u_xlat25;
  let x_570 : f32 = x_568.unity_LightData.z;
  u_xlat0.x = (x_564 * x_570);
  let x_573 : vec4<f32> = u_xlat0;
  let x_575 : vec4<f32> = u_xlat3;
  let x_577 : vec3<f32> = (vec3<f32>(x_573.x, x_573.x, x_573.x) * vec3<f32>(x_575.x, x_575.y, x_575.z));
  let x_578 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_577.x, x_577.y, x_577.z, x_578.w);
  let x_580 : vec3<f32> = u_xlat2;
  let x_582 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat0.x = dot(x_580, vec3<f32>(x_582.x, x_582.y, x_582.z));
  let x_587 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_587, 0.0f, 1.0f);
  let x_590 : vec4<f32> = u_xlat0;
  let x_592 : vec4<f32> = u_xlat3;
  let x_594 : vec3<f32> = (vec3<f32>(x_590.x, x_590.x, x_590.x) * vec3<f32>(x_592.x, x_592.y, x_592.z));
  let x_595 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_594.x, x_594.y, x_594.z, x_595.w);
  let x_597 : vec4<f32> = u_xlat1;
  let x_599 : vec4<f32> = u_xlat3;
  let x_601 : vec3<f32> = (vec3<f32>(x_597.x, x_597.y, x_597.z) * vec3<f32>(x_599.x, x_599.y, x_599.z));
  let x_602 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_601.x, x_601.y, x_601.z, x_602.w);
  let x_606 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_608 : f32 = x_568.unity_LightData.y;
  u_xlat0.x = min(x_606, x_608);
  let x_612 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_612));
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_624 : u32 = u_xlatu_loop_1;
    let x_625 : u32 = u_xlatu0;
    if ((x_624 < x_625)) {
    } else {
      break;
    }
    let x_628 : u32 = u_xlatu_loop_1;
    u_xlatu26 = (x_628 >> 2u);
    let x_631 : u32 = u_xlatu_loop_1;
    u_xlati27 = bitcast<i32>((x_631 & 3u));
    let x_634 : u32 = u_xlatu26;
    let x_637 : vec4<f32> = x_568.unity_LightIndices[bitcast<i32>(x_634)];
    let x_647 : i32 = u_xlati27;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_652 : vec4<u32> = indexable[x_647];
    u_xlat26 = dot(x_637, bitcast<vec4<f32>>(x_652));
    let x_656 : f32 = u_xlat26;
    u_xlati26 = i32(x_656);
    let x_658 : vec4<f32> = vs_TEXCOORD2;
    let x_671 : i32 = u_xlati26;
    let x_673 : vec4<f32> = x_670.x_AdditionalLightsPosition[x_671];
    let x_676 : i32 = u_xlati26;
    let x_678 : vec4<f32> = x_670.x_AdditionalLightsPosition[x_676];
    u_xlat6 = ((-(vec3<f32>(x_658.x, x_658.y, x_658.z)) * vec3<f32>(x_673.w, x_673.w, x_673.w)) + vec3<f32>(x_678.x, x_678.y, x_678.z));
    let x_682 : vec3<f32> = u_xlat6;
    let x_683 : vec3<f32> = u_xlat6;
    u_xlat27 = dot(x_682, x_683);
    let x_685 : f32 = u_xlat27;
    u_xlat27 = max(x_685, 6.10351562e-05f);
    let x_689 : f32 = u_xlat27;
    u_xlat28 = inverseSqrt(x_689);
    let x_691 : f32 = u_xlat28;
    let x_693 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_691, x_691, x_691) * x_693);
    let x_695 : f32 = u_xlat27;
    u_xlat28 = (1.0f / x_695);
    let x_697 : f32 = u_xlat27;
    let x_698 : i32 = u_xlati26;
    let x_700 : f32 = x_670.x_AdditionalLightsAttenuation[x_698].x;
    u_xlat27 = (x_697 * x_700);
    let x_702 : f32 = u_xlat27;
    let x_704 : f32 = u_xlat27;
    u_xlat27 = ((-(x_702) * x_704) + 1.0f);
    let x_707 : f32 = u_xlat27;
    u_xlat27 = max(x_707, 0.0f);
    let x_709 : f32 = u_xlat27;
    let x_710 : f32 = u_xlat27;
    u_xlat27 = (x_709 * x_710);
    let x_712 : f32 = u_xlat27;
    let x_713 : f32 = u_xlat28;
    u_xlat27 = (x_712 * x_713);
    let x_715 : i32 = u_xlati26;
    let x_717 : vec4<f32> = x_670.x_AdditionalLightsSpotDir[x_715];
    let x_719 : vec3<f32> = u_xlat6;
    u_xlat28 = dot(vec3<f32>(x_717.x, x_717.y, x_717.z), x_719);
    let x_721 : f32 = u_xlat28;
    let x_722 : i32 = u_xlati26;
    let x_724 : f32 = x_670.x_AdditionalLightsAttenuation[x_722].z;
    let x_726 : i32 = u_xlati26;
    let x_728 : f32 = x_670.x_AdditionalLightsAttenuation[x_726].w;
    u_xlat28 = ((x_721 * x_724) + x_728);
    let x_730 : f32 = u_xlat28;
    u_xlat28 = clamp(x_730, 0.0f, 1.0f);
    let x_732 : f32 = u_xlat28;
    let x_733 : f32 = u_xlat28;
    u_xlat28 = (x_732 * x_733);
    let x_735 : f32 = u_xlat27;
    let x_736 : f32 = u_xlat28;
    u_xlat27 = (x_735 * x_736);
    let x_739 : f32 = u_xlat24;
    let x_741 : i32 = u_xlati26;
    let x_743 : vec4<f32> = x_670.x_AdditionalLightsColor[x_741];
    u_xlat7 = (vec3<f32>(x_739, x_739, x_739) * vec3<f32>(x_743.x, x_743.y, x_743.z));
    let x_746 : f32 = u_xlat27;
    let x_748 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_746, x_746, x_746) * x_748);
    let x_750 : vec3<f32> = u_xlat2;
    let x_751 : vec3<f32> = u_xlat6;
    u_xlat26 = dot(x_750, x_751);
    let x_753 : f32 = u_xlat26;
    u_xlat26 = clamp(x_753, 0.0f, 1.0f);
    let x_755 : f32 = u_xlat26;
    let x_757 : vec3<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_755, x_755, x_755) * x_757);
    let x_759 : vec3<f32> = u_xlat6;
    let x_760 : vec4<f32> = u_xlat1;
    let x_763 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_759 * vec3<f32>(x_760.x, x_760.y, x_760.z)) + x_763);

    continuing {
      let x_765 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_765 + bitcast<u32>(1i));
    }
  }
  let x_767 : vec4<f32> = u_xlat4;
  let x_769 : vec4<f32> = u_xlat1;
  let x_772 : vec4<f32> = u_xlat3;
  let x_774 : vec3<f32> = ((vec3<f32>(x_767.x, x_767.y, x_767.z) * vec3<f32>(x_769.x, x_769.y, x_769.z)) + vec3<f32>(x_772.x, x_772.y, x_772.z));
  let x_775 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_774.x, x_774.y, x_774.z, x_775.w);
  let x_779 : vec3<f32> = u_xlat5;
  let x_780 : vec4<f32> = u_xlat1;
  let x_782 : vec3<f32> = (x_779 + vec3<f32>(x_780.x, x_780.y, x_780.z));
  let x_783 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_782.x, x_782.y, x_782.z, x_783.w);
  let x_785 : bool = u_xlatb16;
  let x_786 : f32 = u_xlat8;
  SV_Target0.w = select(1.0f, x_786, x_785);
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

