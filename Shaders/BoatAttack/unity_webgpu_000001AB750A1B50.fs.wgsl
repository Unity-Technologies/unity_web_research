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

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_2 = array<strided_arr, 8u>;

struct LightCookies {
  x_MainLightWorldToLight : mat4x4<f32>,
  x_AdditionalLightsCookieEnableBits : Arr_2,
  x_MainLightCookieTextureFormat : f32,
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
}

type Arr_3 = array<vec4<f32>, 256u>;

type Arr_4 = array<vec4<f32>, 256u>;

type Arr_5 = array<vec4<f32>, 256u>;

type Arr_6 = array<vec4<f32>, 256u>;

type Arr_7 = array<vec4<f32>, 256u>;

struct strided_arr_1 {
  @size(16)
  el : f32,
}

type Arr_8 = array<strided_arr_1, 256u>;

type Arr_9 = array<vec4<f32>, 256u>;

type Arr_10 = array<strided_arr_1, 256u>;

struct AdditionalLights {
  x_AdditionalLightsPosition : Arr_9,
  x_AdditionalLightsColor : Arr_9,
  x_AdditionalLightsAttenuation : Arr_9,
  x_AdditionalLightsSpotDir : Arr_9,
  x_AdditionalLightsOcclusionProbes : Arr_9,
  x_AdditionalLightsLayerMasks : Arr_10,
}

type Arr_11 = array<mat4x4<f32>, 256u>;

struct AdditionalLightsCookies {
  x_AdditionalLightsWorldToLights : Arr_11,
  x_AdditionalLightsCookieAtlasUVRects : Arr_9,
  x_AdditionalLightsLightTypes : Arr_10,
}

var<private> gl_FragCoord : vec4<f32>;

var<private> vs_INTERP1 : vec3<f32>;

@group(0) @binding(6) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(14) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_66 : PGlobals;

@group(1) @binding(6) var<uniform> x_78 : UnityPerMaterial;

@group(0) @binding(7) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(15) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> vs_INTERP4 : vec4<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_139 : MainLightShadows;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> vs_INTERP2 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_344 : UnityPerDraw;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP5 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_INTERP9 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_692 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1150 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1253 : AdditionalLightsCookies;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat42 : f32;
  var u_xlat17 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat44 : f32;
  var u_xlatb4 : bool;
  var u_xlatb18 : bool;
  var u_xlat14 : vec3<f32>;
  var u_xlatb42 : bool;
  var x_261 : f32;
  var u_xlat15 : f32;
  var u_xlat29 : f32;
  var u_xlatb15 : bool;
  var x_308 : f32;
  var u_xlatb1 : vec3<bool>;
  var u_xlatb17 : bool;
  var u_xlat31 : f32;
  var u_xlat5 : vec3<f32>;
  var x_461 : f32;
  var x_473 : f32;
  var x_484 : f32;
  var u_xlat18 : vec3<f32>;
  var u_xlat46 : f32;
  var u_xlat47 : f32;
  var u_xlat6 : f32;
  var u_xlat32 : f32;
  var txVec1 : vec3<f32>;
  var u_xlat20 : vec3<f32>;
  var u_xlatb20 : vec2<bool>;
  var u_xlatb34 : bool;
  var u_xlat34 : f32;
  var u_xlat7 : vec4<f32>;
  var x_777 : f32;
  var x_788 : vec3<f32>;
  var u_xlat49 : f32;
  var u_xlat8 : vec4<f32>;
  var u_xlat45 : f32;
  var u_xlatu44 : u32;
  var u_xlatb7 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu46 : u32;
  var u_xlati35 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat9 : vec3<f32>;
  var u_xlat35 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlat50 : f32;
  var u_xlatu50 : u32;
  var u_xlati51 : i32;
  var u_xlati50 : i32;
  var u_xlati52 : i32;
  var u_xlat11 : vec4<f32>;
  var u_xlatb50 : bool;
  var u_xlat39 : vec2<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb39 : vec2<bool>;
  var x_1548 : f32;
  var x_1561 : f32;
  var x_1613 : f32;
  var x_1624 : vec3<f32>;
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
  u_xlat42 = dot(x_106, x_107);
  let x_109 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_109);
  let x_112 : f32 = u_xlat42;
  let x_114 : vec4<f32> = u_xlat4;
  u_xlat17 = (vec3<f32>(x_112, x_112, x_112) * vec3<f32>(x_114.x, x_114.y, x_114.z));
  let x_120 : f32 = vs_INTERP4.y;
  u_xlat42 = (x_120 * 200.0f);
  let x_123 : f32 = u_xlat42;
  u_xlat42 = min(x_123, 1.0f);
  let x_125 : f32 = u_xlat42;
  let x_127 : vec4<f32> = u_xlat1;
  let x_129 : vec3<f32> = (vec3<f32>(x_125, x_125, x_125) * vec3<f32>(x_127.x, x_127.y, x_127.z));
  let x_130 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_129.x, x_129.y, x_129.z, x_130.w);
  let x_133 : vec3<f32> = vs_INTERP0;
  let x_142 : vec4<f32> = x_139.x_MainLightWorldToShadow[0i][1i];
  let x_144 : vec3<f32> = (vec3<f32>(x_133.y, x_133.y, x_133.y) * vec3<f32>(x_142.x, x_142.y, x_142.z));
  let x_145 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_144.x, x_144.y, x_144.z, x_145.w);
  let x_148 : vec4<f32> = x_139.x_MainLightWorldToShadow[0i][0i];
  let x_150 : vec3<f32> = vs_INTERP0;
  let x_153 : vec4<f32> = u_xlat4;
  let x_155 : vec3<f32> = ((vec3<f32>(x_148.x, x_148.y, x_148.z) * vec3<f32>(x_150.x, x_150.x, x_150.x)) + vec3<f32>(x_153.x, x_153.y, x_153.z));
  let x_156 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_155.x, x_155.y, x_155.z, x_156.w);
  let x_160 : vec4<f32> = x_139.x_MainLightWorldToShadow[0i][2i];
  let x_162 : vec3<f32> = vs_INTERP0;
  let x_165 : vec4<f32> = u_xlat4;
  let x_167 : vec3<f32> = ((vec3<f32>(x_160.x, x_160.y, x_160.z) * vec3<f32>(x_162.z, x_162.z, x_162.z)) + vec3<f32>(x_165.x, x_165.y, x_165.z));
  let x_168 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_167.x, x_167.y, x_167.z, x_168.w);
  let x_170 : vec4<f32> = u_xlat4;
  let x_174 : vec4<f32> = x_139.x_MainLightWorldToShadow[0i][3i];
  let x_176 : vec3<f32> = (vec3<f32>(x_170.x, x_170.y, x_170.z) + vec3<f32>(x_174.x, x_174.y, x_174.z));
  let x_177 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_176.x, x_176.y, x_176.z, x_177.w);
  let x_180 : vec4<f32> = u_xlat4;
  let x_181 : vec2<f32> = vec2<f32>(x_180.x, x_180.y);
  let x_184 : f32 = u_xlat4.z;
  txVec0 = vec3<f32>(x_181.x, x_181.y, x_184);
  let x_196 : vec3<f32> = txVec0;
  let x_199 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_196.xy, x_196.z);
  u_xlat42 = x_199;
  let x_203 : f32 = x_139.x_MainLightShadowParams.x;
  u_xlat44 = (-(x_203) + 1.0f);
  let x_206 : f32 = u_xlat42;
  let x_208 : f32 = x_139.x_MainLightShadowParams.x;
  let x_210 : f32 = u_xlat44;
  u_xlat42 = ((x_206 * x_208) + x_210);
  let x_216 : f32 = u_xlat4.z;
  u_xlatb4 = (0.0f >= x_216);
  let x_220 : f32 = u_xlat4.z;
  u_xlatb18 = (x_220 >= 1.0f);
  let x_222 : bool = u_xlatb18;
  let x_223 : bool = u_xlatb4;
  u_xlatb4 = (x_222 | x_223);
  let x_225 : bool = u_xlatb4;
  let x_226 : f32 = u_xlat42;
  u_xlat42 = select(x_226, 1.0f, x_225);
  let x_228 : vec3<f32> = u_xlat0;
  let x_230 : vec4<f32> = x_66.x_MainLightPosition;
  u_xlat0.x = dot(x_228, -(vec3<f32>(x_230.x, x_230.y, x_230.z)));
  let x_236 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_236, 0.0f, 1.0f);
  let x_240 : f32 = u_xlat42;
  let x_244 : vec4<f32> = x_66.x_MainLightColor;
  u_xlat14 = (vec3<f32>(x_240, x_240, x_240) * vec3<f32>(x_244.x, x_244.y, x_244.z));
  let x_247 : vec3<f32> = u_xlat14;
  let x_248 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_247 * vec3<f32>(x_248.x, x_248.x, x_248.x));
  let x_251 : vec3<f32> = u_xlat0;
  let x_252 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_251 * vec3<f32>(x_252.x, x_252.y, x_252.z));
  let x_257 : f32 = u_xlat1.w;
  u_xlatb42 = (x_257 >= 0.400000006f);
  let x_260 : bool = u_xlatb42;
  if (x_260) {
    let x_265 : f32 = u_xlat1.w;
    x_261 = x_265;
  } else {
    x_261 = 0.0f;
  }
  let x_267 : f32 = x_261;
  u_xlat42 = x_267;
  let x_269 : f32 = u_xlat1.w;
  u_xlat1.x = (x_269 + -0.400000006f);
  let x_275 : f32 = u_xlat1.w;
  u_xlat15 = dpdxCoarse(x_275);
  let x_279 : f32 = u_xlat1.w;
  u_xlat29 = dpdyCoarse(x_279);
  let x_281 : f32 = u_xlat29;
  let x_283 : f32 = u_xlat15;
  u_xlat15 = (abs(x_281) + abs(x_283));
  let x_286 : f32 = u_xlat15;
  u_xlat15 = max(x_286, 0.0001f);
  let x_290 : f32 = u_xlat1.x;
  let x_291 : f32 = u_xlat15;
  u_xlat1.x = (x_290 / x_291);
  let x_295 : f32 = u_xlat1.x;
  u_xlat1.x = (x_295 + 0.5f);
  let x_300 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_300, 0.0f, 1.0f);
  let x_305 : f32 = x_66.x_AlphaToMaskAvailable;
  u_xlatb15 = !((x_305 == 0.0f));
  let x_307 : bool = u_xlatb15;
  if (x_307) {
    let x_312 : f32 = u_xlat1.x;
    x_308 = x_312;
  } else {
    let x_314 : f32 = u_xlat42;
    x_308 = x_314;
  }
  let x_315 : f32 = x_308;
  u_xlat42 = x_315;
  let x_316 : f32 = u_xlat42;
  u_xlat1.x = (x_316 + -0.0001f);
  let x_324 : f32 = u_xlat1.x;
  u_xlatb1.x = (x_324 < 0.0f);
  let x_328 : bool = u_xlatb1.x;
  if (((select(0i, 1i, x_328) * -1i) != 0i)) {
    discard;
  }
  let x_338 : f32 = vs_INTERP2.w;
  u_xlatb1.x = (0.0f < x_338);
  let x_346 : f32 = x_344.unity_WorldTransformParams.w;
  u_xlatb1.z = (x_346 >= 0.0f);
  let x_350 : bool = u_xlatb1.x;
  u_xlat1.x = select(-1.0f, 1.0f, x_350);
  let x_354 : bool = u_xlatb1.z;
  u_xlat1.z = select(-1.0f, 1.0f, x_354);
  let x_358 : f32 = u_xlat1.z;
  let x_360 : f32 = u_xlat1.x;
  u_xlat1.x = (x_358 * x_360);
  let x_363 : vec3<f32> = vs_INTERP1;
  let x_365 : vec4<f32> = vs_INTERP2;
  let x_367 : vec3<f32> = (vec3<f32>(x_363.z, x_363.x, x_363.y) * vec3<f32>(x_365.y, x_365.z, x_365.x));
  let x_368 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_367.x, x_367.y, x_367.z, x_368.w);
  let x_370 : vec3<f32> = vs_INTERP1;
  let x_372 : vec4<f32> = vs_INTERP2;
  let x_375 : vec4<f32> = u_xlat4;
  let x_378 : vec3<f32> = ((vec3<f32>(x_370.y, x_370.z, x_370.x) * vec3<f32>(x_372.z, x_372.x, x_372.y)) + -(vec3<f32>(x_375.x, x_375.y, x_375.z)));
  let x_379 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_378.x, x_378.y, x_378.z, x_379.w);
  let x_381 : vec4<f32> = u_xlat1;
  let x_383 : vec4<f32> = u_xlat4;
  let x_385 : vec3<f32> = (vec3<f32>(x_381.x, x_381.x, x_381.x) * vec3<f32>(x_383.x, x_383.y, x_383.z));
  let x_386 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_385.x, x_386.y, x_385.y, x_385.z);
  let x_388 : vec4<f32> = u_xlat1;
  let x_390 : vec3<f32> = u_xlat17;
  let x_392 : vec3<f32> = (vec3<f32>(x_388.x, x_388.z, x_388.w) * vec3<f32>(x_390.y, x_390.y, x_390.y));
  let x_393 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_392.x, x_393.y, x_392.y, x_392.z);
  let x_395 : vec3<f32> = u_xlat17;
  let x_397 : vec4<f32> = vs_INTERP2;
  let x_400 : vec4<f32> = u_xlat1;
  let x_402 : vec3<f32> = ((vec3<f32>(x_395.x, x_395.x, x_395.x) * vec3<f32>(x_397.x, x_397.y, x_397.z)) + vec3<f32>(x_400.x, x_400.z, x_400.w));
  let x_403 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_402.x, x_403.y, x_402.y, x_402.z);
  let x_405 : vec3<f32> = u_xlat17;
  let x_407 : vec3<f32> = vs_INTERP1;
  let x_409 : vec4<f32> = u_xlat1;
  let x_411 : vec3<f32> = ((vec3<f32>(x_405.z, x_405.z, x_405.z) * x_407) + vec3<f32>(x_409.x, x_409.z, x_409.w));
  let x_412 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_411.x, x_412.y, x_411.y, x_411.z);
  let x_414 : vec4<f32> = u_xlat1;
  let x_416 : vec4<f32> = u_xlat1;
  u_xlat17.x = dot(vec3<f32>(x_414.x, x_414.z, x_414.w), vec3<f32>(x_416.x, x_416.z, x_416.w));
  let x_421 : f32 = u_xlat17.x;
  u_xlat17.x = inverseSqrt(x_421);
  let x_424 : vec4<f32> = u_xlat1;
  let x_426 : vec3<f32> = u_xlat17;
  let x_428 : vec3<f32> = (vec3<f32>(x_424.x, x_424.z, x_424.w) * vec3<f32>(x_426.x, x_426.x, x_426.x));
  let x_429 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_428.x, x_429.y, x_428.y, x_428.z);
  let x_433 : f32 = x_66.unity_OrthoParams.w;
  u_xlatb17 = (x_433 == 0.0f);
  let x_435 : vec3<f32> = vs_INTERP0;
  let x_440 : vec3<f32> = x_66.x_WorldSpaceCameraPos;
  let x_441 : vec3<f32> = (-(x_435) + x_440);
  let x_442 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_441.x, x_441.y, x_441.z, x_442.w);
  let x_445 : vec4<f32> = u_xlat4;
  let x_447 : vec4<f32> = u_xlat4;
  u_xlat31 = dot(vec3<f32>(x_445.x, x_445.y, x_445.z), vec3<f32>(x_447.x, x_447.y, x_447.z));
  let x_450 : f32 = u_xlat31;
  u_xlat31 = inverseSqrt(x_450);
  let x_452 : f32 = u_xlat31;
  let x_454 : vec4<f32> = u_xlat4;
  let x_456 : vec3<f32> = (vec3<f32>(x_452, x_452, x_452) * vec3<f32>(x_454.x, x_454.y, x_454.z));
  let x_457 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_456.x, x_456.y, x_456.z, x_457.w);
  let x_460 : bool = u_xlatb17;
  if (x_460) {
    let x_465 : f32 = u_xlat4.x;
    x_461 = x_465;
  } else {
    let x_469 : f32 = x_66.unity_MatrixV[0i].z;
    x_461 = x_469;
  }
  let x_470 : f32 = x_461;
  u_xlat5.x = x_470;
  let x_472 : bool = u_xlatb17;
  if (x_472) {
    let x_477 : f32 = u_xlat4.y;
    x_473 = x_477;
  } else {
    let x_480 : f32 = x_66.unity_MatrixV[1i].z;
    x_473 = x_480;
  }
  let x_481 : f32 = x_473;
  u_xlat5.y = x_481;
  let x_483 : bool = u_xlatb17;
  if (x_483) {
    let x_488 : f32 = u_xlat4.z;
    x_484 = x_488;
  } else {
    let x_491 : f32 = x_66.unity_MatrixV[2i].z;
    x_484 = x_491;
  }
  let x_492 : f32 = x_484;
  u_xlat5.z = x_492;
  let x_501 : vec2<f32> = vs_INTERP5;
  let x_503 : f32 = x_66.x_GlobalMipBias.x;
  let x_504 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_501, x_503);
  u_xlat17 = vec3<f32>(x_504.x, x_504.y, x_504.z);
  let x_508 : vec4<f32> = x_66.x_ScaledScreenParams;
  let x_509 : vec2<f32> = vec2<f32>(x_508.x, x_508.y);
  let x_513 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_509.x, x_509.y));
  let x_514 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_513.x, x_513.y, x_514.z, x_514.w);
  let x_516 : vec4<f32> = u_xlat4;
  let x_518 : vec4<f32> = hlslcc_FragCoord;
  let x_520 : vec2<f32> = (vec2<f32>(x_516.x, x_516.y) * vec2<f32>(x_518.x, x_518.y));
  let x_521 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_520.x, x_520.y, x_521.z, x_521.w);
  let x_525 : f32 = u_xlat4.y;
  let x_528 : f32 = x_66.x_ScaleBiasRt.x;
  let x_531 : f32 = x_66.x_ScaleBiasRt.y;
  u_xlat18.x = ((x_525 * x_528) + x_531);
  let x_535 : f32 = u_xlat18.x;
  u_xlat4.z = (-(x_535) + 1.0f);
  let x_540 : f32 = u_xlat3.x;
  u_xlat3.x = x_540;
  let x_543 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_543, 0.0f, 1.0f);
  let x_546 : f32 = u_xlat42;
  u_xlat42 = min(x_546, 1.0f);
  let x_548 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_548 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_553 : f32 = u_xlat3.x;
  u_xlat18.x = (-(x_553) + 1.0f);
  let x_559 : f32 = u_xlat18.x;
  let x_561 : f32 = u_xlat18.x;
  u_xlat46 = (x_559 * x_561);
  let x_563 : f32 = u_xlat46;
  u_xlat46 = max(x_563, 0.0078125f);
  let x_567 : f32 = u_xlat46;
  let x_568 : f32 = u_xlat46;
  u_xlat47 = (x_567 * x_568);
  let x_571 : f32 = u_xlat3.x;
  u_xlat3.x = (x_571 + 0.040000021f);
  let x_576 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_576, 1.0f);
  let x_580 : f32 = u_xlat46;
  u_xlat6 = ((x_580 * 4.0f) + 2.0f);
  let x_589 : vec4<f32> = u_xlat4;
  let x_592 : f32 = x_66.x_GlobalMipBias.x;
  let x_593 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_589.x, x_589.z), x_592);
  u_xlat4.x = x_593.x;
  let x_598 : f32 = u_xlat4.x;
  u_xlat32 = (x_598 + -1.0f);
  let x_602 : f32 = x_66.x_AmbientOcclusionParam.w;
  let x_603 : f32 = u_xlat32;
  u_xlat32 = ((x_602 * x_603) + 1.0f);
  let x_607 : f32 = u_xlat4.x;
  let x_609 : f32 = vs_INTERP4.w;
  u_xlat4.x = min(x_607, x_609);
  let x_614 : vec4<f32> = vs_INTERP9;
  let x_615 : vec2<f32> = vec2<f32>(x_614.x, x_614.y);
  let x_617 : f32 = vs_INTERP9.z;
  txVec1 = vec3<f32>(x_615.x, x_615.y, x_617);
  let x_625 : vec3<f32> = txVec1;
  let x_627 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_625.xy, x_625.z);
  u_xlat20.x = x_627;
  let x_630 : f32 = u_xlat20.x;
  let x_632 : f32 = x_139.x_MainLightShadowParams.x;
  let x_634 : f32 = u_xlat44;
  u_xlat44 = ((x_630 * x_632) + x_634);
  let x_640 : f32 = vs_INTERP9.z;
  u_xlatb20.x = (0.0f >= x_640);
  let x_645 : f32 = vs_INTERP9.z;
  u_xlatb34 = (x_645 >= 1.0f);
  let x_647 : bool = u_xlatb34;
  let x_649 : bool = u_xlatb20.x;
  u_xlatb20.x = (x_647 | x_649);
  let x_653 : bool = u_xlatb20.x;
  let x_654 : f32 = u_xlat44;
  u_xlat44 = select(x_654, 1.0f, x_653);
  let x_656 : vec3<f32> = vs_INTERP0;
  let x_658 : vec3<f32> = x_66.x_WorldSpaceCameraPos;
  u_xlat20 = (x_656 + -(x_658));
  let x_661 : vec3<f32> = u_xlat20;
  let x_662 : vec3<f32> = u_xlat20;
  u_xlat20.x = dot(x_661, x_662);
  let x_666 : f32 = u_xlat20.x;
  let x_668 : f32 = x_139.x_MainLightShadowParams.z;
  let x_671 : f32 = x_139.x_MainLightShadowParams.w;
  u_xlat20.x = ((x_666 * x_668) + x_671);
  let x_675 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_675, 0.0f, 1.0f);
  let x_679 : f32 = u_xlat44;
  u_xlat34 = (-(x_679) + 1.0f);
  let x_683 : f32 = u_xlat20.x;
  let x_684 : f32 = u_xlat34;
  let x_686 : f32 = u_xlat44;
  u_xlat44 = ((x_683 * x_684) + x_686);
  let x_694 : f32 = x_692.x_MainLightCookieTextureFormat;
  u_xlatb20.x = !((x_694 == -1.0f));
  let x_698 : bool = u_xlatb20.x;
  if (x_698) {
    let x_701 : vec3<f32> = vs_INTERP0;
    let x_704 : vec4<f32> = x_692.x_MainLightWorldToLight[1i];
    let x_706 : vec2<f32> = (vec2<f32>(x_701.y, x_701.y) * vec2<f32>(x_704.x, x_704.y));
    let x_707 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_706.x, x_706.y, x_707.z);
    let x_710 : vec4<f32> = x_692.x_MainLightWorldToLight[0i];
    let x_712 : vec3<f32> = vs_INTERP0;
    let x_715 : vec3<f32> = u_xlat20;
    let x_717 : vec2<f32> = ((vec2<f32>(x_710.x, x_710.y) * vec2<f32>(x_712.x, x_712.x)) + vec2<f32>(x_715.x, x_715.y));
    let x_718 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_717.x, x_717.y, x_718.z);
    let x_721 : vec4<f32> = x_692.x_MainLightWorldToLight[2i];
    let x_723 : vec3<f32> = vs_INTERP0;
    let x_726 : vec3<f32> = u_xlat20;
    let x_728 : vec2<f32> = ((vec2<f32>(x_721.x, x_721.y) * vec2<f32>(x_723.z, x_723.z)) + vec2<f32>(x_726.x, x_726.y));
    let x_729 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_728.x, x_728.y, x_729.z);
    let x_731 : vec3<f32> = u_xlat20;
    let x_734 : vec4<f32> = x_692.x_MainLightWorldToLight[3i];
    let x_736 : vec2<f32> = (vec2<f32>(x_731.x, x_731.y) + vec2<f32>(x_734.x, x_734.y));
    let x_737 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_736.x, x_736.y, x_737.z);
    let x_739 : vec3<f32> = u_xlat20;
    let x_743 : vec2<f32> = ((vec2<f32>(x_739.x, x_739.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_744 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_743.x, x_743.y, x_744.z);
    let x_752 : vec3<f32> = u_xlat20;
    let x_755 : f32 = x_66.x_GlobalMipBias.x;
    let x_756 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_752.x, x_752.y), x_755);
    u_xlat7 = x_756;
    let x_758 : f32 = x_692.x_MainLightCookieTextureFormat;
    let x_760 : f32 = x_692.x_MainLightCookieTextureFormat;
    let x_762 : f32 = x_692.x_MainLightCookieTextureFormat;
    let x_764 : f32 = x_692.x_MainLightCookieTextureFormat;
    let x_765 : vec4<f32> = vec4<f32>(x_758, x_760, x_762, x_764);
    let x_773 : vec4<bool> = (vec4<f32>(x_765.x, x_765.y, x_765.z, x_765.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb20 = vec2<bool>(x_773.x, x_773.y);
    let x_776 : bool = u_xlatb20.y;
    if (x_776) {
      let x_781 : f32 = u_xlat7.w;
      x_777 = x_781;
    } else {
      let x_784 : f32 = u_xlat7.x;
      x_777 = x_784;
    }
    let x_785 : f32 = x_777;
    u_xlat34 = x_785;
    let x_787 : bool = u_xlatb20.x;
    if (x_787) {
      let x_791 : vec4<f32> = u_xlat7;
      x_788 = vec3<f32>(x_791.x, x_791.y, x_791.z);
    } else {
      let x_794 : f32 = u_xlat34;
      x_788 = vec3<f32>(x_794, x_794, x_794);
    }
    let x_796 : vec3<f32> = x_788;
    u_xlat20 = x_796;
  } else {
    u_xlat20.x = 1.0f;
    u_xlat20.y = 1.0f;
    u_xlat20.z = 1.0f;
  }
  let x_801 : vec3<f32> = u_xlat20;
  let x_803 : vec4<f32> = x_66.x_MainLightColor;
  u_xlat20 = (x_801 * vec3<f32>(x_803.x, x_803.y, x_803.z));
  let x_806 : f32 = u_xlat32;
  let x_808 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_806, x_806, x_806) * x_808);
  let x_810 : vec3<f32> = u_xlat5;
  let x_812 : vec4<f32> = u_xlat1;
  u_xlat7.x = dot(-(x_810), vec3<f32>(x_812.x, x_812.z, x_812.w));
  let x_817 : f32 = u_xlat7.x;
  let x_819 : f32 = u_xlat7.x;
  u_xlat7.x = (x_817 + x_819);
  let x_822 : vec4<f32> = u_xlat1;
  let x_824 : vec4<f32> = u_xlat7;
  let x_828 : vec3<f32> = u_xlat5;
  let x_830 : vec3<f32> = ((vec3<f32>(x_822.x, x_822.z, x_822.w) * -(vec3<f32>(x_824.x, x_824.x, x_824.x))) + -(x_828));
  let x_831 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_830.x, x_830.y, x_830.z, x_831.w);
  let x_834 : vec4<f32> = u_xlat1;
  let x_836 : vec3<f32> = u_xlat5;
  u_xlat49 = dot(vec3<f32>(x_834.x, x_834.z, x_834.w), x_836);
  let x_838 : f32 = u_xlat49;
  u_xlat49 = clamp(x_838, 0.0f, 1.0f);
  let x_840 : f32 = u_xlat49;
  u_xlat49 = (-(x_840) + 1.0f);
  let x_843 : f32 = u_xlat49;
  let x_844 : f32 = u_xlat49;
  u_xlat49 = (x_843 * x_844);
  let x_846 : f32 = u_xlat49;
  let x_847 : f32 = u_xlat49;
  u_xlat49 = (x_846 * x_847);
  let x_851 : f32 = u_xlat18.x;
  u_xlat8.x = ((-(x_851) * 0.699999988f) + 1.700000048f);
  let x_859 : f32 = u_xlat18.x;
  let x_861 : f32 = u_xlat8.x;
  u_xlat18.x = (x_859 * x_861);
  let x_865 : f32 = u_xlat18.x;
  u_xlat18.x = (x_865 * 6.0f);
  let x_877 : vec4<f32> = u_xlat7;
  let x_880 : f32 = u_xlat18.x;
  let x_881 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_877.x, x_877.y, x_877.z), x_880);
  u_xlat8 = x_881;
  let x_883 : f32 = u_xlat8.w;
  u_xlat18.x = (x_883 + -1.0f);
  let x_887 : f32 = x_344.unity_SpecCube0_HDR.w;
  let x_889 : f32 = u_xlat18.x;
  u_xlat18.x = ((x_887 * x_889) + 1.0f);
  let x_894 : f32 = u_xlat18.x;
  u_xlat18.x = max(x_894, 0.0f);
  let x_898 : f32 = u_xlat18.x;
  u_xlat18.x = log2(x_898);
  let x_902 : f32 = u_xlat18.x;
  let x_904 : f32 = x_344.unity_SpecCube0_HDR.y;
  u_xlat18.x = (x_902 * x_904);
  let x_908 : f32 = u_xlat18.x;
  u_xlat18.x = exp2(x_908);
  let x_912 : f32 = u_xlat18.x;
  let x_914 : f32 = x_344.unity_SpecCube0_HDR.x;
  u_xlat18.x = (x_912 * x_914);
  let x_917 : vec4<f32> = u_xlat8;
  let x_919 : vec3<f32> = u_xlat18;
  let x_921 : vec3<f32> = (vec3<f32>(x_917.x, x_917.y, x_917.z) * vec3<f32>(x_919.x, x_919.x, x_919.x));
  let x_922 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_921.x, x_921.y, x_921.z, x_922.w);
  let x_924 : f32 = u_xlat46;
  let x_926 : f32 = u_xlat46;
  let x_930 : vec2<f32> = ((vec2<f32>(x_924, x_924) * vec2<f32>(x_926, x_926)) + vec2<f32>(-1.0f, 1.0f));
  let x_931 : vec3<f32> = u_xlat18;
  u_xlat18 = vec3<f32>(x_930.x, x_931.y, x_930.y);
  let x_934 : f32 = u_xlat18.z;
  u_xlat46 = (1.0f / x_934);
  let x_937 : f32 = u_xlat3.x;
  u_xlat3.x = (x_937 + -0.039999999f);
  let x_941 : f32 = u_xlat49;
  let x_943 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_941 * x_943) + 0.039999999f);
  let x_949 : f32 = u_xlat3.x;
  let x_950 : f32 = u_xlat46;
  u_xlat3.x = (x_949 * x_950);
  let x_953 : vec4<f32> = u_xlat3;
  let x_955 : vec4<f32> = u_xlat7;
  let x_957 : vec3<f32> = (vec3<f32>(x_953.x, x_953.x, x_953.x) * vec3<f32>(x_955.x, x_955.y, x_955.z));
  let x_958 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_957.x, x_957.y, x_957.z, x_958.w);
  let x_960 : vec3<f32> = u_xlat17;
  let x_961 : vec3<f32> = u_xlat2;
  let x_963 : vec4<f32> = u_xlat7;
  let x_965 : vec3<f32> = ((x_960 * x_961) + vec3<f32>(x_963.x, x_963.y, x_963.z));
  let x_966 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_965.x, x_965.y, x_965.z, x_966.w);
  let x_968 : f32 = u_xlat44;
  let x_970 : f32 = x_344.unity_LightData.z;
  u_xlat44 = (x_968 * x_970);
  let x_973 : vec4<f32> = u_xlat1;
  let x_976 : vec4<f32> = x_66.x_MainLightPosition;
  u_xlat45 = dot(vec3<f32>(x_973.x, x_973.z, x_973.w), vec3<f32>(x_976.x, x_976.y, x_976.z));
  let x_979 : f32 = u_xlat45;
  u_xlat45 = clamp(x_979, 0.0f, 1.0f);
  let x_981 : f32 = u_xlat44;
  let x_982 : f32 = u_xlat45;
  u_xlat44 = (x_981 * x_982);
  let x_984 : f32 = u_xlat44;
  let x_986 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_984, x_984, x_984) * x_986);
  let x_988 : vec3<f32> = u_xlat5;
  let x_990 : vec4<f32> = x_66.x_MainLightPosition;
  let x_992 : vec3<f32> = (x_988 + vec3<f32>(x_990.x, x_990.y, x_990.z));
  let x_993 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_992.x, x_992.y, x_992.z, x_993.w);
  let x_995 : vec4<f32> = u_xlat7;
  let x_997 : vec4<f32> = u_xlat7;
  u_xlat44 = dot(vec3<f32>(x_995.x, x_995.y, x_995.z), vec3<f32>(x_997.x, x_997.y, x_997.z));
  let x_1000 : f32 = u_xlat44;
  u_xlat44 = max(x_1000, 1.17549435e-37f);
  let x_1003 : f32 = u_xlat44;
  u_xlat44 = inverseSqrt(x_1003);
  let x_1005 : f32 = u_xlat44;
  let x_1007 : vec4<f32> = u_xlat7;
  let x_1009 : vec3<f32> = (vec3<f32>(x_1005, x_1005, x_1005) * vec3<f32>(x_1007.x, x_1007.y, x_1007.z));
  let x_1010 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1009.x, x_1009.y, x_1009.z, x_1010.w);
  let x_1012 : vec4<f32> = u_xlat1;
  let x_1014 : vec4<f32> = u_xlat7;
  u_xlat44 = dot(vec3<f32>(x_1012.x, x_1012.z, x_1012.w), vec3<f32>(x_1014.x, x_1014.y, x_1014.z));
  let x_1017 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1017, 0.0f, 1.0f);
  let x_1020 : vec4<f32> = x_66.x_MainLightPosition;
  let x_1022 : vec4<f32> = u_xlat7;
  u_xlat45 = dot(vec3<f32>(x_1020.x, x_1020.y, x_1020.z), vec3<f32>(x_1022.x, x_1022.y, x_1022.z));
  let x_1025 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1025, 0.0f, 1.0f);
  let x_1027 : f32 = u_xlat44;
  let x_1028 : f32 = u_xlat44;
  u_xlat44 = (x_1027 * x_1028);
  let x_1030 : f32 = u_xlat44;
  let x_1032 : f32 = u_xlat18.x;
  u_xlat44 = ((x_1030 * x_1032) + 1.000010014f);
  let x_1036 : f32 = u_xlat45;
  let x_1037 : f32 = u_xlat45;
  u_xlat45 = (x_1036 * x_1037);
  let x_1039 : f32 = u_xlat44;
  let x_1040 : f32 = u_xlat44;
  u_xlat44 = (x_1039 * x_1040);
  let x_1042 : f32 = u_xlat45;
  u_xlat45 = max(x_1042, 0.100000001f);
  let x_1045 : f32 = u_xlat44;
  let x_1046 : f32 = u_xlat45;
  u_xlat44 = (x_1045 * x_1046);
  let x_1048 : f32 = u_xlat6;
  let x_1049 : f32 = u_xlat44;
  u_xlat44 = (x_1048 * x_1049);
  let x_1051 : f32 = u_xlat47;
  let x_1052 : f32 = u_xlat44;
  u_xlat44 = (x_1051 / x_1052);
  let x_1054 : f32 = u_xlat44;
  let x_1058 : vec3<f32> = u_xlat2;
  let x_1059 : vec3<f32> = ((vec3<f32>(x_1054, x_1054, x_1054) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1058);
  let x_1060 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1059.x, x_1059.y, x_1059.z, x_1060.w);
  let x_1062 : vec3<f32> = u_xlat20;
  let x_1063 : vec4<f32> = u_xlat7;
  u_xlat20 = (x_1062 * vec3<f32>(x_1063.x, x_1063.y, x_1063.z));
  let x_1068 : f32 = x_66.x_AdditionalLightsCount.x;
  let x_1070 : f32 = x_344.unity_LightData.y;
  u_xlat44 = min(x_1068, x_1070);
  let x_1074 : f32 = u_xlat44;
  u_xlatu44 = bitcast<u32>(i32(x_1074));
  let x_1079 : f32 = x_692.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1081 : f32 = x_692.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1083 : f32 = x_692.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1085 : f32 = x_692.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1086 : vec4<f32> = vec4<f32>(x_1079, x_1081, x_1083, x_1085);
  let x_1092 : vec4<bool> = (vec4<f32>(x_1086.x, x_1086.y, x_1086.z, x_1086.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1092.x, x_1092.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1103 : u32 = u_xlatu_loop_1;
    let x_1104 : u32 = u_xlatu44;
    if ((x_1103 < x_1104)) {
    } else {
      break;
    }
    let x_1107 : u32 = u_xlatu_loop_1;
    u_xlatu46 = (x_1107 >> 2u);
    let x_1111 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_1111 & 3u));
    let x_1114 : u32 = u_xlatu46;
    let x_1117 : vec4<f32> = x_344.unity_LightIndices[bitcast<i32>(x_1114)];
    let x_1127 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1132 : vec4<u32> = indexable[x_1127];
    u_xlat46 = dot(x_1117, bitcast<vec4<f32>>(x_1132));
    let x_1135 : f32 = u_xlat46;
    u_xlatu46 = bitcast<u32>(i32(x_1135));
    let x_1139 : vec3<f32> = vs_INTERP0;
    let x_1151 : u32 = u_xlatu46;
    let x_1154 : vec4<f32> = x_1150.x_AdditionalLightsPosition[bitcast<i32>(x_1151)];
    let x_1157 : u32 = u_xlatu46;
    let x_1160 : vec4<f32> = x_1150.x_AdditionalLightsPosition[bitcast<i32>(x_1157)];
    u_xlat9 = ((-(x_1139) * vec3<f32>(x_1154.w, x_1154.w, x_1154.w)) + vec3<f32>(x_1160.x, x_1160.y, x_1160.z));
    let x_1164 : vec3<f32> = u_xlat9;
    let x_1165 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1164, x_1165);
    let x_1167 : f32 = u_xlat35;
    u_xlat35 = max(x_1167, 6.10351562e-05f);
    let x_1170 : f32 = u_xlat35;
    u_xlat49 = inverseSqrt(x_1170);
    let x_1173 : f32 = u_xlat49;
    let x_1175 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1173, x_1173, x_1173) * x_1175);
    let x_1178 : f32 = u_xlat35;
    u_xlat50 = (1.0f / x_1178);
    let x_1180 : f32 = u_xlat35;
    let x_1181 : u32 = u_xlatu46;
    let x_1184 : f32 = x_1150.x_AdditionalLightsAttenuation[bitcast<i32>(x_1181)].x;
    u_xlat35 = (x_1180 * x_1184);
    let x_1186 : f32 = u_xlat35;
    let x_1188 : f32 = u_xlat35;
    u_xlat35 = ((-(x_1186) * x_1188) + 1.0f);
    let x_1191 : f32 = u_xlat35;
    u_xlat35 = max(x_1191, 0.0f);
    let x_1193 : f32 = u_xlat35;
    let x_1194 : f32 = u_xlat35;
    u_xlat35 = (x_1193 * x_1194);
    let x_1196 : f32 = u_xlat35;
    let x_1197 : f32 = u_xlat50;
    u_xlat35 = (x_1196 * x_1197);
    let x_1199 : u32 = u_xlatu46;
    let x_1202 : vec4<f32> = x_1150.x_AdditionalLightsSpotDir[bitcast<i32>(x_1199)];
    let x_1204 : vec3<f32> = u_xlat10;
    u_xlat50 = dot(vec3<f32>(x_1202.x, x_1202.y, x_1202.z), x_1204);
    let x_1206 : f32 = u_xlat50;
    let x_1207 : u32 = u_xlatu46;
    let x_1210 : f32 = x_1150.x_AdditionalLightsAttenuation[bitcast<i32>(x_1207)].z;
    let x_1212 : u32 = u_xlatu46;
    let x_1215 : f32 = x_1150.x_AdditionalLightsAttenuation[bitcast<i32>(x_1212)].w;
    u_xlat50 = ((x_1206 * x_1210) + x_1215);
    let x_1217 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1217, 0.0f, 1.0f);
    let x_1219 : f32 = u_xlat50;
    let x_1220 : f32 = u_xlat50;
    u_xlat50 = (x_1219 * x_1220);
    let x_1222 : f32 = u_xlat35;
    let x_1223 : f32 = u_xlat50;
    u_xlat35 = (x_1222 * x_1223);
    let x_1226 : u32 = u_xlatu46;
    u_xlatu50 = (x_1226 >> 5u);
    let x_1229 : u32 = u_xlatu46;
    u_xlati51 = (1i << bitcast<u32>((bitcast<i32>(x_1229) & 31i)));
    let x_1235 : i32 = u_xlati51;
    let x_1237 : u32 = u_xlatu50;
    let x_1240 : f32 = x_692.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1237)].el;
    u_xlati50 = bitcast<i32>((bitcast<u32>(x_1235) & bitcast<u32>(x_1240)));
    let x_1244 : i32 = u_xlati50;
    if ((x_1244 != 0i)) {
      let x_1254 : u32 = u_xlatu46;
      let x_1257 : f32 = x_1253.x_AdditionalLightsLightTypes[bitcast<i32>(x_1254)].el;
      u_xlati50 = i32(x_1257);
      let x_1259 : i32 = u_xlati50;
      u_xlati51 = select(1i, 0i, (x_1259 != 0i));
      let x_1263 : u32 = u_xlatu46;
      u_xlati52 = (bitcast<i32>(x_1263) << bitcast<u32>(2i));
      let x_1266 : i32 = u_xlati51;
      if ((x_1266 != 0i)) {
        let x_1271 : vec3<f32> = vs_INTERP0;
        let x_1273 : i32 = u_xlati52;
        let x_1276 : i32 = u_xlati52;
        let x_1280 : vec4<f32> = x_1253.x_AdditionalLightsWorldToLights[((x_1273 + 1i) / 4i)][((x_1276 + 1i) % 4i)];
        let x_1282 : vec3<f32> = (vec3<f32>(x_1271.y, x_1271.y, x_1271.y) * vec3<f32>(x_1280.x, x_1280.y, x_1280.w));
        let x_1283 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1282.x, x_1282.y, x_1282.z, x_1283.w);
        let x_1285 : i32 = u_xlati52;
        let x_1287 : i32 = u_xlati52;
        let x_1290 : vec4<f32> = x_1253.x_AdditionalLightsWorldToLights[(x_1285 / 4i)][(x_1287 % 4i)];
        let x_1292 : vec3<f32> = vs_INTERP0;
        let x_1295 : vec4<f32> = u_xlat11;
        let x_1297 : vec3<f32> = ((vec3<f32>(x_1290.x, x_1290.y, x_1290.w) * vec3<f32>(x_1292.x, x_1292.x, x_1292.x)) + vec3<f32>(x_1295.x, x_1295.y, x_1295.z));
        let x_1298 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1297.x, x_1297.y, x_1297.z, x_1298.w);
        let x_1300 : i32 = u_xlati52;
        let x_1303 : i32 = u_xlati52;
        let x_1307 : vec4<f32> = x_1253.x_AdditionalLightsWorldToLights[((x_1300 + 2i) / 4i)][((x_1303 + 2i) % 4i)];
        let x_1309 : vec3<f32> = vs_INTERP0;
        let x_1312 : vec4<f32> = u_xlat11;
        let x_1314 : vec3<f32> = ((vec3<f32>(x_1307.x, x_1307.y, x_1307.w) * vec3<f32>(x_1309.z, x_1309.z, x_1309.z)) + vec3<f32>(x_1312.x, x_1312.y, x_1312.z));
        let x_1315 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1314.x, x_1314.y, x_1314.z, x_1315.w);
        let x_1317 : vec4<f32> = u_xlat11;
        let x_1319 : i32 = u_xlati52;
        let x_1322 : i32 = u_xlati52;
        let x_1326 : vec4<f32> = x_1253.x_AdditionalLightsWorldToLights[((x_1319 + 3i) / 4i)][((x_1322 + 3i) % 4i)];
        let x_1328 : vec3<f32> = (vec3<f32>(x_1317.x, x_1317.y, x_1317.z) + vec3<f32>(x_1326.x, x_1326.y, x_1326.w));
        let x_1329 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1328.x, x_1328.y, x_1328.z, x_1329.w);
        let x_1331 : vec4<f32> = u_xlat11;
        let x_1333 : vec4<f32> = u_xlat11;
        let x_1335 : vec2<f32> = (vec2<f32>(x_1331.x, x_1331.y) / vec2<f32>(x_1333.z, x_1333.z));
        let x_1336 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1335.x, x_1335.y, x_1336.z, x_1336.w);
        let x_1338 : vec4<f32> = u_xlat11;
        let x_1341 : vec2<f32> = ((vec2<f32>(x_1338.x, x_1338.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1342 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1341.x, x_1341.y, x_1342.z, x_1342.w);
        let x_1344 : vec4<f32> = u_xlat11;
        let x_1348 : vec2<f32> = clamp(vec2<f32>(x_1344.x, x_1344.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1349 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1348.x, x_1348.y, x_1349.z, x_1349.w);
        let x_1351 : u32 = u_xlatu46;
        let x_1354 : vec4<f32> = x_1253.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1351)];
        let x_1356 : vec4<f32> = u_xlat11;
        let x_1359 : u32 = u_xlatu46;
        let x_1362 : vec4<f32> = x_1253.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1359)];
        let x_1364 : vec2<f32> = ((vec2<f32>(x_1354.x, x_1354.y) * vec2<f32>(x_1356.x, x_1356.y)) + vec2<f32>(x_1362.z, x_1362.w));
        let x_1365 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1364.x, x_1364.y, x_1365.z, x_1365.w);
      } else {
        let x_1369 : i32 = u_xlati50;
        u_xlatb50 = (x_1369 == 1i);
        let x_1371 : bool = u_xlatb50;
        u_xlati50 = select(0i, 1i, x_1371);
        let x_1373 : i32 = u_xlati50;
        if ((x_1373 != 0i)) {
          let x_1379 : vec3<f32> = vs_INTERP0;
          let x_1381 : i32 = u_xlati52;
          let x_1384 : i32 = u_xlati52;
          let x_1388 : vec4<f32> = x_1253.x_AdditionalLightsWorldToLights[((x_1381 + 1i) / 4i)][((x_1384 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1379.y, x_1379.y) * vec2<f32>(x_1388.x, x_1388.y));
          let x_1391 : i32 = u_xlati52;
          let x_1393 : i32 = u_xlati52;
          let x_1396 : vec4<f32> = x_1253.x_AdditionalLightsWorldToLights[(x_1391 / 4i)][(x_1393 % 4i)];
          let x_1398 : vec3<f32> = vs_INTERP0;
          let x_1401 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1396.x, x_1396.y) * vec2<f32>(x_1398.x, x_1398.x)) + x_1401);
          let x_1403 : i32 = u_xlati52;
          let x_1406 : i32 = u_xlati52;
          let x_1410 : vec4<f32> = x_1253.x_AdditionalLightsWorldToLights[((x_1403 + 2i) / 4i)][((x_1406 + 2i) % 4i)];
          let x_1412 : vec3<f32> = vs_INTERP0;
          let x_1415 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1410.x, x_1410.y) * vec2<f32>(x_1412.z, x_1412.z)) + x_1415);
          let x_1417 : vec2<f32> = u_xlat39;
          let x_1418 : i32 = u_xlati52;
          let x_1421 : i32 = u_xlati52;
          let x_1425 : vec4<f32> = x_1253.x_AdditionalLightsWorldToLights[((x_1418 + 3i) / 4i)][((x_1421 + 3i) % 4i)];
          u_xlat39 = (x_1417 + vec2<f32>(x_1425.x, x_1425.y));
          let x_1428 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1428 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1431 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1431);
          let x_1433 : u32 = u_xlatu46;
          let x_1436 : vec4<f32> = x_1253.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1433)];
          let x_1438 : vec2<f32> = u_xlat39;
          let x_1440 : u32 = u_xlatu46;
          let x_1443 : vec4<f32> = x_1253.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1440)];
          let x_1445 : vec2<f32> = ((vec2<f32>(x_1436.x, x_1436.y) * x_1438) + vec2<f32>(x_1443.z, x_1443.w));
          let x_1446 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1445.x, x_1445.y, x_1446.z, x_1446.w);
        } else {
          let x_1450 : vec3<f32> = vs_INTERP0;
          let x_1452 : i32 = u_xlati52;
          let x_1455 : i32 = u_xlati52;
          let x_1459 : vec4<f32> = x_1253.x_AdditionalLightsWorldToLights[((x_1452 + 1i) / 4i)][((x_1455 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1450.y, x_1450.y, x_1450.y, x_1450.y) * x_1459);
          let x_1461 : i32 = u_xlati52;
          let x_1463 : i32 = u_xlati52;
          let x_1466 : vec4<f32> = x_1253.x_AdditionalLightsWorldToLights[(x_1461 / 4i)][(x_1463 % 4i)];
          let x_1467 : vec3<f32> = vs_INTERP0;
          let x_1470 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1466 * vec4<f32>(x_1467.x, x_1467.x, x_1467.x, x_1467.x)) + x_1470);
          let x_1472 : i32 = u_xlati52;
          let x_1475 : i32 = u_xlati52;
          let x_1479 : vec4<f32> = x_1253.x_AdditionalLightsWorldToLights[((x_1472 + 2i) / 4i)][((x_1475 + 2i) % 4i)];
          let x_1480 : vec3<f32> = vs_INTERP0;
          let x_1483 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1479 * vec4<f32>(x_1480.z, x_1480.z, x_1480.z, x_1480.z)) + x_1483);
          let x_1485 : vec4<f32> = u_xlat12;
          let x_1486 : i32 = u_xlati52;
          let x_1489 : i32 = u_xlati52;
          let x_1493 : vec4<f32> = x_1253.x_AdditionalLightsWorldToLights[((x_1486 + 3i) / 4i)][((x_1489 + 3i) % 4i)];
          u_xlat12 = (x_1485 + x_1493);
          let x_1495 : vec4<f32> = u_xlat12;
          let x_1497 : vec4<f32> = u_xlat12;
          let x_1499 : vec3<f32> = (vec3<f32>(x_1495.x, x_1495.y, x_1495.z) / vec3<f32>(x_1497.w, x_1497.w, x_1497.w));
          let x_1500 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1499.x, x_1499.y, x_1499.z, x_1500.w);
          let x_1502 : vec4<f32> = u_xlat12;
          let x_1504 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(vec3<f32>(x_1502.x, x_1502.y, x_1502.z), vec3<f32>(x_1504.x, x_1504.y, x_1504.z));
          let x_1507 : f32 = u_xlat50;
          u_xlat50 = inverseSqrt(x_1507);
          let x_1509 : f32 = u_xlat50;
          let x_1511 : vec4<f32> = u_xlat12;
          let x_1513 : vec3<f32> = (vec3<f32>(x_1509, x_1509, x_1509) * vec3<f32>(x_1511.x, x_1511.y, x_1511.z));
          let x_1514 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1513.x, x_1513.y, x_1513.z, x_1514.w);
          let x_1516 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(abs(vec3<f32>(x_1516.x, x_1516.y, x_1516.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1521 : f32 = u_xlat50;
          u_xlat50 = max(x_1521, 0.000001f);
          let x_1524 : f32 = u_xlat50;
          u_xlat50 = (1.0f / x_1524);
          let x_1527 : f32 = u_xlat50;
          let x_1529 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1527, x_1527, x_1527) * vec3<f32>(x_1529.z, x_1529.x, x_1529.y));
          let x_1533 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1533);
          let x_1537 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1537, 0.0f, 1.0f);
          let x_1541 : vec3<f32> = u_xlat13;
          let x_1544 : vec4<bool> = (vec4<f32>(x_1541.y, x_1541.z, x_1541.y, x_1541.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1544.x, x_1544.y);
          let x_1547 : bool = u_xlatb39.x;
          if (x_1547) {
            let x_1552 : f32 = u_xlat13.x;
            x_1548 = x_1552;
          } else {
            let x_1555 : f32 = u_xlat13.x;
            x_1548 = -(x_1555);
          }
          let x_1557 : f32 = x_1548;
          u_xlat39.x = x_1557;
          let x_1560 : bool = u_xlatb39.y;
          if (x_1560) {
            let x_1565 : f32 = u_xlat13.x;
            x_1561 = x_1565;
          } else {
            let x_1568 : f32 = u_xlat13.x;
            x_1561 = -(x_1568);
          }
          let x_1570 : f32 = x_1561;
          u_xlat39.y = x_1570;
          let x_1572 : vec4<f32> = u_xlat12;
          let x_1574 : f32 = u_xlat50;
          let x_1577 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1572.x, x_1572.y) * vec2<f32>(x_1574, x_1574)) + x_1577);
          let x_1579 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1579 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1582 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_1582, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1586 : u32 = u_xlatu46;
          let x_1589 : vec4<f32> = x_1253.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1586)];
          let x_1591 : vec2<f32> = u_xlat39;
          let x_1593 : u32 = u_xlatu46;
          let x_1596 : vec4<f32> = x_1253.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1593)];
          let x_1598 : vec2<f32> = ((vec2<f32>(x_1589.x, x_1589.y) * x_1591) + vec2<f32>(x_1596.z, x_1596.w));
          let x_1599 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1598.x, x_1598.y, x_1599.z, x_1599.w);
        }
      }
      let x_1606 : vec4<f32> = u_xlat11;
      let x_1609 : f32 = x_66.x_GlobalMipBias.x;
      let x_1610 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1606.x, x_1606.y), x_1609);
      u_xlat11 = x_1610;
      let x_1612 : bool = u_xlatb7.y;
      if (x_1612) {
        let x_1617 : f32 = u_xlat11.w;
        x_1613 = x_1617;
      } else {
        let x_1620 : f32 = u_xlat11.x;
        x_1613 = x_1620;
      }
      let x_1621 : f32 = x_1613;
      u_xlat50 = x_1621;
      let x_1623 : bool = u_xlatb7.x;
      if (x_1623) {
        let x_1627 : vec4<f32> = u_xlat11;
        x_1624 = vec3<f32>(x_1627.x, x_1627.y, x_1627.z);
      } else {
        let x_1630 : f32 = u_xlat50;
        x_1624 = vec3<f32>(x_1630, x_1630, x_1630);
      }
      let x_1632 : vec3<f32> = x_1624;
      let x_1633 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1632.x, x_1632.y, x_1632.z, x_1633.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1639 : vec4<f32> = u_xlat11;
    let x_1641 : u32 = u_xlatu46;
    let x_1644 : vec4<f32> = x_1150.x_AdditionalLightsColor[bitcast<i32>(x_1641)];
    let x_1646 : vec3<f32> = (vec3<f32>(x_1639.x, x_1639.y, x_1639.z) * vec3<f32>(x_1644.x, x_1644.y, x_1644.z));
    let x_1647 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1646.x, x_1646.y, x_1646.z, x_1647.w);
    let x_1649 : f32 = u_xlat32;
    let x_1651 : vec4<f32> = u_xlat11;
    let x_1653 : vec3<f32> = (vec3<f32>(x_1649, x_1649, x_1649) * vec3<f32>(x_1651.x, x_1651.y, x_1651.z));
    let x_1654 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1653.x, x_1653.y, x_1653.z, x_1654.w);
    let x_1656 : vec4<f32> = u_xlat1;
    let x_1658 : vec3<f32> = u_xlat10;
    u_xlat46 = dot(vec3<f32>(x_1656.x, x_1656.z, x_1656.w), x_1658);
    let x_1660 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1660, 0.0f, 1.0f);
    let x_1662 : f32 = u_xlat46;
    let x_1663 : f32 = u_xlat35;
    u_xlat46 = (x_1662 * x_1663);
    let x_1665 : f32 = u_xlat46;
    let x_1667 : vec4<f32> = u_xlat11;
    let x_1669 : vec3<f32> = (vec3<f32>(x_1665, x_1665, x_1665) * vec3<f32>(x_1667.x, x_1667.y, x_1667.z));
    let x_1670 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1669.x, x_1669.y, x_1669.z, x_1670.w);
    let x_1672 : vec3<f32> = u_xlat9;
    let x_1673 : f32 = u_xlat49;
    let x_1676 : vec3<f32> = u_xlat5;
    u_xlat9 = ((x_1672 * vec3<f32>(x_1673, x_1673, x_1673)) + x_1676);
    let x_1678 : vec3<f32> = u_xlat9;
    let x_1679 : vec3<f32> = u_xlat9;
    u_xlat46 = dot(x_1678, x_1679);
    let x_1681 : f32 = u_xlat46;
    u_xlat46 = max(x_1681, 1.17549435e-37f);
    let x_1683 : f32 = u_xlat46;
    u_xlat46 = inverseSqrt(x_1683);
    let x_1685 : f32 = u_xlat46;
    let x_1687 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1685, x_1685, x_1685) * x_1687);
    let x_1689 : vec4<f32> = u_xlat1;
    let x_1691 : vec3<f32> = u_xlat9;
    u_xlat46 = dot(vec3<f32>(x_1689.x, x_1689.z, x_1689.w), x_1691);
    let x_1693 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1693, 0.0f, 1.0f);
    let x_1695 : vec3<f32> = u_xlat10;
    let x_1696 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1695, x_1696);
    let x_1698 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1698, 0.0f, 1.0f);
    let x_1700 : f32 = u_xlat46;
    let x_1701 : f32 = u_xlat46;
    u_xlat46 = (x_1700 * x_1701);
    let x_1703 : f32 = u_xlat46;
    let x_1705 : f32 = u_xlat18.x;
    u_xlat46 = ((x_1703 * x_1705) + 1.000010014f);
    let x_1708 : f32 = u_xlat35;
    let x_1709 : f32 = u_xlat35;
    u_xlat35 = (x_1708 * x_1709);
    let x_1711 : f32 = u_xlat46;
    let x_1712 : f32 = u_xlat46;
    u_xlat46 = (x_1711 * x_1712);
    let x_1714 : f32 = u_xlat35;
    u_xlat35 = max(x_1714, 0.100000001f);
    let x_1716 : f32 = u_xlat46;
    let x_1717 : f32 = u_xlat35;
    u_xlat46 = (x_1716 * x_1717);
    let x_1719 : f32 = u_xlat6;
    let x_1720 : f32 = u_xlat46;
    u_xlat46 = (x_1719 * x_1720);
    let x_1722 : f32 = u_xlat47;
    let x_1723 : f32 = u_xlat46;
    u_xlat46 = (x_1722 / x_1723);
    let x_1725 : f32 = u_xlat46;
    let x_1728 : vec3<f32> = u_xlat2;
    u_xlat9 = ((vec3<f32>(x_1725, x_1725, x_1725) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1728);
    let x_1730 : vec3<f32> = u_xlat9;
    let x_1731 : vec4<f32> = u_xlat11;
    let x_1734 : vec4<f32> = u_xlat8;
    let x_1736 : vec3<f32> = ((x_1730 * vec3<f32>(x_1731.x, x_1731.y, x_1731.z)) + vec3<f32>(x_1734.x, x_1734.y, x_1734.z));
    let x_1737 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1736.x, x_1736.y, x_1736.z, x_1737.w);

    continuing {
      let x_1739 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1739 + bitcast<u32>(1i));
    }
  }
  let x_1741 : vec4<f32> = u_xlat3;
  let x_1743 : vec4<f32> = u_xlat4;
  let x_1746 : vec3<f32> = u_xlat20;
  let x_1747 : vec3<f32> = ((vec3<f32>(x_1741.x, x_1741.y, x_1741.z) * vec3<f32>(x_1743.x, x_1743.x, x_1743.x)) + x_1746);
  let x_1748 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1747.x, x_1748.y, x_1747.y, x_1747.z);
  let x_1750 : vec4<f32> = u_xlat8;
  let x_1752 : vec4<f32> = u_xlat1;
  let x_1754 : vec3<f32> = (vec3<f32>(x_1750.x, x_1750.y, x_1750.z) + vec3<f32>(x_1752.x, x_1752.z, x_1752.w));
  let x_1755 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1754.x, x_1755.y, x_1754.y, x_1754.z);
  let x_1759 : vec4<f32> = vs_INTERP4;
  let x_1761 : vec3<f32> = u_xlat0;
  let x_1763 : vec4<f32> = u_xlat1;
  let x_1765 : vec3<f32> = ((vec3<f32>(x_1759.w, x_1759.w, x_1759.w) * x_1761) + vec3<f32>(x_1763.x, x_1763.z, x_1763.w));
  let x_1766 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1765.x, x_1765.y, x_1765.z, x_1766.w);
  let x_1768 : bool = u_xlatb15;
  let x_1769 : f32 = u_xlat42;
  SV_Target0.w = select(1.0f, x_1769, x_1768);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(4) vs_INTERP4_param : vec4<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(5) vs_INTERP5_param : vec2<f32>, @location(6) vs_INTERP9_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP9 = vs_INTERP9_param;
  main_1();
  return main_out(SV_Target0);
}

