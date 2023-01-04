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
  x_RenderingLayerMaxInt : u32,
  x_RenderingLayerRcpMaxInt : f32,
  @size(8)
  padding_1 : u32,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_ProjectionParams : vec4<f32>,
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
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

@group(1) @binding(1) var<uniform> x_1107 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

var<private> SV_Target1 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat36 : f32;
  var u_xlat15 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlatb4 : vec4<bool>;
  var u_xlatu36 : u32;
  var u_xlati36 : i32;
  var txVec0 : vec3<f32>;
  var u_xlat38 : f32;
  var u_xlatb38 : bool;
  var u_xlatb1 : bool;
  var x_404 : f32;
  var u_xlat13 : vec3<f32>;
  var u_xlat25 : f32;
  var u_xlat37 : f32;
  var u_xlatb25 : bool;
  var x_453 : f32;
  var u_xlatb13 : vec3<bool>;
  var x_612 : vec3<f32>;
  var u_xlat40 : f32;
  var u_xlat41 : f32;
  var u_xlat18 : f32;
  var u_xlat30 : f32;
  var u_xlat42 : f32;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec2<f32>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu38 : u32;
  var u_xlati3 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati38 : i32;
  var u_xlat21 : vec3<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlat11 : vec3<f32>;
  var x_1336 : f32;
  var u_xlatu0 : u32;
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
  u_xlat36 = dot(x_106, x_107);
  let x_109 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_109);
  let x_112 : f32 = u_xlat36;
  let x_114 : vec4<f32> = u_xlat4;
  u_xlat15 = (vec3<f32>(x_112, x_112, x_112) * vec3<f32>(x_114.x, x_114.y, x_114.z));
  let x_120 : f32 = vs_INTERP4.y;
  u_xlat36 = (x_120 * 200.0f);
  let x_123 : f32 = u_xlat36;
  u_xlat36 = min(x_123, 1.0f);
  let x_125 : f32 = u_xlat36;
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
  u_xlat36 = dot(x_246, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_251 : f32 = u_xlat36;
  u_xlat36 = (-(x_251) + 4.0f);
  let x_256 : f32 = u_xlat36;
  u_xlatu36 = u32(x_256);
  let x_260 : u32 = u_xlatu36;
  u_xlati36 = (bitcast<i32>(x_260) << bitcast<u32>(2i));
  let x_263 : vec3<f32> = vs_INTERP0;
  let x_266 : i32 = u_xlati36;
  let x_269 : i32 = u_xlati36;
  let x_273 : vec4<f32> = x_138.x_MainLightWorldToShadow[((x_266 + 1i) / 4i)][((x_269 + 1i) % 4i)];
  let x_275 : vec3<f32> = (vec3<f32>(x_263.y, x_263.y, x_263.y) * vec3<f32>(x_273.x, x_273.y, x_273.z));
  let x_276 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_275.x, x_275.y, x_275.z, x_276.w);
  let x_278 : i32 = u_xlati36;
  let x_280 : i32 = u_xlati36;
  let x_283 : vec4<f32> = x_138.x_MainLightWorldToShadow[(x_278 / 4i)][(x_280 % 4i)];
  let x_285 : vec3<f32> = vs_INTERP0;
  let x_288 : vec4<f32> = u_xlat4;
  let x_290 : vec3<f32> = ((vec3<f32>(x_283.x, x_283.y, x_283.z) * vec3<f32>(x_285.x, x_285.x, x_285.x)) + vec3<f32>(x_288.x, x_288.y, x_288.z));
  let x_291 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_290.x, x_290.y, x_290.z, x_291.w);
  let x_293 : i32 = u_xlati36;
  let x_296 : i32 = u_xlati36;
  let x_300 : vec4<f32> = x_138.x_MainLightWorldToShadow[((x_293 + 2i) / 4i)][((x_296 + 2i) % 4i)];
  let x_302 : vec3<f32> = vs_INTERP0;
  let x_305 : vec4<f32> = u_xlat4;
  let x_307 : vec3<f32> = ((vec3<f32>(x_300.x, x_300.y, x_300.z) * vec3<f32>(x_302.z, x_302.z, x_302.z)) + vec3<f32>(x_305.x, x_305.y, x_305.z));
  let x_308 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_307.x, x_307.y, x_307.z, x_308.w);
  let x_310 : vec4<f32> = u_xlat4;
  let x_312 : i32 = u_xlati36;
  let x_315 : i32 = u_xlati36;
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
  u_xlat36 = x_342;
  let x_346 : f32 = x_138.x_MainLightShadowParams.x;
  u_xlat38 = (-(x_346) + 1.0f);
  let x_349 : f32 = u_xlat36;
  let x_351 : f32 = x_138.x_MainLightShadowParams.x;
  let x_353 : f32 = u_xlat38;
  u_xlat36 = ((x_349 * x_351) + x_353);
  let x_357 : f32 = u_xlat4.z;
  u_xlatb38 = (0.0f >= x_357);
  let x_360 : f32 = u_xlat4.z;
  u_xlatb4.x = (x_360 >= 1.0f);
  let x_363 : bool = u_xlatb38;
  let x_365 : bool = u_xlatb4.x;
  u_xlatb38 = (x_363 | x_365);
  let x_367 : bool = u_xlatb38;
  let x_368 : f32 = u_xlat36;
  u_xlat36 = select(x_368, 1.0f, x_367);
  let x_370 : vec3<f32> = u_xlat0;
  let x_372 : vec4<f32> = x_66.x_MainLightPosition;
  u_xlat0.x = dot(x_370, -(vec3<f32>(x_372.x, x_372.y, x_372.z)));
  let x_378 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_378, 0.0f, 1.0f);
  let x_381 : f32 = u_xlat36;
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
  u_xlat13.x = (x_414 + -0.400000006f);
  let x_420 : f32 = u_xlat1.w;
  u_xlat25 = dpdxCoarse(x_420);
  let x_424 : f32 = u_xlat1.w;
  u_xlat37 = dpdyCoarse(x_424);
  let x_426 : f32 = u_xlat37;
  let x_428 : f32 = u_xlat25;
  u_xlat25 = (abs(x_426) + abs(x_428));
  let x_431 : f32 = u_xlat25;
  u_xlat25 = max(x_431, 0.0001f);
  let x_435 : f32 = u_xlat13.x;
  let x_436 : f32 = u_xlat25;
  u_xlat13.x = (x_435 / x_436);
  let x_440 : f32 = u_xlat13.x;
  u_xlat13.x = (x_440 + 0.5f);
  let x_445 : f32 = u_xlat13.x;
  u_xlat13.x = clamp(x_445, 0.0f, 1.0f);
  let x_450 : f32 = x_66.x_AlphaToMaskAvailable;
  u_xlatb25 = !((x_450 == 0.0f));
  let x_452 : bool = u_xlatb25;
  if (x_452) {
    let x_457 : f32 = u_xlat13.x;
    x_453 = x_457;
  } else {
    let x_460 : f32 = u_xlat1.x;
    x_453 = x_460;
  }
  let x_461 : f32 = x_453;
  u_xlat1.x = x_461;
  let x_464 : f32 = u_xlat1.x;
  u_xlat13.x = (x_464 + -0.0001f);
  let x_472 : f32 = u_xlat13.x;
  u_xlatb13.x = (x_472 < 0.0f);
  let x_476 : bool = u_xlatb13.x;
  if (((select(0i, 1i, x_476) * -1i) != 0i)) {
    discard;
  }
  let x_486 : f32 = vs_INTERP2.w;
  u_xlatb13.x = (0.0f < x_486);
  let x_494 : f32 = x_492.unity_WorldTransformParams.w;
  u_xlatb13.z = (x_494 >= 0.0f);
  let x_498 : bool = u_xlatb13.x;
  u_xlat13.x = select(-1.0f, 1.0f, x_498);
  let x_502 : bool = u_xlatb13.z;
  u_xlat13.z = select(-1.0f, 1.0f, x_502);
  let x_506 : f32 = u_xlat13.z;
  let x_508 : f32 = u_xlat13.x;
  u_xlat13.x = (x_506 * x_508);
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
  let x_529 : vec3<f32> = u_xlat13;
  let x_531 : vec4<f32> = u_xlat4;
  let x_533 : vec3<f32> = (vec3<f32>(x_529.x, x_529.x, x_529.x) * vec3<f32>(x_531.x, x_531.y, x_531.z));
  let x_534 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_533.x, x_533.y, x_533.z, x_534.w);
  let x_536 : vec3<f32> = u_xlat15;
  let x_538 : vec4<f32> = u_xlat4;
  let x_540 : vec3<f32> = (vec3<f32>(x_536.y, x_536.y, x_536.y) * vec3<f32>(x_538.x, x_538.y, x_538.z));
  let x_541 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_540.x, x_540.y, x_540.z, x_541.w);
  let x_543 : vec3<f32> = u_xlat15;
  let x_545 : vec4<f32> = vs_INTERP2;
  let x_548 : vec4<f32> = u_xlat4;
  let x_550 : vec3<f32> = ((vec3<f32>(x_543.x, x_543.x, x_543.x) * vec3<f32>(x_545.x, x_545.y, x_545.z)) + vec3<f32>(x_548.x, x_548.y, x_548.z));
  let x_551 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_550.x, x_550.y, x_550.z, x_551.w);
  let x_553 : vec3<f32> = u_xlat15;
  let x_555 : vec3<f32> = vs_INTERP1;
  let x_557 : vec4<f32> = u_xlat4;
  u_xlat15 = ((vec3<f32>(x_553.z, x_553.z, x_553.z) * x_555) + vec3<f32>(x_557.x, x_557.y, x_557.z));
  let x_560 : vec3<f32> = u_xlat15;
  let x_561 : vec3<f32> = u_xlat15;
  u_xlat13.x = dot(x_560, x_561);
  let x_565 : f32 = u_xlat13.x;
  u_xlat13.x = inverseSqrt(x_565);
  let x_568 : vec3<f32> = u_xlat13;
  let x_570 : vec3<f32> = u_xlat15;
  u_xlat15 = (vec3<f32>(x_568.x, x_568.x, x_568.x) * x_570);
  let x_574 : f32 = x_66.unity_OrthoParams.w;
  u_xlatb13.x = (x_574 == 0.0f);
  let x_577 : vec3<f32> = vs_INTERP0;
  let x_582 : vec3<f32> = x_66.x_WorldSpaceCameraPos;
  let x_583 : vec3<f32> = (-(x_577) + x_582);
  let x_584 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_583.x, x_583.y, x_583.z, x_584.w);
  let x_586 : vec4<f32> = u_xlat4;
  let x_588 : vec4<f32> = u_xlat4;
  u_xlat37 = dot(vec3<f32>(x_586.x, x_586.y, x_586.z), vec3<f32>(x_588.x, x_588.y, x_588.z));
  let x_591 : f32 = u_xlat37;
  u_xlat37 = inverseSqrt(x_591);
  let x_593 : f32 = u_xlat37;
  let x_595 : vec4<f32> = u_xlat4;
  let x_597 : vec3<f32> = (vec3<f32>(x_593, x_593, x_593) * vec3<f32>(x_595.x, x_595.y, x_595.z));
  let x_598 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_597.x, x_597.y, x_597.z, x_598.w);
  let x_602 : f32 = x_66.unity_MatrixV[0i].z;
  u_xlat5.x = x_602;
  let x_605 : f32 = x_66.unity_MatrixV[1i].z;
  u_xlat5.y = x_605;
  let x_608 : f32 = x_66.unity_MatrixV[2i].z;
  u_xlat5.z = x_608;
  let x_611 : bool = u_xlatb13.x;
  if (x_611) {
    let x_615 : vec4<f32> = u_xlat4;
    x_612 = vec3<f32>(x_615.x, x_615.y, x_615.z);
  } else {
    let x_618 : vec4<f32> = u_xlat5;
    x_612 = vec3<f32>(x_618.x, x_618.y, x_618.z);
  }
  let x_620 : vec3<f32> = x_612;
  let x_621 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_620.x, x_620.y, x_620.z, x_621.w);
  let x_624 : f32 = vs_INTERP0.y;
  let x_626 : f32 = x_66.unity_MatrixV[1i].z;
  u_xlat13.x = (x_624 * x_626);
  let x_630 : f32 = x_66.unity_MatrixV[0i].z;
  let x_632 : f32 = vs_INTERP0.x;
  let x_635 : f32 = u_xlat13.x;
  u_xlat13.x = ((x_630 * x_632) + x_635);
  let x_639 : f32 = x_66.unity_MatrixV[2i].z;
  let x_641 : f32 = vs_INTERP0.z;
  let x_644 : f32 = u_xlat13.x;
  u_xlat13.x = ((x_639 * x_641) + x_644);
  let x_648 : f32 = u_xlat13.x;
  let x_650 : f32 = x_66.unity_MatrixV[3i].z;
  u_xlat13.x = (x_648 + x_650);
  let x_654 : f32 = u_xlat13.x;
  let x_658 : f32 = x_66.x_ProjectionParams.y;
  u_xlat13.x = (-(x_654) + -(x_658));
  let x_663 : f32 = u_xlat13.x;
  u_xlat13.x = max(x_663, 0.0f);
  let x_667 : f32 = u_xlat13.x;
  let x_670 : f32 = x_66.unity_FogParams.x;
  u_xlat13.x = (x_667 * x_670);
  let x_680 : vec2<f32> = vs_INTERP5;
  let x_682 : f32 = x_66.x_GlobalMipBias.x;
  let x_683 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_680, x_682);
  let x_684 : vec3<f32> = vec3<f32>(x_683.x, x_683.y, x_683.z);
  let x_685 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_684.x, x_684.y, x_684.z, x_685.w);
  let x_689 : vec4<f32> = x_66.x_ScaledScreenParams;
  let x_690 : vec2<f32> = vec2<f32>(x_689.x, x_689.y);
  let x_694 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_690.x, x_690.y));
  let x_695 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_694.x, x_694.y, x_695.z);
  let x_697 : vec3<f32> = u_xlat6;
  let x_699 : vec4<f32> = hlslcc_FragCoord;
  let x_701 : vec2<f32> = (vec2<f32>(x_697.x, x_697.y) * vec2<f32>(x_699.x, x_699.y));
  let x_702 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_701.x, x_701.y, x_702.z);
  let x_705 : f32 = u_xlat6.y;
  let x_708 : f32 = x_66.x_ScaleBiasRt.x;
  let x_711 : f32 = x_66.x_ScaleBiasRt.y;
  u_xlat37 = ((x_705 * x_708) + x_711);
  let x_713 : f32 = u_xlat37;
  u_xlat6.z = (-(x_713) + 1.0f);
  let x_718 : f32 = u_xlat3.x;
  u_xlat3.x = x_718;
  let x_721 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_721, 0.0f, 1.0f);
  let x_725 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_725, 1.0f);
  let x_728 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_728 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_733 : f32 = u_xlat3.x;
  u_xlat37 = (-(x_733) + 1.0f);
  let x_736 : f32 = u_xlat37;
  let x_737 : f32 = u_xlat37;
  u_xlat38 = (x_736 * x_737);
  let x_739 : f32 = u_xlat38;
  u_xlat38 = max(x_739, 0.0078125f);
  let x_743 : f32 = u_xlat38;
  let x_744 : f32 = u_xlat38;
  u_xlat40 = (x_743 * x_744);
  let x_747 : f32 = u_xlat3.x;
  u_xlat3.x = (x_747 + 0.040000021f);
  let x_752 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_752, 1.0f);
  let x_756 : f32 = u_xlat38;
  u_xlat41 = ((x_756 * 4.0f) + 2.0f);
  let x_764 : vec3<f32> = u_xlat6;
  let x_767 : f32 = x_66.x_GlobalMipBias.x;
  let x_768 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_764.x, x_764.z), x_767);
  u_xlat6.x = x_768.x;
  let x_773 : f32 = u_xlat6.x;
  u_xlat18 = (x_773 + -1.0f);
  let x_776 : f32 = x_66.x_AmbientOcclusionParam.w;
  let x_777 : f32 = u_xlat18;
  u_xlat18 = ((x_776 * x_777) + 1.0f);
  let x_781 : f32 = u_xlat6.x;
  let x_783 : f32 = vs_INTERP4.w;
  u_xlat6.x = min(x_781, x_783);
  let x_786 : vec3<f32> = vs_INTERP0;
  let x_788 : vec3<f32> = x_66.x_WorldSpaceCameraPos;
  u_xlat7 = (x_786 + -(x_788));
  let x_792 : vec3<f32> = u_xlat7;
  let x_793 : vec3<f32> = u_xlat7;
  u_xlat30 = dot(x_792, x_793);
  let x_795 : f32 = u_xlat30;
  let x_797 : f32 = x_138.x_MainLightShadowParams.z;
  let x_800 : f32 = x_138.x_MainLightShadowParams.w;
  u_xlat30 = ((x_795 * x_797) + x_800);
  let x_802 : f32 = u_xlat30;
  u_xlat30 = clamp(x_802, 0.0f, 1.0f);
  let x_805 : f32 = u_xlat36;
  u_xlat42 = (-(x_805) + 1.0f);
  let x_808 : f32 = u_xlat30;
  let x_809 : f32 = u_xlat42;
  let x_811 : f32 = u_xlat36;
  u_xlat36 = ((x_808 * x_809) + x_811);
  let x_813 : f32 = u_xlat18;
  let x_816 : vec4<f32> = x_66.x_MainLightColor;
  u_xlat7 = (vec3<f32>(x_813, x_813, x_813) * vec3<f32>(x_816.x, x_816.y, x_816.z));
  let x_819 : vec4<f32> = u_xlat4;
  let x_822 : vec3<f32> = u_xlat15;
  u_xlat30 = dot(-(vec3<f32>(x_819.x, x_819.y, x_819.z)), x_822);
  let x_824 : f32 = u_xlat30;
  let x_825 : f32 = u_xlat30;
  u_xlat30 = (x_824 + x_825);
  let x_828 : vec3<f32> = u_xlat15;
  let x_829 : f32 = u_xlat30;
  let x_833 : vec4<f32> = u_xlat4;
  let x_836 : vec3<f32> = ((x_828 * -(vec3<f32>(x_829, x_829, x_829))) + -(vec3<f32>(x_833.x, x_833.y, x_833.z)));
  let x_837 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_836.x, x_836.y, x_836.z, x_837.w);
  let x_839 : vec3<f32> = u_xlat15;
  let x_840 : vec4<f32> = u_xlat4;
  u_xlat30 = dot(x_839, vec3<f32>(x_840.x, x_840.y, x_840.z));
  let x_843 : f32 = u_xlat30;
  u_xlat30 = clamp(x_843, 0.0f, 1.0f);
  let x_845 : f32 = u_xlat30;
  u_xlat30 = (-(x_845) + 1.0f);
  let x_848 : f32 = u_xlat30;
  let x_849 : f32 = u_xlat30;
  u_xlat30 = (x_848 * x_849);
  let x_851 : f32 = u_xlat30;
  let x_852 : f32 = u_xlat30;
  u_xlat30 = (x_851 * x_852);
  let x_854 : f32 = u_xlat37;
  u_xlat42 = ((-(x_854) * 0.699999988f) + 1.700000048f);
  let x_860 : f32 = u_xlat37;
  let x_861 : f32 = u_xlat42;
  u_xlat37 = (x_860 * x_861);
  let x_863 : f32 = u_xlat37;
  u_xlat37 = (x_863 * 6.0f);
  let x_874 : vec4<f32> = u_xlat8;
  let x_876 : f32 = u_xlat37;
  let x_877 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_874.x, x_874.y, x_874.z), x_876);
  u_xlat8 = x_877;
  let x_879 : f32 = u_xlat8.w;
  u_xlat37 = (x_879 + -1.0f);
  let x_882 : f32 = x_492.unity_SpecCube0_HDR.w;
  let x_883 : f32 = u_xlat37;
  u_xlat37 = ((x_882 * x_883) + 1.0f);
  let x_886 : f32 = u_xlat37;
  u_xlat37 = max(x_886, 0.0f);
  let x_888 : f32 = u_xlat37;
  u_xlat37 = log2(x_888);
  let x_890 : f32 = u_xlat37;
  let x_892 : f32 = x_492.unity_SpecCube0_HDR.y;
  u_xlat37 = (x_890 * x_892);
  let x_894 : f32 = u_xlat37;
  u_xlat37 = exp2(x_894);
  let x_896 : f32 = u_xlat37;
  let x_898 : f32 = x_492.unity_SpecCube0_HDR.x;
  u_xlat37 = (x_896 * x_898);
  let x_900 : vec4<f32> = u_xlat8;
  let x_902 : f32 = u_xlat37;
  let x_904 : vec3<f32> = (vec3<f32>(x_900.x, x_900.y, x_900.z) * vec3<f32>(x_902, x_902, x_902));
  let x_905 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_904.x, x_904.y, x_904.z, x_905.w);
  let x_909 : f32 = u_xlat38;
  let x_911 : f32 = u_xlat38;
  u_xlat9 = ((vec2<f32>(x_909, x_909) * vec2<f32>(x_911, x_911)) + vec2<f32>(-1.0f, 1.0f));
  let x_917 : f32 = u_xlat9.y;
  u_xlat37 = (1.0f / x_917);
  let x_920 : f32 = u_xlat3.x;
  u_xlat38 = (x_920 + -0.039999999f);
  let x_923 : f32 = u_xlat30;
  let x_924 : f32 = u_xlat38;
  u_xlat38 = ((x_923 * x_924) + 0.039999999f);
  let x_928 : f32 = u_xlat37;
  let x_929 : f32 = u_xlat38;
  u_xlat37 = (x_928 * x_929);
  let x_931 : f32 = u_xlat37;
  let x_933 : vec4<f32> = u_xlat8;
  let x_935 : vec3<f32> = (vec3<f32>(x_931, x_931, x_931) * vec3<f32>(x_933.x, x_933.y, x_933.z));
  let x_936 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_935.x, x_935.y, x_935.z, x_936.w);
  let x_938 : vec4<f32> = u_xlat5;
  let x_940 : vec3<f32> = u_xlat2;
  let x_942 : vec4<f32> = u_xlat8;
  let x_944 : vec3<f32> = ((vec3<f32>(x_938.x, x_938.y, x_938.z) * x_940) + vec3<f32>(x_942.x, x_942.y, x_942.z));
  let x_945 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_944.x, x_944.y, x_944.z, x_945.w);
  let x_947 : f32 = u_xlat36;
  let x_949 : f32 = x_492.unity_LightData.z;
  u_xlat36 = (x_947 * x_949);
  let x_951 : vec3<f32> = u_xlat15;
  let x_953 : vec4<f32> = x_66.x_MainLightPosition;
  u_xlat37 = dot(x_951, vec3<f32>(x_953.x, x_953.y, x_953.z));
  let x_956 : f32 = u_xlat37;
  u_xlat37 = clamp(x_956, 0.0f, 1.0f);
  let x_958 : f32 = u_xlat36;
  let x_959 : f32 = u_xlat37;
  u_xlat36 = (x_958 * x_959);
  let x_961 : f32 = u_xlat36;
  let x_963 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_961, x_961, x_961) * x_963);
  let x_965 : vec4<f32> = u_xlat4;
  let x_968 : vec4<f32> = x_66.x_MainLightPosition;
  let x_970 : vec3<f32> = (vec3<f32>(x_965.x, x_965.y, x_965.z) + vec3<f32>(x_968.x, x_968.y, x_968.z));
  let x_971 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_970.x, x_970.y, x_970.z, x_971.w);
  let x_973 : vec4<f32> = u_xlat8;
  let x_975 : vec4<f32> = u_xlat8;
  u_xlat36 = dot(vec3<f32>(x_973.x, x_973.y, x_973.z), vec3<f32>(x_975.x, x_975.y, x_975.z));
  let x_978 : f32 = u_xlat36;
  u_xlat36 = max(x_978, 1.17549435e-37f);
  let x_981 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_981);
  let x_983 : f32 = u_xlat36;
  let x_985 : vec4<f32> = u_xlat8;
  let x_987 : vec3<f32> = (vec3<f32>(x_983, x_983, x_983) * vec3<f32>(x_985.x, x_985.y, x_985.z));
  let x_988 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_987.x, x_987.y, x_987.z, x_988.w);
  let x_990 : vec3<f32> = u_xlat15;
  let x_991 : vec4<f32> = u_xlat8;
  u_xlat36 = dot(x_990, vec3<f32>(x_991.x, x_991.y, x_991.z));
  let x_994 : f32 = u_xlat36;
  u_xlat36 = clamp(x_994, 0.0f, 1.0f);
  let x_997 : vec4<f32> = x_66.x_MainLightPosition;
  let x_999 : vec4<f32> = u_xlat8;
  u_xlat37 = dot(vec3<f32>(x_997.x, x_997.y, x_997.z), vec3<f32>(x_999.x, x_999.y, x_999.z));
  let x_1002 : f32 = u_xlat37;
  u_xlat37 = clamp(x_1002, 0.0f, 1.0f);
  let x_1004 : f32 = u_xlat36;
  let x_1005 : f32 = u_xlat36;
  u_xlat36 = (x_1004 * x_1005);
  let x_1007 : f32 = u_xlat36;
  let x_1009 : f32 = u_xlat9.x;
  u_xlat36 = ((x_1007 * x_1009) + 1.000010014f);
  let x_1013 : f32 = u_xlat37;
  let x_1014 : f32 = u_xlat37;
  u_xlat37 = (x_1013 * x_1014);
  let x_1016 : f32 = u_xlat36;
  let x_1017 : f32 = u_xlat36;
  u_xlat36 = (x_1016 * x_1017);
  let x_1019 : f32 = u_xlat37;
  u_xlat37 = max(x_1019, 0.100000001f);
  let x_1022 : f32 = u_xlat36;
  let x_1023 : f32 = u_xlat37;
  u_xlat36 = (x_1022 * x_1023);
  let x_1025 : f32 = u_xlat41;
  let x_1026 : f32 = u_xlat36;
  u_xlat36 = (x_1025 * x_1026);
  let x_1028 : f32 = u_xlat40;
  let x_1029 : f32 = u_xlat36;
  u_xlat36 = (x_1028 / x_1029);
  let x_1031 : f32 = u_xlat36;
  let x_1035 : vec3<f32> = u_xlat2;
  let x_1036 : vec3<f32> = ((vec3<f32>(x_1031, x_1031, x_1031) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1035);
  let x_1037 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1036.x, x_1036.y, x_1036.z, x_1037.w);
  let x_1039 : vec3<f32> = u_xlat7;
  let x_1040 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_1039 * vec3<f32>(x_1040.x, x_1040.y, x_1040.z));
  let x_1045 : f32 = x_66.x_AdditionalLightsCount.x;
  let x_1047 : f32 = x_492.unity_LightData.y;
  u_xlat36 = min(x_1045, x_1047);
  let x_1049 : f32 = u_xlat36;
  u_xlatu36 = bitcast<u32>(i32(x_1049));
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1061 : u32 = u_xlatu_loop_1;
    let x_1062 : u32 = u_xlatu36;
    if ((x_1061 < x_1062)) {
    } else {
      break;
    }
    let x_1065 : u32 = u_xlatu_loop_1;
    u_xlatu38 = (x_1065 >> 2u);
    let x_1068 : u32 = u_xlatu_loop_1;
    u_xlati3 = bitcast<i32>((x_1068 & 3u));
    let x_1071 : u32 = u_xlatu38;
    let x_1074 : vec4<f32> = x_492.unity_LightIndices[bitcast<i32>(x_1071)];
    let x_1084 : i32 = u_xlati3;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1089 : vec4<u32> = indexable[x_1084];
    u_xlat38 = dot(x_1074, bitcast<vec4<f32>>(x_1089));
    let x_1093 : f32 = u_xlat38;
    u_xlati38 = i32(x_1093);
    let x_1096 : vec3<f32> = vs_INTERP0;
    let x_1108 : i32 = u_xlati38;
    let x_1110 : vec4<f32> = x_1107.x_AdditionalLightsPosition[x_1108];
    let x_1113 : i32 = u_xlati38;
    let x_1115 : vec4<f32> = x_1107.x_AdditionalLightsPosition[x_1113];
    u_xlat21 = ((-(x_1096) * vec3<f32>(x_1110.w, x_1110.w, x_1110.w)) + vec3<f32>(x_1115.x, x_1115.y, x_1115.z));
    let x_1118 : vec3<f32> = u_xlat21;
    let x_1119 : vec3<f32> = u_xlat21;
    u_xlat3.x = dot(x_1118, x_1119);
    let x_1123 : f32 = u_xlat3.x;
    u_xlat3.x = max(x_1123, 6.10351562e-05f);
    let x_1128 : f32 = u_xlat3.x;
    u_xlat30 = inverseSqrt(x_1128);
    let x_1131 : f32 = u_xlat30;
    let x_1133 : vec3<f32> = u_xlat21;
    u_xlat10 = (vec3<f32>(x_1131, x_1131, x_1131) * x_1133);
    let x_1136 : f32 = u_xlat3.x;
    u_xlat42 = (1.0f / x_1136);
    let x_1139 : f32 = u_xlat3.x;
    let x_1140 : i32 = u_xlati38;
    let x_1142 : f32 = x_1107.x_AdditionalLightsAttenuation[x_1140].x;
    u_xlat3.x = (x_1139 * x_1142);
    let x_1146 : f32 = u_xlat3.x;
    let x_1149 : f32 = u_xlat3.x;
    u_xlat3.x = ((-(x_1146) * x_1149) + 1.0f);
    let x_1154 : f32 = u_xlat3.x;
    u_xlat3.x = max(x_1154, 0.0f);
    let x_1158 : f32 = u_xlat3.x;
    let x_1160 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1158 * x_1160);
    let x_1164 : f32 = u_xlat3.x;
    let x_1165 : f32 = u_xlat42;
    u_xlat3.x = (x_1164 * x_1165);
    let x_1168 : i32 = u_xlati38;
    let x_1170 : vec4<f32> = x_1107.x_AdditionalLightsSpotDir[x_1168];
    let x_1172 : vec3<f32> = u_xlat10;
    u_xlat42 = dot(vec3<f32>(x_1170.x, x_1170.y, x_1170.z), x_1172);
    let x_1174 : f32 = u_xlat42;
    let x_1175 : i32 = u_xlati38;
    let x_1177 : f32 = x_1107.x_AdditionalLightsAttenuation[x_1175].z;
    let x_1179 : i32 = u_xlati38;
    let x_1181 : f32 = x_1107.x_AdditionalLightsAttenuation[x_1179].w;
    u_xlat42 = ((x_1174 * x_1177) + x_1181);
    let x_1183 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1183, 0.0f, 1.0f);
    let x_1185 : f32 = u_xlat42;
    let x_1186 : f32 = u_xlat42;
    u_xlat42 = (x_1185 * x_1186);
    let x_1189 : f32 = u_xlat3.x;
    let x_1190 : f32 = u_xlat42;
    u_xlat3.x = (x_1189 * x_1190);
    let x_1194 : f32 = u_xlat18;
    let x_1196 : i32 = u_xlati38;
    let x_1198 : vec4<f32> = x_1107.x_AdditionalLightsColor[x_1196];
    u_xlat11 = (vec3<f32>(x_1194, x_1194, x_1194) * vec3<f32>(x_1198.x, x_1198.y, x_1198.z));
    let x_1201 : vec3<f32> = u_xlat15;
    let x_1202 : vec3<f32> = u_xlat10;
    u_xlat38 = dot(x_1201, x_1202);
    let x_1204 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1204, 0.0f, 1.0f);
    let x_1206 : f32 = u_xlat38;
    let x_1208 : f32 = u_xlat3.x;
    u_xlat38 = (x_1206 * x_1208);
    let x_1210 : f32 = u_xlat38;
    let x_1212 : vec3<f32> = u_xlat11;
    u_xlat11 = (vec3<f32>(x_1210, x_1210, x_1210) * x_1212);
    let x_1214 : vec3<f32> = u_xlat21;
    let x_1215 : f32 = u_xlat30;
    let x_1218 : vec4<f32> = u_xlat4;
    u_xlat21 = ((x_1214 * vec3<f32>(x_1215, x_1215, x_1215)) + vec3<f32>(x_1218.x, x_1218.y, x_1218.z));
    let x_1221 : vec3<f32> = u_xlat21;
    let x_1222 : vec3<f32> = u_xlat21;
    u_xlat38 = dot(x_1221, x_1222);
    let x_1224 : f32 = u_xlat38;
    u_xlat38 = max(x_1224, 1.17549435e-37f);
    let x_1226 : f32 = u_xlat38;
    u_xlat38 = inverseSqrt(x_1226);
    let x_1228 : f32 = u_xlat38;
    let x_1230 : vec3<f32> = u_xlat21;
    u_xlat21 = (vec3<f32>(x_1228, x_1228, x_1228) * x_1230);
    let x_1232 : vec3<f32> = u_xlat15;
    let x_1233 : vec3<f32> = u_xlat21;
    u_xlat38 = dot(x_1232, x_1233);
    let x_1235 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1235, 0.0f, 1.0f);
    let x_1237 : vec3<f32> = u_xlat10;
    let x_1238 : vec3<f32> = u_xlat21;
    u_xlat3.x = dot(x_1237, x_1238);
    let x_1242 : f32 = u_xlat3.x;
    u_xlat3.x = clamp(x_1242, 0.0f, 1.0f);
    let x_1245 : f32 = u_xlat38;
    let x_1246 : f32 = u_xlat38;
    u_xlat38 = (x_1245 * x_1246);
    let x_1248 : f32 = u_xlat38;
    let x_1250 : f32 = u_xlat9.x;
    u_xlat38 = ((x_1248 * x_1250) + 1.000010014f);
    let x_1254 : f32 = u_xlat3.x;
    let x_1256 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1254 * x_1256);
    let x_1259 : f32 = u_xlat38;
    let x_1260 : f32 = u_xlat38;
    u_xlat38 = (x_1259 * x_1260);
    let x_1263 : f32 = u_xlat3.x;
    u_xlat3.x = max(x_1263, 0.100000001f);
    let x_1266 : f32 = u_xlat38;
    let x_1268 : f32 = u_xlat3.x;
    u_xlat38 = (x_1266 * x_1268);
    let x_1270 : f32 = u_xlat41;
    let x_1271 : f32 = u_xlat38;
    u_xlat38 = (x_1270 * x_1271);
    let x_1273 : f32 = u_xlat40;
    let x_1274 : f32 = u_xlat38;
    u_xlat38 = (x_1273 / x_1274);
    let x_1276 : f32 = u_xlat38;
    let x_1279 : vec3<f32> = u_xlat2;
    u_xlat21 = ((vec3<f32>(x_1276, x_1276, x_1276) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1279);
    let x_1281 : vec3<f32> = u_xlat21;
    let x_1282 : vec3<f32> = u_xlat11;
    let x_1284 : vec4<f32> = u_xlat8;
    let x_1286 : vec3<f32> = ((x_1281 * x_1282) + vec3<f32>(x_1284.x, x_1284.y, x_1284.z));
    let x_1287 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1286.x, x_1286.y, x_1286.z, x_1287.w);

    continuing {
      let x_1289 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1289 + bitcast<u32>(1i));
    }
  }
  let x_1291 : vec4<f32> = u_xlat5;
  let x_1293 : vec3<f32> = u_xlat6;
  let x_1296 : vec3<f32> = u_xlat7;
  u_xlat2 = ((vec3<f32>(x_1291.x, x_1291.y, x_1291.z) * vec3<f32>(x_1293.x, x_1293.x, x_1293.x)) + x_1296);
  let x_1298 : vec4<f32> = u_xlat8;
  let x_1300 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_1298.x, x_1298.y, x_1298.z) + x_1300);
  let x_1302 : vec4<f32> = vs_INTERP4;
  let x_1304 : vec3<f32> = u_xlat0;
  let x_1306 : vec3<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_1302.w, x_1302.w, x_1302.w) * x_1304) + x_1306);
  let x_1309 : f32 = u_xlat13.x;
  let x_1311 : f32 = u_xlat13.x;
  u_xlat36 = (x_1309 * -(x_1311));
  let x_1314 : f32 = u_xlat36;
  u_xlat36 = exp2(x_1314);
  let x_1316 : vec3<f32> = u_xlat0;
  let x_1319 : vec4<f32> = x_66.unity_FogColor;
  u_xlat0 = (x_1316 + -(vec3<f32>(x_1319.x, x_1319.y, x_1319.z)));
  let x_1325 : f32 = u_xlat36;
  let x_1327 : vec3<f32> = u_xlat0;
  let x_1330 : vec4<f32> = x_66.unity_FogColor;
  let x_1332 : vec3<f32> = ((vec3<f32>(x_1325, x_1325, x_1325) * x_1327) + vec3<f32>(x_1330.x, x_1330.y, x_1330.z));
  let x_1333 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1332.x, x_1332.y, x_1332.z, x_1333.w);
  let x_1335 : bool = u_xlatb25;
  if (x_1335) {
    let x_1340 : f32 = u_xlat1.x;
    x_1336 = x_1340;
  } else {
    x_1336 = 1.0f;
  }
  let x_1342 : f32 = x_1336;
  SV_Target0.w = x_1342;
  let x_1349 : u32 = x_66.x_RenderingLayerMaxInt;
  let x_1351 : f32 = x_492.unity_RenderingLayer.x;
  u_xlatu0 = (x_1349 & bitcast<u32>(x_1351));
  let x_1354 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_1354);
  let x_1359 : f32 = u_xlat0.x;
  let x_1361 : f32 = x_66.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_1359 * x_1361);
  let x_1365 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_1365, 0.0f, 1.0f);
  let x_1368 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_1368.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
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
  return main_out(SV_Target0, SV_Target1);
}

