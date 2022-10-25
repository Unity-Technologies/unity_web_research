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

@group(1) @binding(3) var<uniform> x_810 : MainLightShadows;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1181 : AdditionalLights;

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
  var x_640 : f32;
  var x_652 : f32;
  var x_663 : f32;
  var u_xlat26 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat38 : f32;
  var u_xlatb38 : bool;
  var u_xlatb6 : bool;
  var u_xlat39 : f32;
  var u_xlat8 : vec2<f32>;
  var u_xlat19 : vec3<f32>;
  var u_xlatu0 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu35 : u32;
  var u_xlati37 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati35 : i32;
  var u_xlat9 : vec3<f32>;
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
  let x_611 : f32 = x_146.unity_OrthoParams.w;
  u_xlatb1 = (x_611 == 0.0f);
  let x_613 : vec3<f32> = vs_INTERP0;
  let x_618 : vec3<f32> = x_146.x_WorldSpaceCameraPos;
  let x_619 : vec3<f32> = (-(x_613) + x_618);
  let x_620 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_619.x, x_619.y, x_619.z, x_620.w);
  let x_622 : vec4<f32> = u_xlat4;
  let x_624 : vec4<f32> = u_xlat4;
  u_xlat12.x = dot(vec3<f32>(x_622.x, x_622.y, x_622.z), vec3<f32>(x_624.x, x_624.y, x_624.z));
  let x_629 : f32 = u_xlat12.x;
  u_xlat12.x = inverseSqrt(x_629);
  let x_632 : vec2<f32> = u_xlat12;
  let x_634 : vec4<f32> = u_xlat4;
  let x_636 : vec3<f32> = (vec3<f32>(x_632.x, x_632.x, x_632.x) * vec3<f32>(x_634.x, x_634.y, x_634.z));
  let x_637 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_636.x, x_636.y, x_636.z, x_637.w);
  let x_639 : bool = u_xlatb1;
  if (x_639) {
    let x_644 : f32 = u_xlat4.x;
    x_640 = x_644;
  } else {
    let x_648 : f32 = x_146.unity_MatrixV[0i].z;
    x_640 = x_648;
  }
  let x_649 : f32 = x_640;
  u_xlat5.x = x_649;
  let x_651 : bool = u_xlatb1;
  if (x_651) {
    let x_656 : f32 = u_xlat4.y;
    x_652 = x_656;
  } else {
    let x_659 : f32 = x_146.unity_MatrixV[1i].z;
    x_652 = x_659;
  }
  let x_660 : f32 = x_652;
  u_xlat5.y = x_660;
  let x_662 : bool = u_xlatb1;
  if (x_662) {
    let x_667 : f32 = u_xlat4.z;
    x_663 = x_667;
  } else {
    let x_670 : f32 = x_146.unity_MatrixV[2i].z;
    x_663 = x_670;
  }
  let x_671 : f32 = x_663;
  u_xlat5.z = x_671;
  let x_680 : vec2<f32> = vs_INTERP4;
  let x_682 : f32 = x_146.x_GlobalMipBias.x;
  let x_683 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_680, x_682);
  let x_684 : vec3<f32> = vec3<f32>(x_683.x, x_683.y, x_683.z);
  let x_685 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_684.x, x_684.y, x_684.z, x_685.w);
  let x_688 : vec4<f32> = x_146.x_ScaledScreenParams;
  let x_689 : vec2<f32> = vec2<f32>(x_688.x, x_688.y);
  let x_693 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_689.x, x_689.y));
  let x_694 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_693.x, x_693.y, x_694.z, x_694.w);
  let x_696 : vec4<f32> = u_xlat4;
  let x_698 : vec4<f32> = hlslcc_FragCoord;
  let x_700 : vec2<f32> = (vec2<f32>(x_696.x, x_696.y) * vec2<f32>(x_698.x, x_698.y));
  let x_701 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_700.x, x_700.y, x_701.z, x_701.w);
  let x_704 : f32 = u_xlat4.y;
  let x_706 : f32 = x_146.x_ScaleBiasRt.x;
  let x_709 : f32 = x_146.x_ScaleBiasRt.y;
  u_xlat35 = ((x_704 * x_706) + x_709);
  let x_711 : f32 = u_xlat35;
  u_xlat4.z = (-(x_711) + 1.0f);
  let x_715 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_715 * vec3<f32>(0.863999963f, 0.863999963f, 0.863999963f));
  let x_719 : vec4<f32> = u_xlat1;
  let x_721 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_719.w, x_719.w, x_719.w) * x_721) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_726 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_726 * vec3<f32>(0.100000001f, 0.100000001f, 0.100000001f)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_733 : f32 = u_xlat0.x;
  u_xlat34 = (-(x_733) + 1.0f);
  let x_736 : f32 = u_xlat34;
  let x_737 : f32 = u_xlat34;
  u_xlat35 = (x_736 * x_737);
  let x_739 : f32 = u_xlat35;
  u_xlat35 = max(x_739, 0.0078125f);
  let x_742 : f32 = u_xlat35;
  let x_743 : f32 = u_xlat35;
  u_xlat36 = (x_742 * x_743);
  let x_746 : f32 = u_xlat0.x;
  u_xlat0.x = (x_746 + 0.136000037f);
  let x_751 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_751, 1.0f);
  let x_754 : f32 = u_xlat35;
  u_xlat15.x = ((x_754 * 4.0f) + 2.0f);
  let x_763 : vec4<f32> = u_xlat4;
  let x_766 : f32 = x_146.x_GlobalMipBias.x;
  let x_767 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_763.x, x_763.z), x_766);
  u_xlat4.x = x_767.x;
  let x_772 : f32 = u_xlat4.x;
  u_xlat26 = (x_772 + -1.0f);
  let x_775 : f32 = x_146.x_AmbientOcclusionParam.w;
  let x_776 : f32 = u_xlat26;
  u_xlat26 = ((x_775 * x_776) + 1.0f);
  let x_780 : f32 = u_xlat7.x;
  let x_782 : f32 = u_xlat4.x;
  u_xlat4.x = min(x_780, x_782);
  let x_787 : vec4<f32> = vs_INTERP8;
  let x_788 : vec2<f32> = vec2<f32>(x_787.x, x_787.y);
  let x_790 : f32 = vs_INTERP8.z;
  txVec0 = vec3<f32>(x_788.x, x_788.y, x_790);
  let x_802 : vec3<f32> = txVec0;
  let x_804 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_802.xy, x_802.z);
  u_xlat37 = x_804;
  let x_812 : f32 = x_810.x_MainLightShadowParams.x;
  u_xlat38 = (-(x_812) + 1.0f);
  let x_815 : f32 = u_xlat37;
  let x_817 : f32 = x_810.x_MainLightShadowParams.x;
  let x_819 : f32 = u_xlat38;
  u_xlat37 = ((x_815 * x_817) + x_819);
  let x_823 : f32 = vs_INTERP8.z;
  u_xlatb38 = (0.0f >= x_823);
  let x_827 : f32 = vs_INTERP8.z;
  u_xlatb6 = (x_827 >= 1.0f);
  let x_829 : bool = u_xlatb38;
  let x_830 : bool = u_xlatb6;
  u_xlatb38 = (x_829 | x_830);
  let x_832 : bool = u_xlatb38;
  let x_833 : f32 = u_xlat37;
  u_xlat37 = select(x_833, 1.0f, x_832);
  let x_835 : vec3<f32> = vs_INTERP0;
  let x_837 : vec3<f32> = x_146.x_WorldSpaceCameraPos;
  u_xlat6 = (x_835 + -(x_837));
  let x_840 : vec3<f32> = u_xlat6;
  let x_841 : vec3<f32> = u_xlat6;
  u_xlat38 = dot(x_840, x_841);
  let x_843 : f32 = u_xlat38;
  let x_845 : f32 = x_810.x_MainLightShadowParams.z;
  let x_848 : f32 = x_810.x_MainLightShadowParams.w;
  u_xlat38 = ((x_843 * x_845) + x_848);
  let x_850 : f32 = u_xlat38;
  u_xlat38 = clamp(x_850, 0.0f, 1.0f);
  let x_852 : f32 = u_xlat37;
  u_xlat6.x = (-(x_852) + 1.0f);
  let x_856 : f32 = u_xlat38;
  let x_858 : f32 = u_xlat6.x;
  let x_860 : f32 = u_xlat37;
  u_xlat37 = ((x_856 * x_858) + x_860);
  let x_862 : f32 = u_xlat26;
  let x_865 : vec4<f32> = x_146.x_MainLightColor;
  u_xlat6 = (vec3<f32>(x_862, x_862, x_862) * vec3<f32>(x_865.x, x_865.y, x_865.z));
  let x_868 : vec3<f32> = u_xlat5;
  let x_870 : vec3<f32> = u_xlat11;
  u_xlat38 = dot(-(x_868), x_870);
  let x_872 : f32 = u_xlat38;
  let x_873 : f32 = u_xlat38;
  u_xlat38 = (x_872 + x_873);
  let x_875 : vec3<f32> = u_xlat11;
  let x_876 : f32 = u_xlat38;
  let x_880 : vec3<f32> = u_xlat5;
  let x_882 : vec3<f32> = ((x_875 * -(vec3<f32>(x_876, x_876, x_876))) + -(x_880));
  let x_883 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_882.x, x_882.y, x_882.z, x_883.w);
  let x_885 : vec3<f32> = u_xlat11;
  let x_886 : vec3<f32> = u_xlat5;
  u_xlat38 = dot(x_885, x_886);
  let x_888 : f32 = u_xlat38;
  u_xlat38 = clamp(x_888, 0.0f, 1.0f);
  let x_890 : f32 = u_xlat38;
  u_xlat38 = (-(x_890) + 1.0f);
  let x_893 : f32 = u_xlat38;
  let x_894 : f32 = u_xlat38;
  u_xlat38 = (x_893 * x_894);
  let x_896 : f32 = u_xlat38;
  let x_897 : f32 = u_xlat38;
  u_xlat38 = (x_896 * x_897);
  let x_900 : f32 = u_xlat34;
  u_xlat39 = ((-(x_900) * 0.699999988f) + 1.700000048f);
  let x_906 : f32 = u_xlat34;
  let x_907 : f32 = u_xlat39;
  u_xlat34 = (x_906 * x_907);
  let x_909 : f32 = u_xlat34;
  u_xlat34 = (x_909 * 6.0f);
  let x_920 : vec4<f32> = u_xlat7;
  let x_922 : f32 = u_xlat34;
  let x_923 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_920.x, x_920.y, x_920.z), x_922);
  u_xlat7 = x_923;
  let x_925 : f32 = u_xlat7.w;
  u_xlat34 = (x_925 + -1.0f);
  let x_928 : f32 = x_59.unity_SpecCube0_HDR.w;
  let x_929 : f32 = u_xlat34;
  u_xlat34 = ((x_928 * x_929) + 1.0f);
  let x_932 : f32 = u_xlat34;
  u_xlat34 = max(x_932, 0.0f);
  let x_934 : f32 = u_xlat34;
  u_xlat34 = log2(x_934);
  let x_936 : f32 = u_xlat34;
  let x_938 : f32 = x_59.unity_SpecCube0_HDR.y;
  u_xlat34 = (x_936 * x_938);
  let x_940 : f32 = u_xlat34;
  u_xlat34 = exp2(x_940);
  let x_942 : f32 = u_xlat34;
  let x_944 : f32 = x_59.unity_SpecCube0_HDR.x;
  u_xlat34 = (x_942 * x_944);
  let x_946 : vec4<f32> = u_xlat7;
  let x_948 : f32 = u_xlat34;
  let x_950 : vec3<f32> = (vec3<f32>(x_946.x, x_946.y, x_946.z) * vec3<f32>(x_948, x_948, x_948));
  let x_951 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_950.x, x_950.y, x_950.z, x_951.w);
  let x_954 : f32 = u_xlat35;
  let x_956 : f32 = u_xlat35;
  u_xlat8 = ((vec2<f32>(x_954, x_954) * vec2<f32>(x_956, x_956)) + vec2<f32>(-1.0f, 1.0f));
  let x_962 : f32 = u_xlat8.y;
  u_xlat34 = (1.0f / x_962);
  let x_965 : vec3<f32> = u_xlat2;
  let x_967 : vec4<f32> = u_xlat0;
  u_xlat19 = (-(x_965) + vec3<f32>(x_967.x, x_967.x, x_967.x));
  let x_970 : f32 = u_xlat38;
  let x_972 : vec3<f32> = u_xlat19;
  let x_974 : vec3<f32> = u_xlat2;
  u_xlat19 = ((vec3<f32>(x_970, x_970, x_970) * x_972) + x_974);
  let x_976 : f32 = u_xlat34;
  let x_978 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_976, x_976, x_976) * x_978);
  let x_980 : vec4<f32> = u_xlat7;
  let x_982 : vec3<f32> = u_xlat19;
  let x_983 : vec3<f32> = (vec3<f32>(x_980.x, x_980.y, x_980.z) * x_982);
  let x_984 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_983.x, x_983.y, x_983.z, x_984.w);
  let x_986 : vec4<f32> = u_xlat1;
  let x_988 : vec3<f32> = u_xlat3;
  let x_990 : vec4<f32> = u_xlat7;
  let x_992 : vec3<f32> = ((vec3<f32>(x_986.x, x_986.y, x_986.z) * x_988) + vec3<f32>(x_990.x, x_990.y, x_990.z));
  let x_993 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_992.x, x_992.y, x_992.z, x_993.w);
  let x_995 : f32 = u_xlat37;
  let x_997 : f32 = x_59.unity_LightData.z;
  u_xlat0.x = (x_995 * x_997);
  let x_1000 : vec3<f32> = u_xlat11;
  let x_1002 : vec4<f32> = x_146.x_MainLightPosition;
  u_xlat34 = dot(x_1000, vec3<f32>(x_1002.x, x_1002.y, x_1002.z));
  let x_1005 : f32 = u_xlat34;
  u_xlat34 = clamp(x_1005, 0.0f, 1.0f);
  let x_1008 : f32 = u_xlat0.x;
  let x_1009 : f32 = u_xlat34;
  u_xlat0.x = (x_1008 * x_1009);
  let x_1012 : vec4<f32> = u_xlat0;
  let x_1014 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_1012.x, x_1012.x, x_1012.x) * x_1014);
  let x_1016 : vec3<f32> = u_xlat5;
  let x_1018 : vec4<f32> = x_146.x_MainLightPosition;
  let x_1020 : vec3<f32> = (x_1016 + vec3<f32>(x_1018.x, x_1018.y, x_1018.z));
  let x_1021 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1020.x, x_1020.y, x_1020.z, x_1021.w);
  let x_1023 : vec4<f32> = u_xlat7;
  let x_1025 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(vec3<f32>(x_1023.x, x_1023.y, x_1023.z), vec3<f32>(x_1025.x, x_1025.y, x_1025.z));
  let x_1030 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1030, 1.17549435e-37f);
  let x_1034 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_1034);
  let x_1037 : vec4<f32> = u_xlat0;
  let x_1039 : vec4<f32> = u_xlat7;
  let x_1041 : vec3<f32> = (vec3<f32>(x_1037.x, x_1037.x, x_1037.x) * vec3<f32>(x_1039.x, x_1039.y, x_1039.z));
  let x_1042 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1041.x, x_1041.y, x_1041.z, x_1042.w);
  let x_1044 : vec3<f32> = u_xlat11;
  let x_1045 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_1044, vec3<f32>(x_1045.x, x_1045.y, x_1045.z));
  let x_1050 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1050, 0.0f, 1.0f);
  let x_1054 : vec4<f32> = x_146.x_MainLightPosition;
  let x_1056 : vec4<f32> = u_xlat7;
  u_xlat34 = dot(vec3<f32>(x_1054.x, x_1054.y, x_1054.z), vec3<f32>(x_1056.x, x_1056.y, x_1056.z));
  let x_1059 : f32 = u_xlat34;
  u_xlat34 = clamp(x_1059, 0.0f, 1.0f);
  let x_1062 : f32 = u_xlat0.x;
  let x_1064 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1062 * x_1064);
  let x_1068 : f32 = u_xlat0.x;
  let x_1070 : f32 = u_xlat8.x;
  u_xlat0.x = ((x_1068 * x_1070) + 1.000010014f);
  let x_1075 : f32 = u_xlat34;
  let x_1076 : f32 = u_xlat34;
  u_xlat34 = (x_1075 * x_1076);
  let x_1079 : f32 = u_xlat0.x;
  let x_1081 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1079 * x_1081);
  let x_1084 : f32 = u_xlat34;
  u_xlat34 = max(x_1084, 0.100000001f);
  let x_1087 : f32 = u_xlat0.x;
  let x_1088 : f32 = u_xlat34;
  u_xlat0.x = (x_1087 * x_1088);
  let x_1092 : f32 = u_xlat15.x;
  let x_1094 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1092 * x_1094);
  let x_1097 : f32 = u_xlat36;
  let x_1099 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1097 / x_1099);
  let x_1102 : vec3<f32> = u_xlat2;
  let x_1103 : vec4<f32> = u_xlat0;
  let x_1106 : vec3<f32> = u_xlat3;
  let x_1107 : vec3<f32> = ((x_1102 * vec3<f32>(x_1103.x, x_1103.x, x_1103.x)) + x_1106);
  let x_1108 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1107.x, x_1107.y, x_1107.z, x_1108.w);
  let x_1110 : vec3<f32> = u_xlat6;
  let x_1111 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_1110 * vec3<f32>(x_1111.x, x_1111.y, x_1111.z));
  let x_1115 : f32 = x_146.x_AdditionalLightsCount.x;
  let x_1117 : f32 = x_59.unity_LightData.y;
  u_xlat0.x = min(x_1115, x_1117);
  let x_1123 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1123));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1135 : u32 = u_xlatu_loop_1;
    let x_1136 : u32 = u_xlatu0;
    if ((x_1135 < x_1136)) {
    } else {
      break;
    }
    let x_1139 : u32 = u_xlatu_loop_1;
    u_xlatu35 = (x_1139 >> 2u);
    let x_1143 : u32 = u_xlatu_loop_1;
    u_xlati37 = bitcast<i32>((x_1143 & 3u));
    let x_1146 : u32 = u_xlatu35;
    let x_1149 : vec4<f32> = x_59.unity_LightIndices[bitcast<i32>(x_1146)];
    let x_1159 : i32 = u_xlati37;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1164 : vec4<u32> = indexable[x_1159];
    u_xlat35 = dot(x_1149, bitcast<vec4<f32>>(x_1164));
    let x_1168 : f32 = u_xlat35;
    u_xlati35 = i32(x_1168);
    let x_1170 : vec3<f32> = vs_INTERP0;
    let x_1182 : i32 = u_xlati35;
    let x_1184 : vec4<f32> = x_1181.x_AdditionalLightsPosition[x_1182];
    let x_1187 : i32 = u_xlati35;
    let x_1189 : vec4<f32> = x_1181.x_AdditionalLightsPosition[x_1187];
    u_xlat19 = ((-(x_1170) * vec3<f32>(x_1184.w, x_1184.w, x_1184.w)) + vec3<f32>(x_1189.x, x_1189.y, x_1189.z));
    let x_1192 : vec3<f32> = u_xlat19;
    let x_1193 : vec3<f32> = u_xlat19;
    u_xlat37 = dot(x_1192, x_1193);
    let x_1195 : f32 = u_xlat37;
    u_xlat37 = max(x_1195, 6.10351562e-05f);
    let x_1198 : f32 = u_xlat37;
    u_xlat38 = inverseSqrt(x_1198);
    let x_1201 : f32 = u_xlat38;
    let x_1203 : vec3<f32> = u_xlat19;
    u_xlat9 = (vec3<f32>(x_1201, x_1201, x_1201) * x_1203);
    let x_1205 : f32 = u_xlat37;
    u_xlat39 = (1.0f / x_1205);
    let x_1207 : f32 = u_xlat37;
    let x_1208 : i32 = u_xlati35;
    let x_1210 : f32 = x_1181.x_AdditionalLightsAttenuation[x_1208].x;
    u_xlat37 = (x_1207 * x_1210);
    let x_1212 : f32 = u_xlat37;
    let x_1214 : f32 = u_xlat37;
    u_xlat37 = ((-(x_1212) * x_1214) + 1.0f);
    let x_1217 : f32 = u_xlat37;
    u_xlat37 = max(x_1217, 0.0f);
    let x_1219 : f32 = u_xlat37;
    let x_1220 : f32 = u_xlat37;
    u_xlat37 = (x_1219 * x_1220);
    let x_1222 : f32 = u_xlat37;
    let x_1223 : f32 = u_xlat39;
    u_xlat37 = (x_1222 * x_1223);
    let x_1225 : i32 = u_xlati35;
    let x_1227 : vec4<f32> = x_1181.x_AdditionalLightsSpotDir[x_1225];
    let x_1229 : vec3<f32> = u_xlat9;
    u_xlat39 = dot(vec3<f32>(x_1227.x, x_1227.y, x_1227.z), x_1229);
    let x_1231 : f32 = u_xlat39;
    let x_1232 : i32 = u_xlati35;
    let x_1234 : f32 = x_1181.x_AdditionalLightsAttenuation[x_1232].z;
    let x_1236 : i32 = u_xlati35;
    let x_1238 : f32 = x_1181.x_AdditionalLightsAttenuation[x_1236].w;
    u_xlat39 = ((x_1231 * x_1234) + x_1238);
    let x_1240 : f32 = u_xlat39;
    u_xlat39 = clamp(x_1240, 0.0f, 1.0f);
    let x_1242 : f32 = u_xlat39;
    let x_1243 : f32 = u_xlat39;
    u_xlat39 = (x_1242 * x_1243);
    let x_1245 : f32 = u_xlat37;
    let x_1246 : f32 = u_xlat39;
    u_xlat37 = (x_1245 * x_1246);
    let x_1249 : f32 = u_xlat26;
    let x_1251 : i32 = u_xlati35;
    let x_1253 : vec4<f32> = x_1181.x_AdditionalLightsColor[x_1251];
    u_xlat10 = (vec3<f32>(x_1249, x_1249, x_1249) * vec3<f32>(x_1253.x, x_1253.y, x_1253.z));
    let x_1256 : vec3<f32> = u_xlat11;
    let x_1257 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1256, x_1257);
    let x_1259 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1259, 0.0f, 1.0f);
    let x_1261 : f32 = u_xlat35;
    let x_1262 : f32 = u_xlat37;
    u_xlat35 = (x_1261 * x_1262);
    let x_1264 : f32 = u_xlat35;
    let x_1266 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1264, x_1264, x_1264) * x_1266);
    let x_1268 : vec3<f32> = u_xlat19;
    let x_1269 : f32 = u_xlat38;
    let x_1272 : vec3<f32> = u_xlat5;
    u_xlat19 = ((x_1268 * vec3<f32>(x_1269, x_1269, x_1269)) + x_1272);
    let x_1274 : vec3<f32> = u_xlat19;
    let x_1275 : vec3<f32> = u_xlat19;
    u_xlat35 = dot(x_1274, x_1275);
    let x_1277 : f32 = u_xlat35;
    u_xlat35 = max(x_1277, 1.17549435e-37f);
    let x_1279 : f32 = u_xlat35;
    u_xlat35 = inverseSqrt(x_1279);
    let x_1281 : f32 = u_xlat35;
    let x_1283 : vec3<f32> = u_xlat19;
    u_xlat19 = (vec3<f32>(x_1281, x_1281, x_1281) * x_1283);
    let x_1285 : vec3<f32> = u_xlat11;
    let x_1286 : vec3<f32> = u_xlat19;
    u_xlat35 = dot(x_1285, x_1286);
    let x_1288 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1288, 0.0f, 1.0f);
    let x_1290 : vec3<f32> = u_xlat9;
    let x_1291 : vec3<f32> = u_xlat19;
    u_xlat37 = dot(x_1290, x_1291);
    let x_1293 : f32 = u_xlat37;
    u_xlat37 = clamp(x_1293, 0.0f, 1.0f);
    let x_1295 : f32 = u_xlat35;
    let x_1296 : f32 = u_xlat35;
    u_xlat35 = (x_1295 * x_1296);
    let x_1298 : f32 = u_xlat35;
    let x_1300 : f32 = u_xlat8.x;
    u_xlat35 = ((x_1298 * x_1300) + 1.000010014f);
    let x_1303 : f32 = u_xlat37;
    let x_1304 : f32 = u_xlat37;
    u_xlat37 = (x_1303 * x_1304);
    let x_1306 : f32 = u_xlat35;
    let x_1307 : f32 = u_xlat35;
    u_xlat35 = (x_1306 * x_1307);
    let x_1309 : f32 = u_xlat37;
    u_xlat37 = max(x_1309, 0.100000001f);
    let x_1311 : f32 = u_xlat35;
    let x_1312 : f32 = u_xlat37;
    u_xlat35 = (x_1311 * x_1312);
    let x_1315 : f32 = u_xlat15.x;
    let x_1316 : f32 = u_xlat35;
    u_xlat35 = (x_1315 * x_1316);
    let x_1318 : f32 = u_xlat36;
    let x_1319 : f32 = u_xlat35;
    u_xlat35 = (x_1318 / x_1319);
    let x_1321 : vec3<f32> = u_xlat2;
    let x_1322 : f32 = u_xlat35;
    let x_1325 : vec3<f32> = u_xlat3;
    u_xlat19 = ((x_1321 * vec3<f32>(x_1322, x_1322, x_1322)) + x_1325);
    let x_1327 : vec3<f32> = u_xlat19;
    let x_1328 : vec3<f32> = u_xlat10;
    let x_1330 : vec4<f32> = u_xlat7;
    let x_1332 : vec3<f32> = ((x_1327 * x_1328) + vec3<f32>(x_1330.x, x_1330.y, x_1330.z));
    let x_1333 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1332.x, x_1332.y, x_1332.z, x_1333.w);

    continuing {
      let x_1335 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1335 + bitcast<u32>(1i));
    }
  }
  let x_1337 : vec4<f32> = u_xlat1;
  let x_1339 : vec4<f32> = u_xlat4;
  let x_1342 : vec3<f32> = u_xlat6;
  let x_1343 : vec3<f32> = ((vec3<f32>(x_1337.x, x_1337.y, x_1337.z) * vec3<f32>(x_1339.x, x_1339.x, x_1339.x)) + x_1342);
  let x_1344 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1343.x, x_1343.y, x_1343.z, x_1344.w);
  let x_1348 : vec4<f32> = u_xlat7;
  let x_1350 : vec4<f32> = u_xlat0;
  let x_1352 : vec3<f32> = (vec3<f32>(x_1348.x, x_1348.y, x_1348.z) + vec3<f32>(x_1350.x, x_1350.y, x_1350.z));
  let x_1353 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1352.x, x_1352.y, x_1352.z, x_1353.w);
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

