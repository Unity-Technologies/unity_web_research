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

@group(0) @binding(8) var x_MainTex : texture_2d<f32>;

@group(0) @binding(19) var sampler_MainTex : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_146 : PGlobals;

var<private> vs_INTERP0 : vec3<f32>;

@group(0) @binding(11) var Texture2D_D7D66558 : texture_2d<f32>;

@group(0) @binding(22) var samplerTexture2D_D7D66558 : sampler;

@group(1) @binding(6) var<uniform> x_204 : UnityPerMaterial;

@group(0) @binding(9) var Texture2D_DE8BF47E : texture_2d<f32>;

@group(0) @binding(20) var samplerTexture2D_DE8BF47E : sampler;

@group(0) @binding(10) var Texture2D_C005B064 : texture_2d<f32>;

@group(0) @binding(21) var samplerTexture2D_C005B064 : sampler;

@group(0) @binding(7) var x_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1 : texture_2d<f32>;

@group(0) @binding(18) var sampler_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1 : sampler;

@group(1) @binding(3) var<uniform> x_667 : MainLightShadows;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(13) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP4 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(15) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_2381 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(12) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2863 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_2973 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(17) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var x_2330 : f32;
  var u_xlat46 : f32;
  var x_2463 : f32;
  var x_2474 : vec3<f32>;
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
  var x_3266 : f32;
  var x_3279 : f32;
  var x_3331 : f32;
  var x_3342 : vec3<f32>;
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
  let x_886 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_883, x_885);
  u_xlat5 = x_886;
  let x_891 : vec2<f32> = vs_INTERP4;
  let x_893 : f32 = x_146.x_GlobalMipBias.x;
  let x_894 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_891, x_893);
  u_xlat6 = vec3<f32>(x_894.x, x_894.y, x_894.z);
  let x_896 : vec4<f32> = u_xlat5;
  let x_899 : vec3<f32> = (vec3<f32>(x_896.x, x_896.y, x_896.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_900 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_899.x, x_899.y, x_899.z, x_900.w);
  let x_902 : vec3<f32> = u_xlat21;
  let x_903 : vec4<f32> = u_xlat5;
  u_xlat66 = dot(x_902, vec3<f32>(x_903.x, x_903.y, x_903.z));
  let x_906 : f32 = u_xlat66;
  u_xlat66 = (x_906 + 0.5f);
  let x_909 : f32 = u_xlat66;
  let x_911 : vec3<f32> = u_xlat6;
  let x_912 : vec3<f32> = (vec3<f32>(x_909, x_909, x_909) * x_911);
  let x_913 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_912.x, x_912.y, x_912.z, x_913.w);
  let x_916 : f32 = u_xlat5.w;
  u_xlat66 = max(x_916, 0.0001f);
  let x_919 : vec4<f32> = u_xlat5;
  let x_921 : f32 = u_xlat66;
  let x_923 : vec3<f32> = (vec3<f32>(x_919.x, x_919.y, x_919.z) / vec3<f32>(x_921, x_921, x_921));
  let x_924 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_923.x, x_923.y, x_923.z, x_924.w);
  let x_927 : vec4<f32> = x_146.x_ScaledScreenParams;
  let x_928 : vec2<f32> = vec2<f32>(x_927.x, x_927.y);
  let x_932 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_928.x, x_928.y));
  let x_933 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_932.x, x_932.y, x_933.z);
  let x_935 : vec3<f32> = u_xlat6;
  let x_937 : vec4<f32> = hlslcc_FragCoord;
  let x_939 : vec2<f32> = (vec2<f32>(x_935.x, x_935.y) * vec2<f32>(x_937.x, x_937.y));
  let x_940 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_939.x, x_939.y, x_940.z);
  let x_943 : f32 = u_xlat6.y;
  let x_946 : f32 = x_146.x_ScaleBiasRt.x;
  let x_949 : f32 = x_146.x_ScaleBiasRt.y;
  u_xlat66 = ((x_943 * x_946) + x_949);
  let x_951 : f32 = u_xlat66;
  u_xlat6.z = (-(x_951) + 1.0f);
  let x_955 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_955 * vec3<f32>(0.863999963f, 0.863999963f, 0.863999963f));
  let x_959 : vec4<f32> = u_xlat1;
  let x_961 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_959.w, x_959.w, x_959.w) * x_961) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_966 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_966 * vec3<f32>(0.100000001f, 0.100000001f, 0.100000001f)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_973 : f32 = u_xlat0.x;
  u_xlat64 = (-(x_973) + 1.0f);
  let x_976 : f32 = u_xlat64;
  let x_977 : f32 = u_xlat64;
  u_xlat66 = (x_976 * x_977);
  let x_979 : f32 = u_xlat66;
  u_xlat66 = max(x_979, 0.0078125f);
  let x_982 : f32 = u_xlat66;
  let x_983 : f32 = u_xlat66;
  u_xlat67 = (x_982 * x_983);
  let x_986 : f32 = u_xlat0.x;
  u_xlat0.x = (x_986 + 0.136000037f);
  let x_991 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_991, 1.0f);
  let x_995 : f32 = u_xlat66;
  u_xlat68 = ((x_995 * 4.0f) + 2.0f);
  let x_1003 : vec3<f32> = u_xlat6;
  let x_1006 : f32 = x_146.x_GlobalMipBias.x;
  let x_1007 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_1003.x, x_1003.z), x_1006);
  u_xlat6.x = x_1007.x;
  let x_1012 : f32 = u_xlat6.x;
  u_xlat27 = (x_1012 + -1.0f);
  let x_1015 : f32 = x_146.x_AmbientOcclusionParam.w;
  let x_1016 : f32 = u_xlat27;
  u_xlat27 = ((x_1015 * x_1016) + 1.0f);
  let x_1020 : f32 = u_xlat7.x;
  let x_1022 : f32 = u_xlat6.x;
  u_xlat6.x = min(x_1020, x_1022);
  let x_1027 : f32 = x_667.x_MainLightShadowParams.y;
  u_xlatb48 = (0.0f < x_1027);
  let x_1029 : bool = u_xlatb48;
  if (x_1029) {
    let x_1033 : f32 = x_667.x_MainLightShadowParams.y;
    u_xlatb48 = (x_1033 == 1.0f);
    let x_1035 : bool = u_xlatb48;
    if (x_1035) {
      let x_1038 : vec4<f32> = u_xlat4;
      let x_1042 : vec4<f32> = x_667.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_1038.x, x_1038.y, x_1038.x, x_1038.y) + x_1042);
      let x_1045 : vec4<f32> = u_xlat7;
      let x_1046 : vec2<f32> = vec2<f32>(x_1045.x, x_1045.y);
      let x_1048 : f32 = u_xlat4.z;
      txVec0 = vec3<f32>(x_1046.x, x_1046.y, x_1048);
      let x_1061 : vec3<f32> = txVec0;
      let x_1063 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1061.xy, x_1061.z);
      u_xlat8.x = x_1063;
      let x_1066 : vec4<f32> = u_xlat7;
      let x_1067 : vec2<f32> = vec2<f32>(x_1066.z, x_1066.w);
      let x_1069 : f32 = u_xlat4.z;
      txVec1 = vec3<f32>(x_1067.x, x_1067.y, x_1069);
      let x_1076 : vec3<f32> = txVec1;
      let x_1078 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1076.xy, x_1076.z);
      u_xlat8.y = x_1078;
      let x_1080 : vec4<f32> = u_xlat4;
      let x_1084 : vec4<f32> = x_667.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_1080.x, x_1080.y, x_1080.x, x_1080.y) + x_1084);
      let x_1087 : vec4<f32> = u_xlat7;
      let x_1088 : vec2<f32> = vec2<f32>(x_1087.x, x_1087.y);
      let x_1090 : f32 = u_xlat4.z;
      txVec2 = vec3<f32>(x_1088.x, x_1088.y, x_1090);
      let x_1097 : vec3<f32> = txVec2;
      let x_1099 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1097.xy, x_1097.z);
      u_xlat8.z = x_1099;
      let x_1102 : vec4<f32> = u_xlat7;
      let x_1103 : vec2<f32> = vec2<f32>(x_1102.z, x_1102.w);
      let x_1105 : f32 = u_xlat4.z;
      txVec3 = vec3<f32>(x_1103.x, x_1103.y, x_1105);
      let x_1112 : vec3<f32> = txVec3;
      let x_1114 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1112.xy, x_1112.z);
      u_xlat8.w = x_1114;
      let x_1117 : vec4<f32> = u_xlat8;
      u_xlat48.x = dot(x_1117, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1125 : f32 = x_667.x_MainLightShadowParams.y;
      u_xlatb69 = (x_1125 == 2.0f);
      let x_1127 : bool = u_xlatb69;
      if (x_1127) {
        let x_1130 : vec4<f32> = u_xlat4;
        let x_1133 : vec4<f32> = x_667.x_MainLightShadowmapSize;
        let x_1137 : vec2<f32> = ((vec2<f32>(x_1130.x, x_1130.y) * vec2<f32>(x_1133.z, x_1133.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1138 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1137.x, x_1137.y, x_1138.z, x_1138.w);
        let x_1140 : vec4<f32> = u_xlat7;
        let x_1142 : vec2<f32> = floor(vec2<f32>(x_1140.x, x_1140.y));
        let x_1143 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1142.x, x_1142.y, x_1143.z, x_1143.w);
        let x_1146 : vec4<f32> = u_xlat4;
        let x_1149 : vec4<f32> = x_667.x_MainLightShadowmapSize;
        let x_1152 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_1146.x, x_1146.y) * vec2<f32>(x_1149.z, x_1149.w)) + -(vec2<f32>(x_1152.x, x_1152.y)));
        let x_1156 : vec2<f32> = u_xlat49;
        u_xlat8 = (vec4<f32>(x_1156.x, x_1156.x, x_1156.y, x_1156.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1161 : vec4<f32> = u_xlat8;
        let x_1163 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1161.x, x_1161.x, x_1161.z, x_1161.z) * vec4<f32>(x_1163.x, x_1163.x, x_1163.z, x_1163.z));
        let x_1166 : vec4<f32> = u_xlat9;
        let x_1170 : vec2<f32> = (vec2<f32>(x_1166.y, x_1166.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_1171 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1170.x, x_1171.y, x_1170.y, x_1171.w);
        let x_1173 : vec4<f32> = u_xlat9;
        let x_1176 : vec2<f32> = u_xlat49;
        let x_1178 : vec2<f32> = ((vec2<f32>(x_1173.x, x_1173.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1176));
        let x_1179 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1178.x, x_1178.y, x_1179.z, x_1179.w);
        let x_1182 : vec2<f32> = u_xlat49;
        u_xlat51 = (-(x_1182) + vec2<f32>(1.0f, 1.0f));
        let x_1186 : vec2<f32> = u_xlat49;
        let x_1188 : vec2<f32> = min(x_1186, vec2<f32>(0.0f, 0.0f));
        let x_1189 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1188.x, x_1188.y, x_1189.z, x_1189.w);
        let x_1191 : vec4<f32> = u_xlat10;
        let x_1194 : vec4<f32> = u_xlat10;
        let x_1197 : vec2<f32> = u_xlat51;
        let x_1198 : vec2<f32> = ((-(vec2<f32>(x_1191.x, x_1191.y)) * vec2<f32>(x_1194.x, x_1194.y)) + x_1197);
        let x_1199 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1198.x, x_1198.y, x_1199.z, x_1199.w);
        let x_1201 : vec2<f32> = u_xlat49;
        u_xlat49 = max(x_1201, vec2<f32>(0.0f, 0.0f));
        let x_1203 : vec2<f32> = u_xlat49;
        let x_1205 : vec2<f32> = u_xlat49;
        let x_1207 : vec4<f32> = u_xlat8;
        u_xlat49 = ((-(x_1203) * x_1205) + vec2<f32>(x_1207.y, x_1207.w));
        let x_1210 : vec4<f32> = u_xlat10;
        let x_1212 : vec2<f32> = (vec2<f32>(x_1210.x, x_1210.y) + vec2<f32>(1.0f, 1.0f));
        let x_1213 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1212.x, x_1212.y, x_1213.z, x_1213.w);
        let x_1215 : vec2<f32> = u_xlat49;
        u_xlat49 = (x_1215 + vec2<f32>(1.0f, 1.0f));
        let x_1218 : vec4<f32> = u_xlat9;
        let x_1222 : vec2<f32> = (vec2<f32>(x_1218.x, x_1218.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1223 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1222.x, x_1222.y, x_1223.z, x_1223.w);
        let x_1225 : vec2<f32> = u_xlat51;
        let x_1226 : vec2<f32> = (x_1225 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1227 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1226.x, x_1226.y, x_1227.z, x_1227.w);
        let x_1229 : vec4<f32> = u_xlat10;
        let x_1231 : vec2<f32> = (vec2<f32>(x_1229.x, x_1229.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1232 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1231.x, x_1231.y, x_1232.z, x_1232.w);
        let x_1235 : vec2<f32> = u_xlat49;
        let x_1236 : vec2<f32> = (x_1235 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1237 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1236.x, x_1236.y, x_1237.z, x_1237.w);
        let x_1239 : vec4<f32> = u_xlat8;
        u_xlat49 = (vec2<f32>(x_1239.y, x_1239.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1243 : f32 = u_xlat10.x;
        u_xlat11.z = x_1243;
        let x_1246 : f32 = u_xlat49.x;
        u_xlat11.w = x_1246;
        let x_1249 : f32 = u_xlat12.x;
        u_xlat9.z = x_1249;
        let x_1252 : f32 = u_xlat8.x;
        u_xlat9.w = x_1252;
        let x_1255 : vec4<f32> = u_xlat9;
        let x_1257 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_1255.z, x_1255.w, x_1255.x, x_1255.z) + vec4<f32>(x_1257.z, x_1257.w, x_1257.x, x_1257.z));
        let x_1261 : f32 = u_xlat11.y;
        u_xlat10.z = x_1261;
        let x_1264 : f32 = u_xlat49.y;
        u_xlat10.w = x_1264;
        let x_1267 : f32 = u_xlat9.y;
        u_xlat12.z = x_1267;
        let x_1270 : f32 = u_xlat8.z;
        u_xlat12.w = x_1270;
        let x_1272 : vec4<f32> = u_xlat10;
        let x_1274 : vec4<f32> = u_xlat12;
        let x_1276 : vec3<f32> = (vec3<f32>(x_1272.z, x_1272.y, x_1272.w) + vec3<f32>(x_1274.z, x_1274.y, x_1274.w));
        let x_1277 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1276.x, x_1276.y, x_1276.z, x_1277.w);
        let x_1279 : vec4<f32> = u_xlat9;
        let x_1281 : vec4<f32> = u_xlat13;
        let x_1283 : vec3<f32> = (vec3<f32>(x_1279.x, x_1279.z, x_1279.w) / vec3<f32>(x_1281.z, x_1281.w, x_1281.y));
        let x_1284 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1283.x, x_1283.y, x_1283.z, x_1284.w);
        let x_1286 : vec4<f32> = u_xlat9;
        let x_1291 : vec3<f32> = (vec3<f32>(x_1286.x, x_1286.y, x_1286.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1292 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1291.x, x_1291.y, x_1291.z, x_1292.w);
        let x_1294 : vec4<f32> = u_xlat12;
        let x_1296 : vec4<f32> = u_xlat8;
        let x_1298 : vec3<f32> = (vec3<f32>(x_1294.z, x_1294.y, x_1294.w) / vec3<f32>(x_1296.x, x_1296.y, x_1296.z));
        let x_1299 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1298.x, x_1298.y, x_1298.z, x_1299.w);
        let x_1301 : vec4<f32> = u_xlat10;
        let x_1303 : vec3<f32> = (vec3<f32>(x_1301.x, x_1301.y, x_1301.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1304 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1303.x, x_1303.y, x_1303.z, x_1304.w);
        let x_1306 : vec4<f32> = u_xlat9;
        let x_1309 : vec4<f32> = x_667.x_MainLightShadowmapSize;
        let x_1311 : vec3<f32> = (vec3<f32>(x_1306.y, x_1306.x, x_1306.z) * vec3<f32>(x_1309.x, x_1309.x, x_1309.x));
        let x_1312 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1311.x, x_1311.y, x_1311.z, x_1312.w);
        let x_1314 : vec4<f32> = u_xlat10;
        let x_1317 : vec4<f32> = x_667.x_MainLightShadowmapSize;
        let x_1319 : vec3<f32> = (vec3<f32>(x_1314.x, x_1314.y, x_1314.z) * vec3<f32>(x_1317.y, x_1317.y, x_1317.y));
        let x_1320 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1319.x, x_1319.y, x_1319.z, x_1320.w);
        let x_1323 : f32 = u_xlat10.x;
        u_xlat9.w = x_1323;
        let x_1325 : vec4<f32> = u_xlat7;
        let x_1328 : vec4<f32> = x_667.x_MainLightShadowmapSize;
        let x_1331 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1325.x, x_1325.y, x_1325.x, x_1325.y) * vec4<f32>(x_1328.x, x_1328.y, x_1328.x, x_1328.y)) + vec4<f32>(x_1331.y, x_1331.w, x_1331.x, x_1331.w));
        let x_1334 : vec4<f32> = u_xlat7;
        let x_1337 : vec4<f32> = x_667.x_MainLightShadowmapSize;
        let x_1340 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_1334.x, x_1334.y) * vec2<f32>(x_1337.x, x_1337.y)) + vec2<f32>(x_1340.z, x_1340.w));
        let x_1344 : f32 = u_xlat9.y;
        u_xlat10.w = x_1344;
        let x_1346 : vec4<f32> = u_xlat10;
        let x_1347 : vec2<f32> = vec2<f32>(x_1346.y, x_1346.z);
        let x_1348 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1348.x, x_1347.x, x_1348.z, x_1347.y);
        let x_1350 : vec4<f32> = u_xlat7;
        let x_1353 : vec4<f32> = x_667.x_MainLightShadowmapSize;
        let x_1356 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1350.x, x_1350.y, x_1350.x, x_1350.y) * vec4<f32>(x_1353.x, x_1353.y, x_1353.x, x_1353.y)) + vec4<f32>(x_1356.x, x_1356.y, x_1356.z, x_1356.y));
        let x_1359 : vec4<f32> = u_xlat7;
        let x_1362 : vec4<f32> = x_667.x_MainLightShadowmapSize;
        let x_1365 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1359.x, x_1359.y, x_1359.x, x_1359.y) * vec4<f32>(x_1362.x, x_1362.y, x_1362.x, x_1362.y)) + vec4<f32>(x_1365.w, x_1365.y, x_1365.w, x_1365.z));
        let x_1368 : vec4<f32> = u_xlat7;
        let x_1371 : vec4<f32> = x_667.x_MainLightShadowmapSize;
        let x_1374 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1368.x, x_1368.y, x_1368.x, x_1368.y) * vec4<f32>(x_1371.x, x_1371.y, x_1371.x, x_1371.y)) + vec4<f32>(x_1374.x, x_1374.w, x_1374.z, x_1374.w));
        let x_1378 : vec4<f32> = u_xlat8;
        let x_1380 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_1378.x, x_1378.x, x_1378.x, x_1378.y) * vec4<f32>(x_1380.z, x_1380.w, x_1380.y, x_1380.z));
        let x_1384 : vec4<f32> = u_xlat8;
        let x_1386 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_1384.y, x_1384.y, x_1384.z, x_1384.z) * x_1386);
        let x_1390 : f32 = u_xlat8.z;
        let x_1392 : f32 = u_xlat13.y;
        u_xlat69 = (x_1390 * x_1392);
        let x_1395 : vec4<f32> = u_xlat11;
        let x_1396 : vec2<f32> = vec2<f32>(x_1395.x, x_1395.y);
        let x_1398 : f32 = u_xlat4.z;
        txVec4 = vec3<f32>(x_1396.x, x_1396.y, x_1398);
        let x_1405 : vec3<f32> = txVec4;
        let x_1407 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1405.xy, x_1405.z);
        u_xlat7.x = x_1407;
        let x_1410 : vec4<f32> = u_xlat11;
        let x_1411 : vec2<f32> = vec2<f32>(x_1410.z, x_1410.w);
        let x_1413 : f32 = u_xlat4.z;
        txVec5 = vec3<f32>(x_1411.x, x_1411.y, x_1413);
        let x_1420 : vec3<f32> = txVec5;
        let x_1422 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1420.xy, x_1420.z);
        u_xlat28.x = x_1422;
        let x_1425 : f32 = u_xlat28.x;
        let x_1427 : f32 = u_xlat14.y;
        u_xlat28.x = (x_1425 * x_1427);
        let x_1431 : f32 = u_xlat14.x;
        let x_1433 : f32 = u_xlat7.x;
        let x_1436 : f32 = u_xlat28.x;
        u_xlat7.x = ((x_1431 * x_1433) + x_1436);
        let x_1440 : vec2<f32> = u_xlat49;
        let x_1442 : f32 = u_xlat4.z;
        txVec6 = vec3<f32>(x_1440.x, x_1440.y, x_1442);
        let x_1449 : vec3<f32> = txVec6;
        let x_1451 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1449.xy, x_1449.z);
        u_xlat28.x = x_1451;
        let x_1454 : f32 = u_xlat14.z;
        let x_1456 : f32 = u_xlat28.x;
        let x_1459 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1454 * x_1456) + x_1459);
        let x_1463 : vec4<f32> = u_xlat10;
        let x_1464 : vec2<f32> = vec2<f32>(x_1463.x, x_1463.y);
        let x_1466 : f32 = u_xlat4.z;
        txVec7 = vec3<f32>(x_1464.x, x_1464.y, x_1466);
        let x_1473 : vec3<f32> = txVec7;
        let x_1475 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1473.xy, x_1473.z);
        u_xlat28.x = x_1475;
        let x_1478 : f32 = u_xlat14.w;
        let x_1480 : f32 = u_xlat28.x;
        let x_1483 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1478 * x_1480) + x_1483);
        let x_1487 : vec4<f32> = u_xlat12;
        let x_1488 : vec2<f32> = vec2<f32>(x_1487.x, x_1487.y);
        let x_1490 : f32 = u_xlat4.z;
        txVec8 = vec3<f32>(x_1488.x, x_1488.y, x_1490);
        let x_1497 : vec3<f32> = txVec8;
        let x_1499 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1497.xy, x_1497.z);
        u_xlat28.x = x_1499;
        let x_1502 : f32 = u_xlat15.x;
        let x_1504 : f32 = u_xlat28.x;
        let x_1507 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1502 * x_1504) + x_1507);
        let x_1511 : vec4<f32> = u_xlat12;
        let x_1512 : vec2<f32> = vec2<f32>(x_1511.z, x_1511.w);
        let x_1514 : f32 = u_xlat4.z;
        txVec9 = vec3<f32>(x_1512.x, x_1512.y, x_1514);
        let x_1521 : vec3<f32> = txVec9;
        let x_1523 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1521.xy, x_1521.z);
        u_xlat28.x = x_1523;
        let x_1526 : f32 = u_xlat15.y;
        let x_1528 : f32 = u_xlat28.x;
        let x_1531 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1526 * x_1528) + x_1531);
        let x_1535 : vec4<f32> = u_xlat10;
        let x_1536 : vec2<f32> = vec2<f32>(x_1535.z, x_1535.w);
        let x_1538 : f32 = u_xlat4.z;
        txVec10 = vec3<f32>(x_1536.x, x_1536.y, x_1538);
        let x_1545 : vec3<f32> = txVec10;
        let x_1547 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1545.xy, x_1545.z);
        u_xlat28.x = x_1547;
        let x_1550 : f32 = u_xlat15.z;
        let x_1552 : f32 = u_xlat28.x;
        let x_1555 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1550 * x_1552) + x_1555);
        let x_1559 : vec4<f32> = u_xlat9;
        let x_1560 : vec2<f32> = vec2<f32>(x_1559.x, x_1559.y);
        let x_1562 : f32 = u_xlat4.z;
        txVec11 = vec3<f32>(x_1560.x, x_1560.y, x_1562);
        let x_1569 : vec3<f32> = txVec11;
        let x_1571 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1569.xy, x_1569.z);
        u_xlat28.x = x_1571;
        let x_1574 : f32 = u_xlat15.w;
        let x_1576 : f32 = u_xlat28.x;
        let x_1579 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1574 * x_1576) + x_1579);
        let x_1583 : vec4<f32> = u_xlat9;
        let x_1584 : vec2<f32> = vec2<f32>(x_1583.z, x_1583.w);
        let x_1586 : f32 = u_xlat4.z;
        txVec12 = vec3<f32>(x_1584.x, x_1584.y, x_1586);
        let x_1593 : vec3<f32> = txVec12;
        let x_1595 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1593.xy, x_1593.z);
        u_xlat28.x = x_1595;
        let x_1597 : f32 = u_xlat69;
        let x_1599 : f32 = u_xlat28.x;
        let x_1602 : f32 = u_xlat7.x;
        u_xlat48.x = ((x_1597 * x_1599) + x_1602);
      } else {
        let x_1606 : vec4<f32> = u_xlat4;
        let x_1609 : vec4<f32> = x_667.x_MainLightShadowmapSize;
        let x_1612 : vec2<f32> = ((vec2<f32>(x_1606.x, x_1606.y) * vec2<f32>(x_1609.z, x_1609.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1613 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1612.x, x_1612.y, x_1613.z, x_1613.w);
        let x_1615 : vec4<f32> = u_xlat7;
        let x_1617 : vec2<f32> = floor(vec2<f32>(x_1615.x, x_1615.y));
        let x_1618 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1617.x, x_1617.y, x_1618.z, x_1618.w);
        let x_1620 : vec4<f32> = u_xlat4;
        let x_1623 : vec4<f32> = x_667.x_MainLightShadowmapSize;
        let x_1626 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_1620.x, x_1620.y) * vec2<f32>(x_1623.z, x_1623.w)) + -(vec2<f32>(x_1626.x, x_1626.y)));
        let x_1630 : vec2<f32> = u_xlat49;
        u_xlat8 = (vec4<f32>(x_1630.x, x_1630.x, x_1630.y, x_1630.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1633 : vec4<f32> = u_xlat8;
        let x_1635 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1633.x, x_1633.x, x_1633.z, x_1633.z) * vec4<f32>(x_1635.x, x_1635.x, x_1635.z, x_1635.z));
        let x_1638 : vec4<f32> = u_xlat9;
        let x_1642 : vec2<f32> = (vec2<f32>(x_1638.y, x_1638.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1643 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1643.x, x_1642.x, x_1643.z, x_1642.y);
        let x_1645 : vec4<f32> = u_xlat9;
        let x_1648 : vec2<f32> = u_xlat49;
        let x_1650 : vec2<f32> = ((vec2<f32>(x_1645.x, x_1645.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1648));
        let x_1651 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1650.x, x_1651.y, x_1650.y, x_1651.w);
        let x_1653 : vec2<f32> = u_xlat49;
        let x_1655 : vec2<f32> = (-(x_1653) + vec2<f32>(1.0f, 1.0f));
        let x_1656 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1655.x, x_1655.y, x_1656.z, x_1656.w);
        let x_1658 : vec2<f32> = u_xlat49;
        u_xlat51 = min(x_1658, vec2<f32>(0.0f, 0.0f));
        let x_1660 : vec2<f32> = u_xlat51;
        let x_1662 : vec2<f32> = u_xlat51;
        let x_1664 : vec4<f32> = u_xlat9;
        let x_1666 : vec2<f32> = ((-(x_1660) * x_1662) + vec2<f32>(x_1664.x, x_1664.y));
        let x_1667 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1666.x, x_1666.y, x_1667.z, x_1667.w);
        let x_1669 : vec2<f32> = u_xlat49;
        u_xlat51 = max(x_1669, vec2<f32>(0.0f, 0.0f));
        let x_1672 : vec2<f32> = u_xlat51;
        let x_1674 : vec2<f32> = u_xlat51;
        let x_1676 : vec4<f32> = u_xlat8;
        let x_1678 : vec2<f32> = ((-(x_1672) * x_1674) + vec2<f32>(x_1676.y, x_1676.w));
        let x_1679 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1678.x, x_1679.y, x_1678.y);
        let x_1681 : vec4<f32> = u_xlat9;
        let x_1683 : vec2<f32> = (vec2<f32>(x_1681.x, x_1681.y) + vec2<f32>(2.0f, 2.0f));
        let x_1684 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1683.x, x_1683.y, x_1684.z, x_1684.w);
        let x_1686 : vec3<f32> = u_xlat29;
        let x_1688 : vec2<f32> = (vec2<f32>(x_1686.x, x_1686.z) + vec2<f32>(2.0f, 2.0f));
        let x_1689 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1689.x, x_1688.x, x_1689.z, x_1688.y);
        let x_1692 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1692 * 0.081632003f);
        let x_1696 : vec4<f32> = u_xlat8;
        let x_1699 : vec3<f32> = (vec3<f32>(x_1696.z, x_1696.x, x_1696.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1700 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1699.x, x_1699.y, x_1699.z, x_1700.w);
        let x_1702 : vec4<f32> = u_xlat9;
        let x_1705 : vec2<f32> = (vec2<f32>(x_1702.x, x_1702.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1706 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1705.x, x_1705.y, x_1706.z, x_1706.w);
        let x_1709 : f32 = u_xlat12.y;
        u_xlat11.x = x_1709;
        let x_1711 : vec2<f32> = u_xlat49;
        let x_1718 : vec2<f32> = ((vec2<f32>(x_1711.x, x_1711.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1719 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1719.x, x_1718.x, x_1719.z, x_1718.y);
        let x_1721 : vec2<f32> = u_xlat49;
        let x_1725 : vec2<f32> = ((vec2<f32>(x_1721.x, x_1721.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1726 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1725.x, x_1726.y, x_1725.y, x_1726.w);
        let x_1729 : f32 = u_xlat8.x;
        u_xlat9.y = x_1729;
        let x_1732 : f32 = u_xlat10.y;
        u_xlat9.w = x_1732;
        let x_1734 : vec4<f32> = u_xlat9;
        let x_1735 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1734 + x_1735);
        let x_1737 : vec2<f32> = u_xlat49;
        let x_1740 : vec2<f32> = ((vec2<f32>(x_1737.y, x_1737.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1741 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1741.x, x_1740.x, x_1741.z, x_1740.y);
        let x_1743 : vec2<f32> = u_xlat49;
        let x_1746 : vec2<f32> = ((vec2<f32>(x_1743.y, x_1743.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1747 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1746.x, x_1747.y, x_1746.y, x_1747.w);
        let x_1750 : f32 = u_xlat8.y;
        u_xlat10.y = x_1750;
        let x_1752 : vec4<f32> = u_xlat10;
        let x_1753 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1752 + x_1753);
        let x_1755 : vec4<f32> = u_xlat9;
        let x_1756 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1755 / x_1756);
        let x_1758 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1758 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1764 : vec4<f32> = u_xlat10;
        let x_1765 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1764 / x_1765);
        let x_1767 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1767 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1769 : vec4<f32> = u_xlat9;
        let x_1772 : vec4<f32> = x_667.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1769.w, x_1769.x, x_1769.y, x_1769.z) * vec4<f32>(x_1772.x, x_1772.x, x_1772.x, x_1772.x));
        let x_1775 : vec4<f32> = u_xlat10;
        let x_1778 : vec4<f32> = x_667.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1775.x, x_1775.w, x_1775.y, x_1775.z) * vec4<f32>(x_1778.y, x_1778.y, x_1778.y, x_1778.y));
        let x_1781 : vec4<f32> = u_xlat9;
        let x_1782 : vec3<f32> = vec3<f32>(x_1781.y, x_1781.z, x_1781.w);
        let x_1783 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1782.x, x_1783.y, x_1782.y, x_1782.z);
        let x_1786 : f32 = u_xlat10.x;
        u_xlat12.y = x_1786;
        let x_1788 : vec4<f32> = u_xlat7;
        let x_1791 : vec4<f32> = x_667.x_MainLightShadowmapSize;
        let x_1794 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1788.x, x_1788.y, x_1788.x, x_1788.y) * vec4<f32>(x_1791.x, x_1791.y, x_1791.x, x_1791.y)) + vec4<f32>(x_1794.x, x_1794.y, x_1794.z, x_1794.y));
        let x_1797 : vec4<f32> = u_xlat7;
        let x_1800 : vec4<f32> = x_667.x_MainLightShadowmapSize;
        let x_1803 : vec4<f32> = u_xlat12;
        u_xlat49 = ((vec2<f32>(x_1797.x, x_1797.y) * vec2<f32>(x_1800.x, x_1800.y)) + vec2<f32>(x_1803.w, x_1803.y));
        let x_1807 : f32 = u_xlat12.y;
        u_xlat9.y = x_1807;
        let x_1810 : f32 = u_xlat10.z;
        u_xlat12.y = x_1810;
        let x_1812 : vec4<f32> = u_xlat7;
        let x_1815 : vec4<f32> = x_667.x_MainLightShadowmapSize;
        let x_1818 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1812.x, x_1812.y, x_1812.x, x_1812.y) * vec4<f32>(x_1815.x, x_1815.y, x_1815.x, x_1815.y)) + vec4<f32>(x_1818.x, x_1818.y, x_1818.z, x_1818.y));
        let x_1821 : vec4<f32> = u_xlat7;
        let x_1824 : vec4<f32> = x_667.x_MainLightShadowmapSize;
        let x_1827 : vec4<f32> = u_xlat12;
        let x_1829 : vec2<f32> = ((vec2<f32>(x_1821.x, x_1821.y) * vec2<f32>(x_1824.x, x_1824.y)) + vec2<f32>(x_1827.w, x_1827.y));
        let x_1830 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1829.x, x_1829.y, x_1830.z, x_1830.w);
        let x_1833 : f32 = u_xlat12.y;
        u_xlat9.z = x_1833;
        let x_1836 : vec4<f32> = u_xlat7;
        let x_1839 : vec4<f32> = x_667.x_MainLightShadowmapSize;
        let x_1842 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1836.x, x_1836.y, x_1836.x, x_1836.y) * vec4<f32>(x_1839.x, x_1839.y, x_1839.x, x_1839.y)) + vec4<f32>(x_1842.x, x_1842.y, x_1842.x, x_1842.z));
        let x_1846 : f32 = u_xlat10.w;
        u_xlat12.y = x_1846;
        let x_1849 : vec4<f32> = u_xlat7;
        let x_1852 : vec4<f32> = x_667.x_MainLightShadowmapSize;
        let x_1855 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1849.x, x_1849.y, x_1849.x, x_1849.y) * vec4<f32>(x_1852.x, x_1852.y, x_1852.x, x_1852.y)) + vec4<f32>(x_1855.x, x_1855.y, x_1855.z, x_1855.y));
        let x_1859 : vec4<f32> = u_xlat7;
        let x_1862 : vec4<f32> = x_667.x_MainLightShadowmapSize;
        let x_1865 : vec4<f32> = u_xlat12;
        u_xlat30 = ((vec2<f32>(x_1859.x, x_1859.y) * vec2<f32>(x_1862.x, x_1862.y)) + vec2<f32>(x_1865.w, x_1865.y));
        let x_1869 : f32 = u_xlat12.y;
        u_xlat9.w = x_1869;
        let x_1872 : vec4<f32> = u_xlat7;
        let x_1875 : vec4<f32> = x_667.x_MainLightShadowmapSize;
        let x_1878 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_1872.x, x_1872.y) * vec2<f32>(x_1875.x, x_1875.y)) + vec2<f32>(x_1878.x, x_1878.w));
        let x_1881 : vec4<f32> = u_xlat12;
        let x_1882 : vec3<f32> = vec3<f32>(x_1881.x, x_1881.z, x_1881.w);
        let x_1883 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1882.x, x_1883.y, x_1882.y, x_1882.z);
        let x_1885 : vec4<f32> = u_xlat7;
        let x_1888 : vec4<f32> = x_667.x_MainLightShadowmapSize;
        let x_1891 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1885.x, x_1885.y, x_1885.x, x_1885.y) * vec4<f32>(x_1888.x, x_1888.y, x_1888.x, x_1888.y)) + vec4<f32>(x_1891.x, x_1891.y, x_1891.z, x_1891.y));
        let x_1895 : vec4<f32> = u_xlat7;
        let x_1898 : vec4<f32> = x_667.x_MainLightShadowmapSize;
        let x_1901 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1895.x, x_1895.y) * vec2<f32>(x_1898.x, x_1898.y)) + vec2<f32>(x_1901.w, x_1901.y));
        let x_1905 : f32 = u_xlat9.x;
        u_xlat10.x = x_1905;
        let x_1907 : vec4<f32> = u_xlat7;
        let x_1910 : vec4<f32> = x_667.x_MainLightShadowmapSize;
        let x_1913 : vec4<f32> = u_xlat10;
        let x_1915 : vec2<f32> = ((vec2<f32>(x_1907.x, x_1907.y) * vec2<f32>(x_1910.x, x_1910.y)) + vec2<f32>(x_1913.x, x_1913.y));
        let x_1916 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1915.x, x_1915.y, x_1916.z, x_1916.w);
        let x_1919 : vec4<f32> = u_xlat8;
        let x_1921 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1919.x, x_1919.x, x_1919.x, x_1919.x) * x_1921);
        let x_1924 : vec4<f32> = u_xlat8;
        let x_1926 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1924.y, x_1924.y, x_1924.y, x_1924.y) * x_1926);
        let x_1929 : vec4<f32> = u_xlat8;
        let x_1931 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1929.z, x_1929.z, x_1929.z, x_1929.z) * x_1931);
        let x_1933 : vec4<f32> = u_xlat8;
        let x_1935 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1933.w, x_1933.w, x_1933.w, x_1933.w) * x_1935);
        let x_1938 : vec4<f32> = u_xlat13;
        let x_1939 : vec2<f32> = vec2<f32>(x_1938.x, x_1938.y);
        let x_1941 : f32 = u_xlat4.z;
        txVec13 = vec3<f32>(x_1939.x, x_1939.y, x_1941);
        let x_1948 : vec3<f32> = txVec13;
        let x_1950 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1948.xy, x_1948.z);
        u_xlat69 = x_1950;
        let x_1952 : vec4<f32> = u_xlat13;
        let x_1953 : vec2<f32> = vec2<f32>(x_1952.z, x_1952.w);
        let x_1955 : f32 = u_xlat4.z;
        txVec14 = vec3<f32>(x_1953.x, x_1953.y, x_1955);
        let x_1962 : vec3<f32> = txVec14;
        let x_1964 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1962.xy, x_1962.z);
        u_xlat9.x = x_1964;
        let x_1967 : f32 = u_xlat9.x;
        let x_1969 : f32 = u_xlat18.y;
        u_xlat9.x = (x_1967 * x_1969);
        let x_1973 : f32 = u_xlat18.x;
        let x_1974 : f32 = u_xlat69;
        let x_1977 : f32 = u_xlat9.x;
        u_xlat69 = ((x_1973 * x_1974) + x_1977);
        let x_1980 : vec2<f32> = u_xlat49;
        let x_1982 : f32 = u_xlat4.z;
        txVec15 = vec3<f32>(x_1980.x, x_1980.y, x_1982);
        let x_1989 : vec3<f32> = txVec15;
        let x_1991 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1989.xy, x_1989.z);
        u_xlat49.x = x_1991;
        let x_1994 : f32 = u_xlat18.z;
        let x_1996 : f32 = u_xlat49.x;
        let x_1998 : f32 = u_xlat69;
        u_xlat69 = ((x_1994 * x_1996) + x_1998);
        let x_2001 : vec4<f32> = u_xlat16;
        let x_2002 : vec2<f32> = vec2<f32>(x_2001.x, x_2001.y);
        let x_2004 : f32 = u_xlat4.z;
        txVec16 = vec3<f32>(x_2002.x, x_2002.y, x_2004);
        let x_2011 : vec3<f32> = txVec16;
        let x_2013 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2011.xy, x_2011.z);
        u_xlat49.x = x_2013;
        let x_2016 : f32 = u_xlat18.w;
        let x_2018 : f32 = u_xlat49.x;
        let x_2020 : f32 = u_xlat69;
        u_xlat69 = ((x_2016 * x_2018) + x_2020);
        let x_2023 : vec4<f32> = u_xlat14;
        let x_2024 : vec2<f32> = vec2<f32>(x_2023.x, x_2023.y);
        let x_2026 : f32 = u_xlat4.z;
        txVec17 = vec3<f32>(x_2024.x, x_2024.y, x_2026);
        let x_2033 : vec3<f32> = txVec17;
        let x_2035 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2033.xy, x_2033.z);
        u_xlat49.x = x_2035;
        let x_2038 : f32 = u_xlat19.x;
        let x_2040 : f32 = u_xlat49.x;
        let x_2042 : f32 = u_xlat69;
        u_xlat69 = ((x_2038 * x_2040) + x_2042);
        let x_2045 : vec4<f32> = u_xlat14;
        let x_2046 : vec2<f32> = vec2<f32>(x_2045.z, x_2045.w);
        let x_2048 : f32 = u_xlat4.z;
        txVec18 = vec3<f32>(x_2046.x, x_2046.y, x_2048);
        let x_2055 : vec3<f32> = txVec18;
        let x_2057 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2055.xy, x_2055.z);
        u_xlat49.x = x_2057;
        let x_2060 : f32 = u_xlat19.y;
        let x_2062 : f32 = u_xlat49.x;
        let x_2064 : f32 = u_xlat69;
        u_xlat69 = ((x_2060 * x_2062) + x_2064);
        let x_2067 : vec4<f32> = u_xlat15;
        let x_2068 : vec2<f32> = vec2<f32>(x_2067.x, x_2067.y);
        let x_2070 : f32 = u_xlat4.z;
        txVec19 = vec3<f32>(x_2068.x, x_2068.y, x_2070);
        let x_2077 : vec3<f32> = txVec19;
        let x_2079 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2077.xy, x_2077.z);
        u_xlat49.x = x_2079;
        let x_2082 : f32 = u_xlat19.z;
        let x_2084 : f32 = u_xlat49.x;
        let x_2086 : f32 = u_xlat69;
        u_xlat69 = ((x_2082 * x_2084) + x_2086);
        let x_2089 : vec4<f32> = u_xlat16;
        let x_2090 : vec2<f32> = vec2<f32>(x_2089.z, x_2089.w);
        let x_2092 : f32 = u_xlat4.z;
        txVec20 = vec3<f32>(x_2090.x, x_2090.y, x_2092);
        let x_2099 : vec3<f32> = txVec20;
        let x_2101 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2099.xy, x_2099.z);
        u_xlat49.x = x_2101;
        let x_2104 : f32 = u_xlat19.w;
        let x_2106 : f32 = u_xlat49.x;
        let x_2108 : f32 = u_xlat69;
        u_xlat69 = ((x_2104 * x_2106) + x_2108);
        let x_2111 : vec4<f32> = u_xlat17;
        let x_2112 : vec2<f32> = vec2<f32>(x_2111.x, x_2111.y);
        let x_2114 : f32 = u_xlat4.z;
        txVec21 = vec3<f32>(x_2112.x, x_2112.y, x_2114);
        let x_2121 : vec3<f32> = txVec21;
        let x_2123 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2121.xy, x_2121.z);
        u_xlat49.x = x_2123;
        let x_2126 : f32 = u_xlat20.x;
        let x_2128 : f32 = u_xlat49.x;
        let x_2130 : f32 = u_xlat69;
        u_xlat69 = ((x_2126 * x_2128) + x_2130);
        let x_2133 : vec4<f32> = u_xlat17;
        let x_2134 : vec2<f32> = vec2<f32>(x_2133.z, x_2133.w);
        let x_2136 : f32 = u_xlat4.z;
        txVec22 = vec3<f32>(x_2134.x, x_2134.y, x_2136);
        let x_2143 : vec3<f32> = txVec22;
        let x_2145 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2143.xy, x_2143.z);
        u_xlat49.x = x_2145;
        let x_2148 : f32 = u_xlat20.y;
        let x_2150 : f32 = u_xlat49.x;
        let x_2152 : f32 = u_xlat69;
        u_xlat69 = ((x_2148 * x_2150) + x_2152);
        let x_2155 : vec2<f32> = u_xlat30;
        let x_2157 : f32 = u_xlat4.z;
        txVec23 = vec3<f32>(x_2155.x, x_2155.y, x_2157);
        let x_2164 : vec3<f32> = txVec23;
        let x_2166 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2164.xy, x_2164.z);
        u_xlat49.x = x_2166;
        let x_2169 : f32 = u_xlat20.z;
        let x_2171 : f32 = u_xlat49.x;
        let x_2173 : f32 = u_xlat69;
        u_xlat69 = ((x_2169 * x_2171) + x_2173);
        let x_2176 : vec2<f32> = u_xlat57;
        let x_2178 : f32 = u_xlat4.z;
        txVec24 = vec3<f32>(x_2176.x, x_2176.y, x_2178);
        let x_2185 : vec3<f32> = txVec24;
        let x_2187 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2185.xy, x_2185.z);
        u_xlat49.x = x_2187;
        let x_2190 : f32 = u_xlat20.w;
        let x_2192 : f32 = u_xlat49.x;
        let x_2194 : f32 = u_xlat69;
        u_xlat69 = ((x_2190 * x_2192) + x_2194);
        let x_2197 : vec4<f32> = u_xlat12;
        let x_2198 : vec2<f32> = vec2<f32>(x_2197.x, x_2197.y);
        let x_2200 : f32 = u_xlat4.z;
        txVec25 = vec3<f32>(x_2198.x, x_2198.y, x_2200);
        let x_2207 : vec3<f32> = txVec25;
        let x_2209 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2207.xy, x_2207.z);
        u_xlat49.x = x_2209;
        let x_2212 : f32 = u_xlat8.x;
        let x_2214 : f32 = u_xlat49.x;
        let x_2216 : f32 = u_xlat69;
        u_xlat69 = ((x_2212 * x_2214) + x_2216);
        let x_2219 : vec4<f32> = u_xlat12;
        let x_2220 : vec2<f32> = vec2<f32>(x_2219.z, x_2219.w);
        let x_2222 : f32 = u_xlat4.z;
        txVec26 = vec3<f32>(x_2220.x, x_2220.y, x_2222);
        let x_2229 : vec3<f32> = txVec26;
        let x_2231 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2229.xy, x_2229.z);
        u_xlat49.x = x_2231;
        let x_2234 : f32 = u_xlat8.y;
        let x_2236 : f32 = u_xlat49.x;
        let x_2238 : f32 = u_xlat69;
        u_xlat69 = ((x_2234 * x_2236) + x_2238);
        let x_2241 : vec2<f32> = u_xlat52;
        let x_2243 : f32 = u_xlat4.z;
        txVec27 = vec3<f32>(x_2241.x, x_2241.y, x_2243);
        let x_2250 : vec3<f32> = txVec27;
        let x_2252 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2250.xy, x_2250.z);
        u_xlat49.x = x_2252;
        let x_2255 : f32 = u_xlat8.z;
        let x_2257 : f32 = u_xlat49.x;
        let x_2259 : f32 = u_xlat69;
        u_xlat69 = ((x_2255 * x_2257) + x_2259);
        let x_2262 : vec4<f32> = u_xlat7;
        let x_2263 : vec2<f32> = vec2<f32>(x_2262.x, x_2262.y);
        let x_2265 : f32 = u_xlat4.z;
        txVec28 = vec3<f32>(x_2263.x, x_2263.y, x_2265);
        let x_2272 : vec3<f32> = txVec28;
        let x_2274 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2272.xy, x_2272.z);
        u_xlat7.x = x_2274;
        let x_2277 : f32 = u_xlat8.w;
        let x_2279 : f32 = u_xlat7.x;
        let x_2281 : f32 = u_xlat69;
        u_xlat48.x = ((x_2277 * x_2279) + x_2281);
      }
    }
  } else {
    let x_2286 : vec4<f32> = u_xlat4;
    let x_2287 : vec2<f32> = vec2<f32>(x_2286.x, x_2286.y);
    let x_2289 : f32 = u_xlat4.z;
    txVec29 = vec3<f32>(x_2287.x, x_2287.y, x_2289);
    let x_2296 : vec3<f32> = txVec29;
    let x_2298 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2296.xy, x_2296.z);
    u_xlat48.x = x_2298;
  }
  let x_2301 : f32 = x_667.x_MainLightShadowParams.x;
  u_xlat4.x = (-(x_2301) + 1.0f);
  let x_2306 : f32 = u_xlat48.x;
  let x_2308 : f32 = x_667.x_MainLightShadowParams.x;
  let x_2311 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_2306 * x_2308) + x_2311);
  let x_2316 : f32 = u_xlat4.z;
  u_xlatb25.x = (0.0f >= x_2316);
  let x_2321 : f32 = u_xlat4.z;
  u_xlatb46 = (x_2321 >= 1.0f);
  let x_2323 : bool = u_xlatb46;
  let x_2325 : bool = u_xlatb25.x;
  u_xlatb25.x = (x_2323 | x_2325);
  let x_2329 : bool = u_xlatb25.x;
  if (x_2329) {
    x_2330 = 1.0f;
  } else {
    let x_2335 : f32 = u_xlat4.x;
    x_2330 = x_2335;
  }
  let x_2336 : f32 = x_2330;
  u_xlat4.x = x_2336;
  let x_2338 : vec3<f32> = vs_INTERP0;
  let x_2340 : vec3<f32> = x_146.x_WorldSpaceCameraPos;
  let x_2342 : vec3<f32> = (x_2338 + -(x_2340));
  let x_2343 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2342.x, x_2342.y, x_2342.z, x_2343.w);
  let x_2345 : vec4<f32> = u_xlat7;
  let x_2347 : vec4<f32> = u_xlat7;
  u_xlat25.x = dot(vec3<f32>(x_2345.x, x_2345.y, x_2345.z), vec3<f32>(x_2347.x, x_2347.y, x_2347.z));
  let x_2352 : f32 = u_xlat25.x;
  let x_2354 : f32 = x_667.x_MainLightShadowParams.z;
  let x_2357 : f32 = x_667.x_MainLightShadowParams.w;
  u_xlat25.x = ((x_2352 * x_2354) + x_2357);
  let x_2361 : f32 = u_xlat25.x;
  u_xlat25.x = clamp(x_2361, 0.0f, 1.0f);
  let x_2366 : f32 = u_xlat4.x;
  u_xlat46 = (-(x_2366) + 1.0f);
  let x_2370 : f32 = u_xlat25.x;
  let x_2371 : f32 = u_xlat46;
  let x_2374 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_2370 * x_2371) + x_2374);
  let x_2383 : f32 = x_2381.x_MainLightCookieTextureFormat;
  u_xlatb25.x = !((x_2383 == -1.0f));
  let x_2387 : bool = u_xlatb25.x;
  if (x_2387) {
    let x_2390 : vec3<f32> = vs_INTERP0;
    let x_2393 : vec4<f32> = x_2381.x_MainLightWorldToLight[1i];
    let x_2395 : vec2<f32> = (vec2<f32>(x_2390.y, x_2390.y) * vec2<f32>(x_2393.x, x_2393.y));
    let x_2396 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_2395.x, x_2395.y, x_2396.z);
    let x_2399 : vec4<f32> = x_2381.x_MainLightWorldToLight[0i];
    let x_2401 : vec3<f32> = vs_INTERP0;
    let x_2404 : vec3<f32> = u_xlat25;
    let x_2406 : vec2<f32> = ((vec2<f32>(x_2399.x, x_2399.y) * vec2<f32>(x_2401.x, x_2401.x)) + vec2<f32>(x_2404.x, x_2404.y));
    let x_2407 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_2406.x, x_2406.y, x_2407.z);
    let x_2410 : vec4<f32> = x_2381.x_MainLightWorldToLight[2i];
    let x_2412 : vec3<f32> = vs_INTERP0;
    let x_2415 : vec3<f32> = u_xlat25;
    let x_2417 : vec2<f32> = ((vec2<f32>(x_2410.x, x_2410.y) * vec2<f32>(x_2412.z, x_2412.z)) + vec2<f32>(x_2415.x, x_2415.y));
    let x_2418 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_2417.x, x_2417.y, x_2418.z);
    let x_2420 : vec3<f32> = u_xlat25;
    let x_2423 : vec4<f32> = x_2381.x_MainLightWorldToLight[3i];
    let x_2425 : vec2<f32> = (vec2<f32>(x_2420.x, x_2420.y) + vec2<f32>(x_2423.x, x_2423.y));
    let x_2426 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_2425.x, x_2425.y, x_2426.z);
    let x_2428 : vec3<f32> = u_xlat25;
    let x_2431 : vec2<f32> = ((vec2<f32>(x_2428.x, x_2428.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2432 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_2431.x, x_2431.y, x_2432.z);
    let x_2439 : vec3<f32> = u_xlat25;
    let x_2442 : f32 = x_146.x_GlobalMipBias.x;
    let x_2443 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2439.x, x_2439.y), x_2442);
    u_xlat7 = x_2443;
    let x_2445 : f32 = x_2381.x_MainLightCookieTextureFormat;
    let x_2447 : f32 = x_2381.x_MainLightCookieTextureFormat;
    let x_2449 : f32 = x_2381.x_MainLightCookieTextureFormat;
    let x_2451 : f32 = x_2381.x_MainLightCookieTextureFormat;
    let x_2452 : vec4<f32> = vec4<f32>(x_2445, x_2447, x_2449, x_2451);
    let x_2459 : vec4<bool> = (vec4<f32>(x_2452.x, x_2452.y, x_2452.z, x_2452.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb25 = vec2<bool>(x_2459.x, x_2459.y);
    let x_2462 : bool = u_xlatb25.y;
    if (x_2462) {
      let x_2467 : f32 = u_xlat7.w;
      x_2463 = x_2467;
    } else {
      let x_2470 : f32 = u_xlat7.x;
      x_2463 = x_2470;
    }
    let x_2471 : f32 = x_2463;
    u_xlat46 = x_2471;
    let x_2473 : bool = u_xlatb25.x;
    if (x_2473) {
      let x_2477 : vec4<f32> = u_xlat7;
      x_2474 = vec3<f32>(x_2477.x, x_2477.y, x_2477.z);
    } else {
      let x_2480 : f32 = u_xlat46;
      x_2474 = vec3<f32>(x_2480, x_2480, x_2480);
    }
    let x_2482 : vec3<f32> = x_2474;
    let x_2483 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2482.x, x_2482.y, x_2482.z, x_2483.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_2489 : vec4<f32> = u_xlat7;
  let x_2492 : vec4<f32> = x_146.x_MainLightColor;
  let x_2494 : vec3<f32> = (vec3<f32>(x_2489.x, x_2489.y, x_2489.z) * vec3<f32>(x_2492.x, x_2492.y, x_2492.z));
  let x_2495 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2494.x, x_2494.y, x_2494.z, x_2495.w);
  let x_2497 : f32 = u_xlat27;
  let x_2499 : vec4<f32> = u_xlat7;
  let x_2501 : vec3<f32> = (vec3<f32>(x_2497, x_2497, x_2497) * vec3<f32>(x_2499.x, x_2499.y, x_2499.z));
  let x_2502 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2501.x, x_2501.y, x_2501.z, x_2502.w);
  let x_2504 : vec4<f32> = u_xlat1;
  let x_2507 : vec3<f32> = u_xlat21;
  u_xlat25.x = dot(-(vec3<f32>(x_2504.x, x_2504.y, x_2504.z)), x_2507);
  let x_2511 : f32 = u_xlat25.x;
  let x_2513 : f32 = u_xlat25.x;
  u_xlat25.x = (x_2511 + x_2513);
  let x_2516 : vec3<f32> = u_xlat21;
  let x_2517 : vec3<f32> = u_xlat25;
  let x_2521 : vec4<f32> = u_xlat1;
  let x_2524 : vec3<f32> = ((x_2516 * -(vec3<f32>(x_2517.x, x_2517.x, x_2517.x))) + -(vec3<f32>(x_2521.x, x_2521.y, x_2521.z)));
  let x_2525 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2524.x, x_2524.y, x_2524.z, x_2525.w);
  let x_2527 : vec3<f32> = u_xlat21;
  let x_2528 : vec4<f32> = u_xlat1;
  u_xlat25.x = dot(x_2527, vec3<f32>(x_2528.x, x_2528.y, x_2528.z));
  let x_2533 : f32 = u_xlat25.x;
  u_xlat25.x = clamp(x_2533, 0.0f, 1.0f);
  let x_2537 : f32 = u_xlat25.x;
  u_xlat25.x = (-(x_2537) + 1.0f);
  let x_2542 : f32 = u_xlat25.x;
  let x_2544 : f32 = u_xlat25.x;
  u_xlat25.x = (x_2542 * x_2544);
  let x_2548 : f32 = u_xlat25.x;
  let x_2550 : f32 = u_xlat25.x;
  u_xlat25.x = (x_2548 * x_2550);
  let x_2553 : f32 = u_xlat64;
  u_xlat46 = ((-(x_2553) * 0.699999988f) + 1.700000048f);
  let x_2559 : f32 = u_xlat64;
  let x_2560 : f32 = u_xlat46;
  u_xlat64 = (x_2559 * x_2560);
  let x_2562 : f32 = u_xlat64;
  u_xlat64 = (x_2562 * 6.0f);
  let x_2573 : vec4<f32> = u_xlat8;
  let x_2575 : f32 = u_xlat64;
  let x_2576 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2573.x, x_2573.y, x_2573.z), x_2575);
  u_xlat8 = x_2576;
  let x_2578 : f32 = u_xlat8.w;
  u_xlat64 = (x_2578 + -1.0f);
  let x_2581 : f32 = x_59.unity_SpecCube0_HDR.w;
  let x_2582 : f32 = u_xlat64;
  u_xlat64 = ((x_2581 * x_2582) + 1.0f);
  let x_2585 : f32 = u_xlat64;
  u_xlat64 = max(x_2585, 0.0f);
  let x_2587 : f32 = u_xlat64;
  u_xlat64 = log2(x_2587);
  let x_2589 : f32 = u_xlat64;
  let x_2591 : f32 = x_59.unity_SpecCube0_HDR.y;
  u_xlat64 = (x_2589 * x_2591);
  let x_2593 : f32 = u_xlat64;
  u_xlat64 = exp2(x_2593);
  let x_2595 : f32 = u_xlat64;
  let x_2597 : f32 = x_59.unity_SpecCube0_HDR.x;
  u_xlat64 = (x_2595 * x_2597);
  let x_2599 : vec4<f32> = u_xlat8;
  let x_2601 : f32 = u_xlat64;
  let x_2603 : vec3<f32> = (vec3<f32>(x_2599.x, x_2599.y, x_2599.z) * vec3<f32>(x_2601, x_2601, x_2601));
  let x_2604 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2603.x, x_2603.y, x_2603.z, x_2604.w);
  let x_2606 : f32 = u_xlat66;
  let x_2608 : f32 = u_xlat66;
  u_xlat48 = ((vec2<f32>(x_2606, x_2606) * vec2<f32>(x_2608, x_2608)) + vec2<f32>(-1.0f, 1.0f));
  let x_2614 : f32 = u_xlat48.y;
  u_xlat64 = (1.0f / x_2614);
  let x_2616 : vec3<f32> = u_xlat2;
  let x_2618 : vec4<f32> = u_xlat0;
  let x_2620 : vec3<f32> = (-(x_2616) + vec3<f32>(x_2618.x, x_2618.x, x_2618.x));
  let x_2621 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2620.x, x_2620.y, x_2620.z, x_2621.w);
  let x_2623 : vec3<f32> = u_xlat25;
  let x_2625 : vec4<f32> = u_xlat9;
  let x_2628 : vec3<f32> = u_xlat2;
  let x_2629 : vec3<f32> = ((vec3<f32>(x_2623.x, x_2623.x, x_2623.x) * vec3<f32>(x_2625.x, x_2625.y, x_2625.z)) + x_2628);
  let x_2630 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2629.x, x_2629.y, x_2629.z, x_2630.w);
  let x_2632 : f32 = u_xlat64;
  let x_2634 : vec4<f32> = u_xlat9;
  let x_2636 : vec3<f32> = (vec3<f32>(x_2632, x_2632, x_2632) * vec3<f32>(x_2634.x, x_2634.y, x_2634.z));
  let x_2637 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2636.x, x_2636.y, x_2636.z, x_2637.w);
  let x_2639 : vec4<f32> = u_xlat8;
  let x_2641 : vec4<f32> = u_xlat9;
  let x_2643 : vec3<f32> = (vec3<f32>(x_2639.x, x_2639.y, x_2639.z) * vec3<f32>(x_2641.x, x_2641.y, x_2641.z));
  let x_2644 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2643.x, x_2643.y, x_2643.z, x_2644.w);
  let x_2646 : vec4<f32> = u_xlat5;
  let x_2648 : vec3<f32> = u_xlat3;
  let x_2650 : vec4<f32> = u_xlat8;
  let x_2652 : vec3<f32> = ((vec3<f32>(x_2646.x, x_2646.y, x_2646.z) * x_2648) + vec3<f32>(x_2650.x, x_2650.y, x_2650.z));
  let x_2653 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2652.x, x_2652.y, x_2652.z, x_2653.w);
  let x_2656 : f32 = u_xlat4.x;
  let x_2658 : f32 = x_59.unity_LightData.z;
  u_xlat0.x = (x_2656 * x_2658);
  let x_2661 : vec3<f32> = u_xlat21;
  let x_2663 : vec4<f32> = x_146.x_MainLightPosition;
  u_xlat64 = dot(x_2661, vec3<f32>(x_2663.x, x_2663.y, x_2663.z));
  let x_2666 : f32 = u_xlat64;
  u_xlat64 = clamp(x_2666, 0.0f, 1.0f);
  let x_2669 : f32 = u_xlat0.x;
  let x_2670 : f32 = u_xlat64;
  u_xlat0.x = (x_2669 * x_2670);
  let x_2673 : vec4<f32> = u_xlat0;
  let x_2675 : vec4<f32> = u_xlat7;
  let x_2677 : vec3<f32> = (vec3<f32>(x_2673.x, x_2673.x, x_2673.x) * vec3<f32>(x_2675.x, x_2675.y, x_2675.z));
  let x_2678 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2677.x, x_2677.y, x_2677.z, x_2678.w);
  let x_2680 : vec4<f32> = u_xlat1;
  let x_2683 : vec4<f32> = x_146.x_MainLightPosition;
  let x_2685 : vec3<f32> = (vec3<f32>(x_2680.x, x_2680.y, x_2680.z) + vec3<f32>(x_2683.x, x_2683.y, x_2683.z));
  let x_2686 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2685.x, x_2685.y, x_2685.z, x_2686.w);
  let x_2688 : vec4<f32> = u_xlat7;
  let x_2690 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(vec3<f32>(x_2688.x, x_2688.y, x_2688.z), vec3<f32>(x_2690.x, x_2690.y, x_2690.z));
  let x_2695 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2695, 1.17549435e-37f);
  let x_2699 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_2699);
  let x_2702 : vec4<f32> = u_xlat0;
  let x_2704 : vec4<f32> = u_xlat7;
  let x_2706 : vec3<f32> = (vec3<f32>(x_2702.x, x_2702.x, x_2702.x) * vec3<f32>(x_2704.x, x_2704.y, x_2704.z));
  let x_2707 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2706.x, x_2706.y, x_2706.z, x_2707.w);
  let x_2709 : vec3<f32> = u_xlat21;
  let x_2710 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_2709, vec3<f32>(x_2710.x, x_2710.y, x_2710.z));
  let x_2715 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_2715, 0.0f, 1.0f);
  let x_2719 : vec4<f32> = x_146.x_MainLightPosition;
  let x_2721 : vec4<f32> = u_xlat7;
  u_xlat64 = dot(vec3<f32>(x_2719.x, x_2719.y, x_2719.z), vec3<f32>(x_2721.x, x_2721.y, x_2721.z));
  let x_2724 : f32 = u_xlat64;
  u_xlat64 = clamp(x_2724, 0.0f, 1.0f);
  let x_2727 : f32 = u_xlat0.x;
  let x_2729 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2727 * x_2729);
  let x_2733 : f32 = u_xlat0.x;
  let x_2735 : f32 = u_xlat48.x;
  u_xlat0.x = ((x_2733 * x_2735) + 1.000010014f);
  let x_2740 : f32 = u_xlat64;
  let x_2741 : f32 = u_xlat64;
  u_xlat64 = (x_2740 * x_2741);
  let x_2744 : f32 = u_xlat0.x;
  let x_2746 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2744 * x_2746);
  let x_2749 : f32 = u_xlat64;
  u_xlat64 = max(x_2749, 0.100000001f);
  let x_2752 : f32 = u_xlat0.x;
  let x_2753 : f32 = u_xlat64;
  u_xlat0.x = (x_2752 * x_2753);
  let x_2756 : f32 = u_xlat68;
  let x_2758 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2756 * x_2758);
  let x_2761 : f32 = u_xlat67;
  let x_2763 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2761 / x_2763);
  let x_2766 : vec3<f32> = u_xlat2;
  let x_2767 : vec4<f32> = u_xlat0;
  let x_2770 : vec3<f32> = u_xlat3;
  let x_2771 : vec3<f32> = ((x_2766 * vec3<f32>(x_2767.x, x_2767.x, x_2767.x)) + x_2770);
  let x_2772 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2771.x, x_2771.y, x_2771.z, x_2772.w);
  let x_2774 : vec4<f32> = u_xlat4;
  let x_2776 : vec4<f32> = u_xlat7;
  let x_2778 : vec3<f32> = (vec3<f32>(x_2774.x, x_2774.y, x_2774.z) * vec3<f32>(x_2776.x, x_2776.y, x_2776.z));
  let x_2779 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2778.x, x_2778.y, x_2778.z, x_2779.w);
  let x_2782 : f32 = x_146.x_AdditionalLightsCount.x;
  let x_2784 : f32 = x_59.unity_LightData.y;
  u_xlat0.x = min(x_2782, x_2784);
  let x_2789 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_2789));
  let x_2794 : f32 = x_2381.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2796 : f32 = x_2381.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2798 : f32 = x_2381.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2800 : f32 = x_2381.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2801 : vec4<f32> = vec4<f32>(x_2794, x_2796, x_2798, x_2800);
  let x_2807 : vec4<bool> = (vec4<f32>(x_2801.x, x_2801.y, x_2801.z, x_2801.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2807.x, x_2807.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2818 : u32 = u_xlatu_loop_1;
    let x_2819 : u32 = u_xlatu0;
    if ((x_2818 < x_2819)) {
    } else {
      break;
    }
    let x_2822 : u32 = u_xlatu_loop_1;
    u_xlatu66 = (x_2822 >> 2u);
    let x_2825 : u32 = u_xlatu_loop_1;
    u_xlati69 = bitcast<i32>((x_2825 & 3u));
    let x_2828 : u32 = u_xlatu66;
    let x_2831 : vec4<f32> = x_59.unity_LightIndices[bitcast<i32>(x_2828)];
    let x_2841 : i32 = u_xlati69;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2846 : vec4<u32> = indexable[x_2841];
    u_xlat66 = dot(x_2831, bitcast<vec4<f32>>(x_2846));
    let x_2849 : f32 = u_xlat66;
    u_xlatu66 = bitcast<u32>(i32(x_2849));
    let x_2852 : vec3<f32> = vs_INTERP0;
    let x_2864 : u32 = u_xlatu66;
    let x_2867 : vec4<f32> = x_2863.x_AdditionalLightsPosition[bitcast<i32>(x_2864)];
    let x_2870 : u32 = u_xlatu66;
    let x_2873 : vec4<f32> = x_2863.x_AdditionalLightsPosition[bitcast<i32>(x_2870)];
    let x_2875 : vec3<f32> = ((-(x_2852) * vec3<f32>(x_2867.w, x_2867.w, x_2867.w)) + vec3<f32>(x_2873.x, x_2873.y, x_2873.z));
    let x_2876 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2875.x, x_2875.y, x_2875.z, x_2876.w);
    let x_2878 : vec4<f32> = u_xlat9;
    let x_2880 : vec4<f32> = u_xlat9;
    u_xlat69 = dot(vec3<f32>(x_2878.x, x_2878.y, x_2878.z), vec3<f32>(x_2880.x, x_2880.y, x_2880.z));
    let x_2883 : f32 = u_xlat69;
    u_xlat69 = max(x_2883, 6.10351562e-05f);
    let x_2886 : f32 = u_xlat69;
    u_xlat49.x = inverseSqrt(x_2886);
    let x_2889 : vec2<f32> = u_xlat49;
    let x_2891 : vec4<f32> = u_xlat9;
    let x_2893 : vec3<f32> = (vec3<f32>(x_2889.x, x_2889.x, x_2889.x) * vec3<f32>(x_2891.x, x_2891.y, x_2891.z));
    let x_2894 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2893.x, x_2893.y, x_2893.z, x_2894.w);
    let x_2897 : f32 = u_xlat69;
    u_xlat70 = (1.0f / x_2897);
    let x_2899 : f32 = u_xlat69;
    let x_2900 : u32 = u_xlatu66;
    let x_2903 : f32 = x_2863.x_AdditionalLightsAttenuation[bitcast<i32>(x_2900)].x;
    u_xlat69 = (x_2899 * x_2903);
    let x_2905 : f32 = u_xlat69;
    let x_2907 : f32 = u_xlat69;
    u_xlat69 = ((-(x_2905) * x_2907) + 1.0f);
    let x_2910 : f32 = u_xlat69;
    u_xlat69 = max(x_2910, 0.0f);
    let x_2912 : f32 = u_xlat69;
    let x_2913 : f32 = u_xlat69;
    u_xlat69 = (x_2912 * x_2913);
    let x_2915 : f32 = u_xlat69;
    let x_2916 : f32 = u_xlat70;
    u_xlat69 = (x_2915 * x_2916);
    let x_2918 : u32 = u_xlatu66;
    let x_2921 : vec4<f32> = x_2863.x_AdditionalLightsSpotDir[bitcast<i32>(x_2918)];
    let x_2923 : vec4<f32> = u_xlat10;
    u_xlat70 = dot(vec3<f32>(x_2921.x, x_2921.y, x_2921.z), vec3<f32>(x_2923.x, x_2923.y, x_2923.z));
    let x_2926 : f32 = u_xlat70;
    let x_2927 : u32 = u_xlatu66;
    let x_2930 : f32 = x_2863.x_AdditionalLightsAttenuation[bitcast<i32>(x_2927)].z;
    let x_2932 : u32 = u_xlatu66;
    let x_2935 : f32 = x_2863.x_AdditionalLightsAttenuation[bitcast<i32>(x_2932)].w;
    u_xlat70 = ((x_2926 * x_2930) + x_2935);
    let x_2937 : f32 = u_xlat70;
    u_xlat70 = clamp(x_2937, 0.0f, 1.0f);
    let x_2939 : f32 = u_xlat70;
    let x_2940 : f32 = u_xlat70;
    u_xlat70 = (x_2939 * x_2940);
    let x_2942 : f32 = u_xlat69;
    let x_2943 : f32 = u_xlat70;
    u_xlat69 = (x_2942 * x_2943);
    let x_2946 : u32 = u_xlatu66;
    u_xlatu70 = (x_2946 >> 5u);
    let x_2949 : u32 = u_xlatu66;
    u_xlati71 = (1i << bitcast<u32>((bitcast<i32>(x_2949) & 31i)));
    let x_2955 : i32 = u_xlati71;
    let x_2957 : u32 = u_xlatu70;
    let x_2960 : f32 = x_2381.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2957)].el;
    u_xlati70 = bitcast<i32>((bitcast<u32>(x_2955) & bitcast<u32>(x_2960)));
    let x_2964 : i32 = u_xlati70;
    if ((x_2964 != 0i)) {
      let x_2974 : u32 = u_xlatu66;
      let x_2977 : f32 = x_2973.x_AdditionalLightsLightTypes[bitcast<i32>(x_2974)].el;
      u_xlati70 = i32(x_2977);
      let x_2979 : i32 = u_xlati70;
      u_xlati71 = select(1i, 0i, (x_2979 != 0i));
      let x_2983 : u32 = u_xlatu66;
      u_xlati72 = (bitcast<i32>(x_2983) << bitcast<u32>(2i));
      let x_2986 : i32 = u_xlati71;
      if ((x_2986 != 0i)) {
        let x_2990 : vec3<f32> = vs_INTERP0;
        let x_2992 : i32 = u_xlati72;
        let x_2995 : i32 = u_xlati72;
        let x_2999 : vec4<f32> = x_2973.x_AdditionalLightsWorldToLights[((x_2992 + 1i) / 4i)][((x_2995 + 1i) % 4i)];
        let x_3001 : vec3<f32> = (vec3<f32>(x_2990.y, x_2990.y, x_2990.y) * vec3<f32>(x_2999.x, x_2999.y, x_2999.w));
        let x_3002 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3001.x, x_3001.y, x_3001.z, x_3002.w);
        let x_3004 : i32 = u_xlati72;
        let x_3006 : i32 = u_xlati72;
        let x_3009 : vec4<f32> = x_2973.x_AdditionalLightsWorldToLights[(x_3004 / 4i)][(x_3006 % 4i)];
        let x_3011 : vec3<f32> = vs_INTERP0;
        let x_3014 : vec4<f32> = u_xlat11;
        let x_3016 : vec3<f32> = ((vec3<f32>(x_3009.x, x_3009.y, x_3009.w) * vec3<f32>(x_3011.x, x_3011.x, x_3011.x)) + vec3<f32>(x_3014.x, x_3014.y, x_3014.z));
        let x_3017 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3016.x, x_3016.y, x_3016.z, x_3017.w);
        let x_3019 : i32 = u_xlati72;
        let x_3022 : i32 = u_xlati72;
        let x_3026 : vec4<f32> = x_2973.x_AdditionalLightsWorldToLights[((x_3019 + 2i) / 4i)][((x_3022 + 2i) % 4i)];
        let x_3028 : vec3<f32> = vs_INTERP0;
        let x_3031 : vec4<f32> = u_xlat11;
        let x_3033 : vec3<f32> = ((vec3<f32>(x_3026.x, x_3026.y, x_3026.w) * vec3<f32>(x_3028.z, x_3028.z, x_3028.z)) + vec3<f32>(x_3031.x, x_3031.y, x_3031.z));
        let x_3034 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3033.x, x_3033.y, x_3033.z, x_3034.w);
        let x_3036 : vec4<f32> = u_xlat11;
        let x_3038 : i32 = u_xlati72;
        let x_3041 : i32 = u_xlati72;
        let x_3045 : vec4<f32> = x_2973.x_AdditionalLightsWorldToLights[((x_3038 + 3i) / 4i)][((x_3041 + 3i) % 4i)];
        let x_3047 : vec3<f32> = (vec3<f32>(x_3036.x, x_3036.y, x_3036.z) + vec3<f32>(x_3045.x, x_3045.y, x_3045.w));
        let x_3048 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3047.x, x_3047.y, x_3047.z, x_3048.w);
        let x_3050 : vec4<f32> = u_xlat11;
        let x_3052 : vec4<f32> = u_xlat11;
        let x_3054 : vec2<f32> = (vec2<f32>(x_3050.x, x_3050.y) / vec2<f32>(x_3052.z, x_3052.z));
        let x_3055 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3054.x, x_3054.y, x_3055.z, x_3055.w);
        let x_3057 : vec4<f32> = u_xlat11;
        let x_3060 : vec2<f32> = ((vec2<f32>(x_3057.x, x_3057.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3061 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3060.x, x_3060.y, x_3061.z, x_3061.w);
        let x_3063 : vec4<f32> = u_xlat11;
        let x_3067 : vec2<f32> = clamp(vec2<f32>(x_3063.x, x_3063.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3068 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3067.x, x_3067.y, x_3068.z, x_3068.w);
        let x_3070 : u32 = u_xlatu66;
        let x_3073 : vec4<f32> = x_2973.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3070)];
        let x_3075 : vec4<f32> = u_xlat11;
        let x_3078 : u32 = u_xlatu66;
        let x_3081 : vec4<f32> = x_2973.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3078)];
        let x_3083 : vec2<f32> = ((vec2<f32>(x_3073.x, x_3073.y) * vec2<f32>(x_3075.x, x_3075.y)) + vec2<f32>(x_3081.z, x_3081.w));
        let x_3084 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3083.x, x_3083.y, x_3084.z, x_3084.w);
      } else {
        let x_3088 : i32 = u_xlati70;
        u_xlatb70 = (x_3088 == 1i);
        let x_3090 : bool = u_xlatb70;
        u_xlati70 = select(0i, 1i, x_3090);
        let x_3092 : i32 = u_xlati70;
        if ((x_3092 != 0i)) {
          let x_3097 : vec3<f32> = vs_INTERP0;
          let x_3099 : i32 = u_xlati72;
          let x_3102 : i32 = u_xlati72;
          let x_3106 : vec4<f32> = x_2973.x_AdditionalLightsWorldToLights[((x_3099 + 1i) / 4i)][((x_3102 + 1i) % 4i)];
          u_xlat53 = (vec2<f32>(x_3097.y, x_3097.y) * vec2<f32>(x_3106.x, x_3106.y));
          let x_3109 : i32 = u_xlati72;
          let x_3111 : i32 = u_xlati72;
          let x_3114 : vec4<f32> = x_2973.x_AdditionalLightsWorldToLights[(x_3109 / 4i)][(x_3111 % 4i)];
          let x_3116 : vec3<f32> = vs_INTERP0;
          let x_3119 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_3114.x, x_3114.y) * vec2<f32>(x_3116.x, x_3116.x)) + x_3119);
          let x_3121 : i32 = u_xlati72;
          let x_3124 : i32 = u_xlati72;
          let x_3128 : vec4<f32> = x_2973.x_AdditionalLightsWorldToLights[((x_3121 + 2i) / 4i)][((x_3124 + 2i) % 4i)];
          let x_3130 : vec3<f32> = vs_INTERP0;
          let x_3133 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_3128.x, x_3128.y) * vec2<f32>(x_3130.z, x_3130.z)) + x_3133);
          let x_3135 : vec2<f32> = u_xlat53;
          let x_3136 : i32 = u_xlati72;
          let x_3139 : i32 = u_xlati72;
          let x_3143 : vec4<f32> = x_2973.x_AdditionalLightsWorldToLights[((x_3136 + 3i) / 4i)][((x_3139 + 3i) % 4i)];
          u_xlat53 = (x_3135 + vec2<f32>(x_3143.x, x_3143.y));
          let x_3146 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_3146 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3149 : vec2<f32> = u_xlat53;
          u_xlat53 = fract(x_3149);
          let x_3151 : u32 = u_xlatu66;
          let x_3154 : vec4<f32> = x_2973.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3151)];
          let x_3156 : vec2<f32> = u_xlat53;
          let x_3158 : u32 = u_xlatu66;
          let x_3161 : vec4<f32> = x_2973.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3158)];
          let x_3163 : vec2<f32> = ((vec2<f32>(x_3154.x, x_3154.y) * x_3156) + vec2<f32>(x_3161.z, x_3161.w));
          let x_3164 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3163.x, x_3163.y, x_3164.z, x_3164.w);
        } else {
          let x_3167 : vec3<f32> = vs_INTERP0;
          let x_3169 : i32 = u_xlati72;
          let x_3172 : i32 = u_xlati72;
          let x_3176 : vec4<f32> = x_2973.x_AdditionalLightsWorldToLights[((x_3169 + 1i) / 4i)][((x_3172 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_3167.y, x_3167.y, x_3167.y, x_3167.y) * x_3176);
          let x_3178 : i32 = u_xlati72;
          let x_3180 : i32 = u_xlati72;
          let x_3183 : vec4<f32> = x_2973.x_AdditionalLightsWorldToLights[(x_3178 / 4i)][(x_3180 % 4i)];
          let x_3184 : vec3<f32> = vs_INTERP0;
          let x_3187 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3183 * vec4<f32>(x_3184.x, x_3184.x, x_3184.x, x_3184.x)) + x_3187);
          let x_3189 : i32 = u_xlati72;
          let x_3192 : i32 = u_xlati72;
          let x_3196 : vec4<f32> = x_2973.x_AdditionalLightsWorldToLights[((x_3189 + 2i) / 4i)][((x_3192 + 2i) % 4i)];
          let x_3197 : vec3<f32> = vs_INTERP0;
          let x_3200 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3196 * vec4<f32>(x_3197.z, x_3197.z, x_3197.z, x_3197.z)) + x_3200);
          let x_3202 : vec4<f32> = u_xlat12;
          let x_3203 : i32 = u_xlati72;
          let x_3206 : i32 = u_xlati72;
          let x_3210 : vec4<f32> = x_2973.x_AdditionalLightsWorldToLights[((x_3203 + 3i) / 4i)][((x_3206 + 3i) % 4i)];
          u_xlat12 = (x_3202 + x_3210);
          let x_3212 : vec4<f32> = u_xlat12;
          let x_3214 : vec4<f32> = u_xlat12;
          let x_3216 : vec3<f32> = (vec3<f32>(x_3212.x, x_3212.y, x_3212.z) / vec3<f32>(x_3214.w, x_3214.w, x_3214.w));
          let x_3217 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3216.x, x_3216.y, x_3216.z, x_3217.w);
          let x_3219 : vec4<f32> = u_xlat12;
          let x_3221 : vec4<f32> = u_xlat12;
          u_xlat70 = dot(vec3<f32>(x_3219.x, x_3219.y, x_3219.z), vec3<f32>(x_3221.x, x_3221.y, x_3221.z));
          let x_3224 : f32 = u_xlat70;
          u_xlat70 = inverseSqrt(x_3224);
          let x_3226 : f32 = u_xlat70;
          let x_3228 : vec4<f32> = u_xlat12;
          let x_3230 : vec3<f32> = (vec3<f32>(x_3226, x_3226, x_3226) * vec3<f32>(x_3228.x, x_3228.y, x_3228.z));
          let x_3231 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3230.x, x_3230.y, x_3230.z, x_3231.w);
          let x_3233 : vec4<f32> = u_xlat12;
          u_xlat70 = dot(abs(vec3<f32>(x_3233.x, x_3233.y, x_3233.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3238 : f32 = u_xlat70;
          u_xlat70 = max(x_3238, 0.000001f);
          let x_3241 : f32 = u_xlat70;
          u_xlat70 = (1.0f / x_3241);
          let x_3243 : f32 = u_xlat70;
          let x_3245 : vec4<f32> = u_xlat12;
          let x_3247 : vec3<f32> = (vec3<f32>(x_3243, x_3243, x_3243) * vec3<f32>(x_3245.z, x_3245.x, x_3245.y));
          let x_3248 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3247.x, x_3247.y, x_3247.z, x_3248.w);
          let x_3251 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_3251);
          let x_3255 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_3255, 0.0f, 1.0f);
          let x_3259 : vec4<f32> = u_xlat13;
          let x_3262 : vec4<bool> = (vec4<f32>(x_3259.y, x_3259.z, x_3259.y, x_3259.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb53 = vec2<bool>(x_3262.x, x_3262.y);
          let x_3265 : bool = u_xlatb53.x;
          if (x_3265) {
            let x_3270 : f32 = u_xlat13.x;
            x_3266 = x_3270;
          } else {
            let x_3273 : f32 = u_xlat13.x;
            x_3266 = -(x_3273);
          }
          let x_3275 : f32 = x_3266;
          u_xlat53.x = x_3275;
          let x_3278 : bool = u_xlatb53.y;
          if (x_3278) {
            let x_3283 : f32 = u_xlat13.x;
            x_3279 = x_3283;
          } else {
            let x_3286 : f32 = u_xlat13.x;
            x_3279 = -(x_3286);
          }
          let x_3288 : f32 = x_3279;
          u_xlat53.y = x_3288;
          let x_3290 : vec4<f32> = u_xlat12;
          let x_3292 : f32 = u_xlat70;
          let x_3295 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_3290.x, x_3290.y) * vec2<f32>(x_3292, x_3292)) + x_3295);
          let x_3297 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_3297 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3300 : vec2<f32> = u_xlat53;
          u_xlat53 = clamp(x_3300, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3304 : u32 = u_xlatu66;
          let x_3307 : vec4<f32> = x_2973.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3304)];
          let x_3309 : vec2<f32> = u_xlat53;
          let x_3311 : u32 = u_xlatu66;
          let x_3314 : vec4<f32> = x_2973.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3311)];
          let x_3316 : vec2<f32> = ((vec2<f32>(x_3307.x, x_3307.y) * x_3309) + vec2<f32>(x_3314.z, x_3314.w));
          let x_3317 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3316.x, x_3316.y, x_3317.z, x_3317.w);
        }
      }
      let x_3324 : vec4<f32> = u_xlat11;
      let x_3327 : f32 = x_146.x_GlobalMipBias.x;
      let x_3328 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_3324.x, x_3324.y), x_3327);
      u_xlat11 = x_3328;
      let x_3330 : bool = u_xlatb7.y;
      if (x_3330) {
        let x_3335 : f32 = u_xlat11.w;
        x_3331 = x_3335;
      } else {
        let x_3338 : f32 = u_xlat11.x;
        x_3331 = x_3338;
      }
      let x_3339 : f32 = x_3331;
      u_xlat70 = x_3339;
      let x_3341 : bool = u_xlatb7.x;
      if (x_3341) {
        let x_3345 : vec4<f32> = u_xlat11;
        x_3342 = vec3<f32>(x_3345.x, x_3345.y, x_3345.z);
      } else {
        let x_3348 : f32 = u_xlat70;
        x_3342 = vec3<f32>(x_3348, x_3348, x_3348);
      }
      let x_3350 : vec3<f32> = x_3342;
      let x_3351 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3350.x, x_3350.y, x_3350.z, x_3351.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_3357 : vec4<f32> = u_xlat11;
    let x_3359 : u32 = u_xlatu66;
    let x_3362 : vec4<f32> = x_2863.x_AdditionalLightsColor[bitcast<i32>(x_3359)];
    let x_3364 : vec3<f32> = (vec3<f32>(x_3357.x, x_3357.y, x_3357.z) * vec3<f32>(x_3362.x, x_3362.y, x_3362.z));
    let x_3365 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3364.x, x_3364.y, x_3364.z, x_3365.w);
    let x_3367 : f32 = u_xlat27;
    let x_3369 : vec4<f32> = u_xlat11;
    let x_3371 : vec3<f32> = (vec3<f32>(x_3367, x_3367, x_3367) * vec3<f32>(x_3369.x, x_3369.y, x_3369.z));
    let x_3372 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3371.x, x_3371.y, x_3371.z, x_3372.w);
    let x_3374 : vec3<f32> = u_xlat21;
    let x_3375 : vec4<f32> = u_xlat10;
    u_xlat66 = dot(x_3374, vec3<f32>(x_3375.x, x_3375.y, x_3375.z));
    let x_3378 : f32 = u_xlat66;
    u_xlat66 = clamp(x_3378, 0.0f, 1.0f);
    let x_3380 : f32 = u_xlat66;
    let x_3381 : f32 = u_xlat69;
    u_xlat66 = (x_3380 * x_3381);
    let x_3383 : f32 = u_xlat66;
    let x_3385 : vec4<f32> = u_xlat11;
    let x_3387 : vec3<f32> = (vec3<f32>(x_3383, x_3383, x_3383) * vec3<f32>(x_3385.x, x_3385.y, x_3385.z));
    let x_3388 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3387.x, x_3387.y, x_3387.z, x_3388.w);
    let x_3390 : vec4<f32> = u_xlat9;
    let x_3392 : vec2<f32> = u_xlat49;
    let x_3395 : vec4<f32> = u_xlat1;
    let x_3397 : vec3<f32> = ((vec3<f32>(x_3390.x, x_3390.y, x_3390.z) * vec3<f32>(x_3392.x, x_3392.x, x_3392.x)) + vec3<f32>(x_3395.x, x_3395.y, x_3395.z));
    let x_3398 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3397.x, x_3397.y, x_3397.z, x_3398.w);
    let x_3400 : vec4<f32> = u_xlat9;
    let x_3402 : vec4<f32> = u_xlat9;
    u_xlat66 = dot(vec3<f32>(x_3400.x, x_3400.y, x_3400.z), vec3<f32>(x_3402.x, x_3402.y, x_3402.z));
    let x_3405 : f32 = u_xlat66;
    u_xlat66 = max(x_3405, 1.17549435e-37f);
    let x_3407 : f32 = u_xlat66;
    u_xlat66 = inverseSqrt(x_3407);
    let x_3409 : f32 = u_xlat66;
    let x_3411 : vec4<f32> = u_xlat9;
    let x_3413 : vec3<f32> = (vec3<f32>(x_3409, x_3409, x_3409) * vec3<f32>(x_3411.x, x_3411.y, x_3411.z));
    let x_3414 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3413.x, x_3413.y, x_3413.z, x_3414.w);
    let x_3416 : vec3<f32> = u_xlat21;
    let x_3417 : vec4<f32> = u_xlat9;
    u_xlat66 = dot(x_3416, vec3<f32>(x_3417.x, x_3417.y, x_3417.z));
    let x_3420 : f32 = u_xlat66;
    u_xlat66 = clamp(x_3420, 0.0f, 1.0f);
    let x_3422 : vec4<f32> = u_xlat10;
    let x_3424 : vec4<f32> = u_xlat9;
    u_xlat69 = dot(vec3<f32>(x_3422.x, x_3422.y, x_3422.z), vec3<f32>(x_3424.x, x_3424.y, x_3424.z));
    let x_3427 : f32 = u_xlat69;
    u_xlat69 = clamp(x_3427, 0.0f, 1.0f);
    let x_3429 : f32 = u_xlat66;
    let x_3430 : f32 = u_xlat66;
    u_xlat66 = (x_3429 * x_3430);
    let x_3432 : f32 = u_xlat66;
    let x_3434 : f32 = u_xlat48.x;
    u_xlat66 = ((x_3432 * x_3434) + 1.000010014f);
    let x_3437 : f32 = u_xlat69;
    let x_3438 : f32 = u_xlat69;
    u_xlat69 = (x_3437 * x_3438);
    let x_3440 : f32 = u_xlat66;
    let x_3441 : f32 = u_xlat66;
    u_xlat66 = (x_3440 * x_3441);
    let x_3443 : f32 = u_xlat69;
    u_xlat69 = max(x_3443, 0.100000001f);
    let x_3445 : f32 = u_xlat66;
    let x_3446 : f32 = u_xlat69;
    u_xlat66 = (x_3445 * x_3446);
    let x_3448 : f32 = u_xlat68;
    let x_3449 : f32 = u_xlat66;
    u_xlat66 = (x_3448 * x_3449);
    let x_3451 : f32 = u_xlat67;
    let x_3452 : f32 = u_xlat66;
    u_xlat66 = (x_3451 / x_3452);
    let x_3454 : vec3<f32> = u_xlat2;
    let x_3455 : f32 = u_xlat66;
    let x_3458 : vec3<f32> = u_xlat3;
    let x_3459 : vec3<f32> = ((x_3454 * vec3<f32>(x_3455, x_3455, x_3455)) + x_3458);
    let x_3460 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3459.x, x_3459.y, x_3459.z, x_3460.w);
    let x_3462 : vec4<f32> = u_xlat9;
    let x_3464 : vec4<f32> = u_xlat11;
    let x_3467 : vec4<f32> = u_xlat8;
    let x_3469 : vec3<f32> = ((vec3<f32>(x_3462.x, x_3462.y, x_3462.z) * vec3<f32>(x_3464.x, x_3464.y, x_3464.z)) + vec3<f32>(x_3467.x, x_3467.y, x_3467.z));
    let x_3470 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3469.x, x_3469.y, x_3469.z, x_3470.w);

    continuing {
      let x_3472 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3472 + bitcast<u32>(1i));
    }
  }
  let x_3474 : vec4<f32> = u_xlat5;
  let x_3476 : vec3<f32> = u_xlat6;
  let x_3479 : vec4<f32> = u_xlat4;
  let x_3481 : vec3<f32> = ((vec3<f32>(x_3474.x, x_3474.y, x_3474.z) * vec3<f32>(x_3476.x, x_3476.x, x_3476.x)) + vec3<f32>(x_3479.x, x_3479.y, x_3479.z));
  let x_3482 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3481.x, x_3481.y, x_3481.z, x_3482.w);
  let x_3484 : vec4<f32> = u_xlat8;
  let x_3486 : vec4<f32> = u_xlat0;
  let x_3488 : vec3<f32> = (vec3<f32>(x_3484.x, x_3484.y, x_3484.z) + vec3<f32>(x_3486.x, x_3486.y, x_3486.z));
  let x_3489 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3488.x, x_3488.y, x_3488.z, x_3489.w);
  let x_3492 : f32 = u_xlat65;
  let x_3493 : f32 = u_xlat65;
  u_xlat63 = (x_3492 * -(x_3493));
  let x_3496 : f32 = u_xlat63;
  u_xlat63 = exp2(x_3496);
  let x_3498 : vec4<f32> = u_xlat0;
  let x_3502 : vec4<f32> = x_146.unity_FogColor;
  let x_3505 : vec3<f32> = (vec3<f32>(x_3498.x, x_3498.y, x_3498.z) + -(vec3<f32>(x_3502.x, x_3502.y, x_3502.z)));
  let x_3506 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3505.x, x_3505.y, x_3505.z, x_3506.w);
  let x_3510 : f32 = u_xlat63;
  let x_3512 : vec4<f32> = u_xlat0;
  let x_3516 : vec4<f32> = x_146.unity_FogColor;
  let x_3518 : vec3<f32> = ((vec3<f32>(x_3510, x_3510, x_3510) * vec3<f32>(x_3512.x, x_3512.y, x_3512.z)) + vec3<f32>(x_3516.x, x_3516.y, x_3516.z));
  let x_3519 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3518.x, x_3518.y, x_3518.z, x_3519.w);
  let x_3523 : u32 = x_146.x_RenderingLayerMaxInt;
  let x_3525 : f32 = x_59.unity_RenderingLayer.x;
  u_xlatu0 = (x_3523 & bitcast<u32>(x_3525));
  let x_3528 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_3528);
  let x_3533 : f32 = u_xlat0.x;
  let x_3535 : f32 = x_146.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_3533 * x_3535);
  let x_3540 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_3540, 0.0f, 1.0f);
  SV_Target0.w = 1.0f;
  let x_3544 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_3544.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
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

