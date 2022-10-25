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

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_86 : MainLightShadows;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(5) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(2) var<uniform> x_480 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_574 : AdditionalLights;

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
  var txVec0 : vec3<f32>;
  var u_xlat9 : f32;
  var u_xlatb9 : bool;
  var u_xlatb16 : bool;
  var x_423 : f32;
  var u_xlat16 : f32;
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
  var x_703 : f32;
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
  let x_80 : vec3<f32> = vs_TEXCOORD1;
  let x_88 : vec4<f32> = x_86.x_CascadeShadowSplitSpheres0;
  let x_91 : vec3<f32> = (x_80 + -(vec3<f32>(x_88.x, x_88.y, x_88.z)));
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
  let x_282 : vec2<f32> = vs_TEXCOORD7;
  let x_284 : f32 = x_43.x_GlobalMipBias.x;
  let x_285 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_282, x_284);
  u_xlat3 = x_285;
  let x_290 : vec2<f32> = vs_TEXCOORD7;
  let x_292 : f32 = x_43.x_GlobalMipBias.x;
  let x_293 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_290, x_292);
  u_xlat4 = vec3<f32>(x_293.x, x_293.y, x_293.z);
  let x_295 : vec4<f32> = u_xlat3;
  let x_299 : vec3<f32> = (vec3<f32>(x_295.x, x_295.y, x_295.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_300 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_299.x, x_299.y, x_299.z, x_300.w);
  let x_302 : vec3<f32> = u_xlat1;
  let x_303 : vec4<f32> = u_xlat3;
  u_xlat22 = dot(x_302, vec3<f32>(x_303.x, x_303.y, x_303.z));
  let x_306 : f32 = u_xlat22;
  u_xlat22 = (x_306 + 0.5f);
  let x_309 : f32 = u_xlat22;
  let x_311 : vec3<f32> = u_xlat4;
  let x_312 : vec3<f32> = (vec3<f32>(x_309, x_309, x_309) * x_311);
  let x_313 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_312.x, x_312.y, x_312.z, x_313.w);
  let x_316 : f32 = u_xlat3.w;
  u_xlat22 = max(x_316, 0.0001f);
  let x_319 : vec4<f32> = u_xlat3;
  let x_321 : f32 = u_xlat22;
  let x_323 : vec3<f32> = (vec3<f32>(x_319.x, x_319.y, x_319.z) / vec3<f32>(x_321, x_321, x_321));
  let x_324 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_323.x, x_323.y, x_323.z, x_324.w);
  let x_328 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_329 : vec2<f32> = vec2<f32>(x_328.x, x_328.y);
  let x_333 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_329.x, x_329.y));
  let x_334 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_333.x, x_333.y, x_334.z);
  let x_336 : vec3<f32> = u_xlat4;
  let x_338 : vec4<f32> = hlslcc_FragCoord;
  let x_340 : vec2<f32> = (vec2<f32>(x_336.x, x_336.y) * vec2<f32>(x_338.x, x_338.y));
  let x_341 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_340.x, x_340.y, x_341.z);
  let x_344 : f32 = u_xlat4.y;
  let x_347 : f32 = x_43.x_ScaleBiasRt.x;
  let x_350 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat22 = ((x_344 * x_347) + x_350);
  let x_352 : f32 = u_xlat22;
  u_xlat4.z = (-(x_352) + 1.0f);
  let x_361 : vec3<f32> = u_xlat4;
  let x_364 : f32 = x_43.x_GlobalMipBias.x;
  let x_365 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_361.x, x_361.z), x_364);
  u_xlat22 = x_365.x;
  let x_368 : f32 = u_xlat22;
  u_xlat23 = (x_368 + -1.0f);
  let x_371 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_372 : f32 = u_xlat23;
  u_xlat23 = ((x_371 * x_372) + 1.0f);
  let x_375 : f32 = u_xlat22;
  u_xlat22 = min(x_375, 1.0f);
  let x_378 : vec4<f32> = u_xlat2;
  let x_379 : vec2<f32> = vec2<f32>(x_378.x, x_378.y);
  let x_381 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_379.x, x_379.y, x_381);
  let x_393 : vec3<f32> = txVec0;
  let x_395 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_393.xy, x_393.z);
  u_xlat2.x = x_395;
  let x_400 : f32 = x_86.x_MainLightShadowParams.x;
  u_xlat9 = (-(x_400) + 1.0f);
  let x_404 : f32 = u_xlat2.x;
  let x_406 : f32 = x_86.x_MainLightShadowParams.x;
  let x_408 : f32 = u_xlat9;
  u_xlat2.x = ((x_404 * x_406) + x_408);
  let x_413 : f32 = u_xlat2.z;
  u_xlatb9 = (0.0f >= x_413);
  let x_417 : f32 = u_xlat2.z;
  u_xlatb16 = (x_417 >= 1.0f);
  let x_419 : bool = u_xlatb16;
  let x_420 : bool = u_xlatb9;
  u_xlatb9 = (x_419 | x_420);
  let x_422 : bool = u_xlatb9;
  if (x_422) {
    x_423 = 1.0f;
  } else {
    let x_428 : f32 = u_xlat2.x;
    x_423 = x_428;
  }
  let x_429 : f32 = x_423;
  u_xlat2.x = x_429;
  let x_431 : vec3<f32> = vs_TEXCOORD1;
  let x_435 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  u_xlat4 = (x_431 + -(x_435));
  let x_438 : vec3<f32> = u_xlat4;
  let x_439 : vec3<f32> = u_xlat4;
  u_xlat9 = dot(x_438, x_439);
  let x_441 : f32 = u_xlat9;
  let x_443 : f32 = x_86.x_MainLightShadowParams.z;
  let x_446 : f32 = x_86.x_MainLightShadowParams.w;
  u_xlat9 = ((x_441 * x_443) + x_446);
  let x_448 : f32 = u_xlat9;
  u_xlat9 = clamp(x_448, 0.0f, 1.0f);
  let x_452 : f32 = u_xlat2.x;
  u_xlat16 = (-(x_452) + 1.0f);
  let x_455 : f32 = u_xlat9;
  let x_456 : f32 = u_xlat16;
  let x_459 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_455 * x_456) + x_459);
  let x_462 : f32 = u_xlat23;
  let x_465 : vec4<f32> = x_43.x_MainLightColor;
  u_xlat4 = (vec3<f32>(x_462, x_462, x_462) * vec3<f32>(x_465.x, x_465.y, x_465.z));
  let x_468 : f32 = u_xlat22;
  let x_470 : vec4<f32> = u_xlat3;
  let x_472 : vec3<f32> = (vec3<f32>(x_468, x_468, x_468) * vec3<f32>(x_470.x, x_470.y, x_470.z));
  let x_473 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_472.x, x_472.y, x_472.z, x_473.w);
  let x_476 : f32 = u_xlat2.x;
  let x_482 : f32 = x_480.unity_LightData.z;
  u_xlat22 = (x_476 * x_482);
  let x_484 : f32 = u_xlat22;
  let x_486 : vec3<f32> = u_xlat4;
  let x_487 : vec3<f32> = (vec3<f32>(x_484, x_484, x_484) * x_486);
  let x_488 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_487.x, x_487.y, x_487.z, x_488.w);
  let x_490 : vec3<f32> = u_xlat1;
  let x_492 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat22 = dot(x_490, vec3<f32>(x_492.x, x_492.y, x_492.z));
  let x_495 : f32 = u_xlat22;
  u_xlat22 = clamp(x_495, 0.0f, 1.0f);
  let x_497 : f32 = u_xlat22;
  let x_499 : vec4<f32> = u_xlat2;
  let x_501 : vec3<f32> = (vec3<f32>(x_497, x_497, x_497) * vec3<f32>(x_499.x, x_499.y, x_499.z));
  let x_502 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_501.x, x_501.y, x_501.z, x_502.w);
  let x_504 : vec4<f32> = u_xlat0;
  let x_506 : vec4<f32> = u_xlat2;
  let x_508 : vec3<f32> = (vec3<f32>(x_504.y, x_504.z, x_504.w) * vec3<f32>(x_506.x, x_506.y, x_506.z));
  let x_509 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_508.x, x_508.y, x_508.z, x_509.w);
  let x_512 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_514 : f32 = x_480.unity_LightData.y;
  u_xlat22 = min(x_512, x_514);
  let x_516 : f32 = u_xlat22;
  u_xlatu22 = bitcast<u32>(i32(x_516));
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_528 : u32 = u_xlatu_loop_1;
    let x_529 : u32 = u_xlatu22;
    if ((x_528 < x_529)) {
    } else {
      break;
    }
    let x_532 : u32 = u_xlatu_loop_1;
    u_xlatu25 = (x_532 >> 2u);
    let x_535 : u32 = u_xlatu_loop_1;
    u_xlati5 = bitcast<i32>((x_535 & 3u));
    let x_539 : u32 = u_xlatu25;
    let x_542 : vec4<f32> = x_480.unity_LightIndices[bitcast<i32>(x_539)];
    let x_552 : i32 = u_xlati5;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_557 : vec4<u32> = indexable[x_552];
    u_xlat25 = dot(x_542, bitcast<vec4<f32>>(x_557));
    let x_561 : f32 = u_xlat25;
    u_xlati25 = i32(x_561);
    let x_563 : vec3<f32> = vs_TEXCOORD1;
    let x_575 : i32 = u_xlati25;
    let x_577 : vec4<f32> = x_574.x_AdditionalLightsPosition[x_575];
    let x_580 : i32 = u_xlati25;
    let x_582 : vec4<f32> = x_574.x_AdditionalLightsPosition[x_580];
    u_xlat5 = ((-(x_563) * vec3<f32>(x_577.w, x_577.w, x_577.w)) + vec3<f32>(x_582.x, x_582.y, x_582.z));
    let x_586 : vec3<f32> = u_xlat5;
    let x_587 : vec3<f32> = u_xlat5;
    u_xlat26 = dot(x_586, x_587);
    let x_589 : f32 = u_xlat26;
    u_xlat26 = max(x_589, 6.10351562e-05f);
    let x_593 : f32 = u_xlat26;
    u_xlat6.x = inverseSqrt(x_593);
    let x_596 : vec3<f32> = u_xlat5;
    let x_597 : vec3<f32> = u_xlat6;
    u_xlat5 = (x_596 * vec3<f32>(x_597.x, x_597.x, x_597.x));
    let x_600 : f32 = u_xlat26;
    u_xlat6.x = (1.0f / x_600);
    let x_603 : f32 = u_xlat26;
    let x_604 : i32 = u_xlati25;
    let x_606 : f32 = x_574.x_AdditionalLightsAttenuation[x_604].x;
    u_xlat26 = (x_603 * x_606);
    let x_608 : f32 = u_xlat26;
    let x_610 : f32 = u_xlat26;
    u_xlat26 = ((-(x_608) * x_610) + 1.0f);
    let x_613 : f32 = u_xlat26;
    u_xlat26 = max(x_613, 0.0f);
    let x_615 : f32 = u_xlat26;
    let x_616 : f32 = u_xlat26;
    u_xlat26 = (x_615 * x_616);
    let x_618 : f32 = u_xlat26;
    let x_620 : f32 = u_xlat6.x;
    u_xlat26 = (x_618 * x_620);
    let x_622 : i32 = u_xlati25;
    let x_624 : vec4<f32> = x_574.x_AdditionalLightsSpotDir[x_622];
    let x_626 : vec3<f32> = u_xlat5;
    u_xlat6.x = dot(vec3<f32>(x_624.x, x_624.y, x_624.z), x_626);
    let x_630 : f32 = u_xlat6.x;
    let x_631 : i32 = u_xlati25;
    let x_633 : f32 = x_574.x_AdditionalLightsAttenuation[x_631].z;
    let x_635 : i32 = u_xlati25;
    let x_637 : f32 = x_574.x_AdditionalLightsAttenuation[x_635].w;
    u_xlat6.x = ((x_630 * x_633) + x_637);
    let x_641 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_641, 0.0f, 1.0f);
    let x_645 : f32 = u_xlat6.x;
    let x_647 : f32 = u_xlat6.x;
    u_xlat6.x = (x_645 * x_647);
    let x_650 : f32 = u_xlat26;
    let x_652 : f32 = u_xlat6.x;
    u_xlat26 = (x_650 * x_652);
    let x_654 : f32 = u_xlat23;
    let x_656 : i32 = u_xlati25;
    let x_658 : vec4<f32> = x_574.x_AdditionalLightsColor[x_656];
    u_xlat6 = (vec3<f32>(x_654, x_654, x_654) * vec3<f32>(x_658.x, x_658.y, x_658.z));
    let x_661 : f32 = u_xlat26;
    let x_663 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_661, x_661, x_661) * x_663);
    let x_665 : vec3<f32> = u_xlat1;
    let x_666 : vec3<f32> = u_xlat5;
    u_xlat25 = dot(x_665, x_666);
    let x_668 : f32 = u_xlat25;
    u_xlat25 = clamp(x_668, 0.0f, 1.0f);
    let x_670 : f32 = u_xlat25;
    let x_672 : vec3<f32> = u_xlat6;
    u_xlat5 = (vec3<f32>(x_670, x_670, x_670) * x_672);
    let x_674 : vec3<f32> = u_xlat5;
    let x_675 : vec4<f32> = u_xlat0;
    let x_678 : vec3<f32> = u_xlat4;
    u_xlat4 = ((x_674 * vec3<f32>(x_675.y, x_675.z, x_675.w)) + x_678);

    continuing {
      let x_680 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_680 + bitcast<u32>(1i));
    }
  }
  let x_683 : vec4<f32> = u_xlat3;
  let x_685 : vec4<f32> = u_xlat0;
  let x_688 : vec4<f32> = u_xlat2;
  u_xlat7 = ((vec3<f32>(x_683.x, x_683.y, x_683.z) * vec3<f32>(x_685.y, x_685.z, x_685.w)) + vec3<f32>(x_688.x, x_688.y, x_688.z));
  let x_693 : vec3<f32> = u_xlat4;
  let x_694 : vec3<f32> = u_xlat7;
  let x_695 : vec3<f32> = (x_693 + x_694);
  let x_696 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_695.x, x_695.y, x_695.z, x_696.w);
  let x_700 : f32 = x_55.x_Surface;
  u_xlatb7 = (x_700 == 1.0f);
  let x_702 : bool = u_xlatb7;
  if (x_702) {
    let x_707 : f32 = u_xlat0.x;
    x_703 = x_707;
  } else {
    x_703 = 1.0f;
  }
  let x_709 : f32 = x_703;
  SV_Target0.w = x_709;
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

