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

@group(1) @binding(6) var<uniform> x_204 : UnityPerMaterial;

@group(0) @binding(8) var Texture2D_DE8BF47E : texture_2d<f32>;

@group(0) @binding(19) var samplerTexture2D_DE8BF47E : sampler;

@group(0) @binding(9) var Texture2D_C005B064 : texture_2d<f32>;

@group(0) @binding(20) var samplerTexture2D_C005B064 : sampler;

@group(0) @binding(6) var x_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1 : texture_2d<f32>;

@group(0) @binding(17) var sampler_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1 : sampler;

@group(1) @binding(3) var<uniform> x_667 : MainLightShadows;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(12) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP4 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_2346 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(11) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2828 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_2938 : AdditionalLightsCookies;

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
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat66 : f32;
  var u_xlat67 : f32;
  var u_xlat7 : vec4<f32>;
  var u_xlat28 : vec3<f32>;
  var u_xlat22 : vec2<f32>;
  var u_xlat25 : vec3<f32>;
  var u_xlatb1 : bool;
  var x_651 : vec3<f32>;
  var u_xlatb4 : vec4<bool>;
  var u_xlatu65 : u32;
  var u_xlati65 : i32;
  var u_xlat68 : f32;
  var u_xlat27 : f32;
  var u_xlatb48 : bool;
  var txVec0 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlat48 : vec2<f32>;
  var u_xlatb69 : bool;
  var u_xlat49 : vec2<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat51 : vec2<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat69 : f32;
  var txVec4 : vec3<f32>;
  var txVec5 : vec3<f32>;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat29 : vec3<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat17 : vec4<f32>;
  var u_xlat30 : vec2<f32>;
  var u_xlat57 : vec2<f32>;
  var u_xlat52 : vec2<f32>;
  var u_xlat18 : vec4<f32>;
  var u_xlat19 : vec4<f32>;
  var u_xlat20 : vec4<f32>;
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
  var u_xlatb25 : vec2<bool>;
  var u_xlatb46 : bool;
  var x_2295 : f32;
  var u_xlat46 : f32;
  var x_2428 : f32;
  var x_2439 : vec3<f32>;
  var u_xlatu0 : u32;
  var u_xlatb7 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu66 : u32;
  var u_xlati69 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat70 : f32;
  var u_xlatu70 : u32;
  var u_xlati71 : i32;
  var u_xlati70 : i32;
  var u_xlati72 : i32;
  var u_xlatb70 : bool;
  var u_xlat53 : vec2<f32>;
  var u_xlatb53 : vec2<bool>;
  var x_3231 : f32;
  var x_3244 : f32;
  var x_3296 : f32;
  var x_3307 : vec3<f32>;
  var u_xlat63 : f32;
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
  let x_188 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_187.x, x_187.y, x_188.z, x_188.w);
  let x_196 : vec4<f32> = u_xlat5;
  let x_199 : f32 = x_146.x_GlobalMipBias.x;
  let x_200 : vec4<f32> = textureSampleBias(Texture2D_D7D66558, samplerTexture2D_D7D66558, vec2<f32>(x_196.x, x_196.y), x_199);
  u_xlat6 = vec3<f32>(x_200.x, x_200.y, x_200.z);
  let x_207 : f32 = x_204.Vector1_8B35DE98;
  u_xlat65 = ((-(x_207) * 0.011111f) + 0.949999988f);
  let x_216 : f32 = x_204.Vector1_A492C01C;
  u_xlat66 = (x_216 + -10.0f);
  let x_219 : f32 = u_xlat66;
  let x_222 : f32 = vs_INTERP0.y;
  u_xlat66 = (-(x_219) + x_222);
  let x_224 : f32 = u_xlat66;
  u_xlat66 = (x_224 * 0.050000001f);
  let x_227 : f32 = u_xlat66;
  u_xlat66 = clamp(x_227, 0.0f, 1.0f);
  let x_230 : f32 = u_xlat66;
  u_xlat67 = ((x_230 * -2.0f) + 3.0f);
  let x_235 : f32 = u_xlat66;
  let x_236 : f32 = u_xlat66;
  u_xlat66 = (x_235 * x_236);
  let x_238 : f32 = u_xlat66;
  let x_239 : f32 = u_xlat67;
  u_xlat66 = (x_238 * x_239);
  let x_247 : vec4<f32> = vs_INTERP3;
  let x_250 : f32 = x_146.x_GlobalMipBias.x;
  let x_251 : vec4<f32> = textureSampleBias(Texture2D_DE8BF47E, samplerTexture2D_DE8BF47E, vec2<f32>(x_247.x, x_247.y), x_250);
  u_xlat7 = x_251;
  let x_253 : vec4<f32> = u_xlat7;
  u_xlat28 = ((vec3<f32>(x_253.w, x_253.y, x_253.z) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_260 : vec3<f32> = u_xlat3;
  let x_261 : vec3<f32> = u_xlat28;
  u_xlat3 = (x_260 * vec3<f32>(x_261.y, x_261.y, x_261.y));
  let x_264 : vec3<f32> = u_xlat28;
  let x_266 : vec3<f32> = u_xlat2;
  let x_268 : vec3<f32> = u_xlat3;
  u_xlat2 = ((vec3<f32>(x_264.x, x_264.x, x_264.x) * x_266) + x_268);
  let x_270 : vec3<f32> = u_xlat28;
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
  let x_300 : f32 = u_xlat66;
  let x_302 : f32 = u_xlat1.x;
  let x_304 : f32 = u_xlat65;
  u_xlat1.x = ((x_300 * x_302) + -(x_304));
  let x_309 : f32 = u_xlat1.x;
  u_xlat1.x = (x_309 * 10.0f);
  let x_314 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_314, 0.0f, 1.0f);
  let x_320 : f32 = u_xlat1.x;
  u_xlat22.x = ((x_320 * -2.0f) + 3.0f);
  let x_325 : f32 = u_xlat1.x;
  let x_327 : f32 = u_xlat1.x;
  u_xlat1.x = (x_325 * x_327);
  let x_331 : f32 = u_xlat1.x;
  let x_333 : f32 = u_xlat22.x;
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
  u_xlat25 = vec3<f32>(x_372.x, x_372.y, x_372.w);
  let x_375 : f32 = u_xlat25.x;
  let x_377 : f32 = u_xlat25.z;
  u_xlat25.x = (x_375 * x_377);
  let x_380 : vec3<f32> = u_xlat25;
  let x_385 : vec2<f32> = ((vec2<f32>(x_380.x, x_380.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_386 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_385.x, x_385.y, x_386.z, x_386.w);
  let x_388 : vec4<f32> = u_xlat5;
  let x_390 : vec4<f32> = u_xlat5;
  u_xlat22.x = dot(vec2<f32>(x_388.x, x_388.y), vec2<f32>(x_390.x, x_390.y));
  let x_395 : f32 = u_xlat22.x;
  u_xlat22.x = min(x_395, 1.0f);
  let x_399 : f32 = u_xlat22.x;
  u_xlat22.x = (-(x_399) + 1.0f);
  let x_404 : f32 = u_xlat22.x;
  u_xlat22.x = sqrt(x_404);
  let x_408 : f32 = u_xlat22.x;
  u_xlat5.z = max(x_408, 1.00000002e-16f);
  let x_415 : vec4<f32> = x_59.unity_ObjectToWorld[0i];
  let x_418 : vec4<f32> = x_59.unity_ObjectToWorld[0i];
  u_xlat22.x = dot(vec3<f32>(x_415.x, x_415.y, x_415.z), vec3<f32>(x_418.x, x_418.y, x_418.z));
  let x_423 : f32 = u_xlat22.x;
  u_xlat6.x = sqrt(x_423);
  let x_427 : vec4<f32> = x_59.unity_ObjectToWorld[1i];
  let x_430 : vec4<f32> = x_59.unity_ObjectToWorld[1i];
  u_xlat22.x = dot(vec3<f32>(x_427.x, x_427.y, x_427.z), vec3<f32>(x_430.x, x_430.y, x_430.z));
  let x_435 : f32 = u_xlat22.x;
  u_xlat6.y = sqrt(x_435);
  let x_440 : vec4<f32> = x_59.unity_ObjectToWorld[2i];
  let x_443 : vec4<f32> = x_59.unity_ObjectToWorld[2i];
  u_xlat22.x = dot(vec3<f32>(x_440.x, x_440.y, x_440.z), vec3<f32>(x_443.x, x_443.y, x_443.z));
  let x_448 : f32 = u_xlat22.x;
  u_xlat6.z = sqrt(x_448);
  let x_451 : vec3<f32> = u_xlat6;
  let x_452 : vec3<f32> = u_xlat6;
  u_xlat22.x = dot(x_451, x_452);
  let x_456 : f32 = u_xlat22.x;
  u_xlat22.x = sqrt(x_456);
  let x_460 : f32 = u_xlat22.x;
  let x_463 : f32 = x_204.Vector1_90E376AD;
  u_xlat22.x = (x_460 * x_463);
  let x_467 : f32 = u_xlat22.x;
  u_xlat22.x = (x_467 * 30.0f);
  let x_471 : vec2<f32> = u_xlat22;
  let x_473 : vec4<f32> = vs_INTERP3;
  u_xlat22 = (vec2<f32>(x_471.x, x_471.x) * vec2<f32>(x_473.x, x_473.y));
  let x_481 : vec2<f32> = u_xlat22;
  let x_483 : f32 = x_146.x_GlobalMipBias.x;
  let x_484 : vec4<f32> = textureSampleBias(x_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1, sampler_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1, x_481, x_483);
  u_xlat25 = vec3<f32>(x_484.x, x_484.y, x_484.w);
  let x_487 : f32 = u_xlat25.x;
  let x_489 : f32 = u_xlat25.z;
  u_xlat25.x = (x_487 * x_489);
  let x_492 : vec3<f32> = u_xlat25;
  u_xlat22 = ((vec2<f32>(x_492.x, x_492.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_496 : vec2<f32> = u_xlat22;
  let x_497 : vec2<f32> = u_xlat22;
  u_xlat65 = dot(x_496, x_497);
  let x_499 : f32 = u_xlat65;
  u_xlat65 = min(x_499, 1.0f);
  let x_501 : f32 = u_xlat65;
  u_xlat65 = (-(x_501) + 1.0f);
  let x_504 : f32 = u_xlat65;
  u_xlat65 = sqrt(x_504);
  let x_506 : f32 = u_xlat65;
  u_xlat65 = max(x_506, 1.00000002e-16f);
  let x_508 : vec2<f32> = u_xlat22;
  let x_509 : vec3<f32> = u_xlat28;
  let x_511 : vec2<f32> = (x_508 + vec2<f32>(x_509.x, x_509.y));
  let x_512 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_511.x, x_511.y, x_512.z);
  let x_514 : f32 = u_xlat65;
  let x_516 : f32 = u_xlat28.z;
  u_xlat6.z = (x_514 * x_516);
  let x_519 : vec3<f32> = u_xlat6;
  let x_520 : vec3<f32> = u_xlat6;
  u_xlat22.x = dot(x_519, x_520);
  let x_524 : f32 = u_xlat22.x;
  u_xlat22.x = max(x_524, 1.17549435e-37f);
  let x_528 : f32 = u_xlat22.x;
  u_xlat22.x = inverseSqrt(x_528);
  let x_531 : vec3<f32> = u_xlat6;
  let x_532 : vec2<f32> = u_xlat22;
  let x_535 : vec4<f32> = u_xlat5;
  u_xlat25 = ((x_531 * vec3<f32>(x_532.x, x_532.x, x_532.x)) + -(vec3<f32>(x_535.x, x_535.y, x_535.z)));
  let x_539 : vec4<f32> = u_xlat1;
  let x_541 : vec3<f32> = u_xlat25;
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
  u_xlat21 = ((vec3<f32>(x_584.y, x_584.y, x_584.y) * vec3<f32>(x_586.x, x_586.y, x_586.z)) + vec3<f32>(x_589.y, x_589.z, x_589.w));
  let x_592 : vec4<f32> = u_xlat4;
  let x_594 : vec3<f32> = vs_INTERP1;
  let x_596 : vec3<f32> = u_xlat21;
  u_xlat21 = ((vec3<f32>(x_592.w, x_592.w, x_592.w) * x_594) + x_596);
  let x_598 : vec3<f32> = u_xlat21;
  let x_599 : vec3<f32> = u_xlat21;
  u_xlat1.x = dot(x_598, x_599);
  let x_603 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_603);
  let x_606 : vec3<f32> = u_xlat21;
  let x_607 : vec4<f32> = u_xlat1;
  u_xlat21 = (x_606 * vec3<f32>(x_607.x, x_607.x, x_607.x));
  let x_613 : f32 = x_146.unity_OrthoParams.w;
  u_xlatb1 = (x_613 == 0.0f);
  let x_615 : vec3<f32> = vs_INTERP0;
  let x_619 : vec3<f32> = x_146.x_WorldSpaceCameraPos;
  let x_620 : vec3<f32> = (-(x_615) + x_619);
  let x_621 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_620.x, x_620.y, x_620.z, x_621.w);
  let x_623 : vec4<f32> = u_xlat4;
  let x_625 : vec4<f32> = u_xlat4;
  u_xlat22.x = dot(vec3<f32>(x_623.x, x_623.y, x_623.z), vec3<f32>(x_625.x, x_625.y, x_625.z));
  let x_630 : f32 = u_xlat22.x;
  u_xlat22.x = inverseSqrt(x_630);
  let x_633 : vec2<f32> = u_xlat22;
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
  u_xlat28 = (x_689 + -(vec3<f32>(x_691.x, x_691.y, x_691.z)));
  let x_695 : vec4<f32> = u_xlat4;
  let x_697 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_695.x, x_695.y, x_695.z), vec3<f32>(x_697.x, x_697.y, x_697.z));
  let x_701 : vec4<f32> = u_xlat5;
  let x_703 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_701.x, x_701.y, x_701.z), vec3<f32>(x_703.x, x_703.y, x_703.z));
  let x_707 : vec3<f32> = u_xlat6;
  let x_708 : vec3<f32> = u_xlat6;
  u_xlat4.z = dot(x_707, x_708);
  let x_711 : vec3<f32> = u_xlat28;
  let x_712 : vec3<f32> = u_xlat28;
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
  u_xlat65 = dot(x_764, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_767 : f32 = u_xlat65;
  u_xlat65 = (-(x_767) + 4.0f);
  let x_772 : f32 = u_xlat65;
  u_xlatu65 = u32(x_772);
  let x_776 : u32 = u_xlatu65;
  u_xlati65 = (bitcast<i32>(x_776) << bitcast<u32>(2i));
  let x_779 : vec3<f32> = vs_INTERP0;
  let x_781 : i32 = u_xlati65;
  let x_784 : i32 = u_xlati65;
  let x_788 : vec4<f32> = x_667.x_MainLightWorldToShadow[((x_781 + 1i) / 4i)][((x_784 + 1i) % 4i)];
  let x_790 : vec3<f32> = (vec3<f32>(x_779.y, x_779.y, x_779.y) * vec3<f32>(x_788.x, x_788.y, x_788.z));
  let x_791 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_790.x, x_790.y, x_790.z, x_791.w);
  let x_793 : i32 = u_xlati65;
  let x_795 : i32 = u_xlati65;
  let x_798 : vec4<f32> = x_667.x_MainLightWorldToShadow[(x_793 / 4i)][(x_795 % 4i)];
  let x_800 : vec3<f32> = vs_INTERP0;
  let x_803 : vec4<f32> = u_xlat4;
  let x_805 : vec3<f32> = ((vec3<f32>(x_798.x, x_798.y, x_798.z) * vec3<f32>(x_800.x, x_800.x, x_800.x)) + vec3<f32>(x_803.x, x_803.y, x_803.z));
  let x_806 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_805.x, x_805.y, x_805.z, x_806.w);
  let x_808 : i32 = u_xlati65;
  let x_811 : i32 = u_xlati65;
  let x_815 : vec4<f32> = x_667.x_MainLightWorldToShadow[((x_808 + 2i) / 4i)][((x_811 + 2i) % 4i)];
  let x_817 : vec3<f32> = vs_INTERP0;
  let x_820 : vec4<f32> = u_xlat4;
  let x_822 : vec3<f32> = ((vec3<f32>(x_815.x, x_815.y, x_815.z) * vec3<f32>(x_817.z, x_817.z, x_817.z)) + vec3<f32>(x_820.x, x_820.y, x_820.z));
  let x_823 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_822.x, x_822.y, x_822.z, x_823.w);
  let x_825 : vec4<f32> = u_xlat4;
  let x_827 : i32 = u_xlati65;
  let x_830 : i32 = u_xlati65;
  let x_834 : vec4<f32> = x_667.x_MainLightWorldToShadow[((x_827 + 3i) / 4i)][((x_830 + 3i) % 4i)];
  let x_836 : vec3<f32> = (vec3<f32>(x_825.x, x_825.y, x_825.z) + vec3<f32>(x_834.x, x_834.y, x_834.z));
  let x_837 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_836.x, x_836.y, x_836.z, x_837.w);
  let x_840 : f32 = vs_INTERP0.y;
  let x_842 : f32 = x_146.unity_MatrixV[1i].z;
  u_xlat65 = (x_840 * x_842);
  let x_845 : f32 = x_146.unity_MatrixV[0i].z;
  let x_847 : f32 = vs_INTERP0.x;
  let x_849 : f32 = u_xlat65;
  u_xlat65 = ((x_845 * x_847) + x_849);
  let x_852 : f32 = x_146.unity_MatrixV[2i].z;
  let x_854 : f32 = vs_INTERP0.z;
  let x_856 : f32 = u_xlat65;
  u_xlat65 = ((x_852 * x_854) + x_856);
  let x_858 : f32 = u_xlat65;
  let x_860 : f32 = x_146.unity_MatrixV[3i].z;
  u_xlat65 = (x_858 + x_860);
  let x_862 : f32 = u_xlat65;
  let x_866 : f32 = x_146.x_ProjectionParams.y;
  u_xlat65 = (-(x_862) + -(x_866));
  let x_869 : f32 = u_xlat65;
  u_xlat65 = max(x_869, 0.0f);
  let x_871 : f32 = u_xlat65;
  let x_874 : f32 = x_146.unity_FogParams.x;
  u_xlat65 = (x_871 * x_874);
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
  u_xlat66 = ((x_907 * x_910) + x_913);
  let x_915 : f32 = u_xlat66;
  u_xlat6.z = (-(x_915) + 1.0f);
  let x_919 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_919 * vec3<f32>(0.863999963f, 0.863999963f, 0.863999963f));
  let x_923 : vec4<f32> = u_xlat1;
  let x_925 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_923.w, x_923.w, x_923.w) * x_925) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_930 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_930 * vec3<f32>(0.100000001f, 0.100000001f, 0.100000001f)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_937 : f32 = u_xlat0.x;
  u_xlat64 = (-(x_937) + 1.0f);
  let x_940 : f32 = u_xlat64;
  let x_941 : f32 = u_xlat64;
  u_xlat66 = (x_940 * x_941);
  let x_943 : f32 = u_xlat66;
  u_xlat66 = max(x_943, 0.0078125f);
  let x_946 : f32 = u_xlat66;
  let x_947 : f32 = u_xlat66;
  u_xlat67 = (x_946 * x_947);
  let x_950 : f32 = u_xlat0.x;
  u_xlat0.x = (x_950 + 0.136000037f);
  let x_955 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_955, 1.0f);
  let x_959 : f32 = u_xlat66;
  u_xlat68 = ((x_959 * 4.0f) + 2.0f);
  let x_967 : vec3<f32> = u_xlat6;
  let x_970 : f32 = x_146.x_GlobalMipBias.x;
  let x_971 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_967.x, x_967.z), x_970);
  u_xlat6.x = x_971.x;
  let x_976 : f32 = u_xlat6.x;
  u_xlat27 = (x_976 + -1.0f);
  let x_979 : f32 = x_146.x_AmbientOcclusionParam.w;
  let x_980 : f32 = u_xlat27;
  u_xlat27 = ((x_979 * x_980) + 1.0f);
  let x_984 : f32 = u_xlat7.x;
  let x_986 : f32 = u_xlat6.x;
  u_xlat6.x = min(x_984, x_986);
  let x_991 : f32 = x_667.x_MainLightShadowParams.y;
  u_xlatb48 = (0.0f < x_991);
  let x_993 : bool = u_xlatb48;
  if (x_993) {
    let x_997 : f32 = x_667.x_MainLightShadowParams.y;
    u_xlatb48 = (x_997 == 1.0f);
    let x_999 : bool = u_xlatb48;
    if (x_999) {
      let x_1002 : vec4<f32> = u_xlat4;
      let x_1006 : vec4<f32> = x_667.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_1002.x, x_1002.y, x_1002.x, x_1002.y) + x_1006);
      let x_1009 : vec4<f32> = u_xlat7;
      let x_1010 : vec2<f32> = vec2<f32>(x_1009.x, x_1009.y);
      let x_1012 : f32 = u_xlat4.z;
      txVec0 = vec3<f32>(x_1010.x, x_1010.y, x_1012);
      let x_1025 : vec3<f32> = txVec0;
      let x_1027 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1025.xy, x_1025.z);
      u_xlat8.x = x_1027;
      let x_1030 : vec4<f32> = u_xlat7;
      let x_1031 : vec2<f32> = vec2<f32>(x_1030.z, x_1030.w);
      let x_1033 : f32 = u_xlat4.z;
      txVec1 = vec3<f32>(x_1031.x, x_1031.y, x_1033);
      let x_1040 : vec3<f32> = txVec1;
      let x_1042 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1040.xy, x_1040.z);
      u_xlat8.y = x_1042;
      let x_1044 : vec4<f32> = u_xlat4;
      let x_1048 : vec4<f32> = x_667.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_1044.x, x_1044.y, x_1044.x, x_1044.y) + x_1048);
      let x_1051 : vec4<f32> = u_xlat7;
      let x_1052 : vec2<f32> = vec2<f32>(x_1051.x, x_1051.y);
      let x_1054 : f32 = u_xlat4.z;
      txVec2 = vec3<f32>(x_1052.x, x_1052.y, x_1054);
      let x_1061 : vec3<f32> = txVec2;
      let x_1063 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1061.xy, x_1061.z);
      u_xlat8.z = x_1063;
      let x_1066 : vec4<f32> = u_xlat7;
      let x_1067 : vec2<f32> = vec2<f32>(x_1066.z, x_1066.w);
      let x_1069 : f32 = u_xlat4.z;
      txVec3 = vec3<f32>(x_1067.x, x_1067.y, x_1069);
      let x_1076 : vec3<f32> = txVec3;
      let x_1078 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1076.xy, x_1076.z);
      u_xlat8.w = x_1078;
      let x_1081 : vec4<f32> = u_xlat8;
      u_xlat48.x = dot(x_1081, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1089 : f32 = x_667.x_MainLightShadowParams.y;
      u_xlatb69 = (x_1089 == 2.0f);
      let x_1091 : bool = u_xlatb69;
      if (x_1091) {
        let x_1094 : vec4<f32> = u_xlat4;
        let x_1097 : vec4<f32> = x_667.x_MainLightShadowmapSize;
        let x_1102 : vec2<f32> = ((vec2<f32>(x_1094.x, x_1094.y) * vec2<f32>(x_1097.z, x_1097.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1103 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1102.x, x_1102.y, x_1103.z, x_1103.w);
        let x_1105 : vec4<f32> = u_xlat7;
        let x_1107 : vec2<f32> = floor(vec2<f32>(x_1105.x, x_1105.y));
        let x_1108 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1107.x, x_1107.y, x_1108.z, x_1108.w);
        let x_1111 : vec4<f32> = u_xlat4;
        let x_1114 : vec4<f32> = x_667.x_MainLightShadowmapSize;
        let x_1117 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_1111.x, x_1111.y) * vec2<f32>(x_1114.z, x_1114.w)) + -(vec2<f32>(x_1117.x, x_1117.y)));
        let x_1121 : vec2<f32> = u_xlat49;
        u_xlat8 = (vec4<f32>(x_1121.x, x_1121.x, x_1121.y, x_1121.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1126 : vec4<f32> = u_xlat8;
        let x_1128 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1126.x, x_1126.x, x_1126.z, x_1126.z) * vec4<f32>(x_1128.x, x_1128.x, x_1128.z, x_1128.z));
        let x_1131 : vec4<f32> = u_xlat9;
        let x_1135 : vec2<f32> = (vec2<f32>(x_1131.y, x_1131.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_1136 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1135.x, x_1136.y, x_1135.y, x_1136.w);
        let x_1138 : vec4<f32> = u_xlat9;
        let x_1141 : vec2<f32> = u_xlat49;
        let x_1143 : vec2<f32> = ((vec2<f32>(x_1138.x, x_1138.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1141));
        let x_1144 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1143.x, x_1143.y, x_1144.z, x_1144.w);
        let x_1147 : vec2<f32> = u_xlat49;
        u_xlat51 = (-(x_1147) + vec2<f32>(1.0f, 1.0f));
        let x_1151 : vec2<f32> = u_xlat49;
        let x_1153 : vec2<f32> = min(x_1151, vec2<f32>(0.0f, 0.0f));
        let x_1154 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1153.x, x_1153.y, x_1154.z, x_1154.w);
        let x_1156 : vec4<f32> = u_xlat10;
        let x_1159 : vec4<f32> = u_xlat10;
        let x_1162 : vec2<f32> = u_xlat51;
        let x_1163 : vec2<f32> = ((-(vec2<f32>(x_1156.x, x_1156.y)) * vec2<f32>(x_1159.x, x_1159.y)) + x_1162);
        let x_1164 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1163.x, x_1163.y, x_1164.z, x_1164.w);
        let x_1166 : vec2<f32> = u_xlat49;
        u_xlat49 = max(x_1166, vec2<f32>(0.0f, 0.0f));
        let x_1168 : vec2<f32> = u_xlat49;
        let x_1170 : vec2<f32> = u_xlat49;
        let x_1172 : vec4<f32> = u_xlat8;
        u_xlat49 = ((-(x_1168) * x_1170) + vec2<f32>(x_1172.y, x_1172.w));
        let x_1175 : vec4<f32> = u_xlat10;
        let x_1177 : vec2<f32> = (vec2<f32>(x_1175.x, x_1175.y) + vec2<f32>(1.0f, 1.0f));
        let x_1178 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1177.x, x_1177.y, x_1178.z, x_1178.w);
        let x_1180 : vec2<f32> = u_xlat49;
        u_xlat49 = (x_1180 + vec2<f32>(1.0f, 1.0f));
        let x_1183 : vec4<f32> = u_xlat9;
        let x_1187 : vec2<f32> = (vec2<f32>(x_1183.x, x_1183.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1188 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1187.x, x_1187.y, x_1188.z, x_1188.w);
        let x_1190 : vec2<f32> = u_xlat51;
        let x_1191 : vec2<f32> = (x_1190 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1192 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1191.x, x_1191.y, x_1192.z, x_1192.w);
        let x_1194 : vec4<f32> = u_xlat10;
        let x_1196 : vec2<f32> = (vec2<f32>(x_1194.x, x_1194.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1197 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1196.x, x_1196.y, x_1197.z, x_1197.w);
        let x_1200 : vec2<f32> = u_xlat49;
        let x_1201 : vec2<f32> = (x_1200 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1202 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1201.x, x_1201.y, x_1202.z, x_1202.w);
        let x_1204 : vec4<f32> = u_xlat8;
        u_xlat49 = (vec2<f32>(x_1204.y, x_1204.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1208 : f32 = u_xlat10.x;
        u_xlat11.z = x_1208;
        let x_1211 : f32 = u_xlat49.x;
        u_xlat11.w = x_1211;
        let x_1214 : f32 = u_xlat12.x;
        u_xlat9.z = x_1214;
        let x_1217 : f32 = u_xlat8.x;
        u_xlat9.w = x_1217;
        let x_1220 : vec4<f32> = u_xlat9;
        let x_1222 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_1220.z, x_1220.w, x_1220.x, x_1220.z) + vec4<f32>(x_1222.z, x_1222.w, x_1222.x, x_1222.z));
        let x_1226 : f32 = u_xlat11.y;
        u_xlat10.z = x_1226;
        let x_1229 : f32 = u_xlat49.y;
        u_xlat10.w = x_1229;
        let x_1232 : f32 = u_xlat9.y;
        u_xlat12.z = x_1232;
        let x_1235 : f32 = u_xlat8.z;
        u_xlat12.w = x_1235;
        let x_1237 : vec4<f32> = u_xlat10;
        let x_1239 : vec4<f32> = u_xlat12;
        let x_1241 : vec3<f32> = (vec3<f32>(x_1237.z, x_1237.y, x_1237.w) + vec3<f32>(x_1239.z, x_1239.y, x_1239.w));
        let x_1242 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1241.x, x_1241.y, x_1241.z, x_1242.w);
        let x_1244 : vec4<f32> = u_xlat9;
        let x_1246 : vec4<f32> = u_xlat13;
        let x_1248 : vec3<f32> = (vec3<f32>(x_1244.x, x_1244.z, x_1244.w) / vec3<f32>(x_1246.z, x_1246.w, x_1246.y));
        let x_1249 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1248.x, x_1248.y, x_1248.z, x_1249.w);
        let x_1251 : vec4<f32> = u_xlat9;
        let x_1256 : vec3<f32> = (vec3<f32>(x_1251.x, x_1251.y, x_1251.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1257 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1256.x, x_1256.y, x_1256.z, x_1257.w);
        let x_1259 : vec4<f32> = u_xlat12;
        let x_1261 : vec4<f32> = u_xlat8;
        let x_1263 : vec3<f32> = (vec3<f32>(x_1259.z, x_1259.y, x_1259.w) / vec3<f32>(x_1261.x, x_1261.y, x_1261.z));
        let x_1264 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1263.x, x_1263.y, x_1263.z, x_1264.w);
        let x_1266 : vec4<f32> = u_xlat10;
        let x_1268 : vec3<f32> = (vec3<f32>(x_1266.x, x_1266.y, x_1266.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1269 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1268.x, x_1268.y, x_1268.z, x_1269.w);
        let x_1271 : vec4<f32> = u_xlat9;
        let x_1274 : vec4<f32> = x_667.x_MainLightShadowmapSize;
        let x_1276 : vec3<f32> = (vec3<f32>(x_1271.y, x_1271.x, x_1271.z) * vec3<f32>(x_1274.x, x_1274.x, x_1274.x));
        let x_1277 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1276.x, x_1276.y, x_1276.z, x_1277.w);
        let x_1279 : vec4<f32> = u_xlat10;
        let x_1282 : vec4<f32> = x_667.x_MainLightShadowmapSize;
        let x_1284 : vec3<f32> = (vec3<f32>(x_1279.x, x_1279.y, x_1279.z) * vec3<f32>(x_1282.y, x_1282.y, x_1282.y));
        let x_1285 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1284.x, x_1284.y, x_1284.z, x_1285.w);
        let x_1288 : f32 = u_xlat10.x;
        u_xlat9.w = x_1288;
        let x_1290 : vec4<f32> = u_xlat7;
        let x_1293 : vec4<f32> = x_667.x_MainLightShadowmapSize;
        let x_1296 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1290.x, x_1290.y, x_1290.x, x_1290.y) * vec4<f32>(x_1293.x, x_1293.y, x_1293.x, x_1293.y)) + vec4<f32>(x_1296.y, x_1296.w, x_1296.x, x_1296.w));
        let x_1299 : vec4<f32> = u_xlat7;
        let x_1302 : vec4<f32> = x_667.x_MainLightShadowmapSize;
        let x_1305 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_1299.x, x_1299.y) * vec2<f32>(x_1302.x, x_1302.y)) + vec2<f32>(x_1305.z, x_1305.w));
        let x_1309 : f32 = u_xlat9.y;
        u_xlat10.w = x_1309;
        let x_1311 : vec4<f32> = u_xlat10;
        let x_1312 : vec2<f32> = vec2<f32>(x_1311.y, x_1311.z);
        let x_1313 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1313.x, x_1312.x, x_1313.z, x_1312.y);
        let x_1315 : vec4<f32> = u_xlat7;
        let x_1318 : vec4<f32> = x_667.x_MainLightShadowmapSize;
        let x_1321 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1315.x, x_1315.y, x_1315.x, x_1315.y) * vec4<f32>(x_1318.x, x_1318.y, x_1318.x, x_1318.y)) + vec4<f32>(x_1321.x, x_1321.y, x_1321.z, x_1321.y));
        let x_1324 : vec4<f32> = u_xlat7;
        let x_1327 : vec4<f32> = x_667.x_MainLightShadowmapSize;
        let x_1330 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1324.x, x_1324.y, x_1324.x, x_1324.y) * vec4<f32>(x_1327.x, x_1327.y, x_1327.x, x_1327.y)) + vec4<f32>(x_1330.w, x_1330.y, x_1330.w, x_1330.z));
        let x_1333 : vec4<f32> = u_xlat7;
        let x_1336 : vec4<f32> = x_667.x_MainLightShadowmapSize;
        let x_1339 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1333.x, x_1333.y, x_1333.x, x_1333.y) * vec4<f32>(x_1336.x, x_1336.y, x_1336.x, x_1336.y)) + vec4<f32>(x_1339.x, x_1339.w, x_1339.z, x_1339.w));
        let x_1343 : vec4<f32> = u_xlat8;
        let x_1345 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_1343.x, x_1343.x, x_1343.x, x_1343.y) * vec4<f32>(x_1345.z, x_1345.w, x_1345.y, x_1345.z));
        let x_1349 : vec4<f32> = u_xlat8;
        let x_1351 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_1349.y, x_1349.y, x_1349.z, x_1349.z) * x_1351);
        let x_1355 : f32 = u_xlat8.z;
        let x_1357 : f32 = u_xlat13.y;
        u_xlat69 = (x_1355 * x_1357);
        let x_1360 : vec4<f32> = u_xlat11;
        let x_1361 : vec2<f32> = vec2<f32>(x_1360.x, x_1360.y);
        let x_1363 : f32 = u_xlat4.z;
        txVec4 = vec3<f32>(x_1361.x, x_1361.y, x_1363);
        let x_1370 : vec3<f32> = txVec4;
        let x_1372 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1370.xy, x_1370.z);
        u_xlat7.x = x_1372;
        let x_1375 : vec4<f32> = u_xlat11;
        let x_1376 : vec2<f32> = vec2<f32>(x_1375.z, x_1375.w);
        let x_1378 : f32 = u_xlat4.z;
        txVec5 = vec3<f32>(x_1376.x, x_1376.y, x_1378);
        let x_1385 : vec3<f32> = txVec5;
        let x_1387 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1385.xy, x_1385.z);
        u_xlat28.x = x_1387;
        let x_1390 : f32 = u_xlat28.x;
        let x_1392 : f32 = u_xlat14.y;
        u_xlat28.x = (x_1390 * x_1392);
        let x_1396 : f32 = u_xlat14.x;
        let x_1398 : f32 = u_xlat7.x;
        let x_1401 : f32 = u_xlat28.x;
        u_xlat7.x = ((x_1396 * x_1398) + x_1401);
        let x_1405 : vec2<f32> = u_xlat49;
        let x_1407 : f32 = u_xlat4.z;
        txVec6 = vec3<f32>(x_1405.x, x_1405.y, x_1407);
        let x_1414 : vec3<f32> = txVec6;
        let x_1416 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1414.xy, x_1414.z);
        u_xlat28.x = x_1416;
        let x_1419 : f32 = u_xlat14.z;
        let x_1421 : f32 = u_xlat28.x;
        let x_1424 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1419 * x_1421) + x_1424);
        let x_1428 : vec4<f32> = u_xlat10;
        let x_1429 : vec2<f32> = vec2<f32>(x_1428.x, x_1428.y);
        let x_1431 : f32 = u_xlat4.z;
        txVec7 = vec3<f32>(x_1429.x, x_1429.y, x_1431);
        let x_1438 : vec3<f32> = txVec7;
        let x_1440 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1438.xy, x_1438.z);
        u_xlat28.x = x_1440;
        let x_1443 : f32 = u_xlat14.w;
        let x_1445 : f32 = u_xlat28.x;
        let x_1448 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1443 * x_1445) + x_1448);
        let x_1452 : vec4<f32> = u_xlat12;
        let x_1453 : vec2<f32> = vec2<f32>(x_1452.x, x_1452.y);
        let x_1455 : f32 = u_xlat4.z;
        txVec8 = vec3<f32>(x_1453.x, x_1453.y, x_1455);
        let x_1462 : vec3<f32> = txVec8;
        let x_1464 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1462.xy, x_1462.z);
        u_xlat28.x = x_1464;
        let x_1467 : f32 = u_xlat15.x;
        let x_1469 : f32 = u_xlat28.x;
        let x_1472 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1467 * x_1469) + x_1472);
        let x_1476 : vec4<f32> = u_xlat12;
        let x_1477 : vec2<f32> = vec2<f32>(x_1476.z, x_1476.w);
        let x_1479 : f32 = u_xlat4.z;
        txVec9 = vec3<f32>(x_1477.x, x_1477.y, x_1479);
        let x_1486 : vec3<f32> = txVec9;
        let x_1488 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1486.xy, x_1486.z);
        u_xlat28.x = x_1488;
        let x_1491 : f32 = u_xlat15.y;
        let x_1493 : f32 = u_xlat28.x;
        let x_1496 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1491 * x_1493) + x_1496);
        let x_1500 : vec4<f32> = u_xlat10;
        let x_1501 : vec2<f32> = vec2<f32>(x_1500.z, x_1500.w);
        let x_1503 : f32 = u_xlat4.z;
        txVec10 = vec3<f32>(x_1501.x, x_1501.y, x_1503);
        let x_1510 : vec3<f32> = txVec10;
        let x_1512 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1510.xy, x_1510.z);
        u_xlat28.x = x_1512;
        let x_1515 : f32 = u_xlat15.z;
        let x_1517 : f32 = u_xlat28.x;
        let x_1520 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1515 * x_1517) + x_1520);
        let x_1524 : vec4<f32> = u_xlat9;
        let x_1525 : vec2<f32> = vec2<f32>(x_1524.x, x_1524.y);
        let x_1527 : f32 = u_xlat4.z;
        txVec11 = vec3<f32>(x_1525.x, x_1525.y, x_1527);
        let x_1534 : vec3<f32> = txVec11;
        let x_1536 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1534.xy, x_1534.z);
        u_xlat28.x = x_1536;
        let x_1539 : f32 = u_xlat15.w;
        let x_1541 : f32 = u_xlat28.x;
        let x_1544 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1539 * x_1541) + x_1544);
        let x_1548 : vec4<f32> = u_xlat9;
        let x_1549 : vec2<f32> = vec2<f32>(x_1548.z, x_1548.w);
        let x_1551 : f32 = u_xlat4.z;
        txVec12 = vec3<f32>(x_1549.x, x_1549.y, x_1551);
        let x_1558 : vec3<f32> = txVec12;
        let x_1560 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1558.xy, x_1558.z);
        u_xlat28.x = x_1560;
        let x_1562 : f32 = u_xlat69;
        let x_1564 : f32 = u_xlat28.x;
        let x_1567 : f32 = u_xlat7.x;
        u_xlat48.x = ((x_1562 * x_1564) + x_1567);
      } else {
        let x_1571 : vec4<f32> = u_xlat4;
        let x_1574 : vec4<f32> = x_667.x_MainLightShadowmapSize;
        let x_1577 : vec2<f32> = ((vec2<f32>(x_1571.x, x_1571.y) * vec2<f32>(x_1574.z, x_1574.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1578 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1577.x, x_1577.y, x_1578.z, x_1578.w);
        let x_1580 : vec4<f32> = u_xlat7;
        let x_1582 : vec2<f32> = floor(vec2<f32>(x_1580.x, x_1580.y));
        let x_1583 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1582.x, x_1582.y, x_1583.z, x_1583.w);
        let x_1585 : vec4<f32> = u_xlat4;
        let x_1588 : vec4<f32> = x_667.x_MainLightShadowmapSize;
        let x_1591 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_1585.x, x_1585.y) * vec2<f32>(x_1588.z, x_1588.w)) + -(vec2<f32>(x_1591.x, x_1591.y)));
        let x_1595 : vec2<f32> = u_xlat49;
        u_xlat8 = (vec4<f32>(x_1595.x, x_1595.x, x_1595.y, x_1595.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1598 : vec4<f32> = u_xlat8;
        let x_1600 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1598.x, x_1598.x, x_1598.z, x_1598.z) * vec4<f32>(x_1600.x, x_1600.x, x_1600.z, x_1600.z));
        let x_1603 : vec4<f32> = u_xlat9;
        let x_1607 : vec2<f32> = (vec2<f32>(x_1603.y, x_1603.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1608 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1608.x, x_1607.x, x_1608.z, x_1607.y);
        let x_1610 : vec4<f32> = u_xlat9;
        let x_1613 : vec2<f32> = u_xlat49;
        let x_1615 : vec2<f32> = ((vec2<f32>(x_1610.x, x_1610.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1613));
        let x_1616 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1615.x, x_1616.y, x_1615.y, x_1616.w);
        let x_1618 : vec2<f32> = u_xlat49;
        let x_1620 : vec2<f32> = (-(x_1618) + vec2<f32>(1.0f, 1.0f));
        let x_1621 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1620.x, x_1620.y, x_1621.z, x_1621.w);
        let x_1623 : vec2<f32> = u_xlat49;
        u_xlat51 = min(x_1623, vec2<f32>(0.0f, 0.0f));
        let x_1625 : vec2<f32> = u_xlat51;
        let x_1627 : vec2<f32> = u_xlat51;
        let x_1629 : vec4<f32> = u_xlat9;
        let x_1631 : vec2<f32> = ((-(x_1625) * x_1627) + vec2<f32>(x_1629.x, x_1629.y));
        let x_1632 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1631.x, x_1631.y, x_1632.z, x_1632.w);
        let x_1634 : vec2<f32> = u_xlat49;
        u_xlat51 = max(x_1634, vec2<f32>(0.0f, 0.0f));
        let x_1637 : vec2<f32> = u_xlat51;
        let x_1639 : vec2<f32> = u_xlat51;
        let x_1641 : vec4<f32> = u_xlat8;
        let x_1643 : vec2<f32> = ((-(x_1637) * x_1639) + vec2<f32>(x_1641.y, x_1641.w));
        let x_1644 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1643.x, x_1644.y, x_1643.y);
        let x_1646 : vec4<f32> = u_xlat9;
        let x_1648 : vec2<f32> = (vec2<f32>(x_1646.x, x_1646.y) + vec2<f32>(2.0f, 2.0f));
        let x_1649 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1648.x, x_1648.y, x_1649.z, x_1649.w);
        let x_1651 : vec3<f32> = u_xlat29;
        let x_1653 : vec2<f32> = (vec2<f32>(x_1651.x, x_1651.z) + vec2<f32>(2.0f, 2.0f));
        let x_1654 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1654.x, x_1653.x, x_1654.z, x_1653.y);
        let x_1657 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1657 * 0.081632003f);
        let x_1661 : vec4<f32> = u_xlat8;
        let x_1664 : vec3<f32> = (vec3<f32>(x_1661.z, x_1661.x, x_1661.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1665 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1664.x, x_1664.y, x_1664.z, x_1665.w);
        let x_1667 : vec4<f32> = u_xlat9;
        let x_1670 : vec2<f32> = (vec2<f32>(x_1667.x, x_1667.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1671 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1670.x, x_1670.y, x_1671.z, x_1671.w);
        let x_1674 : f32 = u_xlat12.y;
        u_xlat11.x = x_1674;
        let x_1676 : vec2<f32> = u_xlat49;
        let x_1683 : vec2<f32> = ((vec2<f32>(x_1676.x, x_1676.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1684 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1684.x, x_1683.x, x_1684.z, x_1683.y);
        let x_1686 : vec2<f32> = u_xlat49;
        let x_1690 : vec2<f32> = ((vec2<f32>(x_1686.x, x_1686.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1691 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1690.x, x_1691.y, x_1690.y, x_1691.w);
        let x_1694 : f32 = u_xlat8.x;
        u_xlat9.y = x_1694;
        let x_1697 : f32 = u_xlat10.y;
        u_xlat9.w = x_1697;
        let x_1699 : vec4<f32> = u_xlat9;
        let x_1700 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1699 + x_1700);
        let x_1702 : vec2<f32> = u_xlat49;
        let x_1705 : vec2<f32> = ((vec2<f32>(x_1702.y, x_1702.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1706 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1706.x, x_1705.x, x_1706.z, x_1705.y);
        let x_1708 : vec2<f32> = u_xlat49;
        let x_1711 : vec2<f32> = ((vec2<f32>(x_1708.y, x_1708.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1712 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1711.x, x_1712.y, x_1711.y, x_1712.w);
        let x_1715 : f32 = u_xlat8.y;
        u_xlat10.y = x_1715;
        let x_1717 : vec4<f32> = u_xlat10;
        let x_1718 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1717 + x_1718);
        let x_1720 : vec4<f32> = u_xlat9;
        let x_1721 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1720 / x_1721);
        let x_1723 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1723 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1729 : vec4<f32> = u_xlat10;
        let x_1730 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1729 / x_1730);
        let x_1732 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1732 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1734 : vec4<f32> = u_xlat9;
        let x_1737 : vec4<f32> = x_667.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1734.w, x_1734.x, x_1734.y, x_1734.z) * vec4<f32>(x_1737.x, x_1737.x, x_1737.x, x_1737.x));
        let x_1740 : vec4<f32> = u_xlat10;
        let x_1743 : vec4<f32> = x_667.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1740.x, x_1740.w, x_1740.y, x_1740.z) * vec4<f32>(x_1743.y, x_1743.y, x_1743.y, x_1743.y));
        let x_1746 : vec4<f32> = u_xlat9;
        let x_1747 : vec3<f32> = vec3<f32>(x_1746.y, x_1746.z, x_1746.w);
        let x_1748 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1747.x, x_1748.y, x_1747.y, x_1747.z);
        let x_1751 : f32 = u_xlat10.x;
        u_xlat12.y = x_1751;
        let x_1753 : vec4<f32> = u_xlat7;
        let x_1756 : vec4<f32> = x_667.x_MainLightShadowmapSize;
        let x_1759 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1753.x, x_1753.y, x_1753.x, x_1753.y) * vec4<f32>(x_1756.x, x_1756.y, x_1756.x, x_1756.y)) + vec4<f32>(x_1759.x, x_1759.y, x_1759.z, x_1759.y));
        let x_1762 : vec4<f32> = u_xlat7;
        let x_1765 : vec4<f32> = x_667.x_MainLightShadowmapSize;
        let x_1768 : vec4<f32> = u_xlat12;
        u_xlat49 = ((vec2<f32>(x_1762.x, x_1762.y) * vec2<f32>(x_1765.x, x_1765.y)) + vec2<f32>(x_1768.w, x_1768.y));
        let x_1772 : f32 = u_xlat12.y;
        u_xlat9.y = x_1772;
        let x_1775 : f32 = u_xlat10.z;
        u_xlat12.y = x_1775;
        let x_1777 : vec4<f32> = u_xlat7;
        let x_1780 : vec4<f32> = x_667.x_MainLightShadowmapSize;
        let x_1783 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1777.x, x_1777.y, x_1777.x, x_1777.y) * vec4<f32>(x_1780.x, x_1780.y, x_1780.x, x_1780.y)) + vec4<f32>(x_1783.x, x_1783.y, x_1783.z, x_1783.y));
        let x_1786 : vec4<f32> = u_xlat7;
        let x_1789 : vec4<f32> = x_667.x_MainLightShadowmapSize;
        let x_1792 : vec4<f32> = u_xlat12;
        let x_1794 : vec2<f32> = ((vec2<f32>(x_1786.x, x_1786.y) * vec2<f32>(x_1789.x, x_1789.y)) + vec2<f32>(x_1792.w, x_1792.y));
        let x_1795 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1794.x, x_1794.y, x_1795.z, x_1795.w);
        let x_1798 : f32 = u_xlat12.y;
        u_xlat9.z = x_1798;
        let x_1801 : vec4<f32> = u_xlat7;
        let x_1804 : vec4<f32> = x_667.x_MainLightShadowmapSize;
        let x_1807 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1801.x, x_1801.y, x_1801.x, x_1801.y) * vec4<f32>(x_1804.x, x_1804.y, x_1804.x, x_1804.y)) + vec4<f32>(x_1807.x, x_1807.y, x_1807.x, x_1807.z));
        let x_1811 : f32 = u_xlat10.w;
        u_xlat12.y = x_1811;
        let x_1814 : vec4<f32> = u_xlat7;
        let x_1817 : vec4<f32> = x_667.x_MainLightShadowmapSize;
        let x_1820 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1814.x, x_1814.y, x_1814.x, x_1814.y) * vec4<f32>(x_1817.x, x_1817.y, x_1817.x, x_1817.y)) + vec4<f32>(x_1820.x, x_1820.y, x_1820.z, x_1820.y));
        let x_1824 : vec4<f32> = u_xlat7;
        let x_1827 : vec4<f32> = x_667.x_MainLightShadowmapSize;
        let x_1830 : vec4<f32> = u_xlat12;
        u_xlat30 = ((vec2<f32>(x_1824.x, x_1824.y) * vec2<f32>(x_1827.x, x_1827.y)) + vec2<f32>(x_1830.w, x_1830.y));
        let x_1834 : f32 = u_xlat12.y;
        u_xlat9.w = x_1834;
        let x_1837 : vec4<f32> = u_xlat7;
        let x_1840 : vec4<f32> = x_667.x_MainLightShadowmapSize;
        let x_1843 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_1837.x, x_1837.y) * vec2<f32>(x_1840.x, x_1840.y)) + vec2<f32>(x_1843.x, x_1843.w));
        let x_1846 : vec4<f32> = u_xlat12;
        let x_1847 : vec3<f32> = vec3<f32>(x_1846.x, x_1846.z, x_1846.w);
        let x_1848 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1847.x, x_1848.y, x_1847.y, x_1847.z);
        let x_1850 : vec4<f32> = u_xlat7;
        let x_1853 : vec4<f32> = x_667.x_MainLightShadowmapSize;
        let x_1856 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1850.x, x_1850.y, x_1850.x, x_1850.y) * vec4<f32>(x_1853.x, x_1853.y, x_1853.x, x_1853.y)) + vec4<f32>(x_1856.x, x_1856.y, x_1856.z, x_1856.y));
        let x_1860 : vec4<f32> = u_xlat7;
        let x_1863 : vec4<f32> = x_667.x_MainLightShadowmapSize;
        let x_1866 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1860.x, x_1860.y) * vec2<f32>(x_1863.x, x_1863.y)) + vec2<f32>(x_1866.w, x_1866.y));
        let x_1870 : f32 = u_xlat9.x;
        u_xlat10.x = x_1870;
        let x_1872 : vec4<f32> = u_xlat7;
        let x_1875 : vec4<f32> = x_667.x_MainLightShadowmapSize;
        let x_1878 : vec4<f32> = u_xlat10;
        let x_1880 : vec2<f32> = ((vec2<f32>(x_1872.x, x_1872.y) * vec2<f32>(x_1875.x, x_1875.y)) + vec2<f32>(x_1878.x, x_1878.y));
        let x_1881 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1880.x, x_1880.y, x_1881.z, x_1881.w);
        let x_1884 : vec4<f32> = u_xlat8;
        let x_1886 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1884.x, x_1884.x, x_1884.x, x_1884.x) * x_1886);
        let x_1889 : vec4<f32> = u_xlat8;
        let x_1891 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1889.y, x_1889.y, x_1889.y, x_1889.y) * x_1891);
        let x_1894 : vec4<f32> = u_xlat8;
        let x_1896 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1894.z, x_1894.z, x_1894.z, x_1894.z) * x_1896);
        let x_1898 : vec4<f32> = u_xlat8;
        let x_1900 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1898.w, x_1898.w, x_1898.w, x_1898.w) * x_1900);
        let x_1903 : vec4<f32> = u_xlat13;
        let x_1904 : vec2<f32> = vec2<f32>(x_1903.x, x_1903.y);
        let x_1906 : f32 = u_xlat4.z;
        txVec13 = vec3<f32>(x_1904.x, x_1904.y, x_1906);
        let x_1913 : vec3<f32> = txVec13;
        let x_1915 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1913.xy, x_1913.z);
        u_xlat69 = x_1915;
        let x_1917 : vec4<f32> = u_xlat13;
        let x_1918 : vec2<f32> = vec2<f32>(x_1917.z, x_1917.w);
        let x_1920 : f32 = u_xlat4.z;
        txVec14 = vec3<f32>(x_1918.x, x_1918.y, x_1920);
        let x_1927 : vec3<f32> = txVec14;
        let x_1929 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1927.xy, x_1927.z);
        u_xlat9.x = x_1929;
        let x_1932 : f32 = u_xlat9.x;
        let x_1934 : f32 = u_xlat18.y;
        u_xlat9.x = (x_1932 * x_1934);
        let x_1938 : f32 = u_xlat18.x;
        let x_1939 : f32 = u_xlat69;
        let x_1942 : f32 = u_xlat9.x;
        u_xlat69 = ((x_1938 * x_1939) + x_1942);
        let x_1945 : vec2<f32> = u_xlat49;
        let x_1947 : f32 = u_xlat4.z;
        txVec15 = vec3<f32>(x_1945.x, x_1945.y, x_1947);
        let x_1954 : vec3<f32> = txVec15;
        let x_1956 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1954.xy, x_1954.z);
        u_xlat49.x = x_1956;
        let x_1959 : f32 = u_xlat18.z;
        let x_1961 : f32 = u_xlat49.x;
        let x_1963 : f32 = u_xlat69;
        u_xlat69 = ((x_1959 * x_1961) + x_1963);
        let x_1966 : vec4<f32> = u_xlat16;
        let x_1967 : vec2<f32> = vec2<f32>(x_1966.x, x_1966.y);
        let x_1969 : f32 = u_xlat4.z;
        txVec16 = vec3<f32>(x_1967.x, x_1967.y, x_1969);
        let x_1976 : vec3<f32> = txVec16;
        let x_1978 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1976.xy, x_1976.z);
        u_xlat49.x = x_1978;
        let x_1981 : f32 = u_xlat18.w;
        let x_1983 : f32 = u_xlat49.x;
        let x_1985 : f32 = u_xlat69;
        u_xlat69 = ((x_1981 * x_1983) + x_1985);
        let x_1988 : vec4<f32> = u_xlat14;
        let x_1989 : vec2<f32> = vec2<f32>(x_1988.x, x_1988.y);
        let x_1991 : f32 = u_xlat4.z;
        txVec17 = vec3<f32>(x_1989.x, x_1989.y, x_1991);
        let x_1998 : vec3<f32> = txVec17;
        let x_2000 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1998.xy, x_1998.z);
        u_xlat49.x = x_2000;
        let x_2003 : f32 = u_xlat19.x;
        let x_2005 : f32 = u_xlat49.x;
        let x_2007 : f32 = u_xlat69;
        u_xlat69 = ((x_2003 * x_2005) + x_2007);
        let x_2010 : vec4<f32> = u_xlat14;
        let x_2011 : vec2<f32> = vec2<f32>(x_2010.z, x_2010.w);
        let x_2013 : f32 = u_xlat4.z;
        txVec18 = vec3<f32>(x_2011.x, x_2011.y, x_2013);
        let x_2020 : vec3<f32> = txVec18;
        let x_2022 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2020.xy, x_2020.z);
        u_xlat49.x = x_2022;
        let x_2025 : f32 = u_xlat19.y;
        let x_2027 : f32 = u_xlat49.x;
        let x_2029 : f32 = u_xlat69;
        u_xlat69 = ((x_2025 * x_2027) + x_2029);
        let x_2032 : vec4<f32> = u_xlat15;
        let x_2033 : vec2<f32> = vec2<f32>(x_2032.x, x_2032.y);
        let x_2035 : f32 = u_xlat4.z;
        txVec19 = vec3<f32>(x_2033.x, x_2033.y, x_2035);
        let x_2042 : vec3<f32> = txVec19;
        let x_2044 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2042.xy, x_2042.z);
        u_xlat49.x = x_2044;
        let x_2047 : f32 = u_xlat19.z;
        let x_2049 : f32 = u_xlat49.x;
        let x_2051 : f32 = u_xlat69;
        u_xlat69 = ((x_2047 * x_2049) + x_2051);
        let x_2054 : vec4<f32> = u_xlat16;
        let x_2055 : vec2<f32> = vec2<f32>(x_2054.z, x_2054.w);
        let x_2057 : f32 = u_xlat4.z;
        txVec20 = vec3<f32>(x_2055.x, x_2055.y, x_2057);
        let x_2064 : vec3<f32> = txVec20;
        let x_2066 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2064.xy, x_2064.z);
        u_xlat49.x = x_2066;
        let x_2069 : f32 = u_xlat19.w;
        let x_2071 : f32 = u_xlat49.x;
        let x_2073 : f32 = u_xlat69;
        u_xlat69 = ((x_2069 * x_2071) + x_2073);
        let x_2076 : vec4<f32> = u_xlat17;
        let x_2077 : vec2<f32> = vec2<f32>(x_2076.x, x_2076.y);
        let x_2079 : f32 = u_xlat4.z;
        txVec21 = vec3<f32>(x_2077.x, x_2077.y, x_2079);
        let x_2086 : vec3<f32> = txVec21;
        let x_2088 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2086.xy, x_2086.z);
        u_xlat49.x = x_2088;
        let x_2091 : f32 = u_xlat20.x;
        let x_2093 : f32 = u_xlat49.x;
        let x_2095 : f32 = u_xlat69;
        u_xlat69 = ((x_2091 * x_2093) + x_2095);
        let x_2098 : vec4<f32> = u_xlat17;
        let x_2099 : vec2<f32> = vec2<f32>(x_2098.z, x_2098.w);
        let x_2101 : f32 = u_xlat4.z;
        txVec22 = vec3<f32>(x_2099.x, x_2099.y, x_2101);
        let x_2108 : vec3<f32> = txVec22;
        let x_2110 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2108.xy, x_2108.z);
        u_xlat49.x = x_2110;
        let x_2113 : f32 = u_xlat20.y;
        let x_2115 : f32 = u_xlat49.x;
        let x_2117 : f32 = u_xlat69;
        u_xlat69 = ((x_2113 * x_2115) + x_2117);
        let x_2120 : vec2<f32> = u_xlat30;
        let x_2122 : f32 = u_xlat4.z;
        txVec23 = vec3<f32>(x_2120.x, x_2120.y, x_2122);
        let x_2129 : vec3<f32> = txVec23;
        let x_2131 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2129.xy, x_2129.z);
        u_xlat49.x = x_2131;
        let x_2134 : f32 = u_xlat20.z;
        let x_2136 : f32 = u_xlat49.x;
        let x_2138 : f32 = u_xlat69;
        u_xlat69 = ((x_2134 * x_2136) + x_2138);
        let x_2141 : vec2<f32> = u_xlat57;
        let x_2143 : f32 = u_xlat4.z;
        txVec24 = vec3<f32>(x_2141.x, x_2141.y, x_2143);
        let x_2150 : vec3<f32> = txVec24;
        let x_2152 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2150.xy, x_2150.z);
        u_xlat49.x = x_2152;
        let x_2155 : f32 = u_xlat20.w;
        let x_2157 : f32 = u_xlat49.x;
        let x_2159 : f32 = u_xlat69;
        u_xlat69 = ((x_2155 * x_2157) + x_2159);
        let x_2162 : vec4<f32> = u_xlat12;
        let x_2163 : vec2<f32> = vec2<f32>(x_2162.x, x_2162.y);
        let x_2165 : f32 = u_xlat4.z;
        txVec25 = vec3<f32>(x_2163.x, x_2163.y, x_2165);
        let x_2172 : vec3<f32> = txVec25;
        let x_2174 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2172.xy, x_2172.z);
        u_xlat49.x = x_2174;
        let x_2177 : f32 = u_xlat8.x;
        let x_2179 : f32 = u_xlat49.x;
        let x_2181 : f32 = u_xlat69;
        u_xlat69 = ((x_2177 * x_2179) + x_2181);
        let x_2184 : vec4<f32> = u_xlat12;
        let x_2185 : vec2<f32> = vec2<f32>(x_2184.z, x_2184.w);
        let x_2187 : f32 = u_xlat4.z;
        txVec26 = vec3<f32>(x_2185.x, x_2185.y, x_2187);
        let x_2194 : vec3<f32> = txVec26;
        let x_2196 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2194.xy, x_2194.z);
        u_xlat49.x = x_2196;
        let x_2199 : f32 = u_xlat8.y;
        let x_2201 : f32 = u_xlat49.x;
        let x_2203 : f32 = u_xlat69;
        u_xlat69 = ((x_2199 * x_2201) + x_2203);
        let x_2206 : vec2<f32> = u_xlat52;
        let x_2208 : f32 = u_xlat4.z;
        txVec27 = vec3<f32>(x_2206.x, x_2206.y, x_2208);
        let x_2215 : vec3<f32> = txVec27;
        let x_2217 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2215.xy, x_2215.z);
        u_xlat49.x = x_2217;
        let x_2220 : f32 = u_xlat8.z;
        let x_2222 : f32 = u_xlat49.x;
        let x_2224 : f32 = u_xlat69;
        u_xlat69 = ((x_2220 * x_2222) + x_2224);
        let x_2227 : vec4<f32> = u_xlat7;
        let x_2228 : vec2<f32> = vec2<f32>(x_2227.x, x_2227.y);
        let x_2230 : f32 = u_xlat4.z;
        txVec28 = vec3<f32>(x_2228.x, x_2228.y, x_2230);
        let x_2237 : vec3<f32> = txVec28;
        let x_2239 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2237.xy, x_2237.z);
        u_xlat7.x = x_2239;
        let x_2242 : f32 = u_xlat8.w;
        let x_2244 : f32 = u_xlat7.x;
        let x_2246 : f32 = u_xlat69;
        u_xlat48.x = ((x_2242 * x_2244) + x_2246);
      }
    }
  } else {
    let x_2251 : vec4<f32> = u_xlat4;
    let x_2252 : vec2<f32> = vec2<f32>(x_2251.x, x_2251.y);
    let x_2254 : f32 = u_xlat4.z;
    txVec29 = vec3<f32>(x_2252.x, x_2252.y, x_2254);
    let x_2261 : vec3<f32> = txVec29;
    let x_2263 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2261.xy, x_2261.z);
    u_xlat48.x = x_2263;
  }
  let x_2266 : f32 = x_667.x_MainLightShadowParams.x;
  u_xlat4.x = (-(x_2266) + 1.0f);
  let x_2271 : f32 = u_xlat48.x;
  let x_2273 : f32 = x_667.x_MainLightShadowParams.x;
  let x_2276 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_2271 * x_2273) + x_2276);
  let x_2281 : f32 = u_xlat4.z;
  u_xlatb25.x = (0.0f >= x_2281);
  let x_2286 : f32 = u_xlat4.z;
  u_xlatb46 = (x_2286 >= 1.0f);
  let x_2288 : bool = u_xlatb46;
  let x_2290 : bool = u_xlatb25.x;
  u_xlatb25.x = (x_2288 | x_2290);
  let x_2294 : bool = u_xlatb25.x;
  if (x_2294) {
    x_2295 = 1.0f;
  } else {
    let x_2300 : f32 = u_xlat4.x;
    x_2295 = x_2300;
  }
  let x_2301 : f32 = x_2295;
  u_xlat4.x = x_2301;
  let x_2303 : vec3<f32> = vs_INTERP0;
  let x_2305 : vec3<f32> = x_146.x_WorldSpaceCameraPos;
  let x_2307 : vec3<f32> = (x_2303 + -(x_2305));
  let x_2308 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2307.x, x_2307.y, x_2307.z, x_2308.w);
  let x_2310 : vec4<f32> = u_xlat7;
  let x_2312 : vec4<f32> = u_xlat7;
  u_xlat25.x = dot(vec3<f32>(x_2310.x, x_2310.y, x_2310.z), vec3<f32>(x_2312.x, x_2312.y, x_2312.z));
  let x_2317 : f32 = u_xlat25.x;
  let x_2319 : f32 = x_667.x_MainLightShadowParams.z;
  let x_2322 : f32 = x_667.x_MainLightShadowParams.w;
  u_xlat25.x = ((x_2317 * x_2319) + x_2322);
  let x_2326 : f32 = u_xlat25.x;
  u_xlat25.x = clamp(x_2326, 0.0f, 1.0f);
  let x_2331 : f32 = u_xlat4.x;
  u_xlat46 = (-(x_2331) + 1.0f);
  let x_2335 : f32 = u_xlat25.x;
  let x_2336 : f32 = u_xlat46;
  let x_2339 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_2335 * x_2336) + x_2339);
  let x_2348 : f32 = x_2346.x_MainLightCookieTextureFormat;
  u_xlatb25.x = !((x_2348 == -1.0f));
  let x_2352 : bool = u_xlatb25.x;
  if (x_2352) {
    let x_2355 : vec3<f32> = vs_INTERP0;
    let x_2358 : vec4<f32> = x_2346.x_MainLightWorldToLight[1i];
    let x_2360 : vec2<f32> = (vec2<f32>(x_2355.y, x_2355.y) * vec2<f32>(x_2358.x, x_2358.y));
    let x_2361 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_2360.x, x_2360.y, x_2361.z);
    let x_2364 : vec4<f32> = x_2346.x_MainLightWorldToLight[0i];
    let x_2366 : vec3<f32> = vs_INTERP0;
    let x_2369 : vec3<f32> = u_xlat25;
    let x_2371 : vec2<f32> = ((vec2<f32>(x_2364.x, x_2364.y) * vec2<f32>(x_2366.x, x_2366.x)) + vec2<f32>(x_2369.x, x_2369.y));
    let x_2372 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_2371.x, x_2371.y, x_2372.z);
    let x_2375 : vec4<f32> = x_2346.x_MainLightWorldToLight[2i];
    let x_2377 : vec3<f32> = vs_INTERP0;
    let x_2380 : vec3<f32> = u_xlat25;
    let x_2382 : vec2<f32> = ((vec2<f32>(x_2375.x, x_2375.y) * vec2<f32>(x_2377.z, x_2377.z)) + vec2<f32>(x_2380.x, x_2380.y));
    let x_2383 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_2382.x, x_2382.y, x_2383.z);
    let x_2385 : vec3<f32> = u_xlat25;
    let x_2388 : vec4<f32> = x_2346.x_MainLightWorldToLight[3i];
    let x_2390 : vec2<f32> = (vec2<f32>(x_2385.x, x_2385.y) + vec2<f32>(x_2388.x, x_2388.y));
    let x_2391 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_2390.x, x_2390.y, x_2391.z);
    let x_2393 : vec3<f32> = u_xlat25;
    let x_2396 : vec2<f32> = ((vec2<f32>(x_2393.x, x_2393.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2397 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_2396.x, x_2396.y, x_2397.z);
    let x_2404 : vec3<f32> = u_xlat25;
    let x_2407 : f32 = x_146.x_GlobalMipBias.x;
    let x_2408 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2404.x, x_2404.y), x_2407);
    u_xlat7 = x_2408;
    let x_2410 : f32 = x_2346.x_MainLightCookieTextureFormat;
    let x_2412 : f32 = x_2346.x_MainLightCookieTextureFormat;
    let x_2414 : f32 = x_2346.x_MainLightCookieTextureFormat;
    let x_2416 : f32 = x_2346.x_MainLightCookieTextureFormat;
    let x_2417 : vec4<f32> = vec4<f32>(x_2410, x_2412, x_2414, x_2416);
    let x_2424 : vec4<bool> = (vec4<f32>(x_2417.x, x_2417.y, x_2417.z, x_2417.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb25 = vec2<bool>(x_2424.x, x_2424.y);
    let x_2427 : bool = u_xlatb25.y;
    if (x_2427) {
      let x_2432 : f32 = u_xlat7.w;
      x_2428 = x_2432;
    } else {
      let x_2435 : f32 = u_xlat7.x;
      x_2428 = x_2435;
    }
    let x_2436 : f32 = x_2428;
    u_xlat46 = x_2436;
    let x_2438 : bool = u_xlatb25.x;
    if (x_2438) {
      let x_2442 : vec4<f32> = u_xlat7;
      x_2439 = vec3<f32>(x_2442.x, x_2442.y, x_2442.z);
    } else {
      let x_2445 : f32 = u_xlat46;
      x_2439 = vec3<f32>(x_2445, x_2445, x_2445);
    }
    let x_2447 : vec3<f32> = x_2439;
    let x_2448 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2447.x, x_2447.y, x_2447.z, x_2448.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_2454 : vec4<f32> = u_xlat7;
  let x_2457 : vec4<f32> = x_146.x_MainLightColor;
  let x_2459 : vec3<f32> = (vec3<f32>(x_2454.x, x_2454.y, x_2454.z) * vec3<f32>(x_2457.x, x_2457.y, x_2457.z));
  let x_2460 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2459.x, x_2459.y, x_2459.z, x_2460.w);
  let x_2462 : f32 = u_xlat27;
  let x_2464 : vec4<f32> = u_xlat7;
  let x_2466 : vec3<f32> = (vec3<f32>(x_2462, x_2462, x_2462) * vec3<f32>(x_2464.x, x_2464.y, x_2464.z));
  let x_2467 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2466.x, x_2466.y, x_2466.z, x_2467.w);
  let x_2469 : vec4<f32> = u_xlat1;
  let x_2472 : vec3<f32> = u_xlat21;
  u_xlat25.x = dot(-(vec3<f32>(x_2469.x, x_2469.y, x_2469.z)), x_2472);
  let x_2476 : f32 = u_xlat25.x;
  let x_2478 : f32 = u_xlat25.x;
  u_xlat25.x = (x_2476 + x_2478);
  let x_2481 : vec3<f32> = u_xlat21;
  let x_2482 : vec3<f32> = u_xlat25;
  let x_2486 : vec4<f32> = u_xlat1;
  let x_2489 : vec3<f32> = ((x_2481 * -(vec3<f32>(x_2482.x, x_2482.x, x_2482.x))) + -(vec3<f32>(x_2486.x, x_2486.y, x_2486.z)));
  let x_2490 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2489.x, x_2489.y, x_2489.z, x_2490.w);
  let x_2492 : vec3<f32> = u_xlat21;
  let x_2493 : vec4<f32> = u_xlat1;
  u_xlat25.x = dot(x_2492, vec3<f32>(x_2493.x, x_2493.y, x_2493.z));
  let x_2498 : f32 = u_xlat25.x;
  u_xlat25.x = clamp(x_2498, 0.0f, 1.0f);
  let x_2502 : f32 = u_xlat25.x;
  u_xlat25.x = (-(x_2502) + 1.0f);
  let x_2507 : f32 = u_xlat25.x;
  let x_2509 : f32 = u_xlat25.x;
  u_xlat25.x = (x_2507 * x_2509);
  let x_2513 : f32 = u_xlat25.x;
  let x_2515 : f32 = u_xlat25.x;
  u_xlat25.x = (x_2513 * x_2515);
  let x_2518 : f32 = u_xlat64;
  u_xlat46 = ((-(x_2518) * 0.699999988f) + 1.700000048f);
  let x_2524 : f32 = u_xlat64;
  let x_2525 : f32 = u_xlat46;
  u_xlat64 = (x_2524 * x_2525);
  let x_2527 : f32 = u_xlat64;
  u_xlat64 = (x_2527 * 6.0f);
  let x_2538 : vec4<f32> = u_xlat8;
  let x_2540 : f32 = u_xlat64;
  let x_2541 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2538.x, x_2538.y, x_2538.z), x_2540);
  u_xlat8 = x_2541;
  let x_2543 : f32 = u_xlat8.w;
  u_xlat64 = (x_2543 + -1.0f);
  let x_2546 : f32 = x_59.unity_SpecCube0_HDR.w;
  let x_2547 : f32 = u_xlat64;
  u_xlat64 = ((x_2546 * x_2547) + 1.0f);
  let x_2550 : f32 = u_xlat64;
  u_xlat64 = max(x_2550, 0.0f);
  let x_2552 : f32 = u_xlat64;
  u_xlat64 = log2(x_2552);
  let x_2554 : f32 = u_xlat64;
  let x_2556 : f32 = x_59.unity_SpecCube0_HDR.y;
  u_xlat64 = (x_2554 * x_2556);
  let x_2558 : f32 = u_xlat64;
  u_xlat64 = exp2(x_2558);
  let x_2560 : f32 = u_xlat64;
  let x_2562 : f32 = x_59.unity_SpecCube0_HDR.x;
  u_xlat64 = (x_2560 * x_2562);
  let x_2564 : vec4<f32> = u_xlat8;
  let x_2566 : f32 = u_xlat64;
  let x_2568 : vec3<f32> = (vec3<f32>(x_2564.x, x_2564.y, x_2564.z) * vec3<f32>(x_2566, x_2566, x_2566));
  let x_2569 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2568.x, x_2568.y, x_2568.z, x_2569.w);
  let x_2571 : f32 = u_xlat66;
  let x_2573 : f32 = u_xlat66;
  u_xlat48 = ((vec2<f32>(x_2571, x_2571) * vec2<f32>(x_2573, x_2573)) + vec2<f32>(-1.0f, 1.0f));
  let x_2579 : f32 = u_xlat48.y;
  u_xlat64 = (1.0f / x_2579);
  let x_2581 : vec3<f32> = u_xlat2;
  let x_2583 : vec4<f32> = u_xlat0;
  let x_2585 : vec3<f32> = (-(x_2581) + vec3<f32>(x_2583.x, x_2583.x, x_2583.x));
  let x_2586 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2585.x, x_2585.y, x_2585.z, x_2586.w);
  let x_2588 : vec3<f32> = u_xlat25;
  let x_2590 : vec4<f32> = u_xlat9;
  let x_2593 : vec3<f32> = u_xlat2;
  let x_2594 : vec3<f32> = ((vec3<f32>(x_2588.x, x_2588.x, x_2588.x) * vec3<f32>(x_2590.x, x_2590.y, x_2590.z)) + x_2593);
  let x_2595 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2594.x, x_2594.y, x_2594.z, x_2595.w);
  let x_2597 : f32 = u_xlat64;
  let x_2599 : vec4<f32> = u_xlat9;
  let x_2601 : vec3<f32> = (vec3<f32>(x_2597, x_2597, x_2597) * vec3<f32>(x_2599.x, x_2599.y, x_2599.z));
  let x_2602 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2601.x, x_2601.y, x_2601.z, x_2602.w);
  let x_2604 : vec4<f32> = u_xlat8;
  let x_2606 : vec4<f32> = u_xlat9;
  let x_2608 : vec3<f32> = (vec3<f32>(x_2604.x, x_2604.y, x_2604.z) * vec3<f32>(x_2606.x, x_2606.y, x_2606.z));
  let x_2609 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2608.x, x_2608.y, x_2608.z, x_2609.w);
  let x_2611 : vec4<f32> = u_xlat5;
  let x_2613 : vec3<f32> = u_xlat3;
  let x_2615 : vec4<f32> = u_xlat8;
  let x_2617 : vec3<f32> = ((vec3<f32>(x_2611.x, x_2611.y, x_2611.z) * x_2613) + vec3<f32>(x_2615.x, x_2615.y, x_2615.z));
  let x_2618 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2617.x, x_2617.y, x_2617.z, x_2618.w);
  let x_2621 : f32 = u_xlat4.x;
  let x_2623 : f32 = x_59.unity_LightData.z;
  u_xlat0.x = (x_2621 * x_2623);
  let x_2626 : vec3<f32> = u_xlat21;
  let x_2628 : vec4<f32> = x_146.x_MainLightPosition;
  u_xlat64 = dot(x_2626, vec3<f32>(x_2628.x, x_2628.y, x_2628.z));
  let x_2631 : f32 = u_xlat64;
  u_xlat64 = clamp(x_2631, 0.0f, 1.0f);
  let x_2634 : f32 = u_xlat0.x;
  let x_2635 : f32 = u_xlat64;
  u_xlat0.x = (x_2634 * x_2635);
  let x_2638 : vec4<f32> = u_xlat0;
  let x_2640 : vec4<f32> = u_xlat7;
  let x_2642 : vec3<f32> = (vec3<f32>(x_2638.x, x_2638.x, x_2638.x) * vec3<f32>(x_2640.x, x_2640.y, x_2640.z));
  let x_2643 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2642.x, x_2642.y, x_2642.z, x_2643.w);
  let x_2645 : vec4<f32> = u_xlat1;
  let x_2648 : vec4<f32> = x_146.x_MainLightPosition;
  let x_2650 : vec3<f32> = (vec3<f32>(x_2645.x, x_2645.y, x_2645.z) + vec3<f32>(x_2648.x, x_2648.y, x_2648.z));
  let x_2651 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2650.x, x_2650.y, x_2650.z, x_2651.w);
  let x_2653 : vec4<f32> = u_xlat7;
  let x_2655 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(vec3<f32>(x_2653.x, x_2653.y, x_2653.z), vec3<f32>(x_2655.x, x_2655.y, x_2655.z));
  let x_2660 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2660, 1.17549435e-37f);
  let x_2664 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_2664);
  let x_2667 : vec4<f32> = u_xlat0;
  let x_2669 : vec4<f32> = u_xlat7;
  let x_2671 : vec3<f32> = (vec3<f32>(x_2667.x, x_2667.x, x_2667.x) * vec3<f32>(x_2669.x, x_2669.y, x_2669.z));
  let x_2672 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2671.x, x_2671.y, x_2671.z, x_2672.w);
  let x_2674 : vec3<f32> = u_xlat21;
  let x_2675 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_2674, vec3<f32>(x_2675.x, x_2675.y, x_2675.z));
  let x_2680 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_2680, 0.0f, 1.0f);
  let x_2684 : vec4<f32> = x_146.x_MainLightPosition;
  let x_2686 : vec4<f32> = u_xlat7;
  u_xlat64 = dot(vec3<f32>(x_2684.x, x_2684.y, x_2684.z), vec3<f32>(x_2686.x, x_2686.y, x_2686.z));
  let x_2689 : f32 = u_xlat64;
  u_xlat64 = clamp(x_2689, 0.0f, 1.0f);
  let x_2692 : f32 = u_xlat0.x;
  let x_2694 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2692 * x_2694);
  let x_2698 : f32 = u_xlat0.x;
  let x_2700 : f32 = u_xlat48.x;
  u_xlat0.x = ((x_2698 * x_2700) + 1.000010014f);
  let x_2705 : f32 = u_xlat64;
  let x_2706 : f32 = u_xlat64;
  u_xlat64 = (x_2705 * x_2706);
  let x_2709 : f32 = u_xlat0.x;
  let x_2711 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2709 * x_2711);
  let x_2714 : f32 = u_xlat64;
  u_xlat64 = max(x_2714, 0.100000001f);
  let x_2717 : f32 = u_xlat0.x;
  let x_2718 : f32 = u_xlat64;
  u_xlat0.x = (x_2717 * x_2718);
  let x_2721 : f32 = u_xlat68;
  let x_2723 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2721 * x_2723);
  let x_2726 : f32 = u_xlat67;
  let x_2728 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2726 / x_2728);
  let x_2731 : vec3<f32> = u_xlat2;
  let x_2732 : vec4<f32> = u_xlat0;
  let x_2735 : vec3<f32> = u_xlat3;
  let x_2736 : vec3<f32> = ((x_2731 * vec3<f32>(x_2732.x, x_2732.x, x_2732.x)) + x_2735);
  let x_2737 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2736.x, x_2736.y, x_2736.z, x_2737.w);
  let x_2739 : vec4<f32> = u_xlat4;
  let x_2741 : vec4<f32> = u_xlat7;
  let x_2743 : vec3<f32> = (vec3<f32>(x_2739.x, x_2739.y, x_2739.z) * vec3<f32>(x_2741.x, x_2741.y, x_2741.z));
  let x_2744 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2743.x, x_2743.y, x_2743.z, x_2744.w);
  let x_2747 : f32 = x_146.x_AdditionalLightsCount.x;
  let x_2749 : f32 = x_59.unity_LightData.y;
  u_xlat0.x = min(x_2747, x_2749);
  let x_2754 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_2754));
  let x_2759 : f32 = x_2346.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2761 : f32 = x_2346.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2763 : f32 = x_2346.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2765 : f32 = x_2346.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2766 : vec4<f32> = vec4<f32>(x_2759, x_2761, x_2763, x_2765);
  let x_2772 : vec4<bool> = (vec4<f32>(x_2766.x, x_2766.y, x_2766.z, x_2766.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2772.x, x_2772.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2783 : u32 = u_xlatu_loop_1;
    let x_2784 : u32 = u_xlatu0;
    if ((x_2783 < x_2784)) {
    } else {
      break;
    }
    let x_2787 : u32 = u_xlatu_loop_1;
    u_xlatu66 = (x_2787 >> 2u);
    let x_2790 : u32 = u_xlatu_loop_1;
    u_xlati69 = bitcast<i32>((x_2790 & 3u));
    let x_2793 : u32 = u_xlatu66;
    let x_2796 : vec4<f32> = x_59.unity_LightIndices[bitcast<i32>(x_2793)];
    let x_2806 : i32 = u_xlati69;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2811 : vec4<u32> = indexable[x_2806];
    u_xlat66 = dot(x_2796, bitcast<vec4<f32>>(x_2811));
    let x_2814 : f32 = u_xlat66;
    u_xlatu66 = bitcast<u32>(i32(x_2814));
    let x_2817 : vec3<f32> = vs_INTERP0;
    let x_2829 : u32 = u_xlatu66;
    let x_2832 : vec4<f32> = x_2828.x_AdditionalLightsPosition[bitcast<i32>(x_2829)];
    let x_2835 : u32 = u_xlatu66;
    let x_2838 : vec4<f32> = x_2828.x_AdditionalLightsPosition[bitcast<i32>(x_2835)];
    let x_2840 : vec3<f32> = ((-(x_2817) * vec3<f32>(x_2832.w, x_2832.w, x_2832.w)) + vec3<f32>(x_2838.x, x_2838.y, x_2838.z));
    let x_2841 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2840.x, x_2840.y, x_2840.z, x_2841.w);
    let x_2843 : vec4<f32> = u_xlat9;
    let x_2845 : vec4<f32> = u_xlat9;
    u_xlat69 = dot(vec3<f32>(x_2843.x, x_2843.y, x_2843.z), vec3<f32>(x_2845.x, x_2845.y, x_2845.z));
    let x_2848 : f32 = u_xlat69;
    u_xlat69 = max(x_2848, 6.10351562e-05f);
    let x_2851 : f32 = u_xlat69;
    u_xlat49.x = inverseSqrt(x_2851);
    let x_2854 : vec2<f32> = u_xlat49;
    let x_2856 : vec4<f32> = u_xlat9;
    let x_2858 : vec3<f32> = (vec3<f32>(x_2854.x, x_2854.x, x_2854.x) * vec3<f32>(x_2856.x, x_2856.y, x_2856.z));
    let x_2859 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2858.x, x_2858.y, x_2858.z, x_2859.w);
    let x_2862 : f32 = u_xlat69;
    u_xlat70 = (1.0f / x_2862);
    let x_2864 : f32 = u_xlat69;
    let x_2865 : u32 = u_xlatu66;
    let x_2868 : f32 = x_2828.x_AdditionalLightsAttenuation[bitcast<i32>(x_2865)].x;
    u_xlat69 = (x_2864 * x_2868);
    let x_2870 : f32 = u_xlat69;
    let x_2872 : f32 = u_xlat69;
    u_xlat69 = ((-(x_2870) * x_2872) + 1.0f);
    let x_2875 : f32 = u_xlat69;
    u_xlat69 = max(x_2875, 0.0f);
    let x_2877 : f32 = u_xlat69;
    let x_2878 : f32 = u_xlat69;
    u_xlat69 = (x_2877 * x_2878);
    let x_2880 : f32 = u_xlat69;
    let x_2881 : f32 = u_xlat70;
    u_xlat69 = (x_2880 * x_2881);
    let x_2883 : u32 = u_xlatu66;
    let x_2886 : vec4<f32> = x_2828.x_AdditionalLightsSpotDir[bitcast<i32>(x_2883)];
    let x_2888 : vec4<f32> = u_xlat10;
    u_xlat70 = dot(vec3<f32>(x_2886.x, x_2886.y, x_2886.z), vec3<f32>(x_2888.x, x_2888.y, x_2888.z));
    let x_2891 : f32 = u_xlat70;
    let x_2892 : u32 = u_xlatu66;
    let x_2895 : f32 = x_2828.x_AdditionalLightsAttenuation[bitcast<i32>(x_2892)].z;
    let x_2897 : u32 = u_xlatu66;
    let x_2900 : f32 = x_2828.x_AdditionalLightsAttenuation[bitcast<i32>(x_2897)].w;
    u_xlat70 = ((x_2891 * x_2895) + x_2900);
    let x_2902 : f32 = u_xlat70;
    u_xlat70 = clamp(x_2902, 0.0f, 1.0f);
    let x_2904 : f32 = u_xlat70;
    let x_2905 : f32 = u_xlat70;
    u_xlat70 = (x_2904 * x_2905);
    let x_2907 : f32 = u_xlat69;
    let x_2908 : f32 = u_xlat70;
    u_xlat69 = (x_2907 * x_2908);
    let x_2911 : u32 = u_xlatu66;
    u_xlatu70 = (x_2911 >> 5u);
    let x_2914 : u32 = u_xlatu66;
    u_xlati71 = (1i << bitcast<u32>((bitcast<i32>(x_2914) & 31i)));
    let x_2920 : i32 = u_xlati71;
    let x_2922 : u32 = u_xlatu70;
    let x_2925 : f32 = x_2346.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2922)].el;
    u_xlati70 = bitcast<i32>((bitcast<u32>(x_2920) & bitcast<u32>(x_2925)));
    let x_2929 : i32 = u_xlati70;
    if ((x_2929 != 0i)) {
      let x_2939 : u32 = u_xlatu66;
      let x_2942 : f32 = x_2938.x_AdditionalLightsLightTypes[bitcast<i32>(x_2939)].el;
      u_xlati70 = i32(x_2942);
      let x_2944 : i32 = u_xlati70;
      u_xlati71 = select(1i, 0i, (x_2944 != 0i));
      let x_2948 : u32 = u_xlatu66;
      u_xlati72 = (bitcast<i32>(x_2948) << bitcast<u32>(2i));
      let x_2951 : i32 = u_xlati71;
      if ((x_2951 != 0i)) {
        let x_2955 : vec3<f32> = vs_INTERP0;
        let x_2957 : i32 = u_xlati72;
        let x_2960 : i32 = u_xlati72;
        let x_2964 : vec4<f32> = x_2938.x_AdditionalLightsWorldToLights[((x_2957 + 1i) / 4i)][((x_2960 + 1i) % 4i)];
        let x_2966 : vec3<f32> = (vec3<f32>(x_2955.y, x_2955.y, x_2955.y) * vec3<f32>(x_2964.x, x_2964.y, x_2964.w));
        let x_2967 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2966.x, x_2966.y, x_2966.z, x_2967.w);
        let x_2969 : i32 = u_xlati72;
        let x_2971 : i32 = u_xlati72;
        let x_2974 : vec4<f32> = x_2938.x_AdditionalLightsWorldToLights[(x_2969 / 4i)][(x_2971 % 4i)];
        let x_2976 : vec3<f32> = vs_INTERP0;
        let x_2979 : vec4<f32> = u_xlat11;
        let x_2981 : vec3<f32> = ((vec3<f32>(x_2974.x, x_2974.y, x_2974.w) * vec3<f32>(x_2976.x, x_2976.x, x_2976.x)) + vec3<f32>(x_2979.x, x_2979.y, x_2979.z));
        let x_2982 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2981.x, x_2981.y, x_2981.z, x_2982.w);
        let x_2984 : i32 = u_xlati72;
        let x_2987 : i32 = u_xlati72;
        let x_2991 : vec4<f32> = x_2938.x_AdditionalLightsWorldToLights[((x_2984 + 2i) / 4i)][((x_2987 + 2i) % 4i)];
        let x_2993 : vec3<f32> = vs_INTERP0;
        let x_2996 : vec4<f32> = u_xlat11;
        let x_2998 : vec3<f32> = ((vec3<f32>(x_2991.x, x_2991.y, x_2991.w) * vec3<f32>(x_2993.z, x_2993.z, x_2993.z)) + vec3<f32>(x_2996.x, x_2996.y, x_2996.z));
        let x_2999 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2998.x, x_2998.y, x_2998.z, x_2999.w);
        let x_3001 : vec4<f32> = u_xlat11;
        let x_3003 : i32 = u_xlati72;
        let x_3006 : i32 = u_xlati72;
        let x_3010 : vec4<f32> = x_2938.x_AdditionalLightsWorldToLights[((x_3003 + 3i) / 4i)][((x_3006 + 3i) % 4i)];
        let x_3012 : vec3<f32> = (vec3<f32>(x_3001.x, x_3001.y, x_3001.z) + vec3<f32>(x_3010.x, x_3010.y, x_3010.w));
        let x_3013 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3012.x, x_3012.y, x_3012.z, x_3013.w);
        let x_3015 : vec4<f32> = u_xlat11;
        let x_3017 : vec4<f32> = u_xlat11;
        let x_3019 : vec2<f32> = (vec2<f32>(x_3015.x, x_3015.y) / vec2<f32>(x_3017.z, x_3017.z));
        let x_3020 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3019.x, x_3019.y, x_3020.z, x_3020.w);
        let x_3022 : vec4<f32> = u_xlat11;
        let x_3025 : vec2<f32> = ((vec2<f32>(x_3022.x, x_3022.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3026 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3025.x, x_3025.y, x_3026.z, x_3026.w);
        let x_3028 : vec4<f32> = u_xlat11;
        let x_3032 : vec2<f32> = clamp(vec2<f32>(x_3028.x, x_3028.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3033 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3032.x, x_3032.y, x_3033.z, x_3033.w);
        let x_3035 : u32 = u_xlatu66;
        let x_3038 : vec4<f32> = x_2938.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3035)];
        let x_3040 : vec4<f32> = u_xlat11;
        let x_3043 : u32 = u_xlatu66;
        let x_3046 : vec4<f32> = x_2938.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3043)];
        let x_3048 : vec2<f32> = ((vec2<f32>(x_3038.x, x_3038.y) * vec2<f32>(x_3040.x, x_3040.y)) + vec2<f32>(x_3046.z, x_3046.w));
        let x_3049 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3048.x, x_3048.y, x_3049.z, x_3049.w);
      } else {
        let x_3053 : i32 = u_xlati70;
        u_xlatb70 = (x_3053 == 1i);
        let x_3055 : bool = u_xlatb70;
        u_xlati70 = select(0i, 1i, x_3055);
        let x_3057 : i32 = u_xlati70;
        if ((x_3057 != 0i)) {
          let x_3062 : vec3<f32> = vs_INTERP0;
          let x_3064 : i32 = u_xlati72;
          let x_3067 : i32 = u_xlati72;
          let x_3071 : vec4<f32> = x_2938.x_AdditionalLightsWorldToLights[((x_3064 + 1i) / 4i)][((x_3067 + 1i) % 4i)];
          u_xlat53 = (vec2<f32>(x_3062.y, x_3062.y) * vec2<f32>(x_3071.x, x_3071.y));
          let x_3074 : i32 = u_xlati72;
          let x_3076 : i32 = u_xlati72;
          let x_3079 : vec4<f32> = x_2938.x_AdditionalLightsWorldToLights[(x_3074 / 4i)][(x_3076 % 4i)];
          let x_3081 : vec3<f32> = vs_INTERP0;
          let x_3084 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_3079.x, x_3079.y) * vec2<f32>(x_3081.x, x_3081.x)) + x_3084);
          let x_3086 : i32 = u_xlati72;
          let x_3089 : i32 = u_xlati72;
          let x_3093 : vec4<f32> = x_2938.x_AdditionalLightsWorldToLights[((x_3086 + 2i) / 4i)][((x_3089 + 2i) % 4i)];
          let x_3095 : vec3<f32> = vs_INTERP0;
          let x_3098 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_3093.x, x_3093.y) * vec2<f32>(x_3095.z, x_3095.z)) + x_3098);
          let x_3100 : vec2<f32> = u_xlat53;
          let x_3101 : i32 = u_xlati72;
          let x_3104 : i32 = u_xlati72;
          let x_3108 : vec4<f32> = x_2938.x_AdditionalLightsWorldToLights[((x_3101 + 3i) / 4i)][((x_3104 + 3i) % 4i)];
          u_xlat53 = (x_3100 + vec2<f32>(x_3108.x, x_3108.y));
          let x_3111 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_3111 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3114 : vec2<f32> = u_xlat53;
          u_xlat53 = fract(x_3114);
          let x_3116 : u32 = u_xlatu66;
          let x_3119 : vec4<f32> = x_2938.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3116)];
          let x_3121 : vec2<f32> = u_xlat53;
          let x_3123 : u32 = u_xlatu66;
          let x_3126 : vec4<f32> = x_2938.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3123)];
          let x_3128 : vec2<f32> = ((vec2<f32>(x_3119.x, x_3119.y) * x_3121) + vec2<f32>(x_3126.z, x_3126.w));
          let x_3129 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3128.x, x_3128.y, x_3129.z, x_3129.w);
        } else {
          let x_3132 : vec3<f32> = vs_INTERP0;
          let x_3134 : i32 = u_xlati72;
          let x_3137 : i32 = u_xlati72;
          let x_3141 : vec4<f32> = x_2938.x_AdditionalLightsWorldToLights[((x_3134 + 1i) / 4i)][((x_3137 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_3132.y, x_3132.y, x_3132.y, x_3132.y) * x_3141);
          let x_3143 : i32 = u_xlati72;
          let x_3145 : i32 = u_xlati72;
          let x_3148 : vec4<f32> = x_2938.x_AdditionalLightsWorldToLights[(x_3143 / 4i)][(x_3145 % 4i)];
          let x_3149 : vec3<f32> = vs_INTERP0;
          let x_3152 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3148 * vec4<f32>(x_3149.x, x_3149.x, x_3149.x, x_3149.x)) + x_3152);
          let x_3154 : i32 = u_xlati72;
          let x_3157 : i32 = u_xlati72;
          let x_3161 : vec4<f32> = x_2938.x_AdditionalLightsWorldToLights[((x_3154 + 2i) / 4i)][((x_3157 + 2i) % 4i)];
          let x_3162 : vec3<f32> = vs_INTERP0;
          let x_3165 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3161 * vec4<f32>(x_3162.z, x_3162.z, x_3162.z, x_3162.z)) + x_3165);
          let x_3167 : vec4<f32> = u_xlat12;
          let x_3168 : i32 = u_xlati72;
          let x_3171 : i32 = u_xlati72;
          let x_3175 : vec4<f32> = x_2938.x_AdditionalLightsWorldToLights[((x_3168 + 3i) / 4i)][((x_3171 + 3i) % 4i)];
          u_xlat12 = (x_3167 + x_3175);
          let x_3177 : vec4<f32> = u_xlat12;
          let x_3179 : vec4<f32> = u_xlat12;
          let x_3181 : vec3<f32> = (vec3<f32>(x_3177.x, x_3177.y, x_3177.z) / vec3<f32>(x_3179.w, x_3179.w, x_3179.w));
          let x_3182 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3181.x, x_3181.y, x_3181.z, x_3182.w);
          let x_3184 : vec4<f32> = u_xlat12;
          let x_3186 : vec4<f32> = u_xlat12;
          u_xlat70 = dot(vec3<f32>(x_3184.x, x_3184.y, x_3184.z), vec3<f32>(x_3186.x, x_3186.y, x_3186.z));
          let x_3189 : f32 = u_xlat70;
          u_xlat70 = inverseSqrt(x_3189);
          let x_3191 : f32 = u_xlat70;
          let x_3193 : vec4<f32> = u_xlat12;
          let x_3195 : vec3<f32> = (vec3<f32>(x_3191, x_3191, x_3191) * vec3<f32>(x_3193.x, x_3193.y, x_3193.z));
          let x_3196 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3195.x, x_3195.y, x_3195.z, x_3196.w);
          let x_3198 : vec4<f32> = u_xlat12;
          u_xlat70 = dot(abs(vec3<f32>(x_3198.x, x_3198.y, x_3198.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3203 : f32 = u_xlat70;
          u_xlat70 = max(x_3203, 0.000001f);
          let x_3206 : f32 = u_xlat70;
          u_xlat70 = (1.0f / x_3206);
          let x_3208 : f32 = u_xlat70;
          let x_3210 : vec4<f32> = u_xlat12;
          let x_3212 : vec3<f32> = (vec3<f32>(x_3208, x_3208, x_3208) * vec3<f32>(x_3210.z, x_3210.x, x_3210.y));
          let x_3213 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3212.x, x_3212.y, x_3212.z, x_3213.w);
          let x_3216 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_3216);
          let x_3220 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_3220, 0.0f, 1.0f);
          let x_3224 : vec4<f32> = u_xlat13;
          let x_3227 : vec4<bool> = (vec4<f32>(x_3224.y, x_3224.z, x_3224.y, x_3224.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb53 = vec2<bool>(x_3227.x, x_3227.y);
          let x_3230 : bool = u_xlatb53.x;
          if (x_3230) {
            let x_3235 : f32 = u_xlat13.x;
            x_3231 = x_3235;
          } else {
            let x_3238 : f32 = u_xlat13.x;
            x_3231 = -(x_3238);
          }
          let x_3240 : f32 = x_3231;
          u_xlat53.x = x_3240;
          let x_3243 : bool = u_xlatb53.y;
          if (x_3243) {
            let x_3248 : f32 = u_xlat13.x;
            x_3244 = x_3248;
          } else {
            let x_3251 : f32 = u_xlat13.x;
            x_3244 = -(x_3251);
          }
          let x_3253 : f32 = x_3244;
          u_xlat53.y = x_3253;
          let x_3255 : vec4<f32> = u_xlat12;
          let x_3257 : f32 = u_xlat70;
          let x_3260 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_3255.x, x_3255.y) * vec2<f32>(x_3257, x_3257)) + x_3260);
          let x_3262 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_3262 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3265 : vec2<f32> = u_xlat53;
          u_xlat53 = clamp(x_3265, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3269 : u32 = u_xlatu66;
          let x_3272 : vec4<f32> = x_2938.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3269)];
          let x_3274 : vec2<f32> = u_xlat53;
          let x_3276 : u32 = u_xlatu66;
          let x_3279 : vec4<f32> = x_2938.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3276)];
          let x_3281 : vec2<f32> = ((vec2<f32>(x_3272.x, x_3272.y) * x_3274) + vec2<f32>(x_3279.z, x_3279.w));
          let x_3282 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3281.x, x_3281.y, x_3282.z, x_3282.w);
        }
      }
      let x_3289 : vec4<f32> = u_xlat11;
      let x_3292 : f32 = x_146.x_GlobalMipBias.x;
      let x_3293 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_3289.x, x_3289.y), x_3292);
      u_xlat11 = x_3293;
      let x_3295 : bool = u_xlatb7.y;
      if (x_3295) {
        let x_3300 : f32 = u_xlat11.w;
        x_3296 = x_3300;
      } else {
        let x_3303 : f32 = u_xlat11.x;
        x_3296 = x_3303;
      }
      let x_3304 : f32 = x_3296;
      u_xlat70 = x_3304;
      let x_3306 : bool = u_xlatb7.x;
      if (x_3306) {
        let x_3310 : vec4<f32> = u_xlat11;
        x_3307 = vec3<f32>(x_3310.x, x_3310.y, x_3310.z);
      } else {
        let x_3313 : f32 = u_xlat70;
        x_3307 = vec3<f32>(x_3313, x_3313, x_3313);
      }
      let x_3315 : vec3<f32> = x_3307;
      let x_3316 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3315.x, x_3315.y, x_3315.z, x_3316.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_3322 : vec4<f32> = u_xlat11;
    let x_3324 : u32 = u_xlatu66;
    let x_3327 : vec4<f32> = x_2828.x_AdditionalLightsColor[bitcast<i32>(x_3324)];
    let x_3329 : vec3<f32> = (vec3<f32>(x_3322.x, x_3322.y, x_3322.z) * vec3<f32>(x_3327.x, x_3327.y, x_3327.z));
    let x_3330 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3329.x, x_3329.y, x_3329.z, x_3330.w);
    let x_3332 : f32 = u_xlat27;
    let x_3334 : vec4<f32> = u_xlat11;
    let x_3336 : vec3<f32> = (vec3<f32>(x_3332, x_3332, x_3332) * vec3<f32>(x_3334.x, x_3334.y, x_3334.z));
    let x_3337 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3336.x, x_3336.y, x_3336.z, x_3337.w);
    let x_3339 : vec3<f32> = u_xlat21;
    let x_3340 : vec4<f32> = u_xlat10;
    u_xlat66 = dot(x_3339, vec3<f32>(x_3340.x, x_3340.y, x_3340.z));
    let x_3343 : f32 = u_xlat66;
    u_xlat66 = clamp(x_3343, 0.0f, 1.0f);
    let x_3345 : f32 = u_xlat66;
    let x_3346 : f32 = u_xlat69;
    u_xlat66 = (x_3345 * x_3346);
    let x_3348 : f32 = u_xlat66;
    let x_3350 : vec4<f32> = u_xlat11;
    let x_3352 : vec3<f32> = (vec3<f32>(x_3348, x_3348, x_3348) * vec3<f32>(x_3350.x, x_3350.y, x_3350.z));
    let x_3353 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3352.x, x_3352.y, x_3352.z, x_3353.w);
    let x_3355 : vec4<f32> = u_xlat9;
    let x_3357 : vec2<f32> = u_xlat49;
    let x_3360 : vec4<f32> = u_xlat1;
    let x_3362 : vec3<f32> = ((vec3<f32>(x_3355.x, x_3355.y, x_3355.z) * vec3<f32>(x_3357.x, x_3357.x, x_3357.x)) + vec3<f32>(x_3360.x, x_3360.y, x_3360.z));
    let x_3363 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3362.x, x_3362.y, x_3362.z, x_3363.w);
    let x_3365 : vec4<f32> = u_xlat9;
    let x_3367 : vec4<f32> = u_xlat9;
    u_xlat66 = dot(vec3<f32>(x_3365.x, x_3365.y, x_3365.z), vec3<f32>(x_3367.x, x_3367.y, x_3367.z));
    let x_3370 : f32 = u_xlat66;
    u_xlat66 = max(x_3370, 1.17549435e-37f);
    let x_3372 : f32 = u_xlat66;
    u_xlat66 = inverseSqrt(x_3372);
    let x_3374 : f32 = u_xlat66;
    let x_3376 : vec4<f32> = u_xlat9;
    let x_3378 : vec3<f32> = (vec3<f32>(x_3374, x_3374, x_3374) * vec3<f32>(x_3376.x, x_3376.y, x_3376.z));
    let x_3379 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3378.x, x_3378.y, x_3378.z, x_3379.w);
    let x_3381 : vec3<f32> = u_xlat21;
    let x_3382 : vec4<f32> = u_xlat9;
    u_xlat66 = dot(x_3381, vec3<f32>(x_3382.x, x_3382.y, x_3382.z));
    let x_3385 : f32 = u_xlat66;
    u_xlat66 = clamp(x_3385, 0.0f, 1.0f);
    let x_3387 : vec4<f32> = u_xlat10;
    let x_3389 : vec4<f32> = u_xlat9;
    u_xlat69 = dot(vec3<f32>(x_3387.x, x_3387.y, x_3387.z), vec3<f32>(x_3389.x, x_3389.y, x_3389.z));
    let x_3392 : f32 = u_xlat69;
    u_xlat69 = clamp(x_3392, 0.0f, 1.0f);
    let x_3394 : f32 = u_xlat66;
    let x_3395 : f32 = u_xlat66;
    u_xlat66 = (x_3394 * x_3395);
    let x_3397 : f32 = u_xlat66;
    let x_3399 : f32 = u_xlat48.x;
    u_xlat66 = ((x_3397 * x_3399) + 1.000010014f);
    let x_3402 : f32 = u_xlat69;
    let x_3403 : f32 = u_xlat69;
    u_xlat69 = (x_3402 * x_3403);
    let x_3405 : f32 = u_xlat66;
    let x_3406 : f32 = u_xlat66;
    u_xlat66 = (x_3405 * x_3406);
    let x_3408 : f32 = u_xlat69;
    u_xlat69 = max(x_3408, 0.100000001f);
    let x_3410 : f32 = u_xlat66;
    let x_3411 : f32 = u_xlat69;
    u_xlat66 = (x_3410 * x_3411);
    let x_3413 : f32 = u_xlat68;
    let x_3414 : f32 = u_xlat66;
    u_xlat66 = (x_3413 * x_3414);
    let x_3416 : f32 = u_xlat67;
    let x_3417 : f32 = u_xlat66;
    u_xlat66 = (x_3416 / x_3417);
    let x_3419 : vec3<f32> = u_xlat2;
    let x_3420 : f32 = u_xlat66;
    let x_3423 : vec3<f32> = u_xlat3;
    let x_3424 : vec3<f32> = ((x_3419 * vec3<f32>(x_3420, x_3420, x_3420)) + x_3423);
    let x_3425 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3424.x, x_3424.y, x_3424.z, x_3425.w);
    let x_3427 : vec4<f32> = u_xlat9;
    let x_3429 : vec4<f32> = u_xlat11;
    let x_3432 : vec4<f32> = u_xlat8;
    let x_3434 : vec3<f32> = ((vec3<f32>(x_3427.x, x_3427.y, x_3427.z) * vec3<f32>(x_3429.x, x_3429.y, x_3429.z)) + vec3<f32>(x_3432.x, x_3432.y, x_3432.z));
    let x_3435 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3434.x, x_3434.y, x_3434.z, x_3435.w);

    continuing {
      let x_3437 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3437 + bitcast<u32>(1i));
    }
  }
  let x_3439 : vec4<f32> = u_xlat5;
  let x_3441 : vec3<f32> = u_xlat6;
  let x_3444 : vec4<f32> = u_xlat4;
  let x_3446 : vec3<f32> = ((vec3<f32>(x_3439.x, x_3439.y, x_3439.z) * vec3<f32>(x_3441.x, x_3441.x, x_3441.x)) + vec3<f32>(x_3444.x, x_3444.y, x_3444.z));
  let x_3447 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3446.x, x_3446.y, x_3446.z, x_3447.w);
  let x_3449 : vec4<f32> = u_xlat8;
  let x_3451 : vec4<f32> = u_xlat0;
  let x_3453 : vec3<f32> = (vec3<f32>(x_3449.x, x_3449.y, x_3449.z) + vec3<f32>(x_3451.x, x_3451.y, x_3451.z));
  let x_3454 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3453.x, x_3453.y, x_3453.z, x_3454.w);
  let x_3457 : f32 = u_xlat65;
  let x_3458 : f32 = u_xlat65;
  u_xlat63 = (x_3457 * -(x_3458));
  let x_3461 : f32 = u_xlat63;
  u_xlat63 = exp2(x_3461);
  let x_3463 : vec4<f32> = u_xlat0;
  let x_3467 : vec4<f32> = x_146.unity_FogColor;
  let x_3470 : vec3<f32> = (vec3<f32>(x_3463.x, x_3463.y, x_3463.z) + -(vec3<f32>(x_3467.x, x_3467.y, x_3467.z)));
  let x_3471 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3470.x, x_3470.y, x_3470.z, x_3471.w);
  let x_3475 : f32 = u_xlat63;
  let x_3477 : vec4<f32> = u_xlat0;
  let x_3481 : vec4<f32> = x_146.unity_FogColor;
  let x_3483 : vec3<f32> = ((vec3<f32>(x_3475, x_3475, x_3475) * vec3<f32>(x_3477.x, x_3477.y, x_3477.z)) + vec3<f32>(x_3481.x, x_3481.y, x_3481.z));
  let x_3484 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3483.x, x_3483.y, x_3483.z, x_3484.w);
  let x_3488 : u32 = x_146.x_RenderingLayerMaxInt;
  let x_3490 : f32 = x_59.unity_RenderingLayer.x;
  u_xlatu0 = (x_3488 & bitcast<u32>(x_3490));
  let x_3493 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_3493);
  let x_3498 : f32 = u_xlat0.x;
  let x_3500 : f32 = x_146.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_3498 * x_3500);
  let x_3505 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_3505, 0.0f, 1.0f);
  SV_Target0.w = 1.0f;
  let x_3509 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_3509.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
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

