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

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(5) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(1) @binding(3) var<uniform> x_55 : UnityPerMaterial;

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

@group(1) @binding(2) var<uniform> x_443 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_537 : AdditionalLights;

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
  var x_386 : f32;
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
  var x_666 : f32;
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
  let x_285 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_282, x_284);
  let x_286 : vec3<f32> = vec3<f32>(x_285.x, x_285.y, x_285.z);
  let x_287 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_286.x, x_286.y, x_286.z, x_287.w);
  let x_291 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_292 : vec2<f32> = vec2<f32>(x_291.x, x_291.y);
  let x_296 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_292.x, x_292.y));
  let x_297 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_296.x, x_296.y, x_297.z);
  let x_299 : vec3<f32> = u_xlat4;
  let x_301 : vec4<f32> = hlslcc_FragCoord;
  let x_303 : vec2<f32> = (vec2<f32>(x_299.x, x_299.y) * vec2<f32>(x_301.x, x_301.y));
  let x_304 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_303.x, x_303.y, x_304.z);
  let x_307 : f32 = u_xlat4.y;
  let x_310 : f32 = x_43.x_ScaleBiasRt.x;
  let x_313 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat22 = ((x_307 * x_310) + x_313);
  let x_315 : f32 = u_xlat22;
  u_xlat4.z = (-(x_315) + 1.0f);
  let x_324 : vec3<f32> = u_xlat4;
  let x_327 : f32 = x_43.x_GlobalMipBias.x;
  let x_328 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_324.x, x_324.z), x_327);
  u_xlat22 = x_328.x;
  let x_331 : f32 = u_xlat22;
  u_xlat23 = (x_331 + -1.0f);
  let x_334 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_335 : f32 = u_xlat23;
  u_xlat23 = ((x_334 * x_335) + 1.0f);
  let x_338 : f32 = u_xlat22;
  u_xlat22 = min(x_338, 1.0f);
  let x_341 : vec4<f32> = u_xlat2;
  let x_342 : vec2<f32> = vec2<f32>(x_341.x, x_341.y);
  let x_344 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_342.x, x_342.y, x_344);
  let x_356 : vec3<f32> = txVec0;
  let x_358 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_356.xy, x_356.z);
  u_xlat2.x = x_358;
  let x_363 : f32 = x_86.x_MainLightShadowParams.x;
  u_xlat9 = (-(x_363) + 1.0f);
  let x_367 : f32 = u_xlat2.x;
  let x_369 : f32 = x_86.x_MainLightShadowParams.x;
  let x_371 : f32 = u_xlat9;
  u_xlat2.x = ((x_367 * x_369) + x_371);
  let x_376 : f32 = u_xlat2.z;
  u_xlatb9 = (0.0f >= x_376);
  let x_380 : f32 = u_xlat2.z;
  u_xlatb16 = (x_380 >= 1.0f);
  let x_382 : bool = u_xlatb16;
  let x_383 : bool = u_xlatb9;
  u_xlatb9 = (x_382 | x_383);
  let x_385 : bool = u_xlatb9;
  if (x_385) {
    x_386 = 1.0f;
  } else {
    let x_391 : f32 = u_xlat2.x;
    x_386 = x_391;
  }
  let x_392 : f32 = x_386;
  u_xlat2.x = x_392;
  let x_394 : vec3<f32> = vs_TEXCOORD1;
  let x_398 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  u_xlat4 = (x_394 + -(x_398));
  let x_401 : vec3<f32> = u_xlat4;
  let x_402 : vec3<f32> = u_xlat4;
  u_xlat9 = dot(x_401, x_402);
  let x_404 : f32 = u_xlat9;
  let x_406 : f32 = x_86.x_MainLightShadowParams.z;
  let x_409 : f32 = x_86.x_MainLightShadowParams.w;
  u_xlat9 = ((x_404 * x_406) + x_409);
  let x_411 : f32 = u_xlat9;
  u_xlat9 = clamp(x_411, 0.0f, 1.0f);
  let x_415 : f32 = u_xlat2.x;
  u_xlat16 = (-(x_415) + 1.0f);
  let x_418 : f32 = u_xlat9;
  let x_419 : f32 = u_xlat16;
  let x_422 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_418 * x_419) + x_422);
  let x_425 : f32 = u_xlat23;
  let x_428 : vec4<f32> = x_43.x_MainLightColor;
  u_xlat4 = (vec3<f32>(x_425, x_425, x_425) * vec3<f32>(x_428.x, x_428.y, x_428.z));
  let x_431 : f32 = u_xlat22;
  let x_433 : vec4<f32> = u_xlat3;
  let x_435 : vec3<f32> = (vec3<f32>(x_431, x_431, x_431) * vec3<f32>(x_433.x, x_433.y, x_433.z));
  let x_436 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_435.x, x_435.y, x_435.z, x_436.w);
  let x_439 : f32 = u_xlat2.x;
  let x_445 : f32 = x_443.unity_LightData.z;
  u_xlat22 = (x_439 * x_445);
  let x_447 : f32 = u_xlat22;
  let x_449 : vec3<f32> = u_xlat4;
  let x_450 : vec3<f32> = (vec3<f32>(x_447, x_447, x_447) * x_449);
  let x_451 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_450.x, x_450.y, x_450.z, x_451.w);
  let x_453 : vec3<f32> = u_xlat1;
  let x_455 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat22 = dot(x_453, vec3<f32>(x_455.x, x_455.y, x_455.z));
  let x_458 : f32 = u_xlat22;
  u_xlat22 = clamp(x_458, 0.0f, 1.0f);
  let x_460 : f32 = u_xlat22;
  let x_462 : vec4<f32> = u_xlat2;
  let x_464 : vec3<f32> = (vec3<f32>(x_460, x_460, x_460) * vec3<f32>(x_462.x, x_462.y, x_462.z));
  let x_465 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_464.x, x_464.y, x_464.z, x_465.w);
  let x_467 : vec4<f32> = u_xlat0;
  let x_469 : vec4<f32> = u_xlat2;
  let x_471 : vec3<f32> = (vec3<f32>(x_467.y, x_467.z, x_467.w) * vec3<f32>(x_469.x, x_469.y, x_469.z));
  let x_472 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_471.x, x_471.y, x_471.z, x_472.w);
  let x_475 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_477 : f32 = x_443.unity_LightData.y;
  u_xlat22 = min(x_475, x_477);
  let x_479 : f32 = u_xlat22;
  u_xlatu22 = bitcast<u32>(i32(x_479));
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_491 : u32 = u_xlatu_loop_1;
    let x_492 : u32 = u_xlatu22;
    if ((x_491 < x_492)) {
    } else {
      break;
    }
    let x_495 : u32 = u_xlatu_loop_1;
    u_xlatu25 = (x_495 >> 2u);
    let x_498 : u32 = u_xlatu_loop_1;
    u_xlati5 = bitcast<i32>((x_498 & 3u));
    let x_502 : u32 = u_xlatu25;
    let x_505 : vec4<f32> = x_443.unity_LightIndices[bitcast<i32>(x_502)];
    let x_515 : i32 = u_xlati5;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_520 : vec4<u32> = indexable[x_515];
    u_xlat25 = dot(x_505, bitcast<vec4<f32>>(x_520));
    let x_524 : f32 = u_xlat25;
    u_xlati25 = i32(x_524);
    let x_526 : vec3<f32> = vs_TEXCOORD1;
    let x_538 : i32 = u_xlati25;
    let x_540 : vec4<f32> = x_537.x_AdditionalLightsPosition[x_538];
    let x_543 : i32 = u_xlati25;
    let x_545 : vec4<f32> = x_537.x_AdditionalLightsPosition[x_543];
    u_xlat5 = ((-(x_526) * vec3<f32>(x_540.w, x_540.w, x_540.w)) + vec3<f32>(x_545.x, x_545.y, x_545.z));
    let x_549 : vec3<f32> = u_xlat5;
    let x_550 : vec3<f32> = u_xlat5;
    u_xlat26 = dot(x_549, x_550);
    let x_552 : f32 = u_xlat26;
    u_xlat26 = max(x_552, 6.10351562e-05f);
    let x_556 : f32 = u_xlat26;
    u_xlat6.x = inverseSqrt(x_556);
    let x_559 : vec3<f32> = u_xlat5;
    let x_560 : vec3<f32> = u_xlat6;
    u_xlat5 = (x_559 * vec3<f32>(x_560.x, x_560.x, x_560.x));
    let x_563 : f32 = u_xlat26;
    u_xlat6.x = (1.0f / x_563);
    let x_566 : f32 = u_xlat26;
    let x_567 : i32 = u_xlati25;
    let x_569 : f32 = x_537.x_AdditionalLightsAttenuation[x_567].x;
    u_xlat26 = (x_566 * x_569);
    let x_571 : f32 = u_xlat26;
    let x_573 : f32 = u_xlat26;
    u_xlat26 = ((-(x_571) * x_573) + 1.0f);
    let x_576 : f32 = u_xlat26;
    u_xlat26 = max(x_576, 0.0f);
    let x_578 : f32 = u_xlat26;
    let x_579 : f32 = u_xlat26;
    u_xlat26 = (x_578 * x_579);
    let x_581 : f32 = u_xlat26;
    let x_583 : f32 = u_xlat6.x;
    u_xlat26 = (x_581 * x_583);
    let x_585 : i32 = u_xlati25;
    let x_587 : vec4<f32> = x_537.x_AdditionalLightsSpotDir[x_585];
    let x_589 : vec3<f32> = u_xlat5;
    u_xlat6.x = dot(vec3<f32>(x_587.x, x_587.y, x_587.z), x_589);
    let x_593 : f32 = u_xlat6.x;
    let x_594 : i32 = u_xlati25;
    let x_596 : f32 = x_537.x_AdditionalLightsAttenuation[x_594].z;
    let x_598 : i32 = u_xlati25;
    let x_600 : f32 = x_537.x_AdditionalLightsAttenuation[x_598].w;
    u_xlat6.x = ((x_593 * x_596) + x_600);
    let x_604 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_604, 0.0f, 1.0f);
    let x_608 : f32 = u_xlat6.x;
    let x_610 : f32 = u_xlat6.x;
    u_xlat6.x = (x_608 * x_610);
    let x_613 : f32 = u_xlat26;
    let x_615 : f32 = u_xlat6.x;
    u_xlat26 = (x_613 * x_615);
    let x_617 : f32 = u_xlat23;
    let x_619 : i32 = u_xlati25;
    let x_621 : vec4<f32> = x_537.x_AdditionalLightsColor[x_619];
    u_xlat6 = (vec3<f32>(x_617, x_617, x_617) * vec3<f32>(x_621.x, x_621.y, x_621.z));
    let x_624 : f32 = u_xlat26;
    let x_626 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_624, x_624, x_624) * x_626);
    let x_628 : vec3<f32> = u_xlat1;
    let x_629 : vec3<f32> = u_xlat5;
    u_xlat25 = dot(x_628, x_629);
    let x_631 : f32 = u_xlat25;
    u_xlat25 = clamp(x_631, 0.0f, 1.0f);
    let x_633 : f32 = u_xlat25;
    let x_635 : vec3<f32> = u_xlat6;
    u_xlat5 = (vec3<f32>(x_633, x_633, x_633) * x_635);
    let x_637 : vec3<f32> = u_xlat5;
    let x_638 : vec4<f32> = u_xlat0;
    let x_641 : vec3<f32> = u_xlat4;
    u_xlat4 = ((x_637 * vec3<f32>(x_638.y, x_638.z, x_638.w)) + x_641);

    continuing {
      let x_643 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_643 + bitcast<u32>(1i));
    }
  }
  let x_646 : vec4<f32> = u_xlat3;
  let x_648 : vec4<f32> = u_xlat0;
  let x_651 : vec4<f32> = u_xlat2;
  u_xlat7 = ((vec3<f32>(x_646.x, x_646.y, x_646.z) * vec3<f32>(x_648.y, x_648.z, x_648.w)) + vec3<f32>(x_651.x, x_651.y, x_651.z));
  let x_656 : vec3<f32> = u_xlat4;
  let x_657 : vec3<f32> = u_xlat7;
  let x_658 : vec3<f32> = (x_656 + x_657);
  let x_659 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_658.x, x_658.y, x_658.z, x_659.w);
  let x_663 : f32 = x_55.x_Surface;
  u_xlatb7 = (x_663 == 1.0f);
  let x_665 : bool = u_xlatb7;
  if (x_665) {
    let x_670 : f32 = u_xlat0.x;
    x_666 = x_670;
  } else {
    x_666 = 1.0f;
  }
  let x_672 : f32 = x_666;
  SV_Target0.w = x_672;
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

