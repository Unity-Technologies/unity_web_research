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

@group(0) @binding(7) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(15) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_66 : PGlobals;

@group(1) @binding(6) var<uniform> x_78 : UnityPerMaterial;

@group(0) @binding(8) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(16) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> vs_INTERP4 : vec4<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_139 : MainLightShadows;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> vs_INTERP2 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_344 : UnityPerDraw;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP5 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_INTERP9 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_773 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1247 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1351 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var u_xlat5 : vec4<f32>;
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
  var x_842 : f32;
  var x_853 : vec3<f32>;
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
  var x_1655 : f32;
  var x_1668 : f32;
  var x_1730 : f32;
  var x_1741 : vec3<f32>;
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
    let x_478 : vec4<f32> = u_xlat5;
    x_472 = vec3<f32>(x_478.x, x_478.y, x_478.z);
  }
  let x_480 : vec3<f32> = x_472;
  u_xlat17 = x_480;
  let x_482 : f32 = vs_INTERP0.y;
  let x_484 : f32 = x_66.unity_MatrixV[1i].z;
  u_xlat4.x = (x_482 * x_484);
  let x_488 : f32 = x_66.unity_MatrixV[0i].z;
  let x_490 : f32 = vs_INTERP0.x;
  let x_493 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_488 * x_490) + x_493);
  let x_497 : f32 = x_66.unity_MatrixV[2i].z;
  let x_499 : f32 = vs_INTERP0.z;
  let x_502 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_497 * x_499) + x_502);
  let x_506 : f32 = u_xlat4.x;
  let x_508 : f32 = x_66.unity_MatrixV[3i].z;
  u_xlat4.x = (x_506 + x_508);
  let x_512 : f32 = u_xlat4.x;
  let x_516 : f32 = x_66.x_ProjectionParams.y;
  u_xlat4.x = (-(x_512) + -(x_516));
  let x_521 : f32 = u_xlat4.x;
  u_xlat4.x = max(x_521, 0.0f);
  let x_525 : f32 = u_xlat4.x;
  let x_528 : f32 = x_66.unity_FogParams.x;
  u_xlat4.x = (x_525 * x_528);
  let x_538 : vec2<f32> = vs_INTERP5;
  let x_540 : f32 = x_66.x_GlobalMipBias.x;
  let x_541 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_538, x_540);
  u_xlat5 = x_541;
  let x_547 : vec2<f32> = vs_INTERP5;
  let x_549 : f32 = x_66.x_GlobalMipBias.x;
  let x_550 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_547, x_549);
  u_xlat18 = vec3<f32>(x_550.x, x_550.y, x_550.z);
  let x_552 : vec4<f32> = u_xlat5;
  let x_556 : vec3<f32> = (vec3<f32>(x_552.x, x_552.y, x_552.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_557 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_556.x, x_556.y, x_556.z, x_557.w);
  let x_559 : vec4<f32> = u_xlat1;
  let x_561 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_559.x, x_559.z, x_559.w), vec3<f32>(x_561.x, x_561.y, x_561.z));
  let x_566 : f32 = u_xlat5.x;
  u_xlat5.x = (x_566 + 0.5f);
  let x_569 : vec3<f32> = u_xlat18;
  let x_570 : vec4<f32> = u_xlat5;
  u_xlat18 = (x_569 * vec3<f32>(x_570.x, x_570.x, x_570.x));
  let x_574 : f32 = u_xlat5.w;
  u_xlat5.x = max(x_574, 0.0001f);
  let x_577 : vec3<f32> = u_xlat18;
  let x_578 : vec4<f32> = u_xlat5;
  u_xlat18 = (x_577 / vec3<f32>(x_578.x, x_578.x, x_578.x));
  let x_583 : vec4<f32> = x_66.x_ScaledScreenParams;
  let x_584 : vec2<f32> = vec2<f32>(x_583.x, x_583.y);
  let x_588 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_584.x, x_584.y));
  let x_589 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_588.x, x_588.y, x_589.z, x_589.w);
  let x_591 : vec4<f32> = u_xlat5;
  let x_593 : vec4<f32> = hlslcc_FragCoord;
  let x_595 : vec2<f32> = (vec2<f32>(x_591.x, x_591.y) * vec2<f32>(x_593.x, x_593.y));
  let x_596 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_595.x, x_595.y, x_596.z, x_596.w);
  let x_600 : f32 = u_xlat5.y;
  let x_603 : f32 = x_66.x_ScaleBiasRt.x;
  let x_606 : f32 = x_66.x_ScaleBiasRt.y;
  u_xlat19.x = ((x_600 * x_603) + x_606);
  let x_610 : f32 = u_xlat19.x;
  u_xlat5.z = (-(x_610) + 1.0f);
  let x_615 : f32 = u_xlat3.x;
  u_xlat3.x = x_615;
  let x_618 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_618, 0.0f, 1.0f);
  let x_621 : f32 = u_xlat42;
  u_xlat42 = min(x_621, 1.0f);
  let x_623 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_623 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_628 : f32 = u_xlat3.x;
  u_xlat19.x = (-(x_628) + 1.0f);
  let x_634 : f32 = u_xlat19.x;
  let x_636 : f32 = u_xlat19.x;
  u_xlat47 = (x_634 * x_636);
  let x_638 : f32 = u_xlat47;
  u_xlat47 = max(x_638, 0.0078125f);
  let x_642 : f32 = u_xlat47;
  let x_643 : f32 = u_xlat47;
  u_xlat6 = (x_642 * x_643);
  let x_646 : f32 = u_xlat3.x;
  u_xlat3.x = (x_646 + 0.040000021f);
  let x_651 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_651, 1.0f);
  let x_655 : f32 = u_xlat47;
  u_xlat20 = ((x_655 * 4.0f) + 2.0f);
  let x_664 : vec4<f32> = u_xlat5;
  let x_667 : f32 = x_66.x_GlobalMipBias.x;
  let x_668 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_664.x, x_664.z), x_667);
  u_xlat5.x = x_668.x;
  let x_673 : f32 = u_xlat5.x;
  u_xlat33 = (x_673 + -1.0f);
  let x_677 : f32 = x_66.x_AmbientOcclusionParam.w;
  let x_678 : f32 = u_xlat33;
  u_xlat33 = ((x_677 * x_678) + 1.0f);
  let x_682 : f32 = u_xlat5.x;
  let x_684 : f32 = vs_INTERP4.w;
  u_xlat5.x = min(x_682, x_684);
  let x_689 : vec4<f32> = vs_INTERP9;
  let x_690 : vec2<f32> = vec2<f32>(x_689.x, x_689.y);
  let x_692 : f32 = vs_INTERP9.z;
  txVec1 = vec3<f32>(x_690.x, x_690.y, x_692);
  let x_701 : vec3<f32> = txVec1;
  let x_703 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_701.xy, x_701.z);
  u_xlat34.x = x_703;
  let x_706 : f32 = u_xlat34.x;
  let x_708 : f32 = x_139.x_MainLightShadowParams.x;
  let x_710 : f32 = u_xlat44;
  u_xlat44 = ((x_706 * x_708) + x_710);
  let x_716 : f32 = vs_INTERP9.z;
  u_xlatb34.x = (0.0f >= x_716);
  let x_721 : f32 = vs_INTERP9.z;
  u_xlatb48 = (x_721 >= 1.0f);
  let x_723 : bool = u_xlatb48;
  let x_725 : bool = u_xlatb34.x;
  u_xlatb34.x = (x_723 | x_725);
  let x_729 : bool = u_xlatb34.x;
  let x_730 : f32 = u_xlat44;
  u_xlat44 = select(x_730, 1.0f, x_729);
  let x_733 : vec3<f32> = vs_INTERP0;
  let x_735 : vec3<f32> = x_66.x_WorldSpaceCameraPos;
  let x_737 : vec3<f32> = (x_733 + -(x_735));
  let x_738 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_737.x, x_737.y, x_737.z, x_738.w);
  let x_740 : vec4<f32> = u_xlat7;
  let x_742 : vec4<f32> = u_xlat7;
  u_xlat34.x = dot(vec3<f32>(x_740.x, x_740.y, x_740.z), vec3<f32>(x_742.x, x_742.y, x_742.z));
  let x_747 : f32 = u_xlat34.x;
  let x_749 : f32 = x_139.x_MainLightShadowParams.z;
  let x_752 : f32 = x_139.x_MainLightShadowParams.w;
  u_xlat34.x = ((x_747 * x_749) + x_752);
  let x_756 : f32 = u_xlat34.x;
  u_xlat34.x = clamp(x_756, 0.0f, 1.0f);
  let x_760 : f32 = u_xlat44;
  u_xlat48 = (-(x_760) + 1.0f);
  let x_764 : f32 = u_xlat34.x;
  let x_765 : f32 = u_xlat48;
  let x_767 : f32 = u_xlat44;
  u_xlat44 = ((x_764 * x_765) + x_767);
  let x_775 : f32 = x_773.x_MainLightCookieTextureFormat;
  u_xlatb34.x = !((x_775 == -1.0f));
  let x_779 : bool = u_xlatb34.x;
  if (x_779) {
    let x_782 : vec3<f32> = vs_INTERP0;
    let x_785 : vec4<f32> = x_773.x_MainLightWorldToLight[1i];
    u_xlat34 = (vec2<f32>(x_782.y, x_782.y) * vec2<f32>(x_785.x, x_785.y));
    let x_789 : vec4<f32> = x_773.x_MainLightWorldToLight[0i];
    let x_791 : vec3<f32> = vs_INTERP0;
    let x_794 : vec2<f32> = u_xlat34;
    u_xlat34 = ((vec2<f32>(x_789.x, x_789.y) * vec2<f32>(x_791.x, x_791.x)) + x_794);
    let x_797 : vec4<f32> = x_773.x_MainLightWorldToLight[2i];
    let x_799 : vec3<f32> = vs_INTERP0;
    let x_802 : vec2<f32> = u_xlat34;
    u_xlat34 = ((vec2<f32>(x_797.x, x_797.y) * vec2<f32>(x_799.z, x_799.z)) + x_802);
    let x_804 : vec2<f32> = u_xlat34;
    let x_806 : vec4<f32> = x_773.x_MainLightWorldToLight[3i];
    u_xlat34 = (x_804 + vec2<f32>(x_806.x, x_806.y));
    let x_809 : vec2<f32> = u_xlat34;
    u_xlat34 = ((x_809 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_818 : vec2<f32> = u_xlat34;
    let x_820 : f32 = x_66.x_GlobalMipBias.x;
    let x_821 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_818, x_820);
    u_xlat7 = x_821;
    let x_823 : f32 = x_773.x_MainLightCookieTextureFormat;
    let x_825 : f32 = x_773.x_MainLightCookieTextureFormat;
    let x_827 : f32 = x_773.x_MainLightCookieTextureFormat;
    let x_829 : f32 = x_773.x_MainLightCookieTextureFormat;
    let x_830 : vec4<f32> = vec4<f32>(x_823, x_825, x_827, x_829);
    let x_838 : vec4<bool> = (vec4<f32>(x_830.x, x_830.y, x_830.z, x_830.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb34 = vec2<bool>(x_838.x, x_838.y);
    let x_841 : bool = u_xlatb34.y;
    if (x_841) {
      let x_846 : f32 = u_xlat7.w;
      x_842 = x_846;
    } else {
      let x_849 : f32 = u_xlat7.x;
      x_842 = x_849;
    }
    let x_850 : f32 = x_842;
    u_xlat48 = x_850;
    let x_852 : bool = u_xlatb34.x;
    if (x_852) {
      let x_856 : vec4<f32> = u_xlat7;
      x_853 = vec3<f32>(x_856.x, x_856.y, x_856.z);
    } else {
      let x_859 : f32 = u_xlat48;
      x_853 = vec3<f32>(x_859, x_859, x_859);
    }
    let x_861 : vec3<f32> = x_853;
    let x_862 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_861.x, x_861.y, x_861.z, x_862.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_868 : vec4<f32> = u_xlat7;
  let x_871 : vec4<f32> = x_66.x_MainLightColor;
  let x_873 : vec3<f32> = (vec3<f32>(x_868.x, x_868.y, x_868.z) * vec3<f32>(x_871.x, x_871.y, x_871.z));
  let x_874 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_873.x, x_873.y, x_873.z, x_874.w);
  let x_876 : f32 = u_xlat33;
  let x_878 : vec4<f32> = u_xlat7;
  let x_880 : vec3<f32> = (vec3<f32>(x_876, x_876, x_876) * vec3<f32>(x_878.x, x_878.y, x_878.z));
  let x_881 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_880.x, x_880.y, x_880.z, x_881.w);
  let x_883 : vec3<f32> = u_xlat17;
  let x_885 : vec4<f32> = u_xlat1;
  u_xlat34.x = dot(-(x_883), vec3<f32>(x_885.x, x_885.z, x_885.w));
  let x_890 : f32 = u_xlat34.x;
  let x_892 : f32 = u_xlat34.x;
  u_xlat34.x = (x_890 + x_892);
  let x_896 : vec4<f32> = u_xlat1;
  let x_898 : vec2<f32> = u_xlat34;
  let x_902 : vec3<f32> = u_xlat17;
  let x_904 : vec3<f32> = ((vec3<f32>(x_896.x, x_896.z, x_896.w) * -(vec3<f32>(x_898.x, x_898.x, x_898.x))) + -(x_902));
  let x_905 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_904.x, x_904.y, x_904.z, x_905.w);
  let x_907 : vec4<f32> = u_xlat1;
  let x_909 : vec3<f32> = u_xlat17;
  u_xlat34.x = dot(vec3<f32>(x_907.x, x_907.z, x_907.w), x_909);
  let x_913 : f32 = u_xlat34.x;
  u_xlat34.x = clamp(x_913, 0.0f, 1.0f);
  let x_917 : f32 = u_xlat34.x;
  u_xlat34.x = (-(x_917) + 1.0f);
  let x_922 : f32 = u_xlat34.x;
  let x_924 : f32 = u_xlat34.x;
  u_xlat34.x = (x_922 * x_924);
  let x_928 : f32 = u_xlat34.x;
  let x_930 : f32 = u_xlat34.x;
  u_xlat34.x = (x_928 * x_930);
  let x_934 : f32 = u_xlat19.x;
  u_xlat48 = ((-(x_934) * 0.699999988f) + 1.700000048f);
  let x_941 : f32 = u_xlat19.x;
  let x_942 : f32 = u_xlat48;
  u_xlat19.x = (x_941 * x_942);
  let x_946 : f32 = u_xlat19.x;
  u_xlat19.x = (x_946 * 6.0f);
  let x_958 : vec4<f32> = u_xlat8;
  let x_961 : f32 = u_xlat19.x;
  let x_962 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_958.x, x_958.y, x_958.z), x_961);
  u_xlat8 = x_962;
  let x_964 : f32 = u_xlat8.w;
  u_xlat19.x = (x_964 + -1.0f);
  let x_968 : f32 = x_344.unity_SpecCube0_HDR.w;
  let x_970 : f32 = u_xlat19.x;
  u_xlat19.x = ((x_968 * x_970) + 1.0f);
  let x_975 : f32 = u_xlat19.x;
  u_xlat19.x = max(x_975, 0.0f);
  let x_979 : f32 = u_xlat19.x;
  u_xlat19.x = log2(x_979);
  let x_983 : f32 = u_xlat19.x;
  let x_985 : f32 = x_344.unity_SpecCube0_HDR.y;
  u_xlat19.x = (x_983 * x_985);
  let x_989 : f32 = u_xlat19.x;
  u_xlat19.x = exp2(x_989);
  let x_993 : f32 = u_xlat19.x;
  let x_995 : f32 = x_344.unity_SpecCube0_HDR.x;
  u_xlat19.x = (x_993 * x_995);
  let x_998 : vec4<f32> = u_xlat8;
  let x_1000 : vec3<f32> = u_xlat19;
  let x_1002 : vec3<f32> = (vec3<f32>(x_998.x, x_998.y, x_998.z) * vec3<f32>(x_1000.x, x_1000.x, x_1000.x));
  let x_1003 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1002.x, x_1002.y, x_1002.z, x_1003.w);
  let x_1005 : f32 = u_xlat47;
  let x_1007 : f32 = u_xlat47;
  let x_1011 : vec2<f32> = ((vec2<f32>(x_1005, x_1005) * vec2<f32>(x_1007, x_1007)) + vec2<f32>(-1.0f, 1.0f));
  let x_1012 : vec3<f32> = u_xlat19;
  u_xlat19 = vec3<f32>(x_1011.x, x_1012.y, x_1011.y);
  let x_1015 : f32 = u_xlat19.z;
  u_xlat47 = (1.0f / x_1015);
  let x_1018 : f32 = u_xlat3.x;
  u_xlat3.x = (x_1018 + -0.039999999f);
  let x_1023 : f32 = u_xlat34.x;
  let x_1025 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1023 * x_1025) + 0.039999999f);
  let x_1031 : f32 = u_xlat3.x;
  let x_1032 : f32 = u_xlat47;
  u_xlat3.x = (x_1031 * x_1032);
  let x_1035 : vec4<f32> = u_xlat3;
  let x_1037 : vec4<f32> = u_xlat8;
  let x_1039 : vec3<f32> = (vec3<f32>(x_1035.x, x_1035.x, x_1035.x) * vec3<f32>(x_1037.x, x_1037.y, x_1037.z));
  let x_1040 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1039.x, x_1039.y, x_1039.z, x_1040.w);
  let x_1042 : vec3<f32> = u_xlat18;
  let x_1043 : vec3<f32> = u_xlat2;
  let x_1045 : vec4<f32> = u_xlat8;
  u_xlat18 = ((x_1042 * x_1043) + vec3<f32>(x_1045.x, x_1045.y, x_1045.z));
  let x_1048 : f32 = u_xlat44;
  let x_1050 : f32 = x_344.unity_LightData.z;
  u_xlat44 = (x_1048 * x_1050);
  let x_1052 : vec4<f32> = u_xlat1;
  let x_1055 : vec4<f32> = x_66.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_1052.x, x_1052.z, x_1052.w), vec3<f32>(x_1055.x, x_1055.y, x_1055.z));
  let x_1060 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1060, 0.0f, 1.0f);
  let x_1063 : f32 = u_xlat44;
  let x_1065 : f32 = u_xlat3.x;
  u_xlat44 = (x_1063 * x_1065);
  let x_1067 : f32 = u_xlat44;
  let x_1069 : vec4<f32> = u_xlat7;
  let x_1071 : vec3<f32> = (vec3<f32>(x_1067, x_1067, x_1067) * vec3<f32>(x_1069.x, x_1069.y, x_1069.z));
  let x_1072 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1071.x, x_1071.y, x_1071.z, x_1072.w);
  let x_1074 : vec3<f32> = u_xlat17;
  let x_1076 : vec4<f32> = x_66.x_MainLightPosition;
  let x_1078 : vec3<f32> = (x_1074 + vec3<f32>(x_1076.x, x_1076.y, x_1076.z));
  let x_1079 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1078.x, x_1078.y, x_1078.z, x_1079.w);
  let x_1081 : vec4<f32> = u_xlat8;
  let x_1083 : vec4<f32> = u_xlat8;
  u_xlat44 = dot(vec3<f32>(x_1081.x, x_1081.y, x_1081.z), vec3<f32>(x_1083.x, x_1083.y, x_1083.z));
  let x_1086 : f32 = u_xlat44;
  u_xlat44 = max(x_1086, 1.17549435e-37f);
  let x_1089 : f32 = u_xlat44;
  u_xlat44 = inverseSqrt(x_1089);
  let x_1091 : f32 = u_xlat44;
  let x_1093 : vec4<f32> = u_xlat8;
  let x_1095 : vec3<f32> = (vec3<f32>(x_1091, x_1091, x_1091) * vec3<f32>(x_1093.x, x_1093.y, x_1093.z));
  let x_1096 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1095.x, x_1095.y, x_1095.z, x_1096.w);
  let x_1098 : vec4<f32> = u_xlat1;
  let x_1100 : vec4<f32> = u_xlat8;
  u_xlat44 = dot(vec3<f32>(x_1098.x, x_1098.z, x_1098.w), vec3<f32>(x_1100.x, x_1100.y, x_1100.z));
  let x_1103 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1103, 0.0f, 1.0f);
  let x_1106 : vec4<f32> = x_66.x_MainLightPosition;
  let x_1108 : vec4<f32> = u_xlat8;
  u_xlat3.x = dot(vec3<f32>(x_1106.x, x_1106.y, x_1106.z), vec3<f32>(x_1108.x, x_1108.y, x_1108.z));
  let x_1113 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1113, 0.0f, 1.0f);
  let x_1116 : f32 = u_xlat44;
  let x_1117 : f32 = u_xlat44;
  u_xlat44 = (x_1116 * x_1117);
  let x_1119 : f32 = u_xlat44;
  let x_1121 : f32 = u_xlat19.x;
  u_xlat44 = ((x_1119 * x_1121) + 1.000010014f);
  let x_1126 : f32 = u_xlat3.x;
  let x_1128 : f32 = u_xlat3.x;
  u_xlat3.x = (x_1126 * x_1128);
  let x_1131 : f32 = u_xlat44;
  let x_1132 : f32 = u_xlat44;
  u_xlat44 = (x_1131 * x_1132);
  let x_1135 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_1135, 0.100000001f);
  let x_1139 : f32 = u_xlat44;
  let x_1141 : f32 = u_xlat3.x;
  u_xlat44 = (x_1139 * x_1141);
  let x_1143 : f32 = u_xlat20;
  let x_1144 : f32 = u_xlat44;
  u_xlat44 = (x_1143 * x_1144);
  let x_1146 : f32 = u_xlat6;
  let x_1147 : f32 = u_xlat44;
  u_xlat44 = (x_1146 / x_1147);
  let x_1149 : f32 = u_xlat44;
  let x_1153 : vec3<f32> = u_xlat2;
  let x_1154 : vec3<f32> = ((vec3<f32>(x_1149, x_1149, x_1149) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1153);
  let x_1155 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1154.x, x_1154.y, x_1154.z, x_1155.w);
  let x_1157 : vec4<f32> = u_xlat7;
  let x_1159 : vec4<f32> = u_xlat8;
  let x_1161 : vec3<f32> = (vec3<f32>(x_1157.x, x_1157.y, x_1157.z) * vec3<f32>(x_1159.x, x_1159.y, x_1159.z));
  let x_1162 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1161.x, x_1161.y, x_1161.z, x_1162.w);
  let x_1166 : f32 = x_66.x_AdditionalLightsCount.x;
  let x_1168 : f32 = x_344.unity_LightData.y;
  u_xlat44 = min(x_1166, x_1168);
  let x_1172 : f32 = u_xlat44;
  u_xlatu44 = bitcast<u32>(i32(x_1172));
  let x_1176 : f32 = x_773.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1178 : f32 = x_773.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1180 : f32 = x_773.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1182 : f32 = x_773.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1183 : vec4<f32> = vec4<f32>(x_1176, x_1178, x_1180, x_1182);
  let x_1189 : vec4<bool> = (vec4<f32>(x_1183.x, x_1183.y, x_1183.z, x_1183.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
  u_xlatb34 = vec2<bool>(x_1189.x, x_1189.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1200 : u32 = u_xlatu_loop_1;
    let x_1201 : u32 = u_xlatu44;
    if ((x_1200 < x_1201)) {
    } else {
      break;
    }
    let x_1204 : u32 = u_xlatu_loop_1;
    u_xlatu47 = (x_1204 >> 2u);
    let x_1208 : u32 = u_xlatu_loop_1;
    u_xlati49 = bitcast<i32>((x_1208 & 3u));
    let x_1211 : u32 = u_xlatu47;
    let x_1214 : vec4<f32> = x_344.unity_LightIndices[bitcast<i32>(x_1211)];
    let x_1224 : i32 = u_xlati49;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1229 : vec4<u32> = indexable[x_1224];
    u_xlat47 = dot(x_1214, bitcast<vec4<f32>>(x_1229));
    let x_1232 : f32 = u_xlat47;
    u_xlatu47 = bitcast<u32>(i32(x_1232));
    let x_1236 : vec3<f32> = vs_INTERP0;
    let x_1248 : u32 = u_xlatu47;
    let x_1251 : vec4<f32> = x_1247.x_AdditionalLightsPosition[bitcast<i32>(x_1248)];
    let x_1254 : u32 = u_xlatu47;
    let x_1257 : vec4<f32> = x_1247.x_AdditionalLightsPosition[bitcast<i32>(x_1254)];
    u_xlat9 = ((-(x_1236) * vec3<f32>(x_1251.w, x_1251.w, x_1251.w)) + vec3<f32>(x_1257.x, x_1257.y, x_1257.z));
    let x_1261 : vec3<f32> = u_xlat9;
    let x_1262 : vec3<f32> = u_xlat9;
    u_xlat49 = dot(x_1261, x_1262);
    let x_1264 : f32 = u_xlat49;
    u_xlat49 = max(x_1264, 6.10351562e-05f);
    let x_1268 : f32 = u_xlat49;
    u_xlat50 = inverseSqrt(x_1268);
    let x_1271 : f32 = u_xlat50;
    let x_1273 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1271, x_1271, x_1271) * x_1273);
    let x_1276 : f32 = u_xlat49;
    u_xlat51 = (1.0f / x_1276);
    let x_1278 : f32 = u_xlat49;
    let x_1279 : u32 = u_xlatu47;
    let x_1282 : f32 = x_1247.x_AdditionalLightsAttenuation[bitcast<i32>(x_1279)].x;
    u_xlat49 = (x_1278 * x_1282);
    let x_1284 : f32 = u_xlat49;
    let x_1286 : f32 = u_xlat49;
    u_xlat49 = ((-(x_1284) * x_1286) + 1.0f);
    let x_1289 : f32 = u_xlat49;
    u_xlat49 = max(x_1289, 0.0f);
    let x_1291 : f32 = u_xlat49;
    let x_1292 : f32 = u_xlat49;
    u_xlat49 = (x_1291 * x_1292);
    let x_1294 : f32 = u_xlat49;
    let x_1295 : f32 = u_xlat51;
    u_xlat49 = (x_1294 * x_1295);
    let x_1297 : u32 = u_xlatu47;
    let x_1300 : vec4<f32> = x_1247.x_AdditionalLightsSpotDir[bitcast<i32>(x_1297)];
    let x_1302 : vec3<f32> = u_xlat10;
    u_xlat51 = dot(vec3<f32>(x_1300.x, x_1300.y, x_1300.z), x_1302);
    let x_1304 : f32 = u_xlat51;
    let x_1305 : u32 = u_xlatu47;
    let x_1308 : f32 = x_1247.x_AdditionalLightsAttenuation[bitcast<i32>(x_1305)].z;
    let x_1310 : u32 = u_xlatu47;
    let x_1313 : f32 = x_1247.x_AdditionalLightsAttenuation[bitcast<i32>(x_1310)].w;
    u_xlat51 = ((x_1304 * x_1308) + x_1313);
    let x_1315 : f32 = u_xlat51;
    u_xlat51 = clamp(x_1315, 0.0f, 1.0f);
    let x_1317 : f32 = u_xlat51;
    let x_1318 : f32 = u_xlat51;
    u_xlat51 = (x_1317 * x_1318);
    let x_1320 : f32 = u_xlat49;
    let x_1321 : f32 = u_xlat51;
    u_xlat49 = (x_1320 * x_1321);
    let x_1324 : u32 = u_xlatu47;
    u_xlatu51 = (x_1324 >> 5u);
    let x_1327 : u32 = u_xlatu47;
    u_xlati52 = (1i << bitcast<u32>((bitcast<i32>(x_1327) & 31i)));
    let x_1333 : i32 = u_xlati52;
    let x_1335 : u32 = u_xlatu51;
    let x_1338 : f32 = x_773.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1335)].el;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_1333) & bitcast<u32>(x_1338)));
    let x_1342 : i32 = u_xlati51;
    if ((x_1342 != 0i)) {
      let x_1352 : u32 = u_xlatu47;
      let x_1355 : f32 = x_1351.x_AdditionalLightsLightTypes[bitcast<i32>(x_1352)].el;
      u_xlati51 = i32(x_1355);
      let x_1357 : i32 = u_xlati51;
      u_xlati52 = select(1i, 0i, (x_1357 != 0i));
      let x_1361 : u32 = u_xlatu47;
      u_xlati11 = (bitcast<i32>(x_1361) << bitcast<u32>(2i));
      let x_1364 : i32 = u_xlati52;
      if ((x_1364 != 0i)) {
        let x_1369 : vec3<f32> = vs_INTERP0;
        let x_1371 : i32 = u_xlati11;
        let x_1374 : i32 = u_xlati11;
        let x_1378 : vec4<f32> = x_1351.x_AdditionalLightsWorldToLights[((x_1371 + 1i) / 4i)][((x_1374 + 1i) % 4i)];
        u_xlat25 = (vec3<f32>(x_1369.y, x_1369.y, x_1369.y) * vec3<f32>(x_1378.x, x_1378.y, x_1378.w));
        let x_1381 : i32 = u_xlati11;
        let x_1383 : i32 = u_xlati11;
        let x_1386 : vec4<f32> = x_1351.x_AdditionalLightsWorldToLights[(x_1381 / 4i)][(x_1383 % 4i)];
        let x_1388 : vec3<f32> = vs_INTERP0;
        let x_1391 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1386.x, x_1386.y, x_1386.w) * vec3<f32>(x_1388.x, x_1388.x, x_1388.x)) + x_1391);
        let x_1393 : i32 = u_xlati11;
        let x_1396 : i32 = u_xlati11;
        let x_1400 : vec4<f32> = x_1351.x_AdditionalLightsWorldToLights[((x_1393 + 2i) / 4i)][((x_1396 + 2i) % 4i)];
        let x_1402 : vec3<f32> = vs_INTERP0;
        let x_1405 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1400.x, x_1400.y, x_1400.w) * vec3<f32>(x_1402.z, x_1402.z, x_1402.z)) + x_1405);
        let x_1407 : vec3<f32> = u_xlat25;
        let x_1408 : i32 = u_xlati11;
        let x_1411 : i32 = u_xlati11;
        let x_1415 : vec4<f32> = x_1351.x_AdditionalLightsWorldToLights[((x_1408 + 3i) / 4i)][((x_1411 + 3i) % 4i)];
        u_xlat25 = (x_1407 + vec3<f32>(x_1415.x, x_1415.y, x_1415.w));
        let x_1418 : vec3<f32> = u_xlat25;
        let x_1420 : vec3<f32> = u_xlat25;
        let x_1422 : vec2<f32> = (vec2<f32>(x_1418.x, x_1418.y) / vec2<f32>(x_1420.z, x_1420.z));
        let x_1423 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1422.x, x_1422.y, x_1423.z);
        let x_1425 : vec3<f32> = u_xlat25;
        let x_1428 : vec2<f32> = ((vec2<f32>(x_1425.x, x_1425.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1429 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1428.x, x_1428.y, x_1429.z);
        let x_1431 : vec3<f32> = u_xlat25;
        let x_1435 : vec2<f32> = clamp(vec2<f32>(x_1431.x, x_1431.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1436 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1435.x, x_1435.y, x_1436.z);
        let x_1438 : u32 = u_xlatu47;
        let x_1441 : vec4<f32> = x_1351.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1438)];
        let x_1443 : vec3<f32> = u_xlat25;
        let x_1446 : u32 = u_xlatu47;
        let x_1449 : vec4<f32> = x_1351.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1446)];
        let x_1451 : vec2<f32> = ((vec2<f32>(x_1441.x, x_1441.y) * vec2<f32>(x_1443.x, x_1443.y)) + vec2<f32>(x_1449.z, x_1449.w));
        let x_1452 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1451.x, x_1451.y, x_1452.z);
      } else {
        let x_1456 : i32 = u_xlati51;
        u_xlatb51 = (x_1456 == 1i);
        let x_1458 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_1458);
        let x_1460 : i32 = u_xlati51;
        if ((x_1460 != 0i)) {
          let x_1465 : vec3<f32> = vs_INTERP0;
          let x_1467 : i32 = u_xlati11;
          let x_1470 : i32 = u_xlati11;
          let x_1474 : vec4<f32> = x_1351.x_AdditionalLightsWorldToLights[((x_1467 + 1i) / 4i)][((x_1470 + 1i) % 4i)];
          let x_1476 : vec2<f32> = (vec2<f32>(x_1465.y, x_1465.y) * vec2<f32>(x_1474.x, x_1474.y));
          let x_1477 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1476.x, x_1476.y, x_1477.z, x_1477.w);
          let x_1479 : i32 = u_xlati11;
          let x_1481 : i32 = u_xlati11;
          let x_1484 : vec4<f32> = x_1351.x_AdditionalLightsWorldToLights[(x_1479 / 4i)][(x_1481 % 4i)];
          let x_1486 : vec3<f32> = vs_INTERP0;
          let x_1489 : vec4<f32> = u_xlat12;
          let x_1491 : vec2<f32> = ((vec2<f32>(x_1484.x, x_1484.y) * vec2<f32>(x_1486.x, x_1486.x)) + vec2<f32>(x_1489.x, x_1489.y));
          let x_1492 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1491.x, x_1491.y, x_1492.z, x_1492.w);
          let x_1494 : i32 = u_xlati11;
          let x_1497 : i32 = u_xlati11;
          let x_1501 : vec4<f32> = x_1351.x_AdditionalLightsWorldToLights[((x_1494 + 2i) / 4i)][((x_1497 + 2i) % 4i)];
          let x_1503 : vec3<f32> = vs_INTERP0;
          let x_1506 : vec4<f32> = u_xlat12;
          let x_1508 : vec2<f32> = ((vec2<f32>(x_1501.x, x_1501.y) * vec2<f32>(x_1503.z, x_1503.z)) + vec2<f32>(x_1506.x, x_1506.y));
          let x_1509 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1508.x, x_1508.y, x_1509.z, x_1509.w);
          let x_1511 : vec4<f32> = u_xlat12;
          let x_1513 : i32 = u_xlati11;
          let x_1516 : i32 = u_xlati11;
          let x_1520 : vec4<f32> = x_1351.x_AdditionalLightsWorldToLights[((x_1513 + 3i) / 4i)][((x_1516 + 3i) % 4i)];
          let x_1522 : vec2<f32> = (vec2<f32>(x_1511.x, x_1511.y) + vec2<f32>(x_1520.x, x_1520.y));
          let x_1523 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1522.x, x_1522.y, x_1523.z, x_1523.w);
          let x_1525 : vec4<f32> = u_xlat12;
          let x_1528 : vec2<f32> = ((vec2<f32>(x_1525.x, x_1525.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1529 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1528.x, x_1528.y, x_1529.z, x_1529.w);
          let x_1531 : vec4<f32> = u_xlat12;
          let x_1533 : vec2<f32> = fract(vec2<f32>(x_1531.x, x_1531.y));
          let x_1534 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1533.x, x_1533.y, x_1534.z, x_1534.w);
          let x_1536 : u32 = u_xlatu47;
          let x_1539 : vec4<f32> = x_1351.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1536)];
          let x_1541 : vec4<f32> = u_xlat12;
          let x_1544 : u32 = u_xlatu47;
          let x_1547 : vec4<f32> = x_1351.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1544)];
          let x_1549 : vec2<f32> = ((vec2<f32>(x_1539.x, x_1539.y) * vec2<f32>(x_1541.x, x_1541.y)) + vec2<f32>(x_1547.z, x_1547.w));
          let x_1550 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1549.x, x_1549.y, x_1550.z);
        } else {
          let x_1553 : vec3<f32> = vs_INTERP0;
          let x_1555 : i32 = u_xlati11;
          let x_1558 : i32 = u_xlati11;
          let x_1562 : vec4<f32> = x_1351.x_AdditionalLightsWorldToLights[((x_1555 + 1i) / 4i)][((x_1558 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1553.y, x_1553.y, x_1553.y, x_1553.y) * x_1562);
          let x_1564 : i32 = u_xlati11;
          let x_1566 : i32 = u_xlati11;
          let x_1569 : vec4<f32> = x_1351.x_AdditionalLightsWorldToLights[(x_1564 / 4i)][(x_1566 % 4i)];
          let x_1570 : vec3<f32> = vs_INTERP0;
          let x_1573 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1569 * vec4<f32>(x_1570.x, x_1570.x, x_1570.x, x_1570.x)) + x_1573);
          let x_1575 : i32 = u_xlati11;
          let x_1578 : i32 = u_xlati11;
          let x_1582 : vec4<f32> = x_1351.x_AdditionalLightsWorldToLights[((x_1575 + 2i) / 4i)][((x_1578 + 2i) % 4i)];
          let x_1583 : vec3<f32> = vs_INTERP0;
          let x_1586 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1582 * vec4<f32>(x_1583.z, x_1583.z, x_1583.z, x_1583.z)) + x_1586);
          let x_1588 : vec4<f32> = u_xlat12;
          let x_1589 : i32 = u_xlati11;
          let x_1592 : i32 = u_xlati11;
          let x_1596 : vec4<f32> = x_1351.x_AdditionalLightsWorldToLights[((x_1589 + 3i) / 4i)][((x_1592 + 3i) % 4i)];
          u_xlat12 = (x_1588 + x_1596);
          let x_1598 : vec4<f32> = u_xlat12;
          let x_1600 : vec4<f32> = u_xlat12;
          let x_1602 : vec3<f32> = (vec3<f32>(x_1598.x, x_1598.y, x_1598.z) / vec3<f32>(x_1600.w, x_1600.w, x_1600.w));
          let x_1603 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1602.x, x_1602.y, x_1602.z, x_1603.w);
          let x_1605 : vec4<f32> = u_xlat12;
          let x_1607 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(vec3<f32>(x_1605.x, x_1605.y, x_1605.z), vec3<f32>(x_1607.x, x_1607.y, x_1607.z));
          let x_1610 : f32 = u_xlat51;
          u_xlat51 = inverseSqrt(x_1610);
          let x_1612 : f32 = u_xlat51;
          let x_1614 : vec4<f32> = u_xlat12;
          let x_1616 : vec3<f32> = (vec3<f32>(x_1612, x_1612, x_1612) * vec3<f32>(x_1614.x, x_1614.y, x_1614.z));
          let x_1617 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1616.x, x_1616.y, x_1616.z, x_1617.w);
          let x_1619 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(abs(vec3<f32>(x_1619.x, x_1619.y, x_1619.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1624 : f32 = u_xlat51;
          u_xlat51 = max(x_1624, 0.000001f);
          let x_1627 : f32 = u_xlat51;
          u_xlat51 = (1.0f / x_1627);
          let x_1630 : f32 = u_xlat51;
          let x_1632 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1630, x_1630, x_1630) * vec3<f32>(x_1632.z, x_1632.x, x_1632.y));
          let x_1636 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1636);
          let x_1640 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1640, 0.0f, 1.0f);
          let x_1645 : vec3<f32> = u_xlat13;
          let x_1648 : vec4<bool> = (vec4<f32>(x_1645.y, x_1645.y, x_1645.y, x_1645.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1649 : vec2<bool> = vec2<bool>(x_1648.x, x_1648.w);
          let x_1650 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_1649.x, x_1650.y, x_1650.z, x_1649.y);
          let x_1654 : bool = u_xlatb11.x;
          if (x_1654) {
            let x_1659 : f32 = u_xlat13.x;
            x_1655 = x_1659;
          } else {
            let x_1662 : f32 = u_xlat13.x;
            x_1655 = -(x_1662);
          }
          let x_1664 : f32 = x_1655;
          u_xlat11.x = x_1664;
          let x_1667 : bool = u_xlatb11.w;
          if (x_1667) {
            let x_1672 : f32 = u_xlat13.x;
            x_1668 = x_1672;
          } else {
            let x_1675 : f32 = u_xlat13.x;
            x_1668 = -(x_1675);
          }
          let x_1677 : f32 = x_1668;
          u_xlat11.w = x_1677;
          let x_1679 : vec4<f32> = u_xlat12;
          let x_1681 : f32 = u_xlat51;
          let x_1684 : vec4<f32> = u_xlat11;
          let x_1686 : vec2<f32> = ((vec2<f32>(x_1679.x, x_1679.y) * vec2<f32>(x_1681, x_1681)) + vec2<f32>(x_1684.x, x_1684.w));
          let x_1687 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1686.x, x_1687.y, x_1687.z, x_1686.y);
          let x_1689 : vec4<f32> = u_xlat11;
          let x_1692 : vec2<f32> = ((vec2<f32>(x_1689.x, x_1689.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1693 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1692.x, x_1693.y, x_1693.z, x_1692.y);
          let x_1695 : vec4<f32> = u_xlat11;
          let x_1699 : vec2<f32> = clamp(vec2<f32>(x_1695.x, x_1695.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1700 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1699.x, x_1700.y, x_1700.z, x_1699.y);
          let x_1702 : u32 = u_xlatu47;
          let x_1705 : vec4<f32> = x_1351.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1702)];
          let x_1707 : vec4<f32> = u_xlat11;
          let x_1710 : u32 = u_xlatu47;
          let x_1713 : vec4<f32> = x_1351.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1710)];
          let x_1715 : vec2<f32> = ((vec2<f32>(x_1705.x, x_1705.y) * vec2<f32>(x_1707.x, x_1707.w)) + vec2<f32>(x_1713.z, x_1713.w));
          let x_1716 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1715.x, x_1715.y, x_1716.z);
        }
      }
      let x_1723 : vec3<f32> = u_xlat25;
      let x_1726 : f32 = x_66.x_GlobalMipBias.x;
      let x_1727 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1723.x, x_1723.y), x_1726);
      u_xlat11 = x_1727;
      let x_1729 : bool = u_xlatb34.y;
      if (x_1729) {
        let x_1734 : f32 = u_xlat11.w;
        x_1730 = x_1734;
      } else {
        let x_1737 : f32 = u_xlat11.x;
        x_1730 = x_1737;
      }
      let x_1738 : f32 = x_1730;
      u_xlat51 = x_1738;
      let x_1740 : bool = u_xlatb34.x;
      if (x_1740) {
        let x_1744 : vec4<f32> = u_xlat11;
        x_1741 = vec3<f32>(x_1744.x, x_1744.y, x_1744.z);
      } else {
        let x_1747 : f32 = u_xlat51;
        x_1741 = vec3<f32>(x_1747, x_1747, x_1747);
      }
      let x_1749 : vec3<f32> = x_1741;
      let x_1750 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1749.x, x_1749.y, x_1749.z, x_1750.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1756 : vec4<f32> = u_xlat11;
    let x_1758 : u32 = u_xlatu47;
    let x_1761 : vec4<f32> = x_1247.x_AdditionalLightsColor[bitcast<i32>(x_1758)];
    let x_1763 : vec3<f32> = (vec3<f32>(x_1756.x, x_1756.y, x_1756.z) * vec3<f32>(x_1761.x, x_1761.y, x_1761.z));
    let x_1764 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1763.x, x_1763.y, x_1763.z, x_1764.w);
    let x_1766 : f32 = u_xlat33;
    let x_1768 : vec4<f32> = u_xlat11;
    let x_1770 : vec3<f32> = (vec3<f32>(x_1766, x_1766, x_1766) * vec3<f32>(x_1768.x, x_1768.y, x_1768.z));
    let x_1771 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1770.x, x_1770.y, x_1770.z, x_1771.w);
    let x_1773 : vec4<f32> = u_xlat1;
    let x_1775 : vec3<f32> = u_xlat10;
    u_xlat47 = dot(vec3<f32>(x_1773.x, x_1773.z, x_1773.w), x_1775);
    let x_1777 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1777, 0.0f, 1.0f);
    let x_1779 : f32 = u_xlat47;
    let x_1780 : f32 = u_xlat49;
    u_xlat47 = (x_1779 * x_1780);
    let x_1782 : f32 = u_xlat47;
    let x_1784 : vec4<f32> = u_xlat11;
    let x_1786 : vec3<f32> = (vec3<f32>(x_1782, x_1782, x_1782) * vec3<f32>(x_1784.x, x_1784.y, x_1784.z));
    let x_1787 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1786.x, x_1786.y, x_1786.z, x_1787.w);
    let x_1789 : vec3<f32> = u_xlat9;
    let x_1790 : f32 = u_xlat50;
    let x_1793 : vec3<f32> = u_xlat17;
    u_xlat9 = ((x_1789 * vec3<f32>(x_1790, x_1790, x_1790)) + x_1793);
    let x_1795 : vec3<f32> = u_xlat9;
    let x_1796 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1795, x_1796);
    let x_1798 : f32 = u_xlat47;
    u_xlat47 = max(x_1798, 1.17549435e-37f);
    let x_1800 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_1800);
    let x_1802 : f32 = u_xlat47;
    let x_1804 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1802, x_1802, x_1802) * x_1804);
    let x_1806 : vec4<f32> = u_xlat1;
    let x_1808 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_1806.x, x_1806.z, x_1806.w), x_1808);
    let x_1810 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1810, 0.0f, 1.0f);
    let x_1812 : vec3<f32> = u_xlat10;
    let x_1813 : vec3<f32> = u_xlat9;
    u_xlat49 = dot(x_1812, x_1813);
    let x_1815 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1815, 0.0f, 1.0f);
    let x_1817 : f32 = u_xlat47;
    let x_1818 : f32 = u_xlat47;
    u_xlat47 = (x_1817 * x_1818);
    let x_1820 : f32 = u_xlat47;
    let x_1822 : f32 = u_xlat19.x;
    u_xlat47 = ((x_1820 * x_1822) + 1.000010014f);
    let x_1825 : f32 = u_xlat49;
    let x_1826 : f32 = u_xlat49;
    u_xlat49 = (x_1825 * x_1826);
    let x_1828 : f32 = u_xlat47;
    let x_1829 : f32 = u_xlat47;
    u_xlat47 = (x_1828 * x_1829);
    let x_1831 : f32 = u_xlat49;
    u_xlat49 = max(x_1831, 0.100000001f);
    let x_1833 : f32 = u_xlat47;
    let x_1834 : f32 = u_xlat49;
    u_xlat47 = (x_1833 * x_1834);
    let x_1836 : f32 = u_xlat20;
    let x_1837 : f32 = u_xlat47;
    u_xlat47 = (x_1836 * x_1837);
    let x_1839 : f32 = u_xlat6;
    let x_1840 : f32 = u_xlat47;
    u_xlat47 = (x_1839 / x_1840);
    let x_1842 : f32 = u_xlat47;
    let x_1845 : vec3<f32> = u_xlat2;
    u_xlat9 = ((vec3<f32>(x_1842, x_1842, x_1842) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1845);
    let x_1847 : vec3<f32> = u_xlat9;
    let x_1848 : vec4<f32> = u_xlat11;
    let x_1851 : vec4<f32> = u_xlat8;
    let x_1853 : vec3<f32> = ((x_1847 * vec3<f32>(x_1848.x, x_1848.y, x_1848.z)) + vec3<f32>(x_1851.x, x_1851.y, x_1851.z));
    let x_1854 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1853.x, x_1853.y, x_1853.z, x_1854.w);

    continuing {
      let x_1856 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1856 + bitcast<u32>(1i));
    }
  }
  let x_1858 : vec3<f32> = u_xlat18;
  let x_1859 : vec4<f32> = u_xlat5;
  let x_1862 : vec4<f32> = u_xlat7;
  let x_1864 : vec3<f32> = ((x_1858 * vec3<f32>(x_1859.x, x_1859.x, x_1859.x)) + vec3<f32>(x_1862.x, x_1862.y, x_1862.z));
  let x_1865 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1864.x, x_1865.y, x_1864.y, x_1864.z);
  let x_1867 : vec4<f32> = u_xlat8;
  let x_1869 : vec4<f32> = u_xlat1;
  let x_1871 : vec3<f32> = (vec3<f32>(x_1867.x, x_1867.y, x_1867.z) + vec3<f32>(x_1869.x, x_1869.z, x_1869.w));
  let x_1872 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1871.x, x_1872.y, x_1871.y, x_1871.z);
  let x_1874 : vec4<f32> = vs_INTERP4;
  let x_1876 : vec3<f32> = u_xlat0;
  let x_1878 : vec4<f32> = u_xlat1;
  u_xlat0 = ((vec3<f32>(x_1874.w, x_1874.w, x_1874.w) * x_1876) + vec3<f32>(x_1878.x, x_1878.z, x_1878.w));
  let x_1882 : f32 = u_xlat4.x;
  let x_1884 : f32 = u_xlat4.x;
  u_xlat1.x = (x_1882 * -(x_1884));
  let x_1889 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1889);
  let x_1892 : vec3<f32> = u_xlat0;
  let x_1895 : vec4<f32> = x_66.unity_FogColor;
  u_xlat0 = (x_1892 + -(vec3<f32>(x_1895.x, x_1895.y, x_1895.z)));
  let x_1901 : vec4<f32> = u_xlat1;
  let x_1903 : vec3<f32> = u_xlat0;
  let x_1906 : vec4<f32> = x_66.unity_FogColor;
  let x_1908 : vec3<f32> = ((vec3<f32>(x_1901.x, x_1901.x, x_1901.x) * x_1903) + vec3<f32>(x_1906.x, x_1906.y, x_1906.z));
  let x_1909 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1908.x, x_1908.y, x_1908.z, x_1909.w);
  let x_1911 : bool = u_xlatb15;
  let x_1912 : f32 = u_xlat42;
  SV_Target0.w = select(1.0f, x_1912, x_1911);
  let x_1920 : u32 = x_66.x_RenderingLayerMaxInt;
  let x_1922 : f32 = x_344.unity_RenderingLayer.x;
  u_xlatu0 = (x_1920 & bitcast<u32>(x_1922));
  let x_1925 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_1925);
  let x_1930 : f32 = u_xlat0.x;
  let x_1932 : f32 = x_66.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_1930 * x_1932);
  let x_1936 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_1936, 0.0f, 1.0f);
  let x_1940 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_1940.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
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

