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

@group(1) @binding(6) var<uniform> x_206 : UnityPerMaterial;

@group(0) @binding(9) var Texture2D_DE8BF47E : texture_2d<f32>;

@group(0) @binding(20) var samplerTexture2D_DE8BF47E : sampler;

@group(0) @binding(10) var Texture2D_C005B064 : texture_2d<f32>;

@group(0) @binding(21) var samplerTexture2D_C005B064 : sampler;

@group(0) @binding(7) var x_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1 : texture_2d<f32>;

@group(0) @binding(18) var sampler_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1 : sampler;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(13) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP4 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(3) var<uniform> x_859 : MainLightShadows;

var<private> vs_INTERP8 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(15) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_2184 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(12) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2645 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_2765 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(17) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlatb20 : vec2<bool>;
  var u_xlat20 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat61 : f32;
  var u_xlat62 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat63 : f32;
  var u_xlat64 : f32;
  var u_xlat7 : vec4<f32>;
  var u_xlat27 : vec3<f32>;
  var u_xlat21 : vec2<f32>;
  var u_xlat24 : vec3<f32>;
  var u_xlatb1 : bool;
  var x_658 : vec3<f32>;
  var u_xlat25 : f32;
  var u_xlat45 : f32;
  var u_xlatb65 : bool;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlat65 : f32;
  var u_xlatb6 : bool;
  var u_xlat46 : vec2<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat48 : vec2<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var u_xlat26 : f32;
  var txVec5 : vec3<f32>;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat28 : vec3<f32>;
  var u_xlat54 : vec2<f32>;
  var u_xlat49 : vec2<f32>;
  var u_xlat17 : vec4<f32>;
  var u_xlat18 : vec4<f32>;
  var u_xlat19 : vec4<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var u_xlat68 : f32;
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
  var u_xlat66 : f32;
  var txVec17 : vec3<f32>;
  var txVec18 : vec3<f32>;
  var txVec19 : vec3<f32>;
  var txVec20 : vec3<f32>;
  var txVec21 : vec3<f32>;
  var txVec22 : vec3<f32>;
  var txVec23 : vec3<f32>;
  var txVec24 : vec3<f32>;
  var txVec25 : vec3<f32>;
  var txVec26 : vec3<f32>;
  var txVec27 : vec3<f32>;
  var txVec28 : vec3<f32>;
  var txVec29 : vec3<f32>;
  var u_xlatb26 : bool;
  var u_xlatb7 : vec2<bool>;
  var x_2266 : f32;
  var x_2277 : vec3<f32>;
  var u_xlat67 : f32;
  var u_xlatu0 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu63 : u32;
  var u_xlati65 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat47 : vec2<f32>;
  var u_xlatu47 : u32;
  var u_xlati67 : i32;
  var u_xlati47 : i32;
  var u_xlati69 : i32;
  var u_xlatb47 : bool;
  var u_xlatb51 : vec2<bool>;
  var u_xlat51 : vec2<f32>;
  var x_3066 : f32;
  var x_3079 : f32;
  var x_3131 : f32;
  var x_3143 : vec3<f32>;
  var u_xlat60 : f32;
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
  u_xlatb20.x = (0.0f < x_50);
  let x_64 : f32 = x_59.unity_WorldTransformParams.w;
  u_xlatb20.y = (x_64 >= 0.0f);
  let x_71 : bool = u_xlatb20.x;
  u_xlat20.x = select(-1.0f, 1.0f, x_71);
  let x_76 : bool = u_xlatb20.y;
  u_xlat20.y = select(-1.0f, 1.0f, x_76);
  let x_80 : f32 = u_xlat20.y;
  let x_82 : f32 = u_xlat20.x;
  u_xlat20.x = (x_80 * x_82);
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
  let x_104 : vec3<f32> = u_xlat20;
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
  u_xlat61 = ((x_158 * 4.0f) + x_163);
  let x_165 : f32 = u_xlat61;
  u_xlat61 = (x_165 * 0.330000013f);
  let x_170 : f32 = vs_INTERP0.y;
  u_xlat62 = (x_170 + 1.0f);
  let x_172 : f32 = u_xlat62;
  u_xlat62 = ((x_172 * -1.333333373f) + 1.0f);
  let x_176 : f32 = u_xlat61;
  let x_177 : f32 = u_xlat62;
  u_xlat61 = max(x_176, x_177);
  let x_179 : f32 = u_xlat61;
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
  u_xlat62 = ((-(x_209) * 0.011111f) + 0.949999988f);
  let x_218 : f32 = x_206.Vector1_A492C01C;
  u_xlat63 = (x_218 + -10.0f);
  let x_221 : f32 = u_xlat63;
  let x_224 : f32 = vs_INTERP0.y;
  u_xlat63 = (-(x_221) + x_224);
  let x_226 : f32 = u_xlat63;
  u_xlat63 = (x_226 * 0.050000001f);
  let x_229 : f32 = u_xlat63;
  u_xlat63 = clamp(x_229, 0.0f, 1.0f);
  let x_232 : f32 = u_xlat63;
  u_xlat64 = ((x_232 * -2.0f) + 3.0f);
  let x_237 : f32 = u_xlat63;
  let x_238 : f32 = u_xlat63;
  u_xlat63 = (x_237 * x_238);
  let x_240 : f32 = u_xlat63;
  let x_241 : f32 = u_xlat64;
  u_xlat63 = (x_240 * x_241);
  let x_249 : vec4<f32> = vs_INTERP3;
  let x_252 : f32 = x_146.x_GlobalMipBias.x;
  let x_253 : vec4<f32> = textureSampleBias(Texture2D_DE8BF47E, samplerTexture2D_DE8BF47E, vec2<f32>(x_249.x, x_249.y), x_252);
  u_xlat7 = x_253;
  let x_255 : vec4<f32> = u_xlat7;
  u_xlat27 = ((vec3<f32>(x_255.w, x_255.y, x_255.z) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_262 : vec3<f32> = u_xlat3;
  let x_263 : vec3<f32> = u_xlat27;
  u_xlat3 = (x_262 * vec3<f32>(x_263.y, x_263.y, x_263.y));
  let x_266 : vec3<f32> = u_xlat27;
  let x_268 : vec3<f32> = u_xlat2;
  let x_270 : vec3<f32> = u_xlat3;
  u_xlat2 = ((vec3<f32>(x_266.x, x_266.x, x_266.x) * x_268) + x_270);
  let x_272 : vec3<f32> = u_xlat27;
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
  let x_302 : f32 = u_xlat63;
  let x_304 : f32 = u_xlat1.x;
  let x_306 : f32 = u_xlat62;
  u_xlat1.x = ((x_302 * x_304) + -(x_306));
  let x_311 : f32 = u_xlat1.x;
  u_xlat1.x = (x_311 * 10.0f);
  let x_316 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_316, 0.0f, 1.0f);
  let x_322 : f32 = u_xlat1.x;
  u_xlat21.x = ((x_322 * -2.0f) + 3.0f);
  let x_327 : f32 = u_xlat1.x;
  let x_329 : f32 = u_xlat1.x;
  u_xlat1.x = (x_327 * x_329);
  let x_333 : f32 = u_xlat1.x;
  let x_335 : f32 = u_xlat21.x;
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
  u_xlat24 = vec3<f32>(x_376.x, x_376.y, x_376.w);
  let x_379 : f32 = u_xlat24.x;
  let x_381 : f32 = u_xlat24.z;
  u_xlat24.x = (x_379 * x_381);
  let x_384 : vec3<f32> = u_xlat24;
  let x_389 : vec2<f32> = ((vec2<f32>(x_384.x, x_384.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_390 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_389.x, x_389.y, x_390.z);
  let x_392 : vec3<f32> = u_xlat5;
  let x_394 : vec3<f32> = u_xlat5;
  u_xlat21.x = dot(vec2<f32>(x_392.x, x_392.y), vec2<f32>(x_394.x, x_394.y));
  let x_399 : f32 = u_xlat21.x;
  u_xlat21.x = min(x_399, 1.0f);
  let x_403 : f32 = u_xlat21.x;
  u_xlat21.x = (-(x_403) + 1.0f);
  let x_408 : f32 = u_xlat21.x;
  u_xlat21.x = sqrt(x_408);
  let x_412 : f32 = u_xlat21.x;
  u_xlat5.z = max(x_412, 1.00000002e-16f);
  let x_419 : vec4<f32> = x_59.unity_ObjectToWorld[0i];
  let x_422 : vec4<f32> = x_59.unity_ObjectToWorld[0i];
  u_xlat21.x = dot(vec3<f32>(x_419.x, x_419.y, x_419.z), vec3<f32>(x_422.x, x_422.y, x_422.z));
  let x_427 : f32 = u_xlat21.x;
  u_xlat6.x = sqrt(x_427);
  let x_431 : vec4<f32> = x_59.unity_ObjectToWorld[1i];
  let x_434 : vec4<f32> = x_59.unity_ObjectToWorld[1i];
  u_xlat21.x = dot(vec3<f32>(x_431.x, x_431.y, x_431.z), vec3<f32>(x_434.x, x_434.y, x_434.z));
  let x_439 : f32 = u_xlat21.x;
  u_xlat6.y = sqrt(x_439);
  let x_444 : vec4<f32> = x_59.unity_ObjectToWorld[2i];
  let x_447 : vec4<f32> = x_59.unity_ObjectToWorld[2i];
  u_xlat21.x = dot(vec3<f32>(x_444.x, x_444.y, x_444.z), vec3<f32>(x_447.x, x_447.y, x_447.z));
  let x_452 : f32 = u_xlat21.x;
  u_xlat6.z = sqrt(x_452);
  let x_455 : vec4<f32> = u_xlat6;
  let x_457 : vec4<f32> = u_xlat6;
  u_xlat21.x = dot(vec3<f32>(x_455.x, x_455.y, x_455.z), vec3<f32>(x_457.x, x_457.y, x_457.z));
  let x_462 : f32 = u_xlat21.x;
  u_xlat21.x = sqrt(x_462);
  let x_466 : f32 = u_xlat21.x;
  let x_469 : f32 = x_206.Vector1_90E376AD;
  u_xlat21.x = (x_466 * x_469);
  let x_473 : f32 = u_xlat21.x;
  u_xlat21.x = (x_473 * 30.0f);
  let x_477 : vec2<f32> = u_xlat21;
  let x_479 : vec4<f32> = vs_INTERP3;
  u_xlat21 = (vec2<f32>(x_477.x, x_477.x) * vec2<f32>(x_479.x, x_479.y));
  let x_487 : vec2<f32> = u_xlat21;
  let x_489 : f32 = x_146.x_GlobalMipBias.x;
  let x_490 : vec4<f32> = textureSampleBias(x_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1, sampler_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1, x_487, x_489);
  u_xlat24 = vec3<f32>(x_490.x, x_490.y, x_490.w);
  let x_493 : f32 = u_xlat24.x;
  let x_495 : f32 = u_xlat24.z;
  u_xlat24.x = (x_493 * x_495);
  let x_498 : vec3<f32> = u_xlat24;
  u_xlat21 = ((vec2<f32>(x_498.x, x_498.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_502 : vec2<f32> = u_xlat21;
  let x_503 : vec2<f32> = u_xlat21;
  u_xlat62 = dot(x_502, x_503);
  let x_505 : f32 = u_xlat62;
  u_xlat62 = min(x_505, 1.0f);
  let x_507 : f32 = u_xlat62;
  u_xlat62 = (-(x_507) + 1.0f);
  let x_510 : f32 = u_xlat62;
  u_xlat62 = sqrt(x_510);
  let x_512 : f32 = u_xlat62;
  u_xlat62 = max(x_512, 1.00000002e-16f);
  let x_514 : vec2<f32> = u_xlat21;
  let x_515 : vec3<f32> = u_xlat27;
  let x_517 : vec2<f32> = (x_514 + vec2<f32>(x_515.x, x_515.y));
  let x_518 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_517.x, x_517.y, x_518.z, x_518.w);
  let x_520 : f32 = u_xlat62;
  let x_522 : f32 = u_xlat27.z;
  u_xlat6.z = (x_520 * x_522);
  let x_525 : vec4<f32> = u_xlat6;
  let x_527 : vec4<f32> = u_xlat6;
  u_xlat21.x = dot(vec3<f32>(x_525.x, x_525.y, x_525.z), vec3<f32>(x_527.x, x_527.y, x_527.z));
  let x_532 : f32 = u_xlat21.x;
  u_xlat21.x = max(x_532, 1.17549435e-37f);
  let x_536 : f32 = u_xlat21.x;
  u_xlat21.x = inverseSqrt(x_536);
  let x_539 : vec4<f32> = u_xlat6;
  let x_541 : vec2<f32> = u_xlat21;
  let x_544 : vec3<f32> = u_xlat5;
  u_xlat24 = ((vec3<f32>(x_539.x, x_539.y, x_539.z) * vec3<f32>(x_541.x, x_541.x, x_541.x)) + -(x_544));
  let x_547 : vec4<f32> = u_xlat1;
  let x_549 : vec3<f32> = u_xlat24;
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
  u_xlat20 = ((vec3<f32>(x_591.y, x_591.y, x_591.y) * vec3<f32>(x_593.x, x_593.y, x_593.z)) + vec3<f32>(x_596.y, x_596.z, x_596.w));
  let x_599 : vec4<f32> = u_xlat4;
  let x_601 : vec3<f32> = vs_INTERP1;
  let x_603 : vec3<f32> = u_xlat20;
  u_xlat20 = ((vec3<f32>(x_599.w, x_599.w, x_599.w) * x_601) + x_603);
  let x_605 : vec3<f32> = u_xlat20;
  let x_606 : vec3<f32> = u_xlat20;
  u_xlat1.x = dot(x_605, x_606);
  let x_610 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_610);
  let x_613 : vec3<f32> = u_xlat20;
  let x_614 : vec4<f32> = u_xlat1;
  u_xlat20 = (x_613 * vec3<f32>(x_614.x, x_614.x, x_614.x));
  let x_619 : f32 = x_146.unity_OrthoParams.w;
  u_xlatb1 = (x_619 == 0.0f);
  let x_621 : vec3<f32> = vs_INTERP0;
  let x_626 : vec3<f32> = x_146.x_WorldSpaceCameraPos;
  let x_627 : vec3<f32> = (-(x_621) + x_626);
  let x_628 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_627.x, x_627.y, x_627.z, x_628.w);
  let x_630 : vec4<f32> = u_xlat4;
  let x_632 : vec4<f32> = u_xlat4;
  u_xlat21.x = dot(vec3<f32>(x_630.x, x_630.y, x_630.z), vec3<f32>(x_632.x, x_632.y, x_632.z));
  let x_637 : f32 = u_xlat21.x;
  u_xlat21.x = inverseSqrt(x_637);
  let x_640 : vec2<f32> = u_xlat21;
  let x_642 : vec4<f32> = u_xlat4;
  let x_644 : vec3<f32> = (vec3<f32>(x_640.x, x_640.x, x_640.x) * vec3<f32>(x_642.x, x_642.y, x_642.z));
  let x_645 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_644.x, x_644.y, x_644.z, x_645.w);
  let x_649 : f32 = x_146.unity_MatrixV[0i].z;
  u_xlat5.x = x_649;
  let x_652 : f32 = x_146.unity_MatrixV[1i].z;
  u_xlat5.y = x_652;
  let x_655 : f32 = x_146.unity_MatrixV[2i].z;
  u_xlat5.z = x_655;
  let x_657 : bool = u_xlatb1;
  if (x_657) {
    let x_661 : vec4<f32> = u_xlat4;
    x_658 = vec3<f32>(x_661.x, x_661.y, x_661.z);
  } else {
    let x_664 : vec3<f32> = u_xlat5;
    x_658 = x_664;
  }
  let x_665 : vec3<f32> = x_658;
  let x_666 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_665.x, x_665.y, x_665.z, x_666.w);
  let x_669 : f32 = vs_INTERP0.y;
  let x_671 : f32 = x_146.unity_MatrixV[1i].z;
  u_xlat62 = (x_669 * x_671);
  let x_674 : f32 = x_146.unity_MatrixV[0i].z;
  let x_676 : f32 = vs_INTERP0.x;
  let x_678 : f32 = u_xlat62;
  u_xlat62 = ((x_674 * x_676) + x_678);
  let x_681 : f32 = x_146.unity_MatrixV[2i].z;
  let x_683 : f32 = vs_INTERP0.z;
  let x_685 : f32 = u_xlat62;
  u_xlat62 = ((x_681 * x_683) + x_685);
  let x_687 : f32 = u_xlat62;
  let x_689 : f32 = x_146.unity_MatrixV[3i].z;
  u_xlat62 = (x_687 + x_689);
  let x_691 : f32 = u_xlat62;
  let x_695 : f32 = x_146.x_ProjectionParams.y;
  u_xlat62 = (-(x_691) + -(x_695));
  let x_698 : f32 = u_xlat62;
  u_xlat62 = max(x_698, 0.0f);
  let x_700 : f32 = u_xlat62;
  let x_703 : f32 = x_146.unity_FogParams.x;
  u_xlat62 = (x_700 * x_703);
  let x_712 : vec2<f32> = vs_INTERP4;
  let x_714 : f32 = x_146.x_GlobalMipBias.x;
  let x_715 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_712, x_714);
  u_xlat4 = x_715;
  let x_720 : vec2<f32> = vs_INTERP4;
  let x_722 : f32 = x_146.x_GlobalMipBias.x;
  let x_723 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_720, x_722);
  u_xlat5 = vec3<f32>(x_723.x, x_723.y, x_723.z);
  let x_725 : vec4<f32> = u_xlat4;
  let x_728 : vec3<f32> = (vec3<f32>(x_725.x, x_725.y, x_725.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_729 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_728.x, x_728.y, x_728.z, x_729.w);
  let x_731 : vec3<f32> = u_xlat20;
  let x_732 : vec4<f32> = u_xlat4;
  u_xlat63 = dot(x_731, vec3<f32>(x_732.x, x_732.y, x_732.z));
  let x_735 : f32 = u_xlat63;
  u_xlat63 = (x_735 + 0.5f);
  let x_738 : f32 = u_xlat63;
  let x_740 : vec3<f32> = u_xlat5;
  let x_741 : vec3<f32> = (vec3<f32>(x_738, x_738, x_738) * x_740);
  let x_742 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_741.x, x_741.y, x_741.z, x_742.w);
  let x_745 : f32 = u_xlat4.w;
  u_xlat63 = max(x_745, 0.0001f);
  let x_748 : vec4<f32> = u_xlat4;
  let x_750 : f32 = u_xlat63;
  let x_752 : vec3<f32> = (vec3<f32>(x_748.x, x_748.y, x_748.z) / vec3<f32>(x_750, x_750, x_750));
  let x_753 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_752.x, x_752.y, x_752.z, x_753.w);
  let x_756 : vec4<f32> = x_146.x_ScaledScreenParams;
  let x_757 : vec2<f32> = vec2<f32>(x_756.x, x_756.y);
  let x_761 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_757.x, x_757.y));
  let x_762 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_761.x, x_761.y, x_762.z);
  let x_764 : vec3<f32> = u_xlat5;
  let x_766 : vec4<f32> = hlslcc_FragCoord;
  let x_768 : vec2<f32> = (vec2<f32>(x_764.x, x_764.y) * vec2<f32>(x_766.x, x_766.y));
  let x_769 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_768.x, x_768.y, x_769.z);
  let x_772 : f32 = u_xlat5.y;
  let x_775 : f32 = x_146.x_ScaleBiasRt.x;
  let x_778 : f32 = x_146.x_ScaleBiasRt.y;
  u_xlat63 = ((x_772 * x_775) + x_778);
  let x_780 : f32 = u_xlat63;
  u_xlat5.z = (-(x_780) + 1.0f);
  let x_784 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_784 * vec3<f32>(0.863999963f, 0.863999963f, 0.863999963f));
  let x_788 : vec4<f32> = u_xlat1;
  let x_790 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_788.w, x_788.w, x_788.w) * x_790) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_795 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_795 * vec3<f32>(0.100000001f, 0.100000001f, 0.100000001f)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_802 : f32 = u_xlat0.x;
  u_xlat61 = (-(x_802) + 1.0f);
  let x_805 : f32 = u_xlat61;
  let x_806 : f32 = u_xlat61;
  u_xlat63 = (x_805 * x_806);
  let x_808 : f32 = u_xlat63;
  u_xlat63 = max(x_808, 0.0078125f);
  let x_811 : f32 = u_xlat63;
  let x_812 : f32 = u_xlat63;
  u_xlat64 = (x_811 * x_812);
  let x_815 : f32 = u_xlat0.x;
  u_xlat0.x = (x_815 + 0.136000037f);
  let x_820 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_820, 1.0f);
  let x_824 : f32 = u_xlat63;
  u_xlat25 = ((x_824 * 4.0f) + 2.0f);
  let x_832 : vec3<f32> = u_xlat5;
  let x_835 : f32 = x_146.x_GlobalMipBias.x;
  let x_836 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_832.x, x_832.z), x_835);
  u_xlat5.x = x_836.x;
  let x_841 : f32 = u_xlat5.x;
  u_xlat45 = (x_841 + -1.0f);
  let x_844 : f32 = x_146.x_AmbientOcclusionParam.w;
  let x_845 : f32 = u_xlat45;
  u_xlat45 = ((x_844 * x_845) + 1.0f);
  let x_849 : f32 = u_xlat7.x;
  let x_851 : f32 = u_xlat5.x;
  u_xlat5.x = min(x_849, x_851);
  let x_861 : f32 = x_859.x_MainLightShadowParams.y;
  u_xlatb65 = (0.0f < x_861);
  let x_863 : bool = u_xlatb65;
  if (x_863) {
    let x_867 : f32 = x_859.x_MainLightShadowParams.y;
    u_xlatb65 = (x_867 == 1.0f);
    let x_869 : bool = u_xlatb65;
    if (x_869) {
      let x_873 : vec4<f32> = vs_INTERP8;
      let x_876 : vec4<f32> = x_859.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_873.x, x_873.y, x_873.x, x_873.y) + x_876);
      let x_879 : vec4<f32> = u_xlat6;
      let x_880 : vec2<f32> = vec2<f32>(x_879.x, x_879.y);
      let x_882 : f32 = vs_INTERP8.z;
      txVec0 = vec3<f32>(x_880.x, x_880.y, x_882);
      let x_894 : vec3<f32> = txVec0;
      let x_896 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_894.xy, x_894.z);
      u_xlat7.x = x_896;
      let x_899 : vec4<f32> = u_xlat6;
      let x_900 : vec2<f32> = vec2<f32>(x_899.z, x_899.w);
      let x_902 : f32 = vs_INTERP8.z;
      txVec1 = vec3<f32>(x_900.x, x_900.y, x_902);
      let x_909 : vec3<f32> = txVec1;
      let x_911 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_909.xy, x_909.z);
      u_xlat7.y = x_911;
      let x_913 : vec4<f32> = vs_INTERP8;
      let x_916 : vec4<f32> = x_859.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_913.x, x_913.y, x_913.x, x_913.y) + x_916);
      let x_919 : vec4<f32> = u_xlat6;
      let x_920 : vec2<f32> = vec2<f32>(x_919.x, x_919.y);
      let x_922 : f32 = vs_INTERP8.z;
      txVec2 = vec3<f32>(x_920.x, x_920.y, x_922);
      let x_929 : vec3<f32> = txVec2;
      let x_931 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_929.xy, x_929.z);
      u_xlat7.z = x_931;
      let x_934 : vec4<f32> = u_xlat6;
      let x_935 : vec2<f32> = vec2<f32>(x_934.z, x_934.w);
      let x_937 : f32 = vs_INTERP8.z;
      txVec3 = vec3<f32>(x_935.x, x_935.y, x_937);
      let x_944 : vec3<f32> = txVec3;
      let x_946 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_944.xy, x_944.z);
      u_xlat7.w = x_946;
      let x_949 : vec4<f32> = u_xlat7;
      u_xlat65 = dot(x_949, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_956 : f32 = x_859.x_MainLightShadowParams.y;
      u_xlatb6 = (x_956 == 2.0f);
      let x_958 : bool = u_xlatb6;
      if (x_958) {
        let x_961 : vec4<f32> = vs_INTERP8;
        let x_964 : vec4<f32> = x_859.x_MainLightShadowmapSize;
        let x_968 : vec2<f32> = ((vec2<f32>(x_961.x, x_961.y) * vec2<f32>(x_964.z, x_964.w)) + vec2<f32>(0.5f, 0.5f));
        let x_969 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_968.x, x_968.y, x_969.z, x_969.w);
        let x_971 : vec4<f32> = u_xlat6;
        let x_973 : vec2<f32> = floor(vec2<f32>(x_971.x, x_971.y));
        let x_974 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_973.x, x_973.y, x_974.z, x_974.w);
        let x_977 : vec4<f32> = vs_INTERP8;
        let x_980 : vec4<f32> = x_859.x_MainLightShadowmapSize;
        let x_983 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_977.x, x_977.y) * vec2<f32>(x_980.z, x_980.w)) + -(vec2<f32>(x_983.x, x_983.y)));
        let x_987 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_987.x, x_987.x, x_987.y, x_987.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_992 : vec4<f32> = u_xlat7;
        let x_994 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_992.x, x_992.x, x_992.z, x_992.z) * vec4<f32>(x_994.x, x_994.x, x_994.z, x_994.z));
        let x_997 : vec4<f32> = u_xlat8;
        let x_1001 : vec2<f32> = (vec2<f32>(x_997.y, x_997.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_1002 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1001.x, x_1002.y, x_1001.y, x_1002.w);
        let x_1004 : vec4<f32> = u_xlat8;
        let x_1007 : vec2<f32> = u_xlat46;
        let x_1009 : vec2<f32> = ((vec2<f32>(x_1004.x, x_1004.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1007));
        let x_1010 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1009.x, x_1009.y, x_1010.z, x_1010.w);
        let x_1013 : vec2<f32> = u_xlat46;
        u_xlat48 = (-(x_1013) + vec2<f32>(1.0f, 1.0f));
        let x_1017 : vec2<f32> = u_xlat46;
        let x_1019 : vec2<f32> = min(x_1017, vec2<f32>(0.0f, 0.0f));
        let x_1020 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1019.x, x_1019.y, x_1020.z, x_1020.w);
        let x_1022 : vec4<f32> = u_xlat9;
        let x_1025 : vec4<f32> = u_xlat9;
        let x_1028 : vec2<f32> = u_xlat48;
        let x_1029 : vec2<f32> = ((-(vec2<f32>(x_1022.x, x_1022.y)) * vec2<f32>(x_1025.x, x_1025.y)) + x_1028);
        let x_1030 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1029.x, x_1029.y, x_1030.z, x_1030.w);
        let x_1032 : vec2<f32> = u_xlat46;
        u_xlat46 = max(x_1032, vec2<f32>(0.0f, 0.0f));
        let x_1034 : vec2<f32> = u_xlat46;
        let x_1036 : vec2<f32> = u_xlat46;
        let x_1038 : vec4<f32> = u_xlat7;
        u_xlat46 = ((-(x_1034) * x_1036) + vec2<f32>(x_1038.y, x_1038.w));
        let x_1041 : vec4<f32> = u_xlat9;
        let x_1043 : vec2<f32> = (vec2<f32>(x_1041.x, x_1041.y) + vec2<f32>(1.0f, 1.0f));
        let x_1044 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1043.x, x_1043.y, x_1044.z, x_1044.w);
        let x_1046 : vec2<f32> = u_xlat46;
        u_xlat46 = (x_1046 + vec2<f32>(1.0f, 1.0f));
        let x_1049 : vec4<f32> = u_xlat8;
        let x_1053 : vec2<f32> = (vec2<f32>(x_1049.x, x_1049.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1054 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1053.x, x_1053.y, x_1054.z, x_1054.w);
        let x_1056 : vec2<f32> = u_xlat48;
        let x_1057 : vec2<f32> = (x_1056 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1058 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1057.x, x_1057.y, x_1058.z, x_1058.w);
        let x_1060 : vec4<f32> = u_xlat9;
        let x_1062 : vec2<f32> = (vec2<f32>(x_1060.x, x_1060.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1063 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1062.x, x_1062.y, x_1063.z, x_1063.w);
        let x_1066 : vec2<f32> = u_xlat46;
        let x_1067 : vec2<f32> = (x_1066 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1068 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1067.x, x_1067.y, x_1068.z, x_1068.w);
        let x_1070 : vec4<f32> = u_xlat7;
        u_xlat46 = (vec2<f32>(x_1070.y, x_1070.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1074 : f32 = u_xlat9.x;
        u_xlat10.z = x_1074;
        let x_1077 : f32 = u_xlat46.x;
        u_xlat10.w = x_1077;
        let x_1080 : f32 = u_xlat11.x;
        u_xlat8.z = x_1080;
        let x_1083 : f32 = u_xlat7.x;
        u_xlat8.w = x_1083;
        let x_1086 : vec4<f32> = u_xlat8;
        let x_1088 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_1086.z, x_1086.w, x_1086.x, x_1086.z) + vec4<f32>(x_1088.z, x_1088.w, x_1088.x, x_1088.z));
        let x_1092 : f32 = u_xlat10.y;
        u_xlat9.z = x_1092;
        let x_1095 : f32 = u_xlat46.y;
        u_xlat9.w = x_1095;
        let x_1098 : f32 = u_xlat8.y;
        u_xlat11.z = x_1098;
        let x_1101 : f32 = u_xlat7.z;
        u_xlat11.w = x_1101;
        let x_1103 : vec4<f32> = u_xlat9;
        let x_1105 : vec4<f32> = u_xlat11;
        let x_1107 : vec3<f32> = (vec3<f32>(x_1103.z, x_1103.y, x_1103.w) + vec3<f32>(x_1105.z, x_1105.y, x_1105.w));
        let x_1108 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1107.x, x_1107.y, x_1107.z, x_1108.w);
        let x_1110 : vec4<f32> = u_xlat8;
        let x_1112 : vec4<f32> = u_xlat12;
        let x_1114 : vec3<f32> = (vec3<f32>(x_1110.x, x_1110.z, x_1110.w) / vec3<f32>(x_1112.z, x_1112.w, x_1112.y));
        let x_1115 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1114.x, x_1114.y, x_1114.z, x_1115.w);
        let x_1117 : vec4<f32> = u_xlat8;
        let x_1122 : vec3<f32> = (vec3<f32>(x_1117.x, x_1117.y, x_1117.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1123 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1122.x, x_1122.y, x_1122.z, x_1123.w);
        let x_1125 : vec4<f32> = u_xlat11;
        let x_1127 : vec4<f32> = u_xlat7;
        let x_1129 : vec3<f32> = (vec3<f32>(x_1125.z, x_1125.y, x_1125.w) / vec3<f32>(x_1127.x, x_1127.y, x_1127.z));
        let x_1130 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1129.x, x_1129.y, x_1129.z, x_1130.w);
        let x_1132 : vec4<f32> = u_xlat9;
        let x_1134 : vec3<f32> = (vec3<f32>(x_1132.x, x_1132.y, x_1132.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1135 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1134.x, x_1134.y, x_1134.z, x_1135.w);
        let x_1137 : vec4<f32> = u_xlat8;
        let x_1140 : vec4<f32> = x_859.x_MainLightShadowmapSize;
        let x_1142 : vec3<f32> = (vec3<f32>(x_1137.y, x_1137.x, x_1137.z) * vec3<f32>(x_1140.x, x_1140.x, x_1140.x));
        let x_1143 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1142.x, x_1142.y, x_1142.z, x_1143.w);
        let x_1145 : vec4<f32> = u_xlat9;
        let x_1148 : vec4<f32> = x_859.x_MainLightShadowmapSize;
        let x_1150 : vec3<f32> = (vec3<f32>(x_1145.x, x_1145.y, x_1145.z) * vec3<f32>(x_1148.y, x_1148.y, x_1148.y));
        let x_1151 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1150.x, x_1150.y, x_1150.z, x_1151.w);
        let x_1154 : f32 = u_xlat9.x;
        u_xlat8.w = x_1154;
        let x_1156 : vec4<f32> = u_xlat6;
        let x_1159 : vec4<f32> = x_859.x_MainLightShadowmapSize;
        let x_1162 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1156.x, x_1156.y, x_1156.x, x_1156.y) * vec4<f32>(x_1159.x, x_1159.y, x_1159.x, x_1159.y)) + vec4<f32>(x_1162.y, x_1162.w, x_1162.x, x_1162.w));
        let x_1165 : vec4<f32> = u_xlat6;
        let x_1168 : vec4<f32> = x_859.x_MainLightShadowmapSize;
        let x_1171 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_1165.x, x_1165.y) * vec2<f32>(x_1168.x, x_1168.y)) + vec2<f32>(x_1171.z, x_1171.w));
        let x_1175 : f32 = u_xlat8.y;
        u_xlat9.w = x_1175;
        let x_1177 : vec4<f32> = u_xlat9;
        let x_1178 : vec2<f32> = vec2<f32>(x_1177.y, x_1177.z);
        let x_1179 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1179.x, x_1178.x, x_1179.z, x_1178.y);
        let x_1181 : vec4<f32> = u_xlat6;
        let x_1184 : vec4<f32> = x_859.x_MainLightShadowmapSize;
        let x_1187 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1181.x, x_1181.y, x_1181.x, x_1181.y) * vec4<f32>(x_1184.x, x_1184.y, x_1184.x, x_1184.y)) + vec4<f32>(x_1187.x, x_1187.y, x_1187.z, x_1187.y));
        let x_1190 : vec4<f32> = u_xlat6;
        let x_1193 : vec4<f32> = x_859.x_MainLightShadowmapSize;
        let x_1196 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1190.x, x_1190.y, x_1190.x, x_1190.y) * vec4<f32>(x_1193.x, x_1193.y, x_1193.x, x_1193.y)) + vec4<f32>(x_1196.w, x_1196.y, x_1196.w, x_1196.z));
        let x_1199 : vec4<f32> = u_xlat6;
        let x_1202 : vec4<f32> = x_859.x_MainLightShadowmapSize;
        let x_1205 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1199.x, x_1199.y, x_1199.x, x_1199.y) * vec4<f32>(x_1202.x, x_1202.y, x_1202.x, x_1202.y)) + vec4<f32>(x_1205.x, x_1205.w, x_1205.z, x_1205.w));
        let x_1209 : vec4<f32> = u_xlat7;
        let x_1211 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_1209.x, x_1209.x, x_1209.x, x_1209.y) * vec4<f32>(x_1211.z, x_1211.w, x_1211.y, x_1211.z));
        let x_1215 : vec4<f32> = u_xlat7;
        let x_1217 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_1215.y, x_1215.y, x_1215.z, x_1215.z) * x_1217);
        let x_1220 : f32 = u_xlat7.z;
        let x_1222 : f32 = u_xlat12.y;
        u_xlat6.x = (x_1220 * x_1222);
        let x_1226 : vec4<f32> = u_xlat10;
        let x_1227 : vec2<f32> = vec2<f32>(x_1226.x, x_1226.y);
        let x_1229 : f32 = vs_INTERP8.z;
        txVec4 = vec3<f32>(x_1227.x, x_1227.y, x_1229);
        let x_1237 : vec3<f32> = txVec4;
        let x_1239 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1237.xy, x_1237.z);
        u_xlat26 = x_1239;
        let x_1241 : vec4<f32> = u_xlat10;
        let x_1242 : vec2<f32> = vec2<f32>(x_1241.z, x_1241.w);
        let x_1244 : f32 = vs_INTERP8.z;
        txVec5 = vec3<f32>(x_1242.x, x_1242.y, x_1244);
        let x_1251 : vec3<f32> = txVec5;
        let x_1253 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1251.xy, x_1251.z);
        u_xlat7.x = x_1253;
        let x_1256 : f32 = u_xlat7.x;
        let x_1258 : f32 = u_xlat13.y;
        u_xlat7.x = (x_1256 * x_1258);
        let x_1262 : f32 = u_xlat13.x;
        let x_1263 : f32 = u_xlat26;
        let x_1266 : f32 = u_xlat7.x;
        u_xlat26 = ((x_1262 * x_1263) + x_1266);
        let x_1269 : vec2<f32> = u_xlat46;
        let x_1271 : f32 = vs_INTERP8.z;
        txVec6 = vec3<f32>(x_1269.x, x_1269.y, x_1271);
        let x_1278 : vec3<f32> = txVec6;
        let x_1280 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1278.xy, x_1278.z);
        u_xlat46.x = x_1280;
        let x_1283 : f32 = u_xlat13.z;
        let x_1285 : f32 = u_xlat46.x;
        let x_1287 : f32 = u_xlat26;
        u_xlat26 = ((x_1283 * x_1285) + x_1287);
        let x_1290 : vec4<f32> = u_xlat9;
        let x_1291 : vec2<f32> = vec2<f32>(x_1290.x, x_1290.y);
        let x_1293 : f32 = vs_INTERP8.z;
        txVec7 = vec3<f32>(x_1291.x, x_1291.y, x_1293);
        let x_1300 : vec3<f32> = txVec7;
        let x_1302 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1300.xy, x_1300.z);
        u_xlat46.x = x_1302;
        let x_1305 : f32 = u_xlat13.w;
        let x_1307 : f32 = u_xlat46.x;
        let x_1309 : f32 = u_xlat26;
        u_xlat26 = ((x_1305 * x_1307) + x_1309);
        let x_1312 : vec4<f32> = u_xlat11;
        let x_1313 : vec2<f32> = vec2<f32>(x_1312.x, x_1312.y);
        let x_1315 : f32 = vs_INTERP8.z;
        txVec8 = vec3<f32>(x_1313.x, x_1313.y, x_1315);
        let x_1322 : vec3<f32> = txVec8;
        let x_1324 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1322.xy, x_1322.z);
        u_xlat46.x = x_1324;
        let x_1327 : f32 = u_xlat14.x;
        let x_1329 : f32 = u_xlat46.x;
        let x_1331 : f32 = u_xlat26;
        u_xlat26 = ((x_1327 * x_1329) + x_1331);
        let x_1334 : vec4<f32> = u_xlat11;
        let x_1335 : vec2<f32> = vec2<f32>(x_1334.z, x_1334.w);
        let x_1337 : f32 = vs_INTERP8.z;
        txVec9 = vec3<f32>(x_1335.x, x_1335.y, x_1337);
        let x_1344 : vec3<f32> = txVec9;
        let x_1346 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1344.xy, x_1344.z);
        u_xlat46.x = x_1346;
        let x_1349 : f32 = u_xlat14.y;
        let x_1351 : f32 = u_xlat46.x;
        let x_1353 : f32 = u_xlat26;
        u_xlat26 = ((x_1349 * x_1351) + x_1353);
        let x_1356 : vec4<f32> = u_xlat9;
        let x_1357 : vec2<f32> = vec2<f32>(x_1356.z, x_1356.w);
        let x_1359 : f32 = vs_INTERP8.z;
        txVec10 = vec3<f32>(x_1357.x, x_1357.y, x_1359);
        let x_1366 : vec3<f32> = txVec10;
        let x_1368 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1366.xy, x_1366.z);
        u_xlat46.x = x_1368;
        let x_1371 : f32 = u_xlat14.z;
        let x_1373 : f32 = u_xlat46.x;
        let x_1375 : f32 = u_xlat26;
        u_xlat26 = ((x_1371 * x_1373) + x_1375);
        let x_1378 : vec4<f32> = u_xlat8;
        let x_1379 : vec2<f32> = vec2<f32>(x_1378.x, x_1378.y);
        let x_1381 : f32 = vs_INTERP8.z;
        txVec11 = vec3<f32>(x_1379.x, x_1379.y, x_1381);
        let x_1388 : vec3<f32> = txVec11;
        let x_1390 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1388.xy, x_1388.z);
        u_xlat46.x = x_1390;
        let x_1393 : f32 = u_xlat14.w;
        let x_1395 : f32 = u_xlat46.x;
        let x_1397 : f32 = u_xlat26;
        u_xlat26 = ((x_1393 * x_1395) + x_1397);
        let x_1400 : vec4<f32> = u_xlat8;
        let x_1401 : vec2<f32> = vec2<f32>(x_1400.z, x_1400.w);
        let x_1403 : f32 = vs_INTERP8.z;
        txVec12 = vec3<f32>(x_1401.x, x_1401.y, x_1403);
        let x_1410 : vec3<f32> = txVec12;
        let x_1412 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1410.xy, x_1410.z);
        u_xlat46.x = x_1412;
        let x_1415 : f32 = u_xlat6.x;
        let x_1417 : f32 = u_xlat46.x;
        let x_1419 : f32 = u_xlat26;
        u_xlat65 = ((x_1415 * x_1417) + x_1419);
      } else {
        let x_1422 : vec4<f32> = vs_INTERP8;
        let x_1425 : vec4<f32> = x_859.x_MainLightShadowmapSize;
        let x_1428 : vec2<f32> = ((vec2<f32>(x_1422.x, x_1422.y) * vec2<f32>(x_1425.z, x_1425.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1429 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1428.x, x_1428.y, x_1429.z, x_1429.w);
        let x_1431 : vec4<f32> = u_xlat6;
        let x_1433 : vec2<f32> = floor(vec2<f32>(x_1431.x, x_1431.y));
        let x_1434 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1433.x, x_1433.y, x_1434.z, x_1434.w);
        let x_1436 : vec4<f32> = vs_INTERP8;
        let x_1439 : vec4<f32> = x_859.x_MainLightShadowmapSize;
        let x_1442 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_1436.x, x_1436.y) * vec2<f32>(x_1439.z, x_1439.w)) + -(vec2<f32>(x_1442.x, x_1442.y)));
        let x_1446 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_1446.x, x_1446.x, x_1446.y, x_1446.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1449 : vec4<f32> = u_xlat7;
        let x_1451 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1449.x, x_1449.x, x_1449.z, x_1449.z) * vec4<f32>(x_1451.x, x_1451.x, x_1451.z, x_1451.z));
        let x_1454 : vec4<f32> = u_xlat8;
        let x_1458 : vec2<f32> = (vec2<f32>(x_1454.y, x_1454.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1459 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1459.x, x_1458.x, x_1459.z, x_1458.y);
        let x_1461 : vec4<f32> = u_xlat8;
        let x_1464 : vec2<f32> = u_xlat46;
        let x_1466 : vec2<f32> = ((vec2<f32>(x_1461.x, x_1461.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1464));
        let x_1467 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1466.x, x_1467.y, x_1466.y, x_1467.w);
        let x_1469 : vec2<f32> = u_xlat46;
        let x_1471 : vec2<f32> = (-(x_1469) + vec2<f32>(1.0f, 1.0f));
        let x_1472 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1471.x, x_1471.y, x_1472.z, x_1472.w);
        let x_1474 : vec2<f32> = u_xlat46;
        u_xlat48 = min(x_1474, vec2<f32>(0.0f, 0.0f));
        let x_1476 : vec2<f32> = u_xlat48;
        let x_1478 : vec2<f32> = u_xlat48;
        let x_1480 : vec4<f32> = u_xlat8;
        let x_1482 : vec2<f32> = ((-(x_1476) * x_1478) + vec2<f32>(x_1480.x, x_1480.y));
        let x_1483 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1482.x, x_1482.y, x_1483.z, x_1483.w);
        let x_1485 : vec2<f32> = u_xlat46;
        u_xlat48 = max(x_1485, vec2<f32>(0.0f, 0.0f));
        let x_1487 : vec2<f32> = u_xlat48;
        let x_1489 : vec2<f32> = u_xlat48;
        let x_1491 : vec4<f32> = u_xlat7;
        let x_1493 : vec2<f32> = ((-(x_1487) * x_1489) + vec2<f32>(x_1491.y, x_1491.w));
        let x_1494 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_1493.x, x_1494.y, x_1493.y);
        let x_1496 : vec4<f32> = u_xlat8;
        let x_1498 : vec2<f32> = (vec2<f32>(x_1496.x, x_1496.y) + vec2<f32>(2.0f, 2.0f));
        let x_1499 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1498.x, x_1498.y, x_1499.z, x_1499.w);
        let x_1501 : vec3<f32> = u_xlat27;
        let x_1503 : vec2<f32> = (vec2<f32>(x_1501.x, x_1501.z) + vec2<f32>(2.0f, 2.0f));
        let x_1504 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1504.x, x_1503.x, x_1504.z, x_1503.y);
        let x_1507 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1507 * 0.081632003f);
        let x_1511 : vec4<f32> = u_xlat7;
        let x_1514 : vec3<f32> = (vec3<f32>(x_1511.z, x_1511.x, x_1511.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1515 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1514.x, x_1514.y, x_1514.z, x_1515.w);
        let x_1517 : vec4<f32> = u_xlat8;
        let x_1520 : vec2<f32> = (vec2<f32>(x_1517.x, x_1517.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1521 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1520.x, x_1520.y, x_1521.z, x_1521.w);
        let x_1524 : f32 = u_xlat11.y;
        u_xlat10.x = x_1524;
        let x_1526 : vec2<f32> = u_xlat46;
        let x_1533 : vec2<f32> = ((vec2<f32>(x_1526.x, x_1526.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1534 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1534.x, x_1533.x, x_1534.z, x_1533.y);
        let x_1536 : vec2<f32> = u_xlat46;
        let x_1540 : vec2<f32> = ((vec2<f32>(x_1536.x, x_1536.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1541 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1540.x, x_1541.y, x_1540.y, x_1541.w);
        let x_1544 : f32 = u_xlat7.x;
        u_xlat8.y = x_1544;
        let x_1547 : f32 = u_xlat9.y;
        u_xlat8.w = x_1547;
        let x_1549 : vec4<f32> = u_xlat8;
        let x_1550 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1549 + x_1550);
        let x_1552 : vec2<f32> = u_xlat46;
        let x_1555 : vec2<f32> = ((vec2<f32>(x_1552.y, x_1552.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1556 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1556.x, x_1555.x, x_1556.z, x_1555.y);
        let x_1558 : vec2<f32> = u_xlat46;
        let x_1561 : vec2<f32> = ((vec2<f32>(x_1558.y, x_1558.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1562 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1561.x, x_1562.y, x_1561.y, x_1562.w);
        let x_1565 : f32 = u_xlat7.y;
        u_xlat9.y = x_1565;
        let x_1567 : vec4<f32> = u_xlat9;
        let x_1568 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1567 + x_1568);
        let x_1570 : vec4<f32> = u_xlat8;
        let x_1571 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1570 / x_1571);
        let x_1573 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1573 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1579 : vec4<f32> = u_xlat9;
        let x_1580 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1579 / x_1580);
        let x_1582 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1582 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1584 : vec4<f32> = u_xlat8;
        let x_1587 : vec4<f32> = x_859.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1584.w, x_1584.x, x_1584.y, x_1584.z) * vec4<f32>(x_1587.x, x_1587.x, x_1587.x, x_1587.x));
        let x_1590 : vec4<f32> = u_xlat9;
        let x_1593 : vec4<f32> = x_859.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1590.x, x_1590.w, x_1590.y, x_1590.z) * vec4<f32>(x_1593.y, x_1593.y, x_1593.y, x_1593.y));
        let x_1596 : vec4<f32> = u_xlat8;
        let x_1597 : vec3<f32> = vec3<f32>(x_1596.y, x_1596.z, x_1596.w);
        let x_1598 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1597.x, x_1598.y, x_1597.y, x_1597.z);
        let x_1601 : f32 = u_xlat9.x;
        u_xlat11.y = x_1601;
        let x_1603 : vec4<f32> = u_xlat6;
        let x_1606 : vec4<f32> = x_859.x_MainLightShadowmapSize;
        let x_1609 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1603.x, x_1603.y, x_1603.x, x_1603.y) * vec4<f32>(x_1606.x, x_1606.y, x_1606.x, x_1606.y)) + vec4<f32>(x_1609.x, x_1609.y, x_1609.z, x_1609.y));
        let x_1612 : vec4<f32> = u_xlat6;
        let x_1615 : vec4<f32> = x_859.x_MainLightShadowmapSize;
        let x_1618 : vec4<f32> = u_xlat11;
        u_xlat46 = ((vec2<f32>(x_1612.x, x_1612.y) * vec2<f32>(x_1615.x, x_1615.y)) + vec2<f32>(x_1618.w, x_1618.y));
        let x_1622 : f32 = u_xlat11.y;
        u_xlat8.y = x_1622;
        let x_1625 : f32 = u_xlat9.z;
        u_xlat11.y = x_1625;
        let x_1627 : vec4<f32> = u_xlat6;
        let x_1630 : vec4<f32> = x_859.x_MainLightShadowmapSize;
        let x_1633 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1627.x, x_1627.y, x_1627.x, x_1627.y) * vec4<f32>(x_1630.x, x_1630.y, x_1630.x, x_1630.y)) + vec4<f32>(x_1633.x, x_1633.y, x_1633.z, x_1633.y));
        let x_1636 : vec4<f32> = u_xlat6;
        let x_1639 : vec4<f32> = x_859.x_MainLightShadowmapSize;
        let x_1642 : vec4<f32> = u_xlat11;
        let x_1644 : vec2<f32> = ((vec2<f32>(x_1636.x, x_1636.y) * vec2<f32>(x_1639.x, x_1639.y)) + vec2<f32>(x_1642.w, x_1642.y));
        let x_1645 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1644.x, x_1644.y, x_1645.z, x_1645.w);
        let x_1648 : f32 = u_xlat11.y;
        u_xlat8.z = x_1648;
        let x_1651 : vec4<f32> = u_xlat6;
        let x_1654 : vec4<f32> = x_859.x_MainLightShadowmapSize;
        let x_1657 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1651.x, x_1651.y, x_1651.x, x_1651.y) * vec4<f32>(x_1654.x, x_1654.y, x_1654.x, x_1654.y)) + vec4<f32>(x_1657.x, x_1657.y, x_1657.x, x_1657.z));
        let x_1661 : f32 = u_xlat9.w;
        u_xlat11.y = x_1661;
        let x_1664 : vec4<f32> = u_xlat6;
        let x_1667 : vec4<f32> = x_859.x_MainLightShadowmapSize;
        let x_1670 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1664.x, x_1664.y, x_1664.x, x_1664.y) * vec4<f32>(x_1667.x, x_1667.y, x_1667.x, x_1667.y)) + vec4<f32>(x_1670.x, x_1670.y, x_1670.z, x_1670.y));
        let x_1674 : vec4<f32> = u_xlat6;
        let x_1677 : vec4<f32> = x_859.x_MainLightShadowmapSize;
        let x_1680 : vec4<f32> = u_xlat11;
        let x_1682 : vec2<f32> = ((vec2<f32>(x_1674.x, x_1674.y) * vec2<f32>(x_1677.x, x_1677.y)) + vec2<f32>(x_1680.w, x_1680.y));
        let x_1683 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1682.x, x_1682.y, x_1683.z);
        let x_1686 : f32 = u_xlat11.y;
        u_xlat8.w = x_1686;
        let x_1689 : vec4<f32> = u_xlat6;
        let x_1692 : vec4<f32> = x_859.x_MainLightShadowmapSize;
        let x_1695 : vec4<f32> = u_xlat8;
        u_xlat54 = ((vec2<f32>(x_1689.x, x_1689.y) * vec2<f32>(x_1692.x, x_1692.y)) + vec2<f32>(x_1695.x, x_1695.w));
        let x_1698 : vec4<f32> = u_xlat11;
        let x_1699 : vec3<f32> = vec3<f32>(x_1698.x, x_1698.z, x_1698.w);
        let x_1700 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1699.x, x_1700.y, x_1699.y, x_1699.z);
        let x_1702 : vec4<f32> = u_xlat6;
        let x_1705 : vec4<f32> = x_859.x_MainLightShadowmapSize;
        let x_1708 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1702.x, x_1702.y, x_1702.x, x_1702.y) * vec4<f32>(x_1705.x, x_1705.y, x_1705.x, x_1705.y)) + vec4<f32>(x_1708.x, x_1708.y, x_1708.z, x_1708.y));
        let x_1712 : vec4<f32> = u_xlat6;
        let x_1715 : vec4<f32> = x_859.x_MainLightShadowmapSize;
        let x_1718 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_1712.x, x_1712.y) * vec2<f32>(x_1715.x, x_1715.y)) + vec2<f32>(x_1718.w, x_1718.y));
        let x_1722 : f32 = u_xlat8.x;
        u_xlat9.x = x_1722;
        let x_1724 : vec4<f32> = u_xlat6;
        let x_1727 : vec4<f32> = x_859.x_MainLightShadowmapSize;
        let x_1730 : vec4<f32> = u_xlat9;
        let x_1732 : vec2<f32> = ((vec2<f32>(x_1724.x, x_1724.y) * vec2<f32>(x_1727.x, x_1727.y)) + vec2<f32>(x_1730.x, x_1730.y));
        let x_1733 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1732.x, x_1732.y, x_1733.z, x_1733.w);
        let x_1736 : vec4<f32> = u_xlat7;
        let x_1738 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1736.x, x_1736.x, x_1736.x, x_1736.x) * x_1738);
        let x_1741 : vec4<f32> = u_xlat7;
        let x_1743 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1741.y, x_1741.y, x_1741.y, x_1741.y) * x_1743);
        let x_1746 : vec4<f32> = u_xlat7;
        let x_1748 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1746.z, x_1746.z, x_1746.z, x_1746.z) * x_1748);
        let x_1750 : vec4<f32> = u_xlat7;
        let x_1752 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1750.w, x_1750.w, x_1750.w, x_1750.w) * x_1752);
        let x_1755 : vec4<f32> = u_xlat12;
        let x_1756 : vec2<f32> = vec2<f32>(x_1755.x, x_1755.y);
        let x_1758 : f32 = vs_INTERP8.z;
        txVec13 = vec3<f32>(x_1756.x, x_1756.y, x_1758);
        let x_1765 : vec3<f32> = txVec13;
        let x_1767 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1765.xy, x_1765.z);
        u_xlat8.x = x_1767;
        let x_1770 : vec4<f32> = u_xlat12;
        let x_1771 : vec2<f32> = vec2<f32>(x_1770.z, x_1770.w);
        let x_1773 : f32 = vs_INTERP8.z;
        txVec14 = vec3<f32>(x_1771.x, x_1771.y, x_1773);
        let x_1781 : vec3<f32> = txVec14;
        let x_1783 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1781.xy, x_1781.z);
        u_xlat68 = x_1783;
        let x_1784 : f32 = u_xlat68;
        let x_1786 : f32 = u_xlat17.y;
        u_xlat68 = (x_1784 * x_1786);
        let x_1789 : f32 = u_xlat17.x;
        let x_1791 : f32 = u_xlat8.x;
        let x_1793 : f32 = u_xlat68;
        u_xlat8.x = ((x_1789 * x_1791) + x_1793);
        let x_1797 : vec2<f32> = u_xlat46;
        let x_1799 : f32 = vs_INTERP8.z;
        txVec15 = vec3<f32>(x_1797.x, x_1797.y, x_1799);
        let x_1806 : vec3<f32> = txVec15;
        let x_1808 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1806.xy, x_1806.z);
        u_xlat46.x = x_1808;
        let x_1811 : f32 = u_xlat17.z;
        let x_1813 : f32 = u_xlat46.x;
        let x_1816 : f32 = u_xlat8.x;
        u_xlat46.x = ((x_1811 * x_1813) + x_1816);
        let x_1820 : vec4<f32> = u_xlat15;
        let x_1821 : vec2<f32> = vec2<f32>(x_1820.x, x_1820.y);
        let x_1823 : f32 = vs_INTERP8.z;
        txVec16 = vec3<f32>(x_1821.x, x_1821.y, x_1823);
        let x_1831 : vec3<f32> = txVec16;
        let x_1833 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1831.xy, x_1831.z);
        u_xlat66 = x_1833;
        let x_1835 : f32 = u_xlat17.w;
        let x_1836 : f32 = u_xlat66;
        let x_1839 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1835 * x_1836) + x_1839);
        let x_1843 : vec4<f32> = u_xlat13;
        let x_1844 : vec2<f32> = vec2<f32>(x_1843.x, x_1843.y);
        let x_1846 : f32 = vs_INTERP8.z;
        txVec17 = vec3<f32>(x_1844.x, x_1844.y, x_1846);
        let x_1853 : vec3<f32> = txVec17;
        let x_1855 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1853.xy, x_1853.z);
        u_xlat66 = x_1855;
        let x_1857 : f32 = u_xlat18.x;
        let x_1858 : f32 = u_xlat66;
        let x_1861 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1857 * x_1858) + x_1861);
        let x_1865 : vec4<f32> = u_xlat13;
        let x_1866 : vec2<f32> = vec2<f32>(x_1865.z, x_1865.w);
        let x_1868 : f32 = vs_INTERP8.z;
        txVec18 = vec3<f32>(x_1866.x, x_1866.y, x_1868);
        let x_1875 : vec3<f32> = txVec18;
        let x_1877 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1875.xy, x_1875.z);
        u_xlat66 = x_1877;
        let x_1879 : f32 = u_xlat18.y;
        let x_1880 : f32 = u_xlat66;
        let x_1883 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1879 * x_1880) + x_1883);
        let x_1887 : vec4<f32> = u_xlat14;
        let x_1888 : vec2<f32> = vec2<f32>(x_1887.x, x_1887.y);
        let x_1890 : f32 = vs_INTERP8.z;
        txVec19 = vec3<f32>(x_1888.x, x_1888.y, x_1890);
        let x_1897 : vec3<f32> = txVec19;
        let x_1899 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1897.xy, x_1897.z);
        u_xlat66 = x_1899;
        let x_1901 : f32 = u_xlat18.z;
        let x_1902 : f32 = u_xlat66;
        let x_1905 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1901 * x_1902) + x_1905);
        let x_1909 : vec4<f32> = u_xlat15;
        let x_1910 : vec2<f32> = vec2<f32>(x_1909.z, x_1909.w);
        let x_1912 : f32 = vs_INTERP8.z;
        txVec20 = vec3<f32>(x_1910.x, x_1910.y, x_1912);
        let x_1919 : vec3<f32> = txVec20;
        let x_1921 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1919.xy, x_1919.z);
        u_xlat66 = x_1921;
        let x_1923 : f32 = u_xlat18.w;
        let x_1924 : f32 = u_xlat66;
        let x_1927 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1923 * x_1924) + x_1927);
        let x_1931 : vec4<f32> = u_xlat16;
        let x_1932 : vec2<f32> = vec2<f32>(x_1931.x, x_1931.y);
        let x_1934 : f32 = vs_INTERP8.z;
        txVec21 = vec3<f32>(x_1932.x, x_1932.y, x_1934);
        let x_1941 : vec3<f32> = txVec21;
        let x_1943 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1941.xy, x_1941.z);
        u_xlat66 = x_1943;
        let x_1945 : f32 = u_xlat19.x;
        let x_1946 : f32 = u_xlat66;
        let x_1949 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1945 * x_1946) + x_1949);
        let x_1953 : vec4<f32> = u_xlat16;
        let x_1954 : vec2<f32> = vec2<f32>(x_1953.z, x_1953.w);
        let x_1956 : f32 = vs_INTERP8.z;
        txVec22 = vec3<f32>(x_1954.x, x_1954.y, x_1956);
        let x_1963 : vec3<f32> = txVec22;
        let x_1965 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1963.xy, x_1963.z);
        u_xlat66 = x_1965;
        let x_1967 : f32 = u_xlat19.y;
        let x_1968 : f32 = u_xlat66;
        let x_1971 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1967 * x_1968) + x_1971);
        let x_1975 : vec3<f32> = u_xlat28;
        let x_1976 : vec2<f32> = vec2<f32>(x_1975.x, x_1975.y);
        let x_1978 : f32 = vs_INTERP8.z;
        txVec23 = vec3<f32>(x_1976.x, x_1976.y, x_1978);
        let x_1985 : vec3<f32> = txVec23;
        let x_1987 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1985.xy, x_1985.z);
        u_xlat66 = x_1987;
        let x_1989 : f32 = u_xlat19.z;
        let x_1990 : f32 = u_xlat66;
        let x_1993 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1989 * x_1990) + x_1993);
        let x_1997 : vec2<f32> = u_xlat54;
        let x_1999 : f32 = vs_INTERP8.z;
        txVec24 = vec3<f32>(x_1997.x, x_1997.y, x_1999);
        let x_2006 : vec3<f32> = txVec24;
        let x_2008 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2006.xy, x_2006.z);
        u_xlat66 = x_2008;
        let x_2010 : f32 = u_xlat19.w;
        let x_2011 : f32 = u_xlat66;
        let x_2014 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_2010 * x_2011) + x_2014);
        let x_2018 : vec4<f32> = u_xlat11;
        let x_2019 : vec2<f32> = vec2<f32>(x_2018.x, x_2018.y);
        let x_2021 : f32 = vs_INTERP8.z;
        txVec25 = vec3<f32>(x_2019.x, x_2019.y, x_2021);
        let x_2028 : vec3<f32> = txVec25;
        let x_2030 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2028.xy, x_2028.z);
        u_xlat66 = x_2030;
        let x_2032 : f32 = u_xlat7.x;
        let x_2033 : f32 = u_xlat66;
        let x_2036 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_2032 * x_2033) + x_2036);
        let x_2040 : vec4<f32> = u_xlat11;
        let x_2041 : vec2<f32> = vec2<f32>(x_2040.z, x_2040.w);
        let x_2043 : f32 = vs_INTERP8.z;
        txVec26 = vec3<f32>(x_2041.x, x_2041.y, x_2043);
        let x_2050 : vec3<f32> = txVec26;
        let x_2052 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2050.xy, x_2050.z);
        u_xlat66 = x_2052;
        let x_2054 : f32 = u_xlat7.y;
        let x_2055 : f32 = u_xlat66;
        let x_2058 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_2054 * x_2055) + x_2058);
        let x_2062 : vec2<f32> = u_xlat49;
        let x_2064 : f32 = vs_INTERP8.z;
        txVec27 = vec3<f32>(x_2062.x, x_2062.y, x_2064);
        let x_2071 : vec3<f32> = txVec27;
        let x_2073 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2071.xy, x_2071.z);
        u_xlat66 = x_2073;
        let x_2075 : f32 = u_xlat7.z;
        let x_2076 : f32 = u_xlat66;
        let x_2079 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_2075 * x_2076) + x_2079);
        let x_2083 : vec4<f32> = u_xlat6;
        let x_2084 : vec2<f32> = vec2<f32>(x_2083.x, x_2083.y);
        let x_2086 : f32 = vs_INTERP8.z;
        txVec28 = vec3<f32>(x_2084.x, x_2084.y, x_2086);
        let x_2093 : vec3<f32> = txVec28;
        let x_2095 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2093.xy, x_2093.z);
        u_xlat6.x = x_2095;
        let x_2098 : f32 = u_xlat7.w;
        let x_2100 : f32 = u_xlat6.x;
        let x_2103 : f32 = u_xlat46.x;
        u_xlat65 = ((x_2098 * x_2100) + x_2103);
      }
    }
  } else {
    let x_2107 : vec4<f32> = vs_INTERP8;
    let x_2108 : vec2<f32> = vec2<f32>(x_2107.x, x_2107.y);
    let x_2110 : f32 = vs_INTERP8.z;
    txVec29 = vec3<f32>(x_2108.x, x_2108.y, x_2110);
    let x_2117 : vec3<f32> = txVec29;
    let x_2119 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2117.xy, x_2117.z);
    u_xlat65 = x_2119;
  }
  let x_2121 : f32 = x_859.x_MainLightShadowParams.x;
  u_xlat6.x = (-(x_2121) + 1.0f);
  let x_2125 : f32 = u_xlat65;
  let x_2127 : f32 = x_859.x_MainLightShadowParams.x;
  let x_2130 : f32 = u_xlat6.x;
  u_xlat65 = ((x_2125 * x_2127) + x_2130);
  let x_2133 : f32 = vs_INTERP8.z;
  u_xlatb6 = (0.0f >= x_2133);
  let x_2137 : f32 = vs_INTERP8.z;
  u_xlatb26 = (x_2137 >= 1.0f);
  let x_2139 : bool = u_xlatb26;
  let x_2140 : bool = u_xlatb6;
  u_xlatb6 = (x_2139 | x_2140);
  let x_2142 : bool = u_xlatb6;
  let x_2143 : f32 = u_xlat65;
  u_xlat65 = select(x_2143, 1.0f, x_2142);
  let x_2145 : vec3<f32> = vs_INTERP0;
  let x_2147 : vec3<f32> = x_146.x_WorldSpaceCameraPos;
  let x_2149 : vec3<f32> = (x_2145 + -(x_2147));
  let x_2150 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2149.x, x_2149.y, x_2149.z, x_2150.w);
  let x_2152 : vec4<f32> = u_xlat6;
  let x_2154 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_2152.x, x_2152.y, x_2152.z), vec3<f32>(x_2154.x, x_2154.y, x_2154.z));
  let x_2159 : f32 = u_xlat6.x;
  let x_2161 : f32 = x_859.x_MainLightShadowParams.z;
  let x_2164 : f32 = x_859.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_2159 * x_2161) + x_2164);
  let x_2168 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_2168, 0.0f, 1.0f);
  let x_2171 : f32 = u_xlat65;
  u_xlat26 = (-(x_2171) + 1.0f);
  let x_2175 : f32 = u_xlat6.x;
  let x_2176 : f32 = u_xlat26;
  let x_2178 : f32 = u_xlat65;
  u_xlat65 = ((x_2175 * x_2176) + x_2178);
  let x_2186 : f32 = x_2184.x_MainLightCookieTextureFormat;
  u_xlatb6 = !((x_2186 == -1.0f));
  let x_2188 : bool = u_xlatb6;
  if (x_2188) {
    let x_2191 : vec3<f32> = vs_INTERP0;
    let x_2194 : vec4<f32> = x_2184.x_MainLightWorldToLight[1i];
    let x_2196 : vec2<f32> = (vec2<f32>(x_2191.y, x_2191.y) * vec2<f32>(x_2194.x, x_2194.y));
    let x_2197 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2196.x, x_2196.y, x_2197.z, x_2197.w);
    let x_2200 : vec4<f32> = x_2184.x_MainLightWorldToLight[0i];
    let x_2202 : vec3<f32> = vs_INTERP0;
    let x_2205 : vec4<f32> = u_xlat6;
    let x_2207 : vec2<f32> = ((vec2<f32>(x_2200.x, x_2200.y) * vec2<f32>(x_2202.x, x_2202.x)) + vec2<f32>(x_2205.x, x_2205.y));
    let x_2208 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2207.x, x_2207.y, x_2208.z, x_2208.w);
    let x_2211 : vec4<f32> = x_2184.x_MainLightWorldToLight[2i];
    let x_2213 : vec3<f32> = vs_INTERP0;
    let x_2216 : vec4<f32> = u_xlat6;
    let x_2218 : vec2<f32> = ((vec2<f32>(x_2211.x, x_2211.y) * vec2<f32>(x_2213.z, x_2213.z)) + vec2<f32>(x_2216.x, x_2216.y));
    let x_2219 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2218.x, x_2218.y, x_2219.z, x_2219.w);
    let x_2221 : vec4<f32> = u_xlat6;
    let x_2224 : vec4<f32> = x_2184.x_MainLightWorldToLight[3i];
    let x_2226 : vec2<f32> = (vec2<f32>(x_2221.x, x_2221.y) + vec2<f32>(x_2224.x, x_2224.y));
    let x_2227 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2226.x, x_2226.y, x_2227.z, x_2227.w);
    let x_2229 : vec4<f32> = u_xlat6;
    let x_2232 : vec2<f32> = ((vec2<f32>(x_2229.x, x_2229.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2233 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2232.x, x_2232.y, x_2233.z, x_2233.w);
    let x_2240 : vec4<f32> = u_xlat6;
    let x_2243 : f32 = x_146.x_GlobalMipBias.x;
    let x_2244 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2240.x, x_2240.y), x_2243);
    u_xlat6 = x_2244;
    let x_2247 : f32 = x_2184.x_MainLightCookieTextureFormat;
    let x_2249 : f32 = x_2184.x_MainLightCookieTextureFormat;
    let x_2251 : f32 = x_2184.x_MainLightCookieTextureFormat;
    let x_2253 : f32 = x_2184.x_MainLightCookieTextureFormat;
    let x_2254 : vec4<f32> = vec4<f32>(x_2247, x_2249, x_2251, x_2253);
    let x_2262 : vec4<bool> = (vec4<f32>(x_2254.x, x_2254.y, x_2254.z, x_2254.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_2262.x, x_2262.y);
    let x_2265 : bool = u_xlatb7.y;
    if (x_2265) {
      let x_2270 : f32 = u_xlat6.w;
      x_2266 = x_2270;
    } else {
      let x_2273 : f32 = u_xlat6.x;
      x_2266 = x_2273;
    }
    let x_2274 : f32 = x_2266;
    u_xlat66 = x_2274;
    let x_2276 : bool = u_xlatb7.x;
    if (x_2276) {
      let x_2280 : vec4<f32> = u_xlat6;
      x_2277 = vec3<f32>(x_2280.x, x_2280.y, x_2280.z);
    } else {
      let x_2283 : f32 = u_xlat66;
      x_2277 = vec3<f32>(x_2283, x_2283, x_2283);
    }
    let x_2285 : vec3<f32> = x_2277;
    let x_2286 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2285.x, x_2285.y, x_2285.z, x_2286.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_2292 : vec4<f32> = u_xlat6;
  let x_2295 : vec4<f32> = x_146.x_MainLightColor;
  let x_2297 : vec3<f32> = (vec3<f32>(x_2292.x, x_2292.y, x_2292.z) * vec3<f32>(x_2295.x, x_2295.y, x_2295.z));
  let x_2298 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2297.x, x_2297.y, x_2297.z, x_2298.w);
  let x_2300 : f32 = u_xlat45;
  let x_2302 : vec4<f32> = u_xlat6;
  let x_2304 : vec3<f32> = (vec3<f32>(x_2300, x_2300, x_2300) * vec3<f32>(x_2302.x, x_2302.y, x_2302.z));
  let x_2305 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2304.x, x_2304.y, x_2304.z, x_2305.w);
  let x_2307 : vec4<f32> = u_xlat1;
  let x_2310 : vec3<f32> = u_xlat20;
  u_xlat66 = dot(-(vec3<f32>(x_2307.x, x_2307.y, x_2307.z)), x_2310);
  let x_2312 : f32 = u_xlat66;
  let x_2313 : f32 = u_xlat66;
  u_xlat66 = (x_2312 + x_2313);
  let x_2315 : vec3<f32> = u_xlat20;
  let x_2316 : f32 = u_xlat66;
  let x_2320 : vec4<f32> = u_xlat1;
  let x_2323 : vec3<f32> = ((x_2315 * -(vec3<f32>(x_2316, x_2316, x_2316))) + -(vec3<f32>(x_2320.x, x_2320.y, x_2320.z)));
  let x_2324 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2323.x, x_2323.y, x_2323.z, x_2324.w);
  let x_2326 : vec3<f32> = u_xlat20;
  let x_2327 : vec4<f32> = u_xlat1;
  u_xlat66 = dot(x_2326, vec3<f32>(x_2327.x, x_2327.y, x_2327.z));
  let x_2330 : f32 = u_xlat66;
  u_xlat66 = clamp(x_2330, 0.0f, 1.0f);
  let x_2332 : f32 = u_xlat66;
  u_xlat66 = (-(x_2332) + 1.0f);
  let x_2335 : f32 = u_xlat66;
  let x_2336 : f32 = u_xlat66;
  u_xlat66 = (x_2335 * x_2336);
  let x_2338 : f32 = u_xlat66;
  let x_2339 : f32 = u_xlat66;
  u_xlat66 = (x_2338 * x_2339);
  let x_2342 : f32 = u_xlat61;
  u_xlat67 = ((-(x_2342) * 0.699999988f) + 1.700000048f);
  let x_2348 : f32 = u_xlat61;
  let x_2349 : f32 = u_xlat67;
  u_xlat61 = (x_2348 * x_2349);
  let x_2351 : f32 = u_xlat61;
  u_xlat61 = (x_2351 * 6.0f);
  let x_2362 : vec4<f32> = u_xlat7;
  let x_2364 : f32 = u_xlat61;
  let x_2365 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2362.x, x_2362.y, x_2362.z), x_2364);
  u_xlat7 = x_2365;
  let x_2367 : f32 = u_xlat7.w;
  u_xlat61 = (x_2367 + -1.0f);
  let x_2370 : f32 = x_59.unity_SpecCube0_HDR.w;
  let x_2371 : f32 = u_xlat61;
  u_xlat61 = ((x_2370 * x_2371) + 1.0f);
  let x_2374 : f32 = u_xlat61;
  u_xlat61 = max(x_2374, 0.0f);
  let x_2376 : f32 = u_xlat61;
  u_xlat61 = log2(x_2376);
  let x_2378 : f32 = u_xlat61;
  let x_2380 : f32 = x_59.unity_SpecCube0_HDR.y;
  u_xlat61 = (x_2378 * x_2380);
  let x_2382 : f32 = u_xlat61;
  u_xlat61 = exp2(x_2382);
  let x_2384 : f32 = u_xlat61;
  let x_2386 : f32 = x_59.unity_SpecCube0_HDR.x;
  u_xlat61 = (x_2384 * x_2386);
  let x_2388 : vec4<f32> = u_xlat7;
  let x_2390 : f32 = u_xlat61;
  let x_2392 : vec3<f32> = (vec3<f32>(x_2388.x, x_2388.y, x_2388.z) * vec3<f32>(x_2390, x_2390, x_2390));
  let x_2393 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2392.x, x_2392.y, x_2392.z, x_2393.w);
  let x_2395 : f32 = u_xlat63;
  let x_2397 : f32 = u_xlat63;
  let x_2401 : vec2<f32> = ((vec2<f32>(x_2395, x_2395) * vec2<f32>(x_2397, x_2397)) + vec2<f32>(-1.0f, 1.0f));
  let x_2402 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2401.x, x_2401.y, x_2402.z, x_2402.w);
  let x_2405 : f32 = u_xlat8.y;
  u_xlat61 = (1.0f / x_2405);
  let x_2407 : vec3<f32> = u_xlat2;
  let x_2409 : vec4<f32> = u_xlat0;
  u_xlat28 = (-(x_2407) + vec3<f32>(x_2409.x, x_2409.x, x_2409.x));
  let x_2412 : f32 = u_xlat66;
  let x_2414 : vec3<f32> = u_xlat28;
  let x_2416 : vec3<f32> = u_xlat2;
  u_xlat28 = ((vec3<f32>(x_2412, x_2412, x_2412) * x_2414) + x_2416);
  let x_2418 : f32 = u_xlat61;
  let x_2420 : vec3<f32> = u_xlat28;
  u_xlat28 = (vec3<f32>(x_2418, x_2418, x_2418) * x_2420);
  let x_2422 : vec4<f32> = u_xlat7;
  let x_2424 : vec3<f32> = u_xlat28;
  let x_2425 : vec3<f32> = (vec3<f32>(x_2422.x, x_2422.y, x_2422.z) * x_2424);
  let x_2426 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2425.x, x_2425.y, x_2425.z, x_2426.w);
  let x_2428 : vec4<f32> = u_xlat4;
  let x_2430 : vec3<f32> = u_xlat3;
  let x_2432 : vec4<f32> = u_xlat7;
  let x_2434 : vec3<f32> = ((vec3<f32>(x_2428.x, x_2428.y, x_2428.z) * x_2430) + vec3<f32>(x_2432.x, x_2432.y, x_2432.z));
  let x_2435 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2434.x, x_2434.y, x_2434.z, x_2435.w);
  let x_2437 : f32 = u_xlat65;
  let x_2439 : f32 = x_59.unity_LightData.z;
  u_xlat0.x = (x_2437 * x_2439);
  let x_2442 : vec3<f32> = u_xlat20;
  let x_2444 : vec4<f32> = x_146.x_MainLightPosition;
  u_xlat61 = dot(x_2442, vec3<f32>(x_2444.x, x_2444.y, x_2444.z));
  let x_2447 : f32 = u_xlat61;
  u_xlat61 = clamp(x_2447, 0.0f, 1.0f);
  let x_2450 : f32 = u_xlat0.x;
  let x_2451 : f32 = u_xlat61;
  u_xlat0.x = (x_2450 * x_2451);
  let x_2454 : vec4<f32> = u_xlat0;
  let x_2456 : vec4<f32> = u_xlat6;
  let x_2458 : vec3<f32> = (vec3<f32>(x_2454.x, x_2454.x, x_2454.x) * vec3<f32>(x_2456.x, x_2456.y, x_2456.z));
  let x_2459 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2458.x, x_2458.y, x_2458.z, x_2459.w);
  let x_2461 : vec4<f32> = u_xlat1;
  let x_2464 : vec4<f32> = x_146.x_MainLightPosition;
  let x_2466 : vec3<f32> = (vec3<f32>(x_2461.x, x_2461.y, x_2461.z) + vec3<f32>(x_2464.x, x_2464.y, x_2464.z));
  let x_2467 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2466.x, x_2466.y, x_2466.z, x_2467.w);
  let x_2469 : vec4<f32> = u_xlat7;
  let x_2471 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(vec3<f32>(x_2469.x, x_2469.y, x_2469.z), vec3<f32>(x_2471.x, x_2471.y, x_2471.z));
  let x_2476 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2476, 1.17549435e-37f);
  let x_2480 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_2480);
  let x_2483 : vec4<f32> = u_xlat0;
  let x_2485 : vec4<f32> = u_xlat7;
  let x_2487 : vec3<f32> = (vec3<f32>(x_2483.x, x_2483.x, x_2483.x) * vec3<f32>(x_2485.x, x_2485.y, x_2485.z));
  let x_2488 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2487.x, x_2487.y, x_2487.z, x_2488.w);
  let x_2490 : vec3<f32> = u_xlat20;
  let x_2491 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_2490, vec3<f32>(x_2491.x, x_2491.y, x_2491.z));
  let x_2496 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_2496, 0.0f, 1.0f);
  let x_2500 : vec4<f32> = x_146.x_MainLightPosition;
  let x_2502 : vec4<f32> = u_xlat7;
  u_xlat61 = dot(vec3<f32>(x_2500.x, x_2500.y, x_2500.z), vec3<f32>(x_2502.x, x_2502.y, x_2502.z));
  let x_2505 : f32 = u_xlat61;
  u_xlat61 = clamp(x_2505, 0.0f, 1.0f);
  let x_2508 : f32 = u_xlat0.x;
  let x_2510 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2508 * x_2510);
  let x_2514 : f32 = u_xlat0.x;
  let x_2516 : f32 = u_xlat8.x;
  u_xlat0.x = ((x_2514 * x_2516) + 1.000010014f);
  let x_2521 : f32 = u_xlat61;
  let x_2522 : f32 = u_xlat61;
  u_xlat61 = (x_2521 * x_2522);
  let x_2525 : f32 = u_xlat0.x;
  let x_2527 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2525 * x_2527);
  let x_2530 : f32 = u_xlat61;
  u_xlat61 = max(x_2530, 0.100000001f);
  let x_2533 : f32 = u_xlat0.x;
  let x_2534 : f32 = u_xlat61;
  u_xlat0.x = (x_2533 * x_2534);
  let x_2537 : f32 = u_xlat25;
  let x_2539 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2537 * x_2539);
  let x_2542 : f32 = u_xlat64;
  let x_2544 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2542 / x_2544);
  let x_2547 : vec3<f32> = u_xlat2;
  let x_2548 : vec4<f32> = u_xlat0;
  let x_2551 : vec3<f32> = u_xlat3;
  let x_2552 : vec3<f32> = ((x_2547 * vec3<f32>(x_2548.x, x_2548.x, x_2548.x)) + x_2551);
  let x_2553 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2552.x, x_2552.y, x_2552.z, x_2553.w);
  let x_2555 : vec4<f32> = u_xlat6;
  let x_2557 : vec4<f32> = u_xlat7;
  let x_2559 : vec3<f32> = (vec3<f32>(x_2555.x, x_2555.y, x_2555.z) * vec3<f32>(x_2557.x, x_2557.y, x_2557.z));
  let x_2560 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2559.x, x_2559.y, x_2559.z, x_2560.w);
  let x_2563 : f32 = x_146.x_AdditionalLightsCount.x;
  let x_2565 : f32 = x_59.unity_LightData.y;
  u_xlat0.x = min(x_2563, x_2565);
  let x_2571 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_2571));
  let x_2575 : f32 = x_2184.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2577 : f32 = x_2184.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2579 : f32 = x_2184.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2581 : f32 = x_2184.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2582 : vec4<f32> = vec4<f32>(x_2575, x_2577, x_2579, x_2581);
  let x_2588 : vec4<bool> = (vec4<f32>(x_2582.x, x_2582.y, x_2582.z, x_2582.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2588.x, x_2588.y);
  u_xlat28.x = 0.0f;
  u_xlat28.y = 0.0f;
  u_xlat28.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2599 : u32 = u_xlatu_loop_1;
    let x_2600 : u32 = u_xlatu0;
    if ((x_2599 < x_2600)) {
    } else {
      break;
    }
    let x_2603 : u32 = u_xlatu_loop_1;
    u_xlatu63 = (x_2603 >> 2u);
    let x_2607 : u32 = u_xlatu_loop_1;
    u_xlati65 = bitcast<i32>((x_2607 & 3u));
    let x_2610 : u32 = u_xlatu63;
    let x_2613 : vec4<f32> = x_59.unity_LightIndices[bitcast<i32>(x_2610)];
    let x_2623 : i32 = u_xlati65;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2628 : vec4<u32> = indexable[x_2623];
    u_xlat63 = dot(x_2613, bitcast<vec4<f32>>(x_2628));
    let x_2631 : f32 = u_xlat63;
    u_xlatu63 = bitcast<u32>(i32(x_2631));
    let x_2634 : vec3<f32> = vs_INTERP0;
    let x_2646 : u32 = u_xlatu63;
    let x_2649 : vec4<f32> = x_2645.x_AdditionalLightsPosition[bitcast<i32>(x_2646)];
    let x_2652 : u32 = u_xlatu63;
    let x_2655 : vec4<f32> = x_2645.x_AdditionalLightsPosition[bitcast<i32>(x_2652)];
    let x_2657 : vec3<f32> = ((-(x_2634) * vec3<f32>(x_2649.w, x_2649.w, x_2649.w)) + vec3<f32>(x_2655.x, x_2655.y, x_2655.z));
    let x_2658 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2657.x, x_2657.y, x_2657.z, x_2658.w);
    let x_2660 : vec4<f32> = u_xlat9;
    let x_2662 : vec4<f32> = u_xlat9;
    u_xlat65 = dot(vec3<f32>(x_2660.x, x_2660.y, x_2660.z), vec3<f32>(x_2662.x, x_2662.y, x_2662.z));
    let x_2665 : f32 = u_xlat65;
    u_xlat65 = max(x_2665, 6.10351562e-05f);
    let x_2668 : f32 = u_xlat65;
    u_xlat66 = inverseSqrt(x_2668);
    let x_2670 : f32 = u_xlat66;
    let x_2672 : vec4<f32> = u_xlat9;
    let x_2674 : vec3<f32> = (vec3<f32>(x_2670, x_2670, x_2670) * vec3<f32>(x_2672.x, x_2672.y, x_2672.z));
    let x_2675 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2674.x, x_2674.y, x_2674.z, x_2675.w);
    let x_2678 : f32 = u_xlat65;
    u_xlat47.x = (1.0f / x_2678);
    let x_2681 : f32 = u_xlat65;
    let x_2682 : u32 = u_xlatu63;
    let x_2685 : f32 = x_2645.x_AdditionalLightsAttenuation[bitcast<i32>(x_2682)].x;
    u_xlat65 = (x_2681 * x_2685);
    let x_2687 : f32 = u_xlat65;
    let x_2689 : f32 = u_xlat65;
    u_xlat65 = ((-(x_2687) * x_2689) + 1.0f);
    let x_2692 : f32 = u_xlat65;
    u_xlat65 = max(x_2692, 0.0f);
    let x_2694 : f32 = u_xlat65;
    let x_2695 : f32 = u_xlat65;
    u_xlat65 = (x_2694 * x_2695);
    let x_2697 : f32 = u_xlat65;
    let x_2699 : f32 = u_xlat47.x;
    u_xlat65 = (x_2697 * x_2699);
    let x_2701 : u32 = u_xlatu63;
    let x_2704 : vec4<f32> = x_2645.x_AdditionalLightsSpotDir[bitcast<i32>(x_2701)];
    let x_2706 : vec4<f32> = u_xlat10;
    u_xlat47.x = dot(vec3<f32>(x_2704.x, x_2704.y, x_2704.z), vec3<f32>(x_2706.x, x_2706.y, x_2706.z));
    let x_2711 : f32 = u_xlat47.x;
    let x_2712 : u32 = u_xlatu63;
    let x_2715 : f32 = x_2645.x_AdditionalLightsAttenuation[bitcast<i32>(x_2712)].z;
    let x_2717 : u32 = u_xlatu63;
    let x_2720 : f32 = x_2645.x_AdditionalLightsAttenuation[bitcast<i32>(x_2717)].w;
    u_xlat47.x = ((x_2711 * x_2715) + x_2720);
    let x_2724 : f32 = u_xlat47.x;
    u_xlat47.x = clamp(x_2724, 0.0f, 1.0f);
    let x_2728 : f32 = u_xlat47.x;
    let x_2730 : f32 = u_xlat47.x;
    u_xlat47.x = (x_2728 * x_2730);
    let x_2733 : f32 = u_xlat65;
    let x_2735 : f32 = u_xlat47.x;
    u_xlat65 = (x_2733 * x_2735);
    let x_2738 : u32 = u_xlatu63;
    u_xlatu47 = (x_2738 >> 5u);
    let x_2741 : u32 = u_xlatu63;
    u_xlati67 = (1i << bitcast<u32>((bitcast<i32>(x_2741) & 31i)));
    let x_2747 : i32 = u_xlati67;
    let x_2749 : u32 = u_xlatu47;
    let x_2752 : f32 = x_2184.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2749)].el;
    u_xlati47 = bitcast<i32>((bitcast<u32>(x_2747) & bitcast<u32>(x_2752)));
    let x_2756 : i32 = u_xlati47;
    if ((x_2756 != 0i)) {
      let x_2766 : u32 = u_xlatu63;
      let x_2769 : f32 = x_2765.x_AdditionalLightsLightTypes[bitcast<i32>(x_2766)].el;
      u_xlati47 = i32(x_2769);
      let x_2771 : i32 = u_xlati47;
      u_xlati67 = select(1i, 0i, (x_2771 != 0i));
      let x_2775 : u32 = u_xlatu63;
      u_xlati69 = (bitcast<i32>(x_2775) << bitcast<u32>(2i));
      let x_2778 : i32 = u_xlati67;
      if ((x_2778 != 0i)) {
        let x_2782 : vec3<f32> = vs_INTERP0;
        let x_2784 : i32 = u_xlati69;
        let x_2787 : i32 = u_xlati69;
        let x_2791 : vec4<f32> = x_2765.x_AdditionalLightsWorldToLights[((x_2784 + 1i) / 4i)][((x_2787 + 1i) % 4i)];
        let x_2793 : vec3<f32> = (vec3<f32>(x_2782.y, x_2782.y, x_2782.y) * vec3<f32>(x_2791.x, x_2791.y, x_2791.w));
        let x_2794 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2793.x, x_2793.y, x_2793.z, x_2794.w);
        let x_2796 : i32 = u_xlati69;
        let x_2798 : i32 = u_xlati69;
        let x_2801 : vec4<f32> = x_2765.x_AdditionalLightsWorldToLights[(x_2796 / 4i)][(x_2798 % 4i)];
        let x_2803 : vec3<f32> = vs_INTERP0;
        let x_2806 : vec4<f32> = u_xlat11;
        let x_2808 : vec3<f32> = ((vec3<f32>(x_2801.x, x_2801.y, x_2801.w) * vec3<f32>(x_2803.x, x_2803.x, x_2803.x)) + vec3<f32>(x_2806.x, x_2806.y, x_2806.z));
        let x_2809 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2808.x, x_2808.y, x_2808.z, x_2809.w);
        let x_2811 : i32 = u_xlati69;
        let x_2814 : i32 = u_xlati69;
        let x_2818 : vec4<f32> = x_2765.x_AdditionalLightsWorldToLights[((x_2811 + 2i) / 4i)][((x_2814 + 2i) % 4i)];
        let x_2820 : vec3<f32> = vs_INTERP0;
        let x_2823 : vec4<f32> = u_xlat11;
        let x_2825 : vec3<f32> = ((vec3<f32>(x_2818.x, x_2818.y, x_2818.w) * vec3<f32>(x_2820.z, x_2820.z, x_2820.z)) + vec3<f32>(x_2823.x, x_2823.y, x_2823.z));
        let x_2826 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2825.x, x_2825.y, x_2825.z, x_2826.w);
        let x_2828 : vec4<f32> = u_xlat11;
        let x_2830 : i32 = u_xlati69;
        let x_2833 : i32 = u_xlati69;
        let x_2837 : vec4<f32> = x_2765.x_AdditionalLightsWorldToLights[((x_2830 + 3i) / 4i)][((x_2833 + 3i) % 4i)];
        let x_2839 : vec3<f32> = (vec3<f32>(x_2828.x, x_2828.y, x_2828.z) + vec3<f32>(x_2837.x, x_2837.y, x_2837.w));
        let x_2840 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2839.x, x_2839.y, x_2839.z, x_2840.w);
        let x_2842 : vec4<f32> = u_xlat11;
        let x_2844 : vec4<f32> = u_xlat11;
        let x_2846 : vec2<f32> = (vec2<f32>(x_2842.x, x_2842.y) / vec2<f32>(x_2844.z, x_2844.z));
        let x_2847 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2846.x, x_2846.y, x_2847.z, x_2847.w);
        let x_2849 : vec4<f32> = u_xlat11;
        let x_2852 : vec2<f32> = ((vec2<f32>(x_2849.x, x_2849.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2853 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2852.x, x_2852.y, x_2853.z, x_2853.w);
        let x_2855 : vec4<f32> = u_xlat11;
        let x_2859 : vec2<f32> = clamp(vec2<f32>(x_2855.x, x_2855.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2860 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2859.x, x_2859.y, x_2860.z, x_2860.w);
        let x_2862 : u32 = u_xlatu63;
        let x_2865 : vec4<f32> = x_2765.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2862)];
        let x_2867 : vec4<f32> = u_xlat11;
        let x_2870 : u32 = u_xlatu63;
        let x_2873 : vec4<f32> = x_2765.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2870)];
        let x_2875 : vec2<f32> = ((vec2<f32>(x_2865.x, x_2865.y) * vec2<f32>(x_2867.x, x_2867.y)) + vec2<f32>(x_2873.z, x_2873.w));
        let x_2876 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2875.x, x_2875.y, x_2876.z, x_2876.w);
      } else {
        let x_2880 : i32 = u_xlati47;
        u_xlatb47 = (x_2880 == 1i);
        let x_2882 : bool = u_xlatb47;
        u_xlati47 = select(0i, 1i, x_2882);
        let x_2884 : i32 = u_xlati47;
        if ((x_2884 != 0i)) {
          let x_2888 : vec3<f32> = vs_INTERP0;
          let x_2890 : i32 = u_xlati69;
          let x_2893 : i32 = u_xlati69;
          let x_2897 : vec4<f32> = x_2765.x_AdditionalLightsWorldToLights[((x_2890 + 1i) / 4i)][((x_2893 + 1i) % 4i)];
          u_xlat47 = (vec2<f32>(x_2888.y, x_2888.y) * vec2<f32>(x_2897.x, x_2897.y));
          let x_2900 : i32 = u_xlati69;
          let x_2902 : i32 = u_xlati69;
          let x_2905 : vec4<f32> = x_2765.x_AdditionalLightsWorldToLights[(x_2900 / 4i)][(x_2902 % 4i)];
          let x_2907 : vec3<f32> = vs_INTERP0;
          let x_2910 : vec2<f32> = u_xlat47;
          u_xlat47 = ((vec2<f32>(x_2905.x, x_2905.y) * vec2<f32>(x_2907.x, x_2907.x)) + x_2910);
          let x_2912 : i32 = u_xlati69;
          let x_2915 : i32 = u_xlati69;
          let x_2919 : vec4<f32> = x_2765.x_AdditionalLightsWorldToLights[((x_2912 + 2i) / 4i)][((x_2915 + 2i) % 4i)];
          let x_2921 : vec3<f32> = vs_INTERP0;
          let x_2924 : vec2<f32> = u_xlat47;
          u_xlat47 = ((vec2<f32>(x_2919.x, x_2919.y) * vec2<f32>(x_2921.z, x_2921.z)) + x_2924);
          let x_2926 : vec2<f32> = u_xlat47;
          let x_2927 : i32 = u_xlati69;
          let x_2930 : i32 = u_xlati69;
          let x_2934 : vec4<f32> = x_2765.x_AdditionalLightsWorldToLights[((x_2927 + 3i) / 4i)][((x_2930 + 3i) % 4i)];
          u_xlat47 = (x_2926 + vec2<f32>(x_2934.x, x_2934.y));
          let x_2937 : vec2<f32> = u_xlat47;
          u_xlat47 = ((x_2937 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2940 : vec2<f32> = u_xlat47;
          u_xlat47 = fract(x_2940);
          let x_2942 : u32 = u_xlatu63;
          let x_2945 : vec4<f32> = x_2765.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2942)];
          let x_2947 : vec2<f32> = u_xlat47;
          let x_2949 : u32 = u_xlatu63;
          let x_2952 : vec4<f32> = x_2765.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2949)];
          let x_2954 : vec2<f32> = ((vec2<f32>(x_2945.x, x_2945.y) * x_2947) + vec2<f32>(x_2952.z, x_2952.w));
          let x_2955 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2954.x, x_2954.y, x_2955.z, x_2955.w);
        } else {
          let x_2958 : vec3<f32> = vs_INTERP0;
          let x_2960 : i32 = u_xlati69;
          let x_2963 : i32 = u_xlati69;
          let x_2967 : vec4<f32> = x_2765.x_AdditionalLightsWorldToLights[((x_2960 + 1i) / 4i)][((x_2963 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2958.y, x_2958.y, x_2958.y, x_2958.y) * x_2967);
          let x_2969 : i32 = u_xlati69;
          let x_2971 : i32 = u_xlati69;
          let x_2974 : vec4<f32> = x_2765.x_AdditionalLightsWorldToLights[(x_2969 / 4i)][(x_2971 % 4i)];
          let x_2975 : vec3<f32> = vs_INTERP0;
          let x_2978 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2974 * vec4<f32>(x_2975.x, x_2975.x, x_2975.x, x_2975.x)) + x_2978);
          let x_2980 : i32 = u_xlati69;
          let x_2983 : i32 = u_xlati69;
          let x_2987 : vec4<f32> = x_2765.x_AdditionalLightsWorldToLights[((x_2980 + 2i) / 4i)][((x_2983 + 2i) % 4i)];
          let x_2988 : vec3<f32> = vs_INTERP0;
          let x_2991 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2987 * vec4<f32>(x_2988.z, x_2988.z, x_2988.z, x_2988.z)) + x_2991);
          let x_2993 : vec4<f32> = u_xlat12;
          let x_2994 : i32 = u_xlati69;
          let x_2997 : i32 = u_xlati69;
          let x_3001 : vec4<f32> = x_2765.x_AdditionalLightsWorldToLights[((x_2994 + 3i) / 4i)][((x_2997 + 3i) % 4i)];
          u_xlat12 = (x_2993 + x_3001);
          let x_3003 : vec4<f32> = u_xlat12;
          let x_3005 : vec4<f32> = u_xlat12;
          let x_3007 : vec3<f32> = (vec3<f32>(x_3003.x, x_3003.y, x_3003.z) / vec3<f32>(x_3005.w, x_3005.w, x_3005.w));
          let x_3008 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3007.x, x_3007.y, x_3007.z, x_3008.w);
          let x_3010 : vec4<f32> = u_xlat12;
          let x_3012 : vec4<f32> = u_xlat12;
          u_xlat47.x = dot(vec3<f32>(x_3010.x, x_3010.y, x_3010.z), vec3<f32>(x_3012.x, x_3012.y, x_3012.z));
          let x_3017 : f32 = u_xlat47.x;
          u_xlat47.x = inverseSqrt(x_3017);
          let x_3020 : vec2<f32> = u_xlat47;
          let x_3022 : vec4<f32> = u_xlat12;
          let x_3024 : vec3<f32> = (vec3<f32>(x_3020.x, x_3020.x, x_3020.x) * vec3<f32>(x_3022.x, x_3022.y, x_3022.z));
          let x_3025 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3024.x, x_3024.y, x_3024.z, x_3025.w);
          let x_3027 : vec4<f32> = u_xlat12;
          u_xlat47.x = dot(abs(vec3<f32>(x_3027.x, x_3027.y, x_3027.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3034 : f32 = u_xlat47.x;
          u_xlat47.x = max(x_3034, 0.000001f);
          let x_3039 : f32 = u_xlat47.x;
          u_xlat47.x = (1.0f / x_3039);
          let x_3042 : vec2<f32> = u_xlat47;
          let x_3044 : vec4<f32> = u_xlat12;
          let x_3046 : vec3<f32> = (vec3<f32>(x_3042.x, x_3042.x, x_3042.x) * vec3<f32>(x_3044.z, x_3044.x, x_3044.y));
          let x_3047 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3046.x, x_3046.y, x_3046.z, x_3047.w);
          let x_3050 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_3050);
          let x_3054 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_3054, 0.0f, 1.0f);
          let x_3058 : vec4<f32> = u_xlat13;
          let x_3061 : vec4<bool> = (vec4<f32>(x_3058.y, x_3058.z, x_3058.y, x_3058.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb51 = vec2<bool>(x_3061.x, x_3061.y);
          let x_3065 : bool = u_xlatb51.x;
          if (x_3065) {
            let x_3070 : f32 = u_xlat13.x;
            x_3066 = x_3070;
          } else {
            let x_3073 : f32 = u_xlat13.x;
            x_3066 = -(x_3073);
          }
          let x_3075 : f32 = x_3066;
          u_xlat51.x = x_3075;
          let x_3078 : bool = u_xlatb51.y;
          if (x_3078) {
            let x_3083 : f32 = u_xlat13.x;
            x_3079 = x_3083;
          } else {
            let x_3086 : f32 = u_xlat13.x;
            x_3079 = -(x_3086);
          }
          let x_3088 : f32 = x_3079;
          u_xlat51.y = x_3088;
          let x_3090 : vec4<f32> = u_xlat12;
          let x_3092 : vec2<f32> = u_xlat47;
          let x_3095 : vec2<f32> = u_xlat51;
          u_xlat47 = ((vec2<f32>(x_3090.x, x_3090.y) * vec2<f32>(x_3092.x, x_3092.x)) + x_3095);
          let x_3097 : vec2<f32> = u_xlat47;
          u_xlat47 = ((x_3097 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3100 : vec2<f32> = u_xlat47;
          u_xlat47 = clamp(x_3100, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3104 : u32 = u_xlatu63;
          let x_3107 : vec4<f32> = x_2765.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3104)];
          let x_3109 : vec2<f32> = u_xlat47;
          let x_3111 : u32 = u_xlatu63;
          let x_3114 : vec4<f32> = x_2765.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3111)];
          let x_3116 : vec2<f32> = ((vec2<f32>(x_3107.x, x_3107.y) * x_3109) + vec2<f32>(x_3114.z, x_3114.w));
          let x_3117 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3116.x, x_3116.y, x_3117.z, x_3117.w);
        }
      }
      let x_3124 : vec4<f32> = u_xlat11;
      let x_3127 : f32 = x_146.x_GlobalMipBias.x;
      let x_3128 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_3124.x, x_3124.y), x_3127);
      u_xlat11 = x_3128;
      let x_3130 : bool = u_xlatb7.y;
      if (x_3130) {
        let x_3135 : f32 = u_xlat11.w;
        x_3131 = x_3135;
      } else {
        let x_3138 : f32 = u_xlat11.x;
        x_3131 = x_3138;
      }
      let x_3139 : f32 = x_3131;
      u_xlat47.x = x_3139;
      let x_3142 : bool = u_xlatb7.x;
      if (x_3142) {
        let x_3146 : vec4<f32> = u_xlat11;
        x_3143 = vec3<f32>(x_3146.x, x_3146.y, x_3146.z);
      } else {
        let x_3149 : vec2<f32> = u_xlat47;
        x_3143 = vec3<f32>(x_3149.x, x_3149.x, x_3149.x);
      }
      let x_3151 : vec3<f32> = x_3143;
      let x_3152 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3151.x, x_3151.y, x_3151.z, x_3152.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_3158 : vec4<f32> = u_xlat11;
    let x_3160 : u32 = u_xlatu63;
    let x_3163 : vec4<f32> = x_2645.x_AdditionalLightsColor[bitcast<i32>(x_3160)];
    let x_3165 : vec3<f32> = (vec3<f32>(x_3158.x, x_3158.y, x_3158.z) * vec3<f32>(x_3163.x, x_3163.y, x_3163.z));
    let x_3166 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3165.x, x_3165.y, x_3165.z, x_3166.w);
    let x_3168 : f32 = u_xlat45;
    let x_3170 : vec4<f32> = u_xlat11;
    let x_3172 : vec3<f32> = (vec3<f32>(x_3168, x_3168, x_3168) * vec3<f32>(x_3170.x, x_3170.y, x_3170.z));
    let x_3173 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3172.x, x_3172.y, x_3172.z, x_3173.w);
    let x_3175 : vec3<f32> = u_xlat20;
    let x_3176 : vec4<f32> = u_xlat10;
    u_xlat63 = dot(x_3175, vec3<f32>(x_3176.x, x_3176.y, x_3176.z));
    let x_3179 : f32 = u_xlat63;
    u_xlat63 = clamp(x_3179, 0.0f, 1.0f);
    let x_3181 : f32 = u_xlat63;
    let x_3182 : f32 = u_xlat65;
    u_xlat63 = (x_3181 * x_3182);
    let x_3184 : f32 = u_xlat63;
    let x_3186 : vec4<f32> = u_xlat11;
    let x_3188 : vec3<f32> = (vec3<f32>(x_3184, x_3184, x_3184) * vec3<f32>(x_3186.x, x_3186.y, x_3186.z));
    let x_3189 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3188.x, x_3188.y, x_3188.z, x_3189.w);
    let x_3191 : vec4<f32> = u_xlat9;
    let x_3193 : f32 = u_xlat66;
    let x_3196 : vec4<f32> = u_xlat1;
    let x_3198 : vec3<f32> = ((vec3<f32>(x_3191.x, x_3191.y, x_3191.z) * vec3<f32>(x_3193, x_3193, x_3193)) + vec3<f32>(x_3196.x, x_3196.y, x_3196.z));
    let x_3199 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3198.x, x_3198.y, x_3198.z, x_3199.w);
    let x_3201 : vec4<f32> = u_xlat9;
    let x_3203 : vec4<f32> = u_xlat9;
    u_xlat63 = dot(vec3<f32>(x_3201.x, x_3201.y, x_3201.z), vec3<f32>(x_3203.x, x_3203.y, x_3203.z));
    let x_3206 : f32 = u_xlat63;
    u_xlat63 = max(x_3206, 1.17549435e-37f);
    let x_3208 : f32 = u_xlat63;
    u_xlat63 = inverseSqrt(x_3208);
    let x_3210 : f32 = u_xlat63;
    let x_3212 : vec4<f32> = u_xlat9;
    let x_3214 : vec3<f32> = (vec3<f32>(x_3210, x_3210, x_3210) * vec3<f32>(x_3212.x, x_3212.y, x_3212.z));
    let x_3215 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3214.x, x_3214.y, x_3214.z, x_3215.w);
    let x_3217 : vec3<f32> = u_xlat20;
    let x_3218 : vec4<f32> = u_xlat9;
    u_xlat63 = dot(x_3217, vec3<f32>(x_3218.x, x_3218.y, x_3218.z));
    let x_3221 : f32 = u_xlat63;
    u_xlat63 = clamp(x_3221, 0.0f, 1.0f);
    let x_3223 : vec4<f32> = u_xlat10;
    let x_3225 : vec4<f32> = u_xlat9;
    u_xlat65 = dot(vec3<f32>(x_3223.x, x_3223.y, x_3223.z), vec3<f32>(x_3225.x, x_3225.y, x_3225.z));
    let x_3228 : f32 = u_xlat65;
    u_xlat65 = clamp(x_3228, 0.0f, 1.0f);
    let x_3230 : f32 = u_xlat63;
    let x_3231 : f32 = u_xlat63;
    u_xlat63 = (x_3230 * x_3231);
    let x_3233 : f32 = u_xlat63;
    let x_3235 : f32 = u_xlat8.x;
    u_xlat63 = ((x_3233 * x_3235) + 1.000010014f);
    let x_3238 : f32 = u_xlat65;
    let x_3239 : f32 = u_xlat65;
    u_xlat65 = (x_3238 * x_3239);
    let x_3241 : f32 = u_xlat63;
    let x_3242 : f32 = u_xlat63;
    u_xlat63 = (x_3241 * x_3242);
    let x_3244 : f32 = u_xlat65;
    u_xlat65 = max(x_3244, 0.100000001f);
    let x_3246 : f32 = u_xlat63;
    let x_3247 : f32 = u_xlat65;
    u_xlat63 = (x_3246 * x_3247);
    let x_3249 : f32 = u_xlat25;
    let x_3250 : f32 = u_xlat63;
    u_xlat63 = (x_3249 * x_3250);
    let x_3252 : f32 = u_xlat64;
    let x_3253 : f32 = u_xlat63;
    u_xlat63 = (x_3252 / x_3253);
    let x_3255 : vec3<f32> = u_xlat2;
    let x_3256 : f32 = u_xlat63;
    let x_3259 : vec3<f32> = u_xlat3;
    let x_3260 : vec3<f32> = ((x_3255 * vec3<f32>(x_3256, x_3256, x_3256)) + x_3259);
    let x_3261 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3260.x, x_3260.y, x_3260.z, x_3261.w);
    let x_3263 : vec4<f32> = u_xlat9;
    let x_3265 : vec4<f32> = u_xlat11;
    let x_3268 : vec3<f32> = u_xlat28;
    u_xlat28 = ((vec3<f32>(x_3263.x, x_3263.y, x_3263.z) * vec3<f32>(x_3265.x, x_3265.y, x_3265.z)) + x_3268);

    continuing {
      let x_3270 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3270 + bitcast<u32>(1i));
    }
  }
  let x_3272 : vec4<f32> = u_xlat4;
  let x_3274 : vec3<f32> = u_xlat5;
  let x_3277 : vec4<f32> = u_xlat6;
  let x_3279 : vec3<f32> = ((vec3<f32>(x_3272.x, x_3272.y, x_3272.z) * vec3<f32>(x_3274.x, x_3274.x, x_3274.x)) + vec3<f32>(x_3277.x, x_3277.y, x_3277.z));
  let x_3280 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3279.x, x_3279.y, x_3279.z, x_3280.w);
  let x_3282 : vec3<f32> = u_xlat28;
  let x_3283 : vec4<f32> = u_xlat0;
  let x_3285 : vec3<f32> = (x_3282 + vec3<f32>(x_3283.x, x_3283.y, x_3283.z));
  let x_3286 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3285.x, x_3285.y, x_3285.z, x_3286.w);
  let x_3289 : f32 = u_xlat62;
  let x_3290 : f32 = u_xlat62;
  u_xlat60 = (x_3289 * -(x_3290));
  let x_3293 : f32 = u_xlat60;
  u_xlat60 = exp2(x_3293);
  let x_3295 : vec4<f32> = u_xlat0;
  let x_3299 : vec4<f32> = x_146.unity_FogColor;
  let x_3302 : vec3<f32> = (vec3<f32>(x_3295.x, x_3295.y, x_3295.z) + -(vec3<f32>(x_3299.x, x_3299.y, x_3299.z)));
  let x_3303 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3302.x, x_3302.y, x_3302.z, x_3303.w);
  let x_3307 : f32 = u_xlat60;
  let x_3309 : vec4<f32> = u_xlat0;
  let x_3313 : vec4<f32> = x_146.unity_FogColor;
  let x_3315 : vec3<f32> = ((vec3<f32>(x_3307, x_3307, x_3307) * vec3<f32>(x_3309.x, x_3309.y, x_3309.z)) + vec3<f32>(x_3313.x, x_3313.y, x_3313.z));
  let x_3316 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3315.x, x_3315.y, x_3315.z, x_3316.w);
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

