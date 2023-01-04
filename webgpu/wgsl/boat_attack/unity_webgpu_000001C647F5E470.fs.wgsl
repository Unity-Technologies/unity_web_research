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

@group(1) @binding(3) var<uniform> x_694 : MainLightShadows;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(12) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP4 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_2339 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(11) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2816 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_2926 : AdditionalLightsCookies;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var u_xlat22 : vec3<f32>;
  var u_xlat25 : vec3<f32>;
  var u_xlatb1 : bool;
  var x_656 : f32;
  var x_668 : f32;
  var x_679 : f32;
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
  var x_2290 : f32;
  var u_xlat43 : vec2<f32>;
  var x_2421 : f32;
  var x_2433 : vec3<f32>;
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
  var x_3241 : f32;
  var x_3254 : f32;
  var x_3316 : f32;
  var x_3327 : vec3<f32>;
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
  let x_634 : vec3<f32> = x_146.x_WorldSpaceCameraPos;
  let x_635 : vec3<f32> = (-(x_629) + x_634);
  let x_636 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_635.x, x_635.y, x_635.z, x_636.w);
  let x_638 : vec4<f32> = u_xlat4;
  let x_640 : vec4<f32> = u_xlat4;
  u_xlat22.x = dot(vec3<f32>(x_638.x, x_638.y, x_638.z), vec3<f32>(x_640.x, x_640.y, x_640.z));
  let x_645 : f32 = u_xlat22.x;
  u_xlat22.x = inverseSqrt(x_645);
  let x_648 : vec3<f32> = u_xlat22;
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
  u_xlat28 = (x_718 + -(vec3<f32>(x_720.x, x_720.y, x_720.z)));
  let x_725 : vec4<f32> = u_xlat1;
  let x_727 : vec4<f32> = u_xlat1;
  u_xlat8.x = dot(vec3<f32>(x_725.x, x_725.y, x_725.z), vec3<f32>(x_727.x, x_727.y, x_727.z));
  let x_731 : vec4<f32> = u_xlat4;
  let x_733 : vec4<f32> = u_xlat4;
  u_xlat8.y = dot(vec3<f32>(x_731.x, x_731.y, x_731.z), vec3<f32>(x_733.x, x_733.y, x_733.z));
  let x_737 : vec4<f32> = u_xlat6;
  let x_739 : vec4<f32> = u_xlat6;
  u_xlat8.z = dot(vec3<f32>(x_737.x, x_737.y, x_737.z), vec3<f32>(x_739.x, x_739.y, x_739.z));
  let x_743 : vec3<f32> = u_xlat28;
  let x_744 : vec3<f32> = u_xlat28;
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
  let x_885 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_882, x_884);
  let x_886 : vec3<f32> = vec3<f32>(x_885.x, x_885.y, x_885.z);
  let x_887 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_886.x, x_886.y, x_886.z, x_887.w);
  let x_890 : vec4<f32> = x_146.x_ScaledScreenParams;
  let x_891 : vec2<f32> = vec2<f32>(x_890.x, x_890.y);
  let x_895 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_891.x, x_891.y));
  let x_896 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_895.x, x_895.y, x_896.z, x_896.w);
  let x_898 : vec4<f32> = u_xlat6;
  let x_900 : vec4<f32> = hlslcc_FragCoord;
  let x_902 : vec2<f32> = (vec2<f32>(x_898.x, x_898.y) * vec2<f32>(x_900.x, x_900.y));
  let x_903 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_902.x, x_902.y, x_903.z, x_903.w);
  let x_906 : f32 = u_xlat6.y;
  let x_908 : f32 = x_146.x_ScaleBiasRt.x;
  let x_911 : f32 = x_146.x_ScaleBiasRt.y;
  u_xlat65 = ((x_906 * x_908) + x_911);
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
  let x_990 : f32 = x_694.x_MainLightShadowParams.y;
  u_xlatb27.x = (0.0f < x_990);
  let x_994 : bool = u_xlatb27.x;
  if (x_994) {
    let x_998 : f32 = x_694.x_MainLightShadowParams.y;
    u_xlatb27.x = (x_998 == 1.0f);
    let x_1002 : bool = u_xlatb27.x;
    if (x_1002) {
      let x_1005 : vec4<f32> = u_xlat1;
      let x_1008 : vec4<f32> = x_694.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_1005.x, x_1005.y, x_1005.x, x_1005.y) + x_1008);
      let x_1011 : vec4<f32> = u_xlat7;
      let x_1012 : vec2<f32> = vec2<f32>(x_1011.x, x_1011.y);
      let x_1014 : f32 = u_xlat1.z;
      txVec0 = vec3<f32>(x_1012.x, x_1012.y, x_1014);
      let x_1026 : vec3<f32> = txVec0;
      let x_1028 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1026.xy, x_1026.z);
      u_xlat8.x = x_1028;
      let x_1031 : vec4<f32> = u_xlat7;
      let x_1032 : vec2<f32> = vec2<f32>(x_1031.z, x_1031.w);
      let x_1034 : f32 = u_xlat1.z;
      txVec1 = vec3<f32>(x_1032.x, x_1032.y, x_1034);
      let x_1041 : vec3<f32> = txVec1;
      let x_1043 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1041.xy, x_1041.z);
      u_xlat8.y = x_1043;
      let x_1045 : vec4<f32> = u_xlat1;
      let x_1048 : vec4<f32> = x_694.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_1045.x, x_1045.y, x_1045.x, x_1045.y) + x_1048);
      let x_1051 : vec4<f32> = u_xlat7;
      let x_1052 : vec2<f32> = vec2<f32>(x_1051.x, x_1051.y);
      let x_1054 : f32 = u_xlat1.z;
      txVec2 = vec3<f32>(x_1052.x, x_1052.y, x_1054);
      let x_1061 : vec3<f32> = txVec2;
      let x_1063 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1061.xy, x_1061.z);
      u_xlat8.z = x_1063;
      let x_1066 : vec4<f32> = u_xlat7;
      let x_1067 : vec2<f32> = vec2<f32>(x_1066.z, x_1066.w);
      let x_1069 : f32 = u_xlat1.z;
      txVec3 = vec3<f32>(x_1067.x, x_1067.y, x_1069);
      let x_1076 : vec3<f32> = txVec3;
      let x_1078 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1076.xy, x_1076.z);
      u_xlat8.w = x_1078;
      let x_1081 : vec4<f32> = u_xlat8;
      u_xlat27.x = dot(x_1081, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1089 : f32 = x_694.x_MainLightShadowParams.y;
      u_xlatb48 = (x_1089 == 2.0f);
      let x_1091 : bool = u_xlatb48;
      if (x_1091) {
        let x_1096 : vec4<f32> = u_xlat1;
        let x_1099 : vec4<f32> = x_694.x_MainLightShadowmapSize;
        u_xlat48 = ((vec2<f32>(x_1096.x, x_1096.y) * vec2<f32>(x_1099.z, x_1099.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1105 : vec2<f32> = u_xlat48;
        u_xlat48 = floor(x_1105);
        let x_1107 : vec4<f32> = u_xlat1;
        let x_1110 : vec4<f32> = x_694.x_MainLightShadowmapSize;
        let x_1113 : vec2<f32> = u_xlat48;
        let x_1115 : vec2<f32> = ((vec2<f32>(x_1107.x, x_1107.y) * vec2<f32>(x_1110.z, x_1110.w)) + -(x_1113));
        let x_1116 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1115.x, x_1115.y, x_1116.z, x_1116.w);
        let x_1118 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1118.x, x_1118.x, x_1118.y, x_1118.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1123 : vec4<f32> = u_xlat8;
        let x_1125 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1123.x, x_1123.x, x_1123.z, x_1123.z) * vec4<f32>(x_1125.x, x_1125.x, x_1125.z, x_1125.z));
        let x_1129 : vec4<f32> = u_xlat9;
        u_xlat49 = (vec2<f32>(x_1129.y, x_1129.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_1134 : vec4<f32> = u_xlat9;
        let x_1137 : vec4<f32> = u_xlat7;
        let x_1140 : vec2<f32> = ((vec2<f32>(x_1134.x, x_1134.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1137.x, x_1137.y)));
        let x_1141 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1140.x, x_1141.y, x_1140.y, x_1141.w);
        let x_1143 : vec4<f32> = u_xlat7;
        let x_1146 : vec2<f32> = (-(vec2<f32>(x_1143.x, x_1143.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1147 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1146.x, x_1146.y, x_1147.z, x_1147.w);
        let x_1150 : vec4<f32> = u_xlat7;
        u_xlat51 = min(vec2<f32>(x_1150.x, x_1150.y), vec2<f32>(0.0f, 0.0f));
        let x_1154 : vec2<f32> = u_xlat51;
        let x_1156 : vec2<f32> = u_xlat51;
        let x_1158 : vec4<f32> = u_xlat9;
        u_xlat51 = ((-(x_1154) * x_1156) + vec2<f32>(x_1158.x, x_1158.y));
        let x_1161 : vec4<f32> = u_xlat7;
        let x_1163 : vec2<f32> = max(vec2<f32>(x_1161.x, x_1161.y), vec2<f32>(0.0f, 0.0f));
        let x_1164 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1163.x, x_1163.y, x_1164.z, x_1164.w);
        let x_1166 : vec4<f32> = u_xlat7;
        let x_1169 : vec4<f32> = u_xlat7;
        let x_1172 : vec4<f32> = u_xlat8;
        let x_1174 : vec2<f32> = ((-(vec2<f32>(x_1166.x, x_1166.y)) * vec2<f32>(x_1169.x, x_1169.y)) + vec2<f32>(x_1172.y, x_1172.w));
        let x_1175 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1174.x, x_1174.y, x_1175.z, x_1175.w);
        let x_1177 : vec2<f32> = u_xlat51;
        u_xlat51 = (x_1177 + vec2<f32>(1.0f, 1.0f));
        let x_1179 : vec4<f32> = u_xlat7;
        let x_1181 : vec2<f32> = (vec2<f32>(x_1179.x, x_1179.y) + vec2<f32>(1.0f, 1.0f));
        let x_1182 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1181.x, x_1181.y, x_1182.z, x_1182.w);
        let x_1185 : vec4<f32> = u_xlat8;
        let x_1189 : vec2<f32> = (vec2<f32>(x_1185.x, x_1185.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1190 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1189.x, x_1189.y, x_1190.z, x_1190.w);
        let x_1193 : vec4<f32> = u_xlat9;
        let x_1195 : vec2<f32> = (vec2<f32>(x_1193.x, x_1193.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1196 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1195.x, x_1195.y, x_1196.z, x_1196.w);
        let x_1198 : vec2<f32> = u_xlat51;
        let x_1199 : vec2<f32> = (x_1198 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1200 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1199.x, x_1199.y, x_1200.z, x_1200.w);
        let x_1203 : vec4<f32> = u_xlat7;
        let x_1205 : vec2<f32> = (vec2<f32>(x_1203.x, x_1203.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1206 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1205.x, x_1205.y, x_1206.z, x_1206.w);
        let x_1208 : vec4<f32> = u_xlat8;
        let x_1210 : vec2<f32> = (vec2<f32>(x_1208.y, x_1208.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1211 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1210.x, x_1210.y, x_1211.z, x_1211.w);
        let x_1214 : f32 = u_xlat9.x;
        u_xlat10.z = x_1214;
        let x_1217 : f32 = u_xlat7.x;
        u_xlat10.w = x_1217;
        let x_1220 : f32 = u_xlat12.x;
        u_xlat11.z = x_1220;
        let x_1223 : f32 = u_xlat49.x;
        u_xlat11.w = x_1223;
        let x_1225 : vec4<f32> = u_xlat10;
        let x_1227 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1225.z, x_1225.w, x_1225.x, x_1225.z) + vec4<f32>(x_1227.z, x_1227.w, x_1227.x, x_1227.z));
        let x_1231 : f32 = u_xlat10.y;
        u_xlat9.z = x_1231;
        let x_1234 : f32 = u_xlat7.y;
        u_xlat9.w = x_1234;
        let x_1237 : f32 = u_xlat11.y;
        u_xlat12.z = x_1237;
        let x_1240 : f32 = u_xlat49.y;
        u_xlat12.w = x_1240;
        let x_1242 : vec4<f32> = u_xlat9;
        let x_1244 : vec4<f32> = u_xlat12;
        let x_1246 : vec3<f32> = (vec3<f32>(x_1242.z, x_1242.y, x_1242.w) + vec3<f32>(x_1244.z, x_1244.y, x_1244.w));
        let x_1247 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1246.x, x_1246.y, x_1246.z, x_1247.w);
        let x_1249 : vec4<f32> = u_xlat11;
        let x_1251 : vec4<f32> = u_xlat8;
        let x_1253 : vec3<f32> = (vec3<f32>(x_1249.x, x_1249.z, x_1249.w) / vec3<f32>(x_1251.z, x_1251.w, x_1251.y));
        let x_1254 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1253.x, x_1253.y, x_1253.z, x_1254.w);
        let x_1256 : vec4<f32> = u_xlat9;
        let x_1261 : vec3<f32> = (vec3<f32>(x_1256.x, x_1256.y, x_1256.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1262 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1261.x, x_1261.y, x_1261.z, x_1262.w);
        let x_1264 : vec4<f32> = u_xlat12;
        let x_1266 : vec4<f32> = u_xlat7;
        let x_1268 : vec3<f32> = (vec3<f32>(x_1264.z, x_1264.y, x_1264.w) / vec3<f32>(x_1266.x, x_1266.y, x_1266.z));
        let x_1269 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1268.x, x_1268.y, x_1268.z, x_1269.w);
        let x_1271 : vec4<f32> = u_xlat10;
        let x_1273 : vec3<f32> = (vec3<f32>(x_1271.x, x_1271.y, x_1271.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1274 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1273.x, x_1273.y, x_1273.z, x_1274.w);
        let x_1276 : vec4<f32> = u_xlat9;
        let x_1279 : vec4<f32> = x_694.x_MainLightShadowmapSize;
        let x_1281 : vec3<f32> = (vec3<f32>(x_1276.y, x_1276.x, x_1276.z) * vec3<f32>(x_1279.x, x_1279.x, x_1279.x));
        let x_1282 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1281.x, x_1281.y, x_1281.z, x_1282.w);
        let x_1284 : vec4<f32> = u_xlat10;
        let x_1287 : vec4<f32> = x_694.x_MainLightShadowmapSize;
        let x_1289 : vec3<f32> = (vec3<f32>(x_1284.x, x_1284.y, x_1284.z) * vec3<f32>(x_1287.y, x_1287.y, x_1287.y));
        let x_1290 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1289.x, x_1289.y, x_1289.z, x_1290.w);
        let x_1293 : f32 = u_xlat10.x;
        u_xlat9.w = x_1293;
        let x_1295 : vec2<f32> = u_xlat48;
        let x_1298 : vec4<f32> = x_694.x_MainLightShadowmapSize;
        let x_1301 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1295.x, x_1295.y, x_1295.x, x_1295.y) * vec4<f32>(x_1298.x, x_1298.y, x_1298.x, x_1298.y)) + vec4<f32>(x_1301.y, x_1301.w, x_1301.x, x_1301.w));
        let x_1304 : vec2<f32> = u_xlat48;
        let x_1306 : vec4<f32> = x_694.x_MainLightShadowmapSize;
        let x_1309 : vec4<f32> = u_xlat9;
        let x_1311 : vec2<f32> = ((x_1304 * vec2<f32>(x_1306.x, x_1306.y)) + vec2<f32>(x_1309.z, x_1309.w));
        let x_1312 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1311.x, x_1311.y, x_1312.z, x_1312.w);
        let x_1315 : f32 = u_xlat9.y;
        u_xlat10.w = x_1315;
        let x_1317 : vec4<f32> = u_xlat10;
        let x_1318 : vec2<f32> = vec2<f32>(x_1317.y, x_1317.z);
        let x_1319 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1319.x, x_1318.x, x_1319.z, x_1318.y);
        let x_1322 : vec2<f32> = u_xlat48;
        let x_1325 : vec4<f32> = x_694.x_MainLightShadowmapSize;
        let x_1328 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_1322.x, x_1322.y, x_1322.x, x_1322.y) * vec4<f32>(x_1325.x, x_1325.y, x_1325.x, x_1325.y)) + vec4<f32>(x_1328.x, x_1328.y, x_1328.z, x_1328.y));
        let x_1331 : vec2<f32> = u_xlat48;
        let x_1334 : vec4<f32> = x_694.x_MainLightShadowmapSize;
        let x_1337 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1331.x, x_1331.y, x_1331.x, x_1331.y) * vec4<f32>(x_1334.x, x_1334.y, x_1334.x, x_1334.y)) + vec4<f32>(x_1337.w, x_1337.y, x_1337.w, x_1337.z));
        let x_1340 : vec2<f32> = u_xlat48;
        let x_1343 : vec4<f32> = x_694.x_MainLightShadowmapSize;
        let x_1346 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1340.x, x_1340.y, x_1340.x, x_1340.y) * vec4<f32>(x_1343.x, x_1343.y, x_1343.x, x_1343.y)) + vec4<f32>(x_1346.x, x_1346.w, x_1346.z, x_1346.w));
        let x_1350 : vec4<f32> = u_xlat7;
        let x_1352 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_1350.x, x_1350.x, x_1350.x, x_1350.y) * vec4<f32>(x_1352.z, x_1352.w, x_1352.y, x_1352.z));
        let x_1356 : vec4<f32> = u_xlat7;
        let x_1358 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1356.y, x_1356.y, x_1356.z, x_1356.z) * x_1358);
        let x_1361 : f32 = u_xlat7.z;
        let x_1363 : f32 = u_xlat8.y;
        u_xlat48.x = (x_1361 * x_1363);
        let x_1367 : vec4<f32> = u_xlat11;
        let x_1368 : vec2<f32> = vec2<f32>(x_1367.x, x_1367.y);
        let x_1370 : f32 = u_xlat1.z;
        txVec4 = vec3<f32>(x_1368.x, x_1368.y, x_1370);
        let x_1378 : vec3<f32> = txVec4;
        let x_1380 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1378.xy, x_1378.z);
        u_xlat69 = x_1380;
        let x_1382 : vec4<f32> = u_xlat11;
        let x_1383 : vec2<f32> = vec2<f32>(x_1382.z, x_1382.w);
        let x_1385 : f32 = u_xlat1.z;
        txVec5 = vec3<f32>(x_1383.x, x_1383.y, x_1385);
        let x_1392 : vec3<f32> = txVec5;
        let x_1394 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1392.xy, x_1392.z);
        u_xlat7.x = x_1394;
        let x_1397 : f32 = u_xlat7.x;
        let x_1399 : f32 = u_xlat14.y;
        u_xlat7.x = (x_1397 * x_1399);
        let x_1403 : f32 = u_xlat14.x;
        let x_1404 : f32 = u_xlat69;
        let x_1407 : f32 = u_xlat7.x;
        u_xlat69 = ((x_1403 * x_1404) + x_1407);
        let x_1410 : vec4<f32> = u_xlat12;
        let x_1411 : vec2<f32> = vec2<f32>(x_1410.x, x_1410.y);
        let x_1413 : f32 = u_xlat1.z;
        txVec6 = vec3<f32>(x_1411.x, x_1411.y, x_1413);
        let x_1420 : vec3<f32> = txVec6;
        let x_1422 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1420.xy, x_1420.z);
        u_xlat7.x = x_1422;
        let x_1425 : f32 = u_xlat14.z;
        let x_1427 : f32 = u_xlat7.x;
        let x_1429 : f32 = u_xlat69;
        u_xlat69 = ((x_1425 * x_1427) + x_1429);
        let x_1432 : vec4<f32> = u_xlat10;
        let x_1433 : vec2<f32> = vec2<f32>(x_1432.x, x_1432.y);
        let x_1435 : f32 = u_xlat1.z;
        txVec7 = vec3<f32>(x_1433.x, x_1433.y, x_1435);
        let x_1442 : vec3<f32> = txVec7;
        let x_1444 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1442.xy, x_1442.z);
        u_xlat7.x = x_1444;
        let x_1447 : f32 = u_xlat14.w;
        let x_1449 : f32 = u_xlat7.x;
        let x_1451 : f32 = u_xlat69;
        u_xlat69 = ((x_1447 * x_1449) + x_1451);
        let x_1454 : vec4<f32> = u_xlat13;
        let x_1455 : vec2<f32> = vec2<f32>(x_1454.x, x_1454.y);
        let x_1457 : f32 = u_xlat1.z;
        txVec8 = vec3<f32>(x_1455.x, x_1455.y, x_1457);
        let x_1464 : vec3<f32> = txVec8;
        let x_1466 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1464.xy, x_1464.z);
        u_xlat7.x = x_1466;
        let x_1469 : f32 = u_xlat15.x;
        let x_1471 : f32 = u_xlat7.x;
        let x_1473 : f32 = u_xlat69;
        u_xlat69 = ((x_1469 * x_1471) + x_1473);
        let x_1476 : vec4<f32> = u_xlat13;
        let x_1477 : vec2<f32> = vec2<f32>(x_1476.z, x_1476.w);
        let x_1479 : f32 = u_xlat1.z;
        txVec9 = vec3<f32>(x_1477.x, x_1477.y, x_1479);
        let x_1486 : vec3<f32> = txVec9;
        let x_1488 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1486.xy, x_1486.z);
        u_xlat7.x = x_1488;
        let x_1491 : f32 = u_xlat15.y;
        let x_1493 : f32 = u_xlat7.x;
        let x_1495 : f32 = u_xlat69;
        u_xlat69 = ((x_1491 * x_1493) + x_1495);
        let x_1498 : vec4<f32> = u_xlat10;
        let x_1499 : vec2<f32> = vec2<f32>(x_1498.z, x_1498.w);
        let x_1501 : f32 = u_xlat1.z;
        txVec10 = vec3<f32>(x_1499.x, x_1499.y, x_1501);
        let x_1508 : vec3<f32> = txVec10;
        let x_1510 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1508.xy, x_1508.z);
        u_xlat7.x = x_1510;
        let x_1513 : f32 = u_xlat15.z;
        let x_1515 : f32 = u_xlat7.x;
        let x_1517 : f32 = u_xlat69;
        u_xlat69 = ((x_1513 * x_1515) + x_1517);
        let x_1520 : vec4<f32> = u_xlat9;
        let x_1521 : vec2<f32> = vec2<f32>(x_1520.x, x_1520.y);
        let x_1523 : f32 = u_xlat1.z;
        txVec11 = vec3<f32>(x_1521.x, x_1521.y, x_1523);
        let x_1530 : vec3<f32> = txVec11;
        let x_1532 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1530.xy, x_1530.z);
        u_xlat7.x = x_1532;
        let x_1535 : f32 = u_xlat15.w;
        let x_1537 : f32 = u_xlat7.x;
        let x_1539 : f32 = u_xlat69;
        u_xlat69 = ((x_1535 * x_1537) + x_1539);
        let x_1542 : vec4<f32> = u_xlat9;
        let x_1543 : vec2<f32> = vec2<f32>(x_1542.z, x_1542.w);
        let x_1545 : f32 = u_xlat1.z;
        txVec12 = vec3<f32>(x_1543.x, x_1543.y, x_1545);
        let x_1552 : vec3<f32> = txVec12;
        let x_1554 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1552.xy, x_1552.z);
        u_xlat7.x = x_1554;
        let x_1557 : f32 = u_xlat48.x;
        let x_1559 : f32 = u_xlat7.x;
        let x_1561 : f32 = u_xlat69;
        u_xlat27.x = ((x_1557 * x_1559) + x_1561);
      } else {
        let x_1565 : vec4<f32> = u_xlat1;
        let x_1568 : vec4<f32> = x_694.x_MainLightShadowmapSize;
        u_xlat48 = ((vec2<f32>(x_1565.x, x_1565.y) * vec2<f32>(x_1568.z, x_1568.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1572 : vec2<f32> = u_xlat48;
        u_xlat48 = floor(x_1572);
        let x_1574 : vec4<f32> = u_xlat1;
        let x_1577 : vec4<f32> = x_694.x_MainLightShadowmapSize;
        let x_1580 : vec2<f32> = u_xlat48;
        let x_1582 : vec2<f32> = ((vec2<f32>(x_1574.x, x_1574.y) * vec2<f32>(x_1577.z, x_1577.w)) + -(x_1580));
        let x_1583 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1582.x, x_1582.y, x_1583.z, x_1583.w);
        let x_1585 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1585.x, x_1585.x, x_1585.y, x_1585.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1588 : vec4<f32> = u_xlat8;
        let x_1590 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1588.x, x_1588.x, x_1588.z, x_1588.z) * vec4<f32>(x_1590.x, x_1590.x, x_1590.z, x_1590.z));
        let x_1593 : vec4<f32> = u_xlat9;
        let x_1597 : vec2<f32> = (vec2<f32>(x_1593.y, x_1593.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1598 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1598.x, x_1597.x, x_1598.z, x_1597.y);
        let x_1600 : vec4<f32> = u_xlat9;
        let x_1603 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_1600.x, x_1600.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1603.x, x_1603.y)));
        let x_1607 : vec4<f32> = u_xlat7;
        let x_1610 : vec2<f32> = (-(vec2<f32>(x_1607.x, x_1607.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1611 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1610.x, x_1611.y, x_1610.y, x_1611.w);
        let x_1613 : vec4<f32> = u_xlat7;
        let x_1615 : vec2<f32> = min(vec2<f32>(x_1613.x, x_1613.y), vec2<f32>(0.0f, 0.0f));
        let x_1616 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1615.x, x_1615.y, x_1616.z, x_1616.w);
        let x_1618 : vec4<f32> = u_xlat9;
        let x_1621 : vec4<f32> = u_xlat9;
        let x_1624 : vec4<f32> = u_xlat8;
        let x_1626 : vec2<f32> = ((-(vec2<f32>(x_1618.x, x_1618.y)) * vec2<f32>(x_1621.x, x_1621.y)) + vec2<f32>(x_1624.x, x_1624.z));
        let x_1627 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1626.x, x_1627.y, x_1626.y, x_1627.w);
        let x_1629 : vec4<f32> = u_xlat7;
        let x_1631 : vec2<f32> = max(vec2<f32>(x_1629.x, x_1629.y), vec2<f32>(0.0f, 0.0f));
        let x_1632 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1631.x, x_1631.y, x_1632.z, x_1632.w);
        let x_1634 : vec4<f32> = u_xlat9;
        let x_1637 : vec4<f32> = u_xlat9;
        let x_1640 : vec4<f32> = u_xlat8;
        let x_1642 : vec2<f32> = ((-(vec2<f32>(x_1634.x, x_1634.y)) * vec2<f32>(x_1637.x, x_1637.y)) + vec2<f32>(x_1640.y, x_1640.w));
        let x_1643 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1643.x, x_1642.x, x_1643.z, x_1642.y);
        let x_1645 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1645 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1649 : f32 = u_xlat8.y;
        u_xlat9.z = (x_1649 * 0.081632003f);
        let x_1653 : vec2<f32> = u_xlat49;
        let x_1656 : vec2<f32> = (vec2<f32>(x_1653.y, x_1653.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1657 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1656.x, x_1656.y, x_1657.z, x_1657.w);
        let x_1659 : vec4<f32> = u_xlat8;
        u_xlat49 = (vec2<f32>(x_1659.x, x_1659.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1663 : f32 = u_xlat8.w;
        u_xlat11.z = (x_1663 * 0.081632003f);
        let x_1667 : f32 = u_xlat11.y;
        u_xlat9.x = x_1667;
        let x_1669 : vec4<f32> = u_xlat7;
        let x_1676 : vec2<f32> = ((vec2<f32>(x_1669.x, x_1669.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1677 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1677.x, x_1676.x, x_1677.z, x_1676.y);
        let x_1679 : vec4<f32> = u_xlat7;
        let x_1683 : vec2<f32> = ((vec2<f32>(x_1679.x, x_1679.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1684 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1683.x, x_1684.y, x_1683.y, x_1684.w);
        let x_1687 : f32 = u_xlat49.x;
        u_xlat8.y = x_1687;
        let x_1690 : f32 = u_xlat10.y;
        u_xlat8.w = x_1690;
        let x_1692 : vec4<f32> = u_xlat8;
        let x_1693 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1692 + x_1693);
        let x_1695 : vec4<f32> = u_xlat7;
        let x_1698 : vec2<f32> = ((vec2<f32>(x_1695.y, x_1695.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1699 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1699.x, x_1698.x, x_1699.z, x_1698.y);
        let x_1701 : vec4<f32> = u_xlat7;
        let x_1704 : vec2<f32> = ((vec2<f32>(x_1701.y, x_1701.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1705 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1704.x, x_1705.y, x_1704.y, x_1705.w);
        let x_1708 : f32 = u_xlat49.y;
        u_xlat10.y = x_1708;
        let x_1710 : vec4<f32> = u_xlat10;
        let x_1711 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1710 + x_1711);
        let x_1713 : vec4<f32> = u_xlat8;
        let x_1714 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_1713 / x_1714);
        let x_1716 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1716 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1722 : vec4<f32> = u_xlat10;
        let x_1723 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_1722 / x_1723);
        let x_1725 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1725 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1727 : vec4<f32> = u_xlat8;
        let x_1730 : vec4<f32> = x_694.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1727.w, x_1727.x, x_1727.y, x_1727.z) * vec4<f32>(x_1730.x, x_1730.x, x_1730.x, x_1730.x));
        let x_1733 : vec4<f32> = u_xlat10;
        let x_1736 : vec4<f32> = x_694.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1733.x, x_1733.w, x_1733.y, x_1733.z) * vec4<f32>(x_1736.y, x_1736.y, x_1736.y, x_1736.y));
        let x_1739 : vec4<f32> = u_xlat8;
        let x_1740 : vec3<f32> = vec3<f32>(x_1739.y, x_1739.z, x_1739.w);
        let x_1741 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1740.x, x_1741.y, x_1740.y, x_1740.z);
        let x_1744 : f32 = u_xlat10.x;
        u_xlat11.y = x_1744;
        let x_1746 : vec2<f32> = u_xlat48;
        let x_1749 : vec4<f32> = x_694.x_MainLightShadowmapSize;
        let x_1752 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1746.x, x_1746.y, x_1746.x, x_1746.y) * vec4<f32>(x_1749.x, x_1749.y, x_1749.x, x_1749.y)) + vec4<f32>(x_1752.x, x_1752.y, x_1752.z, x_1752.y));
        let x_1755 : vec2<f32> = u_xlat48;
        let x_1757 : vec4<f32> = x_694.x_MainLightShadowmapSize;
        let x_1760 : vec4<f32> = u_xlat11;
        let x_1762 : vec2<f32> = ((x_1755 * vec2<f32>(x_1757.x, x_1757.y)) + vec2<f32>(x_1760.w, x_1760.y));
        let x_1763 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1762.x, x_1762.y, x_1763.z, x_1763.w);
        let x_1766 : f32 = u_xlat11.y;
        u_xlat8.y = x_1766;
        let x_1769 : f32 = u_xlat10.z;
        u_xlat11.y = x_1769;
        let x_1771 : vec2<f32> = u_xlat48;
        let x_1774 : vec4<f32> = x_694.x_MainLightShadowmapSize;
        let x_1777 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_1771.x, x_1771.y, x_1771.x, x_1771.y) * vec4<f32>(x_1774.x, x_1774.y, x_1774.x, x_1774.y)) + vec4<f32>(x_1777.x, x_1777.y, x_1777.z, x_1777.y));
        let x_1781 : vec2<f32> = u_xlat48;
        let x_1783 : vec4<f32> = x_694.x_MainLightShadowmapSize;
        let x_1786 : vec4<f32> = u_xlat11;
        u_xlat55 = ((x_1781 * vec2<f32>(x_1783.x, x_1783.y)) + vec2<f32>(x_1786.w, x_1786.y));
        let x_1790 : f32 = u_xlat11.y;
        u_xlat8.z = x_1790;
        let x_1792 : vec2<f32> = u_xlat48;
        let x_1795 : vec4<f32> = x_694.x_MainLightShadowmapSize;
        let x_1798 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1792.x, x_1792.y, x_1792.x, x_1792.y) * vec4<f32>(x_1795.x, x_1795.y, x_1795.x, x_1795.y)) + vec4<f32>(x_1798.x, x_1798.y, x_1798.x, x_1798.z));
        let x_1802 : f32 = u_xlat10.w;
        u_xlat11.y = x_1802;
        let x_1805 : vec2<f32> = u_xlat48;
        let x_1808 : vec4<f32> = x_694.x_MainLightShadowmapSize;
        let x_1811 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1805.x, x_1805.y, x_1805.x, x_1805.y) * vec4<f32>(x_1808.x, x_1808.y, x_1808.x, x_1808.y)) + vec4<f32>(x_1811.x, x_1811.y, x_1811.z, x_1811.y));
        let x_1815 : vec2<f32> = u_xlat48;
        let x_1817 : vec4<f32> = x_694.x_MainLightShadowmapSize;
        let x_1820 : vec4<f32> = u_xlat11;
        u_xlat29 = ((x_1815 * vec2<f32>(x_1817.x, x_1817.y)) + vec2<f32>(x_1820.w, x_1820.y));
        let x_1824 : f32 = u_xlat11.y;
        u_xlat8.w = x_1824;
        let x_1827 : vec2<f32> = u_xlat48;
        let x_1829 : vec4<f32> = x_694.x_MainLightShadowmapSize;
        let x_1832 : vec4<f32> = u_xlat8;
        u_xlat17 = ((x_1827 * vec2<f32>(x_1829.x, x_1829.y)) + vec2<f32>(x_1832.x, x_1832.w));
        let x_1835 : vec4<f32> = u_xlat11;
        let x_1836 : vec3<f32> = vec3<f32>(x_1835.x, x_1835.z, x_1835.w);
        let x_1837 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1836.x, x_1837.y, x_1836.y, x_1836.z);
        let x_1839 : vec2<f32> = u_xlat48;
        let x_1842 : vec4<f32> = x_694.x_MainLightShadowmapSize;
        let x_1845 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1839.x, x_1839.y, x_1839.x, x_1839.y) * vec4<f32>(x_1842.x, x_1842.y, x_1842.x, x_1842.y)) + vec4<f32>(x_1845.x, x_1845.y, x_1845.z, x_1845.y));
        let x_1849 : vec2<f32> = u_xlat48;
        let x_1851 : vec4<f32> = x_694.x_MainLightShadowmapSize;
        let x_1854 : vec4<f32> = u_xlat10;
        u_xlat52 = ((x_1849 * vec2<f32>(x_1851.x, x_1851.y)) + vec2<f32>(x_1854.w, x_1854.y));
        let x_1858 : f32 = u_xlat8.x;
        u_xlat10.x = x_1858;
        let x_1860 : vec2<f32> = u_xlat48;
        let x_1862 : vec4<f32> = x_694.x_MainLightShadowmapSize;
        let x_1865 : vec4<f32> = u_xlat10;
        u_xlat48 = ((x_1860 * vec2<f32>(x_1862.x, x_1862.y)) + vec2<f32>(x_1865.x, x_1865.y));
        let x_1869 : vec4<f32> = u_xlat7;
        let x_1871 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1869.x, x_1869.x, x_1869.x, x_1869.x) * x_1871);
        let x_1874 : vec4<f32> = u_xlat7;
        let x_1876 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_1874.y, x_1874.y, x_1874.y, x_1874.y) * x_1876);
        let x_1879 : vec4<f32> = u_xlat7;
        let x_1881 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_1879.z, x_1879.z, x_1879.z, x_1879.z) * x_1881);
        let x_1883 : vec4<f32> = u_xlat7;
        let x_1885 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_1883.w, x_1883.w, x_1883.w, x_1883.w) * x_1885);
        let x_1888 : vec4<f32> = u_xlat12;
        let x_1889 : vec2<f32> = vec2<f32>(x_1888.x, x_1888.y);
        let x_1891 : f32 = u_xlat1.z;
        txVec13 = vec3<f32>(x_1889.x, x_1889.y, x_1891);
        let x_1898 : vec3<f32> = txVec13;
        let x_1900 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1898.xy, x_1898.z);
        u_xlat8.x = x_1900;
        let x_1903 : vec4<f32> = u_xlat12;
        let x_1904 : vec2<f32> = vec2<f32>(x_1903.z, x_1903.w);
        let x_1906 : f32 = u_xlat1.z;
        txVec14 = vec3<f32>(x_1904.x, x_1904.y, x_1906);
        let x_1914 : vec3<f32> = txVec14;
        let x_1916 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1914.xy, x_1914.z);
        u_xlat71 = x_1916;
        let x_1917 : f32 = u_xlat71;
        let x_1919 : f32 = u_xlat18.y;
        u_xlat71 = (x_1917 * x_1919);
        let x_1922 : f32 = u_xlat18.x;
        let x_1924 : f32 = u_xlat8.x;
        let x_1926 : f32 = u_xlat71;
        u_xlat8.x = ((x_1922 * x_1924) + x_1926);
        let x_1930 : vec4<f32> = u_xlat13;
        let x_1931 : vec2<f32> = vec2<f32>(x_1930.x, x_1930.y);
        let x_1933 : f32 = u_xlat1.z;
        txVec15 = vec3<f32>(x_1931.x, x_1931.y, x_1933);
        let x_1940 : vec3<f32> = txVec15;
        let x_1942 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1940.xy, x_1940.z);
        u_xlat71 = x_1942;
        let x_1944 : f32 = u_xlat18.z;
        let x_1945 : f32 = u_xlat71;
        let x_1948 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1944 * x_1945) + x_1948);
        let x_1952 : vec4<f32> = u_xlat15;
        let x_1953 : vec2<f32> = vec2<f32>(x_1952.x, x_1952.y);
        let x_1955 : f32 = u_xlat1.z;
        txVec16 = vec3<f32>(x_1953.x, x_1953.y, x_1955);
        let x_1962 : vec3<f32> = txVec16;
        let x_1964 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1962.xy, x_1962.z);
        u_xlat71 = x_1964;
        let x_1966 : f32 = u_xlat18.w;
        let x_1967 : f32 = u_xlat71;
        let x_1970 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1966 * x_1967) + x_1970);
        let x_1974 : vec4<f32> = u_xlat14;
        let x_1975 : vec2<f32> = vec2<f32>(x_1974.x, x_1974.y);
        let x_1977 : f32 = u_xlat1.z;
        txVec17 = vec3<f32>(x_1975.x, x_1975.y, x_1977);
        let x_1984 : vec3<f32> = txVec17;
        let x_1986 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1984.xy, x_1984.z);
        u_xlat71 = x_1986;
        let x_1988 : f32 = u_xlat19.x;
        let x_1989 : f32 = u_xlat71;
        let x_1992 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1988 * x_1989) + x_1992);
        let x_1996 : vec4<f32> = u_xlat14;
        let x_1997 : vec2<f32> = vec2<f32>(x_1996.z, x_1996.w);
        let x_1999 : f32 = u_xlat1.z;
        txVec18 = vec3<f32>(x_1997.x, x_1997.y, x_1999);
        let x_2006 : vec3<f32> = txVec18;
        let x_2008 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2006.xy, x_2006.z);
        u_xlat71 = x_2008;
        let x_2010 : f32 = u_xlat19.y;
        let x_2011 : f32 = u_xlat71;
        let x_2014 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2010 * x_2011) + x_2014);
        let x_2018 : vec2<f32> = u_xlat55;
        let x_2020 : f32 = u_xlat1.z;
        txVec19 = vec3<f32>(x_2018.x, x_2018.y, x_2020);
        let x_2027 : vec3<f32> = txVec19;
        let x_2029 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2027.xy, x_2027.z);
        u_xlat71 = x_2029;
        let x_2031 : f32 = u_xlat19.z;
        let x_2032 : f32 = u_xlat71;
        let x_2035 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2031 * x_2032) + x_2035);
        let x_2039 : vec4<f32> = u_xlat15;
        let x_2040 : vec2<f32> = vec2<f32>(x_2039.z, x_2039.w);
        let x_2042 : f32 = u_xlat1.z;
        txVec20 = vec3<f32>(x_2040.x, x_2040.y, x_2042);
        let x_2049 : vec3<f32> = txVec20;
        let x_2051 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2049.xy, x_2049.z);
        u_xlat71 = x_2051;
        let x_2053 : f32 = u_xlat19.w;
        let x_2054 : f32 = u_xlat71;
        let x_2057 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2053 * x_2054) + x_2057);
        let x_2061 : vec4<f32> = u_xlat16;
        let x_2062 : vec2<f32> = vec2<f32>(x_2061.x, x_2061.y);
        let x_2064 : f32 = u_xlat1.z;
        txVec21 = vec3<f32>(x_2062.x, x_2062.y, x_2064);
        let x_2071 : vec3<f32> = txVec21;
        let x_2073 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2071.xy, x_2071.z);
        u_xlat71 = x_2073;
        let x_2075 : f32 = u_xlat20.x;
        let x_2076 : f32 = u_xlat71;
        let x_2079 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2075 * x_2076) + x_2079);
        let x_2083 : vec4<f32> = u_xlat16;
        let x_2084 : vec2<f32> = vec2<f32>(x_2083.z, x_2083.w);
        let x_2086 : f32 = u_xlat1.z;
        txVec22 = vec3<f32>(x_2084.x, x_2084.y, x_2086);
        let x_2093 : vec3<f32> = txVec22;
        let x_2095 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2093.xy, x_2093.z);
        u_xlat71 = x_2095;
        let x_2097 : f32 = u_xlat20.y;
        let x_2098 : f32 = u_xlat71;
        let x_2101 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2097 * x_2098) + x_2101);
        let x_2105 : vec2<f32> = u_xlat29;
        let x_2107 : f32 = u_xlat1.z;
        txVec23 = vec3<f32>(x_2105.x, x_2105.y, x_2107);
        let x_2114 : vec3<f32> = txVec23;
        let x_2116 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2114.xy, x_2114.z);
        u_xlat29.x = x_2116;
        let x_2119 : f32 = u_xlat20.z;
        let x_2121 : f32 = u_xlat29.x;
        let x_2124 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2119 * x_2121) + x_2124);
        let x_2128 : vec2<f32> = u_xlat17;
        let x_2130 : f32 = u_xlat1.z;
        txVec24 = vec3<f32>(x_2128.x, x_2128.y, x_2130);
        let x_2137 : vec3<f32> = txVec24;
        let x_2139 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2137.xy, x_2137.z);
        u_xlat29.x = x_2139;
        let x_2142 : f32 = u_xlat20.w;
        let x_2144 : f32 = u_xlat29.x;
        let x_2147 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2142 * x_2144) + x_2147);
        let x_2151 : vec4<f32> = u_xlat11;
        let x_2152 : vec2<f32> = vec2<f32>(x_2151.x, x_2151.y);
        let x_2154 : f32 = u_xlat1.z;
        txVec25 = vec3<f32>(x_2152.x, x_2152.y, x_2154);
        let x_2161 : vec3<f32> = txVec25;
        let x_2163 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2161.xy, x_2161.z);
        u_xlat29.x = x_2163;
        let x_2166 : f32 = u_xlat7.x;
        let x_2168 : f32 = u_xlat29.x;
        let x_2171 : f32 = u_xlat8.x;
        u_xlat7.x = ((x_2166 * x_2168) + x_2171);
        let x_2175 : vec4<f32> = u_xlat11;
        let x_2176 : vec2<f32> = vec2<f32>(x_2175.z, x_2175.w);
        let x_2178 : f32 = u_xlat1.z;
        txVec26 = vec3<f32>(x_2176.x, x_2176.y, x_2178);
        let x_2185 : vec3<f32> = txVec26;
        let x_2187 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2185.xy, x_2185.z);
        u_xlat8.x = x_2187;
        let x_2190 : f32 = u_xlat7.y;
        let x_2192 : f32 = u_xlat8.x;
        let x_2195 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_2190 * x_2192) + x_2195);
        let x_2199 : vec2<f32> = u_xlat52;
        let x_2201 : f32 = u_xlat1.z;
        txVec27 = vec3<f32>(x_2199.x, x_2199.y, x_2201);
        let x_2208 : vec3<f32> = txVec27;
        let x_2210 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2208.xy, x_2208.z);
        u_xlat28.x = x_2210;
        let x_2213 : f32 = u_xlat7.z;
        let x_2215 : f32 = u_xlat28.x;
        let x_2218 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_2213 * x_2215) + x_2218);
        let x_2222 : vec2<f32> = u_xlat48;
        let x_2224 : f32 = u_xlat1.z;
        txVec28 = vec3<f32>(x_2222.x, x_2222.y, x_2224);
        let x_2231 : vec3<f32> = txVec28;
        let x_2233 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2231.xy, x_2231.z);
        u_xlat48.x = x_2233;
        let x_2236 : f32 = u_xlat7.w;
        let x_2238 : f32 = u_xlat48.x;
        let x_2241 : f32 = u_xlat7.x;
        u_xlat27.x = ((x_2236 * x_2238) + x_2241);
      }
    }
  } else {
    let x_2246 : vec4<f32> = u_xlat1;
    let x_2247 : vec2<f32> = vec2<f32>(x_2246.x, x_2246.y);
    let x_2249 : f32 = u_xlat1.z;
    txVec29 = vec3<f32>(x_2247.x, x_2247.y, x_2249);
    let x_2256 : vec3<f32> = txVec29;
    let x_2258 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2256.xy, x_2256.z);
    u_xlat27.x = x_2258;
  }
  let x_2261 : f32 = x_694.x_MainLightShadowParams.x;
  u_xlat1.x = (-(x_2261) + 1.0f);
  let x_2266 : f32 = u_xlat27.x;
  let x_2268 : f32 = x_694.x_MainLightShadowParams.x;
  let x_2271 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_2266 * x_2268) + x_2271);
  let x_2276 : f32 = u_xlat1.z;
  u_xlatb22.x = (0.0f >= x_2276);
  let x_2281 : f32 = u_xlat1.z;
  u_xlatb43 = (x_2281 >= 1.0f);
  let x_2283 : bool = u_xlatb43;
  let x_2285 : bool = u_xlatb22.x;
  u_xlatb22.x = (x_2283 | x_2285);
  let x_2289 : bool = u_xlatb22.x;
  if (x_2289) {
    x_2290 = 1.0f;
  } else {
    let x_2295 : f32 = u_xlat1.x;
    x_2290 = x_2295;
  }
  let x_2296 : f32 = x_2290;
  u_xlat1.x = x_2296;
  let x_2298 : vec3<f32> = vs_INTERP0;
  let x_2300 : vec3<f32> = x_146.x_WorldSpaceCameraPos;
  u_xlat27 = (x_2298 + -(x_2300));
  let x_2303 : vec3<f32> = u_xlat27;
  let x_2304 : vec3<f32> = u_xlat27;
  u_xlat22.x = dot(x_2303, x_2304);
  let x_2308 : f32 = u_xlat22.x;
  let x_2310 : f32 = x_694.x_MainLightShadowParams.z;
  let x_2313 : f32 = x_694.x_MainLightShadowParams.w;
  u_xlat22.x = ((x_2308 * x_2310) + x_2313);
  let x_2317 : f32 = u_xlat22.x;
  u_xlat22.x = clamp(x_2317, 0.0f, 1.0f);
  let x_2322 : f32 = u_xlat1.x;
  u_xlat43.x = (-(x_2322) + 1.0f);
  let x_2327 : f32 = u_xlat22.x;
  let x_2329 : f32 = u_xlat43.x;
  let x_2332 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_2327 * x_2329) + x_2332);
  let x_2341 : f32 = x_2339.x_MainLightCookieTextureFormat;
  u_xlatb22.x = !((x_2341 == -1.0f));
  let x_2345 : bool = u_xlatb22.x;
  if (x_2345) {
    let x_2348 : vec3<f32> = vs_INTERP0;
    let x_2351 : vec4<f32> = x_2339.x_MainLightWorldToLight[1i];
    let x_2353 : vec2<f32> = (vec2<f32>(x_2348.y, x_2348.y) * vec2<f32>(x_2351.x, x_2351.y));
    let x_2354 : vec3<f32> = u_xlat22;
    u_xlat22 = vec3<f32>(x_2353.x, x_2353.y, x_2354.z);
    let x_2357 : vec4<f32> = x_2339.x_MainLightWorldToLight[0i];
    let x_2359 : vec3<f32> = vs_INTERP0;
    let x_2362 : vec3<f32> = u_xlat22;
    let x_2364 : vec2<f32> = ((vec2<f32>(x_2357.x, x_2357.y) * vec2<f32>(x_2359.x, x_2359.x)) + vec2<f32>(x_2362.x, x_2362.y));
    let x_2365 : vec3<f32> = u_xlat22;
    u_xlat22 = vec3<f32>(x_2364.x, x_2364.y, x_2365.z);
    let x_2368 : vec4<f32> = x_2339.x_MainLightWorldToLight[2i];
    let x_2370 : vec3<f32> = vs_INTERP0;
    let x_2373 : vec3<f32> = u_xlat22;
    let x_2375 : vec2<f32> = ((vec2<f32>(x_2368.x, x_2368.y) * vec2<f32>(x_2370.z, x_2370.z)) + vec2<f32>(x_2373.x, x_2373.y));
    let x_2376 : vec3<f32> = u_xlat22;
    u_xlat22 = vec3<f32>(x_2375.x, x_2375.y, x_2376.z);
    let x_2378 : vec3<f32> = u_xlat22;
    let x_2381 : vec4<f32> = x_2339.x_MainLightWorldToLight[3i];
    let x_2383 : vec2<f32> = (vec2<f32>(x_2378.x, x_2378.y) + vec2<f32>(x_2381.x, x_2381.y));
    let x_2384 : vec3<f32> = u_xlat22;
    u_xlat22 = vec3<f32>(x_2383.x, x_2383.y, x_2384.z);
    let x_2386 : vec3<f32> = u_xlat22;
    let x_2389 : vec2<f32> = ((vec2<f32>(x_2386.x, x_2386.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2390 : vec3<f32> = u_xlat22;
    u_xlat22 = vec3<f32>(x_2389.x, x_2389.y, x_2390.z);
    let x_2397 : vec3<f32> = u_xlat22;
    let x_2400 : f32 = x_146.x_GlobalMipBias.x;
    let x_2401 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2397.x, x_2397.y), x_2400);
    u_xlat7 = x_2401;
    let x_2403 : f32 = x_2339.x_MainLightCookieTextureFormat;
    let x_2405 : f32 = x_2339.x_MainLightCookieTextureFormat;
    let x_2407 : f32 = x_2339.x_MainLightCookieTextureFormat;
    let x_2409 : f32 = x_2339.x_MainLightCookieTextureFormat;
    let x_2410 : vec4<f32> = vec4<f32>(x_2403, x_2405, x_2407, x_2409);
    let x_2417 : vec4<bool> = (vec4<f32>(x_2410.x, x_2410.y, x_2410.z, x_2410.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb22 = vec2<bool>(x_2417.x, x_2417.y);
    let x_2420 : bool = u_xlatb22.y;
    if (x_2420) {
      let x_2425 : f32 = u_xlat7.w;
      x_2421 = x_2425;
    } else {
      let x_2428 : f32 = u_xlat7.x;
      x_2421 = x_2428;
    }
    let x_2429 : f32 = x_2421;
    u_xlat43.x = x_2429;
    let x_2432 : bool = u_xlatb22.x;
    if (x_2432) {
      let x_2436 : vec4<f32> = u_xlat7;
      x_2433 = vec3<f32>(x_2436.x, x_2436.y, x_2436.z);
    } else {
      let x_2439 : vec2<f32> = u_xlat43;
      x_2433 = vec3<f32>(x_2439.x, x_2439.x, x_2439.x);
    }
    let x_2441 : vec3<f32> = x_2433;
    u_xlat27 = x_2441;
  } else {
    u_xlat27.x = 1.0f;
    u_xlat27.y = 1.0f;
    u_xlat27.z = 1.0f;
  }
  let x_2446 : vec3<f32> = u_xlat27;
  let x_2448 : vec4<f32> = x_146.x_MainLightColor;
  u_xlat27 = (x_2446 * vec3<f32>(x_2448.x, x_2448.y, x_2448.z));
  let x_2451 : vec4<f32> = u_xlat6;
  let x_2453 : vec3<f32> = u_xlat27;
  u_xlat27 = (vec3<f32>(x_2451.x, x_2451.x, x_2451.x) * x_2453);
  let x_2455 : vec3<f32> = u_xlat5;
  let x_2457 : vec3<f32> = u_xlat21;
  u_xlat22.x = dot(-(x_2455), x_2457);
  let x_2461 : f32 = u_xlat22.x;
  let x_2463 : f32 = u_xlat22.x;
  u_xlat22.x = (x_2461 + x_2463);
  let x_2466 : vec3<f32> = u_xlat21;
  let x_2467 : vec3<f32> = u_xlat22;
  let x_2471 : vec3<f32> = u_xlat5;
  let x_2473 : vec3<f32> = ((x_2466 * -(vec3<f32>(x_2467.x, x_2467.x, x_2467.x))) + -(x_2471));
  let x_2474 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2473.x, x_2473.y, x_2473.z, x_2474.w);
  let x_2476 : vec3<f32> = u_xlat21;
  let x_2477 : vec3<f32> = u_xlat5;
  u_xlat22.x = dot(x_2476, x_2477);
  let x_2481 : f32 = u_xlat22.x;
  u_xlat22.x = clamp(x_2481, 0.0f, 1.0f);
  let x_2485 : f32 = u_xlat22.x;
  u_xlat22.x = (-(x_2485) + 1.0f);
  let x_2490 : f32 = u_xlat22.x;
  let x_2492 : f32 = u_xlat22.x;
  u_xlat22.x = (x_2490 * x_2492);
  let x_2496 : f32 = u_xlat22.z;
  u_xlat22.y = ((-(x_2496) * 0.699999988f) + 1.700000048f);
  let x_2503 : vec3<f32> = u_xlat22;
  let x_2505 : vec3<f32> = u_xlat22;
  let x_2507 : vec2<f32> = (vec2<f32>(x_2503.x, x_2503.y) * vec2<f32>(x_2505.x, x_2505.z));
  let x_2508 : vec3<f32> = u_xlat22;
  u_xlat22 = vec3<f32>(x_2507.x, x_2507.y, x_2508.z);
  let x_2511 : f32 = u_xlat22.y;
  u_xlat43.x = (x_2511 * 6.0f);
  let x_2523 : vec4<f32> = u_xlat7;
  let x_2526 : f32 = u_xlat43.x;
  let x_2527 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2523.x, x_2523.y, x_2523.z), x_2526);
  u_xlat7 = x_2527;
  let x_2529 : f32 = u_xlat7.w;
  u_xlat43.x = (x_2529 + -1.0f);
  let x_2533 : f32 = x_59.unity_SpecCube0_HDR.w;
  let x_2535 : f32 = u_xlat43.x;
  u_xlat43.x = ((x_2533 * x_2535) + 1.0f);
  let x_2540 : f32 = u_xlat43.x;
  u_xlat43.x = max(x_2540, 0.0f);
  let x_2544 : f32 = u_xlat43.x;
  u_xlat43.x = log2(x_2544);
  let x_2548 : f32 = u_xlat43.x;
  let x_2550 : f32 = x_59.unity_SpecCube0_HDR.y;
  u_xlat43.x = (x_2548 * x_2550);
  let x_2554 : f32 = u_xlat43.x;
  u_xlat43.x = exp2(x_2554);
  let x_2558 : f32 = u_xlat43.x;
  let x_2560 : f32 = x_59.unity_SpecCube0_HDR.x;
  u_xlat43.x = (x_2558 * x_2560);
  let x_2563 : vec4<f32> = u_xlat7;
  let x_2565 : vec2<f32> = u_xlat43;
  let x_2567 : vec3<f32> = (vec3<f32>(x_2563.x, x_2563.y, x_2563.z) * vec3<f32>(x_2565.x, x_2565.x, x_2565.x));
  let x_2568 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2567.x, x_2567.y, x_2567.z, x_2568.w);
  let x_2570 : f32 = u_xlat65;
  let x_2572 : f32 = u_xlat65;
  u_xlat43 = ((vec2<f32>(x_2570, x_2570) * vec2<f32>(x_2572, x_2572)) + vec2<f32>(-1.0f, 1.0f));
  let x_2578 : f32 = u_xlat43.y;
  u_xlat64 = (1.0f / x_2578);
  let x_2580 : vec3<f32> = u_xlat2;
  let x_2582 : vec4<f32> = u_xlat0;
  let x_2584 : vec3<f32> = (-(x_2580) + vec3<f32>(x_2582.x, x_2582.x, x_2582.x));
  let x_2585 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2584.x, x_2584.y, x_2584.z, x_2585.w);
  let x_2587 : vec3<f32> = u_xlat22;
  let x_2589 : vec4<f32> = u_xlat8;
  let x_2592 : vec3<f32> = u_xlat2;
  let x_2593 : vec3<f32> = ((vec3<f32>(x_2587.x, x_2587.x, x_2587.x) * vec3<f32>(x_2589.x, x_2589.y, x_2589.z)) + x_2592);
  let x_2594 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2593.x, x_2593.y, x_2593.z, x_2594.w);
  let x_2596 : f32 = u_xlat64;
  let x_2598 : vec4<f32> = u_xlat8;
  let x_2600 : vec3<f32> = (vec3<f32>(x_2596, x_2596, x_2596) * vec3<f32>(x_2598.x, x_2598.y, x_2598.z));
  let x_2601 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2600.x, x_2600.y, x_2600.z, x_2601.w);
  let x_2603 : vec4<f32> = u_xlat7;
  let x_2605 : vec4<f32> = u_xlat8;
  let x_2607 : vec3<f32> = (vec3<f32>(x_2603.x, x_2603.y, x_2603.z) * vec3<f32>(x_2605.x, x_2605.y, x_2605.z));
  let x_2608 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2607.x, x_2607.y, x_2607.z, x_2608.w);
  let x_2610 : vec4<f32> = u_xlat4;
  let x_2612 : vec3<f32> = u_xlat3;
  let x_2614 : vec4<f32> = u_xlat7;
  let x_2616 : vec3<f32> = ((vec3<f32>(x_2610.x, x_2610.y, x_2610.z) * x_2612) + vec3<f32>(x_2614.x, x_2614.y, x_2614.z));
  let x_2617 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2616.x, x_2616.y, x_2616.z, x_2617.w);
  let x_2620 : f32 = u_xlat1.x;
  let x_2622 : f32 = x_59.unity_LightData.z;
  u_xlat0.x = (x_2620 * x_2622);
  let x_2625 : vec3<f32> = u_xlat21;
  let x_2627 : vec4<f32> = x_146.x_MainLightPosition;
  u_xlat1.x = dot(x_2625, vec3<f32>(x_2627.x, x_2627.y, x_2627.z));
  let x_2632 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_2632, 0.0f, 1.0f);
  let x_2636 : f32 = u_xlat0.x;
  let x_2638 : f32 = u_xlat1.x;
  u_xlat0.x = (x_2636 * x_2638);
  let x_2641 : vec4<f32> = u_xlat0;
  let x_2643 : vec3<f32> = u_xlat27;
  let x_2644 : vec3<f32> = (vec3<f32>(x_2641.x, x_2641.x, x_2641.x) * x_2643);
  let x_2645 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2644.x, x_2644.y, x_2645.z, x_2644.z);
  let x_2647 : vec3<f32> = u_xlat5;
  let x_2649 : vec4<f32> = x_146.x_MainLightPosition;
  u_xlat27 = (x_2647 + vec3<f32>(x_2649.x, x_2649.y, x_2649.z));
  let x_2652 : vec3<f32> = u_xlat27;
  let x_2653 : vec3<f32> = u_xlat27;
  u_xlat0.x = dot(x_2652, x_2653);
  let x_2657 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2657, 1.17549435e-37f);
  let x_2661 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_2661);
  let x_2664 : vec4<f32> = u_xlat0;
  let x_2666 : vec3<f32> = u_xlat27;
  u_xlat27 = (vec3<f32>(x_2664.x, x_2664.x, x_2664.x) * x_2666);
  let x_2668 : vec3<f32> = u_xlat21;
  let x_2669 : vec3<f32> = u_xlat27;
  u_xlat0.x = dot(x_2668, x_2669);
  let x_2673 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_2673, 0.0f, 1.0f);
  let x_2677 : vec4<f32> = x_146.x_MainLightPosition;
  let x_2679 : vec3<f32> = u_xlat27;
  u_xlat65 = dot(vec3<f32>(x_2677.x, x_2677.y, x_2677.z), x_2679);
  let x_2681 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2681, 0.0f, 1.0f);
  let x_2684 : f32 = u_xlat0.x;
  let x_2686 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2684 * x_2686);
  let x_2690 : f32 = u_xlat0.x;
  let x_2692 : f32 = u_xlat43.x;
  u_xlat0.x = ((x_2690 * x_2692) + 1.000010014f);
  let x_2697 : f32 = u_xlat65;
  let x_2698 : f32 = u_xlat65;
  u_xlat65 = (x_2697 * x_2698);
  let x_2701 : f32 = u_xlat0.x;
  let x_2703 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2701 * x_2703);
  let x_2706 : f32 = u_xlat65;
  u_xlat65 = max(x_2706, 0.100000001f);
  let x_2709 : f32 = u_xlat0.x;
  let x_2710 : f32 = u_xlat65;
  u_xlat0.x = (x_2709 * x_2710);
  let x_2713 : f32 = u_xlat67;
  let x_2715 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2713 * x_2715);
  let x_2718 : f32 = u_xlat66;
  let x_2720 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2718 / x_2720);
  let x_2723 : vec3<f32> = u_xlat2;
  let x_2724 : vec4<f32> = u_xlat0;
  let x_2727 : vec3<f32> = u_xlat3;
  u_xlat27 = ((x_2723 * vec3<f32>(x_2724.x, x_2724.x, x_2724.x)) + x_2727);
  let x_2729 : vec4<f32> = u_xlat1;
  let x_2731 : vec3<f32> = u_xlat27;
  let x_2732 : vec3<f32> = (vec3<f32>(x_2729.x, x_2729.y, x_2729.w) * x_2731);
  let x_2733 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2732.x, x_2732.y, x_2733.z, x_2732.z);
  let x_2736 : f32 = x_146.x_AdditionalLightsCount.x;
  let x_2738 : f32 = x_59.unity_LightData.y;
  u_xlat0.x = min(x_2736, x_2738);
  let x_2743 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_2743));
  let x_2747 : f32 = x_2339.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2749 : f32 = x_2339.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2751 : f32 = x_2339.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2753 : f32 = x_2339.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2754 : vec4<f32> = vec4<f32>(x_2747, x_2749, x_2751, x_2753);
  let x_2760 : vec4<bool> = (vec4<f32>(x_2754.x, x_2754.y, x_2754.z, x_2754.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb27 = vec2<bool>(x_2760.x, x_2760.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2771 : u32 = u_xlatu_loop_1;
    let x_2772 : u32 = u_xlatu0;
    if ((x_2771 < x_2772)) {
    } else {
      break;
    }
    let x_2775 : u32 = u_xlatu_loop_1;
    u_xlatu69 = (x_2775 >> 2u);
    let x_2778 : u32 = u_xlatu_loop_1;
    u_xlati70 = bitcast<i32>((x_2778 & 3u));
    let x_2781 : u32 = u_xlatu69;
    let x_2784 : vec4<f32> = x_59.unity_LightIndices[bitcast<i32>(x_2781)];
    let x_2794 : i32 = u_xlati70;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2799 : vec4<u32> = indexable[x_2794];
    u_xlat69 = dot(x_2784, bitcast<vec4<f32>>(x_2799));
    let x_2802 : f32 = u_xlat69;
    u_xlatu69 = bitcast<u32>(i32(x_2802));
    let x_2805 : vec3<f32> = vs_INTERP0;
    let x_2817 : u32 = u_xlatu69;
    let x_2820 : vec4<f32> = x_2816.x_AdditionalLightsPosition[bitcast<i32>(x_2817)];
    let x_2823 : u32 = u_xlatu69;
    let x_2826 : vec4<f32> = x_2816.x_AdditionalLightsPosition[bitcast<i32>(x_2823)];
    let x_2828 : vec3<f32> = ((-(x_2805) * vec3<f32>(x_2820.w, x_2820.w, x_2820.w)) + vec3<f32>(x_2826.x, x_2826.y, x_2826.z));
    let x_2829 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2828.x, x_2828.y, x_2828.z, x_2829.w);
    let x_2832 : vec4<f32> = u_xlat8;
    let x_2834 : vec4<f32> = u_xlat8;
    u_xlat70 = dot(vec3<f32>(x_2832.x, x_2832.y, x_2832.z), vec3<f32>(x_2834.x, x_2834.y, x_2834.z));
    let x_2837 : f32 = u_xlat70;
    u_xlat70 = max(x_2837, 6.10351562e-05f);
    let x_2840 : f32 = u_xlat70;
    u_xlat71 = inverseSqrt(x_2840);
    let x_2842 : f32 = u_xlat71;
    let x_2844 : vec4<f32> = u_xlat8;
    let x_2846 : vec3<f32> = (vec3<f32>(x_2842, x_2842, x_2842) * vec3<f32>(x_2844.x, x_2844.y, x_2844.z));
    let x_2847 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2846.x, x_2846.y, x_2846.z, x_2847.w);
    let x_2850 : f32 = u_xlat70;
    u_xlat72 = (1.0f / x_2850);
    let x_2852 : f32 = u_xlat70;
    let x_2853 : u32 = u_xlatu69;
    let x_2856 : f32 = x_2816.x_AdditionalLightsAttenuation[bitcast<i32>(x_2853)].x;
    u_xlat70 = (x_2852 * x_2856);
    let x_2858 : f32 = u_xlat70;
    let x_2860 : f32 = u_xlat70;
    u_xlat70 = ((-(x_2858) * x_2860) + 1.0f);
    let x_2863 : f32 = u_xlat70;
    u_xlat70 = max(x_2863, 0.0f);
    let x_2865 : f32 = u_xlat70;
    let x_2866 : f32 = u_xlat70;
    u_xlat70 = (x_2865 * x_2866);
    let x_2868 : f32 = u_xlat70;
    let x_2869 : f32 = u_xlat72;
    u_xlat70 = (x_2868 * x_2869);
    let x_2871 : u32 = u_xlatu69;
    let x_2874 : vec4<f32> = x_2816.x_AdditionalLightsSpotDir[bitcast<i32>(x_2871)];
    let x_2876 : vec4<f32> = u_xlat9;
    u_xlat72 = dot(vec3<f32>(x_2874.x, x_2874.y, x_2874.z), vec3<f32>(x_2876.x, x_2876.y, x_2876.z));
    let x_2879 : f32 = u_xlat72;
    let x_2880 : u32 = u_xlatu69;
    let x_2883 : f32 = x_2816.x_AdditionalLightsAttenuation[bitcast<i32>(x_2880)].z;
    let x_2885 : u32 = u_xlatu69;
    let x_2888 : f32 = x_2816.x_AdditionalLightsAttenuation[bitcast<i32>(x_2885)].w;
    u_xlat72 = ((x_2879 * x_2883) + x_2888);
    let x_2890 : f32 = u_xlat72;
    u_xlat72 = clamp(x_2890, 0.0f, 1.0f);
    let x_2892 : f32 = u_xlat72;
    let x_2893 : f32 = u_xlat72;
    u_xlat72 = (x_2892 * x_2893);
    let x_2895 : f32 = u_xlat70;
    let x_2896 : f32 = u_xlat72;
    u_xlat70 = (x_2895 * x_2896);
    let x_2899 : u32 = u_xlatu69;
    u_xlatu72 = (x_2899 >> 5u);
    let x_2902 : u32 = u_xlatu69;
    u_xlati10 = (1i << bitcast<u32>((bitcast<i32>(x_2902) & 31i)));
    let x_2908 : i32 = u_xlati10;
    let x_2910 : u32 = u_xlatu72;
    let x_2913 : f32 = x_2339.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2910)].el;
    u_xlati72 = bitcast<i32>((bitcast<u32>(x_2908) & bitcast<u32>(x_2913)));
    let x_2917 : i32 = u_xlati72;
    if ((x_2917 != 0i)) {
      let x_2927 : u32 = u_xlatu69;
      let x_2930 : f32 = x_2926.x_AdditionalLightsLightTypes[bitcast<i32>(x_2927)].el;
      u_xlati72 = i32(x_2930);
      let x_2932 : i32 = u_xlati72;
      u_xlati10 = select(1i, 0i, (x_2932 != 0i));
      let x_2936 : u32 = u_xlatu69;
      u_xlati31 = (bitcast<i32>(x_2936) << bitcast<u32>(2i));
      let x_2939 : i32 = u_xlati10;
      if ((x_2939 != 0i)) {
        let x_2943 : vec3<f32> = vs_INTERP0;
        let x_2945 : i32 = u_xlati31;
        let x_2948 : i32 = u_xlati31;
        let x_2952 : vec4<f32> = x_2926.x_AdditionalLightsWorldToLights[((x_2945 + 1i) / 4i)][((x_2948 + 1i) % 4i)];
        let x_2954 : vec3<f32> = (vec3<f32>(x_2943.y, x_2943.y, x_2943.y) * vec3<f32>(x_2952.x, x_2952.y, x_2952.w));
        let x_2955 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2954.x, x_2955.y, x_2954.y, x_2954.z);
        let x_2957 : i32 = u_xlati31;
        let x_2959 : i32 = u_xlati31;
        let x_2962 : vec4<f32> = x_2926.x_AdditionalLightsWorldToLights[(x_2957 / 4i)][(x_2959 % 4i)];
        let x_2964 : vec3<f32> = vs_INTERP0;
        let x_2967 : vec4<f32> = u_xlat10;
        let x_2969 : vec3<f32> = ((vec3<f32>(x_2962.x, x_2962.y, x_2962.w) * vec3<f32>(x_2964.x, x_2964.x, x_2964.x)) + vec3<f32>(x_2967.x, x_2967.z, x_2967.w));
        let x_2970 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2969.x, x_2970.y, x_2969.y, x_2969.z);
        let x_2972 : i32 = u_xlati31;
        let x_2975 : i32 = u_xlati31;
        let x_2979 : vec4<f32> = x_2926.x_AdditionalLightsWorldToLights[((x_2972 + 2i) / 4i)][((x_2975 + 2i) % 4i)];
        let x_2981 : vec3<f32> = vs_INTERP0;
        let x_2984 : vec4<f32> = u_xlat10;
        let x_2986 : vec3<f32> = ((vec3<f32>(x_2979.x, x_2979.y, x_2979.w) * vec3<f32>(x_2981.z, x_2981.z, x_2981.z)) + vec3<f32>(x_2984.x, x_2984.z, x_2984.w));
        let x_2987 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2986.x, x_2987.y, x_2986.y, x_2986.z);
        let x_2989 : vec4<f32> = u_xlat10;
        let x_2991 : i32 = u_xlati31;
        let x_2994 : i32 = u_xlati31;
        let x_2998 : vec4<f32> = x_2926.x_AdditionalLightsWorldToLights[((x_2991 + 3i) / 4i)][((x_2994 + 3i) % 4i)];
        let x_3000 : vec3<f32> = (vec3<f32>(x_2989.x, x_2989.z, x_2989.w) + vec3<f32>(x_2998.x, x_2998.y, x_2998.w));
        let x_3001 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_3000.x, x_3001.y, x_3000.y, x_3000.z);
        let x_3003 : vec4<f32> = u_xlat10;
        let x_3005 : vec4<f32> = u_xlat10;
        let x_3007 : vec2<f32> = (vec2<f32>(x_3003.x, x_3003.z) / vec2<f32>(x_3005.w, x_3005.w));
        let x_3008 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_3007.x, x_3008.y, x_3007.y, x_3008.w);
        let x_3010 : vec4<f32> = u_xlat10;
        let x_3013 : vec2<f32> = ((vec2<f32>(x_3010.x, x_3010.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3014 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_3013.x, x_3014.y, x_3013.y, x_3014.w);
        let x_3016 : vec4<f32> = u_xlat10;
        let x_3020 : vec2<f32> = clamp(vec2<f32>(x_3016.x, x_3016.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3021 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_3020.x, x_3021.y, x_3020.y, x_3021.w);
        let x_3023 : u32 = u_xlatu69;
        let x_3026 : vec4<f32> = x_2926.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3023)];
        let x_3028 : vec4<f32> = u_xlat10;
        let x_3031 : u32 = u_xlatu69;
        let x_3034 : vec4<f32> = x_2926.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3031)];
        let x_3036 : vec2<f32> = ((vec2<f32>(x_3026.x, x_3026.y) * vec2<f32>(x_3028.x, x_3028.z)) + vec2<f32>(x_3034.z, x_3034.w));
        let x_3037 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_3036.x, x_3037.y, x_3036.y, x_3037.w);
      } else {
        let x_3041 : i32 = u_xlati72;
        u_xlatb72 = (x_3041 == 1i);
        let x_3043 : bool = u_xlatb72;
        u_xlati72 = select(0i, 1i, x_3043);
        let x_3045 : i32 = u_xlati72;
        if ((x_3045 != 0i)) {
          let x_3049 : vec3<f32> = vs_INTERP0;
          let x_3051 : i32 = u_xlati31;
          let x_3054 : i32 = u_xlati31;
          let x_3058 : vec4<f32> = x_2926.x_AdditionalLightsWorldToLights[((x_3051 + 1i) / 4i)][((x_3054 + 1i) % 4i)];
          let x_3060 : vec2<f32> = (vec2<f32>(x_3049.y, x_3049.y) * vec2<f32>(x_3058.x, x_3058.y));
          let x_3061 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3060.x, x_3060.y, x_3061.z, x_3061.w);
          let x_3063 : i32 = u_xlati31;
          let x_3065 : i32 = u_xlati31;
          let x_3068 : vec4<f32> = x_2926.x_AdditionalLightsWorldToLights[(x_3063 / 4i)][(x_3065 % 4i)];
          let x_3070 : vec3<f32> = vs_INTERP0;
          let x_3073 : vec4<f32> = u_xlat11;
          let x_3075 : vec2<f32> = ((vec2<f32>(x_3068.x, x_3068.y) * vec2<f32>(x_3070.x, x_3070.x)) + vec2<f32>(x_3073.x, x_3073.y));
          let x_3076 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3075.x, x_3075.y, x_3076.z, x_3076.w);
          let x_3078 : i32 = u_xlati31;
          let x_3081 : i32 = u_xlati31;
          let x_3085 : vec4<f32> = x_2926.x_AdditionalLightsWorldToLights[((x_3078 + 2i) / 4i)][((x_3081 + 2i) % 4i)];
          let x_3087 : vec3<f32> = vs_INTERP0;
          let x_3090 : vec4<f32> = u_xlat11;
          let x_3092 : vec2<f32> = ((vec2<f32>(x_3085.x, x_3085.y) * vec2<f32>(x_3087.z, x_3087.z)) + vec2<f32>(x_3090.x, x_3090.y));
          let x_3093 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3092.x, x_3092.y, x_3093.z, x_3093.w);
          let x_3095 : vec4<f32> = u_xlat11;
          let x_3097 : i32 = u_xlati31;
          let x_3100 : i32 = u_xlati31;
          let x_3104 : vec4<f32> = x_2926.x_AdditionalLightsWorldToLights[((x_3097 + 3i) / 4i)][((x_3100 + 3i) % 4i)];
          let x_3106 : vec2<f32> = (vec2<f32>(x_3095.x, x_3095.y) + vec2<f32>(x_3104.x, x_3104.y));
          let x_3107 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3106.x, x_3106.y, x_3107.z, x_3107.w);
          let x_3109 : vec4<f32> = u_xlat11;
          let x_3112 : vec2<f32> = ((vec2<f32>(x_3109.x, x_3109.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3113 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3112.x, x_3112.y, x_3113.z, x_3113.w);
          let x_3115 : vec4<f32> = u_xlat11;
          let x_3117 : vec2<f32> = fract(vec2<f32>(x_3115.x, x_3115.y));
          let x_3118 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3117.x, x_3117.y, x_3118.z, x_3118.w);
          let x_3120 : u32 = u_xlatu69;
          let x_3123 : vec4<f32> = x_2926.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3120)];
          let x_3125 : vec4<f32> = u_xlat11;
          let x_3128 : u32 = u_xlatu69;
          let x_3131 : vec4<f32> = x_2926.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3128)];
          let x_3133 : vec2<f32> = ((vec2<f32>(x_3123.x, x_3123.y) * vec2<f32>(x_3125.x, x_3125.y)) + vec2<f32>(x_3131.z, x_3131.w));
          let x_3134 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_3133.x, x_3134.y, x_3133.y, x_3134.w);
        } else {
          let x_3137 : vec3<f32> = vs_INTERP0;
          let x_3139 : i32 = u_xlati31;
          let x_3142 : i32 = u_xlati31;
          let x_3146 : vec4<f32> = x_2926.x_AdditionalLightsWorldToLights[((x_3139 + 1i) / 4i)][((x_3142 + 1i) % 4i)];
          u_xlat11 = (vec4<f32>(x_3137.y, x_3137.y, x_3137.y, x_3137.y) * x_3146);
          let x_3148 : i32 = u_xlati31;
          let x_3150 : i32 = u_xlati31;
          let x_3153 : vec4<f32> = x_2926.x_AdditionalLightsWorldToLights[(x_3148 / 4i)][(x_3150 % 4i)];
          let x_3154 : vec3<f32> = vs_INTERP0;
          let x_3157 : vec4<f32> = u_xlat11;
          u_xlat11 = ((x_3153 * vec4<f32>(x_3154.x, x_3154.x, x_3154.x, x_3154.x)) + x_3157);
          let x_3159 : i32 = u_xlati31;
          let x_3162 : i32 = u_xlati31;
          let x_3166 : vec4<f32> = x_2926.x_AdditionalLightsWorldToLights[((x_3159 + 2i) / 4i)][((x_3162 + 2i) % 4i)];
          let x_3167 : vec3<f32> = vs_INTERP0;
          let x_3170 : vec4<f32> = u_xlat11;
          u_xlat11 = ((x_3166 * vec4<f32>(x_3167.z, x_3167.z, x_3167.z, x_3167.z)) + x_3170);
          let x_3172 : vec4<f32> = u_xlat11;
          let x_3173 : i32 = u_xlati31;
          let x_3176 : i32 = u_xlati31;
          let x_3180 : vec4<f32> = x_2926.x_AdditionalLightsWorldToLights[((x_3173 + 3i) / 4i)][((x_3176 + 3i) % 4i)];
          u_xlat11 = (x_3172 + x_3180);
          let x_3182 : vec4<f32> = u_xlat11;
          let x_3184 : vec4<f32> = u_xlat11;
          let x_3186 : vec3<f32> = (vec3<f32>(x_3182.x, x_3182.y, x_3182.z) / vec3<f32>(x_3184.w, x_3184.w, x_3184.w));
          let x_3187 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3186.x, x_3186.y, x_3186.z, x_3187.w);
          let x_3189 : vec4<f32> = u_xlat11;
          let x_3191 : vec4<f32> = u_xlat11;
          u_xlat72 = dot(vec3<f32>(x_3189.x, x_3189.y, x_3189.z), vec3<f32>(x_3191.x, x_3191.y, x_3191.z));
          let x_3194 : f32 = u_xlat72;
          u_xlat72 = inverseSqrt(x_3194);
          let x_3196 : f32 = u_xlat72;
          let x_3198 : vec4<f32> = u_xlat11;
          let x_3200 : vec3<f32> = (vec3<f32>(x_3196, x_3196, x_3196) * vec3<f32>(x_3198.x, x_3198.y, x_3198.z));
          let x_3201 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3200.x, x_3200.y, x_3200.z, x_3201.w);
          let x_3203 : vec4<f32> = u_xlat11;
          u_xlat72 = dot(abs(vec3<f32>(x_3203.x, x_3203.y, x_3203.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3208 : f32 = u_xlat72;
          u_xlat72 = max(x_3208, 0.000001f);
          let x_3211 : f32 = u_xlat72;
          u_xlat72 = (1.0f / x_3211);
          let x_3213 : f32 = u_xlat72;
          let x_3215 : vec4<f32> = u_xlat11;
          let x_3217 : vec3<f32> = (vec3<f32>(x_3213, x_3213, x_3213) * vec3<f32>(x_3215.z, x_3215.x, x_3215.y));
          let x_3218 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3217.x, x_3217.y, x_3217.z, x_3218.w);
          let x_3221 : f32 = u_xlat12.x;
          u_xlat12.x = -(x_3221);
          let x_3225 : f32 = u_xlat12.x;
          u_xlat12.x = clamp(x_3225, 0.0f, 1.0f);
          let x_3231 : vec4<f32> = u_xlat12;
          let x_3234 : vec4<bool> = (vec4<f32>(x_3231.y, x_3231.y, x_3231.z, x_3231.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_3235 : vec2<bool> = vec2<bool>(x_3234.x, x_3234.z);
          let x_3236 : vec3<bool> = u_xlatb31;
          u_xlatb31 = vec3<bool>(x_3235.x, x_3236.y, x_3235.y);
          let x_3240 : bool = u_xlatb31.x;
          if (x_3240) {
            let x_3245 : f32 = u_xlat12.x;
            x_3241 = x_3245;
          } else {
            let x_3248 : f32 = u_xlat12.x;
            x_3241 = -(x_3248);
          }
          let x_3250 : f32 = x_3241;
          u_xlat31.x = x_3250;
          let x_3253 : bool = u_xlatb31.z;
          if (x_3253) {
            let x_3258 : f32 = u_xlat12.x;
            x_3254 = x_3258;
          } else {
            let x_3261 : f32 = u_xlat12.x;
            x_3254 = -(x_3261);
          }
          let x_3263 : f32 = x_3254;
          u_xlat31.z = x_3263;
          let x_3265 : vec4<f32> = u_xlat11;
          let x_3267 : f32 = u_xlat72;
          let x_3270 : vec3<f32> = u_xlat31;
          let x_3272 : vec2<f32> = ((vec2<f32>(x_3265.x, x_3265.y) * vec2<f32>(x_3267, x_3267)) + vec2<f32>(x_3270.x, x_3270.z));
          let x_3273 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_3272.x, x_3273.y, x_3272.y);
          let x_3275 : vec3<f32> = u_xlat31;
          let x_3278 : vec2<f32> = ((vec2<f32>(x_3275.x, x_3275.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3279 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_3278.x, x_3279.y, x_3278.y);
          let x_3281 : vec3<f32> = u_xlat31;
          let x_3285 : vec2<f32> = clamp(vec2<f32>(x_3281.x, x_3281.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3286 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_3285.x, x_3286.y, x_3285.y);
          let x_3288 : u32 = u_xlatu69;
          let x_3291 : vec4<f32> = x_2926.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3288)];
          let x_3293 : vec3<f32> = u_xlat31;
          let x_3296 : u32 = u_xlatu69;
          let x_3299 : vec4<f32> = x_2926.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3296)];
          let x_3301 : vec2<f32> = ((vec2<f32>(x_3291.x, x_3291.y) * vec2<f32>(x_3293.x, x_3293.z)) + vec2<f32>(x_3299.z, x_3299.w));
          let x_3302 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_3301.x, x_3302.y, x_3301.y, x_3302.w);
        }
      }
      let x_3309 : vec4<f32> = u_xlat10;
      let x_3312 : f32 = x_146.x_GlobalMipBias.x;
      let x_3313 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_3309.x, x_3309.z), x_3312);
      u_xlat10 = x_3313;
      let x_3315 : bool = u_xlatb27.y;
      if (x_3315) {
        let x_3320 : f32 = u_xlat10.w;
        x_3316 = x_3320;
      } else {
        let x_3323 : f32 = u_xlat10.x;
        x_3316 = x_3323;
      }
      let x_3324 : f32 = x_3316;
      u_xlat72 = x_3324;
      let x_3326 : bool = u_xlatb27.x;
      if (x_3326) {
        let x_3330 : vec4<f32> = u_xlat10;
        x_3327 = vec3<f32>(x_3330.x, x_3330.y, x_3330.z);
      } else {
        let x_3333 : f32 = u_xlat72;
        x_3327 = vec3<f32>(x_3333, x_3333, x_3333);
      }
      let x_3335 : vec3<f32> = x_3327;
      let x_3336 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_3335.x, x_3335.y, x_3335.z, x_3336.w);
    } else {
      u_xlat10.x = 1.0f;
      u_xlat10.y = 1.0f;
      u_xlat10.z = 1.0f;
    }
    let x_3342 : vec4<f32> = u_xlat10;
    let x_3344 : u32 = u_xlatu69;
    let x_3347 : vec4<f32> = x_2816.x_AdditionalLightsColor[bitcast<i32>(x_3344)];
    let x_3349 : vec3<f32> = (vec3<f32>(x_3342.x, x_3342.y, x_3342.z) * vec3<f32>(x_3347.x, x_3347.y, x_3347.z));
    let x_3350 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3349.x, x_3349.y, x_3349.z, x_3350.w);
    let x_3352 : vec4<f32> = u_xlat6;
    let x_3354 : vec4<f32> = u_xlat10;
    let x_3356 : vec3<f32> = (vec3<f32>(x_3352.x, x_3352.x, x_3352.x) * vec3<f32>(x_3354.x, x_3354.y, x_3354.z));
    let x_3357 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3356.x, x_3356.y, x_3356.z, x_3357.w);
    let x_3359 : vec3<f32> = u_xlat21;
    let x_3360 : vec4<f32> = u_xlat9;
    u_xlat69 = dot(x_3359, vec3<f32>(x_3360.x, x_3360.y, x_3360.z));
    let x_3363 : f32 = u_xlat69;
    u_xlat69 = clamp(x_3363, 0.0f, 1.0f);
    let x_3365 : f32 = u_xlat69;
    let x_3366 : f32 = u_xlat70;
    u_xlat69 = (x_3365 * x_3366);
    let x_3368 : f32 = u_xlat69;
    let x_3370 : vec4<f32> = u_xlat10;
    let x_3372 : vec3<f32> = (vec3<f32>(x_3368, x_3368, x_3368) * vec3<f32>(x_3370.x, x_3370.y, x_3370.z));
    let x_3373 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3372.x, x_3372.y, x_3372.z, x_3373.w);
    let x_3375 : vec4<f32> = u_xlat8;
    let x_3377 : f32 = u_xlat71;
    let x_3380 : vec3<f32> = u_xlat5;
    let x_3381 : vec3<f32> = ((vec3<f32>(x_3375.x, x_3375.y, x_3375.z) * vec3<f32>(x_3377, x_3377, x_3377)) + x_3380);
    let x_3382 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3381.x, x_3381.y, x_3381.z, x_3382.w);
    let x_3384 : vec4<f32> = u_xlat8;
    let x_3386 : vec4<f32> = u_xlat8;
    u_xlat69 = dot(vec3<f32>(x_3384.x, x_3384.y, x_3384.z), vec3<f32>(x_3386.x, x_3386.y, x_3386.z));
    let x_3389 : f32 = u_xlat69;
    u_xlat69 = max(x_3389, 1.17549435e-37f);
    let x_3391 : f32 = u_xlat69;
    u_xlat69 = inverseSqrt(x_3391);
    let x_3393 : f32 = u_xlat69;
    let x_3395 : vec4<f32> = u_xlat8;
    let x_3397 : vec3<f32> = (vec3<f32>(x_3393, x_3393, x_3393) * vec3<f32>(x_3395.x, x_3395.y, x_3395.z));
    let x_3398 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3397.x, x_3397.y, x_3397.z, x_3398.w);
    let x_3400 : vec3<f32> = u_xlat21;
    let x_3401 : vec4<f32> = u_xlat8;
    u_xlat69 = dot(x_3400, vec3<f32>(x_3401.x, x_3401.y, x_3401.z));
    let x_3404 : f32 = u_xlat69;
    u_xlat69 = clamp(x_3404, 0.0f, 1.0f);
    let x_3406 : vec4<f32> = u_xlat9;
    let x_3408 : vec4<f32> = u_xlat8;
    u_xlat70 = dot(vec3<f32>(x_3406.x, x_3406.y, x_3406.z), vec3<f32>(x_3408.x, x_3408.y, x_3408.z));
    let x_3411 : f32 = u_xlat70;
    u_xlat70 = clamp(x_3411, 0.0f, 1.0f);
    let x_3413 : f32 = u_xlat69;
    let x_3414 : f32 = u_xlat69;
    u_xlat69 = (x_3413 * x_3414);
    let x_3416 : f32 = u_xlat69;
    let x_3418 : f32 = u_xlat43.x;
    u_xlat69 = ((x_3416 * x_3418) + 1.000010014f);
    let x_3421 : f32 = u_xlat70;
    let x_3422 : f32 = u_xlat70;
    u_xlat70 = (x_3421 * x_3422);
    let x_3424 : f32 = u_xlat69;
    let x_3425 : f32 = u_xlat69;
    u_xlat69 = (x_3424 * x_3425);
    let x_3427 : f32 = u_xlat70;
    u_xlat70 = max(x_3427, 0.100000001f);
    let x_3429 : f32 = u_xlat69;
    let x_3430 : f32 = u_xlat70;
    u_xlat69 = (x_3429 * x_3430);
    let x_3432 : f32 = u_xlat67;
    let x_3433 : f32 = u_xlat69;
    u_xlat69 = (x_3432 * x_3433);
    let x_3435 : f32 = u_xlat66;
    let x_3436 : f32 = u_xlat69;
    u_xlat69 = (x_3435 / x_3436);
    let x_3438 : vec3<f32> = u_xlat2;
    let x_3439 : f32 = u_xlat69;
    let x_3442 : vec3<f32> = u_xlat3;
    let x_3443 : vec3<f32> = ((x_3438 * vec3<f32>(x_3439, x_3439, x_3439)) + x_3442);
    let x_3444 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3443.x, x_3443.y, x_3443.z, x_3444.w);
    let x_3446 : vec4<f32> = u_xlat8;
    let x_3448 : vec4<f32> = u_xlat10;
    let x_3451 : vec4<f32> = u_xlat7;
    let x_3453 : vec3<f32> = ((vec3<f32>(x_3446.x, x_3446.y, x_3446.z) * vec3<f32>(x_3448.x, x_3448.y, x_3448.z)) + vec3<f32>(x_3451.x, x_3451.y, x_3451.z));
    let x_3454 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3453.x, x_3453.y, x_3453.z, x_3454.w);

    continuing {
      let x_3456 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3456 + bitcast<u32>(1i));
    }
  }
  let x_3458 : vec4<f32> = u_xlat4;
  let x_3460 : f32 = u_xlat68;
  let x_3463 : vec4<f32> = u_xlat1;
  let x_3465 : vec3<f32> = ((vec3<f32>(x_3458.x, x_3458.y, x_3458.z) * vec3<f32>(x_3460, x_3460, x_3460)) + vec3<f32>(x_3463.x, x_3463.y, x_3463.w));
  let x_3466 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3465.x, x_3465.y, x_3465.z, x_3466.w);
  let x_3470 : vec4<f32> = u_xlat7;
  let x_3472 : vec4<f32> = u_xlat0;
  let x_3474 : vec3<f32> = (vec3<f32>(x_3470.x, x_3470.y, x_3470.z) + vec3<f32>(x_3472.x, x_3472.y, x_3472.z));
  let x_3475 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3474.x, x_3474.y, x_3474.z, x_3475.w);
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

