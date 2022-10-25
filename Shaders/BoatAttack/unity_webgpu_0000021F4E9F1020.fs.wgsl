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

@group(0) @binding(6) var x_MainTex : texture_2d<f32>;

@group(0) @binding(16) var sampler_MainTex : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_146 : PGlobals;

var<private> vs_INTERP0 : vec3<f32>;

@group(0) @binding(9) var Texture2D_D7D66558 : texture_2d<f32>;

@group(0) @binding(19) var samplerTexture2D_D7D66558 : sampler;

@group(1) @binding(6) var<uniform> x_206 : UnityPerMaterial;

@group(0) @binding(7) var Texture2D_DE8BF47E : texture_2d<f32>;

@group(0) @binding(17) var samplerTexture2D_DE8BF47E : sampler;

@group(0) @binding(8) var Texture2D_C005B064 : texture_2d<f32>;

@group(0) @binding(18) var samplerTexture2D_C005B064 : sampler;

@group(0) @binding(5) var x_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1 : texture_2d<f32>;

@group(0) @binding(15) var sampler_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1 : sampler;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_INTERP8 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(3) var<uniform> x_926 : MainLightShadows;

@group(1) @binding(4) var<uniform> x_993 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1475 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1577 : AdditionalLightsCookies;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat45 : f32;
  var u_xlat46 : f32;
  var u_xlat7 : vec4<f32>;
  var u_xlat21 : vec3<f32>;
  var u_xlat15 : vec3<f32>;
  var u_xlat18 : vec3<f32>;
  var u_xlat28 : f32;
  var x_666 : vec3<f32>;
  var u_xlat8 : vec3<f32>;
  var u_xlat16 : f32;
  var u_xlat30 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat47 : f32;
  var u_xlatb6 : bool;
  var u_xlatb20 : bool;
  var u_xlat20 : f32;
  var u_xlatb7 : vec2<bool>;
  var u_xlat48 : f32;
  var x_1078 : f32;
  var x_1089 : vec3<f32>;
  var u_xlat49 : f32;
  var u_xlatu0 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu47 : u32;
  var u_xlati48 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat9 : vec3<f32>;
  var u_xlat35 : f32;
  var u_xlat10 : vec3<f32>;
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
  var x_1872 : f32;
  var x_1885 : f32;
  var x_1937 : f32;
  var x_1948 : vec3<f32>;
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
  let x_188 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_187.x, x_187.y, x_188.z);
  let x_196 : vec3<f32> = u_xlat5;
  let x_199 : f32 = x_146.x_GlobalMipBias.x;
  let x_200 : vec4<f32> = textureSampleBias(Texture2D_D7D66558, samplerTexture2D_D7D66558, vec2<f32>(x_196.x, x_196.y), x_199);
  let x_201 : vec3<f32> = vec3<f32>(x_200.x, x_200.y, x_200.z);
  let x_202 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_201.x, x_201.y, x_201.z, x_202.w);
  let x_209 : f32 = x_206.Vector1_8B35DE98;
  u_xlat44 = ((-(x_209) * 0.011111f) + 0.949999988f);
  let x_218 : f32 = x_206.Vector1_A492C01C;
  u_xlat45 = (x_218 + -10.0f);
  let x_221 : f32 = u_xlat45;
  let x_224 : f32 = vs_INTERP0.y;
  u_xlat45 = (-(x_221) + x_224);
  let x_226 : f32 = u_xlat45;
  u_xlat45 = (x_226 * 0.050000001f);
  let x_229 : f32 = u_xlat45;
  u_xlat45 = clamp(x_229, 0.0f, 1.0f);
  let x_232 : f32 = u_xlat45;
  u_xlat46 = ((x_232 * -2.0f) + 3.0f);
  let x_237 : f32 = u_xlat45;
  let x_238 : f32 = u_xlat45;
  u_xlat45 = (x_237 * x_238);
  let x_240 : f32 = u_xlat45;
  let x_241 : f32 = u_xlat46;
  u_xlat45 = (x_240 * x_241);
  let x_249 : vec4<f32> = vs_INTERP3;
  let x_252 : f32 = x_146.x_GlobalMipBias.x;
  let x_253 : vec4<f32> = textureSampleBias(Texture2D_DE8BF47E, samplerTexture2D_DE8BF47E, vec2<f32>(x_249.x, x_249.y), x_252);
  u_xlat7 = x_253;
  let x_255 : vec4<f32> = u_xlat7;
  u_xlat21 = ((vec3<f32>(x_255.w, x_255.y, x_255.z) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_262 : vec3<f32> = u_xlat3;
  let x_263 : vec3<f32> = u_xlat21;
  u_xlat3 = (x_262 * vec3<f32>(x_263.y, x_263.y, x_263.y));
  let x_266 : vec3<f32> = u_xlat21;
  let x_268 : vec3<f32> = u_xlat2;
  let x_270 : vec3<f32> = u_xlat3;
  u_xlat2 = ((vec3<f32>(x_266.x, x_266.x, x_266.x) * x_268) + x_270);
  let x_272 : vec3<f32> = u_xlat21;
  let x_274 : vec4<f32> = u_xlat1;
  let x_277 : vec3<f32> = u_xlat2;
  let x_278 : vec3<f32> = ((vec3<f32>(x_272.z, x_272.z, x_272.z) * vec3<f32>(x_274.x, x_274.y, x_274.z)) + x_277);
  let x_279 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_278.x, x_278.y, x_278.z, x_279.w);
  let x_281 : vec4<f32> = u_xlat1;
  let x_283 : vec4<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_281.x, x_281.y, x_281.z), vec3<f32>(x_283.x, x_283.y, x_283.z));
  let x_288 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_288, 1.17549435e-37f);
  let x_293 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_293);
  let x_297 : f32 = u_xlat1.x;
  let x_299 : f32 = u_xlat1.y;
  u_xlat1.x = (x_297 * x_299);
  let x_302 : f32 = u_xlat45;
  let x_304 : f32 = u_xlat1.x;
  let x_306 : f32 = u_xlat44;
  u_xlat1.x = ((x_302 * x_304) + -(x_306));
  let x_311 : f32 = u_xlat1.x;
  u_xlat1.x = (x_311 * 10.0f);
  let x_316 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_316, 0.0f, 1.0f);
  let x_321 : f32 = u_xlat1.x;
  u_xlat15.x = ((x_321 * -2.0f) + 3.0f);
  let x_326 : f32 = u_xlat1.x;
  let x_328 : f32 = u_xlat1.x;
  u_xlat1.x = (x_326 * x_328);
  let x_332 : f32 = u_xlat1.x;
  let x_334 : f32 = u_xlat15.x;
  u_xlat1.x = (x_332 * x_334);
  let x_337 : vec4<f32> = u_xlat1;
  let x_340 : vec2<f32> = min(vec2<f32>(x_337.x, x_337.w), vec2<f32>(1.0f, 1.0f));
  let x_341 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_340.x, x_341.y, x_341.z, x_340.y);
  let x_344 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_344) + 1.0f);
  let x_348 : vec4<f32> = u_xlat4;
  let x_350 : vec4<f32> = u_xlat6;
  u_xlat2 = (vec3<f32>(x_348.x, x_348.y, x_348.z) + -(vec3<f32>(x_350.x, x_350.y, x_350.z)));
  let x_354 : vec4<f32> = u_xlat1;
  let x_356 : vec3<f32> = u_xlat2;
  let x_358 : vec4<f32> = u_xlat6;
  u_xlat2 = ((vec3<f32>(x_354.x, x_354.x, x_354.x) * x_356) + vec3<f32>(x_358.x, x_358.y, x_358.z));
  let x_361 : vec4<f32> = u_xlat1;
  let x_363 : vec3<f32> = u_xlat2;
  u_xlat3 = (vec3<f32>(x_361.w, x_361.w, x_361.w) * x_363);
  let x_371 : vec3<f32> = u_xlat5;
  let x_374 : f32 = x_146.x_GlobalMipBias.x;
  let x_375 : vec4<f32> = textureSampleBias(Texture2D_C005B064, samplerTexture2D_C005B064, vec2<f32>(x_371.x, x_371.y), x_374);
  u_xlat18 = vec3<f32>(x_375.x, x_375.y, x_375.w);
  let x_378 : f32 = u_xlat18.x;
  let x_380 : f32 = u_xlat18.z;
  u_xlat18.x = (x_378 * x_380);
  let x_383 : vec3<f32> = u_xlat18;
  let x_388 : vec2<f32> = ((vec2<f32>(x_383.x, x_383.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_389 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_388.x, x_388.y, x_389.z);
  let x_391 : vec3<f32> = u_xlat5;
  let x_393 : vec3<f32> = u_xlat5;
  u_xlat15.x = dot(vec2<f32>(x_391.x, x_391.y), vec2<f32>(x_393.x, x_393.y));
  let x_398 : f32 = u_xlat15.x;
  u_xlat15.x = min(x_398, 1.0f);
  let x_402 : f32 = u_xlat15.x;
  u_xlat15.x = (-(x_402) + 1.0f);
  let x_407 : f32 = u_xlat15.x;
  u_xlat15.x = sqrt(x_407);
  let x_411 : f32 = u_xlat15.x;
  u_xlat5.z = max(x_411, 1.00000002e-16f);
  let x_418 : vec4<f32> = x_59.unity_ObjectToWorld[0i];
  let x_421 : vec4<f32> = x_59.unity_ObjectToWorld[0i];
  u_xlat15.x = dot(vec3<f32>(x_418.x, x_418.y, x_418.z), vec3<f32>(x_421.x, x_421.y, x_421.z));
  let x_426 : f32 = u_xlat15.x;
  u_xlat6.x = sqrt(x_426);
  let x_430 : vec4<f32> = x_59.unity_ObjectToWorld[1i];
  let x_433 : vec4<f32> = x_59.unity_ObjectToWorld[1i];
  u_xlat15.x = dot(vec3<f32>(x_430.x, x_430.y, x_430.z), vec3<f32>(x_433.x, x_433.y, x_433.z));
  let x_438 : f32 = u_xlat15.x;
  u_xlat6.y = sqrt(x_438);
  let x_443 : vec4<f32> = x_59.unity_ObjectToWorld[2i];
  let x_446 : vec4<f32> = x_59.unity_ObjectToWorld[2i];
  u_xlat15.x = dot(vec3<f32>(x_443.x, x_443.y, x_443.z), vec3<f32>(x_446.x, x_446.y, x_446.z));
  let x_451 : f32 = u_xlat15.x;
  u_xlat6.z = sqrt(x_451);
  let x_454 : vec4<f32> = u_xlat6;
  let x_456 : vec4<f32> = u_xlat6;
  u_xlat15.x = dot(vec3<f32>(x_454.x, x_454.y, x_454.z), vec3<f32>(x_456.x, x_456.y, x_456.z));
  let x_461 : f32 = u_xlat15.x;
  u_xlat15.x = sqrt(x_461);
  let x_465 : f32 = u_xlat15.x;
  let x_468 : f32 = x_206.Vector1_90E376AD;
  u_xlat15.x = (x_465 * x_468);
  let x_472 : f32 = u_xlat15.x;
  u_xlat15.x = (x_472 * 30.0f);
  let x_476 : vec3<f32> = u_xlat15;
  let x_478 : vec4<f32> = vs_INTERP3;
  let x_480 : vec2<f32> = (vec2<f32>(x_476.x, x_476.x) * vec2<f32>(x_478.x, x_478.y));
  let x_481 : vec3<f32> = u_xlat15;
  u_xlat15 = vec3<f32>(x_480.x, x_480.y, x_481.z);
  let x_488 : vec3<f32> = u_xlat15;
  let x_491 : f32 = x_146.x_GlobalMipBias.x;
  let x_492 : vec4<f32> = textureSampleBias(x_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1, sampler_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1, vec2<f32>(x_488.x, x_488.y), x_491);
  u_xlat18 = vec3<f32>(x_492.x, x_492.y, x_492.w);
  let x_495 : f32 = u_xlat18.x;
  let x_497 : f32 = u_xlat18.z;
  u_xlat18.x = (x_495 * x_497);
  let x_500 : vec3<f32> = u_xlat18;
  let x_503 : vec2<f32> = ((vec2<f32>(x_500.x, x_500.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_504 : vec3<f32> = u_xlat15;
  u_xlat15 = vec3<f32>(x_503.x, x_503.y, x_504.z);
  let x_506 : vec3<f32> = u_xlat15;
  let x_508 : vec3<f32> = u_xlat15;
  u_xlat44 = dot(vec2<f32>(x_506.x, x_506.y), vec2<f32>(x_508.x, x_508.y));
  let x_511 : f32 = u_xlat44;
  u_xlat44 = min(x_511, 1.0f);
  let x_513 : f32 = u_xlat44;
  u_xlat44 = (-(x_513) + 1.0f);
  let x_516 : f32 = u_xlat44;
  u_xlat44 = sqrt(x_516);
  let x_518 : f32 = u_xlat44;
  u_xlat44 = max(x_518, 1.00000002e-16f);
  let x_520 : vec3<f32> = u_xlat15;
  let x_522 : vec3<f32> = u_xlat21;
  let x_524 : vec2<f32> = (vec2<f32>(x_520.x, x_520.y) + vec2<f32>(x_522.x, x_522.y));
  let x_525 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_524.x, x_524.y, x_525.z, x_525.w);
  let x_527 : f32 = u_xlat44;
  let x_529 : f32 = u_xlat21.z;
  u_xlat6.z = (x_527 * x_529);
  let x_532 : vec4<f32> = u_xlat6;
  let x_534 : vec4<f32> = u_xlat6;
  u_xlat15.x = dot(vec3<f32>(x_532.x, x_532.y, x_532.z), vec3<f32>(x_534.x, x_534.y, x_534.z));
  let x_539 : f32 = u_xlat15.x;
  u_xlat15.x = max(x_539, 1.17549435e-37f);
  let x_543 : f32 = u_xlat15.x;
  u_xlat15.x = inverseSqrt(x_543);
  let x_546 : vec4<f32> = u_xlat6;
  let x_548 : vec3<f32> = u_xlat15;
  let x_551 : vec3<f32> = u_xlat5;
  u_xlat18 = ((vec3<f32>(x_546.x, x_546.y, x_546.z) * vec3<f32>(x_548.x, x_548.x, x_548.x)) + -(x_551));
  let x_554 : vec4<f32> = u_xlat1;
  let x_556 : vec3<f32> = u_xlat18;
  let x_558 : vec3<f32> = u_xlat5;
  let x_559 : vec3<f32> = ((vec3<f32>(x_554.x, x_554.x, x_554.x) * x_556) + x_558);
  let x_560 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_560.x, x_559.x, x_559.y, x_559.z);
  let x_563 : f32 = u_xlat0.x;
  u_xlat0.x = (-(abs(x_563)) + 1.0f);
  let x_568 : vec4<f32> = u_xlat0;
  let x_569 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_568 * vec4<f32>(x_569.x, x_569.z, x_569.z, x_569.z));
  let x_573 : f32 = u_xlat0.x;
  let x_575 : f32 = x_206.Vector1_6E11FCEA;
  u_xlat0.x = (x_573 * x_575);
  let x_579 : f32 = u_xlat1.x;
  let x_581 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_579 * x_581) + -0.850000024f);
  let x_587 : f32 = u_xlat1.w;
  let x_589 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_587 * x_589) + 0.850000024f);
  let x_595 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_595, 0.0f, 1.0f);
  let x_598 : vec4<f32> = u_xlat4;
  let x_600 : vec4<f32> = vs_INTERP2;
  let x_603 : vec4<f32> = u_xlat0;
  u_xlat14 = ((vec3<f32>(x_598.y, x_598.y, x_598.y) * vec3<f32>(x_600.x, x_600.y, x_600.z)) + vec3<f32>(x_603.y, x_603.z, x_603.w));
  let x_606 : vec4<f32> = u_xlat4;
  let x_608 : vec3<f32> = vs_INTERP1;
  let x_610 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_606.w, x_606.w, x_606.w) * x_608) + x_610);
  let x_612 : vec3<f32> = u_xlat14;
  let x_613 : vec3<f32> = u_xlat14;
  u_xlat1.x = dot(x_612, x_613);
  let x_617 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_617);
  let x_620 : vec3<f32> = u_xlat14;
  let x_621 : vec4<f32> = u_xlat1;
  let x_623 : vec3<f32> = (x_620 * vec3<f32>(x_621.x, x_621.x, x_621.x));
  let x_624 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_623.x, x_623.y, x_623.z, x_624.w);
  let x_627 : f32 = x_146.unity_OrthoParams.w;
  u_xlatb14.x = (x_627 == 0.0f);
  let x_630 : vec3<f32> = vs_INTERP0;
  let x_635 : vec3<f32> = x_146.x_WorldSpaceCameraPos;
  let x_636 : vec3<f32> = (-(x_630) + x_635);
  let x_637 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_636.x, x_636.y, x_636.z, x_637.w);
  let x_640 : vec4<f32> = u_xlat1;
  let x_642 : vec4<f32> = u_xlat1;
  u_xlat28 = dot(vec3<f32>(x_640.x, x_640.y, x_640.z), vec3<f32>(x_642.x, x_642.y, x_642.z));
  let x_645 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_645);
  let x_647 : f32 = u_xlat28;
  let x_649 : vec4<f32> = u_xlat1;
  let x_651 : vec3<f32> = (vec3<f32>(x_647, x_647, x_647) * vec3<f32>(x_649.x, x_649.y, x_649.z));
  let x_652 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_651.x, x_651.y, x_651.z, x_652.w);
  let x_656 : f32 = x_146.unity_MatrixV[0i].z;
  u_xlat5.x = x_656;
  let x_659 : f32 = x_146.unity_MatrixV[1i].z;
  u_xlat5.y = x_659;
  let x_662 : f32 = x_146.unity_MatrixV[2i].z;
  u_xlat5.z = x_662;
  let x_665 : bool = u_xlatb14.x;
  if (x_665) {
    let x_669 : vec4<f32> = u_xlat1;
    x_666 = vec3<f32>(x_669.x, x_669.y, x_669.z);
  } else {
    let x_672 : vec3<f32> = u_xlat5;
    x_666 = x_672;
  }
  let x_673 : vec3<f32> = x_666;
  u_xlat14 = x_673;
  let x_675 : f32 = vs_INTERP0.y;
  let x_677 : f32 = x_146.unity_MatrixV[1i].z;
  u_xlat1.x = (x_675 * x_677);
  let x_681 : f32 = x_146.unity_MatrixV[0i].z;
  let x_683 : f32 = vs_INTERP0.x;
  let x_686 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_681 * x_683) + x_686);
  let x_690 : f32 = x_146.unity_MatrixV[2i].z;
  let x_692 : f32 = vs_INTERP0.z;
  let x_695 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_690 * x_692) + x_695);
  let x_699 : f32 = u_xlat1.x;
  let x_701 : f32 = x_146.unity_MatrixV[3i].z;
  u_xlat1.x = (x_699 + x_701);
  let x_705 : f32 = u_xlat1.x;
  let x_709 : f32 = x_146.x_ProjectionParams.y;
  u_xlat1.x = (-(x_705) + -(x_709));
  let x_714 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_714, 0.0f);
  let x_718 : f32 = u_xlat1.x;
  let x_721 : f32 = x_146.unity_FogParams.x;
  u_xlat1.x = (x_718 * x_721);
  u_xlat4.w = 1.0f;
  let x_727 : vec4<f32> = x_59.unity_SHAr;
  let x_728 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_727, x_728);
  let x_733 : vec4<f32> = x_59.unity_SHAg;
  let x_734 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_733, x_734);
  let x_739 : vec4<f32> = x_59.unity_SHAb;
  let x_740 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_739, x_740);
  let x_743 : vec4<f32> = u_xlat4;
  let x_745 : vec4<f32> = u_xlat4;
  u_xlat6 = (vec4<f32>(x_743.y, x_743.z, x_743.z, x_743.x) * vec4<f32>(x_745.x, x_745.y, x_745.z, x_745.z));
  let x_751 : vec4<f32> = x_59.unity_SHBr;
  let x_752 : vec4<f32> = u_xlat6;
  u_xlat8.x = dot(x_751, x_752);
  let x_757 : vec4<f32> = x_59.unity_SHBg;
  let x_758 : vec4<f32> = u_xlat6;
  u_xlat8.y = dot(x_757, x_758);
  let x_763 : vec4<f32> = x_59.unity_SHBb;
  let x_764 : vec4<f32> = u_xlat6;
  u_xlat8.z = dot(x_763, x_764);
  let x_768 : f32 = u_xlat4.y;
  let x_770 : f32 = u_xlat4.y;
  u_xlat15.x = (x_768 * x_770);
  let x_774 : f32 = u_xlat4.x;
  let x_776 : f32 = u_xlat4.x;
  let x_779 : f32 = u_xlat15.x;
  u_xlat15.x = ((x_774 * x_776) + -(x_779));
  let x_785 : vec4<f32> = x_59.unity_SHC;
  let x_787 : vec3<f32> = u_xlat15;
  let x_790 : vec3<f32> = u_xlat8;
  let x_791 : vec3<f32> = ((vec3<f32>(x_785.x, x_785.y, x_785.z) * vec3<f32>(x_787.x, x_787.x, x_787.x)) + x_790);
  let x_792 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_791.x, x_791.y, x_791.z, x_792.w);
  let x_794 : vec3<f32> = u_xlat5;
  let x_795 : vec4<f32> = u_xlat6;
  u_xlat5 = (x_794 + vec3<f32>(x_795.x, x_795.y, x_795.z));
  let x_798 : vec3<f32> = u_xlat5;
  u_xlat5 = max(x_798, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_802 : vec4<f32> = x_146.x_ScaledScreenParams;
  let x_803 : vec2<f32> = vec2<f32>(x_802.x, x_802.y);
  let x_807 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_803.x, x_803.y));
  let x_808 : vec3<f32> = u_xlat15;
  u_xlat15 = vec3<f32>(x_807.x, x_807.y, x_808.z);
  let x_810 : vec3<f32> = u_xlat15;
  let x_812 : vec4<f32> = hlslcc_FragCoord;
  let x_814 : vec2<f32> = (vec2<f32>(x_810.x, x_810.y) * vec2<f32>(x_812.x, x_812.y));
  let x_815 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_814.x, x_814.y, x_815.z, x_815.w);
  let x_818 : f32 = u_xlat6.y;
  let x_821 : f32 = x_146.x_ScaleBiasRt.x;
  let x_824 : f32 = x_146.x_ScaleBiasRt.y;
  u_xlat15.x = ((x_818 * x_821) + x_824);
  let x_828 : f32 = u_xlat15.x;
  u_xlat6.z = (-(x_828) + 1.0f);
  let x_832 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_832 * vec3<f32>(0.863999963f, 0.863999963f, 0.863999963f));
  let x_836 : vec4<f32> = u_xlat1;
  let x_838 : vec3<f32> = u_xlat2;
  u_xlat15 = ((vec3<f32>(x_836.w, x_836.w, x_836.w) * x_838) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_843 : vec3<f32> = u_xlat15;
  u_xlat15 = ((x_843 * vec3<f32>(0.100000001f, 0.100000001f, 0.100000001f)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_850 : f32 = u_xlat0.x;
  u_xlat2.x = (-(x_850) + 1.0f);
  let x_856 : f32 = u_xlat2.x;
  let x_858 : f32 = u_xlat2.x;
  u_xlat16 = (x_856 * x_858);
  let x_860 : f32 = u_xlat16;
  u_xlat16 = max(x_860, 0.0078125f);
  let x_864 : f32 = u_xlat16;
  let x_865 : f32 = u_xlat16;
  u_xlat30 = (x_864 * x_865);
  let x_868 : f32 = u_xlat0.x;
  u_xlat0.x = (x_868 + 0.136000037f);
  let x_873 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_873, 1.0f);
  let x_876 : f32 = u_xlat16;
  u_xlat44 = ((x_876 * 4.0f) + 2.0f);
  let x_884 : vec4<f32> = u_xlat6;
  let x_887 : f32 = x_146.x_GlobalMipBias.x;
  let x_888 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_884.x, x_884.z), x_887);
  u_xlat45 = x_888.x;
  let x_890 : f32 = u_xlat45;
  u_xlat46 = (x_890 + -1.0f);
  let x_893 : f32 = x_146.x_AmbientOcclusionParam.w;
  let x_894 : f32 = u_xlat46;
  u_xlat46 = ((x_893 * x_894) + 1.0f);
  let x_898 : f32 = u_xlat7.x;
  let x_899 : f32 = u_xlat45;
  u_xlat45 = min(x_898, x_899);
  let x_903 : vec4<f32> = vs_INTERP8;
  let x_904 : vec2<f32> = vec2<f32>(x_903.x, x_903.y);
  let x_906 : f32 = vs_INTERP8.z;
  txVec0 = vec3<f32>(x_904.x, x_904.y, x_906);
  let x_919 : vec3<f32> = txVec0;
  let x_921 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_919.xy, x_919.z);
  u_xlat47 = x_921;
  let x_928 : f32 = x_926.x_MainLightShadowParams.x;
  u_xlat6.x = (-(x_928) + 1.0f);
  let x_932 : f32 = u_xlat47;
  let x_934 : f32 = x_926.x_MainLightShadowParams.x;
  let x_937 : f32 = u_xlat6.x;
  u_xlat47 = ((x_932 * x_934) + x_937);
  let x_941 : f32 = vs_INTERP8.z;
  u_xlatb6 = (0.0f >= x_941);
  let x_945 : f32 = vs_INTERP8.z;
  u_xlatb20 = (x_945 >= 1.0f);
  let x_947 : bool = u_xlatb20;
  let x_948 : bool = u_xlatb6;
  u_xlatb6 = (x_947 | x_948);
  let x_950 : bool = u_xlatb6;
  let x_951 : f32 = u_xlat47;
  u_xlat47 = select(x_951, 1.0f, x_950);
  let x_953 : vec3<f32> = vs_INTERP0;
  let x_955 : vec3<f32> = x_146.x_WorldSpaceCameraPos;
  let x_957 : vec3<f32> = (x_953 + -(x_955));
  let x_958 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_957.x, x_957.y, x_957.z, x_958.w);
  let x_960 : vec4<f32> = u_xlat6;
  let x_962 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_960.x, x_960.y, x_960.z), vec3<f32>(x_962.x, x_962.y, x_962.z));
  let x_967 : f32 = u_xlat6.x;
  let x_969 : f32 = x_926.x_MainLightShadowParams.z;
  let x_972 : f32 = x_926.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_967 * x_969) + x_972);
  let x_976 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_976, 0.0f, 1.0f);
  let x_980 : f32 = u_xlat47;
  u_xlat20 = (-(x_980) + 1.0f);
  let x_984 : f32 = u_xlat6.x;
  let x_985 : f32 = u_xlat20;
  let x_987 : f32 = u_xlat47;
  u_xlat47 = ((x_984 * x_985) + x_987);
  let x_995 : f32 = x_993.x_MainLightCookieTextureFormat;
  u_xlatb6 = !((x_995 == -1.0f));
  let x_997 : bool = u_xlatb6;
  if (x_997) {
    let x_1000 : vec3<f32> = vs_INTERP0;
    let x_1003 : vec4<f32> = x_993.x_MainLightWorldToLight[1i];
    let x_1005 : vec2<f32> = (vec2<f32>(x_1000.y, x_1000.y) * vec2<f32>(x_1003.x, x_1003.y));
    let x_1006 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1005.x, x_1005.y, x_1006.z, x_1006.w);
    let x_1009 : vec4<f32> = x_993.x_MainLightWorldToLight[0i];
    let x_1011 : vec3<f32> = vs_INTERP0;
    let x_1014 : vec4<f32> = u_xlat6;
    let x_1016 : vec2<f32> = ((vec2<f32>(x_1009.x, x_1009.y) * vec2<f32>(x_1011.x, x_1011.x)) + vec2<f32>(x_1014.x, x_1014.y));
    let x_1017 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1016.x, x_1016.y, x_1017.z, x_1017.w);
    let x_1020 : vec4<f32> = x_993.x_MainLightWorldToLight[2i];
    let x_1022 : vec3<f32> = vs_INTERP0;
    let x_1025 : vec4<f32> = u_xlat6;
    let x_1027 : vec2<f32> = ((vec2<f32>(x_1020.x, x_1020.y) * vec2<f32>(x_1022.z, x_1022.z)) + vec2<f32>(x_1025.x, x_1025.y));
    let x_1028 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1027.x, x_1027.y, x_1028.z, x_1028.w);
    let x_1030 : vec4<f32> = u_xlat6;
    let x_1033 : vec4<f32> = x_993.x_MainLightWorldToLight[3i];
    let x_1035 : vec2<f32> = (vec2<f32>(x_1030.x, x_1030.y) + vec2<f32>(x_1033.x, x_1033.y));
    let x_1036 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1035.x, x_1035.y, x_1036.z, x_1036.w);
    let x_1038 : vec4<f32> = u_xlat6;
    let x_1043 : vec2<f32> = ((vec2<f32>(x_1038.x, x_1038.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1044 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1043.x, x_1043.y, x_1044.z, x_1044.w);
    let x_1051 : vec4<f32> = u_xlat6;
    let x_1054 : f32 = x_146.x_GlobalMipBias.x;
    let x_1055 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1051.x, x_1051.y), x_1054);
    u_xlat6 = x_1055;
    let x_1058 : f32 = x_993.x_MainLightCookieTextureFormat;
    let x_1060 : f32 = x_993.x_MainLightCookieTextureFormat;
    let x_1062 : f32 = x_993.x_MainLightCookieTextureFormat;
    let x_1064 : f32 = x_993.x_MainLightCookieTextureFormat;
    let x_1065 : vec4<f32> = vec4<f32>(x_1058, x_1060, x_1062, x_1064);
    let x_1073 : vec4<bool> = (vec4<f32>(x_1065.x, x_1065.y, x_1065.z, x_1065.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_1073.x, x_1073.y);
    let x_1077 : bool = u_xlatb7.y;
    if (x_1077) {
      let x_1082 : f32 = u_xlat6.w;
      x_1078 = x_1082;
    } else {
      let x_1085 : f32 = u_xlat6.x;
      x_1078 = x_1085;
    }
    let x_1086 : f32 = x_1078;
    u_xlat48 = x_1086;
    let x_1088 : bool = u_xlatb7.x;
    if (x_1088) {
      let x_1092 : vec4<f32> = u_xlat6;
      x_1089 = vec3<f32>(x_1092.x, x_1092.y, x_1092.z);
    } else {
      let x_1095 : f32 = u_xlat48;
      x_1089 = vec3<f32>(x_1095, x_1095, x_1095);
    }
    let x_1097 : vec3<f32> = x_1089;
    let x_1098 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1097.x, x_1097.y, x_1097.z, x_1098.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_1104 : vec4<f32> = u_xlat6;
  let x_1107 : vec4<f32> = x_146.x_MainLightColor;
  let x_1109 : vec3<f32> = (vec3<f32>(x_1104.x, x_1104.y, x_1104.z) * vec3<f32>(x_1107.x, x_1107.y, x_1107.z));
  let x_1110 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1109.x, x_1109.y, x_1109.z, x_1110.w);
  let x_1112 : f32 = u_xlat46;
  let x_1114 : vec4<f32> = u_xlat6;
  let x_1116 : vec3<f32> = (vec3<f32>(x_1112, x_1112, x_1112) * vec3<f32>(x_1114.x, x_1114.y, x_1114.z));
  let x_1117 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1116.x, x_1116.y, x_1116.z, x_1117.w);
  let x_1119 : vec3<f32> = u_xlat14;
  let x_1121 : vec4<f32> = u_xlat4;
  u_xlat48 = dot(-(x_1119), vec3<f32>(x_1121.x, x_1121.y, x_1121.z));
  let x_1124 : f32 = u_xlat48;
  let x_1125 : f32 = u_xlat48;
  u_xlat48 = (x_1124 + x_1125);
  let x_1127 : vec4<f32> = u_xlat4;
  let x_1129 : f32 = u_xlat48;
  let x_1133 : vec3<f32> = u_xlat14;
  let x_1135 : vec3<f32> = ((vec3<f32>(x_1127.x, x_1127.y, x_1127.z) * -(vec3<f32>(x_1129, x_1129, x_1129))) + -(x_1133));
  let x_1136 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1135.x, x_1135.y, x_1135.z, x_1136.w);
  let x_1138 : vec4<f32> = u_xlat4;
  let x_1140 : vec3<f32> = u_xlat14;
  u_xlat48 = dot(vec3<f32>(x_1138.x, x_1138.y, x_1138.z), x_1140);
  let x_1142 : f32 = u_xlat48;
  u_xlat48 = clamp(x_1142, 0.0f, 1.0f);
  let x_1144 : f32 = u_xlat48;
  u_xlat48 = (-(x_1144) + 1.0f);
  let x_1147 : f32 = u_xlat48;
  let x_1148 : f32 = u_xlat48;
  u_xlat48 = (x_1147 * x_1148);
  let x_1150 : f32 = u_xlat48;
  let x_1151 : f32 = u_xlat48;
  u_xlat48 = (x_1150 * x_1151);
  let x_1155 : f32 = u_xlat2.x;
  u_xlat49 = ((-(x_1155) * 0.699999988f) + 1.700000048f);
  let x_1162 : f32 = u_xlat2.x;
  let x_1163 : f32 = u_xlat49;
  u_xlat2.x = (x_1162 * x_1163);
  let x_1167 : f32 = u_xlat2.x;
  u_xlat2.x = (x_1167 * 6.0f);
  let x_1179 : vec4<f32> = u_xlat7;
  let x_1182 : f32 = u_xlat2.x;
  let x_1183 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1179.x, x_1179.y, x_1179.z), x_1182);
  u_xlat7 = x_1183;
  let x_1185 : f32 = u_xlat7.w;
  u_xlat2.x = (x_1185 + -1.0f);
  let x_1189 : f32 = x_59.unity_SpecCube0_HDR.w;
  let x_1191 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1189 * x_1191) + 1.0f);
  let x_1196 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_1196, 0.0f);
  let x_1200 : f32 = u_xlat2.x;
  u_xlat2.x = log2(x_1200);
  let x_1204 : f32 = u_xlat2.x;
  let x_1206 : f32 = x_59.unity_SpecCube0_HDR.y;
  u_xlat2.x = (x_1204 * x_1206);
  let x_1210 : f32 = u_xlat2.x;
  u_xlat2.x = exp2(x_1210);
  let x_1214 : f32 = u_xlat2.x;
  let x_1216 : f32 = x_59.unity_SpecCube0_HDR.x;
  u_xlat2.x = (x_1214 * x_1216);
  let x_1219 : vec4<f32> = u_xlat7;
  let x_1221 : vec3<f32> = u_xlat2;
  let x_1223 : vec3<f32> = (vec3<f32>(x_1219.x, x_1219.y, x_1219.z) * vec3<f32>(x_1221.x, x_1221.x, x_1221.x));
  let x_1224 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1223.x, x_1223.y, x_1223.z, x_1224.w);
  let x_1226 : f32 = u_xlat16;
  let x_1228 : f32 = u_xlat16;
  let x_1232 : vec2<f32> = ((vec2<f32>(x_1226, x_1226) * vec2<f32>(x_1228, x_1228)) + vec2<f32>(-1.0f, 1.0f));
  let x_1233 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_1232.x, x_1232.y, x_1233.z);
  let x_1236 : f32 = u_xlat2.y;
  u_xlat16 = (1.0f / x_1236);
  let x_1238 : vec3<f32> = u_xlat15;
  let x_1240 : vec4<f32> = u_xlat0;
  u_xlat8 = (-(x_1238) + vec3<f32>(x_1240.x, x_1240.x, x_1240.x));
  let x_1243 : f32 = u_xlat48;
  let x_1245 : vec3<f32> = u_xlat8;
  let x_1247 : vec3<f32> = u_xlat15;
  u_xlat8 = ((vec3<f32>(x_1243, x_1243, x_1243) * x_1245) + x_1247);
  let x_1249 : f32 = u_xlat16;
  let x_1251 : vec3<f32> = u_xlat8;
  u_xlat8 = (vec3<f32>(x_1249, x_1249, x_1249) * x_1251);
  let x_1253 : vec4<f32> = u_xlat7;
  let x_1255 : vec3<f32> = u_xlat8;
  let x_1256 : vec3<f32> = (vec3<f32>(x_1253.x, x_1253.y, x_1253.z) * x_1255);
  let x_1257 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1256.x, x_1256.y, x_1256.z, x_1257.w);
  let x_1259 : vec3<f32> = u_xlat5;
  let x_1260 : vec3<f32> = u_xlat3;
  let x_1262 : vec4<f32> = u_xlat7;
  u_xlat5 = ((x_1259 * x_1260) + vec3<f32>(x_1262.x, x_1262.y, x_1262.z));
  let x_1265 : f32 = u_xlat47;
  let x_1267 : f32 = x_59.unity_LightData.z;
  u_xlat0.x = (x_1265 * x_1267);
  let x_1270 : vec4<f32> = u_xlat4;
  let x_1273 : vec4<f32> = x_146.x_MainLightPosition;
  u_xlat16 = dot(vec3<f32>(x_1270.x, x_1270.y, x_1270.z), vec3<f32>(x_1273.x, x_1273.y, x_1273.z));
  let x_1276 : f32 = u_xlat16;
  u_xlat16 = clamp(x_1276, 0.0f, 1.0f);
  let x_1279 : f32 = u_xlat0.x;
  let x_1280 : f32 = u_xlat16;
  u_xlat0.x = (x_1279 * x_1280);
  let x_1283 : vec4<f32> = u_xlat0;
  let x_1285 : vec4<f32> = u_xlat6;
  let x_1287 : vec3<f32> = (vec3<f32>(x_1283.x, x_1283.x, x_1283.x) * vec3<f32>(x_1285.x, x_1285.y, x_1285.z));
  let x_1288 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1287.x, x_1287.y, x_1287.z, x_1288.w);
  let x_1290 : vec3<f32> = u_xlat14;
  let x_1292 : vec4<f32> = x_146.x_MainLightPosition;
  let x_1294 : vec3<f32> = (x_1290 + vec3<f32>(x_1292.x, x_1292.y, x_1292.z));
  let x_1295 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1294.x, x_1294.y, x_1294.z, x_1295.w);
  let x_1297 : vec4<f32> = u_xlat7;
  let x_1299 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(vec3<f32>(x_1297.x, x_1297.y, x_1297.z), vec3<f32>(x_1299.x, x_1299.y, x_1299.z));
  let x_1304 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1304, 1.17549435e-37f);
  let x_1308 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_1308);
  let x_1311 : vec4<f32> = u_xlat0;
  let x_1313 : vec4<f32> = u_xlat7;
  let x_1315 : vec3<f32> = (vec3<f32>(x_1311.x, x_1311.x, x_1311.x) * vec3<f32>(x_1313.x, x_1313.y, x_1313.z));
  let x_1316 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1315.x, x_1315.y, x_1315.z, x_1316.w);
  let x_1318 : vec4<f32> = u_xlat4;
  let x_1320 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(vec3<f32>(x_1318.x, x_1318.y, x_1318.z), vec3<f32>(x_1320.x, x_1320.y, x_1320.z));
  let x_1325 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1325, 0.0f, 1.0f);
  let x_1329 : vec4<f32> = x_146.x_MainLightPosition;
  let x_1331 : vec4<f32> = u_xlat7;
  u_xlat16 = dot(vec3<f32>(x_1329.x, x_1329.y, x_1329.z), vec3<f32>(x_1331.x, x_1331.y, x_1331.z));
  let x_1334 : f32 = u_xlat16;
  u_xlat16 = clamp(x_1334, 0.0f, 1.0f);
  let x_1337 : f32 = u_xlat0.x;
  let x_1339 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1337 * x_1339);
  let x_1343 : f32 = u_xlat0.x;
  let x_1345 : f32 = u_xlat2.x;
  u_xlat0.x = ((x_1343 * x_1345) + 1.000010014f);
  let x_1350 : f32 = u_xlat16;
  let x_1351 : f32 = u_xlat16;
  u_xlat16 = (x_1350 * x_1351);
  let x_1354 : f32 = u_xlat0.x;
  let x_1356 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1354 * x_1356);
  let x_1359 : f32 = u_xlat16;
  u_xlat16 = max(x_1359, 0.100000001f);
  let x_1362 : f32 = u_xlat0.x;
  let x_1363 : f32 = u_xlat16;
  u_xlat0.x = (x_1362 * x_1363);
  let x_1366 : f32 = u_xlat44;
  let x_1368 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1366 * x_1368);
  let x_1371 : f32 = u_xlat30;
  let x_1373 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1371 / x_1373);
  let x_1376 : vec3<f32> = u_xlat15;
  let x_1377 : vec4<f32> = u_xlat0;
  let x_1380 : vec3<f32> = u_xlat3;
  let x_1381 : vec3<f32> = ((x_1376 * vec3<f32>(x_1377.x, x_1377.x, x_1377.x)) + x_1380);
  let x_1382 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1381.x, x_1381.y, x_1381.z, x_1382.w);
  let x_1384 : vec4<f32> = u_xlat6;
  let x_1386 : vec4<f32> = u_xlat7;
  let x_1388 : vec3<f32> = (vec3<f32>(x_1384.x, x_1384.y, x_1384.z) * vec3<f32>(x_1386.x, x_1386.y, x_1386.z));
  let x_1389 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1388.x, x_1388.y, x_1388.z, x_1389.w);
  let x_1392 : f32 = x_146.x_AdditionalLightsCount.x;
  let x_1394 : f32 = x_59.unity_LightData.y;
  u_xlat0.x = min(x_1392, x_1394);
  let x_1400 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1400));
  let x_1404 : f32 = x_993.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1406 : f32 = x_993.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1408 : f32 = x_993.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1410 : f32 = x_993.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1411 : vec4<f32> = vec4<f32>(x_1404, x_1406, x_1408, x_1410);
  let x_1417 : vec4<bool> = (vec4<f32>(x_1411.x, x_1411.y, x_1411.z, x_1411.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1417.x, x_1417.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1428 : u32 = u_xlatu_loop_1;
    let x_1429 : u32 = u_xlatu0;
    if ((x_1428 < x_1429)) {
    } else {
      break;
    }
    let x_1432 : u32 = u_xlatu_loop_1;
    u_xlatu47 = (x_1432 >> 2u);
    let x_1436 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_1436 & 3u));
    let x_1439 : u32 = u_xlatu47;
    let x_1442 : vec4<f32> = x_59.unity_LightIndices[bitcast<i32>(x_1439)];
    let x_1452 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1457 : vec4<u32> = indexable[x_1452];
    u_xlat47 = dot(x_1442, bitcast<vec4<f32>>(x_1457));
    let x_1460 : f32 = u_xlat47;
    u_xlatu47 = bitcast<u32>(i32(x_1460));
    let x_1464 : vec3<f32> = vs_INTERP0;
    let x_1476 : u32 = u_xlatu47;
    let x_1479 : vec4<f32> = x_1475.x_AdditionalLightsPosition[bitcast<i32>(x_1476)];
    let x_1482 : u32 = u_xlatu47;
    let x_1485 : vec4<f32> = x_1475.x_AdditionalLightsPosition[bitcast<i32>(x_1482)];
    u_xlat9 = ((-(x_1464) * vec3<f32>(x_1479.w, x_1479.w, x_1479.w)) + vec3<f32>(x_1485.x, x_1485.y, x_1485.z));
    let x_1488 : vec3<f32> = u_xlat9;
    let x_1489 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_1488, x_1489);
    let x_1491 : f32 = u_xlat48;
    u_xlat48 = max(x_1491, 6.10351562e-05f);
    let x_1495 : f32 = u_xlat48;
    u_xlat35 = inverseSqrt(x_1495);
    let x_1498 : f32 = u_xlat35;
    let x_1500 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1498, x_1498, x_1498) * x_1500);
    let x_1502 : f32 = u_xlat48;
    u_xlat49 = (1.0f / x_1502);
    let x_1504 : f32 = u_xlat48;
    let x_1505 : u32 = u_xlatu47;
    let x_1508 : f32 = x_1475.x_AdditionalLightsAttenuation[bitcast<i32>(x_1505)].x;
    u_xlat48 = (x_1504 * x_1508);
    let x_1510 : f32 = u_xlat48;
    let x_1512 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1510) * x_1512) + 1.0f);
    let x_1515 : f32 = u_xlat48;
    u_xlat48 = max(x_1515, 0.0f);
    let x_1517 : f32 = u_xlat48;
    let x_1518 : f32 = u_xlat48;
    u_xlat48 = (x_1517 * x_1518);
    let x_1520 : f32 = u_xlat48;
    let x_1521 : f32 = u_xlat49;
    u_xlat48 = (x_1520 * x_1521);
    let x_1523 : u32 = u_xlatu47;
    let x_1526 : vec4<f32> = x_1475.x_AdditionalLightsSpotDir[bitcast<i32>(x_1523)];
    let x_1528 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_1526.x, x_1526.y, x_1526.z), x_1528);
    let x_1530 : f32 = u_xlat49;
    let x_1531 : u32 = u_xlatu47;
    let x_1534 : f32 = x_1475.x_AdditionalLightsAttenuation[bitcast<i32>(x_1531)].z;
    let x_1536 : u32 = u_xlatu47;
    let x_1539 : f32 = x_1475.x_AdditionalLightsAttenuation[bitcast<i32>(x_1536)].w;
    u_xlat49 = ((x_1530 * x_1534) + x_1539);
    let x_1541 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1541, 0.0f, 1.0f);
    let x_1543 : f32 = u_xlat49;
    let x_1544 : f32 = u_xlat49;
    u_xlat49 = (x_1543 * x_1544);
    let x_1546 : f32 = u_xlat48;
    let x_1547 : f32 = u_xlat49;
    u_xlat48 = (x_1546 * x_1547);
    let x_1550 : u32 = u_xlatu47;
    u_xlatu49 = (x_1550 >> 5u);
    let x_1553 : u32 = u_xlatu47;
    u_xlati50 = (1i << bitcast<u32>((bitcast<i32>(x_1553) & 31i)));
    let x_1559 : i32 = u_xlati50;
    let x_1561 : u32 = u_xlatu49;
    let x_1564 : f32 = x_993.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1561)].el;
    u_xlati49 = bitcast<i32>((bitcast<u32>(x_1559) & bitcast<u32>(x_1564)));
    let x_1568 : i32 = u_xlati49;
    if ((x_1568 != 0i)) {
      let x_1578 : u32 = u_xlatu47;
      let x_1581 : f32 = x_1577.x_AdditionalLightsLightTypes[bitcast<i32>(x_1578)].el;
      u_xlati49 = i32(x_1581);
      let x_1583 : i32 = u_xlati49;
      u_xlati50 = select(1i, 0i, (x_1583 != 0i));
      let x_1587 : u32 = u_xlatu47;
      u_xlati51 = (bitcast<i32>(x_1587) << bitcast<u32>(2i));
      let x_1590 : i32 = u_xlati50;
      if ((x_1590 != 0i)) {
        let x_1595 : vec3<f32> = vs_INTERP0;
        let x_1597 : i32 = u_xlati51;
        let x_1600 : i32 = u_xlati51;
        let x_1604 : vec4<f32> = x_1577.x_AdditionalLightsWorldToLights[((x_1597 + 1i) / 4i)][((x_1600 + 1i) % 4i)];
        let x_1606 : vec3<f32> = (vec3<f32>(x_1595.y, x_1595.y, x_1595.y) * vec3<f32>(x_1604.x, x_1604.y, x_1604.w));
        let x_1607 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1606.x, x_1606.y, x_1606.z, x_1607.w);
        let x_1609 : i32 = u_xlati51;
        let x_1611 : i32 = u_xlati51;
        let x_1614 : vec4<f32> = x_1577.x_AdditionalLightsWorldToLights[(x_1609 / 4i)][(x_1611 % 4i)];
        let x_1616 : vec3<f32> = vs_INTERP0;
        let x_1619 : vec4<f32> = u_xlat11;
        let x_1621 : vec3<f32> = ((vec3<f32>(x_1614.x, x_1614.y, x_1614.w) * vec3<f32>(x_1616.x, x_1616.x, x_1616.x)) + vec3<f32>(x_1619.x, x_1619.y, x_1619.z));
        let x_1622 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1621.x, x_1621.y, x_1621.z, x_1622.w);
        let x_1624 : i32 = u_xlati51;
        let x_1627 : i32 = u_xlati51;
        let x_1631 : vec4<f32> = x_1577.x_AdditionalLightsWorldToLights[((x_1624 + 2i) / 4i)][((x_1627 + 2i) % 4i)];
        let x_1633 : vec3<f32> = vs_INTERP0;
        let x_1636 : vec4<f32> = u_xlat11;
        let x_1638 : vec3<f32> = ((vec3<f32>(x_1631.x, x_1631.y, x_1631.w) * vec3<f32>(x_1633.z, x_1633.z, x_1633.z)) + vec3<f32>(x_1636.x, x_1636.y, x_1636.z));
        let x_1639 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1638.x, x_1638.y, x_1638.z, x_1639.w);
        let x_1641 : vec4<f32> = u_xlat11;
        let x_1643 : i32 = u_xlati51;
        let x_1646 : i32 = u_xlati51;
        let x_1650 : vec4<f32> = x_1577.x_AdditionalLightsWorldToLights[((x_1643 + 3i) / 4i)][((x_1646 + 3i) % 4i)];
        let x_1652 : vec3<f32> = (vec3<f32>(x_1641.x, x_1641.y, x_1641.z) + vec3<f32>(x_1650.x, x_1650.y, x_1650.w));
        let x_1653 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1652.x, x_1652.y, x_1652.z, x_1653.w);
        let x_1655 : vec4<f32> = u_xlat11;
        let x_1657 : vec4<f32> = u_xlat11;
        let x_1659 : vec2<f32> = (vec2<f32>(x_1655.x, x_1655.y) / vec2<f32>(x_1657.z, x_1657.z));
        let x_1660 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1659.x, x_1659.y, x_1660.z, x_1660.w);
        let x_1662 : vec4<f32> = u_xlat11;
        let x_1665 : vec2<f32> = ((vec2<f32>(x_1662.x, x_1662.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1666 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1665.x, x_1665.y, x_1666.z, x_1666.w);
        let x_1668 : vec4<f32> = u_xlat11;
        let x_1672 : vec2<f32> = clamp(vec2<f32>(x_1668.x, x_1668.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1673 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1672.x, x_1672.y, x_1673.z, x_1673.w);
        let x_1675 : u32 = u_xlatu47;
        let x_1678 : vec4<f32> = x_1577.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1675)];
        let x_1680 : vec4<f32> = u_xlat11;
        let x_1683 : u32 = u_xlatu47;
        let x_1686 : vec4<f32> = x_1577.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1683)];
        let x_1688 : vec2<f32> = ((vec2<f32>(x_1678.x, x_1678.y) * vec2<f32>(x_1680.x, x_1680.y)) + vec2<f32>(x_1686.z, x_1686.w));
        let x_1689 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1688.x, x_1688.y, x_1689.z, x_1689.w);
      } else {
        let x_1693 : i32 = u_xlati49;
        u_xlatb49 = (x_1693 == 1i);
        let x_1695 : bool = u_xlatb49;
        u_xlati49 = select(0i, 1i, x_1695);
        let x_1697 : i32 = u_xlati49;
        if ((x_1697 != 0i)) {
          let x_1703 : vec3<f32> = vs_INTERP0;
          let x_1705 : i32 = u_xlati51;
          let x_1708 : i32 = u_xlati51;
          let x_1712 : vec4<f32> = x_1577.x_AdditionalLightsWorldToLights[((x_1705 + 1i) / 4i)][((x_1708 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1703.y, x_1703.y) * vec2<f32>(x_1712.x, x_1712.y));
          let x_1715 : i32 = u_xlati51;
          let x_1717 : i32 = u_xlati51;
          let x_1720 : vec4<f32> = x_1577.x_AdditionalLightsWorldToLights[(x_1715 / 4i)][(x_1717 % 4i)];
          let x_1722 : vec3<f32> = vs_INTERP0;
          let x_1725 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1720.x, x_1720.y) * vec2<f32>(x_1722.x, x_1722.x)) + x_1725);
          let x_1727 : i32 = u_xlati51;
          let x_1730 : i32 = u_xlati51;
          let x_1734 : vec4<f32> = x_1577.x_AdditionalLightsWorldToLights[((x_1727 + 2i) / 4i)][((x_1730 + 2i) % 4i)];
          let x_1736 : vec3<f32> = vs_INTERP0;
          let x_1739 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1734.x, x_1734.y) * vec2<f32>(x_1736.z, x_1736.z)) + x_1739);
          let x_1741 : vec2<f32> = u_xlat39;
          let x_1742 : i32 = u_xlati51;
          let x_1745 : i32 = u_xlati51;
          let x_1749 : vec4<f32> = x_1577.x_AdditionalLightsWorldToLights[((x_1742 + 3i) / 4i)][((x_1745 + 3i) % 4i)];
          u_xlat39 = (x_1741 + vec2<f32>(x_1749.x, x_1749.y));
          let x_1752 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1752 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1755 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1755);
          let x_1757 : u32 = u_xlatu47;
          let x_1760 : vec4<f32> = x_1577.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1757)];
          let x_1762 : vec2<f32> = u_xlat39;
          let x_1764 : u32 = u_xlatu47;
          let x_1767 : vec4<f32> = x_1577.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1764)];
          let x_1769 : vec2<f32> = ((vec2<f32>(x_1760.x, x_1760.y) * x_1762) + vec2<f32>(x_1767.z, x_1767.w));
          let x_1770 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1769.x, x_1769.y, x_1770.z, x_1770.w);
        } else {
          let x_1774 : vec3<f32> = vs_INTERP0;
          let x_1776 : i32 = u_xlati51;
          let x_1779 : i32 = u_xlati51;
          let x_1783 : vec4<f32> = x_1577.x_AdditionalLightsWorldToLights[((x_1776 + 1i) / 4i)][((x_1779 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1774.y, x_1774.y, x_1774.y, x_1774.y) * x_1783);
          let x_1785 : i32 = u_xlati51;
          let x_1787 : i32 = u_xlati51;
          let x_1790 : vec4<f32> = x_1577.x_AdditionalLightsWorldToLights[(x_1785 / 4i)][(x_1787 % 4i)];
          let x_1791 : vec3<f32> = vs_INTERP0;
          let x_1794 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1790 * vec4<f32>(x_1791.x, x_1791.x, x_1791.x, x_1791.x)) + x_1794);
          let x_1796 : i32 = u_xlati51;
          let x_1799 : i32 = u_xlati51;
          let x_1803 : vec4<f32> = x_1577.x_AdditionalLightsWorldToLights[((x_1796 + 2i) / 4i)][((x_1799 + 2i) % 4i)];
          let x_1804 : vec3<f32> = vs_INTERP0;
          let x_1807 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1803 * vec4<f32>(x_1804.z, x_1804.z, x_1804.z, x_1804.z)) + x_1807);
          let x_1809 : vec4<f32> = u_xlat12;
          let x_1810 : i32 = u_xlati51;
          let x_1813 : i32 = u_xlati51;
          let x_1817 : vec4<f32> = x_1577.x_AdditionalLightsWorldToLights[((x_1810 + 3i) / 4i)][((x_1813 + 3i) % 4i)];
          u_xlat12 = (x_1809 + x_1817);
          let x_1819 : vec4<f32> = u_xlat12;
          let x_1821 : vec4<f32> = u_xlat12;
          let x_1823 : vec3<f32> = (vec3<f32>(x_1819.x, x_1819.y, x_1819.z) / vec3<f32>(x_1821.w, x_1821.w, x_1821.w));
          let x_1824 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1823.x, x_1823.y, x_1823.z, x_1824.w);
          let x_1826 : vec4<f32> = u_xlat12;
          let x_1828 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(vec3<f32>(x_1826.x, x_1826.y, x_1826.z), vec3<f32>(x_1828.x, x_1828.y, x_1828.z));
          let x_1831 : f32 = u_xlat49;
          u_xlat49 = inverseSqrt(x_1831);
          let x_1833 : f32 = u_xlat49;
          let x_1835 : vec4<f32> = u_xlat12;
          let x_1837 : vec3<f32> = (vec3<f32>(x_1833, x_1833, x_1833) * vec3<f32>(x_1835.x, x_1835.y, x_1835.z));
          let x_1838 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1837.x, x_1837.y, x_1837.z, x_1838.w);
          let x_1840 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(abs(vec3<f32>(x_1840.x, x_1840.y, x_1840.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1845 : f32 = u_xlat49;
          u_xlat49 = max(x_1845, 0.000001f);
          let x_1848 : f32 = u_xlat49;
          u_xlat49 = (1.0f / x_1848);
          let x_1851 : f32 = u_xlat49;
          let x_1853 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1851, x_1851, x_1851) * vec3<f32>(x_1853.z, x_1853.x, x_1853.y));
          let x_1857 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1857);
          let x_1861 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1861, 0.0f, 1.0f);
          let x_1865 : vec3<f32> = u_xlat13;
          let x_1868 : vec4<bool> = (vec4<f32>(x_1865.y, x_1865.z, x_1865.y, x_1865.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1868.x, x_1868.y);
          let x_1871 : bool = u_xlatb39.x;
          if (x_1871) {
            let x_1876 : f32 = u_xlat13.x;
            x_1872 = x_1876;
          } else {
            let x_1879 : f32 = u_xlat13.x;
            x_1872 = -(x_1879);
          }
          let x_1881 : f32 = x_1872;
          u_xlat39.x = x_1881;
          let x_1884 : bool = u_xlatb39.y;
          if (x_1884) {
            let x_1889 : f32 = u_xlat13.x;
            x_1885 = x_1889;
          } else {
            let x_1892 : f32 = u_xlat13.x;
            x_1885 = -(x_1892);
          }
          let x_1894 : f32 = x_1885;
          u_xlat39.y = x_1894;
          let x_1896 : vec4<f32> = u_xlat12;
          let x_1898 : f32 = u_xlat49;
          let x_1901 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1896.x, x_1896.y) * vec2<f32>(x_1898, x_1898)) + x_1901);
          let x_1903 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1903 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1906 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_1906, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1910 : u32 = u_xlatu47;
          let x_1913 : vec4<f32> = x_1577.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1910)];
          let x_1915 : vec2<f32> = u_xlat39;
          let x_1917 : u32 = u_xlatu47;
          let x_1920 : vec4<f32> = x_1577.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1917)];
          let x_1922 : vec2<f32> = ((vec2<f32>(x_1913.x, x_1913.y) * x_1915) + vec2<f32>(x_1920.z, x_1920.w));
          let x_1923 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1922.x, x_1922.y, x_1923.z, x_1923.w);
        }
      }
      let x_1930 : vec4<f32> = u_xlat11;
      let x_1933 : f32 = x_146.x_GlobalMipBias.x;
      let x_1934 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1930.x, x_1930.y), x_1933);
      u_xlat11 = x_1934;
      let x_1936 : bool = u_xlatb7.y;
      if (x_1936) {
        let x_1941 : f32 = u_xlat11.w;
        x_1937 = x_1941;
      } else {
        let x_1944 : f32 = u_xlat11.x;
        x_1937 = x_1944;
      }
      let x_1945 : f32 = x_1937;
      u_xlat49 = x_1945;
      let x_1947 : bool = u_xlatb7.x;
      if (x_1947) {
        let x_1951 : vec4<f32> = u_xlat11;
        x_1948 = vec3<f32>(x_1951.x, x_1951.y, x_1951.z);
      } else {
        let x_1954 : f32 = u_xlat49;
        x_1948 = vec3<f32>(x_1954, x_1954, x_1954);
      }
      let x_1956 : vec3<f32> = x_1948;
      let x_1957 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1956.x, x_1956.y, x_1956.z, x_1957.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1963 : vec4<f32> = u_xlat11;
    let x_1965 : u32 = u_xlatu47;
    let x_1968 : vec4<f32> = x_1475.x_AdditionalLightsColor[bitcast<i32>(x_1965)];
    let x_1970 : vec3<f32> = (vec3<f32>(x_1963.x, x_1963.y, x_1963.z) * vec3<f32>(x_1968.x, x_1968.y, x_1968.z));
    let x_1971 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1970.x, x_1970.y, x_1970.z, x_1971.w);
    let x_1973 : f32 = u_xlat46;
    let x_1975 : vec4<f32> = u_xlat11;
    let x_1977 : vec3<f32> = (vec3<f32>(x_1973, x_1973, x_1973) * vec3<f32>(x_1975.x, x_1975.y, x_1975.z));
    let x_1978 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1977.x, x_1977.y, x_1977.z, x_1978.w);
    let x_1980 : vec4<f32> = u_xlat4;
    let x_1982 : vec3<f32> = u_xlat10;
    u_xlat47 = dot(vec3<f32>(x_1980.x, x_1980.y, x_1980.z), x_1982);
    let x_1984 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1984, 0.0f, 1.0f);
    let x_1986 : f32 = u_xlat47;
    let x_1987 : f32 = u_xlat48;
    u_xlat47 = (x_1986 * x_1987);
    let x_1989 : f32 = u_xlat47;
    let x_1991 : vec4<f32> = u_xlat11;
    let x_1993 : vec3<f32> = (vec3<f32>(x_1989, x_1989, x_1989) * vec3<f32>(x_1991.x, x_1991.y, x_1991.z));
    let x_1994 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1993.x, x_1993.y, x_1993.z, x_1994.w);
    let x_1996 : vec3<f32> = u_xlat9;
    let x_1997 : f32 = u_xlat35;
    let x_2000 : vec3<f32> = u_xlat14;
    u_xlat9 = ((x_1996 * vec3<f32>(x_1997, x_1997, x_1997)) + x_2000);
    let x_2002 : vec3<f32> = u_xlat9;
    let x_2003 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_2002, x_2003);
    let x_2005 : f32 = u_xlat47;
    u_xlat47 = max(x_2005, 1.17549435e-37f);
    let x_2007 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_2007);
    let x_2009 : f32 = u_xlat47;
    let x_2011 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_2009, x_2009, x_2009) * x_2011);
    let x_2013 : vec4<f32> = u_xlat4;
    let x_2015 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_2013.x, x_2013.y, x_2013.z), x_2015);
    let x_2017 : f32 = u_xlat47;
    u_xlat47 = clamp(x_2017, 0.0f, 1.0f);
    let x_2019 : vec3<f32> = u_xlat10;
    let x_2020 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_2019, x_2020);
    let x_2022 : f32 = u_xlat48;
    u_xlat48 = clamp(x_2022, 0.0f, 1.0f);
    let x_2024 : f32 = u_xlat47;
    let x_2025 : f32 = u_xlat47;
    u_xlat47 = (x_2024 * x_2025);
    let x_2027 : f32 = u_xlat47;
    let x_2029 : f32 = u_xlat2.x;
    u_xlat47 = ((x_2027 * x_2029) + 1.000010014f);
    let x_2032 : f32 = u_xlat48;
    let x_2033 : f32 = u_xlat48;
    u_xlat48 = (x_2032 * x_2033);
    let x_2035 : f32 = u_xlat47;
    let x_2036 : f32 = u_xlat47;
    u_xlat47 = (x_2035 * x_2036);
    let x_2038 : f32 = u_xlat48;
    u_xlat48 = max(x_2038, 0.100000001f);
    let x_2040 : f32 = u_xlat47;
    let x_2041 : f32 = u_xlat48;
    u_xlat47 = (x_2040 * x_2041);
    let x_2043 : f32 = u_xlat44;
    let x_2044 : f32 = u_xlat47;
    u_xlat47 = (x_2043 * x_2044);
    let x_2046 : f32 = u_xlat30;
    let x_2047 : f32 = u_xlat47;
    u_xlat47 = (x_2046 / x_2047);
    let x_2049 : vec3<f32> = u_xlat15;
    let x_2050 : f32 = u_xlat47;
    let x_2053 : vec3<f32> = u_xlat3;
    u_xlat9 = ((x_2049 * vec3<f32>(x_2050, x_2050, x_2050)) + x_2053);
    let x_2055 : vec3<f32> = u_xlat9;
    let x_2056 : vec4<f32> = u_xlat11;
    let x_2059 : vec3<f32> = u_xlat8;
    u_xlat8 = ((x_2055 * vec3<f32>(x_2056.x, x_2056.y, x_2056.z)) + x_2059);

    continuing {
      let x_2061 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2061 + bitcast<u32>(1i));
    }
  }
  let x_2063 : vec3<f32> = u_xlat5;
  let x_2064 : f32 = u_xlat45;
  let x_2067 : vec4<f32> = u_xlat6;
  let x_2069 : vec3<f32> = ((x_2063 * vec3<f32>(x_2064, x_2064, x_2064)) + vec3<f32>(x_2067.x, x_2067.y, x_2067.z));
  let x_2070 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2069.x, x_2069.y, x_2069.z, x_2070.w);
  let x_2072 : vec3<f32> = u_xlat8;
  let x_2073 : vec4<f32> = u_xlat0;
  let x_2075 : vec3<f32> = (x_2072 + vec3<f32>(x_2073.x, x_2073.y, x_2073.z));
  let x_2076 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2075.x, x_2075.y, x_2075.z, x_2076.w);
  let x_2080 : f32 = u_xlat1.x;
  let x_2082 : f32 = u_xlat1.x;
  u_xlat42 = (x_2080 * -(x_2082));
  let x_2085 : f32 = u_xlat42;
  u_xlat42 = exp2(x_2085);
  let x_2087 : vec4<f32> = u_xlat0;
  let x_2091 : vec4<f32> = x_146.unity_FogColor;
  let x_2094 : vec3<f32> = (vec3<f32>(x_2087.x, x_2087.y, x_2087.z) + -(vec3<f32>(x_2091.x, x_2091.y, x_2091.z)));
  let x_2095 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2094.x, x_2094.y, x_2094.z, x_2095.w);
  let x_2099 : f32 = u_xlat42;
  let x_2101 : vec4<f32> = u_xlat0;
  let x_2105 : vec4<f32> = x_146.unity_FogColor;
  let x_2107 : vec3<f32> = ((vec3<f32>(x_2099, x_2099, x_2099) * vec3<f32>(x_2101.x, x_2101.y, x_2101.z)) + vec3<f32>(x_2105.x, x_2105.y, x_2105.z));
  let x_2108 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2107.x, x_2107.y, x_2107.z, x_2108.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(4) vs_INTERP8_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP8 = vs_INTERP8_param;
  main_1();
  return main_out(SV_Target0);
}

