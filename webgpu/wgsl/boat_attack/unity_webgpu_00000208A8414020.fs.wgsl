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

@group(1) @binding(4) var<uniform> x_2344 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(11) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2826 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_2936 : AdditionalLightsCookies;

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
  var x_2293 : f32;
  var u_xlat46 : f32;
  var x_2426 : f32;
  var x_2437 : vec3<f32>;
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
  var x_3229 : f32;
  var x_3242 : f32;
  var x_3294 : f32;
  var x_3305 : vec3<f32>;
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
  let x_612 : f32 = x_146.unity_OrthoParams.w;
  u_xlatb1 = (x_612 == 0.0f);
  let x_614 : vec3<f32> = vs_INTERP0;
  let x_619 : vec3<f32> = x_146.x_WorldSpaceCameraPos;
  let x_620 : vec3<f32> = (-(x_614) + x_619);
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
      let x_1005 : vec4<f32> = x_667.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_1002.x, x_1002.y, x_1002.x, x_1002.y) + x_1005);
      let x_1008 : vec4<f32> = u_xlat7;
      let x_1009 : vec2<f32> = vec2<f32>(x_1008.x, x_1008.y);
      let x_1011 : f32 = u_xlat4.z;
      txVec0 = vec3<f32>(x_1009.x, x_1009.y, x_1011);
      let x_1024 : vec3<f32> = txVec0;
      let x_1026 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1024.xy, x_1024.z);
      u_xlat8.x = x_1026;
      let x_1029 : vec4<f32> = u_xlat7;
      let x_1030 : vec2<f32> = vec2<f32>(x_1029.z, x_1029.w);
      let x_1032 : f32 = u_xlat4.z;
      txVec1 = vec3<f32>(x_1030.x, x_1030.y, x_1032);
      let x_1039 : vec3<f32> = txVec1;
      let x_1041 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1039.xy, x_1039.z);
      u_xlat8.y = x_1041;
      let x_1043 : vec4<f32> = u_xlat4;
      let x_1046 : vec4<f32> = x_667.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_1043.x, x_1043.y, x_1043.x, x_1043.y) + x_1046);
      let x_1049 : vec4<f32> = u_xlat7;
      let x_1050 : vec2<f32> = vec2<f32>(x_1049.x, x_1049.y);
      let x_1052 : f32 = u_xlat4.z;
      txVec2 = vec3<f32>(x_1050.x, x_1050.y, x_1052);
      let x_1059 : vec3<f32> = txVec2;
      let x_1061 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1059.xy, x_1059.z);
      u_xlat8.z = x_1061;
      let x_1064 : vec4<f32> = u_xlat7;
      let x_1065 : vec2<f32> = vec2<f32>(x_1064.z, x_1064.w);
      let x_1067 : f32 = u_xlat4.z;
      txVec3 = vec3<f32>(x_1065.x, x_1065.y, x_1067);
      let x_1074 : vec3<f32> = txVec3;
      let x_1076 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1074.xy, x_1074.z);
      u_xlat8.w = x_1076;
      let x_1079 : vec4<f32> = u_xlat8;
      u_xlat48.x = dot(x_1079, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1087 : f32 = x_667.x_MainLightShadowParams.y;
      u_xlatb69 = (x_1087 == 2.0f);
      let x_1089 : bool = u_xlatb69;
      if (x_1089) {
        let x_1092 : vec4<f32> = u_xlat4;
        let x_1095 : vec4<f32> = x_667.x_MainLightShadowmapSize;
        let x_1100 : vec2<f32> = ((vec2<f32>(x_1092.x, x_1092.y) * vec2<f32>(x_1095.z, x_1095.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1101 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1100.x, x_1100.y, x_1101.z, x_1101.w);
        let x_1103 : vec4<f32> = u_xlat7;
        let x_1105 : vec2<f32> = floor(vec2<f32>(x_1103.x, x_1103.y));
        let x_1106 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1105.x, x_1105.y, x_1106.z, x_1106.w);
        let x_1109 : vec4<f32> = u_xlat4;
        let x_1112 : vec4<f32> = x_667.x_MainLightShadowmapSize;
        let x_1115 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_1109.x, x_1109.y) * vec2<f32>(x_1112.z, x_1112.w)) + -(vec2<f32>(x_1115.x, x_1115.y)));
        let x_1119 : vec2<f32> = u_xlat49;
        u_xlat8 = (vec4<f32>(x_1119.x, x_1119.x, x_1119.y, x_1119.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1124 : vec4<f32> = u_xlat8;
        let x_1126 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1124.x, x_1124.x, x_1124.z, x_1124.z) * vec4<f32>(x_1126.x, x_1126.x, x_1126.z, x_1126.z));
        let x_1129 : vec4<f32> = u_xlat9;
        let x_1133 : vec2<f32> = (vec2<f32>(x_1129.y, x_1129.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_1134 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1133.x, x_1134.y, x_1133.y, x_1134.w);
        let x_1136 : vec4<f32> = u_xlat9;
        let x_1139 : vec2<f32> = u_xlat49;
        let x_1141 : vec2<f32> = ((vec2<f32>(x_1136.x, x_1136.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1139));
        let x_1142 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1141.x, x_1141.y, x_1142.z, x_1142.w);
        let x_1145 : vec2<f32> = u_xlat49;
        u_xlat51 = (-(x_1145) + vec2<f32>(1.0f, 1.0f));
        let x_1149 : vec2<f32> = u_xlat49;
        let x_1151 : vec2<f32> = min(x_1149, vec2<f32>(0.0f, 0.0f));
        let x_1152 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1151.x, x_1151.y, x_1152.z, x_1152.w);
        let x_1154 : vec4<f32> = u_xlat10;
        let x_1157 : vec4<f32> = u_xlat10;
        let x_1160 : vec2<f32> = u_xlat51;
        let x_1161 : vec2<f32> = ((-(vec2<f32>(x_1154.x, x_1154.y)) * vec2<f32>(x_1157.x, x_1157.y)) + x_1160);
        let x_1162 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1161.x, x_1161.y, x_1162.z, x_1162.w);
        let x_1164 : vec2<f32> = u_xlat49;
        u_xlat49 = max(x_1164, vec2<f32>(0.0f, 0.0f));
        let x_1166 : vec2<f32> = u_xlat49;
        let x_1168 : vec2<f32> = u_xlat49;
        let x_1170 : vec4<f32> = u_xlat8;
        u_xlat49 = ((-(x_1166) * x_1168) + vec2<f32>(x_1170.y, x_1170.w));
        let x_1173 : vec4<f32> = u_xlat10;
        let x_1175 : vec2<f32> = (vec2<f32>(x_1173.x, x_1173.y) + vec2<f32>(1.0f, 1.0f));
        let x_1176 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1175.x, x_1175.y, x_1176.z, x_1176.w);
        let x_1178 : vec2<f32> = u_xlat49;
        u_xlat49 = (x_1178 + vec2<f32>(1.0f, 1.0f));
        let x_1181 : vec4<f32> = u_xlat9;
        let x_1185 : vec2<f32> = (vec2<f32>(x_1181.x, x_1181.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1186 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1185.x, x_1185.y, x_1186.z, x_1186.w);
        let x_1188 : vec2<f32> = u_xlat51;
        let x_1189 : vec2<f32> = (x_1188 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1190 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1189.x, x_1189.y, x_1190.z, x_1190.w);
        let x_1192 : vec4<f32> = u_xlat10;
        let x_1194 : vec2<f32> = (vec2<f32>(x_1192.x, x_1192.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1195 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1194.x, x_1194.y, x_1195.z, x_1195.w);
        let x_1198 : vec2<f32> = u_xlat49;
        let x_1199 : vec2<f32> = (x_1198 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1200 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1199.x, x_1199.y, x_1200.z, x_1200.w);
        let x_1202 : vec4<f32> = u_xlat8;
        u_xlat49 = (vec2<f32>(x_1202.y, x_1202.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1206 : f32 = u_xlat10.x;
        u_xlat11.z = x_1206;
        let x_1209 : f32 = u_xlat49.x;
        u_xlat11.w = x_1209;
        let x_1212 : f32 = u_xlat12.x;
        u_xlat9.z = x_1212;
        let x_1215 : f32 = u_xlat8.x;
        u_xlat9.w = x_1215;
        let x_1218 : vec4<f32> = u_xlat9;
        let x_1220 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_1218.z, x_1218.w, x_1218.x, x_1218.z) + vec4<f32>(x_1220.z, x_1220.w, x_1220.x, x_1220.z));
        let x_1224 : f32 = u_xlat11.y;
        u_xlat10.z = x_1224;
        let x_1227 : f32 = u_xlat49.y;
        u_xlat10.w = x_1227;
        let x_1230 : f32 = u_xlat9.y;
        u_xlat12.z = x_1230;
        let x_1233 : f32 = u_xlat8.z;
        u_xlat12.w = x_1233;
        let x_1235 : vec4<f32> = u_xlat10;
        let x_1237 : vec4<f32> = u_xlat12;
        let x_1239 : vec3<f32> = (vec3<f32>(x_1235.z, x_1235.y, x_1235.w) + vec3<f32>(x_1237.z, x_1237.y, x_1237.w));
        let x_1240 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1239.x, x_1239.y, x_1239.z, x_1240.w);
        let x_1242 : vec4<f32> = u_xlat9;
        let x_1244 : vec4<f32> = u_xlat13;
        let x_1246 : vec3<f32> = (vec3<f32>(x_1242.x, x_1242.z, x_1242.w) / vec3<f32>(x_1244.z, x_1244.w, x_1244.y));
        let x_1247 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1246.x, x_1246.y, x_1246.z, x_1247.w);
        let x_1249 : vec4<f32> = u_xlat9;
        let x_1254 : vec3<f32> = (vec3<f32>(x_1249.x, x_1249.y, x_1249.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1255 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1254.x, x_1254.y, x_1254.z, x_1255.w);
        let x_1257 : vec4<f32> = u_xlat12;
        let x_1259 : vec4<f32> = u_xlat8;
        let x_1261 : vec3<f32> = (vec3<f32>(x_1257.z, x_1257.y, x_1257.w) / vec3<f32>(x_1259.x, x_1259.y, x_1259.z));
        let x_1262 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1261.x, x_1261.y, x_1261.z, x_1262.w);
        let x_1264 : vec4<f32> = u_xlat10;
        let x_1266 : vec3<f32> = (vec3<f32>(x_1264.x, x_1264.y, x_1264.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1267 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1266.x, x_1266.y, x_1266.z, x_1267.w);
        let x_1269 : vec4<f32> = u_xlat9;
        let x_1272 : vec4<f32> = x_667.x_MainLightShadowmapSize;
        let x_1274 : vec3<f32> = (vec3<f32>(x_1269.y, x_1269.x, x_1269.z) * vec3<f32>(x_1272.x, x_1272.x, x_1272.x));
        let x_1275 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1274.x, x_1274.y, x_1274.z, x_1275.w);
        let x_1277 : vec4<f32> = u_xlat10;
        let x_1280 : vec4<f32> = x_667.x_MainLightShadowmapSize;
        let x_1282 : vec3<f32> = (vec3<f32>(x_1277.x, x_1277.y, x_1277.z) * vec3<f32>(x_1280.y, x_1280.y, x_1280.y));
        let x_1283 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1282.x, x_1282.y, x_1282.z, x_1283.w);
        let x_1286 : f32 = u_xlat10.x;
        u_xlat9.w = x_1286;
        let x_1288 : vec4<f32> = u_xlat7;
        let x_1291 : vec4<f32> = x_667.x_MainLightShadowmapSize;
        let x_1294 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1288.x, x_1288.y, x_1288.x, x_1288.y) * vec4<f32>(x_1291.x, x_1291.y, x_1291.x, x_1291.y)) + vec4<f32>(x_1294.y, x_1294.w, x_1294.x, x_1294.w));
        let x_1297 : vec4<f32> = u_xlat7;
        let x_1300 : vec4<f32> = x_667.x_MainLightShadowmapSize;
        let x_1303 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_1297.x, x_1297.y) * vec2<f32>(x_1300.x, x_1300.y)) + vec2<f32>(x_1303.z, x_1303.w));
        let x_1307 : f32 = u_xlat9.y;
        u_xlat10.w = x_1307;
        let x_1309 : vec4<f32> = u_xlat10;
        let x_1310 : vec2<f32> = vec2<f32>(x_1309.y, x_1309.z);
        let x_1311 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1311.x, x_1310.x, x_1311.z, x_1310.y);
        let x_1313 : vec4<f32> = u_xlat7;
        let x_1316 : vec4<f32> = x_667.x_MainLightShadowmapSize;
        let x_1319 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1313.x, x_1313.y, x_1313.x, x_1313.y) * vec4<f32>(x_1316.x, x_1316.y, x_1316.x, x_1316.y)) + vec4<f32>(x_1319.x, x_1319.y, x_1319.z, x_1319.y));
        let x_1322 : vec4<f32> = u_xlat7;
        let x_1325 : vec4<f32> = x_667.x_MainLightShadowmapSize;
        let x_1328 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1322.x, x_1322.y, x_1322.x, x_1322.y) * vec4<f32>(x_1325.x, x_1325.y, x_1325.x, x_1325.y)) + vec4<f32>(x_1328.w, x_1328.y, x_1328.w, x_1328.z));
        let x_1331 : vec4<f32> = u_xlat7;
        let x_1334 : vec4<f32> = x_667.x_MainLightShadowmapSize;
        let x_1337 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1331.x, x_1331.y, x_1331.x, x_1331.y) * vec4<f32>(x_1334.x, x_1334.y, x_1334.x, x_1334.y)) + vec4<f32>(x_1337.x, x_1337.w, x_1337.z, x_1337.w));
        let x_1341 : vec4<f32> = u_xlat8;
        let x_1343 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_1341.x, x_1341.x, x_1341.x, x_1341.y) * vec4<f32>(x_1343.z, x_1343.w, x_1343.y, x_1343.z));
        let x_1347 : vec4<f32> = u_xlat8;
        let x_1349 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_1347.y, x_1347.y, x_1347.z, x_1347.z) * x_1349);
        let x_1353 : f32 = u_xlat8.z;
        let x_1355 : f32 = u_xlat13.y;
        u_xlat69 = (x_1353 * x_1355);
        let x_1358 : vec4<f32> = u_xlat11;
        let x_1359 : vec2<f32> = vec2<f32>(x_1358.x, x_1358.y);
        let x_1361 : f32 = u_xlat4.z;
        txVec4 = vec3<f32>(x_1359.x, x_1359.y, x_1361);
        let x_1368 : vec3<f32> = txVec4;
        let x_1370 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1368.xy, x_1368.z);
        u_xlat7.x = x_1370;
        let x_1373 : vec4<f32> = u_xlat11;
        let x_1374 : vec2<f32> = vec2<f32>(x_1373.z, x_1373.w);
        let x_1376 : f32 = u_xlat4.z;
        txVec5 = vec3<f32>(x_1374.x, x_1374.y, x_1376);
        let x_1383 : vec3<f32> = txVec5;
        let x_1385 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1383.xy, x_1383.z);
        u_xlat28.x = x_1385;
        let x_1388 : f32 = u_xlat28.x;
        let x_1390 : f32 = u_xlat14.y;
        u_xlat28.x = (x_1388 * x_1390);
        let x_1394 : f32 = u_xlat14.x;
        let x_1396 : f32 = u_xlat7.x;
        let x_1399 : f32 = u_xlat28.x;
        u_xlat7.x = ((x_1394 * x_1396) + x_1399);
        let x_1403 : vec2<f32> = u_xlat49;
        let x_1405 : f32 = u_xlat4.z;
        txVec6 = vec3<f32>(x_1403.x, x_1403.y, x_1405);
        let x_1412 : vec3<f32> = txVec6;
        let x_1414 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1412.xy, x_1412.z);
        u_xlat28.x = x_1414;
        let x_1417 : f32 = u_xlat14.z;
        let x_1419 : f32 = u_xlat28.x;
        let x_1422 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1417 * x_1419) + x_1422);
        let x_1426 : vec4<f32> = u_xlat10;
        let x_1427 : vec2<f32> = vec2<f32>(x_1426.x, x_1426.y);
        let x_1429 : f32 = u_xlat4.z;
        txVec7 = vec3<f32>(x_1427.x, x_1427.y, x_1429);
        let x_1436 : vec3<f32> = txVec7;
        let x_1438 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1436.xy, x_1436.z);
        u_xlat28.x = x_1438;
        let x_1441 : f32 = u_xlat14.w;
        let x_1443 : f32 = u_xlat28.x;
        let x_1446 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1441 * x_1443) + x_1446);
        let x_1450 : vec4<f32> = u_xlat12;
        let x_1451 : vec2<f32> = vec2<f32>(x_1450.x, x_1450.y);
        let x_1453 : f32 = u_xlat4.z;
        txVec8 = vec3<f32>(x_1451.x, x_1451.y, x_1453);
        let x_1460 : vec3<f32> = txVec8;
        let x_1462 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1460.xy, x_1460.z);
        u_xlat28.x = x_1462;
        let x_1465 : f32 = u_xlat15.x;
        let x_1467 : f32 = u_xlat28.x;
        let x_1470 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1465 * x_1467) + x_1470);
        let x_1474 : vec4<f32> = u_xlat12;
        let x_1475 : vec2<f32> = vec2<f32>(x_1474.z, x_1474.w);
        let x_1477 : f32 = u_xlat4.z;
        txVec9 = vec3<f32>(x_1475.x, x_1475.y, x_1477);
        let x_1484 : vec3<f32> = txVec9;
        let x_1486 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1484.xy, x_1484.z);
        u_xlat28.x = x_1486;
        let x_1489 : f32 = u_xlat15.y;
        let x_1491 : f32 = u_xlat28.x;
        let x_1494 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1489 * x_1491) + x_1494);
        let x_1498 : vec4<f32> = u_xlat10;
        let x_1499 : vec2<f32> = vec2<f32>(x_1498.z, x_1498.w);
        let x_1501 : f32 = u_xlat4.z;
        txVec10 = vec3<f32>(x_1499.x, x_1499.y, x_1501);
        let x_1508 : vec3<f32> = txVec10;
        let x_1510 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1508.xy, x_1508.z);
        u_xlat28.x = x_1510;
        let x_1513 : f32 = u_xlat15.z;
        let x_1515 : f32 = u_xlat28.x;
        let x_1518 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1513 * x_1515) + x_1518);
        let x_1522 : vec4<f32> = u_xlat9;
        let x_1523 : vec2<f32> = vec2<f32>(x_1522.x, x_1522.y);
        let x_1525 : f32 = u_xlat4.z;
        txVec11 = vec3<f32>(x_1523.x, x_1523.y, x_1525);
        let x_1532 : vec3<f32> = txVec11;
        let x_1534 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1532.xy, x_1532.z);
        u_xlat28.x = x_1534;
        let x_1537 : f32 = u_xlat15.w;
        let x_1539 : f32 = u_xlat28.x;
        let x_1542 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1537 * x_1539) + x_1542);
        let x_1546 : vec4<f32> = u_xlat9;
        let x_1547 : vec2<f32> = vec2<f32>(x_1546.z, x_1546.w);
        let x_1549 : f32 = u_xlat4.z;
        txVec12 = vec3<f32>(x_1547.x, x_1547.y, x_1549);
        let x_1556 : vec3<f32> = txVec12;
        let x_1558 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1556.xy, x_1556.z);
        u_xlat28.x = x_1558;
        let x_1560 : f32 = u_xlat69;
        let x_1562 : f32 = u_xlat28.x;
        let x_1565 : f32 = u_xlat7.x;
        u_xlat48.x = ((x_1560 * x_1562) + x_1565);
      } else {
        let x_1569 : vec4<f32> = u_xlat4;
        let x_1572 : vec4<f32> = x_667.x_MainLightShadowmapSize;
        let x_1575 : vec2<f32> = ((vec2<f32>(x_1569.x, x_1569.y) * vec2<f32>(x_1572.z, x_1572.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1576 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1575.x, x_1575.y, x_1576.z, x_1576.w);
        let x_1578 : vec4<f32> = u_xlat7;
        let x_1580 : vec2<f32> = floor(vec2<f32>(x_1578.x, x_1578.y));
        let x_1581 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1580.x, x_1580.y, x_1581.z, x_1581.w);
        let x_1583 : vec4<f32> = u_xlat4;
        let x_1586 : vec4<f32> = x_667.x_MainLightShadowmapSize;
        let x_1589 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_1583.x, x_1583.y) * vec2<f32>(x_1586.z, x_1586.w)) + -(vec2<f32>(x_1589.x, x_1589.y)));
        let x_1593 : vec2<f32> = u_xlat49;
        u_xlat8 = (vec4<f32>(x_1593.x, x_1593.x, x_1593.y, x_1593.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1596 : vec4<f32> = u_xlat8;
        let x_1598 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1596.x, x_1596.x, x_1596.z, x_1596.z) * vec4<f32>(x_1598.x, x_1598.x, x_1598.z, x_1598.z));
        let x_1601 : vec4<f32> = u_xlat9;
        let x_1605 : vec2<f32> = (vec2<f32>(x_1601.y, x_1601.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1606 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1606.x, x_1605.x, x_1606.z, x_1605.y);
        let x_1608 : vec4<f32> = u_xlat9;
        let x_1611 : vec2<f32> = u_xlat49;
        let x_1613 : vec2<f32> = ((vec2<f32>(x_1608.x, x_1608.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1611));
        let x_1614 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1613.x, x_1614.y, x_1613.y, x_1614.w);
        let x_1616 : vec2<f32> = u_xlat49;
        let x_1618 : vec2<f32> = (-(x_1616) + vec2<f32>(1.0f, 1.0f));
        let x_1619 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1618.x, x_1618.y, x_1619.z, x_1619.w);
        let x_1621 : vec2<f32> = u_xlat49;
        u_xlat51 = min(x_1621, vec2<f32>(0.0f, 0.0f));
        let x_1623 : vec2<f32> = u_xlat51;
        let x_1625 : vec2<f32> = u_xlat51;
        let x_1627 : vec4<f32> = u_xlat9;
        let x_1629 : vec2<f32> = ((-(x_1623) * x_1625) + vec2<f32>(x_1627.x, x_1627.y));
        let x_1630 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1629.x, x_1629.y, x_1630.z, x_1630.w);
        let x_1632 : vec2<f32> = u_xlat49;
        u_xlat51 = max(x_1632, vec2<f32>(0.0f, 0.0f));
        let x_1635 : vec2<f32> = u_xlat51;
        let x_1637 : vec2<f32> = u_xlat51;
        let x_1639 : vec4<f32> = u_xlat8;
        let x_1641 : vec2<f32> = ((-(x_1635) * x_1637) + vec2<f32>(x_1639.y, x_1639.w));
        let x_1642 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1641.x, x_1642.y, x_1641.y);
        let x_1644 : vec4<f32> = u_xlat9;
        let x_1646 : vec2<f32> = (vec2<f32>(x_1644.x, x_1644.y) + vec2<f32>(2.0f, 2.0f));
        let x_1647 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1646.x, x_1646.y, x_1647.z, x_1647.w);
        let x_1649 : vec3<f32> = u_xlat29;
        let x_1651 : vec2<f32> = (vec2<f32>(x_1649.x, x_1649.z) + vec2<f32>(2.0f, 2.0f));
        let x_1652 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1652.x, x_1651.x, x_1652.z, x_1651.y);
        let x_1655 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1655 * 0.081632003f);
        let x_1659 : vec4<f32> = u_xlat8;
        let x_1662 : vec3<f32> = (vec3<f32>(x_1659.z, x_1659.x, x_1659.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1663 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1662.x, x_1662.y, x_1662.z, x_1663.w);
        let x_1665 : vec4<f32> = u_xlat9;
        let x_1668 : vec2<f32> = (vec2<f32>(x_1665.x, x_1665.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1669 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1668.x, x_1668.y, x_1669.z, x_1669.w);
        let x_1672 : f32 = u_xlat12.y;
        u_xlat11.x = x_1672;
        let x_1674 : vec2<f32> = u_xlat49;
        let x_1681 : vec2<f32> = ((vec2<f32>(x_1674.x, x_1674.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1682 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1682.x, x_1681.x, x_1682.z, x_1681.y);
        let x_1684 : vec2<f32> = u_xlat49;
        let x_1688 : vec2<f32> = ((vec2<f32>(x_1684.x, x_1684.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1689 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1688.x, x_1689.y, x_1688.y, x_1689.w);
        let x_1692 : f32 = u_xlat8.x;
        u_xlat9.y = x_1692;
        let x_1695 : f32 = u_xlat10.y;
        u_xlat9.w = x_1695;
        let x_1697 : vec4<f32> = u_xlat9;
        let x_1698 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1697 + x_1698);
        let x_1700 : vec2<f32> = u_xlat49;
        let x_1703 : vec2<f32> = ((vec2<f32>(x_1700.y, x_1700.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1704 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1704.x, x_1703.x, x_1704.z, x_1703.y);
        let x_1706 : vec2<f32> = u_xlat49;
        let x_1709 : vec2<f32> = ((vec2<f32>(x_1706.y, x_1706.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1710 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1709.x, x_1710.y, x_1709.y, x_1710.w);
        let x_1713 : f32 = u_xlat8.y;
        u_xlat10.y = x_1713;
        let x_1715 : vec4<f32> = u_xlat10;
        let x_1716 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1715 + x_1716);
        let x_1718 : vec4<f32> = u_xlat9;
        let x_1719 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1718 / x_1719);
        let x_1721 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1721 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1727 : vec4<f32> = u_xlat10;
        let x_1728 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1727 / x_1728);
        let x_1730 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1730 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1732 : vec4<f32> = u_xlat9;
        let x_1735 : vec4<f32> = x_667.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1732.w, x_1732.x, x_1732.y, x_1732.z) * vec4<f32>(x_1735.x, x_1735.x, x_1735.x, x_1735.x));
        let x_1738 : vec4<f32> = u_xlat10;
        let x_1741 : vec4<f32> = x_667.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1738.x, x_1738.w, x_1738.y, x_1738.z) * vec4<f32>(x_1741.y, x_1741.y, x_1741.y, x_1741.y));
        let x_1744 : vec4<f32> = u_xlat9;
        let x_1745 : vec3<f32> = vec3<f32>(x_1744.y, x_1744.z, x_1744.w);
        let x_1746 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1745.x, x_1746.y, x_1745.y, x_1745.z);
        let x_1749 : f32 = u_xlat10.x;
        u_xlat12.y = x_1749;
        let x_1751 : vec4<f32> = u_xlat7;
        let x_1754 : vec4<f32> = x_667.x_MainLightShadowmapSize;
        let x_1757 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1751.x, x_1751.y, x_1751.x, x_1751.y) * vec4<f32>(x_1754.x, x_1754.y, x_1754.x, x_1754.y)) + vec4<f32>(x_1757.x, x_1757.y, x_1757.z, x_1757.y));
        let x_1760 : vec4<f32> = u_xlat7;
        let x_1763 : vec4<f32> = x_667.x_MainLightShadowmapSize;
        let x_1766 : vec4<f32> = u_xlat12;
        u_xlat49 = ((vec2<f32>(x_1760.x, x_1760.y) * vec2<f32>(x_1763.x, x_1763.y)) + vec2<f32>(x_1766.w, x_1766.y));
        let x_1770 : f32 = u_xlat12.y;
        u_xlat9.y = x_1770;
        let x_1773 : f32 = u_xlat10.z;
        u_xlat12.y = x_1773;
        let x_1775 : vec4<f32> = u_xlat7;
        let x_1778 : vec4<f32> = x_667.x_MainLightShadowmapSize;
        let x_1781 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1775.x, x_1775.y, x_1775.x, x_1775.y) * vec4<f32>(x_1778.x, x_1778.y, x_1778.x, x_1778.y)) + vec4<f32>(x_1781.x, x_1781.y, x_1781.z, x_1781.y));
        let x_1784 : vec4<f32> = u_xlat7;
        let x_1787 : vec4<f32> = x_667.x_MainLightShadowmapSize;
        let x_1790 : vec4<f32> = u_xlat12;
        let x_1792 : vec2<f32> = ((vec2<f32>(x_1784.x, x_1784.y) * vec2<f32>(x_1787.x, x_1787.y)) + vec2<f32>(x_1790.w, x_1790.y));
        let x_1793 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1792.x, x_1792.y, x_1793.z, x_1793.w);
        let x_1796 : f32 = u_xlat12.y;
        u_xlat9.z = x_1796;
        let x_1799 : vec4<f32> = u_xlat7;
        let x_1802 : vec4<f32> = x_667.x_MainLightShadowmapSize;
        let x_1805 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1799.x, x_1799.y, x_1799.x, x_1799.y) * vec4<f32>(x_1802.x, x_1802.y, x_1802.x, x_1802.y)) + vec4<f32>(x_1805.x, x_1805.y, x_1805.x, x_1805.z));
        let x_1809 : f32 = u_xlat10.w;
        u_xlat12.y = x_1809;
        let x_1812 : vec4<f32> = u_xlat7;
        let x_1815 : vec4<f32> = x_667.x_MainLightShadowmapSize;
        let x_1818 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1812.x, x_1812.y, x_1812.x, x_1812.y) * vec4<f32>(x_1815.x, x_1815.y, x_1815.x, x_1815.y)) + vec4<f32>(x_1818.x, x_1818.y, x_1818.z, x_1818.y));
        let x_1822 : vec4<f32> = u_xlat7;
        let x_1825 : vec4<f32> = x_667.x_MainLightShadowmapSize;
        let x_1828 : vec4<f32> = u_xlat12;
        u_xlat30 = ((vec2<f32>(x_1822.x, x_1822.y) * vec2<f32>(x_1825.x, x_1825.y)) + vec2<f32>(x_1828.w, x_1828.y));
        let x_1832 : f32 = u_xlat12.y;
        u_xlat9.w = x_1832;
        let x_1835 : vec4<f32> = u_xlat7;
        let x_1838 : vec4<f32> = x_667.x_MainLightShadowmapSize;
        let x_1841 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_1835.x, x_1835.y) * vec2<f32>(x_1838.x, x_1838.y)) + vec2<f32>(x_1841.x, x_1841.w));
        let x_1844 : vec4<f32> = u_xlat12;
        let x_1845 : vec3<f32> = vec3<f32>(x_1844.x, x_1844.z, x_1844.w);
        let x_1846 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1845.x, x_1846.y, x_1845.y, x_1845.z);
        let x_1848 : vec4<f32> = u_xlat7;
        let x_1851 : vec4<f32> = x_667.x_MainLightShadowmapSize;
        let x_1854 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1848.x, x_1848.y, x_1848.x, x_1848.y) * vec4<f32>(x_1851.x, x_1851.y, x_1851.x, x_1851.y)) + vec4<f32>(x_1854.x, x_1854.y, x_1854.z, x_1854.y));
        let x_1858 : vec4<f32> = u_xlat7;
        let x_1861 : vec4<f32> = x_667.x_MainLightShadowmapSize;
        let x_1864 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1858.x, x_1858.y) * vec2<f32>(x_1861.x, x_1861.y)) + vec2<f32>(x_1864.w, x_1864.y));
        let x_1868 : f32 = u_xlat9.x;
        u_xlat10.x = x_1868;
        let x_1870 : vec4<f32> = u_xlat7;
        let x_1873 : vec4<f32> = x_667.x_MainLightShadowmapSize;
        let x_1876 : vec4<f32> = u_xlat10;
        let x_1878 : vec2<f32> = ((vec2<f32>(x_1870.x, x_1870.y) * vec2<f32>(x_1873.x, x_1873.y)) + vec2<f32>(x_1876.x, x_1876.y));
        let x_1879 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1878.x, x_1878.y, x_1879.z, x_1879.w);
        let x_1882 : vec4<f32> = u_xlat8;
        let x_1884 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1882.x, x_1882.x, x_1882.x, x_1882.x) * x_1884);
        let x_1887 : vec4<f32> = u_xlat8;
        let x_1889 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1887.y, x_1887.y, x_1887.y, x_1887.y) * x_1889);
        let x_1892 : vec4<f32> = u_xlat8;
        let x_1894 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1892.z, x_1892.z, x_1892.z, x_1892.z) * x_1894);
        let x_1896 : vec4<f32> = u_xlat8;
        let x_1898 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1896.w, x_1896.w, x_1896.w, x_1896.w) * x_1898);
        let x_1901 : vec4<f32> = u_xlat13;
        let x_1902 : vec2<f32> = vec2<f32>(x_1901.x, x_1901.y);
        let x_1904 : f32 = u_xlat4.z;
        txVec13 = vec3<f32>(x_1902.x, x_1902.y, x_1904);
        let x_1911 : vec3<f32> = txVec13;
        let x_1913 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1911.xy, x_1911.z);
        u_xlat69 = x_1913;
        let x_1915 : vec4<f32> = u_xlat13;
        let x_1916 : vec2<f32> = vec2<f32>(x_1915.z, x_1915.w);
        let x_1918 : f32 = u_xlat4.z;
        txVec14 = vec3<f32>(x_1916.x, x_1916.y, x_1918);
        let x_1925 : vec3<f32> = txVec14;
        let x_1927 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1925.xy, x_1925.z);
        u_xlat9.x = x_1927;
        let x_1930 : f32 = u_xlat9.x;
        let x_1932 : f32 = u_xlat18.y;
        u_xlat9.x = (x_1930 * x_1932);
        let x_1936 : f32 = u_xlat18.x;
        let x_1937 : f32 = u_xlat69;
        let x_1940 : f32 = u_xlat9.x;
        u_xlat69 = ((x_1936 * x_1937) + x_1940);
        let x_1943 : vec2<f32> = u_xlat49;
        let x_1945 : f32 = u_xlat4.z;
        txVec15 = vec3<f32>(x_1943.x, x_1943.y, x_1945);
        let x_1952 : vec3<f32> = txVec15;
        let x_1954 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1952.xy, x_1952.z);
        u_xlat49.x = x_1954;
        let x_1957 : f32 = u_xlat18.z;
        let x_1959 : f32 = u_xlat49.x;
        let x_1961 : f32 = u_xlat69;
        u_xlat69 = ((x_1957 * x_1959) + x_1961);
        let x_1964 : vec4<f32> = u_xlat16;
        let x_1965 : vec2<f32> = vec2<f32>(x_1964.x, x_1964.y);
        let x_1967 : f32 = u_xlat4.z;
        txVec16 = vec3<f32>(x_1965.x, x_1965.y, x_1967);
        let x_1974 : vec3<f32> = txVec16;
        let x_1976 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1974.xy, x_1974.z);
        u_xlat49.x = x_1976;
        let x_1979 : f32 = u_xlat18.w;
        let x_1981 : f32 = u_xlat49.x;
        let x_1983 : f32 = u_xlat69;
        u_xlat69 = ((x_1979 * x_1981) + x_1983);
        let x_1986 : vec4<f32> = u_xlat14;
        let x_1987 : vec2<f32> = vec2<f32>(x_1986.x, x_1986.y);
        let x_1989 : f32 = u_xlat4.z;
        txVec17 = vec3<f32>(x_1987.x, x_1987.y, x_1989);
        let x_1996 : vec3<f32> = txVec17;
        let x_1998 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1996.xy, x_1996.z);
        u_xlat49.x = x_1998;
        let x_2001 : f32 = u_xlat19.x;
        let x_2003 : f32 = u_xlat49.x;
        let x_2005 : f32 = u_xlat69;
        u_xlat69 = ((x_2001 * x_2003) + x_2005);
        let x_2008 : vec4<f32> = u_xlat14;
        let x_2009 : vec2<f32> = vec2<f32>(x_2008.z, x_2008.w);
        let x_2011 : f32 = u_xlat4.z;
        txVec18 = vec3<f32>(x_2009.x, x_2009.y, x_2011);
        let x_2018 : vec3<f32> = txVec18;
        let x_2020 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2018.xy, x_2018.z);
        u_xlat49.x = x_2020;
        let x_2023 : f32 = u_xlat19.y;
        let x_2025 : f32 = u_xlat49.x;
        let x_2027 : f32 = u_xlat69;
        u_xlat69 = ((x_2023 * x_2025) + x_2027);
        let x_2030 : vec4<f32> = u_xlat15;
        let x_2031 : vec2<f32> = vec2<f32>(x_2030.x, x_2030.y);
        let x_2033 : f32 = u_xlat4.z;
        txVec19 = vec3<f32>(x_2031.x, x_2031.y, x_2033);
        let x_2040 : vec3<f32> = txVec19;
        let x_2042 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2040.xy, x_2040.z);
        u_xlat49.x = x_2042;
        let x_2045 : f32 = u_xlat19.z;
        let x_2047 : f32 = u_xlat49.x;
        let x_2049 : f32 = u_xlat69;
        u_xlat69 = ((x_2045 * x_2047) + x_2049);
        let x_2052 : vec4<f32> = u_xlat16;
        let x_2053 : vec2<f32> = vec2<f32>(x_2052.z, x_2052.w);
        let x_2055 : f32 = u_xlat4.z;
        txVec20 = vec3<f32>(x_2053.x, x_2053.y, x_2055);
        let x_2062 : vec3<f32> = txVec20;
        let x_2064 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2062.xy, x_2062.z);
        u_xlat49.x = x_2064;
        let x_2067 : f32 = u_xlat19.w;
        let x_2069 : f32 = u_xlat49.x;
        let x_2071 : f32 = u_xlat69;
        u_xlat69 = ((x_2067 * x_2069) + x_2071);
        let x_2074 : vec4<f32> = u_xlat17;
        let x_2075 : vec2<f32> = vec2<f32>(x_2074.x, x_2074.y);
        let x_2077 : f32 = u_xlat4.z;
        txVec21 = vec3<f32>(x_2075.x, x_2075.y, x_2077);
        let x_2084 : vec3<f32> = txVec21;
        let x_2086 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2084.xy, x_2084.z);
        u_xlat49.x = x_2086;
        let x_2089 : f32 = u_xlat20.x;
        let x_2091 : f32 = u_xlat49.x;
        let x_2093 : f32 = u_xlat69;
        u_xlat69 = ((x_2089 * x_2091) + x_2093);
        let x_2096 : vec4<f32> = u_xlat17;
        let x_2097 : vec2<f32> = vec2<f32>(x_2096.z, x_2096.w);
        let x_2099 : f32 = u_xlat4.z;
        txVec22 = vec3<f32>(x_2097.x, x_2097.y, x_2099);
        let x_2106 : vec3<f32> = txVec22;
        let x_2108 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2106.xy, x_2106.z);
        u_xlat49.x = x_2108;
        let x_2111 : f32 = u_xlat20.y;
        let x_2113 : f32 = u_xlat49.x;
        let x_2115 : f32 = u_xlat69;
        u_xlat69 = ((x_2111 * x_2113) + x_2115);
        let x_2118 : vec2<f32> = u_xlat30;
        let x_2120 : f32 = u_xlat4.z;
        txVec23 = vec3<f32>(x_2118.x, x_2118.y, x_2120);
        let x_2127 : vec3<f32> = txVec23;
        let x_2129 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2127.xy, x_2127.z);
        u_xlat49.x = x_2129;
        let x_2132 : f32 = u_xlat20.z;
        let x_2134 : f32 = u_xlat49.x;
        let x_2136 : f32 = u_xlat69;
        u_xlat69 = ((x_2132 * x_2134) + x_2136);
        let x_2139 : vec2<f32> = u_xlat57;
        let x_2141 : f32 = u_xlat4.z;
        txVec24 = vec3<f32>(x_2139.x, x_2139.y, x_2141);
        let x_2148 : vec3<f32> = txVec24;
        let x_2150 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2148.xy, x_2148.z);
        u_xlat49.x = x_2150;
        let x_2153 : f32 = u_xlat20.w;
        let x_2155 : f32 = u_xlat49.x;
        let x_2157 : f32 = u_xlat69;
        u_xlat69 = ((x_2153 * x_2155) + x_2157);
        let x_2160 : vec4<f32> = u_xlat12;
        let x_2161 : vec2<f32> = vec2<f32>(x_2160.x, x_2160.y);
        let x_2163 : f32 = u_xlat4.z;
        txVec25 = vec3<f32>(x_2161.x, x_2161.y, x_2163);
        let x_2170 : vec3<f32> = txVec25;
        let x_2172 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2170.xy, x_2170.z);
        u_xlat49.x = x_2172;
        let x_2175 : f32 = u_xlat8.x;
        let x_2177 : f32 = u_xlat49.x;
        let x_2179 : f32 = u_xlat69;
        u_xlat69 = ((x_2175 * x_2177) + x_2179);
        let x_2182 : vec4<f32> = u_xlat12;
        let x_2183 : vec2<f32> = vec2<f32>(x_2182.z, x_2182.w);
        let x_2185 : f32 = u_xlat4.z;
        txVec26 = vec3<f32>(x_2183.x, x_2183.y, x_2185);
        let x_2192 : vec3<f32> = txVec26;
        let x_2194 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2192.xy, x_2192.z);
        u_xlat49.x = x_2194;
        let x_2197 : f32 = u_xlat8.y;
        let x_2199 : f32 = u_xlat49.x;
        let x_2201 : f32 = u_xlat69;
        u_xlat69 = ((x_2197 * x_2199) + x_2201);
        let x_2204 : vec2<f32> = u_xlat52;
        let x_2206 : f32 = u_xlat4.z;
        txVec27 = vec3<f32>(x_2204.x, x_2204.y, x_2206);
        let x_2213 : vec3<f32> = txVec27;
        let x_2215 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2213.xy, x_2213.z);
        u_xlat49.x = x_2215;
        let x_2218 : f32 = u_xlat8.z;
        let x_2220 : f32 = u_xlat49.x;
        let x_2222 : f32 = u_xlat69;
        u_xlat69 = ((x_2218 * x_2220) + x_2222);
        let x_2225 : vec4<f32> = u_xlat7;
        let x_2226 : vec2<f32> = vec2<f32>(x_2225.x, x_2225.y);
        let x_2228 : f32 = u_xlat4.z;
        txVec28 = vec3<f32>(x_2226.x, x_2226.y, x_2228);
        let x_2235 : vec3<f32> = txVec28;
        let x_2237 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2235.xy, x_2235.z);
        u_xlat7.x = x_2237;
        let x_2240 : f32 = u_xlat8.w;
        let x_2242 : f32 = u_xlat7.x;
        let x_2244 : f32 = u_xlat69;
        u_xlat48.x = ((x_2240 * x_2242) + x_2244);
      }
    }
  } else {
    let x_2249 : vec4<f32> = u_xlat4;
    let x_2250 : vec2<f32> = vec2<f32>(x_2249.x, x_2249.y);
    let x_2252 : f32 = u_xlat4.z;
    txVec29 = vec3<f32>(x_2250.x, x_2250.y, x_2252);
    let x_2259 : vec3<f32> = txVec29;
    let x_2261 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2259.xy, x_2259.z);
    u_xlat48.x = x_2261;
  }
  let x_2264 : f32 = x_667.x_MainLightShadowParams.x;
  u_xlat4.x = (-(x_2264) + 1.0f);
  let x_2269 : f32 = u_xlat48.x;
  let x_2271 : f32 = x_667.x_MainLightShadowParams.x;
  let x_2274 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_2269 * x_2271) + x_2274);
  let x_2279 : f32 = u_xlat4.z;
  u_xlatb25.x = (0.0f >= x_2279);
  let x_2284 : f32 = u_xlat4.z;
  u_xlatb46 = (x_2284 >= 1.0f);
  let x_2286 : bool = u_xlatb46;
  let x_2288 : bool = u_xlatb25.x;
  u_xlatb25.x = (x_2286 | x_2288);
  let x_2292 : bool = u_xlatb25.x;
  if (x_2292) {
    x_2293 = 1.0f;
  } else {
    let x_2298 : f32 = u_xlat4.x;
    x_2293 = x_2298;
  }
  let x_2299 : f32 = x_2293;
  u_xlat4.x = x_2299;
  let x_2301 : vec3<f32> = vs_INTERP0;
  let x_2303 : vec3<f32> = x_146.x_WorldSpaceCameraPos;
  let x_2305 : vec3<f32> = (x_2301 + -(x_2303));
  let x_2306 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2305.x, x_2305.y, x_2305.z, x_2306.w);
  let x_2308 : vec4<f32> = u_xlat7;
  let x_2310 : vec4<f32> = u_xlat7;
  u_xlat25.x = dot(vec3<f32>(x_2308.x, x_2308.y, x_2308.z), vec3<f32>(x_2310.x, x_2310.y, x_2310.z));
  let x_2315 : f32 = u_xlat25.x;
  let x_2317 : f32 = x_667.x_MainLightShadowParams.z;
  let x_2320 : f32 = x_667.x_MainLightShadowParams.w;
  u_xlat25.x = ((x_2315 * x_2317) + x_2320);
  let x_2324 : f32 = u_xlat25.x;
  u_xlat25.x = clamp(x_2324, 0.0f, 1.0f);
  let x_2329 : f32 = u_xlat4.x;
  u_xlat46 = (-(x_2329) + 1.0f);
  let x_2333 : f32 = u_xlat25.x;
  let x_2334 : f32 = u_xlat46;
  let x_2337 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_2333 * x_2334) + x_2337);
  let x_2346 : f32 = x_2344.x_MainLightCookieTextureFormat;
  u_xlatb25.x = !((x_2346 == -1.0f));
  let x_2350 : bool = u_xlatb25.x;
  if (x_2350) {
    let x_2353 : vec3<f32> = vs_INTERP0;
    let x_2356 : vec4<f32> = x_2344.x_MainLightWorldToLight[1i];
    let x_2358 : vec2<f32> = (vec2<f32>(x_2353.y, x_2353.y) * vec2<f32>(x_2356.x, x_2356.y));
    let x_2359 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_2358.x, x_2358.y, x_2359.z);
    let x_2362 : vec4<f32> = x_2344.x_MainLightWorldToLight[0i];
    let x_2364 : vec3<f32> = vs_INTERP0;
    let x_2367 : vec3<f32> = u_xlat25;
    let x_2369 : vec2<f32> = ((vec2<f32>(x_2362.x, x_2362.y) * vec2<f32>(x_2364.x, x_2364.x)) + vec2<f32>(x_2367.x, x_2367.y));
    let x_2370 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_2369.x, x_2369.y, x_2370.z);
    let x_2373 : vec4<f32> = x_2344.x_MainLightWorldToLight[2i];
    let x_2375 : vec3<f32> = vs_INTERP0;
    let x_2378 : vec3<f32> = u_xlat25;
    let x_2380 : vec2<f32> = ((vec2<f32>(x_2373.x, x_2373.y) * vec2<f32>(x_2375.z, x_2375.z)) + vec2<f32>(x_2378.x, x_2378.y));
    let x_2381 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_2380.x, x_2380.y, x_2381.z);
    let x_2383 : vec3<f32> = u_xlat25;
    let x_2386 : vec4<f32> = x_2344.x_MainLightWorldToLight[3i];
    let x_2388 : vec2<f32> = (vec2<f32>(x_2383.x, x_2383.y) + vec2<f32>(x_2386.x, x_2386.y));
    let x_2389 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_2388.x, x_2388.y, x_2389.z);
    let x_2391 : vec3<f32> = u_xlat25;
    let x_2394 : vec2<f32> = ((vec2<f32>(x_2391.x, x_2391.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2395 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_2394.x, x_2394.y, x_2395.z);
    let x_2402 : vec3<f32> = u_xlat25;
    let x_2405 : f32 = x_146.x_GlobalMipBias.x;
    let x_2406 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2402.x, x_2402.y), x_2405);
    u_xlat7 = x_2406;
    let x_2408 : f32 = x_2344.x_MainLightCookieTextureFormat;
    let x_2410 : f32 = x_2344.x_MainLightCookieTextureFormat;
    let x_2412 : f32 = x_2344.x_MainLightCookieTextureFormat;
    let x_2414 : f32 = x_2344.x_MainLightCookieTextureFormat;
    let x_2415 : vec4<f32> = vec4<f32>(x_2408, x_2410, x_2412, x_2414);
    let x_2422 : vec4<bool> = (vec4<f32>(x_2415.x, x_2415.y, x_2415.z, x_2415.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb25 = vec2<bool>(x_2422.x, x_2422.y);
    let x_2425 : bool = u_xlatb25.y;
    if (x_2425) {
      let x_2430 : f32 = u_xlat7.w;
      x_2426 = x_2430;
    } else {
      let x_2433 : f32 = u_xlat7.x;
      x_2426 = x_2433;
    }
    let x_2434 : f32 = x_2426;
    u_xlat46 = x_2434;
    let x_2436 : bool = u_xlatb25.x;
    if (x_2436) {
      let x_2440 : vec4<f32> = u_xlat7;
      x_2437 = vec3<f32>(x_2440.x, x_2440.y, x_2440.z);
    } else {
      let x_2443 : f32 = u_xlat46;
      x_2437 = vec3<f32>(x_2443, x_2443, x_2443);
    }
    let x_2445 : vec3<f32> = x_2437;
    let x_2446 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2445.x, x_2445.y, x_2445.z, x_2446.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_2452 : vec4<f32> = u_xlat7;
  let x_2455 : vec4<f32> = x_146.x_MainLightColor;
  let x_2457 : vec3<f32> = (vec3<f32>(x_2452.x, x_2452.y, x_2452.z) * vec3<f32>(x_2455.x, x_2455.y, x_2455.z));
  let x_2458 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2457.x, x_2457.y, x_2457.z, x_2458.w);
  let x_2460 : f32 = u_xlat27;
  let x_2462 : vec4<f32> = u_xlat7;
  let x_2464 : vec3<f32> = (vec3<f32>(x_2460, x_2460, x_2460) * vec3<f32>(x_2462.x, x_2462.y, x_2462.z));
  let x_2465 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2464.x, x_2464.y, x_2464.z, x_2465.w);
  let x_2467 : vec4<f32> = u_xlat1;
  let x_2470 : vec3<f32> = u_xlat21;
  u_xlat25.x = dot(-(vec3<f32>(x_2467.x, x_2467.y, x_2467.z)), x_2470);
  let x_2474 : f32 = u_xlat25.x;
  let x_2476 : f32 = u_xlat25.x;
  u_xlat25.x = (x_2474 + x_2476);
  let x_2479 : vec3<f32> = u_xlat21;
  let x_2480 : vec3<f32> = u_xlat25;
  let x_2484 : vec4<f32> = u_xlat1;
  let x_2487 : vec3<f32> = ((x_2479 * -(vec3<f32>(x_2480.x, x_2480.x, x_2480.x))) + -(vec3<f32>(x_2484.x, x_2484.y, x_2484.z)));
  let x_2488 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2487.x, x_2487.y, x_2487.z, x_2488.w);
  let x_2490 : vec3<f32> = u_xlat21;
  let x_2491 : vec4<f32> = u_xlat1;
  u_xlat25.x = dot(x_2490, vec3<f32>(x_2491.x, x_2491.y, x_2491.z));
  let x_2496 : f32 = u_xlat25.x;
  u_xlat25.x = clamp(x_2496, 0.0f, 1.0f);
  let x_2500 : f32 = u_xlat25.x;
  u_xlat25.x = (-(x_2500) + 1.0f);
  let x_2505 : f32 = u_xlat25.x;
  let x_2507 : f32 = u_xlat25.x;
  u_xlat25.x = (x_2505 * x_2507);
  let x_2511 : f32 = u_xlat25.x;
  let x_2513 : f32 = u_xlat25.x;
  u_xlat25.x = (x_2511 * x_2513);
  let x_2516 : f32 = u_xlat64;
  u_xlat46 = ((-(x_2516) * 0.699999988f) + 1.700000048f);
  let x_2522 : f32 = u_xlat64;
  let x_2523 : f32 = u_xlat46;
  u_xlat64 = (x_2522 * x_2523);
  let x_2525 : f32 = u_xlat64;
  u_xlat64 = (x_2525 * 6.0f);
  let x_2536 : vec4<f32> = u_xlat8;
  let x_2538 : f32 = u_xlat64;
  let x_2539 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2536.x, x_2536.y, x_2536.z), x_2538);
  u_xlat8 = x_2539;
  let x_2541 : f32 = u_xlat8.w;
  u_xlat64 = (x_2541 + -1.0f);
  let x_2544 : f32 = x_59.unity_SpecCube0_HDR.w;
  let x_2545 : f32 = u_xlat64;
  u_xlat64 = ((x_2544 * x_2545) + 1.0f);
  let x_2548 : f32 = u_xlat64;
  u_xlat64 = max(x_2548, 0.0f);
  let x_2550 : f32 = u_xlat64;
  u_xlat64 = log2(x_2550);
  let x_2552 : f32 = u_xlat64;
  let x_2554 : f32 = x_59.unity_SpecCube0_HDR.y;
  u_xlat64 = (x_2552 * x_2554);
  let x_2556 : f32 = u_xlat64;
  u_xlat64 = exp2(x_2556);
  let x_2558 : f32 = u_xlat64;
  let x_2560 : f32 = x_59.unity_SpecCube0_HDR.x;
  u_xlat64 = (x_2558 * x_2560);
  let x_2562 : vec4<f32> = u_xlat8;
  let x_2564 : f32 = u_xlat64;
  let x_2566 : vec3<f32> = (vec3<f32>(x_2562.x, x_2562.y, x_2562.z) * vec3<f32>(x_2564, x_2564, x_2564));
  let x_2567 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2566.x, x_2566.y, x_2566.z, x_2567.w);
  let x_2569 : f32 = u_xlat66;
  let x_2571 : f32 = u_xlat66;
  u_xlat48 = ((vec2<f32>(x_2569, x_2569) * vec2<f32>(x_2571, x_2571)) + vec2<f32>(-1.0f, 1.0f));
  let x_2577 : f32 = u_xlat48.y;
  u_xlat64 = (1.0f / x_2577);
  let x_2579 : vec3<f32> = u_xlat2;
  let x_2581 : vec4<f32> = u_xlat0;
  let x_2583 : vec3<f32> = (-(x_2579) + vec3<f32>(x_2581.x, x_2581.x, x_2581.x));
  let x_2584 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2583.x, x_2583.y, x_2583.z, x_2584.w);
  let x_2586 : vec3<f32> = u_xlat25;
  let x_2588 : vec4<f32> = u_xlat9;
  let x_2591 : vec3<f32> = u_xlat2;
  let x_2592 : vec3<f32> = ((vec3<f32>(x_2586.x, x_2586.x, x_2586.x) * vec3<f32>(x_2588.x, x_2588.y, x_2588.z)) + x_2591);
  let x_2593 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2592.x, x_2592.y, x_2592.z, x_2593.w);
  let x_2595 : f32 = u_xlat64;
  let x_2597 : vec4<f32> = u_xlat9;
  let x_2599 : vec3<f32> = (vec3<f32>(x_2595, x_2595, x_2595) * vec3<f32>(x_2597.x, x_2597.y, x_2597.z));
  let x_2600 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2599.x, x_2599.y, x_2599.z, x_2600.w);
  let x_2602 : vec4<f32> = u_xlat8;
  let x_2604 : vec4<f32> = u_xlat9;
  let x_2606 : vec3<f32> = (vec3<f32>(x_2602.x, x_2602.y, x_2602.z) * vec3<f32>(x_2604.x, x_2604.y, x_2604.z));
  let x_2607 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2606.x, x_2606.y, x_2606.z, x_2607.w);
  let x_2609 : vec4<f32> = u_xlat5;
  let x_2611 : vec3<f32> = u_xlat3;
  let x_2613 : vec4<f32> = u_xlat8;
  let x_2615 : vec3<f32> = ((vec3<f32>(x_2609.x, x_2609.y, x_2609.z) * x_2611) + vec3<f32>(x_2613.x, x_2613.y, x_2613.z));
  let x_2616 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2615.x, x_2615.y, x_2615.z, x_2616.w);
  let x_2619 : f32 = u_xlat4.x;
  let x_2621 : f32 = x_59.unity_LightData.z;
  u_xlat0.x = (x_2619 * x_2621);
  let x_2624 : vec3<f32> = u_xlat21;
  let x_2626 : vec4<f32> = x_146.x_MainLightPosition;
  u_xlat64 = dot(x_2624, vec3<f32>(x_2626.x, x_2626.y, x_2626.z));
  let x_2629 : f32 = u_xlat64;
  u_xlat64 = clamp(x_2629, 0.0f, 1.0f);
  let x_2632 : f32 = u_xlat0.x;
  let x_2633 : f32 = u_xlat64;
  u_xlat0.x = (x_2632 * x_2633);
  let x_2636 : vec4<f32> = u_xlat0;
  let x_2638 : vec4<f32> = u_xlat7;
  let x_2640 : vec3<f32> = (vec3<f32>(x_2636.x, x_2636.x, x_2636.x) * vec3<f32>(x_2638.x, x_2638.y, x_2638.z));
  let x_2641 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2640.x, x_2640.y, x_2640.z, x_2641.w);
  let x_2643 : vec4<f32> = u_xlat1;
  let x_2646 : vec4<f32> = x_146.x_MainLightPosition;
  let x_2648 : vec3<f32> = (vec3<f32>(x_2643.x, x_2643.y, x_2643.z) + vec3<f32>(x_2646.x, x_2646.y, x_2646.z));
  let x_2649 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2648.x, x_2648.y, x_2648.z, x_2649.w);
  let x_2651 : vec4<f32> = u_xlat7;
  let x_2653 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(vec3<f32>(x_2651.x, x_2651.y, x_2651.z), vec3<f32>(x_2653.x, x_2653.y, x_2653.z));
  let x_2658 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2658, 1.17549435e-37f);
  let x_2662 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_2662);
  let x_2665 : vec4<f32> = u_xlat0;
  let x_2667 : vec4<f32> = u_xlat7;
  let x_2669 : vec3<f32> = (vec3<f32>(x_2665.x, x_2665.x, x_2665.x) * vec3<f32>(x_2667.x, x_2667.y, x_2667.z));
  let x_2670 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2669.x, x_2669.y, x_2669.z, x_2670.w);
  let x_2672 : vec3<f32> = u_xlat21;
  let x_2673 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_2672, vec3<f32>(x_2673.x, x_2673.y, x_2673.z));
  let x_2678 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_2678, 0.0f, 1.0f);
  let x_2682 : vec4<f32> = x_146.x_MainLightPosition;
  let x_2684 : vec4<f32> = u_xlat7;
  u_xlat64 = dot(vec3<f32>(x_2682.x, x_2682.y, x_2682.z), vec3<f32>(x_2684.x, x_2684.y, x_2684.z));
  let x_2687 : f32 = u_xlat64;
  u_xlat64 = clamp(x_2687, 0.0f, 1.0f);
  let x_2690 : f32 = u_xlat0.x;
  let x_2692 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2690 * x_2692);
  let x_2696 : f32 = u_xlat0.x;
  let x_2698 : f32 = u_xlat48.x;
  u_xlat0.x = ((x_2696 * x_2698) + 1.000010014f);
  let x_2703 : f32 = u_xlat64;
  let x_2704 : f32 = u_xlat64;
  u_xlat64 = (x_2703 * x_2704);
  let x_2707 : f32 = u_xlat0.x;
  let x_2709 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2707 * x_2709);
  let x_2712 : f32 = u_xlat64;
  u_xlat64 = max(x_2712, 0.100000001f);
  let x_2715 : f32 = u_xlat0.x;
  let x_2716 : f32 = u_xlat64;
  u_xlat0.x = (x_2715 * x_2716);
  let x_2719 : f32 = u_xlat68;
  let x_2721 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2719 * x_2721);
  let x_2724 : f32 = u_xlat67;
  let x_2726 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2724 / x_2726);
  let x_2729 : vec3<f32> = u_xlat2;
  let x_2730 : vec4<f32> = u_xlat0;
  let x_2733 : vec3<f32> = u_xlat3;
  let x_2734 : vec3<f32> = ((x_2729 * vec3<f32>(x_2730.x, x_2730.x, x_2730.x)) + x_2733);
  let x_2735 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2734.x, x_2734.y, x_2734.z, x_2735.w);
  let x_2737 : vec4<f32> = u_xlat4;
  let x_2739 : vec4<f32> = u_xlat7;
  let x_2741 : vec3<f32> = (vec3<f32>(x_2737.x, x_2737.y, x_2737.z) * vec3<f32>(x_2739.x, x_2739.y, x_2739.z));
  let x_2742 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2741.x, x_2741.y, x_2741.z, x_2742.w);
  let x_2745 : f32 = x_146.x_AdditionalLightsCount.x;
  let x_2747 : f32 = x_59.unity_LightData.y;
  u_xlat0.x = min(x_2745, x_2747);
  let x_2752 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_2752));
  let x_2757 : f32 = x_2344.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2759 : f32 = x_2344.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2761 : f32 = x_2344.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2763 : f32 = x_2344.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2764 : vec4<f32> = vec4<f32>(x_2757, x_2759, x_2761, x_2763);
  let x_2770 : vec4<bool> = (vec4<f32>(x_2764.x, x_2764.y, x_2764.z, x_2764.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2770.x, x_2770.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2781 : u32 = u_xlatu_loop_1;
    let x_2782 : u32 = u_xlatu0;
    if ((x_2781 < x_2782)) {
    } else {
      break;
    }
    let x_2785 : u32 = u_xlatu_loop_1;
    u_xlatu66 = (x_2785 >> 2u);
    let x_2788 : u32 = u_xlatu_loop_1;
    u_xlati69 = bitcast<i32>((x_2788 & 3u));
    let x_2791 : u32 = u_xlatu66;
    let x_2794 : vec4<f32> = x_59.unity_LightIndices[bitcast<i32>(x_2791)];
    let x_2804 : i32 = u_xlati69;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2809 : vec4<u32> = indexable[x_2804];
    u_xlat66 = dot(x_2794, bitcast<vec4<f32>>(x_2809));
    let x_2812 : f32 = u_xlat66;
    u_xlatu66 = bitcast<u32>(i32(x_2812));
    let x_2815 : vec3<f32> = vs_INTERP0;
    let x_2827 : u32 = u_xlatu66;
    let x_2830 : vec4<f32> = x_2826.x_AdditionalLightsPosition[bitcast<i32>(x_2827)];
    let x_2833 : u32 = u_xlatu66;
    let x_2836 : vec4<f32> = x_2826.x_AdditionalLightsPosition[bitcast<i32>(x_2833)];
    let x_2838 : vec3<f32> = ((-(x_2815) * vec3<f32>(x_2830.w, x_2830.w, x_2830.w)) + vec3<f32>(x_2836.x, x_2836.y, x_2836.z));
    let x_2839 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2838.x, x_2838.y, x_2838.z, x_2839.w);
    let x_2841 : vec4<f32> = u_xlat9;
    let x_2843 : vec4<f32> = u_xlat9;
    u_xlat69 = dot(vec3<f32>(x_2841.x, x_2841.y, x_2841.z), vec3<f32>(x_2843.x, x_2843.y, x_2843.z));
    let x_2846 : f32 = u_xlat69;
    u_xlat69 = max(x_2846, 6.10351562e-05f);
    let x_2849 : f32 = u_xlat69;
    u_xlat49.x = inverseSqrt(x_2849);
    let x_2852 : vec2<f32> = u_xlat49;
    let x_2854 : vec4<f32> = u_xlat9;
    let x_2856 : vec3<f32> = (vec3<f32>(x_2852.x, x_2852.x, x_2852.x) * vec3<f32>(x_2854.x, x_2854.y, x_2854.z));
    let x_2857 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2856.x, x_2856.y, x_2856.z, x_2857.w);
    let x_2860 : f32 = u_xlat69;
    u_xlat70 = (1.0f / x_2860);
    let x_2862 : f32 = u_xlat69;
    let x_2863 : u32 = u_xlatu66;
    let x_2866 : f32 = x_2826.x_AdditionalLightsAttenuation[bitcast<i32>(x_2863)].x;
    u_xlat69 = (x_2862 * x_2866);
    let x_2868 : f32 = u_xlat69;
    let x_2870 : f32 = u_xlat69;
    u_xlat69 = ((-(x_2868) * x_2870) + 1.0f);
    let x_2873 : f32 = u_xlat69;
    u_xlat69 = max(x_2873, 0.0f);
    let x_2875 : f32 = u_xlat69;
    let x_2876 : f32 = u_xlat69;
    u_xlat69 = (x_2875 * x_2876);
    let x_2878 : f32 = u_xlat69;
    let x_2879 : f32 = u_xlat70;
    u_xlat69 = (x_2878 * x_2879);
    let x_2881 : u32 = u_xlatu66;
    let x_2884 : vec4<f32> = x_2826.x_AdditionalLightsSpotDir[bitcast<i32>(x_2881)];
    let x_2886 : vec4<f32> = u_xlat10;
    u_xlat70 = dot(vec3<f32>(x_2884.x, x_2884.y, x_2884.z), vec3<f32>(x_2886.x, x_2886.y, x_2886.z));
    let x_2889 : f32 = u_xlat70;
    let x_2890 : u32 = u_xlatu66;
    let x_2893 : f32 = x_2826.x_AdditionalLightsAttenuation[bitcast<i32>(x_2890)].z;
    let x_2895 : u32 = u_xlatu66;
    let x_2898 : f32 = x_2826.x_AdditionalLightsAttenuation[bitcast<i32>(x_2895)].w;
    u_xlat70 = ((x_2889 * x_2893) + x_2898);
    let x_2900 : f32 = u_xlat70;
    u_xlat70 = clamp(x_2900, 0.0f, 1.0f);
    let x_2902 : f32 = u_xlat70;
    let x_2903 : f32 = u_xlat70;
    u_xlat70 = (x_2902 * x_2903);
    let x_2905 : f32 = u_xlat69;
    let x_2906 : f32 = u_xlat70;
    u_xlat69 = (x_2905 * x_2906);
    let x_2909 : u32 = u_xlatu66;
    u_xlatu70 = (x_2909 >> 5u);
    let x_2912 : u32 = u_xlatu66;
    u_xlati71 = (1i << bitcast<u32>((bitcast<i32>(x_2912) & 31i)));
    let x_2918 : i32 = u_xlati71;
    let x_2920 : u32 = u_xlatu70;
    let x_2923 : f32 = x_2344.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2920)].el;
    u_xlati70 = bitcast<i32>((bitcast<u32>(x_2918) & bitcast<u32>(x_2923)));
    let x_2927 : i32 = u_xlati70;
    if ((x_2927 != 0i)) {
      let x_2937 : u32 = u_xlatu66;
      let x_2940 : f32 = x_2936.x_AdditionalLightsLightTypes[bitcast<i32>(x_2937)].el;
      u_xlati70 = i32(x_2940);
      let x_2942 : i32 = u_xlati70;
      u_xlati71 = select(1i, 0i, (x_2942 != 0i));
      let x_2946 : u32 = u_xlatu66;
      u_xlati72 = (bitcast<i32>(x_2946) << bitcast<u32>(2i));
      let x_2949 : i32 = u_xlati71;
      if ((x_2949 != 0i)) {
        let x_2953 : vec3<f32> = vs_INTERP0;
        let x_2955 : i32 = u_xlati72;
        let x_2958 : i32 = u_xlati72;
        let x_2962 : vec4<f32> = x_2936.x_AdditionalLightsWorldToLights[((x_2955 + 1i) / 4i)][((x_2958 + 1i) % 4i)];
        let x_2964 : vec3<f32> = (vec3<f32>(x_2953.y, x_2953.y, x_2953.y) * vec3<f32>(x_2962.x, x_2962.y, x_2962.w));
        let x_2965 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2964.x, x_2964.y, x_2964.z, x_2965.w);
        let x_2967 : i32 = u_xlati72;
        let x_2969 : i32 = u_xlati72;
        let x_2972 : vec4<f32> = x_2936.x_AdditionalLightsWorldToLights[(x_2967 / 4i)][(x_2969 % 4i)];
        let x_2974 : vec3<f32> = vs_INTERP0;
        let x_2977 : vec4<f32> = u_xlat11;
        let x_2979 : vec3<f32> = ((vec3<f32>(x_2972.x, x_2972.y, x_2972.w) * vec3<f32>(x_2974.x, x_2974.x, x_2974.x)) + vec3<f32>(x_2977.x, x_2977.y, x_2977.z));
        let x_2980 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2979.x, x_2979.y, x_2979.z, x_2980.w);
        let x_2982 : i32 = u_xlati72;
        let x_2985 : i32 = u_xlati72;
        let x_2989 : vec4<f32> = x_2936.x_AdditionalLightsWorldToLights[((x_2982 + 2i) / 4i)][((x_2985 + 2i) % 4i)];
        let x_2991 : vec3<f32> = vs_INTERP0;
        let x_2994 : vec4<f32> = u_xlat11;
        let x_2996 : vec3<f32> = ((vec3<f32>(x_2989.x, x_2989.y, x_2989.w) * vec3<f32>(x_2991.z, x_2991.z, x_2991.z)) + vec3<f32>(x_2994.x, x_2994.y, x_2994.z));
        let x_2997 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2996.x, x_2996.y, x_2996.z, x_2997.w);
        let x_2999 : vec4<f32> = u_xlat11;
        let x_3001 : i32 = u_xlati72;
        let x_3004 : i32 = u_xlati72;
        let x_3008 : vec4<f32> = x_2936.x_AdditionalLightsWorldToLights[((x_3001 + 3i) / 4i)][((x_3004 + 3i) % 4i)];
        let x_3010 : vec3<f32> = (vec3<f32>(x_2999.x, x_2999.y, x_2999.z) + vec3<f32>(x_3008.x, x_3008.y, x_3008.w));
        let x_3011 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3010.x, x_3010.y, x_3010.z, x_3011.w);
        let x_3013 : vec4<f32> = u_xlat11;
        let x_3015 : vec4<f32> = u_xlat11;
        let x_3017 : vec2<f32> = (vec2<f32>(x_3013.x, x_3013.y) / vec2<f32>(x_3015.z, x_3015.z));
        let x_3018 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3017.x, x_3017.y, x_3018.z, x_3018.w);
        let x_3020 : vec4<f32> = u_xlat11;
        let x_3023 : vec2<f32> = ((vec2<f32>(x_3020.x, x_3020.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3024 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3023.x, x_3023.y, x_3024.z, x_3024.w);
        let x_3026 : vec4<f32> = u_xlat11;
        let x_3030 : vec2<f32> = clamp(vec2<f32>(x_3026.x, x_3026.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3031 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3030.x, x_3030.y, x_3031.z, x_3031.w);
        let x_3033 : u32 = u_xlatu66;
        let x_3036 : vec4<f32> = x_2936.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3033)];
        let x_3038 : vec4<f32> = u_xlat11;
        let x_3041 : u32 = u_xlatu66;
        let x_3044 : vec4<f32> = x_2936.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3041)];
        let x_3046 : vec2<f32> = ((vec2<f32>(x_3036.x, x_3036.y) * vec2<f32>(x_3038.x, x_3038.y)) + vec2<f32>(x_3044.z, x_3044.w));
        let x_3047 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3046.x, x_3046.y, x_3047.z, x_3047.w);
      } else {
        let x_3051 : i32 = u_xlati70;
        u_xlatb70 = (x_3051 == 1i);
        let x_3053 : bool = u_xlatb70;
        u_xlati70 = select(0i, 1i, x_3053);
        let x_3055 : i32 = u_xlati70;
        if ((x_3055 != 0i)) {
          let x_3060 : vec3<f32> = vs_INTERP0;
          let x_3062 : i32 = u_xlati72;
          let x_3065 : i32 = u_xlati72;
          let x_3069 : vec4<f32> = x_2936.x_AdditionalLightsWorldToLights[((x_3062 + 1i) / 4i)][((x_3065 + 1i) % 4i)];
          u_xlat53 = (vec2<f32>(x_3060.y, x_3060.y) * vec2<f32>(x_3069.x, x_3069.y));
          let x_3072 : i32 = u_xlati72;
          let x_3074 : i32 = u_xlati72;
          let x_3077 : vec4<f32> = x_2936.x_AdditionalLightsWorldToLights[(x_3072 / 4i)][(x_3074 % 4i)];
          let x_3079 : vec3<f32> = vs_INTERP0;
          let x_3082 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_3077.x, x_3077.y) * vec2<f32>(x_3079.x, x_3079.x)) + x_3082);
          let x_3084 : i32 = u_xlati72;
          let x_3087 : i32 = u_xlati72;
          let x_3091 : vec4<f32> = x_2936.x_AdditionalLightsWorldToLights[((x_3084 + 2i) / 4i)][((x_3087 + 2i) % 4i)];
          let x_3093 : vec3<f32> = vs_INTERP0;
          let x_3096 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_3091.x, x_3091.y) * vec2<f32>(x_3093.z, x_3093.z)) + x_3096);
          let x_3098 : vec2<f32> = u_xlat53;
          let x_3099 : i32 = u_xlati72;
          let x_3102 : i32 = u_xlati72;
          let x_3106 : vec4<f32> = x_2936.x_AdditionalLightsWorldToLights[((x_3099 + 3i) / 4i)][((x_3102 + 3i) % 4i)];
          u_xlat53 = (x_3098 + vec2<f32>(x_3106.x, x_3106.y));
          let x_3109 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_3109 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3112 : vec2<f32> = u_xlat53;
          u_xlat53 = fract(x_3112);
          let x_3114 : u32 = u_xlatu66;
          let x_3117 : vec4<f32> = x_2936.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3114)];
          let x_3119 : vec2<f32> = u_xlat53;
          let x_3121 : u32 = u_xlatu66;
          let x_3124 : vec4<f32> = x_2936.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3121)];
          let x_3126 : vec2<f32> = ((vec2<f32>(x_3117.x, x_3117.y) * x_3119) + vec2<f32>(x_3124.z, x_3124.w));
          let x_3127 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3126.x, x_3126.y, x_3127.z, x_3127.w);
        } else {
          let x_3130 : vec3<f32> = vs_INTERP0;
          let x_3132 : i32 = u_xlati72;
          let x_3135 : i32 = u_xlati72;
          let x_3139 : vec4<f32> = x_2936.x_AdditionalLightsWorldToLights[((x_3132 + 1i) / 4i)][((x_3135 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_3130.y, x_3130.y, x_3130.y, x_3130.y) * x_3139);
          let x_3141 : i32 = u_xlati72;
          let x_3143 : i32 = u_xlati72;
          let x_3146 : vec4<f32> = x_2936.x_AdditionalLightsWorldToLights[(x_3141 / 4i)][(x_3143 % 4i)];
          let x_3147 : vec3<f32> = vs_INTERP0;
          let x_3150 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3146 * vec4<f32>(x_3147.x, x_3147.x, x_3147.x, x_3147.x)) + x_3150);
          let x_3152 : i32 = u_xlati72;
          let x_3155 : i32 = u_xlati72;
          let x_3159 : vec4<f32> = x_2936.x_AdditionalLightsWorldToLights[((x_3152 + 2i) / 4i)][((x_3155 + 2i) % 4i)];
          let x_3160 : vec3<f32> = vs_INTERP0;
          let x_3163 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3159 * vec4<f32>(x_3160.z, x_3160.z, x_3160.z, x_3160.z)) + x_3163);
          let x_3165 : vec4<f32> = u_xlat12;
          let x_3166 : i32 = u_xlati72;
          let x_3169 : i32 = u_xlati72;
          let x_3173 : vec4<f32> = x_2936.x_AdditionalLightsWorldToLights[((x_3166 + 3i) / 4i)][((x_3169 + 3i) % 4i)];
          u_xlat12 = (x_3165 + x_3173);
          let x_3175 : vec4<f32> = u_xlat12;
          let x_3177 : vec4<f32> = u_xlat12;
          let x_3179 : vec3<f32> = (vec3<f32>(x_3175.x, x_3175.y, x_3175.z) / vec3<f32>(x_3177.w, x_3177.w, x_3177.w));
          let x_3180 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3179.x, x_3179.y, x_3179.z, x_3180.w);
          let x_3182 : vec4<f32> = u_xlat12;
          let x_3184 : vec4<f32> = u_xlat12;
          u_xlat70 = dot(vec3<f32>(x_3182.x, x_3182.y, x_3182.z), vec3<f32>(x_3184.x, x_3184.y, x_3184.z));
          let x_3187 : f32 = u_xlat70;
          u_xlat70 = inverseSqrt(x_3187);
          let x_3189 : f32 = u_xlat70;
          let x_3191 : vec4<f32> = u_xlat12;
          let x_3193 : vec3<f32> = (vec3<f32>(x_3189, x_3189, x_3189) * vec3<f32>(x_3191.x, x_3191.y, x_3191.z));
          let x_3194 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3193.x, x_3193.y, x_3193.z, x_3194.w);
          let x_3196 : vec4<f32> = u_xlat12;
          u_xlat70 = dot(abs(vec3<f32>(x_3196.x, x_3196.y, x_3196.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3201 : f32 = u_xlat70;
          u_xlat70 = max(x_3201, 0.000001f);
          let x_3204 : f32 = u_xlat70;
          u_xlat70 = (1.0f / x_3204);
          let x_3206 : f32 = u_xlat70;
          let x_3208 : vec4<f32> = u_xlat12;
          let x_3210 : vec3<f32> = (vec3<f32>(x_3206, x_3206, x_3206) * vec3<f32>(x_3208.z, x_3208.x, x_3208.y));
          let x_3211 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3210.x, x_3210.y, x_3210.z, x_3211.w);
          let x_3214 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_3214);
          let x_3218 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_3218, 0.0f, 1.0f);
          let x_3222 : vec4<f32> = u_xlat13;
          let x_3225 : vec4<bool> = (vec4<f32>(x_3222.y, x_3222.z, x_3222.y, x_3222.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb53 = vec2<bool>(x_3225.x, x_3225.y);
          let x_3228 : bool = u_xlatb53.x;
          if (x_3228) {
            let x_3233 : f32 = u_xlat13.x;
            x_3229 = x_3233;
          } else {
            let x_3236 : f32 = u_xlat13.x;
            x_3229 = -(x_3236);
          }
          let x_3238 : f32 = x_3229;
          u_xlat53.x = x_3238;
          let x_3241 : bool = u_xlatb53.y;
          if (x_3241) {
            let x_3246 : f32 = u_xlat13.x;
            x_3242 = x_3246;
          } else {
            let x_3249 : f32 = u_xlat13.x;
            x_3242 = -(x_3249);
          }
          let x_3251 : f32 = x_3242;
          u_xlat53.y = x_3251;
          let x_3253 : vec4<f32> = u_xlat12;
          let x_3255 : f32 = u_xlat70;
          let x_3258 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_3253.x, x_3253.y) * vec2<f32>(x_3255, x_3255)) + x_3258);
          let x_3260 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_3260 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3263 : vec2<f32> = u_xlat53;
          u_xlat53 = clamp(x_3263, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3267 : u32 = u_xlatu66;
          let x_3270 : vec4<f32> = x_2936.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3267)];
          let x_3272 : vec2<f32> = u_xlat53;
          let x_3274 : u32 = u_xlatu66;
          let x_3277 : vec4<f32> = x_2936.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3274)];
          let x_3279 : vec2<f32> = ((vec2<f32>(x_3270.x, x_3270.y) * x_3272) + vec2<f32>(x_3277.z, x_3277.w));
          let x_3280 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3279.x, x_3279.y, x_3280.z, x_3280.w);
        }
      }
      let x_3287 : vec4<f32> = u_xlat11;
      let x_3290 : f32 = x_146.x_GlobalMipBias.x;
      let x_3291 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_3287.x, x_3287.y), x_3290);
      u_xlat11 = x_3291;
      let x_3293 : bool = u_xlatb7.y;
      if (x_3293) {
        let x_3298 : f32 = u_xlat11.w;
        x_3294 = x_3298;
      } else {
        let x_3301 : f32 = u_xlat11.x;
        x_3294 = x_3301;
      }
      let x_3302 : f32 = x_3294;
      u_xlat70 = x_3302;
      let x_3304 : bool = u_xlatb7.x;
      if (x_3304) {
        let x_3308 : vec4<f32> = u_xlat11;
        x_3305 = vec3<f32>(x_3308.x, x_3308.y, x_3308.z);
      } else {
        let x_3311 : f32 = u_xlat70;
        x_3305 = vec3<f32>(x_3311, x_3311, x_3311);
      }
      let x_3313 : vec3<f32> = x_3305;
      let x_3314 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3313.x, x_3313.y, x_3313.z, x_3314.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_3320 : vec4<f32> = u_xlat11;
    let x_3322 : u32 = u_xlatu66;
    let x_3325 : vec4<f32> = x_2826.x_AdditionalLightsColor[bitcast<i32>(x_3322)];
    let x_3327 : vec3<f32> = (vec3<f32>(x_3320.x, x_3320.y, x_3320.z) * vec3<f32>(x_3325.x, x_3325.y, x_3325.z));
    let x_3328 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3327.x, x_3327.y, x_3327.z, x_3328.w);
    let x_3330 : f32 = u_xlat27;
    let x_3332 : vec4<f32> = u_xlat11;
    let x_3334 : vec3<f32> = (vec3<f32>(x_3330, x_3330, x_3330) * vec3<f32>(x_3332.x, x_3332.y, x_3332.z));
    let x_3335 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3334.x, x_3334.y, x_3334.z, x_3335.w);
    let x_3337 : vec3<f32> = u_xlat21;
    let x_3338 : vec4<f32> = u_xlat10;
    u_xlat66 = dot(x_3337, vec3<f32>(x_3338.x, x_3338.y, x_3338.z));
    let x_3341 : f32 = u_xlat66;
    u_xlat66 = clamp(x_3341, 0.0f, 1.0f);
    let x_3343 : f32 = u_xlat66;
    let x_3344 : f32 = u_xlat69;
    u_xlat66 = (x_3343 * x_3344);
    let x_3346 : f32 = u_xlat66;
    let x_3348 : vec4<f32> = u_xlat11;
    let x_3350 : vec3<f32> = (vec3<f32>(x_3346, x_3346, x_3346) * vec3<f32>(x_3348.x, x_3348.y, x_3348.z));
    let x_3351 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3350.x, x_3350.y, x_3350.z, x_3351.w);
    let x_3353 : vec4<f32> = u_xlat9;
    let x_3355 : vec2<f32> = u_xlat49;
    let x_3358 : vec4<f32> = u_xlat1;
    let x_3360 : vec3<f32> = ((vec3<f32>(x_3353.x, x_3353.y, x_3353.z) * vec3<f32>(x_3355.x, x_3355.x, x_3355.x)) + vec3<f32>(x_3358.x, x_3358.y, x_3358.z));
    let x_3361 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3360.x, x_3360.y, x_3360.z, x_3361.w);
    let x_3363 : vec4<f32> = u_xlat9;
    let x_3365 : vec4<f32> = u_xlat9;
    u_xlat66 = dot(vec3<f32>(x_3363.x, x_3363.y, x_3363.z), vec3<f32>(x_3365.x, x_3365.y, x_3365.z));
    let x_3368 : f32 = u_xlat66;
    u_xlat66 = max(x_3368, 1.17549435e-37f);
    let x_3370 : f32 = u_xlat66;
    u_xlat66 = inverseSqrt(x_3370);
    let x_3372 : f32 = u_xlat66;
    let x_3374 : vec4<f32> = u_xlat9;
    let x_3376 : vec3<f32> = (vec3<f32>(x_3372, x_3372, x_3372) * vec3<f32>(x_3374.x, x_3374.y, x_3374.z));
    let x_3377 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3376.x, x_3376.y, x_3376.z, x_3377.w);
    let x_3379 : vec3<f32> = u_xlat21;
    let x_3380 : vec4<f32> = u_xlat9;
    u_xlat66 = dot(x_3379, vec3<f32>(x_3380.x, x_3380.y, x_3380.z));
    let x_3383 : f32 = u_xlat66;
    u_xlat66 = clamp(x_3383, 0.0f, 1.0f);
    let x_3385 : vec4<f32> = u_xlat10;
    let x_3387 : vec4<f32> = u_xlat9;
    u_xlat69 = dot(vec3<f32>(x_3385.x, x_3385.y, x_3385.z), vec3<f32>(x_3387.x, x_3387.y, x_3387.z));
    let x_3390 : f32 = u_xlat69;
    u_xlat69 = clamp(x_3390, 0.0f, 1.0f);
    let x_3392 : f32 = u_xlat66;
    let x_3393 : f32 = u_xlat66;
    u_xlat66 = (x_3392 * x_3393);
    let x_3395 : f32 = u_xlat66;
    let x_3397 : f32 = u_xlat48.x;
    u_xlat66 = ((x_3395 * x_3397) + 1.000010014f);
    let x_3400 : f32 = u_xlat69;
    let x_3401 : f32 = u_xlat69;
    u_xlat69 = (x_3400 * x_3401);
    let x_3403 : f32 = u_xlat66;
    let x_3404 : f32 = u_xlat66;
    u_xlat66 = (x_3403 * x_3404);
    let x_3406 : f32 = u_xlat69;
    u_xlat69 = max(x_3406, 0.100000001f);
    let x_3408 : f32 = u_xlat66;
    let x_3409 : f32 = u_xlat69;
    u_xlat66 = (x_3408 * x_3409);
    let x_3411 : f32 = u_xlat68;
    let x_3412 : f32 = u_xlat66;
    u_xlat66 = (x_3411 * x_3412);
    let x_3414 : f32 = u_xlat67;
    let x_3415 : f32 = u_xlat66;
    u_xlat66 = (x_3414 / x_3415);
    let x_3417 : vec3<f32> = u_xlat2;
    let x_3418 : f32 = u_xlat66;
    let x_3421 : vec3<f32> = u_xlat3;
    let x_3422 : vec3<f32> = ((x_3417 * vec3<f32>(x_3418, x_3418, x_3418)) + x_3421);
    let x_3423 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3422.x, x_3422.y, x_3422.z, x_3423.w);
    let x_3425 : vec4<f32> = u_xlat9;
    let x_3427 : vec4<f32> = u_xlat11;
    let x_3430 : vec4<f32> = u_xlat8;
    let x_3432 : vec3<f32> = ((vec3<f32>(x_3425.x, x_3425.y, x_3425.z) * vec3<f32>(x_3427.x, x_3427.y, x_3427.z)) + vec3<f32>(x_3430.x, x_3430.y, x_3430.z));
    let x_3433 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3432.x, x_3432.y, x_3432.z, x_3433.w);

    continuing {
      let x_3435 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3435 + bitcast<u32>(1i));
    }
  }
  let x_3437 : vec4<f32> = u_xlat5;
  let x_3439 : vec3<f32> = u_xlat6;
  let x_3442 : vec4<f32> = u_xlat4;
  let x_3444 : vec3<f32> = ((vec3<f32>(x_3437.x, x_3437.y, x_3437.z) * vec3<f32>(x_3439.x, x_3439.x, x_3439.x)) + vec3<f32>(x_3442.x, x_3442.y, x_3442.z));
  let x_3445 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3444.x, x_3444.y, x_3444.z, x_3445.w);
  let x_3447 : vec4<f32> = u_xlat8;
  let x_3449 : vec4<f32> = u_xlat0;
  let x_3451 : vec3<f32> = (vec3<f32>(x_3447.x, x_3447.y, x_3447.z) + vec3<f32>(x_3449.x, x_3449.y, x_3449.z));
  let x_3452 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3451.x, x_3451.y, x_3451.z, x_3452.w);
  let x_3455 : f32 = u_xlat65;
  let x_3456 : f32 = u_xlat65;
  u_xlat63 = (x_3455 * -(x_3456));
  let x_3459 : f32 = u_xlat63;
  u_xlat63 = exp2(x_3459);
  let x_3461 : vec4<f32> = u_xlat0;
  let x_3465 : vec4<f32> = x_146.unity_FogColor;
  let x_3468 : vec3<f32> = (vec3<f32>(x_3461.x, x_3461.y, x_3461.z) + -(vec3<f32>(x_3465.x, x_3465.y, x_3465.z)));
  let x_3469 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3468.x, x_3468.y, x_3468.z, x_3469.w);
  let x_3473 : f32 = u_xlat63;
  let x_3475 : vec4<f32> = u_xlat0;
  let x_3479 : vec4<f32> = x_146.unity_FogColor;
  let x_3481 : vec3<f32> = ((vec3<f32>(x_3473, x_3473, x_3473) * vec3<f32>(x_3475.x, x_3475.y, x_3475.z)) + vec3<f32>(x_3479.x, x_3479.y, x_3479.z));
  let x_3482 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3481.x, x_3481.y, x_3481.z, x_3482.w);
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

