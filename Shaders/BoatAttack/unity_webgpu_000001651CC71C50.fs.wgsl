struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  x_AlphaToMaskAvailable : f32,
  @size(4)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
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

@group(0) @binding(3) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

@group(0) @binding(2) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_184 : UnityPerDraw;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_244 : MainLightShadows;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(4) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(1) var<uniform> x_714 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_74 : f32;
  var u_xlat8 : vec3<f32>;
  var u_xlat16 : f32;
  var u_xlat24 : f32;
  var u_xlatb16 : bool;
  var x_130 : f32;
  var u_xlatb8 : bool;
  var u_xlatb24 : bool;
  var x_190 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlatb3 : vec4<bool>;
  var u_xlatu8 : u32;
  var u_xlati8 : i32;
  var txVec0 : vec3<f32>;
  var u_xlatb1 : bool;
  var x_559 : f32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu1 : u32;
  var u_xlati26 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati1 : i32;
  var u_xlat26 : f32;
  var u_xlat27 : f32;
  var u_xlat7 : vec3<f32>;
  var x_844 : f32;
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
  let x_50 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_40, x_49);
  u_xlat0 = x_50;
  let x_52 : vec4<f32> = u_xlat0;
  let x_60 : vec4<f32> = x_56.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_52.w, x_52.x, x_52.y, x_52.z) * vec4<f32>(x_60.w, x_60.x, x_60.y, x_60.z));
  let x_68 : f32 = u_xlat1.x;
  let x_71 : f32 = x_56.x_Cutoff;
  u_xlatb0 = (x_68 >= x_71);
  let x_73 : bool = u_xlatb0;
  if (x_73) {
    let x_78 : f32 = u_xlat1.x;
    x_74 = x_78;
  } else {
    x_74 = 0.0f;
  }
  let x_81 : f32 = x_74;
  u_xlat0.x = x_81;
  let x_86 : f32 = u_xlat0.w;
  let x_88 : f32 = x_56.x_BaseColor.w;
  let x_91 : f32 = x_56.x_Cutoff;
  u_xlat8.x = ((x_86 * x_88) + -(x_91));
  let x_97 : f32 = u_xlat1.x;
  u_xlat16 = dpdxCoarse(x_97);
  let x_101 : f32 = u_xlat1.x;
  u_xlat24 = dpdyCoarse(x_101);
  let x_103 : f32 = u_xlat24;
  let x_105 : f32 = u_xlat16;
  u_xlat16 = (abs(x_103) + abs(x_105));
  let x_108 : f32 = u_xlat16;
  u_xlat16 = max(x_108, 0.0001f);
  let x_112 : f32 = u_xlat8.x;
  let x_113 : f32 = u_xlat16;
  u_xlat8.x = (x_112 / x_113);
  let x_117 : f32 = u_xlat8.x;
  u_xlat8.x = (x_117 + 0.5f);
  let x_122 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_122, 0.0f, 1.0f);
  let x_127 : f32 = x_43.x_AlphaToMaskAvailable;
  u_xlatb16 = !((x_127 == 0.0f));
  let x_129 : bool = u_xlatb16;
  if (x_129) {
    let x_134 : f32 = u_xlat8.x;
    x_130 = x_134;
  } else {
    let x_137 : f32 = u_xlat0.x;
    x_130 = x_137;
  }
  let x_138 : f32 = x_130;
  u_xlat0.x = x_138;
  let x_141 : f32 = u_xlat0.x;
  u_xlat8.x = (x_141 + -0.0001f);
  let x_147 : f32 = u_xlat8.x;
  u_xlatb8 = (x_147 < 0.0f);
  let x_149 : bool = u_xlatb8;
  if (((select(0i, 1i, x_149) * -1i) != 0i)) {
    discard;
  }
  let x_157 : vec4<f32> = hlslcc_FragCoord;
  let x_161 : f32 = x_43.x_DitheringTextureInvSize;
  let x_163 : vec2<f32> = (vec2<f32>(x_157.x, x_157.y) * vec2<f32>(x_161, x_161));
  let x_164 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_163.x, x_164.y, x_163.y);
  let x_171 : vec3<f32> = u_xlat8;
  let x_174 : f32 = x_43.x_GlobalMipBias.x;
  let x_175 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_171.x, x_171.z), x_174);
  u_xlat8.x = x_175.w;
  let x_187 : f32 = x_184.unity_LODFade.x;
  u_xlatb24 = (x_187 >= 0.0f);
  let x_189 : bool = u_xlatb24;
  if (x_189) {
    let x_194 : f32 = u_xlat8.x;
    x_190 = abs(x_194);
  } else {
    let x_198 : f32 = u_xlat8.x;
    x_190 = -(abs(x_198));
  }
  let x_201 : f32 = x_190;
  u_xlat8.x = x_201;
  let x_204 : f32 = u_xlat8.x;
  let x_207 : f32 = x_184.unity_LODFade.x;
  u_xlat8.x = (-(x_204) + x_207);
  let x_211 : f32 = u_xlat8.x;
  u_xlatb8 = (x_211 < 0.0f);
  let x_213 : bool = u_xlatb8;
  if (((select(0i, 1i, x_213) * -1i) != 0i)) {
    discard;
  }
  let x_222 : vec3<f32> = vs_TEXCOORD2;
  let x_223 : vec3<f32> = vs_TEXCOORD2;
  u_xlat8.x = dot(x_222, x_223);
  let x_227 : f32 = u_xlat8.x;
  u_xlat8.x = inverseSqrt(x_227);
  let x_231 : vec3<f32> = u_xlat8;
  let x_233 : vec3<f32> = vs_TEXCOORD2;
  let x_234 : vec3<f32> = (vec3<f32>(x_231.x, x_231.x, x_231.x) * x_233);
  let x_235 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_234.x, x_234.y, x_234.z, x_235.w);
  let x_239 : vec3<f32> = vs_TEXCOORD1;
  let x_246 : vec4<f32> = x_244.x_CascadeShadowSplitSpheres0;
  let x_249 : vec3<f32> = (x_239 + -(vec3<f32>(x_246.x, x_246.y, x_246.z)));
  let x_250 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_249.x, x_249.y, x_249.z, x_250.w);
  let x_253 : vec3<f32> = vs_TEXCOORD1;
  let x_255 : vec4<f32> = x_244.x_CascadeShadowSplitSpheres1;
  let x_258 : vec3<f32> = (x_253 + -(vec3<f32>(x_255.x, x_255.y, x_255.z)));
  let x_259 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_258.x, x_258.y, x_258.z, x_259.w);
  let x_262 : vec3<f32> = vs_TEXCOORD1;
  let x_265 : vec4<f32> = x_244.x_CascadeShadowSplitSpheres2;
  let x_268 : vec3<f32> = (x_262 + -(vec3<f32>(x_265.x, x_265.y, x_265.z)));
  let x_269 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_268.x, x_268.y, x_268.z, x_269.w);
  let x_272 : vec3<f32> = vs_TEXCOORD1;
  let x_274 : vec4<f32> = x_244.x_CascadeShadowSplitSpheres3;
  u_xlat6 = (x_272 + -(vec3<f32>(x_274.x, x_274.y, x_274.z)));
  let x_278 : vec4<f32> = u_xlat3;
  let x_280 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_278.x, x_278.y, x_278.z), vec3<f32>(x_280.x, x_280.y, x_280.z));
  let x_284 : vec4<f32> = u_xlat4;
  let x_286 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_284.x, x_284.y, x_284.z), vec3<f32>(x_286.x, x_286.y, x_286.z));
  let x_291 : vec4<f32> = u_xlat5;
  let x_293 : vec4<f32> = u_xlat5;
  u_xlat3.z = dot(vec3<f32>(x_291.x, x_291.y, x_291.z), vec3<f32>(x_293.x, x_293.y, x_293.z));
  let x_297 : vec3<f32> = u_xlat6;
  let x_298 : vec3<f32> = u_xlat6;
  u_xlat3.w = dot(x_297, x_298);
  let x_304 : vec4<f32> = u_xlat3;
  let x_307 : vec4<f32> = x_244.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_304 < x_307);
  let x_310 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_310);
  let x_314 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_314);
  let x_318 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_318);
  let x_322 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_322);
  let x_326 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_326);
  let x_332 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_332);
  let x_336 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_336);
  let x_339 : vec4<f32> = u_xlat3;
  let x_341 : vec4<f32> = u_xlat4;
  let x_343 : vec3<f32> = (vec3<f32>(x_339.x, x_339.y, x_339.z) + vec3<f32>(x_341.y, x_341.z, x_341.w));
  let x_344 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_343.x, x_343.y, x_343.z, x_344.w);
  let x_346 : vec4<f32> = u_xlat3;
  let x_349 : vec3<f32> = max(vec3<f32>(x_346.x, x_346.y, x_346.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_350 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_350.x, x_349.x, x_349.y, x_349.z);
  let x_352 : vec4<f32> = u_xlat4;
  u_xlat8.x = dot(x_352, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_360 : f32 = u_xlat8.x;
  u_xlat8.x = (-(x_360) + 4.0f);
  let x_367 : f32 = u_xlat8.x;
  u_xlatu8 = u32(x_367);
  let x_371 : u32 = u_xlatu8;
  u_xlati8 = (bitcast<i32>(x_371) << bitcast<u32>(2i));
  let x_374 : vec3<f32> = vs_TEXCOORD1;
  let x_376 : i32 = u_xlati8;
  let x_379 : i32 = u_xlati8;
  let x_383 : vec4<f32> = x_244.x_MainLightWorldToShadow[((x_376 + 1i) / 4i)][((x_379 + 1i) % 4i)];
  let x_385 : vec3<f32> = (vec3<f32>(x_374.y, x_374.y, x_374.y) * vec3<f32>(x_383.x, x_383.y, x_383.z));
  let x_386 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_385.x, x_385.y, x_385.z, x_386.w);
  let x_388 : i32 = u_xlati8;
  let x_390 : i32 = u_xlati8;
  let x_393 : vec4<f32> = x_244.x_MainLightWorldToShadow[(x_388 / 4i)][(x_390 % 4i)];
  let x_395 : vec3<f32> = vs_TEXCOORD1;
  let x_398 : vec4<f32> = u_xlat3;
  let x_400 : vec3<f32> = ((vec3<f32>(x_393.x, x_393.y, x_393.z) * vec3<f32>(x_395.x, x_395.x, x_395.x)) + vec3<f32>(x_398.x, x_398.y, x_398.z));
  let x_401 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_400.x, x_400.y, x_400.z, x_401.w);
  let x_403 : i32 = u_xlati8;
  let x_406 : i32 = u_xlati8;
  let x_410 : vec4<f32> = x_244.x_MainLightWorldToShadow[((x_403 + 2i) / 4i)][((x_406 + 2i) % 4i)];
  let x_412 : vec3<f32> = vs_TEXCOORD1;
  let x_415 : vec4<f32> = u_xlat3;
  let x_417 : vec3<f32> = ((vec3<f32>(x_410.x, x_410.y, x_410.z) * vec3<f32>(x_412.z, x_412.z, x_412.z)) + vec3<f32>(x_415.x, x_415.y, x_415.z));
  let x_418 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_417.x, x_417.y, x_417.z, x_418.w);
  let x_420 : vec4<f32> = u_xlat3;
  let x_422 : i32 = u_xlati8;
  let x_425 : i32 = u_xlati8;
  let x_429 : vec4<f32> = x_244.x_MainLightWorldToShadow[((x_422 + 3i) / 4i)][((x_425 + 3i) % 4i)];
  let x_431 : vec3<f32> = (vec3<f32>(x_420.x, x_420.y, x_420.z) + vec3<f32>(x_429.x, x_429.y, x_429.z));
  let x_432 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_431.x, x_431.y, x_431.z, x_432.w);
  u_xlat2.w = 1.0f;
  let x_437 : vec4<f32> = x_184.unity_SHAr;
  let x_438 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_437, x_438);
  let x_443 : vec4<f32> = x_184.unity_SHAg;
  let x_444 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_443, x_444);
  let x_449 : vec4<f32> = x_184.unity_SHAb;
  let x_450 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_449, x_450);
  let x_453 : vec4<f32> = u_xlat2;
  let x_455 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_453.y, x_453.z, x_453.z, x_453.x) * vec4<f32>(x_455.x, x_455.y, x_455.z, x_455.z));
  let x_460 : vec4<f32> = x_184.unity_SHBr;
  let x_461 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_460, x_461);
  let x_466 : vec4<f32> = x_184.unity_SHBg;
  let x_467 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_466, x_467);
  let x_472 : vec4<f32> = x_184.unity_SHBb;
  let x_473 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_472, x_473);
  let x_477 : f32 = u_xlat2.y;
  let x_479 : f32 = u_xlat2.y;
  u_xlat8.x = (x_477 * x_479);
  let x_483 : f32 = u_xlat2.x;
  let x_485 : f32 = u_xlat2.x;
  let x_488 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_483 * x_485) + -(x_488));
  let x_494 : vec4<f32> = x_184.unity_SHC;
  let x_496 : vec3<f32> = u_xlat8;
  let x_499 : vec3<f32> = u_xlat6;
  let x_500 : vec3<f32> = ((vec3<f32>(x_494.x, x_494.y, x_494.z) * vec3<f32>(x_496.x, x_496.x, x_496.x)) + x_499);
  let x_501 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_500.x, x_500.y, x_500.z, x_501.w);
  let x_503 : vec4<f32> = u_xlat4;
  let x_505 : vec4<f32> = u_xlat5;
  let x_507 : vec3<f32> = (vec3<f32>(x_503.x, x_503.y, x_503.z) + vec3<f32>(x_505.x, x_505.y, x_505.z));
  let x_508 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_507.x, x_507.y, x_507.z, x_508.w);
  let x_510 : vec4<f32> = u_xlat4;
  let x_512 : vec3<f32> = max(vec3<f32>(x_510.x, x_510.y, x_510.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_513 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_512.x, x_512.y, x_512.z, x_513.w);
  let x_516 : vec4<f32> = u_xlat3;
  let x_517 : vec2<f32> = vec2<f32>(x_516.x, x_516.y);
  let x_519 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_517.x, x_517.y, x_519);
  let x_531 : vec3<f32> = txVec0;
  let x_533 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_531.xy, x_531.z);
  u_xlat8.x = x_533;
  let x_537 : f32 = x_244.x_MainLightShadowParams.x;
  u_xlat24 = (-(x_537) + 1.0f);
  let x_541 : f32 = u_xlat8.x;
  let x_543 : f32 = x_244.x_MainLightShadowParams.x;
  let x_545 : f32 = u_xlat24;
  u_xlat8.x = ((x_541 * x_543) + x_545);
  let x_549 : f32 = u_xlat3.z;
  u_xlatb24 = (0.0f >= x_549);
  let x_553 : f32 = u_xlat3.z;
  u_xlatb1 = (x_553 >= 1.0f);
  let x_555 : bool = u_xlatb24;
  let x_556 : bool = u_xlatb1;
  u_xlatb24 = (x_555 | x_556);
  let x_558 : bool = u_xlatb24;
  if (x_558) {
    x_559 = 1.0f;
  } else {
    let x_564 : f32 = u_xlat8.x;
    x_559 = x_564;
  }
  let x_565 : f32 = x_559;
  u_xlat8.x = x_565;
  let x_567 : vec3<f32> = vs_TEXCOORD1;
  let x_570 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_572 : vec3<f32> = (x_567 + -(x_570));
  let x_573 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_572.x, x_572.y, x_572.z, x_573.w);
  let x_575 : vec4<f32> = u_xlat3;
  let x_577 : vec4<f32> = u_xlat3;
  u_xlat24 = dot(vec3<f32>(x_575.x, x_575.y, x_575.z), vec3<f32>(x_577.x, x_577.y, x_577.z));
  let x_580 : f32 = u_xlat24;
  let x_582 : f32 = x_244.x_MainLightShadowParams.z;
  let x_585 : f32 = x_244.x_MainLightShadowParams.w;
  u_xlat24 = ((x_580 * x_582) + x_585);
  let x_587 : f32 = u_xlat24;
  u_xlat24 = clamp(x_587, 0.0f, 1.0f);
  let x_590 : f32 = u_xlat8.x;
  u_xlat1.x = (-(x_590) + 1.0f);
  let x_594 : f32 = u_xlat24;
  let x_596 : f32 = u_xlat1.x;
  let x_599 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_594 * x_596) + x_599);
  let x_603 : f32 = u_xlat8.x;
  let x_605 : f32 = x_184.unity_LightData.z;
  u_xlat8.x = (x_603 * x_605);
  let x_608 : vec3<f32> = u_xlat8;
  let x_611 : vec4<f32> = x_43.x_MainLightColor;
  let x_613 : vec3<f32> = (vec3<f32>(x_608.x, x_608.x, x_608.x) * vec3<f32>(x_611.x, x_611.y, x_611.z));
  let x_614 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_613.x, x_613.y, x_613.z, x_614.w);
  let x_616 : vec4<f32> = u_xlat2;
  let x_619 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat8.x = dot(vec3<f32>(x_616.x, x_616.y, x_616.z), vec3<f32>(x_619.x, x_619.y, x_619.z));
  let x_624 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_624, 0.0f, 1.0f);
  let x_627 : vec3<f32> = u_xlat8;
  let x_629 : vec4<f32> = u_xlat3;
  let x_631 : vec3<f32> = (vec3<f32>(x_627.x, x_627.x, x_627.x) * vec3<f32>(x_629.x, x_629.y, x_629.z));
  let x_632 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_631.x, x_631.y, x_631.z, x_632.w);
  let x_634 : vec4<f32> = u_xlat1;
  let x_636 : vec4<f32> = u_xlat3;
  let x_638 : vec3<f32> = (vec3<f32>(x_634.y, x_634.z, x_634.w) * vec3<f32>(x_636.x, x_636.y, x_636.z));
  let x_639 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_638.x, x_638.y, x_638.z, x_639.w);
  let x_641 : vec4<f32> = u_xlat0;
  let x_643 : vec4<f32> = u_xlat3;
  let x_645 : vec3<f32> = (vec3<f32>(x_641.x, x_641.x, x_641.x) * vec3<f32>(x_643.x, x_643.y, x_643.z));
  let x_646 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_645.x, x_645.y, x_645.z, x_646.w);
  let x_649 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_651 : f32 = x_184.unity_LightData.y;
  u_xlat8.x = min(x_649, x_651);
  let x_655 : f32 = u_xlat8.x;
  u_xlatu8 = bitcast<u32>(i32(x_655));
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_667 : u32 = u_xlatu_loop_1;
    let x_668 : u32 = u_xlatu8;
    if ((x_667 < x_668)) {
    } else {
      break;
    }
    let x_671 : u32 = u_xlatu_loop_1;
    u_xlatu1 = (x_671 >> 2u);
    let x_674 : u32 = u_xlatu_loop_1;
    u_xlati26 = bitcast<i32>((x_674 & 3u));
    let x_677 : u32 = u_xlatu1;
    let x_680 : vec4<f32> = x_184.unity_LightIndices[bitcast<i32>(x_677)];
    let x_690 : i32 = u_xlati26;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_695 : vec4<u32> = indexable[x_690];
    u_xlat1.x = dot(x_680, bitcast<vec4<f32>>(x_695));
    let x_701 : f32 = u_xlat1.x;
    u_xlati1 = i32(x_701);
    let x_703 : vec3<f32> = vs_TEXCOORD1;
    let x_715 : i32 = u_xlati1;
    let x_717 : vec4<f32> = x_714.x_AdditionalLightsPosition[x_715];
    let x_720 : i32 = u_xlati1;
    let x_722 : vec4<f32> = x_714.x_AdditionalLightsPosition[x_720];
    u_xlat6 = ((-(x_703) * vec3<f32>(x_717.w, x_717.w, x_717.w)) + vec3<f32>(x_722.x, x_722.y, x_722.z));
    let x_726 : vec3<f32> = u_xlat6;
    let x_727 : vec3<f32> = u_xlat6;
    u_xlat26 = dot(x_726, x_727);
    let x_729 : f32 = u_xlat26;
    u_xlat26 = max(x_729, 6.10351562e-05f);
    let x_733 : f32 = u_xlat26;
    u_xlat27 = inverseSqrt(x_733);
    let x_735 : f32 = u_xlat27;
    let x_737 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_735, x_735, x_735) * x_737);
    let x_739 : f32 = u_xlat26;
    u_xlat27 = (1.0f / x_739);
    let x_741 : f32 = u_xlat26;
    let x_742 : i32 = u_xlati1;
    let x_744 : f32 = x_714.x_AdditionalLightsAttenuation[x_742].x;
    u_xlat26 = (x_741 * x_744);
    let x_746 : f32 = u_xlat26;
    let x_748 : f32 = u_xlat26;
    u_xlat26 = ((-(x_746) * x_748) + 1.0f);
    let x_751 : f32 = u_xlat26;
    u_xlat26 = max(x_751, 0.0f);
    let x_753 : f32 = u_xlat26;
    let x_754 : f32 = u_xlat26;
    u_xlat26 = (x_753 * x_754);
    let x_756 : f32 = u_xlat26;
    let x_757 : f32 = u_xlat27;
    u_xlat26 = (x_756 * x_757);
    let x_759 : i32 = u_xlati1;
    let x_761 : vec4<f32> = x_714.x_AdditionalLightsSpotDir[x_759];
    let x_763 : vec3<f32> = u_xlat6;
    u_xlat27 = dot(vec3<f32>(x_761.x, x_761.y, x_761.z), x_763);
    let x_765 : f32 = u_xlat27;
    let x_766 : i32 = u_xlati1;
    let x_768 : f32 = x_714.x_AdditionalLightsAttenuation[x_766].z;
    let x_770 : i32 = u_xlati1;
    let x_772 : f32 = x_714.x_AdditionalLightsAttenuation[x_770].w;
    u_xlat27 = ((x_765 * x_768) + x_772);
    let x_774 : f32 = u_xlat27;
    u_xlat27 = clamp(x_774, 0.0f, 1.0f);
    let x_776 : f32 = u_xlat27;
    let x_777 : f32 = u_xlat27;
    u_xlat27 = (x_776 * x_777);
    let x_779 : f32 = u_xlat26;
    let x_780 : f32 = u_xlat27;
    u_xlat26 = (x_779 * x_780);
    let x_783 : f32 = u_xlat26;
    let x_785 : i32 = u_xlati1;
    let x_787 : vec4<f32> = x_714.x_AdditionalLightsColor[x_785];
    u_xlat7 = (vec3<f32>(x_783, x_783, x_783) * vec3<f32>(x_787.x, x_787.y, x_787.z));
    let x_790 : vec4<f32> = u_xlat2;
    let x_792 : vec3<f32> = u_xlat6;
    u_xlat1.x = dot(vec3<f32>(x_790.x, x_790.y, x_790.z), x_792);
    let x_796 : f32 = u_xlat1.x;
    u_xlat1.x = clamp(x_796, 0.0f, 1.0f);
    let x_799 : vec4<f32> = u_xlat1;
    let x_801 : vec3<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_799.x, x_799.x, x_799.x) * x_801);
    let x_803 : vec4<f32> = u_xlat1;
    let x_805 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_803.y, x_803.z, x_803.w) * x_805);
    let x_807 : vec3<f32> = u_xlat6;
    let x_808 : vec4<f32> = u_xlat0;
    let x_811 : vec4<f32> = u_xlat5;
    let x_813 : vec3<f32> = ((x_807 * vec3<f32>(x_808.x, x_808.x, x_808.x)) + vec3<f32>(x_811.x, x_811.y, x_811.z));
    let x_814 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_813.x, x_813.y, x_813.z, x_814.w);

    continuing {
      let x_816 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_816 + bitcast<u32>(1i));
    }
  }
  let x_818 : vec4<f32> = u_xlat4;
  let x_820 : vec4<f32> = u_xlat1;
  let x_823 : vec4<f32> = u_xlat3;
  let x_825 : vec3<f32> = ((vec3<f32>(x_818.x, x_818.y, x_818.z) * vec3<f32>(x_820.y, x_820.z, x_820.w)) + vec3<f32>(x_823.x, x_823.y, x_823.z));
  let x_826 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_825.x, x_825.y, x_825.z, x_826.w);
  let x_830 : vec4<f32> = u_xlat5;
  let x_832 : vec4<f32> = u_xlat1;
  let x_834 : vec3<f32> = (vec3<f32>(x_830.x, x_830.y, x_830.z) + vec3<f32>(x_832.x, x_832.y, x_832.z));
  let x_835 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_834.x, x_834.y, x_834.z, x_835.w);
  let x_838 : f32 = x_56.x_Surface;
  u_xlatb8 = (x_838 == 1.0f);
  let x_840 : bool = u_xlatb8;
  let x_841 : bool = u_xlatb16;
  u_xlatb8 = (x_840 | x_841);
  let x_843 : bool = u_xlatb8;
  if (x_843) {
    let x_848 : f32 = u_xlat0.x;
    x_844 = x_848;
  } else {
    x_844 = 1.0f;
  }
  let x_850 : f32 = x_844;
  SV_Target0.w = x_850;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}

