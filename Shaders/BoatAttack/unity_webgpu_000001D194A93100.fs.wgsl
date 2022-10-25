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

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_64 : UnityPerMaterial;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_169 : MainLightShadows;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(5) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(2) var<uniform> x_490 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_587 : AdditionalLights;

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
  let x_405 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_402, x_404);
  let x_406 : vec3<f32> = vec3<f32>(x_405.x, x_405.y, x_405.z);
  let x_407 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_406.x, x_406.y, x_406.z, x_407.w);
  let x_410 : vec4<f32> = u_xlat3;
  let x_411 : vec2<f32> = vec2<f32>(x_410.x, x_410.y);
  let x_413 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_411.x, x_411.y, x_413);
  let x_425 : vec3<f32> = txVec0;
  let x_427 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_425.xy, x_425.z);
  u_xlat24 = x_427;
  let x_431 : f32 = x_169.x_MainLightShadowParams.x;
  u_xlat25 = (-(x_431) + 1.0f);
  let x_434 : f32 = u_xlat24;
  let x_436 : f32 = x_169.x_MainLightShadowParams.x;
  let x_438 : f32 = u_xlat25;
  u_xlat24 = ((x_434 * x_436) + x_438);
  let x_442 : f32 = u_xlat3.z;
  u_xlatb25 = (0.0f >= x_442);
  let x_446 : f32 = u_xlat3.z;
  u_xlatb26 = (x_446 >= 1.0f);
  let x_448 : bool = u_xlatb25;
  let x_449 : bool = u_xlatb26;
  u_xlatb25 = (x_448 | x_449);
  let x_451 : bool = u_xlatb25;
  let x_452 : f32 = u_xlat24;
  u_xlat24 = select(x_452, 1.0f, x_451);
  let x_454 : vec4<f32> = vs_TEXCOORD2;
  let x_458 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_460 : vec3<f32> = (vec3<f32>(x_454.x, x_454.y, x_454.z) + -(x_458));
  let x_461 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_460.x, x_460.y, x_460.z, x_461.w);
  let x_463 : vec4<f32> = u_xlat3;
  let x_465 : vec4<f32> = u_xlat3;
  u_xlat25 = dot(vec3<f32>(x_463.x, x_463.y, x_463.z), vec3<f32>(x_465.x, x_465.y, x_465.z));
  let x_468 : f32 = u_xlat25;
  let x_470 : f32 = x_169.x_MainLightShadowParams.z;
  let x_473 : f32 = x_169.x_MainLightShadowParams.w;
  u_xlat25 = ((x_468 * x_470) + x_473);
  let x_475 : f32 = u_xlat25;
  u_xlat25 = clamp(x_475, 0.0f, 1.0f);
  let x_478 : f32 = u_xlat24;
  u_xlat26 = (-(x_478) + 1.0f);
  let x_481 : f32 = u_xlat25;
  let x_482 : f32 = u_xlat26;
  let x_484 : f32 = u_xlat24;
  u_xlat24 = ((x_481 * x_482) + x_484);
  let x_486 : f32 = u_xlat24;
  let x_492 : f32 = x_490.unity_LightData.z;
  u_xlat24 = (x_486 * x_492);
  let x_494 : f32 = u_xlat24;
  let x_497 : vec4<f32> = x_43.x_MainLightColor;
  let x_499 : vec3<f32> = (vec3<f32>(x_494, x_494, x_494) * vec3<f32>(x_497.x, x_497.y, x_497.z));
  let x_500 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_499.x, x_499.y, x_499.z, x_500.w);
  let x_502 : vec3<f32> = u_xlat2;
  let x_504 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat24 = dot(x_502, vec3<f32>(x_504.x, x_504.y, x_504.z));
  let x_507 : f32 = u_xlat24;
  u_xlat24 = clamp(x_507, 0.0f, 1.0f);
  let x_509 : f32 = u_xlat24;
  let x_511 : vec4<f32> = u_xlat3;
  let x_513 : vec3<f32> = (vec3<f32>(x_509, x_509, x_509) * vec3<f32>(x_511.x, x_511.y, x_511.z));
  let x_514 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_513.x, x_513.y, x_513.z, x_514.w);
  let x_516 : vec4<f32> = u_xlat1;
  let x_518 : vec4<f32> = u_xlat3;
  let x_520 : vec3<f32> = (vec3<f32>(x_516.x, x_516.y, x_516.z) * vec3<f32>(x_518.x, x_518.y, x_518.z));
  let x_521 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_520.x, x_520.y, x_520.z, x_521.w);
  let x_524 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_526 : f32 = x_490.unity_LightData.y;
  u_xlat24 = min(x_524, x_526);
  let x_529 : f32 = u_xlat24;
  u_xlatu24 = bitcast<u32>(i32(x_529));
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_541 : u32 = u_xlatu_loop_1;
    let x_542 : u32 = u_xlatu24;
    if ((x_541 < x_542)) {
    } else {
      break;
    }
    let x_545 : u32 = u_xlatu_loop_1;
    u_xlatu26 = (x_545 >> 2u);
    let x_548 : u32 = u_xlatu_loop_1;
    u_xlati27 = bitcast<i32>((x_548 & 3u));
    let x_551 : u32 = u_xlatu26;
    let x_554 : vec4<f32> = x_490.unity_LightIndices[bitcast<i32>(x_551)];
    let x_564 : i32 = u_xlati27;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_569 : vec4<u32> = indexable[x_564];
    u_xlat26 = dot(x_554, bitcast<vec4<f32>>(x_569));
    let x_573 : f32 = u_xlat26;
    u_xlati26 = i32(x_573);
    let x_575 : vec4<f32> = vs_TEXCOORD2;
    let x_588 : i32 = u_xlati26;
    let x_590 : vec4<f32> = x_587.x_AdditionalLightsPosition[x_588];
    let x_593 : i32 = u_xlati26;
    let x_595 : vec4<f32> = x_587.x_AdditionalLightsPosition[x_593];
    u_xlat6 = ((-(vec3<f32>(x_575.x, x_575.y, x_575.z)) * vec3<f32>(x_590.w, x_590.w, x_590.w)) + vec3<f32>(x_595.x, x_595.y, x_595.z));
    let x_599 : vec3<f32> = u_xlat6;
    let x_600 : vec3<f32> = u_xlat6;
    u_xlat27 = dot(x_599, x_600);
    let x_602 : f32 = u_xlat27;
    u_xlat27 = max(x_602, 6.10351562e-05f);
    let x_606 : f32 = u_xlat27;
    u_xlat28 = inverseSqrt(x_606);
    let x_608 : f32 = u_xlat28;
    let x_610 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_608, x_608, x_608) * x_610);
    let x_612 : f32 = u_xlat27;
    u_xlat28 = (1.0f / x_612);
    let x_614 : f32 = u_xlat27;
    let x_615 : i32 = u_xlati26;
    let x_617 : f32 = x_587.x_AdditionalLightsAttenuation[x_615].x;
    u_xlat27 = (x_614 * x_617);
    let x_619 : f32 = u_xlat27;
    let x_621 : f32 = u_xlat27;
    u_xlat27 = ((-(x_619) * x_621) + 1.0f);
    let x_624 : f32 = u_xlat27;
    u_xlat27 = max(x_624, 0.0f);
    let x_626 : f32 = u_xlat27;
    let x_627 : f32 = u_xlat27;
    u_xlat27 = (x_626 * x_627);
    let x_629 : f32 = u_xlat27;
    let x_630 : f32 = u_xlat28;
    u_xlat27 = (x_629 * x_630);
    let x_632 : i32 = u_xlati26;
    let x_634 : vec4<f32> = x_587.x_AdditionalLightsSpotDir[x_632];
    let x_636 : vec3<f32> = u_xlat6;
    u_xlat28 = dot(vec3<f32>(x_634.x, x_634.y, x_634.z), x_636);
    let x_638 : f32 = u_xlat28;
    let x_639 : i32 = u_xlati26;
    let x_641 : f32 = x_587.x_AdditionalLightsAttenuation[x_639].z;
    let x_643 : i32 = u_xlati26;
    let x_645 : f32 = x_587.x_AdditionalLightsAttenuation[x_643].w;
    u_xlat28 = ((x_638 * x_641) + x_645);
    let x_647 : f32 = u_xlat28;
    u_xlat28 = clamp(x_647, 0.0f, 1.0f);
    let x_649 : f32 = u_xlat28;
    let x_650 : f32 = u_xlat28;
    u_xlat28 = (x_649 * x_650);
    let x_652 : f32 = u_xlat27;
    let x_653 : f32 = u_xlat28;
    u_xlat27 = (x_652 * x_653);
    let x_656 : f32 = u_xlat27;
    let x_658 : i32 = u_xlati26;
    let x_660 : vec4<f32> = x_587.x_AdditionalLightsColor[x_658];
    u_xlat7 = (vec3<f32>(x_656, x_656, x_656) * vec3<f32>(x_660.x, x_660.y, x_660.z));
    let x_663 : vec3<f32> = u_xlat2;
    let x_664 : vec3<f32> = u_xlat6;
    u_xlat26 = dot(x_663, x_664);
    let x_666 : f32 = u_xlat26;
    u_xlat26 = clamp(x_666, 0.0f, 1.0f);
    let x_668 : f32 = u_xlat26;
    let x_670 : vec3<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_668, x_668, x_668) * x_670);
    let x_672 : vec3<f32> = u_xlat6;
    let x_673 : vec4<f32> = u_xlat1;
    let x_676 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_672 * vec3<f32>(x_673.x, x_673.y, x_673.z)) + x_676);

    continuing {
      let x_678 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_678 + bitcast<u32>(1i));
    }
  }
  let x_680 : vec4<f32> = u_xlat4;
  let x_682 : vec4<f32> = u_xlat1;
  let x_685 : vec4<f32> = u_xlat3;
  let x_687 : vec3<f32> = ((vec3<f32>(x_680.x, x_680.y, x_680.z) * vec3<f32>(x_682.x, x_682.y, x_682.z)) + vec3<f32>(x_685.x, x_685.y, x_685.z));
  let x_688 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_687.x, x_687.y, x_687.z, x_688.w);
  let x_690 : vec3<f32> = u_xlat5;
  let x_691 : vec4<f32> = u_xlat1;
  let x_693 : vec3<f32> = (x_690 + vec3<f32>(x_691.x, x_691.y, x_691.z));
  let x_694 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_693.x, x_693.y, x_693.z, x_694.w);
  let x_697 : f32 = u_xlat0.x;
  let x_699 : f32 = u_xlat0.x;
  u_xlat0.x = (x_697 * -(x_699));
  let x_704 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_704);
  let x_707 : vec4<f32> = u_xlat1;
  let x_710 : vec4<f32> = x_43.unity_FogColor;
  let x_713 : vec3<f32> = (vec3<f32>(x_707.x, x_707.y, x_707.z) + -(vec3<f32>(x_710.x, x_710.y, x_710.z)));
  let x_714 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_713.x, x_713.y, x_713.z, x_714.w);
  let x_718 : vec4<f32> = u_xlat0;
  let x_720 : vec4<f32> = u_xlat1;
  let x_724 : vec4<f32> = x_43.unity_FogColor;
  let x_726 : vec3<f32> = ((vec3<f32>(x_718.x, x_718.x, x_718.x) * vec3<f32>(x_720.x, x_720.y, x_720.z)) + vec3<f32>(x_724.x, x_724.y, x_724.z));
  let x_727 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_726.x, x_726.y, x_726.z, x_727.w);
  let x_729 : bool = u_xlatb16;
  let x_730 : f32 = u_xlat8;
  SV_Target0.w = select(1.0f, x_730, x_729);
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

