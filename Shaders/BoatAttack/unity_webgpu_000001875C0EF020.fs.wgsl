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
  x_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1_TexelSize : vec4<f32>,
  x_MainTex_TexelSize : vec4<f32>,
  Texture2D_DE8BF47E_TexelSize : vec4<f32>,
  Vector1_6E11FCEA : f32,
  Vector1_A492C01C : f32,
  Vector1_8B35DE98 : f32,
  @size(4)
  padding_3 : u32,
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

@group(1) @binding(6) var<uniform> x_206 : UnityPerMaterial;

@group(0) @binding(9) var Texture2D_DE8BF47E : texture_2d<f32>;

@group(0) @binding(20) var samplerTexture2D_DE8BF47E : sampler;

@group(0) @binding(10) var Texture2D_C005B064 : texture_2d<f32>;

@group(0) @binding(21) var samplerTexture2D_C005B064 : sampler;

@group(0) @binding(7) var x_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1 : texture_2d<f32>;

@group(0) @binding(18) var sampler_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1 : sampler;

@group(1) @binding(3) var<uniform> x_693 : MainLightShadows;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(13) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP4 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(15) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_1128 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(12) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1609 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1718 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(17) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> SV_Target1 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlatb13 : vec2<bool>;
  var u_xlat13 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat40 : f32;
  var u_xlat41 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat42 : f32;
  var u_xlat43 : f32;
  var u_xlat7 : vec4<f32>;
  var u_xlat20 : vec3<f32>;
  var u_xlat14 : vec3<f32>;
  var u_xlat17 : vec3<f32>;
  var u_xlatb1 : bool;
  var x_655 : f32;
  var x_667 : f32;
  var x_678 : f32;
  var u_xlat8 : vec4<f32>;
  var u_xlatb4 : vec4<bool>;
  var u_xlatu1 : u32;
  var u_xlati1 : i32;
  var u_xlat44 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatb14 : vec2<bool>;
  var u_xlatb27 : bool;
  var x_1077 : f32;
  var u_xlat19 : vec3<f32>;
  var u_xlat27 : vec2<f32>;
  var x_1211 : f32;
  var x_1223 : vec3<f32>;
  var u_xlatu0 : u32;
  var u_xlatb19 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu45 : u32;
  var u_xlati46 : i32;
  var u_xlat45 : f32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat46 : f32;
  var u_xlat47 : f32;
  var u_xlat9 : vec3<f32>;
  var u_xlat48 : f32;
  var u_xlatu48 : u32;
  var u_xlati10 : i32;
  var u_xlati48 : i32;
  var u_xlati23 : i32;
  var u_xlat10 : vec4<f32>;
  var u_xlatb48 : bool;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec3<f32>;
  var u_xlatb23 : vec3<bool>;
  var u_xlat23 : vec3<f32>;
  var x_2034 : f32;
  var x_2047 : f32;
  var x_2109 : f32;
  var x_2120 : vec3<f32>;
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
  u_xlatb13.x = (0.0f < x_50);
  let x_64 : f32 = x_59.unity_WorldTransformParams.w;
  u_xlatb13.y = (x_64 >= 0.0f);
  let x_71 : bool = u_xlatb13.x;
  u_xlat13.x = select(-1.0f, 1.0f, x_71);
  let x_76 : bool = u_xlatb13.y;
  u_xlat13.y = select(-1.0f, 1.0f, x_76);
  let x_80 : f32 = u_xlat13.y;
  let x_82 : f32 = u_xlat13.x;
  u_xlat13.x = (x_80 * x_82);
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
  let x_104 : vec3<f32> = u_xlat13;
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
  u_xlat40 = ((x_158 * 4.0f) + x_163);
  let x_165 : f32 = u_xlat40;
  u_xlat40 = (x_165 * 0.330000013f);
  let x_170 : f32 = vs_INTERP0.y;
  u_xlat41 = (x_170 + 1.0f);
  let x_172 : f32 = u_xlat41;
  u_xlat41 = ((x_172 * -1.333333373f) + 1.0f);
  let x_176 : f32 = u_xlat40;
  let x_177 : f32 = u_xlat41;
  u_xlat40 = max(x_176, x_177);
  let x_179 : f32 = u_xlat40;
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
  u_xlat41 = ((-(x_209) * 0.011111f) + 0.949999988f);
  let x_218 : f32 = x_206.Vector1_A492C01C;
  u_xlat42 = (x_218 + -10.0f);
  let x_221 : f32 = u_xlat42;
  let x_224 : f32 = vs_INTERP0.y;
  u_xlat42 = (-(x_221) + x_224);
  let x_226 : f32 = u_xlat42;
  u_xlat42 = (x_226 * 0.050000001f);
  let x_229 : f32 = u_xlat42;
  u_xlat42 = clamp(x_229, 0.0f, 1.0f);
  let x_232 : f32 = u_xlat42;
  u_xlat43 = ((x_232 * -2.0f) + 3.0f);
  let x_237 : f32 = u_xlat42;
  let x_238 : f32 = u_xlat42;
  u_xlat42 = (x_237 * x_238);
  let x_240 : f32 = u_xlat42;
  let x_241 : f32 = u_xlat43;
  u_xlat42 = (x_240 * x_241);
  let x_249 : vec4<f32> = vs_INTERP3;
  let x_252 : f32 = x_146.x_GlobalMipBias.x;
  let x_253 : vec4<f32> = textureSampleBias(Texture2D_DE8BF47E, samplerTexture2D_DE8BF47E, vec2<f32>(x_249.x, x_249.y), x_252);
  u_xlat7 = x_253;
  let x_255 : vec4<f32> = u_xlat7;
  u_xlat20 = ((vec3<f32>(x_255.w, x_255.y, x_255.z) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_262 : vec3<f32> = u_xlat3;
  let x_263 : vec3<f32> = u_xlat20;
  u_xlat3 = (x_262 * vec3<f32>(x_263.y, x_263.y, x_263.y));
  let x_266 : vec3<f32> = u_xlat20;
  let x_268 : vec3<f32> = u_xlat2;
  let x_270 : vec3<f32> = u_xlat3;
  u_xlat2 = ((vec3<f32>(x_266.x, x_266.x, x_266.x) * x_268) + x_270);
  let x_272 : vec3<f32> = u_xlat20;
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
  let x_302 : f32 = u_xlat42;
  let x_304 : f32 = u_xlat1.x;
  let x_306 : f32 = u_xlat41;
  u_xlat1.x = ((x_302 * x_304) + -(x_306));
  let x_311 : f32 = u_xlat1.x;
  u_xlat1.x = (x_311 * 10.0f);
  let x_316 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_316, 0.0f, 1.0f);
  let x_321 : f32 = u_xlat1.x;
  u_xlat14.x = ((x_321 * -2.0f) + 3.0f);
  let x_326 : f32 = u_xlat1.x;
  let x_328 : f32 = u_xlat1.x;
  u_xlat1.x = (x_326 * x_328);
  let x_332 : f32 = u_xlat1.x;
  let x_334 : f32 = u_xlat14.x;
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
  u_xlat17 = vec3<f32>(x_375.x, x_375.y, x_375.w);
  let x_378 : f32 = u_xlat17.x;
  let x_380 : f32 = u_xlat17.z;
  u_xlat17.x = (x_378 * x_380);
  let x_383 : vec3<f32> = u_xlat17;
  let x_388 : vec2<f32> = ((vec2<f32>(x_383.x, x_383.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_389 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_388.x, x_388.y, x_389.z);
  let x_391 : vec3<f32> = u_xlat5;
  let x_393 : vec3<f32> = u_xlat5;
  u_xlat14.x = dot(vec2<f32>(x_391.x, x_391.y), vec2<f32>(x_393.x, x_393.y));
  let x_398 : f32 = u_xlat14.x;
  u_xlat14.x = min(x_398, 1.0f);
  let x_402 : f32 = u_xlat14.x;
  u_xlat14.x = (-(x_402) + 1.0f);
  let x_407 : f32 = u_xlat14.x;
  u_xlat14.x = sqrt(x_407);
  let x_411 : f32 = u_xlat14.x;
  u_xlat5.z = max(x_411, 1.00000002e-16f);
  let x_418 : vec4<f32> = x_59.unity_ObjectToWorld[0i];
  let x_421 : vec4<f32> = x_59.unity_ObjectToWorld[0i];
  u_xlat14.x = dot(vec3<f32>(x_418.x, x_418.y, x_418.z), vec3<f32>(x_421.x, x_421.y, x_421.z));
  let x_426 : f32 = u_xlat14.x;
  u_xlat6.x = sqrt(x_426);
  let x_430 : vec4<f32> = x_59.unity_ObjectToWorld[1i];
  let x_433 : vec4<f32> = x_59.unity_ObjectToWorld[1i];
  u_xlat14.x = dot(vec3<f32>(x_430.x, x_430.y, x_430.z), vec3<f32>(x_433.x, x_433.y, x_433.z));
  let x_438 : f32 = u_xlat14.x;
  u_xlat6.y = sqrt(x_438);
  let x_443 : vec4<f32> = x_59.unity_ObjectToWorld[2i];
  let x_446 : vec4<f32> = x_59.unity_ObjectToWorld[2i];
  u_xlat14.x = dot(vec3<f32>(x_443.x, x_443.y, x_443.z), vec3<f32>(x_446.x, x_446.y, x_446.z));
  let x_451 : f32 = u_xlat14.x;
  u_xlat6.z = sqrt(x_451);
  let x_454 : vec4<f32> = u_xlat6;
  let x_456 : vec4<f32> = u_xlat6;
  u_xlat14.x = dot(vec3<f32>(x_454.x, x_454.y, x_454.z), vec3<f32>(x_456.x, x_456.y, x_456.z));
  let x_461 : f32 = u_xlat14.x;
  u_xlat14.x = sqrt(x_461);
  let x_465 : f32 = u_xlat14.x;
  let x_468 : f32 = x_206.Vector1_90E376AD;
  u_xlat14.x = (x_465 * x_468);
  let x_472 : f32 = u_xlat14.x;
  u_xlat14.x = (x_472 * 30.0f);
  let x_476 : vec3<f32> = u_xlat14;
  let x_478 : vec4<f32> = vs_INTERP3;
  let x_480 : vec2<f32> = (vec2<f32>(x_476.x, x_476.x) * vec2<f32>(x_478.x, x_478.y));
  let x_481 : vec3<f32> = u_xlat14;
  u_xlat14 = vec3<f32>(x_480.x, x_480.y, x_481.z);
  let x_488 : vec3<f32> = u_xlat14;
  let x_491 : f32 = x_146.x_GlobalMipBias.x;
  let x_492 : vec4<f32> = textureSampleBias(x_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1, sampler_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1, vec2<f32>(x_488.x, x_488.y), x_491);
  u_xlat17 = vec3<f32>(x_492.x, x_492.y, x_492.w);
  let x_495 : f32 = u_xlat17.x;
  let x_497 : f32 = u_xlat17.z;
  u_xlat17.x = (x_495 * x_497);
  let x_500 : vec3<f32> = u_xlat17;
  let x_503 : vec2<f32> = ((vec2<f32>(x_500.x, x_500.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_504 : vec3<f32> = u_xlat14;
  u_xlat14 = vec3<f32>(x_503.x, x_503.y, x_504.z);
  let x_506 : vec3<f32> = u_xlat14;
  let x_508 : vec3<f32> = u_xlat14;
  u_xlat41 = dot(vec2<f32>(x_506.x, x_506.y), vec2<f32>(x_508.x, x_508.y));
  let x_511 : f32 = u_xlat41;
  u_xlat41 = min(x_511, 1.0f);
  let x_513 : f32 = u_xlat41;
  u_xlat41 = (-(x_513) + 1.0f);
  let x_516 : f32 = u_xlat41;
  u_xlat41 = sqrt(x_516);
  let x_518 : f32 = u_xlat41;
  u_xlat41 = max(x_518, 1.00000002e-16f);
  let x_520 : vec3<f32> = u_xlat14;
  let x_522 : vec3<f32> = u_xlat20;
  let x_524 : vec2<f32> = (vec2<f32>(x_520.x, x_520.y) + vec2<f32>(x_522.x, x_522.y));
  let x_525 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_524.x, x_524.y, x_525.z, x_525.w);
  let x_527 : f32 = u_xlat41;
  let x_529 : f32 = u_xlat20.z;
  u_xlat6.z = (x_527 * x_529);
  let x_532 : vec4<f32> = u_xlat6;
  let x_534 : vec4<f32> = u_xlat6;
  u_xlat14.x = dot(vec3<f32>(x_532.x, x_532.y, x_532.z), vec3<f32>(x_534.x, x_534.y, x_534.z));
  let x_539 : f32 = u_xlat14.x;
  u_xlat14.x = max(x_539, 1.17549435e-37f);
  let x_543 : f32 = u_xlat14.x;
  u_xlat14.x = inverseSqrt(x_543);
  let x_546 : vec4<f32> = u_xlat6;
  let x_548 : vec3<f32> = u_xlat14;
  let x_551 : vec3<f32> = u_xlat5;
  u_xlat17 = ((vec3<f32>(x_546.x, x_546.y, x_546.z) * vec3<f32>(x_548.x, x_548.x, x_548.x)) + -(x_551));
  let x_554 : vec4<f32> = u_xlat1;
  let x_556 : vec3<f32> = u_xlat17;
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
  u_xlat13 = ((vec3<f32>(x_598.y, x_598.y, x_598.y) * vec3<f32>(x_600.x, x_600.y, x_600.z)) + vec3<f32>(x_603.y, x_603.z, x_603.w));
  let x_606 : vec4<f32> = u_xlat4;
  let x_608 : vec3<f32> = vs_INTERP1;
  let x_610 : vec3<f32> = u_xlat13;
  u_xlat13 = ((vec3<f32>(x_606.w, x_606.w, x_606.w) * x_608) + x_610);
  let x_612 : vec3<f32> = u_xlat13;
  let x_613 : vec3<f32> = u_xlat13;
  u_xlat1.x = dot(x_612, x_613);
  let x_617 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_617);
  let x_620 : vec3<f32> = u_xlat13;
  let x_621 : vec4<f32> = u_xlat1;
  u_xlat13 = (x_620 * vec3<f32>(x_621.x, x_621.x, x_621.x));
  let x_627 : f32 = x_146.unity_OrthoParams.w;
  u_xlatb1 = (x_627 == 0.0f);
  let x_629 : vec3<f32> = vs_INTERP0;
  let x_633 : vec3<f32> = x_146.x_WorldSpaceCameraPos;
  let x_634 : vec3<f32> = (-(x_629) + x_633);
  let x_635 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_634.x, x_634.y, x_634.z, x_635.w);
  let x_637 : vec4<f32> = u_xlat4;
  let x_639 : vec4<f32> = u_xlat4;
  u_xlat14.x = dot(vec3<f32>(x_637.x, x_637.y, x_637.z), vec3<f32>(x_639.x, x_639.y, x_639.z));
  let x_644 : f32 = u_xlat14.x;
  u_xlat14.x = inverseSqrt(x_644);
  let x_647 : vec3<f32> = u_xlat14;
  let x_649 : vec4<f32> = u_xlat4;
  let x_651 : vec3<f32> = (vec3<f32>(x_647.x, x_647.x, x_647.x) * vec3<f32>(x_649.x, x_649.y, x_649.z));
  let x_652 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_651.x, x_651.y, x_651.z, x_652.w);
  let x_654 : bool = u_xlatb1;
  if (x_654) {
    let x_659 : f32 = u_xlat4.x;
    x_655 = x_659;
  } else {
    let x_663 : f32 = x_146.unity_MatrixV[0i].z;
    x_655 = x_663;
  }
  let x_664 : f32 = x_655;
  u_xlat5.x = x_664;
  let x_666 : bool = u_xlatb1;
  if (x_666) {
    let x_671 : f32 = u_xlat4.y;
    x_667 = x_671;
  } else {
    let x_674 : f32 = x_146.unity_MatrixV[1i].z;
    x_667 = x_674;
  }
  let x_675 : f32 = x_667;
  u_xlat5.y = x_675;
  let x_677 : bool = u_xlatb1;
  if (x_677) {
    let x_682 : f32 = u_xlat4.z;
    x_678 = x_682;
  } else {
    let x_685 : f32 = x_146.unity_MatrixV[2i].z;
    x_678 = x_685;
  }
  let x_686 : f32 = x_678;
  u_xlat5.z = x_686;
  let x_688 : vec3<f32> = vs_INTERP0;
  let x_695 : vec4<f32> = x_693.x_CascadeShadowSplitSpheres0;
  let x_698 : vec3<f32> = (x_688 + -(vec3<f32>(x_695.x, x_695.y, x_695.z)));
  let x_699 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_698.x, x_698.y, x_698.z, x_699.w);
  let x_701 : vec3<f32> = vs_INTERP0;
  let x_703 : vec4<f32> = x_693.x_CascadeShadowSplitSpheres1;
  let x_706 : vec3<f32> = (x_701 + -(vec3<f32>(x_703.x, x_703.y, x_703.z)));
  let x_707 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_706.x, x_706.y, x_706.z, x_707.w);
  let x_709 : vec3<f32> = vs_INTERP0;
  let x_711 : vec4<f32> = x_693.x_CascadeShadowSplitSpheres2;
  let x_714 : vec3<f32> = (x_709 + -(vec3<f32>(x_711.x, x_711.y, x_711.z)));
  let x_715 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_714.x, x_714.y, x_714.z, x_715.w);
  let x_717 : vec3<f32> = vs_INTERP0;
  let x_719 : vec4<f32> = x_693.x_CascadeShadowSplitSpheres3;
  u_xlat20 = (x_717 + -(vec3<f32>(x_719.x, x_719.y, x_719.z)));
  let x_724 : vec4<f32> = u_xlat1;
  let x_726 : vec4<f32> = u_xlat1;
  u_xlat8.x = dot(vec3<f32>(x_724.x, x_724.y, x_724.z), vec3<f32>(x_726.x, x_726.y, x_726.z));
  let x_730 : vec4<f32> = u_xlat4;
  let x_732 : vec4<f32> = u_xlat4;
  u_xlat8.y = dot(vec3<f32>(x_730.x, x_730.y, x_730.z), vec3<f32>(x_732.x, x_732.y, x_732.z));
  let x_736 : vec4<f32> = u_xlat6;
  let x_738 : vec4<f32> = u_xlat6;
  u_xlat8.z = dot(vec3<f32>(x_736.x, x_736.y, x_736.z), vec3<f32>(x_738.x, x_738.y, x_738.z));
  let x_742 : vec3<f32> = u_xlat20;
  let x_743 : vec3<f32> = u_xlat20;
  u_xlat8.w = dot(x_742, x_743);
  let x_749 : vec4<f32> = u_xlat8;
  let x_751 : vec4<f32> = x_693.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_749 < x_751);
  let x_754 : bool = u_xlatb4.x;
  u_xlat6.x = select(0.0f, 1.0f, x_754);
  let x_758 : bool = u_xlatb4.y;
  u_xlat6.y = select(0.0f, 1.0f, x_758);
  let x_762 : bool = u_xlatb4.z;
  u_xlat6.z = select(0.0f, 1.0f, x_762);
  let x_766 : bool = u_xlatb4.w;
  u_xlat6.w = select(0.0f, 1.0f, x_766);
  let x_770 : bool = u_xlatb4.x;
  u_xlat1.x = select(-0.0f, -1.0f, x_770);
  let x_775 : bool = u_xlatb4.y;
  u_xlat1.y = select(-0.0f, -1.0f, x_775);
  let x_779 : bool = u_xlatb4.z;
  u_xlat1.z = select(-0.0f, -1.0f, x_779);
  let x_782 : vec4<f32> = u_xlat1;
  let x_784 : vec4<f32> = u_xlat6;
  let x_786 : vec3<f32> = (vec3<f32>(x_782.x, x_782.y, x_782.z) + vec3<f32>(x_784.y, x_784.z, x_784.w));
  let x_787 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_786.x, x_786.y, x_786.z, x_787.w);
  let x_789 : vec4<f32> = u_xlat1;
  let x_792 : vec3<f32> = max(vec3<f32>(x_789.x, x_789.y, x_789.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_793 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_793.x, x_792.x, x_792.y, x_792.z);
  let x_795 : vec4<f32> = u_xlat6;
  u_xlat1.x = dot(x_795, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_800 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_800) + 4.0f);
  let x_807 : f32 = u_xlat1.x;
  u_xlatu1 = u32(x_807);
  let x_811 : u32 = u_xlatu1;
  u_xlati1 = (bitcast<i32>(x_811) << bitcast<u32>(2i));
  let x_814 : vec3<f32> = vs_INTERP0;
  let x_816 : i32 = u_xlati1;
  let x_819 : i32 = u_xlati1;
  let x_823 : vec4<f32> = x_693.x_MainLightWorldToShadow[((x_816 + 1i) / 4i)][((x_819 + 1i) % 4i)];
  let x_825 : vec3<f32> = (vec3<f32>(x_814.y, x_814.y, x_814.y) * vec3<f32>(x_823.x, x_823.y, x_823.z));
  let x_826 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_825.x, x_825.y, x_825.z, x_826.w);
  let x_828 : i32 = u_xlati1;
  let x_830 : i32 = u_xlati1;
  let x_833 : vec4<f32> = x_693.x_MainLightWorldToShadow[(x_828 / 4i)][(x_830 % 4i)];
  let x_835 : vec3<f32> = vs_INTERP0;
  let x_838 : vec4<f32> = u_xlat4;
  let x_840 : vec3<f32> = ((vec3<f32>(x_833.x, x_833.y, x_833.z) * vec3<f32>(x_835.x, x_835.x, x_835.x)) + vec3<f32>(x_838.x, x_838.y, x_838.z));
  let x_841 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_840.x, x_840.y, x_840.z, x_841.w);
  let x_843 : i32 = u_xlati1;
  let x_846 : i32 = u_xlati1;
  let x_850 : vec4<f32> = x_693.x_MainLightWorldToShadow[((x_843 + 2i) / 4i)][((x_846 + 2i) % 4i)];
  let x_852 : vec3<f32> = vs_INTERP0;
  let x_855 : vec4<f32> = u_xlat4;
  let x_857 : vec3<f32> = ((vec3<f32>(x_850.x, x_850.y, x_850.z) * vec3<f32>(x_852.z, x_852.z, x_852.z)) + vec3<f32>(x_855.x, x_855.y, x_855.z));
  let x_858 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_857.x, x_857.y, x_857.z, x_858.w);
  let x_860 : vec4<f32> = u_xlat4;
  let x_862 : i32 = u_xlati1;
  let x_865 : i32 = u_xlati1;
  let x_869 : vec4<f32> = x_693.x_MainLightWorldToShadow[((x_862 + 3i) / 4i)][((x_865 + 3i) % 4i)];
  let x_871 : vec3<f32> = (vec3<f32>(x_860.x, x_860.y, x_860.z) + vec3<f32>(x_869.x, x_869.y, x_869.z));
  let x_872 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_871.x, x_871.y, x_871.z, x_872.w);
  let x_881 : vec2<f32> = vs_INTERP4;
  let x_883 : f32 = x_146.x_GlobalMipBias.x;
  let x_884 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_881, x_883);
  u_xlat4 = x_884;
  let x_889 : vec2<f32> = vs_INTERP4;
  let x_891 : f32 = x_146.x_GlobalMipBias.x;
  let x_892 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_889, x_891);
  let x_893 : vec3<f32> = vec3<f32>(x_892.x, x_892.y, x_892.z);
  let x_894 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_893.x, x_893.y, x_893.z, x_894.w);
  let x_896 : vec4<f32> = u_xlat4;
  let x_899 : vec3<f32> = (vec3<f32>(x_896.x, x_896.y, x_896.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_900 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_899.x, x_899.y, x_899.z, x_900.w);
  let x_902 : vec3<f32> = u_xlat13;
  let x_903 : vec4<f32> = u_xlat4;
  u_xlat41 = dot(x_902, vec3<f32>(x_903.x, x_903.y, x_903.z));
  let x_906 : f32 = u_xlat41;
  u_xlat41 = (x_906 + 0.5f);
  let x_909 : f32 = u_xlat41;
  let x_911 : vec4<f32> = u_xlat6;
  let x_913 : vec3<f32> = (vec3<f32>(x_909, x_909, x_909) * vec3<f32>(x_911.x, x_911.y, x_911.z));
  let x_914 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_913.x, x_913.y, x_913.z, x_914.w);
  let x_917 : f32 = u_xlat4.w;
  u_xlat41 = max(x_917, 0.0001f);
  let x_920 : vec4<f32> = u_xlat4;
  let x_922 : f32 = u_xlat41;
  let x_924 : vec3<f32> = (vec3<f32>(x_920.x, x_920.y, x_920.z) / vec3<f32>(x_922, x_922, x_922));
  let x_925 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_924.x, x_924.y, x_924.z, x_925.w);
  let x_928 : vec4<f32> = x_146.x_ScaledScreenParams;
  let x_929 : vec2<f32> = vec2<f32>(x_928.x, x_928.y);
  let x_933 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_929.x, x_929.y));
  let x_934 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_933.x, x_933.y, x_934.z, x_934.w);
  let x_936 : vec4<f32> = u_xlat6;
  let x_938 : vec4<f32> = hlslcc_FragCoord;
  let x_940 : vec2<f32> = (vec2<f32>(x_936.x, x_936.y) * vec2<f32>(x_938.x, x_938.y));
  let x_941 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_940.x, x_940.y, x_941.z, x_941.w);
  let x_944 : f32 = u_xlat6.y;
  let x_947 : f32 = x_146.x_ScaleBiasRt.x;
  let x_950 : f32 = x_146.x_ScaleBiasRt.y;
  u_xlat41 = ((x_944 * x_947) + x_950);
  let x_952 : f32 = u_xlat41;
  u_xlat6.z = (-(x_952) + 1.0f);
  let x_956 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_956 * vec3<f32>(0.863999963f, 0.863999963f, 0.863999963f));
  let x_960 : vec4<f32> = u_xlat1;
  let x_962 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_960.w, x_960.w, x_960.w) * x_962) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_967 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_967 * vec3<f32>(0.100000001f, 0.100000001f, 0.100000001f)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_974 : f32 = u_xlat0.x;
  u_xlat14.z = (-(x_974) + 1.0f);
  let x_979 : f32 = u_xlat14.z;
  let x_981 : f32 = u_xlat14.z;
  u_xlat41 = (x_979 * x_981);
  let x_983 : f32 = u_xlat41;
  u_xlat41 = max(x_983, 0.0078125f);
  let x_986 : f32 = u_xlat41;
  let x_987 : f32 = u_xlat41;
  u_xlat42 = (x_986 * x_987);
  let x_990 : f32 = u_xlat0.x;
  u_xlat0.x = (x_990 + 0.136000037f);
  let x_995 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_995, 1.0f);
  let x_998 : f32 = u_xlat41;
  u_xlat43 = ((x_998 * 4.0f) + 2.0f);
  let x_1007 : vec4<f32> = u_xlat6;
  let x_1010 : f32 = x_146.x_GlobalMipBias.x;
  let x_1011 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_1007.x, x_1007.z), x_1010);
  u_xlat44 = x_1011.x;
  let x_1013 : f32 = u_xlat44;
  u_xlat6.x = (x_1013 + -1.0f);
  let x_1017 : f32 = x_146.x_AmbientOcclusionParam.w;
  let x_1019 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_1017 * x_1019) + 1.0f);
  let x_1024 : f32 = u_xlat7.x;
  let x_1025 : f32 = u_xlat44;
  u_xlat44 = min(x_1024, x_1025);
  let x_1028 : vec4<f32> = u_xlat1;
  let x_1029 : vec2<f32> = vec2<f32>(x_1028.x, x_1028.y);
  let x_1031 : f32 = u_xlat1.z;
  txVec0 = vec3<f32>(x_1029.x, x_1029.y, x_1031);
  let x_1043 : vec3<f32> = txVec0;
  let x_1045 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1043.xy, x_1043.z);
  u_xlat1.x = x_1045;
  let x_1048 : f32 = x_693.x_MainLightShadowParams.x;
  u_xlat14.x = (-(x_1048) + 1.0f);
  let x_1053 : f32 = u_xlat1.x;
  let x_1055 : f32 = x_693.x_MainLightShadowParams.x;
  let x_1058 : f32 = u_xlat14.x;
  u_xlat1.x = ((x_1053 * x_1055) + x_1058);
  let x_1063 : f32 = u_xlat1.z;
  u_xlatb14.x = (0.0f >= x_1063);
  let x_1068 : f32 = u_xlat1.z;
  u_xlatb27 = (x_1068 >= 1.0f);
  let x_1070 : bool = u_xlatb27;
  let x_1072 : bool = u_xlatb14.x;
  u_xlatb14.x = (x_1070 | x_1072);
  let x_1076 : bool = u_xlatb14.x;
  if (x_1076) {
    x_1077 = 1.0f;
  } else {
    let x_1082 : f32 = u_xlat1.x;
    x_1077 = x_1082;
  }
  let x_1083 : f32 = x_1077;
  u_xlat1.x = x_1083;
  let x_1086 : vec3<f32> = vs_INTERP0;
  let x_1088 : vec3<f32> = x_146.x_WorldSpaceCameraPos;
  u_xlat19 = (x_1086 + -(x_1088));
  let x_1091 : vec3<f32> = u_xlat19;
  let x_1092 : vec3<f32> = u_xlat19;
  u_xlat14.x = dot(x_1091, x_1092);
  let x_1096 : f32 = u_xlat14.x;
  let x_1098 : f32 = x_693.x_MainLightShadowParams.z;
  let x_1101 : f32 = x_693.x_MainLightShadowParams.w;
  u_xlat14.x = ((x_1096 * x_1098) + x_1101);
  let x_1105 : f32 = u_xlat14.x;
  u_xlat14.x = clamp(x_1105, 0.0f, 1.0f);
  let x_1111 : f32 = u_xlat1.x;
  u_xlat27.x = (-(x_1111) + 1.0f);
  let x_1116 : f32 = u_xlat14.x;
  let x_1118 : f32 = u_xlat27.x;
  let x_1121 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1116 * x_1118) + x_1121);
  let x_1130 : f32 = x_1128.x_MainLightCookieTextureFormat;
  u_xlatb14.x = !((x_1130 == -1.0f));
  let x_1134 : bool = u_xlatb14.x;
  if (x_1134) {
    let x_1137 : vec3<f32> = vs_INTERP0;
    let x_1140 : vec4<f32> = x_1128.x_MainLightWorldToLight[1i];
    let x_1142 : vec2<f32> = (vec2<f32>(x_1137.y, x_1137.y) * vec2<f32>(x_1140.x, x_1140.y));
    let x_1143 : vec3<f32> = u_xlat14;
    u_xlat14 = vec3<f32>(x_1142.x, x_1142.y, x_1143.z);
    let x_1146 : vec4<f32> = x_1128.x_MainLightWorldToLight[0i];
    let x_1148 : vec3<f32> = vs_INTERP0;
    let x_1151 : vec3<f32> = u_xlat14;
    let x_1153 : vec2<f32> = ((vec2<f32>(x_1146.x, x_1146.y) * vec2<f32>(x_1148.x, x_1148.x)) + vec2<f32>(x_1151.x, x_1151.y));
    let x_1154 : vec3<f32> = u_xlat14;
    u_xlat14 = vec3<f32>(x_1153.x, x_1153.y, x_1154.z);
    let x_1157 : vec4<f32> = x_1128.x_MainLightWorldToLight[2i];
    let x_1159 : vec3<f32> = vs_INTERP0;
    let x_1162 : vec3<f32> = u_xlat14;
    let x_1164 : vec2<f32> = ((vec2<f32>(x_1157.x, x_1157.y) * vec2<f32>(x_1159.z, x_1159.z)) + vec2<f32>(x_1162.x, x_1162.y));
    let x_1165 : vec3<f32> = u_xlat14;
    u_xlat14 = vec3<f32>(x_1164.x, x_1164.y, x_1165.z);
    let x_1167 : vec3<f32> = u_xlat14;
    let x_1170 : vec4<f32> = x_1128.x_MainLightWorldToLight[3i];
    let x_1172 : vec2<f32> = (vec2<f32>(x_1167.x, x_1167.y) + vec2<f32>(x_1170.x, x_1170.y));
    let x_1173 : vec3<f32> = u_xlat14;
    u_xlat14 = vec3<f32>(x_1172.x, x_1172.y, x_1173.z);
    let x_1175 : vec3<f32> = u_xlat14;
    let x_1179 : vec2<f32> = ((vec2<f32>(x_1175.x, x_1175.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1180 : vec3<f32> = u_xlat14;
    u_xlat14 = vec3<f32>(x_1179.x, x_1179.y, x_1180.z);
    let x_1187 : vec3<f32> = u_xlat14;
    let x_1190 : f32 = x_146.x_GlobalMipBias.x;
    let x_1191 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1187.x, x_1187.y), x_1190);
    u_xlat7 = x_1191;
    let x_1193 : f32 = x_1128.x_MainLightCookieTextureFormat;
    let x_1195 : f32 = x_1128.x_MainLightCookieTextureFormat;
    let x_1197 : f32 = x_1128.x_MainLightCookieTextureFormat;
    let x_1199 : f32 = x_1128.x_MainLightCookieTextureFormat;
    let x_1200 : vec4<f32> = vec4<f32>(x_1193, x_1195, x_1197, x_1199);
    let x_1207 : vec4<bool> = (vec4<f32>(x_1200.x, x_1200.y, x_1200.z, x_1200.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb14 = vec2<bool>(x_1207.x, x_1207.y);
    let x_1210 : bool = u_xlatb14.y;
    if (x_1210) {
      let x_1215 : f32 = u_xlat7.w;
      x_1211 = x_1215;
    } else {
      let x_1218 : f32 = u_xlat7.x;
      x_1211 = x_1218;
    }
    let x_1219 : f32 = x_1211;
    u_xlat27.x = x_1219;
    let x_1222 : bool = u_xlatb14.x;
    if (x_1222) {
      let x_1226 : vec4<f32> = u_xlat7;
      x_1223 = vec3<f32>(x_1226.x, x_1226.y, x_1226.z);
    } else {
      let x_1229 : vec2<f32> = u_xlat27;
      x_1223 = vec3<f32>(x_1229.x, x_1229.x, x_1229.x);
    }
    let x_1231 : vec3<f32> = x_1223;
    u_xlat19 = x_1231;
  } else {
    u_xlat19.x = 1.0f;
    u_xlat19.y = 1.0f;
    u_xlat19.z = 1.0f;
  }
  let x_1236 : vec3<f32> = u_xlat19;
  let x_1238 : vec4<f32> = x_146.x_MainLightColor;
  u_xlat19 = (x_1236 * vec3<f32>(x_1238.x, x_1238.y, x_1238.z));
  let x_1241 : vec4<f32> = u_xlat6;
  let x_1243 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_1241.x, x_1241.x, x_1241.x) * x_1243);
  let x_1245 : vec3<f32> = u_xlat5;
  let x_1247 : vec3<f32> = u_xlat13;
  u_xlat14.x = dot(-(x_1245), x_1247);
  let x_1251 : f32 = u_xlat14.x;
  let x_1253 : f32 = u_xlat14.x;
  u_xlat14.x = (x_1251 + x_1253);
  let x_1256 : vec3<f32> = u_xlat13;
  let x_1257 : vec3<f32> = u_xlat14;
  let x_1261 : vec3<f32> = u_xlat5;
  let x_1263 : vec3<f32> = ((x_1256 * -(vec3<f32>(x_1257.x, x_1257.x, x_1257.x))) + -(x_1261));
  let x_1264 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1263.x, x_1263.y, x_1263.z, x_1264.w);
  let x_1266 : vec3<f32> = u_xlat13;
  let x_1267 : vec3<f32> = u_xlat5;
  u_xlat14.x = dot(x_1266, x_1267);
  let x_1271 : f32 = u_xlat14.x;
  u_xlat14.x = clamp(x_1271, 0.0f, 1.0f);
  let x_1275 : f32 = u_xlat14.x;
  u_xlat14.x = (-(x_1275) + 1.0f);
  let x_1280 : f32 = u_xlat14.x;
  let x_1282 : f32 = u_xlat14.x;
  u_xlat14.x = (x_1280 * x_1282);
  let x_1286 : f32 = u_xlat14.z;
  u_xlat14.y = ((-(x_1286) * 0.699999988f) + 1.700000048f);
  let x_1293 : vec3<f32> = u_xlat14;
  let x_1295 : vec3<f32> = u_xlat14;
  let x_1297 : vec2<f32> = (vec2<f32>(x_1293.x, x_1293.y) * vec2<f32>(x_1295.x, x_1295.z));
  let x_1298 : vec3<f32> = u_xlat14;
  u_xlat14 = vec3<f32>(x_1297.x, x_1297.y, x_1298.z);
  let x_1301 : f32 = u_xlat14.y;
  u_xlat27.x = (x_1301 * 6.0f);
  let x_1313 : vec4<f32> = u_xlat7;
  let x_1316 : f32 = u_xlat27.x;
  let x_1317 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1313.x, x_1313.y, x_1313.z), x_1316);
  u_xlat7 = x_1317;
  let x_1319 : f32 = u_xlat7.w;
  u_xlat27.x = (x_1319 + -1.0f);
  let x_1323 : f32 = x_59.unity_SpecCube0_HDR.w;
  let x_1325 : f32 = u_xlat27.x;
  u_xlat27.x = ((x_1323 * x_1325) + 1.0f);
  let x_1330 : f32 = u_xlat27.x;
  u_xlat27.x = max(x_1330, 0.0f);
  let x_1334 : f32 = u_xlat27.x;
  u_xlat27.x = log2(x_1334);
  let x_1338 : f32 = u_xlat27.x;
  let x_1340 : f32 = x_59.unity_SpecCube0_HDR.y;
  u_xlat27.x = (x_1338 * x_1340);
  let x_1344 : f32 = u_xlat27.x;
  u_xlat27.x = exp2(x_1344);
  let x_1348 : f32 = u_xlat27.x;
  let x_1350 : f32 = x_59.unity_SpecCube0_HDR.x;
  u_xlat27.x = (x_1348 * x_1350);
  let x_1353 : vec4<f32> = u_xlat7;
  let x_1355 : vec2<f32> = u_xlat27;
  let x_1357 : vec3<f32> = (vec3<f32>(x_1353.x, x_1353.y, x_1353.z) * vec3<f32>(x_1355.x, x_1355.x, x_1355.x));
  let x_1358 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1357.x, x_1357.y, x_1357.z, x_1358.w);
  let x_1360 : f32 = u_xlat41;
  let x_1362 : f32 = u_xlat41;
  u_xlat27 = ((vec2<f32>(x_1360, x_1360) * vec2<f32>(x_1362, x_1362)) + vec2<f32>(-1.0f, 1.0f));
  let x_1368 : f32 = u_xlat27.y;
  u_xlat40 = (1.0f / x_1368);
  let x_1370 : vec3<f32> = u_xlat2;
  let x_1372 : vec4<f32> = u_xlat0;
  let x_1374 : vec3<f32> = (-(x_1370) + vec3<f32>(x_1372.x, x_1372.x, x_1372.x));
  let x_1375 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1374.x, x_1374.y, x_1374.z, x_1375.w);
  let x_1377 : vec3<f32> = u_xlat14;
  let x_1379 : vec4<f32> = u_xlat8;
  let x_1382 : vec3<f32> = u_xlat2;
  let x_1383 : vec3<f32> = ((vec3<f32>(x_1377.x, x_1377.x, x_1377.x) * vec3<f32>(x_1379.x, x_1379.y, x_1379.z)) + x_1382);
  let x_1384 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1383.x, x_1383.y, x_1383.z, x_1384.w);
  let x_1386 : f32 = u_xlat40;
  let x_1388 : vec4<f32> = u_xlat8;
  let x_1390 : vec3<f32> = (vec3<f32>(x_1386, x_1386, x_1386) * vec3<f32>(x_1388.x, x_1388.y, x_1388.z));
  let x_1391 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1390.x, x_1390.y, x_1390.z, x_1391.w);
  let x_1393 : vec4<f32> = u_xlat7;
  let x_1395 : vec4<f32> = u_xlat8;
  let x_1397 : vec3<f32> = (vec3<f32>(x_1393.x, x_1393.y, x_1393.z) * vec3<f32>(x_1395.x, x_1395.y, x_1395.z));
  let x_1398 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1397.x, x_1397.y, x_1397.z, x_1398.w);
  let x_1400 : vec4<f32> = u_xlat4;
  let x_1402 : vec3<f32> = u_xlat3;
  let x_1404 : vec4<f32> = u_xlat7;
  let x_1406 : vec3<f32> = ((vec3<f32>(x_1400.x, x_1400.y, x_1400.z) * x_1402) + vec3<f32>(x_1404.x, x_1404.y, x_1404.z));
  let x_1407 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1406.x, x_1406.y, x_1406.z, x_1407.w);
  let x_1410 : f32 = u_xlat1.x;
  let x_1412 : f32 = x_59.unity_LightData.z;
  u_xlat0.x = (x_1410 * x_1412);
  let x_1415 : vec3<f32> = u_xlat13;
  let x_1417 : vec4<f32> = x_146.x_MainLightPosition;
  u_xlat1.x = dot(x_1415, vec3<f32>(x_1417.x, x_1417.y, x_1417.z));
  let x_1422 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1422, 0.0f, 1.0f);
  let x_1426 : f32 = u_xlat0.x;
  let x_1428 : f32 = u_xlat1.x;
  u_xlat0.x = (x_1426 * x_1428);
  let x_1431 : vec4<f32> = u_xlat0;
  let x_1433 : vec3<f32> = u_xlat19;
  let x_1434 : vec3<f32> = (vec3<f32>(x_1431.x, x_1431.x, x_1431.x) * x_1433);
  let x_1435 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1434.x, x_1434.y, x_1435.z, x_1434.z);
  let x_1437 : vec3<f32> = u_xlat5;
  let x_1439 : vec4<f32> = x_146.x_MainLightPosition;
  u_xlat19 = (x_1437 + vec3<f32>(x_1439.x, x_1439.y, x_1439.z));
  let x_1442 : vec3<f32> = u_xlat19;
  let x_1443 : vec3<f32> = u_xlat19;
  u_xlat0.x = dot(x_1442, x_1443);
  let x_1447 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1447, 1.17549435e-37f);
  let x_1451 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_1451);
  let x_1454 : vec4<f32> = u_xlat0;
  let x_1456 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_1454.x, x_1454.x, x_1454.x) * x_1456);
  let x_1458 : vec3<f32> = u_xlat13;
  let x_1459 : vec3<f32> = u_xlat19;
  u_xlat0.x = dot(x_1458, x_1459);
  let x_1463 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1463, 0.0f, 1.0f);
  let x_1467 : vec4<f32> = x_146.x_MainLightPosition;
  let x_1469 : vec3<f32> = u_xlat19;
  u_xlat41 = dot(vec3<f32>(x_1467.x, x_1467.y, x_1467.z), x_1469);
  let x_1471 : f32 = u_xlat41;
  u_xlat41 = clamp(x_1471, 0.0f, 1.0f);
  let x_1474 : f32 = u_xlat0.x;
  let x_1476 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1474 * x_1476);
  let x_1480 : f32 = u_xlat0.x;
  let x_1482 : f32 = u_xlat27.x;
  u_xlat0.x = ((x_1480 * x_1482) + 1.000010014f);
  let x_1487 : f32 = u_xlat41;
  let x_1488 : f32 = u_xlat41;
  u_xlat41 = (x_1487 * x_1488);
  let x_1491 : f32 = u_xlat0.x;
  let x_1493 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1491 * x_1493);
  let x_1496 : f32 = u_xlat41;
  u_xlat41 = max(x_1496, 0.100000001f);
  let x_1499 : f32 = u_xlat0.x;
  let x_1500 : f32 = u_xlat41;
  u_xlat0.x = (x_1499 * x_1500);
  let x_1503 : f32 = u_xlat43;
  let x_1505 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1503 * x_1505);
  let x_1508 : f32 = u_xlat42;
  let x_1510 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1508 / x_1510);
  let x_1513 : vec3<f32> = u_xlat2;
  let x_1514 : vec4<f32> = u_xlat0;
  let x_1517 : vec3<f32> = u_xlat3;
  u_xlat19 = ((x_1513 * vec3<f32>(x_1514.x, x_1514.x, x_1514.x)) + x_1517);
  let x_1519 : vec4<f32> = u_xlat1;
  let x_1521 : vec3<f32> = u_xlat19;
  let x_1522 : vec3<f32> = (vec3<f32>(x_1519.x, x_1519.y, x_1519.w) * x_1521);
  let x_1523 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1522.x, x_1522.y, x_1523.z, x_1522.z);
  let x_1526 : f32 = x_146.x_AdditionalLightsCount.x;
  let x_1528 : f32 = x_59.unity_LightData.y;
  u_xlat0.x = min(x_1526, x_1528);
  let x_1533 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1533));
  let x_1538 : f32 = x_1128.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1540 : f32 = x_1128.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1542 : f32 = x_1128.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1544 : f32 = x_1128.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1545 : vec4<f32> = vec4<f32>(x_1538, x_1540, x_1542, x_1544);
  let x_1551 : vec4<bool> = (vec4<f32>(x_1545.x, x_1545.y, x_1545.z, x_1545.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb19 = vec2<bool>(x_1551.x, x_1551.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1562 : u32 = u_xlatu_loop_1;
    let x_1563 : u32 = u_xlatu0;
    if ((x_1562 < x_1563)) {
    } else {
      break;
    }
    let x_1566 : u32 = u_xlatu_loop_1;
    u_xlatu45 = (x_1566 >> 2u);
    let x_1569 : u32 = u_xlatu_loop_1;
    u_xlati46 = bitcast<i32>((x_1569 & 3u));
    let x_1574 : u32 = u_xlatu45;
    let x_1577 : vec4<f32> = x_59.unity_LightIndices[bitcast<i32>(x_1574)];
    let x_1587 : i32 = u_xlati46;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1592 : vec4<u32> = indexable[x_1587];
    u_xlat45 = dot(x_1577, bitcast<vec4<f32>>(x_1592));
    let x_1595 : f32 = u_xlat45;
    u_xlatu45 = bitcast<u32>(i32(x_1595));
    let x_1598 : vec3<f32> = vs_INTERP0;
    let x_1610 : u32 = u_xlatu45;
    let x_1613 : vec4<f32> = x_1609.x_AdditionalLightsPosition[bitcast<i32>(x_1610)];
    let x_1616 : u32 = u_xlatu45;
    let x_1619 : vec4<f32> = x_1609.x_AdditionalLightsPosition[bitcast<i32>(x_1616)];
    let x_1621 : vec3<f32> = ((-(x_1598) * vec3<f32>(x_1613.w, x_1613.w, x_1613.w)) + vec3<f32>(x_1619.x, x_1619.y, x_1619.z));
    let x_1622 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1621.x, x_1621.y, x_1621.z, x_1622.w);
    let x_1625 : vec4<f32> = u_xlat8;
    let x_1627 : vec4<f32> = u_xlat8;
    u_xlat46 = dot(vec3<f32>(x_1625.x, x_1625.y, x_1625.z), vec3<f32>(x_1627.x, x_1627.y, x_1627.z));
    let x_1630 : f32 = u_xlat46;
    u_xlat46 = max(x_1630, 6.10351562e-05f);
    let x_1634 : f32 = u_xlat46;
    u_xlat47 = inverseSqrt(x_1634);
    let x_1637 : f32 = u_xlat47;
    let x_1639 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_1637, x_1637, x_1637) * vec3<f32>(x_1639.x, x_1639.y, x_1639.z));
    let x_1643 : f32 = u_xlat46;
    u_xlat48 = (1.0f / x_1643);
    let x_1645 : f32 = u_xlat46;
    let x_1646 : u32 = u_xlatu45;
    let x_1649 : f32 = x_1609.x_AdditionalLightsAttenuation[bitcast<i32>(x_1646)].x;
    u_xlat46 = (x_1645 * x_1649);
    let x_1651 : f32 = u_xlat46;
    let x_1653 : f32 = u_xlat46;
    u_xlat46 = ((-(x_1651) * x_1653) + 1.0f);
    let x_1656 : f32 = u_xlat46;
    u_xlat46 = max(x_1656, 0.0f);
    let x_1658 : f32 = u_xlat46;
    let x_1659 : f32 = u_xlat46;
    u_xlat46 = (x_1658 * x_1659);
    let x_1661 : f32 = u_xlat46;
    let x_1662 : f32 = u_xlat48;
    u_xlat46 = (x_1661 * x_1662);
    let x_1664 : u32 = u_xlatu45;
    let x_1667 : vec4<f32> = x_1609.x_AdditionalLightsSpotDir[bitcast<i32>(x_1664)];
    let x_1669 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_1667.x, x_1667.y, x_1667.z), x_1669);
    let x_1671 : f32 = u_xlat48;
    let x_1672 : u32 = u_xlatu45;
    let x_1675 : f32 = x_1609.x_AdditionalLightsAttenuation[bitcast<i32>(x_1672)].z;
    let x_1677 : u32 = u_xlatu45;
    let x_1680 : f32 = x_1609.x_AdditionalLightsAttenuation[bitcast<i32>(x_1677)].w;
    u_xlat48 = ((x_1671 * x_1675) + x_1680);
    let x_1682 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1682, 0.0f, 1.0f);
    let x_1684 : f32 = u_xlat48;
    let x_1685 : f32 = u_xlat48;
    u_xlat48 = (x_1684 * x_1685);
    let x_1687 : f32 = u_xlat46;
    let x_1688 : f32 = u_xlat48;
    u_xlat46 = (x_1687 * x_1688);
    let x_1691 : u32 = u_xlatu45;
    u_xlatu48 = (x_1691 >> 5u);
    let x_1694 : u32 = u_xlatu45;
    u_xlati10 = (1i << bitcast<u32>((bitcast<i32>(x_1694) & 31i)));
    let x_1700 : i32 = u_xlati10;
    let x_1702 : u32 = u_xlatu48;
    let x_1705 : f32 = x_1128.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1702)].el;
    u_xlati48 = bitcast<i32>((bitcast<u32>(x_1700) & bitcast<u32>(x_1705)));
    let x_1709 : i32 = u_xlati48;
    if ((x_1709 != 0i)) {
      let x_1719 : u32 = u_xlatu45;
      let x_1722 : f32 = x_1718.x_AdditionalLightsLightTypes[bitcast<i32>(x_1719)].el;
      u_xlati48 = i32(x_1722);
      let x_1724 : i32 = u_xlati48;
      u_xlati10 = select(1i, 0i, (x_1724 != 0i));
      let x_1728 : u32 = u_xlatu45;
      u_xlati23 = (bitcast<i32>(x_1728) << bitcast<u32>(2i));
      let x_1731 : i32 = u_xlati10;
      if ((x_1731 != 0i)) {
        let x_1736 : vec3<f32> = vs_INTERP0;
        let x_1738 : i32 = u_xlati23;
        let x_1741 : i32 = u_xlati23;
        let x_1745 : vec4<f32> = x_1718.x_AdditionalLightsWorldToLights[((x_1738 + 1i) / 4i)][((x_1741 + 1i) % 4i)];
        let x_1747 : vec3<f32> = (vec3<f32>(x_1736.y, x_1736.y, x_1736.y) * vec3<f32>(x_1745.x, x_1745.y, x_1745.w));
        let x_1748 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1747.x, x_1748.y, x_1747.y, x_1747.z);
        let x_1750 : i32 = u_xlati23;
        let x_1752 : i32 = u_xlati23;
        let x_1755 : vec4<f32> = x_1718.x_AdditionalLightsWorldToLights[(x_1750 / 4i)][(x_1752 % 4i)];
        let x_1757 : vec3<f32> = vs_INTERP0;
        let x_1760 : vec4<f32> = u_xlat10;
        let x_1762 : vec3<f32> = ((vec3<f32>(x_1755.x, x_1755.y, x_1755.w) * vec3<f32>(x_1757.x, x_1757.x, x_1757.x)) + vec3<f32>(x_1760.x, x_1760.z, x_1760.w));
        let x_1763 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1762.x, x_1763.y, x_1762.y, x_1762.z);
        let x_1765 : i32 = u_xlati23;
        let x_1768 : i32 = u_xlati23;
        let x_1772 : vec4<f32> = x_1718.x_AdditionalLightsWorldToLights[((x_1765 + 2i) / 4i)][((x_1768 + 2i) % 4i)];
        let x_1774 : vec3<f32> = vs_INTERP0;
        let x_1777 : vec4<f32> = u_xlat10;
        let x_1779 : vec3<f32> = ((vec3<f32>(x_1772.x, x_1772.y, x_1772.w) * vec3<f32>(x_1774.z, x_1774.z, x_1774.z)) + vec3<f32>(x_1777.x, x_1777.z, x_1777.w));
        let x_1780 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1779.x, x_1780.y, x_1779.y, x_1779.z);
        let x_1782 : vec4<f32> = u_xlat10;
        let x_1784 : i32 = u_xlati23;
        let x_1787 : i32 = u_xlati23;
        let x_1791 : vec4<f32> = x_1718.x_AdditionalLightsWorldToLights[((x_1784 + 3i) / 4i)][((x_1787 + 3i) % 4i)];
        let x_1793 : vec3<f32> = (vec3<f32>(x_1782.x, x_1782.z, x_1782.w) + vec3<f32>(x_1791.x, x_1791.y, x_1791.w));
        let x_1794 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1793.x, x_1794.y, x_1793.y, x_1793.z);
        let x_1796 : vec4<f32> = u_xlat10;
        let x_1798 : vec4<f32> = u_xlat10;
        let x_1800 : vec2<f32> = (vec2<f32>(x_1796.x, x_1796.z) / vec2<f32>(x_1798.w, x_1798.w));
        let x_1801 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1800.x, x_1801.y, x_1800.y, x_1801.w);
        let x_1803 : vec4<f32> = u_xlat10;
        let x_1806 : vec2<f32> = ((vec2<f32>(x_1803.x, x_1803.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1807 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1806.x, x_1807.y, x_1806.y, x_1807.w);
        let x_1809 : vec4<f32> = u_xlat10;
        let x_1813 : vec2<f32> = clamp(vec2<f32>(x_1809.x, x_1809.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1814 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1813.x, x_1814.y, x_1813.y, x_1814.w);
        let x_1816 : u32 = u_xlatu45;
        let x_1819 : vec4<f32> = x_1718.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1816)];
        let x_1821 : vec4<f32> = u_xlat10;
        let x_1824 : u32 = u_xlatu45;
        let x_1827 : vec4<f32> = x_1718.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1824)];
        let x_1829 : vec2<f32> = ((vec2<f32>(x_1819.x, x_1819.y) * vec2<f32>(x_1821.x, x_1821.z)) + vec2<f32>(x_1827.z, x_1827.w));
        let x_1830 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1829.x, x_1830.y, x_1829.y, x_1830.w);
      } else {
        let x_1834 : i32 = u_xlati48;
        u_xlatb48 = (x_1834 == 1i);
        let x_1836 : bool = u_xlatb48;
        u_xlati48 = select(0i, 1i, x_1836);
        let x_1838 : i32 = u_xlati48;
        if ((x_1838 != 0i)) {
          let x_1843 : vec3<f32> = vs_INTERP0;
          let x_1845 : i32 = u_xlati23;
          let x_1848 : i32 = u_xlati23;
          let x_1852 : vec4<f32> = x_1718.x_AdditionalLightsWorldToLights[((x_1845 + 1i) / 4i)][((x_1848 + 1i) % 4i)];
          let x_1854 : vec2<f32> = (vec2<f32>(x_1843.y, x_1843.y) * vec2<f32>(x_1852.x, x_1852.y));
          let x_1855 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1854.x, x_1854.y, x_1855.z, x_1855.w);
          let x_1857 : i32 = u_xlati23;
          let x_1859 : i32 = u_xlati23;
          let x_1862 : vec4<f32> = x_1718.x_AdditionalLightsWorldToLights[(x_1857 / 4i)][(x_1859 % 4i)];
          let x_1864 : vec3<f32> = vs_INTERP0;
          let x_1867 : vec4<f32> = u_xlat11;
          let x_1869 : vec2<f32> = ((vec2<f32>(x_1862.x, x_1862.y) * vec2<f32>(x_1864.x, x_1864.x)) + vec2<f32>(x_1867.x, x_1867.y));
          let x_1870 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1869.x, x_1869.y, x_1870.z, x_1870.w);
          let x_1872 : i32 = u_xlati23;
          let x_1875 : i32 = u_xlati23;
          let x_1879 : vec4<f32> = x_1718.x_AdditionalLightsWorldToLights[((x_1872 + 2i) / 4i)][((x_1875 + 2i) % 4i)];
          let x_1881 : vec3<f32> = vs_INTERP0;
          let x_1884 : vec4<f32> = u_xlat11;
          let x_1886 : vec2<f32> = ((vec2<f32>(x_1879.x, x_1879.y) * vec2<f32>(x_1881.z, x_1881.z)) + vec2<f32>(x_1884.x, x_1884.y));
          let x_1887 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1886.x, x_1886.y, x_1887.z, x_1887.w);
          let x_1889 : vec4<f32> = u_xlat11;
          let x_1891 : i32 = u_xlati23;
          let x_1894 : i32 = u_xlati23;
          let x_1898 : vec4<f32> = x_1718.x_AdditionalLightsWorldToLights[((x_1891 + 3i) / 4i)][((x_1894 + 3i) % 4i)];
          let x_1900 : vec2<f32> = (vec2<f32>(x_1889.x, x_1889.y) + vec2<f32>(x_1898.x, x_1898.y));
          let x_1901 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1900.x, x_1900.y, x_1901.z, x_1901.w);
          let x_1903 : vec4<f32> = u_xlat11;
          let x_1906 : vec2<f32> = ((vec2<f32>(x_1903.x, x_1903.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1907 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1906.x, x_1906.y, x_1907.z, x_1907.w);
          let x_1909 : vec4<f32> = u_xlat11;
          let x_1911 : vec2<f32> = fract(vec2<f32>(x_1909.x, x_1909.y));
          let x_1912 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1911.x, x_1911.y, x_1912.z, x_1912.w);
          let x_1914 : u32 = u_xlatu45;
          let x_1917 : vec4<f32> = x_1718.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1914)];
          let x_1919 : vec4<f32> = u_xlat11;
          let x_1922 : u32 = u_xlatu45;
          let x_1925 : vec4<f32> = x_1718.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1922)];
          let x_1927 : vec2<f32> = ((vec2<f32>(x_1917.x, x_1917.y) * vec2<f32>(x_1919.x, x_1919.y)) + vec2<f32>(x_1925.z, x_1925.w));
          let x_1928 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_1927.x, x_1928.y, x_1927.y, x_1928.w);
        } else {
          let x_1931 : vec3<f32> = vs_INTERP0;
          let x_1933 : i32 = u_xlati23;
          let x_1936 : i32 = u_xlati23;
          let x_1940 : vec4<f32> = x_1718.x_AdditionalLightsWorldToLights[((x_1933 + 1i) / 4i)][((x_1936 + 1i) % 4i)];
          u_xlat11 = (vec4<f32>(x_1931.y, x_1931.y, x_1931.y, x_1931.y) * x_1940);
          let x_1942 : i32 = u_xlati23;
          let x_1944 : i32 = u_xlati23;
          let x_1947 : vec4<f32> = x_1718.x_AdditionalLightsWorldToLights[(x_1942 / 4i)][(x_1944 % 4i)];
          let x_1948 : vec3<f32> = vs_INTERP0;
          let x_1951 : vec4<f32> = u_xlat11;
          u_xlat11 = ((x_1947 * vec4<f32>(x_1948.x, x_1948.x, x_1948.x, x_1948.x)) + x_1951);
          let x_1953 : i32 = u_xlati23;
          let x_1956 : i32 = u_xlati23;
          let x_1960 : vec4<f32> = x_1718.x_AdditionalLightsWorldToLights[((x_1953 + 2i) / 4i)][((x_1956 + 2i) % 4i)];
          let x_1961 : vec3<f32> = vs_INTERP0;
          let x_1964 : vec4<f32> = u_xlat11;
          u_xlat11 = ((x_1960 * vec4<f32>(x_1961.z, x_1961.z, x_1961.z, x_1961.z)) + x_1964);
          let x_1966 : vec4<f32> = u_xlat11;
          let x_1967 : i32 = u_xlati23;
          let x_1970 : i32 = u_xlati23;
          let x_1974 : vec4<f32> = x_1718.x_AdditionalLightsWorldToLights[((x_1967 + 3i) / 4i)][((x_1970 + 3i) % 4i)];
          u_xlat11 = (x_1966 + x_1974);
          let x_1976 : vec4<f32> = u_xlat11;
          let x_1978 : vec4<f32> = u_xlat11;
          let x_1980 : vec3<f32> = (vec3<f32>(x_1976.x, x_1976.y, x_1976.z) / vec3<f32>(x_1978.w, x_1978.w, x_1978.w));
          let x_1981 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1980.x, x_1980.y, x_1980.z, x_1981.w);
          let x_1983 : vec4<f32> = u_xlat11;
          let x_1985 : vec4<f32> = u_xlat11;
          u_xlat48 = dot(vec3<f32>(x_1983.x, x_1983.y, x_1983.z), vec3<f32>(x_1985.x, x_1985.y, x_1985.z));
          let x_1988 : f32 = u_xlat48;
          u_xlat48 = inverseSqrt(x_1988);
          let x_1990 : f32 = u_xlat48;
          let x_1992 : vec4<f32> = u_xlat11;
          let x_1994 : vec3<f32> = (vec3<f32>(x_1990, x_1990, x_1990) * vec3<f32>(x_1992.x, x_1992.y, x_1992.z));
          let x_1995 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1994.x, x_1994.y, x_1994.z, x_1995.w);
          let x_1997 : vec4<f32> = u_xlat11;
          u_xlat48 = dot(abs(vec3<f32>(x_1997.x, x_1997.y, x_1997.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2002 : f32 = u_xlat48;
          u_xlat48 = max(x_2002, 0.000001f);
          let x_2005 : f32 = u_xlat48;
          u_xlat48 = (1.0f / x_2005);
          let x_2008 : f32 = u_xlat48;
          let x_2010 : vec4<f32> = u_xlat11;
          u_xlat12 = (vec3<f32>(x_2008, x_2008, x_2008) * vec3<f32>(x_2010.z, x_2010.x, x_2010.y));
          let x_2014 : f32 = u_xlat12.x;
          u_xlat12.x = -(x_2014);
          let x_2018 : f32 = u_xlat12.x;
          u_xlat12.x = clamp(x_2018, 0.0f, 1.0f);
          let x_2024 : vec3<f32> = u_xlat12;
          let x_2027 : vec4<bool> = (vec4<f32>(x_2024.y, x_2024.y, x_2024.z, x_2024.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_2028 : vec2<bool> = vec2<bool>(x_2027.x, x_2027.z);
          let x_2029 : vec3<bool> = u_xlatb23;
          u_xlatb23 = vec3<bool>(x_2028.x, x_2029.y, x_2028.y);
          let x_2033 : bool = u_xlatb23.x;
          if (x_2033) {
            let x_2038 : f32 = u_xlat12.x;
            x_2034 = x_2038;
          } else {
            let x_2041 : f32 = u_xlat12.x;
            x_2034 = -(x_2041);
          }
          let x_2043 : f32 = x_2034;
          u_xlat23.x = x_2043;
          let x_2046 : bool = u_xlatb23.z;
          if (x_2046) {
            let x_2051 : f32 = u_xlat12.x;
            x_2047 = x_2051;
          } else {
            let x_2054 : f32 = u_xlat12.x;
            x_2047 = -(x_2054);
          }
          let x_2056 : f32 = x_2047;
          u_xlat23.z = x_2056;
          let x_2058 : vec4<f32> = u_xlat11;
          let x_2060 : f32 = u_xlat48;
          let x_2063 : vec3<f32> = u_xlat23;
          let x_2065 : vec2<f32> = ((vec2<f32>(x_2058.x, x_2058.y) * vec2<f32>(x_2060, x_2060)) + vec2<f32>(x_2063.x, x_2063.z));
          let x_2066 : vec3<f32> = u_xlat23;
          u_xlat23 = vec3<f32>(x_2065.x, x_2066.y, x_2065.y);
          let x_2068 : vec3<f32> = u_xlat23;
          let x_2071 : vec2<f32> = ((vec2<f32>(x_2068.x, x_2068.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2072 : vec3<f32> = u_xlat23;
          u_xlat23 = vec3<f32>(x_2071.x, x_2072.y, x_2071.y);
          let x_2074 : vec3<f32> = u_xlat23;
          let x_2078 : vec2<f32> = clamp(vec2<f32>(x_2074.x, x_2074.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2079 : vec3<f32> = u_xlat23;
          u_xlat23 = vec3<f32>(x_2078.x, x_2079.y, x_2078.y);
          let x_2081 : u32 = u_xlatu45;
          let x_2084 : vec4<f32> = x_1718.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2081)];
          let x_2086 : vec3<f32> = u_xlat23;
          let x_2089 : u32 = u_xlatu45;
          let x_2092 : vec4<f32> = x_1718.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2089)];
          let x_2094 : vec2<f32> = ((vec2<f32>(x_2084.x, x_2084.y) * vec2<f32>(x_2086.x, x_2086.z)) + vec2<f32>(x_2092.z, x_2092.w));
          let x_2095 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2094.x, x_2095.y, x_2094.y, x_2095.w);
        }
      }
      let x_2102 : vec4<f32> = u_xlat10;
      let x_2105 : f32 = x_146.x_GlobalMipBias.x;
      let x_2106 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2102.x, x_2102.z), x_2105);
      u_xlat10 = x_2106;
      let x_2108 : bool = u_xlatb19.y;
      if (x_2108) {
        let x_2113 : f32 = u_xlat10.w;
        x_2109 = x_2113;
      } else {
        let x_2116 : f32 = u_xlat10.x;
        x_2109 = x_2116;
      }
      let x_2117 : f32 = x_2109;
      u_xlat48 = x_2117;
      let x_2119 : bool = u_xlatb19.x;
      if (x_2119) {
        let x_2123 : vec4<f32> = u_xlat10;
        x_2120 = vec3<f32>(x_2123.x, x_2123.y, x_2123.z);
      } else {
        let x_2126 : f32 = u_xlat48;
        x_2120 = vec3<f32>(x_2126, x_2126, x_2126);
      }
      let x_2128 : vec3<f32> = x_2120;
      let x_2129 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2128.x, x_2128.y, x_2128.z, x_2129.w);
    } else {
      u_xlat10.x = 1.0f;
      u_xlat10.y = 1.0f;
      u_xlat10.z = 1.0f;
    }
    let x_2135 : vec4<f32> = u_xlat10;
    let x_2137 : u32 = u_xlatu45;
    let x_2140 : vec4<f32> = x_1609.x_AdditionalLightsColor[bitcast<i32>(x_2137)];
    let x_2142 : vec3<f32> = (vec3<f32>(x_2135.x, x_2135.y, x_2135.z) * vec3<f32>(x_2140.x, x_2140.y, x_2140.z));
    let x_2143 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2142.x, x_2142.y, x_2142.z, x_2143.w);
    let x_2145 : vec4<f32> = u_xlat6;
    let x_2147 : vec4<f32> = u_xlat10;
    let x_2149 : vec3<f32> = (vec3<f32>(x_2145.x, x_2145.x, x_2145.x) * vec3<f32>(x_2147.x, x_2147.y, x_2147.z));
    let x_2150 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2149.x, x_2149.y, x_2149.z, x_2150.w);
    let x_2152 : vec3<f32> = u_xlat13;
    let x_2153 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(x_2152, x_2153);
    let x_2155 : f32 = u_xlat45;
    u_xlat45 = clamp(x_2155, 0.0f, 1.0f);
    let x_2157 : f32 = u_xlat45;
    let x_2158 : f32 = u_xlat46;
    u_xlat45 = (x_2157 * x_2158);
    let x_2160 : f32 = u_xlat45;
    let x_2162 : vec4<f32> = u_xlat10;
    let x_2164 : vec3<f32> = (vec3<f32>(x_2160, x_2160, x_2160) * vec3<f32>(x_2162.x, x_2162.y, x_2162.z));
    let x_2165 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2164.x, x_2164.y, x_2164.z, x_2165.w);
    let x_2167 : vec4<f32> = u_xlat8;
    let x_2169 : f32 = u_xlat47;
    let x_2172 : vec3<f32> = u_xlat5;
    let x_2173 : vec3<f32> = ((vec3<f32>(x_2167.x, x_2167.y, x_2167.z) * vec3<f32>(x_2169, x_2169, x_2169)) + x_2172);
    let x_2174 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2173.x, x_2173.y, x_2173.z, x_2174.w);
    let x_2176 : vec4<f32> = u_xlat8;
    let x_2178 : vec4<f32> = u_xlat8;
    u_xlat45 = dot(vec3<f32>(x_2176.x, x_2176.y, x_2176.z), vec3<f32>(x_2178.x, x_2178.y, x_2178.z));
    let x_2181 : f32 = u_xlat45;
    u_xlat45 = max(x_2181, 1.17549435e-37f);
    let x_2183 : f32 = u_xlat45;
    u_xlat45 = inverseSqrt(x_2183);
    let x_2185 : f32 = u_xlat45;
    let x_2187 : vec4<f32> = u_xlat8;
    let x_2189 : vec3<f32> = (vec3<f32>(x_2185, x_2185, x_2185) * vec3<f32>(x_2187.x, x_2187.y, x_2187.z));
    let x_2190 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2189.x, x_2189.y, x_2189.z, x_2190.w);
    let x_2192 : vec3<f32> = u_xlat13;
    let x_2193 : vec4<f32> = u_xlat8;
    u_xlat45 = dot(x_2192, vec3<f32>(x_2193.x, x_2193.y, x_2193.z));
    let x_2196 : f32 = u_xlat45;
    u_xlat45 = clamp(x_2196, 0.0f, 1.0f);
    let x_2198 : vec3<f32> = u_xlat9;
    let x_2199 : vec4<f32> = u_xlat8;
    u_xlat46 = dot(x_2198, vec3<f32>(x_2199.x, x_2199.y, x_2199.z));
    let x_2202 : f32 = u_xlat46;
    u_xlat46 = clamp(x_2202, 0.0f, 1.0f);
    let x_2204 : f32 = u_xlat45;
    let x_2205 : f32 = u_xlat45;
    u_xlat45 = (x_2204 * x_2205);
    let x_2207 : f32 = u_xlat45;
    let x_2209 : f32 = u_xlat27.x;
    u_xlat45 = ((x_2207 * x_2209) + 1.000010014f);
    let x_2212 : f32 = u_xlat46;
    let x_2213 : f32 = u_xlat46;
    u_xlat46 = (x_2212 * x_2213);
    let x_2215 : f32 = u_xlat45;
    let x_2216 : f32 = u_xlat45;
    u_xlat45 = (x_2215 * x_2216);
    let x_2218 : f32 = u_xlat46;
    u_xlat46 = max(x_2218, 0.100000001f);
    let x_2220 : f32 = u_xlat45;
    let x_2221 : f32 = u_xlat46;
    u_xlat45 = (x_2220 * x_2221);
    let x_2223 : f32 = u_xlat43;
    let x_2224 : f32 = u_xlat45;
    u_xlat45 = (x_2223 * x_2224);
    let x_2226 : f32 = u_xlat42;
    let x_2227 : f32 = u_xlat45;
    u_xlat45 = (x_2226 / x_2227);
    let x_2229 : vec3<f32> = u_xlat2;
    let x_2230 : f32 = u_xlat45;
    let x_2233 : vec3<f32> = u_xlat3;
    let x_2234 : vec3<f32> = ((x_2229 * vec3<f32>(x_2230, x_2230, x_2230)) + x_2233);
    let x_2235 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2234.x, x_2234.y, x_2234.z, x_2235.w);
    let x_2237 : vec4<f32> = u_xlat8;
    let x_2239 : vec4<f32> = u_xlat10;
    let x_2242 : vec4<f32> = u_xlat7;
    let x_2244 : vec3<f32> = ((vec3<f32>(x_2237.x, x_2237.y, x_2237.z) * vec3<f32>(x_2239.x, x_2239.y, x_2239.z)) + vec3<f32>(x_2242.x, x_2242.y, x_2242.z));
    let x_2245 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2244.x, x_2244.y, x_2244.z, x_2245.w);

    continuing {
      let x_2247 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2247 + bitcast<u32>(1i));
    }
  }
  let x_2249 : vec4<f32> = u_xlat4;
  let x_2251 : f32 = u_xlat44;
  let x_2254 : vec4<f32> = u_xlat1;
  let x_2256 : vec3<f32> = ((vec3<f32>(x_2249.x, x_2249.y, x_2249.z) * vec3<f32>(x_2251, x_2251, x_2251)) + vec3<f32>(x_2254.x, x_2254.y, x_2254.w));
  let x_2257 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2256.x, x_2256.y, x_2256.z, x_2257.w);
  let x_2261 : vec4<f32> = u_xlat7;
  let x_2263 : vec4<f32> = u_xlat0;
  let x_2265 : vec3<f32> = (vec3<f32>(x_2261.x, x_2261.y, x_2261.z) + vec3<f32>(x_2263.x, x_2263.y, x_2263.z));
  let x_2266 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2265.x, x_2265.y, x_2265.z, x_2266.w);
  let x_2270 : u32 = x_146.x_RenderingLayerMaxInt;
  let x_2272 : f32 = x_59.unity_RenderingLayer.x;
  u_xlatu0 = (x_2270 & bitcast<u32>(x_2272));
  let x_2275 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_2275);
  let x_2280 : f32 = u_xlat0.x;
  let x_2283 : f32 = x_146.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_2280 * x_2283);
  let x_2288 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_2288, 0.0f, 1.0f);
  SV_Target0.w = 1.0f;
  let x_2292 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_2292.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
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
  return main_out(SV_Target0, SV_Target1);
}

