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

@group(1) @binding(3) var<uniform> x_693 : MainLightShadows;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(12) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP4 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_2341 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(11) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2818 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_2928 : AdditionalLightsCookies;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> SV_Target1 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlatb21 : vec2<bool>;
  var u_xlat21 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat64 : f32;
  var u_xlat65 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat66 : f32;
  var u_xlat67 : f32;
  var u_xlat7 : vec4<f32>;
  var u_xlat28 : vec3<f32>;
  var u_xlat22 : vec3<f32>;
  var u_xlat25 : vec3<f32>;
  var u_xlatb1 : bool;
  var x_655 : f32;
  var x_667 : f32;
  var x_678 : f32;
  var u_xlat8 : vec4<f32>;
  var u_xlatb4 : vec4<bool>;
  var u_xlatu1 : u32;
  var u_xlati1 : i32;
  var u_xlat68 : f32;
  var u_xlatb27 : vec2<bool>;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlat27 : vec3<f32>;
  var u_xlatb48 : bool;
  var u_xlat48 : vec2<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat49 : vec2<f32>;
  var u_xlat51 : vec2<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat15 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var u_xlat69 : f32;
  var txVec5 : vec3<f32>;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat55 : vec2<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat29 : vec2<f32>;
  var u_xlat17 : vec2<f32>;
  var u_xlat52 : vec2<f32>;
  var u_xlat18 : vec4<f32>;
  var u_xlat19 : vec4<f32>;
  var u_xlat20 : vec4<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var u_xlat71 : f32;
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
  var u_xlatb22 : vec2<bool>;
  var u_xlatb43 : bool;
  var x_2292 : f32;
  var u_xlat43 : vec2<f32>;
  var x_2423 : f32;
  var x_2435 : vec3<f32>;
  var u_xlatu0 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu69 : u32;
  var u_xlati70 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat70 : f32;
  var u_xlat72 : f32;
  var u_xlatu72 : u32;
  var u_xlati10 : i32;
  var u_xlati72 : i32;
  var u_xlati31 : i32;
  var u_xlatb72 : bool;
  var u_xlatb31 : vec3<bool>;
  var u_xlat31 : vec3<f32>;
  var x_3243 : f32;
  var x_3256 : f32;
  var x_3318 : f32;
  var x_3329 : vec3<f32>;
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
  u_xlatb21.x = (0.0f < x_50);
  let x_64 : f32 = x_59.unity_WorldTransformParams.w;
  u_xlatb21.y = (x_64 >= 0.0f);
  let x_71 : bool = u_xlatb21.x;
  u_xlat21.x = select(-1.0f, 1.0f, x_71);
  let x_76 : bool = u_xlatb21.y;
  u_xlat21.y = select(-1.0f, 1.0f, x_76);
  let x_80 : f32 = u_xlat21.y;
  let x_82 : f32 = u_xlat21.x;
  u_xlat21.x = (x_80 * x_82);
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
  let x_104 : vec3<f32> = u_xlat21;
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
  u_xlat64 = ((x_158 * 4.0f) + x_163);
  let x_165 : f32 = u_xlat64;
  u_xlat64 = (x_165 * 0.330000013f);
  let x_170 : f32 = vs_INTERP0.y;
  u_xlat65 = (x_170 + 1.0f);
  let x_172 : f32 = u_xlat65;
  u_xlat65 = ((x_172 * -1.333333373f) + 1.0f);
  let x_176 : f32 = u_xlat64;
  let x_177 : f32 = u_xlat65;
  u_xlat64 = max(x_176, x_177);
  let x_179 : f32 = u_xlat64;
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
  u_xlat65 = ((-(x_209) * 0.011111f) + 0.949999988f);
  let x_218 : f32 = x_206.Vector1_A492C01C;
  u_xlat66 = (x_218 + -10.0f);
  let x_221 : f32 = u_xlat66;
  let x_224 : f32 = vs_INTERP0.y;
  u_xlat66 = (-(x_221) + x_224);
  let x_226 : f32 = u_xlat66;
  u_xlat66 = (x_226 * 0.050000001f);
  let x_229 : f32 = u_xlat66;
  u_xlat66 = clamp(x_229, 0.0f, 1.0f);
  let x_232 : f32 = u_xlat66;
  u_xlat67 = ((x_232 * -2.0f) + 3.0f);
  let x_237 : f32 = u_xlat66;
  let x_238 : f32 = u_xlat66;
  u_xlat66 = (x_237 * x_238);
  let x_240 : f32 = u_xlat66;
  let x_241 : f32 = u_xlat67;
  u_xlat66 = (x_240 * x_241);
  let x_249 : vec4<f32> = vs_INTERP3;
  let x_252 : f32 = x_146.x_GlobalMipBias.x;
  let x_253 : vec4<f32> = textureSampleBias(Texture2D_DE8BF47E, samplerTexture2D_DE8BF47E, vec2<f32>(x_249.x, x_249.y), x_252);
  u_xlat7 = x_253;
  let x_255 : vec4<f32> = u_xlat7;
  u_xlat28 = ((vec3<f32>(x_255.w, x_255.y, x_255.z) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_262 : vec3<f32> = u_xlat3;
  let x_263 : vec3<f32> = u_xlat28;
  u_xlat3 = (x_262 * vec3<f32>(x_263.y, x_263.y, x_263.y));
  let x_266 : vec3<f32> = u_xlat28;
  let x_268 : vec3<f32> = u_xlat2;
  let x_270 : vec3<f32> = u_xlat3;
  u_xlat2 = ((vec3<f32>(x_266.x, x_266.x, x_266.x) * x_268) + x_270);
  let x_272 : vec3<f32> = u_xlat28;
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
  let x_302 : f32 = u_xlat66;
  let x_304 : f32 = u_xlat1.x;
  let x_306 : f32 = u_xlat65;
  u_xlat1.x = ((x_302 * x_304) + -(x_306));
  let x_311 : f32 = u_xlat1.x;
  u_xlat1.x = (x_311 * 10.0f);
  let x_316 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_316, 0.0f, 1.0f);
  let x_321 : f32 = u_xlat1.x;
  u_xlat22.x = ((x_321 * -2.0f) + 3.0f);
  let x_326 : f32 = u_xlat1.x;
  let x_328 : f32 = u_xlat1.x;
  u_xlat1.x = (x_326 * x_328);
  let x_332 : f32 = u_xlat1.x;
  let x_334 : f32 = u_xlat22.x;
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
  u_xlat25 = vec3<f32>(x_375.x, x_375.y, x_375.w);
  let x_378 : f32 = u_xlat25.x;
  let x_380 : f32 = u_xlat25.z;
  u_xlat25.x = (x_378 * x_380);
  let x_383 : vec3<f32> = u_xlat25;
  let x_388 : vec2<f32> = ((vec2<f32>(x_383.x, x_383.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_389 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_388.x, x_388.y, x_389.z);
  let x_391 : vec3<f32> = u_xlat5;
  let x_393 : vec3<f32> = u_xlat5;
  u_xlat22.x = dot(vec2<f32>(x_391.x, x_391.y), vec2<f32>(x_393.x, x_393.y));
  let x_398 : f32 = u_xlat22.x;
  u_xlat22.x = min(x_398, 1.0f);
  let x_402 : f32 = u_xlat22.x;
  u_xlat22.x = (-(x_402) + 1.0f);
  let x_407 : f32 = u_xlat22.x;
  u_xlat22.x = sqrt(x_407);
  let x_411 : f32 = u_xlat22.x;
  u_xlat5.z = max(x_411, 1.00000002e-16f);
  let x_418 : vec4<f32> = x_59.unity_ObjectToWorld[0i];
  let x_421 : vec4<f32> = x_59.unity_ObjectToWorld[0i];
  u_xlat22.x = dot(vec3<f32>(x_418.x, x_418.y, x_418.z), vec3<f32>(x_421.x, x_421.y, x_421.z));
  let x_426 : f32 = u_xlat22.x;
  u_xlat6.x = sqrt(x_426);
  let x_430 : vec4<f32> = x_59.unity_ObjectToWorld[1i];
  let x_433 : vec4<f32> = x_59.unity_ObjectToWorld[1i];
  u_xlat22.x = dot(vec3<f32>(x_430.x, x_430.y, x_430.z), vec3<f32>(x_433.x, x_433.y, x_433.z));
  let x_438 : f32 = u_xlat22.x;
  u_xlat6.y = sqrt(x_438);
  let x_443 : vec4<f32> = x_59.unity_ObjectToWorld[2i];
  let x_446 : vec4<f32> = x_59.unity_ObjectToWorld[2i];
  u_xlat22.x = dot(vec3<f32>(x_443.x, x_443.y, x_443.z), vec3<f32>(x_446.x, x_446.y, x_446.z));
  let x_451 : f32 = u_xlat22.x;
  u_xlat6.z = sqrt(x_451);
  let x_454 : vec4<f32> = u_xlat6;
  let x_456 : vec4<f32> = u_xlat6;
  u_xlat22.x = dot(vec3<f32>(x_454.x, x_454.y, x_454.z), vec3<f32>(x_456.x, x_456.y, x_456.z));
  let x_461 : f32 = u_xlat22.x;
  u_xlat22.x = sqrt(x_461);
  let x_465 : f32 = u_xlat22.x;
  let x_468 : f32 = x_206.Vector1_90E376AD;
  u_xlat22.x = (x_465 * x_468);
  let x_472 : f32 = u_xlat22.x;
  u_xlat22.x = (x_472 * 30.0f);
  let x_476 : vec3<f32> = u_xlat22;
  let x_478 : vec4<f32> = vs_INTERP3;
  let x_480 : vec2<f32> = (vec2<f32>(x_476.x, x_476.x) * vec2<f32>(x_478.x, x_478.y));
  let x_481 : vec3<f32> = u_xlat22;
  u_xlat22 = vec3<f32>(x_480.x, x_480.y, x_481.z);
  let x_488 : vec3<f32> = u_xlat22;
  let x_491 : f32 = x_146.x_GlobalMipBias.x;
  let x_492 : vec4<f32> = textureSampleBias(x_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1, sampler_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1, vec2<f32>(x_488.x, x_488.y), x_491);
  u_xlat25 = vec3<f32>(x_492.x, x_492.y, x_492.w);
  let x_495 : f32 = u_xlat25.x;
  let x_497 : f32 = u_xlat25.z;
  u_xlat25.x = (x_495 * x_497);
  let x_500 : vec3<f32> = u_xlat25;
  let x_503 : vec2<f32> = ((vec2<f32>(x_500.x, x_500.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_504 : vec3<f32> = u_xlat22;
  u_xlat22 = vec3<f32>(x_503.x, x_503.y, x_504.z);
  let x_506 : vec3<f32> = u_xlat22;
  let x_508 : vec3<f32> = u_xlat22;
  u_xlat65 = dot(vec2<f32>(x_506.x, x_506.y), vec2<f32>(x_508.x, x_508.y));
  let x_511 : f32 = u_xlat65;
  u_xlat65 = min(x_511, 1.0f);
  let x_513 : f32 = u_xlat65;
  u_xlat65 = (-(x_513) + 1.0f);
  let x_516 : f32 = u_xlat65;
  u_xlat65 = sqrt(x_516);
  let x_518 : f32 = u_xlat65;
  u_xlat65 = max(x_518, 1.00000002e-16f);
  let x_520 : vec3<f32> = u_xlat22;
  let x_522 : vec3<f32> = u_xlat28;
  let x_524 : vec2<f32> = (vec2<f32>(x_520.x, x_520.y) + vec2<f32>(x_522.x, x_522.y));
  let x_525 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_524.x, x_524.y, x_525.z, x_525.w);
  let x_527 : f32 = u_xlat65;
  let x_529 : f32 = u_xlat28.z;
  u_xlat6.z = (x_527 * x_529);
  let x_532 : vec4<f32> = u_xlat6;
  let x_534 : vec4<f32> = u_xlat6;
  u_xlat22.x = dot(vec3<f32>(x_532.x, x_532.y, x_532.z), vec3<f32>(x_534.x, x_534.y, x_534.z));
  let x_539 : f32 = u_xlat22.x;
  u_xlat22.x = max(x_539, 1.17549435e-37f);
  let x_543 : f32 = u_xlat22.x;
  u_xlat22.x = inverseSqrt(x_543);
  let x_546 : vec4<f32> = u_xlat6;
  let x_548 : vec3<f32> = u_xlat22;
  let x_551 : vec3<f32> = u_xlat5;
  u_xlat25 = ((vec3<f32>(x_546.x, x_546.y, x_546.z) * vec3<f32>(x_548.x, x_548.x, x_548.x)) + -(x_551));
  let x_554 : vec4<f32> = u_xlat1;
  let x_556 : vec3<f32> = u_xlat25;
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
  u_xlat21 = ((vec3<f32>(x_598.y, x_598.y, x_598.y) * vec3<f32>(x_600.x, x_600.y, x_600.z)) + vec3<f32>(x_603.y, x_603.z, x_603.w));
  let x_606 : vec4<f32> = u_xlat4;
  let x_608 : vec3<f32> = vs_INTERP1;
  let x_610 : vec3<f32> = u_xlat21;
  u_xlat21 = ((vec3<f32>(x_606.w, x_606.w, x_606.w) * x_608) + x_610);
  let x_612 : vec3<f32> = u_xlat21;
  let x_613 : vec3<f32> = u_xlat21;
  u_xlat1.x = dot(x_612, x_613);
  let x_617 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_617);
  let x_620 : vec3<f32> = u_xlat21;
  let x_621 : vec4<f32> = u_xlat1;
  u_xlat21 = (x_620 * vec3<f32>(x_621.x, x_621.x, x_621.x));
  let x_627 : f32 = x_146.unity_OrthoParams.w;
  u_xlatb1 = (x_627 == 0.0f);
  let x_629 : vec3<f32> = vs_INTERP0;
  let x_633 : vec3<f32> = x_146.x_WorldSpaceCameraPos;
  let x_634 : vec3<f32> = (-(x_629) + x_633);
  let x_635 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_634.x, x_634.y, x_634.z, x_635.w);
  let x_637 : vec4<f32> = u_xlat4;
  let x_639 : vec4<f32> = u_xlat4;
  u_xlat22.x = dot(vec3<f32>(x_637.x, x_637.y, x_637.z), vec3<f32>(x_639.x, x_639.y, x_639.z));
  let x_644 : f32 = u_xlat22.x;
  u_xlat22.x = inverseSqrt(x_644);
  let x_647 : vec3<f32> = u_xlat22;
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
  u_xlat28 = (x_717 + -(vec3<f32>(x_719.x, x_719.y, x_719.z)));
  let x_724 : vec4<f32> = u_xlat1;
  let x_726 : vec4<f32> = u_xlat1;
  u_xlat8.x = dot(vec3<f32>(x_724.x, x_724.y, x_724.z), vec3<f32>(x_726.x, x_726.y, x_726.z));
  let x_730 : vec4<f32> = u_xlat4;
  let x_732 : vec4<f32> = u_xlat4;
  u_xlat8.y = dot(vec3<f32>(x_730.x, x_730.y, x_730.z), vec3<f32>(x_732.x, x_732.y, x_732.z));
  let x_736 : vec4<f32> = u_xlat6;
  let x_738 : vec4<f32> = u_xlat6;
  u_xlat8.z = dot(vec3<f32>(x_736.x, x_736.y, x_736.z), vec3<f32>(x_738.x, x_738.y, x_738.z));
  let x_742 : vec3<f32> = u_xlat28;
  let x_743 : vec3<f32> = u_xlat28;
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
  let x_884 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_881, x_883);
  let x_885 : vec3<f32> = vec3<f32>(x_884.x, x_884.y, x_884.z);
  let x_886 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_885.x, x_885.y, x_885.z, x_886.w);
  let x_889 : vec4<f32> = x_146.x_ScaledScreenParams;
  let x_890 : vec2<f32> = vec2<f32>(x_889.x, x_889.y);
  let x_894 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_890.x, x_890.y));
  let x_895 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_894.x, x_894.y, x_895.z, x_895.w);
  let x_897 : vec4<f32> = u_xlat6;
  let x_899 : vec4<f32> = hlslcc_FragCoord;
  let x_901 : vec2<f32> = (vec2<f32>(x_897.x, x_897.y) * vec2<f32>(x_899.x, x_899.y));
  let x_902 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_901.x, x_901.y, x_902.z, x_902.w);
  let x_905 : f32 = u_xlat6.y;
  let x_908 : f32 = x_146.x_ScaleBiasRt.x;
  let x_911 : f32 = x_146.x_ScaleBiasRt.y;
  u_xlat65 = ((x_905 * x_908) + x_911);
  let x_913 : f32 = u_xlat65;
  u_xlat6.z = (-(x_913) + 1.0f);
  let x_917 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_917 * vec3<f32>(0.863999963f, 0.863999963f, 0.863999963f));
  let x_921 : vec4<f32> = u_xlat1;
  let x_923 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_921.w, x_921.w, x_921.w) * x_923) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_928 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_928 * vec3<f32>(0.100000001f, 0.100000001f, 0.100000001f)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_935 : f32 = u_xlat0.x;
  u_xlat22.z = (-(x_935) + 1.0f);
  let x_940 : f32 = u_xlat22.z;
  let x_942 : f32 = u_xlat22.z;
  u_xlat65 = (x_940 * x_942);
  let x_944 : f32 = u_xlat65;
  u_xlat65 = max(x_944, 0.0078125f);
  let x_947 : f32 = u_xlat65;
  let x_948 : f32 = u_xlat65;
  u_xlat66 = (x_947 * x_948);
  let x_951 : f32 = u_xlat0.x;
  u_xlat0.x = (x_951 + 0.136000037f);
  let x_956 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_956, 1.0f);
  let x_959 : f32 = u_xlat65;
  u_xlat67 = ((x_959 * 4.0f) + 2.0f);
  let x_968 : vec4<f32> = u_xlat6;
  let x_971 : f32 = x_146.x_GlobalMipBias.x;
  let x_972 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_968.x, x_968.z), x_971);
  u_xlat68 = x_972.x;
  let x_974 : f32 = u_xlat68;
  u_xlat6.x = (x_974 + -1.0f);
  let x_978 : f32 = x_146.x_AmbientOcclusionParam.w;
  let x_980 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_978 * x_980) + 1.0f);
  let x_985 : f32 = u_xlat7.x;
  let x_986 : f32 = u_xlat68;
  u_xlat68 = min(x_985, x_986);
  let x_990 : f32 = x_693.x_MainLightShadowParams.y;
  u_xlatb27.x = (0.0f < x_990);
  let x_994 : bool = u_xlatb27.x;
  if (x_994) {
    let x_998 : f32 = x_693.x_MainLightShadowParams.y;
    u_xlatb27.x = (x_998 == 1.0f);
    let x_1002 : bool = u_xlatb27.x;
    if (x_1002) {
      let x_1005 : vec4<f32> = u_xlat1;
      let x_1009 : vec4<f32> = x_693.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_1005.x, x_1005.y, x_1005.x, x_1005.y) + x_1009);
      let x_1012 : vec4<f32> = u_xlat7;
      let x_1013 : vec2<f32> = vec2<f32>(x_1012.x, x_1012.y);
      let x_1015 : f32 = u_xlat1.z;
      txVec0 = vec3<f32>(x_1013.x, x_1013.y, x_1015);
      let x_1027 : vec3<f32> = txVec0;
      let x_1029 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1027.xy, x_1027.z);
      u_xlat8.x = x_1029;
      let x_1032 : vec4<f32> = u_xlat7;
      let x_1033 : vec2<f32> = vec2<f32>(x_1032.z, x_1032.w);
      let x_1035 : f32 = u_xlat1.z;
      txVec1 = vec3<f32>(x_1033.x, x_1033.y, x_1035);
      let x_1042 : vec3<f32> = txVec1;
      let x_1044 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1042.xy, x_1042.z);
      u_xlat8.y = x_1044;
      let x_1046 : vec4<f32> = u_xlat1;
      let x_1050 : vec4<f32> = x_693.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_1046.x, x_1046.y, x_1046.x, x_1046.y) + x_1050);
      let x_1053 : vec4<f32> = u_xlat7;
      let x_1054 : vec2<f32> = vec2<f32>(x_1053.x, x_1053.y);
      let x_1056 : f32 = u_xlat1.z;
      txVec2 = vec3<f32>(x_1054.x, x_1054.y, x_1056);
      let x_1063 : vec3<f32> = txVec2;
      let x_1065 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1063.xy, x_1063.z);
      u_xlat8.z = x_1065;
      let x_1068 : vec4<f32> = u_xlat7;
      let x_1069 : vec2<f32> = vec2<f32>(x_1068.z, x_1068.w);
      let x_1071 : f32 = u_xlat1.z;
      txVec3 = vec3<f32>(x_1069.x, x_1069.y, x_1071);
      let x_1078 : vec3<f32> = txVec3;
      let x_1080 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1078.xy, x_1078.z);
      u_xlat8.w = x_1080;
      let x_1083 : vec4<f32> = u_xlat8;
      u_xlat27.x = dot(x_1083, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1091 : f32 = x_693.x_MainLightShadowParams.y;
      u_xlatb48 = (x_1091 == 2.0f);
      let x_1093 : bool = u_xlatb48;
      if (x_1093) {
        let x_1098 : vec4<f32> = u_xlat1;
        let x_1101 : vec4<f32> = x_693.x_MainLightShadowmapSize;
        u_xlat48 = ((vec2<f32>(x_1098.x, x_1098.y) * vec2<f32>(x_1101.z, x_1101.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1107 : vec2<f32> = u_xlat48;
        u_xlat48 = floor(x_1107);
        let x_1109 : vec4<f32> = u_xlat1;
        let x_1112 : vec4<f32> = x_693.x_MainLightShadowmapSize;
        let x_1115 : vec2<f32> = u_xlat48;
        let x_1117 : vec2<f32> = ((vec2<f32>(x_1109.x, x_1109.y) * vec2<f32>(x_1112.z, x_1112.w)) + -(x_1115));
        let x_1118 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1117.x, x_1117.y, x_1118.z, x_1118.w);
        let x_1120 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1120.x, x_1120.x, x_1120.y, x_1120.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1125 : vec4<f32> = u_xlat8;
        let x_1127 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1125.x, x_1125.x, x_1125.z, x_1125.z) * vec4<f32>(x_1127.x, x_1127.x, x_1127.z, x_1127.z));
        let x_1131 : vec4<f32> = u_xlat9;
        u_xlat49 = (vec2<f32>(x_1131.y, x_1131.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_1136 : vec4<f32> = u_xlat9;
        let x_1139 : vec4<f32> = u_xlat7;
        let x_1142 : vec2<f32> = ((vec2<f32>(x_1136.x, x_1136.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1139.x, x_1139.y)));
        let x_1143 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1142.x, x_1143.y, x_1142.y, x_1143.w);
        let x_1145 : vec4<f32> = u_xlat7;
        let x_1148 : vec2<f32> = (-(vec2<f32>(x_1145.x, x_1145.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1149 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1148.x, x_1148.y, x_1149.z, x_1149.w);
        let x_1152 : vec4<f32> = u_xlat7;
        u_xlat51 = min(vec2<f32>(x_1152.x, x_1152.y), vec2<f32>(0.0f, 0.0f));
        let x_1156 : vec2<f32> = u_xlat51;
        let x_1158 : vec2<f32> = u_xlat51;
        let x_1160 : vec4<f32> = u_xlat9;
        u_xlat51 = ((-(x_1156) * x_1158) + vec2<f32>(x_1160.x, x_1160.y));
        let x_1163 : vec4<f32> = u_xlat7;
        let x_1165 : vec2<f32> = max(vec2<f32>(x_1163.x, x_1163.y), vec2<f32>(0.0f, 0.0f));
        let x_1166 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1165.x, x_1165.y, x_1166.z, x_1166.w);
        let x_1168 : vec4<f32> = u_xlat7;
        let x_1171 : vec4<f32> = u_xlat7;
        let x_1174 : vec4<f32> = u_xlat8;
        let x_1176 : vec2<f32> = ((-(vec2<f32>(x_1168.x, x_1168.y)) * vec2<f32>(x_1171.x, x_1171.y)) + vec2<f32>(x_1174.y, x_1174.w));
        let x_1177 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1176.x, x_1176.y, x_1177.z, x_1177.w);
        let x_1179 : vec2<f32> = u_xlat51;
        u_xlat51 = (x_1179 + vec2<f32>(1.0f, 1.0f));
        let x_1181 : vec4<f32> = u_xlat7;
        let x_1183 : vec2<f32> = (vec2<f32>(x_1181.x, x_1181.y) + vec2<f32>(1.0f, 1.0f));
        let x_1184 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1183.x, x_1183.y, x_1184.z, x_1184.w);
        let x_1187 : vec4<f32> = u_xlat8;
        let x_1191 : vec2<f32> = (vec2<f32>(x_1187.x, x_1187.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1192 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1191.x, x_1191.y, x_1192.z, x_1192.w);
        let x_1195 : vec4<f32> = u_xlat9;
        let x_1197 : vec2<f32> = (vec2<f32>(x_1195.x, x_1195.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1198 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1197.x, x_1197.y, x_1198.z, x_1198.w);
        let x_1200 : vec2<f32> = u_xlat51;
        let x_1201 : vec2<f32> = (x_1200 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1202 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1201.x, x_1201.y, x_1202.z, x_1202.w);
        let x_1205 : vec4<f32> = u_xlat7;
        let x_1207 : vec2<f32> = (vec2<f32>(x_1205.x, x_1205.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1208 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1207.x, x_1207.y, x_1208.z, x_1208.w);
        let x_1210 : vec4<f32> = u_xlat8;
        let x_1212 : vec2<f32> = (vec2<f32>(x_1210.y, x_1210.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1213 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1212.x, x_1212.y, x_1213.z, x_1213.w);
        let x_1216 : f32 = u_xlat9.x;
        u_xlat10.z = x_1216;
        let x_1219 : f32 = u_xlat7.x;
        u_xlat10.w = x_1219;
        let x_1222 : f32 = u_xlat12.x;
        u_xlat11.z = x_1222;
        let x_1225 : f32 = u_xlat49.x;
        u_xlat11.w = x_1225;
        let x_1227 : vec4<f32> = u_xlat10;
        let x_1229 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1227.z, x_1227.w, x_1227.x, x_1227.z) + vec4<f32>(x_1229.z, x_1229.w, x_1229.x, x_1229.z));
        let x_1233 : f32 = u_xlat10.y;
        u_xlat9.z = x_1233;
        let x_1236 : f32 = u_xlat7.y;
        u_xlat9.w = x_1236;
        let x_1239 : f32 = u_xlat11.y;
        u_xlat12.z = x_1239;
        let x_1242 : f32 = u_xlat49.y;
        u_xlat12.w = x_1242;
        let x_1244 : vec4<f32> = u_xlat9;
        let x_1246 : vec4<f32> = u_xlat12;
        let x_1248 : vec3<f32> = (vec3<f32>(x_1244.z, x_1244.y, x_1244.w) + vec3<f32>(x_1246.z, x_1246.y, x_1246.w));
        let x_1249 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1248.x, x_1248.y, x_1248.z, x_1249.w);
        let x_1251 : vec4<f32> = u_xlat11;
        let x_1253 : vec4<f32> = u_xlat8;
        let x_1255 : vec3<f32> = (vec3<f32>(x_1251.x, x_1251.z, x_1251.w) / vec3<f32>(x_1253.z, x_1253.w, x_1253.y));
        let x_1256 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1255.x, x_1255.y, x_1255.z, x_1256.w);
        let x_1258 : vec4<f32> = u_xlat9;
        let x_1263 : vec3<f32> = (vec3<f32>(x_1258.x, x_1258.y, x_1258.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1264 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1263.x, x_1263.y, x_1263.z, x_1264.w);
        let x_1266 : vec4<f32> = u_xlat12;
        let x_1268 : vec4<f32> = u_xlat7;
        let x_1270 : vec3<f32> = (vec3<f32>(x_1266.z, x_1266.y, x_1266.w) / vec3<f32>(x_1268.x, x_1268.y, x_1268.z));
        let x_1271 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1270.x, x_1270.y, x_1270.z, x_1271.w);
        let x_1273 : vec4<f32> = u_xlat10;
        let x_1275 : vec3<f32> = (vec3<f32>(x_1273.x, x_1273.y, x_1273.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1276 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1275.x, x_1275.y, x_1275.z, x_1276.w);
        let x_1278 : vec4<f32> = u_xlat9;
        let x_1281 : vec4<f32> = x_693.x_MainLightShadowmapSize;
        let x_1283 : vec3<f32> = (vec3<f32>(x_1278.y, x_1278.x, x_1278.z) * vec3<f32>(x_1281.x, x_1281.x, x_1281.x));
        let x_1284 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1283.x, x_1283.y, x_1283.z, x_1284.w);
        let x_1286 : vec4<f32> = u_xlat10;
        let x_1289 : vec4<f32> = x_693.x_MainLightShadowmapSize;
        let x_1291 : vec3<f32> = (vec3<f32>(x_1286.x, x_1286.y, x_1286.z) * vec3<f32>(x_1289.y, x_1289.y, x_1289.y));
        let x_1292 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1291.x, x_1291.y, x_1291.z, x_1292.w);
        let x_1295 : f32 = u_xlat10.x;
        u_xlat9.w = x_1295;
        let x_1297 : vec2<f32> = u_xlat48;
        let x_1300 : vec4<f32> = x_693.x_MainLightShadowmapSize;
        let x_1303 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1297.x, x_1297.y, x_1297.x, x_1297.y) * vec4<f32>(x_1300.x, x_1300.y, x_1300.x, x_1300.y)) + vec4<f32>(x_1303.y, x_1303.w, x_1303.x, x_1303.w));
        let x_1306 : vec2<f32> = u_xlat48;
        let x_1308 : vec4<f32> = x_693.x_MainLightShadowmapSize;
        let x_1311 : vec4<f32> = u_xlat9;
        let x_1313 : vec2<f32> = ((x_1306 * vec2<f32>(x_1308.x, x_1308.y)) + vec2<f32>(x_1311.z, x_1311.w));
        let x_1314 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1313.x, x_1313.y, x_1314.z, x_1314.w);
        let x_1317 : f32 = u_xlat9.y;
        u_xlat10.w = x_1317;
        let x_1319 : vec4<f32> = u_xlat10;
        let x_1320 : vec2<f32> = vec2<f32>(x_1319.y, x_1319.z);
        let x_1321 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1321.x, x_1320.x, x_1321.z, x_1320.y);
        let x_1324 : vec2<f32> = u_xlat48;
        let x_1327 : vec4<f32> = x_693.x_MainLightShadowmapSize;
        let x_1330 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_1324.x, x_1324.y, x_1324.x, x_1324.y) * vec4<f32>(x_1327.x, x_1327.y, x_1327.x, x_1327.y)) + vec4<f32>(x_1330.x, x_1330.y, x_1330.z, x_1330.y));
        let x_1333 : vec2<f32> = u_xlat48;
        let x_1336 : vec4<f32> = x_693.x_MainLightShadowmapSize;
        let x_1339 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1333.x, x_1333.y, x_1333.x, x_1333.y) * vec4<f32>(x_1336.x, x_1336.y, x_1336.x, x_1336.y)) + vec4<f32>(x_1339.w, x_1339.y, x_1339.w, x_1339.z));
        let x_1342 : vec2<f32> = u_xlat48;
        let x_1345 : vec4<f32> = x_693.x_MainLightShadowmapSize;
        let x_1348 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1342.x, x_1342.y, x_1342.x, x_1342.y) * vec4<f32>(x_1345.x, x_1345.y, x_1345.x, x_1345.y)) + vec4<f32>(x_1348.x, x_1348.w, x_1348.z, x_1348.w));
        let x_1352 : vec4<f32> = u_xlat7;
        let x_1354 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_1352.x, x_1352.x, x_1352.x, x_1352.y) * vec4<f32>(x_1354.z, x_1354.w, x_1354.y, x_1354.z));
        let x_1358 : vec4<f32> = u_xlat7;
        let x_1360 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1358.y, x_1358.y, x_1358.z, x_1358.z) * x_1360);
        let x_1363 : f32 = u_xlat7.z;
        let x_1365 : f32 = u_xlat8.y;
        u_xlat48.x = (x_1363 * x_1365);
        let x_1369 : vec4<f32> = u_xlat11;
        let x_1370 : vec2<f32> = vec2<f32>(x_1369.x, x_1369.y);
        let x_1372 : f32 = u_xlat1.z;
        txVec4 = vec3<f32>(x_1370.x, x_1370.y, x_1372);
        let x_1380 : vec3<f32> = txVec4;
        let x_1382 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1380.xy, x_1380.z);
        u_xlat69 = x_1382;
        let x_1384 : vec4<f32> = u_xlat11;
        let x_1385 : vec2<f32> = vec2<f32>(x_1384.z, x_1384.w);
        let x_1387 : f32 = u_xlat1.z;
        txVec5 = vec3<f32>(x_1385.x, x_1385.y, x_1387);
        let x_1394 : vec3<f32> = txVec5;
        let x_1396 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1394.xy, x_1394.z);
        u_xlat7.x = x_1396;
        let x_1399 : f32 = u_xlat7.x;
        let x_1401 : f32 = u_xlat14.y;
        u_xlat7.x = (x_1399 * x_1401);
        let x_1405 : f32 = u_xlat14.x;
        let x_1406 : f32 = u_xlat69;
        let x_1409 : f32 = u_xlat7.x;
        u_xlat69 = ((x_1405 * x_1406) + x_1409);
        let x_1412 : vec4<f32> = u_xlat12;
        let x_1413 : vec2<f32> = vec2<f32>(x_1412.x, x_1412.y);
        let x_1415 : f32 = u_xlat1.z;
        txVec6 = vec3<f32>(x_1413.x, x_1413.y, x_1415);
        let x_1422 : vec3<f32> = txVec6;
        let x_1424 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1422.xy, x_1422.z);
        u_xlat7.x = x_1424;
        let x_1427 : f32 = u_xlat14.z;
        let x_1429 : f32 = u_xlat7.x;
        let x_1431 : f32 = u_xlat69;
        u_xlat69 = ((x_1427 * x_1429) + x_1431);
        let x_1434 : vec4<f32> = u_xlat10;
        let x_1435 : vec2<f32> = vec2<f32>(x_1434.x, x_1434.y);
        let x_1437 : f32 = u_xlat1.z;
        txVec7 = vec3<f32>(x_1435.x, x_1435.y, x_1437);
        let x_1444 : vec3<f32> = txVec7;
        let x_1446 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1444.xy, x_1444.z);
        u_xlat7.x = x_1446;
        let x_1449 : f32 = u_xlat14.w;
        let x_1451 : f32 = u_xlat7.x;
        let x_1453 : f32 = u_xlat69;
        u_xlat69 = ((x_1449 * x_1451) + x_1453);
        let x_1456 : vec4<f32> = u_xlat13;
        let x_1457 : vec2<f32> = vec2<f32>(x_1456.x, x_1456.y);
        let x_1459 : f32 = u_xlat1.z;
        txVec8 = vec3<f32>(x_1457.x, x_1457.y, x_1459);
        let x_1466 : vec3<f32> = txVec8;
        let x_1468 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1466.xy, x_1466.z);
        u_xlat7.x = x_1468;
        let x_1471 : f32 = u_xlat15.x;
        let x_1473 : f32 = u_xlat7.x;
        let x_1475 : f32 = u_xlat69;
        u_xlat69 = ((x_1471 * x_1473) + x_1475);
        let x_1478 : vec4<f32> = u_xlat13;
        let x_1479 : vec2<f32> = vec2<f32>(x_1478.z, x_1478.w);
        let x_1481 : f32 = u_xlat1.z;
        txVec9 = vec3<f32>(x_1479.x, x_1479.y, x_1481);
        let x_1488 : vec3<f32> = txVec9;
        let x_1490 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1488.xy, x_1488.z);
        u_xlat7.x = x_1490;
        let x_1493 : f32 = u_xlat15.y;
        let x_1495 : f32 = u_xlat7.x;
        let x_1497 : f32 = u_xlat69;
        u_xlat69 = ((x_1493 * x_1495) + x_1497);
        let x_1500 : vec4<f32> = u_xlat10;
        let x_1501 : vec2<f32> = vec2<f32>(x_1500.z, x_1500.w);
        let x_1503 : f32 = u_xlat1.z;
        txVec10 = vec3<f32>(x_1501.x, x_1501.y, x_1503);
        let x_1510 : vec3<f32> = txVec10;
        let x_1512 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1510.xy, x_1510.z);
        u_xlat7.x = x_1512;
        let x_1515 : f32 = u_xlat15.z;
        let x_1517 : f32 = u_xlat7.x;
        let x_1519 : f32 = u_xlat69;
        u_xlat69 = ((x_1515 * x_1517) + x_1519);
        let x_1522 : vec4<f32> = u_xlat9;
        let x_1523 : vec2<f32> = vec2<f32>(x_1522.x, x_1522.y);
        let x_1525 : f32 = u_xlat1.z;
        txVec11 = vec3<f32>(x_1523.x, x_1523.y, x_1525);
        let x_1532 : vec3<f32> = txVec11;
        let x_1534 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1532.xy, x_1532.z);
        u_xlat7.x = x_1534;
        let x_1537 : f32 = u_xlat15.w;
        let x_1539 : f32 = u_xlat7.x;
        let x_1541 : f32 = u_xlat69;
        u_xlat69 = ((x_1537 * x_1539) + x_1541);
        let x_1544 : vec4<f32> = u_xlat9;
        let x_1545 : vec2<f32> = vec2<f32>(x_1544.z, x_1544.w);
        let x_1547 : f32 = u_xlat1.z;
        txVec12 = vec3<f32>(x_1545.x, x_1545.y, x_1547);
        let x_1554 : vec3<f32> = txVec12;
        let x_1556 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1554.xy, x_1554.z);
        u_xlat7.x = x_1556;
        let x_1559 : f32 = u_xlat48.x;
        let x_1561 : f32 = u_xlat7.x;
        let x_1563 : f32 = u_xlat69;
        u_xlat27.x = ((x_1559 * x_1561) + x_1563);
      } else {
        let x_1567 : vec4<f32> = u_xlat1;
        let x_1570 : vec4<f32> = x_693.x_MainLightShadowmapSize;
        u_xlat48 = ((vec2<f32>(x_1567.x, x_1567.y) * vec2<f32>(x_1570.z, x_1570.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1574 : vec2<f32> = u_xlat48;
        u_xlat48 = floor(x_1574);
        let x_1576 : vec4<f32> = u_xlat1;
        let x_1579 : vec4<f32> = x_693.x_MainLightShadowmapSize;
        let x_1582 : vec2<f32> = u_xlat48;
        let x_1584 : vec2<f32> = ((vec2<f32>(x_1576.x, x_1576.y) * vec2<f32>(x_1579.z, x_1579.w)) + -(x_1582));
        let x_1585 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1584.x, x_1584.y, x_1585.z, x_1585.w);
        let x_1587 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1587.x, x_1587.x, x_1587.y, x_1587.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1590 : vec4<f32> = u_xlat8;
        let x_1592 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1590.x, x_1590.x, x_1590.z, x_1590.z) * vec4<f32>(x_1592.x, x_1592.x, x_1592.z, x_1592.z));
        let x_1595 : vec4<f32> = u_xlat9;
        let x_1599 : vec2<f32> = (vec2<f32>(x_1595.y, x_1595.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1600 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1600.x, x_1599.x, x_1600.z, x_1599.y);
        let x_1602 : vec4<f32> = u_xlat9;
        let x_1605 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_1602.x, x_1602.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1605.x, x_1605.y)));
        let x_1609 : vec4<f32> = u_xlat7;
        let x_1612 : vec2<f32> = (-(vec2<f32>(x_1609.x, x_1609.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1613 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1612.x, x_1613.y, x_1612.y, x_1613.w);
        let x_1615 : vec4<f32> = u_xlat7;
        let x_1617 : vec2<f32> = min(vec2<f32>(x_1615.x, x_1615.y), vec2<f32>(0.0f, 0.0f));
        let x_1618 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1617.x, x_1617.y, x_1618.z, x_1618.w);
        let x_1620 : vec4<f32> = u_xlat9;
        let x_1623 : vec4<f32> = u_xlat9;
        let x_1626 : vec4<f32> = u_xlat8;
        let x_1628 : vec2<f32> = ((-(vec2<f32>(x_1620.x, x_1620.y)) * vec2<f32>(x_1623.x, x_1623.y)) + vec2<f32>(x_1626.x, x_1626.z));
        let x_1629 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1628.x, x_1629.y, x_1628.y, x_1629.w);
        let x_1631 : vec4<f32> = u_xlat7;
        let x_1633 : vec2<f32> = max(vec2<f32>(x_1631.x, x_1631.y), vec2<f32>(0.0f, 0.0f));
        let x_1634 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1633.x, x_1633.y, x_1634.z, x_1634.w);
        let x_1636 : vec4<f32> = u_xlat9;
        let x_1639 : vec4<f32> = u_xlat9;
        let x_1642 : vec4<f32> = u_xlat8;
        let x_1644 : vec2<f32> = ((-(vec2<f32>(x_1636.x, x_1636.y)) * vec2<f32>(x_1639.x, x_1639.y)) + vec2<f32>(x_1642.y, x_1642.w));
        let x_1645 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1645.x, x_1644.x, x_1645.z, x_1644.y);
        let x_1647 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1647 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1651 : f32 = u_xlat8.y;
        u_xlat9.z = (x_1651 * 0.081632003f);
        let x_1655 : vec2<f32> = u_xlat49;
        let x_1658 : vec2<f32> = (vec2<f32>(x_1655.y, x_1655.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1659 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1658.x, x_1658.y, x_1659.z, x_1659.w);
        let x_1661 : vec4<f32> = u_xlat8;
        u_xlat49 = (vec2<f32>(x_1661.x, x_1661.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1665 : f32 = u_xlat8.w;
        u_xlat11.z = (x_1665 * 0.081632003f);
        let x_1669 : f32 = u_xlat11.y;
        u_xlat9.x = x_1669;
        let x_1671 : vec4<f32> = u_xlat7;
        let x_1678 : vec2<f32> = ((vec2<f32>(x_1671.x, x_1671.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1679 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1679.x, x_1678.x, x_1679.z, x_1678.y);
        let x_1681 : vec4<f32> = u_xlat7;
        let x_1685 : vec2<f32> = ((vec2<f32>(x_1681.x, x_1681.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1686 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1685.x, x_1686.y, x_1685.y, x_1686.w);
        let x_1689 : f32 = u_xlat49.x;
        u_xlat8.y = x_1689;
        let x_1692 : f32 = u_xlat10.y;
        u_xlat8.w = x_1692;
        let x_1694 : vec4<f32> = u_xlat8;
        let x_1695 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1694 + x_1695);
        let x_1697 : vec4<f32> = u_xlat7;
        let x_1700 : vec2<f32> = ((vec2<f32>(x_1697.y, x_1697.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1701 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1701.x, x_1700.x, x_1701.z, x_1700.y);
        let x_1703 : vec4<f32> = u_xlat7;
        let x_1706 : vec2<f32> = ((vec2<f32>(x_1703.y, x_1703.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1707 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1706.x, x_1707.y, x_1706.y, x_1707.w);
        let x_1710 : f32 = u_xlat49.y;
        u_xlat10.y = x_1710;
        let x_1712 : vec4<f32> = u_xlat10;
        let x_1713 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1712 + x_1713);
        let x_1715 : vec4<f32> = u_xlat8;
        let x_1716 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_1715 / x_1716);
        let x_1718 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1718 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1724 : vec4<f32> = u_xlat10;
        let x_1725 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_1724 / x_1725);
        let x_1727 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1727 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1729 : vec4<f32> = u_xlat8;
        let x_1732 : vec4<f32> = x_693.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1729.w, x_1729.x, x_1729.y, x_1729.z) * vec4<f32>(x_1732.x, x_1732.x, x_1732.x, x_1732.x));
        let x_1735 : vec4<f32> = u_xlat10;
        let x_1738 : vec4<f32> = x_693.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1735.x, x_1735.w, x_1735.y, x_1735.z) * vec4<f32>(x_1738.y, x_1738.y, x_1738.y, x_1738.y));
        let x_1741 : vec4<f32> = u_xlat8;
        let x_1742 : vec3<f32> = vec3<f32>(x_1741.y, x_1741.z, x_1741.w);
        let x_1743 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1742.x, x_1743.y, x_1742.y, x_1742.z);
        let x_1746 : f32 = u_xlat10.x;
        u_xlat11.y = x_1746;
        let x_1748 : vec2<f32> = u_xlat48;
        let x_1751 : vec4<f32> = x_693.x_MainLightShadowmapSize;
        let x_1754 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1748.x, x_1748.y, x_1748.x, x_1748.y) * vec4<f32>(x_1751.x, x_1751.y, x_1751.x, x_1751.y)) + vec4<f32>(x_1754.x, x_1754.y, x_1754.z, x_1754.y));
        let x_1757 : vec2<f32> = u_xlat48;
        let x_1759 : vec4<f32> = x_693.x_MainLightShadowmapSize;
        let x_1762 : vec4<f32> = u_xlat11;
        let x_1764 : vec2<f32> = ((x_1757 * vec2<f32>(x_1759.x, x_1759.y)) + vec2<f32>(x_1762.w, x_1762.y));
        let x_1765 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1764.x, x_1764.y, x_1765.z, x_1765.w);
        let x_1768 : f32 = u_xlat11.y;
        u_xlat8.y = x_1768;
        let x_1771 : f32 = u_xlat10.z;
        u_xlat11.y = x_1771;
        let x_1773 : vec2<f32> = u_xlat48;
        let x_1776 : vec4<f32> = x_693.x_MainLightShadowmapSize;
        let x_1779 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_1773.x, x_1773.y, x_1773.x, x_1773.y) * vec4<f32>(x_1776.x, x_1776.y, x_1776.x, x_1776.y)) + vec4<f32>(x_1779.x, x_1779.y, x_1779.z, x_1779.y));
        let x_1783 : vec2<f32> = u_xlat48;
        let x_1785 : vec4<f32> = x_693.x_MainLightShadowmapSize;
        let x_1788 : vec4<f32> = u_xlat11;
        u_xlat55 = ((x_1783 * vec2<f32>(x_1785.x, x_1785.y)) + vec2<f32>(x_1788.w, x_1788.y));
        let x_1792 : f32 = u_xlat11.y;
        u_xlat8.z = x_1792;
        let x_1794 : vec2<f32> = u_xlat48;
        let x_1797 : vec4<f32> = x_693.x_MainLightShadowmapSize;
        let x_1800 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1794.x, x_1794.y, x_1794.x, x_1794.y) * vec4<f32>(x_1797.x, x_1797.y, x_1797.x, x_1797.y)) + vec4<f32>(x_1800.x, x_1800.y, x_1800.x, x_1800.z));
        let x_1804 : f32 = u_xlat10.w;
        u_xlat11.y = x_1804;
        let x_1807 : vec2<f32> = u_xlat48;
        let x_1810 : vec4<f32> = x_693.x_MainLightShadowmapSize;
        let x_1813 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1807.x, x_1807.y, x_1807.x, x_1807.y) * vec4<f32>(x_1810.x, x_1810.y, x_1810.x, x_1810.y)) + vec4<f32>(x_1813.x, x_1813.y, x_1813.z, x_1813.y));
        let x_1817 : vec2<f32> = u_xlat48;
        let x_1819 : vec4<f32> = x_693.x_MainLightShadowmapSize;
        let x_1822 : vec4<f32> = u_xlat11;
        u_xlat29 = ((x_1817 * vec2<f32>(x_1819.x, x_1819.y)) + vec2<f32>(x_1822.w, x_1822.y));
        let x_1826 : f32 = u_xlat11.y;
        u_xlat8.w = x_1826;
        let x_1829 : vec2<f32> = u_xlat48;
        let x_1831 : vec4<f32> = x_693.x_MainLightShadowmapSize;
        let x_1834 : vec4<f32> = u_xlat8;
        u_xlat17 = ((x_1829 * vec2<f32>(x_1831.x, x_1831.y)) + vec2<f32>(x_1834.x, x_1834.w));
        let x_1837 : vec4<f32> = u_xlat11;
        let x_1838 : vec3<f32> = vec3<f32>(x_1837.x, x_1837.z, x_1837.w);
        let x_1839 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1838.x, x_1839.y, x_1838.y, x_1838.z);
        let x_1841 : vec2<f32> = u_xlat48;
        let x_1844 : vec4<f32> = x_693.x_MainLightShadowmapSize;
        let x_1847 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1841.x, x_1841.y, x_1841.x, x_1841.y) * vec4<f32>(x_1844.x, x_1844.y, x_1844.x, x_1844.y)) + vec4<f32>(x_1847.x, x_1847.y, x_1847.z, x_1847.y));
        let x_1851 : vec2<f32> = u_xlat48;
        let x_1853 : vec4<f32> = x_693.x_MainLightShadowmapSize;
        let x_1856 : vec4<f32> = u_xlat10;
        u_xlat52 = ((x_1851 * vec2<f32>(x_1853.x, x_1853.y)) + vec2<f32>(x_1856.w, x_1856.y));
        let x_1860 : f32 = u_xlat8.x;
        u_xlat10.x = x_1860;
        let x_1862 : vec2<f32> = u_xlat48;
        let x_1864 : vec4<f32> = x_693.x_MainLightShadowmapSize;
        let x_1867 : vec4<f32> = u_xlat10;
        u_xlat48 = ((x_1862 * vec2<f32>(x_1864.x, x_1864.y)) + vec2<f32>(x_1867.x, x_1867.y));
        let x_1871 : vec4<f32> = u_xlat7;
        let x_1873 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1871.x, x_1871.x, x_1871.x, x_1871.x) * x_1873);
        let x_1876 : vec4<f32> = u_xlat7;
        let x_1878 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_1876.y, x_1876.y, x_1876.y, x_1876.y) * x_1878);
        let x_1881 : vec4<f32> = u_xlat7;
        let x_1883 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_1881.z, x_1881.z, x_1881.z, x_1881.z) * x_1883);
        let x_1885 : vec4<f32> = u_xlat7;
        let x_1887 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_1885.w, x_1885.w, x_1885.w, x_1885.w) * x_1887);
        let x_1890 : vec4<f32> = u_xlat12;
        let x_1891 : vec2<f32> = vec2<f32>(x_1890.x, x_1890.y);
        let x_1893 : f32 = u_xlat1.z;
        txVec13 = vec3<f32>(x_1891.x, x_1891.y, x_1893);
        let x_1900 : vec3<f32> = txVec13;
        let x_1902 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1900.xy, x_1900.z);
        u_xlat8.x = x_1902;
        let x_1905 : vec4<f32> = u_xlat12;
        let x_1906 : vec2<f32> = vec2<f32>(x_1905.z, x_1905.w);
        let x_1908 : f32 = u_xlat1.z;
        txVec14 = vec3<f32>(x_1906.x, x_1906.y, x_1908);
        let x_1916 : vec3<f32> = txVec14;
        let x_1918 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1916.xy, x_1916.z);
        u_xlat71 = x_1918;
        let x_1919 : f32 = u_xlat71;
        let x_1921 : f32 = u_xlat18.y;
        u_xlat71 = (x_1919 * x_1921);
        let x_1924 : f32 = u_xlat18.x;
        let x_1926 : f32 = u_xlat8.x;
        let x_1928 : f32 = u_xlat71;
        u_xlat8.x = ((x_1924 * x_1926) + x_1928);
        let x_1932 : vec4<f32> = u_xlat13;
        let x_1933 : vec2<f32> = vec2<f32>(x_1932.x, x_1932.y);
        let x_1935 : f32 = u_xlat1.z;
        txVec15 = vec3<f32>(x_1933.x, x_1933.y, x_1935);
        let x_1942 : vec3<f32> = txVec15;
        let x_1944 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1942.xy, x_1942.z);
        u_xlat71 = x_1944;
        let x_1946 : f32 = u_xlat18.z;
        let x_1947 : f32 = u_xlat71;
        let x_1950 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1946 * x_1947) + x_1950);
        let x_1954 : vec4<f32> = u_xlat15;
        let x_1955 : vec2<f32> = vec2<f32>(x_1954.x, x_1954.y);
        let x_1957 : f32 = u_xlat1.z;
        txVec16 = vec3<f32>(x_1955.x, x_1955.y, x_1957);
        let x_1964 : vec3<f32> = txVec16;
        let x_1966 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1964.xy, x_1964.z);
        u_xlat71 = x_1966;
        let x_1968 : f32 = u_xlat18.w;
        let x_1969 : f32 = u_xlat71;
        let x_1972 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1968 * x_1969) + x_1972);
        let x_1976 : vec4<f32> = u_xlat14;
        let x_1977 : vec2<f32> = vec2<f32>(x_1976.x, x_1976.y);
        let x_1979 : f32 = u_xlat1.z;
        txVec17 = vec3<f32>(x_1977.x, x_1977.y, x_1979);
        let x_1986 : vec3<f32> = txVec17;
        let x_1988 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1986.xy, x_1986.z);
        u_xlat71 = x_1988;
        let x_1990 : f32 = u_xlat19.x;
        let x_1991 : f32 = u_xlat71;
        let x_1994 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1990 * x_1991) + x_1994);
        let x_1998 : vec4<f32> = u_xlat14;
        let x_1999 : vec2<f32> = vec2<f32>(x_1998.z, x_1998.w);
        let x_2001 : f32 = u_xlat1.z;
        txVec18 = vec3<f32>(x_1999.x, x_1999.y, x_2001);
        let x_2008 : vec3<f32> = txVec18;
        let x_2010 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2008.xy, x_2008.z);
        u_xlat71 = x_2010;
        let x_2012 : f32 = u_xlat19.y;
        let x_2013 : f32 = u_xlat71;
        let x_2016 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2012 * x_2013) + x_2016);
        let x_2020 : vec2<f32> = u_xlat55;
        let x_2022 : f32 = u_xlat1.z;
        txVec19 = vec3<f32>(x_2020.x, x_2020.y, x_2022);
        let x_2029 : vec3<f32> = txVec19;
        let x_2031 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2029.xy, x_2029.z);
        u_xlat71 = x_2031;
        let x_2033 : f32 = u_xlat19.z;
        let x_2034 : f32 = u_xlat71;
        let x_2037 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2033 * x_2034) + x_2037);
        let x_2041 : vec4<f32> = u_xlat15;
        let x_2042 : vec2<f32> = vec2<f32>(x_2041.z, x_2041.w);
        let x_2044 : f32 = u_xlat1.z;
        txVec20 = vec3<f32>(x_2042.x, x_2042.y, x_2044);
        let x_2051 : vec3<f32> = txVec20;
        let x_2053 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2051.xy, x_2051.z);
        u_xlat71 = x_2053;
        let x_2055 : f32 = u_xlat19.w;
        let x_2056 : f32 = u_xlat71;
        let x_2059 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2055 * x_2056) + x_2059);
        let x_2063 : vec4<f32> = u_xlat16;
        let x_2064 : vec2<f32> = vec2<f32>(x_2063.x, x_2063.y);
        let x_2066 : f32 = u_xlat1.z;
        txVec21 = vec3<f32>(x_2064.x, x_2064.y, x_2066);
        let x_2073 : vec3<f32> = txVec21;
        let x_2075 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2073.xy, x_2073.z);
        u_xlat71 = x_2075;
        let x_2077 : f32 = u_xlat20.x;
        let x_2078 : f32 = u_xlat71;
        let x_2081 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2077 * x_2078) + x_2081);
        let x_2085 : vec4<f32> = u_xlat16;
        let x_2086 : vec2<f32> = vec2<f32>(x_2085.z, x_2085.w);
        let x_2088 : f32 = u_xlat1.z;
        txVec22 = vec3<f32>(x_2086.x, x_2086.y, x_2088);
        let x_2095 : vec3<f32> = txVec22;
        let x_2097 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2095.xy, x_2095.z);
        u_xlat71 = x_2097;
        let x_2099 : f32 = u_xlat20.y;
        let x_2100 : f32 = u_xlat71;
        let x_2103 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2099 * x_2100) + x_2103);
        let x_2107 : vec2<f32> = u_xlat29;
        let x_2109 : f32 = u_xlat1.z;
        txVec23 = vec3<f32>(x_2107.x, x_2107.y, x_2109);
        let x_2116 : vec3<f32> = txVec23;
        let x_2118 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2116.xy, x_2116.z);
        u_xlat29.x = x_2118;
        let x_2121 : f32 = u_xlat20.z;
        let x_2123 : f32 = u_xlat29.x;
        let x_2126 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2121 * x_2123) + x_2126);
        let x_2130 : vec2<f32> = u_xlat17;
        let x_2132 : f32 = u_xlat1.z;
        txVec24 = vec3<f32>(x_2130.x, x_2130.y, x_2132);
        let x_2139 : vec3<f32> = txVec24;
        let x_2141 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2139.xy, x_2139.z);
        u_xlat29.x = x_2141;
        let x_2144 : f32 = u_xlat20.w;
        let x_2146 : f32 = u_xlat29.x;
        let x_2149 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2144 * x_2146) + x_2149);
        let x_2153 : vec4<f32> = u_xlat11;
        let x_2154 : vec2<f32> = vec2<f32>(x_2153.x, x_2153.y);
        let x_2156 : f32 = u_xlat1.z;
        txVec25 = vec3<f32>(x_2154.x, x_2154.y, x_2156);
        let x_2163 : vec3<f32> = txVec25;
        let x_2165 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2163.xy, x_2163.z);
        u_xlat29.x = x_2165;
        let x_2168 : f32 = u_xlat7.x;
        let x_2170 : f32 = u_xlat29.x;
        let x_2173 : f32 = u_xlat8.x;
        u_xlat7.x = ((x_2168 * x_2170) + x_2173);
        let x_2177 : vec4<f32> = u_xlat11;
        let x_2178 : vec2<f32> = vec2<f32>(x_2177.z, x_2177.w);
        let x_2180 : f32 = u_xlat1.z;
        txVec26 = vec3<f32>(x_2178.x, x_2178.y, x_2180);
        let x_2187 : vec3<f32> = txVec26;
        let x_2189 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2187.xy, x_2187.z);
        u_xlat8.x = x_2189;
        let x_2192 : f32 = u_xlat7.y;
        let x_2194 : f32 = u_xlat8.x;
        let x_2197 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_2192 * x_2194) + x_2197);
        let x_2201 : vec2<f32> = u_xlat52;
        let x_2203 : f32 = u_xlat1.z;
        txVec27 = vec3<f32>(x_2201.x, x_2201.y, x_2203);
        let x_2210 : vec3<f32> = txVec27;
        let x_2212 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2210.xy, x_2210.z);
        u_xlat28.x = x_2212;
        let x_2215 : f32 = u_xlat7.z;
        let x_2217 : f32 = u_xlat28.x;
        let x_2220 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_2215 * x_2217) + x_2220);
        let x_2224 : vec2<f32> = u_xlat48;
        let x_2226 : f32 = u_xlat1.z;
        txVec28 = vec3<f32>(x_2224.x, x_2224.y, x_2226);
        let x_2233 : vec3<f32> = txVec28;
        let x_2235 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2233.xy, x_2233.z);
        u_xlat48.x = x_2235;
        let x_2238 : f32 = u_xlat7.w;
        let x_2240 : f32 = u_xlat48.x;
        let x_2243 : f32 = u_xlat7.x;
        u_xlat27.x = ((x_2238 * x_2240) + x_2243);
      }
    }
  } else {
    let x_2248 : vec4<f32> = u_xlat1;
    let x_2249 : vec2<f32> = vec2<f32>(x_2248.x, x_2248.y);
    let x_2251 : f32 = u_xlat1.z;
    txVec29 = vec3<f32>(x_2249.x, x_2249.y, x_2251);
    let x_2258 : vec3<f32> = txVec29;
    let x_2260 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2258.xy, x_2258.z);
    u_xlat27.x = x_2260;
  }
  let x_2263 : f32 = x_693.x_MainLightShadowParams.x;
  u_xlat1.x = (-(x_2263) + 1.0f);
  let x_2268 : f32 = u_xlat27.x;
  let x_2270 : f32 = x_693.x_MainLightShadowParams.x;
  let x_2273 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_2268 * x_2270) + x_2273);
  let x_2278 : f32 = u_xlat1.z;
  u_xlatb22.x = (0.0f >= x_2278);
  let x_2283 : f32 = u_xlat1.z;
  u_xlatb43 = (x_2283 >= 1.0f);
  let x_2285 : bool = u_xlatb43;
  let x_2287 : bool = u_xlatb22.x;
  u_xlatb22.x = (x_2285 | x_2287);
  let x_2291 : bool = u_xlatb22.x;
  if (x_2291) {
    x_2292 = 1.0f;
  } else {
    let x_2297 : f32 = u_xlat1.x;
    x_2292 = x_2297;
  }
  let x_2298 : f32 = x_2292;
  u_xlat1.x = x_2298;
  let x_2300 : vec3<f32> = vs_INTERP0;
  let x_2302 : vec3<f32> = x_146.x_WorldSpaceCameraPos;
  u_xlat27 = (x_2300 + -(x_2302));
  let x_2305 : vec3<f32> = u_xlat27;
  let x_2306 : vec3<f32> = u_xlat27;
  u_xlat22.x = dot(x_2305, x_2306);
  let x_2310 : f32 = u_xlat22.x;
  let x_2312 : f32 = x_693.x_MainLightShadowParams.z;
  let x_2315 : f32 = x_693.x_MainLightShadowParams.w;
  u_xlat22.x = ((x_2310 * x_2312) + x_2315);
  let x_2319 : f32 = u_xlat22.x;
  u_xlat22.x = clamp(x_2319, 0.0f, 1.0f);
  let x_2324 : f32 = u_xlat1.x;
  u_xlat43.x = (-(x_2324) + 1.0f);
  let x_2329 : f32 = u_xlat22.x;
  let x_2331 : f32 = u_xlat43.x;
  let x_2334 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_2329 * x_2331) + x_2334);
  let x_2343 : f32 = x_2341.x_MainLightCookieTextureFormat;
  u_xlatb22.x = !((x_2343 == -1.0f));
  let x_2347 : bool = u_xlatb22.x;
  if (x_2347) {
    let x_2350 : vec3<f32> = vs_INTERP0;
    let x_2353 : vec4<f32> = x_2341.x_MainLightWorldToLight[1i];
    let x_2355 : vec2<f32> = (vec2<f32>(x_2350.y, x_2350.y) * vec2<f32>(x_2353.x, x_2353.y));
    let x_2356 : vec3<f32> = u_xlat22;
    u_xlat22 = vec3<f32>(x_2355.x, x_2355.y, x_2356.z);
    let x_2359 : vec4<f32> = x_2341.x_MainLightWorldToLight[0i];
    let x_2361 : vec3<f32> = vs_INTERP0;
    let x_2364 : vec3<f32> = u_xlat22;
    let x_2366 : vec2<f32> = ((vec2<f32>(x_2359.x, x_2359.y) * vec2<f32>(x_2361.x, x_2361.x)) + vec2<f32>(x_2364.x, x_2364.y));
    let x_2367 : vec3<f32> = u_xlat22;
    u_xlat22 = vec3<f32>(x_2366.x, x_2366.y, x_2367.z);
    let x_2370 : vec4<f32> = x_2341.x_MainLightWorldToLight[2i];
    let x_2372 : vec3<f32> = vs_INTERP0;
    let x_2375 : vec3<f32> = u_xlat22;
    let x_2377 : vec2<f32> = ((vec2<f32>(x_2370.x, x_2370.y) * vec2<f32>(x_2372.z, x_2372.z)) + vec2<f32>(x_2375.x, x_2375.y));
    let x_2378 : vec3<f32> = u_xlat22;
    u_xlat22 = vec3<f32>(x_2377.x, x_2377.y, x_2378.z);
    let x_2380 : vec3<f32> = u_xlat22;
    let x_2383 : vec4<f32> = x_2341.x_MainLightWorldToLight[3i];
    let x_2385 : vec2<f32> = (vec2<f32>(x_2380.x, x_2380.y) + vec2<f32>(x_2383.x, x_2383.y));
    let x_2386 : vec3<f32> = u_xlat22;
    u_xlat22 = vec3<f32>(x_2385.x, x_2385.y, x_2386.z);
    let x_2388 : vec3<f32> = u_xlat22;
    let x_2391 : vec2<f32> = ((vec2<f32>(x_2388.x, x_2388.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2392 : vec3<f32> = u_xlat22;
    u_xlat22 = vec3<f32>(x_2391.x, x_2391.y, x_2392.z);
    let x_2399 : vec3<f32> = u_xlat22;
    let x_2402 : f32 = x_146.x_GlobalMipBias.x;
    let x_2403 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2399.x, x_2399.y), x_2402);
    u_xlat7 = x_2403;
    let x_2405 : f32 = x_2341.x_MainLightCookieTextureFormat;
    let x_2407 : f32 = x_2341.x_MainLightCookieTextureFormat;
    let x_2409 : f32 = x_2341.x_MainLightCookieTextureFormat;
    let x_2411 : f32 = x_2341.x_MainLightCookieTextureFormat;
    let x_2412 : vec4<f32> = vec4<f32>(x_2405, x_2407, x_2409, x_2411);
    let x_2419 : vec4<bool> = (vec4<f32>(x_2412.x, x_2412.y, x_2412.z, x_2412.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb22 = vec2<bool>(x_2419.x, x_2419.y);
    let x_2422 : bool = u_xlatb22.y;
    if (x_2422) {
      let x_2427 : f32 = u_xlat7.w;
      x_2423 = x_2427;
    } else {
      let x_2430 : f32 = u_xlat7.x;
      x_2423 = x_2430;
    }
    let x_2431 : f32 = x_2423;
    u_xlat43.x = x_2431;
    let x_2434 : bool = u_xlatb22.x;
    if (x_2434) {
      let x_2438 : vec4<f32> = u_xlat7;
      x_2435 = vec3<f32>(x_2438.x, x_2438.y, x_2438.z);
    } else {
      let x_2441 : vec2<f32> = u_xlat43;
      x_2435 = vec3<f32>(x_2441.x, x_2441.x, x_2441.x);
    }
    let x_2443 : vec3<f32> = x_2435;
    u_xlat27 = x_2443;
  } else {
    u_xlat27.x = 1.0f;
    u_xlat27.y = 1.0f;
    u_xlat27.z = 1.0f;
  }
  let x_2448 : vec3<f32> = u_xlat27;
  let x_2450 : vec4<f32> = x_146.x_MainLightColor;
  u_xlat27 = (x_2448 * vec3<f32>(x_2450.x, x_2450.y, x_2450.z));
  let x_2453 : vec4<f32> = u_xlat6;
  let x_2455 : vec3<f32> = u_xlat27;
  u_xlat27 = (vec3<f32>(x_2453.x, x_2453.x, x_2453.x) * x_2455);
  let x_2457 : vec3<f32> = u_xlat5;
  let x_2459 : vec3<f32> = u_xlat21;
  u_xlat22.x = dot(-(x_2457), x_2459);
  let x_2463 : f32 = u_xlat22.x;
  let x_2465 : f32 = u_xlat22.x;
  u_xlat22.x = (x_2463 + x_2465);
  let x_2468 : vec3<f32> = u_xlat21;
  let x_2469 : vec3<f32> = u_xlat22;
  let x_2473 : vec3<f32> = u_xlat5;
  let x_2475 : vec3<f32> = ((x_2468 * -(vec3<f32>(x_2469.x, x_2469.x, x_2469.x))) + -(x_2473));
  let x_2476 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2475.x, x_2475.y, x_2475.z, x_2476.w);
  let x_2478 : vec3<f32> = u_xlat21;
  let x_2479 : vec3<f32> = u_xlat5;
  u_xlat22.x = dot(x_2478, x_2479);
  let x_2483 : f32 = u_xlat22.x;
  u_xlat22.x = clamp(x_2483, 0.0f, 1.0f);
  let x_2487 : f32 = u_xlat22.x;
  u_xlat22.x = (-(x_2487) + 1.0f);
  let x_2492 : f32 = u_xlat22.x;
  let x_2494 : f32 = u_xlat22.x;
  u_xlat22.x = (x_2492 * x_2494);
  let x_2498 : f32 = u_xlat22.z;
  u_xlat22.y = ((-(x_2498) * 0.699999988f) + 1.700000048f);
  let x_2505 : vec3<f32> = u_xlat22;
  let x_2507 : vec3<f32> = u_xlat22;
  let x_2509 : vec2<f32> = (vec2<f32>(x_2505.x, x_2505.y) * vec2<f32>(x_2507.x, x_2507.z));
  let x_2510 : vec3<f32> = u_xlat22;
  u_xlat22 = vec3<f32>(x_2509.x, x_2509.y, x_2510.z);
  let x_2513 : f32 = u_xlat22.y;
  u_xlat43.x = (x_2513 * 6.0f);
  let x_2525 : vec4<f32> = u_xlat7;
  let x_2528 : f32 = u_xlat43.x;
  let x_2529 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2525.x, x_2525.y, x_2525.z), x_2528);
  u_xlat7 = x_2529;
  let x_2531 : f32 = u_xlat7.w;
  u_xlat43.x = (x_2531 + -1.0f);
  let x_2535 : f32 = x_59.unity_SpecCube0_HDR.w;
  let x_2537 : f32 = u_xlat43.x;
  u_xlat43.x = ((x_2535 * x_2537) + 1.0f);
  let x_2542 : f32 = u_xlat43.x;
  u_xlat43.x = max(x_2542, 0.0f);
  let x_2546 : f32 = u_xlat43.x;
  u_xlat43.x = log2(x_2546);
  let x_2550 : f32 = u_xlat43.x;
  let x_2552 : f32 = x_59.unity_SpecCube0_HDR.y;
  u_xlat43.x = (x_2550 * x_2552);
  let x_2556 : f32 = u_xlat43.x;
  u_xlat43.x = exp2(x_2556);
  let x_2560 : f32 = u_xlat43.x;
  let x_2562 : f32 = x_59.unity_SpecCube0_HDR.x;
  u_xlat43.x = (x_2560 * x_2562);
  let x_2565 : vec4<f32> = u_xlat7;
  let x_2567 : vec2<f32> = u_xlat43;
  let x_2569 : vec3<f32> = (vec3<f32>(x_2565.x, x_2565.y, x_2565.z) * vec3<f32>(x_2567.x, x_2567.x, x_2567.x));
  let x_2570 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2569.x, x_2569.y, x_2569.z, x_2570.w);
  let x_2572 : f32 = u_xlat65;
  let x_2574 : f32 = u_xlat65;
  u_xlat43 = ((vec2<f32>(x_2572, x_2572) * vec2<f32>(x_2574, x_2574)) + vec2<f32>(-1.0f, 1.0f));
  let x_2580 : f32 = u_xlat43.y;
  u_xlat64 = (1.0f / x_2580);
  let x_2582 : vec3<f32> = u_xlat2;
  let x_2584 : vec4<f32> = u_xlat0;
  let x_2586 : vec3<f32> = (-(x_2582) + vec3<f32>(x_2584.x, x_2584.x, x_2584.x));
  let x_2587 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2586.x, x_2586.y, x_2586.z, x_2587.w);
  let x_2589 : vec3<f32> = u_xlat22;
  let x_2591 : vec4<f32> = u_xlat8;
  let x_2594 : vec3<f32> = u_xlat2;
  let x_2595 : vec3<f32> = ((vec3<f32>(x_2589.x, x_2589.x, x_2589.x) * vec3<f32>(x_2591.x, x_2591.y, x_2591.z)) + x_2594);
  let x_2596 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2595.x, x_2595.y, x_2595.z, x_2596.w);
  let x_2598 : f32 = u_xlat64;
  let x_2600 : vec4<f32> = u_xlat8;
  let x_2602 : vec3<f32> = (vec3<f32>(x_2598, x_2598, x_2598) * vec3<f32>(x_2600.x, x_2600.y, x_2600.z));
  let x_2603 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2602.x, x_2602.y, x_2602.z, x_2603.w);
  let x_2605 : vec4<f32> = u_xlat7;
  let x_2607 : vec4<f32> = u_xlat8;
  let x_2609 : vec3<f32> = (vec3<f32>(x_2605.x, x_2605.y, x_2605.z) * vec3<f32>(x_2607.x, x_2607.y, x_2607.z));
  let x_2610 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2609.x, x_2609.y, x_2609.z, x_2610.w);
  let x_2612 : vec4<f32> = u_xlat4;
  let x_2614 : vec3<f32> = u_xlat3;
  let x_2616 : vec4<f32> = u_xlat7;
  let x_2618 : vec3<f32> = ((vec3<f32>(x_2612.x, x_2612.y, x_2612.z) * x_2614) + vec3<f32>(x_2616.x, x_2616.y, x_2616.z));
  let x_2619 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2618.x, x_2618.y, x_2618.z, x_2619.w);
  let x_2622 : f32 = u_xlat1.x;
  let x_2624 : f32 = x_59.unity_LightData.z;
  u_xlat0.x = (x_2622 * x_2624);
  let x_2627 : vec3<f32> = u_xlat21;
  let x_2629 : vec4<f32> = x_146.x_MainLightPosition;
  u_xlat1.x = dot(x_2627, vec3<f32>(x_2629.x, x_2629.y, x_2629.z));
  let x_2634 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_2634, 0.0f, 1.0f);
  let x_2638 : f32 = u_xlat0.x;
  let x_2640 : f32 = u_xlat1.x;
  u_xlat0.x = (x_2638 * x_2640);
  let x_2643 : vec4<f32> = u_xlat0;
  let x_2645 : vec3<f32> = u_xlat27;
  let x_2646 : vec3<f32> = (vec3<f32>(x_2643.x, x_2643.x, x_2643.x) * x_2645);
  let x_2647 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2646.x, x_2646.y, x_2647.z, x_2646.z);
  let x_2649 : vec3<f32> = u_xlat5;
  let x_2651 : vec4<f32> = x_146.x_MainLightPosition;
  u_xlat27 = (x_2649 + vec3<f32>(x_2651.x, x_2651.y, x_2651.z));
  let x_2654 : vec3<f32> = u_xlat27;
  let x_2655 : vec3<f32> = u_xlat27;
  u_xlat0.x = dot(x_2654, x_2655);
  let x_2659 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2659, 1.17549435e-37f);
  let x_2663 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_2663);
  let x_2666 : vec4<f32> = u_xlat0;
  let x_2668 : vec3<f32> = u_xlat27;
  u_xlat27 = (vec3<f32>(x_2666.x, x_2666.x, x_2666.x) * x_2668);
  let x_2670 : vec3<f32> = u_xlat21;
  let x_2671 : vec3<f32> = u_xlat27;
  u_xlat0.x = dot(x_2670, x_2671);
  let x_2675 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_2675, 0.0f, 1.0f);
  let x_2679 : vec4<f32> = x_146.x_MainLightPosition;
  let x_2681 : vec3<f32> = u_xlat27;
  u_xlat65 = dot(vec3<f32>(x_2679.x, x_2679.y, x_2679.z), x_2681);
  let x_2683 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2683, 0.0f, 1.0f);
  let x_2686 : f32 = u_xlat0.x;
  let x_2688 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2686 * x_2688);
  let x_2692 : f32 = u_xlat0.x;
  let x_2694 : f32 = u_xlat43.x;
  u_xlat0.x = ((x_2692 * x_2694) + 1.000010014f);
  let x_2699 : f32 = u_xlat65;
  let x_2700 : f32 = u_xlat65;
  u_xlat65 = (x_2699 * x_2700);
  let x_2703 : f32 = u_xlat0.x;
  let x_2705 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2703 * x_2705);
  let x_2708 : f32 = u_xlat65;
  u_xlat65 = max(x_2708, 0.100000001f);
  let x_2711 : f32 = u_xlat0.x;
  let x_2712 : f32 = u_xlat65;
  u_xlat0.x = (x_2711 * x_2712);
  let x_2715 : f32 = u_xlat67;
  let x_2717 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2715 * x_2717);
  let x_2720 : f32 = u_xlat66;
  let x_2722 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2720 / x_2722);
  let x_2725 : vec3<f32> = u_xlat2;
  let x_2726 : vec4<f32> = u_xlat0;
  let x_2729 : vec3<f32> = u_xlat3;
  u_xlat27 = ((x_2725 * vec3<f32>(x_2726.x, x_2726.x, x_2726.x)) + x_2729);
  let x_2731 : vec4<f32> = u_xlat1;
  let x_2733 : vec3<f32> = u_xlat27;
  let x_2734 : vec3<f32> = (vec3<f32>(x_2731.x, x_2731.y, x_2731.w) * x_2733);
  let x_2735 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2734.x, x_2734.y, x_2735.z, x_2734.z);
  let x_2738 : f32 = x_146.x_AdditionalLightsCount.x;
  let x_2740 : f32 = x_59.unity_LightData.y;
  u_xlat0.x = min(x_2738, x_2740);
  let x_2745 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_2745));
  let x_2749 : f32 = x_2341.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2751 : f32 = x_2341.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2753 : f32 = x_2341.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2755 : f32 = x_2341.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2756 : vec4<f32> = vec4<f32>(x_2749, x_2751, x_2753, x_2755);
  let x_2762 : vec4<bool> = (vec4<f32>(x_2756.x, x_2756.y, x_2756.z, x_2756.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb27 = vec2<bool>(x_2762.x, x_2762.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2773 : u32 = u_xlatu_loop_1;
    let x_2774 : u32 = u_xlatu0;
    if ((x_2773 < x_2774)) {
    } else {
      break;
    }
    let x_2777 : u32 = u_xlatu_loop_1;
    u_xlatu69 = (x_2777 >> 2u);
    let x_2780 : u32 = u_xlatu_loop_1;
    u_xlati70 = bitcast<i32>((x_2780 & 3u));
    let x_2783 : u32 = u_xlatu69;
    let x_2786 : vec4<f32> = x_59.unity_LightIndices[bitcast<i32>(x_2783)];
    let x_2796 : i32 = u_xlati70;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2801 : vec4<u32> = indexable[x_2796];
    u_xlat69 = dot(x_2786, bitcast<vec4<f32>>(x_2801));
    let x_2804 : f32 = u_xlat69;
    u_xlatu69 = bitcast<u32>(i32(x_2804));
    let x_2807 : vec3<f32> = vs_INTERP0;
    let x_2819 : u32 = u_xlatu69;
    let x_2822 : vec4<f32> = x_2818.x_AdditionalLightsPosition[bitcast<i32>(x_2819)];
    let x_2825 : u32 = u_xlatu69;
    let x_2828 : vec4<f32> = x_2818.x_AdditionalLightsPosition[bitcast<i32>(x_2825)];
    let x_2830 : vec3<f32> = ((-(x_2807) * vec3<f32>(x_2822.w, x_2822.w, x_2822.w)) + vec3<f32>(x_2828.x, x_2828.y, x_2828.z));
    let x_2831 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2830.x, x_2830.y, x_2830.z, x_2831.w);
    let x_2834 : vec4<f32> = u_xlat8;
    let x_2836 : vec4<f32> = u_xlat8;
    u_xlat70 = dot(vec3<f32>(x_2834.x, x_2834.y, x_2834.z), vec3<f32>(x_2836.x, x_2836.y, x_2836.z));
    let x_2839 : f32 = u_xlat70;
    u_xlat70 = max(x_2839, 6.10351562e-05f);
    let x_2842 : f32 = u_xlat70;
    u_xlat71 = inverseSqrt(x_2842);
    let x_2844 : f32 = u_xlat71;
    let x_2846 : vec4<f32> = u_xlat8;
    let x_2848 : vec3<f32> = (vec3<f32>(x_2844, x_2844, x_2844) * vec3<f32>(x_2846.x, x_2846.y, x_2846.z));
    let x_2849 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2848.x, x_2848.y, x_2848.z, x_2849.w);
    let x_2852 : f32 = u_xlat70;
    u_xlat72 = (1.0f / x_2852);
    let x_2854 : f32 = u_xlat70;
    let x_2855 : u32 = u_xlatu69;
    let x_2858 : f32 = x_2818.x_AdditionalLightsAttenuation[bitcast<i32>(x_2855)].x;
    u_xlat70 = (x_2854 * x_2858);
    let x_2860 : f32 = u_xlat70;
    let x_2862 : f32 = u_xlat70;
    u_xlat70 = ((-(x_2860) * x_2862) + 1.0f);
    let x_2865 : f32 = u_xlat70;
    u_xlat70 = max(x_2865, 0.0f);
    let x_2867 : f32 = u_xlat70;
    let x_2868 : f32 = u_xlat70;
    u_xlat70 = (x_2867 * x_2868);
    let x_2870 : f32 = u_xlat70;
    let x_2871 : f32 = u_xlat72;
    u_xlat70 = (x_2870 * x_2871);
    let x_2873 : u32 = u_xlatu69;
    let x_2876 : vec4<f32> = x_2818.x_AdditionalLightsSpotDir[bitcast<i32>(x_2873)];
    let x_2878 : vec4<f32> = u_xlat9;
    u_xlat72 = dot(vec3<f32>(x_2876.x, x_2876.y, x_2876.z), vec3<f32>(x_2878.x, x_2878.y, x_2878.z));
    let x_2881 : f32 = u_xlat72;
    let x_2882 : u32 = u_xlatu69;
    let x_2885 : f32 = x_2818.x_AdditionalLightsAttenuation[bitcast<i32>(x_2882)].z;
    let x_2887 : u32 = u_xlatu69;
    let x_2890 : f32 = x_2818.x_AdditionalLightsAttenuation[bitcast<i32>(x_2887)].w;
    u_xlat72 = ((x_2881 * x_2885) + x_2890);
    let x_2892 : f32 = u_xlat72;
    u_xlat72 = clamp(x_2892, 0.0f, 1.0f);
    let x_2894 : f32 = u_xlat72;
    let x_2895 : f32 = u_xlat72;
    u_xlat72 = (x_2894 * x_2895);
    let x_2897 : f32 = u_xlat70;
    let x_2898 : f32 = u_xlat72;
    u_xlat70 = (x_2897 * x_2898);
    let x_2901 : u32 = u_xlatu69;
    u_xlatu72 = (x_2901 >> 5u);
    let x_2904 : u32 = u_xlatu69;
    u_xlati10 = (1i << bitcast<u32>((bitcast<i32>(x_2904) & 31i)));
    let x_2910 : i32 = u_xlati10;
    let x_2912 : u32 = u_xlatu72;
    let x_2915 : f32 = x_2341.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2912)].el;
    u_xlati72 = bitcast<i32>((bitcast<u32>(x_2910) & bitcast<u32>(x_2915)));
    let x_2919 : i32 = u_xlati72;
    if ((x_2919 != 0i)) {
      let x_2929 : u32 = u_xlatu69;
      let x_2932 : f32 = x_2928.x_AdditionalLightsLightTypes[bitcast<i32>(x_2929)].el;
      u_xlati72 = i32(x_2932);
      let x_2934 : i32 = u_xlati72;
      u_xlati10 = select(1i, 0i, (x_2934 != 0i));
      let x_2938 : u32 = u_xlatu69;
      u_xlati31 = (bitcast<i32>(x_2938) << bitcast<u32>(2i));
      let x_2941 : i32 = u_xlati10;
      if ((x_2941 != 0i)) {
        let x_2945 : vec3<f32> = vs_INTERP0;
        let x_2947 : i32 = u_xlati31;
        let x_2950 : i32 = u_xlati31;
        let x_2954 : vec4<f32> = x_2928.x_AdditionalLightsWorldToLights[((x_2947 + 1i) / 4i)][((x_2950 + 1i) % 4i)];
        let x_2956 : vec3<f32> = (vec3<f32>(x_2945.y, x_2945.y, x_2945.y) * vec3<f32>(x_2954.x, x_2954.y, x_2954.w));
        let x_2957 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2956.x, x_2957.y, x_2956.y, x_2956.z);
        let x_2959 : i32 = u_xlati31;
        let x_2961 : i32 = u_xlati31;
        let x_2964 : vec4<f32> = x_2928.x_AdditionalLightsWorldToLights[(x_2959 / 4i)][(x_2961 % 4i)];
        let x_2966 : vec3<f32> = vs_INTERP0;
        let x_2969 : vec4<f32> = u_xlat10;
        let x_2971 : vec3<f32> = ((vec3<f32>(x_2964.x, x_2964.y, x_2964.w) * vec3<f32>(x_2966.x, x_2966.x, x_2966.x)) + vec3<f32>(x_2969.x, x_2969.z, x_2969.w));
        let x_2972 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2971.x, x_2972.y, x_2971.y, x_2971.z);
        let x_2974 : i32 = u_xlati31;
        let x_2977 : i32 = u_xlati31;
        let x_2981 : vec4<f32> = x_2928.x_AdditionalLightsWorldToLights[((x_2974 + 2i) / 4i)][((x_2977 + 2i) % 4i)];
        let x_2983 : vec3<f32> = vs_INTERP0;
        let x_2986 : vec4<f32> = u_xlat10;
        let x_2988 : vec3<f32> = ((vec3<f32>(x_2981.x, x_2981.y, x_2981.w) * vec3<f32>(x_2983.z, x_2983.z, x_2983.z)) + vec3<f32>(x_2986.x, x_2986.z, x_2986.w));
        let x_2989 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2988.x, x_2989.y, x_2988.y, x_2988.z);
        let x_2991 : vec4<f32> = u_xlat10;
        let x_2993 : i32 = u_xlati31;
        let x_2996 : i32 = u_xlati31;
        let x_3000 : vec4<f32> = x_2928.x_AdditionalLightsWorldToLights[((x_2993 + 3i) / 4i)][((x_2996 + 3i) % 4i)];
        let x_3002 : vec3<f32> = (vec3<f32>(x_2991.x, x_2991.z, x_2991.w) + vec3<f32>(x_3000.x, x_3000.y, x_3000.w));
        let x_3003 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_3002.x, x_3003.y, x_3002.y, x_3002.z);
        let x_3005 : vec4<f32> = u_xlat10;
        let x_3007 : vec4<f32> = u_xlat10;
        let x_3009 : vec2<f32> = (vec2<f32>(x_3005.x, x_3005.z) / vec2<f32>(x_3007.w, x_3007.w));
        let x_3010 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_3009.x, x_3010.y, x_3009.y, x_3010.w);
        let x_3012 : vec4<f32> = u_xlat10;
        let x_3015 : vec2<f32> = ((vec2<f32>(x_3012.x, x_3012.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3016 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_3015.x, x_3016.y, x_3015.y, x_3016.w);
        let x_3018 : vec4<f32> = u_xlat10;
        let x_3022 : vec2<f32> = clamp(vec2<f32>(x_3018.x, x_3018.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3023 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_3022.x, x_3023.y, x_3022.y, x_3023.w);
        let x_3025 : u32 = u_xlatu69;
        let x_3028 : vec4<f32> = x_2928.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3025)];
        let x_3030 : vec4<f32> = u_xlat10;
        let x_3033 : u32 = u_xlatu69;
        let x_3036 : vec4<f32> = x_2928.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3033)];
        let x_3038 : vec2<f32> = ((vec2<f32>(x_3028.x, x_3028.y) * vec2<f32>(x_3030.x, x_3030.z)) + vec2<f32>(x_3036.z, x_3036.w));
        let x_3039 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_3038.x, x_3039.y, x_3038.y, x_3039.w);
      } else {
        let x_3043 : i32 = u_xlati72;
        u_xlatb72 = (x_3043 == 1i);
        let x_3045 : bool = u_xlatb72;
        u_xlati72 = select(0i, 1i, x_3045);
        let x_3047 : i32 = u_xlati72;
        if ((x_3047 != 0i)) {
          let x_3051 : vec3<f32> = vs_INTERP0;
          let x_3053 : i32 = u_xlati31;
          let x_3056 : i32 = u_xlati31;
          let x_3060 : vec4<f32> = x_2928.x_AdditionalLightsWorldToLights[((x_3053 + 1i) / 4i)][((x_3056 + 1i) % 4i)];
          let x_3062 : vec2<f32> = (vec2<f32>(x_3051.y, x_3051.y) * vec2<f32>(x_3060.x, x_3060.y));
          let x_3063 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3062.x, x_3062.y, x_3063.z, x_3063.w);
          let x_3065 : i32 = u_xlati31;
          let x_3067 : i32 = u_xlati31;
          let x_3070 : vec4<f32> = x_2928.x_AdditionalLightsWorldToLights[(x_3065 / 4i)][(x_3067 % 4i)];
          let x_3072 : vec3<f32> = vs_INTERP0;
          let x_3075 : vec4<f32> = u_xlat11;
          let x_3077 : vec2<f32> = ((vec2<f32>(x_3070.x, x_3070.y) * vec2<f32>(x_3072.x, x_3072.x)) + vec2<f32>(x_3075.x, x_3075.y));
          let x_3078 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3077.x, x_3077.y, x_3078.z, x_3078.w);
          let x_3080 : i32 = u_xlati31;
          let x_3083 : i32 = u_xlati31;
          let x_3087 : vec4<f32> = x_2928.x_AdditionalLightsWorldToLights[((x_3080 + 2i) / 4i)][((x_3083 + 2i) % 4i)];
          let x_3089 : vec3<f32> = vs_INTERP0;
          let x_3092 : vec4<f32> = u_xlat11;
          let x_3094 : vec2<f32> = ((vec2<f32>(x_3087.x, x_3087.y) * vec2<f32>(x_3089.z, x_3089.z)) + vec2<f32>(x_3092.x, x_3092.y));
          let x_3095 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3094.x, x_3094.y, x_3095.z, x_3095.w);
          let x_3097 : vec4<f32> = u_xlat11;
          let x_3099 : i32 = u_xlati31;
          let x_3102 : i32 = u_xlati31;
          let x_3106 : vec4<f32> = x_2928.x_AdditionalLightsWorldToLights[((x_3099 + 3i) / 4i)][((x_3102 + 3i) % 4i)];
          let x_3108 : vec2<f32> = (vec2<f32>(x_3097.x, x_3097.y) + vec2<f32>(x_3106.x, x_3106.y));
          let x_3109 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3108.x, x_3108.y, x_3109.z, x_3109.w);
          let x_3111 : vec4<f32> = u_xlat11;
          let x_3114 : vec2<f32> = ((vec2<f32>(x_3111.x, x_3111.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3115 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3114.x, x_3114.y, x_3115.z, x_3115.w);
          let x_3117 : vec4<f32> = u_xlat11;
          let x_3119 : vec2<f32> = fract(vec2<f32>(x_3117.x, x_3117.y));
          let x_3120 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3119.x, x_3119.y, x_3120.z, x_3120.w);
          let x_3122 : u32 = u_xlatu69;
          let x_3125 : vec4<f32> = x_2928.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3122)];
          let x_3127 : vec4<f32> = u_xlat11;
          let x_3130 : u32 = u_xlatu69;
          let x_3133 : vec4<f32> = x_2928.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3130)];
          let x_3135 : vec2<f32> = ((vec2<f32>(x_3125.x, x_3125.y) * vec2<f32>(x_3127.x, x_3127.y)) + vec2<f32>(x_3133.z, x_3133.w));
          let x_3136 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_3135.x, x_3136.y, x_3135.y, x_3136.w);
        } else {
          let x_3139 : vec3<f32> = vs_INTERP0;
          let x_3141 : i32 = u_xlati31;
          let x_3144 : i32 = u_xlati31;
          let x_3148 : vec4<f32> = x_2928.x_AdditionalLightsWorldToLights[((x_3141 + 1i) / 4i)][((x_3144 + 1i) % 4i)];
          u_xlat11 = (vec4<f32>(x_3139.y, x_3139.y, x_3139.y, x_3139.y) * x_3148);
          let x_3150 : i32 = u_xlati31;
          let x_3152 : i32 = u_xlati31;
          let x_3155 : vec4<f32> = x_2928.x_AdditionalLightsWorldToLights[(x_3150 / 4i)][(x_3152 % 4i)];
          let x_3156 : vec3<f32> = vs_INTERP0;
          let x_3159 : vec4<f32> = u_xlat11;
          u_xlat11 = ((x_3155 * vec4<f32>(x_3156.x, x_3156.x, x_3156.x, x_3156.x)) + x_3159);
          let x_3161 : i32 = u_xlati31;
          let x_3164 : i32 = u_xlati31;
          let x_3168 : vec4<f32> = x_2928.x_AdditionalLightsWorldToLights[((x_3161 + 2i) / 4i)][((x_3164 + 2i) % 4i)];
          let x_3169 : vec3<f32> = vs_INTERP0;
          let x_3172 : vec4<f32> = u_xlat11;
          u_xlat11 = ((x_3168 * vec4<f32>(x_3169.z, x_3169.z, x_3169.z, x_3169.z)) + x_3172);
          let x_3174 : vec4<f32> = u_xlat11;
          let x_3175 : i32 = u_xlati31;
          let x_3178 : i32 = u_xlati31;
          let x_3182 : vec4<f32> = x_2928.x_AdditionalLightsWorldToLights[((x_3175 + 3i) / 4i)][((x_3178 + 3i) % 4i)];
          u_xlat11 = (x_3174 + x_3182);
          let x_3184 : vec4<f32> = u_xlat11;
          let x_3186 : vec4<f32> = u_xlat11;
          let x_3188 : vec3<f32> = (vec3<f32>(x_3184.x, x_3184.y, x_3184.z) / vec3<f32>(x_3186.w, x_3186.w, x_3186.w));
          let x_3189 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3188.x, x_3188.y, x_3188.z, x_3189.w);
          let x_3191 : vec4<f32> = u_xlat11;
          let x_3193 : vec4<f32> = u_xlat11;
          u_xlat72 = dot(vec3<f32>(x_3191.x, x_3191.y, x_3191.z), vec3<f32>(x_3193.x, x_3193.y, x_3193.z));
          let x_3196 : f32 = u_xlat72;
          u_xlat72 = inverseSqrt(x_3196);
          let x_3198 : f32 = u_xlat72;
          let x_3200 : vec4<f32> = u_xlat11;
          let x_3202 : vec3<f32> = (vec3<f32>(x_3198, x_3198, x_3198) * vec3<f32>(x_3200.x, x_3200.y, x_3200.z));
          let x_3203 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3202.x, x_3202.y, x_3202.z, x_3203.w);
          let x_3205 : vec4<f32> = u_xlat11;
          u_xlat72 = dot(abs(vec3<f32>(x_3205.x, x_3205.y, x_3205.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3210 : f32 = u_xlat72;
          u_xlat72 = max(x_3210, 0.000001f);
          let x_3213 : f32 = u_xlat72;
          u_xlat72 = (1.0f / x_3213);
          let x_3215 : f32 = u_xlat72;
          let x_3217 : vec4<f32> = u_xlat11;
          let x_3219 : vec3<f32> = (vec3<f32>(x_3215, x_3215, x_3215) * vec3<f32>(x_3217.z, x_3217.x, x_3217.y));
          let x_3220 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3219.x, x_3219.y, x_3219.z, x_3220.w);
          let x_3223 : f32 = u_xlat12.x;
          u_xlat12.x = -(x_3223);
          let x_3227 : f32 = u_xlat12.x;
          u_xlat12.x = clamp(x_3227, 0.0f, 1.0f);
          let x_3233 : vec4<f32> = u_xlat12;
          let x_3236 : vec4<bool> = (vec4<f32>(x_3233.y, x_3233.y, x_3233.z, x_3233.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_3237 : vec2<bool> = vec2<bool>(x_3236.x, x_3236.z);
          let x_3238 : vec3<bool> = u_xlatb31;
          u_xlatb31 = vec3<bool>(x_3237.x, x_3238.y, x_3237.y);
          let x_3242 : bool = u_xlatb31.x;
          if (x_3242) {
            let x_3247 : f32 = u_xlat12.x;
            x_3243 = x_3247;
          } else {
            let x_3250 : f32 = u_xlat12.x;
            x_3243 = -(x_3250);
          }
          let x_3252 : f32 = x_3243;
          u_xlat31.x = x_3252;
          let x_3255 : bool = u_xlatb31.z;
          if (x_3255) {
            let x_3260 : f32 = u_xlat12.x;
            x_3256 = x_3260;
          } else {
            let x_3263 : f32 = u_xlat12.x;
            x_3256 = -(x_3263);
          }
          let x_3265 : f32 = x_3256;
          u_xlat31.z = x_3265;
          let x_3267 : vec4<f32> = u_xlat11;
          let x_3269 : f32 = u_xlat72;
          let x_3272 : vec3<f32> = u_xlat31;
          let x_3274 : vec2<f32> = ((vec2<f32>(x_3267.x, x_3267.y) * vec2<f32>(x_3269, x_3269)) + vec2<f32>(x_3272.x, x_3272.z));
          let x_3275 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_3274.x, x_3275.y, x_3274.y);
          let x_3277 : vec3<f32> = u_xlat31;
          let x_3280 : vec2<f32> = ((vec2<f32>(x_3277.x, x_3277.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3281 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_3280.x, x_3281.y, x_3280.y);
          let x_3283 : vec3<f32> = u_xlat31;
          let x_3287 : vec2<f32> = clamp(vec2<f32>(x_3283.x, x_3283.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3288 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_3287.x, x_3288.y, x_3287.y);
          let x_3290 : u32 = u_xlatu69;
          let x_3293 : vec4<f32> = x_2928.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3290)];
          let x_3295 : vec3<f32> = u_xlat31;
          let x_3298 : u32 = u_xlatu69;
          let x_3301 : vec4<f32> = x_2928.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3298)];
          let x_3303 : vec2<f32> = ((vec2<f32>(x_3293.x, x_3293.y) * vec2<f32>(x_3295.x, x_3295.z)) + vec2<f32>(x_3301.z, x_3301.w));
          let x_3304 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_3303.x, x_3304.y, x_3303.y, x_3304.w);
        }
      }
      let x_3311 : vec4<f32> = u_xlat10;
      let x_3314 : f32 = x_146.x_GlobalMipBias.x;
      let x_3315 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_3311.x, x_3311.z), x_3314);
      u_xlat10 = x_3315;
      let x_3317 : bool = u_xlatb27.y;
      if (x_3317) {
        let x_3322 : f32 = u_xlat10.w;
        x_3318 = x_3322;
      } else {
        let x_3325 : f32 = u_xlat10.x;
        x_3318 = x_3325;
      }
      let x_3326 : f32 = x_3318;
      u_xlat72 = x_3326;
      let x_3328 : bool = u_xlatb27.x;
      if (x_3328) {
        let x_3332 : vec4<f32> = u_xlat10;
        x_3329 = vec3<f32>(x_3332.x, x_3332.y, x_3332.z);
      } else {
        let x_3335 : f32 = u_xlat72;
        x_3329 = vec3<f32>(x_3335, x_3335, x_3335);
      }
      let x_3337 : vec3<f32> = x_3329;
      let x_3338 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_3337.x, x_3337.y, x_3337.z, x_3338.w);
    } else {
      u_xlat10.x = 1.0f;
      u_xlat10.y = 1.0f;
      u_xlat10.z = 1.0f;
    }
    let x_3344 : vec4<f32> = u_xlat10;
    let x_3346 : u32 = u_xlatu69;
    let x_3349 : vec4<f32> = x_2818.x_AdditionalLightsColor[bitcast<i32>(x_3346)];
    let x_3351 : vec3<f32> = (vec3<f32>(x_3344.x, x_3344.y, x_3344.z) * vec3<f32>(x_3349.x, x_3349.y, x_3349.z));
    let x_3352 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3351.x, x_3351.y, x_3351.z, x_3352.w);
    let x_3354 : vec4<f32> = u_xlat6;
    let x_3356 : vec4<f32> = u_xlat10;
    let x_3358 : vec3<f32> = (vec3<f32>(x_3354.x, x_3354.x, x_3354.x) * vec3<f32>(x_3356.x, x_3356.y, x_3356.z));
    let x_3359 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3358.x, x_3358.y, x_3358.z, x_3359.w);
    let x_3361 : vec3<f32> = u_xlat21;
    let x_3362 : vec4<f32> = u_xlat9;
    u_xlat69 = dot(x_3361, vec3<f32>(x_3362.x, x_3362.y, x_3362.z));
    let x_3365 : f32 = u_xlat69;
    u_xlat69 = clamp(x_3365, 0.0f, 1.0f);
    let x_3367 : f32 = u_xlat69;
    let x_3368 : f32 = u_xlat70;
    u_xlat69 = (x_3367 * x_3368);
    let x_3370 : f32 = u_xlat69;
    let x_3372 : vec4<f32> = u_xlat10;
    let x_3374 : vec3<f32> = (vec3<f32>(x_3370, x_3370, x_3370) * vec3<f32>(x_3372.x, x_3372.y, x_3372.z));
    let x_3375 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3374.x, x_3374.y, x_3374.z, x_3375.w);
    let x_3377 : vec4<f32> = u_xlat8;
    let x_3379 : f32 = u_xlat71;
    let x_3382 : vec3<f32> = u_xlat5;
    let x_3383 : vec3<f32> = ((vec3<f32>(x_3377.x, x_3377.y, x_3377.z) * vec3<f32>(x_3379, x_3379, x_3379)) + x_3382);
    let x_3384 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3383.x, x_3383.y, x_3383.z, x_3384.w);
    let x_3386 : vec4<f32> = u_xlat8;
    let x_3388 : vec4<f32> = u_xlat8;
    u_xlat69 = dot(vec3<f32>(x_3386.x, x_3386.y, x_3386.z), vec3<f32>(x_3388.x, x_3388.y, x_3388.z));
    let x_3391 : f32 = u_xlat69;
    u_xlat69 = max(x_3391, 1.17549435e-37f);
    let x_3393 : f32 = u_xlat69;
    u_xlat69 = inverseSqrt(x_3393);
    let x_3395 : f32 = u_xlat69;
    let x_3397 : vec4<f32> = u_xlat8;
    let x_3399 : vec3<f32> = (vec3<f32>(x_3395, x_3395, x_3395) * vec3<f32>(x_3397.x, x_3397.y, x_3397.z));
    let x_3400 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3399.x, x_3399.y, x_3399.z, x_3400.w);
    let x_3402 : vec3<f32> = u_xlat21;
    let x_3403 : vec4<f32> = u_xlat8;
    u_xlat69 = dot(x_3402, vec3<f32>(x_3403.x, x_3403.y, x_3403.z));
    let x_3406 : f32 = u_xlat69;
    u_xlat69 = clamp(x_3406, 0.0f, 1.0f);
    let x_3408 : vec4<f32> = u_xlat9;
    let x_3410 : vec4<f32> = u_xlat8;
    u_xlat70 = dot(vec3<f32>(x_3408.x, x_3408.y, x_3408.z), vec3<f32>(x_3410.x, x_3410.y, x_3410.z));
    let x_3413 : f32 = u_xlat70;
    u_xlat70 = clamp(x_3413, 0.0f, 1.0f);
    let x_3415 : f32 = u_xlat69;
    let x_3416 : f32 = u_xlat69;
    u_xlat69 = (x_3415 * x_3416);
    let x_3418 : f32 = u_xlat69;
    let x_3420 : f32 = u_xlat43.x;
    u_xlat69 = ((x_3418 * x_3420) + 1.000010014f);
    let x_3423 : f32 = u_xlat70;
    let x_3424 : f32 = u_xlat70;
    u_xlat70 = (x_3423 * x_3424);
    let x_3426 : f32 = u_xlat69;
    let x_3427 : f32 = u_xlat69;
    u_xlat69 = (x_3426 * x_3427);
    let x_3429 : f32 = u_xlat70;
    u_xlat70 = max(x_3429, 0.100000001f);
    let x_3431 : f32 = u_xlat69;
    let x_3432 : f32 = u_xlat70;
    u_xlat69 = (x_3431 * x_3432);
    let x_3434 : f32 = u_xlat67;
    let x_3435 : f32 = u_xlat69;
    u_xlat69 = (x_3434 * x_3435);
    let x_3437 : f32 = u_xlat66;
    let x_3438 : f32 = u_xlat69;
    u_xlat69 = (x_3437 / x_3438);
    let x_3440 : vec3<f32> = u_xlat2;
    let x_3441 : f32 = u_xlat69;
    let x_3444 : vec3<f32> = u_xlat3;
    let x_3445 : vec3<f32> = ((x_3440 * vec3<f32>(x_3441, x_3441, x_3441)) + x_3444);
    let x_3446 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3445.x, x_3445.y, x_3445.z, x_3446.w);
    let x_3448 : vec4<f32> = u_xlat8;
    let x_3450 : vec4<f32> = u_xlat10;
    let x_3453 : vec4<f32> = u_xlat7;
    let x_3455 : vec3<f32> = ((vec3<f32>(x_3448.x, x_3448.y, x_3448.z) * vec3<f32>(x_3450.x, x_3450.y, x_3450.z)) + vec3<f32>(x_3453.x, x_3453.y, x_3453.z));
    let x_3456 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3455.x, x_3455.y, x_3455.z, x_3456.w);

    continuing {
      let x_3458 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3458 + bitcast<u32>(1i));
    }
  }
  let x_3460 : vec4<f32> = u_xlat4;
  let x_3462 : f32 = u_xlat68;
  let x_3465 : vec4<f32> = u_xlat1;
  let x_3467 : vec3<f32> = ((vec3<f32>(x_3460.x, x_3460.y, x_3460.z) * vec3<f32>(x_3462, x_3462, x_3462)) + vec3<f32>(x_3465.x, x_3465.y, x_3465.w));
  let x_3468 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3467.x, x_3467.y, x_3467.z, x_3468.w);
  let x_3472 : vec4<f32> = u_xlat7;
  let x_3474 : vec4<f32> = u_xlat0;
  let x_3476 : vec3<f32> = (vec3<f32>(x_3472.x, x_3472.y, x_3472.z) + vec3<f32>(x_3474.x, x_3474.y, x_3474.z));
  let x_3477 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3476.x, x_3476.y, x_3476.z, x_3477.w);
  let x_3481 : u32 = x_146.x_RenderingLayerMaxInt;
  let x_3483 : f32 = x_59.unity_RenderingLayer.x;
  u_xlatu0 = (x_3481 & bitcast<u32>(x_3483));
  let x_3486 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_3486);
  let x_3491 : f32 = u_xlat0.x;
  let x_3493 : f32 = x_146.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_3491 * x_3493);
  let x_3498 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_3498, 0.0f, 1.0f);
  SV_Target0.w = 1.0f;
  let x_3502 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_3502.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
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

