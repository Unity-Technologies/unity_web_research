struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  x_AlphaToMaskAvailable : f32,
  @size(4)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
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

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(2) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

@group(1) @binding(3) var<uniform> x_41 : UnityPerMaterial;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_155 : MainLightShadows;

@group(1) @binding(2) var<uniform> x_348 : UnityPerDraw;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(3) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(1) var<uniform> x_608 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_59 : f32;
  var u_xlat8 : f32;
  var u_xlat16 : f32;
  var u_xlat24 : f32;
  var u_xlatb16 : bool;
  var x_109 : f32;
  var u_xlatb8 : bool;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlatb3 : vec4<bool>;
  var u_xlatu8 : u32;
  var u_xlati8 : i32;
  var txVec0 : vec3<f32>;
  var u_xlatb24 : bool;
  var u_xlatb1 : bool;
  var u_xlatu_loop_1 : u32;
  var u_xlatu1 : u32;
  var u_xlati26 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati1 : i32;
  var u_xlat26 : f32;
  var u_xlat27 : f32;
  var u_xlat7 : vec3<f32>;
  var x_738 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_34 : f32 = x_27.x_GlobalMipBias.x;
  let x_35 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_34);
  u_xlat0 = x_35;
  let x_37 : vec4<f32> = u_xlat0;
  let x_45 : vec4<f32> = x_41.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_37.w, x_37.x, x_37.y, x_37.z) * vec4<f32>(x_45.w, x_45.x, x_45.y, x_45.z));
  let x_53 : f32 = u_xlat1.x;
  let x_56 : f32 = x_41.x_Cutoff;
  u_xlatb0 = (x_53 >= x_56);
  let x_58 : bool = u_xlatb0;
  if (x_58) {
    let x_63 : f32 = u_xlat1.x;
    x_59 = x_63;
  } else {
    x_59 = 0.0f;
  }
  let x_66 : f32 = x_59;
  u_xlat0.x = x_66;
  let x_71 : f32 = u_xlat0.w;
  let x_73 : f32 = x_41.x_BaseColor.w;
  let x_76 : f32 = x_41.x_Cutoff;
  u_xlat8 = ((x_71 * x_73) + -(x_76));
  let x_81 : f32 = u_xlat1.x;
  u_xlat16 = dpdxCoarse(x_81);
  let x_85 : f32 = u_xlat1.x;
  u_xlat24 = dpdyCoarse(x_85);
  let x_87 : f32 = u_xlat24;
  let x_89 : f32 = u_xlat16;
  u_xlat16 = (abs(x_87) + abs(x_89));
  let x_92 : f32 = u_xlat16;
  u_xlat16 = max(x_92, 0.0001f);
  let x_95 : f32 = u_xlat8;
  let x_96 : f32 = u_xlat16;
  u_xlat8 = (x_95 / x_96);
  let x_98 : f32 = u_xlat8;
  u_xlat8 = (x_98 + 0.5f);
  let x_101 : f32 = u_xlat8;
  u_xlat8 = clamp(x_101, 0.0f, 1.0f);
  let x_106 : f32 = x_27.x_AlphaToMaskAvailable;
  u_xlatb16 = !((x_106 == 0.0f));
  let x_108 : bool = u_xlatb16;
  if (x_108) {
    let x_112 : f32 = u_xlat8;
    x_109 = x_112;
  } else {
    let x_115 : f32 = u_xlat0.x;
    x_109 = x_115;
  }
  let x_116 : f32 = x_109;
  u_xlat0.x = x_116;
  let x_119 : f32 = u_xlat0.x;
  u_xlat8 = (x_119 + -0.0001f);
  let x_123 : f32 = u_xlat8;
  u_xlatb8 = (x_123 < 0.0f);
  let x_125 : bool = u_xlatb8;
  if (((select(0i, 1i, x_125) * -1i) != 0i)) {
    discard;
  }
  let x_135 : vec3<f32> = vs_TEXCOORD2;
  let x_136 : vec3<f32> = vs_TEXCOORD2;
  u_xlat8 = dot(x_135, x_136);
  let x_138 : f32 = u_xlat8;
  u_xlat8 = inverseSqrt(x_138);
  let x_141 : f32 = u_xlat8;
  let x_143 : vec3<f32> = vs_TEXCOORD2;
  let x_144 : vec3<f32> = (vec3<f32>(x_141, x_141, x_141) * x_143);
  let x_145 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_144.x, x_144.y, x_144.z, x_145.w);
  let x_149 : vec3<f32> = vs_TEXCOORD1;
  let x_157 : vec4<f32> = x_155.x_CascadeShadowSplitSpheres0;
  let x_160 : vec3<f32> = (x_149 + -(vec3<f32>(x_157.x, x_157.y, x_157.z)));
  let x_161 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_160.x, x_160.y, x_160.z, x_161.w);
  let x_164 : vec3<f32> = vs_TEXCOORD1;
  let x_167 : vec4<f32> = x_155.x_CascadeShadowSplitSpheres1;
  let x_170 : vec3<f32> = (x_164 + -(vec3<f32>(x_167.x, x_167.y, x_167.z)));
  let x_171 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_170.x, x_170.y, x_170.z, x_171.w);
  let x_174 : vec3<f32> = vs_TEXCOORD1;
  let x_177 : vec4<f32> = x_155.x_CascadeShadowSplitSpheres2;
  let x_180 : vec3<f32> = (x_174 + -(vec3<f32>(x_177.x, x_177.y, x_177.z)));
  let x_181 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_180.x, x_180.y, x_180.z, x_181.w);
  let x_185 : vec3<f32> = vs_TEXCOORD1;
  let x_187 : vec4<f32> = x_155.x_CascadeShadowSplitSpheres3;
  u_xlat6 = (x_185 + -(vec3<f32>(x_187.x, x_187.y, x_187.z)));
  let x_191 : vec4<f32> = u_xlat3;
  let x_193 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_191.x, x_191.y, x_191.z), vec3<f32>(x_193.x, x_193.y, x_193.z));
  let x_197 : vec4<f32> = u_xlat4;
  let x_199 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_197.x, x_197.y, x_197.z), vec3<f32>(x_199.x, x_199.y, x_199.z));
  let x_204 : vec4<f32> = u_xlat5;
  let x_206 : vec4<f32> = u_xlat5;
  u_xlat3.z = dot(vec3<f32>(x_204.x, x_204.y, x_204.z), vec3<f32>(x_206.x, x_206.y, x_206.z));
  let x_211 : vec3<f32> = u_xlat6;
  let x_212 : vec3<f32> = u_xlat6;
  u_xlat3.w = dot(x_211, x_212);
  let x_218 : vec4<f32> = u_xlat3;
  let x_221 : vec4<f32> = x_155.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_218 < x_221);
  let x_224 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_224);
  let x_228 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_228);
  let x_232 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_232);
  let x_236 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_236);
  let x_240 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_240);
  let x_246 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_246);
  let x_250 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_250);
  let x_253 : vec4<f32> = u_xlat3;
  let x_255 : vec4<f32> = u_xlat4;
  let x_257 : vec3<f32> = (vec3<f32>(x_253.x, x_253.y, x_253.z) + vec3<f32>(x_255.y, x_255.z, x_255.w));
  let x_258 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_257.x, x_257.y, x_257.z, x_258.w);
  let x_260 : vec4<f32> = u_xlat3;
  let x_263 : vec3<f32> = max(vec3<f32>(x_260.x, x_260.y, x_260.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_264 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_264.x, x_263.x, x_263.y, x_263.z);
  let x_266 : vec4<f32> = u_xlat4;
  u_xlat8 = dot(x_266, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_272 : f32 = u_xlat8;
  u_xlat8 = (-(x_272) + 4.0f);
  let x_277 : f32 = u_xlat8;
  u_xlatu8 = u32(x_277);
  let x_281 : u32 = u_xlatu8;
  u_xlati8 = (bitcast<i32>(x_281) << bitcast<u32>(2i));
  let x_284 : vec3<f32> = vs_TEXCOORD1;
  let x_286 : i32 = u_xlati8;
  let x_289 : i32 = u_xlati8;
  let x_293 : vec4<f32> = x_155.x_MainLightWorldToShadow[((x_286 + 1i) / 4i)][((x_289 + 1i) % 4i)];
  let x_295 : vec3<f32> = (vec3<f32>(x_284.y, x_284.y, x_284.y) * vec3<f32>(x_293.x, x_293.y, x_293.z));
  let x_296 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_295.x, x_295.y, x_295.z, x_296.w);
  let x_298 : i32 = u_xlati8;
  let x_300 : i32 = u_xlati8;
  let x_303 : vec4<f32> = x_155.x_MainLightWorldToShadow[(x_298 / 4i)][(x_300 % 4i)];
  let x_305 : vec3<f32> = vs_TEXCOORD1;
  let x_308 : vec4<f32> = u_xlat3;
  let x_310 : vec3<f32> = ((vec3<f32>(x_303.x, x_303.y, x_303.z) * vec3<f32>(x_305.x, x_305.x, x_305.x)) + vec3<f32>(x_308.x, x_308.y, x_308.z));
  let x_311 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_310.x, x_310.y, x_310.z, x_311.w);
  let x_313 : i32 = u_xlati8;
  let x_316 : i32 = u_xlati8;
  let x_320 : vec4<f32> = x_155.x_MainLightWorldToShadow[((x_313 + 2i) / 4i)][((x_316 + 2i) % 4i)];
  let x_322 : vec3<f32> = vs_TEXCOORD1;
  let x_325 : vec4<f32> = u_xlat3;
  let x_327 : vec3<f32> = ((vec3<f32>(x_320.x, x_320.y, x_320.z) * vec3<f32>(x_322.z, x_322.z, x_322.z)) + vec3<f32>(x_325.x, x_325.y, x_325.z));
  let x_328 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_327.x, x_327.y, x_327.z, x_328.w);
  let x_330 : vec4<f32> = u_xlat3;
  let x_332 : i32 = u_xlati8;
  let x_335 : i32 = u_xlati8;
  let x_339 : vec4<f32> = x_155.x_MainLightWorldToShadow[((x_332 + 3i) / 4i)][((x_335 + 3i) % 4i)];
  let x_341 : vec3<f32> = (vec3<f32>(x_330.x, x_330.y, x_330.z) + vec3<f32>(x_339.x, x_339.y, x_339.z));
  let x_342 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_341.x, x_341.y, x_341.z, x_342.w);
  u_xlat2.w = 1.0f;
  let x_351 : vec4<f32> = x_348.unity_SHAr;
  let x_352 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_351, x_352);
  let x_357 : vec4<f32> = x_348.unity_SHAg;
  let x_358 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_357, x_358);
  let x_363 : vec4<f32> = x_348.unity_SHAb;
  let x_364 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_363, x_364);
  let x_367 : vec4<f32> = u_xlat2;
  let x_369 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_367.y, x_367.z, x_367.z, x_367.x) * vec4<f32>(x_369.x, x_369.y, x_369.z, x_369.z));
  let x_374 : vec4<f32> = x_348.unity_SHBr;
  let x_375 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_374, x_375);
  let x_380 : vec4<f32> = x_348.unity_SHBg;
  let x_381 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_380, x_381);
  let x_386 : vec4<f32> = x_348.unity_SHBb;
  let x_387 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_386, x_387);
  let x_391 : f32 = u_xlat2.y;
  let x_393 : f32 = u_xlat2.y;
  u_xlat8 = (x_391 * x_393);
  let x_396 : f32 = u_xlat2.x;
  let x_398 : f32 = u_xlat2.x;
  let x_400 : f32 = u_xlat8;
  u_xlat8 = ((x_396 * x_398) + -(x_400));
  let x_405 : vec4<f32> = x_348.unity_SHC;
  let x_407 : f32 = u_xlat8;
  let x_410 : vec3<f32> = u_xlat6;
  let x_411 : vec3<f32> = ((vec3<f32>(x_405.x, x_405.y, x_405.z) * vec3<f32>(x_407, x_407, x_407)) + x_410);
  let x_412 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_411.x, x_411.y, x_411.z, x_412.w);
  let x_414 : vec4<f32> = u_xlat4;
  let x_416 : vec4<f32> = u_xlat5;
  let x_418 : vec3<f32> = (vec3<f32>(x_414.x, x_414.y, x_414.z) + vec3<f32>(x_416.x, x_416.y, x_416.z));
  let x_419 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_418.x, x_418.y, x_418.z, x_419.w);
  let x_421 : vec4<f32> = u_xlat4;
  let x_423 : vec3<f32> = max(vec3<f32>(x_421.x, x_421.y, x_421.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_424 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_423.x, x_423.y, x_423.z, x_424.w);
  let x_427 : vec4<f32> = u_xlat3;
  let x_428 : vec2<f32> = vec2<f32>(x_427.x, x_427.y);
  let x_430 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_428.x, x_428.y, x_430);
  let x_442 : vec3<f32> = txVec0;
  let x_444 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_442.xy, x_442.z);
  u_xlat8 = x_444;
  let x_447 : f32 = x_155.x_MainLightShadowParams.x;
  u_xlat24 = (-(x_447) + 1.0f);
  let x_450 : f32 = u_xlat8;
  let x_452 : f32 = x_155.x_MainLightShadowParams.x;
  let x_454 : f32 = u_xlat24;
  u_xlat8 = ((x_450 * x_452) + x_454);
  let x_458 : f32 = u_xlat3.z;
  u_xlatb24 = (0.0f >= x_458);
  let x_462 : f32 = u_xlat3.z;
  u_xlatb1 = (x_462 >= 1.0f);
  let x_464 : bool = u_xlatb24;
  let x_465 : bool = u_xlatb1;
  u_xlatb24 = (x_464 | x_465);
  let x_467 : bool = u_xlatb24;
  let x_468 : f32 = u_xlat8;
  u_xlat8 = select(x_468, 1.0f, x_467);
  let x_470 : vec3<f32> = vs_TEXCOORD1;
  let x_473 : vec3<f32> = x_27.x_WorldSpaceCameraPos;
  let x_475 : vec3<f32> = (x_470 + -(x_473));
  let x_476 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_475.x, x_475.y, x_475.z, x_476.w);
  let x_478 : vec4<f32> = u_xlat3;
  let x_480 : vec4<f32> = u_xlat3;
  u_xlat24 = dot(vec3<f32>(x_478.x, x_478.y, x_478.z), vec3<f32>(x_480.x, x_480.y, x_480.z));
  let x_483 : f32 = u_xlat24;
  let x_485 : f32 = x_155.x_MainLightShadowParams.z;
  let x_488 : f32 = x_155.x_MainLightShadowParams.w;
  u_xlat24 = ((x_483 * x_485) + x_488);
  let x_490 : f32 = u_xlat24;
  u_xlat24 = clamp(x_490, 0.0f, 1.0f);
  let x_492 : f32 = u_xlat8;
  u_xlat1.x = (-(x_492) + 1.0f);
  let x_496 : f32 = u_xlat24;
  let x_498 : f32 = u_xlat1.x;
  let x_500 : f32 = u_xlat8;
  u_xlat8 = ((x_496 * x_498) + x_500);
  let x_502 : f32 = u_xlat8;
  let x_504 : f32 = x_348.unity_LightData.z;
  u_xlat8 = (x_502 * x_504);
  let x_506 : f32 = u_xlat8;
  let x_509 : vec4<f32> = x_27.x_MainLightColor;
  let x_511 : vec3<f32> = (vec3<f32>(x_506, x_506, x_506) * vec3<f32>(x_509.x, x_509.y, x_509.z));
  let x_512 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_511.x, x_511.y, x_511.z, x_512.w);
  let x_514 : vec4<f32> = u_xlat2;
  let x_517 : vec4<f32> = x_27.x_MainLightPosition;
  u_xlat8 = dot(vec3<f32>(x_514.x, x_514.y, x_514.z), vec3<f32>(x_517.x, x_517.y, x_517.z));
  let x_520 : f32 = u_xlat8;
  u_xlat8 = clamp(x_520, 0.0f, 1.0f);
  let x_522 : f32 = u_xlat8;
  let x_524 : vec4<f32> = u_xlat3;
  let x_526 : vec3<f32> = (vec3<f32>(x_522, x_522, x_522) * vec3<f32>(x_524.x, x_524.y, x_524.z));
  let x_527 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_526.x, x_526.y, x_526.z, x_527.w);
  let x_529 : vec4<f32> = u_xlat1;
  let x_531 : vec4<f32> = u_xlat3;
  let x_533 : vec3<f32> = (vec3<f32>(x_529.y, x_529.z, x_529.w) * vec3<f32>(x_531.x, x_531.y, x_531.z));
  let x_534 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_533.x, x_533.y, x_533.z, x_534.w);
  let x_536 : vec4<f32> = u_xlat0;
  let x_538 : vec4<f32> = u_xlat3;
  let x_540 : vec3<f32> = (vec3<f32>(x_536.x, x_536.x, x_536.x) * vec3<f32>(x_538.x, x_538.y, x_538.z));
  let x_541 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_540.x, x_540.y, x_540.z, x_541.w);
  let x_544 : f32 = x_27.x_AdditionalLightsCount.x;
  let x_546 : f32 = x_348.unity_LightData.y;
  u_xlat8 = min(x_544, x_546);
  let x_548 : f32 = u_xlat8;
  u_xlatu8 = bitcast<u32>(i32(x_548));
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_560 : u32 = u_xlatu_loop_1;
    let x_561 : u32 = u_xlatu8;
    if ((x_560 < x_561)) {
    } else {
      break;
    }
    let x_564 : u32 = u_xlatu_loop_1;
    u_xlatu1 = (x_564 >> 2u);
    let x_567 : u32 = u_xlatu_loop_1;
    u_xlati26 = bitcast<i32>((x_567 & 3u));
    let x_571 : u32 = u_xlatu1;
    let x_574 : vec4<f32> = x_348.unity_LightIndices[bitcast<i32>(x_571)];
    let x_584 : i32 = u_xlati26;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_589 : vec4<u32> = indexable[x_584];
    u_xlat1.x = dot(x_574, bitcast<vec4<f32>>(x_589));
    let x_595 : f32 = u_xlat1.x;
    u_xlati1 = i32(x_595);
    let x_597 : vec3<f32> = vs_TEXCOORD1;
    let x_609 : i32 = u_xlati1;
    let x_611 : vec4<f32> = x_608.x_AdditionalLightsPosition[x_609];
    let x_614 : i32 = u_xlati1;
    let x_616 : vec4<f32> = x_608.x_AdditionalLightsPosition[x_614];
    u_xlat6 = ((-(x_597) * vec3<f32>(x_611.w, x_611.w, x_611.w)) + vec3<f32>(x_616.x, x_616.y, x_616.z));
    let x_620 : vec3<f32> = u_xlat6;
    let x_621 : vec3<f32> = u_xlat6;
    u_xlat26 = dot(x_620, x_621);
    let x_623 : f32 = u_xlat26;
    u_xlat26 = max(x_623, 6.10351562e-05f);
    let x_627 : f32 = u_xlat26;
    u_xlat27 = inverseSqrt(x_627);
    let x_629 : f32 = u_xlat27;
    let x_631 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_629, x_629, x_629) * x_631);
    let x_633 : f32 = u_xlat26;
    u_xlat27 = (1.0f / x_633);
    let x_635 : f32 = u_xlat26;
    let x_636 : i32 = u_xlati1;
    let x_638 : f32 = x_608.x_AdditionalLightsAttenuation[x_636].x;
    u_xlat26 = (x_635 * x_638);
    let x_640 : f32 = u_xlat26;
    let x_642 : f32 = u_xlat26;
    u_xlat26 = ((-(x_640) * x_642) + 1.0f);
    let x_645 : f32 = u_xlat26;
    u_xlat26 = max(x_645, 0.0f);
    let x_647 : f32 = u_xlat26;
    let x_648 : f32 = u_xlat26;
    u_xlat26 = (x_647 * x_648);
    let x_650 : f32 = u_xlat26;
    let x_651 : f32 = u_xlat27;
    u_xlat26 = (x_650 * x_651);
    let x_653 : i32 = u_xlati1;
    let x_655 : vec4<f32> = x_608.x_AdditionalLightsSpotDir[x_653];
    let x_657 : vec3<f32> = u_xlat6;
    u_xlat27 = dot(vec3<f32>(x_655.x, x_655.y, x_655.z), x_657);
    let x_659 : f32 = u_xlat27;
    let x_660 : i32 = u_xlati1;
    let x_662 : f32 = x_608.x_AdditionalLightsAttenuation[x_660].z;
    let x_664 : i32 = u_xlati1;
    let x_666 : f32 = x_608.x_AdditionalLightsAttenuation[x_664].w;
    u_xlat27 = ((x_659 * x_662) + x_666);
    let x_668 : f32 = u_xlat27;
    u_xlat27 = clamp(x_668, 0.0f, 1.0f);
    let x_670 : f32 = u_xlat27;
    let x_671 : f32 = u_xlat27;
    u_xlat27 = (x_670 * x_671);
    let x_673 : f32 = u_xlat26;
    let x_674 : f32 = u_xlat27;
    u_xlat26 = (x_673 * x_674);
    let x_677 : f32 = u_xlat26;
    let x_679 : i32 = u_xlati1;
    let x_681 : vec4<f32> = x_608.x_AdditionalLightsColor[x_679];
    u_xlat7 = (vec3<f32>(x_677, x_677, x_677) * vec3<f32>(x_681.x, x_681.y, x_681.z));
    let x_684 : vec4<f32> = u_xlat2;
    let x_686 : vec3<f32> = u_xlat6;
    u_xlat1.x = dot(vec3<f32>(x_684.x, x_684.y, x_684.z), x_686);
    let x_690 : f32 = u_xlat1.x;
    u_xlat1.x = clamp(x_690, 0.0f, 1.0f);
    let x_693 : vec4<f32> = u_xlat1;
    let x_695 : vec3<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_693.x, x_693.x, x_693.x) * x_695);
    let x_697 : vec4<f32> = u_xlat1;
    let x_699 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_697.y, x_697.z, x_697.w) * x_699);
    let x_701 : vec3<f32> = u_xlat6;
    let x_702 : vec4<f32> = u_xlat0;
    let x_705 : vec4<f32> = u_xlat5;
    let x_707 : vec3<f32> = ((x_701 * vec3<f32>(x_702.x, x_702.x, x_702.x)) + vec3<f32>(x_705.x, x_705.y, x_705.z));
    let x_708 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_707.x, x_707.y, x_707.z, x_708.w);

    continuing {
      let x_710 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_710 + bitcast<u32>(1i));
    }
  }
  let x_712 : vec4<f32> = u_xlat4;
  let x_714 : vec4<f32> = u_xlat1;
  let x_717 : vec4<f32> = u_xlat3;
  let x_719 : vec3<f32> = ((vec3<f32>(x_712.x, x_712.y, x_712.z) * vec3<f32>(x_714.y, x_714.z, x_714.w)) + vec3<f32>(x_717.x, x_717.y, x_717.z));
  let x_720 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_719.x, x_719.y, x_719.z, x_720.w);
  let x_724 : vec4<f32> = u_xlat5;
  let x_726 : vec4<f32> = u_xlat1;
  let x_728 : vec3<f32> = (vec3<f32>(x_724.x, x_724.y, x_724.z) + vec3<f32>(x_726.x, x_726.y, x_726.z));
  let x_729 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_728.x, x_728.y, x_728.z, x_729.w);
  let x_732 : f32 = x_41.x_Surface;
  u_xlatb8 = (x_732 == 1.0f);
  let x_734 : bool = u_xlatb8;
  let x_735 : bool = u_xlatb16;
  u_xlatb8 = (x_734 | x_735);
  let x_737 : bool = u_xlatb8;
  if (x_737) {
    let x_742 : f32 = u_xlat0.x;
    x_738 = x_742;
  } else {
    x_738 = 1.0f;
  }
  let x_744 : f32 = x_738;
  SV_Target0.w = x_744;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

