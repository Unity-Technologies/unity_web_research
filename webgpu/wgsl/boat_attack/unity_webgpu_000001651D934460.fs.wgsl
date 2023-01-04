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

@group(1) @binding(1) var<uniform> x_1141 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

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
  var x_1370 : f32;
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
  let x_657 : f32 = x_66.x_ProjectionParams.y;
  u_xlat13.x = (-(x_654) + -(x_657));
  let x_662 : f32 = u_xlat13.x;
  u_xlat13.x = max(x_662, 0.0f);
  let x_666 : f32 = u_xlat13.x;
  let x_669 : f32 = x_66.unity_FogParams.x;
  u_xlat13.x = (x_666 * x_669);
  let x_679 : vec2<f32> = vs_INTERP5;
  let x_681 : f32 = x_66.x_GlobalMipBias.x;
  let x_682 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_679, x_681);
  u_xlat5 = x_682;
  let x_687 : vec2<f32> = vs_INTERP5;
  let x_689 : f32 = x_66.x_GlobalMipBias.x;
  let x_690 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_687, x_689);
  u_xlat6 = vec3<f32>(x_690.x, x_690.y, x_690.z);
  let x_692 : vec4<f32> = u_xlat5;
  let x_696 : vec3<f32> = (vec3<f32>(x_692.x, x_692.y, x_692.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_697 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_696.x, x_696.y, x_696.z, x_697.w);
  let x_699 : vec3<f32> = u_xlat15;
  let x_700 : vec4<f32> = u_xlat5;
  u_xlat37 = dot(x_699, vec3<f32>(x_700.x, x_700.y, x_700.z));
  let x_703 : f32 = u_xlat37;
  u_xlat37 = (x_703 + 0.5f);
  let x_705 : f32 = u_xlat37;
  let x_707 : vec3<f32> = u_xlat6;
  let x_708 : vec3<f32> = (vec3<f32>(x_705, x_705, x_705) * x_707);
  let x_709 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_708.x, x_708.y, x_708.z, x_709.w);
  let x_712 : f32 = u_xlat5.w;
  u_xlat37 = max(x_712, 0.0001f);
  let x_714 : vec4<f32> = u_xlat5;
  let x_716 : f32 = u_xlat37;
  let x_718 : vec3<f32> = (vec3<f32>(x_714.x, x_714.y, x_714.z) / vec3<f32>(x_716, x_716, x_716));
  let x_719 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_718.x, x_718.y, x_718.z, x_719.w);
  let x_723 : vec4<f32> = x_66.x_ScaledScreenParams;
  let x_724 : vec2<f32> = vec2<f32>(x_723.x, x_723.y);
  let x_728 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_724.x, x_724.y));
  let x_729 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_728.x, x_728.y, x_729.z);
  let x_731 : vec3<f32> = u_xlat6;
  let x_733 : vec4<f32> = hlslcc_FragCoord;
  let x_735 : vec2<f32> = (vec2<f32>(x_731.x, x_731.y) * vec2<f32>(x_733.x, x_733.y));
  let x_736 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_735.x, x_735.y, x_736.z);
  let x_739 : f32 = u_xlat6.y;
  let x_742 : f32 = x_66.x_ScaleBiasRt.x;
  let x_745 : f32 = x_66.x_ScaleBiasRt.y;
  u_xlat37 = ((x_739 * x_742) + x_745);
  let x_747 : f32 = u_xlat37;
  u_xlat6.z = (-(x_747) + 1.0f);
  let x_752 : f32 = u_xlat3.x;
  u_xlat3.x = x_752;
  let x_755 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_755, 0.0f, 1.0f);
  let x_759 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_759, 1.0f);
  let x_762 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_762 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_767 : f32 = u_xlat3.x;
  u_xlat37 = (-(x_767) + 1.0f);
  let x_770 : f32 = u_xlat37;
  let x_771 : f32 = u_xlat37;
  u_xlat38 = (x_770 * x_771);
  let x_773 : f32 = u_xlat38;
  u_xlat38 = max(x_773, 0.0078125f);
  let x_777 : f32 = u_xlat38;
  let x_778 : f32 = u_xlat38;
  u_xlat40 = (x_777 * x_778);
  let x_781 : f32 = u_xlat3.x;
  u_xlat3.x = (x_781 + 0.040000021f);
  let x_786 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_786, 1.0f);
  let x_790 : f32 = u_xlat38;
  u_xlat41 = ((x_790 * 4.0f) + 2.0f);
  let x_798 : vec3<f32> = u_xlat6;
  let x_801 : f32 = x_66.x_GlobalMipBias.x;
  let x_802 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_798.x, x_798.z), x_801);
  u_xlat6.x = x_802.x;
  let x_807 : f32 = u_xlat6.x;
  u_xlat18 = (x_807 + -1.0f);
  let x_810 : f32 = x_66.x_AmbientOcclusionParam.w;
  let x_811 : f32 = u_xlat18;
  u_xlat18 = ((x_810 * x_811) + 1.0f);
  let x_815 : f32 = u_xlat6.x;
  let x_817 : f32 = vs_INTERP4.w;
  u_xlat6.x = min(x_815, x_817);
  let x_820 : vec3<f32> = vs_INTERP0;
  let x_822 : vec3<f32> = x_66.x_WorldSpaceCameraPos;
  u_xlat7 = (x_820 + -(x_822));
  let x_826 : vec3<f32> = u_xlat7;
  let x_827 : vec3<f32> = u_xlat7;
  u_xlat30 = dot(x_826, x_827);
  let x_829 : f32 = u_xlat30;
  let x_831 : f32 = x_138.x_MainLightShadowParams.z;
  let x_834 : f32 = x_138.x_MainLightShadowParams.w;
  u_xlat30 = ((x_829 * x_831) + x_834);
  let x_836 : f32 = u_xlat30;
  u_xlat30 = clamp(x_836, 0.0f, 1.0f);
  let x_839 : f32 = u_xlat36;
  u_xlat42 = (-(x_839) + 1.0f);
  let x_842 : f32 = u_xlat30;
  let x_843 : f32 = u_xlat42;
  let x_845 : f32 = u_xlat36;
  u_xlat36 = ((x_842 * x_843) + x_845);
  let x_847 : f32 = u_xlat18;
  let x_850 : vec4<f32> = x_66.x_MainLightColor;
  u_xlat7 = (vec3<f32>(x_847, x_847, x_847) * vec3<f32>(x_850.x, x_850.y, x_850.z));
  let x_853 : vec4<f32> = u_xlat4;
  let x_856 : vec3<f32> = u_xlat15;
  u_xlat30 = dot(-(vec3<f32>(x_853.x, x_853.y, x_853.z)), x_856);
  let x_858 : f32 = u_xlat30;
  let x_859 : f32 = u_xlat30;
  u_xlat30 = (x_858 + x_859);
  let x_862 : vec3<f32> = u_xlat15;
  let x_863 : f32 = u_xlat30;
  let x_867 : vec4<f32> = u_xlat4;
  let x_870 : vec3<f32> = ((x_862 * -(vec3<f32>(x_863, x_863, x_863))) + -(vec3<f32>(x_867.x, x_867.y, x_867.z)));
  let x_871 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_870.x, x_870.y, x_870.z, x_871.w);
  let x_873 : vec3<f32> = u_xlat15;
  let x_874 : vec4<f32> = u_xlat4;
  u_xlat30 = dot(x_873, vec3<f32>(x_874.x, x_874.y, x_874.z));
  let x_877 : f32 = u_xlat30;
  u_xlat30 = clamp(x_877, 0.0f, 1.0f);
  let x_879 : f32 = u_xlat30;
  u_xlat30 = (-(x_879) + 1.0f);
  let x_882 : f32 = u_xlat30;
  let x_883 : f32 = u_xlat30;
  u_xlat30 = (x_882 * x_883);
  let x_885 : f32 = u_xlat30;
  let x_886 : f32 = u_xlat30;
  u_xlat30 = (x_885 * x_886);
  let x_888 : f32 = u_xlat37;
  u_xlat42 = ((-(x_888) * 0.699999988f) + 1.700000048f);
  let x_894 : f32 = u_xlat37;
  let x_895 : f32 = u_xlat42;
  u_xlat37 = (x_894 * x_895);
  let x_897 : f32 = u_xlat37;
  u_xlat37 = (x_897 * 6.0f);
  let x_908 : vec4<f32> = u_xlat8;
  let x_910 : f32 = u_xlat37;
  let x_911 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_908.x, x_908.y, x_908.z), x_910);
  u_xlat8 = x_911;
  let x_913 : f32 = u_xlat8.w;
  u_xlat37 = (x_913 + -1.0f);
  let x_916 : f32 = x_492.unity_SpecCube0_HDR.w;
  let x_917 : f32 = u_xlat37;
  u_xlat37 = ((x_916 * x_917) + 1.0f);
  let x_920 : f32 = u_xlat37;
  u_xlat37 = max(x_920, 0.0f);
  let x_922 : f32 = u_xlat37;
  u_xlat37 = log2(x_922);
  let x_924 : f32 = u_xlat37;
  let x_926 : f32 = x_492.unity_SpecCube0_HDR.y;
  u_xlat37 = (x_924 * x_926);
  let x_928 : f32 = u_xlat37;
  u_xlat37 = exp2(x_928);
  let x_930 : f32 = u_xlat37;
  let x_932 : f32 = x_492.unity_SpecCube0_HDR.x;
  u_xlat37 = (x_930 * x_932);
  let x_934 : vec4<f32> = u_xlat8;
  let x_936 : f32 = u_xlat37;
  let x_938 : vec3<f32> = (vec3<f32>(x_934.x, x_934.y, x_934.z) * vec3<f32>(x_936, x_936, x_936));
  let x_939 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_938.x, x_938.y, x_938.z, x_939.w);
  let x_943 : f32 = u_xlat38;
  let x_945 : f32 = u_xlat38;
  u_xlat9 = ((vec2<f32>(x_943, x_943) * vec2<f32>(x_945, x_945)) + vec2<f32>(-1.0f, 1.0f));
  let x_951 : f32 = u_xlat9.y;
  u_xlat37 = (1.0f / x_951);
  let x_954 : f32 = u_xlat3.x;
  u_xlat38 = (x_954 + -0.039999999f);
  let x_957 : f32 = u_xlat30;
  let x_958 : f32 = u_xlat38;
  u_xlat38 = ((x_957 * x_958) + 0.039999999f);
  let x_962 : f32 = u_xlat37;
  let x_963 : f32 = u_xlat38;
  u_xlat37 = (x_962 * x_963);
  let x_965 : f32 = u_xlat37;
  let x_967 : vec4<f32> = u_xlat8;
  let x_969 : vec3<f32> = (vec3<f32>(x_965, x_965, x_965) * vec3<f32>(x_967.x, x_967.y, x_967.z));
  let x_970 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_969.x, x_969.y, x_969.z, x_970.w);
  let x_972 : vec4<f32> = u_xlat5;
  let x_974 : vec3<f32> = u_xlat2;
  let x_976 : vec4<f32> = u_xlat8;
  let x_978 : vec3<f32> = ((vec3<f32>(x_972.x, x_972.y, x_972.z) * x_974) + vec3<f32>(x_976.x, x_976.y, x_976.z));
  let x_979 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_978.x, x_978.y, x_978.z, x_979.w);
  let x_981 : f32 = u_xlat36;
  let x_983 : f32 = x_492.unity_LightData.z;
  u_xlat36 = (x_981 * x_983);
  let x_985 : vec3<f32> = u_xlat15;
  let x_987 : vec4<f32> = x_66.x_MainLightPosition;
  u_xlat37 = dot(x_985, vec3<f32>(x_987.x, x_987.y, x_987.z));
  let x_990 : f32 = u_xlat37;
  u_xlat37 = clamp(x_990, 0.0f, 1.0f);
  let x_992 : f32 = u_xlat36;
  let x_993 : f32 = u_xlat37;
  u_xlat36 = (x_992 * x_993);
  let x_995 : f32 = u_xlat36;
  let x_997 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_995, x_995, x_995) * x_997);
  let x_999 : vec4<f32> = u_xlat4;
  let x_1002 : vec4<f32> = x_66.x_MainLightPosition;
  let x_1004 : vec3<f32> = (vec3<f32>(x_999.x, x_999.y, x_999.z) + vec3<f32>(x_1002.x, x_1002.y, x_1002.z));
  let x_1005 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1004.x, x_1004.y, x_1004.z, x_1005.w);
  let x_1007 : vec4<f32> = u_xlat8;
  let x_1009 : vec4<f32> = u_xlat8;
  u_xlat36 = dot(vec3<f32>(x_1007.x, x_1007.y, x_1007.z), vec3<f32>(x_1009.x, x_1009.y, x_1009.z));
  let x_1012 : f32 = u_xlat36;
  u_xlat36 = max(x_1012, 1.17549435e-37f);
  let x_1015 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_1015);
  let x_1017 : f32 = u_xlat36;
  let x_1019 : vec4<f32> = u_xlat8;
  let x_1021 : vec3<f32> = (vec3<f32>(x_1017, x_1017, x_1017) * vec3<f32>(x_1019.x, x_1019.y, x_1019.z));
  let x_1022 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1021.x, x_1021.y, x_1021.z, x_1022.w);
  let x_1024 : vec3<f32> = u_xlat15;
  let x_1025 : vec4<f32> = u_xlat8;
  u_xlat36 = dot(x_1024, vec3<f32>(x_1025.x, x_1025.y, x_1025.z));
  let x_1028 : f32 = u_xlat36;
  u_xlat36 = clamp(x_1028, 0.0f, 1.0f);
  let x_1031 : vec4<f32> = x_66.x_MainLightPosition;
  let x_1033 : vec4<f32> = u_xlat8;
  u_xlat37 = dot(vec3<f32>(x_1031.x, x_1031.y, x_1031.z), vec3<f32>(x_1033.x, x_1033.y, x_1033.z));
  let x_1036 : f32 = u_xlat37;
  u_xlat37 = clamp(x_1036, 0.0f, 1.0f);
  let x_1038 : f32 = u_xlat36;
  let x_1039 : f32 = u_xlat36;
  u_xlat36 = (x_1038 * x_1039);
  let x_1041 : f32 = u_xlat36;
  let x_1043 : f32 = u_xlat9.x;
  u_xlat36 = ((x_1041 * x_1043) + 1.000010014f);
  let x_1047 : f32 = u_xlat37;
  let x_1048 : f32 = u_xlat37;
  u_xlat37 = (x_1047 * x_1048);
  let x_1050 : f32 = u_xlat36;
  let x_1051 : f32 = u_xlat36;
  u_xlat36 = (x_1050 * x_1051);
  let x_1053 : f32 = u_xlat37;
  u_xlat37 = max(x_1053, 0.100000001f);
  let x_1056 : f32 = u_xlat36;
  let x_1057 : f32 = u_xlat37;
  u_xlat36 = (x_1056 * x_1057);
  let x_1059 : f32 = u_xlat41;
  let x_1060 : f32 = u_xlat36;
  u_xlat36 = (x_1059 * x_1060);
  let x_1062 : f32 = u_xlat40;
  let x_1063 : f32 = u_xlat36;
  u_xlat36 = (x_1062 / x_1063);
  let x_1065 : f32 = u_xlat36;
  let x_1069 : vec3<f32> = u_xlat2;
  let x_1070 : vec3<f32> = ((vec3<f32>(x_1065, x_1065, x_1065) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1069);
  let x_1071 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1070.x, x_1070.y, x_1070.z, x_1071.w);
  let x_1073 : vec3<f32> = u_xlat7;
  let x_1074 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_1073 * vec3<f32>(x_1074.x, x_1074.y, x_1074.z));
  let x_1079 : f32 = x_66.x_AdditionalLightsCount.x;
  let x_1081 : f32 = x_492.unity_LightData.y;
  u_xlat36 = min(x_1079, x_1081);
  let x_1083 : f32 = u_xlat36;
  u_xlatu36 = bitcast<u32>(i32(x_1083));
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1095 : u32 = u_xlatu_loop_1;
    let x_1096 : u32 = u_xlatu36;
    if ((x_1095 < x_1096)) {
    } else {
      break;
    }
    let x_1099 : u32 = u_xlatu_loop_1;
    u_xlatu38 = (x_1099 >> 2u);
    let x_1102 : u32 = u_xlatu_loop_1;
    u_xlati3 = bitcast<i32>((x_1102 & 3u));
    let x_1105 : u32 = u_xlatu38;
    let x_1108 : vec4<f32> = x_492.unity_LightIndices[bitcast<i32>(x_1105)];
    let x_1118 : i32 = u_xlati3;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1123 : vec4<u32> = indexable[x_1118];
    u_xlat38 = dot(x_1108, bitcast<vec4<f32>>(x_1123));
    let x_1127 : f32 = u_xlat38;
    u_xlati38 = i32(x_1127);
    let x_1130 : vec3<f32> = vs_INTERP0;
    let x_1142 : i32 = u_xlati38;
    let x_1144 : vec4<f32> = x_1141.x_AdditionalLightsPosition[x_1142];
    let x_1147 : i32 = u_xlati38;
    let x_1149 : vec4<f32> = x_1141.x_AdditionalLightsPosition[x_1147];
    u_xlat21 = ((-(x_1130) * vec3<f32>(x_1144.w, x_1144.w, x_1144.w)) + vec3<f32>(x_1149.x, x_1149.y, x_1149.z));
    let x_1152 : vec3<f32> = u_xlat21;
    let x_1153 : vec3<f32> = u_xlat21;
    u_xlat3.x = dot(x_1152, x_1153);
    let x_1157 : f32 = u_xlat3.x;
    u_xlat3.x = max(x_1157, 6.10351562e-05f);
    let x_1162 : f32 = u_xlat3.x;
    u_xlat30 = inverseSqrt(x_1162);
    let x_1165 : f32 = u_xlat30;
    let x_1167 : vec3<f32> = u_xlat21;
    u_xlat10 = (vec3<f32>(x_1165, x_1165, x_1165) * x_1167);
    let x_1170 : f32 = u_xlat3.x;
    u_xlat42 = (1.0f / x_1170);
    let x_1173 : f32 = u_xlat3.x;
    let x_1174 : i32 = u_xlati38;
    let x_1176 : f32 = x_1141.x_AdditionalLightsAttenuation[x_1174].x;
    u_xlat3.x = (x_1173 * x_1176);
    let x_1180 : f32 = u_xlat3.x;
    let x_1183 : f32 = u_xlat3.x;
    u_xlat3.x = ((-(x_1180) * x_1183) + 1.0f);
    let x_1188 : f32 = u_xlat3.x;
    u_xlat3.x = max(x_1188, 0.0f);
    let x_1192 : f32 = u_xlat3.x;
    let x_1194 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1192 * x_1194);
    let x_1198 : f32 = u_xlat3.x;
    let x_1199 : f32 = u_xlat42;
    u_xlat3.x = (x_1198 * x_1199);
    let x_1202 : i32 = u_xlati38;
    let x_1204 : vec4<f32> = x_1141.x_AdditionalLightsSpotDir[x_1202];
    let x_1206 : vec3<f32> = u_xlat10;
    u_xlat42 = dot(vec3<f32>(x_1204.x, x_1204.y, x_1204.z), x_1206);
    let x_1208 : f32 = u_xlat42;
    let x_1209 : i32 = u_xlati38;
    let x_1211 : f32 = x_1141.x_AdditionalLightsAttenuation[x_1209].z;
    let x_1213 : i32 = u_xlati38;
    let x_1215 : f32 = x_1141.x_AdditionalLightsAttenuation[x_1213].w;
    u_xlat42 = ((x_1208 * x_1211) + x_1215);
    let x_1217 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1217, 0.0f, 1.0f);
    let x_1219 : f32 = u_xlat42;
    let x_1220 : f32 = u_xlat42;
    u_xlat42 = (x_1219 * x_1220);
    let x_1223 : f32 = u_xlat3.x;
    let x_1224 : f32 = u_xlat42;
    u_xlat3.x = (x_1223 * x_1224);
    let x_1228 : f32 = u_xlat18;
    let x_1230 : i32 = u_xlati38;
    let x_1232 : vec4<f32> = x_1141.x_AdditionalLightsColor[x_1230];
    u_xlat11 = (vec3<f32>(x_1228, x_1228, x_1228) * vec3<f32>(x_1232.x, x_1232.y, x_1232.z));
    let x_1235 : vec3<f32> = u_xlat15;
    let x_1236 : vec3<f32> = u_xlat10;
    u_xlat38 = dot(x_1235, x_1236);
    let x_1238 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1238, 0.0f, 1.0f);
    let x_1240 : f32 = u_xlat38;
    let x_1242 : f32 = u_xlat3.x;
    u_xlat38 = (x_1240 * x_1242);
    let x_1244 : f32 = u_xlat38;
    let x_1246 : vec3<f32> = u_xlat11;
    u_xlat11 = (vec3<f32>(x_1244, x_1244, x_1244) * x_1246);
    let x_1248 : vec3<f32> = u_xlat21;
    let x_1249 : f32 = u_xlat30;
    let x_1252 : vec4<f32> = u_xlat4;
    u_xlat21 = ((x_1248 * vec3<f32>(x_1249, x_1249, x_1249)) + vec3<f32>(x_1252.x, x_1252.y, x_1252.z));
    let x_1255 : vec3<f32> = u_xlat21;
    let x_1256 : vec3<f32> = u_xlat21;
    u_xlat38 = dot(x_1255, x_1256);
    let x_1258 : f32 = u_xlat38;
    u_xlat38 = max(x_1258, 1.17549435e-37f);
    let x_1260 : f32 = u_xlat38;
    u_xlat38 = inverseSqrt(x_1260);
    let x_1262 : f32 = u_xlat38;
    let x_1264 : vec3<f32> = u_xlat21;
    u_xlat21 = (vec3<f32>(x_1262, x_1262, x_1262) * x_1264);
    let x_1266 : vec3<f32> = u_xlat15;
    let x_1267 : vec3<f32> = u_xlat21;
    u_xlat38 = dot(x_1266, x_1267);
    let x_1269 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1269, 0.0f, 1.0f);
    let x_1271 : vec3<f32> = u_xlat10;
    let x_1272 : vec3<f32> = u_xlat21;
    u_xlat3.x = dot(x_1271, x_1272);
    let x_1276 : f32 = u_xlat3.x;
    u_xlat3.x = clamp(x_1276, 0.0f, 1.0f);
    let x_1279 : f32 = u_xlat38;
    let x_1280 : f32 = u_xlat38;
    u_xlat38 = (x_1279 * x_1280);
    let x_1282 : f32 = u_xlat38;
    let x_1284 : f32 = u_xlat9.x;
    u_xlat38 = ((x_1282 * x_1284) + 1.000010014f);
    let x_1288 : f32 = u_xlat3.x;
    let x_1290 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1288 * x_1290);
    let x_1293 : f32 = u_xlat38;
    let x_1294 : f32 = u_xlat38;
    u_xlat38 = (x_1293 * x_1294);
    let x_1297 : f32 = u_xlat3.x;
    u_xlat3.x = max(x_1297, 0.100000001f);
    let x_1300 : f32 = u_xlat38;
    let x_1302 : f32 = u_xlat3.x;
    u_xlat38 = (x_1300 * x_1302);
    let x_1304 : f32 = u_xlat41;
    let x_1305 : f32 = u_xlat38;
    u_xlat38 = (x_1304 * x_1305);
    let x_1307 : f32 = u_xlat40;
    let x_1308 : f32 = u_xlat38;
    u_xlat38 = (x_1307 / x_1308);
    let x_1310 : f32 = u_xlat38;
    let x_1313 : vec3<f32> = u_xlat2;
    u_xlat21 = ((vec3<f32>(x_1310, x_1310, x_1310) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1313);
    let x_1315 : vec3<f32> = u_xlat21;
    let x_1316 : vec3<f32> = u_xlat11;
    let x_1318 : vec4<f32> = u_xlat8;
    let x_1320 : vec3<f32> = ((x_1315 * x_1316) + vec3<f32>(x_1318.x, x_1318.y, x_1318.z));
    let x_1321 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1320.x, x_1320.y, x_1320.z, x_1321.w);

    continuing {
      let x_1323 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1323 + bitcast<u32>(1i));
    }
  }
  let x_1325 : vec4<f32> = u_xlat5;
  let x_1327 : vec3<f32> = u_xlat6;
  let x_1330 : vec3<f32> = u_xlat7;
  u_xlat2 = ((vec3<f32>(x_1325.x, x_1325.y, x_1325.z) * vec3<f32>(x_1327.x, x_1327.x, x_1327.x)) + x_1330);
  let x_1332 : vec4<f32> = u_xlat8;
  let x_1334 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_1332.x, x_1332.y, x_1332.z) + x_1334);
  let x_1336 : vec4<f32> = vs_INTERP4;
  let x_1338 : vec3<f32> = u_xlat0;
  let x_1340 : vec3<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_1336.w, x_1336.w, x_1336.w) * x_1338) + x_1340);
  let x_1343 : f32 = u_xlat13.x;
  let x_1345 : f32 = u_xlat13.x;
  u_xlat36 = (x_1343 * -(x_1345));
  let x_1348 : f32 = u_xlat36;
  u_xlat36 = exp2(x_1348);
  let x_1350 : vec3<f32> = u_xlat0;
  let x_1353 : vec4<f32> = x_66.unity_FogColor;
  u_xlat0 = (x_1350 + -(vec3<f32>(x_1353.x, x_1353.y, x_1353.z)));
  let x_1359 : f32 = u_xlat36;
  let x_1361 : vec3<f32> = u_xlat0;
  let x_1364 : vec4<f32> = x_66.unity_FogColor;
  let x_1366 : vec3<f32> = ((vec3<f32>(x_1359, x_1359, x_1359) * x_1361) + vec3<f32>(x_1364.x, x_1364.y, x_1364.z));
  let x_1367 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1366.x, x_1366.y, x_1366.z, x_1367.w);
  let x_1369 : bool = u_xlatb25;
  if (x_1369) {
    let x_1374 : f32 = u_xlat1.x;
    x_1370 = x_1374;
  } else {
    x_1370 = 1.0f;
  }
  let x_1376 : f32 = x_1370;
  SV_Target0.w = x_1376;
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

