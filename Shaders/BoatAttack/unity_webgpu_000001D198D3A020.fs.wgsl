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

@group(1) @binding(3) var<uniform> x_693 : MainLightShadows;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_2390 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2836 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_2941 : AdditionalLightsCookies;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

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
  var u_xlat22 : vec2<f32>;
  var u_xlat25 : vec3<f32>;
  var u_xlat42 : vec2<f32>;
  var x_653 : f32;
  var x_666 : f32;
  var x_678 : f32;
  var u_xlat8 : vec4<f32>;
  var u_xlatb6 : vec4<bool>;
  var u_xlatu21 : u32;
  var u_xlati21 : i32;
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
  var u_xlat29 : vec3<f32>;
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
  var u_xlatb42 : vec2<bool>;
  var u_xlatb63 : bool;
  var x_2343 : f32;
  var u_xlat63 : f32;
  var x_2457 : f32;
  var x_2468 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu65 : u32;
  var u_xlati69 : i32;
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
  var x_3256 : f32;
  var x_3269 : f32;
  var x_3331 : f32;
  var x_3342 : vec3<f32>;
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
  let x_322 : f32 = u_xlat1.x;
  u_xlat22.x = ((x_322 * -2.0f) + 3.0f);
  let x_327 : f32 = u_xlat1.x;
  let x_329 : f32 = u_xlat1.x;
  u_xlat1.x = (x_327 * x_329);
  let x_333 : f32 = u_xlat1.x;
  let x_335 : f32 = u_xlat22.x;
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
  u_xlat25 = vec3<f32>(x_376.x, x_376.y, x_376.w);
  let x_379 : f32 = u_xlat25.x;
  let x_381 : f32 = u_xlat25.z;
  u_xlat25.x = (x_379 * x_381);
  let x_384 : vec3<f32> = u_xlat25;
  let x_389 : vec2<f32> = ((vec2<f32>(x_384.x, x_384.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_390 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_389.x, x_389.y, x_390.z);
  let x_392 : vec3<f32> = u_xlat5;
  let x_394 : vec3<f32> = u_xlat5;
  u_xlat22.x = dot(vec2<f32>(x_392.x, x_392.y), vec2<f32>(x_394.x, x_394.y));
  let x_399 : f32 = u_xlat22.x;
  u_xlat22.x = min(x_399, 1.0f);
  let x_403 : f32 = u_xlat22.x;
  u_xlat22.x = (-(x_403) + 1.0f);
  let x_408 : f32 = u_xlat22.x;
  u_xlat22.x = sqrt(x_408);
  let x_412 : f32 = u_xlat22.x;
  u_xlat5.z = max(x_412, 1.00000002e-16f);
  let x_419 : vec4<f32> = x_59.unity_ObjectToWorld[0i];
  let x_422 : vec4<f32> = x_59.unity_ObjectToWorld[0i];
  u_xlat22.x = dot(vec3<f32>(x_419.x, x_419.y, x_419.z), vec3<f32>(x_422.x, x_422.y, x_422.z));
  let x_427 : f32 = u_xlat22.x;
  u_xlat6.x = sqrt(x_427);
  let x_431 : vec4<f32> = x_59.unity_ObjectToWorld[1i];
  let x_434 : vec4<f32> = x_59.unity_ObjectToWorld[1i];
  u_xlat22.x = dot(vec3<f32>(x_431.x, x_431.y, x_431.z), vec3<f32>(x_434.x, x_434.y, x_434.z));
  let x_439 : f32 = u_xlat22.x;
  u_xlat6.y = sqrt(x_439);
  let x_444 : vec4<f32> = x_59.unity_ObjectToWorld[2i];
  let x_447 : vec4<f32> = x_59.unity_ObjectToWorld[2i];
  u_xlat22.x = dot(vec3<f32>(x_444.x, x_444.y, x_444.z), vec3<f32>(x_447.x, x_447.y, x_447.z));
  let x_452 : f32 = u_xlat22.x;
  u_xlat6.z = sqrt(x_452);
  let x_455 : vec4<f32> = u_xlat6;
  let x_457 : vec4<f32> = u_xlat6;
  u_xlat22.x = dot(vec3<f32>(x_455.x, x_455.y, x_455.z), vec3<f32>(x_457.x, x_457.y, x_457.z));
  let x_462 : f32 = u_xlat22.x;
  u_xlat22.x = sqrt(x_462);
  let x_466 : f32 = u_xlat22.x;
  let x_469 : f32 = x_206.Vector1_90E376AD;
  u_xlat22.x = (x_466 * x_469);
  let x_473 : f32 = u_xlat22.x;
  u_xlat22.x = (x_473 * 30.0f);
  let x_477 : vec2<f32> = u_xlat22;
  let x_479 : vec4<f32> = vs_INTERP3;
  u_xlat22 = (vec2<f32>(x_477.x, x_477.x) * vec2<f32>(x_479.x, x_479.y));
  let x_487 : vec2<f32> = u_xlat22;
  let x_489 : f32 = x_146.x_GlobalMipBias.x;
  let x_490 : vec4<f32> = textureSampleBias(x_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1, sampler_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1, x_487, x_489);
  u_xlat25 = vec3<f32>(x_490.x, x_490.y, x_490.w);
  let x_493 : f32 = u_xlat25.x;
  let x_495 : f32 = u_xlat25.z;
  u_xlat25.x = (x_493 * x_495);
  let x_498 : vec3<f32> = u_xlat25;
  u_xlat22 = ((vec2<f32>(x_498.x, x_498.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_502 : vec2<f32> = u_xlat22;
  let x_503 : vec2<f32> = u_xlat22;
  u_xlat65 = dot(x_502, x_503);
  let x_505 : f32 = u_xlat65;
  u_xlat65 = min(x_505, 1.0f);
  let x_507 : f32 = u_xlat65;
  u_xlat65 = (-(x_507) + 1.0f);
  let x_510 : f32 = u_xlat65;
  u_xlat65 = sqrt(x_510);
  let x_512 : f32 = u_xlat65;
  u_xlat65 = max(x_512, 1.00000002e-16f);
  let x_514 : vec2<f32> = u_xlat22;
  let x_515 : vec3<f32> = u_xlat28;
  let x_517 : vec2<f32> = (x_514 + vec2<f32>(x_515.x, x_515.y));
  let x_518 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_517.x, x_517.y, x_518.z, x_518.w);
  let x_520 : f32 = u_xlat65;
  let x_522 : f32 = u_xlat28.z;
  u_xlat6.z = (x_520 * x_522);
  let x_525 : vec4<f32> = u_xlat6;
  let x_527 : vec4<f32> = u_xlat6;
  u_xlat22.x = dot(vec3<f32>(x_525.x, x_525.y, x_525.z), vec3<f32>(x_527.x, x_527.y, x_527.z));
  let x_532 : f32 = u_xlat22.x;
  u_xlat22.x = max(x_532, 1.17549435e-37f);
  let x_536 : f32 = u_xlat22.x;
  u_xlat22.x = inverseSqrt(x_536);
  let x_539 : vec4<f32> = u_xlat6;
  let x_541 : vec2<f32> = u_xlat22;
  let x_544 : vec3<f32> = u_xlat5;
  u_xlat25 = ((vec3<f32>(x_539.x, x_539.y, x_539.z) * vec3<f32>(x_541.x, x_541.x, x_541.x)) + -(x_544));
  let x_547 : vec4<f32> = u_xlat1;
  let x_549 : vec3<f32> = u_xlat25;
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
  u_xlat21 = ((vec3<f32>(x_591.y, x_591.y, x_591.y) * vec3<f32>(x_593.x, x_593.y, x_593.z)) + vec3<f32>(x_596.y, x_596.z, x_596.w));
  let x_599 : vec4<f32> = u_xlat4;
  let x_601 : vec3<f32> = vs_INTERP1;
  let x_603 : vec3<f32> = u_xlat21;
  u_xlat21 = ((vec3<f32>(x_599.w, x_599.w, x_599.w) * x_601) + x_603);
  let x_605 : vec3<f32> = u_xlat21;
  let x_606 : vec3<f32> = u_xlat21;
  u_xlat1.x = dot(x_605, x_606);
  let x_610 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_610);
  let x_613 : vec3<f32> = u_xlat21;
  let x_614 : vec4<f32> = u_xlat1;
  let x_616 : vec3<f32> = (x_613 * vec3<f32>(x_614.x, x_614.x, x_614.x));
  let x_617 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_616.x, x_616.y, x_616.z, x_617.w);
  let x_621 : f32 = x_146.unity_OrthoParams.w;
  u_xlatb21.x = (x_621 == 0.0f);
  let x_624 : vec3<f32> = vs_INTERP0;
  let x_629 : vec3<f32> = x_146.x_WorldSpaceCameraPos;
  let x_630 : vec3<f32> = (-(x_624) + x_629);
  let x_631 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_630.x, x_630.y, x_630.z, x_631.w);
  let x_634 : vec4<f32> = u_xlat1;
  let x_636 : vec4<f32> = u_xlat1;
  u_xlat42.x = dot(vec3<f32>(x_634.x, x_634.y, x_634.z), vec3<f32>(x_636.x, x_636.y, x_636.z));
  let x_641 : f32 = u_xlat42.x;
  u_xlat42.x = inverseSqrt(x_641);
  let x_644 : vec2<f32> = u_xlat42;
  let x_646 : vec4<f32> = u_xlat1;
  let x_648 : vec3<f32> = (vec3<f32>(x_644.x, x_644.x, x_644.x) * vec3<f32>(x_646.x, x_646.y, x_646.z));
  let x_649 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_648.x, x_648.y, x_648.z, x_649.w);
  let x_652 : bool = u_xlatb21.x;
  if (x_652) {
    let x_657 : f32 = u_xlat1.x;
    x_653 = x_657;
  } else {
    let x_661 : f32 = x_146.unity_MatrixV[0i].z;
    x_653 = x_661;
  }
  let x_662 : f32 = x_653;
  u_xlat5.x = x_662;
  let x_665 : bool = u_xlatb21.x;
  if (x_665) {
    let x_670 : f32 = u_xlat1.y;
    x_666 = x_670;
  } else {
    let x_673 : f32 = x_146.unity_MatrixV[1i].z;
    x_666 = x_673;
  }
  let x_674 : f32 = x_666;
  u_xlat5.y = x_674;
  let x_677 : bool = u_xlatb21.x;
  if (x_677) {
    let x_682 : f32 = u_xlat1.z;
    x_678 = x_682;
  } else {
    let x_685 : f32 = x_146.unity_MatrixV[2i].z;
    x_678 = x_685;
  }
  let x_686 : f32 = x_678;
  u_xlat5.z = x_686;
  let x_688 : vec3<f32> = vs_INTERP0;
  let x_695 : vec4<f32> = x_693.x_CascadeShadowSplitSpheres0;
  u_xlat21 = (x_688 + -(vec3<f32>(x_695.x, x_695.y, x_695.z)));
  let x_699 : vec3<f32> = vs_INTERP0;
  let x_701 : vec4<f32> = x_693.x_CascadeShadowSplitSpheres1;
  let x_704 : vec3<f32> = (x_699 + -(vec3<f32>(x_701.x, x_701.y, x_701.z)));
  let x_705 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_704.x, x_704.y, x_704.z, x_705.w);
  let x_707 : vec3<f32> = vs_INTERP0;
  let x_709 : vec4<f32> = x_693.x_CascadeShadowSplitSpheres2;
  let x_712 : vec3<f32> = (x_707 + -(vec3<f32>(x_709.x, x_709.y, x_709.z)));
  let x_713 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_712.x, x_712.y, x_712.z, x_713.w);
  let x_715 : vec3<f32> = vs_INTERP0;
  let x_717 : vec4<f32> = x_693.x_CascadeShadowSplitSpheres3;
  u_xlat28 = (x_715 + -(vec3<f32>(x_717.x, x_717.y, x_717.z)));
  let x_722 : vec3<f32> = u_xlat21;
  let x_723 : vec3<f32> = u_xlat21;
  u_xlat8.x = dot(x_722, x_723);
  let x_726 : vec4<f32> = u_xlat1;
  let x_728 : vec4<f32> = u_xlat1;
  u_xlat8.y = dot(vec3<f32>(x_726.x, x_726.y, x_726.z), vec3<f32>(x_728.x, x_728.y, x_728.z));
  let x_732 : vec4<f32> = u_xlat6;
  let x_734 : vec4<f32> = u_xlat6;
  u_xlat8.z = dot(vec3<f32>(x_732.x, x_732.y, x_732.z), vec3<f32>(x_734.x, x_734.y, x_734.z));
  let x_738 : vec3<f32> = u_xlat28;
  let x_739 : vec3<f32> = u_xlat28;
  u_xlat8.w = dot(x_738, x_739);
  let x_745 : vec4<f32> = u_xlat8;
  let x_747 : vec4<f32> = x_693.x_CascadeShadowSplitSphereRadii;
  u_xlatb6 = (x_745 < x_747);
  let x_750 : bool = u_xlatb6.x;
  u_xlat8.x = select(0.0f, 1.0f, x_750);
  let x_754 : bool = u_xlatb6.y;
  u_xlat8.y = select(0.0f, 1.0f, x_754);
  let x_758 : bool = u_xlatb6.z;
  u_xlat8.z = select(0.0f, 1.0f, x_758);
  let x_762 : bool = u_xlatb6.w;
  u_xlat8.w = select(0.0f, 1.0f, x_762);
  let x_766 : bool = u_xlatb6.x;
  u_xlat21.x = select(-0.0f, -1.0f, x_766);
  let x_771 : bool = u_xlatb6.y;
  u_xlat21.y = select(-0.0f, -1.0f, x_771);
  let x_775 : bool = u_xlatb6.z;
  u_xlat21.z = select(-0.0f, -1.0f, x_775);
  let x_778 : vec3<f32> = u_xlat21;
  let x_779 : vec4<f32> = u_xlat8;
  u_xlat21 = (x_778 + vec3<f32>(x_779.y, x_779.z, x_779.w));
  let x_782 : vec3<f32> = u_xlat21;
  let x_784 : vec3<f32> = max(x_782, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_785 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_785.x, x_784.x, x_784.y, x_784.z);
  let x_787 : vec4<f32> = u_xlat8;
  u_xlat21.x = dot(x_787, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_792 : f32 = u_xlat21.x;
  u_xlat21.x = (-(x_792) + 4.0f);
  let x_799 : f32 = u_xlat21.x;
  u_xlatu21 = u32(x_799);
  let x_803 : u32 = u_xlatu21;
  u_xlati21 = (bitcast<i32>(x_803) << bitcast<u32>(2i));
  let x_806 : vec3<f32> = vs_INTERP0;
  let x_808 : i32 = u_xlati21;
  let x_811 : i32 = u_xlati21;
  let x_815 : vec4<f32> = x_693.x_MainLightWorldToShadow[((x_808 + 1i) / 4i)][((x_811 + 1i) % 4i)];
  let x_817 : vec3<f32> = (vec3<f32>(x_806.y, x_806.y, x_806.y) * vec3<f32>(x_815.x, x_815.y, x_815.z));
  let x_818 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_817.x, x_817.y, x_817.z, x_818.w);
  let x_820 : i32 = u_xlati21;
  let x_822 : i32 = u_xlati21;
  let x_825 : vec4<f32> = x_693.x_MainLightWorldToShadow[(x_820 / 4i)][(x_822 % 4i)];
  let x_827 : vec3<f32> = vs_INTERP0;
  let x_830 : vec4<f32> = u_xlat1;
  let x_832 : vec3<f32> = ((vec3<f32>(x_825.x, x_825.y, x_825.z) * vec3<f32>(x_827.x, x_827.x, x_827.x)) + vec3<f32>(x_830.x, x_830.y, x_830.z));
  let x_833 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_832.x, x_832.y, x_832.z, x_833.w);
  let x_835 : i32 = u_xlati21;
  let x_838 : i32 = u_xlati21;
  let x_842 : vec4<f32> = x_693.x_MainLightWorldToShadow[((x_835 + 2i) / 4i)][((x_838 + 2i) % 4i)];
  let x_844 : vec3<f32> = vs_INTERP0;
  let x_847 : vec4<f32> = u_xlat1;
  let x_849 : vec3<f32> = ((vec3<f32>(x_842.x, x_842.y, x_842.z) * vec3<f32>(x_844.z, x_844.z, x_844.z)) + vec3<f32>(x_847.x, x_847.y, x_847.z));
  let x_850 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_849.x, x_849.y, x_849.z, x_850.w);
  let x_852 : vec4<f32> = u_xlat1;
  let x_854 : i32 = u_xlati21;
  let x_857 : i32 = u_xlati21;
  let x_861 : vec4<f32> = x_693.x_MainLightWorldToShadow[((x_854 + 3i) / 4i)][((x_857 + 3i) % 4i)];
  u_xlat21 = (vec3<f32>(x_852.x, x_852.y, x_852.z) + vec3<f32>(x_861.x, x_861.y, x_861.z));
  u_xlat4.w = 1.0f;
  let x_867 : vec4<f32> = x_59.unity_SHAr;
  let x_868 : vec4<f32> = u_xlat4;
  u_xlat1.x = dot(x_867, x_868);
  let x_873 : vec4<f32> = x_59.unity_SHAg;
  let x_874 : vec4<f32> = u_xlat4;
  u_xlat1.y = dot(x_873, x_874);
  let x_879 : vec4<f32> = x_59.unity_SHAb;
  let x_880 : vec4<f32> = u_xlat4;
  u_xlat1.z = dot(x_879, x_880);
  let x_883 : vec4<f32> = u_xlat4;
  let x_885 : vec4<f32> = u_xlat4;
  u_xlat6 = (vec4<f32>(x_883.y, x_883.z, x_883.z, x_883.x) * vec4<f32>(x_885.x, x_885.y, x_885.z, x_885.z));
  let x_890 : vec4<f32> = x_59.unity_SHBr;
  let x_891 : vec4<f32> = u_xlat6;
  u_xlat8.x = dot(x_890, x_891);
  let x_896 : vec4<f32> = x_59.unity_SHBg;
  let x_897 : vec4<f32> = u_xlat6;
  u_xlat8.y = dot(x_896, x_897);
  let x_902 : vec4<f32> = x_59.unity_SHBb;
  let x_903 : vec4<f32> = u_xlat6;
  u_xlat8.z = dot(x_902, x_903);
  let x_907 : f32 = u_xlat4.y;
  let x_909 : f32 = u_xlat4.y;
  u_xlat65 = (x_907 * x_909);
  let x_912 : f32 = u_xlat4.x;
  let x_914 : f32 = u_xlat4.x;
  let x_916 : f32 = u_xlat65;
  u_xlat65 = ((x_912 * x_914) + -(x_916));
  let x_921 : vec4<f32> = x_59.unity_SHC;
  let x_923 : f32 = u_xlat65;
  let x_926 : vec4<f32> = u_xlat8;
  let x_928 : vec3<f32> = ((vec3<f32>(x_921.x, x_921.y, x_921.z) * vec3<f32>(x_923, x_923, x_923)) + vec3<f32>(x_926.x, x_926.y, x_926.z));
  let x_929 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_928.x, x_928.y, x_928.z, x_929.w);
  let x_931 : vec4<f32> = u_xlat1;
  let x_933 : vec4<f32> = u_xlat6;
  let x_935 : vec3<f32> = (vec3<f32>(x_931.x, x_931.y, x_931.z) + vec3<f32>(x_933.x, x_933.y, x_933.z));
  let x_936 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_935.x, x_935.y, x_935.z, x_936.w);
  let x_938 : vec4<f32> = u_xlat1;
  let x_940 : vec3<f32> = max(vec3<f32>(x_938.x, x_938.y, x_938.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_941 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_940.x, x_940.y, x_940.z, x_941.w);
  let x_944 : vec4<f32> = x_146.x_ScaledScreenParams;
  let x_945 : vec2<f32> = vec2<f32>(x_944.x, x_944.y);
  let x_949 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_945.x, x_945.y));
  let x_950 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_949.x, x_949.y, x_950.z, x_950.w);
  let x_952 : vec4<f32> = u_xlat6;
  let x_954 : vec4<f32> = hlslcc_FragCoord;
  let x_956 : vec2<f32> = (vec2<f32>(x_952.x, x_952.y) * vec2<f32>(x_954.x, x_954.y));
  let x_957 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_956.x, x_956.y, x_957.z, x_957.w);
  let x_960 : f32 = u_xlat6.y;
  let x_962 : f32 = x_146.x_ScaleBiasRt.x;
  let x_965 : f32 = x_146.x_ScaleBiasRt.y;
  u_xlat65 = ((x_960 * x_962) + x_965);
  let x_967 : f32 = u_xlat65;
  u_xlat6.z = (-(x_967) + 1.0f);
  let x_971 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_971 * vec3<f32>(0.863999963f, 0.863999963f, 0.863999963f));
  let x_975 : vec4<f32> = u_xlat1;
  let x_977 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_975.w, x_975.w, x_975.w) * x_977) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_982 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_982 * vec3<f32>(0.100000001f, 0.100000001f, 0.100000001f)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_989 : f32 = u_xlat0.x;
  u_xlat64 = (-(x_989) + 1.0f);
  let x_992 : f32 = u_xlat64;
  let x_993 : f32 = u_xlat64;
  u_xlat65 = (x_992 * x_993);
  let x_995 : f32 = u_xlat65;
  u_xlat65 = max(x_995, 0.0078125f);
  let x_998 : f32 = u_xlat65;
  let x_999 : f32 = u_xlat65;
  u_xlat66 = (x_998 * x_999);
  let x_1002 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1002 + 0.136000037f);
  let x_1007 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_1007, 1.0f);
  let x_1010 : f32 = u_xlat65;
  u_xlat67 = ((x_1010 * 4.0f) + 2.0f);
  let x_1019 : vec4<f32> = u_xlat6;
  let x_1022 : f32 = x_146.x_GlobalMipBias.x;
  let x_1023 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_1019.x, x_1019.z), x_1022);
  u_xlat68 = x_1023.x;
  let x_1025 : f32 = u_xlat68;
  u_xlat6.x = (x_1025 + -1.0f);
  let x_1029 : f32 = x_146.x_AmbientOcclusionParam.w;
  let x_1031 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_1029 * x_1031) + 1.0f);
  let x_1036 : f32 = u_xlat7.x;
  let x_1037 : f32 = u_xlat68;
  u_xlat68 = min(x_1036, x_1037);
  let x_1041 : f32 = x_693.x_MainLightShadowParams.y;
  u_xlatb27.x = (0.0f < x_1041);
  let x_1045 : bool = u_xlatb27.x;
  if (x_1045) {
    let x_1049 : f32 = x_693.x_MainLightShadowParams.y;
    u_xlatb27.x = (x_1049 == 1.0f);
    let x_1053 : bool = u_xlatb27.x;
    if (x_1053) {
      let x_1056 : vec3<f32> = u_xlat21;
      let x_1059 : vec4<f32> = x_693.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_1056.x, x_1056.y, x_1056.x, x_1056.y) + x_1059);
      let x_1062 : vec4<f32> = u_xlat7;
      let x_1063 : vec2<f32> = vec2<f32>(x_1062.x, x_1062.y);
      let x_1065 : f32 = u_xlat21.z;
      txVec0 = vec3<f32>(x_1063.x, x_1063.y, x_1065);
      let x_1077 : vec3<f32> = txVec0;
      let x_1079 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1077.xy, x_1077.z);
      u_xlat8.x = x_1079;
      let x_1082 : vec4<f32> = u_xlat7;
      let x_1083 : vec2<f32> = vec2<f32>(x_1082.z, x_1082.w);
      let x_1085 : f32 = u_xlat21.z;
      txVec1 = vec3<f32>(x_1083.x, x_1083.y, x_1085);
      let x_1092 : vec3<f32> = txVec1;
      let x_1094 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1092.xy, x_1092.z);
      u_xlat8.y = x_1094;
      let x_1096 : vec3<f32> = u_xlat21;
      let x_1099 : vec4<f32> = x_693.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_1096.x, x_1096.y, x_1096.x, x_1096.y) + x_1099);
      let x_1102 : vec4<f32> = u_xlat7;
      let x_1103 : vec2<f32> = vec2<f32>(x_1102.x, x_1102.y);
      let x_1105 : f32 = u_xlat21.z;
      txVec2 = vec3<f32>(x_1103.x, x_1103.y, x_1105);
      let x_1112 : vec3<f32> = txVec2;
      let x_1114 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1112.xy, x_1112.z);
      u_xlat8.z = x_1114;
      let x_1117 : vec4<f32> = u_xlat7;
      let x_1118 : vec2<f32> = vec2<f32>(x_1117.z, x_1117.w);
      let x_1120 : f32 = u_xlat21.z;
      txVec3 = vec3<f32>(x_1118.x, x_1118.y, x_1120);
      let x_1127 : vec3<f32> = txVec3;
      let x_1129 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1127.xy, x_1127.z);
      u_xlat8.w = x_1129;
      let x_1132 : vec4<f32> = u_xlat8;
      u_xlat27.x = dot(x_1132, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1140 : f32 = x_693.x_MainLightShadowParams.y;
      u_xlatb48 = (x_1140 == 2.0f);
      let x_1142 : bool = u_xlatb48;
      if (x_1142) {
        let x_1146 : vec3<f32> = u_xlat21;
        let x_1149 : vec4<f32> = x_693.x_MainLightShadowmapSize;
        u_xlat48 = ((vec2<f32>(x_1146.x, x_1146.y) * vec2<f32>(x_1149.z, x_1149.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1155 : vec2<f32> = u_xlat48;
        u_xlat48 = floor(x_1155);
        let x_1157 : vec3<f32> = u_xlat21;
        let x_1160 : vec4<f32> = x_693.x_MainLightShadowmapSize;
        let x_1163 : vec2<f32> = u_xlat48;
        let x_1165 : vec2<f32> = ((vec2<f32>(x_1157.x, x_1157.y) * vec2<f32>(x_1160.z, x_1160.w)) + -(x_1163));
        let x_1166 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1165.x, x_1165.y, x_1166.z, x_1166.w);
        let x_1168 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1168.x, x_1168.x, x_1168.y, x_1168.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1173 : vec4<f32> = u_xlat8;
        let x_1175 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1173.x, x_1173.x, x_1173.z, x_1173.z) * vec4<f32>(x_1175.x, x_1175.x, x_1175.z, x_1175.z));
        let x_1179 : vec4<f32> = u_xlat9;
        u_xlat49 = (vec2<f32>(x_1179.y, x_1179.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_1184 : vec4<f32> = u_xlat9;
        let x_1187 : vec4<f32> = u_xlat7;
        let x_1190 : vec2<f32> = ((vec2<f32>(x_1184.x, x_1184.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1187.x, x_1187.y)));
        let x_1191 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1190.x, x_1191.y, x_1190.y, x_1191.w);
        let x_1193 : vec4<f32> = u_xlat7;
        let x_1196 : vec2<f32> = (-(vec2<f32>(x_1193.x, x_1193.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1197 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1196.x, x_1196.y, x_1197.z, x_1197.w);
        let x_1200 : vec4<f32> = u_xlat7;
        u_xlat51 = min(vec2<f32>(x_1200.x, x_1200.y), vec2<f32>(0.0f, 0.0f));
        let x_1204 : vec2<f32> = u_xlat51;
        let x_1206 : vec2<f32> = u_xlat51;
        let x_1208 : vec4<f32> = u_xlat9;
        u_xlat51 = ((-(x_1204) * x_1206) + vec2<f32>(x_1208.x, x_1208.y));
        let x_1211 : vec4<f32> = u_xlat7;
        let x_1213 : vec2<f32> = max(vec2<f32>(x_1211.x, x_1211.y), vec2<f32>(0.0f, 0.0f));
        let x_1214 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1213.x, x_1213.y, x_1214.z, x_1214.w);
        let x_1216 : vec4<f32> = u_xlat7;
        let x_1219 : vec4<f32> = u_xlat7;
        let x_1222 : vec4<f32> = u_xlat8;
        let x_1224 : vec2<f32> = ((-(vec2<f32>(x_1216.x, x_1216.y)) * vec2<f32>(x_1219.x, x_1219.y)) + vec2<f32>(x_1222.y, x_1222.w));
        let x_1225 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1224.x, x_1224.y, x_1225.z, x_1225.w);
        let x_1227 : vec2<f32> = u_xlat51;
        u_xlat51 = (x_1227 + vec2<f32>(1.0f, 1.0f));
        let x_1229 : vec4<f32> = u_xlat7;
        let x_1231 : vec2<f32> = (vec2<f32>(x_1229.x, x_1229.y) + vec2<f32>(1.0f, 1.0f));
        let x_1232 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1231.x, x_1231.y, x_1232.z, x_1232.w);
        let x_1235 : vec4<f32> = u_xlat8;
        let x_1239 : vec2<f32> = (vec2<f32>(x_1235.x, x_1235.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1240 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1239.x, x_1239.y, x_1240.z, x_1240.w);
        let x_1243 : vec4<f32> = u_xlat9;
        let x_1245 : vec2<f32> = (vec2<f32>(x_1243.x, x_1243.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1246 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1245.x, x_1245.y, x_1246.z, x_1246.w);
        let x_1248 : vec2<f32> = u_xlat51;
        let x_1249 : vec2<f32> = (x_1248 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1250 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1249.x, x_1249.y, x_1250.z, x_1250.w);
        let x_1253 : vec4<f32> = u_xlat7;
        let x_1255 : vec2<f32> = (vec2<f32>(x_1253.x, x_1253.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1256 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1255.x, x_1255.y, x_1256.z, x_1256.w);
        let x_1258 : vec4<f32> = u_xlat8;
        let x_1260 : vec2<f32> = (vec2<f32>(x_1258.y, x_1258.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1261 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1260.x, x_1260.y, x_1261.z, x_1261.w);
        let x_1264 : f32 = u_xlat9.x;
        u_xlat10.z = x_1264;
        let x_1267 : f32 = u_xlat7.x;
        u_xlat10.w = x_1267;
        let x_1270 : f32 = u_xlat12.x;
        u_xlat11.z = x_1270;
        let x_1273 : f32 = u_xlat49.x;
        u_xlat11.w = x_1273;
        let x_1275 : vec4<f32> = u_xlat10;
        let x_1277 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1275.z, x_1275.w, x_1275.x, x_1275.z) + vec4<f32>(x_1277.z, x_1277.w, x_1277.x, x_1277.z));
        let x_1281 : f32 = u_xlat10.y;
        u_xlat9.z = x_1281;
        let x_1284 : f32 = u_xlat7.y;
        u_xlat9.w = x_1284;
        let x_1287 : f32 = u_xlat11.y;
        u_xlat12.z = x_1287;
        let x_1290 : f32 = u_xlat49.y;
        u_xlat12.w = x_1290;
        let x_1292 : vec4<f32> = u_xlat9;
        let x_1294 : vec4<f32> = u_xlat12;
        let x_1296 : vec3<f32> = (vec3<f32>(x_1292.z, x_1292.y, x_1292.w) + vec3<f32>(x_1294.z, x_1294.y, x_1294.w));
        let x_1297 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1296.x, x_1296.y, x_1296.z, x_1297.w);
        let x_1299 : vec4<f32> = u_xlat11;
        let x_1301 : vec4<f32> = u_xlat8;
        let x_1303 : vec3<f32> = (vec3<f32>(x_1299.x, x_1299.z, x_1299.w) / vec3<f32>(x_1301.z, x_1301.w, x_1301.y));
        let x_1304 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1303.x, x_1303.y, x_1303.z, x_1304.w);
        let x_1306 : vec4<f32> = u_xlat9;
        let x_1311 : vec3<f32> = (vec3<f32>(x_1306.x, x_1306.y, x_1306.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1312 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1311.x, x_1311.y, x_1311.z, x_1312.w);
        let x_1314 : vec4<f32> = u_xlat12;
        let x_1316 : vec4<f32> = u_xlat7;
        let x_1318 : vec3<f32> = (vec3<f32>(x_1314.z, x_1314.y, x_1314.w) / vec3<f32>(x_1316.x, x_1316.y, x_1316.z));
        let x_1319 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1318.x, x_1318.y, x_1318.z, x_1319.w);
        let x_1321 : vec4<f32> = u_xlat10;
        let x_1323 : vec3<f32> = (vec3<f32>(x_1321.x, x_1321.y, x_1321.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1324 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1323.x, x_1323.y, x_1323.z, x_1324.w);
        let x_1326 : vec4<f32> = u_xlat9;
        let x_1329 : vec4<f32> = x_693.x_MainLightShadowmapSize;
        let x_1331 : vec3<f32> = (vec3<f32>(x_1326.y, x_1326.x, x_1326.z) * vec3<f32>(x_1329.x, x_1329.x, x_1329.x));
        let x_1332 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1331.x, x_1331.y, x_1331.z, x_1332.w);
        let x_1334 : vec4<f32> = u_xlat10;
        let x_1337 : vec4<f32> = x_693.x_MainLightShadowmapSize;
        let x_1339 : vec3<f32> = (vec3<f32>(x_1334.x, x_1334.y, x_1334.z) * vec3<f32>(x_1337.y, x_1337.y, x_1337.y));
        let x_1340 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1339.x, x_1339.y, x_1339.z, x_1340.w);
        let x_1343 : f32 = u_xlat10.x;
        u_xlat9.w = x_1343;
        let x_1345 : vec2<f32> = u_xlat48;
        let x_1348 : vec4<f32> = x_693.x_MainLightShadowmapSize;
        let x_1351 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1345.x, x_1345.y, x_1345.x, x_1345.y) * vec4<f32>(x_1348.x, x_1348.y, x_1348.x, x_1348.y)) + vec4<f32>(x_1351.y, x_1351.w, x_1351.x, x_1351.w));
        let x_1354 : vec2<f32> = u_xlat48;
        let x_1356 : vec4<f32> = x_693.x_MainLightShadowmapSize;
        let x_1359 : vec4<f32> = u_xlat9;
        let x_1361 : vec2<f32> = ((x_1354 * vec2<f32>(x_1356.x, x_1356.y)) + vec2<f32>(x_1359.z, x_1359.w));
        let x_1362 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1361.x, x_1361.y, x_1362.z, x_1362.w);
        let x_1365 : f32 = u_xlat9.y;
        u_xlat10.w = x_1365;
        let x_1367 : vec4<f32> = u_xlat10;
        let x_1368 : vec2<f32> = vec2<f32>(x_1367.y, x_1367.z);
        let x_1369 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1369.x, x_1368.x, x_1369.z, x_1368.y);
        let x_1372 : vec2<f32> = u_xlat48;
        let x_1375 : vec4<f32> = x_693.x_MainLightShadowmapSize;
        let x_1378 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_1372.x, x_1372.y, x_1372.x, x_1372.y) * vec4<f32>(x_1375.x, x_1375.y, x_1375.x, x_1375.y)) + vec4<f32>(x_1378.x, x_1378.y, x_1378.z, x_1378.y));
        let x_1381 : vec2<f32> = u_xlat48;
        let x_1384 : vec4<f32> = x_693.x_MainLightShadowmapSize;
        let x_1387 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1381.x, x_1381.y, x_1381.x, x_1381.y) * vec4<f32>(x_1384.x, x_1384.y, x_1384.x, x_1384.y)) + vec4<f32>(x_1387.w, x_1387.y, x_1387.w, x_1387.z));
        let x_1390 : vec2<f32> = u_xlat48;
        let x_1393 : vec4<f32> = x_693.x_MainLightShadowmapSize;
        let x_1396 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1390.x, x_1390.y, x_1390.x, x_1390.y) * vec4<f32>(x_1393.x, x_1393.y, x_1393.x, x_1393.y)) + vec4<f32>(x_1396.x, x_1396.w, x_1396.z, x_1396.w));
        let x_1400 : vec4<f32> = u_xlat7;
        let x_1402 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_1400.x, x_1400.x, x_1400.x, x_1400.y) * vec4<f32>(x_1402.z, x_1402.w, x_1402.y, x_1402.z));
        let x_1406 : vec4<f32> = u_xlat7;
        let x_1408 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1406.y, x_1406.y, x_1406.z, x_1406.z) * x_1408);
        let x_1411 : f32 = u_xlat7.z;
        let x_1413 : f32 = u_xlat8.y;
        u_xlat48.x = (x_1411 * x_1413);
        let x_1417 : vec4<f32> = u_xlat11;
        let x_1418 : vec2<f32> = vec2<f32>(x_1417.x, x_1417.y);
        let x_1420 : f32 = u_xlat21.z;
        txVec4 = vec3<f32>(x_1418.x, x_1418.y, x_1420);
        let x_1428 : vec3<f32> = txVec4;
        let x_1430 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1428.xy, x_1428.z);
        u_xlat69 = x_1430;
        let x_1432 : vec4<f32> = u_xlat11;
        let x_1433 : vec2<f32> = vec2<f32>(x_1432.z, x_1432.w);
        let x_1435 : f32 = u_xlat21.z;
        txVec5 = vec3<f32>(x_1433.x, x_1433.y, x_1435);
        let x_1442 : vec3<f32> = txVec5;
        let x_1444 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1442.xy, x_1442.z);
        u_xlat7.x = x_1444;
        let x_1447 : f32 = u_xlat7.x;
        let x_1449 : f32 = u_xlat14.y;
        u_xlat7.x = (x_1447 * x_1449);
        let x_1453 : f32 = u_xlat14.x;
        let x_1454 : f32 = u_xlat69;
        let x_1457 : f32 = u_xlat7.x;
        u_xlat69 = ((x_1453 * x_1454) + x_1457);
        let x_1460 : vec4<f32> = u_xlat12;
        let x_1461 : vec2<f32> = vec2<f32>(x_1460.x, x_1460.y);
        let x_1463 : f32 = u_xlat21.z;
        txVec6 = vec3<f32>(x_1461.x, x_1461.y, x_1463);
        let x_1470 : vec3<f32> = txVec6;
        let x_1472 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1470.xy, x_1470.z);
        u_xlat7.x = x_1472;
        let x_1475 : f32 = u_xlat14.z;
        let x_1477 : f32 = u_xlat7.x;
        let x_1479 : f32 = u_xlat69;
        u_xlat69 = ((x_1475 * x_1477) + x_1479);
        let x_1482 : vec4<f32> = u_xlat10;
        let x_1483 : vec2<f32> = vec2<f32>(x_1482.x, x_1482.y);
        let x_1485 : f32 = u_xlat21.z;
        txVec7 = vec3<f32>(x_1483.x, x_1483.y, x_1485);
        let x_1492 : vec3<f32> = txVec7;
        let x_1494 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1492.xy, x_1492.z);
        u_xlat7.x = x_1494;
        let x_1497 : f32 = u_xlat14.w;
        let x_1499 : f32 = u_xlat7.x;
        let x_1501 : f32 = u_xlat69;
        u_xlat69 = ((x_1497 * x_1499) + x_1501);
        let x_1504 : vec4<f32> = u_xlat13;
        let x_1505 : vec2<f32> = vec2<f32>(x_1504.x, x_1504.y);
        let x_1507 : f32 = u_xlat21.z;
        txVec8 = vec3<f32>(x_1505.x, x_1505.y, x_1507);
        let x_1514 : vec3<f32> = txVec8;
        let x_1516 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1514.xy, x_1514.z);
        u_xlat7.x = x_1516;
        let x_1519 : f32 = u_xlat15.x;
        let x_1521 : f32 = u_xlat7.x;
        let x_1523 : f32 = u_xlat69;
        u_xlat69 = ((x_1519 * x_1521) + x_1523);
        let x_1526 : vec4<f32> = u_xlat13;
        let x_1527 : vec2<f32> = vec2<f32>(x_1526.z, x_1526.w);
        let x_1529 : f32 = u_xlat21.z;
        txVec9 = vec3<f32>(x_1527.x, x_1527.y, x_1529);
        let x_1536 : vec3<f32> = txVec9;
        let x_1538 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1536.xy, x_1536.z);
        u_xlat7.x = x_1538;
        let x_1541 : f32 = u_xlat15.y;
        let x_1543 : f32 = u_xlat7.x;
        let x_1545 : f32 = u_xlat69;
        u_xlat69 = ((x_1541 * x_1543) + x_1545);
        let x_1548 : vec4<f32> = u_xlat10;
        let x_1549 : vec2<f32> = vec2<f32>(x_1548.z, x_1548.w);
        let x_1551 : f32 = u_xlat21.z;
        txVec10 = vec3<f32>(x_1549.x, x_1549.y, x_1551);
        let x_1558 : vec3<f32> = txVec10;
        let x_1560 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1558.xy, x_1558.z);
        u_xlat7.x = x_1560;
        let x_1563 : f32 = u_xlat15.z;
        let x_1565 : f32 = u_xlat7.x;
        let x_1567 : f32 = u_xlat69;
        u_xlat69 = ((x_1563 * x_1565) + x_1567);
        let x_1570 : vec4<f32> = u_xlat9;
        let x_1571 : vec2<f32> = vec2<f32>(x_1570.x, x_1570.y);
        let x_1573 : f32 = u_xlat21.z;
        txVec11 = vec3<f32>(x_1571.x, x_1571.y, x_1573);
        let x_1580 : vec3<f32> = txVec11;
        let x_1582 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1580.xy, x_1580.z);
        u_xlat7.x = x_1582;
        let x_1585 : f32 = u_xlat15.w;
        let x_1587 : f32 = u_xlat7.x;
        let x_1589 : f32 = u_xlat69;
        u_xlat69 = ((x_1585 * x_1587) + x_1589);
        let x_1592 : vec4<f32> = u_xlat9;
        let x_1593 : vec2<f32> = vec2<f32>(x_1592.z, x_1592.w);
        let x_1595 : f32 = u_xlat21.z;
        txVec12 = vec3<f32>(x_1593.x, x_1593.y, x_1595);
        let x_1602 : vec3<f32> = txVec12;
        let x_1604 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1602.xy, x_1602.z);
        u_xlat7.x = x_1604;
        let x_1607 : f32 = u_xlat48.x;
        let x_1609 : f32 = u_xlat7.x;
        let x_1611 : f32 = u_xlat69;
        u_xlat27.x = ((x_1607 * x_1609) + x_1611);
      } else {
        let x_1615 : vec3<f32> = u_xlat21;
        let x_1618 : vec4<f32> = x_693.x_MainLightShadowmapSize;
        u_xlat48 = ((vec2<f32>(x_1615.x, x_1615.y) * vec2<f32>(x_1618.z, x_1618.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1622 : vec2<f32> = u_xlat48;
        u_xlat48 = floor(x_1622);
        let x_1624 : vec3<f32> = u_xlat21;
        let x_1627 : vec4<f32> = x_693.x_MainLightShadowmapSize;
        let x_1630 : vec2<f32> = u_xlat48;
        let x_1632 : vec2<f32> = ((vec2<f32>(x_1624.x, x_1624.y) * vec2<f32>(x_1627.z, x_1627.w)) + -(x_1630));
        let x_1633 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1632.x, x_1632.y, x_1633.z, x_1633.w);
        let x_1635 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1635.x, x_1635.x, x_1635.y, x_1635.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1638 : vec4<f32> = u_xlat8;
        let x_1640 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1638.x, x_1638.x, x_1638.z, x_1638.z) * vec4<f32>(x_1640.x, x_1640.x, x_1640.z, x_1640.z));
        let x_1643 : vec4<f32> = u_xlat9;
        let x_1647 : vec2<f32> = (vec2<f32>(x_1643.y, x_1643.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1648 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1648.x, x_1647.x, x_1648.z, x_1647.y);
        let x_1650 : vec4<f32> = u_xlat9;
        let x_1653 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_1650.x, x_1650.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1653.x, x_1653.y)));
        let x_1657 : vec4<f32> = u_xlat7;
        let x_1660 : vec2<f32> = (-(vec2<f32>(x_1657.x, x_1657.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1661 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1660.x, x_1661.y, x_1660.y, x_1661.w);
        let x_1663 : vec4<f32> = u_xlat7;
        let x_1665 : vec2<f32> = min(vec2<f32>(x_1663.x, x_1663.y), vec2<f32>(0.0f, 0.0f));
        let x_1666 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1665.x, x_1665.y, x_1666.z, x_1666.w);
        let x_1668 : vec4<f32> = u_xlat9;
        let x_1671 : vec4<f32> = u_xlat9;
        let x_1674 : vec4<f32> = u_xlat8;
        let x_1676 : vec2<f32> = ((-(vec2<f32>(x_1668.x, x_1668.y)) * vec2<f32>(x_1671.x, x_1671.y)) + vec2<f32>(x_1674.x, x_1674.z));
        let x_1677 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1676.x, x_1677.y, x_1676.y, x_1677.w);
        let x_1679 : vec4<f32> = u_xlat7;
        let x_1681 : vec2<f32> = max(vec2<f32>(x_1679.x, x_1679.y), vec2<f32>(0.0f, 0.0f));
        let x_1682 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1681.x, x_1681.y, x_1682.z, x_1682.w);
        let x_1684 : vec4<f32> = u_xlat9;
        let x_1687 : vec4<f32> = u_xlat9;
        let x_1690 : vec4<f32> = u_xlat8;
        let x_1692 : vec2<f32> = ((-(vec2<f32>(x_1684.x, x_1684.y)) * vec2<f32>(x_1687.x, x_1687.y)) + vec2<f32>(x_1690.y, x_1690.w));
        let x_1693 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1693.x, x_1692.x, x_1693.z, x_1692.y);
        let x_1695 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1695 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1699 : f32 = u_xlat8.y;
        u_xlat9.z = (x_1699 * 0.081632003f);
        let x_1703 : vec2<f32> = u_xlat49;
        let x_1706 : vec2<f32> = (vec2<f32>(x_1703.y, x_1703.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1707 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1706.x, x_1706.y, x_1707.z, x_1707.w);
        let x_1709 : vec4<f32> = u_xlat8;
        u_xlat49 = (vec2<f32>(x_1709.x, x_1709.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1713 : f32 = u_xlat8.w;
        u_xlat11.z = (x_1713 * 0.081632003f);
        let x_1717 : f32 = u_xlat11.y;
        u_xlat9.x = x_1717;
        let x_1719 : vec4<f32> = u_xlat7;
        let x_1726 : vec2<f32> = ((vec2<f32>(x_1719.x, x_1719.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1727 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1727.x, x_1726.x, x_1727.z, x_1726.y);
        let x_1729 : vec4<f32> = u_xlat7;
        let x_1733 : vec2<f32> = ((vec2<f32>(x_1729.x, x_1729.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1734 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1733.x, x_1734.y, x_1733.y, x_1734.w);
        let x_1737 : f32 = u_xlat49.x;
        u_xlat8.y = x_1737;
        let x_1740 : f32 = u_xlat10.y;
        u_xlat8.w = x_1740;
        let x_1742 : vec4<f32> = u_xlat8;
        let x_1743 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1742 + x_1743);
        let x_1745 : vec4<f32> = u_xlat7;
        let x_1748 : vec2<f32> = ((vec2<f32>(x_1745.y, x_1745.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1749 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1749.x, x_1748.x, x_1749.z, x_1748.y);
        let x_1751 : vec4<f32> = u_xlat7;
        let x_1754 : vec2<f32> = ((vec2<f32>(x_1751.y, x_1751.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1755 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1754.x, x_1755.y, x_1754.y, x_1755.w);
        let x_1758 : f32 = u_xlat49.y;
        u_xlat10.y = x_1758;
        let x_1760 : vec4<f32> = u_xlat10;
        let x_1761 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1760 + x_1761);
        let x_1763 : vec4<f32> = u_xlat8;
        let x_1764 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_1763 / x_1764);
        let x_1766 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1766 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1772 : vec4<f32> = u_xlat10;
        let x_1773 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_1772 / x_1773);
        let x_1775 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1775 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1777 : vec4<f32> = u_xlat8;
        let x_1780 : vec4<f32> = x_693.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1777.w, x_1777.x, x_1777.y, x_1777.z) * vec4<f32>(x_1780.x, x_1780.x, x_1780.x, x_1780.x));
        let x_1783 : vec4<f32> = u_xlat10;
        let x_1786 : vec4<f32> = x_693.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1783.x, x_1783.w, x_1783.y, x_1783.z) * vec4<f32>(x_1786.y, x_1786.y, x_1786.y, x_1786.y));
        let x_1789 : vec4<f32> = u_xlat8;
        let x_1790 : vec3<f32> = vec3<f32>(x_1789.y, x_1789.z, x_1789.w);
        let x_1791 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1790.x, x_1791.y, x_1790.y, x_1790.z);
        let x_1794 : f32 = u_xlat10.x;
        u_xlat11.y = x_1794;
        let x_1796 : vec2<f32> = u_xlat48;
        let x_1799 : vec4<f32> = x_693.x_MainLightShadowmapSize;
        let x_1802 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1796.x, x_1796.y, x_1796.x, x_1796.y) * vec4<f32>(x_1799.x, x_1799.y, x_1799.x, x_1799.y)) + vec4<f32>(x_1802.x, x_1802.y, x_1802.z, x_1802.y));
        let x_1805 : vec2<f32> = u_xlat48;
        let x_1807 : vec4<f32> = x_693.x_MainLightShadowmapSize;
        let x_1810 : vec4<f32> = u_xlat11;
        let x_1812 : vec2<f32> = ((x_1805 * vec2<f32>(x_1807.x, x_1807.y)) + vec2<f32>(x_1810.w, x_1810.y));
        let x_1813 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1812.x, x_1812.y, x_1813.z, x_1813.w);
        let x_1816 : f32 = u_xlat11.y;
        u_xlat8.y = x_1816;
        let x_1819 : f32 = u_xlat10.z;
        u_xlat11.y = x_1819;
        let x_1821 : vec2<f32> = u_xlat48;
        let x_1824 : vec4<f32> = x_693.x_MainLightShadowmapSize;
        let x_1827 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_1821.x, x_1821.y, x_1821.x, x_1821.y) * vec4<f32>(x_1824.x, x_1824.y, x_1824.x, x_1824.y)) + vec4<f32>(x_1827.x, x_1827.y, x_1827.z, x_1827.y));
        let x_1831 : vec2<f32> = u_xlat48;
        let x_1833 : vec4<f32> = x_693.x_MainLightShadowmapSize;
        let x_1836 : vec4<f32> = u_xlat11;
        u_xlat55 = ((x_1831 * vec2<f32>(x_1833.x, x_1833.y)) + vec2<f32>(x_1836.w, x_1836.y));
        let x_1840 : f32 = u_xlat11.y;
        u_xlat8.z = x_1840;
        let x_1842 : vec2<f32> = u_xlat48;
        let x_1845 : vec4<f32> = x_693.x_MainLightShadowmapSize;
        let x_1848 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1842.x, x_1842.y, x_1842.x, x_1842.y) * vec4<f32>(x_1845.x, x_1845.y, x_1845.x, x_1845.y)) + vec4<f32>(x_1848.x, x_1848.y, x_1848.x, x_1848.z));
        let x_1852 : f32 = u_xlat10.w;
        u_xlat11.y = x_1852;
        let x_1855 : vec2<f32> = u_xlat48;
        let x_1858 : vec4<f32> = x_693.x_MainLightShadowmapSize;
        let x_1861 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1855.x, x_1855.y, x_1855.x, x_1855.y) * vec4<f32>(x_1858.x, x_1858.y, x_1858.x, x_1858.y)) + vec4<f32>(x_1861.x, x_1861.y, x_1861.z, x_1861.y));
        let x_1865 : vec2<f32> = u_xlat48;
        let x_1867 : vec4<f32> = x_693.x_MainLightShadowmapSize;
        let x_1870 : vec4<f32> = u_xlat11;
        let x_1872 : vec2<f32> = ((x_1865 * vec2<f32>(x_1867.x, x_1867.y)) + vec2<f32>(x_1870.w, x_1870.y));
        let x_1873 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1872.x, x_1872.y, x_1873.z);
        let x_1876 : f32 = u_xlat11.y;
        u_xlat8.w = x_1876;
        let x_1879 : vec2<f32> = u_xlat48;
        let x_1881 : vec4<f32> = x_693.x_MainLightShadowmapSize;
        let x_1884 : vec4<f32> = u_xlat8;
        u_xlat17 = ((x_1879 * vec2<f32>(x_1881.x, x_1881.y)) + vec2<f32>(x_1884.x, x_1884.w));
        let x_1887 : vec4<f32> = u_xlat11;
        let x_1888 : vec3<f32> = vec3<f32>(x_1887.x, x_1887.z, x_1887.w);
        let x_1889 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1888.x, x_1889.y, x_1888.y, x_1888.z);
        let x_1891 : vec2<f32> = u_xlat48;
        let x_1894 : vec4<f32> = x_693.x_MainLightShadowmapSize;
        let x_1897 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1891.x, x_1891.y, x_1891.x, x_1891.y) * vec4<f32>(x_1894.x, x_1894.y, x_1894.x, x_1894.y)) + vec4<f32>(x_1897.x, x_1897.y, x_1897.z, x_1897.y));
        let x_1901 : vec2<f32> = u_xlat48;
        let x_1903 : vec4<f32> = x_693.x_MainLightShadowmapSize;
        let x_1906 : vec4<f32> = u_xlat10;
        u_xlat52 = ((x_1901 * vec2<f32>(x_1903.x, x_1903.y)) + vec2<f32>(x_1906.w, x_1906.y));
        let x_1910 : f32 = u_xlat8.x;
        u_xlat10.x = x_1910;
        let x_1912 : vec2<f32> = u_xlat48;
        let x_1914 : vec4<f32> = x_693.x_MainLightShadowmapSize;
        let x_1917 : vec4<f32> = u_xlat10;
        u_xlat48 = ((x_1912 * vec2<f32>(x_1914.x, x_1914.y)) + vec2<f32>(x_1917.x, x_1917.y));
        let x_1921 : vec4<f32> = u_xlat7;
        let x_1923 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1921.x, x_1921.x, x_1921.x, x_1921.x) * x_1923);
        let x_1926 : vec4<f32> = u_xlat7;
        let x_1928 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_1926.y, x_1926.y, x_1926.y, x_1926.y) * x_1928);
        let x_1931 : vec4<f32> = u_xlat7;
        let x_1933 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_1931.z, x_1931.z, x_1931.z, x_1931.z) * x_1933);
        let x_1935 : vec4<f32> = u_xlat7;
        let x_1937 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_1935.w, x_1935.w, x_1935.w, x_1935.w) * x_1937);
        let x_1940 : vec4<f32> = u_xlat12;
        let x_1941 : vec2<f32> = vec2<f32>(x_1940.x, x_1940.y);
        let x_1943 : f32 = u_xlat21.z;
        txVec13 = vec3<f32>(x_1941.x, x_1941.y, x_1943);
        let x_1950 : vec3<f32> = txVec13;
        let x_1952 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1950.xy, x_1950.z);
        u_xlat8.x = x_1952;
        let x_1955 : vec4<f32> = u_xlat12;
        let x_1956 : vec2<f32> = vec2<f32>(x_1955.z, x_1955.w);
        let x_1958 : f32 = u_xlat21.z;
        txVec14 = vec3<f32>(x_1956.x, x_1956.y, x_1958);
        let x_1966 : vec3<f32> = txVec14;
        let x_1968 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1966.xy, x_1966.z);
        u_xlat71 = x_1968;
        let x_1969 : f32 = u_xlat71;
        let x_1971 : f32 = u_xlat18.y;
        u_xlat71 = (x_1969 * x_1971);
        let x_1974 : f32 = u_xlat18.x;
        let x_1976 : f32 = u_xlat8.x;
        let x_1978 : f32 = u_xlat71;
        u_xlat8.x = ((x_1974 * x_1976) + x_1978);
        let x_1982 : vec4<f32> = u_xlat13;
        let x_1983 : vec2<f32> = vec2<f32>(x_1982.x, x_1982.y);
        let x_1985 : f32 = u_xlat21.z;
        txVec15 = vec3<f32>(x_1983.x, x_1983.y, x_1985);
        let x_1992 : vec3<f32> = txVec15;
        let x_1994 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1992.xy, x_1992.z);
        u_xlat71 = x_1994;
        let x_1996 : f32 = u_xlat18.z;
        let x_1997 : f32 = u_xlat71;
        let x_2000 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1996 * x_1997) + x_2000);
        let x_2004 : vec4<f32> = u_xlat15;
        let x_2005 : vec2<f32> = vec2<f32>(x_2004.x, x_2004.y);
        let x_2007 : f32 = u_xlat21.z;
        txVec16 = vec3<f32>(x_2005.x, x_2005.y, x_2007);
        let x_2014 : vec3<f32> = txVec16;
        let x_2016 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2014.xy, x_2014.z);
        u_xlat71 = x_2016;
        let x_2018 : f32 = u_xlat18.w;
        let x_2019 : f32 = u_xlat71;
        let x_2022 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2018 * x_2019) + x_2022);
        let x_2026 : vec4<f32> = u_xlat14;
        let x_2027 : vec2<f32> = vec2<f32>(x_2026.x, x_2026.y);
        let x_2029 : f32 = u_xlat21.z;
        txVec17 = vec3<f32>(x_2027.x, x_2027.y, x_2029);
        let x_2036 : vec3<f32> = txVec17;
        let x_2038 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2036.xy, x_2036.z);
        u_xlat71 = x_2038;
        let x_2040 : f32 = u_xlat19.x;
        let x_2041 : f32 = u_xlat71;
        let x_2044 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2040 * x_2041) + x_2044);
        let x_2048 : vec4<f32> = u_xlat14;
        let x_2049 : vec2<f32> = vec2<f32>(x_2048.z, x_2048.w);
        let x_2051 : f32 = u_xlat21.z;
        txVec18 = vec3<f32>(x_2049.x, x_2049.y, x_2051);
        let x_2058 : vec3<f32> = txVec18;
        let x_2060 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2058.xy, x_2058.z);
        u_xlat71 = x_2060;
        let x_2062 : f32 = u_xlat19.y;
        let x_2063 : f32 = u_xlat71;
        let x_2066 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2062 * x_2063) + x_2066);
        let x_2070 : vec2<f32> = u_xlat55;
        let x_2072 : f32 = u_xlat21.z;
        txVec19 = vec3<f32>(x_2070.x, x_2070.y, x_2072);
        let x_2079 : vec3<f32> = txVec19;
        let x_2081 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2079.xy, x_2079.z);
        u_xlat71 = x_2081;
        let x_2083 : f32 = u_xlat19.z;
        let x_2084 : f32 = u_xlat71;
        let x_2087 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2083 * x_2084) + x_2087);
        let x_2091 : vec4<f32> = u_xlat15;
        let x_2092 : vec2<f32> = vec2<f32>(x_2091.z, x_2091.w);
        let x_2094 : f32 = u_xlat21.z;
        txVec20 = vec3<f32>(x_2092.x, x_2092.y, x_2094);
        let x_2101 : vec3<f32> = txVec20;
        let x_2103 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2101.xy, x_2101.z);
        u_xlat71 = x_2103;
        let x_2105 : f32 = u_xlat19.w;
        let x_2106 : f32 = u_xlat71;
        let x_2109 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2105 * x_2106) + x_2109);
        let x_2113 : vec4<f32> = u_xlat16;
        let x_2114 : vec2<f32> = vec2<f32>(x_2113.x, x_2113.y);
        let x_2116 : f32 = u_xlat21.z;
        txVec21 = vec3<f32>(x_2114.x, x_2114.y, x_2116);
        let x_2123 : vec3<f32> = txVec21;
        let x_2125 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2123.xy, x_2123.z);
        u_xlat71 = x_2125;
        let x_2127 : f32 = u_xlat20.x;
        let x_2128 : f32 = u_xlat71;
        let x_2131 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2127 * x_2128) + x_2131);
        let x_2135 : vec4<f32> = u_xlat16;
        let x_2136 : vec2<f32> = vec2<f32>(x_2135.z, x_2135.w);
        let x_2138 : f32 = u_xlat21.z;
        txVec22 = vec3<f32>(x_2136.x, x_2136.y, x_2138);
        let x_2145 : vec3<f32> = txVec22;
        let x_2147 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2145.xy, x_2145.z);
        u_xlat71 = x_2147;
        let x_2149 : f32 = u_xlat20.y;
        let x_2150 : f32 = u_xlat71;
        let x_2153 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2149 * x_2150) + x_2153);
        let x_2157 : vec3<f32> = u_xlat29;
        let x_2158 : vec2<f32> = vec2<f32>(x_2157.x, x_2157.y);
        let x_2160 : f32 = u_xlat21.z;
        txVec23 = vec3<f32>(x_2158.x, x_2158.y, x_2160);
        let x_2167 : vec3<f32> = txVec23;
        let x_2169 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2167.xy, x_2167.z);
        u_xlat29.x = x_2169;
        let x_2172 : f32 = u_xlat20.z;
        let x_2174 : f32 = u_xlat29.x;
        let x_2177 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2172 * x_2174) + x_2177);
        let x_2181 : vec2<f32> = u_xlat17;
        let x_2183 : f32 = u_xlat21.z;
        txVec24 = vec3<f32>(x_2181.x, x_2181.y, x_2183);
        let x_2190 : vec3<f32> = txVec24;
        let x_2192 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2190.xy, x_2190.z);
        u_xlat29.x = x_2192;
        let x_2195 : f32 = u_xlat20.w;
        let x_2197 : f32 = u_xlat29.x;
        let x_2200 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2195 * x_2197) + x_2200);
        let x_2204 : vec4<f32> = u_xlat11;
        let x_2205 : vec2<f32> = vec2<f32>(x_2204.x, x_2204.y);
        let x_2207 : f32 = u_xlat21.z;
        txVec25 = vec3<f32>(x_2205.x, x_2205.y, x_2207);
        let x_2214 : vec3<f32> = txVec25;
        let x_2216 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2214.xy, x_2214.z);
        u_xlat29.x = x_2216;
        let x_2219 : f32 = u_xlat7.x;
        let x_2221 : f32 = u_xlat29.x;
        let x_2224 : f32 = u_xlat8.x;
        u_xlat7.x = ((x_2219 * x_2221) + x_2224);
        let x_2228 : vec4<f32> = u_xlat11;
        let x_2229 : vec2<f32> = vec2<f32>(x_2228.z, x_2228.w);
        let x_2231 : f32 = u_xlat21.z;
        txVec26 = vec3<f32>(x_2229.x, x_2229.y, x_2231);
        let x_2238 : vec3<f32> = txVec26;
        let x_2240 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2238.xy, x_2238.z);
        u_xlat8.x = x_2240;
        let x_2243 : f32 = u_xlat7.y;
        let x_2245 : f32 = u_xlat8.x;
        let x_2248 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_2243 * x_2245) + x_2248);
        let x_2252 : vec2<f32> = u_xlat52;
        let x_2254 : f32 = u_xlat21.z;
        txVec27 = vec3<f32>(x_2252.x, x_2252.y, x_2254);
        let x_2261 : vec3<f32> = txVec27;
        let x_2263 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2261.xy, x_2261.z);
        u_xlat28.x = x_2263;
        let x_2266 : f32 = u_xlat7.z;
        let x_2268 : f32 = u_xlat28.x;
        let x_2271 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_2266 * x_2268) + x_2271);
        let x_2275 : vec2<f32> = u_xlat48;
        let x_2277 : f32 = u_xlat21.z;
        txVec28 = vec3<f32>(x_2275.x, x_2275.y, x_2277);
        let x_2284 : vec3<f32> = txVec28;
        let x_2286 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2284.xy, x_2284.z);
        u_xlat48.x = x_2286;
        let x_2289 : f32 = u_xlat7.w;
        let x_2291 : f32 = u_xlat48.x;
        let x_2294 : f32 = u_xlat7.x;
        u_xlat27.x = ((x_2289 * x_2291) + x_2294);
      }
    }
  } else {
    let x_2299 : vec3<f32> = u_xlat21;
    let x_2300 : vec2<f32> = vec2<f32>(x_2299.x, x_2299.y);
    let x_2302 : f32 = u_xlat21.z;
    txVec29 = vec3<f32>(x_2300.x, x_2300.y, x_2302);
    let x_2309 : vec3<f32> = txVec29;
    let x_2311 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2309.xy, x_2309.z);
    u_xlat27.x = x_2311;
  }
  let x_2314 : f32 = x_693.x_MainLightShadowParams.x;
  u_xlat21.x = (-(x_2314) + 1.0f);
  let x_2319 : f32 = u_xlat27.x;
  let x_2321 : f32 = x_693.x_MainLightShadowParams.x;
  let x_2324 : f32 = u_xlat21.x;
  u_xlat21.x = ((x_2319 * x_2321) + x_2324);
  let x_2329 : f32 = u_xlat21.z;
  u_xlatb42.x = (0.0f >= x_2329);
  let x_2334 : f32 = u_xlat21.z;
  u_xlatb63 = (x_2334 >= 1.0f);
  let x_2336 : bool = u_xlatb63;
  let x_2338 : bool = u_xlatb42.x;
  u_xlatb42.x = (x_2336 | x_2338);
  let x_2342 : bool = u_xlatb42.x;
  if (x_2342) {
    x_2343 = 1.0f;
  } else {
    let x_2348 : f32 = u_xlat21.x;
    x_2343 = x_2348;
  }
  let x_2349 : f32 = x_2343;
  u_xlat21.x = x_2349;
  let x_2351 : vec3<f32> = vs_INTERP0;
  let x_2353 : vec3<f32> = x_146.x_WorldSpaceCameraPos;
  u_xlat27 = (x_2351 + -(x_2353));
  let x_2356 : vec3<f32> = u_xlat27;
  let x_2357 : vec3<f32> = u_xlat27;
  u_xlat42.x = dot(x_2356, x_2357);
  let x_2361 : f32 = u_xlat42.x;
  let x_2363 : f32 = x_693.x_MainLightShadowParams.z;
  let x_2366 : f32 = x_693.x_MainLightShadowParams.w;
  u_xlat42.x = ((x_2361 * x_2363) + x_2366);
  let x_2370 : f32 = u_xlat42.x;
  u_xlat42.x = clamp(x_2370, 0.0f, 1.0f);
  let x_2375 : f32 = u_xlat21.x;
  u_xlat63 = (-(x_2375) + 1.0f);
  let x_2379 : f32 = u_xlat42.x;
  let x_2380 : f32 = u_xlat63;
  let x_2383 : f32 = u_xlat21.x;
  u_xlat21.x = ((x_2379 * x_2380) + x_2383);
  let x_2392 : f32 = x_2390.x_MainLightCookieTextureFormat;
  u_xlatb42.x = !((x_2392 == -1.0f));
  let x_2396 : bool = u_xlatb42.x;
  if (x_2396) {
    let x_2399 : vec3<f32> = vs_INTERP0;
    let x_2402 : vec4<f32> = x_2390.x_MainLightWorldToLight[1i];
    u_xlat42 = (vec2<f32>(x_2399.y, x_2399.y) * vec2<f32>(x_2402.x, x_2402.y));
    let x_2406 : vec4<f32> = x_2390.x_MainLightWorldToLight[0i];
    let x_2408 : vec3<f32> = vs_INTERP0;
    let x_2411 : vec2<f32> = u_xlat42;
    u_xlat42 = ((vec2<f32>(x_2406.x, x_2406.y) * vec2<f32>(x_2408.x, x_2408.x)) + x_2411);
    let x_2414 : vec4<f32> = x_2390.x_MainLightWorldToLight[2i];
    let x_2416 : vec3<f32> = vs_INTERP0;
    let x_2419 : vec2<f32> = u_xlat42;
    u_xlat42 = ((vec2<f32>(x_2414.x, x_2414.y) * vec2<f32>(x_2416.z, x_2416.z)) + x_2419);
    let x_2421 : vec2<f32> = u_xlat42;
    let x_2423 : vec4<f32> = x_2390.x_MainLightWorldToLight[3i];
    u_xlat42 = (x_2421 + vec2<f32>(x_2423.x, x_2423.y));
    let x_2426 : vec2<f32> = u_xlat42;
    u_xlat42 = ((x_2426 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2434 : vec2<f32> = u_xlat42;
    let x_2436 : f32 = x_146.x_GlobalMipBias.x;
    let x_2437 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_2434, x_2436);
    u_xlat7 = x_2437;
    let x_2439 : f32 = x_2390.x_MainLightCookieTextureFormat;
    let x_2441 : f32 = x_2390.x_MainLightCookieTextureFormat;
    let x_2443 : f32 = x_2390.x_MainLightCookieTextureFormat;
    let x_2445 : f32 = x_2390.x_MainLightCookieTextureFormat;
    let x_2446 : vec4<f32> = vec4<f32>(x_2439, x_2441, x_2443, x_2445);
    let x_2453 : vec4<bool> = (vec4<f32>(x_2446.x, x_2446.y, x_2446.z, x_2446.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb42 = vec2<bool>(x_2453.x, x_2453.y);
    let x_2456 : bool = u_xlatb42.y;
    if (x_2456) {
      let x_2461 : f32 = u_xlat7.w;
      x_2457 = x_2461;
    } else {
      let x_2464 : f32 = u_xlat7.x;
      x_2457 = x_2464;
    }
    let x_2465 : f32 = x_2457;
    u_xlat63 = x_2465;
    let x_2467 : bool = u_xlatb42.x;
    if (x_2467) {
      let x_2471 : vec4<f32> = u_xlat7;
      x_2468 = vec3<f32>(x_2471.x, x_2471.y, x_2471.z);
    } else {
      let x_2474 : f32 = u_xlat63;
      x_2468 = vec3<f32>(x_2474, x_2474, x_2474);
    }
    let x_2476 : vec3<f32> = x_2468;
    u_xlat27 = x_2476;
  } else {
    u_xlat27.x = 1.0f;
    u_xlat27.y = 1.0f;
    u_xlat27.z = 1.0f;
  }
  let x_2481 : vec3<f32> = u_xlat27;
  let x_2483 : vec4<f32> = x_146.x_MainLightColor;
  u_xlat27 = (x_2481 * vec3<f32>(x_2483.x, x_2483.y, x_2483.z));
  let x_2486 : vec4<f32> = u_xlat6;
  let x_2488 : vec3<f32> = u_xlat27;
  u_xlat27 = (vec3<f32>(x_2486.x, x_2486.x, x_2486.x) * x_2488);
  let x_2490 : vec3<f32> = u_xlat5;
  let x_2492 : vec4<f32> = u_xlat4;
  u_xlat42.x = dot(-(x_2490), vec3<f32>(x_2492.x, x_2492.y, x_2492.z));
  let x_2497 : f32 = u_xlat42.x;
  let x_2499 : f32 = u_xlat42.x;
  u_xlat42.x = (x_2497 + x_2499);
  let x_2502 : vec4<f32> = u_xlat4;
  let x_2504 : vec2<f32> = u_xlat42;
  let x_2508 : vec3<f32> = u_xlat5;
  let x_2510 : vec3<f32> = ((vec3<f32>(x_2502.x, x_2502.y, x_2502.z) * -(vec3<f32>(x_2504.x, x_2504.x, x_2504.x))) + -(x_2508));
  let x_2511 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2510.x, x_2510.y, x_2510.z, x_2511.w);
  let x_2513 : vec4<f32> = u_xlat4;
  let x_2515 : vec3<f32> = u_xlat5;
  u_xlat42.x = dot(vec3<f32>(x_2513.x, x_2513.y, x_2513.z), x_2515);
  let x_2519 : f32 = u_xlat42.x;
  u_xlat42.x = clamp(x_2519, 0.0f, 1.0f);
  let x_2523 : f32 = u_xlat42.x;
  u_xlat42.x = (-(x_2523) + 1.0f);
  let x_2528 : f32 = u_xlat42.x;
  let x_2530 : f32 = u_xlat42.x;
  u_xlat42.x = (x_2528 * x_2530);
  let x_2534 : f32 = u_xlat42.x;
  let x_2536 : f32 = u_xlat42.x;
  u_xlat42.x = (x_2534 * x_2536);
  let x_2539 : f32 = u_xlat64;
  u_xlat63 = ((-(x_2539) * 0.699999988f) + 1.700000048f);
  let x_2545 : f32 = u_xlat63;
  let x_2546 : f32 = u_xlat64;
  u_xlat63 = (x_2545 * x_2546);
  let x_2548 : f32 = u_xlat63;
  u_xlat63 = (x_2548 * 6.0f);
  let x_2559 : vec4<f32> = u_xlat7;
  let x_2561 : f32 = u_xlat63;
  let x_2562 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2559.x, x_2559.y, x_2559.z), x_2561);
  u_xlat7 = x_2562;
  let x_2564 : f32 = u_xlat7.w;
  u_xlat63 = (x_2564 + -1.0f);
  let x_2567 : f32 = x_59.unity_SpecCube0_HDR.w;
  let x_2568 : f32 = u_xlat63;
  u_xlat63 = ((x_2567 * x_2568) + 1.0f);
  let x_2571 : f32 = u_xlat63;
  u_xlat63 = max(x_2571, 0.0f);
  let x_2573 : f32 = u_xlat63;
  u_xlat63 = log2(x_2573);
  let x_2575 : f32 = u_xlat63;
  let x_2577 : f32 = x_59.unity_SpecCube0_HDR.y;
  u_xlat63 = (x_2575 * x_2577);
  let x_2579 : f32 = u_xlat63;
  u_xlat63 = exp2(x_2579);
  let x_2581 : f32 = u_xlat63;
  let x_2583 : f32 = x_59.unity_SpecCube0_HDR.x;
  u_xlat63 = (x_2581 * x_2583);
  let x_2585 : vec4<f32> = u_xlat7;
  let x_2587 : f32 = u_xlat63;
  let x_2589 : vec3<f32> = (vec3<f32>(x_2585.x, x_2585.y, x_2585.z) * vec3<f32>(x_2587, x_2587, x_2587));
  let x_2590 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2589.x, x_2589.y, x_2589.z, x_2590.w);
  let x_2592 : f32 = u_xlat65;
  let x_2594 : f32 = u_xlat65;
  let x_2598 : vec2<f32> = ((vec2<f32>(x_2592, x_2592) * vec2<f32>(x_2594, x_2594)) + vec2<f32>(-1.0f, 1.0f));
  let x_2599 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2598.x, x_2598.y, x_2599.z, x_2599.w);
  let x_2602 : f32 = u_xlat8.y;
  u_xlat63 = (1.0f / x_2602);
  let x_2604 : vec3<f32> = u_xlat2;
  let x_2606 : vec4<f32> = u_xlat0;
  u_xlat29 = (-(x_2604) + vec3<f32>(x_2606.x, x_2606.x, x_2606.x));
  let x_2609 : vec2<f32> = u_xlat42;
  let x_2611 : vec3<f32> = u_xlat29;
  let x_2613 : vec3<f32> = u_xlat2;
  u_xlat29 = ((vec3<f32>(x_2609.x, x_2609.x, x_2609.x) * x_2611) + x_2613);
  let x_2615 : f32 = u_xlat63;
  let x_2617 : vec3<f32> = u_xlat29;
  let x_2618 : vec3<f32> = (vec3<f32>(x_2615, x_2615, x_2615) * x_2617);
  let x_2619 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2618.x, x_2619.y, x_2618.y, x_2618.z);
  let x_2621 : vec4<f32> = u_xlat0;
  let x_2623 : vec4<f32> = u_xlat7;
  let x_2625 : vec3<f32> = (vec3<f32>(x_2621.x, x_2621.z, x_2621.w) * vec3<f32>(x_2623.x, x_2623.y, x_2623.z));
  let x_2626 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2625.x, x_2626.y, x_2625.y, x_2625.z);
  let x_2628 : vec4<f32> = u_xlat1;
  let x_2630 : vec3<f32> = u_xlat3;
  let x_2632 : vec4<f32> = u_xlat0;
  let x_2634 : vec3<f32> = ((vec3<f32>(x_2628.x, x_2628.y, x_2628.z) * x_2630) + vec3<f32>(x_2632.x, x_2632.z, x_2632.w));
  let x_2635 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2634.x, x_2635.y, x_2634.y, x_2634.z);
  let x_2638 : f32 = u_xlat21.x;
  let x_2640 : f32 = x_59.unity_LightData.z;
  u_xlat21.x = (x_2638 * x_2640);
  let x_2643 : vec4<f32> = u_xlat4;
  let x_2646 : vec4<f32> = x_146.x_MainLightPosition;
  u_xlat1.x = dot(vec3<f32>(x_2643.x, x_2643.y, x_2643.z), vec3<f32>(x_2646.x, x_2646.y, x_2646.z));
  let x_2651 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_2651, 0.0f, 1.0f);
  let x_2655 : f32 = u_xlat21.x;
  let x_2657 : f32 = u_xlat1.x;
  u_xlat21.x = (x_2655 * x_2657);
  let x_2660 : vec3<f32> = u_xlat21;
  let x_2662 : vec3<f32> = u_xlat27;
  let x_2663 : vec3<f32> = (vec3<f32>(x_2660.x, x_2660.x, x_2660.x) * x_2662);
  let x_2664 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2663.x, x_2663.y, x_2663.z, x_2664.w);
  let x_2666 : vec3<f32> = u_xlat5;
  let x_2668 : vec4<f32> = x_146.x_MainLightPosition;
  u_xlat27 = (x_2666 + vec3<f32>(x_2668.x, x_2668.y, x_2668.z));
  let x_2671 : vec3<f32> = u_xlat27;
  let x_2672 : vec3<f32> = u_xlat27;
  u_xlat21.x = dot(x_2671, x_2672);
  let x_2676 : f32 = u_xlat21.x;
  u_xlat21.x = max(x_2676, 1.17549435e-37f);
  let x_2680 : f32 = u_xlat21.x;
  u_xlat21.x = inverseSqrt(x_2680);
  let x_2683 : vec3<f32> = u_xlat21;
  let x_2685 : vec3<f32> = u_xlat27;
  u_xlat27 = (vec3<f32>(x_2683.x, x_2683.x, x_2683.x) * x_2685);
  let x_2687 : vec4<f32> = u_xlat4;
  let x_2689 : vec3<f32> = u_xlat27;
  u_xlat21.x = dot(vec3<f32>(x_2687.x, x_2687.y, x_2687.z), x_2689);
  let x_2693 : f32 = u_xlat21.x;
  u_xlat21.x = clamp(x_2693, 0.0f, 1.0f);
  let x_2697 : vec4<f32> = x_146.x_MainLightPosition;
  let x_2699 : vec3<f32> = u_xlat27;
  u_xlat64 = dot(vec3<f32>(x_2697.x, x_2697.y, x_2697.z), x_2699);
  let x_2701 : f32 = u_xlat64;
  u_xlat64 = clamp(x_2701, 0.0f, 1.0f);
  let x_2704 : f32 = u_xlat21.x;
  let x_2706 : f32 = u_xlat21.x;
  u_xlat21.x = (x_2704 * x_2706);
  let x_2710 : f32 = u_xlat21.x;
  let x_2712 : f32 = u_xlat8.x;
  u_xlat21.x = ((x_2710 * x_2712) + 1.000010014f);
  let x_2717 : f32 = u_xlat64;
  let x_2718 : f32 = u_xlat64;
  u_xlat64 = (x_2717 * x_2718);
  let x_2721 : f32 = u_xlat21.x;
  let x_2723 : f32 = u_xlat21.x;
  u_xlat21.x = (x_2721 * x_2723);
  let x_2726 : f32 = u_xlat64;
  u_xlat64 = max(x_2726, 0.100000001f);
  let x_2729 : f32 = u_xlat21.x;
  let x_2730 : f32 = u_xlat64;
  u_xlat21.x = (x_2729 * x_2730);
  let x_2733 : f32 = u_xlat67;
  let x_2735 : f32 = u_xlat21.x;
  u_xlat21.x = (x_2733 * x_2735);
  let x_2738 : f32 = u_xlat66;
  let x_2740 : f32 = u_xlat21.x;
  u_xlat21.x = (x_2738 / x_2740);
  let x_2743 : vec3<f32> = u_xlat2;
  let x_2744 : vec3<f32> = u_xlat21;
  let x_2747 : vec3<f32> = u_xlat3;
  u_xlat27 = ((x_2743 * vec3<f32>(x_2744.x, x_2744.x, x_2744.x)) + x_2747);
  let x_2749 : vec4<f32> = u_xlat1;
  let x_2751 : vec3<f32> = u_xlat27;
  let x_2752 : vec3<f32> = (vec3<f32>(x_2749.x, x_2749.y, x_2749.z) * x_2751);
  let x_2753 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2752.x, x_2752.y, x_2752.z, x_2753.w);
  let x_2756 : f32 = x_146.x_AdditionalLightsCount.x;
  let x_2758 : f32 = x_59.unity_LightData.y;
  u_xlat21.x = min(x_2756, x_2758);
  let x_2762 : f32 = u_xlat21.x;
  u_xlatu21 = bitcast<u32>(i32(x_2762));
  let x_2766 : f32 = x_2390.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2768 : f32 = x_2390.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2770 : f32 = x_2390.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2772 : f32 = x_2390.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2773 : vec4<f32> = vec4<f32>(x_2766, x_2768, x_2770, x_2772);
  let x_2780 : vec4<bool> = (vec4<f32>(x_2773.x, x_2773.y, x_2773.z, x_2773.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb27 = vec2<bool>(x_2780.x, x_2780.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2791 : u32 = u_xlatu_loop_1;
    let x_2792 : u32 = u_xlatu21;
    if ((x_2791 < x_2792)) {
    } else {
      break;
    }
    let x_2795 : u32 = u_xlatu_loop_1;
    u_xlatu65 = (x_2795 >> 2u);
    let x_2798 : u32 = u_xlatu_loop_1;
    u_xlati69 = bitcast<i32>((x_2798 & 3u));
    let x_2801 : u32 = u_xlatu65;
    let x_2804 : vec4<f32> = x_59.unity_LightIndices[bitcast<i32>(x_2801)];
    let x_2814 : i32 = u_xlati69;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2819 : vec4<u32> = indexable[x_2814];
    u_xlat65 = dot(x_2804, bitcast<vec4<f32>>(x_2819));
    let x_2822 : f32 = u_xlat65;
    u_xlatu65 = bitcast<u32>(i32(x_2822));
    let x_2825 : vec3<f32> = vs_INTERP0;
    let x_2837 : u32 = u_xlatu65;
    let x_2840 : vec4<f32> = x_2836.x_AdditionalLightsPosition[bitcast<i32>(x_2837)];
    let x_2843 : u32 = u_xlatu65;
    let x_2846 : vec4<f32> = x_2836.x_AdditionalLightsPosition[bitcast<i32>(x_2843)];
    u_xlat29 = ((-(x_2825) * vec3<f32>(x_2840.w, x_2840.w, x_2840.w)) + vec3<f32>(x_2846.x, x_2846.y, x_2846.z));
    let x_2849 : vec3<f32> = u_xlat29;
    let x_2850 : vec3<f32> = u_xlat29;
    u_xlat69 = dot(x_2849, x_2850);
    let x_2852 : f32 = u_xlat69;
    u_xlat69 = max(x_2852, 6.10351562e-05f);
    let x_2856 : f32 = u_xlat69;
    u_xlat70 = inverseSqrt(x_2856);
    let x_2858 : f32 = u_xlat70;
    let x_2860 : vec3<f32> = u_xlat29;
    let x_2861 : vec3<f32> = (vec3<f32>(x_2858, x_2858, x_2858) * x_2860);
    let x_2862 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2861.x, x_2861.y, x_2861.z, x_2862.w);
    let x_2865 : f32 = u_xlat69;
    u_xlat72 = (1.0f / x_2865);
    let x_2867 : f32 = u_xlat69;
    let x_2868 : u32 = u_xlatu65;
    let x_2871 : f32 = x_2836.x_AdditionalLightsAttenuation[bitcast<i32>(x_2868)].x;
    u_xlat69 = (x_2867 * x_2871);
    let x_2873 : f32 = u_xlat69;
    let x_2875 : f32 = u_xlat69;
    u_xlat69 = ((-(x_2873) * x_2875) + 1.0f);
    let x_2878 : f32 = u_xlat69;
    u_xlat69 = max(x_2878, 0.0f);
    let x_2880 : f32 = u_xlat69;
    let x_2881 : f32 = u_xlat69;
    u_xlat69 = (x_2880 * x_2881);
    let x_2883 : f32 = u_xlat69;
    let x_2884 : f32 = u_xlat72;
    u_xlat69 = (x_2883 * x_2884);
    let x_2886 : u32 = u_xlatu65;
    let x_2889 : vec4<f32> = x_2836.x_AdditionalLightsSpotDir[bitcast<i32>(x_2886)];
    let x_2891 : vec4<f32> = u_xlat9;
    u_xlat72 = dot(vec3<f32>(x_2889.x, x_2889.y, x_2889.z), vec3<f32>(x_2891.x, x_2891.y, x_2891.z));
    let x_2894 : f32 = u_xlat72;
    let x_2895 : u32 = u_xlatu65;
    let x_2898 : f32 = x_2836.x_AdditionalLightsAttenuation[bitcast<i32>(x_2895)].z;
    let x_2900 : u32 = u_xlatu65;
    let x_2903 : f32 = x_2836.x_AdditionalLightsAttenuation[bitcast<i32>(x_2900)].w;
    u_xlat72 = ((x_2894 * x_2898) + x_2903);
    let x_2905 : f32 = u_xlat72;
    u_xlat72 = clamp(x_2905, 0.0f, 1.0f);
    let x_2907 : f32 = u_xlat72;
    let x_2908 : f32 = u_xlat72;
    u_xlat72 = (x_2907 * x_2908);
    let x_2910 : f32 = u_xlat69;
    let x_2911 : f32 = u_xlat72;
    u_xlat69 = (x_2910 * x_2911);
    let x_2914 : u32 = u_xlatu65;
    u_xlatu72 = (x_2914 >> 5u);
    let x_2917 : u32 = u_xlatu65;
    u_xlati10 = (1i << bitcast<u32>((bitcast<i32>(x_2917) & 31i)));
    let x_2923 : i32 = u_xlati10;
    let x_2925 : u32 = u_xlatu72;
    let x_2928 : f32 = x_2390.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2925)].el;
    u_xlati72 = bitcast<i32>((bitcast<u32>(x_2923) & bitcast<u32>(x_2928)));
    let x_2932 : i32 = u_xlati72;
    if ((x_2932 != 0i)) {
      let x_2942 : u32 = u_xlatu65;
      let x_2945 : f32 = x_2941.x_AdditionalLightsLightTypes[bitcast<i32>(x_2942)].el;
      u_xlati72 = i32(x_2945);
      let x_2947 : i32 = u_xlati72;
      u_xlati10 = select(1i, 0i, (x_2947 != 0i));
      let x_2951 : u32 = u_xlatu65;
      u_xlati31 = (bitcast<i32>(x_2951) << bitcast<u32>(2i));
      let x_2954 : i32 = u_xlati10;
      if ((x_2954 != 0i)) {
        let x_2958 : vec3<f32> = vs_INTERP0;
        let x_2960 : i32 = u_xlati31;
        let x_2963 : i32 = u_xlati31;
        let x_2967 : vec4<f32> = x_2941.x_AdditionalLightsWorldToLights[((x_2960 + 1i) / 4i)][((x_2963 + 1i) % 4i)];
        let x_2969 : vec3<f32> = (vec3<f32>(x_2958.y, x_2958.y, x_2958.y) * vec3<f32>(x_2967.x, x_2967.y, x_2967.w));
        let x_2970 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2969.x, x_2970.y, x_2969.y, x_2969.z);
        let x_2972 : i32 = u_xlati31;
        let x_2974 : i32 = u_xlati31;
        let x_2977 : vec4<f32> = x_2941.x_AdditionalLightsWorldToLights[(x_2972 / 4i)][(x_2974 % 4i)];
        let x_2979 : vec3<f32> = vs_INTERP0;
        let x_2982 : vec4<f32> = u_xlat10;
        let x_2984 : vec3<f32> = ((vec3<f32>(x_2977.x, x_2977.y, x_2977.w) * vec3<f32>(x_2979.x, x_2979.x, x_2979.x)) + vec3<f32>(x_2982.x, x_2982.z, x_2982.w));
        let x_2985 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2984.x, x_2985.y, x_2984.y, x_2984.z);
        let x_2987 : i32 = u_xlati31;
        let x_2990 : i32 = u_xlati31;
        let x_2994 : vec4<f32> = x_2941.x_AdditionalLightsWorldToLights[((x_2987 + 2i) / 4i)][((x_2990 + 2i) % 4i)];
        let x_2996 : vec3<f32> = vs_INTERP0;
        let x_2999 : vec4<f32> = u_xlat10;
        let x_3001 : vec3<f32> = ((vec3<f32>(x_2994.x, x_2994.y, x_2994.w) * vec3<f32>(x_2996.z, x_2996.z, x_2996.z)) + vec3<f32>(x_2999.x, x_2999.z, x_2999.w));
        let x_3002 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_3001.x, x_3002.y, x_3001.y, x_3001.z);
        let x_3004 : vec4<f32> = u_xlat10;
        let x_3006 : i32 = u_xlati31;
        let x_3009 : i32 = u_xlati31;
        let x_3013 : vec4<f32> = x_2941.x_AdditionalLightsWorldToLights[((x_3006 + 3i) / 4i)][((x_3009 + 3i) % 4i)];
        let x_3015 : vec3<f32> = (vec3<f32>(x_3004.x, x_3004.z, x_3004.w) + vec3<f32>(x_3013.x, x_3013.y, x_3013.w));
        let x_3016 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_3015.x, x_3016.y, x_3015.y, x_3015.z);
        let x_3018 : vec4<f32> = u_xlat10;
        let x_3020 : vec4<f32> = u_xlat10;
        let x_3022 : vec2<f32> = (vec2<f32>(x_3018.x, x_3018.z) / vec2<f32>(x_3020.w, x_3020.w));
        let x_3023 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_3022.x, x_3023.y, x_3022.y, x_3023.w);
        let x_3025 : vec4<f32> = u_xlat10;
        let x_3028 : vec2<f32> = ((vec2<f32>(x_3025.x, x_3025.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3029 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_3028.x, x_3029.y, x_3028.y, x_3029.w);
        let x_3031 : vec4<f32> = u_xlat10;
        let x_3035 : vec2<f32> = clamp(vec2<f32>(x_3031.x, x_3031.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3036 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_3035.x, x_3036.y, x_3035.y, x_3036.w);
        let x_3038 : u32 = u_xlatu65;
        let x_3041 : vec4<f32> = x_2941.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3038)];
        let x_3043 : vec4<f32> = u_xlat10;
        let x_3046 : u32 = u_xlatu65;
        let x_3049 : vec4<f32> = x_2941.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3046)];
        let x_3051 : vec2<f32> = ((vec2<f32>(x_3041.x, x_3041.y) * vec2<f32>(x_3043.x, x_3043.z)) + vec2<f32>(x_3049.z, x_3049.w));
        let x_3052 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_3051.x, x_3052.y, x_3051.y, x_3052.w);
      } else {
        let x_3056 : i32 = u_xlati72;
        u_xlatb72 = (x_3056 == 1i);
        let x_3058 : bool = u_xlatb72;
        u_xlati72 = select(0i, 1i, x_3058);
        let x_3060 : i32 = u_xlati72;
        if ((x_3060 != 0i)) {
          let x_3064 : vec3<f32> = vs_INTERP0;
          let x_3066 : i32 = u_xlati31;
          let x_3069 : i32 = u_xlati31;
          let x_3073 : vec4<f32> = x_2941.x_AdditionalLightsWorldToLights[((x_3066 + 1i) / 4i)][((x_3069 + 1i) % 4i)];
          let x_3075 : vec2<f32> = (vec2<f32>(x_3064.y, x_3064.y) * vec2<f32>(x_3073.x, x_3073.y));
          let x_3076 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3075.x, x_3075.y, x_3076.z, x_3076.w);
          let x_3078 : i32 = u_xlati31;
          let x_3080 : i32 = u_xlati31;
          let x_3083 : vec4<f32> = x_2941.x_AdditionalLightsWorldToLights[(x_3078 / 4i)][(x_3080 % 4i)];
          let x_3085 : vec3<f32> = vs_INTERP0;
          let x_3088 : vec4<f32> = u_xlat11;
          let x_3090 : vec2<f32> = ((vec2<f32>(x_3083.x, x_3083.y) * vec2<f32>(x_3085.x, x_3085.x)) + vec2<f32>(x_3088.x, x_3088.y));
          let x_3091 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3090.x, x_3090.y, x_3091.z, x_3091.w);
          let x_3093 : i32 = u_xlati31;
          let x_3096 : i32 = u_xlati31;
          let x_3100 : vec4<f32> = x_2941.x_AdditionalLightsWorldToLights[((x_3093 + 2i) / 4i)][((x_3096 + 2i) % 4i)];
          let x_3102 : vec3<f32> = vs_INTERP0;
          let x_3105 : vec4<f32> = u_xlat11;
          let x_3107 : vec2<f32> = ((vec2<f32>(x_3100.x, x_3100.y) * vec2<f32>(x_3102.z, x_3102.z)) + vec2<f32>(x_3105.x, x_3105.y));
          let x_3108 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3107.x, x_3107.y, x_3108.z, x_3108.w);
          let x_3110 : vec4<f32> = u_xlat11;
          let x_3112 : i32 = u_xlati31;
          let x_3115 : i32 = u_xlati31;
          let x_3119 : vec4<f32> = x_2941.x_AdditionalLightsWorldToLights[((x_3112 + 3i) / 4i)][((x_3115 + 3i) % 4i)];
          let x_3121 : vec2<f32> = (vec2<f32>(x_3110.x, x_3110.y) + vec2<f32>(x_3119.x, x_3119.y));
          let x_3122 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3121.x, x_3121.y, x_3122.z, x_3122.w);
          let x_3124 : vec4<f32> = u_xlat11;
          let x_3127 : vec2<f32> = ((vec2<f32>(x_3124.x, x_3124.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3128 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3127.x, x_3127.y, x_3128.z, x_3128.w);
          let x_3130 : vec4<f32> = u_xlat11;
          let x_3132 : vec2<f32> = fract(vec2<f32>(x_3130.x, x_3130.y));
          let x_3133 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3132.x, x_3132.y, x_3133.z, x_3133.w);
          let x_3135 : u32 = u_xlatu65;
          let x_3138 : vec4<f32> = x_2941.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3135)];
          let x_3140 : vec4<f32> = u_xlat11;
          let x_3143 : u32 = u_xlatu65;
          let x_3146 : vec4<f32> = x_2941.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3143)];
          let x_3148 : vec2<f32> = ((vec2<f32>(x_3138.x, x_3138.y) * vec2<f32>(x_3140.x, x_3140.y)) + vec2<f32>(x_3146.z, x_3146.w));
          let x_3149 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_3148.x, x_3149.y, x_3148.y, x_3149.w);
        } else {
          let x_3152 : vec3<f32> = vs_INTERP0;
          let x_3154 : i32 = u_xlati31;
          let x_3157 : i32 = u_xlati31;
          let x_3161 : vec4<f32> = x_2941.x_AdditionalLightsWorldToLights[((x_3154 + 1i) / 4i)][((x_3157 + 1i) % 4i)];
          u_xlat11 = (vec4<f32>(x_3152.y, x_3152.y, x_3152.y, x_3152.y) * x_3161);
          let x_3163 : i32 = u_xlati31;
          let x_3165 : i32 = u_xlati31;
          let x_3168 : vec4<f32> = x_2941.x_AdditionalLightsWorldToLights[(x_3163 / 4i)][(x_3165 % 4i)];
          let x_3169 : vec3<f32> = vs_INTERP0;
          let x_3172 : vec4<f32> = u_xlat11;
          u_xlat11 = ((x_3168 * vec4<f32>(x_3169.x, x_3169.x, x_3169.x, x_3169.x)) + x_3172);
          let x_3174 : i32 = u_xlati31;
          let x_3177 : i32 = u_xlati31;
          let x_3181 : vec4<f32> = x_2941.x_AdditionalLightsWorldToLights[((x_3174 + 2i) / 4i)][((x_3177 + 2i) % 4i)];
          let x_3182 : vec3<f32> = vs_INTERP0;
          let x_3185 : vec4<f32> = u_xlat11;
          u_xlat11 = ((x_3181 * vec4<f32>(x_3182.z, x_3182.z, x_3182.z, x_3182.z)) + x_3185);
          let x_3187 : vec4<f32> = u_xlat11;
          let x_3188 : i32 = u_xlati31;
          let x_3191 : i32 = u_xlati31;
          let x_3195 : vec4<f32> = x_2941.x_AdditionalLightsWorldToLights[((x_3188 + 3i) / 4i)][((x_3191 + 3i) % 4i)];
          u_xlat11 = (x_3187 + x_3195);
          let x_3197 : vec4<f32> = u_xlat11;
          let x_3199 : vec4<f32> = u_xlat11;
          let x_3201 : vec3<f32> = (vec3<f32>(x_3197.x, x_3197.y, x_3197.z) / vec3<f32>(x_3199.w, x_3199.w, x_3199.w));
          let x_3202 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3201.x, x_3201.y, x_3201.z, x_3202.w);
          let x_3204 : vec4<f32> = u_xlat11;
          let x_3206 : vec4<f32> = u_xlat11;
          u_xlat72 = dot(vec3<f32>(x_3204.x, x_3204.y, x_3204.z), vec3<f32>(x_3206.x, x_3206.y, x_3206.z));
          let x_3209 : f32 = u_xlat72;
          u_xlat72 = inverseSqrt(x_3209);
          let x_3211 : f32 = u_xlat72;
          let x_3213 : vec4<f32> = u_xlat11;
          let x_3215 : vec3<f32> = (vec3<f32>(x_3211, x_3211, x_3211) * vec3<f32>(x_3213.x, x_3213.y, x_3213.z));
          let x_3216 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3215.x, x_3215.y, x_3215.z, x_3216.w);
          let x_3218 : vec4<f32> = u_xlat11;
          u_xlat72 = dot(abs(vec3<f32>(x_3218.x, x_3218.y, x_3218.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3223 : f32 = u_xlat72;
          u_xlat72 = max(x_3223, 0.000001f);
          let x_3226 : f32 = u_xlat72;
          u_xlat72 = (1.0f / x_3226);
          let x_3228 : f32 = u_xlat72;
          let x_3230 : vec4<f32> = u_xlat11;
          let x_3232 : vec3<f32> = (vec3<f32>(x_3228, x_3228, x_3228) * vec3<f32>(x_3230.z, x_3230.x, x_3230.y));
          let x_3233 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3232.x, x_3232.y, x_3232.z, x_3233.w);
          let x_3236 : f32 = u_xlat12.x;
          u_xlat12.x = -(x_3236);
          let x_3240 : f32 = u_xlat12.x;
          u_xlat12.x = clamp(x_3240, 0.0f, 1.0f);
          let x_3246 : vec4<f32> = u_xlat12;
          let x_3249 : vec4<bool> = (vec4<f32>(x_3246.y, x_3246.y, x_3246.z, x_3246.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_3250 : vec2<bool> = vec2<bool>(x_3249.x, x_3249.z);
          let x_3251 : vec3<bool> = u_xlatb31;
          u_xlatb31 = vec3<bool>(x_3250.x, x_3251.y, x_3250.y);
          let x_3255 : bool = u_xlatb31.x;
          if (x_3255) {
            let x_3260 : f32 = u_xlat12.x;
            x_3256 = x_3260;
          } else {
            let x_3263 : f32 = u_xlat12.x;
            x_3256 = -(x_3263);
          }
          let x_3265 : f32 = x_3256;
          u_xlat31.x = x_3265;
          let x_3268 : bool = u_xlatb31.z;
          if (x_3268) {
            let x_3273 : f32 = u_xlat12.x;
            x_3269 = x_3273;
          } else {
            let x_3276 : f32 = u_xlat12.x;
            x_3269 = -(x_3276);
          }
          let x_3278 : f32 = x_3269;
          u_xlat31.z = x_3278;
          let x_3280 : vec4<f32> = u_xlat11;
          let x_3282 : f32 = u_xlat72;
          let x_3285 : vec3<f32> = u_xlat31;
          let x_3287 : vec2<f32> = ((vec2<f32>(x_3280.x, x_3280.y) * vec2<f32>(x_3282, x_3282)) + vec2<f32>(x_3285.x, x_3285.z));
          let x_3288 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_3287.x, x_3288.y, x_3287.y);
          let x_3290 : vec3<f32> = u_xlat31;
          let x_3293 : vec2<f32> = ((vec2<f32>(x_3290.x, x_3290.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3294 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_3293.x, x_3294.y, x_3293.y);
          let x_3296 : vec3<f32> = u_xlat31;
          let x_3300 : vec2<f32> = clamp(vec2<f32>(x_3296.x, x_3296.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3301 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_3300.x, x_3301.y, x_3300.y);
          let x_3303 : u32 = u_xlatu65;
          let x_3306 : vec4<f32> = x_2941.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3303)];
          let x_3308 : vec3<f32> = u_xlat31;
          let x_3311 : u32 = u_xlatu65;
          let x_3314 : vec4<f32> = x_2941.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3311)];
          let x_3316 : vec2<f32> = ((vec2<f32>(x_3306.x, x_3306.y) * vec2<f32>(x_3308.x, x_3308.z)) + vec2<f32>(x_3314.z, x_3314.w));
          let x_3317 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_3316.x, x_3317.y, x_3316.y, x_3317.w);
        }
      }
      let x_3324 : vec4<f32> = u_xlat10;
      let x_3327 : f32 = x_146.x_GlobalMipBias.x;
      let x_3328 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_3324.x, x_3324.z), x_3327);
      u_xlat10 = x_3328;
      let x_3330 : bool = u_xlatb27.y;
      if (x_3330) {
        let x_3335 : f32 = u_xlat10.w;
        x_3331 = x_3335;
      } else {
        let x_3338 : f32 = u_xlat10.x;
        x_3331 = x_3338;
      }
      let x_3339 : f32 = x_3331;
      u_xlat72 = x_3339;
      let x_3341 : bool = u_xlatb27.x;
      if (x_3341) {
        let x_3345 : vec4<f32> = u_xlat10;
        x_3342 = vec3<f32>(x_3345.x, x_3345.y, x_3345.z);
      } else {
        let x_3348 : f32 = u_xlat72;
        x_3342 = vec3<f32>(x_3348, x_3348, x_3348);
      }
      let x_3350 : vec3<f32> = x_3342;
      let x_3351 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_3350.x, x_3350.y, x_3350.z, x_3351.w);
    } else {
      u_xlat10.x = 1.0f;
      u_xlat10.y = 1.0f;
      u_xlat10.z = 1.0f;
    }
    let x_3357 : vec4<f32> = u_xlat10;
    let x_3359 : u32 = u_xlatu65;
    let x_3362 : vec4<f32> = x_2836.x_AdditionalLightsColor[bitcast<i32>(x_3359)];
    let x_3364 : vec3<f32> = (vec3<f32>(x_3357.x, x_3357.y, x_3357.z) * vec3<f32>(x_3362.x, x_3362.y, x_3362.z));
    let x_3365 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3364.x, x_3364.y, x_3364.z, x_3365.w);
    let x_3367 : vec4<f32> = u_xlat6;
    let x_3369 : vec4<f32> = u_xlat10;
    let x_3371 : vec3<f32> = (vec3<f32>(x_3367.x, x_3367.x, x_3367.x) * vec3<f32>(x_3369.x, x_3369.y, x_3369.z));
    let x_3372 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3371.x, x_3371.y, x_3371.z, x_3372.w);
    let x_3374 : vec4<f32> = u_xlat4;
    let x_3376 : vec4<f32> = u_xlat9;
    u_xlat65 = dot(vec3<f32>(x_3374.x, x_3374.y, x_3374.z), vec3<f32>(x_3376.x, x_3376.y, x_3376.z));
    let x_3379 : f32 = u_xlat65;
    u_xlat65 = clamp(x_3379, 0.0f, 1.0f);
    let x_3381 : f32 = u_xlat65;
    let x_3382 : f32 = u_xlat69;
    u_xlat65 = (x_3381 * x_3382);
    let x_3384 : f32 = u_xlat65;
    let x_3386 : vec4<f32> = u_xlat10;
    let x_3388 : vec3<f32> = (vec3<f32>(x_3384, x_3384, x_3384) * vec3<f32>(x_3386.x, x_3386.y, x_3386.z));
    let x_3389 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3388.x, x_3388.y, x_3388.z, x_3389.w);
    let x_3391 : vec3<f32> = u_xlat29;
    let x_3392 : f32 = u_xlat70;
    let x_3395 : vec3<f32> = u_xlat5;
    u_xlat29 = ((x_3391 * vec3<f32>(x_3392, x_3392, x_3392)) + x_3395);
    let x_3397 : vec3<f32> = u_xlat29;
    let x_3398 : vec3<f32> = u_xlat29;
    u_xlat65 = dot(x_3397, x_3398);
    let x_3400 : f32 = u_xlat65;
    u_xlat65 = max(x_3400, 1.17549435e-37f);
    let x_3402 : f32 = u_xlat65;
    u_xlat65 = inverseSqrt(x_3402);
    let x_3404 : f32 = u_xlat65;
    let x_3406 : vec3<f32> = u_xlat29;
    u_xlat29 = (vec3<f32>(x_3404, x_3404, x_3404) * x_3406);
    let x_3408 : vec4<f32> = u_xlat4;
    let x_3410 : vec3<f32> = u_xlat29;
    u_xlat65 = dot(vec3<f32>(x_3408.x, x_3408.y, x_3408.z), x_3410);
    let x_3412 : f32 = u_xlat65;
    u_xlat65 = clamp(x_3412, 0.0f, 1.0f);
    let x_3414 : vec4<f32> = u_xlat9;
    let x_3416 : vec3<f32> = u_xlat29;
    u_xlat69 = dot(vec3<f32>(x_3414.x, x_3414.y, x_3414.z), x_3416);
    let x_3418 : f32 = u_xlat69;
    u_xlat69 = clamp(x_3418, 0.0f, 1.0f);
    let x_3420 : f32 = u_xlat65;
    let x_3421 : f32 = u_xlat65;
    u_xlat65 = (x_3420 * x_3421);
    let x_3423 : f32 = u_xlat65;
    let x_3425 : f32 = u_xlat8.x;
    u_xlat65 = ((x_3423 * x_3425) + 1.000010014f);
    let x_3428 : f32 = u_xlat69;
    let x_3429 : f32 = u_xlat69;
    u_xlat69 = (x_3428 * x_3429);
    let x_3431 : f32 = u_xlat65;
    let x_3432 : f32 = u_xlat65;
    u_xlat65 = (x_3431 * x_3432);
    let x_3434 : f32 = u_xlat69;
    u_xlat69 = max(x_3434, 0.100000001f);
    let x_3436 : f32 = u_xlat65;
    let x_3437 : f32 = u_xlat69;
    u_xlat65 = (x_3436 * x_3437);
    let x_3439 : f32 = u_xlat67;
    let x_3440 : f32 = u_xlat65;
    u_xlat65 = (x_3439 * x_3440);
    let x_3442 : f32 = u_xlat66;
    let x_3443 : f32 = u_xlat65;
    u_xlat65 = (x_3442 / x_3443);
    let x_3445 : vec3<f32> = u_xlat2;
    let x_3446 : f32 = u_xlat65;
    let x_3449 : vec3<f32> = u_xlat3;
    u_xlat29 = ((x_3445 * vec3<f32>(x_3446, x_3446, x_3446)) + x_3449);
    let x_3451 : vec3<f32> = u_xlat29;
    let x_3452 : vec4<f32> = u_xlat10;
    let x_3455 : vec4<f32> = u_xlat7;
    let x_3457 : vec3<f32> = ((x_3451 * vec3<f32>(x_3452.x, x_3452.y, x_3452.z)) + vec3<f32>(x_3455.x, x_3455.y, x_3455.z));
    let x_3458 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3457.x, x_3457.y, x_3457.z, x_3458.w);

    continuing {
      let x_3460 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3460 + bitcast<u32>(1i));
    }
  }
  let x_3462 : vec4<f32> = u_xlat0;
  let x_3464 : f32 = u_xlat68;
  let x_3467 : vec4<f32> = u_xlat1;
  let x_3469 : vec3<f32> = ((vec3<f32>(x_3462.x, x_3462.z, x_3462.w) * vec3<f32>(x_3464, x_3464, x_3464)) + vec3<f32>(x_3467.x, x_3467.y, x_3467.z));
  let x_3470 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3469.x, x_3469.y, x_3469.z, x_3470.w);
  let x_3474 : vec4<f32> = u_xlat7;
  let x_3476 : vec4<f32> = u_xlat0;
  let x_3478 : vec3<f32> = (vec3<f32>(x_3474.x, x_3474.y, x_3474.z) + vec3<f32>(x_3476.x, x_3476.y, x_3476.z));
  let x_3479 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3478.x, x_3478.y, x_3478.z, x_3479.w);
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

