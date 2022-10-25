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
  unity_MatrixV : mat4x4<f32>,
}

struct UnityPerMaterial {
  x_BaseMap_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Surface : f32,
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

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(4) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

@group(1) @binding(3) var<uniform> x_42 : UnityPerMaterial;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_154 : MainLightShadows;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(5) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(2) var<uniform> x_477 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_580 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_60 : f32;
  var u_xlat8 : f32;
  var u_xlat16 : f32;
  var u_xlat24 : f32;
  var u_xlatb16 : bool;
  var x_110 : f32;
  var u_xlatb8 : bool;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlatb3 : vec4<bool>;
  var u_xlatu8 : u32;
  var u_xlati8 : i32;
  var txVec0 : vec3<f32>;
  var u_xlatb1 : bool;
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
  var x_728 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_35);
  u_xlat0 = x_36;
  let x_38 : vec4<f32> = u_xlat0;
  let x_46 : vec4<f32> = x_42.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_38.w, x_38.x, x_38.y, x_38.z) * vec4<f32>(x_46.w, x_46.x, x_46.y, x_46.z));
  let x_54 : f32 = u_xlat1.x;
  let x_57 : f32 = x_42.x_Cutoff;
  u_xlatb0 = (x_54 >= x_57);
  let x_59 : bool = u_xlatb0;
  if (x_59) {
    let x_64 : f32 = u_xlat1.x;
    x_60 = x_64;
  } else {
    x_60 = 0.0f;
  }
  let x_67 : f32 = x_60;
  u_xlat0.x = x_67;
  let x_72 : f32 = u_xlat0.w;
  let x_74 : f32 = x_42.x_BaseColor.w;
  let x_77 : f32 = x_42.x_Cutoff;
  u_xlat8 = ((x_72 * x_74) + -(x_77));
  let x_82 : f32 = u_xlat1.x;
  u_xlat16 = dpdxCoarse(x_82);
  let x_86 : f32 = u_xlat1.x;
  u_xlat24 = dpdyCoarse(x_86);
  let x_88 : f32 = u_xlat24;
  let x_90 : f32 = u_xlat16;
  u_xlat16 = (abs(x_88) + abs(x_90));
  let x_93 : f32 = u_xlat16;
  u_xlat16 = max(x_93, 0.0001f);
  let x_96 : f32 = u_xlat8;
  let x_97 : f32 = u_xlat16;
  u_xlat8 = (x_96 / x_97);
  let x_99 : f32 = u_xlat8;
  u_xlat8 = (x_99 + 0.5f);
  let x_102 : f32 = u_xlat8;
  u_xlat8 = clamp(x_102, 0.0f, 1.0f);
  let x_107 : f32 = x_28.x_AlphaToMaskAvailable;
  u_xlatb16 = !((x_107 == 0.0f));
  let x_109 : bool = u_xlatb16;
  if (x_109) {
    let x_113 : f32 = u_xlat8;
    x_110 = x_113;
  } else {
    let x_116 : f32 = u_xlat0.x;
    x_110 = x_116;
  }
  let x_117 : f32 = x_110;
  u_xlat0.x = x_117;
  let x_120 : f32 = u_xlat0.x;
  u_xlat8 = (x_120 + -0.0001f);
  let x_124 : f32 = u_xlat8;
  u_xlatb8 = (x_124 < 0.0f);
  let x_126 : bool = u_xlatb8;
  if (((select(0i, 1i, x_126) * -1i) != 0i)) {
    discard;
  }
  let x_136 : vec3<f32> = vs_TEXCOORD2;
  let x_137 : vec3<f32> = vs_TEXCOORD2;
  u_xlat8 = dot(x_136, x_137);
  let x_139 : f32 = u_xlat8;
  u_xlat8 = inverseSqrt(x_139);
  let x_143 : f32 = u_xlat8;
  let x_145 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_143, x_143, x_143) * x_145);
  let x_149 : vec3<f32> = vs_TEXCOORD1;
  let x_156 : vec4<f32> = x_154.x_CascadeShadowSplitSpheres0;
  let x_159 : vec3<f32> = (x_149 + -(vec3<f32>(x_156.x, x_156.y, x_156.z)));
  let x_160 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_159.x, x_159.y, x_159.z, x_160.w);
  let x_163 : vec3<f32> = vs_TEXCOORD1;
  let x_166 : vec4<f32> = x_154.x_CascadeShadowSplitSpheres1;
  let x_169 : vec3<f32> = (x_163 + -(vec3<f32>(x_166.x, x_166.y, x_166.z)));
  let x_170 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_169.x, x_169.y, x_169.z, x_170.w);
  let x_173 : vec3<f32> = vs_TEXCOORD1;
  let x_176 : vec4<f32> = x_154.x_CascadeShadowSplitSpheres2;
  u_xlat5 = (x_173 + -(vec3<f32>(x_176.x, x_176.y, x_176.z)));
  let x_181 : vec3<f32> = vs_TEXCOORD1;
  let x_183 : vec4<f32> = x_154.x_CascadeShadowSplitSpheres3;
  u_xlat6 = (x_181 + -(vec3<f32>(x_183.x, x_183.y, x_183.z)));
  let x_187 : vec4<f32> = u_xlat3;
  let x_189 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_187.x, x_187.y, x_187.z), vec3<f32>(x_189.x, x_189.y, x_189.z));
  let x_193 : vec4<f32> = u_xlat4;
  let x_195 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_193.x, x_193.y, x_193.z), vec3<f32>(x_195.x, x_195.y, x_195.z));
  let x_200 : vec3<f32> = u_xlat5;
  let x_201 : vec3<f32> = u_xlat5;
  u_xlat3.z = dot(x_200, x_201);
  let x_205 : vec3<f32> = u_xlat6;
  let x_206 : vec3<f32> = u_xlat6;
  u_xlat3.w = dot(x_205, x_206);
  let x_212 : vec4<f32> = u_xlat3;
  let x_215 : vec4<f32> = x_154.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_212 < x_215);
  let x_218 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_218);
  let x_222 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_222);
  let x_226 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_226);
  let x_230 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_230);
  let x_234 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_234);
  let x_240 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_240);
  let x_244 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_244);
  let x_247 : vec4<f32> = u_xlat3;
  let x_249 : vec4<f32> = u_xlat4;
  let x_251 : vec3<f32> = (vec3<f32>(x_247.x, x_247.y, x_247.z) + vec3<f32>(x_249.y, x_249.z, x_249.w));
  let x_252 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_251.x, x_251.y, x_251.z, x_252.w);
  let x_254 : vec4<f32> = u_xlat3;
  let x_257 : vec3<f32> = max(vec3<f32>(x_254.x, x_254.y, x_254.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_258 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_258.x, x_257.x, x_257.y, x_257.z);
  let x_260 : vec4<f32> = u_xlat4;
  u_xlat8 = dot(x_260, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_266 : f32 = u_xlat8;
  u_xlat8 = (-(x_266) + 4.0f);
  let x_271 : f32 = u_xlat8;
  u_xlatu8 = u32(x_271);
  let x_275 : u32 = u_xlatu8;
  u_xlati8 = (bitcast<i32>(x_275) << bitcast<u32>(2i));
  let x_278 : vec3<f32> = vs_TEXCOORD1;
  let x_280 : i32 = u_xlati8;
  let x_283 : i32 = u_xlati8;
  let x_287 : vec4<f32> = x_154.x_MainLightWorldToShadow[((x_280 + 1i) / 4i)][((x_283 + 1i) % 4i)];
  let x_289 : vec3<f32> = (vec3<f32>(x_278.y, x_278.y, x_278.y) * vec3<f32>(x_287.x, x_287.y, x_287.z));
  let x_290 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_289.x, x_289.y, x_289.z, x_290.w);
  let x_292 : i32 = u_xlati8;
  let x_294 : i32 = u_xlati8;
  let x_297 : vec4<f32> = x_154.x_MainLightWorldToShadow[(x_292 / 4i)][(x_294 % 4i)];
  let x_299 : vec3<f32> = vs_TEXCOORD1;
  let x_302 : vec4<f32> = u_xlat3;
  let x_304 : vec3<f32> = ((vec3<f32>(x_297.x, x_297.y, x_297.z) * vec3<f32>(x_299.x, x_299.x, x_299.x)) + vec3<f32>(x_302.x, x_302.y, x_302.z));
  let x_305 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_304.x, x_304.y, x_304.z, x_305.w);
  let x_307 : i32 = u_xlati8;
  let x_310 : i32 = u_xlati8;
  let x_314 : vec4<f32> = x_154.x_MainLightWorldToShadow[((x_307 + 2i) / 4i)][((x_310 + 2i) % 4i)];
  let x_316 : vec3<f32> = vs_TEXCOORD1;
  let x_319 : vec4<f32> = u_xlat3;
  let x_321 : vec3<f32> = ((vec3<f32>(x_314.x, x_314.y, x_314.z) * vec3<f32>(x_316.z, x_316.z, x_316.z)) + vec3<f32>(x_319.x, x_319.y, x_319.z));
  let x_322 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_321.x, x_321.y, x_321.z, x_322.w);
  let x_324 : vec4<f32> = u_xlat3;
  let x_326 : i32 = u_xlati8;
  let x_329 : i32 = u_xlati8;
  let x_333 : vec4<f32> = x_154.x_MainLightWorldToShadow[((x_326 + 3i) / 4i)][((x_329 + 3i) % 4i)];
  let x_335 : vec3<f32> = (vec3<f32>(x_324.x, x_324.y, x_324.z) + vec3<f32>(x_333.x, x_333.y, x_333.z));
  let x_336 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_335.x, x_335.y, x_335.z, x_336.w);
  let x_340 : f32 = vs_TEXCOORD1.y;
  let x_343 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat8 = (x_340 * x_343);
  let x_346 : f32 = x_28.unity_MatrixV[0i].z;
  let x_348 : f32 = vs_TEXCOORD1.x;
  let x_350 : f32 = u_xlat8;
  u_xlat8 = ((x_346 * x_348) + x_350);
  let x_353 : f32 = x_28.unity_MatrixV[2i].z;
  let x_355 : f32 = vs_TEXCOORD1.z;
  let x_357 : f32 = u_xlat8;
  u_xlat8 = ((x_353 * x_355) + x_357);
  let x_359 : f32 = u_xlat8;
  let x_361 : f32 = x_28.unity_MatrixV[3i].z;
  u_xlat8 = (x_359 + x_361);
  let x_363 : f32 = u_xlat8;
  let x_367 : f32 = x_28.x_ProjectionParams.y;
  u_xlat8 = (-(x_363) + -(x_367));
  let x_370 : f32 = u_xlat8;
  u_xlat8 = max(x_370, 0.0f);
  let x_372 : f32 = u_xlat8;
  let x_375 : f32 = x_28.unity_FogParams.x;
  u_xlat8 = (x_372 * x_375);
  let x_383 : vec2<f32> = vs_TEXCOORD7;
  let x_385 : f32 = x_28.x_GlobalMipBias.x;
  let x_386 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_383, x_385);
  let x_387 : vec3<f32> = vec3<f32>(x_386.x, x_386.y, x_386.z);
  let x_388 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_387.x, x_387.y, x_387.z, x_388.w);
  let x_391 : vec4<f32> = u_xlat3;
  let x_392 : vec2<f32> = vec2<f32>(x_391.x, x_391.y);
  let x_394 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_392.x, x_392.y, x_394);
  let x_406 : vec3<f32> = txVec0;
  let x_408 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_406.xy, x_406.z);
  u_xlat24 = x_408;
  let x_411 : f32 = x_154.x_MainLightShadowParams.x;
  u_xlat1.x = (-(x_411) + 1.0f);
  let x_415 : f32 = u_xlat24;
  let x_417 : f32 = x_154.x_MainLightShadowParams.x;
  let x_420 : f32 = u_xlat1.x;
  u_xlat24 = ((x_415 * x_417) + x_420);
  let x_424 : f32 = u_xlat3.z;
  u_xlatb1 = (0.0f >= x_424);
  let x_428 : f32 = u_xlat3.z;
  u_xlatb26 = (x_428 >= 1.0f);
  let x_430 : bool = u_xlatb1;
  let x_431 : bool = u_xlatb26;
  u_xlatb1 = (x_430 | x_431);
  let x_433 : bool = u_xlatb1;
  let x_434 : f32 = u_xlat24;
  u_xlat24 = select(x_434, 1.0f, x_433);
  let x_436 : vec3<f32> = vs_TEXCOORD1;
  let x_439 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_441 : vec3<f32> = (x_436 + -(x_439));
  let x_442 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_441.x, x_441.y, x_441.z, x_442.w);
  let x_444 : vec4<f32> = u_xlat3;
  let x_446 : vec4<f32> = u_xlat3;
  u_xlat1.x = dot(vec3<f32>(x_444.x, x_444.y, x_444.z), vec3<f32>(x_446.x, x_446.y, x_446.z));
  let x_451 : f32 = u_xlat1.x;
  let x_453 : f32 = x_154.x_MainLightShadowParams.z;
  let x_456 : f32 = x_154.x_MainLightShadowParams.w;
  u_xlat1.x = ((x_451 * x_453) + x_456);
  let x_460 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_460, 0.0f, 1.0f);
  let x_464 : f32 = u_xlat24;
  u_xlat26 = (-(x_464) + 1.0f);
  let x_468 : f32 = u_xlat1.x;
  let x_469 : f32 = u_xlat26;
  let x_471 : f32 = u_xlat24;
  u_xlat24 = ((x_468 * x_469) + x_471);
  let x_473 : f32 = u_xlat24;
  let x_479 : f32 = x_477.unity_LightData.z;
  u_xlat24 = (x_473 * x_479);
  let x_481 : f32 = u_xlat24;
  let x_484 : vec4<f32> = x_28.x_MainLightColor;
  let x_486 : vec3<f32> = (vec3<f32>(x_481, x_481, x_481) * vec3<f32>(x_484.x, x_484.y, x_484.z));
  let x_487 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_486.x, x_486.y, x_486.z, x_487.w);
  let x_489 : vec3<f32> = u_xlat2;
  let x_491 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat24 = dot(x_489, vec3<f32>(x_491.x, x_491.y, x_491.z));
  let x_494 : f32 = u_xlat24;
  u_xlat24 = clamp(x_494, 0.0f, 1.0f);
  let x_496 : f32 = u_xlat24;
  let x_498 : vec4<f32> = u_xlat3;
  let x_500 : vec3<f32> = (vec3<f32>(x_496, x_496, x_496) * vec3<f32>(x_498.x, x_498.y, x_498.z));
  let x_501 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_500.x, x_500.y, x_500.z, x_501.w);
  let x_503 : vec4<f32> = u_xlat1;
  let x_505 : vec4<f32> = u_xlat3;
  let x_507 : vec3<f32> = (vec3<f32>(x_503.y, x_503.z, x_503.w) * vec3<f32>(x_505.x, x_505.y, x_505.z));
  let x_508 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_507.x, x_507.y, x_507.z, x_508.w);
  let x_510 : vec4<f32> = u_xlat0;
  let x_512 : vec4<f32> = u_xlat3;
  let x_514 : vec3<f32> = (vec3<f32>(x_510.x, x_510.x, x_510.x) * vec3<f32>(x_512.x, x_512.y, x_512.z));
  let x_515 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_514.x, x_514.y, x_514.z, x_515.w);
  let x_518 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_520 : f32 = x_477.unity_LightData.y;
  u_xlat24 = min(x_518, x_520);
  let x_523 : f32 = u_xlat24;
  u_xlatu24 = bitcast<u32>(i32(x_523));
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_535 : u32 = u_xlatu_loop_1;
    let x_536 : u32 = u_xlatu24;
    if ((x_535 < x_536)) {
    } else {
      break;
    }
    let x_539 : u32 = u_xlatu_loop_1;
    u_xlatu26 = (x_539 >> 2u);
    let x_542 : u32 = u_xlatu_loop_1;
    u_xlati27 = bitcast<i32>((x_542 & 3u));
    let x_545 : u32 = u_xlatu26;
    let x_548 : vec4<f32> = x_477.unity_LightIndices[bitcast<i32>(x_545)];
    let x_558 : i32 = u_xlati27;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_563 : vec4<u32> = indexable[x_558];
    u_xlat26 = dot(x_548, bitcast<vec4<f32>>(x_563));
    let x_567 : f32 = u_xlat26;
    u_xlati26 = i32(x_567);
    let x_569 : vec3<f32> = vs_TEXCOORD1;
    let x_581 : i32 = u_xlati26;
    let x_583 : vec4<f32> = x_580.x_AdditionalLightsPosition[x_581];
    let x_586 : i32 = u_xlati26;
    let x_588 : vec4<f32> = x_580.x_AdditionalLightsPosition[x_586];
    u_xlat6 = ((-(x_569) * vec3<f32>(x_583.w, x_583.w, x_583.w)) + vec3<f32>(x_588.x, x_588.y, x_588.z));
    let x_592 : vec3<f32> = u_xlat6;
    let x_593 : vec3<f32> = u_xlat6;
    u_xlat27 = dot(x_592, x_593);
    let x_595 : f32 = u_xlat27;
    u_xlat27 = max(x_595, 6.10351562e-05f);
    let x_599 : f32 = u_xlat27;
    u_xlat28 = inverseSqrt(x_599);
    let x_601 : f32 = u_xlat28;
    let x_603 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_601, x_601, x_601) * x_603);
    let x_605 : f32 = u_xlat27;
    u_xlat28 = (1.0f / x_605);
    let x_607 : f32 = u_xlat27;
    let x_608 : i32 = u_xlati26;
    let x_610 : f32 = x_580.x_AdditionalLightsAttenuation[x_608].x;
    u_xlat27 = (x_607 * x_610);
    let x_612 : f32 = u_xlat27;
    let x_614 : f32 = u_xlat27;
    u_xlat27 = ((-(x_612) * x_614) + 1.0f);
    let x_617 : f32 = u_xlat27;
    u_xlat27 = max(x_617, 0.0f);
    let x_619 : f32 = u_xlat27;
    let x_620 : f32 = u_xlat27;
    u_xlat27 = (x_619 * x_620);
    let x_622 : f32 = u_xlat27;
    let x_623 : f32 = u_xlat28;
    u_xlat27 = (x_622 * x_623);
    let x_625 : i32 = u_xlati26;
    let x_627 : vec4<f32> = x_580.x_AdditionalLightsSpotDir[x_625];
    let x_629 : vec3<f32> = u_xlat6;
    u_xlat28 = dot(vec3<f32>(x_627.x, x_627.y, x_627.z), x_629);
    let x_631 : f32 = u_xlat28;
    let x_632 : i32 = u_xlati26;
    let x_634 : f32 = x_580.x_AdditionalLightsAttenuation[x_632].z;
    let x_636 : i32 = u_xlati26;
    let x_638 : f32 = x_580.x_AdditionalLightsAttenuation[x_636].w;
    u_xlat28 = ((x_631 * x_634) + x_638);
    let x_640 : f32 = u_xlat28;
    u_xlat28 = clamp(x_640, 0.0f, 1.0f);
    let x_642 : f32 = u_xlat28;
    let x_643 : f32 = u_xlat28;
    u_xlat28 = (x_642 * x_643);
    let x_645 : f32 = u_xlat27;
    let x_646 : f32 = u_xlat28;
    u_xlat27 = (x_645 * x_646);
    let x_649 : f32 = u_xlat27;
    let x_651 : i32 = u_xlati26;
    let x_653 : vec4<f32> = x_580.x_AdditionalLightsColor[x_651];
    u_xlat7 = (vec3<f32>(x_649, x_649, x_649) * vec3<f32>(x_653.x, x_653.y, x_653.z));
    let x_656 : vec3<f32> = u_xlat2;
    let x_657 : vec3<f32> = u_xlat6;
    u_xlat26 = dot(x_656, x_657);
    let x_659 : f32 = u_xlat26;
    u_xlat26 = clamp(x_659, 0.0f, 1.0f);
    let x_661 : f32 = u_xlat26;
    let x_663 : vec3<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_661, x_661, x_661) * x_663);
    let x_665 : vec4<f32> = u_xlat1;
    let x_667 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_665.y, x_665.z, x_665.w) * x_667);
    let x_669 : vec3<f32> = u_xlat6;
    let x_670 : vec4<f32> = u_xlat0;
    let x_673 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_669 * vec3<f32>(x_670.x, x_670.x, x_670.x)) + x_673);

    continuing {
      let x_675 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_675 + bitcast<u32>(1i));
    }
  }
  let x_677 : vec4<f32> = u_xlat4;
  let x_679 : vec4<f32> = u_xlat1;
  let x_682 : vec4<f32> = u_xlat3;
  let x_684 : vec3<f32> = ((vec3<f32>(x_677.x, x_677.y, x_677.z) * vec3<f32>(x_679.y, x_679.z, x_679.w)) + vec3<f32>(x_682.x, x_682.y, x_682.z));
  let x_685 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_684.x, x_684.y, x_684.z, x_685.w);
  let x_687 : vec3<f32> = u_xlat5;
  let x_688 : vec4<f32> = u_xlat1;
  let x_690 : vec3<f32> = (x_687 + vec3<f32>(x_688.x, x_688.y, x_688.z));
  let x_691 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_690.x, x_690.y, x_690.z, x_691.w);
  let x_693 : f32 = u_xlat8;
  let x_694 : f32 = u_xlat8;
  u_xlat8 = (x_693 * -(x_694));
  let x_697 : f32 = u_xlat8;
  u_xlat8 = exp2(x_697);
  let x_699 : vec4<f32> = u_xlat1;
  let x_702 : vec4<f32> = x_28.unity_FogColor;
  let x_705 : vec3<f32> = (vec3<f32>(x_699.x, x_699.y, x_699.z) + -(vec3<f32>(x_702.x, x_702.y, x_702.z)));
  let x_706 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_705.x, x_705.y, x_705.z, x_706.w);
  let x_710 : f32 = u_xlat8;
  let x_712 : vec4<f32> = u_xlat1;
  let x_716 : vec4<f32> = x_28.unity_FogColor;
  let x_718 : vec3<f32> = ((vec3<f32>(x_710, x_710, x_710) * vec3<f32>(x_712.x, x_712.y, x_712.z)) + vec3<f32>(x_716.x, x_716.y, x_716.z));
  let x_719 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_718.x, x_718.y, x_718.z, x_719.w);
  let x_722 : f32 = x_42.x_Surface;
  u_xlatb8 = (x_722 == 1.0f);
  let x_724 : bool = u_xlatb8;
  let x_725 : bool = u_xlatb16;
  u_xlatb8 = (x_724 | x_725);
  let x_727 : bool = u_xlatb8;
  if (x_727) {
    let x_732 : f32 = u_xlat0.x;
    x_728 = x_732;
  } else {
    x_728 = 1.0f;
  }
  let x_734 : f32 = x_728;
  SV_Target0.w = x_734;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD7_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

