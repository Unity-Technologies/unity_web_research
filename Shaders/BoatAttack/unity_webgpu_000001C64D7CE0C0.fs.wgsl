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

@group(1) @binding(3) var<uniform> x_667 : MainLightShadows;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP4 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1426 : AdditionalLights;

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
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat36 : f32;
  var u_xlat37 : f32;
  var u_xlat7 : vec4<f32>;
  var u_xlat18 : vec3<f32>;
  var u_xlat12 : vec2<f32>;
  var u_xlat15 : vec3<f32>;
  var u_xlatb1 : bool;
  var x_651 : vec3<f32>;
  var u_xlatb4 : vec4<bool>;
  var u_xlatu35 : u32;
  var u_xlati35 : i32;
  var u_xlat38 : f32;
  var u_xlat17 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatb15 : bool;
  var u_xlatb26 : bool;
  var x_1035 : f32;
  var u_xlat26 : f32;
  var u_xlat8 : vec4<f32>;
  var u_xlat28 : vec2<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlatu0 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu36 : u32;
  var u_xlati39 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati36 : i32;
  var u_xlat39 : f32;
  var u_xlat40 : f32;
  var u_xlat41 : f32;
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
  let x_188 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_187.x, x_187.y, x_188.z, x_188.w);
  let x_196 : vec4<f32> = u_xlat5;
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
  let x_368 : vec4<f32> = u_xlat5;
  let x_371 : f32 = x_146.x_GlobalMipBias.x;
  let x_372 : vec4<f32> = textureSampleBias(Texture2D_C005B064, samplerTexture2D_C005B064, vec2<f32>(x_368.x, x_368.y), x_371);
  u_xlat15 = vec3<f32>(x_372.x, x_372.y, x_372.w);
  let x_375 : f32 = u_xlat15.x;
  let x_377 : f32 = u_xlat15.z;
  u_xlat15.x = (x_375 * x_377);
  let x_380 : vec3<f32> = u_xlat15;
  let x_385 : vec2<f32> = ((vec2<f32>(x_380.x, x_380.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_386 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_385.x, x_385.y, x_386.z, x_386.w);
  let x_388 : vec4<f32> = u_xlat5;
  let x_390 : vec4<f32> = u_xlat5;
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
  let x_535 : vec4<f32> = u_xlat5;
  u_xlat15 = ((x_531 * vec3<f32>(x_532.x, x_532.x, x_532.x)) + -(vec3<f32>(x_535.x, x_535.y, x_535.z)));
  let x_539 : vec4<f32> = u_xlat1;
  let x_541 : vec3<f32> = u_xlat15;
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
  u_xlat11 = ((vec3<f32>(x_584.y, x_584.y, x_584.y) * vec3<f32>(x_586.x, x_586.y, x_586.z)) + vec3<f32>(x_589.y, x_589.z, x_589.w));
  let x_592 : vec4<f32> = u_xlat4;
  let x_594 : vec3<f32> = vs_INTERP1;
  let x_596 : vec3<f32> = u_xlat11;
  u_xlat11 = ((vec3<f32>(x_592.w, x_592.w, x_592.w) * x_594) + x_596);
  let x_598 : vec3<f32> = u_xlat11;
  let x_599 : vec3<f32> = u_xlat11;
  u_xlat1.x = dot(x_598, x_599);
  let x_603 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_603);
  let x_606 : vec3<f32> = u_xlat11;
  let x_607 : vec4<f32> = u_xlat1;
  u_xlat11 = (x_606 * vec3<f32>(x_607.x, x_607.x, x_607.x));
  let x_612 : f32 = x_146.unity_OrthoParams.w;
  u_xlatb1 = (x_612 == 0.0f);
  let x_614 : vec3<f32> = vs_INTERP0;
  let x_619 : vec3<f32> = x_146.x_WorldSpaceCameraPos;
  let x_620 : vec3<f32> = (-(x_614) + x_619);
  let x_621 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_620.x, x_620.y, x_620.z, x_621.w);
  let x_623 : vec4<f32> = u_xlat4;
  let x_625 : vec4<f32> = u_xlat4;
  u_xlat12.x = dot(vec3<f32>(x_623.x, x_623.y, x_623.z), vec3<f32>(x_625.x, x_625.y, x_625.z));
  let x_630 : f32 = u_xlat12.x;
  u_xlat12.x = inverseSqrt(x_630);
  let x_633 : vec2<f32> = u_xlat12;
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
  u_xlat18 = (x_689 + -(vec3<f32>(x_691.x, x_691.y, x_691.z)));
  let x_695 : vec4<f32> = u_xlat4;
  let x_697 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_695.x, x_695.y, x_695.z), vec3<f32>(x_697.x, x_697.y, x_697.z));
  let x_701 : vec4<f32> = u_xlat5;
  let x_703 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_701.x, x_701.y, x_701.z), vec3<f32>(x_703.x, x_703.y, x_703.z));
  let x_707 : vec3<f32> = u_xlat6;
  let x_708 : vec3<f32> = u_xlat6;
  u_xlat4.z = dot(x_707, x_708);
  let x_711 : vec3<f32> = u_xlat18;
  let x_712 : vec3<f32> = u_xlat18;
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
  u_xlat35 = dot(x_764, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_767 : f32 = u_xlat35;
  u_xlat35 = (-(x_767) + 4.0f);
  let x_772 : f32 = u_xlat35;
  u_xlatu35 = u32(x_772);
  let x_776 : u32 = u_xlatu35;
  u_xlati35 = (bitcast<i32>(x_776) << bitcast<u32>(2i));
  let x_779 : vec3<f32> = vs_INTERP0;
  let x_781 : i32 = u_xlati35;
  let x_784 : i32 = u_xlati35;
  let x_788 : vec4<f32> = x_667.x_MainLightWorldToShadow[((x_781 + 1i) / 4i)][((x_784 + 1i) % 4i)];
  let x_790 : vec3<f32> = (vec3<f32>(x_779.y, x_779.y, x_779.y) * vec3<f32>(x_788.x, x_788.y, x_788.z));
  let x_791 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_790.x, x_790.y, x_790.z, x_791.w);
  let x_793 : i32 = u_xlati35;
  let x_795 : i32 = u_xlati35;
  let x_798 : vec4<f32> = x_667.x_MainLightWorldToShadow[(x_793 / 4i)][(x_795 % 4i)];
  let x_800 : vec3<f32> = vs_INTERP0;
  let x_803 : vec4<f32> = u_xlat4;
  let x_805 : vec3<f32> = ((vec3<f32>(x_798.x, x_798.y, x_798.z) * vec3<f32>(x_800.x, x_800.x, x_800.x)) + vec3<f32>(x_803.x, x_803.y, x_803.z));
  let x_806 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_805.x, x_805.y, x_805.z, x_806.w);
  let x_808 : i32 = u_xlati35;
  let x_811 : i32 = u_xlati35;
  let x_815 : vec4<f32> = x_667.x_MainLightWorldToShadow[((x_808 + 2i) / 4i)][((x_811 + 2i) % 4i)];
  let x_817 : vec3<f32> = vs_INTERP0;
  let x_820 : vec4<f32> = u_xlat4;
  let x_822 : vec3<f32> = ((vec3<f32>(x_815.x, x_815.y, x_815.z) * vec3<f32>(x_817.z, x_817.z, x_817.z)) + vec3<f32>(x_820.x, x_820.y, x_820.z));
  let x_823 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_822.x, x_822.y, x_822.z, x_823.w);
  let x_825 : vec4<f32> = u_xlat4;
  let x_827 : i32 = u_xlati35;
  let x_830 : i32 = u_xlati35;
  let x_834 : vec4<f32> = x_667.x_MainLightWorldToShadow[((x_827 + 3i) / 4i)][((x_830 + 3i) % 4i)];
  let x_836 : vec3<f32> = (vec3<f32>(x_825.x, x_825.y, x_825.z) + vec3<f32>(x_834.x, x_834.y, x_834.z));
  let x_837 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_836.x, x_836.y, x_836.z, x_837.w);
  let x_840 : f32 = vs_INTERP0.y;
  let x_842 : f32 = x_146.unity_MatrixV[1i].z;
  u_xlat35 = (x_840 * x_842);
  let x_845 : f32 = x_146.unity_MatrixV[0i].z;
  let x_847 : f32 = vs_INTERP0.x;
  let x_849 : f32 = u_xlat35;
  u_xlat35 = ((x_845 * x_847) + x_849);
  let x_852 : f32 = x_146.unity_MatrixV[2i].z;
  let x_854 : f32 = vs_INTERP0.z;
  let x_856 : f32 = u_xlat35;
  u_xlat35 = ((x_852 * x_854) + x_856);
  let x_858 : f32 = u_xlat35;
  let x_860 : f32 = x_146.unity_MatrixV[3i].z;
  u_xlat35 = (x_858 + x_860);
  let x_862 : f32 = u_xlat35;
  let x_866 : f32 = x_146.x_ProjectionParams.y;
  u_xlat35 = (-(x_862) + -(x_866));
  let x_869 : f32 = u_xlat35;
  u_xlat35 = max(x_869, 0.0f);
  let x_871 : f32 = u_xlat35;
  let x_874 : f32 = x_146.unity_FogParams.x;
  u_xlat35 = (x_871 * x_874);
  let x_883 : vec2<f32> = vs_INTERP4;
  let x_885 : f32 = x_146.x_GlobalMipBias.x;
  let x_886 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_883, x_885);
  let x_887 : vec3<f32> = vec3<f32>(x_886.x, x_886.y, x_886.z);
  let x_888 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_887.x, x_887.y, x_887.z, x_888.w);
  let x_891 : vec4<f32> = x_146.x_ScaledScreenParams;
  let x_892 : vec2<f32> = vec2<f32>(x_891.x, x_891.y);
  let x_896 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_892.x, x_892.y));
  let x_897 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_896.x, x_896.y, x_897.z);
  let x_899 : vec3<f32> = u_xlat6;
  let x_901 : vec4<f32> = hlslcc_FragCoord;
  let x_903 : vec2<f32> = (vec2<f32>(x_899.x, x_899.y) * vec2<f32>(x_901.x, x_901.y));
  let x_904 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_903.x, x_903.y, x_904.z);
  let x_907 : f32 = u_xlat6.y;
  let x_910 : f32 = x_146.x_ScaleBiasRt.x;
  let x_913 : f32 = x_146.x_ScaleBiasRt.y;
  u_xlat36 = ((x_907 * x_910) + x_913);
  let x_915 : f32 = u_xlat36;
  u_xlat6.z = (-(x_915) + 1.0f);
  let x_919 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_919 * vec3<f32>(0.863999963f, 0.863999963f, 0.863999963f));
  let x_923 : vec4<f32> = u_xlat1;
  let x_925 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_923.w, x_923.w, x_923.w) * x_925) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_930 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_930 * vec3<f32>(0.100000001f, 0.100000001f, 0.100000001f)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_937 : f32 = u_xlat0.x;
  u_xlat34 = (-(x_937) + 1.0f);
  let x_940 : f32 = u_xlat34;
  let x_941 : f32 = u_xlat34;
  u_xlat36 = (x_940 * x_941);
  let x_943 : f32 = u_xlat36;
  u_xlat36 = max(x_943, 0.0078125f);
  let x_946 : f32 = u_xlat36;
  let x_947 : f32 = u_xlat36;
  u_xlat37 = (x_946 * x_947);
  let x_950 : f32 = u_xlat0.x;
  u_xlat0.x = (x_950 + 0.136000037f);
  let x_955 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_955, 1.0f);
  let x_959 : f32 = u_xlat36;
  u_xlat38 = ((x_959 * 4.0f) + 2.0f);
  let x_967 : vec3<f32> = u_xlat6;
  let x_970 : f32 = x_146.x_GlobalMipBias.x;
  let x_971 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_967.x, x_967.z), x_970);
  u_xlat6.x = x_971.x;
  let x_976 : f32 = u_xlat6.x;
  u_xlat17 = (x_976 + -1.0f);
  let x_979 : f32 = x_146.x_AmbientOcclusionParam.w;
  let x_980 : f32 = u_xlat17;
  u_xlat17 = ((x_979 * x_980) + 1.0f);
  let x_984 : f32 = u_xlat7.x;
  let x_986 : f32 = u_xlat6.x;
  u_xlat6.x = min(x_984, x_986);
  let x_990 : vec4<f32> = u_xlat4;
  let x_991 : vec2<f32> = vec2<f32>(x_990.x, x_990.y);
  let x_993 : f32 = u_xlat4.z;
  txVec0 = vec3<f32>(x_991.x, x_991.y, x_993);
  let x_1005 : vec3<f32> = txVec0;
  let x_1007 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1005.xy, x_1005.z);
  u_xlat4.x = x_1007;
  let x_1010 : f32 = x_667.x_MainLightShadowParams.x;
  u_xlat15.x = (-(x_1010) + 1.0f);
  let x_1015 : f32 = u_xlat4.x;
  let x_1017 : f32 = x_667.x_MainLightShadowParams.x;
  let x_1020 : f32 = u_xlat15.x;
  u_xlat4.x = ((x_1015 * x_1017) + x_1020);
  let x_1025 : f32 = u_xlat4.z;
  u_xlatb15 = (0.0f >= x_1025);
  let x_1029 : f32 = u_xlat4.z;
  u_xlatb26 = (x_1029 >= 1.0f);
  let x_1031 : bool = u_xlatb26;
  let x_1032 : bool = u_xlatb15;
  u_xlatb15 = (x_1031 | x_1032);
  let x_1034 : bool = u_xlatb15;
  if (x_1034) {
    x_1035 = 1.0f;
  } else {
    let x_1040 : f32 = u_xlat4.x;
    x_1035 = x_1040;
  }
  let x_1041 : f32 = x_1035;
  u_xlat4.x = x_1041;
  let x_1043 : vec3<f32> = vs_INTERP0;
  let x_1045 : vec3<f32> = x_146.x_WorldSpaceCameraPos;
  let x_1047 : vec3<f32> = (x_1043 + -(x_1045));
  let x_1048 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1047.x, x_1047.y, x_1047.z, x_1048.w);
  let x_1050 : vec4<f32> = u_xlat7;
  let x_1052 : vec4<f32> = u_xlat7;
  u_xlat15.x = dot(vec3<f32>(x_1050.x, x_1050.y, x_1050.z), vec3<f32>(x_1052.x, x_1052.y, x_1052.z));
  let x_1057 : f32 = u_xlat15.x;
  let x_1059 : f32 = x_667.x_MainLightShadowParams.z;
  let x_1062 : f32 = x_667.x_MainLightShadowParams.w;
  u_xlat15.x = ((x_1057 * x_1059) + x_1062);
  let x_1066 : f32 = u_xlat15.x;
  u_xlat15.x = clamp(x_1066, 0.0f, 1.0f);
  let x_1071 : f32 = u_xlat4.x;
  u_xlat26 = (-(x_1071) + 1.0f);
  let x_1075 : f32 = u_xlat15.x;
  let x_1076 : f32 = u_xlat26;
  let x_1079 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_1075 * x_1076) + x_1079);
  let x_1082 : f32 = u_xlat17;
  let x_1085 : vec4<f32> = x_146.x_MainLightColor;
  let x_1087 : vec3<f32> = (vec3<f32>(x_1082, x_1082, x_1082) * vec3<f32>(x_1085.x, x_1085.y, x_1085.z));
  let x_1088 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1087.x, x_1087.y, x_1087.z, x_1088.w);
  let x_1090 : vec4<f32> = u_xlat1;
  let x_1093 : vec3<f32> = u_xlat11;
  u_xlat15.x = dot(-(vec3<f32>(x_1090.x, x_1090.y, x_1090.z)), x_1093);
  let x_1097 : f32 = u_xlat15.x;
  let x_1099 : f32 = u_xlat15.x;
  u_xlat15.x = (x_1097 + x_1099);
  let x_1103 : vec3<f32> = u_xlat11;
  let x_1104 : vec3<f32> = u_xlat15;
  let x_1108 : vec4<f32> = u_xlat1;
  let x_1111 : vec3<f32> = ((x_1103 * -(vec3<f32>(x_1104.x, x_1104.x, x_1104.x))) + -(vec3<f32>(x_1108.x, x_1108.y, x_1108.z)));
  let x_1112 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1111.x, x_1111.y, x_1111.z, x_1112.w);
  let x_1114 : vec3<f32> = u_xlat11;
  let x_1115 : vec4<f32> = u_xlat1;
  u_xlat15.x = dot(x_1114, vec3<f32>(x_1115.x, x_1115.y, x_1115.z));
  let x_1120 : f32 = u_xlat15.x;
  u_xlat15.x = clamp(x_1120, 0.0f, 1.0f);
  let x_1124 : f32 = u_xlat15.x;
  u_xlat15.x = (-(x_1124) + 1.0f);
  let x_1129 : f32 = u_xlat15.x;
  let x_1131 : f32 = u_xlat15.x;
  u_xlat15.x = (x_1129 * x_1131);
  let x_1135 : f32 = u_xlat15.x;
  let x_1137 : f32 = u_xlat15.x;
  u_xlat15.x = (x_1135 * x_1137);
  let x_1140 : f32 = u_xlat34;
  u_xlat26 = ((-(x_1140) * 0.699999988f) + 1.700000048f);
  let x_1146 : f32 = u_xlat34;
  let x_1147 : f32 = u_xlat26;
  u_xlat34 = (x_1146 * x_1147);
  let x_1149 : f32 = u_xlat34;
  u_xlat34 = (x_1149 * 6.0f);
  let x_1160 : vec4<f32> = u_xlat8;
  let x_1162 : f32 = u_xlat34;
  let x_1163 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1160.x, x_1160.y, x_1160.z), x_1162);
  u_xlat8 = x_1163;
  let x_1165 : f32 = u_xlat8.w;
  u_xlat34 = (x_1165 + -1.0f);
  let x_1168 : f32 = x_59.unity_SpecCube0_HDR.w;
  let x_1169 : f32 = u_xlat34;
  u_xlat34 = ((x_1168 * x_1169) + 1.0f);
  let x_1172 : f32 = u_xlat34;
  u_xlat34 = max(x_1172, 0.0f);
  let x_1174 : f32 = u_xlat34;
  u_xlat34 = log2(x_1174);
  let x_1176 : f32 = u_xlat34;
  let x_1178 : f32 = x_59.unity_SpecCube0_HDR.y;
  u_xlat34 = (x_1176 * x_1178);
  let x_1180 : f32 = u_xlat34;
  u_xlat34 = exp2(x_1180);
  let x_1182 : f32 = u_xlat34;
  let x_1184 : f32 = x_59.unity_SpecCube0_HDR.x;
  u_xlat34 = (x_1182 * x_1184);
  let x_1186 : vec4<f32> = u_xlat8;
  let x_1188 : f32 = u_xlat34;
  let x_1190 : vec3<f32> = (vec3<f32>(x_1186.x, x_1186.y, x_1186.z) * vec3<f32>(x_1188, x_1188, x_1188));
  let x_1191 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1190.x, x_1190.y, x_1190.z, x_1191.w);
  let x_1194 : f32 = u_xlat36;
  let x_1196 : f32 = u_xlat36;
  u_xlat28 = ((vec2<f32>(x_1194, x_1194) * vec2<f32>(x_1196, x_1196)) + vec2<f32>(-1.0f, 1.0f));
  let x_1202 : f32 = u_xlat28.y;
  u_xlat34 = (1.0f / x_1202);
  let x_1205 : vec3<f32> = u_xlat2;
  let x_1207 : vec4<f32> = u_xlat0;
  u_xlat9 = (-(x_1205) + vec3<f32>(x_1207.x, x_1207.x, x_1207.x));
  let x_1210 : vec3<f32> = u_xlat15;
  let x_1212 : vec3<f32> = u_xlat9;
  let x_1214 : vec3<f32> = u_xlat2;
  u_xlat9 = ((vec3<f32>(x_1210.x, x_1210.x, x_1210.x) * x_1212) + x_1214);
  let x_1216 : f32 = u_xlat34;
  let x_1218 : vec3<f32> = u_xlat9;
  u_xlat9 = (vec3<f32>(x_1216, x_1216, x_1216) * x_1218);
  let x_1220 : vec4<f32> = u_xlat8;
  let x_1222 : vec3<f32> = u_xlat9;
  let x_1223 : vec3<f32> = (vec3<f32>(x_1220.x, x_1220.y, x_1220.z) * x_1222);
  let x_1224 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1223.x, x_1223.y, x_1223.z, x_1224.w);
  let x_1226 : vec4<f32> = u_xlat5;
  let x_1228 : vec3<f32> = u_xlat3;
  let x_1230 : vec4<f32> = u_xlat8;
  let x_1232 : vec3<f32> = ((vec3<f32>(x_1226.x, x_1226.y, x_1226.z) * x_1228) + vec3<f32>(x_1230.x, x_1230.y, x_1230.z));
  let x_1233 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1232.x, x_1232.y, x_1232.z, x_1233.w);
  let x_1236 : f32 = u_xlat4.x;
  let x_1238 : f32 = x_59.unity_LightData.z;
  u_xlat0.x = (x_1236 * x_1238);
  let x_1241 : vec3<f32> = u_xlat11;
  let x_1243 : vec4<f32> = x_146.x_MainLightPosition;
  u_xlat34 = dot(x_1241, vec3<f32>(x_1243.x, x_1243.y, x_1243.z));
  let x_1246 : f32 = u_xlat34;
  u_xlat34 = clamp(x_1246, 0.0f, 1.0f);
  let x_1249 : f32 = u_xlat0.x;
  let x_1250 : f32 = u_xlat34;
  u_xlat0.x = (x_1249 * x_1250);
  let x_1253 : vec4<f32> = u_xlat0;
  let x_1255 : vec4<f32> = u_xlat7;
  let x_1257 : vec3<f32> = (vec3<f32>(x_1253.x, x_1253.x, x_1253.x) * vec3<f32>(x_1255.x, x_1255.y, x_1255.z));
  let x_1258 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1257.x, x_1257.y, x_1257.z, x_1258.w);
  let x_1260 : vec4<f32> = u_xlat1;
  let x_1263 : vec4<f32> = x_146.x_MainLightPosition;
  let x_1265 : vec3<f32> = (vec3<f32>(x_1260.x, x_1260.y, x_1260.z) + vec3<f32>(x_1263.x, x_1263.y, x_1263.z));
  let x_1266 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1265.x, x_1265.y, x_1265.z, x_1266.w);
  let x_1268 : vec4<f32> = u_xlat7;
  let x_1270 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(vec3<f32>(x_1268.x, x_1268.y, x_1268.z), vec3<f32>(x_1270.x, x_1270.y, x_1270.z));
  let x_1275 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1275, 1.17549435e-37f);
  let x_1279 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_1279);
  let x_1282 : vec4<f32> = u_xlat0;
  let x_1284 : vec4<f32> = u_xlat7;
  let x_1286 : vec3<f32> = (vec3<f32>(x_1282.x, x_1282.x, x_1282.x) * vec3<f32>(x_1284.x, x_1284.y, x_1284.z));
  let x_1287 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1286.x, x_1286.y, x_1286.z, x_1287.w);
  let x_1289 : vec3<f32> = u_xlat11;
  let x_1290 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_1289, vec3<f32>(x_1290.x, x_1290.y, x_1290.z));
  let x_1295 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1295, 0.0f, 1.0f);
  let x_1299 : vec4<f32> = x_146.x_MainLightPosition;
  let x_1301 : vec4<f32> = u_xlat7;
  u_xlat34 = dot(vec3<f32>(x_1299.x, x_1299.y, x_1299.z), vec3<f32>(x_1301.x, x_1301.y, x_1301.z));
  let x_1304 : f32 = u_xlat34;
  u_xlat34 = clamp(x_1304, 0.0f, 1.0f);
  let x_1307 : f32 = u_xlat0.x;
  let x_1309 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1307 * x_1309);
  let x_1313 : f32 = u_xlat0.x;
  let x_1315 : f32 = u_xlat28.x;
  u_xlat0.x = ((x_1313 * x_1315) + 1.000010014f);
  let x_1320 : f32 = u_xlat34;
  let x_1321 : f32 = u_xlat34;
  u_xlat34 = (x_1320 * x_1321);
  let x_1324 : f32 = u_xlat0.x;
  let x_1326 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1324 * x_1326);
  let x_1329 : f32 = u_xlat34;
  u_xlat34 = max(x_1329, 0.100000001f);
  let x_1332 : f32 = u_xlat0.x;
  let x_1333 : f32 = u_xlat34;
  u_xlat0.x = (x_1332 * x_1333);
  let x_1336 : f32 = u_xlat38;
  let x_1338 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1336 * x_1338);
  let x_1341 : f32 = u_xlat37;
  let x_1343 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1341 / x_1343);
  let x_1346 : vec3<f32> = u_xlat2;
  let x_1347 : vec4<f32> = u_xlat0;
  let x_1350 : vec3<f32> = u_xlat3;
  let x_1351 : vec3<f32> = ((x_1346 * vec3<f32>(x_1347.x, x_1347.x, x_1347.x)) + x_1350);
  let x_1352 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1351.x, x_1351.y, x_1351.z, x_1352.w);
  let x_1354 : vec4<f32> = u_xlat4;
  let x_1356 : vec4<f32> = u_xlat7;
  let x_1358 : vec3<f32> = (vec3<f32>(x_1354.x, x_1354.y, x_1354.z) * vec3<f32>(x_1356.x, x_1356.y, x_1356.z));
  let x_1359 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1358.x, x_1358.y, x_1358.z, x_1359.w);
  let x_1362 : f32 = x_146.x_AdditionalLightsCount.x;
  let x_1364 : f32 = x_59.unity_LightData.y;
  u_xlat0.x = min(x_1362, x_1364);
  let x_1369 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1369));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1381 : u32 = u_xlatu_loop_1;
    let x_1382 : u32 = u_xlatu0;
    if ((x_1381 < x_1382)) {
    } else {
      break;
    }
    let x_1385 : u32 = u_xlatu_loop_1;
    u_xlatu36 = (x_1385 >> 2u);
    let x_1388 : u32 = u_xlatu_loop_1;
    u_xlati39 = bitcast<i32>((x_1388 & 3u));
    let x_1391 : u32 = u_xlatu36;
    let x_1394 : vec4<f32> = x_59.unity_LightIndices[bitcast<i32>(x_1391)];
    let x_1404 : i32 = u_xlati39;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1409 : vec4<u32> = indexable[x_1404];
    u_xlat36 = dot(x_1394, bitcast<vec4<f32>>(x_1409));
    let x_1413 : f32 = u_xlat36;
    u_xlati36 = i32(x_1413);
    let x_1415 : vec3<f32> = vs_INTERP0;
    let x_1427 : i32 = u_xlati36;
    let x_1429 : vec4<f32> = x_1426.x_AdditionalLightsPosition[x_1427];
    let x_1432 : i32 = u_xlati36;
    let x_1434 : vec4<f32> = x_1426.x_AdditionalLightsPosition[x_1432];
    let x_1436 : vec3<f32> = ((-(x_1415) * vec3<f32>(x_1429.w, x_1429.w, x_1429.w)) + vec3<f32>(x_1434.x, x_1434.y, x_1434.z));
    let x_1437 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1436.x, x_1436.y, x_1436.z, x_1437.w);
    let x_1440 : vec4<f32> = u_xlat8;
    let x_1442 : vec4<f32> = u_xlat8;
    u_xlat39 = dot(vec3<f32>(x_1440.x, x_1440.y, x_1440.z), vec3<f32>(x_1442.x, x_1442.y, x_1442.z));
    let x_1445 : f32 = u_xlat39;
    u_xlat39 = max(x_1445, 6.10351562e-05f);
    let x_1449 : f32 = u_xlat39;
    u_xlat40 = inverseSqrt(x_1449);
    let x_1451 : f32 = u_xlat40;
    let x_1453 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_1451, x_1451, x_1451) * vec3<f32>(x_1453.x, x_1453.y, x_1453.z));
    let x_1457 : f32 = u_xlat39;
    u_xlat41 = (1.0f / x_1457);
    let x_1459 : f32 = u_xlat39;
    let x_1460 : i32 = u_xlati36;
    let x_1462 : f32 = x_1426.x_AdditionalLightsAttenuation[x_1460].x;
    u_xlat39 = (x_1459 * x_1462);
    let x_1464 : f32 = u_xlat39;
    let x_1466 : f32 = u_xlat39;
    u_xlat39 = ((-(x_1464) * x_1466) + 1.0f);
    let x_1469 : f32 = u_xlat39;
    u_xlat39 = max(x_1469, 0.0f);
    let x_1471 : f32 = u_xlat39;
    let x_1472 : f32 = u_xlat39;
    u_xlat39 = (x_1471 * x_1472);
    let x_1474 : f32 = u_xlat39;
    let x_1475 : f32 = u_xlat41;
    u_xlat39 = (x_1474 * x_1475);
    let x_1477 : i32 = u_xlati36;
    let x_1479 : vec4<f32> = x_1426.x_AdditionalLightsSpotDir[x_1477];
    let x_1481 : vec3<f32> = u_xlat9;
    u_xlat41 = dot(vec3<f32>(x_1479.x, x_1479.y, x_1479.z), x_1481);
    let x_1483 : f32 = u_xlat41;
    let x_1484 : i32 = u_xlati36;
    let x_1486 : f32 = x_1426.x_AdditionalLightsAttenuation[x_1484].z;
    let x_1488 : i32 = u_xlati36;
    let x_1490 : f32 = x_1426.x_AdditionalLightsAttenuation[x_1488].w;
    u_xlat41 = ((x_1483 * x_1486) + x_1490);
    let x_1492 : f32 = u_xlat41;
    u_xlat41 = clamp(x_1492, 0.0f, 1.0f);
    let x_1494 : f32 = u_xlat41;
    let x_1495 : f32 = u_xlat41;
    u_xlat41 = (x_1494 * x_1495);
    let x_1497 : f32 = u_xlat39;
    let x_1498 : f32 = u_xlat41;
    u_xlat39 = (x_1497 * x_1498);
    let x_1501 : f32 = u_xlat17;
    let x_1503 : i32 = u_xlati36;
    let x_1505 : vec4<f32> = x_1426.x_AdditionalLightsColor[x_1503];
    u_xlat10 = (vec3<f32>(x_1501, x_1501, x_1501) * vec3<f32>(x_1505.x, x_1505.y, x_1505.z));
    let x_1508 : vec3<f32> = u_xlat11;
    let x_1509 : vec3<f32> = u_xlat9;
    u_xlat36 = dot(x_1508, x_1509);
    let x_1511 : f32 = u_xlat36;
    u_xlat36 = clamp(x_1511, 0.0f, 1.0f);
    let x_1513 : f32 = u_xlat36;
    let x_1514 : f32 = u_xlat39;
    u_xlat36 = (x_1513 * x_1514);
    let x_1516 : f32 = u_xlat36;
    let x_1518 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1516, x_1516, x_1516) * x_1518);
    let x_1520 : vec4<f32> = u_xlat8;
    let x_1522 : f32 = u_xlat40;
    let x_1525 : vec4<f32> = u_xlat1;
    let x_1527 : vec3<f32> = ((vec3<f32>(x_1520.x, x_1520.y, x_1520.z) * vec3<f32>(x_1522, x_1522, x_1522)) + vec3<f32>(x_1525.x, x_1525.y, x_1525.z));
    let x_1528 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1527.x, x_1527.y, x_1527.z, x_1528.w);
    let x_1530 : vec4<f32> = u_xlat8;
    let x_1532 : vec4<f32> = u_xlat8;
    u_xlat36 = dot(vec3<f32>(x_1530.x, x_1530.y, x_1530.z), vec3<f32>(x_1532.x, x_1532.y, x_1532.z));
    let x_1535 : f32 = u_xlat36;
    u_xlat36 = max(x_1535, 1.17549435e-37f);
    let x_1537 : f32 = u_xlat36;
    u_xlat36 = inverseSqrt(x_1537);
    let x_1539 : f32 = u_xlat36;
    let x_1541 : vec4<f32> = u_xlat8;
    let x_1543 : vec3<f32> = (vec3<f32>(x_1539, x_1539, x_1539) * vec3<f32>(x_1541.x, x_1541.y, x_1541.z));
    let x_1544 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1543.x, x_1543.y, x_1543.z, x_1544.w);
    let x_1546 : vec3<f32> = u_xlat11;
    let x_1547 : vec4<f32> = u_xlat8;
    u_xlat36 = dot(x_1546, vec3<f32>(x_1547.x, x_1547.y, x_1547.z));
    let x_1550 : f32 = u_xlat36;
    u_xlat36 = clamp(x_1550, 0.0f, 1.0f);
    let x_1552 : vec3<f32> = u_xlat9;
    let x_1553 : vec4<f32> = u_xlat8;
    u_xlat39 = dot(x_1552, vec3<f32>(x_1553.x, x_1553.y, x_1553.z));
    let x_1556 : f32 = u_xlat39;
    u_xlat39 = clamp(x_1556, 0.0f, 1.0f);
    let x_1558 : f32 = u_xlat36;
    let x_1559 : f32 = u_xlat36;
    u_xlat36 = (x_1558 * x_1559);
    let x_1561 : f32 = u_xlat36;
    let x_1563 : f32 = u_xlat28.x;
    u_xlat36 = ((x_1561 * x_1563) + 1.000010014f);
    let x_1566 : f32 = u_xlat39;
    let x_1567 : f32 = u_xlat39;
    u_xlat39 = (x_1566 * x_1567);
    let x_1569 : f32 = u_xlat36;
    let x_1570 : f32 = u_xlat36;
    u_xlat36 = (x_1569 * x_1570);
    let x_1572 : f32 = u_xlat39;
    u_xlat39 = max(x_1572, 0.100000001f);
    let x_1574 : f32 = u_xlat36;
    let x_1575 : f32 = u_xlat39;
    u_xlat36 = (x_1574 * x_1575);
    let x_1577 : f32 = u_xlat38;
    let x_1578 : f32 = u_xlat36;
    u_xlat36 = (x_1577 * x_1578);
    let x_1580 : f32 = u_xlat37;
    let x_1581 : f32 = u_xlat36;
    u_xlat36 = (x_1580 / x_1581);
    let x_1583 : vec3<f32> = u_xlat2;
    let x_1584 : f32 = u_xlat36;
    let x_1587 : vec3<f32> = u_xlat3;
    let x_1588 : vec3<f32> = ((x_1583 * vec3<f32>(x_1584, x_1584, x_1584)) + x_1587);
    let x_1589 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1588.x, x_1588.y, x_1588.z, x_1589.w);
    let x_1591 : vec4<f32> = u_xlat8;
    let x_1593 : vec3<f32> = u_xlat10;
    let x_1595 : vec4<f32> = u_xlat7;
    let x_1597 : vec3<f32> = ((vec3<f32>(x_1591.x, x_1591.y, x_1591.z) * x_1593) + vec3<f32>(x_1595.x, x_1595.y, x_1595.z));
    let x_1598 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1597.x, x_1597.y, x_1597.z, x_1598.w);

    continuing {
      let x_1600 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1600 + bitcast<u32>(1i));
    }
  }
  let x_1602 : vec4<f32> = u_xlat5;
  let x_1604 : vec3<f32> = u_xlat6;
  let x_1607 : vec4<f32> = u_xlat4;
  let x_1609 : vec3<f32> = ((vec3<f32>(x_1602.x, x_1602.y, x_1602.z) * vec3<f32>(x_1604.x, x_1604.x, x_1604.x)) + vec3<f32>(x_1607.x, x_1607.y, x_1607.z));
  let x_1610 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1609.x, x_1609.y, x_1609.z, x_1610.w);
  let x_1612 : vec4<f32> = u_xlat7;
  let x_1614 : vec4<f32> = u_xlat0;
  let x_1616 : vec3<f32> = (vec3<f32>(x_1612.x, x_1612.y, x_1612.z) + vec3<f32>(x_1614.x, x_1614.y, x_1614.z));
  let x_1617 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1616.x, x_1616.y, x_1616.z, x_1617.w);
  let x_1620 : f32 = u_xlat35;
  let x_1621 : f32 = u_xlat35;
  u_xlat33 = (x_1620 * -(x_1621));
  let x_1624 : f32 = u_xlat33;
  u_xlat33 = exp2(x_1624);
  let x_1626 : vec4<f32> = u_xlat0;
  let x_1630 : vec4<f32> = x_146.unity_FogColor;
  let x_1633 : vec3<f32> = (vec3<f32>(x_1626.x, x_1626.y, x_1626.z) + -(vec3<f32>(x_1630.x, x_1630.y, x_1630.z)));
  let x_1634 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1633.x, x_1633.y, x_1633.z, x_1634.w);
  let x_1638 : f32 = u_xlat33;
  let x_1640 : vec4<f32> = u_xlat0;
  let x_1644 : vec4<f32> = x_146.unity_FogColor;
  let x_1646 : vec3<f32> = ((vec3<f32>(x_1638, x_1638, x_1638) * vec3<f32>(x_1640.x, x_1640.y, x_1640.z)) + vec3<f32>(x_1644.x, x_1644.y, x_1644.z));
  let x_1647 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1646.x, x_1646.y, x_1646.z, x_1647.w);
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

