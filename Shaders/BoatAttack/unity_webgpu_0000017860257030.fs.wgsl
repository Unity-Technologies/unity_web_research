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

@group(1) @binding(3) var<uniform> x_679 : MainLightShadows;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_1163 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1660 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1780 : AdditionalLightsCookies;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

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
  var u_xlat26 : f32;
  var x_666 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlatb5 : vec4<bool>;
  var u_xlatu1 : u32;
  var u_xlati1 : i32;
  var u_xlat44 : f32;
  var u_xlat19 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatb14 : vec2<bool>;
  var u_xlatb27 : bool;
  var x_1109 : f32;
  var u_xlat27 : vec2<f32>;
  var x_1247 : f32;
  var x_1259 : vec3<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlatu0 : u32;
  var u_xlatb32 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu46 : u32;
  var u_xlati8 : i32;
  var u_xlat46 : f32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat47 : f32;
  var u_xlat22 : vec3<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlatu10 : u32;
  var u_xlati23 : i32;
  var u_xlati10 : i32;
  var u_xlati36 : i32;
  var u_xlat11 : vec4<f32>;
  var u_xlat23 : vec3<f32>;
  var u_xlatb10 : bool;
  var u_xlat12 : vec3<f32>;
  var u_xlatb37 : vec2<bool>;
  var u_xlat37 : vec2<f32>;
  var x_2100 : f32;
  var x_2113 : f32;
  var u_xlat49 : f32;
  var x_2175 : f32;
  var x_2186 : vec3<f32>;
  var u_xlat39 : f32;
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
  let x_623 : vec3<f32> = (x_620 * vec3<f32>(x_621.x, x_621.x, x_621.x));
  let x_624 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_623.x, x_623.y, x_623.z, x_624.w);
  let x_627 : f32 = x_146.unity_OrthoParams.w;
  u_xlatb13.x = (x_627 == 0.0f);
  let x_630 : vec3<f32> = vs_INTERP0;
  let x_635 : vec3<f32> = x_146.x_WorldSpaceCameraPos;
  let x_636 : vec3<f32> = (-(x_630) + x_635);
  let x_637 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_636.x, x_636.y, x_636.z, x_637.w);
  let x_640 : vec4<f32> = u_xlat1;
  let x_642 : vec4<f32> = u_xlat1;
  u_xlat26 = dot(vec3<f32>(x_640.x, x_640.y, x_640.z), vec3<f32>(x_642.x, x_642.y, x_642.z));
  let x_645 : f32 = u_xlat26;
  u_xlat26 = inverseSqrt(x_645);
  let x_647 : f32 = u_xlat26;
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
  let x_665 : bool = u_xlatb13.x;
  if (x_665) {
    let x_669 : vec4<f32> = u_xlat1;
    x_666 = vec3<f32>(x_669.x, x_669.y, x_669.z);
  } else {
    let x_672 : vec3<f32> = u_xlat5;
    x_666 = x_672;
  }
  let x_673 : vec3<f32> = x_666;
  u_xlat13 = x_673;
  let x_674 : vec3<f32> = vs_INTERP0;
  let x_681 : vec4<f32> = x_679.x_CascadeShadowSplitSpheres0;
  let x_684 : vec3<f32> = (x_674 + -(vec3<f32>(x_681.x, x_681.y, x_681.z)));
  let x_685 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_684.x, x_684.y, x_684.z, x_685.w);
  let x_687 : vec3<f32> = vs_INTERP0;
  let x_689 : vec4<f32> = x_679.x_CascadeShadowSplitSpheres1;
  u_xlat5 = (x_687 + -(vec3<f32>(x_689.x, x_689.y, x_689.z)));
  let x_693 : vec3<f32> = vs_INTERP0;
  let x_695 : vec4<f32> = x_679.x_CascadeShadowSplitSpheres2;
  let x_698 : vec3<f32> = (x_693 + -(vec3<f32>(x_695.x, x_695.y, x_695.z)));
  let x_699 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_698.x, x_698.y, x_698.z, x_699.w);
  let x_701 : vec3<f32> = vs_INTERP0;
  let x_703 : vec4<f32> = x_679.x_CascadeShadowSplitSpheres3;
  u_xlat20 = (x_701 + -(vec3<f32>(x_703.x, x_703.y, x_703.z)));
  let x_708 : vec4<f32> = u_xlat1;
  let x_710 : vec4<f32> = u_xlat1;
  u_xlat8.x = dot(vec3<f32>(x_708.x, x_708.y, x_708.z), vec3<f32>(x_710.x, x_710.y, x_710.z));
  let x_714 : vec3<f32> = u_xlat5;
  let x_715 : vec3<f32> = u_xlat5;
  u_xlat8.y = dot(x_714, x_715);
  let x_718 : vec4<f32> = u_xlat6;
  let x_720 : vec4<f32> = u_xlat6;
  u_xlat8.z = dot(vec3<f32>(x_718.x, x_718.y, x_718.z), vec3<f32>(x_720.x, x_720.y, x_720.z));
  let x_724 : vec3<f32> = u_xlat20;
  let x_725 : vec3<f32> = u_xlat20;
  u_xlat8.w = dot(x_724, x_725);
  let x_731 : vec4<f32> = u_xlat8;
  let x_733 : vec4<f32> = x_679.x_CascadeShadowSplitSphereRadii;
  u_xlatb5 = (x_731 < x_733);
  let x_736 : bool = u_xlatb5.x;
  u_xlat6.x = select(0.0f, 1.0f, x_736);
  let x_740 : bool = u_xlatb5.y;
  u_xlat6.y = select(0.0f, 1.0f, x_740);
  let x_744 : bool = u_xlatb5.z;
  u_xlat6.z = select(0.0f, 1.0f, x_744);
  let x_748 : bool = u_xlatb5.w;
  u_xlat6.w = select(0.0f, 1.0f, x_748);
  let x_752 : bool = u_xlatb5.x;
  u_xlat1.x = select(-0.0f, -1.0f, x_752);
  let x_757 : bool = u_xlatb5.y;
  u_xlat1.y = select(-0.0f, -1.0f, x_757);
  let x_761 : bool = u_xlatb5.z;
  u_xlat1.z = select(-0.0f, -1.0f, x_761);
  let x_764 : vec4<f32> = u_xlat1;
  let x_766 : vec4<f32> = u_xlat6;
  let x_768 : vec3<f32> = (vec3<f32>(x_764.x, x_764.y, x_764.z) + vec3<f32>(x_766.y, x_766.z, x_766.w));
  let x_769 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_768.x, x_768.y, x_768.z, x_769.w);
  let x_771 : vec4<f32> = u_xlat1;
  let x_774 : vec3<f32> = max(vec3<f32>(x_771.x, x_771.y, x_771.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_775 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_775.x, x_774.x, x_774.y, x_774.z);
  let x_777 : vec4<f32> = u_xlat6;
  u_xlat1.x = dot(x_777, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_782 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_782) + 4.0f);
  let x_789 : f32 = u_xlat1.x;
  u_xlatu1 = u32(x_789);
  let x_793 : u32 = u_xlatu1;
  u_xlati1 = (bitcast<i32>(x_793) << bitcast<u32>(2i));
  let x_796 : vec3<f32> = vs_INTERP0;
  let x_798 : i32 = u_xlati1;
  let x_801 : i32 = u_xlati1;
  let x_805 : vec4<f32> = x_679.x_MainLightWorldToShadow[((x_798 + 1i) / 4i)][((x_801 + 1i) % 4i)];
  u_xlat5 = (vec3<f32>(x_796.y, x_796.y, x_796.y) * vec3<f32>(x_805.x, x_805.y, x_805.z));
  let x_808 : i32 = u_xlati1;
  let x_810 : i32 = u_xlati1;
  let x_813 : vec4<f32> = x_679.x_MainLightWorldToShadow[(x_808 / 4i)][(x_810 % 4i)];
  let x_815 : vec3<f32> = vs_INTERP0;
  let x_818 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_813.x, x_813.y, x_813.z) * vec3<f32>(x_815.x, x_815.x, x_815.x)) + x_818);
  let x_820 : i32 = u_xlati1;
  let x_823 : i32 = u_xlati1;
  let x_827 : vec4<f32> = x_679.x_MainLightWorldToShadow[((x_820 + 2i) / 4i)][((x_823 + 2i) % 4i)];
  let x_829 : vec3<f32> = vs_INTERP0;
  let x_832 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_827.x, x_827.y, x_827.z) * vec3<f32>(x_829.z, x_829.z, x_829.z)) + x_832);
  let x_834 : vec3<f32> = u_xlat5;
  let x_835 : i32 = u_xlati1;
  let x_838 : i32 = u_xlati1;
  let x_842 : vec4<f32> = x_679.x_MainLightWorldToShadow[((x_835 + 3i) / 4i)][((x_838 + 3i) % 4i)];
  let x_844 : vec3<f32> = (x_834 + vec3<f32>(x_842.x, x_842.y, x_842.z));
  let x_845 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_844.x, x_844.y, x_844.z, x_845.w);
  let x_848 : f32 = vs_INTERP0.y;
  let x_850 : f32 = x_146.unity_MatrixV[1i].z;
  u_xlat41 = (x_848 * x_850);
  let x_853 : f32 = x_146.unity_MatrixV[0i].z;
  let x_855 : f32 = vs_INTERP0.x;
  let x_857 : f32 = u_xlat41;
  u_xlat41 = ((x_853 * x_855) + x_857);
  let x_860 : f32 = x_146.unity_MatrixV[2i].z;
  let x_862 : f32 = vs_INTERP0.z;
  let x_864 : f32 = u_xlat41;
  u_xlat41 = ((x_860 * x_862) + x_864);
  let x_866 : f32 = u_xlat41;
  let x_868 : f32 = x_146.unity_MatrixV[3i].z;
  u_xlat41 = (x_866 + x_868);
  let x_870 : f32 = u_xlat41;
  let x_874 : f32 = x_146.x_ProjectionParams.y;
  u_xlat41 = (-(x_870) + -(x_874));
  let x_877 : f32 = u_xlat41;
  u_xlat41 = max(x_877, 0.0f);
  let x_879 : f32 = u_xlat41;
  let x_882 : f32 = x_146.unity_FogParams.x;
  u_xlat41 = (x_879 * x_882);
  u_xlat4.w = 1.0f;
  let x_887 : vec4<f32> = x_59.unity_SHAr;
  let x_888 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_887, x_888);
  let x_893 : vec4<f32> = x_59.unity_SHAg;
  let x_894 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_893, x_894);
  let x_899 : vec4<f32> = x_59.unity_SHAb;
  let x_900 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_899, x_900);
  let x_903 : vec4<f32> = u_xlat4;
  let x_905 : vec4<f32> = u_xlat4;
  u_xlat6 = (vec4<f32>(x_903.y, x_903.z, x_903.z, x_903.x) * vec4<f32>(x_905.x, x_905.y, x_905.z, x_905.z));
  let x_910 : vec4<f32> = x_59.unity_SHBr;
  let x_911 : vec4<f32> = u_xlat6;
  u_xlat8.x = dot(x_910, x_911);
  let x_916 : vec4<f32> = x_59.unity_SHBg;
  let x_917 : vec4<f32> = u_xlat6;
  u_xlat8.y = dot(x_916, x_917);
  let x_922 : vec4<f32> = x_59.unity_SHBb;
  let x_923 : vec4<f32> = u_xlat6;
  u_xlat8.z = dot(x_922, x_923);
  let x_927 : f32 = u_xlat4.y;
  let x_929 : f32 = u_xlat4.y;
  u_xlat42 = (x_927 * x_929);
  let x_932 : f32 = u_xlat4.x;
  let x_934 : f32 = u_xlat4.x;
  let x_936 : f32 = u_xlat42;
  u_xlat42 = ((x_932 * x_934) + -(x_936));
  let x_941 : vec4<f32> = x_59.unity_SHC;
  let x_943 : f32 = u_xlat42;
  let x_946 : vec4<f32> = u_xlat8;
  let x_948 : vec3<f32> = ((vec3<f32>(x_941.x, x_941.y, x_941.z) * vec3<f32>(x_943, x_943, x_943)) + vec3<f32>(x_946.x, x_946.y, x_946.z));
  let x_949 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_948.x, x_948.y, x_948.z, x_949.w);
  let x_951 : vec3<f32> = u_xlat5;
  let x_952 : vec4<f32> = u_xlat6;
  u_xlat5 = (x_951 + vec3<f32>(x_952.x, x_952.y, x_952.z));
  let x_955 : vec3<f32> = u_xlat5;
  u_xlat5 = max(x_955, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_958 : vec4<f32> = x_146.x_ScaledScreenParams;
  let x_959 : vec2<f32> = vec2<f32>(x_958.x, x_958.y);
  let x_963 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_959.x, x_959.y));
  let x_964 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_963.x, x_963.y, x_964.z, x_964.w);
  let x_966 : vec4<f32> = u_xlat6;
  let x_968 : vec4<f32> = hlslcc_FragCoord;
  let x_970 : vec2<f32> = (vec2<f32>(x_966.x, x_966.y) * vec2<f32>(x_968.x, x_968.y));
  let x_971 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_970.x, x_970.y, x_971.z, x_971.w);
  let x_974 : f32 = u_xlat6.y;
  let x_977 : f32 = x_146.x_ScaleBiasRt.x;
  let x_980 : f32 = x_146.x_ScaleBiasRt.y;
  u_xlat42 = ((x_974 * x_977) + x_980);
  let x_982 : f32 = u_xlat42;
  u_xlat6.z = (-(x_982) + 1.0f);
  let x_986 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_986 * vec3<f32>(0.863999963f, 0.863999963f, 0.863999963f));
  let x_990 : vec4<f32> = u_xlat1;
  let x_992 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_990.w, x_990.w, x_990.w) * x_992) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_997 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_997 * vec3<f32>(0.100000001f, 0.100000001f, 0.100000001f)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_1004 : f32 = u_xlat0.x;
  u_xlat14.z = (-(x_1004) + 1.0f);
  let x_1009 : f32 = u_xlat14.z;
  let x_1011 : f32 = u_xlat14.z;
  u_xlat42 = (x_1009 * x_1011);
  let x_1013 : f32 = u_xlat42;
  u_xlat42 = max(x_1013, 0.0078125f);
  let x_1016 : f32 = u_xlat42;
  let x_1017 : f32 = u_xlat42;
  u_xlat43 = (x_1016 * x_1017);
  let x_1020 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1020 + 0.136000037f);
  let x_1025 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_1025, 1.0f);
  let x_1029 : f32 = u_xlat42;
  u_xlat44 = ((x_1029 * 4.0f) + 2.0f);
  let x_1037 : vec4<f32> = u_xlat6;
  let x_1040 : f32 = x_146.x_GlobalMipBias.x;
  let x_1041 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_1037.x, x_1037.z), x_1040);
  u_xlat6.x = x_1041.x;
  let x_1046 : f32 = u_xlat6.x;
  u_xlat19 = (x_1046 + -1.0f);
  let x_1049 : f32 = x_146.x_AmbientOcclusionParam.w;
  let x_1050 : f32 = u_xlat19;
  u_xlat19 = ((x_1049 * x_1050) + 1.0f);
  let x_1054 : f32 = u_xlat7.x;
  let x_1056 : f32 = u_xlat6.x;
  u_xlat6.x = min(x_1054, x_1056);
  let x_1060 : vec4<f32> = u_xlat1;
  let x_1061 : vec2<f32> = vec2<f32>(x_1060.x, x_1060.y);
  let x_1063 : f32 = u_xlat1.z;
  txVec0 = vec3<f32>(x_1061.x, x_1061.y, x_1063);
  let x_1075 : vec3<f32> = txVec0;
  let x_1077 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1075.xy, x_1075.z);
  u_xlat1.x = x_1077;
  let x_1080 : f32 = x_679.x_MainLightShadowParams.x;
  u_xlat14.x = (-(x_1080) + 1.0f);
  let x_1085 : f32 = u_xlat1.x;
  let x_1087 : f32 = x_679.x_MainLightShadowParams.x;
  let x_1090 : f32 = u_xlat14.x;
  u_xlat1.x = ((x_1085 * x_1087) + x_1090);
  let x_1095 : f32 = u_xlat1.z;
  u_xlatb14.x = (0.0f >= x_1095);
  let x_1100 : f32 = u_xlat1.z;
  u_xlatb27 = (x_1100 >= 1.0f);
  let x_1102 : bool = u_xlatb27;
  let x_1104 : bool = u_xlatb14.x;
  u_xlatb14.x = (x_1102 | x_1104);
  let x_1108 : bool = u_xlatb14.x;
  if (x_1108) {
    x_1109 = 1.0f;
  } else {
    let x_1114 : f32 = u_xlat1.x;
    x_1109 = x_1114;
  }
  let x_1115 : f32 = x_1109;
  u_xlat1.x = x_1115;
  let x_1117 : vec3<f32> = vs_INTERP0;
  let x_1119 : vec3<f32> = x_146.x_WorldSpaceCameraPos;
  let x_1121 : vec3<f32> = (x_1117 + -(x_1119));
  let x_1122 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1121.x, x_1121.y, x_1121.z, x_1122.w);
  let x_1124 : vec4<f32> = u_xlat7;
  let x_1126 : vec4<f32> = u_xlat7;
  u_xlat14.x = dot(vec3<f32>(x_1124.x, x_1124.y, x_1124.z), vec3<f32>(x_1126.x, x_1126.y, x_1126.z));
  let x_1131 : f32 = u_xlat14.x;
  let x_1133 : f32 = x_679.x_MainLightShadowParams.z;
  let x_1136 : f32 = x_679.x_MainLightShadowParams.w;
  u_xlat14.x = ((x_1131 * x_1133) + x_1136);
  let x_1140 : f32 = u_xlat14.x;
  u_xlat14.x = clamp(x_1140, 0.0f, 1.0f);
  let x_1146 : f32 = u_xlat1.x;
  u_xlat27.x = (-(x_1146) + 1.0f);
  let x_1151 : f32 = u_xlat14.x;
  let x_1153 : f32 = u_xlat27.x;
  let x_1156 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1151 * x_1153) + x_1156);
  let x_1165 : f32 = x_1163.x_MainLightCookieTextureFormat;
  u_xlatb14.x = !((x_1165 == -1.0f));
  let x_1169 : bool = u_xlatb14.x;
  if (x_1169) {
    let x_1172 : vec3<f32> = vs_INTERP0;
    let x_1175 : vec4<f32> = x_1163.x_MainLightWorldToLight[1i];
    let x_1177 : vec2<f32> = (vec2<f32>(x_1172.y, x_1172.y) * vec2<f32>(x_1175.x, x_1175.y));
    let x_1178 : vec3<f32> = u_xlat14;
    u_xlat14 = vec3<f32>(x_1177.x, x_1177.y, x_1178.z);
    let x_1181 : vec4<f32> = x_1163.x_MainLightWorldToLight[0i];
    let x_1183 : vec3<f32> = vs_INTERP0;
    let x_1186 : vec3<f32> = u_xlat14;
    let x_1188 : vec2<f32> = ((vec2<f32>(x_1181.x, x_1181.y) * vec2<f32>(x_1183.x, x_1183.x)) + vec2<f32>(x_1186.x, x_1186.y));
    let x_1189 : vec3<f32> = u_xlat14;
    u_xlat14 = vec3<f32>(x_1188.x, x_1188.y, x_1189.z);
    let x_1192 : vec4<f32> = x_1163.x_MainLightWorldToLight[2i];
    let x_1194 : vec3<f32> = vs_INTERP0;
    let x_1197 : vec3<f32> = u_xlat14;
    let x_1199 : vec2<f32> = ((vec2<f32>(x_1192.x, x_1192.y) * vec2<f32>(x_1194.z, x_1194.z)) + vec2<f32>(x_1197.x, x_1197.y));
    let x_1200 : vec3<f32> = u_xlat14;
    u_xlat14 = vec3<f32>(x_1199.x, x_1199.y, x_1200.z);
    let x_1202 : vec3<f32> = u_xlat14;
    let x_1205 : vec4<f32> = x_1163.x_MainLightWorldToLight[3i];
    let x_1207 : vec2<f32> = (vec2<f32>(x_1202.x, x_1202.y) + vec2<f32>(x_1205.x, x_1205.y));
    let x_1208 : vec3<f32> = u_xlat14;
    u_xlat14 = vec3<f32>(x_1207.x, x_1207.y, x_1208.z);
    let x_1210 : vec3<f32> = u_xlat14;
    let x_1215 : vec2<f32> = ((vec2<f32>(x_1210.x, x_1210.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1216 : vec3<f32> = u_xlat14;
    u_xlat14 = vec3<f32>(x_1215.x, x_1215.y, x_1216.z);
    let x_1223 : vec3<f32> = u_xlat14;
    let x_1226 : f32 = x_146.x_GlobalMipBias.x;
    let x_1227 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1223.x, x_1223.y), x_1226);
    u_xlat7 = x_1227;
    let x_1229 : f32 = x_1163.x_MainLightCookieTextureFormat;
    let x_1231 : f32 = x_1163.x_MainLightCookieTextureFormat;
    let x_1233 : f32 = x_1163.x_MainLightCookieTextureFormat;
    let x_1235 : f32 = x_1163.x_MainLightCookieTextureFormat;
    let x_1236 : vec4<f32> = vec4<f32>(x_1229, x_1231, x_1233, x_1235);
    let x_1243 : vec4<bool> = (vec4<f32>(x_1236.x, x_1236.y, x_1236.z, x_1236.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb14 = vec2<bool>(x_1243.x, x_1243.y);
    let x_1246 : bool = u_xlatb14.y;
    if (x_1246) {
      let x_1251 : f32 = u_xlat7.w;
      x_1247 = x_1251;
    } else {
      let x_1254 : f32 = u_xlat7.x;
      x_1247 = x_1254;
    }
    let x_1255 : f32 = x_1247;
    u_xlat27.x = x_1255;
    let x_1258 : bool = u_xlatb14.x;
    if (x_1258) {
      let x_1262 : vec4<f32> = u_xlat7;
      x_1259 = vec3<f32>(x_1262.x, x_1262.y, x_1262.z);
    } else {
      let x_1265 : vec2<f32> = u_xlat27;
      x_1259 = vec3<f32>(x_1265.x, x_1265.x, x_1265.x);
    }
    let x_1267 : vec3<f32> = x_1259;
    let x_1268 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1267.x, x_1267.y, x_1267.z, x_1268.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_1274 : vec4<f32> = u_xlat7;
  let x_1277 : vec4<f32> = x_146.x_MainLightColor;
  let x_1279 : vec3<f32> = (vec3<f32>(x_1274.x, x_1274.y, x_1274.z) * vec3<f32>(x_1277.x, x_1277.y, x_1277.z));
  let x_1280 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1279.x, x_1279.y, x_1279.z, x_1280.w);
  let x_1282 : f32 = u_xlat19;
  let x_1284 : vec4<f32> = u_xlat7;
  let x_1286 : vec3<f32> = (vec3<f32>(x_1282, x_1282, x_1282) * vec3<f32>(x_1284.x, x_1284.y, x_1284.z));
  let x_1287 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1286.x, x_1286.y, x_1286.z, x_1287.w);
  let x_1289 : vec3<f32> = u_xlat13;
  let x_1291 : vec4<f32> = u_xlat4;
  u_xlat14.x = dot(-(x_1289), vec3<f32>(x_1291.x, x_1291.y, x_1291.z));
  let x_1296 : f32 = u_xlat14.x;
  let x_1298 : f32 = u_xlat14.x;
  u_xlat14.x = (x_1296 + x_1298);
  let x_1301 : vec4<f32> = u_xlat4;
  let x_1303 : vec3<f32> = u_xlat14;
  let x_1307 : vec3<f32> = u_xlat13;
  let x_1309 : vec3<f32> = ((vec3<f32>(x_1301.x, x_1301.y, x_1301.z) * -(vec3<f32>(x_1303.x, x_1303.x, x_1303.x))) + -(x_1307));
  let x_1310 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1309.x, x_1309.y, x_1309.z, x_1310.w);
  let x_1312 : vec4<f32> = u_xlat4;
  let x_1314 : vec3<f32> = u_xlat13;
  u_xlat14.x = dot(vec3<f32>(x_1312.x, x_1312.y, x_1312.z), x_1314);
  let x_1318 : f32 = u_xlat14.x;
  u_xlat14.x = clamp(x_1318, 0.0f, 1.0f);
  let x_1322 : f32 = u_xlat14.x;
  u_xlat14.x = (-(x_1322) + 1.0f);
  let x_1327 : f32 = u_xlat14.x;
  let x_1329 : f32 = u_xlat14.x;
  u_xlat14.x = (x_1327 * x_1329);
  let x_1333 : f32 = u_xlat14.z;
  u_xlat14.y = ((-(x_1333) * 0.699999988f) + 1.700000048f);
  let x_1340 : vec3<f32> = u_xlat14;
  let x_1342 : vec3<f32> = u_xlat14;
  let x_1344 : vec2<f32> = (vec2<f32>(x_1340.x, x_1340.y) * vec2<f32>(x_1342.x, x_1342.z));
  let x_1345 : vec3<f32> = u_xlat14;
  u_xlat14 = vec3<f32>(x_1344.x, x_1344.y, x_1345.z);
  let x_1348 : f32 = u_xlat14.y;
  u_xlat27.x = (x_1348 * 6.0f);
  let x_1360 : vec4<f32> = u_xlat8;
  let x_1363 : f32 = u_xlat27.x;
  let x_1364 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1360.x, x_1360.y, x_1360.z), x_1363);
  u_xlat8 = x_1364;
  let x_1366 : f32 = u_xlat8.w;
  u_xlat27.x = (x_1366 + -1.0f);
  let x_1370 : f32 = x_59.unity_SpecCube0_HDR.w;
  let x_1372 : f32 = u_xlat27.x;
  u_xlat27.x = ((x_1370 * x_1372) + 1.0f);
  let x_1377 : f32 = u_xlat27.x;
  u_xlat27.x = max(x_1377, 0.0f);
  let x_1381 : f32 = u_xlat27.x;
  u_xlat27.x = log2(x_1381);
  let x_1385 : f32 = u_xlat27.x;
  let x_1387 : f32 = x_59.unity_SpecCube0_HDR.y;
  u_xlat27.x = (x_1385 * x_1387);
  let x_1391 : f32 = u_xlat27.x;
  u_xlat27.x = exp2(x_1391);
  let x_1395 : f32 = u_xlat27.x;
  let x_1397 : f32 = x_59.unity_SpecCube0_HDR.x;
  u_xlat27.x = (x_1395 * x_1397);
  let x_1400 : vec4<f32> = u_xlat8;
  let x_1402 : vec2<f32> = u_xlat27;
  let x_1404 : vec3<f32> = (vec3<f32>(x_1400.x, x_1400.y, x_1400.z) * vec3<f32>(x_1402.x, x_1402.x, x_1402.x));
  let x_1405 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1404.x, x_1404.y, x_1404.z, x_1405.w);
  let x_1407 : f32 = u_xlat42;
  let x_1409 : f32 = u_xlat42;
  u_xlat27 = ((vec2<f32>(x_1407, x_1407) * vec2<f32>(x_1409, x_1409)) + vec2<f32>(-1.0f, 1.0f));
  let x_1415 : f32 = u_xlat27.y;
  u_xlat40 = (1.0f / x_1415);
  let x_1418 : vec3<f32> = u_xlat2;
  let x_1420 : vec4<f32> = u_xlat0;
  u_xlat9 = (-(x_1418) + vec3<f32>(x_1420.x, x_1420.x, x_1420.x));
  let x_1423 : vec3<f32> = u_xlat14;
  let x_1425 : vec3<f32> = u_xlat9;
  let x_1427 : vec3<f32> = u_xlat2;
  u_xlat9 = ((vec3<f32>(x_1423.x, x_1423.x, x_1423.x) * x_1425) + x_1427);
  let x_1429 : f32 = u_xlat40;
  let x_1431 : vec3<f32> = u_xlat9;
  u_xlat9 = (vec3<f32>(x_1429, x_1429, x_1429) * x_1431);
  let x_1433 : vec4<f32> = u_xlat8;
  let x_1435 : vec3<f32> = u_xlat9;
  let x_1436 : vec3<f32> = (vec3<f32>(x_1433.x, x_1433.y, x_1433.z) * x_1435);
  let x_1437 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1436.x, x_1436.y, x_1436.z, x_1437.w);
  let x_1439 : vec3<f32> = u_xlat5;
  let x_1440 : vec3<f32> = u_xlat3;
  let x_1442 : vec4<f32> = u_xlat8;
  u_xlat5 = ((x_1439 * x_1440) + vec3<f32>(x_1442.x, x_1442.y, x_1442.z));
  let x_1446 : f32 = u_xlat1.x;
  let x_1448 : f32 = x_59.unity_LightData.z;
  u_xlat0.x = (x_1446 * x_1448);
  let x_1451 : vec4<f32> = u_xlat4;
  let x_1454 : vec4<f32> = x_146.x_MainLightPosition;
  u_xlat1.x = dot(vec3<f32>(x_1451.x, x_1451.y, x_1451.z), vec3<f32>(x_1454.x, x_1454.y, x_1454.z));
  let x_1459 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1459, 0.0f, 1.0f);
  let x_1463 : f32 = u_xlat0.x;
  let x_1465 : f32 = u_xlat1.x;
  u_xlat0.x = (x_1463 * x_1465);
  let x_1468 : vec4<f32> = u_xlat0;
  let x_1470 : vec4<f32> = u_xlat7;
  let x_1472 : vec3<f32> = (vec3<f32>(x_1468.x, x_1468.x, x_1468.x) * vec3<f32>(x_1470.x, x_1470.y, x_1470.z));
  let x_1473 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1472.x, x_1472.y, x_1473.z, x_1472.z);
  let x_1475 : vec3<f32> = u_xlat13;
  let x_1477 : vec4<f32> = x_146.x_MainLightPosition;
  let x_1479 : vec3<f32> = (x_1475 + vec3<f32>(x_1477.x, x_1477.y, x_1477.z));
  let x_1480 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1479.x, x_1479.y, x_1479.z, x_1480.w);
  let x_1482 : vec4<f32> = u_xlat7;
  let x_1484 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(vec3<f32>(x_1482.x, x_1482.y, x_1482.z), vec3<f32>(x_1484.x, x_1484.y, x_1484.z));
  let x_1489 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1489, 1.17549435e-37f);
  let x_1493 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_1493);
  let x_1496 : vec4<f32> = u_xlat0;
  let x_1498 : vec4<f32> = u_xlat7;
  let x_1500 : vec3<f32> = (vec3<f32>(x_1496.x, x_1496.x, x_1496.x) * vec3<f32>(x_1498.x, x_1498.y, x_1498.z));
  let x_1501 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1500.x, x_1500.y, x_1500.z, x_1501.w);
  let x_1503 : vec4<f32> = u_xlat4;
  let x_1505 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(vec3<f32>(x_1503.x, x_1503.y, x_1503.z), vec3<f32>(x_1505.x, x_1505.y, x_1505.z));
  let x_1510 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1510, 0.0f, 1.0f);
  let x_1514 : vec4<f32> = x_146.x_MainLightPosition;
  let x_1516 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_1514.x, x_1514.y, x_1514.z), vec3<f32>(x_1516.x, x_1516.y, x_1516.z));
  let x_1519 : f32 = u_xlat42;
  u_xlat42 = clamp(x_1519, 0.0f, 1.0f);
  let x_1522 : f32 = u_xlat0.x;
  let x_1524 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1522 * x_1524);
  let x_1528 : f32 = u_xlat0.x;
  let x_1530 : f32 = u_xlat27.x;
  u_xlat0.x = ((x_1528 * x_1530) + 1.000010014f);
  let x_1535 : f32 = u_xlat42;
  let x_1536 : f32 = u_xlat42;
  u_xlat42 = (x_1535 * x_1536);
  let x_1539 : f32 = u_xlat0.x;
  let x_1541 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1539 * x_1541);
  let x_1544 : f32 = u_xlat42;
  u_xlat42 = max(x_1544, 0.100000001f);
  let x_1547 : f32 = u_xlat0.x;
  let x_1548 : f32 = u_xlat42;
  u_xlat0.x = (x_1547 * x_1548);
  let x_1551 : f32 = u_xlat44;
  let x_1553 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1551 * x_1553);
  let x_1556 : f32 = u_xlat43;
  let x_1558 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1556 / x_1558);
  let x_1561 : vec3<f32> = u_xlat2;
  let x_1562 : vec4<f32> = u_xlat0;
  let x_1565 : vec3<f32> = u_xlat3;
  let x_1566 : vec3<f32> = ((x_1561 * vec3<f32>(x_1562.x, x_1562.x, x_1562.x)) + x_1565);
  let x_1567 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1566.x, x_1566.y, x_1566.z, x_1567.w);
  let x_1569 : vec4<f32> = u_xlat1;
  let x_1571 : vec4<f32> = u_xlat7;
  let x_1573 : vec3<f32> = (vec3<f32>(x_1569.x, x_1569.y, x_1569.w) * vec3<f32>(x_1571.x, x_1571.y, x_1571.z));
  let x_1574 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1573.x, x_1573.y, x_1574.z, x_1573.z);
  let x_1577 : f32 = x_146.x_AdditionalLightsCount.x;
  let x_1579 : f32 = x_59.unity_LightData.y;
  u_xlat0.x = min(x_1577, x_1579);
  let x_1584 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1584));
  let x_1589 : f32 = x_1163.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1591 : f32 = x_1163.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1593 : f32 = x_1163.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1595 : f32 = x_1163.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1596 : vec4<f32> = vec4<f32>(x_1589, x_1591, x_1593, x_1595);
  let x_1603 : vec4<bool> = (vec4<f32>(x_1596.x, x_1596.y, x_1596.z, x_1596.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
  u_xlatb32 = vec2<bool>(x_1603.x, x_1603.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1614 : u32 = u_xlatu_loop_1;
    let x_1615 : u32 = u_xlatu0;
    if ((x_1614 < x_1615)) {
    } else {
      break;
    }
    let x_1618 : u32 = u_xlatu_loop_1;
    u_xlatu46 = (x_1618 >> 2u);
    let x_1621 : u32 = u_xlatu_loop_1;
    u_xlati8 = bitcast<i32>((x_1621 & 3u));
    let x_1625 : u32 = u_xlatu46;
    let x_1628 : vec4<f32> = x_59.unity_LightIndices[bitcast<i32>(x_1625)];
    let x_1638 : i32 = u_xlati8;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1643 : vec4<u32> = indexable[x_1638];
    u_xlat46 = dot(x_1628, bitcast<vec4<f32>>(x_1643));
    let x_1646 : f32 = u_xlat46;
    u_xlatu46 = bitcast<u32>(i32(x_1646));
    let x_1649 : vec3<f32> = vs_INTERP0;
    let x_1661 : u32 = u_xlatu46;
    let x_1664 : vec4<f32> = x_1660.x_AdditionalLightsPosition[bitcast<i32>(x_1661)];
    let x_1667 : u32 = u_xlatu46;
    let x_1670 : vec4<f32> = x_1660.x_AdditionalLightsPosition[bitcast<i32>(x_1667)];
    let x_1672 : vec3<f32> = ((-(x_1649) * vec3<f32>(x_1664.w, x_1664.w, x_1664.w)) + vec3<f32>(x_1670.x, x_1670.y, x_1670.z));
    let x_1673 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1672.x, x_1672.y, x_1672.z, x_1673.w);
    let x_1676 : vec4<f32> = u_xlat8;
    let x_1678 : vec4<f32> = u_xlat8;
    u_xlat47 = dot(vec3<f32>(x_1676.x, x_1676.y, x_1676.z), vec3<f32>(x_1678.x, x_1678.y, x_1678.z));
    let x_1681 : f32 = u_xlat47;
    u_xlat47 = max(x_1681, 6.10351562e-05f);
    let x_1684 : f32 = u_xlat47;
    u_xlat9.x = inverseSqrt(x_1684);
    let x_1688 : vec4<f32> = u_xlat8;
    let x_1690 : vec3<f32> = u_xlat9;
    u_xlat22 = (vec3<f32>(x_1688.x, x_1688.y, x_1688.z) * vec3<f32>(x_1690.x, x_1690.x, x_1690.x));
    let x_1694 : f32 = u_xlat47;
    u_xlat10.x = (1.0f / x_1694);
    let x_1697 : f32 = u_xlat47;
    let x_1698 : u32 = u_xlatu46;
    let x_1701 : f32 = x_1660.x_AdditionalLightsAttenuation[bitcast<i32>(x_1698)].x;
    u_xlat47 = (x_1697 * x_1701);
    let x_1703 : f32 = u_xlat47;
    let x_1705 : f32 = u_xlat47;
    u_xlat47 = ((-(x_1703) * x_1705) + 1.0f);
    let x_1708 : f32 = u_xlat47;
    u_xlat47 = max(x_1708, 0.0f);
    let x_1710 : f32 = u_xlat47;
    let x_1711 : f32 = u_xlat47;
    u_xlat47 = (x_1710 * x_1711);
    let x_1713 : f32 = u_xlat47;
    let x_1715 : f32 = u_xlat10.x;
    u_xlat47 = (x_1713 * x_1715);
    let x_1717 : u32 = u_xlatu46;
    let x_1720 : vec4<f32> = x_1660.x_AdditionalLightsSpotDir[bitcast<i32>(x_1717)];
    let x_1722 : vec3<f32> = u_xlat22;
    u_xlat10.x = dot(vec3<f32>(x_1720.x, x_1720.y, x_1720.z), x_1722);
    let x_1726 : f32 = u_xlat10.x;
    let x_1727 : u32 = u_xlatu46;
    let x_1730 : f32 = x_1660.x_AdditionalLightsAttenuation[bitcast<i32>(x_1727)].z;
    let x_1732 : u32 = u_xlatu46;
    let x_1735 : f32 = x_1660.x_AdditionalLightsAttenuation[bitcast<i32>(x_1732)].w;
    u_xlat10.x = ((x_1726 * x_1730) + x_1735);
    let x_1739 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_1739, 0.0f, 1.0f);
    let x_1743 : f32 = u_xlat10.x;
    let x_1745 : f32 = u_xlat10.x;
    u_xlat10.x = (x_1743 * x_1745);
    let x_1748 : f32 = u_xlat47;
    let x_1750 : f32 = u_xlat10.x;
    u_xlat47 = (x_1748 * x_1750);
    let x_1753 : u32 = u_xlatu46;
    u_xlatu10 = (x_1753 >> 5u);
    let x_1756 : u32 = u_xlatu46;
    u_xlati23 = (1i << bitcast<u32>((bitcast<i32>(x_1756) & 31i)));
    let x_1762 : i32 = u_xlati23;
    let x_1764 : u32 = u_xlatu10;
    let x_1767 : f32 = x_1163.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1764)].el;
    u_xlati10 = bitcast<i32>((bitcast<u32>(x_1762) & bitcast<u32>(x_1767)));
    let x_1771 : i32 = u_xlati10;
    if ((x_1771 != 0i)) {
      let x_1781 : u32 = u_xlatu46;
      let x_1784 : f32 = x_1780.x_AdditionalLightsLightTypes[bitcast<i32>(x_1781)].el;
      u_xlati10 = i32(x_1784);
      let x_1786 : i32 = u_xlati10;
      u_xlati23 = select(1i, 0i, (x_1786 != 0i));
      let x_1790 : u32 = u_xlatu46;
      u_xlati36 = (bitcast<i32>(x_1790) << bitcast<u32>(2i));
      let x_1793 : i32 = u_xlati23;
      if ((x_1793 != 0i)) {
        let x_1798 : vec3<f32> = vs_INTERP0;
        let x_1800 : i32 = u_xlati36;
        let x_1803 : i32 = u_xlati36;
        let x_1807 : vec4<f32> = x_1780.x_AdditionalLightsWorldToLights[((x_1800 + 1i) / 4i)][((x_1803 + 1i) % 4i)];
        let x_1809 : vec3<f32> = (vec3<f32>(x_1798.y, x_1798.y, x_1798.y) * vec3<f32>(x_1807.x, x_1807.y, x_1807.w));
        let x_1810 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1809.x, x_1809.y, x_1809.z, x_1810.w);
        let x_1812 : i32 = u_xlati36;
        let x_1814 : i32 = u_xlati36;
        let x_1817 : vec4<f32> = x_1780.x_AdditionalLightsWorldToLights[(x_1812 / 4i)][(x_1814 % 4i)];
        let x_1819 : vec3<f32> = vs_INTERP0;
        let x_1822 : vec4<f32> = u_xlat11;
        let x_1824 : vec3<f32> = ((vec3<f32>(x_1817.x, x_1817.y, x_1817.w) * vec3<f32>(x_1819.x, x_1819.x, x_1819.x)) + vec3<f32>(x_1822.x, x_1822.y, x_1822.z));
        let x_1825 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1824.x, x_1824.y, x_1824.z, x_1825.w);
        let x_1827 : i32 = u_xlati36;
        let x_1830 : i32 = u_xlati36;
        let x_1834 : vec4<f32> = x_1780.x_AdditionalLightsWorldToLights[((x_1827 + 2i) / 4i)][((x_1830 + 2i) % 4i)];
        let x_1836 : vec3<f32> = vs_INTERP0;
        let x_1839 : vec4<f32> = u_xlat11;
        let x_1841 : vec3<f32> = ((vec3<f32>(x_1834.x, x_1834.y, x_1834.w) * vec3<f32>(x_1836.z, x_1836.z, x_1836.z)) + vec3<f32>(x_1839.x, x_1839.y, x_1839.z));
        let x_1842 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1841.x, x_1841.y, x_1841.z, x_1842.w);
        let x_1844 : vec4<f32> = u_xlat11;
        let x_1846 : i32 = u_xlati36;
        let x_1849 : i32 = u_xlati36;
        let x_1853 : vec4<f32> = x_1780.x_AdditionalLightsWorldToLights[((x_1846 + 3i) / 4i)][((x_1849 + 3i) % 4i)];
        let x_1855 : vec3<f32> = (vec3<f32>(x_1844.x, x_1844.y, x_1844.z) + vec3<f32>(x_1853.x, x_1853.y, x_1853.w));
        let x_1856 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1855.x, x_1855.y, x_1855.z, x_1856.w);
        let x_1859 : vec4<f32> = u_xlat11;
        let x_1861 : vec4<f32> = u_xlat11;
        let x_1863 : vec2<f32> = (vec2<f32>(x_1859.x, x_1859.y) / vec2<f32>(x_1861.z, x_1861.z));
        let x_1864 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_1863.x, x_1864.y, x_1863.y);
        let x_1866 : vec3<f32> = u_xlat23;
        let x_1869 : vec2<f32> = ((vec2<f32>(x_1866.x, x_1866.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1870 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_1869.x, x_1870.y, x_1869.y);
        let x_1872 : vec3<f32> = u_xlat23;
        let x_1876 : vec2<f32> = clamp(vec2<f32>(x_1872.x, x_1872.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1877 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_1876.x, x_1877.y, x_1876.y);
        let x_1879 : u32 = u_xlatu46;
        let x_1882 : vec4<f32> = x_1780.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1879)];
        let x_1884 : vec3<f32> = u_xlat23;
        let x_1887 : u32 = u_xlatu46;
        let x_1890 : vec4<f32> = x_1780.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1887)];
        let x_1892 : vec2<f32> = ((vec2<f32>(x_1882.x, x_1882.y) * vec2<f32>(x_1884.x, x_1884.z)) + vec2<f32>(x_1890.z, x_1890.w));
        let x_1893 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_1892.x, x_1893.y, x_1892.y);
      } else {
        let x_1897 : i32 = u_xlati10;
        u_xlatb10 = (x_1897 == 1i);
        let x_1899 : bool = u_xlatb10;
        u_xlati10 = select(0i, 1i, x_1899);
        let x_1901 : i32 = u_xlati10;
        if ((x_1901 != 0i)) {
          let x_1905 : vec3<f32> = vs_INTERP0;
          let x_1907 : i32 = u_xlati36;
          let x_1910 : i32 = u_xlati36;
          let x_1914 : vec4<f32> = x_1780.x_AdditionalLightsWorldToLights[((x_1907 + 1i) / 4i)][((x_1910 + 1i) % 4i)];
          let x_1916 : vec2<f32> = (vec2<f32>(x_1905.y, x_1905.y) * vec2<f32>(x_1914.x, x_1914.y));
          let x_1917 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1916.x, x_1916.y, x_1917.z, x_1917.w);
          let x_1919 : i32 = u_xlati36;
          let x_1921 : i32 = u_xlati36;
          let x_1924 : vec4<f32> = x_1780.x_AdditionalLightsWorldToLights[(x_1919 / 4i)][(x_1921 % 4i)];
          let x_1926 : vec3<f32> = vs_INTERP0;
          let x_1929 : vec4<f32> = u_xlat11;
          let x_1931 : vec2<f32> = ((vec2<f32>(x_1924.x, x_1924.y) * vec2<f32>(x_1926.x, x_1926.x)) + vec2<f32>(x_1929.x, x_1929.y));
          let x_1932 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1931.x, x_1931.y, x_1932.z, x_1932.w);
          let x_1934 : i32 = u_xlati36;
          let x_1937 : i32 = u_xlati36;
          let x_1941 : vec4<f32> = x_1780.x_AdditionalLightsWorldToLights[((x_1934 + 2i) / 4i)][((x_1937 + 2i) % 4i)];
          let x_1943 : vec3<f32> = vs_INTERP0;
          let x_1946 : vec4<f32> = u_xlat11;
          let x_1948 : vec2<f32> = ((vec2<f32>(x_1941.x, x_1941.y) * vec2<f32>(x_1943.z, x_1943.z)) + vec2<f32>(x_1946.x, x_1946.y));
          let x_1949 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1948.x, x_1948.y, x_1949.z, x_1949.w);
          let x_1951 : vec4<f32> = u_xlat11;
          let x_1953 : i32 = u_xlati36;
          let x_1956 : i32 = u_xlati36;
          let x_1960 : vec4<f32> = x_1780.x_AdditionalLightsWorldToLights[((x_1953 + 3i) / 4i)][((x_1956 + 3i) % 4i)];
          let x_1962 : vec2<f32> = (vec2<f32>(x_1951.x, x_1951.y) + vec2<f32>(x_1960.x, x_1960.y));
          let x_1963 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1962.x, x_1962.y, x_1963.z, x_1963.w);
          let x_1965 : vec4<f32> = u_xlat11;
          let x_1968 : vec2<f32> = ((vec2<f32>(x_1965.x, x_1965.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1969 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1968.x, x_1968.y, x_1969.z, x_1969.w);
          let x_1971 : vec4<f32> = u_xlat11;
          let x_1973 : vec2<f32> = fract(vec2<f32>(x_1971.x, x_1971.y));
          let x_1974 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1973.x, x_1973.y, x_1974.z, x_1974.w);
          let x_1976 : u32 = u_xlatu46;
          let x_1979 : vec4<f32> = x_1780.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1976)];
          let x_1981 : vec4<f32> = u_xlat11;
          let x_1984 : u32 = u_xlatu46;
          let x_1987 : vec4<f32> = x_1780.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1984)];
          let x_1989 : vec2<f32> = ((vec2<f32>(x_1979.x, x_1979.y) * vec2<f32>(x_1981.x, x_1981.y)) + vec2<f32>(x_1987.z, x_1987.w));
          let x_1990 : vec3<f32> = u_xlat23;
          u_xlat23 = vec3<f32>(x_1989.x, x_1990.y, x_1989.y);
        } else {
          let x_1993 : vec3<f32> = vs_INTERP0;
          let x_1995 : i32 = u_xlati36;
          let x_1998 : i32 = u_xlati36;
          let x_2002 : vec4<f32> = x_1780.x_AdditionalLightsWorldToLights[((x_1995 + 1i) / 4i)][((x_1998 + 1i) % 4i)];
          u_xlat11 = (vec4<f32>(x_1993.y, x_1993.y, x_1993.y, x_1993.y) * x_2002);
          let x_2004 : i32 = u_xlati36;
          let x_2006 : i32 = u_xlati36;
          let x_2009 : vec4<f32> = x_1780.x_AdditionalLightsWorldToLights[(x_2004 / 4i)][(x_2006 % 4i)];
          let x_2010 : vec3<f32> = vs_INTERP0;
          let x_2013 : vec4<f32> = u_xlat11;
          u_xlat11 = ((x_2009 * vec4<f32>(x_2010.x, x_2010.x, x_2010.x, x_2010.x)) + x_2013);
          let x_2015 : i32 = u_xlati36;
          let x_2018 : i32 = u_xlati36;
          let x_2022 : vec4<f32> = x_1780.x_AdditionalLightsWorldToLights[((x_2015 + 2i) / 4i)][((x_2018 + 2i) % 4i)];
          let x_2023 : vec3<f32> = vs_INTERP0;
          let x_2026 : vec4<f32> = u_xlat11;
          u_xlat11 = ((x_2022 * vec4<f32>(x_2023.z, x_2023.z, x_2023.z, x_2023.z)) + x_2026);
          let x_2028 : vec4<f32> = u_xlat11;
          let x_2029 : i32 = u_xlati36;
          let x_2032 : i32 = u_xlati36;
          let x_2036 : vec4<f32> = x_1780.x_AdditionalLightsWorldToLights[((x_2029 + 3i) / 4i)][((x_2032 + 3i) % 4i)];
          u_xlat11 = (x_2028 + x_2036);
          let x_2038 : vec4<f32> = u_xlat11;
          let x_2040 : vec4<f32> = u_xlat11;
          let x_2042 : vec3<f32> = (vec3<f32>(x_2038.x, x_2038.y, x_2038.z) / vec3<f32>(x_2040.w, x_2040.w, x_2040.w));
          let x_2043 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2042.x, x_2042.y, x_2042.z, x_2043.w);
          let x_2045 : vec4<f32> = u_xlat11;
          let x_2047 : vec4<f32> = u_xlat11;
          u_xlat10.x = dot(vec3<f32>(x_2045.x, x_2045.y, x_2045.z), vec3<f32>(x_2047.x, x_2047.y, x_2047.z));
          let x_2052 : f32 = u_xlat10.x;
          u_xlat10.x = inverseSqrt(x_2052);
          let x_2055 : vec4<f32> = u_xlat10;
          let x_2057 : vec4<f32> = u_xlat11;
          let x_2059 : vec3<f32> = (vec3<f32>(x_2055.x, x_2055.x, x_2055.x) * vec3<f32>(x_2057.x, x_2057.y, x_2057.z));
          let x_2060 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2059.x, x_2059.y, x_2059.z, x_2060.w);
          let x_2062 : vec4<f32> = u_xlat11;
          u_xlat10.x = dot(abs(vec3<f32>(x_2062.x, x_2062.y, x_2062.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2069 : f32 = u_xlat10.x;
          u_xlat10.x = max(x_2069, 0.000001f);
          let x_2074 : f32 = u_xlat10.x;
          u_xlat10.x = (1.0f / x_2074);
          let x_2078 : vec4<f32> = u_xlat10;
          let x_2080 : vec4<f32> = u_xlat11;
          u_xlat12 = (vec3<f32>(x_2078.x, x_2078.x, x_2078.x) * vec3<f32>(x_2080.z, x_2080.x, x_2080.y));
          let x_2084 : f32 = u_xlat12.x;
          u_xlat12.x = -(x_2084);
          let x_2088 : f32 = u_xlat12.x;
          u_xlat12.x = clamp(x_2088, 0.0f, 1.0f);
          let x_2092 : vec3<f32> = u_xlat12;
          let x_2095 : vec4<bool> = (vec4<f32>(x_2092.y, x_2092.z, x_2092.y, x_2092.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb37 = vec2<bool>(x_2095.x, x_2095.y);
          let x_2099 : bool = u_xlatb37.x;
          if (x_2099) {
            let x_2104 : f32 = u_xlat12.x;
            x_2100 = x_2104;
          } else {
            let x_2107 : f32 = u_xlat12.x;
            x_2100 = -(x_2107);
          }
          let x_2109 : f32 = x_2100;
          u_xlat37.x = x_2109;
          let x_2112 : bool = u_xlatb37.y;
          if (x_2112) {
            let x_2117 : f32 = u_xlat12.x;
            x_2113 = x_2117;
          } else {
            let x_2120 : f32 = u_xlat12.x;
            x_2113 = -(x_2120);
          }
          let x_2122 : f32 = x_2113;
          u_xlat37.y = x_2122;
          let x_2124 : vec4<f32> = u_xlat11;
          let x_2126 : vec4<f32> = u_xlat10;
          let x_2129 : vec2<f32> = u_xlat37;
          let x_2130 : vec2<f32> = ((vec2<f32>(x_2124.x, x_2124.y) * vec2<f32>(x_2126.x, x_2126.x)) + x_2129);
          let x_2131 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2130.x, x_2131.y, x_2130.y, x_2131.w);
          let x_2133 : vec4<f32> = u_xlat10;
          let x_2136 : vec2<f32> = ((vec2<f32>(x_2133.x, x_2133.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2137 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2136.x, x_2137.y, x_2136.y, x_2137.w);
          let x_2139 : vec4<f32> = u_xlat10;
          let x_2143 : vec2<f32> = clamp(vec2<f32>(x_2139.x, x_2139.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2144 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2143.x, x_2144.y, x_2143.y, x_2144.w);
          let x_2146 : u32 = u_xlatu46;
          let x_2149 : vec4<f32> = x_1780.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2146)];
          let x_2151 : vec4<f32> = u_xlat10;
          let x_2154 : u32 = u_xlatu46;
          let x_2157 : vec4<f32> = x_1780.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2154)];
          let x_2159 : vec2<f32> = ((vec2<f32>(x_2149.x, x_2149.y) * vec2<f32>(x_2151.x, x_2151.z)) + vec2<f32>(x_2157.z, x_2157.w));
          let x_2160 : vec3<f32> = u_xlat23;
          u_xlat23 = vec3<f32>(x_2159.x, x_2160.y, x_2159.y);
        }
      }
      let x_2167 : vec3<f32> = u_xlat23;
      let x_2170 : f32 = x_146.x_GlobalMipBias.x;
      let x_2171 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2167.x, x_2167.z), x_2170);
      u_xlat10 = x_2171;
      let x_2174 : bool = u_xlatb32.y;
      if (x_2174) {
        let x_2179 : f32 = u_xlat10.w;
        x_2175 = x_2179;
      } else {
        let x_2182 : f32 = u_xlat10.x;
        x_2175 = x_2182;
      }
      let x_2183 : f32 = x_2175;
      u_xlat49 = x_2183;
      let x_2185 : bool = u_xlatb32.x;
      if (x_2185) {
        let x_2189 : vec4<f32> = u_xlat10;
        x_2186 = vec3<f32>(x_2189.x, x_2189.y, x_2189.z);
      } else {
        let x_2192 : f32 = u_xlat49;
        x_2186 = vec3<f32>(x_2192, x_2192, x_2192);
      }
      let x_2194 : vec3<f32> = x_2186;
      let x_2195 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2194.x, x_2194.y, x_2194.z, x_2195.w);
    } else {
      u_xlat10.x = 1.0f;
      u_xlat10.y = 1.0f;
      u_xlat10.z = 1.0f;
    }
    let x_2201 : vec4<f32> = u_xlat10;
    let x_2203 : u32 = u_xlatu46;
    let x_2206 : vec4<f32> = x_1660.x_AdditionalLightsColor[bitcast<i32>(x_2203)];
    let x_2208 : vec3<f32> = (vec3<f32>(x_2201.x, x_2201.y, x_2201.z) * vec3<f32>(x_2206.x, x_2206.y, x_2206.z));
    let x_2209 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2208.x, x_2208.y, x_2208.z, x_2209.w);
    let x_2211 : f32 = u_xlat19;
    let x_2213 : vec4<f32> = u_xlat10;
    let x_2215 : vec3<f32> = (vec3<f32>(x_2211, x_2211, x_2211) * vec3<f32>(x_2213.x, x_2213.y, x_2213.z));
    let x_2216 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2215.x, x_2215.y, x_2215.z, x_2216.w);
    let x_2218 : vec4<f32> = u_xlat4;
    let x_2220 : vec3<f32> = u_xlat22;
    u_xlat46 = dot(vec3<f32>(x_2218.x, x_2218.y, x_2218.z), x_2220);
    let x_2222 : f32 = u_xlat46;
    u_xlat46 = clamp(x_2222, 0.0f, 1.0f);
    let x_2224 : f32 = u_xlat46;
    let x_2225 : f32 = u_xlat47;
    u_xlat46 = (x_2224 * x_2225);
    let x_2227 : f32 = u_xlat46;
    let x_2229 : vec4<f32> = u_xlat10;
    let x_2231 : vec3<f32> = (vec3<f32>(x_2227, x_2227, x_2227) * vec3<f32>(x_2229.x, x_2229.y, x_2229.z));
    let x_2232 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2231.x, x_2231.y, x_2231.z, x_2232.w);
    let x_2234 : vec4<f32> = u_xlat8;
    let x_2236 : vec3<f32> = u_xlat9;
    let x_2239 : vec3<f32> = u_xlat13;
    let x_2240 : vec3<f32> = ((vec3<f32>(x_2234.x, x_2234.y, x_2234.z) * vec3<f32>(x_2236.x, x_2236.x, x_2236.x)) + x_2239);
    let x_2241 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2240.x, x_2240.y, x_2240.z, x_2241.w);
    let x_2243 : vec4<f32> = u_xlat8;
    let x_2245 : vec4<f32> = u_xlat8;
    u_xlat46 = dot(vec3<f32>(x_2243.x, x_2243.y, x_2243.z), vec3<f32>(x_2245.x, x_2245.y, x_2245.z));
    let x_2248 : f32 = u_xlat46;
    u_xlat46 = max(x_2248, 1.17549435e-37f);
    let x_2250 : f32 = u_xlat46;
    u_xlat46 = inverseSqrt(x_2250);
    let x_2252 : f32 = u_xlat46;
    let x_2254 : vec4<f32> = u_xlat8;
    let x_2256 : vec3<f32> = (vec3<f32>(x_2252, x_2252, x_2252) * vec3<f32>(x_2254.x, x_2254.y, x_2254.z));
    let x_2257 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2256.x, x_2256.y, x_2256.z, x_2257.w);
    let x_2259 : vec4<f32> = u_xlat4;
    let x_2261 : vec4<f32> = u_xlat8;
    u_xlat46 = dot(vec3<f32>(x_2259.x, x_2259.y, x_2259.z), vec3<f32>(x_2261.x, x_2261.y, x_2261.z));
    let x_2264 : f32 = u_xlat46;
    u_xlat46 = clamp(x_2264, 0.0f, 1.0f);
    let x_2266 : vec3<f32> = u_xlat22;
    let x_2267 : vec4<f32> = u_xlat8;
    u_xlat8.x = dot(x_2266, vec3<f32>(x_2267.x, x_2267.y, x_2267.z));
    let x_2272 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_2272, 0.0f, 1.0f);
    let x_2275 : f32 = u_xlat46;
    let x_2276 : f32 = u_xlat46;
    u_xlat46 = (x_2275 * x_2276);
    let x_2278 : f32 = u_xlat46;
    let x_2280 : f32 = u_xlat27.x;
    u_xlat46 = ((x_2278 * x_2280) + 1.000010014f);
    let x_2284 : f32 = u_xlat8.x;
    let x_2286 : f32 = u_xlat8.x;
    u_xlat8.x = (x_2284 * x_2286);
    let x_2289 : f32 = u_xlat46;
    let x_2290 : f32 = u_xlat46;
    u_xlat46 = (x_2289 * x_2290);
    let x_2293 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_2293, 0.100000001f);
    let x_2296 : f32 = u_xlat46;
    let x_2298 : f32 = u_xlat8.x;
    u_xlat46 = (x_2296 * x_2298);
    let x_2300 : f32 = u_xlat44;
    let x_2301 : f32 = u_xlat46;
    u_xlat46 = (x_2300 * x_2301);
    let x_2303 : f32 = u_xlat43;
    let x_2304 : f32 = u_xlat46;
    u_xlat46 = (x_2303 / x_2304);
    let x_2306 : vec3<f32> = u_xlat2;
    let x_2307 : f32 = u_xlat46;
    let x_2310 : vec3<f32> = u_xlat3;
    let x_2311 : vec3<f32> = ((x_2306 * vec3<f32>(x_2307, x_2307, x_2307)) + x_2310);
    let x_2312 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2311.x, x_2311.y, x_2311.z, x_2312.w);
    let x_2314 : vec4<f32> = u_xlat8;
    let x_2316 : vec4<f32> = u_xlat10;
    let x_2319 : vec4<f32> = u_xlat7;
    let x_2321 : vec3<f32> = ((vec3<f32>(x_2314.x, x_2314.y, x_2314.z) * vec3<f32>(x_2316.x, x_2316.y, x_2316.z)) + vec3<f32>(x_2319.x, x_2319.y, x_2319.z));
    let x_2322 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2321.x, x_2321.y, x_2321.z, x_2322.w);

    continuing {
      let x_2324 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2324 + bitcast<u32>(1i));
    }
  }
  let x_2326 : vec3<f32> = u_xlat5;
  let x_2327 : vec4<f32> = u_xlat6;
  let x_2330 : vec4<f32> = u_xlat1;
  let x_2332 : vec3<f32> = ((x_2326 * vec3<f32>(x_2327.x, x_2327.x, x_2327.x)) + vec3<f32>(x_2330.x, x_2330.y, x_2330.w));
  let x_2333 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2332.x, x_2332.y, x_2332.z, x_2333.w);
  let x_2335 : vec4<f32> = u_xlat7;
  let x_2337 : vec4<f32> = u_xlat0;
  let x_2339 : vec3<f32> = (vec3<f32>(x_2335.x, x_2335.y, x_2335.z) + vec3<f32>(x_2337.x, x_2337.y, x_2337.z));
  let x_2340 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2339.x, x_2339.y, x_2339.z, x_2340.w);
  let x_2343 : f32 = u_xlat41;
  let x_2344 : f32 = u_xlat41;
  u_xlat39 = (x_2343 * -(x_2344));
  let x_2347 : f32 = u_xlat39;
  u_xlat39 = exp2(x_2347);
  let x_2349 : vec4<f32> = u_xlat0;
  let x_2353 : vec4<f32> = x_146.unity_FogColor;
  let x_2356 : vec3<f32> = (vec3<f32>(x_2349.x, x_2349.y, x_2349.z) + -(vec3<f32>(x_2353.x, x_2353.y, x_2353.z)));
  let x_2357 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2356.x, x_2356.y, x_2356.z, x_2357.w);
  let x_2361 : f32 = u_xlat39;
  let x_2363 : vec4<f32> = u_xlat0;
  let x_2367 : vec4<f32> = x_146.unity_FogColor;
  let x_2369 : vec3<f32> = ((vec3<f32>(x_2361, x_2361, x_2361) * vec3<f32>(x_2363.x, x_2363.y, x_2363.z)) + vec3<f32>(x_2367.x, x_2367.y, x_2367.z));
  let x_2370 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2369.x, x_2369.y, x_2369.z, x_2370.w);
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

