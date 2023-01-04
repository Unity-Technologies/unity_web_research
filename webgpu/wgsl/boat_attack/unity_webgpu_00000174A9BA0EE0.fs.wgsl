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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

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

@group(1) @binding(2) var<uniform> x_524 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_627 : AdditionalLights;

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
  var x_463 : f32;
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
  var x_801 : f32;
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
  let x_323 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_320, x_322);
  u_xlat3 = x_323;
  let x_328 : vec2<f32> = vs_TEXCOORD7;
  let x_330 : f32 = x_44.x_GlobalMipBias.x;
  let x_331 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_328, x_330);
  u_xlat4 = vec3<f32>(x_331.x, x_331.y, x_331.z);
  let x_333 : vec4<f32> = u_xlat3;
  let x_337 : vec3<f32> = (vec3<f32>(x_333.x, x_333.y, x_333.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_338 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_337.x, x_337.y, x_337.z, x_338.w);
  let x_341 : vec3<f32> = u_xlat1;
  let x_342 : vec4<f32> = u_xlat3;
  u_xlat23 = dot(x_341, vec3<f32>(x_342.x, x_342.y, x_342.z));
  let x_345 : f32 = u_xlat23;
  u_xlat23 = (x_345 + 0.5f);
  let x_348 : f32 = u_xlat23;
  let x_350 : vec3<f32> = u_xlat4;
  let x_351 : vec3<f32> = (vec3<f32>(x_348, x_348, x_348) * x_350);
  let x_352 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_351.x, x_351.y, x_351.z, x_352.w);
  let x_355 : f32 = u_xlat3.w;
  u_xlat23 = max(x_355, 0.0001f);
  let x_358 : vec4<f32> = u_xlat3;
  let x_360 : f32 = u_xlat23;
  let x_362 : vec3<f32> = (vec3<f32>(x_358.x, x_358.y, x_358.z) / vec3<f32>(x_360, x_360, x_360));
  let x_363 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_362.x, x_362.y, x_362.z, x_363.w);
  let x_367 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_368 : vec2<f32> = vec2<f32>(x_367.x, x_367.y);
  let x_372 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_368.x, x_368.y));
  let x_373 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_372.x, x_372.y, x_373.z);
  let x_375 : vec3<f32> = u_xlat4;
  let x_377 : vec4<f32> = hlslcc_FragCoord;
  let x_379 : vec2<f32> = (vec2<f32>(x_375.x, x_375.y) * vec2<f32>(x_377.x, x_377.y));
  let x_380 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_379.x, x_379.y, x_380.z);
  let x_383 : f32 = u_xlat4.y;
  let x_386 : f32 = x_44.x_ScaleBiasRt.x;
  let x_389 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat23 = ((x_383 * x_386) + x_389);
  let x_391 : f32 = u_xlat23;
  u_xlat4.z = (-(x_391) + 1.0f);
  let x_400 : vec3<f32> = u_xlat4;
  let x_403 : f32 = x_44.x_GlobalMipBias.x;
  let x_404 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_400.x, x_400.z), x_403);
  u_xlat23 = x_404.x;
  let x_407 : f32 = u_xlat23;
  u_xlat24 = (x_407 + -1.0f);
  let x_410 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_411 : f32 = u_xlat24;
  u_xlat24 = ((x_410 * x_411) + 1.0f);
  let x_414 : f32 = u_xlat23;
  u_xlat23 = min(x_414, 1.0f);
  let x_417 : vec4<f32> = u_xlat2;
  let x_418 : vec2<f32> = vec2<f32>(x_417.x, x_417.y);
  let x_420 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_418.x, x_418.y, x_420);
  let x_432 : vec3<f32> = txVec0;
  let x_434 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_432.xy, x_432.z);
  u_xlat2.x = x_434;
  let x_438 : f32 = x_86.x_MainLightShadowParams.x;
  u_xlat9.x = (-(x_438) + 1.0f);
  let x_443 : f32 = u_xlat2.x;
  let x_445 : f32 = x_86.x_MainLightShadowParams.x;
  let x_448 : f32 = u_xlat9.x;
  u_xlat2.x = ((x_443 * x_445) + x_448);
  let x_453 : f32 = u_xlat2.z;
  u_xlatb9 = (0.0f >= x_453);
  let x_457 : f32 = u_xlat2.z;
  u_xlatb16 = (x_457 >= 1.0f);
  let x_459 : bool = u_xlatb16;
  let x_460 : bool = u_xlatb9;
  u_xlatb9 = (x_459 | x_460);
  let x_462 : bool = u_xlatb9;
  if (x_462) {
    x_463 = 1.0f;
  } else {
    let x_468 : f32 = u_xlat2.x;
    x_463 = x_468;
  }
  let x_469 : f32 = x_463;
  u_xlat2.x = x_469;
  let x_471 : vec3<f32> = vs_TEXCOORD1;
  let x_475 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat4 = (x_471 + -(x_475));
  let x_478 : vec3<f32> = u_xlat4;
  let x_479 : vec3<f32> = u_xlat4;
  u_xlat9.x = dot(x_478, x_479);
  let x_483 : f32 = u_xlat9.x;
  let x_485 : f32 = x_86.x_MainLightShadowParams.z;
  let x_488 : f32 = x_86.x_MainLightShadowParams.w;
  u_xlat9.x = ((x_483 * x_485) + x_488);
  let x_492 : f32 = u_xlat9.x;
  u_xlat9.x = clamp(x_492, 0.0f, 1.0f);
  let x_497 : f32 = u_xlat2.x;
  u_xlat16 = (-(x_497) + 1.0f);
  let x_501 : f32 = u_xlat9.x;
  let x_502 : f32 = u_xlat16;
  let x_505 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_501 * x_502) + x_505);
  let x_508 : f32 = u_xlat24;
  let x_511 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat4 = (vec3<f32>(x_508, x_508, x_508) * vec3<f32>(x_511.x, x_511.y, x_511.z));
  let x_514 : f32 = u_xlat23;
  let x_516 : vec4<f32> = u_xlat3;
  u_xlat9 = (vec3<f32>(x_514, x_514, x_514) * vec3<f32>(x_516.x, x_516.y, x_516.z));
  let x_520 : f32 = u_xlat2.x;
  let x_526 : f32 = x_524.unity_LightData.z;
  u_xlat2.x = (x_520 * x_526);
  let x_529 : vec4<f32> = u_xlat2;
  let x_531 : vec3<f32> = u_xlat4;
  let x_532 : vec3<f32> = (vec3<f32>(x_529.x, x_529.x, x_529.x) * x_531);
  let x_533 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_532.x, x_532.y, x_532.z, x_533.w);
  let x_535 : vec3<f32> = u_xlat1;
  let x_537 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat2.x = dot(x_535, vec3<f32>(x_537.x, x_537.y, x_537.z));
  let x_542 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_542, 0.0f, 1.0f);
  let x_545 : vec4<f32> = u_xlat2;
  let x_547 : vec4<f32> = u_xlat3;
  let x_549 : vec3<f32> = (vec3<f32>(x_545.x, x_545.x, x_545.x) * vec3<f32>(x_547.x, x_547.y, x_547.z));
  let x_550 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_549.x, x_549.y, x_549.z, x_550.w);
  let x_552 : vec4<f32> = u_xlat0;
  let x_554 : vec4<f32> = u_xlat3;
  let x_556 : vec3<f32> = (vec3<f32>(x_552.y, x_552.z, x_552.w) * vec3<f32>(x_554.x, x_554.y, x_554.z));
  let x_557 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_556.x, x_556.y, x_556.z, x_557.w);
  let x_560 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_562 : f32 = x_524.unity_LightData.y;
  u_xlat2.x = min(x_560, x_562);
  let x_567 : f32 = u_xlat2.x;
  u_xlatu2 = bitcast<u32>(i32(x_567));
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_579 : u32 = u_xlatu_loop_1;
    let x_580 : u32 = u_xlatu2;
    if ((x_579 < x_580)) {
    } else {
      break;
    }
    let x_583 : u32 = u_xlatu_loop_1;
    u_xlatu5 = (x_583 >> 2u);
    let x_586 : u32 = u_xlatu_loop_1;
    u_xlati12 = bitcast<i32>((x_586 & 3u));
    let x_589 : u32 = u_xlatu5;
    let x_592 : vec4<f32> = x_524.unity_LightIndices[bitcast<i32>(x_589)];
    let x_602 : i32 = u_xlati12;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_607 : vec4<u32> = indexable[x_602];
    u_xlat5.x = dot(x_592, bitcast<vec4<f32>>(x_607));
    let x_613 : f32 = u_xlat5.x;
    u_xlati5 = i32(x_613);
    let x_616 : vec3<f32> = vs_TEXCOORD1;
    let x_628 : i32 = u_xlati5;
    let x_630 : vec4<f32> = x_627.x_AdditionalLightsPosition[x_628];
    let x_633 : i32 = u_xlati5;
    let x_635 : vec4<f32> = x_627.x_AdditionalLightsPosition[x_633];
    u_xlat12 = ((-(x_616) * vec3<f32>(x_630.w, x_630.w, x_630.w)) + vec3<f32>(x_635.x, x_635.y, x_635.z));
    let x_639 : vec3<f32> = u_xlat12;
    let x_640 : vec3<f32> = u_xlat12;
    u_xlat6.x = dot(x_639, x_640);
    let x_644 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_644, 6.10351562e-05f);
    let x_650 : f32 = u_xlat6.x;
    u_xlat13.x = inverseSqrt(x_650);
    let x_653 : vec3<f32> = u_xlat12;
    let x_654 : vec3<f32> = u_xlat13;
    u_xlat12 = (x_653 * vec3<f32>(x_654.x, x_654.x, x_654.x));
    let x_658 : f32 = u_xlat6.x;
    u_xlat13.x = (1.0f / x_658);
    let x_662 : f32 = u_xlat6.x;
    let x_663 : i32 = u_xlati5;
    let x_665 : f32 = x_627.x_AdditionalLightsAttenuation[x_663].x;
    u_xlat6.x = (x_662 * x_665);
    let x_669 : f32 = u_xlat6.x;
    let x_672 : f32 = u_xlat6.x;
    u_xlat6.x = ((-(x_669) * x_672) + 1.0f);
    let x_677 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_677, 0.0f);
    let x_681 : f32 = u_xlat6.x;
    let x_683 : f32 = u_xlat6.x;
    u_xlat6.x = (x_681 * x_683);
    let x_687 : f32 = u_xlat6.x;
    let x_689 : f32 = u_xlat13.x;
    u_xlat6.x = (x_687 * x_689);
    let x_692 : i32 = u_xlati5;
    let x_694 : vec4<f32> = x_627.x_AdditionalLightsSpotDir[x_692];
    let x_696 : vec3<f32> = u_xlat12;
    u_xlat13.x = dot(vec3<f32>(x_694.x, x_694.y, x_694.z), x_696);
    let x_700 : f32 = u_xlat13.x;
    let x_701 : i32 = u_xlati5;
    let x_703 : f32 = x_627.x_AdditionalLightsAttenuation[x_701].z;
    let x_705 : i32 = u_xlati5;
    let x_707 : f32 = x_627.x_AdditionalLightsAttenuation[x_705].w;
    u_xlat13.x = ((x_700 * x_703) + x_707);
    let x_711 : f32 = u_xlat13.x;
    u_xlat13.x = clamp(x_711, 0.0f, 1.0f);
    let x_715 : f32 = u_xlat13.x;
    let x_717 : f32 = u_xlat13.x;
    u_xlat13.x = (x_715 * x_717);
    let x_721 : f32 = u_xlat13.x;
    let x_723 : f32 = u_xlat6.x;
    u_xlat6.x = (x_721 * x_723);
    let x_726 : f32 = u_xlat24;
    let x_728 : i32 = u_xlati5;
    let x_730 : vec4<f32> = x_627.x_AdditionalLightsColor[x_728];
    u_xlat13 = (vec3<f32>(x_726, x_726, x_726) * vec3<f32>(x_730.x, x_730.y, x_730.z));
    let x_733 : vec3<f32> = u_xlat6;
    let x_735 : vec3<f32> = u_xlat13;
    u_xlat6 = (vec3<f32>(x_733.x, x_733.x, x_733.x) * x_735);
    let x_737 : vec3<f32> = u_xlat1;
    let x_738 : vec3<f32> = u_xlat12;
    u_xlat5.x = dot(x_737, x_738);
    let x_742 : f32 = u_xlat5.x;
    u_xlat5.x = clamp(x_742, 0.0f, 1.0f);
    let x_745 : vec3<f32> = u_xlat5;
    let x_747 : vec3<f32> = u_xlat6;
    u_xlat5 = (vec3<f32>(x_745.x, x_745.x, x_745.x) * x_747);
    let x_749 : vec3<f32> = u_xlat5;
    let x_750 : vec4<f32> = u_xlat0;
    let x_753 : vec3<f32> = u_xlat4;
    u_xlat4 = ((x_749 * vec3<f32>(x_750.y, x_750.z, x_750.w)) + x_753);

    continuing {
      let x_755 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_755 + bitcast<u32>(1i));
    }
  }
  let x_758 : vec3<f32> = u_xlat9;
  let x_759 : vec4<f32> = u_xlat0;
  let x_762 : vec4<f32> = u_xlat3;
  u_xlat7 = ((x_758 * vec3<f32>(x_759.y, x_759.z, x_759.w)) + vec3<f32>(x_762.x, x_762.y, x_762.z));
  let x_765 : vec3<f32> = u_xlat4;
  let x_766 : vec3<f32> = u_xlat7;
  u_xlat7 = (x_765 + x_766);
  let x_768 : f32 = u_xlat22;
  let x_769 : f32 = u_xlat22;
  u_xlat1.x = (x_768 * -(x_769));
  let x_774 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_774);
  let x_777 : vec3<f32> = u_xlat7;
  let x_780 : vec4<f32> = x_44.unity_FogColor;
  u_xlat7 = (x_777 + -(vec3<f32>(x_780.x, x_780.y, x_780.z)));
  let x_786 : vec3<f32> = u_xlat1;
  let x_788 : vec3<f32> = u_xlat7;
  let x_791 : vec4<f32> = x_44.unity_FogColor;
  let x_793 : vec3<f32> = ((vec3<f32>(x_786.x, x_786.x, x_786.x) * x_788) + vec3<f32>(x_791.x, x_791.y, x_791.z));
  let x_794 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_793.x, x_793.y, x_793.z, x_794.w);
  let x_798 : f32 = x_56.x_Surface;
  u_xlatb7 = (x_798 == 1.0f);
  let x_800 : bool = u_xlatb7;
  if (x_800) {
    let x_805 : f32 = u_xlat0.x;
    x_801 = x_805;
  } else {
    x_801 = 1.0f;
  }
  let x_807 : f32 = x_801;
  SV_Target0.w = x_807;
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

