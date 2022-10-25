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

@group(1) @binding(4) var<uniform> x_735 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1209 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1313 : AdditionalLightsCookies;

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
  var x_472 : vec3<f32>;
  var u_xlat18 : vec3<f32>;
  var u_xlat19 : vec3<f32>;
  var u_xlat47 : f32;
  var u_xlat6 : f32;
  var u_xlat20 : f32;
  var u_xlat33 : f32;
  var txVec1 : vec3<f32>;
  var u_xlat34 : vec2<f32>;
  var u_xlatb34 : vec2<bool>;
  var u_xlatb48 : bool;
  var u_xlat7 : vec4<f32>;
  var u_xlat48 : f32;
  var x_804 : f32;
  var x_815 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlatu44 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu47 : u32;
  var u_xlati49 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat9 : vec3<f32>;
  var u_xlat49 : f32;
  var u_xlat50 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlat51 : f32;
  var u_xlatu51 : u32;
  var u_xlati52 : i32;
  var u_xlati51 : i32;
  var u_xlati11 : i32;
  var u_xlat25 : vec3<f32>;
  var u_xlatb51 : bool;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb11 : vec4<bool>;
  var u_xlat11 : vec4<f32>;
  var x_1617 : f32;
  var x_1630 : f32;
  var x_1692 : f32;
  var x_1703 : vec3<f32>;
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
  let x_463 : f32 = x_66.unity_MatrixV[0i].z;
  u_xlat5.x = x_463;
  let x_466 : f32 = x_66.unity_MatrixV[1i].z;
  u_xlat5.y = x_466;
  let x_469 : f32 = x_66.unity_MatrixV[2i].z;
  u_xlat5.z = x_469;
  let x_471 : bool = u_xlatb17;
  if (x_471) {
    let x_475 : vec4<f32> = u_xlat4;
    x_472 = vec3<f32>(x_475.x, x_475.y, x_475.z);
  } else {
    let x_478 : vec3<f32> = u_xlat5;
    x_472 = x_478;
  }
  let x_479 : vec3<f32> = x_472;
  u_xlat17 = x_479;
  let x_481 : f32 = vs_INTERP0.y;
  let x_483 : f32 = x_66.unity_MatrixV[1i].z;
  u_xlat4.x = (x_481 * x_483);
  let x_487 : f32 = x_66.unity_MatrixV[0i].z;
  let x_489 : f32 = vs_INTERP0.x;
  let x_492 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_487 * x_489) + x_492);
  let x_496 : f32 = x_66.unity_MatrixV[2i].z;
  let x_498 : f32 = vs_INTERP0.z;
  let x_501 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_496 * x_498) + x_501);
  let x_505 : f32 = u_xlat4.x;
  let x_507 : f32 = x_66.unity_MatrixV[3i].z;
  u_xlat4.x = (x_505 + x_507);
  let x_511 : f32 = u_xlat4.x;
  let x_515 : f32 = x_66.x_ProjectionParams.y;
  u_xlat4.x = (-(x_511) + -(x_515));
  let x_520 : f32 = u_xlat4.x;
  u_xlat4.x = max(x_520, 0.0f);
  let x_524 : f32 = u_xlat4.x;
  let x_527 : f32 = x_66.unity_FogParams.x;
  u_xlat4.x = (x_524 * x_527);
  let x_538 : vec2<f32> = vs_INTERP5;
  let x_540 : f32 = x_66.x_GlobalMipBias.x;
  let x_541 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_538, x_540);
  u_xlat18 = vec3<f32>(x_541.x, x_541.y, x_541.z);
  let x_545 : vec4<f32> = x_66.x_ScaledScreenParams;
  let x_546 : vec2<f32> = vec2<f32>(x_545.x, x_545.y);
  let x_550 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_546.x, x_546.y));
  let x_551 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_550.x, x_550.y, x_551.z);
  let x_553 : vec3<f32> = u_xlat5;
  let x_555 : vec4<f32> = hlslcc_FragCoord;
  let x_557 : vec2<f32> = (vec2<f32>(x_553.x, x_553.y) * vec2<f32>(x_555.x, x_555.y));
  let x_558 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_557.x, x_557.y, x_558.z);
  let x_562 : f32 = u_xlat5.y;
  let x_565 : f32 = x_66.x_ScaleBiasRt.x;
  let x_568 : f32 = x_66.x_ScaleBiasRt.y;
  u_xlat19.x = ((x_562 * x_565) + x_568);
  let x_572 : f32 = u_xlat19.x;
  u_xlat5.z = (-(x_572) + 1.0f);
  let x_577 : f32 = u_xlat3.x;
  u_xlat3.x = x_577;
  let x_580 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_580, 0.0f, 1.0f);
  let x_583 : f32 = u_xlat42;
  u_xlat42 = min(x_583, 1.0f);
  let x_585 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_585 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_590 : f32 = u_xlat3.x;
  u_xlat19.x = (-(x_590) + 1.0f);
  let x_596 : f32 = u_xlat19.x;
  let x_598 : f32 = u_xlat19.x;
  u_xlat47 = (x_596 * x_598);
  let x_600 : f32 = u_xlat47;
  u_xlat47 = max(x_600, 0.0078125f);
  let x_604 : f32 = u_xlat47;
  let x_605 : f32 = u_xlat47;
  u_xlat6 = (x_604 * x_605);
  let x_608 : f32 = u_xlat3.x;
  u_xlat3.x = (x_608 + 0.040000021f);
  let x_613 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_613, 1.0f);
  let x_617 : f32 = u_xlat47;
  u_xlat20 = ((x_617 * 4.0f) + 2.0f);
  let x_626 : vec3<f32> = u_xlat5;
  let x_629 : f32 = x_66.x_GlobalMipBias.x;
  let x_630 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_626.x, x_626.z), x_629);
  u_xlat5.x = x_630.x;
  let x_635 : f32 = u_xlat5.x;
  u_xlat33 = (x_635 + -1.0f);
  let x_639 : f32 = x_66.x_AmbientOcclusionParam.w;
  let x_640 : f32 = u_xlat33;
  u_xlat33 = ((x_639 * x_640) + 1.0f);
  let x_644 : f32 = u_xlat5.x;
  let x_646 : f32 = vs_INTERP4.w;
  u_xlat5.x = min(x_644, x_646);
  let x_651 : vec4<f32> = vs_INTERP9;
  let x_652 : vec2<f32> = vec2<f32>(x_651.x, x_651.y);
  let x_654 : f32 = vs_INTERP9.z;
  txVec1 = vec3<f32>(x_652.x, x_652.y, x_654);
  let x_663 : vec3<f32> = txVec1;
  let x_665 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_663.xy, x_663.z);
  u_xlat34.x = x_665;
  let x_668 : f32 = u_xlat34.x;
  let x_670 : f32 = x_139.x_MainLightShadowParams.x;
  let x_672 : f32 = u_xlat44;
  u_xlat44 = ((x_668 * x_670) + x_672);
  let x_678 : f32 = vs_INTERP9.z;
  u_xlatb34.x = (0.0f >= x_678);
  let x_683 : f32 = vs_INTERP9.z;
  u_xlatb48 = (x_683 >= 1.0f);
  let x_685 : bool = u_xlatb48;
  let x_687 : bool = u_xlatb34.x;
  u_xlatb34.x = (x_685 | x_687);
  let x_691 : bool = u_xlatb34.x;
  let x_692 : f32 = u_xlat44;
  u_xlat44 = select(x_692, 1.0f, x_691);
  let x_695 : vec3<f32> = vs_INTERP0;
  let x_697 : vec3<f32> = x_66.x_WorldSpaceCameraPos;
  let x_699 : vec3<f32> = (x_695 + -(x_697));
  let x_700 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_699.x, x_699.y, x_699.z, x_700.w);
  let x_702 : vec4<f32> = u_xlat7;
  let x_704 : vec4<f32> = u_xlat7;
  u_xlat34.x = dot(vec3<f32>(x_702.x, x_702.y, x_702.z), vec3<f32>(x_704.x, x_704.y, x_704.z));
  let x_709 : f32 = u_xlat34.x;
  let x_711 : f32 = x_139.x_MainLightShadowParams.z;
  let x_714 : f32 = x_139.x_MainLightShadowParams.w;
  u_xlat34.x = ((x_709 * x_711) + x_714);
  let x_718 : f32 = u_xlat34.x;
  u_xlat34.x = clamp(x_718, 0.0f, 1.0f);
  let x_722 : f32 = u_xlat44;
  u_xlat48 = (-(x_722) + 1.0f);
  let x_726 : f32 = u_xlat34.x;
  let x_727 : f32 = u_xlat48;
  let x_729 : f32 = u_xlat44;
  u_xlat44 = ((x_726 * x_727) + x_729);
  let x_737 : f32 = x_735.x_MainLightCookieTextureFormat;
  u_xlatb34.x = !((x_737 == -1.0f));
  let x_741 : bool = u_xlatb34.x;
  if (x_741) {
    let x_744 : vec3<f32> = vs_INTERP0;
    let x_747 : vec4<f32> = x_735.x_MainLightWorldToLight[1i];
    u_xlat34 = (vec2<f32>(x_744.y, x_744.y) * vec2<f32>(x_747.x, x_747.y));
    let x_751 : vec4<f32> = x_735.x_MainLightWorldToLight[0i];
    let x_753 : vec3<f32> = vs_INTERP0;
    let x_756 : vec2<f32> = u_xlat34;
    u_xlat34 = ((vec2<f32>(x_751.x, x_751.y) * vec2<f32>(x_753.x, x_753.x)) + x_756);
    let x_759 : vec4<f32> = x_735.x_MainLightWorldToLight[2i];
    let x_761 : vec3<f32> = vs_INTERP0;
    let x_764 : vec2<f32> = u_xlat34;
    u_xlat34 = ((vec2<f32>(x_759.x, x_759.y) * vec2<f32>(x_761.z, x_761.z)) + x_764);
    let x_766 : vec2<f32> = u_xlat34;
    let x_768 : vec4<f32> = x_735.x_MainLightWorldToLight[3i];
    u_xlat34 = (x_766 + vec2<f32>(x_768.x, x_768.y));
    let x_771 : vec2<f32> = u_xlat34;
    u_xlat34 = ((x_771 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_780 : vec2<f32> = u_xlat34;
    let x_782 : f32 = x_66.x_GlobalMipBias.x;
    let x_783 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_780, x_782);
    u_xlat7 = x_783;
    let x_785 : f32 = x_735.x_MainLightCookieTextureFormat;
    let x_787 : f32 = x_735.x_MainLightCookieTextureFormat;
    let x_789 : f32 = x_735.x_MainLightCookieTextureFormat;
    let x_791 : f32 = x_735.x_MainLightCookieTextureFormat;
    let x_792 : vec4<f32> = vec4<f32>(x_785, x_787, x_789, x_791);
    let x_800 : vec4<bool> = (vec4<f32>(x_792.x, x_792.y, x_792.z, x_792.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb34 = vec2<bool>(x_800.x, x_800.y);
    let x_803 : bool = u_xlatb34.y;
    if (x_803) {
      let x_808 : f32 = u_xlat7.w;
      x_804 = x_808;
    } else {
      let x_811 : f32 = u_xlat7.x;
      x_804 = x_811;
    }
    let x_812 : f32 = x_804;
    u_xlat48 = x_812;
    let x_814 : bool = u_xlatb34.x;
    if (x_814) {
      let x_818 : vec4<f32> = u_xlat7;
      x_815 = vec3<f32>(x_818.x, x_818.y, x_818.z);
    } else {
      let x_821 : f32 = u_xlat48;
      x_815 = vec3<f32>(x_821, x_821, x_821);
    }
    let x_823 : vec3<f32> = x_815;
    let x_824 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_823.x, x_823.y, x_823.z, x_824.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_830 : vec4<f32> = u_xlat7;
  let x_833 : vec4<f32> = x_66.x_MainLightColor;
  let x_835 : vec3<f32> = (vec3<f32>(x_830.x, x_830.y, x_830.z) * vec3<f32>(x_833.x, x_833.y, x_833.z));
  let x_836 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_835.x, x_835.y, x_835.z, x_836.w);
  let x_838 : f32 = u_xlat33;
  let x_840 : vec4<f32> = u_xlat7;
  let x_842 : vec3<f32> = (vec3<f32>(x_838, x_838, x_838) * vec3<f32>(x_840.x, x_840.y, x_840.z));
  let x_843 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_842.x, x_842.y, x_842.z, x_843.w);
  let x_845 : vec3<f32> = u_xlat17;
  let x_847 : vec4<f32> = u_xlat1;
  u_xlat34.x = dot(-(x_845), vec3<f32>(x_847.x, x_847.z, x_847.w));
  let x_852 : f32 = u_xlat34.x;
  let x_854 : f32 = u_xlat34.x;
  u_xlat34.x = (x_852 + x_854);
  let x_858 : vec4<f32> = u_xlat1;
  let x_860 : vec2<f32> = u_xlat34;
  let x_864 : vec3<f32> = u_xlat17;
  let x_866 : vec3<f32> = ((vec3<f32>(x_858.x, x_858.z, x_858.w) * -(vec3<f32>(x_860.x, x_860.x, x_860.x))) + -(x_864));
  let x_867 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_866.x, x_866.y, x_866.z, x_867.w);
  let x_869 : vec4<f32> = u_xlat1;
  let x_871 : vec3<f32> = u_xlat17;
  u_xlat34.x = dot(vec3<f32>(x_869.x, x_869.z, x_869.w), x_871);
  let x_875 : f32 = u_xlat34.x;
  u_xlat34.x = clamp(x_875, 0.0f, 1.0f);
  let x_879 : f32 = u_xlat34.x;
  u_xlat34.x = (-(x_879) + 1.0f);
  let x_884 : f32 = u_xlat34.x;
  let x_886 : f32 = u_xlat34.x;
  u_xlat34.x = (x_884 * x_886);
  let x_890 : f32 = u_xlat34.x;
  let x_892 : f32 = u_xlat34.x;
  u_xlat34.x = (x_890 * x_892);
  let x_896 : f32 = u_xlat19.x;
  u_xlat48 = ((-(x_896) * 0.699999988f) + 1.700000048f);
  let x_903 : f32 = u_xlat19.x;
  let x_904 : f32 = u_xlat48;
  u_xlat19.x = (x_903 * x_904);
  let x_908 : f32 = u_xlat19.x;
  u_xlat19.x = (x_908 * 6.0f);
  let x_920 : vec4<f32> = u_xlat8;
  let x_923 : f32 = u_xlat19.x;
  let x_924 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_920.x, x_920.y, x_920.z), x_923);
  u_xlat8 = x_924;
  let x_926 : f32 = u_xlat8.w;
  u_xlat19.x = (x_926 + -1.0f);
  let x_930 : f32 = x_344.unity_SpecCube0_HDR.w;
  let x_932 : f32 = u_xlat19.x;
  u_xlat19.x = ((x_930 * x_932) + 1.0f);
  let x_937 : f32 = u_xlat19.x;
  u_xlat19.x = max(x_937, 0.0f);
  let x_941 : f32 = u_xlat19.x;
  u_xlat19.x = log2(x_941);
  let x_945 : f32 = u_xlat19.x;
  let x_947 : f32 = x_344.unity_SpecCube0_HDR.y;
  u_xlat19.x = (x_945 * x_947);
  let x_951 : f32 = u_xlat19.x;
  u_xlat19.x = exp2(x_951);
  let x_955 : f32 = u_xlat19.x;
  let x_957 : f32 = x_344.unity_SpecCube0_HDR.x;
  u_xlat19.x = (x_955 * x_957);
  let x_960 : vec4<f32> = u_xlat8;
  let x_962 : vec3<f32> = u_xlat19;
  let x_964 : vec3<f32> = (vec3<f32>(x_960.x, x_960.y, x_960.z) * vec3<f32>(x_962.x, x_962.x, x_962.x));
  let x_965 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_964.x, x_964.y, x_964.z, x_965.w);
  let x_967 : f32 = u_xlat47;
  let x_969 : f32 = u_xlat47;
  let x_973 : vec2<f32> = ((vec2<f32>(x_967, x_967) * vec2<f32>(x_969, x_969)) + vec2<f32>(-1.0f, 1.0f));
  let x_974 : vec3<f32> = u_xlat19;
  u_xlat19 = vec3<f32>(x_973.x, x_974.y, x_973.y);
  let x_977 : f32 = u_xlat19.z;
  u_xlat47 = (1.0f / x_977);
  let x_980 : f32 = u_xlat3.x;
  u_xlat3.x = (x_980 + -0.039999999f);
  let x_985 : f32 = u_xlat34.x;
  let x_987 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_985 * x_987) + 0.039999999f);
  let x_993 : f32 = u_xlat3.x;
  let x_994 : f32 = u_xlat47;
  u_xlat3.x = (x_993 * x_994);
  let x_997 : vec4<f32> = u_xlat3;
  let x_999 : vec4<f32> = u_xlat8;
  let x_1001 : vec3<f32> = (vec3<f32>(x_997.x, x_997.x, x_997.x) * vec3<f32>(x_999.x, x_999.y, x_999.z));
  let x_1002 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1001.x, x_1001.y, x_1001.z, x_1002.w);
  let x_1004 : vec3<f32> = u_xlat18;
  let x_1005 : vec3<f32> = u_xlat2;
  let x_1007 : vec4<f32> = u_xlat8;
  u_xlat18 = ((x_1004 * x_1005) + vec3<f32>(x_1007.x, x_1007.y, x_1007.z));
  let x_1010 : f32 = u_xlat44;
  let x_1012 : f32 = x_344.unity_LightData.z;
  u_xlat44 = (x_1010 * x_1012);
  let x_1014 : vec4<f32> = u_xlat1;
  let x_1017 : vec4<f32> = x_66.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_1014.x, x_1014.z, x_1014.w), vec3<f32>(x_1017.x, x_1017.y, x_1017.z));
  let x_1022 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1022, 0.0f, 1.0f);
  let x_1025 : f32 = u_xlat44;
  let x_1027 : f32 = u_xlat3.x;
  u_xlat44 = (x_1025 * x_1027);
  let x_1029 : f32 = u_xlat44;
  let x_1031 : vec4<f32> = u_xlat7;
  let x_1033 : vec3<f32> = (vec3<f32>(x_1029, x_1029, x_1029) * vec3<f32>(x_1031.x, x_1031.y, x_1031.z));
  let x_1034 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1033.x, x_1033.y, x_1033.z, x_1034.w);
  let x_1036 : vec3<f32> = u_xlat17;
  let x_1038 : vec4<f32> = x_66.x_MainLightPosition;
  let x_1040 : vec3<f32> = (x_1036 + vec3<f32>(x_1038.x, x_1038.y, x_1038.z));
  let x_1041 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1040.x, x_1040.y, x_1040.z, x_1041.w);
  let x_1043 : vec4<f32> = u_xlat8;
  let x_1045 : vec4<f32> = u_xlat8;
  u_xlat44 = dot(vec3<f32>(x_1043.x, x_1043.y, x_1043.z), vec3<f32>(x_1045.x, x_1045.y, x_1045.z));
  let x_1048 : f32 = u_xlat44;
  u_xlat44 = max(x_1048, 1.17549435e-37f);
  let x_1051 : f32 = u_xlat44;
  u_xlat44 = inverseSqrt(x_1051);
  let x_1053 : f32 = u_xlat44;
  let x_1055 : vec4<f32> = u_xlat8;
  let x_1057 : vec3<f32> = (vec3<f32>(x_1053, x_1053, x_1053) * vec3<f32>(x_1055.x, x_1055.y, x_1055.z));
  let x_1058 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1057.x, x_1057.y, x_1057.z, x_1058.w);
  let x_1060 : vec4<f32> = u_xlat1;
  let x_1062 : vec4<f32> = u_xlat8;
  u_xlat44 = dot(vec3<f32>(x_1060.x, x_1060.z, x_1060.w), vec3<f32>(x_1062.x, x_1062.y, x_1062.z));
  let x_1065 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1065, 0.0f, 1.0f);
  let x_1068 : vec4<f32> = x_66.x_MainLightPosition;
  let x_1070 : vec4<f32> = u_xlat8;
  u_xlat3.x = dot(vec3<f32>(x_1068.x, x_1068.y, x_1068.z), vec3<f32>(x_1070.x, x_1070.y, x_1070.z));
  let x_1075 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1075, 0.0f, 1.0f);
  let x_1078 : f32 = u_xlat44;
  let x_1079 : f32 = u_xlat44;
  u_xlat44 = (x_1078 * x_1079);
  let x_1081 : f32 = u_xlat44;
  let x_1083 : f32 = u_xlat19.x;
  u_xlat44 = ((x_1081 * x_1083) + 1.000010014f);
  let x_1088 : f32 = u_xlat3.x;
  let x_1090 : f32 = u_xlat3.x;
  u_xlat3.x = (x_1088 * x_1090);
  let x_1093 : f32 = u_xlat44;
  let x_1094 : f32 = u_xlat44;
  u_xlat44 = (x_1093 * x_1094);
  let x_1097 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_1097, 0.100000001f);
  let x_1101 : f32 = u_xlat44;
  let x_1103 : f32 = u_xlat3.x;
  u_xlat44 = (x_1101 * x_1103);
  let x_1105 : f32 = u_xlat20;
  let x_1106 : f32 = u_xlat44;
  u_xlat44 = (x_1105 * x_1106);
  let x_1108 : f32 = u_xlat6;
  let x_1109 : f32 = u_xlat44;
  u_xlat44 = (x_1108 / x_1109);
  let x_1111 : f32 = u_xlat44;
  let x_1115 : vec3<f32> = u_xlat2;
  let x_1116 : vec3<f32> = ((vec3<f32>(x_1111, x_1111, x_1111) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1115);
  let x_1117 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1116.x, x_1116.y, x_1116.z, x_1117.w);
  let x_1119 : vec4<f32> = u_xlat7;
  let x_1121 : vec4<f32> = u_xlat8;
  let x_1123 : vec3<f32> = (vec3<f32>(x_1119.x, x_1119.y, x_1119.z) * vec3<f32>(x_1121.x, x_1121.y, x_1121.z));
  let x_1124 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1123.x, x_1123.y, x_1123.z, x_1124.w);
  let x_1128 : f32 = x_66.x_AdditionalLightsCount.x;
  let x_1130 : f32 = x_344.unity_LightData.y;
  u_xlat44 = min(x_1128, x_1130);
  let x_1134 : f32 = u_xlat44;
  u_xlatu44 = bitcast<u32>(i32(x_1134));
  let x_1138 : f32 = x_735.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1140 : f32 = x_735.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1142 : f32 = x_735.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1144 : f32 = x_735.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1145 : vec4<f32> = vec4<f32>(x_1138, x_1140, x_1142, x_1144);
  let x_1151 : vec4<bool> = (vec4<f32>(x_1145.x, x_1145.y, x_1145.z, x_1145.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
  u_xlatb34 = vec2<bool>(x_1151.x, x_1151.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1162 : u32 = u_xlatu_loop_1;
    let x_1163 : u32 = u_xlatu44;
    if ((x_1162 < x_1163)) {
    } else {
      break;
    }
    let x_1166 : u32 = u_xlatu_loop_1;
    u_xlatu47 = (x_1166 >> 2u);
    let x_1170 : u32 = u_xlatu_loop_1;
    u_xlati49 = bitcast<i32>((x_1170 & 3u));
    let x_1173 : u32 = u_xlatu47;
    let x_1176 : vec4<f32> = x_344.unity_LightIndices[bitcast<i32>(x_1173)];
    let x_1186 : i32 = u_xlati49;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1191 : vec4<u32> = indexable[x_1186];
    u_xlat47 = dot(x_1176, bitcast<vec4<f32>>(x_1191));
    let x_1194 : f32 = u_xlat47;
    u_xlatu47 = bitcast<u32>(i32(x_1194));
    let x_1198 : vec3<f32> = vs_INTERP0;
    let x_1210 : u32 = u_xlatu47;
    let x_1213 : vec4<f32> = x_1209.x_AdditionalLightsPosition[bitcast<i32>(x_1210)];
    let x_1216 : u32 = u_xlatu47;
    let x_1219 : vec4<f32> = x_1209.x_AdditionalLightsPosition[bitcast<i32>(x_1216)];
    u_xlat9 = ((-(x_1198) * vec3<f32>(x_1213.w, x_1213.w, x_1213.w)) + vec3<f32>(x_1219.x, x_1219.y, x_1219.z));
    let x_1223 : vec3<f32> = u_xlat9;
    let x_1224 : vec3<f32> = u_xlat9;
    u_xlat49 = dot(x_1223, x_1224);
    let x_1226 : f32 = u_xlat49;
    u_xlat49 = max(x_1226, 6.10351562e-05f);
    let x_1230 : f32 = u_xlat49;
    u_xlat50 = inverseSqrt(x_1230);
    let x_1233 : f32 = u_xlat50;
    let x_1235 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1233, x_1233, x_1233) * x_1235);
    let x_1238 : f32 = u_xlat49;
    u_xlat51 = (1.0f / x_1238);
    let x_1240 : f32 = u_xlat49;
    let x_1241 : u32 = u_xlatu47;
    let x_1244 : f32 = x_1209.x_AdditionalLightsAttenuation[bitcast<i32>(x_1241)].x;
    u_xlat49 = (x_1240 * x_1244);
    let x_1246 : f32 = u_xlat49;
    let x_1248 : f32 = u_xlat49;
    u_xlat49 = ((-(x_1246) * x_1248) + 1.0f);
    let x_1251 : f32 = u_xlat49;
    u_xlat49 = max(x_1251, 0.0f);
    let x_1253 : f32 = u_xlat49;
    let x_1254 : f32 = u_xlat49;
    u_xlat49 = (x_1253 * x_1254);
    let x_1256 : f32 = u_xlat49;
    let x_1257 : f32 = u_xlat51;
    u_xlat49 = (x_1256 * x_1257);
    let x_1259 : u32 = u_xlatu47;
    let x_1262 : vec4<f32> = x_1209.x_AdditionalLightsSpotDir[bitcast<i32>(x_1259)];
    let x_1264 : vec3<f32> = u_xlat10;
    u_xlat51 = dot(vec3<f32>(x_1262.x, x_1262.y, x_1262.z), x_1264);
    let x_1266 : f32 = u_xlat51;
    let x_1267 : u32 = u_xlatu47;
    let x_1270 : f32 = x_1209.x_AdditionalLightsAttenuation[bitcast<i32>(x_1267)].z;
    let x_1272 : u32 = u_xlatu47;
    let x_1275 : f32 = x_1209.x_AdditionalLightsAttenuation[bitcast<i32>(x_1272)].w;
    u_xlat51 = ((x_1266 * x_1270) + x_1275);
    let x_1277 : f32 = u_xlat51;
    u_xlat51 = clamp(x_1277, 0.0f, 1.0f);
    let x_1279 : f32 = u_xlat51;
    let x_1280 : f32 = u_xlat51;
    u_xlat51 = (x_1279 * x_1280);
    let x_1282 : f32 = u_xlat49;
    let x_1283 : f32 = u_xlat51;
    u_xlat49 = (x_1282 * x_1283);
    let x_1286 : u32 = u_xlatu47;
    u_xlatu51 = (x_1286 >> 5u);
    let x_1289 : u32 = u_xlatu47;
    u_xlati52 = (1i << bitcast<u32>((bitcast<i32>(x_1289) & 31i)));
    let x_1295 : i32 = u_xlati52;
    let x_1297 : u32 = u_xlatu51;
    let x_1300 : f32 = x_735.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1297)].el;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_1295) & bitcast<u32>(x_1300)));
    let x_1304 : i32 = u_xlati51;
    if ((x_1304 != 0i)) {
      let x_1314 : u32 = u_xlatu47;
      let x_1317 : f32 = x_1313.x_AdditionalLightsLightTypes[bitcast<i32>(x_1314)].el;
      u_xlati51 = i32(x_1317);
      let x_1319 : i32 = u_xlati51;
      u_xlati52 = select(1i, 0i, (x_1319 != 0i));
      let x_1323 : u32 = u_xlatu47;
      u_xlati11 = (bitcast<i32>(x_1323) << bitcast<u32>(2i));
      let x_1326 : i32 = u_xlati52;
      if ((x_1326 != 0i)) {
        let x_1331 : vec3<f32> = vs_INTERP0;
        let x_1333 : i32 = u_xlati11;
        let x_1336 : i32 = u_xlati11;
        let x_1340 : vec4<f32> = x_1313.x_AdditionalLightsWorldToLights[((x_1333 + 1i) / 4i)][((x_1336 + 1i) % 4i)];
        u_xlat25 = (vec3<f32>(x_1331.y, x_1331.y, x_1331.y) * vec3<f32>(x_1340.x, x_1340.y, x_1340.w));
        let x_1343 : i32 = u_xlati11;
        let x_1345 : i32 = u_xlati11;
        let x_1348 : vec4<f32> = x_1313.x_AdditionalLightsWorldToLights[(x_1343 / 4i)][(x_1345 % 4i)];
        let x_1350 : vec3<f32> = vs_INTERP0;
        let x_1353 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1348.x, x_1348.y, x_1348.w) * vec3<f32>(x_1350.x, x_1350.x, x_1350.x)) + x_1353);
        let x_1355 : i32 = u_xlati11;
        let x_1358 : i32 = u_xlati11;
        let x_1362 : vec4<f32> = x_1313.x_AdditionalLightsWorldToLights[((x_1355 + 2i) / 4i)][((x_1358 + 2i) % 4i)];
        let x_1364 : vec3<f32> = vs_INTERP0;
        let x_1367 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1362.x, x_1362.y, x_1362.w) * vec3<f32>(x_1364.z, x_1364.z, x_1364.z)) + x_1367);
        let x_1369 : vec3<f32> = u_xlat25;
        let x_1370 : i32 = u_xlati11;
        let x_1373 : i32 = u_xlati11;
        let x_1377 : vec4<f32> = x_1313.x_AdditionalLightsWorldToLights[((x_1370 + 3i) / 4i)][((x_1373 + 3i) % 4i)];
        u_xlat25 = (x_1369 + vec3<f32>(x_1377.x, x_1377.y, x_1377.w));
        let x_1380 : vec3<f32> = u_xlat25;
        let x_1382 : vec3<f32> = u_xlat25;
        let x_1384 : vec2<f32> = (vec2<f32>(x_1380.x, x_1380.y) / vec2<f32>(x_1382.z, x_1382.z));
        let x_1385 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1384.x, x_1384.y, x_1385.z);
        let x_1387 : vec3<f32> = u_xlat25;
        let x_1390 : vec2<f32> = ((vec2<f32>(x_1387.x, x_1387.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1391 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1390.x, x_1390.y, x_1391.z);
        let x_1393 : vec3<f32> = u_xlat25;
        let x_1397 : vec2<f32> = clamp(vec2<f32>(x_1393.x, x_1393.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1398 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1397.x, x_1397.y, x_1398.z);
        let x_1400 : u32 = u_xlatu47;
        let x_1403 : vec4<f32> = x_1313.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1400)];
        let x_1405 : vec3<f32> = u_xlat25;
        let x_1408 : u32 = u_xlatu47;
        let x_1411 : vec4<f32> = x_1313.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1408)];
        let x_1413 : vec2<f32> = ((vec2<f32>(x_1403.x, x_1403.y) * vec2<f32>(x_1405.x, x_1405.y)) + vec2<f32>(x_1411.z, x_1411.w));
        let x_1414 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1413.x, x_1413.y, x_1414.z);
      } else {
        let x_1418 : i32 = u_xlati51;
        u_xlatb51 = (x_1418 == 1i);
        let x_1420 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_1420);
        let x_1422 : i32 = u_xlati51;
        if ((x_1422 != 0i)) {
          let x_1427 : vec3<f32> = vs_INTERP0;
          let x_1429 : i32 = u_xlati11;
          let x_1432 : i32 = u_xlati11;
          let x_1436 : vec4<f32> = x_1313.x_AdditionalLightsWorldToLights[((x_1429 + 1i) / 4i)][((x_1432 + 1i) % 4i)];
          let x_1438 : vec2<f32> = (vec2<f32>(x_1427.y, x_1427.y) * vec2<f32>(x_1436.x, x_1436.y));
          let x_1439 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1438.x, x_1438.y, x_1439.z, x_1439.w);
          let x_1441 : i32 = u_xlati11;
          let x_1443 : i32 = u_xlati11;
          let x_1446 : vec4<f32> = x_1313.x_AdditionalLightsWorldToLights[(x_1441 / 4i)][(x_1443 % 4i)];
          let x_1448 : vec3<f32> = vs_INTERP0;
          let x_1451 : vec4<f32> = u_xlat12;
          let x_1453 : vec2<f32> = ((vec2<f32>(x_1446.x, x_1446.y) * vec2<f32>(x_1448.x, x_1448.x)) + vec2<f32>(x_1451.x, x_1451.y));
          let x_1454 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1453.x, x_1453.y, x_1454.z, x_1454.w);
          let x_1456 : i32 = u_xlati11;
          let x_1459 : i32 = u_xlati11;
          let x_1463 : vec4<f32> = x_1313.x_AdditionalLightsWorldToLights[((x_1456 + 2i) / 4i)][((x_1459 + 2i) % 4i)];
          let x_1465 : vec3<f32> = vs_INTERP0;
          let x_1468 : vec4<f32> = u_xlat12;
          let x_1470 : vec2<f32> = ((vec2<f32>(x_1463.x, x_1463.y) * vec2<f32>(x_1465.z, x_1465.z)) + vec2<f32>(x_1468.x, x_1468.y));
          let x_1471 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1470.x, x_1470.y, x_1471.z, x_1471.w);
          let x_1473 : vec4<f32> = u_xlat12;
          let x_1475 : i32 = u_xlati11;
          let x_1478 : i32 = u_xlati11;
          let x_1482 : vec4<f32> = x_1313.x_AdditionalLightsWorldToLights[((x_1475 + 3i) / 4i)][((x_1478 + 3i) % 4i)];
          let x_1484 : vec2<f32> = (vec2<f32>(x_1473.x, x_1473.y) + vec2<f32>(x_1482.x, x_1482.y));
          let x_1485 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1484.x, x_1484.y, x_1485.z, x_1485.w);
          let x_1487 : vec4<f32> = u_xlat12;
          let x_1490 : vec2<f32> = ((vec2<f32>(x_1487.x, x_1487.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1491 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1490.x, x_1490.y, x_1491.z, x_1491.w);
          let x_1493 : vec4<f32> = u_xlat12;
          let x_1495 : vec2<f32> = fract(vec2<f32>(x_1493.x, x_1493.y));
          let x_1496 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1495.x, x_1495.y, x_1496.z, x_1496.w);
          let x_1498 : u32 = u_xlatu47;
          let x_1501 : vec4<f32> = x_1313.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1498)];
          let x_1503 : vec4<f32> = u_xlat12;
          let x_1506 : u32 = u_xlatu47;
          let x_1509 : vec4<f32> = x_1313.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1506)];
          let x_1511 : vec2<f32> = ((vec2<f32>(x_1501.x, x_1501.y) * vec2<f32>(x_1503.x, x_1503.y)) + vec2<f32>(x_1509.z, x_1509.w));
          let x_1512 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1511.x, x_1511.y, x_1512.z);
        } else {
          let x_1515 : vec3<f32> = vs_INTERP0;
          let x_1517 : i32 = u_xlati11;
          let x_1520 : i32 = u_xlati11;
          let x_1524 : vec4<f32> = x_1313.x_AdditionalLightsWorldToLights[((x_1517 + 1i) / 4i)][((x_1520 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1515.y, x_1515.y, x_1515.y, x_1515.y) * x_1524);
          let x_1526 : i32 = u_xlati11;
          let x_1528 : i32 = u_xlati11;
          let x_1531 : vec4<f32> = x_1313.x_AdditionalLightsWorldToLights[(x_1526 / 4i)][(x_1528 % 4i)];
          let x_1532 : vec3<f32> = vs_INTERP0;
          let x_1535 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1531 * vec4<f32>(x_1532.x, x_1532.x, x_1532.x, x_1532.x)) + x_1535);
          let x_1537 : i32 = u_xlati11;
          let x_1540 : i32 = u_xlati11;
          let x_1544 : vec4<f32> = x_1313.x_AdditionalLightsWorldToLights[((x_1537 + 2i) / 4i)][((x_1540 + 2i) % 4i)];
          let x_1545 : vec3<f32> = vs_INTERP0;
          let x_1548 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1544 * vec4<f32>(x_1545.z, x_1545.z, x_1545.z, x_1545.z)) + x_1548);
          let x_1550 : vec4<f32> = u_xlat12;
          let x_1551 : i32 = u_xlati11;
          let x_1554 : i32 = u_xlati11;
          let x_1558 : vec4<f32> = x_1313.x_AdditionalLightsWorldToLights[((x_1551 + 3i) / 4i)][((x_1554 + 3i) % 4i)];
          u_xlat12 = (x_1550 + x_1558);
          let x_1560 : vec4<f32> = u_xlat12;
          let x_1562 : vec4<f32> = u_xlat12;
          let x_1564 : vec3<f32> = (vec3<f32>(x_1560.x, x_1560.y, x_1560.z) / vec3<f32>(x_1562.w, x_1562.w, x_1562.w));
          let x_1565 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1564.x, x_1564.y, x_1564.z, x_1565.w);
          let x_1567 : vec4<f32> = u_xlat12;
          let x_1569 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(vec3<f32>(x_1567.x, x_1567.y, x_1567.z), vec3<f32>(x_1569.x, x_1569.y, x_1569.z));
          let x_1572 : f32 = u_xlat51;
          u_xlat51 = inverseSqrt(x_1572);
          let x_1574 : f32 = u_xlat51;
          let x_1576 : vec4<f32> = u_xlat12;
          let x_1578 : vec3<f32> = (vec3<f32>(x_1574, x_1574, x_1574) * vec3<f32>(x_1576.x, x_1576.y, x_1576.z));
          let x_1579 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1578.x, x_1578.y, x_1578.z, x_1579.w);
          let x_1581 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(abs(vec3<f32>(x_1581.x, x_1581.y, x_1581.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1586 : f32 = u_xlat51;
          u_xlat51 = max(x_1586, 0.000001f);
          let x_1589 : f32 = u_xlat51;
          u_xlat51 = (1.0f / x_1589);
          let x_1592 : f32 = u_xlat51;
          let x_1594 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1592, x_1592, x_1592) * vec3<f32>(x_1594.z, x_1594.x, x_1594.y));
          let x_1598 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1598);
          let x_1602 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1602, 0.0f, 1.0f);
          let x_1607 : vec3<f32> = u_xlat13;
          let x_1610 : vec4<bool> = (vec4<f32>(x_1607.y, x_1607.y, x_1607.y, x_1607.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1611 : vec2<bool> = vec2<bool>(x_1610.x, x_1610.w);
          let x_1612 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_1611.x, x_1612.y, x_1612.z, x_1611.y);
          let x_1616 : bool = u_xlatb11.x;
          if (x_1616) {
            let x_1621 : f32 = u_xlat13.x;
            x_1617 = x_1621;
          } else {
            let x_1624 : f32 = u_xlat13.x;
            x_1617 = -(x_1624);
          }
          let x_1626 : f32 = x_1617;
          u_xlat11.x = x_1626;
          let x_1629 : bool = u_xlatb11.w;
          if (x_1629) {
            let x_1634 : f32 = u_xlat13.x;
            x_1630 = x_1634;
          } else {
            let x_1637 : f32 = u_xlat13.x;
            x_1630 = -(x_1637);
          }
          let x_1639 : f32 = x_1630;
          u_xlat11.w = x_1639;
          let x_1641 : vec4<f32> = u_xlat12;
          let x_1643 : f32 = u_xlat51;
          let x_1646 : vec4<f32> = u_xlat11;
          let x_1648 : vec2<f32> = ((vec2<f32>(x_1641.x, x_1641.y) * vec2<f32>(x_1643, x_1643)) + vec2<f32>(x_1646.x, x_1646.w));
          let x_1649 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1648.x, x_1649.y, x_1649.z, x_1648.y);
          let x_1651 : vec4<f32> = u_xlat11;
          let x_1654 : vec2<f32> = ((vec2<f32>(x_1651.x, x_1651.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1655 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1654.x, x_1655.y, x_1655.z, x_1654.y);
          let x_1657 : vec4<f32> = u_xlat11;
          let x_1661 : vec2<f32> = clamp(vec2<f32>(x_1657.x, x_1657.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1662 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1661.x, x_1662.y, x_1662.z, x_1661.y);
          let x_1664 : u32 = u_xlatu47;
          let x_1667 : vec4<f32> = x_1313.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1664)];
          let x_1669 : vec4<f32> = u_xlat11;
          let x_1672 : u32 = u_xlatu47;
          let x_1675 : vec4<f32> = x_1313.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1672)];
          let x_1677 : vec2<f32> = ((vec2<f32>(x_1667.x, x_1667.y) * vec2<f32>(x_1669.x, x_1669.w)) + vec2<f32>(x_1675.z, x_1675.w));
          let x_1678 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1677.x, x_1677.y, x_1678.z);
        }
      }
      let x_1685 : vec3<f32> = u_xlat25;
      let x_1688 : f32 = x_66.x_GlobalMipBias.x;
      let x_1689 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1685.x, x_1685.y), x_1688);
      u_xlat11 = x_1689;
      let x_1691 : bool = u_xlatb34.y;
      if (x_1691) {
        let x_1696 : f32 = u_xlat11.w;
        x_1692 = x_1696;
      } else {
        let x_1699 : f32 = u_xlat11.x;
        x_1692 = x_1699;
      }
      let x_1700 : f32 = x_1692;
      u_xlat51 = x_1700;
      let x_1702 : bool = u_xlatb34.x;
      if (x_1702) {
        let x_1706 : vec4<f32> = u_xlat11;
        x_1703 = vec3<f32>(x_1706.x, x_1706.y, x_1706.z);
      } else {
        let x_1709 : f32 = u_xlat51;
        x_1703 = vec3<f32>(x_1709, x_1709, x_1709);
      }
      let x_1711 : vec3<f32> = x_1703;
      let x_1712 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1711.x, x_1711.y, x_1711.z, x_1712.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1718 : vec4<f32> = u_xlat11;
    let x_1720 : u32 = u_xlatu47;
    let x_1723 : vec4<f32> = x_1209.x_AdditionalLightsColor[bitcast<i32>(x_1720)];
    let x_1725 : vec3<f32> = (vec3<f32>(x_1718.x, x_1718.y, x_1718.z) * vec3<f32>(x_1723.x, x_1723.y, x_1723.z));
    let x_1726 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1725.x, x_1725.y, x_1725.z, x_1726.w);
    let x_1728 : f32 = u_xlat33;
    let x_1730 : vec4<f32> = u_xlat11;
    let x_1732 : vec3<f32> = (vec3<f32>(x_1728, x_1728, x_1728) * vec3<f32>(x_1730.x, x_1730.y, x_1730.z));
    let x_1733 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1732.x, x_1732.y, x_1732.z, x_1733.w);
    let x_1735 : vec4<f32> = u_xlat1;
    let x_1737 : vec3<f32> = u_xlat10;
    u_xlat47 = dot(vec3<f32>(x_1735.x, x_1735.z, x_1735.w), x_1737);
    let x_1739 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1739, 0.0f, 1.0f);
    let x_1741 : f32 = u_xlat47;
    let x_1742 : f32 = u_xlat49;
    u_xlat47 = (x_1741 * x_1742);
    let x_1744 : f32 = u_xlat47;
    let x_1746 : vec4<f32> = u_xlat11;
    let x_1748 : vec3<f32> = (vec3<f32>(x_1744, x_1744, x_1744) * vec3<f32>(x_1746.x, x_1746.y, x_1746.z));
    let x_1749 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1748.x, x_1748.y, x_1748.z, x_1749.w);
    let x_1751 : vec3<f32> = u_xlat9;
    let x_1752 : f32 = u_xlat50;
    let x_1755 : vec3<f32> = u_xlat17;
    u_xlat9 = ((x_1751 * vec3<f32>(x_1752, x_1752, x_1752)) + x_1755);
    let x_1757 : vec3<f32> = u_xlat9;
    let x_1758 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1757, x_1758);
    let x_1760 : f32 = u_xlat47;
    u_xlat47 = max(x_1760, 1.17549435e-37f);
    let x_1762 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_1762);
    let x_1764 : f32 = u_xlat47;
    let x_1766 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1764, x_1764, x_1764) * x_1766);
    let x_1768 : vec4<f32> = u_xlat1;
    let x_1770 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_1768.x, x_1768.z, x_1768.w), x_1770);
    let x_1772 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1772, 0.0f, 1.0f);
    let x_1774 : vec3<f32> = u_xlat10;
    let x_1775 : vec3<f32> = u_xlat9;
    u_xlat49 = dot(x_1774, x_1775);
    let x_1777 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1777, 0.0f, 1.0f);
    let x_1779 : f32 = u_xlat47;
    let x_1780 : f32 = u_xlat47;
    u_xlat47 = (x_1779 * x_1780);
    let x_1782 : f32 = u_xlat47;
    let x_1784 : f32 = u_xlat19.x;
    u_xlat47 = ((x_1782 * x_1784) + 1.000010014f);
    let x_1787 : f32 = u_xlat49;
    let x_1788 : f32 = u_xlat49;
    u_xlat49 = (x_1787 * x_1788);
    let x_1790 : f32 = u_xlat47;
    let x_1791 : f32 = u_xlat47;
    u_xlat47 = (x_1790 * x_1791);
    let x_1793 : f32 = u_xlat49;
    u_xlat49 = max(x_1793, 0.100000001f);
    let x_1795 : f32 = u_xlat47;
    let x_1796 : f32 = u_xlat49;
    u_xlat47 = (x_1795 * x_1796);
    let x_1798 : f32 = u_xlat20;
    let x_1799 : f32 = u_xlat47;
    u_xlat47 = (x_1798 * x_1799);
    let x_1801 : f32 = u_xlat6;
    let x_1802 : f32 = u_xlat47;
    u_xlat47 = (x_1801 / x_1802);
    let x_1804 : f32 = u_xlat47;
    let x_1807 : vec3<f32> = u_xlat2;
    u_xlat9 = ((vec3<f32>(x_1804, x_1804, x_1804) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1807);
    let x_1809 : vec3<f32> = u_xlat9;
    let x_1810 : vec4<f32> = u_xlat11;
    let x_1813 : vec4<f32> = u_xlat8;
    let x_1815 : vec3<f32> = ((x_1809 * vec3<f32>(x_1810.x, x_1810.y, x_1810.z)) + vec3<f32>(x_1813.x, x_1813.y, x_1813.z));
    let x_1816 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1815.x, x_1815.y, x_1815.z, x_1816.w);

    continuing {
      let x_1818 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1818 + bitcast<u32>(1i));
    }
  }
  let x_1820 : vec3<f32> = u_xlat18;
  let x_1821 : vec3<f32> = u_xlat5;
  let x_1824 : vec4<f32> = u_xlat7;
  let x_1826 : vec3<f32> = ((x_1820 * vec3<f32>(x_1821.x, x_1821.x, x_1821.x)) + vec3<f32>(x_1824.x, x_1824.y, x_1824.z));
  let x_1827 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1826.x, x_1827.y, x_1826.y, x_1826.z);
  let x_1829 : vec4<f32> = u_xlat8;
  let x_1831 : vec4<f32> = u_xlat1;
  let x_1833 : vec3<f32> = (vec3<f32>(x_1829.x, x_1829.y, x_1829.z) + vec3<f32>(x_1831.x, x_1831.z, x_1831.w));
  let x_1834 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1833.x, x_1834.y, x_1833.y, x_1833.z);
  let x_1836 : vec4<f32> = vs_INTERP4;
  let x_1838 : vec3<f32> = u_xlat0;
  let x_1840 : vec4<f32> = u_xlat1;
  u_xlat0 = ((vec3<f32>(x_1836.w, x_1836.w, x_1836.w) * x_1838) + vec3<f32>(x_1840.x, x_1840.z, x_1840.w));
  let x_1844 : f32 = u_xlat4.x;
  let x_1846 : f32 = u_xlat4.x;
  u_xlat1.x = (x_1844 * -(x_1846));
  let x_1851 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1851);
  let x_1854 : vec3<f32> = u_xlat0;
  let x_1857 : vec4<f32> = x_66.unity_FogColor;
  u_xlat0 = (x_1854 + -(vec3<f32>(x_1857.x, x_1857.y, x_1857.z)));
  let x_1863 : vec4<f32> = u_xlat1;
  let x_1865 : vec3<f32> = u_xlat0;
  let x_1868 : vec4<f32> = x_66.unity_FogColor;
  let x_1870 : vec3<f32> = ((vec3<f32>(x_1863.x, x_1863.x, x_1863.x) * x_1865) + vec3<f32>(x_1868.x, x_1868.y, x_1868.z));
  let x_1871 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1870.x, x_1870.y, x_1870.z, x_1871.w);
  let x_1873 : bool = u_xlatb15;
  let x_1874 : f32 = u_xlat42;
  SV_Target0.w = select(1.0f, x_1874, x_1873);
  let x_1882 : u32 = x_66.x_RenderingLayerMaxInt;
  let x_1884 : f32 = x_344.unity_RenderingLayer.x;
  u_xlatu0 = (x_1882 & bitcast<u32>(x_1884));
  let x_1887 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_1887);
  let x_1892 : f32 = u_xlat0.x;
  let x_1894 : f32 = x_66.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_1892 * x_1894);
  let x_1898 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_1898, 0.0f, 1.0f);
  let x_1902 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_1902.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
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

