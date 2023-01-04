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

@group(1) @binding(4) var<uniform> x_729 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1187 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1290 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var x_814 : f32;
  var x_825 : vec3<f32>;
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
  var x_1585 : f32;
  var x_1598 : f32;
  var x_1650 : f32;
  var x_1661 : vec3<f32>;
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
  let x_504 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_501, x_503);
  u_xlat4 = x_504;
  let x_509 : vec2<f32> = vs_INTERP5;
  let x_511 : f32 = x_66.x_GlobalMipBias.x;
  let x_512 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_509, x_511);
  u_xlat17 = vec3<f32>(x_512.x, x_512.y, x_512.z);
  let x_514 : vec4<f32> = u_xlat4;
  let x_518 : vec3<f32> = (vec3<f32>(x_514.x, x_514.y, x_514.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_519 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_518.x, x_518.y, x_518.z, x_519.w);
  let x_521 : vec4<f32> = u_xlat1;
  let x_523 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_521.x, x_521.z, x_521.w), vec3<f32>(x_523.x, x_523.y, x_523.z));
  let x_528 : f32 = u_xlat4.x;
  u_xlat4.x = (x_528 + 0.5f);
  let x_531 : vec3<f32> = u_xlat17;
  let x_532 : vec4<f32> = u_xlat4;
  u_xlat17 = (x_531 * vec3<f32>(x_532.x, x_532.x, x_532.x));
  let x_536 : f32 = u_xlat4.w;
  u_xlat4.x = max(x_536, 0.0001f);
  let x_539 : vec3<f32> = u_xlat17;
  let x_540 : vec4<f32> = u_xlat4;
  u_xlat17 = (x_539 / vec3<f32>(x_540.x, x_540.x, x_540.x));
  let x_545 : vec4<f32> = x_66.x_ScaledScreenParams;
  let x_546 : vec2<f32> = vec2<f32>(x_545.x, x_545.y);
  let x_550 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_546.x, x_546.y));
  let x_551 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_550.x, x_550.y, x_551.z, x_551.w);
  let x_553 : vec4<f32> = u_xlat4;
  let x_555 : vec4<f32> = hlslcc_FragCoord;
  let x_557 : vec2<f32> = (vec2<f32>(x_553.x, x_553.y) * vec2<f32>(x_555.x, x_555.y));
  let x_558 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_557.x, x_557.y, x_558.z, x_558.w);
  let x_562 : f32 = u_xlat4.y;
  let x_565 : f32 = x_66.x_ScaleBiasRt.x;
  let x_568 : f32 = x_66.x_ScaleBiasRt.y;
  u_xlat18.x = ((x_562 * x_565) + x_568);
  let x_572 : f32 = u_xlat18.x;
  u_xlat4.z = (-(x_572) + 1.0f);
  let x_577 : f32 = u_xlat3.x;
  u_xlat3.x = x_577;
  let x_580 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_580, 0.0f, 1.0f);
  let x_583 : f32 = u_xlat42;
  u_xlat42 = min(x_583, 1.0f);
  let x_585 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_585 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_590 : f32 = u_xlat3.x;
  u_xlat18.x = (-(x_590) + 1.0f);
  let x_596 : f32 = u_xlat18.x;
  let x_598 : f32 = u_xlat18.x;
  u_xlat46 = (x_596 * x_598);
  let x_600 : f32 = u_xlat46;
  u_xlat46 = max(x_600, 0.0078125f);
  let x_604 : f32 = u_xlat46;
  let x_605 : f32 = u_xlat46;
  u_xlat47 = (x_604 * x_605);
  let x_608 : f32 = u_xlat3.x;
  u_xlat3.x = (x_608 + 0.040000021f);
  let x_613 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_613, 1.0f);
  let x_617 : f32 = u_xlat46;
  u_xlat6 = ((x_617 * 4.0f) + 2.0f);
  let x_626 : vec4<f32> = u_xlat4;
  let x_629 : f32 = x_66.x_GlobalMipBias.x;
  let x_630 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_626.x, x_626.z), x_629);
  u_xlat4.x = x_630.x;
  let x_635 : f32 = u_xlat4.x;
  u_xlat32 = (x_635 + -1.0f);
  let x_639 : f32 = x_66.x_AmbientOcclusionParam.w;
  let x_640 : f32 = u_xlat32;
  u_xlat32 = ((x_639 * x_640) + 1.0f);
  let x_644 : f32 = u_xlat4.x;
  let x_646 : f32 = vs_INTERP4.w;
  u_xlat4.x = min(x_644, x_646);
  let x_651 : vec4<f32> = vs_INTERP9;
  let x_652 : vec2<f32> = vec2<f32>(x_651.x, x_651.y);
  let x_654 : f32 = vs_INTERP9.z;
  txVec1 = vec3<f32>(x_652.x, x_652.y, x_654);
  let x_662 : vec3<f32> = txVec1;
  let x_664 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_662.xy, x_662.z);
  u_xlat20.x = x_664;
  let x_667 : f32 = u_xlat20.x;
  let x_669 : f32 = x_139.x_MainLightShadowParams.x;
  let x_671 : f32 = u_xlat44;
  u_xlat44 = ((x_667 * x_669) + x_671);
  let x_677 : f32 = vs_INTERP9.z;
  u_xlatb20.x = (0.0f >= x_677);
  let x_682 : f32 = vs_INTERP9.z;
  u_xlatb34 = (x_682 >= 1.0f);
  let x_684 : bool = u_xlatb34;
  let x_686 : bool = u_xlatb20.x;
  u_xlatb20.x = (x_684 | x_686);
  let x_690 : bool = u_xlatb20.x;
  let x_691 : f32 = u_xlat44;
  u_xlat44 = select(x_691, 1.0f, x_690);
  let x_693 : vec3<f32> = vs_INTERP0;
  let x_695 : vec3<f32> = x_66.x_WorldSpaceCameraPos;
  u_xlat20 = (x_693 + -(x_695));
  let x_698 : vec3<f32> = u_xlat20;
  let x_699 : vec3<f32> = u_xlat20;
  u_xlat20.x = dot(x_698, x_699);
  let x_703 : f32 = u_xlat20.x;
  let x_705 : f32 = x_139.x_MainLightShadowParams.z;
  let x_708 : f32 = x_139.x_MainLightShadowParams.w;
  u_xlat20.x = ((x_703 * x_705) + x_708);
  let x_712 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_712, 0.0f, 1.0f);
  let x_716 : f32 = u_xlat44;
  u_xlat34 = (-(x_716) + 1.0f);
  let x_720 : f32 = u_xlat20.x;
  let x_721 : f32 = u_xlat34;
  let x_723 : f32 = u_xlat44;
  u_xlat44 = ((x_720 * x_721) + x_723);
  let x_731 : f32 = x_729.x_MainLightCookieTextureFormat;
  u_xlatb20.x = !((x_731 == -1.0f));
  let x_735 : bool = u_xlatb20.x;
  if (x_735) {
    let x_738 : vec3<f32> = vs_INTERP0;
    let x_741 : vec4<f32> = x_729.x_MainLightWorldToLight[1i];
    let x_743 : vec2<f32> = (vec2<f32>(x_738.y, x_738.y) * vec2<f32>(x_741.x, x_741.y));
    let x_744 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_743.x, x_743.y, x_744.z);
    let x_747 : vec4<f32> = x_729.x_MainLightWorldToLight[0i];
    let x_749 : vec3<f32> = vs_INTERP0;
    let x_752 : vec3<f32> = u_xlat20;
    let x_754 : vec2<f32> = ((vec2<f32>(x_747.x, x_747.y) * vec2<f32>(x_749.x, x_749.x)) + vec2<f32>(x_752.x, x_752.y));
    let x_755 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_754.x, x_754.y, x_755.z);
    let x_758 : vec4<f32> = x_729.x_MainLightWorldToLight[2i];
    let x_760 : vec3<f32> = vs_INTERP0;
    let x_763 : vec3<f32> = u_xlat20;
    let x_765 : vec2<f32> = ((vec2<f32>(x_758.x, x_758.y) * vec2<f32>(x_760.z, x_760.z)) + vec2<f32>(x_763.x, x_763.y));
    let x_766 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_765.x, x_765.y, x_766.z);
    let x_768 : vec3<f32> = u_xlat20;
    let x_771 : vec4<f32> = x_729.x_MainLightWorldToLight[3i];
    let x_773 : vec2<f32> = (vec2<f32>(x_768.x, x_768.y) + vec2<f32>(x_771.x, x_771.y));
    let x_774 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_773.x, x_773.y, x_774.z);
    let x_776 : vec3<f32> = u_xlat20;
    let x_780 : vec2<f32> = ((vec2<f32>(x_776.x, x_776.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_781 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_780.x, x_780.y, x_781.z);
    let x_789 : vec3<f32> = u_xlat20;
    let x_792 : f32 = x_66.x_GlobalMipBias.x;
    let x_793 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_789.x, x_789.y), x_792);
    u_xlat7 = x_793;
    let x_795 : f32 = x_729.x_MainLightCookieTextureFormat;
    let x_797 : f32 = x_729.x_MainLightCookieTextureFormat;
    let x_799 : f32 = x_729.x_MainLightCookieTextureFormat;
    let x_801 : f32 = x_729.x_MainLightCookieTextureFormat;
    let x_802 : vec4<f32> = vec4<f32>(x_795, x_797, x_799, x_801);
    let x_810 : vec4<bool> = (vec4<f32>(x_802.x, x_802.y, x_802.z, x_802.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb20 = vec2<bool>(x_810.x, x_810.y);
    let x_813 : bool = u_xlatb20.y;
    if (x_813) {
      let x_818 : f32 = u_xlat7.w;
      x_814 = x_818;
    } else {
      let x_821 : f32 = u_xlat7.x;
      x_814 = x_821;
    }
    let x_822 : f32 = x_814;
    u_xlat34 = x_822;
    let x_824 : bool = u_xlatb20.x;
    if (x_824) {
      let x_828 : vec4<f32> = u_xlat7;
      x_825 = vec3<f32>(x_828.x, x_828.y, x_828.z);
    } else {
      let x_831 : f32 = u_xlat34;
      x_825 = vec3<f32>(x_831, x_831, x_831);
    }
    let x_833 : vec3<f32> = x_825;
    u_xlat20 = x_833;
  } else {
    u_xlat20.x = 1.0f;
    u_xlat20.y = 1.0f;
    u_xlat20.z = 1.0f;
  }
  let x_838 : vec3<f32> = u_xlat20;
  let x_840 : vec4<f32> = x_66.x_MainLightColor;
  u_xlat20 = (x_838 * vec3<f32>(x_840.x, x_840.y, x_840.z));
  let x_843 : f32 = u_xlat32;
  let x_845 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_843, x_843, x_843) * x_845);
  let x_847 : vec3<f32> = u_xlat5;
  let x_849 : vec4<f32> = u_xlat1;
  u_xlat7.x = dot(-(x_847), vec3<f32>(x_849.x, x_849.z, x_849.w));
  let x_854 : f32 = u_xlat7.x;
  let x_856 : f32 = u_xlat7.x;
  u_xlat7.x = (x_854 + x_856);
  let x_859 : vec4<f32> = u_xlat1;
  let x_861 : vec4<f32> = u_xlat7;
  let x_865 : vec3<f32> = u_xlat5;
  let x_867 : vec3<f32> = ((vec3<f32>(x_859.x, x_859.z, x_859.w) * -(vec3<f32>(x_861.x, x_861.x, x_861.x))) + -(x_865));
  let x_868 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_867.x, x_867.y, x_867.z, x_868.w);
  let x_871 : vec4<f32> = u_xlat1;
  let x_873 : vec3<f32> = u_xlat5;
  u_xlat49 = dot(vec3<f32>(x_871.x, x_871.z, x_871.w), x_873);
  let x_875 : f32 = u_xlat49;
  u_xlat49 = clamp(x_875, 0.0f, 1.0f);
  let x_877 : f32 = u_xlat49;
  u_xlat49 = (-(x_877) + 1.0f);
  let x_880 : f32 = u_xlat49;
  let x_881 : f32 = u_xlat49;
  u_xlat49 = (x_880 * x_881);
  let x_883 : f32 = u_xlat49;
  let x_884 : f32 = u_xlat49;
  u_xlat49 = (x_883 * x_884);
  let x_888 : f32 = u_xlat18.x;
  u_xlat8.x = ((-(x_888) * 0.699999988f) + 1.700000048f);
  let x_896 : f32 = u_xlat18.x;
  let x_898 : f32 = u_xlat8.x;
  u_xlat18.x = (x_896 * x_898);
  let x_902 : f32 = u_xlat18.x;
  u_xlat18.x = (x_902 * 6.0f);
  let x_914 : vec4<f32> = u_xlat7;
  let x_917 : f32 = u_xlat18.x;
  let x_918 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_914.x, x_914.y, x_914.z), x_917);
  u_xlat8 = x_918;
  let x_920 : f32 = u_xlat8.w;
  u_xlat18.x = (x_920 + -1.0f);
  let x_924 : f32 = x_344.unity_SpecCube0_HDR.w;
  let x_926 : f32 = u_xlat18.x;
  u_xlat18.x = ((x_924 * x_926) + 1.0f);
  let x_931 : f32 = u_xlat18.x;
  u_xlat18.x = max(x_931, 0.0f);
  let x_935 : f32 = u_xlat18.x;
  u_xlat18.x = log2(x_935);
  let x_939 : f32 = u_xlat18.x;
  let x_941 : f32 = x_344.unity_SpecCube0_HDR.y;
  u_xlat18.x = (x_939 * x_941);
  let x_945 : f32 = u_xlat18.x;
  u_xlat18.x = exp2(x_945);
  let x_949 : f32 = u_xlat18.x;
  let x_951 : f32 = x_344.unity_SpecCube0_HDR.x;
  u_xlat18.x = (x_949 * x_951);
  let x_954 : vec4<f32> = u_xlat8;
  let x_956 : vec3<f32> = u_xlat18;
  let x_958 : vec3<f32> = (vec3<f32>(x_954.x, x_954.y, x_954.z) * vec3<f32>(x_956.x, x_956.x, x_956.x));
  let x_959 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_958.x, x_958.y, x_958.z, x_959.w);
  let x_961 : f32 = u_xlat46;
  let x_963 : f32 = u_xlat46;
  let x_967 : vec2<f32> = ((vec2<f32>(x_961, x_961) * vec2<f32>(x_963, x_963)) + vec2<f32>(-1.0f, 1.0f));
  let x_968 : vec3<f32> = u_xlat18;
  u_xlat18 = vec3<f32>(x_967.x, x_968.y, x_967.y);
  let x_971 : f32 = u_xlat18.z;
  u_xlat46 = (1.0f / x_971);
  let x_974 : f32 = u_xlat3.x;
  u_xlat3.x = (x_974 + -0.039999999f);
  let x_978 : f32 = u_xlat49;
  let x_980 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_978 * x_980) + 0.039999999f);
  let x_986 : f32 = u_xlat3.x;
  let x_987 : f32 = u_xlat46;
  u_xlat3.x = (x_986 * x_987);
  let x_990 : vec4<f32> = u_xlat3;
  let x_992 : vec4<f32> = u_xlat7;
  let x_994 : vec3<f32> = (vec3<f32>(x_990.x, x_990.x, x_990.x) * vec3<f32>(x_992.x, x_992.y, x_992.z));
  let x_995 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_994.x, x_994.y, x_994.z, x_995.w);
  let x_997 : vec3<f32> = u_xlat17;
  let x_998 : vec3<f32> = u_xlat2;
  let x_1000 : vec4<f32> = u_xlat7;
  let x_1002 : vec3<f32> = ((x_997 * x_998) + vec3<f32>(x_1000.x, x_1000.y, x_1000.z));
  let x_1003 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1002.x, x_1002.y, x_1002.z, x_1003.w);
  let x_1005 : f32 = u_xlat44;
  let x_1007 : f32 = x_344.unity_LightData.z;
  u_xlat44 = (x_1005 * x_1007);
  let x_1010 : vec4<f32> = u_xlat1;
  let x_1013 : vec4<f32> = x_66.x_MainLightPosition;
  u_xlat45 = dot(vec3<f32>(x_1010.x, x_1010.z, x_1010.w), vec3<f32>(x_1013.x, x_1013.y, x_1013.z));
  let x_1016 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1016, 0.0f, 1.0f);
  let x_1018 : f32 = u_xlat44;
  let x_1019 : f32 = u_xlat45;
  u_xlat44 = (x_1018 * x_1019);
  let x_1021 : f32 = u_xlat44;
  let x_1023 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_1021, x_1021, x_1021) * x_1023);
  let x_1025 : vec3<f32> = u_xlat5;
  let x_1027 : vec4<f32> = x_66.x_MainLightPosition;
  let x_1029 : vec3<f32> = (x_1025 + vec3<f32>(x_1027.x, x_1027.y, x_1027.z));
  let x_1030 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1029.x, x_1029.y, x_1029.z, x_1030.w);
  let x_1032 : vec4<f32> = u_xlat7;
  let x_1034 : vec4<f32> = u_xlat7;
  u_xlat44 = dot(vec3<f32>(x_1032.x, x_1032.y, x_1032.z), vec3<f32>(x_1034.x, x_1034.y, x_1034.z));
  let x_1037 : f32 = u_xlat44;
  u_xlat44 = max(x_1037, 1.17549435e-37f);
  let x_1040 : f32 = u_xlat44;
  u_xlat44 = inverseSqrt(x_1040);
  let x_1042 : f32 = u_xlat44;
  let x_1044 : vec4<f32> = u_xlat7;
  let x_1046 : vec3<f32> = (vec3<f32>(x_1042, x_1042, x_1042) * vec3<f32>(x_1044.x, x_1044.y, x_1044.z));
  let x_1047 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1046.x, x_1046.y, x_1046.z, x_1047.w);
  let x_1049 : vec4<f32> = u_xlat1;
  let x_1051 : vec4<f32> = u_xlat7;
  u_xlat44 = dot(vec3<f32>(x_1049.x, x_1049.z, x_1049.w), vec3<f32>(x_1051.x, x_1051.y, x_1051.z));
  let x_1054 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1054, 0.0f, 1.0f);
  let x_1057 : vec4<f32> = x_66.x_MainLightPosition;
  let x_1059 : vec4<f32> = u_xlat7;
  u_xlat45 = dot(vec3<f32>(x_1057.x, x_1057.y, x_1057.z), vec3<f32>(x_1059.x, x_1059.y, x_1059.z));
  let x_1062 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1062, 0.0f, 1.0f);
  let x_1064 : f32 = u_xlat44;
  let x_1065 : f32 = u_xlat44;
  u_xlat44 = (x_1064 * x_1065);
  let x_1067 : f32 = u_xlat44;
  let x_1069 : f32 = u_xlat18.x;
  u_xlat44 = ((x_1067 * x_1069) + 1.000010014f);
  let x_1073 : f32 = u_xlat45;
  let x_1074 : f32 = u_xlat45;
  u_xlat45 = (x_1073 * x_1074);
  let x_1076 : f32 = u_xlat44;
  let x_1077 : f32 = u_xlat44;
  u_xlat44 = (x_1076 * x_1077);
  let x_1079 : f32 = u_xlat45;
  u_xlat45 = max(x_1079, 0.100000001f);
  let x_1082 : f32 = u_xlat44;
  let x_1083 : f32 = u_xlat45;
  u_xlat44 = (x_1082 * x_1083);
  let x_1085 : f32 = u_xlat6;
  let x_1086 : f32 = u_xlat44;
  u_xlat44 = (x_1085 * x_1086);
  let x_1088 : f32 = u_xlat47;
  let x_1089 : f32 = u_xlat44;
  u_xlat44 = (x_1088 / x_1089);
  let x_1091 : f32 = u_xlat44;
  let x_1095 : vec3<f32> = u_xlat2;
  let x_1096 : vec3<f32> = ((vec3<f32>(x_1091, x_1091, x_1091) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1095);
  let x_1097 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1096.x, x_1096.y, x_1096.z, x_1097.w);
  let x_1099 : vec3<f32> = u_xlat20;
  let x_1100 : vec4<f32> = u_xlat7;
  u_xlat20 = (x_1099 * vec3<f32>(x_1100.x, x_1100.y, x_1100.z));
  let x_1105 : f32 = x_66.x_AdditionalLightsCount.x;
  let x_1107 : f32 = x_344.unity_LightData.y;
  u_xlat44 = min(x_1105, x_1107);
  let x_1111 : f32 = u_xlat44;
  u_xlatu44 = bitcast<u32>(i32(x_1111));
  let x_1116 : f32 = x_729.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1118 : f32 = x_729.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1120 : f32 = x_729.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1122 : f32 = x_729.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1123 : vec4<f32> = vec4<f32>(x_1116, x_1118, x_1120, x_1122);
  let x_1129 : vec4<bool> = (vec4<f32>(x_1123.x, x_1123.y, x_1123.z, x_1123.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1129.x, x_1129.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1140 : u32 = u_xlatu_loop_1;
    let x_1141 : u32 = u_xlatu44;
    if ((x_1140 < x_1141)) {
    } else {
      break;
    }
    let x_1144 : u32 = u_xlatu_loop_1;
    u_xlatu46 = (x_1144 >> 2u);
    let x_1148 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_1148 & 3u));
    let x_1151 : u32 = u_xlatu46;
    let x_1154 : vec4<f32> = x_344.unity_LightIndices[bitcast<i32>(x_1151)];
    let x_1164 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1169 : vec4<u32> = indexable[x_1164];
    u_xlat46 = dot(x_1154, bitcast<vec4<f32>>(x_1169));
    let x_1172 : f32 = u_xlat46;
    u_xlatu46 = bitcast<u32>(i32(x_1172));
    let x_1176 : vec3<f32> = vs_INTERP0;
    let x_1188 : u32 = u_xlatu46;
    let x_1191 : vec4<f32> = x_1187.x_AdditionalLightsPosition[bitcast<i32>(x_1188)];
    let x_1194 : u32 = u_xlatu46;
    let x_1197 : vec4<f32> = x_1187.x_AdditionalLightsPosition[bitcast<i32>(x_1194)];
    u_xlat9 = ((-(x_1176) * vec3<f32>(x_1191.w, x_1191.w, x_1191.w)) + vec3<f32>(x_1197.x, x_1197.y, x_1197.z));
    let x_1201 : vec3<f32> = u_xlat9;
    let x_1202 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1201, x_1202);
    let x_1204 : f32 = u_xlat35;
    u_xlat35 = max(x_1204, 6.10351562e-05f);
    let x_1207 : f32 = u_xlat35;
    u_xlat49 = inverseSqrt(x_1207);
    let x_1210 : f32 = u_xlat49;
    let x_1212 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1210, x_1210, x_1210) * x_1212);
    let x_1215 : f32 = u_xlat35;
    u_xlat50 = (1.0f / x_1215);
    let x_1217 : f32 = u_xlat35;
    let x_1218 : u32 = u_xlatu46;
    let x_1221 : f32 = x_1187.x_AdditionalLightsAttenuation[bitcast<i32>(x_1218)].x;
    u_xlat35 = (x_1217 * x_1221);
    let x_1223 : f32 = u_xlat35;
    let x_1225 : f32 = u_xlat35;
    u_xlat35 = ((-(x_1223) * x_1225) + 1.0f);
    let x_1228 : f32 = u_xlat35;
    u_xlat35 = max(x_1228, 0.0f);
    let x_1230 : f32 = u_xlat35;
    let x_1231 : f32 = u_xlat35;
    u_xlat35 = (x_1230 * x_1231);
    let x_1233 : f32 = u_xlat35;
    let x_1234 : f32 = u_xlat50;
    u_xlat35 = (x_1233 * x_1234);
    let x_1236 : u32 = u_xlatu46;
    let x_1239 : vec4<f32> = x_1187.x_AdditionalLightsSpotDir[bitcast<i32>(x_1236)];
    let x_1241 : vec3<f32> = u_xlat10;
    u_xlat50 = dot(vec3<f32>(x_1239.x, x_1239.y, x_1239.z), x_1241);
    let x_1243 : f32 = u_xlat50;
    let x_1244 : u32 = u_xlatu46;
    let x_1247 : f32 = x_1187.x_AdditionalLightsAttenuation[bitcast<i32>(x_1244)].z;
    let x_1249 : u32 = u_xlatu46;
    let x_1252 : f32 = x_1187.x_AdditionalLightsAttenuation[bitcast<i32>(x_1249)].w;
    u_xlat50 = ((x_1243 * x_1247) + x_1252);
    let x_1254 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1254, 0.0f, 1.0f);
    let x_1256 : f32 = u_xlat50;
    let x_1257 : f32 = u_xlat50;
    u_xlat50 = (x_1256 * x_1257);
    let x_1259 : f32 = u_xlat35;
    let x_1260 : f32 = u_xlat50;
    u_xlat35 = (x_1259 * x_1260);
    let x_1263 : u32 = u_xlatu46;
    u_xlatu50 = (x_1263 >> 5u);
    let x_1266 : u32 = u_xlatu46;
    u_xlati51 = (1i << bitcast<u32>((bitcast<i32>(x_1266) & 31i)));
    let x_1272 : i32 = u_xlati51;
    let x_1274 : u32 = u_xlatu50;
    let x_1277 : f32 = x_729.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1274)].el;
    u_xlati50 = bitcast<i32>((bitcast<u32>(x_1272) & bitcast<u32>(x_1277)));
    let x_1281 : i32 = u_xlati50;
    if ((x_1281 != 0i)) {
      let x_1291 : u32 = u_xlatu46;
      let x_1294 : f32 = x_1290.x_AdditionalLightsLightTypes[bitcast<i32>(x_1291)].el;
      u_xlati50 = i32(x_1294);
      let x_1296 : i32 = u_xlati50;
      u_xlati51 = select(1i, 0i, (x_1296 != 0i));
      let x_1300 : u32 = u_xlatu46;
      u_xlati52 = (bitcast<i32>(x_1300) << bitcast<u32>(2i));
      let x_1303 : i32 = u_xlati51;
      if ((x_1303 != 0i)) {
        let x_1308 : vec3<f32> = vs_INTERP0;
        let x_1310 : i32 = u_xlati52;
        let x_1313 : i32 = u_xlati52;
        let x_1317 : vec4<f32> = x_1290.x_AdditionalLightsWorldToLights[((x_1310 + 1i) / 4i)][((x_1313 + 1i) % 4i)];
        let x_1319 : vec3<f32> = (vec3<f32>(x_1308.y, x_1308.y, x_1308.y) * vec3<f32>(x_1317.x, x_1317.y, x_1317.w));
        let x_1320 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1319.x, x_1319.y, x_1319.z, x_1320.w);
        let x_1322 : i32 = u_xlati52;
        let x_1324 : i32 = u_xlati52;
        let x_1327 : vec4<f32> = x_1290.x_AdditionalLightsWorldToLights[(x_1322 / 4i)][(x_1324 % 4i)];
        let x_1329 : vec3<f32> = vs_INTERP0;
        let x_1332 : vec4<f32> = u_xlat11;
        let x_1334 : vec3<f32> = ((vec3<f32>(x_1327.x, x_1327.y, x_1327.w) * vec3<f32>(x_1329.x, x_1329.x, x_1329.x)) + vec3<f32>(x_1332.x, x_1332.y, x_1332.z));
        let x_1335 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1334.x, x_1334.y, x_1334.z, x_1335.w);
        let x_1337 : i32 = u_xlati52;
        let x_1340 : i32 = u_xlati52;
        let x_1344 : vec4<f32> = x_1290.x_AdditionalLightsWorldToLights[((x_1337 + 2i) / 4i)][((x_1340 + 2i) % 4i)];
        let x_1346 : vec3<f32> = vs_INTERP0;
        let x_1349 : vec4<f32> = u_xlat11;
        let x_1351 : vec3<f32> = ((vec3<f32>(x_1344.x, x_1344.y, x_1344.w) * vec3<f32>(x_1346.z, x_1346.z, x_1346.z)) + vec3<f32>(x_1349.x, x_1349.y, x_1349.z));
        let x_1352 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1351.x, x_1351.y, x_1351.z, x_1352.w);
        let x_1354 : vec4<f32> = u_xlat11;
        let x_1356 : i32 = u_xlati52;
        let x_1359 : i32 = u_xlati52;
        let x_1363 : vec4<f32> = x_1290.x_AdditionalLightsWorldToLights[((x_1356 + 3i) / 4i)][((x_1359 + 3i) % 4i)];
        let x_1365 : vec3<f32> = (vec3<f32>(x_1354.x, x_1354.y, x_1354.z) + vec3<f32>(x_1363.x, x_1363.y, x_1363.w));
        let x_1366 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1365.x, x_1365.y, x_1365.z, x_1366.w);
        let x_1368 : vec4<f32> = u_xlat11;
        let x_1370 : vec4<f32> = u_xlat11;
        let x_1372 : vec2<f32> = (vec2<f32>(x_1368.x, x_1368.y) / vec2<f32>(x_1370.z, x_1370.z));
        let x_1373 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1372.x, x_1372.y, x_1373.z, x_1373.w);
        let x_1375 : vec4<f32> = u_xlat11;
        let x_1378 : vec2<f32> = ((vec2<f32>(x_1375.x, x_1375.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1379 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1378.x, x_1378.y, x_1379.z, x_1379.w);
        let x_1381 : vec4<f32> = u_xlat11;
        let x_1385 : vec2<f32> = clamp(vec2<f32>(x_1381.x, x_1381.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1386 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1385.x, x_1385.y, x_1386.z, x_1386.w);
        let x_1388 : u32 = u_xlatu46;
        let x_1391 : vec4<f32> = x_1290.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1388)];
        let x_1393 : vec4<f32> = u_xlat11;
        let x_1396 : u32 = u_xlatu46;
        let x_1399 : vec4<f32> = x_1290.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1396)];
        let x_1401 : vec2<f32> = ((vec2<f32>(x_1391.x, x_1391.y) * vec2<f32>(x_1393.x, x_1393.y)) + vec2<f32>(x_1399.z, x_1399.w));
        let x_1402 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1401.x, x_1401.y, x_1402.z, x_1402.w);
      } else {
        let x_1406 : i32 = u_xlati50;
        u_xlatb50 = (x_1406 == 1i);
        let x_1408 : bool = u_xlatb50;
        u_xlati50 = select(0i, 1i, x_1408);
        let x_1410 : i32 = u_xlati50;
        if ((x_1410 != 0i)) {
          let x_1416 : vec3<f32> = vs_INTERP0;
          let x_1418 : i32 = u_xlati52;
          let x_1421 : i32 = u_xlati52;
          let x_1425 : vec4<f32> = x_1290.x_AdditionalLightsWorldToLights[((x_1418 + 1i) / 4i)][((x_1421 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1416.y, x_1416.y) * vec2<f32>(x_1425.x, x_1425.y));
          let x_1428 : i32 = u_xlati52;
          let x_1430 : i32 = u_xlati52;
          let x_1433 : vec4<f32> = x_1290.x_AdditionalLightsWorldToLights[(x_1428 / 4i)][(x_1430 % 4i)];
          let x_1435 : vec3<f32> = vs_INTERP0;
          let x_1438 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1433.x, x_1433.y) * vec2<f32>(x_1435.x, x_1435.x)) + x_1438);
          let x_1440 : i32 = u_xlati52;
          let x_1443 : i32 = u_xlati52;
          let x_1447 : vec4<f32> = x_1290.x_AdditionalLightsWorldToLights[((x_1440 + 2i) / 4i)][((x_1443 + 2i) % 4i)];
          let x_1449 : vec3<f32> = vs_INTERP0;
          let x_1452 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1447.x, x_1447.y) * vec2<f32>(x_1449.z, x_1449.z)) + x_1452);
          let x_1454 : vec2<f32> = u_xlat39;
          let x_1455 : i32 = u_xlati52;
          let x_1458 : i32 = u_xlati52;
          let x_1462 : vec4<f32> = x_1290.x_AdditionalLightsWorldToLights[((x_1455 + 3i) / 4i)][((x_1458 + 3i) % 4i)];
          u_xlat39 = (x_1454 + vec2<f32>(x_1462.x, x_1462.y));
          let x_1465 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1465 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1468 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1468);
          let x_1470 : u32 = u_xlatu46;
          let x_1473 : vec4<f32> = x_1290.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1470)];
          let x_1475 : vec2<f32> = u_xlat39;
          let x_1477 : u32 = u_xlatu46;
          let x_1480 : vec4<f32> = x_1290.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1477)];
          let x_1482 : vec2<f32> = ((vec2<f32>(x_1473.x, x_1473.y) * x_1475) + vec2<f32>(x_1480.z, x_1480.w));
          let x_1483 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1482.x, x_1482.y, x_1483.z, x_1483.w);
        } else {
          let x_1487 : vec3<f32> = vs_INTERP0;
          let x_1489 : i32 = u_xlati52;
          let x_1492 : i32 = u_xlati52;
          let x_1496 : vec4<f32> = x_1290.x_AdditionalLightsWorldToLights[((x_1489 + 1i) / 4i)][((x_1492 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1487.y, x_1487.y, x_1487.y, x_1487.y) * x_1496);
          let x_1498 : i32 = u_xlati52;
          let x_1500 : i32 = u_xlati52;
          let x_1503 : vec4<f32> = x_1290.x_AdditionalLightsWorldToLights[(x_1498 / 4i)][(x_1500 % 4i)];
          let x_1504 : vec3<f32> = vs_INTERP0;
          let x_1507 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1503 * vec4<f32>(x_1504.x, x_1504.x, x_1504.x, x_1504.x)) + x_1507);
          let x_1509 : i32 = u_xlati52;
          let x_1512 : i32 = u_xlati52;
          let x_1516 : vec4<f32> = x_1290.x_AdditionalLightsWorldToLights[((x_1509 + 2i) / 4i)][((x_1512 + 2i) % 4i)];
          let x_1517 : vec3<f32> = vs_INTERP0;
          let x_1520 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1516 * vec4<f32>(x_1517.z, x_1517.z, x_1517.z, x_1517.z)) + x_1520);
          let x_1522 : vec4<f32> = u_xlat12;
          let x_1523 : i32 = u_xlati52;
          let x_1526 : i32 = u_xlati52;
          let x_1530 : vec4<f32> = x_1290.x_AdditionalLightsWorldToLights[((x_1523 + 3i) / 4i)][((x_1526 + 3i) % 4i)];
          u_xlat12 = (x_1522 + x_1530);
          let x_1532 : vec4<f32> = u_xlat12;
          let x_1534 : vec4<f32> = u_xlat12;
          let x_1536 : vec3<f32> = (vec3<f32>(x_1532.x, x_1532.y, x_1532.z) / vec3<f32>(x_1534.w, x_1534.w, x_1534.w));
          let x_1537 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1536.x, x_1536.y, x_1536.z, x_1537.w);
          let x_1539 : vec4<f32> = u_xlat12;
          let x_1541 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(vec3<f32>(x_1539.x, x_1539.y, x_1539.z), vec3<f32>(x_1541.x, x_1541.y, x_1541.z));
          let x_1544 : f32 = u_xlat50;
          u_xlat50 = inverseSqrt(x_1544);
          let x_1546 : f32 = u_xlat50;
          let x_1548 : vec4<f32> = u_xlat12;
          let x_1550 : vec3<f32> = (vec3<f32>(x_1546, x_1546, x_1546) * vec3<f32>(x_1548.x, x_1548.y, x_1548.z));
          let x_1551 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1550.x, x_1550.y, x_1550.z, x_1551.w);
          let x_1553 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(abs(vec3<f32>(x_1553.x, x_1553.y, x_1553.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1558 : f32 = u_xlat50;
          u_xlat50 = max(x_1558, 0.000001f);
          let x_1561 : f32 = u_xlat50;
          u_xlat50 = (1.0f / x_1561);
          let x_1564 : f32 = u_xlat50;
          let x_1566 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1564, x_1564, x_1564) * vec3<f32>(x_1566.z, x_1566.x, x_1566.y));
          let x_1570 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1570);
          let x_1574 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1574, 0.0f, 1.0f);
          let x_1578 : vec3<f32> = u_xlat13;
          let x_1581 : vec4<bool> = (vec4<f32>(x_1578.y, x_1578.z, x_1578.y, x_1578.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1581.x, x_1581.y);
          let x_1584 : bool = u_xlatb39.x;
          if (x_1584) {
            let x_1589 : f32 = u_xlat13.x;
            x_1585 = x_1589;
          } else {
            let x_1592 : f32 = u_xlat13.x;
            x_1585 = -(x_1592);
          }
          let x_1594 : f32 = x_1585;
          u_xlat39.x = x_1594;
          let x_1597 : bool = u_xlatb39.y;
          if (x_1597) {
            let x_1602 : f32 = u_xlat13.x;
            x_1598 = x_1602;
          } else {
            let x_1605 : f32 = u_xlat13.x;
            x_1598 = -(x_1605);
          }
          let x_1607 : f32 = x_1598;
          u_xlat39.y = x_1607;
          let x_1609 : vec4<f32> = u_xlat12;
          let x_1611 : f32 = u_xlat50;
          let x_1614 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1609.x, x_1609.y) * vec2<f32>(x_1611, x_1611)) + x_1614);
          let x_1616 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1616 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1619 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_1619, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1623 : u32 = u_xlatu46;
          let x_1626 : vec4<f32> = x_1290.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1623)];
          let x_1628 : vec2<f32> = u_xlat39;
          let x_1630 : u32 = u_xlatu46;
          let x_1633 : vec4<f32> = x_1290.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1630)];
          let x_1635 : vec2<f32> = ((vec2<f32>(x_1626.x, x_1626.y) * x_1628) + vec2<f32>(x_1633.z, x_1633.w));
          let x_1636 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1635.x, x_1635.y, x_1636.z, x_1636.w);
        }
      }
      let x_1643 : vec4<f32> = u_xlat11;
      let x_1646 : f32 = x_66.x_GlobalMipBias.x;
      let x_1647 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1643.x, x_1643.y), x_1646);
      u_xlat11 = x_1647;
      let x_1649 : bool = u_xlatb7.y;
      if (x_1649) {
        let x_1654 : f32 = u_xlat11.w;
        x_1650 = x_1654;
      } else {
        let x_1657 : f32 = u_xlat11.x;
        x_1650 = x_1657;
      }
      let x_1658 : f32 = x_1650;
      u_xlat50 = x_1658;
      let x_1660 : bool = u_xlatb7.x;
      if (x_1660) {
        let x_1664 : vec4<f32> = u_xlat11;
        x_1661 = vec3<f32>(x_1664.x, x_1664.y, x_1664.z);
      } else {
        let x_1667 : f32 = u_xlat50;
        x_1661 = vec3<f32>(x_1667, x_1667, x_1667);
      }
      let x_1669 : vec3<f32> = x_1661;
      let x_1670 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1669.x, x_1669.y, x_1669.z, x_1670.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1676 : vec4<f32> = u_xlat11;
    let x_1678 : u32 = u_xlatu46;
    let x_1681 : vec4<f32> = x_1187.x_AdditionalLightsColor[bitcast<i32>(x_1678)];
    let x_1683 : vec3<f32> = (vec3<f32>(x_1676.x, x_1676.y, x_1676.z) * vec3<f32>(x_1681.x, x_1681.y, x_1681.z));
    let x_1684 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1683.x, x_1683.y, x_1683.z, x_1684.w);
    let x_1686 : f32 = u_xlat32;
    let x_1688 : vec4<f32> = u_xlat11;
    let x_1690 : vec3<f32> = (vec3<f32>(x_1686, x_1686, x_1686) * vec3<f32>(x_1688.x, x_1688.y, x_1688.z));
    let x_1691 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1690.x, x_1690.y, x_1690.z, x_1691.w);
    let x_1693 : vec4<f32> = u_xlat1;
    let x_1695 : vec3<f32> = u_xlat10;
    u_xlat46 = dot(vec3<f32>(x_1693.x, x_1693.z, x_1693.w), x_1695);
    let x_1697 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1697, 0.0f, 1.0f);
    let x_1699 : f32 = u_xlat46;
    let x_1700 : f32 = u_xlat35;
    u_xlat46 = (x_1699 * x_1700);
    let x_1702 : f32 = u_xlat46;
    let x_1704 : vec4<f32> = u_xlat11;
    let x_1706 : vec3<f32> = (vec3<f32>(x_1702, x_1702, x_1702) * vec3<f32>(x_1704.x, x_1704.y, x_1704.z));
    let x_1707 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1706.x, x_1706.y, x_1706.z, x_1707.w);
    let x_1709 : vec3<f32> = u_xlat9;
    let x_1710 : f32 = u_xlat49;
    let x_1713 : vec3<f32> = u_xlat5;
    u_xlat9 = ((x_1709 * vec3<f32>(x_1710, x_1710, x_1710)) + x_1713);
    let x_1715 : vec3<f32> = u_xlat9;
    let x_1716 : vec3<f32> = u_xlat9;
    u_xlat46 = dot(x_1715, x_1716);
    let x_1718 : f32 = u_xlat46;
    u_xlat46 = max(x_1718, 1.17549435e-37f);
    let x_1720 : f32 = u_xlat46;
    u_xlat46 = inverseSqrt(x_1720);
    let x_1722 : f32 = u_xlat46;
    let x_1724 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1722, x_1722, x_1722) * x_1724);
    let x_1726 : vec4<f32> = u_xlat1;
    let x_1728 : vec3<f32> = u_xlat9;
    u_xlat46 = dot(vec3<f32>(x_1726.x, x_1726.z, x_1726.w), x_1728);
    let x_1730 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1730, 0.0f, 1.0f);
    let x_1732 : vec3<f32> = u_xlat10;
    let x_1733 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1732, x_1733);
    let x_1735 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1735, 0.0f, 1.0f);
    let x_1737 : f32 = u_xlat46;
    let x_1738 : f32 = u_xlat46;
    u_xlat46 = (x_1737 * x_1738);
    let x_1740 : f32 = u_xlat46;
    let x_1742 : f32 = u_xlat18.x;
    u_xlat46 = ((x_1740 * x_1742) + 1.000010014f);
    let x_1745 : f32 = u_xlat35;
    let x_1746 : f32 = u_xlat35;
    u_xlat35 = (x_1745 * x_1746);
    let x_1748 : f32 = u_xlat46;
    let x_1749 : f32 = u_xlat46;
    u_xlat46 = (x_1748 * x_1749);
    let x_1751 : f32 = u_xlat35;
    u_xlat35 = max(x_1751, 0.100000001f);
    let x_1753 : f32 = u_xlat46;
    let x_1754 : f32 = u_xlat35;
    u_xlat46 = (x_1753 * x_1754);
    let x_1756 : f32 = u_xlat6;
    let x_1757 : f32 = u_xlat46;
    u_xlat46 = (x_1756 * x_1757);
    let x_1759 : f32 = u_xlat47;
    let x_1760 : f32 = u_xlat46;
    u_xlat46 = (x_1759 / x_1760);
    let x_1762 : f32 = u_xlat46;
    let x_1765 : vec3<f32> = u_xlat2;
    u_xlat9 = ((vec3<f32>(x_1762, x_1762, x_1762) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1765);
    let x_1767 : vec3<f32> = u_xlat9;
    let x_1768 : vec4<f32> = u_xlat11;
    let x_1771 : vec4<f32> = u_xlat8;
    let x_1773 : vec3<f32> = ((x_1767 * vec3<f32>(x_1768.x, x_1768.y, x_1768.z)) + vec3<f32>(x_1771.x, x_1771.y, x_1771.z));
    let x_1774 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1773.x, x_1773.y, x_1773.z, x_1774.w);

    continuing {
      let x_1776 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1776 + bitcast<u32>(1i));
    }
  }
  let x_1778 : vec4<f32> = u_xlat3;
  let x_1780 : vec4<f32> = u_xlat4;
  let x_1783 : vec3<f32> = u_xlat20;
  let x_1784 : vec3<f32> = ((vec3<f32>(x_1778.x, x_1778.y, x_1778.z) * vec3<f32>(x_1780.x, x_1780.x, x_1780.x)) + x_1783);
  let x_1785 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1784.x, x_1785.y, x_1784.y, x_1784.z);
  let x_1787 : vec4<f32> = u_xlat8;
  let x_1789 : vec4<f32> = u_xlat1;
  let x_1791 : vec3<f32> = (vec3<f32>(x_1787.x, x_1787.y, x_1787.z) + vec3<f32>(x_1789.x, x_1789.z, x_1789.w));
  let x_1792 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1791.x, x_1792.y, x_1791.y, x_1791.z);
  let x_1796 : vec4<f32> = vs_INTERP4;
  let x_1798 : vec3<f32> = u_xlat0;
  let x_1800 : vec4<f32> = u_xlat1;
  let x_1802 : vec3<f32> = ((vec3<f32>(x_1796.w, x_1796.w, x_1796.w) * x_1798) + vec3<f32>(x_1800.x, x_1800.z, x_1800.w));
  let x_1803 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1802.x, x_1802.y, x_1802.z, x_1803.w);
  let x_1805 : bool = u_xlatb15;
  let x_1806 : f32 = u_xlat42;
  SV_Target0.w = select(1.0f, x_1806, x_1805);
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

