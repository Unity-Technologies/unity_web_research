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

@group(1) @binding(4) var<uniform> x_790 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1271 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1375 : AdditionalLightsCookies;

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
  var x_465 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat31 : vec2<f32>;
  var u_xlat45 : f32;
  var u_xlat46 : f32;
  var u_xlat47 : f32;
  var u_xlat20 : f32;
  var txVec1 : vec3<f32>;
  var u_xlat34 : vec2<f32>;
  var u_xlatb34 : vec2<bool>;
  var u_xlatb48 : bool;
  var u_xlat48 : f32;
  var x_859 : f32;
  var x_870 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlatu44 : u32;
  var u_xlatb3 : vec4<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu48 : u32;
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
  var x_1678 : f32;
  var x_1691 : f32;
  var x_1753 : f32;
  var x_1764 : vec3<f32>;
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
  let x_455 : f32 = x_66.unity_MatrixV[0i].z;
  u_xlat5.x = x_455;
  let x_458 : f32 = x_66.unity_MatrixV[1i].z;
  u_xlat5.y = x_458;
  let x_461 : f32 = x_66.unity_MatrixV[2i].z;
  u_xlat5.z = x_461;
  let x_464 : bool = u_xlatb1.x;
  if (x_464) {
    let x_468 : vec3<f32> = u_xlat17;
    x_465 = x_468;
  } else {
    let x_470 : vec3<f32> = u_xlat5;
    x_465 = x_470;
  }
  let x_471 : vec3<f32> = x_465;
  let x_472 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_471.x, x_472.y, x_471.y, x_471.z);
  let x_475 : f32 = vs_INTERP0.y;
  let x_477 : f32 = x_66.unity_MatrixV[1i].z;
  u_xlat17.x = (x_475 * x_477);
  let x_481 : f32 = x_66.unity_MatrixV[0i].z;
  let x_483 : f32 = vs_INTERP0.x;
  let x_486 : f32 = u_xlat17.x;
  u_xlat17.x = ((x_481 * x_483) + x_486);
  let x_490 : f32 = x_66.unity_MatrixV[2i].z;
  let x_492 : f32 = vs_INTERP0.z;
  let x_495 : f32 = u_xlat17.x;
  u_xlat17.x = ((x_490 * x_492) + x_495);
  let x_499 : f32 = u_xlat17.x;
  let x_501 : f32 = x_66.unity_MatrixV[3i].z;
  u_xlat17.x = (x_499 + x_501);
  let x_505 : f32 = u_xlat17.x;
  let x_508 : f32 = x_66.x_ProjectionParams.y;
  u_xlat17.x = (-(x_505) + -(x_508));
  let x_513 : f32 = u_xlat17.x;
  u_xlat17.x = max(x_513, 0.0f);
  let x_517 : f32 = u_xlat17.x;
  let x_520 : f32 = x_66.unity_FogParams.x;
  u_xlat17.x = (x_517 * x_520);
  u_xlat4.w = 1.0f;
  let x_526 : vec4<f32> = x_344.unity_SHAr;
  let x_527 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_526, x_527);
  let x_532 : vec4<f32> = x_344.unity_SHAg;
  let x_533 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_532, x_533);
  let x_538 : vec4<f32> = x_344.unity_SHAb;
  let x_539 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_538, x_539);
  let x_543 : vec4<f32> = u_xlat4;
  let x_545 : vec4<f32> = u_xlat4;
  u_xlat6 = (vec4<f32>(x_543.y, x_543.z, x_543.z, x_543.x) * vec4<f32>(x_545.x, x_545.y, x_545.z, x_545.z));
  let x_551 : vec4<f32> = x_344.unity_SHBr;
  let x_552 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_551, x_552);
  let x_557 : vec4<f32> = x_344.unity_SHBg;
  let x_558 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_557, x_558);
  let x_563 : vec4<f32> = x_344.unity_SHBb;
  let x_564 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_563, x_564);
  let x_570 : f32 = u_xlat4.y;
  let x_572 : f32 = u_xlat4.y;
  u_xlat31.x = (x_570 * x_572);
  let x_576 : f32 = u_xlat4.x;
  let x_578 : f32 = u_xlat4.x;
  let x_581 : f32 = u_xlat31.x;
  u_xlat31.x = ((x_576 * x_578) + -(x_581));
  let x_587 : vec4<f32> = x_344.unity_SHC;
  let x_589 : vec2<f32> = u_xlat31;
  let x_592 : vec4<f32> = u_xlat7;
  let x_594 : vec3<f32> = ((vec3<f32>(x_587.x, x_587.y, x_587.z) * vec3<f32>(x_589.x, x_589.x, x_589.x)) + vec3<f32>(x_592.x, x_592.y, x_592.z));
  let x_595 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_594.x, x_594.y, x_594.z, x_595.w);
  let x_597 : vec3<f32> = u_xlat5;
  let x_598 : vec4<f32> = u_xlat6;
  u_xlat5 = (x_597 + vec3<f32>(x_598.x, x_598.y, x_598.z));
  let x_601 : vec3<f32> = u_xlat5;
  u_xlat5 = max(x_601, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_606 : vec4<f32> = x_66.x_ScaledScreenParams;
  let x_607 : vec2<f32> = vec2<f32>(x_606.x, x_606.y);
  u_xlat31 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_607.x, x_607.y));
  let x_612 : vec2<f32> = u_xlat31;
  let x_613 : vec4<f32> = hlslcc_FragCoord;
  let x_615 : vec2<f32> = (x_612 * vec2<f32>(x_613.x, x_613.y));
  let x_616 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_615.x, x_615.y, x_616.z, x_616.w);
  let x_619 : f32 = u_xlat6.y;
  let x_622 : f32 = x_66.x_ScaleBiasRt.x;
  let x_625 : f32 = x_66.x_ScaleBiasRt.y;
  u_xlat31.x = ((x_619 * x_622) + x_625);
  let x_629 : f32 = u_xlat31.x;
  u_xlat6.z = (-(x_629) + 1.0f);
  let x_634 : f32 = u_xlat3.x;
  u_xlat3.x = x_634;
  let x_637 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_637, 0.0f, 1.0f);
  let x_640 : f32 = u_xlat42;
  u_xlat42 = min(x_640, 1.0f);
  let x_642 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_642 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_647 : f32 = u_xlat3.x;
  u_xlat31.x = (-(x_647) + 1.0f);
  let x_653 : f32 = u_xlat31.x;
  let x_655 : f32 = u_xlat31.x;
  u_xlat45 = (x_653 * x_655);
  let x_657 : f32 = u_xlat45;
  u_xlat45 = max(x_657, 0.0078125f);
  let x_661 : f32 = u_xlat45;
  let x_662 : f32 = u_xlat45;
  u_xlat46 = (x_661 * x_662);
  let x_665 : f32 = u_xlat3.x;
  u_xlat3.x = (x_665 + 0.040000021f);
  let x_670 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_670, 1.0f);
  let x_674 : f32 = u_xlat45;
  u_xlat47 = ((x_674 * 4.0f) + 2.0f);
  let x_683 : vec4<f32> = u_xlat6;
  let x_686 : f32 = x_66.x_GlobalMipBias.x;
  let x_687 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_683.x, x_683.z), x_686);
  u_xlat6.x = x_687.x;
  let x_692 : f32 = u_xlat6.x;
  u_xlat20 = (x_692 + -1.0f);
  let x_696 : f32 = x_66.x_AmbientOcclusionParam.w;
  let x_697 : f32 = u_xlat20;
  u_xlat20 = ((x_696 * x_697) + 1.0f);
  let x_701 : f32 = u_xlat6.x;
  let x_703 : f32 = vs_INTERP4.w;
  u_xlat6.x = min(x_701, x_703);
  let x_708 : vec4<f32> = vs_INTERP9;
  let x_709 : vec2<f32> = vec2<f32>(x_708.x, x_708.y);
  let x_711 : f32 = vs_INTERP9.z;
  txVec1 = vec3<f32>(x_709.x, x_709.y, x_711);
  let x_719 : vec3<f32> = txVec1;
  let x_721 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_719.xy, x_719.z);
  u_xlat34.x = x_721;
  let x_724 : f32 = u_xlat34.x;
  let x_726 : f32 = x_139.x_MainLightShadowParams.x;
  let x_728 : f32 = u_xlat44;
  u_xlat44 = ((x_724 * x_726) + x_728);
  let x_734 : f32 = vs_INTERP9.z;
  u_xlatb34.x = (0.0f >= x_734);
  let x_739 : f32 = vs_INTERP9.z;
  u_xlatb48 = (x_739 >= 1.0f);
  let x_741 : bool = u_xlatb48;
  let x_743 : bool = u_xlatb34.x;
  u_xlatb34.x = (x_741 | x_743);
  let x_747 : bool = u_xlatb34.x;
  let x_748 : f32 = u_xlat44;
  u_xlat44 = select(x_748, 1.0f, x_747);
  let x_750 : vec3<f32> = vs_INTERP0;
  let x_752 : vec3<f32> = x_66.x_WorldSpaceCameraPos;
  let x_754 : vec3<f32> = (x_750 + -(x_752));
  let x_755 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_754.x, x_754.y, x_754.z, x_755.w);
  let x_757 : vec4<f32> = u_xlat7;
  let x_759 : vec4<f32> = u_xlat7;
  u_xlat34.x = dot(vec3<f32>(x_757.x, x_757.y, x_757.z), vec3<f32>(x_759.x, x_759.y, x_759.z));
  let x_764 : f32 = u_xlat34.x;
  let x_766 : f32 = x_139.x_MainLightShadowParams.z;
  let x_769 : f32 = x_139.x_MainLightShadowParams.w;
  u_xlat34.x = ((x_764 * x_766) + x_769);
  let x_773 : f32 = u_xlat34.x;
  u_xlat34.x = clamp(x_773, 0.0f, 1.0f);
  let x_777 : f32 = u_xlat44;
  u_xlat48 = (-(x_777) + 1.0f);
  let x_781 : f32 = u_xlat34.x;
  let x_782 : f32 = u_xlat48;
  let x_784 : f32 = u_xlat44;
  u_xlat44 = ((x_781 * x_782) + x_784);
  let x_792 : f32 = x_790.x_MainLightCookieTextureFormat;
  u_xlatb34.x = !((x_792 == -1.0f));
  let x_796 : bool = u_xlatb34.x;
  if (x_796) {
    let x_799 : vec3<f32> = vs_INTERP0;
    let x_802 : vec4<f32> = x_790.x_MainLightWorldToLight[1i];
    u_xlat34 = (vec2<f32>(x_799.y, x_799.y) * vec2<f32>(x_802.x, x_802.y));
    let x_806 : vec4<f32> = x_790.x_MainLightWorldToLight[0i];
    let x_808 : vec3<f32> = vs_INTERP0;
    let x_811 : vec2<f32> = u_xlat34;
    u_xlat34 = ((vec2<f32>(x_806.x, x_806.y) * vec2<f32>(x_808.x, x_808.x)) + x_811);
    let x_814 : vec4<f32> = x_790.x_MainLightWorldToLight[2i];
    let x_816 : vec3<f32> = vs_INTERP0;
    let x_819 : vec2<f32> = u_xlat34;
    u_xlat34 = ((vec2<f32>(x_814.x, x_814.y) * vec2<f32>(x_816.z, x_816.z)) + x_819);
    let x_821 : vec2<f32> = u_xlat34;
    let x_823 : vec4<f32> = x_790.x_MainLightWorldToLight[3i];
    u_xlat34 = (x_821 + vec2<f32>(x_823.x, x_823.y));
    let x_826 : vec2<f32> = u_xlat34;
    u_xlat34 = ((x_826 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_835 : vec2<f32> = u_xlat34;
    let x_837 : f32 = x_66.x_GlobalMipBias.x;
    let x_838 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_835, x_837);
    u_xlat7 = x_838;
    let x_840 : f32 = x_790.x_MainLightCookieTextureFormat;
    let x_842 : f32 = x_790.x_MainLightCookieTextureFormat;
    let x_844 : f32 = x_790.x_MainLightCookieTextureFormat;
    let x_846 : f32 = x_790.x_MainLightCookieTextureFormat;
    let x_847 : vec4<f32> = vec4<f32>(x_840, x_842, x_844, x_846);
    let x_855 : vec4<bool> = (vec4<f32>(x_847.x, x_847.y, x_847.z, x_847.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb34 = vec2<bool>(x_855.x, x_855.y);
    let x_858 : bool = u_xlatb34.y;
    if (x_858) {
      let x_863 : f32 = u_xlat7.w;
      x_859 = x_863;
    } else {
      let x_866 : f32 = u_xlat7.x;
      x_859 = x_866;
    }
    let x_867 : f32 = x_859;
    u_xlat48 = x_867;
    let x_869 : bool = u_xlatb34.x;
    if (x_869) {
      let x_873 : vec4<f32> = u_xlat7;
      x_870 = vec3<f32>(x_873.x, x_873.y, x_873.z);
    } else {
      let x_876 : f32 = u_xlat48;
      x_870 = vec3<f32>(x_876, x_876, x_876);
    }
    let x_878 : vec3<f32> = x_870;
    let x_879 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_878.x, x_878.y, x_878.z, x_879.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_885 : vec4<f32> = u_xlat7;
  let x_888 : vec4<f32> = x_66.x_MainLightColor;
  let x_890 : vec3<f32> = (vec3<f32>(x_885.x, x_885.y, x_885.z) * vec3<f32>(x_888.x, x_888.y, x_888.z));
  let x_891 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_890.x, x_890.y, x_890.z, x_891.w);
  let x_893 : f32 = u_xlat20;
  let x_895 : vec4<f32> = u_xlat7;
  let x_897 : vec3<f32> = (vec3<f32>(x_893, x_893, x_893) * vec3<f32>(x_895.x, x_895.y, x_895.z));
  let x_898 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_897.x, x_897.y, x_897.z, x_898.w);
  let x_900 : vec4<f32> = u_xlat1;
  let x_903 : vec4<f32> = u_xlat4;
  u_xlat34.x = dot(-(vec3<f32>(x_900.x, x_900.z, x_900.w)), vec3<f32>(x_903.x, x_903.y, x_903.z));
  let x_908 : f32 = u_xlat34.x;
  let x_910 : f32 = u_xlat34.x;
  u_xlat34.x = (x_908 + x_910);
  let x_914 : vec4<f32> = u_xlat4;
  let x_916 : vec2<f32> = u_xlat34;
  let x_920 : vec4<f32> = u_xlat1;
  let x_923 : vec3<f32> = ((vec3<f32>(x_914.x, x_914.y, x_914.z) * -(vec3<f32>(x_916.x, x_916.x, x_916.x))) + -(vec3<f32>(x_920.x, x_920.z, x_920.w)));
  let x_924 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_923.x, x_923.y, x_923.z, x_924.w);
  let x_926 : vec4<f32> = u_xlat4;
  let x_928 : vec4<f32> = u_xlat1;
  u_xlat34.x = dot(vec3<f32>(x_926.x, x_926.y, x_926.z), vec3<f32>(x_928.x, x_928.z, x_928.w));
  let x_933 : f32 = u_xlat34.x;
  u_xlat34.x = clamp(x_933, 0.0f, 1.0f);
  let x_937 : f32 = u_xlat34.x;
  u_xlat34.x = (-(x_937) + 1.0f);
  let x_942 : f32 = u_xlat34.x;
  let x_944 : f32 = u_xlat34.x;
  u_xlat34.x = (x_942 * x_944);
  let x_948 : f32 = u_xlat34.x;
  let x_950 : f32 = u_xlat34.x;
  u_xlat34.x = (x_948 * x_950);
  let x_954 : f32 = u_xlat31.x;
  u_xlat48 = ((-(x_954) * 0.699999988f) + 1.700000048f);
  let x_961 : f32 = u_xlat31.x;
  let x_962 : f32 = u_xlat48;
  u_xlat31.x = (x_961 * x_962);
  let x_966 : f32 = u_xlat31.x;
  u_xlat31.x = (x_966 * 6.0f);
  let x_978 : vec4<f32> = u_xlat8;
  let x_981 : f32 = u_xlat31.x;
  let x_982 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_978.x, x_978.y, x_978.z), x_981);
  u_xlat8 = x_982;
  let x_984 : f32 = u_xlat8.w;
  u_xlat31.x = (x_984 + -1.0f);
  let x_988 : f32 = x_344.unity_SpecCube0_HDR.w;
  let x_990 : f32 = u_xlat31.x;
  u_xlat31.x = ((x_988 * x_990) + 1.0f);
  let x_995 : f32 = u_xlat31.x;
  u_xlat31.x = max(x_995, 0.0f);
  let x_999 : f32 = u_xlat31.x;
  u_xlat31.x = log2(x_999);
  let x_1003 : f32 = u_xlat31.x;
  let x_1005 : f32 = x_344.unity_SpecCube0_HDR.y;
  u_xlat31.x = (x_1003 * x_1005);
  let x_1009 : f32 = u_xlat31.x;
  u_xlat31.x = exp2(x_1009);
  let x_1013 : f32 = u_xlat31.x;
  let x_1015 : f32 = x_344.unity_SpecCube0_HDR.x;
  u_xlat31.x = (x_1013 * x_1015);
  let x_1018 : vec4<f32> = u_xlat8;
  let x_1020 : vec2<f32> = u_xlat31;
  let x_1022 : vec3<f32> = (vec3<f32>(x_1018.x, x_1018.y, x_1018.z) * vec3<f32>(x_1020.x, x_1020.x, x_1020.x));
  let x_1023 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1022.x, x_1022.y, x_1022.z, x_1023.w);
  let x_1025 : f32 = u_xlat45;
  let x_1027 : f32 = u_xlat45;
  u_xlat31 = ((vec2<f32>(x_1025, x_1025) * vec2<f32>(x_1027, x_1027)) + vec2<f32>(-1.0f, 1.0f));
  let x_1033 : f32 = u_xlat31.y;
  u_xlat45 = (1.0f / x_1033);
  let x_1036 : f32 = u_xlat3.x;
  u_xlat3.x = (x_1036 + -0.039999999f);
  let x_1041 : f32 = u_xlat34.x;
  let x_1043 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1041 * x_1043) + 0.039999999f);
  let x_1049 : f32 = u_xlat3.x;
  let x_1050 : f32 = u_xlat45;
  u_xlat3.x = (x_1049 * x_1050);
  let x_1053 : vec4<f32> = u_xlat3;
  let x_1055 : vec4<f32> = u_xlat8;
  let x_1057 : vec3<f32> = (vec3<f32>(x_1053.x, x_1053.x, x_1053.x) * vec3<f32>(x_1055.x, x_1055.y, x_1055.z));
  let x_1058 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1057.x, x_1057.y, x_1057.z, x_1058.w);
  let x_1060 : vec3<f32> = u_xlat5;
  let x_1061 : vec3<f32> = u_xlat2;
  let x_1063 : vec4<f32> = u_xlat8;
  u_xlat5 = ((x_1060 * x_1061) + vec3<f32>(x_1063.x, x_1063.y, x_1063.z));
  let x_1066 : f32 = u_xlat44;
  let x_1068 : f32 = x_344.unity_LightData.z;
  u_xlat44 = (x_1066 * x_1068);
  let x_1070 : vec4<f32> = u_xlat4;
  let x_1073 : vec4<f32> = x_66.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_1070.x, x_1070.y, x_1070.z), vec3<f32>(x_1073.x, x_1073.y, x_1073.z));
  let x_1078 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1078, 0.0f, 1.0f);
  let x_1081 : f32 = u_xlat44;
  let x_1083 : f32 = u_xlat3.x;
  u_xlat44 = (x_1081 * x_1083);
  let x_1085 : f32 = u_xlat44;
  let x_1087 : vec4<f32> = u_xlat7;
  let x_1089 : vec3<f32> = (vec3<f32>(x_1085, x_1085, x_1085) * vec3<f32>(x_1087.x, x_1087.y, x_1087.z));
  let x_1090 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1089.x, x_1089.y, x_1089.z, x_1090.w);
  let x_1092 : vec4<f32> = u_xlat1;
  let x_1095 : vec4<f32> = x_66.x_MainLightPosition;
  let x_1097 : vec3<f32> = (vec3<f32>(x_1092.x, x_1092.z, x_1092.w) + vec3<f32>(x_1095.x, x_1095.y, x_1095.z));
  let x_1098 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1097.x, x_1097.y, x_1097.z, x_1098.w);
  let x_1100 : vec4<f32> = u_xlat8;
  let x_1102 : vec4<f32> = u_xlat8;
  u_xlat44 = dot(vec3<f32>(x_1100.x, x_1100.y, x_1100.z), vec3<f32>(x_1102.x, x_1102.y, x_1102.z));
  let x_1105 : f32 = u_xlat44;
  u_xlat44 = max(x_1105, 1.17549435e-37f);
  let x_1108 : f32 = u_xlat44;
  u_xlat44 = inverseSqrt(x_1108);
  let x_1110 : f32 = u_xlat44;
  let x_1112 : vec4<f32> = u_xlat8;
  let x_1114 : vec3<f32> = (vec3<f32>(x_1110, x_1110, x_1110) * vec3<f32>(x_1112.x, x_1112.y, x_1112.z));
  let x_1115 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1114.x, x_1114.y, x_1114.z, x_1115.w);
  let x_1117 : vec4<f32> = u_xlat4;
  let x_1119 : vec4<f32> = u_xlat8;
  u_xlat44 = dot(vec3<f32>(x_1117.x, x_1117.y, x_1117.z), vec3<f32>(x_1119.x, x_1119.y, x_1119.z));
  let x_1122 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1122, 0.0f, 1.0f);
  let x_1125 : vec4<f32> = x_66.x_MainLightPosition;
  let x_1127 : vec4<f32> = u_xlat8;
  u_xlat3.x = dot(vec3<f32>(x_1125.x, x_1125.y, x_1125.z), vec3<f32>(x_1127.x, x_1127.y, x_1127.z));
  let x_1132 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1132, 0.0f, 1.0f);
  let x_1135 : f32 = u_xlat44;
  let x_1136 : f32 = u_xlat44;
  u_xlat44 = (x_1135 * x_1136);
  let x_1138 : f32 = u_xlat44;
  let x_1140 : f32 = u_xlat31.x;
  u_xlat44 = ((x_1138 * x_1140) + 1.000010014f);
  let x_1145 : f32 = u_xlat3.x;
  let x_1147 : f32 = u_xlat3.x;
  u_xlat3.x = (x_1145 * x_1147);
  let x_1150 : f32 = u_xlat44;
  let x_1151 : f32 = u_xlat44;
  u_xlat44 = (x_1150 * x_1151);
  let x_1154 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_1154, 0.100000001f);
  let x_1158 : f32 = u_xlat44;
  let x_1160 : f32 = u_xlat3.x;
  u_xlat44 = (x_1158 * x_1160);
  let x_1162 : f32 = u_xlat47;
  let x_1163 : f32 = u_xlat44;
  u_xlat44 = (x_1162 * x_1163);
  let x_1165 : f32 = u_xlat46;
  let x_1166 : f32 = u_xlat44;
  u_xlat44 = (x_1165 / x_1166);
  let x_1168 : f32 = u_xlat44;
  let x_1172 : vec3<f32> = u_xlat2;
  let x_1173 : vec3<f32> = ((vec3<f32>(x_1168, x_1168, x_1168) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1172);
  let x_1174 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1173.x, x_1173.y, x_1173.z, x_1174.w);
  let x_1176 : vec4<f32> = u_xlat7;
  let x_1178 : vec4<f32> = u_xlat8;
  let x_1180 : vec3<f32> = (vec3<f32>(x_1176.x, x_1176.y, x_1176.z) * vec3<f32>(x_1178.x, x_1178.y, x_1178.z));
  let x_1181 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1180.x, x_1180.y, x_1180.z, x_1181.w);
  let x_1185 : f32 = x_66.x_AdditionalLightsCount.x;
  let x_1187 : f32 = x_344.unity_LightData.y;
  u_xlat44 = min(x_1185, x_1187);
  let x_1191 : f32 = u_xlat44;
  u_xlatu44 = bitcast<u32>(i32(x_1191));
  let x_1197 : f32 = x_790.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1199 : f32 = x_790.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1201 : f32 = x_790.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1203 : f32 = x_790.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1204 : vec4<f32> = vec4<f32>(x_1197, x_1199, x_1201, x_1203);
  let x_1211 : vec4<bool> = (vec4<f32>(x_1204.x, x_1204.y, x_1204.z, x_1204.w) == vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));
  let x_1212 : vec2<bool> = vec2<bool>(x_1211.x, x_1211.w);
  let x_1213 : vec4<bool> = u_xlatb3;
  u_xlatb3 = vec4<bool>(x_1212.x, x_1213.y, x_1213.z, x_1212.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1224 : u32 = u_xlatu_loop_1;
    let x_1225 : u32 = u_xlatu44;
    if ((x_1224 < x_1225)) {
    } else {
      break;
    }
    let x_1228 : u32 = u_xlatu_loop_1;
    u_xlatu48 = (x_1228 >> 2u);
    let x_1232 : u32 = u_xlatu_loop_1;
    u_xlati49 = bitcast<i32>((x_1232 & 3u));
    let x_1235 : u32 = u_xlatu48;
    let x_1238 : vec4<f32> = x_344.unity_LightIndices[bitcast<i32>(x_1235)];
    let x_1248 : i32 = u_xlati49;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1253 : vec4<u32> = indexable[x_1248];
    u_xlat48 = dot(x_1238, bitcast<vec4<f32>>(x_1253));
    let x_1256 : f32 = u_xlat48;
    u_xlatu48 = bitcast<u32>(i32(x_1256));
    let x_1260 : vec3<f32> = vs_INTERP0;
    let x_1272 : u32 = u_xlatu48;
    let x_1275 : vec4<f32> = x_1271.x_AdditionalLightsPosition[bitcast<i32>(x_1272)];
    let x_1278 : u32 = u_xlatu48;
    let x_1281 : vec4<f32> = x_1271.x_AdditionalLightsPosition[bitcast<i32>(x_1278)];
    u_xlat9 = ((-(x_1260) * vec3<f32>(x_1275.w, x_1275.w, x_1275.w)) + vec3<f32>(x_1281.x, x_1281.y, x_1281.z));
    let x_1285 : vec3<f32> = u_xlat9;
    let x_1286 : vec3<f32> = u_xlat9;
    u_xlat49 = dot(x_1285, x_1286);
    let x_1288 : f32 = u_xlat49;
    u_xlat49 = max(x_1288, 6.10351562e-05f);
    let x_1292 : f32 = u_xlat49;
    u_xlat50 = inverseSqrt(x_1292);
    let x_1295 : f32 = u_xlat50;
    let x_1297 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1295, x_1295, x_1295) * x_1297);
    let x_1300 : f32 = u_xlat49;
    u_xlat51 = (1.0f / x_1300);
    let x_1302 : f32 = u_xlat49;
    let x_1303 : u32 = u_xlatu48;
    let x_1306 : f32 = x_1271.x_AdditionalLightsAttenuation[bitcast<i32>(x_1303)].x;
    u_xlat49 = (x_1302 * x_1306);
    let x_1308 : f32 = u_xlat49;
    let x_1310 : f32 = u_xlat49;
    u_xlat49 = ((-(x_1308) * x_1310) + 1.0f);
    let x_1313 : f32 = u_xlat49;
    u_xlat49 = max(x_1313, 0.0f);
    let x_1315 : f32 = u_xlat49;
    let x_1316 : f32 = u_xlat49;
    u_xlat49 = (x_1315 * x_1316);
    let x_1318 : f32 = u_xlat49;
    let x_1319 : f32 = u_xlat51;
    u_xlat49 = (x_1318 * x_1319);
    let x_1321 : u32 = u_xlatu48;
    let x_1324 : vec4<f32> = x_1271.x_AdditionalLightsSpotDir[bitcast<i32>(x_1321)];
    let x_1326 : vec3<f32> = u_xlat10;
    u_xlat51 = dot(vec3<f32>(x_1324.x, x_1324.y, x_1324.z), x_1326);
    let x_1328 : f32 = u_xlat51;
    let x_1329 : u32 = u_xlatu48;
    let x_1332 : f32 = x_1271.x_AdditionalLightsAttenuation[bitcast<i32>(x_1329)].z;
    let x_1334 : u32 = u_xlatu48;
    let x_1337 : f32 = x_1271.x_AdditionalLightsAttenuation[bitcast<i32>(x_1334)].w;
    u_xlat51 = ((x_1328 * x_1332) + x_1337);
    let x_1339 : f32 = u_xlat51;
    u_xlat51 = clamp(x_1339, 0.0f, 1.0f);
    let x_1341 : f32 = u_xlat51;
    let x_1342 : f32 = u_xlat51;
    u_xlat51 = (x_1341 * x_1342);
    let x_1344 : f32 = u_xlat49;
    let x_1345 : f32 = u_xlat51;
    u_xlat49 = (x_1344 * x_1345);
    let x_1348 : u32 = u_xlatu48;
    u_xlatu51 = (x_1348 >> 5u);
    let x_1351 : u32 = u_xlatu48;
    u_xlati52 = (1i << bitcast<u32>((bitcast<i32>(x_1351) & 31i)));
    let x_1357 : i32 = u_xlati52;
    let x_1359 : u32 = u_xlatu51;
    let x_1362 : f32 = x_790.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1359)].el;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_1357) & bitcast<u32>(x_1362)));
    let x_1366 : i32 = u_xlati51;
    if ((x_1366 != 0i)) {
      let x_1376 : u32 = u_xlatu48;
      let x_1379 : f32 = x_1375.x_AdditionalLightsLightTypes[bitcast<i32>(x_1376)].el;
      u_xlati51 = i32(x_1379);
      let x_1381 : i32 = u_xlati51;
      u_xlati52 = select(1i, 0i, (x_1381 != 0i));
      let x_1385 : u32 = u_xlatu48;
      u_xlati11 = (bitcast<i32>(x_1385) << bitcast<u32>(2i));
      let x_1388 : i32 = u_xlati52;
      if ((x_1388 != 0i)) {
        let x_1393 : vec3<f32> = vs_INTERP0;
        let x_1395 : i32 = u_xlati11;
        let x_1398 : i32 = u_xlati11;
        let x_1402 : vec4<f32> = x_1375.x_AdditionalLightsWorldToLights[((x_1395 + 1i) / 4i)][((x_1398 + 1i) % 4i)];
        u_xlat25 = (vec3<f32>(x_1393.y, x_1393.y, x_1393.y) * vec3<f32>(x_1402.x, x_1402.y, x_1402.w));
        let x_1405 : i32 = u_xlati11;
        let x_1407 : i32 = u_xlati11;
        let x_1410 : vec4<f32> = x_1375.x_AdditionalLightsWorldToLights[(x_1405 / 4i)][(x_1407 % 4i)];
        let x_1412 : vec3<f32> = vs_INTERP0;
        let x_1415 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1410.x, x_1410.y, x_1410.w) * vec3<f32>(x_1412.x, x_1412.x, x_1412.x)) + x_1415);
        let x_1417 : i32 = u_xlati11;
        let x_1420 : i32 = u_xlati11;
        let x_1424 : vec4<f32> = x_1375.x_AdditionalLightsWorldToLights[((x_1417 + 2i) / 4i)][((x_1420 + 2i) % 4i)];
        let x_1426 : vec3<f32> = vs_INTERP0;
        let x_1429 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1424.x, x_1424.y, x_1424.w) * vec3<f32>(x_1426.z, x_1426.z, x_1426.z)) + x_1429);
        let x_1431 : vec3<f32> = u_xlat25;
        let x_1432 : i32 = u_xlati11;
        let x_1435 : i32 = u_xlati11;
        let x_1439 : vec4<f32> = x_1375.x_AdditionalLightsWorldToLights[((x_1432 + 3i) / 4i)][((x_1435 + 3i) % 4i)];
        u_xlat25 = (x_1431 + vec3<f32>(x_1439.x, x_1439.y, x_1439.w));
        let x_1442 : vec3<f32> = u_xlat25;
        let x_1444 : vec3<f32> = u_xlat25;
        let x_1446 : vec2<f32> = (vec2<f32>(x_1442.x, x_1442.y) / vec2<f32>(x_1444.z, x_1444.z));
        let x_1447 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1446.x, x_1446.y, x_1447.z);
        let x_1449 : vec3<f32> = u_xlat25;
        let x_1452 : vec2<f32> = ((vec2<f32>(x_1449.x, x_1449.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1453 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1452.x, x_1452.y, x_1453.z);
        let x_1455 : vec3<f32> = u_xlat25;
        let x_1459 : vec2<f32> = clamp(vec2<f32>(x_1455.x, x_1455.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1460 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1459.x, x_1459.y, x_1460.z);
        let x_1462 : u32 = u_xlatu48;
        let x_1465 : vec4<f32> = x_1375.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1462)];
        let x_1467 : vec3<f32> = u_xlat25;
        let x_1470 : u32 = u_xlatu48;
        let x_1473 : vec4<f32> = x_1375.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1470)];
        let x_1475 : vec2<f32> = ((vec2<f32>(x_1465.x, x_1465.y) * vec2<f32>(x_1467.x, x_1467.y)) + vec2<f32>(x_1473.z, x_1473.w));
        let x_1476 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1475.x, x_1475.y, x_1476.z);
      } else {
        let x_1480 : i32 = u_xlati51;
        u_xlatb51 = (x_1480 == 1i);
        let x_1482 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_1482);
        let x_1484 : i32 = u_xlati51;
        if ((x_1484 != 0i)) {
          let x_1489 : vec3<f32> = vs_INTERP0;
          let x_1491 : i32 = u_xlati11;
          let x_1494 : i32 = u_xlati11;
          let x_1498 : vec4<f32> = x_1375.x_AdditionalLightsWorldToLights[((x_1491 + 1i) / 4i)][((x_1494 + 1i) % 4i)];
          let x_1500 : vec2<f32> = (vec2<f32>(x_1489.y, x_1489.y) * vec2<f32>(x_1498.x, x_1498.y));
          let x_1501 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1500.x, x_1500.y, x_1501.z, x_1501.w);
          let x_1503 : i32 = u_xlati11;
          let x_1505 : i32 = u_xlati11;
          let x_1508 : vec4<f32> = x_1375.x_AdditionalLightsWorldToLights[(x_1503 / 4i)][(x_1505 % 4i)];
          let x_1510 : vec3<f32> = vs_INTERP0;
          let x_1513 : vec4<f32> = u_xlat12;
          let x_1515 : vec2<f32> = ((vec2<f32>(x_1508.x, x_1508.y) * vec2<f32>(x_1510.x, x_1510.x)) + vec2<f32>(x_1513.x, x_1513.y));
          let x_1516 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1515.x, x_1515.y, x_1516.z, x_1516.w);
          let x_1518 : i32 = u_xlati11;
          let x_1521 : i32 = u_xlati11;
          let x_1525 : vec4<f32> = x_1375.x_AdditionalLightsWorldToLights[((x_1518 + 2i) / 4i)][((x_1521 + 2i) % 4i)];
          let x_1527 : vec3<f32> = vs_INTERP0;
          let x_1530 : vec4<f32> = u_xlat12;
          let x_1532 : vec2<f32> = ((vec2<f32>(x_1525.x, x_1525.y) * vec2<f32>(x_1527.z, x_1527.z)) + vec2<f32>(x_1530.x, x_1530.y));
          let x_1533 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1532.x, x_1532.y, x_1533.z, x_1533.w);
          let x_1535 : vec4<f32> = u_xlat12;
          let x_1537 : i32 = u_xlati11;
          let x_1540 : i32 = u_xlati11;
          let x_1544 : vec4<f32> = x_1375.x_AdditionalLightsWorldToLights[((x_1537 + 3i) / 4i)][((x_1540 + 3i) % 4i)];
          let x_1546 : vec2<f32> = (vec2<f32>(x_1535.x, x_1535.y) + vec2<f32>(x_1544.x, x_1544.y));
          let x_1547 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1546.x, x_1546.y, x_1547.z, x_1547.w);
          let x_1549 : vec4<f32> = u_xlat12;
          let x_1552 : vec2<f32> = ((vec2<f32>(x_1549.x, x_1549.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1553 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1552.x, x_1552.y, x_1553.z, x_1553.w);
          let x_1555 : vec4<f32> = u_xlat12;
          let x_1557 : vec2<f32> = fract(vec2<f32>(x_1555.x, x_1555.y));
          let x_1558 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1557.x, x_1557.y, x_1558.z, x_1558.w);
          let x_1560 : u32 = u_xlatu48;
          let x_1563 : vec4<f32> = x_1375.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1560)];
          let x_1565 : vec4<f32> = u_xlat12;
          let x_1568 : u32 = u_xlatu48;
          let x_1571 : vec4<f32> = x_1375.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1568)];
          let x_1573 : vec2<f32> = ((vec2<f32>(x_1563.x, x_1563.y) * vec2<f32>(x_1565.x, x_1565.y)) + vec2<f32>(x_1571.z, x_1571.w));
          let x_1574 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1573.x, x_1573.y, x_1574.z);
        } else {
          let x_1577 : vec3<f32> = vs_INTERP0;
          let x_1579 : i32 = u_xlati11;
          let x_1582 : i32 = u_xlati11;
          let x_1586 : vec4<f32> = x_1375.x_AdditionalLightsWorldToLights[((x_1579 + 1i) / 4i)][((x_1582 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1577.y, x_1577.y, x_1577.y, x_1577.y) * x_1586);
          let x_1588 : i32 = u_xlati11;
          let x_1590 : i32 = u_xlati11;
          let x_1593 : vec4<f32> = x_1375.x_AdditionalLightsWorldToLights[(x_1588 / 4i)][(x_1590 % 4i)];
          let x_1594 : vec3<f32> = vs_INTERP0;
          let x_1597 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1593 * vec4<f32>(x_1594.x, x_1594.x, x_1594.x, x_1594.x)) + x_1597);
          let x_1599 : i32 = u_xlati11;
          let x_1602 : i32 = u_xlati11;
          let x_1606 : vec4<f32> = x_1375.x_AdditionalLightsWorldToLights[((x_1599 + 2i) / 4i)][((x_1602 + 2i) % 4i)];
          let x_1607 : vec3<f32> = vs_INTERP0;
          let x_1610 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1606 * vec4<f32>(x_1607.z, x_1607.z, x_1607.z, x_1607.z)) + x_1610);
          let x_1612 : vec4<f32> = u_xlat12;
          let x_1613 : i32 = u_xlati11;
          let x_1616 : i32 = u_xlati11;
          let x_1620 : vec4<f32> = x_1375.x_AdditionalLightsWorldToLights[((x_1613 + 3i) / 4i)][((x_1616 + 3i) % 4i)];
          u_xlat12 = (x_1612 + x_1620);
          let x_1622 : vec4<f32> = u_xlat12;
          let x_1624 : vec4<f32> = u_xlat12;
          let x_1626 : vec3<f32> = (vec3<f32>(x_1622.x, x_1622.y, x_1622.z) / vec3<f32>(x_1624.w, x_1624.w, x_1624.w));
          let x_1627 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1626.x, x_1626.y, x_1626.z, x_1627.w);
          let x_1629 : vec4<f32> = u_xlat12;
          let x_1631 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(vec3<f32>(x_1629.x, x_1629.y, x_1629.z), vec3<f32>(x_1631.x, x_1631.y, x_1631.z));
          let x_1634 : f32 = u_xlat51;
          u_xlat51 = inverseSqrt(x_1634);
          let x_1636 : f32 = u_xlat51;
          let x_1638 : vec4<f32> = u_xlat12;
          let x_1640 : vec3<f32> = (vec3<f32>(x_1636, x_1636, x_1636) * vec3<f32>(x_1638.x, x_1638.y, x_1638.z));
          let x_1641 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1640.x, x_1640.y, x_1640.z, x_1641.w);
          let x_1643 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(abs(vec3<f32>(x_1643.x, x_1643.y, x_1643.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1648 : f32 = u_xlat51;
          u_xlat51 = max(x_1648, 0.000001f);
          let x_1651 : f32 = u_xlat51;
          u_xlat51 = (1.0f / x_1651);
          let x_1654 : f32 = u_xlat51;
          let x_1656 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1654, x_1654, x_1654) * vec3<f32>(x_1656.z, x_1656.x, x_1656.y));
          let x_1660 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1660);
          let x_1664 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1664, 0.0f, 1.0f);
          let x_1668 : vec3<f32> = u_xlat13;
          let x_1671 : vec4<bool> = (vec4<f32>(x_1668.y, x_1668.y, x_1668.y, x_1668.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1672 : vec2<bool> = vec2<bool>(x_1671.x, x_1671.w);
          let x_1673 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_1672.x, x_1673.y, x_1673.z, x_1672.y);
          let x_1677 : bool = u_xlatb11.x;
          if (x_1677) {
            let x_1682 : f32 = u_xlat13.x;
            x_1678 = x_1682;
          } else {
            let x_1685 : f32 = u_xlat13.x;
            x_1678 = -(x_1685);
          }
          let x_1687 : f32 = x_1678;
          u_xlat11.x = x_1687;
          let x_1690 : bool = u_xlatb11.w;
          if (x_1690) {
            let x_1695 : f32 = u_xlat13.x;
            x_1691 = x_1695;
          } else {
            let x_1698 : f32 = u_xlat13.x;
            x_1691 = -(x_1698);
          }
          let x_1700 : f32 = x_1691;
          u_xlat11.w = x_1700;
          let x_1702 : vec4<f32> = u_xlat12;
          let x_1704 : f32 = u_xlat51;
          let x_1707 : vec4<f32> = u_xlat11;
          let x_1709 : vec2<f32> = ((vec2<f32>(x_1702.x, x_1702.y) * vec2<f32>(x_1704, x_1704)) + vec2<f32>(x_1707.x, x_1707.w));
          let x_1710 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1709.x, x_1710.y, x_1710.z, x_1709.y);
          let x_1712 : vec4<f32> = u_xlat11;
          let x_1715 : vec2<f32> = ((vec2<f32>(x_1712.x, x_1712.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1716 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1715.x, x_1716.y, x_1716.z, x_1715.y);
          let x_1718 : vec4<f32> = u_xlat11;
          let x_1722 : vec2<f32> = clamp(vec2<f32>(x_1718.x, x_1718.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1723 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1722.x, x_1723.y, x_1723.z, x_1722.y);
          let x_1725 : u32 = u_xlatu48;
          let x_1728 : vec4<f32> = x_1375.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1725)];
          let x_1730 : vec4<f32> = u_xlat11;
          let x_1733 : u32 = u_xlatu48;
          let x_1736 : vec4<f32> = x_1375.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1733)];
          let x_1738 : vec2<f32> = ((vec2<f32>(x_1728.x, x_1728.y) * vec2<f32>(x_1730.x, x_1730.w)) + vec2<f32>(x_1736.z, x_1736.w));
          let x_1739 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1738.x, x_1738.y, x_1739.z);
        }
      }
      let x_1746 : vec3<f32> = u_xlat25;
      let x_1749 : f32 = x_66.x_GlobalMipBias.x;
      let x_1750 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1746.x, x_1746.y), x_1749);
      u_xlat11 = x_1750;
      let x_1752 : bool = u_xlatb3.w;
      if (x_1752) {
        let x_1757 : f32 = u_xlat11.w;
        x_1753 = x_1757;
      } else {
        let x_1760 : f32 = u_xlat11.x;
        x_1753 = x_1760;
      }
      let x_1761 : f32 = x_1753;
      u_xlat51 = x_1761;
      let x_1763 : bool = u_xlatb3.x;
      if (x_1763) {
        let x_1767 : vec4<f32> = u_xlat11;
        x_1764 = vec3<f32>(x_1767.x, x_1767.y, x_1767.z);
      } else {
        let x_1770 : f32 = u_xlat51;
        x_1764 = vec3<f32>(x_1770, x_1770, x_1770);
      }
      let x_1772 : vec3<f32> = x_1764;
      let x_1773 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1772.x, x_1772.y, x_1772.z, x_1773.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1779 : vec4<f32> = u_xlat11;
    let x_1781 : u32 = u_xlatu48;
    let x_1784 : vec4<f32> = x_1271.x_AdditionalLightsColor[bitcast<i32>(x_1781)];
    let x_1786 : vec3<f32> = (vec3<f32>(x_1779.x, x_1779.y, x_1779.z) * vec3<f32>(x_1784.x, x_1784.y, x_1784.z));
    let x_1787 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1786.x, x_1786.y, x_1786.z, x_1787.w);
    let x_1789 : f32 = u_xlat20;
    let x_1791 : vec4<f32> = u_xlat11;
    let x_1793 : vec3<f32> = (vec3<f32>(x_1789, x_1789, x_1789) * vec3<f32>(x_1791.x, x_1791.y, x_1791.z));
    let x_1794 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1793.x, x_1793.y, x_1793.z, x_1794.w);
    let x_1796 : vec4<f32> = u_xlat4;
    let x_1798 : vec3<f32> = u_xlat10;
    u_xlat48 = dot(vec3<f32>(x_1796.x, x_1796.y, x_1796.z), x_1798);
    let x_1800 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1800, 0.0f, 1.0f);
    let x_1802 : f32 = u_xlat48;
    let x_1803 : f32 = u_xlat49;
    u_xlat48 = (x_1802 * x_1803);
    let x_1805 : f32 = u_xlat48;
    let x_1807 : vec4<f32> = u_xlat11;
    let x_1809 : vec3<f32> = (vec3<f32>(x_1805, x_1805, x_1805) * vec3<f32>(x_1807.x, x_1807.y, x_1807.z));
    let x_1810 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1809.x, x_1809.y, x_1809.z, x_1810.w);
    let x_1812 : vec3<f32> = u_xlat9;
    let x_1813 : f32 = u_xlat50;
    let x_1816 : vec4<f32> = u_xlat1;
    u_xlat9 = ((x_1812 * vec3<f32>(x_1813, x_1813, x_1813)) + vec3<f32>(x_1816.x, x_1816.z, x_1816.w));
    let x_1819 : vec3<f32> = u_xlat9;
    let x_1820 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_1819, x_1820);
    let x_1822 : f32 = u_xlat48;
    u_xlat48 = max(x_1822, 1.17549435e-37f);
    let x_1824 : f32 = u_xlat48;
    u_xlat48 = inverseSqrt(x_1824);
    let x_1826 : f32 = u_xlat48;
    let x_1828 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1826, x_1826, x_1826) * x_1828);
    let x_1830 : vec4<f32> = u_xlat4;
    let x_1832 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_1830.x, x_1830.y, x_1830.z), x_1832);
    let x_1834 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1834, 0.0f, 1.0f);
    let x_1836 : vec3<f32> = u_xlat10;
    let x_1837 : vec3<f32> = u_xlat9;
    u_xlat49 = dot(x_1836, x_1837);
    let x_1839 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1839, 0.0f, 1.0f);
    let x_1841 : f32 = u_xlat48;
    let x_1842 : f32 = u_xlat48;
    u_xlat48 = (x_1841 * x_1842);
    let x_1844 : f32 = u_xlat48;
    let x_1846 : f32 = u_xlat31.x;
    u_xlat48 = ((x_1844 * x_1846) + 1.000010014f);
    let x_1849 : f32 = u_xlat49;
    let x_1850 : f32 = u_xlat49;
    u_xlat49 = (x_1849 * x_1850);
    let x_1852 : f32 = u_xlat48;
    let x_1853 : f32 = u_xlat48;
    u_xlat48 = (x_1852 * x_1853);
    let x_1855 : f32 = u_xlat49;
    u_xlat49 = max(x_1855, 0.100000001f);
    let x_1857 : f32 = u_xlat48;
    let x_1858 : f32 = u_xlat49;
    u_xlat48 = (x_1857 * x_1858);
    let x_1860 : f32 = u_xlat47;
    let x_1861 : f32 = u_xlat48;
    u_xlat48 = (x_1860 * x_1861);
    let x_1863 : f32 = u_xlat46;
    let x_1864 : f32 = u_xlat48;
    u_xlat48 = (x_1863 / x_1864);
    let x_1866 : f32 = u_xlat48;
    let x_1869 : vec3<f32> = u_xlat2;
    u_xlat9 = ((vec3<f32>(x_1866, x_1866, x_1866) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1869);
    let x_1871 : vec3<f32> = u_xlat9;
    let x_1872 : vec4<f32> = u_xlat11;
    let x_1875 : vec4<f32> = u_xlat8;
    let x_1877 : vec3<f32> = ((x_1871 * vec3<f32>(x_1872.x, x_1872.y, x_1872.z)) + vec3<f32>(x_1875.x, x_1875.y, x_1875.z));
    let x_1878 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1877.x, x_1877.y, x_1877.z, x_1878.w);

    continuing {
      let x_1880 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1880 + bitcast<u32>(1i));
    }
  }
  let x_1882 : vec3<f32> = u_xlat5;
  let x_1883 : vec4<f32> = u_xlat6;
  let x_1886 : vec4<f32> = u_xlat7;
  let x_1888 : vec3<f32> = ((x_1882 * vec3<f32>(x_1883.x, x_1883.x, x_1883.x)) + vec3<f32>(x_1886.x, x_1886.y, x_1886.z));
  let x_1889 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1888.x, x_1889.y, x_1888.y, x_1888.z);
  let x_1891 : vec4<f32> = u_xlat8;
  let x_1893 : vec4<f32> = u_xlat1;
  let x_1895 : vec3<f32> = (vec3<f32>(x_1891.x, x_1891.y, x_1891.z) + vec3<f32>(x_1893.x, x_1893.z, x_1893.w));
  let x_1896 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1895.x, x_1896.y, x_1895.y, x_1895.z);
  let x_1898 : vec4<f32> = vs_INTERP4;
  let x_1900 : vec3<f32> = u_xlat0;
  let x_1902 : vec4<f32> = u_xlat1;
  u_xlat0 = ((vec3<f32>(x_1898.w, x_1898.w, x_1898.w) * x_1900) + vec3<f32>(x_1902.x, x_1902.z, x_1902.w));
  let x_1906 : f32 = u_xlat17.x;
  let x_1908 : f32 = u_xlat17.x;
  u_xlat1.x = (x_1906 * -(x_1908));
  let x_1913 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1913);
  let x_1916 : vec3<f32> = u_xlat0;
  let x_1919 : vec4<f32> = x_66.unity_FogColor;
  u_xlat0 = (x_1916 + -(vec3<f32>(x_1919.x, x_1919.y, x_1919.z)));
  let x_1925 : vec4<f32> = u_xlat1;
  let x_1927 : vec3<f32> = u_xlat0;
  let x_1930 : vec4<f32> = x_66.unity_FogColor;
  let x_1932 : vec3<f32> = ((vec3<f32>(x_1925.x, x_1925.x, x_1925.x) * x_1927) + vec3<f32>(x_1930.x, x_1930.y, x_1930.z));
  let x_1933 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1932.x, x_1932.y, x_1932.z, x_1933.w);
  let x_1935 : bool = u_xlatb15;
  let x_1936 : f32 = u_xlat42;
  SV_Target0.w = select(1.0f, x_1936, x_1935);
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

