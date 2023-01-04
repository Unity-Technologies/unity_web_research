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

@group(0) @binding(7) var x_MainTex : texture_2d<f32>;

@group(0) @binding(18) var sampler_MainTex : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_146 : PGlobals;

var<private> vs_INTERP0 : vec3<f32>;

@group(0) @binding(10) var Texture2D_D7D66558 : texture_2d<f32>;

@group(0) @binding(21) var samplerTexture2D_D7D66558 : sampler;

@group(1) @binding(6) var<uniform> x_206 : UnityPerMaterial;

@group(0) @binding(8) var Texture2D_DE8BF47E : texture_2d<f32>;

@group(0) @binding(19) var samplerTexture2D_DE8BF47E : sampler;

@group(0) @binding(9) var Texture2D_C005B064 : texture_2d<f32>;

@group(0) @binding(20) var samplerTexture2D_C005B064 : sampler;

@group(0) @binding(6) var x_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1 : texture_2d<f32>;

@group(0) @binding(17) var sampler_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1 : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(12) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP4 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(3) var<uniform> x_799 : MainLightShadows;

var<private> vs_INTERP8 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_2113 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(11) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2571 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_2679 : AdditionalLightsCookies;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> SV_Target1 : vec4<f32>;

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
  var x_648 : f32;
  var x_660 : f32;
  var x_671 : f32;
  var u_xlat44 : f32;
  var u_xlatb64 : bool;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb65 : bool;
  var u_xlat46 : vec2<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat48 : vec2<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat65 : f32;
  var txVec4 : vec3<f32>;
  var txVec5 : vec3<f32>;
  var u_xlat26 : f32;
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
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
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
  var u_xlatb6 : bool;
  var u_xlatb7 : vec2<bool>;
  var x_2195 : f32;
  var x_2206 : vec3<f32>;
  var u_xlat66 : f32;
  var u_xlatu0 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu62 : u32;
  var u_xlati64 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlatu66 : u32;
  var u_xlati47 : i32;
  var u_xlati66 : i32;
  var u_xlati67 : i32;
  var u_xlatb66 : bool;
  var u_xlat51 : vec2<f32>;
  var u_xlatb47 : vec2<bool>;
  var u_xlat47 : vec2<f32>;
  var x_2973 : f32;
  var x_2986 : f32;
  var x_3038 : f32;
  var x_3049 : vec3<f32>;
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
  let x_620 : f32 = x_146.unity_OrthoParams.w;
  u_xlatb1 = (x_620 == 0.0f);
  let x_622 : vec3<f32> = vs_INTERP0;
  let x_626 : vec3<f32> = x_146.x_WorldSpaceCameraPos;
  let x_627 : vec3<f32> = (-(x_622) + x_626);
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
  let x_647 : bool = u_xlatb1;
  if (x_647) {
    let x_652 : f32 = u_xlat4.x;
    x_648 = x_652;
  } else {
    let x_656 : f32 = x_146.unity_MatrixV[0i].z;
    x_648 = x_656;
  }
  let x_657 : f32 = x_648;
  u_xlat5.x = x_657;
  let x_659 : bool = u_xlatb1;
  if (x_659) {
    let x_664 : f32 = u_xlat4.y;
    x_660 = x_664;
  } else {
    let x_667 : f32 = x_146.unity_MatrixV[1i].z;
    x_660 = x_667;
  }
  let x_668 : f32 = x_660;
  u_xlat5.y = x_668;
  let x_670 : bool = u_xlatb1;
  if (x_670) {
    let x_675 : f32 = u_xlat4.z;
    x_671 = x_675;
  } else {
    let x_678 : f32 = x_146.unity_MatrixV[2i].z;
    x_671 = x_678;
  }
  let x_679 : f32 = x_671;
  u_xlat5.z = x_679;
  let x_688 : vec2<f32> = vs_INTERP4;
  let x_690 : f32 = x_146.x_GlobalMipBias.x;
  let x_691 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_688, x_690);
  let x_692 : vec3<f32> = vec3<f32>(x_691.x, x_691.y, x_691.z);
  let x_693 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_692.x, x_692.y, x_692.z, x_693.w);
  let x_696 : vec4<f32> = x_146.x_ScaledScreenParams;
  let x_697 : vec2<f32> = vec2<f32>(x_696.x, x_696.y);
  let x_701 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_697.x, x_697.y));
  let x_702 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_701.x, x_701.y, x_702.z, x_702.w);
  let x_704 : vec4<f32> = u_xlat4;
  let x_706 : vec4<f32> = hlslcc_FragCoord;
  let x_708 : vec2<f32> = (vec2<f32>(x_704.x, x_704.y) * vec2<f32>(x_706.x, x_706.y));
  let x_709 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_708.x, x_708.y, x_709.z, x_709.w);
  let x_712 : f32 = u_xlat4.y;
  let x_715 : f32 = x_146.x_ScaleBiasRt.x;
  let x_718 : f32 = x_146.x_ScaleBiasRt.y;
  u_xlat62 = ((x_712 * x_715) + x_718);
  let x_720 : f32 = u_xlat62;
  u_xlat4.z = (-(x_720) + 1.0f);
  let x_724 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_724 * vec3<f32>(0.863999963f, 0.863999963f, 0.863999963f));
  let x_728 : vec4<f32> = u_xlat1;
  let x_730 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_728.w, x_728.w, x_728.w) * x_730) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_735 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_735 * vec3<f32>(0.100000001f, 0.100000001f, 0.100000001f)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_742 : f32 = u_xlat0.x;
  u_xlat61 = (-(x_742) + 1.0f);
  let x_745 : f32 = u_xlat61;
  let x_746 : f32 = u_xlat61;
  u_xlat62 = (x_745 * x_746);
  let x_748 : f32 = u_xlat62;
  u_xlat62 = max(x_748, 0.0078125f);
  let x_751 : f32 = u_xlat62;
  let x_752 : f32 = u_xlat62;
  u_xlat63 = (x_751 * x_752);
  let x_755 : f32 = u_xlat0.x;
  u_xlat0.x = (x_755 + 0.136000037f);
  let x_760 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_760, 1.0f);
  let x_763 : f32 = u_xlat62;
  u_xlat24.x = ((x_763 * 4.0f) + 2.0f);
  let x_772 : vec4<f32> = u_xlat4;
  let x_775 : f32 = x_146.x_GlobalMipBias.x;
  let x_776 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_772.x, x_772.z), x_775);
  u_xlat4.x = x_776.x;
  let x_781 : f32 = u_xlat4.x;
  u_xlat44 = (x_781 + -1.0f);
  let x_784 : f32 = x_146.x_AmbientOcclusionParam.w;
  let x_785 : f32 = u_xlat44;
  u_xlat44 = ((x_784 * x_785) + 1.0f);
  let x_789 : f32 = u_xlat7.x;
  let x_791 : f32 = u_xlat4.x;
  u_xlat4.x = min(x_789, x_791);
  let x_801 : f32 = x_799.x_MainLightShadowParams.y;
  u_xlatb64 = (0.0f < x_801);
  let x_803 : bool = u_xlatb64;
  if (x_803) {
    let x_807 : f32 = x_799.x_MainLightShadowParams.y;
    u_xlatb64 = (x_807 == 1.0f);
    let x_809 : bool = u_xlatb64;
    if (x_809) {
      let x_813 : vec4<f32> = vs_INTERP8;
      let x_817 : vec4<f32> = x_799.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_813.x, x_813.y, x_813.x, x_813.y) + x_817);
      let x_820 : vec4<f32> = u_xlat6;
      let x_821 : vec2<f32> = vec2<f32>(x_820.x, x_820.y);
      let x_823 : f32 = vs_INTERP8.z;
      txVec0 = vec3<f32>(x_821.x, x_821.y, x_823);
      let x_835 : vec3<f32> = txVec0;
      let x_837 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_835.xy, x_835.z);
      u_xlat7.x = x_837;
      let x_840 : vec4<f32> = u_xlat6;
      let x_841 : vec2<f32> = vec2<f32>(x_840.z, x_840.w);
      let x_843 : f32 = vs_INTERP8.z;
      txVec1 = vec3<f32>(x_841.x, x_841.y, x_843);
      let x_850 : vec3<f32> = txVec1;
      let x_852 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_850.xy, x_850.z);
      u_xlat7.y = x_852;
      let x_854 : vec4<f32> = vs_INTERP8;
      let x_858 : vec4<f32> = x_799.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_854.x, x_854.y, x_854.x, x_854.y) + x_858);
      let x_861 : vec4<f32> = u_xlat6;
      let x_862 : vec2<f32> = vec2<f32>(x_861.x, x_861.y);
      let x_864 : f32 = vs_INTERP8.z;
      txVec2 = vec3<f32>(x_862.x, x_862.y, x_864);
      let x_871 : vec3<f32> = txVec2;
      let x_873 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_871.xy, x_871.z);
      u_xlat7.z = x_873;
      let x_876 : vec4<f32> = u_xlat6;
      let x_877 : vec2<f32> = vec2<f32>(x_876.z, x_876.w);
      let x_879 : f32 = vs_INTERP8.z;
      txVec3 = vec3<f32>(x_877.x, x_877.y, x_879);
      let x_886 : vec3<f32> = txVec3;
      let x_888 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_886.xy, x_886.z);
      u_xlat7.w = x_888;
      let x_890 : vec4<f32> = u_xlat7;
      u_xlat64 = dot(x_890, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_897 : f32 = x_799.x_MainLightShadowParams.y;
      u_xlatb65 = (x_897 == 2.0f);
      let x_899 : bool = u_xlatb65;
      if (x_899) {
        let x_902 : vec4<f32> = vs_INTERP8;
        let x_905 : vec4<f32> = x_799.x_MainLightShadowmapSize;
        let x_910 : vec2<f32> = ((vec2<f32>(x_902.x, x_902.y) * vec2<f32>(x_905.z, x_905.w)) + vec2<f32>(0.5f, 0.5f));
        let x_911 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_910.x, x_910.y, x_911.z, x_911.w);
        let x_913 : vec4<f32> = u_xlat6;
        let x_915 : vec2<f32> = floor(vec2<f32>(x_913.x, x_913.y));
        let x_916 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_915.x, x_915.y, x_916.z, x_916.w);
        let x_919 : vec4<f32> = vs_INTERP8;
        let x_922 : vec4<f32> = x_799.x_MainLightShadowmapSize;
        let x_925 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_919.x, x_919.y) * vec2<f32>(x_922.z, x_922.w)) + -(vec2<f32>(x_925.x, x_925.y)));
        let x_929 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_929.x, x_929.x, x_929.y, x_929.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_934 : vec4<f32> = u_xlat7;
        let x_936 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_934.x, x_934.x, x_934.z, x_934.z) * vec4<f32>(x_936.x, x_936.x, x_936.z, x_936.z));
        let x_939 : vec4<f32> = u_xlat8;
        let x_943 : vec2<f32> = (vec2<f32>(x_939.y, x_939.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_944 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_943.x, x_944.y, x_943.y, x_944.w);
        let x_946 : vec4<f32> = u_xlat8;
        let x_949 : vec2<f32> = u_xlat46;
        let x_951 : vec2<f32> = ((vec2<f32>(x_946.x, x_946.z) * vec2<f32>(0.5f, 0.5f)) + -(x_949));
        let x_952 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_951.x, x_951.y, x_952.z, x_952.w);
        let x_955 : vec2<f32> = u_xlat46;
        u_xlat48 = (-(x_955) + vec2<f32>(1.0f, 1.0f));
        let x_959 : vec2<f32> = u_xlat46;
        let x_961 : vec2<f32> = min(x_959, vec2<f32>(0.0f, 0.0f));
        let x_962 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_961.x, x_961.y, x_962.z, x_962.w);
        let x_964 : vec4<f32> = u_xlat9;
        let x_967 : vec4<f32> = u_xlat9;
        let x_970 : vec2<f32> = u_xlat48;
        let x_971 : vec2<f32> = ((-(vec2<f32>(x_964.x, x_964.y)) * vec2<f32>(x_967.x, x_967.y)) + x_970);
        let x_972 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_971.x, x_971.y, x_972.z, x_972.w);
        let x_974 : vec2<f32> = u_xlat46;
        u_xlat46 = max(x_974, vec2<f32>(0.0f, 0.0f));
        let x_976 : vec2<f32> = u_xlat46;
        let x_978 : vec2<f32> = u_xlat46;
        let x_980 : vec4<f32> = u_xlat7;
        u_xlat46 = ((-(x_976) * x_978) + vec2<f32>(x_980.y, x_980.w));
        let x_983 : vec4<f32> = u_xlat9;
        let x_985 : vec2<f32> = (vec2<f32>(x_983.x, x_983.y) + vec2<f32>(1.0f, 1.0f));
        let x_986 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_985.x, x_985.y, x_986.z, x_986.w);
        let x_988 : vec2<f32> = u_xlat46;
        u_xlat46 = (x_988 + vec2<f32>(1.0f, 1.0f));
        let x_991 : vec4<f32> = u_xlat8;
        let x_995 : vec2<f32> = (vec2<f32>(x_991.x, x_991.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_996 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_995.x, x_995.y, x_996.z, x_996.w);
        let x_998 : vec2<f32> = u_xlat48;
        let x_999 : vec2<f32> = (x_998 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1000 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_999.x, x_999.y, x_1000.z, x_1000.w);
        let x_1002 : vec4<f32> = u_xlat9;
        let x_1004 : vec2<f32> = (vec2<f32>(x_1002.x, x_1002.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1005 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1004.x, x_1004.y, x_1005.z, x_1005.w);
        let x_1008 : vec2<f32> = u_xlat46;
        let x_1009 : vec2<f32> = (x_1008 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1010 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1009.x, x_1009.y, x_1010.z, x_1010.w);
        let x_1012 : vec4<f32> = u_xlat7;
        u_xlat46 = (vec2<f32>(x_1012.y, x_1012.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1016 : f32 = u_xlat9.x;
        u_xlat10.z = x_1016;
        let x_1019 : f32 = u_xlat46.x;
        u_xlat10.w = x_1019;
        let x_1022 : f32 = u_xlat11.x;
        u_xlat8.z = x_1022;
        let x_1025 : f32 = u_xlat7.x;
        u_xlat8.w = x_1025;
        let x_1028 : vec4<f32> = u_xlat8;
        let x_1030 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_1028.z, x_1028.w, x_1028.x, x_1028.z) + vec4<f32>(x_1030.z, x_1030.w, x_1030.x, x_1030.z));
        let x_1034 : f32 = u_xlat10.y;
        u_xlat9.z = x_1034;
        let x_1037 : f32 = u_xlat46.y;
        u_xlat9.w = x_1037;
        let x_1040 : f32 = u_xlat8.y;
        u_xlat11.z = x_1040;
        let x_1043 : f32 = u_xlat7.z;
        u_xlat11.w = x_1043;
        let x_1045 : vec4<f32> = u_xlat9;
        let x_1047 : vec4<f32> = u_xlat11;
        let x_1049 : vec3<f32> = (vec3<f32>(x_1045.z, x_1045.y, x_1045.w) + vec3<f32>(x_1047.z, x_1047.y, x_1047.w));
        let x_1050 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1049.x, x_1049.y, x_1049.z, x_1050.w);
        let x_1052 : vec4<f32> = u_xlat8;
        let x_1054 : vec4<f32> = u_xlat12;
        let x_1056 : vec3<f32> = (vec3<f32>(x_1052.x, x_1052.z, x_1052.w) / vec3<f32>(x_1054.z, x_1054.w, x_1054.y));
        let x_1057 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1056.x, x_1056.y, x_1056.z, x_1057.w);
        let x_1059 : vec4<f32> = u_xlat8;
        let x_1064 : vec3<f32> = (vec3<f32>(x_1059.x, x_1059.y, x_1059.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1065 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1064.x, x_1064.y, x_1064.z, x_1065.w);
        let x_1067 : vec4<f32> = u_xlat11;
        let x_1069 : vec4<f32> = u_xlat7;
        let x_1071 : vec3<f32> = (vec3<f32>(x_1067.z, x_1067.y, x_1067.w) / vec3<f32>(x_1069.x, x_1069.y, x_1069.z));
        let x_1072 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1071.x, x_1071.y, x_1071.z, x_1072.w);
        let x_1074 : vec4<f32> = u_xlat9;
        let x_1076 : vec3<f32> = (vec3<f32>(x_1074.x, x_1074.y, x_1074.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1077 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1076.x, x_1076.y, x_1076.z, x_1077.w);
        let x_1079 : vec4<f32> = u_xlat8;
        let x_1082 : vec4<f32> = x_799.x_MainLightShadowmapSize;
        let x_1084 : vec3<f32> = (vec3<f32>(x_1079.y, x_1079.x, x_1079.z) * vec3<f32>(x_1082.x, x_1082.x, x_1082.x));
        let x_1085 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1084.x, x_1084.y, x_1084.z, x_1085.w);
        let x_1087 : vec4<f32> = u_xlat9;
        let x_1090 : vec4<f32> = x_799.x_MainLightShadowmapSize;
        let x_1092 : vec3<f32> = (vec3<f32>(x_1087.x, x_1087.y, x_1087.z) * vec3<f32>(x_1090.y, x_1090.y, x_1090.y));
        let x_1093 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1092.x, x_1092.y, x_1092.z, x_1093.w);
        let x_1096 : f32 = u_xlat9.x;
        u_xlat8.w = x_1096;
        let x_1098 : vec4<f32> = u_xlat6;
        let x_1101 : vec4<f32> = x_799.x_MainLightShadowmapSize;
        let x_1104 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1098.x, x_1098.y, x_1098.x, x_1098.y) * vec4<f32>(x_1101.x, x_1101.y, x_1101.x, x_1101.y)) + vec4<f32>(x_1104.y, x_1104.w, x_1104.x, x_1104.w));
        let x_1107 : vec4<f32> = u_xlat6;
        let x_1110 : vec4<f32> = x_799.x_MainLightShadowmapSize;
        let x_1113 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_1107.x, x_1107.y) * vec2<f32>(x_1110.x, x_1110.y)) + vec2<f32>(x_1113.z, x_1113.w));
        let x_1117 : f32 = u_xlat8.y;
        u_xlat9.w = x_1117;
        let x_1119 : vec4<f32> = u_xlat9;
        let x_1120 : vec2<f32> = vec2<f32>(x_1119.y, x_1119.z);
        let x_1121 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1121.x, x_1120.x, x_1121.z, x_1120.y);
        let x_1123 : vec4<f32> = u_xlat6;
        let x_1126 : vec4<f32> = x_799.x_MainLightShadowmapSize;
        let x_1129 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1123.x, x_1123.y, x_1123.x, x_1123.y) * vec4<f32>(x_1126.x, x_1126.y, x_1126.x, x_1126.y)) + vec4<f32>(x_1129.x, x_1129.y, x_1129.z, x_1129.y));
        let x_1132 : vec4<f32> = u_xlat6;
        let x_1135 : vec4<f32> = x_799.x_MainLightShadowmapSize;
        let x_1138 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1132.x, x_1132.y, x_1132.x, x_1132.y) * vec4<f32>(x_1135.x, x_1135.y, x_1135.x, x_1135.y)) + vec4<f32>(x_1138.w, x_1138.y, x_1138.w, x_1138.z));
        let x_1141 : vec4<f32> = u_xlat6;
        let x_1144 : vec4<f32> = x_799.x_MainLightShadowmapSize;
        let x_1147 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1141.x, x_1141.y, x_1141.x, x_1141.y) * vec4<f32>(x_1144.x, x_1144.y, x_1144.x, x_1144.y)) + vec4<f32>(x_1147.x, x_1147.w, x_1147.z, x_1147.w));
        let x_1151 : vec4<f32> = u_xlat7;
        let x_1153 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_1151.x, x_1151.x, x_1151.x, x_1151.y) * vec4<f32>(x_1153.z, x_1153.w, x_1153.y, x_1153.z));
        let x_1157 : vec4<f32> = u_xlat7;
        let x_1159 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_1157.y, x_1157.y, x_1157.z, x_1157.z) * x_1159);
        let x_1163 : f32 = u_xlat7.z;
        let x_1165 : f32 = u_xlat12.y;
        u_xlat65 = (x_1163 * x_1165);
        let x_1168 : vec4<f32> = u_xlat10;
        let x_1169 : vec2<f32> = vec2<f32>(x_1168.x, x_1168.y);
        let x_1171 : f32 = vs_INTERP8.z;
        txVec4 = vec3<f32>(x_1169.x, x_1169.y, x_1171);
        let x_1178 : vec3<f32> = txVec4;
        let x_1180 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1178.xy, x_1178.z);
        u_xlat6.x = x_1180;
        let x_1183 : vec4<f32> = u_xlat10;
        let x_1184 : vec2<f32> = vec2<f32>(x_1183.z, x_1183.w);
        let x_1186 : f32 = vs_INTERP8.z;
        txVec5 = vec3<f32>(x_1184.x, x_1184.y, x_1186);
        let x_1194 : vec3<f32> = txVec5;
        let x_1196 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1194.xy, x_1194.z);
        u_xlat26 = x_1196;
        let x_1197 : f32 = u_xlat26;
        let x_1199 : f32 = u_xlat13.y;
        u_xlat26 = (x_1197 * x_1199);
        let x_1202 : f32 = u_xlat13.x;
        let x_1204 : f32 = u_xlat6.x;
        let x_1206 : f32 = u_xlat26;
        u_xlat6.x = ((x_1202 * x_1204) + x_1206);
        let x_1210 : vec2<f32> = u_xlat46;
        let x_1212 : f32 = vs_INTERP8.z;
        txVec6 = vec3<f32>(x_1210.x, x_1210.y, x_1212);
        let x_1219 : vec3<f32> = txVec6;
        let x_1221 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1219.xy, x_1219.z);
        u_xlat26 = x_1221;
        let x_1223 : f32 = u_xlat13.z;
        let x_1224 : f32 = u_xlat26;
        let x_1227 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1223 * x_1224) + x_1227);
        let x_1231 : vec4<f32> = u_xlat9;
        let x_1232 : vec2<f32> = vec2<f32>(x_1231.x, x_1231.y);
        let x_1234 : f32 = vs_INTERP8.z;
        txVec7 = vec3<f32>(x_1232.x, x_1232.y, x_1234);
        let x_1241 : vec3<f32> = txVec7;
        let x_1243 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1241.xy, x_1241.z);
        u_xlat26 = x_1243;
        let x_1245 : f32 = u_xlat13.w;
        let x_1246 : f32 = u_xlat26;
        let x_1249 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1245 * x_1246) + x_1249);
        let x_1253 : vec4<f32> = u_xlat11;
        let x_1254 : vec2<f32> = vec2<f32>(x_1253.x, x_1253.y);
        let x_1256 : f32 = vs_INTERP8.z;
        txVec8 = vec3<f32>(x_1254.x, x_1254.y, x_1256);
        let x_1263 : vec3<f32> = txVec8;
        let x_1265 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1263.xy, x_1263.z);
        u_xlat26 = x_1265;
        let x_1267 : f32 = u_xlat14.x;
        let x_1268 : f32 = u_xlat26;
        let x_1271 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1267 * x_1268) + x_1271);
        let x_1275 : vec4<f32> = u_xlat11;
        let x_1276 : vec2<f32> = vec2<f32>(x_1275.z, x_1275.w);
        let x_1278 : f32 = vs_INTERP8.z;
        txVec9 = vec3<f32>(x_1276.x, x_1276.y, x_1278);
        let x_1285 : vec3<f32> = txVec9;
        let x_1287 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1285.xy, x_1285.z);
        u_xlat26 = x_1287;
        let x_1289 : f32 = u_xlat14.y;
        let x_1290 : f32 = u_xlat26;
        let x_1293 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1289 * x_1290) + x_1293);
        let x_1297 : vec4<f32> = u_xlat9;
        let x_1298 : vec2<f32> = vec2<f32>(x_1297.z, x_1297.w);
        let x_1300 : f32 = vs_INTERP8.z;
        txVec10 = vec3<f32>(x_1298.x, x_1298.y, x_1300);
        let x_1307 : vec3<f32> = txVec10;
        let x_1309 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1307.xy, x_1307.z);
        u_xlat26 = x_1309;
        let x_1311 : f32 = u_xlat14.z;
        let x_1312 : f32 = u_xlat26;
        let x_1315 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1311 * x_1312) + x_1315);
        let x_1319 : vec4<f32> = u_xlat8;
        let x_1320 : vec2<f32> = vec2<f32>(x_1319.x, x_1319.y);
        let x_1322 : f32 = vs_INTERP8.z;
        txVec11 = vec3<f32>(x_1320.x, x_1320.y, x_1322);
        let x_1329 : vec3<f32> = txVec11;
        let x_1331 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1329.xy, x_1329.z);
        u_xlat26 = x_1331;
        let x_1333 : f32 = u_xlat14.w;
        let x_1334 : f32 = u_xlat26;
        let x_1337 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1333 * x_1334) + x_1337);
        let x_1341 : vec4<f32> = u_xlat8;
        let x_1342 : vec2<f32> = vec2<f32>(x_1341.z, x_1341.w);
        let x_1344 : f32 = vs_INTERP8.z;
        txVec12 = vec3<f32>(x_1342.x, x_1342.y, x_1344);
        let x_1351 : vec3<f32> = txVec12;
        let x_1353 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1351.xy, x_1351.z);
        u_xlat26 = x_1353;
        let x_1354 : f32 = u_xlat65;
        let x_1355 : f32 = u_xlat26;
        let x_1358 : f32 = u_xlat6.x;
        u_xlat64 = ((x_1354 * x_1355) + x_1358);
      } else {
        let x_1361 : vec4<f32> = vs_INTERP8;
        let x_1364 : vec4<f32> = x_799.x_MainLightShadowmapSize;
        let x_1367 : vec2<f32> = ((vec2<f32>(x_1361.x, x_1361.y) * vec2<f32>(x_1364.z, x_1364.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1368 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1367.x, x_1367.y, x_1368.z, x_1368.w);
        let x_1370 : vec4<f32> = u_xlat6;
        let x_1372 : vec2<f32> = floor(vec2<f32>(x_1370.x, x_1370.y));
        let x_1373 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1372.x, x_1372.y, x_1373.z, x_1373.w);
        let x_1375 : vec4<f32> = vs_INTERP8;
        let x_1378 : vec4<f32> = x_799.x_MainLightShadowmapSize;
        let x_1381 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_1375.x, x_1375.y) * vec2<f32>(x_1378.z, x_1378.w)) + -(vec2<f32>(x_1381.x, x_1381.y)));
        let x_1385 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_1385.x, x_1385.x, x_1385.y, x_1385.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1388 : vec4<f32> = u_xlat7;
        let x_1390 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1388.x, x_1388.x, x_1388.z, x_1388.z) * vec4<f32>(x_1390.x, x_1390.x, x_1390.z, x_1390.z));
        let x_1393 : vec4<f32> = u_xlat8;
        let x_1397 : vec2<f32> = (vec2<f32>(x_1393.y, x_1393.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1398 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1398.x, x_1397.x, x_1398.z, x_1397.y);
        let x_1400 : vec4<f32> = u_xlat8;
        let x_1403 : vec2<f32> = u_xlat46;
        let x_1405 : vec2<f32> = ((vec2<f32>(x_1400.x, x_1400.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1403));
        let x_1406 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1405.x, x_1406.y, x_1405.y, x_1406.w);
        let x_1408 : vec2<f32> = u_xlat46;
        let x_1410 : vec2<f32> = (-(x_1408) + vec2<f32>(1.0f, 1.0f));
        let x_1411 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1410.x, x_1410.y, x_1411.z, x_1411.w);
        let x_1413 : vec2<f32> = u_xlat46;
        u_xlat48 = min(x_1413, vec2<f32>(0.0f, 0.0f));
        let x_1415 : vec2<f32> = u_xlat48;
        let x_1417 : vec2<f32> = u_xlat48;
        let x_1419 : vec4<f32> = u_xlat8;
        let x_1421 : vec2<f32> = ((-(x_1415) * x_1417) + vec2<f32>(x_1419.x, x_1419.y));
        let x_1422 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1421.x, x_1421.y, x_1422.z, x_1422.w);
        let x_1424 : vec2<f32> = u_xlat46;
        u_xlat48 = max(x_1424, vec2<f32>(0.0f, 0.0f));
        let x_1426 : vec2<f32> = u_xlat48;
        let x_1428 : vec2<f32> = u_xlat48;
        let x_1430 : vec4<f32> = u_xlat7;
        let x_1432 : vec2<f32> = ((-(x_1426) * x_1428) + vec2<f32>(x_1430.y, x_1430.w));
        let x_1433 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_1432.x, x_1433.y, x_1432.y);
        let x_1435 : vec4<f32> = u_xlat8;
        let x_1437 : vec2<f32> = (vec2<f32>(x_1435.x, x_1435.y) + vec2<f32>(2.0f, 2.0f));
        let x_1438 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1437.x, x_1437.y, x_1438.z, x_1438.w);
        let x_1440 : vec3<f32> = u_xlat27;
        let x_1442 : vec2<f32> = (vec2<f32>(x_1440.x, x_1440.z) + vec2<f32>(2.0f, 2.0f));
        let x_1443 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1443.x, x_1442.x, x_1443.z, x_1442.y);
        let x_1446 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1446 * 0.081632003f);
        let x_1450 : vec4<f32> = u_xlat7;
        let x_1453 : vec3<f32> = (vec3<f32>(x_1450.z, x_1450.x, x_1450.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1454 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1453.x, x_1453.y, x_1453.z, x_1454.w);
        let x_1456 : vec4<f32> = u_xlat8;
        let x_1459 : vec2<f32> = (vec2<f32>(x_1456.x, x_1456.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1460 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1459.x, x_1459.y, x_1460.z, x_1460.w);
        let x_1463 : f32 = u_xlat11.y;
        u_xlat10.x = x_1463;
        let x_1465 : vec2<f32> = u_xlat46;
        let x_1472 : vec2<f32> = ((vec2<f32>(x_1465.x, x_1465.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1473 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1473.x, x_1472.x, x_1473.z, x_1472.y);
        let x_1475 : vec2<f32> = u_xlat46;
        let x_1479 : vec2<f32> = ((vec2<f32>(x_1475.x, x_1475.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1480 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1479.x, x_1480.y, x_1479.y, x_1480.w);
        let x_1483 : f32 = u_xlat7.x;
        u_xlat8.y = x_1483;
        let x_1486 : f32 = u_xlat9.y;
        u_xlat8.w = x_1486;
        let x_1488 : vec4<f32> = u_xlat8;
        let x_1489 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1488 + x_1489);
        let x_1491 : vec2<f32> = u_xlat46;
        let x_1494 : vec2<f32> = ((vec2<f32>(x_1491.y, x_1491.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1495 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1495.x, x_1494.x, x_1495.z, x_1494.y);
        let x_1497 : vec2<f32> = u_xlat46;
        let x_1500 : vec2<f32> = ((vec2<f32>(x_1497.y, x_1497.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1501 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1500.x, x_1501.y, x_1500.y, x_1501.w);
        let x_1504 : f32 = u_xlat7.y;
        u_xlat9.y = x_1504;
        let x_1506 : vec4<f32> = u_xlat9;
        let x_1507 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1506 + x_1507);
        let x_1509 : vec4<f32> = u_xlat8;
        let x_1510 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1509 / x_1510);
        let x_1512 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1512 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1518 : vec4<f32> = u_xlat9;
        let x_1519 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1518 / x_1519);
        let x_1521 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1521 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1523 : vec4<f32> = u_xlat8;
        let x_1526 : vec4<f32> = x_799.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1523.w, x_1523.x, x_1523.y, x_1523.z) * vec4<f32>(x_1526.x, x_1526.x, x_1526.x, x_1526.x));
        let x_1529 : vec4<f32> = u_xlat9;
        let x_1532 : vec4<f32> = x_799.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1529.x, x_1529.w, x_1529.y, x_1529.z) * vec4<f32>(x_1532.y, x_1532.y, x_1532.y, x_1532.y));
        let x_1535 : vec4<f32> = u_xlat8;
        let x_1536 : vec3<f32> = vec3<f32>(x_1535.y, x_1535.z, x_1535.w);
        let x_1537 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1536.x, x_1537.y, x_1536.y, x_1536.z);
        let x_1540 : f32 = u_xlat9.x;
        u_xlat11.y = x_1540;
        let x_1542 : vec4<f32> = u_xlat6;
        let x_1545 : vec4<f32> = x_799.x_MainLightShadowmapSize;
        let x_1548 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1542.x, x_1542.y, x_1542.x, x_1542.y) * vec4<f32>(x_1545.x, x_1545.y, x_1545.x, x_1545.y)) + vec4<f32>(x_1548.x, x_1548.y, x_1548.z, x_1548.y));
        let x_1551 : vec4<f32> = u_xlat6;
        let x_1554 : vec4<f32> = x_799.x_MainLightShadowmapSize;
        let x_1557 : vec4<f32> = u_xlat11;
        u_xlat46 = ((vec2<f32>(x_1551.x, x_1551.y) * vec2<f32>(x_1554.x, x_1554.y)) + vec2<f32>(x_1557.w, x_1557.y));
        let x_1561 : f32 = u_xlat11.y;
        u_xlat8.y = x_1561;
        let x_1564 : f32 = u_xlat9.z;
        u_xlat11.y = x_1564;
        let x_1566 : vec4<f32> = u_xlat6;
        let x_1569 : vec4<f32> = x_799.x_MainLightShadowmapSize;
        let x_1572 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1566.x, x_1566.y, x_1566.x, x_1566.y) * vec4<f32>(x_1569.x, x_1569.y, x_1569.x, x_1569.y)) + vec4<f32>(x_1572.x, x_1572.y, x_1572.z, x_1572.y));
        let x_1575 : vec4<f32> = u_xlat6;
        let x_1578 : vec4<f32> = x_799.x_MainLightShadowmapSize;
        let x_1581 : vec4<f32> = u_xlat11;
        let x_1583 : vec2<f32> = ((vec2<f32>(x_1575.x, x_1575.y) * vec2<f32>(x_1578.x, x_1578.y)) + vec2<f32>(x_1581.w, x_1581.y));
        let x_1584 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1583.x, x_1583.y, x_1584.z, x_1584.w);
        let x_1587 : f32 = u_xlat11.y;
        u_xlat8.z = x_1587;
        let x_1590 : vec4<f32> = u_xlat6;
        let x_1593 : vec4<f32> = x_799.x_MainLightShadowmapSize;
        let x_1596 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1590.x, x_1590.y, x_1590.x, x_1590.y) * vec4<f32>(x_1593.x, x_1593.y, x_1593.x, x_1593.y)) + vec4<f32>(x_1596.x, x_1596.y, x_1596.x, x_1596.z));
        let x_1600 : f32 = u_xlat9.w;
        u_xlat11.y = x_1600;
        let x_1603 : vec4<f32> = u_xlat6;
        let x_1606 : vec4<f32> = x_799.x_MainLightShadowmapSize;
        let x_1609 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1603.x, x_1603.y, x_1603.x, x_1603.y) * vec4<f32>(x_1606.x, x_1606.y, x_1606.x, x_1606.y)) + vec4<f32>(x_1609.x, x_1609.y, x_1609.z, x_1609.y));
        let x_1613 : vec4<f32> = u_xlat6;
        let x_1616 : vec4<f32> = x_799.x_MainLightShadowmapSize;
        let x_1619 : vec4<f32> = u_xlat11;
        let x_1621 : vec2<f32> = ((vec2<f32>(x_1613.x, x_1613.y) * vec2<f32>(x_1616.x, x_1616.y)) + vec2<f32>(x_1619.w, x_1619.y));
        let x_1622 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1621.x, x_1621.y, x_1622.z);
        let x_1625 : f32 = u_xlat11.y;
        u_xlat8.w = x_1625;
        let x_1628 : vec4<f32> = u_xlat6;
        let x_1631 : vec4<f32> = x_799.x_MainLightShadowmapSize;
        let x_1634 : vec4<f32> = u_xlat8;
        u_xlat54 = ((vec2<f32>(x_1628.x, x_1628.y) * vec2<f32>(x_1631.x, x_1631.y)) + vec2<f32>(x_1634.x, x_1634.w));
        let x_1637 : vec4<f32> = u_xlat11;
        let x_1638 : vec3<f32> = vec3<f32>(x_1637.x, x_1637.z, x_1637.w);
        let x_1639 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1638.x, x_1639.y, x_1638.y, x_1638.z);
        let x_1641 : vec4<f32> = u_xlat6;
        let x_1644 : vec4<f32> = x_799.x_MainLightShadowmapSize;
        let x_1647 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1641.x, x_1641.y, x_1641.x, x_1641.y) * vec4<f32>(x_1644.x, x_1644.y, x_1644.x, x_1644.y)) + vec4<f32>(x_1647.x, x_1647.y, x_1647.z, x_1647.y));
        let x_1651 : vec4<f32> = u_xlat6;
        let x_1654 : vec4<f32> = x_799.x_MainLightShadowmapSize;
        let x_1657 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_1651.x, x_1651.y) * vec2<f32>(x_1654.x, x_1654.y)) + vec2<f32>(x_1657.w, x_1657.y));
        let x_1661 : f32 = u_xlat8.x;
        u_xlat9.x = x_1661;
        let x_1663 : vec4<f32> = u_xlat6;
        let x_1666 : vec4<f32> = x_799.x_MainLightShadowmapSize;
        let x_1669 : vec4<f32> = u_xlat9;
        let x_1671 : vec2<f32> = ((vec2<f32>(x_1663.x, x_1663.y) * vec2<f32>(x_1666.x, x_1666.y)) + vec2<f32>(x_1669.x, x_1669.y));
        let x_1672 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1671.x, x_1671.y, x_1672.z, x_1672.w);
        let x_1675 : vec4<f32> = u_xlat7;
        let x_1677 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1675.x, x_1675.x, x_1675.x, x_1675.x) * x_1677);
        let x_1680 : vec4<f32> = u_xlat7;
        let x_1682 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1680.y, x_1680.y, x_1680.y, x_1680.y) * x_1682);
        let x_1685 : vec4<f32> = u_xlat7;
        let x_1687 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1685.z, x_1685.z, x_1685.z, x_1685.z) * x_1687);
        let x_1689 : vec4<f32> = u_xlat7;
        let x_1691 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1689.w, x_1689.w, x_1689.w, x_1689.w) * x_1691);
        let x_1694 : vec4<f32> = u_xlat12;
        let x_1695 : vec2<f32> = vec2<f32>(x_1694.x, x_1694.y);
        let x_1697 : f32 = vs_INTERP8.z;
        txVec13 = vec3<f32>(x_1695.x, x_1695.y, x_1697);
        let x_1704 : vec3<f32> = txVec13;
        let x_1706 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1704.xy, x_1704.z);
        u_xlat65 = x_1706;
        let x_1708 : vec4<f32> = u_xlat12;
        let x_1709 : vec2<f32> = vec2<f32>(x_1708.z, x_1708.w);
        let x_1711 : f32 = vs_INTERP8.z;
        txVec14 = vec3<f32>(x_1709.x, x_1709.y, x_1711);
        let x_1718 : vec3<f32> = txVec14;
        let x_1720 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1718.xy, x_1718.z);
        u_xlat8.x = x_1720;
        let x_1723 : f32 = u_xlat8.x;
        let x_1725 : f32 = u_xlat17.y;
        u_xlat8.x = (x_1723 * x_1725);
        let x_1729 : f32 = u_xlat17.x;
        let x_1730 : f32 = u_xlat65;
        let x_1733 : f32 = u_xlat8.x;
        u_xlat65 = ((x_1729 * x_1730) + x_1733);
        let x_1736 : vec2<f32> = u_xlat46;
        let x_1738 : f32 = vs_INTERP8.z;
        txVec15 = vec3<f32>(x_1736.x, x_1736.y, x_1738);
        let x_1745 : vec3<f32> = txVec15;
        let x_1747 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1745.xy, x_1745.z);
        u_xlat46.x = x_1747;
        let x_1750 : f32 = u_xlat17.z;
        let x_1752 : f32 = u_xlat46.x;
        let x_1754 : f32 = u_xlat65;
        u_xlat65 = ((x_1750 * x_1752) + x_1754);
        let x_1757 : vec4<f32> = u_xlat15;
        let x_1758 : vec2<f32> = vec2<f32>(x_1757.x, x_1757.y);
        let x_1760 : f32 = vs_INTERP8.z;
        txVec16 = vec3<f32>(x_1758.x, x_1758.y, x_1760);
        let x_1767 : vec3<f32> = txVec16;
        let x_1769 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1767.xy, x_1767.z);
        u_xlat46.x = x_1769;
        let x_1772 : f32 = u_xlat17.w;
        let x_1774 : f32 = u_xlat46.x;
        let x_1776 : f32 = u_xlat65;
        u_xlat65 = ((x_1772 * x_1774) + x_1776);
        let x_1779 : vec4<f32> = u_xlat13;
        let x_1780 : vec2<f32> = vec2<f32>(x_1779.x, x_1779.y);
        let x_1782 : f32 = vs_INTERP8.z;
        txVec17 = vec3<f32>(x_1780.x, x_1780.y, x_1782);
        let x_1789 : vec3<f32> = txVec17;
        let x_1791 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1789.xy, x_1789.z);
        u_xlat46.x = x_1791;
        let x_1794 : f32 = u_xlat18.x;
        let x_1796 : f32 = u_xlat46.x;
        let x_1798 : f32 = u_xlat65;
        u_xlat65 = ((x_1794 * x_1796) + x_1798);
        let x_1801 : vec4<f32> = u_xlat13;
        let x_1802 : vec2<f32> = vec2<f32>(x_1801.z, x_1801.w);
        let x_1804 : f32 = vs_INTERP8.z;
        txVec18 = vec3<f32>(x_1802.x, x_1802.y, x_1804);
        let x_1811 : vec3<f32> = txVec18;
        let x_1813 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1811.xy, x_1811.z);
        u_xlat46.x = x_1813;
        let x_1816 : f32 = u_xlat18.y;
        let x_1818 : f32 = u_xlat46.x;
        let x_1820 : f32 = u_xlat65;
        u_xlat65 = ((x_1816 * x_1818) + x_1820);
        let x_1823 : vec4<f32> = u_xlat14;
        let x_1824 : vec2<f32> = vec2<f32>(x_1823.x, x_1823.y);
        let x_1826 : f32 = vs_INTERP8.z;
        txVec19 = vec3<f32>(x_1824.x, x_1824.y, x_1826);
        let x_1833 : vec3<f32> = txVec19;
        let x_1835 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1833.xy, x_1833.z);
        u_xlat46.x = x_1835;
        let x_1838 : f32 = u_xlat18.z;
        let x_1840 : f32 = u_xlat46.x;
        let x_1842 : f32 = u_xlat65;
        u_xlat65 = ((x_1838 * x_1840) + x_1842);
        let x_1845 : vec4<f32> = u_xlat15;
        let x_1846 : vec2<f32> = vec2<f32>(x_1845.z, x_1845.w);
        let x_1848 : f32 = vs_INTERP8.z;
        txVec20 = vec3<f32>(x_1846.x, x_1846.y, x_1848);
        let x_1855 : vec3<f32> = txVec20;
        let x_1857 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1855.xy, x_1855.z);
        u_xlat46.x = x_1857;
        let x_1860 : f32 = u_xlat18.w;
        let x_1862 : f32 = u_xlat46.x;
        let x_1864 : f32 = u_xlat65;
        u_xlat65 = ((x_1860 * x_1862) + x_1864);
        let x_1867 : vec4<f32> = u_xlat16;
        let x_1868 : vec2<f32> = vec2<f32>(x_1867.x, x_1867.y);
        let x_1870 : f32 = vs_INTERP8.z;
        txVec21 = vec3<f32>(x_1868.x, x_1868.y, x_1870);
        let x_1877 : vec3<f32> = txVec21;
        let x_1879 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1877.xy, x_1877.z);
        u_xlat46.x = x_1879;
        let x_1882 : f32 = u_xlat19.x;
        let x_1884 : f32 = u_xlat46.x;
        let x_1886 : f32 = u_xlat65;
        u_xlat65 = ((x_1882 * x_1884) + x_1886);
        let x_1889 : vec4<f32> = u_xlat16;
        let x_1890 : vec2<f32> = vec2<f32>(x_1889.z, x_1889.w);
        let x_1892 : f32 = vs_INTERP8.z;
        txVec22 = vec3<f32>(x_1890.x, x_1890.y, x_1892);
        let x_1899 : vec3<f32> = txVec22;
        let x_1901 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1899.xy, x_1899.z);
        u_xlat46.x = x_1901;
        let x_1904 : f32 = u_xlat19.y;
        let x_1906 : f32 = u_xlat46.x;
        let x_1908 : f32 = u_xlat65;
        u_xlat65 = ((x_1904 * x_1906) + x_1908);
        let x_1911 : vec3<f32> = u_xlat28;
        let x_1912 : vec2<f32> = vec2<f32>(x_1911.x, x_1911.y);
        let x_1914 : f32 = vs_INTERP8.z;
        txVec23 = vec3<f32>(x_1912.x, x_1912.y, x_1914);
        let x_1921 : vec3<f32> = txVec23;
        let x_1923 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1921.xy, x_1921.z);
        u_xlat46.x = x_1923;
        let x_1926 : f32 = u_xlat19.z;
        let x_1928 : f32 = u_xlat46.x;
        let x_1930 : f32 = u_xlat65;
        u_xlat65 = ((x_1926 * x_1928) + x_1930);
        let x_1933 : vec2<f32> = u_xlat54;
        let x_1935 : f32 = vs_INTERP8.z;
        txVec24 = vec3<f32>(x_1933.x, x_1933.y, x_1935);
        let x_1942 : vec3<f32> = txVec24;
        let x_1944 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1942.xy, x_1942.z);
        u_xlat46.x = x_1944;
        let x_1947 : f32 = u_xlat19.w;
        let x_1949 : f32 = u_xlat46.x;
        let x_1951 : f32 = u_xlat65;
        u_xlat65 = ((x_1947 * x_1949) + x_1951);
        let x_1954 : vec4<f32> = u_xlat11;
        let x_1955 : vec2<f32> = vec2<f32>(x_1954.x, x_1954.y);
        let x_1957 : f32 = vs_INTERP8.z;
        txVec25 = vec3<f32>(x_1955.x, x_1955.y, x_1957);
        let x_1964 : vec3<f32> = txVec25;
        let x_1966 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1964.xy, x_1964.z);
        u_xlat46.x = x_1966;
        let x_1969 : f32 = u_xlat7.x;
        let x_1971 : f32 = u_xlat46.x;
        let x_1973 : f32 = u_xlat65;
        u_xlat65 = ((x_1969 * x_1971) + x_1973);
        let x_1976 : vec4<f32> = u_xlat11;
        let x_1977 : vec2<f32> = vec2<f32>(x_1976.z, x_1976.w);
        let x_1979 : f32 = vs_INTERP8.z;
        txVec26 = vec3<f32>(x_1977.x, x_1977.y, x_1979);
        let x_1986 : vec3<f32> = txVec26;
        let x_1988 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1986.xy, x_1986.z);
        u_xlat46.x = x_1988;
        let x_1991 : f32 = u_xlat7.y;
        let x_1993 : f32 = u_xlat46.x;
        let x_1995 : f32 = u_xlat65;
        u_xlat65 = ((x_1991 * x_1993) + x_1995);
        let x_1998 : vec2<f32> = u_xlat49;
        let x_2000 : f32 = vs_INTERP8.z;
        txVec27 = vec3<f32>(x_1998.x, x_1998.y, x_2000);
        let x_2007 : vec3<f32> = txVec27;
        let x_2009 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2007.xy, x_2007.z);
        u_xlat46.x = x_2009;
        let x_2012 : f32 = u_xlat7.z;
        let x_2014 : f32 = u_xlat46.x;
        let x_2016 : f32 = u_xlat65;
        u_xlat65 = ((x_2012 * x_2014) + x_2016);
        let x_2019 : vec4<f32> = u_xlat6;
        let x_2020 : vec2<f32> = vec2<f32>(x_2019.x, x_2019.y);
        let x_2022 : f32 = vs_INTERP8.z;
        txVec28 = vec3<f32>(x_2020.x, x_2020.y, x_2022);
        let x_2029 : vec3<f32> = txVec28;
        let x_2031 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2029.xy, x_2029.z);
        u_xlat6.x = x_2031;
        let x_2034 : f32 = u_xlat7.w;
        let x_2036 : f32 = u_xlat6.x;
        let x_2038 : f32 = u_xlat65;
        u_xlat64 = ((x_2034 * x_2036) + x_2038);
      }
    }
  } else {
    let x_2042 : vec4<f32> = vs_INTERP8;
    let x_2043 : vec2<f32> = vec2<f32>(x_2042.x, x_2042.y);
    let x_2045 : f32 = vs_INTERP8.z;
    txVec29 = vec3<f32>(x_2043.x, x_2043.y, x_2045);
    let x_2052 : vec3<f32> = txVec29;
    let x_2054 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2052.xy, x_2052.z);
    u_xlat64 = x_2054;
  }
  let x_2056 : f32 = x_799.x_MainLightShadowParams.x;
  u_xlat65 = (-(x_2056) + 1.0f);
  let x_2059 : f32 = u_xlat64;
  let x_2061 : f32 = x_799.x_MainLightShadowParams.x;
  let x_2063 : f32 = u_xlat65;
  u_xlat64 = ((x_2059 * x_2061) + x_2063);
  let x_2066 : f32 = vs_INTERP8.z;
  u_xlatb65 = (0.0f >= x_2066);
  let x_2070 : f32 = vs_INTERP8.z;
  u_xlatb6 = (x_2070 >= 1.0f);
  let x_2072 : bool = u_xlatb65;
  let x_2073 : bool = u_xlatb6;
  u_xlatb65 = (x_2072 | x_2073);
  let x_2075 : bool = u_xlatb65;
  let x_2076 : f32 = u_xlat64;
  u_xlat64 = select(x_2076, 1.0f, x_2075);
  let x_2078 : vec3<f32> = vs_INTERP0;
  let x_2080 : vec3<f32> = x_146.x_WorldSpaceCameraPos;
  let x_2082 : vec3<f32> = (x_2078 + -(x_2080));
  let x_2083 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2082.x, x_2082.y, x_2082.z, x_2083.w);
  let x_2085 : vec4<f32> = u_xlat6;
  let x_2087 : vec4<f32> = u_xlat6;
  u_xlat65 = dot(vec3<f32>(x_2085.x, x_2085.y, x_2085.z), vec3<f32>(x_2087.x, x_2087.y, x_2087.z));
  let x_2090 : f32 = u_xlat65;
  let x_2092 : f32 = x_799.x_MainLightShadowParams.z;
  let x_2095 : f32 = x_799.x_MainLightShadowParams.w;
  u_xlat65 = ((x_2090 * x_2092) + x_2095);
  let x_2097 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2097, 0.0f, 1.0f);
  let x_2099 : f32 = u_xlat64;
  u_xlat6.x = (-(x_2099) + 1.0f);
  let x_2103 : f32 = u_xlat65;
  let x_2105 : f32 = u_xlat6.x;
  let x_2107 : f32 = u_xlat64;
  u_xlat64 = ((x_2103 * x_2105) + x_2107);
  let x_2115 : f32 = x_2113.x_MainLightCookieTextureFormat;
  u_xlatb65 = !((x_2115 == -1.0f));
  let x_2117 : bool = u_xlatb65;
  if (x_2117) {
    let x_2120 : vec3<f32> = vs_INTERP0;
    let x_2123 : vec4<f32> = x_2113.x_MainLightWorldToLight[1i];
    let x_2125 : vec2<f32> = (vec2<f32>(x_2120.y, x_2120.y) * vec2<f32>(x_2123.x, x_2123.y));
    let x_2126 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2125.x, x_2125.y, x_2126.z, x_2126.w);
    let x_2129 : vec4<f32> = x_2113.x_MainLightWorldToLight[0i];
    let x_2131 : vec3<f32> = vs_INTERP0;
    let x_2134 : vec4<f32> = u_xlat6;
    let x_2136 : vec2<f32> = ((vec2<f32>(x_2129.x, x_2129.y) * vec2<f32>(x_2131.x, x_2131.x)) + vec2<f32>(x_2134.x, x_2134.y));
    let x_2137 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2136.x, x_2136.y, x_2137.z, x_2137.w);
    let x_2140 : vec4<f32> = x_2113.x_MainLightWorldToLight[2i];
    let x_2142 : vec3<f32> = vs_INTERP0;
    let x_2145 : vec4<f32> = u_xlat6;
    let x_2147 : vec2<f32> = ((vec2<f32>(x_2140.x, x_2140.y) * vec2<f32>(x_2142.z, x_2142.z)) + vec2<f32>(x_2145.x, x_2145.y));
    let x_2148 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2147.x, x_2147.y, x_2148.z, x_2148.w);
    let x_2150 : vec4<f32> = u_xlat6;
    let x_2153 : vec4<f32> = x_2113.x_MainLightWorldToLight[3i];
    let x_2155 : vec2<f32> = (vec2<f32>(x_2150.x, x_2150.y) + vec2<f32>(x_2153.x, x_2153.y));
    let x_2156 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2155.x, x_2155.y, x_2156.z, x_2156.w);
    let x_2158 : vec4<f32> = u_xlat6;
    let x_2161 : vec2<f32> = ((vec2<f32>(x_2158.x, x_2158.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2162 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2161.x, x_2161.y, x_2162.z, x_2162.w);
    let x_2169 : vec4<f32> = u_xlat6;
    let x_2172 : f32 = x_146.x_GlobalMipBias.x;
    let x_2173 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2169.x, x_2169.y), x_2172);
    u_xlat6 = x_2173;
    let x_2176 : f32 = x_2113.x_MainLightCookieTextureFormat;
    let x_2178 : f32 = x_2113.x_MainLightCookieTextureFormat;
    let x_2180 : f32 = x_2113.x_MainLightCookieTextureFormat;
    let x_2182 : f32 = x_2113.x_MainLightCookieTextureFormat;
    let x_2183 : vec4<f32> = vec4<f32>(x_2176, x_2178, x_2180, x_2182);
    let x_2191 : vec4<bool> = (vec4<f32>(x_2183.x, x_2183.y, x_2183.z, x_2183.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_2191.x, x_2191.y);
    let x_2194 : bool = u_xlatb7.y;
    if (x_2194) {
      let x_2199 : f32 = u_xlat6.w;
      x_2195 = x_2199;
    } else {
      let x_2202 : f32 = u_xlat6.x;
      x_2195 = x_2202;
    }
    let x_2203 : f32 = x_2195;
    u_xlat65 = x_2203;
    let x_2205 : bool = u_xlatb7.x;
    if (x_2205) {
      let x_2209 : vec4<f32> = u_xlat6;
      x_2206 = vec3<f32>(x_2209.x, x_2209.y, x_2209.z);
    } else {
      let x_2212 : f32 = u_xlat65;
      x_2206 = vec3<f32>(x_2212, x_2212, x_2212);
    }
    let x_2214 : vec3<f32> = x_2206;
    let x_2215 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2214.x, x_2214.y, x_2214.z, x_2215.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_2221 : vec4<f32> = u_xlat6;
  let x_2224 : vec4<f32> = x_146.x_MainLightColor;
  let x_2226 : vec3<f32> = (vec3<f32>(x_2221.x, x_2221.y, x_2221.z) * vec3<f32>(x_2224.x, x_2224.y, x_2224.z));
  let x_2227 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2226.x, x_2226.y, x_2226.z, x_2227.w);
  let x_2229 : f32 = u_xlat44;
  let x_2231 : vec4<f32> = u_xlat6;
  let x_2233 : vec3<f32> = (vec3<f32>(x_2229, x_2229, x_2229) * vec3<f32>(x_2231.x, x_2231.y, x_2231.z));
  let x_2234 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2233.x, x_2233.y, x_2233.z, x_2234.w);
  let x_2236 : vec3<f32> = u_xlat5;
  let x_2238 : vec3<f32> = u_xlat20;
  u_xlat65 = dot(-(x_2236), x_2238);
  let x_2240 : f32 = u_xlat65;
  let x_2241 : f32 = u_xlat65;
  u_xlat65 = (x_2240 + x_2241);
  let x_2243 : vec3<f32> = u_xlat20;
  let x_2244 : f32 = u_xlat65;
  let x_2248 : vec3<f32> = u_xlat5;
  let x_2250 : vec3<f32> = ((x_2243 * -(vec3<f32>(x_2244, x_2244, x_2244))) + -(x_2248));
  let x_2251 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2250.x, x_2250.y, x_2250.z, x_2251.w);
  let x_2253 : vec3<f32> = u_xlat20;
  let x_2254 : vec3<f32> = u_xlat5;
  u_xlat65 = dot(x_2253, x_2254);
  let x_2256 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2256, 0.0f, 1.0f);
  let x_2258 : f32 = u_xlat65;
  u_xlat65 = (-(x_2258) + 1.0f);
  let x_2261 : f32 = u_xlat65;
  let x_2262 : f32 = u_xlat65;
  u_xlat65 = (x_2261 * x_2262);
  let x_2264 : f32 = u_xlat65;
  let x_2265 : f32 = u_xlat65;
  u_xlat65 = (x_2264 * x_2265);
  let x_2268 : f32 = u_xlat61;
  u_xlat66 = ((-(x_2268) * 0.699999988f) + 1.700000048f);
  let x_2274 : f32 = u_xlat61;
  let x_2275 : f32 = u_xlat66;
  u_xlat61 = (x_2274 * x_2275);
  let x_2277 : f32 = u_xlat61;
  u_xlat61 = (x_2277 * 6.0f);
  let x_2288 : vec4<f32> = u_xlat7;
  let x_2290 : f32 = u_xlat61;
  let x_2291 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2288.x, x_2288.y, x_2288.z), x_2290);
  u_xlat7 = x_2291;
  let x_2293 : f32 = u_xlat7.w;
  u_xlat61 = (x_2293 + -1.0f);
  let x_2296 : f32 = x_59.unity_SpecCube0_HDR.w;
  let x_2297 : f32 = u_xlat61;
  u_xlat61 = ((x_2296 * x_2297) + 1.0f);
  let x_2300 : f32 = u_xlat61;
  u_xlat61 = max(x_2300, 0.0f);
  let x_2302 : f32 = u_xlat61;
  u_xlat61 = log2(x_2302);
  let x_2304 : f32 = u_xlat61;
  let x_2306 : f32 = x_59.unity_SpecCube0_HDR.y;
  u_xlat61 = (x_2304 * x_2306);
  let x_2308 : f32 = u_xlat61;
  u_xlat61 = exp2(x_2308);
  let x_2310 : f32 = u_xlat61;
  let x_2312 : f32 = x_59.unity_SpecCube0_HDR.x;
  u_xlat61 = (x_2310 * x_2312);
  let x_2314 : vec4<f32> = u_xlat7;
  let x_2316 : f32 = u_xlat61;
  let x_2318 : vec3<f32> = (vec3<f32>(x_2314.x, x_2314.y, x_2314.z) * vec3<f32>(x_2316, x_2316, x_2316));
  let x_2319 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2318.x, x_2318.y, x_2318.z, x_2319.w);
  let x_2321 : f32 = u_xlat62;
  let x_2323 : f32 = u_xlat62;
  let x_2327 : vec2<f32> = ((vec2<f32>(x_2321, x_2321) * vec2<f32>(x_2323, x_2323)) + vec2<f32>(-1.0f, 1.0f));
  let x_2328 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2327.x, x_2327.y, x_2328.z, x_2328.w);
  let x_2331 : f32 = u_xlat8.y;
  u_xlat61 = (1.0f / x_2331);
  let x_2333 : vec3<f32> = u_xlat2;
  let x_2335 : vec4<f32> = u_xlat0;
  u_xlat28 = (-(x_2333) + vec3<f32>(x_2335.x, x_2335.x, x_2335.x));
  let x_2338 : f32 = u_xlat65;
  let x_2340 : vec3<f32> = u_xlat28;
  let x_2342 : vec3<f32> = u_xlat2;
  u_xlat28 = ((vec3<f32>(x_2338, x_2338, x_2338) * x_2340) + x_2342);
  let x_2344 : f32 = u_xlat61;
  let x_2346 : vec3<f32> = u_xlat28;
  u_xlat28 = (vec3<f32>(x_2344, x_2344, x_2344) * x_2346);
  let x_2348 : vec4<f32> = u_xlat7;
  let x_2350 : vec3<f32> = u_xlat28;
  let x_2351 : vec3<f32> = (vec3<f32>(x_2348.x, x_2348.y, x_2348.z) * x_2350);
  let x_2352 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2351.x, x_2351.y, x_2351.z, x_2352.w);
  let x_2354 : vec4<f32> = u_xlat1;
  let x_2356 : vec3<f32> = u_xlat3;
  let x_2358 : vec4<f32> = u_xlat7;
  let x_2360 : vec3<f32> = ((vec3<f32>(x_2354.x, x_2354.y, x_2354.z) * x_2356) + vec3<f32>(x_2358.x, x_2358.y, x_2358.z));
  let x_2361 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2360.x, x_2360.y, x_2360.z, x_2361.w);
  let x_2363 : f32 = u_xlat64;
  let x_2365 : f32 = x_59.unity_LightData.z;
  u_xlat0.x = (x_2363 * x_2365);
  let x_2368 : vec3<f32> = u_xlat20;
  let x_2370 : vec4<f32> = x_146.x_MainLightPosition;
  u_xlat61 = dot(x_2368, vec3<f32>(x_2370.x, x_2370.y, x_2370.z));
  let x_2373 : f32 = u_xlat61;
  u_xlat61 = clamp(x_2373, 0.0f, 1.0f);
  let x_2376 : f32 = u_xlat0.x;
  let x_2377 : f32 = u_xlat61;
  u_xlat0.x = (x_2376 * x_2377);
  let x_2380 : vec4<f32> = u_xlat0;
  let x_2382 : vec4<f32> = u_xlat6;
  let x_2384 : vec3<f32> = (vec3<f32>(x_2380.x, x_2380.x, x_2380.x) * vec3<f32>(x_2382.x, x_2382.y, x_2382.z));
  let x_2385 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2384.x, x_2384.y, x_2384.z, x_2385.w);
  let x_2387 : vec3<f32> = u_xlat5;
  let x_2389 : vec4<f32> = x_146.x_MainLightPosition;
  let x_2391 : vec3<f32> = (x_2387 + vec3<f32>(x_2389.x, x_2389.y, x_2389.z));
  let x_2392 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2391.x, x_2391.y, x_2391.z, x_2392.w);
  let x_2394 : vec4<f32> = u_xlat7;
  let x_2396 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(vec3<f32>(x_2394.x, x_2394.y, x_2394.z), vec3<f32>(x_2396.x, x_2396.y, x_2396.z));
  let x_2401 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2401, 1.17549435e-37f);
  let x_2405 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_2405);
  let x_2408 : vec4<f32> = u_xlat0;
  let x_2410 : vec4<f32> = u_xlat7;
  let x_2412 : vec3<f32> = (vec3<f32>(x_2408.x, x_2408.x, x_2408.x) * vec3<f32>(x_2410.x, x_2410.y, x_2410.z));
  let x_2413 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2412.x, x_2412.y, x_2412.z, x_2413.w);
  let x_2415 : vec3<f32> = u_xlat20;
  let x_2416 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_2415, vec3<f32>(x_2416.x, x_2416.y, x_2416.z));
  let x_2421 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_2421, 0.0f, 1.0f);
  let x_2425 : vec4<f32> = x_146.x_MainLightPosition;
  let x_2427 : vec4<f32> = u_xlat7;
  u_xlat61 = dot(vec3<f32>(x_2425.x, x_2425.y, x_2425.z), vec3<f32>(x_2427.x, x_2427.y, x_2427.z));
  let x_2430 : f32 = u_xlat61;
  u_xlat61 = clamp(x_2430, 0.0f, 1.0f);
  let x_2433 : f32 = u_xlat0.x;
  let x_2435 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2433 * x_2435);
  let x_2439 : f32 = u_xlat0.x;
  let x_2441 : f32 = u_xlat8.x;
  u_xlat0.x = ((x_2439 * x_2441) + 1.000010014f);
  let x_2446 : f32 = u_xlat61;
  let x_2447 : f32 = u_xlat61;
  u_xlat61 = (x_2446 * x_2447);
  let x_2450 : f32 = u_xlat0.x;
  let x_2452 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2450 * x_2452);
  let x_2455 : f32 = u_xlat61;
  u_xlat61 = max(x_2455, 0.100000001f);
  let x_2458 : f32 = u_xlat0.x;
  let x_2459 : f32 = u_xlat61;
  u_xlat0.x = (x_2458 * x_2459);
  let x_2463 : f32 = u_xlat24.x;
  let x_2465 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2463 * x_2465);
  let x_2468 : f32 = u_xlat63;
  let x_2470 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2468 / x_2470);
  let x_2473 : vec3<f32> = u_xlat2;
  let x_2474 : vec4<f32> = u_xlat0;
  let x_2477 : vec3<f32> = u_xlat3;
  let x_2478 : vec3<f32> = ((x_2473 * vec3<f32>(x_2474.x, x_2474.x, x_2474.x)) + x_2477);
  let x_2479 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2478.x, x_2478.y, x_2478.z, x_2479.w);
  let x_2481 : vec4<f32> = u_xlat6;
  let x_2483 : vec4<f32> = u_xlat7;
  let x_2485 : vec3<f32> = (vec3<f32>(x_2481.x, x_2481.y, x_2481.z) * vec3<f32>(x_2483.x, x_2483.y, x_2483.z));
  let x_2486 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2485.x, x_2485.y, x_2485.z, x_2486.w);
  let x_2489 : f32 = x_146.x_AdditionalLightsCount.x;
  let x_2491 : f32 = x_59.unity_LightData.y;
  u_xlat0.x = min(x_2489, x_2491);
  let x_2497 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_2497));
  let x_2501 : f32 = x_2113.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2503 : f32 = x_2113.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2505 : f32 = x_2113.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2507 : f32 = x_2113.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2508 : vec4<f32> = vec4<f32>(x_2501, x_2503, x_2505, x_2507);
  let x_2514 : vec4<bool> = (vec4<f32>(x_2508.x, x_2508.y, x_2508.z, x_2508.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2514.x, x_2514.y);
  u_xlat28.x = 0.0f;
  u_xlat28.y = 0.0f;
  u_xlat28.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2525 : u32 = u_xlatu_loop_1;
    let x_2526 : u32 = u_xlatu0;
    if ((x_2525 < x_2526)) {
    } else {
      break;
    }
    let x_2529 : u32 = u_xlatu_loop_1;
    u_xlatu62 = (x_2529 >> 2u);
    let x_2533 : u32 = u_xlatu_loop_1;
    u_xlati64 = bitcast<i32>((x_2533 & 3u));
    let x_2536 : u32 = u_xlatu62;
    let x_2539 : vec4<f32> = x_59.unity_LightIndices[bitcast<i32>(x_2536)];
    let x_2549 : i32 = u_xlati64;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2554 : vec4<u32> = indexable[x_2549];
    u_xlat62 = dot(x_2539, bitcast<vec4<f32>>(x_2554));
    let x_2557 : f32 = u_xlat62;
    u_xlatu62 = bitcast<u32>(i32(x_2557));
    let x_2560 : vec3<f32> = vs_INTERP0;
    let x_2572 : u32 = u_xlatu62;
    let x_2575 : vec4<f32> = x_2571.x_AdditionalLightsPosition[bitcast<i32>(x_2572)];
    let x_2578 : u32 = u_xlatu62;
    let x_2581 : vec4<f32> = x_2571.x_AdditionalLightsPosition[bitcast<i32>(x_2578)];
    let x_2583 : vec3<f32> = ((-(x_2560) * vec3<f32>(x_2575.w, x_2575.w, x_2575.w)) + vec3<f32>(x_2581.x, x_2581.y, x_2581.z));
    let x_2584 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2583.x, x_2583.y, x_2583.z, x_2584.w);
    let x_2586 : vec4<f32> = u_xlat9;
    let x_2588 : vec4<f32> = u_xlat9;
    u_xlat64 = dot(vec3<f32>(x_2586.x, x_2586.y, x_2586.z), vec3<f32>(x_2588.x, x_2588.y, x_2588.z));
    let x_2591 : f32 = u_xlat64;
    u_xlat64 = max(x_2591, 6.10351562e-05f);
    let x_2594 : f32 = u_xlat64;
    u_xlat65 = inverseSqrt(x_2594);
    let x_2596 : f32 = u_xlat65;
    let x_2598 : vec4<f32> = u_xlat9;
    let x_2600 : vec3<f32> = (vec3<f32>(x_2596, x_2596, x_2596) * vec3<f32>(x_2598.x, x_2598.y, x_2598.z));
    let x_2601 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2600.x, x_2600.y, x_2600.z, x_2601.w);
    let x_2603 : f32 = u_xlat64;
    u_xlat66 = (1.0f / x_2603);
    let x_2605 : f32 = u_xlat64;
    let x_2606 : u32 = u_xlatu62;
    let x_2609 : f32 = x_2571.x_AdditionalLightsAttenuation[bitcast<i32>(x_2606)].x;
    u_xlat64 = (x_2605 * x_2609);
    let x_2611 : f32 = u_xlat64;
    let x_2613 : f32 = u_xlat64;
    u_xlat64 = ((-(x_2611) * x_2613) + 1.0f);
    let x_2616 : f32 = u_xlat64;
    u_xlat64 = max(x_2616, 0.0f);
    let x_2618 : f32 = u_xlat64;
    let x_2619 : f32 = u_xlat64;
    u_xlat64 = (x_2618 * x_2619);
    let x_2621 : f32 = u_xlat64;
    let x_2622 : f32 = u_xlat66;
    u_xlat64 = (x_2621 * x_2622);
    let x_2624 : u32 = u_xlatu62;
    let x_2627 : vec4<f32> = x_2571.x_AdditionalLightsSpotDir[bitcast<i32>(x_2624)];
    let x_2629 : vec4<f32> = u_xlat10;
    u_xlat66 = dot(vec3<f32>(x_2627.x, x_2627.y, x_2627.z), vec3<f32>(x_2629.x, x_2629.y, x_2629.z));
    let x_2632 : f32 = u_xlat66;
    let x_2633 : u32 = u_xlatu62;
    let x_2636 : f32 = x_2571.x_AdditionalLightsAttenuation[bitcast<i32>(x_2633)].z;
    let x_2638 : u32 = u_xlatu62;
    let x_2641 : f32 = x_2571.x_AdditionalLightsAttenuation[bitcast<i32>(x_2638)].w;
    u_xlat66 = ((x_2632 * x_2636) + x_2641);
    let x_2643 : f32 = u_xlat66;
    u_xlat66 = clamp(x_2643, 0.0f, 1.0f);
    let x_2645 : f32 = u_xlat66;
    let x_2646 : f32 = u_xlat66;
    u_xlat66 = (x_2645 * x_2646);
    let x_2648 : f32 = u_xlat64;
    let x_2649 : f32 = u_xlat66;
    u_xlat64 = (x_2648 * x_2649);
    let x_2652 : u32 = u_xlatu62;
    u_xlatu66 = (x_2652 >> 5u);
    let x_2655 : u32 = u_xlatu62;
    u_xlati47 = (1i << bitcast<u32>((bitcast<i32>(x_2655) & 31i)));
    let x_2661 : i32 = u_xlati47;
    let x_2663 : u32 = u_xlatu66;
    let x_2666 : f32 = x_2113.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2663)].el;
    u_xlati66 = bitcast<i32>((bitcast<u32>(x_2661) & bitcast<u32>(x_2666)));
    let x_2670 : i32 = u_xlati66;
    if ((x_2670 != 0i)) {
      let x_2680 : u32 = u_xlatu62;
      let x_2683 : f32 = x_2679.x_AdditionalLightsLightTypes[bitcast<i32>(x_2680)].el;
      u_xlati66 = i32(x_2683);
      let x_2685 : i32 = u_xlati66;
      u_xlati47 = select(1i, 0i, (x_2685 != 0i));
      let x_2689 : u32 = u_xlatu62;
      u_xlati67 = (bitcast<i32>(x_2689) << bitcast<u32>(2i));
      let x_2692 : i32 = u_xlati47;
      if ((x_2692 != 0i)) {
        let x_2696 : vec3<f32> = vs_INTERP0;
        let x_2698 : i32 = u_xlati67;
        let x_2701 : i32 = u_xlati67;
        let x_2705 : vec4<f32> = x_2679.x_AdditionalLightsWorldToLights[((x_2698 + 1i) / 4i)][((x_2701 + 1i) % 4i)];
        let x_2707 : vec3<f32> = (vec3<f32>(x_2696.y, x_2696.y, x_2696.y) * vec3<f32>(x_2705.x, x_2705.y, x_2705.w));
        let x_2708 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2707.x, x_2707.y, x_2707.z, x_2708.w);
        let x_2710 : i32 = u_xlati67;
        let x_2712 : i32 = u_xlati67;
        let x_2715 : vec4<f32> = x_2679.x_AdditionalLightsWorldToLights[(x_2710 / 4i)][(x_2712 % 4i)];
        let x_2717 : vec3<f32> = vs_INTERP0;
        let x_2720 : vec4<f32> = u_xlat11;
        let x_2722 : vec3<f32> = ((vec3<f32>(x_2715.x, x_2715.y, x_2715.w) * vec3<f32>(x_2717.x, x_2717.x, x_2717.x)) + vec3<f32>(x_2720.x, x_2720.y, x_2720.z));
        let x_2723 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2722.x, x_2722.y, x_2722.z, x_2723.w);
        let x_2725 : i32 = u_xlati67;
        let x_2728 : i32 = u_xlati67;
        let x_2732 : vec4<f32> = x_2679.x_AdditionalLightsWorldToLights[((x_2725 + 2i) / 4i)][((x_2728 + 2i) % 4i)];
        let x_2734 : vec3<f32> = vs_INTERP0;
        let x_2737 : vec4<f32> = u_xlat11;
        let x_2739 : vec3<f32> = ((vec3<f32>(x_2732.x, x_2732.y, x_2732.w) * vec3<f32>(x_2734.z, x_2734.z, x_2734.z)) + vec3<f32>(x_2737.x, x_2737.y, x_2737.z));
        let x_2740 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2739.x, x_2739.y, x_2739.z, x_2740.w);
        let x_2742 : vec4<f32> = u_xlat11;
        let x_2744 : i32 = u_xlati67;
        let x_2747 : i32 = u_xlati67;
        let x_2751 : vec4<f32> = x_2679.x_AdditionalLightsWorldToLights[((x_2744 + 3i) / 4i)][((x_2747 + 3i) % 4i)];
        let x_2753 : vec3<f32> = (vec3<f32>(x_2742.x, x_2742.y, x_2742.z) + vec3<f32>(x_2751.x, x_2751.y, x_2751.w));
        let x_2754 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2753.x, x_2753.y, x_2753.z, x_2754.w);
        let x_2756 : vec4<f32> = u_xlat11;
        let x_2758 : vec4<f32> = u_xlat11;
        let x_2760 : vec2<f32> = (vec2<f32>(x_2756.x, x_2756.y) / vec2<f32>(x_2758.z, x_2758.z));
        let x_2761 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2760.x, x_2760.y, x_2761.z, x_2761.w);
        let x_2763 : vec4<f32> = u_xlat11;
        let x_2766 : vec2<f32> = ((vec2<f32>(x_2763.x, x_2763.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2767 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2766.x, x_2766.y, x_2767.z, x_2767.w);
        let x_2769 : vec4<f32> = u_xlat11;
        let x_2773 : vec2<f32> = clamp(vec2<f32>(x_2769.x, x_2769.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2774 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2773.x, x_2773.y, x_2774.z, x_2774.w);
        let x_2776 : u32 = u_xlatu62;
        let x_2779 : vec4<f32> = x_2679.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2776)];
        let x_2781 : vec4<f32> = u_xlat11;
        let x_2784 : u32 = u_xlatu62;
        let x_2787 : vec4<f32> = x_2679.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2784)];
        let x_2789 : vec2<f32> = ((vec2<f32>(x_2779.x, x_2779.y) * vec2<f32>(x_2781.x, x_2781.y)) + vec2<f32>(x_2787.z, x_2787.w));
        let x_2790 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2789.x, x_2789.y, x_2790.z, x_2790.w);
      } else {
        let x_2794 : i32 = u_xlati66;
        u_xlatb66 = (x_2794 == 1i);
        let x_2796 : bool = u_xlatb66;
        u_xlati66 = select(0i, 1i, x_2796);
        let x_2798 : i32 = u_xlati66;
        if ((x_2798 != 0i)) {
          let x_2803 : vec3<f32> = vs_INTERP0;
          let x_2805 : i32 = u_xlati67;
          let x_2808 : i32 = u_xlati67;
          let x_2812 : vec4<f32> = x_2679.x_AdditionalLightsWorldToLights[((x_2805 + 1i) / 4i)][((x_2808 + 1i) % 4i)];
          u_xlat51 = (vec2<f32>(x_2803.y, x_2803.y) * vec2<f32>(x_2812.x, x_2812.y));
          let x_2815 : i32 = u_xlati67;
          let x_2817 : i32 = u_xlati67;
          let x_2820 : vec4<f32> = x_2679.x_AdditionalLightsWorldToLights[(x_2815 / 4i)][(x_2817 % 4i)];
          let x_2822 : vec3<f32> = vs_INTERP0;
          let x_2825 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_2820.x, x_2820.y) * vec2<f32>(x_2822.x, x_2822.x)) + x_2825);
          let x_2827 : i32 = u_xlati67;
          let x_2830 : i32 = u_xlati67;
          let x_2834 : vec4<f32> = x_2679.x_AdditionalLightsWorldToLights[((x_2827 + 2i) / 4i)][((x_2830 + 2i) % 4i)];
          let x_2836 : vec3<f32> = vs_INTERP0;
          let x_2839 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_2834.x, x_2834.y) * vec2<f32>(x_2836.z, x_2836.z)) + x_2839);
          let x_2841 : vec2<f32> = u_xlat51;
          let x_2842 : i32 = u_xlati67;
          let x_2845 : i32 = u_xlati67;
          let x_2849 : vec4<f32> = x_2679.x_AdditionalLightsWorldToLights[((x_2842 + 3i) / 4i)][((x_2845 + 3i) % 4i)];
          u_xlat51 = (x_2841 + vec2<f32>(x_2849.x, x_2849.y));
          let x_2852 : vec2<f32> = u_xlat51;
          u_xlat51 = ((x_2852 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2855 : vec2<f32> = u_xlat51;
          u_xlat51 = fract(x_2855);
          let x_2857 : u32 = u_xlatu62;
          let x_2860 : vec4<f32> = x_2679.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2857)];
          let x_2862 : vec2<f32> = u_xlat51;
          let x_2864 : u32 = u_xlatu62;
          let x_2867 : vec4<f32> = x_2679.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2864)];
          let x_2869 : vec2<f32> = ((vec2<f32>(x_2860.x, x_2860.y) * x_2862) + vec2<f32>(x_2867.z, x_2867.w));
          let x_2870 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2869.x, x_2869.y, x_2870.z, x_2870.w);
        } else {
          let x_2873 : vec3<f32> = vs_INTERP0;
          let x_2875 : i32 = u_xlati67;
          let x_2878 : i32 = u_xlati67;
          let x_2882 : vec4<f32> = x_2679.x_AdditionalLightsWorldToLights[((x_2875 + 1i) / 4i)][((x_2878 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2873.y, x_2873.y, x_2873.y, x_2873.y) * x_2882);
          let x_2884 : i32 = u_xlati67;
          let x_2886 : i32 = u_xlati67;
          let x_2889 : vec4<f32> = x_2679.x_AdditionalLightsWorldToLights[(x_2884 / 4i)][(x_2886 % 4i)];
          let x_2890 : vec3<f32> = vs_INTERP0;
          let x_2893 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2889 * vec4<f32>(x_2890.x, x_2890.x, x_2890.x, x_2890.x)) + x_2893);
          let x_2895 : i32 = u_xlati67;
          let x_2898 : i32 = u_xlati67;
          let x_2902 : vec4<f32> = x_2679.x_AdditionalLightsWorldToLights[((x_2895 + 2i) / 4i)][((x_2898 + 2i) % 4i)];
          let x_2903 : vec3<f32> = vs_INTERP0;
          let x_2906 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2902 * vec4<f32>(x_2903.z, x_2903.z, x_2903.z, x_2903.z)) + x_2906);
          let x_2908 : vec4<f32> = u_xlat12;
          let x_2909 : i32 = u_xlati67;
          let x_2912 : i32 = u_xlati67;
          let x_2916 : vec4<f32> = x_2679.x_AdditionalLightsWorldToLights[((x_2909 + 3i) / 4i)][((x_2912 + 3i) % 4i)];
          u_xlat12 = (x_2908 + x_2916);
          let x_2918 : vec4<f32> = u_xlat12;
          let x_2920 : vec4<f32> = u_xlat12;
          let x_2922 : vec3<f32> = (vec3<f32>(x_2918.x, x_2918.y, x_2918.z) / vec3<f32>(x_2920.w, x_2920.w, x_2920.w));
          let x_2923 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2922.x, x_2922.y, x_2922.z, x_2923.w);
          let x_2925 : vec4<f32> = u_xlat12;
          let x_2927 : vec4<f32> = u_xlat12;
          u_xlat66 = dot(vec3<f32>(x_2925.x, x_2925.y, x_2925.z), vec3<f32>(x_2927.x, x_2927.y, x_2927.z));
          let x_2930 : f32 = u_xlat66;
          u_xlat66 = inverseSqrt(x_2930);
          let x_2932 : f32 = u_xlat66;
          let x_2934 : vec4<f32> = u_xlat12;
          let x_2936 : vec3<f32> = (vec3<f32>(x_2932, x_2932, x_2932) * vec3<f32>(x_2934.x, x_2934.y, x_2934.z));
          let x_2937 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2936.x, x_2936.y, x_2936.z, x_2937.w);
          let x_2939 : vec4<f32> = u_xlat12;
          u_xlat66 = dot(abs(vec3<f32>(x_2939.x, x_2939.y, x_2939.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2944 : f32 = u_xlat66;
          u_xlat66 = max(x_2944, 0.000001f);
          let x_2947 : f32 = u_xlat66;
          u_xlat66 = (1.0f / x_2947);
          let x_2949 : f32 = u_xlat66;
          let x_2951 : vec4<f32> = u_xlat12;
          let x_2953 : vec3<f32> = (vec3<f32>(x_2949, x_2949, x_2949) * vec3<f32>(x_2951.z, x_2951.x, x_2951.y));
          let x_2954 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2953.x, x_2953.y, x_2953.z, x_2954.w);
          let x_2957 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2957);
          let x_2961 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2961, 0.0f, 1.0f);
          let x_2965 : vec4<f32> = u_xlat13;
          let x_2968 : vec4<bool> = (vec4<f32>(x_2965.y, x_2965.z, x_2965.y, x_2965.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb47 = vec2<bool>(x_2968.x, x_2968.y);
          let x_2972 : bool = u_xlatb47.x;
          if (x_2972) {
            let x_2977 : f32 = u_xlat13.x;
            x_2973 = x_2977;
          } else {
            let x_2980 : f32 = u_xlat13.x;
            x_2973 = -(x_2980);
          }
          let x_2982 : f32 = x_2973;
          u_xlat47.x = x_2982;
          let x_2985 : bool = u_xlatb47.y;
          if (x_2985) {
            let x_2990 : f32 = u_xlat13.x;
            x_2986 = x_2990;
          } else {
            let x_2993 : f32 = u_xlat13.x;
            x_2986 = -(x_2993);
          }
          let x_2995 : f32 = x_2986;
          u_xlat47.y = x_2995;
          let x_2997 : vec4<f32> = u_xlat12;
          let x_2999 : f32 = u_xlat66;
          let x_3002 : vec2<f32> = u_xlat47;
          u_xlat47 = ((vec2<f32>(x_2997.x, x_2997.y) * vec2<f32>(x_2999, x_2999)) + x_3002);
          let x_3004 : vec2<f32> = u_xlat47;
          u_xlat47 = ((x_3004 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3007 : vec2<f32> = u_xlat47;
          u_xlat47 = clamp(x_3007, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3011 : u32 = u_xlatu62;
          let x_3014 : vec4<f32> = x_2679.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3011)];
          let x_3016 : vec2<f32> = u_xlat47;
          let x_3018 : u32 = u_xlatu62;
          let x_3021 : vec4<f32> = x_2679.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3018)];
          let x_3023 : vec2<f32> = ((vec2<f32>(x_3014.x, x_3014.y) * x_3016) + vec2<f32>(x_3021.z, x_3021.w));
          let x_3024 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3023.x, x_3023.y, x_3024.z, x_3024.w);
        }
      }
      let x_3031 : vec4<f32> = u_xlat11;
      let x_3034 : f32 = x_146.x_GlobalMipBias.x;
      let x_3035 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_3031.x, x_3031.y), x_3034);
      u_xlat11 = x_3035;
      let x_3037 : bool = u_xlatb7.y;
      if (x_3037) {
        let x_3042 : f32 = u_xlat11.w;
        x_3038 = x_3042;
      } else {
        let x_3045 : f32 = u_xlat11.x;
        x_3038 = x_3045;
      }
      let x_3046 : f32 = x_3038;
      u_xlat66 = x_3046;
      let x_3048 : bool = u_xlatb7.x;
      if (x_3048) {
        let x_3052 : vec4<f32> = u_xlat11;
        x_3049 = vec3<f32>(x_3052.x, x_3052.y, x_3052.z);
      } else {
        let x_3055 : f32 = u_xlat66;
        x_3049 = vec3<f32>(x_3055, x_3055, x_3055);
      }
      let x_3057 : vec3<f32> = x_3049;
      let x_3058 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3057.x, x_3057.y, x_3057.z, x_3058.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_3064 : vec4<f32> = u_xlat11;
    let x_3066 : u32 = u_xlatu62;
    let x_3069 : vec4<f32> = x_2571.x_AdditionalLightsColor[bitcast<i32>(x_3066)];
    let x_3071 : vec3<f32> = (vec3<f32>(x_3064.x, x_3064.y, x_3064.z) * vec3<f32>(x_3069.x, x_3069.y, x_3069.z));
    let x_3072 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3071.x, x_3071.y, x_3071.z, x_3072.w);
    let x_3074 : f32 = u_xlat44;
    let x_3076 : vec4<f32> = u_xlat11;
    let x_3078 : vec3<f32> = (vec3<f32>(x_3074, x_3074, x_3074) * vec3<f32>(x_3076.x, x_3076.y, x_3076.z));
    let x_3079 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3078.x, x_3078.y, x_3078.z, x_3079.w);
    let x_3081 : vec3<f32> = u_xlat20;
    let x_3082 : vec4<f32> = u_xlat10;
    u_xlat62 = dot(x_3081, vec3<f32>(x_3082.x, x_3082.y, x_3082.z));
    let x_3085 : f32 = u_xlat62;
    u_xlat62 = clamp(x_3085, 0.0f, 1.0f);
    let x_3087 : f32 = u_xlat62;
    let x_3088 : f32 = u_xlat64;
    u_xlat62 = (x_3087 * x_3088);
    let x_3090 : f32 = u_xlat62;
    let x_3092 : vec4<f32> = u_xlat11;
    let x_3094 : vec3<f32> = (vec3<f32>(x_3090, x_3090, x_3090) * vec3<f32>(x_3092.x, x_3092.y, x_3092.z));
    let x_3095 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3094.x, x_3094.y, x_3094.z, x_3095.w);
    let x_3097 : vec4<f32> = u_xlat9;
    let x_3099 : f32 = u_xlat65;
    let x_3102 : vec3<f32> = u_xlat5;
    let x_3103 : vec3<f32> = ((vec3<f32>(x_3097.x, x_3097.y, x_3097.z) * vec3<f32>(x_3099, x_3099, x_3099)) + x_3102);
    let x_3104 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3103.x, x_3103.y, x_3103.z, x_3104.w);
    let x_3106 : vec4<f32> = u_xlat9;
    let x_3108 : vec4<f32> = u_xlat9;
    u_xlat62 = dot(vec3<f32>(x_3106.x, x_3106.y, x_3106.z), vec3<f32>(x_3108.x, x_3108.y, x_3108.z));
    let x_3111 : f32 = u_xlat62;
    u_xlat62 = max(x_3111, 1.17549435e-37f);
    let x_3113 : f32 = u_xlat62;
    u_xlat62 = inverseSqrt(x_3113);
    let x_3115 : f32 = u_xlat62;
    let x_3117 : vec4<f32> = u_xlat9;
    let x_3119 : vec3<f32> = (vec3<f32>(x_3115, x_3115, x_3115) * vec3<f32>(x_3117.x, x_3117.y, x_3117.z));
    let x_3120 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3119.x, x_3119.y, x_3119.z, x_3120.w);
    let x_3122 : vec3<f32> = u_xlat20;
    let x_3123 : vec4<f32> = u_xlat9;
    u_xlat62 = dot(x_3122, vec3<f32>(x_3123.x, x_3123.y, x_3123.z));
    let x_3126 : f32 = u_xlat62;
    u_xlat62 = clamp(x_3126, 0.0f, 1.0f);
    let x_3128 : vec4<f32> = u_xlat10;
    let x_3130 : vec4<f32> = u_xlat9;
    u_xlat64 = dot(vec3<f32>(x_3128.x, x_3128.y, x_3128.z), vec3<f32>(x_3130.x, x_3130.y, x_3130.z));
    let x_3133 : f32 = u_xlat64;
    u_xlat64 = clamp(x_3133, 0.0f, 1.0f);
    let x_3135 : f32 = u_xlat62;
    let x_3136 : f32 = u_xlat62;
    u_xlat62 = (x_3135 * x_3136);
    let x_3138 : f32 = u_xlat62;
    let x_3140 : f32 = u_xlat8.x;
    u_xlat62 = ((x_3138 * x_3140) + 1.000010014f);
    let x_3143 : f32 = u_xlat64;
    let x_3144 : f32 = u_xlat64;
    u_xlat64 = (x_3143 * x_3144);
    let x_3146 : f32 = u_xlat62;
    let x_3147 : f32 = u_xlat62;
    u_xlat62 = (x_3146 * x_3147);
    let x_3149 : f32 = u_xlat64;
    u_xlat64 = max(x_3149, 0.100000001f);
    let x_3151 : f32 = u_xlat62;
    let x_3152 : f32 = u_xlat64;
    u_xlat62 = (x_3151 * x_3152);
    let x_3155 : f32 = u_xlat24.x;
    let x_3156 : f32 = u_xlat62;
    u_xlat62 = (x_3155 * x_3156);
    let x_3158 : f32 = u_xlat63;
    let x_3159 : f32 = u_xlat62;
    u_xlat62 = (x_3158 / x_3159);
    let x_3161 : vec3<f32> = u_xlat2;
    let x_3162 : f32 = u_xlat62;
    let x_3165 : vec3<f32> = u_xlat3;
    let x_3166 : vec3<f32> = ((x_3161 * vec3<f32>(x_3162, x_3162, x_3162)) + x_3165);
    let x_3167 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3166.x, x_3166.y, x_3166.z, x_3167.w);
    let x_3169 : vec4<f32> = u_xlat9;
    let x_3171 : vec4<f32> = u_xlat11;
    let x_3174 : vec3<f32> = u_xlat28;
    u_xlat28 = ((vec3<f32>(x_3169.x, x_3169.y, x_3169.z) * vec3<f32>(x_3171.x, x_3171.y, x_3171.z)) + x_3174);

    continuing {
      let x_3176 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3176 + bitcast<u32>(1i));
    }
  }
  let x_3178 : vec4<f32> = u_xlat1;
  let x_3180 : vec4<f32> = u_xlat4;
  let x_3183 : vec4<f32> = u_xlat6;
  let x_3185 : vec3<f32> = ((vec3<f32>(x_3178.x, x_3178.y, x_3178.z) * vec3<f32>(x_3180.x, x_3180.x, x_3180.x)) + vec3<f32>(x_3183.x, x_3183.y, x_3183.z));
  let x_3186 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3185.x, x_3185.y, x_3185.z, x_3186.w);
  let x_3190 : vec3<f32> = u_xlat28;
  let x_3191 : vec4<f32> = u_xlat0;
  let x_3193 : vec3<f32> = (x_3190 + vec3<f32>(x_3191.x, x_3191.y, x_3191.z));
  let x_3194 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3193.x, x_3193.y, x_3193.z, x_3194.w);
  let x_3198 : u32 = x_146.x_RenderingLayerMaxInt;
  let x_3200 : f32 = x_59.unity_RenderingLayer.x;
  u_xlatu0 = (x_3198 & bitcast<u32>(x_3200));
  let x_3203 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_3203);
  let x_3208 : f32 = u_xlat0.x;
  let x_3210 : f32 = x_146.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_3208 * x_3210);
  let x_3215 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_3215, 0.0f, 1.0f);
  SV_Target0.w = 1.0f;
  let x_3220 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_3220.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
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
  return main_out(SV_Target0, SV_Target1);
}

