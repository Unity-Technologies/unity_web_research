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

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

@group(0) @binding(4) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(3) var<uniform> x_287 : MainLightShadows;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_443 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_675 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : f32;
  var u_xlat12 : vec3<f32>;
  var u_xlat2 : f32;
  var u_xlat13 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat14 : f32;
  var u_xlat36 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlat37 : f32;
  var u_xlat33 : f32;
  var u_xlat25 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat16 : vec3<f32>;
  var u_xlatb16 : bool;
  var u_xlatb27 : bool;
  var x_316 : f32;
  var u_xlat27 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat39 : f32;
  var u_xlat7 : vec4<f32>;
  var u_xlat40 : f32;
  var u_xlat8 : vec2<f32>;
  var u_xlat19 : vec3<f32>;
  var u_xlatu33 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu14 : u32;
  var u_xlati38 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati14 : i32;
  var u_xlat38 : f32;
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
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_39.x, x_39.y), x_50);
  u_xlat0 = x_51;
  let x_59 : vec4<f32> = vs_TEXCOORD0;
  let x_62 : f32 = x_44.x_GlobalMipBias.x;
  let x_63 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_59.x, x_59.y), x_62);
  u_xlat1 = x_63.x;
  let x_68 : vec4<f32> = vs_TEXCOORD3;
  let x_70 : vec4<f32> = vs_TEXCOORD3;
  u_xlat12.x = dot(vec3<f32>(x_68.x, x_68.y, x_68.z), vec3<f32>(x_70.x, x_70.y, x_70.z));
  let x_75 : f32 = u_xlat12.x;
  u_xlat12.x = inverseSqrt(x_75);
  let x_78 : vec3<f32> = u_xlat12;
  let x_80 : vec4<f32> = vs_TEXCOORD3;
  u_xlat12 = (vec3<f32>(x_78.x, x_78.x, x_78.x) * vec3<f32>(x_80.x, x_80.y, x_80.z));
  let x_88 : f32 = vs_TEXCOORD7.y;
  let x_92 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat2 = (x_88 * x_92);
  let x_96 : f32 = x_44.unity_MatrixV[0i].z;
  let x_98 : f32 = vs_TEXCOORD7.x;
  let x_100 : f32 = u_xlat2;
  u_xlat2 = ((x_96 * x_98) + x_100);
  let x_104 : f32 = x_44.unity_MatrixV[2i].z;
  let x_106 : f32 = vs_TEXCOORD7.z;
  let x_108 : f32 = u_xlat2;
  u_xlat2 = ((x_104 * x_106) + x_108);
  let x_110 : f32 = u_xlat2;
  let x_113 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat2 = (x_110 + x_113);
  let x_115 : f32 = u_xlat2;
  let x_119 : f32 = x_44.x_ProjectionParams.y;
  u_xlat2 = (-(x_115) + -(x_119));
  let x_122 : f32 = u_xlat2;
  u_xlat2 = max(x_122, 0.0f);
  let x_125 : f32 = u_xlat2;
  let x_128 : f32 = x_44.unity_FogParams.x;
  u_xlat2 = (x_125 * x_128);
  let x_136 : vec4<f32> = vs_TEXCOORD0;
  let x_139 : f32 = x_44.x_GlobalMipBias.x;
  let x_140 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_136.z, x_136.w), x_139);
  u_xlat13 = vec3<f32>(x_140.x, x_140.y, x_140.z);
  let x_146 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_147 : vec2<f32> = vec2<f32>(x_146.x, x_146.y);
  let x_151 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_147.x, x_147.y));
  let x_152 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_151.x, x_151.y, x_152.z);
  let x_154 : vec3<f32> = u_xlat3;
  let x_156 : vec4<f32> = hlslcc_FragCoord;
  let x_158 : vec2<f32> = (vec2<f32>(x_154.x, x_154.y) * vec2<f32>(x_156.x, x_156.y));
  let x_159 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_158.x, x_158.y, x_159.z);
  let x_163 : f32 = u_xlat3.y;
  let x_166 : f32 = x_44.x_ScaleBiasRt.x;
  let x_169 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat14 = ((x_163 * x_166) + x_169);
  let x_171 : f32 = u_xlat14;
  u_xlat3.z = (-(x_171) + 1.0f);
  let x_175 : f32 = u_xlat1;
  u_xlat14 = ((-(x_175) * 0.959999979f) + 0.959999979f);
  let x_181 : f32 = u_xlat14;
  u_xlat36 = (-(x_181) + 1.0f);
  let x_185 : vec4<f32> = u_xlat0;
  let x_187 : f32 = u_xlat14;
  u_xlat4 = (vec3<f32>(x_185.x, x_185.y, x_185.z) * vec3<f32>(x_187, x_187, x_187));
  let x_190 : vec4<f32> = u_xlat0;
  let x_194 : vec3<f32> = (vec3<f32>(x_190.x, x_190.y, x_190.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_195 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_194.x, x_194.y, x_194.z, x_195.w);
  let x_197 : f32 = u_xlat1;
  let x_199 : vec4<f32> = u_xlat0;
  let x_204 : vec3<f32> = ((vec3<f32>(x_197, x_197, x_197) * vec3<f32>(x_199.x, x_199.y, x_199.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_205 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_204.x, x_204.y, x_204.z, x_205.w);
  let x_208 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_208) + 1.0f);
  let x_211 : f32 = u_xlat1;
  let x_212 : f32 = u_xlat1;
  u_xlat14 = (x_211 * x_212);
  let x_214 : f32 = u_xlat14;
  u_xlat14 = max(x_214, 0.0078125f);
  let x_218 : f32 = u_xlat14;
  let x_219 : f32 = u_xlat14;
  u_xlat37 = (x_218 * x_219);
  let x_223 : f32 = u_xlat0.w;
  let x_224 : f32 = u_xlat36;
  u_xlat33 = (x_223 + x_224);
  let x_226 : f32 = u_xlat33;
  u_xlat33 = clamp(x_226, 0.0f, 1.0f);
  let x_228 : f32 = u_xlat14;
  u_xlat36 = ((x_228 * 4.0f) + 2.0f);
  let x_238 : vec3<f32> = u_xlat3;
  let x_241 : f32 = x_44.x_GlobalMipBias.x;
  let x_242 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_238.x, x_238.z), x_241);
  u_xlat3.x = x_242.x;
  let x_247 : f32 = u_xlat3.x;
  u_xlat25 = (x_247 + -1.0f);
  let x_252 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_253 : f32 = u_xlat25;
  u_xlat25 = ((x_252 * x_253) + 1.0f);
  let x_257 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_257, 1.0f);
  let x_262 : vec4<f32> = vs_TEXCOORD8;
  let x_263 : vec2<f32> = vec2<f32>(x_262.x, x_262.y);
  let x_265 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_263.x, x_263.y, x_265);
  let x_278 : vec3<f32> = txVec0;
  let x_280 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_278.xy, x_278.z);
  u_xlat5.x = x_280;
  let x_289 : f32 = x_287.x_MainLightShadowParams.x;
  u_xlat16.x = (-(x_289) + 1.0f);
  let x_294 : f32 = u_xlat5.x;
  let x_296 : f32 = x_287.x_MainLightShadowParams.x;
  let x_299 : f32 = u_xlat16.x;
  u_xlat5.x = ((x_294 * x_296) + x_299);
  let x_306 : f32 = vs_TEXCOORD8.z;
  u_xlatb16 = (0.0f >= x_306);
  let x_310 : f32 = vs_TEXCOORD8.z;
  u_xlatb27 = (x_310 >= 1.0f);
  let x_312 : bool = u_xlatb27;
  let x_313 : bool = u_xlatb16;
  u_xlatb16 = (x_312 | x_313);
  let x_315 : bool = u_xlatb16;
  if (x_315) {
    x_316 = 1.0f;
  } else {
    let x_321 : f32 = u_xlat5.x;
    x_316 = x_321;
  }
  let x_322 : f32 = x_316;
  u_xlat5.x = x_322;
  let x_324 : vec3<f32> = vs_TEXCOORD7;
  let x_328 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat16 = (x_324 + -(x_328));
  let x_331 : vec3<f32> = u_xlat16;
  let x_332 : vec3<f32> = u_xlat16;
  u_xlat16.x = dot(x_331, x_332);
  let x_336 : f32 = u_xlat16.x;
  let x_338 : f32 = x_287.x_MainLightShadowParams.z;
  let x_341 : f32 = x_287.x_MainLightShadowParams.w;
  u_xlat16.x = ((x_336 * x_338) + x_341);
  let x_345 : f32 = u_xlat16.x;
  u_xlat16.x = clamp(x_345, 0.0f, 1.0f);
  let x_350 : f32 = u_xlat5.x;
  u_xlat27 = (-(x_350) + 1.0f);
  let x_354 : f32 = u_xlat16.x;
  let x_355 : f32 = u_xlat27;
  let x_358 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_354 * x_355) + x_358);
  let x_361 : f32 = u_xlat25;
  let x_364 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat16 = (vec3<f32>(x_361, x_361, x_361) * vec3<f32>(x_364.x, x_364.y, x_364.z));
  let x_369 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_369;
  let x_373 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_373;
  let x_377 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_377;
  let x_380 : vec3<f32> = u_xlat6;
  let x_382 : vec3<f32> = u_xlat12;
  u_xlat39 = dot(-(x_380), x_382);
  let x_384 : f32 = u_xlat39;
  let x_385 : f32 = u_xlat39;
  u_xlat39 = (x_384 + x_385);
  let x_388 : vec3<f32> = u_xlat12;
  let x_389 : f32 = u_xlat39;
  let x_393 : vec3<f32> = u_xlat6;
  let x_395 : vec3<f32> = ((x_388 * -(vec3<f32>(x_389, x_389, x_389))) + -(x_393));
  let x_396 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_395.x, x_395.y, x_395.z, x_396.w);
  let x_398 : vec3<f32> = u_xlat12;
  let x_399 : vec3<f32> = u_xlat6;
  u_xlat39 = dot(x_398, x_399);
  let x_401 : f32 = u_xlat39;
  u_xlat39 = clamp(x_401, 0.0f, 1.0f);
  let x_403 : f32 = u_xlat39;
  u_xlat39 = (-(x_403) + 1.0f);
  let x_406 : f32 = u_xlat39;
  let x_407 : f32 = u_xlat39;
  u_xlat39 = (x_406 * x_407);
  let x_409 : f32 = u_xlat39;
  let x_410 : f32 = u_xlat39;
  u_xlat39 = (x_409 * x_410);
  let x_413 : f32 = u_xlat1;
  u_xlat40 = ((-(x_413) * 0.699999988f) + 1.700000048f);
  let x_419 : f32 = u_xlat1;
  let x_420 : f32 = u_xlat40;
  u_xlat1 = (x_419 * x_420);
  let x_422 : f32 = u_xlat1;
  u_xlat1 = (x_422 * 6.0f);
  let x_433 : vec4<f32> = u_xlat7;
  let x_435 : f32 = u_xlat1;
  let x_436 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_433.x, x_433.y, x_433.z), x_435);
  u_xlat7 = x_436;
  let x_438 : f32 = u_xlat7.w;
  u_xlat1 = (x_438 + -1.0f);
  let x_445 : f32 = x_443.unity_SpecCube0_HDR.w;
  let x_446 : f32 = u_xlat1;
  u_xlat1 = ((x_445 * x_446) + 1.0f);
  let x_449 : f32 = u_xlat1;
  u_xlat1 = max(x_449, 0.0f);
  let x_451 : f32 = u_xlat1;
  u_xlat1 = log2(x_451);
  let x_453 : f32 = u_xlat1;
  let x_455 : f32 = x_443.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_453 * x_455);
  let x_457 : f32 = u_xlat1;
  u_xlat1 = exp2(x_457);
  let x_459 : f32 = u_xlat1;
  let x_461 : f32 = x_443.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_459 * x_461);
  let x_463 : vec4<f32> = u_xlat7;
  let x_465 : f32 = u_xlat1;
  let x_467 : vec3<f32> = (vec3<f32>(x_463.x, x_463.y, x_463.z) * vec3<f32>(x_465, x_465, x_465));
  let x_468 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_467.x, x_467.y, x_467.z, x_468.w);
  let x_472 : f32 = u_xlat14;
  let x_474 : f32 = u_xlat14;
  u_xlat8 = ((vec2<f32>(x_472, x_472) * vec2<f32>(x_474, x_474)) + vec2<f32>(-1.0f, 1.0f));
  let x_480 : f32 = u_xlat8.y;
  u_xlat1 = (1.0f / x_480);
  let x_483 : vec4<f32> = u_xlat0;
  let x_486 : f32 = u_xlat33;
  u_xlat19 = (-(vec3<f32>(x_483.x, x_483.y, x_483.z)) + vec3<f32>(x_486, x_486, x_486));
  let x_489 : f32 = u_xlat39;
  let x_491 : vec3<f32> = u_xlat19;
  let x_493 : vec4<f32> = u_xlat0;
  u_xlat19 = ((vec3<f32>(x_489, x_489, x_489) * x_491) + vec3<f32>(x_493.x, x_493.y, x_493.z));
  let x_496 : f32 = u_xlat1;
  let x_498 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_496, x_496, x_496) * x_498);
  let x_500 : vec4<f32> = u_xlat7;
  let x_502 : vec3<f32> = u_xlat19;
  let x_503 : vec3<f32> = (vec3<f32>(x_500.x, x_500.y, x_500.z) * x_502);
  let x_504 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_503.x, x_503.y, x_503.z, x_504.w);
  let x_506 : vec3<f32> = u_xlat13;
  let x_507 : vec3<f32> = u_xlat4;
  let x_509 : vec4<f32> = u_xlat7;
  u_xlat13 = ((x_506 * x_507) + vec3<f32>(x_509.x, x_509.y, x_509.z));
  let x_513 : f32 = u_xlat5.x;
  let x_516 : f32 = x_443.unity_LightData.z;
  u_xlat33 = (x_513 * x_516);
  let x_518 : vec3<f32> = u_xlat12;
  let x_520 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat1 = dot(x_518, vec3<f32>(x_520.x, x_520.y, x_520.z));
  let x_523 : f32 = u_xlat1;
  u_xlat1 = clamp(x_523, 0.0f, 1.0f);
  let x_525 : f32 = u_xlat33;
  let x_526 : f32 = u_xlat1;
  u_xlat33 = (x_525 * x_526);
  let x_528 : f32 = u_xlat33;
  let x_530 : vec3<f32> = u_xlat16;
  u_xlat5 = (vec3<f32>(x_528, x_528, x_528) * x_530);
  let x_532 : vec3<f32> = u_xlat6;
  let x_534 : vec4<f32> = x_44.x_MainLightPosition;
  let x_536 : vec3<f32> = (x_532 + vec3<f32>(x_534.x, x_534.y, x_534.z));
  let x_537 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_536.x, x_536.y, x_536.z, x_537.w);
  let x_539 : vec4<f32> = u_xlat7;
  let x_541 : vec4<f32> = u_xlat7;
  u_xlat33 = dot(vec3<f32>(x_539.x, x_539.y, x_539.z), vec3<f32>(x_541.x, x_541.y, x_541.z));
  let x_544 : f32 = u_xlat33;
  u_xlat33 = max(x_544, 1.17549435e-37f);
  let x_547 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_547);
  let x_549 : f32 = u_xlat33;
  let x_551 : vec4<f32> = u_xlat7;
  let x_553 : vec3<f32> = (vec3<f32>(x_549, x_549, x_549) * vec3<f32>(x_551.x, x_551.y, x_551.z));
  let x_554 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_553.x, x_553.y, x_553.z, x_554.w);
  let x_556 : vec3<f32> = u_xlat12;
  let x_557 : vec4<f32> = u_xlat7;
  u_xlat33 = dot(x_556, vec3<f32>(x_557.x, x_557.y, x_557.z));
  let x_560 : f32 = u_xlat33;
  u_xlat33 = clamp(x_560, 0.0f, 1.0f);
  let x_563 : vec4<f32> = x_44.x_MainLightPosition;
  let x_565 : vec4<f32> = u_xlat7;
  u_xlat1 = dot(vec3<f32>(x_563.x, x_563.y, x_563.z), vec3<f32>(x_565.x, x_565.y, x_565.z));
  let x_568 : f32 = u_xlat1;
  u_xlat1 = clamp(x_568, 0.0f, 1.0f);
  let x_570 : f32 = u_xlat33;
  let x_571 : f32 = u_xlat33;
  u_xlat33 = (x_570 * x_571);
  let x_573 : f32 = u_xlat33;
  let x_575 : f32 = u_xlat8.x;
  u_xlat33 = ((x_573 * x_575) + 1.000010014f);
  let x_579 : f32 = u_xlat1;
  let x_580 : f32 = u_xlat1;
  u_xlat1 = (x_579 * x_580);
  let x_582 : f32 = u_xlat33;
  let x_583 : f32 = u_xlat33;
  u_xlat33 = (x_582 * x_583);
  let x_585 : f32 = u_xlat1;
  u_xlat1 = max(x_585, 0.100000001f);
  let x_588 : f32 = u_xlat33;
  let x_589 : f32 = u_xlat1;
  u_xlat33 = (x_588 * x_589);
  let x_591 : f32 = u_xlat36;
  let x_592 : f32 = u_xlat33;
  u_xlat33 = (x_591 * x_592);
  let x_594 : f32 = u_xlat37;
  let x_595 : f32 = u_xlat33;
  u_xlat33 = (x_594 / x_595);
  let x_597 : vec4<f32> = u_xlat0;
  let x_599 : f32 = u_xlat33;
  let x_602 : vec3<f32> = u_xlat4;
  let x_603 : vec3<f32> = ((vec3<f32>(x_597.x, x_597.y, x_597.z) * vec3<f32>(x_599, x_599, x_599)) + x_602);
  let x_604 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_603.x, x_603.y, x_603.z, x_604.w);
  let x_606 : vec3<f32> = u_xlat5;
  let x_607 : vec4<f32> = u_xlat7;
  u_xlat5 = (x_606 * vec3<f32>(x_607.x, x_607.y, x_607.z));
  let x_611 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_613 : f32 = x_443.unity_LightData.y;
  u_xlat33 = min(x_611, x_613);
  let x_617 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_617));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_629 : u32 = u_xlatu_loop_1;
    let x_630 : u32 = u_xlatu33;
    if ((x_629 < x_630)) {
    } else {
      break;
    }
    let x_633 : u32 = u_xlatu_loop_1;
    u_xlatu14 = (x_633 >> 2u);
    let x_637 : u32 = u_xlatu_loop_1;
    u_xlati38 = bitcast<i32>((x_637 & 3u));
    let x_640 : u32 = u_xlatu14;
    let x_643 : vec4<f32> = x_443.unity_LightIndices[bitcast<i32>(x_640)];
    let x_653 : i32 = u_xlati38;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_658 : vec4<u32> = indexable[x_653];
    u_xlat14 = dot(x_643, bitcast<vec4<f32>>(x_658));
    let x_662 : f32 = u_xlat14;
    u_xlati14 = i32(x_662);
    let x_664 : vec3<f32> = vs_TEXCOORD7;
    let x_676 : i32 = u_xlati14;
    let x_678 : vec4<f32> = x_675.x_AdditionalLightsPosition[x_676];
    let x_681 : i32 = u_xlati14;
    let x_683 : vec4<f32> = x_675.x_AdditionalLightsPosition[x_681];
    u_xlat19 = ((-(x_664) * vec3<f32>(x_678.w, x_678.w, x_678.w)) + vec3<f32>(x_683.x, x_683.y, x_683.z));
    let x_687 : vec3<f32> = u_xlat19;
    let x_688 : vec3<f32> = u_xlat19;
    u_xlat38 = dot(x_687, x_688);
    let x_690 : f32 = u_xlat38;
    u_xlat38 = max(x_690, 6.10351562e-05f);
    let x_693 : f32 = u_xlat38;
    u_xlat39 = inverseSqrt(x_693);
    let x_696 : f32 = u_xlat39;
    let x_698 : vec3<f32> = u_xlat19;
    u_xlat9 = (vec3<f32>(x_696, x_696, x_696) * x_698);
    let x_700 : f32 = u_xlat38;
    u_xlat40 = (1.0f / x_700);
    let x_702 : f32 = u_xlat38;
    let x_703 : i32 = u_xlati14;
    let x_705 : f32 = x_675.x_AdditionalLightsAttenuation[x_703].x;
    u_xlat38 = (x_702 * x_705);
    let x_707 : f32 = u_xlat38;
    let x_709 : f32 = u_xlat38;
    u_xlat38 = ((-(x_707) * x_709) + 1.0f);
    let x_712 : f32 = u_xlat38;
    u_xlat38 = max(x_712, 0.0f);
    let x_714 : f32 = u_xlat38;
    let x_715 : f32 = u_xlat38;
    u_xlat38 = (x_714 * x_715);
    let x_717 : f32 = u_xlat38;
    let x_718 : f32 = u_xlat40;
    u_xlat38 = (x_717 * x_718);
    let x_720 : i32 = u_xlati14;
    let x_722 : vec4<f32> = x_675.x_AdditionalLightsSpotDir[x_720];
    let x_724 : vec3<f32> = u_xlat9;
    u_xlat40 = dot(vec3<f32>(x_722.x, x_722.y, x_722.z), x_724);
    let x_726 : f32 = u_xlat40;
    let x_727 : i32 = u_xlati14;
    let x_729 : f32 = x_675.x_AdditionalLightsAttenuation[x_727].z;
    let x_731 : i32 = u_xlati14;
    let x_733 : f32 = x_675.x_AdditionalLightsAttenuation[x_731].w;
    u_xlat40 = ((x_726 * x_729) + x_733);
    let x_735 : f32 = u_xlat40;
    u_xlat40 = clamp(x_735, 0.0f, 1.0f);
    let x_737 : f32 = u_xlat40;
    let x_738 : f32 = u_xlat40;
    u_xlat40 = (x_737 * x_738);
    let x_740 : f32 = u_xlat38;
    let x_741 : f32 = u_xlat40;
    u_xlat38 = (x_740 * x_741);
    let x_744 : f32 = u_xlat25;
    let x_746 : i32 = u_xlati14;
    let x_748 : vec4<f32> = x_675.x_AdditionalLightsColor[x_746];
    u_xlat10 = (vec3<f32>(x_744, x_744, x_744) * vec3<f32>(x_748.x, x_748.y, x_748.z));
    let x_751 : vec3<f32> = u_xlat12;
    let x_752 : vec3<f32> = u_xlat9;
    u_xlat14 = dot(x_751, x_752);
    let x_754 : f32 = u_xlat14;
    u_xlat14 = clamp(x_754, 0.0f, 1.0f);
    let x_756 : f32 = u_xlat14;
    let x_757 : f32 = u_xlat38;
    u_xlat14 = (x_756 * x_757);
    let x_759 : f32 = u_xlat14;
    let x_761 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_759, x_759, x_759) * x_761);
    let x_763 : vec3<f32> = u_xlat19;
    let x_764 : f32 = u_xlat39;
    let x_767 : vec3<f32> = u_xlat6;
    u_xlat19 = ((x_763 * vec3<f32>(x_764, x_764, x_764)) + x_767);
    let x_769 : vec3<f32> = u_xlat19;
    let x_770 : vec3<f32> = u_xlat19;
    u_xlat14 = dot(x_769, x_770);
    let x_772 : f32 = u_xlat14;
    u_xlat14 = max(x_772, 1.17549435e-37f);
    let x_774 : f32 = u_xlat14;
    u_xlat14 = inverseSqrt(x_774);
    let x_776 : f32 = u_xlat14;
    let x_778 : vec3<f32> = u_xlat19;
    u_xlat19 = (vec3<f32>(x_776, x_776, x_776) * x_778);
    let x_780 : vec3<f32> = u_xlat12;
    let x_781 : vec3<f32> = u_xlat19;
    u_xlat14 = dot(x_780, x_781);
    let x_783 : f32 = u_xlat14;
    u_xlat14 = clamp(x_783, 0.0f, 1.0f);
    let x_785 : vec3<f32> = u_xlat9;
    let x_786 : vec3<f32> = u_xlat19;
    u_xlat38 = dot(x_785, x_786);
    let x_788 : f32 = u_xlat38;
    u_xlat38 = clamp(x_788, 0.0f, 1.0f);
    let x_790 : f32 = u_xlat14;
    let x_791 : f32 = u_xlat14;
    u_xlat14 = (x_790 * x_791);
    let x_793 : f32 = u_xlat14;
    let x_795 : f32 = u_xlat8.x;
    u_xlat14 = ((x_793 * x_795) + 1.000010014f);
    let x_798 : f32 = u_xlat38;
    let x_799 : f32 = u_xlat38;
    u_xlat38 = (x_798 * x_799);
    let x_801 : f32 = u_xlat14;
    let x_802 : f32 = u_xlat14;
    u_xlat14 = (x_801 * x_802);
    let x_804 : f32 = u_xlat38;
    u_xlat38 = max(x_804, 0.100000001f);
    let x_806 : f32 = u_xlat14;
    let x_807 : f32 = u_xlat38;
    u_xlat14 = (x_806 * x_807);
    let x_809 : f32 = u_xlat36;
    let x_810 : f32 = u_xlat14;
    u_xlat14 = (x_809 * x_810);
    let x_812 : f32 = u_xlat37;
    let x_813 : f32 = u_xlat14;
    u_xlat14 = (x_812 / x_813);
    let x_815 : vec4<f32> = u_xlat0;
    let x_817 : f32 = u_xlat14;
    let x_820 : vec3<f32> = u_xlat4;
    u_xlat19 = ((vec3<f32>(x_815.x, x_815.y, x_815.z) * vec3<f32>(x_817, x_817, x_817)) + x_820);
    let x_822 : vec3<f32> = u_xlat19;
    let x_823 : vec3<f32> = u_xlat10;
    let x_825 : vec4<f32> = u_xlat7;
    let x_827 : vec3<f32> = ((x_822 * x_823) + vec3<f32>(x_825.x, x_825.y, x_825.z));
    let x_828 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_827.x, x_827.y, x_827.z, x_828.w);

    continuing {
      let x_830 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_830 + bitcast<u32>(1i));
    }
  }
  let x_832 : vec3<f32> = u_xlat13;
  let x_833 : vec3<f32> = u_xlat3;
  let x_836 : vec3<f32> = u_xlat5;
  let x_837 : vec3<f32> = ((x_832 * vec3<f32>(x_833.x, x_833.x, x_833.x)) + x_836);
  let x_838 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_837.x, x_837.y, x_837.z, x_838.w);
  let x_840 : vec4<f32> = u_xlat7;
  let x_842 : vec4<f32> = u_xlat0;
  let x_844 : vec3<f32> = (vec3<f32>(x_840.x, x_840.y, x_840.z) + vec3<f32>(x_842.x, x_842.y, x_842.z));
  let x_845 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_844.x, x_844.y, x_844.z, x_845.w);
  let x_847 : f32 = u_xlat2;
  let x_848 : f32 = u_xlat2;
  u_xlat33 = (x_847 * -(x_848));
  let x_851 : f32 = u_xlat33;
  u_xlat33 = exp2(x_851);
  let x_853 : vec4<f32> = u_xlat0;
  let x_857 : vec4<f32> = x_44.unity_FogColor;
  let x_860 : vec3<f32> = (vec3<f32>(x_853.x, x_853.y, x_853.z) + -(vec3<f32>(x_857.x, x_857.y, x_857.z)));
  let x_861 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_860.x, x_860.y, x_860.z, x_861.w);
  let x_865 : f32 = u_xlat33;
  let x_867 : vec4<f32> = u_xlat0;
  let x_871 : vec4<f32> = x_44.unity_FogColor;
  let x_873 : vec3<f32> = ((vec3<f32>(x_865, x_865, x_865) * vec3<f32>(x_867.x, x_867.y, x_867.z)) + vec3<f32>(x_871.x, x_871.y, x_871.z));
  let x_874 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_873.x, x_873.y, x_873.z, x_874.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD3_param : vec4<f32>, @location(4) vs_TEXCOORD7_param : vec3<f32>, @location(5) vs_TEXCOORD8_param : vec4<f32>, @location(2) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD5_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  main_1();
  return main_out(SV_Target0);
}

