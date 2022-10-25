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

@group(1) @binding(4) var<uniform> x_758 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1232 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1367 : AdditionalLightsCookies;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var u_xlat5 : vec3<f32>;
  var x_454 : f32;
  var x_467 : f32;
  var x_479 : f32;
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
  var x_842 : f32;
  var x_853 : vec3<f32>;
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
  var x_1669 : f32;
  var x_1682 : f32;
  var x_1734 : f32;
  var x_1746 : vec3<f32>;
  var u_xlat50 : f32;
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
  let x_432 : f32 = x_66.unity_OrthoParams.w;
  u_xlatb1.x = (x_432 == 0.0f);
  let x_435 : vec3<f32> = vs_INTERP0;
  let x_440 : vec3<f32> = x_66.x_WorldSpaceCameraPos;
  u_xlat17 = (-(x_435) + x_440);
  let x_442 : vec3<f32> = u_xlat17;
  let x_443 : vec3<f32> = u_xlat17;
  u_xlat29 = dot(x_442, x_443);
  let x_445 : f32 = u_xlat29;
  u_xlat29 = inverseSqrt(x_445);
  let x_447 : f32 = u_xlat29;
  let x_449 : vec3<f32> = u_xlat17;
  u_xlat17 = (vec3<f32>(x_447, x_447, x_447) * x_449);
  let x_453 : bool = u_xlatb1.x;
  if (x_453) {
    let x_458 : f32 = u_xlat17.x;
    x_454 = x_458;
  } else {
    let x_462 : f32 = x_66.unity_MatrixV[0i].z;
    x_454 = x_462;
  }
  let x_463 : f32 = x_454;
  u_xlat5.x = x_463;
  let x_466 : bool = u_xlatb1.x;
  if (x_466) {
    let x_471 : f32 = u_xlat17.y;
    x_467 = x_471;
  } else {
    let x_474 : f32 = x_66.unity_MatrixV[1i].z;
    x_467 = x_474;
  }
  let x_475 : f32 = x_467;
  u_xlat5.y = x_475;
  let x_478 : bool = u_xlatb1.x;
  if (x_478) {
    let x_483 : f32 = u_xlat17.z;
    x_479 = x_483;
  } else {
    let x_486 : f32 = x_66.unity_MatrixV[2i].z;
    x_479 = x_486;
  }
  let x_487 : f32 = x_479;
  u_xlat5.z = x_487;
  u_xlat4.w = 1.0f;
  let x_493 : vec4<f32> = x_344.unity_SHAr;
  let x_494 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_493, x_494);
  let x_499 : vec4<f32> = x_344.unity_SHAg;
  let x_500 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_499, x_500);
  let x_505 : vec4<f32> = x_344.unity_SHAb;
  let x_506 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_505, x_506);
  let x_510 : vec4<f32> = u_xlat4;
  let x_512 : vec4<f32> = u_xlat4;
  u_xlat7 = (vec4<f32>(x_510.y, x_510.z, x_510.z, x_510.x) * vec4<f32>(x_512.x, x_512.y, x_512.z, x_512.z));
  let x_518 : vec4<f32> = x_344.unity_SHBr;
  let x_519 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_518, x_519);
  let x_524 : vec4<f32> = x_344.unity_SHBg;
  let x_525 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_524, x_525);
  let x_530 : vec4<f32> = x_344.unity_SHBb;
  let x_531 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_530, x_531);
  let x_535 : f32 = u_xlat4.y;
  let x_537 : f32 = u_xlat4.y;
  u_xlat1.x = (x_535 * x_537);
  let x_541 : f32 = u_xlat4.x;
  let x_543 : f32 = u_xlat4.x;
  let x_546 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_541 * x_543) + -(x_546));
  let x_552 : vec4<f32> = x_344.unity_SHC;
  let x_554 : vec4<f32> = u_xlat1;
  let x_557 : vec4<f32> = u_xlat8;
  let x_559 : vec3<f32> = ((vec3<f32>(x_552.x, x_552.y, x_552.z) * vec3<f32>(x_554.x, x_554.x, x_554.x)) + vec3<f32>(x_557.x, x_557.y, x_557.z));
  let x_560 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_559.x, x_560.y, x_559.y, x_559.z);
  let x_562 : vec4<f32> = u_xlat1;
  let x_564 : vec3<f32> = u_xlat6;
  let x_565 : vec3<f32> = (vec3<f32>(x_562.x, x_562.z, x_562.w) + x_564);
  let x_566 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_565.x, x_566.y, x_565.y, x_565.z);
  let x_568 : vec4<f32> = u_xlat1;
  let x_571 : vec3<f32> = max(vec3<f32>(x_568.x, x_568.z, x_568.w), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_572 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_571.x, x_572.y, x_571.y, x_571.z);
  let x_576 : vec4<f32> = x_66.x_ScaledScreenParams;
  let x_577 : vec2<f32> = vec2<f32>(x_576.x, x_576.y);
  let x_581 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_577.x, x_577.y));
  let x_582 : vec3<f32> = u_xlat17;
  u_xlat17 = vec3<f32>(x_581.x, x_581.y, x_582.z);
  let x_584 : vec3<f32> = u_xlat17;
  let x_586 : vec4<f32> = hlslcc_FragCoord;
  let x_588 : vec2<f32> = (vec2<f32>(x_584.x, x_584.y) * vec2<f32>(x_586.x, x_586.y));
  let x_589 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_588.x, x_588.y, x_589.z);
  let x_592 : f32 = u_xlat6.y;
  let x_595 : f32 = x_66.x_ScaleBiasRt.x;
  let x_598 : f32 = x_66.x_ScaleBiasRt.y;
  u_xlat17.x = ((x_592 * x_595) + x_598);
  let x_602 : f32 = u_xlat17.x;
  u_xlat6.z = (-(x_602) + 1.0f);
  let x_607 : f32 = u_xlat3.x;
  u_xlat3.x = x_607;
  let x_610 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_610, 0.0f, 1.0f);
  let x_613 : f32 = u_xlat42;
  u_xlat42 = min(x_613, 1.0f);
  let x_615 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_615 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_620 : f32 = u_xlat3.x;
  u_xlat17.x = (-(x_620) + 1.0f);
  let x_626 : f32 = u_xlat17.x;
  let x_628 : f32 = u_xlat17.x;
  u_xlat31 = (x_626 * x_628);
  let x_630 : f32 = u_xlat31;
  u_xlat31 = max(x_630, 0.0078125f);
  let x_634 : f32 = u_xlat31;
  let x_635 : f32 = u_xlat31;
  u_xlat45 = (x_634 * x_635);
  let x_638 : f32 = u_xlat3.x;
  u_xlat3.x = (x_638 + 0.040000021f);
  let x_643 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_643, 1.0f);
  let x_647 : f32 = u_xlat31;
  u_xlat46 = ((x_647 * 4.0f) + 2.0f);
  let x_657 : vec3<f32> = u_xlat6;
  let x_660 : f32 = x_66.x_GlobalMipBias.x;
  let x_661 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_657.x, x_657.z), x_660);
  u_xlat47 = x_661.x;
  let x_663 : f32 = u_xlat47;
  u_xlat6.x = (x_663 + -1.0f);
  let x_668 : f32 = x_66.x_AmbientOcclusionParam.w;
  let x_670 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_668 * x_670) + 1.0f);
  let x_674 : f32 = u_xlat47;
  let x_676 : f32 = vs_INTERP4.w;
  u_xlat47 = min(x_674, x_676);
  let x_680 : vec4<f32> = vs_INTERP9;
  let x_681 : vec2<f32> = vec2<f32>(x_680.x, x_680.y);
  let x_683 : f32 = vs_INTERP9.z;
  txVec1 = vec3<f32>(x_681.x, x_681.y, x_683);
  let x_691 : vec3<f32> = txVec1;
  let x_693 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_691.xy, x_691.z);
  u_xlat20.x = x_693;
  let x_696 : f32 = u_xlat20.x;
  let x_698 : f32 = x_139.x_MainLightShadowParams.x;
  let x_700 : f32 = u_xlat44;
  u_xlat44 = ((x_696 * x_698) + x_700);
  let x_706 : f32 = vs_INTERP9.z;
  u_xlatb20.x = (0.0f >= x_706);
  let x_711 : f32 = vs_INTERP9.z;
  u_xlatb34 = (x_711 >= 1.0f);
  let x_713 : bool = u_xlatb34;
  let x_715 : bool = u_xlatb20.x;
  u_xlatb20.x = (x_713 | x_715);
  let x_719 : bool = u_xlatb20.x;
  let x_720 : f32 = u_xlat44;
  u_xlat44 = select(x_720, 1.0f, x_719);
  let x_722 : vec3<f32> = vs_INTERP0;
  let x_724 : vec3<f32> = x_66.x_WorldSpaceCameraPos;
  u_xlat20 = (x_722 + -(x_724));
  let x_727 : vec3<f32> = u_xlat20;
  let x_728 : vec3<f32> = u_xlat20;
  u_xlat20.x = dot(x_727, x_728);
  let x_732 : f32 = u_xlat20.x;
  let x_734 : f32 = x_139.x_MainLightShadowParams.z;
  let x_737 : f32 = x_139.x_MainLightShadowParams.w;
  u_xlat20.x = ((x_732 * x_734) + x_737);
  let x_741 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_741, 0.0f, 1.0f);
  let x_745 : f32 = u_xlat44;
  u_xlat34 = (-(x_745) + 1.0f);
  let x_749 : f32 = u_xlat20.x;
  let x_750 : f32 = u_xlat34;
  let x_752 : f32 = u_xlat44;
  u_xlat44 = ((x_749 * x_750) + x_752);
  let x_760 : f32 = x_758.x_MainLightCookieTextureFormat;
  u_xlatb20.x = !((x_760 == -1.0f));
  let x_764 : bool = u_xlatb20.x;
  if (x_764) {
    let x_767 : vec3<f32> = vs_INTERP0;
    let x_770 : vec4<f32> = x_758.x_MainLightWorldToLight[1i];
    let x_772 : vec2<f32> = (vec2<f32>(x_767.y, x_767.y) * vec2<f32>(x_770.x, x_770.y));
    let x_773 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_772.x, x_772.y, x_773.z);
    let x_776 : vec4<f32> = x_758.x_MainLightWorldToLight[0i];
    let x_778 : vec3<f32> = vs_INTERP0;
    let x_781 : vec3<f32> = u_xlat20;
    let x_783 : vec2<f32> = ((vec2<f32>(x_776.x, x_776.y) * vec2<f32>(x_778.x, x_778.x)) + vec2<f32>(x_781.x, x_781.y));
    let x_784 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_783.x, x_783.y, x_784.z);
    let x_787 : vec4<f32> = x_758.x_MainLightWorldToLight[2i];
    let x_789 : vec3<f32> = vs_INTERP0;
    let x_792 : vec3<f32> = u_xlat20;
    let x_794 : vec2<f32> = ((vec2<f32>(x_787.x, x_787.y) * vec2<f32>(x_789.z, x_789.z)) + vec2<f32>(x_792.x, x_792.y));
    let x_795 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_794.x, x_794.y, x_795.z);
    let x_797 : vec3<f32> = u_xlat20;
    let x_800 : vec4<f32> = x_758.x_MainLightWorldToLight[3i];
    let x_802 : vec2<f32> = (vec2<f32>(x_797.x, x_797.y) + vec2<f32>(x_800.x, x_800.y));
    let x_803 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_802.x, x_802.y, x_803.z);
    let x_805 : vec3<f32> = u_xlat20;
    let x_809 : vec2<f32> = ((vec2<f32>(x_805.x, x_805.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_810 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_809.x, x_809.y, x_810.z);
    let x_817 : vec3<f32> = u_xlat20;
    let x_820 : f32 = x_66.x_GlobalMipBias.x;
    let x_821 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_817.x, x_817.y), x_820);
    u_xlat7 = x_821;
    let x_823 : f32 = x_758.x_MainLightCookieTextureFormat;
    let x_825 : f32 = x_758.x_MainLightCookieTextureFormat;
    let x_827 : f32 = x_758.x_MainLightCookieTextureFormat;
    let x_829 : f32 = x_758.x_MainLightCookieTextureFormat;
    let x_830 : vec4<f32> = vec4<f32>(x_823, x_825, x_827, x_829);
    let x_838 : vec4<bool> = (vec4<f32>(x_830.x, x_830.y, x_830.z, x_830.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb20 = vec2<bool>(x_838.x, x_838.y);
    let x_841 : bool = u_xlatb20.y;
    if (x_841) {
      let x_846 : f32 = u_xlat7.w;
      x_842 = x_846;
    } else {
      let x_849 : f32 = u_xlat7.x;
      x_842 = x_849;
    }
    let x_850 : f32 = x_842;
    u_xlat34 = x_850;
    let x_852 : bool = u_xlatb20.x;
    if (x_852) {
      let x_856 : vec4<f32> = u_xlat7;
      x_853 = vec3<f32>(x_856.x, x_856.y, x_856.z);
    } else {
      let x_859 : f32 = u_xlat34;
      x_853 = vec3<f32>(x_859, x_859, x_859);
    }
    let x_861 : vec3<f32> = x_853;
    u_xlat20 = x_861;
  } else {
    u_xlat20.x = 1.0f;
    u_xlat20.y = 1.0f;
    u_xlat20.z = 1.0f;
  }
  let x_866 : vec3<f32> = u_xlat20;
  let x_868 : vec4<f32> = x_66.x_MainLightColor;
  u_xlat20 = (x_866 * vec3<f32>(x_868.x, x_868.y, x_868.z));
  let x_871 : vec3<f32> = u_xlat6;
  let x_873 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_871.x, x_871.x, x_871.x) * x_873);
  let x_875 : vec3<f32> = u_xlat5;
  let x_877 : vec4<f32> = u_xlat4;
  u_xlat7.x = dot(-(x_875), vec3<f32>(x_877.x, x_877.y, x_877.z));
  let x_882 : f32 = u_xlat7.x;
  let x_884 : f32 = u_xlat7.x;
  u_xlat7.x = (x_882 + x_884);
  let x_887 : vec4<f32> = u_xlat4;
  let x_889 : vec4<f32> = u_xlat7;
  let x_893 : vec3<f32> = u_xlat5;
  let x_895 : vec3<f32> = ((vec3<f32>(x_887.x, x_887.y, x_887.z) * -(vec3<f32>(x_889.x, x_889.x, x_889.x))) + -(x_893));
  let x_896 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_895.x, x_895.y, x_895.z, x_896.w);
  let x_899 : vec4<f32> = u_xlat4;
  let x_901 : vec3<f32> = u_xlat5;
  u_xlat49 = dot(vec3<f32>(x_899.x, x_899.y, x_899.z), x_901);
  let x_903 : f32 = u_xlat49;
  u_xlat49 = clamp(x_903, 0.0f, 1.0f);
  let x_905 : f32 = u_xlat49;
  u_xlat49 = (-(x_905) + 1.0f);
  let x_908 : f32 = u_xlat49;
  let x_909 : f32 = u_xlat49;
  u_xlat49 = (x_908 * x_909);
  let x_911 : f32 = u_xlat49;
  let x_912 : f32 = u_xlat49;
  u_xlat49 = (x_911 * x_912);
  let x_915 : f32 = u_xlat17.x;
  u_xlat8.x = ((-(x_915) * 0.699999988f) + 1.700000048f);
  let x_923 : f32 = u_xlat17.x;
  let x_925 : f32 = u_xlat8.x;
  u_xlat17.x = (x_923 * x_925);
  let x_929 : f32 = u_xlat17.x;
  u_xlat17.x = (x_929 * 6.0f);
  let x_941 : vec4<f32> = u_xlat7;
  let x_944 : f32 = u_xlat17.x;
  let x_945 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_941.x, x_941.y, x_941.z), x_944);
  u_xlat8 = x_945;
  let x_947 : f32 = u_xlat8.w;
  u_xlat17.x = (x_947 + -1.0f);
  let x_951 : f32 = x_344.unity_SpecCube0_HDR.w;
  let x_953 : f32 = u_xlat17.x;
  u_xlat17.x = ((x_951 * x_953) + 1.0f);
  let x_958 : f32 = u_xlat17.x;
  u_xlat17.x = max(x_958, 0.0f);
  let x_962 : f32 = u_xlat17.x;
  u_xlat17.x = log2(x_962);
  let x_966 : f32 = u_xlat17.x;
  let x_968 : f32 = x_344.unity_SpecCube0_HDR.y;
  u_xlat17.x = (x_966 * x_968);
  let x_972 : f32 = u_xlat17.x;
  u_xlat17.x = exp2(x_972);
  let x_976 : f32 = u_xlat17.x;
  let x_978 : f32 = x_344.unity_SpecCube0_HDR.x;
  u_xlat17.x = (x_976 * x_978);
  let x_981 : vec4<f32> = u_xlat8;
  let x_983 : vec3<f32> = u_xlat17;
  let x_985 : vec3<f32> = (vec3<f32>(x_981.x, x_981.y, x_981.z) * vec3<f32>(x_983.x, x_983.x, x_983.x));
  let x_986 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_985.x, x_985.y, x_985.z, x_986.w);
  let x_988 : f32 = u_xlat31;
  let x_990 : f32 = u_xlat31;
  let x_994 : vec2<f32> = ((vec2<f32>(x_988, x_988) * vec2<f32>(x_990, x_990)) + vec2<f32>(-1.0f, 1.0f));
  let x_995 : vec3<f32> = u_xlat17;
  u_xlat17 = vec3<f32>(x_994.x, x_994.y, x_995.z);
  let x_998 : f32 = u_xlat17.y;
  u_xlat31 = (1.0f / x_998);
  let x_1001 : f32 = u_xlat3.x;
  u_xlat3.x = (x_1001 + -0.039999999f);
  let x_1005 : f32 = u_xlat49;
  let x_1007 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1005 * x_1007) + 0.039999999f);
  let x_1013 : f32 = u_xlat3.x;
  let x_1014 : f32 = u_xlat31;
  u_xlat3.x = (x_1013 * x_1014);
  let x_1017 : vec4<f32> = u_xlat3;
  let x_1019 : vec4<f32> = u_xlat7;
  let x_1021 : vec3<f32> = (vec3<f32>(x_1017.x, x_1017.x, x_1017.x) * vec3<f32>(x_1019.x, x_1019.y, x_1019.z));
  let x_1022 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1021.x, x_1021.y, x_1021.z, x_1022.w);
  let x_1024 : vec4<f32> = u_xlat1;
  let x_1026 : vec3<f32> = u_xlat2;
  let x_1028 : vec4<f32> = u_xlat7;
  let x_1030 : vec3<f32> = ((vec3<f32>(x_1024.x, x_1024.z, x_1024.w) * x_1026) + vec3<f32>(x_1028.x, x_1028.y, x_1028.z));
  let x_1031 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1030.x, x_1031.y, x_1030.y, x_1030.z);
  let x_1033 : f32 = u_xlat44;
  let x_1035 : f32 = x_344.unity_LightData.z;
  u_xlat44 = (x_1033 * x_1035);
  let x_1037 : vec4<f32> = u_xlat4;
  let x_1040 : vec4<f32> = x_66.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_1037.x, x_1037.y, x_1037.z), vec3<f32>(x_1040.x, x_1040.y, x_1040.z));
  let x_1045 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1045, 0.0f, 1.0f);
  let x_1048 : f32 = u_xlat44;
  let x_1050 : f32 = u_xlat3.x;
  u_xlat44 = (x_1048 * x_1050);
  let x_1052 : f32 = u_xlat44;
  let x_1054 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_1052, x_1052, x_1052) * x_1054);
  let x_1056 : vec3<f32> = u_xlat5;
  let x_1058 : vec4<f32> = x_66.x_MainLightPosition;
  let x_1060 : vec3<f32> = (x_1056 + vec3<f32>(x_1058.x, x_1058.y, x_1058.z));
  let x_1061 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1060.x, x_1060.y, x_1060.z, x_1061.w);
  let x_1063 : vec4<f32> = u_xlat7;
  let x_1065 : vec4<f32> = u_xlat7;
  u_xlat44 = dot(vec3<f32>(x_1063.x, x_1063.y, x_1063.z), vec3<f32>(x_1065.x, x_1065.y, x_1065.z));
  let x_1068 : f32 = u_xlat44;
  u_xlat44 = max(x_1068, 1.17549435e-37f);
  let x_1071 : f32 = u_xlat44;
  u_xlat44 = inverseSqrt(x_1071);
  let x_1073 : f32 = u_xlat44;
  let x_1075 : vec4<f32> = u_xlat7;
  let x_1077 : vec3<f32> = (vec3<f32>(x_1073, x_1073, x_1073) * vec3<f32>(x_1075.x, x_1075.y, x_1075.z));
  let x_1078 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1077.x, x_1077.y, x_1077.z, x_1078.w);
  let x_1080 : vec4<f32> = u_xlat4;
  let x_1082 : vec4<f32> = u_xlat7;
  u_xlat44 = dot(vec3<f32>(x_1080.x, x_1080.y, x_1080.z), vec3<f32>(x_1082.x, x_1082.y, x_1082.z));
  let x_1085 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1085, 0.0f, 1.0f);
  let x_1088 : vec4<f32> = x_66.x_MainLightPosition;
  let x_1090 : vec4<f32> = u_xlat7;
  u_xlat3.x = dot(vec3<f32>(x_1088.x, x_1088.y, x_1088.z), vec3<f32>(x_1090.x, x_1090.y, x_1090.z));
  let x_1095 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1095, 0.0f, 1.0f);
  let x_1098 : f32 = u_xlat44;
  let x_1099 : f32 = u_xlat44;
  u_xlat44 = (x_1098 * x_1099);
  let x_1101 : f32 = u_xlat44;
  let x_1103 : f32 = u_xlat17.x;
  u_xlat44 = ((x_1101 * x_1103) + 1.000010014f);
  let x_1108 : f32 = u_xlat3.x;
  let x_1110 : f32 = u_xlat3.x;
  u_xlat3.x = (x_1108 * x_1110);
  let x_1113 : f32 = u_xlat44;
  let x_1114 : f32 = u_xlat44;
  u_xlat44 = (x_1113 * x_1114);
  let x_1117 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_1117, 0.100000001f);
  let x_1121 : f32 = u_xlat44;
  let x_1123 : f32 = u_xlat3.x;
  u_xlat44 = (x_1121 * x_1123);
  let x_1125 : f32 = u_xlat46;
  let x_1126 : f32 = u_xlat44;
  u_xlat44 = (x_1125 * x_1126);
  let x_1128 : f32 = u_xlat45;
  let x_1129 : f32 = u_xlat44;
  u_xlat44 = (x_1128 / x_1129);
  let x_1131 : f32 = u_xlat44;
  let x_1135 : vec3<f32> = u_xlat2;
  let x_1136 : vec3<f32> = ((vec3<f32>(x_1131, x_1131, x_1131) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1135);
  let x_1137 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1136.x, x_1136.y, x_1136.z, x_1137.w);
  let x_1139 : vec3<f32> = u_xlat20;
  let x_1140 : vec4<f32> = u_xlat7;
  u_xlat20 = (x_1139 * vec3<f32>(x_1140.x, x_1140.y, x_1140.z));
  let x_1145 : f32 = x_66.x_AdditionalLightsCount.x;
  let x_1147 : f32 = x_344.unity_LightData.y;
  u_xlat44 = min(x_1145, x_1147);
  let x_1151 : f32 = u_xlat44;
  u_xlatu44 = bitcast<u32>(i32(x_1151));
  let x_1156 : f32 = x_758.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1158 : f32 = x_758.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1160 : f32 = x_758.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1162 : f32 = x_758.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1163 : vec4<f32> = vec4<f32>(x_1156, x_1158, x_1160, x_1162);
  let x_1170 : vec4<bool> = (vec4<f32>(x_1163.x, x_1163.y, x_1163.z, x_1163.w) == vec4<f32>(0.0f, 0.0f, 1.0f, 0.0f));
  let x_1171 : vec2<bool> = vec2<bool>(x_1170.x, x_1170.z);
  let x_1172 : vec3<bool> = u_xlatb3;
  u_xlatb3 = vec3<bool>(x_1171.x, x_1172.y, x_1171.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1183 : u32 = u_xlatu_loop_1;
    let x_1184 : u32 = u_xlatu44;
    if ((x_1183 < x_1184)) {
    } else {
      break;
    }
    let x_1187 : u32 = u_xlatu_loop_1;
    u_xlatu8 = (x_1187 >> 2u);
    let x_1191 : u32 = u_xlatu_loop_1;
    u_xlati22 = bitcast<i32>((x_1191 & 3u));
    let x_1194 : u32 = u_xlatu8;
    let x_1197 : vec4<f32> = x_344.unity_LightIndices[bitcast<i32>(x_1194)];
    let x_1207 : i32 = u_xlati22;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1212 : vec4<u32> = indexable[x_1207];
    u_xlat8.x = dot(x_1197, bitcast<vec4<f32>>(x_1212));
    let x_1217 : f32 = u_xlat8.x;
    u_xlatu8 = bitcast<u32>(i32(x_1217));
    let x_1221 : vec3<f32> = vs_INTERP0;
    let x_1233 : u32 = u_xlatu8;
    let x_1236 : vec4<f32> = x_1232.x_AdditionalLightsPosition[bitcast<i32>(x_1233)];
    let x_1239 : u32 = u_xlatu8;
    let x_1242 : vec4<f32> = x_1232.x_AdditionalLightsPosition[bitcast<i32>(x_1239)];
    u_xlat22 = ((-(x_1221) * vec3<f32>(x_1236.w, x_1236.w, x_1236.w)) + vec3<f32>(x_1242.x, x_1242.y, x_1242.z));
    let x_1246 : vec3<f32> = u_xlat22;
    let x_1247 : vec3<f32> = u_xlat22;
    u_xlat9.x = dot(x_1246, x_1247);
    let x_1251 : f32 = u_xlat9.x;
    u_xlat9.x = max(x_1251, 6.10351562e-05f);
    let x_1257 : f32 = u_xlat9.x;
    u_xlat23 = inverseSqrt(x_1257);
    let x_1260 : vec3<f32> = u_xlat22;
    let x_1261 : f32 = u_xlat23;
    u_xlat10 = (x_1260 * vec3<f32>(x_1261, x_1261, x_1261));
    let x_1267 : f32 = u_xlat9.x;
    u_xlat37.x = (1.0f / x_1267);
    let x_1271 : f32 = u_xlat9.x;
    let x_1272 : u32 = u_xlatu8;
    let x_1275 : f32 = x_1232.x_AdditionalLightsAttenuation[bitcast<i32>(x_1272)].x;
    u_xlat9.x = (x_1271 * x_1275);
    let x_1279 : f32 = u_xlat9.x;
    let x_1282 : f32 = u_xlat9.x;
    u_xlat9.x = ((-(x_1279) * x_1282) + 1.0f);
    let x_1287 : f32 = u_xlat9.x;
    u_xlat9.x = max(x_1287, 0.0f);
    let x_1291 : f32 = u_xlat9.x;
    let x_1293 : f32 = u_xlat9.x;
    u_xlat9.x = (x_1291 * x_1293);
    let x_1297 : f32 = u_xlat9.x;
    let x_1299 : f32 = u_xlat37.x;
    u_xlat9.x = (x_1297 * x_1299);
    let x_1302 : u32 = u_xlatu8;
    let x_1305 : vec4<f32> = x_1232.x_AdditionalLightsSpotDir[bitcast<i32>(x_1302)];
    let x_1307 : vec3<f32> = u_xlat10;
    u_xlat37.x = dot(vec3<f32>(x_1305.x, x_1305.y, x_1305.z), x_1307);
    let x_1311 : f32 = u_xlat37.x;
    let x_1312 : u32 = u_xlatu8;
    let x_1315 : f32 = x_1232.x_AdditionalLightsAttenuation[bitcast<i32>(x_1312)].z;
    let x_1317 : u32 = u_xlatu8;
    let x_1320 : f32 = x_1232.x_AdditionalLightsAttenuation[bitcast<i32>(x_1317)].w;
    u_xlat37.x = ((x_1311 * x_1315) + x_1320);
    let x_1324 : f32 = u_xlat37.x;
    u_xlat37.x = clamp(x_1324, 0.0f, 1.0f);
    let x_1328 : f32 = u_xlat37.x;
    let x_1330 : f32 = u_xlat37.x;
    u_xlat37.x = (x_1328 * x_1330);
    let x_1334 : f32 = u_xlat37.x;
    let x_1336 : f32 = u_xlat9.x;
    u_xlat9.x = (x_1334 * x_1336);
    let x_1340 : u32 = u_xlatu8;
    u_xlatu37 = (x_1340 >> 5u);
    let x_1343 : u32 = u_xlatu8;
    u_xlati51 = (1i << bitcast<u32>((bitcast<i32>(x_1343) & 31i)));
    let x_1349 : i32 = u_xlati51;
    let x_1351 : u32 = u_xlatu37;
    let x_1354 : f32 = x_758.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1351)].el;
    u_xlati37 = bitcast<i32>((bitcast<u32>(x_1349) & bitcast<u32>(x_1354)));
    let x_1358 : i32 = u_xlati37;
    if ((x_1358 != 0i)) {
      let x_1368 : u32 = u_xlatu8;
      let x_1371 : f32 = x_1367.x_AdditionalLightsLightTypes[bitcast<i32>(x_1368)].el;
      u_xlati37 = i32(x_1371);
      let x_1373 : i32 = u_xlati37;
      u_xlati51 = select(1i, 0i, (x_1373 != 0i));
      let x_1377 : u32 = u_xlatu8;
      u_xlati52 = (bitcast<i32>(x_1377) << bitcast<u32>(2i));
      let x_1380 : i32 = u_xlati51;
      if ((x_1380 != 0i)) {
        let x_1385 : vec3<f32> = vs_INTERP0;
        let x_1387 : i32 = u_xlati52;
        let x_1390 : i32 = u_xlati52;
        let x_1394 : vec4<f32> = x_1367.x_AdditionalLightsWorldToLights[((x_1387 + 1i) / 4i)][((x_1390 + 1i) % 4i)];
        let x_1396 : vec3<f32> = (vec3<f32>(x_1385.y, x_1385.y, x_1385.y) * vec3<f32>(x_1394.x, x_1394.y, x_1394.w));
        let x_1397 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1396.x, x_1396.y, x_1396.z, x_1397.w);
        let x_1399 : i32 = u_xlati52;
        let x_1401 : i32 = u_xlati52;
        let x_1404 : vec4<f32> = x_1367.x_AdditionalLightsWorldToLights[(x_1399 / 4i)][(x_1401 % 4i)];
        let x_1406 : vec3<f32> = vs_INTERP0;
        let x_1409 : vec4<f32> = u_xlat11;
        let x_1411 : vec3<f32> = ((vec3<f32>(x_1404.x, x_1404.y, x_1404.w) * vec3<f32>(x_1406.x, x_1406.x, x_1406.x)) + vec3<f32>(x_1409.x, x_1409.y, x_1409.z));
        let x_1412 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1411.x, x_1411.y, x_1411.z, x_1412.w);
        let x_1414 : i32 = u_xlati52;
        let x_1417 : i32 = u_xlati52;
        let x_1421 : vec4<f32> = x_1367.x_AdditionalLightsWorldToLights[((x_1414 + 2i) / 4i)][((x_1417 + 2i) % 4i)];
        let x_1423 : vec3<f32> = vs_INTERP0;
        let x_1426 : vec4<f32> = u_xlat11;
        let x_1428 : vec3<f32> = ((vec3<f32>(x_1421.x, x_1421.y, x_1421.w) * vec3<f32>(x_1423.z, x_1423.z, x_1423.z)) + vec3<f32>(x_1426.x, x_1426.y, x_1426.z));
        let x_1429 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1428.x, x_1428.y, x_1428.z, x_1429.w);
        let x_1431 : vec4<f32> = u_xlat11;
        let x_1433 : i32 = u_xlati52;
        let x_1436 : i32 = u_xlati52;
        let x_1440 : vec4<f32> = x_1367.x_AdditionalLightsWorldToLights[((x_1433 + 3i) / 4i)][((x_1436 + 3i) % 4i)];
        let x_1442 : vec3<f32> = (vec3<f32>(x_1431.x, x_1431.y, x_1431.z) + vec3<f32>(x_1440.x, x_1440.y, x_1440.w));
        let x_1443 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1442.x, x_1442.y, x_1442.z, x_1443.w);
        let x_1445 : vec4<f32> = u_xlat11;
        let x_1447 : vec4<f32> = u_xlat11;
        let x_1449 : vec2<f32> = (vec2<f32>(x_1445.x, x_1445.y) / vec2<f32>(x_1447.z, x_1447.z));
        let x_1450 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1449.x, x_1449.y, x_1450.z, x_1450.w);
        let x_1452 : vec4<f32> = u_xlat11;
        let x_1455 : vec2<f32> = ((vec2<f32>(x_1452.x, x_1452.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1456 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1455.x, x_1455.y, x_1456.z, x_1456.w);
        let x_1458 : vec4<f32> = u_xlat11;
        let x_1462 : vec2<f32> = clamp(vec2<f32>(x_1458.x, x_1458.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1463 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1462.x, x_1462.y, x_1463.z, x_1463.w);
        let x_1465 : u32 = u_xlatu8;
        let x_1468 : vec4<f32> = x_1367.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1465)];
        let x_1470 : vec4<f32> = u_xlat11;
        let x_1473 : u32 = u_xlatu8;
        let x_1476 : vec4<f32> = x_1367.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1473)];
        let x_1478 : vec2<f32> = ((vec2<f32>(x_1468.x, x_1468.y) * vec2<f32>(x_1470.x, x_1470.y)) + vec2<f32>(x_1476.z, x_1476.w));
        let x_1479 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1478.x, x_1478.y, x_1479.z, x_1479.w);
      } else {
        let x_1483 : i32 = u_xlati37;
        u_xlatb37 = (x_1483 == 1i);
        let x_1485 : bool = u_xlatb37;
        u_xlati37 = select(0i, 1i, x_1485);
        let x_1487 : i32 = u_xlati37;
        if ((x_1487 != 0i)) {
          let x_1491 : vec3<f32> = vs_INTERP0;
          let x_1493 : i32 = u_xlati52;
          let x_1496 : i32 = u_xlati52;
          let x_1500 : vec4<f32> = x_1367.x_AdditionalLightsWorldToLights[((x_1493 + 1i) / 4i)][((x_1496 + 1i) % 4i)];
          u_xlat37 = (vec2<f32>(x_1491.y, x_1491.y) * vec2<f32>(x_1500.x, x_1500.y));
          let x_1503 : i32 = u_xlati52;
          let x_1505 : i32 = u_xlati52;
          let x_1508 : vec4<f32> = x_1367.x_AdditionalLightsWorldToLights[(x_1503 / 4i)][(x_1505 % 4i)];
          let x_1510 : vec3<f32> = vs_INTERP0;
          let x_1513 : vec2<f32> = u_xlat37;
          u_xlat37 = ((vec2<f32>(x_1508.x, x_1508.y) * vec2<f32>(x_1510.x, x_1510.x)) + x_1513);
          let x_1515 : i32 = u_xlati52;
          let x_1518 : i32 = u_xlati52;
          let x_1522 : vec4<f32> = x_1367.x_AdditionalLightsWorldToLights[((x_1515 + 2i) / 4i)][((x_1518 + 2i) % 4i)];
          let x_1524 : vec3<f32> = vs_INTERP0;
          let x_1527 : vec2<f32> = u_xlat37;
          u_xlat37 = ((vec2<f32>(x_1522.x, x_1522.y) * vec2<f32>(x_1524.z, x_1524.z)) + x_1527);
          let x_1529 : vec2<f32> = u_xlat37;
          let x_1530 : i32 = u_xlati52;
          let x_1533 : i32 = u_xlati52;
          let x_1537 : vec4<f32> = x_1367.x_AdditionalLightsWorldToLights[((x_1530 + 3i) / 4i)][((x_1533 + 3i) % 4i)];
          u_xlat37 = (x_1529 + vec2<f32>(x_1537.x, x_1537.y));
          let x_1540 : vec2<f32> = u_xlat37;
          u_xlat37 = ((x_1540 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1543 : vec2<f32> = u_xlat37;
          u_xlat37 = fract(x_1543);
          let x_1545 : u32 = u_xlatu8;
          let x_1548 : vec4<f32> = x_1367.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1545)];
          let x_1550 : vec2<f32> = u_xlat37;
          let x_1552 : u32 = u_xlatu8;
          let x_1555 : vec4<f32> = x_1367.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1552)];
          let x_1557 : vec2<f32> = ((vec2<f32>(x_1548.x, x_1548.y) * x_1550) + vec2<f32>(x_1555.z, x_1555.w));
          let x_1558 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1557.x, x_1557.y, x_1558.z, x_1558.w);
        } else {
          let x_1562 : vec3<f32> = vs_INTERP0;
          let x_1564 : i32 = u_xlati52;
          let x_1567 : i32 = u_xlati52;
          let x_1571 : vec4<f32> = x_1367.x_AdditionalLightsWorldToLights[((x_1564 + 1i) / 4i)][((x_1567 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1562.y, x_1562.y, x_1562.y, x_1562.y) * x_1571);
          let x_1573 : i32 = u_xlati52;
          let x_1575 : i32 = u_xlati52;
          let x_1578 : vec4<f32> = x_1367.x_AdditionalLightsWorldToLights[(x_1573 / 4i)][(x_1575 % 4i)];
          let x_1579 : vec3<f32> = vs_INTERP0;
          let x_1582 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1578 * vec4<f32>(x_1579.x, x_1579.x, x_1579.x, x_1579.x)) + x_1582);
          let x_1584 : i32 = u_xlati52;
          let x_1587 : i32 = u_xlati52;
          let x_1591 : vec4<f32> = x_1367.x_AdditionalLightsWorldToLights[((x_1584 + 2i) / 4i)][((x_1587 + 2i) % 4i)];
          let x_1592 : vec3<f32> = vs_INTERP0;
          let x_1595 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1591 * vec4<f32>(x_1592.z, x_1592.z, x_1592.z, x_1592.z)) + x_1595);
          let x_1597 : vec4<f32> = u_xlat12;
          let x_1598 : i32 = u_xlati52;
          let x_1601 : i32 = u_xlati52;
          let x_1605 : vec4<f32> = x_1367.x_AdditionalLightsWorldToLights[((x_1598 + 3i) / 4i)][((x_1601 + 3i) % 4i)];
          u_xlat12 = (x_1597 + x_1605);
          let x_1607 : vec4<f32> = u_xlat12;
          let x_1609 : vec4<f32> = u_xlat12;
          let x_1611 : vec3<f32> = (vec3<f32>(x_1607.x, x_1607.y, x_1607.z) / vec3<f32>(x_1609.w, x_1609.w, x_1609.w));
          let x_1612 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1611.x, x_1611.y, x_1611.z, x_1612.w);
          let x_1614 : vec4<f32> = u_xlat12;
          let x_1616 : vec4<f32> = u_xlat12;
          u_xlat37.x = dot(vec3<f32>(x_1614.x, x_1614.y, x_1614.z), vec3<f32>(x_1616.x, x_1616.y, x_1616.z));
          let x_1621 : f32 = u_xlat37.x;
          u_xlat37.x = inverseSqrt(x_1621);
          let x_1624 : vec2<f32> = u_xlat37;
          let x_1626 : vec4<f32> = u_xlat12;
          let x_1628 : vec3<f32> = (vec3<f32>(x_1624.x, x_1624.x, x_1624.x) * vec3<f32>(x_1626.x, x_1626.y, x_1626.z));
          let x_1629 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1628.x, x_1628.y, x_1628.z, x_1629.w);
          let x_1631 : vec4<f32> = u_xlat12;
          u_xlat37.x = dot(abs(vec3<f32>(x_1631.x, x_1631.y, x_1631.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1638 : f32 = u_xlat37.x;
          u_xlat37.x = max(x_1638, 0.000001f);
          let x_1643 : f32 = u_xlat37.x;
          u_xlat37.x = (1.0f / x_1643);
          let x_1647 : vec2<f32> = u_xlat37;
          let x_1649 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1647.x, x_1647.x, x_1647.x) * vec3<f32>(x_1649.z, x_1649.x, x_1649.y));
          let x_1653 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1653);
          let x_1657 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1657, 0.0f, 1.0f);
          let x_1661 : vec3<f32> = u_xlat13;
          let x_1664 : vec4<bool> = (vec4<f32>(x_1661.y, x_1661.z, x_1661.y, x_1661.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1664.x, x_1664.y);
          let x_1668 : bool = u_xlatb39.x;
          if (x_1668) {
            let x_1673 : f32 = u_xlat13.x;
            x_1669 = x_1673;
          } else {
            let x_1676 : f32 = u_xlat13.x;
            x_1669 = -(x_1676);
          }
          let x_1678 : f32 = x_1669;
          u_xlat39.x = x_1678;
          let x_1681 : bool = u_xlatb39.y;
          if (x_1681) {
            let x_1686 : f32 = u_xlat13.x;
            x_1682 = x_1686;
          } else {
            let x_1689 : f32 = u_xlat13.x;
            x_1682 = -(x_1689);
          }
          let x_1691 : f32 = x_1682;
          u_xlat39.y = x_1691;
          let x_1693 : vec4<f32> = u_xlat12;
          let x_1695 : vec2<f32> = u_xlat37;
          let x_1698 : vec2<f32> = u_xlat39;
          u_xlat37 = ((vec2<f32>(x_1693.x, x_1693.y) * vec2<f32>(x_1695.x, x_1695.x)) + x_1698);
          let x_1700 : vec2<f32> = u_xlat37;
          u_xlat37 = ((x_1700 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1703 : vec2<f32> = u_xlat37;
          u_xlat37 = clamp(x_1703, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1707 : u32 = u_xlatu8;
          let x_1710 : vec4<f32> = x_1367.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1707)];
          let x_1712 : vec2<f32> = u_xlat37;
          let x_1714 : u32 = u_xlatu8;
          let x_1717 : vec4<f32> = x_1367.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1714)];
          let x_1719 : vec2<f32> = ((vec2<f32>(x_1710.x, x_1710.y) * x_1712) + vec2<f32>(x_1717.z, x_1717.w));
          let x_1720 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1719.x, x_1719.y, x_1720.z, x_1720.w);
        }
      }
      let x_1727 : vec4<f32> = u_xlat11;
      let x_1730 : f32 = x_66.x_GlobalMipBias.x;
      let x_1731 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1727.x, x_1727.y), x_1730);
      u_xlat11 = x_1731;
      let x_1733 : bool = u_xlatb3.z;
      if (x_1733) {
        let x_1738 : f32 = u_xlat11.w;
        x_1734 = x_1738;
      } else {
        let x_1741 : f32 = u_xlat11.x;
        x_1734 = x_1741;
      }
      let x_1742 : f32 = x_1734;
      u_xlat37.x = x_1742;
      let x_1745 : bool = u_xlatb3.x;
      if (x_1745) {
        let x_1749 : vec4<f32> = u_xlat11;
        x_1746 = vec3<f32>(x_1749.x, x_1749.y, x_1749.z);
      } else {
        let x_1752 : vec2<f32> = u_xlat37;
        x_1746 = vec3<f32>(x_1752.x, x_1752.x, x_1752.x);
      }
      let x_1754 : vec3<f32> = x_1746;
      let x_1755 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1754.x, x_1754.y, x_1754.z, x_1755.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1761 : vec4<f32> = u_xlat11;
    let x_1763 : u32 = u_xlatu8;
    let x_1766 : vec4<f32> = x_1232.x_AdditionalLightsColor[bitcast<i32>(x_1763)];
    let x_1768 : vec3<f32> = (vec3<f32>(x_1761.x, x_1761.y, x_1761.z) * vec3<f32>(x_1766.x, x_1766.y, x_1766.z));
    let x_1769 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1768.x, x_1768.y, x_1768.z, x_1769.w);
    let x_1771 : vec3<f32> = u_xlat6;
    let x_1773 : vec4<f32> = u_xlat11;
    let x_1775 : vec3<f32> = (vec3<f32>(x_1771.x, x_1771.x, x_1771.x) * vec3<f32>(x_1773.x, x_1773.y, x_1773.z));
    let x_1776 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1775.x, x_1775.y, x_1775.z, x_1776.w);
    let x_1778 : vec4<f32> = u_xlat4;
    let x_1780 : vec3<f32> = u_xlat10;
    u_xlat8.x = dot(vec3<f32>(x_1778.x, x_1778.y, x_1778.z), x_1780);
    let x_1784 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_1784, 0.0f, 1.0f);
    let x_1788 : f32 = u_xlat8.x;
    let x_1790 : f32 = u_xlat9.x;
    u_xlat8.x = (x_1788 * x_1790);
    let x_1793 : vec4<f32> = u_xlat8;
    let x_1795 : vec4<f32> = u_xlat11;
    let x_1797 : vec3<f32> = (vec3<f32>(x_1793.x, x_1793.x, x_1793.x) * vec3<f32>(x_1795.x, x_1795.y, x_1795.z));
    let x_1798 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1797.x, x_1798.y, x_1797.y, x_1797.z);
    let x_1800 : vec3<f32> = u_xlat22;
    let x_1801 : f32 = u_xlat23;
    let x_1804 : vec3<f32> = u_xlat5;
    let x_1805 : vec3<f32> = ((x_1800 * vec3<f32>(x_1801, x_1801, x_1801)) + x_1804);
    let x_1806 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1805.x, x_1805.y, x_1805.z, x_1806.w);
    let x_1809 : vec4<f32> = u_xlat8;
    let x_1811 : vec4<f32> = u_xlat8;
    u_xlat50 = dot(vec3<f32>(x_1809.x, x_1809.y, x_1809.z), vec3<f32>(x_1811.x, x_1811.y, x_1811.z));
    let x_1814 : f32 = u_xlat50;
    u_xlat50 = max(x_1814, 1.17549435e-37f);
    let x_1816 : f32 = u_xlat50;
    u_xlat50 = inverseSqrt(x_1816);
    let x_1818 : f32 = u_xlat50;
    let x_1820 : vec4<f32> = u_xlat8;
    let x_1822 : vec3<f32> = (vec3<f32>(x_1818, x_1818, x_1818) * vec3<f32>(x_1820.x, x_1820.y, x_1820.z));
    let x_1823 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1822.x, x_1822.y, x_1822.z, x_1823.w);
    let x_1825 : vec4<f32> = u_xlat4;
    let x_1827 : vec4<f32> = u_xlat8;
    u_xlat8.w = dot(vec3<f32>(x_1825.x, x_1825.y, x_1825.z), vec3<f32>(x_1827.x, x_1827.y, x_1827.z));
    let x_1832 : f32 = u_xlat8.w;
    u_xlat8.w = clamp(x_1832, 0.0f, 1.0f);
    let x_1835 : vec3<f32> = u_xlat10;
    let x_1836 : vec4<f32> = u_xlat8;
    u_xlat8.x = dot(x_1835, vec3<f32>(x_1836.x, x_1836.y, x_1836.z));
    let x_1841 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_1841, 0.0f, 1.0f);
    let x_1844 : vec4<f32> = u_xlat8;
    let x_1846 : vec4<f32> = u_xlat8;
    let x_1848 : vec2<f32> = (vec2<f32>(x_1844.x, x_1844.w) * vec2<f32>(x_1846.x, x_1846.w));
    let x_1849 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1848.x, x_1848.y, x_1849.z, x_1849.w);
    let x_1852 : f32 = u_xlat8.y;
    let x_1854 : f32 = u_xlat17.x;
    u_xlat22.x = ((x_1852 * x_1854) + 1.000010014f);
    let x_1859 : f32 = u_xlat22.x;
    let x_1861 : f32 = u_xlat22.x;
    u_xlat22.x = (x_1859 * x_1861);
    let x_1865 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_1865, 0.100000001f);
    let x_1869 : f32 = u_xlat8.x;
    let x_1871 : f32 = u_xlat22.x;
    u_xlat8.x = (x_1869 * x_1871);
    let x_1874 : f32 = u_xlat46;
    let x_1876 : f32 = u_xlat8.x;
    u_xlat8.x = (x_1874 * x_1876);
    let x_1879 : f32 = u_xlat45;
    let x_1881 : f32 = u_xlat8.x;
    u_xlat8.x = (x_1879 / x_1881);
    let x_1884 : vec4<f32> = u_xlat8;
    let x_1887 : vec3<f32> = u_xlat2;
    let x_1888 : vec3<f32> = ((vec3<f32>(x_1884.x, x_1884.x, x_1884.x) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1887);
    let x_1889 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1888.x, x_1888.y, x_1888.z, x_1889.w);
    let x_1891 : vec4<f32> = u_xlat8;
    let x_1893 : vec4<f32> = u_xlat9;
    let x_1896 : vec4<f32> = u_xlat7;
    let x_1898 : vec3<f32> = ((vec3<f32>(x_1891.x, x_1891.y, x_1891.z) * vec3<f32>(x_1893.x, x_1893.z, x_1893.w)) + vec3<f32>(x_1896.x, x_1896.y, x_1896.z));
    let x_1899 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1898.x, x_1898.y, x_1898.z, x_1899.w);

    continuing {
      let x_1901 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1901 + bitcast<u32>(1i));
    }
  }
  let x_1903 : vec4<f32> = u_xlat1;
  let x_1905 : f32 = u_xlat47;
  let x_1908 : vec3<f32> = u_xlat20;
  let x_1909 : vec3<f32> = ((vec3<f32>(x_1903.x, x_1903.z, x_1903.w) * vec3<f32>(x_1905, x_1905, x_1905)) + x_1908);
  let x_1910 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1909.x, x_1910.y, x_1909.y, x_1909.z);
  let x_1912 : vec4<f32> = u_xlat7;
  let x_1914 : vec4<f32> = u_xlat1;
  let x_1916 : vec3<f32> = (vec3<f32>(x_1912.x, x_1912.y, x_1912.z) + vec3<f32>(x_1914.x, x_1914.z, x_1914.w));
  let x_1917 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1916.x, x_1917.y, x_1916.y, x_1916.z);
  let x_1921 : vec4<f32> = vs_INTERP4;
  let x_1923 : vec3<f32> = u_xlat0;
  let x_1925 : vec4<f32> = u_xlat1;
  let x_1927 : vec3<f32> = ((vec3<f32>(x_1921.w, x_1921.w, x_1921.w) * x_1923) + vec3<f32>(x_1925.x, x_1925.z, x_1925.w));
  let x_1928 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1927.x, x_1927.y, x_1927.z, x_1928.w);
  let x_1930 : bool = u_xlatb15;
  let x_1931 : f32 = u_xlat42;
  SV_Target0.w = select(1.0f, x_1931, x_1930);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
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
  return main_out(SV_Target0);
}

