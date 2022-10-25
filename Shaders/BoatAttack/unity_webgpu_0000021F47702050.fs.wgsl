struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  x_AlphaToMaskAvailable : f32,
  @size(4)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AmbientOcclusionParam : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_1 : u32,
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
}

struct UnityPerMaterial {
  Texture2D_B222E8F_TexelSize : vec4<f32>,
  Color_C30C7CA3 : vec4<f32>,
  Texture2D_D9BFD5F1_TexelSize : vec4<f32>,
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

var<private> vs_INTERP1 : vec3<f32>;

@group(0) @binding(4) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(10) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_66 : PGlobals;

@group(1) @binding(4) var<uniform> x_78 : UnityPerMaterial;

@group(0) @binding(5) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(11) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> vs_INTERP4 : vec4<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_138 : MainLightShadows;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> vs_INTERP2 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_492 : UnityPerDraw;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP5 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1089 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat33 : f32;
  var u_xlat14 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlatb4 : vec4<bool>;
  var u_xlatu33 : u32;
  var u_xlati33 : i32;
  var txVec0 : vec3<f32>;
  var u_xlat35 : f32;
  var u_xlatb35 : bool;
  var u_xlatb1 : bool;
  var x_404 : f32;
  var u_xlat12 : vec3<f32>;
  var u_xlat23 : f32;
  var u_xlat34 : f32;
  var u_xlatb23 : bool;
  var x_453 : f32;
  var u_xlatb12 : vec3<bool>;
  var x_601 : f32;
  var x_614 : f32;
  var x_626 : f32;
  var u_xlat37 : f32;
  var u_xlat38 : f32;
  var u_xlat17 : vec3<f32>;
  var u_xlat28 : f32;
  var u_xlat40 : f32;
  var u_xlat8 : vec4<f32>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu3 : u32;
  var u_xlati40 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati3 : i32;
  var u_xlat41 : f32;
  var u_xlat9 : vec3<f32>;
  var u_xlat42 : f32;
  var u_xlat10 : vec3<f32>;
  var x_1309 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_30 : vec3<f32> = vs_INTERP1;
  let x_31 : vec3<f32> = vs_INTERP1;
  u_xlat0.x = dot(x_30, x_31);
  let x_37 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_37);
  let x_41 : f32 = u_xlat0.x;
  u_xlat0.x = (1.0f / x_41);
  let x_44 : vec3<f32> = u_xlat0;
  let x_46 : vec3<f32> = vs_INTERP1;
  u_xlat0 = (vec3<f32>(x_44.x, x_44.x, x_44.x) * x_46);
  let x_61 : vec4<f32> = vs_INTERP3;
  let x_71 : f32 = x_66.x_GlobalMipBias.x;
  let x_72 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_61.x, x_61.y), x_71);
  u_xlat1 = x_72;
  let x_74 : vec4<f32> = u_xlat1;
  let x_81 : vec4<f32> = x_78.Color_C30C7CA3;
  u_xlat2 = (vec3<f32>(x_74.x, x_74.y, x_74.z) * vec3<f32>(x_81.x, x_81.y, x_81.z));
  let x_90 : vec4<f32> = vs_INTERP3;
  let x_93 : f32 = x_66.x_GlobalMipBias.x;
  let x_94 : vec4<f32> = textureSampleBias(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1, vec2<f32>(x_90.x, x_90.y), x_93);
  u_xlat3 = vec4<f32>(x_94.w, x_94.x, x_94.y, x_94.z);
  let x_97 : vec4<f32> = u_xlat3;
  u_xlat4 = ((vec4<f32>(x_97.y, x_97.z, x_97.w, x_97.x) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_106 : vec4<f32> = u_xlat4;
  let x_107 : vec4<f32> = u_xlat4;
  u_xlat33 = dot(x_106, x_107);
  let x_109 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_109);
  let x_112 : f32 = u_xlat33;
  let x_114 : vec4<f32> = u_xlat4;
  u_xlat14 = (vec3<f32>(x_112, x_112, x_112) * vec3<f32>(x_114.x, x_114.y, x_114.z));
  let x_120 : f32 = vs_INTERP4.y;
  u_xlat33 = (x_120 * 200.0f);
  let x_123 : f32 = u_xlat33;
  u_xlat33 = min(x_123, 1.0f);
  let x_125 : f32 = u_xlat33;
  let x_127 : vec4<f32> = u_xlat1;
  let x_129 : vec3<f32> = (vec3<f32>(x_125, x_125, x_125) * vec3<f32>(x_127.x, x_127.y, x_127.z));
  let x_130 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_129.x, x_129.y, x_129.z, x_130.w);
  let x_133 : vec3<f32> = vs_INTERP0;
  let x_140 : vec4<f32> = x_138.x_CascadeShadowSplitSpheres0;
  let x_143 : vec3<f32> = (x_133 + -(vec3<f32>(x_140.x, x_140.y, x_140.z)));
  let x_144 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_143.x, x_143.y, x_143.z, x_144.w);
  let x_147 : vec3<f32> = vs_INTERP0;
  let x_150 : vec4<f32> = x_138.x_CascadeShadowSplitSpheres1;
  let x_153 : vec3<f32> = (x_147 + -(vec3<f32>(x_150.x, x_150.y, x_150.z)));
  let x_154 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_153.x, x_153.y, x_153.z, x_154.w);
  let x_157 : vec3<f32> = vs_INTERP0;
  let x_160 : vec4<f32> = x_138.x_CascadeShadowSplitSpheres2;
  u_xlat6 = (x_157 + -(vec3<f32>(x_160.x, x_160.y, x_160.z)));
  let x_165 : vec3<f32> = vs_INTERP0;
  let x_168 : vec4<f32> = x_138.x_CascadeShadowSplitSpheres3;
  u_xlat7 = (x_165 + -(vec3<f32>(x_168.x, x_168.y, x_168.z)));
  let x_172 : vec4<f32> = u_xlat4;
  let x_174 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_172.x, x_172.y, x_172.z), vec3<f32>(x_174.x, x_174.y, x_174.z));
  let x_178 : vec4<f32> = u_xlat5;
  let x_180 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_178.x, x_178.y, x_178.z), vec3<f32>(x_180.x, x_180.y, x_180.z));
  let x_184 : vec3<f32> = u_xlat6;
  let x_185 : vec3<f32> = u_xlat6;
  u_xlat4.z = dot(x_184, x_185);
  let x_189 : vec3<f32> = u_xlat7;
  let x_190 : vec3<f32> = u_xlat7;
  u_xlat4.w = dot(x_189, x_190);
  let x_197 : vec4<f32> = u_xlat4;
  let x_200 : vec4<f32> = x_138.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_197 < x_200);
  let x_204 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_204);
  let x_209 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_209);
  let x_213 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_213);
  let x_217 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_217);
  let x_221 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_221);
  let x_226 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_226);
  let x_230 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_230);
  let x_233 : vec4<f32> = u_xlat4;
  let x_235 : vec4<f32> = u_xlat5;
  let x_237 : vec3<f32> = (vec3<f32>(x_233.x, x_233.y, x_233.z) + vec3<f32>(x_235.y, x_235.z, x_235.w));
  let x_238 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_237.x, x_237.y, x_237.z, x_238.w);
  let x_240 : vec4<f32> = u_xlat4;
  let x_243 : vec3<f32> = max(vec3<f32>(x_240.x, x_240.y, x_240.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_244 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_244.x, x_243.x, x_243.y, x_243.z);
  let x_246 : vec4<f32> = u_xlat5;
  u_xlat33 = dot(x_246, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_251 : f32 = u_xlat33;
  u_xlat33 = (-(x_251) + 4.0f);
  let x_256 : f32 = u_xlat33;
  u_xlatu33 = u32(x_256);
  let x_260 : u32 = u_xlatu33;
  u_xlati33 = (bitcast<i32>(x_260) << bitcast<u32>(2i));
  let x_263 : vec3<f32> = vs_INTERP0;
  let x_266 : i32 = u_xlati33;
  let x_269 : i32 = u_xlati33;
  let x_273 : vec4<f32> = x_138.x_MainLightWorldToShadow[((x_266 + 1i) / 4i)][((x_269 + 1i) % 4i)];
  let x_275 : vec3<f32> = (vec3<f32>(x_263.y, x_263.y, x_263.y) * vec3<f32>(x_273.x, x_273.y, x_273.z));
  let x_276 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_275.x, x_275.y, x_275.z, x_276.w);
  let x_278 : i32 = u_xlati33;
  let x_280 : i32 = u_xlati33;
  let x_283 : vec4<f32> = x_138.x_MainLightWorldToShadow[(x_278 / 4i)][(x_280 % 4i)];
  let x_285 : vec3<f32> = vs_INTERP0;
  let x_288 : vec4<f32> = u_xlat4;
  let x_290 : vec3<f32> = ((vec3<f32>(x_283.x, x_283.y, x_283.z) * vec3<f32>(x_285.x, x_285.x, x_285.x)) + vec3<f32>(x_288.x, x_288.y, x_288.z));
  let x_291 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_290.x, x_290.y, x_290.z, x_291.w);
  let x_293 : i32 = u_xlati33;
  let x_296 : i32 = u_xlati33;
  let x_300 : vec4<f32> = x_138.x_MainLightWorldToShadow[((x_293 + 2i) / 4i)][((x_296 + 2i) % 4i)];
  let x_302 : vec3<f32> = vs_INTERP0;
  let x_305 : vec4<f32> = u_xlat4;
  let x_307 : vec3<f32> = ((vec3<f32>(x_300.x, x_300.y, x_300.z) * vec3<f32>(x_302.z, x_302.z, x_302.z)) + vec3<f32>(x_305.x, x_305.y, x_305.z));
  let x_308 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_307.x, x_307.y, x_307.z, x_308.w);
  let x_310 : vec4<f32> = u_xlat4;
  let x_312 : i32 = u_xlati33;
  let x_315 : i32 = u_xlati33;
  let x_319 : vec4<f32> = x_138.x_MainLightWorldToShadow[((x_312 + 3i) / 4i)][((x_315 + 3i) % 4i)];
  let x_321 : vec3<f32> = (vec3<f32>(x_310.x, x_310.y, x_310.z) + vec3<f32>(x_319.x, x_319.y, x_319.z));
  let x_322 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_321.x, x_321.y, x_321.z, x_322.w);
  let x_325 : vec4<f32> = u_xlat4;
  let x_326 : vec2<f32> = vec2<f32>(x_325.x, x_325.y);
  let x_328 : f32 = u_xlat4.z;
  txVec0 = vec3<f32>(x_326.x, x_326.y, x_328);
  let x_340 : vec3<f32> = txVec0;
  let x_342 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_340.xy, x_340.z);
  u_xlat33 = x_342;
  let x_346 : f32 = x_138.x_MainLightShadowParams.x;
  u_xlat35 = (-(x_346) + 1.0f);
  let x_349 : f32 = u_xlat33;
  let x_351 : f32 = x_138.x_MainLightShadowParams.x;
  let x_353 : f32 = u_xlat35;
  u_xlat33 = ((x_349 * x_351) + x_353);
  let x_357 : f32 = u_xlat4.z;
  u_xlatb35 = (0.0f >= x_357);
  let x_360 : f32 = u_xlat4.z;
  u_xlatb4.x = (x_360 >= 1.0f);
  let x_363 : bool = u_xlatb35;
  let x_365 : bool = u_xlatb4.x;
  u_xlatb35 = (x_363 | x_365);
  let x_367 : bool = u_xlatb35;
  let x_368 : f32 = u_xlat33;
  u_xlat33 = select(x_368, 1.0f, x_367);
  let x_370 : vec3<f32> = u_xlat0;
  let x_372 : vec4<f32> = x_66.x_MainLightPosition;
  u_xlat0.x = dot(x_370, -(vec3<f32>(x_372.x, x_372.y, x_372.z)));
  let x_378 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_378, 0.0f, 1.0f);
  let x_381 : f32 = u_xlat33;
  let x_384 : vec4<f32> = x_66.x_MainLightColor;
  let x_386 : vec3<f32> = (vec3<f32>(x_381, x_381, x_381) * vec3<f32>(x_384.x, x_384.y, x_384.z));
  let x_387 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_386.x, x_386.y, x_386.z, x_387.w);
  let x_389 : vec3<f32> = u_xlat0;
  let x_391 : vec4<f32> = u_xlat4;
  u_xlat0 = (vec3<f32>(x_389.x, x_389.x, x_389.x) * vec3<f32>(x_391.x, x_391.y, x_391.z));
  let x_394 : vec3<f32> = u_xlat0;
  let x_395 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_394 * vec3<f32>(x_395.x, x_395.y, x_395.z));
  let x_400 : f32 = u_xlat1.w;
  u_xlatb1 = (x_400 >= 0.400000006f);
  let x_403 : bool = u_xlatb1;
  if (x_403) {
    let x_408 : f32 = u_xlat1.w;
    x_404 = x_408;
  } else {
    x_404 = 0.0f;
  }
  let x_410 : f32 = x_404;
  u_xlat1.x = x_410;
  let x_414 : f32 = u_xlat1.w;
  u_xlat12.x = (x_414 + -0.400000006f);
  let x_420 : f32 = u_xlat1.w;
  u_xlat23 = dpdxCoarse(x_420);
  let x_424 : f32 = u_xlat1.w;
  u_xlat34 = dpdyCoarse(x_424);
  let x_426 : f32 = u_xlat34;
  let x_428 : f32 = u_xlat23;
  u_xlat23 = (abs(x_426) + abs(x_428));
  let x_431 : f32 = u_xlat23;
  u_xlat23 = max(x_431, 0.0001f);
  let x_435 : f32 = u_xlat12.x;
  let x_436 : f32 = u_xlat23;
  u_xlat12.x = (x_435 / x_436);
  let x_440 : f32 = u_xlat12.x;
  u_xlat12.x = (x_440 + 0.5f);
  let x_445 : f32 = u_xlat12.x;
  u_xlat12.x = clamp(x_445, 0.0f, 1.0f);
  let x_450 : f32 = x_66.x_AlphaToMaskAvailable;
  u_xlatb23 = !((x_450 == 0.0f));
  let x_452 : bool = u_xlatb23;
  if (x_452) {
    let x_457 : f32 = u_xlat12.x;
    x_453 = x_457;
  } else {
    let x_460 : f32 = u_xlat1.x;
    x_453 = x_460;
  }
  let x_461 : f32 = x_453;
  u_xlat1.x = x_461;
  let x_464 : f32 = u_xlat1.x;
  u_xlat12.x = (x_464 + -0.0001f);
  let x_472 : f32 = u_xlat12.x;
  u_xlatb12.x = (x_472 < 0.0f);
  let x_476 : bool = u_xlatb12.x;
  if (((select(0i, 1i, x_476) * -1i) != 0i)) {
    discard;
  }
  let x_486 : f32 = vs_INTERP2.w;
  u_xlatb12.x = (0.0f < x_486);
  let x_494 : f32 = x_492.unity_WorldTransformParams.w;
  u_xlatb12.z = (x_494 >= 0.0f);
  let x_498 : bool = u_xlatb12.x;
  u_xlat12.x = select(-1.0f, 1.0f, x_498);
  let x_502 : bool = u_xlatb12.z;
  u_xlat12.z = select(-1.0f, 1.0f, x_502);
  let x_506 : f32 = u_xlat12.z;
  let x_508 : f32 = u_xlat12.x;
  u_xlat12.x = (x_506 * x_508);
  let x_511 : vec3<f32> = vs_INTERP1;
  let x_513 : vec4<f32> = vs_INTERP2;
  let x_515 : vec3<f32> = (vec3<f32>(x_511.z, x_511.x, x_511.y) * vec3<f32>(x_513.y, x_513.z, x_513.x));
  let x_516 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_515.x, x_515.y, x_515.z, x_516.w);
  let x_518 : vec3<f32> = vs_INTERP1;
  let x_520 : vec4<f32> = vs_INTERP2;
  let x_523 : vec4<f32> = u_xlat4;
  let x_526 : vec3<f32> = ((vec3<f32>(x_518.y, x_518.z, x_518.x) * vec3<f32>(x_520.z, x_520.x, x_520.y)) + -(vec3<f32>(x_523.x, x_523.y, x_523.z)));
  let x_527 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_526.x, x_526.y, x_526.z, x_527.w);
  let x_529 : vec3<f32> = u_xlat12;
  let x_531 : vec4<f32> = u_xlat4;
  let x_533 : vec3<f32> = (vec3<f32>(x_529.x, x_529.x, x_529.x) * vec3<f32>(x_531.x, x_531.y, x_531.z));
  let x_534 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_533.x, x_533.y, x_533.z, x_534.w);
  let x_536 : vec3<f32> = u_xlat14;
  let x_538 : vec4<f32> = u_xlat4;
  let x_540 : vec3<f32> = (vec3<f32>(x_536.y, x_536.y, x_536.y) * vec3<f32>(x_538.x, x_538.y, x_538.z));
  let x_541 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_540.x, x_540.y, x_540.z, x_541.w);
  let x_543 : vec3<f32> = u_xlat14;
  let x_545 : vec4<f32> = vs_INTERP2;
  let x_548 : vec4<f32> = u_xlat4;
  let x_550 : vec3<f32> = ((vec3<f32>(x_543.x, x_543.x, x_543.x) * vec3<f32>(x_545.x, x_545.y, x_545.z)) + vec3<f32>(x_548.x, x_548.y, x_548.z));
  let x_551 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_550.x, x_550.y, x_550.z, x_551.w);
  let x_553 : vec3<f32> = u_xlat14;
  let x_555 : vec3<f32> = vs_INTERP1;
  let x_557 : vec4<f32> = u_xlat4;
  u_xlat14 = ((vec3<f32>(x_553.z, x_553.z, x_553.z) * x_555) + vec3<f32>(x_557.x, x_557.y, x_557.z));
  let x_560 : vec3<f32> = u_xlat14;
  let x_561 : vec3<f32> = u_xlat14;
  u_xlat12.x = dot(x_560, x_561);
  let x_565 : f32 = u_xlat12.x;
  u_xlat12.x = inverseSqrt(x_565);
  let x_568 : vec3<f32> = u_xlat12;
  let x_570 : vec3<f32> = u_xlat14;
  u_xlat14 = (vec3<f32>(x_568.x, x_568.x, x_568.x) * x_570);
  let x_573 : f32 = x_66.unity_OrthoParams.w;
  u_xlatb12.x = (x_573 == 0.0f);
  let x_576 : vec3<f32> = vs_INTERP0;
  let x_581 : vec3<f32> = x_66.x_WorldSpaceCameraPos;
  let x_582 : vec3<f32> = (-(x_576) + x_581);
  let x_583 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_582.x, x_582.y, x_582.z, x_583.w);
  let x_585 : vec4<f32> = u_xlat4;
  let x_587 : vec4<f32> = u_xlat4;
  u_xlat34 = dot(vec3<f32>(x_585.x, x_585.y, x_585.z), vec3<f32>(x_587.x, x_587.y, x_587.z));
  let x_590 : f32 = u_xlat34;
  u_xlat34 = inverseSqrt(x_590);
  let x_592 : f32 = u_xlat34;
  let x_594 : vec4<f32> = u_xlat4;
  let x_596 : vec3<f32> = (vec3<f32>(x_592, x_592, x_592) * vec3<f32>(x_594.x, x_594.y, x_594.z));
  let x_597 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_596.x, x_596.y, x_596.z, x_597.w);
  let x_600 : bool = u_xlatb12.x;
  if (x_600) {
    let x_605 : f32 = u_xlat4.x;
    x_601 = x_605;
  } else {
    let x_609 : f32 = x_66.unity_MatrixV[0i].z;
    x_601 = x_609;
  }
  let x_610 : f32 = x_601;
  u_xlat5.x = x_610;
  let x_613 : bool = u_xlatb12.x;
  if (x_613) {
    let x_618 : f32 = u_xlat4.y;
    x_614 = x_618;
  } else {
    let x_621 : f32 = x_66.unity_MatrixV[1i].z;
    x_614 = x_621;
  }
  let x_622 : f32 = x_614;
  u_xlat5.y = x_622;
  let x_625 : bool = u_xlatb12.x;
  if (x_625) {
    let x_630 : f32 = u_xlat4.z;
    x_626 = x_630;
  } else {
    let x_633 : f32 = x_66.unity_MatrixV[2i].z;
    x_626 = x_633;
  }
  let x_634 : f32 = x_626;
  u_xlat5.z = x_634;
  let x_643 : vec2<f32> = vs_INTERP5;
  let x_645 : f32 = x_66.x_GlobalMipBias.x;
  let x_646 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_643, x_645);
  let x_647 : vec3<f32> = vec3<f32>(x_646.x, x_646.y, x_646.z);
  let x_648 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_647.x, x_647.y, x_647.z, x_648.w);
  let x_652 : vec4<f32> = x_66.x_ScaledScreenParams;
  let x_653 : vec2<f32> = vec2<f32>(x_652.x, x_652.y);
  let x_657 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_653.x, x_653.y));
  let x_658 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_657.x, x_658.y, x_657.y);
  let x_660 : vec3<f32> = u_xlat12;
  let x_662 : vec4<f32> = hlslcc_FragCoord;
  let x_664 : vec2<f32> = (vec2<f32>(x_660.x, x_660.z) * vec2<f32>(x_662.x, x_662.y));
  let x_665 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_664.x, x_664.y, x_665.z);
  let x_668 : f32 = u_xlat6.y;
  let x_671 : f32 = x_66.x_ScaleBiasRt.x;
  let x_674 : f32 = x_66.x_ScaleBiasRt.y;
  u_xlat12.x = ((x_668 * x_671) + x_674);
  let x_678 : f32 = u_xlat12.x;
  u_xlat6.z = (-(x_678) + 1.0f);
  let x_683 : f32 = u_xlat3.x;
  u_xlat3.x = x_683;
  let x_686 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_686, 0.0f, 1.0f);
  let x_690 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_690, 1.0f);
  let x_693 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_693 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_698 : f32 = u_xlat3.x;
  u_xlat12.x = (-(x_698) + 1.0f);
  let x_703 : f32 = u_xlat12.x;
  let x_705 : f32 = u_xlat12.x;
  u_xlat34 = (x_703 * x_705);
  let x_707 : f32 = u_xlat34;
  u_xlat34 = max(x_707, 0.0078125f);
  let x_710 : f32 = u_xlat34;
  let x_711 : f32 = u_xlat34;
  u_xlat35 = (x_710 * x_711);
  let x_714 : f32 = u_xlat3.x;
  u_xlat3.x = (x_714 + 0.040000021f);
  let x_719 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_719, 1.0f);
  let x_723 : f32 = u_xlat34;
  u_xlat37 = ((x_723 * 4.0f) + 2.0f);
  let x_732 : vec3<f32> = u_xlat6;
  let x_735 : f32 = x_66.x_GlobalMipBias.x;
  let x_736 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_732.x, x_732.z), x_735);
  u_xlat38 = x_736.x;
  let x_738 : f32 = u_xlat38;
  u_xlat6.x = (x_738 + -1.0f);
  let x_742 : f32 = x_66.x_AmbientOcclusionParam.w;
  let x_744 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_742 * x_744) + 1.0f);
  let x_748 : f32 = u_xlat38;
  let x_750 : f32 = vs_INTERP4.w;
  u_xlat38 = min(x_748, x_750);
  let x_753 : vec3<f32> = vs_INTERP0;
  let x_755 : vec3<f32> = x_66.x_WorldSpaceCameraPos;
  u_xlat17 = (x_753 + -(x_755));
  let x_758 : vec3<f32> = u_xlat17;
  let x_759 : vec3<f32> = u_xlat17;
  u_xlat17.x = dot(x_758, x_759);
  let x_763 : f32 = u_xlat17.x;
  let x_765 : f32 = x_138.x_MainLightShadowParams.z;
  let x_768 : f32 = x_138.x_MainLightShadowParams.w;
  u_xlat17.x = ((x_763 * x_765) + x_768);
  let x_772 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_772, 0.0f, 1.0f);
  let x_776 : f32 = u_xlat33;
  u_xlat28 = (-(x_776) + 1.0f);
  let x_780 : f32 = u_xlat17.x;
  let x_781 : f32 = u_xlat28;
  let x_783 : f32 = u_xlat33;
  u_xlat33 = ((x_780 * x_781) + x_783);
  let x_785 : vec3<f32> = u_xlat6;
  let x_788 : vec4<f32> = x_66.x_MainLightColor;
  u_xlat17 = (vec3<f32>(x_785.x, x_785.x, x_785.x) * vec3<f32>(x_788.x, x_788.y, x_788.z));
  let x_791 : vec4<f32> = u_xlat5;
  let x_794 : vec3<f32> = u_xlat14;
  u_xlat7.x = dot(-(vec3<f32>(x_791.x, x_791.y, x_791.z)), x_794);
  let x_798 : f32 = u_xlat7.x;
  let x_800 : f32 = u_xlat7.x;
  u_xlat7.x = (x_798 + x_800);
  let x_803 : vec3<f32> = u_xlat14;
  let x_804 : vec3<f32> = u_xlat7;
  let x_808 : vec4<f32> = u_xlat5;
  u_xlat7 = ((x_803 * -(vec3<f32>(x_804.x, x_804.x, x_804.x))) + -(vec3<f32>(x_808.x, x_808.y, x_808.z)));
  let x_813 : vec3<f32> = u_xlat14;
  let x_814 : vec4<f32> = u_xlat5;
  u_xlat40 = dot(x_813, vec3<f32>(x_814.x, x_814.y, x_814.z));
  let x_817 : f32 = u_xlat40;
  u_xlat40 = clamp(x_817, 0.0f, 1.0f);
  let x_819 : f32 = u_xlat40;
  u_xlat40 = (-(x_819) + 1.0f);
  let x_822 : f32 = u_xlat40;
  let x_823 : f32 = u_xlat40;
  u_xlat40 = (x_822 * x_823);
  let x_825 : f32 = u_xlat40;
  let x_826 : f32 = u_xlat40;
  u_xlat40 = (x_825 * x_826);
  let x_830 : f32 = u_xlat12.x;
  u_xlat8.x = ((-(x_830) * 0.699999988f) + 1.700000048f);
  let x_838 : f32 = u_xlat12.x;
  let x_840 : f32 = u_xlat8.x;
  u_xlat12.x = (x_838 * x_840);
  let x_844 : f32 = u_xlat12.x;
  u_xlat12.x = (x_844 * 6.0f);
  let x_856 : vec3<f32> = u_xlat7;
  let x_858 : f32 = u_xlat12.x;
  let x_859 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_856, x_858);
  u_xlat8 = x_859;
  let x_861 : f32 = u_xlat8.w;
  u_xlat12.x = (x_861 + -1.0f);
  let x_865 : f32 = x_492.unity_SpecCube0_HDR.w;
  let x_867 : f32 = u_xlat12.x;
  u_xlat12.x = ((x_865 * x_867) + 1.0f);
  let x_872 : f32 = u_xlat12.x;
  u_xlat12.x = max(x_872, 0.0f);
  let x_876 : f32 = u_xlat12.x;
  u_xlat12.x = log2(x_876);
  let x_880 : f32 = u_xlat12.x;
  let x_882 : f32 = x_492.unity_SpecCube0_HDR.y;
  u_xlat12.x = (x_880 * x_882);
  let x_886 : f32 = u_xlat12.x;
  u_xlat12.x = exp2(x_886);
  let x_890 : f32 = u_xlat12.x;
  let x_892 : f32 = x_492.unity_SpecCube0_HDR.x;
  u_xlat12.x = (x_890 * x_892);
  let x_895 : vec4<f32> = u_xlat8;
  let x_897 : vec3<f32> = u_xlat12;
  u_xlat7 = (vec3<f32>(x_895.x, x_895.y, x_895.z) * vec3<f32>(x_897.x, x_897.x, x_897.x));
  let x_900 : f32 = u_xlat34;
  let x_902 : f32 = u_xlat34;
  let x_906 : vec2<f32> = ((vec2<f32>(x_900, x_900) * vec2<f32>(x_902, x_902)) + vec2<f32>(-1.0f, 1.0f));
  let x_907 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_906.x, x_907.y, x_906.y);
  let x_910 : f32 = u_xlat12.z;
  u_xlat34 = (1.0f / x_910);
  let x_913 : f32 = u_xlat3.x;
  u_xlat3.x = (x_913 + -0.039999999f);
  let x_917 : f32 = u_xlat40;
  let x_919 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_917 * x_919) + 0.039999999f);
  let x_924 : f32 = u_xlat34;
  let x_926 : f32 = u_xlat3.x;
  u_xlat34 = (x_924 * x_926);
  let x_928 : f32 = u_xlat34;
  let x_930 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_928, x_928, x_928) * x_930);
  let x_932 : vec4<f32> = u_xlat4;
  let x_934 : vec3<f32> = u_xlat2;
  let x_936 : vec3<f32> = u_xlat7;
  let x_937 : vec3<f32> = ((vec3<f32>(x_932.x, x_932.y, x_932.z) * x_934) + x_936);
  let x_938 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_937.x, x_937.y, x_937.z, x_938.w);
  let x_940 : f32 = u_xlat33;
  let x_942 : f32 = x_492.unity_LightData.z;
  u_xlat33 = (x_940 * x_942);
  let x_944 : vec3<f32> = u_xlat14;
  let x_946 : vec4<f32> = x_66.x_MainLightPosition;
  u_xlat34 = dot(x_944, vec3<f32>(x_946.x, x_946.y, x_946.z));
  let x_949 : f32 = u_xlat34;
  u_xlat34 = clamp(x_949, 0.0f, 1.0f);
  let x_951 : f32 = u_xlat33;
  let x_952 : f32 = u_xlat34;
  u_xlat33 = (x_951 * x_952);
  let x_954 : f32 = u_xlat33;
  let x_956 : vec3<f32> = u_xlat17;
  u_xlat17 = (vec3<f32>(x_954, x_954, x_954) * x_956);
  let x_958 : vec4<f32> = u_xlat5;
  let x_961 : vec4<f32> = x_66.x_MainLightPosition;
  u_xlat7 = (vec3<f32>(x_958.x, x_958.y, x_958.z) + vec3<f32>(x_961.x, x_961.y, x_961.z));
  let x_964 : vec3<f32> = u_xlat7;
  let x_965 : vec3<f32> = u_xlat7;
  u_xlat33 = dot(x_964, x_965);
  let x_967 : f32 = u_xlat33;
  u_xlat33 = max(x_967, 1.17549435e-37f);
  let x_970 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_970);
  let x_972 : f32 = u_xlat33;
  let x_974 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_972, x_972, x_972) * x_974);
  let x_976 : vec3<f32> = u_xlat14;
  let x_977 : vec3<f32> = u_xlat7;
  u_xlat33 = dot(x_976, x_977);
  let x_979 : f32 = u_xlat33;
  u_xlat33 = clamp(x_979, 0.0f, 1.0f);
  let x_982 : vec4<f32> = x_66.x_MainLightPosition;
  let x_984 : vec3<f32> = u_xlat7;
  u_xlat34 = dot(vec3<f32>(x_982.x, x_982.y, x_982.z), x_984);
  let x_986 : f32 = u_xlat34;
  u_xlat34 = clamp(x_986, 0.0f, 1.0f);
  let x_988 : f32 = u_xlat33;
  let x_989 : f32 = u_xlat33;
  u_xlat33 = (x_988 * x_989);
  let x_991 : f32 = u_xlat33;
  let x_993 : f32 = u_xlat12.x;
  u_xlat33 = ((x_991 * x_993) + 1.000010014f);
  let x_997 : f32 = u_xlat34;
  let x_998 : f32 = u_xlat34;
  u_xlat34 = (x_997 * x_998);
  let x_1000 : f32 = u_xlat33;
  let x_1001 : f32 = u_xlat33;
  u_xlat33 = (x_1000 * x_1001);
  let x_1003 : f32 = u_xlat34;
  u_xlat34 = max(x_1003, 0.100000001f);
  let x_1006 : f32 = u_xlat33;
  let x_1007 : f32 = u_xlat34;
  u_xlat33 = (x_1006 * x_1007);
  let x_1009 : f32 = u_xlat37;
  let x_1010 : f32 = u_xlat33;
  u_xlat33 = (x_1009 * x_1010);
  let x_1012 : f32 = u_xlat35;
  let x_1013 : f32 = u_xlat33;
  u_xlat33 = (x_1012 / x_1013);
  let x_1015 : f32 = u_xlat33;
  let x_1019 : vec3<f32> = u_xlat2;
  u_xlat7 = ((vec3<f32>(x_1015, x_1015, x_1015) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1019);
  let x_1021 : vec3<f32> = u_xlat17;
  let x_1022 : vec3<f32> = u_xlat7;
  u_xlat17 = (x_1021 * x_1022);
  let x_1026 : f32 = x_66.x_AdditionalLightsCount.x;
  let x_1028 : f32 = x_492.unity_LightData.y;
  u_xlat33 = min(x_1026, x_1028);
  let x_1030 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_1030));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1042 : u32 = u_xlatu_loop_1;
    let x_1043 : u32 = u_xlatu33;
    if ((x_1042 < x_1043)) {
    } else {
      break;
    }
    let x_1046 : u32 = u_xlatu_loop_1;
    u_xlatu3 = (x_1046 >> 2u);
    let x_1049 : u32 = u_xlatu_loop_1;
    u_xlati40 = bitcast<i32>((x_1049 & 3u));
    let x_1052 : u32 = u_xlatu3;
    let x_1055 : vec4<f32> = x_492.unity_LightIndices[bitcast<i32>(x_1052)];
    let x_1065 : i32 = u_xlati40;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1070 : vec4<u32> = indexable[x_1065];
    u_xlat3.x = dot(x_1055, bitcast<vec4<f32>>(x_1070));
    let x_1076 : f32 = u_xlat3.x;
    u_xlati3 = i32(x_1076);
    let x_1078 : vec3<f32> = vs_INTERP0;
    let x_1090 : i32 = u_xlati3;
    let x_1092 : vec4<f32> = x_1089.x_AdditionalLightsPosition[x_1090];
    let x_1095 : i32 = u_xlati3;
    let x_1097 : vec4<f32> = x_1089.x_AdditionalLightsPosition[x_1095];
    let x_1099 : vec3<f32> = ((-(x_1078) * vec3<f32>(x_1092.w, x_1092.w, x_1092.w)) + vec3<f32>(x_1097.x, x_1097.y, x_1097.z));
    let x_1100 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1099.x, x_1099.y, x_1099.z, x_1100.w);
    let x_1102 : vec4<f32> = u_xlat8;
    let x_1104 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(vec3<f32>(x_1102.x, x_1102.y, x_1102.z), vec3<f32>(x_1104.x, x_1104.y, x_1104.z));
    let x_1107 : f32 = u_xlat40;
    u_xlat40 = max(x_1107, 6.10351562e-05f);
    let x_1111 : f32 = u_xlat40;
    u_xlat41 = inverseSqrt(x_1111);
    let x_1114 : f32 = u_xlat41;
    let x_1116 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_1114, x_1114, x_1114) * vec3<f32>(x_1116.x, x_1116.y, x_1116.z));
    let x_1120 : f32 = u_xlat40;
    u_xlat42 = (1.0f / x_1120);
    let x_1122 : f32 = u_xlat40;
    let x_1123 : i32 = u_xlati3;
    let x_1125 : f32 = x_1089.x_AdditionalLightsAttenuation[x_1123].x;
    u_xlat40 = (x_1122 * x_1125);
    let x_1127 : f32 = u_xlat40;
    let x_1129 : f32 = u_xlat40;
    u_xlat40 = ((-(x_1127) * x_1129) + 1.0f);
    let x_1132 : f32 = u_xlat40;
    u_xlat40 = max(x_1132, 0.0f);
    let x_1134 : f32 = u_xlat40;
    let x_1135 : f32 = u_xlat40;
    u_xlat40 = (x_1134 * x_1135);
    let x_1137 : f32 = u_xlat40;
    let x_1138 : f32 = u_xlat42;
    u_xlat40 = (x_1137 * x_1138);
    let x_1140 : i32 = u_xlati3;
    let x_1142 : vec4<f32> = x_1089.x_AdditionalLightsSpotDir[x_1140];
    let x_1144 : vec3<f32> = u_xlat9;
    u_xlat42 = dot(vec3<f32>(x_1142.x, x_1142.y, x_1142.z), x_1144);
    let x_1146 : f32 = u_xlat42;
    let x_1147 : i32 = u_xlati3;
    let x_1149 : f32 = x_1089.x_AdditionalLightsAttenuation[x_1147].z;
    let x_1151 : i32 = u_xlati3;
    let x_1153 : f32 = x_1089.x_AdditionalLightsAttenuation[x_1151].w;
    u_xlat42 = ((x_1146 * x_1149) + x_1153);
    let x_1155 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1155, 0.0f, 1.0f);
    let x_1157 : f32 = u_xlat42;
    let x_1158 : f32 = u_xlat42;
    u_xlat42 = (x_1157 * x_1158);
    let x_1160 : f32 = u_xlat40;
    let x_1161 : f32 = u_xlat42;
    u_xlat40 = (x_1160 * x_1161);
    let x_1164 : vec3<f32> = u_xlat6;
    let x_1166 : i32 = u_xlati3;
    let x_1168 : vec4<f32> = x_1089.x_AdditionalLightsColor[x_1166];
    u_xlat10 = (vec3<f32>(x_1164.x, x_1164.x, x_1164.x) * vec3<f32>(x_1168.x, x_1168.y, x_1168.z));
    let x_1171 : vec3<f32> = u_xlat14;
    let x_1172 : vec3<f32> = u_xlat9;
    u_xlat3.x = dot(x_1171, x_1172);
    let x_1176 : f32 = u_xlat3.x;
    u_xlat3.x = clamp(x_1176, 0.0f, 1.0f);
    let x_1180 : f32 = u_xlat3.x;
    let x_1181 : f32 = u_xlat40;
    u_xlat3.x = (x_1180 * x_1181);
    let x_1184 : vec4<f32> = u_xlat3;
    let x_1186 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1184.x, x_1184.x, x_1184.x) * x_1186);
    let x_1188 : vec4<f32> = u_xlat8;
    let x_1190 : f32 = u_xlat41;
    let x_1193 : vec4<f32> = u_xlat5;
    let x_1195 : vec3<f32> = ((vec3<f32>(x_1188.x, x_1188.y, x_1188.z) * vec3<f32>(x_1190, x_1190, x_1190)) + vec3<f32>(x_1193.x, x_1193.y, x_1193.z));
    let x_1196 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1195.x, x_1195.y, x_1195.z, x_1196.w);
    let x_1198 : vec4<f32> = u_xlat8;
    let x_1200 : vec4<f32> = u_xlat8;
    u_xlat3.x = dot(vec3<f32>(x_1198.x, x_1198.y, x_1198.z), vec3<f32>(x_1200.x, x_1200.y, x_1200.z));
    let x_1205 : f32 = u_xlat3.x;
    u_xlat3.x = max(x_1205, 1.17549435e-37f);
    let x_1209 : f32 = u_xlat3.x;
    u_xlat3.x = inverseSqrt(x_1209);
    let x_1212 : vec4<f32> = u_xlat3;
    let x_1214 : vec4<f32> = u_xlat8;
    let x_1216 : vec3<f32> = (vec3<f32>(x_1212.x, x_1212.x, x_1212.x) * vec3<f32>(x_1214.x, x_1214.y, x_1214.z));
    let x_1217 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1216.x, x_1216.y, x_1216.z, x_1217.w);
    let x_1219 : vec3<f32> = u_xlat14;
    let x_1220 : vec4<f32> = u_xlat8;
    u_xlat3.x = dot(x_1219, vec3<f32>(x_1220.x, x_1220.y, x_1220.z));
    let x_1225 : f32 = u_xlat3.x;
    u_xlat3.x = clamp(x_1225, 0.0f, 1.0f);
    let x_1228 : vec3<f32> = u_xlat9;
    let x_1229 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(x_1228, vec3<f32>(x_1229.x, x_1229.y, x_1229.z));
    let x_1232 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1232, 0.0f, 1.0f);
    let x_1235 : f32 = u_xlat3.x;
    let x_1237 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1235 * x_1237);
    let x_1241 : f32 = u_xlat3.x;
    let x_1243 : f32 = u_xlat12.x;
    u_xlat3.x = ((x_1241 * x_1243) + 1.000010014f);
    let x_1247 : f32 = u_xlat40;
    let x_1248 : f32 = u_xlat40;
    u_xlat40 = (x_1247 * x_1248);
    let x_1251 : f32 = u_xlat3.x;
    let x_1253 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1251 * x_1253);
    let x_1256 : f32 = u_xlat40;
    u_xlat40 = max(x_1256, 0.100000001f);
    let x_1259 : f32 = u_xlat3.x;
    let x_1260 : f32 = u_xlat40;
    u_xlat3.x = (x_1259 * x_1260);
    let x_1263 : f32 = u_xlat37;
    let x_1265 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1263 * x_1265);
    let x_1268 : f32 = u_xlat35;
    let x_1270 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1268 / x_1270);
    let x_1273 : vec4<f32> = u_xlat3;
    let x_1276 : vec3<f32> = u_xlat2;
    let x_1277 : vec3<f32> = ((vec3<f32>(x_1273.x, x_1273.x, x_1273.x) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1276);
    let x_1278 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1277.x, x_1277.y, x_1277.z, x_1278.w);
    let x_1280 : vec4<f32> = u_xlat8;
    let x_1282 : vec3<f32> = u_xlat10;
    let x_1284 : vec3<f32> = u_xlat7;
    u_xlat7 = ((vec3<f32>(x_1280.x, x_1280.y, x_1280.z) * x_1282) + x_1284);

    continuing {
      let x_1286 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1286 + bitcast<u32>(1i));
    }
  }
  let x_1288 : vec4<f32> = u_xlat4;
  let x_1290 : f32 = u_xlat38;
  let x_1293 : vec3<f32> = u_xlat17;
  u_xlat2 = ((vec3<f32>(x_1288.x, x_1288.y, x_1288.z) * vec3<f32>(x_1290, x_1290, x_1290)) + x_1293);
  let x_1295 : vec3<f32> = u_xlat7;
  let x_1296 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1295 + x_1296);
  let x_1300 : vec4<f32> = vs_INTERP4;
  let x_1302 : vec3<f32> = u_xlat0;
  let x_1304 : vec3<f32> = u_xlat2;
  let x_1305 : vec3<f32> = ((vec3<f32>(x_1300.w, x_1300.w, x_1300.w) * x_1302) + x_1304);
  let x_1306 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1305.x, x_1305.y, x_1305.z, x_1306.w);
  let x_1308 : bool = u_xlatb23;
  if (x_1308) {
    let x_1313 : f32 = u_xlat1.x;
    x_1309 = x_1313;
  } else {
    x_1309 = 1.0f;
  }
  let x_1315 : f32 = x_1309;
  SV_Target0.w = x_1315;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(4) vs_INTERP4_param : vec4<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(5) vs_INTERP5_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP5 = vs_INTERP5_param;
  main_1();
  return main_out(SV_Target0);
}

