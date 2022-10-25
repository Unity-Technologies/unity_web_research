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

@group(1) @binding(4) var<uniform> x_734 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1208 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1312 : AdditionalLightsCookies;

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
  var x_803 : f32;
  var x_814 : vec3<f32>;
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
  var x_1616 : f32;
  var x_1629 : f32;
  var x_1691 : f32;
  var x_1702 : vec3<f32>;
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
  let x_514 : f32 = x_66.x_ProjectionParams.y;
  u_xlat4.x = (-(x_511) + -(x_514));
  let x_519 : f32 = u_xlat4.x;
  u_xlat4.x = max(x_519, 0.0f);
  let x_523 : f32 = u_xlat4.x;
  let x_526 : f32 = x_66.unity_FogParams.x;
  u_xlat4.x = (x_523 * x_526);
  let x_537 : vec2<f32> = vs_INTERP5;
  let x_539 : f32 = x_66.x_GlobalMipBias.x;
  let x_540 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_537, x_539);
  u_xlat18 = vec3<f32>(x_540.x, x_540.y, x_540.z);
  let x_544 : vec4<f32> = x_66.x_ScaledScreenParams;
  let x_545 : vec2<f32> = vec2<f32>(x_544.x, x_544.y);
  let x_549 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_545.x, x_545.y));
  let x_550 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_549.x, x_549.y, x_550.z);
  let x_552 : vec3<f32> = u_xlat5;
  let x_554 : vec4<f32> = hlslcc_FragCoord;
  let x_556 : vec2<f32> = (vec2<f32>(x_552.x, x_552.y) * vec2<f32>(x_554.x, x_554.y));
  let x_557 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_556.x, x_556.y, x_557.z);
  let x_561 : f32 = u_xlat5.y;
  let x_564 : f32 = x_66.x_ScaleBiasRt.x;
  let x_567 : f32 = x_66.x_ScaleBiasRt.y;
  u_xlat19.x = ((x_561 * x_564) + x_567);
  let x_571 : f32 = u_xlat19.x;
  u_xlat5.z = (-(x_571) + 1.0f);
  let x_576 : f32 = u_xlat3.x;
  u_xlat3.x = x_576;
  let x_579 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_579, 0.0f, 1.0f);
  let x_582 : f32 = u_xlat42;
  u_xlat42 = min(x_582, 1.0f);
  let x_584 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_584 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_589 : f32 = u_xlat3.x;
  u_xlat19.x = (-(x_589) + 1.0f);
  let x_595 : f32 = u_xlat19.x;
  let x_597 : f32 = u_xlat19.x;
  u_xlat47 = (x_595 * x_597);
  let x_599 : f32 = u_xlat47;
  u_xlat47 = max(x_599, 0.0078125f);
  let x_603 : f32 = u_xlat47;
  let x_604 : f32 = u_xlat47;
  u_xlat6 = (x_603 * x_604);
  let x_607 : f32 = u_xlat3.x;
  u_xlat3.x = (x_607 + 0.040000021f);
  let x_612 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_612, 1.0f);
  let x_616 : f32 = u_xlat47;
  u_xlat20 = ((x_616 * 4.0f) + 2.0f);
  let x_625 : vec3<f32> = u_xlat5;
  let x_628 : f32 = x_66.x_GlobalMipBias.x;
  let x_629 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_625.x, x_625.z), x_628);
  u_xlat5.x = x_629.x;
  let x_634 : f32 = u_xlat5.x;
  u_xlat33 = (x_634 + -1.0f);
  let x_638 : f32 = x_66.x_AmbientOcclusionParam.w;
  let x_639 : f32 = u_xlat33;
  u_xlat33 = ((x_638 * x_639) + 1.0f);
  let x_643 : f32 = u_xlat5.x;
  let x_645 : f32 = vs_INTERP4.w;
  u_xlat5.x = min(x_643, x_645);
  let x_650 : vec4<f32> = vs_INTERP9;
  let x_651 : vec2<f32> = vec2<f32>(x_650.x, x_650.y);
  let x_653 : f32 = vs_INTERP9.z;
  txVec1 = vec3<f32>(x_651.x, x_651.y, x_653);
  let x_662 : vec3<f32> = txVec1;
  let x_664 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_662.xy, x_662.z);
  u_xlat34.x = x_664;
  let x_667 : f32 = u_xlat34.x;
  let x_669 : f32 = x_139.x_MainLightShadowParams.x;
  let x_671 : f32 = u_xlat44;
  u_xlat44 = ((x_667 * x_669) + x_671);
  let x_677 : f32 = vs_INTERP9.z;
  u_xlatb34.x = (0.0f >= x_677);
  let x_682 : f32 = vs_INTERP9.z;
  u_xlatb48 = (x_682 >= 1.0f);
  let x_684 : bool = u_xlatb48;
  let x_686 : bool = u_xlatb34.x;
  u_xlatb34.x = (x_684 | x_686);
  let x_690 : bool = u_xlatb34.x;
  let x_691 : f32 = u_xlat44;
  u_xlat44 = select(x_691, 1.0f, x_690);
  let x_694 : vec3<f32> = vs_INTERP0;
  let x_696 : vec3<f32> = x_66.x_WorldSpaceCameraPos;
  let x_698 : vec3<f32> = (x_694 + -(x_696));
  let x_699 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_698.x, x_698.y, x_698.z, x_699.w);
  let x_701 : vec4<f32> = u_xlat7;
  let x_703 : vec4<f32> = u_xlat7;
  u_xlat34.x = dot(vec3<f32>(x_701.x, x_701.y, x_701.z), vec3<f32>(x_703.x, x_703.y, x_703.z));
  let x_708 : f32 = u_xlat34.x;
  let x_710 : f32 = x_139.x_MainLightShadowParams.z;
  let x_713 : f32 = x_139.x_MainLightShadowParams.w;
  u_xlat34.x = ((x_708 * x_710) + x_713);
  let x_717 : f32 = u_xlat34.x;
  u_xlat34.x = clamp(x_717, 0.0f, 1.0f);
  let x_721 : f32 = u_xlat44;
  u_xlat48 = (-(x_721) + 1.0f);
  let x_725 : f32 = u_xlat34.x;
  let x_726 : f32 = u_xlat48;
  let x_728 : f32 = u_xlat44;
  u_xlat44 = ((x_725 * x_726) + x_728);
  let x_736 : f32 = x_734.x_MainLightCookieTextureFormat;
  u_xlatb34.x = !((x_736 == -1.0f));
  let x_740 : bool = u_xlatb34.x;
  if (x_740) {
    let x_743 : vec3<f32> = vs_INTERP0;
    let x_746 : vec4<f32> = x_734.x_MainLightWorldToLight[1i];
    u_xlat34 = (vec2<f32>(x_743.y, x_743.y) * vec2<f32>(x_746.x, x_746.y));
    let x_750 : vec4<f32> = x_734.x_MainLightWorldToLight[0i];
    let x_752 : vec3<f32> = vs_INTERP0;
    let x_755 : vec2<f32> = u_xlat34;
    u_xlat34 = ((vec2<f32>(x_750.x, x_750.y) * vec2<f32>(x_752.x, x_752.x)) + x_755);
    let x_758 : vec4<f32> = x_734.x_MainLightWorldToLight[2i];
    let x_760 : vec3<f32> = vs_INTERP0;
    let x_763 : vec2<f32> = u_xlat34;
    u_xlat34 = ((vec2<f32>(x_758.x, x_758.y) * vec2<f32>(x_760.z, x_760.z)) + x_763);
    let x_765 : vec2<f32> = u_xlat34;
    let x_767 : vec4<f32> = x_734.x_MainLightWorldToLight[3i];
    u_xlat34 = (x_765 + vec2<f32>(x_767.x, x_767.y));
    let x_770 : vec2<f32> = u_xlat34;
    u_xlat34 = ((x_770 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_779 : vec2<f32> = u_xlat34;
    let x_781 : f32 = x_66.x_GlobalMipBias.x;
    let x_782 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_779, x_781);
    u_xlat7 = x_782;
    let x_784 : f32 = x_734.x_MainLightCookieTextureFormat;
    let x_786 : f32 = x_734.x_MainLightCookieTextureFormat;
    let x_788 : f32 = x_734.x_MainLightCookieTextureFormat;
    let x_790 : f32 = x_734.x_MainLightCookieTextureFormat;
    let x_791 : vec4<f32> = vec4<f32>(x_784, x_786, x_788, x_790);
    let x_799 : vec4<bool> = (vec4<f32>(x_791.x, x_791.y, x_791.z, x_791.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb34 = vec2<bool>(x_799.x, x_799.y);
    let x_802 : bool = u_xlatb34.y;
    if (x_802) {
      let x_807 : f32 = u_xlat7.w;
      x_803 = x_807;
    } else {
      let x_810 : f32 = u_xlat7.x;
      x_803 = x_810;
    }
    let x_811 : f32 = x_803;
    u_xlat48 = x_811;
    let x_813 : bool = u_xlatb34.x;
    if (x_813) {
      let x_817 : vec4<f32> = u_xlat7;
      x_814 = vec3<f32>(x_817.x, x_817.y, x_817.z);
    } else {
      let x_820 : f32 = u_xlat48;
      x_814 = vec3<f32>(x_820, x_820, x_820);
    }
    let x_822 : vec3<f32> = x_814;
    let x_823 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_822.x, x_822.y, x_822.z, x_823.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_829 : vec4<f32> = u_xlat7;
  let x_832 : vec4<f32> = x_66.x_MainLightColor;
  let x_834 : vec3<f32> = (vec3<f32>(x_829.x, x_829.y, x_829.z) * vec3<f32>(x_832.x, x_832.y, x_832.z));
  let x_835 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_834.x, x_834.y, x_834.z, x_835.w);
  let x_837 : f32 = u_xlat33;
  let x_839 : vec4<f32> = u_xlat7;
  let x_841 : vec3<f32> = (vec3<f32>(x_837, x_837, x_837) * vec3<f32>(x_839.x, x_839.y, x_839.z));
  let x_842 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_841.x, x_841.y, x_841.z, x_842.w);
  let x_844 : vec3<f32> = u_xlat17;
  let x_846 : vec4<f32> = u_xlat1;
  u_xlat34.x = dot(-(x_844), vec3<f32>(x_846.x, x_846.z, x_846.w));
  let x_851 : f32 = u_xlat34.x;
  let x_853 : f32 = u_xlat34.x;
  u_xlat34.x = (x_851 + x_853);
  let x_857 : vec4<f32> = u_xlat1;
  let x_859 : vec2<f32> = u_xlat34;
  let x_863 : vec3<f32> = u_xlat17;
  let x_865 : vec3<f32> = ((vec3<f32>(x_857.x, x_857.z, x_857.w) * -(vec3<f32>(x_859.x, x_859.x, x_859.x))) + -(x_863));
  let x_866 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_865.x, x_865.y, x_865.z, x_866.w);
  let x_868 : vec4<f32> = u_xlat1;
  let x_870 : vec3<f32> = u_xlat17;
  u_xlat34.x = dot(vec3<f32>(x_868.x, x_868.z, x_868.w), x_870);
  let x_874 : f32 = u_xlat34.x;
  u_xlat34.x = clamp(x_874, 0.0f, 1.0f);
  let x_878 : f32 = u_xlat34.x;
  u_xlat34.x = (-(x_878) + 1.0f);
  let x_883 : f32 = u_xlat34.x;
  let x_885 : f32 = u_xlat34.x;
  u_xlat34.x = (x_883 * x_885);
  let x_889 : f32 = u_xlat34.x;
  let x_891 : f32 = u_xlat34.x;
  u_xlat34.x = (x_889 * x_891);
  let x_895 : f32 = u_xlat19.x;
  u_xlat48 = ((-(x_895) * 0.699999988f) + 1.700000048f);
  let x_902 : f32 = u_xlat19.x;
  let x_903 : f32 = u_xlat48;
  u_xlat19.x = (x_902 * x_903);
  let x_907 : f32 = u_xlat19.x;
  u_xlat19.x = (x_907 * 6.0f);
  let x_919 : vec4<f32> = u_xlat8;
  let x_922 : f32 = u_xlat19.x;
  let x_923 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_919.x, x_919.y, x_919.z), x_922);
  u_xlat8 = x_923;
  let x_925 : f32 = u_xlat8.w;
  u_xlat19.x = (x_925 + -1.0f);
  let x_929 : f32 = x_344.unity_SpecCube0_HDR.w;
  let x_931 : f32 = u_xlat19.x;
  u_xlat19.x = ((x_929 * x_931) + 1.0f);
  let x_936 : f32 = u_xlat19.x;
  u_xlat19.x = max(x_936, 0.0f);
  let x_940 : f32 = u_xlat19.x;
  u_xlat19.x = log2(x_940);
  let x_944 : f32 = u_xlat19.x;
  let x_946 : f32 = x_344.unity_SpecCube0_HDR.y;
  u_xlat19.x = (x_944 * x_946);
  let x_950 : f32 = u_xlat19.x;
  u_xlat19.x = exp2(x_950);
  let x_954 : f32 = u_xlat19.x;
  let x_956 : f32 = x_344.unity_SpecCube0_HDR.x;
  u_xlat19.x = (x_954 * x_956);
  let x_959 : vec4<f32> = u_xlat8;
  let x_961 : vec3<f32> = u_xlat19;
  let x_963 : vec3<f32> = (vec3<f32>(x_959.x, x_959.y, x_959.z) * vec3<f32>(x_961.x, x_961.x, x_961.x));
  let x_964 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_963.x, x_963.y, x_963.z, x_964.w);
  let x_966 : f32 = u_xlat47;
  let x_968 : f32 = u_xlat47;
  let x_972 : vec2<f32> = ((vec2<f32>(x_966, x_966) * vec2<f32>(x_968, x_968)) + vec2<f32>(-1.0f, 1.0f));
  let x_973 : vec3<f32> = u_xlat19;
  u_xlat19 = vec3<f32>(x_972.x, x_973.y, x_972.y);
  let x_976 : f32 = u_xlat19.z;
  u_xlat47 = (1.0f / x_976);
  let x_979 : f32 = u_xlat3.x;
  u_xlat3.x = (x_979 + -0.039999999f);
  let x_984 : f32 = u_xlat34.x;
  let x_986 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_984 * x_986) + 0.039999999f);
  let x_992 : f32 = u_xlat3.x;
  let x_993 : f32 = u_xlat47;
  u_xlat3.x = (x_992 * x_993);
  let x_996 : vec4<f32> = u_xlat3;
  let x_998 : vec4<f32> = u_xlat8;
  let x_1000 : vec3<f32> = (vec3<f32>(x_996.x, x_996.x, x_996.x) * vec3<f32>(x_998.x, x_998.y, x_998.z));
  let x_1001 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1000.x, x_1000.y, x_1000.z, x_1001.w);
  let x_1003 : vec3<f32> = u_xlat18;
  let x_1004 : vec3<f32> = u_xlat2;
  let x_1006 : vec4<f32> = u_xlat8;
  u_xlat18 = ((x_1003 * x_1004) + vec3<f32>(x_1006.x, x_1006.y, x_1006.z));
  let x_1009 : f32 = u_xlat44;
  let x_1011 : f32 = x_344.unity_LightData.z;
  u_xlat44 = (x_1009 * x_1011);
  let x_1013 : vec4<f32> = u_xlat1;
  let x_1016 : vec4<f32> = x_66.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_1013.x, x_1013.z, x_1013.w), vec3<f32>(x_1016.x, x_1016.y, x_1016.z));
  let x_1021 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1021, 0.0f, 1.0f);
  let x_1024 : f32 = u_xlat44;
  let x_1026 : f32 = u_xlat3.x;
  u_xlat44 = (x_1024 * x_1026);
  let x_1028 : f32 = u_xlat44;
  let x_1030 : vec4<f32> = u_xlat7;
  let x_1032 : vec3<f32> = (vec3<f32>(x_1028, x_1028, x_1028) * vec3<f32>(x_1030.x, x_1030.y, x_1030.z));
  let x_1033 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1032.x, x_1032.y, x_1032.z, x_1033.w);
  let x_1035 : vec3<f32> = u_xlat17;
  let x_1037 : vec4<f32> = x_66.x_MainLightPosition;
  let x_1039 : vec3<f32> = (x_1035 + vec3<f32>(x_1037.x, x_1037.y, x_1037.z));
  let x_1040 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1039.x, x_1039.y, x_1039.z, x_1040.w);
  let x_1042 : vec4<f32> = u_xlat8;
  let x_1044 : vec4<f32> = u_xlat8;
  u_xlat44 = dot(vec3<f32>(x_1042.x, x_1042.y, x_1042.z), vec3<f32>(x_1044.x, x_1044.y, x_1044.z));
  let x_1047 : f32 = u_xlat44;
  u_xlat44 = max(x_1047, 1.17549435e-37f);
  let x_1050 : f32 = u_xlat44;
  u_xlat44 = inverseSqrt(x_1050);
  let x_1052 : f32 = u_xlat44;
  let x_1054 : vec4<f32> = u_xlat8;
  let x_1056 : vec3<f32> = (vec3<f32>(x_1052, x_1052, x_1052) * vec3<f32>(x_1054.x, x_1054.y, x_1054.z));
  let x_1057 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1056.x, x_1056.y, x_1056.z, x_1057.w);
  let x_1059 : vec4<f32> = u_xlat1;
  let x_1061 : vec4<f32> = u_xlat8;
  u_xlat44 = dot(vec3<f32>(x_1059.x, x_1059.z, x_1059.w), vec3<f32>(x_1061.x, x_1061.y, x_1061.z));
  let x_1064 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1064, 0.0f, 1.0f);
  let x_1067 : vec4<f32> = x_66.x_MainLightPosition;
  let x_1069 : vec4<f32> = u_xlat8;
  u_xlat3.x = dot(vec3<f32>(x_1067.x, x_1067.y, x_1067.z), vec3<f32>(x_1069.x, x_1069.y, x_1069.z));
  let x_1074 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1074, 0.0f, 1.0f);
  let x_1077 : f32 = u_xlat44;
  let x_1078 : f32 = u_xlat44;
  u_xlat44 = (x_1077 * x_1078);
  let x_1080 : f32 = u_xlat44;
  let x_1082 : f32 = u_xlat19.x;
  u_xlat44 = ((x_1080 * x_1082) + 1.000010014f);
  let x_1087 : f32 = u_xlat3.x;
  let x_1089 : f32 = u_xlat3.x;
  u_xlat3.x = (x_1087 * x_1089);
  let x_1092 : f32 = u_xlat44;
  let x_1093 : f32 = u_xlat44;
  u_xlat44 = (x_1092 * x_1093);
  let x_1096 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_1096, 0.100000001f);
  let x_1100 : f32 = u_xlat44;
  let x_1102 : f32 = u_xlat3.x;
  u_xlat44 = (x_1100 * x_1102);
  let x_1104 : f32 = u_xlat20;
  let x_1105 : f32 = u_xlat44;
  u_xlat44 = (x_1104 * x_1105);
  let x_1107 : f32 = u_xlat6;
  let x_1108 : f32 = u_xlat44;
  u_xlat44 = (x_1107 / x_1108);
  let x_1110 : f32 = u_xlat44;
  let x_1114 : vec3<f32> = u_xlat2;
  let x_1115 : vec3<f32> = ((vec3<f32>(x_1110, x_1110, x_1110) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1114);
  let x_1116 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1115.x, x_1115.y, x_1115.z, x_1116.w);
  let x_1118 : vec4<f32> = u_xlat7;
  let x_1120 : vec4<f32> = u_xlat8;
  let x_1122 : vec3<f32> = (vec3<f32>(x_1118.x, x_1118.y, x_1118.z) * vec3<f32>(x_1120.x, x_1120.y, x_1120.z));
  let x_1123 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1122.x, x_1122.y, x_1122.z, x_1123.w);
  let x_1127 : f32 = x_66.x_AdditionalLightsCount.x;
  let x_1129 : f32 = x_344.unity_LightData.y;
  u_xlat44 = min(x_1127, x_1129);
  let x_1133 : f32 = u_xlat44;
  u_xlatu44 = bitcast<u32>(i32(x_1133));
  let x_1137 : f32 = x_734.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1139 : f32 = x_734.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1141 : f32 = x_734.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1143 : f32 = x_734.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1144 : vec4<f32> = vec4<f32>(x_1137, x_1139, x_1141, x_1143);
  let x_1150 : vec4<bool> = (vec4<f32>(x_1144.x, x_1144.y, x_1144.z, x_1144.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
  u_xlatb34 = vec2<bool>(x_1150.x, x_1150.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1161 : u32 = u_xlatu_loop_1;
    let x_1162 : u32 = u_xlatu44;
    if ((x_1161 < x_1162)) {
    } else {
      break;
    }
    let x_1165 : u32 = u_xlatu_loop_1;
    u_xlatu47 = (x_1165 >> 2u);
    let x_1169 : u32 = u_xlatu_loop_1;
    u_xlati49 = bitcast<i32>((x_1169 & 3u));
    let x_1172 : u32 = u_xlatu47;
    let x_1175 : vec4<f32> = x_344.unity_LightIndices[bitcast<i32>(x_1172)];
    let x_1185 : i32 = u_xlati49;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1190 : vec4<u32> = indexable[x_1185];
    u_xlat47 = dot(x_1175, bitcast<vec4<f32>>(x_1190));
    let x_1193 : f32 = u_xlat47;
    u_xlatu47 = bitcast<u32>(i32(x_1193));
    let x_1197 : vec3<f32> = vs_INTERP0;
    let x_1209 : u32 = u_xlatu47;
    let x_1212 : vec4<f32> = x_1208.x_AdditionalLightsPosition[bitcast<i32>(x_1209)];
    let x_1215 : u32 = u_xlatu47;
    let x_1218 : vec4<f32> = x_1208.x_AdditionalLightsPosition[bitcast<i32>(x_1215)];
    u_xlat9 = ((-(x_1197) * vec3<f32>(x_1212.w, x_1212.w, x_1212.w)) + vec3<f32>(x_1218.x, x_1218.y, x_1218.z));
    let x_1222 : vec3<f32> = u_xlat9;
    let x_1223 : vec3<f32> = u_xlat9;
    u_xlat49 = dot(x_1222, x_1223);
    let x_1225 : f32 = u_xlat49;
    u_xlat49 = max(x_1225, 6.10351562e-05f);
    let x_1229 : f32 = u_xlat49;
    u_xlat50 = inverseSqrt(x_1229);
    let x_1232 : f32 = u_xlat50;
    let x_1234 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1232, x_1232, x_1232) * x_1234);
    let x_1237 : f32 = u_xlat49;
    u_xlat51 = (1.0f / x_1237);
    let x_1239 : f32 = u_xlat49;
    let x_1240 : u32 = u_xlatu47;
    let x_1243 : f32 = x_1208.x_AdditionalLightsAttenuation[bitcast<i32>(x_1240)].x;
    u_xlat49 = (x_1239 * x_1243);
    let x_1245 : f32 = u_xlat49;
    let x_1247 : f32 = u_xlat49;
    u_xlat49 = ((-(x_1245) * x_1247) + 1.0f);
    let x_1250 : f32 = u_xlat49;
    u_xlat49 = max(x_1250, 0.0f);
    let x_1252 : f32 = u_xlat49;
    let x_1253 : f32 = u_xlat49;
    u_xlat49 = (x_1252 * x_1253);
    let x_1255 : f32 = u_xlat49;
    let x_1256 : f32 = u_xlat51;
    u_xlat49 = (x_1255 * x_1256);
    let x_1258 : u32 = u_xlatu47;
    let x_1261 : vec4<f32> = x_1208.x_AdditionalLightsSpotDir[bitcast<i32>(x_1258)];
    let x_1263 : vec3<f32> = u_xlat10;
    u_xlat51 = dot(vec3<f32>(x_1261.x, x_1261.y, x_1261.z), x_1263);
    let x_1265 : f32 = u_xlat51;
    let x_1266 : u32 = u_xlatu47;
    let x_1269 : f32 = x_1208.x_AdditionalLightsAttenuation[bitcast<i32>(x_1266)].z;
    let x_1271 : u32 = u_xlatu47;
    let x_1274 : f32 = x_1208.x_AdditionalLightsAttenuation[bitcast<i32>(x_1271)].w;
    u_xlat51 = ((x_1265 * x_1269) + x_1274);
    let x_1276 : f32 = u_xlat51;
    u_xlat51 = clamp(x_1276, 0.0f, 1.0f);
    let x_1278 : f32 = u_xlat51;
    let x_1279 : f32 = u_xlat51;
    u_xlat51 = (x_1278 * x_1279);
    let x_1281 : f32 = u_xlat49;
    let x_1282 : f32 = u_xlat51;
    u_xlat49 = (x_1281 * x_1282);
    let x_1285 : u32 = u_xlatu47;
    u_xlatu51 = (x_1285 >> 5u);
    let x_1288 : u32 = u_xlatu47;
    u_xlati52 = (1i << bitcast<u32>((bitcast<i32>(x_1288) & 31i)));
    let x_1294 : i32 = u_xlati52;
    let x_1296 : u32 = u_xlatu51;
    let x_1299 : f32 = x_734.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1296)].el;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_1294) & bitcast<u32>(x_1299)));
    let x_1303 : i32 = u_xlati51;
    if ((x_1303 != 0i)) {
      let x_1313 : u32 = u_xlatu47;
      let x_1316 : f32 = x_1312.x_AdditionalLightsLightTypes[bitcast<i32>(x_1313)].el;
      u_xlati51 = i32(x_1316);
      let x_1318 : i32 = u_xlati51;
      u_xlati52 = select(1i, 0i, (x_1318 != 0i));
      let x_1322 : u32 = u_xlatu47;
      u_xlati11 = (bitcast<i32>(x_1322) << bitcast<u32>(2i));
      let x_1325 : i32 = u_xlati52;
      if ((x_1325 != 0i)) {
        let x_1330 : vec3<f32> = vs_INTERP0;
        let x_1332 : i32 = u_xlati11;
        let x_1335 : i32 = u_xlati11;
        let x_1339 : vec4<f32> = x_1312.x_AdditionalLightsWorldToLights[((x_1332 + 1i) / 4i)][((x_1335 + 1i) % 4i)];
        u_xlat25 = (vec3<f32>(x_1330.y, x_1330.y, x_1330.y) * vec3<f32>(x_1339.x, x_1339.y, x_1339.w));
        let x_1342 : i32 = u_xlati11;
        let x_1344 : i32 = u_xlati11;
        let x_1347 : vec4<f32> = x_1312.x_AdditionalLightsWorldToLights[(x_1342 / 4i)][(x_1344 % 4i)];
        let x_1349 : vec3<f32> = vs_INTERP0;
        let x_1352 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1347.x, x_1347.y, x_1347.w) * vec3<f32>(x_1349.x, x_1349.x, x_1349.x)) + x_1352);
        let x_1354 : i32 = u_xlati11;
        let x_1357 : i32 = u_xlati11;
        let x_1361 : vec4<f32> = x_1312.x_AdditionalLightsWorldToLights[((x_1354 + 2i) / 4i)][((x_1357 + 2i) % 4i)];
        let x_1363 : vec3<f32> = vs_INTERP0;
        let x_1366 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1361.x, x_1361.y, x_1361.w) * vec3<f32>(x_1363.z, x_1363.z, x_1363.z)) + x_1366);
        let x_1368 : vec3<f32> = u_xlat25;
        let x_1369 : i32 = u_xlati11;
        let x_1372 : i32 = u_xlati11;
        let x_1376 : vec4<f32> = x_1312.x_AdditionalLightsWorldToLights[((x_1369 + 3i) / 4i)][((x_1372 + 3i) % 4i)];
        u_xlat25 = (x_1368 + vec3<f32>(x_1376.x, x_1376.y, x_1376.w));
        let x_1379 : vec3<f32> = u_xlat25;
        let x_1381 : vec3<f32> = u_xlat25;
        let x_1383 : vec2<f32> = (vec2<f32>(x_1379.x, x_1379.y) / vec2<f32>(x_1381.z, x_1381.z));
        let x_1384 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1383.x, x_1383.y, x_1384.z);
        let x_1386 : vec3<f32> = u_xlat25;
        let x_1389 : vec2<f32> = ((vec2<f32>(x_1386.x, x_1386.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1390 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1389.x, x_1389.y, x_1390.z);
        let x_1392 : vec3<f32> = u_xlat25;
        let x_1396 : vec2<f32> = clamp(vec2<f32>(x_1392.x, x_1392.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1397 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1396.x, x_1396.y, x_1397.z);
        let x_1399 : u32 = u_xlatu47;
        let x_1402 : vec4<f32> = x_1312.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1399)];
        let x_1404 : vec3<f32> = u_xlat25;
        let x_1407 : u32 = u_xlatu47;
        let x_1410 : vec4<f32> = x_1312.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1407)];
        let x_1412 : vec2<f32> = ((vec2<f32>(x_1402.x, x_1402.y) * vec2<f32>(x_1404.x, x_1404.y)) + vec2<f32>(x_1410.z, x_1410.w));
        let x_1413 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1412.x, x_1412.y, x_1413.z);
      } else {
        let x_1417 : i32 = u_xlati51;
        u_xlatb51 = (x_1417 == 1i);
        let x_1419 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_1419);
        let x_1421 : i32 = u_xlati51;
        if ((x_1421 != 0i)) {
          let x_1426 : vec3<f32> = vs_INTERP0;
          let x_1428 : i32 = u_xlati11;
          let x_1431 : i32 = u_xlati11;
          let x_1435 : vec4<f32> = x_1312.x_AdditionalLightsWorldToLights[((x_1428 + 1i) / 4i)][((x_1431 + 1i) % 4i)];
          let x_1437 : vec2<f32> = (vec2<f32>(x_1426.y, x_1426.y) * vec2<f32>(x_1435.x, x_1435.y));
          let x_1438 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1437.x, x_1437.y, x_1438.z, x_1438.w);
          let x_1440 : i32 = u_xlati11;
          let x_1442 : i32 = u_xlati11;
          let x_1445 : vec4<f32> = x_1312.x_AdditionalLightsWorldToLights[(x_1440 / 4i)][(x_1442 % 4i)];
          let x_1447 : vec3<f32> = vs_INTERP0;
          let x_1450 : vec4<f32> = u_xlat12;
          let x_1452 : vec2<f32> = ((vec2<f32>(x_1445.x, x_1445.y) * vec2<f32>(x_1447.x, x_1447.x)) + vec2<f32>(x_1450.x, x_1450.y));
          let x_1453 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1452.x, x_1452.y, x_1453.z, x_1453.w);
          let x_1455 : i32 = u_xlati11;
          let x_1458 : i32 = u_xlati11;
          let x_1462 : vec4<f32> = x_1312.x_AdditionalLightsWorldToLights[((x_1455 + 2i) / 4i)][((x_1458 + 2i) % 4i)];
          let x_1464 : vec3<f32> = vs_INTERP0;
          let x_1467 : vec4<f32> = u_xlat12;
          let x_1469 : vec2<f32> = ((vec2<f32>(x_1462.x, x_1462.y) * vec2<f32>(x_1464.z, x_1464.z)) + vec2<f32>(x_1467.x, x_1467.y));
          let x_1470 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1469.x, x_1469.y, x_1470.z, x_1470.w);
          let x_1472 : vec4<f32> = u_xlat12;
          let x_1474 : i32 = u_xlati11;
          let x_1477 : i32 = u_xlati11;
          let x_1481 : vec4<f32> = x_1312.x_AdditionalLightsWorldToLights[((x_1474 + 3i) / 4i)][((x_1477 + 3i) % 4i)];
          let x_1483 : vec2<f32> = (vec2<f32>(x_1472.x, x_1472.y) + vec2<f32>(x_1481.x, x_1481.y));
          let x_1484 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1483.x, x_1483.y, x_1484.z, x_1484.w);
          let x_1486 : vec4<f32> = u_xlat12;
          let x_1489 : vec2<f32> = ((vec2<f32>(x_1486.x, x_1486.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1490 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1489.x, x_1489.y, x_1490.z, x_1490.w);
          let x_1492 : vec4<f32> = u_xlat12;
          let x_1494 : vec2<f32> = fract(vec2<f32>(x_1492.x, x_1492.y));
          let x_1495 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1494.x, x_1494.y, x_1495.z, x_1495.w);
          let x_1497 : u32 = u_xlatu47;
          let x_1500 : vec4<f32> = x_1312.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1497)];
          let x_1502 : vec4<f32> = u_xlat12;
          let x_1505 : u32 = u_xlatu47;
          let x_1508 : vec4<f32> = x_1312.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1505)];
          let x_1510 : vec2<f32> = ((vec2<f32>(x_1500.x, x_1500.y) * vec2<f32>(x_1502.x, x_1502.y)) + vec2<f32>(x_1508.z, x_1508.w));
          let x_1511 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1510.x, x_1510.y, x_1511.z);
        } else {
          let x_1514 : vec3<f32> = vs_INTERP0;
          let x_1516 : i32 = u_xlati11;
          let x_1519 : i32 = u_xlati11;
          let x_1523 : vec4<f32> = x_1312.x_AdditionalLightsWorldToLights[((x_1516 + 1i) / 4i)][((x_1519 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1514.y, x_1514.y, x_1514.y, x_1514.y) * x_1523);
          let x_1525 : i32 = u_xlati11;
          let x_1527 : i32 = u_xlati11;
          let x_1530 : vec4<f32> = x_1312.x_AdditionalLightsWorldToLights[(x_1525 / 4i)][(x_1527 % 4i)];
          let x_1531 : vec3<f32> = vs_INTERP0;
          let x_1534 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1530 * vec4<f32>(x_1531.x, x_1531.x, x_1531.x, x_1531.x)) + x_1534);
          let x_1536 : i32 = u_xlati11;
          let x_1539 : i32 = u_xlati11;
          let x_1543 : vec4<f32> = x_1312.x_AdditionalLightsWorldToLights[((x_1536 + 2i) / 4i)][((x_1539 + 2i) % 4i)];
          let x_1544 : vec3<f32> = vs_INTERP0;
          let x_1547 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1543 * vec4<f32>(x_1544.z, x_1544.z, x_1544.z, x_1544.z)) + x_1547);
          let x_1549 : vec4<f32> = u_xlat12;
          let x_1550 : i32 = u_xlati11;
          let x_1553 : i32 = u_xlati11;
          let x_1557 : vec4<f32> = x_1312.x_AdditionalLightsWorldToLights[((x_1550 + 3i) / 4i)][((x_1553 + 3i) % 4i)];
          u_xlat12 = (x_1549 + x_1557);
          let x_1559 : vec4<f32> = u_xlat12;
          let x_1561 : vec4<f32> = u_xlat12;
          let x_1563 : vec3<f32> = (vec3<f32>(x_1559.x, x_1559.y, x_1559.z) / vec3<f32>(x_1561.w, x_1561.w, x_1561.w));
          let x_1564 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1563.x, x_1563.y, x_1563.z, x_1564.w);
          let x_1566 : vec4<f32> = u_xlat12;
          let x_1568 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(vec3<f32>(x_1566.x, x_1566.y, x_1566.z), vec3<f32>(x_1568.x, x_1568.y, x_1568.z));
          let x_1571 : f32 = u_xlat51;
          u_xlat51 = inverseSqrt(x_1571);
          let x_1573 : f32 = u_xlat51;
          let x_1575 : vec4<f32> = u_xlat12;
          let x_1577 : vec3<f32> = (vec3<f32>(x_1573, x_1573, x_1573) * vec3<f32>(x_1575.x, x_1575.y, x_1575.z));
          let x_1578 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1577.x, x_1577.y, x_1577.z, x_1578.w);
          let x_1580 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(abs(vec3<f32>(x_1580.x, x_1580.y, x_1580.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1585 : f32 = u_xlat51;
          u_xlat51 = max(x_1585, 0.000001f);
          let x_1588 : f32 = u_xlat51;
          u_xlat51 = (1.0f / x_1588);
          let x_1591 : f32 = u_xlat51;
          let x_1593 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1591, x_1591, x_1591) * vec3<f32>(x_1593.z, x_1593.x, x_1593.y));
          let x_1597 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1597);
          let x_1601 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1601, 0.0f, 1.0f);
          let x_1606 : vec3<f32> = u_xlat13;
          let x_1609 : vec4<bool> = (vec4<f32>(x_1606.y, x_1606.y, x_1606.y, x_1606.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1610 : vec2<bool> = vec2<bool>(x_1609.x, x_1609.w);
          let x_1611 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_1610.x, x_1611.y, x_1611.z, x_1610.y);
          let x_1615 : bool = u_xlatb11.x;
          if (x_1615) {
            let x_1620 : f32 = u_xlat13.x;
            x_1616 = x_1620;
          } else {
            let x_1623 : f32 = u_xlat13.x;
            x_1616 = -(x_1623);
          }
          let x_1625 : f32 = x_1616;
          u_xlat11.x = x_1625;
          let x_1628 : bool = u_xlatb11.w;
          if (x_1628) {
            let x_1633 : f32 = u_xlat13.x;
            x_1629 = x_1633;
          } else {
            let x_1636 : f32 = u_xlat13.x;
            x_1629 = -(x_1636);
          }
          let x_1638 : f32 = x_1629;
          u_xlat11.w = x_1638;
          let x_1640 : vec4<f32> = u_xlat12;
          let x_1642 : f32 = u_xlat51;
          let x_1645 : vec4<f32> = u_xlat11;
          let x_1647 : vec2<f32> = ((vec2<f32>(x_1640.x, x_1640.y) * vec2<f32>(x_1642, x_1642)) + vec2<f32>(x_1645.x, x_1645.w));
          let x_1648 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1647.x, x_1648.y, x_1648.z, x_1647.y);
          let x_1650 : vec4<f32> = u_xlat11;
          let x_1653 : vec2<f32> = ((vec2<f32>(x_1650.x, x_1650.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1654 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1653.x, x_1654.y, x_1654.z, x_1653.y);
          let x_1656 : vec4<f32> = u_xlat11;
          let x_1660 : vec2<f32> = clamp(vec2<f32>(x_1656.x, x_1656.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1661 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1660.x, x_1661.y, x_1661.z, x_1660.y);
          let x_1663 : u32 = u_xlatu47;
          let x_1666 : vec4<f32> = x_1312.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1663)];
          let x_1668 : vec4<f32> = u_xlat11;
          let x_1671 : u32 = u_xlatu47;
          let x_1674 : vec4<f32> = x_1312.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1671)];
          let x_1676 : vec2<f32> = ((vec2<f32>(x_1666.x, x_1666.y) * vec2<f32>(x_1668.x, x_1668.w)) + vec2<f32>(x_1674.z, x_1674.w));
          let x_1677 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1676.x, x_1676.y, x_1677.z);
        }
      }
      let x_1684 : vec3<f32> = u_xlat25;
      let x_1687 : f32 = x_66.x_GlobalMipBias.x;
      let x_1688 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1684.x, x_1684.y), x_1687);
      u_xlat11 = x_1688;
      let x_1690 : bool = u_xlatb34.y;
      if (x_1690) {
        let x_1695 : f32 = u_xlat11.w;
        x_1691 = x_1695;
      } else {
        let x_1698 : f32 = u_xlat11.x;
        x_1691 = x_1698;
      }
      let x_1699 : f32 = x_1691;
      u_xlat51 = x_1699;
      let x_1701 : bool = u_xlatb34.x;
      if (x_1701) {
        let x_1705 : vec4<f32> = u_xlat11;
        x_1702 = vec3<f32>(x_1705.x, x_1705.y, x_1705.z);
      } else {
        let x_1708 : f32 = u_xlat51;
        x_1702 = vec3<f32>(x_1708, x_1708, x_1708);
      }
      let x_1710 : vec3<f32> = x_1702;
      let x_1711 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1710.x, x_1710.y, x_1710.z, x_1711.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1717 : vec4<f32> = u_xlat11;
    let x_1719 : u32 = u_xlatu47;
    let x_1722 : vec4<f32> = x_1208.x_AdditionalLightsColor[bitcast<i32>(x_1719)];
    let x_1724 : vec3<f32> = (vec3<f32>(x_1717.x, x_1717.y, x_1717.z) * vec3<f32>(x_1722.x, x_1722.y, x_1722.z));
    let x_1725 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1724.x, x_1724.y, x_1724.z, x_1725.w);
    let x_1727 : f32 = u_xlat33;
    let x_1729 : vec4<f32> = u_xlat11;
    let x_1731 : vec3<f32> = (vec3<f32>(x_1727, x_1727, x_1727) * vec3<f32>(x_1729.x, x_1729.y, x_1729.z));
    let x_1732 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1731.x, x_1731.y, x_1731.z, x_1732.w);
    let x_1734 : vec4<f32> = u_xlat1;
    let x_1736 : vec3<f32> = u_xlat10;
    u_xlat47 = dot(vec3<f32>(x_1734.x, x_1734.z, x_1734.w), x_1736);
    let x_1738 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1738, 0.0f, 1.0f);
    let x_1740 : f32 = u_xlat47;
    let x_1741 : f32 = u_xlat49;
    u_xlat47 = (x_1740 * x_1741);
    let x_1743 : f32 = u_xlat47;
    let x_1745 : vec4<f32> = u_xlat11;
    let x_1747 : vec3<f32> = (vec3<f32>(x_1743, x_1743, x_1743) * vec3<f32>(x_1745.x, x_1745.y, x_1745.z));
    let x_1748 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1747.x, x_1747.y, x_1747.z, x_1748.w);
    let x_1750 : vec3<f32> = u_xlat9;
    let x_1751 : f32 = u_xlat50;
    let x_1754 : vec3<f32> = u_xlat17;
    u_xlat9 = ((x_1750 * vec3<f32>(x_1751, x_1751, x_1751)) + x_1754);
    let x_1756 : vec3<f32> = u_xlat9;
    let x_1757 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1756, x_1757);
    let x_1759 : f32 = u_xlat47;
    u_xlat47 = max(x_1759, 1.17549435e-37f);
    let x_1761 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_1761);
    let x_1763 : f32 = u_xlat47;
    let x_1765 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1763, x_1763, x_1763) * x_1765);
    let x_1767 : vec4<f32> = u_xlat1;
    let x_1769 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_1767.x, x_1767.z, x_1767.w), x_1769);
    let x_1771 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1771, 0.0f, 1.0f);
    let x_1773 : vec3<f32> = u_xlat10;
    let x_1774 : vec3<f32> = u_xlat9;
    u_xlat49 = dot(x_1773, x_1774);
    let x_1776 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1776, 0.0f, 1.0f);
    let x_1778 : f32 = u_xlat47;
    let x_1779 : f32 = u_xlat47;
    u_xlat47 = (x_1778 * x_1779);
    let x_1781 : f32 = u_xlat47;
    let x_1783 : f32 = u_xlat19.x;
    u_xlat47 = ((x_1781 * x_1783) + 1.000010014f);
    let x_1786 : f32 = u_xlat49;
    let x_1787 : f32 = u_xlat49;
    u_xlat49 = (x_1786 * x_1787);
    let x_1789 : f32 = u_xlat47;
    let x_1790 : f32 = u_xlat47;
    u_xlat47 = (x_1789 * x_1790);
    let x_1792 : f32 = u_xlat49;
    u_xlat49 = max(x_1792, 0.100000001f);
    let x_1794 : f32 = u_xlat47;
    let x_1795 : f32 = u_xlat49;
    u_xlat47 = (x_1794 * x_1795);
    let x_1797 : f32 = u_xlat20;
    let x_1798 : f32 = u_xlat47;
    u_xlat47 = (x_1797 * x_1798);
    let x_1800 : f32 = u_xlat6;
    let x_1801 : f32 = u_xlat47;
    u_xlat47 = (x_1800 / x_1801);
    let x_1803 : f32 = u_xlat47;
    let x_1806 : vec3<f32> = u_xlat2;
    u_xlat9 = ((vec3<f32>(x_1803, x_1803, x_1803) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1806);
    let x_1808 : vec3<f32> = u_xlat9;
    let x_1809 : vec4<f32> = u_xlat11;
    let x_1812 : vec4<f32> = u_xlat8;
    let x_1814 : vec3<f32> = ((x_1808 * vec3<f32>(x_1809.x, x_1809.y, x_1809.z)) + vec3<f32>(x_1812.x, x_1812.y, x_1812.z));
    let x_1815 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1814.x, x_1814.y, x_1814.z, x_1815.w);

    continuing {
      let x_1817 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1817 + bitcast<u32>(1i));
    }
  }
  let x_1819 : vec3<f32> = u_xlat18;
  let x_1820 : vec3<f32> = u_xlat5;
  let x_1823 : vec4<f32> = u_xlat7;
  let x_1825 : vec3<f32> = ((x_1819 * vec3<f32>(x_1820.x, x_1820.x, x_1820.x)) + vec3<f32>(x_1823.x, x_1823.y, x_1823.z));
  let x_1826 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1825.x, x_1826.y, x_1825.y, x_1825.z);
  let x_1828 : vec4<f32> = u_xlat8;
  let x_1830 : vec4<f32> = u_xlat1;
  let x_1832 : vec3<f32> = (vec3<f32>(x_1828.x, x_1828.y, x_1828.z) + vec3<f32>(x_1830.x, x_1830.z, x_1830.w));
  let x_1833 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1832.x, x_1833.y, x_1832.y, x_1832.z);
  let x_1835 : vec4<f32> = vs_INTERP4;
  let x_1837 : vec3<f32> = u_xlat0;
  let x_1839 : vec4<f32> = u_xlat1;
  u_xlat0 = ((vec3<f32>(x_1835.w, x_1835.w, x_1835.w) * x_1837) + vec3<f32>(x_1839.x, x_1839.z, x_1839.w));
  let x_1843 : f32 = u_xlat4.x;
  let x_1845 : f32 = u_xlat4.x;
  u_xlat1.x = (x_1843 * -(x_1845));
  let x_1850 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1850);
  let x_1853 : vec3<f32> = u_xlat0;
  let x_1856 : vec4<f32> = x_66.unity_FogColor;
  u_xlat0 = (x_1853 + -(vec3<f32>(x_1856.x, x_1856.y, x_1856.z)));
  let x_1862 : vec4<f32> = u_xlat1;
  let x_1864 : vec3<f32> = u_xlat0;
  let x_1867 : vec4<f32> = x_66.unity_FogColor;
  let x_1869 : vec3<f32> = ((vec3<f32>(x_1862.x, x_1862.x, x_1862.x) * x_1864) + vec3<f32>(x_1867.x, x_1867.y, x_1867.z));
  let x_1870 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1869.x, x_1869.y, x_1869.z, x_1870.w);
  let x_1872 : bool = u_xlatb15;
  let x_1873 : f32 = u_xlat42;
  SV_Target0.w = select(1.0f, x_1873, x_1872);
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

