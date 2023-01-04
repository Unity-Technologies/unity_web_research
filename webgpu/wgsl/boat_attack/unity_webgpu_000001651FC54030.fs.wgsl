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

@group(0) @binding(5) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(11) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_66 : PGlobals;

@group(1) @binding(4) var<uniform> x_78 : UnityPerMaterial;

@group(0) @binding(6) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(12) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> vs_INTERP4 : vec4<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_138 : MainLightShadows;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> vs_INTERP2 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_492 : UnityPerDraw;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP5 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1142 : AdditionalLights;

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
  var x_1371 : f32;
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
  let x_683 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_680, x_682);
  u_xlat5 = x_683;
  let x_688 : vec2<f32> = vs_INTERP5;
  let x_690 : f32 = x_66.x_GlobalMipBias.x;
  let x_691 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_688, x_690);
  u_xlat6 = vec3<f32>(x_691.x, x_691.y, x_691.z);
  let x_693 : vec4<f32> = u_xlat5;
  let x_697 : vec3<f32> = (vec3<f32>(x_693.x, x_693.y, x_693.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_698 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_697.x, x_697.y, x_697.z, x_698.w);
  let x_700 : vec3<f32> = u_xlat15;
  let x_701 : vec4<f32> = u_xlat5;
  u_xlat37 = dot(x_700, vec3<f32>(x_701.x, x_701.y, x_701.z));
  let x_704 : f32 = u_xlat37;
  u_xlat37 = (x_704 + 0.5f);
  let x_706 : f32 = u_xlat37;
  let x_708 : vec3<f32> = u_xlat6;
  let x_709 : vec3<f32> = (vec3<f32>(x_706, x_706, x_706) * x_708);
  let x_710 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_709.x, x_709.y, x_709.z, x_710.w);
  let x_713 : f32 = u_xlat5.w;
  u_xlat37 = max(x_713, 0.0001f);
  let x_715 : vec4<f32> = u_xlat5;
  let x_717 : f32 = u_xlat37;
  let x_719 : vec3<f32> = (vec3<f32>(x_715.x, x_715.y, x_715.z) / vec3<f32>(x_717, x_717, x_717));
  let x_720 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_719.x, x_719.y, x_719.z, x_720.w);
  let x_724 : vec4<f32> = x_66.x_ScaledScreenParams;
  let x_725 : vec2<f32> = vec2<f32>(x_724.x, x_724.y);
  let x_729 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_725.x, x_725.y));
  let x_730 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_729.x, x_729.y, x_730.z);
  let x_732 : vec3<f32> = u_xlat6;
  let x_734 : vec4<f32> = hlslcc_FragCoord;
  let x_736 : vec2<f32> = (vec2<f32>(x_732.x, x_732.y) * vec2<f32>(x_734.x, x_734.y));
  let x_737 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_736.x, x_736.y, x_737.z);
  let x_740 : f32 = u_xlat6.y;
  let x_743 : f32 = x_66.x_ScaleBiasRt.x;
  let x_746 : f32 = x_66.x_ScaleBiasRt.y;
  u_xlat37 = ((x_740 * x_743) + x_746);
  let x_748 : f32 = u_xlat37;
  u_xlat6.z = (-(x_748) + 1.0f);
  let x_753 : f32 = u_xlat3.x;
  u_xlat3.x = x_753;
  let x_756 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_756, 0.0f, 1.0f);
  let x_760 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_760, 1.0f);
  let x_763 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_763 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_768 : f32 = u_xlat3.x;
  u_xlat37 = (-(x_768) + 1.0f);
  let x_771 : f32 = u_xlat37;
  let x_772 : f32 = u_xlat37;
  u_xlat38 = (x_771 * x_772);
  let x_774 : f32 = u_xlat38;
  u_xlat38 = max(x_774, 0.0078125f);
  let x_778 : f32 = u_xlat38;
  let x_779 : f32 = u_xlat38;
  u_xlat40 = (x_778 * x_779);
  let x_782 : f32 = u_xlat3.x;
  u_xlat3.x = (x_782 + 0.040000021f);
  let x_787 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_787, 1.0f);
  let x_791 : f32 = u_xlat38;
  u_xlat41 = ((x_791 * 4.0f) + 2.0f);
  let x_799 : vec3<f32> = u_xlat6;
  let x_802 : f32 = x_66.x_GlobalMipBias.x;
  let x_803 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_799.x, x_799.z), x_802);
  u_xlat6.x = x_803.x;
  let x_808 : f32 = u_xlat6.x;
  u_xlat18 = (x_808 + -1.0f);
  let x_811 : f32 = x_66.x_AmbientOcclusionParam.w;
  let x_812 : f32 = u_xlat18;
  u_xlat18 = ((x_811 * x_812) + 1.0f);
  let x_816 : f32 = u_xlat6.x;
  let x_818 : f32 = vs_INTERP4.w;
  u_xlat6.x = min(x_816, x_818);
  let x_821 : vec3<f32> = vs_INTERP0;
  let x_823 : vec3<f32> = x_66.x_WorldSpaceCameraPos;
  u_xlat7 = (x_821 + -(x_823));
  let x_827 : vec3<f32> = u_xlat7;
  let x_828 : vec3<f32> = u_xlat7;
  u_xlat30 = dot(x_827, x_828);
  let x_830 : f32 = u_xlat30;
  let x_832 : f32 = x_138.x_MainLightShadowParams.z;
  let x_835 : f32 = x_138.x_MainLightShadowParams.w;
  u_xlat30 = ((x_830 * x_832) + x_835);
  let x_837 : f32 = u_xlat30;
  u_xlat30 = clamp(x_837, 0.0f, 1.0f);
  let x_840 : f32 = u_xlat36;
  u_xlat42 = (-(x_840) + 1.0f);
  let x_843 : f32 = u_xlat30;
  let x_844 : f32 = u_xlat42;
  let x_846 : f32 = u_xlat36;
  u_xlat36 = ((x_843 * x_844) + x_846);
  let x_848 : f32 = u_xlat18;
  let x_851 : vec4<f32> = x_66.x_MainLightColor;
  u_xlat7 = (vec3<f32>(x_848, x_848, x_848) * vec3<f32>(x_851.x, x_851.y, x_851.z));
  let x_854 : vec4<f32> = u_xlat4;
  let x_857 : vec3<f32> = u_xlat15;
  u_xlat30 = dot(-(vec3<f32>(x_854.x, x_854.y, x_854.z)), x_857);
  let x_859 : f32 = u_xlat30;
  let x_860 : f32 = u_xlat30;
  u_xlat30 = (x_859 + x_860);
  let x_863 : vec3<f32> = u_xlat15;
  let x_864 : f32 = u_xlat30;
  let x_868 : vec4<f32> = u_xlat4;
  let x_871 : vec3<f32> = ((x_863 * -(vec3<f32>(x_864, x_864, x_864))) + -(vec3<f32>(x_868.x, x_868.y, x_868.z)));
  let x_872 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_871.x, x_871.y, x_871.z, x_872.w);
  let x_874 : vec3<f32> = u_xlat15;
  let x_875 : vec4<f32> = u_xlat4;
  u_xlat30 = dot(x_874, vec3<f32>(x_875.x, x_875.y, x_875.z));
  let x_878 : f32 = u_xlat30;
  u_xlat30 = clamp(x_878, 0.0f, 1.0f);
  let x_880 : f32 = u_xlat30;
  u_xlat30 = (-(x_880) + 1.0f);
  let x_883 : f32 = u_xlat30;
  let x_884 : f32 = u_xlat30;
  u_xlat30 = (x_883 * x_884);
  let x_886 : f32 = u_xlat30;
  let x_887 : f32 = u_xlat30;
  u_xlat30 = (x_886 * x_887);
  let x_889 : f32 = u_xlat37;
  u_xlat42 = ((-(x_889) * 0.699999988f) + 1.700000048f);
  let x_895 : f32 = u_xlat37;
  let x_896 : f32 = u_xlat42;
  u_xlat37 = (x_895 * x_896);
  let x_898 : f32 = u_xlat37;
  u_xlat37 = (x_898 * 6.0f);
  let x_909 : vec4<f32> = u_xlat8;
  let x_911 : f32 = u_xlat37;
  let x_912 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_909.x, x_909.y, x_909.z), x_911);
  u_xlat8 = x_912;
  let x_914 : f32 = u_xlat8.w;
  u_xlat37 = (x_914 + -1.0f);
  let x_917 : f32 = x_492.unity_SpecCube0_HDR.w;
  let x_918 : f32 = u_xlat37;
  u_xlat37 = ((x_917 * x_918) + 1.0f);
  let x_921 : f32 = u_xlat37;
  u_xlat37 = max(x_921, 0.0f);
  let x_923 : f32 = u_xlat37;
  u_xlat37 = log2(x_923);
  let x_925 : f32 = u_xlat37;
  let x_927 : f32 = x_492.unity_SpecCube0_HDR.y;
  u_xlat37 = (x_925 * x_927);
  let x_929 : f32 = u_xlat37;
  u_xlat37 = exp2(x_929);
  let x_931 : f32 = u_xlat37;
  let x_933 : f32 = x_492.unity_SpecCube0_HDR.x;
  u_xlat37 = (x_931 * x_933);
  let x_935 : vec4<f32> = u_xlat8;
  let x_937 : f32 = u_xlat37;
  let x_939 : vec3<f32> = (vec3<f32>(x_935.x, x_935.y, x_935.z) * vec3<f32>(x_937, x_937, x_937));
  let x_940 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_939.x, x_939.y, x_939.z, x_940.w);
  let x_944 : f32 = u_xlat38;
  let x_946 : f32 = u_xlat38;
  u_xlat9 = ((vec2<f32>(x_944, x_944) * vec2<f32>(x_946, x_946)) + vec2<f32>(-1.0f, 1.0f));
  let x_952 : f32 = u_xlat9.y;
  u_xlat37 = (1.0f / x_952);
  let x_955 : f32 = u_xlat3.x;
  u_xlat38 = (x_955 + -0.039999999f);
  let x_958 : f32 = u_xlat30;
  let x_959 : f32 = u_xlat38;
  u_xlat38 = ((x_958 * x_959) + 0.039999999f);
  let x_963 : f32 = u_xlat37;
  let x_964 : f32 = u_xlat38;
  u_xlat37 = (x_963 * x_964);
  let x_966 : f32 = u_xlat37;
  let x_968 : vec4<f32> = u_xlat8;
  let x_970 : vec3<f32> = (vec3<f32>(x_966, x_966, x_966) * vec3<f32>(x_968.x, x_968.y, x_968.z));
  let x_971 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_970.x, x_970.y, x_970.z, x_971.w);
  let x_973 : vec4<f32> = u_xlat5;
  let x_975 : vec3<f32> = u_xlat2;
  let x_977 : vec4<f32> = u_xlat8;
  let x_979 : vec3<f32> = ((vec3<f32>(x_973.x, x_973.y, x_973.z) * x_975) + vec3<f32>(x_977.x, x_977.y, x_977.z));
  let x_980 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_979.x, x_979.y, x_979.z, x_980.w);
  let x_982 : f32 = u_xlat36;
  let x_984 : f32 = x_492.unity_LightData.z;
  u_xlat36 = (x_982 * x_984);
  let x_986 : vec3<f32> = u_xlat15;
  let x_988 : vec4<f32> = x_66.x_MainLightPosition;
  u_xlat37 = dot(x_986, vec3<f32>(x_988.x, x_988.y, x_988.z));
  let x_991 : f32 = u_xlat37;
  u_xlat37 = clamp(x_991, 0.0f, 1.0f);
  let x_993 : f32 = u_xlat36;
  let x_994 : f32 = u_xlat37;
  u_xlat36 = (x_993 * x_994);
  let x_996 : f32 = u_xlat36;
  let x_998 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_996, x_996, x_996) * x_998);
  let x_1000 : vec4<f32> = u_xlat4;
  let x_1003 : vec4<f32> = x_66.x_MainLightPosition;
  let x_1005 : vec3<f32> = (vec3<f32>(x_1000.x, x_1000.y, x_1000.z) + vec3<f32>(x_1003.x, x_1003.y, x_1003.z));
  let x_1006 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1005.x, x_1005.y, x_1005.z, x_1006.w);
  let x_1008 : vec4<f32> = u_xlat8;
  let x_1010 : vec4<f32> = u_xlat8;
  u_xlat36 = dot(vec3<f32>(x_1008.x, x_1008.y, x_1008.z), vec3<f32>(x_1010.x, x_1010.y, x_1010.z));
  let x_1013 : f32 = u_xlat36;
  u_xlat36 = max(x_1013, 1.17549435e-37f);
  let x_1016 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_1016);
  let x_1018 : f32 = u_xlat36;
  let x_1020 : vec4<f32> = u_xlat8;
  let x_1022 : vec3<f32> = (vec3<f32>(x_1018, x_1018, x_1018) * vec3<f32>(x_1020.x, x_1020.y, x_1020.z));
  let x_1023 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1022.x, x_1022.y, x_1022.z, x_1023.w);
  let x_1025 : vec3<f32> = u_xlat15;
  let x_1026 : vec4<f32> = u_xlat8;
  u_xlat36 = dot(x_1025, vec3<f32>(x_1026.x, x_1026.y, x_1026.z));
  let x_1029 : f32 = u_xlat36;
  u_xlat36 = clamp(x_1029, 0.0f, 1.0f);
  let x_1032 : vec4<f32> = x_66.x_MainLightPosition;
  let x_1034 : vec4<f32> = u_xlat8;
  u_xlat37 = dot(vec3<f32>(x_1032.x, x_1032.y, x_1032.z), vec3<f32>(x_1034.x, x_1034.y, x_1034.z));
  let x_1037 : f32 = u_xlat37;
  u_xlat37 = clamp(x_1037, 0.0f, 1.0f);
  let x_1039 : f32 = u_xlat36;
  let x_1040 : f32 = u_xlat36;
  u_xlat36 = (x_1039 * x_1040);
  let x_1042 : f32 = u_xlat36;
  let x_1044 : f32 = u_xlat9.x;
  u_xlat36 = ((x_1042 * x_1044) + 1.000010014f);
  let x_1048 : f32 = u_xlat37;
  let x_1049 : f32 = u_xlat37;
  u_xlat37 = (x_1048 * x_1049);
  let x_1051 : f32 = u_xlat36;
  let x_1052 : f32 = u_xlat36;
  u_xlat36 = (x_1051 * x_1052);
  let x_1054 : f32 = u_xlat37;
  u_xlat37 = max(x_1054, 0.100000001f);
  let x_1057 : f32 = u_xlat36;
  let x_1058 : f32 = u_xlat37;
  u_xlat36 = (x_1057 * x_1058);
  let x_1060 : f32 = u_xlat41;
  let x_1061 : f32 = u_xlat36;
  u_xlat36 = (x_1060 * x_1061);
  let x_1063 : f32 = u_xlat40;
  let x_1064 : f32 = u_xlat36;
  u_xlat36 = (x_1063 / x_1064);
  let x_1066 : f32 = u_xlat36;
  let x_1070 : vec3<f32> = u_xlat2;
  let x_1071 : vec3<f32> = ((vec3<f32>(x_1066, x_1066, x_1066) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1070);
  let x_1072 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1071.x, x_1071.y, x_1071.z, x_1072.w);
  let x_1074 : vec3<f32> = u_xlat7;
  let x_1075 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_1074 * vec3<f32>(x_1075.x, x_1075.y, x_1075.z));
  let x_1080 : f32 = x_66.x_AdditionalLightsCount.x;
  let x_1082 : f32 = x_492.unity_LightData.y;
  u_xlat36 = min(x_1080, x_1082);
  let x_1084 : f32 = u_xlat36;
  u_xlatu36 = bitcast<u32>(i32(x_1084));
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1096 : u32 = u_xlatu_loop_1;
    let x_1097 : u32 = u_xlatu36;
    if ((x_1096 < x_1097)) {
    } else {
      break;
    }
    let x_1100 : u32 = u_xlatu_loop_1;
    u_xlatu38 = (x_1100 >> 2u);
    let x_1103 : u32 = u_xlatu_loop_1;
    u_xlati3 = bitcast<i32>((x_1103 & 3u));
    let x_1106 : u32 = u_xlatu38;
    let x_1109 : vec4<f32> = x_492.unity_LightIndices[bitcast<i32>(x_1106)];
    let x_1119 : i32 = u_xlati3;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1124 : vec4<u32> = indexable[x_1119];
    u_xlat38 = dot(x_1109, bitcast<vec4<f32>>(x_1124));
    let x_1128 : f32 = u_xlat38;
    u_xlati38 = i32(x_1128);
    let x_1131 : vec3<f32> = vs_INTERP0;
    let x_1143 : i32 = u_xlati38;
    let x_1145 : vec4<f32> = x_1142.x_AdditionalLightsPosition[x_1143];
    let x_1148 : i32 = u_xlati38;
    let x_1150 : vec4<f32> = x_1142.x_AdditionalLightsPosition[x_1148];
    u_xlat21 = ((-(x_1131) * vec3<f32>(x_1145.w, x_1145.w, x_1145.w)) + vec3<f32>(x_1150.x, x_1150.y, x_1150.z));
    let x_1153 : vec3<f32> = u_xlat21;
    let x_1154 : vec3<f32> = u_xlat21;
    u_xlat3.x = dot(x_1153, x_1154);
    let x_1158 : f32 = u_xlat3.x;
    u_xlat3.x = max(x_1158, 6.10351562e-05f);
    let x_1163 : f32 = u_xlat3.x;
    u_xlat30 = inverseSqrt(x_1163);
    let x_1166 : f32 = u_xlat30;
    let x_1168 : vec3<f32> = u_xlat21;
    u_xlat10 = (vec3<f32>(x_1166, x_1166, x_1166) * x_1168);
    let x_1171 : f32 = u_xlat3.x;
    u_xlat42 = (1.0f / x_1171);
    let x_1174 : f32 = u_xlat3.x;
    let x_1175 : i32 = u_xlati38;
    let x_1177 : f32 = x_1142.x_AdditionalLightsAttenuation[x_1175].x;
    u_xlat3.x = (x_1174 * x_1177);
    let x_1181 : f32 = u_xlat3.x;
    let x_1184 : f32 = u_xlat3.x;
    u_xlat3.x = ((-(x_1181) * x_1184) + 1.0f);
    let x_1189 : f32 = u_xlat3.x;
    u_xlat3.x = max(x_1189, 0.0f);
    let x_1193 : f32 = u_xlat3.x;
    let x_1195 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1193 * x_1195);
    let x_1199 : f32 = u_xlat3.x;
    let x_1200 : f32 = u_xlat42;
    u_xlat3.x = (x_1199 * x_1200);
    let x_1203 : i32 = u_xlati38;
    let x_1205 : vec4<f32> = x_1142.x_AdditionalLightsSpotDir[x_1203];
    let x_1207 : vec3<f32> = u_xlat10;
    u_xlat42 = dot(vec3<f32>(x_1205.x, x_1205.y, x_1205.z), x_1207);
    let x_1209 : f32 = u_xlat42;
    let x_1210 : i32 = u_xlati38;
    let x_1212 : f32 = x_1142.x_AdditionalLightsAttenuation[x_1210].z;
    let x_1214 : i32 = u_xlati38;
    let x_1216 : f32 = x_1142.x_AdditionalLightsAttenuation[x_1214].w;
    u_xlat42 = ((x_1209 * x_1212) + x_1216);
    let x_1218 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1218, 0.0f, 1.0f);
    let x_1220 : f32 = u_xlat42;
    let x_1221 : f32 = u_xlat42;
    u_xlat42 = (x_1220 * x_1221);
    let x_1224 : f32 = u_xlat3.x;
    let x_1225 : f32 = u_xlat42;
    u_xlat3.x = (x_1224 * x_1225);
    let x_1229 : f32 = u_xlat18;
    let x_1231 : i32 = u_xlati38;
    let x_1233 : vec4<f32> = x_1142.x_AdditionalLightsColor[x_1231];
    u_xlat11 = (vec3<f32>(x_1229, x_1229, x_1229) * vec3<f32>(x_1233.x, x_1233.y, x_1233.z));
    let x_1236 : vec3<f32> = u_xlat15;
    let x_1237 : vec3<f32> = u_xlat10;
    u_xlat38 = dot(x_1236, x_1237);
    let x_1239 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1239, 0.0f, 1.0f);
    let x_1241 : f32 = u_xlat38;
    let x_1243 : f32 = u_xlat3.x;
    u_xlat38 = (x_1241 * x_1243);
    let x_1245 : f32 = u_xlat38;
    let x_1247 : vec3<f32> = u_xlat11;
    u_xlat11 = (vec3<f32>(x_1245, x_1245, x_1245) * x_1247);
    let x_1249 : vec3<f32> = u_xlat21;
    let x_1250 : f32 = u_xlat30;
    let x_1253 : vec4<f32> = u_xlat4;
    u_xlat21 = ((x_1249 * vec3<f32>(x_1250, x_1250, x_1250)) + vec3<f32>(x_1253.x, x_1253.y, x_1253.z));
    let x_1256 : vec3<f32> = u_xlat21;
    let x_1257 : vec3<f32> = u_xlat21;
    u_xlat38 = dot(x_1256, x_1257);
    let x_1259 : f32 = u_xlat38;
    u_xlat38 = max(x_1259, 1.17549435e-37f);
    let x_1261 : f32 = u_xlat38;
    u_xlat38 = inverseSqrt(x_1261);
    let x_1263 : f32 = u_xlat38;
    let x_1265 : vec3<f32> = u_xlat21;
    u_xlat21 = (vec3<f32>(x_1263, x_1263, x_1263) * x_1265);
    let x_1267 : vec3<f32> = u_xlat15;
    let x_1268 : vec3<f32> = u_xlat21;
    u_xlat38 = dot(x_1267, x_1268);
    let x_1270 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1270, 0.0f, 1.0f);
    let x_1272 : vec3<f32> = u_xlat10;
    let x_1273 : vec3<f32> = u_xlat21;
    u_xlat3.x = dot(x_1272, x_1273);
    let x_1277 : f32 = u_xlat3.x;
    u_xlat3.x = clamp(x_1277, 0.0f, 1.0f);
    let x_1280 : f32 = u_xlat38;
    let x_1281 : f32 = u_xlat38;
    u_xlat38 = (x_1280 * x_1281);
    let x_1283 : f32 = u_xlat38;
    let x_1285 : f32 = u_xlat9.x;
    u_xlat38 = ((x_1283 * x_1285) + 1.000010014f);
    let x_1289 : f32 = u_xlat3.x;
    let x_1291 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1289 * x_1291);
    let x_1294 : f32 = u_xlat38;
    let x_1295 : f32 = u_xlat38;
    u_xlat38 = (x_1294 * x_1295);
    let x_1298 : f32 = u_xlat3.x;
    u_xlat3.x = max(x_1298, 0.100000001f);
    let x_1301 : f32 = u_xlat38;
    let x_1303 : f32 = u_xlat3.x;
    u_xlat38 = (x_1301 * x_1303);
    let x_1305 : f32 = u_xlat41;
    let x_1306 : f32 = u_xlat38;
    u_xlat38 = (x_1305 * x_1306);
    let x_1308 : f32 = u_xlat40;
    let x_1309 : f32 = u_xlat38;
    u_xlat38 = (x_1308 / x_1309);
    let x_1311 : f32 = u_xlat38;
    let x_1314 : vec3<f32> = u_xlat2;
    u_xlat21 = ((vec3<f32>(x_1311, x_1311, x_1311) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1314);
    let x_1316 : vec3<f32> = u_xlat21;
    let x_1317 : vec3<f32> = u_xlat11;
    let x_1319 : vec4<f32> = u_xlat8;
    let x_1321 : vec3<f32> = ((x_1316 * x_1317) + vec3<f32>(x_1319.x, x_1319.y, x_1319.z));
    let x_1322 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1321.x, x_1321.y, x_1321.z, x_1322.w);

    continuing {
      let x_1324 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1324 + bitcast<u32>(1i));
    }
  }
  let x_1326 : vec4<f32> = u_xlat5;
  let x_1328 : vec3<f32> = u_xlat6;
  let x_1331 : vec3<f32> = u_xlat7;
  u_xlat2 = ((vec3<f32>(x_1326.x, x_1326.y, x_1326.z) * vec3<f32>(x_1328.x, x_1328.x, x_1328.x)) + x_1331);
  let x_1333 : vec4<f32> = u_xlat8;
  let x_1335 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_1333.x, x_1333.y, x_1333.z) + x_1335);
  let x_1337 : vec4<f32> = vs_INTERP4;
  let x_1339 : vec3<f32> = u_xlat0;
  let x_1341 : vec3<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_1337.w, x_1337.w, x_1337.w) * x_1339) + x_1341);
  let x_1344 : f32 = u_xlat13.x;
  let x_1346 : f32 = u_xlat13.x;
  u_xlat36 = (x_1344 * -(x_1346));
  let x_1349 : f32 = u_xlat36;
  u_xlat36 = exp2(x_1349);
  let x_1351 : vec3<f32> = u_xlat0;
  let x_1354 : vec4<f32> = x_66.unity_FogColor;
  u_xlat0 = (x_1351 + -(vec3<f32>(x_1354.x, x_1354.y, x_1354.z)));
  let x_1360 : f32 = u_xlat36;
  let x_1362 : vec3<f32> = u_xlat0;
  let x_1365 : vec4<f32> = x_66.unity_FogColor;
  let x_1367 : vec3<f32> = ((vec3<f32>(x_1360, x_1360, x_1360) * x_1362) + vec3<f32>(x_1365.x, x_1365.y, x_1365.z));
  let x_1368 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1367.x, x_1367.y, x_1367.z, x_1368.w);
  let x_1370 : bool = u_xlatb25;
  if (x_1370) {
    let x_1375 : f32 = u_xlat1.x;
    x_1371 = x_1375;
  } else {
    x_1371 = 1.0f;
  }
  let x_1377 : f32 = x_1371;
  SV_Target0.w = x_1377;
  let x_1384 : u32 = x_66.x_RenderingLayerMaxInt;
  let x_1386 : f32 = x_492.unity_RenderingLayer.x;
  u_xlatu0 = (x_1384 & bitcast<u32>(x_1386));
  let x_1389 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_1389);
  let x_1394 : f32 = u_xlat0.x;
  let x_1396 : f32 = x_66.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_1394 * x_1396);
  let x_1400 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_1400, 0.0f, 1.0f);
  let x_1403 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_1403.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
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

