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

type Arr_2 = array<vec4<f32>, 256u>;

type Arr_3 = array<vec4<f32>, 256u>;

type Arr_4 = array<vec4<f32>, 256u>;

type Arr_5 = array<vec4<f32>, 256u>;

type Arr_6 = array<vec4<f32>, 256u>;

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_7 = array<strided_arr, 256u>;

struct AdditionalLights {
  x_AdditionalLightsPosition : Arr_6,
  x_AdditionalLightsColor : Arr_6,
  x_AdditionalLightsAttenuation : Arr_6,
  x_AdditionalLightsSpotDir : Arr_6,
  x_AdditionalLightsOcclusionProbes : Arr_6,
  x_AdditionalLightsLayerMasks : Arr_7,
}

var<private> gl_FragCoord : vec4<f32>;

var<private> vs_INTERP1 : vec3<f32>;

var<private> vs_INTERP2 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_59 : UnityPerDraw;

@group(0) @binding(6) var x_MainTex : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainTex : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_146 : PGlobals;

var<private> vs_INTERP0 : vec3<f32>;

@group(0) @binding(9) var Texture2D_D7D66558 : texture_2d<f32>;

@group(0) @binding(18) var samplerTexture2D_D7D66558 : sampler;

@group(1) @binding(4) var<uniform> x_206 : UnityPerMaterial;

@group(0) @binding(7) var Texture2D_DE8BF47E : texture_2d<f32>;

@group(0) @binding(16) var samplerTexture2D_DE8BF47E : sampler;

@group(0) @binding(8) var Texture2D_C005B064 : texture_2d<f32>;

@group(0) @binding(17) var samplerTexture2D_C005B064 : sampler;

@group(0) @binding(5) var x_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1 : texture_2d<f32>;

@group(0) @binding(14) var sampler_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1 : sampler;

@group(1) @binding(3) var<uniform> x_694 : MainLightShadows;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(11) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP4 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1473 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlatb11 : vec2<bool>;
  var u_xlat11 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat34 : f32;
  var u_xlat35 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat36 : f32;
  var u_xlat37 : f32;
  var u_xlat7 : vec4<f32>;
  var u_xlat18 : vec3<f32>;
  var u_xlat12 : vec3<f32>;
  var u_xlat15 : vec3<f32>;
  var u_xlatb1 : bool;
  var x_656 : f32;
  var x_668 : f32;
  var x_679 : f32;
  var u_xlat8 : vec4<f32>;
  var u_xlatb4 : vec4<bool>;
  var u_xlatu1 : u32;
  var u_xlati1 : i32;
  var u_xlat38 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatb12 : bool;
  var u_xlatb23 : bool;
  var x_1073 : f32;
  var u_xlat17 : vec3<f32>;
  var u_xlat23 : vec2<f32>;
  var u_xlatu0 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu7 : u32;
  var u_xlati18 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati7 : i32;
  var u_xlat19 : f32;
  var u_xlat9 : vec3<f32>;
  var u_xlat30 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlat40 : f32;
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
  u_xlatb11.x = (0.0f < x_50);
  let x_64 : f32 = x_59.unity_WorldTransformParams.w;
  u_xlatb11.y = (x_64 >= 0.0f);
  let x_71 : bool = u_xlatb11.x;
  u_xlat11.x = select(-1.0f, 1.0f, x_71);
  let x_76 : bool = u_xlatb11.y;
  u_xlat11.y = select(-1.0f, 1.0f, x_76);
  let x_80 : f32 = u_xlat11.y;
  let x_82 : f32 = u_xlat11.x;
  u_xlat11.x = (x_80 * x_82);
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
  let x_104 : vec3<f32> = u_xlat11;
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
  u_xlat34 = ((x_158 * 4.0f) + x_163);
  let x_165 : f32 = u_xlat34;
  u_xlat34 = (x_165 * 0.330000013f);
  let x_170 : f32 = vs_INTERP0.y;
  u_xlat35 = (x_170 + 1.0f);
  let x_172 : f32 = u_xlat35;
  u_xlat35 = ((x_172 * -1.333333373f) + 1.0f);
  let x_176 : f32 = u_xlat34;
  let x_177 : f32 = u_xlat35;
  u_xlat34 = max(x_176, x_177);
  let x_179 : f32 = u_xlat34;
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
  u_xlat35 = ((-(x_209) * 0.011111f) + 0.949999988f);
  let x_218 : f32 = x_206.Vector1_A492C01C;
  u_xlat36 = (x_218 + -10.0f);
  let x_221 : f32 = u_xlat36;
  let x_224 : f32 = vs_INTERP0.y;
  u_xlat36 = (-(x_221) + x_224);
  let x_226 : f32 = u_xlat36;
  u_xlat36 = (x_226 * 0.050000001f);
  let x_229 : f32 = u_xlat36;
  u_xlat36 = clamp(x_229, 0.0f, 1.0f);
  let x_232 : f32 = u_xlat36;
  u_xlat37 = ((x_232 * -2.0f) + 3.0f);
  let x_237 : f32 = u_xlat36;
  let x_238 : f32 = u_xlat36;
  u_xlat36 = (x_237 * x_238);
  let x_240 : f32 = u_xlat36;
  let x_241 : f32 = u_xlat37;
  u_xlat36 = (x_240 * x_241);
  let x_249 : vec4<f32> = vs_INTERP3;
  let x_252 : f32 = x_146.x_GlobalMipBias.x;
  let x_253 : vec4<f32> = textureSampleBias(Texture2D_DE8BF47E, samplerTexture2D_DE8BF47E, vec2<f32>(x_249.x, x_249.y), x_252);
  u_xlat7 = x_253;
  let x_255 : vec4<f32> = u_xlat7;
  u_xlat18 = ((vec3<f32>(x_255.w, x_255.y, x_255.z) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_262 : vec3<f32> = u_xlat3;
  let x_263 : vec3<f32> = u_xlat18;
  u_xlat3 = (x_262 * vec3<f32>(x_263.y, x_263.y, x_263.y));
  let x_266 : vec3<f32> = u_xlat18;
  let x_268 : vec3<f32> = u_xlat2;
  let x_270 : vec3<f32> = u_xlat3;
  u_xlat2 = ((vec3<f32>(x_266.x, x_266.x, x_266.x) * x_268) + x_270);
  let x_272 : vec3<f32> = u_xlat18;
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
  let x_302 : f32 = u_xlat36;
  let x_304 : f32 = u_xlat1.x;
  let x_306 : f32 = u_xlat35;
  u_xlat1.x = ((x_302 * x_304) + -(x_306));
  let x_311 : f32 = u_xlat1.x;
  u_xlat1.x = (x_311 * 10.0f);
  let x_316 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_316, 0.0f, 1.0f);
  let x_321 : f32 = u_xlat1.x;
  u_xlat12.x = ((x_321 * -2.0f) + 3.0f);
  let x_326 : f32 = u_xlat1.x;
  let x_328 : f32 = u_xlat1.x;
  u_xlat1.x = (x_326 * x_328);
  let x_332 : f32 = u_xlat1.x;
  let x_334 : f32 = u_xlat12.x;
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
  u_xlat15 = vec3<f32>(x_375.x, x_375.y, x_375.w);
  let x_378 : f32 = u_xlat15.x;
  let x_380 : f32 = u_xlat15.z;
  u_xlat15.x = (x_378 * x_380);
  let x_383 : vec3<f32> = u_xlat15;
  let x_388 : vec2<f32> = ((vec2<f32>(x_383.x, x_383.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_389 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_388.x, x_388.y, x_389.z);
  let x_391 : vec3<f32> = u_xlat5;
  let x_393 : vec3<f32> = u_xlat5;
  u_xlat12.x = dot(vec2<f32>(x_391.x, x_391.y), vec2<f32>(x_393.x, x_393.y));
  let x_398 : f32 = u_xlat12.x;
  u_xlat12.x = min(x_398, 1.0f);
  let x_402 : f32 = u_xlat12.x;
  u_xlat12.x = (-(x_402) + 1.0f);
  let x_407 : f32 = u_xlat12.x;
  u_xlat12.x = sqrt(x_407);
  let x_411 : f32 = u_xlat12.x;
  u_xlat5.z = max(x_411, 1.00000002e-16f);
  let x_418 : vec4<f32> = x_59.unity_ObjectToWorld[0i];
  let x_421 : vec4<f32> = x_59.unity_ObjectToWorld[0i];
  u_xlat12.x = dot(vec3<f32>(x_418.x, x_418.y, x_418.z), vec3<f32>(x_421.x, x_421.y, x_421.z));
  let x_426 : f32 = u_xlat12.x;
  u_xlat6.x = sqrt(x_426);
  let x_430 : vec4<f32> = x_59.unity_ObjectToWorld[1i];
  let x_433 : vec4<f32> = x_59.unity_ObjectToWorld[1i];
  u_xlat12.x = dot(vec3<f32>(x_430.x, x_430.y, x_430.z), vec3<f32>(x_433.x, x_433.y, x_433.z));
  let x_438 : f32 = u_xlat12.x;
  u_xlat6.y = sqrt(x_438);
  let x_443 : vec4<f32> = x_59.unity_ObjectToWorld[2i];
  let x_446 : vec4<f32> = x_59.unity_ObjectToWorld[2i];
  u_xlat12.x = dot(vec3<f32>(x_443.x, x_443.y, x_443.z), vec3<f32>(x_446.x, x_446.y, x_446.z));
  let x_451 : f32 = u_xlat12.x;
  u_xlat6.z = sqrt(x_451);
  let x_454 : vec4<f32> = u_xlat6;
  let x_456 : vec4<f32> = u_xlat6;
  u_xlat12.x = dot(vec3<f32>(x_454.x, x_454.y, x_454.z), vec3<f32>(x_456.x, x_456.y, x_456.z));
  let x_461 : f32 = u_xlat12.x;
  u_xlat12.x = sqrt(x_461);
  let x_465 : f32 = u_xlat12.x;
  let x_468 : f32 = x_206.Vector1_90E376AD;
  u_xlat12.x = (x_465 * x_468);
  let x_472 : f32 = u_xlat12.x;
  u_xlat12.x = (x_472 * 30.0f);
  let x_476 : vec3<f32> = u_xlat12;
  let x_478 : vec4<f32> = vs_INTERP3;
  let x_480 : vec2<f32> = (vec2<f32>(x_476.x, x_476.x) * vec2<f32>(x_478.x, x_478.y));
  let x_481 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_480.x, x_480.y, x_481.z);
  let x_488 : vec3<f32> = u_xlat12;
  let x_491 : f32 = x_146.x_GlobalMipBias.x;
  let x_492 : vec4<f32> = textureSampleBias(x_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1, sampler_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1, vec2<f32>(x_488.x, x_488.y), x_491);
  u_xlat15 = vec3<f32>(x_492.x, x_492.y, x_492.w);
  let x_495 : f32 = u_xlat15.x;
  let x_497 : f32 = u_xlat15.z;
  u_xlat15.x = (x_495 * x_497);
  let x_500 : vec3<f32> = u_xlat15;
  let x_503 : vec2<f32> = ((vec2<f32>(x_500.x, x_500.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_504 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_503.x, x_503.y, x_504.z);
  let x_506 : vec3<f32> = u_xlat12;
  let x_508 : vec3<f32> = u_xlat12;
  u_xlat35 = dot(vec2<f32>(x_506.x, x_506.y), vec2<f32>(x_508.x, x_508.y));
  let x_511 : f32 = u_xlat35;
  u_xlat35 = min(x_511, 1.0f);
  let x_513 : f32 = u_xlat35;
  u_xlat35 = (-(x_513) + 1.0f);
  let x_516 : f32 = u_xlat35;
  u_xlat35 = sqrt(x_516);
  let x_518 : f32 = u_xlat35;
  u_xlat35 = max(x_518, 1.00000002e-16f);
  let x_520 : vec3<f32> = u_xlat12;
  let x_522 : vec3<f32> = u_xlat18;
  let x_524 : vec2<f32> = (vec2<f32>(x_520.x, x_520.y) + vec2<f32>(x_522.x, x_522.y));
  let x_525 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_524.x, x_524.y, x_525.z, x_525.w);
  let x_527 : f32 = u_xlat35;
  let x_529 : f32 = u_xlat18.z;
  u_xlat6.z = (x_527 * x_529);
  let x_532 : vec4<f32> = u_xlat6;
  let x_534 : vec4<f32> = u_xlat6;
  u_xlat12.x = dot(vec3<f32>(x_532.x, x_532.y, x_532.z), vec3<f32>(x_534.x, x_534.y, x_534.z));
  let x_539 : f32 = u_xlat12.x;
  u_xlat12.x = max(x_539, 1.17549435e-37f);
  let x_543 : f32 = u_xlat12.x;
  u_xlat12.x = inverseSqrt(x_543);
  let x_546 : vec4<f32> = u_xlat6;
  let x_548 : vec3<f32> = u_xlat12;
  let x_551 : vec3<f32> = u_xlat5;
  u_xlat15 = ((vec3<f32>(x_546.x, x_546.y, x_546.z) * vec3<f32>(x_548.x, x_548.x, x_548.x)) + -(x_551));
  let x_554 : vec4<f32> = u_xlat1;
  let x_556 : vec3<f32> = u_xlat15;
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
  u_xlat11 = ((vec3<f32>(x_598.y, x_598.y, x_598.y) * vec3<f32>(x_600.x, x_600.y, x_600.z)) + vec3<f32>(x_603.y, x_603.z, x_603.w));
  let x_606 : vec4<f32> = u_xlat4;
  let x_608 : vec3<f32> = vs_INTERP1;
  let x_610 : vec3<f32> = u_xlat11;
  u_xlat11 = ((vec3<f32>(x_606.w, x_606.w, x_606.w) * x_608) + x_610);
  let x_612 : vec3<f32> = u_xlat11;
  let x_613 : vec3<f32> = u_xlat11;
  u_xlat1.x = dot(x_612, x_613);
  let x_617 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_617);
  let x_620 : vec3<f32> = u_xlat11;
  let x_621 : vec4<f32> = u_xlat1;
  u_xlat11 = (x_620 * vec3<f32>(x_621.x, x_621.x, x_621.x));
  let x_627 : f32 = x_146.unity_OrthoParams.w;
  u_xlatb1 = (x_627 == 0.0f);
  let x_629 : vec3<f32> = vs_INTERP0;
  let x_634 : vec3<f32> = x_146.x_WorldSpaceCameraPos;
  let x_635 : vec3<f32> = (-(x_629) + x_634);
  let x_636 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_635.x, x_635.y, x_635.z, x_636.w);
  let x_638 : vec4<f32> = u_xlat4;
  let x_640 : vec4<f32> = u_xlat4;
  u_xlat12.x = dot(vec3<f32>(x_638.x, x_638.y, x_638.z), vec3<f32>(x_640.x, x_640.y, x_640.z));
  let x_645 : f32 = u_xlat12.x;
  u_xlat12.x = inverseSqrt(x_645);
  let x_648 : vec3<f32> = u_xlat12;
  let x_650 : vec4<f32> = u_xlat4;
  let x_652 : vec3<f32> = (vec3<f32>(x_648.x, x_648.x, x_648.x) * vec3<f32>(x_650.x, x_650.y, x_650.z));
  let x_653 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_652.x, x_652.y, x_652.z, x_653.w);
  let x_655 : bool = u_xlatb1;
  if (x_655) {
    let x_660 : f32 = u_xlat4.x;
    x_656 = x_660;
  } else {
    let x_664 : f32 = x_146.unity_MatrixV[0i].z;
    x_656 = x_664;
  }
  let x_665 : f32 = x_656;
  u_xlat5.x = x_665;
  let x_667 : bool = u_xlatb1;
  if (x_667) {
    let x_672 : f32 = u_xlat4.y;
    x_668 = x_672;
  } else {
    let x_675 : f32 = x_146.unity_MatrixV[1i].z;
    x_668 = x_675;
  }
  let x_676 : f32 = x_668;
  u_xlat5.y = x_676;
  let x_678 : bool = u_xlatb1;
  if (x_678) {
    let x_683 : f32 = u_xlat4.z;
    x_679 = x_683;
  } else {
    let x_686 : f32 = x_146.unity_MatrixV[2i].z;
    x_679 = x_686;
  }
  let x_687 : f32 = x_679;
  u_xlat5.z = x_687;
  let x_689 : vec3<f32> = vs_INTERP0;
  let x_696 : vec4<f32> = x_694.x_CascadeShadowSplitSpheres0;
  let x_699 : vec3<f32> = (x_689 + -(vec3<f32>(x_696.x, x_696.y, x_696.z)));
  let x_700 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_699.x, x_699.y, x_699.z, x_700.w);
  let x_702 : vec3<f32> = vs_INTERP0;
  let x_704 : vec4<f32> = x_694.x_CascadeShadowSplitSpheres1;
  let x_707 : vec3<f32> = (x_702 + -(vec3<f32>(x_704.x, x_704.y, x_704.z)));
  let x_708 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_707.x, x_707.y, x_707.z, x_708.w);
  let x_710 : vec3<f32> = vs_INTERP0;
  let x_712 : vec4<f32> = x_694.x_CascadeShadowSplitSpheres2;
  let x_715 : vec3<f32> = (x_710 + -(vec3<f32>(x_712.x, x_712.y, x_712.z)));
  let x_716 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_715.x, x_715.y, x_715.z, x_716.w);
  let x_718 : vec3<f32> = vs_INTERP0;
  let x_720 : vec4<f32> = x_694.x_CascadeShadowSplitSpheres3;
  u_xlat18 = (x_718 + -(vec3<f32>(x_720.x, x_720.y, x_720.z)));
  let x_725 : vec4<f32> = u_xlat1;
  let x_727 : vec4<f32> = u_xlat1;
  u_xlat8.x = dot(vec3<f32>(x_725.x, x_725.y, x_725.z), vec3<f32>(x_727.x, x_727.y, x_727.z));
  let x_731 : vec4<f32> = u_xlat4;
  let x_733 : vec4<f32> = u_xlat4;
  u_xlat8.y = dot(vec3<f32>(x_731.x, x_731.y, x_731.z), vec3<f32>(x_733.x, x_733.y, x_733.z));
  let x_737 : vec4<f32> = u_xlat6;
  let x_739 : vec4<f32> = u_xlat6;
  u_xlat8.z = dot(vec3<f32>(x_737.x, x_737.y, x_737.z), vec3<f32>(x_739.x, x_739.y, x_739.z));
  let x_743 : vec3<f32> = u_xlat18;
  let x_744 : vec3<f32> = u_xlat18;
  u_xlat8.w = dot(x_743, x_744);
  let x_750 : vec4<f32> = u_xlat8;
  let x_752 : vec4<f32> = x_694.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_750 < x_752);
  let x_755 : bool = u_xlatb4.x;
  u_xlat6.x = select(0.0f, 1.0f, x_755);
  let x_759 : bool = u_xlatb4.y;
  u_xlat6.y = select(0.0f, 1.0f, x_759);
  let x_763 : bool = u_xlatb4.z;
  u_xlat6.z = select(0.0f, 1.0f, x_763);
  let x_767 : bool = u_xlatb4.w;
  u_xlat6.w = select(0.0f, 1.0f, x_767);
  let x_771 : bool = u_xlatb4.x;
  u_xlat1.x = select(-0.0f, -1.0f, x_771);
  let x_776 : bool = u_xlatb4.y;
  u_xlat1.y = select(-0.0f, -1.0f, x_776);
  let x_780 : bool = u_xlatb4.z;
  u_xlat1.z = select(-0.0f, -1.0f, x_780);
  let x_783 : vec4<f32> = u_xlat1;
  let x_785 : vec4<f32> = u_xlat6;
  let x_787 : vec3<f32> = (vec3<f32>(x_783.x, x_783.y, x_783.z) + vec3<f32>(x_785.y, x_785.z, x_785.w));
  let x_788 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_787.x, x_787.y, x_787.z, x_788.w);
  let x_790 : vec4<f32> = u_xlat1;
  let x_793 : vec3<f32> = max(vec3<f32>(x_790.x, x_790.y, x_790.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_794 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_794.x, x_793.x, x_793.y, x_793.z);
  let x_796 : vec4<f32> = u_xlat6;
  u_xlat1.x = dot(x_796, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_801 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_801) + 4.0f);
  let x_808 : f32 = u_xlat1.x;
  u_xlatu1 = u32(x_808);
  let x_812 : u32 = u_xlatu1;
  u_xlati1 = (bitcast<i32>(x_812) << bitcast<u32>(2i));
  let x_815 : vec3<f32> = vs_INTERP0;
  let x_817 : i32 = u_xlati1;
  let x_820 : i32 = u_xlati1;
  let x_824 : vec4<f32> = x_694.x_MainLightWorldToShadow[((x_817 + 1i) / 4i)][((x_820 + 1i) % 4i)];
  let x_826 : vec3<f32> = (vec3<f32>(x_815.y, x_815.y, x_815.y) * vec3<f32>(x_824.x, x_824.y, x_824.z));
  let x_827 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_826.x, x_826.y, x_826.z, x_827.w);
  let x_829 : i32 = u_xlati1;
  let x_831 : i32 = u_xlati1;
  let x_834 : vec4<f32> = x_694.x_MainLightWorldToShadow[(x_829 / 4i)][(x_831 % 4i)];
  let x_836 : vec3<f32> = vs_INTERP0;
  let x_839 : vec4<f32> = u_xlat4;
  let x_841 : vec3<f32> = ((vec3<f32>(x_834.x, x_834.y, x_834.z) * vec3<f32>(x_836.x, x_836.x, x_836.x)) + vec3<f32>(x_839.x, x_839.y, x_839.z));
  let x_842 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_841.x, x_841.y, x_841.z, x_842.w);
  let x_844 : i32 = u_xlati1;
  let x_847 : i32 = u_xlati1;
  let x_851 : vec4<f32> = x_694.x_MainLightWorldToShadow[((x_844 + 2i) / 4i)][((x_847 + 2i) % 4i)];
  let x_853 : vec3<f32> = vs_INTERP0;
  let x_856 : vec4<f32> = u_xlat4;
  let x_858 : vec3<f32> = ((vec3<f32>(x_851.x, x_851.y, x_851.z) * vec3<f32>(x_853.z, x_853.z, x_853.z)) + vec3<f32>(x_856.x, x_856.y, x_856.z));
  let x_859 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_858.x, x_858.y, x_858.z, x_859.w);
  let x_861 : vec4<f32> = u_xlat4;
  let x_863 : i32 = u_xlati1;
  let x_866 : i32 = u_xlati1;
  let x_870 : vec4<f32> = x_694.x_MainLightWorldToShadow[((x_863 + 3i) / 4i)][((x_866 + 3i) % 4i)];
  let x_872 : vec3<f32> = (vec3<f32>(x_861.x, x_861.y, x_861.z) + vec3<f32>(x_870.x, x_870.y, x_870.z));
  let x_873 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_872.x, x_872.y, x_872.z, x_873.w);
  let x_882 : vec2<f32> = vs_INTERP4;
  let x_884 : f32 = x_146.x_GlobalMipBias.x;
  let x_885 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_882, x_884);
  u_xlat4 = x_885;
  let x_890 : vec2<f32> = vs_INTERP4;
  let x_892 : f32 = x_146.x_GlobalMipBias.x;
  let x_893 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_890, x_892);
  let x_894 : vec3<f32> = vec3<f32>(x_893.x, x_893.y, x_893.z);
  let x_895 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_894.x, x_894.y, x_894.z, x_895.w);
  let x_897 : vec4<f32> = u_xlat4;
  let x_900 : vec3<f32> = (vec3<f32>(x_897.x, x_897.y, x_897.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_901 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_900.x, x_900.y, x_900.z, x_901.w);
  let x_903 : vec3<f32> = u_xlat11;
  let x_904 : vec4<f32> = u_xlat4;
  u_xlat35 = dot(x_903, vec3<f32>(x_904.x, x_904.y, x_904.z));
  let x_907 : f32 = u_xlat35;
  u_xlat35 = (x_907 + 0.5f);
  let x_910 : f32 = u_xlat35;
  let x_912 : vec4<f32> = u_xlat6;
  let x_914 : vec3<f32> = (vec3<f32>(x_910, x_910, x_910) * vec3<f32>(x_912.x, x_912.y, x_912.z));
  let x_915 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_914.x, x_914.y, x_914.z, x_915.w);
  let x_918 : f32 = u_xlat4.w;
  u_xlat35 = max(x_918, 0.0001f);
  let x_921 : vec4<f32> = u_xlat4;
  let x_923 : f32 = u_xlat35;
  let x_925 : vec3<f32> = (vec3<f32>(x_921.x, x_921.y, x_921.z) / vec3<f32>(x_923, x_923, x_923));
  let x_926 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_925.x, x_925.y, x_925.z, x_926.w);
  let x_929 : vec4<f32> = x_146.x_ScaledScreenParams;
  let x_930 : vec2<f32> = vec2<f32>(x_929.x, x_929.y);
  let x_934 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_930.x, x_930.y));
  let x_935 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_934.x, x_934.y, x_935.z, x_935.w);
  let x_937 : vec4<f32> = u_xlat6;
  let x_939 : vec4<f32> = hlslcc_FragCoord;
  let x_941 : vec2<f32> = (vec2<f32>(x_937.x, x_937.y) * vec2<f32>(x_939.x, x_939.y));
  let x_942 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_941.x, x_941.y, x_942.z, x_942.w);
  let x_945 : f32 = u_xlat6.y;
  let x_947 : f32 = x_146.x_ScaleBiasRt.x;
  let x_950 : f32 = x_146.x_ScaleBiasRt.y;
  u_xlat35 = ((x_945 * x_947) + x_950);
  let x_952 : f32 = u_xlat35;
  u_xlat6.z = (-(x_952) + 1.0f);
  let x_956 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_956 * vec3<f32>(0.863999963f, 0.863999963f, 0.863999963f));
  let x_960 : vec4<f32> = u_xlat1;
  let x_962 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_960.w, x_960.w, x_960.w) * x_962) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_967 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_967 * vec3<f32>(0.100000001f, 0.100000001f, 0.100000001f)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_974 : f32 = u_xlat0.x;
  u_xlat12.z = (-(x_974) + 1.0f);
  let x_979 : f32 = u_xlat12.z;
  let x_981 : f32 = u_xlat12.z;
  u_xlat35 = (x_979 * x_981);
  let x_983 : f32 = u_xlat35;
  u_xlat35 = max(x_983, 0.0078125f);
  let x_986 : f32 = u_xlat35;
  let x_987 : f32 = u_xlat35;
  u_xlat36 = (x_986 * x_987);
  let x_990 : f32 = u_xlat0.x;
  u_xlat0.x = (x_990 + 0.136000037f);
  let x_995 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_995, 1.0f);
  let x_998 : f32 = u_xlat35;
  u_xlat37 = ((x_998 * 4.0f) + 2.0f);
  let x_1007 : vec4<f32> = u_xlat6;
  let x_1010 : f32 = x_146.x_GlobalMipBias.x;
  let x_1011 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_1007.x, x_1007.z), x_1010);
  u_xlat38 = x_1011.x;
  let x_1013 : f32 = u_xlat38;
  u_xlat6.x = (x_1013 + -1.0f);
  let x_1017 : f32 = x_146.x_AmbientOcclusionParam.w;
  let x_1019 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_1017 * x_1019) + 1.0f);
  let x_1024 : f32 = u_xlat7.x;
  let x_1025 : f32 = u_xlat38;
  u_xlat38 = min(x_1024, x_1025);
  let x_1028 : vec4<f32> = u_xlat1;
  let x_1029 : vec2<f32> = vec2<f32>(x_1028.x, x_1028.y);
  let x_1031 : f32 = u_xlat1.z;
  txVec0 = vec3<f32>(x_1029.x, x_1029.y, x_1031);
  let x_1043 : vec3<f32> = txVec0;
  let x_1045 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1043.xy, x_1043.z);
  u_xlat1.x = x_1045;
  let x_1048 : f32 = x_694.x_MainLightShadowParams.x;
  u_xlat12.x = (-(x_1048) + 1.0f);
  let x_1053 : f32 = u_xlat1.x;
  let x_1055 : f32 = x_694.x_MainLightShadowParams.x;
  let x_1058 : f32 = u_xlat12.x;
  u_xlat1.x = ((x_1053 * x_1055) + x_1058);
  let x_1063 : f32 = u_xlat1.z;
  u_xlatb12 = (0.0f >= x_1063);
  let x_1067 : f32 = u_xlat1.z;
  u_xlatb23 = (x_1067 >= 1.0f);
  let x_1069 : bool = u_xlatb23;
  let x_1070 : bool = u_xlatb12;
  u_xlatb12 = (x_1069 | x_1070);
  let x_1072 : bool = u_xlatb12;
  if (x_1072) {
    x_1073 = 1.0f;
  } else {
    let x_1078 : f32 = u_xlat1.x;
    x_1073 = x_1078;
  }
  let x_1079 : f32 = x_1073;
  u_xlat1.x = x_1079;
  let x_1082 : vec3<f32> = vs_INTERP0;
  let x_1084 : vec3<f32> = x_146.x_WorldSpaceCameraPos;
  u_xlat17 = (x_1082 + -(x_1084));
  let x_1087 : vec3<f32> = u_xlat17;
  let x_1088 : vec3<f32> = u_xlat17;
  u_xlat12.x = dot(x_1087, x_1088);
  let x_1092 : f32 = u_xlat12.x;
  let x_1094 : f32 = x_694.x_MainLightShadowParams.z;
  let x_1097 : f32 = x_694.x_MainLightShadowParams.w;
  u_xlat12.x = ((x_1092 * x_1094) + x_1097);
  let x_1101 : f32 = u_xlat12.x;
  u_xlat12.x = clamp(x_1101, 0.0f, 1.0f);
  let x_1107 : f32 = u_xlat1.x;
  u_xlat23.x = (-(x_1107) + 1.0f);
  let x_1112 : f32 = u_xlat12.x;
  let x_1114 : f32 = u_xlat23.x;
  let x_1117 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1112 * x_1114) + x_1117);
  let x_1120 : vec4<f32> = u_xlat6;
  let x_1123 : vec4<f32> = x_146.x_MainLightColor;
  u_xlat17 = (vec3<f32>(x_1120.x, x_1120.x, x_1120.x) * vec3<f32>(x_1123.x, x_1123.y, x_1123.z));
  let x_1126 : vec3<f32> = u_xlat5;
  let x_1128 : vec3<f32> = u_xlat11;
  u_xlat12.x = dot(-(x_1126), x_1128);
  let x_1132 : f32 = u_xlat12.x;
  let x_1134 : f32 = u_xlat12.x;
  u_xlat12.x = (x_1132 + x_1134);
  let x_1137 : vec3<f32> = u_xlat11;
  let x_1138 : vec3<f32> = u_xlat12;
  let x_1142 : vec3<f32> = u_xlat5;
  let x_1144 : vec3<f32> = ((x_1137 * -(vec3<f32>(x_1138.x, x_1138.x, x_1138.x))) + -(x_1142));
  let x_1145 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1144.x, x_1144.y, x_1144.z, x_1145.w);
  let x_1147 : vec3<f32> = u_xlat11;
  let x_1148 : vec3<f32> = u_xlat5;
  u_xlat12.x = dot(x_1147, x_1148);
  let x_1152 : f32 = u_xlat12.x;
  u_xlat12.x = clamp(x_1152, 0.0f, 1.0f);
  let x_1156 : f32 = u_xlat12.x;
  u_xlat12.x = (-(x_1156) + 1.0f);
  let x_1161 : f32 = u_xlat12.x;
  let x_1163 : f32 = u_xlat12.x;
  u_xlat12.x = (x_1161 * x_1163);
  let x_1167 : f32 = u_xlat12.z;
  u_xlat12.y = ((-(x_1167) * 0.699999988f) + 1.700000048f);
  let x_1174 : vec3<f32> = u_xlat12;
  let x_1176 : vec3<f32> = u_xlat12;
  let x_1178 : vec2<f32> = (vec2<f32>(x_1174.x, x_1174.y) * vec2<f32>(x_1176.x, x_1176.z));
  let x_1179 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_1178.x, x_1178.y, x_1179.z);
  let x_1182 : f32 = u_xlat12.y;
  u_xlat23.x = (x_1182 * 6.0f);
  let x_1194 : vec4<f32> = u_xlat7;
  let x_1197 : f32 = u_xlat23.x;
  let x_1198 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1194.x, x_1194.y, x_1194.z), x_1197);
  u_xlat7 = x_1198;
  let x_1200 : f32 = u_xlat7.w;
  u_xlat23.x = (x_1200 + -1.0f);
  let x_1204 : f32 = x_59.unity_SpecCube0_HDR.w;
  let x_1206 : f32 = u_xlat23.x;
  u_xlat23.x = ((x_1204 * x_1206) + 1.0f);
  let x_1211 : f32 = u_xlat23.x;
  u_xlat23.x = max(x_1211, 0.0f);
  let x_1215 : f32 = u_xlat23.x;
  u_xlat23.x = log2(x_1215);
  let x_1219 : f32 = u_xlat23.x;
  let x_1221 : f32 = x_59.unity_SpecCube0_HDR.y;
  u_xlat23.x = (x_1219 * x_1221);
  let x_1225 : f32 = u_xlat23.x;
  u_xlat23.x = exp2(x_1225);
  let x_1229 : f32 = u_xlat23.x;
  let x_1231 : f32 = x_59.unity_SpecCube0_HDR.x;
  u_xlat23.x = (x_1229 * x_1231);
  let x_1234 : vec4<f32> = u_xlat7;
  let x_1236 : vec2<f32> = u_xlat23;
  let x_1238 : vec3<f32> = (vec3<f32>(x_1234.x, x_1234.y, x_1234.z) * vec3<f32>(x_1236.x, x_1236.x, x_1236.x));
  let x_1239 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1238.x, x_1238.y, x_1238.z, x_1239.w);
  let x_1241 : f32 = u_xlat35;
  let x_1243 : f32 = u_xlat35;
  u_xlat23 = ((vec2<f32>(x_1241, x_1241) * vec2<f32>(x_1243, x_1243)) + vec2<f32>(-1.0f, 1.0f));
  let x_1249 : f32 = u_xlat23.y;
  u_xlat34 = (1.0f / x_1249);
  let x_1251 : vec3<f32> = u_xlat2;
  let x_1253 : vec4<f32> = u_xlat0;
  let x_1255 : vec3<f32> = (-(x_1251) + vec3<f32>(x_1253.x, x_1253.x, x_1253.x));
  let x_1256 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1255.x, x_1255.y, x_1255.z, x_1256.w);
  let x_1258 : vec3<f32> = u_xlat12;
  let x_1260 : vec4<f32> = u_xlat8;
  let x_1263 : vec3<f32> = u_xlat2;
  let x_1264 : vec3<f32> = ((vec3<f32>(x_1258.x, x_1258.x, x_1258.x) * vec3<f32>(x_1260.x, x_1260.y, x_1260.z)) + x_1263);
  let x_1265 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1264.x, x_1264.y, x_1264.z, x_1265.w);
  let x_1267 : f32 = u_xlat34;
  let x_1269 : vec4<f32> = u_xlat8;
  let x_1271 : vec3<f32> = (vec3<f32>(x_1267, x_1267, x_1267) * vec3<f32>(x_1269.x, x_1269.y, x_1269.z));
  let x_1272 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1271.x, x_1271.y, x_1271.z, x_1272.w);
  let x_1274 : vec4<f32> = u_xlat7;
  let x_1276 : vec4<f32> = u_xlat8;
  let x_1278 : vec3<f32> = (vec3<f32>(x_1274.x, x_1274.y, x_1274.z) * vec3<f32>(x_1276.x, x_1276.y, x_1276.z));
  let x_1279 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1278.x, x_1278.y, x_1278.z, x_1279.w);
  let x_1281 : vec4<f32> = u_xlat4;
  let x_1283 : vec3<f32> = u_xlat3;
  let x_1285 : vec4<f32> = u_xlat7;
  let x_1287 : vec3<f32> = ((vec3<f32>(x_1281.x, x_1281.y, x_1281.z) * x_1283) + vec3<f32>(x_1285.x, x_1285.y, x_1285.z));
  let x_1288 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1287.x, x_1287.y, x_1287.z, x_1288.w);
  let x_1291 : f32 = u_xlat1.x;
  let x_1293 : f32 = x_59.unity_LightData.z;
  u_xlat0.x = (x_1291 * x_1293);
  let x_1296 : vec3<f32> = u_xlat11;
  let x_1298 : vec4<f32> = x_146.x_MainLightPosition;
  u_xlat1.x = dot(x_1296, vec3<f32>(x_1298.x, x_1298.y, x_1298.z));
  let x_1303 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1303, 0.0f, 1.0f);
  let x_1307 : f32 = u_xlat0.x;
  let x_1309 : f32 = u_xlat1.x;
  u_xlat0.x = (x_1307 * x_1309);
  let x_1312 : vec4<f32> = u_xlat0;
  let x_1314 : vec3<f32> = u_xlat17;
  let x_1315 : vec3<f32> = (vec3<f32>(x_1312.x, x_1312.x, x_1312.x) * x_1314);
  let x_1316 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1315.x, x_1315.y, x_1316.z, x_1315.z);
  let x_1318 : vec3<f32> = u_xlat5;
  let x_1320 : vec4<f32> = x_146.x_MainLightPosition;
  u_xlat17 = (x_1318 + vec3<f32>(x_1320.x, x_1320.y, x_1320.z));
  let x_1323 : vec3<f32> = u_xlat17;
  let x_1324 : vec3<f32> = u_xlat17;
  u_xlat0.x = dot(x_1323, x_1324);
  let x_1328 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1328, 1.17549435e-37f);
  let x_1332 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_1332);
  let x_1335 : vec4<f32> = u_xlat0;
  let x_1337 : vec3<f32> = u_xlat17;
  u_xlat17 = (vec3<f32>(x_1335.x, x_1335.x, x_1335.x) * x_1337);
  let x_1339 : vec3<f32> = u_xlat11;
  let x_1340 : vec3<f32> = u_xlat17;
  u_xlat0.x = dot(x_1339, x_1340);
  let x_1344 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1344, 0.0f, 1.0f);
  let x_1348 : vec4<f32> = x_146.x_MainLightPosition;
  let x_1350 : vec3<f32> = u_xlat17;
  u_xlat35 = dot(vec3<f32>(x_1348.x, x_1348.y, x_1348.z), x_1350);
  let x_1352 : f32 = u_xlat35;
  u_xlat35 = clamp(x_1352, 0.0f, 1.0f);
  let x_1355 : f32 = u_xlat0.x;
  let x_1357 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1355 * x_1357);
  let x_1361 : f32 = u_xlat0.x;
  let x_1363 : f32 = u_xlat23.x;
  u_xlat0.x = ((x_1361 * x_1363) + 1.000010014f);
  let x_1368 : f32 = u_xlat35;
  let x_1369 : f32 = u_xlat35;
  u_xlat35 = (x_1368 * x_1369);
  let x_1372 : f32 = u_xlat0.x;
  let x_1374 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1372 * x_1374);
  let x_1377 : f32 = u_xlat35;
  u_xlat35 = max(x_1377, 0.100000001f);
  let x_1380 : f32 = u_xlat0.x;
  let x_1381 : f32 = u_xlat35;
  u_xlat0.x = (x_1380 * x_1381);
  let x_1384 : f32 = u_xlat37;
  let x_1386 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1384 * x_1386);
  let x_1389 : f32 = u_xlat36;
  let x_1391 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1389 / x_1391);
  let x_1394 : vec3<f32> = u_xlat2;
  let x_1395 : vec4<f32> = u_xlat0;
  let x_1398 : vec3<f32> = u_xlat3;
  u_xlat17 = ((x_1394 * vec3<f32>(x_1395.x, x_1395.x, x_1395.x)) + x_1398);
  let x_1400 : vec4<f32> = u_xlat1;
  let x_1402 : vec3<f32> = u_xlat17;
  let x_1403 : vec3<f32> = (vec3<f32>(x_1400.x, x_1400.y, x_1400.w) * x_1402);
  let x_1404 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1403.x, x_1403.y, x_1404.z, x_1403.z);
  let x_1407 : f32 = x_146.x_AdditionalLightsCount.x;
  let x_1409 : f32 = x_59.unity_LightData.y;
  u_xlat0.x = min(x_1407, x_1409);
  let x_1414 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1414));
  u_xlat17.x = 0.0f;
  u_xlat17.y = 0.0f;
  u_xlat17.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1426 : u32 = u_xlatu_loop_1;
    let x_1427 : u32 = u_xlatu0;
    if ((x_1426 < x_1427)) {
    } else {
      break;
    }
    let x_1430 : u32 = u_xlatu_loop_1;
    u_xlatu7 = (x_1430 >> 2u);
    let x_1433 : u32 = u_xlatu_loop_1;
    u_xlati18 = bitcast<i32>((x_1433 & 3u));
    let x_1436 : u32 = u_xlatu7;
    let x_1439 : vec4<f32> = x_59.unity_LightIndices[bitcast<i32>(x_1436)];
    let x_1449 : i32 = u_xlati18;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1454 : vec4<u32> = indexable[x_1449];
    u_xlat7.x = dot(x_1439, bitcast<vec4<f32>>(x_1454));
    let x_1460 : f32 = u_xlat7.x;
    u_xlati7 = i32(x_1460);
    let x_1462 : vec3<f32> = vs_INTERP0;
    let x_1474 : i32 = u_xlati7;
    let x_1476 : vec4<f32> = x_1473.x_AdditionalLightsPosition[x_1474];
    let x_1479 : i32 = u_xlati7;
    let x_1481 : vec4<f32> = x_1473.x_AdditionalLightsPosition[x_1479];
    u_xlat18 = ((-(x_1462) * vec3<f32>(x_1476.w, x_1476.w, x_1476.w)) + vec3<f32>(x_1481.x, x_1481.y, x_1481.z));
    let x_1484 : vec3<f32> = u_xlat18;
    let x_1485 : vec3<f32> = u_xlat18;
    u_xlat8.x = dot(x_1484, x_1485);
    let x_1489 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_1489, 6.10351562e-05f);
    let x_1495 : f32 = u_xlat8.x;
    u_xlat19 = inverseSqrt(x_1495);
    let x_1498 : vec3<f32> = u_xlat18;
    let x_1499 : f32 = u_xlat19;
    u_xlat9 = (x_1498 * vec3<f32>(x_1499, x_1499, x_1499));
    let x_1504 : f32 = u_xlat8.x;
    u_xlat30 = (1.0f / x_1504);
    let x_1507 : f32 = u_xlat8.x;
    let x_1508 : i32 = u_xlati7;
    let x_1510 : f32 = x_1473.x_AdditionalLightsAttenuation[x_1508].x;
    u_xlat8.x = (x_1507 * x_1510);
    let x_1514 : f32 = u_xlat8.x;
    let x_1517 : f32 = u_xlat8.x;
    u_xlat8.x = ((-(x_1514) * x_1517) + 1.0f);
    let x_1522 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_1522, 0.0f);
    let x_1526 : f32 = u_xlat8.x;
    let x_1528 : f32 = u_xlat8.x;
    u_xlat8.x = (x_1526 * x_1528);
    let x_1532 : f32 = u_xlat8.x;
    let x_1533 : f32 = u_xlat30;
    u_xlat8.x = (x_1532 * x_1533);
    let x_1536 : i32 = u_xlati7;
    let x_1538 : vec4<f32> = x_1473.x_AdditionalLightsSpotDir[x_1536];
    let x_1540 : vec3<f32> = u_xlat9;
    u_xlat30 = dot(vec3<f32>(x_1538.x, x_1538.y, x_1538.z), x_1540);
    let x_1542 : f32 = u_xlat30;
    let x_1543 : i32 = u_xlati7;
    let x_1545 : f32 = x_1473.x_AdditionalLightsAttenuation[x_1543].z;
    let x_1547 : i32 = u_xlati7;
    let x_1549 : f32 = x_1473.x_AdditionalLightsAttenuation[x_1547].w;
    u_xlat30 = ((x_1542 * x_1545) + x_1549);
    let x_1551 : f32 = u_xlat30;
    u_xlat30 = clamp(x_1551, 0.0f, 1.0f);
    let x_1553 : f32 = u_xlat30;
    let x_1554 : f32 = u_xlat30;
    u_xlat30 = (x_1553 * x_1554);
    let x_1556 : f32 = u_xlat30;
    let x_1558 : f32 = u_xlat8.x;
    u_xlat8.x = (x_1556 * x_1558);
    let x_1562 : vec4<f32> = u_xlat6;
    let x_1564 : i32 = u_xlati7;
    let x_1566 : vec4<f32> = x_1473.x_AdditionalLightsColor[x_1564];
    u_xlat10 = (vec3<f32>(x_1562.x, x_1562.x, x_1562.x) * vec3<f32>(x_1566.x, x_1566.y, x_1566.z));
    let x_1569 : vec3<f32> = u_xlat11;
    let x_1570 : vec3<f32> = u_xlat9;
    u_xlat7.x = dot(x_1569, x_1570);
    let x_1574 : f32 = u_xlat7.x;
    u_xlat7.x = clamp(x_1574, 0.0f, 1.0f);
    let x_1578 : f32 = u_xlat7.x;
    let x_1580 : f32 = u_xlat8.x;
    u_xlat7.x = (x_1578 * x_1580);
    let x_1583 : vec4<f32> = u_xlat7;
    let x_1585 : vec3<f32> = u_xlat10;
    let x_1586 : vec3<f32> = (vec3<f32>(x_1583.x, x_1583.x, x_1583.x) * x_1585);
    let x_1587 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1586.x, x_1587.y, x_1586.y, x_1586.z);
    let x_1589 : vec3<f32> = u_xlat18;
    let x_1590 : f32 = u_xlat19;
    let x_1593 : vec3<f32> = u_xlat5;
    let x_1594 : vec3<f32> = ((x_1589 * vec3<f32>(x_1590, x_1590, x_1590)) + x_1593);
    let x_1595 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1594.x, x_1594.y, x_1594.z, x_1595.w);
    let x_1598 : vec4<f32> = u_xlat7;
    let x_1600 : vec4<f32> = u_xlat7;
    u_xlat40 = dot(vec3<f32>(x_1598.x, x_1598.y, x_1598.z), vec3<f32>(x_1600.x, x_1600.y, x_1600.z));
    let x_1603 : f32 = u_xlat40;
    u_xlat40 = max(x_1603, 1.17549435e-37f);
    let x_1605 : f32 = u_xlat40;
    u_xlat40 = inverseSqrt(x_1605);
    let x_1607 : f32 = u_xlat40;
    let x_1609 : vec4<f32> = u_xlat7;
    let x_1611 : vec3<f32> = (vec3<f32>(x_1607, x_1607, x_1607) * vec3<f32>(x_1609.x, x_1609.y, x_1609.z));
    let x_1612 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1611.x, x_1611.y, x_1611.z, x_1612.w);
    let x_1614 : vec3<f32> = u_xlat11;
    let x_1615 : vec4<f32> = u_xlat7;
    u_xlat7.w = dot(x_1614, vec3<f32>(x_1615.x, x_1615.y, x_1615.z));
    let x_1620 : f32 = u_xlat7.w;
    u_xlat7.w = clamp(x_1620, 0.0f, 1.0f);
    let x_1623 : vec3<f32> = u_xlat9;
    let x_1624 : vec4<f32> = u_xlat7;
    u_xlat7.x = dot(x_1623, vec3<f32>(x_1624.x, x_1624.y, x_1624.z));
    let x_1629 : f32 = u_xlat7.x;
    u_xlat7.x = clamp(x_1629, 0.0f, 1.0f);
    let x_1632 : vec4<f32> = u_xlat7;
    let x_1634 : vec4<f32> = u_xlat7;
    let x_1636 : vec2<f32> = (vec2<f32>(x_1632.x, x_1632.w) * vec2<f32>(x_1634.x, x_1634.w));
    let x_1637 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1636.x, x_1636.y, x_1637.z, x_1637.w);
    let x_1640 : f32 = u_xlat7.y;
    let x_1642 : f32 = u_xlat23.x;
    u_xlat18.x = ((x_1640 * x_1642) + 1.000010014f);
    let x_1647 : f32 = u_xlat18.x;
    let x_1649 : f32 = u_xlat18.x;
    u_xlat18.x = (x_1647 * x_1649);
    let x_1653 : f32 = u_xlat7.x;
    u_xlat7.x = max(x_1653, 0.100000001f);
    let x_1657 : f32 = u_xlat7.x;
    let x_1659 : f32 = u_xlat18.x;
    u_xlat7.x = (x_1657 * x_1659);
    let x_1662 : f32 = u_xlat37;
    let x_1664 : f32 = u_xlat7.x;
    u_xlat7.x = (x_1662 * x_1664);
    let x_1667 : f32 = u_xlat36;
    let x_1669 : f32 = u_xlat7.x;
    u_xlat7.x = (x_1667 / x_1669);
    let x_1672 : vec3<f32> = u_xlat2;
    let x_1673 : vec4<f32> = u_xlat7;
    let x_1676 : vec3<f32> = u_xlat3;
    let x_1677 : vec3<f32> = ((x_1672 * vec3<f32>(x_1673.x, x_1673.x, x_1673.x)) + x_1676);
    let x_1678 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1677.x, x_1677.y, x_1677.z, x_1678.w);
    let x_1680 : vec4<f32> = u_xlat7;
    let x_1682 : vec4<f32> = u_xlat8;
    let x_1685 : vec3<f32> = u_xlat17;
    u_xlat17 = ((vec3<f32>(x_1680.x, x_1680.y, x_1680.z) * vec3<f32>(x_1682.x, x_1682.z, x_1682.w)) + x_1685);

    continuing {
      let x_1687 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1687 + bitcast<u32>(1i));
    }
  }
  let x_1689 : vec4<f32> = u_xlat4;
  let x_1691 : f32 = u_xlat38;
  let x_1694 : vec4<f32> = u_xlat1;
  let x_1696 : vec3<f32> = ((vec3<f32>(x_1689.x, x_1689.y, x_1689.z) * vec3<f32>(x_1691, x_1691, x_1691)) + vec3<f32>(x_1694.x, x_1694.y, x_1694.w));
  let x_1697 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1696.x, x_1696.y, x_1696.z, x_1697.w);
  let x_1701 : vec3<f32> = u_xlat17;
  let x_1702 : vec4<f32> = u_xlat0;
  let x_1704 : vec3<f32> = (x_1701 + vec3<f32>(x_1702.x, x_1702.y, x_1702.z));
  let x_1705 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1704.x, x_1704.y, x_1704.z, x_1705.w);
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

