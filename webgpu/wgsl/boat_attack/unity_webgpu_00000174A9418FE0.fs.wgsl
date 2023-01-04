type Arr = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr,
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

struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  @size(8)
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
  x_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1_TexelSize : vec4<f32>,
  x_MainTex_TexelSize : vec4<f32>,
  Texture2D_DE8BF47E_TexelSize : vec4<f32>,
  Vector1_6E11FCEA : f32,
  Vector1_A492C01C : f32,
  Vector1_8B35DE98 : f32,
  @size(4)
  padding_2 : u32,
  Texture2D_C005B064_TexelSize : vec4<f32>,
  Texture2D_D7D66558_TexelSize : vec4<f32>,
  Vector1_90E376AD : f32,
}

type Arr_1 = array<mat4x4<f32>, 5u>;

struct MainLightShadows {
  x_MainLightWorldToShadow : Arr_1,
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

var<private> vs_INTERP2 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_59 : UnityPerDraw;

@group(0) @binding(8) var x_MainTex : texture_2d<f32>;

@group(0) @binding(19) var sampler_MainTex : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_146 : PGlobals;

var<private> vs_INTERP0 : vec3<f32>;

@group(0) @binding(11) var Texture2D_D7D66558 : texture_2d<f32>;

@group(0) @binding(22) var samplerTexture2D_D7D66558 : sampler;

@group(1) @binding(6) var<uniform> x_204 : UnityPerMaterial;

@group(0) @binding(9) var Texture2D_DE8BF47E : texture_2d<f32>;

@group(0) @binding(20) var samplerTexture2D_DE8BF47E : sampler;

@group(0) @binding(10) var Texture2D_C005B064 : texture_2d<f32>;

@group(0) @binding(21) var samplerTexture2D_C005B064 : sampler;

@group(0) @binding(7) var x_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1 : texture_2d<f32>;

@group(0) @binding(18) var sampler_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1 : sampler;

@group(1) @binding(3) var<uniform> x_667 : MainLightShadows;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(13) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP4 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(15) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_1126 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(12) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1603 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1707 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(17) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlatb14 : vec2<bool>;
  var u_xlat14 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat43 : f32;
  var u_xlat44 : f32;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat45 : f32;
  var u_xlat46 : f32;
  var u_xlat7 : vec4<f32>;
  var u_xlat21 : vec3<f32>;
  var u_xlat15 : vec2<f32>;
  var u_xlat18 : vec3<f32>;
  var u_xlatb1 : bool;
  var x_651 : vec3<f32>;
  var u_xlatb4 : vec4<bool>;
  var u_xlatu44 : u32;
  var u_xlati44 : i32;
  var u_xlat47 : f32;
  var u_xlat20 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatb18 : vec2<bool>;
  var u_xlatb32 : bool;
  var x_1075 : f32;
  var u_xlat32 : f32;
  var x_1209 : f32;
  var x_1220 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat34 : vec2<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlatu0 : u32;
  var u_xlatb7 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu45 : u32;
  var u_xlati48 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat48 : f32;
  var u_xlat35 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlat49 : f32;
  var u_xlatu49 : u32;
  var u_xlati50 : i32;
  var u_xlati49 : i32;
  var u_xlati51 : i32;
  var u_xlat11 : vec4<f32>;
  var u_xlatb49 : bool;
  var u_xlat39 : vec2<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb39 : vec2<bool>;
  var x_2001 : f32;
  var x_2014 : f32;
  var x_2066 : f32;
  var x_2077 : vec3<f32>;
  var u_xlat42 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_29 : vec3<f32> = vs_INTERP1;
  let x_30 : vec3<f32> = vs_INTERP1;
  u_xlat0.x = dot(x_29, x_30);
  let x_36 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_36);
  let x_40 : f32 = u_xlat0.x;
  u_xlat0.x = (1.0f / x_40);
  let x_50 : f32 = vs_INTERP2.w;
  u_xlatb14.x = (0.0f < x_50);
  let x_64 : f32 = x_59.unity_WorldTransformParams.w;
  u_xlatb14.y = (x_64 >= 0.0f);
  let x_71 : bool = u_xlatb14.x;
  u_xlat14.x = select(-1.0f, 1.0f, x_71);
  let x_76 : bool = u_xlatb14.y;
  u_xlat14.y = select(-1.0f, 1.0f, x_76);
  let x_80 : f32 = u_xlat14.y;
  let x_82 : f32 = u_xlat14.x;
  u_xlat14.x = (x_80 * x_82);
  let x_86 : vec3<f32> = vs_INTERP1;
  let x_88 : vec4<f32> = vs_INTERP2;
  let x_90 : vec3<f32> = (vec3<f32>(x_86.z, x_86.x, x_86.y) * vec3<f32>(x_88.y, x_88.z, x_88.x));
  let x_91 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_90.x, x_90.y, x_90.z, x_91.w);
  let x_93 : vec3<f32> = vs_INTERP1;
  let x_95 : vec4<f32> = vs_INTERP2;
  let x_98 : vec4<f32> = u_xlat1;
  let x_101 : vec3<f32> = ((vec3<f32>(x_93.y, x_93.z, x_93.x) * vec3<f32>(x_95.z, x_95.x, x_95.y)) + -(vec3<f32>(x_98.x, x_98.y, x_98.z)));
  let x_102 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_101.x, x_101.y, x_101.z, x_102.w);
  let x_104 : vec3<f32> = u_xlat14;
  let x_106 : vec4<f32> = u_xlat1;
  let x_108 : vec3<f32> = (vec3<f32>(x_104.x, x_104.x, x_104.x) * vec3<f32>(x_106.x, x_106.y, x_106.z));
  let x_109 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_109.x, x_108.x, x_108.y, x_108.z);
  let x_111 : vec4<f32> = u_xlat0;
  let x_113 : vec3<f32> = vs_INTERP1;
  let x_114 : vec3<f32> = (vec3<f32>(x_111.x, x_111.x, x_111.x) * x_113);
  let x_115 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_114.x, x_114.y, x_114.z, x_115.w);
  let x_118 : vec4<f32> = u_xlat0;
  let x_120 : vec4<f32> = vs_INTERP2;
  u_xlat2 = (vec3<f32>(x_118.x, x_118.x, x_118.x) * vec3<f32>(x_120.x, x_120.y, x_120.z));
  let x_124 : vec4<f32> = u_xlat0;
  let x_126 : vec4<f32> = u_xlat0;
  u_xlat3 = (vec3<f32>(x_124.y, x_124.z, x_124.w) * vec3<f32>(x_126.x, x_126.x, x_126.x));
  let x_142 : vec4<f32> = vs_INTERP3;
  let x_149 : f32 = x_146.x_GlobalMipBias.x;
  let x_150 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_142.x, x_142.y), x_149);
  u_xlat4 = x_150;
  let x_152 : f32 = u_xlat4.w;
  u_xlat0.x = (x_152 + -0.5f);
  let x_158 : f32 = u_xlat0.x;
  let x_163 : f32 = vs_INTERP0.y;
  u_xlat43 = ((x_158 * 4.0f) + x_163);
  let x_165 : f32 = u_xlat43;
  u_xlat43 = (x_165 * 0.330000013f);
  let x_170 : f32 = vs_INTERP0.y;
  u_xlat44 = (x_170 + 1.0f);
  let x_172 : f32 = u_xlat44;
  u_xlat44 = ((x_172 * -1.333333373f) + 1.0f);
  let x_176 : f32 = u_xlat43;
  let x_177 : f32 = u_xlat44;
  u_xlat43 = max(x_176, x_177);
  let x_179 : f32 = u_xlat43;
  u_xlat1.w = max(x_179, 0.100000001f);
  let x_184 : vec4<f32> = vs_INTERP3;
  let x_187 : vec2<f32> = (vec2<f32>(x_184.x, x_184.y) * vec2<f32>(4.0f, 4.0f));
  let x_188 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_187.x, x_187.y, x_188.z, x_188.w);
  let x_196 : vec4<f32> = u_xlat5;
  let x_199 : f32 = x_146.x_GlobalMipBias.x;
  let x_200 : vec4<f32> = textureSampleBias(Texture2D_D7D66558, samplerTexture2D_D7D66558, vec2<f32>(x_196.x, x_196.y), x_199);
  u_xlat6 = vec3<f32>(x_200.x, x_200.y, x_200.z);
  let x_207 : f32 = x_204.Vector1_8B35DE98;
  u_xlat44 = ((-(x_207) * 0.011111f) + 0.949999988f);
  let x_216 : f32 = x_204.Vector1_A492C01C;
  u_xlat45 = (x_216 + -10.0f);
  let x_219 : f32 = u_xlat45;
  let x_222 : f32 = vs_INTERP0.y;
  u_xlat45 = (-(x_219) + x_222);
  let x_224 : f32 = u_xlat45;
  u_xlat45 = (x_224 * 0.050000001f);
  let x_227 : f32 = u_xlat45;
  u_xlat45 = clamp(x_227, 0.0f, 1.0f);
  let x_230 : f32 = u_xlat45;
  u_xlat46 = ((x_230 * -2.0f) + 3.0f);
  let x_235 : f32 = u_xlat45;
  let x_236 : f32 = u_xlat45;
  u_xlat45 = (x_235 * x_236);
  let x_238 : f32 = u_xlat45;
  let x_239 : f32 = u_xlat46;
  u_xlat45 = (x_238 * x_239);
  let x_247 : vec4<f32> = vs_INTERP3;
  let x_250 : f32 = x_146.x_GlobalMipBias.x;
  let x_251 : vec4<f32> = textureSampleBias(Texture2D_DE8BF47E, samplerTexture2D_DE8BF47E, vec2<f32>(x_247.x, x_247.y), x_250);
  u_xlat7 = x_251;
  let x_253 : vec4<f32> = u_xlat7;
  u_xlat21 = ((vec3<f32>(x_253.w, x_253.y, x_253.z) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_260 : vec3<f32> = u_xlat3;
  let x_261 : vec3<f32> = u_xlat21;
  u_xlat3 = (x_260 * vec3<f32>(x_261.y, x_261.y, x_261.y));
  let x_264 : vec3<f32> = u_xlat21;
  let x_266 : vec3<f32> = u_xlat2;
  let x_268 : vec3<f32> = u_xlat3;
  u_xlat2 = ((vec3<f32>(x_264.x, x_264.x, x_264.x) * x_266) + x_268);
  let x_270 : vec3<f32> = u_xlat21;
  let x_272 : vec4<f32> = u_xlat1;
  let x_275 : vec3<f32> = u_xlat2;
  let x_276 : vec3<f32> = ((vec3<f32>(x_270.z, x_270.z, x_270.z) * vec3<f32>(x_272.x, x_272.y, x_272.z)) + x_275);
  let x_277 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_276.x, x_276.y, x_276.z, x_277.w);
  let x_279 : vec4<f32> = u_xlat1;
  let x_281 : vec4<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_279.x, x_279.y, x_279.z), vec3<f32>(x_281.x, x_281.y, x_281.z));
  let x_286 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_286, 1.17549435e-37f);
  let x_291 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_291);
  let x_295 : f32 = u_xlat1.x;
  let x_297 : f32 = u_xlat1.y;
  u_xlat1.x = (x_295 * x_297);
  let x_300 : f32 = u_xlat45;
  let x_302 : f32 = u_xlat1.x;
  let x_304 : f32 = u_xlat44;
  u_xlat1.x = ((x_300 * x_302) + -(x_304));
  let x_309 : f32 = u_xlat1.x;
  u_xlat1.x = (x_309 * 10.0f);
  let x_314 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_314, 0.0f, 1.0f);
  let x_320 : f32 = u_xlat1.x;
  u_xlat15.x = ((x_320 * -2.0f) + 3.0f);
  let x_325 : f32 = u_xlat1.x;
  let x_327 : f32 = u_xlat1.x;
  u_xlat1.x = (x_325 * x_327);
  let x_331 : f32 = u_xlat1.x;
  let x_333 : f32 = u_xlat15.x;
  u_xlat1.x = (x_331 * x_333);
  let x_336 : vec4<f32> = u_xlat1;
  let x_339 : vec2<f32> = min(vec2<f32>(x_336.x, x_336.w), vec2<f32>(1.0f, 1.0f));
  let x_340 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_339.x, x_340.y, x_340.z, x_339.y);
  let x_343 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_343) + 1.0f);
  let x_347 : vec4<f32> = u_xlat4;
  let x_349 : vec3<f32> = u_xlat6;
  u_xlat2 = (vec3<f32>(x_347.x, x_347.y, x_347.z) + -(x_349));
  let x_352 : vec4<f32> = u_xlat1;
  let x_354 : vec3<f32> = u_xlat2;
  let x_356 : vec3<f32> = u_xlat6;
  u_xlat2 = ((vec3<f32>(x_352.x, x_352.x, x_352.x) * x_354) + x_356);
  let x_358 : vec4<f32> = u_xlat1;
  let x_360 : vec3<f32> = u_xlat2;
  u_xlat3 = (vec3<f32>(x_358.w, x_358.w, x_358.w) * x_360);
  let x_368 : vec4<f32> = u_xlat5;
  let x_371 : f32 = x_146.x_GlobalMipBias.x;
  let x_372 : vec4<f32> = textureSampleBias(Texture2D_C005B064, samplerTexture2D_C005B064, vec2<f32>(x_368.x, x_368.y), x_371);
  u_xlat18 = vec3<f32>(x_372.x, x_372.y, x_372.w);
  let x_375 : f32 = u_xlat18.x;
  let x_377 : f32 = u_xlat18.z;
  u_xlat18.x = (x_375 * x_377);
  let x_380 : vec3<f32> = u_xlat18;
  let x_385 : vec2<f32> = ((vec2<f32>(x_380.x, x_380.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_386 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_385.x, x_385.y, x_386.z, x_386.w);
  let x_388 : vec4<f32> = u_xlat5;
  let x_390 : vec4<f32> = u_xlat5;
  u_xlat15.x = dot(vec2<f32>(x_388.x, x_388.y), vec2<f32>(x_390.x, x_390.y));
  let x_395 : f32 = u_xlat15.x;
  u_xlat15.x = min(x_395, 1.0f);
  let x_399 : f32 = u_xlat15.x;
  u_xlat15.x = (-(x_399) + 1.0f);
  let x_404 : f32 = u_xlat15.x;
  u_xlat15.x = sqrt(x_404);
  let x_408 : f32 = u_xlat15.x;
  u_xlat5.z = max(x_408, 1.00000002e-16f);
  let x_415 : vec4<f32> = x_59.unity_ObjectToWorld[0i];
  let x_418 : vec4<f32> = x_59.unity_ObjectToWorld[0i];
  u_xlat15.x = dot(vec3<f32>(x_415.x, x_415.y, x_415.z), vec3<f32>(x_418.x, x_418.y, x_418.z));
  let x_423 : f32 = u_xlat15.x;
  u_xlat6.x = sqrt(x_423);
  let x_427 : vec4<f32> = x_59.unity_ObjectToWorld[1i];
  let x_430 : vec4<f32> = x_59.unity_ObjectToWorld[1i];
  u_xlat15.x = dot(vec3<f32>(x_427.x, x_427.y, x_427.z), vec3<f32>(x_430.x, x_430.y, x_430.z));
  let x_435 : f32 = u_xlat15.x;
  u_xlat6.y = sqrt(x_435);
  let x_440 : vec4<f32> = x_59.unity_ObjectToWorld[2i];
  let x_443 : vec4<f32> = x_59.unity_ObjectToWorld[2i];
  u_xlat15.x = dot(vec3<f32>(x_440.x, x_440.y, x_440.z), vec3<f32>(x_443.x, x_443.y, x_443.z));
  let x_448 : f32 = u_xlat15.x;
  u_xlat6.z = sqrt(x_448);
  let x_451 : vec3<f32> = u_xlat6;
  let x_452 : vec3<f32> = u_xlat6;
  u_xlat15.x = dot(x_451, x_452);
  let x_456 : f32 = u_xlat15.x;
  u_xlat15.x = sqrt(x_456);
  let x_460 : f32 = u_xlat15.x;
  let x_463 : f32 = x_204.Vector1_90E376AD;
  u_xlat15.x = (x_460 * x_463);
  let x_467 : f32 = u_xlat15.x;
  u_xlat15.x = (x_467 * 30.0f);
  let x_471 : vec2<f32> = u_xlat15;
  let x_473 : vec4<f32> = vs_INTERP3;
  u_xlat15 = (vec2<f32>(x_471.x, x_471.x) * vec2<f32>(x_473.x, x_473.y));
  let x_481 : vec2<f32> = u_xlat15;
  let x_483 : f32 = x_146.x_GlobalMipBias.x;
  let x_484 : vec4<f32> = textureSampleBias(x_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1, sampler_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1, x_481, x_483);
  u_xlat18 = vec3<f32>(x_484.x, x_484.y, x_484.w);
  let x_487 : f32 = u_xlat18.x;
  let x_489 : f32 = u_xlat18.z;
  u_xlat18.x = (x_487 * x_489);
  let x_492 : vec3<f32> = u_xlat18;
  u_xlat15 = ((vec2<f32>(x_492.x, x_492.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_496 : vec2<f32> = u_xlat15;
  let x_497 : vec2<f32> = u_xlat15;
  u_xlat44 = dot(x_496, x_497);
  let x_499 : f32 = u_xlat44;
  u_xlat44 = min(x_499, 1.0f);
  let x_501 : f32 = u_xlat44;
  u_xlat44 = (-(x_501) + 1.0f);
  let x_504 : f32 = u_xlat44;
  u_xlat44 = sqrt(x_504);
  let x_506 : f32 = u_xlat44;
  u_xlat44 = max(x_506, 1.00000002e-16f);
  let x_508 : vec2<f32> = u_xlat15;
  let x_509 : vec3<f32> = u_xlat21;
  let x_511 : vec2<f32> = (x_508 + vec2<f32>(x_509.x, x_509.y));
  let x_512 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_511.x, x_511.y, x_512.z);
  let x_514 : f32 = u_xlat44;
  let x_516 : f32 = u_xlat21.z;
  u_xlat6.z = (x_514 * x_516);
  let x_519 : vec3<f32> = u_xlat6;
  let x_520 : vec3<f32> = u_xlat6;
  u_xlat15.x = dot(x_519, x_520);
  let x_524 : f32 = u_xlat15.x;
  u_xlat15.x = max(x_524, 1.17549435e-37f);
  let x_528 : f32 = u_xlat15.x;
  u_xlat15.x = inverseSqrt(x_528);
  let x_531 : vec3<f32> = u_xlat6;
  let x_532 : vec2<f32> = u_xlat15;
  let x_535 : vec4<f32> = u_xlat5;
  u_xlat18 = ((x_531 * vec3<f32>(x_532.x, x_532.x, x_532.x)) + -(vec3<f32>(x_535.x, x_535.y, x_535.z)));
  let x_539 : vec4<f32> = u_xlat1;
  let x_541 : vec3<f32> = u_xlat18;
  let x_543 : vec4<f32> = u_xlat5;
  let x_545 : vec3<f32> = ((vec3<f32>(x_539.x, x_539.x, x_539.x) * x_541) + vec3<f32>(x_543.x, x_543.y, x_543.z));
  let x_546 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_546.x, x_545.x, x_545.y, x_545.z);
  let x_549 : f32 = u_xlat0.x;
  u_xlat0.x = (-(abs(x_549)) + 1.0f);
  let x_554 : vec4<f32> = u_xlat0;
  let x_555 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_554 * vec4<f32>(x_555.x, x_555.z, x_555.z, x_555.z));
  let x_559 : f32 = u_xlat0.x;
  let x_561 : f32 = x_204.Vector1_6E11FCEA;
  u_xlat0.x = (x_559 * x_561);
  let x_565 : f32 = u_xlat1.x;
  let x_567 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_565 * x_567) + -0.850000024f);
  let x_573 : f32 = u_xlat1.w;
  let x_575 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_573 * x_575) + 0.850000024f);
  let x_581 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_581, 0.0f, 1.0f);
  let x_584 : vec4<f32> = u_xlat4;
  let x_586 : vec4<f32> = vs_INTERP2;
  let x_589 : vec4<f32> = u_xlat0;
  u_xlat14 = ((vec3<f32>(x_584.y, x_584.y, x_584.y) * vec3<f32>(x_586.x, x_586.y, x_586.z)) + vec3<f32>(x_589.y, x_589.z, x_589.w));
  let x_592 : vec4<f32> = u_xlat4;
  let x_594 : vec3<f32> = vs_INTERP1;
  let x_596 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_592.w, x_592.w, x_592.w) * x_594) + x_596);
  let x_598 : vec3<f32> = u_xlat14;
  let x_599 : vec3<f32> = u_xlat14;
  u_xlat1.x = dot(x_598, x_599);
  let x_603 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_603);
  let x_606 : vec3<f32> = u_xlat14;
  let x_607 : vec4<f32> = u_xlat1;
  u_xlat14 = (x_606 * vec3<f32>(x_607.x, x_607.x, x_607.x));
  let x_612 : f32 = x_146.unity_OrthoParams.w;
  u_xlatb1 = (x_612 == 0.0f);
  let x_614 : vec3<f32> = vs_INTERP0;
  let x_619 : vec3<f32> = x_146.x_WorldSpaceCameraPos;
  let x_620 : vec3<f32> = (-(x_614) + x_619);
  let x_621 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_620.x, x_620.y, x_620.z, x_621.w);
  let x_623 : vec4<f32> = u_xlat4;
  let x_625 : vec4<f32> = u_xlat4;
  u_xlat15.x = dot(vec3<f32>(x_623.x, x_623.y, x_623.z), vec3<f32>(x_625.x, x_625.y, x_625.z));
  let x_630 : f32 = u_xlat15.x;
  u_xlat15.x = inverseSqrt(x_630);
  let x_633 : vec2<f32> = u_xlat15;
  let x_635 : vec4<f32> = u_xlat4;
  let x_637 : vec3<f32> = (vec3<f32>(x_633.x, x_633.x, x_633.x) * vec3<f32>(x_635.x, x_635.y, x_635.z));
  let x_638 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_637.x, x_637.y, x_637.z, x_638.w);
  let x_642 : f32 = x_146.unity_MatrixV[0i].z;
  u_xlat5.x = x_642;
  let x_645 : f32 = x_146.unity_MatrixV[1i].z;
  u_xlat5.y = x_645;
  let x_648 : f32 = x_146.unity_MatrixV[2i].z;
  u_xlat5.z = x_648;
  let x_650 : bool = u_xlatb1;
  if (x_650) {
    let x_654 : vec4<f32> = u_xlat4;
    x_651 = vec3<f32>(x_654.x, x_654.y, x_654.z);
  } else {
    let x_657 : vec4<f32> = u_xlat5;
    x_651 = vec3<f32>(x_657.x, x_657.y, x_657.z);
  }
  let x_659 : vec3<f32> = x_651;
  let x_660 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_659.x, x_659.y, x_659.z, x_660.w);
  let x_662 : vec3<f32> = vs_INTERP0;
  let x_669 : vec4<f32> = x_667.x_CascadeShadowSplitSpheres0;
  let x_672 : vec3<f32> = (x_662 + -(vec3<f32>(x_669.x, x_669.y, x_669.z)));
  let x_673 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_672.x, x_672.y, x_672.z, x_673.w);
  let x_675 : vec3<f32> = vs_INTERP0;
  let x_677 : vec4<f32> = x_667.x_CascadeShadowSplitSpheres1;
  let x_680 : vec3<f32> = (x_675 + -(vec3<f32>(x_677.x, x_677.y, x_677.z)));
  let x_681 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_680.x, x_680.y, x_680.z, x_681.w);
  let x_683 : vec3<f32> = vs_INTERP0;
  let x_685 : vec4<f32> = x_667.x_CascadeShadowSplitSpheres2;
  u_xlat6 = (x_683 + -(vec3<f32>(x_685.x, x_685.y, x_685.z)));
  let x_689 : vec3<f32> = vs_INTERP0;
  let x_691 : vec4<f32> = x_667.x_CascadeShadowSplitSpheres3;
  u_xlat21 = (x_689 + -(vec3<f32>(x_691.x, x_691.y, x_691.z)));
  let x_695 : vec4<f32> = u_xlat4;
  let x_697 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_695.x, x_695.y, x_695.z), vec3<f32>(x_697.x, x_697.y, x_697.z));
  let x_701 : vec4<f32> = u_xlat5;
  let x_703 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_701.x, x_701.y, x_701.z), vec3<f32>(x_703.x, x_703.y, x_703.z));
  let x_707 : vec3<f32> = u_xlat6;
  let x_708 : vec3<f32> = u_xlat6;
  u_xlat4.z = dot(x_707, x_708);
  let x_711 : vec3<f32> = u_xlat21;
  let x_712 : vec3<f32> = u_xlat21;
  u_xlat4.w = dot(x_711, x_712);
  let x_718 : vec4<f32> = u_xlat4;
  let x_720 : vec4<f32> = x_667.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_718 < x_720);
  let x_723 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_723);
  let x_727 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_727);
  let x_731 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_731);
  let x_735 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_735);
  let x_739 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_739);
  let x_744 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_744);
  let x_748 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_748);
  let x_751 : vec4<f32> = u_xlat4;
  let x_753 : vec4<f32> = u_xlat5;
  let x_755 : vec3<f32> = (vec3<f32>(x_751.x, x_751.y, x_751.z) + vec3<f32>(x_753.y, x_753.z, x_753.w));
  let x_756 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_755.x, x_755.y, x_755.z, x_756.w);
  let x_758 : vec4<f32> = u_xlat4;
  let x_761 : vec3<f32> = max(vec3<f32>(x_758.x, x_758.y, x_758.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_762 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_762.x, x_761.x, x_761.y, x_761.z);
  let x_764 : vec4<f32> = u_xlat5;
  u_xlat44 = dot(x_764, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_767 : f32 = u_xlat44;
  u_xlat44 = (-(x_767) + 4.0f);
  let x_772 : f32 = u_xlat44;
  u_xlatu44 = u32(x_772);
  let x_776 : u32 = u_xlatu44;
  u_xlati44 = (bitcast<i32>(x_776) << bitcast<u32>(2i));
  let x_779 : vec3<f32> = vs_INTERP0;
  let x_781 : i32 = u_xlati44;
  let x_784 : i32 = u_xlati44;
  let x_788 : vec4<f32> = x_667.x_MainLightWorldToShadow[((x_781 + 1i) / 4i)][((x_784 + 1i) % 4i)];
  let x_790 : vec3<f32> = (vec3<f32>(x_779.y, x_779.y, x_779.y) * vec3<f32>(x_788.x, x_788.y, x_788.z));
  let x_791 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_790.x, x_790.y, x_790.z, x_791.w);
  let x_793 : i32 = u_xlati44;
  let x_795 : i32 = u_xlati44;
  let x_798 : vec4<f32> = x_667.x_MainLightWorldToShadow[(x_793 / 4i)][(x_795 % 4i)];
  let x_800 : vec3<f32> = vs_INTERP0;
  let x_803 : vec4<f32> = u_xlat4;
  let x_805 : vec3<f32> = ((vec3<f32>(x_798.x, x_798.y, x_798.z) * vec3<f32>(x_800.x, x_800.x, x_800.x)) + vec3<f32>(x_803.x, x_803.y, x_803.z));
  let x_806 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_805.x, x_805.y, x_805.z, x_806.w);
  let x_808 : i32 = u_xlati44;
  let x_811 : i32 = u_xlati44;
  let x_815 : vec4<f32> = x_667.x_MainLightWorldToShadow[((x_808 + 2i) / 4i)][((x_811 + 2i) % 4i)];
  let x_817 : vec3<f32> = vs_INTERP0;
  let x_820 : vec4<f32> = u_xlat4;
  let x_822 : vec3<f32> = ((vec3<f32>(x_815.x, x_815.y, x_815.z) * vec3<f32>(x_817.z, x_817.z, x_817.z)) + vec3<f32>(x_820.x, x_820.y, x_820.z));
  let x_823 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_822.x, x_822.y, x_822.z, x_823.w);
  let x_825 : vec4<f32> = u_xlat4;
  let x_827 : i32 = u_xlati44;
  let x_830 : i32 = u_xlati44;
  let x_834 : vec4<f32> = x_667.x_MainLightWorldToShadow[((x_827 + 3i) / 4i)][((x_830 + 3i) % 4i)];
  let x_836 : vec3<f32> = (vec3<f32>(x_825.x, x_825.y, x_825.z) + vec3<f32>(x_834.x, x_834.y, x_834.z));
  let x_837 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_836.x, x_836.y, x_836.z, x_837.w);
  let x_840 : f32 = vs_INTERP0.y;
  let x_842 : f32 = x_146.unity_MatrixV[1i].z;
  u_xlat44 = (x_840 * x_842);
  let x_845 : f32 = x_146.unity_MatrixV[0i].z;
  let x_847 : f32 = vs_INTERP0.x;
  let x_849 : f32 = u_xlat44;
  u_xlat44 = ((x_845 * x_847) + x_849);
  let x_852 : f32 = x_146.unity_MatrixV[2i].z;
  let x_854 : f32 = vs_INTERP0.z;
  let x_856 : f32 = u_xlat44;
  u_xlat44 = ((x_852 * x_854) + x_856);
  let x_858 : f32 = u_xlat44;
  let x_860 : f32 = x_146.unity_MatrixV[3i].z;
  u_xlat44 = (x_858 + x_860);
  let x_862 : f32 = u_xlat44;
  let x_866 : f32 = x_146.x_ProjectionParams.y;
  u_xlat44 = (-(x_862) + -(x_866));
  let x_869 : f32 = u_xlat44;
  u_xlat44 = max(x_869, 0.0f);
  let x_871 : f32 = u_xlat44;
  let x_874 : f32 = x_146.unity_FogParams.x;
  u_xlat44 = (x_871 * x_874);
  let x_883 : vec2<f32> = vs_INTERP4;
  let x_885 : f32 = x_146.x_GlobalMipBias.x;
  let x_886 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_883, x_885);
  u_xlat5 = x_886;
  let x_891 : vec2<f32> = vs_INTERP4;
  let x_893 : f32 = x_146.x_GlobalMipBias.x;
  let x_894 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_891, x_893);
  u_xlat6 = vec3<f32>(x_894.x, x_894.y, x_894.z);
  let x_896 : vec4<f32> = u_xlat5;
  let x_899 : vec3<f32> = (vec3<f32>(x_896.x, x_896.y, x_896.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_900 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_899.x, x_899.y, x_899.z, x_900.w);
  let x_902 : vec3<f32> = u_xlat14;
  let x_903 : vec4<f32> = u_xlat5;
  u_xlat45 = dot(x_902, vec3<f32>(x_903.x, x_903.y, x_903.z));
  let x_906 : f32 = u_xlat45;
  u_xlat45 = (x_906 + 0.5f);
  let x_909 : f32 = u_xlat45;
  let x_911 : vec3<f32> = u_xlat6;
  let x_912 : vec3<f32> = (vec3<f32>(x_909, x_909, x_909) * x_911);
  let x_913 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_912.x, x_912.y, x_912.z, x_913.w);
  let x_916 : f32 = u_xlat5.w;
  u_xlat45 = max(x_916, 0.0001f);
  let x_919 : vec4<f32> = u_xlat5;
  let x_921 : f32 = u_xlat45;
  let x_923 : vec3<f32> = (vec3<f32>(x_919.x, x_919.y, x_919.z) / vec3<f32>(x_921, x_921, x_921));
  let x_924 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_923.x, x_923.y, x_923.z, x_924.w);
  let x_927 : vec4<f32> = x_146.x_ScaledScreenParams;
  let x_928 : vec2<f32> = vec2<f32>(x_927.x, x_927.y);
  let x_932 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_928.x, x_928.y));
  let x_933 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_932.x, x_932.y, x_933.z);
  let x_935 : vec3<f32> = u_xlat6;
  let x_937 : vec4<f32> = hlslcc_FragCoord;
  let x_939 : vec2<f32> = (vec2<f32>(x_935.x, x_935.y) * vec2<f32>(x_937.x, x_937.y));
  let x_940 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_939.x, x_939.y, x_940.z);
  let x_943 : f32 = u_xlat6.y;
  let x_946 : f32 = x_146.x_ScaleBiasRt.x;
  let x_949 : f32 = x_146.x_ScaleBiasRt.y;
  u_xlat45 = ((x_943 * x_946) + x_949);
  let x_951 : f32 = u_xlat45;
  u_xlat6.z = (-(x_951) + 1.0f);
  let x_955 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_955 * vec3<f32>(0.863999963f, 0.863999963f, 0.863999963f));
  let x_959 : vec4<f32> = u_xlat1;
  let x_961 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_959.w, x_959.w, x_959.w) * x_961) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_966 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_966 * vec3<f32>(0.100000001f, 0.100000001f, 0.100000001f)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_973 : f32 = u_xlat0.x;
  u_xlat43 = (-(x_973) + 1.0f);
  let x_976 : f32 = u_xlat43;
  let x_977 : f32 = u_xlat43;
  u_xlat45 = (x_976 * x_977);
  let x_979 : f32 = u_xlat45;
  u_xlat45 = max(x_979, 0.0078125f);
  let x_982 : f32 = u_xlat45;
  let x_983 : f32 = u_xlat45;
  u_xlat46 = (x_982 * x_983);
  let x_986 : f32 = u_xlat0.x;
  u_xlat0.x = (x_986 + 0.136000037f);
  let x_991 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_991, 1.0f);
  let x_995 : f32 = u_xlat45;
  u_xlat47 = ((x_995 * 4.0f) + 2.0f);
  let x_1003 : vec3<f32> = u_xlat6;
  let x_1006 : f32 = x_146.x_GlobalMipBias.x;
  let x_1007 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_1003.x, x_1003.z), x_1006);
  u_xlat6.x = x_1007.x;
  let x_1012 : f32 = u_xlat6.x;
  u_xlat20 = (x_1012 + -1.0f);
  let x_1015 : f32 = x_146.x_AmbientOcclusionParam.w;
  let x_1016 : f32 = u_xlat20;
  u_xlat20 = ((x_1015 * x_1016) + 1.0f);
  let x_1020 : f32 = u_xlat7.x;
  let x_1022 : f32 = u_xlat6.x;
  u_xlat6.x = min(x_1020, x_1022);
  let x_1026 : vec4<f32> = u_xlat4;
  let x_1027 : vec2<f32> = vec2<f32>(x_1026.x, x_1026.y);
  let x_1029 : f32 = u_xlat4.z;
  txVec0 = vec3<f32>(x_1027.x, x_1027.y, x_1029);
  let x_1041 : vec3<f32> = txVec0;
  let x_1043 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1041.xy, x_1041.z);
  u_xlat4.x = x_1043;
  let x_1046 : f32 = x_667.x_MainLightShadowParams.x;
  u_xlat18.x = (-(x_1046) + 1.0f);
  let x_1051 : f32 = u_xlat4.x;
  let x_1053 : f32 = x_667.x_MainLightShadowParams.x;
  let x_1056 : f32 = u_xlat18.x;
  u_xlat4.x = ((x_1051 * x_1053) + x_1056);
  let x_1061 : f32 = u_xlat4.z;
  u_xlatb18.x = (0.0f >= x_1061);
  let x_1066 : f32 = u_xlat4.z;
  u_xlatb32 = (x_1066 >= 1.0f);
  let x_1068 : bool = u_xlatb32;
  let x_1070 : bool = u_xlatb18.x;
  u_xlatb18.x = (x_1068 | x_1070);
  let x_1074 : bool = u_xlatb18.x;
  if (x_1074) {
    x_1075 = 1.0f;
  } else {
    let x_1080 : f32 = u_xlat4.x;
    x_1075 = x_1080;
  }
  let x_1081 : f32 = x_1075;
  u_xlat4.x = x_1081;
  let x_1083 : vec3<f32> = vs_INTERP0;
  let x_1085 : vec3<f32> = x_146.x_WorldSpaceCameraPos;
  let x_1087 : vec3<f32> = (x_1083 + -(x_1085));
  let x_1088 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1087.x, x_1087.y, x_1087.z, x_1088.w);
  let x_1090 : vec4<f32> = u_xlat7;
  let x_1092 : vec4<f32> = u_xlat7;
  u_xlat18.x = dot(vec3<f32>(x_1090.x, x_1090.y, x_1090.z), vec3<f32>(x_1092.x, x_1092.y, x_1092.z));
  let x_1097 : f32 = u_xlat18.x;
  let x_1099 : f32 = x_667.x_MainLightShadowParams.z;
  let x_1102 : f32 = x_667.x_MainLightShadowParams.w;
  u_xlat18.x = ((x_1097 * x_1099) + x_1102);
  let x_1106 : f32 = u_xlat18.x;
  u_xlat18.x = clamp(x_1106, 0.0f, 1.0f);
  let x_1111 : f32 = u_xlat4.x;
  u_xlat32 = (-(x_1111) + 1.0f);
  let x_1115 : f32 = u_xlat18.x;
  let x_1116 : f32 = u_xlat32;
  let x_1119 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_1115 * x_1116) + x_1119);
  let x_1128 : f32 = x_1126.x_MainLightCookieTextureFormat;
  u_xlatb18.x = !((x_1128 == -1.0f));
  let x_1132 : bool = u_xlatb18.x;
  if (x_1132) {
    let x_1135 : vec3<f32> = vs_INTERP0;
    let x_1138 : vec4<f32> = x_1126.x_MainLightWorldToLight[1i];
    let x_1140 : vec2<f32> = (vec2<f32>(x_1135.y, x_1135.y) * vec2<f32>(x_1138.x, x_1138.y));
    let x_1141 : vec3<f32> = u_xlat18;
    u_xlat18 = vec3<f32>(x_1140.x, x_1140.y, x_1141.z);
    let x_1144 : vec4<f32> = x_1126.x_MainLightWorldToLight[0i];
    let x_1146 : vec3<f32> = vs_INTERP0;
    let x_1149 : vec3<f32> = u_xlat18;
    let x_1151 : vec2<f32> = ((vec2<f32>(x_1144.x, x_1144.y) * vec2<f32>(x_1146.x, x_1146.x)) + vec2<f32>(x_1149.x, x_1149.y));
    let x_1152 : vec3<f32> = u_xlat18;
    u_xlat18 = vec3<f32>(x_1151.x, x_1151.y, x_1152.z);
    let x_1155 : vec4<f32> = x_1126.x_MainLightWorldToLight[2i];
    let x_1157 : vec3<f32> = vs_INTERP0;
    let x_1160 : vec3<f32> = u_xlat18;
    let x_1162 : vec2<f32> = ((vec2<f32>(x_1155.x, x_1155.y) * vec2<f32>(x_1157.z, x_1157.z)) + vec2<f32>(x_1160.x, x_1160.y));
    let x_1163 : vec3<f32> = u_xlat18;
    u_xlat18 = vec3<f32>(x_1162.x, x_1162.y, x_1163.z);
    let x_1165 : vec3<f32> = u_xlat18;
    let x_1168 : vec4<f32> = x_1126.x_MainLightWorldToLight[3i];
    let x_1170 : vec2<f32> = (vec2<f32>(x_1165.x, x_1165.y) + vec2<f32>(x_1168.x, x_1168.y));
    let x_1171 : vec3<f32> = u_xlat18;
    u_xlat18 = vec3<f32>(x_1170.x, x_1170.y, x_1171.z);
    let x_1173 : vec3<f32> = u_xlat18;
    let x_1177 : vec2<f32> = ((vec2<f32>(x_1173.x, x_1173.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1178 : vec3<f32> = u_xlat18;
    u_xlat18 = vec3<f32>(x_1177.x, x_1177.y, x_1178.z);
    let x_1185 : vec3<f32> = u_xlat18;
    let x_1188 : f32 = x_146.x_GlobalMipBias.x;
    let x_1189 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1185.x, x_1185.y), x_1188);
    u_xlat7 = x_1189;
    let x_1191 : f32 = x_1126.x_MainLightCookieTextureFormat;
    let x_1193 : f32 = x_1126.x_MainLightCookieTextureFormat;
    let x_1195 : f32 = x_1126.x_MainLightCookieTextureFormat;
    let x_1197 : f32 = x_1126.x_MainLightCookieTextureFormat;
    let x_1198 : vec4<f32> = vec4<f32>(x_1191, x_1193, x_1195, x_1197);
    let x_1205 : vec4<bool> = (vec4<f32>(x_1198.x, x_1198.y, x_1198.z, x_1198.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb18 = vec2<bool>(x_1205.x, x_1205.y);
    let x_1208 : bool = u_xlatb18.y;
    if (x_1208) {
      let x_1213 : f32 = u_xlat7.w;
      x_1209 = x_1213;
    } else {
      let x_1216 : f32 = u_xlat7.x;
      x_1209 = x_1216;
    }
    let x_1217 : f32 = x_1209;
    u_xlat32 = x_1217;
    let x_1219 : bool = u_xlatb18.x;
    if (x_1219) {
      let x_1223 : vec4<f32> = u_xlat7;
      x_1220 = vec3<f32>(x_1223.x, x_1223.y, x_1223.z);
    } else {
      let x_1226 : f32 = u_xlat32;
      x_1220 = vec3<f32>(x_1226, x_1226, x_1226);
    }
    let x_1228 : vec3<f32> = x_1220;
    let x_1229 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1228.x, x_1228.y, x_1228.z, x_1229.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_1235 : vec4<f32> = u_xlat7;
  let x_1238 : vec4<f32> = x_146.x_MainLightColor;
  let x_1240 : vec3<f32> = (vec3<f32>(x_1235.x, x_1235.y, x_1235.z) * vec3<f32>(x_1238.x, x_1238.y, x_1238.z));
  let x_1241 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1240.x, x_1240.y, x_1240.z, x_1241.w);
  let x_1243 : f32 = u_xlat20;
  let x_1245 : vec4<f32> = u_xlat7;
  let x_1247 : vec3<f32> = (vec3<f32>(x_1243, x_1243, x_1243) * vec3<f32>(x_1245.x, x_1245.y, x_1245.z));
  let x_1248 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1247.x, x_1247.y, x_1247.z, x_1248.w);
  let x_1250 : vec4<f32> = u_xlat1;
  let x_1253 : vec3<f32> = u_xlat14;
  u_xlat18.x = dot(-(vec3<f32>(x_1250.x, x_1250.y, x_1250.z)), x_1253);
  let x_1257 : f32 = u_xlat18.x;
  let x_1259 : f32 = u_xlat18.x;
  u_xlat18.x = (x_1257 + x_1259);
  let x_1263 : vec3<f32> = u_xlat14;
  let x_1264 : vec3<f32> = u_xlat18;
  let x_1268 : vec4<f32> = u_xlat1;
  let x_1271 : vec3<f32> = ((x_1263 * -(vec3<f32>(x_1264.x, x_1264.x, x_1264.x))) + -(vec3<f32>(x_1268.x, x_1268.y, x_1268.z)));
  let x_1272 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1271.x, x_1271.y, x_1271.z, x_1272.w);
  let x_1274 : vec3<f32> = u_xlat14;
  let x_1275 : vec4<f32> = u_xlat1;
  u_xlat18.x = dot(x_1274, vec3<f32>(x_1275.x, x_1275.y, x_1275.z));
  let x_1280 : f32 = u_xlat18.x;
  u_xlat18.x = clamp(x_1280, 0.0f, 1.0f);
  let x_1284 : f32 = u_xlat18.x;
  u_xlat18.x = (-(x_1284) + 1.0f);
  let x_1289 : f32 = u_xlat18.x;
  let x_1291 : f32 = u_xlat18.x;
  u_xlat18.x = (x_1289 * x_1291);
  let x_1295 : f32 = u_xlat18.x;
  let x_1297 : f32 = u_xlat18.x;
  u_xlat18.x = (x_1295 * x_1297);
  let x_1300 : f32 = u_xlat43;
  u_xlat32 = ((-(x_1300) * 0.699999988f) + 1.700000048f);
  let x_1306 : f32 = u_xlat43;
  let x_1307 : f32 = u_xlat32;
  u_xlat43 = (x_1306 * x_1307);
  let x_1309 : f32 = u_xlat43;
  u_xlat43 = (x_1309 * 6.0f);
  let x_1320 : vec4<f32> = u_xlat8;
  let x_1322 : f32 = u_xlat43;
  let x_1323 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1320.x, x_1320.y, x_1320.z), x_1322);
  u_xlat8 = x_1323;
  let x_1325 : f32 = u_xlat8.w;
  u_xlat43 = (x_1325 + -1.0f);
  let x_1328 : f32 = x_59.unity_SpecCube0_HDR.w;
  let x_1329 : f32 = u_xlat43;
  u_xlat43 = ((x_1328 * x_1329) + 1.0f);
  let x_1332 : f32 = u_xlat43;
  u_xlat43 = max(x_1332, 0.0f);
  let x_1334 : f32 = u_xlat43;
  u_xlat43 = log2(x_1334);
  let x_1336 : f32 = u_xlat43;
  let x_1338 : f32 = x_59.unity_SpecCube0_HDR.y;
  u_xlat43 = (x_1336 * x_1338);
  let x_1340 : f32 = u_xlat43;
  u_xlat43 = exp2(x_1340);
  let x_1342 : f32 = u_xlat43;
  let x_1344 : f32 = x_59.unity_SpecCube0_HDR.x;
  u_xlat43 = (x_1342 * x_1344);
  let x_1346 : vec4<f32> = u_xlat8;
  let x_1348 : f32 = u_xlat43;
  let x_1350 : vec3<f32> = (vec3<f32>(x_1346.x, x_1346.y, x_1346.z) * vec3<f32>(x_1348, x_1348, x_1348));
  let x_1351 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1350.x, x_1350.y, x_1350.z, x_1351.w);
  let x_1354 : f32 = u_xlat45;
  let x_1356 : f32 = u_xlat45;
  u_xlat34 = ((vec2<f32>(x_1354, x_1354) * vec2<f32>(x_1356, x_1356)) + vec2<f32>(-1.0f, 1.0f));
  let x_1362 : f32 = u_xlat34.y;
  u_xlat43 = (1.0f / x_1362);
  let x_1365 : vec3<f32> = u_xlat2;
  let x_1367 : vec4<f32> = u_xlat0;
  u_xlat9 = (-(x_1365) + vec3<f32>(x_1367.x, x_1367.x, x_1367.x));
  let x_1370 : vec3<f32> = u_xlat18;
  let x_1372 : vec3<f32> = u_xlat9;
  let x_1374 : vec3<f32> = u_xlat2;
  u_xlat9 = ((vec3<f32>(x_1370.x, x_1370.x, x_1370.x) * x_1372) + x_1374);
  let x_1376 : f32 = u_xlat43;
  let x_1378 : vec3<f32> = u_xlat9;
  u_xlat9 = (vec3<f32>(x_1376, x_1376, x_1376) * x_1378);
  let x_1380 : vec4<f32> = u_xlat8;
  let x_1382 : vec3<f32> = u_xlat9;
  let x_1383 : vec3<f32> = (vec3<f32>(x_1380.x, x_1380.y, x_1380.z) * x_1382);
  let x_1384 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1383.x, x_1383.y, x_1383.z, x_1384.w);
  let x_1386 : vec4<f32> = u_xlat5;
  let x_1388 : vec3<f32> = u_xlat3;
  let x_1390 : vec4<f32> = u_xlat8;
  let x_1392 : vec3<f32> = ((vec3<f32>(x_1386.x, x_1386.y, x_1386.z) * x_1388) + vec3<f32>(x_1390.x, x_1390.y, x_1390.z));
  let x_1393 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1392.x, x_1392.y, x_1392.z, x_1393.w);
  let x_1396 : f32 = u_xlat4.x;
  let x_1398 : f32 = x_59.unity_LightData.z;
  u_xlat0.x = (x_1396 * x_1398);
  let x_1401 : vec3<f32> = u_xlat14;
  let x_1403 : vec4<f32> = x_146.x_MainLightPosition;
  u_xlat43 = dot(x_1401, vec3<f32>(x_1403.x, x_1403.y, x_1403.z));
  let x_1406 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1406, 0.0f, 1.0f);
  let x_1409 : f32 = u_xlat0.x;
  let x_1410 : f32 = u_xlat43;
  u_xlat0.x = (x_1409 * x_1410);
  let x_1413 : vec4<f32> = u_xlat0;
  let x_1415 : vec4<f32> = u_xlat7;
  let x_1417 : vec3<f32> = (vec3<f32>(x_1413.x, x_1413.x, x_1413.x) * vec3<f32>(x_1415.x, x_1415.y, x_1415.z));
  let x_1418 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1417.x, x_1417.y, x_1417.z, x_1418.w);
  let x_1420 : vec4<f32> = u_xlat1;
  let x_1423 : vec4<f32> = x_146.x_MainLightPosition;
  let x_1425 : vec3<f32> = (vec3<f32>(x_1420.x, x_1420.y, x_1420.z) + vec3<f32>(x_1423.x, x_1423.y, x_1423.z));
  let x_1426 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1425.x, x_1425.y, x_1425.z, x_1426.w);
  let x_1428 : vec4<f32> = u_xlat7;
  let x_1430 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(vec3<f32>(x_1428.x, x_1428.y, x_1428.z), vec3<f32>(x_1430.x, x_1430.y, x_1430.z));
  let x_1435 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1435, 1.17549435e-37f);
  let x_1439 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_1439);
  let x_1442 : vec4<f32> = u_xlat0;
  let x_1444 : vec4<f32> = u_xlat7;
  let x_1446 : vec3<f32> = (vec3<f32>(x_1442.x, x_1442.x, x_1442.x) * vec3<f32>(x_1444.x, x_1444.y, x_1444.z));
  let x_1447 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1446.x, x_1446.y, x_1446.z, x_1447.w);
  let x_1449 : vec3<f32> = u_xlat14;
  let x_1450 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_1449, vec3<f32>(x_1450.x, x_1450.y, x_1450.z));
  let x_1455 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1455, 0.0f, 1.0f);
  let x_1459 : vec4<f32> = x_146.x_MainLightPosition;
  let x_1461 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec3<f32>(x_1459.x, x_1459.y, x_1459.z), vec3<f32>(x_1461.x, x_1461.y, x_1461.z));
  let x_1464 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1464, 0.0f, 1.0f);
  let x_1467 : f32 = u_xlat0.x;
  let x_1469 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1467 * x_1469);
  let x_1473 : f32 = u_xlat0.x;
  let x_1475 : f32 = u_xlat34.x;
  u_xlat0.x = ((x_1473 * x_1475) + 1.000010014f);
  let x_1480 : f32 = u_xlat43;
  let x_1481 : f32 = u_xlat43;
  u_xlat43 = (x_1480 * x_1481);
  let x_1484 : f32 = u_xlat0.x;
  let x_1486 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1484 * x_1486);
  let x_1489 : f32 = u_xlat43;
  u_xlat43 = max(x_1489, 0.100000001f);
  let x_1492 : f32 = u_xlat0.x;
  let x_1493 : f32 = u_xlat43;
  u_xlat0.x = (x_1492 * x_1493);
  let x_1496 : f32 = u_xlat47;
  let x_1498 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1496 * x_1498);
  let x_1501 : f32 = u_xlat46;
  let x_1503 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1501 / x_1503);
  let x_1506 : vec3<f32> = u_xlat2;
  let x_1507 : vec4<f32> = u_xlat0;
  let x_1510 : vec3<f32> = u_xlat3;
  let x_1511 : vec3<f32> = ((x_1506 * vec3<f32>(x_1507.x, x_1507.x, x_1507.x)) + x_1510);
  let x_1512 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1511.x, x_1511.y, x_1511.z, x_1512.w);
  let x_1514 : vec4<f32> = u_xlat4;
  let x_1516 : vec4<f32> = u_xlat7;
  let x_1518 : vec3<f32> = (vec3<f32>(x_1514.x, x_1514.y, x_1514.z) * vec3<f32>(x_1516.x, x_1516.y, x_1516.z));
  let x_1519 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1518.x, x_1518.y, x_1518.z, x_1519.w);
  let x_1522 : f32 = x_146.x_AdditionalLightsCount.x;
  let x_1524 : f32 = x_59.unity_LightData.y;
  u_xlat0.x = min(x_1522, x_1524);
  let x_1529 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1529));
  let x_1534 : f32 = x_1126.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1536 : f32 = x_1126.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1538 : f32 = x_1126.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1540 : f32 = x_1126.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1541 : vec4<f32> = vec4<f32>(x_1534, x_1536, x_1538, x_1540);
  let x_1547 : vec4<bool> = (vec4<f32>(x_1541.x, x_1541.y, x_1541.z, x_1541.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1547.x, x_1547.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1558 : u32 = u_xlatu_loop_1;
    let x_1559 : u32 = u_xlatu0;
    if ((x_1558 < x_1559)) {
    } else {
      break;
    }
    let x_1562 : u32 = u_xlatu_loop_1;
    u_xlatu45 = (x_1562 >> 2u);
    let x_1565 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_1565 & 3u));
    let x_1568 : u32 = u_xlatu45;
    let x_1571 : vec4<f32> = x_59.unity_LightIndices[bitcast<i32>(x_1568)];
    let x_1581 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1586 : vec4<u32> = indexable[x_1581];
    u_xlat45 = dot(x_1571, bitcast<vec4<f32>>(x_1586));
    let x_1589 : f32 = u_xlat45;
    u_xlatu45 = bitcast<u32>(i32(x_1589));
    let x_1592 : vec3<f32> = vs_INTERP0;
    let x_1604 : u32 = u_xlatu45;
    let x_1607 : vec4<f32> = x_1603.x_AdditionalLightsPosition[bitcast<i32>(x_1604)];
    let x_1610 : u32 = u_xlatu45;
    let x_1613 : vec4<f32> = x_1603.x_AdditionalLightsPosition[bitcast<i32>(x_1610)];
    u_xlat9 = ((-(x_1592) * vec3<f32>(x_1607.w, x_1607.w, x_1607.w)) + vec3<f32>(x_1613.x, x_1613.y, x_1613.z));
    let x_1617 : vec3<f32> = u_xlat9;
    let x_1618 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_1617, x_1618);
    let x_1620 : f32 = u_xlat48;
    u_xlat48 = max(x_1620, 6.10351562e-05f);
    let x_1624 : f32 = u_xlat48;
    u_xlat35 = inverseSqrt(x_1624);
    let x_1627 : f32 = u_xlat35;
    let x_1629 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1627, x_1627, x_1627) * x_1629);
    let x_1632 : f32 = u_xlat48;
    u_xlat49 = (1.0f / x_1632);
    let x_1634 : f32 = u_xlat48;
    let x_1635 : u32 = u_xlatu45;
    let x_1638 : f32 = x_1603.x_AdditionalLightsAttenuation[bitcast<i32>(x_1635)].x;
    u_xlat48 = (x_1634 * x_1638);
    let x_1640 : f32 = u_xlat48;
    let x_1642 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1640) * x_1642) + 1.0f);
    let x_1645 : f32 = u_xlat48;
    u_xlat48 = max(x_1645, 0.0f);
    let x_1647 : f32 = u_xlat48;
    let x_1648 : f32 = u_xlat48;
    u_xlat48 = (x_1647 * x_1648);
    let x_1650 : f32 = u_xlat48;
    let x_1651 : f32 = u_xlat49;
    u_xlat48 = (x_1650 * x_1651);
    let x_1653 : u32 = u_xlatu45;
    let x_1656 : vec4<f32> = x_1603.x_AdditionalLightsSpotDir[bitcast<i32>(x_1653)];
    let x_1658 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_1656.x, x_1656.y, x_1656.z), x_1658);
    let x_1660 : f32 = u_xlat49;
    let x_1661 : u32 = u_xlatu45;
    let x_1664 : f32 = x_1603.x_AdditionalLightsAttenuation[bitcast<i32>(x_1661)].z;
    let x_1666 : u32 = u_xlatu45;
    let x_1669 : f32 = x_1603.x_AdditionalLightsAttenuation[bitcast<i32>(x_1666)].w;
    u_xlat49 = ((x_1660 * x_1664) + x_1669);
    let x_1671 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1671, 0.0f, 1.0f);
    let x_1673 : f32 = u_xlat49;
    let x_1674 : f32 = u_xlat49;
    u_xlat49 = (x_1673 * x_1674);
    let x_1676 : f32 = u_xlat48;
    let x_1677 : f32 = u_xlat49;
    u_xlat48 = (x_1676 * x_1677);
    let x_1680 : u32 = u_xlatu45;
    u_xlatu49 = (x_1680 >> 5u);
    let x_1683 : u32 = u_xlatu45;
    u_xlati50 = (1i << bitcast<u32>((bitcast<i32>(x_1683) & 31i)));
    let x_1689 : i32 = u_xlati50;
    let x_1691 : u32 = u_xlatu49;
    let x_1694 : f32 = x_1126.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1691)].el;
    u_xlati49 = bitcast<i32>((bitcast<u32>(x_1689) & bitcast<u32>(x_1694)));
    let x_1698 : i32 = u_xlati49;
    if ((x_1698 != 0i)) {
      let x_1708 : u32 = u_xlatu45;
      let x_1711 : f32 = x_1707.x_AdditionalLightsLightTypes[bitcast<i32>(x_1708)].el;
      u_xlati49 = i32(x_1711);
      let x_1713 : i32 = u_xlati49;
      u_xlati50 = select(1i, 0i, (x_1713 != 0i));
      let x_1717 : u32 = u_xlatu45;
      u_xlati51 = (bitcast<i32>(x_1717) << bitcast<u32>(2i));
      let x_1720 : i32 = u_xlati50;
      if ((x_1720 != 0i)) {
        let x_1725 : vec3<f32> = vs_INTERP0;
        let x_1727 : i32 = u_xlati51;
        let x_1730 : i32 = u_xlati51;
        let x_1734 : vec4<f32> = x_1707.x_AdditionalLightsWorldToLights[((x_1727 + 1i) / 4i)][((x_1730 + 1i) % 4i)];
        let x_1736 : vec3<f32> = (vec3<f32>(x_1725.y, x_1725.y, x_1725.y) * vec3<f32>(x_1734.x, x_1734.y, x_1734.w));
        let x_1737 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1736.x, x_1736.y, x_1736.z, x_1737.w);
        let x_1739 : i32 = u_xlati51;
        let x_1741 : i32 = u_xlati51;
        let x_1744 : vec4<f32> = x_1707.x_AdditionalLightsWorldToLights[(x_1739 / 4i)][(x_1741 % 4i)];
        let x_1746 : vec3<f32> = vs_INTERP0;
        let x_1749 : vec4<f32> = u_xlat11;
        let x_1751 : vec3<f32> = ((vec3<f32>(x_1744.x, x_1744.y, x_1744.w) * vec3<f32>(x_1746.x, x_1746.x, x_1746.x)) + vec3<f32>(x_1749.x, x_1749.y, x_1749.z));
        let x_1752 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1751.x, x_1751.y, x_1751.z, x_1752.w);
        let x_1754 : i32 = u_xlati51;
        let x_1757 : i32 = u_xlati51;
        let x_1761 : vec4<f32> = x_1707.x_AdditionalLightsWorldToLights[((x_1754 + 2i) / 4i)][((x_1757 + 2i) % 4i)];
        let x_1763 : vec3<f32> = vs_INTERP0;
        let x_1766 : vec4<f32> = u_xlat11;
        let x_1768 : vec3<f32> = ((vec3<f32>(x_1761.x, x_1761.y, x_1761.w) * vec3<f32>(x_1763.z, x_1763.z, x_1763.z)) + vec3<f32>(x_1766.x, x_1766.y, x_1766.z));
        let x_1769 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1768.x, x_1768.y, x_1768.z, x_1769.w);
        let x_1771 : vec4<f32> = u_xlat11;
        let x_1773 : i32 = u_xlati51;
        let x_1776 : i32 = u_xlati51;
        let x_1780 : vec4<f32> = x_1707.x_AdditionalLightsWorldToLights[((x_1773 + 3i) / 4i)][((x_1776 + 3i) % 4i)];
        let x_1782 : vec3<f32> = (vec3<f32>(x_1771.x, x_1771.y, x_1771.z) + vec3<f32>(x_1780.x, x_1780.y, x_1780.w));
        let x_1783 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1782.x, x_1782.y, x_1782.z, x_1783.w);
        let x_1785 : vec4<f32> = u_xlat11;
        let x_1787 : vec4<f32> = u_xlat11;
        let x_1789 : vec2<f32> = (vec2<f32>(x_1785.x, x_1785.y) / vec2<f32>(x_1787.z, x_1787.z));
        let x_1790 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1789.x, x_1789.y, x_1790.z, x_1790.w);
        let x_1792 : vec4<f32> = u_xlat11;
        let x_1795 : vec2<f32> = ((vec2<f32>(x_1792.x, x_1792.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1796 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1795.x, x_1795.y, x_1796.z, x_1796.w);
        let x_1798 : vec4<f32> = u_xlat11;
        let x_1802 : vec2<f32> = clamp(vec2<f32>(x_1798.x, x_1798.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1803 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1802.x, x_1802.y, x_1803.z, x_1803.w);
        let x_1805 : u32 = u_xlatu45;
        let x_1808 : vec4<f32> = x_1707.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1805)];
        let x_1810 : vec4<f32> = u_xlat11;
        let x_1813 : u32 = u_xlatu45;
        let x_1816 : vec4<f32> = x_1707.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1813)];
        let x_1818 : vec2<f32> = ((vec2<f32>(x_1808.x, x_1808.y) * vec2<f32>(x_1810.x, x_1810.y)) + vec2<f32>(x_1816.z, x_1816.w));
        let x_1819 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1818.x, x_1818.y, x_1819.z, x_1819.w);
      } else {
        let x_1823 : i32 = u_xlati49;
        u_xlatb49 = (x_1823 == 1i);
        let x_1825 : bool = u_xlatb49;
        u_xlati49 = select(0i, 1i, x_1825);
        let x_1827 : i32 = u_xlati49;
        if ((x_1827 != 0i)) {
          let x_1832 : vec3<f32> = vs_INTERP0;
          let x_1834 : i32 = u_xlati51;
          let x_1837 : i32 = u_xlati51;
          let x_1841 : vec4<f32> = x_1707.x_AdditionalLightsWorldToLights[((x_1834 + 1i) / 4i)][((x_1837 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1832.y, x_1832.y) * vec2<f32>(x_1841.x, x_1841.y));
          let x_1844 : i32 = u_xlati51;
          let x_1846 : i32 = u_xlati51;
          let x_1849 : vec4<f32> = x_1707.x_AdditionalLightsWorldToLights[(x_1844 / 4i)][(x_1846 % 4i)];
          let x_1851 : vec3<f32> = vs_INTERP0;
          let x_1854 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1849.x, x_1849.y) * vec2<f32>(x_1851.x, x_1851.x)) + x_1854);
          let x_1856 : i32 = u_xlati51;
          let x_1859 : i32 = u_xlati51;
          let x_1863 : vec4<f32> = x_1707.x_AdditionalLightsWorldToLights[((x_1856 + 2i) / 4i)][((x_1859 + 2i) % 4i)];
          let x_1865 : vec3<f32> = vs_INTERP0;
          let x_1868 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1863.x, x_1863.y) * vec2<f32>(x_1865.z, x_1865.z)) + x_1868);
          let x_1870 : vec2<f32> = u_xlat39;
          let x_1871 : i32 = u_xlati51;
          let x_1874 : i32 = u_xlati51;
          let x_1878 : vec4<f32> = x_1707.x_AdditionalLightsWorldToLights[((x_1871 + 3i) / 4i)][((x_1874 + 3i) % 4i)];
          u_xlat39 = (x_1870 + vec2<f32>(x_1878.x, x_1878.y));
          let x_1881 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1881 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1884 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1884);
          let x_1886 : u32 = u_xlatu45;
          let x_1889 : vec4<f32> = x_1707.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1886)];
          let x_1891 : vec2<f32> = u_xlat39;
          let x_1893 : u32 = u_xlatu45;
          let x_1896 : vec4<f32> = x_1707.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1893)];
          let x_1898 : vec2<f32> = ((vec2<f32>(x_1889.x, x_1889.y) * x_1891) + vec2<f32>(x_1896.z, x_1896.w));
          let x_1899 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1898.x, x_1898.y, x_1899.z, x_1899.w);
        } else {
          let x_1903 : vec3<f32> = vs_INTERP0;
          let x_1905 : i32 = u_xlati51;
          let x_1908 : i32 = u_xlati51;
          let x_1912 : vec4<f32> = x_1707.x_AdditionalLightsWorldToLights[((x_1905 + 1i) / 4i)][((x_1908 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1903.y, x_1903.y, x_1903.y, x_1903.y) * x_1912);
          let x_1914 : i32 = u_xlati51;
          let x_1916 : i32 = u_xlati51;
          let x_1919 : vec4<f32> = x_1707.x_AdditionalLightsWorldToLights[(x_1914 / 4i)][(x_1916 % 4i)];
          let x_1920 : vec3<f32> = vs_INTERP0;
          let x_1923 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1919 * vec4<f32>(x_1920.x, x_1920.x, x_1920.x, x_1920.x)) + x_1923);
          let x_1925 : i32 = u_xlati51;
          let x_1928 : i32 = u_xlati51;
          let x_1932 : vec4<f32> = x_1707.x_AdditionalLightsWorldToLights[((x_1925 + 2i) / 4i)][((x_1928 + 2i) % 4i)];
          let x_1933 : vec3<f32> = vs_INTERP0;
          let x_1936 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1932 * vec4<f32>(x_1933.z, x_1933.z, x_1933.z, x_1933.z)) + x_1936);
          let x_1938 : vec4<f32> = u_xlat12;
          let x_1939 : i32 = u_xlati51;
          let x_1942 : i32 = u_xlati51;
          let x_1946 : vec4<f32> = x_1707.x_AdditionalLightsWorldToLights[((x_1939 + 3i) / 4i)][((x_1942 + 3i) % 4i)];
          u_xlat12 = (x_1938 + x_1946);
          let x_1948 : vec4<f32> = u_xlat12;
          let x_1950 : vec4<f32> = u_xlat12;
          let x_1952 : vec3<f32> = (vec3<f32>(x_1948.x, x_1948.y, x_1948.z) / vec3<f32>(x_1950.w, x_1950.w, x_1950.w));
          let x_1953 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1952.x, x_1952.y, x_1952.z, x_1953.w);
          let x_1955 : vec4<f32> = u_xlat12;
          let x_1957 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(vec3<f32>(x_1955.x, x_1955.y, x_1955.z), vec3<f32>(x_1957.x, x_1957.y, x_1957.z));
          let x_1960 : f32 = u_xlat49;
          u_xlat49 = inverseSqrt(x_1960);
          let x_1962 : f32 = u_xlat49;
          let x_1964 : vec4<f32> = u_xlat12;
          let x_1966 : vec3<f32> = (vec3<f32>(x_1962, x_1962, x_1962) * vec3<f32>(x_1964.x, x_1964.y, x_1964.z));
          let x_1967 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1966.x, x_1966.y, x_1966.z, x_1967.w);
          let x_1969 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(abs(vec3<f32>(x_1969.x, x_1969.y, x_1969.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1974 : f32 = u_xlat49;
          u_xlat49 = max(x_1974, 0.000001f);
          let x_1977 : f32 = u_xlat49;
          u_xlat49 = (1.0f / x_1977);
          let x_1980 : f32 = u_xlat49;
          let x_1982 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1980, x_1980, x_1980) * vec3<f32>(x_1982.z, x_1982.x, x_1982.y));
          let x_1986 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1986);
          let x_1990 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1990, 0.0f, 1.0f);
          let x_1994 : vec3<f32> = u_xlat13;
          let x_1997 : vec4<bool> = (vec4<f32>(x_1994.y, x_1994.z, x_1994.y, x_1994.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1997.x, x_1997.y);
          let x_2000 : bool = u_xlatb39.x;
          if (x_2000) {
            let x_2005 : f32 = u_xlat13.x;
            x_2001 = x_2005;
          } else {
            let x_2008 : f32 = u_xlat13.x;
            x_2001 = -(x_2008);
          }
          let x_2010 : f32 = x_2001;
          u_xlat39.x = x_2010;
          let x_2013 : bool = u_xlatb39.y;
          if (x_2013) {
            let x_2018 : f32 = u_xlat13.x;
            x_2014 = x_2018;
          } else {
            let x_2021 : f32 = u_xlat13.x;
            x_2014 = -(x_2021);
          }
          let x_2023 : f32 = x_2014;
          u_xlat39.y = x_2023;
          let x_2025 : vec4<f32> = u_xlat12;
          let x_2027 : f32 = u_xlat49;
          let x_2030 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_2025.x, x_2025.y) * vec2<f32>(x_2027, x_2027)) + x_2030);
          let x_2032 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_2032 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2035 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_2035, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2039 : u32 = u_xlatu45;
          let x_2042 : vec4<f32> = x_1707.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2039)];
          let x_2044 : vec2<f32> = u_xlat39;
          let x_2046 : u32 = u_xlatu45;
          let x_2049 : vec4<f32> = x_1707.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2046)];
          let x_2051 : vec2<f32> = ((vec2<f32>(x_2042.x, x_2042.y) * x_2044) + vec2<f32>(x_2049.z, x_2049.w));
          let x_2052 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2051.x, x_2051.y, x_2052.z, x_2052.w);
        }
      }
      let x_2059 : vec4<f32> = u_xlat11;
      let x_2062 : f32 = x_146.x_GlobalMipBias.x;
      let x_2063 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2059.x, x_2059.y), x_2062);
      u_xlat11 = x_2063;
      let x_2065 : bool = u_xlatb7.y;
      if (x_2065) {
        let x_2070 : f32 = u_xlat11.w;
        x_2066 = x_2070;
      } else {
        let x_2073 : f32 = u_xlat11.x;
        x_2066 = x_2073;
      }
      let x_2074 : f32 = x_2066;
      u_xlat49 = x_2074;
      let x_2076 : bool = u_xlatb7.x;
      if (x_2076) {
        let x_2080 : vec4<f32> = u_xlat11;
        x_2077 = vec3<f32>(x_2080.x, x_2080.y, x_2080.z);
      } else {
        let x_2083 : f32 = u_xlat49;
        x_2077 = vec3<f32>(x_2083, x_2083, x_2083);
      }
      let x_2085 : vec3<f32> = x_2077;
      let x_2086 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2085.x, x_2085.y, x_2085.z, x_2086.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2092 : vec4<f32> = u_xlat11;
    let x_2094 : u32 = u_xlatu45;
    let x_2097 : vec4<f32> = x_1603.x_AdditionalLightsColor[bitcast<i32>(x_2094)];
    let x_2099 : vec3<f32> = (vec3<f32>(x_2092.x, x_2092.y, x_2092.z) * vec3<f32>(x_2097.x, x_2097.y, x_2097.z));
    let x_2100 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2099.x, x_2099.y, x_2099.z, x_2100.w);
    let x_2102 : f32 = u_xlat20;
    let x_2104 : vec4<f32> = u_xlat11;
    let x_2106 : vec3<f32> = (vec3<f32>(x_2102, x_2102, x_2102) * vec3<f32>(x_2104.x, x_2104.y, x_2104.z));
    let x_2107 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2106.x, x_2106.y, x_2106.z, x_2107.w);
    let x_2109 : vec3<f32> = u_xlat14;
    let x_2110 : vec3<f32> = u_xlat10;
    u_xlat45 = dot(x_2109, x_2110);
    let x_2112 : f32 = u_xlat45;
    u_xlat45 = clamp(x_2112, 0.0f, 1.0f);
    let x_2114 : f32 = u_xlat45;
    let x_2115 : f32 = u_xlat48;
    u_xlat45 = (x_2114 * x_2115);
    let x_2117 : f32 = u_xlat45;
    let x_2119 : vec4<f32> = u_xlat11;
    let x_2121 : vec3<f32> = (vec3<f32>(x_2117, x_2117, x_2117) * vec3<f32>(x_2119.x, x_2119.y, x_2119.z));
    let x_2122 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2121.x, x_2121.y, x_2121.z, x_2122.w);
    let x_2124 : vec3<f32> = u_xlat9;
    let x_2125 : f32 = u_xlat35;
    let x_2128 : vec4<f32> = u_xlat1;
    u_xlat9 = ((x_2124 * vec3<f32>(x_2125, x_2125, x_2125)) + vec3<f32>(x_2128.x, x_2128.y, x_2128.z));
    let x_2131 : vec3<f32> = u_xlat9;
    let x_2132 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(x_2131, x_2132);
    let x_2134 : f32 = u_xlat45;
    u_xlat45 = max(x_2134, 1.17549435e-37f);
    let x_2136 : f32 = u_xlat45;
    u_xlat45 = inverseSqrt(x_2136);
    let x_2138 : f32 = u_xlat45;
    let x_2140 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_2138, x_2138, x_2138) * x_2140);
    let x_2142 : vec3<f32> = u_xlat14;
    let x_2143 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(x_2142, x_2143);
    let x_2145 : f32 = u_xlat45;
    u_xlat45 = clamp(x_2145, 0.0f, 1.0f);
    let x_2147 : vec3<f32> = u_xlat10;
    let x_2148 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_2147, x_2148);
    let x_2150 : f32 = u_xlat48;
    u_xlat48 = clamp(x_2150, 0.0f, 1.0f);
    let x_2152 : f32 = u_xlat45;
    let x_2153 : f32 = u_xlat45;
    u_xlat45 = (x_2152 * x_2153);
    let x_2155 : f32 = u_xlat45;
    let x_2157 : f32 = u_xlat34.x;
    u_xlat45 = ((x_2155 * x_2157) + 1.000010014f);
    let x_2160 : f32 = u_xlat48;
    let x_2161 : f32 = u_xlat48;
    u_xlat48 = (x_2160 * x_2161);
    let x_2163 : f32 = u_xlat45;
    let x_2164 : f32 = u_xlat45;
    u_xlat45 = (x_2163 * x_2164);
    let x_2166 : f32 = u_xlat48;
    u_xlat48 = max(x_2166, 0.100000001f);
    let x_2168 : f32 = u_xlat45;
    let x_2169 : f32 = u_xlat48;
    u_xlat45 = (x_2168 * x_2169);
    let x_2171 : f32 = u_xlat47;
    let x_2172 : f32 = u_xlat45;
    u_xlat45 = (x_2171 * x_2172);
    let x_2174 : f32 = u_xlat46;
    let x_2175 : f32 = u_xlat45;
    u_xlat45 = (x_2174 / x_2175);
    let x_2177 : vec3<f32> = u_xlat2;
    let x_2178 : f32 = u_xlat45;
    let x_2181 : vec3<f32> = u_xlat3;
    u_xlat9 = ((x_2177 * vec3<f32>(x_2178, x_2178, x_2178)) + x_2181);
    let x_2183 : vec3<f32> = u_xlat9;
    let x_2184 : vec4<f32> = u_xlat11;
    let x_2187 : vec4<f32> = u_xlat8;
    let x_2189 : vec3<f32> = ((x_2183 * vec3<f32>(x_2184.x, x_2184.y, x_2184.z)) + vec3<f32>(x_2187.x, x_2187.y, x_2187.z));
    let x_2190 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2189.x, x_2189.y, x_2189.z, x_2190.w);

    continuing {
      let x_2192 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2192 + bitcast<u32>(1i));
    }
  }
  let x_2194 : vec4<f32> = u_xlat5;
  let x_2196 : vec3<f32> = u_xlat6;
  let x_2199 : vec4<f32> = u_xlat4;
  let x_2201 : vec3<f32> = ((vec3<f32>(x_2194.x, x_2194.y, x_2194.z) * vec3<f32>(x_2196.x, x_2196.x, x_2196.x)) + vec3<f32>(x_2199.x, x_2199.y, x_2199.z));
  let x_2202 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2201.x, x_2201.y, x_2201.z, x_2202.w);
  let x_2204 : vec4<f32> = u_xlat8;
  let x_2206 : vec4<f32> = u_xlat0;
  let x_2208 : vec3<f32> = (vec3<f32>(x_2204.x, x_2204.y, x_2204.z) + vec3<f32>(x_2206.x, x_2206.y, x_2206.z));
  let x_2209 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2208.x, x_2208.y, x_2208.z, x_2209.w);
  let x_2212 : f32 = u_xlat44;
  let x_2213 : f32 = u_xlat44;
  u_xlat42 = (x_2212 * -(x_2213));
  let x_2216 : f32 = u_xlat42;
  u_xlat42 = exp2(x_2216);
  let x_2218 : vec4<f32> = u_xlat0;
  let x_2222 : vec4<f32> = x_146.unity_FogColor;
  let x_2225 : vec3<f32> = (vec3<f32>(x_2218.x, x_2218.y, x_2218.z) + -(vec3<f32>(x_2222.x, x_2222.y, x_2222.z)));
  let x_2226 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2225.x, x_2225.y, x_2225.z, x_2226.w);
  let x_2230 : f32 = u_xlat42;
  let x_2232 : vec4<f32> = u_xlat0;
  let x_2236 : vec4<f32> = x_146.unity_FogColor;
  let x_2238 : vec3<f32> = ((vec3<f32>(x_2230, x_2230, x_2230) * vec3<f32>(x_2232.x, x_2232.y, x_2232.z)) + vec3<f32>(x_2236.x, x_2236.y, x_2236.z));
  let x_2239 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2238.x, x_2238.y, x_2238.z, x_2239.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(4) vs_INTERP4_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP4 = vs_INTERP4_param;
  main_1();
  return main_out(SV_Target0);
}

