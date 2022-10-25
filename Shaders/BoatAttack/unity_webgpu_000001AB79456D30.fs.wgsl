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

@group(1) @binding(1) var<uniform> x_1106 : AdditionalLights;

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
  var x_1335 : f32;
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
  let x_682 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_679, x_681);
  let x_683 : vec3<f32> = vec3<f32>(x_682.x, x_682.y, x_682.z);
  let x_684 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_683.x, x_683.y, x_683.z, x_684.w);
  let x_688 : vec4<f32> = x_66.x_ScaledScreenParams;
  let x_689 : vec2<f32> = vec2<f32>(x_688.x, x_688.y);
  let x_693 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_689.x, x_689.y));
  let x_694 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_693.x, x_693.y, x_694.z);
  let x_696 : vec3<f32> = u_xlat6;
  let x_698 : vec4<f32> = hlslcc_FragCoord;
  let x_700 : vec2<f32> = (vec2<f32>(x_696.x, x_696.y) * vec2<f32>(x_698.x, x_698.y));
  let x_701 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_700.x, x_700.y, x_701.z);
  let x_704 : f32 = u_xlat6.y;
  let x_707 : f32 = x_66.x_ScaleBiasRt.x;
  let x_710 : f32 = x_66.x_ScaleBiasRt.y;
  u_xlat37 = ((x_704 * x_707) + x_710);
  let x_712 : f32 = u_xlat37;
  u_xlat6.z = (-(x_712) + 1.0f);
  let x_717 : f32 = u_xlat3.x;
  u_xlat3.x = x_717;
  let x_720 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_720, 0.0f, 1.0f);
  let x_724 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_724, 1.0f);
  let x_727 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_727 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_732 : f32 = u_xlat3.x;
  u_xlat37 = (-(x_732) + 1.0f);
  let x_735 : f32 = u_xlat37;
  let x_736 : f32 = u_xlat37;
  u_xlat38 = (x_735 * x_736);
  let x_738 : f32 = u_xlat38;
  u_xlat38 = max(x_738, 0.0078125f);
  let x_742 : f32 = u_xlat38;
  let x_743 : f32 = u_xlat38;
  u_xlat40 = (x_742 * x_743);
  let x_746 : f32 = u_xlat3.x;
  u_xlat3.x = (x_746 + 0.040000021f);
  let x_751 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_751, 1.0f);
  let x_755 : f32 = u_xlat38;
  u_xlat41 = ((x_755 * 4.0f) + 2.0f);
  let x_763 : vec3<f32> = u_xlat6;
  let x_766 : f32 = x_66.x_GlobalMipBias.x;
  let x_767 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_763.x, x_763.z), x_766);
  u_xlat6.x = x_767.x;
  let x_772 : f32 = u_xlat6.x;
  u_xlat18 = (x_772 + -1.0f);
  let x_775 : f32 = x_66.x_AmbientOcclusionParam.w;
  let x_776 : f32 = u_xlat18;
  u_xlat18 = ((x_775 * x_776) + 1.0f);
  let x_780 : f32 = u_xlat6.x;
  let x_782 : f32 = vs_INTERP4.w;
  u_xlat6.x = min(x_780, x_782);
  let x_785 : vec3<f32> = vs_INTERP0;
  let x_787 : vec3<f32> = x_66.x_WorldSpaceCameraPos;
  u_xlat7 = (x_785 + -(x_787));
  let x_791 : vec3<f32> = u_xlat7;
  let x_792 : vec3<f32> = u_xlat7;
  u_xlat30 = dot(x_791, x_792);
  let x_794 : f32 = u_xlat30;
  let x_796 : f32 = x_138.x_MainLightShadowParams.z;
  let x_799 : f32 = x_138.x_MainLightShadowParams.w;
  u_xlat30 = ((x_794 * x_796) + x_799);
  let x_801 : f32 = u_xlat30;
  u_xlat30 = clamp(x_801, 0.0f, 1.0f);
  let x_804 : f32 = u_xlat36;
  u_xlat42 = (-(x_804) + 1.0f);
  let x_807 : f32 = u_xlat30;
  let x_808 : f32 = u_xlat42;
  let x_810 : f32 = u_xlat36;
  u_xlat36 = ((x_807 * x_808) + x_810);
  let x_812 : f32 = u_xlat18;
  let x_815 : vec4<f32> = x_66.x_MainLightColor;
  u_xlat7 = (vec3<f32>(x_812, x_812, x_812) * vec3<f32>(x_815.x, x_815.y, x_815.z));
  let x_818 : vec4<f32> = u_xlat4;
  let x_821 : vec3<f32> = u_xlat15;
  u_xlat30 = dot(-(vec3<f32>(x_818.x, x_818.y, x_818.z)), x_821);
  let x_823 : f32 = u_xlat30;
  let x_824 : f32 = u_xlat30;
  u_xlat30 = (x_823 + x_824);
  let x_827 : vec3<f32> = u_xlat15;
  let x_828 : f32 = u_xlat30;
  let x_832 : vec4<f32> = u_xlat4;
  let x_835 : vec3<f32> = ((x_827 * -(vec3<f32>(x_828, x_828, x_828))) + -(vec3<f32>(x_832.x, x_832.y, x_832.z)));
  let x_836 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_835.x, x_835.y, x_835.z, x_836.w);
  let x_838 : vec3<f32> = u_xlat15;
  let x_839 : vec4<f32> = u_xlat4;
  u_xlat30 = dot(x_838, vec3<f32>(x_839.x, x_839.y, x_839.z));
  let x_842 : f32 = u_xlat30;
  u_xlat30 = clamp(x_842, 0.0f, 1.0f);
  let x_844 : f32 = u_xlat30;
  u_xlat30 = (-(x_844) + 1.0f);
  let x_847 : f32 = u_xlat30;
  let x_848 : f32 = u_xlat30;
  u_xlat30 = (x_847 * x_848);
  let x_850 : f32 = u_xlat30;
  let x_851 : f32 = u_xlat30;
  u_xlat30 = (x_850 * x_851);
  let x_853 : f32 = u_xlat37;
  u_xlat42 = ((-(x_853) * 0.699999988f) + 1.700000048f);
  let x_859 : f32 = u_xlat37;
  let x_860 : f32 = u_xlat42;
  u_xlat37 = (x_859 * x_860);
  let x_862 : f32 = u_xlat37;
  u_xlat37 = (x_862 * 6.0f);
  let x_873 : vec4<f32> = u_xlat8;
  let x_875 : f32 = u_xlat37;
  let x_876 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_873.x, x_873.y, x_873.z), x_875);
  u_xlat8 = x_876;
  let x_878 : f32 = u_xlat8.w;
  u_xlat37 = (x_878 + -1.0f);
  let x_881 : f32 = x_492.unity_SpecCube0_HDR.w;
  let x_882 : f32 = u_xlat37;
  u_xlat37 = ((x_881 * x_882) + 1.0f);
  let x_885 : f32 = u_xlat37;
  u_xlat37 = max(x_885, 0.0f);
  let x_887 : f32 = u_xlat37;
  u_xlat37 = log2(x_887);
  let x_889 : f32 = u_xlat37;
  let x_891 : f32 = x_492.unity_SpecCube0_HDR.y;
  u_xlat37 = (x_889 * x_891);
  let x_893 : f32 = u_xlat37;
  u_xlat37 = exp2(x_893);
  let x_895 : f32 = u_xlat37;
  let x_897 : f32 = x_492.unity_SpecCube0_HDR.x;
  u_xlat37 = (x_895 * x_897);
  let x_899 : vec4<f32> = u_xlat8;
  let x_901 : f32 = u_xlat37;
  let x_903 : vec3<f32> = (vec3<f32>(x_899.x, x_899.y, x_899.z) * vec3<f32>(x_901, x_901, x_901));
  let x_904 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_903.x, x_903.y, x_903.z, x_904.w);
  let x_908 : f32 = u_xlat38;
  let x_910 : f32 = u_xlat38;
  u_xlat9 = ((vec2<f32>(x_908, x_908) * vec2<f32>(x_910, x_910)) + vec2<f32>(-1.0f, 1.0f));
  let x_916 : f32 = u_xlat9.y;
  u_xlat37 = (1.0f / x_916);
  let x_919 : f32 = u_xlat3.x;
  u_xlat38 = (x_919 + -0.039999999f);
  let x_922 : f32 = u_xlat30;
  let x_923 : f32 = u_xlat38;
  u_xlat38 = ((x_922 * x_923) + 0.039999999f);
  let x_927 : f32 = u_xlat37;
  let x_928 : f32 = u_xlat38;
  u_xlat37 = (x_927 * x_928);
  let x_930 : f32 = u_xlat37;
  let x_932 : vec4<f32> = u_xlat8;
  let x_934 : vec3<f32> = (vec3<f32>(x_930, x_930, x_930) * vec3<f32>(x_932.x, x_932.y, x_932.z));
  let x_935 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_934.x, x_934.y, x_934.z, x_935.w);
  let x_937 : vec4<f32> = u_xlat5;
  let x_939 : vec3<f32> = u_xlat2;
  let x_941 : vec4<f32> = u_xlat8;
  let x_943 : vec3<f32> = ((vec3<f32>(x_937.x, x_937.y, x_937.z) * x_939) + vec3<f32>(x_941.x, x_941.y, x_941.z));
  let x_944 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_943.x, x_943.y, x_943.z, x_944.w);
  let x_946 : f32 = u_xlat36;
  let x_948 : f32 = x_492.unity_LightData.z;
  u_xlat36 = (x_946 * x_948);
  let x_950 : vec3<f32> = u_xlat15;
  let x_952 : vec4<f32> = x_66.x_MainLightPosition;
  u_xlat37 = dot(x_950, vec3<f32>(x_952.x, x_952.y, x_952.z));
  let x_955 : f32 = u_xlat37;
  u_xlat37 = clamp(x_955, 0.0f, 1.0f);
  let x_957 : f32 = u_xlat36;
  let x_958 : f32 = u_xlat37;
  u_xlat36 = (x_957 * x_958);
  let x_960 : f32 = u_xlat36;
  let x_962 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_960, x_960, x_960) * x_962);
  let x_964 : vec4<f32> = u_xlat4;
  let x_967 : vec4<f32> = x_66.x_MainLightPosition;
  let x_969 : vec3<f32> = (vec3<f32>(x_964.x, x_964.y, x_964.z) + vec3<f32>(x_967.x, x_967.y, x_967.z));
  let x_970 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_969.x, x_969.y, x_969.z, x_970.w);
  let x_972 : vec4<f32> = u_xlat8;
  let x_974 : vec4<f32> = u_xlat8;
  u_xlat36 = dot(vec3<f32>(x_972.x, x_972.y, x_972.z), vec3<f32>(x_974.x, x_974.y, x_974.z));
  let x_977 : f32 = u_xlat36;
  u_xlat36 = max(x_977, 1.17549435e-37f);
  let x_980 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_980);
  let x_982 : f32 = u_xlat36;
  let x_984 : vec4<f32> = u_xlat8;
  let x_986 : vec3<f32> = (vec3<f32>(x_982, x_982, x_982) * vec3<f32>(x_984.x, x_984.y, x_984.z));
  let x_987 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_986.x, x_986.y, x_986.z, x_987.w);
  let x_989 : vec3<f32> = u_xlat15;
  let x_990 : vec4<f32> = u_xlat8;
  u_xlat36 = dot(x_989, vec3<f32>(x_990.x, x_990.y, x_990.z));
  let x_993 : f32 = u_xlat36;
  u_xlat36 = clamp(x_993, 0.0f, 1.0f);
  let x_996 : vec4<f32> = x_66.x_MainLightPosition;
  let x_998 : vec4<f32> = u_xlat8;
  u_xlat37 = dot(vec3<f32>(x_996.x, x_996.y, x_996.z), vec3<f32>(x_998.x, x_998.y, x_998.z));
  let x_1001 : f32 = u_xlat37;
  u_xlat37 = clamp(x_1001, 0.0f, 1.0f);
  let x_1003 : f32 = u_xlat36;
  let x_1004 : f32 = u_xlat36;
  u_xlat36 = (x_1003 * x_1004);
  let x_1006 : f32 = u_xlat36;
  let x_1008 : f32 = u_xlat9.x;
  u_xlat36 = ((x_1006 * x_1008) + 1.000010014f);
  let x_1012 : f32 = u_xlat37;
  let x_1013 : f32 = u_xlat37;
  u_xlat37 = (x_1012 * x_1013);
  let x_1015 : f32 = u_xlat36;
  let x_1016 : f32 = u_xlat36;
  u_xlat36 = (x_1015 * x_1016);
  let x_1018 : f32 = u_xlat37;
  u_xlat37 = max(x_1018, 0.100000001f);
  let x_1021 : f32 = u_xlat36;
  let x_1022 : f32 = u_xlat37;
  u_xlat36 = (x_1021 * x_1022);
  let x_1024 : f32 = u_xlat41;
  let x_1025 : f32 = u_xlat36;
  u_xlat36 = (x_1024 * x_1025);
  let x_1027 : f32 = u_xlat40;
  let x_1028 : f32 = u_xlat36;
  u_xlat36 = (x_1027 / x_1028);
  let x_1030 : f32 = u_xlat36;
  let x_1034 : vec3<f32> = u_xlat2;
  let x_1035 : vec3<f32> = ((vec3<f32>(x_1030, x_1030, x_1030) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1034);
  let x_1036 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1035.x, x_1035.y, x_1035.z, x_1036.w);
  let x_1038 : vec3<f32> = u_xlat7;
  let x_1039 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_1038 * vec3<f32>(x_1039.x, x_1039.y, x_1039.z));
  let x_1044 : f32 = x_66.x_AdditionalLightsCount.x;
  let x_1046 : f32 = x_492.unity_LightData.y;
  u_xlat36 = min(x_1044, x_1046);
  let x_1048 : f32 = u_xlat36;
  u_xlatu36 = bitcast<u32>(i32(x_1048));
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1060 : u32 = u_xlatu_loop_1;
    let x_1061 : u32 = u_xlatu36;
    if ((x_1060 < x_1061)) {
    } else {
      break;
    }
    let x_1064 : u32 = u_xlatu_loop_1;
    u_xlatu38 = (x_1064 >> 2u);
    let x_1067 : u32 = u_xlatu_loop_1;
    u_xlati3 = bitcast<i32>((x_1067 & 3u));
    let x_1070 : u32 = u_xlatu38;
    let x_1073 : vec4<f32> = x_492.unity_LightIndices[bitcast<i32>(x_1070)];
    let x_1083 : i32 = u_xlati3;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1088 : vec4<u32> = indexable[x_1083];
    u_xlat38 = dot(x_1073, bitcast<vec4<f32>>(x_1088));
    let x_1092 : f32 = u_xlat38;
    u_xlati38 = i32(x_1092);
    let x_1095 : vec3<f32> = vs_INTERP0;
    let x_1107 : i32 = u_xlati38;
    let x_1109 : vec4<f32> = x_1106.x_AdditionalLightsPosition[x_1107];
    let x_1112 : i32 = u_xlati38;
    let x_1114 : vec4<f32> = x_1106.x_AdditionalLightsPosition[x_1112];
    u_xlat21 = ((-(x_1095) * vec3<f32>(x_1109.w, x_1109.w, x_1109.w)) + vec3<f32>(x_1114.x, x_1114.y, x_1114.z));
    let x_1117 : vec3<f32> = u_xlat21;
    let x_1118 : vec3<f32> = u_xlat21;
    u_xlat3.x = dot(x_1117, x_1118);
    let x_1122 : f32 = u_xlat3.x;
    u_xlat3.x = max(x_1122, 6.10351562e-05f);
    let x_1127 : f32 = u_xlat3.x;
    u_xlat30 = inverseSqrt(x_1127);
    let x_1130 : f32 = u_xlat30;
    let x_1132 : vec3<f32> = u_xlat21;
    u_xlat10 = (vec3<f32>(x_1130, x_1130, x_1130) * x_1132);
    let x_1135 : f32 = u_xlat3.x;
    u_xlat42 = (1.0f / x_1135);
    let x_1138 : f32 = u_xlat3.x;
    let x_1139 : i32 = u_xlati38;
    let x_1141 : f32 = x_1106.x_AdditionalLightsAttenuation[x_1139].x;
    u_xlat3.x = (x_1138 * x_1141);
    let x_1145 : f32 = u_xlat3.x;
    let x_1148 : f32 = u_xlat3.x;
    u_xlat3.x = ((-(x_1145) * x_1148) + 1.0f);
    let x_1153 : f32 = u_xlat3.x;
    u_xlat3.x = max(x_1153, 0.0f);
    let x_1157 : f32 = u_xlat3.x;
    let x_1159 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1157 * x_1159);
    let x_1163 : f32 = u_xlat3.x;
    let x_1164 : f32 = u_xlat42;
    u_xlat3.x = (x_1163 * x_1164);
    let x_1167 : i32 = u_xlati38;
    let x_1169 : vec4<f32> = x_1106.x_AdditionalLightsSpotDir[x_1167];
    let x_1171 : vec3<f32> = u_xlat10;
    u_xlat42 = dot(vec3<f32>(x_1169.x, x_1169.y, x_1169.z), x_1171);
    let x_1173 : f32 = u_xlat42;
    let x_1174 : i32 = u_xlati38;
    let x_1176 : f32 = x_1106.x_AdditionalLightsAttenuation[x_1174].z;
    let x_1178 : i32 = u_xlati38;
    let x_1180 : f32 = x_1106.x_AdditionalLightsAttenuation[x_1178].w;
    u_xlat42 = ((x_1173 * x_1176) + x_1180);
    let x_1182 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1182, 0.0f, 1.0f);
    let x_1184 : f32 = u_xlat42;
    let x_1185 : f32 = u_xlat42;
    u_xlat42 = (x_1184 * x_1185);
    let x_1188 : f32 = u_xlat3.x;
    let x_1189 : f32 = u_xlat42;
    u_xlat3.x = (x_1188 * x_1189);
    let x_1193 : f32 = u_xlat18;
    let x_1195 : i32 = u_xlati38;
    let x_1197 : vec4<f32> = x_1106.x_AdditionalLightsColor[x_1195];
    u_xlat11 = (vec3<f32>(x_1193, x_1193, x_1193) * vec3<f32>(x_1197.x, x_1197.y, x_1197.z));
    let x_1200 : vec3<f32> = u_xlat15;
    let x_1201 : vec3<f32> = u_xlat10;
    u_xlat38 = dot(x_1200, x_1201);
    let x_1203 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1203, 0.0f, 1.0f);
    let x_1205 : f32 = u_xlat38;
    let x_1207 : f32 = u_xlat3.x;
    u_xlat38 = (x_1205 * x_1207);
    let x_1209 : f32 = u_xlat38;
    let x_1211 : vec3<f32> = u_xlat11;
    u_xlat11 = (vec3<f32>(x_1209, x_1209, x_1209) * x_1211);
    let x_1213 : vec3<f32> = u_xlat21;
    let x_1214 : f32 = u_xlat30;
    let x_1217 : vec4<f32> = u_xlat4;
    u_xlat21 = ((x_1213 * vec3<f32>(x_1214, x_1214, x_1214)) + vec3<f32>(x_1217.x, x_1217.y, x_1217.z));
    let x_1220 : vec3<f32> = u_xlat21;
    let x_1221 : vec3<f32> = u_xlat21;
    u_xlat38 = dot(x_1220, x_1221);
    let x_1223 : f32 = u_xlat38;
    u_xlat38 = max(x_1223, 1.17549435e-37f);
    let x_1225 : f32 = u_xlat38;
    u_xlat38 = inverseSqrt(x_1225);
    let x_1227 : f32 = u_xlat38;
    let x_1229 : vec3<f32> = u_xlat21;
    u_xlat21 = (vec3<f32>(x_1227, x_1227, x_1227) * x_1229);
    let x_1231 : vec3<f32> = u_xlat15;
    let x_1232 : vec3<f32> = u_xlat21;
    u_xlat38 = dot(x_1231, x_1232);
    let x_1234 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1234, 0.0f, 1.0f);
    let x_1236 : vec3<f32> = u_xlat10;
    let x_1237 : vec3<f32> = u_xlat21;
    u_xlat3.x = dot(x_1236, x_1237);
    let x_1241 : f32 = u_xlat3.x;
    u_xlat3.x = clamp(x_1241, 0.0f, 1.0f);
    let x_1244 : f32 = u_xlat38;
    let x_1245 : f32 = u_xlat38;
    u_xlat38 = (x_1244 * x_1245);
    let x_1247 : f32 = u_xlat38;
    let x_1249 : f32 = u_xlat9.x;
    u_xlat38 = ((x_1247 * x_1249) + 1.000010014f);
    let x_1253 : f32 = u_xlat3.x;
    let x_1255 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1253 * x_1255);
    let x_1258 : f32 = u_xlat38;
    let x_1259 : f32 = u_xlat38;
    u_xlat38 = (x_1258 * x_1259);
    let x_1262 : f32 = u_xlat3.x;
    u_xlat3.x = max(x_1262, 0.100000001f);
    let x_1265 : f32 = u_xlat38;
    let x_1267 : f32 = u_xlat3.x;
    u_xlat38 = (x_1265 * x_1267);
    let x_1269 : f32 = u_xlat41;
    let x_1270 : f32 = u_xlat38;
    u_xlat38 = (x_1269 * x_1270);
    let x_1272 : f32 = u_xlat40;
    let x_1273 : f32 = u_xlat38;
    u_xlat38 = (x_1272 / x_1273);
    let x_1275 : f32 = u_xlat38;
    let x_1278 : vec3<f32> = u_xlat2;
    u_xlat21 = ((vec3<f32>(x_1275, x_1275, x_1275) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1278);
    let x_1280 : vec3<f32> = u_xlat21;
    let x_1281 : vec3<f32> = u_xlat11;
    let x_1283 : vec4<f32> = u_xlat8;
    let x_1285 : vec3<f32> = ((x_1280 * x_1281) + vec3<f32>(x_1283.x, x_1283.y, x_1283.z));
    let x_1286 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1285.x, x_1285.y, x_1285.z, x_1286.w);

    continuing {
      let x_1288 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1288 + bitcast<u32>(1i));
    }
  }
  let x_1290 : vec4<f32> = u_xlat5;
  let x_1292 : vec3<f32> = u_xlat6;
  let x_1295 : vec3<f32> = u_xlat7;
  u_xlat2 = ((vec3<f32>(x_1290.x, x_1290.y, x_1290.z) * vec3<f32>(x_1292.x, x_1292.x, x_1292.x)) + x_1295);
  let x_1297 : vec4<f32> = u_xlat8;
  let x_1299 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_1297.x, x_1297.y, x_1297.z) + x_1299);
  let x_1301 : vec4<f32> = vs_INTERP4;
  let x_1303 : vec3<f32> = u_xlat0;
  let x_1305 : vec3<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_1301.w, x_1301.w, x_1301.w) * x_1303) + x_1305);
  let x_1308 : f32 = u_xlat13.x;
  let x_1310 : f32 = u_xlat13.x;
  u_xlat36 = (x_1308 * -(x_1310));
  let x_1313 : f32 = u_xlat36;
  u_xlat36 = exp2(x_1313);
  let x_1315 : vec3<f32> = u_xlat0;
  let x_1318 : vec4<f32> = x_66.unity_FogColor;
  u_xlat0 = (x_1315 + -(vec3<f32>(x_1318.x, x_1318.y, x_1318.z)));
  let x_1324 : f32 = u_xlat36;
  let x_1326 : vec3<f32> = u_xlat0;
  let x_1329 : vec4<f32> = x_66.unity_FogColor;
  let x_1331 : vec3<f32> = ((vec3<f32>(x_1324, x_1324, x_1324) * x_1326) + vec3<f32>(x_1329.x, x_1329.y, x_1329.z));
  let x_1332 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1331.x, x_1331.y, x_1331.z, x_1332.w);
  let x_1334 : bool = u_xlatb25;
  if (x_1334) {
    let x_1339 : f32 = u_xlat1.x;
    x_1335 = x_1339;
  } else {
    x_1335 = 1.0f;
  }
  let x_1341 : f32 = x_1335;
  SV_Target0.w = x_1341;
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

