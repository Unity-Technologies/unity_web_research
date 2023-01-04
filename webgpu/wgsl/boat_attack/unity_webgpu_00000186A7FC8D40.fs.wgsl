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

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(0) @binding(3) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MetallicTex : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

@group(0) @binding(4) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(3) var<uniform> x_243 : MainLightShadows;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_392 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_624 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : f32;
  var u_xlat12 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat35 : f32;
  var u_xlat14 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlat36 : f32;
  var u_xlat33 : f32;
  var u_xlat25 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat37 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlatb5 : bool;
  var u_xlatb16 : bool;
  var u_xlat16 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat38 : f32;
  var u_xlat7 : vec4<f32>;
  var u_xlat39 : f32;
  var u_xlat8 : vec2<f32>;
  var u_xlat19 : vec3<f32>;
  var u_xlatu33 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu35 : u32;
  var u_xlati37 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati35 : i32;
  var u_xlat9 : vec3<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_39 : vec4<f32> = vs_TEXCOORD0;
  let x_49 : f32 = x_43.x_GlobalMipBias.x;
  let x_50 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_39.x, x_39.y), x_49);
  u_xlat0 = x_50;
  let x_58 : vec4<f32> = vs_TEXCOORD0;
  let x_61 : f32 = x_43.x_GlobalMipBias.x;
  let x_62 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_58.x, x_58.y), x_61);
  u_xlat1 = x_62.x;
  let x_67 : vec4<f32> = vs_TEXCOORD3;
  let x_69 : vec4<f32> = vs_TEXCOORD3;
  u_xlat12.x = dot(vec3<f32>(x_67.x, x_67.y, x_67.z), vec3<f32>(x_69.x, x_69.y, x_69.z));
  let x_74 : f32 = u_xlat12.x;
  u_xlat12.x = inverseSqrt(x_74);
  let x_77 : vec3<f32> = u_xlat12;
  let x_79 : vec4<f32> = vs_TEXCOORD3;
  u_xlat12 = (vec3<f32>(x_77.x, x_77.x, x_77.x) * vec3<f32>(x_79.x, x_79.y, x_79.z));
  let x_88 : vec4<f32> = vs_TEXCOORD0;
  let x_91 : f32 = x_43.x_GlobalMipBias.x;
  let x_92 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_88.z, x_88.w), x_91);
  u_xlat2 = vec3<f32>(x_92.x, x_92.y, x_92.z);
  let x_99 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_100 : vec2<f32> = vec2<f32>(x_99.x, x_99.y);
  let x_104 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_100.x, x_100.y));
  let x_105 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_104.x, x_104.y, x_105.z);
  let x_107 : vec3<f32> = u_xlat3;
  let x_109 : vec4<f32> = hlslcc_FragCoord;
  let x_111 : vec2<f32> = (vec2<f32>(x_107.x, x_107.y) * vec2<f32>(x_109.x, x_109.y));
  let x_112 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_111.x, x_111.y, x_112.z);
  let x_117 : f32 = u_xlat3.y;
  let x_120 : f32 = x_43.x_ScaleBiasRt.x;
  let x_123 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat35 = ((x_117 * x_120) + x_123);
  let x_125 : f32 = u_xlat35;
  u_xlat3.z = (-(x_125) + 1.0f);
  let x_130 : f32 = u_xlat1;
  u_xlat35 = ((-(x_130) * 0.959999979f) + 0.959999979f);
  let x_136 : f32 = u_xlat35;
  u_xlat14 = (-(x_136) + 1.0f);
  let x_140 : vec4<f32> = u_xlat0;
  let x_142 : f32 = u_xlat35;
  u_xlat4 = (vec3<f32>(x_140.x, x_140.y, x_140.z) * vec3<f32>(x_142, x_142, x_142));
  let x_145 : vec4<f32> = u_xlat0;
  let x_149 : vec3<f32> = (vec3<f32>(x_145.x, x_145.y, x_145.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_150 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_149.x, x_149.y, x_149.z, x_150.w);
  let x_152 : f32 = u_xlat1;
  let x_154 : vec4<f32> = u_xlat0;
  let x_159 : vec3<f32> = ((vec3<f32>(x_152, x_152, x_152) * vec3<f32>(x_154.x, x_154.y, x_154.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_160 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_159.x, x_159.y, x_159.z, x_160.w);
  let x_163 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_163) + 1.0f);
  let x_166 : f32 = u_xlat1;
  let x_167 : f32 = u_xlat1;
  u_xlat35 = (x_166 * x_167);
  let x_169 : f32 = u_xlat35;
  u_xlat35 = max(x_169, 0.0078125f);
  let x_173 : f32 = u_xlat35;
  let x_174 : f32 = u_xlat35;
  u_xlat36 = (x_173 * x_174);
  let x_178 : f32 = u_xlat0.w;
  let x_179 : f32 = u_xlat14;
  u_xlat33 = (x_178 + x_179);
  let x_181 : f32 = u_xlat33;
  u_xlat33 = clamp(x_181, 0.0f, 1.0f);
  let x_184 : f32 = u_xlat35;
  u_xlat14 = ((x_184 * 4.0f) + 2.0f);
  let x_194 : vec3<f32> = u_xlat3;
  let x_197 : f32 = x_43.x_GlobalMipBias.x;
  let x_198 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_194.x, x_194.z), x_197);
  u_xlat3.x = x_198.x;
  let x_203 : f32 = u_xlat3.x;
  u_xlat25 = (x_203 + -1.0f);
  let x_208 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_209 : f32 = u_xlat25;
  u_xlat25 = ((x_208 * x_209) + 1.0f);
  let x_213 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_213, 1.0f);
  let x_218 : vec4<f32> = vs_TEXCOORD8;
  let x_219 : vec2<f32> = vec2<f32>(x_218.x, x_218.y);
  let x_221 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_219.x, x_219.y, x_221);
  let x_234 : vec3<f32> = txVec0;
  let x_236 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_234.xy, x_234.z);
  u_xlat37 = x_236;
  let x_246 : f32 = x_243.x_MainLightShadowParams.x;
  u_xlat5.x = (-(x_246) + 1.0f);
  let x_250 : f32 = u_xlat37;
  let x_252 : f32 = x_243.x_MainLightShadowParams.x;
  let x_255 : f32 = u_xlat5.x;
  u_xlat37 = ((x_250 * x_252) + x_255);
  let x_261 : f32 = vs_TEXCOORD8.z;
  u_xlatb5 = (0.0f >= x_261);
  let x_265 : f32 = vs_TEXCOORD8.z;
  u_xlatb16 = (x_265 >= 1.0f);
  let x_267 : bool = u_xlatb16;
  let x_268 : bool = u_xlatb5;
  u_xlatb5 = (x_267 | x_268);
  let x_270 : bool = u_xlatb5;
  let x_271 : f32 = u_xlat37;
  u_xlat37 = select(x_271, 1.0f, x_270);
  let x_275 : vec3<f32> = vs_TEXCOORD7;
  let x_279 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  u_xlat5 = (x_275 + -(x_279));
  let x_282 : vec3<f32> = u_xlat5;
  let x_283 : vec3<f32> = u_xlat5;
  u_xlat5.x = dot(x_282, x_283);
  let x_287 : f32 = u_xlat5.x;
  let x_289 : f32 = x_243.x_MainLightShadowParams.z;
  let x_292 : f32 = x_243.x_MainLightShadowParams.w;
  u_xlat5.x = ((x_287 * x_289) + x_292);
  let x_296 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_296, 0.0f, 1.0f);
  let x_300 : f32 = u_xlat37;
  u_xlat16 = (-(x_300) + 1.0f);
  let x_304 : f32 = u_xlat5.x;
  let x_305 : f32 = u_xlat16;
  let x_307 : f32 = u_xlat37;
  u_xlat37 = ((x_304 * x_305) + x_307);
  let x_309 : f32 = u_xlat25;
  let x_313 : vec4<f32> = x_43.x_MainLightColor;
  u_xlat5 = (vec3<f32>(x_309, x_309, x_309) * vec3<f32>(x_313.x, x_313.y, x_313.z));
  let x_318 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_318;
  let x_322 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_322;
  let x_326 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_326;
  let x_329 : vec3<f32> = u_xlat6;
  let x_331 : vec3<f32> = u_xlat12;
  u_xlat38 = dot(-(x_329), x_331);
  let x_333 : f32 = u_xlat38;
  let x_334 : f32 = u_xlat38;
  u_xlat38 = (x_333 + x_334);
  let x_337 : vec3<f32> = u_xlat12;
  let x_338 : f32 = u_xlat38;
  let x_342 : vec3<f32> = u_xlat6;
  let x_344 : vec3<f32> = ((x_337 * -(vec3<f32>(x_338, x_338, x_338))) + -(x_342));
  let x_345 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_344.x, x_344.y, x_344.z, x_345.w);
  let x_347 : vec3<f32> = u_xlat12;
  let x_348 : vec3<f32> = u_xlat6;
  u_xlat38 = dot(x_347, x_348);
  let x_350 : f32 = u_xlat38;
  u_xlat38 = clamp(x_350, 0.0f, 1.0f);
  let x_352 : f32 = u_xlat38;
  u_xlat38 = (-(x_352) + 1.0f);
  let x_355 : f32 = u_xlat38;
  let x_356 : f32 = u_xlat38;
  u_xlat38 = (x_355 * x_356);
  let x_358 : f32 = u_xlat38;
  let x_359 : f32 = u_xlat38;
  u_xlat38 = (x_358 * x_359);
  let x_362 : f32 = u_xlat1;
  u_xlat39 = ((-(x_362) * 0.699999988f) + 1.700000048f);
  let x_368 : f32 = u_xlat1;
  let x_369 : f32 = u_xlat39;
  u_xlat1 = (x_368 * x_369);
  let x_371 : f32 = u_xlat1;
  u_xlat1 = (x_371 * 6.0f);
  let x_382 : vec4<f32> = u_xlat7;
  let x_384 : f32 = u_xlat1;
  let x_385 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_382.x, x_382.y, x_382.z), x_384);
  u_xlat7 = x_385;
  let x_387 : f32 = u_xlat7.w;
  u_xlat1 = (x_387 + -1.0f);
  let x_394 : f32 = x_392.unity_SpecCube0_HDR.w;
  let x_395 : f32 = u_xlat1;
  u_xlat1 = ((x_394 * x_395) + 1.0f);
  let x_398 : f32 = u_xlat1;
  u_xlat1 = max(x_398, 0.0f);
  let x_400 : f32 = u_xlat1;
  u_xlat1 = log2(x_400);
  let x_402 : f32 = u_xlat1;
  let x_404 : f32 = x_392.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_402 * x_404);
  let x_406 : f32 = u_xlat1;
  u_xlat1 = exp2(x_406);
  let x_408 : f32 = u_xlat1;
  let x_410 : f32 = x_392.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_408 * x_410);
  let x_412 : vec4<f32> = u_xlat7;
  let x_414 : f32 = u_xlat1;
  let x_416 : vec3<f32> = (vec3<f32>(x_412.x, x_412.y, x_412.z) * vec3<f32>(x_414, x_414, x_414));
  let x_417 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_416.x, x_416.y, x_416.z, x_417.w);
  let x_421 : f32 = u_xlat35;
  let x_423 : f32 = u_xlat35;
  u_xlat8 = ((vec2<f32>(x_421, x_421) * vec2<f32>(x_423, x_423)) + vec2<f32>(-1.0f, 1.0f));
  let x_429 : f32 = u_xlat8.y;
  u_xlat1 = (1.0f / x_429);
  let x_432 : vec4<f32> = u_xlat0;
  let x_435 : f32 = u_xlat33;
  u_xlat19 = (-(vec3<f32>(x_432.x, x_432.y, x_432.z)) + vec3<f32>(x_435, x_435, x_435));
  let x_438 : f32 = u_xlat38;
  let x_440 : vec3<f32> = u_xlat19;
  let x_442 : vec4<f32> = u_xlat0;
  u_xlat19 = ((vec3<f32>(x_438, x_438, x_438) * x_440) + vec3<f32>(x_442.x, x_442.y, x_442.z));
  let x_445 : f32 = u_xlat1;
  let x_447 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_445, x_445, x_445) * x_447);
  let x_449 : vec4<f32> = u_xlat7;
  let x_451 : vec3<f32> = u_xlat19;
  let x_452 : vec3<f32> = (vec3<f32>(x_449.x, x_449.y, x_449.z) * x_451);
  let x_453 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_452.x, x_452.y, x_452.z, x_453.w);
  let x_455 : vec3<f32> = u_xlat2;
  let x_456 : vec3<f32> = u_xlat4;
  let x_458 : vec4<f32> = u_xlat7;
  u_xlat2 = ((x_455 * x_456) + vec3<f32>(x_458.x, x_458.y, x_458.z));
  let x_461 : f32 = u_xlat37;
  let x_464 : f32 = x_392.unity_LightData.z;
  u_xlat33 = (x_461 * x_464);
  let x_466 : vec3<f32> = u_xlat12;
  let x_469 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat1 = dot(x_466, vec3<f32>(x_469.x, x_469.y, x_469.z));
  let x_472 : f32 = u_xlat1;
  u_xlat1 = clamp(x_472, 0.0f, 1.0f);
  let x_474 : f32 = u_xlat33;
  let x_475 : f32 = u_xlat1;
  u_xlat33 = (x_474 * x_475);
  let x_477 : f32 = u_xlat33;
  let x_479 : vec3<f32> = u_xlat5;
  u_xlat5 = (vec3<f32>(x_477, x_477, x_477) * x_479);
  let x_481 : vec3<f32> = u_xlat6;
  let x_483 : vec4<f32> = x_43.x_MainLightPosition;
  let x_485 : vec3<f32> = (x_481 + vec3<f32>(x_483.x, x_483.y, x_483.z));
  let x_486 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_485.x, x_485.y, x_485.z, x_486.w);
  let x_488 : vec4<f32> = u_xlat7;
  let x_490 : vec4<f32> = u_xlat7;
  u_xlat33 = dot(vec3<f32>(x_488.x, x_488.y, x_488.z), vec3<f32>(x_490.x, x_490.y, x_490.z));
  let x_493 : f32 = u_xlat33;
  u_xlat33 = max(x_493, 1.17549435e-37f);
  let x_496 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_496);
  let x_498 : f32 = u_xlat33;
  let x_500 : vec4<f32> = u_xlat7;
  let x_502 : vec3<f32> = (vec3<f32>(x_498, x_498, x_498) * vec3<f32>(x_500.x, x_500.y, x_500.z));
  let x_503 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_502.x, x_502.y, x_502.z, x_503.w);
  let x_505 : vec3<f32> = u_xlat12;
  let x_506 : vec4<f32> = u_xlat7;
  u_xlat33 = dot(x_505, vec3<f32>(x_506.x, x_506.y, x_506.z));
  let x_509 : f32 = u_xlat33;
  u_xlat33 = clamp(x_509, 0.0f, 1.0f);
  let x_512 : vec4<f32> = x_43.x_MainLightPosition;
  let x_514 : vec4<f32> = u_xlat7;
  u_xlat1 = dot(vec3<f32>(x_512.x, x_512.y, x_512.z), vec3<f32>(x_514.x, x_514.y, x_514.z));
  let x_517 : f32 = u_xlat1;
  u_xlat1 = clamp(x_517, 0.0f, 1.0f);
  let x_519 : f32 = u_xlat33;
  let x_520 : f32 = u_xlat33;
  u_xlat33 = (x_519 * x_520);
  let x_522 : f32 = u_xlat33;
  let x_524 : f32 = u_xlat8.x;
  u_xlat33 = ((x_522 * x_524) + 1.000010014f);
  let x_528 : f32 = u_xlat1;
  let x_529 : f32 = u_xlat1;
  u_xlat1 = (x_528 * x_529);
  let x_531 : f32 = u_xlat33;
  let x_532 : f32 = u_xlat33;
  u_xlat33 = (x_531 * x_532);
  let x_534 : f32 = u_xlat1;
  u_xlat1 = max(x_534, 0.100000001f);
  let x_537 : f32 = u_xlat33;
  let x_538 : f32 = u_xlat1;
  u_xlat33 = (x_537 * x_538);
  let x_540 : f32 = u_xlat14;
  let x_541 : f32 = u_xlat33;
  u_xlat33 = (x_540 * x_541);
  let x_543 : f32 = u_xlat36;
  let x_544 : f32 = u_xlat33;
  u_xlat33 = (x_543 / x_544);
  let x_546 : vec4<f32> = u_xlat0;
  let x_548 : f32 = u_xlat33;
  let x_551 : vec3<f32> = u_xlat4;
  let x_552 : vec3<f32> = ((vec3<f32>(x_546.x, x_546.y, x_546.z) * vec3<f32>(x_548, x_548, x_548)) + x_551);
  let x_553 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_552.x, x_552.y, x_552.z, x_553.w);
  let x_555 : vec3<f32> = u_xlat5;
  let x_556 : vec4<f32> = u_xlat7;
  u_xlat5 = (x_555 * vec3<f32>(x_556.x, x_556.y, x_556.z));
  let x_560 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_562 : f32 = x_392.unity_LightData.y;
  u_xlat33 = min(x_560, x_562);
  let x_566 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_566));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_578 : u32 = u_xlatu_loop_1;
    let x_579 : u32 = u_xlatu33;
    if ((x_578 < x_579)) {
    } else {
      break;
    }
    let x_582 : u32 = u_xlatu_loop_1;
    u_xlatu35 = (x_582 >> 2u);
    let x_586 : u32 = u_xlatu_loop_1;
    u_xlati37 = bitcast<i32>((x_586 & 3u));
    let x_589 : u32 = u_xlatu35;
    let x_592 : vec4<f32> = x_392.unity_LightIndices[bitcast<i32>(x_589)];
    let x_602 : i32 = u_xlati37;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_607 : vec4<u32> = indexable[x_602];
    u_xlat35 = dot(x_592, bitcast<vec4<f32>>(x_607));
    let x_611 : f32 = u_xlat35;
    u_xlati35 = i32(x_611);
    let x_613 : vec3<f32> = vs_TEXCOORD7;
    let x_625 : i32 = u_xlati35;
    let x_627 : vec4<f32> = x_624.x_AdditionalLightsPosition[x_625];
    let x_630 : i32 = u_xlati35;
    let x_632 : vec4<f32> = x_624.x_AdditionalLightsPosition[x_630];
    u_xlat19 = ((-(x_613) * vec3<f32>(x_627.w, x_627.w, x_627.w)) + vec3<f32>(x_632.x, x_632.y, x_632.z));
    let x_635 : vec3<f32> = u_xlat19;
    let x_636 : vec3<f32> = u_xlat19;
    u_xlat37 = dot(x_635, x_636);
    let x_638 : f32 = u_xlat37;
    u_xlat37 = max(x_638, 6.10351562e-05f);
    let x_641 : f32 = u_xlat37;
    u_xlat38 = inverseSqrt(x_641);
    let x_644 : f32 = u_xlat38;
    let x_646 : vec3<f32> = u_xlat19;
    u_xlat9 = (vec3<f32>(x_644, x_644, x_644) * x_646);
    let x_648 : f32 = u_xlat37;
    u_xlat39 = (1.0f / x_648);
    let x_650 : f32 = u_xlat37;
    let x_651 : i32 = u_xlati35;
    let x_653 : f32 = x_624.x_AdditionalLightsAttenuation[x_651].x;
    u_xlat37 = (x_650 * x_653);
    let x_655 : f32 = u_xlat37;
    let x_657 : f32 = u_xlat37;
    u_xlat37 = ((-(x_655) * x_657) + 1.0f);
    let x_660 : f32 = u_xlat37;
    u_xlat37 = max(x_660, 0.0f);
    let x_662 : f32 = u_xlat37;
    let x_663 : f32 = u_xlat37;
    u_xlat37 = (x_662 * x_663);
    let x_665 : f32 = u_xlat37;
    let x_666 : f32 = u_xlat39;
    u_xlat37 = (x_665 * x_666);
    let x_668 : i32 = u_xlati35;
    let x_670 : vec4<f32> = x_624.x_AdditionalLightsSpotDir[x_668];
    let x_672 : vec3<f32> = u_xlat9;
    u_xlat39 = dot(vec3<f32>(x_670.x, x_670.y, x_670.z), x_672);
    let x_674 : f32 = u_xlat39;
    let x_675 : i32 = u_xlati35;
    let x_677 : f32 = x_624.x_AdditionalLightsAttenuation[x_675].z;
    let x_679 : i32 = u_xlati35;
    let x_681 : f32 = x_624.x_AdditionalLightsAttenuation[x_679].w;
    u_xlat39 = ((x_674 * x_677) + x_681);
    let x_683 : f32 = u_xlat39;
    u_xlat39 = clamp(x_683, 0.0f, 1.0f);
    let x_685 : f32 = u_xlat39;
    let x_686 : f32 = u_xlat39;
    u_xlat39 = (x_685 * x_686);
    let x_688 : f32 = u_xlat37;
    let x_689 : f32 = u_xlat39;
    u_xlat37 = (x_688 * x_689);
    let x_692 : f32 = u_xlat25;
    let x_694 : i32 = u_xlati35;
    let x_696 : vec4<f32> = x_624.x_AdditionalLightsColor[x_694];
    u_xlat10 = (vec3<f32>(x_692, x_692, x_692) * vec3<f32>(x_696.x, x_696.y, x_696.z));
    let x_699 : vec3<f32> = u_xlat12;
    let x_700 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_699, x_700);
    let x_702 : f32 = u_xlat35;
    u_xlat35 = clamp(x_702, 0.0f, 1.0f);
    let x_704 : f32 = u_xlat35;
    let x_705 : f32 = u_xlat37;
    u_xlat35 = (x_704 * x_705);
    let x_707 : f32 = u_xlat35;
    let x_709 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_707, x_707, x_707) * x_709);
    let x_711 : vec3<f32> = u_xlat19;
    let x_712 : f32 = u_xlat38;
    let x_715 : vec3<f32> = u_xlat6;
    u_xlat19 = ((x_711 * vec3<f32>(x_712, x_712, x_712)) + x_715);
    let x_717 : vec3<f32> = u_xlat19;
    let x_718 : vec3<f32> = u_xlat19;
    u_xlat35 = dot(x_717, x_718);
    let x_720 : f32 = u_xlat35;
    u_xlat35 = max(x_720, 1.17549435e-37f);
    let x_722 : f32 = u_xlat35;
    u_xlat35 = inverseSqrt(x_722);
    let x_724 : f32 = u_xlat35;
    let x_726 : vec3<f32> = u_xlat19;
    u_xlat19 = (vec3<f32>(x_724, x_724, x_724) * x_726);
    let x_728 : vec3<f32> = u_xlat12;
    let x_729 : vec3<f32> = u_xlat19;
    u_xlat35 = dot(x_728, x_729);
    let x_731 : f32 = u_xlat35;
    u_xlat35 = clamp(x_731, 0.0f, 1.0f);
    let x_733 : vec3<f32> = u_xlat9;
    let x_734 : vec3<f32> = u_xlat19;
    u_xlat37 = dot(x_733, x_734);
    let x_736 : f32 = u_xlat37;
    u_xlat37 = clamp(x_736, 0.0f, 1.0f);
    let x_738 : f32 = u_xlat35;
    let x_739 : f32 = u_xlat35;
    u_xlat35 = (x_738 * x_739);
    let x_741 : f32 = u_xlat35;
    let x_743 : f32 = u_xlat8.x;
    u_xlat35 = ((x_741 * x_743) + 1.000010014f);
    let x_746 : f32 = u_xlat37;
    let x_747 : f32 = u_xlat37;
    u_xlat37 = (x_746 * x_747);
    let x_749 : f32 = u_xlat35;
    let x_750 : f32 = u_xlat35;
    u_xlat35 = (x_749 * x_750);
    let x_752 : f32 = u_xlat37;
    u_xlat37 = max(x_752, 0.100000001f);
    let x_754 : f32 = u_xlat35;
    let x_755 : f32 = u_xlat37;
    u_xlat35 = (x_754 * x_755);
    let x_757 : f32 = u_xlat14;
    let x_758 : f32 = u_xlat35;
    u_xlat35 = (x_757 * x_758);
    let x_760 : f32 = u_xlat36;
    let x_761 : f32 = u_xlat35;
    u_xlat35 = (x_760 / x_761);
    let x_763 : vec4<f32> = u_xlat0;
    let x_765 : f32 = u_xlat35;
    let x_768 : vec3<f32> = u_xlat4;
    u_xlat19 = ((vec3<f32>(x_763.x, x_763.y, x_763.z) * vec3<f32>(x_765, x_765, x_765)) + x_768);
    let x_770 : vec3<f32> = u_xlat19;
    let x_771 : vec3<f32> = u_xlat10;
    let x_773 : vec4<f32> = u_xlat7;
    let x_775 : vec3<f32> = ((x_770 * x_771) + vec3<f32>(x_773.x, x_773.y, x_773.z));
    let x_776 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_775.x, x_775.y, x_775.z, x_776.w);

    continuing {
      let x_778 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_778 + bitcast<u32>(1i));
    }
  }
  let x_780 : vec3<f32> = u_xlat2;
  let x_781 : vec3<f32> = u_xlat3;
  let x_784 : vec3<f32> = u_xlat5;
  let x_785 : vec3<f32> = ((x_780 * vec3<f32>(x_781.x, x_781.x, x_781.x)) + x_784);
  let x_786 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_785.x, x_785.y, x_785.z, x_786.w);
  let x_790 : vec4<f32> = u_xlat7;
  let x_792 : vec4<f32> = u_xlat0;
  let x_794 : vec3<f32> = (vec3<f32>(x_790.x, x_790.y, x_790.z) + vec3<f32>(x_792.x, x_792.y, x_792.z));
  let x_795 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_794.x, x_794.y, x_794.z, x_795.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD3_param : vec4<f32>, @location(5) vs_TEXCOORD8_param : vec4<f32>, @location(4) vs_TEXCOORD7_param : vec3<f32>, @location(2) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD5_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  main_1();
  return main_out(SV_Target0);
}

