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

@group(0) @binding(5) var x_MainTex : texture_2d<f32>;

@group(0) @binding(14) var sampler_MainTex : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_146 : PGlobals;

var<private> vs_INTERP0 : vec3<f32>;

@group(0) @binding(8) var Texture2D_D7D66558 : texture_2d<f32>;

@group(0) @binding(17) var samplerTexture2D_D7D66558 : sampler;

@group(1) @binding(4) var<uniform> x_204 : UnityPerMaterial;

@group(0) @binding(6) var Texture2D_DE8BF47E : texture_2d<f32>;

@group(0) @binding(15) var samplerTexture2D_DE8BF47E : sampler;

@group(0) @binding(7) var Texture2D_C005B064 : texture_2d<f32>;

@group(0) @binding(16) var samplerTexture2D_C005B064 : sampler;

@group(0) @binding(4) var x_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1 : texture_2d<f32>;

@group(0) @binding(13) var sampler_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1 : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP4 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_INTERP8 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(3) var<uniform> x_834 : MainLightShadows;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1216 : AdditionalLights;

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
  var u_xlat6 : vec3<f32>;
  var u_xlat36 : f32;
  var u_xlat37 : f32;
  var u_xlat7 : vec4<f32>;
  var u_xlat18 : vec3<f32>;
  var u_xlat12 : vec2<f32>;
  var u_xlat15 : vec3<f32>;
  var u_xlatb1 : bool;
  var x_649 : vec3<f32>;
  var u_xlat16 : f32;
  var u_xlat27 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat38 : f32;
  var u_xlatb6 : bool;
  var u_xlatb17 : bool;
  var u_xlat17 : f32;
  var u_xlat39 : f32;
  var u_xlat40 : f32;
  var u_xlat8 : vec2<f32>;
  var u_xlat19 : vec3<f32>;
  var u_xlatu0 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu36 : u32;
  var u_xlati38 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati36 : i32;
  var u_xlat9 : vec3<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlat33 : f32;
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
  u_xlat6 = vec3<f32>(x_200.x, x_200.y, x_200.z);
  let x_207 : f32 = x_204.Vector1_8B35DE98;
  u_xlat35 = ((-(x_207) * 0.011111f) + 0.949999988f);
  let x_216 : f32 = x_204.Vector1_A492C01C;
  u_xlat36 = (x_216 + -10.0f);
  let x_219 : f32 = u_xlat36;
  let x_222 : f32 = vs_INTERP0.y;
  u_xlat36 = (-(x_219) + x_222);
  let x_224 : f32 = u_xlat36;
  u_xlat36 = (x_224 * 0.050000001f);
  let x_227 : f32 = u_xlat36;
  u_xlat36 = clamp(x_227, 0.0f, 1.0f);
  let x_230 : f32 = u_xlat36;
  u_xlat37 = ((x_230 * -2.0f) + 3.0f);
  let x_235 : f32 = u_xlat36;
  let x_236 : f32 = u_xlat36;
  u_xlat36 = (x_235 * x_236);
  let x_238 : f32 = u_xlat36;
  let x_239 : f32 = u_xlat37;
  u_xlat36 = (x_238 * x_239);
  let x_247 : vec4<f32> = vs_INTERP3;
  let x_250 : f32 = x_146.x_GlobalMipBias.x;
  let x_251 : vec4<f32> = textureSampleBias(Texture2D_DE8BF47E, samplerTexture2D_DE8BF47E, vec2<f32>(x_247.x, x_247.y), x_250);
  u_xlat7 = x_251;
  let x_253 : vec4<f32> = u_xlat7;
  u_xlat18 = ((vec3<f32>(x_253.w, x_253.y, x_253.z) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_260 : vec3<f32> = u_xlat3;
  let x_261 : vec3<f32> = u_xlat18;
  u_xlat3 = (x_260 * vec3<f32>(x_261.y, x_261.y, x_261.y));
  let x_264 : vec3<f32> = u_xlat18;
  let x_266 : vec3<f32> = u_xlat2;
  let x_268 : vec3<f32> = u_xlat3;
  u_xlat2 = ((vec3<f32>(x_264.x, x_264.x, x_264.x) * x_266) + x_268);
  let x_270 : vec3<f32> = u_xlat18;
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
  let x_300 : f32 = u_xlat36;
  let x_302 : f32 = u_xlat1.x;
  let x_304 : f32 = u_xlat35;
  u_xlat1.x = ((x_300 * x_302) + -(x_304));
  let x_309 : f32 = u_xlat1.x;
  u_xlat1.x = (x_309 * 10.0f);
  let x_314 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_314, 0.0f, 1.0f);
  let x_320 : f32 = u_xlat1.x;
  u_xlat12.x = ((x_320 * -2.0f) + 3.0f);
  let x_325 : f32 = u_xlat1.x;
  let x_327 : f32 = u_xlat1.x;
  u_xlat1.x = (x_325 * x_327);
  let x_331 : f32 = u_xlat1.x;
  let x_333 : f32 = u_xlat12.x;
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
  let x_368 : vec3<f32> = u_xlat5;
  let x_371 : f32 = x_146.x_GlobalMipBias.x;
  let x_372 : vec4<f32> = textureSampleBias(Texture2D_C005B064, samplerTexture2D_C005B064, vec2<f32>(x_368.x, x_368.y), x_371);
  u_xlat15 = vec3<f32>(x_372.x, x_372.y, x_372.w);
  let x_375 : f32 = u_xlat15.x;
  let x_377 : f32 = u_xlat15.z;
  u_xlat15.x = (x_375 * x_377);
  let x_380 : vec3<f32> = u_xlat15;
  let x_385 : vec2<f32> = ((vec2<f32>(x_380.x, x_380.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_386 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_385.x, x_385.y, x_386.z);
  let x_388 : vec3<f32> = u_xlat5;
  let x_390 : vec3<f32> = u_xlat5;
  u_xlat12.x = dot(vec2<f32>(x_388.x, x_388.y), vec2<f32>(x_390.x, x_390.y));
  let x_395 : f32 = u_xlat12.x;
  u_xlat12.x = min(x_395, 1.0f);
  let x_399 : f32 = u_xlat12.x;
  u_xlat12.x = (-(x_399) + 1.0f);
  let x_404 : f32 = u_xlat12.x;
  u_xlat12.x = sqrt(x_404);
  let x_408 : f32 = u_xlat12.x;
  u_xlat5.z = max(x_408, 1.00000002e-16f);
  let x_415 : vec4<f32> = x_59.unity_ObjectToWorld[0i];
  let x_418 : vec4<f32> = x_59.unity_ObjectToWorld[0i];
  u_xlat12.x = dot(vec3<f32>(x_415.x, x_415.y, x_415.z), vec3<f32>(x_418.x, x_418.y, x_418.z));
  let x_423 : f32 = u_xlat12.x;
  u_xlat6.x = sqrt(x_423);
  let x_427 : vec4<f32> = x_59.unity_ObjectToWorld[1i];
  let x_430 : vec4<f32> = x_59.unity_ObjectToWorld[1i];
  u_xlat12.x = dot(vec3<f32>(x_427.x, x_427.y, x_427.z), vec3<f32>(x_430.x, x_430.y, x_430.z));
  let x_435 : f32 = u_xlat12.x;
  u_xlat6.y = sqrt(x_435);
  let x_440 : vec4<f32> = x_59.unity_ObjectToWorld[2i];
  let x_443 : vec4<f32> = x_59.unity_ObjectToWorld[2i];
  u_xlat12.x = dot(vec3<f32>(x_440.x, x_440.y, x_440.z), vec3<f32>(x_443.x, x_443.y, x_443.z));
  let x_448 : f32 = u_xlat12.x;
  u_xlat6.z = sqrt(x_448);
  let x_451 : vec3<f32> = u_xlat6;
  let x_452 : vec3<f32> = u_xlat6;
  u_xlat12.x = dot(x_451, x_452);
  let x_456 : f32 = u_xlat12.x;
  u_xlat12.x = sqrt(x_456);
  let x_460 : f32 = u_xlat12.x;
  let x_463 : f32 = x_204.Vector1_90E376AD;
  u_xlat12.x = (x_460 * x_463);
  let x_467 : f32 = u_xlat12.x;
  u_xlat12.x = (x_467 * 30.0f);
  let x_471 : vec2<f32> = u_xlat12;
  let x_473 : vec4<f32> = vs_INTERP3;
  u_xlat12 = (vec2<f32>(x_471.x, x_471.x) * vec2<f32>(x_473.x, x_473.y));
  let x_481 : vec2<f32> = u_xlat12;
  let x_483 : f32 = x_146.x_GlobalMipBias.x;
  let x_484 : vec4<f32> = textureSampleBias(x_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1, sampler_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1, x_481, x_483);
  u_xlat15 = vec3<f32>(x_484.x, x_484.y, x_484.w);
  let x_487 : f32 = u_xlat15.x;
  let x_489 : f32 = u_xlat15.z;
  u_xlat15.x = (x_487 * x_489);
  let x_492 : vec3<f32> = u_xlat15;
  u_xlat12 = ((vec2<f32>(x_492.x, x_492.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_496 : vec2<f32> = u_xlat12;
  let x_497 : vec2<f32> = u_xlat12;
  u_xlat35 = dot(x_496, x_497);
  let x_499 : f32 = u_xlat35;
  u_xlat35 = min(x_499, 1.0f);
  let x_501 : f32 = u_xlat35;
  u_xlat35 = (-(x_501) + 1.0f);
  let x_504 : f32 = u_xlat35;
  u_xlat35 = sqrt(x_504);
  let x_506 : f32 = u_xlat35;
  u_xlat35 = max(x_506, 1.00000002e-16f);
  let x_508 : vec2<f32> = u_xlat12;
  let x_509 : vec3<f32> = u_xlat18;
  let x_511 : vec2<f32> = (x_508 + vec2<f32>(x_509.x, x_509.y));
  let x_512 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_511.x, x_511.y, x_512.z);
  let x_514 : f32 = u_xlat35;
  let x_516 : f32 = u_xlat18.z;
  u_xlat6.z = (x_514 * x_516);
  let x_519 : vec3<f32> = u_xlat6;
  let x_520 : vec3<f32> = u_xlat6;
  u_xlat12.x = dot(x_519, x_520);
  let x_524 : f32 = u_xlat12.x;
  u_xlat12.x = max(x_524, 1.17549435e-37f);
  let x_528 : f32 = u_xlat12.x;
  u_xlat12.x = inverseSqrt(x_528);
  let x_531 : vec3<f32> = u_xlat6;
  let x_532 : vec2<f32> = u_xlat12;
  let x_535 : vec3<f32> = u_xlat5;
  u_xlat15 = ((x_531 * vec3<f32>(x_532.x, x_532.x, x_532.x)) + -(x_535));
  let x_538 : vec4<f32> = u_xlat1;
  let x_540 : vec3<f32> = u_xlat15;
  let x_542 : vec3<f32> = u_xlat5;
  let x_543 : vec3<f32> = ((vec3<f32>(x_538.x, x_538.x, x_538.x) * x_540) + x_542);
  let x_544 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_544.x, x_543.x, x_543.y, x_543.z);
  let x_547 : f32 = u_xlat0.x;
  u_xlat0.x = (-(abs(x_547)) + 1.0f);
  let x_552 : vec4<f32> = u_xlat0;
  let x_553 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_552 * vec4<f32>(x_553.x, x_553.z, x_553.z, x_553.z));
  let x_557 : f32 = u_xlat0.x;
  let x_559 : f32 = x_204.Vector1_6E11FCEA;
  u_xlat0.x = (x_557 * x_559);
  let x_563 : f32 = u_xlat1.x;
  let x_565 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_563 * x_565) + -0.850000024f);
  let x_571 : f32 = u_xlat1.w;
  let x_573 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_571 * x_573) + 0.850000024f);
  let x_579 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_579, 0.0f, 1.0f);
  let x_582 : vec4<f32> = u_xlat4;
  let x_584 : vec4<f32> = vs_INTERP2;
  let x_587 : vec4<f32> = u_xlat0;
  u_xlat11 = ((vec3<f32>(x_582.y, x_582.y, x_582.y) * vec3<f32>(x_584.x, x_584.y, x_584.z)) + vec3<f32>(x_587.y, x_587.z, x_587.w));
  let x_590 : vec4<f32> = u_xlat4;
  let x_592 : vec3<f32> = vs_INTERP1;
  let x_594 : vec3<f32> = u_xlat11;
  u_xlat11 = ((vec3<f32>(x_590.w, x_590.w, x_590.w) * x_592) + x_594);
  let x_596 : vec3<f32> = u_xlat11;
  let x_597 : vec3<f32> = u_xlat11;
  u_xlat1.x = dot(x_596, x_597);
  let x_601 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_601);
  let x_604 : vec3<f32> = u_xlat11;
  let x_605 : vec4<f32> = u_xlat1;
  u_xlat11 = (x_604 * vec3<f32>(x_605.x, x_605.x, x_605.x));
  let x_610 : f32 = x_146.unity_OrthoParams.w;
  u_xlatb1 = (x_610 == 0.0f);
  let x_612 : vec3<f32> = vs_INTERP0;
  let x_617 : vec3<f32> = x_146.x_WorldSpaceCameraPos;
  let x_618 : vec3<f32> = (-(x_612) + x_617);
  let x_619 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_618.x, x_618.y, x_618.z, x_619.w);
  let x_621 : vec4<f32> = u_xlat4;
  let x_623 : vec4<f32> = u_xlat4;
  u_xlat12.x = dot(vec3<f32>(x_621.x, x_621.y, x_621.z), vec3<f32>(x_623.x, x_623.y, x_623.z));
  let x_628 : f32 = u_xlat12.x;
  u_xlat12.x = inverseSqrt(x_628);
  let x_631 : vec2<f32> = u_xlat12;
  let x_633 : vec4<f32> = u_xlat4;
  let x_635 : vec3<f32> = (vec3<f32>(x_631.x, x_631.x, x_631.x) * vec3<f32>(x_633.x, x_633.y, x_633.z));
  let x_636 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_635.x, x_635.y, x_635.z, x_636.w);
  let x_640 : f32 = x_146.unity_MatrixV[0i].z;
  u_xlat5.x = x_640;
  let x_643 : f32 = x_146.unity_MatrixV[1i].z;
  u_xlat5.y = x_643;
  let x_646 : f32 = x_146.unity_MatrixV[2i].z;
  u_xlat5.z = x_646;
  let x_648 : bool = u_xlatb1;
  if (x_648) {
    let x_652 : vec4<f32> = u_xlat4;
    x_649 = vec3<f32>(x_652.x, x_652.y, x_652.z);
  } else {
    let x_655 : vec3<f32> = u_xlat5;
    x_649 = x_655;
  }
  let x_656 : vec3<f32> = x_649;
  let x_657 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_656.x, x_656.y, x_656.z, x_657.w);
  let x_660 : f32 = vs_INTERP0.y;
  let x_662 : f32 = x_146.unity_MatrixV[1i].z;
  u_xlat35 = (x_660 * x_662);
  let x_665 : f32 = x_146.unity_MatrixV[0i].z;
  let x_667 : f32 = vs_INTERP0.x;
  let x_669 : f32 = u_xlat35;
  u_xlat35 = ((x_665 * x_667) + x_669);
  let x_672 : f32 = x_146.unity_MatrixV[2i].z;
  let x_674 : f32 = vs_INTERP0.z;
  let x_676 : f32 = u_xlat35;
  u_xlat35 = ((x_672 * x_674) + x_676);
  let x_678 : f32 = u_xlat35;
  let x_680 : f32 = x_146.unity_MatrixV[3i].z;
  u_xlat35 = (x_678 + x_680);
  let x_682 : f32 = u_xlat35;
  let x_686 : f32 = x_146.x_ProjectionParams.y;
  u_xlat35 = (-(x_682) + -(x_686));
  let x_689 : f32 = u_xlat35;
  u_xlat35 = max(x_689, 0.0f);
  let x_691 : f32 = u_xlat35;
  let x_694 : f32 = x_146.unity_FogParams.x;
  u_xlat35 = (x_691 * x_694);
  let x_703 : vec2<f32> = vs_INTERP4;
  let x_705 : f32 = x_146.x_GlobalMipBias.x;
  let x_706 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_703, x_705);
  let x_707 : vec3<f32> = vec3<f32>(x_706.x, x_706.y, x_706.z);
  let x_708 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_707.x, x_707.y, x_707.z, x_708.w);
  let x_711 : vec4<f32> = x_146.x_ScaledScreenParams;
  let x_712 : vec2<f32> = vec2<f32>(x_711.x, x_711.y);
  let x_716 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_712.x, x_712.y));
  let x_717 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_716.x, x_716.y, x_717.z);
  let x_719 : vec3<f32> = u_xlat5;
  let x_721 : vec4<f32> = hlslcc_FragCoord;
  let x_723 : vec2<f32> = (vec2<f32>(x_719.x, x_719.y) * vec2<f32>(x_721.x, x_721.y));
  let x_724 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_723.x, x_723.y, x_724.z);
  let x_727 : f32 = u_xlat5.y;
  let x_730 : f32 = x_146.x_ScaleBiasRt.x;
  let x_733 : f32 = x_146.x_ScaleBiasRt.y;
  u_xlat36 = ((x_727 * x_730) + x_733);
  let x_735 : f32 = u_xlat36;
  u_xlat5.z = (-(x_735) + 1.0f);
  let x_739 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_739 * vec3<f32>(0.863999963f, 0.863999963f, 0.863999963f));
  let x_743 : vec4<f32> = u_xlat1;
  let x_745 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_743.w, x_743.w, x_743.w) * x_745) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_750 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_750 * vec3<f32>(0.100000001f, 0.100000001f, 0.100000001f)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_757 : f32 = u_xlat0.x;
  u_xlat34 = (-(x_757) + 1.0f);
  let x_760 : f32 = u_xlat34;
  let x_761 : f32 = u_xlat34;
  u_xlat36 = (x_760 * x_761);
  let x_763 : f32 = u_xlat36;
  u_xlat36 = max(x_763, 0.0078125f);
  let x_766 : f32 = u_xlat36;
  let x_767 : f32 = u_xlat36;
  u_xlat37 = (x_766 * x_767);
  let x_770 : f32 = u_xlat0.x;
  u_xlat0.x = (x_770 + 0.136000037f);
  let x_775 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_775, 1.0f);
  let x_779 : f32 = u_xlat36;
  u_xlat16 = ((x_779 * 4.0f) + 2.0f);
  let x_787 : vec3<f32> = u_xlat5;
  let x_790 : f32 = x_146.x_GlobalMipBias.x;
  let x_791 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_787.x, x_787.z), x_790);
  u_xlat5.x = x_791.x;
  let x_796 : f32 = u_xlat5.x;
  u_xlat27 = (x_796 + -1.0f);
  let x_799 : f32 = x_146.x_AmbientOcclusionParam.w;
  let x_800 : f32 = u_xlat27;
  u_xlat27 = ((x_799 * x_800) + 1.0f);
  let x_804 : f32 = u_xlat7.x;
  let x_806 : f32 = u_xlat5.x;
  u_xlat5.x = min(x_804, x_806);
  let x_811 : vec4<f32> = vs_INTERP8;
  let x_812 : vec2<f32> = vec2<f32>(x_811.x, x_811.y);
  let x_814 : f32 = vs_INTERP8.z;
  txVec0 = vec3<f32>(x_812.x, x_812.y, x_814);
  let x_827 : vec3<f32> = txVec0;
  let x_829 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_827.xy, x_827.z);
  u_xlat38 = x_829;
  let x_836 : f32 = x_834.x_MainLightShadowParams.x;
  u_xlat6.x = (-(x_836) + 1.0f);
  let x_840 : f32 = u_xlat38;
  let x_842 : f32 = x_834.x_MainLightShadowParams.x;
  let x_845 : f32 = u_xlat6.x;
  u_xlat38 = ((x_840 * x_842) + x_845);
  let x_849 : f32 = vs_INTERP8.z;
  u_xlatb6 = (0.0f >= x_849);
  let x_853 : f32 = vs_INTERP8.z;
  u_xlatb17 = (x_853 >= 1.0f);
  let x_855 : bool = u_xlatb17;
  let x_856 : bool = u_xlatb6;
  u_xlatb6 = (x_855 | x_856);
  let x_858 : bool = u_xlatb6;
  let x_859 : f32 = u_xlat38;
  u_xlat38 = select(x_859, 1.0f, x_858);
  let x_861 : vec3<f32> = vs_INTERP0;
  let x_863 : vec3<f32> = x_146.x_WorldSpaceCameraPos;
  u_xlat6 = (x_861 + -(x_863));
  let x_866 : vec3<f32> = u_xlat6;
  let x_867 : vec3<f32> = u_xlat6;
  u_xlat6.x = dot(x_866, x_867);
  let x_871 : f32 = u_xlat6.x;
  let x_873 : f32 = x_834.x_MainLightShadowParams.z;
  let x_876 : f32 = x_834.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_871 * x_873) + x_876);
  let x_880 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_880, 0.0f, 1.0f);
  let x_884 : f32 = u_xlat38;
  u_xlat17 = (-(x_884) + 1.0f);
  let x_888 : f32 = u_xlat6.x;
  let x_889 : f32 = u_xlat17;
  let x_891 : f32 = u_xlat38;
  u_xlat38 = ((x_888 * x_889) + x_891);
  let x_893 : f32 = u_xlat27;
  let x_896 : vec4<f32> = x_146.x_MainLightColor;
  u_xlat6 = (vec3<f32>(x_893, x_893, x_893) * vec3<f32>(x_896.x, x_896.y, x_896.z));
  let x_900 : vec4<f32> = u_xlat1;
  let x_903 : vec3<f32> = u_xlat11;
  u_xlat39 = dot(-(vec3<f32>(x_900.x, x_900.y, x_900.z)), x_903);
  let x_905 : f32 = u_xlat39;
  let x_906 : f32 = u_xlat39;
  u_xlat39 = (x_905 + x_906);
  let x_908 : vec3<f32> = u_xlat11;
  let x_909 : f32 = u_xlat39;
  let x_913 : vec4<f32> = u_xlat1;
  let x_916 : vec3<f32> = ((x_908 * -(vec3<f32>(x_909, x_909, x_909))) + -(vec3<f32>(x_913.x, x_913.y, x_913.z)));
  let x_917 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_916.x, x_916.y, x_916.z, x_917.w);
  let x_919 : vec3<f32> = u_xlat11;
  let x_920 : vec4<f32> = u_xlat1;
  u_xlat39 = dot(x_919, vec3<f32>(x_920.x, x_920.y, x_920.z));
  let x_923 : f32 = u_xlat39;
  u_xlat39 = clamp(x_923, 0.0f, 1.0f);
  let x_925 : f32 = u_xlat39;
  u_xlat39 = (-(x_925) + 1.0f);
  let x_928 : f32 = u_xlat39;
  let x_929 : f32 = u_xlat39;
  u_xlat39 = (x_928 * x_929);
  let x_931 : f32 = u_xlat39;
  let x_932 : f32 = u_xlat39;
  u_xlat39 = (x_931 * x_932);
  let x_935 : f32 = u_xlat34;
  u_xlat40 = ((-(x_935) * 0.699999988f) + 1.700000048f);
  let x_941 : f32 = u_xlat34;
  let x_942 : f32 = u_xlat40;
  u_xlat34 = (x_941 * x_942);
  let x_944 : f32 = u_xlat34;
  u_xlat34 = (x_944 * 6.0f);
  let x_955 : vec4<f32> = u_xlat7;
  let x_957 : f32 = u_xlat34;
  let x_958 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_955.x, x_955.y, x_955.z), x_957);
  u_xlat7 = x_958;
  let x_960 : f32 = u_xlat7.w;
  u_xlat34 = (x_960 + -1.0f);
  let x_963 : f32 = x_59.unity_SpecCube0_HDR.w;
  let x_964 : f32 = u_xlat34;
  u_xlat34 = ((x_963 * x_964) + 1.0f);
  let x_967 : f32 = u_xlat34;
  u_xlat34 = max(x_967, 0.0f);
  let x_969 : f32 = u_xlat34;
  u_xlat34 = log2(x_969);
  let x_971 : f32 = u_xlat34;
  let x_973 : f32 = x_59.unity_SpecCube0_HDR.y;
  u_xlat34 = (x_971 * x_973);
  let x_975 : f32 = u_xlat34;
  u_xlat34 = exp2(x_975);
  let x_977 : f32 = u_xlat34;
  let x_979 : f32 = x_59.unity_SpecCube0_HDR.x;
  u_xlat34 = (x_977 * x_979);
  let x_981 : vec4<f32> = u_xlat7;
  let x_983 : f32 = u_xlat34;
  let x_985 : vec3<f32> = (vec3<f32>(x_981.x, x_981.y, x_981.z) * vec3<f32>(x_983, x_983, x_983));
  let x_986 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_985.x, x_985.y, x_985.z, x_986.w);
  let x_989 : f32 = u_xlat36;
  let x_991 : f32 = u_xlat36;
  u_xlat8 = ((vec2<f32>(x_989, x_989) * vec2<f32>(x_991, x_991)) + vec2<f32>(-1.0f, 1.0f));
  let x_997 : f32 = u_xlat8.y;
  u_xlat34 = (1.0f / x_997);
  let x_1000 : vec3<f32> = u_xlat2;
  let x_1002 : vec4<f32> = u_xlat0;
  u_xlat19 = (-(x_1000) + vec3<f32>(x_1002.x, x_1002.x, x_1002.x));
  let x_1005 : f32 = u_xlat39;
  let x_1007 : vec3<f32> = u_xlat19;
  let x_1009 : vec3<f32> = u_xlat2;
  u_xlat19 = ((vec3<f32>(x_1005, x_1005, x_1005) * x_1007) + x_1009);
  let x_1011 : f32 = u_xlat34;
  let x_1013 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_1011, x_1011, x_1011) * x_1013);
  let x_1015 : vec4<f32> = u_xlat7;
  let x_1017 : vec3<f32> = u_xlat19;
  let x_1018 : vec3<f32> = (vec3<f32>(x_1015.x, x_1015.y, x_1015.z) * x_1017);
  let x_1019 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1018.x, x_1018.y, x_1018.z, x_1019.w);
  let x_1021 : vec4<f32> = u_xlat4;
  let x_1023 : vec3<f32> = u_xlat3;
  let x_1025 : vec4<f32> = u_xlat7;
  let x_1027 : vec3<f32> = ((vec3<f32>(x_1021.x, x_1021.y, x_1021.z) * x_1023) + vec3<f32>(x_1025.x, x_1025.y, x_1025.z));
  let x_1028 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1027.x, x_1027.y, x_1027.z, x_1028.w);
  let x_1030 : f32 = u_xlat38;
  let x_1032 : f32 = x_59.unity_LightData.z;
  u_xlat0.x = (x_1030 * x_1032);
  let x_1035 : vec3<f32> = u_xlat11;
  let x_1037 : vec4<f32> = x_146.x_MainLightPosition;
  u_xlat34 = dot(x_1035, vec3<f32>(x_1037.x, x_1037.y, x_1037.z));
  let x_1040 : f32 = u_xlat34;
  u_xlat34 = clamp(x_1040, 0.0f, 1.0f);
  let x_1043 : f32 = u_xlat0.x;
  let x_1044 : f32 = u_xlat34;
  u_xlat0.x = (x_1043 * x_1044);
  let x_1047 : vec4<f32> = u_xlat0;
  let x_1049 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_1047.x, x_1047.x, x_1047.x) * x_1049);
  let x_1051 : vec4<f32> = u_xlat1;
  let x_1054 : vec4<f32> = x_146.x_MainLightPosition;
  let x_1056 : vec3<f32> = (vec3<f32>(x_1051.x, x_1051.y, x_1051.z) + vec3<f32>(x_1054.x, x_1054.y, x_1054.z));
  let x_1057 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1056.x, x_1056.y, x_1056.z, x_1057.w);
  let x_1059 : vec4<f32> = u_xlat7;
  let x_1061 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(vec3<f32>(x_1059.x, x_1059.y, x_1059.z), vec3<f32>(x_1061.x, x_1061.y, x_1061.z));
  let x_1066 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1066, 1.17549435e-37f);
  let x_1070 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_1070);
  let x_1073 : vec4<f32> = u_xlat0;
  let x_1075 : vec4<f32> = u_xlat7;
  let x_1077 : vec3<f32> = (vec3<f32>(x_1073.x, x_1073.x, x_1073.x) * vec3<f32>(x_1075.x, x_1075.y, x_1075.z));
  let x_1078 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1077.x, x_1077.y, x_1077.z, x_1078.w);
  let x_1080 : vec3<f32> = u_xlat11;
  let x_1081 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_1080, vec3<f32>(x_1081.x, x_1081.y, x_1081.z));
  let x_1086 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1086, 0.0f, 1.0f);
  let x_1090 : vec4<f32> = x_146.x_MainLightPosition;
  let x_1092 : vec4<f32> = u_xlat7;
  u_xlat34 = dot(vec3<f32>(x_1090.x, x_1090.y, x_1090.z), vec3<f32>(x_1092.x, x_1092.y, x_1092.z));
  let x_1095 : f32 = u_xlat34;
  u_xlat34 = clamp(x_1095, 0.0f, 1.0f);
  let x_1098 : f32 = u_xlat0.x;
  let x_1100 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1098 * x_1100);
  let x_1104 : f32 = u_xlat0.x;
  let x_1106 : f32 = u_xlat8.x;
  u_xlat0.x = ((x_1104 * x_1106) + 1.000010014f);
  let x_1111 : f32 = u_xlat34;
  let x_1112 : f32 = u_xlat34;
  u_xlat34 = (x_1111 * x_1112);
  let x_1115 : f32 = u_xlat0.x;
  let x_1117 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1115 * x_1117);
  let x_1120 : f32 = u_xlat34;
  u_xlat34 = max(x_1120, 0.100000001f);
  let x_1123 : f32 = u_xlat0.x;
  let x_1124 : f32 = u_xlat34;
  u_xlat0.x = (x_1123 * x_1124);
  let x_1127 : f32 = u_xlat16;
  let x_1129 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1127 * x_1129);
  let x_1132 : f32 = u_xlat37;
  let x_1134 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1132 / x_1134);
  let x_1137 : vec3<f32> = u_xlat2;
  let x_1138 : vec4<f32> = u_xlat0;
  let x_1141 : vec3<f32> = u_xlat3;
  let x_1142 : vec3<f32> = ((x_1137 * vec3<f32>(x_1138.x, x_1138.x, x_1138.x)) + x_1141);
  let x_1143 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1142.x, x_1142.y, x_1142.z, x_1143.w);
  let x_1145 : vec3<f32> = u_xlat6;
  let x_1146 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_1145 * vec3<f32>(x_1146.x, x_1146.y, x_1146.z));
  let x_1150 : f32 = x_146.x_AdditionalLightsCount.x;
  let x_1152 : f32 = x_59.unity_LightData.y;
  u_xlat0.x = min(x_1150, x_1152);
  let x_1158 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1158));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1170 : u32 = u_xlatu_loop_1;
    let x_1171 : u32 = u_xlatu0;
    if ((x_1170 < x_1171)) {
    } else {
      break;
    }
    let x_1174 : u32 = u_xlatu_loop_1;
    u_xlatu36 = (x_1174 >> 2u);
    let x_1178 : u32 = u_xlatu_loop_1;
    u_xlati38 = bitcast<i32>((x_1178 & 3u));
    let x_1181 : u32 = u_xlatu36;
    let x_1184 : vec4<f32> = x_59.unity_LightIndices[bitcast<i32>(x_1181)];
    let x_1194 : i32 = u_xlati38;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1199 : vec4<u32> = indexable[x_1194];
    u_xlat36 = dot(x_1184, bitcast<vec4<f32>>(x_1199));
    let x_1203 : f32 = u_xlat36;
    u_xlati36 = i32(x_1203);
    let x_1205 : vec3<f32> = vs_INTERP0;
    let x_1217 : i32 = u_xlati36;
    let x_1219 : vec4<f32> = x_1216.x_AdditionalLightsPosition[x_1217];
    let x_1222 : i32 = u_xlati36;
    let x_1224 : vec4<f32> = x_1216.x_AdditionalLightsPosition[x_1222];
    u_xlat19 = ((-(x_1205) * vec3<f32>(x_1219.w, x_1219.w, x_1219.w)) + vec3<f32>(x_1224.x, x_1224.y, x_1224.z));
    let x_1227 : vec3<f32> = u_xlat19;
    let x_1228 : vec3<f32> = u_xlat19;
    u_xlat38 = dot(x_1227, x_1228);
    let x_1230 : f32 = u_xlat38;
    u_xlat38 = max(x_1230, 6.10351562e-05f);
    let x_1233 : f32 = u_xlat38;
    u_xlat39 = inverseSqrt(x_1233);
    let x_1236 : f32 = u_xlat39;
    let x_1238 : vec3<f32> = u_xlat19;
    u_xlat9 = (vec3<f32>(x_1236, x_1236, x_1236) * x_1238);
    let x_1240 : f32 = u_xlat38;
    u_xlat40 = (1.0f / x_1240);
    let x_1242 : f32 = u_xlat38;
    let x_1243 : i32 = u_xlati36;
    let x_1245 : f32 = x_1216.x_AdditionalLightsAttenuation[x_1243].x;
    u_xlat38 = (x_1242 * x_1245);
    let x_1247 : f32 = u_xlat38;
    let x_1249 : f32 = u_xlat38;
    u_xlat38 = ((-(x_1247) * x_1249) + 1.0f);
    let x_1252 : f32 = u_xlat38;
    u_xlat38 = max(x_1252, 0.0f);
    let x_1254 : f32 = u_xlat38;
    let x_1255 : f32 = u_xlat38;
    u_xlat38 = (x_1254 * x_1255);
    let x_1257 : f32 = u_xlat38;
    let x_1258 : f32 = u_xlat40;
    u_xlat38 = (x_1257 * x_1258);
    let x_1260 : i32 = u_xlati36;
    let x_1262 : vec4<f32> = x_1216.x_AdditionalLightsSpotDir[x_1260];
    let x_1264 : vec3<f32> = u_xlat9;
    u_xlat40 = dot(vec3<f32>(x_1262.x, x_1262.y, x_1262.z), x_1264);
    let x_1266 : f32 = u_xlat40;
    let x_1267 : i32 = u_xlati36;
    let x_1269 : f32 = x_1216.x_AdditionalLightsAttenuation[x_1267].z;
    let x_1271 : i32 = u_xlati36;
    let x_1273 : f32 = x_1216.x_AdditionalLightsAttenuation[x_1271].w;
    u_xlat40 = ((x_1266 * x_1269) + x_1273);
    let x_1275 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1275, 0.0f, 1.0f);
    let x_1277 : f32 = u_xlat40;
    let x_1278 : f32 = u_xlat40;
    u_xlat40 = (x_1277 * x_1278);
    let x_1280 : f32 = u_xlat38;
    let x_1281 : f32 = u_xlat40;
    u_xlat38 = (x_1280 * x_1281);
    let x_1284 : f32 = u_xlat27;
    let x_1286 : i32 = u_xlati36;
    let x_1288 : vec4<f32> = x_1216.x_AdditionalLightsColor[x_1286];
    u_xlat10 = (vec3<f32>(x_1284, x_1284, x_1284) * vec3<f32>(x_1288.x, x_1288.y, x_1288.z));
    let x_1291 : vec3<f32> = u_xlat11;
    let x_1292 : vec3<f32> = u_xlat9;
    u_xlat36 = dot(x_1291, x_1292);
    let x_1294 : f32 = u_xlat36;
    u_xlat36 = clamp(x_1294, 0.0f, 1.0f);
    let x_1296 : f32 = u_xlat36;
    let x_1297 : f32 = u_xlat38;
    u_xlat36 = (x_1296 * x_1297);
    let x_1299 : f32 = u_xlat36;
    let x_1301 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1299, x_1299, x_1299) * x_1301);
    let x_1303 : vec3<f32> = u_xlat19;
    let x_1304 : f32 = u_xlat39;
    let x_1307 : vec4<f32> = u_xlat1;
    u_xlat19 = ((x_1303 * vec3<f32>(x_1304, x_1304, x_1304)) + vec3<f32>(x_1307.x, x_1307.y, x_1307.z));
    let x_1310 : vec3<f32> = u_xlat19;
    let x_1311 : vec3<f32> = u_xlat19;
    u_xlat36 = dot(x_1310, x_1311);
    let x_1313 : f32 = u_xlat36;
    u_xlat36 = max(x_1313, 1.17549435e-37f);
    let x_1315 : f32 = u_xlat36;
    u_xlat36 = inverseSqrt(x_1315);
    let x_1317 : f32 = u_xlat36;
    let x_1319 : vec3<f32> = u_xlat19;
    u_xlat19 = (vec3<f32>(x_1317, x_1317, x_1317) * x_1319);
    let x_1321 : vec3<f32> = u_xlat11;
    let x_1322 : vec3<f32> = u_xlat19;
    u_xlat36 = dot(x_1321, x_1322);
    let x_1324 : f32 = u_xlat36;
    u_xlat36 = clamp(x_1324, 0.0f, 1.0f);
    let x_1326 : vec3<f32> = u_xlat9;
    let x_1327 : vec3<f32> = u_xlat19;
    u_xlat38 = dot(x_1326, x_1327);
    let x_1329 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1329, 0.0f, 1.0f);
    let x_1331 : f32 = u_xlat36;
    let x_1332 : f32 = u_xlat36;
    u_xlat36 = (x_1331 * x_1332);
    let x_1334 : f32 = u_xlat36;
    let x_1336 : f32 = u_xlat8.x;
    u_xlat36 = ((x_1334 * x_1336) + 1.000010014f);
    let x_1339 : f32 = u_xlat38;
    let x_1340 : f32 = u_xlat38;
    u_xlat38 = (x_1339 * x_1340);
    let x_1342 : f32 = u_xlat36;
    let x_1343 : f32 = u_xlat36;
    u_xlat36 = (x_1342 * x_1343);
    let x_1345 : f32 = u_xlat38;
    u_xlat38 = max(x_1345, 0.100000001f);
    let x_1347 : f32 = u_xlat36;
    let x_1348 : f32 = u_xlat38;
    u_xlat36 = (x_1347 * x_1348);
    let x_1350 : f32 = u_xlat16;
    let x_1351 : f32 = u_xlat36;
    u_xlat36 = (x_1350 * x_1351);
    let x_1353 : f32 = u_xlat37;
    let x_1354 : f32 = u_xlat36;
    u_xlat36 = (x_1353 / x_1354);
    let x_1356 : vec3<f32> = u_xlat2;
    let x_1357 : f32 = u_xlat36;
    let x_1360 : vec3<f32> = u_xlat3;
    u_xlat19 = ((x_1356 * vec3<f32>(x_1357, x_1357, x_1357)) + x_1360);
    let x_1362 : vec3<f32> = u_xlat19;
    let x_1363 : vec3<f32> = u_xlat10;
    let x_1365 : vec4<f32> = u_xlat7;
    let x_1367 : vec3<f32> = ((x_1362 * x_1363) + vec3<f32>(x_1365.x, x_1365.y, x_1365.z));
    let x_1368 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1367.x, x_1367.y, x_1367.z, x_1368.w);

    continuing {
      let x_1370 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1370 + bitcast<u32>(1i));
    }
  }
  let x_1372 : vec4<f32> = u_xlat4;
  let x_1374 : vec3<f32> = u_xlat5;
  let x_1377 : vec3<f32> = u_xlat6;
  let x_1378 : vec3<f32> = ((vec3<f32>(x_1372.x, x_1372.y, x_1372.z) * vec3<f32>(x_1374.x, x_1374.x, x_1374.x)) + x_1377);
  let x_1379 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1378.x, x_1378.y, x_1378.z, x_1379.w);
  let x_1381 : vec4<f32> = u_xlat7;
  let x_1383 : vec4<f32> = u_xlat0;
  let x_1385 : vec3<f32> = (vec3<f32>(x_1381.x, x_1381.y, x_1381.z) + vec3<f32>(x_1383.x, x_1383.y, x_1383.z));
  let x_1386 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1385.x, x_1385.y, x_1385.z, x_1386.w);
  let x_1389 : f32 = u_xlat35;
  let x_1390 : f32 = u_xlat35;
  u_xlat33 = (x_1389 * -(x_1390));
  let x_1393 : f32 = u_xlat33;
  u_xlat33 = exp2(x_1393);
  let x_1395 : vec4<f32> = u_xlat0;
  let x_1399 : vec4<f32> = x_146.unity_FogColor;
  let x_1402 : vec3<f32> = (vec3<f32>(x_1395.x, x_1395.y, x_1395.z) + -(vec3<f32>(x_1399.x, x_1399.y, x_1399.z)));
  let x_1403 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1402.x, x_1402.y, x_1402.z, x_1403.w);
  let x_1407 : f32 = u_xlat33;
  let x_1409 : vec4<f32> = u_xlat0;
  let x_1413 : vec4<f32> = x_146.unity_FogColor;
  let x_1415 : vec3<f32> = ((vec3<f32>(x_1407, x_1407, x_1407) * vec3<f32>(x_1409.x, x_1409.y, x_1409.z)) + vec3<f32>(x_1413.x, x_1413.y, x_1413.z));
  let x_1416 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1415.x, x_1415.y, x_1415.z, x_1416.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(4) vs_INTERP4_param : vec2<f32>, @location(5) vs_INTERP8_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP8 = vs_INTERP8_param;
  main_1();
  return main_out(SV_Target0);
}

