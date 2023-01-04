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
  x_ProjectionParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
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

var<private> gl_FragCoord : vec4<f32>;

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(5) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_86 : MainLightShadows;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(4) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(2) var<uniform> x_487 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_590 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlatb2 : vec4<bool>;
  var u_xlat22 : f32;
  var u_xlatu22 : u32;
  var u_xlati22 : i32;
  var u_xlat23 : f32;
  var u_xlat24 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlatb9 : bool;
  var u_xlatb16 : bool;
  var x_426 : f32;
  var u_xlat16 : f32;
  var u_xlatu2 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu5 : u32;
  var u_xlati12 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati5 : i32;
  var u_xlat12 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlatb7 : bool;
  var x_764 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_40 : vec2<f32> = vs_TEXCOORD0;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_40, x_50);
  u_xlat0 = x_51;
  let x_52 : vec4<f32> = u_xlat0;
  let x_59 : vec4<f32> = x_56.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_52.w, x_52.x, x_52.y, x_52.z) * vec4<f32>(x_59.w, x_59.x, x_59.y, x_59.z));
  let x_66 : vec3<f32> = vs_TEXCOORD2;
  let x_67 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_66, x_67);
  let x_72 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_72);
  let x_75 : vec3<f32> = u_xlat1;
  let x_77 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1 = (vec3<f32>(x_75.x, x_75.x, x_75.x) * x_77);
  let x_81 : vec3<f32> = vs_TEXCOORD1;
  let x_88 : vec4<f32> = x_86.x_CascadeShadowSplitSpheres0;
  let x_91 : vec3<f32> = (x_81 + -(vec3<f32>(x_88.x, x_88.y, x_88.z)));
  let x_92 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_91.x, x_91.y, x_91.z, x_92.w);
  let x_95 : vec3<f32> = vs_TEXCOORD1;
  let x_98 : vec4<f32> = x_86.x_CascadeShadowSplitSpheres1;
  let x_101 : vec3<f32> = (x_95 + -(vec3<f32>(x_98.x, x_98.y, x_98.z)));
  let x_102 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_101.x, x_101.y, x_101.z, x_102.w);
  let x_105 : vec3<f32> = vs_TEXCOORD1;
  let x_108 : vec4<f32> = x_86.x_CascadeShadowSplitSpheres2;
  u_xlat4 = (x_105 + -(vec3<f32>(x_108.x, x_108.y, x_108.z)));
  let x_113 : vec3<f32> = vs_TEXCOORD1;
  let x_116 : vec4<f32> = x_86.x_CascadeShadowSplitSpheres3;
  u_xlat5 = (x_113 + -(vec3<f32>(x_116.x, x_116.y, x_116.z)));
  let x_120 : vec4<f32> = u_xlat2;
  let x_122 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_120.x, x_120.y, x_120.z), vec3<f32>(x_122.x, x_122.y, x_122.z));
  let x_126 : vec4<f32> = u_xlat3;
  let x_128 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_126.x, x_126.y, x_126.z), vec3<f32>(x_128.x, x_128.y, x_128.z));
  let x_133 : vec3<f32> = u_xlat4;
  let x_134 : vec3<f32> = u_xlat4;
  u_xlat2.z = dot(x_133, x_134);
  let x_138 : vec3<f32> = u_xlat5;
  let x_139 : vec3<f32> = u_xlat5;
  u_xlat2.w = dot(x_138, x_139);
  let x_146 : vec4<f32> = u_xlat2;
  let x_149 : vec4<f32> = x_86.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_146 < x_149);
  let x_153 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_153);
  let x_158 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_158);
  let x_162 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_162);
  let x_166 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_166);
  let x_170 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_170);
  let x_176 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_176);
  let x_180 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_180);
  let x_183 : vec4<f32> = u_xlat2;
  let x_185 : vec4<f32> = u_xlat3;
  let x_187 : vec3<f32> = (vec3<f32>(x_183.x, x_183.y, x_183.z) + vec3<f32>(x_185.y, x_185.z, x_185.w));
  let x_188 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_187.x, x_187.y, x_187.z, x_188.w);
  let x_190 : vec4<f32> = u_xlat2;
  let x_193 : vec3<f32> = max(vec3<f32>(x_190.x, x_190.y, x_190.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_194 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_194.x, x_193.x, x_193.y, x_193.z);
  let x_197 : vec4<f32> = u_xlat3;
  u_xlat22 = dot(x_197, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_203 : f32 = u_xlat22;
  u_xlat22 = (-(x_203) + 4.0f);
  let x_208 : f32 = u_xlat22;
  u_xlatu22 = u32(x_208);
  let x_212 : u32 = u_xlatu22;
  u_xlati22 = (bitcast<i32>(x_212) << bitcast<u32>(2i));
  let x_215 : vec3<f32> = vs_TEXCOORD1;
  let x_218 : i32 = u_xlati22;
  let x_221 : i32 = u_xlati22;
  let x_225 : vec4<f32> = x_86.x_MainLightWorldToShadow[((x_218 + 1i) / 4i)][((x_221 + 1i) % 4i)];
  let x_227 : vec3<f32> = (vec3<f32>(x_215.y, x_215.y, x_215.y) * vec3<f32>(x_225.x, x_225.y, x_225.z));
  let x_228 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_227.x, x_227.y, x_227.z, x_228.w);
  let x_230 : i32 = u_xlati22;
  let x_232 : i32 = u_xlati22;
  let x_235 : vec4<f32> = x_86.x_MainLightWorldToShadow[(x_230 / 4i)][(x_232 % 4i)];
  let x_237 : vec3<f32> = vs_TEXCOORD1;
  let x_240 : vec4<f32> = u_xlat2;
  let x_242 : vec3<f32> = ((vec3<f32>(x_235.x, x_235.y, x_235.z) * vec3<f32>(x_237.x, x_237.x, x_237.x)) + vec3<f32>(x_240.x, x_240.y, x_240.z));
  let x_243 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_242.x, x_242.y, x_242.z, x_243.w);
  let x_245 : i32 = u_xlati22;
  let x_248 : i32 = u_xlati22;
  let x_252 : vec4<f32> = x_86.x_MainLightWorldToShadow[((x_245 + 2i) / 4i)][((x_248 + 2i) % 4i)];
  let x_254 : vec3<f32> = vs_TEXCOORD1;
  let x_257 : vec4<f32> = u_xlat2;
  let x_259 : vec3<f32> = ((vec3<f32>(x_252.x, x_252.y, x_252.z) * vec3<f32>(x_254.z, x_254.z, x_254.z)) + vec3<f32>(x_257.x, x_257.y, x_257.z));
  let x_260 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_259.x, x_259.y, x_259.z, x_260.w);
  let x_262 : vec4<f32> = u_xlat2;
  let x_264 : i32 = u_xlati22;
  let x_267 : i32 = u_xlati22;
  let x_271 : vec4<f32> = x_86.x_MainLightWorldToShadow[((x_264 + 3i) / 4i)][((x_267 + 3i) % 4i)];
  let x_273 : vec3<f32> = (vec3<f32>(x_262.x, x_262.y, x_262.z) + vec3<f32>(x_271.x, x_271.y, x_271.z));
  let x_274 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_273.x, x_273.y, x_273.z, x_274.w);
  let x_277 : f32 = vs_TEXCOORD1.y;
  let x_280 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat22 = (x_277 * x_280);
  let x_283 : f32 = x_44.unity_MatrixV[0i].z;
  let x_285 : f32 = vs_TEXCOORD1.x;
  let x_287 : f32 = u_xlat22;
  u_xlat22 = ((x_283 * x_285) + x_287);
  let x_290 : f32 = x_44.unity_MatrixV[2i].z;
  let x_292 : f32 = vs_TEXCOORD1.z;
  let x_294 : f32 = u_xlat22;
  u_xlat22 = ((x_290 * x_292) + x_294);
  let x_296 : f32 = u_xlat22;
  let x_298 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat22 = (x_296 + x_298);
  let x_300 : f32 = u_xlat22;
  let x_304 : f32 = x_44.x_ProjectionParams.y;
  u_xlat22 = (-(x_300) + -(x_304));
  let x_307 : f32 = u_xlat22;
  u_xlat22 = max(x_307, 0.0f);
  let x_309 : f32 = u_xlat22;
  let x_312 : f32 = x_44.unity_FogParams.x;
  u_xlat22 = (x_309 * x_312);
  let x_320 : vec2<f32> = vs_TEXCOORD7;
  let x_322 : f32 = x_44.x_GlobalMipBias.x;
  let x_323 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_320, x_322);
  let x_324 : vec3<f32> = vec3<f32>(x_323.x, x_323.y, x_323.z);
  let x_325 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_324.x, x_324.y, x_324.z, x_325.w);
  let x_329 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_330 : vec2<f32> = vec2<f32>(x_329.x, x_329.y);
  let x_334 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_330.x, x_330.y));
  let x_335 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_334.x, x_334.y, x_335.z);
  let x_337 : vec3<f32> = u_xlat4;
  let x_339 : vec4<f32> = hlslcc_FragCoord;
  let x_341 : vec2<f32> = (vec2<f32>(x_337.x, x_337.y) * vec2<f32>(x_339.x, x_339.y));
  let x_342 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_341.x, x_341.y, x_342.z);
  let x_346 : f32 = u_xlat4.y;
  let x_349 : f32 = x_44.x_ScaleBiasRt.x;
  let x_352 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat23 = ((x_346 * x_349) + x_352);
  let x_354 : f32 = u_xlat23;
  u_xlat4.z = (-(x_354) + 1.0f);
  let x_363 : vec3<f32> = u_xlat4;
  let x_366 : f32 = x_44.x_GlobalMipBias.x;
  let x_367 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_363.x, x_363.z), x_366);
  u_xlat23 = x_367.x;
  let x_370 : f32 = u_xlat23;
  u_xlat24 = (x_370 + -1.0f);
  let x_373 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_374 : f32 = u_xlat24;
  u_xlat24 = ((x_373 * x_374) + 1.0f);
  let x_377 : f32 = u_xlat23;
  u_xlat23 = min(x_377, 1.0f);
  let x_380 : vec4<f32> = u_xlat2;
  let x_381 : vec2<f32> = vec2<f32>(x_380.x, x_380.y);
  let x_383 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_381.x, x_381.y, x_383);
  let x_395 : vec3<f32> = txVec0;
  let x_397 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_395.xy, x_395.z);
  u_xlat2.x = x_397;
  let x_401 : f32 = x_86.x_MainLightShadowParams.x;
  u_xlat9.x = (-(x_401) + 1.0f);
  let x_406 : f32 = u_xlat2.x;
  let x_408 : f32 = x_86.x_MainLightShadowParams.x;
  let x_411 : f32 = u_xlat9.x;
  u_xlat2.x = ((x_406 * x_408) + x_411);
  let x_416 : f32 = u_xlat2.z;
  u_xlatb9 = (0.0f >= x_416);
  let x_420 : f32 = u_xlat2.z;
  u_xlatb16 = (x_420 >= 1.0f);
  let x_422 : bool = u_xlatb16;
  let x_423 : bool = u_xlatb9;
  u_xlatb9 = (x_422 | x_423);
  let x_425 : bool = u_xlatb9;
  if (x_425) {
    x_426 = 1.0f;
  } else {
    let x_431 : f32 = u_xlat2.x;
    x_426 = x_431;
  }
  let x_432 : f32 = x_426;
  u_xlat2.x = x_432;
  let x_434 : vec3<f32> = vs_TEXCOORD1;
  let x_438 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat4 = (x_434 + -(x_438));
  let x_441 : vec3<f32> = u_xlat4;
  let x_442 : vec3<f32> = u_xlat4;
  u_xlat9.x = dot(x_441, x_442);
  let x_446 : f32 = u_xlat9.x;
  let x_448 : f32 = x_86.x_MainLightShadowParams.z;
  let x_451 : f32 = x_86.x_MainLightShadowParams.w;
  u_xlat9.x = ((x_446 * x_448) + x_451);
  let x_455 : f32 = u_xlat9.x;
  u_xlat9.x = clamp(x_455, 0.0f, 1.0f);
  let x_460 : f32 = u_xlat2.x;
  u_xlat16 = (-(x_460) + 1.0f);
  let x_464 : f32 = u_xlat9.x;
  let x_465 : f32 = u_xlat16;
  let x_468 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_464 * x_465) + x_468);
  let x_471 : f32 = u_xlat24;
  let x_474 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat4 = (vec3<f32>(x_471, x_471, x_471) * vec3<f32>(x_474.x, x_474.y, x_474.z));
  let x_477 : f32 = u_xlat23;
  let x_479 : vec4<f32> = u_xlat3;
  u_xlat9 = (vec3<f32>(x_477, x_477, x_477) * vec3<f32>(x_479.x, x_479.y, x_479.z));
  let x_483 : f32 = u_xlat2.x;
  let x_489 : f32 = x_487.unity_LightData.z;
  u_xlat2.x = (x_483 * x_489);
  let x_492 : vec4<f32> = u_xlat2;
  let x_494 : vec3<f32> = u_xlat4;
  let x_495 : vec3<f32> = (vec3<f32>(x_492.x, x_492.x, x_492.x) * x_494);
  let x_496 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_495.x, x_495.y, x_495.z, x_496.w);
  let x_498 : vec3<f32> = u_xlat1;
  let x_500 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat2.x = dot(x_498, vec3<f32>(x_500.x, x_500.y, x_500.z));
  let x_505 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_505, 0.0f, 1.0f);
  let x_508 : vec4<f32> = u_xlat2;
  let x_510 : vec4<f32> = u_xlat3;
  let x_512 : vec3<f32> = (vec3<f32>(x_508.x, x_508.x, x_508.x) * vec3<f32>(x_510.x, x_510.y, x_510.z));
  let x_513 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_512.x, x_512.y, x_512.z, x_513.w);
  let x_515 : vec4<f32> = u_xlat0;
  let x_517 : vec4<f32> = u_xlat3;
  let x_519 : vec3<f32> = (vec3<f32>(x_515.y, x_515.z, x_515.w) * vec3<f32>(x_517.x, x_517.y, x_517.z));
  let x_520 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_519.x, x_519.y, x_519.z, x_520.w);
  let x_523 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_525 : f32 = x_487.unity_LightData.y;
  u_xlat2.x = min(x_523, x_525);
  let x_530 : f32 = u_xlat2.x;
  u_xlatu2 = bitcast<u32>(i32(x_530));
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_542 : u32 = u_xlatu_loop_1;
    let x_543 : u32 = u_xlatu2;
    if ((x_542 < x_543)) {
    } else {
      break;
    }
    let x_546 : u32 = u_xlatu_loop_1;
    u_xlatu5 = (x_546 >> 2u);
    let x_549 : u32 = u_xlatu_loop_1;
    u_xlati12 = bitcast<i32>((x_549 & 3u));
    let x_552 : u32 = u_xlatu5;
    let x_555 : vec4<f32> = x_487.unity_LightIndices[bitcast<i32>(x_552)];
    let x_565 : i32 = u_xlati12;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_570 : vec4<u32> = indexable[x_565];
    u_xlat5.x = dot(x_555, bitcast<vec4<f32>>(x_570));
    let x_576 : f32 = u_xlat5.x;
    u_xlati5 = i32(x_576);
    let x_579 : vec3<f32> = vs_TEXCOORD1;
    let x_591 : i32 = u_xlati5;
    let x_593 : vec4<f32> = x_590.x_AdditionalLightsPosition[x_591];
    let x_596 : i32 = u_xlati5;
    let x_598 : vec4<f32> = x_590.x_AdditionalLightsPosition[x_596];
    u_xlat12 = ((-(x_579) * vec3<f32>(x_593.w, x_593.w, x_593.w)) + vec3<f32>(x_598.x, x_598.y, x_598.z));
    let x_602 : vec3<f32> = u_xlat12;
    let x_603 : vec3<f32> = u_xlat12;
    u_xlat6.x = dot(x_602, x_603);
    let x_607 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_607, 6.10351562e-05f);
    let x_613 : f32 = u_xlat6.x;
    u_xlat13.x = inverseSqrt(x_613);
    let x_616 : vec3<f32> = u_xlat12;
    let x_617 : vec3<f32> = u_xlat13;
    u_xlat12 = (x_616 * vec3<f32>(x_617.x, x_617.x, x_617.x));
    let x_621 : f32 = u_xlat6.x;
    u_xlat13.x = (1.0f / x_621);
    let x_625 : f32 = u_xlat6.x;
    let x_626 : i32 = u_xlati5;
    let x_628 : f32 = x_590.x_AdditionalLightsAttenuation[x_626].x;
    u_xlat6.x = (x_625 * x_628);
    let x_632 : f32 = u_xlat6.x;
    let x_635 : f32 = u_xlat6.x;
    u_xlat6.x = ((-(x_632) * x_635) + 1.0f);
    let x_640 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_640, 0.0f);
    let x_644 : f32 = u_xlat6.x;
    let x_646 : f32 = u_xlat6.x;
    u_xlat6.x = (x_644 * x_646);
    let x_650 : f32 = u_xlat6.x;
    let x_652 : f32 = u_xlat13.x;
    u_xlat6.x = (x_650 * x_652);
    let x_655 : i32 = u_xlati5;
    let x_657 : vec4<f32> = x_590.x_AdditionalLightsSpotDir[x_655];
    let x_659 : vec3<f32> = u_xlat12;
    u_xlat13.x = dot(vec3<f32>(x_657.x, x_657.y, x_657.z), x_659);
    let x_663 : f32 = u_xlat13.x;
    let x_664 : i32 = u_xlati5;
    let x_666 : f32 = x_590.x_AdditionalLightsAttenuation[x_664].z;
    let x_668 : i32 = u_xlati5;
    let x_670 : f32 = x_590.x_AdditionalLightsAttenuation[x_668].w;
    u_xlat13.x = ((x_663 * x_666) + x_670);
    let x_674 : f32 = u_xlat13.x;
    u_xlat13.x = clamp(x_674, 0.0f, 1.0f);
    let x_678 : f32 = u_xlat13.x;
    let x_680 : f32 = u_xlat13.x;
    u_xlat13.x = (x_678 * x_680);
    let x_684 : f32 = u_xlat13.x;
    let x_686 : f32 = u_xlat6.x;
    u_xlat6.x = (x_684 * x_686);
    let x_689 : f32 = u_xlat24;
    let x_691 : i32 = u_xlati5;
    let x_693 : vec4<f32> = x_590.x_AdditionalLightsColor[x_691];
    u_xlat13 = (vec3<f32>(x_689, x_689, x_689) * vec3<f32>(x_693.x, x_693.y, x_693.z));
    let x_696 : vec3<f32> = u_xlat6;
    let x_698 : vec3<f32> = u_xlat13;
    u_xlat6 = (vec3<f32>(x_696.x, x_696.x, x_696.x) * x_698);
    let x_700 : vec3<f32> = u_xlat1;
    let x_701 : vec3<f32> = u_xlat12;
    u_xlat5.x = dot(x_700, x_701);
    let x_705 : f32 = u_xlat5.x;
    u_xlat5.x = clamp(x_705, 0.0f, 1.0f);
    let x_708 : vec3<f32> = u_xlat5;
    let x_710 : vec3<f32> = u_xlat6;
    u_xlat5 = (vec3<f32>(x_708.x, x_708.x, x_708.x) * x_710);
    let x_712 : vec3<f32> = u_xlat5;
    let x_713 : vec4<f32> = u_xlat0;
    let x_716 : vec3<f32> = u_xlat4;
    u_xlat4 = ((x_712 * vec3<f32>(x_713.y, x_713.z, x_713.w)) + x_716);

    continuing {
      let x_718 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_718 + bitcast<u32>(1i));
    }
  }
  let x_721 : vec3<f32> = u_xlat9;
  let x_722 : vec4<f32> = u_xlat0;
  let x_725 : vec4<f32> = u_xlat3;
  u_xlat7 = ((x_721 * vec3<f32>(x_722.y, x_722.z, x_722.w)) + vec3<f32>(x_725.x, x_725.y, x_725.z));
  let x_728 : vec3<f32> = u_xlat4;
  let x_729 : vec3<f32> = u_xlat7;
  u_xlat7 = (x_728 + x_729);
  let x_731 : f32 = u_xlat22;
  let x_732 : f32 = u_xlat22;
  u_xlat1.x = (x_731 * -(x_732));
  let x_737 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_737);
  let x_740 : vec3<f32> = u_xlat7;
  let x_743 : vec4<f32> = x_44.unity_FogColor;
  u_xlat7 = (x_740 + -(vec3<f32>(x_743.x, x_743.y, x_743.z)));
  let x_749 : vec3<f32> = u_xlat1;
  let x_751 : vec3<f32> = u_xlat7;
  let x_754 : vec4<f32> = x_44.unity_FogColor;
  let x_756 : vec3<f32> = ((vec3<f32>(x_749.x, x_749.x, x_749.x) * x_751) + vec3<f32>(x_754.x, x_754.y, x_754.z));
  let x_757 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_756.x, x_756.y, x_756.z, x_757.w);
  let x_761 : f32 = x_56.x_Surface;
  u_xlatb7 = (x_761 == 1.0f);
  let x_763 : bool = u_xlatb7;
  if (x_763) {
    let x_768 : f32 = u_xlat0.x;
    x_764 = x_768;
  } else {
    x_764 = 1.0f;
  }
  let x_770 : f32 = x_764;
  SV_Target0.w = x_770;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD7_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  main_1();
  return main_out(SV_Target0);
}

