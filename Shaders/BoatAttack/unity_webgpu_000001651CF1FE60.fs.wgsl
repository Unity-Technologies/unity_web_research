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
  x_ScaleBiasRt : vec4<f32>,
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

var<private> gl_FragCoord : vec4<f32>;

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(3) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(1) @binding(3) var<uniform> x_55 : UnityPerMaterial;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_87 : MainLightShadows;

@group(1) @binding(2) var<uniform> x_281 : UnityPerDraw;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(4) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(5) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(1) var<uniform> x_620 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlatb2 : vec4<bool>;
  var u_xlatu2 : u32;
  var u_xlati2 : i32;
  var u_xlat9 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlat23 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatb9 : bool;
  var u_xlatb16 : bool;
  var x_458 : f32;
  var u_xlat16 : f32;
  var u_xlatu22 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu25 : u32;
  var u_xlati5 : i32;
  var u_xlat25 : f32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati25 : i32;
  var u_xlat26 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlatb7 : bool;
  var x_754 : f32;
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
  let x_51 : vec4<f32> = u_xlat0;
  let x_58 : vec4<f32> = x_55.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_51.w, x_51.x, x_51.y, x_51.z) * vec4<f32>(x_58.w, x_58.x, x_58.y, x_58.z));
  let x_64 : vec3<f32> = vs_TEXCOORD2;
  let x_65 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_64, x_65);
  let x_70 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_70);
  let x_73 : vec4<f32> = u_xlat1;
  let x_75 : vec3<f32> = vs_TEXCOORD2;
  let x_76 : vec3<f32> = (vec3<f32>(x_73.x, x_73.x, x_73.x) * x_75);
  let x_77 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_76.x, x_76.y, x_76.z, x_77.w);
  let x_81 : vec3<f32> = vs_TEXCOORD1;
  let x_89 : vec4<f32> = x_87.x_CascadeShadowSplitSpheres0;
  let x_92 : vec3<f32> = (x_81 + -(vec3<f32>(x_89.x, x_89.y, x_89.z)));
  let x_93 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_92.x, x_92.y, x_92.z, x_93.w);
  let x_96 : vec3<f32> = vs_TEXCOORD1;
  let x_99 : vec4<f32> = x_87.x_CascadeShadowSplitSpheres1;
  let x_102 : vec3<f32> = (x_96 + -(vec3<f32>(x_99.x, x_99.y, x_99.z)));
  let x_103 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_102.x, x_102.y, x_102.z, x_103.w);
  let x_106 : vec3<f32> = vs_TEXCOORD1;
  let x_109 : vec4<f32> = x_87.x_CascadeShadowSplitSpheres2;
  let x_112 : vec3<f32> = (x_106 + -(vec3<f32>(x_109.x, x_109.y, x_109.z)));
  let x_113 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_112.x, x_112.y, x_112.z, x_113.w);
  let x_117 : vec3<f32> = vs_TEXCOORD1;
  let x_120 : vec4<f32> = x_87.x_CascadeShadowSplitSpheres3;
  u_xlat5 = (x_117 + -(vec3<f32>(x_120.x, x_120.y, x_120.z)));
  let x_124 : vec4<f32> = u_xlat2;
  let x_126 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_124.x, x_124.y, x_124.z), vec3<f32>(x_126.x, x_126.y, x_126.z));
  let x_130 : vec4<f32> = u_xlat3;
  let x_132 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_130.x, x_130.y, x_130.z), vec3<f32>(x_132.x, x_132.y, x_132.z));
  let x_137 : vec4<f32> = u_xlat4;
  let x_139 : vec4<f32> = u_xlat4;
  u_xlat2.z = dot(vec3<f32>(x_137.x, x_137.y, x_137.z), vec3<f32>(x_139.x, x_139.y, x_139.z));
  let x_144 : vec3<f32> = u_xlat5;
  let x_145 : vec3<f32> = u_xlat5;
  u_xlat2.w = dot(x_144, x_145);
  let x_152 : vec4<f32> = u_xlat2;
  let x_155 : vec4<f32> = x_87.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_152 < x_155);
  let x_159 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_159);
  let x_164 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_164);
  let x_168 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_168);
  let x_172 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_172);
  let x_176 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_176);
  let x_182 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_182);
  let x_186 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_186);
  let x_189 : vec4<f32> = u_xlat2;
  let x_191 : vec4<f32> = u_xlat3;
  let x_193 : vec3<f32> = (vec3<f32>(x_189.x, x_189.y, x_189.z) + vec3<f32>(x_191.y, x_191.z, x_191.w));
  let x_194 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_193.x, x_193.y, x_193.z, x_194.w);
  let x_196 : vec4<f32> = u_xlat2;
  let x_199 : vec3<f32> = max(vec3<f32>(x_196.x, x_196.y, x_196.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_200 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_200.x, x_199.x, x_199.y, x_199.z);
  let x_202 : vec4<f32> = u_xlat3;
  u_xlat2.x = dot(x_202, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_210 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_210) + 4.0f);
  let x_217 : f32 = u_xlat2.x;
  u_xlatu2 = u32(x_217);
  let x_221 : u32 = u_xlatu2;
  u_xlati2 = (bitcast<i32>(x_221) << bitcast<u32>(2i));
  let x_225 : vec3<f32> = vs_TEXCOORD1;
  let x_228 : i32 = u_xlati2;
  let x_231 : i32 = u_xlati2;
  let x_235 : vec4<f32> = x_87.x_MainLightWorldToShadow[((x_228 + 1i) / 4i)][((x_231 + 1i) % 4i)];
  u_xlat9 = (vec3<f32>(x_225.y, x_225.y, x_225.y) * vec3<f32>(x_235.x, x_235.y, x_235.z));
  let x_238 : i32 = u_xlati2;
  let x_240 : i32 = u_xlati2;
  let x_243 : vec4<f32> = x_87.x_MainLightWorldToShadow[(x_238 / 4i)][(x_240 % 4i)];
  let x_245 : vec3<f32> = vs_TEXCOORD1;
  let x_248 : vec3<f32> = u_xlat9;
  u_xlat9 = ((vec3<f32>(x_243.x, x_243.y, x_243.z) * vec3<f32>(x_245.x, x_245.x, x_245.x)) + x_248);
  let x_250 : i32 = u_xlati2;
  let x_253 : i32 = u_xlati2;
  let x_257 : vec4<f32> = x_87.x_MainLightWorldToShadow[((x_250 + 2i) / 4i)][((x_253 + 2i) % 4i)];
  let x_259 : vec3<f32> = vs_TEXCOORD1;
  let x_262 : vec3<f32> = u_xlat9;
  u_xlat9 = ((vec3<f32>(x_257.x, x_257.y, x_257.z) * vec3<f32>(x_259.z, x_259.z, x_259.z)) + x_262);
  let x_264 : vec3<f32> = u_xlat9;
  let x_265 : i32 = u_xlati2;
  let x_268 : i32 = u_xlati2;
  let x_272 : vec4<f32> = x_87.x_MainLightWorldToShadow[((x_265 + 3i) / 4i)][((x_268 + 3i) % 4i)];
  let x_274 : vec3<f32> = (x_264 + vec3<f32>(x_272.x, x_272.y, x_272.z));
  let x_275 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_274.x, x_274.y, x_274.z, x_275.w);
  u_xlat1.w = 1.0f;
  let x_284 : vec4<f32> = x_281.unity_SHAr;
  let x_285 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_284, x_285);
  let x_290 : vec4<f32> = x_281.unity_SHAg;
  let x_291 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_290, x_291);
  let x_296 : vec4<f32> = x_281.unity_SHAb;
  let x_297 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_296, x_297);
  let x_300 : vec4<f32> = u_xlat1;
  let x_302 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_300.y, x_300.z, x_300.z, x_300.x) * vec4<f32>(x_302.x, x_302.y, x_302.z, x_302.z));
  let x_307 : vec4<f32> = x_281.unity_SHBr;
  let x_308 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_307, x_308);
  let x_313 : vec4<f32> = x_281.unity_SHBg;
  let x_314 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_313, x_314);
  let x_319 : vec4<f32> = x_281.unity_SHBb;
  let x_320 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_319, x_320);
  let x_325 : f32 = u_xlat1.y;
  let x_327 : f32 = u_xlat1.y;
  u_xlat22 = (x_325 * x_327);
  let x_330 : f32 = u_xlat1.x;
  let x_332 : f32 = u_xlat1.x;
  let x_334 : f32 = u_xlat22;
  u_xlat22 = ((x_330 * x_332) + -(x_334));
  let x_339 : vec4<f32> = x_281.unity_SHC;
  let x_341 : f32 = u_xlat22;
  let x_344 : vec3<f32> = u_xlat5;
  let x_345 : vec3<f32> = ((vec3<f32>(x_339.x, x_339.y, x_339.z) * vec3<f32>(x_341, x_341, x_341)) + x_344);
  let x_346 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_345.x, x_345.y, x_345.z, x_346.w);
  let x_348 : vec4<f32> = u_xlat3;
  let x_350 : vec4<f32> = u_xlat4;
  let x_352 : vec3<f32> = (vec3<f32>(x_348.x, x_348.y, x_348.z) + vec3<f32>(x_350.x, x_350.y, x_350.z));
  let x_353 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_352.x, x_352.y, x_352.z, x_353.w);
  let x_355 : vec4<f32> = u_xlat3;
  let x_357 : vec3<f32> = max(vec3<f32>(x_355.x, x_355.y, x_355.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_358 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_357.x, x_357.y, x_357.z, x_358.w);
  let x_362 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_363 : vec2<f32> = vec2<f32>(x_362.x, x_362.y);
  let x_367 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_363.x, x_363.y));
  let x_368 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_367.x, x_367.y, x_368.z, x_368.w);
  let x_370 : vec4<f32> = u_xlat4;
  let x_372 : vec4<f32> = hlslcc_FragCoord;
  let x_374 : vec2<f32> = (vec2<f32>(x_370.x, x_370.y) * vec2<f32>(x_372.x, x_372.y));
  let x_375 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_374.x, x_374.y, x_375.z, x_375.w);
  let x_378 : f32 = u_xlat4.y;
  let x_381 : f32 = x_43.x_ScaleBiasRt.x;
  let x_384 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat22 = ((x_378 * x_381) + x_384);
  let x_386 : f32 = u_xlat22;
  u_xlat4.z = (-(x_386) + 1.0f);
  let x_395 : vec4<f32> = u_xlat4;
  let x_398 : f32 = x_43.x_GlobalMipBias.x;
  let x_399 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_395.x, x_395.z), x_398);
  u_xlat22 = x_399.x;
  let x_402 : f32 = u_xlat22;
  u_xlat23 = (x_402 + -1.0f);
  let x_405 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_406 : f32 = u_xlat23;
  u_xlat23 = ((x_405 * x_406) + 1.0f);
  let x_409 : f32 = u_xlat22;
  u_xlat22 = min(x_409, 1.0f);
  let x_412 : vec4<f32> = u_xlat2;
  let x_413 : vec2<f32> = vec2<f32>(x_412.x, x_412.y);
  let x_415 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_413.x, x_413.y, x_415);
  let x_427 : vec3<f32> = txVec0;
  let x_429 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_427.xy, x_427.z);
  u_xlat2.x = x_429;
  let x_433 : f32 = x_87.x_MainLightShadowParams.x;
  u_xlat9.x = (-(x_433) + 1.0f);
  let x_438 : f32 = u_xlat2.x;
  let x_440 : f32 = x_87.x_MainLightShadowParams.x;
  let x_443 : f32 = u_xlat9.x;
  u_xlat2.x = ((x_438 * x_440) + x_443);
  let x_448 : f32 = u_xlat2.z;
  u_xlatb9 = (0.0f >= x_448);
  let x_452 : f32 = u_xlat2.z;
  u_xlatb16 = (x_452 >= 1.0f);
  let x_454 : bool = u_xlatb16;
  let x_455 : bool = u_xlatb9;
  u_xlatb9 = (x_454 | x_455);
  let x_457 : bool = u_xlatb9;
  if (x_457) {
    x_458 = 1.0f;
  } else {
    let x_463 : f32 = u_xlat2.x;
    x_458 = x_463;
  }
  let x_464 : f32 = x_458;
  u_xlat2.x = x_464;
  let x_466 : vec3<f32> = vs_TEXCOORD1;
  let x_470 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_472 : vec3<f32> = (x_466 + -(x_470));
  let x_473 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_472.x, x_472.y, x_472.z, x_473.w);
  let x_475 : vec4<f32> = u_xlat4;
  let x_477 : vec4<f32> = u_xlat4;
  u_xlat9.x = dot(vec3<f32>(x_475.x, x_475.y, x_475.z), vec3<f32>(x_477.x, x_477.y, x_477.z));
  let x_482 : f32 = u_xlat9.x;
  let x_484 : f32 = x_87.x_MainLightShadowParams.z;
  let x_487 : f32 = x_87.x_MainLightShadowParams.w;
  u_xlat9.x = ((x_482 * x_484) + x_487);
  let x_491 : f32 = u_xlat9.x;
  u_xlat9.x = clamp(x_491, 0.0f, 1.0f);
  let x_496 : f32 = u_xlat2.x;
  u_xlat16 = (-(x_496) + 1.0f);
  let x_500 : f32 = u_xlat9.x;
  let x_501 : f32 = u_xlat16;
  let x_504 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_500 * x_501) + x_504);
  let x_507 : f32 = u_xlat23;
  let x_510 : vec4<f32> = x_43.x_MainLightColor;
  let x_512 : vec3<f32> = (vec3<f32>(x_507, x_507, x_507) * vec3<f32>(x_510.x, x_510.y, x_510.z));
  let x_513 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_512.x, x_512.y, x_512.z, x_513.w);
  let x_515 : f32 = u_xlat22;
  let x_517 : vec4<f32> = u_xlat3;
  let x_519 : vec3<f32> = (vec3<f32>(x_515, x_515, x_515) * vec3<f32>(x_517.x, x_517.y, x_517.z));
  let x_520 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_519.x, x_519.y, x_519.z, x_520.w);
  let x_523 : f32 = u_xlat2.x;
  let x_525 : f32 = x_281.unity_LightData.z;
  u_xlat22 = (x_523 * x_525);
  let x_527 : f32 = u_xlat22;
  let x_529 : vec4<f32> = u_xlat4;
  let x_531 : vec3<f32> = (vec3<f32>(x_527, x_527, x_527) * vec3<f32>(x_529.x, x_529.y, x_529.z));
  let x_532 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_531.x, x_531.y, x_531.z, x_532.w);
  let x_534 : vec4<f32> = u_xlat1;
  let x_537 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat22 = dot(vec3<f32>(x_534.x, x_534.y, x_534.z), vec3<f32>(x_537.x, x_537.y, x_537.z));
  let x_540 : f32 = u_xlat22;
  u_xlat22 = clamp(x_540, 0.0f, 1.0f);
  let x_542 : f32 = u_xlat22;
  let x_544 : vec4<f32> = u_xlat2;
  let x_546 : vec3<f32> = (vec3<f32>(x_542, x_542, x_542) * vec3<f32>(x_544.x, x_544.y, x_544.z));
  let x_547 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_546.x, x_546.y, x_546.z, x_547.w);
  let x_549 : vec4<f32> = u_xlat0;
  let x_551 : vec4<f32> = u_xlat2;
  let x_553 : vec3<f32> = (vec3<f32>(x_549.y, x_549.z, x_549.w) * vec3<f32>(x_551.x, x_551.y, x_551.z));
  let x_554 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_553.x, x_553.y, x_553.z, x_554.w);
  let x_557 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_559 : f32 = x_281.unity_LightData.y;
  u_xlat22 = min(x_557, x_559);
  let x_562 : f32 = u_xlat22;
  u_xlatu22 = bitcast<u32>(i32(x_562));
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_574 : u32 = u_xlatu_loop_1;
    let x_575 : u32 = u_xlatu22;
    if ((x_574 < x_575)) {
    } else {
      break;
    }
    let x_578 : u32 = u_xlatu_loop_1;
    u_xlatu25 = (x_578 >> 2u);
    let x_581 : u32 = u_xlatu_loop_1;
    u_xlati5 = bitcast<i32>((x_581 & 3u));
    let x_585 : u32 = u_xlatu25;
    let x_588 : vec4<f32> = x_281.unity_LightIndices[bitcast<i32>(x_585)];
    let x_598 : i32 = u_xlati5;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_603 : vec4<u32> = indexable[x_598];
    u_xlat25 = dot(x_588, bitcast<vec4<f32>>(x_603));
    let x_607 : f32 = u_xlat25;
    u_xlati25 = i32(x_607);
    let x_609 : vec3<f32> = vs_TEXCOORD1;
    let x_621 : i32 = u_xlati25;
    let x_623 : vec4<f32> = x_620.x_AdditionalLightsPosition[x_621];
    let x_626 : i32 = u_xlati25;
    let x_628 : vec4<f32> = x_620.x_AdditionalLightsPosition[x_626];
    u_xlat5 = ((-(x_609) * vec3<f32>(x_623.w, x_623.w, x_623.w)) + vec3<f32>(x_628.x, x_628.y, x_628.z));
    let x_632 : vec3<f32> = u_xlat5;
    let x_633 : vec3<f32> = u_xlat5;
    u_xlat26 = dot(x_632, x_633);
    let x_635 : f32 = u_xlat26;
    u_xlat26 = max(x_635, 6.10351562e-05f);
    let x_639 : f32 = u_xlat26;
    u_xlat6.x = inverseSqrt(x_639);
    let x_642 : vec3<f32> = u_xlat5;
    let x_643 : vec3<f32> = u_xlat6;
    u_xlat5 = (x_642 * vec3<f32>(x_643.x, x_643.x, x_643.x));
    let x_646 : f32 = u_xlat26;
    u_xlat6.x = (1.0f / x_646);
    let x_649 : f32 = u_xlat26;
    let x_650 : i32 = u_xlati25;
    let x_652 : f32 = x_620.x_AdditionalLightsAttenuation[x_650].x;
    u_xlat26 = (x_649 * x_652);
    let x_654 : f32 = u_xlat26;
    let x_656 : f32 = u_xlat26;
    u_xlat26 = ((-(x_654) * x_656) + 1.0f);
    let x_659 : f32 = u_xlat26;
    u_xlat26 = max(x_659, 0.0f);
    let x_661 : f32 = u_xlat26;
    let x_662 : f32 = u_xlat26;
    u_xlat26 = (x_661 * x_662);
    let x_664 : f32 = u_xlat26;
    let x_666 : f32 = u_xlat6.x;
    u_xlat26 = (x_664 * x_666);
    let x_668 : i32 = u_xlati25;
    let x_670 : vec4<f32> = x_620.x_AdditionalLightsSpotDir[x_668];
    let x_672 : vec3<f32> = u_xlat5;
    u_xlat6.x = dot(vec3<f32>(x_670.x, x_670.y, x_670.z), x_672);
    let x_676 : f32 = u_xlat6.x;
    let x_677 : i32 = u_xlati25;
    let x_679 : f32 = x_620.x_AdditionalLightsAttenuation[x_677].z;
    let x_681 : i32 = u_xlati25;
    let x_683 : f32 = x_620.x_AdditionalLightsAttenuation[x_681].w;
    u_xlat6.x = ((x_676 * x_679) + x_683);
    let x_687 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_687, 0.0f, 1.0f);
    let x_691 : f32 = u_xlat6.x;
    let x_693 : f32 = u_xlat6.x;
    u_xlat6.x = (x_691 * x_693);
    let x_696 : f32 = u_xlat26;
    let x_698 : f32 = u_xlat6.x;
    u_xlat26 = (x_696 * x_698);
    let x_700 : f32 = u_xlat23;
    let x_702 : i32 = u_xlati25;
    let x_704 : vec4<f32> = x_620.x_AdditionalLightsColor[x_702];
    u_xlat6 = (vec3<f32>(x_700, x_700, x_700) * vec3<f32>(x_704.x, x_704.y, x_704.z));
    let x_707 : f32 = u_xlat26;
    let x_709 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_707, x_707, x_707) * x_709);
    let x_711 : vec4<f32> = u_xlat1;
    let x_713 : vec3<f32> = u_xlat5;
    u_xlat25 = dot(vec3<f32>(x_711.x, x_711.y, x_711.z), x_713);
    let x_715 : f32 = u_xlat25;
    u_xlat25 = clamp(x_715, 0.0f, 1.0f);
    let x_717 : f32 = u_xlat25;
    let x_719 : vec3<f32> = u_xlat6;
    u_xlat5 = (vec3<f32>(x_717, x_717, x_717) * x_719);
    let x_721 : vec3<f32> = u_xlat5;
    let x_722 : vec4<f32> = u_xlat0;
    let x_725 : vec4<f32> = u_xlat4;
    let x_727 : vec3<f32> = ((x_721 * vec3<f32>(x_722.y, x_722.z, x_722.w)) + vec3<f32>(x_725.x, x_725.y, x_725.z));
    let x_728 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_727.x, x_727.y, x_727.z, x_728.w);

    continuing {
      let x_730 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_730 + bitcast<u32>(1i));
    }
  }
  let x_733 : vec4<f32> = u_xlat3;
  let x_735 : vec4<f32> = u_xlat0;
  let x_738 : vec4<f32> = u_xlat2;
  u_xlat7 = ((vec3<f32>(x_733.x, x_733.y, x_733.z) * vec3<f32>(x_735.y, x_735.z, x_735.w)) + vec3<f32>(x_738.x, x_738.y, x_738.z));
  let x_743 : vec4<f32> = u_xlat4;
  let x_745 : vec3<f32> = u_xlat7;
  let x_746 : vec3<f32> = (vec3<f32>(x_743.x, x_743.y, x_743.z) + x_745);
  let x_747 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_746.x, x_746.y, x_746.z, x_747.w);
  let x_751 : f32 = x_55.x_Surface;
  u_xlatb7 = (x_751 == 1.0f);
  let x_753 : bool = u_xlatb7;
  if (x_753) {
    let x_758 : f32 = u_xlat0.x;
    x_754 = x_758;
  } else {
    x_754 = 1.0f;
  }
  let x_760 : f32 = x_754;
  SV_Target0.w = x_760;
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

