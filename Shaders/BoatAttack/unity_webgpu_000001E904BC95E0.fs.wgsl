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

@group(1) @binding(4) var<uniform> x_693 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1151 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1254 : AdditionalLightsCookies;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> SV_Target1 : vec4<f32>;

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
  var x_462 : f32;
  var x_474 : f32;
  var x_485 : f32;
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
  var x_778 : f32;
  var x_789 : vec3<f32>;
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
  var x_1549 : f32;
  var x_1562 : f32;
  var x_1614 : f32;
  var x_1625 : vec3<f32>;
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
  let x_434 : f32 = x_66.unity_OrthoParams.w;
  u_xlatb17 = (x_434 == 0.0f);
  let x_436 : vec3<f32> = vs_INTERP0;
  let x_441 : vec3<f32> = x_66.x_WorldSpaceCameraPos;
  let x_442 : vec3<f32> = (-(x_436) + x_441);
  let x_443 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_442.x, x_442.y, x_442.z, x_443.w);
  let x_446 : vec4<f32> = u_xlat4;
  let x_448 : vec4<f32> = u_xlat4;
  u_xlat31 = dot(vec3<f32>(x_446.x, x_446.y, x_446.z), vec3<f32>(x_448.x, x_448.y, x_448.z));
  let x_451 : f32 = u_xlat31;
  u_xlat31 = inverseSqrt(x_451);
  let x_453 : f32 = u_xlat31;
  let x_455 : vec4<f32> = u_xlat4;
  let x_457 : vec3<f32> = (vec3<f32>(x_453, x_453, x_453) * vec3<f32>(x_455.x, x_455.y, x_455.z));
  let x_458 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_457.x, x_457.y, x_457.z, x_458.w);
  let x_461 : bool = u_xlatb17;
  if (x_461) {
    let x_466 : f32 = u_xlat4.x;
    x_462 = x_466;
  } else {
    let x_470 : f32 = x_66.unity_MatrixV[0i].z;
    x_462 = x_470;
  }
  let x_471 : f32 = x_462;
  u_xlat5.x = x_471;
  let x_473 : bool = u_xlatb17;
  if (x_473) {
    let x_478 : f32 = u_xlat4.y;
    x_474 = x_478;
  } else {
    let x_481 : f32 = x_66.unity_MatrixV[1i].z;
    x_474 = x_481;
  }
  let x_482 : f32 = x_474;
  u_xlat5.y = x_482;
  let x_484 : bool = u_xlatb17;
  if (x_484) {
    let x_489 : f32 = u_xlat4.z;
    x_485 = x_489;
  } else {
    let x_492 : f32 = x_66.unity_MatrixV[2i].z;
    x_485 = x_492;
  }
  let x_493 : f32 = x_485;
  u_xlat5.z = x_493;
  let x_502 : vec2<f32> = vs_INTERP5;
  let x_504 : f32 = x_66.x_GlobalMipBias.x;
  let x_505 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_502, x_504);
  u_xlat17 = vec3<f32>(x_505.x, x_505.y, x_505.z);
  let x_509 : vec4<f32> = x_66.x_ScaledScreenParams;
  let x_510 : vec2<f32> = vec2<f32>(x_509.x, x_509.y);
  let x_514 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_510.x, x_510.y));
  let x_515 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_514.x, x_514.y, x_515.z, x_515.w);
  let x_517 : vec4<f32> = u_xlat4;
  let x_519 : vec4<f32> = hlslcc_FragCoord;
  let x_521 : vec2<f32> = (vec2<f32>(x_517.x, x_517.y) * vec2<f32>(x_519.x, x_519.y));
  let x_522 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_521.x, x_521.y, x_522.z, x_522.w);
  let x_526 : f32 = u_xlat4.y;
  let x_529 : f32 = x_66.x_ScaleBiasRt.x;
  let x_532 : f32 = x_66.x_ScaleBiasRt.y;
  u_xlat18.x = ((x_526 * x_529) + x_532);
  let x_536 : f32 = u_xlat18.x;
  u_xlat4.z = (-(x_536) + 1.0f);
  let x_541 : f32 = u_xlat3.x;
  u_xlat3.x = x_541;
  let x_544 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_544, 0.0f, 1.0f);
  let x_547 : f32 = u_xlat42;
  u_xlat42 = min(x_547, 1.0f);
  let x_549 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_549 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_554 : f32 = u_xlat3.x;
  u_xlat18.x = (-(x_554) + 1.0f);
  let x_560 : f32 = u_xlat18.x;
  let x_562 : f32 = u_xlat18.x;
  u_xlat46 = (x_560 * x_562);
  let x_564 : f32 = u_xlat46;
  u_xlat46 = max(x_564, 0.0078125f);
  let x_568 : f32 = u_xlat46;
  let x_569 : f32 = u_xlat46;
  u_xlat47 = (x_568 * x_569);
  let x_572 : f32 = u_xlat3.x;
  u_xlat3.x = (x_572 + 0.040000021f);
  let x_577 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_577, 1.0f);
  let x_581 : f32 = u_xlat46;
  u_xlat6 = ((x_581 * 4.0f) + 2.0f);
  let x_590 : vec4<f32> = u_xlat4;
  let x_593 : f32 = x_66.x_GlobalMipBias.x;
  let x_594 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_590.x, x_590.z), x_593);
  u_xlat4.x = x_594.x;
  let x_599 : f32 = u_xlat4.x;
  u_xlat32 = (x_599 + -1.0f);
  let x_603 : f32 = x_66.x_AmbientOcclusionParam.w;
  let x_604 : f32 = u_xlat32;
  u_xlat32 = ((x_603 * x_604) + 1.0f);
  let x_608 : f32 = u_xlat4.x;
  let x_610 : f32 = vs_INTERP4.w;
  u_xlat4.x = min(x_608, x_610);
  let x_615 : vec4<f32> = vs_INTERP9;
  let x_616 : vec2<f32> = vec2<f32>(x_615.x, x_615.y);
  let x_618 : f32 = vs_INTERP9.z;
  txVec1 = vec3<f32>(x_616.x, x_616.y, x_618);
  let x_626 : vec3<f32> = txVec1;
  let x_628 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_626.xy, x_626.z);
  u_xlat20.x = x_628;
  let x_631 : f32 = u_xlat20.x;
  let x_633 : f32 = x_139.x_MainLightShadowParams.x;
  let x_635 : f32 = u_xlat44;
  u_xlat44 = ((x_631 * x_633) + x_635);
  let x_641 : f32 = vs_INTERP9.z;
  u_xlatb20.x = (0.0f >= x_641);
  let x_646 : f32 = vs_INTERP9.z;
  u_xlatb34 = (x_646 >= 1.0f);
  let x_648 : bool = u_xlatb34;
  let x_650 : bool = u_xlatb20.x;
  u_xlatb20.x = (x_648 | x_650);
  let x_654 : bool = u_xlatb20.x;
  let x_655 : f32 = u_xlat44;
  u_xlat44 = select(x_655, 1.0f, x_654);
  let x_657 : vec3<f32> = vs_INTERP0;
  let x_659 : vec3<f32> = x_66.x_WorldSpaceCameraPos;
  u_xlat20 = (x_657 + -(x_659));
  let x_662 : vec3<f32> = u_xlat20;
  let x_663 : vec3<f32> = u_xlat20;
  u_xlat20.x = dot(x_662, x_663);
  let x_667 : f32 = u_xlat20.x;
  let x_669 : f32 = x_139.x_MainLightShadowParams.z;
  let x_672 : f32 = x_139.x_MainLightShadowParams.w;
  u_xlat20.x = ((x_667 * x_669) + x_672);
  let x_676 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_676, 0.0f, 1.0f);
  let x_680 : f32 = u_xlat44;
  u_xlat34 = (-(x_680) + 1.0f);
  let x_684 : f32 = u_xlat20.x;
  let x_685 : f32 = u_xlat34;
  let x_687 : f32 = u_xlat44;
  u_xlat44 = ((x_684 * x_685) + x_687);
  let x_695 : f32 = x_693.x_MainLightCookieTextureFormat;
  u_xlatb20.x = !((x_695 == -1.0f));
  let x_699 : bool = u_xlatb20.x;
  if (x_699) {
    let x_702 : vec3<f32> = vs_INTERP0;
    let x_705 : vec4<f32> = x_693.x_MainLightWorldToLight[1i];
    let x_707 : vec2<f32> = (vec2<f32>(x_702.y, x_702.y) * vec2<f32>(x_705.x, x_705.y));
    let x_708 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_707.x, x_707.y, x_708.z);
    let x_711 : vec4<f32> = x_693.x_MainLightWorldToLight[0i];
    let x_713 : vec3<f32> = vs_INTERP0;
    let x_716 : vec3<f32> = u_xlat20;
    let x_718 : vec2<f32> = ((vec2<f32>(x_711.x, x_711.y) * vec2<f32>(x_713.x, x_713.x)) + vec2<f32>(x_716.x, x_716.y));
    let x_719 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_718.x, x_718.y, x_719.z);
    let x_722 : vec4<f32> = x_693.x_MainLightWorldToLight[2i];
    let x_724 : vec3<f32> = vs_INTERP0;
    let x_727 : vec3<f32> = u_xlat20;
    let x_729 : vec2<f32> = ((vec2<f32>(x_722.x, x_722.y) * vec2<f32>(x_724.z, x_724.z)) + vec2<f32>(x_727.x, x_727.y));
    let x_730 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_729.x, x_729.y, x_730.z);
    let x_732 : vec3<f32> = u_xlat20;
    let x_735 : vec4<f32> = x_693.x_MainLightWorldToLight[3i];
    let x_737 : vec2<f32> = (vec2<f32>(x_732.x, x_732.y) + vec2<f32>(x_735.x, x_735.y));
    let x_738 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_737.x, x_737.y, x_738.z);
    let x_740 : vec3<f32> = u_xlat20;
    let x_744 : vec2<f32> = ((vec2<f32>(x_740.x, x_740.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_745 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_744.x, x_744.y, x_745.z);
    let x_753 : vec3<f32> = u_xlat20;
    let x_756 : f32 = x_66.x_GlobalMipBias.x;
    let x_757 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_753.x, x_753.y), x_756);
    u_xlat7 = x_757;
    let x_759 : f32 = x_693.x_MainLightCookieTextureFormat;
    let x_761 : f32 = x_693.x_MainLightCookieTextureFormat;
    let x_763 : f32 = x_693.x_MainLightCookieTextureFormat;
    let x_765 : f32 = x_693.x_MainLightCookieTextureFormat;
    let x_766 : vec4<f32> = vec4<f32>(x_759, x_761, x_763, x_765);
    let x_774 : vec4<bool> = (vec4<f32>(x_766.x, x_766.y, x_766.z, x_766.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb20 = vec2<bool>(x_774.x, x_774.y);
    let x_777 : bool = u_xlatb20.y;
    if (x_777) {
      let x_782 : f32 = u_xlat7.w;
      x_778 = x_782;
    } else {
      let x_785 : f32 = u_xlat7.x;
      x_778 = x_785;
    }
    let x_786 : f32 = x_778;
    u_xlat34 = x_786;
    let x_788 : bool = u_xlatb20.x;
    if (x_788) {
      let x_792 : vec4<f32> = u_xlat7;
      x_789 = vec3<f32>(x_792.x, x_792.y, x_792.z);
    } else {
      let x_795 : f32 = u_xlat34;
      x_789 = vec3<f32>(x_795, x_795, x_795);
    }
    let x_797 : vec3<f32> = x_789;
    u_xlat20 = x_797;
  } else {
    u_xlat20.x = 1.0f;
    u_xlat20.y = 1.0f;
    u_xlat20.z = 1.0f;
  }
  let x_802 : vec3<f32> = u_xlat20;
  let x_804 : vec4<f32> = x_66.x_MainLightColor;
  u_xlat20 = (x_802 * vec3<f32>(x_804.x, x_804.y, x_804.z));
  let x_807 : f32 = u_xlat32;
  let x_809 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_807, x_807, x_807) * x_809);
  let x_811 : vec3<f32> = u_xlat5;
  let x_813 : vec4<f32> = u_xlat1;
  u_xlat7.x = dot(-(x_811), vec3<f32>(x_813.x, x_813.z, x_813.w));
  let x_818 : f32 = u_xlat7.x;
  let x_820 : f32 = u_xlat7.x;
  u_xlat7.x = (x_818 + x_820);
  let x_823 : vec4<f32> = u_xlat1;
  let x_825 : vec4<f32> = u_xlat7;
  let x_829 : vec3<f32> = u_xlat5;
  let x_831 : vec3<f32> = ((vec3<f32>(x_823.x, x_823.z, x_823.w) * -(vec3<f32>(x_825.x, x_825.x, x_825.x))) + -(x_829));
  let x_832 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_831.x, x_831.y, x_831.z, x_832.w);
  let x_835 : vec4<f32> = u_xlat1;
  let x_837 : vec3<f32> = u_xlat5;
  u_xlat49 = dot(vec3<f32>(x_835.x, x_835.z, x_835.w), x_837);
  let x_839 : f32 = u_xlat49;
  u_xlat49 = clamp(x_839, 0.0f, 1.0f);
  let x_841 : f32 = u_xlat49;
  u_xlat49 = (-(x_841) + 1.0f);
  let x_844 : f32 = u_xlat49;
  let x_845 : f32 = u_xlat49;
  u_xlat49 = (x_844 * x_845);
  let x_847 : f32 = u_xlat49;
  let x_848 : f32 = u_xlat49;
  u_xlat49 = (x_847 * x_848);
  let x_852 : f32 = u_xlat18.x;
  u_xlat8.x = ((-(x_852) * 0.699999988f) + 1.700000048f);
  let x_860 : f32 = u_xlat18.x;
  let x_862 : f32 = u_xlat8.x;
  u_xlat18.x = (x_860 * x_862);
  let x_866 : f32 = u_xlat18.x;
  u_xlat18.x = (x_866 * 6.0f);
  let x_878 : vec4<f32> = u_xlat7;
  let x_881 : f32 = u_xlat18.x;
  let x_882 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_878.x, x_878.y, x_878.z), x_881);
  u_xlat8 = x_882;
  let x_884 : f32 = u_xlat8.w;
  u_xlat18.x = (x_884 + -1.0f);
  let x_888 : f32 = x_344.unity_SpecCube0_HDR.w;
  let x_890 : f32 = u_xlat18.x;
  u_xlat18.x = ((x_888 * x_890) + 1.0f);
  let x_895 : f32 = u_xlat18.x;
  u_xlat18.x = max(x_895, 0.0f);
  let x_899 : f32 = u_xlat18.x;
  u_xlat18.x = log2(x_899);
  let x_903 : f32 = u_xlat18.x;
  let x_905 : f32 = x_344.unity_SpecCube0_HDR.y;
  u_xlat18.x = (x_903 * x_905);
  let x_909 : f32 = u_xlat18.x;
  u_xlat18.x = exp2(x_909);
  let x_913 : f32 = u_xlat18.x;
  let x_915 : f32 = x_344.unity_SpecCube0_HDR.x;
  u_xlat18.x = (x_913 * x_915);
  let x_918 : vec4<f32> = u_xlat8;
  let x_920 : vec3<f32> = u_xlat18;
  let x_922 : vec3<f32> = (vec3<f32>(x_918.x, x_918.y, x_918.z) * vec3<f32>(x_920.x, x_920.x, x_920.x));
  let x_923 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_922.x, x_922.y, x_922.z, x_923.w);
  let x_925 : f32 = u_xlat46;
  let x_927 : f32 = u_xlat46;
  let x_931 : vec2<f32> = ((vec2<f32>(x_925, x_925) * vec2<f32>(x_927, x_927)) + vec2<f32>(-1.0f, 1.0f));
  let x_932 : vec3<f32> = u_xlat18;
  u_xlat18 = vec3<f32>(x_931.x, x_932.y, x_931.y);
  let x_935 : f32 = u_xlat18.z;
  u_xlat46 = (1.0f / x_935);
  let x_938 : f32 = u_xlat3.x;
  u_xlat3.x = (x_938 + -0.039999999f);
  let x_942 : f32 = u_xlat49;
  let x_944 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_942 * x_944) + 0.039999999f);
  let x_950 : f32 = u_xlat3.x;
  let x_951 : f32 = u_xlat46;
  u_xlat3.x = (x_950 * x_951);
  let x_954 : vec4<f32> = u_xlat3;
  let x_956 : vec4<f32> = u_xlat7;
  let x_958 : vec3<f32> = (vec3<f32>(x_954.x, x_954.x, x_954.x) * vec3<f32>(x_956.x, x_956.y, x_956.z));
  let x_959 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_958.x, x_958.y, x_958.z, x_959.w);
  let x_961 : vec3<f32> = u_xlat17;
  let x_962 : vec3<f32> = u_xlat2;
  let x_964 : vec4<f32> = u_xlat7;
  let x_966 : vec3<f32> = ((x_961 * x_962) + vec3<f32>(x_964.x, x_964.y, x_964.z));
  let x_967 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_966.x, x_966.y, x_966.z, x_967.w);
  let x_969 : f32 = u_xlat44;
  let x_971 : f32 = x_344.unity_LightData.z;
  u_xlat44 = (x_969 * x_971);
  let x_974 : vec4<f32> = u_xlat1;
  let x_977 : vec4<f32> = x_66.x_MainLightPosition;
  u_xlat45 = dot(vec3<f32>(x_974.x, x_974.z, x_974.w), vec3<f32>(x_977.x, x_977.y, x_977.z));
  let x_980 : f32 = u_xlat45;
  u_xlat45 = clamp(x_980, 0.0f, 1.0f);
  let x_982 : f32 = u_xlat44;
  let x_983 : f32 = u_xlat45;
  u_xlat44 = (x_982 * x_983);
  let x_985 : f32 = u_xlat44;
  let x_987 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_985, x_985, x_985) * x_987);
  let x_989 : vec3<f32> = u_xlat5;
  let x_991 : vec4<f32> = x_66.x_MainLightPosition;
  let x_993 : vec3<f32> = (x_989 + vec3<f32>(x_991.x, x_991.y, x_991.z));
  let x_994 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_993.x, x_993.y, x_993.z, x_994.w);
  let x_996 : vec4<f32> = u_xlat7;
  let x_998 : vec4<f32> = u_xlat7;
  u_xlat44 = dot(vec3<f32>(x_996.x, x_996.y, x_996.z), vec3<f32>(x_998.x, x_998.y, x_998.z));
  let x_1001 : f32 = u_xlat44;
  u_xlat44 = max(x_1001, 1.17549435e-37f);
  let x_1004 : f32 = u_xlat44;
  u_xlat44 = inverseSqrt(x_1004);
  let x_1006 : f32 = u_xlat44;
  let x_1008 : vec4<f32> = u_xlat7;
  let x_1010 : vec3<f32> = (vec3<f32>(x_1006, x_1006, x_1006) * vec3<f32>(x_1008.x, x_1008.y, x_1008.z));
  let x_1011 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1010.x, x_1010.y, x_1010.z, x_1011.w);
  let x_1013 : vec4<f32> = u_xlat1;
  let x_1015 : vec4<f32> = u_xlat7;
  u_xlat44 = dot(vec3<f32>(x_1013.x, x_1013.z, x_1013.w), vec3<f32>(x_1015.x, x_1015.y, x_1015.z));
  let x_1018 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1018, 0.0f, 1.0f);
  let x_1021 : vec4<f32> = x_66.x_MainLightPosition;
  let x_1023 : vec4<f32> = u_xlat7;
  u_xlat45 = dot(vec3<f32>(x_1021.x, x_1021.y, x_1021.z), vec3<f32>(x_1023.x, x_1023.y, x_1023.z));
  let x_1026 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1026, 0.0f, 1.0f);
  let x_1028 : f32 = u_xlat44;
  let x_1029 : f32 = u_xlat44;
  u_xlat44 = (x_1028 * x_1029);
  let x_1031 : f32 = u_xlat44;
  let x_1033 : f32 = u_xlat18.x;
  u_xlat44 = ((x_1031 * x_1033) + 1.000010014f);
  let x_1037 : f32 = u_xlat45;
  let x_1038 : f32 = u_xlat45;
  u_xlat45 = (x_1037 * x_1038);
  let x_1040 : f32 = u_xlat44;
  let x_1041 : f32 = u_xlat44;
  u_xlat44 = (x_1040 * x_1041);
  let x_1043 : f32 = u_xlat45;
  u_xlat45 = max(x_1043, 0.100000001f);
  let x_1046 : f32 = u_xlat44;
  let x_1047 : f32 = u_xlat45;
  u_xlat44 = (x_1046 * x_1047);
  let x_1049 : f32 = u_xlat6;
  let x_1050 : f32 = u_xlat44;
  u_xlat44 = (x_1049 * x_1050);
  let x_1052 : f32 = u_xlat47;
  let x_1053 : f32 = u_xlat44;
  u_xlat44 = (x_1052 / x_1053);
  let x_1055 : f32 = u_xlat44;
  let x_1059 : vec3<f32> = u_xlat2;
  let x_1060 : vec3<f32> = ((vec3<f32>(x_1055, x_1055, x_1055) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1059);
  let x_1061 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1060.x, x_1060.y, x_1060.z, x_1061.w);
  let x_1063 : vec3<f32> = u_xlat20;
  let x_1064 : vec4<f32> = u_xlat7;
  u_xlat20 = (x_1063 * vec3<f32>(x_1064.x, x_1064.y, x_1064.z));
  let x_1069 : f32 = x_66.x_AdditionalLightsCount.x;
  let x_1071 : f32 = x_344.unity_LightData.y;
  u_xlat44 = min(x_1069, x_1071);
  let x_1075 : f32 = u_xlat44;
  u_xlatu44 = bitcast<u32>(i32(x_1075));
  let x_1080 : f32 = x_693.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1082 : f32 = x_693.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1084 : f32 = x_693.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1086 : f32 = x_693.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1087 : vec4<f32> = vec4<f32>(x_1080, x_1082, x_1084, x_1086);
  let x_1093 : vec4<bool> = (vec4<f32>(x_1087.x, x_1087.y, x_1087.z, x_1087.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1093.x, x_1093.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1104 : u32 = u_xlatu_loop_1;
    let x_1105 : u32 = u_xlatu44;
    if ((x_1104 < x_1105)) {
    } else {
      break;
    }
    let x_1108 : u32 = u_xlatu_loop_1;
    u_xlatu46 = (x_1108 >> 2u);
    let x_1112 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_1112 & 3u));
    let x_1115 : u32 = u_xlatu46;
    let x_1118 : vec4<f32> = x_344.unity_LightIndices[bitcast<i32>(x_1115)];
    let x_1128 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1133 : vec4<u32> = indexable[x_1128];
    u_xlat46 = dot(x_1118, bitcast<vec4<f32>>(x_1133));
    let x_1136 : f32 = u_xlat46;
    u_xlatu46 = bitcast<u32>(i32(x_1136));
    let x_1140 : vec3<f32> = vs_INTERP0;
    let x_1152 : u32 = u_xlatu46;
    let x_1155 : vec4<f32> = x_1151.x_AdditionalLightsPosition[bitcast<i32>(x_1152)];
    let x_1158 : u32 = u_xlatu46;
    let x_1161 : vec4<f32> = x_1151.x_AdditionalLightsPosition[bitcast<i32>(x_1158)];
    u_xlat9 = ((-(x_1140) * vec3<f32>(x_1155.w, x_1155.w, x_1155.w)) + vec3<f32>(x_1161.x, x_1161.y, x_1161.z));
    let x_1165 : vec3<f32> = u_xlat9;
    let x_1166 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1165, x_1166);
    let x_1168 : f32 = u_xlat35;
    u_xlat35 = max(x_1168, 6.10351562e-05f);
    let x_1171 : f32 = u_xlat35;
    u_xlat49 = inverseSqrt(x_1171);
    let x_1174 : f32 = u_xlat49;
    let x_1176 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1174, x_1174, x_1174) * x_1176);
    let x_1179 : f32 = u_xlat35;
    u_xlat50 = (1.0f / x_1179);
    let x_1181 : f32 = u_xlat35;
    let x_1182 : u32 = u_xlatu46;
    let x_1185 : f32 = x_1151.x_AdditionalLightsAttenuation[bitcast<i32>(x_1182)].x;
    u_xlat35 = (x_1181 * x_1185);
    let x_1187 : f32 = u_xlat35;
    let x_1189 : f32 = u_xlat35;
    u_xlat35 = ((-(x_1187) * x_1189) + 1.0f);
    let x_1192 : f32 = u_xlat35;
    u_xlat35 = max(x_1192, 0.0f);
    let x_1194 : f32 = u_xlat35;
    let x_1195 : f32 = u_xlat35;
    u_xlat35 = (x_1194 * x_1195);
    let x_1197 : f32 = u_xlat35;
    let x_1198 : f32 = u_xlat50;
    u_xlat35 = (x_1197 * x_1198);
    let x_1200 : u32 = u_xlatu46;
    let x_1203 : vec4<f32> = x_1151.x_AdditionalLightsSpotDir[bitcast<i32>(x_1200)];
    let x_1205 : vec3<f32> = u_xlat10;
    u_xlat50 = dot(vec3<f32>(x_1203.x, x_1203.y, x_1203.z), x_1205);
    let x_1207 : f32 = u_xlat50;
    let x_1208 : u32 = u_xlatu46;
    let x_1211 : f32 = x_1151.x_AdditionalLightsAttenuation[bitcast<i32>(x_1208)].z;
    let x_1213 : u32 = u_xlatu46;
    let x_1216 : f32 = x_1151.x_AdditionalLightsAttenuation[bitcast<i32>(x_1213)].w;
    u_xlat50 = ((x_1207 * x_1211) + x_1216);
    let x_1218 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1218, 0.0f, 1.0f);
    let x_1220 : f32 = u_xlat50;
    let x_1221 : f32 = u_xlat50;
    u_xlat50 = (x_1220 * x_1221);
    let x_1223 : f32 = u_xlat35;
    let x_1224 : f32 = u_xlat50;
    u_xlat35 = (x_1223 * x_1224);
    let x_1227 : u32 = u_xlatu46;
    u_xlatu50 = (x_1227 >> 5u);
    let x_1230 : u32 = u_xlatu46;
    u_xlati51 = (1i << bitcast<u32>((bitcast<i32>(x_1230) & 31i)));
    let x_1236 : i32 = u_xlati51;
    let x_1238 : u32 = u_xlatu50;
    let x_1241 : f32 = x_693.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1238)].el;
    u_xlati50 = bitcast<i32>((bitcast<u32>(x_1236) & bitcast<u32>(x_1241)));
    let x_1245 : i32 = u_xlati50;
    if ((x_1245 != 0i)) {
      let x_1255 : u32 = u_xlatu46;
      let x_1258 : f32 = x_1254.x_AdditionalLightsLightTypes[bitcast<i32>(x_1255)].el;
      u_xlati50 = i32(x_1258);
      let x_1260 : i32 = u_xlati50;
      u_xlati51 = select(1i, 0i, (x_1260 != 0i));
      let x_1264 : u32 = u_xlatu46;
      u_xlati52 = (bitcast<i32>(x_1264) << bitcast<u32>(2i));
      let x_1267 : i32 = u_xlati51;
      if ((x_1267 != 0i)) {
        let x_1272 : vec3<f32> = vs_INTERP0;
        let x_1274 : i32 = u_xlati52;
        let x_1277 : i32 = u_xlati52;
        let x_1281 : vec4<f32> = x_1254.x_AdditionalLightsWorldToLights[((x_1274 + 1i) / 4i)][((x_1277 + 1i) % 4i)];
        let x_1283 : vec3<f32> = (vec3<f32>(x_1272.y, x_1272.y, x_1272.y) * vec3<f32>(x_1281.x, x_1281.y, x_1281.w));
        let x_1284 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1283.x, x_1283.y, x_1283.z, x_1284.w);
        let x_1286 : i32 = u_xlati52;
        let x_1288 : i32 = u_xlati52;
        let x_1291 : vec4<f32> = x_1254.x_AdditionalLightsWorldToLights[(x_1286 / 4i)][(x_1288 % 4i)];
        let x_1293 : vec3<f32> = vs_INTERP0;
        let x_1296 : vec4<f32> = u_xlat11;
        let x_1298 : vec3<f32> = ((vec3<f32>(x_1291.x, x_1291.y, x_1291.w) * vec3<f32>(x_1293.x, x_1293.x, x_1293.x)) + vec3<f32>(x_1296.x, x_1296.y, x_1296.z));
        let x_1299 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1298.x, x_1298.y, x_1298.z, x_1299.w);
        let x_1301 : i32 = u_xlati52;
        let x_1304 : i32 = u_xlati52;
        let x_1308 : vec4<f32> = x_1254.x_AdditionalLightsWorldToLights[((x_1301 + 2i) / 4i)][((x_1304 + 2i) % 4i)];
        let x_1310 : vec3<f32> = vs_INTERP0;
        let x_1313 : vec4<f32> = u_xlat11;
        let x_1315 : vec3<f32> = ((vec3<f32>(x_1308.x, x_1308.y, x_1308.w) * vec3<f32>(x_1310.z, x_1310.z, x_1310.z)) + vec3<f32>(x_1313.x, x_1313.y, x_1313.z));
        let x_1316 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1315.x, x_1315.y, x_1315.z, x_1316.w);
        let x_1318 : vec4<f32> = u_xlat11;
        let x_1320 : i32 = u_xlati52;
        let x_1323 : i32 = u_xlati52;
        let x_1327 : vec4<f32> = x_1254.x_AdditionalLightsWorldToLights[((x_1320 + 3i) / 4i)][((x_1323 + 3i) % 4i)];
        let x_1329 : vec3<f32> = (vec3<f32>(x_1318.x, x_1318.y, x_1318.z) + vec3<f32>(x_1327.x, x_1327.y, x_1327.w));
        let x_1330 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1329.x, x_1329.y, x_1329.z, x_1330.w);
        let x_1332 : vec4<f32> = u_xlat11;
        let x_1334 : vec4<f32> = u_xlat11;
        let x_1336 : vec2<f32> = (vec2<f32>(x_1332.x, x_1332.y) / vec2<f32>(x_1334.z, x_1334.z));
        let x_1337 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1336.x, x_1336.y, x_1337.z, x_1337.w);
        let x_1339 : vec4<f32> = u_xlat11;
        let x_1342 : vec2<f32> = ((vec2<f32>(x_1339.x, x_1339.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1343 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1342.x, x_1342.y, x_1343.z, x_1343.w);
        let x_1345 : vec4<f32> = u_xlat11;
        let x_1349 : vec2<f32> = clamp(vec2<f32>(x_1345.x, x_1345.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1350 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1349.x, x_1349.y, x_1350.z, x_1350.w);
        let x_1352 : u32 = u_xlatu46;
        let x_1355 : vec4<f32> = x_1254.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1352)];
        let x_1357 : vec4<f32> = u_xlat11;
        let x_1360 : u32 = u_xlatu46;
        let x_1363 : vec4<f32> = x_1254.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1360)];
        let x_1365 : vec2<f32> = ((vec2<f32>(x_1355.x, x_1355.y) * vec2<f32>(x_1357.x, x_1357.y)) + vec2<f32>(x_1363.z, x_1363.w));
        let x_1366 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1365.x, x_1365.y, x_1366.z, x_1366.w);
      } else {
        let x_1370 : i32 = u_xlati50;
        u_xlatb50 = (x_1370 == 1i);
        let x_1372 : bool = u_xlatb50;
        u_xlati50 = select(0i, 1i, x_1372);
        let x_1374 : i32 = u_xlati50;
        if ((x_1374 != 0i)) {
          let x_1380 : vec3<f32> = vs_INTERP0;
          let x_1382 : i32 = u_xlati52;
          let x_1385 : i32 = u_xlati52;
          let x_1389 : vec4<f32> = x_1254.x_AdditionalLightsWorldToLights[((x_1382 + 1i) / 4i)][((x_1385 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1380.y, x_1380.y) * vec2<f32>(x_1389.x, x_1389.y));
          let x_1392 : i32 = u_xlati52;
          let x_1394 : i32 = u_xlati52;
          let x_1397 : vec4<f32> = x_1254.x_AdditionalLightsWorldToLights[(x_1392 / 4i)][(x_1394 % 4i)];
          let x_1399 : vec3<f32> = vs_INTERP0;
          let x_1402 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1397.x, x_1397.y) * vec2<f32>(x_1399.x, x_1399.x)) + x_1402);
          let x_1404 : i32 = u_xlati52;
          let x_1407 : i32 = u_xlati52;
          let x_1411 : vec4<f32> = x_1254.x_AdditionalLightsWorldToLights[((x_1404 + 2i) / 4i)][((x_1407 + 2i) % 4i)];
          let x_1413 : vec3<f32> = vs_INTERP0;
          let x_1416 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1411.x, x_1411.y) * vec2<f32>(x_1413.z, x_1413.z)) + x_1416);
          let x_1418 : vec2<f32> = u_xlat39;
          let x_1419 : i32 = u_xlati52;
          let x_1422 : i32 = u_xlati52;
          let x_1426 : vec4<f32> = x_1254.x_AdditionalLightsWorldToLights[((x_1419 + 3i) / 4i)][((x_1422 + 3i) % 4i)];
          u_xlat39 = (x_1418 + vec2<f32>(x_1426.x, x_1426.y));
          let x_1429 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1429 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1432 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1432);
          let x_1434 : u32 = u_xlatu46;
          let x_1437 : vec4<f32> = x_1254.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1434)];
          let x_1439 : vec2<f32> = u_xlat39;
          let x_1441 : u32 = u_xlatu46;
          let x_1444 : vec4<f32> = x_1254.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1441)];
          let x_1446 : vec2<f32> = ((vec2<f32>(x_1437.x, x_1437.y) * x_1439) + vec2<f32>(x_1444.z, x_1444.w));
          let x_1447 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1446.x, x_1446.y, x_1447.z, x_1447.w);
        } else {
          let x_1451 : vec3<f32> = vs_INTERP0;
          let x_1453 : i32 = u_xlati52;
          let x_1456 : i32 = u_xlati52;
          let x_1460 : vec4<f32> = x_1254.x_AdditionalLightsWorldToLights[((x_1453 + 1i) / 4i)][((x_1456 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1451.y, x_1451.y, x_1451.y, x_1451.y) * x_1460);
          let x_1462 : i32 = u_xlati52;
          let x_1464 : i32 = u_xlati52;
          let x_1467 : vec4<f32> = x_1254.x_AdditionalLightsWorldToLights[(x_1462 / 4i)][(x_1464 % 4i)];
          let x_1468 : vec3<f32> = vs_INTERP0;
          let x_1471 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1467 * vec4<f32>(x_1468.x, x_1468.x, x_1468.x, x_1468.x)) + x_1471);
          let x_1473 : i32 = u_xlati52;
          let x_1476 : i32 = u_xlati52;
          let x_1480 : vec4<f32> = x_1254.x_AdditionalLightsWorldToLights[((x_1473 + 2i) / 4i)][((x_1476 + 2i) % 4i)];
          let x_1481 : vec3<f32> = vs_INTERP0;
          let x_1484 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1480 * vec4<f32>(x_1481.z, x_1481.z, x_1481.z, x_1481.z)) + x_1484);
          let x_1486 : vec4<f32> = u_xlat12;
          let x_1487 : i32 = u_xlati52;
          let x_1490 : i32 = u_xlati52;
          let x_1494 : vec4<f32> = x_1254.x_AdditionalLightsWorldToLights[((x_1487 + 3i) / 4i)][((x_1490 + 3i) % 4i)];
          u_xlat12 = (x_1486 + x_1494);
          let x_1496 : vec4<f32> = u_xlat12;
          let x_1498 : vec4<f32> = u_xlat12;
          let x_1500 : vec3<f32> = (vec3<f32>(x_1496.x, x_1496.y, x_1496.z) / vec3<f32>(x_1498.w, x_1498.w, x_1498.w));
          let x_1501 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1500.x, x_1500.y, x_1500.z, x_1501.w);
          let x_1503 : vec4<f32> = u_xlat12;
          let x_1505 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(vec3<f32>(x_1503.x, x_1503.y, x_1503.z), vec3<f32>(x_1505.x, x_1505.y, x_1505.z));
          let x_1508 : f32 = u_xlat50;
          u_xlat50 = inverseSqrt(x_1508);
          let x_1510 : f32 = u_xlat50;
          let x_1512 : vec4<f32> = u_xlat12;
          let x_1514 : vec3<f32> = (vec3<f32>(x_1510, x_1510, x_1510) * vec3<f32>(x_1512.x, x_1512.y, x_1512.z));
          let x_1515 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1514.x, x_1514.y, x_1514.z, x_1515.w);
          let x_1517 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(abs(vec3<f32>(x_1517.x, x_1517.y, x_1517.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1522 : f32 = u_xlat50;
          u_xlat50 = max(x_1522, 0.000001f);
          let x_1525 : f32 = u_xlat50;
          u_xlat50 = (1.0f / x_1525);
          let x_1528 : f32 = u_xlat50;
          let x_1530 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1528, x_1528, x_1528) * vec3<f32>(x_1530.z, x_1530.x, x_1530.y));
          let x_1534 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1534);
          let x_1538 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1538, 0.0f, 1.0f);
          let x_1542 : vec3<f32> = u_xlat13;
          let x_1545 : vec4<bool> = (vec4<f32>(x_1542.y, x_1542.z, x_1542.y, x_1542.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1545.x, x_1545.y);
          let x_1548 : bool = u_xlatb39.x;
          if (x_1548) {
            let x_1553 : f32 = u_xlat13.x;
            x_1549 = x_1553;
          } else {
            let x_1556 : f32 = u_xlat13.x;
            x_1549 = -(x_1556);
          }
          let x_1558 : f32 = x_1549;
          u_xlat39.x = x_1558;
          let x_1561 : bool = u_xlatb39.y;
          if (x_1561) {
            let x_1566 : f32 = u_xlat13.x;
            x_1562 = x_1566;
          } else {
            let x_1569 : f32 = u_xlat13.x;
            x_1562 = -(x_1569);
          }
          let x_1571 : f32 = x_1562;
          u_xlat39.y = x_1571;
          let x_1573 : vec4<f32> = u_xlat12;
          let x_1575 : f32 = u_xlat50;
          let x_1578 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1573.x, x_1573.y) * vec2<f32>(x_1575, x_1575)) + x_1578);
          let x_1580 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1580 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1583 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_1583, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1587 : u32 = u_xlatu46;
          let x_1590 : vec4<f32> = x_1254.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1587)];
          let x_1592 : vec2<f32> = u_xlat39;
          let x_1594 : u32 = u_xlatu46;
          let x_1597 : vec4<f32> = x_1254.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1594)];
          let x_1599 : vec2<f32> = ((vec2<f32>(x_1590.x, x_1590.y) * x_1592) + vec2<f32>(x_1597.z, x_1597.w));
          let x_1600 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1599.x, x_1599.y, x_1600.z, x_1600.w);
        }
      }
      let x_1607 : vec4<f32> = u_xlat11;
      let x_1610 : f32 = x_66.x_GlobalMipBias.x;
      let x_1611 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1607.x, x_1607.y), x_1610);
      u_xlat11 = x_1611;
      let x_1613 : bool = u_xlatb7.y;
      if (x_1613) {
        let x_1618 : f32 = u_xlat11.w;
        x_1614 = x_1618;
      } else {
        let x_1621 : f32 = u_xlat11.x;
        x_1614 = x_1621;
      }
      let x_1622 : f32 = x_1614;
      u_xlat50 = x_1622;
      let x_1624 : bool = u_xlatb7.x;
      if (x_1624) {
        let x_1628 : vec4<f32> = u_xlat11;
        x_1625 = vec3<f32>(x_1628.x, x_1628.y, x_1628.z);
      } else {
        let x_1631 : f32 = u_xlat50;
        x_1625 = vec3<f32>(x_1631, x_1631, x_1631);
      }
      let x_1633 : vec3<f32> = x_1625;
      let x_1634 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1633.x, x_1633.y, x_1633.z, x_1634.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1640 : vec4<f32> = u_xlat11;
    let x_1642 : u32 = u_xlatu46;
    let x_1645 : vec4<f32> = x_1151.x_AdditionalLightsColor[bitcast<i32>(x_1642)];
    let x_1647 : vec3<f32> = (vec3<f32>(x_1640.x, x_1640.y, x_1640.z) * vec3<f32>(x_1645.x, x_1645.y, x_1645.z));
    let x_1648 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1647.x, x_1647.y, x_1647.z, x_1648.w);
    let x_1650 : f32 = u_xlat32;
    let x_1652 : vec4<f32> = u_xlat11;
    let x_1654 : vec3<f32> = (vec3<f32>(x_1650, x_1650, x_1650) * vec3<f32>(x_1652.x, x_1652.y, x_1652.z));
    let x_1655 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1654.x, x_1654.y, x_1654.z, x_1655.w);
    let x_1657 : vec4<f32> = u_xlat1;
    let x_1659 : vec3<f32> = u_xlat10;
    u_xlat46 = dot(vec3<f32>(x_1657.x, x_1657.z, x_1657.w), x_1659);
    let x_1661 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1661, 0.0f, 1.0f);
    let x_1663 : f32 = u_xlat46;
    let x_1664 : f32 = u_xlat35;
    u_xlat46 = (x_1663 * x_1664);
    let x_1666 : f32 = u_xlat46;
    let x_1668 : vec4<f32> = u_xlat11;
    let x_1670 : vec3<f32> = (vec3<f32>(x_1666, x_1666, x_1666) * vec3<f32>(x_1668.x, x_1668.y, x_1668.z));
    let x_1671 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1670.x, x_1670.y, x_1670.z, x_1671.w);
    let x_1673 : vec3<f32> = u_xlat9;
    let x_1674 : f32 = u_xlat49;
    let x_1677 : vec3<f32> = u_xlat5;
    u_xlat9 = ((x_1673 * vec3<f32>(x_1674, x_1674, x_1674)) + x_1677);
    let x_1679 : vec3<f32> = u_xlat9;
    let x_1680 : vec3<f32> = u_xlat9;
    u_xlat46 = dot(x_1679, x_1680);
    let x_1682 : f32 = u_xlat46;
    u_xlat46 = max(x_1682, 1.17549435e-37f);
    let x_1684 : f32 = u_xlat46;
    u_xlat46 = inverseSqrt(x_1684);
    let x_1686 : f32 = u_xlat46;
    let x_1688 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1686, x_1686, x_1686) * x_1688);
    let x_1690 : vec4<f32> = u_xlat1;
    let x_1692 : vec3<f32> = u_xlat9;
    u_xlat46 = dot(vec3<f32>(x_1690.x, x_1690.z, x_1690.w), x_1692);
    let x_1694 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1694, 0.0f, 1.0f);
    let x_1696 : vec3<f32> = u_xlat10;
    let x_1697 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1696, x_1697);
    let x_1699 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1699, 0.0f, 1.0f);
    let x_1701 : f32 = u_xlat46;
    let x_1702 : f32 = u_xlat46;
    u_xlat46 = (x_1701 * x_1702);
    let x_1704 : f32 = u_xlat46;
    let x_1706 : f32 = u_xlat18.x;
    u_xlat46 = ((x_1704 * x_1706) + 1.000010014f);
    let x_1709 : f32 = u_xlat35;
    let x_1710 : f32 = u_xlat35;
    u_xlat35 = (x_1709 * x_1710);
    let x_1712 : f32 = u_xlat46;
    let x_1713 : f32 = u_xlat46;
    u_xlat46 = (x_1712 * x_1713);
    let x_1715 : f32 = u_xlat35;
    u_xlat35 = max(x_1715, 0.100000001f);
    let x_1717 : f32 = u_xlat46;
    let x_1718 : f32 = u_xlat35;
    u_xlat46 = (x_1717 * x_1718);
    let x_1720 : f32 = u_xlat6;
    let x_1721 : f32 = u_xlat46;
    u_xlat46 = (x_1720 * x_1721);
    let x_1723 : f32 = u_xlat47;
    let x_1724 : f32 = u_xlat46;
    u_xlat46 = (x_1723 / x_1724);
    let x_1726 : f32 = u_xlat46;
    let x_1729 : vec3<f32> = u_xlat2;
    u_xlat9 = ((vec3<f32>(x_1726, x_1726, x_1726) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1729);
    let x_1731 : vec3<f32> = u_xlat9;
    let x_1732 : vec4<f32> = u_xlat11;
    let x_1735 : vec4<f32> = u_xlat8;
    let x_1737 : vec3<f32> = ((x_1731 * vec3<f32>(x_1732.x, x_1732.y, x_1732.z)) + vec3<f32>(x_1735.x, x_1735.y, x_1735.z));
    let x_1738 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1737.x, x_1737.y, x_1737.z, x_1738.w);

    continuing {
      let x_1740 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1740 + bitcast<u32>(1i));
    }
  }
  let x_1742 : vec4<f32> = u_xlat3;
  let x_1744 : vec4<f32> = u_xlat4;
  let x_1747 : vec3<f32> = u_xlat20;
  let x_1748 : vec3<f32> = ((vec3<f32>(x_1742.x, x_1742.y, x_1742.z) * vec3<f32>(x_1744.x, x_1744.x, x_1744.x)) + x_1747);
  let x_1749 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1748.x, x_1749.y, x_1748.y, x_1748.z);
  let x_1751 : vec4<f32> = u_xlat8;
  let x_1753 : vec4<f32> = u_xlat1;
  let x_1755 : vec3<f32> = (vec3<f32>(x_1751.x, x_1751.y, x_1751.z) + vec3<f32>(x_1753.x, x_1753.z, x_1753.w));
  let x_1756 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1755.x, x_1756.y, x_1755.y, x_1755.z);
  let x_1760 : vec4<f32> = vs_INTERP4;
  let x_1762 : vec3<f32> = u_xlat0;
  let x_1764 : vec4<f32> = u_xlat1;
  let x_1766 : vec3<f32> = ((vec3<f32>(x_1760.w, x_1760.w, x_1760.w) * x_1762) + vec3<f32>(x_1764.x, x_1764.z, x_1764.w));
  let x_1767 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1766.x, x_1766.y, x_1766.z, x_1767.w);
  let x_1769 : bool = u_xlatb15;
  let x_1770 : f32 = u_xlat42;
  SV_Target0.w = select(1.0f, x_1770, x_1769);
  let x_1778 : u32 = x_66.x_RenderingLayerMaxInt;
  let x_1780 : f32 = x_344.unity_RenderingLayer.x;
  u_xlatu0 = (x_1778 & bitcast<u32>(x_1780));
  let x_1783 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_1783);
  let x_1788 : f32 = u_xlat0.x;
  let x_1790 : f32 = x_66.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_1788 * x_1790);
  let x_1794 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_1794, 0.0f, 1.0f);
  let x_1798 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_1798.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
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
  return main_out(SV_Target0, SV_Target1);
}

