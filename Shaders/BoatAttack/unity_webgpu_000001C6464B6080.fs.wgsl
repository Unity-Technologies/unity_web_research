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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(1) @binding(3) var<uniform> x_55 : UnityPerMaterial;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(5) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_215 : MainLightShadows;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_310 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_403 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlat23 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlatb10 : bool;
  var u_xlatb17 : bool;
  var x_245 : f32;
  var u_xlat17 : f32;
  var u_xlatu22 : u32;
  var u_xlat4 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu25 : u32;
  var u_xlati5 : i32;
  var u_xlat25 : f32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati25 : i32;
  var u_xlat5 : vec3<f32>;
  var u_xlat26 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlatb7 : bool;
  var x_531 : f32;
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
  let x_65 : vec3<f32> = vs_TEXCOORD2;
  let x_66 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_65, x_66);
  let x_71 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_71);
  let x_74 : vec3<f32> = u_xlat1;
  let x_76 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1 = (vec3<f32>(x_74.x, x_74.x, x_74.x) * x_76);
  let x_85 : vec2<f32> = vs_TEXCOORD7;
  let x_87 : f32 = x_43.x_GlobalMipBias.x;
  let x_88 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_85, x_87);
  u_xlat2 = x_88;
  let x_94 : vec2<f32> = vs_TEXCOORD7;
  let x_96 : f32 = x_43.x_GlobalMipBias.x;
  let x_97 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_94, x_96);
  u_xlat3 = vec3<f32>(x_97.x, x_97.y, x_97.z);
  let x_99 : vec4<f32> = u_xlat2;
  let x_103 : vec3<f32> = (vec3<f32>(x_99.x, x_99.y, x_99.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_104 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_103.x, x_103.y, x_103.z, x_104.w);
  let x_107 : vec3<f32> = u_xlat1;
  let x_108 : vec4<f32> = u_xlat2;
  u_xlat22 = dot(x_107, vec3<f32>(x_108.x, x_108.y, x_108.z));
  let x_111 : f32 = u_xlat22;
  u_xlat22 = (x_111 + 0.5f);
  let x_114 : f32 = u_xlat22;
  let x_116 : vec3<f32> = u_xlat3;
  let x_117 : vec3<f32> = (vec3<f32>(x_114, x_114, x_114) * x_116);
  let x_118 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_117.x, x_117.y, x_117.z, x_118.w);
  let x_121 : f32 = u_xlat2.w;
  u_xlat22 = max(x_121, 0.0001f);
  let x_124 : vec4<f32> = u_xlat2;
  let x_126 : f32 = u_xlat22;
  let x_128 : vec3<f32> = (vec3<f32>(x_124.x, x_124.y, x_124.z) / vec3<f32>(x_126, x_126, x_126));
  let x_129 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_128.x, x_128.y, x_128.z, x_129.w);
  let x_134 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_135 : vec2<f32> = vec2<f32>(x_134.x, x_134.y);
  let x_139 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_135.x, x_135.y));
  let x_140 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_139.x, x_139.y, x_140.z);
  let x_142 : vec3<f32> = u_xlat3;
  let x_144 : vec4<f32> = hlslcc_FragCoord;
  let x_146 : vec2<f32> = (vec2<f32>(x_142.x, x_142.y) * vec2<f32>(x_144.x, x_144.y));
  let x_147 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_146.x, x_146.y, x_147.z);
  let x_151 : f32 = u_xlat3.y;
  let x_154 : f32 = x_43.x_ScaleBiasRt.x;
  let x_157 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat22 = ((x_151 * x_154) + x_157);
  let x_159 : f32 = u_xlat22;
  u_xlat3.z = (-(x_159) + 1.0f);
  let x_169 : vec3<f32> = u_xlat3;
  let x_172 : f32 = x_43.x_GlobalMipBias.x;
  let x_173 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_169.x, x_169.z), x_172);
  u_xlat22 = x_173.x;
  let x_176 : f32 = u_xlat22;
  u_xlat23 = (x_176 + -1.0f);
  let x_181 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_182 : f32 = u_xlat23;
  u_xlat23 = ((x_181 * x_182) + 1.0f);
  let x_185 : f32 = u_xlat22;
  u_xlat22 = min(x_185, 1.0f);
  let x_189 : vec4<f32> = vs_TEXCOORD6;
  let x_190 : vec2<f32> = vec2<f32>(x_189.x, x_189.y);
  let x_192 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_190.x, x_190.y, x_192);
  let x_204 : vec3<f32> = txVec0;
  let x_207 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_204.xy, x_204.z);
  u_xlat3.x = x_207;
  let x_218 : f32 = x_215.x_MainLightShadowParams.x;
  u_xlat10.x = (-(x_218) + 1.0f);
  let x_223 : f32 = u_xlat3.x;
  let x_225 : f32 = x_215.x_MainLightShadowParams.x;
  let x_228 : f32 = u_xlat10.x;
  u_xlat3.x = ((x_223 * x_225) + x_228);
  let x_235 : f32 = vs_TEXCOORD6.z;
  u_xlatb10 = (0.0f >= x_235);
  let x_239 : f32 = vs_TEXCOORD6.z;
  u_xlatb17 = (x_239 >= 1.0f);
  let x_241 : bool = u_xlatb17;
  let x_242 : bool = u_xlatb10;
  u_xlatb10 = (x_241 | x_242);
  let x_244 : bool = u_xlatb10;
  if (x_244) {
    x_245 = 1.0f;
  } else {
    let x_250 : f32 = u_xlat3.x;
    x_245 = x_250;
  }
  let x_251 : f32 = x_245;
  u_xlat3.x = x_251;
  let x_254 : vec3<f32> = vs_TEXCOORD1;
  let x_258 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  u_xlat10 = (x_254 + -(x_258));
  let x_261 : vec3<f32> = u_xlat10;
  let x_262 : vec3<f32> = u_xlat10;
  u_xlat10.x = dot(x_261, x_262);
  let x_266 : f32 = u_xlat10.x;
  let x_268 : f32 = x_215.x_MainLightShadowParams.z;
  let x_271 : f32 = x_215.x_MainLightShadowParams.w;
  u_xlat10.x = ((x_266 * x_268) + x_271);
  let x_275 : f32 = u_xlat10.x;
  u_xlat10.x = clamp(x_275, 0.0f, 1.0f);
  let x_280 : f32 = u_xlat3.x;
  u_xlat17 = (-(x_280) + 1.0f);
  let x_284 : f32 = u_xlat10.x;
  let x_285 : f32 = u_xlat17;
  let x_288 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_284 * x_285) + x_288);
  let x_291 : f32 = u_xlat23;
  let x_295 : vec4<f32> = x_43.x_MainLightColor;
  u_xlat10 = (vec3<f32>(x_291, x_291, x_291) * vec3<f32>(x_295.x, x_295.y, x_295.z));
  let x_298 : f32 = u_xlat22;
  let x_300 : vec4<f32> = u_xlat2;
  let x_302 : vec3<f32> = (vec3<f32>(x_298, x_298, x_298) * vec3<f32>(x_300.x, x_300.y, x_300.z));
  let x_303 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_302.x, x_302.y, x_302.z, x_303.w);
  let x_306 : f32 = u_xlat3.x;
  let x_313 : f32 = x_310.unity_LightData.z;
  u_xlat22 = (x_306 * x_313);
  let x_315 : f32 = u_xlat22;
  let x_317 : vec3<f32> = u_xlat10;
  u_xlat3 = (vec3<f32>(x_315, x_315, x_315) * x_317);
  let x_319 : vec3<f32> = u_xlat1;
  let x_322 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat22 = dot(x_319, vec3<f32>(x_322.x, x_322.y, x_322.z));
  let x_325 : f32 = u_xlat22;
  u_xlat22 = clamp(x_325, 0.0f, 1.0f);
  let x_327 : f32 = u_xlat22;
  let x_329 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_327, x_327, x_327) * x_329);
  let x_331 : vec4<f32> = u_xlat0;
  let x_333 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_331.y, x_331.z, x_331.w) * x_333);
  let x_336 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_338 : f32 = x_310.unity_LightData.y;
  u_xlat22 = min(x_336, x_338);
  let x_342 : f32 = u_xlat22;
  u_xlatu22 = bitcast<u32>(i32(x_342));
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_355 : u32 = u_xlatu_loop_1;
    let x_356 : u32 = u_xlatu22;
    if ((x_355 < x_356)) {
    } else {
      break;
    }
    let x_359 : u32 = u_xlatu_loop_1;
    u_xlatu25 = (x_359 >> 2u);
    let x_363 : u32 = u_xlatu_loop_1;
    u_xlati5 = bitcast<i32>((x_363 & 3u));
    let x_367 : u32 = u_xlatu25;
    let x_370 : vec4<f32> = x_310.unity_LightIndices[bitcast<i32>(x_367)];
    let x_380 : i32 = u_xlati5;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_385 : vec4<u32> = indexable[x_380];
    u_xlat25 = dot(x_370, bitcast<vec4<f32>>(x_385));
    let x_389 : f32 = u_xlat25;
    u_xlati25 = i32(x_389);
    let x_392 : vec3<f32> = vs_TEXCOORD1;
    let x_404 : i32 = u_xlati25;
    let x_406 : vec4<f32> = x_403.x_AdditionalLightsPosition[x_404];
    let x_409 : i32 = u_xlati25;
    let x_411 : vec4<f32> = x_403.x_AdditionalLightsPosition[x_409];
    u_xlat5 = ((-(x_392) * vec3<f32>(x_406.w, x_406.w, x_406.w)) + vec3<f32>(x_411.x, x_411.y, x_411.z));
    let x_415 : vec3<f32> = u_xlat5;
    let x_416 : vec3<f32> = u_xlat5;
    u_xlat26 = dot(x_415, x_416);
    let x_418 : f32 = u_xlat26;
    u_xlat26 = max(x_418, 6.10351562e-05f);
    let x_422 : f32 = u_xlat26;
    u_xlat6.x = inverseSqrt(x_422);
    let x_425 : vec3<f32> = u_xlat5;
    let x_426 : vec3<f32> = u_xlat6;
    u_xlat5 = (x_425 * vec3<f32>(x_426.x, x_426.x, x_426.x));
    let x_429 : f32 = u_xlat26;
    u_xlat6.x = (1.0f / x_429);
    let x_432 : f32 = u_xlat26;
    let x_433 : i32 = u_xlati25;
    let x_435 : f32 = x_403.x_AdditionalLightsAttenuation[x_433].x;
    u_xlat26 = (x_432 * x_435);
    let x_437 : f32 = u_xlat26;
    let x_439 : f32 = u_xlat26;
    u_xlat26 = ((-(x_437) * x_439) + 1.0f);
    let x_442 : f32 = u_xlat26;
    u_xlat26 = max(x_442, 0.0f);
    let x_444 : f32 = u_xlat26;
    let x_445 : f32 = u_xlat26;
    u_xlat26 = (x_444 * x_445);
    let x_447 : f32 = u_xlat26;
    let x_449 : f32 = u_xlat6.x;
    u_xlat26 = (x_447 * x_449);
    let x_451 : i32 = u_xlati25;
    let x_453 : vec4<f32> = x_403.x_AdditionalLightsSpotDir[x_451];
    let x_455 : vec3<f32> = u_xlat5;
    u_xlat6.x = dot(vec3<f32>(x_453.x, x_453.y, x_453.z), x_455);
    let x_459 : f32 = u_xlat6.x;
    let x_460 : i32 = u_xlati25;
    let x_462 : f32 = x_403.x_AdditionalLightsAttenuation[x_460].z;
    let x_464 : i32 = u_xlati25;
    let x_466 : f32 = x_403.x_AdditionalLightsAttenuation[x_464].w;
    u_xlat6.x = ((x_459 * x_462) + x_466);
    let x_470 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_470, 0.0f, 1.0f);
    let x_474 : f32 = u_xlat6.x;
    let x_476 : f32 = u_xlat6.x;
    u_xlat6.x = (x_474 * x_476);
    let x_479 : f32 = u_xlat26;
    let x_481 : f32 = u_xlat6.x;
    u_xlat26 = (x_479 * x_481);
    let x_483 : f32 = u_xlat23;
    let x_485 : i32 = u_xlati25;
    let x_487 : vec4<f32> = x_403.x_AdditionalLightsColor[x_485];
    u_xlat6 = (vec3<f32>(x_483, x_483, x_483) * vec3<f32>(x_487.x, x_487.y, x_487.z));
    let x_490 : f32 = u_xlat26;
    let x_492 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_490, x_490, x_490) * x_492);
    let x_494 : vec3<f32> = u_xlat1;
    let x_495 : vec3<f32> = u_xlat5;
    u_xlat25 = dot(x_494, x_495);
    let x_497 : f32 = u_xlat25;
    u_xlat25 = clamp(x_497, 0.0f, 1.0f);
    let x_499 : f32 = u_xlat25;
    let x_501 : vec3<f32> = u_xlat6;
    u_xlat5 = (vec3<f32>(x_499, x_499, x_499) * x_501);
    let x_503 : vec3<f32> = u_xlat5;
    let x_504 : vec4<f32> = u_xlat0;
    let x_507 : vec3<f32> = u_xlat4;
    u_xlat4 = ((x_503 * vec3<f32>(x_504.y, x_504.z, x_504.w)) + x_507);

    continuing {
      let x_509 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_509 + bitcast<u32>(1i));
    }
  }
  let x_512 : vec4<f32> = u_xlat2;
  let x_514 : vec4<f32> = u_xlat0;
  let x_517 : vec3<f32> = u_xlat3;
  u_xlat7 = ((vec3<f32>(x_512.x, x_512.y, x_512.z) * vec3<f32>(x_514.y, x_514.z, x_514.w)) + x_517);
  let x_521 : vec3<f32> = u_xlat4;
  let x_522 : vec3<f32> = u_xlat7;
  let x_523 : vec3<f32> = (x_521 + x_522);
  let x_524 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_523.x, x_523.y, x_523.z, x_524.w);
  let x_528 : f32 = x_55.x_Surface;
  u_xlatb7 = (x_528 == 1.0f);
  let x_530 : bool = u_xlatb7;
  if (x_530) {
    let x_535 : f32 = u_xlat0.x;
    x_531 = x_535;
  } else {
    x_531 = 1.0f;
  }
  let x_537 : f32 = x_531;
  SV_Target0.w = x_537;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD7_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}

