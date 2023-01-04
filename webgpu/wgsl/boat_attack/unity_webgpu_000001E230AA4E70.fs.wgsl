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

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(0) @binding(4) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MetallicTex : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(5) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(3) var<uniform> x_286 : MainLightShadows;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_435 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_670 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : f32;
  var u_xlat12 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
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
  let x_92 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_88.z, x_88.w), x_91);
  u_xlat2 = x_92;
  let x_98 : vec4<f32> = vs_TEXCOORD0;
  let x_101 : f32 = x_43.x_GlobalMipBias.x;
  let x_102 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_98.z, x_98.w), x_101);
  u_xlat3 = vec3<f32>(x_102.x, x_102.y, x_102.z);
  let x_104 : vec4<f32> = u_xlat2;
  let x_108 : vec3<f32> = (vec3<f32>(x_104.x, x_104.y, x_104.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_109 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_108.x, x_108.y, x_108.z, x_109.w);
  let x_111 : vec3<f32> = u_xlat12;
  let x_112 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(x_111, vec3<f32>(x_112.x, x_112.y, x_112.z));
  let x_117 : f32 = u_xlat2.x;
  u_xlat2.x = (x_117 + 0.5f);
  let x_121 : vec4<f32> = u_xlat2;
  let x_123 : vec3<f32> = u_xlat3;
  let x_124 : vec3<f32> = (vec3<f32>(x_121.x, x_121.x, x_121.x) * x_123);
  let x_125 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_124.x, x_124.y, x_124.z, x_125.w);
  let x_129 : f32 = u_xlat2.w;
  u_xlat35 = max(x_129, 0.0001f);
  let x_132 : vec4<f32> = u_xlat2;
  let x_134 : f32 = u_xlat35;
  let x_136 : vec3<f32> = (vec3<f32>(x_132.x, x_132.y, x_132.z) / vec3<f32>(x_134, x_134, x_134));
  let x_137 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_136.x, x_136.y, x_136.z, x_137.w);
  let x_143 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_144 : vec2<f32> = vec2<f32>(x_143.x, x_143.y);
  let x_148 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_144.x, x_144.y));
  let x_149 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_148.x, x_148.y, x_149.z);
  let x_151 : vec3<f32> = u_xlat3;
  let x_153 : vec4<f32> = hlslcc_FragCoord;
  let x_155 : vec2<f32> = (vec2<f32>(x_151.x, x_151.y) * vec2<f32>(x_153.x, x_153.y));
  let x_156 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_155.x, x_155.y, x_156.z);
  let x_160 : f32 = u_xlat3.y;
  let x_163 : f32 = x_43.x_ScaleBiasRt.x;
  let x_166 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat35 = ((x_160 * x_163) + x_166);
  let x_168 : f32 = u_xlat35;
  u_xlat3.z = (-(x_168) + 1.0f);
  let x_173 : f32 = u_xlat1;
  u_xlat35 = ((-(x_173) * 0.959999979f) + 0.959999979f);
  let x_179 : f32 = u_xlat35;
  u_xlat14 = (-(x_179) + 1.0f);
  let x_183 : vec4<f32> = u_xlat0;
  let x_185 : f32 = u_xlat35;
  u_xlat4 = (vec3<f32>(x_183.x, x_183.y, x_183.z) * vec3<f32>(x_185, x_185, x_185));
  let x_188 : vec4<f32> = u_xlat0;
  let x_192 : vec3<f32> = (vec3<f32>(x_188.x, x_188.y, x_188.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_193 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_192.x, x_192.y, x_192.z, x_193.w);
  let x_195 : f32 = u_xlat1;
  let x_197 : vec4<f32> = u_xlat0;
  let x_202 : vec3<f32> = ((vec3<f32>(x_195, x_195, x_195) * vec3<f32>(x_197.x, x_197.y, x_197.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_203 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_202.x, x_202.y, x_202.z, x_203.w);
  let x_206 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_206) + 1.0f);
  let x_209 : f32 = u_xlat1;
  let x_210 : f32 = u_xlat1;
  u_xlat35 = (x_209 * x_210);
  let x_212 : f32 = u_xlat35;
  u_xlat35 = max(x_212, 0.0078125f);
  let x_216 : f32 = u_xlat35;
  let x_217 : f32 = u_xlat35;
  u_xlat36 = (x_216 * x_217);
  let x_221 : f32 = u_xlat0.w;
  let x_222 : f32 = u_xlat14;
  u_xlat33 = (x_221 + x_222);
  let x_224 : f32 = u_xlat33;
  u_xlat33 = clamp(x_224, 0.0f, 1.0f);
  let x_227 : f32 = u_xlat35;
  u_xlat14 = ((x_227 * 4.0f) + 2.0f);
  let x_237 : vec3<f32> = u_xlat3;
  let x_240 : f32 = x_43.x_GlobalMipBias.x;
  let x_241 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_237.x, x_237.z), x_240);
  u_xlat3.x = x_241.x;
  let x_246 : f32 = u_xlat3.x;
  u_xlat25 = (x_246 + -1.0f);
  let x_251 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_252 : f32 = u_xlat25;
  u_xlat25 = ((x_251 * x_252) + 1.0f);
  let x_256 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_256, 1.0f);
  let x_261 : vec4<f32> = vs_TEXCOORD8;
  let x_262 : vec2<f32> = vec2<f32>(x_261.x, x_261.y);
  let x_264 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_262.x, x_262.y, x_264);
  let x_277 : vec3<f32> = txVec0;
  let x_279 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_277.xy, x_277.z);
  u_xlat37 = x_279;
  let x_289 : f32 = x_286.x_MainLightShadowParams.x;
  u_xlat5.x = (-(x_289) + 1.0f);
  let x_293 : f32 = u_xlat37;
  let x_295 : f32 = x_286.x_MainLightShadowParams.x;
  let x_298 : f32 = u_xlat5.x;
  u_xlat37 = ((x_293 * x_295) + x_298);
  let x_304 : f32 = vs_TEXCOORD8.z;
  u_xlatb5 = (0.0f >= x_304);
  let x_308 : f32 = vs_TEXCOORD8.z;
  u_xlatb16 = (x_308 >= 1.0f);
  let x_310 : bool = u_xlatb16;
  let x_311 : bool = u_xlatb5;
  u_xlatb5 = (x_310 | x_311);
  let x_313 : bool = u_xlatb5;
  let x_314 : f32 = u_xlat37;
  u_xlat37 = select(x_314, 1.0f, x_313);
  let x_318 : vec3<f32> = vs_TEXCOORD7;
  let x_322 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  u_xlat5 = (x_318 + -(x_322));
  let x_325 : vec3<f32> = u_xlat5;
  let x_326 : vec3<f32> = u_xlat5;
  u_xlat5.x = dot(x_325, x_326);
  let x_330 : f32 = u_xlat5.x;
  let x_332 : f32 = x_286.x_MainLightShadowParams.z;
  let x_335 : f32 = x_286.x_MainLightShadowParams.w;
  u_xlat5.x = ((x_330 * x_332) + x_335);
  let x_339 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_339, 0.0f, 1.0f);
  let x_343 : f32 = u_xlat37;
  u_xlat16 = (-(x_343) + 1.0f);
  let x_347 : f32 = u_xlat5.x;
  let x_348 : f32 = u_xlat16;
  let x_350 : f32 = u_xlat37;
  u_xlat37 = ((x_347 * x_348) + x_350);
  let x_352 : f32 = u_xlat25;
  let x_356 : vec4<f32> = x_43.x_MainLightColor;
  u_xlat5 = (vec3<f32>(x_352, x_352, x_352) * vec3<f32>(x_356.x, x_356.y, x_356.z));
  let x_361 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_361;
  let x_365 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_365;
  let x_369 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_369;
  let x_372 : vec3<f32> = u_xlat6;
  let x_374 : vec3<f32> = u_xlat12;
  u_xlat38 = dot(-(x_372), x_374);
  let x_376 : f32 = u_xlat38;
  let x_377 : f32 = u_xlat38;
  u_xlat38 = (x_376 + x_377);
  let x_380 : vec3<f32> = u_xlat12;
  let x_381 : f32 = u_xlat38;
  let x_385 : vec3<f32> = u_xlat6;
  let x_387 : vec3<f32> = ((x_380 * -(vec3<f32>(x_381, x_381, x_381))) + -(x_385));
  let x_388 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_387.x, x_387.y, x_387.z, x_388.w);
  let x_390 : vec3<f32> = u_xlat12;
  let x_391 : vec3<f32> = u_xlat6;
  u_xlat38 = dot(x_390, x_391);
  let x_393 : f32 = u_xlat38;
  u_xlat38 = clamp(x_393, 0.0f, 1.0f);
  let x_395 : f32 = u_xlat38;
  u_xlat38 = (-(x_395) + 1.0f);
  let x_398 : f32 = u_xlat38;
  let x_399 : f32 = u_xlat38;
  u_xlat38 = (x_398 * x_399);
  let x_401 : f32 = u_xlat38;
  let x_402 : f32 = u_xlat38;
  u_xlat38 = (x_401 * x_402);
  let x_405 : f32 = u_xlat1;
  u_xlat39 = ((-(x_405) * 0.699999988f) + 1.700000048f);
  let x_411 : f32 = u_xlat1;
  let x_412 : f32 = u_xlat39;
  u_xlat1 = (x_411 * x_412);
  let x_414 : f32 = u_xlat1;
  u_xlat1 = (x_414 * 6.0f);
  let x_425 : vec4<f32> = u_xlat7;
  let x_427 : f32 = u_xlat1;
  let x_428 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_425.x, x_425.y, x_425.z), x_427);
  u_xlat7 = x_428;
  let x_430 : f32 = u_xlat7.w;
  u_xlat1 = (x_430 + -1.0f);
  let x_437 : f32 = x_435.unity_SpecCube0_HDR.w;
  let x_438 : f32 = u_xlat1;
  u_xlat1 = ((x_437 * x_438) + 1.0f);
  let x_441 : f32 = u_xlat1;
  u_xlat1 = max(x_441, 0.0f);
  let x_443 : f32 = u_xlat1;
  u_xlat1 = log2(x_443);
  let x_445 : f32 = u_xlat1;
  let x_447 : f32 = x_435.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_445 * x_447);
  let x_449 : f32 = u_xlat1;
  u_xlat1 = exp2(x_449);
  let x_451 : f32 = u_xlat1;
  let x_453 : f32 = x_435.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_451 * x_453);
  let x_455 : vec4<f32> = u_xlat7;
  let x_457 : f32 = u_xlat1;
  let x_459 : vec3<f32> = (vec3<f32>(x_455.x, x_455.y, x_455.z) * vec3<f32>(x_457, x_457, x_457));
  let x_460 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_459.x, x_459.y, x_459.z, x_460.w);
  let x_464 : f32 = u_xlat35;
  let x_466 : f32 = u_xlat35;
  u_xlat8 = ((vec2<f32>(x_464, x_464) * vec2<f32>(x_466, x_466)) + vec2<f32>(-1.0f, 1.0f));
  let x_472 : f32 = u_xlat8.y;
  u_xlat1 = (1.0f / x_472);
  let x_475 : vec4<f32> = u_xlat0;
  let x_478 : f32 = u_xlat33;
  u_xlat19 = (-(vec3<f32>(x_475.x, x_475.y, x_475.z)) + vec3<f32>(x_478, x_478, x_478));
  let x_481 : f32 = u_xlat38;
  let x_483 : vec3<f32> = u_xlat19;
  let x_485 : vec4<f32> = u_xlat0;
  u_xlat19 = ((vec3<f32>(x_481, x_481, x_481) * x_483) + vec3<f32>(x_485.x, x_485.y, x_485.z));
  let x_488 : f32 = u_xlat1;
  let x_490 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_488, x_488, x_488) * x_490);
  let x_492 : vec4<f32> = u_xlat7;
  let x_494 : vec3<f32> = u_xlat19;
  let x_495 : vec3<f32> = (vec3<f32>(x_492.x, x_492.y, x_492.z) * x_494);
  let x_496 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_495.x, x_495.y, x_495.z, x_496.w);
  let x_498 : vec4<f32> = u_xlat2;
  let x_500 : vec3<f32> = u_xlat4;
  let x_502 : vec4<f32> = u_xlat7;
  let x_504 : vec3<f32> = ((vec3<f32>(x_498.x, x_498.y, x_498.z) * x_500) + vec3<f32>(x_502.x, x_502.y, x_502.z));
  let x_505 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_504.x, x_504.y, x_504.z, x_505.w);
  let x_507 : f32 = u_xlat37;
  let x_510 : f32 = x_435.unity_LightData.z;
  u_xlat33 = (x_507 * x_510);
  let x_512 : vec3<f32> = u_xlat12;
  let x_515 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat1 = dot(x_512, vec3<f32>(x_515.x, x_515.y, x_515.z));
  let x_518 : f32 = u_xlat1;
  u_xlat1 = clamp(x_518, 0.0f, 1.0f);
  let x_520 : f32 = u_xlat33;
  let x_521 : f32 = u_xlat1;
  u_xlat33 = (x_520 * x_521);
  let x_523 : f32 = u_xlat33;
  let x_525 : vec3<f32> = u_xlat5;
  u_xlat5 = (vec3<f32>(x_523, x_523, x_523) * x_525);
  let x_527 : vec3<f32> = u_xlat6;
  let x_529 : vec4<f32> = x_43.x_MainLightPosition;
  let x_531 : vec3<f32> = (x_527 + vec3<f32>(x_529.x, x_529.y, x_529.z));
  let x_532 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_531.x, x_531.y, x_531.z, x_532.w);
  let x_534 : vec4<f32> = u_xlat7;
  let x_536 : vec4<f32> = u_xlat7;
  u_xlat33 = dot(vec3<f32>(x_534.x, x_534.y, x_534.z), vec3<f32>(x_536.x, x_536.y, x_536.z));
  let x_539 : f32 = u_xlat33;
  u_xlat33 = max(x_539, 1.17549435e-37f);
  let x_542 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_542);
  let x_544 : f32 = u_xlat33;
  let x_546 : vec4<f32> = u_xlat7;
  let x_548 : vec3<f32> = (vec3<f32>(x_544, x_544, x_544) * vec3<f32>(x_546.x, x_546.y, x_546.z));
  let x_549 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_548.x, x_548.y, x_548.z, x_549.w);
  let x_551 : vec3<f32> = u_xlat12;
  let x_552 : vec4<f32> = u_xlat7;
  u_xlat33 = dot(x_551, vec3<f32>(x_552.x, x_552.y, x_552.z));
  let x_555 : f32 = u_xlat33;
  u_xlat33 = clamp(x_555, 0.0f, 1.0f);
  let x_558 : vec4<f32> = x_43.x_MainLightPosition;
  let x_560 : vec4<f32> = u_xlat7;
  u_xlat1 = dot(vec3<f32>(x_558.x, x_558.y, x_558.z), vec3<f32>(x_560.x, x_560.y, x_560.z));
  let x_563 : f32 = u_xlat1;
  u_xlat1 = clamp(x_563, 0.0f, 1.0f);
  let x_565 : f32 = u_xlat33;
  let x_566 : f32 = u_xlat33;
  u_xlat33 = (x_565 * x_566);
  let x_568 : f32 = u_xlat33;
  let x_570 : f32 = u_xlat8.x;
  u_xlat33 = ((x_568 * x_570) + 1.000010014f);
  let x_574 : f32 = u_xlat1;
  let x_575 : f32 = u_xlat1;
  u_xlat1 = (x_574 * x_575);
  let x_577 : f32 = u_xlat33;
  let x_578 : f32 = u_xlat33;
  u_xlat33 = (x_577 * x_578);
  let x_580 : f32 = u_xlat1;
  u_xlat1 = max(x_580, 0.100000001f);
  let x_583 : f32 = u_xlat33;
  let x_584 : f32 = u_xlat1;
  u_xlat33 = (x_583 * x_584);
  let x_586 : f32 = u_xlat14;
  let x_587 : f32 = u_xlat33;
  u_xlat33 = (x_586 * x_587);
  let x_589 : f32 = u_xlat36;
  let x_590 : f32 = u_xlat33;
  u_xlat33 = (x_589 / x_590);
  let x_592 : vec4<f32> = u_xlat0;
  let x_594 : f32 = u_xlat33;
  let x_597 : vec3<f32> = u_xlat4;
  let x_598 : vec3<f32> = ((vec3<f32>(x_592.x, x_592.y, x_592.z) * vec3<f32>(x_594, x_594, x_594)) + x_597);
  let x_599 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_598.x, x_598.y, x_598.z, x_599.w);
  let x_601 : vec3<f32> = u_xlat5;
  let x_602 : vec4<f32> = u_xlat7;
  u_xlat5 = (x_601 * vec3<f32>(x_602.x, x_602.y, x_602.z));
  let x_606 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_608 : f32 = x_435.unity_LightData.y;
  u_xlat33 = min(x_606, x_608);
  let x_612 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_612));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_624 : u32 = u_xlatu_loop_1;
    let x_625 : u32 = u_xlatu33;
    if ((x_624 < x_625)) {
    } else {
      break;
    }
    let x_628 : u32 = u_xlatu_loop_1;
    u_xlatu35 = (x_628 >> 2u);
    let x_632 : u32 = u_xlatu_loop_1;
    u_xlati37 = bitcast<i32>((x_632 & 3u));
    let x_635 : u32 = u_xlatu35;
    let x_638 : vec4<f32> = x_435.unity_LightIndices[bitcast<i32>(x_635)];
    let x_648 : i32 = u_xlati37;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_653 : vec4<u32> = indexable[x_648];
    u_xlat35 = dot(x_638, bitcast<vec4<f32>>(x_653));
    let x_657 : f32 = u_xlat35;
    u_xlati35 = i32(x_657);
    let x_659 : vec3<f32> = vs_TEXCOORD7;
    let x_671 : i32 = u_xlati35;
    let x_673 : vec4<f32> = x_670.x_AdditionalLightsPosition[x_671];
    let x_676 : i32 = u_xlati35;
    let x_678 : vec4<f32> = x_670.x_AdditionalLightsPosition[x_676];
    u_xlat19 = ((-(x_659) * vec3<f32>(x_673.w, x_673.w, x_673.w)) + vec3<f32>(x_678.x, x_678.y, x_678.z));
    let x_681 : vec3<f32> = u_xlat19;
    let x_682 : vec3<f32> = u_xlat19;
    u_xlat37 = dot(x_681, x_682);
    let x_684 : f32 = u_xlat37;
    u_xlat37 = max(x_684, 6.10351562e-05f);
    let x_687 : f32 = u_xlat37;
    u_xlat38 = inverseSqrt(x_687);
    let x_690 : f32 = u_xlat38;
    let x_692 : vec3<f32> = u_xlat19;
    u_xlat9 = (vec3<f32>(x_690, x_690, x_690) * x_692);
    let x_694 : f32 = u_xlat37;
    u_xlat39 = (1.0f / x_694);
    let x_696 : f32 = u_xlat37;
    let x_697 : i32 = u_xlati35;
    let x_699 : f32 = x_670.x_AdditionalLightsAttenuation[x_697].x;
    u_xlat37 = (x_696 * x_699);
    let x_701 : f32 = u_xlat37;
    let x_703 : f32 = u_xlat37;
    u_xlat37 = ((-(x_701) * x_703) + 1.0f);
    let x_706 : f32 = u_xlat37;
    u_xlat37 = max(x_706, 0.0f);
    let x_708 : f32 = u_xlat37;
    let x_709 : f32 = u_xlat37;
    u_xlat37 = (x_708 * x_709);
    let x_711 : f32 = u_xlat37;
    let x_712 : f32 = u_xlat39;
    u_xlat37 = (x_711 * x_712);
    let x_714 : i32 = u_xlati35;
    let x_716 : vec4<f32> = x_670.x_AdditionalLightsSpotDir[x_714];
    let x_718 : vec3<f32> = u_xlat9;
    u_xlat39 = dot(vec3<f32>(x_716.x, x_716.y, x_716.z), x_718);
    let x_720 : f32 = u_xlat39;
    let x_721 : i32 = u_xlati35;
    let x_723 : f32 = x_670.x_AdditionalLightsAttenuation[x_721].z;
    let x_725 : i32 = u_xlati35;
    let x_727 : f32 = x_670.x_AdditionalLightsAttenuation[x_725].w;
    u_xlat39 = ((x_720 * x_723) + x_727);
    let x_729 : f32 = u_xlat39;
    u_xlat39 = clamp(x_729, 0.0f, 1.0f);
    let x_731 : f32 = u_xlat39;
    let x_732 : f32 = u_xlat39;
    u_xlat39 = (x_731 * x_732);
    let x_734 : f32 = u_xlat37;
    let x_735 : f32 = u_xlat39;
    u_xlat37 = (x_734 * x_735);
    let x_738 : f32 = u_xlat25;
    let x_740 : i32 = u_xlati35;
    let x_742 : vec4<f32> = x_670.x_AdditionalLightsColor[x_740];
    u_xlat10 = (vec3<f32>(x_738, x_738, x_738) * vec3<f32>(x_742.x, x_742.y, x_742.z));
    let x_745 : vec3<f32> = u_xlat12;
    let x_746 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_745, x_746);
    let x_748 : f32 = u_xlat35;
    u_xlat35 = clamp(x_748, 0.0f, 1.0f);
    let x_750 : f32 = u_xlat35;
    let x_751 : f32 = u_xlat37;
    u_xlat35 = (x_750 * x_751);
    let x_753 : f32 = u_xlat35;
    let x_755 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_753, x_753, x_753) * x_755);
    let x_757 : vec3<f32> = u_xlat19;
    let x_758 : f32 = u_xlat38;
    let x_761 : vec3<f32> = u_xlat6;
    u_xlat19 = ((x_757 * vec3<f32>(x_758, x_758, x_758)) + x_761);
    let x_763 : vec3<f32> = u_xlat19;
    let x_764 : vec3<f32> = u_xlat19;
    u_xlat35 = dot(x_763, x_764);
    let x_766 : f32 = u_xlat35;
    u_xlat35 = max(x_766, 1.17549435e-37f);
    let x_768 : f32 = u_xlat35;
    u_xlat35 = inverseSqrt(x_768);
    let x_770 : f32 = u_xlat35;
    let x_772 : vec3<f32> = u_xlat19;
    u_xlat19 = (vec3<f32>(x_770, x_770, x_770) * x_772);
    let x_774 : vec3<f32> = u_xlat12;
    let x_775 : vec3<f32> = u_xlat19;
    u_xlat35 = dot(x_774, x_775);
    let x_777 : f32 = u_xlat35;
    u_xlat35 = clamp(x_777, 0.0f, 1.0f);
    let x_779 : vec3<f32> = u_xlat9;
    let x_780 : vec3<f32> = u_xlat19;
    u_xlat37 = dot(x_779, x_780);
    let x_782 : f32 = u_xlat37;
    u_xlat37 = clamp(x_782, 0.0f, 1.0f);
    let x_784 : f32 = u_xlat35;
    let x_785 : f32 = u_xlat35;
    u_xlat35 = (x_784 * x_785);
    let x_787 : f32 = u_xlat35;
    let x_789 : f32 = u_xlat8.x;
    u_xlat35 = ((x_787 * x_789) + 1.000010014f);
    let x_792 : f32 = u_xlat37;
    let x_793 : f32 = u_xlat37;
    u_xlat37 = (x_792 * x_793);
    let x_795 : f32 = u_xlat35;
    let x_796 : f32 = u_xlat35;
    u_xlat35 = (x_795 * x_796);
    let x_798 : f32 = u_xlat37;
    u_xlat37 = max(x_798, 0.100000001f);
    let x_800 : f32 = u_xlat35;
    let x_801 : f32 = u_xlat37;
    u_xlat35 = (x_800 * x_801);
    let x_803 : f32 = u_xlat14;
    let x_804 : f32 = u_xlat35;
    u_xlat35 = (x_803 * x_804);
    let x_806 : f32 = u_xlat36;
    let x_807 : f32 = u_xlat35;
    u_xlat35 = (x_806 / x_807);
    let x_809 : vec4<f32> = u_xlat0;
    let x_811 : f32 = u_xlat35;
    let x_814 : vec3<f32> = u_xlat4;
    u_xlat19 = ((vec3<f32>(x_809.x, x_809.y, x_809.z) * vec3<f32>(x_811, x_811, x_811)) + x_814);
    let x_816 : vec3<f32> = u_xlat19;
    let x_817 : vec3<f32> = u_xlat10;
    let x_819 : vec4<f32> = u_xlat7;
    let x_821 : vec3<f32> = ((x_816 * x_817) + vec3<f32>(x_819.x, x_819.y, x_819.z));
    let x_822 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_821.x, x_821.y, x_821.z, x_822.w);

    continuing {
      let x_824 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_824 + bitcast<u32>(1i));
    }
  }
  let x_826 : vec4<f32> = u_xlat2;
  let x_828 : vec3<f32> = u_xlat3;
  let x_831 : vec3<f32> = u_xlat5;
  let x_832 : vec3<f32> = ((vec3<f32>(x_826.x, x_826.y, x_826.z) * vec3<f32>(x_828.x, x_828.x, x_828.x)) + x_831);
  let x_833 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_832.x, x_832.y, x_832.z, x_833.w);
  let x_837 : vec4<f32> = u_xlat7;
  let x_839 : vec4<f32> = u_xlat0;
  let x_841 : vec3<f32> = (vec3<f32>(x_837.x, x_837.y, x_837.z) + vec3<f32>(x_839.x, x_839.y, x_839.z));
  let x_842 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_841.x, x_841.y, x_841.z, x_842.w);
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

