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

@group(0) @binding(5) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(12) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_66 : PGlobals;

@group(1) @binding(6) var<uniform> x_78 : UnityPerMaterial;

@group(0) @binding(6) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(13) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> vs_INTERP4 : vec4<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_139 : MainLightShadows;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> vs_INTERP2 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_344 : UnityPerDraw;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_INTERP9 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_759 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1233 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1368 : AdditionalLightsCookies;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var u_xlat5 : vec3<f32>;
  var x_455 : f32;
  var x_468 : f32;
  var x_480 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat31 : f32;
  var u_xlat45 : f32;
  var u_xlat46 : f32;
  var u_xlat47 : f32;
  var txVec1 : vec3<f32>;
  var u_xlat20 : vec3<f32>;
  var u_xlatb20 : vec2<bool>;
  var u_xlatb34 : bool;
  var u_xlat34 : f32;
  var x_843 : f32;
  var x_854 : vec3<f32>;
  var u_xlat49 : f32;
  var u_xlatu44 : u32;
  var u_xlatb3 : vec3<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu8 : u32;
  var u_xlati22 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat22 : vec3<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat23 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlat37 : vec2<f32>;
  var u_xlatu37 : u32;
  var u_xlati51 : i32;
  var u_xlati37 : i32;
  var u_xlati52 : i32;
  var u_xlat11 : vec4<f32>;
  var u_xlatb37 : bool;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb39 : vec2<bool>;
  var u_xlat39 : vec2<f32>;
  var x_1670 : f32;
  var x_1683 : f32;
  var x_1735 : f32;
  var x_1747 : vec3<f32>;
  var u_xlat50 : f32;
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
  let x_429 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_428.x, x_428.y, x_428.z, x_429.w);
  let x_433 : f32 = x_66.unity_OrthoParams.w;
  u_xlatb1.x = (x_433 == 0.0f);
  let x_436 : vec3<f32> = vs_INTERP0;
  let x_441 : vec3<f32> = x_66.x_WorldSpaceCameraPos;
  u_xlat17 = (-(x_436) + x_441);
  let x_443 : vec3<f32> = u_xlat17;
  let x_444 : vec3<f32> = u_xlat17;
  u_xlat29 = dot(x_443, x_444);
  let x_446 : f32 = u_xlat29;
  u_xlat29 = inverseSqrt(x_446);
  let x_448 : f32 = u_xlat29;
  let x_450 : vec3<f32> = u_xlat17;
  u_xlat17 = (vec3<f32>(x_448, x_448, x_448) * x_450);
  let x_454 : bool = u_xlatb1.x;
  if (x_454) {
    let x_459 : f32 = u_xlat17.x;
    x_455 = x_459;
  } else {
    let x_463 : f32 = x_66.unity_MatrixV[0i].z;
    x_455 = x_463;
  }
  let x_464 : f32 = x_455;
  u_xlat5.x = x_464;
  let x_467 : bool = u_xlatb1.x;
  if (x_467) {
    let x_472 : f32 = u_xlat17.y;
    x_468 = x_472;
  } else {
    let x_475 : f32 = x_66.unity_MatrixV[1i].z;
    x_468 = x_475;
  }
  let x_476 : f32 = x_468;
  u_xlat5.y = x_476;
  let x_479 : bool = u_xlatb1.x;
  if (x_479) {
    let x_484 : f32 = u_xlat17.z;
    x_480 = x_484;
  } else {
    let x_487 : f32 = x_66.unity_MatrixV[2i].z;
    x_480 = x_487;
  }
  let x_488 : f32 = x_480;
  u_xlat5.z = x_488;
  u_xlat4.w = 1.0f;
  let x_494 : vec4<f32> = x_344.unity_SHAr;
  let x_495 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_494, x_495);
  let x_500 : vec4<f32> = x_344.unity_SHAg;
  let x_501 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_500, x_501);
  let x_506 : vec4<f32> = x_344.unity_SHAb;
  let x_507 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_506, x_507);
  let x_511 : vec4<f32> = u_xlat4;
  let x_513 : vec4<f32> = u_xlat4;
  u_xlat7 = (vec4<f32>(x_511.y, x_511.z, x_511.z, x_511.x) * vec4<f32>(x_513.x, x_513.y, x_513.z, x_513.z));
  let x_519 : vec4<f32> = x_344.unity_SHBr;
  let x_520 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_519, x_520);
  let x_525 : vec4<f32> = x_344.unity_SHBg;
  let x_526 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_525, x_526);
  let x_531 : vec4<f32> = x_344.unity_SHBb;
  let x_532 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_531, x_532);
  let x_536 : f32 = u_xlat4.y;
  let x_538 : f32 = u_xlat4.y;
  u_xlat1.x = (x_536 * x_538);
  let x_542 : f32 = u_xlat4.x;
  let x_544 : f32 = u_xlat4.x;
  let x_547 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_542 * x_544) + -(x_547));
  let x_553 : vec4<f32> = x_344.unity_SHC;
  let x_555 : vec4<f32> = u_xlat1;
  let x_558 : vec4<f32> = u_xlat8;
  let x_560 : vec3<f32> = ((vec3<f32>(x_553.x, x_553.y, x_553.z) * vec3<f32>(x_555.x, x_555.x, x_555.x)) + vec3<f32>(x_558.x, x_558.y, x_558.z));
  let x_561 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_560.x, x_561.y, x_560.y, x_560.z);
  let x_563 : vec4<f32> = u_xlat1;
  let x_565 : vec3<f32> = u_xlat6;
  let x_566 : vec3<f32> = (vec3<f32>(x_563.x, x_563.z, x_563.w) + x_565);
  let x_567 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_566.x, x_567.y, x_566.y, x_566.z);
  let x_569 : vec4<f32> = u_xlat1;
  let x_572 : vec3<f32> = max(vec3<f32>(x_569.x, x_569.z, x_569.w), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_573 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_572.x, x_573.y, x_572.y, x_572.z);
  let x_577 : vec4<f32> = x_66.x_ScaledScreenParams;
  let x_578 : vec2<f32> = vec2<f32>(x_577.x, x_577.y);
  let x_582 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_578.x, x_578.y));
  let x_583 : vec3<f32> = u_xlat17;
  u_xlat17 = vec3<f32>(x_582.x, x_582.y, x_583.z);
  let x_585 : vec3<f32> = u_xlat17;
  let x_587 : vec4<f32> = hlslcc_FragCoord;
  let x_589 : vec2<f32> = (vec2<f32>(x_585.x, x_585.y) * vec2<f32>(x_587.x, x_587.y));
  let x_590 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_589.x, x_589.y, x_590.z);
  let x_593 : f32 = u_xlat6.y;
  let x_596 : f32 = x_66.x_ScaleBiasRt.x;
  let x_599 : f32 = x_66.x_ScaleBiasRt.y;
  u_xlat17.x = ((x_593 * x_596) + x_599);
  let x_603 : f32 = u_xlat17.x;
  u_xlat6.z = (-(x_603) + 1.0f);
  let x_608 : f32 = u_xlat3.x;
  u_xlat3.x = x_608;
  let x_611 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_611, 0.0f, 1.0f);
  let x_614 : f32 = u_xlat42;
  u_xlat42 = min(x_614, 1.0f);
  let x_616 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_616 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_621 : f32 = u_xlat3.x;
  u_xlat17.x = (-(x_621) + 1.0f);
  let x_627 : f32 = u_xlat17.x;
  let x_629 : f32 = u_xlat17.x;
  u_xlat31 = (x_627 * x_629);
  let x_631 : f32 = u_xlat31;
  u_xlat31 = max(x_631, 0.0078125f);
  let x_635 : f32 = u_xlat31;
  let x_636 : f32 = u_xlat31;
  u_xlat45 = (x_635 * x_636);
  let x_639 : f32 = u_xlat3.x;
  u_xlat3.x = (x_639 + 0.040000021f);
  let x_644 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_644, 1.0f);
  let x_648 : f32 = u_xlat31;
  u_xlat46 = ((x_648 * 4.0f) + 2.0f);
  let x_658 : vec3<f32> = u_xlat6;
  let x_661 : f32 = x_66.x_GlobalMipBias.x;
  let x_662 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_658.x, x_658.z), x_661);
  u_xlat47 = x_662.x;
  let x_664 : f32 = u_xlat47;
  u_xlat6.x = (x_664 + -1.0f);
  let x_669 : f32 = x_66.x_AmbientOcclusionParam.w;
  let x_671 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_669 * x_671) + 1.0f);
  let x_675 : f32 = u_xlat47;
  let x_677 : f32 = vs_INTERP4.w;
  u_xlat47 = min(x_675, x_677);
  let x_681 : vec4<f32> = vs_INTERP9;
  let x_682 : vec2<f32> = vec2<f32>(x_681.x, x_681.y);
  let x_684 : f32 = vs_INTERP9.z;
  txVec1 = vec3<f32>(x_682.x, x_682.y, x_684);
  let x_692 : vec3<f32> = txVec1;
  let x_694 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_692.xy, x_692.z);
  u_xlat20.x = x_694;
  let x_697 : f32 = u_xlat20.x;
  let x_699 : f32 = x_139.x_MainLightShadowParams.x;
  let x_701 : f32 = u_xlat44;
  u_xlat44 = ((x_697 * x_699) + x_701);
  let x_707 : f32 = vs_INTERP9.z;
  u_xlatb20.x = (0.0f >= x_707);
  let x_712 : f32 = vs_INTERP9.z;
  u_xlatb34 = (x_712 >= 1.0f);
  let x_714 : bool = u_xlatb34;
  let x_716 : bool = u_xlatb20.x;
  u_xlatb20.x = (x_714 | x_716);
  let x_720 : bool = u_xlatb20.x;
  let x_721 : f32 = u_xlat44;
  u_xlat44 = select(x_721, 1.0f, x_720);
  let x_723 : vec3<f32> = vs_INTERP0;
  let x_725 : vec3<f32> = x_66.x_WorldSpaceCameraPos;
  u_xlat20 = (x_723 + -(x_725));
  let x_728 : vec3<f32> = u_xlat20;
  let x_729 : vec3<f32> = u_xlat20;
  u_xlat20.x = dot(x_728, x_729);
  let x_733 : f32 = u_xlat20.x;
  let x_735 : f32 = x_139.x_MainLightShadowParams.z;
  let x_738 : f32 = x_139.x_MainLightShadowParams.w;
  u_xlat20.x = ((x_733 * x_735) + x_738);
  let x_742 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_742, 0.0f, 1.0f);
  let x_746 : f32 = u_xlat44;
  u_xlat34 = (-(x_746) + 1.0f);
  let x_750 : f32 = u_xlat20.x;
  let x_751 : f32 = u_xlat34;
  let x_753 : f32 = u_xlat44;
  u_xlat44 = ((x_750 * x_751) + x_753);
  let x_761 : f32 = x_759.x_MainLightCookieTextureFormat;
  u_xlatb20.x = !((x_761 == -1.0f));
  let x_765 : bool = u_xlatb20.x;
  if (x_765) {
    let x_768 : vec3<f32> = vs_INTERP0;
    let x_771 : vec4<f32> = x_759.x_MainLightWorldToLight[1i];
    let x_773 : vec2<f32> = (vec2<f32>(x_768.y, x_768.y) * vec2<f32>(x_771.x, x_771.y));
    let x_774 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_773.x, x_773.y, x_774.z);
    let x_777 : vec4<f32> = x_759.x_MainLightWorldToLight[0i];
    let x_779 : vec3<f32> = vs_INTERP0;
    let x_782 : vec3<f32> = u_xlat20;
    let x_784 : vec2<f32> = ((vec2<f32>(x_777.x, x_777.y) * vec2<f32>(x_779.x, x_779.x)) + vec2<f32>(x_782.x, x_782.y));
    let x_785 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_784.x, x_784.y, x_785.z);
    let x_788 : vec4<f32> = x_759.x_MainLightWorldToLight[2i];
    let x_790 : vec3<f32> = vs_INTERP0;
    let x_793 : vec3<f32> = u_xlat20;
    let x_795 : vec2<f32> = ((vec2<f32>(x_788.x, x_788.y) * vec2<f32>(x_790.z, x_790.z)) + vec2<f32>(x_793.x, x_793.y));
    let x_796 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_795.x, x_795.y, x_796.z);
    let x_798 : vec3<f32> = u_xlat20;
    let x_801 : vec4<f32> = x_759.x_MainLightWorldToLight[3i];
    let x_803 : vec2<f32> = (vec2<f32>(x_798.x, x_798.y) + vec2<f32>(x_801.x, x_801.y));
    let x_804 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_803.x, x_803.y, x_804.z);
    let x_806 : vec3<f32> = u_xlat20;
    let x_810 : vec2<f32> = ((vec2<f32>(x_806.x, x_806.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_811 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_810.x, x_810.y, x_811.z);
    let x_818 : vec3<f32> = u_xlat20;
    let x_821 : f32 = x_66.x_GlobalMipBias.x;
    let x_822 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_818.x, x_818.y), x_821);
    u_xlat7 = x_822;
    let x_824 : f32 = x_759.x_MainLightCookieTextureFormat;
    let x_826 : f32 = x_759.x_MainLightCookieTextureFormat;
    let x_828 : f32 = x_759.x_MainLightCookieTextureFormat;
    let x_830 : f32 = x_759.x_MainLightCookieTextureFormat;
    let x_831 : vec4<f32> = vec4<f32>(x_824, x_826, x_828, x_830);
    let x_839 : vec4<bool> = (vec4<f32>(x_831.x, x_831.y, x_831.z, x_831.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb20 = vec2<bool>(x_839.x, x_839.y);
    let x_842 : bool = u_xlatb20.y;
    if (x_842) {
      let x_847 : f32 = u_xlat7.w;
      x_843 = x_847;
    } else {
      let x_850 : f32 = u_xlat7.x;
      x_843 = x_850;
    }
    let x_851 : f32 = x_843;
    u_xlat34 = x_851;
    let x_853 : bool = u_xlatb20.x;
    if (x_853) {
      let x_857 : vec4<f32> = u_xlat7;
      x_854 = vec3<f32>(x_857.x, x_857.y, x_857.z);
    } else {
      let x_860 : f32 = u_xlat34;
      x_854 = vec3<f32>(x_860, x_860, x_860);
    }
    let x_862 : vec3<f32> = x_854;
    u_xlat20 = x_862;
  } else {
    u_xlat20.x = 1.0f;
    u_xlat20.y = 1.0f;
    u_xlat20.z = 1.0f;
  }
  let x_867 : vec3<f32> = u_xlat20;
  let x_869 : vec4<f32> = x_66.x_MainLightColor;
  u_xlat20 = (x_867 * vec3<f32>(x_869.x, x_869.y, x_869.z));
  let x_872 : vec3<f32> = u_xlat6;
  let x_874 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_872.x, x_872.x, x_872.x) * x_874);
  let x_876 : vec3<f32> = u_xlat5;
  let x_878 : vec4<f32> = u_xlat4;
  u_xlat7.x = dot(-(x_876), vec3<f32>(x_878.x, x_878.y, x_878.z));
  let x_883 : f32 = u_xlat7.x;
  let x_885 : f32 = u_xlat7.x;
  u_xlat7.x = (x_883 + x_885);
  let x_888 : vec4<f32> = u_xlat4;
  let x_890 : vec4<f32> = u_xlat7;
  let x_894 : vec3<f32> = u_xlat5;
  let x_896 : vec3<f32> = ((vec3<f32>(x_888.x, x_888.y, x_888.z) * -(vec3<f32>(x_890.x, x_890.x, x_890.x))) + -(x_894));
  let x_897 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_896.x, x_896.y, x_896.z, x_897.w);
  let x_900 : vec4<f32> = u_xlat4;
  let x_902 : vec3<f32> = u_xlat5;
  u_xlat49 = dot(vec3<f32>(x_900.x, x_900.y, x_900.z), x_902);
  let x_904 : f32 = u_xlat49;
  u_xlat49 = clamp(x_904, 0.0f, 1.0f);
  let x_906 : f32 = u_xlat49;
  u_xlat49 = (-(x_906) + 1.0f);
  let x_909 : f32 = u_xlat49;
  let x_910 : f32 = u_xlat49;
  u_xlat49 = (x_909 * x_910);
  let x_912 : f32 = u_xlat49;
  let x_913 : f32 = u_xlat49;
  u_xlat49 = (x_912 * x_913);
  let x_916 : f32 = u_xlat17.x;
  u_xlat8.x = ((-(x_916) * 0.699999988f) + 1.700000048f);
  let x_924 : f32 = u_xlat17.x;
  let x_926 : f32 = u_xlat8.x;
  u_xlat17.x = (x_924 * x_926);
  let x_930 : f32 = u_xlat17.x;
  u_xlat17.x = (x_930 * 6.0f);
  let x_942 : vec4<f32> = u_xlat7;
  let x_945 : f32 = u_xlat17.x;
  let x_946 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_942.x, x_942.y, x_942.z), x_945);
  u_xlat8 = x_946;
  let x_948 : f32 = u_xlat8.w;
  u_xlat17.x = (x_948 + -1.0f);
  let x_952 : f32 = x_344.unity_SpecCube0_HDR.w;
  let x_954 : f32 = u_xlat17.x;
  u_xlat17.x = ((x_952 * x_954) + 1.0f);
  let x_959 : f32 = u_xlat17.x;
  u_xlat17.x = max(x_959, 0.0f);
  let x_963 : f32 = u_xlat17.x;
  u_xlat17.x = log2(x_963);
  let x_967 : f32 = u_xlat17.x;
  let x_969 : f32 = x_344.unity_SpecCube0_HDR.y;
  u_xlat17.x = (x_967 * x_969);
  let x_973 : f32 = u_xlat17.x;
  u_xlat17.x = exp2(x_973);
  let x_977 : f32 = u_xlat17.x;
  let x_979 : f32 = x_344.unity_SpecCube0_HDR.x;
  u_xlat17.x = (x_977 * x_979);
  let x_982 : vec4<f32> = u_xlat8;
  let x_984 : vec3<f32> = u_xlat17;
  let x_986 : vec3<f32> = (vec3<f32>(x_982.x, x_982.y, x_982.z) * vec3<f32>(x_984.x, x_984.x, x_984.x));
  let x_987 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_986.x, x_986.y, x_986.z, x_987.w);
  let x_989 : f32 = u_xlat31;
  let x_991 : f32 = u_xlat31;
  let x_995 : vec2<f32> = ((vec2<f32>(x_989, x_989) * vec2<f32>(x_991, x_991)) + vec2<f32>(-1.0f, 1.0f));
  let x_996 : vec3<f32> = u_xlat17;
  u_xlat17 = vec3<f32>(x_995.x, x_995.y, x_996.z);
  let x_999 : f32 = u_xlat17.y;
  u_xlat31 = (1.0f / x_999);
  let x_1002 : f32 = u_xlat3.x;
  u_xlat3.x = (x_1002 + -0.039999999f);
  let x_1006 : f32 = u_xlat49;
  let x_1008 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1006 * x_1008) + 0.039999999f);
  let x_1014 : f32 = u_xlat3.x;
  let x_1015 : f32 = u_xlat31;
  u_xlat3.x = (x_1014 * x_1015);
  let x_1018 : vec4<f32> = u_xlat3;
  let x_1020 : vec4<f32> = u_xlat7;
  let x_1022 : vec3<f32> = (vec3<f32>(x_1018.x, x_1018.x, x_1018.x) * vec3<f32>(x_1020.x, x_1020.y, x_1020.z));
  let x_1023 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1022.x, x_1022.y, x_1022.z, x_1023.w);
  let x_1025 : vec4<f32> = u_xlat1;
  let x_1027 : vec3<f32> = u_xlat2;
  let x_1029 : vec4<f32> = u_xlat7;
  let x_1031 : vec3<f32> = ((vec3<f32>(x_1025.x, x_1025.z, x_1025.w) * x_1027) + vec3<f32>(x_1029.x, x_1029.y, x_1029.z));
  let x_1032 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1031.x, x_1032.y, x_1031.y, x_1031.z);
  let x_1034 : f32 = u_xlat44;
  let x_1036 : f32 = x_344.unity_LightData.z;
  u_xlat44 = (x_1034 * x_1036);
  let x_1038 : vec4<f32> = u_xlat4;
  let x_1041 : vec4<f32> = x_66.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_1038.x, x_1038.y, x_1038.z), vec3<f32>(x_1041.x, x_1041.y, x_1041.z));
  let x_1046 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1046, 0.0f, 1.0f);
  let x_1049 : f32 = u_xlat44;
  let x_1051 : f32 = u_xlat3.x;
  u_xlat44 = (x_1049 * x_1051);
  let x_1053 : f32 = u_xlat44;
  let x_1055 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_1053, x_1053, x_1053) * x_1055);
  let x_1057 : vec3<f32> = u_xlat5;
  let x_1059 : vec4<f32> = x_66.x_MainLightPosition;
  let x_1061 : vec3<f32> = (x_1057 + vec3<f32>(x_1059.x, x_1059.y, x_1059.z));
  let x_1062 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1061.x, x_1061.y, x_1061.z, x_1062.w);
  let x_1064 : vec4<f32> = u_xlat7;
  let x_1066 : vec4<f32> = u_xlat7;
  u_xlat44 = dot(vec3<f32>(x_1064.x, x_1064.y, x_1064.z), vec3<f32>(x_1066.x, x_1066.y, x_1066.z));
  let x_1069 : f32 = u_xlat44;
  u_xlat44 = max(x_1069, 1.17549435e-37f);
  let x_1072 : f32 = u_xlat44;
  u_xlat44 = inverseSqrt(x_1072);
  let x_1074 : f32 = u_xlat44;
  let x_1076 : vec4<f32> = u_xlat7;
  let x_1078 : vec3<f32> = (vec3<f32>(x_1074, x_1074, x_1074) * vec3<f32>(x_1076.x, x_1076.y, x_1076.z));
  let x_1079 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1078.x, x_1078.y, x_1078.z, x_1079.w);
  let x_1081 : vec4<f32> = u_xlat4;
  let x_1083 : vec4<f32> = u_xlat7;
  u_xlat44 = dot(vec3<f32>(x_1081.x, x_1081.y, x_1081.z), vec3<f32>(x_1083.x, x_1083.y, x_1083.z));
  let x_1086 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1086, 0.0f, 1.0f);
  let x_1089 : vec4<f32> = x_66.x_MainLightPosition;
  let x_1091 : vec4<f32> = u_xlat7;
  u_xlat3.x = dot(vec3<f32>(x_1089.x, x_1089.y, x_1089.z), vec3<f32>(x_1091.x, x_1091.y, x_1091.z));
  let x_1096 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1096, 0.0f, 1.0f);
  let x_1099 : f32 = u_xlat44;
  let x_1100 : f32 = u_xlat44;
  u_xlat44 = (x_1099 * x_1100);
  let x_1102 : f32 = u_xlat44;
  let x_1104 : f32 = u_xlat17.x;
  u_xlat44 = ((x_1102 * x_1104) + 1.000010014f);
  let x_1109 : f32 = u_xlat3.x;
  let x_1111 : f32 = u_xlat3.x;
  u_xlat3.x = (x_1109 * x_1111);
  let x_1114 : f32 = u_xlat44;
  let x_1115 : f32 = u_xlat44;
  u_xlat44 = (x_1114 * x_1115);
  let x_1118 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_1118, 0.100000001f);
  let x_1122 : f32 = u_xlat44;
  let x_1124 : f32 = u_xlat3.x;
  u_xlat44 = (x_1122 * x_1124);
  let x_1126 : f32 = u_xlat46;
  let x_1127 : f32 = u_xlat44;
  u_xlat44 = (x_1126 * x_1127);
  let x_1129 : f32 = u_xlat45;
  let x_1130 : f32 = u_xlat44;
  u_xlat44 = (x_1129 / x_1130);
  let x_1132 : f32 = u_xlat44;
  let x_1136 : vec3<f32> = u_xlat2;
  let x_1137 : vec3<f32> = ((vec3<f32>(x_1132, x_1132, x_1132) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1136);
  let x_1138 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1137.x, x_1137.y, x_1137.z, x_1138.w);
  let x_1140 : vec3<f32> = u_xlat20;
  let x_1141 : vec4<f32> = u_xlat7;
  u_xlat20 = (x_1140 * vec3<f32>(x_1141.x, x_1141.y, x_1141.z));
  let x_1146 : f32 = x_66.x_AdditionalLightsCount.x;
  let x_1148 : f32 = x_344.unity_LightData.y;
  u_xlat44 = min(x_1146, x_1148);
  let x_1152 : f32 = u_xlat44;
  u_xlatu44 = bitcast<u32>(i32(x_1152));
  let x_1157 : f32 = x_759.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1159 : f32 = x_759.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1161 : f32 = x_759.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1163 : f32 = x_759.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1164 : vec4<f32> = vec4<f32>(x_1157, x_1159, x_1161, x_1163);
  let x_1171 : vec4<bool> = (vec4<f32>(x_1164.x, x_1164.y, x_1164.z, x_1164.w) == vec4<f32>(0.0f, 0.0f, 1.0f, 0.0f));
  let x_1172 : vec2<bool> = vec2<bool>(x_1171.x, x_1171.z);
  let x_1173 : vec3<bool> = u_xlatb3;
  u_xlatb3 = vec3<bool>(x_1172.x, x_1173.y, x_1172.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1184 : u32 = u_xlatu_loop_1;
    let x_1185 : u32 = u_xlatu44;
    if ((x_1184 < x_1185)) {
    } else {
      break;
    }
    let x_1188 : u32 = u_xlatu_loop_1;
    u_xlatu8 = (x_1188 >> 2u);
    let x_1192 : u32 = u_xlatu_loop_1;
    u_xlati22 = bitcast<i32>((x_1192 & 3u));
    let x_1195 : u32 = u_xlatu8;
    let x_1198 : vec4<f32> = x_344.unity_LightIndices[bitcast<i32>(x_1195)];
    let x_1208 : i32 = u_xlati22;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1213 : vec4<u32> = indexable[x_1208];
    u_xlat8.x = dot(x_1198, bitcast<vec4<f32>>(x_1213));
    let x_1218 : f32 = u_xlat8.x;
    u_xlatu8 = bitcast<u32>(i32(x_1218));
    let x_1222 : vec3<f32> = vs_INTERP0;
    let x_1234 : u32 = u_xlatu8;
    let x_1237 : vec4<f32> = x_1233.x_AdditionalLightsPosition[bitcast<i32>(x_1234)];
    let x_1240 : u32 = u_xlatu8;
    let x_1243 : vec4<f32> = x_1233.x_AdditionalLightsPosition[bitcast<i32>(x_1240)];
    u_xlat22 = ((-(x_1222) * vec3<f32>(x_1237.w, x_1237.w, x_1237.w)) + vec3<f32>(x_1243.x, x_1243.y, x_1243.z));
    let x_1247 : vec3<f32> = u_xlat22;
    let x_1248 : vec3<f32> = u_xlat22;
    u_xlat9.x = dot(x_1247, x_1248);
    let x_1252 : f32 = u_xlat9.x;
    u_xlat9.x = max(x_1252, 6.10351562e-05f);
    let x_1258 : f32 = u_xlat9.x;
    u_xlat23 = inverseSqrt(x_1258);
    let x_1261 : vec3<f32> = u_xlat22;
    let x_1262 : f32 = u_xlat23;
    u_xlat10 = (x_1261 * vec3<f32>(x_1262, x_1262, x_1262));
    let x_1268 : f32 = u_xlat9.x;
    u_xlat37.x = (1.0f / x_1268);
    let x_1272 : f32 = u_xlat9.x;
    let x_1273 : u32 = u_xlatu8;
    let x_1276 : f32 = x_1233.x_AdditionalLightsAttenuation[bitcast<i32>(x_1273)].x;
    u_xlat9.x = (x_1272 * x_1276);
    let x_1280 : f32 = u_xlat9.x;
    let x_1283 : f32 = u_xlat9.x;
    u_xlat9.x = ((-(x_1280) * x_1283) + 1.0f);
    let x_1288 : f32 = u_xlat9.x;
    u_xlat9.x = max(x_1288, 0.0f);
    let x_1292 : f32 = u_xlat9.x;
    let x_1294 : f32 = u_xlat9.x;
    u_xlat9.x = (x_1292 * x_1294);
    let x_1298 : f32 = u_xlat9.x;
    let x_1300 : f32 = u_xlat37.x;
    u_xlat9.x = (x_1298 * x_1300);
    let x_1303 : u32 = u_xlatu8;
    let x_1306 : vec4<f32> = x_1233.x_AdditionalLightsSpotDir[bitcast<i32>(x_1303)];
    let x_1308 : vec3<f32> = u_xlat10;
    u_xlat37.x = dot(vec3<f32>(x_1306.x, x_1306.y, x_1306.z), x_1308);
    let x_1312 : f32 = u_xlat37.x;
    let x_1313 : u32 = u_xlatu8;
    let x_1316 : f32 = x_1233.x_AdditionalLightsAttenuation[bitcast<i32>(x_1313)].z;
    let x_1318 : u32 = u_xlatu8;
    let x_1321 : f32 = x_1233.x_AdditionalLightsAttenuation[bitcast<i32>(x_1318)].w;
    u_xlat37.x = ((x_1312 * x_1316) + x_1321);
    let x_1325 : f32 = u_xlat37.x;
    u_xlat37.x = clamp(x_1325, 0.0f, 1.0f);
    let x_1329 : f32 = u_xlat37.x;
    let x_1331 : f32 = u_xlat37.x;
    u_xlat37.x = (x_1329 * x_1331);
    let x_1335 : f32 = u_xlat37.x;
    let x_1337 : f32 = u_xlat9.x;
    u_xlat9.x = (x_1335 * x_1337);
    let x_1341 : u32 = u_xlatu8;
    u_xlatu37 = (x_1341 >> 5u);
    let x_1344 : u32 = u_xlatu8;
    u_xlati51 = (1i << bitcast<u32>((bitcast<i32>(x_1344) & 31i)));
    let x_1350 : i32 = u_xlati51;
    let x_1352 : u32 = u_xlatu37;
    let x_1355 : f32 = x_759.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1352)].el;
    u_xlati37 = bitcast<i32>((bitcast<u32>(x_1350) & bitcast<u32>(x_1355)));
    let x_1359 : i32 = u_xlati37;
    if ((x_1359 != 0i)) {
      let x_1369 : u32 = u_xlatu8;
      let x_1372 : f32 = x_1368.x_AdditionalLightsLightTypes[bitcast<i32>(x_1369)].el;
      u_xlati37 = i32(x_1372);
      let x_1374 : i32 = u_xlati37;
      u_xlati51 = select(1i, 0i, (x_1374 != 0i));
      let x_1378 : u32 = u_xlatu8;
      u_xlati52 = (bitcast<i32>(x_1378) << bitcast<u32>(2i));
      let x_1381 : i32 = u_xlati51;
      if ((x_1381 != 0i)) {
        let x_1386 : vec3<f32> = vs_INTERP0;
        let x_1388 : i32 = u_xlati52;
        let x_1391 : i32 = u_xlati52;
        let x_1395 : vec4<f32> = x_1368.x_AdditionalLightsWorldToLights[((x_1388 + 1i) / 4i)][((x_1391 + 1i) % 4i)];
        let x_1397 : vec3<f32> = (vec3<f32>(x_1386.y, x_1386.y, x_1386.y) * vec3<f32>(x_1395.x, x_1395.y, x_1395.w));
        let x_1398 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1397.x, x_1397.y, x_1397.z, x_1398.w);
        let x_1400 : i32 = u_xlati52;
        let x_1402 : i32 = u_xlati52;
        let x_1405 : vec4<f32> = x_1368.x_AdditionalLightsWorldToLights[(x_1400 / 4i)][(x_1402 % 4i)];
        let x_1407 : vec3<f32> = vs_INTERP0;
        let x_1410 : vec4<f32> = u_xlat11;
        let x_1412 : vec3<f32> = ((vec3<f32>(x_1405.x, x_1405.y, x_1405.w) * vec3<f32>(x_1407.x, x_1407.x, x_1407.x)) + vec3<f32>(x_1410.x, x_1410.y, x_1410.z));
        let x_1413 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1412.x, x_1412.y, x_1412.z, x_1413.w);
        let x_1415 : i32 = u_xlati52;
        let x_1418 : i32 = u_xlati52;
        let x_1422 : vec4<f32> = x_1368.x_AdditionalLightsWorldToLights[((x_1415 + 2i) / 4i)][((x_1418 + 2i) % 4i)];
        let x_1424 : vec3<f32> = vs_INTERP0;
        let x_1427 : vec4<f32> = u_xlat11;
        let x_1429 : vec3<f32> = ((vec3<f32>(x_1422.x, x_1422.y, x_1422.w) * vec3<f32>(x_1424.z, x_1424.z, x_1424.z)) + vec3<f32>(x_1427.x, x_1427.y, x_1427.z));
        let x_1430 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1429.x, x_1429.y, x_1429.z, x_1430.w);
        let x_1432 : vec4<f32> = u_xlat11;
        let x_1434 : i32 = u_xlati52;
        let x_1437 : i32 = u_xlati52;
        let x_1441 : vec4<f32> = x_1368.x_AdditionalLightsWorldToLights[((x_1434 + 3i) / 4i)][((x_1437 + 3i) % 4i)];
        let x_1443 : vec3<f32> = (vec3<f32>(x_1432.x, x_1432.y, x_1432.z) + vec3<f32>(x_1441.x, x_1441.y, x_1441.w));
        let x_1444 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1443.x, x_1443.y, x_1443.z, x_1444.w);
        let x_1446 : vec4<f32> = u_xlat11;
        let x_1448 : vec4<f32> = u_xlat11;
        let x_1450 : vec2<f32> = (vec2<f32>(x_1446.x, x_1446.y) / vec2<f32>(x_1448.z, x_1448.z));
        let x_1451 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1450.x, x_1450.y, x_1451.z, x_1451.w);
        let x_1453 : vec4<f32> = u_xlat11;
        let x_1456 : vec2<f32> = ((vec2<f32>(x_1453.x, x_1453.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1457 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1456.x, x_1456.y, x_1457.z, x_1457.w);
        let x_1459 : vec4<f32> = u_xlat11;
        let x_1463 : vec2<f32> = clamp(vec2<f32>(x_1459.x, x_1459.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1464 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1463.x, x_1463.y, x_1464.z, x_1464.w);
        let x_1466 : u32 = u_xlatu8;
        let x_1469 : vec4<f32> = x_1368.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1466)];
        let x_1471 : vec4<f32> = u_xlat11;
        let x_1474 : u32 = u_xlatu8;
        let x_1477 : vec4<f32> = x_1368.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1474)];
        let x_1479 : vec2<f32> = ((vec2<f32>(x_1469.x, x_1469.y) * vec2<f32>(x_1471.x, x_1471.y)) + vec2<f32>(x_1477.z, x_1477.w));
        let x_1480 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1479.x, x_1479.y, x_1480.z, x_1480.w);
      } else {
        let x_1484 : i32 = u_xlati37;
        u_xlatb37 = (x_1484 == 1i);
        let x_1486 : bool = u_xlatb37;
        u_xlati37 = select(0i, 1i, x_1486);
        let x_1488 : i32 = u_xlati37;
        if ((x_1488 != 0i)) {
          let x_1492 : vec3<f32> = vs_INTERP0;
          let x_1494 : i32 = u_xlati52;
          let x_1497 : i32 = u_xlati52;
          let x_1501 : vec4<f32> = x_1368.x_AdditionalLightsWorldToLights[((x_1494 + 1i) / 4i)][((x_1497 + 1i) % 4i)];
          u_xlat37 = (vec2<f32>(x_1492.y, x_1492.y) * vec2<f32>(x_1501.x, x_1501.y));
          let x_1504 : i32 = u_xlati52;
          let x_1506 : i32 = u_xlati52;
          let x_1509 : vec4<f32> = x_1368.x_AdditionalLightsWorldToLights[(x_1504 / 4i)][(x_1506 % 4i)];
          let x_1511 : vec3<f32> = vs_INTERP0;
          let x_1514 : vec2<f32> = u_xlat37;
          u_xlat37 = ((vec2<f32>(x_1509.x, x_1509.y) * vec2<f32>(x_1511.x, x_1511.x)) + x_1514);
          let x_1516 : i32 = u_xlati52;
          let x_1519 : i32 = u_xlati52;
          let x_1523 : vec4<f32> = x_1368.x_AdditionalLightsWorldToLights[((x_1516 + 2i) / 4i)][((x_1519 + 2i) % 4i)];
          let x_1525 : vec3<f32> = vs_INTERP0;
          let x_1528 : vec2<f32> = u_xlat37;
          u_xlat37 = ((vec2<f32>(x_1523.x, x_1523.y) * vec2<f32>(x_1525.z, x_1525.z)) + x_1528);
          let x_1530 : vec2<f32> = u_xlat37;
          let x_1531 : i32 = u_xlati52;
          let x_1534 : i32 = u_xlati52;
          let x_1538 : vec4<f32> = x_1368.x_AdditionalLightsWorldToLights[((x_1531 + 3i) / 4i)][((x_1534 + 3i) % 4i)];
          u_xlat37 = (x_1530 + vec2<f32>(x_1538.x, x_1538.y));
          let x_1541 : vec2<f32> = u_xlat37;
          u_xlat37 = ((x_1541 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1544 : vec2<f32> = u_xlat37;
          u_xlat37 = fract(x_1544);
          let x_1546 : u32 = u_xlatu8;
          let x_1549 : vec4<f32> = x_1368.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1546)];
          let x_1551 : vec2<f32> = u_xlat37;
          let x_1553 : u32 = u_xlatu8;
          let x_1556 : vec4<f32> = x_1368.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1553)];
          let x_1558 : vec2<f32> = ((vec2<f32>(x_1549.x, x_1549.y) * x_1551) + vec2<f32>(x_1556.z, x_1556.w));
          let x_1559 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1558.x, x_1558.y, x_1559.z, x_1559.w);
        } else {
          let x_1563 : vec3<f32> = vs_INTERP0;
          let x_1565 : i32 = u_xlati52;
          let x_1568 : i32 = u_xlati52;
          let x_1572 : vec4<f32> = x_1368.x_AdditionalLightsWorldToLights[((x_1565 + 1i) / 4i)][((x_1568 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1563.y, x_1563.y, x_1563.y, x_1563.y) * x_1572);
          let x_1574 : i32 = u_xlati52;
          let x_1576 : i32 = u_xlati52;
          let x_1579 : vec4<f32> = x_1368.x_AdditionalLightsWorldToLights[(x_1574 / 4i)][(x_1576 % 4i)];
          let x_1580 : vec3<f32> = vs_INTERP0;
          let x_1583 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1579 * vec4<f32>(x_1580.x, x_1580.x, x_1580.x, x_1580.x)) + x_1583);
          let x_1585 : i32 = u_xlati52;
          let x_1588 : i32 = u_xlati52;
          let x_1592 : vec4<f32> = x_1368.x_AdditionalLightsWorldToLights[((x_1585 + 2i) / 4i)][((x_1588 + 2i) % 4i)];
          let x_1593 : vec3<f32> = vs_INTERP0;
          let x_1596 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1592 * vec4<f32>(x_1593.z, x_1593.z, x_1593.z, x_1593.z)) + x_1596);
          let x_1598 : vec4<f32> = u_xlat12;
          let x_1599 : i32 = u_xlati52;
          let x_1602 : i32 = u_xlati52;
          let x_1606 : vec4<f32> = x_1368.x_AdditionalLightsWorldToLights[((x_1599 + 3i) / 4i)][((x_1602 + 3i) % 4i)];
          u_xlat12 = (x_1598 + x_1606);
          let x_1608 : vec4<f32> = u_xlat12;
          let x_1610 : vec4<f32> = u_xlat12;
          let x_1612 : vec3<f32> = (vec3<f32>(x_1608.x, x_1608.y, x_1608.z) / vec3<f32>(x_1610.w, x_1610.w, x_1610.w));
          let x_1613 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1612.x, x_1612.y, x_1612.z, x_1613.w);
          let x_1615 : vec4<f32> = u_xlat12;
          let x_1617 : vec4<f32> = u_xlat12;
          u_xlat37.x = dot(vec3<f32>(x_1615.x, x_1615.y, x_1615.z), vec3<f32>(x_1617.x, x_1617.y, x_1617.z));
          let x_1622 : f32 = u_xlat37.x;
          u_xlat37.x = inverseSqrt(x_1622);
          let x_1625 : vec2<f32> = u_xlat37;
          let x_1627 : vec4<f32> = u_xlat12;
          let x_1629 : vec3<f32> = (vec3<f32>(x_1625.x, x_1625.x, x_1625.x) * vec3<f32>(x_1627.x, x_1627.y, x_1627.z));
          let x_1630 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1629.x, x_1629.y, x_1629.z, x_1630.w);
          let x_1632 : vec4<f32> = u_xlat12;
          u_xlat37.x = dot(abs(vec3<f32>(x_1632.x, x_1632.y, x_1632.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1639 : f32 = u_xlat37.x;
          u_xlat37.x = max(x_1639, 0.000001f);
          let x_1644 : f32 = u_xlat37.x;
          u_xlat37.x = (1.0f / x_1644);
          let x_1648 : vec2<f32> = u_xlat37;
          let x_1650 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1648.x, x_1648.x, x_1648.x) * vec3<f32>(x_1650.z, x_1650.x, x_1650.y));
          let x_1654 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1654);
          let x_1658 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1658, 0.0f, 1.0f);
          let x_1662 : vec3<f32> = u_xlat13;
          let x_1665 : vec4<bool> = (vec4<f32>(x_1662.y, x_1662.z, x_1662.y, x_1662.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1665.x, x_1665.y);
          let x_1669 : bool = u_xlatb39.x;
          if (x_1669) {
            let x_1674 : f32 = u_xlat13.x;
            x_1670 = x_1674;
          } else {
            let x_1677 : f32 = u_xlat13.x;
            x_1670 = -(x_1677);
          }
          let x_1679 : f32 = x_1670;
          u_xlat39.x = x_1679;
          let x_1682 : bool = u_xlatb39.y;
          if (x_1682) {
            let x_1687 : f32 = u_xlat13.x;
            x_1683 = x_1687;
          } else {
            let x_1690 : f32 = u_xlat13.x;
            x_1683 = -(x_1690);
          }
          let x_1692 : f32 = x_1683;
          u_xlat39.y = x_1692;
          let x_1694 : vec4<f32> = u_xlat12;
          let x_1696 : vec2<f32> = u_xlat37;
          let x_1699 : vec2<f32> = u_xlat39;
          u_xlat37 = ((vec2<f32>(x_1694.x, x_1694.y) * vec2<f32>(x_1696.x, x_1696.x)) + x_1699);
          let x_1701 : vec2<f32> = u_xlat37;
          u_xlat37 = ((x_1701 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1704 : vec2<f32> = u_xlat37;
          u_xlat37 = clamp(x_1704, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1708 : u32 = u_xlatu8;
          let x_1711 : vec4<f32> = x_1368.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1708)];
          let x_1713 : vec2<f32> = u_xlat37;
          let x_1715 : u32 = u_xlatu8;
          let x_1718 : vec4<f32> = x_1368.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1715)];
          let x_1720 : vec2<f32> = ((vec2<f32>(x_1711.x, x_1711.y) * x_1713) + vec2<f32>(x_1718.z, x_1718.w));
          let x_1721 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1720.x, x_1720.y, x_1721.z, x_1721.w);
        }
      }
      let x_1728 : vec4<f32> = u_xlat11;
      let x_1731 : f32 = x_66.x_GlobalMipBias.x;
      let x_1732 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1728.x, x_1728.y), x_1731);
      u_xlat11 = x_1732;
      let x_1734 : bool = u_xlatb3.z;
      if (x_1734) {
        let x_1739 : f32 = u_xlat11.w;
        x_1735 = x_1739;
      } else {
        let x_1742 : f32 = u_xlat11.x;
        x_1735 = x_1742;
      }
      let x_1743 : f32 = x_1735;
      u_xlat37.x = x_1743;
      let x_1746 : bool = u_xlatb3.x;
      if (x_1746) {
        let x_1750 : vec4<f32> = u_xlat11;
        x_1747 = vec3<f32>(x_1750.x, x_1750.y, x_1750.z);
      } else {
        let x_1753 : vec2<f32> = u_xlat37;
        x_1747 = vec3<f32>(x_1753.x, x_1753.x, x_1753.x);
      }
      let x_1755 : vec3<f32> = x_1747;
      let x_1756 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1755.x, x_1755.y, x_1755.z, x_1756.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1762 : vec4<f32> = u_xlat11;
    let x_1764 : u32 = u_xlatu8;
    let x_1767 : vec4<f32> = x_1233.x_AdditionalLightsColor[bitcast<i32>(x_1764)];
    let x_1769 : vec3<f32> = (vec3<f32>(x_1762.x, x_1762.y, x_1762.z) * vec3<f32>(x_1767.x, x_1767.y, x_1767.z));
    let x_1770 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1769.x, x_1769.y, x_1769.z, x_1770.w);
    let x_1772 : vec3<f32> = u_xlat6;
    let x_1774 : vec4<f32> = u_xlat11;
    let x_1776 : vec3<f32> = (vec3<f32>(x_1772.x, x_1772.x, x_1772.x) * vec3<f32>(x_1774.x, x_1774.y, x_1774.z));
    let x_1777 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1776.x, x_1776.y, x_1776.z, x_1777.w);
    let x_1779 : vec4<f32> = u_xlat4;
    let x_1781 : vec3<f32> = u_xlat10;
    u_xlat8.x = dot(vec3<f32>(x_1779.x, x_1779.y, x_1779.z), x_1781);
    let x_1785 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_1785, 0.0f, 1.0f);
    let x_1789 : f32 = u_xlat8.x;
    let x_1791 : f32 = u_xlat9.x;
    u_xlat8.x = (x_1789 * x_1791);
    let x_1794 : vec4<f32> = u_xlat8;
    let x_1796 : vec4<f32> = u_xlat11;
    let x_1798 : vec3<f32> = (vec3<f32>(x_1794.x, x_1794.x, x_1794.x) * vec3<f32>(x_1796.x, x_1796.y, x_1796.z));
    let x_1799 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1798.x, x_1799.y, x_1798.y, x_1798.z);
    let x_1801 : vec3<f32> = u_xlat22;
    let x_1802 : f32 = u_xlat23;
    let x_1805 : vec3<f32> = u_xlat5;
    let x_1806 : vec3<f32> = ((x_1801 * vec3<f32>(x_1802, x_1802, x_1802)) + x_1805);
    let x_1807 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1806.x, x_1806.y, x_1806.z, x_1807.w);
    let x_1810 : vec4<f32> = u_xlat8;
    let x_1812 : vec4<f32> = u_xlat8;
    u_xlat50 = dot(vec3<f32>(x_1810.x, x_1810.y, x_1810.z), vec3<f32>(x_1812.x, x_1812.y, x_1812.z));
    let x_1815 : f32 = u_xlat50;
    u_xlat50 = max(x_1815, 1.17549435e-37f);
    let x_1817 : f32 = u_xlat50;
    u_xlat50 = inverseSqrt(x_1817);
    let x_1819 : f32 = u_xlat50;
    let x_1821 : vec4<f32> = u_xlat8;
    let x_1823 : vec3<f32> = (vec3<f32>(x_1819, x_1819, x_1819) * vec3<f32>(x_1821.x, x_1821.y, x_1821.z));
    let x_1824 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1823.x, x_1823.y, x_1823.z, x_1824.w);
    let x_1826 : vec4<f32> = u_xlat4;
    let x_1828 : vec4<f32> = u_xlat8;
    u_xlat8.w = dot(vec3<f32>(x_1826.x, x_1826.y, x_1826.z), vec3<f32>(x_1828.x, x_1828.y, x_1828.z));
    let x_1833 : f32 = u_xlat8.w;
    u_xlat8.w = clamp(x_1833, 0.0f, 1.0f);
    let x_1836 : vec3<f32> = u_xlat10;
    let x_1837 : vec4<f32> = u_xlat8;
    u_xlat8.x = dot(x_1836, vec3<f32>(x_1837.x, x_1837.y, x_1837.z));
    let x_1842 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_1842, 0.0f, 1.0f);
    let x_1845 : vec4<f32> = u_xlat8;
    let x_1847 : vec4<f32> = u_xlat8;
    let x_1849 : vec2<f32> = (vec2<f32>(x_1845.x, x_1845.w) * vec2<f32>(x_1847.x, x_1847.w));
    let x_1850 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1849.x, x_1849.y, x_1850.z, x_1850.w);
    let x_1853 : f32 = u_xlat8.y;
    let x_1855 : f32 = u_xlat17.x;
    u_xlat22.x = ((x_1853 * x_1855) + 1.000010014f);
    let x_1860 : f32 = u_xlat22.x;
    let x_1862 : f32 = u_xlat22.x;
    u_xlat22.x = (x_1860 * x_1862);
    let x_1866 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_1866, 0.100000001f);
    let x_1870 : f32 = u_xlat8.x;
    let x_1872 : f32 = u_xlat22.x;
    u_xlat8.x = (x_1870 * x_1872);
    let x_1875 : f32 = u_xlat46;
    let x_1877 : f32 = u_xlat8.x;
    u_xlat8.x = (x_1875 * x_1877);
    let x_1880 : f32 = u_xlat45;
    let x_1882 : f32 = u_xlat8.x;
    u_xlat8.x = (x_1880 / x_1882);
    let x_1885 : vec4<f32> = u_xlat8;
    let x_1888 : vec3<f32> = u_xlat2;
    let x_1889 : vec3<f32> = ((vec3<f32>(x_1885.x, x_1885.x, x_1885.x) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1888);
    let x_1890 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1889.x, x_1889.y, x_1889.z, x_1890.w);
    let x_1892 : vec4<f32> = u_xlat8;
    let x_1894 : vec4<f32> = u_xlat9;
    let x_1897 : vec4<f32> = u_xlat7;
    let x_1899 : vec3<f32> = ((vec3<f32>(x_1892.x, x_1892.y, x_1892.z) * vec3<f32>(x_1894.x, x_1894.z, x_1894.w)) + vec3<f32>(x_1897.x, x_1897.y, x_1897.z));
    let x_1900 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1899.x, x_1899.y, x_1899.z, x_1900.w);

    continuing {
      let x_1902 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1902 + bitcast<u32>(1i));
    }
  }
  let x_1904 : vec4<f32> = u_xlat1;
  let x_1906 : f32 = u_xlat47;
  let x_1909 : vec3<f32> = u_xlat20;
  let x_1910 : vec3<f32> = ((vec3<f32>(x_1904.x, x_1904.z, x_1904.w) * vec3<f32>(x_1906, x_1906, x_1906)) + x_1909);
  let x_1911 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1910.x, x_1911.y, x_1910.y, x_1910.z);
  let x_1913 : vec4<f32> = u_xlat7;
  let x_1915 : vec4<f32> = u_xlat1;
  let x_1917 : vec3<f32> = (vec3<f32>(x_1913.x, x_1913.y, x_1913.z) + vec3<f32>(x_1915.x, x_1915.z, x_1915.w));
  let x_1918 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1917.x, x_1918.y, x_1917.y, x_1917.z);
  let x_1922 : vec4<f32> = vs_INTERP4;
  let x_1924 : vec3<f32> = u_xlat0;
  let x_1926 : vec4<f32> = u_xlat1;
  let x_1928 : vec3<f32> = ((vec3<f32>(x_1922.w, x_1922.w, x_1922.w) * x_1924) + vec3<f32>(x_1926.x, x_1926.z, x_1926.w));
  let x_1929 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1928.x, x_1928.y, x_1928.z, x_1929.w);
  let x_1931 : bool = u_xlatb15;
  let x_1932 : f32 = u_xlat42;
  SV_Target0.w = select(1.0f, x_1932, x_1931);
  let x_1940 : u32 = x_66.x_RenderingLayerMaxInt;
  let x_1942 : f32 = x_344.unity_RenderingLayer.x;
  u_xlatu0 = (x_1940 & bitcast<u32>(x_1942));
  let x_1945 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_1945);
  let x_1950 : f32 = u_xlat0.x;
  let x_1952 : f32 = x_66.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_1950 * x_1952);
  let x_1956 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_1956, 0.0f, 1.0f);
  let x_1959 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_1959.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(4) vs_INTERP4_param : vec4<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(5) vs_INTERP9_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP9 = vs_INTERP9_param;
  main_1();
  return main_out(SV_Target0, SV_Target1);
}

