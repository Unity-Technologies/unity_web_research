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

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(0) @binding(2) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MetallicTex : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_94 : MainLightShadows;

@group(1) @binding(2) var<uniform> x_274 : UnityPerDraw;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_888 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat12 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlatb3 : vec4<bool>;
  var u_xlatu12 : u32;
  var u_xlati12 : i32;
  var u_xlat35 : f32;
  var u_xlat36 : f32;
  var u_xlat15 : f32;
  var u_xlat33 : f32;
  var u_xlat26 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat23 : f32;
  var u_xlatb23 : bool;
  var u_xlatb34 : bool;
  var x_507 : f32;
  var u_xlat34 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlatu33 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu37 : u32;
  var u_xlati38 : i32;
  var u_xlat37 : f32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati37 : i32;
  var u_xlat38 : f32;
  var u_xlat39 : f32;
  var u_xlat40 : f32;
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
  let x_57 : vec4<f32> = vs_TEXCOORD0;
  let x_60 : f32 = x_43.x_GlobalMipBias.x;
  let x_61 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_57.x, x_57.y), x_60);
  u_xlat1.x = x_61.x;
  let x_68 : vec4<f32> = vs_TEXCOORD3;
  let x_70 : vec4<f32> = vs_TEXCOORD3;
  u_xlat12.x = dot(vec3<f32>(x_68.x, x_68.y, x_68.z), vec3<f32>(x_70.x, x_70.y, x_70.z));
  let x_75 : f32 = u_xlat12.x;
  u_xlat12.x = inverseSqrt(x_75);
  let x_79 : vec3<f32> = u_xlat12;
  let x_81 : vec4<f32> = vs_TEXCOORD3;
  let x_83 : vec3<f32> = (vec3<f32>(x_79.x, x_79.x, x_79.x) * vec3<f32>(x_81.x, x_81.y, x_81.z));
  let x_84 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_83.x, x_83.y, x_83.z, x_84.w);
  let x_88 : vec3<f32> = vs_TEXCOORD7;
  let x_97 : vec4<f32> = x_94.x_CascadeShadowSplitSpheres0;
  u_xlat12 = (x_88 + -(vec3<f32>(x_97.x, x_97.y, x_97.z)));
  let x_102 : vec3<f32> = vs_TEXCOORD7;
  let x_105 : vec4<f32> = x_94.x_CascadeShadowSplitSpheres1;
  u_xlat3 = (x_102 + -(vec3<f32>(x_105.x, x_105.y, x_105.z)));
  let x_110 : vec3<f32> = vs_TEXCOORD7;
  let x_113 : vec4<f32> = x_94.x_CascadeShadowSplitSpheres2;
  let x_116 : vec3<f32> = (x_110 + -(vec3<f32>(x_113.x, x_113.y, x_113.z)));
  let x_117 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_116.x, x_116.y, x_116.z, x_117.w);
  let x_120 : vec3<f32> = vs_TEXCOORD7;
  let x_123 : vec4<f32> = x_94.x_CascadeShadowSplitSpheres3;
  u_xlat5 = (x_120 + -(vec3<f32>(x_123.x, x_123.y, x_123.z)));
  let x_128 : vec3<f32> = u_xlat12;
  let x_129 : vec3<f32> = u_xlat12;
  u_xlat6.x = dot(x_128, x_129);
  let x_132 : vec3<f32> = u_xlat3;
  let x_133 : vec3<f32> = u_xlat3;
  u_xlat6.y = dot(x_132, x_133);
  let x_137 : vec4<f32> = u_xlat4;
  let x_139 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(vec3<f32>(x_137.x, x_137.y, x_137.z), vec3<f32>(x_139.x, x_139.y, x_139.z));
  let x_144 : vec3<f32> = u_xlat5;
  let x_145 : vec3<f32> = u_xlat5;
  u_xlat6.w = dot(x_144, x_145);
  let x_152 : vec4<f32> = u_xlat6;
  let x_155 : vec4<f32> = x_94.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_152 < x_155);
  let x_159 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_159);
  let x_164 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_164);
  let x_168 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_168);
  let x_172 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_172);
  let x_176 : bool = u_xlatb3.x;
  u_xlat12.x = select(-0.0f, -1.0f, x_176);
  let x_182 : bool = u_xlatb3.y;
  u_xlat12.y = select(-0.0f, -1.0f, x_182);
  let x_186 : bool = u_xlatb3.z;
  u_xlat12.z = select(-0.0f, -1.0f, x_186);
  let x_189 : vec3<f32> = u_xlat12;
  let x_190 : vec4<f32> = u_xlat4;
  u_xlat12 = (x_189 + vec3<f32>(x_190.y, x_190.z, x_190.w));
  let x_193 : vec3<f32> = u_xlat12;
  let x_195 : vec3<f32> = max(x_193, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_196 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_196.x, x_195.x, x_195.y, x_195.z);
  let x_198 : vec4<f32> = u_xlat4;
  u_xlat12.x = dot(x_198, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_206 : f32 = u_xlat12.x;
  u_xlat12.x = (-(x_206) + 4.0f);
  let x_213 : f32 = u_xlat12.x;
  u_xlatu12 = u32(x_213);
  let x_217 : u32 = u_xlatu12;
  u_xlati12 = (bitcast<i32>(x_217) << bitcast<u32>(2i));
  let x_220 : vec3<f32> = vs_TEXCOORD7;
  let x_223 : i32 = u_xlati12;
  let x_226 : i32 = u_xlati12;
  let x_230 : vec4<f32> = x_94.x_MainLightWorldToShadow[((x_223 + 1i) / 4i)][((x_226 + 1i) % 4i)];
  u_xlat3 = (vec3<f32>(x_220.y, x_220.y, x_220.y) * vec3<f32>(x_230.x, x_230.y, x_230.z));
  let x_233 : i32 = u_xlati12;
  let x_235 : i32 = u_xlati12;
  let x_238 : vec4<f32> = x_94.x_MainLightWorldToShadow[(x_233 / 4i)][(x_235 % 4i)];
  let x_240 : vec3<f32> = vs_TEXCOORD7;
  let x_243 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_238.x, x_238.y, x_238.z) * vec3<f32>(x_240.x, x_240.x, x_240.x)) + x_243);
  let x_245 : i32 = u_xlati12;
  let x_248 : i32 = u_xlati12;
  let x_252 : vec4<f32> = x_94.x_MainLightWorldToShadow[((x_245 + 2i) / 4i)][((x_248 + 2i) % 4i)];
  let x_254 : vec3<f32> = vs_TEXCOORD7;
  let x_257 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_252.x, x_252.y, x_252.z) * vec3<f32>(x_254.z, x_254.z, x_254.z)) + x_257);
  let x_259 : vec3<f32> = u_xlat3;
  let x_260 : i32 = u_xlati12;
  let x_263 : i32 = u_xlati12;
  let x_267 : vec4<f32> = x_94.x_MainLightWorldToShadow[((x_260 + 3i) / 4i)][((x_263 + 3i) % 4i)];
  u_xlat12 = (x_259 + vec3<f32>(x_267.x, x_267.y, x_267.z));
  u_xlat2.w = 1.0f;
  let x_277 : vec4<f32> = x_274.unity_SHAr;
  let x_278 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_277, x_278);
  let x_283 : vec4<f32> = x_274.unity_SHAg;
  let x_284 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_283, x_284);
  let x_289 : vec4<f32> = x_274.unity_SHAb;
  let x_290 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_289, x_290);
  let x_293 : vec4<f32> = u_xlat2;
  let x_295 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_293.y, x_293.z, x_293.z, x_293.x) * vec4<f32>(x_295.x, x_295.y, x_295.z, x_295.z));
  let x_300 : vec4<f32> = x_274.unity_SHBr;
  let x_301 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_300, x_301);
  let x_306 : vec4<f32> = x_274.unity_SHBg;
  let x_307 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_306, x_307);
  let x_312 : vec4<f32> = x_274.unity_SHBb;
  let x_313 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_312, x_313);
  let x_318 : f32 = u_xlat2.y;
  let x_320 : f32 = u_xlat2.y;
  u_xlat35 = (x_318 * x_320);
  let x_323 : f32 = u_xlat2.x;
  let x_325 : f32 = u_xlat2.x;
  let x_327 : f32 = u_xlat35;
  u_xlat35 = ((x_323 * x_325) + -(x_327));
  let x_332 : vec4<f32> = x_274.unity_SHC;
  let x_334 : f32 = u_xlat35;
  let x_337 : vec3<f32> = u_xlat5;
  let x_338 : vec3<f32> = ((vec3<f32>(x_332.x, x_332.y, x_332.z) * vec3<f32>(x_334, x_334, x_334)) + x_337);
  let x_339 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_338.x, x_338.y, x_338.z, x_339.w);
  let x_341 : vec3<f32> = u_xlat3;
  let x_342 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_341 + vec3<f32>(x_342.x, x_342.y, x_342.z));
  let x_345 : vec3<f32> = u_xlat3;
  u_xlat3 = max(x_345, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_349 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_350 : vec2<f32> = vec2<f32>(x_349.x, x_349.y);
  let x_354 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_350.x, x_350.y));
  let x_355 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_354.x, x_354.y, x_355.z, x_355.w);
  let x_357 : vec4<f32> = u_xlat4;
  let x_359 : vec4<f32> = hlslcc_FragCoord;
  let x_361 : vec2<f32> = (vec2<f32>(x_357.x, x_357.y) * vec2<f32>(x_359.x, x_359.y));
  let x_362 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_361.x, x_361.y, x_362.z, x_362.w);
  let x_365 : f32 = u_xlat4.y;
  let x_368 : f32 = x_43.x_ScaleBiasRt.x;
  let x_371 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat35 = ((x_365 * x_368) + x_371);
  let x_373 : f32 = u_xlat35;
  u_xlat4.z = (-(x_373) + 1.0f);
  let x_378 : f32 = u_xlat1.x;
  u_xlat35 = ((-(x_378) * 0.959999979f) + 0.959999979f);
  let x_384 : f32 = u_xlat35;
  u_xlat36 = (-(x_384) + 1.0f);
  let x_387 : vec4<f32> = u_xlat0;
  let x_389 : f32 = u_xlat35;
  u_xlat5 = (vec3<f32>(x_387.x, x_387.y, x_387.z) * vec3<f32>(x_389, x_389, x_389));
  let x_392 : vec4<f32> = u_xlat0;
  let x_396 : vec3<f32> = (vec3<f32>(x_392.x, x_392.y, x_392.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_397 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_396.x, x_396.y, x_396.z, x_397.w);
  let x_399 : vec4<f32> = u_xlat1;
  let x_401 : vec4<f32> = u_xlat0;
  let x_406 : vec3<f32> = ((vec3<f32>(x_399.x, x_399.x, x_399.x) * vec3<f32>(x_401.x, x_401.y, x_401.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_407 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_406.x, x_406.y, x_406.z, x_407.w);
  let x_410 : f32 = u_xlat0.w;
  u_xlat1.x = (-(x_410) + 1.0f);
  let x_415 : f32 = u_xlat1.x;
  let x_417 : f32 = u_xlat1.x;
  u_xlat35 = (x_415 * x_417);
  let x_419 : f32 = u_xlat35;
  u_xlat35 = max(x_419, 0.0078125f);
  let x_423 : f32 = u_xlat35;
  let x_424 : f32 = u_xlat35;
  u_xlat15 = (x_423 * x_424);
  let x_428 : f32 = u_xlat0.w;
  let x_429 : f32 = u_xlat36;
  u_xlat33 = (x_428 + x_429);
  let x_431 : f32 = u_xlat33;
  u_xlat33 = clamp(x_431, 0.0f, 1.0f);
  let x_433 : f32 = u_xlat35;
  u_xlat36 = ((x_433 * 4.0f) + 2.0f);
  let x_441 : vec4<f32> = u_xlat4;
  let x_444 : f32 = x_43.x_GlobalMipBias.x;
  let x_445 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_441.x, x_441.z), x_444);
  u_xlat4.x = x_445.x;
  let x_450 : f32 = u_xlat4.x;
  u_xlat26 = (x_450 + -1.0f);
  let x_453 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_454 : f32 = u_xlat26;
  u_xlat26 = ((x_453 * x_454) + 1.0f);
  let x_458 : f32 = u_xlat4.x;
  u_xlat4.x = min(x_458, 1.0f);
  let x_462 : vec3<f32> = u_xlat12;
  let x_463 : vec2<f32> = vec2<f32>(x_462.x, x_462.y);
  let x_465 : f32 = u_xlat12.z;
  txVec0 = vec3<f32>(x_463.x, x_463.y, x_465);
  let x_477 : vec3<f32> = txVec0;
  let x_479 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_477.xy, x_477.z);
  u_xlat12.x = x_479;
  let x_484 : f32 = x_94.x_MainLightShadowParams.x;
  u_xlat23 = (-(x_484) + 1.0f);
  let x_488 : f32 = u_xlat12.x;
  let x_490 : f32 = x_94.x_MainLightShadowParams.x;
  let x_492 : f32 = u_xlat23;
  u_xlat12.x = ((x_488 * x_490) + x_492);
  let x_497 : f32 = u_xlat12.z;
  u_xlatb23 = (0.0f >= x_497);
  let x_501 : f32 = u_xlat12.z;
  u_xlatb34 = (x_501 >= 1.0f);
  let x_503 : bool = u_xlatb34;
  let x_504 : bool = u_xlatb23;
  u_xlatb23 = (x_503 | x_504);
  let x_506 : bool = u_xlatb23;
  if (x_506) {
    x_507 = 1.0f;
  } else {
    let x_512 : f32 = u_xlat12.x;
    x_507 = x_512;
  }
  let x_513 : f32 = x_507;
  u_xlat12.x = x_513;
  let x_515 : vec3<f32> = vs_TEXCOORD7;
  let x_519 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_521 : vec3<f32> = (x_515 + -(x_519));
  let x_522 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_521.x, x_521.y, x_521.z, x_522.w);
  let x_524 : vec4<f32> = u_xlat6;
  let x_526 : vec4<f32> = u_xlat6;
  u_xlat23 = dot(vec3<f32>(x_524.x, x_524.y, x_524.z), vec3<f32>(x_526.x, x_526.y, x_526.z));
  let x_529 : f32 = u_xlat23;
  let x_531 : f32 = x_94.x_MainLightShadowParams.z;
  let x_534 : f32 = x_94.x_MainLightShadowParams.w;
  u_xlat23 = ((x_529 * x_531) + x_534);
  let x_536 : f32 = u_xlat23;
  u_xlat23 = clamp(x_536, 0.0f, 1.0f);
  let x_540 : f32 = u_xlat12.x;
  u_xlat34 = (-(x_540) + 1.0f);
  let x_543 : f32 = u_xlat23;
  let x_544 : f32 = u_xlat34;
  let x_547 : f32 = u_xlat12.x;
  u_xlat12.x = ((x_543 * x_544) + x_547);
  let x_550 : f32 = u_xlat26;
  let x_553 : vec4<f32> = x_43.x_MainLightColor;
  let x_555 : vec3<f32> = (vec3<f32>(x_550, x_550, x_550) * vec3<f32>(x_553.x, x_553.y, x_553.z));
  let x_556 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_555.x, x_555.y, x_555.z, x_556.w);
  let x_560 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_560;
  let x_564 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_564;
  let x_568 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_568;
  let x_570 : vec3<f32> = u_xlat7;
  let x_572 : vec4<f32> = u_xlat2;
  u_xlat23 = dot(-(x_570), vec3<f32>(x_572.x, x_572.y, x_572.z));
  let x_575 : f32 = u_xlat23;
  let x_576 : f32 = u_xlat23;
  u_xlat23 = (x_575 + x_576);
  let x_579 : vec4<f32> = u_xlat2;
  let x_581 : f32 = u_xlat23;
  let x_585 : vec3<f32> = u_xlat7;
  let x_587 : vec3<f32> = ((vec3<f32>(x_579.x, x_579.y, x_579.z) * -(vec3<f32>(x_581, x_581, x_581))) + -(x_585));
  let x_588 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_587.x, x_587.y, x_587.z, x_588.w);
  let x_590 : vec4<f32> = u_xlat2;
  let x_592 : vec3<f32> = u_xlat7;
  u_xlat23 = dot(vec3<f32>(x_590.x, x_590.y, x_590.z), x_592);
  let x_594 : f32 = u_xlat23;
  u_xlat23 = clamp(x_594, 0.0f, 1.0f);
  let x_596 : f32 = u_xlat23;
  u_xlat23 = (-(x_596) + 1.0f);
  let x_599 : f32 = u_xlat23;
  let x_600 : f32 = u_xlat23;
  u_xlat1.z = (x_599 * x_600);
  let x_604 : f32 = u_xlat1.x;
  u_xlat1.w = ((-(x_604) * 0.699999988f) + 1.700000048f);
  let x_611 : vec4<f32> = u_xlat1;
  let x_613 : vec4<f32> = u_xlat1;
  let x_615 : vec2<f32> = (vec2<f32>(x_611.w, x_611.z) * vec2<f32>(x_613.x, x_613.z));
  let x_616 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_615.x, x_616.y, x_615.y, x_616.w);
  let x_619 : f32 = u_xlat1.x;
  u_xlat1.x = (x_619 * 6.0f);
  let x_631 : vec4<f32> = u_xlat8;
  let x_634 : f32 = u_xlat1.x;
  let x_635 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_631.x, x_631.y, x_631.z), x_634);
  u_xlat8 = x_635;
  let x_637 : f32 = u_xlat8.w;
  u_xlat1.x = (x_637 + -1.0f);
  let x_641 : f32 = x_274.unity_SpecCube0_HDR.w;
  let x_643 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_641 * x_643) + 1.0f);
  let x_648 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_648, 0.0f);
  let x_652 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_652);
  let x_656 : f32 = u_xlat1.x;
  let x_658 : f32 = x_274.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_656 * x_658);
  let x_662 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_662);
  let x_666 : f32 = u_xlat1.x;
  let x_668 : f32 = x_274.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_666 * x_668);
  let x_671 : vec4<f32> = u_xlat8;
  let x_673 : vec4<f32> = u_xlat1;
  let x_675 : vec3<f32> = (vec3<f32>(x_671.x, x_671.y, x_671.z) * vec3<f32>(x_673.x, x_673.x, x_673.x));
  let x_676 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_675.x, x_675.y, x_675.z, x_676.w);
  let x_678 : f32 = u_xlat35;
  let x_680 : f32 = u_xlat35;
  let x_684 : vec2<f32> = ((vec2<f32>(x_678, x_678) * vec2<f32>(x_680, x_680)) + vec2<f32>(-1.0f, 1.0f));
  let x_685 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_684.x, x_685.y, x_685.z, x_684.y);
  let x_688 : f32 = u_xlat1.w;
  u_xlat34 = (1.0f / x_688);
  let x_691 : vec4<f32> = u_xlat0;
  let x_694 : f32 = u_xlat33;
  u_xlat9 = (-(vec3<f32>(x_691.x, x_691.y, x_691.z)) + vec3<f32>(x_694, x_694, x_694));
  let x_697 : vec4<f32> = u_xlat1;
  let x_699 : vec3<f32> = u_xlat9;
  let x_701 : vec4<f32> = u_xlat0;
  u_xlat9 = ((vec3<f32>(x_697.z, x_697.z, x_697.z) * x_699) + vec3<f32>(x_701.x, x_701.y, x_701.z));
  let x_704 : f32 = u_xlat34;
  let x_706 : vec3<f32> = u_xlat9;
  u_xlat9 = (vec3<f32>(x_704, x_704, x_704) * x_706);
  let x_708 : vec4<f32> = u_xlat8;
  let x_710 : vec3<f32> = u_xlat9;
  let x_711 : vec3<f32> = (vec3<f32>(x_708.x, x_708.y, x_708.z) * x_710);
  let x_712 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_711.x, x_711.y, x_711.z, x_712.w);
  let x_714 : vec3<f32> = u_xlat3;
  let x_715 : vec3<f32> = u_xlat5;
  let x_717 : vec4<f32> = u_xlat8;
  u_xlat3 = ((x_714 * x_715) + vec3<f32>(x_717.x, x_717.y, x_717.z));
  let x_721 : f32 = u_xlat12.x;
  let x_723 : f32 = x_274.unity_LightData.z;
  u_xlat33 = (x_721 * x_723);
  let x_725 : vec4<f32> = u_xlat2;
  let x_728 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat12.x = dot(vec3<f32>(x_725.x, x_725.y, x_725.z), vec3<f32>(x_728.x, x_728.y, x_728.z));
  let x_733 : f32 = u_xlat12.x;
  u_xlat12.x = clamp(x_733, 0.0f, 1.0f);
  let x_736 : f32 = u_xlat33;
  let x_738 : f32 = u_xlat12.x;
  u_xlat33 = (x_736 * x_738);
  let x_740 : f32 = u_xlat33;
  let x_742 : vec4<f32> = u_xlat6;
  u_xlat12 = (vec3<f32>(x_740, x_740, x_740) * vec3<f32>(x_742.x, x_742.y, x_742.z));
  let x_745 : vec3<f32> = u_xlat7;
  let x_747 : vec4<f32> = x_43.x_MainLightPosition;
  let x_749 : vec3<f32> = (x_745 + vec3<f32>(x_747.x, x_747.y, x_747.z));
  let x_750 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_749.x, x_749.y, x_749.z, x_750.w);
  let x_752 : vec4<f32> = u_xlat6;
  let x_754 : vec4<f32> = u_xlat6;
  u_xlat33 = dot(vec3<f32>(x_752.x, x_752.y, x_752.z), vec3<f32>(x_754.x, x_754.y, x_754.z));
  let x_757 : f32 = u_xlat33;
  u_xlat33 = max(x_757, 1.17549435e-37f);
  let x_760 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_760);
  let x_762 : f32 = u_xlat33;
  let x_764 : vec4<f32> = u_xlat6;
  let x_766 : vec3<f32> = (vec3<f32>(x_762, x_762, x_762) * vec3<f32>(x_764.x, x_764.y, x_764.z));
  let x_767 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_766.x, x_766.y, x_766.z, x_767.w);
  let x_769 : vec4<f32> = u_xlat2;
  let x_771 : vec4<f32> = u_xlat6;
  u_xlat33 = dot(vec3<f32>(x_769.x, x_769.y, x_769.z), vec3<f32>(x_771.x, x_771.y, x_771.z));
  let x_774 : f32 = u_xlat33;
  u_xlat33 = clamp(x_774, 0.0f, 1.0f);
  let x_777 : vec4<f32> = x_43.x_MainLightPosition;
  let x_779 : vec4<f32> = u_xlat6;
  u_xlat35 = dot(vec3<f32>(x_777.x, x_777.y, x_777.z), vec3<f32>(x_779.x, x_779.y, x_779.z));
  let x_782 : f32 = u_xlat35;
  u_xlat35 = clamp(x_782, 0.0f, 1.0f);
  let x_784 : f32 = u_xlat33;
  let x_785 : f32 = u_xlat33;
  u_xlat33 = (x_784 * x_785);
  let x_787 : f32 = u_xlat33;
  let x_789 : f32 = u_xlat1.x;
  u_xlat33 = ((x_787 * x_789) + 1.000010014f);
  let x_793 : f32 = u_xlat35;
  let x_794 : f32 = u_xlat35;
  u_xlat35 = (x_793 * x_794);
  let x_796 : f32 = u_xlat33;
  let x_797 : f32 = u_xlat33;
  u_xlat33 = (x_796 * x_797);
  let x_799 : f32 = u_xlat35;
  u_xlat35 = max(x_799, 0.100000001f);
  let x_802 : f32 = u_xlat33;
  let x_803 : f32 = u_xlat35;
  u_xlat33 = (x_802 * x_803);
  let x_805 : f32 = u_xlat36;
  let x_806 : f32 = u_xlat33;
  u_xlat33 = (x_805 * x_806);
  let x_808 : f32 = u_xlat15;
  let x_809 : f32 = u_xlat33;
  u_xlat33 = (x_808 / x_809);
  let x_811 : vec4<f32> = u_xlat0;
  let x_813 : f32 = u_xlat33;
  let x_816 : vec3<f32> = u_xlat5;
  let x_817 : vec3<f32> = ((vec3<f32>(x_811.x, x_811.y, x_811.z) * vec3<f32>(x_813, x_813, x_813)) + x_816);
  let x_818 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_817.x, x_817.y, x_817.z, x_818.w);
  let x_820 : vec3<f32> = u_xlat12;
  let x_821 : vec4<f32> = u_xlat6;
  u_xlat12 = (x_820 * vec3<f32>(x_821.x, x_821.y, x_821.z));
  let x_825 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_827 : f32 = x_274.unity_LightData.y;
  u_xlat33 = min(x_825, x_827);
  let x_830 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_830));
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_842 : u32 = u_xlatu_loop_1;
    let x_843 : u32 = u_xlatu33;
    if ((x_842 < x_843)) {
    } else {
      break;
    }
    let x_846 : u32 = u_xlatu_loop_1;
    u_xlatu37 = (x_846 >> 2u);
    let x_849 : u32 = u_xlatu_loop_1;
    u_xlati38 = bitcast<i32>((x_849 & 3u));
    let x_853 : u32 = u_xlatu37;
    let x_856 : vec4<f32> = x_274.unity_LightIndices[bitcast<i32>(x_853)];
    let x_866 : i32 = u_xlati38;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_871 : vec4<u32> = indexable[x_866];
    u_xlat37 = dot(x_856, bitcast<vec4<f32>>(x_871));
    let x_875 : f32 = u_xlat37;
    u_xlati37 = i32(x_875);
    let x_877 : vec3<f32> = vs_TEXCOORD7;
    let x_889 : i32 = u_xlati37;
    let x_891 : vec4<f32> = x_888.x_AdditionalLightsPosition[x_889];
    let x_894 : i32 = u_xlati37;
    let x_896 : vec4<f32> = x_888.x_AdditionalLightsPosition[x_894];
    let x_898 : vec3<f32> = ((-(x_877) * vec3<f32>(x_891.w, x_891.w, x_891.w)) + vec3<f32>(x_896.x, x_896.y, x_896.z));
    let x_899 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_898.x, x_898.y, x_898.z, x_899.w);
    let x_902 : vec4<f32> = u_xlat8;
    let x_904 : vec4<f32> = u_xlat8;
    u_xlat38 = dot(vec3<f32>(x_902.x, x_902.y, x_902.z), vec3<f32>(x_904.x, x_904.y, x_904.z));
    let x_907 : f32 = u_xlat38;
    u_xlat38 = max(x_907, 6.10351562e-05f);
    let x_911 : f32 = u_xlat38;
    u_xlat39 = inverseSqrt(x_911);
    let x_913 : f32 = u_xlat39;
    let x_915 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_913, x_913, x_913) * vec3<f32>(x_915.x, x_915.y, x_915.z));
    let x_919 : f32 = u_xlat38;
    u_xlat40 = (1.0f / x_919);
    let x_921 : f32 = u_xlat38;
    let x_922 : i32 = u_xlati37;
    let x_924 : f32 = x_888.x_AdditionalLightsAttenuation[x_922].x;
    u_xlat38 = (x_921 * x_924);
    let x_926 : f32 = u_xlat38;
    let x_928 : f32 = u_xlat38;
    u_xlat38 = ((-(x_926) * x_928) + 1.0f);
    let x_931 : f32 = u_xlat38;
    u_xlat38 = max(x_931, 0.0f);
    let x_933 : f32 = u_xlat38;
    let x_934 : f32 = u_xlat38;
    u_xlat38 = (x_933 * x_934);
    let x_936 : f32 = u_xlat38;
    let x_937 : f32 = u_xlat40;
    u_xlat38 = (x_936 * x_937);
    let x_939 : i32 = u_xlati37;
    let x_941 : vec4<f32> = x_888.x_AdditionalLightsSpotDir[x_939];
    let x_943 : vec3<f32> = u_xlat9;
    u_xlat40 = dot(vec3<f32>(x_941.x, x_941.y, x_941.z), x_943);
    let x_945 : f32 = u_xlat40;
    let x_946 : i32 = u_xlati37;
    let x_948 : f32 = x_888.x_AdditionalLightsAttenuation[x_946].z;
    let x_950 : i32 = u_xlati37;
    let x_952 : f32 = x_888.x_AdditionalLightsAttenuation[x_950].w;
    u_xlat40 = ((x_945 * x_948) + x_952);
    let x_954 : f32 = u_xlat40;
    u_xlat40 = clamp(x_954, 0.0f, 1.0f);
    let x_956 : f32 = u_xlat40;
    let x_957 : f32 = u_xlat40;
    u_xlat40 = (x_956 * x_957);
    let x_959 : f32 = u_xlat38;
    let x_960 : f32 = u_xlat40;
    u_xlat38 = (x_959 * x_960);
    let x_963 : f32 = u_xlat26;
    let x_965 : i32 = u_xlati37;
    let x_967 : vec4<f32> = x_888.x_AdditionalLightsColor[x_965];
    u_xlat10 = (vec3<f32>(x_963, x_963, x_963) * vec3<f32>(x_967.x, x_967.y, x_967.z));
    let x_970 : vec4<f32> = u_xlat2;
    let x_972 : vec3<f32> = u_xlat9;
    u_xlat37 = dot(vec3<f32>(x_970.x, x_970.y, x_970.z), x_972);
    let x_974 : f32 = u_xlat37;
    u_xlat37 = clamp(x_974, 0.0f, 1.0f);
    let x_976 : f32 = u_xlat37;
    let x_977 : f32 = u_xlat38;
    u_xlat37 = (x_976 * x_977);
    let x_979 : f32 = u_xlat37;
    let x_981 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_979, x_979, x_979) * x_981);
    let x_983 : vec4<f32> = u_xlat8;
    let x_985 : f32 = u_xlat39;
    let x_988 : vec3<f32> = u_xlat7;
    let x_989 : vec3<f32> = ((vec3<f32>(x_983.x, x_983.y, x_983.z) * vec3<f32>(x_985, x_985, x_985)) + x_988);
    let x_990 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_989.x, x_989.y, x_989.z, x_990.w);
    let x_992 : vec4<f32> = u_xlat8;
    let x_994 : vec4<f32> = u_xlat8;
    u_xlat37 = dot(vec3<f32>(x_992.x, x_992.y, x_992.z), vec3<f32>(x_994.x, x_994.y, x_994.z));
    let x_997 : f32 = u_xlat37;
    u_xlat37 = max(x_997, 1.17549435e-37f);
    let x_999 : f32 = u_xlat37;
    u_xlat37 = inverseSqrt(x_999);
    let x_1001 : f32 = u_xlat37;
    let x_1003 : vec4<f32> = u_xlat8;
    let x_1005 : vec3<f32> = (vec3<f32>(x_1001, x_1001, x_1001) * vec3<f32>(x_1003.x, x_1003.y, x_1003.z));
    let x_1006 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1005.x, x_1005.y, x_1005.z, x_1006.w);
    let x_1008 : vec4<f32> = u_xlat2;
    let x_1010 : vec4<f32> = u_xlat8;
    u_xlat37 = dot(vec3<f32>(x_1008.x, x_1008.y, x_1008.z), vec3<f32>(x_1010.x, x_1010.y, x_1010.z));
    let x_1013 : f32 = u_xlat37;
    u_xlat37 = clamp(x_1013, 0.0f, 1.0f);
    let x_1015 : vec3<f32> = u_xlat9;
    let x_1016 : vec4<f32> = u_xlat8;
    u_xlat38 = dot(x_1015, vec3<f32>(x_1016.x, x_1016.y, x_1016.z));
    let x_1019 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1019, 0.0f, 1.0f);
    let x_1021 : f32 = u_xlat37;
    let x_1022 : f32 = u_xlat37;
    u_xlat37 = (x_1021 * x_1022);
    let x_1024 : f32 = u_xlat37;
    let x_1026 : f32 = u_xlat1.x;
    u_xlat37 = ((x_1024 * x_1026) + 1.000010014f);
    let x_1029 : f32 = u_xlat38;
    let x_1030 : f32 = u_xlat38;
    u_xlat38 = (x_1029 * x_1030);
    let x_1032 : f32 = u_xlat37;
    let x_1033 : f32 = u_xlat37;
    u_xlat37 = (x_1032 * x_1033);
    let x_1035 : f32 = u_xlat38;
    u_xlat38 = max(x_1035, 0.100000001f);
    let x_1037 : f32 = u_xlat37;
    let x_1038 : f32 = u_xlat38;
    u_xlat37 = (x_1037 * x_1038);
    let x_1040 : f32 = u_xlat36;
    let x_1041 : f32 = u_xlat37;
    u_xlat37 = (x_1040 * x_1041);
    let x_1043 : f32 = u_xlat15;
    let x_1044 : f32 = u_xlat37;
    u_xlat37 = (x_1043 / x_1044);
    let x_1046 : vec4<f32> = u_xlat0;
    let x_1048 : f32 = u_xlat37;
    let x_1051 : vec3<f32> = u_xlat5;
    let x_1052 : vec3<f32> = ((vec3<f32>(x_1046.x, x_1046.y, x_1046.z) * vec3<f32>(x_1048, x_1048, x_1048)) + x_1051);
    let x_1053 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1052.x, x_1052.y, x_1052.z, x_1053.w);
    let x_1055 : vec4<f32> = u_xlat8;
    let x_1057 : vec3<f32> = u_xlat10;
    let x_1059 : vec4<f32> = u_xlat6;
    let x_1061 : vec3<f32> = ((vec3<f32>(x_1055.x, x_1055.y, x_1055.z) * x_1057) + vec3<f32>(x_1059.x, x_1059.y, x_1059.z));
    let x_1062 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1061.x, x_1061.y, x_1061.z, x_1062.w);

    continuing {
      let x_1064 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1064 + bitcast<u32>(1i));
    }
  }
  let x_1066 : vec3<f32> = u_xlat3;
  let x_1067 : vec4<f32> = u_xlat4;
  let x_1070 : vec3<f32> = u_xlat12;
  let x_1071 : vec3<f32> = ((x_1066 * vec3<f32>(x_1067.x, x_1067.x, x_1067.x)) + x_1070);
  let x_1072 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1071.x, x_1071.y, x_1071.z, x_1072.w);
  let x_1076 : vec4<f32> = u_xlat6;
  let x_1078 : vec4<f32> = u_xlat0;
  let x_1080 : vec3<f32> = (vec3<f32>(x_1076.x, x_1076.y, x_1076.z) + vec3<f32>(x_1078.x, x_1078.y, x_1078.z));
  let x_1081 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1080.x, x_1080.y, x_1080.z, x_1081.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD3_param : vec4<f32>, @location(4) vs_TEXCOORD7_param : vec3<f32>, @location(2) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD5_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  main_1();
  return main_out(SV_Target0);
}

