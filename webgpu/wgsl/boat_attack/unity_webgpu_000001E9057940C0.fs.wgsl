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

@group(0) @binding(4) var x_MainTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainTex : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_146 : PGlobals;

var<private> vs_INTERP0 : vec3<f32>;

@group(0) @binding(7) var Texture2D_D7D66558 : texture_2d<f32>;

@group(0) @binding(15) var samplerTexture2D_D7D66558 : sampler;

@group(1) @binding(4) var<uniform> x_206 : UnityPerMaterial;

@group(0) @binding(5) var Texture2D_DE8BF47E : texture_2d<f32>;

@group(0) @binding(13) var samplerTexture2D_DE8BF47E : sampler;

@group(0) @binding(6) var Texture2D_C005B064 : texture_2d<f32>;

@group(0) @binding(14) var samplerTexture2D_C005B064 : sampler;

@group(0) @binding(3) var x_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1 : texture_2d<f32>;

@group(0) @binding(11) var sampler_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1 : sampler;

@group(1) @binding(3) var<uniform> x_690 : MainLightShadows;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1439 : AdditionalLights;

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
  var u_xlat12 : vec2<f32>;
  var u_xlat15 : vec3<f32>;
  var u_xlat22 : f32;
  var x_650 : f32;
  var x_663 : f32;
  var x_675 : f32;
  var u_xlat8 : vec4<f32>;
  var u_xlatb6 : vec4<bool>;
  var u_xlatu11 : u32;
  var u_xlati11 : i32;
  var u_xlat38 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatb22 : bool;
  var u_xlatb33 : bool;
  var x_1080 : f32;
  var u_xlat17 : vec3<f32>;
  var u_xlat33 : f32;
  var u_xlat19 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu35 : u32;
  var u_xlati7 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati35 : i32;
  var u_xlat40 : f32;
  var u_xlat9 : vec3<f32>;
  var u_xlat30 : f32;
  var u_xlat10 : vec3<f32>;
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
  let x_322 : f32 = u_xlat1.x;
  u_xlat12.x = ((x_322 * -2.0f) + 3.0f);
  let x_327 : f32 = u_xlat1.x;
  let x_329 : f32 = u_xlat1.x;
  u_xlat1.x = (x_327 * x_329);
  let x_333 : f32 = u_xlat1.x;
  let x_335 : f32 = u_xlat12.x;
  u_xlat1.x = (x_333 * x_335);
  let x_338 : vec4<f32> = u_xlat1;
  let x_341 : vec2<f32> = min(vec2<f32>(x_338.x, x_338.w), vec2<f32>(1.0f, 1.0f));
  let x_342 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_341.x, x_342.y, x_342.z, x_341.y);
  let x_345 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_345) + 1.0f);
  let x_349 : vec4<f32> = u_xlat4;
  let x_351 : vec4<f32> = u_xlat6;
  u_xlat2 = (vec3<f32>(x_349.x, x_349.y, x_349.z) + -(vec3<f32>(x_351.x, x_351.y, x_351.z)));
  let x_355 : vec4<f32> = u_xlat1;
  let x_357 : vec3<f32> = u_xlat2;
  let x_359 : vec4<f32> = u_xlat6;
  u_xlat2 = ((vec3<f32>(x_355.x, x_355.x, x_355.x) * x_357) + vec3<f32>(x_359.x, x_359.y, x_359.z));
  let x_362 : vec4<f32> = u_xlat1;
  let x_364 : vec3<f32> = u_xlat2;
  u_xlat3 = (vec3<f32>(x_362.w, x_362.w, x_362.w) * x_364);
  let x_372 : vec3<f32> = u_xlat5;
  let x_375 : f32 = x_146.x_GlobalMipBias.x;
  let x_376 : vec4<f32> = textureSampleBias(Texture2D_C005B064, samplerTexture2D_C005B064, vec2<f32>(x_372.x, x_372.y), x_375);
  u_xlat15 = vec3<f32>(x_376.x, x_376.y, x_376.w);
  let x_379 : f32 = u_xlat15.x;
  let x_381 : f32 = u_xlat15.z;
  u_xlat15.x = (x_379 * x_381);
  let x_384 : vec3<f32> = u_xlat15;
  let x_389 : vec2<f32> = ((vec2<f32>(x_384.x, x_384.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_390 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_389.x, x_389.y, x_390.z);
  let x_392 : vec3<f32> = u_xlat5;
  let x_394 : vec3<f32> = u_xlat5;
  u_xlat12.x = dot(vec2<f32>(x_392.x, x_392.y), vec2<f32>(x_394.x, x_394.y));
  let x_399 : f32 = u_xlat12.x;
  u_xlat12.x = min(x_399, 1.0f);
  let x_403 : f32 = u_xlat12.x;
  u_xlat12.x = (-(x_403) + 1.0f);
  let x_408 : f32 = u_xlat12.x;
  u_xlat12.x = sqrt(x_408);
  let x_412 : f32 = u_xlat12.x;
  u_xlat5.z = max(x_412, 1.00000002e-16f);
  let x_419 : vec4<f32> = x_59.unity_ObjectToWorld[0i];
  let x_422 : vec4<f32> = x_59.unity_ObjectToWorld[0i];
  u_xlat12.x = dot(vec3<f32>(x_419.x, x_419.y, x_419.z), vec3<f32>(x_422.x, x_422.y, x_422.z));
  let x_427 : f32 = u_xlat12.x;
  u_xlat6.x = sqrt(x_427);
  let x_431 : vec4<f32> = x_59.unity_ObjectToWorld[1i];
  let x_434 : vec4<f32> = x_59.unity_ObjectToWorld[1i];
  u_xlat12.x = dot(vec3<f32>(x_431.x, x_431.y, x_431.z), vec3<f32>(x_434.x, x_434.y, x_434.z));
  let x_439 : f32 = u_xlat12.x;
  u_xlat6.y = sqrt(x_439);
  let x_444 : vec4<f32> = x_59.unity_ObjectToWorld[2i];
  let x_447 : vec4<f32> = x_59.unity_ObjectToWorld[2i];
  u_xlat12.x = dot(vec3<f32>(x_444.x, x_444.y, x_444.z), vec3<f32>(x_447.x, x_447.y, x_447.z));
  let x_452 : f32 = u_xlat12.x;
  u_xlat6.z = sqrt(x_452);
  let x_455 : vec4<f32> = u_xlat6;
  let x_457 : vec4<f32> = u_xlat6;
  u_xlat12.x = dot(vec3<f32>(x_455.x, x_455.y, x_455.z), vec3<f32>(x_457.x, x_457.y, x_457.z));
  let x_462 : f32 = u_xlat12.x;
  u_xlat12.x = sqrt(x_462);
  let x_466 : f32 = u_xlat12.x;
  let x_469 : f32 = x_206.Vector1_90E376AD;
  u_xlat12.x = (x_466 * x_469);
  let x_473 : f32 = u_xlat12.x;
  u_xlat12.x = (x_473 * 30.0f);
  let x_477 : vec2<f32> = u_xlat12;
  let x_479 : vec4<f32> = vs_INTERP3;
  u_xlat12 = (vec2<f32>(x_477.x, x_477.x) * vec2<f32>(x_479.x, x_479.y));
  let x_487 : vec2<f32> = u_xlat12;
  let x_489 : f32 = x_146.x_GlobalMipBias.x;
  let x_490 : vec4<f32> = textureSampleBias(x_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1, sampler_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1, x_487, x_489);
  u_xlat15 = vec3<f32>(x_490.x, x_490.y, x_490.w);
  let x_493 : f32 = u_xlat15.x;
  let x_495 : f32 = u_xlat15.z;
  u_xlat15.x = (x_493 * x_495);
  let x_498 : vec3<f32> = u_xlat15;
  u_xlat12 = ((vec2<f32>(x_498.x, x_498.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_502 : vec2<f32> = u_xlat12;
  let x_503 : vec2<f32> = u_xlat12;
  u_xlat35 = dot(x_502, x_503);
  let x_505 : f32 = u_xlat35;
  u_xlat35 = min(x_505, 1.0f);
  let x_507 : f32 = u_xlat35;
  u_xlat35 = (-(x_507) + 1.0f);
  let x_510 : f32 = u_xlat35;
  u_xlat35 = sqrt(x_510);
  let x_512 : f32 = u_xlat35;
  u_xlat35 = max(x_512, 1.00000002e-16f);
  let x_514 : vec2<f32> = u_xlat12;
  let x_515 : vec3<f32> = u_xlat18;
  let x_517 : vec2<f32> = (x_514 + vec2<f32>(x_515.x, x_515.y));
  let x_518 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_517.x, x_517.y, x_518.z, x_518.w);
  let x_520 : f32 = u_xlat35;
  let x_522 : f32 = u_xlat18.z;
  u_xlat6.z = (x_520 * x_522);
  let x_525 : vec4<f32> = u_xlat6;
  let x_527 : vec4<f32> = u_xlat6;
  u_xlat12.x = dot(vec3<f32>(x_525.x, x_525.y, x_525.z), vec3<f32>(x_527.x, x_527.y, x_527.z));
  let x_532 : f32 = u_xlat12.x;
  u_xlat12.x = max(x_532, 1.17549435e-37f);
  let x_536 : f32 = u_xlat12.x;
  u_xlat12.x = inverseSqrt(x_536);
  let x_539 : vec4<f32> = u_xlat6;
  let x_541 : vec2<f32> = u_xlat12;
  let x_544 : vec3<f32> = u_xlat5;
  u_xlat15 = ((vec3<f32>(x_539.x, x_539.y, x_539.z) * vec3<f32>(x_541.x, x_541.x, x_541.x)) + -(x_544));
  let x_547 : vec4<f32> = u_xlat1;
  let x_549 : vec3<f32> = u_xlat15;
  let x_551 : vec3<f32> = u_xlat5;
  let x_552 : vec3<f32> = ((vec3<f32>(x_547.x, x_547.x, x_547.x) * x_549) + x_551);
  let x_553 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_553.x, x_552.x, x_552.y, x_552.z);
  let x_556 : f32 = u_xlat0.x;
  u_xlat0.x = (-(abs(x_556)) + 1.0f);
  let x_561 : vec4<f32> = u_xlat0;
  let x_562 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_561 * vec4<f32>(x_562.x, x_562.z, x_562.z, x_562.z));
  let x_566 : f32 = u_xlat0.x;
  let x_568 : f32 = x_206.Vector1_6E11FCEA;
  u_xlat0.x = (x_566 * x_568);
  let x_572 : f32 = u_xlat1.x;
  let x_574 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_572 * x_574) + -0.850000024f);
  let x_580 : f32 = u_xlat1.w;
  let x_582 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_580 * x_582) + 0.850000024f);
  let x_588 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_588, 0.0f, 1.0f);
  let x_591 : vec4<f32> = u_xlat4;
  let x_593 : vec4<f32> = vs_INTERP2;
  let x_596 : vec4<f32> = u_xlat0;
  u_xlat11 = ((vec3<f32>(x_591.y, x_591.y, x_591.y) * vec3<f32>(x_593.x, x_593.y, x_593.z)) + vec3<f32>(x_596.y, x_596.z, x_596.w));
  let x_599 : vec4<f32> = u_xlat4;
  let x_601 : vec3<f32> = vs_INTERP1;
  let x_603 : vec3<f32> = u_xlat11;
  u_xlat11 = ((vec3<f32>(x_599.w, x_599.w, x_599.w) * x_601) + x_603);
  let x_605 : vec3<f32> = u_xlat11;
  let x_606 : vec3<f32> = u_xlat11;
  u_xlat1.x = dot(x_605, x_606);
  let x_610 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_610);
  let x_613 : vec3<f32> = u_xlat11;
  let x_614 : vec4<f32> = u_xlat1;
  let x_616 : vec3<f32> = (x_613 * vec3<f32>(x_614.x, x_614.x, x_614.x));
  let x_617 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_616.x, x_616.y, x_616.z, x_617.w);
  let x_621 : f32 = x_146.unity_OrthoParams.w;
  u_xlatb11.x = (x_621 == 0.0f);
  let x_624 : vec3<f32> = vs_INTERP0;
  let x_629 : vec3<f32> = x_146.x_WorldSpaceCameraPos;
  let x_630 : vec3<f32> = (-(x_624) + x_629);
  let x_631 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_630.x, x_630.y, x_630.z, x_631.w);
  let x_634 : vec4<f32> = u_xlat1;
  let x_636 : vec4<f32> = u_xlat1;
  u_xlat22 = dot(vec3<f32>(x_634.x, x_634.y, x_634.z), vec3<f32>(x_636.x, x_636.y, x_636.z));
  let x_639 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_639);
  let x_641 : f32 = u_xlat22;
  let x_643 : vec4<f32> = u_xlat1;
  let x_645 : vec3<f32> = (vec3<f32>(x_641, x_641, x_641) * vec3<f32>(x_643.x, x_643.y, x_643.z));
  let x_646 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_645.x, x_645.y, x_645.z, x_646.w);
  let x_649 : bool = u_xlatb11.x;
  if (x_649) {
    let x_654 : f32 = u_xlat1.x;
    x_650 = x_654;
  } else {
    let x_658 : f32 = x_146.unity_MatrixV[0i].z;
    x_650 = x_658;
  }
  let x_659 : f32 = x_650;
  u_xlat5.x = x_659;
  let x_662 : bool = u_xlatb11.x;
  if (x_662) {
    let x_667 : f32 = u_xlat1.y;
    x_663 = x_667;
  } else {
    let x_670 : f32 = x_146.unity_MatrixV[1i].z;
    x_663 = x_670;
  }
  let x_671 : f32 = x_663;
  u_xlat5.y = x_671;
  let x_674 : bool = u_xlatb11.x;
  if (x_674) {
    let x_679 : f32 = u_xlat1.z;
    x_675 = x_679;
  } else {
    let x_682 : f32 = x_146.unity_MatrixV[2i].z;
    x_675 = x_682;
  }
  let x_683 : f32 = x_675;
  u_xlat5.z = x_683;
  let x_685 : vec3<f32> = vs_INTERP0;
  let x_692 : vec4<f32> = x_690.x_CascadeShadowSplitSpheres0;
  u_xlat11 = (x_685 + -(vec3<f32>(x_692.x, x_692.y, x_692.z)));
  let x_696 : vec3<f32> = vs_INTERP0;
  let x_698 : vec4<f32> = x_690.x_CascadeShadowSplitSpheres1;
  let x_701 : vec3<f32> = (x_696 + -(vec3<f32>(x_698.x, x_698.y, x_698.z)));
  let x_702 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_701.x, x_701.y, x_701.z, x_702.w);
  let x_704 : vec3<f32> = vs_INTERP0;
  let x_706 : vec4<f32> = x_690.x_CascadeShadowSplitSpheres2;
  let x_709 : vec3<f32> = (x_704 + -(vec3<f32>(x_706.x, x_706.y, x_706.z)));
  let x_710 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_709.x, x_709.y, x_709.z, x_710.w);
  let x_712 : vec3<f32> = vs_INTERP0;
  let x_714 : vec4<f32> = x_690.x_CascadeShadowSplitSpheres3;
  u_xlat18 = (x_712 + -(vec3<f32>(x_714.x, x_714.y, x_714.z)));
  let x_719 : vec3<f32> = u_xlat11;
  let x_720 : vec3<f32> = u_xlat11;
  u_xlat8.x = dot(x_719, x_720);
  let x_723 : vec4<f32> = u_xlat1;
  let x_725 : vec4<f32> = u_xlat1;
  u_xlat8.y = dot(vec3<f32>(x_723.x, x_723.y, x_723.z), vec3<f32>(x_725.x, x_725.y, x_725.z));
  let x_729 : vec4<f32> = u_xlat6;
  let x_731 : vec4<f32> = u_xlat6;
  u_xlat8.z = dot(vec3<f32>(x_729.x, x_729.y, x_729.z), vec3<f32>(x_731.x, x_731.y, x_731.z));
  let x_735 : vec3<f32> = u_xlat18;
  let x_736 : vec3<f32> = u_xlat18;
  u_xlat8.w = dot(x_735, x_736);
  let x_742 : vec4<f32> = u_xlat8;
  let x_744 : vec4<f32> = x_690.x_CascadeShadowSplitSphereRadii;
  u_xlatb6 = (x_742 < x_744);
  let x_747 : bool = u_xlatb6.x;
  u_xlat8.x = select(0.0f, 1.0f, x_747);
  let x_751 : bool = u_xlatb6.y;
  u_xlat8.y = select(0.0f, 1.0f, x_751);
  let x_755 : bool = u_xlatb6.z;
  u_xlat8.z = select(0.0f, 1.0f, x_755);
  let x_759 : bool = u_xlatb6.w;
  u_xlat8.w = select(0.0f, 1.0f, x_759);
  let x_763 : bool = u_xlatb6.x;
  u_xlat11.x = select(-0.0f, -1.0f, x_763);
  let x_768 : bool = u_xlatb6.y;
  u_xlat11.y = select(-0.0f, -1.0f, x_768);
  let x_772 : bool = u_xlatb6.z;
  u_xlat11.z = select(-0.0f, -1.0f, x_772);
  let x_775 : vec3<f32> = u_xlat11;
  let x_776 : vec4<f32> = u_xlat8;
  u_xlat11 = (x_775 + vec3<f32>(x_776.y, x_776.z, x_776.w));
  let x_779 : vec3<f32> = u_xlat11;
  let x_781 : vec3<f32> = max(x_779, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_782 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_782.x, x_781.x, x_781.y, x_781.z);
  let x_784 : vec4<f32> = u_xlat8;
  u_xlat11.x = dot(x_784, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_789 : f32 = u_xlat11.x;
  u_xlat11.x = (-(x_789) + 4.0f);
  let x_796 : f32 = u_xlat11.x;
  u_xlatu11 = u32(x_796);
  let x_800 : u32 = u_xlatu11;
  u_xlati11 = (bitcast<i32>(x_800) << bitcast<u32>(2i));
  let x_803 : vec3<f32> = vs_INTERP0;
  let x_805 : i32 = u_xlati11;
  let x_808 : i32 = u_xlati11;
  let x_812 : vec4<f32> = x_690.x_MainLightWorldToShadow[((x_805 + 1i) / 4i)][((x_808 + 1i) % 4i)];
  let x_814 : vec3<f32> = (vec3<f32>(x_803.y, x_803.y, x_803.y) * vec3<f32>(x_812.x, x_812.y, x_812.z));
  let x_815 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_814.x, x_814.y, x_814.z, x_815.w);
  let x_817 : i32 = u_xlati11;
  let x_819 : i32 = u_xlati11;
  let x_822 : vec4<f32> = x_690.x_MainLightWorldToShadow[(x_817 / 4i)][(x_819 % 4i)];
  let x_824 : vec3<f32> = vs_INTERP0;
  let x_827 : vec4<f32> = u_xlat1;
  let x_829 : vec3<f32> = ((vec3<f32>(x_822.x, x_822.y, x_822.z) * vec3<f32>(x_824.x, x_824.x, x_824.x)) + vec3<f32>(x_827.x, x_827.y, x_827.z));
  let x_830 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_829.x, x_829.y, x_829.z, x_830.w);
  let x_832 : i32 = u_xlati11;
  let x_835 : i32 = u_xlati11;
  let x_839 : vec4<f32> = x_690.x_MainLightWorldToShadow[((x_832 + 2i) / 4i)][((x_835 + 2i) % 4i)];
  let x_841 : vec3<f32> = vs_INTERP0;
  let x_844 : vec4<f32> = u_xlat1;
  let x_846 : vec3<f32> = ((vec3<f32>(x_839.x, x_839.y, x_839.z) * vec3<f32>(x_841.z, x_841.z, x_841.z)) + vec3<f32>(x_844.x, x_844.y, x_844.z));
  let x_847 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_846.x, x_846.y, x_846.z, x_847.w);
  let x_849 : vec4<f32> = u_xlat1;
  let x_851 : i32 = u_xlati11;
  let x_854 : i32 = u_xlati11;
  let x_858 : vec4<f32> = x_690.x_MainLightWorldToShadow[((x_851 + 3i) / 4i)][((x_854 + 3i) % 4i)];
  u_xlat11 = (vec3<f32>(x_849.x, x_849.y, x_849.z) + vec3<f32>(x_858.x, x_858.y, x_858.z));
  u_xlat4.w = 1.0f;
  let x_864 : vec4<f32> = x_59.unity_SHAr;
  let x_865 : vec4<f32> = u_xlat4;
  u_xlat1.x = dot(x_864, x_865);
  let x_870 : vec4<f32> = x_59.unity_SHAg;
  let x_871 : vec4<f32> = u_xlat4;
  u_xlat1.y = dot(x_870, x_871);
  let x_876 : vec4<f32> = x_59.unity_SHAb;
  let x_877 : vec4<f32> = u_xlat4;
  u_xlat1.z = dot(x_876, x_877);
  let x_880 : vec4<f32> = u_xlat4;
  let x_882 : vec4<f32> = u_xlat4;
  u_xlat6 = (vec4<f32>(x_880.y, x_880.z, x_880.z, x_880.x) * vec4<f32>(x_882.x, x_882.y, x_882.z, x_882.z));
  let x_887 : vec4<f32> = x_59.unity_SHBr;
  let x_888 : vec4<f32> = u_xlat6;
  u_xlat8.x = dot(x_887, x_888);
  let x_893 : vec4<f32> = x_59.unity_SHBg;
  let x_894 : vec4<f32> = u_xlat6;
  u_xlat8.y = dot(x_893, x_894);
  let x_899 : vec4<f32> = x_59.unity_SHBb;
  let x_900 : vec4<f32> = u_xlat6;
  u_xlat8.z = dot(x_899, x_900);
  let x_904 : f32 = u_xlat4.y;
  let x_906 : f32 = u_xlat4.y;
  u_xlat35 = (x_904 * x_906);
  let x_909 : f32 = u_xlat4.x;
  let x_911 : f32 = u_xlat4.x;
  let x_913 : f32 = u_xlat35;
  u_xlat35 = ((x_909 * x_911) + -(x_913));
  let x_918 : vec4<f32> = x_59.unity_SHC;
  let x_920 : f32 = u_xlat35;
  let x_923 : vec4<f32> = u_xlat8;
  let x_925 : vec3<f32> = ((vec3<f32>(x_918.x, x_918.y, x_918.z) * vec3<f32>(x_920, x_920, x_920)) + vec3<f32>(x_923.x, x_923.y, x_923.z));
  let x_926 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_925.x, x_925.y, x_925.z, x_926.w);
  let x_928 : vec4<f32> = u_xlat1;
  let x_930 : vec4<f32> = u_xlat6;
  let x_932 : vec3<f32> = (vec3<f32>(x_928.x, x_928.y, x_928.z) + vec3<f32>(x_930.x, x_930.y, x_930.z));
  let x_933 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_932.x, x_932.y, x_932.z, x_933.w);
  let x_935 : vec4<f32> = u_xlat1;
  let x_937 : vec3<f32> = max(vec3<f32>(x_935.x, x_935.y, x_935.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_938 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_937.x, x_937.y, x_937.z, x_938.w);
  let x_941 : vec4<f32> = x_146.x_ScaledScreenParams;
  let x_942 : vec2<f32> = vec2<f32>(x_941.x, x_941.y);
  let x_946 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_942.x, x_942.y));
  let x_947 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_946.x, x_946.y, x_947.z, x_947.w);
  let x_949 : vec4<f32> = u_xlat6;
  let x_951 : vec4<f32> = hlslcc_FragCoord;
  let x_953 : vec2<f32> = (vec2<f32>(x_949.x, x_949.y) * vec2<f32>(x_951.x, x_951.y));
  let x_954 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_953.x, x_953.y, x_954.z, x_954.w);
  let x_957 : f32 = u_xlat6.y;
  let x_959 : f32 = x_146.x_ScaleBiasRt.x;
  let x_962 : f32 = x_146.x_ScaleBiasRt.y;
  u_xlat35 = ((x_957 * x_959) + x_962);
  let x_964 : f32 = u_xlat35;
  u_xlat6.z = (-(x_964) + 1.0f);
  let x_968 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_968 * vec3<f32>(0.863999963f, 0.863999963f, 0.863999963f));
  let x_972 : vec4<f32> = u_xlat1;
  let x_974 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_972.w, x_972.w, x_972.w) * x_974) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_979 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_979 * vec3<f32>(0.100000001f, 0.100000001f, 0.100000001f)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_986 : f32 = u_xlat0.x;
  u_xlat34 = (-(x_986) + 1.0f);
  let x_989 : f32 = u_xlat34;
  let x_990 : f32 = u_xlat34;
  u_xlat35 = (x_989 * x_990);
  let x_992 : f32 = u_xlat35;
  u_xlat35 = max(x_992, 0.0078125f);
  let x_995 : f32 = u_xlat35;
  let x_996 : f32 = u_xlat35;
  u_xlat36 = (x_995 * x_996);
  let x_999 : f32 = u_xlat0.x;
  u_xlat0.x = (x_999 + 0.136000037f);
  let x_1004 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_1004, 1.0f);
  let x_1007 : f32 = u_xlat35;
  u_xlat37 = ((x_1007 * 4.0f) + 2.0f);
  let x_1016 : vec4<f32> = u_xlat6;
  let x_1019 : f32 = x_146.x_GlobalMipBias.x;
  let x_1020 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_1016.x, x_1016.z), x_1019);
  u_xlat38 = x_1020.x;
  let x_1022 : f32 = u_xlat38;
  u_xlat6.x = (x_1022 + -1.0f);
  let x_1026 : f32 = x_146.x_AmbientOcclusionParam.w;
  let x_1028 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_1026 * x_1028) + 1.0f);
  let x_1033 : f32 = u_xlat7.x;
  let x_1034 : f32 = u_xlat38;
  u_xlat38 = min(x_1033, x_1034);
  let x_1037 : vec3<f32> = u_xlat11;
  let x_1038 : vec2<f32> = vec2<f32>(x_1037.x, x_1037.y);
  let x_1040 : f32 = u_xlat11.z;
  txVec0 = vec3<f32>(x_1038.x, x_1038.y, x_1040);
  let x_1052 : vec3<f32> = txVec0;
  let x_1054 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1052.xy, x_1052.z);
  u_xlat11.x = x_1054;
  let x_1057 : f32 = x_690.x_MainLightShadowParams.x;
  u_xlat22 = (-(x_1057) + 1.0f);
  let x_1061 : f32 = u_xlat11.x;
  let x_1063 : f32 = x_690.x_MainLightShadowParams.x;
  let x_1065 : f32 = u_xlat22;
  u_xlat11.x = ((x_1061 * x_1063) + x_1065);
  let x_1070 : f32 = u_xlat11.z;
  u_xlatb22 = (0.0f >= x_1070);
  let x_1074 : f32 = u_xlat11.z;
  u_xlatb33 = (x_1074 >= 1.0f);
  let x_1076 : bool = u_xlatb33;
  let x_1077 : bool = u_xlatb22;
  u_xlatb22 = (x_1076 | x_1077);
  let x_1079 : bool = u_xlatb22;
  if (x_1079) {
    x_1080 = 1.0f;
  } else {
    let x_1085 : f32 = u_xlat11.x;
    x_1080 = x_1085;
  }
  let x_1086 : f32 = x_1080;
  u_xlat11.x = x_1086;
  let x_1089 : vec3<f32> = vs_INTERP0;
  let x_1091 : vec3<f32> = x_146.x_WorldSpaceCameraPos;
  u_xlat17 = (x_1089 + -(x_1091));
  let x_1094 : vec3<f32> = u_xlat17;
  let x_1095 : vec3<f32> = u_xlat17;
  u_xlat22 = dot(x_1094, x_1095);
  let x_1097 : f32 = u_xlat22;
  let x_1099 : f32 = x_690.x_MainLightShadowParams.z;
  let x_1102 : f32 = x_690.x_MainLightShadowParams.w;
  u_xlat22 = ((x_1097 * x_1099) + x_1102);
  let x_1104 : f32 = u_xlat22;
  u_xlat22 = clamp(x_1104, 0.0f, 1.0f);
  let x_1108 : f32 = u_xlat11.x;
  u_xlat33 = (-(x_1108) + 1.0f);
  let x_1111 : f32 = u_xlat22;
  let x_1112 : f32 = u_xlat33;
  let x_1115 : f32 = u_xlat11.x;
  u_xlat11.x = ((x_1111 * x_1112) + x_1115);
  let x_1118 : vec4<f32> = u_xlat6;
  let x_1121 : vec4<f32> = x_146.x_MainLightColor;
  u_xlat17 = (vec3<f32>(x_1118.x, x_1118.x, x_1118.x) * vec3<f32>(x_1121.x, x_1121.y, x_1121.z));
  let x_1124 : vec3<f32> = u_xlat5;
  let x_1126 : vec4<f32> = u_xlat4;
  u_xlat22 = dot(-(x_1124), vec3<f32>(x_1126.x, x_1126.y, x_1126.z));
  let x_1129 : f32 = u_xlat22;
  let x_1130 : f32 = u_xlat22;
  u_xlat22 = (x_1129 + x_1130);
  let x_1132 : vec4<f32> = u_xlat4;
  let x_1134 : f32 = u_xlat22;
  let x_1138 : vec3<f32> = u_xlat5;
  let x_1140 : vec3<f32> = ((vec3<f32>(x_1132.x, x_1132.y, x_1132.z) * -(vec3<f32>(x_1134, x_1134, x_1134))) + -(x_1138));
  let x_1141 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1140.x, x_1140.y, x_1140.z, x_1141.w);
  let x_1143 : vec4<f32> = u_xlat4;
  let x_1145 : vec3<f32> = u_xlat5;
  u_xlat22 = dot(vec3<f32>(x_1143.x, x_1143.y, x_1143.z), x_1145);
  let x_1147 : f32 = u_xlat22;
  u_xlat22 = clamp(x_1147, 0.0f, 1.0f);
  let x_1149 : f32 = u_xlat22;
  u_xlat22 = (-(x_1149) + 1.0f);
  let x_1152 : f32 = u_xlat22;
  let x_1153 : f32 = u_xlat22;
  u_xlat22 = (x_1152 * x_1153);
  let x_1155 : f32 = u_xlat22;
  let x_1156 : f32 = u_xlat22;
  u_xlat22 = (x_1155 * x_1156);
  let x_1158 : f32 = u_xlat34;
  u_xlat33 = ((-(x_1158) * 0.699999988f) + 1.700000048f);
  let x_1164 : f32 = u_xlat33;
  let x_1165 : f32 = u_xlat34;
  u_xlat33 = (x_1164 * x_1165);
  let x_1167 : f32 = u_xlat33;
  u_xlat33 = (x_1167 * 6.0f);
  let x_1178 : vec4<f32> = u_xlat7;
  let x_1180 : f32 = u_xlat33;
  let x_1181 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1178.x, x_1178.y, x_1178.z), x_1180);
  u_xlat7 = x_1181;
  let x_1183 : f32 = u_xlat7.w;
  u_xlat33 = (x_1183 + -1.0f);
  let x_1186 : f32 = x_59.unity_SpecCube0_HDR.w;
  let x_1187 : f32 = u_xlat33;
  u_xlat33 = ((x_1186 * x_1187) + 1.0f);
  let x_1190 : f32 = u_xlat33;
  u_xlat33 = max(x_1190, 0.0f);
  let x_1192 : f32 = u_xlat33;
  u_xlat33 = log2(x_1192);
  let x_1194 : f32 = u_xlat33;
  let x_1196 : f32 = x_59.unity_SpecCube0_HDR.y;
  u_xlat33 = (x_1194 * x_1196);
  let x_1198 : f32 = u_xlat33;
  u_xlat33 = exp2(x_1198);
  let x_1200 : f32 = u_xlat33;
  let x_1202 : f32 = x_59.unity_SpecCube0_HDR.x;
  u_xlat33 = (x_1200 * x_1202);
  let x_1204 : vec4<f32> = u_xlat7;
  let x_1206 : f32 = u_xlat33;
  let x_1208 : vec3<f32> = (vec3<f32>(x_1204.x, x_1204.y, x_1204.z) * vec3<f32>(x_1206, x_1206, x_1206));
  let x_1209 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1208.x, x_1208.y, x_1208.z, x_1209.w);
  let x_1211 : f32 = u_xlat35;
  let x_1213 : f32 = u_xlat35;
  let x_1217 : vec2<f32> = ((vec2<f32>(x_1211, x_1211) * vec2<f32>(x_1213, x_1213)) + vec2<f32>(-1.0f, 1.0f));
  let x_1218 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1217.x, x_1217.y, x_1218.z, x_1218.w);
  let x_1221 : f32 = u_xlat8.y;
  u_xlat33 = (1.0f / x_1221);
  let x_1224 : vec3<f32> = u_xlat2;
  let x_1226 : vec4<f32> = u_xlat0;
  u_xlat19 = (-(x_1224) + vec3<f32>(x_1226.x, x_1226.x, x_1226.x));
  let x_1229 : f32 = u_xlat22;
  let x_1231 : vec3<f32> = u_xlat19;
  let x_1233 : vec3<f32> = u_xlat2;
  u_xlat19 = ((vec3<f32>(x_1229, x_1229, x_1229) * x_1231) + x_1233);
  let x_1235 : f32 = u_xlat33;
  let x_1237 : vec3<f32> = u_xlat19;
  let x_1238 : vec3<f32> = (vec3<f32>(x_1235, x_1235, x_1235) * x_1237);
  let x_1239 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1238.x, x_1239.y, x_1238.y, x_1238.z);
  let x_1241 : vec4<f32> = u_xlat0;
  let x_1243 : vec4<f32> = u_xlat7;
  let x_1245 : vec3<f32> = (vec3<f32>(x_1241.x, x_1241.z, x_1241.w) * vec3<f32>(x_1243.x, x_1243.y, x_1243.z));
  let x_1246 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1245.x, x_1246.y, x_1245.y, x_1245.z);
  let x_1248 : vec4<f32> = u_xlat1;
  let x_1250 : vec3<f32> = u_xlat3;
  let x_1252 : vec4<f32> = u_xlat0;
  let x_1254 : vec3<f32> = ((vec3<f32>(x_1248.x, x_1248.y, x_1248.z) * x_1250) + vec3<f32>(x_1252.x, x_1252.z, x_1252.w));
  let x_1255 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1254.x, x_1255.y, x_1254.y, x_1254.z);
  let x_1258 : f32 = u_xlat11.x;
  let x_1260 : f32 = x_59.unity_LightData.z;
  u_xlat11.x = (x_1258 * x_1260);
  let x_1263 : vec4<f32> = u_xlat4;
  let x_1266 : vec4<f32> = x_146.x_MainLightPosition;
  u_xlat1.x = dot(vec3<f32>(x_1263.x, x_1263.y, x_1263.z), vec3<f32>(x_1266.x, x_1266.y, x_1266.z));
  let x_1271 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1271, 0.0f, 1.0f);
  let x_1275 : f32 = u_xlat11.x;
  let x_1277 : f32 = u_xlat1.x;
  u_xlat11.x = (x_1275 * x_1277);
  let x_1280 : vec3<f32> = u_xlat11;
  let x_1282 : vec3<f32> = u_xlat17;
  let x_1283 : vec3<f32> = (vec3<f32>(x_1280.x, x_1280.x, x_1280.x) * x_1282);
  let x_1284 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1283.x, x_1283.y, x_1283.z, x_1284.w);
  let x_1286 : vec3<f32> = u_xlat5;
  let x_1288 : vec4<f32> = x_146.x_MainLightPosition;
  u_xlat17 = (x_1286 + vec3<f32>(x_1288.x, x_1288.y, x_1288.z));
  let x_1291 : vec3<f32> = u_xlat17;
  let x_1292 : vec3<f32> = u_xlat17;
  u_xlat11.x = dot(x_1291, x_1292);
  let x_1296 : f32 = u_xlat11.x;
  u_xlat11.x = max(x_1296, 1.17549435e-37f);
  let x_1300 : f32 = u_xlat11.x;
  u_xlat11.x = inverseSqrt(x_1300);
  let x_1303 : vec3<f32> = u_xlat11;
  let x_1305 : vec3<f32> = u_xlat17;
  u_xlat17 = (vec3<f32>(x_1303.x, x_1303.x, x_1303.x) * x_1305);
  let x_1307 : vec4<f32> = u_xlat4;
  let x_1309 : vec3<f32> = u_xlat17;
  u_xlat11.x = dot(vec3<f32>(x_1307.x, x_1307.y, x_1307.z), x_1309);
  let x_1313 : f32 = u_xlat11.x;
  u_xlat11.x = clamp(x_1313, 0.0f, 1.0f);
  let x_1317 : vec4<f32> = x_146.x_MainLightPosition;
  let x_1319 : vec3<f32> = u_xlat17;
  u_xlat34 = dot(vec3<f32>(x_1317.x, x_1317.y, x_1317.z), x_1319);
  let x_1321 : f32 = u_xlat34;
  u_xlat34 = clamp(x_1321, 0.0f, 1.0f);
  let x_1324 : f32 = u_xlat11.x;
  let x_1326 : f32 = u_xlat11.x;
  u_xlat11.x = (x_1324 * x_1326);
  let x_1330 : f32 = u_xlat11.x;
  let x_1332 : f32 = u_xlat8.x;
  u_xlat11.x = ((x_1330 * x_1332) + 1.000010014f);
  let x_1337 : f32 = u_xlat34;
  let x_1338 : f32 = u_xlat34;
  u_xlat34 = (x_1337 * x_1338);
  let x_1341 : f32 = u_xlat11.x;
  let x_1343 : f32 = u_xlat11.x;
  u_xlat11.x = (x_1341 * x_1343);
  let x_1346 : f32 = u_xlat34;
  u_xlat34 = max(x_1346, 0.100000001f);
  let x_1349 : f32 = u_xlat11.x;
  let x_1350 : f32 = u_xlat34;
  u_xlat11.x = (x_1349 * x_1350);
  let x_1353 : f32 = u_xlat37;
  let x_1355 : f32 = u_xlat11.x;
  u_xlat11.x = (x_1353 * x_1355);
  let x_1358 : f32 = u_xlat36;
  let x_1360 : f32 = u_xlat11.x;
  u_xlat11.x = (x_1358 / x_1360);
  let x_1363 : vec3<f32> = u_xlat2;
  let x_1364 : vec3<f32> = u_xlat11;
  let x_1367 : vec3<f32> = u_xlat3;
  u_xlat17 = ((x_1363 * vec3<f32>(x_1364.x, x_1364.x, x_1364.x)) + x_1367);
  let x_1369 : vec4<f32> = u_xlat1;
  let x_1371 : vec3<f32> = u_xlat17;
  let x_1372 : vec3<f32> = (vec3<f32>(x_1369.x, x_1369.y, x_1369.z) * x_1371);
  let x_1373 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1372.x, x_1372.y, x_1372.z, x_1373.w);
  let x_1376 : f32 = x_146.x_AdditionalLightsCount.x;
  let x_1378 : f32 = x_59.unity_LightData.y;
  u_xlat11.x = min(x_1376, x_1378);
  let x_1382 : f32 = u_xlat11.x;
  u_xlatu11 = bitcast<u32>(i32(x_1382));
  u_xlat17.x = 0.0f;
  u_xlat17.y = 0.0f;
  u_xlat17.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1394 : u32 = u_xlatu_loop_1;
    let x_1395 : u32 = u_xlatu11;
    if ((x_1394 < x_1395)) {
    } else {
      break;
    }
    let x_1398 : u32 = u_xlatu_loop_1;
    u_xlatu35 = (x_1398 >> 2u);
    let x_1401 : u32 = u_xlatu_loop_1;
    u_xlati7 = bitcast<i32>((x_1401 & 3u));
    let x_1404 : u32 = u_xlatu35;
    let x_1407 : vec4<f32> = x_59.unity_LightIndices[bitcast<i32>(x_1404)];
    let x_1417 : i32 = u_xlati7;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1422 : vec4<u32> = indexable[x_1417];
    u_xlat35 = dot(x_1407, bitcast<vec4<f32>>(x_1422));
    let x_1426 : f32 = u_xlat35;
    u_xlati35 = i32(x_1426);
    let x_1428 : vec3<f32> = vs_INTERP0;
    let x_1440 : i32 = u_xlati35;
    let x_1442 : vec4<f32> = x_1439.x_AdditionalLightsPosition[x_1440];
    let x_1445 : i32 = u_xlati35;
    let x_1447 : vec4<f32> = x_1439.x_AdditionalLightsPosition[x_1445];
    let x_1449 : vec3<f32> = ((-(x_1428) * vec3<f32>(x_1442.w, x_1442.w, x_1442.w)) + vec3<f32>(x_1447.x, x_1447.y, x_1447.z));
    let x_1450 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1449.x, x_1449.y, x_1449.z, x_1450.w);
    let x_1453 : vec4<f32> = u_xlat7;
    let x_1455 : vec4<f32> = u_xlat7;
    u_xlat40 = dot(vec3<f32>(x_1453.x, x_1453.y, x_1453.z), vec3<f32>(x_1455.x, x_1455.y, x_1455.z));
    let x_1458 : f32 = u_xlat40;
    u_xlat40 = max(x_1458, 6.10351562e-05f);
    let x_1461 : f32 = u_xlat40;
    u_xlat19.x = inverseSqrt(x_1461);
    let x_1465 : vec4<f32> = u_xlat7;
    let x_1467 : vec3<f32> = u_xlat19;
    u_xlat9 = (vec3<f32>(x_1465.x, x_1465.y, x_1465.z) * vec3<f32>(x_1467.x, x_1467.x, x_1467.x));
    let x_1471 : f32 = u_xlat40;
    u_xlat30 = (1.0f / x_1471);
    let x_1473 : f32 = u_xlat40;
    let x_1474 : i32 = u_xlati35;
    let x_1476 : f32 = x_1439.x_AdditionalLightsAttenuation[x_1474].x;
    u_xlat40 = (x_1473 * x_1476);
    let x_1478 : f32 = u_xlat40;
    let x_1480 : f32 = u_xlat40;
    u_xlat40 = ((-(x_1478) * x_1480) + 1.0f);
    let x_1483 : f32 = u_xlat40;
    u_xlat40 = max(x_1483, 0.0f);
    let x_1485 : f32 = u_xlat40;
    let x_1486 : f32 = u_xlat40;
    u_xlat40 = (x_1485 * x_1486);
    let x_1488 : f32 = u_xlat40;
    let x_1489 : f32 = u_xlat30;
    u_xlat40 = (x_1488 * x_1489);
    let x_1491 : i32 = u_xlati35;
    let x_1493 : vec4<f32> = x_1439.x_AdditionalLightsSpotDir[x_1491];
    let x_1495 : vec3<f32> = u_xlat9;
    u_xlat30 = dot(vec3<f32>(x_1493.x, x_1493.y, x_1493.z), x_1495);
    let x_1497 : f32 = u_xlat30;
    let x_1498 : i32 = u_xlati35;
    let x_1500 : f32 = x_1439.x_AdditionalLightsAttenuation[x_1498].z;
    let x_1502 : i32 = u_xlati35;
    let x_1504 : f32 = x_1439.x_AdditionalLightsAttenuation[x_1502].w;
    u_xlat30 = ((x_1497 * x_1500) + x_1504);
    let x_1506 : f32 = u_xlat30;
    u_xlat30 = clamp(x_1506, 0.0f, 1.0f);
    let x_1508 : f32 = u_xlat30;
    let x_1509 : f32 = u_xlat30;
    u_xlat30 = (x_1508 * x_1509);
    let x_1511 : f32 = u_xlat40;
    let x_1512 : f32 = u_xlat30;
    u_xlat40 = (x_1511 * x_1512);
    let x_1515 : vec4<f32> = u_xlat6;
    let x_1517 : i32 = u_xlati35;
    let x_1519 : vec4<f32> = x_1439.x_AdditionalLightsColor[x_1517];
    u_xlat10 = (vec3<f32>(x_1515.x, x_1515.x, x_1515.x) * vec3<f32>(x_1519.x, x_1519.y, x_1519.z));
    let x_1522 : vec4<f32> = u_xlat4;
    let x_1524 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(vec3<f32>(x_1522.x, x_1522.y, x_1522.z), x_1524);
    let x_1526 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1526, 0.0f, 1.0f);
    let x_1528 : f32 = u_xlat35;
    let x_1529 : f32 = u_xlat40;
    u_xlat35 = (x_1528 * x_1529);
    let x_1531 : f32 = u_xlat35;
    let x_1533 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1531, x_1531, x_1531) * x_1533);
    let x_1535 : vec4<f32> = u_xlat7;
    let x_1537 : vec3<f32> = u_xlat19;
    let x_1540 : vec3<f32> = u_xlat5;
    let x_1541 : vec3<f32> = ((vec3<f32>(x_1535.x, x_1535.y, x_1535.z) * vec3<f32>(x_1537.x, x_1537.x, x_1537.x)) + x_1540);
    let x_1542 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1541.x, x_1541.y, x_1541.z, x_1542.w);
    let x_1544 : vec4<f32> = u_xlat7;
    let x_1546 : vec4<f32> = u_xlat7;
    u_xlat35 = dot(vec3<f32>(x_1544.x, x_1544.y, x_1544.z), vec3<f32>(x_1546.x, x_1546.y, x_1546.z));
    let x_1549 : f32 = u_xlat35;
    u_xlat35 = max(x_1549, 1.17549435e-37f);
    let x_1551 : f32 = u_xlat35;
    u_xlat35 = inverseSqrt(x_1551);
    let x_1553 : f32 = u_xlat35;
    let x_1555 : vec4<f32> = u_xlat7;
    let x_1557 : vec3<f32> = (vec3<f32>(x_1553, x_1553, x_1553) * vec3<f32>(x_1555.x, x_1555.y, x_1555.z));
    let x_1558 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1557.x, x_1557.y, x_1557.z, x_1558.w);
    let x_1560 : vec4<f32> = u_xlat4;
    let x_1562 : vec4<f32> = u_xlat7;
    u_xlat35 = dot(vec3<f32>(x_1560.x, x_1560.y, x_1560.z), vec3<f32>(x_1562.x, x_1562.y, x_1562.z));
    let x_1565 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1565, 0.0f, 1.0f);
    let x_1567 : vec3<f32> = u_xlat9;
    let x_1568 : vec4<f32> = u_xlat7;
    u_xlat7.x = dot(x_1567, vec3<f32>(x_1568.x, x_1568.y, x_1568.z));
    let x_1573 : f32 = u_xlat7.x;
    u_xlat7.x = clamp(x_1573, 0.0f, 1.0f);
    let x_1576 : f32 = u_xlat35;
    let x_1577 : f32 = u_xlat35;
    u_xlat35 = (x_1576 * x_1577);
    let x_1579 : f32 = u_xlat35;
    let x_1581 : f32 = u_xlat8.x;
    u_xlat35 = ((x_1579 * x_1581) + 1.000010014f);
    let x_1585 : f32 = u_xlat7.x;
    let x_1587 : f32 = u_xlat7.x;
    u_xlat7.x = (x_1585 * x_1587);
    let x_1590 : f32 = u_xlat35;
    let x_1591 : f32 = u_xlat35;
    u_xlat35 = (x_1590 * x_1591);
    let x_1594 : f32 = u_xlat7.x;
    u_xlat7.x = max(x_1594, 0.100000001f);
    let x_1597 : f32 = u_xlat35;
    let x_1599 : f32 = u_xlat7.x;
    u_xlat35 = (x_1597 * x_1599);
    let x_1601 : f32 = u_xlat37;
    let x_1602 : f32 = u_xlat35;
    u_xlat35 = (x_1601 * x_1602);
    let x_1604 : f32 = u_xlat36;
    let x_1605 : f32 = u_xlat35;
    u_xlat35 = (x_1604 / x_1605);
    let x_1607 : vec3<f32> = u_xlat2;
    let x_1608 : f32 = u_xlat35;
    let x_1611 : vec3<f32> = u_xlat3;
    let x_1612 : vec3<f32> = ((x_1607 * vec3<f32>(x_1608, x_1608, x_1608)) + x_1611);
    let x_1613 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1612.x, x_1612.y, x_1612.z, x_1613.w);
    let x_1615 : vec4<f32> = u_xlat7;
    let x_1617 : vec3<f32> = u_xlat10;
    let x_1619 : vec3<f32> = u_xlat17;
    u_xlat17 = ((vec3<f32>(x_1615.x, x_1615.y, x_1615.z) * x_1617) + x_1619);

    continuing {
      let x_1621 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1621 + bitcast<u32>(1i));
    }
  }
  let x_1623 : vec4<f32> = u_xlat0;
  let x_1625 : f32 = u_xlat38;
  let x_1628 : vec4<f32> = u_xlat1;
  let x_1630 : vec3<f32> = ((vec3<f32>(x_1623.x, x_1623.z, x_1623.w) * vec3<f32>(x_1625, x_1625, x_1625)) + vec3<f32>(x_1628.x, x_1628.y, x_1628.z));
  let x_1631 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1630.x, x_1630.y, x_1630.z, x_1631.w);
  let x_1635 : vec3<f32> = u_xlat17;
  let x_1636 : vec4<f32> = u_xlat0;
  let x_1638 : vec3<f32> = (x_1635 + vec3<f32>(x_1636.x, x_1636.y, x_1636.z));
  let x_1639 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1638.x, x_1638.y, x_1638.z, x_1639.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(0) vs_INTERP0_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP0 = vs_INTERP0_param;
  main_1();
  return main_out(SV_Target0);
}

