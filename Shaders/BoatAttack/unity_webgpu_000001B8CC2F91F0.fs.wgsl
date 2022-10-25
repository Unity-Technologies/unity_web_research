struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  x_AlphaToMaskAvailable : f32,
  @size(4)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_ProjectionParams : vec4<f32>,
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

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_64 : UnityPerMaterial;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_169 : MainLightShadows;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(4) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(2) var<uniform> x_525 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_622 : AdditionalLights;

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
  var u_xlatb25 : bool;
  var u_xlatb26 : bool;
  var u_xlat26 : f32;
  var u_xlatu24 : u32;
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
  let x_146 : vec3<f32> = vs_TEXCOORD3;
  let x_147 : vec3<f32> = vs_TEXCOORD3;
  u_xlat0.x = dot(x_146, x_147);
  let x_151 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_151);
  let x_156 : vec4<f32> = u_xlat0;
  let x_158 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2 = (vec3<f32>(x_156.x, x_156.x, x_156.x) * x_158);
  let x_162 : vec4<f32> = vs_TEXCOORD2;
  let x_172 : vec4<f32> = x_169.x_CascadeShadowSplitSpheres0;
  let x_175 : vec3<f32> = (vec3<f32>(x_162.x, x_162.y, x_162.z) + -(vec3<f32>(x_172.x, x_172.y, x_172.z)));
  let x_176 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_175.x, x_175.y, x_175.z, x_176.w);
  let x_179 : vec4<f32> = vs_TEXCOORD2;
  let x_183 : vec4<f32> = x_169.x_CascadeShadowSplitSpheres1;
  let x_186 : vec3<f32> = (vec3<f32>(x_179.x, x_179.y, x_179.z) + -(vec3<f32>(x_183.x, x_183.y, x_183.z)));
  let x_187 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_186.x, x_186.y, x_186.z, x_187.w);
  let x_190 : vec4<f32> = vs_TEXCOORD2;
  let x_194 : vec4<f32> = x_169.x_CascadeShadowSplitSpheres2;
  u_xlat5 = (vec3<f32>(x_190.x, x_190.y, x_190.z) + -(vec3<f32>(x_194.x, x_194.y, x_194.z)));
  let x_199 : vec4<f32> = vs_TEXCOORD2;
  let x_202 : vec4<f32> = x_169.x_CascadeShadowSplitSpheres3;
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
  let x_234 : vec4<f32> = x_169.x_CascadeShadowSplitSphereRadii;
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
  let x_310 : vec4<f32> = x_169.x_MainLightWorldToShadow[((x_303 + 1i) / 4i)][((x_306 + 1i) % 4i)];
  let x_312 : vec3<f32> = (vec3<f32>(x_301.y, x_301.y, x_301.y) * vec3<f32>(x_310.x, x_310.y, x_310.z));
  let x_313 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_312.x, x_312.y, x_312.z, x_313.w);
  let x_315 : i32 = u_xlati0;
  let x_317 : i32 = u_xlati0;
  let x_320 : vec4<f32> = x_169.x_MainLightWorldToShadow[(x_315 / 4i)][(x_317 % 4i)];
  let x_322 : vec4<f32> = vs_TEXCOORD2;
  let x_325 : vec4<f32> = u_xlat3;
  let x_327 : vec3<f32> = ((vec3<f32>(x_320.x, x_320.y, x_320.z) * vec3<f32>(x_322.x, x_322.x, x_322.x)) + vec3<f32>(x_325.x, x_325.y, x_325.z));
  let x_328 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_327.x, x_327.y, x_327.z, x_328.w);
  let x_330 : i32 = u_xlati0;
  let x_333 : i32 = u_xlati0;
  let x_337 : vec4<f32> = x_169.x_MainLightWorldToShadow[((x_330 + 2i) / 4i)][((x_333 + 2i) % 4i)];
  let x_339 : vec4<f32> = vs_TEXCOORD2;
  let x_342 : vec4<f32> = u_xlat3;
  let x_344 : vec3<f32> = ((vec3<f32>(x_337.x, x_337.y, x_337.z) * vec3<f32>(x_339.z, x_339.z, x_339.z)) + vec3<f32>(x_342.x, x_342.y, x_342.z));
  let x_345 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_344.x, x_344.y, x_344.z, x_345.w);
  let x_347 : vec4<f32> = u_xlat3;
  let x_349 : i32 = u_xlati0;
  let x_352 : i32 = u_xlati0;
  let x_356 : vec4<f32> = x_169.x_MainLightWorldToShadow[((x_349 + 3i) / 4i)][((x_352 + 3i) % 4i)];
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
  let x_405 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_402, x_404);
  u_xlat4 = x_405;
  let x_410 : vec2<f32> = vs_TEXCOORD1;
  let x_412 : f32 = x_43.x_GlobalMipBias.x;
  let x_413 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_410, x_412);
  u_xlat5 = vec3<f32>(x_413.x, x_413.y, x_413.z);
  let x_415 : vec4<f32> = u_xlat4;
  let x_419 : vec3<f32> = (vec3<f32>(x_415.x, x_415.y, x_415.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_420 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_419.x, x_419.y, x_419.z, x_420.w);
  let x_422 : vec3<f32> = u_xlat2;
  let x_423 : vec4<f32> = u_xlat4;
  u_xlat24 = dot(x_422, vec3<f32>(x_423.x, x_423.y, x_423.z));
  let x_426 : f32 = u_xlat24;
  u_xlat24 = (x_426 + 0.5f);
  let x_428 : f32 = u_xlat24;
  let x_430 : vec3<f32> = u_xlat5;
  let x_431 : vec3<f32> = (vec3<f32>(x_428, x_428, x_428) * x_430);
  let x_432 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_431.x, x_431.y, x_431.z, x_432.w);
  let x_435 : f32 = u_xlat4.w;
  u_xlat24 = max(x_435, 0.0001f);
  let x_437 : vec4<f32> = u_xlat4;
  let x_439 : f32 = u_xlat24;
  let x_441 : vec3<f32> = (vec3<f32>(x_437.x, x_437.y, x_437.z) / vec3<f32>(x_439, x_439, x_439));
  let x_442 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_441.x, x_441.y, x_441.z, x_442.w);
  let x_445 : vec4<f32> = u_xlat3;
  let x_446 : vec2<f32> = vec2<f32>(x_445.x, x_445.y);
  let x_448 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_446.x, x_446.y, x_448);
  let x_460 : vec3<f32> = txVec0;
  let x_462 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_460.xy, x_460.z);
  u_xlat24 = x_462;
  let x_466 : f32 = x_169.x_MainLightShadowParams.x;
  u_xlat25 = (-(x_466) + 1.0f);
  let x_469 : f32 = u_xlat24;
  let x_471 : f32 = x_169.x_MainLightShadowParams.x;
  let x_473 : f32 = u_xlat25;
  u_xlat24 = ((x_469 * x_471) + x_473);
  let x_477 : f32 = u_xlat3.z;
  u_xlatb25 = (0.0f >= x_477);
  let x_481 : f32 = u_xlat3.z;
  u_xlatb26 = (x_481 >= 1.0f);
  let x_483 : bool = u_xlatb25;
  let x_484 : bool = u_xlatb26;
  u_xlatb25 = (x_483 | x_484);
  let x_486 : bool = u_xlatb25;
  let x_487 : f32 = u_xlat24;
  u_xlat24 = select(x_487, 1.0f, x_486);
  let x_489 : vec4<f32> = vs_TEXCOORD2;
  let x_493 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_495 : vec3<f32> = (vec3<f32>(x_489.x, x_489.y, x_489.z) + -(x_493));
  let x_496 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_495.x, x_495.y, x_495.z, x_496.w);
  let x_498 : vec4<f32> = u_xlat3;
  let x_500 : vec4<f32> = u_xlat3;
  u_xlat25 = dot(vec3<f32>(x_498.x, x_498.y, x_498.z), vec3<f32>(x_500.x, x_500.y, x_500.z));
  let x_503 : f32 = u_xlat25;
  let x_505 : f32 = x_169.x_MainLightShadowParams.z;
  let x_508 : f32 = x_169.x_MainLightShadowParams.w;
  u_xlat25 = ((x_503 * x_505) + x_508);
  let x_510 : f32 = u_xlat25;
  u_xlat25 = clamp(x_510, 0.0f, 1.0f);
  let x_513 : f32 = u_xlat24;
  u_xlat26 = (-(x_513) + 1.0f);
  let x_516 : f32 = u_xlat25;
  let x_517 : f32 = u_xlat26;
  let x_519 : f32 = u_xlat24;
  u_xlat24 = ((x_516 * x_517) + x_519);
  let x_521 : f32 = u_xlat24;
  let x_527 : f32 = x_525.unity_LightData.z;
  u_xlat24 = (x_521 * x_527);
  let x_529 : f32 = u_xlat24;
  let x_532 : vec4<f32> = x_43.x_MainLightColor;
  let x_534 : vec3<f32> = (vec3<f32>(x_529, x_529, x_529) * vec3<f32>(x_532.x, x_532.y, x_532.z));
  let x_535 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_534.x, x_534.y, x_534.z, x_535.w);
  let x_537 : vec3<f32> = u_xlat2;
  let x_539 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat24 = dot(x_537, vec3<f32>(x_539.x, x_539.y, x_539.z));
  let x_542 : f32 = u_xlat24;
  u_xlat24 = clamp(x_542, 0.0f, 1.0f);
  let x_544 : f32 = u_xlat24;
  let x_546 : vec4<f32> = u_xlat3;
  let x_548 : vec3<f32> = (vec3<f32>(x_544, x_544, x_544) * vec3<f32>(x_546.x, x_546.y, x_546.z));
  let x_549 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_548.x, x_548.y, x_548.z, x_549.w);
  let x_551 : vec4<f32> = u_xlat1;
  let x_553 : vec4<f32> = u_xlat3;
  let x_555 : vec3<f32> = (vec3<f32>(x_551.x, x_551.y, x_551.z) * vec3<f32>(x_553.x, x_553.y, x_553.z));
  let x_556 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_555.x, x_555.y, x_555.z, x_556.w);
  let x_559 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_561 : f32 = x_525.unity_LightData.y;
  u_xlat24 = min(x_559, x_561);
  let x_564 : f32 = u_xlat24;
  u_xlatu24 = bitcast<u32>(i32(x_564));
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_576 : u32 = u_xlatu_loop_1;
    let x_577 : u32 = u_xlatu24;
    if ((x_576 < x_577)) {
    } else {
      break;
    }
    let x_580 : u32 = u_xlatu_loop_1;
    u_xlatu26 = (x_580 >> 2u);
    let x_583 : u32 = u_xlatu_loop_1;
    u_xlati27 = bitcast<i32>((x_583 & 3u));
    let x_586 : u32 = u_xlatu26;
    let x_589 : vec4<f32> = x_525.unity_LightIndices[bitcast<i32>(x_586)];
    let x_599 : i32 = u_xlati27;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_604 : vec4<u32> = indexable[x_599];
    u_xlat26 = dot(x_589, bitcast<vec4<f32>>(x_604));
    let x_608 : f32 = u_xlat26;
    u_xlati26 = i32(x_608);
    let x_610 : vec4<f32> = vs_TEXCOORD2;
    let x_623 : i32 = u_xlati26;
    let x_625 : vec4<f32> = x_622.x_AdditionalLightsPosition[x_623];
    let x_628 : i32 = u_xlati26;
    let x_630 : vec4<f32> = x_622.x_AdditionalLightsPosition[x_628];
    u_xlat6 = ((-(vec3<f32>(x_610.x, x_610.y, x_610.z)) * vec3<f32>(x_625.w, x_625.w, x_625.w)) + vec3<f32>(x_630.x, x_630.y, x_630.z));
    let x_634 : vec3<f32> = u_xlat6;
    let x_635 : vec3<f32> = u_xlat6;
    u_xlat27 = dot(x_634, x_635);
    let x_637 : f32 = u_xlat27;
    u_xlat27 = max(x_637, 6.10351562e-05f);
    let x_641 : f32 = u_xlat27;
    u_xlat28 = inverseSqrt(x_641);
    let x_643 : f32 = u_xlat28;
    let x_645 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_643, x_643, x_643) * x_645);
    let x_647 : f32 = u_xlat27;
    u_xlat28 = (1.0f / x_647);
    let x_649 : f32 = u_xlat27;
    let x_650 : i32 = u_xlati26;
    let x_652 : f32 = x_622.x_AdditionalLightsAttenuation[x_650].x;
    u_xlat27 = (x_649 * x_652);
    let x_654 : f32 = u_xlat27;
    let x_656 : f32 = u_xlat27;
    u_xlat27 = ((-(x_654) * x_656) + 1.0f);
    let x_659 : f32 = u_xlat27;
    u_xlat27 = max(x_659, 0.0f);
    let x_661 : f32 = u_xlat27;
    let x_662 : f32 = u_xlat27;
    u_xlat27 = (x_661 * x_662);
    let x_664 : f32 = u_xlat27;
    let x_665 : f32 = u_xlat28;
    u_xlat27 = (x_664 * x_665);
    let x_667 : i32 = u_xlati26;
    let x_669 : vec4<f32> = x_622.x_AdditionalLightsSpotDir[x_667];
    let x_671 : vec3<f32> = u_xlat6;
    u_xlat28 = dot(vec3<f32>(x_669.x, x_669.y, x_669.z), x_671);
    let x_673 : f32 = u_xlat28;
    let x_674 : i32 = u_xlati26;
    let x_676 : f32 = x_622.x_AdditionalLightsAttenuation[x_674].z;
    let x_678 : i32 = u_xlati26;
    let x_680 : f32 = x_622.x_AdditionalLightsAttenuation[x_678].w;
    u_xlat28 = ((x_673 * x_676) + x_680);
    let x_682 : f32 = u_xlat28;
    u_xlat28 = clamp(x_682, 0.0f, 1.0f);
    let x_684 : f32 = u_xlat28;
    let x_685 : f32 = u_xlat28;
    u_xlat28 = (x_684 * x_685);
    let x_687 : f32 = u_xlat27;
    let x_688 : f32 = u_xlat28;
    u_xlat27 = (x_687 * x_688);
    let x_691 : f32 = u_xlat27;
    let x_693 : i32 = u_xlati26;
    let x_695 : vec4<f32> = x_622.x_AdditionalLightsColor[x_693];
    u_xlat7 = (vec3<f32>(x_691, x_691, x_691) * vec3<f32>(x_695.x, x_695.y, x_695.z));
    let x_698 : vec3<f32> = u_xlat2;
    let x_699 : vec3<f32> = u_xlat6;
    u_xlat26 = dot(x_698, x_699);
    let x_701 : f32 = u_xlat26;
    u_xlat26 = clamp(x_701, 0.0f, 1.0f);
    let x_703 : f32 = u_xlat26;
    let x_705 : vec3<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_703, x_703, x_703) * x_705);
    let x_707 : vec3<f32> = u_xlat6;
    let x_708 : vec4<f32> = u_xlat1;
    let x_711 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_707 * vec3<f32>(x_708.x, x_708.y, x_708.z)) + x_711);

    continuing {
      let x_713 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_713 + bitcast<u32>(1i));
    }
  }
  let x_715 : vec4<f32> = u_xlat4;
  let x_717 : vec4<f32> = u_xlat1;
  let x_720 : vec4<f32> = u_xlat3;
  let x_722 : vec3<f32> = ((vec3<f32>(x_715.x, x_715.y, x_715.z) * vec3<f32>(x_717.x, x_717.y, x_717.z)) + vec3<f32>(x_720.x, x_720.y, x_720.z));
  let x_723 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_722.x, x_722.y, x_722.z, x_723.w);
  let x_725 : vec3<f32> = u_xlat5;
  let x_726 : vec4<f32> = u_xlat1;
  let x_728 : vec3<f32> = (x_725 + vec3<f32>(x_726.x, x_726.y, x_726.z));
  let x_729 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_728.x, x_728.y, x_728.z, x_729.w);
  let x_732 : f32 = u_xlat0.x;
  let x_734 : f32 = u_xlat0.x;
  u_xlat0.x = (x_732 * -(x_734));
  let x_739 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_739);
  let x_742 : vec4<f32> = u_xlat1;
  let x_745 : vec4<f32> = x_43.unity_FogColor;
  let x_748 : vec3<f32> = (vec3<f32>(x_742.x, x_742.y, x_742.z) + -(vec3<f32>(x_745.x, x_745.y, x_745.z)));
  let x_749 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_748.x, x_748.y, x_748.z, x_749.w);
  let x_753 : vec4<f32> = u_xlat0;
  let x_755 : vec4<f32> = u_xlat1;
  let x_759 : vec4<f32> = x_43.unity_FogColor;
  let x_761 : vec3<f32> = ((vec3<f32>(x_753.x, x_753.x, x_753.x) * vec3<f32>(x_755.x, x_755.y, x_755.z)) + vec3<f32>(x_759.x, x_759.y, x_759.z));
  let x_762 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_761.x, x_761.y, x_761.z, x_762.w);
  let x_764 : bool = u_xlatb16;
  let x_765 : f32 = u_xlat8;
  SV_Target0.w = select(1.0f, x_765, x_764);
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

