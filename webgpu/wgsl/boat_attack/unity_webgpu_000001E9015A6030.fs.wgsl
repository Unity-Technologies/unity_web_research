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
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
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

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(3) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MetallicTex : sampler;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_137 : MainLightShadows;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

@group(0) @binding(4) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_638 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_862 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : f32;
  var u_xlatb12 : bool;
  var u_xlat2 : vec3<f32>;
  var u_xlat23 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat12 : vec3<f32>;
  var x_111 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlatb3 : vec4<bool>;
  var u_xlat35 : f32;
  var u_xlatu35 : u32;
  var u_xlati35 : i32;
  var u_xlat36 : f32;
  var u_xlat37 : f32;
  var u_xlat16 : f32;
  var u_xlat33 : f32;
  var u_xlat27 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat14 : f32;
  var u_xlatb14 : bool;
  var u_xlatb25 : bool;
  var x_527 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlat25 : vec2<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlatu33 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu38 : u32;
  var u_xlati39 : i32;
  var u_xlat38 : f32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati38 : i32;
  var u_xlat39 : f32;
  var u_xlat40 : f32;
  var u_xlat41 : f32;
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
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_39.x, x_39.y), x_50);
  u_xlat0 = x_51;
  let x_59 : vec4<f32> = vs_TEXCOORD0;
  let x_62 : f32 = x_44.x_GlobalMipBias.x;
  let x_63 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_59.x, x_59.y), x_62);
  u_xlat1 = x_63.x;
  let x_70 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb12 = (x_70 == 0.0f);
  let x_77 : vec3<f32> = vs_TEXCOORD7;
  let x_82 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_77) + x_82);
  let x_85 : vec3<f32> = u_xlat2;
  let x_86 : vec3<f32> = u_xlat2;
  u_xlat23 = dot(x_85, x_86);
  let x_88 : f32 = u_xlat23;
  u_xlat23 = inverseSqrt(x_88);
  let x_90 : f32 = u_xlat23;
  let x_92 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_90, x_90, x_90) * x_92);
  let x_99 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat3.x = x_99;
  let x_102 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat3.y = x_102;
  let x_107 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat3.z = x_107;
  let x_110 : bool = u_xlatb12;
  if (x_110) {
    let x_114 : vec3<f32> = u_xlat2;
    x_111 = x_114;
  } else {
    let x_116 : vec4<f32> = u_xlat3;
    x_111 = vec3<f32>(x_116.x, x_116.y, x_116.z);
  }
  let x_118 : vec3<f32> = x_111;
  u_xlat12 = x_118;
  let x_120 : vec3<f32> = vs_TEXCOORD3;
  let x_121 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2.x = dot(x_120, x_121);
  let x_125 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_125);
  let x_128 : vec3<f32> = u_xlat2;
  let x_130 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2 = (vec3<f32>(x_128.x, x_128.x, x_128.x) * x_130);
  let x_132 : vec3<f32> = vs_TEXCOORD7;
  let x_140 : vec4<f32> = x_137.x_CascadeShadowSplitSpheres0;
  let x_143 : vec3<f32> = (x_132 + -(vec3<f32>(x_140.x, x_140.y, x_140.z)));
  let x_144 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_143.x, x_143.y, x_143.z, x_144.w);
  let x_147 : vec3<f32> = vs_TEXCOORD7;
  let x_149 : vec4<f32> = x_137.x_CascadeShadowSplitSpheres1;
  let x_152 : vec3<f32> = (x_147 + -(vec3<f32>(x_149.x, x_149.y, x_149.z)));
  let x_153 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_152.x, x_152.y, x_152.z, x_153.w);
  let x_156 : vec3<f32> = vs_TEXCOORD7;
  let x_159 : vec4<f32> = x_137.x_CascadeShadowSplitSpheres2;
  u_xlat5 = (x_156 + -(vec3<f32>(x_159.x, x_159.y, x_159.z)));
  let x_164 : vec3<f32> = vs_TEXCOORD7;
  let x_167 : vec4<f32> = x_137.x_CascadeShadowSplitSpheres3;
  u_xlat6 = (x_164 + -(vec3<f32>(x_167.x, x_167.y, x_167.z)));
  let x_171 : vec4<f32> = u_xlat3;
  let x_173 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_171.x, x_171.y, x_171.z), vec3<f32>(x_173.x, x_173.y, x_173.z));
  let x_177 : vec4<f32> = u_xlat4;
  let x_179 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_177.x, x_177.y, x_177.z), vec3<f32>(x_179.x, x_179.y, x_179.z));
  let x_183 : vec3<f32> = u_xlat5;
  let x_184 : vec3<f32> = u_xlat5;
  u_xlat3.z = dot(x_183, x_184);
  let x_187 : vec3<f32> = u_xlat6;
  let x_188 : vec3<f32> = u_xlat6;
  u_xlat3.w = dot(x_187, x_188);
  let x_194 : vec4<f32> = u_xlat3;
  let x_197 : vec4<f32> = x_137.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_194 < x_197);
  let x_200 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_200);
  let x_204 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_204);
  let x_208 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_208);
  let x_212 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_212);
  let x_216 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_216);
  let x_222 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_222);
  let x_226 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_226);
  let x_229 : vec4<f32> = u_xlat3;
  let x_231 : vec4<f32> = u_xlat4;
  let x_233 : vec3<f32> = (vec3<f32>(x_229.x, x_229.y, x_229.z) + vec3<f32>(x_231.y, x_231.z, x_231.w));
  let x_234 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_233.x, x_233.y, x_233.z, x_234.w);
  let x_236 : vec4<f32> = u_xlat3;
  let x_239 : vec3<f32> = max(vec3<f32>(x_236.x, x_236.y, x_236.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_240 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_240.x, x_239.x, x_239.y, x_239.z);
  let x_243 : vec4<f32> = u_xlat4;
  u_xlat35 = dot(x_243, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_249 : f32 = u_xlat35;
  u_xlat35 = (-(x_249) + 4.0f);
  let x_254 : f32 = u_xlat35;
  u_xlatu35 = u32(x_254);
  let x_258 : u32 = u_xlatu35;
  u_xlati35 = (bitcast<i32>(x_258) << bitcast<u32>(2i));
  let x_261 : vec3<f32> = vs_TEXCOORD7;
  let x_263 : i32 = u_xlati35;
  let x_266 : i32 = u_xlati35;
  let x_270 : vec4<f32> = x_137.x_MainLightWorldToShadow[((x_263 + 1i) / 4i)][((x_266 + 1i) % 4i)];
  let x_272 : vec3<f32> = (vec3<f32>(x_261.y, x_261.y, x_261.y) * vec3<f32>(x_270.x, x_270.y, x_270.z));
  let x_273 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_272.x, x_272.y, x_272.z, x_273.w);
  let x_275 : i32 = u_xlati35;
  let x_277 : i32 = u_xlati35;
  let x_280 : vec4<f32> = x_137.x_MainLightWorldToShadow[(x_275 / 4i)][(x_277 % 4i)];
  let x_282 : vec3<f32> = vs_TEXCOORD7;
  let x_285 : vec4<f32> = u_xlat3;
  let x_287 : vec3<f32> = ((vec3<f32>(x_280.x, x_280.y, x_280.z) * vec3<f32>(x_282.x, x_282.x, x_282.x)) + vec3<f32>(x_285.x, x_285.y, x_285.z));
  let x_288 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_287.x, x_287.y, x_287.z, x_288.w);
  let x_290 : i32 = u_xlati35;
  let x_293 : i32 = u_xlati35;
  let x_297 : vec4<f32> = x_137.x_MainLightWorldToShadow[((x_290 + 2i) / 4i)][((x_293 + 2i) % 4i)];
  let x_299 : vec3<f32> = vs_TEXCOORD7;
  let x_302 : vec4<f32> = u_xlat3;
  let x_304 : vec3<f32> = ((vec3<f32>(x_297.x, x_297.y, x_297.z) * vec3<f32>(x_299.z, x_299.z, x_299.z)) + vec3<f32>(x_302.x, x_302.y, x_302.z));
  let x_305 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_304.x, x_304.y, x_304.z, x_305.w);
  let x_307 : vec4<f32> = u_xlat3;
  let x_309 : i32 = u_xlati35;
  let x_312 : i32 = u_xlati35;
  let x_316 : vec4<f32> = x_137.x_MainLightWorldToShadow[((x_309 + 3i) / 4i)][((x_312 + 3i) % 4i)];
  let x_318 : vec3<f32> = (vec3<f32>(x_307.x, x_307.y, x_307.z) + vec3<f32>(x_316.x, x_316.y, x_316.z));
  let x_319 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
  let x_322 : f32 = vs_TEXCOORD7.y;
  let x_324 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat35 = (x_322 * x_324);
  let x_327 : f32 = x_44.unity_MatrixV[0i].z;
  let x_329 : f32 = vs_TEXCOORD7.x;
  let x_331 : f32 = u_xlat35;
  u_xlat35 = ((x_327 * x_329) + x_331);
  let x_334 : f32 = x_44.unity_MatrixV[2i].z;
  let x_336 : f32 = vs_TEXCOORD7.z;
  let x_338 : f32 = u_xlat35;
  u_xlat35 = ((x_334 * x_336) + x_338);
  let x_340 : f32 = u_xlat35;
  let x_342 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat35 = (x_340 + x_342);
  let x_344 : f32 = u_xlat35;
  let x_348 : f32 = x_44.x_ProjectionParams.y;
  u_xlat35 = (-(x_344) + -(x_348));
  let x_351 : f32 = u_xlat35;
  u_xlat35 = max(x_351, 0.0f);
  let x_353 : f32 = u_xlat35;
  let x_356 : f32 = x_44.unity_FogParams.x;
  u_xlat35 = (x_353 * x_356);
  let x_363 : vec4<f32> = vs_TEXCOORD0;
  let x_366 : f32 = x_44.x_GlobalMipBias.x;
  let x_367 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_363.z, x_363.w), x_366);
  let x_368 : vec3<f32> = vec3<f32>(x_367.x, x_367.y, x_367.z);
  let x_369 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_368.x, x_368.y, x_368.z, x_369.w);
  let x_373 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_374 : vec2<f32> = vec2<f32>(x_373.x, x_373.y);
  let x_378 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_374.x, x_374.y));
  let x_379 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_378.x, x_378.y, x_379.z);
  let x_381 : vec3<f32> = u_xlat5;
  let x_383 : vec4<f32> = hlslcc_FragCoord;
  let x_385 : vec2<f32> = (vec2<f32>(x_381.x, x_381.y) * vec2<f32>(x_383.x, x_383.y));
  let x_386 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_385.x, x_385.y, x_386.z);
  let x_390 : f32 = u_xlat5.y;
  let x_393 : f32 = x_44.x_ScaleBiasRt.x;
  let x_396 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat36 = ((x_390 * x_393) + x_396);
  let x_398 : f32 = u_xlat36;
  u_xlat5.z = (-(x_398) + 1.0f);
  let x_402 : f32 = u_xlat1;
  u_xlat36 = ((-(x_402) * 0.959999979f) + 0.959999979f);
  let x_408 : f32 = u_xlat36;
  u_xlat37 = (-(x_408) + 1.0f);
  let x_411 : vec4<f32> = u_xlat0;
  let x_413 : f32 = u_xlat36;
  u_xlat6 = (vec3<f32>(x_411.x, x_411.y, x_411.z) * vec3<f32>(x_413, x_413, x_413));
  let x_416 : vec4<f32> = u_xlat0;
  let x_420 : vec3<f32> = (vec3<f32>(x_416.x, x_416.y, x_416.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_421 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_420.x, x_420.y, x_420.z, x_421.w);
  let x_423 : f32 = u_xlat1;
  let x_425 : vec4<f32> = u_xlat0;
  let x_430 : vec3<f32> = ((vec3<f32>(x_423, x_423, x_423) * vec3<f32>(x_425.x, x_425.y, x_425.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_431 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_430.x, x_430.y, x_430.z, x_431.w);
  let x_434 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_434) + 1.0f);
  let x_437 : f32 = u_xlat1;
  let x_438 : f32 = u_xlat1;
  u_xlat36 = (x_437 * x_438);
  let x_440 : f32 = u_xlat36;
  u_xlat36 = max(x_440, 0.0078125f);
  let x_444 : f32 = u_xlat36;
  let x_445 : f32 = u_xlat36;
  u_xlat16 = (x_444 * x_445);
  let x_449 : f32 = u_xlat0.w;
  let x_450 : f32 = u_xlat37;
  u_xlat33 = (x_449 + x_450);
  let x_452 : f32 = u_xlat33;
  u_xlat33 = clamp(x_452, 0.0f, 1.0f);
  let x_454 : f32 = u_xlat36;
  u_xlat37 = ((x_454 * 4.0f) + 2.0f);
  let x_462 : vec3<f32> = u_xlat5;
  let x_465 : f32 = x_44.x_GlobalMipBias.x;
  let x_466 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_462.x, x_462.z), x_465);
  u_xlat5.x = x_466.x;
  let x_471 : f32 = u_xlat5.x;
  u_xlat27 = (x_471 + -1.0f);
  let x_474 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_475 : f32 = u_xlat27;
  u_xlat27 = ((x_474 * x_475) + 1.0f);
  let x_479 : f32 = u_xlat5.x;
  u_xlat5.x = min(x_479, 1.0f);
  let x_483 : vec4<f32> = u_xlat3;
  let x_484 : vec2<f32> = vec2<f32>(x_483.x, x_483.y);
  let x_486 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_484.x, x_484.y, x_486);
  let x_498 : vec3<f32> = txVec0;
  let x_500 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_498.xy, x_498.z);
  u_xlat3.x = x_500;
  let x_504 : f32 = x_137.x_MainLightShadowParams.x;
  u_xlat14 = (-(x_504) + 1.0f);
  let x_508 : f32 = u_xlat3.x;
  let x_510 : f32 = x_137.x_MainLightShadowParams.x;
  let x_512 : f32 = u_xlat14;
  u_xlat3.x = ((x_508 * x_510) + x_512);
  let x_517 : f32 = u_xlat3.z;
  u_xlatb14 = (0.0f >= x_517);
  let x_521 : f32 = u_xlat3.z;
  u_xlatb25 = (x_521 >= 1.0f);
  let x_523 : bool = u_xlatb25;
  let x_524 : bool = u_xlatb14;
  u_xlatb14 = (x_523 | x_524);
  let x_526 : bool = u_xlatb14;
  if (x_526) {
    x_527 = 1.0f;
  } else {
    let x_532 : f32 = u_xlat3.x;
    x_527 = x_532;
  }
  let x_533 : f32 = x_527;
  u_xlat3.x = x_533;
  let x_536 : vec3<f32> = vs_TEXCOORD7;
  let x_538 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat7 = (x_536 + -(x_538));
  let x_541 : vec3<f32> = u_xlat7;
  let x_542 : vec3<f32> = u_xlat7;
  u_xlat14 = dot(x_541, x_542);
  let x_544 : f32 = u_xlat14;
  let x_546 : f32 = x_137.x_MainLightShadowParams.z;
  let x_549 : f32 = x_137.x_MainLightShadowParams.w;
  u_xlat14 = ((x_544 * x_546) + x_549);
  let x_551 : f32 = u_xlat14;
  u_xlat14 = clamp(x_551, 0.0f, 1.0f);
  let x_556 : f32 = u_xlat3.x;
  u_xlat25.x = (-(x_556) + 1.0f);
  let x_560 : f32 = u_xlat14;
  let x_562 : f32 = u_xlat25.x;
  let x_565 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_560 * x_562) + x_565);
  let x_568 : f32 = u_xlat27;
  let x_571 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat7 = (vec3<f32>(x_568, x_568, x_568) * vec3<f32>(x_571.x, x_571.y, x_571.z));
  let x_574 : vec3<f32> = u_xlat12;
  let x_576 : vec3<f32> = u_xlat2;
  u_xlat14 = dot(-(x_574), x_576);
  let x_578 : f32 = u_xlat14;
  let x_579 : f32 = u_xlat14;
  u_xlat14 = (x_578 + x_579);
  let x_582 : vec3<f32> = u_xlat2;
  let x_583 : f32 = u_xlat14;
  let x_587 : vec3<f32> = u_xlat12;
  let x_589 : vec3<f32> = ((x_582 * -(vec3<f32>(x_583, x_583, x_583))) + -(x_587));
  let x_590 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_589.x, x_589.y, x_589.z, x_590.w);
  let x_592 : vec3<f32> = u_xlat2;
  let x_593 : vec3<f32> = u_xlat12;
  u_xlat14 = dot(x_592, x_593);
  let x_595 : f32 = u_xlat14;
  u_xlat14 = clamp(x_595, 0.0f, 1.0f);
  let x_597 : f32 = u_xlat14;
  u_xlat14 = (-(x_597) + 1.0f);
  let x_600 : f32 = u_xlat14;
  let x_601 : f32 = u_xlat14;
  u_xlat14 = (x_600 * x_601);
  let x_603 : f32 = u_xlat14;
  let x_604 : f32 = u_xlat14;
  u_xlat14 = (x_603 * x_604);
  let x_606 : f32 = u_xlat1;
  u_xlat25.x = ((-(x_606) * 0.699999988f) + 1.700000048f);
  let x_613 : f32 = u_xlat1;
  let x_615 : f32 = u_xlat25.x;
  u_xlat1 = (x_613 * x_615);
  let x_617 : f32 = u_xlat1;
  u_xlat1 = (x_617 * 6.0f);
  let x_628 : vec4<f32> = u_xlat8;
  let x_630 : f32 = u_xlat1;
  let x_631 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_628.x, x_628.y, x_628.z), x_630);
  u_xlat8 = x_631;
  let x_633 : f32 = u_xlat8.w;
  u_xlat1 = (x_633 + -1.0f);
  let x_640 : f32 = x_638.unity_SpecCube0_HDR.w;
  let x_641 : f32 = u_xlat1;
  u_xlat1 = ((x_640 * x_641) + 1.0f);
  let x_644 : f32 = u_xlat1;
  u_xlat1 = max(x_644, 0.0f);
  let x_646 : f32 = u_xlat1;
  u_xlat1 = log2(x_646);
  let x_648 : f32 = u_xlat1;
  let x_650 : f32 = x_638.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_648 * x_650);
  let x_652 : f32 = u_xlat1;
  u_xlat1 = exp2(x_652);
  let x_654 : f32 = u_xlat1;
  let x_656 : f32 = x_638.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_654 * x_656);
  let x_658 : vec4<f32> = u_xlat8;
  let x_660 : f32 = u_xlat1;
  let x_662 : vec3<f32> = (vec3<f32>(x_658.x, x_658.y, x_658.z) * vec3<f32>(x_660, x_660, x_660));
  let x_663 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_662.x, x_662.y, x_662.z, x_663.w);
  let x_665 : f32 = u_xlat36;
  let x_667 : f32 = u_xlat36;
  u_xlat25 = ((vec2<f32>(x_665, x_665) * vec2<f32>(x_667, x_667)) + vec2<f32>(-1.0f, 1.0f));
  let x_673 : f32 = u_xlat25.y;
  u_xlat1 = (1.0f / x_673);
  let x_676 : vec4<f32> = u_xlat0;
  let x_679 : f32 = u_xlat33;
  u_xlat9 = (-(vec3<f32>(x_676.x, x_676.y, x_676.z)) + vec3<f32>(x_679, x_679, x_679));
  let x_682 : f32 = u_xlat14;
  let x_684 : vec3<f32> = u_xlat9;
  let x_686 : vec4<f32> = u_xlat0;
  u_xlat9 = ((vec3<f32>(x_682, x_682, x_682) * x_684) + vec3<f32>(x_686.x, x_686.y, x_686.z));
  let x_689 : f32 = u_xlat1;
  let x_691 : vec3<f32> = u_xlat9;
  u_xlat9 = (vec3<f32>(x_689, x_689, x_689) * x_691);
  let x_693 : vec4<f32> = u_xlat8;
  let x_695 : vec3<f32> = u_xlat9;
  let x_696 : vec3<f32> = (vec3<f32>(x_693.x, x_693.y, x_693.z) * x_695);
  let x_697 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_696.x, x_696.y, x_696.z, x_697.w);
  let x_699 : vec4<f32> = u_xlat4;
  let x_701 : vec3<f32> = u_xlat6;
  let x_703 : vec4<f32> = u_xlat8;
  let x_705 : vec3<f32> = ((vec3<f32>(x_699.x, x_699.y, x_699.z) * x_701) + vec3<f32>(x_703.x, x_703.y, x_703.z));
  let x_706 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_705.x, x_705.y, x_705.z, x_706.w);
  let x_709 : f32 = u_xlat3.x;
  let x_711 : f32 = x_638.unity_LightData.z;
  u_xlat33 = (x_709 * x_711);
  let x_713 : vec3<f32> = u_xlat2;
  let x_715 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat1 = dot(x_713, vec3<f32>(x_715.x, x_715.y, x_715.z));
  let x_718 : f32 = u_xlat1;
  u_xlat1 = clamp(x_718, 0.0f, 1.0f);
  let x_720 : f32 = u_xlat33;
  let x_721 : f32 = u_xlat1;
  u_xlat33 = (x_720 * x_721);
  let x_723 : f32 = u_xlat33;
  let x_725 : vec3<f32> = u_xlat7;
  let x_726 : vec3<f32> = (vec3<f32>(x_723, x_723, x_723) * x_725);
  let x_727 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_726.x, x_726.y, x_727.z, x_726.z);
  let x_729 : vec3<f32> = u_xlat12;
  let x_731 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat7 = (x_729 + vec3<f32>(x_731.x, x_731.y, x_731.z));
  let x_734 : vec3<f32> = u_xlat7;
  let x_735 : vec3<f32> = u_xlat7;
  u_xlat33 = dot(x_734, x_735);
  let x_737 : f32 = u_xlat33;
  u_xlat33 = max(x_737, 1.17549435e-37f);
  let x_740 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_740);
  let x_742 : f32 = u_xlat33;
  let x_744 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_742, x_742, x_742) * x_744);
  let x_746 : vec3<f32> = u_xlat2;
  let x_747 : vec3<f32> = u_xlat7;
  u_xlat33 = dot(x_746, x_747);
  let x_749 : f32 = u_xlat33;
  u_xlat33 = clamp(x_749, 0.0f, 1.0f);
  let x_752 : vec4<f32> = x_44.x_MainLightPosition;
  let x_754 : vec3<f32> = u_xlat7;
  u_xlat1 = dot(vec3<f32>(x_752.x, x_752.y, x_752.z), x_754);
  let x_756 : f32 = u_xlat1;
  u_xlat1 = clamp(x_756, 0.0f, 1.0f);
  let x_758 : f32 = u_xlat33;
  let x_759 : f32 = u_xlat33;
  u_xlat33 = (x_758 * x_759);
  let x_761 : f32 = u_xlat33;
  let x_763 : f32 = u_xlat25.x;
  u_xlat33 = ((x_761 * x_763) + 1.000010014f);
  let x_767 : f32 = u_xlat1;
  let x_768 : f32 = u_xlat1;
  u_xlat1 = (x_767 * x_768);
  let x_770 : f32 = u_xlat33;
  let x_771 : f32 = u_xlat33;
  u_xlat33 = (x_770 * x_771);
  let x_773 : f32 = u_xlat1;
  u_xlat1 = max(x_773, 0.100000001f);
  let x_776 : f32 = u_xlat33;
  let x_777 : f32 = u_xlat1;
  u_xlat33 = (x_776 * x_777);
  let x_779 : f32 = u_xlat37;
  let x_780 : f32 = u_xlat33;
  u_xlat33 = (x_779 * x_780);
  let x_782 : f32 = u_xlat16;
  let x_783 : f32 = u_xlat33;
  u_xlat33 = (x_782 / x_783);
  let x_785 : vec4<f32> = u_xlat0;
  let x_787 : f32 = u_xlat33;
  let x_790 : vec3<f32> = u_xlat6;
  u_xlat7 = ((vec3<f32>(x_785.x, x_785.y, x_785.z) * vec3<f32>(x_787, x_787, x_787)) + x_790);
  let x_792 : vec4<f32> = u_xlat3;
  let x_794 : vec3<f32> = u_xlat7;
  let x_795 : vec3<f32> = (vec3<f32>(x_792.x, x_792.y, x_792.w) * x_794);
  let x_796 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_795.x, x_795.y, x_796.z, x_795.z);
  let x_799 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_801 : f32 = x_638.unity_LightData.y;
  u_xlat33 = min(x_799, x_801);
  let x_804 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_804));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_816 : u32 = u_xlatu_loop_1;
    let x_817 : u32 = u_xlatu33;
    if ((x_816 < x_817)) {
    } else {
      break;
    }
    let x_820 : u32 = u_xlatu_loop_1;
    u_xlatu38 = (x_820 >> 2u);
    let x_823 : u32 = u_xlatu_loop_1;
    u_xlati39 = bitcast<i32>((x_823 & 3u));
    let x_827 : u32 = u_xlatu38;
    let x_830 : vec4<f32> = x_638.unity_LightIndices[bitcast<i32>(x_827)];
    let x_840 : i32 = u_xlati39;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_845 : vec4<u32> = indexable[x_840];
    u_xlat38 = dot(x_830, bitcast<vec4<f32>>(x_845));
    let x_849 : f32 = u_xlat38;
    u_xlati38 = i32(x_849);
    let x_851 : vec3<f32> = vs_TEXCOORD7;
    let x_863 : i32 = u_xlati38;
    let x_865 : vec4<f32> = x_862.x_AdditionalLightsPosition[x_863];
    let x_868 : i32 = u_xlati38;
    let x_870 : vec4<f32> = x_862.x_AdditionalLightsPosition[x_868];
    let x_872 : vec3<f32> = ((-(x_851) * vec3<f32>(x_865.w, x_865.w, x_865.w)) + vec3<f32>(x_870.x, x_870.y, x_870.z));
    let x_873 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_872.x, x_872.y, x_872.z, x_873.w);
    let x_876 : vec4<f32> = u_xlat8;
    let x_878 : vec4<f32> = u_xlat8;
    u_xlat39 = dot(vec3<f32>(x_876.x, x_876.y, x_876.z), vec3<f32>(x_878.x, x_878.y, x_878.z));
    let x_881 : f32 = u_xlat39;
    u_xlat39 = max(x_881, 6.10351562e-05f);
    let x_885 : f32 = u_xlat39;
    u_xlat40 = inverseSqrt(x_885);
    let x_887 : f32 = u_xlat40;
    let x_889 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_887, x_887, x_887) * vec3<f32>(x_889.x, x_889.y, x_889.z));
    let x_893 : f32 = u_xlat39;
    u_xlat41 = (1.0f / x_893);
    let x_895 : f32 = u_xlat39;
    let x_896 : i32 = u_xlati38;
    let x_898 : f32 = x_862.x_AdditionalLightsAttenuation[x_896].x;
    u_xlat39 = (x_895 * x_898);
    let x_900 : f32 = u_xlat39;
    let x_902 : f32 = u_xlat39;
    u_xlat39 = ((-(x_900) * x_902) + 1.0f);
    let x_905 : f32 = u_xlat39;
    u_xlat39 = max(x_905, 0.0f);
    let x_907 : f32 = u_xlat39;
    let x_908 : f32 = u_xlat39;
    u_xlat39 = (x_907 * x_908);
    let x_910 : f32 = u_xlat39;
    let x_911 : f32 = u_xlat41;
    u_xlat39 = (x_910 * x_911);
    let x_913 : i32 = u_xlati38;
    let x_915 : vec4<f32> = x_862.x_AdditionalLightsSpotDir[x_913];
    let x_917 : vec3<f32> = u_xlat9;
    u_xlat41 = dot(vec3<f32>(x_915.x, x_915.y, x_915.z), x_917);
    let x_919 : f32 = u_xlat41;
    let x_920 : i32 = u_xlati38;
    let x_922 : f32 = x_862.x_AdditionalLightsAttenuation[x_920].z;
    let x_924 : i32 = u_xlati38;
    let x_926 : f32 = x_862.x_AdditionalLightsAttenuation[x_924].w;
    u_xlat41 = ((x_919 * x_922) + x_926);
    let x_928 : f32 = u_xlat41;
    u_xlat41 = clamp(x_928, 0.0f, 1.0f);
    let x_930 : f32 = u_xlat41;
    let x_931 : f32 = u_xlat41;
    u_xlat41 = (x_930 * x_931);
    let x_933 : f32 = u_xlat39;
    let x_934 : f32 = u_xlat41;
    u_xlat39 = (x_933 * x_934);
    let x_937 : f32 = u_xlat27;
    let x_939 : i32 = u_xlati38;
    let x_941 : vec4<f32> = x_862.x_AdditionalLightsColor[x_939];
    u_xlat10 = (vec3<f32>(x_937, x_937, x_937) * vec3<f32>(x_941.x, x_941.y, x_941.z));
    let x_944 : vec3<f32> = u_xlat2;
    let x_945 : vec3<f32> = u_xlat9;
    u_xlat38 = dot(x_944, x_945);
    let x_947 : f32 = u_xlat38;
    u_xlat38 = clamp(x_947, 0.0f, 1.0f);
    let x_949 : f32 = u_xlat38;
    let x_950 : f32 = u_xlat39;
    u_xlat38 = (x_949 * x_950);
    let x_952 : f32 = u_xlat38;
    let x_954 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_952, x_952, x_952) * x_954);
    let x_956 : vec4<f32> = u_xlat8;
    let x_958 : f32 = u_xlat40;
    let x_961 : vec3<f32> = u_xlat12;
    let x_962 : vec3<f32> = ((vec3<f32>(x_956.x, x_956.y, x_956.z) * vec3<f32>(x_958, x_958, x_958)) + x_961);
    let x_963 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_962.x, x_962.y, x_962.z, x_963.w);
    let x_965 : vec4<f32> = u_xlat8;
    let x_967 : vec4<f32> = u_xlat8;
    u_xlat38 = dot(vec3<f32>(x_965.x, x_965.y, x_965.z), vec3<f32>(x_967.x, x_967.y, x_967.z));
    let x_970 : f32 = u_xlat38;
    u_xlat38 = max(x_970, 1.17549435e-37f);
    let x_972 : f32 = u_xlat38;
    u_xlat38 = inverseSqrt(x_972);
    let x_974 : f32 = u_xlat38;
    let x_976 : vec4<f32> = u_xlat8;
    let x_978 : vec3<f32> = (vec3<f32>(x_974, x_974, x_974) * vec3<f32>(x_976.x, x_976.y, x_976.z));
    let x_979 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_978.x, x_978.y, x_978.z, x_979.w);
    let x_981 : vec3<f32> = u_xlat2;
    let x_982 : vec4<f32> = u_xlat8;
    u_xlat38 = dot(x_981, vec3<f32>(x_982.x, x_982.y, x_982.z));
    let x_985 : f32 = u_xlat38;
    u_xlat38 = clamp(x_985, 0.0f, 1.0f);
    let x_987 : vec3<f32> = u_xlat9;
    let x_988 : vec4<f32> = u_xlat8;
    u_xlat39 = dot(x_987, vec3<f32>(x_988.x, x_988.y, x_988.z));
    let x_991 : f32 = u_xlat39;
    u_xlat39 = clamp(x_991, 0.0f, 1.0f);
    let x_993 : f32 = u_xlat38;
    let x_994 : f32 = u_xlat38;
    u_xlat38 = (x_993 * x_994);
    let x_996 : f32 = u_xlat38;
    let x_998 : f32 = u_xlat25.x;
    u_xlat38 = ((x_996 * x_998) + 1.000010014f);
    let x_1001 : f32 = u_xlat39;
    let x_1002 : f32 = u_xlat39;
    u_xlat39 = (x_1001 * x_1002);
    let x_1004 : f32 = u_xlat38;
    let x_1005 : f32 = u_xlat38;
    u_xlat38 = (x_1004 * x_1005);
    let x_1007 : f32 = u_xlat39;
    u_xlat39 = max(x_1007, 0.100000001f);
    let x_1009 : f32 = u_xlat38;
    let x_1010 : f32 = u_xlat39;
    u_xlat38 = (x_1009 * x_1010);
    let x_1012 : f32 = u_xlat37;
    let x_1013 : f32 = u_xlat38;
    u_xlat38 = (x_1012 * x_1013);
    let x_1015 : f32 = u_xlat16;
    let x_1016 : f32 = u_xlat38;
    u_xlat38 = (x_1015 / x_1016);
    let x_1018 : vec4<f32> = u_xlat0;
    let x_1020 : f32 = u_xlat38;
    let x_1023 : vec3<f32> = u_xlat6;
    let x_1024 : vec3<f32> = ((vec3<f32>(x_1018.x, x_1018.y, x_1018.z) * vec3<f32>(x_1020, x_1020, x_1020)) + x_1023);
    let x_1025 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1024.x, x_1024.y, x_1024.z, x_1025.w);
    let x_1027 : vec4<f32> = u_xlat8;
    let x_1029 : vec3<f32> = u_xlat10;
    let x_1031 : vec3<f32> = u_xlat7;
    u_xlat7 = ((vec3<f32>(x_1027.x, x_1027.y, x_1027.z) * x_1029) + x_1031);

    continuing {
      let x_1033 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1033 + bitcast<u32>(1i));
    }
  }
  let x_1035 : vec4<f32> = u_xlat4;
  let x_1037 : vec3<f32> = u_xlat5;
  let x_1040 : vec4<f32> = u_xlat3;
  let x_1042 : vec3<f32> = ((vec3<f32>(x_1035.x, x_1035.y, x_1035.z) * vec3<f32>(x_1037.x, x_1037.x, x_1037.x)) + vec3<f32>(x_1040.x, x_1040.y, x_1040.w));
  let x_1043 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1042.x, x_1042.y, x_1042.z, x_1043.w);
  let x_1045 : vec3<f32> = u_xlat7;
  let x_1046 : vec4<f32> = u_xlat0;
  let x_1048 : vec3<f32> = (x_1045 + vec3<f32>(x_1046.x, x_1046.y, x_1046.z));
  let x_1049 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1048.x, x_1048.y, x_1048.z, x_1049.w);
  let x_1051 : f32 = u_xlat35;
  let x_1052 : f32 = u_xlat35;
  u_xlat33 = (x_1051 * -(x_1052));
  let x_1055 : f32 = u_xlat33;
  u_xlat33 = exp2(x_1055);
  let x_1057 : vec4<f32> = u_xlat0;
  let x_1061 : vec4<f32> = x_44.unity_FogColor;
  let x_1064 : vec3<f32> = (vec3<f32>(x_1057.x, x_1057.y, x_1057.z) + -(vec3<f32>(x_1061.x, x_1061.y, x_1061.z)));
  let x_1065 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1064.x, x_1064.y, x_1064.z, x_1065.w);
  let x_1069 : f32 = u_xlat33;
  let x_1071 : vec4<f32> = u_xlat0;
  let x_1075 : vec4<f32> = x_44.unity_FogColor;
  let x_1077 : vec3<f32> = ((vec3<f32>(x_1069, x_1069, x_1069) * vec3<f32>(x_1071.x, x_1071.y, x_1071.z)) + vec3<f32>(x_1075.x, x_1075.y, x_1075.z));
  let x_1078 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1077.x, x_1077.y, x_1077.z, x_1078.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(2) vs_TEXCOORD7_param : vec3<f32>, @location(1) vs_TEXCOORD3_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  main_1();
  return main_out(SV_Target0);
}

